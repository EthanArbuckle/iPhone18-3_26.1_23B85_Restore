@interface FloatingCollectionView
- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
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
  v3 = self;
  [(FloatingCollectionView *)&v6 layoutSubviews];
  v4 = (v3 + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {

    v5(v3);

    sub_20C38F958(v5);
  }

  else
  {
  }
}

- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
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

  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  v11 = type metadata accessor for FloatingCollectionView();
  *v10 = 0;
  v10[1] = 0;
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(FloatingCollectionView *)&v14 initWithFrame:a4 collectionViewLayout:x, y, width, height];

  return v12;
}

- (_TtC13FitnessCoreUI22FloatingCollectionView)initWithCoder:(id)a3
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
  v6 = a3;
  v7 = [(FloatingCollectionView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end