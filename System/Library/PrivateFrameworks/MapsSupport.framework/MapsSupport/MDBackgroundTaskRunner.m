@interface MDBackgroundTaskRunner
- (id)initTaskWithIdentifier:(id)a3;
- (void)registerTaskWithIdentifier:(id)a3;
@end

@implementation MDBackgroundTaskRunner

- (id)initTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MDBackgroundTaskRunner;
  v5 = [(MDBackgroundTaskRunner *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.Maps.mapspushd.backgroudTaskQueue", v6);
    taskQueue = v5->_taskQueue;
    v5->_taskQueue = v7;

    v9 = +[NSHashTable weakObjectsHashTable];
    backgroundTasks = v5->_backgroundTasks;
    v5->_backgroundTasks = v9;

    [(MDBackgroundTaskRunner *)v5 registerTaskWithIdentifier:v4];
  }

  return v5;
}

- (void)registerTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  taskQueue = self->_taskQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019AFC;
  v7[3] = &unk_10003D3D8;
  v7[4] = self;
  [v5 registerForTaskWithIdentifier:v4 usingQueue:taskQueue launchHandler:v7];
}

@end