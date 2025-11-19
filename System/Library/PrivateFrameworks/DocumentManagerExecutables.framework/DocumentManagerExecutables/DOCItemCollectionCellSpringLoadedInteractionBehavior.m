@interface DOCItemCollectionCellSpringLoadedInteractionBehavior
- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4;
- (_TtC26DocumentManagerExecutables52DOCItemCollectionCellSpringLoadedInteractionBehavior)init;
- (void)interactionDidFinish:(id)a3;
@end

@implementation DOCItemCollectionCellSpringLoadedInteractionBehavior

- (BOOL)shouldAllowInteraction:(id)a3 withContext:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = specialized DOCItemCollectionCellSpringLoadedInteractionBehavior.shouldAllow(_:with:)(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (void)interactionDidFinish:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setHighlighted_];
  }
}

- (_TtC26DocumentManagerExecutables52DOCItemCollectionCellSpringLoadedInteractionBehavior)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end