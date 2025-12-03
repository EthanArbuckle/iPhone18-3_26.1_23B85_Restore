@interface SystemApertureEmptyTrailingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
@end

@implementation SystemApertureEmptyTrailingView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 1.0;
  v4 = 1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  selfCopy = self;
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