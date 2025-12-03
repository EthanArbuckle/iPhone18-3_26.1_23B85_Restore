@interface CSAddParticipantsServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (_TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setAddressingViewModel:(id)model;
- (void)setCollaborationOptionsGroups:(id)groups;
- (void)setContainerSetupInfo:(id)info;
- (void)setSandboxingURLWrapper:(id)wrapper;
- (void)setShare:(id)share;
- (void)userDidSelectContact:(id)contact contactProperty:(id)property;
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

- (_TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10007B19C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100069E44(v5, v7, bundle);
}

- (void)userDidSelectContact:(id)contact contactProperty:(id)property
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory);
  if (v4)
  {
    contactCopy = contact;
    propertyCopy = property;
    selfCopy = self;
    v9 = v4;
    sub_10007ACBC();
  }
}

- (void)setShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  sub_10006A2D4(shareCopy);
}

- (void)setCollaborationOptionsGroups:(id)groups
{
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);
  v4 = sub_10007B2AC();
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups) = v4;
}

- (void)setAddressingViewModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_10006A480(modelCopy);
}

- (void)setSandboxingURLWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  sub_10006B9D4(wrapperCopy);
}

- (void)setContainerSetupInfo:(id)info
{
  v5 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo) = info;
  infoCopy = info;
  selfCopy = self;

  v12 = sub_10007AC4C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = selfCopy;
  v14 = selfCopy;
  sub_100018054(v8, info, sub_10006C614, v13);

  sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
}

@end