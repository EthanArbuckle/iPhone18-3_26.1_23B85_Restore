@interface SGModelAsset
+ (id)_assetWithName:(id)a3 andLoadBlock:(id)a4;
+ (id)asset;
+ (id)dictionaryWithPlistFilename:(id)a3;
+ (id)vocabWithTrieFilename:(id)a3;
+ (void)_invokeOnUpdateBlock;
+ (void)_reset;
+ (void)registerOnUpdateBlock:(id)a3;
@end

@implementation SGModelAsset

+ (id)asset
{
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_9);
  }

  v3 = _assetInstance;

  return v3;
}

+ (id)vocabWithTrieFilename:(id)a3
{
  v3 = a3;
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_9);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SGModelAsset_vocabWithTrieFilename___block_invoke;
  v7[3] = &unk_278EB74D8;
  v8 = v3;
  v4 = v3;
  v5 = [SGModelAsset _assetWithName:v4 andLoadBlock:v7];

  return v5;
}

id __38__SGModelAsset_vocabWithTrieFilename___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SGModelAsset asset];
  v3 = [v2 filesystemPathForAssetDataRelativePath:*(a1 + 32)];

  if (v3)
  {
    v4 = [SGDefaultAssets vocabWithTrieAssetPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error finding model trie path for %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)dictionaryWithPlistFilename:(id)a3
{
  v3 = a3;
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_9);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SGModelAsset_dictionaryWithPlistFilename___block_invoke;
  v7[3] = &unk_278EB74D8;
  v8 = v3;
  v4 = v3;
  v5 = [SGModelAsset _assetWithName:v4 andLoadBlock:v7];

  return v5;
}

id __44__SGModelAsset_dictionaryWithPlistFilename___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[SGModelAsset asset];
  v3 = [v2 filesystemPathForAssetDataRelativePath:*(a1 + 32)];

  if (v3)
  {
    v4 = [SGDefaultAssets dictionaryWithPlistAssetPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error finding model plist path for %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_assetWithName:(id)a3 andLoadBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_9);
  }

  [_lock lock];
  v7 = [_cache objectForKey:v5];
  if (!v7)
  {
    v8 = v6[2](v6);
    v9 = _cache;
    if (v8)
    {
      v7 = v8;
      [_cache setObject:v8 forKey:v5];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB68] null];
      [v9 setObject:v10 forKey:v5];

      v7 = 0;
    }
  }

  [_lock unlock];
  v11 = [MEMORY[0x277CBEB68] null];
  if (v7 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  return v12;
}

+ (void)_reset
{
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_9);
  }

  [_lock lock];
  [_cache removeAllObjects];
  v2 = _lock;

  [v2 unlock];
}

+ (void)_invokeOnUpdateBlock
{
  v14 = *MEMORY[0x277D85DE8];
  if (setup_onceToken != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_9);
  }

  [_lock lock];
  v2 = [_updateBlocks copy];
  [_lock unlock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * i) + 16))(*(*(&v9 + 1) + 8 * i));
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)registerOnUpdateBlock:(id)a3
{
  v3 = setup_onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&setup_onceToken, &__block_literal_global_9);
  }

  [_lock lock];
  v5 = _updateBlocks;
  v6 = MEMORY[0x24C1B0A20](v4);

  [v5 addObject:v6];
  v7 = _lock;

  [v7 unlock];
}

@end