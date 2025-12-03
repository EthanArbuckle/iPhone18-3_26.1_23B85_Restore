@interface MTAlarmKit
+ (id)_nextEventDateForSchedule:(id)schedule afterDate:(id)date;
+ (unint64_t)mtScheduleFromAkSchedule:(int64_t)schedule;
- (MTAlarmKit)initWithCoreDataStore:(id)store notificationCenter:(id)center;
- (id)nextEventDateForSchedule:(id)schedule afterDate:(id)date;
- (void)deleteAlarmsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)deleteAuthorizationsWithBundleIds:(id)ids completion:(id)completion;
- (void)didAlertNotificationWithID:(id)d;
- (void)didFinishLoadingStore;
- (void)dismissAlarmWithIdentifier:(id)identifier;
- (void)dismissNotificationWithID:(id)d;
- (void)dismissTimerWithIdentifier:(id)identifier;
- (void)insertAlarms:(id)alarms completion:(id)completion;
- (void)insertAuthorizations:(id)authorizations completion:(id)completion;
- (void)performSecondaryActionWithIdentifier:(id)identifier;
- (void)repeatTimerWithIdentifier:(id)identifier;
- (void)requestAlarmNotification:(id)notification completion:(id)completion;
- (void)requestTimerNotification:(id)notification completion:(id)completion;
- (void)selectAllAuthorizations:(id)authorizations;
- (void)selectAuthorizationsWithPredicate:(id)predicate completion:(id)completion;
- (void)snoozeAlarmWithIdentifier:(id)identifier;
- (void)updateAlarms:(id)alarms completion:(id)completion;
- (void)updateAuthorizations:(id)authorizations completion:(id)completion;
@end

@implementation MTAlarmKit

- (MTAlarmKit)initWithCoreDataStore:(id)store notificationCenter:(id)center
{
  v30 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  centerCopy = center;
  v21.receiver = self;
  v21.super_class = MTAlarmKit;
  v9 = [(MTAlarmKit *)&v21 init];
  if (v9)
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "%{public}@ initializing", &buf, 0xCu);
    }

    objc_storeStrong(&v9->_dataStore, store);
    [(MTCDDataStore *)v9->_dataStore setAlarmKitObserver:v9];
    objc_storeStrong(&v9->_notificationCenter, center);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v11 = getAKCDaemonClass_softClass;
    v25 = getAKCDaemonClass_softClass;
    if (!getAKCDaemonClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v27 = __getAKCDaemonClass_block_invoke;
      v28 = &unk_1E7B0C600;
      v29 = &v22;
      __getAKCDaemonClass_block_invoke(&buf);
      v11 = v23[3];
    }

    v12 = v11;
    _Block_object_dispose(&v22, 8);
    v13 = [v11 alloc];
    v14 = dispatch_get_global_queue(2, 0);
    v15 = [v13 initWithWorkloop:v14 standaloneMode:0];
    akcDaemon = v9->_akcDaemon;
    v9->_akcDaemon = v15;

    [(AKCDaemon *)v9->_akcDaemon setDelegate:v9];
    [(AKCDaemon *)v9->_akcDaemon setPersistence:v9];
    v17 = objc_opt_new();
    conductor = v9->_conductor;
    v9->_conductor = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)didFinishLoadingStore
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ received didFinishLoadingStore, proceeding to start AlarmKit", &v5, 0xCu);
  }

  [(AKCDaemon *)self->_akcDaemon start];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)nextEventDateForSchedule:(id)schedule afterDate:(id)date
{
  v18 = *MEMORY[0x1E69E9840];
  scheduleCopy = schedule;
  dateCopy = date;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    selfCopy = self;
    v14 = 2114;
    v15 = scheduleCopy;
    v16 = 2114;
    v17 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling nextEventDateForSchedule for: %{public}@ after date: %{public}@", &v12, 0x20u);
  }

  v9 = [objc_opt_class() _nextEventDateForSchedule:scheduleCopy afterDate:dateCopy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_nextEventDateForSchedule:(id)schedule afterDate:(id)date
{
  dateCopy = date;
  scheduleCopy = schedule;
  v7 = -[MTAlarm initWithHour:minute:]([MTMutableAlarm alloc], "initWithHour:minute:", [scheduleCopy hour], objc_msgSend(scheduleCopy, "minute"));
  v8 = objc_opt_class();
  days = [scheduleCopy days];

  -[MTAlarm setRepeatSchedule:](v7, "setRepeatSchedule:", [v8 mtScheduleFromAkSchedule:days]);
  v10 = [(MTAlarm *)v7 nextTriggerAfterDate:dateCopy ofType:0];

  triggerDate = [v10 triggerDate];

  return triggerDate;
}

+ (unint64_t)mtScheduleFromAkSchedule:(int64_t)schedule
{
  v3 = 0;
  result = 0;
  do
  {
    if ((qword_1B20B87F8[v3] & schedule) != 0)
    {
      result |= qword_1B20B87C0[v3];
    }

    ++v3;
  }

  while (v3 != 7);
  return result;
}

- (void)requestAlarmNotification:(id)notification completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = notificationCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling requestAlarmNotification for: %{public}@", buf, 0x16u);
  }

  notificationCenter = self->_notificationCenter;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke;
  v13[3] = &unk_1E7B0C5D8;
  v13[4] = self;
  v14 = notificationCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = notificationCopy;
  [(MTNotificationCenter *)notificationCenter postNotificationForAlarmKitAlarm:v11 completionBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke(id *a1)
{
  v2 = [a1[4] conductor];
  v3 = [a1[5] identifier];
  v4 = [v3 UUIDString];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke_2;
  v6[3] = &unk_1E7B0C5B0;
  v5 = a1[5];
  v6[4] = a1[4];
  v7 = v5;
  v8 = a1[6];
  [v2 registerReplyPublisherWithId:v4 timeOut:v6 completion:1.0];
}

uint64_t __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke_2(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ requestAlarmNotification %{public}@ called back with status: %i", &v9, 0x1Cu);
  }

  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)requestTimerNotification:(id)notification completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = notificationCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling requestTimerNotification for: %{public}@", buf, 0x16u);
  }

  notificationCenter = self->_notificationCenter;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MTAlarmKit_requestTimerNotification_completion___block_invoke;
  v13[3] = &unk_1E7B0C5D8;
  v13[4] = self;
  v14 = notificationCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = notificationCopy;
  [(MTNotificationCenter *)notificationCenter postNotificationForAlarmKitTimer:v11 completionBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __50__MTAlarmKit_requestTimerNotification_completion___block_invoke(id *a1)
{
  v2 = [a1[4] conductor];
  v3 = [a1[5] identifier];
  v4 = [v3 UUIDString];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MTAlarmKit_requestTimerNotification_completion___block_invoke_2;
  v6[3] = &unk_1E7B0C5B0;
  v5 = a1[5];
  v6[4] = a1[4];
  v7 = v5;
  v8 = a1[6];
  [v2 registerReplyPublisherWithId:v4 timeOut:v6 completion:1.0];
}

uint64_t __50__MTAlarmKit_requestTimerNotification_completion___block_invoke_2(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ requestTimerNotification %{public}@ called back with status: %i", &v9, 0x1Cu);
  }

  result = (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dismissNotificationWithID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = dCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ calling dismissNotificicationForAlertWIthId for: %{public}@", &v9, 0x16u);
  }

  notificationCenter = self->_notificationCenter;
  uUIDString = [dCopy UUIDString];
  [(MTNotificationCenter *)notificationCenter dismissNotificationsForAlarmKitAlertWithId:uUIDString];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)selectAllAuthorizations:(id)authorizations
{
  v9 = *MEMORY[0x1E69E9840];
  authorizationsCopy = authorizations;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ calling selectAllAuthorizations", &v7, 0xCu);
  }

  [(MTCDDataStore *)self->_dataStore getAKCAuthorizationsWithCompletion:authorizationsCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)selectAuthorizationsWithPredicate:(id)predicate completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = predicateCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling selectAuthorizationsWithPredicate with predicate: %{public}@", &v10, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore getAKCAuthorizationsWithPredicate:predicateCopy completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)insertAuthorizations:(id)authorizations completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  authorizationsCopy = authorizations;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = authorizationsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling insertAuthorizations for: %{public}@", &v10, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore addAKCAuthorizations:authorizationsCopy completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateAuthorizations:(id)authorizations completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  authorizationsCopy = authorizations;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = authorizationsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling updateAuthorizations for: %{public}@", &v10, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore updateAKCAuthorizations:authorizationsCopy completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)deleteAuthorizationsWithBundleIds:(id)ids completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = idsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling deleteAuthorizationsWithBundleIds for: %{public}@", &v10, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore deleteAKCAuthorizations:idsCopy completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)insertAlarms:(id)alarms completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = alarmsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling insertAlarms with %{public}@", &v10, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore addAKCAlarms:alarmsCopy completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateAlarms:(id)alarms completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = alarmsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling updateAlarms with %{public}@", &v10, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore updateAKCAlarms:alarmsCopy completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)deleteAlarmsWithIdentifiers:(id)identifiers completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = identifiersCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling deleteAlarmsWithIdentifiers %{public}@", &v10, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore deleteAKCAlarms:identifiersCopy completion:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)didAlertNotificationWithID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = dCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ didAlertNotificationWithID received %{public}@, forwarding to conductor", &v7, 0x16u);
  }

  [(StringConductor *)self->_conductor send:dCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)snoozeAlarmWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding alarm snooze action to AlarmKit for id: %{public}@", &v7, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon countdownAlertWithIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dismissAlarmWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding alarm dismiss action to AlarmKit for id: %{public}@", &v7, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon dismissAlertWithIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)repeatTimerWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding timer repeat action to AlarmKit for id: %{public}@", &v7, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon countdownAlertWithIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dismissTimerWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding timer dismiss action to AlarmKit for id: %{public}@", &v7, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon dismissAlertWithIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performSecondaryActionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding secondary action to AlarmKit for id: %{public}@", &v7, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon performSecondaryActionWithIdentifier:identifierCopy];
  v6 = *MEMORY[0x1E69E9840];
}

@end