@interface DSFileService
+ (id)sharedFileService;
- (DSFileService)init;
- (id)createNewRequestForGroupUUID:(id)d;
- (id)groupForChildProgress:(id)progress;
- (void)addChildProgress:(id)progress;
- (void)cancelProgressGroupWithUUID:(id)d;
- (void)handleContinuousProcessingTask:(id)task withGroupUUID:(id)d;
- (void)inProgressOperationsWithReply:(id)reply;
- (void)notifyCurrentOperationsUpdated;
- (void)removeChildProgress:(id)progress;
- (void)requestBGTask:(id)task;
- (void)setUpGroupForChildProgress:(id)progress;
@end

@implementation DSFileService

+ (id)sharedFileService
{
  if ((atomic_load_explicit(&qword_10007E060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10007E060))
  {
    qword_10007E058 = objc_alloc_init(DSFileService);
    __cxa_guard_release(&qword_10007E060);
  }

  v2 = qword_10007E058;

  return v2;
}

- (DSFileService)init
{
  v6.receiver = self;
  v6.super_class = DSFileService;
  v2 = [(DSFileService *)&v6 init];
  v3 = objc_alloc_init(NSMutableDictionary);
  progressGroups = v2->_progressGroups;
  v2->_progressGroups = v3;

  return v2;
}

- (void)notifyCurrentOperationsUpdated
{
  v2 = LogObj(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Current copy operations have been updated", v4, 2u);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.DesktopServicesHelper.FileService.Update", 0, 0, 0);
}

- (void)handleContinuousProcessingTask:(id)task withGroupUUID:(id)d
{
  taskCopy = task;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dCopy)
  {
    progressGroups = [(DSFileService *)selfCopy progressGroups];
    v10 = [progressGroups objectForKeyedSubscript:dCopy];

    if (v10)
    {
      objc_initWeak(&location, taskCopy);
      objc_initWeak(&from, selfCopy);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3321888768;
      v14[2] = sub_10002E62C;
      v14[3] = &unk_100079B00;
      objc_copyWeak(&to, &from);
      objc_copyWeak((&to_4 + 4), &location);
      v22 = dCopy;
      objc_copyWeak(&v15, &to);
      objc_copyWeak(&v16, (&to_4 + 4));
      v17 = v22;
      [taskCopy setExpirationHandler:v14];

      objc_destroyWeak((&to_4 + 4));
      objc_destroyWeak(&to);
      [v10 setContinuedUITask:taskCopy];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      goto LABEL_10;
    }
  }

  else
  {
    v11 = LogObj(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(to) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No groups awaiting tasks", &to, 2u);
    }
  }

  v12 = LogObj(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    to = 138543362;
    to_4 = uUIDString;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Progress group not found, task is potentially finished already, ending background task with success=false group=%{public}@", &to, 0xCu);
  }

  [taskCopy setTaskCompletedWithSuccess:0];
LABEL_10:
  objc_sync_exit(selfCopy);
}

- (id)createNewRequestForGroupUUID:(id)d
{
  dCopy = d;
  v5 = [NSString stringWithUTF8String:"com.apple.desktopservices.desktopserviceshelper.progress."];
  uUIDString = [dCopy UUIDString];
  v7 = [v5 stringByAppendingString:uUIDString];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_backgroundProcessingQueue)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.desktopservices.desktopserviceshelper.progress.bgtaskschedulerqueue", v9);
    backgroundProcessingQueue = selfCopy->_backgroundProcessingQueue;
    selfCopy->_backgroundProcessingQueue = v10;
  }

  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  sharedScheduler = [(objc_class *)off_10007D988() sharedScheduler];
  backgroundProcessingQueue = [(DSFileService *)selfCopy backgroundProcessingQueue];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3321888768;
  v27[2] = sub_10002EC5C;
  v27[3] = &unk_100079B30;
  objc_copyWeak(&to, &location);
  v14 = dCopy;
  *&to_4[4] = v14;
  objc_copyWeak(&v28, &to);
  v29 = *&to_4[4];
  v15 = [sharedScheduler registerForTaskWithIdentifier:v7 usingQueue:backgroundProcessingQueue launchHandler:v27];

  objc_destroyWeak(&to);
  if (v15)
  {
    v16 = LogObj(2);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    to = 138543362;
    *to_4 = v14;
    v17 = "Continuous background task registration succeeded for id: %{public}@";
    v18 = v16;
    v19 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v16 = LogObj(2);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    to = 138543362;
    *to_4 = v14;
    v17 = "Continuous background task registration failed for id: %{public}@";
    v18 = v16;
    v19 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v18, v19, v17, &to, 0xCu);
LABEL_9:

  v20 = objc_alloc(off_10007D990());
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Copying files" value:&stru_10007A430 table:0];
  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"Preparing…" value:&stru_10007A430 table:0];
  v25 = [v20 initWithIdentifier:v7 title:v22 subtitle:v24 onBehalfOf:@"com.apple.DocumentsApp"];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v25;
}

- (void)requestBGTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(DSFileService *)selfCopy createNewRequestForGroupUUID:taskCopy];
  v7 = LogObj(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    title = [v6 title];
    subtitle = [v6 subtitle];
    *buf = 136446978;
    v17 = "[DSFileService requestBGTask:]";
    v18 = 2114;
    v19 = v6;
    v20 = 2114;
    v21 = title;
    v22 = 2114;
    v23 = subtitle;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}s, ContinuedProcessingTaskRequest:%{public}@, Title:%{public}@, Reason:%{public}@", buf, 0x2Au);
  }

  sharedScheduler = [(objc_class *)off_10007D988() sharedScheduler];
  v15 = 0;
  v11 = [sharedScheduler submitTaskRequest:v6 error:&v15];
  v12 = v15;

  if (v11)
  {
    v13 = LogObj(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2114;
      v19 = taskCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Submitted background task request with progress UI %@ for group id %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v13 = LogObj(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v12 localizedDescription];
      *buf = 138543618;
      v17 = localizedDescription;
      v18 = 2114;
      v19 = taskCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to submit background task request: %{public}@ for group id %{public}@", buf, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)groupForChildProgress:(id)progress
{
  userInfo = [progress userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"DSFileOperationUUID"];
  v6 = sub_10002F130(v5);

  if (v6)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    progressGroups = [(DSFileService *)selfCopy progressGroups];
    v9 = [progressGroups objectForKeyedSubscript:v6];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setUpGroupForChildProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(DSFileService *)selfCopy groupForChildProgress:progressCopy];
  userInfo = [progressCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"DSFileOperationUUID"];
  v9 = sub_10002F130(v8);

  if (!v6)
  {
    NSTemporaryDirectory();
    objc_claimAutoreleasedReturnValue();
    [NSURL fileURLWithPath:"fileURLWithPath:isDirectory:" isDirectory:?];
    objc_claimAutoreleasedReturnValue();
    sub_1000033A4();
  }

  if ([v6 registerChildProgress:progressCopy])
  {
    v10 = LogObj(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      childProgresses = [v6 childProgresses];
      v12 = [childProgresses count];
      buf = 138543618;
      *buf_4 = v9;
      v15 = 2048;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "DSProgress setUpGroupForChildProgress: Added child to %{public}@ - new count: %lu", &buf, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)addChildProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(DSFileService *)selfCopy groupForChildProgress:progressCopy];
  v7 = v6;
  if (v6)
  {
    [v6 addChildProgress:progressCopy];
    v8 = LogObj(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      progress = [v7 progress];
      v10 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [progress totalUnitCount], 0);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "DSProgress: addChildProgress: final total count: %{public}@", &v11, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeChildProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(DSFileService *)selfCopy groupForChildProgress:progressCopy];
  v7 = v6;
  if (v6)
  {
    uuid = [v6 uuid];
    [v7 removeChildProgress:progressCopy];
    v9 = LogObj(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      uuid2 = [v7 uuid];
      childProgresses = [v7 childProgresses];
      buf[0] = 138543618;
      *&buf[1] = uuid2;
      v13 = 2048;
      v14 = [childProgresses count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "DSProgress: removeChildProgress from %{public}@ - new count: %lu", buf, 0x16u);
    }

    if (([v7 hasOutstandingChildren] & 1) == 0)
    {
      [v7 unpublish];
      sub_1000033A4();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)cancelProgressGroupWithUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = LogObj(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling progress for group %{public}@", &v10, 0xCu);
  }

  progressGroups = [(DSFileService *)selfCopy progressGroups];
  v8 = [progressGroups objectForKeyedSubscript:dCopy];

  if (v8)
  {
    [v8 cancel];
  }

  else
  {
    v9 = LogObj(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = dCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to find progress group for %{public}@", &v10, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)inProgressOperationsWithReply:(id)reply
{
  replyCopy = reply;
  ActivityTracker = GetActivityTracker();
  TActivityTracker::AddOperation(ActivityTracker);
  v6 = +[NSMutableArray array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  progressGroups = [(DSFileService *)selfCopy progressGroups];
  allValues = [progressGroups allValues];

  v10 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = objc_opt_class();
        publishingURL = [v13 publishingURL];
        v16 = [v14 wrapperWithURL:publishingURL readonly:1 error:0];

        if (v16)
        {
          [v6 addObject:v16];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  replyCopy[2](replyCopy, v6, 0);
  v17 = GetActivityTracker();
  TActivityTracker::RemoveOperation(v17);
}

@end