@interface IDSGroupEncryptionKeyManager
- (BOOL)recvKeyMaterial:(id)material;
- (BOOL)useCurrentEncryptionkeyWithHandler:(id)handler;
- (BOOL)useDecryptingKeyForKeyIndex:(id)index handler:(id)handler;
- (IDSGroupEncryptionKeyManager)initWithEncryptionContext:(id)context encryptionKeySize:(unint64_t)size;
- (void)enumerateDecryptingKeysAndSaltsUsingBlock:(id)block;
- (void)invalidateKeyMaterialByKeyIndexes:(id)indexes;
- (void)purgeOldKeyMaterial;
- (void)receiveMembershipChangedInformation:(unsigned __int8)information;
@end

@implementation IDSGroupEncryptionKeyManager

- (IDSGroupEncryptionKeyManager)initWithEncryptionContext:(id)context encryptionKeySize:(unint64_t)size
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = IDSGroupEncryptionKeyManager;
  v7 = [(IDSGroupEncryptionKeyManager *)&v20 init];
  if (v7)
  {
    v8 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      sizeCopy = size;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyManager created with encryptionKeySize %ld", buf, 0xCu);
    }

    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [contextCopy copy];
    encryptionContext = v7->_encryptionContext;
    v7->_encryptionContext = v9;

    v7->_encryptionKeySize = size;
    array = [MEMORY[0x1E695DF70] array];
    previousEncryptingKeys = v7->_previousEncryptingKeys;
    v7->_previousEncryptingKeys = array;

    array2 = [MEMORY[0x1E695DF70] array];
    previousEncryptingKeyIndexes = v7->_previousEncryptingKeyIndexes;
    v7->_previousEncryptingKeyIndexes = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    previousEncryptingKeySalts = v7->_previousEncryptingKeySalts;
    v7->_previousEncryptingKeySalts = array3;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    currentDecryptingKeysAndSalts = v7->_currentDecryptingKeysAndSalts;
    v7->_currentDecryptingKeysAndSalts = dictionary;
  }

  return v7;
}

- (BOOL)recvKeyMaterial:(id)material
{
  v72 = *MEMORY[0x1E69E9840];
  materialCopy = material;
  os_unfair_lock_lock(&self->_lock);
  if (materialCopy)
  {
    if (self->_encryptionContext)
    {
      keySalt = [materialCopy keySalt];

      if (keySalt)
      {
        keySalt2 = [materialCopy keySalt];
        [keySalt2 bytes];
        keySalt3 = [materialCopy keySalt];
        [keySalt3 length];
        [(NSMutableData *)self->_encryptionContext bytes];
        [(NSMutableData *)self->_encryptionContext length];
        Hkdf = CCKDFParametersCreateHkdf();

        v9 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          keySalt4 = [materialCopy keySalt];
          v11 = keySalt4;
          bytes = [keySalt4 bytes];
          keySalt5 = [materialCopy keySalt];
          v14 = [keySalt5 length];
          bytes2 = [(NSMutableData *)self->_encryptionContext bytes];
          v16 = [(NSMutableData *)self->_encryptionContext length];
          *buf = 67110402;
          *v61 = Hkdf;
          *&v61[4] = 2048;
          *&v61[6] = bytes;
          v62 = 2048;
          v63 = v14;
          v64 = 2048;
          v65 = bytes2;
          v66 = 2048;
          v67 = v16;
          v68 = 2112;
          v69 = materialCopy;
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
        keyMaterial = [materialCopy keyMaterial];
        if (keyMaterial && v17)
        {
          v22 = self->_encryptionKeySize == 0;

          if (!v22)
          {
            keyMaterial2 = [materialCopy keyMaterial];
            v24 = keyMaterial2;
            [keyMaterial2 bytes];
            keyMaterial3 = [materialCopy keyMaterial];
            [keyMaterial3 length];
            v26 = v17;
            [v17 mutableBytes];
            v27 = CCDeriveKey();

            v28 = +[IDSFoundationLog RealTimeEncryptionController];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              keyMaterial4 = [materialCopy keyMaterial];
              v29 = keyMaterial4;
              bytes3 = [keyMaterial4 bytes];
              keyMaterial5 = [materialCopy keyMaterial];
              v30 = [keyMaterial5 length];
              v31 = v17;
              mutableBytes = [v17 mutableBytes];
              encryptionKeySize = self->_encryptionKeySize;
              keyIndex = [materialCopy keyIndex];
              *buf = 67110658;
              *v61 = v27;
              *&v61[4] = 2048;
              *&v61[6] = 0;
              v62 = 2048;
              v63 = bytes3;
              v64 = 2048;
              v65 = v30;
              v66 = 2048;
              v67 = mutableBytes;
              v68 = 2048;
              v69 = encryptionKeySize;
              v70 = 2112;
              v71 = keyIndex;
              _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyManager CCDeriveKey returned %d with params %p key %p keyLength %lu derivedKey %p derivedKeyLength %ld keyID %@", buf, 0x44u);
            }

            CCKDFParametersDestroy();
            if (v27 <= -4301)
            {
              if (v27 == -4305)
              {
                keySalt7 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(keySalt7, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v36 = "IDSGroupEncryptionKeyManager CCDeriveKey failed: unimplemented";
                  goto LABEL_42;
                }

                goto LABEL_53;
              }

              if (v27 == -4302)
              {
                keySalt7 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(keySalt7, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v36 = "IDSGroupEncryptionKeyManager CCDeriveKey failed: memory failure";
LABEL_42:
                  v39 = keySalt7;
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
                keySalt7 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(keySalt7, OS_LOG_TYPE_DEFAULT))
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
              keySalt7 = +[IDSFoundationLog RealTimeEncryptionController];
              if (os_log_type_enabled(keySalt7, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *v61 = v27;
                v36 = "IDSGroupEncryptionKeyManager CCDeriveKey failed: %ld";
                v39 = keySalt7;
                v40 = 12;
LABEL_43:
                _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, v36, buf, v40);
                goto LABEL_53;
              }

              goto LABEL_53;
            }

            if ([materialCopy isGeneratedLocally])
            {
              p_currentEncryptingKey = &self->_currentEncryptingKey;
              if (!self->_currentEncryptingKey)
              {
LABEL_49:
                objc_storeStrong(&self->_currentEncryptingKey, v17);
                keyIndex2 = [materialCopy keyIndex];
                v43 = [keyIndex2 copy];
                currentEncryptingKeyIndex = self->_currentEncryptingKeyIndex;
                self->_currentEncryptingKeyIndex = v43;

                keySalt6 = [materialCopy keySalt];
                v46 = [keySalt6 copy];
                currentEncryptingKeySalt = self->_currentEncryptingKeySalt;
                self->_currentEncryptingKeySalt = v46;

                self->_currentEncryptingKeyGeneration = [materialCopy generationCounter];
                keySalt7 = +[IDSFoundationLog RealTimeEncryptionController];
                if (os_log_type_enabled(keySalt7, OS_LOG_TYPE_DEFAULT))
                {
                  v48 = self->_currentEncryptingKeyIndex;
                  currentEncryptingKeyGeneration = self->_currentEncryptingKeyGeneration;
                  *buf = 138412546;
                  *v61 = v48;
                  *&v61[8] = 1024;
                  *&v61[10] = currentEncryptingKeyGeneration;
                  _os_log_impl(&dword_1A7AD9000, keySalt7, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyManager New EncryptionKey:%@, generation counter: %u", buf, 0x12u);
                }

                v20 = 1;
                goto LABEL_54;
              }

              if ([materialCopy generationCounter] > self->_currentEncryptingKeyGeneration)
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
            keySalt7 = [materialCopy keySalt];
            v52 = [keySalt7 copy];
            v53 = [v51 pairWithFirst:v17 second:v52];
            keyIndex3 = [materialCopy keyIndex];
            v55 = [keyIndex3 copy];
            [(NSMutableDictionary *)currentDecryptingKeysAndSalts setObject:v53 forKey:v55];

            goto LABEL_53;
          }
        }

        else
        {
        }

        keySalt7 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(keySalt7, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1B678(keySalt7);
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

- (void)receiveMembershipChangedInformation:(unsigned __int8)information
{
  informationCopy = information;
  os_unfair_lock_lock(&self->_lock);
  if (informationCopy != 3)
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

- (void)invalidateKeyMaterialByKeyIndexes:(id)indexes
{
  v24 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = indexesCopy;
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

- (BOOL)useCurrentEncryptionkeyWithHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  currentEncryptingKey = self->_currentEncryptingKey;
  if (currentEncryptingKey)
  {
    firstObject = currentEncryptingKey;
    firstObject2 = self->_currentEncryptingKeySalt;
    firstObject3 = self->_currentEncryptingKeyIndex;
  }

  else
  {
    firstObject = [(NSMutableArray *)self->_previousEncryptingKeys firstObject];
    firstObject2 = [(NSMutableArray *)self->_previousEncryptingKeySalts firstObject];
    firstObject3 = [(NSMutableArray *)self->_previousEncryptingKeyIndexes firstObject];
  }

  v9 = firstObject3;
  if (firstObject)
  {
    v10 = firstObject3 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || firstObject2 == 0;
  v12 = !v11;
  if (!v11)
  {
    handlerCopy[2](handlerCopy, firstObject, firstObject2, firstObject3);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v12;
}

- (BOOL)useDecryptingKeyForKeyIndex:(id)index handler:(id)handler
{
  indexCopy = index;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_currentDecryptingKeysAndSalts objectForKeyedSubscript:indexCopy];
  v9 = v8;
  if (v8)
  {
    first = [v8 first];
    second = [v9 second];
    handlerCopy[2](handlerCopy, first, second, indexCopy);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v9 != 0;
}

- (void)enumerateDecryptingKeysAndSaltsUsingBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  currentDecryptingKeysAndSalts = self->_currentDecryptingKeysAndSalts;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7C0D930;
  v7[3] = &unk_1E77E1818;
  v6 = blockCopy;
  v8 = v6;
  [(NSMutableDictionary *)currentDecryptingKeysAndSalts enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_lock_unlock(&self->_lock);
}

@end