@interface BSUIEmojiLabelView(MRUVisualStylingProviderAdditions)
- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:;
@end

@implementation BSUIEmojiLabelView(MRUVisualStylingProviderAdditions)

- (void)mru_applyVisualStylingWithColor:()MRUVisualStylingProviderAdditions alpha:blendMode:
{
  v8 = a4;
  v9 = [a1 contentLabel];
  [v9 mru_applyVisualStylingWithColor:v8 alpha:a5 blendMode:a2];
}

@end