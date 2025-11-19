@interface MADEmbeddingStoreServiceProxy
- (MADEmbeddingStoreServiceProxy)initWithService:(id)a3;
@end

@implementation MADEmbeddingStoreServiceProxy

- (MADEmbeddingStoreServiceProxy)initWithService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MADEmbeddingStoreServiceProxy;
  v5 = [(MADEmbeddingStoreServiceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
  }

  return v6;
}

@end