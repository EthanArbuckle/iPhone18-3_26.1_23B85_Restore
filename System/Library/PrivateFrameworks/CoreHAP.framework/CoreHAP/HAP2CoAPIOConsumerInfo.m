@interface HAP2CoAPIOConsumerInfo
- (HAP2CoAPIOConsumerInfo)initWithConsumer:(id)a3;
@end

@implementation HAP2CoAPIOConsumerInfo

- (HAP2CoAPIOConsumerInfo)initWithConsumer:(id)a3
{
  v4.receiver = self;
  v4.super_class = HAP2CoAPIOConsumerInfo;
  result = [(HAP2CoAPIOConsumerWeakHolder *)&v4 initWithConsumer:a3];
  if (result)
  {
    result->_session = 0;
  }

  return result;
}

@end