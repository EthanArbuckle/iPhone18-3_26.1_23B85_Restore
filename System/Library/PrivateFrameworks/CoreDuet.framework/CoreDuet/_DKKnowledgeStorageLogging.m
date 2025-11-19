@interface _DKKnowledgeStorageLogging
+ (id)sharedInstance;
- (_DKKnowledgeStorageLogging)init;
- (id)portraitStreamNames;
- (id)streamNamesNotificationWhitelist;
- (void)_sendDistributedNotificationName:(void *)a3 object:(void *)a4 throttledActivityName:;
- (void)_sendDistributedNotificationName:(void *)a3 streamNameCounts:;
- (void)_updateCounter:(void *)a3 streamNameCounts:;
- (void)knowledgeStorage:(id)a3 didInsertEventsWithStreamNameCounts:(id)a4;
- (void)knowledgeStorage:(id)a3 didInsertLocalEventsWithStreamNameCounts:(id)a4;
@end

@implementation _DKKnowledgeStorageLogging

- (id)portraitStreamNames
{
  if (a1)
  {
    if (_MergedGlobals_5 != -1)
    {
      dispatch_once(&_MergedGlobals_5, &__block_literal_global_3_0);
    }

    a1 = qword_1EADBD630;
    v1 = vars8;
  }

  return a1;
}

- (id)streamNamesNotificationWhitelist
{
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62___DKKnowledgeStorageLogging_streamNamesNotificationWhitelist__block_invoke;
    block[3] = &unk_1E7367440;
    block[4] = a1;
    if (qword_1EADBD638 != -1)
    {
      dispatch_once(&qword_1EADBD638, block);
    }

    a1 = qword_1EADBD640;
    v1 = block[6];
  }

  return a1;
}

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_initialized_5 != -1)
  {
    +[_DKKnowledgeStorageLogging sharedInstance];
  }

  v0 = sharedInstance_logger;

  return v0;
}

- (_DKKnowledgeStorageLogging)init
{
  v6.receiver = self;
  v6.super_class = _DKKnowledgeStorageLogging;
  v2 = [(_DKKnowledgeStorageLogging *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.coreduet.KnowledgeStorageLogging.notificationQueue", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v3;
  }

  return v2;
}

- (void)_updateCounter:(void *)a3 streamNameCounts:
{
  v24 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v5 = a3;
  if (a1)
  {
    [(_DKKnowledgeStorageLogging *)a1 portraitStreamNames];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_38();
    v7 = v6;
    v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(8 * i);
          v13 = [v5 countForObject:v12];
          if (v13)
          {
            v14 = v13;
            v15 = +[_CDPortraitStreams entityStream];
            v16 = [v15 name];
            v17 = [v12 isEqualToString:v16];

            v18 = @"entity";
            if (v17)
            {
              goto LABEL_10;
            }

            v19 = +[_CDPortraitStreams topicStream];
            v20 = [v19 name];
            v21 = [v12 isEqualToString:v20];

            v18 = @"topic";
            if (v21)
            {
LABEL_10:
              [(_DKEventTypeStatsCounter *)v23 incrementCountByNumber:v14 typeValue:v18];
            }
          }
        }

        OUTLINED_FUNCTION_38();
        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
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
    v12[2] = __92___DKKnowledgeStorageLogging__sendDistributedNotificationName_object_throttledActivityName___block_invoke;
    v12[3] = &unk_1E7367710;
    v13 = v7;
    v14 = v8;
    [v10 performWithMinimumIntervalInSecondsOf:v9 name:v11 queue:v12 activityBlock:2.0];
  }
}

- (void)_sendDistributedNotificationName:(void *)a3 streamNameCounts:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v16 = 0;
    v7 = [(_DKKnowledgeStorageLogging *)a1 streamNamesNotificationWhitelist];
    OUTLINED_FUNCTION_38();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(8 * i);
          if ([v6 countForObject:v13])
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKKnowledgeStorageLogging%@:%@", v5, v13, v16];
            [(_DKKnowledgeStorageLogging *)a1 _sendDistributedNotificationName:v5 object:v13 throttledActivityName:v14];
          }
        }

        OUTLINED_FUNCTION_38();
        v10 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)knowledgeStorage:(id)a3 didInsertEventsWithStreamNameCounts:(id)a4
{
  v5 = qword_1EADBD650;
  v6 = a4;
  v8 = v6;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    dispatch_once(&qword_1EADBD650, &__block_literal_global_23);
    v7 = v8;
  }

  [(_DKKnowledgeStorageLogging *)self _updateCounter:v7 streamNameCounts:?];
  [(_DKKnowledgeStorageLogging *)self _sendDistributedNotificationName:v8 streamNameCounts:?];
}

- (void)knowledgeStorage:(id)a3 didInsertLocalEventsWithStreamNameCounts:(id)a4
{
  v5 = qword_1EADBD660;
  v6 = a4;
  v8 = v6;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    dispatch_once(&qword_1EADBD660, &__block_literal_global_35);
    v7 = v8;
  }

  [(_DKKnowledgeStorageLogging *)self _updateCounter:v7 streamNameCounts:?];
  [(_DKKnowledgeStorageLogging *)self _sendDistributedNotificationName:v8 streamNameCounts:?];
}

@end