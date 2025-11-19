@interface XPCStreamEventRegistration
+ (id)registrationWithStream:(id)a3 eventName:(id)a4 dagServiceClass:(Class)a5;
- (id)_initWithStream:(id)a3 eventName:(id)a4 dagServiceClass:(Class)a5;
- (void)invoke:(id)a3 fromStream:(id)a4 withAssets:(id)a5 withSelfMetadata:(id)a6;
@end

@implementation XPCStreamEventRegistration

- (id)_initWithStream:(id)a3 eventName:(id)a4 dagServiceClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = XPCStreamEventRegistration;
  v10 = [(XPCStreamEventRegistration *)&v16 init];
  streamName = v10->_streamName;
  v10->_streamName = v8;
  v12 = v8;

  eventName = v10->_eventName;
  v10->_eventName = v9;
  v14 = v9;

  objc_storeStrong(&v10->_dagServiceClass, a5);
  return v10;
}

- (void)invoke:(id)a3 fromStream:(id)a4 withAssets:(id)a5 withSelfMetadata:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dagServiceClass = self->_dagServiceClass;
  if (objc_opt_respondsToSelector())
  {
    [(objc_class *)self->_dagServiceClass handleXPCEvent:v14 fromStream:v10 withAssets:v11 withSelfMetadata:v12];
  }
}

+ (id)registrationWithStream:(id)a3 eventName:(id)a4 dagServiceClass:(Class)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[XPCStreamEventRegistration alloc] _initWithStream:v8 eventName:v7 dagServiceClass:a5];

  return v9;
}

@end