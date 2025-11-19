@interface ERDaemonManager
+ (void)reportAnalyticsDistanceEvent:(id)a3;
+ (void)reportAnalyticsEyeReliefToggle:(BOOL)a3;
- (ERDaemonManager)init;
- (void)applyConfigurations;
- (void)dealloc;
- (void)disablePermissibleOnscreenContentMonitoring;
- (void)enablePermissibleOnscreenContentMonitoring;
- (void)handleDistanceSample:(id)a3 interventionType:(int64_t)a4 withBackgroundActivityCompletionHandler:(id)a5;
- (void)handleTransitionForLayout:(id)a3;
- (void)interveneWithType:(int64_t)a3 withCompletion:(id)a4;
- (void)scheduleSampling;
- (void)start;
- (void)unscheduleSamplingWithReason:(int64_t)a3;
@end

@implementation ERDaemonManager

- (ERDaemonManager)init
{
  v25.receiver = self;
  v25.super_class = ERDaemonManager;
  v2 = [(ERDaemonManager *)&v25 init];
  if (v2)
  {
    v3 = +[EREyeReliefServer sharedServer];
    server = v2->_server;
    v2->_server = v3;

    if (!v2->_server)
    {
      v18 = [NSString stringWithFormat:@"Failed to initialize mach service. Going idle..."];
      [ERLogging log:v18 withType:1];

      v17 = 0;
      goto LABEL_8;
    }

    objc_initWeak(&location, v2);
    v5 = v2->_server;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100001208;
    v22[3] = &unk_100008240;
    objc_copyWeak(&v23, &location);
    [(EREyeReliefServer *)v5 setDistanceSamplingToggleHandler:v22];
    v6 = v2->_server;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000012A4;
    v20[3] = &unk_100008268;
    objc_copyWeak(&v21, &location);
    [(EREyeReliefServer *)v6 setIsDistanceSamplingEnabledHandler:v20];
    v7 = objc_opt_new();
    engine = v2->_engine;
    v2->_engine = v7;

    v9 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.eyereliefd.distanceSampling"];
    distanceSampleActivity = v2->_distanceSampleActivity;
    v2->_distanceSampleActivity = v9;

    [(NSBackgroundActivityScheduler *)v2->_distanceSampleActivity setRepeats:1];
    [(NSBackgroundActivityScheduler *)v2->_distanceSampleActivity setTolerance:5.0];
    [(NSBackgroundActivityScheduler *)v2->_distanceSampleActivity setInterval:80.0];
    [(NSBackgroundActivityScheduler *)v2->_distanceSampleActivity setQualityOfService:17];
    v11 = dispatch_queue_create("com.apple.eyerelief.samplingstatequeue", 0);
    samplingStateQueue = v2->_samplingStateQueue;
    v2->_samplingStateQueue = v11;

    v13 = dispatch_queue_create("com.apple.eyerelief.configurationqueue", 0);
    configurationQueue = v2->_configurationQueue;
    v2->_configurationQueue = v13;

    v15 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.EyeRelief"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v15;

    if (os_variant_has_internal_content())
    {
      v2->_isDemoModeActive = [(NSUserDefaults *)v2->_userDefaults BOOLForKey:@"demoMode"];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  v17 = v2;
LABEL_8:

  return v17;
}

- (void)dealloc
{
  v3 = [(ERDaemonManager *)self layoutMonitor];

  if (v3)
  {
    v4 = [(ERDaemonManager *)self layoutMonitor];
    [v4 invalidate];
  }

  v5.receiver = self;
  v5.super_class = ERDaemonManager;
  [(ERDaemonManager *)&v5 dealloc];
}

- (void)start
{
  v3 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.eyereliefd.startup"];
  [v3 setPreregistered:1];
  [v3 scheduleWithBlock:&stru_1000082A8];
  [(ERDaemonManager *)self applyConfigurations];
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100001504;
  v8 = &unk_1000082D0;
  objc_copyWeak(&v9, &location);
  [MOEffectiveSettingsStore startObservingChangesWithHandler:&v5];
  v4 = [(ERDaemonManager *)self server:v5];
  [v4 startServer];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)applyConfigurations
{
  v3 = [(ERDaemonManager *)self configurationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001658;
  block[3] = &unk_1000082F8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)enablePermissibleOnscreenContentMonitoring
{
  v3 = [NSString stringWithFormat:@"Enabling permissible distance sample monitoring"];
  [ERLogging log:v3 withType:0];

  v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000019CC;
  v6[3] = &unk_100008320;
  v6[4] = self;
  [v4 setTransitionHandler:v6];
  v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4];
  [(ERDaemonManager *)self setLayoutMonitor:v5];
}

- (void)disablePermissibleOnscreenContentMonitoring
{
  v3 = [NSString stringWithFormat:@"Disabling permissible distance sample monitoring"];
  [ERLogging log:v3 withType:0];

  v4 = [(ERDaemonManager *)self layoutMonitor];
  [v4 invalidate];

  [(ERDaemonManager *)self setLayoutMonitor:0];
}

- (void)handleTransitionForLayout:(id)a3
{
  v4 = [a3 elements];
  v5 = [(ERDaemonManager *)self nonPermissibleOnscreenContent];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = @"Lock screen does not permit distance sampling";
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v20 + 1) + 8 * v11);
      v13 = [v12 bundleIdentifier];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v12 identifier];
      }

      v16 = v15;

      if ([v16 isEqualToString:@"com.apple.lock-screen"])
      {
        break;
      }

      if ([v5 containsObject:v16])
      {
        v10 = @"Onscreen content does not permit distance sampling";
        v18 = 2;
        goto LABEL_16;
      }

      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v18 = 1;
LABEL_16:
    v19 = [NSString stringWithFormat:v10];
    [ERLogging log:v19 withType:3];

    [(ERDaemonManager *)self unscheduleSamplingWithReason:v18];
    goto LABEL_17;
  }

LABEL_13:

  v17 = [NSString stringWithFormat:@"Onscreen content permits distance sampling"];
  [ERLogging log:v17 withType:3];

  [(ERDaemonManager *)self scheduleSampling];
LABEL_17:
}

- (void)scheduleSampling
{
  v3 = [(ERDaemonManager *)self samplingStateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001D94;
  block[3] = &unk_1000082F8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)unscheduleSamplingWithReason:(int64_t)a3
{
  v5 = [(ERDaemonManager *)self samplingStateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002394;
  v6[3] = &unk_1000083E8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)handleDistanceSample:(id)a3 interventionType:(int64_t)a4 withBackgroundActivityCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    v12 = [NSString stringWithFormat:@"Distance sample was nil. Will schedule next sample"];
    [ERLogging log:v12 withType:0];

    goto LABEL_8;
  }

  if ([v8 distanceCategory] == 1 || objc_msgSend(v8, "distanceCategory") == 2)
  {
    v10 = @"Distance was normal. Will schedule next sample";
  }

  else
  {
    if ([v8 distanceCategory] | a4)
    {
      v13 = [v8 distanceCategory];
      if (a4 && !v13)
      {
        v14 = [NSString stringWithFormat:@"Distance too close, intervention needed. Will launch EyeReliefUI with intervention type %li", a4];
        [ERLogging log:v14 withType:0];

        [objc_opt_class() reportAnalyticsDistanceEvent:v8];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100002738;
        v16[3] = &unk_100008410;
        v16[4] = self;
        v17 = v9;
        [(ERDaemonManager *)self interveneWithType:a4 withCompletion:v16];

        goto LABEL_9;
      }

      v15 = [NSString stringWithFormat:@"Unclear what to do with distance sample. Will ignore it and schedule next sample"];
      [ERLogging log:v15 withType:0];

      goto LABEL_6;
    }

    v10 = @"Distance too close but intervention not needed. Will schedule next sample";
  }

  v11 = [NSString stringWithFormat:v10];
  [ERLogging log:v11 withType:0];

LABEL_6:
  [objc_opt_class() reportAnalyticsDistanceEvent:v8];
LABEL_8:
  (*(v9 + 2))(v9, 1);
LABEL_9:
}

- (void)interveneWithType:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.EyeReliefUI" viewControllerClassName:@"EyeReliefUI.ViewController"];
  v8 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v26[0] = @"Type";
  v9 = [NSNumber numberWithInteger:a3];
  v26[1] = @"Distance Threshold";
  v27[0] = v9;
  v10 = [(ERDaemonManager *)self engine];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 tooCloseDistanceThreshold]);
  v27[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v8 setUserInfo:v12];

  v13 = [SBSRemoteAlertHandle newHandleWithDefinition:v7 configurationContext:v8];
  v14 = objc_alloc_init(SBSRemoteAlertActivationContext);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100002A64;
  v23 = &unk_100008438;
  v24 = v13;
  v25 = v6;
  v15 = v6;
  v16 = v13;
  v17 = [BSActionResponder responderWithHandler:&v20];
  v18 = [[BSAction alloc] initWithInfo:0 responder:v17];
  v19 = [NSSet setWithObjects:v18, 0, v20, v21, v22, v23];
  [v14 setActions:v19];

  [v16 activateWithContext:v14];
}

+ (void)reportAnalyticsDistanceEvent:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

+ (void)reportAnalyticsEyeReliefToggle:(BOOL)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002DDC;
  block[3] = &unk_1000084A0;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, block);
}

@end