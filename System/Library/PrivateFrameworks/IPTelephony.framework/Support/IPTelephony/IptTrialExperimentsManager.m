@interface IptTrialExperimentsManager
+ (id)getSharedInstance;
- (IptTrialExperimentsManager)init;
- (void)notifyRegisteredClientsForExperimentEnd;
- (void)notifyRegisteredClientsForExperimentStart:(id)a3;
- (void)readParametersFromPlist:(id)a3;
- (void)subscribeToTrial;
- (void)updateTreatment;
@end

@implementation IptTrialExperimentsManager

+ (id)getSharedInstance
{
  if (qword_1EE2BC5E8 != -1)
  {
    dispatch_once(&qword_1EE2BC5E8, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_13;

  return v3;
}

uint64_t __47__IptTrialExperimentsManager_getSharedInstance__block_invoke()
{
  _MergedGlobals_13 = objc_alloc_init(IptTrialExperimentsManager);

  return MEMORY[0x1EEE66BB8]();
}

- (IptTrialExperimentsManager)init
{
  v7.receiver = self;
  v7.super_class = IptTrialExperimentsManager;
  v2 = [(IptTrialExperimentsManager *)&v7 init];
  if (v2)
  {
    syslog(5, "%s: initializing TrialExperimentsManager", "IPTTrialExperimentsManager");
    [(IptTrialExperimentsManager *)v2 setCellularProdExpQueue:dispatch_queue_create("com.apple.ipTelephony.TrialExperimentsManager", 0)];
    v3 = [MEMORY[0x1E69DB518] clientWithIdentifier:259];
    trialClient = v2->trialClient;
    v2->trialClient = v3;

    syslog(5, "%s: Initialized trialClient for Wireless project ID", "IPTTrialExperimentsManager");
    if (v2->trialClient)
    {
      [(IptTrialExperimentsManager *)v2 subscribeToTrial];
    }

    v5 = v2;
  }

  return v2;
}

- (void)readParametersFromPlist:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v20 = a3;
  IPTelephonyManager::getBambiClient(&v26);
  if (!v20)
  {
    syslog(5, "%s: No active Experiment: IPTelephonyManager use default values %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager readParametersFromPlist:]");
    v6 = v26;
    BambiClient::setAllowLibnetcoreForRcs(v26, 1);
    BambiClient::setAllowTls13ForRcs(v6, 1);
    BambiClient::setAllowTlsPQForRcs(v6, 1);
    goto LABEL_26;
  }

  v25 = 0;
  v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v20 error:&v25];
  v19 = v25;
  if ([v18 count])
  {
    v3 = v19 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v7 = [v18 objectForKeyedSubscript:@"com.apple.commcenter"];
    if (!v7)
    {
      syslog(5, "%s: readParametersFromPlist: No Bundle ID com.apple.commcenter in the plist, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager readParametersFromPlist:]");
      goto LABEL_25;
    }

    syslog(5, "%s: Bundle ID com.apple.commcenter found in the plist, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager readParametersFromPlist:]");
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v7;
    v8 = [v4 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v8)
    {
      v9 = *v22;
      v10 = v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v4 objectForKeyedSubscript:v12];
          v14 = [v13 BOOLValue];

          v15 = v12;
          syslog(5, "%s: Value: %u for key: %s", "IPTTrialExperimentsManager", v14, [v12 cStringUsingEncoding:4]);
          if ([v12 isEqualToString:@"rcs_allow_libnetcore"])
          {
            BambiClient::setAllowLibnetcoreForRcs(v10, v14);
            v16 = 1;
          }

          else
          {
            v16 = 0;
          }

          if ([v12 isEqualToString:@"rcs_libnetcore_allow_tls_13"])
          {
            BambiClient::setAllowTls13ForRcs(v10, v14);
            v16 = 1;
          }

          if ([v12 isEqualToString:@"rcs_libnetcore_allow_pq_tls"])
          {
            BambiClient::setAllowTlsPQForRcs(v10, v14);
            v16 = 1;
          }

          syslog(5, "%s: stackConfigChanged: %u", "IPTTrialExperimentsManager", v16);
        }

        v8 = [v4 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = [v19 localizedDescription];
    v5 = v4;
    syslog(5, "%s: readParametersFromPlist: Error reading from plist file: %s, %s", "IPTTrialExperimentsManager", [v4 cStringUsingEncoding:4], "-[IptTrialExperimentsManager readParametersFromPlist:]");
  }

LABEL_25:
LABEL_26:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyRegisteredClientsForExperimentStart:(id)a3
{
  v5 = a3;
  v4 = [v5 absoluteString];
  syslog(5, "%s: Experiment Start: set parameters from plist at %s, %s", "IPTTrialExperimentsManager", [v4 cStringUsingEncoding:4], "-[IptTrialExperimentsManager notifyRegisteredClientsForExperimentStart:]");

  [(IptTrialExperimentsManager *)self readParametersFromPlist:v5];
}

- (void)notifyRegisteredClientsForExperimentEnd
{
  syslog(5, "%s: Experiment End: restore to default parameters %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager notifyRegisteredClientsForExperimentEnd]");

  [(IptTrialExperimentsManager *)self readParametersFromPlist:0];
}

- (void)updateTreatment
{
  [(TRIClient *)self->trialClient refresh];
  v3 = [(TRIClient *)self->trialClient experimentIdentifiersWithNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
  v21 = v3;
  if (!v3)
  {
    syslog(5, "%s: experimentIdentifiers nil. Experiment ended, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager updateTreatment]");
    [(IptTrialExperimentsManager *)self notifyRegisteredClientsForExperimentEnd];
    goto LABEL_14;
  }

  v4 = [v3 experimentId];
  v5 = [v4 cStringUsingEncoding:4];
  v6 = [v21 deploymentId];
  v7 = [v21 treatmentId];
  syslog(5, "%s: experimentIdentifiers are: experimentId: %s, deploymentId: %d, treatmentId: %s, %s", "IPTTrialExperimentsManager", v5, v6, [v7 cStringUsingEncoding:4], "-[IptTrialExperimentsManager updateTreatment]");

  v8 = [(TRIClient *)self->trialClient levelForFactor:@"SWDefinedParamPlist" withNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 fileValue];
    v11 = [v10 path];
    if (v11)
    {
      v12 = [v9 fileValue];
      v13 = [v12 path];
      v14 = [v13 length];

      if (v14)
      {
        v15 = MEMORY[0x1E695DFF8];
        v16 = [v9 fileValue];
        v17 = [v16 path];
        v18 = [v15 fileURLWithPath:v17];

        if (v18)
        {
          v19 = [v9 fileValue];
          v20 = [v19 path];
          syslog(5, "%s: activateTreatment: Trial Asset path: %s, %s", "IPTTrialExperimentsManager", [v20 cStringUsingEncoding:4], "-[IptTrialExperimentsManager updateTreatment]");

          [(IptTrialExperimentsManager *)self notifyRegisteredClientsForExperimentStart:v18];
        }

        else
        {
          syslog(5, "%s: activateTreatment: Invalid asset path in trial, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager updateTreatment]");
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    syslog(5, "%s: activateTreatment: Invalid Asset Path. Treatment ended. Clear trial plist, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager updateTreatment]");
    [(IptTrialExperimentsManager *)self notifyRegisteredClientsForExperimentEnd];
  }

  else
  {
    syslog(5, "%s: activateTreatment: Invalid Trial level, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager updateTreatment]");
  }

LABEL_13:

LABEL_14:
}

- (void)subscribeToTrial
{
  if (self->trialClient)
  {
    syslog(5, "%s: checkTreatmentUpdate: Subscribing to Trial, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager subscribeToTrial]");
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v3 = objc_autoreleasePoolPush();
    objc_initWeak(&location, self);
    trialClient = self->trialClient;
    v5 = [(IptTrialExperimentsManager *)self cellularProdExpQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__IptTrialExperimentsManager_subscribeToTrial__block_invoke;
    v7[3] = &unk_1E876A690;
    objc_copyWeak(&v8, &location);
    v7[4] = &v10;
    v6 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" queue:v5 usingBlock:v7];
    if ((v11[3] & 1) == 0)
    {
      syslog(5, "%s: checkTreatmentUpdate: trialCallbackReceived : NO, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager subscribeToTrial]");
      [(IptTrialExperimentsManager *)self updateTreatment];
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v3);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    syslog(5, "%s: checkTreatmentUpdate: Invalid Trial client, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager subscribeToTrial]");
  }
}

void __46__IptTrialExperimentsManager_subscribeToTrial__block_invoke(uint64_t a1)
{
  syslog(5, "%s: checkTreatmentUpdate: Trial Treatment Updated, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager subscribeToTrial]_block_invoke");
  syslog(5, "%s: checkTreatmentUpdate: trialCallbackReceived : YES, %s", "IPTTrialExperimentsManager", "[IptTrialExperimentsManager subscribeToTrial]_block_invoke");
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updateTreatment];
    *(*(*(a1 + 32) + 8) + 24) = 1;
    WeakRetained = v3;
  }
}

@end