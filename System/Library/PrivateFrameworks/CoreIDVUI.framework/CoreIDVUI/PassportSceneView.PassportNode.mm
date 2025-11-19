@interface PassportSceneView.PassportNode
- (_TtCC9CoreIDVUI17PassportSceneView12PassportNode)initWithCoder:(id)a3;
- (void)removeAllActions;
@end

@implementation PassportSceneView.PassportNode

- (_TtCC9CoreIDVUI17PassportSceneView12PassportNode)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_loadTask) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_shadowNode;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)removeAllActions
{
  v2 = self;
  sub_24581BD04();
}

@end