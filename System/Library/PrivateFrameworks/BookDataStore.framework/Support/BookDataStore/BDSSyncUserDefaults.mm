@interface BDSSyncUserDefaults
+ (BOOL)_isBundleIdentifierInArray:(__CFArray *)a3;
+ (BOOL)_isICloudDriveSyncOptedIn;
+ (BOOL)_isServiceDisabledAlternative:(__CFString *)a3;
+ (BOOL)_isServiceEnabledAlternative:(__CFString *)a3;
+ (BOOL)isCloudKitSyncOptedIn;
+ (BOOL)isGlobalICloudDriveSyncOptedIn;
+ (BOOL)isSignedIntoICloud;
+ (id)_stateForLog;
+ (id)iCloudIdentity;
+ (id)makeOSStateHandler;
+ (void)_setService:(__CFString *)a3 enabled:(BOOL)a4;
@end

@implementation BDSSyncUserDefaults

+ (BOOL)isSignedIntoICloud
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isUserSignedInToiCloud];

  return v3;
}

+ (BOOL)isCloudKitSyncOptedIn
{
  if (![BDSSyncUserDefaults _isServiceEnabledAlternative:kTCCServiceLiverpool])
  {
    if ([BDSSyncUserDefaults _isServiceDisabledAlternative:kTCCServiceLiverpool])
    {
      if ([BDSSyncUserDefaults _isServiceEnabledAlternative:kTCCServiceUbiquity])
      {
        v3 = sub_100002660();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10[0]) = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "isCloudKitSyncOptedIn - liverpool OFF, ubiquity ON --> forcing liverpool ON", v10, 2u);
        }

        v4 = kTCCServiceLiverpool;
        LOBYTE(v3) = 1;
        v5 = 1;
LABEL_17:
        [BDSSyncUserDefaults _setService:v4 enabled:v5];
        return v3;
      }
    }

    else
    {
      v3 = [a1 _isServiceEnabledAlternative:kTCCServiceUbiquity];
      v6 = [a1 _isServiceDisabledAlternative:kTCCServiceUbiquity];
      v7 = sub_100002660();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if ((v3 & 1) != 0 || v6)
      {
        if (v8)
        {
          v10[0] = 67109120;
          v10[1] = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "isCloudKitSyncOptedIn - Setting unknown liverpool value to %{BOOL}d", v10, 8u);
        }

        v4 = kTCCServiceLiverpool;
        v5 = v3;
        goto LABEL_17;
      }

      if (v8)
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "isCloudKitSyncOptedIn - Skip setting unknown liverpool value because ubiquity is also unknown!", v10, 2u);
      }
    }

    LOBYTE(v3) = 0;
    return v3;
  }

  LOBYTE(v3) = 1;
  return v3;
}

+ (BOOL)isGlobalICloudDriveSyncOptedIn
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isGlobalICloudDriveSyncOptedIn];

  return v3;
}

+ (id)iCloudIdentity
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 iCloudIdentity];

  return v3;
}

+ (id)makeOSStateHandler
{
  v2 = [[BUOSStateHandler alloc] initWithTitle:@"BDSSyncUserDefaults" block:&stru_10023FCA8];

  return v2;
}

+ (BOOL)_isICloudDriveSyncOptedIn
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 isPrimaryAccountManagedAppleID];

  return (v3 | [BDSSyncUserDefaults _isServiceEnabledAlternative:kTCCServiceUbiquity]) & 1;
}

+ (BOOL)_isBundleIdentifierInArray:(__CFArray *)a3
{
  v4 = [a1 _booksAppBundleIdentifier];
  Count = CFArrayGetCount(a3);
  if (Count)
  {
    v6 = Count;
    v7 = 0;
    v8 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v7);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 == CFStringGetTypeID() && CFStringCompare(ValueAtIndex, v4, 0) == kCFCompareEqualTo)
      {
        break;
      }

      v8 = ++v7 < v6;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_isServiceEnabledAlternative:(__CFString *)a3
{
  v4 = TCCAccessCopyBundleIdentifiersForService();
  if (v4)
  {
    v5 = v4;
    v6 = [BDSSyncUserDefaults _isBundleIdentifierInArray:v4];
    CFRelease(v5);
    return v6;
  }

  else
  {
    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001BDEE8(a3, v8);
    }

    return 0;
  }
}

+ (BOOL)_isServiceDisabledAlternative:(__CFString *)a3
{
  v4 = TCCAccessCopyBundleIdentifiersDisabledForService();
  if (v4)
  {
    v5 = v4;
    v6 = [BDSSyncUserDefaults _isBundleIdentifierInArray:v4];
    CFRelease(v5);
    return v6;
  }

  else
  {
    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001BDF60(a3, v8);
    }

    return 1;
  }
}

+ (void)_setService:(__CFString *)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = [a1 _booksAppBundleIdentifier];
  v7 = TCCAccessSetForBundleId();
  v8 = sub_100002660();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v4)
      {
        v10 = @"YES";
      }

      v11 = 138543618;
      v12 = a3;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Successfully set %{public}@ to %{public}@.", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001BDFD8(a3, v4, v9);
  }
}

+ (id)_stateForLog
{
  v11[0] = @"isSignedIntoICloud";
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a1 isSignedIntoICloud]);
  v12[0] = v3;
  v11[1] = @"isCloudKitSyncOptedIn";
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a1 isCloudKitSyncOptedIn]);
  v12[1] = v4;
  v11[2] = @"isICloudDriveSyncOptedIn";
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a1 isICloudDriveSyncOptedIn]);
  v12[2] = v5;
  v11[3] = @"isGlobalICloudDriveSyncOptedIn";
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a1 isGlobalICloudDriveSyncOptedIn]);
  v12[3] = v6;
  v11[4] = @"iCloudIdentityExists";
  v7 = [a1 iCloudIdentity];
  v8 = [NSNumber numberWithInt:v7 != 0];
  v12[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

@end