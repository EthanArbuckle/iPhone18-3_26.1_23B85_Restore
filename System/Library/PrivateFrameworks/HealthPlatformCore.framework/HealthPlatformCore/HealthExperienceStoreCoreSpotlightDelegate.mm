@interface HealthExperienceStoreCoreSpotlightDelegate
- (id)attributeSetForObject:(id)object;
- (id)bundleIdentifier;
- (id)indexName;
- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator;
- (id)protectionClass;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)startSpotlightIndexing;
- (void)stopSpotlightIndexing;
@end

@implementation HealthExperienceStoreCoreSpotlightDelegate

- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator
{
  descriptionCopy = description;
  coordinatorCopy = coordinator;
  v7 = sub_228701A80(descriptionCopy, coordinatorCopy);

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
  selfCopy = self;
  sub_22875549C("HealthExperienceStoreCoreSpotlightDelegate startSpotlightIndexing", &selRef_startSpotlightIndexing);
}

- (void)stopSpotlightIndexing
{
  selfCopy = self;
  sub_22875549C("HealthExperienceStoreCoreSpotlightDelegate stopSpotlightIndexing", &selRef_stopSpotlightIndexing);
}

- (id)attributeSetForObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  v6 = sub_22875567C(objectCopy);

  return v6;
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  indexCopy = index;
  selfCopy = self;
  sub_228756014(indexCopy, sub_22875721C, v7);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_2287CB3A0();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  indexCopy = index;
  selfCopy = self;
  sub_228756444(indexCopy, v8, sub_22875715C, v9);
}

@end