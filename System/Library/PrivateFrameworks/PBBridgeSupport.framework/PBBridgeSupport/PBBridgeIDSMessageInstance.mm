@interface PBBridgeIDSMessageInstance
- (PBBridgeIDSMessageInstance)init;
- (id)description;
@end

@implementation PBBridgeIDSMessageInstance

- (PBBridgeIDSMessageInstance)init
{
  v3.receiver = self;
  v3.super_class = PBBridgeIDSMessageInstance;
  result = [(PBBridgeIDSMessageInstance *)&v3 init];
  if (result)
  {
    result->_typeID = -1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = PBBridgeIDSMessageInstance;
  v4 = [(PBBridgeIDSMessageInstance *)&v10 description];
  retryCount = self->_retryCount;
  retryInterval = self->_retryInterval;
  v7 = MEMORY[0x25F8A6750](self->_retryAction);
  v8 = [v3 stringWithFormat:@"(%@) Retries: %d Interval: %f Action: %@", v4, retryCount, *&retryInterval, v7];

  return v8;
}

@end