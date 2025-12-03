@interface MTAnalyticsCoordinator
- (MTAnalyticsCoordinator)initWithAlarmStorage:(id)storage;
- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id;
- (void)didPostNotificationForAlarm:(id)alarm fullNotificationId:(id)id shortNotificationId:(id)notificationId sender:(id)sender;
- (void)didPostToneAlertWithIdentifier:(id)identifier;
- (void)didShowCoversheetForIdentifier:(id)identifier;
- (void)didStopSoundPlaybackWithId:(id)id;
- (void)didTearDownToneAlertWithIdentifier:(id)identifier;
- (void)didTriggerSoundPlaybackWithId:(id)id;
- (void)didUpdateAudioReporterId:(unint64_t)id;
- (void)source:(id)source didFireAlarm:(id)alarm triggerType:(unint64_t)type;
@end

@implementation MTAnalyticsCoordinator

- (MTAnalyticsCoordinator)initWithAlarmStorage:(id)storage
{
  v28 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v20.receiver = self;
  v20.super_class = MTAnalyticsCoordinator;
  v6 = [(MTAnalyticsCoordinator *)&v20 init];
  if (v6)
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = storageCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@ with alarmStorage:%{public}@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_alarmStorage, storage);
    [(MTAlarmStorage *)v6->_alarmStorage registerObserver:v6];
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.MTAnalyticsCoordinator.serialqueue", v8);
    [(MTAnalyticsCoordinator *)v6 setSerializerQueue:v9];

    v10 = MEMORY[0x1E69B3790];
    serializerQueue = [(MTAnalyticsCoordinator *)v6 serializerQueue];
    v12 = [v10 schedulerWithDispatchQueue:serializerQueue];
    serializer = v6->_serializer;
    v6->_serializer = v12;

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v14 = getMTReportsManagerClass_softClass;
    v24 = getMTReportsManagerClass_softClass;
    if (!getMTReportsManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMTReportsManagerClass_block_invoke;
      v26 = &unk_1E7B0C600;
      v27 = &v21;
      __getMTReportsManagerClass_block_invoke(buf);
      v14 = v22[3];
    }

    v15 = v14;
    _Block_object_dispose(&v21, 8);
    v16 = objc_opt_new();
    reportsManager = v6->_reportsManager;
    v6->_reportsManager = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)source:(id)source didFireAlarm:(id)alarm triggerType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    alarmIDString = [alarmCopy alarmIDString];
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = alarmIDString;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ didFireAlarm:%{public}@", &v10, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager processFiredAlarm:alarmCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)didPostNotificationForAlarm:(id)alarm fullNotificationId:(id)id shortNotificationId:(id)notificationId sender:(id)sender
{
  alarmCopy = alarm;
  idCopy = id;
  senderCopy = sender;
  [(MTReportsManager *)self->_reportsManager didPostNotificationForAlarm:alarmCopy fullNotificationId:idCopy shortNotificationId:notificationId];
  if (objc_opt_respondsToSelector())
  {
    v13 = dispatch_time(0, 1000000000);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__MTAnalyticsCoordinator_didPostNotificationForAlarm_fullNotificationId_shortNotificationId_sender___block_invoke;
    v14[3] = &unk_1E7B0D7F8;
    v14[4] = self;
    v15 = senderCopy;
    v16 = idCopy;
    v17 = alarmCopy;
    dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
  }
}

void __100__MTAnalyticsCoordinator_didPostNotificationForAlarm_fullNotificationId_shortNotificationId_sender___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ trying to retrieved delivered notification", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__MTAnalyticsCoordinator_didPostNotificationForAlarm_fullNotificationId_shortNotificationId_sender___block_invoke_4;
  v7[3] = &unk_1E7B101F0;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  [v4 retrieveDelieveredNotificationForId:v5 completion:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __100__MTAnalyticsCoordinator_didPostNotificationForAlarm_fullNotificationId_shortNotificationId_sender___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  v4 = [a2 date];
  [v3 didRetrieveDeliveredNotificationForAlarm:v2 date:v4];
}

- (void)didShowCoversheetForIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didShowCoversheetForIdentifier: %{public}@", &v7, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager didShowCoversheetForIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didPostToneAlertWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didPostToneAlertWithIdentifier: %{public}@", &v7, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager didPostToneAlertWithIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didTearDownToneAlertWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didTearDownToneAlertWithIdentifier: %{public}@", &v7, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager didTearDownToneAlertWithIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id
{
  v11 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = idCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didDuckPlaybackForAttentionAwarenessWithId: %{public}@", &v7, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager didDuckPlaybackForAttentionAwarenessWithId:idCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didTriggerSoundPlaybackWithId:(id)id
{
  v11 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = idCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didTriggerSoundPlaybackWithId: %{public}@", &v7, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager didTriggerSoundPlaybackWithId:idCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateAudioReporterId:(unint64_t)id
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2048;
    idCopy = id;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didUpdateAudioReporterId: %lu", &v7, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager didUpdateAudioReporterId:id];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didStopSoundPlaybackWithId:(id)id
{
  v11 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = idCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didStopSoundPlaybackWithId: %{public}@", &v7, 0x16u);
  }

  [(MTReportsManager *)self->_reportsManager didStopSoundPlaybackWithId:idCopy];
  v6 = *MEMORY[0x1E69E9840];
}

@end