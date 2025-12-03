@interface PDPaymentWebServiceArchiver
- (PDPaymentWebServiceArchiver)initWithQueue:(id)queue webServiceCoordinator:(id)coordinator;
- (void)archiveBackgroundContext:(id)context;
- (void)archiveContext:(id)context;
@end

@implementation PDPaymentWebServiceArchiver

- (PDPaymentWebServiceArchiver)initWithQueue:(id)queue webServiceCoordinator:(id)coordinator
{
  queueCopy = queue;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = PDPaymentWebServiceArchiver;
  v9 = [(PDPaymentWebServiceArchiver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_coordinator, coordinator);
  }

  return v10;
}

- (void)archiveContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100037808;
    block[3] = &unk_10083C420;
    v10 = contextCopy;
    selfCopy = self;
    dispatch_async(queue, block);
    v7 = v10;
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: We don't support archiving nil contexts!", v8, 2u);
    }
  }
}

- (void)archiveBackgroundContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037938;
  block[3] = &unk_10083C470;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(queue, block);
}

@end