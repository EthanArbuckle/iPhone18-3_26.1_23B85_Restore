@interface NDAnalyticsUploadFrameworkAssembly
- (NDAnalyticsUploadFrameworkAssembly)init;
@end

@implementation NDAnalyticsUploadFrameworkAssembly

- (NDAnalyticsUploadFrameworkAssembly)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NDAnalyticsUploadFrameworkAssembly_assemblies;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEBB8, &qword_25BE16720);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BE16710;
  v6 = type metadata accessor for TelemetryAssembly();
  v7 = swift_allocObject();
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_25BE03574();
  *(v5 + 32) = v7;
  *(&self->super.isa + v4) = v5;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(NDAnalyticsUploadFrameworkAssembly *)&v9 init];
}

@end