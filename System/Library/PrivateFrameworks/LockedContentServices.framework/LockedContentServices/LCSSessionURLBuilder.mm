@interface LCSSessionURLBuilder
+ (id)_bundleRecordForBundleIdentifier:(id)identifier;
+ (id)_containerBundleIdentifierForBundleProvider:(id)provider;
+ (id)_containerURLForBundleIdentifier:(id)identifier;
+ (id)_libraryURLForCurrentApplication;
+ (void)_libraryURLForCurrentApplication;
- (LCSSessionURLBuilder)initWithTypeIdentifier:(id)identifier;
- (id)_finalizedSessionURLsInContainerDirectory:(id)directory;
- (id)_nonContainerizedLibraryURLForBundleIdentifier:(id)identifier;
- (id)_nonContainerizedStagingContainerURLForBundleIdentifier:(id)identifier;
- (id)finalizationStagingSessionURLForBundleProvider:(id)provider fromTemporaryURL:(id)l;
- (id)finalizedSessionURLForBundleProvider:(id)provider fromSessionURL:(id)l;
- (id)finalizedSessionURLsForBundleIdentifier:(id)identifier;
- (id)finalizedSessionURLsForBundleProvider:(id)provider;
- (id)finalizedSessionURLsForCurrentApplication;
- (id)finalizedSessionsContainerURLForCurrentApplication;
- (id)temporarySessionURL;
@end

@implementation LCSSessionURLBuilder

+ (id)_containerBundleIdentifierForBundleProvider:(id)provider
{
  providerCopy = provider;
  containerBundleIdentifier = [providerCopy containerBundleIdentifier];
  if (!containerBundleIdentifier)
  {
    v5 = LCSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[LCSSessionURLBuilder _containerBundleIdentifierForBundleProvider:];
    }
  }

  return containerBundleIdentifier;
}

+ (id)_bundleRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = LCSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LCSCaptureApplicationMonitor *)identifierCopy _bundleRecordForBundleIdentifier:v5, v6];
    }
  }

  return v4;
}

+ (id)_containerURLForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self _bundleRecordForBundleIdentifier:identifierCopy];
  dataContainerURL = [v5 dataContainerURL];
  if (!dataContainerURL)
  {
    v7 = LCSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[LCSSessionURLBuilder _containerURLForBundleIdentifier:];
    }
  }

  return dataContainerURL;
}

+ (id)_libraryURLForCurrentApplication
{
  if (sandbox_get_container_expected())
  {
    v2 = LCSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[LCSSessionURLBuilder _libraryURLForCurrentApplication];
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager URLsForDirectory:5 inDomains:1];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    v6 = firstObject;
  }

  else
  {
    v7 = LCSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[LCSSessionURLBuilder _libraryURLForCurrentApplication];
    }
  }

  return firstObject;
}

- (LCSSessionURLBuilder)initWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = LCSSessionURLBuilder;
  v6 = [(LCSSessionURLBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_typeIdentifier, identifier);
  }

  return v7;
}

- (id)temporarySessionURL
{
  v15 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  typeIdentifier = [(LCSSessionURLBuilder *)self typeIdentifier];
  v6 = [temporaryDirectory URLByAppendingPathComponent:typeIdentifier];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 URLByAppendingPathComponent:uUIDString];

  v10 = LCSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_256175000, v10, OS_LOG_TYPE_INFO, "New session path: %@", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)finalizationStagingSessionURLForBundleProvider:(id)provider fromTemporaryURL:(id)l
{
  lCopy = l;
  providerCopy = provider;
  v8 = [objc_opt_class() _containerBundleIdentifierForBundleProvider:providerCopy];

  v9 = [objc_opt_class() _containerURLForBundleIdentifier:v8];
  v10 = [v9 URLByAppendingPathComponent:@"tmp"];
  typeIdentifier = [(LCSSessionURLBuilder *)self typeIdentifier];
  v12 = [v10 URLByAppendingPathComponent:typeIdentifier];

  if (!v12)
  {
    v12 = [(LCSSessionURLBuilder *)self _nonContainerizedStagingContainerURLForBundleIdentifier:v8];
  }

  lastPathComponent = [lCopy lastPathComponent];
  uUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:lastPathComponent];
  if (!uUID)
  {
    v15 = LCSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LCSSessionURLBuilder finalizationStagingSessionURLForBundleProvider:fromTemporaryURL:];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  uUIDString = [uUID UUIDString];
  v17 = [v12 URLByAppendingPathComponent:uUIDString];

  v18 = LCSLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [LCSSessionURLBuilder finalizationStagingSessionURLForBundleProvider:fromTemporaryURL:];
  }

  return v17;
}

- (id)_nonContainerizedStagingContainerURLForBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEBC0];
  identifierCopy = identifier;
  v6 = [v4 fileURLWithPath:@"/var/mobile/tmp"];
  v7 = [v6 URLByAppendingPathComponent:identifierCopy];

  typeIdentifier = [(LCSSessionURLBuilder *)self typeIdentifier];
  v9 = [v7 URLByAppendingPathComponent:typeIdentifier];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v7 path];
  v12 = [defaultManager isWritableFileAtPath:path];

  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)finalizedSessionURLForBundleProvider:(id)provider fromSessionURL:(id)l
{
  providerCopy = provider;
  lastPathComponent = [l lastPathComponent];
  uUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:lastPathComponent];
  if (!uUID)
  {
    v9 = LCSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LCSSessionURLBuilder finalizationStagingSessionURLForBundleProvider:fromTemporaryURL:];
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v10 = [objc_opt_class() _containerBundleIdentifierForBundleProvider:providerCopy];

  v11 = [objc_opt_class() _containerURLForBundleIdentifier:v10];
  v12 = [v11 URLByAppendingPathComponent:@"Library"];
  if (!v12)
  {
    v12 = [(LCSSessionURLBuilder *)self _nonContainerizedLibraryURLForBundleIdentifier:v10];
  }

  typeIdentifier = [(LCSSessionURLBuilder *)self typeIdentifier];
  v14 = [v12 URLByAppendingPathComponent:typeIdentifier];
  uUIDString = [uUID UUIDString];
  v16 = [v14 URLByAppendingPathComponent:uUIDString];

  v17 = LCSLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [LCSSessionURLBuilder finalizedSessionURLForBundleProvider:fromSessionURL:];
  }

  return v16;
}

- (id)_nonContainerizedLibraryURLForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CBEBC0];
  identifierCopy = identifier;
  v5 = [v3 fileURLWithPath:@"/var/mobile/Library"];
  v6 = [v5 URLByAppendingPathComponent:identifierCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v6 path];
  v9 = [defaultManager isWritableFileAtPath:path];

  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)finalizedSessionURLsForBundleProvider:(id)provider
{
  providerCopy = provider;
  v5 = [objc_opt_class() _containerBundleIdentifierForBundleProvider:providerCopy];

  v6 = [(LCSSessionURLBuilder *)self finalizedSessionURLsForBundleIdentifier:v5];

  return v6;
}

- (id)finalizedSessionsContainerURLForCurrentApplication
{
  _libraryURLForCurrentApplication = [objc_opt_class() _libraryURLForCurrentApplication];
  typeIdentifier = [(LCSSessionURLBuilder *)self typeIdentifier];
  v5 = [_libraryURLForCurrentApplication URLByAppendingPathComponent:typeIdentifier];

  return v5;
}

- (id)finalizedSessionURLsForCurrentApplication
{
  _libraryURLForCurrentApplication = [objc_opt_class() _libraryURLForCurrentApplication];
  v4 = [(LCSSessionURLBuilder *)self _finalizedSessionURLsInContainerDirectory:_libraryURLForCurrentApplication];

  return v4;
}

- (id)finalizedSessionURLsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() _containerURLForBundleIdentifier:identifierCopy];

  if (v5)
  {
    v6 = [v5 URLByAppendingPathComponent:@"Library"];
    v7 = [(LCSSessionURLBuilder *)self _finalizedSessionURLsInContainerDirectory:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_finalizedSessionURLsInContainerDirectory:(id)directory
{
  v49[2] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  typeIdentifier = [(LCSSessionURLBuilder *)self typeIdentifier];
  v6 = [directoryCopy URLByAppendingPathComponent:typeIdentifier];

  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = *MEMORY[0x277CBE868];
  v9 = *MEMORY[0x277CBE7C0];
  v49[0] = *MEMORY[0x277CBE868];
  v49[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __66__LCSSessionURLBuilder__finalizedSessionURLsInContainerDirectory___block_invoke;
  v43[3] = &unk_279824EC8;
  v31 = directoryCopy;
  v32 = v6;
  v44 = v31;
  v11 = [defaultManager enumeratorAtURL:v6 includingPropertiesForKeys:v10 options:7 errorHandler:v43];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v15 = *MEMORY[0x277CBE8E8];
    v37 = *MEMORY[0x277CBE8E8];
    v34 = *v40;
    do
    {
      v16 = 0;
      v35 = v13;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v39 + 1) + 8 * v16);
        v47[0] = v8;
        v47[1] = v15;
        v47[2] = v9;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
        v38 = 0;
        v19 = [v17 resourceValuesForKeys:v18 error:&v38];
        v20 = v38;

        if (v20)
        {
          v21 = LCSLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v46 = v20;
            _os_log_error_impl(&dword_256175000, v21, OS_LOG_TYPE_ERROR, "Error fetching resource values: %@", buf, 0xCu);
          }
        }

        else
        {
          v22 = v9;
          v23 = v8;
          v24 = [v19 objectForKeyedSubscript:v8];
          bOOLValue = [v24 BOOLValue];

          v21 = [v19 objectForKeyedSubscript:v15];
          v26 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v21];

          if (bOOLValue)
          {
            v27 = v26 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (!v27)
          {
            [array addObject:v17];
          }

          v8 = v23;
          v9 = v22;
          v14 = v34;
          v13 = v35;
        }

        ++v16;
        v15 = v37;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v13);
  }

  v28 = [array sortedArrayUsingComparator:&__block_literal_global_1];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __66__LCSSessionURLBuilder__finalizedSessionURLsInContainerDirectory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LCSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_error_impl(&dword_256175000, v7, OS_LOG_TYPE_ERROR, "Error enumerating directory %@, on URL %@: %@", &v11, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __66__LCSSessionURLBuilder__finalizedSessionURLsInContainerDirectory___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x277CBE7C0];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v6 compare:v9];
  return v7;
}

+ (void)_containerBundleIdentifierForBundleProvider:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_containerURLForBundleIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_libraryURLForCurrentApplication
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finalizationStagingSessionURLForBundleProvider:fromTemporaryURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finalizationStagingSessionURLForBundleProvider:fromTemporaryURL:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_256175000, v0, OS_LOG_TYPE_DEBUG, "Finalization staging path:%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)finalizedSessionURLForBundleProvider:fromSessionURL:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_256175000, v0, OS_LOG_TYPE_DEBUG, "Finalization Library path:%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end