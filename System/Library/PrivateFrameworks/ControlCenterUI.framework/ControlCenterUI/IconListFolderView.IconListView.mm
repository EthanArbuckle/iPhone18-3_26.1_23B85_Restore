@interface IconListFolderView.IconListView
- (Class)baseIconViewClass;
- (NSString)iconDragTypeIdentifier;
- (_TtCC15ControlCenterUI18IconListFolderViewP33_DD187FCCAF2994A2EE3FBE03915C670412IconListView)initWithModel:(id)model layoutProvider:(id)provider iconLocation:(id)location orientation:(int64_t)orientation iconViewProvider:(id)viewProvider;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)makeEmptyGridCellView;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)willRotateWithTransitionCoordinator:(id)coordinator;
@end

@implementation IconListFolderView.IconListView

- (Class)baseIconViewClass
{
  type metadata accessor for IconListFolderView.IconListView.IconView();

  return swift_getObjCClassFromMetadata();
}

- (NSString)iconDragTypeIdentifier
{
  v2 = sub_21EAA8DC0();

  return v2;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v15.receiver = self;
  v15.super_class = type metadata accessor for IconListFolderView.IconListView();
  v7 = v15.receiver;
  eventCopy = event;
  v9 = [(IconListFolderView.IconListView *)&v15 hitTest:eventCopy withEvent:x, y];
  if (!v9 || v9 != v7)
  {
    goto LABEL_3;
  }

  if (!eventCopy)
  {
    eventCopy = v7;
    v7 = v9;
    v9 = 0;
LABEL_3:
    v10 = v9;

LABEL_4:
    v11 = v10;
    goto LABEL_5;
  }

  v13 = v9;
  type = [eventCopy type];

  if (type != 9)
  {
    v10 = 0;
    v7 = v13;
    goto LABEL_4;
  }

  v11 = v13;
LABEL_5:

  return v11;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for IconListFolderView.IconListView();
  viewCopy = view;
  iconCopy = icon;
  v8 = v10.receiver;
  [(SBIconListView *)&v10 configureIconView:viewCopy forIcon:iconCopy];
  contentContainerView = [viewCopy contentContainerView];
  [contentContainerView setOverrideUserInterfaceStyle_];
}

- (id)makeEmptyGridCellView
{
  v2 = sub_21EA90444();

  return v2;
}

- (void)willRotateWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21EA8FF80(coordinator);
  swift_unknownObjectRelease();
}

- (_TtCC15ControlCenterUI18IconListFolderViewP33_DD187FCCAF2994A2EE3FBE03915C670412IconListView)initWithModel:(id)model layoutProvider:(id)provider iconLocation:(id)location orientation:(int64_t)orientation iconViewProvider:(id)viewProvider
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for IconListFolderView.IconListView();
  return [(SBIconListView *)&v13 initWithModel:model layoutProvider:provider iconLocation:location orientation:orientation iconViewProvider:viewProvider];
}

@end