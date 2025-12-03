@interface FollowingNotificationsSectionFooterView
- (_TtC7NewsUI239FollowingNotificationsSectionFooterView)initWithCoder:(id)coder;
- (_TtC7NewsUI239FollowingNotificationsSectionFooterView)initWithFrame:(CGRect)frame;
@end

@implementation FollowingNotificationsSectionFooterView

- (_TtC7NewsUI239FollowingNotificationsSectionFooterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI239FollowingNotificationsSectionFooterView_textLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(FollowingNotificationsSectionFooterView *)&v12 initWithFrame:x, y, width, height];
  [(FollowingNotificationsSectionFooterView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC7NewsUI239FollowingNotificationsSectionFooterView_textLabel)];
  return height;
}

- (_TtC7NewsUI239FollowingNotificationsSectionFooterView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI239FollowingNotificationsSectionFooterView_textLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end