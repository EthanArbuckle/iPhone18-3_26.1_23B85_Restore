@interface MBMegaBackupEligibilityManager
- (BOOL)_isHSA2AvailableForAuthenticationContext:(id)a3;
- (BOOL)needsAccountSignIn;
- (id)_account;
- (id)_queue;
- (id)_usedCapacityForVolume:(id)a3;
- (int64_t)_entryMethodForEntryPoint:(int64_t)a3;
- (void)checkMegaBackupEligibility:(int64_t)a3 deepLinkURL:(id)a4 backupDeviceUUID:(id)a5 queue:(id)a6 completion:(id)a7;
@end

@implementation MBMegaBackupEligibilityManager

- (id)_queue
{
  if (qword_100421A90 != -1)
  {
    dispatch_once(&qword_100421A90, &stru_1003C1C78);
  }

  v3 = qword_100421A88;

  return v3;
}

- (int64_t)_entryMethodForEntryPoint:(int64_t)a3
{
  if (a3 == 3)
  {
    return 1;
  }

  if (a3 == 2)
  {
    return 2;
  }

  if (a3)
  {
    return 3;
  }

  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"MBMegaBackupEligibilityManager.m" lineNumber:41 description:@"Should not be here."];

  return 0;
}

- (id)_account
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

- (BOOL)needsAccountSignIn
{
  v2 = [(MBMegaBackupEligibilityManager *)self _account];
  v3 = v2 == 0;

  return v3;
}

- (void)checkMegaBackupEligibility:(int64_t)a3 deepLinkURL:(id)a4 backupDeviceUUID:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(MBMegaBackupEligibilityManager *)self _queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10020E194;
  v21[3] = &unk_1003C1CF0;
  v21[4] = self;
  v22 = v14;
  v25 = v15;
  v26 = a3;
  v23 = v13;
  v24 = v12;
  v17 = v12;
  v18 = v13;
  v19 = v15;
  v20 = v14;
  dispatch_async(v16, v21);
}

- (id)_usedCapacityForVolume:(id)a3
{
  v3 = a3;
  v4 = MBUsedDiskSpaceForVolume();
  v5 = [NSURL fileURLWithPath:v3];
  v34[0] = NSURLVolumeAvailableCapacityKey;
  v34[1] = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v6 = [NSArray arrayWithObjects:v34 count:2];
  v27 = 0;
  v7 = [v5 resourceValuesForKeys:v6 error:&v27];
  v8 = v27;

  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:NSURLVolumeAvailableCapacityKey];
    v10 = [v7 objectForKeyedSubscript:NSURLVolumeAvailableCapacityForImportantUsageKey];
    v11 = [v9 unsignedLongLongValue];
    if (v11 <= [v10 unsignedLongLongValue])
    {
      v15 = [v10 unsignedLongLongValue];
      v12 = v15 - [v9 unsignedLongLongValue];
      if (v12 > v4)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [NSNumber numberWithUnsignedLongLong:v4];
          v17 = log = v16;
          v18 = [NSNumber numberWithUnsignedLongLong:v12];
          *buf = 138543874;
          v29 = v3;
          v30 = 2114;
          v31 = v17;
          v32 = 2114;
          v33 = v18;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Somehow reclaimable space is bigger than used space for %{public}@: %{public}@, %{public}@", buf, 0x20u);

          v16 = log;
          v19 = [NSNumber numberWithUnsignedLongLong:v4];
          [NSNumber numberWithUnsignedLongLong:v12];
          v25 = v24 = v19;
          v23 = v3;
          _MBLog();
        }

        v20 = v4;
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    v20 = v4 - v12;
LABEL_12:
    v14 = [NSNumber numberWithUnsignedLongLong:v20, v23, v24, v25];
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v3;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Used Capacity on %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_15;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v29 = v5;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get resource values for %@: %@", buf, 0x16u);
    _MBLog();
  }

  v14 = [NSNumber numberWithUnsignedLongLong:v4];
LABEL_15:

  return v14;
}

- (BOOL)_isHSA2AvailableForAuthenticationContext:(id)a3
{
  v3 = a3;
  v4 = +[AKAccountManager sharedInstance];
  v5 = [v3 aa_altDSID];
  v6 = [v4 authKitAccountWithAltDSID:v5];

  if (v3)
  {
    v7 = [v4 securityLevelForAccount:v6] == 4;
    v8 = [v3 aa_personID];
    v9 = [CDPAccount isICDPEnabledForDSID:v8];

    v10 = v7 & v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end