@interface _UIPreferredContentSizeRelayingNavigationController
- (CGSize)preferredContentSize;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithCoder:(id)a3;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithRootViewController:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation _UIPreferredContentSizeRelayingNavigationController

- (CGSize)preferredContentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  [(_UIPreferredContentSizeRelayingNavigationController *)&v4 preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_100006DFC(width, height);
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
  v8 = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(_UIPreferredContentSizeRelayingNavigationController *)&v10 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithRootViewController:(id)a3
{
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
  v6 = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(_UIPreferredContentSizeRelayingNavigationController *)&v8 initWithRootViewController:a3];
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000C6D84();
    v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
    *v6 = 0;
    v6[1] = 0;
    v7 = a4;
    v8 = sub_1000C6D44();
  }

  else
  {
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
    *v9 = 0;
    v9[1] = 0;
    v10 = a4;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  v11 = [(_UIPreferredContentSizeRelayingNavigationController *)&v13 initWithNibName:v8 bundle:a4];

  return v11;
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  v5 = a3;
  v6 = [(_UIPreferredContentSizeRelayingNavigationController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end