@interface DOCItemCollectionCellSpringLoadedInteractionBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
- (_TtC26DocumentManagerExecutables52DOCItemCollectionCellSpringLoadedInteractionBehavior)init;
- (void)interactionDidFinish:(id)finish;
@end

@implementation DOCItemCollectionCellSpringLoadedInteractionBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = specialized DOCItemCollectionCellSpringLoadedInteractionBehavior.shouldAllow(_:with:)(context);

  swift_unknownObjectRelease();
  return v8 & 1;
}

- (void)interactionDidFinish:(id)finish
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