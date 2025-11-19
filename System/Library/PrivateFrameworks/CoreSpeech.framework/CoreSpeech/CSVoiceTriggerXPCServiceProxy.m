@interface CSVoiceTriggerXPCServiceProxy
+ (id)sharedInstance;
- (CSVoiceTriggerXPCServiceProxy)initWithAssertionMonitor:(id)a3;
- (id)_fetchAssertionMonitor;
- (id)fetchVoiceTriggerStats;
- (void)enableVoiceTrigger:(BOOL)a3 withAssertion:(id)a4 timestamp:(double)a5;
- (void)notifyServiceConnectionLost;
- (void)notifyVoiceTriggeredSiriSessionCancelled;
- (void)setPhraseSpotterBypassing:(BOOL)a3 timeout:(double)a4;
- (void)setRaiseToSpeakBypassing:(BOOL)a3 timeout:(double)a4;
@end

@implementation CSVoiceTriggerXPCServiceProxy

- (id)fetchVoiceTriggerStats
{
  v2 = +[CSVoiceTriggerDataCollector sharedInstance];
  v3 = [v2 fetchVoiceTriggerHeartBeatMetrics];

  return v3;
}

- (void)notifyServiceConnectionLost
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[CSVoiceTriggerXPCServiceProxy notifyServiceConnectionLost]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s HandleDisconnect", buf, 0xCu);
  }

  v4 = [(NSMutableSet *)self->_activationAssertions copy];
  if ([v4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          v11 = +[NSProcessInfo processInfo];
          [v11 systemUptime];
          [(CSVoiceTriggerXPCServiceProxy *)self enableVoiceTrigger:0 withAssertion:v10 timestamp:?];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  [(CSVoiceTriggerXPCServiceProxy *)self setPhraseSpotterBypassing:0 timeout:0.0, v12];
  [(CSVoiceTriggerXPCServiceProxy *)self setRaiseToSpeakBypassing:0 timeout:0.0];
}

- (void)notifyVoiceTriggeredSiriSessionCancelled
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSVoiceTriggerXPCServiceProxy notifyVoiceTriggeredSiriSessionCancelled]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v3, 0xCu);
  }
}

- (void)setRaiseToSpeakBypassing:(BOOL)a3 timeout:(double)a4
{
  if (qword_10029DFC0 != -1)
  {
    dispatch_once(&qword_10029DFC0, &stru_10024E708);
  }

  objc_initWeak(&location, self);
  v7 = qword_10029DFC8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EE7C;
  block[3] = &unk_10024E6E8;
  block[4] = self;
  v10 = a3;
  v9[1] = *&a4;
  objc_copyWeak(v9, &location);
  dispatch_sync(v7, block);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)setPhraseSpotterBypassing:(BOOL)a3 timeout:(double)a4
{
  if (qword_10029DFA8 != -1)
  {
    dispatch_once(&qword_10029DFA8, &stru_10024E6C0);
  }

  objc_initWeak(&location, self);
  v7 = qword_10029DFB0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F434;
  block[3] = &unk_10024E6E8;
  block[4] = self;
  v10 = a3;
  v9[1] = *&a4;
  objc_copyWeak(v9, &location);
  dispatch_sync(v7, block);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)enableVoiceTrigger:(BOOL)a3 withAssertion:(id)a4 timestamp:(double)a5
{
  v6 = a3;
  v8 = a4;
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v18 = "[CSVoiceTriggerXPCServiceProxy enableVoiceTrigger:withAssertion:timestamp:]";
    v19 = 2082;
    v20 = "[CSVoiceTriggerXPCServiceProxy enableVoiceTrigger:withAssertion:timestamp:]";
    v21 = 1026;
    v22 = v6;
    v23 = 2114;
    v24 = v8;
    v25 = 2050;
    v26 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s ::: %{public}s enable: %{public}d reason: %{public}@ timestamp : %{public}lf", buf, 0x30u);
  }

  if (qword_10029DF88 == -1)
  {
    if (v8)
    {
LABEL_5:
      v10 = qword_10029DFA0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001FAF0;
      v12[3] = &unk_100250678;
      v16 = v6;
      v15 = a5;
      v13 = v8;
      v14 = self;
      dispatch_sync(v10, v12);

      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&qword_10029DF88, &stru_10024E6A0);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[CSVoiceTriggerXPCServiceProxy enableVoiceTrigger:withAssertion:timestamp:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Ignoring request to enable/disable voice trigger with nil reason.", buf, 0xCu);
  }

LABEL_9:
}

- (id)_fetchAssertionMonitor
{
  assertionMonitor = self->_assertionMonitor;
  if (assertionMonitor)
  {
    v3 = assertionMonitor;
  }

  else
  {
    v3 = +[CSSiriAssertionMonitor sharedInstance];
  }

  return v3;
}

- (CSVoiceTriggerXPCServiceProxy)initWithAssertionMonitor:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CSVoiceTriggerXPCServiceProxy;
  v6 = [(CSVoiceTriggerXPCServiceProxy *)&v13 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_assertionMonitor, a3);
    }

    v8 = +[NSMutableSet set];
    activationAssertions = v7->_activationAssertions;
    v7->_activationAssertions = v8;

    *&v7->_isPhraseSpotterBypassed = 0;
    v10 = +[NSHashTable weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v10;
  }

  return v7;
}

+ (id)sharedInstance
{
  if (qword_10029DF80 != -1)
  {
    dispatch_once(&qword_10029DF80, &stru_10024E680);
  }

  v3 = qword_10029DF78;

  return v3;
}

@end