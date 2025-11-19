@interface HDStatisticsCollectionCalculatorDefaultDataSource(HealthHearingDaemon)
- (id)hearing_addQuantitySamples:()HealthHearingDaemon calculator:error:;
@end

@implementation HDStatisticsCollectionCalculatorDefaultDataSource(HealthHearingDaemon)

- (id)hearing_addQuantitySamples:()HealthHearingDaemon calculator:error:
{
  v8 = a3;
  v9 = a4;
  if (![v8 count])
  {
    v18 = +[HDHeadphoneExposureStatisticUpdateResult resultForEmptySamplesAdded];
    goto LABEL_19;
  }

  v26 = 0;
  v10 = 1;
  v11 = [a1 addValuesForQuantitySamples:v8 calculator:v9 includeSeries:1 error:&v26];
  v12 = v26;
  v13 = v12;
  if (v11)
  {
    goto LABEL_17;
  }

  v14 = [v12 hearing_isExpectedError];
  _HKInitializeLogging();
  v15 = MEMORY[0x277CCC2C8];
  v16 = *MEMORY[0x277CCC2C8];
  v17 = *MEMORY[0x277CCC2C8];
  if (v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HDStatisticsCollectionCalculatorDefaultDataSource(HealthHearingDaemon) hearing_addQuantitySamples:v16 calculator:v8 error:?];
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    [HDStatisticsCollectionCalculatorDefaultDataSource(HealthHearingDaemon) hearing_addQuantitySamples:v16 calculator:v8 error:?];
  }

  if (([v13 hearing_isExpectedError] & 1) == 0)
  {
    v19 = [v9 dateInterval];
    [v9 setDateInterval:v19];

    _HKInitializeLogging();
    v20 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_251764000, v20, OS_LOG_TYPE_DEFAULT, "Attempted recovery by reseting calculator.", buf, 2u);
    }

    v24 = 0;
    v10 = 1;
    v21 = [a1 addValuesForQuantitySamples:v8 calculator:v9 includeSeries:1 error:&v24];
    v13 = v24;
    if (v21)
    {
      goto LABEL_17;
    }

    _HKInitializeLogging();
    v22 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      [HDStatisticsCollectionCalculatorDefaultDataSource(HealthHearingDaemon) hearing_addQuantitySamples:v13 calculator:v22 error:?];
    }
  }

  if (![a1 addValuesForQuantitySamples:v8 calculator:v9 includeSeries:0 error:a5])
  {
    v18 = 0;
    goto LABEL_18;
  }

  v10 = 0;
LABEL_17:
  v18 = [HDHeadphoneExposureStatisticUpdateResult resultForSamplesAdded:v8 includedSeries:v10];
LABEL_18:

LABEL_19:

  return v18;
}

- (void)hearing_addQuantitySamples:()HealthHearingDaemon calculator:error:.cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_251764000, v3, OS_LOG_TYPE_FAULT, "Unable to append samples (%ld) to calculator due to error: %{public}@.", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)hearing_addQuantitySamples:()HealthHearingDaemon calculator:error:.cold.2(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_251764000, v3, OS_LOG_TYPE_ERROR, "Unable to append samples (%ld) to calculator due to error: %{public}@.", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)hearing_addQuantitySamples:()HealthHearingDaemon calculator:error:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251764000, a2, OS_LOG_TYPE_ERROR, "Still unable to update calculator including series: %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end