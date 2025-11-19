@interface StopwatchViewModel
- (_TtC18MobileTimerSupport18StopwatchViewModel)init;
- (_TtC18MobileTimerSupport18StopwatchViewModel)initWithStopwatch:(id)a3 manager:(id)a4 delegate:(id)a5 dateProvider:(id)a6 registerForNotifications:(BOOL)a7 broadcastUpdates:(BOOL)a8;
- (double)runningTotalForLap:(int64_t)a3;
- (id)getStopwatch;
- (id)sourceIdentifier;
- (void)addLap:(double)a3;
- (void)clearAllLaps;
- (void)dealloc;
- (void)invalidateDisplayLink;
- (void)lapLapTimer;
- (void)pauseLapTimer;
- (void)resetLapTimer;
- (void)resumeLapTimer;
- (void)startLapTimer;
- (void)updateStopwatch:(id)a3;
- (void)updateTime;
- (void)updateWithDisplayLink;
@end

@implementation StopwatchViewModel

- (_TtC18MobileTimerSupport18StopwatchViewModel)initWithStopwatch:(id)a3 manager:(id)a4 delegate:(id)a5 dateProvider:(id)a6 registerForNotifications:(BOOL)a7 broadcastUpdates:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return StopwatchViewModel.init(stopwatch:manager:delegate:dateProvider:registerForNotifications:broadcastUpdates:)(a3, a4, a5, a6, v9, v8);
}

- (void)dealloc
{
  v2 = self;
  StopwatchViewModel.unregisterNotifications()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for StopwatchViewModel();
  [(StopwatchViewModel *)&v3 dealloc];
}

- (void)updateStopwatch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22D75CEDC(v4);
}

- (void)addLap:(double)a3
{
  v4 = self;
  sub_22D75D11C(1, a3);
}

- (void)clearAllLaps
{
  v2 = self;
  sub_22D75DB90();
}

- (void)updateWithDisplayLink
{
  v2 = self;
  sub_22D75E070();
}

- (void)invalidateDisplayLink
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink);
  v5 = self;
  [v4 invalidate];
  v6 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = 0;
}

- (void)updateTime
{
  v2 = self;
  sub_22D75E298();
}

- (void)startLapTimer
{
  v2 = self;
  sub_22D75E998();
}

- (void)pauseLapTimer
{
  v2 = self;
  sub_22D75F1BC();
}

- (void)lapLapTimer
{
  v2 = self;
  sub_22D75FE90();
}

- (void)resetLapTimer
{
  v2 = self;
  sub_22D760804();
}

- (void)resumeLapTimer
{
  v2 = self;
  sub_22D760E80();
}

- (id)getStopwatch
{
  v2 = self;
  v3 = sub_22D761574();

  return v3;
}

- (double)runningTotalForLap:(int64_t)a3
{
  v4 = self;
  sub_22D7617FC(a3);
  v6 = v5;

  return v6;
}

- (_TtC18MobileTimerSupport18StopwatchViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)sourceIdentifier
{
  if (*(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_broadcastUpdates) == 1)
  {
    v3 = self;
    sub_22D81B708();
    sub_22D81BAD8();

    v4 = sub_22D81B2B8();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end