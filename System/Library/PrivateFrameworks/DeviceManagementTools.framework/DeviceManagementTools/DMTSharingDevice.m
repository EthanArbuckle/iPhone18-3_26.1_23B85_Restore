@interface DMTSharingDevice
+ (BOOL)deviceIsPairedAccordingToFlags:(unsigned int)a3;
- (DMTSharingDevice)initWithDevice:(id)a3;
@end

@implementation DMTSharingDevice

- (DMTSharingDevice)initWithDevice:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v5 model];
  v8 = [v5 bleDevice];
  v9 = [v8 rssi];
  v10 = +[DMTSharingDevice deviceIsPairedAccordingToFlags:](DMTSharingDevice, "deviceIsPairedAccordingToFlags:", [v5 deviceFlags]);
  v11 = +[DMTSharingDevice devicePairingStateFromSFPairState:](DMTSharingDevice, "devicePairingStateFromSFPairState:", [v5 systemPairState]);
  v12 = [MEMORY[0x277CBEAA8] now];
  v15.receiver = self;
  v15.super_class = DMTSharingDevice;
  v13 = [(CATSharingDevice *)&v15 initWithIdentifier:v6 modelIdentifier:v7 RSSI:v9 paired:v10 pairingState:v11 detectionTime:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_sharingDevice, a3);
  }

  return v13;
}

+ (BOOL)deviceIsPairedAccordingToFlags:(unsigned int)a3
{
  v4 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DMTSharingDevice deviceIsPairedAccordingToFlags:a3];
  }

  v5 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v6 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v7 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v8 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v9 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v10 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v11 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v12 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v13 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v14 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v15 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v16 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v17 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v18 = _DMTLogGeneral_7();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  return (a3 >> 10) & 1;
}

+ (void)deviceIsPairedAccordingToFlags:(int)a1 .cold.1(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 == 0];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v2, v3, "SFDeviceFlagsNone: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsMyMe: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsFamily: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.4()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsFriend: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.5()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsMyiCloud: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.6()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsPeerMe: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.7()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsRangingCapable: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.8()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsSharedHome: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.9()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsAirDropUsable: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.10()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsResume: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.11()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsDeviceClose: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.12()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsPaired: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.13()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsShareAudio: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.14()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsTempPaired: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)deviceIsPairedAccordingToFlags:.cold.15()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsEveryoneMode: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)devicePairingStateFromSFPairState:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v2, v3, "Unknown pair state: %{public}@, Sharing has either violated their API contract or added new states.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end