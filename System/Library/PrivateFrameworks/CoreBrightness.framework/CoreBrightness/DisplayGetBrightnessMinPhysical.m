@interface DisplayGetBrightnessMinPhysical
@end

@implementation DisplayGetBrightnessMinPhysical

float ___DisplayGetBrightnessMinPhysical_block_invoke(uint64_t a1)
{
  if (getClientOverrideState(*(a1 + 40), 1) && *(*(a1 + 40) + 968) == *(*(a1 + 40) + 396))
  {
    result = *(*(a1 + 40) + 1532);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  else
  {
    result = *(*(a1 + 40) + 396);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end