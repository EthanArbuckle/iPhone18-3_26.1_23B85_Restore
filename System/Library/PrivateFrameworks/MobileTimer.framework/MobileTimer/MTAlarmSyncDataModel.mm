@interface MTAlarmSyncDataModel
- (MTAlarmSyncDataModel)initWithAlarmStorage:(id)storage syncMetrics:(id)metrics;
- (MTAlarmSyncDataModel)initWithAlarmStorage:(id)storage syncMetrics:(id)metrics syncServiceManagerBlock:(id)block serializer:(id)serializer serialQueue:(id)queue;
- (id)gatherDiagnostics;
- (id)sourceIdentifier;
- (void)_performAction:(id)action;
- (void)_performDismiss:(id)dismiss;
- (void)_performSnooze:(id)snooze;
- (void)_setupSyncManagerWithBlock:(id)block;
- (void)applyChange:(id)change;
- (void)printDiagnostics;
- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action;
- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action;
@end

@implementation MTAlarmSyncDataModel

- (MTAlarmSyncDataModel)initWithAlarmStorage:(id)storage syncMetrics:(id)metrics
{
  metricsCopy = metrics;
  storageCopy = storage;
  v8 = dispatch_queue_attr_make_with_qos_class(0, +[MTScheduler defaultPriority], -1);
  v9 = dispatch_queue_create("com.apple.MTAlarmSyncDataModel", v8);
  v10 = [MEMORY[0x1E69B3790] schedulerWithDispatchQueue:v9];
  defaultBlock = [objc_opt_class() defaultBlock];
  v12 = [(MTAlarmSyncDataModel *)self initWithAlarmStorage:storageCopy syncMetrics:metricsCopy syncServiceManagerBlock:defaultBlock serializer:v10 serialQueue:v9];

  return v12;
}

- (MTAlarmSyncDataModel)initWithAlarmStorage:(id)storage syncMetrics:(id)metrics syncServiceManagerBlock:(id)block serializer:(id)serializer serialQueue:(id)queue
{
  v25 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  metricsCopy = metrics;
  blockCopy = block;
  serializerCopy = serializer;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = MTAlarmSyncDataModel;
  v17 = [(MTAlarmSyncDataModel *)&v22 init];
  if (v17)
  {
    v18 = MTLogForCategory(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v17;
      _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v17->_alarmStorage, storage);
    objc_storeStrong(&v17->_serialQueue, queue);
    objc_storeStrong(&v17->_serializer, serializer);
    objc_storeStrong(&v17->_syncMetrics, metrics);
    [(MTAlarmSyncDataModel *)v17 _setupSyncManagerWithBlock:blockCopy];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

MTSyncServiceManager *__36__MTAlarmSyncDataModel_defaultBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (+[MTCompanionSyncStatusProvider deviceSupportsSyncing])
  {
    v3 = objc_alloc_init(MTCompanionSyncStatusProvider);
    v4 = [[MTCompanionSyncService alloc] initWithSyncStatusProvider:v3];
    v5 = [MTSyncServiceManager alloc];
    v6 = [v2 syncMetrics];
    v7 = [(MTSyncServiceManager *)v5 initWithSyncService:v4 syncStatusProvider:v3 syncDataModel:v2 syncMetrics:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setupSyncManagerWithBlock:(id)block
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = (*(block + 2))(block, self);
  syncServiceManager = self->_syncServiceManager;
  self->_syncServiceManager = v4;

  if (self->_syncServiceManager)
  {
    alarmStorage = self->_alarmStorage;
    v7 = *MEMORY[0x1E69E9840];

    [(MTAlarmStorage *)alarmStorage registerObserver:self];
  }

  else
  {
    v8 = MTLogForCategory(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has no sync manager.", &v10, 0xCu);
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action
{
  sourceCopy = source;
  alarmCopy = alarm;
  if ([alarmCopy isSleepAlarm])
  {
    sourceIdentifier = [sourceCopy sourceIdentifier];
    sourceIdentifier2 = [(MTAlarmSyncDataModel *)self sourceIdentifier];
    v11 = [sourceIdentifier isEqualToString:sourceIdentifier2];

    if ((v11 & 1) == 0)
    {
      serializer = self->_serializer;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__MTAlarmSyncDataModel_source_didDismissAlarm_dismissAction___block_invoke;
      v13[3] = &unk_1E7B0C928;
      v13[4] = self;
      v14 = alarmCopy;
      [(NAScheduler *)serializer performBlock:v13];
    }
  }
}

void __61__MTAlarmSyncDataModel_source_didDismissAlarm_dismissAction___block_invoke(uint64_t a1)
{
  v2 = MTNewChildActivityForName(8uLL);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__MTAlarmSyncDataModel_source_didDismissAlarm_dismissAction___block_invoke_2;
  v4[3] = &unk_1E7B0C928;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  os_activity_apply(v2, v4);
}

void __61__MTAlarmSyncDataModel_source_didDismissAlarm_dismissAction___block_invoke_2(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmSyncDataModel - Syncing Alarm Dismiss", v8, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 40) alarmIDString];
  v5 = [*(a1 + 40) dismissedDate];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [MTSyncDismiss syncDismissOfObjectWithIdentifier:v4 dismissDate:v5 date:v6];
  [v3 syncChange:v7];
}

- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action
{
  sourceCopy = source;
  alarmCopy = alarm;
  if ([alarmCopy isSleepAlarm])
  {
    sourceIdentifier = [sourceCopy sourceIdentifier];
    sourceIdentifier2 = [(MTAlarmSyncDataModel *)self sourceIdentifier];
    v11 = [sourceIdentifier isEqualToString:sourceIdentifier2];

    if ((v11 & 1) == 0)
    {
      serializer = self->_serializer;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __59__MTAlarmSyncDataModel_source_didSnoozeAlarm_snoozeAction___block_invoke;
      v13[3] = &unk_1E7B0C928;
      v13[4] = self;
      v14 = alarmCopy;
      [(NAScheduler *)serializer performBlock:v13];
    }
  }
}

void __59__MTAlarmSyncDataModel_source_didSnoozeAlarm_snoozeAction___block_invoke(uint64_t a1)
{
  v2 = MTNewChildActivityForName(9uLL);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__MTAlarmSyncDataModel_source_didSnoozeAlarm_snoozeAction___block_invoke_2;
  v4[3] = &unk_1E7B0C928;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  os_activity_apply(v2, v4);
}

void __59__MTAlarmSyncDataModel_source_didSnoozeAlarm_snoozeAction___block_invoke_2(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmSyncDataModel - Syncing Alarm Snooze", v8, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 40) alarmIDString];
  v5 = [*(a1 + 40) snoozeFireDate];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [MTSyncSnooze syncSnoozeOfObjectWithIdentifier:v4 snoozeDate:v5 date:v6];
  [v3 syncChange:v7];
}

- (void)applyChange:(id)change
{
  changeCopy = change;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__MTAlarmSyncDataModel_applyChange___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  [(NAScheduler *)serializer performBlock:v7];
}

uint64_t __36__MTAlarmSyncDataModel_applyChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) syncType];
  if (!result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 _performAction:v4];
  }

  return result;
}

- (void)_performAction:(id)action
{
  v11 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = actionCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ performing action %{public}@", &v7, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MTAlarmSyncDataModel *)self _performDismiss:actionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTAlarmSyncDataModel *)self _performSnooze:actionCopy];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_performDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = MTNewChildActivityForName(8uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MTAlarmSyncDataModel__performDismiss___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = dismissCopy;
  v6 = dismissCopy;
  os_activity_apply(v5, v7);
}

void __40__MTAlarmSyncDataModel__performDismiss___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmSyncDataModel - Applying Alarm Dismiss", v6, 2u);
  }

  v3 = [*(a1 + 32) alarmStorage];
  v4 = [*(a1 + 40) syncIdentifier];
  v5 = [*(a1 + 40) dismissDate];
  [v3 dismissAlarmWithIdentifier:v4 dismissDate:v5 dismissAction:5 withCompletion:0 source:*(a1 + 32)];
}

- (void)_performSnooze:(id)snooze
{
  snoozeCopy = snooze;
  v5 = MTNewChildActivityForName(9uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MTAlarmSyncDataModel__performSnooze___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = snoozeCopy;
  v6 = snoozeCopy;
  os_activity_apply(v5, v7);
}

void __39__MTAlarmSyncDataModel__performSnooze___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmSyncDataModel - Applying Alarm Snooze", v6, 2u);
  }

  v3 = [*(a1 + 32) alarmStorage];
  v4 = [*(a1 + 40) syncIdentifier];
  v5 = [*(a1 + 40) snoozeDate];
  [v3 snoozeAlarmWithIdentifier:v4 snoozeDate:v5 snoozeAction:2 withCompletion:0 source:*(a1 + 32)];
}

- (id)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)printDiagnostics
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----%{public}@-----", &v8, 0xCu);
  }

  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    syncServiceManager = [(MTAlarmSyncDataModel *)self syncServiceManager];
    v8 = 138543362;
    v9 = syncServiceManager;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Alarm Sync Manager: %{public}@", &v8, 0xCu);
  }

  syncServiceManager2 = [(MTAlarmSyncDataModel *)self syncServiceManager];
  [syncServiceManager2 printDiagnostics];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v3 = objc_opt_new();
  syncServiceManager = [(MTAlarmSyncDataModel *)self syncServiceManager];
  v5 = [syncServiceManager description];
  [v3 setObject:v5 forKeyedSubscript:@"Alarm Sync Managers"];

  syncServiceManager2 = [(MTAlarmSyncDataModel *)self syncServiceManager];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    syncServiceManager3 = [(MTAlarmSyncDataModel *)self syncServiceManager];
    gatherDiagnostics = [syncServiceManager3 gatherDiagnostics];
    [v3 addEntriesFromDictionary:gatherDiagnostics];
  }

  return v3;
}

@end