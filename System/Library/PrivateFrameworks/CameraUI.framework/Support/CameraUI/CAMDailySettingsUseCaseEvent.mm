@interface CAMDailySettingsUseCaseEvent
+ (PPSTelemetryIdentifier)getCameraCaptureStreamID;
+ (void)registerForBackgroundTaskWithQueue:(id)queue;
- (BOOL)isMetricSubmissionsCompleted;
- (CAMDailySettingsUseCaseEvent)initWithQueue:(id)queue andMetricsSubmittedBlock:(id)block;
- (void)dealloc;
- (void)submitCameraCapturePreferencesWithCompletion:(id)completion;
- (void)submitMetrics;
@end

@implementation CAMDailySettingsUseCaseEvent

+ (void)registerForBackgroundTaskWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent Registering to run in background", buf, 2u);
  }

  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = +[CAMDailySettingsUseCaseEvent eventName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000101C;
  v8[3] = &unk_100008288;
  v9 = queueCopy;
  v7 = queueCopy;
  [v5 registerForTaskWithIdentifier:v6 usingQueue:v7 launchHandler:v8];
}

- (CAMDailySettingsUseCaseEvent)initWithQueue:(id)queue andMetricsSubmittedBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = CAMDailySettingsUseCaseEvent;
  v9 = [(CAMDailySettingsUseCaseEvent *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__metricQueue, queue);
    v11 = objc_retainBlock(blockCopy);
    completion = v10->__completion;
    v10->__completion = v11;

    v13 = objc_alloc_init(SBSCaptureButtonAppConfigurationCoordinator);
    appConfigurationController = v10->__appConfigurationController;
    v10->__appConfigurationController = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->__associatedAppObserver invalidate];
  v3.receiver = self;
  v3.super_class = CAMDailySettingsUseCaseEvent;
  [(CAMDailySettingsUseCaseEvent *)&v3 dealloc];
}

- (BOOL)isMetricSubmissionsCompleted
{
  v3 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134349312;
    _numberOfMetricsSubmitted = [(CAMDailySettingsUseCaseEvent *)self _numberOfMetricsSubmitted];
    v8 = 2050;
    _numberMetricSubmisions = [(CAMDailySettingsUseCaseEvent *)self _numberMetricSubmisions];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent isMetricSubmissionsCompleted _numberOfMetricsSubmitted %{public}lu _numberMetricSubmisions %{public}lu", &v6, 0x16u);
  }

  _numberOfMetricsSubmitted2 = [(CAMDailySettingsUseCaseEvent *)self _numberOfMetricsSubmitted];
  return _numberOfMetricsSubmitted2 == [(CAMDailySettingsUseCaseEvent *)self _numberMetricSubmisions];
}

- (void)submitMetrics
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10000157C;
  v7 = &unk_1000082B0;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CAMDailySettingsUseCaseEvent *)self submitCameraCapturePreferencesWithCompletion:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)submitCameraCapturePreferencesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MGGetBoolAnswer();
  v6 = os_log_create("com.apple.camera", "Nebula");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent submitCameraCapturePreferencesWithCompletion called", buf, 2u);
    }

    [(CAMDailySettingsUseCaseEvent *)self set_numberMetricSubmisions:[(CAMDailySettingsUseCaseEvent *)self _numberMetricSubmisions]+ 1];
    objc_initWeak(&location, self);
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 0;
    _appConfigurationController = [(CAMDailySettingsUseCaseEvent *)self _appConfigurationController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001994;
    v11[3] = &unk_100008300;
    objc_copyWeak(&v14, &location);
    v13 = buf;
    v12 = completionCopy;
    v9 = [_appConfigurationController addObserverForAssociatedAppUpdatesUsingBlock:v11];
    associatedAppObserver = self->__associatedAppObserver;
    self->__associatedAppObserver = v9;

    objc_destroyWeak(&v14);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent submitCameraCapturePreferencesWithCompletion not supported", buf, 2u);
    }

    completionCopy[2](completionCopy);
  }
}

+ (PPSTelemetryIdentifier)getCameraCaptureStreamID
{
  if (qword_10000C4C0 != -1)
  {
    sub_10000273C();
  }

  return qword_10000C4B8;
}

@end