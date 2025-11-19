@interface ComputeServiceProxyScoringService
- (_TtC19NewsPersonalization33ComputeServiceProxyScoringService)init;
@end

@implementation ComputeServiceProxyScoringService

- (_TtC19NewsPersonalization33ComputeServiceProxyScoringService)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC19NewsPersonalization33ComputeServiceProxyScoringService_scoreCache;
  v5 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  sub_1C6CF6434();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *(&self->super.isa + v4) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(ComputeServiceProxyScoringService *)&v8 init];
}

@end