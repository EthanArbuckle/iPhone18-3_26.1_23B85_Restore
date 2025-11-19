@interface IsInternalInstall
@end

@implementation IsInternalInstall

uint64_t ___IsInternalInstall_block_invoke()
{
  result = MGGetBoolAnswer();
  _IsInternalInstall___internalInstall = result;
  return result;
}

@end