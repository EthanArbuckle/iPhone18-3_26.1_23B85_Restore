@interface SafetyCheckHelper
- (_TtC10CallsAppUI17SafetyCheckHelper)init;
@end

@implementation SafetyCheckHelper

- (_TtC10CallsAppUI17SafetyCheckHelper)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10CallsAppUI17SafetyCheckHelper_blockingController;
  sub_1CFC9D348();
  *(&self->super.isa + v4) = sub_1CFC9D338();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SafetyCheckHelper *)&v6 init];
}

@end