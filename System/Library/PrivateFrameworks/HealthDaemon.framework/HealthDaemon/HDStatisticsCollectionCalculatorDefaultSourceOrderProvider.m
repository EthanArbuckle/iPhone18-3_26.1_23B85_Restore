@interface HDStatisticsCollectionCalculatorDefaultSourceOrderProvider
- (HDProfile)profile;
- (HDStatisticsCollectionCalculatorDefaultSourceOrderProvider)initWithProfile:(id)a3 quantityType:(id)a4;
- (id)orderedSourceIDsWithUnorderedIDs:(id)a3;
- (id)sourceForSourceID:(int64_t)a3;
@end

@implementation HDStatisticsCollectionCalculatorDefaultSourceOrderProvider

- (HDStatisticsCollectionCalculatorDefaultSourceOrderProvider)initWithProfile:(id)a3 quantityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HDStatisticsCollectionCalculatorDefaultSourceOrderProvider;
  v8 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    v10 = [v7 copy];
    quantityType = v9->_quantityType;
    v9->_quantityType = v10;
  }

  return v9;
}

- (id)sourceForSourceID:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained sourceManager];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v13 = 0;
  v7 = [v5 clientSourceForPersistentID:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = v7;
  }

  else if (([v8 hk_isHealthKitErrorWithCode:118] & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v15 = a3;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve source for %lld: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)orderedSourceIDsWithUnorderedIDs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained sourceOrderManager];
  quantityType = self->_quantityType;
  v16 = 0;
  v8 = [v6 orderedSourceIDsWithUnorderedIDs:v4 objectType:quantityType error:&v16];
  v9 = v16;

  v10 = v8;
  if (!v8)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    v10 = v4;
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v15 = self->_quantityType;
      *buf = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve ordered source ids for %{public}@: %{public}@", buf, 0x16u);
      v10 = v4;
    }
  }

  v12 = v10;

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end