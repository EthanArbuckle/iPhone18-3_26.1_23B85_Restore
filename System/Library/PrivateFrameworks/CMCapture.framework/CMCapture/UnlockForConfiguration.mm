@interface UnlockForConfiguration
@end

@implementation UnlockForConfiguration

uint64_t __captureSource_UnlockForConfiguration_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(a2 + 64) = v4;
  }

  return 0;
}

@end