@interface HighlightCalendarDayView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDate)axDate;
- (NSString)axProjectionKind;
- (_TtC19HealthVisualization24HighlightCalendarDayView)initWithCoder:(id)coder;
- (_TtC19HealthVisualization24HighlightCalendarDayView)initWithFrame:(CGRect)frame;
- (int64_t)axCircleState;
- (int64_t)axProbability;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
@end

@implementation HighlightCalendarDayView

- (NSDate)axDate
{
  sub_1D154EBE4(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1D154CF60(v5);

  v7 = sub_1D15A26A8();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v9 = sub_1D15A2618();
    (*(v8 + 8))(v5, v7);
  }

  return v9;
}

- (int64_t)axProbability
{
  sub_1D154EBE4(0, &qword_1EE05A670, type metadata accessor for AXProjectionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AXProjectionState(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = self + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model;
  v11 = type metadata accessor for HighlightCalendarDayViewModel(0);
  sub_1D154EA00(&v10[*(v11 + 52)], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D154EA94(v5);
    v12 = 0;
  }

  else
  {
    sub_1D154EB20(v5, v9);
    v12 = *&v9[*(v6 + 20)];
    sub_1D154EB84(v9, type metadata accessor for AXProjectionState);
  }

  return v12;
}

- (NSString)axProjectionKind
{
  sub_1D154EBE4(0, &qword_1EE05A670, type metadata accessor for AXProjectionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for AXProjectionState(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = self + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model;
  v11 = type metadata accessor for HighlightCalendarDayViewModel(0);
  sub_1D154EA00(&v10[*(v11 + 52)], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D154EA94(v5);
  }

  else
  {
    sub_1D154EB20(v5, v9);
    v12 = *&v9[*(v6 + 24) + 8];

    sub_1D154EB84(v9, type metadata accessor for AXProjectionState);
    if (v12)
    {
      v13 = sub_1D15A3EF8();

      v14 = v13;
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (int64_t)axCircleState
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super._layerRetained + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model);

  return qword_1D15B56D0[v3];
}

- (_TtC19HealthVisualization24HighlightCalendarDayView)initWithCoder:(id)coder
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_activityRingsView) = 0;
  result = sub_1D15A4908();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  traitCollection = [(HighlightCalendarDayView *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v10 = *(&selfCopy->super._viewFlags + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model + 1);
  v7 = sub_1D154E870(preferredContentSizeCategory, &v10);

  v8 = v7;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1D154DD8C();
}

- (void)layoutSublayersOfLayer:(id)layer
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for HighlightCalendarDayView();
  layerCopy = layer;
  selfCopy = self;
  [(HighlightCalendarDayView *)&v9 layoutSublayersOfLayer:layerCopy];
  v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer);
  if (v7)
  {
    v8 = v7;
    [(HighlightCalendarDayView *)selfCopy bounds:v9.receiver];
    [v8 setFrame_];
  }

  else
  {
  }
}

- (_TtC19HealthVisualization24HighlightCalendarDayView)initWithFrame:(CGRect)frame
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end