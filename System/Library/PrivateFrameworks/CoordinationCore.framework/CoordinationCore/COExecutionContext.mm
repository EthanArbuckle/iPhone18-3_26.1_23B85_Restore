@interface COExecutionContext
- (BOOL)isEqual:(id)equal;
- (BOOL)leaderElectionConfigured;
- (COExecutionContext)initWithDispatchQueue:(id)queue;
- (COExecutionContext)initWithMetadata:(id)metadata;
- (id)analyticsRecorder;
- (id)constituentForMe;
- (id)dispatchQueue;
- (id)label;
- (id)meshControllerDescription;
- (id)meshName;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)networkActivityFactory;
- (id)objectForKey:(id)key;
- (void)assertDispatchQueue;
- (void)dispatchAsync:(id)async;
- (void)dispatchSync:(id)sync;
@end

@implementation COExecutionContext

- (COExecutionContext)initWithDispatchQueue:(id)queue
{
  v12[1] = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = COExecutionContext;
  v5 = [(COExecutionContext *)&v10 init];
  if (v5)
  {
    dispatch_queue_set_specific(queueCopy, "queueSpecificInfo", queueCopy, 0);
    v11 = @"dispatchQueue";
    v12[0] = queueCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    metadata = v5->_metadata;
    v5->_metadata = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (COExecutionContext)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [(COExecutionContext *)self init];
  v6 = v5;
  if (metadataCopy && v5)
  {
    v7 = [metadataCopy copy];
    metadata = v6->_metadata;
    v6->_metadata = v7;
  }

  return v6;
}

- (void)dispatchSync:(id)sync
{
  block = sync;
  v4 = dispatch_get_specific("queueSpecificInfo");
  v5 = [(NSDictionary *)self->_metadata objectForKey:@"dispatchQueue"];
  if (!v5)
  {
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
  }

  if (v5 == v4)
  {
    block[2]();
  }

  else
  {
    dispatch_sync(v5, block);
  }
}

- (void)dispatchAsync:(id)async
{
  metadata = self->_metadata;
  asyncCopy = async;
  v5 = [(NSDictionary *)metadata objectForKey:@"dispatchQueue"];
  v6 = v5;
  if (v5)
  {
    queue = v5;
  }

  else
  {
    queue = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
  }

  dispatch_async(queue, asyncCopy);
}

- (void)assertDispatchQueue
{
  v2 = [(NSDictionary *)self->_metadata objectForKey:@"dispatchQueue"];
  dispatch_assert_queue_V2(v2);
}

- (id)constituentForMe
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"COExecutionContextMeshMeConstituentKey"];

  return v3;
}

- (BOOL)leaderElectionConfigured
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"COExecutionContextClusterOptions"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue & 1;
}

- (id)analyticsRecorder
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"analyticsEventRecorder"];

  return v3;
}

- (id)networkActivityFactory
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"COExecutionContextNetworkActivityFactoryKey"];

  return v3;
}

- (id)dispatchQueue
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"dispatchQueue"];

  return v3;
}

- (id)label
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"COExecutionContextMeshLabelKey"];

  return v3;
}

- (id)meshName
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"COExecutionContextMeshNameKey"];

  return v3;
}

- (id)meshControllerDescription
{
  metadata = [(COExecutionContext *)self metadata];
  v3 = [metadata objectForKey:@"COExecutionContextMeshControllerKey"];

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  metadata = [(COExecutionContext *)self metadata];
  v6 = [metadata objectForKey:keyCopy];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(COExecutionContext *)[COMutableExecutionContext allocWithZone:?]];
  metadata = [(COExecutionContext *)self metadata];
  v6 = [metadata mutableCopy];
  [(COExecutionContext *)v4 setMetadata:v6];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      metadata = [(COExecutionContext *)self metadata];
      metadata2 = [(COExecutionContext *)v5 metadata];

      v8 = [metadata isEqual:metadata2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end