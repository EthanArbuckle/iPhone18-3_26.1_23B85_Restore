@interface NDOIntervalCallActivity
+ (BOOL)isDeviceCountryEligibleForIntervalEvent;
+ (void)performScheduleIntervalActivityIfPossibleWithCompletion:(id)completion;
- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler;
@end

@implementation NDOIntervalCallActivity

- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler
{
  schedulerCopy = scheduler;
  handlerCopy = handler;
  [(NDOIntervalCallActivity *)self setOutreachInProgress:1];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C9D0;
  v17[3] = &unk_10009A978;
  objc_copyWeak(&v20, &location);
  v8 = schedulerCopy;
  v18 = v8;
  v9 = handlerCopy;
  v19 = v9;
  v10 = [NSTimer timerWithTimeInterval:1 repeats:v17 block:2000000000.0];
  [(NDOIntervalCallActivity *)self setOutReachTimer:v10];

  v11 = +[NSRunLoop mainRunLoop];
  outReachTimer = [(NDOIntervalCallActivity *)self outReachTimer];
  [v11 addTimer:outReachTimer forMode:NSDefaultRunLoopMode];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CAE0;
  v14[3] = &unk_10009AA18;
  v14[4] = self;
  objc_copyWeak(&v16, &location);
  v13 = v9;
  v15 = v13;
  [NDOIntervalCallActivity performScheduleIntervalActivityIfPossibleWithCompletion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

+ (void)performScheduleIntervalActivityIfPossibleWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D548;
  v4[3] = &unk_10009AA40;
  completionCopy = completion;
  v3 = completionCopy;
  [NDOServerVersionUtilities serverVersionSupported:v4];
}

+ (BOOL)isDeviceCountryEligibleForIntervalEvent
{
  v2 = +[NDOServerVersionUtilities getValidServerVersionCache];
  v3 = v2;
  if (!v2)
  {
    v5 = 0;
LABEL_13:
    v11 = 1;
    goto LABEL_16;
  }

  v4 = [v2 objectForKey:@"scIntervalDisabledCountries"];
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    goto LABEL_13;
  }

  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100072FA4(v6);
  }

  v7 = +[NSLocale currentLocale];
  v8 = [v7 objectForKey:NSLocaleCountryCode];
  v9 = v8;
  if (v8 && ([v8 isEqualToString:&stru_10009E988] & 1) == 0 && objc_msgSend(v5, "containsObject:", v9))
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446466;
      v14 = "+[NDOIntervalCallActivity isDeviceCountryEligibleForIntervalEvent]";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Country: %@ is disabled for interval calls.", &v13, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

LABEL_16:
  return v11;
}

@end