@interface HDHRPregnancySampleProvider
- (HDHRPregnancySampleProvider)initWithProfile:(id)a3;
- (id)getSamplesWithError:(id *)a3;
@end

@implementation HDHRPregnancySampleProvider

- (HDHRPregnancySampleProvider)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDHRPregnancySampleProvider;
  v5 = [(HDHRPregnancySampleProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (id)getSamplesWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD720] pregnancyType];
  v6 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = 0;
  v8 = [v6 samplesWithType:v5 profile:WeakRetained encodingOptions:0 predicate:0 limit:0 anchor:0 error:&v15];
  v9 = v15;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HDHRPregnancySampleProvider getSamplesWithError:];
    }

    if (a3)
    {
      v11 = v9;
      v12 = 0;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }
  }

  else
  {
    v13 = [v8 sortedArrayUsingComparator:&__block_literal_global_11];

    v8 = v13;
    v12 = v8;
  }

  return v12;
}

BOOL __51__HDHRPregnancySampleProvider_getSamplesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  return v5 > v6;
}

- (void)getSamplesWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Could not fetch pregnancy samples with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end