@interface _UIPreferredContentSizeRelayingNavigationController
- (CGSize)preferredContentSize;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithCoder:(id)coder;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithRootViewController:(id)controller;
- (void)setPreferredContentSize:(CGSize)size;
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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_100006DFC(width, height);
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
  v8 = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(_UIPreferredContentSizeRelayingNavigationController *)&v10 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithRootViewController:(id)controller
{
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
  v6 = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(_UIPreferredContentSizeRelayingNavigationController *)&v8 initWithRootViewController:controller];
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000C6D84();
    v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
    *v6 = 0;
    v6[1] = 0;
    bundleCopy = bundle;
    v8 = sub_1000C6D44();
  }

  else
  {
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  v11 = [(_UIPreferredContentSizeRelayingNavigationController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing51_UIPreferredContentSizeRelayingNavigationController_preferredContentSizeDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UIPreferredContentSizeRelayingNavigationController();
  coderCopy = coder;
  v6 = [(_UIPreferredContentSizeRelayingNavigationController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end