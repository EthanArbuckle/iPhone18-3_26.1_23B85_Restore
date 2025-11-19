@interface BCSCacheManager
- (BCSCacheManager)initWithBloomFilterShardCache:(id)a3 domainItemCache:(id)a4 itemCache:(id)a5;
- (BOOL)shouldSkipCacheForConfigItemOfType:(int64_t)a3;
- (BOOL)shouldSkipCacheForItemOfType:(int64_t)a3;
- (BOOL)shouldSkipCacheForShardItemOfType:(int64_t)a3;
- (id)configItemForType:(int64_t)a3;
- (id)domainItemMatching:(id)a3;
- (id)itemMatching:(id)a3;
- (id)shardItemMatching:(id)a3;
- (int64_t)countOfExpiredShardsOfType:(int64_t)a3;
- (int64_t)countOfShardsOfType:(int64_t)a3;
- (void)_clearExpiredCacheItemsForType:(void *)a3 completion:;
- (void)beginBatch;
- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)a3 completion:(id)a4;
- (void)clearCachesForType:(int64_t)a3 completion:(id)a4;
- (void)clearExpiredCachesForType:(int64_t)a3 completion:(id)a4;
- (void)deleteAllDomainItems;
- (void)deleteAllExpiredDomainItems;
- (void)deleteConfigItemForType:(int64_t)a3;
- (void)deleteDomainItemMatching:(id)a3;
- (void)deleteExpiredItemsOfType:(int64_t)a3;
- (void)deleteExpiredShardItemsOfType:(int64_t)a3;
- (void)deleteItemMatching:(id)a3;
- (void)deleteItemsOfType:(int64_t)a3;
- (void)deleteShardItemMatching:(id)a3;
- (void)deleteShardItemsOfType:(int64_t)a3;
- (void)endBatch;
- (void)updateConfigItem:(id)a3 withType:(int64_t)a4;
- (void)updateDomainItem:(id)a3 withDomainItemIdentifier:(id)a4;
- (void)updateDomainItemsForDomainShard:(id)a3;
- (void)updateItem:(id)a3 withItemIdentifier:(id)a4;
- (void)updateShardItem:(id)a3 withShardIdentifier:(id)a4;
@end

@implementation BCSCacheManager

- (BCSCacheManager)initWithBloomFilterShardCache:(id)a3 domainItemCache:(id)a4 itemCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = BCSCacheManager;
  v12 = [(BCSCacheManager *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_filterShardCache, a3);
    objc_storeStrong(&v13->_domainItemCache, a4);
    objc_storeStrong(&v13->_itemCache, a5);
    v14 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__BCSCacheManager_initWithBloomFilterShardCache_domainItemCache_itemCache___block_invoke;
    block[3] = &unk_278D38CC8;
    v17 = v13;
    dispatch_async(v14, block);
  }

  return v13;
}

void __75__BCSCacheManager_initWithBloomFilterShardCache_domainItemCache_itemCache___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearExpiredCachesForType:1 completion:&__block_literal_global_10];
  [(BCSCacheManager *)*(a1 + 32) _clearExpiredCacheItemsForType:&__block_literal_global_19 completion:?];
  [(BCSCacheManager *)*(a1 + 32) _clearExpiredCacheItemsForType:&__block_literal_global_22 completion:?];
  [(BCSCacheManager *)*(a1 + 32) _clearExpiredCacheItemsForType:&__block_literal_global_25 completion:?];
  v2 = *(a1 + 32);

  [(BCSCacheManager *)v2 _clearExpiredCacheItemsForType:&__block_literal_global_28 completion:?];
}

void __75__BCSCacheManager_initWithBloomFilterShardCache_domainItemCache_itemCache___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = ABSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 136315138;
      v8 = [v5 UTF8String];
      _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "clearExpiredCacheItemsForType error: %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __75__BCSCacheManager_initWithBloomFilterShardCache_domainItemCache_itemCache___block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = ABSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 136315138;
      v8 = [v5 UTF8String];
      _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "clearExpiredCacheItemsForType error: %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clearExpiredCacheItemsForType:(void *)a3 completion:
{
  if (a1)
  {
    v5 = a3;
    [a1 deleteExpiredItemsOfType:a2];
    v5[2](v5, 1, 0);
  }
}

void __75__BCSCacheManager_initWithBloomFilterShardCache_domainItemCache_itemCache___block_invoke_20(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = ABSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 136315138;
      v8 = [v5 UTF8String];
      _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "clearExpiredCacheItemsForType error: %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __75__BCSCacheManager_initWithBloomFilterShardCache_domainItemCache_itemCache___block_invoke_23(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = ABSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 136315138;
      v8 = [v5 UTF8String];
      _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "clearExpiredCacheItemsForType error: %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __75__BCSCacheManager_initWithBloomFilterShardCache_domainItemCache_itemCache___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = ABSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 description];
      v7 = 136315138;
      v8 = [v5 UTF8String];
      _os_log_impl(&dword_242072000, v4, OS_LOG_TYPE_DEFAULT, "clearExpiredCacheItemsForType error: %s", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)clearCachesForType:(int64_t)a3 completion:(id)a4
{
  v8 = a4;
  [(BCSCacheManager *)self deleteConfigItemForType:a3];
  [(BCSCacheManager *)self deleteItemsOfType:a3];
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v6 = self;
        v7 = 4;
        break;
      case 4:
        v6 = self;
        v7 = 5;
        break;
      case 5:
        v6 = self;
        v7 = 6;
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v6 = self;
    v7 = 1;
LABEL_12:
    [(BCSCacheManager *)v6 deleteShardItemsOfType:v7];
    goto LABEL_13;
  }

  if (a3 == 2)
  {
    [(BCSCacheManager *)self deleteShardItemsOfType:2];
    [(BCSCacheManager *)self deleteShardItemsOfType:3];
    [(BCSCacheManager *)self deleteAllDomainItems];
  }

LABEL_13:
  v8[2](v8, 1, 0);
}

- (void)clearExpiredCachesForType:(int64_t)a3 completion:(id)a4
{
  v10 = a4;
  if (self)
  {
    v6 = [(BCSCacheManager *)self configItemForType:a3];
    v7 = v6;
    if (v6 && [v6 isExpired])
    {
      [(BCSCacheManager *)self deleteConfigItemForType:a3];
    }
  }

  [(BCSCacheManager *)self deleteExpiredItemsOfType:a3];
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v8 = self;
        v9 = 4;
        break;
      case 4:
        v8 = self;
        v9 = 5;
        break;
      case 5:
        v8 = self;
        v9 = 6;
        break;
      default:
        goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
    v8 = self;
    v9 = 1;
LABEL_17:
    [(BCSCacheManager *)v8 deleteExpiredShardItemsOfType:v9];
    goto LABEL_18;
  }

  if (a3 == 2)
  {
    [(BCSCacheManager *)self deleteExpiredShardItemsOfType:2];
    [(BCSCacheManager *)self deleteExpiredShardItemsOfType:3];
    [(BCSCacheManager *)self deleteAllExpiredDomainItems];
  }

LABEL_18:
  v10[2](v10, 1, 0);
}

- (void)clearCachesForLinkItemsAssociatedWithBundleID:(id)a3 completion:(id)a4
{
  if (self)
  {
    itemCache = self->_itemCache;
  }

  else
  {
    itemCache = 0;
  }

  v6 = a4;
  [(BCSItemCaching *)itemCache deleteLinkItemsWithBundleID:a3];
  v6[2](v6, 1, 0);
}

- (BOOL)shouldSkipCacheForItemOfType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  v3 = off_278D3A3B8[a3 - 1];
  v4 = +[BCSUserDefaults sharedDefaults];
  LOBYTE(v3) = [v4 BOOLForKey:*v3];

  return v3;
}

- (id)itemMatching:(id)a3
{
  if (self)
  {
    self = self->_itemCache;
  }

  return [(BCSCacheManager *)self itemMatching:a3];
}

- (void)updateItem:(id)a3 withItemIdentifier:(id)a4
{
  if (self)
  {
    self = self->_itemCache;
  }

  [(BCSCacheManager *)self updateItem:a3 withItemIdentifier:a4];
}

- (void)deleteItemsOfType:(int64_t)a3
{
  if (self)
  {
    self = self->_itemCache;
  }

  [(BCSCacheManager *)self deleteItemsOfType:a3];
}

- (void)deleteExpiredItemsOfType:(int64_t)a3
{
  if (self)
  {
    self = self->_itemCache;
  }

  [(BCSCacheManager *)self deleteExpiredItemsOfType:a3];
}

- (void)deleteItemMatching:(id)a3
{
  if (self)
  {
    self = self->_itemCache;
  }

  [(BCSCacheManager *)self deleteItemMatching:a3];
}

- (BOOL)shouldSkipCacheForConfigItemOfType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  v3 = off_278D3A408[a3 - 1];
  v4 = +[BCSUserDefaults sharedDefaults];
  LOBYTE(v3) = [v4 BOOLForKey:*v3];

  return v3;
}

- (id)configItemForType:(int64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) > 4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = off_278D3A3E0[a3 - 1];
  v5 = +[BCSUserDefaults sharedDefaults];
  v6 = [v5 dataForKey:v4];

  if (!v6)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_21;
  }

  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v14 = NSClassFromString(&cfstr_Bcsconfigitem.isa);
      v10 = [v8 setWithObjects:{v14, objc_opt_class(), 0}];
      v28 = 0;
      v11 = &v28;
      v12 = &v28;
    }

    else
    {
      v16 = NSClassFromString(&cfstr_Bcsdomainconfi_4.isa);
      v10 = [v8 setWithObjects:{v16, objc_opt_class(), 0}];
      v27 = 0;
      v11 = &v27;
      v12 = &v27;
    }
  }

  else if (a3 == 3)
  {
    v15 = NSClassFromString(&cfstr_Bcsconfigitem.isa);
    v10 = [v8 setWithObjects:{v15, objc_opt_class(), 0}];
    v26 = 0;
    v11 = &v26;
    v12 = &v26;
  }

  else
  {
    v9 = NSClassFromString(&cfstr_Bcsconfigitem.isa);
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    if (a3 == 4)
    {
      v25 = 0;
      v11 = &v25;
      v12 = &v25;
    }

    else
    {
      v24 = 0;
      v11 = &v24;
      v12 = &v24;
    }
  }

  v13 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:v12];
  v17 = *v11;

  v18 = ABSLogCommon();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromBCSType(a3);
      *buf = 136315650;
      v30 = "[BCSCacheManager configItemForType:]";
      v31 = 2112;
      v32 = v23;
      v33 = 2112;
      v34 = v17;
      _os_log_error_impl(&dword_242072000, v19, OS_LOG_TYPE_ERROR, "%s unarchiving cached config item from NSUserDefaults failed - type: %@ (%@)", buf, 0x20u);
    }

    v19 = v13;
    v13 = 0;
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromBCSType(a3);
    *buf = 136315394;
    v30 = "[BCSCacheManager configItemForType:]";
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&dword_242072000, v19, OS_LOG_TYPE_DEFAULT, "%s cached config item successfully fetched from NSUserDefaults - type: %@", buf, 0x16u);
  }

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)updateConfigItem:(id)a3 withType:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v12 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
    v6 = v12;
    if (v6)
    {
      v7 = ABSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromBCSType(a4);
        *buf = 136315394;
        v14 = "[BCSCacheManager updateConfigItem:withType:]";
        v15 = 2112;
        v16 = v8;
        _os_log_error_impl(&dword_242072000, v7, OS_LOG_TYPE_ERROR, "%s archiving cached config item to NSUserDefaults failed - type: %@", buf, 0x16u);
      }

      goto LABEL_17;
    }

    if (a4 <= 2)
    {
      if (a4 == 1)
      {
        v9 = +[BCSUserDefaults sharedDefaults];
        v7 = v9;
        v10 = @"BCSCacheManagerChatSuggestConfigItemDefaultsKey";
        goto LABEL_16;
      }

      if (a4 == 2)
      {
        v9 = +[BCSUserDefaults sharedDefaults];
        v7 = v9;
        v10 = @"BCSCacheManagerBusinessLinkDomainConfigItemDefaultsKey";
        goto LABEL_16;
      }
    }

    else
    {
      switch(a4)
      {
        case 3:
          v9 = +[BCSUserDefaults sharedDefaults];
          v7 = v9;
          v10 = @"BCSCacheManagerBusinessCallerConfigItemDefaultsKey";
          goto LABEL_16;
        case 4:
          v9 = +[BCSUserDefaults sharedDefaults];
          v7 = v9;
          v10 = @"BCSCacheManagerBusinessEmailConfigItemDefaultsKey";
          goto LABEL_16;
        case 5:
          v9 = +[BCSUserDefaults sharedDefaults];
          v7 = v9;
          v10 = @"BCSCacheManagerWebPresentmentConfigItemDefaultsKey";
LABEL_16:
          [v9 setObject:v5 forKey:v10];
LABEL_17:

          break;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteConfigItemForType:(int64_t)a3
{
  if ((a3 - 1) <= 4)
  {
    v4 = off_278D3A3E0[a3 - 1];
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 removeObjectForKey:v4];
  }
}

- (BOOL)shouldSkipCacheForShardItemOfType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  v3 = off_278D3A408[a3 - 1];
  v4 = +[BCSUserDefaults sharedDefaults];
  LOBYTE(v3) = [v4 BOOLForKey:*v3];

  return v3;
}

- (id)shardItemMatching:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    filterShardCache = self->_filterShardCache;
  }

  else
  {
    filterShardCache = 0;
  }

  v6 = [(BCSShardCacheQueryable *)filterShardCache shardItemMatching:v4];
  v7 = ABSLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = NSStringFromBCSShardType([v4 type]);
    v13 = 136315394;
    v14 = "[BCSCacheManager shardItemMatching:]";
    v15 = 2112;
    v16 = v9;
    v10 = "%s cached shard item found - type: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = NSStringFromBCSShardType([v4 type]);
    v13 = 136315394;
    v14 = "[BCSCacheManager shardItemMatching:]";
    v15 = 2112;
    v16 = v9;
    v10 = "%s cached shard item not found - type: %@";
  }

  _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x16u);

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateShardItem:(id)a3 withShardIdentifier:(id)a4
{
  v10 = a3;
  if (self)
  {
    filterShardCache = self->_filterShardCache;
  }

  else
  {
    filterShardCache = 0;
  }

  v7 = a4;
  [(BCSShardCacheQueryable *)filterShardCache updateShardItem:v10 withShardIdentifier:v7];
  v8 = [v7 type];

  if (v8 == 3 && [v10 conformsToProtocol:&unk_28546B170])
  {
    if (self)
    {
      domainItemCache = self->_domainItemCache;
    }

    else
    {
      domainItemCache = 0;
    }

    [(BCSDomainItemCaching *)domainItemCache updateDomainItemsForDomainShard:v10];
  }
}

- (void)deleteShardItemMatching:(id)a3
{
  if (self)
  {
    self = self->_filterShardCache;
  }

  [(BCSCacheManager *)self deleteShardItemMatching:a3];
}

- (void)deleteExpiredShardItemsOfType:(int64_t)a3
{
  if (a3 == 3)
  {
    if (self)
    {
      domainItemCache = self->_domainItemCache;
    }

    else
    {
      domainItemCache = 0;
    }

    [(BCSDomainItemCaching *)domainItemCache deleteAllExpiredDomainItems];
  }

  if (self)
  {
    filterShardCache = self->_filterShardCache;
  }

  else
  {
    filterShardCache = 0;
  }

  [(BCSShardCacheQueryable *)filterShardCache deleteExpiredShardItemsOfType:a3];
}

- (void)deleteShardItemsOfType:(int64_t)a3
{
  if (a3 == 3)
  {
    if (self)
    {
      domainItemCache = self->_domainItemCache;
    }

    else
    {
      domainItemCache = 0;
    }

    [(BCSDomainItemCaching *)domainItemCache deleteAllDomainItems];
  }

  if (self)
  {
    filterShardCache = self->_filterShardCache;
  }

  else
  {
    filterShardCache = 0;
  }

  [(BCSShardCacheQueryable *)filterShardCache deleteShardItemsOfType:a3];
}

- (int64_t)countOfShardsOfType:(int64_t)a3
{
  if (self)
  {
    self = self->_filterShardCache;
  }

  return [(BCSCacheManager *)self countOfShardsOfType:a3];
}

- (int64_t)countOfExpiredShardsOfType:(int64_t)a3
{
  if (self)
  {
    self = self->_filterShardCache;
  }

  return [(BCSCacheManager *)self countOfExpiredShardsOfType:a3];
}

- (void)beginBatch
{
  if (self)
  {
    [(BCSShardCacheQueryable *)self->_filterShardCache beginBatch];
    domainItemCache = self->_domainItemCache;
  }

  else
  {
    [0 beginBatch];
    domainItemCache = 0;
  }

  [(BCSDomainItemCaching *)domainItemCache beginBatch];
}

- (void)endBatch
{
  if (self)
  {
    [(BCSShardCacheQueryable *)self->_filterShardCache endBatch];
    domainItemCache = self->_domainItemCache;
  }

  else
  {
    [0 endBatch];
    domainItemCache = 0;
  }

  [(BCSDomainItemCaching *)domainItemCache endBatch];
}

- (void)updateDomainItem:(id)a3 withDomainItemIdentifier:(id)a4
{
  if (self)
  {
    self = self->_domainItemCache;
  }

  [(BCSCacheManager *)self updateDomainItem:a3 withDomainItemIdentifier:a4];
}

- (id)domainItemMatching:(id)a3
{
  if (self)
  {
    self = self->_domainItemCache;
  }

  return [(BCSCacheManager *)self domainItemMatching:a3];
}

- (void)deleteDomainItemMatching:(id)a3
{
  if (self)
  {
    self = self->_domainItemCache;
  }

  [(BCSCacheManager *)self deleteDomainItemMatching:a3];
}

- (void)deleteAllDomainItems
{
  if (self)
  {
    self = self->_domainItemCache;
  }

  [(BCSCacheManager *)self deleteAllDomainItems];
}

- (void)deleteAllExpiredDomainItems
{
  if (self)
  {
    self = self->_domainItemCache;
  }

  [(BCSCacheManager *)self deleteAllExpiredDomainItems];
}

- (void)updateDomainItemsForDomainShard:(id)a3
{
  if (self)
  {
    self = self->_domainItemCache;
  }

  [(BCSCacheManager *)self updateDomainItemsForDomainShard:a3];
}

@end