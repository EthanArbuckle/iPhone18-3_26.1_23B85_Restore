@interface FCPrivateDataContextInternal
- (FCAppActivityMonitor)appActivityMonitor;
- (FCCKPrivateDatabase)privateDatabase;
- (FCCKRecordZone)channelMembershipsRecordZone;
- (FCCKRecordZone)issueReadingHistoryRecordZone;
- (FCCKRecordZone)puzzleHistoryRecordZone;
- (FCCKRecordZone)readingHistoryRecordZone;
- (FCCKRecordZone)readingListRecordZone;
- (FCCKRecordZone)sensitiveSubscriptionsRecordZone;
- (FCCKRecordZone)shortcutsRecordZone;
- (FCCKRecordZone)subscriptionsRecordZone;
- (FCCKRecordZone)userInfoRecordZone;
- (FCCKRecordZoneManager)recordZoneManager;
- (FCPrivateDataContextInternal)init;
- (id)recordZoneWithName:(id)name;
- (void)prepareRecordZonesForUseWithCompletionHandler:(id)handler;
@end

@implementation FCPrivateDataContextInternal

- (FCPrivateDataContextInternal)init
{
  v3.receiver = self;
  v3.super_class = FCPrivateDataContextInternal;
  return [(FCPrivateDataContextInternal *)&v3 init];
}

- (FCAppActivityMonitor)appActivityMonitor
{
  v15 = *MEMORY[0x1E69E9840];
  appActivityMonitor = self->_appActivityMonitor;
  if (!appActivityMonitor)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_appActivityMonitor"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContextInternal appActivityMonitor]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 396;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      appActivityMonitor = self->_appActivityMonitor;
    }

    else
    {
      appActivityMonitor = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return appActivityMonitor;
}

- (FCCKPrivateDatabase)privateDatabase
{
  v15 = *MEMORY[0x1E69E9840];
  privateDatabase = self->_privateDatabase;
  if (!privateDatabase)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_privateDatabase"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContextInternal privateDatabase]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 390;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      privateDatabase = self->_privateDatabase;
    }

    else
    {
      privateDatabase = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return privateDatabase;
}

- (FCCKRecordZoneManager)recordZoneManager
{
  v15 = *MEMORY[0x1E69E9840];
  recordZoneManager = self->_recordZoneManager;
  if (!recordZoneManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "_recordZoneManager"];
      *buf = 136315906;
      v8 = "[FCPrivateDataContextInternal recordZoneManager]";
      v9 = 2080;
      v10 = "FCPrivateDataContext.m";
      v11 = 1024;
      v12 = 383;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      recordZoneManager = self->_recordZoneManager;
    }

    else
    {
      recordZoneManager = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];

  return recordZoneManager;
}

- (FCCKRecordZone)issueReadingHistoryRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)readingListRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)puzzleHistoryRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)shortcutsRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)subscriptionsRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)sensitiveSubscriptionsRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)readingHistoryRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)channelMembershipsRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (FCCKRecordZone)userInfoRecordZone
{
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v3 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:?];

  return v3;
}

- (id)recordZoneWithName:(id)name
{
  nameCopy = name;
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  v6 = [(FCCKRecordZoneManager *)recordZoneManager recordZoneWithName:nameCopy];

  return v6;
}

- (void)prepareRecordZonesForUseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  recordZoneManager = [(FCPrivateDataContextInternal *)self recordZoneManager];
  [(FCCKRecordZoneManager *)recordZoneManager prepareRecordZonesForUseWithCompletionHandler:handlerCopy];
}

@end