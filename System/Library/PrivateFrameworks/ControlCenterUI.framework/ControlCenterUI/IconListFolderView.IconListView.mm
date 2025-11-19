@interface IconListFolderView.IconListView
- (Class)baseIconViewClass;
- (NSString)iconDragTypeIdentifier;
- (_TtCC15ControlCenterUI18IconListFolderViewP33_DD187FCCAF2994A2EE3FBE03915C670412IconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)makeEmptyGridCellView;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
- (void)willRotateWithTransitionCoordinator:(id)a3;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = type metadata accessor for IconListFolderView.IconListView();
  v7 = v15.receiver;
  v8 = a4;
  v9 = [(IconListFolderView.IconListView *)&v15 hitTest:v8 withEvent:x, y];
  if (!v9 || v9 != v7)
  {
    goto LABEL_3;
  }

  if (!v8)
  {
    v8 = v7;
    v7 = v9;
    v9 = 0;
LABEL_3:
    v10 = v9;

LABEL_4:
    v11 = v10;
    goto LABEL_5;
  }

  v13 = v9;
  v14 = [v8 type];

  if (v14 != 9)
  {
    v10 = 0;
    v7 = v13;
    goto LABEL_4;
  }

  v11 = v13;
LABEL_5:

  return v11;
}

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for IconListFolderView.IconListView();
  v6 = a3;
  v7 = a4;
  v8 = v10.receiver;
  [(SBIconListView *)&v10 configureIconView:v6 forIcon:v7];
  v9 = [v6 contentContainerView];
  [v9 setOverrideUserInterfaceStyle_];
}

- (id)makeEmptyGridCellView
{
  v2 = sub_21EA90444();

  return v2;
}

- (void)willRotateWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_21EA8FF80(a3);
  swift_unknownObjectRelease();
}

- (_TtCC15ControlCenterUI18IconListFolderViewP33_DD187FCCAF2994A2EE3FBE03915C670412IconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for IconListFolderView.IconListView();
  return [(SBIconListView *)&v13 initWithModel:a3 layoutProvider:a4 iconLocation:a5 orientation:a6 iconViewProvider:a7];
}

@end