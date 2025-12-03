@interface ProfileAvatarWithNameBelow
- (_TtC18HealthExperienceUI26ProfileAvatarWithNameBelow)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI26ProfileAvatarWithNameBelow)initWithFrame:(CGRect)frame;
@end

@implementation ProfileAvatarWithNameBelow

- (_TtC18HealthExperienceUI26ProfileAvatarWithNameBelow)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_iconView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_nameLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccountLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_avatar) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccount);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI26ProfileAvatarWithNameBelow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end