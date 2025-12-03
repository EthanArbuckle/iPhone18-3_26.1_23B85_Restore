@interface TranscriptNavigationBarOrnamentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setConversationTitle:(id)title;
@end

@implementation TranscriptNavigationBarOrnamentView

- (void)setConversationTitle:(id)title
{
  titleCopy = title;
  selfCopy = self;
  sub_1909FB584(title);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (fits.width == 0.0 && fits.height == 0.0)
  {
    v6 = objc_opt_self();
    selfCopy = self;
    mainScreen = [v6 mainScreen];
    [mainScreen bounds];
    width = v9;
    height = v10;
  }

  else
  {
    selfCopy2 = self;
  }

  sub_1909FA074(v18);
  sub_190A1E064(width, height);
  v13 = v12;
  v15 = v14;
  sub_1909FB530(v18);

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1909F9E5C();
}

@end