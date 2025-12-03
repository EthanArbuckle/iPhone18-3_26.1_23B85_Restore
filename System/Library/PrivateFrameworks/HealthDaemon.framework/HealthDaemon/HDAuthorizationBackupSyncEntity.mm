@interface HDAuthorizationBackupSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)_backupInfoWithSyncStore:(uint64_t)store;
+ (id)authorizationBackupPullIdentifierWithSyncStore:(id)store;
+ (id)authorizationBackupPushIdentifierWithSyncStore:(id)store;
+ (id)createCodableSourceAuthorizationWithSource:(id)source syncSession:(id)session;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
+ (void)_setBackupInfo:(uint64_t)info;
+ (void)didGenerateCodableSourceAuthorizationsForSyncSession:(id)session;
+ (void)setAuthorizationBackupPushIdentifier:(id)identifier syncStore:(id)store;
@end

@implementation HDAuthorizationBackupSyncEntity

+ (id)createCodableSourceAuthorizationWithSource:(id)source syncSession:(id)session
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HDAuthorizationBackupSyncEntity;
  sessionCopy = session;
  sourceCopy = source;
  v7 = objc_msgSendSuper2(&v11, sel_createCodableSourceAuthorizationWithSource_syncSession_, sourceCopy, sessionCopy);
  sessionUUID = [sessionCopy sessionUUID];

  hk_dataForUUIDBytes = [sessionUUID hk_dataForUUIDBytes];
  [v7 setBackupUUID:hk_dataForUUIDBytes];

  [v7 setSource:sourceCopy];

  return v7;
}

+ (void)setAuthorizationBackupPushIdentifier:(id)identifier syncStore:(id)store
{
  identifierCopy = identifier;
  v7 = [(HDAuthorizationBackupSyncEntity *)self _backupInfoWithSyncStore:store];
  v9 = [v7 mutableCopy];

  uUIDString = [identifierCopy UUIDString];

  [v9 setObject:uUIDString forKeyedSubscript:@"PushIdentifier"];
  [(HDAuthorizationBackupSyncEntity *)self _setBackupInfo:v9];
}

+ (id)_backupInfoWithSyncStore:(uint64_t)store
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  databaseIdentifier = [v2 databaseIdentifier];

  uUIDString = [databaseIdentifier UUIDString];

  if (uUIDString)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    backupInfoUserDefaultsKey = [v3 backupInfoUserDefaultsKey];
    v8 = [standardUserDefaults objectForKey:backupInfoUserDefaultsKey];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v8 objectForKeyedSubscript:@"DatabaseIdentifier"];
      v10 = [v8 objectForKeyedSubscript:@"PushIdentifier"];
      if (v9)
      {
        if ([v9 isEqualToString:uUIDString])
        {
          v11 = v8;
LABEL_10:
          v16 = v11;

          goto LABEL_12;
        }

        if ([v10 length])
        {
          v21[0] = @"DatabaseIdentifier";
          v21[1] = @"PullIdentifier";
          v22[0] = uUIDString;
          v22[1] = v10;
          v12 = MEMORY[0x277CBEAC0];
          v13 = v22;
          v14 = v21;
          v15 = 2;
          goto LABEL_9;
        }
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v19 = @"DatabaseIdentifier";
    v20 = uUIDString;
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v20;
    v14 = &v19;
    v15 = 1;
LABEL_9:
    v11 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    goto LABEL_10;
  }

  v16 = MEMORY[0x277CBEC10];
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)_setBackupInfo:(uint64_t)info
{
  v5 = a2;
  v2 = objc_opt_self();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  backupInfoUserDefaultsKey = [v2 backupInfoUserDefaultsKey];
  if (v5)
  {
    [standardUserDefaults setObject:v5 forKey:backupInfoUserDefaultsKey];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:backupInfoUserDefaultsKey];
  }
}

+ (id)authorizationBackupPullIdentifierWithSyncStore:(id)store
{
  v3 = [(HDAuthorizationBackupSyncEntity *)self _backupInfoWithSyncStore:store];
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [v3 objectForKeyedSubscript:@"PullIdentifier"];
  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

+ (id)authorizationBackupPushIdentifierWithSyncStore:(id)store
{
  v3 = [(HDAuthorizationBackupSyncEntity *)self _backupInfoWithSyncStore:store];
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [v3 objectForKeyedSubscript:@"PushIdentifier"];
  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___HDAuthorizationBackupSyncEntity;
  return objc_msgSendSuper2(&v8, sel_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error_, session, range.start, range.end, profile, handler, error);
}

+ (void)didGenerateCodableSourceAuthorizationsForSyncSession:(id)session
{
  sessionCopy = session;
  sessionUUID = [sessionCopy sessionUUID];
  syncStore = [sessionCopy syncStore];

  [self setAuthorizationBackupPushIdentifier:sessionUUID syncStore:syncStore];
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v14 = [self authorizationBackupPullIdentifierWithSyncStore:storeCopy];
  if (v14)
  {
    errorCopy = error;
    v35 = profileCopy;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = objectsCopy;
    v16 = objectsCopy;
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          decodedBackupUUID = [v21 decodedBackupUUID];
          if ([decodedBackupUUID isEqual:v14])
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v18);
    }

    if ([v15 count])
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC328];
      profileCopy = v35;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [v15 count];
        v26 = objc_opt_class();
        *buf = 134218242;
        v42 = v25;
        v43 = 2114;
        v44 = v26;
        v27 = v26;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "Applying %lu objects for %{public}@", buf, 0x16u);
      }

      v28 = [HDAuthorizationEntity _insertCodableSourceAuthorizations:v15 overwriteExisting:0 syncStore:storeCopy profile:v35 error:errorCopy]^ 1;
      objectsCopy = v36;
    }

    else
    {
      v28 = 0;
      profileCopy = v35;
      objectsCopy = v36;
    }
  }

  else
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      *buf = 138543362;
      v42 = objc_opt_class();
      v31 = v42;
      _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@ objects (missing pull identifier)", buf, 0xCu);
    }

    v28 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v28;
}

@end