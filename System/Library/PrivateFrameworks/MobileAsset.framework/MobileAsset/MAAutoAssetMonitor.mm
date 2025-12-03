@interface MAAutoAssetMonitor
+ (id)defaultDispatchQueue;
- (MAAutoAssetMonitor)initWithCoder:(id)coder;
- (id)initForClientName:(id)name forAssetSelector:(id)selector notifyingFromQueue:(id)queue error:(id *)error notifyingStatusChanges:(id)changes;
- (void)cancelRegistration:(id)registration;
- (void)registerForNotifications:(id)notifications;
- (void)registerForNotifications:(id)notifications completion:(id)completion;
@end

@implementation MAAutoAssetMonitor

- (id)initForClientName:(id)name forAssetSelector:(id)selector notifyingFromQueue:(id)queue error:(id *)error notifyingStatusChanges:(id)changes
{
  nameCopy = name;
  selectorCopy = selector;
  queueCopy = queue;
  changesCopy = changes;
  v25.receiver = self;
  v25.super_class = MAAutoAssetMonitor;
  v17 = [(MAAutoAssetMonitor *)&v25 init];
  v18 = v17;
  if (!v17)
  {
LABEL_8:
    v23 = v18;
    goto LABEL_9;
  }

  objc_storeStrong(&v17->_autoAssetClientName, name);
  objc_storeStrong(&v18->_assetSelector, selector);
  v19 = MEMORY[0x19A8EC5D0](changesCopy);
  statusChangeNotificationBlock = v18->_statusChangeNotificationBlock;
  v18->_statusChangeNotificationBlock = v19;

  +[MAAutoAssetError mapAutoAssetErrorIndications];
  if (queueCopy)
  {
    v21 = queueCopy;
  }

  else
  {
    v21 = +[MAAutoAssetMonitor defaultDispatchQueue];
  }

  notificationDispatchQueue = v18->_notificationDispatchQueue;
  v18->_notificationDispatchQueue = v21;

  if (v18->_notificationDispatchQueue)
  {
    if (error)
    {
      *error = 0;
    }

    goto LABEL_8;
  }

  if (error)
  {
    [MAAutoAssetError buildError:6101 fromOperation:@"auto-monitor(defaultDispatchQueue)" underlyingError:0 withDescription:@"unable to assign notification dispatch queue"];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_9:

  return v23;
}

- (MAAutoAssetMonitor)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MAAutoAssetMonitor;
  return [(MAAutoAssetMonitor *)&v4 init];
}

- (void)registerForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MAAutoAssetMonitor_registerForNotifications___block_invoke;
  v7[3] = &unk_1E74C9888;
  v7[4] = self;
  v8 = notificationsCopy;
  v6 = notificationsCopy;
  dispatch_async(v5, v7);
}

void __47__MAAutoAssetMonitor_registerForNotifications___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6801 fromOperation:@"auto-monitor(registerForNotifications)" underlyingError:0 withDescription:@"MAAutoAsset-under-development"];
  if (*(a1 + 40))
  {
    v6 = v2;
    v3 = objc_alloc_init(MAAutoAssetNotifications);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) assetSelector];
    (*(v4 + 16))(v4, v5, v3, v6);

    v2 = v6;
  }
}

- (void)registerForNotifications:(id)notifications completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MAAutoAssetMonitor_registerForNotifications_completion___block_invoke;
  v8[3] = &unk_1E74C9888;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v8);
}

void __58__MAAutoAssetMonitor_registerForNotifications_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6801 fromOperation:@"auto-monitor(registerForNotifications:)" underlyingError:0 withDescription:@"MAAutoAsset-under-development"];
  if (*(a1 + 40))
  {
    v6 = v2;
    v3 = objc_alloc_init(MAAutoAssetNotifications);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) assetSelector];
    (*(v4 + 16))(v4, v5, v3, v6);

    v2 = v6;
  }
}

- (void)cancelRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__MAAutoAssetMonitor_cancelRegistration___block_invoke;
  v7[3] = &unk_1E74C9888;
  v7[4] = self;
  v8 = registrationCopy;
  v6 = registrationCopy;
  dispatch_async(v5, v7);
}

void __41__MAAutoAssetMonitor_cancelRegistration___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6801 fromOperation:@"auto-monitor(cancelRegistration:)" underlyingError:0 withDescription:@"MAAutoAsset-under-development"];
  if (*(a1 + 40))
  {
    v6 = v2;
    v3 = objc_alloc_init(MAAutoAssetNotifications);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) assetSelector];
    (*(v4 + 16))(v4, v5, v3, v6);

    v2 = v6;
  }
}

+ (id)defaultDispatchQueue
{
  if (defaultDispatchQueue_defaultQueueOnce_0 != -1)
  {
    +[MAAutoAssetMonitor defaultDispatchQueue];
  }

  v3 = defaultDispatchQueue_defaultQueue_0;

  return v3;
}

void __42__MAAutoAssetMonitor_defaultDispatchQueue__block_invoke()
{
  v0 = [@"com.apple.MobileAsset.framework.autoassetmonitor" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = defaultDispatchQueue_defaultQueue_0;
  defaultDispatchQueue_defaultQueue_0 = v1;
}

@end