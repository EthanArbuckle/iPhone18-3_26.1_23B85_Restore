@interface MBFileProviderPlugin
- (id)_policyElementsForEngine:(id)engine;
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBFileProviderPlugin

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engineCopy = engine;
  persona = [engineCopy persona];
  userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
  v8 = [NSURL fileURLWithPath:userIncompleteRestoreDirectory isDirectory:1];

  v9 = [v8 URLByAppendingPathComponent:@"var/mobile" isDirectory:1];
  v10 = [(MBFileProviderPlugin *)self _policyElementsForEngine:engineCopy];
  v11 = [v10 componentsJoinedByString:@"-"];

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    properties = [engineCopy properties];
    buildVersion = [properties buildVersion];
    *buf = 138412802;
    v26 = v9;
    v27 = 2112;
    v28 = buildVersion;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "userURL:%@, buildVersion:%@, restorePolicy:%@", buf, 0x20u);

    properties2 = [engineCopy properties];
    buildVersion2 = [properties2 buildVersion];
    _MBLog();
  }

  v16 = dispatch_semaphore_create(0);
  v17 = +[FPDaemonConnection sharedConnection];
  properties3 = [engineCopy properties];
  buildVersion3 = [properties3 buildVersion];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100213660;
  v23[3] = &unk_1003C05E8;
  v24 = v16;
  v20 = v16;
  [v17 restoreUserURL:v9 fromBuild:buildVersion3 restoreType:v11 completionHandler:v23];

  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  return 0;
}

- (id)_policyElementsForEngine:(id)engine
{
  enginePolicy = [engine enginePolicy];
  v4 = +[NSMutableArray array];
  v5 = v4;
  if (enginePolicy)
  {
    [v4 addObject:@"cloudKitEngine"];
    if ((enginePolicy & 2) == 0)
    {
LABEL_3:
      if ((enginePolicy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((enginePolicy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"driveEngine"];
  if ((enginePolicy & 4) == 0)
  {
LABEL_4:
    if ((enginePolicy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v5 addObject:@"deviceTransferEngine"];
  if ((enginePolicy & 8) == 0)
  {
LABEL_5:
    if ((enginePolicy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v5 addObject:@"serviceEngine"];
  if ((enginePolicy & 0x10) == 0)
  {
LABEL_6:
    if ((enginePolicy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v5 addObject:@"encryptedBackup"];
  if ((enginePolicy & 0x20) == 0)
  {
LABEL_7:
    if ((enginePolicy & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [v5 addObject:@"megaBackup"];
  if ((enginePolicy & 0x40) != 0)
  {
LABEL_8:
    [v5 addObject:@"shouldCommit"];
  }

LABEL_9:
  v6 = [v5 copy];

  return v6;
}

@end