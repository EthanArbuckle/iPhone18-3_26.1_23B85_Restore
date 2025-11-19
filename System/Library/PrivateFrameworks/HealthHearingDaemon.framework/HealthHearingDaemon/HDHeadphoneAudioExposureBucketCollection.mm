@interface HDHeadphoneAudioExposureBucketCollection
- (HDHeadphoneAudioExposureBucketCollection)init;
- (HDHeadphoneAudioExposureBucketCollection)initWithBuckets:(id)a3;
- (id)_lock_snapshotStatisticsForNowDate:(id)a3 error:(id *)a4;
- (id)_lock_updateWithSampleBatch:(id)a3 error:(id *)a4;
- (id)_updateWithSampleBatch:(id)a3 needsRebuild:(BOOL *)a4 error:(id *)a5;
- (id)snapshotStatisticsForNowDate:(id)a3 error:(id *)a4;
- (id)unitTesting_snapshotBuckets;
- (void)clear;
- (void)insertBuckets:(id)a3;
- (void)pruneWithNowDate:(id)a3;
@end

@implementation HDHeadphoneAudioExposureBucketCollection

- (HDHeadphoneAudioExposureBucketCollection)init
{
  v7.receiver = self;
  v7.super_class = HDHeadphoneAudioExposureBucketCollection;
  v2 = [(HDHeadphoneAudioExposureBucketCollection *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    storage = v2->_storage;
    v2->_storage = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = v2;
  }

  return v2;
}

- (HDHeadphoneAudioExposureBucketCollection)initWithBuckets:(id)a3
{
  v4 = a3;
  v5 = [(HDHeadphoneAudioExposureBucketCollection *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    storage = v5->_storage;
    v5->_storage = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    [(HDHeadphoneAudioExposureBucketCollection *)v5 insertBuckets:v4];
    v8 = v5;
  }

  return v5;
}

- (id)snapshotStatisticsForNowDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(HDHeadphoneAudioExposureBucketCollection *)self _lock_snapshotStatisticsForNowDate:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)_lock_snapshotStatisticsForNowDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  storage = self->_storage;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__HDHeadphoneAudioExposureBucketCollection__lock_snapshotStatisticsForNowDate_error___block_invoke;
  v13[3] = &unk_2796C6480;
  v8 = v6;
  v14 = v8;
  v9 = [(NSMutableArray *)storage hk_firstObjectPassingTest:v13];
  if (v9 || ([(NSMutableArray *)self->_storage lastObject], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v9 snapshotStatisticsWithError:a4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:@"missing all buckets"];
    v11 = 0;
  }

  return v11;
}

uint64_t __85__HDHeadphoneAudioExposureBucketCollection__lock_snapshotStatisticsForNowDate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dateInterval];
  v4 = [v3 containsDate:*(a1 + 32)];

  return v4;
}

- (void)clear
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_storage removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)pruneWithNowDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  storage = self->_storage;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HDHeadphoneAudioExposureBucketCollection_pruneWithNowDate___block_invoke;
  v9[3] = &unk_2796C64A8;
  v10 = v4;
  v11 = v5;
  v12 = self;
  v7 = v5;
  v8 = v4;
  [(NSMutableArray *)storage enumerateObjectsUsingBlock:v9];
  [(NSMutableArray *)self->_storage removeObjectsAtIndexes:v7];
  os_unfair_lock_unlock(&self->_lock);
}

void __61__HDHeadphoneAudioExposureBucketCollection_pruneWithNowDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 isExpiredForNowDate:*(a1 + 32)])
  {
    v5 = [*(a1 + 40) count];
    if (v5 >= [*(*(a1 + 48) + 8) count] - 1)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
      {
        __61__HDHeadphoneAudioExposureBucketCollection_pruneWithNowDate___block_invoke_cold_1(v7);
      }
    }

    else
    {
      v6 = *(a1 + 40);

      [v6 addIndex:a3];
    }
  }
}

- (void)insertBuckets:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_storage addObjectsFromArray:v4];
    [(NSMutableArray *)self->_storage sortUsingComparator:&__block_literal_global_2];
    os_unfair_lock_unlock(&self->_lock);
  }
}

uint64_t __58__HDHeadphoneAudioExposureBucketCollection_insertBuckets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateInterval];
  v7 = [v6 endDate];
  v8 = [v5 dateInterval];
  v9 = [v8 endDate];
  v10 = [v7 compare:v9];

  if (!v10)
  {
    v11 = [v4 dateInterval];
    v12 = [v11 startDate];
    v13 = [v5 dateInterval];
    v14 = [v13 startDate];
    v10 = [v12 compare:v14];
  }

  return v10;
}

- (id)_updateWithSampleBatch:(id)a3 needsRebuild:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(HDHeadphoneAudioExposureBucketCollection *)self _lock_updateWithSampleBatch:v8 error:a5];

  if (([v9 includedSeries] & 1) == 0)
  {
    self->_dirty = 1;
  }

  if (v9)
  {
    v10 = [(NSMutableArray *)self->_storage copy];
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (self->_dirty)
  {
    if (a4)
    {
      *a4 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
      {
        [HDHeadphoneAudioExposureBucketCollection _updateWithSampleBatch:v11 needsRebuild:? error:?];
      }
    }
  }

  return v10;
}

- (id)_lock_updateWithSampleBatch:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [v6 samples];
  v8 = [v7 count];

  if (v8)
  {
    v9 = +[HDHeadphoneExposureStatisticUpdateResult resultForAggregation];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_storage;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v20 + 1) + 8 * i) updateWithSampleBatch:v6 error:{a4, v20}];
          if (!v15)
          {

            v17 = 0;
            goto LABEL_12;
          }

          v16 = v15;
          [v9 combineWithResult:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = v9;
LABEL_12:
  }

  else
  {
    v17 = +[HDHeadphoneExposureStatisticUpdateResult resultForEmptySamplesAdded];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)unitTesting_snapshotBuckets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_storage hk_map:&__block_literal_global_306];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

id __71__HDHeadphoneAudioExposureBucketCollection_unitTesting_snapshotBuckets__block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v2 = [a2 snapshotStatisticsWithError:&v7];
  v3 = v7;
  v4 = v3;
  if (!v2 || v3)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
    {
      __71__HDHeadphoneAudioExposureBucketCollection_unitTesting_snapshotBuckets__block_invoke_cold_1(v4, v5);
    }
  }

  return v2;
}

void __71__HDHeadphoneAudioExposureBucketCollection_unitTesting_snapshotBuckets__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_251764000, a2, OS_LOG_TYPE_FAULT, "Failed to compute current statistics: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end