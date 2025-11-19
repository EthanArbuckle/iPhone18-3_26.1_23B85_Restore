@interface HealthExperienceStoreCoreSpotlightDelegate
- (id)attributeSetForObject:(id)a3;
- (id)bundleIdentifier;
- (id)indexName;
- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4;
- (id)protectionClass;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
- (void)startSpotlightIndexing;
- (void)stopSpotlightIndexing;
@end

@implementation HealthExperienceStoreCoreSpotlightDelegate

- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_228701A80(v5, v6);

  return v7;
}

- (id)bundleIdentifier
{
  v0 = sub_2287CB210();

  return v0;
}

- (id)indexName
{
  v2 = sub_2287CB210();

  return v2;
}

- (id)protectionClass
{
  if (qword_280DE1790 != -1)
  {
    swift_once();
  }

  v2 = sub_2287CB210();

  return v2;
}

- (void)startSpotlightIndexing
{
  v2 = self;
  sub_22875549C("HealthExperienceStoreCoreSpotlightDelegate startSpotlightIndexing", &selRef_startSpotlightIndexing);
}

- (void)stopSpotlightIndexing
{
  v2 = self;
  sub_22875549C("HealthExperienceStoreCoreSpotlightDelegate stopSpotlightIndexing", &selRef_stopSpotlightIndexing);
}

- (id)attributeSetForObject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_22875567C(v4);

  return v6;
}

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_228756014(v8, sub_22875721C, v7);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_2287CB3A0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = self;
  sub_228756444(v10, v8, sub_22875715C, v9);
}

@end