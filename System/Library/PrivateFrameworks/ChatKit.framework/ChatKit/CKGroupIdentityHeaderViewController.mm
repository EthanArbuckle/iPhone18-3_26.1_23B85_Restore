@interface CKGroupIdentityHeaderViewController
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithCoder:(id)coder;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration avatarViewControllerSettings:(id)settings;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
@end

@implementation CKGroupIdentityHeaderViewController

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  v2 = v3.receiver;
  [(CNGroupIdentityHeaderViewController *)&v3 viewDidLayoutSubviews];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_190AF2C50(v2);
    swift_unknownObjectRelease();
  }
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  return [(CNGroupIdentityHeaderViewController *)&v6 initWithGroupIdentity:identity];
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  return [(CNGroupIdentityHeaderViewController *)&v8 initWithGroupIdentity:identity actionsViewConfiguration:configuration];
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration avatarViewControllerSettings:(id)settings
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  return [(CNGroupIdentityHeaderViewController *)&v10 initWithGroupIdentity:identity actionsViewConfiguration:configuration avatarViewControllerSettings:settings];
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_190D56F10();
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = sub_190D56ED0();
  }

  else
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  v9 = [(CKGroupIdentityHeaderViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  coderCopy = coder;
  v6 = [(CKGroupIdentityHeaderViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end