@interface MADEmbeddingStoreServiceProxy
- (MADEmbeddingStoreServiceProxy)initWithService:(id)service;
@end

@implementation MADEmbeddingStoreServiceProxy

- (MADEmbeddingStoreServiceProxy)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = MADEmbeddingStoreServiceProxy;
  v5 = [(MADEmbeddingStoreServiceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
  }

  return v6;
}

@end