@interface PowerEventListener
- (BOOL)registerForEvents;
- (PowerEventListener)initWithDelegate:(id)delegate queue:(id)queue;
- (id)delegate;
- (void)_powerNotificationMessage:(unsigned int)message argument:(void *)argument;
- (void)allowSleep;
- (void)dealloc;
- (void)unregisterForEvents;
@end

@implementation PowerEventListener

- (PowerEventListener)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = PowerEventListener;
  v8 = [(PowerEventListener *)&v20 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_23;
  }

  objc_storeWeak(&v8->_delegate, delegateCopy);
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  if (queueCopy)
  {
    v11 = dispatch_queue_create_with_target_V2("wpantund.PowerEventListener.Queue", v10, queueCopy);
    workQueue = v9->_workQueue;
    v9->_workQueue = v11;

    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13)
    {
      if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      *buf = 136315138;
      v22 = "[PowerEventListener initWithDelegate:queue:]";
      v14 = "Power Assertion: %s Cretaed WQ with Target Q";
      goto LABEL_11;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

LABEL_15:
    [PowerEventHandler_Rcp init:];
    goto LABEL_16;
  }

  v15 = dispatch_queue_create("wpantund.PowerEventListener.Queue", v10);
  v16 = v9->_workQueue;
  v9->_workQueue = v15;

  v13 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v13)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    goto LABEL_16;
  }

  *buf = 136315138;
  v22 = "[PowerEventListener initWithDelegate:queue:]";
  v14 = "Power Assertion: %s Cretaed new WQ";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
LABEL_16:

  v17 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v17)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v9->_workQueue;
      *buf = 136315650;
      v22 = "[PowerEventListener initWithDelegate:queue:]";
      v23 = 2112;
      v24 = queueCopy;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Power Assertion: %s Init with Queue: %@: rootQueue: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

LABEL_23:
  return v9;
}

- (void)dealloc
{
  [(PowerEventListener *)self unregisterForEvents];
  v3.receiver = self;
  v3.super_class = PowerEventListener;
  [(PowerEventListener *)&v3 dealloc];
}

- (id)delegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (BOOL)registerForEvents
{
  if (!self->_powerNotificationConnection)
  {
    v4 = IORegisterForSystemPower(self, &self->_powerNotificationPort, _PowerEventListenerSystemPowerChanged, &self->_powerNotificationNotifier);
    self->_powerNotificationConnection = v4;
    v2 = v4 != 0;
    if (v4)
    {
      IONotificationPortSetDispatchQueue(self->_powerNotificationPort, self->_workQueue);
      v5 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v5)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 136315138;
          v8 = "[PowerEventListener registerForEvents]";
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Power Assertion: %s Success to register for PM notifications", &v7, 0xCu);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v5 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v5)
      {
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [PowerEventListener registerForEvents];
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        [PowerEventHandler_Rcp init:];
      }
    }

LABEL_16:

    return v2;
  }

  return 1;
}

- (void)unregisterForEvents
{
  if (self->_powerNotificationConnection)
  {
    IODeregisterForSystemPower(&self->_powerNotificationNotifier);
    IONotificationPortDestroy(self->_powerNotificationPort);
    IOServiceClose(self->_powerNotificationConnection);
    self->_powerNotificationConnection = 0;
  }
}

- (void)_powerNotificationMessage:(unsigned int)message argument:(void *)argument
{
  HIDWORD(v6) = message + 536870288;
  LODWORD(v6) = message + 536870288;
  v5 = v6 >> 4;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        delegate = log_get_logging_obg("com.apple.threadradiod", "default");
        if (delegate)
        {
          if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          v13 = 136315138;
          v14 = "[PowerEventListener _powerNotificationMessage:argument:]";
          v8 = "Power Assertion: %s Will Not Sleep Msg";
LABEL_19:
          _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, v8, &v13, 0xCu);
          goto LABEL_33;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        break;
      case 9:
        sendApStateNotification();
        v11 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v11)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v13 = 136315138;
            v14 = "[PowerEventListener _powerNotificationMessage:argument:]";
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Power Assertion: %s Has Powered On Msg, and wake reason as below:", &v13, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        delegate = [(PowerEventListener *)self delegate];
        [delegate powerEventListenerSystemPoweredOn_Rcp:self];
        goto LABEL_33;
      case 11:
        delegate = log_get_logging_obg("com.apple.threadradiod", "default");
        if (delegate)
        {
          if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          v13 = 136315138;
          v14 = "[PowerEventListener _powerNotificationMessage:argument:]";
          v8 = "Power Assertion: %s Will Power On Msg";
          goto LABEL_19;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        break;
      default:
        return;
    }

    [PowerEventHandler_Rcp init:];
    goto LABEL_33;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v10 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v10)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 136315138;
          v14 = "[PowerEventListener _powerNotificationMessage:argument:]";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Power Assertion: %s Will Sleep Msg", &v13, 0xCu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      sendApStateNotification();
      if (IOAllowPowerChange(self->_powerNotificationConnection, argument))
      {
        delegate = log_get_logging_obg("com.apple.threadradiod", "default");
        if (delegate)
        {
          if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
          {
            [PowerEventListener _powerNotificationMessage:argument:];
          }

          goto LABEL_33;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }
  }

  else
  {
    v12 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v12)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[PowerEventListener _powerNotificationMessage:argument:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Power Assertion: %s Can Sleep Msg", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }

    if (IOAllowPowerChange(self->_powerNotificationConnection, argument))
    {
      delegate = log_get_logging_obg("com.apple.threadradiod", "default");
      if (delegate)
      {
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
        {
          [PowerEventListener _powerNotificationMessage:argument:];
        }

        goto LABEL_33;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_52:
        [PowerEventHandler_Rcp init:];
      }

LABEL_33:
    }
  }
}

- (void)allowSleep
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_powerNotificationMessage:argument:.cold.5()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_powerNotificationMessage:argument:.cold.8()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end