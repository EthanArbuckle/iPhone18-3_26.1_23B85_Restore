@interface HDHRCardioFitnessStoreServer
- (BOOL)_insertSampleWithLocalSource:(id)a3 error:(id *)a4;
- (BOOL)_saveCardioFitnessNotificationWithValue:(id)a3 threshold:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(unint64_t)a7 error:(id *)a8;
- (HDHRCardioFitnessStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)remote_saveCardioFitnessAlertWithValue:(id)a3 threshold:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(unint64_t)a7 completion:(id)a8;
@end

@implementation HDHRCardioFitnessStoreServer

- (HDHRCardioFitnessStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10.receiver = self;
  v10.super_class = HDHRCardioFitnessStoreServer;
  v6 = [(HDStandardTaskServer *)&v10 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
  if (v6)
  {
    v7 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v7 addObject:v6];

    v8 = v6;
  }

  return v6;
}

- (void)remote_saveCardioFitnessAlertWithValue:(id)a3 threshold:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(unint64_t)a7 completion:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  _HKInitializeLogging();
  v19 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v28 = v20;
    [v14 description];
    v21 = v29 = v14;
    HKSensitiveLogItem();
    v22 = v30 = self;
    v23 = [v15 description];
    *buf = 138544131;
    v33 = v20;
    v34 = 2112;
    v35 = v22;
    v36 = 2049;
    v37 = a7;
    v38 = 2112;
    v39 = v23;
    _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving fitness alert: %@, options:%{private}lu, threshold: %@", buf, 0x2Au);

    v14 = v29;
    self = v30;
  }

  v31 = 0;
  v24 = [(HDHRCardioFitnessStoreServer *)self _saveCardioFitnessNotificationWithValue:v14 threshold:v15 startDate:v18 endDate:v17 options:a7 error:&v31];

  v25 = v31;
  if (!v24)
  {
    _HKInitializeLogging();
    v26 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [HDHRCardioFitnessStoreServer remote_saveCardioFitnessAlertWithValue:v25 threshold:v26 startDate:? endDate:? options:? completion:?];
    }
  }

  v16[2](v16, v24, v25);

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveCardioFitnessNotificationWithValue:(id)a3 threshold:(id)a4 startDate:(id)a5 endDate:(id)a6 options:(unint64_t)a7 error:(id *)a8
{
  v9 = a7;
  v31[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCD0B0];
  v15 = MEMORY[0x277CCD0C0];
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v15 lowCardioFitnessEventType];
  v21 = *MEMORY[0x277CCC4D8];
  v30[0] = *MEMORY[0x277CCC540];
  v30[1] = v21;
  v31[0] = v19;
  v31[1] = v18;
  v30[2] = *MEMORY[0x277CCE0D8];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:v9 & 1];
  v31[2] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v24 = [v14 categorySampleWithType:v20 value:1 startDate:v17 endDate:v16 metadata:v23];

  LOBYTE(a8) = [(HDHRCardioFitnessStoreServer *)self _insertSampleWithLocalSource:v24 error:a8];
  v25 = [HDHRHealthKitSyncManager alloc];
  v26 = [(HDStandardTaskServer *)self profile];
  v27 = [(HDHRHealthKitSyncManager *)v25 initWithProfile:v26];

  [(HDHRHealthKitSyncManager *)v27 triggerImmediateSyncWithReason:@"New Cardio Fitness Notification sample added" loggingCategory:*MEMORY[0x277CCC2D0]];
  v28 = *MEMORY[0x277D85DE8];
  return a8;
}

- (BOOL)_insertSampleWithLocalSource:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDStandardTaskServer *)self profile];
  v8 = [v7 sourceManager];
  v9 = [v8 localDeviceSourceWithError:a4];

  if (v9)
  {
    v10 = [v7 deviceManager];
    v11 = [v10 currentDeviceEntityWithError:a4];

    if (v11)
    {
      v12 = [v7 dataProvenanceManager];
      v13 = [v12 localDataProvenanceForSourceEntity:v9 version:0 deviceEntity:v11];

      v14 = [v7 dataManager];
      v29[0] = v6;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      v16 = [v14 insertDataObjects:v15 withProvenance:v13 creationDate:0 skipInsertionFilter:a4 error:CFAbsoluteTimeGetCurrent()];

      if (v16)
      {
        _HKInitializeLogging();
        v17 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = v18;
          v20 = HKSensitiveLogItem();
          v23 = 138543874;
          v24 = v18;
          v25 = 2112;
          v26 = v20;
          v27 = 2112;
          v28 = v9;
          _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserted sample: %@, source: %@", &v23, 0x20u);
        }
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)remote_saveCardioFitnessAlertWithValue:(NSObject *)a3 threshold:startDate:endDate:options:completion:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 description];
  v9 = 138543618;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Didn't save alert due to error: %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end