@interface MBCKContainer
- (BOOL)fetchedSyncZone;
- (CKDatabase)ckDatabase;
- (CKDatabase)ckDatabaseWithZoneWidePCS;
- (MBCKContainer)initWithAccount:(id)a3 error:(id *)a4;
@end

@implementation MBCKContainer

- (MBCKContainer)initWithAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[MBCKContainer initWithAccount:error:]", "MBCKDatabaseManager.m", 42, "account");
  }

  v7 = v6;
  v8 = [v6 persona];
  v9 = [v8 personaIdentifier];

  if (!v9)
  {
    __assert_rtn("[MBCKContainer initWithAccount:error:]", "MBCKDatabaseManager.m", 44, "personaIdentifier");
  }

  v41.receiver = self;
  v41.super_class = MBCKContainer;
  v10 = [(MBCKContainer *)&v41 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_23;
  }

  [(MBCKContainer *)v10 setAccount:v7];
  [(MBCKContainer *)v11 setPersonaIdentifier:v9];
  v12 = [v7 persona];
  v13 = [v12 isDataSeparatedPersona];

  if (v13)
  {
    v14 = [v7 accountIdentifier];
    if (!v14)
    {
      if (a4)
      {
        *a4 = [MBError errorWithCode:1 format:@"nil container"];
      }

      v11 = 0;
      goto LABEL_27;
    }

    v15 = v14;
    v16 = [[CKAccountOverrideInfo alloc] initWithAccountID:v14];
  }

  else
  {
    v16 = 0;
  }

  if (MBIsInternalInstall())
  {
    v17 = +[MBBehaviorOptions sharedOptions];
    v18 = [v17 useSandboxCKContainer];

    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  v20 = +[MBBehaviorOptions sharedOptions];
  v21 = [v20 cloudKitContainerName];

  v22 = [[CKContainerID alloc] initWithContainerIdentifier:v21 environment:v19];
  v23 = objc_opt_new();
  [v23 setMmcsEncryptionSupport:3];
  [v23 setAccountOverrideInfo:v16];
  v24 = [[CKContainer alloc] initWithContainerID:v22 options:v23];
  if (!v24)
  {
    __assert_rtn("[MBCKContainer initWithAccount:error:]", "MBCKDatabaseManager.m", 78, "container");
  }

  v25 = v24;
  v37 = a4;
  v38 = v21;
  [(MBCKContainer *)v11 setCkContainer:v24];
  v26 = objc_opt_new();

  v39 = v16;
  [v26 setAccountOverrideInfo:v16];
  [v26 setUseZoneWidePCS:1];
  [v26 setMmcsEncryptionSupport:3];
  v27 = [v7 persona];
  v28 = [v27 personaIdentifier];

  v40 = 0;
  v29 = [UMUserPersonaAttributes personaAttributesForPersonaUniqueString:v28 withError:&v40];
  v30 = v40;
  v31 = v30;
  if (v29)
  {
    [v26 setUserPersonaAttributes:v29];
    v32 = [[CKContainer alloc] initWithContainerID:v22 options:v26];

    if (!v32)
    {
      __assert_rtn("[MBCKContainer initWithAccount:error:]", "MBCKDatabaseManager.m", 99, "container");
    }

    [(MBCKContainer *)v11 setCkContainerWithZoneWidePCS:v32];
    v25 = v32;
  }

  else
  {
    if (v37)
    {
      v33 = v30;
      *v37 = v31;
    }

    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = v28;
      v44 = 2112;
      v45 = v31;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to fetch persona attributes for %@: %@", buf, 0x16u);
      _MBLog();
    }
  }

  if (!v29)
  {
LABEL_27:
    v35 = 0;
    goto LABEL_28;
  }

LABEL_23:
  v11 = v11;
  v35 = v11;
LABEL_28:

  return v35;
}

- (CKDatabase)ckDatabase
{
  v2 = [(MBCKContainer *)self ckContainer];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (CKDatabase)ckDatabaseWithZoneWidePCS
{
  v2 = [(MBCKContainer *)self ckContainerWithZoneWidePCS];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (BOOL)fetchedSyncZone
{
  v2 = [(MBCKContainer *)self account];
  v3 = [MBCKDatabaseManager fetchedSyncZoneWithAccount:v2];

  return v3;
}

@end