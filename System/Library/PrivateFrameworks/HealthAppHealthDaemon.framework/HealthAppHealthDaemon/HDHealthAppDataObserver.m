@interface HDHealthAppDataObserver
- (HDHealthAppDataObserver)initWithProfile:(id)a3 debounceTime:(double)a4;
- (HDProfile)profile;
- (id)alertSampleTypes;
- (void)dealloc;
- (void)debounceRunBackgroundGeneration;
- (void)observeForAlertSampleTypes;
- (void)runBackgroundGeneration;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)start;
@end

@implementation HDHealthAppDataObserver

- (HDHealthAppDataObserver)initWithProfile:(id)a3 debounceTime:(double)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = HDHealthAppDataObserver;
  v7 = [(HDHealthAppDataObserver *)&v24 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_profile, v6);
    v10 = [v6 dataManager];
    dataManager = v8->_dataManager;
    v8->_dataManager = v10;

    v12 = objc_alloc_init(HDHAHealthPluginHostFeedGenerator);
    feedGenerator = v8->_feedGenerator;
    v8->_feedGenerator = v12;

    v14 = HKCreateSerialDispatchQueue();
    debounceQueue = v8->_debounceQueue;
    v8->_debounceQueue = v14;

    objc_initWeak(&location, v8);
    v16 = objc_alloc(MEMORY[0x277CCDD98]);
    v17 = [(HDHealthAppDataObserver *)v8 debounceQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__HDHealthAppDataObserver_initWithProfile_debounceTime___block_invoke;
    v21[3] = &unk_278658190;
    objc_copyWeak(&v22, &location);
    v18 = [v16 initWithMode:1 queue:v17 delay:v21 block:a4];
    delayedOperation = v8->_delayedOperation;
    v8->_delayedOperation = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __56__HDHealthAppDataObserver_initWithProfile_debounceTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runBackgroundGeneration];
}

- (void)dealloc
{
  [(_HKDelayedOperation *)self->_delayedOperation invalidate];
  v3.receiver = self;
  v3.super_class = HDHealthAppDataObserver;
  [(HDHealthAppDataObserver *)&v3 dealloc];
}

- (void)start
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained cloudSyncManager];
  [v4 addObserver:self queue:self->_debounceQueue];

  [(HDHealthAppDataObserver *)self observeForAlertSampleTypes];
}

- (void)observeForAlertSampleTypes
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HDHealthAppDataObserver *)self alertSampleTypes];
  _HKInitializeLogging();
  v4 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_22939E000, v4, OS_LOG_TYPE_DEFAULT, "Observing samples %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HDHealthAppDataObserver *)self alertSampleTypes];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(HDHealthAppDataObserver *)self dataManager];
        [v11 addSynchronousObserver:self forSampleType:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)alertSampleTypes
{
  v16[11] = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277CCD720] atrialFibrillationEventType];
  v16[0] = v15;
  v14 = [MEMORY[0x277CCD720] environmentalAudioExposureEventType];
  v16[1] = v14;
  v2 = [MEMORY[0x277CCD720] headphoneAudioExposureEventType];
  v16[2] = v2;
  v3 = [MEMORY[0x277CCD720] bradycardiaType];
  v16[3] = v3;
  v4 = [MEMORY[0x277CCD720] tachycardiaType];
  v16[4] = v4;
  v5 = [MEMORY[0x277CCD720] workoutType];
  v16[5] = v5;
  v6 = [MEMORY[0x277CCD720] lowCardioFitnessEventType];
  v16[6] = v6;
  v7 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v16[7] = v7;
  v8 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:250];
  v16[8] = v8;
  v9 = [MEMORY[0x277CCD0C0] hypertensionEventType];
  v16[9] = v9;
  v10 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:276];
  v16[10] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22939E000, v6, OS_LOG_TYPE_DEFAULT, "HDHealthAppDataObserver received notification for an observed sample type", v10, 2u);
  }

  v7 = [v5 firstObject];
  v8 = [v7 sampleType];

  if (v8)
  {
    [(HDHealthAppDataObserver *)self debounceRunBackgroundGeneration];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDHealthAppDataObserver samplesAdded:v5 anchor:v9];
    }
  }
}

- (void)debounceRunBackgroundGeneration
{
  v3 = [(HDHealthAppDataObserver *)self debounceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDHealthAppDataObserver_debounceRunBackgroundGeneration__block_invoke;
  block[3] = &unk_2786581B8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__HDHealthAppDataObserver_debounceRunBackgroundGeneration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delayedOperation];
  [v1 execute];
}

- (void)runBackgroundGeneration
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_debounceQueue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained cloudSyncManager];
  v16 = 0;
  v5 = [v4 restoreCompletionDateWithError:&v16];
  v6 = v16;

  if (v5)
  {
LABEL_6:
    v9 = objc_loadWeakRetained(&self->_profile);
    v10 = [v9 profileType];
    v11 = v10 != 1;

    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "false";
      if (v10 == 1)
      {
        v13 = "true";
      }

      *buf = 136315138;
      v18 = v13;
      _os_log_impl(&dword_22939E000, v12, OS_LOG_TYPE_DEFAULT, "HDHealthAppDataObserver running background generation with commitUrgentTransaction %s", buf, 0xCu);
    }

    v14 = v10 == 1;

    v8 = [(HDHealthAppDataObserver *)self feedGenerator];
    [v8 runBackgroundGenerationForPluginIdentifiers:MEMORY[0x277CBEBF8] commitUrgentTransaction:v14 feedItemsOnly:v11];
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HDHealthAppDataObserver *)v8 runBackgroundGeneration];
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, "HDHealthAppDataObserver skipping generation because cloud sync restore is not yet complete.", buf, 2u);
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)samplesAdded:(void *)a1 anchor:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 firstObject];
  v5 = 138477827;
  v6 = v3;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "Failed to get sample type for sample %{private}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end