@interface MediaControlsModuleRouteButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)updateContentSizeCategory;
@end

@implementation MediaControlsModuleRouteButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1A2122728(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A2127F6C();
}

- (void)updateContentSizeCategory
{
  v2 = self;
  sub_1A2241B30();
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  sub_1A2115288(0, &qword_1EB088D28);
  v6 = self;
  [(MediaControlsModuleRouteButton *)v6 bounds];
  v7 = sub_1A22E6AB8();

  return v7;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1A22423BC();

  return v9;
}

@end