@interface DismissibleBoldTitleHeaderView
- (id)accessibilityAccessoryLabel;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DismissibleBoldTitleHeaderView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA3D55B4(change);
}

- (id)accessibilityAccessoryLabel
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

@end