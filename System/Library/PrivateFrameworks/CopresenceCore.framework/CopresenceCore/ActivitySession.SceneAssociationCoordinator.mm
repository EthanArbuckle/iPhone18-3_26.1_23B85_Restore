@interface ActivitySession.SceneAssociationCoordinator
- (_TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator)init;
- (void)dealloc;
- (void)sceneWasDiscarded:(id)discarded branchIndex:(int64_t)index;
- (void)scenesInBranchDidChangeWithBranchIndex:(int64_t)index;
@end

@implementation ActivitySession.SceneAssociationCoordinator

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager);
  selfCopy = self;
  [v2 removeDelegate_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ActivitySession.SceneAssociationCoordinator();
  [(ActivitySession.SceneAssociationCoordinator *)&v4 dealloc];
}

- (_TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneWasDiscarded:(id)discarded branchIndex:(int64_t)index
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ActivitySession.SceneAssociationCoordinator.sceneWasDiscarded(_:branchIndex:)(v10, index);
}

- (void)scenesInBranchDidChangeWithBranchIndex:(int64_t)index
{
  selfCopy = self;
  ActivitySession.SceneAssociationCoordinator.scenesInBranchDidChange(branchIndex:)(index);
}

@end