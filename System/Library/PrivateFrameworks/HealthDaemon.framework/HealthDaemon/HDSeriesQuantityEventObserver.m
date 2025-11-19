@interface HDSeriesQuantityEventObserver
- (HDSeriesQuantityEventObserver)initWithProfile:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation HDSeriesQuantityEventObserver

- (HDSeriesQuantityEventObserver)initWithProfile:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDSeriesQuantityEventObserver;
  v5 = [(HDSeriesQuantityEventObserver *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, v4);
    v8 = [v4 dataManager];
    v9 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB960]];
    [v8 addObserver:v6 forDataType:v9];

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v11 = [WeakRetained dataManager];
    v12 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9A0]];
    [v11 addObserver:v6 forDataType:v12];
  }

  return v6;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB960]];
  v34 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9A0]];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    v10 = *MEMORY[0x277CCCB88];
    v11 = *MEMORY[0x277CCCB58];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v13 _source];
        if (![v14 _isLocalDevice])
        {
          goto LABEL_11;
        }

        v15 = [v13 endDate];
        [v15 timeIntervalSinceNow];
        v17 = v16;

        if (v17 >= -600.0)
        {
          v18 = [v13 sampleType];
          v19 = [v18 isEqual:v35];

          v20 = v11;
          if ((v19 & 1) != 0 || ([v13 sampleType], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqual:", v34), v21, v20 = v10, v22))
          {
            v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v20];
            [v6 addObject:v14];
LABEL_11:

            continue;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v8);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = v6;
  v23 = [v36 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v36);
        }

        v27 = *(*(&v38 + 1) + 8 * j);
        if (self)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v51 = self;
            v52 = 2114;
            v53 = v27;
            _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Observed addition of notification event. Requesting series data of type %{public}@ to get frozen.", buf, 0x16u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_profile);
          v30 = [WeakRetained dataCollectionManager];
          v31 = [MEMORY[0x277CBEAA8] date];
          v32 = [MEMORY[0x277CBEB98] setWithObject:v27];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __54__HDSeriesQuantityEventObserver__freezeSeriesForType___block_invoke;
          v46[3] = &unk_278616020;
          v46[4] = self;
          v47 = v27;
          [v30 requestAggregationThroughDate:v31 types:v32 mode:0 options:3 completion:v46];
        }
      }

      v24 = [v36 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v24);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __54__HDSeriesQuantityEventObserver__freezeSeriesForType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = [WeakRetained daemon];
    v8 = [v7 behavior];
    v9 = [v8 isAppleWatch];

    if (v9)
    {
      v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v11 = [v10 nanoSyncManager];
      [v11 syncHealthDataWithOptions:0 reason:@"audio-exposure-event" completion:0];
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Error freezing series of type %{public}@. %{public}@", &v16, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end