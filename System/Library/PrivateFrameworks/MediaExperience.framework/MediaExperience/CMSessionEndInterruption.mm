@interface CMSessionEndInterruption
@end

@implementation CMSessionEndInterruption

uint64_t __CMSessionEndInterruption_WithInterruptionNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  result = MXCoreSessionEndInterruption_WithSecTaskAndStatus(v3, 0, *(a1 + 48), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end