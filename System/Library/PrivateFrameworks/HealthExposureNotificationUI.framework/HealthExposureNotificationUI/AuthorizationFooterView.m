@interface AuthorizationFooterView
- (void)didTapPrimaryButton;
- (void)didTapSecondaryButton;
@end

@implementation AuthorizationFooterView

- (void)didTapPrimaryButton
{
  v3 = self + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)didTapSecondaryButton
{
  v3 = self + OBJC_IVAR____TtC28HealthExposureNotificationUI23AuthorizationFooterView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    v7 = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end