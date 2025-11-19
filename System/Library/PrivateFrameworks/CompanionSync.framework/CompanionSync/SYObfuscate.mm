@interface SYObfuscate
@end

@implementation SYObfuscate

uint64_t ___SYObfuscate_block_invoke()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    _SYObfuscate___shouldObfuscate = 1;
  }

  return result;
}

@end