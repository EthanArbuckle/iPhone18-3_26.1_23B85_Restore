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
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142CEC;
  block[3] = &unk_100252830;
  block[4] = &v8;
  objc_copyWeak(&v6, &location);
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return queue;
}

- (unint64_t)userSelectedPhraseType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100142DF0;
  v5[3] = &unk_100253BD0;
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
  v4 = kVTPreferencesVTPhraseTypeDidChangeDarwinNotification;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100142E60, v4, 0, CFNotificationSuspensionBehaviorDrop);
}

- (void)vtPhraseTypeDidChangeNotificationReceived
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100142F0C;
  v4[3] = &unk_100253510;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (unint64_t)_fetchUserSelectedPhraseType
{
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
      v9 = "[CSVoiceTriggerUserSelectedPhrase _fetchUserSelectedPhraseType]";
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error fetching the user selected phrase type %@", buf, 0x16u);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSVoiceTriggerUserSelectedPhrase dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kVTPreferencesVTPhraseTypeDidChangeDarwinNotification, 0);
  v5.receiver = self;
  v5.super_class = CSVoiceTriggerUserSelectedPhrase;
  [(CSVoiceTriggerUserSelectedPhrase *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014336C;
  v7[3] = &unk_100253C48;
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
      v11 = +[VTPreferences sharedPreferences];
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