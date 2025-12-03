@interface DebugFormatBezelView
- (_TtC8NewsFeed20DebugFormatBezelView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation DebugFormatBezelView

- (_TtC8NewsFeed20DebugFormatBezelView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_scale) = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_bezelLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v5 = OBJC_IVAR____TtC8NewsFeed20DebugFormatBezelView_layerDelegate;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for DebugFormatBezelView.NonAnimatingLayerDelegate()) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D68225D8();
}

@end