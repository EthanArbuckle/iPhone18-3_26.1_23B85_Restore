@interface DOCSpotlightCollectionObserver
- (_TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver)init;
- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4;
- (void)collectionDidFinishGathering:(id)a3;
- (void)collectionUpdated;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
@end

@implementation DOCSpotlightCollectionObserver

- (_TtC26DocumentManagerExecutables30DOCSpotlightCollectionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionUpdated
{
  v2 = self;
  DOCSpotlightCollectionObserver.collectionUpdated()();
}

- (void)collectionDidFinishGathering:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCSpotlightCollectionObserver.collectionDidFinishGathering(_:)(v4);
}

- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = self;
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  LOBYTE(self) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (self)
  {
    [(DOCSpotlightCollectionObserver *)v10 collectionUpdated];
  }

  else
  {
    __break(1u);
  }
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v9 = self;
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(self) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (self)
  {
    [(DOCSpotlightCollectionObserver *)v9 collectionUpdated];
  }

  else
  {
    __break(1u);
  }
}

@end