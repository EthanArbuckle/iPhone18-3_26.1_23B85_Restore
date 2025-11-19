@interface ActivitySession.SceneAssociationCoordinator
- (_TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator)init;
- (void)dealloc;
- (void)sceneWasDiscarded:(id)a3 branchIndex:(int64_t)a4;
- (void)scenesInBranchDidChangeWithBranchIndex:(int64_t)a3;
@end

@implementation ActivitySession.SceneAssociationCoordinator

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager);
  v3 = self;
  [v2 removeDelegate_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ActivitySession.SceneAssociationCoordinator();
  [(ActivitySession.SceneAssociationCoordinator *)&v4 dealloc];
}

- (_TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneWasDiscarded:(id)a3 branchIndex:(int64_t)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ActivitySession.SceneAssociationCoordinator.sceneWasDiscarded(_:branchIndex:)(v10, a4);
}

- (void)scenesInBranchDidChangeWithBranchIndex:(int64_t)a3
{
  v4 = self;
  ActivitySession.SceneAssociationCoordinator.scenesInBranchDidChange(branchIndex:)(a3);
}

@end