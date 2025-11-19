@interface CSAddParticipantsServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (_TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setAddressingViewModel:(id)a3;
- (void)setCollaborationOptionsGroups:(id)a3;
- (void)setContainerSetupInfo:(id)a3;
- (void)setSandboxingURLWrapper:(id)a3;
- (void)setShare:(id)a3;
- (void)userDidSelectContact:(id)a3 contactProperty:(id)a4;
@end

@implementation CSAddParticipantsServiceViewController

+ (id)_remoteViewControllerInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___CSAddParticipantsViewControllerHost];

  return v2;
}

+ (id)_exportedInterface
{
  v2 = sub_10006D530();

  return v2;
}

- (_TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10007B19C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100069E44(v5, v7, a4);
}

- (void)userDidSelectContact:(id)a3 contactProperty:(id)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory);
  if (v4)
  {
    v7 = a3;
    v8 = a4;
    v10 = self;
    v9 = v4;
    sub_10007ACBC();
  }
}

- (void)setShare:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006A2D4(v4);
}

- (void)setCollaborationOptionsGroups:(id)a3
{
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
  v4 = sub_10007B2AC();
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups) = v4;
}

- (void)setAddressingViewModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006A480(v4);
}

- (void)setSandboxingURLWrapper:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10006B9D4(v4);
}

- (void)setContainerSetupInfo:(id)a3
{
  v5 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo) = a3;
  v10 = a3;
  v11 = self;

  v12 = sub_10007AC4C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = v11;
  sub_100018054(v8, a3, sub_10006C614, v13);

  sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
}

@end