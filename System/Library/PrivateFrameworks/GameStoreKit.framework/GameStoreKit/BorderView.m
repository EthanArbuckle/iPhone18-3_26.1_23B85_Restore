@interface BorderView
- (UIColor)backgroundColor;
- (_TtC12GameStoreKit10BorderView)initWithCoder:(id)a3;
- (_TtC12GameStoreKit10BorderView)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setClipsToBounds:(BOOL)a3;
@end

@implementation BorderView

- (_TtC12GameStoreKit10BorderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = [(BorderView *)&v9 initWithFrame:x, y, width, height];
  [(BorderView *)v7 setUserInteractionEnabled:0];
  return v7;
}

- (_TtC12GameStoreKit10BorderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(BorderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (UIColor)backgroundColor
{
  v2 = [objc_opt_self() clearColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_24F2B8880();
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = self;
  _s12GameStoreKit10BorderViewC13clipsToBoundsSbvs_0();
}

@end