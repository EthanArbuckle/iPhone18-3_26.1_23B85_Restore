@interface EMKTextContainerOverlayView
@end

@implementation EMKTextContainerOverlayView

uint64_t __52___EMKTextContainerOverlayView_prepareWithTextView___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _newFragmentViewForFragment:a2];
  v4 = [*(a1 + 32) fragmentViews];
  [v4 addObject:v3];

  [*(a1 + 32) addSubview:v3];
  return 1;
}

@end