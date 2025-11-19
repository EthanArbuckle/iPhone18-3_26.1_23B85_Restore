@interface DOCTagCollectionObserver
- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4;
- (void)collection:(void *)a1 didUpdateItemsAtIndexPaths:changes:;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DOCTagCollectionObserver

- (void)collection:(void *)a1 didUpdateItemsAtIndexPaths:changes:
{
  v1 = a1;
  specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_11(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  DOCTagCollectionObserver.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  outlined destroy of Any?(v18);
}

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v3 = self;
  specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)();
}

- (void)collection:(id)a3 didPerformBatchUpdateWithReplayBlock:(id)a4
{
  v5 = a3;
  v6 = self;

  specialized DOCTagCollectionObserver.gatheringDidUpdate(items:)();
}

@end