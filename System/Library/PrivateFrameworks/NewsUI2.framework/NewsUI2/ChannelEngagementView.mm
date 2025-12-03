@interface ChannelEngagementView
- (_TtC7NewsUI221ChannelEngagementView)initWithCoder:(id)coder;
- (_TtC7NewsUI221ChannelEngagementView)initWithFrame:(CGRect)frame;
@end

@implementation ChannelEngagementView

- (_TtC7NewsUI221ChannelEngagementView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI221ChannelEngagementView_token;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(ChannelEngagementView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC7NewsUI221ChannelEngagementView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI221ChannelEngagementView_token;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end