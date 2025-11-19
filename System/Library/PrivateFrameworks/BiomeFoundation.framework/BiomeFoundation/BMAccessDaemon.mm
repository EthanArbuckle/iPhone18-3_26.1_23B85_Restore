@interface BMAccessDaemon
- (BMAccessDaemon)initWithQueue:(id)a3 delegate:(id)a4;
@end

@implementation BMAccessDaemon

- (BMAccessDaemon)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(v7);
  v18.receiver = self;
  v18.super_class = BMAccessDaemon;
  v9 = [(BMAccessDaemon *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = [[BMAccessServiceListener alloc] initLegacyWithQueue:v7];
    legacyAccessService = v10->_legacyAccessService;
    v10->_legacyAccessService = v11;

    v13 = [[BMAccessServiceListener alloc] initWithDomain:0 queue:v7 delegate:v8];
    userAccessService = v10->_userAccessService;
    v10->_userAccessService = v13;

    v15 = [[BMAccessServiceListener alloc] initWithDomain:1 queue:v7 delegate:v8];
    systemAccessService = v10->_systemAccessService;
    v10->_systemAccessService = v15;

    [(BMAccessServiceListener *)v10->_legacyAccessService activate];
    [(BMAccessServiceListener *)v10->_userAccessService activate];
    [(BMAccessServiceListener *)v10->_systemAccessService activate];
  }

  return v10;
}

@end