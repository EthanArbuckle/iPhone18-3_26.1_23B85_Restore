@interface FMFSessionDataManager
+ (id)sharedInstance;
- (id)favoritesOrdered;
- (id)followerForHandle:(id)a3;
- (id)followingForHandle:(id)a3;
- (id)locationForHandle:(id)a3;
- (id)offerExpirationForHandle:(id)a3 groupId:(id)a4;
- (void)abDidChange;
- (void)abPreferencesDidChange;
- (void)setFences:(id)a3;
- (void)setFollowers:(id)a3;
- (void)setFollowing:(id)a3;
- (void)setLocations:(id)a3;
@end

@implementation FMFSessionDataManager

+ (id)sharedInstance
{
  if (sharedInstance_dispatch_predicate_0 != -1)
  {
    +[FMFSessionDataManager sharedInstance];
  }

  v3 = sharedInstance__instance_0;

  return v3;
}

void __39__FMFSessionDataManager_sharedInstance__block_invoke()
{
  v0 = LogCategory_Daemon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_24A33F000, v0, OS_LOG_TYPE_INFO, "Creating shared instance of FMFSessionDataManager", v3, 2u);
  }

  v1 = objc_alloc_init(FMFSessionDataManager);
  v2 = sharedInstance__instance_0;
  sharedInstance__instance_0 = v1;
}

- (void)setLocations:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEB58] set];
  v22 = v4;
  v7 = [v4 mutableCopy];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [(FMFSessionDataManager *)v5 setLocationsCache:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [(NSSet *)v5->_locations member:v13];
        v15 = [v13 handle];
        v16 = [v15 serverId];

        if (!v16)
        {
          v18 = LogCategory_Daemon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v14 handle];
            [(FMFSessionDataManager *)v19 setLocations:buf, v18];
          }

          goto LABEL_16;
        }

        if (v14)
        {
          [v14 updateLocationForCache:v13];
          [(NSSet *)v6 addObject:v14];
          v17 = [(FMFSessionDataManager *)v5 locationsCache];
          [v17 setObject:v14 forKey:v16];
        }

        else
        {
          [(NSSet *)v6 addObject:v13];
          v17 = [(FMFSessionDataManager *)v5 locationsCache];
          [v17 setObject:v13 forKey:v16];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  locations = v5->_locations;
  v5->_locations = v6;

  objc_sync_exit(v5);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)setFollowers:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  followers = obj->_followers;
  obj->_followers = v4;

  objc_sync_exit(obj);
}

- (void)setFollowing:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  following = obj->_following;
  obj->_following = v4;

  objc_sync_exit(obj);
}

- (void)setFences:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  fences = obj->_fences;
  obj->_fences = v4;

  objc_sync_exit(obj);
}

- (id)followerForHandle:(id)a3
{
  v4 = a3;
  v5 = [(FMFSessionDataManager *)self followers];
  v6 = [v5 member:v4];

  return v6;
}

- (id)followingForHandle:(id)a3
{
  v4 = a3;
  v5 = [(FMFSessionDataManager *)self following];
  v6 = [v5 member:v4];

  return v6;
}

- (id)locationForHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 serverId];
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(FMFSessionDataManager *)self followingForHandle:v4];
  }

  v7 = v6;

  v8 = [v7 serverId];
  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(FMFSessionDataManager *)v9 locationsCache];
    v11 = [v10 objectForKeyedSubscript:v8];

    if (v11 && ([v11 isValid] & 1) == 0)
    {
      v12 = [(FMFSessionDataManager *)v9 locations];
      v13 = [v12 mutableCopy];

      [v13 removeObject:v11];
      objc_storeStrong(&v9->_locations, v13);
      v14 = [(FMFSessionDataManager *)v9 locationsCache];
      [v14 removeObjectForKey:v8];

      v11 = 0;
    }

    objc_sync_exit(v9);
  }

  else
  {
    v15 = LogCategory_Daemon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(FMFSessionDataManager *)v4 locationForHandle:v15];
    }

    v11 = 0;
  }

  return v11;
}

- (id)offerExpirationForHandle:(id)a3 groupId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FMFSessionDataManager *)self followers];
  v9 = [v8 member:v7];

  v10 = v6;
  if (!v6)
  {
    v10 = @"kFMFGroupIdOneToOne";
  }

  v11 = v6;
  v12 = [v9 expiresByGroupId];
  v13 = [v12 objectForKeyedSubscript:v10];

  v14 = MEMORY[0x277CBEAA8];
  [v13 doubleValue];
  v16 = [v14 dateWithTimeIntervalSince1970:v15 / 1000.0];

  return v16;
}

- (void)abDidChange
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(FMFSessionDataManager *)obj followers];
  [v2 makeObjectsPerformSelector:sel_addressBookDidChange];

  v3 = [(FMFSessionDataManager *)obj following];
  [v3 makeObjectsPerformSelector:sel_addressBookDidChange];

  objc_sync_exit(obj);
}

- (void)abPreferencesDidChange
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(FMFSessionDataManager *)obj followers];
  [v2 makeObjectsPerformSelector:sel_abPreferencesDidChange];

  v3 = [(FMFSessionDataManager *)obj following];
  [v3 makeObjectsPerformSelector:sel_abPreferencesDidChange];

  objc_sync_exit(obj);
}

- (id)favoritesOrdered
{
  v2 = [(FMFSessionDataManager *)self following];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"favoriteOrder != nil"];
  v4 = [v2 filteredSetUsingPredicate:v3];

  if (!favoritesOrdered_sortDesc)
  {
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"favoriteOrder" ascending:1];
    v6 = favoritesOrdered_sortDesc;
    favoritesOrdered_sortDesc = v5;
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v8 = [v4 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (void)setLocations:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_24A33F000, log, OS_LOG_TYPE_ERROR, "Failed to cache location. Missing serverId. %@", buf, 0xCu);
}

- (void)locationForHandle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A33F000, a2, OS_LOG_TYPE_ERROR, "Faild cached location lookup. Missing serverId. %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end