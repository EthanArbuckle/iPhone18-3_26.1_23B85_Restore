@interface BaseCalendarViewController
- (_TtC8HealthUI26BaseCalendarViewController)initWithCoder:(id)a3;
- (_TtC8HealthUI26BaseCalendarViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC8HealthUI26BaseCalendarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidLoad;
@end

@implementation BaseCalendarViewController

- (void)viewDidLoad
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseCalendarViewController();
  v3 = self;
  [(BaseCalendarViewController *)&v7 viewDidLoad];
  v4 = [(BaseCalendarViewController *)v3 collectionView:v7.receiver];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() systemGroupedBackgroundColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8HealthUI26BaseCalendarViewController)initWithCollectionViewLayout:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_collectionViewDataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_isYearOverlayVisible) = 0;
  v5 = self + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController____lazy_storage___yearOverlay) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BaseCalendarViewController();
  v6 = [(BaseCalendarViewController *)&v8 initWithCollectionViewLayout:a3];

  return v6;
}

- (_TtC8HealthUI26BaseCalendarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_1C3D20104();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = BaseCalendarViewController.init(nibName:bundle:)(v6, a3, a4);

  return v9;
}

- (_TtC8HealthUI26BaseCalendarViewController)initWithCoder:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = BaseCalendarViewController.init(coder:)(a3);

  return v4;
}

- (void)scrollViewDidScroll:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  BaseCalendarViewController.updateYearOverlay()();
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC8HealthUI26BaseCalendarViewController_decelerationTargetContentOffset;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = self;
  BaseCalendarViewController.updateYearOverlay()();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  x = a5->x;
  y = a5->y;
  v9 = self;
  BaseCalendarViewController.updateYearOverlayForScrollViewWillEndDragging(targetContentOffset:)(__PAIR128__(*&y, *&x));
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  sub_1C3C39DE0(a4);
}

@end