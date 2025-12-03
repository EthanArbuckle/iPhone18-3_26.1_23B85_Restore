@interface MSASPersonInfoManager
+ (id)sharedManager;
- (BOOL)updateWithSharingRelationship:(id)relationship;
- (MSASPersonInfoManager)initWithPath:(id)path;
- (id)emailForPersonID:(id)d;
- (id)firstNameForPersonID:(id)d;
- (id)fullNameForPersonID:(id)d;
- (id)lastNameForPersonID:(id)d;
@end

@implementation MSASPersonInfoManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MSASPersonInfoManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)emailForPersonID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_personIDToPersonInfoDictionary objectForKey:dCopy];
  objc_sync_exit(selfCopy);

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

- (id)fullNameForPersonID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_personIDToPersonInfoDictionary objectForKey:dCopy];
  objc_sync_exit(selfCopy);

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

- (id)lastNameForPersonID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_personIDToPersonInfoDictionary objectForKey:dCopy];
  objc_sync_exit(selfCopy);

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

- (id)firstNameForPersonID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_personIDToPersonInfoDictionary objectForKey:dCopy];
  objc_sync_exit(selfCopy);

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

- (BOOL)updateWithSharingRelationship:(id)relationship
{
  v30 = *MEMORY[0x277D85DE8];
  relationshipCopy = relationship;
  personID = [relationshipCopy personID];
  if (personID)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(NSMutableDictionary *)selfCopy->_personIDToPersonInfoDictionary objectForKey:personID];
    v8 = [v7 mutableCopy];

    objc_sync_exit(selfCopy);
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    }

    v22 = [v8 objectForKey:kMSASPersonInfoFirstNameKey];
    firstName = [relationshipCopy firstName];
    if (firstName && ([v22 isEqualToString:firstName] & 1) == 0)
    {
      [v8 setObject:firstName forKey:kMSASPersonInfoFirstNameKey];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v21 = [v8 objectForKey:kMSASPersonInfoLastNameKey];
    lastName = [relationshipCopy lastName];
    if (lastName && ([v21 isEqualToString:lastName] & 1) == 0)
    {
      [v8 setObject:lastName forKey:kMSASPersonInfoLastNameKey];
      v9 = 1;
    }

    v20 = [v8 objectForKey:kMSASPersonInfoFullNameKey];
    fullName = [relationshipCopy fullName];
    if (fullName && ([v20 isEqualToString:fullName] & 1) == 0)
    {
      [v8 setObject:fullName forKey:kMSASPersonInfoFullNameKey];
      v9 = 1;
    }

    v13 = [v8 objectForKey:kMSASPersonInfoEmailKey];
    email = [relationshipCopy email];
    if (email && ([v13 isEqualToString:email] & 1) == 0)
    {
      [v8 setObject:email forKey:kMSASPersonInfoEmailKey];
    }

    else if (!v9)
    {
      v10 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v15 = selfCopy;
    objc_sync_enter(v15);
    [(NSMutableDictionary *)selfCopy->_personIDToPersonInfoDictionary setObject:v8 forKey:personID];
    if (([(NSMutableDictionary *)selfCopy->_personIDToPersonInfoDictionary writeToFile:v15->_pathForPersonInfoDictionary atomically:1]& 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      personIDToPersonInfoDictionary = selfCopy->_personIDToPersonInfoDictionary;
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

- (MSASPersonInfoManager)initWithPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_pathForPersonInfoDictionary, path);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:pathCopy];

  if (v7)
  {
    [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:self->_pathForPersonInfoDictionary];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v8 = ;
  personIDToPersonInfoDictionary = selfCopy->_personIDToPersonInfoDictionary;
  selfCopy->_personIDToPersonInfoDictionary = v8;

  objc_sync_exit(selfCopy);

  return result;
}

@end