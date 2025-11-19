@interface CAMPendingLocalPersistenceWrapper
- (CAMPendingLocalPersistenceWrapper)initWithRequest:(id)a3 result:(id)a4 completionHandler:(id)a5;
@end

@implementation CAMPendingLocalPersistenceWrapper

- (CAMPendingLocalPersistenceWrapper)initWithRequest:(id)a3 result:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CAMPendingLocalPersistenceWrapper;
  v12 = [(CAMPendingLocalPersistenceWrapper *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_result, a4);
    v14 = [v11 copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v16 = v13;
  }

  return v13;
}

@end