@interface MRDTimingEvent
- (BOOL)end;
- (BOOL)endWithError:(id)error;
- (BOOL)start;
- (MRDTimingEvent)init;
- (NSError)error;
- (NSNumber)duration;
- (void)setError:(id)error;
@end

@implementation MRDTimingEvent

- (BOOL)start
{
  selfCopy = self;
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

- (void)setError:(id)error
{
  v5 = OBJC_IVAR___MRDTimingEvent_error;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = error;
  selfCopy = self;
  errorCopy = error;
}

- (NSNumber)duration
{
  v2 = *((swift_isaMask & *self) + 0xB0);
  selfCopy = self;
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

- (BOOL)endWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  LOBYTE(error) = sub_1002307A8(error);

  return error & 1;
}

- (BOOL)end
{
  v2 = *((swift_isaMask & *self) + 0xC8);
  selfCopy = self;
  LOBYTE(v2) = v2(0);

  return v2 & 1;
}

@end