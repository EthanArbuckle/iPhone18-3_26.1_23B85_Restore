@interface CoreRCXPCService(CEC)
@end

@implementation CoreRCXPCService(CEC)

- (uint64_t)_performDeckControlSetDeckStatusAsync:()CEC forDevice:allowRemoteDevice:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  CoreCECDeckInfoString(a2);
  return LogPrintF();
}

- (uint64_t)_performDeckControlSetDeckStatusAsync:()CEC forDevice:allowRemoteDevice:reply:.cold.2(uint64_t *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)queryLocalInstanceAsync:()CEC bus:reply:.cold.1(uint64_t a1, const char *a2)
{
  v3 = OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v4 = *(a1 + 16);

  return v4(a1, 0, v3);
}

- (uint64_t)cecDevice:()CEC requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  CoreCECActivationStatusString(a2);
  return LogPrintF();
}

- (uint64_t)cecDevice:()CEC requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  CoreCECActivationStatusString(a2);
  return LogPrintF();
}

@end