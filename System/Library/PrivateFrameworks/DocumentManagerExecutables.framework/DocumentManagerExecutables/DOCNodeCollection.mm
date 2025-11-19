@interface DOCNodeCollection
- (BOOL)isGathering;
- (_TtC26DocumentManagerExecutables17DOCNodeCollection)init;
- (void)collection:(id)a3 didEncounterError:(id)a4;
- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6;
- (void)collection:(id)a3 didUpdateObservedItem:(id)a4;
- (void)collectionDidFinishGathering:(id)a3;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)setIsGathering:(BOOL)a3;
@end

@implementation DOCNodeCollection

- (BOOL)isGathering
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsGathering:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC26DocumentManagerExecutables17DOCNodeCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCNodeCollection.data(forCollectionShouldBeReloaded:)(v4);
}

- (void)collection:(id)a3 didEncounterError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized DOCNodeCollection.collection(_:didEncounterError:)(v8);
}

- (void)collection:(id)a3 didUpdateObservedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DOCNodeCollection.collection(_:didUpdateObservedItem:)(v6, v7);
}

- (void)collectionDidFinishGathering:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCNodeCollection.collectionDidFinishGathering(_:)();
}

- (void)collection:(id)a3 didUpdateItems:(id)a4 replaceItemsByFormerID:(id)a5 deleteItemsWithIDs:(id)a6
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
  lazy protocol witness table accessor for type FPItemID and conformance NSObject();
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  specialized DOCNodeCollection.collection(_:didUpdate:replaceItemsByFormerID:deleteItemsWith:)(v8, v9, v10);
}

@end