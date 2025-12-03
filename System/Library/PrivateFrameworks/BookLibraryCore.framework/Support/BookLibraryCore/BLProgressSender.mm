@interface BLProgressSender
- (BLProgressSender)init;
- (void)registerProgressReceiver:(id)receiver;
- (void)removeProgressReceiver:(id)receiver;
- (void)sendDidFailNotificatonWithUserInfo:(id)info;
- (void)sendDownloadCompleteWithUserInfo:(id)info;
- (void)sendProgressNotificationWithUserInfo:(id)info;
- (void)sendPurchaseFailedWithUserInfo:(id)info;
- (void)sendPurchaseSucceededWithUserInfo:(id)info;
@end

@implementation BLProgressSender

- (BLProgressSender)init
{
  v9.receiver = self;
  v9.super_class = BLProgressSender;
  v2 = [(BLProgressSender *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("dispatch sender queue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableSet);
    progressReceivers = v2->_progressReceivers;
    v2->_progressReceivers = v6;
  }

  return v2;
}

- (void)registerProgressReceiver:(id)receiver
{
  receiverCopy = receiver;
  dispatchQueue = [(BLProgressSender *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DCA0;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)removeProgressReceiver:(id)receiver
{
  receiverCopy = receiver;
  dispatchQueue = [(BLProgressSender *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DDA8;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)sendProgressNotificationWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _os_activity_create(&_mh_execute_header, "Posting Progress Notification", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DEC4;
  v7[3] = &unk_10011D1A8;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  os_activity_apply(v5, v7);
}

- (void)sendDidFailNotificatonWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _os_activity_create(&_mh_execute_header, "Posting DidFail Notification", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009E168;
  v7[3] = &unk_10011D1A8;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  os_activity_apply(v5, v7);
}

- (void)sendDownloadCompleteWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _os_activity_create(&_mh_execute_header, "Posting DidComplete Notification", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009E40C;
  v7[3] = &unk_10011D1A8;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  os_activity_apply(v5, v7);
}

- (void)sendPurchaseSucceededWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _os_activity_create(&_mh_execute_header, "Posting PurchaseSucceeded Notification", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009E6B0;
  v7[3] = &unk_10011D1A8;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  os_activity_apply(v5, v7);
}

- (void)sendPurchaseFailedWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _os_activity_create(&_mh_execute_header, "Posting PurchaseFailed Notification", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009E954;
  v7[3] = &unk_10011D1A8;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  os_activity_apply(v5, v7);
}

@end