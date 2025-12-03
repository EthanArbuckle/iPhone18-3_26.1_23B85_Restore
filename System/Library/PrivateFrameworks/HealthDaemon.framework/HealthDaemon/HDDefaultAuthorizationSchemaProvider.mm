@interface HDDefaultAuthorizationSchemaProvider
- (id)filteredAuthorizedObjectsForClient:(id)client anchor:(id)anchor bundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error;
- (int64_t)isClientAuthorizedToReadObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error;
- (int64_t)isClientAuthorizedToReadType:(id)type sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error;
- (int64_t)isClientAuthorizedToWriteObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error;
- (int64_t)isClientAuthorizedToWriteType:(id)type sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error;
- (int64_t)setAuthorizationStatuses:(id)statuses authorizationModes:(id)modes bundleIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error;
@end

@implementation HDDefaultAuthorizationSchemaProvider

- (int64_t)isClientAuthorizedToReadObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  v16 = MEMORY[0x277CCD8A8];
  v53[0] = objectCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v18 = [v16 hd_sampleTypesForObjects:v17];

  v51 = 0;
  v19 = [HDAuthorizationStatus authorizationStatusForTypes:v18 bundleIdentifier:identifierCopy profile:profileCopy error:&v51];
  v20 = v51;
  v21 = v20;
  if (!v19)
  {
    v28 = 2;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  selfCopy = self;
  v22 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:v18];
  v23 = [v19 count];
  v38 = v22;
  if (v23 != [v22 count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"HDDefaultAuthorizationSchemaProvider.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"[authorizationStatuses count] == [typesIncludingParentTypes count]"}];
  }

  v40 = profileCopy;
  errorCopy = error;
  v42 = identifierCopy;
  v44 = objectCopy;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = v18;
  v24 = v18;
  v25 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    v28 = 2;
    do
    {
      v29 = 0;
      v30 = v21;
      do
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v47 + 1) + 8 * v29);
        v32 = [v19 objectForKeyedSubscript:v31];
        v46 = v30;
        v33 = [HDAuthorizationStatus isAuthorizedForObjectType:v31 authorizationStatus:v32 clientEntitlements:entitlementsCopy sharing:0 error:&v46];
        v21 = v46;

        if (v33)
        {
          v28 = 1;
        }

        ++v29;
        v30 = v21;
      }

      while (v26 != v29);
      v26 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v26);
  }

  else
  {
    v28 = 2;
  }

  identifierCopy = v42;
  objectCopy = v44;
  profileCopy = v40;
  error = errorCopy;
  v18 = v39;
  if (v21)
  {
LABEL_18:
    if (error)
    {
      v34 = v21;
      *error = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_21:

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

- (int64_t)isClientAuthorizedToReadType:(id)type sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  v15 = [MEMORY[0x277CBEB98] setWithObject:type];
  v46 = 0;
  v16 = [HDAuthorizationStatus authorizationStatusForTypes:v15 bundleIdentifier:identifierCopy profile:profileCopy error:&v46];
  v17 = v46;
  v18 = v17;
  if (!v16)
  {
    v25 = 2;
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v19 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:v15];
  v20 = [v16 count];
  v35 = v19;
  if (v20 != [v19 count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDefaultAuthorizationSchemaProvider.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"[authorizationStatuses count] == [typesIncludingParentTypes count]"}];
  }

  v37 = profileCopy;
  errorCopy = error;
  v39 = identifierCopy;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v15;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    v25 = 2;
    do
    {
      v26 = 0;
      v27 = v18;
      do
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v42 + 1) + 8 * v26);
        v29 = [v16 objectForKeyedSubscript:v28];
        v41 = v27;
        v30 = [HDAuthorizationStatus isAuthorizedForObjectType:v28 authorizationStatus:v29 clientEntitlements:entitlementsCopy sharing:0 error:&v41];
        v18 = v41;

        if (v30)
        {
          v25 = 1;
        }

        ++v26;
        v27 = v18;
      }

      while (v23 != v26);
      v23 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v23);
  }

  else
  {
    v25 = 2;
  }

  error = errorCopy;
  identifierCopy = v39;
  v15 = v36;
  profileCopy = v37;
  if (v18)
  {
LABEL_18:
    if (error)
    {
      v31 = v18;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int64_t)isClientAuthorizedToWriteType:(id)type sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  v15 = [MEMORY[0x277CBEB98] setWithObject:type];
  v46 = 0;
  v16 = [HDAuthorizationStatus authorizationStatusForTypes:v15 bundleIdentifier:identifierCopy profile:profileCopy error:&v46];
  v17 = v46;
  v18 = v17;
  if (!v16)
  {
    v25 = 2;
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v19 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:v15];
  v20 = [v16 count];
  v35 = v19;
  if (v20 != [v19 count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDefaultAuthorizationSchemaProvider.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"[authorizationStatuses count] == [typesIncludingParentTypes count]"}];
  }

  v37 = profileCopy;
  errorCopy = error;
  v39 = identifierCopy;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v15;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    v25 = 2;
    do
    {
      v26 = 0;
      v27 = v18;
      do
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v42 + 1) + 8 * v26);
        v29 = [v16 objectForKeyedSubscript:v28];
        v41 = v27;
        v30 = [HDAuthorizationStatus isAuthorizedForObjectType:v28 authorizationStatus:v29 clientEntitlements:entitlementsCopy sharing:1 error:&v41];
        v18 = v41;

        if (v30)
        {
          v25 = 1;
        }

        ++v26;
        v27 = v18;
      }

      while (v23 != v26);
      v23 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v23);
  }

  else
  {
    v25 = 2;
  }

  error = errorCopy;
  identifierCopy = v39;
  v15 = v36;
  profileCopy = v37;
  if (v18)
  {
LABEL_18:
    if (error)
    {
      v31 = v18;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int64_t)isClientAuthorizedToWriteObject:(id)object sourceBundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  v16 = MEMORY[0x277CCD8A8];
  v53[0] = objectCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
  v18 = [v16 hd_sampleTypesForObjects:v17];

  v51 = 0;
  v19 = [HDAuthorizationStatus authorizationStatusForTypes:v18 bundleIdentifier:identifierCopy profile:profileCopy error:&v51];
  v20 = v51;
  v21 = v20;
  if (!v19)
  {
    v28 = 2;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  selfCopy = self;
  v22 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:v18];
  v23 = [v19 count];
  v38 = v22;
  if (v23 != [v22 count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"HDDefaultAuthorizationSchemaProvider.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"[authorizationStatuses count] == [typesIncludingParentTypes count]"}];
  }

  v40 = profileCopy;
  errorCopy = error;
  v42 = identifierCopy;
  v44 = objectCopy;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = v18;
  v24 = v18;
  v25 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    v28 = 2;
    do
    {
      v29 = 0;
      v30 = v21;
      do
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v47 + 1) + 8 * v29);
        v32 = [v19 objectForKeyedSubscript:v31];
        v46 = v30;
        v33 = [HDAuthorizationStatus isAuthorizedForObjectType:v31 authorizationStatus:v32 clientEntitlements:entitlementsCopy sharing:1 error:&v46];
        v21 = v46;

        if (v33)
        {
          v28 = 1;
        }

        ++v29;
        v30 = v21;
      }

      while (v26 != v29);
      v26 = [v24 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v26);
  }

  else
  {
    v28 = 2;
  }

  identifierCopy = v42;
  objectCopy = v44;
  profileCopy = v40;
  error = errorCopy;
  v18 = v39;
  if (v21)
  {
LABEL_18:
    if (error)
    {
      v34 = v21;
      *error = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_21:

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

- (int64_t)setAuthorizationStatuses:(id)statuses authorizationModes:(id)modes bundleIdentifier:(id)identifier options:(unint64_t)options profile:(id)profile error:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  statusesCopy = statuses;
  modesCopy = modes;
  identifierCopy = identifier;
  profileCopy = profile;
  v18 = MEMORY[0x277CBEB98];
  allKeys = [statusesCopy allKeys];
  v20 = [v18 setWithArray:allKeys];

  database = [profileCopy database];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __123__HDDefaultAuthorizationSchemaProvider_setAuthorizationStatuses_authorizationModes_bundleIdentifier_options_profile_error___block_invoke;
  v49[3] = &unk_278614530;
  v48 = profileCopy;
  v50 = v48;
  v22 = identifierCopy;
  v51 = v22;
  selfCopy = self;
  v56 = a2;
  v53 = v20;
  v23 = statusesCopy;
  v54 = v23;
  v55 = modesCopy;
  optionsCopy = options;
  v24 = modesCopy;
  v25 = v20;
  v26 = [(HDHealthEntity *)HDAuthorizationEntity performWriteTransactionWithHealthDatabase:database error:error block:v49];

  if ((options & 2) == 0 || !v26)
  {
    goto LABEL_19;
  }

  v27 = v23;
  v28 = v48;
  if (self)
  {
    v47 = v25;
    v29 = v22;
    sourceManager = [v28 sourceManager];
    v59 = 0;
    v31 = [sourceManager clientSourceForBundleIdentifier:v29 error:&v59];

    v32 = v59;
    v45 = v27;
    if (v31)
    {
      if ([v31 _requiresAuthorization])
      {
        v33 = [v27 hk_filterKeysWithBlock:&__block_literal_global_24];
        allObjects = [v33 allObjects];
      }

      else
      {
        allObjects = [v27 allKeys];
      }

      sourceOrderManager = [v28 sourceOrderManager];
      v58 = v32;
      v37 = [sourceOrderManager addOrderedSource:v31 objectTypes:allObjects error:&v58];
      v35 = v58;

      if ((v37 & 1) == 0)
      {
        _HKInitializeLogging();
        v38 = HKLogAuthorization();
        v25 = v47;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier = [v31 bundleIdentifier];
          *buf = 138543618;
          v61 = bundleIdentifier;
          v62 = 2114;
          v63 = v35;
          _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Failed to update source order while changing authorization status for %{public}@: %{public}@", buf, 0x16u);

          v25 = v47;
        }

        v24 = v44;
        goto LABEL_17;
      }

      v24 = v44;
    }

    else
    {
      _HKInitializeLogging();
      allObjects = HKLogAuthorization();
      if (os_log_type_enabled(allObjects, OS_LOG_TYPE_ERROR))
      {
        bundleIdentifier2 = [0 bundleIdentifier];
        *buf = 138543618;
        v61 = bundleIdentifier2;
        v62 = 2114;
        v63 = v32;
        _os_log_error_impl(&dword_228986000, allObjects, OS_LOG_TYPE_ERROR, "Failed to find source %{public}@ to update source order after authorization update: %{public}@", buf, 0x16u);
      }

      v35 = v32;
    }

    v25 = v47;
LABEL_17:

    v27 = v45;
  }

LABEL_19:
  if (v26)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

BOOL __123__HDDefaultAuthorizationSchemaProvider_setAuthorizationStatuses_authorizationModes_bundleIdentifier_options_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) sourceManager];
  v7 = *(a1 + 40);
  v44 = 0;
  v8 = [v6 localSourceForBundleIdentifier:v7 copyIfNecessary:1 error:&v44];
  v9 = v44;

  if (v8)
  {
    v10 = [HDAuthorizationEntity authorizationRecordsByTypeForBundleIdentifier:*(a1 + 40) types:*(a1 + 56) profile:*(a1 + 32) error:a3];
    if (v10)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__22;
      v42 = __Block_byref_object_dispose__22;
      v43 = 0;
      v11 = *(a1 + 64);
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __123__HDDefaultAuthorizationSchemaProvider_setAuthorizationStatuses_authorizationModes_bundleIdentifier_options_profile_error___block_invoke_314;
      v33 = &unk_278616290;
      v12 = v10;
      v13 = *(a1 + 48);
      v34 = v12;
      v35 = v13;
      v14 = *(a1 + 80);
      v36 = &v38;
      v37 = v14;
      [v11 enumerateKeysAndObjectsUsingBlock:&v30];
      v15 = v39[5];
      if (v15)
      {
        v16 = v15;
        v17 = v16;
        if (a3)
        {
          v18 = v16;
          v19 = 0;
          *a3 = v17;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }
      }

      else
      {
        v19 = [HDAuthorizationEntity setAuthorizationStatuses:*(a1 + 64) authorizationRequests:MEMORY[0x277CBEC10] authorizationModes:*(a1 + 72) sourceEntity:v8 options:*(a1 + 88) profile:*(a1 + 32) error:a3, v30, v31, v32, v33];
        if (!*(a1 + 48))
        {
          goto LABEL_19;
        }

        v20 = *(a1 + 32);
        v21 = @"Authorization changed";
        v22 = [v20 nanoSyncManager];
        [v22 syncHealthDataWithOptions:0 reason:@"Authorization changed" completion:0];

        if (!*(a1 + 48))
        {
          goto LABEL_19;
        }

        v24 = a1 + 32;
        v23 = *(a1 + 32);
        v25 = *(v24 + 8);
        v17 = [v23 daemon];
        v26 = [v17 xpcEventManager];
        [v26 authorizationChangedForBundleIdentifier:v25];
      }

LABEL_19:
      _Block_object_dispose(&v38, 8);

      goto LABEL_20;
    }

    v12 = 0;
    v19 = 0;
  }

  else
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v27 = *(a1 + 48);
      v12 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 80) format:{@"No source with bundle identifier %@", *(a1 + 40)}];
      if (!v12)
      {
        v9 = 0;
        v19 = 0;
        goto LABEL_21;
      }
    }

    if (a3)
    {
      v28 = v12;
      v19 = 0;
      *a3 = v12;
    }

    else
    {
      _HKLogDroppedError();
      v19 = 0;
    }

    v9 = v12;
  }

LABEL_20:

LABEL_21:
  return v19;
}

void __123__HDDefaultAuthorizationSchemaProvider_setAuthorizationStatuses_authorizationModes_bundleIdentifier_options_profile_error___block_invoke_314(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v17];
  v9 = [v7 integerValue];
  if (v8)
  {
    if ([v8 isCompatibleStatus:v9])
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 40);
    [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 56) format:{@"Invalid authorization status %@ for type %@, request %ld", v7, v17, objc_msgSend(v8, "request")}];
  }

  else
  {
    v11 = *(a1 + 40);
    [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 56) format:{@"Missing authorization record for type %@", v17, v15, v16}];
  }
  v12 = ;
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

LABEL_6:
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

uint64_t __112__HDDefaultAuthorizationSchemaProvider__updateSourceOrderWithAuthorizationStatuses_forBundleIdentifier_profile___block_invoke(uint64_t a1, void *a2)
{
  [a2 integerValue];
  if (HKAuthorizationStatusAllowsReading())
  {
    return 1;
  }

  return HKAuthorizationStatusAllowsSharing();
}

- (id)filteredAuthorizedObjectsForClient:(id)client anchor:(id)anchor bundleIdentifier:(id)identifier clientEntitlements:(id)entitlements profile:(id)profile error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  anchorCopy = anchor;
  identifierCopy = identifier;
  entitlementsCopy = entitlements;
  profileCopy = profile;
  v17 = MEMORY[0x277CCD8A8];
  v40 = clientCopy;
  array = [clientCopy array];
  v19 = [v17 hd_sampleTypesForObjects:array];

  v37 = profileCopy;
  v38 = identifierCopy;
  v20 = [HDAuthorizationEntity readAuthorizationStatusesByTypeForBundleIdentifier:identifierCopy types:v19 profile:profileCopy error:error];
  v21 = [v20 mutableCopy];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = v19;
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v47;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v46 + 1) + 8 * i);
        v28 = [v21 objectForKeyedSubscript:v27];
        v29 = [HDAuthorizationStatus authorizationStatusForRecordForObjectType:v27 authorizationStatusRecord:v28 clientEntitlements:entitlementsCopy];
        [v21 setObject:v29 forKeyedSubscript:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v24);
  }

  if ([v21 count])
  {
    v30 = v40;
    array2 = [v40 array];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __132__HDDefaultAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke;
    v41[3] = &unk_2786162D8;
    v42 = v21;
    selfCopy = self;
    v32 = anchorCopy;
    v44 = anchorCopy;
    v45 = entitlementsCopy;
    v33 = [array2 hk_filter:v41];
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
    v32 = anchorCopy;
    v30 = v40;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t __132__HDDefaultAuthorizationSchemaProvider_filteredAuthorizedObjectsForClient_anchor_bundleIdentifier_clientEntitlements_profile_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 hd_sampleType];
  v6 = [v3 objectForKeyedSubscript:v5];

  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = v4;
  v11 = v7;
  v12 = v6;
  v13 = v9;
  if (v8 && [v12 canRead])
  {
    if ([v12 authorizationMode] == 1)
    {
      v14 = [v11 longLongValue];
      v15 = [v12 objectLimitAnchor];
      v16 = v14 <= [v15 longLongValue];
    }

    else
    {
      v16 = 1;
    }

    v18 = [v12 restrictedBundleIdentifier];
    if (v18)
    {
      v19 = [v10 _source];
      v20 = [v19 bundleIdentifier];
      v21 = [v20 isEqualToString:v18];

      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!v16)
    {
      goto LABEL_14;
    }

    if (([v13 hasEntitlement:*MEMORY[0x277CCC8B0]] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(v10, "_requiresPrivateEntitlementForQueries") & 1) == 0)
    {
      v17 = 1;
      goto LABEL_16;
    }

LABEL_14:
    v17 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v17 = 0;
LABEL_17:

  return v17;
}

@end