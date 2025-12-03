@interface DOCDocumentSource
+ (id)applicationIconForBundleIdentifier:(id)identifier size:(int64_t)size;
+ (id)defaultSourceForBundleIdentifier:(id)identifier defaultSourceIdentifier:(id)sourceIdentifier sources:(id)sources;
+ (id)defaultSourceIdentifierForBundleIdentifier:(id)identifier;
+ (id)iconForFileProvider:(id)provider size:(int64_t)size;
+ (id)sourceIdentifierOrderWithDefault:(id)default;
+ (id)startSearchingSourcesForBundleIdentifier:(id)identifier updateBlock:(id)block;
+ (void)defaultSourceForBundleIdentifier:(id)identifier completionBlock:(id)block;
+ (void)defaultSourceForBundleIdentifier:(id)identifier selectedSourceIdentifier:(id)sourceIdentifier completionBlock:(id)block;
+ (void)endSearchingSources:(id)sources;
+ (void)setDefaultSource:(id)source forBundleIdentifier:(id)identifier;
+ (void)setDefaultSourceIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidForConfiguration:(id)configuration;
- (DOCDocumentSource)init;
- (DOCDocumentSource)initWithCoder:(id)coder;
- (id)iconForSize:(int64_t)size;
- (id)loadIconForSize:(int64_t)size;
- (id)sanitizedSource;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DOCDocumentSource

- (DOCDocumentSource)init
{
  v6.receiver = self;
  v6.super_class = DOCDocumentSource;
  v2 = [(DOCDocumentSource *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)startSearchingSourcesForBundleIdentifier:(id)identifier updateBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v7 = MEMORY[0x1E69673E8];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __85__DOCDocumentSource_Searching__startSearchingSourcesForBundleIdentifier_updateBlock___block_invoke;
  v17 = &unk_1E8782FB8;
  v18 = identifierCopy;
  v19 = blockCopy;
  v8 = blockCopy;
  v9 = identifierCopy;
  v10 = [v7 beginMonitoringProviderDomainChangesWithHandler:&v14];
  v11 = [DOCSourceSearchingContext alloc];
  v12 = [(DOCSourceSearchingContext *)v11 initWithMonitoringContext:v10, v14, v15, v16, v17];

  return v12;
}

void __85__DOCDocumentSource_Searching__startSearchingSourcesForBundleIdentifier_updateBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  if (v6)
  {
    v8 = MEMORY[0x1E699A450];
    v9 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __85__DOCDocumentSource_Searching__startSearchingSourcesForBundleIdentifier_updateBlock___block_invoke_cold_1(v6, v9);
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __85__DOCDocumentSource_Searching__startSearchingSourcesForBundleIdentifier_updateBlock___block_invoke_29;
    v15 = &unk_1E8782F90;
    v16 = *(a1 + 32);
    v17 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v12];
  }

  v10 = *(a1 + 40);
  v11 = [v7 copy];
  (*(v10 + 16))(v10, v11, v6);
}

void __85__DOCDocumentSource_Searching__startSearchingSourcesForBundleIdentifier_updateBlock___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v4 = [v25 providerID];
  if ([v4 isEqualToString:*MEMORY[0x1E699A3A0]] & 1) != 0 || (objc_msgSend(v25, "canDisconnect"))
  {
    goto LABEL_5;
  }

  v5 = [v25 identifier];
  if (DOCProviderDomainIDIsRemovable())
  {
    goto LABEL_4;
  }

  v6 = [v25 isHidden];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E699A3F8] defaultPermission];
    v4 = [v7 hostIdentifier];

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E699A3F8] defaultPermission];
    [v9 setHostIdentifier:v8];

    v10 = [MEMORY[0x1E699A3F8] defaultPermission];
    LODWORD(v9) = [v10 canHostAppPerformAction:0 fileProviderDomain:v25];

    v11 = [MEMORY[0x1E699A3F8] defaultPermission];
    [v11 setHostIdentifier:v4];

    if (!v9)
    {
      goto LABEL_5;
    }

    if (![v25 supportsEnumeration])
    {
      goto LABEL_5;
    }

    if (![v25 isEnabled])
    {
      goto LABEL_5;
    }

    if ([v25 isHidden])
    {
      goto LABEL_5;
    }

    if ([v25 needsAuthentication])
    {
      goto LABEL_5;
    }

    v12 = [v25 identifier];
    v13 = DOCProviderDomainIDIsDefaultSharedServer();

    if (v13)
    {
      goto LABEL_5;
    }

    if (([v25 isAvailableSystemWide] & 1) == 0)
    {
      v14 = [v25 topLevelBundleIdentifier];
      v15 = [v14 isEqualToString:*(a1 + 32)];

      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v5 = [v25 extensionBundleURL];
    v16 = [MEMORY[0x1E69635D0] doc_applicationExtensionRecordAtURL:v5];
    v17 = [v16 infoDictionary];
    v18 = objc_opt_class();
    v19 = [v17 objectForKey:@"NSExtension" ofClass:v18 valuesOfClass:objc_opt_class()];

    v20 = [v19 objectForKey:@"NSExtensionFileProviderCanBeDefaultLocation"];
    v21 = v20;
    if (!v20 || [v20 BOOLValue])
    {
      v22 = *(a1 + 40);
      v23 = [[DOCSearchingDocumentSource alloc] initWithProviderDomain:v25];
      v24 = [v25 identifier];
      [v22 setValue:v23 forKey:v24];
    }

LABEL_4:
LABEL_5:
  }
}

+ (void)endSearchingSources:(id)sources
{
  v3 = MEMORY[0x1E69673E8];
  monitoringContext = [sources monitoringContext];
  [v3 endMonitoringProviderDomainChanges:monitoringContext];
}

+ (void)defaultSourceForBundleIdentifier:(id)identifier completionBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  v8 = [self defaultSourceIdentifierForBundleIdentifier:identifierCopy];
  [self defaultSourceForBundleIdentifier:identifierCopy selectedSourceIdentifier:v8 completionBlock:blockCopy];
}

+ (void)setDefaultSource:(id)source forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = [source identifier];
  [self setDefaultSourceIdentifier:identifier forBundleIdentifier:identifierCopy];
}

+ (id)defaultSourceIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E699A360]];
  v7 = [v6 valueForKey:@"DOCDefaultFileProviderIdentifierKey"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    goto LABEL_15;
  }

  v8 = [v7 objectForKeyedSubscript:identifierCopy];
  if ([v8 isEqualToString:@"com.apple.automatic.Local"])
  {
    [self setDefaultSourceIdentifier:@"com.apple.automatic.Local" forBundleIdentifier:identifierCopy];
    v9 = @"com.apple.automatic.Local";
  }

  else
  {
    v11 = *MEMORY[0x1E699A390];
    if ([v8 isEqualToString:*MEMORY[0x1E699A390]])
    {
      v12 = [v6 valueForKey:@"DOCDefaultFileProviderAutomaticKey"];
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v12 containsObject:identifierCopy])
          {
            v11 = @"com.apple.automatic.Local";
          }
        }
      }

      v10 = v11;

      goto LABEL_14;
    }

    v9 = v8;
  }

  v10 = v9;
LABEL_14:

LABEL_15:

  return v10;
}

+ (void)defaultSourceForBundleIdentifier:(id)identifier selectedSourceIdentifier:(id)sourceIdentifier completionBlock:(id)block
{
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  blockCopy = block;
  v11 = dispatch_group_create();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__0;
  v34[4] = __Block_byref_object_dispose__0;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__0;
  v32[4] = __Block_byref_object_dispose__0;
  v33 = 0;
  dispatch_group_enter(v11);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__0;
  v30[4] = __Block_byref_object_dispose__0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke;
  v22[3] = &unk_1E8782FE0;
  v26 = v36;
  v27 = v32;
  v28 = v34;
  selfCopy = self;
  v12 = identifierCopy;
  v23 = v12;
  v13 = sourceIdentifierCopy;
  v24 = v13;
  v14 = v11;
  v25 = v14;
  v31 = [self startSearchingSourcesForBundleIdentifier:v12 updateBlock:v22];
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke_54;
  block[3] = &unk_1E8783008;
  v18 = blockCopy;
  v19 = v34;
  v20 = v32;
  v21 = v30;
  v16 = blockCopy;
  dispatch_group_notify(v14, v15, block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

void __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 80);
  objc_sync_enter(v7);
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24))
  {
    objc_sync_exit(v7);
  }

  else
  {
    *(v8 + 24) = 1;
    objc_sync_exit(v7);

    if (v6)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
      v9 = MEMORY[0x1E699A450];
      v10 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke_cold_1(a1 + 64, v10);
      }
    }

    else
    {
      v11 = [*(a1 + 80) defaultSourceForBundleIdentifier:*(a1 + 32) defaultSourceIdentifier:*(a1 + 40) sources:v5];
      v12 = *(*(a1 + 72) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        v14 = MEMORY[0x1E699A450];
        v15 = *MEMORY[0x1E699A450];
        if (!*MEMORY[0x1E699A450])
        {
          DOCInitLogging();
          v15 = *v14;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke_cold_2((a1 + 32), v5, v15);
        }

        v16 = DOCErrorNoLocationAvailableError(0);
        v17 = *(*(a1 + 64) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
      }
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

uint64_t __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke_54(void *a1)
{
  result = a1[4];
  if (result)
  {
    result = (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  if (*(*(a1[7] + 8) + 40))
  {

    return [DOCDocumentSource endSearchingSources:?];
  }

  return result;
}

+ (id)defaultSourceForBundleIdentifier:(id)identifier defaultSourceIdentifier:(id)sourceIdentifier sources:(id)sources
{
  v94 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  sourcesCopy = sources;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v10 = [self sourceIdentifierOrderWithDefault:sourceIdentifierCopy];
  v69 = [v10 countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v69)
  {
    v12 = *v85;
    v13 = *MEMORY[0x1E699A370];
    v62 = *MEMORY[0x1E699A378];
    v59 = *MEMORY[0x1E699A380];
    v58 = *MEMORY[0x1E699A388];
    *&v11 = 138412290;
    v57 = v11;
    v64 = sourceIdentifierCopy;
    v65 = sourcesCopy;
    v63 = v10;
    v60 = *MEMORY[0x1E699A370];
    v61 = *v85;
    do
    {
      v14 = 0;
      do
      {
        if (*v85 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v68 = *(*(&v84 + 1) + 8 * v14);
        firstObject = [sourcesCopy objectForKeyedSubscript:v57];
        v16 = sourceIdentifierCopy;
        if ([v16 hasPrefix:v13] & 1) != 0 || (objc_msgSend(v16, "hasPrefix:", v62) & 1) != 0 || (objc_msgSend(v16, "hasPrefix:", v59))
        {
          v17 = 1;
        }

        else
        {
          v17 = [v16 hasPrefix:v58];
        }

        if (firstObject)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        if (!sourceIdentifierCopy || v18)
        {
          v70 = firstObject;
          defaultPermission = [MEMORY[0x1E699A3F8] defaultPermission];
          v71 = [defaultPermission dataOwnerStateForBundleIdentifier:identifierCopy];

          v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          allValues = [sourcesCopy allValues];
          v22 = [allValues countByEnumeratingWithState:&v80 objects:v92 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v81;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v81 != v24)
                {
                  objc_enumerationMutation(allValues);
                }

                v26 = *(*(&v80 + 1) + 8 * i);
                searching_fileProviderDomain = [v26 searching_fileProviderDomain];
                if ([searching_fileProviderDomain isiCloudDriveProvider])
                {
                  searching_fileProviderDomain2 = [v26 searching_fileProviderDomain];
                  isHidden = [searching_fileProviderDomain2 isHidden];

                  if ((isHidden & 1) == 0)
                  {
                    [v20 addObject:v26];
                  }
                }

                else
                {
                }
              }

              v23 = [allValues countByEnumeratingWithState:&v80 objects:v92 count:16];
            }

            while (v23);
          }

          if ([v20 count] == 1)
          {
            firstObject = [v20 firstObject];
            v30 = v70;
            v10 = v63;
            goto LABEL_28;
          }

          v10 = v63;
          if ([v20 count] < 2)
          {
            firstObject = v70;
            v12 = v61;
          }

          else
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v30 = v20;
            v31 = [v30 countByEnumeratingWithState:&v76 objects:v91 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v77;
              while (2)
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v77 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v76 + 1) + 8 * j);
                  searching_fileProviderDomain3 = [v35 searching_fileProviderDomain];
                  isEnterpriseDomain = [searching_fileProviderDomain3 isEnterpriseDomain];

                  if (isEnterpriseDomain)
                  {
                    v38 = v71 == 1;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  if (!v38)
                  {
                    searching_fileProviderDomain4 = [v35 searching_fileProviderDomain];
                    isEnterpriseDomain2 = [searching_fileProviderDomain4 isEnterpriseDomain];

                    if ((isEnterpriseDomain2 & 1) != 0 || v71 == 1)
                    {
                      continue;
                    }
                  }

                  firstObject2 = v35;

                  sourceIdentifierCopy = v64;
                  sourcesCopy = v65;
                  goto LABEL_72;
                }

                v32 = [v30 countByEnumeratingWithState:&v76 objects:v91 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }

            firstObject = v70;
LABEL_28:
            v12 = v61;
          }

          sourceIdentifierCopy = v64;
          sourcesCopy = v65;
          v13 = v60;
        }

        if (firstObject)
        {
          firstObject2 = firstObject;

          goto LABEL_73;
        }

        v41 = *MEMORY[0x1E699A450];
        if (!*MEMORY[0x1E699A450])
        {
          DOCInitLogging();
          v41 = *MEMORY[0x1E699A450];
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = v57;
          v90 = v68;
          _os_log_debug_impl(&dword_1E57D8000, v41, OS_LOG_TYPE_DEBUG, "Wanted to use %@, but it isn't available", buf, 0xCu);
        }

        ++v14;
      }

      while (v14 != v69);
      v42 = [v10 countByEnumeratingWithState:&v84 objects:v93 count:16];
      v69 = v42;
    }

    while (v42);
  }

  allValues2 = [sourcesCopy allValues];
  defaultPermission2 = [MEMORY[0x1E699A3F8] defaultPermission];
  v45 = [defaultPermission2 defaultFileProviderForAppBundle:identifierCopy];

  v70 = v45;
  if (v45)
  {
    v66 = sourcesCopy;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v46 = allValues2;
    v47 = [v46 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v73;
      while (2)
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v73 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v72 + 1) + 8 * k);
          searching_fileProviderDomain5 = [v51 searching_fileProviderDomain];
          topLevelBundleIdentifier = [searching_fileProviderDomain5 topLevelBundleIdentifier];
          v54 = [topLevelBundleIdentifier isEqualToString:v45];

          if (v54)
          {
            firstObject2 = v51;
            v10 = v46;

            sourcesCopy = v66;
            goto LABEL_72;
          }

          v45 = v70;
        }

        v48 = [v46 countByEnumeratingWithState:&v72 objects:v88 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }
    }

    sourcesCopy = v66;
  }

  if ([allValues2 count] == 1)
  {
    firstObject2 = [allValues2 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

  v10 = allValues2;
LABEL_72:

LABEL_73:

  return firstObject2;
}

+ (id)sourceIdentifierOrderWithDefault:(id)default
{
  defaultCopy = default;
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:3];
  v5 = MEMORY[0x1E699A390];
  if (defaultCopy)
  {
    if ([defaultCopy isEqualToString:@"com.apple.automatic.Local"])
    {
      v6 = *v5;
      v7 = v4;
    }

    else
    {
      v7 = v4;
      v6 = defaultCopy;
    }

    [v7 addObject:v6];
  }

  v8 = FPIsCloudDocsWithFPFSEnabled();
  v9 = MEMORY[0x1E699A370];
  if (!v8)
  {
    v9 = MEMORY[0x1E699A380];
  }

  [v4 addObject:*v9];
  [v4 addObject:*v5];

  return v4;
}

+ (void)setDefaultSourceIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E699A360]];
  v8 = [v7 valueForKey:@"DOCDefaultFileProviderIdentifierKey"];
  v9 = [v7 valueForKey:@"DOCDefaultFileProviderAutomaticKey"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v9 mutableCopy];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  if (@"com.apple.automatic.Local" == identifierCopy)
  {
    [v11 setValue:*MEMORY[0x1E699A390] forKey:bundleIdentifierCopy];
    if (([v13 containsObject:bundleIdentifierCopy] & 1) == 0)
    {
      [v13 addObject:bundleIdentifierCopy];
    }
  }

  else
  {
    [v11 setValue:identifierCopy forKey:bundleIdentifierCopy];
    [v13 removeObject:bundleIdentifierCopy];
  }

  [v7 setValue:v11 forKey:@"DOCDefaultFileProviderIdentifierKey"];
  [v7 setValue:v13 forKey:@"DOCDefaultFileProviderAutomaticKey"];
  notify_post(DOCDefaultSaveLocationDidChangeNotification);
  v14 = dispatch_time(0, 100000000);
  dispatch_after(v14, MEMORY[0x1E69E96A0], &__block_literal_global_3);
}

- (DOCDocumentSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DOCDocumentSource;
  v5 = [(DOCDocumentSource *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(DOCDocumentSource *)v5 setDisplayName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerName"];
    [(DOCDocumentSource *)v5 setProviderName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    [(DOCDocumentSource *)v5 setDomainName:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(DOCDocumentSource *)v5 setIdentifier:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promptText"];
    [(DOCDocumentSource *)v5 setPromptText:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"iconsBySize"];
    [(DOCDocumentSource *)v5 setIconsBySize:v15];

    v16 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    v6 = [identifier isEqual:self->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(DOCDocumentSource *)self displayName];

  if (displayName)
  {
    displayName2 = [(DOCDocumentSource *)self displayName];
    [coderCopy encodeObject:displayName2 forKey:@"displayName"];
  }

  providerName = [(DOCDocumentSource *)self providerName];

  if (providerName)
  {
    providerName2 = [(DOCDocumentSource *)self providerName];
    [coderCopy encodeObject:providerName2 forKey:@"providerName"];
  }

  domainName = [(DOCDocumentSource *)self domainName];

  if (domainName)
  {
    domainName2 = [(DOCDocumentSource *)self domainName];
    [coderCopy encodeObject:domainName2 forKey:@"domainName"];
  }

  identifier = [(DOCDocumentSource *)self identifier];

  if (identifier)
  {
    identifier2 = [(DOCDocumentSource *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"identifier"];
  }

  promptText = [(DOCDocumentSource *)self promptText];

  if (promptText)
  {
    identifier3 = [(DOCDocumentSource *)self identifier];
    [coderCopy encodeObject:identifier3 forKey:@"promptText"];
  }

  iconsBySize = [(DOCDocumentSource *)self iconsBySize];

  v15 = coderCopy;
  if (iconsBySize)
  {
    iconsBySize2 = [(DOCDocumentSource *)self iconsBySize];
    [coderCopy encodeObject:iconsBySize2 forKey:@"iconsBySize"];

    v15 = coderCopy;
  }
}

- (id)sanitizedSource
{
  v3 = objc_alloc_init(DOCDocumentSource);
  displayName = [(DOCDocumentSource *)self displayName];
  [(DOCDocumentSource *)v3 setDisplayName:displayName];

  providerName = [(DOCDocumentSource *)self providerName];
  [(DOCDocumentSource *)v3 setProviderName:providerName];

  domainName = [(DOCDocumentSource *)self domainName];
  [(DOCDocumentSource *)v3 setDomainName:domainName];

  identifier = [(DOCDocumentSource *)self identifier];
  [(DOCDocumentSource *)v3 setIdentifier:identifier];

  iconsBySize = [(DOCDocumentSource *)self iconsBySize];
  [(DOCDocumentSource *)v3 setIconsBySize:iconsBySize];

  return v3;
}

- (BOOL)isValidForConfiguration:(id)configuration
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  documentContentTypes = [configurationCopy documentContentTypes];
  v6 = [documentContentTypes containsObject:*MEMORY[0x1E6982E50]];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    documentContentTypes2 = [(DOCDocumentSource *)self documentContentTypes];
    v9 = [documentContentTypes2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      v21 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(documentContentTypes2);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          documentContentTypes3 = [configurationCopy documentContentTypes];
          v15 = [documentContentTypes3 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v23;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v23 != v17)
                {
                  objc_enumerationMutation(documentContentTypes3);
                }

                v19 = *(*(&v22 + 1) + 8 * j);
                if ([v19 conformsToType:v13] & 1) != 0 || (objc_msgSend(v13, "conformsToType:", v19))
                {

                  v7 = 1;
                  goto LABEL_22;
                }
              }

              v16 = [documentContentTypes3 countByEnumeratingWithState:&v22 objects:v30 count:16];
              v11 = v21;
              if (v16)
              {
                continue;
              }

              break;
            }
          }
        }

        v10 = [documentContentTypes2 countByEnumeratingWithState:&v26 objects:v31 count:16];
        v7 = 0;
      }

      while (v10);
    }

    else
    {
      v7 = 0;
    }

LABEL_22:
  }

  return v7;
}

- (id)iconForSize:(int64_t)size
{
  iconsBySize = [(DOCDocumentSource *)self iconsBySize];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  v7 = [iconsBySize objectForKeyedSubscript:v6];

  if (!v7)
  {
    iconsBySize2 = [(DOCDocumentSource *)self iconsBySize];

    if (!iconsBySize2)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(DOCDocumentSource *)self setIconsBySize:dictionary];
    }

    v10 = [(DOCDocumentSource *)self loadIconForSize:size];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_opt_new();
    }

    v7 = v12;

    iconsBySize3 = [(DOCDocumentSource *)self iconsBySize];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:size];
    [iconsBySize3 setObject:v7 forKeyedSubscript:v14];
  }

  v15 = v7;

  return v15;
}

- (id)loadIconForSize:(int64_t)size
{
  v3 = MEMORY[0x1E699A478];
  v4 = *MEMORY[0x1E699A478];
  if (!*MEMORY[0x1E699A478])
  {
    DOCInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [DOCDocumentSource loadIconForSize:v4];
  }

  return 0;
}

+ (id)iconForFileProvider:(id)provider size:(int64_t)size
{
  providerCopy = provider;
  v6 = +[DOCIconService shared];
  v7 = [v6 iconForFileProvider:providerCopy size:size];

  return v7;
}

+ (id)applicationIconForBundleIdentifier:(id)identifier size:(int64_t)size
{
  identifierCopy = identifier;
  if (size == 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DOCDocumentSource.m" lineNumber:191 description:{@"Invalid icon size %@", v9}];
  }

  else if (size == 1)
  {
    size = 2;
  }

  else
  {
    size = 0;
  }

  v10 = MEMORY[0x1E69DCAB8];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = [v10 _applicationIconImageForBundleIdentifier:identifierCopy format:size scale:?];

  return v12;
}

void __85__DOCDocumentSource_Searching__startSearchingSourcesForBundleIdentifier_updateBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "Error while trying to search sources. Error: %@", &v2, 0xCu);
}

void __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "Error while trying to search the default source. Error: %@", &v3, 0xCu);
}

void __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1E57D8000, log, OS_LOG_TYPE_ERROR, "Error: could not find a valid source for %@ (sourcesByID: %@)", &v4, 0x16u);
}

- (void)loadIconForSize:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = 138412290;
  v3 = objc_opt_class();
  _os_log_fault_impl(&dword_1E57D8000, v1, OS_LOG_TYPE_FAULT, "%@ must implement -loadIconForSize:", &v2, 0xCu);
}

@end