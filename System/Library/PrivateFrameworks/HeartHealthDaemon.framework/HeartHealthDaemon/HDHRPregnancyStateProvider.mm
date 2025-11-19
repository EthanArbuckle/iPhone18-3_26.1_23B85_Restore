@interface HDHRPregnancyStateProvider
- (HDHRPregnancyStateProvider)initWithPregnancySampleProvider:(id)a3;
- (id)latestWashoutEndDateWithError:(id *)a3;
@end

@implementation HDHRPregnancyStateProvider

- (HDHRPregnancyStateProvider)initWithPregnancySampleProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDHRPregnancyStateProvider;
  v6 = [(HDHRPregnancyStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pregnancySampleProvider, a3);
  }

  return v7;
}

- (id)latestWashoutEndDateWithError:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  pregnancySampleProvider = self->_pregnancySampleProvider;
  v25 = 0;
  v6 = [(HDHRPregnancySampleProviding *)pregnancySampleProvider getSamplesWithError:&v25];
  v7 = v25;
  if (!v7)
  {
    v9 = [v6 firstObject];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 endDate];
      v12 = [MEMORY[0x277CBEAA8] distantFuture];

      if (v11 != v12)
      {
        v13 = [v10 endDate];
        v14 = [v10 startDate];
        [v13 timeIntervalSinceDate:v14];
        v16 = v15;

        if (v16 >= 12096000.0)
        {
          v23 = MEMORY[0x277CBEAA8];
          v24 = [v10 endDate];
          v18 = [v23 dateWithTimeInterval:v24 sinceDate:7257600.0];

          goto LABEL_18;
        }

        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

LABEL_17:
        v18 = 0;
LABEL_18:

        goto LABEL_19;
      }

      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2D8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    v19 = v17;
    v20 = HKSensitiveLogItem();
    *buf = 138543618;
    v27 = self;
    v28 = 2112;
    v29 = v20;
    _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] %@", buf, 0x16u);

    goto LABEL_17;
  }

  if (a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  else
  {
    _HKLogDroppedError();
  }

  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [HDHRPregnancyStateProvider latestWashoutEndDateWithError:];
  }

  v18 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)latestWashoutEndDateWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Failed to get samples with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end