@interface HKHRCardioFitnessAnalyticsClientSignalSource
- (HKHRCardioFitnessAnalyticsClientSignalSource)initWithHealthStore:(id)a3;
- (id)biologicalSexStringWithError:(id *)a3;
- (int64_t)bucketedAgeWithError:(id *)a3;
@end

@implementation HKHRCardioFitnessAnalyticsClientSignalSource

- (HKHRCardioFitnessAnalyticsClientSignalSource)initWithHealthStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKHRCardioFitnessAnalyticsClientSignalSource;
  v6 = [(HKHRCardioFitnessAnalyticsClientSignalSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
  }

  return v7;
}

- (int64_t)bucketedAgeWithError:(id *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  healthStore = self->_healthStore;
  v14 = 0;
  v6 = [(HKHealthStore *)healthStore dateOfBirthComponentsWithError:&v14];
  v7 = v14;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HKHRCardioFitnessAnalyticsClientSignalSource bucketedAgeWithError:];
    }

    if (a3)
    {
      v9 = v7;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_12:
    v10 = HKHRCardioFitnessAnalyticsBoundedIntegerErrorSentinel;
    goto LABEL_13;
  }

  if (!v6)
  {
    _HKInitializeLogging();
    v11 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_228942000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No date of birth components, returning invalid value", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v10 = [(HKHRCardioFitnessAnalyticsSignalSource *)self bucketedAgeForDateOfBirthComponents:v6];
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)biologicalSexStringWithError:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  healthStore = self->_healthStore;
  v15 = 0;
  v6 = [(HKHealthStore *)healthStore biologicalSexWithError:&v15];
  v7 = v15;
  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HKHRCardioFitnessAnalyticsClientSignalSource biologicalSexStringWithError:];
    }

    if (a3)
    {
      v9 = v7;
      v10 = 0;
      *a3 = v7;
      goto LABEL_13;
    }

    _HKLogDroppedError();
  }

  else
  {
    if (v6)
    {
      v10 = [v6 biologicalSex];
      goto LABEL_13;
    }

    _HKInitializeLogging();
    v11 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_228942000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: No biological sex object, returning value for not set", buf, 0xCu);
    }
  }

  v10 = 0;
LABEL_13:
  v12 = [(HKHRCardioFitnessAnalyticsSignalSource *)self biologicalSexStringForBiologicalSex:v10];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)bucketedAgeWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v0, v1, "[%{public}@]: Error when retrieving date of birth components: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)biologicalSexStringWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_228942000, v0, v1, "[%{public}@]: Error when retrieving biological sex, returning not set: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end