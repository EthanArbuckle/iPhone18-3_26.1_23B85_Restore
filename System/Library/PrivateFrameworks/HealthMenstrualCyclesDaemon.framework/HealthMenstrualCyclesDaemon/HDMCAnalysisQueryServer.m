@interface HDMCAnalysisQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (HDMCAnalysisQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7;
- (id)_analysisQueryClientProxy;
- (id)objectTypes;
- (void)_handleAnalysis:(id)a3;
- (void)_queue_start;
- (void)_queue_stop;
@end

@implementation HDMCAnalysisQueryServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:*MEMORY[0x277D11920]];

  if (v16)
  {
    v17 = [[HDMCAnalysisQueryServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14 profileExtension:v16];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (a7)
      {
        v19 = v18;
        *a7 = v18;
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

- (HDMCAnalysisQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7
{
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = HDMCAnalysisQueryServer;
  v15 = [(HDQueryServer *)&v18 initWithUUID:a3 configuration:v13 client:a5 delegate:a6];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_profileExtension, a7);
    objc_storeStrong(&v16->_configuration, a4);
  }

  return v16;
}

- (id)_analysisQueryClientProxy
{
  v2 = [(HDQueryServer *)self clientProxy];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [v6 entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [v7 hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([v6 entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC890], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC890]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
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
  v3 = [(HDMCAnalysisQueryServer *)self _analysisQueryClientProxy];
  v4 = [(HDQueryServer *)self client];
  v5 = [v4 authorizationOracle];
  v6 = [(HDMCAnalysisQueryServer *)self objectTypes];
  v33 = 0;
  v7 = [v5 authorizationStatusRecordsForTypes:v6 error:&v33];
  v8 = v33;

  if (v7)
  {
    v9 = [(HDQueryServer *)self client];
    v10 = [v9 authorizationOracle];
    v11 = [v10 clientHasAuthorizationForAllTypes];

    if ((v11 & 1) == 0)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = [v7 allValues];
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        v16 = 1;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if (v16)
            {
              v16 = [*(*(&v29 + 1) + 8 * i) canRead];
            }

            else
            {
              v16 = 0;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v14);

        if ((v16 & 1) == 0)
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

          v22 = [objc_alloc(MEMORY[0x277D11A00]) initWithNumberOfCycles:0 firstMenstruationStartDayIndex:0 lastMenstruationStartDayIndex:0 cycleLengthMedian:0 cycleLengthLowerPercentile:0 cycleLengthUpperPercentile:0 menstruationLengthMedian:0 menstruationLengthLowerPercentile:0 menstruationLengthUpperPercentile:0];
          v23 = objc_alloc(MEMORY[0x277D11960]);
          LOBYTE(v28) = 0;
          LOBYTE(v27) = 0;
          v24 = [v23 initWithStatistics:v22 menstruationProjections:MEMORY[0x277CBEBF8] fertileWindowProjections:MEMORY[0x277CBEBF8] menstruationProjectionsEnabled:0 fertileWindowProjectionsEnabled:0 cycles:MEMORY[0x277CBEBF8] deviations:MEMORY[0x277CBEBF8] recentSymptoms:0 recentBasalBodyTemperature:0 lastLoggedDayIndex:0 lastMenstrualFlowDayIndex:0 isPeriodLogLate:v27 ongoingCycleFactors:MEMORY[0x277CBEBF8] numberOfDailySleepHeartRateStatisticsForPast100Days:0 numberOfDailyAwakeHeartRateStatisticsForPast100Days:0 hasHealthAppDevicesWithHigherAlgorithmVersions:v28];
          v25 = [(HDQueryServer *)self queryUUID];
          [v3 client_deliverAnalysis:v24 queryUUID:v25];

          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    v22 = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
    [v22 registerObserver:self queue:0 userInitiated:1];
    if (([(HKMCAnalysisQueryConfiguration *)self->_configuration forceAnalysis]& 1) == 0)
    {
      v24 = [v22 currentAnalysis];
      [(HDMCAnalysisQueryServer *)self _handleAnalysis:v24];
LABEL_21:
    }
  }

  else
  {
    v22 = [(HDQueryServer *)self queryUUID];
    [v3 client_deliverError:v8 forQuery:v22];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_queue_stop
{
  v4.receiver = self;
  v4.super_class = HDMCAnalysisQueryServer;
  [(HDQueryServer *)&v4 _queue_stop];
  v3 = [(HDMCProfileExtension *)self->_profileExtension analysisManager];
  [v3 unregisterObserver:self];
}

- (void)_handleAnalysis:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v9 = v5;
    v6 = [v5 cycles];

    if (v6)
    {
      if (([(HKMCAnalysis *)self->_analysis isEqual:v9]& 1) == 0)
      {
        objc_storeStrong(&self->_analysis, a3);
        v7 = [(HDMCAnalysisQueryServer *)self _analysisQueryClientProxy];
        v8 = [(HDQueryServer *)self queryUUID];
        [v7 client_deliverAnalysis:v9 queryUUID:v8];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

@end