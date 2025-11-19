@interface CoreBTState
@end

@implementation CoreBTState

void __CoreBTState_block_invoke(id a1)
{
  v1 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v1)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      v2 = v1;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = [CoreBT::cbController bluetoothState];
        if (v3 > 0xA)
        {
          v4 = "?";
        }

        else
        {
          v4 = off_1004C1B98[v3];
        }

        v5 = 136315138;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[CoreBT]Bluetooth state changed: %s", &v5, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if ([CoreBT::cbController bluetoothState] == 5 || objc_msgSend(CoreBT::cbController, "bluetoothState") == 10 || objc_msgSend(CoreBT::cbController, "bluetoothState") == 4)
  {
    sendUserBTNotification();
  }
}

void __CoreBTState_block_invoke_4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v3)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      v4 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [CoreBT::cbController bluetoothState];
        if (v5 > 0xA)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1004C1B98[v5];
        }

        v8 = 136315138;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[CoreBT]Bluetooth state: %s", &v8, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  if (v2)
  {
    v7 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v7)
    {
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[CoreBT]Get BT state fail with error: %@", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }
}

@end