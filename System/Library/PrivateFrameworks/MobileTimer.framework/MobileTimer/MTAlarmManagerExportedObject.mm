@interface MTAlarmManagerExportedObject
- (MTAlarmManager)alarmManager;
- (MTAlarmManagerExportedObject)initWithAlarmManager:(id)manager;
- (void)_didReceiveAlarmServerReadyNotification:(id)notification;
- (void)alarmDismissed:(id)dismissed;
- (void)alarmFired:(id)fired;
- (void)alarmSnoozed:(id)snoozed;
- (void)alarmsAdded:(id)added;
- (void)alarmsRemoved:(id)removed;
- (void)alarmsUpdated:(id)updated;
- (void)dealloc;
- (void)nextAlarmChanged:(id)changed;
@end

@implementation MTAlarmManagerExportedObject

- (MTAlarmManagerExportedObject)initWithAlarmManager:(id)manager
{
  v13 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = MTAlarmManagerExportedObject;
  v5 = [(MTAlarmManagerExportedObject *)&v10 init];
  if (v5)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    objc_storeWeak(&v5->_alarmManager, managerCopy);
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__didReceiveAlarmServerReadyNotification_ name:@"com.apple.MTAlarmServer.ready" object:0];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.MTAlarmServer.ready" object:0];

  v6.receiver = self;
  v6.super_class = MTAlarmManagerExportedObject;
  [(MTAlarmManagerExportedObject *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_didReceiveAlarmServerReadyNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received MTAlarmServerReadyNotification", buf, 0xCu);
  }

  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = alarmManager;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received MTAlarmServerReadyNotification, posting MTAlarmManagerStateReset", buf, 0xCu);
    }

    cache = [(MTAlarmManagerExportedObject *)alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [(MTAlarmManagerExportedObject *)alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MTAlarmManagerExportedObject__didReceiveAlarmServerReadyNotification___block_invoke;
    block[3] = &unk_1E7B0C9D8;
    v12 = alarmManager;
    dispatch_async(mtNotifiyingQueue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __72__MTAlarmManagerExportedObject__didReceiveAlarmServerReadyNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 postNotificationName:@"MTAlarmManagerStateReset" object:*(a1 + 32)];
}

- (void)alarmsAdded:(id)added
{
  v19 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [addedCopy valueForKey:@"alarmID"];
      *buf = 138543618;
      v16 = alarmManager;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notified alarms added: %{public}@", buf, 0x16u);
    }

    cache = [alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__MTAlarmManagerExportedObject_alarmsAdded___block_invoke;
    v12[3] = &unk_1E7B0C928;
    v13 = addedCopy;
    v14 = alarmManager;
    dispatch_async(mtNotifiyingQueue, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __44__MTAlarmManagerExportedObject_alarmsAdded___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmManager - Alarm Added", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Alarms"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) notificationCenter];
  [v5 postNotificationName:@"MTAlarmManagerAlarmsAdded" object:*(a1 + 40) userInfo:v4];

  v6 = [*(a1 + 40) notificationCenter];
  [v6 postNotificationName:@"MTAlarmManagerAlarmsChanged" object:*(a1 + 40) userInfo:v4];
}

- (void)alarmsUpdated:(id)updated
{
  v19 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [updatedCopy valueForKey:@"alarmID"];
      *buf = 138543618;
      v16 = alarmManager;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notified alarms updated: %{public}@", buf, 0x16u);
    }

    cache = [alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__MTAlarmManagerExportedObject_alarmsUpdated___block_invoke;
    v12[3] = &unk_1E7B0C928;
    v13 = updatedCopy;
    v14 = alarmManager;
    dispatch_async(mtNotifiyingQueue, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __46__MTAlarmManagerExportedObject_alarmsUpdated___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmManager - Alarm Updated", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Alarms"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) notificationCenter];
  [v5 postNotificationName:@"MTAlarmManagerAlarmsUpdated" object:*(a1 + 40) userInfo:v4];

  v6 = [*(a1 + 40) notificationCenter];
  [v6 postNotificationName:@"MTAlarmManagerAlarmsChanged" object:*(a1 + 40) userInfo:v4];
}

- (void)alarmsRemoved:(id)removed
{
  v19 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [removedCopy valueForKey:@"alarmID"];
      *buf = 138543618;
      v16 = alarmManager;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notified alarms removed: %{public}@", buf, 0x16u);
    }

    cache = [alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__MTAlarmManagerExportedObject_alarmsRemoved___block_invoke;
    v12[3] = &unk_1E7B0C928;
    v13 = removedCopy;
    v14 = alarmManager;
    dispatch_async(mtNotifiyingQueue, v12);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __46__MTAlarmManagerExportedObject_alarmsRemoved___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmManager - Alarm Removed", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"Alarms"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) notificationCenter];
  [v5 postNotificationName:@"MTAlarmManagerAlarmsRemoved" object:*(a1 + 40) userInfo:v4];

  v6 = [*(a1 + 40) notificationCenter];
  [v6 postNotificationName:@"MTAlarmManagerAlarmsChanged" object:*(a1 + 40) userInfo:v4];
}

- (void)alarmSnoozed:(id)snoozed
{
  v18 = *MEMORY[0x1E69E9840];
  snoozedCopy = snoozed;
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = alarmManager;
      v16 = 2114;
      v17 = snoozedCopy;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notified alarm snoozed: %{public}@", buf, 0x16u);
    }

    cache = [alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__MTAlarmManagerExportedObject_alarmSnoozed___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v12 = snoozedCopy;
    v13 = alarmManager;
    dispatch_async(mtNotifiyingQueue, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __45__MTAlarmManagerExportedObject_alarmSnoozed___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmManager - Alarm Snoozed", v10, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = MEMORY[0x1E695DF20];
    v11[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v5 = [v3 dictionaryWithObject:v4 forKey:@"Alarms"];

    v6 = [*(a1 + 40) notificationCenter];
    [v6 postNotificationName:@"MTAlarmManagerAlarmsUpdated" object:*(a1 + 40) userInfo:v5];

    v7 = [*(a1 + 40) notificationCenter];
    [v7 postNotificationName:@"MTAlarmManagerAlarmsChanged" object:*(a1 + 40) userInfo:v5];

    v8 = [*(a1 + 40) notificationCenter];
    [v8 postNotificationName:@"MTAlarmManagerFiringAlarmChanged" object:*(a1 + 40) userInfo:v5];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)alarmFired:(id)fired
{
  v18 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = alarmManager;
      v16 = 2114;
      v17 = firedCopy;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notified alarm fired: %{public}@", buf, 0x16u);
    }

    cache = [alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__MTAlarmManagerExportedObject_alarmFired___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v12 = firedCopy;
    v13 = alarmManager;
    dispatch_async(mtNotifiyingQueue, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __43__MTAlarmManagerExportedObject_alarmFired___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmManager - Alarm Fired", v9, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = MEMORY[0x1E695DF20];
    v10[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [v3 dictionaryWithObject:v4 forKey:@"Alarms"];

    v6 = [*(a1 + 40) notificationCenter];
    [v6 postNotificationName:@"MTAlarmManagerAlarmFired" object:*(a1 + 40) userInfo:v5];

    v7 = [*(a1 + 40) notificationCenter];
    [v7 postNotificationName:@"MTAlarmManagerFiringAlarmChanged" object:*(a1 + 40) userInfo:v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)alarmDismissed:(id)dismissed
{
  v18 = *MEMORY[0x1E69E9840];
  dismissedCopy = dismissed;
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = alarmManager;
      v16 = 2114;
      v17 = dismissedCopy;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notified alarm dismissed: %{public}@", buf, 0x16u);
    }

    cache = [alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__MTAlarmManagerExportedObject_alarmDismissed___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v12 = dismissedCopy;
    v13 = alarmManager;
    dispatch_async(mtNotifiyingQueue, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __47__MTAlarmManagerExportedObject_alarmDismissed___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmManager - Alarm Dismissed", v9, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = MEMORY[0x1E695DF20];
    v10[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [v3 dictionaryWithObject:v4 forKey:@"Alarms"];

    v6 = [*(a1 + 40) notificationCenter];
    [v6 postNotificationName:@"MTAlarmManagerFiringAlarmDismissed" object:*(a1 + 40) userInfo:v5];

    v7 = [*(a1 + 40) notificationCenter];
    [v7 postNotificationName:@"MTAlarmManagerFiringAlarmChanged" object:*(a1 + 40) userInfo:v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)nextAlarmChanged:(id)changed
{
  v18 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  alarmManager = [(MTAlarmManagerExportedObject *)self alarmManager];
  if (alarmManager)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = alarmManager;
      v16 = 2114;
      v17 = changedCopy;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying next alarm changed: %{public}@", buf, 0x16u);
    }

    cache = [alarmManager cache];
    [cache markNeedsUpdate];

    notificationCenter = [alarmManager notificationCenter];
    mtNotifiyingQueue = [notificationCenter mtNotifiyingQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__MTAlarmManagerExportedObject_nextAlarmChanged___block_invoke;
    v11[3] = &unk_1E7B0C928;
    v12 = changedCopy;
    v13 = alarmManager;
    dispatch_async(mtNotifiyingQueue, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __49__MTAlarmManagerExportedObject_nextAlarmChanged___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmManager - Next Alarm Changed", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"NextAlarm"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) notificationCenter];
  [v5 postNotificationName:@"MTAlarmManagerNextAlarmChanged" object:*(a1 + 40) userInfo:v4];

  v6 = MTLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notified next alarm changed: %{public}@", buf, 0x16u);
  }

  if (*(a1 + 32))
  {
    v8 = MEMORY[0x1E695DF20];
    v15 = *(a1 + 32);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v10 = [v8 dictionaryWithObject:v9 forKey:@"Alarms"];

    v11 = [*(a1 + 40) notificationCenter];
    [v11 postNotificationName:@"MTAlarmManagerAlarmsChanged" object:*(a1 + 40) userInfo:v10];

    v12 = MTLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ notified alarms changed: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v10 = v4;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (MTAlarmManager)alarmManager
{
  WeakRetained = objc_loadWeakRetained(&self->_alarmManager);

  return WeakRetained;
}

@end