@interface AppStoreContentPlatterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)addSubview:(id)subview;
- (void)layoutSubviews;
@end

@implementation AppStoreContentPlatterView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_24E24450C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E244830();
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  sub_24E244EF0(subviewCopy);
}

@end