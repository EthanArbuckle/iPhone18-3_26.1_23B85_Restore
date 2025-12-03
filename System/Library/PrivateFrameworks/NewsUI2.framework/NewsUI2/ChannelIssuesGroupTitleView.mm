@interface ChannelIssuesGroupTitleView
- (_TtC7NewsUI227ChannelIssuesGroupTitleView)initWithCoder:(id)coder;
- (_TtC7NewsUI227ChannelIssuesGroupTitleView)initWithFrame:(CGRect)frame;
@end

@implementation ChannelIssuesGroupTitleView

- (_TtC7NewsUI227ChannelIssuesGroupTitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesGroupTitleView_titleLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15.receiver = self;
  v15.super_class = ObjectType;
  height = [(ChannelIssuesGroupTitleView *)&v15 initWithFrame:x, y, width, height];
  v11 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesGroupTitleView_titleLabel;
  v12 = *(&height->super.super.super.isa + OBJC_IVAR____TtC7NewsUI227ChannelIssuesGroupTitleView_titleLabel);
  v13 = height;
  [(ChannelIssuesGroupTitleView *)v13 addSubview:v12];
  [*(&height->super.super.super.isa + v11) setNumberOfLines_];

  return v13;
}

- (_TtC7NewsUI227ChannelIssuesGroupTitleView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesGroupTitleView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end