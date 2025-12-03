@interface FMUILocationDetailViewController
- (FMUILocationDetailViewController)initWithCoder:(id)coder;
- (FMUILocationDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FMUILocationDetailViewControllerDelegate)delegate;
- (UINavigationItem)navigationItem;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)setDelegate:(id)delegate;
- (void)setRemoteParticipantHandles:(id)handles localParticipantHandle:(id)handle;
- (void)setViewOptions:(id)options;
- (void)startObservingContacts:(id)contacts;
- (void)startObservingContacts:(id)contacts fromCallerHandle:(id)handle;
- (void)startObservingContacts:(id)contacts fromCallerHandle:(id)handle groupName:(id)name;
- (void)startObservingHandles:(id)handles callerHandle:(id)handle;
- (void)startObservingHandles:(id)handles callerHandle:(id)handle groupName:(id)name;
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

- (void)setDelegate:(id)delegate
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

- (void)setViewOptions:(id)options
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  optionsCopy = options;
  selfCopy = self;
  LocationDetailViewController.setViewOptions(_:)(optionsCopy);
}

- (void)setRemoteParticipantHandles:(id)handles localParticipantHandle:(id)handle
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
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  LocationDetailViewController.set(remoteParticipantHandles:localParticipantHandle:)(v5, v10);
}

- (void)startObservingHandles:(id)handles callerHandle:(id)handle
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_24B2D5534();
  if (handle)
  {
    v7 = sub_24B2D5394();
    handle = v8;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  v10.value._countAndFlagsBits = v7;
  v10.value._object = handle;
  LocationDetailViewController.startObserving(handles:from:groupName:)(v6, v10, 0);
}

- (void)startObservingHandles:(id)handles callerHandle:(id)handle groupName:(id)name
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_24B2D5534();
  if (handle)
  {
    v9 = sub_24B2D5394();
    handle = v10;
    if (name)
    {
LABEL_5:
      v11 = sub_24B2D5394();
      name = v12;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (name)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  selfCopy = self;
  v14.value._countAndFlagsBits = v9;
  v14.value._object = handle;
  v15.value._countAndFlagsBits = v11;
  v15.value._object = name;
  LocationDetailViewController.startObserving(handles:from:groupName:)(v8, v14, v15);
}

- (void)startObservingContacts:(id)contacts
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
  selfCopy = self;
  LocationDetailViewController.startObserving(contacts:from:groupName:)(v4, 0, 0);
}

- (void)startObservingContacts:(id)contacts fromCallerHandle:(id)handle
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
  if (handle)
  {
    v7 = sub_24B2D5394();
    handle = v8;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  v10.value._countAndFlagsBits = v7;
  v10.value._object = handle;
  LocationDetailViewController.startObserving(contacts:from:groupName:)(v6, v10, 0);
}

- (void)startObservingContacts:(id)contacts fromCallerHandle:(id)handle groupName:(id)name
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
  if (handle)
  {
    v9 = sub_24B2D5394();
    handle = v10;
    if (name)
    {
LABEL_5:
      v11 = sub_24B2D5394();
      name = v12;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (name)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  selfCopy = self;
  v14.value._countAndFlagsBits = v9;
  v14.value._object = handle;
  v15.value._countAndFlagsBits = v11;
  v15.value._object = name;
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

  navigationItem = [*(self + OBJC_IVAR___FMUILocationDetailViewController_hostingViewController) navigationItem];

  return navigationItem;
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  contentScrollViewForEdge_ = [*(self + OBJC_IVAR___FMUILocationDetailViewController_hostingViewController) contentScrollViewForEdge_];

  return contentScrollViewForEdge_;
}

- (FMUILocationDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_24B2D5394();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = LocationDetailViewController.init(nibName:bundle:)(v6, name, bundle);

  return v9;
}

- (FMUILocationDetailViewController)initWithCoder:(id)coder
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = LocationDetailViewController.init(coder:)(coder);

  return v4;
}

@end