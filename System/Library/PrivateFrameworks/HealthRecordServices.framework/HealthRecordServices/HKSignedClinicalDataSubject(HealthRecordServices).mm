@interface HKSignedClinicalDataSubject(HealthRecordServices)
- (id)dataForUniquenessChecksumCalculation;
@end

@implementation HKSignedClinicalDataSubject(HealthRecordServices)

- (id)dataForUniquenessChecksumCalculation
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      v10 = v6;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_2519FE000, v10, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@: unexpectedly failed to archive to data, returning zero-length data. Error: %{public}@", buf, 0x20u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v7 = v5;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end