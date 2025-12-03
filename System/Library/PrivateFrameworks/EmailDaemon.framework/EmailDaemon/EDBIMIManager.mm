@interface EDBIMIManager
- (BOOL)_shouldScheduleAnotherVerificationBatch;
- (EDBIMIManager)initWithMessagePersistence:(id)persistence urlSession:(id)session;
- (id)processBIMIHeadersForMessages:(id)messages evidenceAndMessagesNeedingVerification:(id *)verification;
- (uint64_t)_analyticsValueForResultString:(char)string isBIMIStatementResult:;
- (uint64_t)_bimiPassedWithAuthenticationResults:(void *)results authenticationServiceIdentifier:(void *)identifier bimiStatement:;
- (uint64_t)_downloadAndVerifyIndicators;
- (uint64_t)_indicatorIsValid:(void *)valid forBIMIData:;
- (uint64_t)_isRecoverableError:(uint64_t)error;
- (uint64_t)_vmcWasVerifiedWithBIMIStatement:(uint64_t)statement;
- (void)_downloadAndVerifyIndicators;
- (void)_downloadUndownloadedIndicators:(unsigned int)indicators failingOpen:(void *)open indicatorHandler:;
- (void)_verifyIndicator:(uint64_t)indicator failingOpen:;
- (void)dealloc;
- (void)downloadAndVerifyIndicatorsIfNeeded;
- (void)test_tearDown;
@end

@implementation EDBIMIManager

void ___ef_log_EDBIMIManager_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDBIMIManager");
  v1 = _ef_log_EDBIMIManager_log;
  _ef_log_EDBIMIManager_log = v0;
}

- (EDBIMIManager)initWithMessagePersistence:(id)persistence urlSession:(id)session
{
  persistenceCopy = persistence;
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = EDBIMIManager;
  v9 = [(EDBIMIManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messagePersistence, persistence);
    objc_storeStrong(&v10->_urlSession, session);
    v11 = objc_alloc_init(EDMarkCertificateVerifier);
    markCertificateVerifier = v10->_markCertificateVerifier;
    v10->_markCertificateVerifier = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeDataTasksByRequest = v10->_activeDataTasksByRequest;
    v10->_activeDataTasksByRequest = v13;

    v15 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    activeDataTasksLock = v10->_activeDataTasksLock;
    v10->_activeDataTasksLock = v15;

    v17 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    verificationRunningLock = v10->_verificationRunningLock;
    v10->_verificationRunningLock = v17;

    v19 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EDBIMIManager.verificationScheduler" qualityOfService:17];
    verificationScheduler = v10->_verificationScheduler;
    v10->_verificationScheduler = v19;
  }

  return v10;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_activeDataTasksByRequest enumerateKeysAndObjectsUsingBlock:&__block_literal_global_33];
  v3.receiver = self;
  v3.super_class = EDBIMIManager;
  [(EDBIMIManager *)&v3 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDBIMIManager.m" lineNumber:83 description:{@"%s can only be called from unit tests", "-[EDBIMIManager test_tearDown]"}];
  }

  verificationScheduler = [(EDBIMIManager *)self verificationScheduler];
  [verificationScheduler performSyncBlock:&__block_literal_global_44];
}

- (id)processBIMIHeadersForMessages:(id)messages evidenceAndMessagesNeedingVerification:(id *)verification
{
  v83 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke;
  aBlock[3] = &unk_1E82508E8;
  aBlock[4] = self;
  v57 = _Block_copy(aBlock);
  v48 = [MEMORY[0x1E699ACE8] preferenceEnabled:18];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = messagesCopy;
  v4 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v4)
  {
    v56 = *v70;
    do
    {
      v59 = v4;
      for (i = 0; i != v59; ++i)
      {
        if (*v70 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v69 + 1) + 8 * i);
        headers = [v6 headers];
        v8 = [MEMORY[0x1E699B290] authenticationResultsForHeaders:headers];
        v67 = 0;
        v68 = 0;
        v9 = [(EDBIMIManager *)self _bimiPassedWithAuthenticationResults:v8 authenticationServiceIdentifier:&v68 bimiStatement:&v67];
        v10 = v68;
        v11 = v67;
        if ((v9 & 1) == 0)
        {
          v57[2](v57, v10, v11, 0);
          goto LABEL_35;
        }

        v60 = [MEMORY[0x1E699B210] bimiInfoForHeaders:headers];
        if (v48)
        {
          goto LABEL_10;
        }

        v12 = MEMORY[0x1E695DFF8];
        account = [v6 account];
        hostname = [account hostname];
        v15 = [v12 ef_urlWithString:hostname];
        ef_highLevelDomain = [v15 ef_highLevelDomain];

        if (EMBIMIIncomingServerHighLevelDomainIsAllowlisted())
        {

LABEL_10:
          ef_highLevelDomain = [v60 location];
          evidenceLocation = [v60 evidenceLocation];
          v54 = evidenceLocation;
          if (ef_highLevelDomain && evidenceLocation)
          {
            v55 = [MEMORY[0x1E699B848] pairWithFirst:ef_highLevelDomain second:evidenceLocation];
            indicator = [v60 indicator];
            v47 = [v46 objectForKeyedSubscript:v55];
            if (!v47 || indicator && ([v47 indicator], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19))
            {
              [v46 setObject:v60 forKeyedSubscript:v55];
            }

            v20 = [v44 objectForKeyedSubscript:v55];
            if (v20)
            {
              v49 = v20;
              [v20 addObject:v6];
            }

            else
            {
              v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
              [v44 setObject:v49 forKeyedSubscript:v55];
            }

            (v57)[2](v57, v10, v11, v60);
            v21 = _ef_log_EDBIMIManager();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              log = v21;
              v51 = ef_highLevelDomain;
              if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
              {
                absoluteString = [v51 absoluteString];
              }

              else
              {
                v23 = MEMORY[0x1E699B858];
                absoluteString2 = [v51 absoluteString];
                absoluteString = [v23 fullyRedactedStringForString:absoluteString2];
              }

              v52 = absoluteString;
              v25 = v54;
              if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
              {
                absoluteString3 = [v25 absoluteString];
              }

              else
              {
                v27 = MEMORY[0x1E699B858];
                absoluteString4 = [v25 absoluteString];
                absoluteString3 = [v27 fullyRedactedStringForString:absoluteString4];
              }

              *buf = 138544130;
              v29 = @", and indicator";
              if (!indicator)
              {
                v29 = &stru_1F45B4608;
              }

              v75 = v52;
              v76 = 2114;
              v77 = absoluteString3;
              v78 = 2112;
              v79 = v29;
              v80 = 2114;
              v81 = v6;
              _os_log_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEFAULT, "Adding BIMI url (%{public}@), evidence url (%{public}@)%@ for message: %{public}@", buf, 0x2Au);

              v21 = log;
            }
          }

          else
          {
            (v57)[2](v57, v10, v11, v60);
          }

          goto LABEL_34;
        }

        (v57)[2](v57, v10, v11, v60);
LABEL_34:

LABEL_35:
      }

      v4 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v4);
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_95;
  v61[3] = &unk_1E8250938;
  v61[4] = self;
  v32 = v44;
  v62 = v32;
  v33 = obj;
  v63 = v33;
  v34 = v31;
  v64 = v34;
  v66 = a2;
  v35 = v30;
  v65 = v35;
  [v46 enumerateKeysAndObjectsUsingBlock:v61];
  if (verification)
  {
    v36 = v34;
    *verification = v34;
  }

  v37 = v65;
  v38 = v35;

  v39 = *MEMORY[0x1E69E9840];
  return v35;
}

void __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = v8;
  v14 = *(a1 + 32);
  v15 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  AnalyticsSendEventLazy();
}

id __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v31 = v2;
  v32[0] = @"authservID";
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v2;
  v33 = v2;
  v32[1] = @"hasBIMIResult";
  v34 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40) != 0];
  v32[2] = @"bimiResult";
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 48);
  v29 = v34;
  v30 = [*(a1 + 40) result];
  v27 = [v3 numberWithUnsignedInteger:{-[EDBIMIManager _analyticsValueForResultString:isBIMIStatementResult:](v4, v30, 1)}];
  v35 = v27;
  v32[3] = @"vmcResult";
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 48);
  v28 = [*(a1 + 40) valueForPropertyType:*MEMORY[0x1E699B060] property:@"authority"];
  v26 = [v5 numberWithUnsignedInteger:{-[EDBIMIManager _analyticsValueForResultString:isBIMIStatementResult:](v6, v28, 0)}];
  v36 = v26;
  v32[4] = @"hasLocation";
  v7 = MEMORY[0x1E696AD98];
  v25 = [*(a1 + 56) location];
  v8 = [v7 numberWithInt:v25 != 0];
  v37 = v8;
  v32[5] = @"hasEvidenceLocation";
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 56) evidenceLocation];
  v11 = [v9 numberWithInt:v10 != 0];
  v38 = v11;
  v32[6] = @"hasIndicator";
  v12 = MEMORY[0x1E696AD98];
  v13 = [*(a1 + 56) indicator];
  v14 = [v12 numberWithInt:v13 != 0];
  v39 = v14;
  v32[7] = @"hasIndicatorHash";
  v15 = MEMORY[0x1E696AD98];
  v16 = [*(a1 + 56) indicatorHash];
  v17 = [v15 numberWithInt:v16 != 0];
  v40 = v17;
  v32[8] = @"indicatorHashAlgorithm";
  v18 = [*(a1 + 56) hashAlgorithm];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[9] = @"hasDKIMSignature";
  v41 = v19;
  v42 = MEMORY[0x1E695E110];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:v32 count:{10, v23}];
  if (!v18)
  {
  }

  if (!v31)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (uint64_t)_analyticsValueForResultString:(char)string isBIMIStatementResult:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if ([v5 isEqualToString:@"pass"])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 isEqualToString:@"fail"];
      v9 = v8 | string ^ 1;
      if (v8)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      if ((v9 & 1) == 0)
      {
        if ([v6 isEqualToString:@"temperror"])
        {
          v7 = 3;
        }

        else if ([v6 isEqualToString:@"declined"])
        {
          v7 = 4;
        }

        else if ([v6 isEqualToString:@"skipped"])
        {
          v7 = 5;
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_bimiPassedWithAuthenticationResults:(void *)results authenticationServiceIdentifier:(void *)identifier bimiStatement:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (self)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      resultsCopy = results;
      v11 = v8;
      identifierCopy = identifier;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 firstStatementForMethod:@"bimi"];
          if (v16)
          {
            [v15 authenticationServiceIdentifier];
            identifier = identifierCopy;
            v8 = v11;
            v17 = results = resultsCopy;
            goto LABEL_13;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v17 = 0;
      v16 = 0;
      identifier = identifierCopy;
      v8 = v11;
      results = resultsCopy;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

LABEL_13:

    result = [v16 result];
    if ([result isEqualToString:@"pass"])
    {
      self = [(EDBIMIManager *)self _vmcWasVerifiedWithBIMIStatement:v16];
    }

    else
    {
      self = 0;
    }

    if (results)
    {
      v19 = v17;
      *results = v17;
    }

    if (identifier)
    {
      v20 = v16;
      *identifier = v16;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return self;
}

void __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v76 = a3;
  v5 = [*(a1 + 32) messagePersistence];
  v6 = [v5 addBrandIndicatorWithInfo:v76];

  if (v6)
  {
    v75 = [*(a1 + 40) objectForKeyedSubscript:v77];
    v7 = [v6 evidence];

    if (v7)
    {
      v8 = [v6 indicator];

      if (!v8)
      {
        v73 = [MEMORY[0x1E696AAA8] currentHandler];
        [v73 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"EDBIMIManager.m" lineNumber:178 description:@"Any indicator with evidence must also have the indicator data"];
      }

      v9 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v77 first];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v11 = [v10 absoluteString];
        }

        else
        {
          v17 = MEMORY[0x1E699B858];
          v18 = [v10 absoluteString];
          v11 = [v17 fullyRedactedStringForString:v18];
        }

        v19 = v11;
        v20 = [v77 second];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v21 = [v20 absoluteString];
        }

        else
        {
          v22 = MEMORY[0x1E699B858];
          v23 = [v20 absoluteString];
          v21 = [v22 fullyRedactedStringForString:v23];
        }

        *buf = 138543618;
        v82 = v19;
        v83 = 2114;
        v84 = v21;
        _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "BIMI url (%{public}@), evidence URL (%{public}@) has existing evidence", buf, 0x16u);
      }

      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_99;
      v78[3] = &unk_1E8250910;
      v78[4] = *(a1 + 32);
      v24 = v6;
      v79 = v24;
      v25 = v77;
      v80 = v25;
      v26 = [v75 ef_partition:v78];
      v27 = [v26 first];
      v28 = [v27 count];

      if (v28)
      {
        v29 = _ef_log_EDBIMIManager();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v25 first];
          v74 = v30;
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v31 = [v30 absoluteString];
          }

          else
          {
            v32 = MEMORY[0x1E699B858];
            v33 = [v30 absoluteString];
            v31 = [v32 fullyRedactedStringForString:v33];
          }

          v34 = v31;
          v35 = [v25 second];
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v36 = [v35 absoluteString];
          }

          else
          {
            v37 = MEMORY[0x1E699B858];
            v38 = [v35 absoluteString];
            v36 = [v37 fullyRedactedStringForString:v38];
          }

          v39 = *(a1 + 48);
          *buf = 138543874;
          v82 = v34;
          v83 = 2114;
          v84 = v36;
          v85 = 2114;
          v86 = v39;
          _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "Messages passed verification for BIMI url (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }

        v40 = [v26 first];
        [*(a1 + 64) setObject:v40 forKeyedSubscript:v24];
      }

      v41 = [v26 second];
      v42 = [v41 count];

      if (v42)
      {
        v43 = _ef_log_EDBIMIManager();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v25 first];
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v45 = [v44 absoluteString];
          }

          else
          {
            v46 = MEMORY[0x1E699B858];
            v47 = [v44 absoluteString];
            v45 = [v46 fullyRedactedStringForString:v47];
          }

          v48 = v45;
          v49 = [v25 second];
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v50 = [v49 absoluteString];
          }

          else
          {
            v51 = MEMORY[0x1E699B858];
            v52 = [v49 absoluteString];
            v50 = [v51 fullyRedactedStringForString:v52];
          }

          v53 = *(a1 + 48);
          *buf = 138543874;
          v82 = v48;
          v83 = 2114;
          v84 = v50;
          v85 = 2114;
          v86 = v53;
          _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_DEFAULT, "Messages failed verification for BIMI url (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }

        v54 = [v26 second];
        [*(a1 + 56) setObject:v54 forKeyedSubscript:v24];
      }

      v13 = v75;
    }

    else
    {
      v14 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v77 first];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v16 = [v15 absoluteString];
        }

        else
        {
          v55 = MEMORY[0x1E699B858];
          v56 = [v15 absoluteString];
          v16 = [v55 fullyRedactedStringForString:v56];
        }

        v57 = v16;
        v58 = [v77 second];
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v59 = [v58 absoluteString];
        }

        else
        {
          v60 = MEMORY[0x1E699B858];
          v61 = [v58 absoluteString];
          v59 = [v60 fullyRedactedStringForString:v61];
        }

        v62 = *(a1 + 48);
        *buf = 138543874;
        v82 = v57;
        v83 = 2114;
        v84 = v59;
        v85 = 2114;
        v86 = v62;
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "No existing evidence for BIMI url (%{public}@), evidence URL (%{public}@), messages need verification: %{public}@", buf, 0x20u);
      }

      v13 = v75;
      [*(a1 + 56) setObject:v75 forKeyedSubscript:v6];
    }
  }

  else
  {
    v12 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v64 = [v77 first];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v65 = [v64 absoluteString];
      }

      else
      {
        v66 = MEMORY[0x1E699B858];
        v67 = [v64 absoluteString];
        v65 = [v66 fullyRedactedStringForString:v67];
      }

      v68 = v65;
      v69 = [v77 second];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v70 = [v69 absoluteString];
      }

      else
      {
        v71 = MEMORY[0x1E699B858];
        v72 = [v69 absoluteString];
        v70 = [v71 fullyRedactedStringForString:v72];
      }

      *buf = 138543618;
      v82 = v68;
      v83 = 2114;
      v84 = v70;
      _os_log_fault_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_FAULT, "BIMI URL (%{public}@), evidence URL (%{public}@) was not inserted", buf, 0x16u);
    }

    v13 = v12;
  }

  v63 = *MEMORY[0x1E69E9840];
}

uint64_t __86__EDBIMIManager_processBIMIHeadersForMessages_evidenceAndMessagesNeedingVerification___block_invoke_99(id *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] markCertificateVerifier];
  v5 = [a1[5] indicator];
  v6 = [a1[5] evidence];
  v7 = [v4 verifyIndicatorData:v5 withMarkCertificateData:v6 forServerSyncedMessage:v3];

  if ((v7 & 1) == 0)
  {
    v8 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [a1[6] first];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v12 = [v11 absoluteString];
      }

      else
      {
        v13 = MEMORY[0x1E699B858];
        v14 = [v11 absoluteString];
        v12 = [v13 fullyRedactedStringForString:v14];
      }

      v15 = v12;
      v16 = [a1[6] second];
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v17 = [v16 absoluteString];
      }

      else
      {
        v18 = MEMORY[0x1E699B858];
        v19 = [v16 absoluteString];
        v17 = [v18 fullyRedactedStringForString:v19];
      }

      v20 = 138543874;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v3;
      _os_log_error_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_ERROR, "Message failed verification for BIMI url (%{public}@), evidence url (%{public}@): %{public}@", &v20, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)_vmcWasVerifiedWithBIMIStatement:(uint64_t)statement
{
  v3 = a2;
  v4 = v3;
  if (statement)
  {
    v5 = [v3 valueForPropertyType:*MEMORY[0x1E699B060] property:@"authority"];
    v6 = [v5 isEqualToString:@"pass"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)downloadAndVerifyIndicatorsIfNeeded
{
  [(NSConditionLock *)self->_verificationRunningLock lock];
  condition = [(NSConditionLock *)self->_verificationRunningLock condition];
  [(NSConditionLock *)self->_verificationRunningLock unlockWithCondition:1];
  v4 = _ef_log_EDBIMIManager();
  v5 = v4;
  if (condition)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Download and verification already running.", v6, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Downloading indicators and verifying mark certificates now.", buf, 2u);
    }

    [(EDBIMIManager *)self _downloadAndVerifyIndicators];
  }
}

- (void)_downloadAndVerifyIndicators
{
  if (self)
  {
    external = [MEMORY[0x1E699B828] external];
    isAvailable = [external isAvailable];

    if (isAvailable)
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v4, &location);
      EMPrivacyProxyIsDisabledForNetwork();
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }

    else
    {
      [(EDBIMIManager *)self _downloadAndVerifyIndicators];
    }
  }
}

void __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = _ef_log_EDBIMIManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"enabled";
    if (a2)
    {
      v5 = @"disabled";
    }

    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Scheduling indicator download and verification, privacy proxy is %{public}@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) verificationScheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_109;
  v8[3] = &unk_1E82509A8;
  objc_copyWeak(&v9, (a1 + 40));
  v10 = a2;
  [v6 performBlock:v8];

  objc_destroyWeak(&v9);
  v7 = *MEMORY[0x1E69E9840];
}

void __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_109(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v20 = [WeakRetained messagePersistence];
    v4 = [v20 unverifiedBrandIndicatorsWithLimit:10];
    v5 = [v4 ef_partition:&__block_literal_global_112];
    v6 = [v5 first];
    v7 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = [v6 count];
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Downloading %lu indicators", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_113;
    v25[3] = &unk_1E8250980;
    v25[4] = v3;
    v26 = v8;
    [(EDBIMIManager *)v3 _downloadUndownloadedIndicators:v6 failingOpen:v8 indicatorHandler:v25];
    v9 = [v5 second];
    v10 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 count];
      *buf = 134217984;
      v29 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Verifying %lu indicators", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [(EDBIMIManager *)v3 _verifyIndicator:*(a1 + 40) failingOpen:?];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v16 = v3[2];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:300.0];
    [v16 lockWhenCondition:0 beforeDate:v17];

    [v3[2] unlock];
    if ([(EDBIMIManager *)v3 _shouldScheduleAnotherVerificationBatch])
    {
      v18 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Scheduling another verification batch", buf, 2u);
      }

      [(EDBIMIManager *)v3 _downloadAndVerifyIndicators];
    }

    else
    {
      [v3[3] lock];
      [v3[3] unlockWithCondition:0];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

BOOL __45__EDBIMIManager__downloadAndVerifyIndicators__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 indicator];
  v3 = v2 == 0;

  return v3;
}

- (void)_verifyIndicator:(uint64_t)indicator failingOpen:
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = a2;
  if (self)
  {
    messagePersistence = [self messagePersistence];
    markCertificateVerifier = [self markCertificateVerifier];
    urlSession = [self urlSession];
    bimiInfo = [v25 bimiInfo];
    location = [bimiInfo location];

    bimiInfo2 = [v25 bimiInfo];
    evidenceLocation = [bimiInfo2 evidenceLocation];

    v10 = [MEMORY[0x1E696AF68] requestWithURL:evidenceLocation];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke;
    v26[3] = &unk_1E8250A68;
    v11 = messagePersistence;
    v27 = v11;
    v28 = v25;
    v12 = location;
    v29 = v12;
    v13 = markCertificateVerifier;
    v30 = v13;
    v14 = evidenceLocation;
    v31 = v14;
    selfCopy = self;
    v15 = v10;
    v33 = v15;
    v16 = [urlSession syntheticDataTaskWithRequest:v15 failOpen:indicator background:1 completionHandler:v26];
    [self[2] lock];
    [self[1] setObject:v16 forKeyedSubscript:v15];
    [self[2] unlockWithCondition:{objc_msgSend(self[1], "count")}];
    [v16 resume];
    v17 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v12;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        absoluteString = [v18 absoluteString];
      }

      else
      {
        v20 = MEMORY[0x1E699B858];
        absoluteString2 = [v18 absoluteString];
        absoluteString = [v20 fullyRedactedStringForString:absoluteString2];
      }

      *buf = 138543362;
      v35 = absoluteString;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Requesting mark certificate data for URL: %{public}@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_downloadUndownloadedIndicators:(unsigned int)indicators failingOpen:(void *)open indicatorHandler:
{
  v41 = *MEMORY[0x1E69E9840];
  v21 = a2;
  openCopy = open;
  if (self)
  {
    messagePersistence = [self messagePersistence];
    urlSession = [self urlSession];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v21;
    v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v23 = *v35;
      do
      {
        v28 = v6;
        for (i = 0; i != v28; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v34 + 1) + 8 * i);
          bimiInfo = [v8 bimiInfo];
          location = [bimiInfo location];

          v11 = [MEMORY[0x1E696AF68] requestWithURL:location];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke;
          v29[3] = &unk_1E8250A18;
          v29[4] = self;
          v29[5] = v8;
          v30 = messagePersistence;
          v12 = location;
          v31 = v12;
          v33 = openCopy;
          v13 = v11;
          v32 = v13;
          v14 = [urlSession syntheticDataTaskWithRequest:v13 failOpen:indicators background:1 completionHandler:v29];
          [self[2] lock];
          [self[1] setObject:v14 forKeyedSubscript:v13];
          [self[2] unlockWithCondition:{objc_msgSend(self[1], "count")}];
          [v14 resume];
          v15 = _ef_log_EDBIMIManager();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v12;
            if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
            {
              absoluteString = [v16 absoluteString];
            }

            else
            {
              v18 = MEMORY[0x1E699B858];
              absoluteString2 = [v16 absoluteString];
              absoluteString = [v18 fullyRedactedStringForString:absoluteString2];
            }

            *buf = 138543362;
            v39 = absoluteString;
            _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Requesting indicator data for URL: %{public}@", buf, 0xCu);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v6);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldScheduleAnotherVerificationBatch
{
  if (!self)
  {
    return 0;
  }

  messagePersistence = [self messagePersistence];
  v2 = [messagePersistence unverifiedBrandIndicatorsWithLimit:1];
  v3 = [v2 count] != 0;

  return v3;
}

void __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v7)
  {
    if ([(EDBIMIManager *)*(a1 + 32) _isRecoverableError:v9])
    {
      *&v35 = MEMORY[0x1E69E9820];
      *(&v35 + 1) = 3221225472;
      v36 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
      v37 = &__block_descriptor_35_e19___NSDictionary_8__0l;
      LOWORD(v38) = 0;
      BYTE2(v38) = 1;
      AnalyticsSendEventLazy();
      v16 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 56);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v35, *(&v35 + 1), v36, v37, v38, v39}])
        {
          v18 = [v17 absoluteString];
        }

        else
        {
          v28 = MEMORY[0x1E699B858];
          v29 = [v17 absoluteString];
          v18 = [v28 fullyRedactedStringForString:v29];
        }

        v30 = v18;
        [v9 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_2();
      }
    }

    else
    {
      [*(a1 + 48) removeBrandIndicatorWithDatabaseID:{objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}];
      *&v35 = MEMORY[0x1E69E9820];
      *(&v35 + 1) = 3221225472;
      v36 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
      v37 = &__block_descriptor_35_e19___NSDictionary_8__0l;
      LOWORD(v38) = 0;
      BYTE2(v38) = 1;
      AnalyticsSendEventLazy();
      v16 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 56);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v35, *(&v35 + 1), v36, v37, v38, v39}])
        {
          v22 = [v21 absoluteString];
        }

        else
        {
          v31 = MEMORY[0x1E699B858];
          v32 = [v21 absoluteString];
          v22 = [v31 fullyRedactedStringForString:v32];
        }

        v33 = v22;
        [v9 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_1();
      }
    }

    goto LABEL_25;
  }

  v11 = [*(a1 + 40) bimiInfo];
  v12 = [(EDBIMIManager *)v10 _indicatorIsValid:v7 forBIMIData:v11];

  if (!v12)
  {
    [*(a1 + 48) removeBrandIndicatorWithDatabaseID:{objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}];
    *&v35 = MEMORY[0x1E69E9820];
    *(&v35 + 1) = 3221225472;
    v36 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
    v37 = &__block_descriptor_35_e19___NSDictionary_8__0l;
    LOWORD(v38) = 1;
    BYTE2(v38) = 1;
    AnalyticsSendEventLazy();
    v16 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v35, *(&v35 + 1), v36, v37, v38, v39}])
      {
        v20 = [v19 absoluteString];
      }

      else
      {
        v23 = MEMORY[0x1E699B858];
        v24 = [v19 absoluteString];
        v20 = [v23 fullyRedactedStringForString:v24];
      }

      LODWORD(v35) = 138543362;
      *(&v35 + 4) = v20;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Removed invalid indicator URL: %{public}@", &v35, 0xCu);
    }

LABEL_25:

    goto LABEL_26;
  }

  [*(a1 + 40) setIndicator:v7];
  [*(a1 + 48) setBrandIndicator:v7 forDatabaseID:{objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}];
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 3221225472;
  v36 = __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3;
  v37 = &__block_descriptor_35_e19___NSDictionary_8__0l;
  LOWORD(v38) = 257;
  BYTE2(v38) = 1;
  AnalyticsSendEventLazy();
  v13 = _ef_log_EDBIMIManager();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 56);
    if ([MEMORY[0x1E699ACE8] preferenceEnabled:{10, v35, *(&v35 + 1), v36, v37, v38, v39}])
    {
      v15 = [v14 absoluteString];
    }

    else
    {
      v25 = MEMORY[0x1E699B858];
      v26 = [v14 absoluteString];
      v15 = [v25 fullyRedactedStringForString:v26];
    }

    LODWORD(v35) = 138543362;
    *(&v35 + 4) = v15;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Persisted indicator data for URL: %{public}@", &v35, 0xCu);
  }

  v27 = *(a1 + 40);
  (*(*(a1 + 72) + 16))();
LABEL_26:
  [*(*(a1 + 32) + 16) lock];
  [*(*(a1 + 32) + 8) setObject:0 forKeyedSubscript:*(a1 + 64)];
  [*(*(a1 + 32) + 16) unlockWithCondition:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];

  v34 = *MEMORY[0x1E69E9840];
}

id __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_3(unsigned __int8 *a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"downloadSucceeded";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1[32]];
  v9[0] = v2;
  v8[1] = @"indicatorIsValid";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1[33]];
  v9[1] = v3;
  v8[2] = @"usedPrivacyProxy";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a1[34]];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (uint64_t)_indicatorIsValid:(void *)valid forBIMIData:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  validCopy = valid;
  v7 = validCopy;
  if (!self)
  {
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  hashAlgorithm = [validCopy hashAlgorithm];
  v9 = [hashAlgorithm isEqualToString:@"sha256"];

  if (!v9)
  {
    v16 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [EDBIMIManager _indicatorIsValid:v16 forBIMIData:?];
    }

    goto LABEL_11;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v10;
  v19[1] = v10;
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v19);
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v19 length:32];
  v12 = [v11 base64EncodedStringWithOptions:0];
  indicatorHash = [v7 indicatorHash];
  v14 = [v12 isEqualToString:indicatorHash];

  if ((v14 & 1) == 0)
  {
    v15 = _ef_log_EDBIMIManager();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EDBIMIManager _indicatorIsValid:v15 forBIMIData:?];
    }
  }

LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_isRecoverableError:(uint64_t)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    domain = [v3 domain];
    v6 = [domain isEqualToString:*MEMORY[0x1E696A978]];

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = __ROR8__([v4 code] + 1009, 1);
    if (v7 <= 3)
    {
      if (v7 && v7 != 2)
      {
        goto LABEL_10;
      }

LABEL_11:
      external = [MEMORY[0x1E699B828] external];
      error = [external isAvailable] ^ 1;

      goto LABEL_12;
    }

    if (v7 == 4)
    {
      goto LABEL_11;
    }

    if (v7 != 5)
    {
LABEL_10:
      error = 0;
      goto LABEL_12;
    }

    error = 1;
  }

LABEL_12:

  return error;
}

void __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v55 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) unverifiedMessageDatabaseIDs];
    v60 = 0;
    v11 = [v9 persistedMessagesForDatabaseIDs:v10 requireProtectedData:1 temporarilyUnavailableDatabaseIDs:&v60];
    v12 = v60;

    if ([v12 count])
    {
      v13 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 48);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v15 = [v14 absoluteString];
        }

        else
        {
          v23 = MEMORY[0x1E699B858];
          v24 = [v14 absoluteString];
          v15 = [v23 fullyRedactedStringForString:v24];
        }

        v25 = v15;
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_1();
      }
    }

    else
    {
      [*(a1 + 40) setEvidence:v7];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_134;
      v56[3] = &unk_1E8250A40;
      v57 = *(a1 + 56);
      v58 = *(a1 + 40);
      v59 = v7;
      v52 = [v11 ef_partition:v56];
      v54 = [v52 first];
      v53 = [v52 second];
      if ([v54 count])
      {
        v18 = _ef_log_EDBIMIManager();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 48);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v20 = [v19 absoluteString];
          }

          else
          {
            v32 = MEMORY[0x1E699B858];
            v33 = [v19 absoluteString];
            v20 = [v32 fullyRedactedStringForString:v33];
          }

          v34 = v20;
          v35 = *(a1 + 64);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v36 = [v35 absoluteString];
          }

          else
          {
            v37 = MEMORY[0x1E699B858];
            v38 = [v35 absoluteString];
            v36 = [v37 fullyRedactedStringForString:v38];
          }

          *buf = 138543874;
          v62 = v34;
          v63 = 2114;
          v64 = v36;
          v65 = 2114;
          v66 = v54;
          _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Verified messages for URL (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }

        [*(a1 + 32) setBrandIndicatorForMessages:v54 fromPersistedBIMIInfo:*(a1 + 40)];
      }

      if ([v53 count])
      {
        v39 = _ef_log_EDBIMIManager();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a1 + 48);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v44 = [v43 absoluteString];
          }

          else
          {
            v45 = MEMORY[0x1E699B858];
            v46 = [v43 absoluteString];
            v44 = [v45 fullyRedactedStringForString:v46];
          }

          v47 = v44;
          v48 = *(a1 + 64);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v49 = [v48 absoluteString];
          }

          else
          {
            v50 = MEMORY[0x1E699B858];
            v51 = [v48 absoluteString];
            v49 = [v50 fullyRedactedStringForString:v51];
          }

          *buf = 138543874;
          v62 = v47;
          v63 = 2114;
          v64 = v49;
          v65 = 2114;
          v66 = v53;
          _os_log_error_impl(&dword_1C61EF000, v39, OS_LOG_TYPE_ERROR, "Failed to verify messages for URL (%{public}@), evidence URL (%{public}@): %{public}@", buf, 0x20u);
        }
      }

      v40 = *(a1 + 32);
      v41 = [*(a1 + 40) evidence];
      [v40 setBrandIndicatorEvidence:v41 forDatabaseID:{objc_msgSend(*(a1 + 40), "evidenceDatabaseID")}];

      v13 = v57;
    }
  }

  else
  {
    if ([(EDBIMIManager *)*(a1 + 72) _isRecoverableError:v8])
    {
      v11 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 48);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v17 = [v16 absoluteString];
        }

        else
        {
          v26 = MEMORY[0x1E699B858];
          v27 = [v16 absoluteString];
          v17 = [v26 fullyRedactedStringForString:v27];
        }

        v28 = v17;
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_1();
      }
    }

    else
    {
      [*(a1 + 32) removeBrandIndicatorEvidenceWithDatabaseID:objc_msgSend(*(a1 + 40) forBrandIndicatorDatabaseID:{"evidenceDatabaseID"), objc_msgSend(*(a1 + 40), "indicatorDatabaseID")}];
      v11 = _ef_log_EDBIMIManager();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 48);
        if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
        {
          v22 = [v21 absoluteString];
        }

        else
        {
          v29 = MEMORY[0x1E699B858];
          v30 = [v21 absoluteString];
          v22 = [v29 fullyRedactedStringForString:v30];
        }

        v31 = v22;
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_2();
      }
    }

    v12 = v11;
  }

  [*(*(a1 + 72) + 16) lock];
  [*(*(a1 + 72) + 8) setObject:0 forKeyedSubscript:*(a1 + 80)];
  [*(*(a1 + 72) + 16) unlockWithCondition:{objc_msgSend(*(*(a1 + 72) + 8), "count")}];

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) indicator];
  v6 = [v4 verifyIndicatorData:v5 withMarkCertificateData:*(a1 + 48) forPersistedMessage:v3];

  return v6;
}

- (uint64_t)_downloadAndVerifyIndicators
{
  v2 = _ef_log_EDBIMIManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Network not available, stopping download and verification.", v4, 2u);
  }

  [*(self + 24) lock];
  return [*(self + 24) unlockWithCondition:0];
}

void __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Permanently unable to request indicator data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

void __78__EDBIMIManager__downloadUndownloadedIndicators_failingOpen_indicatorHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Temporarily unable to request indicator data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

void __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Temporarily unable to request mark certificate data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

void __46__EDBIMIManager__verifyIndicator_failingOpen___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Permanently unable to request mark certificate data for URL: %{public}@ due to error: %{public}@", v5, v6);
}

@end