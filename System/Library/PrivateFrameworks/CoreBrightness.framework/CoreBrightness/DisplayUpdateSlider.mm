@interface DisplayUpdateSlider
@end

@implementation DisplayUpdateSlider

void ____DisplayUpdateSlider_block_invoke_914(uint64_t a1)
{
  __DisplaySetBLDriverProperty(*(a1 + 32), @"DisplayBrightness", *(a1 + 40));
  if (*(*(a1 + 32) + 16))
  {
    (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"DisplayBrightness", *(a1 + 40));
  }

  CFRelease(*(a1 + 40));
  *(*(a1 + 32) + 272) = 0;
}

void ____DisplayUpdateSlider_block_invoke(uint64_t a1)
{
  __DisplaySetBLDriverProperty(*(a1 + 32), @"DisplayBrightness", *(a1 + 40));
  if (*(*(a1 + 32) + 16))
  {
    (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"DisplayBrightness", *(a1 + 40));
  }

  CFRelease(*(a1 + 40));
  *(*(a1 + 32) + 272) = 0;
}

void ____DisplayUpdateSlider_block_invoke_912(uint64_t a1)
{
  __DisplaySetBLDriverProperty(*(a1 + 32), @"DisplayBrightness", *(a1 + 40));
  if (*(*(a1 + 32) + 16))
  {
    (*(*(a1 + 32) + 16))(*(*(a1 + 32) + 24), @"DisplayBrightness", *(a1 + 40));
  }

  CFRelease(*(a1 + 40));
  *(*(a1 + 32) + 272) = 0;
}

@end