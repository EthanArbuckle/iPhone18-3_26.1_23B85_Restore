@interface MTReportsManager
- (MTReportsManager)init;
- (void)didCreateLiveActivityForAlarm:(id)alarm withId:(id)id date:(id)date;
- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id;
- (void)didPostNotificationForAlarm:(id)alarm fullNotificationId:(id)id shortNotificationId:(id)notificationId;
- (void)didPostToneAlertWithIdentifier:(id)identifier;
- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type;
- (void)didRetrieveDeliveredNotificationForAlarm:(id)alarm date:(id)date;
- (void)didShowCoversheetForIdentifier:(id)identifier;
- (void)didStopSoundPlaybackWithId:(id)id;
- (void)didTearDownToneAlertWithIdentifier:(id)identifier;
- (void)didTriggerSoundPlaybackWithId:(id)id;
- (void)didUpdateAudioReporterId:(unint64_t)id;
- (void)processFiredAlarm:(id)alarm;
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

- (void)processFiredAlarm:(id)alarm
{
  alarmCopy = alarm;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy processFiredAlarm:alarmCopy];
}

- (void)didPostNotificationForAlarm:(id)alarm fullNotificationId:(id)id shortNotificationId:(id)notificationId
{
  notificationIdCopy = notificationId;
  idCopy = id;
  alarmCopy = alarm;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didPostNotificationForAlarm:alarmCopy fullNotificationId:idCopy shortNotificationId:notificationIdCopy];
}

- (void)didRetrieveDeliveredNotificationForAlarm:(id)alarm date:(id)date
{
  dateCopy = date;
  alarmCopy = alarm;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didRetrieveDeliveredNotificationForAlarm:alarmCopy date:dateCopy];
}

- (void)didCreateLiveActivityForAlarm:(id)alarm withId:(id)id date:(id)date
{
  dateCopy = date;
  idCopy = id;
  alarmCopy = alarm;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didCreateLiveActivityForAlarm:alarmCopy withId:idCopy date:dateCopy];
}

- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type
{
  typeCopy = type;
  alarmCopy = alarm;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didRenderSceneForAlarm:alarmCopy withType:typeCopy];
}

- (void)didShowCoversheetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didShowCoversheetForIdentifier:identifierCopy];
}

- (void)didPostToneAlertWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didPostToneAlertWithIdentifier:identifierCopy];
}

- (void)didTearDownToneAlertWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didTearDownToneAlertWithIdentifier:identifierCopy];
}

- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id
{
  idCopy = id;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didDuckPlaybackForAttentionAwarenessWithId:idCopy];
}

- (void)didTriggerSoundPlaybackWithId:(id)id
{
  idCopy = id;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didTriggerSoundPlaybackWithId:idCopy];
}

- (void)didUpdateAudioReporterId:(unint64_t)id
{
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didUpdateAudioReporterId:id];
}

- (void)didStopSoundPlaybackWithId:(id)id
{
  idCopy = id;
  reporterProxy = [(MTReportsManager *)self reporterProxy];
  [reporterProxy didStopSoundPlaybackWithId:idCopy];
}

@end