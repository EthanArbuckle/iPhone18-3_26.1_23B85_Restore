@interface TabItemCell
- (_NSRange)accessibilityColumnRange;
- (_NSRange)accessibilityRowRange;
- (_TtC13FitnessCoreUI11TabItemCell)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI11TabItemCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation TabItemCell

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for TabItemCell();
  selfCopy = self;
  [(TabItemCell *)&v8 setHighlighted:highlightedCopy];
  if (![(TabItemCell *)selfCopy isHighlighted:v8.receiver]|| (v6 = [(TabItemCell *)selfCopy isSelected], v7 = 0.75, v6))
  {
    v7 = 1.0;
  }

  [(TabItemCell *)selfCopy setAlpha:v7];
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
  v6.super_class = type metadata accessor for TabItemCell();
  selfCopy = self;
  [(TabItemCell *)&v6 setSelected:selectedCopy];
  sub_20C3B4B38([(TabItemCell *)selfCopy isSelected:v6.receiver]);
}

- (_TtC13FitnessCoreUI11TabItemCell)initWithFrame:(CGRect)frame
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

  v7 = TabItemCell.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC13FitnessCoreUI11TabItemCell)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
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
  selfCopy = self;
  [(TabItemCell *)&v4 layoutSubviews];
  [(TabItemCell *)selfCopy bounds:v4.receiver];
  [(TabItemCell *)selfCopy _setContinuousCornerRadius:CGRectGetHeight(v5) * 0.5];
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

  selfCopy = self;
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