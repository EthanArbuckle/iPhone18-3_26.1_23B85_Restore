@interface CPSNameStackView
- (CGSize)intrinsicContentSize;
@end

@implementation CPSNameStackView

- (CGSize)intrinsicContentSize
{
  v10 = self;
  v9 = a2;
  v11 = 0.0;
  v12 = 0.0;
  v8.receiver = self;
  v8.super_class = CPSNameStackView;
  [(CPSNameStackView *)&v8 intrinsicContentSize];
  v11 = v2;
  v12 = v3;
  [(CPSNameStackView *)v10 fittingWidth];
  if (v4 > 0.0)
  {
    [(CPSNameStackView *)v10 fittingWidth];
    v11 = v5;
  }

  v6 = v11;
  v7 = v12;
  result.height = v7;
  result.width = v6;
  return result;
}

@end