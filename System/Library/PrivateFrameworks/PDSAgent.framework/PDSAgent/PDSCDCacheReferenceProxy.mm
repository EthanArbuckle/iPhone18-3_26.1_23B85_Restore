@interface PDSCDCacheReferenceProxy
- (BOOL)conformsToProtocol:(id)a3;
- (PDSCDCacheReferenceProxy)initWithCacheContainer:(id)a3 persistentContainer:(id)a4;
@end

@implementation PDSCDCacheReferenceProxy

- (PDSCDCacheReferenceProxy)initWithCacheContainer:(id)a3 persistentContainer:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    objc_storeStrong(&self->_cacheContainer, a3);
    objc_storeStrong(&self->_persistentContainer, a4);
  }

  return self;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(PDSCDCacheReferenceProxy *)self cacheContainer];
  v6 = [v5 conformsToProtocol:v4];

  return v6;
}

@end