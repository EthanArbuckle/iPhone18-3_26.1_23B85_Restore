@interface AppStoreContentPlatterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)addSubview:(id)a3;
- (void)layoutSubviews;
@end

@implementation AppStoreContentPlatterView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_24E244830();
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E244EF0(v4);
}

@end