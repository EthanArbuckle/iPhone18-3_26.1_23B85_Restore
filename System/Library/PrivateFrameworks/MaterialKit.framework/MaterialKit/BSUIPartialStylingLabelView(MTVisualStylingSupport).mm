@interface BSUIPartialStylingLabelView(MTVisualStylingSupport)
- (void)mt_applyVisualStyling:()MTVisualStylingSupport;
- (void)mt_removeAllVisualStyling;
@end

@implementation BSUIPartialStylingLabelView(MTVisualStylingSupport)

- (void)mt_applyVisualStyling:()MTVisualStylingSupport
{
  v4 = a3;
  contentLabel = [self contentLabel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__BSUIPartialStylingLabelView_MTVisualStylingSupport__mt_applyVisualStyling___block_invoke;
  v6[3] = &unk_27835D4F0;
  v6[4] = self;
  [v4 applyToView:contentLabel withColorBlock:v6];
}

- (void)mt_removeAllVisualStyling
{
  contentLabel = [self contentLabel];
  [contentLabel mt_removeAllVisualStyling];
}

@end