@interface AppStoreContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation AppStoreContentView

- (CGSize)sizeThatFits:(CGSize)a3
{
  CGSizeMake(self, a2, a3, *&a3.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24DFC5D9C();
}

@end