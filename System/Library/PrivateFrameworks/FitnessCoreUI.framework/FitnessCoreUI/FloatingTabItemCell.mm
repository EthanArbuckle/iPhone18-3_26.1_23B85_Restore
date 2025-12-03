@interface FloatingTabItemCell
- (BOOL)isSelected;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
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
  isSelected = [(FloatingTabItemCell *)&v5 isSelected];

  return isSelected;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FloatingTabItemCell();
  selfCopy = self;
  [(FloatingTabItemCell *)&v6 setSelected:selectedCopy];
  sub_20C3CA6C0([(FloatingTabItemCell *)selfCopy isSelected:v6.receiver], 0);
}

- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithFrame:(CGRect)frame
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

  v7 = FloatingTabItemCell.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC13FitnessCoreUI19FloatingTabItemCell)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
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
  selfCopy = self;
  [(FloatingTabItemCell *)&v5 layoutSubviews];
  v4 = [(FloatingTabItemCell *)selfCopy layer:v5.receiver];
  [(FloatingTabItemCell *)selfCopy bounds];
  [v4 setCornerRadius_];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20C3CA6C0(1, 1);
  v19.receiver = selfCopy;
  v19.super_class = type metadata accessor for FloatingTabItemCell();
  *&v11 = priority;
  *&v12 = fittingPriority;
  [(FloatingTabItemCell *)&v19 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  v14 = v13;
  v16 = v15;
  sub_20C3CA6C0([(FloatingTabItemCell *)selfCopy isSelected], 1);

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

@end