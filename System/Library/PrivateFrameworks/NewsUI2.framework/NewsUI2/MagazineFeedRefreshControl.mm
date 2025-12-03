@interface MagazineFeedRefreshControl
- (_TtC7NewsUI226MagazineFeedRefreshControl)init;
- (_TtC7NewsUI226MagazineFeedRefreshControl)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation MagazineFeedRefreshControl

- (_TtC7NewsUI226MagazineFeedRefreshControl)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI226MagazineFeedRefreshControl_messageLabel;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_218ACCD4C();
}

- (_TtC7NewsUI226MagazineFeedRefreshControl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end