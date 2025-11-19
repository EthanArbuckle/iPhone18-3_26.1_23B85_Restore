@interface TranscriptNavigationBarOrnamentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setConversationTitle:(id)a3;
@end

@implementation TranscriptNavigationBarOrnamentView

- (void)setConversationTitle:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1909FB584(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width == 0.0 && a3.height == 0.0)
  {
    v6 = objc_opt_self();
    v7 = self;
    v8 = [v6 mainScreen];
    [v8 bounds];
    width = v9;
    height = v10;
  }

  else
  {
    v11 = self;
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
  v2 = self;
  sub_1909F9E5C();
}

@end