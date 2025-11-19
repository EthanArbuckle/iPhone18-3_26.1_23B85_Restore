@interface ImageWell
- (NSString)accessibilityLabel;
- (NSString)largeContentTitle;
- (UIImage)largeContentImage;
@end

@implementation ImageWell

- (NSString)largeContentTitle
{
  v2 = self;
  sub_257E563DC();

  v3 = sub_257ECF4C0();

  return v3;
}

- (UIImage)largeContentImage
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_257E5755C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end