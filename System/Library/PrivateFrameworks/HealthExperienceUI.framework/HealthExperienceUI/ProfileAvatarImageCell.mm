@interface ProfileAvatarImageCell
- (_TtC18HealthExperienceUI22ProfileAvatarImageCell)initWithFrame:(CGRect)frame;
@end

@implementation ProfileAvatarImageCell

- (_TtC18HealthExperienceUI22ProfileAvatarImageCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint) = 0;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView) = sub_1BA112B14();
  v13.receiver = self;
  v13.super_class = type metadata accessor for ProfileAvatarImageCell();
  height = [(ProfileAvatarImageCell *)&v13 initWithFrame:x, y, width, height];
  v10 = *((*MEMORY[0x1E69E7D40] & height->super.super.super.super.super.isa) + 0xC8);
  v11 = height;
  v10();

  return v11;
}

@end