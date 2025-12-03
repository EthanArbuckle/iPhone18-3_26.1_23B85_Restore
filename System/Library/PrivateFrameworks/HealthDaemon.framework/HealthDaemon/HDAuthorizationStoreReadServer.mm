@interface HDAuthorizationStoreReadServer
+ (BOOL)validateClient:(id)client error:(id *)error;
- (void)remote_fetchAuthorizationContextForPromptSession:(id)session completion:(id)completion;
- (void)remote_fetchAuthorizationRecordsForSourceBundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchAuthorizationRecordsForType:(id)type completion:(id)completion;
- (void)remote_fetchAuthorizationStatusesForDocumentType:(id)type sourceBundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchAuthorizationStatusesForHealthConceptIdentifier:(id)identifier completion:(id)completion;
- (void)remote_fetchAuthorizationStatusesForSampleUUID:(id)d completion:(id)completion;
- (void)remote_fetchConceptAuthorizationContextForPromptSession:(id)session completion:(id)completion;
- (void)remote_fetchConceptAuthorizationRecordsForSource:(id)source completion:(id)completion;
- (void)remote_fetchSourcesRequestingAuthorizationForTypes:(id)types completion:(id)completion;
- (void)remote_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)domain completion:(id)completion;
- (void)remote_validateRecalibrateEstimatesRequestRecord:(id)record completion:(id)completion;
@end

@implementation HDAuthorizationStoreReadServer

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

  v9 = v8 | [clientCopy hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD58] error:error];

  return v9 & 1;
}

- (void)remote_fetchAuthorizationRecordsForSourceBundleIdentifier:(id)identifier completion:(id)completion
{
  v6 = MEMORY[0x277CBEB98];
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = [v6 set];
  profile = [(HDStandardTaskServer *)self profile];
  v13 = 0;
  v11 = [HDAuthorizationEntity authorizationRecordsByTypeForBundleIdentifier:identifierCopy types:v9 profile:profile error:&v13];

  v12 = v13;
  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_fetchAuthorizationRecordsForType:(id)type completion:(id)completion
{
  typeCopy = type;
  if (typeCopy)
  {
    completionCopy = completion;
    profile = [(HDStandardTaskServer *)self profile];
    v14 = 0;
    v10 = [HDAuthorizationEntity authorizationRecordsBySourceForType:typeCopy profile:profile error:&v14];
    v11 = v14;

    completionCopy[2](completionCopy, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    completionCopy2 = completion;
    v10 = [v12 hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"type may not be nil"];
    (*(completion + 2))(completionCopy2, 0, v10);
  }
}

- (void)remote_fetchAuthorizationContextForPromptSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  sessionCopy = session;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  v12 = 0;
  v10 = [authorizationManager fetchAuthorizationContextForPromptSession:sessionCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)remote_fetchConceptAuthorizationRecordsForSource:(id)source completion:(id)completion
{
  completionCopy = completion;
  sourceCopy = source;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  [authorizationManager fetchConceptAuthorizationRecordsForSource:sourceCopy completion:completionCopy];
}

- (void)remote_fetchConceptAuthorizationContextForPromptSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  sessionCopy = session;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  v12 = 0;
  v10 = [authorizationManager fetchConceptAuthorizationContextForPromptSession:sessionCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)remote_fetchSourcesRequestingAuthorizationForTypes:(id)types completion:(id)completion
{
  completionCopy = completion;
  typesCopy = types;
  profile = [(HDStandardTaskServer *)self profile];
  v11 = 0;
  v9 = [HDAuthorizationEntity allSourcesRequestingTypes:typesCopy profile:profile error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)remote_fetchAuthorizationStatusesForDocumentType:(id)type sourceBundleIdentifier:(id)identifier completion:(id)completion
{
  v48[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy)
  {
    profile = [(HDStandardTaskServer *)self profile];
    sourceManager = [profile sourceManager];
    v45 = 0;
    v14 = [sourceManager localSourceForBundleIdentifier:identifierCopy error:&v45];
    v15 = v45;

    if (v14)
    {
      v44 = v15;
      v16 = [HDObjectAuthorizationEntity authorizationStatusForSamplesOfType:typeCopy sourceEntity:v14 profile:profile error:&v44];
      v17 = v44;

      if (v16)
      {
        v33 = v14;
        v34 = completionCopy;
        v35 = identifierCopy;
        v36 = typeCopy;
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
                objectUUID = [v23 objectUUID];
                v39 = v17;
                v25 = profile;
                v26 = [(HDDataEntity *)HDCDASampleEntity objectWithUUID:objectUUID encodingOptions:v38 profile:profile error:&v39];
                v27 = v39;

                if (!v26)
                {
                  completionCopy = v34;
                  v34[2](v34, 0, v27);

                  v17 = v27;
                  profile = v25;
                  v29 = v37;
                  goto LABEL_19;
                }

                v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "status")}];
                [v37 setObject:v28 forKeyedSubscript:v26];

                v17 = v27;
                profile = v25;
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

        completionCopy = v34;
        v29 = v37;
        (v34)[2](v34, v37, 0);
LABEL_19:

        identifierCopy = v35;
        typeCopy = v36;
        v16 = v32;
        v14 = v33;
      }

      else
      {
        completionCopy[2](completionCopy, 0, v17);
      }

      v15 = v17;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v15);
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"sourceBundleIdentifier may not be nil"];
    completionCopy[2](completionCopy, 0, v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchAuthorizationStatusesForSampleUUID:(id)d completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (dCopy)
  {
    profile = [(HDStandardTaskServer *)self profile];
    v40 = 0;
    v10 = [HDObjectAuthorizationEntity authorizationRecordsBySourceForSampleWithUUID:dCopy profile:profile error:&v40];
    v11 = v40;

    if (v10)
    {
      v30 = v11;
      v32 = completionCopy;
      v33 = dCopy;
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      profile2 = [(HDStandardTaskServer *)self profile];
      sourceManager = [profile2 sourceManager];

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
            v20 = [sourceManager clientSourceForUUID:v19 error:{&v35, v30}];
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

                completionCopy = v32;
                dCopy = v33;
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

      completionCopy = v32;
      (v32)[2](v32, v12, 0);
      dCopy = v33;
LABEL_23:

      v11 = v30;
      v10 = v31;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v11);
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"sampleUUID may not be nil"];
    completionCopy[2](completionCopy, 0, v26);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)remote_fetchAuthorizationStatusesForHealthConceptIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  [authorizationManager fetchAuthorizationStatusesForHealthConceptIdentifier:identifierCopy completion:completionCopy];
}

- (void)remote_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)domain completion:(id)completion
{
  completionCopy = completion;
  domainCopy = domain;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  [authorizationManager fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:domainCopy completion:completionCopy];
}

- (void)remote_validateRecalibrateEstimatesRequestRecord:(id)record completion:(id)completion
{
  completionCopy = completion;
  recordCopy = record;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  [authorizationManager validateRecalibrateEstimatesRequestRecord:recordCopy completion:completionCopy];
}

@end