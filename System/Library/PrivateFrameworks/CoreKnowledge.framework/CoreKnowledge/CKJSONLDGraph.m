@interface CKJSONLDGraph
- (CKJSONLDGraph)initWithEntities:(id)a3;
- (NSArray)entities;
- (void)linkedDataWithCompletionHandler:(id)a3;
@end

@implementation CKJSONLDGraph

- (CKJSONLDGraph)initWithEntities:(id)a3
{
  if (a3)
  {
    type metadata accessor for CKKnowledgeStoreEntity();
    v3 = sub_1C86F909C();
  }

  else
  {
    v3 = 0;
  }

  return CKJSONLDGraph.init(withEntities:)(v3);
}

- (NSArray)entities
{
  v2 = self;
  sub_1C86B1D04();

  v3 = sub_1C86F908C();

  return v3;
}

- (void)linkedDataWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  sub_1C86B1E4C();
}

@end