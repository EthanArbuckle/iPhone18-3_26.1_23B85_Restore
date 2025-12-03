@interface RoutingItemDataSourceHearingAidHelper
- (RoutingItemDataSourceHearingAidHelper)initWithTargetQueue:(id)queue hearingAidDidChangeHandler:(id)handler;
- (void)_init;
- (void)availableHearingAidDidChange;
- (void)dealloc;
- (void)hearingAidHandoffCompleted;
- (void)routeToHearingAidForInteraction:(id)interaction completion:(id)completion;
@end

@implementation RoutingItemDataSourceHearingAidHelper

- (void)availableHearingAidDidChange
{
  workQueue = [(RoutingItemDataSourceHearingAidHelper *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024AF4;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (RoutingItemDataSourceHearingAidHelper)initWithTargetQueue:(id)queue hearingAidDidChangeHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = RoutingItemDataSourceHearingAidHelper;
  v9 = [(RoutingItemDataSourceHearingAidHelper *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetQueue, queue);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mediaremote.RoutingItemDataSourceHearingAidHelper.workQueue", v11);
    workQueue = v10->_workQueue;
    v10->_workQueue = v12;

    v14 = objc_retainBlock(handlerCopy);
    hearingAidDidChangeHandler = v10->_hearingAidDidChangeHandler;
    v10->_hearingAidDidChangeHandler = v14;

    [(RoutingItemDataSourceHearingAidHelper *)v10 _init];
  }

  return v10;
}

- (void)_init
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100037CA8, HUAudioTransferAvailabilityDidChangeNotification, 0, 1028);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, self, sub_1000F868C, HUUserRequestedAudioTransferCompleteNotification, 0, 1028);

  [(RoutingItemDataSourceHearingAidHelper *)self availableHearingAidDidChange];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = RoutingItemDataSourceHearingAidHelper;
  [(RoutingItemDataSourceHearingAidHelper *)&v4 dealloc];
}

- (void)routeToHearingAidForInteraction:(id)interaction completion:(id)completion
{
  interactionCopy = interaction;
  completionCopy = completion;
  targetQueue = [(RoutingItemDataSourceHearingAidHelper *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v9 = MRLogCategoryMediaControl();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v27 = 2114;
    v28 = interactionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[HearingAidHelper] <%p> routeToHearingAid<%{public}@>", buf, 0x16u);
  }

  pendingCompletion = [(RoutingItemDataSourceHearingAidHelper *)self pendingCompletion];
  v11 = pendingCompletion == 0;

  if (v11)
  {
    objc_initWeak(buf, self);
    v13 = [MRBlockGuard alloc];
    targetQueue2 = [(RoutingItemDataSourceHearingAidHelper *)self targetQueue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000F89D4;
    v22[3] = &unk_1004BC840;
    objc_copyWeak(&v24, buf);
    v22[4] = self;
    v15 = completionCopy;
    v23 = v15;
    v16 = [v13 initWithTimeout:@"RoutingItemDataSourceHearingAidHelper" reason:targetQueue2 queue:v22 handler:1.0];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F8A68;
    v19[3] = &unk_1004B79F0;
    v17 = v16;
    v20 = v17;
    v21 = v15;
    [(RoutingItemDataSourceHearingAidHelper *)self setPendingCompletion:v19];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, HUUserRequestedAudioTransferNotification, 0, 0, 1u);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = [[NSError alloc] initWithMRError:6 description:@"Hearing aid handoff already in progress"];
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)hearingAidHandoffCompleted
{
  v3 = MRLogCategoryMediaControl();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HearingAidHelper] <%p> hearingAidHandoffCompleted", buf, 0xCu);
  }

  targetQueue = [(RoutingItemDataSourceHearingAidHelper *)self targetQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8BC8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(targetQueue, block);
}

@end