@interface HDAuthorizationStoreResetServer
+ (BOOL)validateClient:(id)client error:(id *)error;
- (void)remote_recalibrateEstimatesForSampleType:(id)type effectiveDate:(id)date completion:(id)completion;
- (void)remote_resetAuthorizationStatusForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_resetAuthorizationStatusesForObjects:(id)objects completion:(id)completion;
- (void)remote_resetObjectAuthorizationStatusForBundleIdentifier:(id)identifier objectType:(id)type completion:(id)completion;
@end

@implementation HDAuthorizationStoreResetServer

+ (BOOL)validateClient:(id)client error:(id *)error
{
  clientCopy = client;
  v6 = *MEMORY[0x277CCB888];
  if ([clientCopy hasRequiredEntitlement:*MEMORY[0x277CCB888] error:error])
  {
    v7 = [clientCopy valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = v8 | [clientCopy hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD60] error:error];

  return v9 & 1;
}

- (void)remote_resetObjectAuthorizationStatusForBundleIdentifier:(id)identifier objectType:(id)type completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  sourceManager = [profile sourceManager];
  v21 = 0;
  v11 = [sourceManager localSourceForBundleIdentifier:identifierCopy error:&v21];
  v12 = v21;

  if (v11)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    v20 = v12;
    v14 = [HDObjectAuthorizationEntity resetObjectAuthorizationRecordsForSource:v11 profile:profile2 error:&v20];
    v15 = v20;

    completionCopy[2](completionCopy, v14, v15);
    v12 = v15;
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogAuthorization();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v18 = HKLogAuthorization();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = identifierCopy;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "Failed to look up source for bundle identifier '%@' when reseting object authorization: %{public}@", buf, 0x16u);
      }
    }

    completionCopy[2](completionCopy, 0, v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)remote_resetAuthorizationStatusesForObjects:(id)objects completion:(id)completion
{
  objectsCopy = objects;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  selfCopy = self;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__HDAuthorizationStoreResetServer_remote_resetAuthorizationStatusesForObjects_completion___block_invoke;
  v14[3] = &unk_278615D40;
  v15 = objectsCopy;
  v16 = profile;
  v10 = profile;
  v11 = objectsCopy;
  v12 = [(HDHealthEntity *)HDObjectAuthorizationEntity performWriteTransactionWithHealthDatabase:database error:&v18 block:v14];
  v13 = v18;

  completionCopy[2](completionCopy, v12, v13);
}

BOOL __90__HDAuthorizationStoreResetServer_remote_resetAuthorizationStatusesForObjects_completion___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [a1[4] hk_map:&__block_literal_global_21];
  if ([HDObjectAuthorizationEntity resetAuthorizationForObjects:v5 profile:a1[5] error:a3])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = [a1[5] sourceManager];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = a1[4];
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v26 = *v29;
      v24 = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = [v10 sourceRevision];
          v12 = [v11 source];
          v13 = [v12 bundleIdentifier];

          v14 = [v27 localSourceForBundleIdentifier:v13 error:a3];
          v15 = v14;
          if (!v14 || ([v14 sourceUUIDWithProfile:a1[5] error:a3], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
          {

            v21 = 0;
            v5 = v24;
            v20 = obj;
            goto LABEL_14;
          }

          v17 = v16;
          v18 = objc_alloc_init(MEMORY[0x277CCD710]);
          v19 = [v10 UUID];
          [v18 setObjectUUID:v19];

          [v18 setSourceUUID:v17];
          [v18 setModificationDate:CFAbsoluteTimeGetCurrent()];
          [v18 setStatus:0];
          [v6 addObject:v18];
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        v5 = v24;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v20 = [a1[6] profile];
    v21 = +[HDObjectAuthorizationEntity setObjectAuthorizationRecords:syncProvenance:syncIdentity:profile:error:](HDObjectAuthorizationEntity, "setObjectAuthorizationRecords:syncProvenance:syncIdentity:profile:error:", v6, 0, [v20 currentSyncIdentityPersistentID], a1[5], a3);
LABEL_14:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)remote_resetAuthorizationStatusForBundleIdentifier:(id)identifier completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    profile = [(HDStandardTaskServer *)self profile];
    v30 = 0;
    v10 = [HDAuthorizationEntity resetAuthorizationStatusesForBundleIdentifier:identifierCopy profile:profile error:&v30];
    v11 = v30;

    if (v10)
    {
      profile2 = [(HDStandardTaskServer *)self profile];
      sourceManager = [profile2 sourceManager];
      v29 = v11;
      v14 = [sourceManager localSourceForBundleIdentifier:identifierCopy error:&v29];
      v15 = v29;

      if (v14)
      {
        profile3 = [(HDStandardTaskServer *)self profile];
        v28 = v15;
        v17 = [HDObjectAuthorizationEntity resetObjectAuthorizationRecordsForSource:v14 profile:profile3 error:&v28];
        v18 = v28;

        if (v17)
        {
          profile4 = [(HDStandardTaskServer *)self profile];
          v27 = v18;
          v20 = [HDConceptAuthorizationEntity resetConceptAuthorizationRecordsForSource:v14 profile:profile4 error:&v27];
          v15 = v27;

          if (!v20)
          {
            _HKInitializeLogging();
            v21 = HKLogAuthorization();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v32 = identifierCopy;
              v33 = 2114;
              v34 = v15;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to reset status for %{public}@ (concept authorization records failure: %{public}@)", buf, 0x16u);
            }
          }

          completionCopy[2](completionCopy, v20, v15);
        }

        else
        {
          _HKInitializeLogging();
          v25 = HKLogAuthorization();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v32 = identifierCopy;
            v33 = 2114;
            v34 = v18;
            _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "Failed to reset status for %{public}@ (object authorization records failure: %{public}@)", buf, 0x16u);
          }

          completionCopy[2](completionCopy, 0, v18);
          v15 = v18;
        }
      }

      else
      {
        _HKInitializeLogging();
        v24 = HKLogAuthorization();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v32 = identifierCopy;
          v33 = 2114;
          v34 = v15;
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "Failed to reset status for %{public}@ (local source failure: %{public}@)", buf, 0x16u);
        }

        completionCopy[2](completionCopy, 0, v15);
      }

      v11 = v15;
    }

    else
    {
      _HKInitializeLogging();
      v23 = HKLogAuthorization();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v32 = identifierCopy;
        v33 = 2114;
        v34 = v11;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Failed to reset status for %{public}@ (authorization entity failure: %{public}@)", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0, v11);
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"bundleIdentifier may not be nil"];
    completionCopy[2](completionCopy, 0, v22);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)remote_recalibrateEstimatesForSampleType:(id)type effectiveDate:(id)date completion:(id)completion
{
  typeCopy = type;
  dateCopy = date;
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [dateCopy compare:date];

  if (v11 == 1)
  {
    [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Effective date (%@) cannot be in the future.", dateCopy}];
    v14 = LABEL_6:;
    completionCopy[2](completionCopy, 0, v14);

    goto LABEL_7;
  }

  if ([typeCopy code] != 183)
  {
    [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Estimate recalibration is not supported for %@.", typeCopy}];
    goto LABEL_6;
  }

  v15 = 0;
  v12 = [MEMORY[0x277CC1D30] resetPredictedWalkDistanceOnDate:dateCopy error:&v15];
  v13 = v15;
  completionCopy[2](completionCopy, v12, v13);

LABEL_7:
}

@end