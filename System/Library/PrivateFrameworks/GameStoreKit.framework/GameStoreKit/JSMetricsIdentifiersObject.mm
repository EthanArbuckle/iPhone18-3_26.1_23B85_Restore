@interface JSMetricsIdentifiersObject
- (NSString)currentTopic;
- (_TtC12GameStoreKit26JSMetricsIdentifiersObject)init;
- (id)getIdentifierForContext:(id)a3;
- (id)getIdentifierForContextSync:(id)a3;
- (id)getMetricsFieldsForContexts:(id)a3;
@end

@implementation JSMetricsIdentifiersObject

- (NSString)currentTopic
{
  MetricsTopicProvider.currentMetricsTopic.getter();
  v2 = sub_24F92B098();

  return v2;
}

- (id)getIdentifierForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_24EA31548(v4, "MetricIdentifierPromise", "MetricIdentifier", sub_24EA33090);

  return v6;
}

- (id)getIdentifierForContextSync:(id)a3
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v5 = a3;
  v6 = self;
  v7 = sub_24F92C448();
  v8 = sub_24F92C458();

  return v8;
}

- (id)getMetricsFieldsForContexts:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_24EA31548(v4, "MetricFieldsPromise", "MetricFields", sub_24EA32D64);

  return v6;
}

- (_TtC12GameStoreKit26JSMetricsIdentifiersObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end