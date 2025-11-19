@interface PDRDevice
@end

@implementation PDRDevice

uint64_t __50__PDRDevice_Configuration__isRunningInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  isRunningInternalBuild_isInternalBuild = result;
  return result;
}

@end