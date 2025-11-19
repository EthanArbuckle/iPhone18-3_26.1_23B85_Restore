@interface SpatialEventViewModel
- (CGRect)stagedFrame;
- (CGRect)unPinnedViewFrame;
- (NSDate)end;
- (NSDate)start;
- (NSDate)startWithTravelTime;
- (NSString)description;
- (NSString)eventIdentifier;
- (_TtC14CalendarWidget21SpatialEventViewModel)init;
- (double)viewMaxNaturalTextHeight;
- (void)setStagedFrame:(CGRect)a3;
- (void)setVisibleHeight:(double)a3;
@end

@implementation SpatialEventViewModel

- (CGRect)unPinnedViewFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame);
  v3 = *&self->_anon_0[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame];
  v4 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame];
  v5 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame + 8];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)eventIdentifier
{
  v2 = self;
  sub_1E47CDCB4();

  v3 = sub_1E4878B9C();

  return v3;
}

- (NSDate)startWithTravelTime
{
  v3 = sub_1E487732C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v12 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v13 = type metadata accessor for Event();
  v14 = *(v13 + 20);
  v15 = -*&v12[*(v13 + 28)];
  v16 = self;
  sub_1E48772AC();
  sub_1E47A7308();
  if (sub_1E4878ADC())
  {

    (*(v4 + 32))(v10, v8, v3);
  }

  else
  {
    (*(v4 + 8))(v8, v3);
    (*(v4 + 16))(v10, self + v11, v3);
  }

  v17 = sub_1E48772BC();
  (*(v4 + 8))(v10, v3);

  return v17;
}

- (NSDate)start
{
  v3 = sub_1E487732C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v9 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v10 = &v9[*(type metadata accessor for Event() + 20)];
  sub_1E47A7308();
  v11 = self;
  if (sub_1E4878ADC())
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  (*(v4 + 16))(v7, v12, v3);

  v13 = sub_1E48772BC();
  (*(v4 + 8))(v7, v3);

  return v13;
}

- (NSDate)end
{
  v3 = sub_1E487732C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v9 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v10 = &v9[*(type metadata accessor for Event() + 24)];
  sub_1E47A7308();
  v11 = self;
  if (sub_1E4878ACC())
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  (*(v4 + 16))(v7, v12, v3);

  v13 = sub_1E48772BC();
  (*(v4 + 8))(v7, v3);

  return v13;
}

- (double)viewMaxNaturalTextHeight
{
  v2 = self;
  v3 = sub_1E47F4B30();

  return v3;
}

- (void)setStagedFrame:(CGRect)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight) = 0x7FEFFFFFFFFFFFFFLL;
}

- (CGRect)stagedFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame);
  v3 = *&self->_anon_0[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  v4 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  v5 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame + 8];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setVisibleHeight:(double)a3
{
  v3 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked;
  if ((*(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight) = a3;
    *(&self->super.isa + v3) = 1;
  }
}

- (NSString)description
{
  v2 = self;
  sub_1E47F4E00();

  v3 = sub_1E4878B9C();

  return v3;
}

- (_TtC14CalendarWidget21SpatialEventViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end