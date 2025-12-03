@interface XPCStreamEventRegistration
+ (id)registrationWithStream:(id)stream eventName:(id)name dagServiceClass:(Class)class;
- (id)_initWithStream:(id)stream eventName:(id)name dagServiceClass:(Class)class;
- (void)invoke:(id)invoke fromStream:(id)stream withAssets:(id)assets withSelfMetadata:(id)metadata;
@end

@implementation XPCStreamEventRegistration

- (id)_initWithStream:(id)stream eventName:(id)name dagServiceClass:(Class)class
{
  streamCopy = stream;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = XPCStreamEventRegistration;
  v10 = [(XPCStreamEventRegistration *)&v16 init];
  streamName = v10->_streamName;
  v10->_streamName = streamCopy;
  v12 = streamCopy;

  eventName = v10->_eventName;
  v10->_eventName = nameCopy;
  v14 = nameCopy;

  objc_storeStrong(&v10->_dagServiceClass, class);
  return v10;
}

- (void)invoke:(id)invoke fromStream:(id)stream withAssets:(id)assets withSelfMetadata:(id)metadata
{
  invokeCopy = invoke;
  streamCopy = stream;
  assetsCopy = assets;
  metadataCopy = metadata;
  dagServiceClass = self->_dagServiceClass;
  if (objc_opt_respondsToSelector())
  {
    [(objc_class *)self->_dagServiceClass handleXPCEvent:invokeCopy fromStream:streamCopy withAssets:assetsCopy withSelfMetadata:metadataCopy];
  }
}

+ (id)registrationWithStream:(id)stream eventName:(id)name dagServiceClass:(Class)class
{
  nameCopy = name;
  streamCopy = stream;
  v9 = [[XPCStreamEventRegistration alloc] _initWithStream:streamCopy eventName:nameCopy dagServiceClass:class];

  return v9;
}

@end