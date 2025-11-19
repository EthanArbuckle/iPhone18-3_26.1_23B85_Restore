@interface CSAttendingSelfLogger
+ (void)emitAttendingContextEndedEventWithStopReason:(int64_t)a3 withMHUUID:(id)a4;
+ (void)emitAttendingContextStartedEventWithAttendingOptions:(id)a3 withMHUUID:(id)a4;
@end

@implementation CSAttendingSelfLogger

+ (void)emitAttendingContextStartedEventWithAttendingOptions:(id)a3 withMHUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = +[NSUUID UUID];
    v6 = [v7 UUIDString];

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[CSAttendingSelfLogger emitAttendingContextStartedEventWithAttendingOptions:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Mint a new MHUUID for attending started events", &v22, 0xCu);
    }
  }

  v9 = objc_alloc_init(MHSchemaMHAttendingContext);
  v10 = objc_alloc_init(MHSchemaMHAttendingStarted);
  if ([v5 attendingType] == 1)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[CSAttendingSelfLogger emitAttendingContextStartedEventWithAttendingOptions:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Emit AttendingStarted with reason: Flexible FollowUp", &v22, 0xCu);
    }

    v12 = 1;
  }

  else if ([v5 attendingType] == 6 || objc_msgSend(v5, "attendingType") == 7)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "+[CSAttendingSelfLogger emitAttendingContextStartedEventWithAttendingOptions:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Emit AttendingStarted with reason: Announce Notification", &v22, 0xCu);
    }

    v12 = 2;
  }

  else
  {
    v20 = CSLogContextFacilityCoreSpeech;
    v21 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    v12 = 0;
    if (v21)
    {
      v22 = 136315138;
      v23 = "+[CSAttendingSelfLogger emitAttendingContextStartedEventWithAttendingOptions:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s Emit AttendingStarted with reason: Other reasons", &v22, 0xCu);
      v12 = 0;
    }
  }

  [v10 setStartReason:v12];
  [v9 setStartedOrChanged:v10];
  v14 = objc_alloc_init(MHSchemaMHClientEvent);
  v15 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  v16 = [SISchemaUUID alloc];
  v17 = [[NSUUID alloc] initWithUUIDString:v6];
  v18 = [v16 initWithNSUUID:v17];
  [v15 setMhId:v18];

  [v14 setEventMetadata:v15];
  [v14 setAttendingContext:v9];
  v19 = +[AssistantSiriAnalytics sharedStream];
  [v19 emitMessage:v14];
}

+ (void)emitAttendingContextEndedEventWithStopReason:(int64_t)a3 withMHUUID:(id)a4
{
  v5 = a4;
  if (!v5)
  {
    v6 = +[NSUUID UUID];
    v5 = [v6 UUIDString];

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "+[CSAttendingSelfLogger emitAttendingContextEndedEventWithStopReason:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Mint a new MHUUID for attending ended events", &v19, 0xCu);
    }
  }

  v8 = objc_alloc_init(MHSchemaMHAttendingContext);
  v9 = objc_alloc_init(MHSchemaMHAttendingEnded);
  v10 = CSLogContextFacilityCoreSpeech;
  v11 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (a3 == 1)
  {
    if (v11)
    {
      v19 = 136315138;
      v20 = "+[CSAttendingSelfLogger emitAttendingContextEndedEventWithStopReason:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Emit AttendingEnded with reason: New request started", &v19, 0xCu);
    }

    v12 = 1;
  }

  else if (a3 == 7)
  {
    if (v11)
    {
      v19 = 136315138;
      v20 = "+[CSAttendingSelfLogger emitAttendingContextEndedEventWithStopReason:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Emit AttendingEnded with reason: UI requested", &v19, 0xCu);
    }

    v12 = 2;
  }

  else
  {
    if (v11)
    {
      v19 = 136315138;
      v20 = "+[CSAttendingSelfLogger emitAttendingContextEndedEventWithStopReason:withMHUUID:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Emit AttendingEnded with reason: Other reasons", &v19, 0xCu);
    }

    v12 = 0;
  }

  [v9 setEndReason:v12];
  [v8 setEnded:v9];
  v13 = objc_alloc_init(MHSchemaMHClientEvent);
  v14 = objc_alloc_init(MHSchemaMHClientEventMetadata);
  v15 = [SISchemaUUID alloc];
  v16 = [[NSUUID alloc] initWithUUIDString:v5];
  v17 = [v15 initWithNSUUID:v16];
  [v14 setMhId:v17];

  [v13 setEventMetadata:v14];
  [v13 setAttendingContext:v8];
  v18 = +[AssistantSiriAnalytics sharedStream];
  [v18 emitMessage:v13];
}

@end