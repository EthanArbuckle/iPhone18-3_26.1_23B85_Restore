@interface BMAccessDaemon
- (BMAccessDaemon)initWithQueue:(id)queue delegate:(id)delegate;
@end

@implementation BMAccessDaemon

- (BMAccessDaemon)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  dispatch_assert_queue_V2(queueCopy);
  v18.receiver = self;
  v18.super_class = BMAccessDaemon;
  v9 = [(BMAccessDaemon *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [[BMAccessServiceListener alloc] initLegacyWithQueue:queueCopy];
    legacyAccessService = v10->_legacyAccessService;
    v10->_legacyAccessService = v11;

    v13 = [[BMAccessServiceListener alloc] initWithDomain:0 queue:queueCopy delegate:delegateCopy];
    userAccessService = v10->_userAccessService;
    v10->_userAccessService = v13;

    v15 = [[BMAccessServiceListener alloc] initWithDomain:1 queue:queueCopy delegate:delegateCopy];
    systemAccessService = v10->_systemAccessService;
    v10->_systemAccessService = v15;

    [(BMAccessServiceListener *)v10->_legacyAccessService activate];
    [(BMAccessServiceListener *)v10->_userAccessService activate];
    [(BMAccessServiceListener *)v10->_systemAccessService activate];
  }

  return v10;
}

@end