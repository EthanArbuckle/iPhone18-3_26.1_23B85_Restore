@interface CalendarYearOverlayView
- (_TtC8HealthUI23CalendarYearOverlayView)initWithCoder:(id)coder;
- (_TtC8HealthUI23CalendarYearOverlayView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation CalendarYearOverlayView

- (_TtC8HealthUI23CalendarYearOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC8HealthUI23CalendarYearOverlayView)initWithCoder:(id)coder
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  _s8HealthUI23CalendarYearOverlayViewC5coderACSgSo7NSCoderC_tcfc_0();
}

- (void)applyLayoutAttributes:(id)attributes
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
  attributesCopy = attributes;
  selfCopy = self;
  [(CalendarYearOverlayView *)&v8 applyLayoutAttributes:attributesCopy];
  v7 = [(CalendarYearOverlayView *)selfCopy layer:v8.receiver];
  [v7 setZPosition_];

  [(CalendarYearOverlayView *)selfCopy frame];
  [(CalendarYearOverlayView *)selfCopy setFrame:?];
}

@end