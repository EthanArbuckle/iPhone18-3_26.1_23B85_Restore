@interface FMDAVRouteControllerFactory
+ (BOOL)isAutomationActive;
+ (id)routeController;
@end

@implementation FMDAVRouteControllerFactory

+ (BOOL)isAutomationActive
{
  if (qword_10001EA58 != -1)
  {
    sub_10000A990();
  }

  v2 = sub_1000070C0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_10001EA50;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAutomationAVRouteController: isAutomationActive: %d", v4, 8u);
  }

  return byte_10001EA50;
}

+ (id)routeController
{
  if (+[FMDAVRouteControllerFactory isAutomationActive])
  {
    v2 = +[FMDAutomationHelperFactory sharedFactory];
    v3 = [v2 automationHelperClassWithName:@"FMDAutomationAVRouteController"];

    v4 = sub_1000070C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAVRouteController: switching to automation", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003510;
    block[3] = &unk_100014F70;
    block[4] = v3;
    if (qword_10001EA68 != -1)
    {
      dispatch_once(&qword_10001EA68, block);
    }
  }

  else
  {
    v5 = objc_alloc_init(FMDAVRouteController);
    v6 = qword_10001EA60;
    qword_10001EA60 = v5;
  }

  v7 = qword_10001EA60;

  return v7;
}

@end