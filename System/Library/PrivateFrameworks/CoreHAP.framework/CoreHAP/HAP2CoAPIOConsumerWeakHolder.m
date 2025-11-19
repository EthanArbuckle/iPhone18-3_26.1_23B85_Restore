@interface HAP2CoAPIOConsumerWeakHolder
+ (id)new;
- (HAP2CoAPIOConsumer)consumer;
- (HAP2CoAPIOConsumerWeakHolder)init;
- (HAP2CoAPIOConsumerWeakHolder)initWithConsumer:(id)a3;
@end

@implementation HAP2CoAPIOConsumerWeakHolder

- (HAP2CoAPIOConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

- (HAP2CoAPIOConsumerWeakHolder)initWithConsumer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HAP2CoAPIOConsumerWeakHolder;
  v5 = [(HAP2CoAPIOConsumerWeakHolder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_consumer, v4);
  }

  return v6;
}

- (HAP2CoAPIOConsumerWeakHolder)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end