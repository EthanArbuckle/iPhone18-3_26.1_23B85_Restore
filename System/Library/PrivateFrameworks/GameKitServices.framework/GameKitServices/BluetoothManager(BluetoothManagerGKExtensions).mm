@interface BluetoothManager(BluetoothManagerGKExtensions)
- (uint64_t)localDeviceSupportsService:()BluetoothManagerGKExtensions;
@end

@implementation BluetoothManager(BluetoothManagerGKExtensions)

- (uint64_t)localDeviceSupportsService:()BluetoothManagerGKExtensions
{
  if (!*(self + *MEMORY[0x277CF3250]))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [BluetoothManager(BluetoothManagerGKExtensions) localDeviceSupportsService:];
      }
    }

    return -1;
  }

  if (BTLocalDeviceSupportsService())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [BluetoothManager(BluetoothManagerGKExtensions) localDeviceSupportsService:];
      }
    }

    return -1;
  }

  return 0;
}

- (void)localDeviceSupportsService:()BluetoothManagerGKExtensions .cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v5 = v0;
  v6 = "[BluetoothManager(BluetoothManagerGKExtensions) localDeviceSupportsService:]";
  v7 = 1024;
  v8 = 41;
  v9 = 1024;
  v10 = v1;
  _os_log_error_impl(&dword_24E50C000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not check bluetooth to see if service supported. %d", v4, 0x22u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)localDeviceSupportsService:()BluetoothManagerGKExtensions .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d no local BT device in the BT manager.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end