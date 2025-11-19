@interface PassportSceneView
- (_TtC9CoreIDVUI17PassportSceneView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation PassportSceneView

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_245816010();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(PassportSceneView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24581630C();
}

- (void)removeFromSuperview
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_245816010();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(PassportSceneView *)&v5 removeFromSuperview];
}

- (_TtC9CoreIDVUI17PassportSceneView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end