@interface CoreRCXPCService(CECPrivate)
@end

@implementation CoreRCXPCService(CECPrivate)

- (uint64_t)fakeCreateCECBusAsync:()CECPrivate reply:.cold.2(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v2 = OUTLINED_FUNCTION_1_2();

  return v3(v2);
}

- (uint64_t)fakeRemoveCECBusAsync:()CECPrivate reply:.cold.2(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v2 = OUTLINED_FUNCTION_2_2();

  return v3(v2);
}

- (uint64_t)_fakeCreateRemoteCECDeviceAsync:()CECPrivate bus:logicalAddress:physicalAddress:reply:.cold.2(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
  *a1 = result;
  return result;
}

@end