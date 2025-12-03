@interface BSUIEmojiLabelView(MRUVisualStylingProviderAdditions)
- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:;
@end

@implementation BSUIEmojiLabelView(MRUVisualStylingProviderAdditions)

- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:
{
  v8 = a4;
  contentLabel = [self contentLabel];
  [contentLabel mru_applyVisualStylingWithColor:v8 alpha:a5 blendMode:a2];
}

@end