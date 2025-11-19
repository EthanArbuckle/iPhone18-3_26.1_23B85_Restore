@interface HDHRHypertensionMeasurementAnalyzer
- (BOOL)performAnalysisWithStartDate:(id)a3 endDate:(id)a4 databaseTransactionContext:(id)a5 error:(id *)a6;
- (HDHRHypertensionMeasurementAnalyzer)init;
- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)a3;
- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)a3 analysisWindowInterval:(double)a4 keyValueDomain:(id)a5 analyticsEventSubmissionManager:(id)a6;
- (id)_measurementsWithDateInterval:(void *)a3 error:;
- (uint64_t)_analyzeMeasurementsWithDateInterval:(void *)a3 error:;
- (uint64_t)_saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval:(void *)a3 databaseTransactionContext:(uint64_t)a4 error:;
- (uint64_t)_saveHypertensionEventSampleWithDateInterval:(uint64_t)a3 error:;
@end

@implementation HDHRHypertensionMeasurementAnalyzer

- (HDHRHypertensionMeasurementAnalyzer)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277CCCFE8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithLoggingCategory:*MEMORY[0x277CCC2D0] healthDataSource:v5];
  v8 = HDHRHypertensionNotificationsAnalysisWindowIntervalRespectingOverride();
  v9 = [MEMORY[0x277D10718] hdhr_hypertensionNotificationsSyncedDomainForProfile:v5];
  v10 = [(HDHRHypertensionMeasurementAnalyzer *)self initWithProfile:v5 analysisWindowInterval:v9 keyValueDomain:v7 analyticsEventSubmissionManager:v8];

  return v10;
}

- (HDHRHypertensionMeasurementAnalyzer)initWithProfile:(id)a3 analysisWindowInterval:(double)a4 keyValueDomain:(id)a5 analyticsEventSubmissionManager:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = HDHRHypertensionMeasurementAnalyzer;
  v13 = [(HDHRHypertensionMeasurementAnalyzer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_profile, v10);
    v14->_analysisWindowInterval = a4;
    v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBB0]];
    measurementsType = v14->_measurementsType;
    v14->_measurementsType = v15;

    objc_storeStrong(&v14->_syncedKeyValueDomain, a5);
    objc_storeStrong(&v14->_analyticsEventSubmissionManager, a6);
  }

  return v14;
}

- (BOOL)performAnalysisWithStartDate:(id)a3 endDate:(id)a4 databaseTransactionContext:(id)a5 error:(id *)a6
{
  v74 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v59 = a5;
  v58 = v10;
  [v10 timeIntervalSinceDate:v9];
  v12 = v11;
  analysisWindowInterval = self->_analysisWindowInterval;
  _HKInitializeLogging();
  v14 = HKLogHeartRateCategory();
  v60 = (v12 / analysisWindowInterval);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v67 = self;
    v68 = 2048;
    v69 = (v12 / analysisWindowInterval);
    _os_log_impl(&dword_229486000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing %ld analysis window(s)", buf, 0x16u);
  }

  if (v60 <= 0)
  {
    v40 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.health.HypertensionMeasurementsAnalyzerErrorDomain" code:100 userInfo:0];
    if (v40)
    {
      v41 = v40;
      if (a6)
      {
        v42 = v40;
        v15 = 0;
        v40 = v41;
        *a6 = v41;
      }

      else
      {
        _HKLogDroppedError();
        v15 = 0;
        v40 = v41;
      }

      v62 = v41;
    }

    else
    {
      v15 = 0;
      v62 = 0;
    }

    goto LABEL_47;
  }

  v62 = [v9 dateByAddingTimeInterval:self->_analysisWindowInterval];
  v61 = HDHRHypertensionNotificationsAnalysisResultForceHypertensionOverride();
  v15 = 0;
  v16 = 1;
  v17 = (v12 / analysisWindowInterval);
  while (1)
  {
    if (v16 != 1)
    {
      v18 = [v9 dateByAddingTimeInterval:self->_analysisWindowInterval];

      v19 = [v18 dateByAddingTimeInterval:self->_analysisWindowInterval];

      v62 = v19;
      v9 = v18;
    }

    _HKInitializeLogging();
    v20 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HRLogSensitiveClassName();
      *buf = 138543874;
      v67 = v21;
      v68 = 2112;
      v69 = v9;
      v70 = 2112;
      v71 = v62;
      _os_log_impl(&dword_229486000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analyzing hypertension measurements with startDate: %@, endDate: %@", buf, 0x20u);
    }

    v22 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v62];
    if (v61)
    {
      v23 = [v61 BOOLValue];
      v24 = MEMORY[0x277CBEC10];
      if (v23)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    v65 = 0;
    v27 = [(HDHRHypertensionMeasurementAnalyzer *)self _analyzeMeasurementsWithDateInterval:v22 error:&v65];
    v29 = v28;
    v30 = v65;
    v31 = v27;
    v24 = v31;
    if (v30)
    {
      break;
    }

    if (v29)
    {
LABEL_11:
      v64 = 0;
      v25 = [(HDHRHypertensionMeasurementAnalyzer *)self _saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval:v22 databaseTransactionContext:v59 error:&v64];
      v26 = v64;
      if ((v25 & 1) == 0)
      {
        _HKInitializeLogging();
        v43 = HKLogHeartRateCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [HDHRHypertensionMeasurementAnalyzer performAnalysisWithStartDate:v26 endDate:v43 databaseTransactionContext:? error:?];
        }

        v45 = v26;
        v46 = v45;
        if (!v45)
        {
          goto LABEL_43;
        }

        if (!a6)
        {
          goto LABEL_42;
        }

LABEL_33:
        v48 = v45;
        v49 = 0;
        *a6 = v46;
        goto LABEL_44;
      }

      goto LABEL_18;
    }

LABEL_15:
    _HKInitializeLogging();
    v32 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = HRLogSensitiveClassName();
      v34 = HKSensitiveLogItem();
      *buf = 138543618;
      v67 = v33;
      v68 = 2114;
      v69 = v34;
      _os_log_impl(&dword_229486000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@", buf, 0x16u);
    }

    v35 = [v22 endDate];
    v63 = 0;
    v36 = [(HDKeyValueDomain *)self->_syncedKeyValueDomain setDate:v35 forKey:*MEMORY[0x277D12F08] error:&v63];
    v26 = v63;

    if ((v36 & 1) == 0)
    {
      _HKInitializeLogging();
      v47 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [HDHRHypertensionMeasurementAnalyzer performAnalysisWithStartDate:endDate:databaseTransactionContext:error:];
      }

      v45 = v26;
      v46 = v45;
      if (v45)
      {
        if (a6)
        {
          goto LABEL_33;
        }

LABEL_42:
        _HKLogDroppedError();
      }

LABEL_43:
      v49 = 0;
LABEL_44:
      v53 = v46;
      goto LABEL_45;
    }

LABEL_18:

    v37 = [HDHRHypertensionNotificationAnalysisEvent alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v39 = [(HDHRHypertensionNotificationAnalysisEvent *)v37 initWithProfile:WeakRetained dateInterval:v22 additionalPayload:v24];

    [(HKAnalyticsEventSubmissionManager *)self->_analyticsEventSubmissionManager submitEvent:v39 error:0];
    v15 = v16++ >= v60;
    if (!--v17)
    {
      goto LABEL_46;
    }
  }

  _HKInitializeLogging();
  v50 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v56 = HRLogSensitiveClassName();
    *buf = 138544130;
    v67 = v56;
    v68 = 2112;
    v69 = v9;
    v70 = 2112;
    v71 = v62;
    v72 = 2112;
    v73 = v30;
    _os_log_error_impl(&dword_229486000, v50, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to analyze hypertension measurements with startDate: %@, endDate: %@, error %@", buf, 0x2Au);
  }

  v51 = v30;
  v46 = v51;
  if (a6)
  {
    v52 = v51;
    *a6 = v46;
  }

  else
  {
    _HKLogDroppedError();
  }

  v53 = v24;
  v49 = v46;
LABEL_45:

LABEL_46:
  v40 = v61;
LABEL_47:

  v54 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2;
  v10[3] = &unk_278660CD8;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v8 = [v4 performWriteTransactionWithHealthDatabase:v6 error:a2 block:v10];

  return v8;
}

uint64_t __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = (a1 + 32);
  v23 = 0;
  v9 = [(HDHRHypertensionMeasurementAnalyzer *)v6 _saveHypertensionEventSampleWithDateInterval:v7 error:&v23];
  v10 = v23;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v18 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_1(v8);
    }

    v16 = v11;
    if (!v16)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      _HKLogDroppedError();
      goto LABEL_16;
    }

LABEL_10:
    v19 = v16;
    *a3 = v16;
LABEL_16:

    v17 = 0;
    goto LABEL_17;
  }

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) endDate];
  v22 = 0;
  if (v12)
  {
    v14 = [*(v12 + 16) setDate:v13 forKey:*MEMORY[0x277D12F08] error:&v22];
    v15 = v22;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = v15;

  if ((v14 & 1) == 0)
  {
    _HKInitializeLogging();
    v20 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_2(v8);
    }

    v16 = v16;
    if (!v16)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v17 = 1;
LABEL_17:

  return v17;
}

uint64_t __75__HDHRHypertensionMeasurementAnalyzer__measurementsWithDateInterval_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  return 1;
}

id __75__HDHRHypertensionMeasurementAnalyzer__measurementsWithDateInterval_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0FC78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 endDate];
  v6 = [v3 quantity];

  [v6 _value];
  v7 = [v4 initWithDate:v5 value:?];

  return v7;
}

- (uint64_t)_analyzeMeasurementsWithDateInterval:(void *)a3 error:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v14 = 0;
    v6 = [(HDHRHypertensionMeasurementAnalyzer *)a1 _measurementsWithDateInterval:v5 error:&v14];
    v7 = v14;
    if (v6)
    {
      a1 = [MEMORY[0x277D0FC70] analyzeMeasurements:v6 forDateInterval:v5];
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = HRLogSensitiveClassName();
        *buf = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = v7;
        _os_log_error_impl(&dword_229486000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to load hypertension measurements with error %@", buf, 0x16u);
      }

      v9 = v7;
      if (v9)
      {
        if (a3)
        {
          v10 = v9;
          *a3 = v9;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      a1 = MEMORY[0x277CBEC10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

- (uint64_t)_saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval:(void *)a3 databaseTransactionContext:(uint64_t)a4 error:
{
  v7 = a2;
  if (a1)
  {
    v8 = [a3 copyForWritingProtectedData];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v10 = [WeakRetained database];
    OUTLINED_FUNCTION_2_3();
    v13[1] = 3221225472;
    v13[2] = __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke;
    v13[3] = &unk_278660F68;
    v13[4] = a1;
    v14 = v7;
    v11 = [v10 performWithTransactionContext:v8 error:a4 block:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)_saveHypertensionEventSampleWithDateInterval:(uint64_t)a3 error:
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = MEMORY[0x277CCD0C0];
    v6 = *MEMORY[0x277CCB9C8];
    v7 = a2;
    v8 = [v5 categoryTypeForIdentifier:v6];
    v9 = MEMORY[0x277CCD0B0];
    v10 = [v7 startDate];
    v11 = [v7 endDate];

    v12 = [v9 categorySampleWithType:v8 value:0 startDate:v10 endDate:v11];

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v14 = [WeakRetained dataManager];
    v19[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16 = [v14 insertDataObjects:v15 error:a3];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_measurementsWithDateInterval:(void *)a3 error:
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = *(a1 + 24);
    v6 = HDSampleEntityPredicateForDateInterval();
    v7 = MEMORY[0x277D10848];
    v8 = *(a1 + 24);
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v10 = [v7 entityEnumeratorWithType:v8 profile:WeakRetained];

    [v10 setPredicate:v6];
    [v10 setLimitCount:*MEMORY[0x277D10C08]];
    v11 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
    v25[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [v10 setOrderingTerms:v12];

    [MEMORY[0x277CBEB18] array];
    objc_claimAutoreleasedReturnValue();
    v24 = 0;
    OUTLINED_FUNCTION_2_3();
    v22[1] = 3221225472;
    v22[2] = __75__HDHRHypertensionMeasurementAnalyzer__measurementsWithDateInterval_error___block_invoke;
    v22[3] = &unk_278660760;
    v14 = v13;
    v23 = v14;
    [v10 enumerateWithError:&v24 handler:v22];
    v15 = v24;
    v16 = v15;
    if (v14)
    {
      v17 = [v14 hk_map:&__block_literal_global_17];
    }

    else
    {
      v18 = v15;
      if (v18)
      {
        if (a3)
        {
          v19 = v18;
          *a3 = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)performAnalysisWithStartDate:endDate:databaseTransactionContext:error:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)performAnalysisWithStartDate:(NSObject *)a3 endDate:databaseTransactionContext:error:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = HRLogSensitiveClassName();
  v6 = HKSensitiveLogItem();
  v8 = 138543874;
  v9 = v5;
  OUTLINED_FUNCTION_2_6();
  v10 = a2;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ with error %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = HRLogSensitiveClassName();
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __146__HDHRHypertensionMeasurementAnalyzer__saveHypertensionEventSampleAndLastAnalysisDateAtomicallyWithDateInterval_databaseTransactionContext_error___block_invoke_2_cold_2(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = HRLogSensitiveClassName();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end