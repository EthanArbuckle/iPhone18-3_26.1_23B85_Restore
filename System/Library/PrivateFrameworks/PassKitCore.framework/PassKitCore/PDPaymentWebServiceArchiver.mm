@interface PDPaymentWebServiceArchiver
- (PDPaymentWebServiceArchiver)initWithQueue:(id)a3 webServiceCoordinator:(id)a4;
- (void)archiveBackgroundContext:(id)a3;
- (void)archiveContext:(id)a3;
@end

@implementation PDPaymentWebServiceArchiver

- (PDPaymentWebServiceArchiver)initWithQueue:(id)a3 webServiceCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PDPaymentWebServiceArchiver;
  v9 = [(PDPaymentWebServiceArchiver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_coordinator, a4);
  }

  return v10;
}

- (void)archiveContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100037808;
    block[3] = &unk_10083C420;
    v10 = v4;
    v11 = self;
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

- (void)archiveBackgroundContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037938;
  block[3] = &unk_10083C470;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

@end