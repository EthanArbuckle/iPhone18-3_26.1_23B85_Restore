@interface FloatingTabItemCell
- (BOOL)isSelected;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation FloatingTabItemCell

- (BOOL)isSelected
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for FloatingTabItemCell();
  v3 = [(FloatingTabItemCell *)&v5 isSelected];

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FloatingTabItemCell();
  v5 = self;
  [(FloatingTabItemCell *)&v6 setSelected:v3];
  sub_20C3CA6C0([(FloatingTabItemCell *)v5 isSelected:v6.receiver], 0);
}

- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithFrame:(CGRect)a3
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

  v7 = FloatingTabItemCell.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_20C3CB920();
}

- (void)layoutSubviews
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for FloatingTabItemCell();
  v3 = self;
  [(FloatingTabItemCell *)&v5 layoutSubviews];
  v4 = [(FloatingTabItemCell *)v3 layer:v5.receiver];
  [(FloatingTabItemCell *)v3 bounds];
  [v4 setCornerRadius_];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = self;
  sub_20C3CA6C0(1, 1);
  v19.receiver = v10;
  v19.super_class = type metadata accessor for FloatingTabItemCell();
  *&v11 = a4;
  *&v12 = a5;
  [(FloatingTabItemCell *)&v19 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  v14 = v13;
  v16 = v15;
  sub_20C3CA6C0([(FloatingTabItemCell *)v10 isSelected], 1);

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

@end