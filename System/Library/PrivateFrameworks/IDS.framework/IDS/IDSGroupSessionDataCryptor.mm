@interface IDSGroupSessionDataCryptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCryptor:(id)cryptor;
- (IDSGroupSessionDataCryptor)initWithCoder:(id)coder;
- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic;
- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic keyManager:(id)manager;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)decryptData:(id)data keyID:(id)d sequenceNumber:(unint64_t)number error:(id *)error;
- (id)encryptData:(id)data sequenceNumber:(unint64_t)number error:(id *)error;
- (id)getDecryptionKeyIDSet;
- (id)getEncryptionKeyID;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSGroupSessionDataCryptor

- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic
{
  topicCopy = topic;
  v12.receiver = self;
  v12.super_class = IDSGroupSessionDataCryptor;
  v5 = [(IDSGroupSessionDataCryptor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [topicCopy copy];
    topic = v6->_topic;
    v6->_topic = v7;

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:32];
    decryptionCryptorsByKeyID = v6->_decryptionCryptorsByKeyID;
    v6->_decryptionCryptorsByKeyID = v9;
  }

  return v6;
}

- (IDSGroupSessionDataCryptor)initWithTopic:(id)topic keyManager:(id)manager
{
  v27 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = [(IDSGroupSessionDataCryptor *)self initWithTopic:topic];
  v8 = v7;
  if (v7)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A1E3F0;
    v23[3] = &unk_1E743EEC0;
    v9 = v7;
    v24 = v9;
    [managerCopy useCurrentEncryptionkeyWithHandler:v23];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = v9[7];
    v9[7] = dictionary;

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = sub_195A1E494;
    v21 = &unk_1E743EEC0;
    v12 = v9;
    v22 = v12;
    [managerCopy enumerateDecryptingKeysAndSaltsUsingBlock:&v18];
    groupSessionDataCryptor = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
    if (os_log_type_enabled(groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 debugDescription];
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_1959FF000, groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT, "Created IDSGroupSessionDataCryptor: %@", buf, 0xCu);
    }

    if (v12[3])
    {
      v15 = [MEMORY[0x1E69A6128] pairWithFirst:v12[4] second:v12[5]];
      [v9[7] setObject:v15 forKeyedSubscript:v12[3]];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  encryptingCryptor = self->_encryptingCryptor;
  if (encryptingCryptor)
  {
    CCCryptorRelease(encryptingCryptor);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_decryptionCryptorsByKeyID;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_decryptionCryptorsByKeyID objectForKey:v9];
        value = 0xAAAAAAAAAAAAAAAALL;
        if (NSMapMember(self->_decryptionCryptorsByKeyID, v9, 0, &value) && value)
        {
          CCCryptorRelease(value);
        }
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12.receiver = self;
  v12.super_class = IDSGroupSessionDataCryptor;
  [(IDSGroupSessionDataCryptor *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (id)encryptData:(id)data sequenceNumber:(unint64_t)number error:(id *)error
{
  v84 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  if ([dataCopy length] < 0xFFFFFFF1)
  {
    p_encryptingCryptor = &self->_encryptingCryptor;
    if (self->_encryptingCryptor || (v21 = CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, [(NSData *)self->_encryptingKey bytes], [(NSData *)self->_encryptingKey length], 0, 0, 0, 0, &self->_encryptingCryptor)) == 0)
    {
      v11 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(dataCopy, "length") + 29}];
      mutableBytes = [v11 mutableBytes];
      *mutableBytes = 1;
      if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0xCuLL, mutableBytes + 1))
      {
        __assert_rtn("[IDSGroupSessionDataCryptor encryptData:sequenceNumber:error:]", "IDSGroupSessionDataCryptor.m", 197, "0 == SecRandomCopyBytes(kSecRandomDefault, IDSGROUPSESSIONCRYPTOR_NONCE_SIZE_NBYTES, nonceBytes)");
      }

      v16 = *p_encryptingCryptor;
      v17 = CCCryptorGCMSetIV();
      if (v17)
      {
        groupSessionDataCryptor = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
        if (os_log_type_enabled(groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT))
        {
          topic = self->_topic;
          v20 = v17;
          *buf = 138412546;
          v81 = topic;
          v82 = 2048;
          v83 = v17;
          _os_log_impl(&dword_1959FF000, groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT, "encryptData: failed to set IV for topic %@ error %ld", buf, 0x16u);
        }

        else
        {
          v20 = v17;
        }

        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to set IV for topic %@ error %ld", self->_topic, v20];
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v74 = *MEMORY[0x1E696A578];
        v75 = v30;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        *error = [v31 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v32];
      }

      else
      {
        v72 = 0xAAAAAAAAAAAAAAAALL;
        numberCopy = -86;
        LOBYTE(v72) = *mutableBytes;
        BYTE1(v72) = HIBYTE(number);
        BYTE2(v72) = BYTE6(number);
        BYTE3(v72) = BYTE5(number);
        BYTE4(v72) = BYTE4(number);
        BYTE5(v72) = BYTE3(number);
        BYTE6(v72) = BYTE2(number);
        HIBYTE(v72) = BYTE1(number);
        numberCopy = number;
        v25 = *p_encryptingCryptor;
        v26 = CCCryptorGCMAddAAD();
        if (v26)
        {
          groupSessionDataCryptor2 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
          if (os_log_type_enabled(groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT))
          {
            v28 = self->_topic;
            v29 = v26;
            *buf = 138412546;
            v81 = v28;
            v82 = 2048;
            v83 = v26;
            _os_log_impl(&dword_1959FF000, groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT, "encryptData: failed to add AAD for topic %@ error %ld", buf, 0x16u);
          }

          else
          {
            v29 = v26;
          }

          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to add AAD for topic %@ error %ld", self->_topic, v29];
          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E696A578];
          v71 = v41;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          *error = [v42 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v43];
        }

        else
        {
          v35 = *p_encryptingCryptor;
          v36 = dataCopy;
          v37 = MEMORY[0x19A8BA910](v35, [dataCopy bytes], objc_msgSend(dataCopy, "length"), mutableBytes + 13);
          if (v37)
          {
            groupSessionDataCryptor3 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
            if (os_log_type_enabled(groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT))
            {
              v39 = self->_topic;
              v40 = v37;
              *buf = 138412546;
              v81 = v39;
              v82 = 2048;
              v83 = v37;
              _os_log_impl(&dword_1959FF000, groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT, "encryptData: failed to encrypt for topic %@ error %ld", buf, 0x16u);
            }

            else
            {
              v40 = v37;
            }

            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to encrypt for topic %@ error %ld", self->_topic, v40];
            v49 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = *MEMORY[0x1E696A578];
            v69 = v48;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            *error = [v49 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v50];
          }

          else
          {
            [dataCopy length];
            v44 = *p_encryptingCryptor;
            LODWORD(v45) = CCCryptorGCMFinalize();
            if (v45)
            {
              groupSessionDataCryptor4 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT))
              {
                v47 = self->_topic;
                v45 = v45;
                *buf = 138412546;
                v81 = v47;
                v82 = 2048;
                v83 = v45;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT, "encryptData: failed to create auth tag for topic %@ error %ld", buf, 0x16u);
              }

              else
              {
                v45 = v45;
              }

              v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to create auth tag for topic %@ error %ld", self->_topic, v45];
              v56 = objc_alloc(MEMORY[0x1E696ABC0]);
              v66 = *MEMORY[0x1E696A578];
              v67 = v55;
              v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
              *error = [v56 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v57];
            }

            else
            {
              v51 = *p_encryptingCryptor;
              LODWORD(v52) = CCCryptorGCMReset();
              if (!v52)
              {
                v58 = v11;
                goto LABEL_39;
              }

              groupSessionDataCryptor5 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT))
              {
                v54 = self->_topic;
                v52 = v52;
                *buf = 138412546;
                v81 = v54;
                v82 = 2048;
                v83 = v52;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT, "encryptData: failed to reset cryptor for topic %@ error %ld", buf, 0x16u);
              }

              else
              {
                v52 = v52;
              }

              v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to reset for topic %@ error %ld", self->_topic, v52];
              v60 = objc_alloc(MEMORY[0x1E696ABC0]);
              v64 = *MEMORY[0x1E696A578];
              v65 = v59;
              v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
              *error = [v60 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v61];
            }
          }
        }
      }
    }

    else
    {
      groupSessionDataCryptor6 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
      if (os_log_type_enabled(groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_topic;
        v24 = v21;
        *buf = 138412546;
        v81 = v23;
        v82 = 2048;
        v83 = v21;
        _os_log_impl(&dword_1959FF000, groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT, "encryptData: failed to create CommonCrypto cryptor for topic %@ error %ld", buf, 0x16u);
      }

      else
      {
        v24 = v21;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - failed to create CommonCrypto cryptor for topic %@ error %ld", self->_topic, v24];
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v76 = *MEMORY[0x1E696A578];
      v77 = v11;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      *error = [v33 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v34];
    }
  }

  else
  {
    groupSessionDataCryptor7 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
    if (os_log_type_enabled(groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_topic;
      *buf = 138412546;
      v81 = v10;
      v82 = 2048;
      v83 = [dataCopy length];
      _os_log_impl(&dword_1959FF000, groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT, "encryptData: plaintext larger than GCM can support for topic %@ data.length %lu", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - plaintext larger than GCM can support for topic %@ data.length %lu", self->_topic, objc_msgSend(dataCopy, "length")];
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v78 = *MEMORY[0x1E696A578];
    v79 = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    *error = [v12 initWithDomain:@"com.apple.identityservices.error" code:4 userInfo:v13];
  }

  v58 = 0;
LABEL_39:

  os_unfair_lock_unlock(&self->_lock);
  v62 = *MEMORY[0x1E69E9840];

  return v58;
}

- (id)getEncryptionKeyID
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSUUID *)self->_encryptingKeyID copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)decryptData:(id)data keyID:(id)d sequenceNumber:(unint64_t)number error:(id *)error
{
  v105[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  if ([dataCopy length] > 0x1D)
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    cryptorRef = 0xAAAAAAAAAAAAAAAALL;
    v18 = [(NSMutableDictionary *)self->_decryptionKeysByKeyID objectForKeyedSubscript:dCopy];
    if (NSMapMember(self->_decryptionCryptorsByKeyID, dCopy, 0, &value))
    {
      cryptorRef = value;
    }

    else
    {
      if (!v18)
      {
        groupSessionDataCryptor = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
        if (os_log_type_enabled(groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT))
        {
          topic = self->_topic;
          *buf = 138412546;
          v97 = topic;
          v98 = 2112;
          numberCopy2 = dCopy;
          _os_log_impl(&dword_1959FF000, groupSessionDataCryptor, OS_LOG_TYPE_DEFAULT, "decryptData: unknown keyID for topic %@ keyID %@", buf, 0x16u);
        }

        dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - unknown keyID %@", dCopy];
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v102 = *MEMORY[0x1E696A578];
        v103 = dCopy;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        *error = [v39 initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v40];

        goto LABEL_29;
      }

      first = [v18 first];
      v27 = first;
      LODWORD(v28) = CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, [first bytes], objc_msgSend(first, "length"), 0, 0, 0, 0, &cryptorRef);
      if (v28)
      {
        groupSessionDataCryptor2 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
        if (os_log_type_enabled(groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_topic;
          v28 = v28;
          *buf = 138412802;
          v97 = v30;
          v98 = 2112;
          numberCopy2 = dCopy;
          v100 = 2048;
          v101 = v28;
          _os_log_impl(&dword_1959FF000, groupSessionDataCryptor2, OS_LOG_TYPE_DEFAULT, "decryptData: failed to create cryptor for topic %@ keyID %@ error %ld", buf, 0x20u);
        }

        else
        {
          v28 = v28;
        }

        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor fails to create cryptor for topic %@ keyID %@ error %ld", self->_topic, dCopy, v28];
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v94 = *MEMORY[0x1E696A578];
        v95 = v43;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        *error = [v44 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v45];

        goto LABEL_29;
      }

      [(NSMapTable *)self->_decryptionCryptorsByKeyID setObject:cryptorRef forKey:dCopy];
    }

    v19 = dataCopy;
    bytes = [dataCopy bytes];
    v21 = *bytes;
    if (v21 == 1)
    {
      v22 = CCCryptorGCMSetIV();
      if (!v22)
      {
        v88 = 0xAAAAAAAAAAAAAAAALL;
        numberCopy = -86;
        LOBYTE(v88) = *bytes;
        BYTE1(v88) = HIBYTE(number);
        BYTE2(v88) = BYTE6(number);
        BYTE3(v88) = BYTE5(number);
        BYTE4(v88) = BYTE4(number);
        BYTE5(v88) = BYTE3(number);
        BYTE6(v88) = BYTE2(number);
        HIBYTE(v88) = BYTE1(number);
        numberCopy = number;
        LODWORD(number) = CCCryptorGCMAddAAD();
        if (number)
        {
          groupSessionDataCryptor3 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
          if (os_log_type_enabled(groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT))
          {
            v42 = self->_topic;
            number = number;
            *buf = 138412546;
            v97 = v42;
            v98 = 2048;
            numberCopy2 = number;
            _os_log_impl(&dword_1959FF000, groupSessionDataCryptor3, OS_LOG_TYPE_DEFAULT, "encryptData: failed to add AAD for topic %@ error %ld", buf, 0x16u);
          }

          else
          {
            number = number;
          }

          number = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encryption failed - CommonCryptor failed to add AAD for topic %@ error %ld", self->_topic, number];
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v86 = *MEMORY[0x1E696A578];
          v87 = number;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          *error = [v58 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v59];
        }

        else
        {
          v51 = [dataCopy length] - 29;
          number = [MEMORY[0x1E695DF88] dataWithLength:v51];
          v52 = cryptorRef;
          v53 = number;
          v54 = MEMORY[0x19A8BA900](v52, bytes + 13, v51, [number mutableBytes]);
          if (v54)
          {
            groupSessionDataCryptor4 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
            if (os_log_type_enabled(groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT))
            {
              v56 = self->_topic;
              v57 = v54;
              *buf = 138412802;
              v97 = v56;
              v98 = 2112;
              numberCopy2 = dCopy;
              v100 = 2048;
              v101 = v54;
              _os_log_impl(&dword_1959FF000, groupSessionDataCryptor4, OS_LOG_TYPE_DEFAULT, "decryptData: failed to decrypt for topic %@ keyID %@ error %ld", buf, 0x20u);
            }

            else
            {
              v57 = v54;
            }

            v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor failed to decrypt for topic %@ keyID %@ error %ld", self->_topic, dCopy, v57];
            v65 = objc_alloc(MEMORY[0x1E696ABC0]);
            v84 = *MEMORY[0x1E696A578];
            v85 = v64;
            v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
            *error = [v65 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v66];
          }

          else
          {
            v60 = CCCryptorGCMFinalize();
            if (v60)
            {
              groupSessionDataCryptor5 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT))
              {
                v62 = self->_topic;
                v63 = v60;
                *buf = 138412802;
                v97 = v62;
                v98 = 2112;
                numberCopy2 = dCopy;
                v100 = 2048;
                v101 = v60;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor5, OS_LOG_TYPE_DEFAULT, "decryptData: failed to verify auth tag for topic %@ keyID %@ error %ld", buf, 0x20u);
              }

              else
              {
                v63 = v60;
              }

              v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - failed to verify auth tag for topic %@ keyID %@ error %ld", self->_topic, dCopy, v63];
              v72 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E696A578];
              v83 = v71;
              v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              *error = [v72 initWithDomain:@"com.apple.identityservices.error" code:3 userInfo:v73];
            }

            else
            {
              v67 = CCCryptorGCMReset();
              if (!v67)
              {
                v17 = number;

                goto LABEL_30;
              }

              groupSessionDataCryptor6 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
              if (os_log_type_enabled(groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT))
              {
                v69 = self->_topic;
                v70 = v67;
                *buf = 138412802;
                v97 = v69;
                v98 = 2112;
                numberCopy2 = dCopy;
                v100 = 2048;
                v101 = v67;
                _os_log_impl(&dword_1959FF000, groupSessionDataCryptor6, OS_LOG_TYPE_DEFAULT, "decryptData: failed to reset cryptor for topic %@ keyID %@ error %ld", buf, 0x20u);
              }

              else
              {
                v70 = v67;
              }

              v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor failed to reset for topic %@ keyID %@ error %ld", self->_topic, dCopy, v70];
              v75 = objc_alloc(MEMORY[0x1E696ABC0]);
              v80 = *MEMORY[0x1E696A578];
              v81 = v74;
              v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
              *error = [v75 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v76];
            }
          }
        }

        v17 = 0;

        goto LABEL_30;
      }

      groupSessionDataCryptor7 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
      if (os_log_type_enabled(groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_topic;
        v25 = v22;
        *buf = 138412802;
        v97 = v24;
        v98 = 2112;
        numberCopy2 = dCopy;
        v100 = 2048;
        v101 = v22;
        _os_log_impl(&dword_1959FF000, groupSessionDataCryptor7, OS_LOG_TYPE_DEFAULT, "decryptData: failed to set IV for topic %@ keyID %@ error %ld", buf, 0x20u);
      }

      else
      {
        v25 = v22;
      }

      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - CommonCryptor fails to set IV for topic %@ keyID %@ error %ld", self->_topic, dCopy, v25];
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v90 = *MEMORY[0x1E696A578];
      v91 = v46;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      *error = [v47 initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v48];
    }

    else
    {
      groupSessionDataCryptor8 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
      if (os_log_type_enabled(groupSessionDataCryptor8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_topic;
        *buf = 138412802;
        v97 = v32;
        v98 = 2112;
        numberCopy2 = dCopy;
        v100 = 1024;
        LODWORD(v101) = v21;
        _os_log_impl(&dword_1959FF000, groupSessionDataCryptor8, OS_LOG_TYPE_DEFAULT, "decryptData: unknown version for topic %@ keyID %@ version %u", buf, 0x1Cu);
      }

      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - unknown version for topic %@ keyID %@ version %u", self->_topic, dCopy, v21];
      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v92 = *MEMORY[0x1E696A578];
      v93 = v33;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      *error = [v34 initWithDomain:@"com.apple.identityservices.error" code:6 userInfo:v35];
    }

LABEL_29:
    v17 = 0;
LABEL_30:

    goto LABEL_31;
  }

  groupSessionDataCryptor9 = [MEMORY[0x1E69A5270] GroupSessionDataCryptor];
  if (os_log_type_enabled(groupSessionDataCryptor9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_topic;
    *buf = 138412546;
    v97 = v13;
    v98 = 2048;
    numberCopy2 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, groupSessionDataCryptor9, OS_LOG_TYPE_DEFAULT, "decryptData: insufficient incoming data for topic %@ size %lu", buf, 0x16u);
  }

  dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Decryption failed - data has insufficient bytes to decrypt for topic %@ keyID %@", self->_topic, dCopy];
  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v104 = *MEMORY[0x1E696A578];
  v105[0] = dCopy2;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:&v104 count:1];
  *error = [v15 initWithDomain:@"com.apple.identityservices.error" code:4 userInfo:v16];

  v17 = 0;
LABEL_31:
  os_unfair_lock_unlock(&self->_lock);

  v49 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)getDecryptionKeyIDSet
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_decryptionKeysByKeyID allKeys];
  v4 = [allKeys copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(IDSGroupSessionDataCryptor *)self isEqualToCryptor:equalCopy];

  return v6;
}

- (BOOL)isEqualToCryptor:(id)cryptor
{
  v23 = *MEMORY[0x1E69E9840];
  cryptorCopy = cryptor;
  if (-[NSUUID isEqual:](self->_encryptingKeyID, "isEqual:", cryptorCopy[3]) && -[NSData isEqual:](self->_encryptingKey, "isEqual:", cryptorCopy[4]) && -[NSData isEqual:](self->_encryptingKeySalt, "isEqual:", cryptorCopy[5]) && (v5 = -[NSMutableDictionary count](self->_decryptionKeysByKeyID, "count"), v5 == [cryptorCopy[7] count]))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_decryptionKeysByKeyID;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_decryptionKeysByKeyID objectForKeyedSubscript:v11, v18];
          v13 = [cryptorCopy[7] objectForKeyedSubscript:v11];
          v14 = [v12 isEqual:v13];

          if (!v14)
          {
            v15 = 0;
            goto LABEL_17;
          }
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_17:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  topic = self->_topic;
  encryptingKeyID = self->_encryptingKeyID;
  allKeys = [(NSMutableDictionary *)self->_decryptionKeysByKeyID allKeys];
  v8 = [v3 stringWithFormat:@"{Object:%p, Class:%@, Topic:%@, EncryptionKeyID:%@, DecryptionKeys:%@}", self, v4, topic, encryptingKeyID, allKeys];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy encodeObject:self->_topic forKey:@"topic"];
  [coderCopy encodeObject:self->_encryptingKeyID forKey:@"encryptingKeyID"];
  [coderCopy encodeObject:self->_encryptingKey forKey:@"encryptingKey"];
  v18 = coderCopy;
  [coderCopy encodeObject:self->_encryptingKeySalt forKey:@"encryptingKeySalt"];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_decryptionKeysByKeyID;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_decryptionKeysByKeyID objectForKeyedSubscript:v13];
        [array addObject:v13];
        first = [v14 first];
        [array2 addObject:first];

        second = [v14 second];
        [array3 addObject:second];
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [v18 encodeObject:array forKey:@"decryptingKeyIDs"];
  [v18 encodeObject:array2 forKey:@"decryptingKeys"];
  [v18 encodeObject:array3 forKey:@"decryptingKeySalts"];

  v17 = *MEMORY[0x1E69E9840];
}

- (IDSGroupSessionDataCryptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  v6 = [(IDSGroupSessionDataCryptor *)self initWithTopic:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptingKeyID"];
    encryptingKeyID = v6->_encryptingKeyID;
    v6->_encryptingKeyID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptingKey"];
    encryptingKey = v6->_encryptingKey;
    v6->_encryptingKey = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptingKeySalt"];
    encryptingKeySalt = v6->_encryptingKeySalt;
    v6->_encryptingKeySalt = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"decryptingKeyIDs"];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"decryptingKeys"];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"decryptingKeySalts"];

    v25 = [v16 count];
    if (v25 != [v20 count] || (v26 = objc_msgSend(v16, "count"), v26 != objc_msgSend(v24, "count")))
    {

      v36 = 0;
      goto LABEL_10;
    }

    v38 = v5;
    v39 = coderCopy;
    v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
    decryptionKeysByKeyID = v6->_decryptionKeysByKeyID;
    v6->_decryptionKeysByKeyID = v27;

    if ([v16 count])
    {
      v29 = 0;
      do
      {
        v30 = MEMORY[0x1E69A6128];
        v31 = [v20 objectAtIndexedSubscript:v29];
        v32 = [v24 objectAtIndexedSubscript:v29];
        v33 = [v30 pairWithFirst:v31 second:v32];
        v34 = v6->_decryptionKeysByKeyID;
        v35 = [v16 objectAtIndexedSubscript:v29];
        [(NSMutableDictionary *)v34 setObject:v33 forKeyedSubscript:v35];

        ++v29;
      }

      while (v29 < [v16 count]);
    }

    v5 = v38;
    coderCopy = v39;
  }

  v36 = v6;
LABEL_10:

  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IDSGroupSessionDataCryptor alloc];
  topic = self->_topic;

  return [(IDSGroupSessionDataCryptor *)v4 initWithTopic:topic];
}

@end