@interface CLKUIBlinkingTimeLabelManager
@end

@implementation CLKUIBlinkingTimeLabelManager

void __48___CLKUIBlinkingTimeLabelManager__startBlinking__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBlinkerAlphaForSecondFraction:*(a3 + 32)];
}

id __48___CLKUIBlinkingTimeLabelManager__startBlinking__block_invoke_139(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _IdentifyingInfoForView(WeakRetained);

  return v2;
}

@end