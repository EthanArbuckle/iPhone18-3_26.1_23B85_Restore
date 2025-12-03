@interface BMComputeSubscriptionMarkerManager
- (BMComputeSubscriptionMarkerManager)initWithUserStorage:(id)storage systemStorage:(id)systemStorage domain:(unint64_t)domain;
- (void)addSubscriptionWithStreamIdentifier:(id)identifier;
- (void)removeSubscriptionWithStreamIdentifier:(id)identifier;
@end

@implementation BMComputeSubscriptionMarkerManager

- (BMComputeSubscriptionMarkerManager)initWithUserStorage:(id)storage systemStorage:(id)systemStorage domain:(unint64_t)domain
{
  storageCopy = storage;
  systemStorageCopy = systemStorage;
  v16.receiver = self;
  v16.super_class = BMComputeSubscriptionMarkerManager;
  v11 = [(BMComputeSubscriptionMarkerManager *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userStorage, storage);
    objc_storeStrong(&v12->_systemStorage, systemStorage);
    v12->_domain = domain;
    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    activelySubscribedStreams = v12->_activelySubscribedStreams;
    v12->_activelySubscribedStreams = v13;
  }

  return v12;
}

- (void)addSubscriptionWithStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  firstObject = identifierCopy;
  if (([identifierCopy hasSuffix:@":subscriptions"] & 1) == 0)
  {
    firstObject = identifierCopy;
    if ([identifierCopy hasSuffix:@":tombstones"])
    {
      v6 = [identifierCopy componentsSeparatedByString:@":"];
      firstObject = [v6 firstObject];
    }

    v7 = BiomeLibraryAndInternalLibraryNode();
    v17 = 0;
    v8 = [v7 streamWithIdentifier:firstObject error:&v17];
    v9 = v17;

    if (v9)
    {
      activelySubscribedStreams2 = __biome_log_for_category();
      if (os_log_type_enabled(activelySubscribedStreams2, OS_LOG_TYPE_ERROR))
      {
        [BMComputeSubscriptionMarkerManager addSubscriptionWithStreamIdentifier:];
      }
    }

    else
    {
      configuration = [v8 configuration];
      storeConfig = [configuration storeConfig];
      domain = [storeConfig domain];

      activelySubscribedStreams = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      v15 = [activelySubscribedStreams countForObject:identifierCopy];

      if (!v15)
      {
        v16 = [(BMComputeSubscriptionMarkerManager *)self _subscriptionMarkerStorageForDomain:domain];
        [v16 writeActiveSubscriptionMarkerForStream:identifierCopy];
      }

      activelySubscribedStreams2 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      [activelySubscribedStreams2 addObject:identifierCopy];
    }
  }
}

- (void)removeSubscriptionWithStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  firstObject = identifierCopy;
  if (([identifierCopy hasSuffix:@":subscriptions"] & 1) == 0)
  {
    firstObject = identifierCopy;
    if ([identifierCopy hasSuffix:@":tombstones"])
    {
      v6 = [identifierCopy componentsSeparatedByString:@":"];
      firstObject = [v6 firstObject];
    }

    v7 = BiomeLibraryAndInternalLibraryNode();
    v20 = 0;
    v8 = [v7 streamWithIdentifier:firstObject error:&v20];
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
      configuration = [v8 configuration];
      storeConfig = [configuration storeConfig];
      domain = [storeConfig domain];

      activelySubscribedStreams = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      v15 = [activelySubscribedStreams countForObject:identifierCopy];

      if (!v15)
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(BMComputeSubscriptionMarkerManager *)identifierCopy removeSubscriptionWithStreamIdentifier:v16];
        }
      }

      activelySubscribedStreams2 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      [activelySubscribedStreams2 removeObject:identifierCopy];

      activelySubscribedStreams3 = [(BMComputeSubscriptionMarkerManager *)self activelySubscribedStreams];
      v19 = [activelySubscribedStreams3 countForObject:identifierCopy];

      if (v19)
      {
        goto LABEL_13;
      }

      v10 = [(BMComputeSubscriptionMarkerManager *)self _subscriptionMarkerStorageForDomain:domain];
      [v10 removeActiveSubscriptionMarkerForStream:identifierCopy];
    }

LABEL_13:
  }
}

@end