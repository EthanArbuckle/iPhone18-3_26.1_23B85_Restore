@interface BMComputeSubscriptionSubstreamManager
- (BMComputeSubscriptionSubstreamManager)initWithQueue:(id)a3;
- (BOOL)supportsStream:(id)a3;
- (double)timestamp;
- (id)_initWithDomain:(unint64_t)a3 queue:(id)a4 library:(id)a5;
- (id)_loadSubscriptionsFromSubscriptionsSubstreams;
- (id)_subscriptionSourceForStream:(id)a3;
- (void)_checkinTimeout;
- (void)_removeSubscriptionsPassingTest:(id)a3;
- (void)addSubscription:(id)a3;
- (void)initialCheckinsComplete;
- (void)removeSubscription:(id)a3;
@end

@implementation BMComputeSubscriptionSubstreamManager

- (BMComputeSubscriptionSubstreamManager)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = BiomeLibraryAndInternalLibraryNode();
  v6 = [(BMComputeSubscriptionSubstreamManager *)self _initWithDomain:0 queue:v4 library:v5];

  return v6;
}

- (id)_initWithDomain:(unint64_t)a3 queue:(id)a4 library:(id)a5
{
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(v8);
  v17.receiver = self;
  v17.super_class = BMComputeSubscriptionSubstreamManager;
  v10 = [(BMComputeSubscriptionSubstreamManager *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a4);
    objc_storeStrong(&v11->_library, a5);
    v12 = objc_opt_new();
    checkins = v11->_checkins;
    v11->_checkins = v12;

    v14 = [(BMComputeSubscriptionSubstreamManager *)v11 _loadSubscriptionsFromSubscriptionsSubstreams];
    subscriptions = v11->_subscriptions;
    v11->_subscriptions = v14;
  }

  return v11;
}

- (id)_loadSubscriptionsFromSubscriptionsSubstreams
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(BMLibraryNode *)self->_library allStreams];
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v6 = *MEMORY[0x1E698E948];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 configuration];
        v10 = [v9 enableSubscriptionSubstream];

        if (v10)
        {
          v11 = objc_opt_new();
          v12 = [v8 subscriptionPublisherWithUseCase:v6 options:v11];
          v13 = [BMPairedEventSession sessionPublisherWithStreamPublisher:v12 startingBlock:&__block_literal_global_12 sessionKeyBlock:&__block_literal_global_7 options:0];
          v14 = objc_opt_new();
          v15 = [v8 identifier];
          [v21 setObject:v14 forKeyedSubscript:v15];

          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_3;
          v23[3] = &unk_1E6E537B8;
          v24 = v14;
          v16 = v14;
          v17 = [v13 sinkWithBookmark:0 completion:v23 receiveInput:&__block_literal_global_13];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  v18 = [v21 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

id __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_2(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 eventBody];
  v4 = [v3 client];
  v10[0] = v4;
  v5 = [v2 eventBody];

  v6 = [v5 identifier];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 error];
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __86__BMComputeSubscriptionSubstreamManager__loadSubscriptionsFromSubscriptionsSubstreams__block_invoke_3_cold_1(v6, v7);
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [BMPairedEventSession openSessionsFromBookmark:v5, 0];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) startEvent];
          v13 = [v12 eventBody];

          v14 = *(a1 + 32);
          v15 = [v13 uniqueIdentifier];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsStream:(id)a3
{
  v3 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (double)timestamp
{
  dateOverride = self->_dateOverride;
  if (!dateOverride)
  {
    return CFAbsoluteTimeGetCurrent();
  }

  [(NSDate *)dateOverride timeIntervalSinceReferenceDate];
  return result;
}

- (void)addSubscription:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  checkins = self->_checkins;
  v6 = [v4 uniqueIdentifier];
  [(NSMutableDictionary *)checkins setObject:v4 forKeyedSubscript:v6];

  LOBYTE(v6) = self->_initialCheckinsComplete;
  v7 = __biome_log_for_category();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = [v4 uniqueIdentifier];
      *buf = 138412290;
      v37 = v11;
      _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_DEFAULT, "addSubscription: %@", buf, 0xCu);
    }

    v7 = [(BMComputeSubscription *)v4 startEvent];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [v4 streamIdentifiers];
    v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        v15 = 0;
        v29 = v13;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          if ([(BMComputeSubscriptionSubstreamManager *)self supportsStream:v16, v29])
          {
            v17 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v16];
            v18 = v4;
            v19 = [v4 uniqueIdentifier];
            v20 = [v17 objectForKeyedSubscript:v19];

            v21 = v20;
            v22 = v7;
            v23 = [v7 serialize];
            v24 = [v21 serialize];

            v25 = [v23 isEqual:v24];
            if ((v25 & 1) == 0)
            {
              v26 = [(BMComputeSubscriptionSubstreamManager *)self _subscriptionSourceForStream:v16];
              [(BMComputeSubscriptionSubstreamManager *)self timestamp];
              [v26 sendEvent:v22 timestamp:?];
              v27 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v16];
              v28 = [v18 uniqueIdentifier];
              [v27 setObject:v22 forKeyedSubscript:v28];
            }

            v4 = v18;
            v7 = v22;
            v13 = v29;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }
  }

  else if (v8)
  {
    v9 = [v4 uniqueIdentifier];
    *buf = 138412290;
    v37 = v9;
    _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_DEFAULT, "addSubscription: %@ pending barrier", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeSubscription:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 uniqueIdentifier];
  [(NSMutableDictionary *)self->_checkins setObject:0 forKeyedSubscript:v5];
  initialCheckinsComplete = self->_initialCheckinsComplete;
  v7 = __biome_log_for_category();
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT);
  if (initialCheckinsComplete)
  {
    if (v8)
    {
      v9 = [v4 uniqueIdentifier];
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&dword_1848EE000, &v7->super, OS_LOG_TYPE_DEFAULT, "removeSubscription: %@", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_subscriptions;
    v10 = [(NSDictionary *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v4;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v14];
          v16 = [v15 objectForKeyedSubscript:v5];

          if (v16)
          {
            v17 = [(BMSubscriptionEvent *)v16 endEvent];
            v18 = [(BMComputeSubscriptionSubstreamManager *)self _subscriptionSourceForStream:v14];
            [(BMComputeSubscriptionSubstreamManager *)self timestamp];
            [v18 sendEvent:v17 timestamp:?];
            v19 = [(NSDictionary *)self->_subscriptions objectForKeyedSubscript:v14];
            [v19 setObject:0 forKeyedSubscript:v5];
          }
        }

        v11 = [(NSDictionary *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
      v4 = v22;
    }
  }

  else if (v8)
  {
    v20 = [v4 uniqueIdentifier];
    *buf = 138412290;
    v29 = v20;
    _os_log_impl(&dword_1848EE000, &v7->super, OS_LOG_TYPE_DEFAULT, "removeSubscription: %@ before barrier", buf, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)initialCheckinsComplete
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_initialCheckinsComplete || ([(BMComputeSubscriptionSubstreamManager *)a2 initialCheckinsComplete]& 1) == 0)
  {
    self->_initialCheckinsComplete = 1;
    v4 = [MEMORY[0x1E695DF00] date];
    dateOverride = self->_dateOverride;
    self->_dateOverride = v4;

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64__BMComputeSubscriptionSubstreamManager_initialCheckinsComplete__block_invoke;
    v24[3] = &unk_1E6E537E0;
    v24[4] = self;
    [(BMComputeSubscriptionSubstreamManager *)self _removeSubscriptionsPassingTest:v24];
    v6 = self->_checkins;
    checkins = self->_checkins;
    self->_checkins = 0;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(NSMutableDictionary *)v6 allValues];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(BMComputeSubscriptionSubstreamManager *)self addSubscription:*(*(&v20 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v13 = self->_checkins;
    self->_checkins = v6;
    v14 = v6;

    v15 = self->_dateOverride;
    self->_dateOverride = 0;

    v16 = dispatch_time(0, 15000000000);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__BMComputeSubscriptionSubstreamManager_initialCheckinsComplete__block_invoke_22;
    block[3] = &unk_1E6E52D50;
    block[4] = self;
    dispatch_after(v16, queue, block);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __64__BMComputeSubscriptionSubstreamManager_initialCheckinsComplete__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (v6)
  {

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v7 = [v3 bootUUID];
  v8 = [MEMORY[0x1E696AFB0] bm_bootSessionUUID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v3 uniqueIdentifier];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_DEFAULT, "Removing subscription from previous boot %@", &v15, 0xCu);
  }

  v10 = 1;
LABEL_5:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_checkinTimeout
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_initialCheckinsComplete || ([(BMComputeSubscriptionSubstreamManager *)a2 _checkinTimeout]& 1) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__BMComputeSubscriptionSubstreamManager__checkinTimeout__block_invoke;
    v5[3] = &unk_1E6E537E0;
    v5[4] = self;
    [(BMComputeSubscriptionSubstreamManager *)self _removeSubscriptionsPassingTest:v5];
    checkins = self->_checkins;
    self->_checkins = 0;
  }
}

BOOL __56__BMComputeSubscriptionSubstreamManager__checkinTimeout__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 uniqueIdentifier];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_DEFAULT, "Removing subscription that missed checkin %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

- (void)_removeSubscriptionsPassingTest:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self;
  obj = self->_subscriptions;
  v22 = [(NSDictionary *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v22)
  {
    v21 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v5);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = v5;
        v24 = v6;
        v7 = [(NSDictionary *)v25->_subscriptions objectForKeyedSubscript:?];
        v8 = [v7 allValues];

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v27;
          do
          {
            v13 = 0;
            do
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v26 + 1) + 8 * v13);
              if (v4[2](v4, v14))
              {
                if (!v11)
                {
                  v11 = [(BMComputeSubscriptionSubstreamManager *)v25 _subscriptionSourceForStream:v24];
                }

                v15 = [(BMSubscriptionEvent *)v14 endEvent];
                [(BMComputeSubscriptionSubstreamManager *)v25 timestamp];
                [v11 sendEvent:v15 timestamp:?];
                v16 = [(NSDictionary *)v25->_subscriptions objectForKeyedSubscript:v24];
                v17 = [v14 uniqueIdentifier];
                [v16 setObject:0 forKeyedSubscript:v17];
              }

              ++v13;
            }

            while (v10 != v13);
            v18 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
            v10 = v18;
          }

          while (v18);
        }

        else
        {
          v11 = 0;
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [(NSDictionary *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v22);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_subscriptionSourceForStream:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([(BMComputeSubscriptionSubstreamManager *)self supportsStream:v4])
  {
    library = self->_library;
    v11 = 0;
    v6 = [(BMLibraryNode *)library streamWithIdentifier:v4 error:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(BMComputeSubscriptionSubstreamManager *)v4 _subscriptionSourceForStream:v7, v8];
      }

      v9 = 0;
    }

    else
    {
      v9 = [v6 subscriptionSource];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end