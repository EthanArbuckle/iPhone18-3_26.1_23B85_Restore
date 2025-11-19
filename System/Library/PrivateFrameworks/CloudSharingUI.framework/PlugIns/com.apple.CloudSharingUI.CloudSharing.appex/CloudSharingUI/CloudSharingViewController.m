@interface CloudSharingViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (void)_prepareForDisplayWithCompletion:(id)a3;
- (void)_setAppName:(id)a3;
- (void)_setAvailablePermissions:(unint64_t)a3;
- (void)_setCloudKitContainerSetupInfo:(id)a3;
- (void)_setCloudKitShare:(id)a3 containerID:(id)a4;
- (void)_setCloudKitThumbnail:(id)a3 title:(id)a4 type:(id)a5;
- (void)_setParticipantDetails:(id)a3;
- (void)_setSandboxingURLWrapper:(id)a3;
- (void)_setShowAddPeople:(BOOL)a3;
- (void)_setThumbnail:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)didMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  v5 = a3;
  [(CloudSharingViewController *)&v7 didMoveToParentViewController:v5];
  v6 = sub_1000077D8();
  if (v6)
  {
    [v6 _requestContentSize:{375.0, 636.0, v7.receiver, v7.super_class}];
    swift_unknownObjectRelease();
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10000794C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100007FA4(a3);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_10000816C();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(CloudSharingViewController *)&v5 dealloc];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v7.receiver;
  [(CloudSharingViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:a3];
  v5 = sub_1000077D8();
  if (v5)
  {
    v6 = v5;
    [a3 preferredContentSize];
    [v6 _requestContentSize:?];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

- (void)_setAppName:(id)a3
{
  v4 = sub_1000C6D84();
  v5 = (self + OBJC_IVAR___CloudSharingViewController_appName);
  v6 = *&self->itemUTI[OBJC_IVAR___CloudSharingViewController_appName];
  *v5 = v4;
  v5[1] = v7;
}

- (void)_setSandboxingURLWrapper:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009B1C(v4);
}

- (void)_prepareForDisplayWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = self;
    _Block_copy(v5);
    [(CloudSharingViewController *)v6 preferredContentSize];
    v5[2](v5);

    _Block_release(v5);

    _Block_release(v5);
  }
}

- (void)_setCloudKitShare:(id)a3 containerID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10000A580(a3, a4);
}

- (void)_setAvailablePermissions:(unint64_t)a3
{
  v4 = self;
  sub_10000A960(a3);
}

- (void)_setCloudKitThumbnail:(id)a3 title:(id)a4 type:(id)a5
{
  v7 = a3;
  if (a3)
  {
    v8 = a4;
    v9 = a5;
    v10 = self;
    v11 = v7;
    v7 = sub_1000C5DA4();
    v13 = v12;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    v16 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v20 = a4;
  v21 = a5;
  v22 = self;
  v13 = 0xF000000000000000;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_1000C6D84();
  v16 = v15;

  if (a5)
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
  sub_10000ACB8(v7, v13, v14, v16, v17, v19);

  sub_100010114(v7, v13);
}

- (void)_setCloudKitContainerSetupInfo:(id)a3
{
  if (a3)
  {
    v4 = (*(&self->super.super.super.isa + OBJC_IVAR___CloudSharingViewController_model))[3];
    swift_getKeyPath();
    swift_getKeyPath();

    v5 = a3;
    sub_1000C60A4();
  }
}

- (void)_setThumbnail:(id)a3
{
  if (a3)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR___CloudSharingViewController_model);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a3;

    sub_1000C60A4();
  }
}

- (void)_setShowAddPeople:(BOOL)a3
{
  if (a3)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR___CloudSharingViewController_model);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C60A4();
  }
}

- (void)_setParticipantDetails:(id)a3
{
  if (a3)
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