@interface HDStatisticsCollectionCalculatorDefaultSourceOrderProvider
- (HDProfile)profile;
- (HDStatisticsCollectionCalculatorDefaultSourceOrderProvider)initWithProfile:(id)profile quantityType:(id)type;
- (id)orderedSourceIDsWithUnorderedIDs:(id)ds;
- (id)sourceForSourceID:(int64_t)d;
@end

@implementation HDStatisticsCollectionCalculatorDefaultSourceOrderProvider

- (HDStatisticsCollectionCalculatorDefaultSourceOrderProvider)initWithProfile:(id)profile quantityType:(id)type
{
  profileCopy = profile;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = HDStatisticsCollectionCalculatorDefaultSourceOrderProvider;
  v8 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    v10 = [typeCopy copy];
    quantityType = v9->_quantityType;
    v9->_quantityType = v10;
  }

  return v9;
}

- (id)sourceForSourceID:(int64_t)d
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v13 = 0;
  v7 = [sourceManager clientSourceForPersistentID:v6 error:&v13];
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
      dCopy = d;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve source for %lld: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)orderedSourceIDsWithUnorderedIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceOrderManager = [WeakRetained sourceOrderManager];
  quantityType = self->_quantityType;
  v16 = 0;
  v8 = [sourceOrderManager orderedSourceIDsWithUnorderedIDs:dsCopy objectType:quantityType error:&v16];
  v9 = v16;

  v10 = v8;
  if (!v8)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    v10 = dsCopy;
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v15 = self->_quantityType;
      *buf = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve ordered source ids for %{public}@: %{public}@", buf, 0x16u);
      v10 = dsCopy;
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