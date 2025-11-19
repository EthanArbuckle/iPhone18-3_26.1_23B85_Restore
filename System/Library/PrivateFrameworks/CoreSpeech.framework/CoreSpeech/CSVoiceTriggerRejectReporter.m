@interface CSVoiceTriggerRejectReporter
+ (id)sharedInstance;
- (CSVoiceTriggerRejectReporter)init;
- (id)_checkForRejectWithScore:(id)a3 threshold:(id)a4 eventType:(unint64_t)a5 deltaTime:(double)a6;
- (id)_constructVTRejectEventFrom:(id)a3 withMhid:(id)a4;
- (id)_extractMetaDataEventFromEntry:(id)a3 currentTime:(double)a4;
- (id)_readEventFromBiome;
- (id)constructSELFEventFromEvents:(id)a3 withMhid:(id)a4;
- (void)_deleteAllEventsFromBiome;
- (void)_emitEvent:(id)a3;
- (void)reportVTRejectIfNeededForMHId:(id)a3;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
@end

@implementation CSVoiceTriggerRejectReporter

- (id)_extractMetaDataEventFromEntry:(id)a3 currentTime:(double)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"absoluteTimestamp"];
  v8 = v7;
  if (!v7 || (v9 = (a4 - [v7 unsignedLongLongValue]), v9 > 0x3C))
  {
    v10 = 0;
    goto LABEL_19;
  }

  v11 = [v6 objectForKey:@"invocationTypeID"];
  if (v11)
  {
    v12 = [v6 objectForKey:@"tdSpeakerRecognizerCombinedScore"];
    if ([v11 isEqualToNumber:&off_10025E7E0])
    {
      v13 = [v6 objectForKey:@"triggerScoreHS"];
      v14 = [v6 objectForKey:@"keywordThresholdHS"];
      v15 = [v6 objectForKey:@"tdSpeakerRecognizerCombinedThresholdHS"];
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
      v20 = [v6 objectForKey:@"triggerScoreJS"];
      v21 = [v6 objectForKey:@"keywordThresholdJS"];
      v22 = [v6 objectForKey:@"tdSpeakerRecognizerCombinedThresholdJS"];
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

- (id)_checkForRejectWithScore:(id)a3 threshold:(id)a4 eventType:(unint64_t)a5 deltaTime:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    [v9 floatValue];
    v14 = v13;
    [v11 floatValue];
    if (v14 >= v15)
    {
      v12 = 0;
    }

    else
    {
      v16 = [CSVTRejectEventMetadata alloc];
      [v9 floatValue];
      v18 = v17;
      [v11 floatValue];
      LODWORD(v20) = v19;
      v12 = [(CSVTRejectEventMetadata *)v16 initWithEventType:a5 score:COERCE_DOUBLE(v18 | 0x41CDCD6500000000) threshold:v20 deltaTime:a6 * 1000000000.0];
    }
  }

  return v12;
}

- (void)_emitEvent:(id)a3
{
  v3 = a3;
  v4 = +[AssistantSiriAnalytics sharedStream];
  [v4 emitMessage:v3];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSVoiceTriggerRejectReporter _emitEvent:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Emitting VTRejectDetected event", &v6, 0xCu);
  }
}

- (id)_constructVTRejectEventFrom:(id)a3 withMhid:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MHSchemaMHVoiceTriggerRejectDetected);
  [v7 setPhsRejectBeforeActivationCount:{objc_msgSend(v5, "spkrIdRejectCount")}];
  [v7 setCheckerHSRejectBeforeActivationCount:{objc_msgSend(v5, "hsRejectCount")}];
  [v7 setCheckerJSRejectBeforeActivationCount:{objc_msgSend(v5, "jsRejectCount")}];
  v8 = [v5 spkrIdScores];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v5 spkrIdScores];
    [v7 setPhsRejectBeforeActivationScores:v10];

    v11 = [v5 spkrIdTimeDelta];
    [v7 setPhsRejectBeforeActivationTimeDiffInNs:v11];

    [v5 phsThreshold];
    [v7 setPhsThreshold:?];
    [v5 pjsThreshold];
    [v7 setPjsThreshold:?];
  }

  v12 = [v5 hsScores];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v5 hsScores];
    [v7 setCheckerHSRejectBeforeActivationScores:v14];

    v15 = [v5 hsTimeDelta];
    [v7 setCheckerHSRejectBeforeActivationTimeDiffInNs:v15];

    [v5 hsThreshold];
    [v7 setCheckerHSThreshold:?];
  }

  v16 = [v5 jsScores];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v5 jsScores];
    [v7 setCheckerJSRejectBeforeActivationScores:v18];

    v19 = [v5 jsTimeDelta];
    [v7 setCheckerJSRejectBeforeActivationTimeDiffInNs:v19];

    [v5 jsThreshold];
    [v7 setCheckerJSThreshold:?];
  }

  v20 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  v21 = [SISchemaUUID alloc];
  v22 = [[NSUUID alloc] initWithUUIDString:v6];

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
  v3 = [v2 Siri];
  v4 = [v3 VoiceTriggerStatistics];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [v4 pruner];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001422CC;
  v8[3] = &unk_100252808;
  v8[4] = &v9;
  [v5 deleteWithPolicy:@"Delete all VT stats" eventsPassingTest:v8];

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

- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v9)
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[CSVoiceTriggerRejectReporter siriClientBehaviorMonitor:didStartStreamWithContext:successfully:option:withEventUUID:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s ", &v18, 0xCu);
    }

    v17 = [v14 requestMHUUID];
    [(CSVoiceTriggerRejectReporter *)self reportVTRejectIfNeededForMHId:v17];
  }
}

- (id)constructSELFEventFromEvents:(id)a3 withMhid:(id)a4
{
  v6 = a3;
  v27 = a4;
  v7 = objc_alloc_init(CSVTRejectDetectDataExtractor);
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v6;
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
      v23 = [(CSVTRejectDetectDataExtractor *)v7 totalEventCount];
      *buf = 136315394;
      v33 = "[CSVoiceTriggerRejectReporter constructSELFEventFromEvents:withMhid:]";
      v34 = 2048;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Count of VT reject events detected: %lu", buf, 0x16u);
    }

    v24 = v27;
    v25 = [(CSVoiceTriggerRejectReporter *)self _constructVTRejectEventFrom:v7 withMhid:v27];
  }

  else
  {
    v25 = 0;
    v24 = v27;
  }

  return v25;
}

- (void)reportVTRejectIfNeededForMHId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014293C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSVoiceTriggerRejectReporter)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v3 = 0;
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
    v3 = self;
  }

  return v3;
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