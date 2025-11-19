@interface SystemApertureEmptyTrailingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
@end

@implementation SystemApertureEmptyTrailingView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 1.0;
  v4 = 1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = self;
  SystemApertureEmptyTrailingView.sizeThatFits(_:for:)();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end