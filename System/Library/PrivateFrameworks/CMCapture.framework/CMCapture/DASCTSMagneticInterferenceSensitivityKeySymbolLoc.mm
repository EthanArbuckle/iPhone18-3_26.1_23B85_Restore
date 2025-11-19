@interface DASCTSMagneticInterferenceSensitivityKeySymbolLoc
@end

@implementation DASCTSMagneticInterferenceSensitivityKeySymbolLoc

void *__get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DuetActivitySchedulerLibrary();
  result = dlsym(v2, "_DASCTSMagneticInterferenceSensitivityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_DASCTSMagneticInterferenceSensitivityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end