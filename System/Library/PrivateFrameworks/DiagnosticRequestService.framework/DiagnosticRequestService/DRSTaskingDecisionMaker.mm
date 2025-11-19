@interface DRSTaskingDecisionMaker
+ (BOOL)passesPercentAccept:(double)a3;
- (BOOL)_configDoesPassTeamHysteresis:(id)a3 logTelemetry:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)reportToDecisionServer;
- (DRSTaskingDecisionMaker)initWithTimezone:(id)a3 limitingParameters:(id)a4 dbWorkingDirectoryPath:(id)a5 cloudKitHelper:(id)a6 enforceDate:(BOOL)a7 enforceBuild:(BOOL)a8 enforceSampling:(BOOL)a9 enforceTeamHysteresis:(BOOL)a10 enforceGlobalHysteresisAndCap:(BOOL)a11 allowRefereshLimitingParameters:(BOOL)a12 errorOut:(id *)a13;
- (id)_configsPassingOverallHysteresis:(id)a3 logTelemetry:(BOOL)a4;
- (id)_configsPassingSampling:(id)a3 logTelemetry:(BOOL)a4;
- (id)_hysteresisPredicate:(id)a3 config:(id)a4;
- (id)_teamTaskingsPassingBuild:(id)a3 logTelemetry:(BOOL)a4 allowWildcardBuild:(BOOL)a5;
- (id)_teamTaskingsPassingDate:(id)a3 logTelemetry:(BOOL)a4;
- (id)acceptedCancels:(id)a3;
- (void)_logConfigReceipt:(id)a3;
- (void)_persistReceivedMetadata:(id)a3;
- (void)_rejectTaskingMessageDueToDisabledState:(id)a3 logTelemetry:(BOOL)a4;
- (void)clientCompletedConfigUUID:(id)a3;
- (void)clientRejectsConfigUUID:(id)a3;
- (void)refreshLimitingParameters;
@end

@implementation DRSTaskingDecisionMaker

+ (BOOL)passesPercentAccept:(double)a3
{
  if (a3 >= 100.0)
  {
    return 1;
  }

  if (a3 <= 0.0)
  {
    return 0;
  }

  return a3 * 10000.0 >= arc4random_uniform(0xF4240u);
}

- (DRSTaskingDecisionMaker)initWithTimezone:(id)a3 limitingParameters:(id)a4 dbWorkingDirectoryPath:(id)a5 cloudKitHelper:(id)a6 enforceDate:(BOOL)a7 enforceBuild:(BOOL)a8 enforceSampling:(BOOL)a9 enforceTeamHysteresis:(BOOL)a10 enforceGlobalHysteresisAndCap:(BOOL)a11 allowRefereshLimitingParameters:(BOOL)a12 errorOut:(id *)a13
{
  v42 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  if (!v18)
  {
    v18 = +[DRSTaskingLimitingParameters defaultDeviceParameters];
  }

  v21 = v17;
  v22 = v21;
  if (v21)
  {
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  v22 = [MEMORY[0x277CBEBB0] localTimeZone];
  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_5:
  v37 = 0;
  v23 = [[DRSConfigPersistedStore alloc] initWithWorkingDirectory:v19 isReadOnly:0 cloudKitHelper:v20 errorOut:&v37];
  v24 = v37;
  v25 = v24;
  if (v23)
  {

    v25 = v23;
LABEL_9:
    v36.receiver = self;
    v36.super_class = DRSTaskingDecisionMaker;
    v26 = [(DRSTaskingDecisionMaker *)&v36 init];
    v27 = v26;
    if (v26)
    {
      objc_storeStrong(&v26->_deviceTimezone, v22);
      objc_storeStrong(&v27->_limitingParameters, v18);
      objc_storeStrong(&v27->_dbWorkingDirectoryPath, a5);
      v27->_enforceDate = a7;
      v27->_enforceBuild = a8;
      v27->_enforceSampling = a9;
      v27->_enforceTeamHysteresis = a10;
      v27->_enforceGlobalHysteresisAndCap = a11;
      objc_storeStrong(&v27->_configStore, v25);
      v28 = [(DRSTaskingDecisionMaker *)v27 configStore];

      if (!v28)
      {
        *&v27->_enforceTeamHysteresis = 0;
      }

      v27->_allowRefreshLimitingParameters = a12;
      objc_storeStrong(&v27->_cloudKitHelper, a6);
    }

    self = v27;
    v29 = self;
    goto LABEL_14;
  }

  v32 = DPLogHandle_TaskingDecisionMakerError();
  if (os_signpost_enabled(v32))
  {
    *buf = 138543618;
    v39 = v19;
    v40 = 2114;
    v41 = v25;
    _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingDecisionMakerInitFailure", "Failed to init with working directory: %{public}@ (Error: %{public}@)", buf, 0x16u);
  }

  if (a13)
  {
    v33 = v25;
    v29 = 0;
    *a13 = v25;
  }

  else
  {
    v29 = 0;
  }

LABEL_14:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v24 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(DRSTaskingDecisionMaker *)self enforceDate];
    if (v7 != [(DRSTaskingDecisionMaker *)v6 enforceDate])
    {
      goto LABEL_15;
    }

    v8 = [(DRSTaskingDecisionMaker *)self enforceSampling];
    if (v8 != [(DRSTaskingDecisionMaker *)v6 enforceSampling])
    {
      goto LABEL_15;
    }

    v9 = [(DRSTaskingDecisionMaker *)self enforceTeamHysteresis];
    if (v9 != [(DRSTaskingDecisionMaker *)v6 enforceTeamHysteresis])
    {
      goto LABEL_15;
    }

    v10 = [(DRSTaskingDecisionMaker *)self enforceGlobalHysteresisAndCap];
    if (v10 != [(DRSTaskingDecisionMaker *)v6 enforceGlobalHysteresisAndCap])
    {
      goto LABEL_15;
    }

    v11 = [(DRSTaskingDecisionMaker *)self dbWorkingDirectoryPath];
    v12 = [(DRSTaskingDecisionMaker *)v6 dbWorkingDirectoryPath];
    IsNil = _oneIsNil(v11, v12);

    if (IsNil)
    {
      goto LABEL_15;
    }

    v14 = [(DRSTaskingDecisionMaker *)self dbWorkingDirectoryPath];
    if (v14)
    {
      v15 = v14;
      v16 = [(DRSTaskingDecisionMaker *)self dbWorkingDirectoryPath];
      v17 = [(DRSTaskingDecisionMaker *)v6 dbWorkingDirectoryPath];
      v18 = [v16 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_15;
      }
    }

    v19 = [(DRSTaskingDecisionMaker *)v6 limitingParameters];
    v20 = [(DRSTaskingDecisionMaker *)self limitingParameters];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      v22 = [(DRSTaskingDecisionMaker *)self deviceTimezone];
      v23 = [(DRSTaskingDecisionMaker *)v6 deviceTimezone];
      v24 = [v22 isEqualToTimeZone:v23];
    }

    else
    {
LABEL_15:
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_persistReceivedMetadata:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DRSTaskingDecisionMaker *)self configStore];

  if (v5)
  {
    v6 = [(DRSTaskingDecisionMaker *)self configStore];
    v12 = 0;
    v7 = [v6 addConfigMetdata:v4 errorOut:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = DPLogHandle_TaskingDecisionMakerError();
      if (os_signpost_enabled(v9))
      {
        v10 = [v4 configUUID];
        *buf = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v8;
        _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetadataPersistanceFailure", "Failed to persist %{public}@ due to error %{public}@", buf, 0x16u);
      }
    }

    [(DRSTaskingDecisionMaker *)self _logConfigReceipt:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_logConfigReceipt:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 logTelemetry])
  {
    if ([v3 state])
    {
      if ([v3 state] == 2)
      {
        v4 = @"Applied";
      }

      else if ([v3 state] == 1)
      {
        v4 = @"WaitingToApply";
      }

      else
      {
        v4 = @"Unknown";
        if ([v3 state] == 3)
        {
          v5 = [v3 completionDescription];
          if (v5)
          {
            v4 = v5;
          }
        }
      }
    }

    else
    {
      v4 = @"Unknown";
    }

    v18[0] = kUUIDKey;
    v6 = [v3 configUUID];
    v7 = [v6 UUIDString];
    v19[0] = v7;
    v18[1] = kTeamIDKey;
    v8 = [v3 teamID];
    v18[2] = kConfigReceivedEventKey_ReceiptResult;
    v19[1] = v8;
    v19[2] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    DRSCoreAnalyticsSendEvent(kConfigReceivedEventName, v9);
    if ([v3 reportToDecisionServer])
    {
      v10 = +[DRSTaskingCloudKitHelper prodContainerHelper];
      v11 = [v3 teamID];
      v12 = [v3 configUUID];
      v13 = [v12 UUIDString];
      v14 = os_transaction_create();
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __45__DRSTaskingDecisionMaker__logConfigReceipt___block_invoke;
      v16[3] = &unk_27899F820;
      v17 = v3;
      [v10 reportTaskingConfigReceipt:v11 uuidString:v13 receiptResult:v4 transaction:v14 completionHandler:v16];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __45__DRSTaskingDecisionMaker__logConfigReceipt___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DPLogHandle_ConfigPersistedStoreError();
  if (os_signpost_enabled(v4))
  {
    v5 = [*(a1 + 32) configUUID];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DecisionMakerConfigReceiptTelemetryError", "Telemetry reporting for %{public}@ failed %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)reportToDecisionServer
{
  v2 = +[DRSSystemProfile sharedInstance];
  v3 = [v2 isInternal];

  return v3;
}

- (id)_teamTaskingsPassingDate:(id)a3 logTelemetry:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v6 teamTaskings];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__DRSTaskingDecisionMaker__teamTaskingsPassingDate_logTelemetry___block_invoke;
  v15[3] = &unk_27899F848;
  v15[4] = self;
  v16 = v8;
  v17 = v6;
  v19 = a4;
  v10 = v7;
  v18 = v10;
  v11 = v6;
  v12 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];

  if ([v10 count])
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __65__DRSTaskingDecisionMaker__teamTaskingsPassingDate_logTelemetry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (![*(a1 + 32) enforceDate])
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 40);
  v8 = [v6 config];
  v9 = [v8 endDate];
  v10 = [v7 compare:v9];

  if (v10 == -1)
  {
LABEL_6:
    [*(a1 + 56) addObject:v6];
  }

  else
  {
    v11 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v11))
    {
      v12 = [*(a1 + 48) messageUUID];
      v13 = [v12 UUIDString];
      v14 = [v6 config];
      v15 = [v14 endDate];
      v16 = [v15 description];
      v17 = [*(a1 + 40) description];
      *buf = 138544130;
      v28 = v5;
      v29 = 2114;
      v30 = v13;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectedConfig", "Rejecting TeamTasking team ID %{public}@ from TaskingMessage ID %{public}@ due to already being expired (%{public}@ (endDate) <= %{public}@ (current date))", buf, 0x2Au);
    }

    v18 = [DRSConfigMetadata alloc];
    v19 = [v6 config];
    v20 = [v19 configUUID];
    v21 = [*(a1 + 32) currentReceivedDate];
    v22 = *(a1 + 64);
    v23 = *(a1 + 40);
    BYTE1(v26) = [*(a1 + 32) reportToDecisionServer];
    LOBYTE(v26) = v22;
    v24 = [(DRSConfigMetadata *)v18 initWithTeamID:v5 configUUID:v20 state:3 completionType:1 receivedDate:v21 appliedDate:v23 completedDate:v23 completionDescription:@"Received after end date" config:0 logTelemetry:v26 reportToDecisionServer:?];

    [*(a1 + 32) _persistReceivedMetadata:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_teamTaskingsPassingBuild:(id)a3 logTelemetry:(BOOL)a4 allowWildcardBuild:(BOOL)a5
{
  v5 = a5;
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v50 = [MEMORY[0x277CBEAA8] date];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = v6;
  v52 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v52)
  {
    v51 = *v55;
    v48 = v8;
    v47 = v5;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v55 != v51)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        if (![(DRSTaskingDecisionMaker *)self enforceBuild])
        {
          goto LABEL_11;
        }

        if (v5)
        {
          v11 = [v10 config];
          v12 = [v11 build];
          v13 = [v12 isEqualToString:kDRConfigWildcardBuild];

          if (v13)
          {
            v14 = +[DRSSystemProfile sharedInstance];
            v15 = [v14 build];
            v16 = [v10 config];
            [v16 setBuild:v15];
          }
        }

        v17 = +[DRSSystemProfile sharedInstance];
        v18 = [v17 build];
        v19 = [v10 config];
        v20 = [v19 build];
        v21 = [v18 isEqualToString:v20];

        if ((v21 & 1) == 0)
        {
          v22 = DPLogHandle_TaskingDecisionMakerError();
          if (os_signpost_enabled(v22))
          {
            v46 = [v10 config];
            v23 = [v46 configUUID];
            v24 = [v10 teamID];
            v25 = [v10 config];
            v26 = [v25 build];
            v27 = +[DRSSystemProfile sharedInstance];
            [v27 build];
            v29 = v28 = v7;
            *buf = 138544130;
            v59 = v23;
            v60 = 2114;
            v61 = v24;
            v62 = 2114;
            v63 = v26;
            v64 = 2114;
            v65 = v29;
            _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectedConfig", "Rejecting config %{public}@ for Team ID %{public}@ due to mismatching build: %{public}@ vs. %{public}@ (expected)", buf, 0x2Au);

            v7 = v28;
          }

          v30 = MEMORY[0x277CCACA8];
          v31 = [v10 config];
          v32 = [v31 build];
          v33 = +[DRSSystemProfile sharedInstance];
          v34 = [v33 build];
          v35 = [v30 stringWithFormat:@"Config build did not match device: %@ vs. %@ (expected)", v32, v34];

          v36 = [DRSConfigMetadata alloc];
          v37 = [v10 teamID];
          v38 = [v10 config];
          v39 = [v38 configUUID];
          v40 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v45) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
          LOBYTE(v45) = a4;
          v41 = [DRSConfigMetadata initWithTeamID:v36 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:v37 completionType:v39 receivedDate:3 appliedDate:1 completedDate:v40 completionDescription:v50 config:v35 logTelemetry:0 reportToDecisionServer:v45];

          [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v41];
          v8 = v48;
          v5 = v47;
        }

        else
        {
LABEL_11:
          [v7 addObject:v10];
        }
      }

      v52 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v52);
  }

  if ([v7 count])
  {
    v42 = v7;
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)_configsPassingSampling:(id)a3 logTelemetry:(BOOL)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v62 = [MEMORY[0x277CBEAA8] date];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v58 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (!v8)
    {
      goto LABEL_26;
    }

    v9 = v8;
    v10 = *v68;
    v60 = v7;
    v64 = *v68;
    v65 = self;
    while (1)
    {
      v11 = 0;
      v61 = v9;
      do
      {
        if (*v68 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v67 + 1) + 8 * v11);
        if (![(DRSTaskingDecisionMaker *)self enforceSampling])
        {
          goto LABEL_16;
        }

        v13 = +[DRSSystemProfile sharedInstance];
        v14 = [v13 deviceModel];
        v15 = [(DRSTaskingDecisionMaker *)self deviceTimezone];
        v16 = [v15 abbreviation];
        v17 = [v12 samplingParametersForHWModel:v14 timezoneAbbreviation:v16];

        v18 = DPLogHandle_TaskingDecisionMaker();
        if (os_signpost_enabled(v18))
        {
          v19 = [v12 config];
          v20 = [v19 configUUID];
          v21 = [v12 jsonDictRepresentationAbbreviated];
          *buf = 138543618;
          v72 = v20;
          v73 = 2114;
          v74 = v21;
          _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamSamplingEvaluation", "Evaluating sampling for: %{public}@:\n%{public}@", buf, 0x16u);
        }

        v22 = DPLogHandle_TaskingDecisionMaker();
        v23 = os_signpost_enabled(v22);
        if (v17)
        {
          if (v23)
          {
            v59 = [v12 config];
            v24 = [v59 configUUID];
            v25 = [v12 teamID];
            [v17 samplingPercentage];
            v27 = v26;
            v28 = +[DRSSystemProfile sharedInstance];
            v29 = [v28 deviceModel];
            v30 = [(DRSTaskingDecisionMaker *)self deviceTimezone];
            v31 = [v30 abbreviation];
            *buf = 138544386;
            v72 = v24;
            v73 = 2114;
            v74 = v25;
            v75 = 2050;
            v76 = v27;
            v77 = 2114;
            v78 = v29;
            v79 = 2114;
            v80 = v31;
            _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamConfigSampling", "%{public}@ for team %{public}@: Got sampling percentage of %{public}.2f for HW model %{public}@, TZ: %{public}@", buf, 0x34u);

            v7 = v60;
            self = v65;

            v9 = v61;
          }

          [v17 samplingPercentage];
          if ([DRSTaskingDecisionMaker passesPercentAccept:?])
          {

            v10 = v64;
LABEL_16:
            v17 = [v12 config];
            [v7 addObject:v17];
            goto LABEL_24;
          }

          v41 = DPLogHandle_TaskingDecisionMaker();
          if (os_signpost_enabled(v41))
          {
            v42 = [v12 config];
            v43 = [v42 configUUID];
            v44 = [v12 teamID];
            [v17 samplingPercentage];
            *buf = 138543874;
            v72 = v43;
            v73 = 2114;
            v74 = v44;
            v75 = 2048;
            v76 = v45;
            _os_signpost_emit_with_name_impl(&dword_232906000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ for team ID %{public}@ due to failed roll (%f%% chance of success)", buf, 0x20u);
          }

          v46 = MEMORY[0x277CCACA8];
          [v17 samplingPercentage];
          v40 = [v46 stringWithFormat:@"Failed roll (%f%% chance of success)", v47];
          v48 = [DRSConfigMetadata alloc];
          v49 = [v12 teamID];
          v50 = [v12 config];
          v51 = [v50 configUUID];
          v52 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v57) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
          LOBYTE(v57) = a4;
          v53 = [DRSConfigMetadata initWithTeamID:v48 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:v49 completionType:v51 receivedDate:3 appliedDate:1 completedDate:v52 completionDescription:v62 config:v40 logTelemetry:0 reportToDecisionServer:v57];

          [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v53];
          v7 = v60;
          v9 = v61;
        }

        else
        {
          if (v23)
          {
            v32 = [v12 config];
            v33 = [v32 configUUID];
            v34 = [v12 teamID];
            *buf = 138543618;
            v72 = v33;
            v73 = 2114;
            v74 = v34;
            _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ for team %{public}@ to missing sampling parameters", buf, 0x16u);
          }

          v35 = [DRSConfigMetadata alloc];
          v36 = [v12 teamID];
          v37 = [v12 config];
          v38 = [v37 configUUID];
          v39 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v57) = [(DRSTaskingDecisionMaker *)v65 reportToDecisionServer];
          LOBYTE(v57) = a4;
          v40 = [DRSConfigMetadata initWithTeamID:v35 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:v36 completionType:v38 receivedDate:3 appliedDate:1 completedDate:v39 completionDescription:v62 config:@"No applicable sampling parameters" logTelemetry:0 reportToDecisionServer:v57];

          self = v65;
          [(DRSTaskingDecisionMaker *)v65 _persistReceivedMetadata:v40];
        }

        v10 = v64;
LABEL_24:

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
      if (!v9)
      {
LABEL_26:

        if ([v7 count])
        {
          v54 = v7;
        }

        else
        {
          v54 = 0;
        }

        v6 = v58;
        goto LABEL_31;
      }
    }
  }

  v54 = 0;
LABEL_31:

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (id)_hysteresisPredicate:(id)a3 config:(id)a4
{
  v6 = a3;
  if (([a4 skippedHysteresis] & 1) != 0 || !-[DRSTaskingDecisionMaker enforceTeamHysteresis](self, "enforceTeamHysteresis"))
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"completionType == %llu", 4097];
  }

  else
  {
    v7 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:v6];
  }

  v8 = v7;

  return v8;
}

- (BOOL)_configDoesPassTeamHysteresis:(id)a3 logTelemetry:(BOOL)a4
{
  v52[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = MEMORY[0x277CCAC30];
  v8 = [v5 teamID];
  v9 = [v7 predicateWithFormat:@"teamID == %@", v8];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [(DRSTaskingDecisionMaker *)self limitingParameters];
  [v11 perTeamTaskingHysteresisInterval];
  v13 = -v12;
  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = [v10 dateWithTimeInterval:v14 sinceDate:v13];

  v16 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:v15 config:v5];
  v17 = MEMORY[0x277CCA920];
  v52[0] = v9;
  v52[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = [(DRSTaskingDecisionMaker *)self configStore];
  v47 = 0;
  v21 = [v20 metadataCountForPredicate:v19 fetchLimit:1 withErrorOut:&v47];
  v22 = v47;

  if (v22)
  {
    v43 = v16;
    v44 = v15;
    v45 = v9;
    v23 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v23))
    {
      v24 = [v5 configUUID];
      *buf = 138543618;
      v49 = v24;
      v50 = 2114;
      v51 = v22;
      _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PerTeamHysteresisError", "Rejecting config %{public}@ due to team hysteresis error %{public}@", buf, 0x16u);
    }

    v25 = MEMORY[0x277CCACA8];
    v26 = [v22 localizedDescription];
    v27 = [v25 stringWithFormat:@"Per-team hysteresis error %@", v26];

    v28 = [DRSConfigMetadata alloc];
    v29 = [v5 teamID];
    v30 = [v5 configUUID];
    v31 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
    BYTE1(v42) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
    LOBYTE(v42) = a4;
    v32 = [(DRSConfigMetadata *)v28 initWithTeamID:v29 configUUID:v30 state:3 completionType:1 receivedDate:v31 appliedDate:v6 completedDate:v6 completionDescription:v27 config:0 logTelemetry:v42 reportToDecisionServer:?];

    [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v32];
  }

  else
  {
    if (!v21)
    {
      v39 = 1;
      goto LABEL_10;
    }

    v43 = v16;
    v44 = v15;
    v45 = v9;
    v33 = DPLogHandle_TaskingDecisionMaker();
    if (os_signpost_enabled(v33))
    {
      v34 = [v5 configUUID];
      *buf = 138543618;
      v49 = v34;
      v50 = 2048;
      v51 = v21;
      _os_signpost_emit_with_name_impl(&dword_232906000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ due to team hysteresis (matching count of %lu)", buf, 0x16u);
    }

    v35 = [DRSConfigMetadata alloc];
    v36 = [v5 teamID];
    v37 = [v5 configUUID];
    v38 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
    BYTE1(v42) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
    LOBYTE(v42) = a4;
    v27 = [(DRSConfigMetadata *)v35 initWithTeamID:v36 configUUID:v37 state:3 completionType:1 receivedDate:v38 appliedDate:v6 completedDate:v6 completionDescription:@"Rejected by per-team hysteresis" config:0 logTelemetry:v42 reportToDecisionServer:?];

    [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v27];
  }

  v39 = 0;
  v15 = v44;
  v9 = v45;
  v16 = v43;
LABEL_10:

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (id)_configsPassingOverallHysteresis:(id)a3 logTelemetry:(BOOL)a4
{
  v117 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(DRSTaskingDecisionMaker *)self enforceGlobalHysteresisAndCap])
  {
    v83 = v5;
    v91 = [MEMORY[0x277CBEAA8] date];
    v6 = MEMORY[0x277CBEAA8];
    v7 = [(DRSTaskingDecisionMaker *)self limitingParameters];
    [v7 taskingHysteresisInterval];
    v9 = -v8;
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v6 dateWithTimeInterval:v10 sinceDate:v9];

    v12 = [(DRSTaskingDecisionMaker *)self configStore];
    v82 = v11;
    v13 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:v11];
    v14 = [(DRSTaskingDecisionMaker *)self limitingParameters];
    v108 = 0;
    v15 = [v12 metadataCountForPredicate:v13 fetchLimit:objc_msgSend(v14 withErrorOut:{"acceptedConfigCountCap"), &v108}];
    v16 = v108;

    v89 = v16;
    if (v16)
    {
      v17 = DPLogHandle_TaskingDecisionMakerError();
      if (os_signpost_enabled(v17))
      {
        *buf = 138543362;
        v110 = v16;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverallHysteresisError", "Rejecting all configs due to overall hysteresis error %{public}@", buf, 0xCu);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = v83;
      v18 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v105;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v105 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v104 + 1) + 8 * i);
            v23 = MEMORY[0x277CCACA8];
            v24 = [v89 localizedDescription];
            v25 = [v23 stringWithFormat:@"Overall hysteresis error %@", v24];

            v26 = [DRSConfigMetadata alloc];
            v27 = [v22 teamID];
            v28 = [v22 configUUID];
            v29 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
            BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
            LOBYTE(v81) = a4;
            v30 = [DRSConfigMetadata initWithTeamID:v26 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:v27 completionType:v28 receivedDate:3 appliedDate:1 completedDate:v29 completionDescription:v91 config:v25 logTelemetry:0 reportToDecisionServer:v81];

            [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v30];
          }

          v19 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
        }

        while (v19);
      }

      v31 = 0;
      v32 = v82;
      v5 = v83;
    }

    else
    {
      v33 = [(DRSTaskingDecisionMaker *)self limitingParameters];
      v34 = [v33 acceptedConfigCountCap];

      if (v15 >= v34)
      {
        v64 = [MEMORY[0x277CBEB18] array];
        v65 = DPLogHandle_TaskingDecisionMaker();
        if (os_signpost_enabled(v65))
        {
          v66 = [(DRSTaskingDecisionMaker *)self limitingParameters];
          v67 = [v66 acceptedConfigCountCap];
          *buf = 134217984;
          v110 = v67;
          _os_signpost_emit_with_name_impl(&dword_232906000, v65, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverallHysteresisRejection", "Rejecting all configs due to being at or over the accepted config count cap %lu", buf, 0xCu);
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v68 = v83;
        v69 = [v68 countByEnumeratingWithState:&v100 objects:v115 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v101;
          do
          {
            for (j = 0; j != v70; ++j)
            {
              if (*v101 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v100 + 1) + 8 * j);
              if ([v73 skippedHysteresis])
              {
                [v64 addObject:v73];
              }

              else
              {
                v74 = [DRSConfigMetadata alloc];
                v75 = [v73 teamID];
                v76 = [v73 configUUID];
                v77 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
                BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
                LOBYTE(v81) = a4;
                v78 = [DRSConfigMetadata initWithTeamID:v74 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:v75 completionType:v76 receivedDate:3 appliedDate:1 completedDate:v77 completionDescription:v91 config:@"No open overall slots" logTelemetry:0 reportToDecisionServer:v81];

                [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v78];
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v100 objects:v115 count:16];
          }

          while (v70);
        }

        if ([v64 count])
        {
          v31 = v64;
        }

        else
        {
          v31 = 0;
        }

        v32 = v82;
        v5 = v83;
      }

      else
      {
        v35 = [(DRSTaskingDecisionMaker *)self limitingParameters];
        v36 = [v35 acceptedConfigCountCap];

        v5 = v83;
        v86 = v36 - v15;
        if (v36 - v15 >= [v83 count])
        {
          v31 = v83;
          v32 = v82;
        }

        else
        {
          v37 = [v83 mutableCopy];
          v38 = [MEMORY[0x277CBEB18] array];
          if (v36 != v15)
          {
            v39 = v36 - v15;
            do
            {
              v40 = arc4random_uniform([v37 count]);
              v41 = [v37 objectAtIndexedSubscript:v40];
              [v38 addObject:v41];
              [v37 removeObjectAtIndex:v40];

              --v39;
            }

            while (v39);
          }

          v85 = v38;
          v42 = [MEMORY[0x277CBEB18] array];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v43 = v37;
          v44 = [v43 countByEnumeratingWithState:&v96 objects:v114 count:16];
          v84 = v42;
          if (v44)
          {
            v45 = v44;
            v46 = *v97;
            do
            {
              for (k = 0; k != v45; ++k)
              {
                if (*v97 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v96 + 1) + 8 * k);
                if ([v48 skippedHysteresis])
                {
                  [v42 addObject:v48];
                  [v38 addObject:v48];
                  v49 = DPLogHandle_TaskingDecisionMaker();
                  if (os_signpost_enabled(v49))
                  {
                    v50 = [v48 configUUID];
                    *buf = 138543362;
                    v110 = v50;
                    _os_signpost_emit_with_name_impl(&dword_232906000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigAcceptedBySkippingHysteresis", "Accepted %{public}@ due to 'skipHysteresis'", buf, 0xCu);
                  }

                  v42 = v84;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v96 objects:v114 count:16];
            }

            while (v45);
          }

          if ([v42 count])
          {
            [v43 removeObjectsInArray:v42];
          }

          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not selected for one of the %llu open slots", v86];
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          obja = v43;
          v52 = [obja countByEnumeratingWithState:&v92 objects:v113 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v93;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                if (*v93 != v54)
                {
                  objc_enumerationMutation(obja);
                }

                v56 = *(*(&v92 + 1) + 8 * m);
                v57 = DPLogHandle_TaskingDecisionMaker();
                if (os_signpost_enabled(v57))
                {
                  v58 = [v56 configUUID];
                  *buf = 138543618;
                  v110 = v58;
                  v111 = 2048;
                  v112 = v86;
                  _os_signpost_emit_with_name_impl(&dword_232906000, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverallHysteresisRejection", "Rejected %{public}@ due to not being picked for one of the %llu open slots", buf, 0x16u);
                }

                v59 = [DRSConfigMetadata alloc];
                v60 = [v56 teamID];
                v61 = [v56 configUUID];
                v62 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
                BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
                LOBYTE(v81) = a4;
                v63 = [DRSConfigMetadata initWithTeamID:v59 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:v60 completionType:v61 receivedDate:3 appliedDate:1 completedDate:v62 completionDescription:v91 config:v51 logTelemetry:0 reportToDecisionServer:v81];

                [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v63];
              }

              v53 = [obja countByEnumeratingWithState:&v92 objects:v113 count:16];
            }

            while (v53);
          }

          v32 = v82;
          v5 = v83;
          v31 = v85;
        }
      }
    }
  }

  else
  {
    v31 = v5;
  }

  v79 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)_rejectTaskingMessageDueToDisabledState:(id)a3 logTelemetry:(BOOL)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 date];
  v9 = [v7 teamTaskings];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__DRSTaskingDecisionMaker__rejectTaskingMessageDueToDisabledState_logTelemetry___block_invoke;
  v11[3] = &unk_27899F870;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v10 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __80__DRSTaskingDecisionMaker__rejectTaskingMessageDueToDisabledState_logTelemetry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = DPLogHandle_TaskingDecisionMaker();
  if (os_signpost_enabled(v7))
  {
    v8 = [v5 config];
    v9 = [v8 configUUID];
    *buf = 138543362;
    v20 = v9;
    _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectingConfig", "Decision maker is disabled (active config cap is 0). Rejecting config %{public}@", buf, 0xCu);
  }

  v10 = [DRSConfigMetadata alloc];
  v11 = [v5 config];
  v12 = [v11 configUUID];
  v13 = [*(a1 + 32) currentReceivedDate];
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  BYTE1(v18) = [*(a1 + 32) reportToDecisionServer];
  LOBYTE(v18) = v14;
  v16 = [(DRSConfigMetadata *)v10 initWithTeamID:v6 configUUID:v12 state:3 completionType:2 receivedDate:v13 appliedDate:v15 completedDate:v15 completionDescription:@"Tasking is disabled" config:0 logTelemetry:v18 reportToDecisionServer:?];

  [*(a1 + 32) _persistReceivedMetadata:v16];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)refreshLimitingParameters
{
  if ([(DRSTaskingDecisionMaker *)self allowRefreshLimitingParameters])
  {
    v3 = +[DRSTaskingLimitingParameters defaultDeviceParameters];
    limitingParameters = self->_limitingParameters;
    self->_limitingParameters = v3;
  }
}

- (id)acceptedCancels:(id)a3
{
  v4 = a3;
  v5 = [(DRSTaskingDecisionMaker *)self configStore];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = MEMORY[0x277CCACA8];
    v9 = [v4 messageUUID];
    v10 = [v9 UUIDString];
    v11 = [v8 stringWithFormat:@"Cancelled by cancel tasking message %@", v10];

    v12 = [v4 perTeamCancelledConfigUUIDs];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__DRSTaskingDecisionMaker_acceptedCancels___block_invoke;
    v18[3] = &unk_27899F898;
    v18[4] = self;
    v19 = v7;
    v20 = v11;
    v21 = v4;
    v13 = v6;
    v22 = v13;
    v14 = v11;
    v15 = v7;
    [v12 enumerateKeysAndObjectsUsingBlock:v18];

    if ([v13 count])
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = [v4 perTeamCancelledConfigUUIDs];
  }

  return v16;
}

void __43__DRSTaskingDecisionMaker_acceptedCancels___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v30 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v34 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v33 + 1) + 8 * v12);
      v14 = [*(a1 + 32) configStore];
      v32 = 0;
      v15 = [v14 configMetadataForUUID:v13 errorOut:&v32];
      v16 = v32;

      if (v16)
      {
        break;
      }

      if ([v15 state]== 3)
      {
        v17 = DPLogHandle_TaskingDecisionMaker();
        if (os_signpost_enabled(v17))
        {
          *buf = 138543362;
          v38 = v13;
          _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigAlreadyCompleted", "Config %{public}@ already completed", buf, 0xCu);
        }
      }

      else
      {

        v18 = [*(a1 + 32) configStore];
        v19 = *(a1 + 40);
        v20 = *(a1 + 48);
        v31 = 0;
        v21 = [v18 completeConfigWithUUID:v13 completedDate:v19 completionType:8195 completionDescription:v20 errorOut:&v31];
        v15 = v31;

        if ((v21 & 1) == 0)
        {
          *a4 = 1;
          v26 = DPLogHandle_TaskingDecisionMakerError();
          if (os_signpost_enabled(v26))
          {
            v27 = [v15 localizedDescription];
            *buf = 138543618;
            v38 = v13;
            v39 = 2114;
            v40 = v27;
            _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelFailed", "Failed to cancel %{public}@ to error: %{public}@", buf, 0x16u);
          }

          v16 = v15;
LABEL_25:

          goto LABEL_26;
        }

        v22 = DPLogHandle_TaskingDecisionMaker();
        if (os_signpost_enabled(v22))
        {
          v23 = [*(a1 + 56) messageUUID];
          *buf = 138543874;
          v38 = v13;
          v39 = 2114;
          v40 = v30;
          v41 = 2114;
          v42 = v23;
          _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelConfig", "Cancelled %{public}@ (teamID %{public}@) due to cancel message %{public}@", buf, 0x20u);
        }

        [v7 addObject:v13];
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    *a4 = 1;
    v24 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v24))
    {
      v25 = [v16 localizedDescription];
      *buf = 138543618;
      v38 = v13;
      v39 = 2114;
      v40 = v25;
      _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptedCancelsFailure", "Lookup of %{public}@ failed due to error: %{public}@", buf, 0x16u);
    }

    v26 = v15;
    goto LABEL_25;
  }

LABEL_17:

  if ([v7 count])
  {
    [*(a1 + 64) setObject:v7 forKeyedSubscript:v30];
  }

LABEL_26:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)clientCompletedConfigUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DRSTaskingDecisionMaker *)self configStore];
  v6 = [MEMORY[0x277CBEAA8] date];
  v14 = 0;
  v7 = [v5 completeConfigWithUUID:v4 completedDate:v6 completionType:8196 completionDescription:@"Completed by client" errorOut:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v9 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v9))
    {
      v10 = [v8 localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138543618;
      v16 = v4;
      v17 = 2114;
      v18 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletionFailed", "Failed to complete config UUID %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clientRejectsConfigUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DRSTaskingDecisionMaker *)self configStore];
  v6 = [MEMORY[0x277CBEAA8] date];
  v14 = 0;
  v7 = [v5 completeConfigWithUUID:v4 completedDate:v6 completionType:1 completionDescription:@"Rejected by client" errorOut:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v9 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v9))
    {
      v10 = [v8 localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138543618;
      v16 = v4;
      v17 = 2114;
      v18 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectionFailed", "Failed to reject config UUID %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end