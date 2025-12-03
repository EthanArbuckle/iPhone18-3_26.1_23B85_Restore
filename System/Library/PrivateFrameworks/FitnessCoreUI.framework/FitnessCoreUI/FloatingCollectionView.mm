@interface FloatingCollectionView
- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)layoutSubviews;
@end

@implementation FloatingCollectionView

- (void)layoutSubviews
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FloatingCollectionView();
  selfCopy = self;
  [(FloatingCollectionView *)&v6 layoutSubviews];
  v4 = (selfCopy + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {

    v5(selfCopy);

    sub_20C38F958(v5);
  }

  else
  {
  }
}

- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
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

  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  v11 = type metadata accessor for FloatingCollectionView();
  *v10 = 0;
  v10[1] = 0;
  v14.receiver = self;
  v14.super_class = v11;
  height = [(FloatingCollectionView *)&v14 initWithFrame:layout collectionViewLayout:x, y, width, height];

  return height;
}

- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FloatingCollectionView();
  coderCopy = coder;
  v7 = [(FloatingCollectionView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end