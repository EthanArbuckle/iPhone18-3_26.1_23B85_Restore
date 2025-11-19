@interface MSUAnalytics
- (BOOL)addCacheDeleteInfoToDictionary:(id)a3;
- (BOOL)addMobileAssetStatsToDictionary:(id)a3;
- (BOOL)addSoftwareUpdateInfoToDictionary:(id)a3;
- (MSUAnalytics)initWithPhase:(int)a3;
- (id)copyAnalyticsData;
- (id)copyAnalyticsDataForPreflight;
- (id)copyAppleConnectPersonID;
- (id)copyGenericAnalyticsData;
- (id)copySerialNumber;
- (id)getStringForPhase;
@end

@implementation MSUAnalytics

- (MSUAnalytics)initWithPhase:(int)a3
{
  v9.receiver = self;
  v9.super_class = MSUAnalytics;
  v4 = [(MSUAnalytics *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_create("MSUAnalyticsMainQueue", 0);
    [(MSUAnalytics *)v4 setMainQueue:v5];

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MSUAnalyticsSSOQueue", v6);
    [(MSUAnalytics *)v4 setSSOQueue:v7];

    v4->_updatePhase = a3;
  }

  return v4;
}

- (id)getStringForPhase
{
  v3 = [(MSUAnalytics *)self mainQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MSUAnalytics *)self updatePhase];
  if (v4 > 5)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1000491C0 + v4);
  }
}

- (BOOL)addSoftwareUpdateInfoToDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MSUAnalytics *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    [v4 setObject:@"UNKNOWN" forKeyedSubscript:@"updateDownloaded"];
    v11 = CFPreferencesCopyValue(@"SUAutomaticUpdateV2Enabled", @"com.apple.softwareupdateservicesd", @"mobile", kCFPreferencesAnyHost);
    if (v11)
    {
      v17 = v11;
      v18 = CFGetTypeID(v11);
      if (v18 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v17);
        v30 = "Disabled";
        if (Value == 1)
        {
          v30 = "Enabled";
        }

        logfunction(", 1, @"AutoUpdate is %s\n"", v25, v26, v27, v28, v29, v30);
        if (CFBooleanGetValue(v17) == 1)
        {
          v31 = @"ON";
        }

        else
        {
          v31 = @"OFF";
        }
      }

      else
      {
        logfunction(", 1, @"Unable to determine AutoUpdate status\n"", v19, v20, v21, v22, v23, v54);
        v31 = @"UNKNOWN";
      }

      [v4 setObject:v31 forKeyedSubscript:@"AutoUpdate"];
      CFRelease(v17);
    }

    else
    {
      logfunction(", 1, @"Unable to determine AutoUpdate status\n"", v12, v13, v14, v15, v16, v54);
      [v4 setObject:@"UNKNOWN" forKeyedSubscript:@"AutoUpdate"];
    }

    v32 = CFPreferencesCopyValue(@"SUDisableAutoDownload", @"com.apple.softwareupdateservicesd", @"mobile", kCFPreferencesAnyHost);
    if (v32)
    {
      v38 = v32;
      v39 = CFGetTypeID(v32);
      if (v39 == CFBooleanGetTypeID())
      {
        v45 = CFBooleanGetValue(v38);
        v51 = "Enabled";
        if (v45 == 1)
        {
          v51 = "Disabled";
        }

        logfunction(", 1, @"AutoDownload is %s\n"", v46, v47, v48, v49, v50, v51);
        if (CFBooleanGetValue(v38) == 1)
        {
          v52 = @"OFF";
        }

        else
        {
          v52 = @"ON";
        }
      }

      else
      {
        logfunction(", 1, @"Unable to determine AutoDownload status\n"", v40, v41, v42, v43, v44, v55);
        v52 = @"UNKNOWN";
      }

      [v4 setObject:v52 forKeyedSubscript:@"AutoDownload"];
      CFRelease(v38);
    }

    else
    {
      logfunction(", 1, @"Default not found. AutoDownload is enabled\n"", v33, v34, v35, v36, v37, v55);
      [v4 setObject:@"ON" forKeyedSubscript:@"AutoDownload"];
    }
  }

  else
  {
    logfunction(", 1, @"Invalid dict passed to %s\n", v6, v7, v8, v9, v10, "[MSUAnalytics addSoftwareUpdateInfoToDictionary:]"");
  }

  return v4 != 0;
}

- (BOOL)addCacheDeleteInfoToDictionary:(id)a3
{
  v4 = a3;
  v5 = [(MSUAnalytics *)self mainQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    logfunction(", 1, @"Attempting to determine purgable space on system\n"", v6, v7, v8, v9, v10, v19);
    v21 = 0;
    v11 = purgeable_data_space(4, &v21);
    if (v21)
    {
      logfunction(", 1, @"Failed to get available purgable space.\n"", v12, v13, v14, v15, v16, v20);
      [v4 setObject:@"UNKNOWN" forKeyedSubscript:@"purgeableSpaceMB"];
    }

    else
    {
      v17 = [NSNumber numberWithLongLong:v11 / 0x100000];
      [v4 setObject:v17 forKeyedSubscript:@"purgeableSpaceMB"];
    }
  }

  else
  {
    logfunction(", 1, @"Invalid dictionary passed to %s\n", v6, v7, v8, v9, v10, "[MSUAnalytics addCacheDeleteInfoToDictionary:]"");
  }

  return v4 != 0;
}

- (BOOL)addMobileAssetStatsToDictionary:(id)a3
{
  v3 = a3;
  v30 = +[NSFileManager defaultManager];
  v46[0] = NSURLFileResourceTypeKey;
  v46[1] = NSURLFileAllocatedSizeKey;
  v29 = [NSArray arrayWithObjects:v46 count:2];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = [&off_100053DA8 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v31)
  {
    v4 = 0;
    v27 = v3;
    v28 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(&off_100053DA8);
        }

        v33 = v5;
        v32 = [NSURL URLWithString:*(*(&v40 + 1) + 8 * v5)];
        v6 = [v30 enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v37;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v37 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v36 + 1) + 8 * i);
              v35 = 0;
              v12 = [v11 getResourceValue:&v35 forKey:NSURLFileResourceTypeKey error:0];
              v13 = v35;
              v14 = v13;
              if (v12 && [v13 isEqualToString:NSURLFileResourceTypeRegular])
              {
                v34 = 0;
                v15 = [v11 getResourceValue:&v34 forKey:NSURLFileAllocatedSizeKey error:0];
                v16 = v34;
                v17 = v16;
                if (v15)
                {
                  v4 += [v16 unsignedIntegerValue];
                }
              }

              else
              {
                v17 = 0;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v8);
        }

        v5 = v33 + 1;
      }

      while ((v33 + 1) != v31);
      v31 = [&off_100053DA8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v31);
    v18 = v4 >> 20;
    v3 = v27;
  }

  else
  {
    v18 = 0;
  }

  v19 = [NSNumber numberWithUnsignedInteger:v18];
  logfunction(", 1, @"Total Size taken by MobileAssets is %@MB\n"", v20, v21, v22, v23, v24, v19);

  v25 = [NSNumber numberWithUnsignedInteger:v18];
  [v3 setObject:v25 forKeyedSubscript:@"mobileAssetsSpaceMB"];

  return 0;
}

- (id)copySerialNumber
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    v8 = @"NO";
LABEL_6:
    objc_opt_class();
    objc_opt_isKindOfClass();
    logfunction(", 1, @"Unable to determine serial number: ValidObject: %@ isString: %@\n"", v9, v10, v11, v12, v13, v8);

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = @"YES";
    goto LABEL_6;
  }

  logfunction(", 1, @"Successfully read serial number : %@\n"", v3, v4, v5, v6, v7, v2);
  return v2;
}

- (id)copyAppleConnectPersonID
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v3 = dlopen("/usr/lib/libSoftwareUpdateSSO.dylib", 2);
  v4 = v3;
  if (v3)
  {
    v5 = dlsym(v3, "copyPersonID");
    v6 = dlsym(v4, "MSUSSOIsAvailable");
    if (v5 && v6)
    {
      if (v6(@"177666"))
      {
        v12 = [(MSUAnalytics *)self SSOQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __40__MSUAnalytics_copyAppleConnectPersonID__block_invoke;
        block[3] = &unk_100049178;
        block[4] = &v18;
        block[5] = v5;
        dispatch_sync(v12, block);
      }

      else
      {
        logfunction(", 1, @"AppleConnect framework unavailable. Unable to read personID\n"", v7, v8, v9, v10, v11, v16);
      }
    }

    else
    {
      NSLog(@"Unable to load symbols to copyPersonID from libSoftwareUpdateSSO");
    }
  }

  else
  {
    v13 = dlerror();
    NSLog(@"Failed to open SoftwareUpdateSSO dylib with error: %s", v13);
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v14;
}

void __40__MSUAnalytics_copyAppleConnectPersonID__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"stealthMode"];
  v3 = *(a1 + 40);
  v14 = 0;
  v4 = v3(v2, &v14);
  v5 = v14;
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v13 = v5 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    logfunction(", 1, @"Failed to read personID : %@\n"", v8, v9, v10, v11, v12, v5);
  }
}

- (id)copyAnalyticsDataForPreflight
{
  v3 = [(MSUAnalytics *)self mainQueue];
  dispatch_assert_queue_V2(v3);

  v9 = objc_alloc_init(NSMutableDictionary);
  if (v9)
  {
    [(MSUAnalytics *)self addSoftwareUpdateInfoToDictionary:v9];
    [(MSUAnalytics *)self addCacheDeleteInfoToDictionary:v9];
    [(MSUAnalytics *)self addMobileAssetStatsToDictionary:v9];
    [(MSUAnalytics *)self addTargetVolumeDriveInfoToDictionary:v9];
    if (MGGetBoolAnswer())
    {
      v15 = [(MSUAnalytics *)self copyAppleConnectPersonID];
      if (v15)
      {
        [v9 setObject:v15 forKeyedSubscript:@"personId"];
      }

      v16 = [(MSUAnalytics *)self copySerialNumber];
      if (v16)
      {
        [v9 setObject:v16 forKeyedSubscript:@"serialNumber"];
      }
    }

    logfunction(", 1, @"UsageInfoForPreflight is %@\n"", v10, v11, v12, v13, v14, v9);
    v17 = v9;
  }

  else
  {
    logfunction(", 1, @"Failed to allocate downloadInfo dict for additional preflight data\n"", v4, v5, v6, v7, v8, v19);
  }

  return v9;
}

- (id)copyGenericAnalyticsData
{
  v3 = [(MSUAnalytics *)self mainQueue];
  dispatch_assert_queue_V2(v3);

  v9 = objc_alloc_init(NSMutableDictionary);
  if (v9)
  {
    if (MGGetBoolAnswer())
    {
      if ([(MSUAnalytics *)self updatePhase]== 5)
      {
        logfunction(", 1, @"Skipping collection of personID for updateFinished\n"", v10, v11, v12, v13, v14, v39);
      }

      else
      {
        logfunction(", 1, @"Attempting to read personID\n"", v10, v11, v12, v13, v14, v39);
        v25 = [(MSUAnalytics *)self copyAppleConnectPersonID];
        if (v25)
        {
          logfunction(", 1, @"Successfully read personID: %@\n"", v20, v21, v22, v23, v24, v25);
          [v9 setObject:v25 forKeyedSubscript:@"personId"];
        }

        else
        {
          logfunction(", 1, @"Failed to read personID\n"", v20, v21, v22, v23, v24, v41);
        }
      }

      logfunction(", 1, @"Attempting to read serial number\n"", v15, v16, v17, v18, v19, v40);
      v31 = [(MSUAnalytics *)self copySerialNumber];
      if (v31)
      {
        logfunction(", 1, @"Successfully read serial number %@\n"", v26, v27, v28, v29, v30, v31);
        [v9 setObject:v31 forKeyedSubscript:@"serialNumber"];
      }

      else
      {
        logfunction(", 1, @"Failed to read serial number\n"", v26, v27, v28, v29, v30, v42);
      }
    }

    [(MSUAnalytics *)self addTargetVolumeDriveInfoToDictionary:v9];
    logfunction(", 1, @"Additional analytics data is %@\n"", v32, v33, v34, v35, v36, v9);
    v37 = v9;
  }

  else
  {
    logfunction(", 1, @"Failed to allocate downloadInfo dict for additional generic data\n"", v4, v5, v6, v7, v8, v39);
  }

  return v9;
}

- (id)copyAnalyticsData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = [(MSUAnalytics *)self mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __33__MSUAnalytics_copyAnalyticsData__block_invoke;
  v6[3] = &unk_1000491A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

int *__33__MSUAnalytics_copyAnalyticsData__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (![*(a1 + 32) updatePhase] || objc_msgSend(*(a1 + 32), "updatePhase") >= 6)
  {
    v15 = @"Invalid phase set in MSUAnalytics object\n";
LABEL_4:

    return logfunction("", 1, v15, v10, v11, v12, v13, v14, a9);
  }

  v17 = [*(a1 + 32) getStringForPhase];
  logfunction(", 1, @"Attempting to gather analytics data for phase : %@\n"", v18, v19, v20, v21, v22, v17);

  v23 = [*(a1 + 32) updatePhase];
  if (v23 - 3 >= 3)
  {
    if (v23 != 2)
    {
      v15 = @"Copying data for this phase is currently unsupported.\n";
      goto LABEL_4;
    }

    v24 = [*(a1 + 32) copyAnalyticsDataForPreflight];
  }

  else
  {
    v24 = [*(a1 + 32) copyGenericAnalyticsData];
  }

  v25 = *(*(a1 + 40) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  return _objc_release_x1();
}

@end