@interface PDSCDCacheReferenceProxy
- (BOOL)conformsToProtocol:(id)protocol;
- (PDSCDCacheReferenceProxy)initWithCacheContainer:(id)container persistentContainer:(id)persistentContainer;
@end

@implementation PDSCDCacheReferenceProxy

- (PDSCDCacheReferenceProxy)initWithCacheContainer:(id)container persistentContainer:(id)persistentContainer
{
  containerCopy = container;
  persistentContainerCopy = persistentContainer;
  if (self)
  {
    objc_storeStrong(&self->_cacheContainer, container);
    objc_storeStrong(&self->_persistentContainer, persistentContainer);
  }

  return self;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  cacheContainer = [(PDSCDCacheReferenceProxy *)self cacheContainer];
  v6 = [cacheContainer conformsToProtocol:protocolCopy];

  return v6;
}

@end