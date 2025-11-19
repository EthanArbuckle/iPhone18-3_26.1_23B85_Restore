@interface BMComputeSubscriptionMarkerManager
- (BMComputeSubscriptionMarkerManager)initWithUserStorage:(id)a3 systemStorage:(id)a4 domain:(unint64_t)a5;
- (void)addSubscriptionWithStreamIdentifier:(id)a3;
- (void)removeSubscriptionWithStreamIdentifier:(id)a3;
@end

@implementation BMComputeSubscriptionMarkerManager

- (BMComputeSubscriptionMarkerManager)initWithUserStorage:(id)a3 systemStorage:(id)a4 domain:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = BMComputeSubscriptionMarkerManager;
  v11 = [(BMComputeSubscriptionMarkerManager *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userStorage, a3);
    objc_storeStrong(&v12->_systemStorage, a4);
    v12->_domain = a5;
    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    activelySubscribedStreams = v12->_activelySubscribedStreams;
    v12->_activelySubscribedStreams = v13;
  }

  return v12;
}

- (void)addSubscriptionWithStreamIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (([v4 hasSuffix:@":subscriptions"] & 1) == 0)
  {
    v5 = v4;
    if ([v4 hasSuffix:@":tombstones"])
    {
      v6 = [v4 componentsSeparatedByString:@":"];
      v5 = [v6 firstObject];
    }

    v7 = BiomeLibraryAndInternalLibraryNode();
    v17 = 0;
    v8 = [v7 streamWithIdentifier:v5 error:&v17];
    v9 = v17;

    if (v9)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BMComputeSubscriptionMarkerManager addSubscriptionWithStreamIdentifier:];
      }
    }

    else
    {
      v11 = [v8 configuration];
      v12 = [v11 storeConfig];
      v13 = [v12 domain];

      v14 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      v15 = [v14 countForObject:v4];

      if (!v15)
      {
        v16 = [(BMComputeSubscriptionMarkerManager *)self _subscriptionMarkerStorageForDomain:v13];
        [v16 writeActiveSubscriptionMarkerForStream:v4];
      }

      v10 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      [v10 addObject:v4];
    }
  }
}

- (void)removeSubscriptionWithStreamIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (([v4 hasSuffix:@":subscriptions"] & 1) == 0)
  {
    v5 = v4;
    if ([v4 hasSuffix:@":tombstones"])
    {
      v6 = [v4 componentsSeparatedByString:@":"];
      v5 = [v6 firstObject];
    }

    v7 = BiomeLibraryAndInternalLibraryNode();
    v20 = 0;
    v8 = [v7 streamWithIdentifier:v5 error:&v20];
    v9 = v20;

    if (v9)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BMComputeSubscriptionMarkerManager removeSubscriptionWithStreamIdentifier:];
      }
    }

    else
    {
      v11 = [v8 configuration];
      v12 = [v11 storeConfig];
      v13 = [v12 domain];

      v14 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      v15 = [v14 countForObject:v4];

      if (!v15)
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(BMComputeSubscriptionMarkerManager *)v4 removeSubscriptionWithStreamIdentifier:v16];
        }
      }

      v17 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      [v17 removeObject:v4];

      v18 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      v19 = [v18 countForObject:v4];

      if (v19)
      {
        goto LABEL_13;
      }

      v10 = [(BMComputeSubscriptionMarkerManager *)self _subscriptionMarkerStorageForDomain:v13];
      [v10 removeActiveSubscriptionMarkerForStream:v4];
    }

LABEL_13:
  }
}

@end