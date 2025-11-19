@interface SummarySharingPendingProfileTileCell
- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewPendingInvitation;
@end

@implementation SummarySharingPendingProfileTileCell

- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithFrame:(CGRect)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton) = 0;
  return sub_1BA191E80(0, 0);
}

- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewPendingInvitation
{
  v2 = self;
  sub_1BA245410();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA245A68(a3);
}

@end