@interface _SystemEXExtensionIdentityDiscoverer
- (_SystemEXExtensionIdentityDiscoverer)init;
- (void)queryControllerDidUpdate:(id)a3;
@end

@implementation _SystemEXExtensionIdentityDiscoverer

- (_SystemEXExtensionIdentityDiscoverer)init
{
  v3 = OBJC_IVAR____SystemEXExtensionIdentityDiscoverer__publisher;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9248, &qword_1BF4F0868);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_1BF4E7C34();
  *(&self->super.isa + OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _SystemEXExtensionIdentityDiscoverer();
  return [(_SystemEXExtensionIdentityDiscoverer *)&v8 init];
}

- (void)queryControllerDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BF433648(v4);
}

@end