@interface CSVoiceTriggerStatistics
+ (id)sharedInstance;
- (CSVoiceTriggerStatistics)init;
- (id)getVoiceTriggerDailyMetadata;
- (id)getVoiceTriggerStatistics;
- (int)_convertToFirstPassSource:(id)a3;
- (unint64_t)firstPassTriggerCount;
- (unint64_t)getVTRejectCount;
- (unint64_t)triggerCount;
- (void)clearFalseFirstPassTriggersPerHour;
- (void)clearFirstPassTriggerCount;
- (void)clearTriggerCount;
- (void)increaseFalseFirstPassTriggersPerHour;
- (void)increaseTriggerCount;
- (void)incrementFirstPassTriggerCount;
- (void)incrementPHSRejectCount;
- (void)incrementVTRejectCount;
- (void)resetVTEstimationStatistics;
- (void)updateVTEstimationStatistics:(id)a3;
- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4;
- (void)voiceTriggerDidDetectNearMiss:(id)a3 deviceId:(id)a4;
- (void)voiceTriggerDidRejected:(id)a3 deviceId:(id)a4;
@end

@implementation CSVoiceTriggerStatistics

- (void)voiceTriggerDidRejected:(id)a3 deviceId:(id)a4
{
  [(CSVoiceTriggerStatistics *)self incrementVTRejectCount:a3];

  [(CSVoiceTriggerStatistics *)self increaseFalseFirstPassTriggersPerHour];
}

- (void)voiceTriggerDidDetectNearMiss:(id)a3 deviceId:(id)a4
{
  [(CSVoiceTriggerStatistics *)self incrementVTRejectCount:a3];

  [(CSVoiceTriggerStatistics *)self increaseFalseFirstPassTriggersPerHour];
}

- (void)voiceTriggerDidDetectKeyword:(id)a3 deviceId:(id)a4
{
  [(CSVoiceTriggerStatistics *)self increaseTriggerCount:a3];

  [(CSVoiceTriggerStatistics *)self clearFalseFirstPassTriggersPerHour];
}

- (id)getVoiceTriggerDailyMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000EA9FC;
  v10 = sub_1000EAA0C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EAA14;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)getVoiceTriggerStatistics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000EA9FC;
  v10 = sub_1000EAA0C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EAB68;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int)_convertToFirstPassSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromApplicationProcessor] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", kVTEIFirstPassTriggeredFromApplicationProcessorExclave))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromApplicationProcessorWithRingtone] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", kVTEIFirstPassTriggeredFromApplicationProcessorWithConnectedCall) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", kVTEIFirstPassTriggeredFromApplicationProcessorExclaveWithRingtone) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", kVTEIFirstPassTriggeredFromApplicationProcessorExclaveWithConnectedCall))
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromAlwaysOnProcessor] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", kVTEIFirstPassTriggeredFromAlwaysOnProcessorExclave))
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromHearst])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromJarvis])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromRemora])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromHearstAP])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromWatch])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:kVTEIFirstPassTriggeredFromDarwin])
  {
    v4 = 10;
  }

  else
  {
    v4 = [v3 isEqualToString:kVTEIFirstPassTriggeredFromDefault];
  }

  return v4;
}

- (void)resetVTEstimationStatistics
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EAE18;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateVTEstimationStatistics:(id)a3
{
  v4 = a3;
  if ((+[CSUtils isDarwinOS]& 1) == 0)
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EAEE4;
    v6[3] = &unk_100253C48;
    v6[4] = self;
    v7 = v4;
    dispatch_async(queue, v6);
  }
}

- (unint64_t)firstPassTriggerCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EB9D8;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)clearFirstPassTriggerCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBA60;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)incrementFirstPassTriggerCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBAE0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unint64_t)getVTRejectCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EBBA0;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)incrementVTRejectCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBC28;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)incrementPHSRejectCount
{
  ++self->_consecutivePHSRejects;
  +[CSUtils systemUpTime];
  self->_lastPHSReject = v3;
}

- (unint64_t)triggerCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EBD3C;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)clearTriggerCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBDC4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)increaseTriggerCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBE44;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)clearFalseFirstPassTriggersPerHour
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBED4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)increaseFalseFirstPassTriggersPerHour
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBF54;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSVoiceTriggerStatistics)init
{
  v18.receiver = self;
  v18.super_class = CSVoiceTriggerStatistics;
  v2 = [(CSVoiceTriggerStatistics *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSVoiceTriggerStatistics queue", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    *(v2 + 1) = 0;
    *(v2 + 3) = 0;
    *(v2 + 5) = 0;
    *(v2 + 36) = 0;
    v5 = +[NSMutableArray array];
    v6 = *(v2 + 7);
    *(v2 + 7) = v5;

    v7 = +[NSMutableDictionary dictionary];
    v8 = *(v2 + 8);
    *(v2 + 8) = v7;

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 2));
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    v11 = *(v2 + 6);
    v12 = dispatch_time(0, 0x34630B80000);
    dispatch_source_set_timer(v11, v12, 0x34630B80000uLL, 0xDF8476000uLL);
    objc_initWeak(&location, v2);
    v13 = *(v2 + 6);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EC15C;
    v15[3] = &unk_100253510;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v13, v15);
    dispatch_resume(*(v2 + 6));
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_10029E350 != -1)
  {
    dispatch_once(&qword_10029E350, &stru_100251560);
  }

  v3 = qword_10029E348;

  return v3;
}

@end