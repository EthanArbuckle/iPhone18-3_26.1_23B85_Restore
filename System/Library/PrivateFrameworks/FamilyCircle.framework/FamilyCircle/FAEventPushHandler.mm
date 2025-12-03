@interface FAEventPushHandler
- (BOOL)shouldProcess:(id)process;
- (FAEventPushHandler)init;
- (void)_deliverNotificationWithResponse:(id)response payload:(id)payload;
- (void)process:(id)process;
@end

@implementation FAEventPushHandler

- (FAEventPushHandler)init
{
  v9.receiver = self;
  v9.super_class = FAEventPushHandler;
  v2 = [(FAEventPushHandler *)&v9 init];
  if (v2)
  {
    v3 = [NSSet setWithObjects:@"f_delete", @"f_member_upd", @"f_child_transfer_apr", @"f_child_transfer_req", @"f_member_add", @"f_member_invite", 0];
    events = v2->_events;
    v2->_events = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("family_push_detail_request", v5);
    networkingQueue = v2->_networkingQueue;
    v2->_networkingQueue = v6;
  }

  return v2;
}

- (BOOL)shouldProcess:(id)process
{
  events = self->_events;
  event = [process event];
  LOBYTE(events) = [(NSSet *)events containsObject:event];

  return events;
}

- (void)process:(id)process
{
  processCopy = process;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CacheUpdate:Processing family event push", buf, 2u);
  }

  networkingQueue = self->_networkingQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DF24;
  v8[3] = &unk_1000A72E0;
  v9 = processCopy;
  selfCopy = self;
  v7 = processCopy;
  dispatch_async(networkingQueue, v8);
}

- (void)_deliverNotificationWithResponse:(id)response payload:(id)payload
{
  v4 = [FANotificationBuilder buildNotificationWithResponse:response payload:payload];
  if (v4)
  {
    v5 = +[FAPushHelperService sharedInstance];
    familyNotifier = [v5 familyNotifier];

    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = familyNotifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dispatching new FAFamilyNotification %@ to notifier %@", &v8, 0x16u);
    }

    [familyNotifier deliverNotification:v4];
  }
}

@end