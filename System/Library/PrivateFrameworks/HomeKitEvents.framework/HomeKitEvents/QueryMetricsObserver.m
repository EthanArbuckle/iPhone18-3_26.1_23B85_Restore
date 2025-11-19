@interface QueryMetricsObserver
- (_TtC13HomeKitEvents20QueryMetricsObserver)init;
- (void)observeEvent:(id)a3;
@end

@implementation QueryMetricsObserver

- (void)observeEvent:(id)a3
{
  type metadata accessor for CloudKitQueryLogEvent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a3;
    v7 = self;
    sub_25414AFD8(v5);
  }

  else
  {
    type metadata accessor for EventsAsyncSequenceLogEvent();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v10 = a3;
    v11 = self;
    sub_25414B2E8(v9);
  }
}

- (_TtC13HomeKitEvents20QueryMetricsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end