@interface CalendarYearOverlayView
- (_TtC8HealthUI23CalendarYearOverlayView)initWithCoder:(id)a3;
- (_TtC8HealthUI23CalendarYearOverlayView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation CalendarYearOverlayView

- (_TtC8HealthUI23CalendarYearOverlayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = CalendarYearOverlayView.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC8HealthUI23CalendarYearOverlayView)initWithCoder:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  _s8HealthUI23CalendarYearOverlayViewC5coderACSgSo7NSCoderC_tcfc_0();
}

- (void)applyLayoutAttributes:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for CalendarYearOverlayView();
  v5 = a3;
  v6 = self;
  [(CalendarYearOverlayView *)&v8 applyLayoutAttributes:v5];
  v7 = [(CalendarYearOverlayView *)v6 layer:v8.receiver];
  [v7 setZPosition_];

  [(CalendarYearOverlayView *)v6 frame];
  [(CalendarYearOverlayView *)v6 setFrame:?];
}

@end