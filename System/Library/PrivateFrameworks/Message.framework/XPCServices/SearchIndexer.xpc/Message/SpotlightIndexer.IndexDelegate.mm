@interface SpotlightIndexer.IndexDelegate
- (_TtCC17IMAPSearchIndexer16SpotlightIndexer13IndexDelegate)init;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation SpotlightIndexer.IndexDelegate

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
    sub_100371988(sub_100372CF8, v6);
  }

  else
  {
  }
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1004A5C14();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
    sub_100371BA0(v7, sub_100372CE4, v8);
  }

  else
  {
  }
}

- (_TtCC17IMAPSearchIndexer16SpotlightIndexer13IndexDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end