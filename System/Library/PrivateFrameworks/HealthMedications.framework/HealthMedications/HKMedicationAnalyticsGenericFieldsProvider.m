@interface HKMedicationAnalyticsGenericFieldsProvider
- (HKMedicationAnalyticsGenericFieldsProvider)initWithDataSource:(id)a3;
- (id)activePairedWatchProductType;
- (id)biologicalSex;
- (id)bucketedUserAgeForCurrentDate:(id)a3;
- (id)userAgeForCurrentDate:(id)a3;
- (void)biologicalSex;
@end

@implementation HKMedicationAnalyticsGenericFieldsProvider

- (HKMedicationAnalyticsGenericFieldsProvider)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKMedicationAnalyticsGenericFieldsProvider;
  v6 = [(HKMedicationAnalyticsGenericFieldsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (id)activePairedWatchProductType
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BBC0]];

  return v4;
}

- (id)biologicalSex
{
  dataSource = self->_dataSource;
  v9 = 0;
  v3 = [(HKAnalyticsHealthDataSource *)dataSource biologicalSexWithError:&v9];
  v4 = v9;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogMedication();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HKMedicationAnalyticsGenericFieldsProvider biologicalSex];
    }

    goto LABEL_7;
  }

  v6 = [v3 biologicalSex];
  if (v6 > 3)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = off_2796CABD8[v6];
LABEL_8:

  return v7;
}

- (id)userAgeForCurrentDate:(id)a3
{
  dataSource = self->_dataSource;
  v9 = 0;
  v4 = [(HKAnalyticsHealthDataSource *)dataSource ageWithCurrentDate:a3 error:&v9];
  v5 = v9;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKMedicationAnalyticsGenericFieldsProvider userAgeForCurrentDate:];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)bucketedUserAgeForCurrentDate:(id)a3
{
  v3 = [(HKMedicationAnalyticsGenericFieldsProvider *)self userAgeForCurrentDate:a3];
  if (v3)
  {
    v4 = v3;
    v5 = HKMedicationsBucketedDecadeForAge(v3);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_2863B6EE0;
  }

  v7 = v6;

  return v6;
}

- (void)biologicalSex
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  OUTLINED_FUNCTION_1_1(&dword_2517E7000, v2, v3, "[%{public}@] Unable access biological sex due to error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)userAgeForCurrentDate:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  OUTLINED_FUNCTION_1_1(&dword_2517E7000, v2, v3, "[%{public}@] Unable access age due to error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end