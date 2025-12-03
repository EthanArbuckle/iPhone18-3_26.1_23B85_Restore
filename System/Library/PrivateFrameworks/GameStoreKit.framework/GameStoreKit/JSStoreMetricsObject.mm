@interface JSStoreMetricsObject
- (_TtC12GameStoreKit20JSStoreMetricsObject)init;
- (id)flushUnrecordedEvents;
- (id)recordEvent:(id)event :(id)a4;
@end

@implementation JSStoreMetricsObject

- (id)recordEvent:(id)event :(id)a4
{
  sub_24E9B9C28();
  eventCopy = event;
  v8 = a4;
  selfCopy = self;
  v10 = sub_24F92C448();
  v11 = sub_24F92C458();

  return v11;
}

- (id)flushUnrecordedEvents
{
  sub_24E9B9C28();
  selfCopy = self;
  v4 = sub_24F92C448();
  v5 = sub_24F92C458();

  return v5;
}

- (_TtC12GameStoreKit20JSStoreMetricsObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end