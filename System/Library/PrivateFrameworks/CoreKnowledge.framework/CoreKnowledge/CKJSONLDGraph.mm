@interface CKJSONLDGraph
- (CKJSONLDGraph)initWithEntities:(id)entities;
- (NSArray)entities;
- (void)linkedDataWithCompletionHandler:(id)handler;
@end

@implementation CKJSONLDGraph

- (CKJSONLDGraph)initWithEntities:(id)entities
{
  if (entities)
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
  selfCopy = self;
  sub_1C86B1D04();

  v3 = sub_1C86F908C();

  return v3;
}

- (void)linkedDataWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  sub_1C86B1E4C();
}

@end