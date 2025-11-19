@interface CoreRCXPCService(IR)
@end

@implementation CoreRCXPCService(IR)

- (uint64_t)_setOSDNameAsync:()IR forDevice:reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_setPairStateAsync:()IR forAppleRemote:reply:.cold.1(uint64_t a1, const char *a2)
{
  objc_opt_class();
  sel_getName(a2);
  return LogPrintF();
}

- (uint64_t)_setPairStateAsync:()IR forAppleRemote:reply:.cold.3(uint64_t *a1)
{
  v2 = *MEMORY[0x277CCA590];
  OUTLINED_FUNCTION_2_3();
  result = [v3 errorWithDomain:? code:? userInfo:?];
  *a1 = result;
  return result;
}

- (uint64_t)addDeviceOnBusAsync:()IR withType:matching:reply:.cold.1(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v2 = OUTLINED_FUNCTION_0_4();

  return v3(v2, 0);
}

- (uint64_t)updateMappingWithSessionOwningDeviceAsync:()IR forTargetDevice:reply:.cold.1(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v2 = OUTLINED_FUNCTION_0_4();

  return v3(v2, 0);
}

- (uint64_t)_addDeviceOnBusAsync:()IR withType:matching:withSessionOwningDevice:reply:.cold.1()
{
  v0 = *MEMORY[0x277CCA590];
  OUTLINED_FUNCTION_2_3();
  return [v1 errorWithDomain:? code:? userInfo:?];
}

- (uint64_t)_addDeviceOnBusAsync:()IR withType:matching:withSessionOwningDevice:reply:.cold.3()
{
  v0 = *MEMORY[0x277CCA590];
  OUTLINED_FUNCTION_2_3();
  return [v1 errorWithDomain:? code:? userInfo:?];
}

- (uint64_t)_deleteDeviceAsync:()IR fromBus:reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_sendCommandAsync:()IR fromDevice:reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_clearAllStoredCommandsFromDeviceAsync:()IR reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_setCommandAsync:()IR target:source:forButtonCombination:delay:reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_changeButtonCombinationAsync:()IR delay:enabled:forDevice:reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_startLearningCommandAsync:()IR withDevice:reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_endLearningWithDeviceAsync:()IR reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

- (uint64_t)_addMappingWithDeviceAsync:()IR withProtocolID:options:commandToMap:command:repeat:reply:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_4_2();
  return LogPrintF();
}

@end