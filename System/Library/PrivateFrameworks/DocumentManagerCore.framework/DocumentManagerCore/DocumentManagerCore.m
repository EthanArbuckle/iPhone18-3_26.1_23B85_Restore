void StartFINode()
{
  if (StartFINode_onceToken != -1)
  {
    StartFINode_cold_1();
  }
}

void sub_249341F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void DOCInitLogging()
{
  if (DOCInitLogging_once != -1)
  {
    DOCInitLogging_cold_1();
  }
}

uint64_t __DOCInitLogging_block_invoke()
{
  v0 = os_log_create("com.apple.DocumentManager", "DocumentManager");
  v1 = docLogHandle;
  docLogHandle = v0;

  v2 = os_log_create("com.apple.DocumentManager", "UI");
  v3 = docUILogHandle;
  docUILogHandle = v2;

  v4 = os_log_create("com.apple.DocumentManager", "DocumentCreation");
  v5 = docDocumentCreationLogHandle;
  docDocumentCreationLogHandle = v4;

  v6 = os_log_create("com.apple.DocumentManager", "ServicePresentation");
  v7 = docServicePresentationHandle;
  docServicePresentationHandle = v6;

  v8 = os_log_create("com.apple.DocumentManager", "Persona");
  v9 = docPersonaLogHandle;
  docPersonaLogHandle = v8;

  v10 = os_log_create("com.apple.DocumentManager", "SmartFolders");
  v11 = docSmartFolderLogHandle;
  docSmartFolderLogHandle = v10;

  v12 = os_log_create("com.apple.DocumentManager", "Source");
  v13 = docSourceLogHandle;
  docSourceLogHandle = v12;

  v14 = os_log_create("com.apple.DocumentManager", "Picker");
  v15 = docPickerLogHandle;
  docPickerLogHandle = v14;

  v16 = os_log_create("com.apple.DocumentManager", "Rename");
  v17 = docRenameLogHandle;
  docRenameLogHandle = v16;

  v18 = os_log_create("com.apple.DocumentManager", "History");
  v19 = docBrowserHistoryLogHandle;
  docBrowserHistoryLogHandle = v18;

  v20 = os_log_create("com.apple.DocumentManager", "Tests");
  v21 = docTestsLogHandle;
  docTestsLogHandle = v20;

  v22 = os_log_create("com.apple.DocumentManager", "DownloadService");
  v23 = docDownloadServiceLogHandle;
  docDownloadServiceLogHandle = v22;

  v24 = os_log_create("com.apple.DocumentManager", "StateStore");
  v25 = docStateStoreHandle;
  docStateStoreHandle = v24;

  v26 = os_log_create("com.apple.DocumentManager", "Analytics");
  v27 = docAnalyticsLogHandle;
  docAnalyticsLogHandle = v26;

  v28 = os_log_create("com.apple.DocumentManager", "Application");
  v29 = docApplicationLogHandle;
  docApplicationLogHandle = v28;

  v30 = os_log_create("com.apple.DocumentManager", "ProgressUI");
  v31 = docProgressUILogHandle;
  docProgressUILogHandle = v30;

  v32 = os_log_create("com.apple.DocumentManager", "Enumeration");
  v33 = docEnumerationLogHandle;
  docEnumerationLogHandle = v32;

  v34 = os_log_create("com.apple.DocumentManager", "AppIntents");
  v35 = docAppIntentsLogHandle;
  docAppIntentsLogHandle = v34;

  v36 = os_log_create("com.apple.DocumentManager", "FileProviderSyncState");
  v37 = docFileProviderSyncStateLogHandle;
  docFileProviderSyncStateLogHandle = v36;

  v38 = os_log_create("com.apple.DocumentManager", "Sidebar");
  v39 = docSidebarLogHandle;
  docSidebarLogHandle = v38;

  docPreviewLogHandle = os_log_create("com.apple.DocumentManager", "Preview");

  return MEMORY[0x2821F96F8]();
}

id composedID(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v9[0] = v3;
    v9[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = [v5 componentsJoinedByString:@"."];
  }

  else
  {
    v6 = v3;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void _FFInitLog(void *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = @"NO";
  if (a2)
  {
    v4 = @"YES";
  }

  v5 = v4;
  v6 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v6 = docLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_249340000, v6, OS_LOG_TYPE_DEFAULT, "[Feature Flag] Initializing %{public}@ to value = %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __DOCSelfCanMapLSDatabase_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.coreservices.canmaplsdatabase", 0);
    if (v2)
    {
      v3 = v2;
      TypeID = CFBooleanGetTypeID();
      v5 = TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3) != 0;
      CFRelease(v1);
    }

    else
    {
      v5 = 0;
      v3 = v1;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  DOCSelfCanMapLSDatabase_canMapLSDatabase = v5;
}

id DOCContentTypesReadableByApplicationWithBundleIdentifier(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.DocumentsApp"])
  {
    v16[0] = *MEMORY[0x277CE1DB8];
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v3 = [v4 bundleIdentifier];
    }

    v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 claimRecords];
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __DOCContentTypesReadableByApplicationWithBundleIdentifier_block_invoke;
      v14[3] = &unk_278F9B928;
      v15 = v8;
      v9 = v8;
      [v7 enumerateObjectsUsingBlock:v14];
      v2 = [MEMORY[0x277CE1CB8] doc_contentTypesForIdentifiers:v9];

      if (![v2 count])
      {
        v10 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v10 = docLogHandle;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          DOCContentTypesReadableByApplicationWithBundleIdentifier_cold_1(v10);
        }
      }
    }

    else
    {
      v11 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v11 = docLogHandle;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        DOCContentTypesReadableByApplicationWithBundleIdentifier_cold_2(v1, v11);
      }

      v2 = MEMORY[0x277CBEBF8];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t DOCProviderDomainIDIsLegacyWebDAV(void *a1)
{
  v1 = a1;
  if (DOCProviderDomainIDIsWebDAV(v1))
  {
    v2 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:0 error:0];
    v3 = [v2 bundleVersion];
    v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v5 = [v4 isVersion:v3 greaterThanOrEqualToVersion:@"5.2"];

    v6 = v5 ^ 1u;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t DOCProviderDomainIDIsWebDAV(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (DOCProviderDomainIDIsWebDAV_onceToken != -1)
  {
    DOCProviderDomainIDIsWebDAV_cold_1();
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = DOCProviderDomainIDIsWebDAV_webDAVProviderIdentifiers;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([v1 hasPrefix:{*(*(&v8 + 1) + 8 * i), v8}])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

void __DOCProviderDomainIDIsWebDAV_block_invoke()
{
  v0 = DOCProviderDomainIDIsWebDAV_webDAVProviderIdentifiers;
  DOCProviderDomainIDIsWebDAV_webDAVProviderIdentifiers = &unk_285C77EF8;
}

id DOCLocalizedDisplayName(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v3)
  {
    v4 = DOCLocalProviderLocalizedDisplayName();
  }

  else
  {
    v5 = [v1 domainDisplayName];

    v4 = [v1 providerDisplayName];
    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [v1 domainDisplayName];
      v8 = [v6 stringWithFormat:@" — %@", v7];
      v9 = [v4 stringByAppendingString:v8];

      v4 = v9;
    }
  }

  return v4;
}

id DOCLocalProviderLocalizedDisplayName()
{
  v0 = MGCopyAnswer();
  if ([v0 isEqualToString:@"iPhone"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My iPhone";
  }

  else if ([v0 isEqualToString:@"iPad"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My iPad";
  }

  else if ([v0 isEqualToString:@"iPod touch"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My iPod";
  }

  else if ([v0 isEqualToString:@"Apple Vision"])
  {
    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My Apple Vision Pro";
  }

  else
  {
    if ([v0 length])
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v2 = [v4 localizedStringForKey:@"On My %@" value:&stru_285C6EEF8 table:0];

      v5 = [MEMORY[0x277CCACA8] stringWithFormat:v2, v0];
      goto LABEL_13;
    }

    v1 = _DocumentManagerBundle();
    v2 = v1;
    v3 = @"On My Device";
  }

  v5 = [v1 localizedStringForKey:v3 value:v3 table:@"Localizable"];
LABEL_13:
  v6 = v5;

  return v6;
}

void DOCRunInMainThread(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    DOCRunInMainThread_cold_1();
  }

  block = v1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t DOCProviderDomainIDIsRemovable(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple.SMBClientProvider.FileProvider"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"com.apple.filesystems.UserFS.FileProvider"];
  }

  return v2;
}

id containingBundleForBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v3 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 containingBundleRecord];
      v6 = [v9 bundleIdentifier];

      if (v6)
      {
        [v4 setObject:v6 forKey:v3];
        v6 = v6;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_249346720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DOCTagsFromFPTags(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = DOCTagFromFPTag(*(*(&v11 + 1) + 8 * i));
        [v2 addObject:{v8, v11}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

DOCTag *DOCTagFromFPTag(void *a1)
{
  v1 = a1;
  v2 = +[DOCTagRegistry sharedInstance];
  v3 = [v1 label];
  v4 = [v2 tagForName:v3];

  if (v4 && [v4 type] == 1 || (objc_msgSend(v1, "color") & 0x80000000) != 0 || objc_msgSend(v1, "color") >= 8)
  {
    v5 = v4;
  }

  else
  {
    v6 = [DOCTag alloc];
    v7 = [v1 label];
    v5 = -[DOCTag initWithDisplayName:labelIndex:type:](v6, "initWithDisplayName:labelIndex:type:", v7, [v1 color], 0);
  }

  return v5;
}

id DOCLocalizedProviderOnlyDisplayName(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v3)
  {
    DOCLocalProviderLocalizedDisplayName();
  }

  else
  {
    [v1 providerDisplayName];
  }
  v4 = ;

  return v4;
}

void *sub_24934775C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_249347780()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493477C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24934780C()
{
  MEMORY[0x24C1F6CE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249347844()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24934787C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2493478B4()
{
  MEMORY[0x24C1F6CE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DOCLogAssertionFailureMessage_Swift(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = [[v7 alloc] initWithFormat:@"DocumentManager assertion on %@:%d %@ failed: %@", v10, a2, v9, v8];

  if (LoadCrashSupportIfNecessary_once != -1)
  {
    DOCLogAssertionFailureMessage_Swift_cold_1();
  }

  v12 = DOCSimulateCrash;
  if (DOCSimulateCrash)
  {
    v13 = getpid();
    v12(v13, 5, v11);
  }

  v14 = docLogHandle;
  if (!docLogHandle)
  {
    DOCLogAssertionFailureMessage_Swift_cold_2(&v15);
    v14 = v15;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    DOCLogAssertionFailureMessage_Swift_cold_3(v11, v14);
  }
}

void DOCLogAssertionFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = MEMORY[0x277CCACA8];
  v13 = a5;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DocumentManager assertion on %s:%d %s failed: %@", a2, a4, a1, v14];
  if (LoadCrashSupportIfNecessary_once != -1)
  {
    DOCLogAssertionFailure_cold_1();
  }

  v16 = DOCSimulateCrash;
  if (DOCSimulateCrash)
  {
    v17 = getpid();
    v16(v17, 5, v15);
  }

  v18 = docLogHandle;
  if (!docLogHandle)
  {
    DOCLogAssertionFailureMessage_Swift_cold_2(&v19);
    v18 = v19;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    DOCLogAssertionFailureMessage_Swift_cold_3(v15, v18);
  }
}

void DOCLogBacktrace(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CCACC8] callStackSymbols];
  v9 = [MEMORY[0x277CCAB68] string];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(__CFString *)v9 appendFormat:@"%@ %@\n", @"[DocMgrBT] ", *(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v12);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = @"[DocMgrBT] ";
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_249340000, v5, OS_LOG_TYPE_DEFAULT, "%@ %@: '%@'", buf, 0x20u);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_249340000, v5, OS_LOG_TYPE_DEFAULT, "\n%@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __LoadCrashSupportIfNecessary_block_invoke()
{
  v0 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
  LoadCrashSupportIfNecessary___CrashReportHandle = v0;
  if (v0)
  {
    DOCSimulateCrash = dlsym(v0, "SimulateCrash");
  }

  else
  {
    v1 = docLogHandle;
    if (!docLogHandle)
    {
      DOCLogAssertionFailureMessage_Swift_cold_2(&v2);
      v1 = v2;
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __LoadCrashSupportIfNecessary_block_invoke_cold_2(v1);
    }
  }
}

void sub_24934B8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24934BF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DOCRandomRankBetween(uint64_t a1, unint64_t a2)
{
  v2 = a1 + 1;
  if (a1 + 1 >= a2)
  {
    v5 = 0;
  }

  else
  {
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2 + __buf % (~a1 + a2)];
  }

  return v5;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_24934EB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  objc_sync_exit(@"FIOperations");
  _Unwind_Resume(a1);
}

uint64_t FolderTagColorForTags(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__0;
    v9 = __Block_byref_object_dispose__0;
    v10 = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __FolderTagColorForTags_block_invoke;
    v4[3] = &unk_278F9B860;
    v4[4] = &v5;
    [v1 enumerateObjectsWithOptions:2 usingBlock:v4];
    v2 = [v6[5] labelIndex];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_24934F520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void __FolderTagColorForTags_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = DOCTagFromFPTag(a2);
  if ([obj labelIndex])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    *a4 = 1;
  }
}

id DOCEnumerationLogHandle()
{
  v0 = docEnumerationLogHandle;
  if (!docEnumerationLogHandle)
  {
    DOCInitLogging();
    v0 = docEnumerationLogHandle;
  }

  return v0;
}

uint64_t DOCNodeSupportsFolderCustomization(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (![v1 isFolder] || objc_msgSend(v1, "doc_folderIconType") > 1 || (objc_msgSend(v1, "isAppContainer") & 1) != 0 || (objc_msgSend(v1, "isTopLevelSharedItem") & 1) != 0 || (objc_msgSend(v1, "doc_isCollaborationInvitation") & 1) != 0)
  {
    goto LABEL_6;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v1 itemDecorations];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x277CC62B0];
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) type];
        v12 = [v11 isEqual:v9];

        if (v12)
        {
          v2 = 0;
          goto LABEL_20;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v1 providerDomainID];
  v15 = DOCProviderDomainIDIsSharedServerDomainID(v13, v14);

  if (v15)
  {
LABEL_6:
    v2 = 0;
  }

  else
  {
    v16 = [v1 providerDomainID];
    v17 = [v16 isEqual:@"com.apple.FileProvider.LocalStorage"];

    if (v17)
    {
      v2 = 1;
    }

    else
    {
      v18 = MEMORY[0x277CC6420];
      v19 = [v1 providerDomainID];
      v5 = [v18 providerDomainWithID:v19 cachePolicy:1 error:0];

      v2 = [v5 isUsingFPFS];
LABEL_20:
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

id DOCNodeFromCoder(void *a1)
{
  v1 = a1;
  v2 = [v1 decodeIntForKey:@"DOCNodeEncodedTypeKey"];
  if (!v2)
  {
    v4 = 0x277CC63E8;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = +[DOCNodeStartupManager shared];
    [v3 startIfNeeded];

    v4 = 0x277D04700;
LABEL_5:
    v5 = *v4;
    v6 = [v1 decodeObjectOfClass:objc_opt_class() forKey:@"DOCNodeEncodedObjectKey"];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

void sub_24935458C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DOCContentTypesReadableByApplicationWithBundleIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 handlerRank];
  if (([v3 isEqualToString:*MEMORY[0x277CC1F20]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CC1F10]) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CC1F18]))
  {
    v4 = *(a1 + 32);
    v5 = [v6 typeIdentifiers];
    [v4 addObjectsFromArray:v5];
  }
}

BOOL DOCApplicationWithBundleIdentifierSupportsDocuments(void *a1)
{
  v1 = DOCContentTypesReadableByApplicationWithBundleIdentifier(a1);
  v2 = [v1 count] != 0;

  return v2;
}

uint64_t DOCProviderDomainIsSharedServerDomain(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 hasPrefix:@"com.apple.SMBClientProvider.FileProvider"];

  return v2;
}

void sub_2493564E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249358FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249359EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24935A1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24935DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DOCShouldApplicationShowRecentsPopover(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "BOOL DOCShouldApplicationShowRecentsPopover(NSString *__strong _Nonnull)";
    _os_log_impl(&dword_249340000, v2, OS_LOG_TYPE_DEFAULT, "%s was removed. Returning NO.", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_249362910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id documentmanager_perf_log()
{
  if (documentmanager_perf_log_once != -1)
  {
    documentmanager_perf_log_cold_1();
  }

  v1 = documentmanager_perf_log_logger;

  return v1;
}

uint64_t __documentmanager_perf_log_block_invoke()
{
  v0 = os_log_create("com.apple.DocumentManager", "performance");
  v1 = documentmanager_perf_log_logger;
  documentmanager_perf_log_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_249363C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id FPTagFromDOCTag(void *a1)
{
  v1 = a1;
  v2 = [v1 labelIndex];
  v3 = objc_alloc(MEMORY[0x277CC6468]);
  v4 = [v1 displayName];

  v5 = [v3 initWithLabel:v4 color:v2];

  return v5;
}

id FPTagsFromDOCTags(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [v1 arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __FPTagsFromDOCTags_block_invoke;
  v6[3] = &unk_278F9BF40;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __FPTagsFromDOCTags_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = FPTagFromDOCTag(a2);
  [v2 addObject:v3];
}

void DOCRunInMainThreadSync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    DOCRunInMainThreadSync_cold_1();
  }

  block = v1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void sub_249365C08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_249366350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t hasEqual_defaultEffectiveTabIdentifierForLocationRestore(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
  v6 = [v4 defaultEffectiveTabIdentifierForLocationRestore];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
    v8 = [v4 defaultEffectiveTabIdentifierForLocationRestore];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

__CFString *NSStringFromContentMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"????";
  }

  else
  {
    return off_278F9C1F8[a1];
  }
}

__CFString *NSStringFromLandingMode(uint64_t a1)
{
  v1 = @"????";
  if (a1 == 1)
  {
    v1 = @"chin";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"fullscreen";
  }
}

void sub_24936A0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24936CF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_24936E0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t DOCUIPBrowserState.contentMode.getter()
{
  return *v0;
}

{
  return *(v0 + OBJC_IVAR___DOCUIPBrowserState__impl);
}

uint64_t DOCUIPBrowserState.contentMode.setter(uint64_t result)
{
  *v1 = result;
  return result;
}

{
  *(v1 + OBJC_IVAR___DOCUIPBrowserState__impl) = result;
  return result;
}

uint64_t DOCUIPBrowserState.documentLandingMode.getter()
{
  return *(v0 + 8);
}

{
  return *(v0 + OBJC_IVAR___DOCUIPBrowserState__impl + 8);
}

uint64_t DOCUIPBrowserState.documentLandingMode.setter(uint64_t result)
{
  *(v1 + 8) = result;
  return result;
}

{
  *(v1 + OBJC_IVAR___DOCUIPBrowserState__impl + 8) = result;
  return result;
}

uint64_t sub_24936EF58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x4D746E65746E6F63;
  }

  if (v3)
  {
    v5 = 0xEB0000000065646FLL;
  }

  else
  {
    v5 = 0x8000000249393B20;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x4D746E65746E6F63;
  }

  if (*a2)
  {
    v7 = 0x8000000249393B20;
  }

  else
  {
    v7 = 0xEB0000000065646FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24938A7BC();
  }

  return v9 & 1;
}

uint64_t sub_24936F00C()
{
  v1 = *v0;
  sub_24938A7FC();
  sub_24938A47C();

  return sub_24938A80C();
}

uint64_t sub_24936F09C()
{
  *v0;
  sub_24938A47C();
}

uint64_t sub_24936F118()
{
  v1 = *v0;
  sub_24938A7FC();
  sub_24938A47C();

  return sub_24938A80C();
}

uint64_t sub_24936F1A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24938A77C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24936F204(unint64_t *a1@<X8>)
{
  v2 = 0x8000000249393B20;
  v3 = 0x4D746E65746E6F63;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEB0000000065646FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_24936F250()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x4D746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_24936F298@<X0>(char *a1@<X8>)
{
  v2 = sub_24938A77C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24936F314(uint64_t a1)
{
  v2 = sub_24936F624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24936F350(uint64_t a1)
{
  v2 = sub_24936F624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DOCUIPBrowserState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE28E0, &qword_24938EF50);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24936F624();
  sub_24938A82C();
  v14 = v9;
  v13 = 0;
  type metadata accessor for DOCUIPBrowserContentMode(0);
  sub_24936F6A0(&qword_27EEE28F0, type metadata accessor for DOCUIPBrowserContentMode);
  sub_24938A79C();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    type metadata accessor for DOCUIPDocumentLandingMode(0);
    sub_24936F6A0(&qword_27EEE28F8, type metadata accessor for DOCUIPDocumentLandingMode);
    sub_24938A79C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24936F624()
{
  result = qword_27EEE28E8;
  if (!qword_27EEE28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE28E8);
  }

  return result;
}

uint64_t sub_24936F6A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DOCUIPBrowserState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2900, &qword_24938EF58);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24936F624();
  sub_24938A81C();
  if (!v2)
  {
    type metadata accessor for DOCUIPBrowserContentMode(0);
    v15 = 0;
    sub_24936F6A0(&qword_27EEE2908, type metadata accessor for DOCUIPBrowserContentMode);
    sub_24938A78C();
    v11 = v16;
    type metadata accessor for DOCUIPDocumentLandingMode(0);
    v15 = 1;
    sub_24936F6A0(&qword_27EEE2910, type metadata accessor for DOCUIPDocumentLandingMode);
    sub_24938A78C();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void __swiftcall DOCUIPBrowserState.init()(DOCUIPBrowserState *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id DOCUIPBrowserState.init()()
{
  v1 = (v0 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *v1 = -1;
  v1[1] = -1;
  v3.super_class = DOCUIPBrowserState;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_24936FAB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentMode];
  *a2 = result;
  return result;
}

id sub_24936FB50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 documentLandingMode];
  *a2 = result;
  return result;
}

id DOCUIPBrowserState.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DOCUIPBrowserState__impl];
  *v4 = -1;
  *(v4 + 1) = -1;
  sub_24936FCA4(1819307369, 0xE400000000000000, &v9);
  if (v10 == 1)
  {

    type metadata accessor for DOCUIPBrowserState(v5);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *v4 = v9;
    v8.receiver = v2;
    v8.super_class = DOCUIPBrowserState;
    v7 = objc_msgSendSuper2(&v8, sel_init);

    return v7;
  }
}

uint64_t sub_24936FCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_249370B4C(0, &qword_27EEE2A28, 0x277CBEA90);
  v13 = a1;
  v14 = a2;

  MEMORY[0x24C1F5EA0](0x617461642DLL, 0xE500000000000000);
  v6 = sub_24938A5CC();

  if (!v6)
  {
    goto LABEL_4;
  }

  v8 = sub_24938A31C();
  v10 = v9;

  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_249370E14(v8, v10);
  v12 = sub_249370D54();
  sub_249370E68(v8, v10);
  if (!v12)
  {
    result = sub_249370E68(v8, v10);
LABEL_4:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return result;
  }

  sub_249370EBC();
  sub_24938A56C();
  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = (v15 & 1) != 0;
  [v12 finishDecoding];

  return sub_249370E68(v8, v10);
}

void sub_24936FE74()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_249370AF8();
  sub_24938A55C();
  [v1 finishEncoding];
  v2 = [v1 encodedData];
  if (v2)
  {
    v3 = v2;

    MEMORY[0x24C1F5EA0](0x617461642DLL, 0xE500000000000000);
    v4 = sub_24938A42C();

    [v0 encodeObject:v3 forKey:v4];
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCUIPBrowserState.debugDescription.getter()
{
  sub_24938A66C();
  MEMORY[0x24C1F5EA0](0xD000000000000023, 0x8000000249393B40);
  [v0 contentMode];
  type metadata accessor for DOCUIPBrowserContentMode(0);
  sub_24938A6FC();
  MEMORY[0x24C1F5EA0](0xD000000000000017, 0x8000000249393B70);
  [v0 documentLandingMode];
  type metadata accessor for DOCUIPDocumentLandingMode(0);
  sub_24938A6FC();
  MEMORY[0x24C1F5EA0](41, 0xE100000000000000);
  return 0;
}

void __swiftcall DOCUIPBrowserState._bridgeToObjectiveC()(DOCUIPBrowserState *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [objc_allocWithZone(DOCUIPBrowserState) init];
  v5 = &v4[OBJC_IVAR___DOCUIPBrowserState__impl];
  *v5 = v2;
  *(v5 + 1) = v3;
}

__n128 static DOCUIPBrowserState._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, __n128 *a2)
{
  result = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *a2 = result;
  a2[1].n128_u8[0] = 0;
  return result;
}

uint64_t static DOCUIPBrowserState._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *(a2 + 16) = 0;
  return 1;
}

uint64_t static DOCUIPBrowserState._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *(result + OBJC_IVAR___DOCUIPBrowserState__impl);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_249370270()
{
  v1 = *v0;
  v2 = v0[1];
  result = [objc_allocWithZone(DOCUIPBrowserState) init];
  v4 = &result[OBJC_IVAR___DOCUIPBrowserState__impl];
  *v4 = v1;
  *(v4 + 1) = v2;
  return result;
}

__n128 sub_2493702B8(uint64_t a1, __n128 *a2)
{
  result = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *a2 = result;
  a2[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2493702D0(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + OBJC_IVAR___DOCUIPBrowserState__impl);
  *(a2 + 16) = 0;
  return 1;
}

uint64_t sub_2493702EC@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *(result + OBJC_IVAR___DOCUIPBrowserState__impl);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCUIPBrowserContentMode.debugDescription.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      return 0x646572616873;
    }

    if (a1 == 2)
    {
      return 0x726573776F7262;
    }
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6669636570736E75;
    }

    if (!a1)
    {
      return 0x73746E65636572;
    }
  }

  type metadata accessor for DOCUIPBrowserContentMode(0);
  result = sub_24938A7DC();
  __break(1u);
  return result;
}

uint64_t sub_2493703CC()
{
  v1 = *v0;
  if (*v0 <= 0)
  {
    if (v1 == -1)
    {
      return 0x6669636570736E75;
    }

    if (!v1)
    {
      return 0x73746E65636572;
    }

    goto LABEL_11;
  }

  if (v1 == 1)
  {
    return 0x646572616873;
  }

  if (v1 != 2)
  {
LABEL_11:
    v3 = *v0;
    result = sub_24938A7DC();
    __break(1u);
    return result;
  }

  return 0x726573776F7262;
}

uint64_t DOCUIPDocumentLandingMode.debugDescription.getter(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      return 0x6669636570736E75;
    case 1:
      v1 = 1852401763;
      return v1 | 0x6F72622D00000000;
    case 0:
      v1 = 1819047270;
      return v1 | 0x6F72622D00000000;
  }

  type metadata accessor for DOCUIPDocumentLandingMode(0);
  result = sub_24938A7DC();
  __break(1u);
  return result;
}

uint64_t sub_249370528()
{
  v1 = *v0;
  if (*v0 == -1)
  {
    return 0x6669636570736E75;
  }

  if (v1 == 1)
  {
    v2 = 1852401763;
  }

  else
  {
    if (v1)
    {
      v4 = *v0;
      result = sub_24938A7DC();
      __break(1u);
      return result;
    }

    v2 = 1819047270;
  }

  return v2 | 0x6F72622D00000000;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCUIPBrowserState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCUIPBrowserState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCUIPBrowserState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCUIPBrowserState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2493707B4()
{
  result = qword_27EEE2998;
  if (!qword_27EEE2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2998);
  }

  return result;
}

unint64_t sub_24937080C()
{
  result = qword_27EEE29A0;
  if (!qword_27EEE29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE29A0);
  }

  return result;
}

unint64_t sub_249370864()
{
  result = qword_27EEE29A8;
  if (!qword_27EEE29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE29A8);
  }

  return result;
}

uint64_t sub_2493708C0(uint64_t a1, id *a2)
{
  result = sub_24938A43C();
  *a2 = 0;
  return result;
}

uint64_t sub_249370938(uint64_t a1, id *a2)
{
  v3 = sub_24938A44C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2493709B8@<X0>(uint64_t *a1@<X8>)
{
  sub_24938A45C();
  v2 = sub_24938A42C();

  *a1 = v2;
  return result;
}

uint64_t sub_2493709FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24938A45C();
  v6 = v5;
  if (v4 == sub_24938A45C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24938A7BC();
  }

  return v9 & 1;
}

uint64_t sub_249370A84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24938A42C();

  *a2 = v5;
  return result;
}

uint64_t sub_249370ACC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24938A45C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_249370AF8()
{
  result = qword_27EEE2A10;
  if (!qword_27EEE2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2A10);
  }

  return result;
}

uint64_t sub_249370B4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_249370B94(uint64_t a1)
{
  v2 = sub_24936F6A0(&qword_27EEE2A58, type metadata accessor for Name);
  v3 = sub_24936F6A0(&unk_27EEE2A60, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_249370C50()
{
  v1 = *v0;
  v2 = sub_24938A45C();
  v3 = MEMORY[0x24C1F5ED0](v2);

  return v3;
}

uint64_t sub_249370C8C()
{
  v1 = *v0;
  sub_24938A45C();
  sub_24938A47C();
}

uint64_t sub_249370CE0()
{
  v1 = *v0;
  sub_24938A45C();
  sub_24938A7FC();
  sub_24938A47C();
  v2 = sub_24938A80C();

  return v2;
}

id sub_249370D54()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24938A30C();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_24938A2AC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_249370E14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_249370E68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_249370EBC()
{
  result = qword_27EEE2A30;
  if (!qword_27EEE2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2A30);
  }

  return result;
}

void sub_249370F24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_249371068()
{
  v1 = [v0 identifier];
  v2 = sub_24938A45C();
  v4 = v3;

  v5 = v2 == 1702125924 && v4 == 0xE400000000000000;
  if (v5 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
LABEL_8:
      v8 = sub_24938A28C();
LABEL_9:
      v9 = v8;

      return v9;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = v2 == 0x69646F4D65746164 && v4 == 0xEC00000064656966;
  if (v10 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_42;
  }

  v11 = v2 == 0x6165724365746164 && v4 == 0xEB00000000646574;
  if (v11 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  if (v2 == 0x6564644165746164 && v4 == 0xE900000000000064 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  if (v2 == 1701667182 && v4 == 0xE400000000000000 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  if (v2 == 1684957547 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v12 = sub_24938A7BC();

    if ((v12 & 1) == 0)
    {
      v7 = [v0 identifier];
      v8 = sub_24938A45C();
      goto LABEL_9;
    }
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    goto LABEL_8;
  }

LABEL_46:
  __break(1u);
  return result;
}

id DOCSBFolderSortOrder.init(sortOrderIdentifier:)(uint64_t a1, uint64_t a2)
{
  return sub_249371F8C(a1, a2, &selRef_initWithSortOrderIdentifier_);
}

{
  v3 = (v2 + OBJC_IVAR___DOCSBFolderSortOrder_symbolName);
  *v3 = 0x656C63726963;
  v3[1] = 0xE600000000000000;
  v4 = (v2 + OBJC_IVAR___DOCSBFolderSortOrder_identifier);
  *v4 = a1;
  v4[1] = a2;
  *v3 = 0x656C63726963;
  v3[1] = 0xE600000000000000;
  v6.super_class = DOCSBFolderSortOrder;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2493716D0()
{
  v1 = [v0 identifier];
  v2 = sub_24938A45C();
  v4 = v3;

  v5 = v2 == 1702125924 && v4 == 0xE400000000000000;
  if (v5 || (sub_24938A7BC() & 1) != 0 || (v2 == 0x69646F4D65746164 ? (v6 = v4 == 0xEC00000064656966) : (v6 = 0), v6 || (sub_24938A7BC() & 1) != 0 || (v2 == 0x6165724365746164 ? (v7 = v4 == 0xEB00000000646574) : (v7 = 0), v7 || (sub_24938A7BC() & 1) != 0 || v2 == 0x6564644165746164 && v4 == 0xE900000000000064 || (sub_24938A7BC() & 1) != 0)))
  {

    return 0;
  }

  else if (v2 == 1701667182 && v4 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v9 = sub_24938A7BC();

    return v9 & 1;
  }
}

id DOCSBFolderSortOrder.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DOCSBFolderSortOrder_symbolName];
  *v4 = 0x656C63726963;
  *(v4 + 1) = 0xE600000000000000;
  sub_249370B4C(0, &qword_27EEE2B10, 0x277CCACA8);
  v5 = sub_24938A5CC();
  if (v5)
  {
    v6 = v5;
    v7 = sub_24938A45C();
    v8 = &v2[OBJC_IVAR___DOCSBFolderSortOrder_identifier];
    *v8 = v7;
    v8[1] = v9;
    v10 = *(v4 + 1);
    *v4 = 0x656C63726963;
    *(v4 + 1) = 0xE600000000000000;

    v15.receiver = v2;
    v15.super_class = DOCSBFolderSortOrder;
    v11 = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    v12 = *(v4 + 1);

    type metadata accessor for DOCSBFolderSortOrder(v13);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

uint64_t DOCSBFolderSortOrder.isEqual(_:)(uint64_t a1)
{
  v2 = sub_249378534(a1, v14, &qword_27EEE2B18, &qword_24938F530);
  if (!v15)
  {
    sub_249378744(v14, &qword_27EEE2B18, &qword_24938F530);
    goto LABEL_7;
  }

  type metadata accessor for DOCSBFolderSortOrder(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  v3 = [v1 identifier];
  v4 = sub_24938A45C();
  v6 = v5;

  v7 = [v13 identifier];
  v8 = sub_24938A45C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24938A7BC();
  }

  return v11 & 1;
}

id sub_249371C30(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_24938A42C();

  return v5;
}

id sub_249371CA0()
{
  v1 = [v0 identifier];
  v2 = sub_24938A45C();
  v4 = v3;

  v5 = v2 == 7233894 && v4 == 0xE300000000000000;
  if (v5 || (sub_24938A7BC() & 1) != 0)
  {

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
LABEL_8:
      v8 = sub_24938A28C();
LABEL_9:
      v9 = v8;

      return v9;
    }

    __break(1u);
  }

  else
  {
    if (v2 == 1684632167 && v4 == 0xE400000000000000)
    {
    }

    else
    {
      v11 = sub_24938A7BC();

      if ((v11 & 1) == 0)
      {
        v7 = [v0 identifier];
        v8 = sub_24938A45C();
        goto LABEL_9;
      }
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v7 = result;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

id sub_249371EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_24938A42C();

  return v6;
}

uint64_t sub_249371F30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24938A45C();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

id DOCSBFolderDisplayMode.init(displayModeIdentifier:)(uint64_t a1, uint64_t a2)
{
  return sub_249371F8C(a1, a2, &selRef_initWithDisplayModeIdentifier_);
}

{
  v5 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_symbolName];
  v6 = 0x656C63726963;
  v7 = 0xE600000000000000;
  *v5 = 0x656C63726963;
  v5[1] = 0xE600000000000000;
  v8 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  if (a1 != 7233894 || a2 != 0xE300000000000000)
  {
    if (sub_24938A7BC() & 1) == 0 && (a1 == 1684632167 && a2 == 0xE400000000000000 || (sub_24938A7BC()))
    {
      v7 = 0x8000000249393C90;
      v6 = 0xD000000000000014;
    }

    else
    {
      v7 = 0xE600000000000000;
      v6 = 0x656C63726963;
    }
  }

  *v5 = v6;
  v5[1] = v7;
  v10.receiver = v2;
  v10.super_class = DOCSBFolderDisplayMode;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_249371F8C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_24938A42C();

  v6 = [v4 *a3];

  return v6;
}

id _sSo20DOCSBFolderSortOrderC19DocumentManagerCoreE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id DOCSBFolderDisplayMode.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_symbolName];
  *v4 = 0x656C63726963;
  v4[1] = 0xE600000000000000;
  sub_249370B4C(0, &qword_27EEE2B10, 0x277CCACA8);
  v5 = sub_24938A5CC();
  if (!v5)
  {

    v17 = v4[1];

    type metadata accessor for DOCSBFolderDisplayMode(v18);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  v7 = sub_24938A45C();
  v8 = &v2[OBJC_IVAR___DOCSBFolderDisplayMode_identifier];
  *v8 = v7;
  v8[1] = v9;
  v11 = sub_24938A45C();
  v12 = v10;
  if ((v11 != 7233894 || v10 != 0xE300000000000000) && (sub_24938A7BC() & 1) == 0)
  {
    if (v11 == 1684632167 && v12 == 0xE400000000000000)
    {
    }

    else
    {
      v20 = sub_24938A7BC();

      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = 0x8000000249393C90;
    v14 = 0xD000000000000014;
    goto LABEL_7;
  }

LABEL_6:
  v13 = 0xE600000000000000;
  v14 = 0x656C63726963;
LABEL_7:
  v15 = v4[1];
  *v4 = v14;
  v4[1] = v13;

  v21.receiver = v2;
  v21.super_class = DOCSBFolderDisplayMode;
  v16 = objc_msgSendSuper2(&v21, sel_init);

  return v16;
}

void sub_2493723C8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = [v5 identifier];
  if (!v6)
  {
    sub_24938A45C();
    v6 = sub_24938A42C();
  }

  v7 = sub_24938A42C();
  [v4 encodeObject:v6 forKey:v7];
}

id _sSo20DOCSBFolderSortOrderC19DocumentManagerCoreEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_249372548(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4 + 8);
}

uint64_t sub_249372598()
{
  v0 = sub_24938A3AC();
  __swift_allocate_value_buffer(v0, qword_27EEE2AE0);
  __swift_project_value_buffer(v0, qword_27EEE2AE0);

  return sub_24938A39C();
}

uint64_t static Logger.sbSupport.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24938A3AC();
  v3 = __swift_project_value_buffer(v2, qword_27EEE2AE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_249372704()
{
  result = [objc_allocWithZone(DOCSBFolderManager) init];
  qword_27EEE2AF8 = result;
  return result;
}

id sub_2493727EC()
{
  v12 = sub_24938A58C();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_24938A57C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_24938A3DC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = OBJC_IVAR___DOCSBFolderManager_queue;
  v10[1] = sub_249370B4C(0, &qword_27EEE2BC0, 0x277D85C78);
  sub_24938A3CC();
  v15 = MEMORY[0x277D84F90];
  sub_24937880C(&qword_27EEE2BE8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BF0, &qword_24938F580);
  sub_249378854(&qword_27EEE2BF8, &qword_27EEE2BF0, &qword_24938F580);
  sub_24938A60C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v12);
  v6 = sub_24938A5BC();
  v7 = v13;
  *&v13[v11] = v6;
  v8 = OBJC_IVAR___DOCSBFolderManager_observers;
  *&v7[v8] = sub_249384CA0(MEMORY[0x277D84F90]);
  v14.receiver = v7;
  v14.super_class = DOCSBFolderManager;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_249372B10(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
  v5 = sub_24938A4EC();

  return v5;
}

id sub_249372BBC(uint64_t a1, uint64_t a2, Class *a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = objc_allocWithZone(*a3);
  v8 = sub_24938A42C();
  v9 = [v7 *a6];

  return v9;
}

uint64_t sub_249372D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v63 = a1;
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = (MEMORY[0x28223BE20])();
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v51 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v64 = v5[2];
  v64(&v51 - v22, a3, v4);
  v61 = v5[7];
  v61(v23, 0, 1, v4);
  sub_249378534(v23, v21, &unk_27EEE2B80, &qword_24938F548);
  v24 = v5[6];
  if (v24(v21, 1, v4) == 1)
  {
    sub_249378744(v23, &unk_27EEE2B80, &qword_24938F548);
    v25 = v21;
  }

  else
  {
    v57 = v24;
    v54 = v5[4];
    v55 = v5 + 4;
    v54(v12, v21, v4);
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v26 = sub_24938A3AC();
    __swift_project_value_buffer(v26, qword_27EEE2AE0);
    v27 = v60;
    v64(v60, v12, v4);
    v28 = v65;

    v29 = sub_24938A38C();
    v30 = sub_24938A53C();
    v56 = v12;
    v31 = v30;

    v53 = v31;
    if (os_log_type_enabled(v29, v31))
    {
      v32 = v27;
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68 = v52;
      *v33 = 136315650;
      *(v33 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394120, &v68);
      v51 = v29;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_249382D44(v63, v28, &v68);
      *(v33 + 22) = 2080;
      sub_24937880C(&qword_27EEE2DA0, MEMORY[0x277CC9260]);
      v34 = sub_24938A7AC();
      v36 = v35;
      v60 = v5[1];
      (v60)(v32, v4);
      v37 = sub_249382D44(v34, v36, &v68);
      v38 = v56;

      *(v33 + 24) = v37;
      v39 = v51;
      _os_log_impl(&dword_249340000, v51, v53, "%s identifier: %s url: %s", v33, 0x20u);
      v40 = v52;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v40, -1, -1);
      MEMORY[0x24C1F6C70](v33, -1, -1);

      v41 = v62;
    }

    else
    {

      v60 = v5[1];
      (v60)(v27, v4);
      v41 = v62;
      v38 = v56;
    }

    v42 = v66;
    [v66 _startObservingDistributedNotificationCenterIfNeeded];
    v64(v41, v38, v4);
    v61(v41, 0, 1, v4);
    v43 = [v42 observers];
    v44 = sub_24938A3FC();

    v68 = v44;
    if (v57(v41, 1, v4) == 1)
    {
      sub_249378744(v41, &unk_27EEE2B80, &qword_24938F548);
      v45 = v58;
      sub_2493777D4(v63, v65, v58);
      sub_249378744(v45, &unk_27EEE2B80, &qword_24938F548);
    }

    else
    {
      v46 = v59;
      v54(v59, v41, v4);
      v47 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v47;
      sub_2493841A0(v46, v63, v65, isUniquelyReferenced_nonNull_native);
      v68 = v67;
    }

    v49 = sub_24938A3EC();

    [v66 setObservers_];

    (v60)(v38, v4);
    v25 = v23;
  }

  return sub_249378744(v25, &unk_27EEE2B80, &qword_24938F548);
}

uint64_t sub_2493733F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v72 = a2;
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v65 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v66 = &v55[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v55[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v64 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v69 = &v55[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v55[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v55[-v22];
  v24 = v5[2];
  v24(&v55[-v22], a3, v4);
  v67 = v5[7];
  v68 = v5 + 7;
  v67(v23, 0, 1, v4);
  sub_249378534(v23, v21, &unk_27EEE2B80, &qword_24938F548);
  v25 = v5[6];
  if (v25(v21, 1, v4) == 1)
  {
    sub_249378744(v23, &unk_27EEE2B80, &qword_24938F548);
    v26 = v21;
  }

  else
  {
    v62 = v25;
    v63 = v23;
    v59 = v5[4];
    v60 = v5 + 4;
    v59(v12, v21, v4);
    v27 = v12;
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v28 = sub_24938A3AC();
    __swift_project_value_buffer(v28, qword_27EEE2AE0);
    v29 = v66;
    v24(v66, v27, v4);
    v30 = v72;

    v31 = v70;
    v61 = v27;
    v32 = sub_24938A38C();
    v33 = sub_24938A53C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v74[0] = v57;
      *v34 = 136315906;
      *(v34 + 4) = sub_249382D44(0xD000000000000028, 0x80000002493940F0, v74);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_249382D44(v71, v30, v74);
      *(v34 + 22) = 2080;
      sub_24937880C(&qword_27EEE2DA0, MEMORY[0x277CC9260]);
      v56 = v33;
      v35 = sub_24938A7AC();
      v58 = v5 + 6;
      v36 = v31;
      v38 = v37;
      v70 = v5[1];
      (v70)(v29, v4);
      v39 = sub_249382D44(v35, v38, v74);

      *(v34 + 24) = v39;
      *(v34 + 32) = 2080;
      v40 = [v36 observers];
      sub_24938A3FC();

      v31 = v36;
      v41 = sub_24938A40C();
      v43 = v42;

      v44 = sub_249382D44(v41, v43, v74);

      *(v34 + 34) = v44;
      _os_log_impl(&dword_249340000, v32, v56, "%s identifier: %s url: %s observers: %s", v34, 0x2Au);
      v45 = v57;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v45, -1, -1);
      MEMORY[0x24C1F6C70](v34, -1, -1);
    }

    else
    {

      v70 = v5[1];
      (v70)(v29, v4);
    }

    v46 = v69;
    v67(v69, 1, 1, v4);
    v47 = [v31 observers];
    v48 = sub_24938A3FC();

    v74[0] = v48;
    if (v62(v46, 1, v4) == 1)
    {
      sub_249378744(v46, &unk_27EEE2B80, &qword_24938F548);
      v49 = v64;
      sub_2493777D4(v71, v72, v64);
      sub_249378744(v49, &unk_27EEE2B80, &qword_24938F548);
    }

    else
    {
      v50 = v65;
      v59(v65, v46, v4);
      v51 = v74[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v51;
      sub_2493841A0(v50, v71, v72, isUniquelyReferenced_nonNull_native);
      v74[0] = v73;
    }

    v53 = sub_24938A3EC();

    [v31 setObservers_];

    [v31 _stopObservingDistributedNotificationCenterIfNeeded];
    (v70)(v61, v4);
    v26 = v63;
  }

  return sub_249378744(v26, &unk_27EEE2B80, &qword_24938F548);
}

uint64_t sub_249373B30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24938A45C();
  v14 = v13;
  sub_24938A2DC();
  v15 = a1;
  a5(v12, v14, v11);

  return (*(v8 + 8))(v11, v7);
}

id sub_249373C4C()
{
  v1 = v0;
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24938A3AC();
  __swift_project_value_buffer(v2, qword_27EEE2AE0);
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_249382D44(0xD00000000000001FLL, 0x80000002493940D0, &v8);
    _os_log_impl(&dword_249340000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  return [v1 _startObservingDistributedNotificationCenterIfNeeded];
}

id sub_249373DF4()
{
  v1 = v0;
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v2 = sub_24938A3AC();
  __swift_project_value_buffer(v2, qword_27EEE2AE0);
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_249382D44(0xD00000000000001ELL, 0x80000002493940B0, &v8);
    _os_log_impl(&dword_249340000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  return [v1 _stopObservingDistributedNotificationCenterIfNeeded];
}

uint64_t sub_249373F9C(void (*a1)(void, void, void))
{
  v309 = sub_24938A2FC();
  v2 = *(v309 - 8);
  v3 = *(v2 + 8);
  v4 = MEMORY[0x28223BE20](v309);
  v289 = v282 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v291 = v282 - v7;
  MEMORY[0x28223BE20](v6);
  v292 = v282 - v8;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B70, &qword_24938F538);
  v9 = *(v302[-1].isa + 8);
  v10 = MEMORY[0x28223BE20](v302);
  v293 = (v282 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v301 = v282 - v13;
  MEMORY[0x28223BE20](v12);
  v304 = (v282 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B78, &qword_24938F540);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v282 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v303 = v282 - v20;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v21 = *(*(v298 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v298);
  v299 = v282 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v282 - v25;
  MEMORY[0x28223BE20](v24);
  v310 = v282 - v27;
  v307 = sub_24938A27C();
  v305 = *(v307 - 8);
  v28 = *(v305 + 64);
  v29 = MEMORY[0x28223BE20](v307);
  v308 = v282 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v282 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v290 = v282 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v282 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v297 = v282 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v294 = v282 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v295 = v282 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = v282 - v45;
  v306 = a1;
  v47 = sub_24938A25C();
  v48 = sub_24938A45C();
  v50 = v49;
  v51 = sub_24938A45C();
  v288 = v38;
  if (v48 == v51 && v50 == v52)
  {

LABEL_6:
    v54 = DOCSBFolderProgressCompletedNotification;
    goto LABEL_13;
  }

  v53 = sub_24938A7BC();

  if (v53)
  {

    goto LABEL_6;
  }

  v55 = sub_24938A45C();
  v57 = v56;
  if (v55 == sub_24938A45C() && v57 == v58)
  {

LABEL_12:
    v54 = DOCSBFolderDidChangeNotification;
LABEL_13:
    v60 = v309;
    v61 = *v54;
    v62 = *(v2 + 7);
    v62(v310, 1, 1, v60);
    v63 = v306;
    v64 = sub_24938A26C();
    if (v64)
    {
      v65 = v64;
      v311 = sub_24938A45C();
      v312 = v66;
      sub_24938A64C();
      if (*(v65 + 16))
      {
        v67 = sub_249383364(&v313);
        if (v68)
        {
          sub_24937860C(*(v65 + 56) + 32 * v67, &v319);
          sub_249377724(&v313);

          if (*(&v320 + 1))
          {
            if (swift_dynamicCast())
            {
LABEL_23:
              v69 = sub_24938A26C();
              if (v69)
              {
                v70 = v69;
                *&v319 = sub_24938A45C();
                *(&v319 + 1) = v71;
                sub_24938A64C();
                if (*(v70 + 16))
                {
                  v72 = sub_249383364(&v313);
                  if (v73)
                  {
                    sub_24937860C(*(v70 + 56) + 32 * v72, &v319);
                    sub_249377724(&v313);

                    if (*(&v320 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v74 = v313;
                      }

                      else
                      {
                        v74 = 2;
                      }

LABEL_33:
                      v75 = sub_24938A26C();
                      if (v75)
                      {
                        v76 = v75;
                        v311 = sub_24938A45C();
                        v312 = v77;
                        sub_24938A64C();
                        if (*(v76 + 16))
                        {
                          v78 = sub_249383364(&v313);
                          if (v79)
                          {
                            sub_24937860C(*(v76 + 56) + 32 * v78, &v319);
                            sub_249377724(&v313);

                            if (*(&v320 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v286 = v74;
                                v284 = v62;
                                v300 = v61;
                                v80 = v322;
                                v308 = v2;
                                v282[1] = v2 + 56;
                                v285 = v314;
                                v283 = v313;
                                if (v322)
                                {
                                  v81 = v321;

                                  v82 = [v296 observers];
                                  v83 = sub_24938A3FC();

                                  v84 = *(v83 + 16);
                                  v85 = v307;
                                  v86 = v305;
                                  v302 = v81;
                                  if (v84)
                                  {
                                    v87 = sub_2493832EC(v81, v80);
                                    v88 = v26;
                                    if (v89)
                                    {
                                      (*(v2 + 2))(v26, *(v83 + 56) + *(v2 + 9) * v87, v309);
                                      v90 = 0;
                                    }

                                    else
                                    {
                                      v90 = 1;
                                    }
                                  }

                                  else
                                  {
                                    v90 = 1;
                                    v88 = v26;
                                  }

                                  v284(v88, v90, 1, v309);
                                  sub_24937859C(v88, v310);
                                  if (qword_27EEE28C0 != -1)
                                  {
                                    swift_once();
                                  }

                                  v145 = sub_24938A3AC();
                                  __swift_project_value_buffer(v145, qword_27EEE2AE0);
                                  v146 = v295;
                                  v303 = *(v86 + 16);
                                  (v303)(v295, v63, v85);

                                  v147 = sub_24938A38C();
                                  v148 = sub_24938A53C();

                                  if (os_log_type_enabled(v147, v148))
                                  {
                                    v149 = swift_slowAlloc();
                                    v150 = swift_slowAlloc();
                                    v313 = v150;
                                    *v149 = 136315906;
                                    *(v149 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v313);
                                    *(v149 + 12) = 2080;
                                    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
                                    v151 = sub_24938A7AC();
                                    v152 = v146;
                                    v154 = v153;
                                    v304 = *(v86 + 8);
                                    v304(v152, v307);
                                    v155 = sub_249382D44(v151, v154, &v313);

                                    *(v149 + 14) = v155;
                                    *(v149 + 22) = 2080;
                                    v156 = v310;
                                    swift_beginAccess();
                                    sub_249378534(v156, v299, &unk_27EEE2B80, &qword_24938F548);
                                    v157 = sub_24938A46C();
                                    v159 = sub_249382D44(v157, v158, &v313);

                                    *(v149 + 24) = v159;
                                    *(v149 + 32) = 2080;
                                    v63 = v306;
                                    v160 = sub_249382D44(v302, v80, &v313);

                                    *(v149 + 34) = v160;
                                    _os_log_impl(&dword_249340000, v147, v148, "%s notification: %s found existing observer for URL: %s for observerIdentifier: %s", v149, 0x2Au);
                                    swift_arrayDestroy();
                                    MEMORY[0x24C1F6C70](v150, -1, -1);
                                    MEMORY[0x24C1F6C70](v149, -1, -1);

LABEL_79:
                                    v191 = v297;
                                    if (qword_27EEE28C0 != -1)
                                    {
                                      swift_once();
                                    }

                                    v192 = sub_24938A3AC();
                                    v193 = __swift_project_value_buffer(v192, qword_27EEE2AE0);
                                    v194 = v307;
                                    (v303)(v191, v63, v307);
                                    v195 = sub_24938A38C();
                                    v196 = sub_24938A53C();
                                    if (os_log_type_enabled(v195, v196))
                                    {
                                      v197 = swift_slowAlloc();
                                      v198 = swift_slowAlloc();
                                      v302 = v193;
                                      v199 = v198;
                                      *&v319 = v198;
                                      *v197 = 136316162;
                                      *(v197 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v319);
                                      *(v197 + 12) = 2080;
                                      sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
                                      v200 = sub_24938A7AC();
                                      v201 = v191;
                                      v203 = v202;
                                      v304(v201, v194);
                                      v204 = sub_249382D44(v200, v203, &v319);

                                      *(v197 + 14) = v204;
                                      *(v197 + 22) = 2080;
                                      swift_beginAccess();
                                      v313 = v321;
                                      v314 = v322;

                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB0, &qword_24938F560);
                                      v205 = sub_24938A46C();
                                      v207 = sub_249382D44(v205, v206, &v319);

                                      *(v197 + 24) = v207;
                                      *(v197 + 32) = 2080;
                                      v208 = v310;
                                      swift_beginAccess();
                                      sub_249378534(v208, v299, &unk_27EEE2B80, &qword_24938F548);
                                      v209 = sub_24938A46C();
                                      v211 = sub_249382D44(v209, v210, &v319);

                                      *(v197 + 34) = v211;
                                      *(v197 + 42) = 2080;
                                      v63 = v306;
                                      LOBYTE(v313) = v286;
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB8, &qword_24938F568);
                                      v212 = sub_24938A46C();
                                      v214 = sub_249382D44(v212, v213, &v319);

                                      *(v197 + 44) = v214;
                                      _os_log_impl(&dword_249340000, v195, v196, "%s notification: %s identifier: %s notificationURL: %s isDownloadsFolder: %s", v197, 0x34u);
                                      swift_arrayDestroy();
                                      MEMORY[0x24C1F6C70](v199, -1, -1);
                                      MEMORY[0x24C1F6C70](v197, -1, -1);
                                    }

                                    else
                                    {

                                      v304(v191, v194);
                                    }

                                    v215 = v300;
                                    swift_beginAccess();
                                    v216 = v322;
                                    if (v322)
                                    {
                                      v217 = v321;

                                      v218 = v310;
                                      swift_beginAccess();
                                      sub_249377BE4(v215, v217, v216, v218, v286);

                                      v115 = v218;
                                      return sub_249378744(v115, &unk_27EEE2B80, &qword_24938F548);
                                    }

                                    if (v286 == 2 || (v286 & 1) == 0)
                                    {

                                      goto LABEL_51;
                                    }

                                    v219 = v292;
                                    sub_24938A2BC();
                                    v220 = sub_24938A2CC();
                                    v221 = *(v308 + 1);
                                    v221(v219, v309);
                                    v222 = [v220 pathExtension];
                                    if (v222)
                                    {

                                      v223 = [v220 URLByDeletingLastPathComponent];
                                      if (v223)
                                      {
                                        v224 = v291;
                                        v225 = v223;
                                        sub_24938A2DC();

                                        v226 = v288;
                                        v227 = v63;
                                        v228 = v307;
                                        (v303)(v288, v227, v307);
                                        v229 = *(v308 + 2);
                                        v230 = v289;
                                        v231 = v309;
                                        v308 += 16;
                                        v306 = v229;
                                        v229(v289, v224, v309);
                                        v232 = v285;

                                        v233 = sub_24938A38C();
                                        v234 = sub_24938A53C();

                                        if (os_log_type_enabled(v233, v234))
                                        {
                                          v235 = swift_slowAlloc();
                                          v303 = swift_slowAlloc();
                                          *&v319 = v303;
                                          *v235 = 136315906;
                                          *(v235 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v319);
                                          *(v235 + 12) = 2080;
                                          sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
                                          v302 = v233;
                                          v236 = sub_24938A7AC();
                                          LODWORD(v301) = v234;
                                          v238 = v237;
                                          v304(v226, v228);
                                          v239 = sub_249382D44(v236, v238, &v319);

                                          *(v235 + 14) = v239;
                                          *(v235 + 22) = 2080;
                                          v240 = sub_249382D44(v283, v232, &v319);

                                          *(v235 + 24) = v240;
                                          *(v235 + 32) = 2080;
                                          sub_24937880C(&qword_27EEE2DA0, MEMORY[0x277CC9260]);
                                          v241 = v289;
                                          v242 = sub_24938A7AC();
                                          v244 = v243;
                                          v221(v241, v231);
                                          v245 = sub_249382D44(v242, v244, &v319);

                                          *(v235 + 34) = v245;
                                          v246 = v302;
                                          _os_log_impl(&dword_249340000, v302, v301, "%s notification: %s observer identifier is nil and notification path: %s is Downloads folder: %s. Posting notification with no identifier.", v235, 0x2Au);
                                          v247 = v303;
                                          swift_arrayDestroy();
                                          MEMORY[0x24C1F6C70](v247, -1, -1);
                                          MEMORY[0x24C1F6C70](v235, -1, -1);
                                        }

                                        else
                                        {

                                          v221(v230, v231);
                                          v304(v226, v228);
                                        }

                                        v268 = v299;
                                        v269 = v291;
                                        v306(v299, v291, v231);
                                        v284(v268, 0, 1, v231);
                                        v270 = v300;
                                        sub_249377BE4(v300, 0, 0, v268, 1);

                                        sub_249378744(v268, &unk_27EEE2B80, &qword_24938F548);
                                        v221(v269, v231);

                                        v115 = v310;
                                        return sub_249378744(v115, &unk_27EEE2B80, &qword_24938F548);
                                      }
                                    }

                                    v248 = v290;
                                    v249 = v63;
                                    v250 = v307;
                                    (v303)(v290, v249, v307);
                                    v251 = v285;

                                    v252 = v220;
                                    v253 = sub_24938A38C();
                                    v254 = sub_24938A53C();

                                    if (!os_log_type_enabled(v253, v254))
                                    {

                                      v304(v248, v250);
                                      goto LABEL_51;
                                    }

                                    v255 = swift_slowAlloc();
                                    v309 = swift_slowAlloc();
                                    *&v319 = v309;
                                    *v255 = 136315906;
                                    *(v255 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v319);
                                    *(v255 + 12) = 2080;
                                    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
                                    v256 = sub_24938A7AC();
                                    v258 = v257;
                                    v304(v248, v250);
                                    v259 = sub_249382D44(v256, v258, &v319);

                                    *(v255 + 14) = v259;
                                    *(v255 + 22) = 2080;
                                    v260 = sub_249382D44(v283, v251, &v319);

                                    *(v255 + 24) = v260;
                                    *(v255 + 32) = 2080;
                                    v261 = v252;
                                    v262 = [v261 description];
                                    v263 = sub_24938A45C();
                                    v265 = v264;

                                    v266 = sub_249382D44(v263, v265, &v319);

                                    *(v255 + 34) = v266;
                                    _os_log_impl(&dword_249340000, v253, v254, "%s notification: %s observer identifier is nil and notification path: %s is Downloads folder: Could not determine Downloads folder URL from %s.", v255, 0x2Au);
                                    v267 = v309;
                                    swift_arrayDestroy();
                                    MEMORY[0x24C1F6C70](v267, -1, -1);
                                    MEMORY[0x24C1F6C70](v255, -1, -1);

                                    goto LABEL_49;
                                  }

                                  v161 = *(v86 + 8);
                                  v162 = v146;
                                  v163 = v85;
                                }

                                else
                                {
                                  v295 = sub_249377778();
                                  v287 = sub_24938A5EC();
                                  v118 = v117;
                                  v119 = [v296 observers];
                                  v120 = sub_24938A3FC();

                                  v121 = -1 << *(v120 + 32);
                                  v122 = ~v121;
                                  v123 = *(v120 + 64);
                                  v124 = -v121;
                                  if (v124 < 64)
                                  {
                                    v125 = ~(-1 << v124);
                                  }

                                  else
                                  {
                                    v125 = -1;
                                  }

                                  v313 = v120;
                                  v314 = v120 + 64;
                                  v126 = (v2 + 32);
                                  v315 = v122;
                                  v316 = 0;
                                  v317 = v125 & v123;
                                  v318 = 0;
                                  v127 = v309;
                                  while (1)
                                  {
                                    while (1)
                                    {
                                      while (1)
                                      {
                                        sub_249376458(v19);
                                        v128 = v303;
                                        sub_2493787A4(v19, v303, &qword_27EEE2B78, &qword_24938F540);
                                        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2BA0, &qword_24938F558);
                                        if ((*(*(v129 - 8) + 48))(v128, 1, v129) == 1)
                                        {
                                          sub_2493777CC();

                                          goto LABEL_73;
                                        }

                                        v130 = v19;
                                        v131 = &v128[*(v129 + 48)];
                                        v132 = *v131;
                                        v133 = *(v131 + 1);
                                        v134 = v302;
                                        isa_low = SLODWORD(v302[6].isa);
                                        v136 = *v126;
                                        v137 = v301;
                                        (*v126)(&v301[isa_low], &v131[isa_low], v127);
                                        v138 = SLODWORD(v134[6].isa);
                                        v139 = v304;
                                        *v304 = v132;
                                        *(v139 + 1) = v133;
                                        v140 = v139;
                                        v136(&v139[v138], &v137[isa_low], v127);
                                        if (v118)
                                        {
                                          break;
                                        }

                                        sub_249378744(v140, &qword_27EEE2B70, &qword_24938F538);
                                        v19 = v130;
                                      }

                                      *&v319 = sub_24938A2EC();
                                      *(&v319 + 1) = v141;
                                      sub_24938A5EC();
                                      v142 = v308;
                                      v19 = v130;
                                      if (v143)
                                      {
                                        break;
                                      }

                                      sub_249378744(v140, &qword_27EEE2B70, &qword_24938F538);
                                    }

                                    v144 = sub_2493768C4();

                                    if (v144)
                                    {
                                      break;
                                    }

                                    sub_249378744(v304, &qword_27EEE2B70, &qword_24938F538);
                                  }

                                  sub_2493777CC();

                                  v164 = v304;
                                  v165 = v293;
                                  sub_249378534(v304, v293, &qword_27EEE2B70, &qword_24938F538);
                                  v166 = v165[1];
                                  v167 = v302;
                                  v168 = SLODWORD(v302[6].isa);
                                  v321 = *v165;
                                  v322 = v166;

                                  v169 = v309;
                                  v142[1](v165 + v168, v309);
                                  v170 = v310;
                                  sub_249378744(v310, &unk_27EEE2B80, &qword_24938F548);
                                  sub_2493787A4(v164, v165, &qword_27EEE2B70, &qword_24938F538);
                                  v171 = v165[1];

                                  v136(v170, v165 + SLODWORD(v167[6].isa), v169);
                                  v284(v170, 0, 1, v169);
LABEL_73:
                                  v172 = v307;
                                  v173 = v305;
                                  v63 = v306;
                                  v174 = v294;
                                  if (qword_27EEE28C0 != -1)
                                  {
                                    swift_once();
                                  }

                                  v175 = sub_24938A3AC();
                                  __swift_project_value_buffer(v175, qword_27EEE2AE0);
                                  v303 = *(v173 + 16);
                                  (v303)(v174, v63, v172);
                                  v176 = sub_24938A38C();
                                  v177 = sub_24938A53C();
                                  if (os_log_type_enabled(v176, v177))
                                  {
                                    v178 = swift_slowAlloc();
                                    v179 = swift_slowAlloc();
                                    *&v319 = v179;
                                    *v178 = 136315906;
                                    *(v178 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v319);
                                    *(v178 + 12) = 2080;
                                    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
                                    v180 = sub_24938A7AC();
                                    v182 = v181;
                                    v304 = *(v173 + 8);
                                    v304(v174, v172);
                                    v183 = sub_249382D44(v180, v182, &v319);

                                    *(v178 + 14) = v183;
                                    *(v178 + 22) = 2080;
                                    swift_beginAccess();
                                    v313 = v321;
                                    v314 = v322;

                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB0, &qword_24938F560);
                                    v184 = sub_24938A46C();
                                    v186 = sub_249382D44(v184, v185, &v319);

                                    *(v178 + 24) = v186;
                                    *(v178 + 32) = 2080;
                                    v187 = v310;
                                    swift_beginAccess();
                                    sub_249378534(v187, v299, &unk_27EEE2B80, &qword_24938F548);
                                    v188 = sub_24938A46C();
                                    v190 = sub_249382D44(v188, v189, &v319);

                                    *(v178 + 34) = v190;
                                    _os_log_impl(&dword_249340000, v176, v177, "%s notification: %s tried finding observer identifier: %s and found URL: %s", v178, 0x2Au);
                                    swift_arrayDestroy();
                                    MEMORY[0x24C1F6C70](v179, -1, -1);
                                    MEMORY[0x24C1F6C70](v178, -1, -1);

                                    goto LABEL_79;
                                  }

                                  v161 = *(v173 + 8);
                                  v162 = v174;
                                  v163 = v172;
                                }

                                v304 = v161;
                                v161(v162, v163);
                                goto LABEL_79;
                              }

LABEL_45:
                              v91 = v307;
                              v92 = v305;
                              v93 = v308;
                              if (qword_27EEE28C0 != -1)
                              {
                                swift_once();
                              }

                              v94 = sub_24938A3AC();
                              __swift_project_value_buffer(v94, qword_27EEE2AE0);
                              v95 = *(v92 + 16);
                              v95(v33, v63, v91);
                              v95(v93, v63, v91);
                              v96 = sub_24938A38C();
                              v97 = sub_24938A54C();
                              if (!os_log_type_enabled(v96, v97))
                              {

                                v114 = *(v92 + 8);
                                v114(v93, v91);
                                v114(v33, v91);
                                goto LABEL_51;
                              }

                              v98 = swift_slowAlloc();
                              v99 = swift_slowAlloc();
                              v313 = v99;
                              *v98 = 136315906;
                              *(v98 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v313);
                              *(v98 + 12) = 2080;
                              sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
                              v100 = sub_24938A7AC();
                              v300 = v61;
                              v101 = v91;
                              v103 = v102;
                              v104 = *(v92 + 8);
                              v104(v33, v101);
                              v105 = sub_249382D44(v100, v103, &v313);

                              *(v98 + 14) = v105;
                              *(v98 + 22) = 2080;
                              v106 = sub_24938A45C();
                              v108 = sub_249382D44(v106, v107, &v313);

                              *(v98 + 24) = v108;
                              *(v98 + 32) = 2080;
                              v109 = v308;
                              *&v319 = sub_24938A26C();
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B90, &qword_24938F550);
                              v110 = sub_24938A46C();
                              v112 = v111;
                              v104(v109, v101);
                              v113 = sub_249382D44(v110, v112, &v313);

                              *(v98 + 34) = v113;
                              _os_log_impl(&dword_249340000, v96, v97, "%s notification: %s did not contain expected value for key: %s userInfo: %s", v98, 0x2Au);
                              swift_arrayDestroy();
                              MEMORY[0x24C1F6C70](v99, -1, -1);
                              MEMORY[0x24C1F6C70](v98, -1, -1);

LABEL_49:
LABEL_51:

                              v115 = v310;
                              return sub_249378744(v115, &unk_27EEE2B80, &qword_24938F548);
                            }

LABEL_44:
                            sub_249378744(&v319, &qword_27EEE2B18, &qword_24938F530);
                            goto LABEL_45;
                          }
                        }

                        sub_249377724(&v313);
                      }

                      v319 = 0u;
                      v320 = 0u;
                      goto LABEL_44;
                    }

LABEL_32:
                    sub_249378744(&v319, &qword_27EEE2B18, &qword_24938F530);
                    v74 = 2;
                    goto LABEL_33;
                  }
                }

                sub_249377724(&v313);
              }

              v319 = 0u;
              v320 = 0u;
              goto LABEL_32;
            }

LABEL_22:
            v321 = 0;
            v322 = 0;
            goto LABEL_23;
          }

LABEL_21:
          sub_249378744(&v319, &qword_27EEE2B18, &qword_24938F530);
          goto LABEL_22;
        }
      }

      sub_249377724(&v313);
    }

    v319 = 0u;
    v320 = 0u;
    goto LABEL_21;
  }

  v59 = sub_24938A7BC();

  if (v59)
  {

    goto LABEL_12;
  }

  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v271 = sub_24938A3AC();
  __swift_project_value_buffer(v271, qword_27EEE2AE0);
  (*(v305 + 16))(v46, v306, v307);
  v272 = sub_24938A38C();
  v273 = sub_24938A54C();
  if (os_log_type_enabled(v272, v273))
  {
    v274 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v313 = v275;
    *v274 = 136315394;
    *(v274 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v313);
    *(v274 + 12) = 2080;
    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
    v276 = v307;
    v277 = sub_24938A7AC();
    v279 = v278;
    (*(v305 + 8))(v46, v276);
    v280 = sub_249382D44(v277, v279, &v313);

    *(v274 + 14) = v280;
    _os_log_impl(&dword_249340000, v272, v273, "%s unexpected notification: %s", v274, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v275, -1, -1);
    MEMORY[0x24C1F6C70](v274, -1, -1);
  }

  else
  {

    (*(v305 + 8))(v46, v307);
  }

  v313 = 0;
  v314 = 0xE000000000000000;
  sub_24938A66C();

  v313 = 0xD00000000000001ELL;
  v314 = 0x8000000249394020;
  sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
  v281 = sub_24938A7AC();
  MEMORY[0x24C1F5EA0](v281);

  result = sub_24938A70C();
  __break(1u);
  return result;
}

uint64_t sub_249376458@<X0>(uint64_t a1@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2BA0, &qword_24938F558);
  v51 = *(v54 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v47 = (&v46 - v4);
  v5 = sub_24938A2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BE0, &qword_24938F578);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2B70, &qword_24938F538);
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v46 = v18;
  v55 = v22;
  if (!v23)
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v38 = v52;
        v33 = v53;
        v37 = v19;
        (*(v52 + 56))(v13, 1, 1, v53);
        v39 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v48 = v13;
        v50 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v48 = v13;
  v50 = a1;
  v24 = v21;
LABEL_11:
  v49 = (v23 - 1) & v23;
  v28 = __clz(__rbit64(v23)) | (v24 << 6);
  v29 = (*(v19 + 48) + 16 * v28);
  v30 = *v29;
  v31 = v29[1];
  v32 = v19;
  (*(v6 + 16))(v9, *(v19 + 56) + *(v6 + 72) * v28, v5);
  v33 = v53;
  v34 = *(v53 + 48);
  v35 = v48;
  *v48 = v30;
  *(v35 + 1) = v31;
  v36 = v5;
  v37 = v32;
  v13 = v35;
  (*(v6 + 32))(&v35[v34], v9, v36);
  v38 = v52;
  (*(v52 + 56))(v13, 0, 1, v33);

  v39 = v49;
  a1 = v50;
  v27 = v24;
LABEL_12:
  *v1 = v37;
  v1[1] = v20;
  v1[2] = v55;
  v1[3] = v27;
  v1[4] = v39;
  if ((*(v38 + 48))(v13, 1, v33) == 1)
  {
    sub_249378744(v13, &qword_27EEE2BE0, &qword_24938F578);
    return (*(v51 + 56))(a1, 1, 1, v54);
  }

  v40 = v13;
  v41 = v46;
  sub_2493787A4(v40, v46, &qword_27EEE2B70, &qword_24938F538);
  v42 = v54;
  v43 = *(v54 + 48);
  v44 = v1[5];
  v45 = v47;
  *v47 = v44;
  result = sub_2493787A4(v41, v45 + v43, &qword_27EEE2B70, &qword_24938F538);
  if (__OFADD__(v44, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v44 + 1;
  sub_2493787A4(v45, a1, &unk_27EEE2BA0, &qword_24938F558);
  return (*(v51 + 56))(a1, 0, 1, v42);
}

uint64_t sub_2493768C4()
{

  v0 = sub_24938A49C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_24938A49C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_24938A7BC();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_24938A49C();
      v3 = v5;
    }

    while (v5);
  }

  sub_24938A49C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_249376B08(void *a1)
{
  v2 = sub_24938A27C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  memset(v28, 0, sizeof(v28));
  v10 = a1;

  sub_24938A24C();
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24938A3AC();
  __swift_project_value_buffer(v11, qword_27EEE2AE0);
  (*(v3 + 16))(v7, v9, v2);
  v12 = sub_24938A38C();
  v13 = sub_24938A53C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v28[0] = v27;
    *v14 = 136315394;
    *(v14 + 4) = sub_249382D44(0xD00000000000003ELL, 0x8000000249394070, v28);
    *(v14 + 12) = 2080;
    sub_24937880C(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
    v15 = sub_24938A7AC();
    v16 = v2;
    v18 = v17;
    v26 = v13;
    v19 = *(v3 + 8);
    v19(v7, v16);
    v20 = sub_249382D44(v15, v18, v28);
    v2 = v16;

    *(v14 + 14) = v20;
    _os_log_impl(&dword_249340000, v12, v26, "%s posting notification for download completed: %s", v14, 0x16u);
    v21 = v27;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v21, -1, -1);
    MEMORY[0x24C1F6C70](v14, -1, -1);
  }

  else
  {

    v19 = *(v3 + 8);
    v19(v7, v2);
  }

  v22 = [objc_opt_self() defaultCenter];
  v23 = sub_24938A22C();
  [v22 postNotification_];

  return (v19)(v9, v2);
}

void sub_249376E78()
{
  v1 = v0;
  v2 = [v0 observers];
  sub_24938A2FC();
  v3 = sub_24938A3FC();

  v4 = *(v3 + 16);

  if (!v4)
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v5 = sub_24938A3AC();
    __swift_project_value_buffer(v5, qword_27EEE2AE0);
    v6 = sub_24938A38C();
    v7 = sub_24938A53C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_249382D44(0xD000000000000036, 0x8000000249393FB0, &v28);
      *(v8 + 12) = 2080;
      v27 = @"DOCSBFolderProgressCompletedDistributedNotification";
      type metadata accessor for Name(0);
      v10 = @"DOCSBFolderProgressCompletedDistributedNotification";
      v11 = sub_24938A46C();
      v13 = sub_249382D44(v11, v12, &v28);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_249340000, v6, v7, "%s starting observing for notification name: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v9, -1, -1);
      MEMORY[0x24C1F6C70](v8, -1, -1);
    }

    else
    {

      v10 = @"DOCSBFolderProgressCompletedDistributedNotification";
    }

    sub_249370B4C(0, &qword_27EEE2CD0, 0x277CCA9A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = &selRef_canDisconnect;
    v16 = [ObjCClassFromMetadata defaultCenter];
    v17 = &unk_278F9C000;
    [v16 addObserver:v1 selector:sel__handleDistributedNotification_ name:v10 object:0];

    v18 = sub_24938A38C();
    v19 = sub_24938A53C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_249382D44(0xD000000000000036, 0x8000000249393FB0, &v28);
      *(v20 + 12) = 2080;
      v27 = @"DOCSBFolderDidChangeDistributedNotification";
      type metadata accessor for Name(0);
      v22 = @"DOCSBFolderDidChangeDistributedNotification";
      v23 = sub_24938A46C();
      v25 = sub_249382D44(v23, v24, &v28);
      v15 = &selRef_canDisconnect;

      *(v20 + 14) = v25;
      v17 = &unk_278F9C000;
      _os_log_impl(&dword_249340000, v18, v19, "%s starting observing for notification name: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v21, -1, -1);
      MEMORY[0x24C1F6C70](v20, -1, -1);
    }

    else
    {

      v22 = @"DOCSBFolderDidChangeDistributedNotification";
    }

    v26 = [ObjCClassFromMetadata v15[76]];
    [v26 v17[441]];
  }
}

void sub_2493772BC()
{
  v1 = v0;
  v2 = [v0 observers];
  sub_24938A2FC();
  v3 = sub_24938A3FC();

  v4 = *(v3 + 16);

  if (!v4)
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v5 = sub_24938A3AC();
    __swift_project_value_buffer(v5, qword_27EEE2AE0);
    v6 = sub_24938A38C();
    v7 = sub_24938A53C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_249382D44(0xD000000000000035, 0x8000000249393F70, &v25);
      *(v8 + 12) = 2080;
      type metadata accessor for Name(0);
      v10 = @"DOCSBFolderProgressCompletedDistributedNotification";
      v11 = sub_24938A46C();
      v13 = sub_249382D44(v11, v12, &v25);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_249340000, v6, v7, "%s stopping observing for notification name: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v9, -1, -1);
      MEMORY[0x24C1F6C70](v8, -1, -1);
    }

    sub_249370B4C(0, &qword_27EEE2CD0, 0x277CCA9A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [ObjCClassFromMetadata defaultCenter];
    [v15 removeObserver:v1 name:@"DOCSBFolderDidChangeDistributedNotification" object:0];

    v16 = sub_24938A38C();
    v17 = sub_24938A53C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_249382D44(0xD000000000000035, 0x8000000249393F70, &v25);
      *(v18 + 12) = 2080;
      type metadata accessor for Name(0);
      v20 = @"DOCSBFolderDidChangeDistributedNotification";
      v21 = sub_24938A46C();
      v23 = sub_249382D44(v21, v22, &v25);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_249340000, v16, v17, "%s stopping observing for notification name: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v19, -1, -1);
      MEMORY[0x24C1F6C70](v18, -1, -1);
    }

    v24 = [ObjCClassFromMetadata defaultCenter];
    [v24 removeObserver:v1 name:@"DOCSBFolderDidChangeDistributedNotification" object:0];
  }
}

unint64_t sub_249377778()
{
  result = qword_27EEE2B98;
  if (!qword_27EEE2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEE2B98);
  }

  return result;
}

uint64_t sub_2493777D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2493832EC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_249384710();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_24938A2FC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_249383E04(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_24938A2FC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_249377944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2C00, &qword_24938F588);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24938F510;
  v1 = objc_allocWithZone(DOCSBFolderSortOrder);
  v2 = sub_24938A42C();
  v3 = [v1 initWithSortOrderIdentifier_];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(DOCSBFolderSortOrder);
  v5 = sub_24938A42C();
  v6 = [v4 initWithSortOrderIdentifier_];

  *(v0 + 40) = v6;
  v7 = objc_allocWithZone(DOCSBFolderSortOrder);
  v8 = sub_24938A42C();
  v9 = [v7 initWithSortOrderIdentifier_];

  *(v0 + 48) = v9;
  v10 = objc_allocWithZone(DOCSBFolderSortOrder);
  v11 = sub_24938A42C();
  v12 = [v10 initWithSortOrderIdentifier_];

  *(v0 + 56) = v12;
  v13 = objc_allocWithZone(DOCSBFolderSortOrder);
  v14 = sub_24938A42C();
  v15 = [v13 initWithSortOrderIdentifier_];

  *(v0 + 64) = v15;
  return v0;
}

uint64_t sub_249377B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2C00, &qword_24938F588);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24938F520;
  v1 = objc_allocWithZone(DOCSBFolderDisplayMode);
  v2 = sub_24938A42C();
  v3 = [v1 initWithDisplayModeIdentifier_];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(DOCSBFolderDisplayMode);
  v5 = sub_24938A42C();
  v6 = [v4 initWithDisplayModeIdentifier_];

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_249377BE4(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v78 = a5;
  v82 = a2;
  v8 = sub_24938A3BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24938A3DC();
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v12);
  v79 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24938A2FC();
  v75 = *(v76 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v17 = *(*(v72 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v72);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v67 - v24;
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v26 = sub_24938A3AC();
  __swift_project_value_buffer(v26, qword_27EEE2AE0);
  v74 = a4;
  sub_249378534(a4, v25, &unk_27EEE2B80, &qword_24938F548);

  v27 = a1;
  v28 = sub_24938A38C();
  v29 = sub_24938A54C();

  v30 = os_log_type_enabled(v28, v29);
  v77 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v69 = v12;
    v32 = v31;
    v68 = swift_slowAlloc();
    *&v85 = v68;
    *v32 = 136315906;
    *(v32 + 4) = sub_249382D44(0xD00000000000003ELL, 0x8000000249394070, &v85);
    v71 = v8;
    *(v32 + 12) = 2080;
    aBlock = v27;
    type metadata accessor for Name(0);
    v70 = v9;
    v33 = v27;
    v34 = sub_24938A46C();
    v36 = sub_249382D44(v34, v35, &v85);

    *(v32 + 14) = v36;
    *(v32 + 22) = 2080;
    aBlock = v82;
    v88 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BB0, &qword_24938F560);
    v37 = sub_24938A46C();
    v39 = sub_249382D44(v37, v38, &v85);

    *(v32 + 24) = v39;
    *(v32 + 32) = 2080;
    sub_249378534(v25, v23, &unk_27EEE2B80, &qword_24938F548);
    v40 = sub_24938A46C();
    v42 = v41;
    v9 = v70;
    sub_249378744(v25, &unk_27EEE2B80, &qword_24938F548);
    v43 = sub_249382D44(v40, v42, &v85);
    v8 = v71;

    *(v32 + 34) = v43;
    _os_log_impl(&dword_249340000, v28, v29, "%s request to post notification: %s identifier: %s url: %s", v32, 0x2Au);
    v44 = v68;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v44, -1, -1);
    v45 = v32;
    v12 = v69;
    MEMORY[0x24C1F6C70](v45, -1, -1);
  }

  else
  {

    sub_249378744(v25, &unk_27EEE2B80, &qword_24938F548);
  }

  v46 = MEMORY[0x277D84F90];
  v47 = sub_249384E8C(MEMORY[0x277D84F90]);
  if (a3)
  {
    *&v85 = sub_24938A45C();
    *(&v85 + 1) = v48;

    v49 = MEMORY[0x277D837D0];
    sub_24938A64C();
    v86 = v49;
    *&v85 = v82;
    *(&v85 + 1) = a3;
    sub_2493786D0(&v85, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v47;
    sub_249384320(v84, &aBlock, isUniquelyReferenced_nonNull_native);
    sub_249377724(&aBlock);
    v47 = v83;
  }

  sub_249378534(v74, v20, &unk_27EEE2B80, &qword_24938F548);
  v51 = v75;
  v52 = v76;
  if ((*(v75 + 48))(v20, 1, v76) == 1)
  {
    sub_249378744(v20, &unk_27EEE2B80, &qword_24938F548);
  }

  else
  {
    v53 = v73;
    (*(v51 + 32))(v73, v20, v52);
    *&v85 = sub_24938A45C();
    *(&v85 + 1) = v54;
    sub_24938A64C();
    v86 = v52;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v85);
    (*(v51 + 16))(boxed_opaque_existential_0, v53, v52);
    sub_2493786D0(&v85, v84);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v47;
    sub_249384320(v84, &aBlock, v56);
    sub_249377724(&aBlock);
    (*(v51 + 8))(v53, v52);
    v47 = v83;
  }

  if (v78 != 2 && (v78 & 1) != 0)
  {
    *&v85 = sub_24938A45C();
    *(&v85 + 1) = v57;
    sub_24938A64C();
    v86 = MEMORY[0x277D839B0];
    LOBYTE(v85) = 1;
    sub_2493786D0(&v85, v84);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v47;
    sub_249384320(v84, &aBlock, v58);
    sub_249377724(&aBlock);
    v47 = v83;
  }

  sub_249370B4C(0, &qword_27EEE2BC0, 0x277D85C78);
  v59 = sub_24938A59C();
  v60 = swift_allocObject();
  v61 = v77;
  *(v60 + 16) = v77;
  *(v60 + 24) = v47;
  v91 = sub_249378668;
  v92 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = sub_249378924;
  v90 = &block_descriptor;
  v62 = _Block_copy(&aBlock);
  v63 = v61;

  v64 = v79;
  sub_24938A3CC();
  aBlock = v46;
  sub_24937880C(&qword_27EEE2BC8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2BD0, &qword_24938F570);
  sub_249378854(&qword_27EEE2BD8, &qword_27EEE2BD0, &qword_24938F570);
  v65 = v81;
  sub_24938A60C();
  MEMORY[0x24C1F5FC0](0, v64, v65, v62);
  _Block_release(v62);

  (*(v9 + 8))(v65, v8);
  return (*(v80 + 8))(v64, v12);
}

uint64_t sub_249378534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24937859C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24937860C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_2493786D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_249378744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2493787A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24937880C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249378854(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_249378924(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2493789F0(uint64_t a1, uint64_t a2)
{
  sub_24938A51C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_249378D2C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_24938A66C();
    MEMORY[0x24C1F5EA0](0xD00000000000003FLL, 0x80000002493944B0);
    v8 = sub_24938A85C();
    MEMORY[0x24C1F5EA0](v8);

    MEMORY[0x24C1F5EA0](46, 0xE100000000000000);
    result = sub_24938A70C();
    __break(1u);
  }

  return result;
}

void sub_249378BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[4] = a4;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_249378924;
  v13[3] = a5;
  v12 = _Block_copy(v13);

  a6(v12);
  _Block_release(v12);
}

uint64_t sub_249378C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24938A52C();
  v7[2] = a1;
  v7[3] = a2;
  return sub_2493789F0(a3, v7);
}

uint64_t sub_249378D2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_249378D54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_249378F84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24938A37C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CD8, &qword_24938F5A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = *(v1 + OBJC_IVAR___DOCSBRecentItem_backingNode);
  if (v12)
  {
    v13 = [v12 contentType];
    sub_24938A33C();

    v14 = *(v4 + 32);
    v14(v11, v7, v3);
    (*(v4 + 56))(v11, 0, 1, v3);
    return (v14)(a1, v11, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
    sub_24938A34C();
    result = (*(v4 + 48))(v11, 1, v3);
    if (result != 1)
    {
      return sub_249378744(v11, &qword_27EEE2CD8, &qword_24938F5A8);
    }
  }

  return result;
}

uint64_t sub_24937917C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_24938A2DC();
    v12 = sub_24938A2FC();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_24938A2FC();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_249378744(v9, &unk_27EEE2B80, &qword_24938F548);
}

void sub_24937933C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_24937CE94(a1, &v11 - v6);
  v8 = sub_24938A2FC();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_24938A2CC();
    (*(v9 + 8))(v7, v8);
  }

  (*(a2 + 16))(a2, v10);
}

id sub_2493794E0()
{
  result = [objc_allocWithZone(DOCSBRecentItemsList) init];
  qword_2810E1B40 = result;
  return result;
}

id sub_249379590()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136316162;
    *(v5 + 4) = sub_249382D44(0xD000000000000010, 0x8000000249394860, &v19);
    *(v5 + 12) = 2080;
    v7 = [v2 _recentsQueryCollection];
    v8 = [v7 description];
    v9 = sub_24938A45C();
    v11 = v10;

    v12 = sub_249382D44(v9, v11, &v19);

    *(v5 + 14) = v12;
    *(v5 + 22) = 1024;
    v13 = [v2 _recentsQueryCollection];
    LODWORD(v8) = [v13 isGathering];

    *(v5 + 24) = v8;
    *(v5 + 28) = 1024;
    LODWORD(v13) = [v2 _isObserving];

    *(v5 + 30) = v13;
    *(v5 + 34) = 2080;
    v18 = [v2 _recentsCollectionExpirationTimer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
    v14 = sub_24938A46C();
    v16 = sub_249382D44(v14, v15, &v19);

    *(v5 + 36) = v16;
    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  [v2 _startObservingRecentsCollection];
  return [v2 _registerForDistributedNotification];
}

id sub_2493798BC()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136316162;
    *(v5 + 4) = sub_249382D44(0x6573624F706F7473, 0xEF2928676E697672, &v19);
    *(v5 + 12) = 2080;
    v7 = [v2 _recentsQueryCollection];
    v8 = [v7 description];
    v9 = sub_24938A45C();
    v11 = v10;

    v12 = sub_249382D44(v9, v11, &v19);

    *(v5 + 14) = v12;
    *(v5 + 22) = 1024;
    v13 = [v2 _recentsQueryCollection];
    LODWORD(v8) = [v13 isGathering];

    *(v5 + 24) = v8;
    *(v5 + 28) = 1024;
    LODWORD(v13) = [v2 _isObserving];

    *(v5 + 30) = v13;
    *(v5 + 34) = 2080;
    v18 = [v2 _recentsCollectionExpirationTimer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
    v14 = sub_24938A46C();
    v16 = sub_249382D44(v14, v15, &v19);

    *(v5 + 36) = v16;
    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v6, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  return [v2 _stopObservingRecentsCollection];
}

id sub_249379D04()
{
  v1 = OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection;
  v2 = *(v0 + OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection);
  }

  else
  {
    v4 = [objc_opt_self() defaultManager];
    v5 = [v4 newRecentsCollection];

    [v5 setDelegate_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_249379DFC()
{
  v1 = v0;
  v2 = sub_24938A42C();
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v3 = sub_24938A3AC();
  __swift_project_value_buffer(v3, qword_27EEE2AE0);
  v4 = v2;
  v5 = sub_24938A38C();
  v6 = sub_24938A53C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_249382D44(0xD000000000000025, 0x8000000249394830, &v14);
    *(v7 + 12) = 2080;
    type metadata accessor for Name(0);
    v9 = v4;
    v10 = sub_24938A46C();
    v12 = sub_249382D44(v10, v11, &v14);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_249340000, v5, v6, "%s starting observing for notification name: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v8, -1, -1);
    MEMORY[0x24C1F6C70](v7, -1, -1);
  }

  sub_249370B4C(0, &qword_27EEE2CD0, 0x277CCA9A0);
  v13 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v13 addObserver:v1 selector:sel__handleDistributedNotification_ name:v4 object:0];
}

void sub_24937A0DC()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v5 = 136316162;
    *(v5 + 4) = sub_249382D44(0xD000000000000022, 0x80000002493947D0, aBlock);
    *(v5 + 12) = 2080;
    v6 = [v2 _recentsQueryCollection];
    v7 = [v6 description];
    v8 = sub_24938A45C();
    v10 = v9;

    v11 = sub_249382D44(v8, v10, aBlock);

    *(v5 + 14) = v11;
    *(v5 + 22) = 1024;
    v12 = [v2 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    LODWORD(v7) = [v12 isGathering];

    *(v5 + 24) = v7;
    *(v5 + 28) = 1024;
    LODWORD(v12) = [v2 _isObserving];

    *(v5 + 30) = v12;
    *(v5 + 34) = 2080;
    v25 = [v2 _recentsCollectionExpirationTimer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
    v13 = sub_24938A46C();
    v15 = sub_249382D44(v13, v14, aBlock);

    *(v5 + 36) = v15;
    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v24, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  v16 = [v2 _recentsCollectionExpirationTimer];
  [v16 invalidate];

  v17 = objc_opt_self();
  [v2 _recentsCollectionExpirationInterval];
  v19 = v18;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24937CDC8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24937A824;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  v22 = [v17 scheduledTimerWithTimeInterval:0 repeats:v21 block:v19];
  _Block_release(v21);
  [v2 set:v22 recentsCollectionExpirationTimer:?];

  if (([v2 _isObserving] & 1) == 0)
  {
    [v2 set:1 isObserving:?];
    v23 = [v2 _recentsQueryCollection];
    [v23 startObserving];
  }
}

void sub_24937A528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v2 = sub_24938A3AC();
    __swift_project_value_buffer(v2, qword_27EEE2AE0);
    v3 = v1;
    v4 = sub_24938A38C();
    v5 = sub_24938A53C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136316162;
      *(v6 + 4) = sub_249382D44(0xD000000000000022, 0x80000002493947D0, &v18);
      *(v6 + 12) = 2080;
      v8 = [v3 _recentsQueryCollection];
      v9 = [v8 description];
      v10 = sub_24938A45C();
      v12 = v11;

      v13 = sub_249382D44(v10, v12, &v18);

      *(v6 + 14) = v13;
      *(v6 + 22) = 1024;
      v14 = [v3 _recentsQueryCollection];
      LODWORD(v9) = [v14 isGathering];

      *(v6 + 24) = v9;
      *(v6 + 28) = 1024;
      LODWORD(v14) = [v3 _isObserving];

      *(v6 + 30) = v14;
      *(v6 + 34) = 2080;
      [v3 _recentsCollectionExpirationTimer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC8, &qword_24938F5A0);
      v15 = sub_24938A46C();
      v17 = sub_249382D44(v15, v16, &v18);

      *(v6 + 36) = v17;
      _os_log_impl(&dword_249340000, v4, v5, "%s Timer expired. recentsCollection: %s gathering: %{BOOL}d isObserving: %{BOOL}d expirationTimer: %s", v6, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v7, -1, -1);
      MEMORY[0x24C1F6C70](v6, -1, -1);
    }

    else
    {
    }

    [v3 _stopObservingRecentsCollection];
  }
}

void sub_24937A824(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_24937A8D4()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  v5 = &unk_24938F000;
  v6 = &selRef_canDisconnect;
  v7 = &unk_278F9C000;
  v8 = &unk_278F9C000;
  if (os_log_type_enabled(v3, v4))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v9 = 136316418;
    *(v9 + 4) = sub_249382D44(0xD000000000000021, 0x8000000249394780, &v46);
    *(v9 + 12) = 2080;
    v11 = [v2 _recentsQueryCollection];
    v12 = [v11 description];
    v13 = sub_24938A45C();
    v15 = v14;

    v16 = sub_249382D44(v13, v15, &v46);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    v17 = [v2 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    *(v9 + 24) = v17;
    *v10 = v17;
    *(v9 + 32) = 1024;
    LODWORD(v15) = [v2 _isObserving];

    *(v9 + 34) = v15;
    *(v9 + 38) = 2112;
    v18 = [v2 _recentsCollectionExpirationTimer];
    *(v9 + 40) = v18;
    v10[1] = v18;
    *(v9 + 48) = 2048;
    v19 = [v2 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    v20 = [v19 items];

    sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
    v21 = sub_24938A4FC();

    if (v21 >> 62)
    {
      v22 = sub_24938A71C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 50) = v22;

    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %@ isObserving: %{BOOL}d expirationTimer: %@ itemCount: %ld", v9, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC0, &qword_24938F598);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v44, -1, -1);
    MEMORY[0x24C1F6C70](v9, -1, -1);

    v8 = &unk_278F9C000;
    v7 = &unk_278F9C000;
    v6 = &selRef_canDisconnect;
    v5 = &unk_24938F000;
  }

  else
  {
  }

  if ([v2 v7[361]])
  {
    [v2 set:0 isObserving:?];
    v23 = [v2 _recentsQueryCollection];
    [v23 stopObserving];

    v24 = [v2 v8[363]];
    [v24 invalidate];

    [v2 set:0 recentsCollectionExpirationTimer:?];
  }

  v45 = v2;
  oslog = sub_24938A38C();
  v25 = sub_24938A53C();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v26 = v5[178];
    *(v26 + 4) = sub_249382D44(0xD000000000000021, 0x8000000249394780, &v46);
    *(v26 + 12) = 2080;
    v29 = [v45 _recentsQueryCollection];
    v30 = [v29 v6[84]];
    v31 = v7;
    v32 = sub_24938A45C();
    v34 = v33;

    v35 = sub_249382D44(v32, v34, &v46);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2112;
    v36 = [v45 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    *(v26 + 24) = v36;
    *v27 = v36;
    *(v26 + 32) = 1024;
    LODWORD(v35) = [v45 v31 + 17];

    *(v26 + 34) = v35;
    *(v26 + 38) = 2112;
    v37 = [v45 _recentsCollectionExpirationTimer];
    *(v26 + 40) = v37;
    v27[1] = v37;
    *(v26 + 48) = 2048;
    v38 = [v45 DOCUserDefaultsLastNumberOfSharedDocuments + 5];
    v39 = [v38 items];

    sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
    v40 = sub_24938A4FC();

    if (v40 >> 62)
    {
      v41 = sub_24938A71C();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 50) = v41;

    _os_log_impl(&dword_249340000, oslog, v25, "%s recentsCollection: %s gathering: %@ isObserving: %{BOOL}d expirationTimer: %@ itemCount: %ld", v26, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC0, &qword_24938F598);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v28, -1, -1);
    MEMORY[0x24C1F6C70](v26, -1, -1);
    v42 = oslog;
  }

  else
  {

    v42 = v45;
  }
}

id sub_24937B018(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24938A27C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v9 = sub_24938A3AC();
  __swift_project_value_buffer(v9, qword_27EEE2AE0);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_24938A38C();
  v11 = sub_24938A53C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394040, &v20);
    *(v12 + 12) = 2080;
    sub_24937CDE8(&qword_27EEE2CB0, MEMORY[0x277CC8900]);
    v14 = sub_24938A7AC();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_249382D44(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_249340000, v10, v11, "%s received notification: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v13, -1, -1);
    MEMORY[0x24C1F6C70](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return [v2 _startObservingRecentsCollection];
}

id sub_24937B470(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24938A42C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_24938A2AC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_24937B54C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2C00, &qword_24938F588);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

size_t sub_24937B640(size_t a1, int64_t a2, char a3)
{
  result = sub_24937B660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24937B660(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2CF0, &unk_24938F5B0);
  v10 = *(sub_24938A37C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24938A37C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24937B838(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24937B8E4(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = *(a1 + OBJC_IVAR___DOCSBRecentItem_backingNode);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24937CE8C;
    *(v13 + 24) = v11;
    aBlock[4] = sub_24937CF04;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24937917C;
    aBlock[3] = &block_descriptor_13;
    v14 = _Block_copy(aBlock);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v12 fetchURL_];
    _Block_release(v14);

    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_24938A2FC();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v10, 1, 1, v16);
    sub_24937CE94(v10, v8);
    v18 = (*(v17 + 48))(v8, 1, v16);
    _Block_copy(a2);
    v19 = 0;
    if (v18 != 1)
    {
      v19 = sub_24938A2CC();
      (*(v17 + 8))(v8, v16);
    }

    (a2)[2](a2, v19);

    sub_249378744(v10, &unk_27EEE2B80, &qword_24938F548);
  }
}

void sub_24937BBB0(uint64_t a1, uint64_t a2, int64_t a3, void (**a4)(char *, char *, uint64_t), uint64_t a5)
{
  v78 = a5;
  v79 = a3;
  v82 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CD8, &qword_24938F5A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = v77 - v7;
  v8 = sub_24938A37C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v80 = v77 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v91 = (v77 - v17);
  MEMORY[0x28223BE20](v16);
  v83 = (v77 - v18);
  v19 = sub_24938A42C();
  v20 = DOCContentTypesReadableByApplicationWithBundleIdentifier(v19);

  v21 = sub_24938A4FC();
  v22 = MEMORY[0x277D84F90];
  v90 = *(v21 + 16);
  if (v90)
  {
    v89 = v13;
    v23 = 0;
    v87 = v21;
    v88 = v9 + 16;
    v24 = v9 + 8;
    v86 = (v9 + 32);
    v25 = v83;
    do
    {
      if (v23 >= *(v21 + 16))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v92 = ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v26 = *(v9 + 72);
      (*(v9 + 16))(v25, &v92[v21 + v26 * v23], v8);
      v27 = v24;
      v28 = v91;
      sub_24938A35C();
      sub_24937CDE8(&unk_27EEE2CE0, MEMORY[0x277D85578]);
      v29 = v25;
      v30 = sub_24938A41C();
      v31 = *(v9 + 8);
      v32 = v28;
      v24 = v27;
      v31(v32, v8);
      if (v30)
      {
        v31(v29, v8);
        v25 = v29;
        v21 = v87;
      }

      else
      {
        v33 = *v86;
        (*v86)(v89, v29, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v22;
        v85 = v33;
        if (isUniquelyReferenced_nonNull_native)
        {
          v25 = v29;
        }

        else
        {
          sub_24937B640(0, *(v22 + 16) + 1, 1);
          v25 = v83;
          v22 = v93;
        }

        v21 = v87;
        v36 = *(v22 + 16);
        v35 = *(v22 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_24937B640(v35 > 1, v36 + 1, 1);
          v25 = v83;
          v22 = v93;
        }

        *(v22 + 16) = v36 + 1;
        (v85)(&v92[v22 + v36 * v26], v89, v8);
      }

      ++v23;
    }

    while (v90 != v23);
  }

  v37 = [v82 _recentsQueryCollection];
  v25 = [v37 items];

  v77[1] = sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
  v38 = sub_24938A4FC();

  v93 = MEMORY[0x277D84F90];
  v81 = v38;
  if (v38 >> 62)
  {
    goto LABEL_34;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v80; v39; i = v80)
  {
    v41 = 0;
    v87 = v81 & 0xFFFFFFFFFFFFFF8;
    v88 = v81 & 0xC000000000000001;
    v85 = v39;
    v86 = (v81 + 32);
    v90 = v9 + 16;
    v82 = (v9 + 32);
    v83 = (v9 + 56);
    while (1)
    {
      if (v88)
      {
        v43 = MEMORY[0x24C1F60A0](v41, v81);
      }

      else
      {
        if (v41 >= *(v87 + 16))
        {
          goto LABEL_33;
        }

        v43 = v86[v41];
      }

      v92 = v43;
      v44 = __OFADD__(v41, 1);
      v45 = (v41 + 1);
      if (v44)
      {
        break;
      }

      v89 = v45;
      v46 = *(v22 + 16);
      if (v46)
      {
        v47 = 0;
        while (v47 < *(v22 + 16))
        {
          v48 = v22;
          (*(v9 + 16))(i, v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v47, v8);
          v49 = [v92 contentType];
          v25 = v91;
          sub_24938A33C();

          v50 = sub_24938A36C();
          v51 = *(v9 + 8);
          v51(v25, v8);
          if (v50)
          {
            v52 = v84;
            (*v82)(v84, i, v8);
            (*v83)(v52, 0, 1, v8);
            sub_249378744(v52, &qword_27EEE2CD8, &qword_24938F5A8);
            v25 = &v93;
            sub_24938A6AC();
            v53 = *(v93 + 16);
            sub_24938A6DC();
            sub_24938A6EC();
            sub_24938A6BC();
            v22 = v48;
            goto LABEL_17;
          }

          ++v47;
          v51(i, v8);
          v22 = v48;
          if (v46 == v47)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_16:

      v42 = v84;
      (*v83)(v84, 1, 1, v8);
      sub_249378744(v42, &qword_27EEE2CD8, &qword_24938F5A8);
LABEL_17:
      v41 = v89;
      if (v89 == v85)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v39 = sub_24938A71C();
  }

LABEL_35:

  v54 = v93;
  if (v93 < 0)
  {
    v55 = 1;
  }

  else
  {
    v55 = (v93 >> 62) & 1;
  }

  if (v55)
  {
    v56 = sub_24938A71C();
  }

  else
  {
    v56 = *(v93 + 16);
  }

  v57 = v79;
  if (v56 < v79)
  {
    goto LABEL_65;
  }

  if (v79 < 0)
  {
    goto LABEL_78;
  }

  if (v55)
  {
    if (sub_24938A71C() < 0)
    {
      goto LABEL_80;
    }

    v58 = sub_24938A71C();
  }

  else
  {
    v58 = *(v54 + 16);
  }

  if (v58 < v57)
  {
    goto LABEL_79;
  }

  if ((v54 & 0xC000000000000001) != 0)
  {

    if (v57)
    {
      v59 = 0;
      do
      {
        v60 = v59 + 1;
        sub_24938A67C();
        v59 = v60;
      }

      while (v57 != v60);
    }
  }

  else
  {
  }

  if (v55)
  {
    v61 = sub_24938A72C();
    v25 = v62;
    v55 = v63;
    v57 = v64;

    v54 = v61;
    if ((v57 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v55 = 0;
    v25 = (v54 + 32);
    v57 = (2 * v57) | 1;
    if ((v57 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  sub_24938A7CC();
  swift_unknownObjectRetain_n();
  v67 = swift_dynamicCastClass();
  if (!v67)
  {
    swift_unknownObjectRelease();
    v67 = MEMORY[0x277D84F90];
  }

  v68 = *(v67 + 16);

  if (__OFSUB__(v57 >> 1, v55))
  {
    goto LABEL_81;
  }

  if (v68 != (v57 >> 1) - v55)
  {
    goto LABEL_82;
  }

  v66 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v66)
  {
    swift_unknownObjectRelease();
    v66 = MEMORY[0x277D84F90];
  }

  while (1)
  {
    swift_unknownObjectRelease();
    v54 = v66;
LABEL_65:
    v55 = v54 >> 62 ? sub_24938A71C() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v55)
    {
      break;
    }

    v93 = MEMORY[0x277D84F90];
    v25 = &v93;
    sub_24938A6CC();
    if ((v55 & 0x8000000000000000) == 0)
    {
      v69 = 0;
      do
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v70 = MEMORY[0x24C1F60A0](v69, v54);
        }

        else
        {
          v70 = *(v54 + 8 * v69 + 32);
        }

        v71 = v70;
        ++v69;
        v72 = [objc_allocWithZone(DOCSBRecentItem) init];
        v73 = *&v72[OBJC_IVAR___DOCSBRecentItem_backingNode];
        *&v72[OBJC_IVAR___DOCSBRecentItem_backingNode] = v71;
        swift_unknownObjectRelease();
        sub_24938A6AC();
        v74 = *(v93 + 16);
        sub_24938A6DC();
        sub_24938A6EC();
        sub_24938A6BC();
      }

      while (v55 != v69);
      break;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_unknownObjectRelease_n();
LABEL_57:
    sub_24937B54C(v54, v25, v55, v57);
    v66 = v65;
  }

  type metadata accessor for DOCSBRecentItem(v75);
  v76 = sub_24938A4EC();
  (*(v78 + 16))(v78, v76);
}

uint64_t sub_24937C540(uint64_t a1, uint64_t a2)
{
  v4 = sub_24938A37C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v16 = sub_24937B470(a1, a2, 0);
  if (!v16)
  {
    goto LABEL_24;
  }

  v50 = v16;
  if (([v16 supportsOpenInPlace] & 1) == 0)
  {
    goto LABEL_23;
  }

  v47 = 0;
  if (sub_24938A45C() == a1 && v17 == a2)
  {

LABEL_24:
    v38 = 0;
    return v38 & 1;
  }

  v19 = a1;
  v20 = sub_24938A7BC();

  if (v20)
  {
LABEL_23:

    goto LABEL_24;
  }

  v45 = v19;
  v46 = a2;
  v21 = sub_24938A42C();
  v22 = DOCContentTypesReadableByApplicationWithBundleIdentifier(v21);

  v23 = sub_24938A4FC();
  result = v23;
  v55 = *(v23 + 16);
  if (!v55)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_21:

    v34 = *(v26 + 16);

    if (v34)
    {
      v35 = objc_opt_self();
      v36 = [v35 sharedManager];
      v37 = [v36 isFilesAppLocked];

      if (!v37)
      {
        v39 = [v35 sharedManager];
        v40 = [v39 protectedApplicationBundleIDs];

        v41 = sub_24938A4FC();
        v57[0] = v45;
        v57[1] = v46;
        MEMORY[0x28223BE20](v42);
        *(&v44 - 2) = v57;
        v43 = sub_24937B838(sub_24937CE34, (&v44 - 4), v41);

        v38 = v43 ^ 1;
        return v38 & 1;
      }
    }

    goto LABEL_23;
  }

  v25 = 0;
  v51 = (v5 + 32);
  v52 = v5 + 16;
  v26 = MEMORY[0x277D84F90];
  v48 = v5 + 8;
  v49 = v5;
  v53 = result;
  v54 = v9;
  while (v25 < *(result + 16))
  {
    v56 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27 = *(v5 + 72);
    (*(v5 + 16))(v14, result + v56 + v27 * v25, v4);
    sub_24938A35C();
    sub_24937CDE8(&unk_27EEE2CE0, MEMORY[0x277D85578]);
    v28 = sub_24938A41C();
    v29 = *(v5 + 8);
    v29(v12, v4);
    if (v28)
    {
      v29(v14, v4);
    }

    else
    {
      v30 = *v51;
      (*v51)(v54, v14, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24937B640(0, *(v26 + 16) + 1, 1);
        v26 = v57[0];
      }

      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_24937B640(v32 > 1, v33 + 1, 1);
        v26 = v57[0];
      }

      *(v26 + 16) = v33 + 1;
      v30((v26 + v56 + v33 * v27), v54, v4);
      v5 = v49;
    }

    ++v25;
    result = v53;
    if (v55 == v25)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

id _sSo20DOCSBRecentItemsListC19DocumentManagerCoreE4data29forCollectionShouldBeReloadedySo06FPItemI0C_tF_0()
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v1 = sub_24938A3AC();
  __swift_project_value_buffer(v1, qword_27EEE2AE0);
  v2 = v0;
  v3 = sub_24938A38C();
  v4 = sub_24938A53C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v5 = 136316418;
    *(v5 + 4) = sub_249382D44(0xD000000000000024, 0x80000002493948A0, &v21);
    *(v5 + 12) = 2080;
    v7 = [v2 _recentsQueryCollection];
    v8 = [v7 description];
    v9 = sub_24938A45C();
    v11 = v10;

    v12 = sub_249382D44(v9, v11, &v21);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2112;
    v13 = [v2 _recentsQueryCollection];
    *(v5 + 24) = v13;
    *v6 = v13;
    *(v5 + 32) = 1024;
    LODWORD(v12) = [v2 _isObserving];

    *(v5 + 34) = v12;
    *(v5 + 38) = 2112;
    v14 = [v2 _recentsCollectionExpirationTimer];
    *(v5 + 40) = v14;
    v6[1] = v14;
    *(v5 + 48) = 2048;
    v15 = [v2 _recentsQueryCollection];
    v16 = [v15 items];

    sub_249370B4C(0, &qword_27EEE2CB8, 0x277CC63E8);
    v17 = sub_24938A4FC();

    if (v17 >> 62)
    {
      v18 = sub_24938A71C();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 50) = v18;

    _os_log_impl(&dword_249340000, v3, v4, "%s recentsCollection: %s gathering: %@ isObserving: %{BOOL}d expirationTimer: %@ itemCount: %ld", v5, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2CC0, &qword_24938F598);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v20, -1, -1);
    MEMORY[0x24C1F6C70](v5, -1, -1);
  }

  else
  {
  }

  return [v2 _startObservingRecentsCollection];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24937CDE8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24937CE34(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24938A7BC() & 1;
  }
}

uint64_t sub_24937CE94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24937CF04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24937CF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_24938446C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2493832EC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_249384B34();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_249383FF0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_24937D1BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620);
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v55 - v6;
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = OBJC_IVAR___DOCSBFolderState_orderedFiles;
  v12 = *&v1[OBJC_IVAR___DOCSBFolderState_orderedFiles];
  v13 = *(v12 + 16);
  if (v13)
  {
    v56 = v1;
    v14 = objc_opt_self();
    v17 = *(v8 + 16);
    v16 = v8 + 16;
    v15 = v17;
    v18 = v12 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v65 = *(v16 + 56);
    v66 = v14;
    v64 = (v16 - 8);
    v55 = v12;

    v19 = MEMORY[0x277D84F90];
    v59 = v17;
    v60 = v16;
    v58 = v11;
    do
    {
      v15(v11, v18, v7);
      v20 = sub_24938A2CC();
      v21 = [v66 fiNodeFromURL_];

      if (v21)
      {
        v22 = *(v63 + 48);
        v23 = v15;
        v24 = v61;
        v23(v61, v11, v7);
        v25 = [v21 thumbnailIdentifier];

        (*v64)(v11, v7);
        *(v24 + v22) = v25;
        sub_2493787A4(v24, v67, &qword_27EEE2DB0, &qword_24938F620);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24938297C(0, v19[2] + 1, 1, v19);
        }

        v27 = v19[2];
        v26 = v19[3];
        v11 = v58;
        v15 = v59;
        if (v27 >= v26 >> 1)
        {
          v19 = sub_24938297C(v26 > 1, v27 + 1, 1, v19);
        }

        v19[2] = v27 + 1;
        sub_2493787A4(v67, v19 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v27, &qword_27EEE2DB0, &qword_24938F620);
      }

      else
      {
        (*v64)(v11, v7);
      }

      v18 += v65;
      --v13;
    }

    while (v13);

    v1 = v56;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v28 = OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs;
  v29 = *&v1[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs];
  *&v1[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs] = v19;

  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v30 = sub_24938A3AC();
  __swift_project_value_buffer(v30, qword_27EEE2AE0);
  v31 = v1;
  v32 = sub_24938A38C();
  v33 = sub_24938A53C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = v7;
    v36 = swift_slowAlloc();
    v68 = v36;
    *v34 = 136315906;
    *(v34 + 4) = sub_249382D44(0x466465726564726FLL, 0xEC00000073656C69, &v68);
    *(v34 + 12) = 2080;
    v37 = [v31 folderIdentifier];
    v38 = sub_24938A45C();
    v40 = v39;

    v41 = sub_249382D44(v38, v40, &v68);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    v42 = *&v1[v57];

    v44 = v1;
    v45 = MEMORY[0x24C1F5F20](v43, v35);
    v47 = v46;

    v48 = sub_249382D44(v45, v47, &v68);

    *(v34 + 24) = v48;
    *(v34 + 32) = 2080;
    v49 = *&v44[v28];

    v51 = MEMORY[0x24C1F5F20](v50, v63);
    v53 = v52;

    v54 = sub_249382D44(v51, v53, &v68);

    *(v34 + 34) = v54;
    _os_log_impl(&dword_249340000, v32, v33, "%s %s SET orderedFiles: %s UPDATED orderedFileIdentifierPairs: %s", v34, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v36, -1, -1);
    MEMORY[0x24C1F6C70](v34, -1, -1);
  }
}

uint64_t sub_24937DB50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620);
  v123 = *(v3 - 8);
  v4 = *(v123 + 64);
  MEMORY[0x28223BE20](v3);
  v126 = &v115 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB8, &qword_24938F628);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v115 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DC0, &qword_24938F630);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v127 = &v115 - v12;
  v130 = 0;
  v13 = sub_24938A2FC();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEE28C0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v18 = sub_24938A3AC();
  v19 = __swift_project_value_buffer(v18, qword_27EEE2AE0);
  v20 = v1;

  v119 = v19;
  v21 = sub_24938A38C();
  LODWORD(v19) = sub_24938A53C();

  LODWORD(v128) = v19;
  v129 = v21;
  v22 = os_log_type_enabled(v21, v19);
  v23 = &unk_278F9C000;
  v122 = v17;
  if (v22)
  {
    v17 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v131 = v125;
    *v17 = 136316162;
    *(v17 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v131);
    *(v17 + 12) = 2080;
    v24 = [v20 folderIdentifier];
    v25 = sub_24938A45C();
    v124 = v9;
    v26 = v25;
    v28 = v27;

    v29 = sub_249382D44(v26, v28, &v131);

    *(v17 + 14) = v29;
    *(v17 + 22) = 2080;
    v30 = [v20 orderedFiles];
    v31 = sub_24938A4FC();

    v32 = MEMORY[0x24C1F5F20](v31, v13);
    v34 = v33;

    v35 = sub_249382D44(v32, v34, &v131);

    *(v17 + 24) = v35;
    *(v17 + 32) = 2080;
    v36 = MEMORY[0x24C1F5F20](a1, v13);
    v38 = sub_249382D44(v36, v37, &v131);

    *(v17 + 34) = v38;
    *(v17 + 42) = 2080;
    v39 = *&v20[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs];

    v41 = MEMORY[0x24C1F5F20](v40, v3);
    v43 = v42;

    v44 = v41;
    v23 = &unk_278F9C000;
    v45 = sub_249382D44(v44, v43, &v131);
    v9 = v124;

    *(v17 + 44) = v45;
    v46 = v129;
    _os_log_impl(&dword_249340000, v129, v128, "1. %s %s orderedFiles: %s otherOrderedFiles: %s orderedFileIdentifierPairs: %s", v17, 0x34u);
    v47 = v125;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v47, -1, -1);
    MEMORY[0x24C1F6C70](v17, -1, -1);
  }

  else
  {
  }

  v48 = [v20 v23[379]];
  v49 = sub_24938A4FC();

  LOBYTE(v48) = sub_24937E77C(a1, v49);

  if (v48)
  {
    v116 = v13;
    v50 = *(a1 + 16);
    v51 = MEMORY[0x277D84F90];
    v125 = v3;
    v117 = v20;
    v118 = a1;
    if (v50)
    {
      v124 = v9;
      v131 = MEMORY[0x277D84F90];
      sub_24938A6CC();
      v52 = objc_opt_self();
      v54 = *(v14 + 16);
      v53 = (v14 + 16);
      v128 = v54;
      v129 = v52;
      v17 = a1 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
      v55 = v53[7];
      v56 = (v53 - 1);
      v57 = v116;
      v58 = v122;
      do
      {
        (v128)(v58, v17, v57);
        v59 = sub_24938A2CC();
        v60 = [v129 fiNodeFromURL:v59];

        (*v56)(v58, v57);
        sub_24938A6AC();
        v61 = v53;
        v62 = v131[2];
        sub_24938A6DC();
        v53 = v61;
        sub_24938A6EC();
        sub_24938A6BC();
        v17 += v55;
        --v50;
      }

      while (v50);
      v51 = v131;
      v9 = v124;
      v3 = v125;
      v20 = v117;
    }

    v115 = OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs;
    v1 = *(*&v20[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs] + 16);
    a1 = v51[2];
    v121 = *&v20[OBJC_IVAR___DOCSBFolderState_orderedFileIdentifierPairs];
    v122 = v51;
    v120 = v51 + 4;
    v128 = (v123 + 48);
    v129 = (v123 + 56);

    v63 = 0;
    v14 = 0;
    v13 = &qword_24938F620;
    v124 = v1;
    while (1)
    {
      v64 = v127;
      if (v14 == v1)
      {
        v65 = 1;
        v14 = v1;
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v14 >= *(v121 + 16))
        {
          goto LABEL_39;
        }

        sub_249378534(v121 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v14, v127, &qword_27EEE2DB0, &qword_24938F620);
        v65 = 0;
        ++v14;
      }

      (v129->isa)(v64, v65, 1, v3);
      if (v63 == a1)
      {
        v17 = 1;
        v63 = a1;
      }

      else
      {
        if (v63 >= v122[2])
        {
          goto LABEL_40;
        }

        v17 = v120[v63];
        v66 = v17;
        ++v63;
      }

      sub_2493787A4(v64, v9, &qword_27EEE2DC0, &qword_24938F630);
      if ((*v128)(v9, 1, v3) == 1)
      {
        break;
      }

      if (v17 == 1)
      {

        sub_249378744(v9, &qword_27EEE2DB0, &qword_24938F620);
LABEL_32:
        v93 = 0;
        v94 = v117;
        goto LABEL_34;
      }

      v67 = v9;
      v68 = v9;
      v69 = v126;
      v13 = &qword_24938F620;
      sub_2493787A4(v68, v126, &qword_27EEE2DB0, &qword_24938F620);
      v131 = v17;
      v70 = v130;
      v71 = sub_24937EC08(v69, &v131);
      v130 = v70;
      if (v70)
      {

        sub_2493852B4(v17);
        result = sub_249378744(v69, &qword_27EEE2DB0, &qword_24938F620);
        __break(1u);
        return result;
      }

      v72 = v71;
      sub_2493852B4(v17);
      sub_249378744(v69, &qword_27EEE2DB0, &qword_24938F620);
      if ((v72 & 1) == 0)
      {

        goto LABEL_32;
      }

      v1 = v124;
      v3 = v125;
      v9 = v67;
    }

    v94 = v117;
    if (v17 == 1)
    {
      v93 = 1;
    }

    else
    {
      sub_2493852B4(v17);
      v93 = 0;
    }

LABEL_34:
    v95 = v94;

    v96 = sub_24938A38C();
    v97 = sub_24938A53C();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v131 = v99;
      *v98 = 136316162;
      *(v98 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v131);
      *(v98 + 12) = 2080;
      v100 = [v95 folderIdentifier];
      v101 = sub_24938A45C();
      v103 = v102;

      v104 = sub_249382D44(v101, v103, &v131);

      *(v98 + 14) = v104;
      *(v98 + 22) = 2080;
      v105 = *&v94[v115];

      v107 = MEMORY[0x24C1F5F20](v106, v125);
      v109 = v108;

      v110 = sub_249382D44(v107, v109, &v131);

      *(v98 + 24) = v110;
      *(v98 + 32) = 1024;
      *(v98 + 34) = v93;
      *(v98 + 38) = 2080;
      v111 = MEMORY[0x24C1F5F20](v118, v116);
      v113 = sub_249382D44(v111, v112, &v131);

      *(v98 + 40) = v113;
      _os_log_impl(&dword_249340000, v96, v97, "4. %s %s orderedFiles: %s equal: %{BOOL}d to otherOrderedFiles: %s", v98, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v99, -1, -1);
      MEMORY[0x24C1F6C70](v98, -1, -1);
    }
  }

  else
  {
    v73 = v20;

    v74 = sub_24938A38C();
    v75 = sub_24938A53C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v131 = v77;
      *v76 = 136315906;
      *(v76 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v131);
      v118 = a1;
      *(v76 + 12) = 2080;
      v78 = [v73 folderIdentifier];
      v79 = sub_24938A45C();
      v80 = v13;
      v82 = v81;

      v83 = sub_249382D44(v79, v82, &v131);

      *(v76 + 14) = v83;
      *(v76 + 22) = 2080;
      v84 = [v73 orderedFiles];
      v85 = sub_24938A4FC();

      v86 = MEMORY[0x24C1F5F20](v85, v80);
      v88 = v87;

      v89 = sub_249382D44(v86, v88, &v131);

      *(v76 + 24) = v89;
      *(v76 + 32) = 2080;
      v90 = MEMORY[0x24C1F5F20](v118, v80);
      v92 = sub_249382D44(v90, v91, &v131);

      *(v76 + 34) = v92;
      _os_log_impl(&dword_249340000, v74, v75, "2. %s %s orderedFiles: %s are NOT equal to: %s", v76, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v77, -1, -1);
      MEMORY[0x24C1F6C70](v76, -1, -1);
    }

    return 0;
  }

  return v93;
}

uint64_t sub_24937E77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24938A2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DD0, &qword_24938F638);
  v10 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v53 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v52 = &v40 - v18;
  v19 = 0;
  v20 = 0;
  v40 = a1;
  v41 = a2;
  v21 = *(a2 + 16);
  v22 = *(a1 + 16);
  v50 = v5;
  v51 = v22;
  v49 = v5 + 16;
  v23 = (v5 + 56);
  v42 = (v5 + 32);
  v43 = v21;
  v46 = (v5 + 8);
  v47 = (v5 + 48);
  while (1)
  {
    if (v20 == v21)
    {
      v24 = 1;
      v20 = v21;
      v25 = v52;
      goto LABEL_7;
    }

    v25 = v52;
    if (v20 >= v21)
    {
      break;
    }

    result = (*(v50 + 16))(v52, v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v20, v4);
    if (__OFADD__(v20++, 1))
    {
      goto LABEL_22;
    }

    v24 = 0;
LABEL_7:
    v27 = *v23;
    v28 = 1;
    result = (*v23)(v25, v24, 1, v4);
    v29 = v51;
    if (v19 != v51)
    {
      if (v19 >= v51)
      {
        goto LABEL_21;
      }

      result = (*(v50 + 16))(v53, v40 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v19, v4);
      v29 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_23;
      }

      v28 = 0;
    }

    v30 = v53;
    v27(v53, v28, 1, v4);
    v31 = *(v48 + 48);
    sub_2493787A4(v25, v12, &unk_27EEE2B80, &qword_24938F548);
    sub_2493787A4(v30, &v12[v31], &unk_27EEE2B80, &qword_24938F548);
    v32 = *v47;
    v33 = (*v47)(v12, 1, v4);
    result = v32(&v12[v31], 1, v4);
    if (v33 == 1)
    {
      if (result == 1)
      {
        return result;
      }

      sub_249378744(&v12[v31], &unk_27EEE2B80, &qword_24938F548);
      return 0;
    }

    if (result == 1)
    {
      (*v46)(v12, v4);
      return 0;
    }

    v34 = *v42;
    v35 = v44;
    (*v42)(v44, v12, v4);
    v36 = &v12[v31];
    v37 = v45;
    v34(v45, v36, v4);
    sub_2493852C4(&qword_27EEE2DD8);
    v38 = sub_24938A41C();
    v39 = *v46;
    (*v46)(v37, v4);
    result = (v39)(v35, v4);
    v19 = v29;
    v21 = v43;
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24937EC08(uint64_t a1, void **a2)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v4 = *(*(v61 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = *a2;
  sub_249378534(a1, &v51 - v18, &qword_27EEE2DB0, &qword_24938F620);
  v21 = *&v19[*(v8 + 48)];
  if (v20 && (v22 = [v20 thumbnailIdentifier]) != 0)
  {
    v23 = v22;
    sub_249370B4C(0, &qword_27EEE2DC8, off_278F9AC80);
    v24 = sub_24938A5DC();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_24938A2FC();
  v26 = *(v25 - 8);
  (*(v26 + 8))(v19, v25);
  if ((v24 & 1) == 0)
  {
    v56 = v26;
    v57 = v24;
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v27 = sub_24938A3AC();
    __swift_project_value_buffer(v27, qword_27EEE2AE0);
    sub_249378534(a1, v17, &qword_27EEE2DB0, &qword_24938F620);
    v28 = v20;
    v29 = sub_24938A38C();
    v30 = sub_24938A53C();

    if (os_log_type_enabled(v29, v30))
    {
      v52 = v28;
      v54 = v30;
      v55 = v29;
      v31 = v14;
      v32 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62 = v53;
      *v32 = 136315650;
      *(v32 + 4) = sub_249382D44(0xD000000000000029, 0x8000000249394C00, &v62);
      *(v32 + 12) = 2080;
      sub_249378534(v17, v31, &qword_27EEE2DB0, &qword_24938F620);
      v33 = *(v8 + 48);
      v34 = *(v31 + v33);
      v35 = v59;
      (*(v56 + 32))(v59, v31, v25);
      *&v35[v33] = v34;
      v36 = v32;
      v37 = sub_24938A46C();
      v39 = v38;
      sub_249378744(v17, &qword_27EEE2DB0, &qword_24938F620);
      v40 = sub_249382D44(v37, v39, &v62);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2080;
      if (v20)
      {
        v41 = [v52 nodeURL];
        if (v41)
        {
          v42 = v58;
          v43 = v41;
          sub_24938A2DC();

          v44 = 0;
        }

        else
        {
          v44 = 1;
          v42 = v58;
        }

        (*(v56 + 56))(v42, v44, 1, v25);
        sub_2493787A4(v42, v60, &unk_27EEE2B80, &qword_24938F548);
      }

      else
      {
        (*(v56 + 56))(v60, 1, 1, v25);
      }

      LOBYTE(v24) = v57;
      v45 = sub_24938A46C();
      v47 = sub_249382D44(v45, v46, &v62);

      *(v36 + 24) = v47;
      v48 = v55;
      _os_log_impl(&dword_249340000, v55, v54, "3.1. %s %s thumbnailIdentifier not equal to node: %s", v36, 0x20u);
      v49 = v53;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v49, -1, -1);
      MEMORY[0x24C1F6C70](v36, -1, -1);
    }

    else
    {

      sub_249378744(v17, &qword_27EEE2DB0, &qword_24938F620);
      LOBYTE(v24) = v57;
    }
  }

  return v24 & 1;
}

id sub_24937F2E0()
{
  result = [objc_allocWithZone(DOCSBFolderStatesObservervationManager) init];
  qword_27EEE2D00 = result;
  return result;
}

void sub_24937F4C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v95[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v95[-v13];
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v15 = sub_24938A3AC();
  v16 = __swift_project_value_buffer(v15, qword_27EEE2AE0);
  v17 = v8[2];
  v103 = a3;
  v100 = v17;
  v101 = v8 + 2;
  v17(v14, a3, v7);
  v18 = v3;

  v102 = v16;
  v19 = sub_24938A38C();
  v20 = sub_24938A53C();

  v21 = os_log_type_enabled(v19, v20);
  v104 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v99 = v12;
    v23 = v22;
    v98 = swift_slowAlloc();
    aBlock[0] = v98;
    *v23 = 136315906;
    *(v23 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, aBlock);
    *(v23 + 12) = 2080;
    v24 = v18;
    v97 = v19;
    v25 = v24;
    v26 = [v24 description];
    v27 = sub_24938A45C();
    v96 = v20;
    v28 = v8;
    v29 = v7;
    v30 = a1;
    v31 = a2;
    v32 = v27;
    v34 = v33;

    v35 = v32;
    a2 = v31;
    a1 = v30;
    v7 = v29;
    v8 = v28;
    v36 = sub_249382D44(v35, v34, aBlock);

    *(v23 + 14) = v36;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_249382D44(a1, a2, aBlock);
    *(v23 + 32) = 2080;
    sub_2493852C4(&qword_27EEE2DA0);
    v37 = sub_24938A7AC();
    v39 = v38;
    v40 = v28[1];
    v40(v14, v7);
    v41 = sub_249382D44(v37, v39, aBlock);

    *(v23 + 34) = v41;
    v18 = v104;
    v42 = v97;
    _os_log_impl(&dword_249340000, v97, v96, "%s self: %s folderID: %s url: %s", v23, 0x2Au);
    v43 = v98;
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v43, -1, -1);
    v44 = v23;
    v12 = v99;
    MEMORY[0x24C1F6C70](v44, -1, -1);
  }

  else
  {

    v40 = v8[1];
    v40(v14, v7);
  }

  v45 = [v18 folderStates];
  type metadata accessor for DOCSBFolderState(v45);
  v46 = sub_24938A3FC();

  if (!*(v46 + 16))
  {

    goto LABEL_13;
  }

  sub_2493832EC(a1, a2);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_13:
    v75 = objc_allocWithZone(DOCSBFolderState);
    v76 = sub_24938A42C();
    v77 = sub_24938A2CC();
    v78 = [v75 initWithIdentifier:v76 fileURL:v77];

    v79 = a2;
    v80 = v78;
    v81 = v104;
    v82 = [v104 folderStates];
    v83 = sub_24938A3FC();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v83;
    sub_24938446C(v80, a1, v79, isUniquelyReferenced_nonNull_native);

    v85 = sub_24938A3EC();

    [v81 setFolderStates:v85];

    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v87 = [v81 folderObservationProvider];
    if (!v87)
    {

      return;
    }

    v88 = v87;
    v89 = sub_24938A42C();
    aBlock[4] = sub_249385150;
    aBlock[5] = v86;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2493803F8;
    aBlock[3] = &block_descriptor_2;
    v90 = _Block_copy(aBlock);

    [v88 registerObserverForIdentifier:v89 updateHandler:v90];
    swift_unknownObjectRelease();

    _Block_release(v90);
    goto LABEL_19;
  }

  v99 = v8;
  v100(v12, v103, v7);
  v49 = v7;
  v50 = v104;

  v51 = sub_24938A38C();
  v52 = sub_24938A53C();

  if (!os_log_type_enabled(v51, v52))
  {

    v40(v12, v49);
    return;
  }

  LODWORD(v103) = v52;
  v104 = v51;
  v53 = swift_slowAlloc();
  v101 = a1;
  v54 = v53;
  v102 = swift_slowAlloc();
  aBlock[0] = v102;
  *v54 = 136316162;
  *(v54 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, aBlock);
  *(v54 + 12) = 2080;
  v55 = v50;
  v56 = [v55 description];
  v57 = sub_24938A45C();
  v58 = v12;
  v59 = a2;
  v61 = v60;

  v62 = sub_249382D44(v57, v61, aBlock);
  v63 = v59;
  v64 = v101;

  *(v54 + 14) = v62;
  *(v54 + 22) = 2080;
  *(v54 + 24) = sub_249382D44(v64, v63, aBlock);
  *(v54 + 32) = 2080;
  sub_2493852C4(&qword_27EEE2DA0);
  v65 = sub_24938A7AC();
  v67 = v66;
  v40(v58, v49);
  v68 = sub_249382D44(v65, v67, aBlock);

  *(v54 + 34) = v68;
  *(v54 + 42) = 2080;
  v69 = [v55 folderStates];
  v70 = sub_24938A3FC();

  if (*(v70 + 16) && (v71 = sub_2493832EC(v64, v63), (v72 & 1) != 0))
  {
    v73 = *(*(v70 + 56) + 8 * v71);
    v74 = v73;
  }

  else
  {
    v73 = 0;
  }

  v105 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D90, &qword_24938F608);
  v91 = sub_24938A46C();
  v93 = sub_249382D44(v91, v92, aBlock);

  *(v54 + 44) = v93;
  v89 = v104;
  _os_log_impl(&dword_249340000, v104, v103, "%s self: %s already observing folderID: %s url: %s with: %s", v54, 0x34u);
  v94 = v102;
  swift_arrayDestroy();
  MEMORY[0x24C1F6C70](v94, -1, -1);
  MEMORY[0x24C1F6C70](v54, -1, -1);
LABEL_19:
}

void sub_24937FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_2493802F0(a4))
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v5 = sub_24938A3AC();
    __swift_project_value_buffer(v5, qword_27EEE2AE0);

    v6 = sub_24938A38C();
    v7 = sub_24938A53C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v33[0] = osloga;
      *v8 = 136315650;
      *(v8 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, v33);
      *(v8 + 12) = 2080;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DA8, &qword_24938F618);
      v9 = sub_24938A46C();
      v11 = sub_249382D44(v9, v10, v33);

      *(v8 + 14) = v11;
      *(v8 + 22) = 2080;
      v12 = MEMORY[0x24C1F5F20](a4, MEMORY[0x277D84F70] + 8);
      v14 = sub_249382D44(v12, v13, v33);

      *(v8 + 24) = v14;
      _os_log_impl(&dword_249340000, v6, v7, "%s self: %s calling _handleFolderChanged with: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](osloga, -1, -1);
      MEMORY[0x24C1F6C70](v8, -1, -1);
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = sub_24938A42C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
      v18 = sub_24938A4EC();

      [v16 _handleFolderChangedWithFolderID_topItems_];
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EEE28C0 != -1)
    {
      swift_once();
    }

    v19 = sub_24938A3AC();
    __swift_project_value_buffer(v19, qword_27EEE2AE0);

    oslog = sub_24938A38C();
    v20 = sub_24938A53C();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_249382D44(0xD000000000000022, 0x8000000249394BD0, v31);
      *(v21 + 12) = 2080;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DA8, &qword_24938F618);
      v23 = sub_24938A46C();
      v25 = sub_249382D44(v23, v24, v31);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2080;
      v26 = MEMORY[0x24C1F5F20](a4, MEMORY[0x277D84F70] + 8);
      v28 = sub_249382D44(v26, v27, v31);

      *(v21 + 24) = v28;
      _os_log_impl(&dword_249340000, oslog, v20, "%s self: %s couldn't convert topItems: %s to [DOCNodes]", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v22, -1, -1);
      MEMORY[0x24C1F6C70](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2493802F0(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_24938A6CC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_24937860C(i, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_24938A6AC();
    v4 = *(v7 + 16);
    sub_24938A6DC();
    sub_24938A6EC();
    sub_24938A6BC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_2493803F8(uint64_t a1)
{
  v2 = sub_24938A2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = sub_24938A45C();
  v11 = v10;
  sub_24938A2DC();
  v12 = sub_24938A4FC();

  v8(v9, v11, v6, v12);

  return (*(v3 + 8))(v6, v2);
}

void sub_249380564(uint64_t a1, uint64_t a2)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24938A3AC();
  __swift_project_value_buffer(v5, qword_27EEE2AE0);
  v6 = v2;

  v7 = sub_24938A38C();
  v8 = sub_24938A53C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    osloga = swift_slowAlloc();
    v52 = osloga;
    *v9 = 136315650;
    *(v9 + 4) = sub_249382D44(0xD000000000000019, 0x8000000249394B80, &v52);
    *(v9 + 12) = 2080;
    v10 = a2;
    v11 = a1;
    v12 = v6;
    v13 = [v12 description];
    v48 = v8;
    v14 = sub_24938A45C();
    v16 = v15;

    a1 = v11;
    a2 = v10;

    v17 = sub_249382D44(v14, v16, &v52);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_249382D44(a1, v10, &v52);
    _os_log_impl(&dword_249340000, v7, v48, "%s self: %s folderID: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](osloga, -1, -1);
    MEMORY[0x24C1F6C70](v9, -1, -1);
  }

  v18 = [v6 folderStates];
  type metadata accessor for DOCSBFolderState(v18);
  v19 = sub_24938A3FC();

  if (*(v19 + 16))
  {
    sub_2493832EC(a1, a2);
    v21 = v20;

    if (v21)
    {
      v22 = v6;

      oslog = sub_24938A38C();
      v23 = sub_24938A53C();

      if (os_log_type_enabled(oslog, v23))
      {
        v49 = v23;
        v24 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v24 = 136315906;
        *(v24 + 4) = sub_249382D44(0xD000000000000019, 0x8000000249394B80, &v52);
        *(v24 + 12) = 2080;
        v25 = v22;
        v26 = [v25 description];
        v27 = sub_24938A45C();
        v28 = a2;
        v29 = a1;
        v31 = v30;

        v32 = sub_249382D44(v27, v31, &v52);

        *(v24 + 14) = v32;
        *(v24 + 22) = 2080;
        *(v24 + 24) = sub_249382D44(v29, v28, &v52);
        *(v24 + 32) = 2080;
        v33 = [v25 folderStates];
        v34 = sub_24938A3FC();

        if (*(v34 + 16))
        {
          v35 = sub_2493832EC(v29, v28);
          if (v36)
          {
            v37 = *(*(v34 + 56) + 8 * v35);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D90, &qword_24938F608);
        v44 = sub_24938A46C();
        v46 = sub_249382D44(v44, v45, &v52);

        *(v24 + 34) = v46;
        _os_log_impl(&dword_249340000, oslog, v49, "%s self: %s already observing folderID: %s with: %s", v24, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1F6C70](v47, -1, -1);
        MEMORY[0x24C1F6C70](v24, -1, -1);
      }

      else
      {
      }

      return;
    }
  }

  else
  {
  }

  v38 = [v6 folderStates];
  v39 = sub_24938A3FC();

  v52 = v39;
  sub_24937CF34(0, a1, a2);
  v40 = sub_24938A3EC();

  [v6 setFolderStates_];

  v41 = [v6 folderObservationProvider];
  if (v41)
  {
    v42 = v41;
    v43 = sub_24938A42C();
    [v42 unregisterObserverForIdentifier_];

    swift_unknownObjectRelease();
  }
}

void sub_249380BE4(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v144 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2B80, &qword_24938F548);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v136 = v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v132 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v132 - v14;
  v16 = sub_24938A2FC();
  isa = v16[-1].isa;
  v17 = *(isa + 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v142 = v132 - v21;
  if (qword_27EEE28C0 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v22 = sub_24938A3AC();
    v23 = __swift_project_value_buffer(v22, qword_27EEE2AE0);
    v24 = v4;

    v25 = sub_24938A38C();
    v26 = sub_24938A53C();

    LODWORD(v140) = v26;
    v27 = v26;
    v28 = v25;
    v29 = os_log_type_enabled(v25, v27);
    v145 = v16;
    v133 = v20;
    v141 = a2;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v139 = v13;
      v31 = v30;
      v32 = swift_slowAlloc();
      v134 = v24;
      v33 = v32;
      v146 = v32;
      *v31 = 136315906;
      *(v31 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v146);
      v143 = a3;
      *(v31 + 12) = 2080;
      v34 = v134;
      v35 = [v34 description];
      v36 = sub_24938A45C();
      v38 = v37;

      v39 = v36;
      v16 = v145;
      v40 = sub_249382D44(v39, v38, &v146);

      *(v31 + 14) = v40;
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_249382D44(v144, a2, &v146);
      *(v31 + 32) = 2080;
      v41 = v143;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
      v43 = MEMORY[0x24C1F5F20](v41, v42);
      v45 = sub_249382D44(v43, v44, &v146);

      *(v31 + 34) = v45;
      v46 = v28;
      v47 = v23;
      _os_log_impl(&dword_249340000, v46, v140, "1. %s self: %s folderID: %s topItems: %s", v31, 0x2Au);
      swift_arrayDestroy();
      v48 = v33;
      v24 = v134;
      MEMORY[0x24C1F6C70](v48, -1, -1);
      v49 = v31;
      v13 = v139;
      MEMORY[0x24C1F6C70](v49, -1, -1);
    }

    else
    {

      v47 = v23;
      v41 = a3;
    }

    v50 = [v24 folderStates];
    type metadata accessor for DOCSBFolderState(v50);
    v51 = sub_24938A3FC();

    a2 = v141;
    if (!*(v51 + 16) || (v52 = sub_2493832EC(v144, v141), (v53 & 1) == 0))
    {

      v70 = v24;

      v145 = sub_24938A38C();
      v71 = sub_24938A53C();

      if (os_log_type_enabled(v145, v71))
      {
        v72 = swift_slowAlloc();
        v73 = a2;
        v74 = swift_slowAlloc();
        v146 = v74;
        *v72 = 136315650;
        *(v72 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v146);
        *(v72 + 12) = 2080;
        v75 = v70;
        v76 = [v75 description];
        v77 = sub_24938A45C();
        v79 = v78;

        v80 = sub_249382D44(v77, v79, &v146);

        *(v72 + 14) = v80;
        *(v72 + 22) = 2080;
        *(v72 + 24) = sub_249382D44(v144, v73, &v146);
        _os_log_impl(&dword_249340000, v145, v71, "2. %s self: %s can not get state for: %s !!", v72, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1F6C70](v74, -1, -1);
        MEMORY[0x24C1F6C70](v72, -1, -1);
      }

      else
      {
        v81 = v145;
      }

      return;
    }

    v132[0] = *(*(v51 + 56) + 8 * v52);

    a3 = v41 >> 62 ? sub_24938A71C() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v134 = v24;
    v132[1] = v47;
    if (!a3)
    {
      break;
    }

    v54 = 0;
    v143 = v41;
    v140 = v41 & 0xFFFFFFFFFFFFFF8;
    v141 = v41 & 0xC000000000000001;
    v137 = (isa + 48);
    v138 = (isa + 32);
    v139 = (isa + 56);
    v144 = MEMORY[0x277D84F90];
    v20 = &unk_27EEE2B80;
    v4 = &qword_24938F548;
    while (v141)
    {
      v55 = MEMORY[0x24C1F60A0](v54, v143);
      a2 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_46;
      }

LABEL_16:
      v56 = [v55 fpfs_fpItem];
      if (v56)
      {
        v57 = v56;
        v58 = a3;
        v59 = v15;
        v60 = v13;
        v61 = [v56 fileURL];

        if (v61)
        {
          v62 = v136;
          sub_24938A2DC();

          v63 = 0;
          v16 = v145;
        }

        else
        {
          v63 = 1;
          v16 = v145;
          v62 = v136;
        }

        swift_unknownObjectRelease();
        (*v139)(v62, v63, 1, v16);
        v64 = v62;
        v13 = v60;
        v20 = &unk_27EEE2B80;
        sub_2493787A4(v64, v60, &unk_27EEE2B80, &qword_24938F548);
        v15 = v59;
        a3 = v58;
      }

      else
      {
        swift_unknownObjectRelease();
        v16 = v145;
        (*v139)(v13, 1, 1, v145);
      }

      sub_2493787A4(v13, v15, &unk_27EEE2B80, &qword_24938F548);
      if ((*v137)(v15, 1, v16) == 1)
      {
        sub_249378744(v15, &unk_27EEE2B80, &qword_24938F548);
      }

      else
      {
        v65 = *v138;
        (*v138)(v142, v15, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_249382B6C(0, v144[2] + 1, 1, v144);
        }

        v67 = v144[2];
        v66 = v144[3];
        if (v67 >= v66 >> 1)
        {
          v144 = sub_249382B6C(v66 > 1, v67 + 1, 1, v144);
        }

        v68 = v144;
        v144[2] = v67 + 1;
        v69 = v68 + ((*(isa + 80) + 32) & ~*(isa + 80)) + *(isa + 9) * v67;
        v16 = v145;
        v65(v69, v142, v145);
        v20 = &unk_27EEE2B80;
      }

      ++v54;
      if (a2 == a3)
      {
        goto LABEL_37;
      }
    }

    if (v54 >= *(v140 + 16))
    {
      goto LABEL_47;
    }

    v55 = *(v143 + 8 * v54 + 32);
    swift_unknownObjectRetain();
    a2 = v54 + 1;
    if (!__OFADD__(v54, 1))
    {
      goto LABEL_16;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v144 = MEMORY[0x277D84F90];
LABEL_37:
  v82 = sub_24938A4EC();
  v83 = v132[0];
  v84 = [v132[0] compareOrderedFilesToOtherOrderedFiles_];

  v85 = v134;
  v86 = v83;

  v87 = sub_24938A38C();
  v88 = sub_24938A53C();

  v89 = os_log_type_enabled(v87, v88);
  if (v84)
  {
    if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v146 = v91;
      *v90 = 136315906;
      *(v90 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v146);
      *(v90 + 12) = 2080;
      v92 = v85;
      v93 = [v92 description];
      v94 = sub_24938A45C();
      v96 = v95;

      v97 = sub_249382D44(v94, v96, &v146);

      *(v90 + 14) = v97;
      *(v90 + 22) = 2080;
      v98 = v145;
      v99 = MEMORY[0x24C1F5F20](v144, v145);
      v101 = v100;

      v102 = sub_249382D44(v99, v101, &v146);

      *(v90 + 24) = v102;
      *(v90 + 32) = 2080;
      v103 = [v86 orderedFiles];
      v104 = sub_24938A4FC();

      v105 = MEMORY[0x24C1F5F20](v104, v98);
      v107 = v106;

      v108 = sub_249382D44(v105, v107, &v146);

      *(v90 + 34) = v108;
      _os_log_impl(&dword_249340000, v87, v88, "4. %s self: %s top items: %s are equal to stored top items: %s. No need to notify.", v90, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v91, -1, -1);
      MEMORY[0x24C1F6C70](v90, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (v89)
    {
      v109 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v146 = v143;
      *v109 = 136315906;
      *(v109 + 4) = sub_249382D44(0xD000000000000028, 0x8000000249394B50, &v146);
      *(v109 + 12) = 2080;
      v110 = v85;
      v111 = [v110 description];
      v112 = sub_24938A45C();
      v114 = v113;

      v115 = sub_249382D44(v112, v114, &v146);

      *(v109 + 14) = v115;
      *(v109 + 22) = 2080;
      v116 = v145;
      v117 = MEMORY[0x24C1F5F20](v144, v145);
      v119 = sub_249382D44(v117, v118, &v146);

      *(v109 + 24) = v119;
      *(v109 + 32) = 2080;
      v120 = [v86 orderedFiles];
      v121 = sub_24938A4FC();

      v122 = MEMORY[0x24C1F5F20](v121, v116);
      v124 = v123;

      v125 = sub_249382D44(v122, v124, &v146);

      *(v109 + 34) = v125;
      _os_log_impl(&dword_249340000, v87, v88, "3. %s self: %s top items: %s are NOT equal to stored top items: %s. Will notify listeners.", v109, 0x2Au);
      v126 = v143;
      swift_arrayDestroy();
      MEMORY[0x24C1F6C70](v126, -1, -1);
      MEMORY[0x24C1F6C70](v109, -1, -1);
    }

    v127 = v133;
    v128 = [v86 folderIdentifier];
    if (!v128)
    {
      sub_24938A45C();
      v128 = sub_24938A42C();
    }

    v129 = [v86 folderURL];
    sub_24938A2DC();

    v130 = sub_24938A2CC();
    (*(isa + 1))(v127, v145);
    [v85 _notifyFolderChanged_url_];

    v131 = sub_24938A4EC();

    [v86 setOrderedFiles_];
  }
}

void sub_249381A78(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D68, &qword_24938F5E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24938F5C0;
  sub_24938A45C();
  v7 = MEMORY[0x277D837D0];
  sub_24938A64C();
  *(inited + 96) = v7;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  v31[0] = sub_24938A45C();
  v31[1] = v8;

  sub_24938A64C();
  v9 = sub_24938A2EC();
  *(inited + 168) = v7;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  sub_249384E8C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D70, &qword_24938F5F0);
  swift_arrayDestroy();
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v11 = sub_24938A3AC();
  __swift_project_value_buffer(v11, qword_27EEE2AE0);
  v12 = v2;

  v13 = sub_24938A38C();
  v14 = sub_24938A53C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v15 = 136315906;
    *(v15 + 4) = sub_249382D44(0xD00000000000001CLL, 0x8000000249394B30, v31);
    *(v15 + 12) = 2080;
    v16 = v12;
    v17 = [v16 description];
    v18 = sub_24938A45C();
    v20 = v19;

    v21 = sub_249382D44(v18, v20, v31);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    type metadata accessor for Name(0);
    v22 = @"DOCSBFolderDidChangeDistributedNotification";
    v23 = sub_24938A46C();
    v25 = sub_249382D44(v23, v24, v31);

    *(v15 + 24) = v25;
    *(v15 + 32) = 2080;
    v26 = sub_24938A40C();
    v28 = sub_249382D44(v26, v27, v31);

    *(v15 + 34) = v28;
    _os_log_impl(&dword_249340000, v13, v14, "%s self: %s posting distributed notification: %s userInfo: %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v30, -1, -1);
    MEMORY[0x24C1F6C70](v15, -1, -1);
  }

  else
  {

    v22 = @"DOCSBFolderDidChangeDistributedNotification";
  }

  v29 = sub_24938A3EC();

  [v5 postNotificationName:v22 object:0 userInfo:v29];
}

uint64_t sub_249381E80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_24938A2FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24938A45C();
  v14 = v13;
  sub_24938A2DC();
  v15 = a1;
  a5(v12, v14, v11);

  return (*(v8 + 8))(v11, v7);
}

void sub_249381F9C(uint64_t a1, uint64_t a2)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24938A3AC();
  __swift_project_value_buffer(v5, qword_27EEE2AE0);
  v6 = v2;

  oslog = sub_24938A38C();
  v7 = sub_24938A53C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_249382D44(0xD00000000000001ALL, 0x8000000249394B10, &v24);
    *(v8 + 12) = 2080;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_24938A45C();
    v14 = v13;

    v15 = sub_249382D44(v12, v14, &v24);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2080;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
    v17 = MEMORY[0x24C1F5F20](a1, v16);
    v19 = sub_249382D44(v17, v18, &v24);

    *(v8 + 24) = v19;
    *(v8 + 32) = 2080;
    v20 = MEMORY[0x24C1F5F20](a2, v16);
    v22 = sub_249382D44(v20, v21, &v24);

    *(v8 + 34) = v22;
    _os_log_impl(&dword_249340000, oslog, v7, "%s self: %s left: %s right: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v9, -1, -1);
    MEMORY[0x24C1F6C70](v8, -1, -1);
  }
}

uint64_t sub_2493822B4(uint64_t a1, unint64_t a2)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v5 = sub_24938A3AC();
  __swift_project_value_buffer(v5, qword_27EEE2AE0);
  v6 = v2;

  v7 = sub_24938A38C();
  v8 = sub_24938A53C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_249382D44(0xD00000000000001CLL, 0x8000000249394AF0, &v18);
    *(v9 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_24938A45C();
    v15 = v14;

    v16 = sub_249382D44(v13, v15, &v18);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_249382D44(a1, a2, &v18);
    _os_log_impl(&dword_249340000, v7, v8, "%s self: %s folderID: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v10, -1, -1);
    MEMORY[0x24C1F6C70](v9, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void sub_24938255C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v7 = sub_24938A3AC();
  __swift_project_value_buffer(v7, qword_27EEE2AE0);
  v8 = v3;

  oslog = sub_24938A38C();
  v9 = sub_24938A53C();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315906;
    *(v10 + 4) = sub_249382D44(0xD000000000000018, 0x8000000249394AD0, &v23);
    *(v10 + 12) = 2080;
    v12 = v8;
    v13 = [v12 description];
    v14 = sub_24938A45C();
    v16 = v15;

    v17 = sub_249382D44(v14, v16, &v23);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
    v19 = MEMORY[0x24C1F5F20](a1, v18);
    v21 = sub_249382D44(v19, v20, &v23);

    *(v10 + 24) = v21;
    *(v10 + 32) = 2080;
    *(v10 + 34) = sub_249382D44(a2, a3, &v23);
    _os_log_impl(&dword_249340000, oslog, v9, "%s self: %s items: %s folderID: %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1F6C70](v11, -1, -1);
    MEMORY[0x24C1F6C70](v10, -1, -1);
  }
}

id DOCSBFolderStatesObservervationManager.init()()
{
  *&v0[OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderObservationProvider] = 0;
  v1 = OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderStates;
  *&v0[v1] = sub_249384FC8(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = DOCSBFolderStatesObservervationManager;
  return objc_msgSendSuper2(&v3, sel_init);
}

size_t sub_24938297C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DE0, &qword_24938F640);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DB0, &qword_24938F620) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_249382B6C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D88, &qword_24938F600);
  v10 = *(sub_24938A2FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24938A2FC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_249382D44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249382E10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24937860C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_249382E10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_249382F1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24938A69C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_249382F1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_249382F68(a1, a2);
  sub_249383098(&unk_285C6E928);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_249382F68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_249383184(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24938A69C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24938A4AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249383184(v10, 0);
        result = sub_24938A65C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_249383098(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2493831F8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_249383184(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D60, &qword_24938F5E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2493831F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D60, &qword_24938F5E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2493832EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24938A7FC();
  sub_24938A47C();
  v6 = sub_24938A80C();

  return sub_2493833A8(a1, a2, v6);
}

unint64_t sub_249383364(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24938A62C();

  return sub_249383460(a1, v5);
}

unint64_t sub_2493833A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24938A7BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_249383460(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2493850F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1F6050](v9, a1);
      sub_249377724(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_249383528(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_24938A2FC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2DE8, &qword_24938F648);
  v46 = a2;
  result = sub_24938A74C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_24938A7FC();
      sub_24938A47C();
      result = sub_24938A80C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2493838A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEE2D78, &qword_24938F5F8);
  result = sub_24938A74C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_2493786D0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2493850F4(v24, &v38);
        sub_24937860C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_24938A62C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2493786D0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_249383B60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D98, &qword_24938F610);
  v39 = a2;
  result = sub_24938A74C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_24938A7FC();
      sub_24938A47C();
      result = sub_24938A80C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}