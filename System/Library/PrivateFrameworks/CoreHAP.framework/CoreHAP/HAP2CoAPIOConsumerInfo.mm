@interface HAP2CoAPIOConsumerInfo
- (HAP2CoAPIOConsumerInfo)initWithConsumer:(id)consumer;
@end

@implementation HAP2CoAPIOConsumerInfo

- (HAP2CoAPIOConsumerInfo)initWithConsumer:(id)consumer
{
  v4.receiver = self;
  v4.super_class = HAP2CoAPIOConsumerInfo;
  result = [(HAP2CoAPIOConsumerWeakHolder *)&v4 initWithConsumer:consumer];
  if (result)
  {
    result->_session = 0;
  }

  return result;
}

@end