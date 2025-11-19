@interface SpotlightIndexer.IndexDelegate
- (_TtCC17IMAPSearchIndexer16SpotlightIndexer13IndexDelegate)init;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation SpotlightIndexer.IndexDelegate

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  if (swift_weakLoadStrong())
  {
    v7 = self;
    sub_100371988(sub_100372CF8, v6);
  }

  else
  {
  }
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1004A5C14();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  if (swift_weakLoadStrong())
  {
    v9 = self;
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