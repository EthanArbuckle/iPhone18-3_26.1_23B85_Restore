@interface MRServiceClientRemoteCommandVerifyOptions
@end

@implementation MRServiceClientRemoteCommandVerifyOptions

uint64_t ___MRServiceClientRemoteCommandVerifyOptions_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) mr_isCommandSupportedAndEnabled:*(a1 + 40)])
  {
    return 1;
  }

  result = [MRCommandInfo isCommandActuallySupportedEvenWhenDisabled:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 mr_isCommandSupported:v4];
  }

  return result;
}

@end