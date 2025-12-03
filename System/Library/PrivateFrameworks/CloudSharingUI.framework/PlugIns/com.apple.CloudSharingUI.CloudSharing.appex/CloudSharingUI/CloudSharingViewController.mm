@interface CloudSharingViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (void)_prepareForDisplayWithCompletion:(id)completion;
- (void)_setAppName:(id)name;
- (void)_setAvailablePermissions:(unint64_t)permissions;
- (void)_setCloudKitContainerSetupInfo:(id)info;
- (void)_setCloudKitShare:(id)share containerID:(id)d;
- (void)_setCloudKitThumbnail:(id)thumbnail title:(id)title type:(id)type;
- (void)_setParticipantDetails:(id)details;
- (void)_setSandboxingURLWrapper:(id)wrapper;
- (void)_setShowAddPeople:(BOOL)people;
- (void)_setThumbnail:(id)thumbnail;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CloudSharingViewController

+ (id)_exportedInterface
{
  v2 = sub_1000102A8();

  return v2;
}

+ (id)_remoteViewControllerInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____UIShareInvitationViewControllerHost];

  return v2;
}

- (void)didMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  controllerCopy = controller;
  [(CloudSharingViewController *)&v7 didMoveToParentViewController:controllerCopy];
  v6 = sub_1000077D8();
  if (v6)
  {
    [v6 _requestContentSize:{375.0, 636.0, v7.receiver, v7.super_class}];
    swift_unknownObjectRelease();
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000794C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100007FA4(appear);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_10000816C();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(CloudSharingViewController *)&v5 dealloc];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v7.receiver;
  [(CloudSharingViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:container];
  v5 = sub_1000077D8();
  if (v5)
  {
    v6 = v5;
    [container preferredContentSize];
    [v6 _requestContentSize:?];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

- (void)_setAppName:(id)name
{
  v4 = sub_1000C6D84();
  v5 = (self + OBJC_IVAR___CloudSharingViewController_appName);
  v6 = *&self->itemUTI[OBJC_IVAR___CloudSharingViewController_appName];
  *v5 = v4;
  v5[1] = v7;
}

- (void)_setSandboxingURLWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  sub_100009B1C(wrapperCopy);
}

- (void)_prepareForDisplayWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    selfCopy = self;
    _Block_copy(v5);
    [(CloudSharingViewController *)selfCopy preferredContentSize];
    v5[2](v5);

    _Block_release(v5);

    _Block_release(v5);
  }
}

- (void)_setCloudKitShare:(id)share containerID:(id)d
{
  shareCopy = share;
  dCopy = d;
  selfCopy = self;
  sub_10000A580(share, d);
}

- (void)_setAvailablePermissions:(unint64_t)permissions
{
  selfCopy = self;
  sub_10000A960(permissions);
}

- (void)_setCloudKitThumbnail:(id)thumbnail title:(id)title type:(id)type
{
  thumbnailCopy = thumbnail;
  if (thumbnail)
  {
    titleCopy = title;
    typeCopy = type;
    selfCopy = self;
    v11 = thumbnailCopy;
    thumbnailCopy = sub_1000C5DA4();
    v13 = v12;

    if (title)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    v16 = 0;
    if (type)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  titleCopy2 = title;
  typeCopy2 = type;
  selfCopy2 = self;
  v13 = 0xF000000000000000;
  if (!title)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1000C6D84();
  v16 = v15;

  if (type)
  {
LABEL_4:
    v17 = sub_1000C6D84();
    v19 = v18;

    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
  v19 = 0;
LABEL_8:
  sub_10000ACB8(thumbnailCopy, v13, v14, v16, v17, v19);

  sub_100010114(thumbnailCopy, v13);
}

- (void)_setCloudKitContainerSetupInfo:(id)info
{
  if (info)
  {
    v4 = (*(&self->super.super.super.isa + OBJC_IVAR___CloudSharingViewController_model))[3];
    swift_getKeyPath();
    swift_getKeyPath();

    infoCopy = info;
    sub_1000C60A4();
  }
}

- (void)_setThumbnail:(id)thumbnail
{
  if (thumbnail)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR___CloudSharingViewController_model);
    swift_getKeyPath();
    swift_getKeyPath();
    thumbnailCopy = thumbnail;

    sub_1000C60A4();
  }
}

- (void)_setShowAddPeople:(BOOL)people
{
  if (people)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR___CloudSharingViewController_model);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
  }
}

- (void)_setParticipantDetails:(id)details
{
  if (details)
  {
    sub_100010778(0, &unk_100116280, _UIShareParticipantDetails_ptr);
    sub_1000C6CE4();
    v4 = *(&self->super.super.super.isa + OBJC_IVAR___CloudSharingViewController_model);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
  }
}

@end