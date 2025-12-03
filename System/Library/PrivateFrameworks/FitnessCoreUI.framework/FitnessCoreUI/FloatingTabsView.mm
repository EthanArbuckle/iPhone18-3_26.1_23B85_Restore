@interface FloatingTabsView
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)intrinsicContentSize;
- (_TtC13FitnessCoreUI16FloatingTabsView)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI16FloatingTabsView)initWithFrame:(CGRect)frame;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)layoutMarginsDidChange;
@end

@implementation FloatingTabsView

- (_TtC13FitnessCoreUI16FloatingTabsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = FloatingTabsView.init(frame:)(x, y, width, height);

  return v7;
}

- (CGSize)intrinsicContentSize
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController);
  v4 = OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBarHeight;
  swift_beginAccess();
  v5 = *(v3 + v4) + 1.0 + 15.0;
  v6 = *MEMORY[0x277D77260];

  v7 = v6;
  v8 = v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (_TtC13FitnessCoreUI16FloatingTabsView)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_20C3BA994();
}

- (void)layoutMarginsDidChange
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FloatingTabsView();
  selfCopy = self;
  [(FloatingTabsView *)&v6 layoutMarginsDidChange];
  view = [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController) view];
  if (view)
  {
    v5 = view;
    [(FloatingTabsView *)selfCopy directionalLayoutMargins];
    [v5 setDirectionalLayoutMargins_];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_20C3E809C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3E805C();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_20C3BAAA8(viewCopy);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_20C3E809C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3E805C();
  viewCopy = view;
  selfCopy = self;
  FloatingTabsView.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_20C3E809C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3E805C();
  viewCopy = view;
  selfCopy = self;
  v12 = FloatingTabsView.collectionView(_:shouldSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12 & 1;
}

@end