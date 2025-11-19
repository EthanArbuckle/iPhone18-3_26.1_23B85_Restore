@interface GKBluetoothSupport
+ (int)_determineBluetoothStatus;
+ (int)bluetoothStatus;
+ (void)_btPowerStateChanged:(id)a3;
+ (void)_determineBluetoothStatus;
+ (void)turnBluetoothOn;
@end

@implementation GKBluetoothSupport

+ (int)bluetoothStatus
{
  result = __bluetoothStatus;
  if (!__bluetoothStatus)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      __bluetoothStatus = [a1 _determineBluetoothStatus];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__GKBluetoothSupport_bluetoothStatus__block_invoke;
      block[3] = &unk_279682BA8;
      block[4] = a1;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = *MEMORY[0x277CF3230];
    [v4 addObserver:a1 selector:sel__btPowerStateChanged_ name:*MEMORY[0x277CF3230] object:0];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    return __bluetoothStatus;
  }

  return result;
}

uint64_t __37__GKBluetoothSupport_bluetoothStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineBluetoothStatus];
  __bluetoothStatus = result;
  return result;
}

+ (void)turnBluetoothOn
{
  v2 = [objc_msgSend(a1 "_bluetoothManagerClass")];

  [v2 setPowered:1];
}

+ (int)_determineBluetoothStatus
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(a1 "_bluetoothManagerClass")];
  if (v3)
  {
    v4 = v3;
    if ([v3 available])
    {
      v5 = [v4 localDeviceSupportsService:2048];
      if (v5 != -1)
      {
        if (v5)
        {
          v13 = [v4 powered];
          if (v13)
          {
            v6 = 5;
          }

          else
          {
            v6 = 4;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v16 = @"OFF";
              v19 = 136315906;
              v20 = v14;
              v21 = 2080;
              v22 = "+[GKBluetoothSupport _determineBluetoothStatus]";
              if (v13)
              {
                v16 = @"ON";
              }

              v23 = 1024;
              v24 = 142;
              v25 = 2112;
              v26 = v16;
              _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d determined bluetooth is %@", &v19, 0x26u);
            }
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              +[GKBluetoothSupport _determineBluetoothStatus];
            }
          }

          v6 = 1;
        }

        goto LABEL_36;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = 3;
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          +[GKBluetoothSupport _determineBluetoothStatus];
        }

        goto LABEL_36;
      }

LABEL_27:
      v6 = 3;
      goto LABEL_36;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        +[GKBluetoothSupport _determineBluetoothStatus];
      }
    }

    v6 = 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        +[(GKBluetoothSupport *)v7];
      }
    }

    v9 = [objc_msgSend(objc_opt_class() "_bluetoothManagerClass")];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v9 == 9)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          +[GKBluetoothSupport _determineBluetoothStatus];
        }
      }

      v6 = 2;
    }

    else
    {
      if (ErrorLogLevelForModule < 3)
      {
        goto LABEL_27;
      }

      v6 = 3;
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        +[(GKBluetoothSupport *)v11];
      }
    }
  }

LABEL_36:
  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)_btPowerStateChanged:(id)a3
{
  if (![MEMORY[0x277CCACC8] isMainThread])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__GKBluetoothSupport__btPowerStateChanged___block_invoke;
    block[3] = &unk_279682BA8;
    block[4] = a1;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (!__bluetoothStatus)
    {
      return;
    }

    goto LABEL_5;
  }

  __bluetoothStatus = [a1 _determineBluetoothStatus];
  if (__bluetoothStatus)
  {
LABEL_5:
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
}

uint64_t __43__GKBluetoothSupport__btPowerStateChanged___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineBluetoothStatus];
  __bluetoothStatus = result;
  return result;
}

+ (void)_determineBluetoothStatus
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Device does not have Bluetooth.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end