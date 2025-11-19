@interface NRPairingCompatibilityVersionInfo
+ (id)stringFromCFPrefs:(id)a3;
+ (id)systemVersions;
+ (unint64_t)valueForToken:(int)a3;
- (id)compatibilityIndexDictionary;
- (id)initInternal;
- (int64_t)maxPairingCompatibilityVersionForPhoneProductType:(id)a3;
- (int64_t)minPairingCompatibilityVersion;
- (int64_t)minPairingCompatibilityVersionForChipID:(id)a3 name:(id)a4 defaultVersion:(int64_t)a5;
- (int64_t)minPairingCompatibilityVersionForWatchProductType:(id)a3;
- (int64_t)minQuickSwitchCompatibilityVersion;
- (int64_t)pairingCompatibilityVersion;
- (unint64_t)pairingCompatibilitySupportStateForAdvertisingWatchVersion:(int64_t)a3;
@end

@implementation NRPairingCompatibilityVersionInfo

+ (id)systemVersions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__NRPairingCompatibilityVersionInfo_systemVersions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6F0A28 != -1)
  {
    dispatch_once(&qword_1ED6F0A28, block);
  }

  v2 = qword_1ED6F0A20;

  return v2;
}

- (int64_t)minPairingCompatibilityVersion
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(objc_opt_class(), "valueForToken:", _MergedGlobals_5)}];
  v4 = [(NRPairingCompatibilityVersionInfo *)self minPairingCompatibilityVersionForChipID:v3];

  return v4;
}

- (int64_t)minQuickSwitchCompatibilityVersion
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(objc_opt_class(), "valueForToken:", _MergedGlobals_5)}];
  v4 = [(NRPairingCompatibilityVersionInfo *)self minQuickSwitchPairingCompatibilityVersionForChipID:v3];

  return v4;
}

- (int64_t)pairingCompatibilityVersion
{
  v2 = objc_opt_class();
  v3 = dword_1ED6F09E4;

  return [v2 valueForToken:v3];
}

- (int64_t)minPairingCompatibilityVersionForWatchProductType:(id)a3
{
  v3 = qword_1ED6F0A00;
  if (a3)
  {
    v4 = [qword_1ED6F0A08 objectForKeyedSubscript:?];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 integerValue];
    }
  }

  return v3;
}

- (int64_t)maxPairingCompatibilityVersionForPhoneProductType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(NRPairingCompatibilityVersionInfo *)self compatibilityIndexDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (id)compatibilityIndexDictionary
{
  v27 = *MEMORY[0x1E69E9840];
  if (_NRIsInternalInstall___onceToken != -1)
  {
    dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
  }

  if (_NRIsInternalInstall___internalInstall != 1 || (v2 = CFPreferencesCopyValue(@"compatibilityIndexOverride", @"com.apple.NanoRegistry", @"mobile", *MEMORY[0x1E695E898])) == 0)
  {
LABEL_10:
    v7 = CFPreferencesCopyAppValue(@"latestAssetURL", @"com.apple.nanoregistryd");
    v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    v9 = [v8 URLByAppendingPathComponent:@"NanoRegistryPairingCompatibilityIndex.plist"];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v9];
    v11 = nr_framework_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = nr_framework_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_1E0ADF000, v13, OS_LOG_TYPE_DEFAULT, "NRPairingCompatibilityVersionInfo - Latest plist path: %@\nWith contents: %@", &v23, 0x16u);
      }
    }

    if (v10)
    {
      v14 = [v10 objectForKeyedSubscript:@"iPhone"];
      if (v14)
      {
        v15 = v14;
        v3 = v15;
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v18 = nr_framework_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (v19)
      {
        v20 = nr_framework_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138543362;
          v24 = @"iPhone";
          _os_log_impl(&dword_1E0ADF000, v20, OS_LOG_TYPE_DEFAULT, "NRPairingCompatibilityVersionInfo - %{public}@ key not found in compatibility index asset plist", &v23, 0xCu);
        }
      }

      v15 = 0;
    }

    else
    {
      v16 = nr_framework_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (!v17)
      {
        v3 = 0;
        goto LABEL_27;
      }

      v15 = nr_framework_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543362;
        v24 = v9;
        _os_log_impl(&dword_1E0ADF000, v15, OS_LOG_TYPE_DEFAULT, "NRPairingCompatibilityVersionInfo - Unable to read compatibility index asset plist at %{public}@", &v23, 0xCu);
      }
    }

    v3 = 0;
    goto LABEL_26;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 != CFDictionaryGetTypeID())
  {
    CFRelease(v3);
    goto LABEL_10;
  }

  v5 = nr_framework_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = nr_framework_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v3;
    _os_log_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_DEFAULT, "NRPairingCompatibilityVersionInfo - Overriding compatibility index dictionary to %@", &v23, 0xCu);
  }

LABEL_28:

LABEL_29:
  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)pairingCompatibilitySupportStateForAdvertisingWatchVersion:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NRPairingCompatibilityVersionInfo *)self maxPairingCompatibilityVersion]>= a3)
  {
    v13 = 1;
    goto LABEL_22;
  }

  if (_NRIsInternalInstall___onceToken != -1)
  {
    dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
  }

  if (_NRIsInternalInstall___internalInstall == 1)
  {
    v5 = CFPreferencesCopyValue(@"productTypeOverride", @"com.apple.NanoRegistry", @"mobile", *MEMORY[0x1E695E898]);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFStringGetTypeID())
      {
        v8 = nr_framework_log();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

        if (v9)
        {
          v10 = nr_framework_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138412290;
            v19 = v6;
            _os_log_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_DEFAULT, "NRPairingCompatibilityVersionInfo - Overriding productType to %@", &v18, 0xCu);
          }
        }

        v11 = v6;
        v12 = v11;
        goto LABEL_15;
      }

      CFRelease(v6);
    }
  }

  v12 = MGGetStringAnswer();
  v11 = 0;
LABEL_15:
  v14 = [(NRPairingCompatibilityVersionInfo *)self maxPairingCompatibilityVersionForPhoneProductType:v12];
  if (v14 >= a3 || v14 == 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int64_t)minPairingCompatibilityVersionForChipID:(id)a3 name:(id)a4 defaultVersion:(int64_t)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = qword_1ED6F0A18;
    if ([v7 length])
    {
      v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F5B7BE00];

      [v8 componentsSeparatedByString:{@", "}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v26 = 0u;
      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v21 = v8;
        v11 = *v24;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = [*(*(&v23 + 1) + 8 * i) componentsSeparatedByString:@"="];
            v14 = MEMORY[0x1E696AD98];
            v15 = [v13 objectAtIndexedSubscript:0];
            v16 = [v14 numberWithInteger:{objc_msgSend(v15, "integerValue")}];
            v17 = [v6 isEqual:v16];

            if (v17)
            {
              v18 = [v13 objectAtIndexedSubscript:1];
              a5 = [v18 integerValue];

              goto LABEL_13;
            }
          }

          v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

LABEL_13:
        v8 = v21;
      }

      v7 = v8;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return a5;
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = NRPairingCompatibilityVersionInfo;
  return [(NRPairingCompatibilityVersionInfo *)&v3 init];
}

+ (id)stringFromCFPrefs:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.NanoRegistry", @"mobile", *MEMORY[0x1E695E898]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__NRPairingCompatibilityVersionInfo_systemVersions__block_invoke(uint64_t a1)
{
  v2 = nr_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E0ADF000, v2, OS_LOG_TYPE_DEFAULT, "Revlock is set to shipping behavior", buf, 2u);
  }

  byte_1ED6F09E9 = 1;
  qword_1ED6F09F0 = 25;
  v3 = numberFromCFPrefs(@"maxPairingCompatibilityVersion");
  v4 = v3;
  if (v3)
  {
    qword_1ED6F09F0 = [v3 integerValue];
    _MergedGlobals_12 = 1;
  }

  qword_1ED6F0A00 = 24;
  v5 = numberFromCFPrefs(@"minPairingCompatibilityVersion");

  if (v5)
  {
    qword_1ED6F0A00 = [v5 integerValue];
    _MergedGlobals_12 = 1;
  }

  qword_1ED6F09F8 = 10;
  v6 = numberFromCFPrefs(@"minPairingCompatibilityVersionWithChipID");

  if (v6)
  {
    qword_1ED6F09F8 = [v6 integerValue];
    _MergedGlobals_12 = 1;
  }

  qword_1ED6F0A10 = 6;
  v7 = numberFromCFPrefs(@"minQuickSwitchCompatibilityVersion");

  if (v7)
  {
    qword_1ED6F0A10 = [v7 integerValue];
    _MergedGlobals_12 = 1;
  }

  v8 = [*(a1 + 32) _minPairingCompatibilityVersionWatchProductTypes];
  v9 = qword_1ED6F0A08;
  qword_1ED6F0A08 = v8;

  v10 = qword_1ED6F0A18;
  qword_1ED6F0A18 = @"28674=10,32770=14,32772=18,32774=22";

  v11 = [*(a1 + 32) stringFromCFPrefs:@"IOS_PAIRING_EOL_MIN_PAIRING_COMPATIBILITY_VERSION_CHIPIDS"];
  if (v11)
  {
    objc_storeStrong(&qword_1ED6F0A18, v11);
    _MergedGlobals_12 = 1;
  }

  if (notify_register_check("com.apple.nanoregistry.pairingcompatibilityversion", &dword_1ED6F09E4))
  {
    v12 = nr_framework_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_framework_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1E0ADF000, v14, OS_LOG_TYPE_DEFAULT, "Failed to register for version notify token", v21, 2u);
      }
    }
  }

  if (notify_register_check("com.apple.nanoregistry.activedevicechipid", &_MergedGlobals_5))
  {
    v15 = nr_framework_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = nr_framework_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1E0ADF000, v17, OS_LOG_TYPE_DEFAULT, "Failed to register for active device chip id notify token", v20, 2u);
      }
    }
  }

  v18 = [[NRPairingCompatibilityVersionInfo alloc] initInternal];
  v19 = qword_1ED6F0A20;
  qword_1ED6F0A20 = v18;
}

+ (unint64_t)valueForToken:(int)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 != -1)
  {
    state64 = 0;
    state = notify_get_state(a3, &state64);
    if (!state)
    {
      result = state64;
      goto LABEL_9;
    }

    v4 = state;
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = v4;
        _os_log_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get version notify token with result %d", buf, 8u);
      }
    }
  }

  result = 0;
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end