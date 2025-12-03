@interface CLLocationManager
+ (void)sg_swizzle;
- (id)sg_init;
@end

@implementation CLLocationManager

- (id)sg_init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[CLLocationManager init] must never be used in suggestd", v5, 2u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    abort();
  }

  sg_init = [(CLLocationManager *)self sg_init];

  return sg_init;
}

+ (void)sg_swizzle
{
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, "init");
  v4 = objc_opt_class();
  v5 = class_getInstanceMethod(v4, "sg_init");
  v6 = objc_opt_class();
  Implementation = method_getImplementation(v5);
  TypeEncoding = method_getTypeEncoding(v5);
  if (class_addMethod(v6, "init", Implementation, TypeEncoding))
  {
    v9 = objc_opt_class();
    v10 = method_getImplementation(InstanceMethod);
    v11 = method_getTypeEncoding(InstanceMethod);

    class_replaceMethod(v9, "sg_init", v10, v11);
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v5);
  }
}

@end