@interface DTMemlimitAssertionFactory
- (id)_removeMemoryLimitsForPid:(int)pid;
@end

@implementation DTMemlimitAssertionFactory

- (id)_removeMemoryLimitsForPid:(int)pid
{
  *(&v11 + 4) = 0xFFFFFFFF00000000;
  LODWORD(v11) = -1;
  HIDWORD(v11) = 0;
  v4 = memorystatus_control();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      pidCopy2 = pid;
      v14 = 1024;
      v15 = v5;
      v6 = "DTMemlimitAssertionFactory: failed to remove active and inactive memory limits for pid %d (result = %d)";
      v7 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v6, buf, 0xEu);
    }
  }

  else
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"DTMemlimitAssertionFactoryLog"];

    if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      pidCopy2 = pid;
      v14 = 1024;
      v15 = 0;
      v6 = "DTMemlimitAssertionFactory: removed active and inactive memory limits for pid %d (result = %d)";
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }
  }

  return 0;
}

@end