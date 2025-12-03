@interface PaddingLabel
- (CGSize)intrinsicContentSize;
- (_TtC16MagnifierSupport12PaddingLabel)initWithFrame:(CGRect)frame;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation PaddingLabel

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_257E55F30(x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_257E56084();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC16MagnifierSupport12PaddingLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_topInset) = 0x4014000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_bottomInset) = 0x4014000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_leftInset) = 0x4014000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_rightInset) = 0x4014000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PaddingLabel();
  return [(PaddingLabel *)&v8 initWithFrame:x, y, width, height];
}

@end