@interface EGAssembly
- (EGAssembly)init;
@end

@implementation EGAssembly

- (EGAssembly)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___EGAssembly_assemblies;
  sub_25BE5BFA0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BEB60E0;
  v6 = type metadata accessor for EngagementAssembly();
  v7 = swift_allocObject();
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_25BE5C080();
  *(v5 + 32) = v7;
  *(&self->super.isa + v4) = v5;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(EGAssembly *)&v9 init];
}

@end