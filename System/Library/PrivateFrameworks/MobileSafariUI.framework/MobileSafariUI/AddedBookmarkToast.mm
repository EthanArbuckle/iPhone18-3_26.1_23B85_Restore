@interface AddedBookmarkToast
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC14MobileSafariUI18AddedBookmarkToast)initWithFrame:(CGRect)frame;
- (void)didTapToast;
@end

@implementation AddedBookmarkToast

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_215A0868C(0.0, 0.0);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_215A0868C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didTapToast
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_onTapHandler);
  selfCopy = self;
  v2();
}

- (_TtC14MobileSafariUI18AddedBookmarkToast)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end