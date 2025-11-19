@interface ScrubberButton
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport14ScrubberButton)initWithFrame:(CGRect)a3;
- (void)didTap:(id)a3;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation ScrubberButton

- (void)layoutSubviews
{
  v2 = self;
  sub_257D31E88();
}

- (void)didTap:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_257D32134();
}

- (_TtC16MagnifierSupport14ScrubberButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIImage)largeContentImage
{
  v2 = sub_257D14B7C();

  return v2;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_257D326C4(v4);

  return self & 1;
}

@end