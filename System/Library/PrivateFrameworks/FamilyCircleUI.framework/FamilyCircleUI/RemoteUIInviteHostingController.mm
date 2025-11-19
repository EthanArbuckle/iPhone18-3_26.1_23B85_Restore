@interface RemoteUIInviteHostingController
- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithCoder:(id)a3;
- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation RemoteUIInviteHostingController

- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_21BE28A0C();
    v6 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode);
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    v7 = a4;
    v8 = sub_21BE289CC();
  }

  else
  {
    v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode);
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v10 = a4;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for RemoteUIInviteHostingController();
  v11 = [(HelpfulRemoteUiHostingVC *)&v13 initWithNibName:v8 bundle:a4];

  return v11;
}

- (_TtC14FamilyCircleUI31RemoteUIInviteHostingController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI31RemoteUIInviteHostingController_inviteCode);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RemoteUIInviteHostingController();
  v5 = a3;
  v6 = [(HelpfulRemoteUiHostingVC *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end