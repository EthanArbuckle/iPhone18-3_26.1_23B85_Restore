@interface DaemonCoreDataSpotlightIndexer
- (id)attributeSetForObject:(id)a3;
- (id)bundleIdentifier;
- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation DaemonCoreDataSpotlightIndexer

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_226B6CBA8(v8, sub_226B6DECC, v7);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_226D6E5EC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = self;
  sub_226B6CDCC(v10, v8, sub_226B6DDA0, v9);
}

- (id)attributeSetForObject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_226B6D03C(v4);

  return v6;
}

- (id)bundleIdentifier
{
  v2 = sub_226D6E36C();

  return v2;
}

- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = self + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_coreAnalytics;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC13FinanceDaemon30DaemonCoreDataSpotlightIndexer_context) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(NSCoreDataCoreSpotlightDelegate *)&v10 initForStoreWithDescription:a3 coordinator:a4];
}

@end