@interface MediaControlsModuleRouteButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)updateContentSizeCategory;
@end

@implementation MediaControlsModuleRouteButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_1A2127F6C();
}

- (void)updateContentSizeCategory
{
  selfCopy = self;
  sub_1A2241B30();
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  sub_1A2115288(0, &qword_1EB088D28);
  selfCopy = self;
  [(MediaControlsModuleRouteButton *)selfCopy bounds];
  v7 = sub_1A22E6AB8();

  return v7;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1A22423BC();

  return v9;
}

@end