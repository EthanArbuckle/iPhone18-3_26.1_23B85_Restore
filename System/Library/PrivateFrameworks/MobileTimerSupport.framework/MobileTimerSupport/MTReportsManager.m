@interface MTReportsManager
- (MTReportsManager)init;
- (void)didCreateLiveActivityForAlarm:(id)a3 withId:(id)a4 date:(id)a5;
- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)a3;
- (void)didPostNotificationForAlarm:(id)a3 fullNotificationId:(id)a4 shortNotificationId:(id)a5;
- (void)didPostToneAlertWithIdentifier:(id)a3;
- (void)didRenderSceneForAlarm:(id)a3 withType:(id)a4;
- (void)didRetrieveDeliveredNotificationForAlarm:(id)a3 date:(id)a4;
- (void)didShowCoversheetForIdentifier:(id)a3;
- (void)didStopSoundPlaybackWithId:(id)a3;
- (void)didTearDownToneAlertWithIdentifier:(id)a3;
- (void)didTriggerSoundPlaybackWithId:(id)a3;
- (void)didUpdateAudioReporterId:(unint64_t)a3;
- (void)processFiredAlarm:(id)a3;
@end

@implementation MTReportsManager

- (MTReportsManager)init
{
  v5.receiver = self;
  v5.super_class = MTReportsManager;
  v2 = [(MTReportsManager *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(MTReportsManager *)v2 setReporterProxy:v3];
  }

  return v2;
}

- (void)processFiredAlarm:(id)a3
{
  v4 = a3;
  v5 = [(MTReportsManager *)self reporterProxy];
  [v5 processFiredAlarm:v4];
}

- (void)didPostNotificationForAlarm:(id)a3 fullNotificationId:(id)a4 shortNotificationId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTReportsManager *)self reporterProxy];
  [v11 didPostNotificationForAlarm:v10 fullNotificationId:v9 shortNotificationId:v8];
}

- (void)didRetrieveDeliveredNotificationForAlarm:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTReportsManager *)self reporterProxy];
  [v8 didRetrieveDeliveredNotificationForAlarm:v7 date:v6];
}

- (void)didCreateLiveActivityForAlarm:(id)a3 withId:(id)a4 date:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTReportsManager *)self reporterProxy];
  [v11 didCreateLiveActivityForAlarm:v10 withId:v9 date:v8];
}

- (void)didRenderSceneForAlarm:(id)a3 withType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTReportsManager *)self reporterProxy];
  [v8 didRenderSceneForAlarm:v7 withType:v6];
}

- (void)didShowCoversheetForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTReportsManager *)self reporterProxy];
  [v5 didShowCoversheetForIdentifier:v4];
}

- (void)didPostToneAlertWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTReportsManager *)self reporterProxy];
  [v5 didPostToneAlertWithIdentifier:v4];
}

- (void)didTearDownToneAlertWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTReportsManager *)self reporterProxy];
  [v5 didTearDownToneAlertWithIdentifier:v4];
}

- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)a3
{
  v4 = a3;
  v5 = [(MTReportsManager *)self reporterProxy];
  [v5 didDuckPlaybackForAttentionAwarenessWithId:v4];
}

- (void)didTriggerSoundPlaybackWithId:(id)a3
{
  v4 = a3;
  v5 = [(MTReportsManager *)self reporterProxy];
  [v5 didTriggerSoundPlaybackWithId:v4];
}

- (void)didUpdateAudioReporterId:(unint64_t)a3
{
  v4 = [(MTReportsManager *)self reporterProxy];
  [v4 didUpdateAudioReporterId:a3];
}

- (void)didStopSoundPlaybackWithId:(id)a3
{
  v4 = a3;
  v5 = [(MTReportsManager *)self reporterProxy];
  [v5 didStopSoundPlaybackWithId:v4];
}

@end