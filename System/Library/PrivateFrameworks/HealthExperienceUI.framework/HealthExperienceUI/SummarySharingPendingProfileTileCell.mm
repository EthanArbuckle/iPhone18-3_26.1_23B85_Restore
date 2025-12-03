@interface SummarySharingPendingProfileTileCell
- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
- (void)viewPendingInvitation;
@end

@implementation SummarySharingPendingProfileTileCell

- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton) = 0;
  return sub_1BA191E80(0, 0);
}

- (_TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___pendingMessageLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingPendingProfileTileCell____lazy_storage___viewInvitationButton) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewPendingInvitation
{
  selfCopy = self;
  sub_1BA245410();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA245A68(change);
}

@end