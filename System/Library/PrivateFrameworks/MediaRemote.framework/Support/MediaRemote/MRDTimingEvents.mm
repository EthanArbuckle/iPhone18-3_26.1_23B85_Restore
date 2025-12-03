@interface MRDTimingEvents
- (MRDTimingEvent)condensedEvent;
- (NSArray)orderedEvents;
- (NSError)firstError;
- (NSNumber)totalDuration;
- (_TtC12mediaremoted15MRDTimingEvents)init;
@end

@implementation MRDTimingEvents

- (NSArray)orderedEvents
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSNumber)totalDuration
{
  selfCopy = self;
  sub_100230CF4();
  v3.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;

  return v3.super.super.isa;
}

- (NSError)firstError
{
  selfCopy = self;
  v3 = sub_100231954();

  if (v3)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRDTimingEvent)condensedEvent
{
  selfCopy = self;
  v3 = sub_100231C4C();

  return v3;
}

- (_TtC12mediaremoted15MRDTimingEvents)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MRDTimingEvents();
  return [(MRDTimingEvents *)&v3 init];
}

@end