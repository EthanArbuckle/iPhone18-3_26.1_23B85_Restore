@interface MFDelayedNotificationPresenter
- (MFDelayedNotificationPresenter)init;
- (MFDelayedNotificationsPresenterDelegate)delegate;
- (double)postingDelay;
- (void)_delegateProcessMessages:(id)a3;
- (void)_processSufficientlyDelayedMessages;
- (void)_removeProcessedMessages;
- (void)_scheduleNextFireEvent;
- (void)clearPendingMessages;
- (void)dealloc;
- (void)immediatelyProcessPendingMessagesWithIdentifiers:(id)a3;
- (void)removePendingMessagesWithAccountIdentifiers:(id)a3;
- (void)removePendingMessagesWithIdentifiers:(id)a3;
- (void)schedulePendingNotificationMessage:(id)a3 identifier:(id)a4 context:(id)a5;
- (void)setPostingDelay:(double)a3;
@end

@implementation MFDelayedNotificationPresenter

- (MFDelayedNotificationPresenter)init
{
  v18.receiver = self;
  v18.super_class = MFDelayedNotificationPresenter;
  v2 = [(MFDelayedNotificationPresenter *)&v18 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.mobilemail.notificationcenter.delayedpresenter.%p", v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [v3 stringByAppendingString:@".delegate"];

    v9 = v8;
    v10 = [v8 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create(v10, v12);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v13;

    v15 = objc_alloc_init(NSMutableArray);
    pendingMessages = v2->_pendingMessages;
    v2->_pendingMessages = v15;
  }

  return v2;
}

- (void)dealloc
{
  fireSource = self->_fireSource;
  if (fireSource)
  {
    dispatch_source_cancel(fireSource);
  }

  v4.receiver = self;
  v4.super_class = MFDelayedNotificationPresenter;
  [(MFDelayedNotificationPresenter *)&v4 dealloc];
}

- (void)setPostingDelay:(double)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005551C;
  v4[3] = &unk_100156360;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(queue, v4);
}

- (double)postingDelay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005569C;
  v5[3] = &unk_1001578D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)clearPendingMessages
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055724;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removePendingMessagesWithIdentifiers:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005583C;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removePendingMessagesWithAccountIdentifiers:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100055B34;
  v7[3] = &unk_1001563D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)schedulePendingNotificationMessage:(id)a3 identifier:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  +[NSDate timeIntervalSinceReferenceDate];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005609C;
  block[3] = &unk_100158230;
  block[4] = self;
  v17 = v9;
  v20 = v12;
  v18 = v8;
  v19 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  dispatch_async(queue, block);
}

- (void)immediatelyProcessPendingMessagesWithIdentifiers:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000563DC;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_scheduleNextFireEvent
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_fireSource)
  {
    v3 = MSUserNotificationsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      fireSource = self->_fireSource;
      *buf = 138412290;
      v26 = *&fireSource;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cancelling existing fire source %@", buf, 0xCu);
    }

    dispatch_source_cancel(self->_fireSource);
    v5 = self->_fireSource;
    self->_fireSource = 0;
  }

  if ([(NSMutableArray *)self->_pendingMessages count])
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    v7 = self->_fireSource;
    self->_fireSource = v6;

    objc_initWeak(&location, self);
    v8 = self->_fireSource;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000568D4;
    v22 = &unk_1001567F0;
    objc_copyWeak(&v23, &location);
    dispatch_source_set_event_handler(v8, &v19);
    v9 = [(NSMutableArray *)self->_pendingMessages ef_firstObjectPassingTest:&stru_100158270, v19, v20, v21, v22];
    [v9 submissionDate];
    v11 = v10;
    postingDelay = self->_postingDelay;
    +[NSDate timeIntervalSinceReferenceDate];
    v14 = fmax(v11 + postingDelay - v13, 0.0);
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    dispatch_source_set_timer(self->_fireSource, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16 = MSUserNotificationsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 identifier];
      v18 = self->_fireSource;
      *buf = 134218498;
      v26 = v14;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "scheduling next delayed dequeue in %gs for '%@' (%@)", buf, 0x20u);
    }

    dispatch_resume(self->_fireSource);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

- (void)_processSufficientlyDelayedMessages
{
  dispatch_assert_queue_V2(self->_queue);
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3 - self->_postingDelay;
  pendingMessages = self->_pendingMessages;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100056AE4;
  v10[3] = &unk_100158290;
  *&v10[4] = v4;
  v6 = [(NSMutableArray *)pendingMessages ef_objectsPassingTest:v10];
  [v6 makeObjectsPerformSelector:"process"];
  v7 = MSUserNotificationsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    v9 = [(NSMutableArray *)self->_pendingMessages count];
    *buf = 134218240;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "found %lu sufficiently delayed messages (out of %lu)", buf, 0x16u);
  }

  if ([v6 count])
  {
    [(MFDelayedNotificationPresenter *)self _delegateProcessMessages:v6];
  }
}

- (void)_delegateProcessMessages:(id)a3
{
  v4 = a3;
  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = [v4 valueForKey:@"identifier"];
    v8 = [v7 componentsJoinedByString:{@"', '"}];
    *buf = 134218242;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "processing %lu messages {'%@'}", buf, 0x16u);
  }

  delegateQueue = self->_delegateQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056D04;
  v11[3] = &unk_1001563D8;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(delegateQueue, v11);
}

- (void)_removeProcessedMessages
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = MSUserNotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removing all processed messages", v5, 2u);
  }

  v4 = [(NSMutableArray *)self->_pendingMessages indexesOfObjectsPassingTest:&stru_1001582D0];
  [(NSMutableArray *)self->_pendingMessages removeObjectsAtIndexes:v4];
  [(MFDelayedNotificationPresenter *)self _scheduleNextFireEvent];
}

- (MFDelayedNotificationsPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end