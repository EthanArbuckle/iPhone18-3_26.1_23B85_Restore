@interface CAMDailySettingsUseCaseEvent
+ (PPSTelemetryIdentifier)getCameraCaptureStreamID;
+ (void)registerForBackgroundTaskWithQueue:(id)a3;
- (BOOL)isMetricSubmissionsCompleted;
- (CAMDailySettingsUseCaseEvent)initWithQueue:(id)a3 andMetricsSubmittedBlock:(id)a4;
- (void)dealloc;
- (void)submitCameraCapturePreferencesWithCompletion:(id)a3;
- (void)submitMetrics;
@end

@implementation CAMDailySettingsUseCaseEvent

+ (void)registerForBackgroundTaskWithQueue:(id)a3
{
  v3 = a3;
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
  v9 = v3;
  v7 = v3;
  [v5 registerForTaskWithIdentifier:v6 usingQueue:v7 launchHandler:v8];
}

- (CAMDailySettingsUseCaseEvent)initWithQueue:(id)a3 andMetricsSubmittedBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CAMDailySettingsUseCaseEvent;
  v9 = [(CAMDailySettingsUseCaseEvent *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__metricQueue, a3);
    v11 = objc_retainBlock(v8);
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
    v7 = [(CAMDailySettingsUseCaseEvent *)self _numberOfMetricsSubmitted];
    v8 = 2050;
    v9 = [(CAMDailySettingsUseCaseEvent *)self _numberMetricSubmisions];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DailySettingsUseCaseEvent isMetricSubmissionsCompleted _numberOfMetricsSubmitted %{public}lu _numberMetricSubmisions %{public}lu", &v6, 0x16u);
  }

  v4 = [(CAMDailySettingsUseCaseEvent *)self _numberOfMetricsSubmitted];
  return v4 == [(CAMDailySettingsUseCaseEvent *)self _numberMetricSubmisions];
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

- (void)submitCameraCapturePreferencesWithCompletion:(id)a3
{
  v4 = a3;
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
    v8 = [(CAMDailySettingsUseCaseEvent *)self _appConfigurationController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001994;
    v11[3] = &unk_100008300;
    objc_copyWeak(&v14, &location);
    v13 = buf;
    v12 = v4;
    v9 = [v8 addObserverForAssociatedAppUpdatesUsingBlock:v11];
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

    v4[2](v4);
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