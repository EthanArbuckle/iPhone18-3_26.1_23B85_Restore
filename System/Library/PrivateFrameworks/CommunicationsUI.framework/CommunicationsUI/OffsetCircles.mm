@interface OffsetCircles
- (CGSize)intrinsicContentSize;
- (_TtC16CommunicationsUI13OffsetCircles)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI13OffsetCircles)initWithFrame:(CGRect)frame;
@end

@implementation OffsetCircles

- (_TtC16CommunicationsUI13OffsetCircles)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_imageCount) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_imageCount);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_interCircleSpacing);
    v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_iconSize);
    v7 = v5 + *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI13OffsetCircles_offset) * v4 + v6;
    v8 = v5 + v6;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC16CommunicationsUI13OffsetCircles)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end