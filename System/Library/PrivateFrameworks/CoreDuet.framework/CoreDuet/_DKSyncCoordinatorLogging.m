@interface _DKSyncCoordinatorLogging
- (_DKSyncCoordinatorLogging)init;
- (id)portraitStreamNames;
- (id)typeValueWithStreamName:(void *)a1;
- (uint64_t)_syncCoordinatorDidCreateChangeSetOfType:(uint64_t)a1;
- (void)_sendDistributedNotificationName:(uint64_t)a1;
- (void)_sendDistributedNotificationName:(void *)a3 object:(void *)a4 throttledActivityName:;
- (void)_sendDistributedNotificationName:(void *)a3 streamNameCounts:;
- (void)_updateSyncCounter:(void *)a3 streamNameCounts:;
- (void)syncCoordinator:(id)a3 didAddRemoteEventsWithStreamNameCounts:(id)a4 events:(id)a5;
- (void)syncCoordinator:(id)a3 didCreateAdditionChangeSet:(id)a4;
- (void)syncCoordinator:(id)a3 didCreateDeletionChangeSet:(id)a4;
- (void)syncCoordinator:(id)a3 didDeleteRemoteEventsWithCount:(unint64_t)a4;
- (void)syncCoordinator:(id)a3 didInsertLocalAdditionEventsWithStreamNameCounts:(id)a4;
@end

@implementation _DKSyncCoordinatorLogging

- (_DKSyncCoordinatorLogging)init
{
  v6.receiver = self;
  v6.super_class = _DKSyncCoordinatorLogging;
  v2 = [(_DKSyncCoordinatorLogging *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.coreduet.SyncCoordinatorLogging.notificationQueue", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v3;
  }

  return v2;
}

- (id)portraitStreamNames
{
  if (a1)
  {
    if (_MergedGlobals_7 != -1)
    {
      dispatch_once(&_MergedGlobals_7, &__block_literal_global_3_1);
    }

    a1 = qword_1EADBD680;
    v1 = vars8;
  }

  return a1;
}

- (id)typeValueWithStreamName:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (qword_1EADBD688 != -1)
    {
      dispatch_once(&qword_1EADBD688, &__block_literal_global_8);
    }

    a1 = [qword_1EADBD690 objectForKeyedSubscript:v3];
  }

  return a1;
}

- (void)_updateSyncCounter:(void *)a3 streamNameCounts:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(_DKSyncCoordinatorLogging *)a1 portraitStreamNames];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [v6 countForObject:{v12, v18}];
          if (v13)
          {
            v14 = v13;
            v15 = [(_DKSyncCoordinatorLogging *)a1 typeValueWithStreamName:v12];
            if (v15)
            {
              [(_DKEventTypeStatsCounter *)v5 incrementCountByNumber:v14 typeValue:v15];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = v16;
      }

      while (v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_sendDistributedNotificationName:(void *)a3 object:(void *)a4 throttledActivityName:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = a4;
    v10 = +[_DKThrottledActivity standardInstance];
    v11 = *(a1 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91___DKSyncCoordinatorLogging__sendDistributedNotificationName_object_throttledActivityName___block_invoke;
    v12[3] = &unk_1E7367710;
    v13 = v7;
    v14 = v8;
    [v10 performWithMinimumIntervalInSecondsOf:v9 name:v11 queue:v12 activityBlock:2.0];
  }
}

- (void)_sendDistributedNotificationName:(uint64_t)a1
{
  if (a1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a2;
    v5 = [v3 stringWithFormat:@"_DKSyncCoordinatorLogging%@", v4];
    [(_DKSyncCoordinatorLogging *)a1 _sendDistributedNotificationName:v4 object:0 throttledActivityName:v5];
  }
}

- (void)_sendDistributedNotificationName:(void *)a3 streamNameCounts:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v18 = 0;
    v7 = [(_DKSyncCoordinatorLogging *)a1 portraitStreamNames];
    OUTLINED_FUNCTION_38();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      do
      {
        v12 = 0;
        do
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(8 * v12);
          if ([v6 countForObject:v13])
          {
            v14 = [(_DKSyncCoordinatorLogging *)a1 typeValueWithStreamName:v13];
            if (v14)
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKSyncCoordinatorLogging%@%@", v5, v14, v18];
              [(_DKSyncCoordinatorLogging *)a1 _sendDistributedNotificationName:v5 object:v13 throttledActivityName:v15];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        OUTLINED_FUNCTION_38();
        v16 = [v7 countByEnumeratingWithState:? objects:? count:?];
        v10 = v16;
      }

      while (v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)syncCoordinator:(id)a3 didInsertLocalAdditionEventsWithStreamNameCounts:(id)a4
{
  v5 = qword_1EADBD6A0;
  v6 = a4;
  v8 = v6;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    dispatch_once(&qword_1EADBD6A0, &__block_literal_global_24_1);
    v7 = v8;
  }

  [(_DKSyncCoordinatorLogging *)self _updateSyncCounter:v7 streamNameCounts:?];
  [(_DKSyncCoordinatorLogging *)self _sendDistributedNotificationName:v8 streamNameCounts:?];
}

- (void)syncCoordinator:(id)a3 didAddRemoteEventsWithStreamNameCounts:(id)a4 events:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28 = v8;
  if (qword_1EADBD6B8 != -1)
  {
    dispatch_once(&qword_1EADBD6B8, &__block_literal_global_36_1);
  }

  v27 = v9;
  [(_DKSyncCoordinatorLogging *)self _updateSyncCounter:v9 streamNameCounts:?];
  v11 = [MEMORY[0x1E695DF00] date];
  v29 = 0;
  v12 = v10;
  OUTLINED_FUNCTION_38();
  v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (MEMORY[0] != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(8 * i);
        v19 = [v18 stream];
        v20 = [v19 name];

        v21 = [(_DKSyncCoordinatorLogging *)self typeValueWithStreamName:v20];
        if (v21)
        {
          v22 = [v18 endDate];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = [v18 startDate];
          }

          v25 = v24;

          [(_DKEventTypeStatsTimerCounter *)qword_1EADBD6B0 addTimingWithStartDate:v25 endDate:v11 typeValue:v21];
        }
      }

      OUTLINED_FUNCTION_38();
      v15 = [v12 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v15);
  }

  [(_DKSyncCoordinatorLogging *)self _sendDistributedNotificationName:v27 streamNameCounts:?];
  v26 = *MEMORY[0x1E69E9840];
}

- (void)syncCoordinator:(id)a3 didDeleteRemoteEventsWithCount:(unint64_t)a4
{
  if (qword_1EADBD6C8 != -1)
  {
    dispatch_once(&qword_1EADBD6C8, &__block_literal_global_52);
  }

  [(_DKEventStatsCounter *)qword_1EADBD6C0 incrementCountByNumber:a4];

  [(_DKSyncCoordinatorLogging *)self _sendDistributedNotificationName:?];
}

- (uint64_t)_syncCoordinatorDidCreateChangeSetOfType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6 = v3;
    if (qword_1EADBD6D8 != -1)
    {
      dispatch_once(&qword_1EADBD6D8, &__block_literal_global_58_1);
    }

    [(_DKEventTypeStatsCounter *)qword_1EADBD6D0 incrementCountWithTypeValue:v6];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)syncCoordinator:(id)a3 didCreateAdditionChangeSet:(id)a4
{
  [(_DKSyncCoordinatorLogging *)self _syncCoordinatorDidCreateChangeSetOfType:?];

  [(_DKSyncCoordinatorLogging *)self _sendDistributedNotificationName:?];
}

- (void)syncCoordinator:(id)a3 didCreateDeletionChangeSet:(id)a4
{
  [(_DKSyncCoordinatorLogging *)self _syncCoordinatorDidCreateChangeSetOfType:?];

  [(_DKSyncCoordinatorLogging *)self _sendDistributedNotificationName:?];
}

@end