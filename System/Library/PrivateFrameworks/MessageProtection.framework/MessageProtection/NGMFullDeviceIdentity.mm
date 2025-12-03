@interface NGMFullDeviceIdentity
+ (id)identityWithAccess:(id)access error:(id *)error;
+ (id)identityWithDataRepresentation:(id)representation error:(id *)error;
- (BOOL)deleteKeyWithTag:(id)tag;
- (BOOL)eraseFromKeyChain:(id *)chain;
- (BOOL)requiresMigration;
- (BOOL)shouldRollEncryptionIdentity;
- (BOOL)testing_duplicatePrekeyRegistration;
- (BOOL)updateWithRegisteredTicket:(id)ticket error:(id *)error;
- (NGMFullDeviceIdentity)initWithSigningKey:(id)key devicePrekeys:(id)prekeys;
- (id)batchSign:(id)sign forType:(int64_t)type error:(id *)error;
- (id)dataRepresentationWithError:(id *)error;
- (id)description;
- (id)keyRollingTicketWithError:(id *)error;
- (id)publicDeviceIdentityWithError:(id *)error;
- (id)sign:(id)sign forType:(int64_t)type error:(id *)error;
- (id)signDataWithFormatter:(id)formatter error:(id *)error;
- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error;
- (void)postMigrationKeychainCleanup;
- (void)unsealMessage:(id)message signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
- (void)unsealMessageAndAttributes:(id)attributes authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 decryptionBlock:(id)self2;
- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity decryptionBlock:(id)self0;
- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
- (void)unsealMessageAndAttributes:(id)attributes signedByPublicIdentity:(id)identity decryptionBlock:(id)block;
@end

@implementation NGMFullDeviceIdentity

- (BOOL)requiresMigration
{
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  keyStore = [deviceSigningKey keyStore];

  if (keyStore == 3)
  {
    v5 = 1;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__requiresMigration__block_invoke;
    v8[3] = &unk_2786FDC08;
    v8[4] = &v9;
    [devicePrekeys enumerateObjectsUsingBlock:v8];

    v5 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return v5 & 1;
}

void __75__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__requiresMigration__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 dhKey];
  v7 = [v6 keyStore];

  if (v7 == 3)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)deleteKeyWithTag:(id)tag
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC238];
  v4 = *MEMORY[0x277CDC120];
  v15[0] = *MEMORY[0x277CDC228];
  v15[1] = v4;
  v16[0] = v3;
  v16[1] = @"com.apple.messageprotection";
  v15[2] = *MEMORY[0x277CDBF20];
  v16[2] = tag;
  v5 = MEMORY[0x277CBEAC0];
  tagCopy = tag;
  v7 = [v5 dictionaryWithObjects:v16 forKeys:v15 count:3];

  v8 = SecItemDelete(v7);
  v9 = v8;
  if (v8 != -25300 && v8 != 0)
  {
    v11 = MessageProtectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(NGMFullDeviceIdentity(MigrationToModernizedKeyStorage) *)v9 deleteKeyWithTag:v11];
    }
  }

  if (v9)
  {
    v12 = v9 == -25300;
  }

  else
  {
    v12 = 1;
  }

  result = v12;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)postMigrationKeychainCleanup
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  keyStore = [deviceSigningKey keyStore];

  if (keyStore == 3)
  {
    deviceSigningKey2 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
    keyIdentifier = [deviceSigningKey2 keyIdentifier];
    v7 = [(NGMFullDeviceIdentity *)self deleteKeyWithTag:keyIdentifier];
    *(v13 + 24) &= v7;
  }

  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__postMigrationKeychainCleanup__block_invoke;
  v11[3] = &unk_2786FDC30;
  v11[4] = self;
  v11[5] = &v12;
  [devicePrekeys enumerateObjectsUsingBlock:v11];

  if (v13[3])
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B404000, v9, OS_LOG_TYPE_INFO, "Migration to CTKOID key storage done.", v10, 2u);
    }
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NGMFullDeviceIdentity(MigrationToModernizedKeyStorage) *)v9 postMigrationKeychainCleanup];
    }
  }

  _Block_object_dispose(&v12, 8);
}

void __86__NGMFullDeviceIdentity_MigrationToModernizedKeyStorage__postMigrationKeychainCleanup__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 dhKey];
  v4 = [v3 keyStore];

  if (v4 == 3)
  {
    v5 = *(a1 + 32);
    v6 = [v8 dhKey];
    v7 = [v6 keyIdentifier];
    *(*(*(a1 + 40) + 8) + 24) &= [v5 deleteKeyWithTag:v7];
  }
}

- (id)sign:(id)sign forType:(int64_t)type error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  signCopy = sign;
  v9 = MessageProtectionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_22B404000, v9, OS_LOG_TYPE_INFO, "Signing with Identity Key for message type: %li", buf, 0xCu);
  }

  if (type >= 3)
  {
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Request to sign with unknown signature type: %li", type];
    v14 = 4001;
  }

  else
  {
    v10 = [objc_alloc(*off_2786FDC50[type]) initWithApplicationData:signCopy];
    if (v10)
    {
      type = v10;
      deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      v13 = [deviceSigningKey signDataWithFormatter:type error:error];

      goto LABEL_9;
    }

    type = [MEMORY[0x277CCACA8] stringWithFormat:@"Request to sign but no signature formatter for type: %li", type];
    v14 = 4002;
  }

  MPLogAndAssignError(v14, error, type);
  v13 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)batchSign:(id)sign forType:(int64_t)type error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  signCopy = sign;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(signCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = signCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NGMFullDeviceIdentity *)self sign:*(*(&v20 + 1) + 8 * i) forType:type error:error, v20];
        v16 = v15;
        if (!v15 || *error)
        {

          v17 = 0;
          goto LABEL_12;
        }

        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = v9;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NGMFullDeviceIdentity)initWithSigningKey:(id)key devicePrekeys:(id)prekeys
{
  keyCopy = key;
  prekeysCopy = prekeys;
  v11.receiver = self;
  v11.super_class = NGMFullDeviceIdentity;
  v8 = [(NGMFullDeviceIdentity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NGMFullDeviceIdentity *)v8 setDeviceSigningKey:keyCopy];
    [(NGMFullDeviceIdentity *)v9 setDevicePrekeys:prekeysCopy];
  }

  return v9;
}

+ (id)identityWithAccess:(id)access error:(id *)error
{
  accessCopy = access;
  if ([accessCopy isEqualToString:*MEMORY[0x277CDBF18]] & 1) != 0 || (objc_msgSend(accessCopy, "isEqualToString:", *MEMORY[0x277CDBEE8]))
  {
    v7 = [(FullKey *)SigningKey generateNewKeyWithAccess:accessCopy error:error];
    if (v7)
    {
      v8 = [self alloc];
      array = [MEMORY[0x277CBEB18] array];
      v10 = [v8 initWithSigningKey:v7 devicePrekeys:array];

      v11 = [NGMFullPrekey alloc];
      deviceSigningKey = [v10 deviceSigningKey];
      v13 = [(NGMFullPrekey *)v11 initWithPrekeySignedBy:deviceSigningKey error:error];

      if (v13)
      {
        devicePrekeys = [v10 devicePrekeys];
        [devicePrekeys addObject:v13];

        v15 = v10;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v16 = MessageProtectionLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [NGMFullDeviceIdentity identityWithAccess:error error:v16];
      }

      v15 = 0;
    }
  }

  else
  {
    accessCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"A NGMFullDeviceIdentity Key generation was requested, but failed because it was requested with access: %@", accessCopy];
    MPLogAndAssignError(501, error, accessCopy);

    v15 = 0;
  }

  return v15;
}

+ (id)identityWithDataRepresentation:(id)representation error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v7 = [[NGMPBFullDeviceIdentity alloc] initWithData:representationCopy];
  if (v7)
  {
    selfCopy = self;
    v31 = representationCopy;
    v8 = [SigningKey alloc];
    signingKey = [(NGMPBFullDeviceIdentity *)v7 signingKey];
    errorCopy = error;
    v10 = [(FullKey *)v8 initWithProtobufferData:signingKey error:error];

    v11 = MEMORY[0x277CBEB18];
    prekeys = [(NGMPBFullDeviceIdentity *)v7 prekeys];
    v32 = [v11 arrayWithCapacity:{objc_msgSend(prekeys, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v7;
    prekeys2 = [(NGMPBFullDeviceIdentity *)v7 prekeys];
    v14 = [prekeys2 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        v17 = 0;
        do
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(prekeys2);
          }

          v18 = *(*(&v34 + 1) + 8 * v17);
          v19 = [NGMFullPrekey alloc];
          publicKey = [(SigningKey *)v10 publicKey];
          v33 = 0;
          v21 = [(NGMFullPrekey *)v19 initWithPBPrekey:v18 verifySignedBy:publicKey error:&v33];
          v22 = v33;

          if (v21)
          {
            [v32 addObject:v21];
          }

          else
          {
            v23 = MessageProtectionLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(NGMFullDeviceIdentity *)v38 identityWithDataRepresentation:v22 error:&v39, v23];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [prekeys2 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v15);
    }

    if (v10)
    {
      v24 = v32;
      v25 = [[selfCopy alloc] initWithSigningKey:v10 devicePrekeys:v32];
      representationCopy = v31;
    }

    else
    {
      MPLogAndAssignError(200, errorCopy, @"Failed to initialize signing keys from NGMFullDeviceIdentity data.");
      v25 = 0;
      representationCopy = v31;
      v24 = v32;
    }

    v7 = v30;
  }

  else
  {
    MPLogAndAssignError(303, error, @"The deserialization of the NGMFullDeviceIdentity failed.");
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)dataRepresentationWithError:(id *)error
{
  requiresMigration = [(NGMFullDeviceIdentity *)self requiresMigration];
  if (requiresMigration)
  {
    v5 = MessageProtectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B404000, v5, OS_LOG_TYPE_INFO, "Starting key migration to CTKOID.", buf, 2u);
    }
  }

  v6 = objc_alloc_init(NGMPBFullDeviceIdentity);
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  protobuffer = [deviceSigningKey protobuffer];
  [(NGMPBFullDeviceIdentity *)v6 setSigningKey:protobuffer];

  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__NGMFullDeviceIdentity_dataRepresentationWithError___block_invoke;
  v13[3] = &unk_2786FDC90;
  v10 = v6;
  v14 = v10;
  [devicePrekeys enumerateObjectsUsingBlock:v13];

  data = [(NGMPBFullDeviceIdentity *)v10 data];
  if (requiresMigration)
  {
    [(NGMFullDeviceIdentity *)self postMigrationKeychainCleanup];
  }

  return data;
}

void __53__NGMFullDeviceIdentity_dataRepresentationWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pbDevicePrekey];
  [v2 addPrekeys:v3];
}

- (id)publicDeviceIdentityWithError:(id *)error
{
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  lastObject = [devicePrekeys lastObject];
  publicPrekey = [lastObject publicPrekey];

  devicePrekeys2 = [(NGMFullDeviceIdentity *)self devicePrekeys];
  lastObject2 = [devicePrekeys2 lastObject];
  tetraPrivateKey = [lastObject2 tetraPrivateKey];

  if (tetraPrivateKey)
  {
    devicePrekeys3 = [(NGMFullDeviceIdentity *)self devicePrekeys];
    lastObject3 = [devicePrekeys3 lastObject];
    tetraRegistration = [lastObject3 tetraRegistration];
  }

  else
  {
    tetraRegistration = 0;
  }

  v13 = [NGMPublicDeviceIdentity alloc];
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  publicKey = [deviceSigningKey publicKey];
  v16 = [(NGMPublicDeviceIdentity *)v13 initWithEchnidaRegistration:publicPrekey tetraRegistration:tetraRegistration signingKey:publicKey];

  return v16;
}

- (id)unsealMessage:(id)message signedByPublicIdentity:(id)identity error:(id *)error
{
  messageCopy = message;
  identityCopy = identity;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__NGMFullDeviceIdentity_unsealMessage_signedByPublicIdentity_error___block_invoke;
  v13[3] = &unk_2786FDCB8;
  v13[4] = &v20;
  v13[5] = &v14;
  [(NGMFullDeviceIdentity *)self unsealMessage:messageCopy signedByPublicIdentity:identityCopy decryptionBlock:v13];
  v10 = v21[5];
  if (v10)
  {
    v11 = 0;
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    v11 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __68__NGMFullDeviceIdentity_unsealMessage_signedByPublicIdentity_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = *(*(a1 + 32) + 8);
    v14 = *(v11 + 40);
    (v10)[2](v10, &v14);
    v12 = v14;
    v13 = (v11 + 40);
  }

  else
  {
    v13 = (*(*(a1 + 32) + 8) + 40);
    v12 = a3;
  }

  objc_storeStrong(v13, v12);
}

- (void)unsealMessage:(id)message signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__NGMFullDeviceIdentity_unsealMessage_signedByPublicIdentity_decryptionBlock___block_invoke;
  v10[3] = &unk_2786FDCE0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:message signedByPublicIdentity:identity decryptionBlock:v10];
}

- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  blockCopy = block;
  identityCopy = identity;
  guidCopy = guid;
  attributesCopy = attributes;
  v15 = [@"noPushToken" dataUsingEncoding:4];
  v14 = [@"noPushToken" dataUsingEncoding:4];
  [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:attributesCopy guid:guidCopy sendingURI:@"noURI" sendingPushToken:v15 receivingURI:@"noURI" receivingPushToken:v14 signedByPublicIdentity:identityCopy decryptionBlock:blockCopy];
}

- (void)unsealMessageAndAttributes:(id)attributes guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)pushToken signedByPublicIdentity:(id)identity decryptionBlock:(id)self0
{
  v17 = MEMORY[0x277CBEA90];
  blockCopy = block;
  identityCopy = identity;
  pushTokenCopy = pushToken;
  rICopy = rI;
  tokenCopy = token;
  iCopy = i;
  guidCopy = guid;
  attributesCopy = attributes;
  data = [v17 data];
  [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:attributesCopy authenticatedData:data messageType:0 guid:guidCopy sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy signedByPublicIdentity:identityCopy decryptionBlock:blockCopy];
}

- (void)unsealMessageAndAttributes:(id)attributes authenticatedData:(id)data messageType:(int64_t)type guid:(id)guid sendingURI:(id)i sendingPushToken:(id)token receivingURI:(id)rI receivingPushToken:(id)self0 signedByPublicIdentity:(id)self1 decryptionBlock:(id)self2
{
  v115 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  identityCopy = identity;
  blockCopy = block;
  v17 = MessageProtectionLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = guidCopy;
    _os_log_impl(&dword_22B404000, v17, OS_LOG_TYPE_INFO, "Unsealing message with GUID: %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = [[NGMPBOuterMessage alloc] initWithData:attributesCopy];
  ephemeralPubKey = [(NGMPBOuterMessage *)v19 ephemeralPubKey];
  if (ephemeralPubKey)
  {
    encryptedPayload = [(NGMPBOuterMessage *)v19 encryptedPayload];
    v22 = encryptedPayload != 0;
  }

  else
  {
    v22 = 0;
  }

  hasTetraMessage = [(NGMPBOuterMessage *)v19 hasTetraMessage];
  v24 = MessageProtectionLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = guidCopy;
    *&buf[12] = 1024;
    *&buf[14] = v22;
    *&buf[18] = 1024;
    *&buf[20] = hasTetraMessage;
    _os_log_impl(&dword_22B404000, v24, OS_LOG_TYPE_INFO, "Message with GUID: %@ hasEchnidaPayload=%d hasSecondaryPayload=%d", buf, 0x18u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v112 = __Block_byref_object_copy_;
  v113 = __Block_byref_object_dispose_;
  v114 = 0;
  v106 = 0;
  v107[0] = &v106;
  v107[1] = 0x3032000000;
  v107[2] = __Block_byref_object_copy_;
  v107[3] = __Block_byref_object_dispose_;
  v108 = 0;
  v103 = 0;
  v104[0] = &v103;
  v104[1] = 0x3032000000;
  v104[2] = __Block_byref_object_copy__25;
  v104[3] = __Block_byref_object_dispose__26;
  v105 = 0;
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x3032000000;
  v101[3] = __Block_byref_object_copy_;
  v101[4] = __Block_byref_object_dispose_;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy_;
  v99 = __Block_byref_object_dispose_;
  v100 = 0;
  v91 = 0;
  v92 = 0;
  v93[0] = &v92;
  v93[1] = 0x3032000000;
  v93[2] = __Block_byref_object_copy_;
  v93[3] = __Block_byref_object_dispose_;
  v94 = 0;
  v89 = 0;
  v90[0] = &v89;
  v90[1] = 0x3032000000;
  v90[2] = __Block_byref_object_copy__25;
  v90[3] = __Block_byref_object_dispose__26;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = __Block_byref_object_copy_;
  v87[4] = __Block_byref_object_dispose_;
  v88 = 0;
  if (v22)
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke;
    v81[3] = &unk_2786FDD08;
    v83 = v101;
    v82 = dictionary;
    v84 = buf;
    v85 = &v106;
    v86 = &v103;
    [(NGMFullDeviceIdentity *)self unsealMessageAndAttributes:attributesCopy signedByPublicIdentity:identityCopy decryptionBlock:v81];

    if (!hasTetraMessage)
    {
      v25 = *&buf[8];
      v27 = v104;
      v26 = v107;
LABEL_29:
      v44 = v25[5];
      goto LABEL_30;
    }
  }

  else if (!hasTetraMessage)
  {
    v25 = v96;
    goto LABEL_21;
  }

  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  publicKey = [deviceSigningKey publicKey];
  dataRepresentation = [publicKey dataRepresentation];

  if ([identityCopy isTetraCompatibleWithFullKey:self])
  {
    if (dataRepresentation)
    {
      v30 = MessageProtectionLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v109 = 138412290;
        v110 = guidCopy;
        _os_log_impl(&dword_22B404000, v30, OS_LOG_TYPE_INFO, "Starting Tetra decryption of GUID: %@", v109, 0xCu);
      }

      tetraMessage = [(NGMPBOuterMessage *)v19 tetraMessage];
      signingKey = [identityCopy signingKey];
      tetraWrapped = [signingKey tetraWrapped];
      tetraRegistration = [identityCopy tetraRegistration];
      tetraVersion = [tetraRegistration tetraVersion];
      devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke_37;
      v72[3] = &unk_2786FDD30;
      v73 = guidCopy;
      v75 = v87;
      v74 = dictionary;
      v76 = &v95;
      v77 = &v92;
      v78 = &v89;
      LODWORD(v53) = tetraVersion;
      [_TtC17MessageProtection8TetraAPI openWithMessage:tetraMessage authenticatedData:dataCopy guid:v73 sendingURI:iCopy sendingPushToken:tokenCopy receivingURI:rICopy receivingPushToken:pushTokenCopy theirIdentity:identityCopy signedBy:tetraWrapped tetraVersion:v53 ourPrekeys:devicePrekeys ourSigningPublicKeyCompactRepresentation:dataRepresentation decryptionBlock:v72];

      v36 = v73;
    }

    else
    {
      v79 = 0;
      v38 = MEMORY[0x277CCACA8];
      deviceSigningKey2 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      v55 = [deviceSigningKey2 description];
      deviceSigningKey3 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      publicKey2 = [deviceSigningKey3 publicKey];
      v54 = [publicKey2 description];
      deviceSigningKey4 = [(NGMFullDeviceIdentity *)self deviceSigningKey];
      publicKey3 = [deviceSigningKey4 publicKey];
      dataRepresentation2 = [publicKey3 dataRepresentation];
      v42 = [dataRepresentation2 description];
      v43 = [v38 stringWithFormat:@"Unable to serialize the device public signing key (%@ %@ %@).", v55, v54, v42];
      MPLogAndAssignError(3, &v79, v43);
      v36 = v79;

      [dictionary setObject:v36 forKey:&unk_283F13B98];
    }
  }

  else
  {
    v80 = 0;
    guidCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Received a Tetra message (%@), but the sender identity version is not compatible with ours.", guidCopy];
    MPLogAndAssignError(3001, &v80, guidCopy);
    v36 = v80;

    [dictionary setObject:v36 forKey:&unk_283F13B98];
  }

  v25 = v96;
  if (!v22)
  {
    v26 = v93;
    v27 = v90;
    goto LABEL_29;
  }

LABEL_21:
  v44 = *(*&buf[8] + 40);
  v45 = v25[5];
  v27 = v104;
  v26 = v107;
  if (!v44)
  {
    if (v45)
    {
      (*(blockCopy + 2))(blockCopy, v45, *(v93[0] + 40), dictionary, *(v90[0] + 40));
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!v45)
  {
LABEL_30:
    (*(blockCopy + 2))(blockCopy, v44, *(*v26 + 40), dictionary, *(*v27 + 40));
    goto LABEL_31;
  }

  if (([v45 isEqualToData:*(*&buf[8] + 40)] & 1) == 0)
  {
    v46 = MEMORY[0x277CCACA8];
    v47 = [*(*&buf[8] + 40) length];
    v48 = [v46 stringWithFormat:@"Non-matching double-encryption payloads (Echnida: %lu, Tetra: %lu)", v47, objc_msgSend(v96[5], "length")];
    v71 = 0;
    MPLogAndAssignError(3002, &v71, v48);
    v49 = v71;
    [dictionary setObject:v49 forKey:&unk_283F13B98];
    v50 = MessageProtectionLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      [NGMFullDeviceIdentity unsealMessageAndAttributes:v48 authenticatedData:v50 messageType:? guid:? sendingURI:? sendingPushToken:? receivingURI:? receivingPushToken:? signedByPublicIdentity:? decryptionBlock:?];
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke_41;
  aBlock[3] = &unk_2786FDD58;
  aBlock[4] = &v103;
  aBlock[5] = &v89;
  v51 = _Block_copy(aBlock);
  (*(blockCopy + 2))(blockCopy, *(*&buf[8] + 40), *(v107[0] + 40), dictionary, v51);

LABEL_31:
  _Block_object_dispose(v87, 8);

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v92, 8);

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(v101, 8);

  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v106, 8);

  _Block_object_dispose(buf, 8);
  v52 = *MEMORY[0x277D85DE8];
}

void __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  v13 = *(a1 + 32);
  if (v11)
  {
    [*(a1 + 32) setObject:v11 forKey:&unk_283F13B80];
  }

  else
  {
    v14 = NoError();
    [v13 setObject:v14 forKey:&unk_283F13B80];

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v15 = _Block_copy(v12);
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

void __186__NGMFullDeviceIdentity_unsealMessageAndAttributes_authenticatedData_messageType_guid_sendingURI_sendingPushToken_receivingURI_receivingPushToken_signedByPublicIdentity_decryptionBlock___block_invoke_37(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = MessageProtectionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    v22 = 138412290;
    v23 = v15;
    _os_log_impl(&dword_22B404000, v14, OS_LOG_TYPE_INFO, "Finished Tetra decryption of GUID: %@", &v22, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  v16 = *(a1 + 40);
  if (v12)
  {
    [*(a1 + 40) setObject:v12 forKey:&unk_283F13B98];
  }

  else
  {
    v17 = NoError();
    [v16 setObject:v17 forKey:&unk_283F13B98];

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    v18 = _Block_copy(v13);
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)unsealMessageAndAttributes:(id)attributes signedByPublicIdentity:(id)identity decryptionBlock:(id)block
{
  v106 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  identityCopy = identity;
  v9 = attributesCopy;
  v79 = identityCopy;
  blockCopy = block;
  v11 = [[NGMPBOuterMessage alloc] initWithData:attributesCopy];
  v12 = v11;
  if (!v11)
  {
    v104 = 0;
    MPLogAndAssignError(301, &v104, @"The outer structure of the message is malformed.");
    v17 = v104;
LABEL_20:
    (*(blockCopy + 2))(blockCopy, 0, 0, v17, 0);
    goto LABEL_56;
  }

  v70 = blockCopy;
  ephemeralPubKey = [(NGMPBOuterMessage *)v11 ephemeralPubKey];

  if (!ephemeralPubKey)
  {
    v103 = 0;
    MPLogAndAssignError(304, &v103, @"The outer structure of the message is missing the ephemeral DH key.");
    v17 = v103;
    blockCopy = v70;
    goto LABEL_20;
  }

  v69 = attributesCopy;
  v14 = [DHPublicKey alloc];
  ephemeralPubKey2 = [(NGMPBOuterMessage *)v12 ephemeralPubKey];
  v102 = 0;
  v16 = [(PublicKey *)v14 initWithData:ephemeralPubKey2 error:&v102];
  v17 = v102;

  v80 = v16;
  if (!v16)
  {
LABEL_36:
    blockCopy = v70;
    (*(v70 + 2))(v70, 0, 0, v17, 0);
    goto LABEL_37;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  reverseObjectEnumerator = [devicePrekeys reverseObjectEnumerator];

  obj = reverseObjectEnumerator;
  v77 = [reverseObjectEnumerator countByEnumeratingWithState:&v98 objects:v105 count:16];
  if (!v77)
  {
    goto LABEL_16;
  }

  v75 = *v99;
  while (2)
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v99 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v98 + 1) + 8 * i);
      dhKey = [v21 dhKey];
      v97 = v17;
      v23 = [dhKey keyAgreementWithPublicKey:v80 error:&v97];
      v24 = v97;

      if (v23)
      {
        v85 = [NGMMessageSignatureFormatter alloc];
        v71 = v21;
        publicPrekey = [v21 publicPrekey];
        dhKey2 = [publicPrekey dhKey];
        dataRepresentation = [dhKey2 dataRepresentation];
        ephemeralPubKey3 = [(NGMPBOuterMessage *)v12 ephemeralPubKey];
        deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
        [deviceSigningKey publicKey];
        v29 = v28 = v12;
        [v29 dataRepresentation];
        v31 = v30 = v24;
        encryptedPayload = [(NGMPBOuterMessage *)v28 encryptedPayload];
        v33 = v85;
        v86 = v23;
        v34 = [(NGMMessageSignatureFormatter *)v33 initWithDHOutput:v23 prekeyPub:dataRepresentation ephemeralPub:ephemeralPubKey3 recipientPub:v31 ciphertext:encryptedPayload];

        v35 = v30;
        v12 = v28;
        v36 = v34;

        signature = [(NGMPBOuterMessage *)v12 signature];
        v38 = [v79 verifySignature:signature formatter:v36];

        if (v35)
        {
          blockCopy = v70;
          (*(v70 + 2))(v70, 0, 0, v35, 0);
          v9 = v69;
          v42 = v86;
LABEL_54:

          v17 = v35;
          goto LABEL_55;
        }

        if (!v38)
        {

          v17 = 0;
          continue;
        }

        v43 = [@"LastPawn-MessageKeys" dataUsingEncoding:4];
        v42 = v86;
        v44 = [_TtC17MessageProtection4HKDF deriveKeyWith:v86 salt:v43 outputSize:48];

        if (!v44)
        {
          blockCopy = v70;
          (*(v70 + 2))(v70, 0, 0, 0, 0);
          v35 = 0;
          v9 = v69;
LABEL_53:

          goto LABEL_54;
        }

        v45 = [v44 subdataWithRange:{0, 32}];
        v46 = [v44 subdataWithRange:{32, 16}];
        encryptedPayload2 = [(NGMPBOuterMessage *)v12 encryptedPayload];
        v48 = [MP_AES_CTR decrypt:encryptedPayload2 key:v45 IV:v46];

        blockCopy = v70;
        if (v48)
        {
          v95 = 0;
          v49 = [NGMPadding unpadMessage:v48 error:&v95];
          v50 = v95;

          if (v49)
          {
            v84 = v45;
            v51 = v50;
            v52 = [[NGMPBInnerMessage alloc] initWithData:v49];
            v9 = v69;
            v82 = v52;
            if (v52)
            {
              v53 = v52;
              if ([(NGMPBInnerMessage *)v52 hasCounter])
              {
                v78 = v49;
                v54 = +[NGMReplayManager sharedManager];
                v76 = v54;
                if (v54)
                {
                  v91 = v51;
                  v55 = [v54 validateIncomingCounter:-[NGMPBInnerMessage counter](v53 prekey:"counter") publicIdentity:v71 error:{v79, &v91}];
                  v56 = v91;

                  if (!v55)
                  {
                    v45 = v84;
                    if (v56)
                    {
                      v90 = v56;
                      v63 = MEMORY[0x277CCACA8];
                      v64 = [v56 description];
                      v65 = [v63 stringWithFormat:@"An error occured while validating the counter: %@", v64];
                      MPLogAndAssignError(6, &v90, v65);
                      v74 = v46;
                      v66 = v90;

                      (*(v70 + 2))(v70, 0, 0, v66, 0);
                      v56 = v66;
                      v46 = v74;
                    }

                    else
                    {
                      v89 = 0;
                      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"The message was rejected because of a detected replay."];
                      MPLogAndAssignError(5, &v89, v67);
                      v56 = v89;

                      (*(v70 + 2))(v70, 0, 0, v56, 0);
                    }

                    v9 = v69;
                    goto LABEL_50;
                  }

                  message = [(NGMPBInnerMessage *)v53 message];
                  attributes = [(NGMPBInnerMessage *)v53 attributes];
                  (*(v70 + 2))(v70, message, attributes, 0, v55);

                  v9 = v69;
                }

                else
                {
                  v92 = v51;
                  MPLogAndAssignError(604, &v92, @"Failed to initialize replay counter database.");
                  v56 = v92;

                  (*(v70 + 2))(v70, 0, 0, v56, 0);
                  v55 = MessageProtectionLog();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
                  {
                    [NGMFullDeviceIdentity unsealMessageAndAttributes:v55 signedByPublicIdentity:? decryptionBlock:?];
                  }
                }

                v45 = v84;
LABEL_50:

                v49 = v78;
                goto LABEL_51;
              }

              v93 = v51;
              MPLogAndAssignError(602, &v93, @"No Replay Counter Found.");
              v62 = v93;
            }

            else
            {
              v94 = v50;
              MPLogAndAssignError(300, &v94, @"Inside of the incoming payload could not be parsed.");
              v62 = v94;
            }

            v56 = v62;

            (*(v70 + 2))(v70, 0, 0, v56, 0);
            v45 = v84;
LABEL_51:

            v35 = v56;
            blockCopy = v70;
            goto LABEL_52;
          }

          (*(v70 + 2))(v70, 0, 0, v50, 0);
          v9 = v69;
          v35 = v50;
        }

        else
        {
          v96 = 0;
          MPLogAndAssignError(400, &v96, @"An error occured while decrypting the message, after a valid signature check.");
          v35 = v96;
          (*(v70 + 2))(v70, 0, 0, v35, 0);
          v9 = v69;
        }

LABEL_52:

        goto LABEL_53;
      }

      v17 = v24;
    }

    v77 = [obj countByEnumeratingWithState:&v98 objects:v105 count:16];
    if (v77)
    {
      continue;
    }

    break;
  }

LABEL_16:

  keyValidator = [(NGMPBOuterMessage *)v12 keyValidator];
  v88 = v17;
  v40 = [NGMKeyValidator isValidKeyValidator:keyValidator receiversIdentity:self sendersIdentity:v79 error:&v88];
  v41 = v88;

  if (!v40)
  {
    v87 = v41;
    v59 = MEMORY[0x277CCACA8];
    if (v41)
    {
      v60 = [v41 description];
    }

    else
    {
      v60 = @"None";
    }

    v61 = [v59 stringWithFormat:@"No key could be found to validate the signature, with optional failure: %@.", v60];
    MPLogAndAssignError(404, &v87, v61);
    v17 = v87;

    if (v41)
    {
    }

    goto LABEL_36;
  }

  (*(v70 + 2))(v70, 0, 0, v41, 0);
  v17 = v41;
  blockCopy = v70;
LABEL_37:
  v9 = v69;
LABEL_55:

LABEL_56:
  v68 = *MEMORY[0x277D85DE8];
}

- (id)signDataWithFormatter:(id)formatter error:(id *)error
{
  formatterCopy = formatter;
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  v8 = [deviceSigningKey signDataWithFormatter:formatterCopy error:error];

  return v8;
}

- (BOOL)shouldRollEncryptionIdentity
{
  if (![(NGMFullDeviceIdentity *)self requiresMigration])
  {
    devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
    lastObject = [devicePrekeys lastObject];

    if (lastObject)
    {
      if (MPSecondaryRegistrationDisabled() && ([lastObject tetraRegistration], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
      {
        v7 = MessageProtectionLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v16 = 0;
          v8 = "Re-registering with a fresh prekey because Tetra was disabled and we still have a prekey with secondary registration.";
          v9 = &v16;
LABEL_17:
          _os_log_impl(&dword_22B404000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
        }
      }

      else
      {
        tetraRegistration = [lastObject tetraRegistration];

        if (tetraRegistration)
        {
          tetraRegistration2 = [lastObject tetraRegistration];
          tetraVersion = [tetraRegistration2 tetraVersion];
          v13 = tetraVersion == +[_TtC17MessageProtection13TetraVersions currentTetraVersion];
        }

        else
        {
          v13 = 0;
        }

        if ((MPSecondaryRegistrationDisabled() & 1) != 0 || v13)
        {
          v3 = [NGMTimeBasedEvaluations prekeyShouldBeRolled:lastObject];
          goto LABEL_20;
        }

        v7 = MessageProtectionLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v15 = 0;
          v8 = "Re-registering because of Tetra update or an enablement.";
          v9 = &v15;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v7 = MessageProtectionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        v8 = "No device prekey is available, rolling should occur.";
        v9 = &v17;
        goto LABEL_17;
      }
    }

    v3 = 1;
LABEL_20:

    return v3;
  }

  return 1;
}

- (BOOL)eraseFromKeyChain:(id *)chain
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NGMFullDeviceIdentity *)self devicePrekeys:chain];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [*(*(&v11 + 1) + 8 * i) delete];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)keyRollingTicketWithError:(id *)error
{
  v5 = [NGMKeyRollingTicket alloc];
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  v7 = [(NGMKeyRollingTicket *)v5 initTicketWithSigningKey:deviceSigningKey error:error];

  return v7;
}

- (BOOL)updateWithRegisteredTicket:(id)ticket error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  ticketCopy = ticket;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v8 = [devicePrekeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(devicePrekeys);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([NGMTimeBasedEvaluations prekeyCanBeDeleted:v12])
        {
          [v12 delete];
          [array addObject:v12];
        }
      }

      v9 = [devicePrekeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v13 = +[NGMReplayManager sharedManager];
  [v13 deleteExpiredSendingDestinations];

  devicePrekeys2 = [(NGMFullDeviceIdentity *)self devicePrekeys];
  [devicePrekeys2 removeObjectsInArray:array];

  devicePrekeys3 = [(NGMFullDeviceIdentity *)self devicePrekeys];
  prekey = [ticketCopy prekey];
  [devicePrekeys3 addObject:prekey];

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)description
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  string = [MEMORY[0x277CCAB68] string];
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__NGMFullDeviceIdentity_description__block_invoke;
  v9[3] = &unk_2786FDC08;
  v9[4] = &v10;
  [devicePrekeys enumerateObjectsUsingBlock:v9];

  v4 = MEMORY[0x277CCACA8];
  deviceSigningKey = [(NGMFullDeviceIdentity *)self deviceSigningKey];
  v6 = [deviceSigningKey description];
  v7 = [v4 stringWithFormat:@"NGMFullDeviceIdentity with device signing key: %@ \n Prekeys: %@", v6, v11[5]];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __36__NGMFullDeviceIdentity_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 description];
  [v2 appendString:v3];
}

- (BOOL)testing_duplicatePrekeyRegistration
{
  v3 = +[NGMReplayManager sharedManager];
  devicePrekeys = [(NGMFullDeviceIdentity *)self devicePrekeys];
  firstObject = [devicePrekeys firstObject];
  v6 = [v3 duplicateTagForPrekey:firstObject];

  return v6;
}

+ (void)identityWithAccess:(id *)a1 error:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Signing key generation failed: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)identityWithDataRepresentation:(void *)a3 error:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_22B404000, a4, OS_LOG_TYPE_ERROR, "Failed to deserialize prekey in NGMFullDeviceIdentity initialization: %@.", a1, 0xCu);
}

- (void)unsealMessageAndAttributes:(uint64_t)a1 authenticatedData:(NSObject *)a2 messageType:guid:sendingURI:sendingPushToken:receivingURI:receivingPushToken:signedByPublicIdentity:decryptionBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_22B404000, a2, OS_LOG_TYPE_FAULT, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end