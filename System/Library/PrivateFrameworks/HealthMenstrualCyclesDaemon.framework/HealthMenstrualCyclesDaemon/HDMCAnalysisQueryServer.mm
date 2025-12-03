@interface HDMCAnalysisQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (HDMCAnalysisQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension;
- (id)_analysisQueryClientProxy;
- (id)objectTypes;
- (void)_handleAnalysis:(id)analysis;
- (void)_queue_start;
- (void)_queue_stop;
@end

@implementation HDMCAnalysisQueryServer

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  v16 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D11920]];

  if (v16)
  {
    v17 = [[HDMCAnalysisQueryServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy profileExtension:v16];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

- (HDMCAnalysisQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate profileExtension:(id)extension
{
  configurationCopy = configuration;
  extensionCopy = extension;
  v18.receiver = self;
  v18.super_class = HDMCAnalysisQueryServer;
  v15 = [(HDQueryServer *)&v18 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_profileExtension, extension);
    objc_storeStrong(&v16->_configuration, configuration);
  }

  return v16;
}

- (id)_analysisQueryClientProxy
{
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  return remoteObjectProxy;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([clientCopy entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC890], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC890]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
    v13 = 0;
  }

  return v13;
}

- (id)objectTypes
{
  v2 = MEMORY[0x277CBEB58];
  v3 = HKMCCycleTrackingSampleTypes();
  v4 = [v2 setWithArray:v3];

  v5 = [MEMORY[0x277CCD0D0] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  [v4 addObject:v5];

  return v4;
}

- (void)_queue_start
{
  v40 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HDMCAnalysisQueryServer;
  [(HDQueryServer *)&v34 _queue_start];
  _analysisQueryClientProxy = [(HDMCAnalysisQueryServer *)self _analysisQueryClientProxy];
  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDMCAnalysisQueryServer *)self objectTypes];
  v33 = 0;
  v7 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v33];
  v8 = v33;

  if (v7)
  {
    client2 = [(HDQueryServer *)self client];
    authorizationOracle2 = [client2 authorizationOracle];
    clientHasAuthorizationForAllTypes = [authorizationOracle2 clientHasAuthorizationForAllTypes];

    if ((clientHasAuthorizationForAllTypes & 1) == 0)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      allValues = [v7 allValues];
      v13 = [allValues countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        canRead = 1;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(allValues);
            }

            if (canRead)
            {
              canRead = [*(*(&v29 + 1) + 8 * i) canRead];
            }

            else
            {
              canRead = 0;
            }
          }

          v14 = [allValues countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v14);

        if ((canRead & 1) == 0)
        {
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC2E8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = objc_opt_class();
            *buf = 138543618;
            v36 = v20;
            v37 = 2114;
            v38 = v7;
            v21 = v20;
            _os_log_impl(&dword_2293D1000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x16u);
          }

          analysisManager = [objc_alloc(MEMORY[0x277D11A00]) initWithNumberOfCycles:0 firstMenstruationStartDayIndex:0 lastMenstruationStartDayIndex:0 cycleLengthMedian:0 cycleLengthLowerPercentile:0 cycleLengthUpperPercentile:0 menstruationLengthMedian:0 menstruationLengthLowerPercentile:0 menstruationLengthUpperPercentile:0];
          v23 = objc_alloc(MEMORY[0x277D11960]);
          LOBYTE(v28) = 0;
          LOBYTE(v27) = 0;
          currentAnalysis = [v23 initWithStatistics:analysisManager menstruationProjections:MEMORY[0x277CBEBF8] fertileWindowProjections:MEMORY[0x277CBEBF8] menstruationProjectionsEnabled:0 fertileWindowProjectionsEnabled:0 cycles:MEMORY[0x277CBEBF8] deviations:MEMORY[0x277CBEBF8] recentSymptoms:0 recentBasalBodyTemperature:0 lastLoggedDayIndex:0 lastMenstrualFlowDayIndex:0 isPeriodLogLate:v27 ongoingCycleFactors:MEMORY[0x277CBEBF8] numberOfDailySleepHeartRateStatisticsForPast100Days:0 numberOfDailyAwakeHeartRateStatisticsForPast100Days:0 hasHealthAppDevicesWithHigherAlgorithmVersions:v28];
          queryUUID = [(HDQueryServer *)self queryUUID];
          [_analysisQueryClientProxy client_deliverAnalysis:currentAnalysis queryUUID:queryUUID];

          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    analysisManager = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
    [analysisManager registerObserver:self queue:0 userInitiated:1];
    if (([(HKMCAnalysisQueryConfiguration *)self->_configuration forceAnalysis]& 1) == 0)
    {
      currentAnalysis = [analysisManager currentAnalysis];
      [(HDMCAnalysisQueryServer *)self _handleAnalysis:currentAnalysis];
LABEL_21:
    }
  }

  else
  {
    analysisManager = [(HDQueryServer *)self queryUUID];
    [_analysisQueryClientProxy client_deliverError:v8 forQuery:analysisManager];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_queue_stop
{
  v4.receiver = self;
  v4.super_class = HDMCAnalysisQueryServer;
  [(HDQueryServer *)&v4 _queue_stop];
  analysisManager = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
  [analysisManager unregisterObserver:self];
}

- (void)_handleAnalysis:(id)analysis
{
  analysisCopy = analysis;
  if (analysisCopy)
  {
    v9 = analysisCopy;
    cycles = [analysisCopy cycles];

    if (cycles)
    {
      if (([(HKMCAnalysis *)self->_analysis isEqual:v9]& 1) == 0)
      {
        objc_storeStrong(&self->_analysis, analysis);
        _analysisQueryClientProxy = [(HDMCAnalysisQueryServer *)self _analysisQueryClientProxy];
        queryUUID = [(HDQueryServer *)self queryUUID];
        [_analysisQueryClientProxy client_deliverAnalysis:v9 queryUUID:queryUUID];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

@end