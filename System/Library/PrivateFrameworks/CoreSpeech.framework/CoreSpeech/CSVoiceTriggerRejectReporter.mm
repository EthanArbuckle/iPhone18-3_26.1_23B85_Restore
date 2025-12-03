@interface CSVoiceTriggerRejectReporter
+ (id)sharedInstance;
- (CSVoiceTriggerRejectReporter)init;
- (id)_checkForRejectWithScore:(id)score threshold:(id)threshold eventType:(unint64_t)type deltaTime:(double)time;
- (id)_constructVTRejectEventFrom:(id)from withMhid:(id)mhid;
- (id)_extractMetaDataEventFromEntry:(id)entry currentTime:(double)time;
- (id)_readEventFromBiome;
- (id)constructSELFEventFromEvents:(id)events withMhid:(id)mhid;
- (void)_deleteAllEventsFromBiome;
- (void)_emitEvent:(id)event;
- (void)reportVTRejectIfNeededForMHId:(id)id;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
@end

@implementation CSVoiceTriggerRejectReporter

- (id)_extractMetaDataEventFromEntry:(id)entry currentTime:(double)time
{
  entryCopy = entry;
  v7 = [entryCopy objectForKey:@"absoluteTimestamp"];
  v8 = v7;
  if (!v7 || (v9 = (time - [v7 unsignedLongLongValue]), v9 > 0x3C))
  {
    v10 = 0;
    goto LABEL_19;
  }

  v11 = [entryCopy objectForKey:@"invocationTypeID"];
  if (v11)
  {
    v12 = [entryCopy objectForKey:@"tdSpeakerRecognizerCombinedScore"];
    if ([v11 isEqualToNumber:&off_10025E7E0])
    {
      v13 = [entryCopy objectForKey:@"triggerScoreHS"];
      v14 = [entryCopy objectForKey:@"keywordThresholdHS"];
      v15 = [entryCopy objectForKey:@"tdSpeakerRecognizerCombinedThresholdHS"];
      v16 = v9;
      v17 = [(CSVoiceTriggerRejectReporter *)self _checkForRejectWithScore:v13 threshold:v14 eventType:0 deltaTime:v9];
      v18 = v17;
      if (v17)
      {
        v10 = v17;
        v19 = 0;
      }

      else
      {
        v27 = [(CSVoiceTriggerRejectReporter *)self _checkForRejectWithScore:v12 threshold:v15 eventType:2 deltaTime:v16];
        v10 = v27;
        v19 = v27 == 0;
        if (v27)
        {
          v28 = v27;
        }
      }

      if (!v19)
      {
        goto LABEL_17;
      }
    }

    else if ([v11 isEqualToNumber:&off_10025E7F8])
    {
      v20 = [entryCopy objectForKey:@"triggerScoreJS"];
      v21 = [entryCopy objectForKey:@"keywordThresholdJS"];
      v22 = [entryCopy objectForKey:@"tdSpeakerRecognizerCombinedThresholdJS"];
      v23 = v9;
      v24 = [(CSVoiceTriggerRejectReporter *)self _checkForRejectWithScore:v20 threshold:v21 eventType:1 deltaTime:v9];
      v25 = v24;
      if (v24)
      {
        v10 = v24;
        v26 = 0;
      }

      else
      {
        v30 = [(CSVoiceTriggerRejectReporter *)self _checkForRejectWithScore:v12 threshold:v22 eventType:3 deltaTime:v23];
        v10 = v30;
        v26 = v30 == 0;
        if (v30)
        {
          v31 = v30;
        }
      }

      if (!v26)
      {
        goto LABEL_17;
      }
    }

    v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v10 = 0;
LABEL_18:

LABEL_19:

  return v10;
}

- (id)_checkForRejectWithScore:(id)score threshold:(id)threshold eventType:(unint64_t)type deltaTime:(double)time
{
  scoreCopy = score;
  thresholdCopy = threshold;
  v11 = thresholdCopy;
  v12 = 0;
  if (scoreCopy && thresholdCopy)
  {
    [scoreCopy floatValue];
    v14 = v13;
    [v11 floatValue];
    if (v14 >= v15)
    {
      v12 = 0;
    }

    else
    {
      v16 = [CSVTRejectEventMetadata alloc];
      [scoreCopy floatValue];
      v18 = v17;
      [v11 floatValue];
      LODWORD(v20) = v19;
      v12 = [(CSVTRejectEventMetadata *)v16 initWithEventType:type score:COERCE_DOUBLE(v18 | 0x41CDCD6500000000) threshold:v20 deltaTime:time * 1000000000.0];
    }
  }

  return v12;
}

- (void)_emitEvent:(id)event
{
  eventCopy = event;
  v4 = +[AssistantSiriAnalytics sharedStream];
  [v4 emitMessage:eventCopy];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSVoiceTriggerRejectReporter _emitEvent:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Emitting VTRejectDetected event", &v6, 0xCu);
  }
}

- (id)_constructVTRejectEventFrom:(id)from withMhid:(id)mhid
{
  fromCopy = from;
  mhidCopy = mhid;
  v7 = objc_alloc_init(MHSchemaMHVoiceTriggerRejectDetected);
  [v7 setPhsRejectBeforeActivationCount:{objc_msgSend(fromCopy, "spkrIdRejectCount")}];
  [v7 setCheckerHSRejectBeforeActivationCount:{objc_msgSend(fromCopy, "hsRejectCount")}];
  [v7 setCheckerJSRejectBeforeActivationCount:{objc_msgSend(fromCopy, "jsRejectCount")}];
  spkrIdScores = [fromCopy spkrIdScores];
  v9 = [spkrIdScores count];

  if (v9)
  {
    spkrIdScores2 = [fromCopy spkrIdScores];
    [v7 setPhsRejectBeforeActivationScores:spkrIdScores2];

    spkrIdTimeDelta = [fromCopy spkrIdTimeDelta];
    [v7 setPhsRejectBeforeActivationTimeDiffInNs:spkrIdTimeDelta];

    [fromCopy phsThreshold];
    [v7 setPhsThreshold:?];
    [fromCopy pjsThreshold];
    [v7 setPjsThreshold:?];
  }

  hsScores = [fromCopy hsScores];
  v13 = [hsScores count];

  if (v13)
  {
    hsScores2 = [fromCopy hsScores];
    [v7 setCheckerHSRejectBeforeActivationScores:hsScores2];

    hsTimeDelta = [fromCopy hsTimeDelta];
    [v7 setCheckerHSRejectBeforeActivationTimeDiffInNs:hsTimeDelta];

    [fromCopy hsThreshold];
    [v7 setCheckerHSThreshold:?];
  }

  jsScores = [fromCopy jsScores];
  v17 = [jsScores count];

  if (v17)
  {
    jsScores2 = [fromCopy jsScores];
    [v7 setCheckerJSRejectBeforeActivationScores:jsScores2];

    jsTimeDelta = [fromCopy jsTimeDelta];
    [v7 setCheckerJSRejectBeforeActivationTimeDiffInNs:jsTimeDelta];

    [fromCopy jsThreshold];
    [v7 setCheckerJSThreshold:?];
  }

  v20 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  v21 = [SISchemaUUID alloc];
  v22 = [[NSUUID alloc] initWithUUIDString:mhidCopy];

  v23 = [v21 initWithNSUUID:v22];
  [v20 setMhId:v23];

  v24 = objc_alloc_init(MHSchemaMHClientEvent);
  [v24 setEventMetadata:v20];
  [v24 setVoiceTriggerRejectDetected:v7];

  return v24;
}

- (void)_deleteAllEventsFromBiome
{
  v2 = BiomeLibrary();
  siri = [v2 Siri];
  voiceTriggerStatistics = [siri VoiceTriggerStatistics];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  pruner = [voiceTriggerStatistics pruner];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001422CC;
  v8[3] = &unk_100252808;
  v8[4] = &v9;
  [pruner deleteWithPolicy:@"Delete all VT stats" eventsPassingTest:v8];

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v10[3];
    *buf = 136315394;
    v14 = "[CSVoiceTriggerRejectReporter _deleteAllEventsFromBiome]";
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Cleaned up %lu entries", buf, 0x16u);
  }

  _Block_object_dispose(&v9, 8);
}

- (id)_readEventFromBiome
{
  v2 = +[NSMutableArray array];
  v3 = objc_alloc_init(BMSQLDatabase);
  v4 = [v3 executeQuery:@"SELECT * FROM Siri.VoiceTriggerStatistics"];
  v5 = 2001;
  while ([v4 next])
  {
    v6 = [v4 row];
    [v2 addObject:v6];

    if (!--v5)
    {
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[CSVoiceTriggerRejectReporter _readEventFromBiome]";
        v14 = 2048;
        v15 = 2000;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Exiting after reading %lu entries", &v12, 0x16u);
      }

      break;
    }
  }

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v2 count];
    v12 = 136315394;
    v13 = "[CSVoiceTriggerRejectReporter _readEventFromBiome]";
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Read %lu entries from biome", &v12, 0x16u);
  }

  return v2;
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  successfullyCopy = successfully;
  monitorCopy = monitor;
  contextCopy = context;
  optionCopy = option;
  dCopy = d;
  if (successfullyCopy)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[CSVoiceTriggerRejectReporter siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s ", &v18, 0xCu);
    }

    requestMHUUID = [optionCopy requestMHUUID];
    [(CSVoiceTriggerRejectReporter *)self reportVTRejectIfNeededForMHId:requestMHUUID];
  }
}

- (id)constructSELFEventFromEvents:(id)events withMhid:(id)mhid
{
  eventsCopy = events;
  mhidCopy = mhid;
  v7 = objc_alloc_init(CSVTRejectDetectDataExtractor);
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = eventsCopy;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    v15 = v10;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [(CSVoiceTriggerRejectReporter *)self _extractMetaDataEventFromEntry:*(*(&v28 + 1) + 8 * i) currentTime:v15];
        if (v17)
        {
          v18 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
          {
            v19 = v18;
            v20 = [v17 description];
            *buf = 136315394;
            v33 = "[CSVoiceTriggerRejectReporter constructSELFEventFromEvents:withMhid:]";
            v34 = 2112;
            v35 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Extracted interested event: %@", buf, 0x16u);
          }

          [(CSVTRejectDetectDataExtractor *)v7 classifyEventWithMetaData:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v13);
  }

  if ([(CSVTRejectDetectDataExtractor *)v7 totalEventCount])
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      totalEventCount = [(CSVTRejectDetectDataExtractor *)v7 totalEventCount];
      *buf = 136315394;
      v33 = "[CSVoiceTriggerRejectReporter constructSELFEventFromEvents:withMhid:]";
      v34 = 2048;
      v35 = totalEventCount;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Count of VT reject events detected: %lu", buf, 0x16u);
    }

    v24 = mhidCopy;
    v25 = [(CSVoiceTriggerRejectReporter *)self _constructVTRejectEventFrom:v7 withMhid:mhidCopy];
  }

  else
  {
    v25 = 0;
    v24 = mhidCopy;
  }

  return v25;
}

- (void)reportVTRejectIfNeededForMHId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014293C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (CSVoiceTriggerRejectReporter)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CSVoiceTriggerRejectReporter;
    v4 = [(CSVoiceTriggerRejectReporter *)&v9 init];
    if (v4)
    {
      v5 = dispatch_get_global_queue(9, 0);
      queue = v4->_queue;
      v4->_queue = v5;

      v7 = +[CSSiriClientBehaviorMonitor sharedInstance];
      [v7 registerObserver:v4];
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (qword_10029E4F0 != -1)
  {
    dispatch_once(&qword_10029E4F0, &stru_1002527E0);
  }

  v3 = qword_10029E4E8;

  return v3;
}

@end