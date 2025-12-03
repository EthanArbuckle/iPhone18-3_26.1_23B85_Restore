@interface IDSGroupEncryptionKeyMaterialCache
- (IDSGroupEncryptionKeyMaterialCache)init;
- (void)enumerateCachedKeyMaterialUsingBlock:(id)block;
- (void)invalidateKeyMaterialByKeyIndexes:(id)indexes;
- (void)recvKeyMaterial:(id)material;
@end

@implementation IDSGroupEncryptionKeyMaterialCache

- (IDSGroupEncryptionKeyMaterialCache)init
{
  v8.receiver = self;
  v8.super_class = IDSGroupEncryptionKeyMaterialCache;
  v2 = [(IDSGroupEncryptionKeyMaterialCache *)&v8 init];
  if (v2)
  {
    realTimeEncryptionController = [MEMORY[0x1E69A5270] RealTimeEncryptionController];
    if (os_log_type_enabled(realTimeEncryptionController, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1959FF000, realTimeEncryptionController, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyMaterialCache", v7, 2u);
    }

    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DFA8] set];
    cache = v2->_cache;
    v2->_cache = v4;
  }

  return v2;
}

- (void)recvKeyMaterial:(id)material
{
  v9 = *MEMORY[0x1E69E9840];
  materialCopy = material;
  os_unfair_lock_lock(&self->_lock);
  if (([(NSMutableSet *)self->_cache containsObject:materialCopy]& 1) == 0)
  {
    realTimeEncryptionController = [MEMORY[0x1E69A5270] RealTimeEncryptionController];
    if (os_log_type_enabled(realTimeEncryptionController, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = materialCopy;
      _os_log_impl(&dword_1959FF000, realTimeEncryptionController, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyMaterialCache received key %@", &v7, 0xCu);
    }

    [(NSMutableSet *)self->_cache addObject:materialCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)invalidateKeyMaterialByKeyIndexes:(id)indexes
{
  v32 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v4 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_cache;
  v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v18 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = indexesCopy;
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v9)
        {
          v10 = *v21;
          do
          {
            v11 = 0;
            do
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v20 + 1) + 8 * v11);
              keyIndex = [v7 keyIndex];
              LODWORD(v12) = [keyIndex isEqual:v12];

              if (v12)
              {
                [v4 addObject:v7];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
          }

          while (v9);
        }

        ++v6;
      }

      while (v6 != v5);
      v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v5);
  }

  realTimeEncryptionController = [MEMORY[0x1E69A5270] RealTimeEncryptionController];
  if (os_log_type_enabled(realTimeEncryptionController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_1959FF000, realTimeEncryptionController, OS_LOG_TYPE_DEFAULT, "IDSGroupEncryptionKeyMaterialCache invalidateKeyMaterialByKeyIndexes %@", buf, 0xCu);
  }

  if ([v4 count])
  {
    [(NSMutableSet *)selfCopy->_cache minusSet:v4];
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)enumerateCachedKeyMaterialUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_cache;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      v11 = 0;
      blockCopy[2](blockCopy, v9, &v11);
      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

@end