@interface BKUIHostedJindoPresentableAccessoryView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
@end

@implementation BKUIHostedJindoPresentableAccessoryView

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = 60.0;
  v5 = 20.0;
  result.height = v5;
  result.width = v4;
  return result;
}

@end