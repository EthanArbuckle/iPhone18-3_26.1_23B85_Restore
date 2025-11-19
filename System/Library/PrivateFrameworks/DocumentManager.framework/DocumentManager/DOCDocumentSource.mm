@interface DOCDocumentSource
+ (id)applicationIconForBundleIdentifier:(id)a3 size:(int64_t)a4;
+ (id)defaultSourceForBundleIdentifier:(id)a3 defaultSourceIdentifier:(id)a4 sources:(id)a5;
+ (id)defaultSourceIdentifierForBundleIdentifier:(id)a3;
+ (id)iconForFileProvider:(id)a3 size:(int64_t)a4;
+ (id)sourceIdentifierOrderWithDefault:(id)a3;
+ (id)startSearchingSourcesForBundleIdentifier:(id)a3 updateBlock:(id)a4;
+ (void)defaultSourceForBundleIdentifier:(id)a3 completionBlock:(id)a4;
+ (void)defaultSourceForBundleIdentifier:(id)a3 selectedSourceIdentifier:(id)a4 completionBlock:(id)a5;
+ (void)endSearchingSources:(id)a3;
+ (void)setDefaultSource:(id)a3 forBundleIdentifier:(id)a4;
+ (void)setDefaultSourceIdentifier:(id)a3 forBundleIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidForConfiguration:(id)a3;
- (DOCDocumentSource)init;
- (DOCDocumentSource)initWithCoder:(id)a3;
- (id)iconForSize:(int64_t)a3;
- (id)loadIconForSize:(int64_t)a3;
- (id)sanitizedSource;
- (void)encodeWithCoder:(id)a3;
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

+ (id)startSearchingSourcesForBundleIdentifier:(id)a3 updateBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69673E8];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __85__DOCDocumentSource_Searching__startSearchingSourcesForBundleIdentifier_updateBlock___block_invoke;
  v17 = &unk_1E8782FB8;
  v18 = v5;
  v19 = v6;
  v8 = v6;
  v9 = v5;
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

+ (void)endSearchingSources:(id)a3
{
  v3 = MEMORY[0x1E69673E8];
  v4 = [a3 monitoringContext];
  [v3 endMonitoringProviderDomainChanges:v4];
}

+ (void)defaultSourceForBundleIdentifier:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 defaultSourceIdentifierForBundleIdentifier:v7];
  [a1 defaultSourceForBundleIdentifier:v7 selectedSourceIdentifier:v8 completionBlock:v6];
}

+ (void)setDefaultSource:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  [a1 setDefaultSourceIdentifier:v7 forBundleIdentifier:v6];
}

+ (id)defaultSourceIdentifierForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x1E699A360]];
  v7 = [v6 valueForKey:@"DOCDefaultFileProviderIdentifierKey"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    goto LABEL_15;
  }

  v8 = [v7 objectForKeyedSubscript:v4];
  if ([v8 isEqualToString:@"com.apple.automatic.Local"])
  {
    [a1 setDefaultSourceIdentifier:@"com.apple.automatic.Local" forBundleIdentifier:v4];
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
          if ([v12 containsObject:v4])
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

+ (void)defaultSourceForBundleIdentifier:(id)a3 selectedSourceIdentifier:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v29 = a1;
  v12 = v8;
  v23 = v12;
  v13 = v9;
  v24 = v13;
  v14 = v11;
  v25 = v14;
  v31 = [a1 startSearchingSourcesForBundleIdentifier:v12 updateBlock:v22];
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__DOCDocumentSource_SearchInternal__defaultSourceForBundleIdentifier_selectedSourceIdentifier_completionBlock___block_invoke_54;
  block[3] = &unk_1E8783008;
  v18 = v10;
  v19 = v34;
  v20 = v32;
  v21 = v30;
  v16 = v10;
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

+ (id)defaultSourceForBundleIdentifier:(id)a3 defaultSourceIdentifier:(id)a4 sources:(id)a5
{
  v94 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v8 = a4;
  v9 = a5;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v10 = [a1 sourceIdentifierOrderWithDefault:v8];
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
    v64 = v8;
    v65 = v9;
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
        v15 = [v9 objectForKeyedSubscript:v57];
        v16 = v8;
        if ([v16 hasPrefix:v13] & 1) != 0 || (objc_msgSend(v16, "hasPrefix:", v62) & 1) != 0 || (objc_msgSend(v16, "hasPrefix:", v59))
        {
          v17 = 1;
        }

        else
        {
          v17 = [v16 hasPrefix:v58];
        }

        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        if (!v8 || v18)
        {
          v70 = v15;
          v19 = [MEMORY[0x1E699A3F8] defaultPermission];
          v71 = [v19 dataOwnerStateForBundleIdentifier:v67];

          v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v21 = [v9 allValues];
          v22 = [v21 countByEnumeratingWithState:&v80 objects:v92 count:16];
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
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v80 + 1) + 8 * i);
                v27 = [v26 searching_fileProviderDomain];
                if ([v27 isiCloudDriveProvider])
                {
                  v28 = [v26 searching_fileProviderDomain];
                  v29 = [v28 isHidden];

                  if ((v29 & 1) == 0)
                  {
                    [v20 addObject:v26];
                  }
                }

                else
                {
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v80 objects:v92 count:16];
            }

            while (v23);
          }

          if ([v20 count] == 1)
          {
            v15 = [v20 firstObject];
            v30 = v70;
            v10 = v63;
            goto LABEL_28;
          }

          v10 = v63;
          if ([v20 count] < 2)
          {
            v15 = v70;
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
                  v36 = [v35 searching_fileProviderDomain];
                  v37 = [v36 isEnterpriseDomain];

                  if (v37)
                  {
                    v38 = v71 == 1;
                  }

                  else
                  {
                    v38 = 0;
                  }

                  if (!v38)
                  {
                    v39 = [v35 searching_fileProviderDomain];
                    v40 = [v39 isEnterpriseDomain];

                    if ((v40 & 1) != 0 || v71 == 1)
                    {
                      continue;
                    }
                  }

                  v55 = v35;

                  v8 = v64;
                  v9 = v65;
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

            v15 = v70;
LABEL_28:
            v12 = v61;
          }

          v8 = v64;
          v9 = v65;
          v13 = v60;
        }

        if (v15)
        {
          v55 = v15;

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

  v43 = [v9 allValues];
  v44 = [MEMORY[0x1E699A3F8] defaultPermission];
  v45 = [v44 defaultFileProviderForAppBundle:v67];

  v70 = v45;
  if (v45)
  {
    v66 = v9;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v46 = v43;
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
          v52 = [v51 searching_fileProviderDomain];
          v53 = [v52 topLevelBundleIdentifier];
          v54 = [v53 isEqualToString:v45];

          if (v54)
          {
            v55 = v51;
            v10 = v46;

            v9 = v66;
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

    v9 = v66;
  }

  if ([v43 count] == 1)
  {
    v55 = [v43 firstObject];
  }

  else
  {
    v55 = 0;
  }

  v10 = v43;
LABEL_72:

LABEL_73:

  return v55;
}

+ (id)sourceIdentifierOrderWithDefault:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:3];
  v5 = MEMORY[0x1E699A390];
  if (v3)
  {
    if ([v3 isEqualToString:@"com.apple.automatic.Local"])
    {
      v6 = *v5;
      v7 = v4;
    }

    else
    {
      v7 = v4;
      v6 = v3;
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

+ (void)setDefaultSourceIdentifier:(id)a3 forBundleIdentifier:(id)a4
{
  v15 = a3;
  v5 = a4;
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
  if (@"com.apple.automatic.Local" == v15)
  {
    [v11 setValue:*MEMORY[0x1E699A390] forKey:v5];
    if (([v13 containsObject:v5] & 1) == 0)
    {
      [v13 addObject:v5];
    }
  }

  else
  {
    [v11 setValue:v15 forKey:v5];
    [v13 removeObject:v5];
  }

  [v7 setValue:v11 forKey:@"DOCDefaultFileProviderIdentifierKey"];
  [v7 setValue:v13 forKey:@"DOCDefaultFileProviderAutomaticKey"];
  notify_post(DOCDefaultSaveLocationDidChangeNotification);
  v14 = dispatch_time(0, 100000000);
  dispatch_after(v14, MEMORY[0x1E69E96A0], &__block_literal_global_3);
}

- (DOCDocumentSource)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DOCDocumentSource;
  v5 = [(DOCDocumentSource *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(DOCDocumentSource *)v5 setDisplayName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerName"];
    [(DOCDocumentSource *)v5 setProviderName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    [(DOCDocumentSource *)v5 setDomainName:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(DOCDocumentSource *)v5 setIdentifier:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"promptText"];
    [(DOCDocumentSource *)v5 setPromptText:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"iconsBySize"];
    [(DOCDocumentSource *)v5 setIconsBySize:v15];

    v16 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [v5 isEqual:self->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(DOCDocumentSource *)self displayName];

  if (v4)
  {
    v5 = [(DOCDocumentSource *)self displayName];
    [v17 encodeObject:v5 forKey:@"displayName"];
  }

  v6 = [(DOCDocumentSource *)self providerName];

  if (v6)
  {
    v7 = [(DOCDocumentSource *)self providerName];
    [v17 encodeObject:v7 forKey:@"providerName"];
  }

  v8 = [(DOCDocumentSource *)self domainName];

  if (v8)
  {
    v9 = [(DOCDocumentSource *)self domainName];
    [v17 encodeObject:v9 forKey:@"domainName"];
  }

  v10 = [(DOCDocumentSource *)self identifier];

  if (v10)
  {
    v11 = [(DOCDocumentSource *)self identifier];
    [v17 encodeObject:v11 forKey:@"identifier"];
  }

  v12 = [(DOCDocumentSource *)self promptText];

  if (v12)
  {
    v13 = [(DOCDocumentSource *)self identifier];
    [v17 encodeObject:v13 forKey:@"promptText"];
  }

  v14 = [(DOCDocumentSource *)self iconsBySize];

  v15 = v17;
  if (v14)
  {
    v16 = [(DOCDocumentSource *)self iconsBySize];
    [v17 encodeObject:v16 forKey:@"iconsBySize"];

    v15 = v17;
  }
}

- (id)sanitizedSource
{
  v3 = objc_alloc_init(DOCDocumentSource);
  v4 = [(DOCDocumentSource *)self displayName];
  [(DOCDocumentSource *)v3 setDisplayName:v4];

  v5 = [(DOCDocumentSource *)self providerName];
  [(DOCDocumentSource *)v3 setProviderName:v5];

  v6 = [(DOCDocumentSource *)self domainName];
  [(DOCDocumentSource *)v3 setDomainName:v6];

  v7 = [(DOCDocumentSource *)self identifier];
  [(DOCDocumentSource *)v3 setIdentifier:v7];

  v8 = [(DOCDocumentSource *)self iconsBySize];
  [(DOCDocumentSource *)v3 setIconsBySize:v8];

  return v3;
}

- (BOOL)isValidForConfiguration:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 documentContentTypes];
  v6 = [v5 containsObject:*MEMORY[0x1E6982E50]];

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
    v8 = [(DOCDocumentSource *)self documentContentTypes];
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v14 = [v4 documentContentTypes];
          v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v22 + 1) + 8 * j);
                if ([v19 conformsToType:v13] & 1) != 0 || (objc_msgSend(v13, "conformsToType:", v19))
                {

                  v7 = 1;
                  goto LABEL_22;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
              v11 = v21;
              if (v16)
              {
                continue;
              }

              break;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
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

- (id)iconForSize:(int64_t)a3
{
  v5 = [(DOCDocumentSource *)self iconsBySize];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(DOCDocumentSource *)self iconsBySize];

    if (!v8)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [(DOCDocumentSource *)self setIconsBySize:v9];
    }

    v10 = [(DOCDocumentSource *)self loadIconForSize:a3];
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

    v13 = [(DOCDocumentSource *)self iconsBySize];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v13 setObject:v7 forKeyedSubscript:v14];
  }

  v15 = v7;

  return v15;
}

- (id)loadIconForSize:(int64_t)a3
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

+ (id)iconForFileProvider:(id)a3 size:(int64_t)a4
{
  v5 = a3;
  v6 = +[DOCIconService shared];
  v7 = [v6 iconForFileProvider:v5 size:a4];

  return v7;
}

+ (id)applicationIconForBundleIdentifier:(id)a3 size:(int64_t)a4
{
  v7 = a3;
  if (a4 == 2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    [v8 handleFailureInMethod:a2 object:a1 file:@"DOCDocumentSource.m" lineNumber:191 description:{@"Invalid icon size %@", v9}];
  }

  else if (a4 == 1)
  {
    a4 = 2;
  }

  else
  {
    a4 = 0;
  }

  v10 = MEMORY[0x1E69DCAB8];
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v12 = [v10 _applicationIconImageForBundleIdentifier:v7 format:a4 scale:?];

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