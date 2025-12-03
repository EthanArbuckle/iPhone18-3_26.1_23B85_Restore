@interface MBCKContainer
- (BOOL)fetchedSyncZone;
- (CKDatabase)ckDatabase;
- (CKDatabase)ckDatabaseWithZoneWidePCS;
- (MBCKContainer)initWithAccount:(id)account error:(id *)error;
@end

@implementation MBCKContainer

- (MBCKContainer)initWithAccount:(id)account error:(id *)error
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKContainer initWithAccount:error:]", "MBCKDatabaseManager.m", 42, "account");
  }

  v7 = accountCopy;
  persona = [accountCopy persona];
  personaIdentifier = [persona personaIdentifier];

  if (!personaIdentifier)
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
  [(MBCKContainer *)v11 setPersonaIdentifier:personaIdentifier];
  persona2 = [v7 persona];
  isDataSeparatedPersona = [persona2 isDataSeparatedPersona];

  if (isDataSeparatedPersona)
  {
    accountIdentifier = [v7 accountIdentifier];
    if (!accountIdentifier)
    {
      if (error)
      {
        *error = [MBError errorWithCode:1 format:@"nil container"];
      }

      v11 = 0;
      goto LABEL_27;
    }

    v15 = accountIdentifier;
    v16 = [[CKAccountOverrideInfo alloc] initWithAccountID:accountIdentifier];
  }

  else
  {
    v16 = 0;
  }

  if (MBIsInternalInstall())
  {
    v17 = +[MBBehaviorOptions sharedOptions];
    useSandboxCKContainer = [v17 useSandboxCKContainer];

    if (useSandboxCKContainer)
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
  cloudKitContainerName = [v20 cloudKitContainerName];

  v22 = [[CKContainerID alloc] initWithContainerIdentifier:cloudKitContainerName environment:v19];
  v23 = objc_opt_new();
  [v23 setMmcsEncryptionSupport:3];
  [v23 setAccountOverrideInfo:v16];
  v24 = [[CKContainer alloc] initWithContainerID:v22 options:v23];
  if (!v24)
  {
    __assert_rtn("[MBCKContainer initWithAccount:error:]", "MBCKDatabaseManager.m", 78, "container");
  }

  v25 = v24;
  errorCopy = error;
  v38 = cloudKitContainerName;
  [(MBCKContainer *)v11 setCkContainer:v24];
  v26 = objc_opt_new();

  v39 = v16;
  [v26 setAccountOverrideInfo:v16];
  [v26 setUseZoneWidePCS:1];
  [v26 setMmcsEncryptionSupport:3];
  persona3 = [v7 persona];
  personaIdentifier2 = [persona3 personaIdentifier];

  v40 = 0;
  v29 = [UMUserPersonaAttributes personaAttributesForPersonaUniqueString:personaIdentifier2 withError:&v40];
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
    if (errorCopy)
    {
      v33 = v30;
      *errorCopy = v31;
    }

    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = personaIdentifier2;
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
  ckContainer = [(MBCKContainer *)self ckContainer];
  privateCloudDatabase = [ckContainer privateCloudDatabase];

  return privateCloudDatabase;
}

- (CKDatabase)ckDatabaseWithZoneWidePCS
{
  ckContainerWithZoneWidePCS = [(MBCKContainer *)self ckContainerWithZoneWidePCS];
  privateCloudDatabase = [ckContainerWithZoneWidePCS privateCloudDatabase];

  return privateCloudDatabase;
}

- (BOOL)fetchedSyncZone
{
  account = [(MBCKContainer *)self account];
  v3 = [MBCKDatabaseManager fetchedSyncZoneWithAccount:account];

  return v3;
}

@end