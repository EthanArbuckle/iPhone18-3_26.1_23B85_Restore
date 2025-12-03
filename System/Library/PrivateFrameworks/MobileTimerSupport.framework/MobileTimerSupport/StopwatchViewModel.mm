@interface StopwatchViewModel
- (_TtC18MobileTimerSupport18StopwatchViewModel)init;
- (_TtC18MobileTimerSupport18StopwatchViewModel)initWithStopwatch:(id)stopwatch manager:(id)manager delegate:(id)delegate dateProvider:(id)provider registerForNotifications:(BOOL)notifications broadcastUpdates:(BOOL)updates;
- (double)runningTotalForLap:(int64_t)lap;
- (id)getStopwatch;
- (id)sourceIdentifier;
- (void)addLap:(double)lap;
- (void)clearAllLaps;
- (void)dealloc;
- (void)invalidateDisplayLink;
- (void)lapLapTimer;
- (void)pauseLapTimer;
- (void)resetLapTimer;
- (void)resumeLapTimer;
- (void)startLapTimer;
- (void)updateStopwatch:(id)stopwatch;
- (void)updateTime;
- (void)updateWithDisplayLink;
@end

@implementation StopwatchViewModel

- (_TtC18MobileTimerSupport18StopwatchViewModel)initWithStopwatch:(id)stopwatch manager:(id)manager delegate:(id)delegate dateProvider:(id)provider registerForNotifications:(BOOL)notifications broadcastUpdates:(BOOL)updates
{
  updatesCopy = updates;
  notificationsCopy = notifications;
  stopwatchCopy = stopwatch;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return StopwatchViewModel.init(stopwatch:manager:delegate:dateProvider:registerForNotifications:broadcastUpdates:)(stopwatch, manager, delegate, provider, notificationsCopy, updatesCopy);
}

- (void)dealloc
{
  selfCopy = self;
  StopwatchViewModel.unregisterNotifications()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for StopwatchViewModel();
  [(StopwatchViewModel *)&v3 dealloc];
}

- (void)updateStopwatch:(id)stopwatch
{
  stopwatchCopy = stopwatch;
  selfCopy = self;
  sub_22D75CEDC(stopwatchCopy);
}

- (void)addLap:(double)lap
{
  selfCopy = self;
  sub_22D75D11C(1, lap);
}

- (void)clearAllLaps
{
  selfCopy = self;
  sub_22D75DB90();
}

- (void)updateWithDisplayLink
{
  selfCopy = self;
  sub_22D75E070();
}

- (void)invalidateDisplayLink
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink);
  selfCopy = self;
  [v4 invalidate];
  v6 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = 0;
}

- (void)updateTime
{
  selfCopy = self;
  sub_22D75E298();
}

- (void)startLapTimer
{
  selfCopy = self;
  sub_22D75E998();
}

- (void)pauseLapTimer
{
  selfCopy = self;
  sub_22D75F1BC();
}

- (void)lapLapTimer
{
  selfCopy = self;
  sub_22D75FE90();
}

- (void)resetLapTimer
{
  selfCopy = self;
  sub_22D760804();
}

- (void)resumeLapTimer
{
  selfCopy = self;
  sub_22D760E80();
}

- (id)getStopwatch
{
  selfCopy = self;
  v3 = sub_22D761574();

  return v3;
}

- (double)runningTotalForLap:(int64_t)lap
{
  selfCopy = self;
  sub_22D7617FC(lap);
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
    selfCopy = self;
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