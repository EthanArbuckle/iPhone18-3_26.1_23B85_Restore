@interface MBMegaBackupEligibilityManager
- (BOOL)_isHSA2AvailableForAuthenticationContext:(id)context;
- (BOOL)needsAccountSignIn;
- (id)_account;
- (id)_queue;
- (id)_usedCapacityForVolume:(id)volume;
- (int64_t)_entryMethodForEntryPoint:(int64_t)point;
- (void)checkMegaBackupEligibility:(int64_t)eligibility deepLinkURL:(id)l backupDeviceUUID:(id)d queue:(id)queue completion:(id)completion;
@end

@implementation MBMegaBackupEligibilityManager

- (id)_queue
{
  if (qword_100022CF8 != -1)
  {
    sub_10000EC08();
  }

  v3 = qword_100022CF0;

  return v3;
}

- (int64_t)_entryMethodForEntryPoint:(int64_t)point
{
  if ((point - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return 4 - point;
  }
}

- (id)_account
{
  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (BOOL)needsAccountSignIn
{
  _account = [(MBMegaBackupEligibilityManager *)self _account];
  v3 = _account == 0;

  return v3;
}

- (void)checkMegaBackupEligibility:(int64_t)eligibility deepLinkURL:(id)l backupDeviceUUID:(id)d queue:(id)queue completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  _queue = [(MBMegaBackupEligibilityManager *)self _queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000482C;
  v21[3] = &unk_10001C850;
  v21[4] = self;
  v22 = queueCopy;
  v25 = completionCopy;
  eligibilityCopy = eligibility;
  v23 = dCopy;
  v24 = lCopy;
  v17 = lCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v20 = queueCopy;
  dispatch_async(_queue, v21);
}

- (id)_usedCapacityForVolume:(id)volume
{
  volumeCopy = volume;
  v4 = MBUsedDiskSpaceForVolume();
  v5 = [NSURL fileURLWithPath:volumeCopy];
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
    unsignedLongLongValue = [v9 unsignedLongLongValue];
    if (unsignedLongLongValue <= [v10 unsignedLongLongValue])
    {
      unsignedLongLongValue2 = [v10 unsignedLongLongValue];
      v12 = unsignedLongLongValue2 - [v9 unsignedLongLongValue];
      if (v12 > v4)
      {
        v16 = MBGetDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [NSNumber numberWithUnsignedLongLong:v4];
          v17 = log = v16;
          v18 = [NSNumber numberWithUnsignedLongLong:v12];
          *buf = 138543874;
          v29 = volumeCopy;
          v30 = 2114;
          v31 = v17;
          v32 = 2114;
          v33 = v18;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Somehow reclaimable space is bigger than used space for %{public}@: %{public}@, %{public}@", buf, 0x20u);

          v16 = log;
          v19 = [NSNumber numberWithUnsignedLongLong:v4];
          [NSNumber numberWithUnsignedLongLong:v12];
          v25 = v24 = v19;
          v23 = volumeCopy;
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
      v29 = volumeCopy;
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

- (BOOL)_isHSA2AvailableForAuthenticationContext:(id)context
{
  contextCopy = context;
  v4 = +[AKAccountManager sharedInstance];
  aa_altDSID = [contextCopy aa_altDSID];
  v6 = [v4 authKitAccountWithAltDSID:aa_altDSID];

  if (contextCopy)
  {
    v7 = [v4 securityLevelForAccount:v6] == 4;
    aa_personID = [contextCopy aa_personID];
    v9 = [CDPAccount isICDPEnabledForDSID:aa_personID];

    v10 = v7 & v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end