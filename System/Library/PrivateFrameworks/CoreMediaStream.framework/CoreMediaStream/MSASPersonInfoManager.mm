@interface MSASPersonInfoManager
+ (id)sharedManager;
- (BOOL)updateWithSharingRelationship:(id)a3;
- (MSASPersonInfoManager)initWithPath:(id)a3;
- (id)emailForPersonID:(id)a3;
- (id)firstNameForPersonID:(id)a3;
- (id)fullNameForPersonID:(id)a3;
- (id)lastNameForPersonID:(id)a3;
@end

@implementation MSASPersonInfoManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MSASPersonInfoManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_manager;

  return v2;
}

void __38__MSASPersonInfoManager_sharedManager__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___MSASPersonInfoManager;
  v1 = [objc_msgSendSuper2(&v6 allocWithZone_];
  v2 = sharedManager_manager;
  sharedManager_manager = v1;

  v3 = sharedManager_manager;
  v4 = MSPathAlbumSharingDir();
  v5 = [v4 stringByAppendingPathComponent:@"personID.plist"];
  [v3 initWithPath:v5];
}

- (id)emailForPersonID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_personIDToPersonInfoDictionary objectForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = [v6 objectForKey:kMSASPersonInfoEmailKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fullNameForPersonID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_personIDToPersonInfoDictionary objectForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = [v6 objectForKey:kMSASPersonInfoFullNameKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)lastNameForPersonID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_personIDToPersonInfoDictionary objectForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = [v6 objectForKey:kMSASPersonInfoLastNameKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstNameForPersonID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_personIDToPersonInfoDictionary objectForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = [v6 objectForKey:kMSASPersonInfoFirstNameKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)updateWithSharingRelationship:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 personID];
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(NSMutableDictionary *)v6->_personIDToPersonInfoDictionary objectForKey:v5];
    v8 = [v7 mutableCopy];

    objc_sync_exit(v6);
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    }

    v22 = [v8 objectForKey:kMSASPersonInfoFirstNameKey];
    v23 = [v4 firstName];
    if (v23 && ([v22 isEqualToString:v23] & 1) == 0)
    {
      [v8 setObject:v23 forKey:kMSASPersonInfoFirstNameKey];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v21 = [v8 objectForKey:kMSASPersonInfoLastNameKey];
    v11 = [v4 lastName];
    if (v11 && ([v21 isEqualToString:v11] & 1) == 0)
    {
      [v8 setObject:v11 forKey:kMSASPersonInfoLastNameKey];
      v9 = 1;
    }

    v20 = [v8 objectForKey:kMSASPersonInfoFullNameKey];
    v12 = [v4 fullName];
    if (v12 && ([v20 isEqualToString:v12] & 1) == 0)
    {
      [v8 setObject:v12 forKey:kMSASPersonInfoFullNameKey];
      v9 = 1;
    }

    v13 = [v8 objectForKey:kMSASPersonInfoEmailKey];
    v14 = [v4 email];
    if (v14 && ([v13 isEqualToString:v14] & 1) == 0)
    {
      [v8 setObject:v14 forKey:kMSASPersonInfoEmailKey];
    }

    else if (!v9)
    {
      v10 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v15 = v6;
    objc_sync_enter(v15);
    [(NSMutableDictionary *)v6->_personIDToPersonInfoDictionary setObject:v8 forKey:v5];
    if (([(NSMutableDictionary *)v6->_personIDToPersonInfoDictionary writeToFile:v15->_pathForPersonInfoDictionary atomically:1]& 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      personIDToPersonInfoDictionary = v6->_personIDToPersonInfoDictionary;
      pathForPersonInfoDictionary = v15->_pathForPersonInfoDictionary;
      *buf = 138543874;
      v25 = v15;
      v26 = 2114;
      v27 = personIDToPersonInfoDictionary;
      v28 = 2112;
      v29 = pathForPersonInfoDictionary;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to save personIDToPersonInfo dictionary %{public}@ to %@.", buf, 0x20u);
    }

    objc_sync_exit(v15);

    v10 = 1;
    goto LABEL_24;
  }

  v10 = 0;
LABEL_25:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (MSASPersonInfoManager)initWithPath:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_pathForPersonInfoDictionary, a3);
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v11];

  if (v7)
  {
    [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:self->_pathForPersonInfoDictionary];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v8 = ;
  personIDToPersonInfoDictionary = v5->_personIDToPersonInfoDictionary;
  v5->_personIDToPersonInfoDictionary = v8;

  objc_sync_exit(v5);

  return result;
}

@end