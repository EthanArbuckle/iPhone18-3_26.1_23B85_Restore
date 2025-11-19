@interface MRDTimingEvent
- (BOOL)end;
- (BOOL)endWithError:(id)a3;
- (BOOL)start;
- (MRDTimingEvent)init;
- (NSError)error;
- (NSNumber)duration;
- (void)setError:(id)a3;
@end

@implementation MRDTimingEvent

- (BOOL)start
{
  v2 = self;
  v3 = sub_10003D7AC();

  return v3;
}

- (MRDTimingEvent)init
{
  v3 = OBJC_IVAR___MRDTimingEvent_startDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(self + v3, 1, 1, v4);
  v5(self + OBJC_IVAR___MRDTimingEvent_endDate, 1, 1, v4);
  *(self + OBJC_IVAR___MRDTimingEvent_error) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TimingEvent();
  return [(MRDTimingEvent *)&v7 init];
}

- (NSError)error
{
  v3 = OBJC_IVAR___MRDTimingEvent_error;
  swift_beginAccess();
  if (*(self + v3))
  {
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setError:(id)a3
{
  v5 = OBJC_IVAR___MRDTimingEvent_error;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = self;
  v8 = a3;
}

- (NSNumber)duration
{
  v2 = *((swift_isaMask & *self) + 0xB0);
  v3 = self;
  v2();
  if (v4)
  {
    isa = 0;
  }

  else
  {
    isa = Double._bridgeToObjectiveC()().super.super.isa;
  }

  return isa;
}

- (BOOL)endWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  LOBYTE(a3) = sub_1002307A8(a3);

  return a3 & 1;
}

- (BOOL)end
{
  v2 = *((swift_isaMask & *self) + 0xC8);
  v3 = self;
  LOBYTE(v2) = v2(0);

  return v2 & 1;
}

@end