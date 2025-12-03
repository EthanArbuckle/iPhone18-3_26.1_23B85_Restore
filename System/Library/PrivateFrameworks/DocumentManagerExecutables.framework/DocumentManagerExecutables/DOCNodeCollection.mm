@interface DOCNodeCollection
- (BOOL)isGathering;
- (_TtC26DocumentManagerExecutables17DOCNodeCollection)init;
- (void)collection:(id)collection didEncounterError:(id)error;
- (void)collection:(id)collection didUpdateItems:(id)items replaceItemsByFormerID:(id)d deleteItemsWithIDs:(id)ds;
- (void)collection:(id)collection didUpdateObservedItem:(id)item;
- (void)collectionDidFinishGathering:(id)gathering;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)setIsGathering:(BOOL)gathering;
@end

@implementation DOCNodeCollection

- (BOOL)isGathering
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsGathering:(BOOL)gathering
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  swift_beginAccess();
  *(&self->super.isa + v5) = gathering;
}

- (_TtC26DocumentManagerExecutables17DOCNodeCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  selfCopy = self;
  DOCNodeCollection.data(forCollectionShouldBeReloaded:)(reloadedCopy);
}

- (void)collection:(id)collection didEncounterError:(id)error
{
  collectionCopy = collection;
  errorCopy = error;
  selfCopy = self;
  specialized DOCNodeCollection.collection(_:didEncounterError:)(errorCopy);
}

- (void)collection:(id)collection didUpdateObservedItem:(id)item
{
  collectionCopy = collection;
  itemCopy = item;
  selfCopy = self;
  DOCNodeCollection.collection(_:didUpdateObservedItem:)(collectionCopy, itemCopy);
}

- (void)collectionDidFinishGathering:(id)gathering
{
  gatheringCopy = gathering;
  selfCopy = self;
  specialized DOCNodeCollection.collectionDidFinishGathering(_:)();
}

- (void)collection:(id)collection didUpdateItems:(id)items replaceItemsByFormerID:(id)d deleteItemsWithIDs:(id)ds
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID);
  lazy protocol witness table accessor for type FPItemID and conformance NSObject();
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  collectionCopy = collection;
  selfCopy = self;
  specialized DOCNodeCollection.collection(_:didUpdate:replaceItemsByFormerID:deleteItemsWith:)(v8, v9, v10);
}

@end