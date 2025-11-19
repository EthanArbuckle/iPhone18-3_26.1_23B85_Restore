@interface DisplaySetLogicalBrightnessInternal
@end

@implementation DisplaySetLogicalBrightnessInternal

void ____DisplaySetLogicalBrightnessInternal_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if (*(a1 + 48))
    {
      (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"BacklightPowerNits", *(a1 + 40));
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"BacklightPowerMilliWatts", *(a1 + 40));
    }
  }

  CFRelease(*(a1 + 40));
}

@end