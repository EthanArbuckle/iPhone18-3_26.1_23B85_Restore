@interface DDRTaskRemoveDeviceFromOctagon
- (void)run;
@end

@implementation DDRTaskRemoveDeviceFromOctagon

- (void)run
{
  v2 = objc_alloc_init(OTConfigurationContext);
  [v2 setContext:OTDefaultContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002650;
  v7[3] = &unk_100014640;
  v8 = [[OTClique alloc] initWithContextData:v2];
  v3 = dispatch_semaphore_create(0);
  v9 = v3;
  v4 = v8;
  dispatch_sync(&_dispatch_main_q, v7);
  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v3, v5))
  {
    v6 = DDRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100008E90(v6);
    }
  }
}

@end