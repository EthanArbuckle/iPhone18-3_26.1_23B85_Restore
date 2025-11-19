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
  v2 = [MEMORY[0x1E698F538] sharedProvider];
  v3 = [v2 isUserSignedInToiCloud];

  return v3;
}

+ (BOOL)isCloudKitSyncOptedIn
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BCSyncCloudKit"];

  return v3;
}

+ (id)makeOSStateHandler
{
  v2 = [objc_alloc(MEMORY[0x1E698F558]) initWithTitle:@"BDSSyncUserDefaults" block:&unk_1F5E61E48];

  return v2;
}

+ (BOOL)isGlobalICloudDriveSyncOptedIn
{
  v2 = [MEMORY[0x1E698F538] sharedProvider];
  v3 = [v2 isGlobalICloudDriveSyncOptedIn];

  return v3;
}

+ (id)iCloudIdentity
{
  v2 = [MEMORY[0x1E698F538] sharedProvider];
  v3 = [v2 iCloudIdentity];

  return v3;
}

+ (BOOL)_isICloudDriveSyncOptedIn
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698F538] sharedProvider];
  v3 = [v2 isPrimaryAccountManagedAppleID];

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"BCSyncICloudDrive"];

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"BCSyncCloudKit"];

  v8 = BDSUbiquityLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v3)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (v5)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    if (v7)
    {
      v9 = @"YES";
    }

    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "BDSSyncUserDefaults: isICloudDriveSyncOptedIn isPrimaryAccountManagedAppleID = %@ isBCSyncICloudDriveUserDefaults = %@ isBCSyncCloudKitUserDefaults = %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return (v3 | v5 & v7) & 1;
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
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E470496C(a3, v8);
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
    v8 = BDSCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E47049E4(a3, v8);
    }

    return 1;
  }
}

+ (void)_setService:(__CFString *)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = [a1 _booksAppBundleIdentifier];
  v7 = TCCAccessSetForBundleId();
  v8 = BDSCloudKitLog();
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

      v12 = 138543618;
      v13 = a3;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_INFO, "Successfully set %{public}@ to %{public}@.", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1E4704A5C(a3, v4, v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)_stateForLog
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13[0] = @"isSignedIntoICloud";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isSignedIntoICloud")}];
  v14[0] = v3;
  v13[1] = @"isCloudKitSyncOptedIn";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isCloudKitSyncOptedIn")}];
  v14[1] = v4;
  v13[2] = @"isICloudDriveSyncOptedIn";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isICloudDriveSyncOptedIn")}];
  v14[2] = v5;
  v13[3] = @"isGlobalICloudDriveSyncOptedIn";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "isGlobalICloudDriveSyncOptedIn")}];
  v14[3] = v6;
  v13[4] = @"iCloudIdentityExists";
  v7 = MEMORY[0x1E696AD98];
  v8 = [a1 iCloudIdentity];
  v9 = [v7 numberWithInt:v8 != 0];
  v14[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end