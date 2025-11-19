@interface FloatingTabsView
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)intrinsicContentSize;
- (_TtC13FitnessCoreUI16FloatingTabsView)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI16FloatingTabsView)initWithFrame:(CGRect)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)layoutMarginsDidChange;
@end

@implementation FloatingTabsView

- (_TtC13FitnessCoreUI16FloatingTabsView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC13FitnessCoreUI16FloatingTabsView)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
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
  v3 = self;
  [(FloatingTabsView *)&v6 layoutMarginsDidChange];
  v4 = [*(&v3->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController) view];
  if (v4)
  {
    v5 = v4;
    [(FloatingTabsView *)v3 directionalLayoutMargins];
    [v5 setDirectionalLayoutMargins_];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
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
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_20C3BAAA8(v12);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
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
  v10 = a3;
  v11 = self;
  FloatingTabsView.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
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
  v10 = a3;
  v11 = self;
  v12 = FloatingTabsView.collectionView(_:shouldSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12 & 1;
}

@end