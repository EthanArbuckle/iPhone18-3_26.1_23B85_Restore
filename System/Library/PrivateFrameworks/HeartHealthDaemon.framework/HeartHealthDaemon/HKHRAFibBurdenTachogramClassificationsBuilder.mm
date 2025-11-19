@interface HKHRAFibBurdenTachogramClassificationsBuilder
- (HKHRAFibBurdenTachogramClassificationsBuilder)initWithProfile:(id)a3 classifier:(id)a4;
- (id)buildClassificationsAndWaitForNewClassificationSaves:(BOOL)a3;
- (id)classificationForSample:(id)a3;
- (void)_saveNewClassification:(id)a3;
- (void)addSampleToClassify:(id)a3 dayIndex:(int64_t)a4;
@end

@implementation HKHRAFibBurdenTachogramClassificationsBuilder

- (HKHRAFibBurdenTachogramClassificationsBuilder)initWithProfile:(id)a3 classifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HKHRAFibBurdenTachogramClassificationsBuilder;
  v8 = [(HKHRAFibBurdenTachogramClassificationsBuilder *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_classifier, a4);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    julianDayToClassifications = v9->_julianDayToClassifications;
    v9->_julianDayToClassifications = v10;

    v12 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v12;

    v14 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v14;
  }

  return v9;
}

- (void)addSampleToClassify:(id)a3 dayIndex:(int64_t)a4
{
  v6 = [(HKHRAFibBurdenTachogramClassificationsBuilder *)self classificationForSample:a3];
  if (v6)
  {
    v15 = v6;
    julianDayToClassifications = self->_julianDayToClassifications;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v9 = [(NSMutableDictionary *)julianDayToClassifications objectForKey:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v12 = v11;

    [v12 addObject:v15];
    v13 = self->_julianDayToClassifications;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v13 setObject:v12 forKey:v14];

    v6 = v15;
  }
}

- (id)buildClassificationsAndWaitForNewClassificationSaves:(BOOL)a3
{
  if (a3)
  {
    group = self->_group;
    v5 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(group, v5))
    {
      _HKInitializeLogging();
      v6 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(HKHRAFibBurdenTachogramClassificationsBuilder *)self buildClassificationsAndWaitForNewClassificationSaves:v6];
      }
    }
  }

  v7 = [(NSMutableDictionary *)self->_julianDayToClassifications hk_allValuesBySortedKeys];

  return v7;
}

- (id)classificationForSample:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__6;
  v30 = __Block_byref_object_dispose__6;
  v31 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__HKHRAFibBurdenTachogramClassificationsBuilder_classificationForSample___block_invoke;
  v22[3] = &unk_278660CB0;
  v24 = &v26;
  v25 = 0;
  v7 = v4;
  v23 = v7;
  v8 = [(HDHealthEntity *)HDHRSampleClassificationEntity performReadTransactionWithHealthDatabase:v6 error:&v25 block:v22];
  v9 = v25;

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = [v7 UUID];
      *buf = 138412802;
      v33 = self;
      v34 = 2112;
      v35 = v21;
      v36 = 2112;
      v37 = v9;
      _os_log_error_impl(&dword_229486000, v11, OS_LOG_TYPE_ERROR, "[%@] Error when retrieving cached tachogram classification for sample UUID %@: %@", buf, 0x20u);
    }
  }

  if (v8 && v27[5])
  {
    v12 = [HKHRAFibBurdenTachogramClassificationProvider alloc];
    v13 = [(HKHRAFibBurdenTachogramClassificationProvider *)v12 initWithSampleClassification:v27[5]];
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKHRAFibBurdenLogForCategory();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

    if (v15)
    {
      v16 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v7 UUID];
        *buf = 138412546;
        v33 = self;
        v34 = 2112;
        v35 = v17;
        _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_INFO, "[%@] Classifying tachogram sample with UUID %@", buf, 0x16u);
      }
    }

    v13 = [(HKHRAFibBurdenTachogramClassifier *)self->_classifier classifyHeartbeatSeries:v7];
    v18 = [(HKHRAFibBurdenTachogramClassificationProvider *)v13 sampleClassification];
    [(HKHRAFibBurdenTachogramClassificationsBuilder *)self _saveNewClassification:v18];
  }

  _Block_object_dispose(&v26, 8);
  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __73__HKHRAFibBurdenTachogramClassificationsBuilder_classificationForSample___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 UUID];
  v8 = [HDHRSampleClassificationEntity sampleClassificationWithSampleUUID:v7 transaction:v6 error:a3];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

- (void)_saveNewClassification:(id)a3
{
  v4 = a3;
  dispatch_group_enter(self->_group);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HKHRAFibBurdenTachogramClassificationsBuilder__saveNewClassification___block_invoke;
  v7[3] = &unk_27865FE98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __72__HKHRAFibBurdenTachogramClassificationsBuilder__saveNewClassification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained database];
  v13 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HKHRAFibBurdenTachogramClassificationsBuilder__saveNewClassification___block_invoke_2;
  v11[3] = &unk_278660CD8;
  v4 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v4;
  v5 = [(HDHealthEntity *)HDHRSampleClassificationEntity performWriteTransactionWithHealthDatabase:v3 error:&v13 block:v11];
  v6 = v13;

  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) sampleUUID];
      *buf = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_229486000, v7, OS_LOG_TYPE_ERROR, "[%@] Error while saving tachogram classification for sample with UUID %@: %@", buf, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 32));

  v8 = *MEMORY[0x277D85DE8];
}

BOOL __72__HKHRAFibBurdenTachogramClassificationsBuilder__saveNewClassification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  _HKInitializeLogging();
  v6 = HKHRAFibBurdenLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

  if (v7)
  {
    v8 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) sampleUUID];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_INFO, "[%@] Caching classification with UUID %@", &v15, 0x16u);
    }
  }

  v11 = [HDHRSampleClassificationEntity insertSampleClassification:*(a1 + 40) transaction:v5 error:a3];
  v12 = v11 != 0;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)buildClassificationsAndWaitForNewClassificationSaves:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%@] Took longer than 1 minute to save all tachogram classifications, no longer waiting.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end