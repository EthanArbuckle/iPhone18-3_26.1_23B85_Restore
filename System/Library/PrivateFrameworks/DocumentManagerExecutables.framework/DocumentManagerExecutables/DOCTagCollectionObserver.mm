@interface DOCTagCollectionObserver
- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block;
- (void)collection:(void *)collection didUpdateItemsAtIndexPaths:changes:;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DOCTagCollectionObserver

- (void)collection:(void *)collection didUpdateItemsAtIndexPaths:changes:
{
  collectionCopy = collection;
  specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  DOCTagCollectionObserver.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, context);

  outlined destroy of Any?(v18);
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  selfCopy = self;
  specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)();
}

- (void)collection:(id)collection didPerformBatchUpdateWithReplayBlock:(id)block
{
  collectionCopy = collection;
  selfCopy = self;

  specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)();
}

@end