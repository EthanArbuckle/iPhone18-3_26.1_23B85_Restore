@interface _DKKnowledgeStorageLogging
+ (id)sharedInstance;
- (_DKKnowledgeStorageLogging)init;
- (id)portraitStreamNames;
- (id)streamNamesNotificationWhitelist;
- (void)_sendDistributedNotificationName:(void *)name object:(void *)object throttledActivityName:;
- (void)_sendDistributedNotificationName:(void *)name streamNameCounts:;
- (void)_updateCounter:(void *)counter streamNameCounts:;
- (void)knowledgeStorage:(id)storage didInsertEventsWithStreamNameCounts:(id)counts;
- (void)knowledgeStorage:(id)storage didInsertLocalEventsWithStreamNameCounts:(id)counts;
@end

@implementation _DKKnowledgeStorageLogging

- (id)portraitStreamNames
{
  if (self)
  {
    if (_MergedGlobals_5 != -1)
    {
      dispatch_once(&_MergedGlobals_5, &__block_literal_global_3_0);
    }

    self = qword_1EADBD630;
    v1 = vars8;
  }

  return self;
}

- (id)streamNamesNotificationWhitelist
{
  if (self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62___DKKnowledgeStorageLogging_streamNamesNotificationWhitelist__block_invoke;
    block[3] = &unk_1E7367440;
    block[4] = self;
    if (qword_1EADBD638 != -1)
    {
      dispatch_once(&qword_1EADBD638, block);
    }

    self = qword_1EADBD640;
    v1 = block[6];
  }

  return self;
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

- (void)_updateCounter:(void *)counter streamNameCounts:
{
  v24 = *MEMORY[0x1E69E9840];
  v23 = a2;
  counterCopy = counter;
  if (self)
  {
    [(_DKKnowledgeStorageLogging *)self portraitStreamNames];
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
          v13 = [counterCopy countForObject:v12];
          if (v13)
          {
            v14 = v13;
            v15 = +[_CDPortraitStreams entityStream];
            name = [v15 name];
            v17 = [v12 isEqualToString:name];

            v18 = @"entity";
            if (v17)
            {
              goto LABEL_10;
            }

            v19 = +[_CDPortraitStreams topicStream];
            name2 = [v19 name];
            v21 = [v12 isEqualToString:name2];

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

- (void)_sendDistributedNotificationName:(void *)name object:(void *)object throttledActivityName:
{
  v7 = a2;
  nameCopy = name;
  if (self)
  {
    objectCopy = object;
    v10 = +[_DKThrottledActivity standardInstance];
    v11 = *(self + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92___DKKnowledgeStorageLogging__sendDistributedNotificationName_object_throttledActivityName___block_invoke;
    v12[3] = &unk_1E7367710;
    v13 = v7;
    v14 = nameCopy;
    [v10 performWithMinimumIntervalInSecondsOf:objectCopy name:v11 queue:v12 activityBlock:2.0];
  }
}

- (void)_sendDistributedNotificationName:(void *)name streamNameCounts:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  nameCopy = name;
  if (self)
  {
    v16 = 0;
    streamNamesNotificationWhitelist = [(_DKKnowledgeStorageLogging *)self streamNamesNotificationWhitelist];
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
            objc_enumerationMutation(streamNamesNotificationWhitelist);
          }

          v13 = *(8 * i);
          if ([nameCopy countForObject:v13])
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DKKnowledgeStorageLogging%@:%@", v5, v13, v16];
            [(_DKKnowledgeStorageLogging *)self _sendDistributedNotificationName:v5 object:v13 throttledActivityName:v14];
          }
        }

        OUTLINED_FUNCTION_38();
        v10 = [streamNamesNotificationWhitelist countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)knowledgeStorage:(id)storage didInsertEventsWithStreamNameCounts:(id)counts
{
  v5 = qword_1EADBD650;
  countsCopy = counts;
  v8 = countsCopy;
  if (v5 == -1)
  {
    v7 = countsCopy;
  }

  else
  {
    dispatch_once(&qword_1EADBD650, &__block_literal_global_23);
    v7 = v8;
  }

  [(_DKKnowledgeStorageLogging *)self _updateCounter:v7 streamNameCounts:?];
  [(_DKKnowledgeStorageLogging *)self _sendDistributedNotificationName:v8 streamNameCounts:?];
}

- (void)knowledgeStorage:(id)storage didInsertLocalEventsWithStreamNameCounts:(id)counts
{
  v5 = qword_1EADBD660;
  countsCopy = counts;
  v8 = countsCopy;
  if (v5 == -1)
  {
    v7 = countsCopy;
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