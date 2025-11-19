@interface BMStorePublisherManagerProtectedState
- (BMStorePublisherManagerProtectedState)init;
@end

@implementation BMStorePublisherManagerProtectedState

- (BMStorePublisherManagerProtectedState)init
{
  v8.receiver = self;
  v8.super_class = BMStorePublisherManagerProtectedState;
  v2 = [(BMStorePublisherManagerProtectedState *)&v8 init];
  v3 = v2;
  if (v2)
  {
    localDatastore = v2->_localDatastore;
    v2->_localDatastore = 0;

    v5 = objc_opt_new();
    remoteDatastores = v3->_remoteDatastores;
    v3->_remoteDatastores = v5;
  }

  return v3;
}

@end