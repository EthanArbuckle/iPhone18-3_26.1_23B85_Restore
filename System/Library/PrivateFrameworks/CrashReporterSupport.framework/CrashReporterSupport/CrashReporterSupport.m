id OSAPreferencesGetValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277D36B80];
  v5 = a2;
  v6 = [v4 sharedInstance];
  v7 = [v6 multiUserMode];

  if (v7)
  {
    v8 = _preferencesForDomain(v5);

    v9 = [(__CFString *)v8 objectForKeyedSubscript:v3];
    v5 = v8;
  }

  else
  {
    v9 = CFPreferencesCopyValue(v3, v5, @"mobile", *MEMORY[0x277CBF030]);
  }

  return v9;
}

uint64_t checkMCFeature(const char *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (!checkMCFeature_dylib_handle)
  {
    checkMCFeature_dylib_handle = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 4);
    if (!checkMCFeature_dylib_handle)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v10 = 136446210;
      v11 = dlerror();
      v6 = MEMORY[0x277D86220];
      v7 = "Unable to load ManagedConfiguration dylib ('%{public}s')";
      goto LABEL_14;
    }
  }

  if (!checkMCFeature_profileConnectionObj)
  {
    checkMCFeature_profileConnectionObj = objc_getClass("MCProfileConnection");
    if (!checkMCFeature_profileConnectionObj && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to find class MCProfileConnection", &v10, 2u);
    }
  }

  if (!*a2)
  {
    v5 = dlsym(checkMCFeature_dylib_handle, a1);
    if (v5)
    {
      *a2 = *v5;
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446210;
      v11 = a1;
      v6 = MEMORY[0x277D86220];
      v7 = "Unable to load symbol %{public}s";
LABEL_14:
      _os_log_impl(&dword_247DE9000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);
  result = checkMCFeature_profileConnectionObj;
  if (checkMCFeature_profileConnectionObj)
  {
    if (*a2)
    {
      result = [objc_msgSend(checkMCFeature_profileConnectionObj "sharedConnection")] == 1;
    }

    else
    {
      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSAPreferencesSetValue(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277D36B80] sharedInstance];
  v9 = [v8 multiUserMode];

  if (v9)
  {
    v10 = _preferencesForDomain(v7);
    v11 = v10;
    if (v6)
    {
      if (!v10)
      {
        v11 = [MEMORY[0x277CBEB38] dictionary];
      }

      [v11 setObject:v6 forKeyedSubscript:v5];
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [v10 removeObjectForKey:v5];
      if (v11)
      {
LABEL_6:
        v12 = _savePreferencesForDomain(v11, v7);
LABEL_10:

        goto LABEL_11;
      }
    }

    v12 = 0;
    goto LABEL_10;
  }

  CFPreferencesSetValue(v5, v6, v7, @"mobile", *MEMORY[0x277CBF030]);
  v12 = 1;
LABEL_11:

  return v12;
}

id _preferencesForDomain(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___preferencesForDomain_block_invoke;
  v4[3] = &unk_278EDF1F0;
  v4[4] = &v5;
  _performOnFileBackingDomain(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_247DEA650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _savePreferencesForDomain(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___savePreferencesForDomain_block_invoke;
  v8[3] = &unk_278EDF240;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  _performOnFileBackingDomain(v4, v8);
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_247DEA748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFIndex OSAPreferencesGetIntegerValue(void *a1, void *a2, Boolean *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277D36B80];
  v7 = a2;
  v8 = [v6 sharedInstance];
  LOBYTE(v6) = [v8 multiUserMode];

  if (v6)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v9 = _preferencesForDomain(v7);

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:v5];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (a3)
        {
          *a3 = 1;
        }

        AppIntegerValue = [v10 integerValue];
      }

      else
      {
        AppIntegerValue = 0;
      }
    }

    else
    {
      AppIntegerValue = 0;
    }
  }

  else
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(v5, v7, a3);
    v9 = v7;
  }

  return AppIntegerValue;
}

uint64_t OSAPreferencesGetBoolValue(void *a1, void *a2, Boolean *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277D36B80];
  v7 = a2;
  v8 = [v6 sharedInstance];
  LOBYTE(v6) = [v8 multiUserMode];

  if (v6)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v9 = _preferencesForDomain(v7);

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:v5];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (a3)
        {
          *a3 = 1;
        }

        v11 = [v10 BOOLValue];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v5, v7, a3);

    v11 = AppBooleanValue != 0;
  }

  return v11;
}

BOOL OSAPreferencesSynchronize(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D36B80] sharedInstance];
  v3 = [v2 multiUserMode];

  v4 = (v3 & 1) != 0 || CFPreferencesSynchronize(v1, @"mobile", *MEMORY[0x277CBF030]) != 0;
  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _performOnFileBackingDomain(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.plist", a1];
  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [MEMORY[0x277D36B80] sharedInstance];
    v7 = [v6 pathPreferences];
    v11[0] = v7;
    v11[1] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v9 = [v5 fileURLWithPathComponents:v8];

    if (v9)
    {
      v3[2](v3, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ___preferencesForDomain_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void ___savePreferencesForDomain_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 path];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___savePreferencesForDomain_block_invoke_2;
  v9[3] = &unk_278EDF218;
  v10 = v3;
  v11 = v4;
  v8 = *(a1 + 32);
  v5 = v8;
  v12 = v8;
  v6 = v4;
  v7 = v3;
  ___savePreferencesForDomain_block_invoke_2(v9);
}

uint64_t ___savePreferencesForDomain_block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = *(a1 + 40);
    v7 = *MEMORY[0x277CCA180];
    v8[0] = &unk_2859EB718;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v2 createFileAtPath:v3 contents:0 attributes:v4];
  }

  result = [*(a1 + 48) writeToURL:*(a1 + 32) atomically:1];
  *(*(*(a1 + 56) + 8) + 24) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _createDirectoryIfNeeded(void *a1, char a2, uint64_t *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if ([v5 checkResourceIsReachableAndReturnError:a3])
  {
    v6 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a3;
      *buf = 138412546;
      v26 = v5;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ doesn't exist - %@. Creating it.", buf, 0x16u);
    }

    v8 = *MEMORY[0x277CCA180];
    if (a2)
    {
      v9 = *MEMORY[0x277CCA1B0];
      v21 = *MEMORY[0x277CCA180];
      v22 = v9;
      v10 = *MEMORY[0x277CCA1B8];
      v23 = &unk_2859EB730;
      v24 = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v23;
      v13 = &v21;
      v14 = 2;
    }

    else
    {
      v19 = *MEMORY[0x277CCA180];
      v20 = &unk_2859EB730;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v20;
      v13 = &v19;
      v14 = 1;
    }

    v15 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:{v14, v19, v20, v21, v22, v23, v24}];
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v16 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:v15 error:a3];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

id LogsContainerLocation()
{
  if (LogsContainerLocation_onceToken != -1)
  {
    LogsContainerLocation_cold_1();
  }

  v1 = LogsContainerLocation_sLogsContainerLocation;

  return v1;
}

void __LogsContainerLocation_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    v3 = LogsContainerLocation_sLogsContainerLocation;
    LogsContainerLocation_sLogsContainerLocation = v2;

    free(v1);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = 1;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error getting system group container: %llu", buf, 0xCu);
    }

    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter" isDirectory:1];
    v5 = LogsContainerLocation_sLogsContainerLocation;
    LogsContainerLocation_sLogsContainerLocation = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
}

id OSACreateTempSubmittableLog(void *a1, void *a2, void *a3, void *a4)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    v10 = a3;
    v11 = a1;
    v12 = [v9 mutableCopy];
    v13 = MEMORY[0x277CBEC38];
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D36C10]];
    v14 = [v7 path];
    [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277D36C48]];

    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277D36C30]];
  }

  else
  {
    v15 = *MEMORY[0x277D36C48];
    v23[0] = *MEMORY[0x277D36C10];
    v23[1] = v15;
    v24[0] = MEMORY[0x277CBEC38];
    v24[1] = v7;
    v23[2] = *MEMORY[0x277D36C30];
    v24[2] = MEMORY[0x277CBEC38];
    v16 = MEMORY[0x277CBEAC0];
    v17 = a3;
    v18 = a1;
    v12 = [v16 dictionaryWithObjects:v24 forKeys:v23 count:3];
  }

  v19 = [MEMORY[0x277D36B68] createForSubmission:a1 metadata:a3 options:v12 error:0 writing:0];

  v20 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:{fileno(objc_msgSend(v19, "stream"))}];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

BOOL OSAWriteLogForSubmission(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v10 length])
  {
    if (v12)
    {
      v14 = [v12 mutableCopy];
      [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x277D36C40]];

      v12 = v14;
    }

    else
    {
      v19 = *MEMORY[0x277D36C40];
      v20[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }
  }

  v15 = [MEMORY[0x277D36B68] createForSubmission:v9 metadata:v11 options:v12 error:0 writing:v13];
  v16 = v15 != 0;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL OSAMoveFileForSubmissions(void *a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    v8 = a3;
    v9 = [v7 mutableCopy];
    v10 = [v8 path];

    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D36C28]];
  }

  else
  {
    v17 = *MEMORY[0x277D36C28];
    v11 = a3;
    v7 = [v11 path];

    v18[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  v16 = 0;
  v12 = [MEMORY[0x277D36B68] createForSubmission:v5 metadata:0 options:v9 error:&v16 writing:0];
  v13 = v16 == 0;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void OSAIterateSubmittableLogsWithBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  if (v3)
  {
    v6 = [v3 mutableCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v8 = *MEMORY[0x277D36C50];
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D36C50]];

  if (!v9)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
  }

  v10 = MEMORY[0x277D36B68];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __OSAIterateSubmittableLogsWithBlock_block_invoke;
  v12[3] = &unk_278EDF358;
  v13 = &unk_2859EB790;
  v11 = v4;
  v14 = v11;
  [v10 iterateLogsWithOptions:v7 usingBlock:v12];

  objc_autoreleasePoolPop(v5);
}

void __OSAIterateSubmittableLogsWithBlock_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 pathExtension];
  if ([v3 isEqualToString:@"synced"])
  {
    v4 = [v6 URLByDeletingPathExtension];
    v5 = [v4 pathExtension];

    v3 = v5;
  }

  if ([*(a1 + 32) containsObject:v3])
  {
    (*(*(a1 + 40) + 16))();
  }
}

id OSAGetSubmittableLogs(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mutableCopy];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v5 = *MEMORY[0x277D36C18];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D36C18]];

  if (!v6)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __OSAGetSubmittableLogs_block_invoke;
  v13[3] = &unk_278EDF380;
  v14 = v4;
  v8 = v7;
  v15 = v8;
  v9 = v4;
  OSAIterateSubmittableLogsWithBlock(v9, v13);
  v10 = v15;
  v11 = v8;

  return v8;
}

void __OSAGetSubmittableLogs_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 fileSystemRepresentation];
  if (getxattr(v4, "DoNotSubmit", 0, 0, 0, 0) >= 1 && ([*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D36C18]], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = v4;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Skipping DoNotSubmit tagged report at %s", &v8, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id OSASubmittableLogs()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D36C18];
  v5[0] = MEMORY[0x277CBEC28];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v1 = OSAGetSubmittableLogs(v0);

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id OSAOSVersion()
{
  v0 = [MEMORY[0x277D36B80] sharedInstance];
  v1 = [v0 productNameVersionBuildString];

  return v1;
}

id OSAProductName()
{
  v0 = [MEMORY[0x277D36B80] sharedInstance];
  v1 = [v0 productName];

  return v1;
}

uint64_t OSAInMultiUserMode()
{
  v0 = [MEMORY[0x277D36B80] sharedInstance];
  v1 = [v0 multiUserMode];

  return v1;
}

id OSACreateRelPathInContainer(void *a1, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 stringByDeletingLastPathComponent];
    v6 = [v4 lastPathComponent];
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  v7 = [MEMORY[0x277D36B80] sharedInstance];
  if ([v7 multiUserMode])
  {
    LogsContainerLocation();
  }

  else
  {
    [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile" isDirectory:1];
  }
  v8 = ;

  v9 = [v8 URLByAppendingPathComponent:v5 isDirectory:1];
  v10 = v9;
  if (v9)
  {
    v27 = 0;
    DirectoryIfNeeded = _createDirectoryIfNeeded(v9, 1, &v27);
    v12 = v27;
    v13 = v12;
    if (DirectoryIfNeeded)
    {
      if (v6)
      {
        v14 = [v10 URLByAppendingPathComponent:v6];
        v15 = [v14 path];
        v26 = v13;
        v16 = [v14 checkResourceIsReachableAndReturnError:&v26];
        v17 = v26;

        if ((v16 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v31 = v14;
            v32 = 2112;
            v33 = v17;
            _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ doesn't exist - %@. Creating it.", buf, 0x16u);
          }

          v24 = [MEMORY[0x277CCAA00] defaultManager];
          v25 = [v14 path];
          v18 = *MEMORY[0x277CCA1B0];
          v28[0] = *MEMORY[0x277CCA180];
          v28[1] = v18;
          v19 = *MEMORY[0x277CCA1B8];
          v29[0] = &unk_2859EB748;
          v29[1] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
          v23 = [v24 createFileAtPath:v25 contents:0 attributes:v20];

          if ((v23 & 1) == 0)
          {

            v15 = 0;
          }
        }
      }

      else
      {
        v15 = [v10 path];
        v17 = v13;
      }

      goto LABEL_21;
    }

    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v10;
    v32 = 2112;
    v33 = v17;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't create directory %@. Error: %@", buf, 0x16u);
  }

  v15 = 0;
LABEL_21:

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

void logForAppleCare(void *a1, double a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([a1 count])
  {
    initR3();
    v5 = openR3(&initR3_r3, [qword_27EE7BB50 containsObject:{objc_msgSend(a1, "objectAtIndexedSubscript:", 0)}], a2);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@\n", OSADateFormat(), objc_msgSend(a1, "componentsJoinedByString:", @", ")), "dataUsingEncoding:allowLossyConversion:", 4, 1];
      if (v6)
      {
        write(v5, [v6 bytes], objc_msgSend(v6, "length"));
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          logForAppleCare_cold_1(a1);
        }
      }
    }

    close(v5);
  }

  objc_autoreleasePoolPop(v4);
}

void initR3()
{
  initR3_r3 = time(0) / 86400;
  if (initR3_onceToken != -1)
  {
    initR3_cold_1();
  }
}

uint64_t openR3(uint64_t a1, int a2, double a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = [objc_msgSend(v4 stringByAppendingPathComponent:{@"general.log", "fileSystemRepresentation"}];
    memset(&v40, 0, sizeof(v40));
    v8 = umask(0);
    if (lstat(v7, &v40) < 0)
    {
      if (*__error() != 2)
      {
        goto LABEL_30;
      }

      v14 = a1;
      v15 = v7;
      v16 = a3;
      v17 = a3;
    }

    else
    {
      R3 = 0xFFFFFFFFLL;
      if ((v40.st_mode & 0xF000) != 0x8000 || v40.st_nlink != 1 || v40.st_uid != *(a1 + 4))
      {
        goto LABEL_31;
      }

      v10 = v40.st_uid ? 384 : 420;
      if ((v40.st_mode & 0xFFF) != v10)
      {
        goto LABEL_31;
      }

      v11 = open(v7, 42);
      R3 = v11;
      if ((v11 & 0x80000000) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v27 = *__error();
          v28 = __error();
          v29 = strerror(*v28);
          v44.st_dev = 67109634;
          *&v44.st_mode = v27;
          LOWORD(v44.st_ino) = 2080;
          *(&v44.st_ino + 2) = v7;
          HIWORD(v44.st_uid) = 2080;
          *&v44.st_gid = v29;
          _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] opening %s, %s", &v44, 0x1Cu);
        }

        goto LABEL_31;
      }

      memset(&v44, 0, sizeof(v44));
      if (fstat(v11, &v44) && v44.st_nlink == v40.st_nlink && v44.st_uid == v40.st_uid && v44.st_mode == v40.st_mode && v44.st_ino == v40.st_ino && v44.st_dev == v40.st_dev)
      {
        goto LABEL_25;
      }

      value[0] = *"<legacy>";
      memset(&value[1], 0, 48);
      v39 = 0;
      v37 = a3;
      v38 = a3;
      v12 = fgetxattr(R3, "Version", value, 0x3FuLL, 0, 0);
      if (v12 >= 1)
      {
        *(value + v12) = 0;
      }

      v13 = [*(a1 + 24) isEqualToString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", value)}];
      fgetxattr(R3, "Day_Seq", &v39, 4uLL, 0, 0);
      fgetxattr(R3, "Install", &v38, 8uLL, 0, 0);
      if (v13)
      {
        fgetxattr(R3, "Upgrade", &v37, 8uLL, 0, 0);
        if (v39 == *a1)
        {
          if (!a2 || v44.st_size <= 307200)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              openR3_cold_1(v7, v30, v31, v32, v33, v34, v35, v36);
            }

            goto LABEL_31;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AppleCareSupport: WARN: limit exceeded, ignoring event", buf, 2u);
          }

LABEL_25:
          close(R3);
LABEL_30:
          R3 = 0xFFFFFFFFLL;
          goto LABEL_31;
        }
      }

      close(R3);
      v20 = [*(a1 + 16) stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"general-%d-%s.log", v39, value)}];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v42 = v20;
        _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: rolling log -> %@", buf, 0xCu);
      }

      v21 = [v20 fileSystemRepresentation];
      rename(v7, v21, v22);
      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v24 = *__error();
          v25 = __error();
          v26 = strerror(*v25);
          *buf = 67109378;
          *v42 = v24;
          *&v42[4] = 2080;
          *&v42[6] = v26;
          _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] rename failed, %s", buf, 0x12u);
        }

        unlink(v7);
      }

      v17 = v37;
      v16 = v38;
      v14 = a1;
      v15 = v7;
    }

    R3 = createR3(v14, v15, v16, v17);
LABEL_31:
    umask(v8);
    goto LABEL_32;
  }

  R3 = 0xFFFFFFFFLL;
LABEL_32:
  v18 = *MEMORY[0x277D85DE8];
  return R3;
}

uint64_t logEventForAppleCare(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  logForAppleCare(a1, Current);
  return 0;
}

void logLineForAppleCare(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a1];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v5, v6, 0}];
  logForAppleCare(v7, a3);
}

void rollAppleCareLogs()
{
  v0 = objc_autoreleasePoolPush();
  initR3();
  v5 = initR3_r3;
  v9 = qword_27EE7BB48;
  v1 = getuid();
  v6 = v1;
  v7 = getgid();
  v8 = @"/Library/Logs/AppleSupport/";
  Current = CFAbsoluteTimeGetCurrent();
  v3 = openR3(&initR3_r3, 0, Current);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  if (!v1)
  {
    v4 = openR3(&v5, 0, Current);
    if ((v4 & 0x80000000) == 0)
    {
      close(v4);
    }
  }

  purgeR3Logs(&initR3_r3);
  if (!v6)
  {
    purgeR3Logs(&v5);
  }

  objc_autoreleasePoolPop(v0);
}

void purgeR3Logs(int *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = [v2 fileSystemRepresentation];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      purgeR3Logs_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = opendir(v3);
    if (v11)
    {
      v12 = v11;
      v13 = readdir(v11);
      if (v13)
      {
        v15 = v13;
        *&v14 = 67109634;
        v28 = v14;
        do
        {
          d_name = v15->d_name;
          v17 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{v15->d_name, v28), "rangeOfString:options:", @"general.*\\.log", 1024}];
          if (v15->d_type == 8 && v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            value = 0;
            v19 = [objc_msgSend(*(a1 + 2) stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", d_name)), "fileSystemRepresentation"}];
            getxattr(v19, "Day_Seq", &value, 4uLL, 0, 0);
            v20 = value;
            v21 = *a1;
            v22 = privacyWindow;
            if (value <= *a1 - privacyWindow)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v23 = v21 - v20;
                *buf = v28;
                if (v21 - v20 >= 365)
                {
                  v23 = -1;
                }

                v31 = v22;
                v32 = 1024;
                *v33 = v23;
                *&v33[4] = 2080;
                *&v33[6] = d_name;
                _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: purging old (limit %d vs actual %d) %s", buf, 0x18u);
              }

              unlink(v19);
            }
          }

          v15 = readdir(v12);
        }

        while (v15);
      }

      closedir(v12);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = *__error();
      v25 = __error();
      v26 = strerror(*v25);
      *buf = 67109634;
      v31 = v24;
      v32 = 2080;
      *v33 = v3;
      *&v33[8] = 2080;
      *&v33[10] = v26;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] scanning '%s', %s", buf, 0x1Cu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __initR3_block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x277D36B80] "sharedInstance")];
  if (v0 && (v1 = v0, [v0 intValue] >= 1))
  {
    v2 = [v1 intValue];
  }

  else
  {
    v2 = 14;
  }

  privacyWindow = v2;
  qword_27EE7BB34 = 0;
  v3 = getpwnam("mobile");
  if (v3)
  {
    qword_27EE7BB34 = *&v3->pw_uid;
    unk_27EE7BB40 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{v3->pw_dir), "stringByAppendingPathComponent:", @"/Library/Logs/AppleSupport/"}];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR unable to intialize data", v5, 2u);
  }

  endpwent();
  qword_27EE7BB48 = MGCopyAnswer();
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_2859EB7A8];
  qword_27EE7BB50 = result;
  return result;
}

uint64_t createR3(uint64_t a1, char *a2, double a3, double a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = a4;
  value = a3;
  v6 = 384;
  if (!*(a1 + 4))
  {
    v6 = 420;
  }

  v7 = open_dprotected_np(a2, 2594, 4, 0, v6);
  v8 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = *__error();
      v25 = __error();
      v26 = strerror(*v25);
      *buf = 67109634;
      *v35 = v24;
      *&v35[4] = 2080;
      *&v35[6] = a2;
      v36 = 2080;
      v37 = v26;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleCareSupport: ERROR[%d] failed to create %s, %s";
      v23 = 28;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = *(a1 + 4);
    if (v9)
    {
      fchown(v7, v9, *(a1 + 8));
    }

    v10 = [*(a1 + 24) UTF8String];
    if (!v10 || (v11 = v10, !*v10) || (v12 = strlen(v10), fsetxattr(v8, "Version", v11, v12, 0, 0)) || fsetxattr(v8, "Install", &value, 8uLL, 0, 0) || fsetxattr(v8, "Upgrade", &v30, 8uLL, 0, 0) || fsetxattr(v8, "Day_Seq", a1, 4uLL, 0, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 67109634;
        *v35 = v13;
        *&v35[4] = 2080;
        *&v35[6] = a2;
        v36 = 2080;
        v37 = v15;
        _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] setting xattrs on %s, %s", buf, 0x1Cu);
      }
    }

    v29 = 0;
    v16 = MGCopyAnswer();
    v32[0] = @"report";
    v32[1] = @"version";
    v33[0] = @"Device Software Diagnostic Log";
    v33[1] = &unk_2859EB760;
    v32[2] = @"os_build";
    v33[2] = [objc_msgSend(MEMORY[0x277D36B80] "sharedInstance")];
    v32[3] = @"model";
    v17 = [objc_msgSend(MEMORY[0x277D36B80] "sharedInstance")];
    v18 = @"<no_sn>";
    if (v16)
    {
      v18 = v16;
    }

    v33[3] = v17;
    v33[4] = v18;
    v32[4] = @"serial";
    v32[5] = @"installed";
    v33[5] = OSADateFormat();
    v32[6] = @"updated";
    v33[6] = OSADateFormat();
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];

    v20 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v19 options:0 error:&v29];
    write(v8, [v20 bytes], objc_msgSend(v20, "length"));
    write(v8, "\n", 1uLL);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v35 = a2;
      v21 = MEMORY[0x277D86220];
      v22 = "AppleCareSupport: new %s";
      v23 = 12;
LABEL_20:
      _os_log_impl(&dword_247DE9000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_247DED150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247DED278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247DED40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247DED5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247DEDBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ConfigureCarrierDebuggingWithPower(uint64_t a1)
{
  if (ConfigureCarrierDebuggingWithPower___CoreTelephonyHandle)
  {
    v2 = ConfigureCarrierDebuggingWithPower_CTServerConnectionSetTracePropertyHandle;
  }

  else
  {
    v3 = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 1);
    ConfigureCarrierDebuggingWithPower___CoreTelephonyHandle = v3;
    if (!v3)
    {
      NSLog(&cfstr_Crashreporters.isa);
      return;
    }

    ConfigureCarrierDebuggingWithPower_CTServerConnectionCreateHandle = dlsym(v3, "_CTServerConnectionCreate");
    v2 = dlsym(ConfigureCarrierDebuggingWithPower___CoreTelephonyHandle, "_CTServerConnectionSetTraceProperty");
    ConfigureCarrierDebuggingWithPower_CTServerConnectionSetTracePropertyHandle = v2;
  }

  if (ConfigureCarrierDebuggingWithPower_CTServerConnectionCreateHandle)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    NSLog(&cfstr_UnableToLocate.isa);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v5 = (ConfigureCarrierDebuggingWithPower_CTServerConnectionCreateHandle)(*MEMORY[0x277CBECE8], _ServerConnectionCallBack, v8);
    if (v5)
    {
      v6 = v5;
      ConfigureCarrierDebuggingWithPower_CTServerConnectionSetTracePropertyHandle();
      CFRelease(v6);
    }

    OSAPreferencesSetValue(@"DisableLogObfuscation", [MEMORY[0x277CCABB0] numberWithBool:a1], @"com.apple.CrashReporter");
    if (a1)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    }

    else
    {
      v7 = 0;
    }

    OSAPreferencesSetValue(@"BasebandLogLimit", v7, @"com.apple.CrashReporter");
    OSAPreferencesSynchronize(@"com.apple.CrashReporter");
  }
}

void *GetThermalState()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB18] array];
  out_token = 0;
  if (!notify_register_check("com.apple.system.maxthermalsensorvalue", &out_token))
  {
    *state64 = 0;
    if (!notify_get_state(out_token, state64))
    {
      [v0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *state64)}];
    }

    notify_cancel(out_token);
  }

  strcpy(state64, "com.apple.system.thermalSensorValues");
  v12 = 0;
  v13 = 0;
  v1 = strlen(state64);
  for (i = 1; i != 20; ++i)
  {
    if (i >= 2)
    {
      sprintf(&state64[v1], "%d", i);
    }

    v9 = 0;
    if (!notify_register_check(state64, &out_token))
    {
      notify_get_state(out_token, &v9);
      notify_cancel(out_token);
    }

    if (!v9)
    {
      break;
    }

    [v0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v9)}];
    [v0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", WORD1(v9))}];
    [v0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", WORD2(v9))}];
    [v0 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", HIWORD(v9))}];
  }

  v3 = [v0 count];
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v5 = (v4 - 3);
  if (v5 < v3)
  {
    v6 = v3;
    do
    {
      if ([objc_msgSend(v0 objectAtIndex:{--v6), "intValue"}])
      {
        break;
      }

      [v0 removeLastObject];
    }

    while (v6 > v5);
  }

  if ([v0 count])
  {
    result = v0;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void softLinkAndSubmit(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (softLinkAndSubmit_onceToken != -1)
  {
    softLinkAndSubmit_cold_1();
  }

  if (softLinkAndSubmit_submissionClientObj)
  {
    v3 = objc_alloc_init(softLinkAndSubmit_submissionClientObj);
    [v3 submitWithOptions:a1 resultsCallback:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unable to dylink OSASubmissionClient", v4, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void SubmitDiagnosticLogPathsWithIdentifier(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v5[0] = @"mode";
    v5[1] = @"logs";
    v6[0] = @"appletv-diagnostic";
    v6[1] = a1;
    v5[2] = @"submission_info";
    v6[2] = a2;
    softLinkAndSubmit([MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3]);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a3;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Logs not submitted: unrecognized submission routing type %d.", buf, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t GetHardwareModel()
{
  v0 = [MEMORY[0x277D36B80] sharedInstance];

  return [v0 modelCode];
}

__CFString *GetIncidentID()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

uint64_t GetSystemVersion()
{
  v0 = [MEMORY[0x277D36B80] sharedInstance];

  return [v0 productNameVersionBuildString];
}

__CFString *GetSysIDWithDescription(int a1)
{
  memset(&v8, 0, sizeof(v8));
  if (stat("/AppleInternal/Library/PreferenceBundles/Carrier Settings.bundle", &v8))
  {
    return &stru_2859EAE48;
  }

  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      CFRelease(v4);
      v4 = @"ERROR UDID was not a string";
    }
  }

  else
  {
    v4 = @"UDID was null";
  }

  if (a1)
  {
    v6 = @"UDID:            %@\n";
  }

  else
  {
    v6 = @"%@";
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v4];
  CFRelease(v4);
  return v2;
}

__CFString *GetNameForLogType(int a1)
{
  if (a1 > 171)
  {
    if (a1 > 183)
    {
      if (a1 == 184)
      {
        return @"GPURestart";
      }

      if (a1 == 201)
      {
        return @"Siri";
      }
    }

    else
    {
      if (a1 == 172)
      {
        return @"ECCEvent";
      }

      if (a1 == 176)
      {
        return @"FlashStatus";
      }
    }
  }

  else if (a1 > 166)
  {
    if (a1 == 167)
    {
      return @"TCCService";
    }

    if (a1 == 168)
    {
      return @"Ultra_1";
    }
  }

  else
  {
    if (a1 == 156)
    {
      return @"CoreTime";
    }

    if (a1 == 166)
    {
      return @"KeyboardAccuracy";
    }
  }

  return 0;
}

uint64_t GetDeviceConfig()
{
  result = config;
  if (!config)
  {
    v1 = objc_alloc(MEMORY[0x277CCACA8]);
    v2 = [objc_msgSend(MEMORY[0x277D36B80] "sharedInstance")];
    result = [v1 initWithFormat:@"Hardware Model: %@\nOS Version: %@\nSystem ID: %@", v2, objc_msgSend(objc_msgSend(MEMORY[0x277D36B80], "sharedInstance"), "productNameVersionBuildString"), GetSysIDWithDescription(0)];
    config = result;
  }

  return result;
}

void CRLogStructuredData(int a1, void *a2)
{
  if (a2)
  {
    if (CRLogStructuredData_onceToken != -1)
    {
      CRLogStructuredData_cold_1();
    }

    if (CRLogStructuredData_opt_in == 1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v5 = [a2 copy];
      if (initForLoggingStructuredData_once != -1)
      {
        CRLogStructuredData_cold_2();
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __CRLogStructuredData_block_invoke_2;
      block[3] = &unk_278EDF5A0;
      v7 = a1;
      *&block[5] = Current;
      block[4] = v5;
      dispatch_async(dispatchQueue, block);
    }
  }
}

uint64_t __CRLogStructuredData_block_invoke()
{
  result = checkMCFeature("MCFeatureDiagnosticsSubmissionAllowed", &DiagnosticLogSubmissionEnabled_featureDiagnosticsSubmissionAllowed);
  CRLogStructuredData_opt_in = result;
  return result;
}

void __CRLogStructuredData_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  NameForLogType = GetNameForLogType(*(a1 + 48));
  if (NameForLogType)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.log", @"/var/mobile/Library/Logs/", NameForLogType];
    CRDumpOldStructuredLog(*(a1 + 48), v5, *(a1 + 40));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __CRLogStructuredData_block_invoke_3;
    v7[3] = &unk_278EDF578;
    v6 = *(a1 + 32);
    v7[4] = v5;
    v7[5] = v6;
    v7[6] = *(a1 + 40);
    __CRLogStructuredData_block_invoke_3(v7);
  }

  else
  {
    NSLog(&cfstr_UnrecognizedLo.isa, v3);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t CRDumpOldStructuredLog(uint64_t a1, void *a2, double a3)
{
  result = [a2 length];
  if (result)
  {
    result = [a2 fileSystemRepresentation];
    if (result)
    {
      v7 = result;
      memset(&v9, 0, sizeof(v9));
      result = stat(result, &v9);
      if (!result && v9.st_mtimespec.tv_sec / 86400 != (*MEMORY[0x277CBECD0] + floor(a3)) / 86400)
      {
        v8 = [[StructuredDataReport alloc] initWithType:a1 withFile:a2];
        [(OSAReport *)v8 saveWithOptions:0];

        return unlink(v7);
      }
    }
  }

  return result;
}

void __CRLogStructuredData_block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = fopen([*(a1 + 32) UTF8String], "a+");
  if (v2)
  {
    v15 = v2;
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [*(a1 + 40) objectForKey:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v3 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@:%@", v9, v10)}];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v11 = [MEMORY[0x277CCAC38] processInfo];
    v12 = *(a1 + 48);
    v13 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@[%d]: %@\n", OSADateFormat(), objc_msgSend(v11, "processName"), objc_msgSend(v11, "processIdentifier"), objc_msgSend(v3, "componentsJoinedByString:", @";", "UTF8String"];
    fputs(v13, v15);
    fclose(v15);
  }

  else
  {
    NSLog(&cfstr_Crashreporters_0.isa);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t CRDumpAllOldStructuredDataLogs()
{
  if (initForLoggingStructuredData_once != -1)
  {
    CRLogStructuredData_cold_2();
  }

  dispatch_sync(dispatchQueue, &__block_literal_global_119);
  Current = CFAbsoluteTimeGetCurrent();
  for (i = 0; i != 8; ++i)
  {
    v2 = dword_247DF0C08[i];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.log", @"/var/mobile/Library/Logs/", GetNameForLogType(dword_247DF0C08[i])];
    result = CRDumpOldStructuredLog(v2, v3, Current);
  }

  return result;
}

void *IsCarryDeviceWithHangtracerEnabled()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/var/mobile/Library/Preferences/.GlobalPreferences.plist"];
    if (result)
    {
      v1 = 0;
      result = [MEMORY[0x277CCAC58] propertyListWithData:result options:0 format:0 error:&v1];
      if (result)
      {
        return [objc_msgSend(result valueForKey:{@"HangTracerEnabled", "BOOLValue"}];
      }
    }
  }

  return result;
}

void dlaggd_addScalarForKey(uint64_t a1, uint64_t a2)
{
  if (dlaggd_addScalarForKey_onceToken != -1)
  {
    dlaggd_addScalarForKey_cold_1();
  }

  v4 = dlaggd_addScalarForKey___ADClientAddValueForScalarKey;
  if (dlaggd_addScalarForKey___ADClientAddValueForScalarKey)
  {

    v4(a1, a2);
  }
}

void *__dlaggd_addScalarForKey_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 1);
  if (result)
  {
    result = dlsym(result, "ADClientAddValueForScalarKey");
    dlaggd_addScalarForKey___ADClientAddValueForScalarKey = result;
  }

  return result;
}

void dlaggd_pushDistrubtionForKey(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  if (dlaggd_pushDistrubtionForKey_onceToken != -1)
  {
    dlaggd_pushDistrubtionForKey_cold_1();
  }

  v4 = dlaggd_pushDistrubtionForKey___ADClientPushValueForDistributionKey;
  if (dlaggd_pushDistrubtionForKey___ADClientPushValueForDistributionKey)
  {
    a2.n128_u64[0] = v2;

    v4(a1, a2);
  }
}

void *__dlaggd_pushDistrubtionForKey_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 1);
  if (result)
  {
    result = dlsym(result, "ADClientPushValueForDistributionKey");
    dlaggd_pushDistrubtionForKey___ADClientPushValueForDistributionKey = result;
  }

  return result;
}

uint64_t CRGetReporterKey()
{
  v0 = [MEMORY[0x277D36B80] sharedInstance];

  return [v0 crashReporterKey];
}

void CRCreateDirectoryStructure()
{
  v39 = *MEMORY[0x277D85DE8];
  v0 = getuid();
  v1 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v0)
  {
    if (v1)
    {
      *buf = 0;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Called to create CR directory as non-root user. Weird!!", buf, 2u);
    }

    goto LABEL_62;
  }

  if (v1)
  {
    *buf = 0;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to create CR directory structure as root", buf, 2u);
  }

  v2 = getpwnam("mobile");
  if (v2)
  {
    pw_uid = v2->pw_uid;
  }

  else
  {
    pw_uid = 0;
  }

  endpwent();
  v4 = getpwnam("_analyticsd");
  if (v4)
  {
    v5 = v4->pw_uid;
  }

  else
  {
    v5 = 0;
  }

  endpwent();
  v6 = getgrnam("_analyticsusers");
  if (v6)
  {
    gr_gid = v6->gr_gid;
  }

  else
  {
    gr_gid = 0;
  }

  endgrent();
  v8 = umask(2u);
  ensure_dir_perms_analytics("/private/var/logs");
  ensure_dir_perms_analytics("/Library/Logs/CrashReporter");
  ensure_dir_perms_analytics("/Library/Logs/CrashReporter/Baseband");
  ensure_dir_perms_analytics("/Library/Logs/CrashReporter/Panics");
  ensure_dir_perms_analytics("/Library/Logs/AppleSupport");
  ensure_dir_perms_analytics("/Library/Logs/OTACrashCopier");
  if (!pw_uid || !gr_gid)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Not attempting to create CR directory as UID/GID information is missing", buf, 2u);
    }

    goto LABEL_59;
  }

  if (!access("/Library/CoreAnalytics", 0))
  {
    *v32 = 0;
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v22 = *v32;
    if (*v32)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v22;
        _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't delete /Library/CoreAnalytics, error = %@", buf, 0xCu);
      }
    }
  }

  create_dir_with_owners_and_perms_with_analytics("/private/var/mobile/Library/Logs", 509, pw_uid, gr_gid);
  if (![objc_msgSend(MEMORY[0x277D36B80] "sharedInstance")])
  {
    create_dir_with_owners_and_perms_with_analytics("/private/var/mobile/Library/Logs/CrashReporter", 509, pw_uid, gr_gid);
    goto LABEL_58;
  }

  v28 = v8;
  if (create_symlink_to_system_container_onceToken != -1)
  {
    CRCreateDirectoryStructure_cold_1();
  }

  v31 = 0;
  v9 = create_symlink_to_system_container_containerLocation;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  if (([v9 setResourceValue:v10 forKey:*MEMORY[0x277CBE878] error:&v31] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = [create_symlink_to_system_container_containerLocation lastPathComponent];
    *buf = 138412546;
    v34 = v11;
    v35 = 2112;
    v36 = v31;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error excluding %@ from backup %@", buf, 0x16u);
  }

  v26 = geteuid();
  v25 = getegid();
  v27 = gr_gid;
  setegid(gr_gid);
  v29 = pw_uid;
  seteuid(pw_uid);
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Logs/CrashReporter"];
  v13 = -5;
  v30 = 0;
  v14 = *MEMORY[0x277CCA1E0];
  v15 = *MEMORY[0x277CCA1F8];
  v16 = MEMORY[0x277D86220];
  while (1)
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v17 fileExistsAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" isDirectory:&v30];
    v19 = [objc_msgSend(objc_msgSend(v17 attributesOfItemAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" error:{0), "objectForKeyedSubscript:", v14), "isEqualToString:", v15}];
    if (!v18)
    {
      if (v19 && ([v17 removeItemAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" error:&v31] & 1) == 0 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        CRCreateDirectoryStructure_cold_2(v32, &v32[4]);
      }

LABEL_38:
      if ([v17 createSymbolicLinkAtURL:v12 withDestinationURL:create_symlink_to_system_container_containerLocation error:&v31])
      {
        goto LABEL_57;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v34 = v12;
        v35 = 2112;
        v36 = create_symlink_to_system_container_containerLocation;
        v37 = 2112;
        v38 = v31;
        _os_log_impl(&dword_247DE9000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't symlink %@ to %@. Error: %@", buf, 0x20u);
      }

      goto LABEL_45;
    }

    if (v30 != 1)
    {
      goto LABEL_38;
    }

    if (v19)
    {
      goto LABEL_57;
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"/private/var/mobile/Library/Logs/CrashReporter-%d", (v13 + 6)];
    if (![v17 moveItemAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" toPath:v20 error:&v31])
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = @"/private/var/mobile/Library/Logs/CrashReporter";
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&dword_247DE9000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't move %@ to %@", buf, 0x16u);
      }

      if (v13 == -1)
      {
        v23 = @"com.apple.osanalytics.system_group_container_symlink_creation.movement_fail";
        goto LABEL_56;
      }

      goto LABEL_44;
    }

    [v17 removeItemAtPath:v20 error:0];
    if ([v17 createSymbolicLinkAtURL:v12 withDestinationURL:create_symlink_to_system_container_containerLocation error:&v31])
    {
      break;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = v12;
      v35 = 2112;
      v36 = create_symlink_to_system_container_containerLocation;
      v37 = 2112;
      v38 = v31;
      _os_log_impl(&dword_247DE9000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't symlink %@ to %@. Error: %@", buf, 0x20u);
    }

    if (v13 == -1)
    {
      v23 = @"com.apple.osanalytics.system_group_container_symlink_creation.fail";
      goto LABEL_56;
    }

LABEL_44:
    usleep(0xC350u);
LABEL_45:
    if (__CFADD__(v13++, 1))
    {
      goto LABEL_57;
    }
  }

  v23 = @"com.apple.osanalytics.system_group_container_symlink_creation.success";
LABEL_56:
  dlaggd_addScalarForKey(v23, 1);
LABEL_57:
  seteuid(v26);
  setegid(v25);
  pw_uid = v29;
  gr_gid = v27;
  v8 = v28;
LABEL_58:
  create_dir_with_owners_and_perms_with_analytics("/private/var/mobile/Library/Logs/AppleSupport", 509, pw_uid, gr_gid);
LABEL_59:
  if (v5)
  {
    create_dir_with_owners_and_perms_with_analytics("/private/var/db/analyticsd", 488, v5, v5);
  }

  umask(v8);
LABEL_62:
  v24 = *MEMORY[0x277D85DE8];
}

Class __softLinkAndSubmit_block_invoke()
{
  softLinkAndSubmit_dylib_handle = dlopen("/System/Library/PrivateFrameworks/OSASubmissionClient.framework/OSASubmissionClient", 4);
  result = objc_getClass("OSASubmissionClient");
  softLinkAndSubmit_submissionClientObj = result;
  return result;
}

dispatch_queue_t __initForLoggingStructuredData_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create("com.apple.CrashReporterSupport.LoggingQueue", v0);
  dispatchQueue = result;
  return result;
}

uint64_t ensure_dir_perms_analytics(const char *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  result = mkdir(a1, 0x1EDu);
  if (result == -1)
  {
    result = __error();
    if (*result == 17)
    {
      bzero(v19, 0x400uLL);
      getcwd(v19, 0x400uLL);
      memset(&v6, 0, sizeof(v6));
      v3 = stat(a1, &v6);
      v4 = fchmodat(-2, a1, 0x1EDu, 32);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447490;
        v8 = a1;
        v9 = 2082;
        v10 = v19;
        v11 = 1024;
        v12 = v3 == 0;
        v13 = 1024;
        v14 = v4 == 0;
        v15 = 1024;
        st_mode = v6.st_mode;
        v17 = 1024;
        v18 = 493;
        _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "=== CC ensured dir %{public}s had correct permissions {startPath: %{public}s, statSuccess: %d, successModifyPerms: %d, origninalMode: 0x%X, modifyMode: 0x%X}", buf, 0x2Eu);
      }

      result = send_analytics();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *create_dir_with_owners_and_perms_with_analytics(const char *a1, int a2, uid_t a3, gid_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!mkdir(a1, a2) || (result = __error(), *result == 17))
  {
    bzero(v32, 0x400uLL);
    getcwd(v32, 0x400uLL);
    memset(&v13, 0, sizeof(v13));
    v9 = stat(a1, &v13);
    v10 = fchownat(-2, a1, a3, a4, 32);
    v11 = fchmodat(-2, a1, a2, 32);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448258;
      v15 = a1;
      v16 = 2082;
      v17 = v32;
      v18 = 1024;
      v19 = v9 == 0;
      v20 = 1024;
      v21 = v10 == 0;
      v22 = 1024;
      st_gid = v13.st_gid;
      v24 = 1024;
      v25 = a4;
      v26 = 1024;
      v27 = v11 == 0;
      v28 = 1024;
      st_mode = v13.st_mode;
      v30 = 1024;
      v31 = a2;
      _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "=== CC create dir %{public}s with owners and permissions {startPath: %{public}s, statSuccess: %d, successModifyGID: %d, origninalGID: %d, modifyGID: %d, successModifyPerms: %d, origninalMode: 0x%X, modifyMode: 0x%X}", buf, 0x40u);
    }

    result = send_analytics();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t send_analytics()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v0 setUsesSignificantDigits:1];
  [v0 setMaximumSignificantDigits:2];
  getprogname();
  *v10 = 0x1500000001;
  v9[0] = 0uLL;
  v8 = 16;
  if (sysctl(v10, 2u, v9, &v8, 0, 0) != -1)
  {
    if (*&v9[0])
    {
      v1 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*&v9[0]];
      if (v1)
      {
        v2 = MEMORY[0x277CCABB0];
        [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
        [v0 stringForObjectValue:{objc_msgSend(v2, "numberWithDouble:")}];
      }
    }
  }

  v3 = getpid();
  *v10 = 0xE00000001;
  v11 = 1;
  v12 = v3;
  memset(v9, 0, 512);
  v8 = 648;
  if ((sysctl(v10, 4u, v9, &v8, 0, 0) & 0x80000000) == 0)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*&v9[0]];
    if (v4)
    {
      v5 = MEMORY[0x277CCABB0];
      [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
      [v0 stringForObjectValue:{objc_msgSend(v5, "numberWithDouble:")}];
    }
  }

  result = AnalyticsSendEventLazy();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __send_analytics_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v9[0] = @"progname";
  if (*(a1 + 48))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v2 = @"<unknown>";
  }

  v10[0] = v2;
  v9[1] = @"path";
  if (*(a1 + 56))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v3 = @"<unknown>";
  }

  v10[1] = v3;
  v9[2] = @"start_path";
  if (*(a1 + 64))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v4 = @"<unknown>";
  }

  v10[2] = v4;
  v9[3] = @"original_perms";
  if (*(a1 + 84) == 1)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 80)];
  }

  else
  {
    v5 = &unk_2859EB778;
  }

  v10[3] = v5;
  v9[4] = @"modify_perms";
  v10[4] = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 85)];
  v9[5] = @"modify_perms_success";
  v10[5] = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 86)];
  v9[6] = @"modify_perms_value";
  v10[6] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 82)];
  v9[7] = @"original_gid";
  if (*(a1 + 84) == 1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  }

  else
  {
    v6 = &unk_2859EB778;
  }

  v10[7] = v6;
  v9[8] = @"modify_gid";
  v10[8] = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 87)];
  v9[9] = @"modify_gid_success";
  v10[9] = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88)];
  v9[10] = @"modify_gid_value";
  v10[10] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 76)];
  v9[11] = @"boot_time_appx";
  v9[12] = @"proc_uptime_appx";
  v11 = *(a1 + 32);
  v9[13] = @"framework";
  v12 = @"CrashCatcher";
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:14];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __create_symlink_to_system_container_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [LogsContainerLocation() URLByAppendingPathComponent:@"Library/Logs/DiagnosticReports" isDirectory:1];
  v1 = v0;
  v3 = 0;
  if (v0 && _createDirectoryIfNeeded(v0, 1, &v3))
  {
    create_symlink_to_system_container_containerLocation = v1;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v5 = v1;
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't create directory %@. Error: %@", buf, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void logForAppleCare_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_0(&dword_247DE9000, MEMORY[0x277D86220], v1, "AppleCareSupport: event %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void openR3_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_247DE9000, MEMORY[0x277D86220], a3, "AppleCareSupport: existing log is valid, %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void purgeR3Logs_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_247DE9000, MEMORY[0x277D86220], a3, "AppleCareSupport: scanning '%s'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CRCreateDirectoryStructure_cold_2(uint8_t *buf, void *a2)
{
  *buf = 138543362;
  *a2 = @"/private/var/mobile/Library/Logs/CrashReporter";
  _os_log_error_impl(&dword_247DE9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error removing old symlink at %{public}@", buf, 0xCu);
}