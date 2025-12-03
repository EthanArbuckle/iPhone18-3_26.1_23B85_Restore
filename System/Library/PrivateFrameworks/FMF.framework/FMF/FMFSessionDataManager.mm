@interface FMFSessionDataManager
+ (id)sharedInstance;
- (id)favoritesOrdered;
- (id)followerForHandle:(id)handle;
- (id)followingForHandle:(id)handle;
- (id)locationForHandle:(id)handle;
- (id)offerExpirationForHandle:(id)handle groupId:(id)id;
- (void)abDidChange;
- (void)abPreferencesDidChange;
- (void)setFences:(id)fences;
- (void)setFollowers:(id)followers;
- (void)setFollowing:(id)following;
- (void)setLocations:(id)locations;
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

- (void)setLocations:(id)locations
{
  v29 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [MEMORY[0x277CBEB58] set];
  v22 = locationsCopy;
  v7 = [locationsCopy mutableCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(FMFSessionDataManager *)selfCopy setLocationsCache:dictionary];

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
        v14 = [(NSSet *)selfCopy->_locations member:v13];
        handle = [v13 handle];
        serverId = [handle serverId];

        if (!serverId)
        {
          v18 = LogCategory_Daemon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            handle2 = [v14 handle];
            [(FMFSessionDataManager *)handle2 setLocations:buf, v18];
          }

          goto LABEL_16;
        }

        if (v14)
        {
          [v14 updateLocationForCache:v13];
          [(NSSet *)v6 addObject:v14];
          locationsCache = [(FMFSessionDataManager *)selfCopy locationsCache];
          [locationsCache setObject:v14 forKey:serverId];
        }

        else
        {
          [(NSSet *)v6 addObject:v13];
          locationsCache = [(FMFSessionDataManager *)selfCopy locationsCache];
          [locationsCache setObject:v13 forKey:serverId];
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

  locations = selfCopy->_locations;
  selfCopy->_locations = v6;

  objc_sync_exit(selfCopy);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)setFollowers:(id)followers
{
  followersCopy = followers;
  obj = self;
  objc_sync_enter(obj);
  followers = obj->_followers;
  obj->_followers = followersCopy;

  objc_sync_exit(obj);
}

- (void)setFollowing:(id)following
{
  followingCopy = following;
  obj = self;
  objc_sync_enter(obj);
  following = obj->_following;
  obj->_following = followingCopy;

  objc_sync_exit(obj);
}

- (void)setFences:(id)fences
{
  fencesCopy = fences;
  obj = self;
  objc_sync_enter(obj);
  fences = obj->_fences;
  obj->_fences = fencesCopy;

  objc_sync_exit(obj);
}

- (id)followerForHandle:(id)handle
{
  handleCopy = handle;
  followers = [(FMFSessionDataManager *)self followers];
  v6 = [followers member:handleCopy];

  return v6;
}

- (id)followingForHandle:(id)handle
{
  handleCopy = handle;
  following = [(FMFSessionDataManager *)self following];
  v6 = [following member:handleCopy];

  return v6;
}

- (id)locationForHandle:(id)handle
{
  handleCopy = handle;
  serverId = [handleCopy serverId];
  if (serverId)
  {
    v6 = handleCopy;
  }

  else
  {
    v6 = [(FMFSessionDataManager *)self followingForHandle:handleCopy];
  }

  v7 = v6;

  serverId2 = [v7 serverId];
  if (serverId2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    locationsCache = [(FMFSessionDataManager *)selfCopy locationsCache];
    v11 = [locationsCache objectForKeyedSubscript:serverId2];

    if (v11 && ([v11 isValid] & 1) == 0)
    {
      locations = [(FMFSessionDataManager *)selfCopy locations];
      v13 = [locations mutableCopy];

      [v13 removeObject:v11];
      objc_storeStrong(&selfCopy->_locations, v13);
      locationsCache2 = [(FMFSessionDataManager *)selfCopy locationsCache];
      [locationsCache2 removeObjectForKey:serverId2];

      v11 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v15 = LogCategory_Daemon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(FMFSessionDataManager *)handleCopy locationForHandle:v15];
    }

    v11 = 0;
  }

  return v11;
}

- (id)offerExpirationForHandle:(id)handle groupId:(id)id
{
  idCopy = id;
  handleCopy = handle;
  followers = [(FMFSessionDataManager *)self followers];
  v9 = [followers member:handleCopy];

  v10 = idCopy;
  if (!idCopy)
  {
    v10 = @"kFMFGroupIdOneToOne";
  }

  v11 = idCopy;
  expiresByGroupId = [v9 expiresByGroupId];
  v13 = [expiresByGroupId objectForKeyedSubscript:v10];

  v14 = MEMORY[0x277CBEAA8];
  [v13 doubleValue];
  v16 = [v14 dateWithTimeIntervalSince1970:v15 / 1000.0];

  return v16;
}

- (void)abDidChange
{
  obj = self;
  objc_sync_enter(obj);
  followers = [(FMFSessionDataManager *)obj followers];
  [followers makeObjectsPerformSelector:sel_addressBookDidChange];

  following = [(FMFSessionDataManager *)obj following];
  [following makeObjectsPerformSelector:sel_addressBookDidChange];

  objc_sync_exit(obj);
}

- (void)abPreferencesDidChange
{
  obj = self;
  objc_sync_enter(obj);
  followers = [(FMFSessionDataManager *)obj followers];
  [followers makeObjectsPerformSelector:sel_abPreferencesDidChange];

  following = [(FMFSessionDataManager *)obj following];
  [following makeObjectsPerformSelector:sel_abPreferencesDidChange];

  objc_sync_exit(obj);
}

- (id)favoritesOrdered
{
  following = [(FMFSessionDataManager *)self following];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"favoriteOrder != nil"];
  v4 = [following filteredSetUsingPredicate:v3];

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