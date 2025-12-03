@interface DRSTaskingDecisionMaker
+ (BOOL)passesPercentAccept:(double)accept;
- (BOOL)_configDoesPassTeamHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry;
- (BOOL)isEqual:(id)equal;
- (BOOL)reportToDecisionServer;
- (DRSTaskingDecisionMaker)initWithTimezone:(id)timezone limitingParameters:(id)parameters dbWorkingDirectoryPath:(id)path cloudKitHelper:(id)helper enforceDate:(BOOL)date enforceBuild:(BOOL)build enforceSampling:(BOOL)sampling enforceTeamHysteresis:(BOOL)self0 enforceGlobalHysteresisAndCap:(BOOL)self1 allowRefereshLimitingParameters:(BOOL)self2 errorOut:(id *)self3;
- (id)_configsPassingOverallHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry;
- (id)_configsPassingSampling:(id)sampling logTelemetry:(BOOL)telemetry;
- (id)_hysteresisPredicate:(id)predicate config:(id)config;
- (id)_teamTaskingsPassingBuild:(id)build logTelemetry:(BOOL)telemetry allowWildcardBuild:(BOOL)wildcardBuild;
- (id)_teamTaskingsPassingDate:(id)date logTelemetry:(BOOL)telemetry;
- (id)acceptedCancels:(id)cancels;
- (void)_logConfigReceipt:(id)receipt;
- (void)_persistReceivedMetadata:(id)metadata;
- (void)_rejectTaskingMessageDueToDisabledState:(id)state logTelemetry:(BOOL)telemetry;
- (void)clientCompletedConfigUUID:(id)d;
- (void)clientRejectsConfigUUID:(id)d;
- (void)refreshLimitingParameters;
@end

@implementation DRSTaskingDecisionMaker

+ (BOOL)passesPercentAccept:(double)accept
{
  if (accept >= 100.0)
  {
    return 1;
  }

  if (accept <= 0.0)
  {
    return 0;
  }

  return accept * 10000.0 >= arc4random_uniform(0xF4240u);
}

- (DRSTaskingDecisionMaker)initWithTimezone:(id)timezone limitingParameters:(id)parameters dbWorkingDirectoryPath:(id)path cloudKitHelper:(id)helper enforceDate:(BOOL)date enforceBuild:(BOOL)build enforceSampling:(BOOL)sampling enforceTeamHysteresis:(BOOL)self0 enforceGlobalHysteresisAndCap:(BOOL)self1 allowRefereshLimitingParameters:(BOOL)self2 errorOut:(id *)self3
{
  v42 = *MEMORY[0x277D85DE8];
  timezoneCopy = timezone;
  parametersCopy = parameters;
  pathCopy = path;
  helperCopy = helper;
  if (!parametersCopy)
  {
    parametersCopy = +[DRSTaskingLimitingParameters defaultDeviceParameters];
  }

  v21 = timezoneCopy;
  localTimeZone = v21;
  if (v21)
  {
    if (pathCopy)
    {
      goto LABEL_5;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  if (!pathCopy)
  {
    goto LABEL_8;
  }

LABEL_5:
  v37 = 0;
  v23 = [[DRSConfigPersistedStore alloc] initWithWorkingDirectory:pathCopy isReadOnly:0 cloudKitHelper:helperCopy errorOut:&v37];
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
      objc_storeStrong(&v26->_deviceTimezone, localTimeZone);
      objc_storeStrong(&v27->_limitingParameters, parametersCopy);
      objc_storeStrong(&v27->_dbWorkingDirectoryPath, path);
      v27->_enforceDate = date;
      v27->_enforceBuild = build;
      v27->_enforceSampling = sampling;
      v27->_enforceTeamHysteresis = hysteresis;
      v27->_enforceGlobalHysteresisAndCap = cap;
      objc_storeStrong(&v27->_configStore, v25);
      configStore = [(DRSTaskingDecisionMaker *)v27 configStore];

      if (!configStore)
      {
        *&v27->_enforceTeamHysteresis = 0;
      }

      v27->_allowRefreshLimitingParameters = limitingParameters;
      objc_storeStrong(&v27->_cloudKitHelper, helper);
    }

    self = v27;
    selfCopy = self;
    goto LABEL_14;
  }

  v32 = DPLogHandle_TaskingDecisionMakerError();
  if (os_signpost_enabled(v32))
  {
    *buf = 138543618;
    v39 = pathCopy;
    v40 = 2114;
    v41 = v25;
    _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingDecisionMakerInitFailure", "Failed to init with working directory: %{public}@ (Error: %{public}@)", buf, 0x16u);
  }

  if (out)
  {
    v33 = v25;
    selfCopy = 0;
    *out = v25;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_14:

  v30 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v24 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    enforceDate = [(DRSTaskingDecisionMaker *)self enforceDate];
    if (enforceDate != [(DRSTaskingDecisionMaker *)v6 enforceDate])
    {
      goto LABEL_15;
    }

    enforceSampling = [(DRSTaskingDecisionMaker *)self enforceSampling];
    if (enforceSampling != [(DRSTaskingDecisionMaker *)v6 enforceSampling])
    {
      goto LABEL_15;
    }

    enforceTeamHysteresis = [(DRSTaskingDecisionMaker *)self enforceTeamHysteresis];
    if (enforceTeamHysteresis != [(DRSTaskingDecisionMaker *)v6 enforceTeamHysteresis])
    {
      goto LABEL_15;
    }

    enforceGlobalHysteresisAndCap = [(DRSTaskingDecisionMaker *)self enforceGlobalHysteresisAndCap];
    if (enforceGlobalHysteresisAndCap != [(DRSTaskingDecisionMaker *)v6 enforceGlobalHysteresisAndCap])
    {
      goto LABEL_15;
    }

    dbWorkingDirectoryPath = [(DRSTaskingDecisionMaker *)self dbWorkingDirectoryPath];
    dbWorkingDirectoryPath2 = [(DRSTaskingDecisionMaker *)v6 dbWorkingDirectoryPath];
    IsNil = _oneIsNil(dbWorkingDirectoryPath, dbWorkingDirectoryPath2);

    if (IsNil)
    {
      goto LABEL_15;
    }

    dbWorkingDirectoryPath3 = [(DRSTaskingDecisionMaker *)self dbWorkingDirectoryPath];
    if (dbWorkingDirectoryPath3)
    {
      v15 = dbWorkingDirectoryPath3;
      dbWorkingDirectoryPath4 = [(DRSTaskingDecisionMaker *)self dbWorkingDirectoryPath];
      dbWorkingDirectoryPath5 = [(DRSTaskingDecisionMaker *)v6 dbWorkingDirectoryPath];
      v18 = [dbWorkingDirectoryPath4 isEqualToString:dbWorkingDirectoryPath5];

      if (!v18)
      {
        goto LABEL_15;
      }
    }

    limitingParameters = [(DRSTaskingDecisionMaker *)v6 limitingParameters];
    limitingParameters2 = [(DRSTaskingDecisionMaker *)self limitingParameters];
    v21 = [limitingParameters isEqual:limitingParameters2];

    if (v21)
    {
      deviceTimezone = [(DRSTaskingDecisionMaker *)self deviceTimezone];
      deviceTimezone2 = [(DRSTaskingDecisionMaker *)v6 deviceTimezone];
      v24 = [deviceTimezone isEqualToTimeZone:deviceTimezone2];
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

- (void)_persistReceivedMetadata:(id)metadata
{
  v17 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];

  if (configStore)
  {
    configStore2 = [(DRSTaskingDecisionMaker *)self configStore];
    v12 = 0;
    v7 = [configStore2 addConfigMetdata:metadataCopy errorOut:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = DPLogHandle_TaskingDecisionMakerError();
      if (os_signpost_enabled(v9))
      {
        configUUID = [metadataCopy configUUID];
        *buf = 138543618;
        v14 = configUUID;
        v15 = 2114;
        v16 = v8;
        _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetadataPersistanceFailure", "Failed to persist %{public}@ due to error %{public}@", buf, 0x16u);
      }
    }

    [(DRSTaskingDecisionMaker *)self _logConfigReceipt:metadataCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_logConfigReceipt:(id)receipt
{
  v19[3] = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  if ([receiptCopy logTelemetry])
  {
    if ([receiptCopy state])
    {
      if ([receiptCopy state] == 2)
      {
        v4 = @"Applied";
      }

      else if ([receiptCopy state] == 1)
      {
        v4 = @"WaitingToApply";
      }

      else
      {
        v4 = @"Unknown";
        if ([receiptCopy state] == 3)
        {
          completionDescription = [receiptCopy completionDescription];
          if (completionDescription)
          {
            v4 = completionDescription;
          }
        }
      }
    }

    else
    {
      v4 = @"Unknown";
    }

    v18[0] = kUUIDKey;
    configUUID = [receiptCopy configUUID];
    uUIDString = [configUUID UUIDString];
    v19[0] = uUIDString;
    v18[1] = kTeamIDKey;
    teamID = [receiptCopy teamID];
    v18[2] = kConfigReceivedEventKey_ReceiptResult;
    v19[1] = teamID;
    v19[2] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    DRSCoreAnalyticsSendEvent(kConfigReceivedEventName, v9);
    if ([receiptCopy reportToDecisionServer])
    {
      v10 = +[DRSTaskingCloudKitHelper prodContainerHelper];
      teamID2 = [receiptCopy teamID];
      configUUID2 = [receiptCopy configUUID];
      uUIDString2 = [configUUID2 UUIDString];
      v14 = os_transaction_create();
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __45__DRSTaskingDecisionMaker__logConfigReceipt___block_invoke;
      v16[3] = &unk_27899F820;
      v17 = receiptCopy;
      [v10 reportTaskingConfigReceipt:teamID2 uuidString:uUIDString2 receiptResult:v4 transaction:v14 completionHandler:v16];
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
  isInternal = [v2 isInternal];

  return isInternal;
}

- (id)_teamTaskingsPassingDate:(id)date logTelemetry:(BOOL)telemetry
{
  dateCopy = date;
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  teamTaskings = [dateCopy teamTaskings];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__DRSTaskingDecisionMaker__teamTaskingsPassingDate_logTelemetry___block_invoke;
  v15[3] = &unk_27899F848;
  v15[4] = self;
  v16 = date;
  v17 = dateCopy;
  telemetryCopy = telemetry;
  v10 = array;
  v18 = v10;
  v11 = dateCopy;
  v12 = date;
  [teamTaskings enumerateKeysAndObjectsUsingBlock:v15];

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

- (id)_teamTaskingsPassingBuild:(id)build logTelemetry:(BOOL)telemetry allowWildcardBuild:(BOOL)wildcardBuild
{
  wildcardBuildCopy = wildcardBuild;
  v67 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = buildCopy;
  v52 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v52)
  {
    v51 = *v55;
    v48 = v8;
    v47 = wildcardBuildCopy;
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

        if (wildcardBuildCopy)
        {
          config = [v10 config];
          build = [config build];
          v13 = [build isEqualToString:kDRConfigWildcardBuild];

          if (v13)
          {
            v14 = +[DRSSystemProfile sharedInstance];
            build2 = [v14 build];
            config2 = [v10 config];
            [config2 setBuild:build2];
          }
        }

        v17 = +[DRSSystemProfile sharedInstance];
        build3 = [v17 build];
        config3 = [v10 config];
        build4 = [config3 build];
        v21 = [build3 isEqualToString:build4];

        if ((v21 & 1) == 0)
        {
          v22 = DPLogHandle_TaskingDecisionMakerError();
          if (os_signpost_enabled(v22))
          {
            config4 = [v10 config];
            configUUID = [config4 configUUID];
            teamID = [v10 teamID];
            config5 = [v10 config];
            build5 = [config5 build];
            v27 = +[DRSSystemProfile sharedInstance];
            [v27 build];
            v29 = v28 = array;
            *buf = 138544130;
            v59 = configUUID;
            v60 = 2114;
            v61 = teamID;
            v62 = 2114;
            v63 = build5;
            v64 = 2114;
            v65 = v29;
            _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectedConfig", "Rejecting config %{public}@ for Team ID %{public}@ due to mismatching build: %{public}@ vs. %{public}@ (expected)", buf, 0x2Au);

            array = v28;
          }

          v30 = MEMORY[0x277CCACA8];
          config6 = [v10 config];
          build6 = [config6 build];
          v33 = +[DRSSystemProfile sharedInstance];
          build7 = [v33 build];
          v35 = [v30 stringWithFormat:@"Config build did not match device: %@ vs. %@ (expected)", build6, build7];

          v36 = [DRSConfigMetadata alloc];
          teamID2 = [v10 teamID];
          config7 = [v10 config];
          configUUID2 = [config7 configUUID];
          currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v45) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
          LOBYTE(v45) = telemetry;
          v41 = [DRSConfigMetadata initWithTeamID:v36 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID2 completionType:configUUID2 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate completionDescription:date config:v35 logTelemetry:0 reportToDecisionServer:v45];

          [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v41];
          v8 = v48;
          wildcardBuildCopy = v47;
        }

        else
        {
LABEL_11:
          [array addObject:v10];
        }
      }

      v52 = [v8 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v52);
  }

  if ([array count])
  {
    v42 = array;
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)_configsPassingSampling:(id)sampling logTelemetry:(BOOL)telemetry
{
  v82 = *MEMORY[0x277D85DE8];
  samplingCopy = sampling;
  v6 = samplingCopy;
  if (samplingCopy && [samplingCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    date = [MEMORY[0x277CBEAA8] date];
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
    v60 = array;
    v64 = *v68;
    selfCopy = self;
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
        deviceModel = [v13 deviceModel];
        deviceTimezone = [(DRSTaskingDecisionMaker *)self deviceTimezone];
        abbreviation = [deviceTimezone abbreviation];
        config3 = [v12 samplingParametersForHWModel:deviceModel timezoneAbbreviation:abbreviation];

        v18 = DPLogHandle_TaskingDecisionMaker();
        if (os_signpost_enabled(v18))
        {
          config = [v12 config];
          configUUID = [config configUUID];
          jsonDictRepresentationAbbreviated = [v12 jsonDictRepresentationAbbreviated];
          *buf = 138543618;
          v72 = configUUID;
          v73 = 2114;
          v74 = jsonDictRepresentationAbbreviated;
          _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamSamplingEvaluation", "Evaluating sampling for: %{public}@:\n%{public}@", buf, 0x16u);
        }

        v22 = DPLogHandle_TaskingDecisionMaker();
        v23 = os_signpost_enabled(v22);
        if (config3)
        {
          if (v23)
          {
            config2 = [v12 config];
            configUUID2 = [config2 configUUID];
            teamID = [v12 teamID];
            [config3 samplingPercentage];
            v27 = v26;
            v28 = +[DRSSystemProfile sharedInstance];
            deviceModel2 = [v28 deviceModel];
            deviceTimezone2 = [(DRSTaskingDecisionMaker *)self deviceTimezone];
            abbreviation2 = [deviceTimezone2 abbreviation];
            *buf = 138544386;
            v72 = configUUID2;
            v73 = 2114;
            v74 = teamID;
            v75 = 2050;
            v76 = v27;
            v77 = 2114;
            v78 = deviceModel2;
            v79 = 2114;
            v80 = abbreviation2;
            _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamConfigSampling", "%{public}@ for team %{public}@: Got sampling percentage of %{public}.2f for HW model %{public}@, TZ: %{public}@", buf, 0x34u);

            array = v60;
            self = selfCopy;

            v9 = v61;
          }

          [config3 samplingPercentage];
          if ([DRSTaskingDecisionMaker passesPercentAccept:?])
          {

            v10 = v64;
LABEL_16:
            config3 = [v12 config];
            [array addObject:config3];
            goto LABEL_24;
          }

          v41 = DPLogHandle_TaskingDecisionMaker();
          if (os_signpost_enabled(v41))
          {
            config4 = [v12 config];
            configUUID3 = [config4 configUUID];
            teamID2 = [v12 teamID];
            [config3 samplingPercentage];
            *buf = 138543874;
            v72 = configUUID3;
            v73 = 2114;
            v74 = teamID2;
            v75 = 2048;
            v76 = v45;
            _os_signpost_emit_with_name_impl(&dword_232906000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ for team ID %{public}@ due to failed roll (%f%% chance of success)", buf, 0x20u);
          }

          v46 = MEMORY[0x277CCACA8];
          [config3 samplingPercentage];
          v40 = [v46 stringWithFormat:@"Failed roll (%f%% chance of success)", v47];
          v48 = [DRSConfigMetadata alloc];
          teamID3 = [v12 teamID];
          config5 = [v12 config];
          configUUID4 = [config5 configUUID];
          currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v57) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
          LOBYTE(v57) = telemetry;
          v53 = [DRSConfigMetadata initWithTeamID:v48 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID3 completionType:configUUID4 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate completionDescription:date config:v40 logTelemetry:0 reportToDecisionServer:v57];

          [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v53];
          array = v60;
          v9 = v61;
        }

        else
        {
          if (v23)
          {
            config6 = [v12 config];
            configUUID5 = [config6 configUUID];
            teamID4 = [v12 teamID];
            *buf = 138543618;
            v72 = configUUID5;
            v73 = 2114;
            v74 = teamID4;
            _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ for team %{public}@ to missing sampling parameters", buf, 0x16u);
          }

          v35 = [DRSConfigMetadata alloc];
          teamID5 = [v12 teamID];
          config7 = [v12 config];
          configUUID6 = [config7 configUUID];
          currentReceivedDate2 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
          BYTE1(v57) = [(DRSTaskingDecisionMaker *)selfCopy reportToDecisionServer];
          LOBYTE(v57) = telemetry;
          v40 = [DRSConfigMetadata initWithTeamID:v35 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID5 completionType:configUUID6 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate2 completionDescription:date config:@"No applicable sampling parameters" logTelemetry:0 reportToDecisionServer:v57];

          self = selfCopy;
          [(DRSTaskingDecisionMaker *)selfCopy _persistReceivedMetadata:v40];
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

        if ([array count])
        {
          v54 = array;
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

- (id)_hysteresisPredicate:(id)predicate config:(id)config
{
  predicateCopy = predicate;
  if (([config skippedHysteresis] & 1) != 0 || !-[DRSTaskingDecisionMaker enforceTeamHysteresis](self, "enforceTeamHysteresis"))
  {
    4097 = [MEMORY[0x277CCAC30] predicateWithFormat:@"completionType == %llu", 4097];
  }

  else
  {
    4097 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:predicateCopy];
  }

  v8 = 4097;

  return v8;
}

- (BOOL)_configDoesPassTeamHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry
{
  v52[2] = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = MEMORY[0x277CCAC30];
  teamID = [hysteresisCopy teamID];
  v9 = [v7 predicateWithFormat:@"teamID == %@", teamID];

  v10 = MEMORY[0x277CBEAA8];
  limitingParameters = [(DRSTaskingDecisionMaker *)self limitingParameters];
  [limitingParameters perTeamTaskingHysteresisInterval];
  v13 = -v12;
  date2 = [MEMORY[0x277CBEAA8] date];
  v15 = [v10 dateWithTimeInterval:date2 sinceDate:v13];

  v16 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:v15 config:hysteresisCopy];
  v17 = MEMORY[0x277CCA920];
  v52[0] = v9;
  v52[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  configStore = [(DRSTaskingDecisionMaker *)self configStore];
  v47 = 0;
  v21 = [configStore metadataCountForPredicate:v19 fetchLimit:1 withErrorOut:&v47];
  v22 = v47;

  if (v22)
  {
    v43 = v16;
    v44 = v15;
    v45 = v9;
    v23 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v23))
    {
      configUUID = [hysteresisCopy configUUID];
      *buf = 138543618;
      v49 = configUUID;
      v50 = 2114;
      v51 = v22;
      _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PerTeamHysteresisError", "Rejecting config %{public}@ due to team hysteresis error %{public}@", buf, 0x16u);
    }

    v25 = MEMORY[0x277CCACA8];
    localizedDescription = [v22 localizedDescription];
    v27 = [v25 stringWithFormat:@"Per-team hysteresis error %@", localizedDescription];

    v28 = [DRSConfigMetadata alloc];
    teamID2 = [hysteresisCopy teamID];
    configUUID2 = [hysteresisCopy configUUID];
    currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
    BYTE1(v42) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
    LOBYTE(v42) = telemetry;
    v32 = [(DRSConfigMetadata *)v28 initWithTeamID:teamID2 configUUID:configUUID2 state:3 completionType:1 receivedDate:currentReceivedDate appliedDate:date completedDate:date completionDescription:v27 config:0 logTelemetry:v42 reportToDecisionServer:?];

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
      configUUID3 = [hysteresisCopy configUUID];
      *buf = 138543618;
      v49 = configUUID3;
      v50 = 2048;
      v51 = v21;
      _os_signpost_emit_with_name_impl(&dword_232906000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamHysteresisRejection", "Rejecting config %{public}@ due to team hysteresis (matching count of %lu)", buf, 0x16u);
    }

    v35 = [DRSConfigMetadata alloc];
    teamID3 = [hysteresisCopy teamID];
    configUUID4 = [hysteresisCopy configUUID];
    currentReceivedDate2 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
    BYTE1(v42) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
    LOBYTE(v42) = telemetry;
    v27 = [(DRSConfigMetadata *)v35 initWithTeamID:teamID3 configUUID:configUUID4 state:3 completionType:1 receivedDate:currentReceivedDate2 appliedDate:date completedDate:date completionDescription:@"Rejected by per-team hysteresis" config:0 logTelemetry:v42 reportToDecisionServer:?];

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

- (id)_configsPassingOverallHysteresis:(id)hysteresis logTelemetry:(BOOL)telemetry
{
  v117 = *MEMORY[0x277D85DE8];
  hysteresisCopy = hysteresis;
  if ([(DRSTaskingDecisionMaker *)self enforceGlobalHysteresisAndCap])
  {
    v83 = hysteresisCopy;
    date = [MEMORY[0x277CBEAA8] date];
    v6 = MEMORY[0x277CBEAA8];
    limitingParameters = [(DRSTaskingDecisionMaker *)self limitingParameters];
    [limitingParameters taskingHysteresisInterval];
    v9 = -v8;
    date2 = [MEMORY[0x277CBEAA8] date];
    v11 = [v6 dateWithTimeInterval:date2 sinceDate:v9];

    configStore = [(DRSTaskingDecisionMaker *)self configStore];
    v82 = v11;
    v13 = [(DRSTaskingDecisionMaker *)self _hysteresisPredicate:v11];
    limitingParameters2 = [(DRSTaskingDecisionMaker *)self limitingParameters];
    v108 = 0;
    v15 = [configStore metadataCountForPredicate:v13 fetchLimit:objc_msgSend(limitingParameters2 withErrorOut:{"acceptedConfigCountCap"), &v108}];
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
            localizedDescription = [v89 localizedDescription];
            v25 = [v23 stringWithFormat:@"Overall hysteresis error %@", localizedDescription];

            v26 = [DRSConfigMetadata alloc];
            teamID = [v22 teamID];
            configUUID = [v22 configUUID];
            currentReceivedDate = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
            BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
            LOBYTE(v81) = telemetry;
            v30 = [DRSConfigMetadata initWithTeamID:v26 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID completionType:configUUID receivedDate:3 appliedDate:1 completedDate:currentReceivedDate completionDescription:date config:v25 logTelemetry:0 reportToDecisionServer:v81];

            [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v30];
          }

          v19 = [obj countByEnumeratingWithState:&v104 objects:v116 count:16];
        }

        while (v19);
      }

      v31 = 0;
      v32 = v82;
      hysteresisCopy = v83;
    }

    else
    {
      limitingParameters3 = [(DRSTaskingDecisionMaker *)self limitingParameters];
      acceptedConfigCountCap = [limitingParameters3 acceptedConfigCountCap];

      if (v15 >= acceptedConfigCountCap)
      {
        array = [MEMORY[0x277CBEB18] array];
        v65 = DPLogHandle_TaskingDecisionMaker();
        if (os_signpost_enabled(v65))
        {
          limitingParameters4 = [(DRSTaskingDecisionMaker *)self limitingParameters];
          acceptedConfigCountCap2 = [limitingParameters4 acceptedConfigCountCap];
          *buf = 134217984;
          v110 = acceptedConfigCountCap2;
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
                [array addObject:v73];
              }

              else
              {
                v74 = [DRSConfigMetadata alloc];
                teamID2 = [v73 teamID];
                configUUID2 = [v73 configUUID];
                currentReceivedDate2 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
                BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
                LOBYTE(v81) = telemetry;
                v78 = [DRSConfigMetadata initWithTeamID:v74 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID2 completionType:configUUID2 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate2 completionDescription:date config:@"No open overall slots" logTelemetry:0 reportToDecisionServer:v81];

                [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v78];
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v100 objects:v115 count:16];
          }

          while (v70);
        }

        if ([array count])
        {
          v31 = array;
        }

        else
        {
          v31 = 0;
        }

        v32 = v82;
        hysteresisCopy = v83;
      }

      else
      {
        limitingParameters5 = [(DRSTaskingDecisionMaker *)self limitingParameters];
        acceptedConfigCountCap3 = [limitingParameters5 acceptedConfigCountCap];

        hysteresisCopy = v83;
        v86 = acceptedConfigCountCap3 - v15;
        if (acceptedConfigCountCap3 - v15 >= [v83 count])
        {
          v31 = v83;
          v32 = v82;
        }

        else
        {
          v37 = [v83 mutableCopy];
          array2 = [MEMORY[0x277CBEB18] array];
          if (acceptedConfigCountCap3 != v15)
          {
            v39 = acceptedConfigCountCap3 - v15;
            do
            {
              v40 = arc4random_uniform([v37 count]);
              v41 = [v37 objectAtIndexedSubscript:v40];
              [array2 addObject:v41];
              [v37 removeObjectAtIndex:v40];

              --v39;
            }

            while (v39);
          }

          v85 = array2;
          array3 = [MEMORY[0x277CBEB18] array];
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v43 = v37;
          v44 = [v43 countByEnumeratingWithState:&v96 objects:v114 count:16];
          v84 = array3;
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
                  [array3 addObject:v48];
                  [array2 addObject:v48];
                  v49 = DPLogHandle_TaskingDecisionMaker();
                  if (os_signpost_enabled(v49))
                  {
                    configUUID3 = [v48 configUUID];
                    *buf = 138543362;
                    v110 = configUUID3;
                    _os_signpost_emit_with_name_impl(&dword_232906000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigAcceptedBySkippingHysteresis", "Accepted %{public}@ due to 'skipHysteresis'", buf, 0xCu);
                  }

                  array3 = v84;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v96 objects:v114 count:16];
            }

            while (v45);
          }

          if ([array3 count])
          {
            [v43 removeObjectsInArray:array3];
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
                  configUUID4 = [v56 configUUID];
                  *buf = 138543618;
                  v110 = configUUID4;
                  v111 = 2048;
                  v112 = v86;
                  _os_signpost_emit_with_name_impl(&dword_232906000, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverallHysteresisRejection", "Rejected %{public}@ due to not being picked for one of the %llu open slots", buf, 0x16u);
                }

                v59 = [DRSConfigMetadata alloc];
                teamID3 = [v56 teamID];
                configUUID5 = [v56 configUUID];
                currentReceivedDate3 = [(DRSTaskingDecisionMaker *)self currentReceivedDate];
                BYTE1(v81) = [(DRSTaskingDecisionMaker *)self reportToDecisionServer];
                LOBYTE(v81) = telemetry;
                v63 = [DRSConfigMetadata initWithTeamID:v59 configUUID:"initWithTeamID:configUUID:state:completionType:receivedDate:appliedDate:completedDate:completionDescription:config:logTelemetry:reportToDecisionServer:" state:teamID3 completionType:configUUID5 receivedDate:3 appliedDate:1 completedDate:currentReceivedDate3 completionDescription:date config:v51 logTelemetry:0 reportToDecisionServer:v81];

                [(DRSTaskingDecisionMaker *)self _persistReceivedMetadata:v63];
              }

              v53 = [obja countByEnumeratingWithState:&v92 objects:v113 count:16];
            }

            while (v53);
          }

          v32 = v82;
          hysteresisCopy = v83;
          v31 = v85;
        }
      }
    }
  }

  else
  {
    v31 = hysteresisCopy;
  }

  v79 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)_rejectTaskingMessageDueToDisabledState:(id)state logTelemetry:(BOOL)telemetry
{
  v6 = MEMORY[0x277CBEAA8];
  stateCopy = state;
  date = [v6 date];
  teamTaskings = [stateCopy teamTaskings];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__DRSTaskingDecisionMaker__rejectTaskingMessageDueToDisabledState_logTelemetry___block_invoke;
  v11[3] = &unk_27899F870;
  v11[4] = self;
  v12 = date;
  telemetryCopy = telemetry;
  v10 = date;
  [teamTaskings enumerateKeysAndObjectsUsingBlock:v11];
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

- (id)acceptedCancels:(id)cancels
{
  cancelsCopy = cancels;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];

  if (configStore)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    date = [MEMORY[0x277CBEAA8] date];
    v8 = MEMORY[0x277CCACA8];
    messageUUID = [cancelsCopy messageUUID];
    uUIDString = [messageUUID UUIDString];
    v11 = [v8 stringWithFormat:@"Cancelled by cancel tasking message %@", uUIDString];

    perTeamCancelledConfigUUIDs = [cancelsCopy perTeamCancelledConfigUUIDs];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__DRSTaskingDecisionMaker_acceptedCancels___block_invoke;
    v18[3] = &unk_27899F898;
    v18[4] = self;
    v19 = date;
    v20 = v11;
    v21 = cancelsCopy;
    v13 = dictionary;
    v22 = v13;
    v14 = v11;
    v15 = date;
    [perTeamCancelledConfigUUIDs enumerateKeysAndObjectsUsingBlock:v18];

    if ([v13 count])
    {
      perTeamCancelledConfigUUIDs2 = v13;
    }

    else
    {
      perTeamCancelledConfigUUIDs2 = 0;
    }
  }

  else
  {
    perTeamCancelledConfigUUIDs2 = [cancelsCopy perTeamCancelledConfigUUIDs];
  }

  return perTeamCancelledConfigUUIDs2;
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

- (void)clientCompletedConfigUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];
  date = [MEMORY[0x277CBEAA8] date];
  v14 = 0;
  v7 = [configStore completeConfigWithUUID:dCopy completedDate:date completionType:8196 completionDescription:@"Completed by client" errorOut:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v9 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v9))
    {
      localizedDescription = [v8 localizedDescription];
      v11 = localizedDescription;
      v12 = @"Unknown";
      if (localizedDescription)
      {
        v12 = localizedDescription;
      }

      *buf = 138543618;
      v16 = dCopy;
      v17 = 2114;
      v18 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletionFailed", "Failed to complete config UUID %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)clientRejectsConfigUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configStore = [(DRSTaskingDecisionMaker *)self configStore];
  date = [MEMORY[0x277CBEAA8] date];
  v14 = 0;
  v7 = [configStore completeConfigWithUUID:dCopy completedDate:date completionType:1 completionDescription:@"Rejected by client" errorOut:&v14];
  v8 = v14;

  if ((v7 & 1) == 0)
  {
    v9 = DPLogHandle_TaskingDecisionMakerError();
    if (os_signpost_enabled(v9))
    {
      localizedDescription = [v8 localizedDescription];
      v11 = localizedDescription;
      v12 = @"Unknown";
      if (localizedDescription)
      {
        v12 = localizedDescription;
      }

      *buf = 138543618;
      v16 = dCopy;
      v17 = 2114;
      v18 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectionFailed", "Failed to reject config UUID %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end