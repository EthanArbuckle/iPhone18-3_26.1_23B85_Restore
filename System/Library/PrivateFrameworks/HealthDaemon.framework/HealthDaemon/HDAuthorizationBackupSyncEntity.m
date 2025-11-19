@interface HDAuthorizationBackupSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_backupInfoWithSyncStore:(uint64_t)a1;
+ (id)authorizationBackupPullIdentifierWithSyncStore:(id)a3;
+ (id)authorizationBackupPushIdentifierWithSyncStore:(id)a3;
+ (id)createCodableSourceAuthorizationWithSource:(id)a3 syncSession:(id)a4;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (void)_setBackupInfo:(uint64_t)a1;
+ (void)didGenerateCodableSourceAuthorizationsForSyncSession:(id)a3;
+ (void)setAuthorizationBackupPushIdentifier:(id)a3 syncStore:(id)a4;
@end

@implementation HDAuthorizationBackupSyncEntity

+ (id)createCodableSourceAuthorizationWithSource:(id)a3 syncSession:(id)a4
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDAuthorizationBackupSyncEntity;
  v5 = a4;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v11, sel_createCodableSourceAuthorizationWithSource_syncSession_, v6, v5);
  v8 = [v5 sessionUUID];

  v9 = [v8 hk_dataForUUIDBytes];
  [v7 setBackupUUID:v9];

  [v7 setSource:v6];

  return v7;
}

+ (void)setAuthorizationBackupPushIdentifier:(id)a3 syncStore:(id)a4
{
  v6 = a3;
  v7 = [(HDAuthorizationBackupSyncEntity *)a1 _backupInfoWithSyncStore:a4];
  v9 = [v7 mutableCopy];

  v8 = [v6 UUIDString];

  [v9 setObject:v8 forKeyedSubscript:@"PushIdentifier"];
  [(HDAuthorizationBackupSyncEntity *)a1 _setBackupInfo:v9];
}

+ (id)_backupInfoWithSyncStore:(uint64_t)a1
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 databaseIdentifier];

  v5 = [v4 UUIDString];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v3 backupInfoUserDefaultsKey];
    v8 = [v6 objectForKey:v7];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v8 objectForKeyedSubscript:@"DatabaseIdentifier"];
      v10 = [v8 objectForKeyedSubscript:@"PushIdentifier"];
      if (v9)
      {
        if ([v9 isEqualToString:v5])
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
          v22[0] = v5;
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
    v20 = v5;
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

+ (void)_setBackupInfo:(uint64_t)a1
{
  v5 = a2;
  v2 = objc_opt_self();
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v2 backupInfoUserDefaultsKey];
  if (v5)
  {
    [v3 setObject:v5 forKey:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

+ (id)authorizationBackupPullIdentifierWithSyncStore:(id)a3
{
  v3 = [(HDAuthorizationBackupSyncEntity *)a1 _backupInfoWithSyncStore:a3];
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [v3 objectForKeyedSubscript:@"PullIdentifier"];
  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

+ (id)authorizationBackupPushIdentifierWithSyncStore:(id)a3
{
  v3 = [(HDAuthorizationBackupSyncEntity *)a1 _backupInfoWithSyncStore:a3];
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [v3 objectForKeyedSubscript:@"PushIdentifier"];
  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HDAuthorizationBackupSyncEntity;
  return objc_msgSendSuper2(&v8, sel_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error_, a3, a4.start, a4.end, a5, a6, a7);
}

+ (void)didGenerateCodableSourceAuthorizationsForSyncSession:(id)a3
{
  v4 = a3;
  v6 = [v4 sessionUUID];
  v5 = [v4 syncStore];

  [a1 setAuthorizationBackupPushIdentifier:v6 syncStore:v5];
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [a1 authorizationBackupPullIdentifierWithSyncStore:v12];
  if (v14)
  {
    v34 = a7;
    v35 = v13;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v11;
    v16 = v11;
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
          v22 = [v21 decodedBackupUUID];
          if ([v22 isEqual:v14])
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
      v13 = v35;
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

      v28 = [HDAuthorizationEntity _insertCodableSourceAuthorizations:v15 overwriteExisting:0 syncStore:v12 profile:v35 error:v34]^ 1;
      v11 = v36;
    }

    else
    {
      v28 = 0;
      v13 = v35;
      v11 = v36;
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