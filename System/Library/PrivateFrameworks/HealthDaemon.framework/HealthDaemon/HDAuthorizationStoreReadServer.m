@interface HDAuthorizationStoreReadServer
+ (BOOL)validateClient:(id)a3 error:(id *)a4;
- (void)remote_fetchAuthorizationContextForPromptSession:(id)a3 completion:(id)a4;
- (void)remote_fetchAuthorizationRecordsForSourceBundleIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchAuthorizationRecordsForType:(id)a3 completion:(id)a4;
- (void)remote_fetchAuthorizationStatusesForDocumentType:(id)a3 sourceBundleIdentifier:(id)a4 completion:(id)a5;
- (void)remote_fetchAuthorizationStatusesForHealthConceptIdentifier:(id)a3 completion:(id)a4;
- (void)remote_fetchAuthorizationStatusesForSampleUUID:(id)a3 completion:(id)a4;
- (void)remote_fetchConceptAuthorizationContextForPromptSession:(id)a3 completion:(id)a4;
- (void)remote_fetchConceptAuthorizationRecordsForSource:(id)a3 completion:(id)a4;
- (void)remote_fetchSourcesRequestingAuthorizationForTypes:(id)a3 completion:(id)a4;
- (void)remote_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 completion:(id)a4;
- (void)remote_validateRecalibrateEstimatesRequestRecord:(id)a3 completion:(id)a4;
@end

@implementation HDAuthorizationStoreReadServer

+ (BOOL)validateClient:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277CCB888];
  if ([v5 hasRequiredEntitlement:*MEMORY[0x277CCB888] error:a4])
  {
    v7 = [v5 valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = v8 | [v5 hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD58] error:a4];

  return v9 & 1;
}

- (void)remote_fetchAuthorizationRecordsForSourceBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [(HDStandardTaskServer *)self profile];
  v13 = 0;
  v11 = [HDAuthorizationEntity authorizationRecordsByTypeForBundleIdentifier:v8 types:v9 profile:v10 error:&v13];

  v12 = v13;
  v7[2](v7, v11, v12);
}

- (void)remote_fetchAuthorizationRecordsForType:(id)a3 completion:(id)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = a4;
    v9 = [(HDStandardTaskServer *)self profile];
    v14 = 0;
    v10 = [HDAuthorizationEntity authorizationRecordsBySourceForType:v7 profile:v9 error:&v14];
    v11 = v14;

    v8[2](v8, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = a4;
    v10 = [v12 hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"type may not be nil"];
    (*(a4 + 2))(v13, 0, v10);
  }
}

- (void)remote_fetchAuthorizationContextForPromptSession:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 authorizationManager];
  v12 = 0;
  v10 = [v9 fetchAuthorizationContextForPromptSession:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)remote_fetchConceptAuthorizationRecordsForSource:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HDStandardTaskServer *)self profile];
  v8 = [v9 authorizationManager];
  [v8 fetchConceptAuthorizationRecordsForSource:v7 completion:v6];
}

- (void)remote_fetchConceptAuthorizationContextForPromptSession:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 authorizationManager];
  v12 = 0;
  v10 = [v9 fetchConceptAuthorizationContextForPromptSession:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)remote_fetchSourcesRequestingAuthorizationForTypes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDAuthorizationEntity allSourcesRequestingTypes:v7 profile:v8 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)remote_fetchAuthorizationStatusesForDocumentType:(id)a3 sourceBundleIdentifier:(id)a4 completion:(id)a5
{
  v48[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [(HDStandardTaskServer *)self profile];
    v13 = [v12 sourceManager];
    v45 = 0;
    v14 = [v13 localSourceForBundleIdentifier:v10 error:&v45];
    v15 = v45;

    if (v14)
    {
      v44 = v15;
      v16 = [HDObjectAuthorizationEntity authorizationStatusForSamplesOfType:v9 sourceEntity:v14 profile:v12 error:&v44];
      v17 = v44;

      if (v16)
      {
        v33 = v14;
        v34 = v11;
        v35 = v10;
        v36 = v9;
        v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v47 = 0x283C2F1C8;
        v48[0] = MEMORY[0x277CBEC38];
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v32 = v16;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v41;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v41 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v40 + 1) + 8 * i);
              if ([v23 status])
              {
                v24 = [v23 objectUUID];
                v39 = v17;
                v25 = v12;
                v26 = [(HDDataEntity *)HDCDASampleEntity objectWithUUID:v24 encodingOptions:v38 profile:v12 error:&v39];
                v27 = v39;

                if (!v26)
                {
                  v11 = v34;
                  v34[2](v34, 0, v27);

                  v17 = v27;
                  v12 = v25;
                  v29 = v37;
                  goto LABEL_19;
                }

                v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "status")}];
                [v37 setObject:v28 forKeyedSubscript:v26];

                v17 = v27;
                v12 = v25;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v40 objects:v46 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v11 = v34;
        v29 = v37;
        (v34)[2](v34, v37, 0);
LABEL_19:

        v10 = v35;
        v9 = v36;
        v16 = v32;
        v14 = v33;
      }

      else
      {
        v11[2](v11, 0, v17);
      }

      v15 = v17;
    }

    else
    {
      v11[2](v11, 0, v15);
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"sourceBundleIdentifier may not be nil"];
    v11[2](v11, 0, v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchAuthorizationStatusesForSampleUUID:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(HDStandardTaskServer *)self profile];
    v40 = 0;
    v10 = [HDObjectAuthorizationEntity authorizationRecordsBySourceForSampleWithUUID:v7 profile:v9 error:&v40];
    v11 = v40;

    if (v10)
    {
      v30 = v11;
      v32 = v8;
      v33 = v7;
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = [(HDStandardTaskServer *)self profile];
      v34 = [v13 sourceManager];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v31 = v10;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v36 + 1) + 8 * i);
            v35 = 0;
            v20 = [v34 clientSourceForUUID:v19 error:{&v35, v30}];
            v21 = v35;
            if (v20)
            {
              v22 = MEMORY[0x277CCABB0];
              v23 = [v14 objectForKeyedSubscript:v19];
              v24 = [v22 numberWithInteger:{-[NSObject status](v23, "status")}];
              [v12 setObject:v24 forKeyedSubscript:v20];
            }

            else
            {
              _HKInitializeLogging();
              v25 = HKLogAuthorization();
              v23 = v25;
              if (v21)
              {
                v27 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);

                v8 = v32;
                v7 = v33;
                if (v27)
                {
                  v28 = HKLogAuthorization();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543618;
                    v42 = v19;
                    v43 = 2114;
                    v44 = v21;
                    _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_INFO, "Failed to retrieve source for UUID %{public}@: %{public}@", buf, 0x16u);
                  }
                }

                v32[2](v32, 0, v21);

                goto LABEL_23;
              }

              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v42 = v19;
                _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Found an authorization record for a source that does not exist (%{public}@); ignoring this record.", buf, 0xCu);
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v8 = v32;
      (v32)[2](v32, v12, 0);
      v7 = v33;
LABEL_23:

      v11 = v30;
      v10 = v31;
    }

    else
    {
      v8[2](v8, 0, v11);
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"sampleUUID may not be nil"];
    v8[2](v8, 0, v26);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchAuthorizationStatusesForHealthConceptIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HDStandardTaskServer *)self profile];
  v8 = [v9 authorizationManager];
  [v8 fetchAuthorizationStatusesForHealthConceptIdentifier:v7 completion:v6];
}

- (void)remote_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HDStandardTaskServer *)self profile];
  v8 = [v9 authorizationManager];
  [v8 fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:v7 completion:v6];
}

- (void)remote_validateRecalibrateEstimatesRequestRecord:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HDStandardTaskServer *)self profile];
  v8 = [v9 authorizationManager];
  [v8 validateRecalibrateEstimatesRequestRecord:v7 completion:v6];
}

@end