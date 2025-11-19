@interface IDSGroupEncryptionKeyManager
- (BOOL)recvKeyMaterial:(id)a3;
- (BOOL)useCurrentEncryptionkeyWithHandler:(id)a3;
- (BOOL)useDecryptingKeyForKeyIndex:(id)a3 handler:(id)a4;
- (IDSGroupEncryptionKeyManager)initWithEncryptionContext:(id)a3 encryptionKeySize:(unint64_t)a4;
- (void)enumerateDecryptingKeysAndSaltsUsingBlock:(id)a3;
- (void)invalidateKeyMaterialByKeyIndexes:(id)a3;
- (void)purgeOldKeyMaterial;
- (void)receiveMembershipChangedInformation:(unsigned __int8)a3;
@end

@implementation IDSGroupEncryptionKeyManager

- (IDSGroupEncryptionKeyManager)initWithEncryptionContext:(id)a3 encryptionKeySize:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20.receiver = self;
  v20.super_class = IDSGroupEncryptionKeyManager;
  v7 = [(IDSGroupEncryptionKeyManager *)&v20 init];
  if (v7)
  {
    v8 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v22 = a4;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyManager created with encryptionKeySize %ld", buf, 0xCu);
    }

    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [v6 copy];
    encryptionContext = v7->_encryptionContext;
    v7->_encryptionContext = v9;

    v7->_encryptionKeySize = a4;
    v11 = [MEMORY[0x1E695DF70] array];
    previousEncryptingKeys = v7->_previousEncryptingKeys;
    v7->_previousEncryptingKeys = v11;

    v13 = [MEMORY[0x1E695DF70] array];
    previousEncryptingKeyIndexes = v7->_previousEncryptingKeyIndexes;
    v7->_previousEncryptingKeyIndexes = v13;

    v15 = [MEMORY[0x1E695DF70] array];
    previousEncryptingKeySalts = v7->_previousEncryptingKeySalts;
    v7->_previousEncryptingKeySalts = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    currentDecryptingKeysAndSalts = v7->_currentDecryptingKeysAndSalts;
    v7->_currentDecryptingKeysAndSalts = v17;
  }

  return v7;
}

- (BOOL)recvKeyMaterial:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v4)
  {
    if (self->_encryptionContext)
    {
      v5 = [v4 keySalt];

      if (v5)
      {
        v6 = [v4 keySalt];
        [v6 bytes];
        v7 = [v4 keySalt];
        [v7 length];
        [(NSMutableData *)self->_encryptionContext bytes];
        [(NSMutableData *)self->_encryptionContext length];
        Hkdf = CCKDFParametersCreateHkdf();

        v9 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v4 keySalt];
          v11 = v10;
          v12 = [v10 bytes];
          v13 = [v4 keySalt];
          v14 = [v13 length];
          v15 = [(NSMutableData *)self->_encryptionContext bytes];
          v16 = [(NSMutableData *)self->_encryptionContext length];
          *buf = 67110402;
          *v61 = Hkdf;
          *&v61[4] = 2048;
          *&v61[6] = v12;
          v62 = 2048;
          v63 = v14;
          v64 = 2048;
          v65 = v15;
          v66 = 2048;
          v67 = v16;
          v68 = 2112;
          v69 = v4;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyManager CCKDFParametersCreateHkdf returned %d with salt %p saltLength %lu context %p contextLength %lu key %@", buf, 0x3Au);
        }

        if (Hkdf == -4302)
        {
          v17 = +[IDSFoundationLog RealTimeEncryptionController];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v18 = "IDSGroupEncryptionKeyManager CCKDFParametersCreateHkdf failed: memory failure";
            goto LABEL_26;
          }

LABEL_30:
          v20 = 0;
LABEL_55:

          goto LABEL_56;
        }

        if (Hkdf)
        {
          if (Hkdf == -4300)
          {
            v17 = +[IDSFoundationLog RealTimeEncryptionController];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v18 = "IDSGroupEncryptionKeyManager CCKDFParametersCreateHkdf failed: bad params";
LABEL_26:
              v37 = v17;
              v38 = 2;
LABEL_29:
              _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, v18, buf, v38);
              goto LABEL_30;
            }
          }

          else
          {
            v17 = +[IDSFoundationLog RealTimeEncryptionController];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *v61 = Hkdf;
              v18 = "IDSGroupEncryptionKeyManager CCKDFParametersCreateHkdf failed: %ld";
              v37 = v17;
              v38 = 12;
              goto LABEL_29;
            }
          }

          goto LABEL_30;
        }

        v17 = [MEMORY[0x1E695DF88] dataWithLength:self->_encryptionKeySize];
        v21 = [v4 keyMaterial];
        if (v21 && v17)
        {
          v22 = self->_encryptionKeySize == 0;

          if (!v22)
          {
            v23 = [v4 keyMaterial];
            v24 = v23;
            [v23 bytes];
            v25 = [v4 keyMaterial];
            [v25 length];
            v26 = v17;
            [v17 mutableBytes];
            v27 = CCDeriveKey();

            v28 = +[IDSFoundationLog RealTimeEncryptionController];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [v4 keyMaterial];
              v29 = v59;
              v57 = [v59 bytes];
              v58 = [v4 keyMaterial];
              v30 = [v58 length];
              v31 = v17;
              v32 = [v17 mutableBytes];
              encryptionKeySize = self->_encryptionKeySize;
              v34 = [v4 keyIndex];
              *buf = 67110658;
              *v61 = v27;
              *&v61[4] = 2048;
              *&v61[6] = 0;
              v62 = 2048;
              v63 = v57;
              v64 = 2048;
              v65 = v30;
              v66 = 2048;
              v67 = v32;
              v68 = 2048;
              v69 = encryptionKeySize;
              v70 = 2112;
              v71 = v34;
              _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyManager CCDeriveKey returned %d with params %p key %p keyLength %lu derivedKey %p derivedKeyLength %ld keyID %@", buf, 0x44u);
            }

            CCKDFParametersDestroy();
            if (v27 <= -4301)
            {
              if (v27 == -4305)
              {
                v35 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v36 = "IDSGroupEncryptionKeyManager CCDeriveKey failed: unimplemented";
                  goto LABEL_42;
                }

                goto LABEL_53;
              }

              if (v27 == -4302)
              {
                v35 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v36 = "IDSGroupEncryptionKeyManager CCDeriveKey failed: memory failure";
LABEL_42:
                  v39 = v35;
                  v40 = 2;
                  goto LABEL_43;
                }

                goto LABEL_53;
              }

              goto LABEL_38;
            }

            if (v27)
            {
              if (v27 == -4300)
              {
                v35 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v36 = "IDSGroupEncryptionKeyManager CCDeriveKey failed: bad params";
                  goto LABEL_42;
                }

LABEL_53:
                v20 = 0;
LABEL_54:

                goto LABEL_55;
              }

LABEL_38:
              v35 = +[IDSFoundationLog RealTimeEncryptionController];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *v61 = v27;
                v36 = "IDSGroupEncryptionKeyManager CCDeriveKey failed: %ld";
                v39 = v35;
                v40 = 12;
LABEL_43:
                _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, v36, buf, v40);
                goto LABEL_53;
              }

              goto LABEL_53;
            }

            if ([v4 isGeneratedLocally])
            {
              p_currentEncryptingKey = &self->_currentEncryptingKey;
              if (!self->_currentEncryptingKey)
              {
LABEL_49:
                objc_storeStrong(&self->_currentEncryptingKey, v17);
                v42 = [v4 keyIndex];
                v43 = [v42 copy];
                currentEncryptingKeyIndex = self->_currentEncryptingKeyIndex;
                self->_currentEncryptingKeyIndex = v43;

                v45 = [v4 keySalt];
                v46 = [v45 copy];
                currentEncryptingKeySalt = self->_currentEncryptingKeySalt;
                self->_currentEncryptingKeySalt = v46;

                self->_currentEncryptingKeyGeneration = [v4 generationCounter];
                v35 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v48 = self->_currentEncryptingKeyIndex;
                  currentEncryptingKeyGeneration = self->_currentEncryptingKeyGeneration;
                  *buf = 138412546;
                  *v61 = v48;
                  *&v61[8] = 1024;
                  *&v61[10] = currentEncryptingKeyGeneration;
                  _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyManager New EncryptionKey:%@, generation counter: %u", buf, 0x12u);
                }

                v20 = 1;
                goto LABEL_54;
              }

              if ([v4 generationCounter] > self->_currentEncryptingKeyGeneration)
              {
                if (*p_currentEncryptingKey)
                {
                  [(NSMutableArray *)self->_previousEncryptingKeys insertObject:*p_currentEncryptingKey atIndex:0];
                  [(NSMutableArray *)self->_previousEncryptingKeyIndexes insertObject:self->_currentEncryptingKeyIndex atIndex:0];
                  [(NSMutableArray *)self->_previousEncryptingKeySalts insertObject:self->_currentEncryptingKeySalt atIndex:0];
                }

                goto LABEL_49;
              }
            }

            currentDecryptingKeysAndSalts = self->_currentDecryptingKeysAndSalts;
            v51 = MEMORY[0x1E69A6128];
            v35 = [v4 keySalt];
            v52 = [v35 copy];
            v53 = [v51 pairWithFirst:v17 second:v52];
            v54 = [v4 keyIndex];
            v55 = [v54 copy];
            [(NSMutableDictionary *)currentDecryptingKeysAndSalts setObject:v53 forKey:v55];

            goto LABEL_53;
          }
        }

        else
        {
        }

        v35 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1B678(v35);
        }

        goto LABEL_53;
      }
    }
  }

  v19 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E1B6BC(v19);
  }

  v20 = 0;
LABEL_56:
  os_unfair_lock_unlock(&self->_lock);

  return v20;
}

- (void)receiveMembershipChangedInformation:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v3 != 3)
  {
    currentEncryptingKey = self->_currentEncryptingKey;
    if (currentEncryptingKey)
    {
      [(NSMutableArray *)self->_previousEncryptingKeys insertObject:currentEncryptingKey atIndex:0];
      v6 = self->_currentEncryptingKey;
      self->_currentEncryptingKey = 0;

      [(NSMutableArray *)self->_previousEncryptingKeyIndexes insertObject:self->_currentEncryptingKeyIndex atIndex:0];
      currentEncryptingKeyIndex = self->_currentEncryptingKeyIndex;
      self->_currentEncryptingKeyIndex = 0;

      [(NSMutableArray *)self->_previousEncryptingKeySalts insertObject:self->_currentEncryptingKeySalt atIndex:0];
      currentEncryptingKeySalt = self->_currentEncryptingKeySalt;
      self->_currentEncryptingKeySalt = 0;

      self->_currentEncryptingKeyGeneration = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)purgeOldKeyMaterial
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_previousEncryptingKeys removeAllObjects];
  [(NSMutableArray *)self->_previousEncryptingKeyIndexes removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidateKeyMaterialByKeyIndexes:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([(NSUUID *)self->_currentEncryptingKeyIndex isEqual:v9])
        {
          currentEncryptingKeyIndex = self->_currentEncryptingKeyIndex;
          self->_currentEncryptingKeyIndex = 0;

          currentEncryptingKey = self->_currentEncryptingKey;
          self->_currentEncryptingKey = 0;

          currentEncryptingKeySalt = self->_currentEncryptingKeySalt;
          self->_currentEncryptingKeySalt = 0;

          self->_currentEncryptingKeyGeneration = 0;
        }

        else
        {
          v15 = 0;
          v16 = &v15;
          v17 = 0x2020000000;
          v18 = -1;
          previousEncryptingKeyIndexes = self->_previousEncryptingKeyIndexes;
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = sub_1A7C0D640;
          v14[3] = &unk_1E77E17F0;
          v14[4] = v9;
          v14[5] = &v15;
          [(NSMutableArray *)previousEncryptingKeyIndexes enumerateObjectsUsingBlock:v14];
          if (v16[3] == -1)
          {
            [(NSMutableDictionary *)self->_currentDecryptingKeysAndSalts removeObjectForKey:v9];
          }

          else
          {
            [(NSMutableArray *)self->_previousEncryptingKeyIndexes removeObjectAtIndex:?];
            [(NSMutableArray *)self->_previousEncryptingKeys removeObjectAtIndex:v16[3]];
          }

          _Block_object_dispose(&v15, 8);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)useCurrentEncryptionkeyWithHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  currentEncryptingKey = self->_currentEncryptingKey;
  if (currentEncryptingKey)
  {
    v6 = currentEncryptingKey;
    v7 = self->_currentEncryptingKeySalt;
    v8 = self->_currentEncryptingKeyIndex;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_previousEncryptingKeys firstObject];
    v7 = [(NSMutableArray *)self->_previousEncryptingKeySalts firstObject];
    v8 = [(NSMutableArray *)self->_previousEncryptingKeyIndexes firstObject];
  }

  v9 = v8;
  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || v7 == 0;
  v12 = !v11;
  if (!v11)
  {
    v4[2](v4, v6, v7, v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v12;
}

- (BOOL)useDecryptingKeyForKeyIndex:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_currentDecryptingKeysAndSalts objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 first];
    v11 = [v9 second];
    v7[2](v7, v10, v11, v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v9 != 0;
}

- (void)enumerateDecryptingKeysAndSaltsUsingBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  currentDecryptingKeysAndSalts = self->_currentDecryptingKeysAndSalts;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7C0D930;
  v7[3] = &unk_1E77E1818;
  v6 = v4;
  v8 = v6;
  [(NSMutableDictionary *)currentDecryptingKeysAndSalts enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_lock_unlock(&self->_lock);
}

@end