@interface SpatialLayoutDelegate
- (CGPoint)pointForDate:(double)date;
- (CGRect)displayedRect;
- (_TtC14CalendarWidget21SpatialLayoutDelegate)init;
- (double)dateForPoint:(CGPoint)point;
- (double)hourHeight;
@end

@implementation SpatialLayoutDelegate

- (CGRect)displayedRect
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect);
  v3 = *(&self->displayedRect.origin.x + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect);
  v4 = *(&self->displayedRect.origin.y + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect);
  v5 = *(&self->displayedRect.size.width + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)hourHeight
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_endHourToShow);
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_startHourToShow);
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (!v4)
  {
    return *(&self->displayedRect.size.width + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect) / v5;
  }

  __break(1u);
  return result;
}

- (double)dateForPoint:(CGPoint)point
{
  y = point.y;
  selfCopy = self;
  sub_1E47F3BC4(v5, y);
  v7 = v6;

  return v7;
}

- (CGPoint)pointForDate:(double)date
{
  selfCopy = self;
  sub_1E47F3EA0();
  v5 = v4;

  v6 = 0.0;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (_TtC14CalendarWidget21SpatialLayoutDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end