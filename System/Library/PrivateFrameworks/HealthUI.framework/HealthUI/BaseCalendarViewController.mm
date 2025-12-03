@interface BaseCalendarViewController
- (_TtC8HealthUI26BaseCalendarViewController)initWithCoder:(id)coder;
- (_TtC8HealthUI26BaseCalendarViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC8HealthUI26BaseCalendarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
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
  selfCopy = self;
  [(BaseCalendarViewController *)&v7 viewDidLoad];
  v4 = [(BaseCalendarViewController *)selfCopy collectionView:v7.receiver];
  if (v4)
  {
    v5 = v4;
    systemGroupedBackgroundColor = [objc_opt_self() systemGroupedBackgroundColor];
    [v5 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8HealthUI26BaseCalendarViewController)initWithCollectionViewLayout:(id)layout
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
  v6 = [(BaseCalendarViewController *)&v8 initWithCollectionViewLayout:layout];

  return v6;
}

- (_TtC8HealthUI26BaseCalendarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_1C3D20104();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = BaseCalendarViewController.init(nibName:bundle:)(v6, name, bundle);

  return v9;
}

- (_TtC8HealthUI26BaseCalendarViewController)initWithCoder:(id)coder
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = BaseCalendarViewController.init(coder:)(coder);

  return v4;
}

- (void)scrollViewDidScroll:(id)scroll
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  BaseCalendarViewController.updateYearOverlay()();
}

- (void)scrollViewWillBeginDragging:(id)dragging
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
  selfCopy = self;
  BaseCalendarViewController.updateYearOverlay()();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  x = offset->x;
  y = offset->y;
  selfCopy = self;
  BaseCalendarViewController.updateYearOverlayForScrollViewWillEndDragging(targetContentOffset:)(__PAIR128__(*&y, *&x));
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  draggingCopy = dragging;
  selfCopy = self;
  sub_1C3C39DE0(decelerate);
}

@end