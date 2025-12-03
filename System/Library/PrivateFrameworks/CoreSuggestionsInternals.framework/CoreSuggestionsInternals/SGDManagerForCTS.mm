@interface SGDManagerForCTS
+ (SGDManagerForCTS)defaultInstance;
+ (id)sharedSingletonInstance;
+ (void)_logCallInteractions:(id)interactions;
- (BOOL)_processMessage:(id)message pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics;
- (BOOL)_shouldDissectContentWithUniqueIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier bundleIdentifier:(id)bundleIdentifier headers:(id)headers accountIdentifier:(id)accountIdentifier;
- (BOOL)hasAlreadyHarvestedSearchableItem:(id)item;
- (BOOL)processMailMessage:(id)message headers:(id)headers pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics;
- (BOOL)processSearchableItem:(id)item pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics;
- (BOOL)processSearchableItemForTesting:(id)testing;
- (BOOL)processTextMessage:(id)message pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics;
- (SGDManagerForCTS)initWithHarvestStoreGetter:(id)getter xpcActivityManager:(id)manager;
- (id)serviceContext;
- (void)_performAnalyticsHeartbeatActivity:(id)activity;
- (void)_performCollectWeeklyStats:(id)stats;
- (void)_performHarvestedURLMetricUploadAcitivity:(id)acitivity;
- (void)_performIdentityAnalysisActivity:(id)activity;
- (void)_performMailIntelligenceTasksActivity:(id)activity;
- (void)_performMobileAssetMetadataDownloadActivity:(id)activity;
- (void)_performProcessPendingGeocodesActivity:(id)activity;
- (void)_performProcessPendingVerificationActivity:(id)activity overrideVerificationStatus:(id)status;
- (void)_performSendRTCActivity:(id)activity;
- (void)_performTrimActivity:(id)activity;
- (void)_performVacuumActivity;
- (void)_registerAnalyticsHeartbeatActivity;
- (void)_registerForCTSIdentityAnalysisActivity;
- (void)_registerForCTSSendRTCActivity;
- (void)_registerForCTSTrimActivity;
- (void)_registerForCTSVacuumActivity;
- (void)_registerForCollectWeeklyStats;
- (void)_registerForContactDetailCacheRebuildActivity;
- (void)_registerHarvestedURLMetricUploadActivity;
- (void)_registerMailIntelligenceTasksActivity;
- (void)_registerMobileAssetMetadataDownloadActivity;
- (void)_registerProcessPendingGeocodesActivity;
- (void)_registerProcessPendingVerificationActivity;
- (void)dealloc;
- (void)performContactDetailCacheRebuildActivity:(id)activity;
- (void)registerForCTS;
@end

@implementation SGDManagerForCTS

+ (id)sharedSingletonInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SGDManagerForCTS_sharedSingletonInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSingletonInstance_onceToken != -1)
  {
    dispatch_once(&sharedSingletonInstance_onceToken, block);
  }

  v2 = sharedSingletonInstance_singletonInstance;

  return v2;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_geocodeLock);
  pthread_mutex_destroy(&self->_verificationLock);
  v3.receiver = self;
  v3.super_class = SGDManagerForCTS;
  [(SGDManagerForCTS *)&v3 dealloc];
}

- (BOOL)_shouldDissectContentWithUniqueIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier bundleIdentifier:(id)bundleIdentifier headers:(id)headers accountIdentifier:(id)accountIdentifier
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  headersCopy = headers;
  accountIdentifierCopy = accountIdentifier;
  if (headersCopy)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [MEMORY[0x277D41E30] messageIdHeaderValuesFromHeaders:headersCopy];
    if (v18)
    {
      v19 = [[SGDuplicateKey alloc] initWithMessageIdHeaderValues:v18 accountIdentifier:accountIdentifierCopy];
      if (v19)
      {
        v30 = v17;
        v20 = (*(self->_harvestStoreGetter + 2))();
        emailKey = [(SGDuplicateKey *)v19 emailKey];
        v22 = [v20 addSpotlightReferenceToEmailIfFullyDownloaded:emailKey withBundleIdentifier:bundleIdentifierCopy uniqueIdentifier:identifierCopy domainIdentifier:domainIdentifierCopy];

        if (v22)
        {
          v23 = sgLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            emailKey2 = [(SGDuplicateKey *)v19 emailKey];
            *buf = 138413058;
            v32 = identifierCopy;
            v33 = 2112;
            v34 = domainIdentifierCopy;
            v35 = 2112;
            v36 = bundleIdentifierCopy;
            v37 = 2112;
            v38 = emailKey2;
            _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "_shouldDissectContentWithUniqueIdentifier:%@ domainIdentifier:%@ bundleIdentifier:%@ added an additional Spotlight reference to existing harvested email record %@", buf, 0x2Au);
          }
        }

        v25 = v22 ^ 1;
        v17 = v30;
      }

      else
      {
        v25 = 0;
      }

      v27 = v19 == 0;
    }

    else
    {
      v25 = 0;
      v27 = 1;
    }

    objc_autoreleasePoolPop(v17);
    v26 = v25 | v27;
  }

  else
  {
    v26 = 1;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)hasAlreadyHarvestedSearchableItem:(id)item
{
  itemCopy = item;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  domainIdentifier = [itemCopy domainIdentifier];
  bundleID = [itemCopy bundleID];
  attributeSet = [itemCopy attributeSet];
  emailHeaders = [attributeSet emailHeaders];
  attributeSet2 = [itemCopy attributeSet];

  accountIdentifier = [attributeSet2 accountIdentifier];
  LOBYTE(self) = [(SGDManagerForCTS *)self _shouldDissectContentWithUniqueIdentifier:uniqueIdentifier domainIdentifier:domainIdentifier bundleIdentifier:bundleID headers:emailHeaders accountIdentifier:accountIdentifier];

  return self ^ 1;
}

- (BOOL)processSearchableItemForTesting:(id)testing
{
  testingCopy = testing;
  v5 = [[SGRequestContext alloc] initWithServiceContext:self->_context concurrencyBehavior:0 backpressureHazard:0];
  v6 = +[SGPipeline emptyPipeline];
  LOBYTE(self) = [(SGDManagerForCTS *)self processSearchableItem:testingCopy pipeline:v6 context:v5];

  return self;
}

- (BOOL)_processMessage:(id)message pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics
{
  v75 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  pipelineCopy = pipeline;
  contextCopy = context;
  metricsCopy = metrics;
  context = objc_autoreleasePoolPush();
  v40 = metricsCopy;
  [messageCopy setHarvestMetrics:metricsCopy];
  [SGDPowerLog startDissectionOfMessage:messageCopy inContext:1];
  v12 = (*(self->_harvestStoreGetter + 2))();
  [v12 incStatsCounterWithKey:@"dissected_items"];

  v13 = [[SGPipelineEntity alloc] initWithMessage:messageCopy];
  [(SGPipelineEntity *)v13 setHarvestMetrics:v40];
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3810000000;
  v62 = 0;
  v63 = 0;
  v61[3] = "";
  v61[4] = @"backgroundDissectAndWrite";
  v62 = mach_absolute_time();
  v63 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3810000000;
  v59 = 0;
  v60 = 0;
  v58[3] = "";
  v58[4] = @"backgroundDissect";
  v59 = mach_absolute_time();
  v60 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [pipelineCopy dissectOperationsForMailMessage:messageCopy entity:v13 inContext:contextCopy];
  }

  else
  {
    [pipelineCopy dissectOperationsForTextMessage:messageCopy entity:v13 inContext:contextCopy];
  }
  v14 = ;
  v15 = [v14 mutableCopy];
  duplicateKey = [(SGEntity *)v13 duplicateKey];
  v17 = [duplicateKey entityType] == 5;

  if (v17)
  {
    [pipelineCopy verificationOperation:v13 withDependencies:v15];
  }

  else
  {
    [MEMORY[0x277CCA8C8] blockOperationWithBlock:&__block_literal_global_164];
  }
  v43 = ;
  [v15 addObject:v43];
  if ([MEMORY[0x277D02098] shouldHarvestEvents])
  {
    [pipelineCopy geocodeOperation:v13 withDependencies:v15];
  }

  else
  {
    [MEMORY[0x277CCA8C8] blockOperationWithBlock:&__block_literal_global_166];
  }
  v42 = ;
  [v15 addObject:v42];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __68__SGDManagerForCTS__processMessage_pipeline_context_harvestMetrics___block_invoke_3;
  v57[3] = &unk_278955BF0;
  v57[4] = v58;
  v18 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v57];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v19 = v14;
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v74 count:16];
  if (v20)
  {
    v21 = *v54;
    do
    {
      v22 = 0;
      do
      {
        if (*v54 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [v18 addDependency:*(*(&v53 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v74 count:16];
    }

    while (v20);
  }

  [v15 addObject:v18];
  v41 = (*(self->_harvestStoreGetter + 2))();
  v23 = sgLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    spotlightBundleIdentifier = [messageCopy spotlightBundleIdentifier];
    spotlightUniqueIdentifier = [messageCopy spotlightUniqueIdentifier];
    spotlightDomainIdentifier = [messageCopy spotlightDomainIdentifier];
    *buf = 138413315;
    v65 = spotlightBundleIdentifier;
    v66 = 2112;
    v67 = spotlightUniqueIdentifier;
    v68 = 2112;
    v69 = spotlightDomainIdentifier;
    v70 = 2112;
    v71 = v41;
    v72 = 2117;
    v73 = v13;
    _os_log_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEFAULT, "Constructing store op for bid:%@ uid:%@ did:%@ store:%@ entity:%{sensitive}@", buf, 0x34u);
  }

  spotlightBundleIdentifier2 = [messageCopy spotlightBundleIdentifier];
  spotlightUniqueIdentifier2 = [messageCopy spotlightUniqueIdentifier];
  spotlightDomainIdentifier2 = [messageCopy spotlightDomainIdentifier];
  v30 = [pipelineCopy storeOperation:v13 spotlightBundleIdentifier:spotlightBundleIdentifier2 spotlightUniqueIdentifier:spotlightUniqueIdentifier2 spotlightDomainIdentifier:spotlightDomainIdentifier2 withStore:v41 dependencies:v15];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __68__SGDManagerForCTS__processMessage_pipeline_context_harvestMetrics___block_invoke_167;
  v49[3] = &unk_278953F60;
  v51 = v61;
  v31 = v13;
  v50 = v31;
  v52 = v58;
  [v30 setCompletionBlock:v49];
  processingQueue = [contextCopy processingQueue];
  [processingQueue addOperations:v19 waitUntilFinished:0];

  processingQueue2 = [contextCopy processingQueue];
  [processingQueue2 addOperation:v43];

  processingQueue3 = [contextCopy processingQueue];
  [processingQueue3 addOperation:v42];

  processingQueue4 = [contextCopy processingQueue];
  [processingQueue4 addOperation:v18];

  if ([contextCopy backpressureHazard])
  {
    storageQueue = [contextCopy storageQueue];
    [storageQueue addOperation:v30];
  }

  else
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __68__SGDManagerForCTS__processMessage_pipeline_context_harvestMetrics___block_invoke_2_170;
    v46[3] = &unk_278955830;
    v47 = contextCopy;
    v48 = v30;
    [SGSpotlightContactsAdapter notifyWhenFlushed:v46];

    storageQueue = v47;
  }

  [v30 waitUntilFinished];
  [SGDPowerLog endDissectionOfMessage:messageCopy inContext:1];

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v61, 8);

  objc_autoreleasePoolPop(context);
  v37 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __68__SGDManagerForCTS__processMessage_pipeline_context_harvestMetrics___block_invoke_167(void *a1)
{
  SGRecordMeasurementState((*(a1[5] + 8) + 32));
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 48);

  return [SGAggregateLogging harvestedEntity:v2 withElapsedTime:v3];
}

void __68__SGDManagerForCTS__processMessage_pipeline_context_harvestMetrics___block_invoke_2_170(uint64_t a1)
{
  v2 = [*(a1 + 32) storageQueue];
  [v2 addOperation:*(a1 + 40)];
}

- (BOOL)processMailMessage:(id)message headers:(id)headers pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  headersCopy = headers;
  pipelineCopy = pipeline;
  contextCopy = context;
  metricsCopy = metrics;
  v39 = contextCopy;
  if ([messageCopy isSent])
  {
    from = (*(self->_harvestStoreGetter + 2))();
    [from registerSentMailMessage:messageCopy];
LABEL_7:

    goto LABEL_8;
  }

  from = [messageCopy from];
  emailAddress = [from emailAddress];
  if (!emailAddress)
  {
    goto LABEL_7;
  }

  v19 = emailAddress;
  accountHandles = [messageCopy accountHandles];
  [messageCopy from];
  v21 = headersCopy;
  v22 = metricsCopy;
  v24 = v23 = pipelineCopy;
  emailAddress2 = [v24 emailAddress];
  v38 = [accountHandles containsObject:emailAddress2];

  pipelineCopy = v23;
  metricsCopy = v22;
  headersCopy = v21;

  if (v38)
  {
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [messageCopy uniqueIdentifier];
      *buf = 138412290;
      v41 = uniqueIdentifier;
      v28 = "SGSimpleMailMessage %@ appears to be a sent email not in the sent mail folder, so it will be dropped from the dissector pipeline.";
LABEL_12:
      _os_log_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
    }

LABEL_13:

    v35 = 0;
    v34 = v39;
    goto LABEL_14;
  }

LABEL_8:
  spotlightUniqueIdentifier = [messageCopy spotlightUniqueIdentifier];
  spotlightDomainIdentifier = [messageCopy spotlightDomainIdentifier];
  spotlightBundleIdentifier = [messageCopy spotlightBundleIdentifier];
  source = [messageCopy source];
  v33 = [(SGDManagerForCTS *)self _shouldDissectContentWithUniqueIdentifier:spotlightUniqueIdentifier domainIdentifier:spotlightDomainIdentifier bundleIdentifier:spotlightBundleIdentifier headers:headersCopy accountIdentifier:source];

  if (!v33)
  {
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [messageCopy uniqueIdentifier];
      *buf = 138412290;
      v41 = uniqueIdentifier;
      v28 = "SGSimpleMailMessage %@ has been processed without dissection, so it will be dropped from the dissector pipeline.";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v34 = v39;
  v35 = [(SGDManagerForCTS *)self _processMessage:messageCopy pipeline:pipelineCopy context:v39 harvestMetrics:metricsCopy];
LABEL_14:

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (BOOL)processTextMessage:(id)message pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  pipelineCopy = pipeline;
  contextCopy = context;
  metricsCopy = metrics;
  spotlightUniqueIdentifier = [messageCopy spotlightUniqueIdentifier];
  spotlightDomainIdentifier = [messageCopy spotlightDomainIdentifier];
  spotlightBundleIdentifier = [messageCopy spotlightBundleIdentifier];
  v17 = [(SGDManagerForCTS *)self _shouldDissectContentWithUniqueIdentifier:spotlightUniqueIdentifier domainIdentifier:spotlightDomainIdentifier bundleIdentifier:spotlightBundleIdentifier headers:0 accountIdentifier:0];

  if (v17)
  {
    v18 = [(SGDManagerForCTS *)self _processMessage:messageCopy pipeline:pipelineCopy context:contextCopy harvestMetrics:metricsCopy];
  }

  else
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [messageCopy uniqueIdentifier];
      v23 = 138412290;
      v24 = uniqueIdentifier;
      _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEFAULT, "SGTextMessage %@ has been processed without dissection, so it will be dropped from the dissector pipeline.", &v23, 0xCu);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)processSearchableItem:(id)item pipeline:(id)pipeline context:(id)context harvestMetrics:(id)metrics
{
  v59 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  pipelineCopy = pipeline;
  contextCopy = context;
  metricsCopy = metrics;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDManagerForCTS.m" lineNumber:816 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v14 = objc_autoreleasePoolPush();
  v15 = (*(self->_harvestStoreGetter + 2))();
  bundleID = [itemCopy bundleID];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  domainIdentifier = [itemCopy domainIdentifier];
  v19 = [v15 tombstoneExistsForSpotlightReferenceWithBundleIdentifier:bundleID uniqueIdentifier:uniqueIdentifier domainIdentifier:domainIdentifier];

  if (v19)
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEFAULT, "Tombstone exists for queued item; deleting.", buf, 2u);
    }

    v21 = 0;
    v22 = pipelineCopy;
    goto LABEL_23;
  }

  v23 = (*(self->_harvestStoreGetter + 2))();
  bundleID2 = [itemCopy bundleID];
  uniqueIdentifier2 = [itemCopy uniqueIdentifier];
  v26 = [v23 reimportRequestsContainBundleIdentifier:bundleID2 uniqueIdentifier:uniqueIdentifier2];

  if ((v26 & 1) == 0)
  {
    if ([contextCopy backpressureHazard])
    {
      if (processSearchableItem_pipeline_context_harvestMetrics___pasOnceToken62 != -1)
      {
        dispatch_once(&processSearchableItem_pipeline_context_harvestMetrics___pasOnceToken62, &__block_literal_global_146);
      }

      v27 = processSearchableItem_pipeline_context_harvestMetrics___pasExprOnceResult;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__SGDManagerForCTS_processSearchableItem_pipeline_context_harvestMetrics___block_invoke_2;
      block[3] = &unk_278955830;
      v53 = itemCopy;
      v54 = metricsCopy;
      dispatch_async(v27, block);

      v28 = v53;
    }

    else
    {
      v29 = +[SGDPluginManager sharedInstance];
      v30 = [v29 processSearchableItem:itemCopy harvestMetrics:metricsCopy];

      v28 = sgLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier3 = [itemCopy uniqueIdentifier];
        *buf = 138412290;
        v56 = uniqueIdentifier3;
        _os_log_impl(&dword_231E60000, v28, OS_LOG_TYPE_DEFAULT, "Plugins finished CSSI processing via CTS: %@", buf, 0xCu);
      }
    }
  }

  if (([MEMORY[0x277D41E08] searchableItemIsEligibleForDissectorPipeline:itemCopy targetPluginsCustomAttributeName:@"com_apple_suggestions_targetPlugins"] & 1) == 0)
  {
    v20 = sgLogHandle();
    v22 = pipelineCopy;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier4 = [itemCopy uniqueIdentifier];
      *buf = 138412290;
      v56 = uniqueIdentifier4;
      _os_log_impl(&dword_231E60000, v20, OS_LOG_TYPE_INFO, "Dissector pipeline ignoring %@", buf, 0xCu);
    }

    v21 = 0;
    goto LABEL_23;
  }

  bundleID3 = [itemCopy bundleID];
  v33 = [bundleID3 isEqualToString:*MEMORY[0x277D021D0]];

  v22 = pipelineCopy;
  if (v33)
  {
    attributeSet = [itemCopy attributeSet];
    authors = [attributeSet authors];
    v36 = [authors count];

    if (v36)
    {
      attributeSet2 = [itemCopy attributeSet];
      accountIdentifier = [attributeSet2 accountIdentifier];

      if (accountIdentifier)
      {
        v20 = [(SGMessage *)SGTextMessage messageWithSearchableItem:itemCopy];
        v21 = [(SGDManagerForCTS *)self processTextMessage:v20 pipeline:pipelineCopy context:contextCopy harvestMetrics:metricsCopy];
LABEL_23:

        goto LABEL_24;
      }

      v46 = sgLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        uniqueIdentifier5 = [itemCopy uniqueIdentifier];
        *buf = 138412290;
        v56 = uniqueIdentifier5;
        v49 = "text message CSSI %@ has no accountIdentifier";
        goto LABEL_33;
      }
    }

    else
    {
      v46 = sgLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        uniqueIdentifier5 = [itemCopy uniqueIdentifier];
        *buf = 138412290;
        v56 = uniqueIdentifier5;
        v49 = "text message CSSI %@ has no authors";
LABEL_33:
        _os_log_fault_impl(&dword_231E60000, v46, OS_LOG_TYPE_FAULT, v49, buf, 0xCu);
        goto LABEL_34;
      }
    }
  }

  else
  {
    bundleID4 = [itemCopy bundleID];
    v43 = [bundleID4 isEqualToString:*MEMORY[0x277D021C0]];

    if (v43)
    {
      v20 = [(SGMessage *)SGSimpleMailMessage messageWithSearchableItem:itemCopy];
      attributeSet3 = [itemCopy attributeSet];
      emailHeaders = [attributeSet3 emailHeaders];
      v21 = [(SGDManagerForCTS *)self processMailMessage:v20 headers:emailHeaders pipeline:pipelineCopy context:contextCopy harvestMetrics:metricsCopy];

      goto LABEL_23;
    }

    v46 = sgLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      uniqueIdentifier5 = [itemCopy uniqueIdentifier];
      bundleID5 = [itemCopy bundleID];
      *buf = 138412546;
      v56 = uniqueIdentifier5;
      v57 = 2112;
      v58 = bundleID5;
      _os_log_fault_impl(&dword_231E60000, v46, OS_LOG_TYPE_FAULT, "Unhandled CSSI %@ from %@ in [SGDManagerForCTS processSearchableItem:pipeline:context:]", buf, 0x16u);

LABEL_34:
    }
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    abort();
  }

  v21 = 0;
LABEL_24:
  objc_autoreleasePoolPop(v14);

  v40 = *MEMORY[0x277D85DE8];
  return v21;
}

void __74__SGDManagerForCTS_processSearchableItem_pipeline_context_harvestMetrics___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[SGDPluginManager sharedInstance];
  v3 = [v2 processSearchableItem:*(a1 + 32) harvestMetrics:*(a1 + 40)];

  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uniqueIdentifier];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "Plugins finished async CSSI processing via CTS: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __74__SGDManagerForCTS_processSearchableItem_pipeline_context_harvestMetrics___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"processSearchableItem-plugins" qosClass:9];
  v2 = processSearchableItem_pipeline_context_harvestMetrics___pasExprOnceResult;
  processSearchableItem_pipeline_context_harvestMetrics___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)_performHarvestedURLMetricUploadAcitivity:(id)acitivity
{
  v64 = *MEMORY[0x277D85DE8];
  acitivityCopy = acitivity;
  isClassCLocked = [MEMORY[0x277D42598] isClassCLocked];
  v4 = sgLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isClassCLocked)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "[HarvestedURLMetric] Can not access entity store. Waiting for later.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "[HarvestedURLMetric] Performing harvested URL metric upload CTS job.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-777600.0];
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:86400.0];
    baseURLStrings = [MEMORY[0x277D6EE90] baseURLStrings];
    firstObject = [baseURLStrings firstObject];
    v9 = firstObject;
    v10 = @"facetime.apple.com/join";
    if (firstObject)
    {
      v10 = firstObject;
    }

    v11 = v10;

    v12 = (*(self->_harvestStoreGetter + 2))();
    v13 = [v12 urlsFoundBetweenStartDate:v4 endDate:v6 excludingBundleIdentifiers:0 containingSubstring:v11 flagFilter:0 limit:100];

    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 count];
      *buf = 134217984;
      v63 = v15;
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "[HarvestedURLMetric] Got %tu URL(s) in the store.", buf, 0xCu);
    }

    if ([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:acitivityCopy])
    {
      v16 = sgLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "[HarvestedURLMetric] Deferring for later right after getting URLs", buf, 2u);
      }

      [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:acitivityCopy state:3];
    }

    else
    {
      v43 = v11;
      v44 = v6;
      v45 = v4;
      v47 = objc_opt_new();
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v42 = v13;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v55;
        while (2)
        {
          v21 = 0;
          v46 = v19;
          do
          {
            if (*v55 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v54 + 1) + 8 * v21);
            v23 = objc_autoreleasePoolPush();
            if (([v22 flags] & 8) != 0)
            {
              v24 = v17;
              bundleIdentifier = [v22 bundleIdentifier];
              v26 = [v47 objectForKeyedSubscript:bundleIdentifier];
              if (!v26)
              {
                v59[0] = @"offeredCount";
                v59[1] = @"acceptedCount";
                v60[0] = &unk_284749290;
                v60[1] = &unk_284749290;
                v59[2] = @"bundleIdentifier";
                _pas_stringBackedByUTF8CString = [bundleIdentifier _pas_stringBackedByUTF8CString];
                v59[3] = @"urlType";
                v60[2] = _pas_stringBackedByUTF8CString;
                v60[3] = @"FaceTime";
                v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];
                v26 = [v28 mutableCopy];

                [v47 setObject:v26 forKeyedSubscript:bundleIdentifier];
              }

              v29 = [v26 objectForKeyedSubscript:@"offeredCount"];
              v30 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v29, "intValue") + 1}];
              [v26 setObject:v30 forKeyedSubscript:@"offeredCount"];

              if (([v22 flags] & 2) != 0)
              {
                v31 = [v26 objectForKeyedSubscript:@"acceptedCount"];
                v32 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v31, "intValue") + 1}];
                [v26 setObject:v32 forKeyedSubscript:@"acceptedCount"];
              }

              if ([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:acitivityCopy])
              {
                v40 = sgLogHandle();
                v11 = v43;
                v6 = v44;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_231E60000, v40, OS_LOG_TYPE_DEFAULT, "[HarvestedURLMetric] Deferring for later while enumerating URLs", buf, 2u);
                }

                [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:acitivityCopy state:3];
                objc_autoreleasePoolPop(v23);
                v4 = v45;
                goto LABEL_43;
              }

              v17 = v24;
              v19 = v46;
            }

            objc_autoreleasePoolPop(v23);
            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v54 objects:v61 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      allValues = [v47 allValues];
      v34 = [allValues countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v51;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v51 != v36)
            {
              objc_enumerationMutation(allValues);
            }

            v38 = *(*(&v50 + 1) + 8 * i);
            v39 = sgLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = v38;
              _os_log_impl(&dword_231E60000, v39, OS_LOG_TYPE_DEFAULT, "[HarvestedURLMetric] payload: %@", buf, 0xCu);
            }

            AnalyticsSendEvent();
          }

          v35 = [allValues countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v35);
      }

      v24 = sgLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "[HarvestedURLMetric] Done with harvested URL metric upload CTS job.", buf, 2u);
      }

      v6 = v44;
      v4 = v45;
      v11 = v43;
LABEL_43:
      v13 = v42;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_registerHarvestedURLMetricUploadActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "[HarvestedURLMetric] Registering for harvested URL metrics upload task with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SGDManagerForCTS__registerHarvestedURLMetricUploadActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:10 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__SGDManagerForCTS__registerHarvestedURLMetricUploadActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performHarvestedURLMetricUploadAcitivity:v3];
}

- (void)_performAnalyticsHeartbeatActivity:(id)activity
{
  activityCopy = activity;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v4 = getPSUSummarizationAnalyticsClass_softClass;
  v10 = getPSUSummarizationAnalyticsClass_softClass;
  if (!getPSUSummarizationAnalyticsClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPSUSummarizationAnalyticsClass_block_invoke;
    v6[3] = &unk_278955BF0;
    v6[4] = &v7;
    __getPSUSummarizationAnalyticsClass_block_invoke(v6);
    v4 = v8[3];
  }

  v5 = v4;
  _Block_object_dispose(&v7, 8);
  [v4 logHeartbeat];
}

- (void)_registerAnalyticsHeartbeatActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for SGXPCActivityAnalyticsHeartbeat with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SGDManagerForCTS__registerAnalyticsHeartbeatActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:14 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__SGDManagerForCTS__registerAnalyticsHeartbeatActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAnalyticsHeartbeatActivity:v3];
}

- (void)_performMailIntelligenceTasksActivity:(id)activity
{
  activityCopy = activity;
  lockState = [MEMORY[0x277D42598] lockState];
  v7 = sgLogHandle();
  v8 = v7;
  if (lockState != 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "SGDManagerForCTS _performMailIntelligenceTasksActivity: Starting CTS job for Mail Intelligence Tasks", buf, 2u);
    }

    *buf = 0;
    v25 = buf;
    v26 = 0x2020000000;
    v27 = 1;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__SGDManagerForCTS__performMailIntelligenceTasksActivity___block_invoke;
    v16[3] = &unk_27894C0E0;
    v18 = buf;
    v9 = activityCopy;
    v17 = v9;
    v19 = &v20;
    v10 = MEMORY[0x2383809F0](v16);
    [SGMIMaintenance executeDailyTasksWithShouldContinue:v10];
    if (v25[24])
    {
      goto LABEL_20;
    }

    if (v21[3])
    {
      *(v21 + 24) = 1;
    }

    else
    {
      should_defer = xpc_activity_should_defer(v9);
      *(v21 + 24) = should_defer;
      if (!should_defer)
      {
        v12 = sgLogHandle();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
LABEL_19:

LABEL_20:
          _Block_object_dispose(&v20, 8);
          _Block_object_dispose(buf, 8);
          goto LABEL_21;
        }

        *v15 = 0;
        v13 = "Mail Intelligence Task interrupted by device lock state change";
LABEL_18:
        _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, v13, v15, 2u);
        goto LABEL_19;
      }
    }

    if (!xpc_activity_set_state(v9, 3))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGDManagerForCTS.m" lineNumber:706 description:@"Unexpected failure of CTS deferral"];
    }

    v12 = sgLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    *v15 = 0;
    v13 = "Mail Intelligence Task deferred by CTS";
    goto LABEL_18;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_231E60000, v8, OS_LOG_TYPE_FAULT, "SGDManagerForCTS _performMailIntelligenceTasksActivity: Activity running even though Class A protected data is unavailable", buf, 2u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    abort();
  }

LABEL_21:
}

uint64_t __58__SGDManagerForCTS__performMailIntelligenceTasksActivity___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (xpc_activity_should_defer(*(a1 + 32)))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_5:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      return *(*(*(a1 + 40) + 8) + 24);
    }

    if (([MEMORY[0x277D42598] isUnlocked] & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

- (void)_registerMailIntelligenceTasksActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for mail event aggregation processing with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SGDManagerForCTS__registerMailIntelligenceTasksActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:9 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__SGDManagerForCTS__registerMailIntelligenceTasksActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performMailIntelligenceTasksActivity:v3];
}

- (void)_performProcessPendingVerificationActivity:(id)activity overrideVerificationStatus:(id)status
{
  v77 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  statusCopy = status;
  v72[2] = 0;
  v72[0] = @"com.apple.suggestd.process-pending-verification";
  v72[1] = mach_absolute_time();
  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGDManagerForCTS _performProcessPendingVerificationActivity: Starting CTS job for document verification.", buf, 2u);
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, 5u, 0);
  queue = dispatch_queue_create("com.apple.suggestions.verification-write", v7);

  if (pthread_mutex_trylock(&self->_verificationLock))
  {
    log = sgEventsLogHandle();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, log, OS_LOG_TYPE_ERROR, "SGDManagerForCTS _performProcessPendingVerificationActivity: Could not obtain a lock for document verification.", buf, 2u);
    }
  }

  else
  {
    v8 = (*(self->_harvestStoreGetter + 2))();
    emailsPendingVerification = [v8 emailsPendingVerification];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    log = emailsPendingVerification;
    v10 = [log countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v10)
    {
      v51 = *v69;
      *&v11 = 138543362;
      v42 = v11;
      while (2)
      {
        v52 = v10;
        for (i = 0; i != v52; ++i)
        {
          if (*v69 != v51)
          {
            objc_enumerationMutation(log);
          }

          v56 = *(*(&v68 + 1) + 8 * i);
          if (activityCopy && [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:activityCopy])
          {
            v37 = sgEventsLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              loggingIdentifier = [v56 loggingIdentifier];
              *buf = v42;
              v75 = loggingIdentifier;
              _os_log_impl(&dword_231E60000, v37, OS_LOG_TYPE_DEFAULT, "SGDManagerForCTS _performProcessPendingVerificationActivity: Deferring CTS document verification for [SGEntity (%{public}@)]", buf, 0xCu);
            }

            if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:activityCopy state:3]& 1) == 0)
            {
              v39 = sgEventsLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                loggingIdentifier2 = [v56 loggingIdentifier];
                *buf = v42;
                v75 = loggingIdentifier2;
                _os_log_error_impl(&dword_231E60000, v39, OS_LOG_TYPE_ERROR, "SGDManagerForCTS _performProcessPendingVerificationActivity: Could not defer CTS document verification for [SGEntity (%{public}@)]", buf, 0xCu);
              }
            }

            goto LABEL_45;
          }

          duplicateKey = [v56 duplicateKey];
          entityKey = [duplicateKey entityKey];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            duplicateKey2 = [v56 duplicateKey];
            entityKey2 = [duplicateKey2 entityKey];

            messageId = [entityKey2 messageId];
            if (messageId)
            {
              v18 = sgEventsLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                loggingIdentifier3 = [v56 loggingIdentifier];
                *buf = v42;
                v75 = loggingIdentifier3;
                _os_log_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEFAULT, "SGDManagerForCTS _performProcessPendingVerificationActivity: Starting CTS document verification for [SGEntity (%{public}@)]", buf, 0xCu);
              }

              v47 = dispatch_semaphore_create(0);
              v20 = (*(self->_harvestStoreGetter + 2))();
              v49 = [v20 loadEntitiesFoundInEmail:entityKey2 entityType:2];

              if (statusCopy)
              {
                integerValue = [statusCopy integerValue];
                v21 = 0;
                v22 = v47;
              }

              else
              {
                v26 = +[SGMailClientUtil sharedInstance];
                v67 = 0;
                v27 = [v26 verifyDKIMSignatureForMailWithIdentifier:messageId error:&v67];
                v44 = v26;
                v43 = v67;
                integerValue = v27;
                if (v27)
                {
                  v28 = 10;
                }

                else
                {
                  v28 = 11;
                }

                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v66 = 0u;
                v29 = v49;
                v30 = [v29 countByEnumeratingWithState:&v63 objects:v73 count:16];
                if (v30)
                {
                  v31 = *v64;
                  do
                  {
                    for (j = 0; j != v30; ++j)
                    {
                      if (*v64 != v31)
                      {
                        objc_enumerationMutation(v29);
                      }

                      v33 = *(*(&v63 + 1) + 8 * j);
                      v34 = +[SGRTCLogging defaultLogger];
                      [v34 logEventInteractionForEntity:v33 interface:0 actionType:v28];
                    }

                    v30 = [v29 countByEnumeratingWithState:&v63 objects:v73 count:16];
                  }

                  while (v30);
                }

                v22 = v47;
                v21 = v43;
              }

              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __90__SGDManagerForCTS__performProcessPendingVerificationActivity_overrideVerificationStatus___block_invoke;
              block[3] = &unk_27894C0B8;
              v62 = integerValue;
              block[4] = v56;
              block[5] = self;
              v58 = entityKey2;
              v59 = v49;
              v60 = v21;
              v61 = v22;
              v24 = v22;
              v35 = v21;
              v36 = v49;
              dispatch_async(queue, block);
              dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
            }

            else
            {
              v24 = sgEventsLogHandle();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
              {
                loggingIdentifier4 = [v56 loggingIdentifier];
                *buf = v42;
                v75 = loggingIdentifier4;
                _os_log_fault_impl(&dword_231E60000, v24, OS_LOG_TYPE_FAULT, "SGDManagerForCTS _performProcessPendingVerificationActivity: Entity pending source verification did not have a message ID. [SGEntity (%{public}@)]", buf, 0xCu);
              }
            }
          }

          else
          {
            entityKey2 = sgEventsLogHandle();
            if (os_log_type_enabled(entityKey2, OS_LOG_TYPE_FAULT))
            {
              loggingIdentifier5 = [v56 loggingIdentifier];
              *buf = v42;
              v75 = loggingIdentifier5;
              _os_log_fault_impl(&dword_231E60000, entityKey2, OS_LOG_TYPE_FAULT, "SGDManagerForCTS _performProcessPendingVerificationActivity: Entity pending source verification did not have an email entity key. [SGEntity (%{public}@)]", buf, 0xCu);
            }
          }
        }

        v10 = [log countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:

    pthread_mutex_unlock(&self->_verificationLock);
  }

  SGRecordMeasurementState(v72);
  SGRecordMeasurementState(v72);

  v40 = *MEMORY[0x277D85DE8];
}

intptr_t __90__SGDManagerForCTS__performProcessPendingVerificationActivity_overrideVerificationStatus___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  switch(v2)
  {
    case 2:
      v6 = sgEventsLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 64);
        v8 = [*(a1 + 32) loggingIdentifier];
        *buf = 138412546;
        v16 = v14;
        v17 = 2114;
        v18 = v8;
        v9 = "SGDManagerForCTS _performProcessPendingVerificationActivity: DKIM verification resulted in permanent failure: %@. [SGEntity (%{public}@)]";
        goto LABEL_14;
      }

LABEL_10:

      v5 = (*(*(*(a1 + 40) + 8) + 16))();
      v10 = objc_autoreleasePoolPush();
      v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{*(a1 + 48), 0}];
      objc_autoreleasePoolPop(v10);
      [v5 deleteMessages:v11];

LABEL_11:
      break;
    case 1:
      v6 = sgEventsLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 64);
        v8 = [*(a1 + 32) loggingIdentifier];
        *buf = 138412546;
        v16 = v7;
        v17 = 2114;
        v18 = v8;
        v9 = "SGDManagerForCTS _performProcessPendingVerificationActivity: DKIM verification resulted in temporary failure for 2nd time. Treating as permanent failure: %@. [SGEntity (%{public}@)]";
LABEL_14:
        _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    case 0:
      v3 = sgEventsLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) loggingIdentifier];
        *buf = 138543362;
        v16 = v4;
        _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "SGDManagerForCTS _performProcessPendingVerificationActivity: Successfully verified DKIM signature. [SGEntity (%{public}@)]", buf, 0xCu);
      }

      v5 = (*(*(*(a1 + 40) + 8) + 16))();
      [v5 writeEmailVerificationResultForEmailWithKey:*(a1 + 48) eventEntities:*(a1 + 56)];
      goto LABEL_11;
  }

  result = dispatch_semaphore_signal(*(a1 + 72));
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerProcessPendingVerificationActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for pending-verification processing with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SGDManagerForCTS__registerProcessPendingVerificationActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:8 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__SGDManagerForCTS__registerProcessPendingVerificationActivity__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([MEMORY[0x277D02098] enableDKIMEnforcement])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _performProcessPendingVerificationActivity:v4 overrideVerificationStatus:0];
  }
}

- (void)_performProcessPendingGeocodesActivity:(id)activity
{
  activityCopy = activity;
  v25[2] = 0;
  v25[0] = @"com.apple.suggestd.process-pending-geocodes";
  v25[1] = mach_absolute_time();
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, 5u, 0);
  v7 = dispatch_queue_create("com.apple.suggestions.geocode-write", v6);

  if (!pthread_mutex_trylock(&self->_geocodeLock))
  {
    v8 = 0;
    while (1)
    {
      if (![MEMORY[0x277D02098] allowGeocode])
      {
        nextPendingGeocode = v8;
        goto LABEL_15;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = (*(self->_harvestStoreGetter + 2))();
      nextPendingGeocode = [v10 nextPendingGeocode];

      objc_autoreleasePoolPop(v9);
      if (!nextPendingGeocode)
      {
        goto LABEL_15;
      }

      if (activityCopy && [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:activityCopy])
      {
        break;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = [SGStorageEvent storageEventFromEntity:nextPendingGeocode];
      objc_autoreleasePoolPop(v12);
      v14 = dispatch_semaphore_create(0);
      v15 = MEMORY[0x277D01FC0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__SGDManagerForCTS__performProcessPendingGeocodesActivity___block_invoke;
      v19[3] = &unk_27894C090;
      v20 = v7;
      v8 = nextPendingGeocode;
      v21 = v8;
      selfCopy = self;
      v16 = v14;
      v23 = v16;
      [v15 geocodeEvent:v13 withCallback:v19];
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    }

    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_INFO, "Deferring remaining geocodes for later", buf, 2u);
    }

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:activityCopy state:3]& 1) == 0)
    {
      v18 = sgLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "Invalid state transition to DEFER", buf, 2u);
      }
    }

LABEL_15:
    pthread_mutex_unlock(&self->_geocodeLock);
  }

  SGRecordMeasurementState(v25);

  SGRecordMeasurementState(v25);
}

void __59__SGDManagerForCTS__performProcessPendingGeocodesActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SGDManagerForCTS__performProcessPendingGeocodesActivity___block_invoke_2;
  v7[3] = &unk_2789560E0;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

intptr_t __59__SGDManagerForCTS__performProcessPendingGeocodesActivity___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = [*(a1 + 40) locations];
  v4 = [v2 initWithArray:v3];
  [*(a1 + 32) setLocations:v4];

  v5 = [*(a1 + 40) when];
  [*(a1 + 32) setTimeRange:v5];

  v6 = [*(a1 + 32) tags];
  v7 = [MEMORY[0x277D01FA0] allDay];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [*(a1 + 32) timeRange];
    if (([v9 isValidAllDayRange] & 1) == 0)
    {
      __assert_rtn("[SGDManagerForCTS _performProcessPendingGeocodesActivity:]_block_invoke_2", "SGDManagerForCTS.m", 548, "[nextGeocode.timeRange isValidAllDayRange]");
    }
  }

  v10 = (*(*(*(a1 + 48) + 8) + 16))();
  [v10 writeEntityGeocodeResultToDb:*(a1 + 32)];

  v11 = *(a1 + 56);

  return dispatch_semaphore_signal(v11);
}

- (void)_registerProcessPendingGeocodesActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for pending-geocode processing with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SGDManagerForCTS__registerProcessPendingGeocodesActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:7 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__SGDManagerForCTS__registerProcessPendingGeocodesActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performProcessPendingGeocodesActivity:v3];
}

- (void)performContactDetailCacheRebuildActivity:(id)activity
{
  activityCopy = activity;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v5 = (*(self->_harvestStoreGetter + 2))();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SGDManagerForCTS_performContactDetailCacheRebuildActivity___block_invoke;
  v7[3] = &unk_27894BFF0;
  v6 = activityCopy;
  v8 = v6;
  selfCopy = self;
  v10 = v11;
  [v5 rebuildContactDetailsCacheWithShouldContinueBlock:v7];

  _Block_object_dispose(v11, 8);
}

uint64_t __61__SGDManagerForCTS_performContactDetailCacheRebuildActivity___block_invoke(void *a1)
{
  if (!a1[4])
  {
    return 1;
  }

  if (![*(a1[5] + 168) shouldDefer:?])
  {
    return 1;
  }

  v2 = sgLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_DEFAULT, "Deferring CD cache rebuild", v4, 2u);
  }

  [*(a1[5] + 168) setState:a1[4] state:3];
  result = 0;
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

- (void)_registerForContactDetailCacheRebuildActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for contact detail cache rebuilding with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SGDManagerForCTS__registerForContactDetailCacheRebuildActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:6 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __65__SGDManagerForCTS__registerForContactDetailCacheRebuildActivity__block_invoke(uint64_t a1, void *a2)
{
  v5[2] = 0;
  v4 = a2;
  v5[0] = @"com.apple.suggestd.cd-cache-rebuild";
  v5[1] = mach_absolute_time();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performContactDetailCacheRebuildActivity:v4];

  SGRecordMeasurementState(v5);
  SGRecordMeasurementState(v5);
}

- (void)_performSendRTCActivity:(id)activity
{
  activityCopy = activity;
  v14[2] = 0;
  v14[0] = @"com.apple.suggestd.sendrtc";
  v14[1] = mach_absolute_time();
  v5 = dispatch_semaphore_create(0);
  v6 = +[SGRTCLogging defaultLogger];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__SGDManagerForCTS__performSendRTCActivity___block_invoke;
  v11[3] = &unk_27894C040;
  v7 = activityCopy;
  v12 = v7;
  selfCopy = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SGDManagerForCTS__performSendRTCActivity___block_invoke_81;
  v9[3] = &unk_27894C068;
  v8 = v5;
  v10 = v8;
  [v6 sendRTCLogsWithShouldContinueBlock:v11 completion:v9];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  SGRecordMeasurementState(v14);

  SGRecordMeasurementState(v14);
}

uint64_t __44__SGDManagerForCTS__performSendRTCActivity___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 1;
  }

  if (![*(*(a1 + 40) + 168) shouldDefer:?])
  {
    return 1;
  }

  v1 = sgLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_231E60000, v1, OS_LOG_TYPE_DEFAULT, "Deferring sending of RTC Logs", v3, 2u);
  }

  return 0;
}

- (void)_registerForCTSSendRTCActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for RTC log sending with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SGDManagerForCTS__registerForCTSSendRTCActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:4 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__SGDManagerForCTS__registerForCTSSendRTCActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performSendRTCActivity:v3];
}

- (void)_performIdentityAnalysisActivity:(id)activity
{
  v6[2] = 0;
  activityCopy = activity;
  v6[0] = @"com.apple.suggestd.identityanalysis";
  v6[1] = mach_absolute_time();
  v4 = (*(self->_harvestStoreGetter + 2))();
  [v4 analyzeMergeBlobs:activityCopy];

  SGRecordMeasurementState(v6);
  SGRecordMeasurementState(v6);
}

- (void)_registerForCTSIdentityAnalysisActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for identity analysis with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SGDManagerForCTS__registerForCTSIdentityAnalysisActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:3 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__SGDManagerForCTS__registerForCTSIdentityAnalysisActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performIdentityAnalysisActivity:v3];
}

- (void)_performVacuumActivity
{
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Vacuuming the database", &v6, 2u);
  }

  v7 = 0;
  v8 = 0;
  v6 = @"com.apple.suggestd.vacuum";
  v7 = mach_absolute_time();
  v4 = (*(self->_harvestStoreGetter + 2))();
  [v4 vacuum];

  v5 = (*(self->_harvestStoreGetter + 2))();
  [v5 clearCaches];

  SGRecordMeasurementState(&v6);
  SGRecordMeasurementState(&v6);
}

- (void)_registerForCTSVacuumActivity
{
  objc_initWeak(&location, self);
  xpcActivityManager = self->_xpcActivityManager;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SGDManagerForCTS__registerForCTSVacuumActivity__block_invoke;
  v4[3] = &unk_27894BFA0;
  objc_copyWeak(&v5, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:1 handler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__SGDManagerForCTS__registerForCTSVacuumActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performVacuumActivity];
}

- (void)_performTrimActivity:(id)activity
{
  activityCopy = activity;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if ([MEMORY[0x277D02098] allowAgeBasedPruning])
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "Pruning entities more than a year old", buf, 2u);
    }

    v35 = 0;
    v36 = 0;
    *buf = @"com.apple.suggestd.trim";
    v35 = mach_absolute_time();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41__SGDManagerForCTS__performTrimActivity___block_invoke;
    v31[3] = &unk_27894BFF0;
    v31[4] = self;
    v6 = activityCopy;
    v32 = v6;
    v33 = &v37;
    v7 = MEMORY[0x2383809F0](v31);
    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __41__SGDManagerForCTS__performTrimActivity___block_invoke_2;
    v30[3] = &unk_27894C018;
    v30[4] = self;
    [MEMORY[0x277CC5A40] sg_usingSharedStoreForReadingOnly:v30];
    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v12 = (*(self->_harvestStoreGetter + 2))();
    [v12 pruneEntitiesOlderThanOneYearWithSuspensionHandler:v7];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v13 = (*(self->_harvestStoreGetter + 2))();
    [v13 pruneMailIntelligenceOlderThanOneYearWithSuspensionHandler:v7];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v14 = (*(self->_harvestStoreGetter + 2))();
    [v14 deleteInteractionEntitiesExceedingLimit:&unk_284749278 withSuspensionHandler:v7];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v15 = (*(self->_harvestStoreGetter + 2))();
    [v15 deleteCompletedReimportRequests];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v16 = (*(self->_harvestStoreGetter + 2))();
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
    [v16 deleteAllReimportRequestsOlderThanDate:v17];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v18 = (*(self->_harvestStoreGetter + 2))();
    [v18 trimURLs];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v19 = (*(self->_harvestStoreGetter + 2))();
    [v19 pruneNLEventEntitiesOlderThanTwoWeeks];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v20 = (*(self->_harvestStoreGetter + 2))();
    [v20 pruneReminders];

    if (([(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v6]& 1) != 0)
    {
      goto LABEL_17;
    }

    v21 = (*(self->_harvestStoreGetter + 2))();
    [v21 analyzeDatabase];

    if (-[SGXPCActivityManagerProtocol shouldDefer:](self->_xpcActivityManager, "shouldDefer:", v6) & 1) != 0 || (+[SGExtractionModel cleanModelAssets](SGExtractionModel, "cleanModelAssets"), (-[SGXPCActivityManagerProtocol shouldDefer:](self->_xpcActivityManager, "shouldDefer:", v6)) || ((*(self->_harvestStoreGetter + 2))(), v22 = objc_claimAutoreleasedReturnValue(), [v22 vacuum], v22, (-[SGXPCActivityManagerProtocol shouldDefer:](self->_xpcActivityManager, "shouldDefer:", v6)))
    {
LABEL_17:
      if (*(v38 + 24) == 1)
      {
        [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:v6 state:3];
      }
    }

    else
    {
      v25 = MEMORY[0x277D41F88];
      v26 = +[SGPaths suggestionsDirectory];
      v27 = [v25 sharedSingletonWithDirectory:v26];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __41__SGDManagerForCTS__performTrimActivity___block_invoke_70;
      v28[3] = &unk_27894C040;
      v28[4] = self;
      v29 = v6;
      [v27 trimDbWithDeferralBlock:v28];
    }

    v23 = (*(self->_harvestStoreGetter + 2))(self->_harvestStoreGetter, v8, v9, v10, v11);
    [v23 clearCaches];

    SGRecordMeasurementState(buf);
    SGRecordMeasurementState(buf);
  }

  else
  {
    v24 = sgLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_INFO, "NOT pruning entities more than a year old, due to preference setting.", buf, 2u);
    }
  }

  _Block_object_dispose(&v37, 8);
}

uint64_t __41__SGDManagerForCTS__performTrimActivity___block_invoke(void *a1)
{
  if (![*(a1[4] + 168) shouldDefer:a1[5]])
  {
    return [MEMORY[0x277D42598] isUnlocked] ^ 1;
  }

  result = 1;
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void __41__SGDManagerForCTS__performTrimActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2);
  [v5 pruneDuplicateEventExtractions:v4];
}

uint64_t __41__SGDManagerForCTS__performTrimActivity___block_invoke_70(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) shouldDefer:*(a1 + 40)];
  if (v2)
  {
    [*(*(a1 + 32) + 168) setState:*(a1 + 40) state:3];
  }

  return v2;
}

- (void)_registerForCTSTrimActivity
{
  objc_initWeak(&location, self);
  xpcActivityManager = self->_xpcActivityManager;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SGDManagerForCTS__registerForCTSTrimActivity__block_invoke;
  v4[3] = &unk_27894BFA0;
  objc_copyWeak(&v5, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:0 handler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__SGDManagerForCTS__registerForCTSTrimActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performTrimActivity:v3];
}

- (void)_performCollectWeeklyStats:(id)stats
{
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Can not harvest items until first unlock. Waiting for later.", buf, 2u);
    }
  }

  else if (vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL) < 0.00001)
  {
    v6 = objc_opt_new();
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
    [v6 setLimitingStartDate:v4];

    recentCalls = [v6 recentCalls];
    if ([recentCalls count])
    {
      [SGDManagerForCTS _logCallInteractions:recentCalls];
    }
  }
}

- (void)_registerForCollectWeeklyStats
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "registering _registerForCollectWeeklyStats", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SGDManagerForCTS__registerForCollectWeeklyStats__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:5 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __50__SGDManagerForCTS__registerForCollectWeeklyStats__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performCollectWeeklyStats:v3];
}

- (void)_performMobileAssetMetadataDownloadActivity:(id)activity
{
  activityCopy = activity;
  v25[2] = 0;
  v25[0] = @"com.apple.suggestd.ma-metadata-download";
  v25[1] = mach_absolute_time();
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  asset = [MEMORY[0x277D02558] asset];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__SGDManagerForCTS__performMobileAssetMetadataDownloadActivity___block_invoke;
  v23[3] = &unk_27894BFC8;
  v7 = v5;
  v24 = v7;
  [asset downloadMetadataWithCompletion:v23];

  SGRecordMeasurementState(v25);
  dispatch_group_enter(v7);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3810000000;
  v21 = 0;
  v22 = 0;
  v20[3] = "";
  v20[4] = @"com.apple.suggestd.ma-metadata-download";
  v21 = mach_absolute_time();
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__SGDManagerForCTS__performMobileAssetMetadataDownloadActivity___block_invoke_52;
  v17[3] = &unk_278955DE0;
  v19 = v20;
  v8 = v7;
  v18 = v8;
  [SGAsset downloadMetadataWithCompletion:v17];
  v9 = v8;
  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_group_wait(v9, v10);

  if (v11)
  {
    [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:activityCopy state:4];
    v12 = dispatch_get_global_queue(9, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__SGDManagerForCTS__performMobileAssetMetadataDownloadActivity___block_invoke_53;
    v13[3] = &unk_278956130;
    v14 = v9;
    selfCopy = self;
    v16 = activityCopy;
    dispatch_async(v12, v13);
  }

  _Block_object_dispose(v20, 8);
  SGRecordMeasurementState(v25);
}

void __64__SGDManagerForCTS__performMobileAssetMetadataDownloadActivity___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "CoreSuggestionsModelAssets metadata download success? %d", v6, 8u);
  }

  dispatch_group_leave(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

void __64__SGDManagerForCTS__performMobileAssetMetadataDownloadActivity___block_invoke_52(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "CoreSuggestionsAssets metadata download success? %d", v6, 8u);
  }

  SGRecordMeasurementState((*(*(a1 + 40) + 8) + 32));
  dispatch_group_leave(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __64__SGDManagerForCTS__performMobileAssetMetadataDownloadActivity___block_invoke_53(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 32);
    v3 = dispatch_time(0, 1000000000);
    v4 = dispatch_group_wait(v2, v3);

    if (!v4)
    {
      break;
    }

    if ([*(*(a1 + 40) + 168) shouldDefer:*(a1 + 48)])
    {
      v5 = sgLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "CoreSuggestionsAssets metadata download - marking activity as done", v7, 2u);
      }

      return [*(*(a1 + 40) + 168) setState:*(a1 + 48) state:5];
    }
  }

  return [*(*(a1 + 40) + 168) setState:*(a1 + 48) state:5];
}

- (void)_registerMobileAssetMetadataDownloadActivity
{
  objc_initWeak(&location, self);
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Registering for MobileAsset metadata download with CTS", buf, 2u);
  }

  xpcActivityManager = self->_xpcActivityManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SGDManagerForCTS__registerMobileAssetMetadataDownloadActivity__block_invoke;
  v5[3] = &unk_27894BFA0;
  objc_copyWeak(&v6, &location);
  [(SGXPCActivityManagerProtocol *)xpcActivityManager registerForActivity:11 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __64__SGDManagerForCTS__registerMobileAssetMetadataDownloadActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performMobileAssetMetadataDownloadActivity:v3];
}

- (id)serviceContext
{
  v3 = [SGServiceContext alloc];
  v4 = (*(self->_harvestStoreGetter + 2))();
  v5 = [(SGServiceContext *)v3 initWithStore:v4];

  return v5;
}

- (void)registerForCTS
{
  [(SGDManagerForCTS *)self _registerForCTSTrimActivity];
  [(SGDManagerForCTS *)self _registerForCTSVacuumActivity];
  [(SGDManagerForCTS *)self _registerForCTSIdentityAnalysisActivity];
  [(SGDManagerForCTS *)self _registerForCTSSendRTCActivity];
  [(SGDManagerForCTS *)self _registerForCollectWeeklyStats];
  [(SGDManagerForCTS *)self _registerForContactDetailCacheRebuildActivity];
  [(SGDManagerForCTS *)self _registerProcessPendingGeocodesActivity];
  [(SGDManagerForCTS *)self _registerProcessPendingVerificationActivity];
  [(SGDManagerForCTS *)self _registerMailIntelligenceTasksActivity];
  [(SGDManagerForCTS *)self _registerHarvestedURLMetricUploadActivity];
  [(SGDManagerForCTS *)self _registerAnalyticsHeartbeatActivity];

  [(SGDManagerForCTS *)self _registerMobileAssetMetadataDownloadActivity];
}

- (SGDManagerForCTS)initWithHarvestStoreGetter:(id)getter xpcActivityManager:(id)manager
{
  getterCopy = getter;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = SGDManagerForCTS;
  v8 = [(SGDManagerForCTS *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_xpcActivityManager, manager);
    pthread_mutex_init(&v9->_geocodeLock, 0);
    pthread_mutex_init(&v9->_verificationLock, 0);
    if (getterCopy)
    {
      v10 = getterCopy;
    }

    else
    {
      v10 = &__block_literal_global_41;
    }

    v11 = MEMORY[0x2383809F0](v10);
    harvestStoreGetter = v9->_harvestStoreGetter;
    v9->_harvestStoreGetter = v11;

    v9->_ctsCriteriaState = 0;
    v13 = +[SGDPluginManager sharedInstance];
  }

  return v9;
}

+ (void)_logCallInteractions:(id)interactions
{
  v32 = *MEMORY[0x277D85DE8];
  interactionsCopy = interactions;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [interactionsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = *MEMORY[0x277CF7D98];
    v8 = *MEMORY[0x277CF7DA8];
    v26 = *MEMORY[0x277CF7E08];
    v23 = *MEMORY[0x277D021A8];
    v24 = *MEMORY[0x277CF7E00];
    v25 = *MEMORY[0x277D021E8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(interactionsCopy);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = v7 & [v10 callStatus];
        if (v11 || (v8 & [v10 callStatus]) != 0)
        {
          callerIdForDisplay = [v10 callerIdForDisplay];
          if (callerIdForDisplay)
          {
            v13 = callerIdForDisplay;
            serviceProvider = [v10 serviceProvider];

            if (serviceProvider)
            {
              serviceProvider2 = [v10 serviceProvider];
              v16 = [serviceProvider2 isEqualToString:v26];

              v17 = v25;
              if ((v16 & 1) != 0 || ([v10 serviceProvider], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v24), v18, v17 = v23, v19))
              {
                v20 = v17;
                callerIdForDisplay2 = [v10 callerIdForDisplay];
                [SGMetricsHelper recordConversationTurnWithDetail:callerIdForDisplay2 received:v11 != 0 throughApp:v20 withStore:0];
              }
            }
          }
        }
      }

      v5 = [interactionsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (SGDManagerForCTS)defaultInstance
{
  v2 = [self alloc];
  v3 = +[SGXPCActivityManager sharedInstance];
  v4 = [v2 initWithHarvestStoreGetter:&__block_literal_global_5243 xpcActivityManager:v3];

  return v4;
}

uint64_t __43__SGDManagerForCTS_sharedSingletonInstance__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultInstance];
  v2 = sharedSingletonInstance_singletonInstance;
  sharedSingletonInstance_singletonInstance = v1;

  v3 = sharedSingletonInstance_singletonInstance;

  return [v3 registerForCTS];
}

@end