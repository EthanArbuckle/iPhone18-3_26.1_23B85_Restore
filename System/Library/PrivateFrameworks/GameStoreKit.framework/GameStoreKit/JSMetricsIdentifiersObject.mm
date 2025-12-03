@interface JSMetricsIdentifiersObject
- (NSString)currentTopic;
- (_TtC12GameStoreKit26JSMetricsIdentifiersObject)init;
- (id)getIdentifierForContext:(id)context;
- (id)getIdentifierForContextSync:(id)sync;
- (id)getMetricsFieldsForContexts:(id)contexts;
@end

@implementation JSMetricsIdentifiersObject

- (NSString)currentTopic
{
  MetricsTopicProvider.currentMetricsTopic.getter();
  v2 = sub_24F92B098();

  return v2;
}

- (id)getIdentifierForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_24EA31548(contextCopy, "MetricIdentifierPromise", "MetricIdentifier", sub_24EA33090);

  return v6;
}

- (id)getIdentifierForContextSync:(id)sync
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  syncCopy = sync;
  selfCopy = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

- (id)getMetricsFieldsForContexts:(id)contexts
{
  contextsCopy = contexts;
  selfCopy = self;
  v6 = sub_24EA31548(contextsCopy, "MetricFieldsPromise", "MetricFields", sub_24EA32D64);

  return v6;
}

- (_TtC12GameStoreKit26JSMetricsIdentifiersObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end