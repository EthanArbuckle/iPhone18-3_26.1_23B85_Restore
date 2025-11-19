@interface IMBatteryStatus
- (BOOL)isCharging;
- (IMBatteryStatusTestDelegate)testDelegate;
@end

@implementation IMBatteryStatus

- (BOOL)isCharging
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (qword_1ED8C9640 != -1)
  {
    sub_1A88C14AC();
  }

  if (qword_1ED8C9648 != -1)
  {
    sub_1A88C14C0();
  }

  if (qword_1ED8C9650 != -1)
  {
    sub_1A88C14D4();
  }

  if (qword_1ED8C9658 != -1)
  {
    sub_1A88C14E8();
  }

  if (qword_1ED8C9638 != -1)
  {
    sub_1A88C14FC();
  }

  if (off_1ED8C9678 && off_1ED8C9660 && off_1ED8C9668 && off_1ED8C9670 && byte_1ED8C9630 == 1)
  {
    v4 = off_1ED8C9660("IOPMPowerSource");
    if (v4)
    {
      v5 = off_1ED8C9668(dword_1EB3094E4, v4);
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x1E695E480];
        v8 = [off_1ED8C9670(v5 @"IsCharging"];
        v9 = [off_1ED8C9670(v6 @"ExternalConnected"];
        v10 = [off_1ED8C9670(v6 @"FullyCharged"];
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = @"NO";
            if (v8)
            {
              v13 = @"YES";
            }

            else
            {
              v13 = @"NO";
            }

            if (v9)
            {
              v14 = @"YES";
            }

            else
            {
              v14 = @"NO";
            }

            v22 = 138412802;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            if (v10)
            {
              v12 = @"YES";
            }

            v26 = 2112;
            v27 = v12;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Battery status isChargingPerIOKit %@ isExternalConnected %@ isFullyCharged %@", &v22, 0x20u);
          }
        }

        off_1ED8C9678(v6);
        v15 = 1;
        goto LABEL_45;
      }

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Failed to load service for _kIOMasterPortDefault", &v22, 2u);
        }

LABEL_43:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Unable to load a service for IOPMPowerSource", &v22, 2u);
      }

      goto LABEL_43;
    }

    v15 = 0;
    v9 = 0;
LABEL_45:
    v17 = 1;
    goto LABEL_46;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "One or more weak linked symbols were not loaded.", &v22, 2u);
    }
  }

  v15 = 0;
  v17 = 0;
  v9 = 0;
LABEL_46:
  objc_autoreleasePoolPop(v3);
  v19 = [(IMBatteryStatus *)self testDelegate];

  if (v19)
  {
    v20 = [(IMBatteryStatus *)self testDelegate];
    [v20 chargingCalledWithResult:v15 isCharging:v9 frameworksLoadedOk:v17];
  }

  return v9;
}

- (IMBatteryStatusTestDelegate)testDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testDelegate);

  return WeakRetained;
}

@end