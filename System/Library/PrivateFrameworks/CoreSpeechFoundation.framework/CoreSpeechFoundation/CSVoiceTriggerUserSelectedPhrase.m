@interface CSVoiceTriggerUserSelectedPhrase
- (BOOL)multiPhraseSelected;
- (CSVoiceTriggerUserSelectedPhrase)initWithEndpointId:(id)a3 vtPreferences:(id)a4;
- (CSVoiceTriggerUserSelectedPhraseDelegate)delegate;
- (unint64_t)_fetchUserSelectedPhraseType;
- (unint64_t)userSelectedPhraseType;
- (void)_registerForNotification;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)vtPhraseTypeDidChangeNotificationReceived;
@end

@implementation CSVoiceTriggerUserSelectedPhrase

- (CSVoiceTriggerUserSelectedPhraseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)multiPhraseSelected
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CSVoiceTriggerUserSelectedPhrase_multiPhraseSelected__block_invoke;
  block[3] = &unk_1E865C4D8;
  block[4] = &v8;
  objc_copyWeak(&v6, &location);
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return queue;
}

void __55__CSVoiceTriggerUserSelectedPhrase_multiPhraseSelected__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = [WeakRetained mphSelected];
}

- (unint64_t)userSelectedPhraseType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CSVoiceTriggerUserSelectedPhrase_userSelectedPhraseType__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_registerForNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x1E69E14A0];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _vtPhraseTypeDidChangeNotificationReceived, v4, 0, CFNotificationSuspensionBehaviorDrop);
}

- (void)vtPhraseTypeDidChangeNotificationReceived
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__CSVoiceTriggerUserSelectedPhrase_vtPhraseTypeDidChangeNotificationReceived__block_invoke;
  v4[3] = &unk_1E865CA40;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __77__CSVoiceTriggerUserSelectedPhrase_vtPhraseTypeDidChangeNotificationReceived__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_loadWeakRetained((a1 + 32));
  [v2 setUSelectedPhraseType:{objc_msgSend(v2, "_fetchUserSelectedPhraseType")}];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained mphSelected];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 _isMultiPhrase:{objc_msgSend(v5, "uSelectedPhraseType")}];

  if (v4 != v6)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[CSVoiceTriggerUserSelectedPhrase vtPhraseTypeDidChangeNotificationReceived]_block_invoke";
      v17 = 1024;
      v18 = v4;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s User multi-phrase selection change from %d -> %d", &v15, 0x18u);
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setMphSelected:v6];

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 delegate];

    if (v10)
    {
      v11 = objc_loadWeakRetained((a1 + 32));
      v12 = [v11 delegate];
      v13 = objc_loadWeakRetained((a1 + 32));
      [v12 CSVoiceTriggerUserSelectedPhraseDidChange:{objc_msgSend(v13, "mphSelected")}];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_fetchUserSelectedPhraseType
{
  v13 = *MEMORY[0x1E69E9840];
  if (+[CSUtils isDarwinOS])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2 * (self->_endpointDeviceId != 0);
  }

  v4 = [VTPreferences getUserPreferredVoiceTriggerPhraseTypeForDeviceType:"getUserPreferredVoiceTriggerPhraseTypeForDeviceType:endpointId:error:" endpointId:v3 error:?];
  v5 = 0;
  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[CSVoiceTriggerUserSelectedPhrase _fetchUserSelectedPhraseType]";
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Error fetching the user selected phrase type %@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSVoiceTriggerUserSelectedPhrase dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69E14A0], 0);
  v6.receiver = self;
  v6.super_class = CSVoiceTriggerUserSelectedPhrase;
  [(CSVoiceTriggerUserSelectedPhrase *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CSVoiceTriggerUserSelectedPhrase_setDelegate___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSVoiceTriggerUserSelectedPhrase)initWithEndpointId:(id)a3 vtPreferences:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CSVoiceTriggerUserSelectedPhrase;
  v9 = [(CSVoiceTriggerUserSelectedPhrase *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointDeviceId, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [MEMORY[0x1E69E1480] sharedPreferences];
    }

    vtPrefrences = v10->_vtPrefrences;
    v10->_vtPrefrences = v11;

    v13 = [CSUtils getSerialQueue:@"com.apple.com.CSUserSelectedVTPhraseMonitor" qualityOfService:33];
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = [(CSVoiceTriggerUserSelectedPhrase *)v10 _fetchUserSelectedPhraseType];
    v10->_uSelectedPhraseType = v15;
    v10->_mphSelected = [(CSVoiceTriggerUserSelectedPhrase *)v10 _isMultiPhrase:v15];
    [(CSVoiceTriggerUserSelectedPhrase *)v10 _registerForNotification];
  }

  return v10;
}

@end