@interface CPLCKCheckFeatureAvailabilityOperation
- (CPLCKCheckFeatureAvailabilityOperation)init;
@end

@implementation CPLCKCheckFeatureAvailabilityOperation

- (CPLCKCheckFeatureAvailabilityOperation)init
{
  if (qword_1002C5098 != -1)
  {
    dispatch_once(&qword_1002C5098, &stru_100273E98);
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"CPLCloudPhotosAvailabilityServiceName"];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using custom CloudPhotosAvailability service: '%@'", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = @"CloudPhotosAvailability";
  }

  v6 = objc_opt_class();
  v12.receiver = self;
  v12.super_class = CPLCKCheckFeatureAvailabilityOperation;
  v7 = [(CPLCKCheckFeatureAvailabilityOperation *)&v12 initWithServiceName:v4 functionName:@"checkFeatures" responseClass:v6];
  v8 = v7;
  if (v7)
  {
    [(CPLCKCheckFeatureAvailabilityOperation *)v7 setRequest:qword_1002C5090];
    objc_initWeak(buf, v8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003F890;
    v10[3] = &unk_100273E78;
    objc_copyWeak(&v11, buf);
    [(CPLCKCheckFeatureAvailabilityOperation *)v8 setCodeOperationCompletionBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  return v8;
}

@end