@interface DismissibleBoldTitleHeaderView
- (id)accessibilityAccessoryLabel;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DismissibleBoldTitleHeaderView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA3D55B4(a3);
}

- (id)accessibilityAccessoryLabel
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

@end