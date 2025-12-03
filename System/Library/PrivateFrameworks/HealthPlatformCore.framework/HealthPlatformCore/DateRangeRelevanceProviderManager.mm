@interface DateRangeRelevanceProviderManager
+ (Class)_relevanceProviderClass;
+ (NSArray)_features;
- (_TtC18HealthPlatformCore33DateRangeRelevanceProviderManager)initWithQueue:(id)queue;
- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature;
- (id)_valueForProvider:(id)provider feature:(id)feature;
@end

@implementation DateRangeRelevanceProviderManager

+ (NSArray)_features
{
  sub_22870BF00(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2287CCC50;
  if (qword_280DE37F8 != -1)
  {
    swift_once();
  }

  v3 = qword_280DE63C0;
  *(v2 + 32) = qword_280DE63C0;
  sub_22870BE64();
  v4 = v3;
  v5 = sub_2287CB390();

  return v5;
}

+ (Class)_relevanceProviderClass
{
  type metadata accessor for DateRangeRelevanceProvider();

  return swift_getObjCClassFromMetadata();
}

- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature
{
  providerCopy = provider;
  contextCopy = context;
  featureCopy = feature;
  selfCopy = self;
  v12 = sub_22870BA4C(providerCopy, context);

  return v12;
}

- (id)_valueForProvider:(id)provider feature:(id)feature
{
  v4 = [(DateRangeRelevanceProviderManager *)self _valueForProvider:provider context:0 feature:feature];

  return v4;
}

- (_TtC18HealthPlatformCore33DateRangeRelevanceProviderManager)initWithQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DateRangeRelevanceProviderManager();
  return [(RERelevanceProviderManager *)&v5 initWithQueue:queue];
}

@end