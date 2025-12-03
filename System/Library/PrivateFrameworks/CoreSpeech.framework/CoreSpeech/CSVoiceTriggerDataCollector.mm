@interface CSVoiceTriggerDataCollector
+ (id)sharedInstance;
- (CSVoiceTriggerDataCollector)init;
- (id)_filteredVTEIArray;
- (id)fetchVoiceTriggerHeartBeatMetrics;
- (void)CSVoiceTriggerEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled;
- (void)_createAndSubmitRejectLoggingDictWithSource:(id)source withPHSAcceptInfo:(id)info;
- (void)_submitToggleReport;
- (void)addVTAcceptEntryAndSubmit:(id)submit;
- (void)addVTRejectEntry:(id)entry truncateData:(BOOL)data;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
@end

@implementation CSVoiceTriggerDataCollector

- (void)CSVoiceTriggerEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100035D58;
  v5[3] = &unk_100253BF8;
  enabledCopy = enabled;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035FCC;
  block[3] = &unk_100253900;
  successfullyCopy = successfully;
  v13 = contextCopy;
  selfCopy = self;
  v11 = contextCopy;
  dispatch_async(queue, block);
}

- (void)_submitToggleReport
{
  v3 = +[CSVoiceTriggerStatistics sharedInstance];
  getPHSRejectCount = [v3 getPHSRejectCount];

  v5 = +[CSVoiceTriggerStatistics sharedInstance];
  getVTRejectCount = [v5 getVTRejectCount];

  vteiList = self->_vteiList;
  if (vteiList && ([(NSMutableArray *)vteiList lastObject], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    lastObject = [(NSMutableArray *)self->_vteiList lastObject];
    v10 = [lastObject objectForKeyedSubscript:kVTEIsatNumberTrainingUtterances];
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v22[0] = kVTEIsatNumberTrainingUtterances;
  v12 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v23[0] = v12;
  v22[1] = kVTEILastConsecutiveVTRejects;
  v13 = [NSNumber numberWithUnsignedInteger:getVTRejectCount];
  v23[1] = v13;
  v22[2] = kVTEILastConsecutivePHSRejects;
  v14 = [NSNumber numberWithUnsignedInteger:getPHSRejectCount];
  v23[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  v16 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[CSVoiceTriggerDataCollector _submitToggleReport]";
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Submitting VT toggle analytics: %@", &v18, 0x16u);
  }

  v17 = +[AFAnalytics sharedAnalytics];
  [v17 logEventWithType:4708 context:v15];
}

- (void)_createAndSubmitRejectLoggingDictWithSource:(id)source withPHSAcceptInfo:(id)info
{
  sourceCopy = source;
  infoCopy = info;
  _filteredVTEIArray = [(CSVoiceTriggerDataCollector *)self _filteredVTEIArray];
  if ([_filteredVTEIArray count])
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = @"unkown";
    if (sourceCopy)
    {
      v10 = sourceCopy;
    }

    v11 = v10;
    [v9 setObject:v11 forKey:kVTEISiriActivationRecordType];
    v12 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
    [v9 setObject:v12 forKey:kVTEItriggerEndMachTime];

    [v9 setObject:_filteredVTEIArray forKey:kVTEIRejectInfoList];
    if (infoCopy)
    {
      [v9 setObject:infoCopy forKey:kVTEIPHSAcceptEventInfo];
    }

    v13 = +[AFAnalytics sharedAnalytics];
    [v13 logEventWithType:4709 context:v9];

    v14 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      vteiList = self->_vteiList;
      v16 = v14;
      v19 = 136315650;
      v20 = "[CSVoiceTriggerDataCollector _createAndSubmitRejectLoggingDictWithSource:withPHSAcceptInfo:]";
      v21 = 2048;
      v22 = [(NSMutableArray *)vteiList count];
      v23 = 2112;
      v24 = sourceCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Submitting %lu VT/PHS reject logs for siri record type %@", &v19, 0x20u);
    }
  }

  v17 = [[NSMutableArray alloc] initWithCapacity:5];
  v18 = self->_vteiList;
  self->_vteiList = v17;
}

- (id)_filteredVTEIArray
{
  v3 = mach_absolute_time();
  v22 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_vteiList;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = v4;
  v7 = *v25;
  *&v5 = 136315650;
  v21 = v5;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v24 + 1) + 8 * i);
      v10 = [v9 objectForKeyedSubscript:{@"dcTriggerEndMachTime", v21}];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      [CSFTimeUtils hostTimeToTimeInterval:v3 - unsignedIntegerValue];
      v13 = v12;
      v14 = [NSMutableDictionary dictionaryWithDictionary:v9];
      [v14 removeObjectForKey:@"dcTriggerEndMachTime"];
      if (v13 <= 30.0)
      {
        [v22 addObject:v14];
        v18 = CSLogCategoryVT;
        if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = v21;
        v29 = "[CSVoiceTriggerDataCollector _filteredVTEIArray]";
        v30 = 2048;
        v31 = unsignedIntegerValue;
        v32 = 2048;
        v33 = v13;
        v16 = v18;
        v17 = "%s Collecting VT/PHS reject event from time: %llu, delta %f secs";
      }

      else
      {
        v15 = CSLogCategoryVT;
        if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = v21;
        v29 = "[CSVoiceTriggerDataCollector _filteredVTEIArray]";
        v30 = 2048;
        v31 = unsignedIntegerValue;
        v32 = 2048;
        v33 = v13;
        v16 = v15;
        v17 = "%s Rejecting VT/PHS reject event from time: %llu, delta %f secs";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x20u);
LABEL_12:
    }

    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v6);
LABEL_14:

  if ([v22 count])
  {
    v19 = [v22 copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)addVTAcceptEntryAndSubmit:(id)submit
{
  submitCopy = submit;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100036804;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = submitCopy;
  v6 = submitCopy;
  dispatch_async(queue, v7);
}

- (void)addVTRejectEntry:(id)entry truncateData:(BOOL)data
{
  entryCopy = entry;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036914;
  block[3] = &unk_100253900;
  v10 = entryCopy;
  selfCopy = self;
  dataCopy = data;
  v8 = entryCopy;
  dispatch_async(queue, block);
}

- (id)fetchVoiceTriggerHeartBeatMetrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100036CAC;
  v10 = sub_100036CBC;
  v11 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036CC4;
  block[3] = &unk_100253580;
  block[4] = &v6;
  dispatch_sync(queue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CSVoiceTriggerDataCollector)init
{
  v17.receiver = self;
  v17.super_class = CSVoiceTriggerDataCollector;
  v2 = [(CSVoiceTriggerDataCollector *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVoiceTriggerDataCollector", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [[NSMutableArray alloc] initWithCapacity:5];
    vteiList = v2->_vteiList;
    v2->_vteiList = v5;

    v7 = +[CSSiriClientBehaviorMonitor sharedInstance];
    [v7 registerObserver:v2];

    v8 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
    [v8 addObserver:v2];

    v9 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
    isEnabled = [v9 isEnabled];
    v11 = 0;
    if (isEnabled)
    {
      v11 = +[NSDate date];
    }

    lastVTEnableDate = v2->_lastVTEnableDate;
    v2->_lastVTEnableDate = v11;

    lastVTDisableDate = v2->_lastVTDisableDate;
    v2->_lastVTDisableDate = 0;

    v14 = [NSArray arrayWithObjects:kVTEIconfigVersion, kVTEIbuildVersion, kVTEItotalSamplesAtEndOfCapture, kVTEItriggerScore, kVTEIrecognizerScore, 0];
    objc_storeStrong(&v2->_privacyApprovedFields, v14);
    v15 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[CSVoiceTriggerDataCollector init]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Created CSVoiceTriggerDataCollector", buf, 0xCu);
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E038 != -1)
  {
    dispatch_once(&qword_10029E038, &stru_10024ECE0);
  }

  v3 = qword_10029E040;

  return v3;
}

@end