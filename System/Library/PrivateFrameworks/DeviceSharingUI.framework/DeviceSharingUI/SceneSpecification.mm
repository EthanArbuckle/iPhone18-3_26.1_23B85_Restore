@interface SceneSpecification
- (_TtC15DeviceSharingUI18SceneSpecification)init;
- (id)userActivity;
@end

@implementation SceneSpecification

- (_TtC15DeviceSharingUI18SceneSpecification)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15DeviceSharingUI18SceneSpecification_target) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneSpecification();
  return [(SceneSpecification *)&v3 init];
}

- (id)userActivity
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC15DeviceSharingUI18SceneSpecification_target))
  {

    return 0;
  }

  else
  {
    result = sub_248AA3C8C();
    __break(1u);
  }

  return result;
}

@end