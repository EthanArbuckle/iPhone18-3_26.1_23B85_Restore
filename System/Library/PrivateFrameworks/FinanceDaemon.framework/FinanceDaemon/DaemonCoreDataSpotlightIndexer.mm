@interface DaemonCoreDataSpotlightIndexer
- (id)attributeSetForObject:(id)object;
- (id)bundleIdentifier;
- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation DaemonCoreDataSpotlightIndexer

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  indexCopy = index;
  selfCopy = self;
  sub_226B6CBA8(indexCopy, sub_226B6DECC, v7);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_226D6E5EC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  indexCopy = index;
  selfCopy = self;
  sub_226B6CDCC(indexCopy, v8, sub_226B6DDA0, v9);
}

- (id)attributeSetForObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  v6 = sub_226B6D03C(objectCopy);

  return v6;
}

- (id)bundleIdentifier
{
  v2 = sub_226D6E36C();

  return v2;
}

- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator
{
  ObjectType = swift_getObjectType();
  v8 = self + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(NSCoreDataCoreSpotlightDelegate *)&v10 initForStoreWithDescription:description coordinator:coordinator];
}

@end