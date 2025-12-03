@interface ScrubberButton
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport14ScrubberButton)initWithFrame:(CGRect)frame;
- (void)didTap:(id)tap;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation ScrubberButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257D31E88();
}

- (void)didTap:(id)tap
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport14ScrubberButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_257D32134();
}

- (_TtC16MagnifierSupport14ScrubberButton)initWithFrame:(CGRect)frame
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_257D326C4(beginCopy);

  return self & 1;
}

@end