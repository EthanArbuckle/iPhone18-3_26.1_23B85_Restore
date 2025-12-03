@interface TSFrameworkAssembly
- (TSFrameworkAssembly)init;
- (TSFrameworkAssembly)initWithNewsAppConfigurationManager:(id)manager;
@end

@implementation TSFrameworkAssembly

- (TSFrameworkAssembly)initWithNewsAppConfigurationManager:(id)manager
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(type metadata accessor for FeatureAvailabilityProvider());
  v6 = swift_unknownObjectRetain_n();
  *(&self->super.isa + OBJC_IVAR___TSFrameworkAssembly_featureAvailabilityProvider) = FeatureAvailabilityProvider.init(appConfigurationManager:)(v6);
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(TSFrameworkAssembly *)&v9 init];
  swift_unknownObjectRelease();
  return v7;
}

- (TSFrameworkAssembly)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end