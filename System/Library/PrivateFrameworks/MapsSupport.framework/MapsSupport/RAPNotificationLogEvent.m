@interface RAPNotificationLogEvent
+ (id)_buildRequestParamsWithRapId:(id)a3 responseId:(id)a4;
+ (void)reportNotificationWasShownWithRapId:(id)a3 responseId:(id)a4 notificationType:(id)a5 completion:(id)a6;
+ (void)reportUserTappedNotificationWithRapId:(id)a3 responseId:(id)a4 notificationType:(id)a5 completion:(id)a6;
@end

@implementation RAPNotificationLogEvent

+ (void)reportNotificationWasShownWithRapId:(id)a3 responseId:(id)a4 notificationType:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [RAPNotificationLogEvent _buildRequestParamsWithRapId:a3 responseId:a4];
  v12 = [v11 logEventParameters];
  v13 = [v12 details];
  v14 = [v13 rapNotificationLogEvent];
  [v14 setUserShownNotification:1];

  v15 = +[GEOMapService sharedService];
  v16 = [v15 defaultTraits];

  v17 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v11 traits:v16];
  [v17 setFeedbackRequestType:7];
  v18 = +[GEOMapService sharedService];
  v19 = [v18 ticketForFeedbackRequest:v17 traits:v16];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000E9B0;
  v21[3] = &unk_10003C948;
  v22 = v9;
  v20 = v9;
  [v19 submitWithHandler:v21 networkActivity:0];
  [GEOAPPortal captureUserAction:9002 target:713 value:v10];
}

+ (void)reportUserTappedNotificationWithRapId:(id)a3 responseId:(id)a4 notificationType:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [RAPNotificationLogEvent _buildRequestParamsWithRapId:a3 responseId:a4];
  v12 = [v11 logEventParameters];
  v13 = [v12 details];
  v14 = [v13 rapNotificationLogEvent];
  [v14 setUserInteractedWithNotification:1];

  v15 = +[GEOMapService sharedService];
  v16 = [v15 defaultTraits];

  v17 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v11 traits:v16];
  [v17 setFeedbackRequestType:7];
  v18 = +[GEOMapService sharedService];
  v19 = [v18 ticketForFeedbackRequest:v17 traits:v16];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000EB7C;
  v21[3] = &unk_10003C948;
  v22 = v9;
  v20 = v9;
  [v19 submitWithHandler:v21 networkActivity:0];
  [GEOAPPortal captureUserAction:9003 target:713 value:v10];
}

+ (id)_buildRequestParamsWithRapId:(id)a3 responseId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(GEORPRapNotificationLogEvent);
  [v7 setOriginalRapId:v6];

  [v7 setResponseId:v5];
  v8 = objc_alloc_init(GEORPFeedbackLogEventDetails);
  [v8 setRapNotificationLogEvent:v7];
  v9 = objc_alloc_init(GEORPFeedbackLogEventParameters);
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];
  [v9 setClientEventUuid:v11];

  v12 = objc_alloc_init(GEORPTimestamp);
  v13 = +[NSDate date];
  [v13 timeIntervalSince1970];
  v15 = v14;

  [v12 setSeconds:v15];
  [v9 setCreatedAt:v12];
  [v9 setType:1];
  [v9 setDetails:v8];
  v16 = objc_alloc_init(GEORPFeedbackRequestParameters);
  [v16 setLogEventParameters:v9];

  return v16;
}

@end