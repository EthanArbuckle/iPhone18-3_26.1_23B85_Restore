@interface PassportSceneView.CameraNode
- (_TtCC9CoreIDVUI17PassportSceneView10CameraNode)init;
- (_TtCC9CoreIDVUI17PassportSceneView10CameraNode)initWithCoder:(id)coder;
- (void)removeAllActions;
@end

@implementation PassportSceneView.CameraNode

- (_TtCC9CoreIDVUI17PassportSceneView10CameraNode)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *(&self->super.super.isa + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode) = v4;
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(PassportSceneView.CameraNode *)&v7 init];
  sub_245817550();

  return v5;
}

- (_TtCC9CoreIDVUI17PassportSceneView10CameraNode)initWithCoder:(id)coder
{
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)removeAllActions
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PassportSceneView.CameraNode *)&v3 removeAllActions];
  [*&v2[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode] removeAllActions];
}

@end