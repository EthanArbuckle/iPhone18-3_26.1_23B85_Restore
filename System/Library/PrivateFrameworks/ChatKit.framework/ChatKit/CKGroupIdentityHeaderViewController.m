@interface CKGroupIdentityHeaderViewController
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithCoder:(id)a3;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4 avatarViewControllerSettings:(id)a5;
- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  return [(CNGroupIdentityHeaderViewController *)&v6 initWithGroupIdentity:a3];
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  return [(CNGroupIdentityHeaderViewController *)&v8 initWithGroupIdentity:a3 actionsViewConfiguration:a4];
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4 avatarViewControllerSettings:(id)a5
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  return [(CNGroupIdentityHeaderViewController *)&v10 initWithGroupIdentity:a3 actionsViewConfiguration:a4 avatarViewControllerSettings:a5];
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_190D56F10();
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = sub_190D56ED0();
  }

  else
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  v9 = [(CKGroupIdentityHeaderViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC7ChatKit35CKGroupIdentityHeaderViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKGroupIdentityHeaderViewController();
  v5 = a3;
  v6 = [(CKGroupIdentityHeaderViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end