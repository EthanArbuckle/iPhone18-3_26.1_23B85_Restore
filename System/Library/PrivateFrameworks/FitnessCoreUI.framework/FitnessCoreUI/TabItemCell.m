@interface TabItemCell
- (_NSRange)accessibilityColumnRange;
- (_NSRange)accessibilityRowRange;
- (_TtC13FitnessCoreUI11TabItemCell)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI11TabItemCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation TabItemCell

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for TabItemCell();
  v5 = self;
  [(TabItemCell *)&v8 setHighlighted:v3];
  if (![(TabItemCell *)v5 isHighlighted:v8.receiver]|| (v6 = [(TabItemCell *)v5 isSelected], v7 = 0.75, v6))
  {
    v7 = 1.0;
  }

  [(TabItemCell *)v5 setAlpha:v7];
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
  v6.super_class = type metadata accessor for TabItemCell();
  v5 = self;
  [(TabItemCell *)&v6 setSelected:v3];
  sub_20C3B4B38([(TabItemCell *)v5 isSelected:v6.receiver]);
}

- (_TtC13FitnessCoreUI11TabItemCell)initWithFrame:(CGRect)a3
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

  v7 = TabItemCell.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC13FitnessCoreUI11TabItemCell)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  _s13FitnessCoreUI11TabItemCellC5coderACSgSo7NSCoderC_tcfc_0();
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

  v4.receiver = self;
  v4.super_class = type metadata accessor for TabItemCell();
  v3 = self;
  [(TabItemCell *)&v4 layoutSubviews];
  [(TabItemCell *)v3 bounds:v4.receiver];
  [(TabItemCell *)v3 _setContinuousCornerRadius:CGRectGetHeight(v5) * 0.5];
}

- (void)prepareForReuse
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_20C3B409C();
}

- (_NSRange)accessibilityColumnRange
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_20C3E801C();

  v3 = v2;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)accessibilityRowRange
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (self + OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount);
  if ((*(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC13FitnessCoreUI11TabItemCell_currentItemCount) & 1) != 0 || (v4 = *v3, *v3 < 1))
  {
    v4 = 10;
    v5 = sub_20C3E801C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v4;
  result.length = v7;
  result.location = v6;
  return result;
}

@end