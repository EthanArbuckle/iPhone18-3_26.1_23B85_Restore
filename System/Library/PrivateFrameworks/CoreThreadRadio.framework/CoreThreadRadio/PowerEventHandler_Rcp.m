@interface PowerEventHandler_Rcp
- (id)init:(id)a3;
- (void)powerEventListenerSystemPoweredOn_Rcp:(id)a3;
@end

@implementation PowerEventHandler_Rcp

- (id)init:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PowerEventHandler_Rcp;
  v5 = [(PowerEventHandler_Rcp *)&v12 init];
  if (v5)
  {
    v6 = [[PowerEventListener alloc] initWithDelegate:v5 queue:v4];
    v7 = powerEventListener;
    powerEventListener = v6;

    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[PowerEventHandler_Rcp init:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Power Assertion: %s Init", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    v9 = [powerEventListener registerForEvents];
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v14 = "[PowerEventHandler_Rcp init:]";
        v15 = 1024;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Power Assertion: %s registerForEvents: %d", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  return v5;
}

- (void)powerEventListenerSystemPoweredOn_Rcp:(id)a3
{
  v3 = dispatch_get_current_queue();
  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[PowerEventHandler_Rcp powerEventListenerSystemPoweredOn_Rcp:]";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Power Assertion: %s Received SystemHasPoweredOn on Q: %@", &v5, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  findWakeReason_Rcp();
}

@end