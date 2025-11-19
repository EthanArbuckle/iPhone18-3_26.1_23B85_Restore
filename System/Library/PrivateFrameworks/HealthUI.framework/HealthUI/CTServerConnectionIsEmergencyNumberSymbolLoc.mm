@interface CTServerConnectionIsEmergencyNumberSymbolLoc
@end

@implementation CTServerConnectionIsEmergencyNumberSymbolLoc

void *__get_CTServerConnectionIsEmergencyNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "_CTServerConnectionIsEmergencyNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_CTServerConnectionIsEmergencyNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end