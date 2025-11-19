@interface CSEndpointLoggingHelper
+ (id)getMHClientEventByMhUUID:(id)a3;
+ (id)getMHStatisticDistributionInfoFromDictionary:(id)a3 withScaleFactor:(double)a4;
+ (void)reportMHEndpointerAccessibleContextEventWithThresholdType:(id)a3 MhId:(id)a4;
+ (void)reportServerEndpointWithMhId:(id)a3;
@end

@implementation CSEndpointLoggingHelper

+ (void)reportServerEndpointWithMhId:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MHSchemaMHEndpointDetected);
    [v4 setEndpointerType:5];
    v5 = [CSEndpointLoggingHelper getMHClientEventByMhUUID:v3];
    [v5 setEndpointDetected:v4];
    v6 = +[AssistantSiriAnalytics sharedStream];
    [v6 emitMessage:v5];

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "+[CSEndpointLoggingHelper reportServerEndpointWithMhId:]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Submit MHEndpointDetectedEvent to SELF for MH ID: %@", &v9, 0x16u);
    }
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "+[CSEndpointLoggingHelper reportServerEndpointWithMhId:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v9, 0xCu);
    }
  }
}

+ (void)reportMHEndpointerAccessibleContextEventWithThresholdType:(id)a3 MhId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MHSchemaMHEndpointerAccessibleContext);
    v8 = v7;
    if (v5 == @"accessible-extended")
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (v5 == @"accessible-maximum");
    }

    [v7 setAccessibleEndpointerLevel:v9];
    v10 = [CSEndpointLoggingHelper getMHClientEventByMhUUID:v6];
    [v10 setEndpointerAccessibleContext:v8];
    v11 = +[AssistantSiriAnalytics sharedStream];
    [v11 emitMessage:v10];

    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "+[CSEndpointLoggingHelper reportMHEndpointerAccessibleContextEventWithThresholdType:MhId:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Submit MHEndpointerAccessibleContextEvent to SELF for MH ID: %@", &v14, 0x16u);
    }
  }

  else
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "+[CSEndpointLoggingHelper reportMHEndpointerAccessibleContextEventWithThresholdType:MhId:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s MHID not set, skipping SELF Logging", &v14, 0xCu);
    }
  }
}

+ (id)getMHStatisticDistributionInfoFromDictionary:(id)a3 withScaleFactor:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MHSchemaMHStatisticDistributionInfo);
  v7 = [v5 objectForKey:@"Num"];
  [v6 setNum:{objc_msgSend(v7, "intValue")}];

  v8 = [v5 objectForKey:@"Avg"];
  [v8 floatValue];
  v10 = v9 * a4;
  *&v10 = v10;
  [v6 setAvg:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v10)}];

  v11 = [v5 objectForKey:@"Max"];
  [v11 floatValue];
  v13 = v12 * a4;
  *&v13 = v13;
  [v6 setMax:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v13)}];

  v14 = [v5 objectForKey:@"Min"];
  [v14 floatValue];
  v16 = v15 * a4;
  *&v16 = v16;
  [v6 setMin:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v16)}];

  v17 = [v5 objectForKey:@"P95"];
  [v17 floatValue];
  v19 = v18 * a4;
  *&v19 = v19;
  [v6 setP95:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v19)}];

  v20 = [v5 objectForKey:@"Median"];
  [v20 floatValue];
  v22 = v21 * a4;
  *&v22 = v22;
  [v6 setMedian:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v22)}];

  v23 = [v5 objectForKey:@"Std"];
  [v23 floatValue];
  [v6 setStd:?];

  v24 = [v5 objectForKey:@"Warmup"];

  if (v24)
  {
    [v24 floatValue];
    v26 = v25 * a4;
    *&v26 = v26;
    [v6 setWarmup:{+[CSFTimeUtils millisecondsToNs:](CSFTimeUtils, "millisecondsToNs:", v26)}];
  }

  return v6;
}

+ (id)getMHClientEventByMhUUID:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = objc_alloc_init(MHSchemaMHClientEvent);
    v5 = [SISchemaUUID alloc];
    v6 = [[NSUUID alloc] initWithUUIDString:v3];
    v7 = [v5 initWithNSUUID:v6];

    v8 = objc_alloc_init(MHSchemaMHClientEventMetadata);
    [v8 setMhId:v7];
    [v4 setEventMetadata:v8];
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v13 = 136315650;
      v14 = "+[CSEndpointLoggingHelper getMHClientEventByMhUUID:]";
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = objc_opt_class();
      v11 = v18;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s mhUUID = %@, class = %@", &v13, 0x20u);
    }

    v4 = 0;
  }

  return v4;
}

@end