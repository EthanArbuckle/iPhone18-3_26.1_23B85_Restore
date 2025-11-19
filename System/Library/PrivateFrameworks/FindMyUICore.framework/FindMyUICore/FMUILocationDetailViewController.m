@interface FMUILocationDetailViewController
- (FMUILocationDetailViewController)initWithCoder:(id)a3;
- (FMUILocationDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FMUILocationDetailViewControllerDelegate)delegate;
- (UINavigationItem)navigationItem;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setRemoteParticipantHandles:(id)a3 localParticipantHandle:(id)a4;
- (void)setViewOptions:(id)a3;
- (void)startObservingContacts:(id)a3;
- (void)startObservingContacts:(id)a3 fromCallerHandle:(id)a4;
- (void)startObservingContacts:(id)a3 fromCallerHandle:(id)a4 groupName:(id)a5;
- (void)startObservingHandles:(id)a3 callerHandle:(id)a4;
- (void)startObservingHandles:(id)a3 callerHandle:(id)a4 groupName:(id)a5;
@end

@implementation FMUILocationDetailViewController

- (FMUILocationDetailViewControllerDelegate)delegate
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectWeakAssign();
}

- (void)setViewOptions:(id)a3
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  LocationDetailViewController.setViewOptions(_:)(v5);
}

- (void)setRemoteParticipantHandles:(id)a3 localParticipantHandle:(id)a4
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_24B2D5534();
  v6 = sub_24B2D5394();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  LocationDetailViewController.set(remoteParticipantHandles:localParticipantHandle:)(v5, v10);
}

- (void)startObservingHandles:(id)a3 callerHandle:(id)a4
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_24B2D5534();
  if (a4)
  {
    v7 = sub_24B2D5394();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = self;
  v10.value._countAndFlagsBits = v7;
  v10.value._object = a4;
  LocationDetailViewController.startObserving(handles:from:groupName:)(v6, v10, 0);
}

- (void)startObservingHandles:(id)a3 callerHandle:(id)a4 groupName:(id)a5
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_24B2D5534();
  if (a4)
  {
    v9 = sub_24B2D5394();
    a4 = v10;
    if (a5)
    {
LABEL_5:
      v11 = sub_24B2D5394();
      a5 = v12;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  v13 = self;
  v14.value._countAndFlagsBits = v9;
  v14.value._object = a4;
  v15.value._countAndFlagsBits = v11;
  v15.value._object = a5;
  LocationDetailViewController.startObserving(handles:from:groupName:)(v8, v14, v15);
}

- (void)startObservingContacts:(id)a3
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFF54C();
  v4 = sub_24B2D5534();
  v5 = self;
  LocationDetailViewController.startObserving(contacts:from:groupName:)(v4, 0, 0);
}

- (void)startObservingContacts:(id)a3 fromCallerHandle:(id)a4
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFF54C();
  v6 = sub_24B2D5534();
  if (a4)
  {
    v7 = sub_24B2D5394();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = self;
  v10.value._countAndFlagsBits = v7;
  v10.value._object = a4;
  LocationDetailViewController.startObserving(contacts:from:groupName:)(v6, v10, 0);
}

- (void)startObservingContacts:(id)a3 fromCallerHandle:(id)a4 groupName:(id)a5
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFF54C();
  v8 = sub_24B2D5534();
  if (a4)
  {
    v9 = sub_24B2D5394();
    a4 = v10;
    if (a5)
    {
LABEL_5:
      v11 = sub_24B2D5394();
      a5 = v12;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  v13 = self;
  v14.value._countAndFlagsBits = v9;
  v14.value._object = a4;
  v15.value._countAndFlagsBits = v11;
  v15.value._object = a5;
  LocationDetailViewController.startObserving(contacts:from:groupName:)(v8, v14, v15);
}

- (UINavigationItem)navigationItem
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [*(self + OBJC_IVAR___FMUILocationDetailViewController_hostingViewController) navigationItem];

  return v3;
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [*(self + OBJC_IVAR___FMUILocationDetailViewController_hostingViewController) contentScrollViewForEdge_];

  return v5;
}

- (FMUILocationDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_24B2D5394();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = LocationDetailViewController.init(nibName:bundle:)(v6, a3, a4);

  return v9;
}

- (FMUILocationDetailViewController)initWithCoder:(id)a3
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = LocationDetailViewController.init(coder:)(a3);

  return v4;
}

@end