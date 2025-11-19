@interface CCDataResourceReadAccess
+ (id)defaultInstanceWithUseCase:(id)a3;
- (BOOL)_isDefaultPersonaRequestingUserResource:(id)a3;
- (BOOL)_shouldEnumerateContainer:(id)a3;
- (BOOL)enumerateReadableSets:(id *)a3 resourceOptions:(unsigned __int8)a4 setIdentifiers:(id)a5 descriptors:(id)a6 startAfterSet:(id)a7 sorted:(BOOL)a8 usingBlock:(id)a9;
- (CCDataResourceReadAccess)initWithAssertionOverride:(id)a3 useCase:(id)a4;
- (id)_requestAccessToResource:(id)a3 error:(id *)a4;
- (id)_sortedSetsFromProcessEntitlements:(id)a3 filteredBySortedIdentifiers:(id)a4;
- (id)databaseReadAccessForSet:(id)a3 error:(id *)a4;
@end

@implementation CCDataResourceReadAccess

+ (id)defaultInstanceWithUseCase:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithAssertionOverride:0 useCase:v3];

  return v4;
}

- (CCDataResourceReadAccess)initWithAssertionOverride:(id)a3 useCase:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CCDataResourceReadAccess;
  v9 = [(CCDataResourceReadAccess *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assertionOverride, a3);
    objc_storeStrong(&v10->_useCase, a4);
    v11 = [objc_alloc(MEMORY[0x1E698E968]) initWithUseCase:v8];
    accessClient = v10->_accessClient;
    v10->_accessClient = v11;
  }

  return v10;
}

- (id)databaseReadAccessForSet:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 toResourceSpecifier];
  v8 = [(CCDataResourceReadAccess *)self _requestAccessToResource:v7 error:a4];
  v9 = v8;
  if (!v8)
  {
    v21 = 0;
    goto LABEL_14;
  }

  v10 = [v8 container];
  v11 = [CCDataResource dataResourceForSet:v6 inContainer:v10];

  v28 = 0;
  v12 = [v11 databaseFileExists:&v28];
  v13 = v28;
  if (v12)
  {
    v14 = [v11 resourceStatus];
    if (!CCDataResourceStatusIsNotDiscoverable(v14))
    {
      v24 = [v11 databaseURL];
      v21 = [CCDatabaseReader readerForDatabaseAtURL:v24 accessAssertion:v9];

      goto LABEL_13;
    }

    v27 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    v16 = CCDataResourceStatusToString(v14);
    v17 = [v15 stringWithFormat:@"Set not discoverable: %@ - %@", v6, v16];
    v30 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v19 = [v27 errorWithDomain:@"com.apple.CascadeSets.Set" code:4 userInfo:v18];

    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v19;
      _os_log_impl(&dword_1B6DB2000, v20, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    CCSetError(a4, v19);
  }

  else
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v13 localizedFailureReason];
      *buf = 138412546;
      v32 = v6;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_1B6DB2000, v22, OS_LOG_TYPE_DEFAULT, "No such set: %@ - %@", buf, 0x16u);
    }

    CCSetError(a4, v13);
  }

  v21 = 0;
LABEL_13:

LABEL_14:
  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)enumerateReadableSets:(id *)a3 resourceOptions:(unsigned __int8)a4 setIdentifiers:(id)a5 descriptors:(id)a6 startAfterSet:(id)a7 sorted:(BOOL)a8 usingBlock:(id)a9
{
  v52 = a4;
  v82 = *MEMORY[0x1E69E9840];
  v50 = a6;
  v49 = a7;
  v48 = a9;
  v12 = MEMORY[0x1E698E9D8];
  v13 = a5;
  v45 = [v12 current];
  v46 = [v13 sortedArrayUsingDescriptors:MEMORY[0x1E695E0F0]];

  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if (([v45 hasDatavaultEntitlement] & 1) != 0 || objc_msgSend(v45, "processType") == 8)
  {
    v14 = [(CCDataResourceReadAccess *)self _requestAccessToSetsDirectoryWithOptions:v52 error:a3];
    v15 = [v14 container];
    obj = v14;
    LOBYTE(v14) = v15 == 0;

    if (v14)
    {
      v21 = 0;
      v54 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 1;
      v54 = 1;
      do
      {
        if ([v46 count])
        {
          v18 = [v46 objectAtIndex:v17 - 1];
        }

        else
        {
          v18 = 0;
        }

        v68 = v16;
        v19 = [obj container];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke;
        v64[3] = &unk_1E7C8B9A8;
        v65 = v48;
        v66 = &v73;
        v67 = &v69;
        LOBYTE(v44) = a8;
        v20 = [CCDataResource enumerateDataResources:&v68 setIdentifier:v18 descriptors:v50 container:v19 includingTombstoned:0 startAfterSet:v49 sorted:v44 usingBlock:v64];
        v21 = v68;

        v54 &= v20;
        if (v17 >= [v46 count])
        {
          break;
        }

        ++v17;
        v16 = v21;
      }

      while (*(v74 + 24) != 1);
      v22 = __biome_log_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v70[3];
        if (v54)
        {
          v24 = @"Success";
        }

        else
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failure, error: %@", v21];
        }

        *buf = 134218242;
        v79 = v23;
        v80 = 2112;
        v81 = v24;
        _os_log_impl(&dword_1B6DB2000, v22, OS_LOG_TYPE_DEFAULT, "Enumerated %lu readable sets for sets-directory-entitled process with result: %@", buf, 0x16u);
        if ((v54 & 1) == 0)
        {
        }
      }

      if (v21)
      {
        CCSetError(a3, v21);
      }
    }
  }

  else
  {
    v25 = [(CCDataResourceReadAccess *)self _sortedSetsFromProcessEntitlements:v45 filteredBySortedIdentifiers:v46];
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [CCDataResourceReadAccess enumerateReadableSets:v25 resourceOptions:v26 setIdentifiers:? descriptors:? startAfterSet:? sorted:? usingBlock:?];
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v25;
    v21 = 0;
    v27 = [obj countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v27)
    {
      v28 = *v61;
      v54 = 1;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v61 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v60 + 1) + 8 * i);
          v31 = objc_alloc(MEMORY[0x1E698E9F8]);
          v32 = [v31 initWithType:4 name:v30 descriptors:MEMORY[0x1E695E0F0] options:v52];
          v33 = [(CCDataResourceReadAccess *)self _requestAccessToResource:v32 error:a3];
          v34 = [v33 container];
          v35 = [(CCDataResourceReadAccess *)self _shouldEnumerateContainer:v34];

          if (v35)
          {
            v59 = v21;
            v36 = [v33 container];
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke_21;
            v55[3] = &unk_1E7C8B9A8;
            v56 = v48;
            v57 = &v73;
            v58 = &v69;
            LOBYTE(v44) = a8;
            v37 = [CCDataResource enumerateDataResources:&v59 setIdentifier:v30 descriptors:v50 container:v36 includingTombstoned:0 startAfterSet:v49 sorted:v44 usingBlock:v55];
            v38 = v59;

            v54 &= v37;
            v21 = v38;
          }
        }

        v27 = [obj countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v27);
    }

    else
    {
      v54 = 1;
    }

    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v70[3];
      if (v54)
      {
        v41 = @"Success";
      }

      else
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failure, error: %@", v21];
      }

      *buf = 134218242;
      v79 = v40;
      v80 = 2112;
      v81 = v41;
      _os_log_impl(&dword_1B6DB2000, v39, OS_LOG_TYPE_DEFAULT, "Enumerated %lu readable sets for sets-entitled process with result: %@", buf, 0x16u);
      if ((v54 & 1) == 0)
      {
      }
    }

    if (v21)
    {
      CCSetError(a3, v21);
    }
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  v42 = *MEMORY[0x1E69E9840];
  return v54 & 1;
}

void __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v9 = 0;
  v5 = [a2 setWithError:&v9];
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v8 = *(a1[5] + 8);
      (*(a1[4] + 16))();
      ++*(*(a1[6] + 8) + 24);
      if (*(*(a1[5] + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

void __125__CCDataResourceReadAccess_enumerateReadableSets_resourceOptions_setIdentifiers_descriptors_startAfterSet_sorted_usingBlock___block_invoke_21(void *a1, void *a2, _BYTE *a3)
{
  v9 = 0;
  v5 = [a2 setWithError:&v9];
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v8 = *(a1[5] + 8);
      (*(a1[4] + 16))();
      ++*(*(a1[6] + 8) + 24);
      if (*(*(a1[5] + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

- (id)_sortedSetsFromProcessEntitlements:(id)a3 filteredBySortedIdentifiers:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E698E970] policyForProcess:a3 connectionFlags:0 useCase:self->_useCase];
  v8 = [v7 explicitlyAuthorizedResourcesOfType:4 withAccessMode:1];
  v9 = v8;
  if (v6)
  {
    v10 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([v9 containsObject:{v16, v19}])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = [v8 sortedArrayUsingDescriptors:MEMORY[0x1E695E0F0]];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_requestAccessToResource:(id)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_assertionOverride)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      assertionOverride = self->_assertionOverride;
      *buf = 138412290;
      v33 = assertionOverride;
      _os_log_impl(&dword_1B6DB2000, v7, OS_LOG_TYPE_DEFAULT, "Skipping read only access request with assertion override: %@", buf, 0xCu);
    }

    v9 = self->_assertionOverride;
  }

  else if ([(CCDataResourceReadAccess *)self _isDefaultPersonaRequestingUserResource:v6])
  {
    v10 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E698E9D0] currentPersonaIdentifierLoggingDescription];
    v13 = [v11 stringWithFormat:@"Cannot request access for user-domain resource: %@ as persona: %@", v6, v12];
    v39[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v15 = [v10 errorWithDomain:@"com.apple.CascadeSets.Set" code:3 userInfo:v14];

    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 description];
      *buf = 138412290;
      v33 = v17;
      _os_log_impl(&dword_1B6DB2000, v16, OS_LOG_TYPE_DEFAULT, "Skipping access request: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    accessClient = self->_accessClient;
    v29 = 0;
    v9 = [(BMAccessClient *)accessClient requestAccessToResource:v6 mode:1 error:&v29];
    v19 = v29;
    v20 = __biome_log_for_category();
    v21 = v20;
    if (v9)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        useCase = self->_useCase;
        *buf = 138412546;
        v33 = v6;
        v34 = 2112;
        v35 = useCase;
        _os_log_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_DEFAULT, "[BiomeAccess] CCDataResourceReadAccess obtained access assertion for %@ using useCase: %@", buf, 0x16u);
      }

      v23 = v9;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v28 = self->_useCase;
        *buf = 138412802;
        v33 = v6;
        v34 = 2112;
        v35 = v28;
        v36 = 2112;
        v37 = v19;
        _os_log_error_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_ERROR, "[BiomeAccess] CCDataResourceReadAccess could not obtain access assertion for %@ using useCase: %@ with error: %@", buf, 0x20u);
      }

      if (v19)
      {
        v30 = *MEMORY[0x1E696AA08];
        v31 = v19;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      }

      else
      {
        v24 = 0;
      }

      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:3 userInfo:v24];

      CCSetError(a4, v25);
      v19 = v25;
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_isDefaultPersonaRequestingUserResource:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E698E9D0] currentPersonaIsDefault])
  {
    v4 = [v3 name];
    v5 = BMServiceDomainOverrideLookupFromConfigurationForSet();

    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldEnumerateContainer:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    if (!v4 || (v5 = v4, v6 = [MEMORY[0x1E698E9D0] currentPersonaIsDefault], objc_msgSend(v3, "personaIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, v5, v6 == v8))
    {
      v10 = 1;
      goto LABEL_9;
    }

    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CCDataResourceReadAccess *)v3 _shouldEnumerateContainer:v9];
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)enumerateReadableSets:(uint64_t)a1 resourceOptions:(NSObject *)a2 setIdentifiers:descriptors:startAfterSet:sorted:usingBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Resolved entitled set identifiers to enumerate data resources on disk %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_requestAccessToSetsDirectoryWithOptions:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "[BiomeAccess] CCDataResourceReadAccess could not obtain access assertion for sets directory using useCase: %@ with error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_shouldEnumerateContainer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E698E9D0] currentPersonaIdentifierLoggingDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Skip enumerating container: %@ as persona: %@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end