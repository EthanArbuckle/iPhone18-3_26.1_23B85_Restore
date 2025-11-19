@interface PassportSceneView.PhoneNode
- (_TtCC9CoreIDVUI17PassportSceneView9PhoneNode)init;
- (_TtCC9CoreIDVUI17PassportSceneView9PhoneNode)initWithCoder:(id)a3;
- (void)removeAllActions;
@end

@implementation PassportSceneView.PhoneNode

- (_TtCC9CoreIDVUI17PassportSceneView9PhoneNode)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_loadTask) = 0;
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)removeAllActions
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(PassportSceneView.PhoneNode *)&v4 removeAllActions];
  v3 = *&v2[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode];
  [v3 removeAllActions];
}

- (_TtCC9CoreIDVUI17PassportSceneView9PhoneNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end