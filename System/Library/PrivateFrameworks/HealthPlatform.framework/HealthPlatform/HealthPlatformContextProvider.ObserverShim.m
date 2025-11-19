@interface HealthPlatformContextProvider.ObserverShim
- (_TtCC14HealthPlatform29HealthPlatformContextProvider12ObserverShim)init;
- (void)profileListDidUpdateForProfileStore:(id)a3;
@end

@implementation HealthPlatformContextProvider.ObserverShim

- (void)profileListDidUpdateForProfileStore:(id)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong[5];
    v6 = Strong[6];
    v7 = Strong;
    __swift_project_boxed_opaque_existential_1(Strong + 2, v5);
    v8 = *(v6 + 24);
    v9 = self;

    v8(sub_228531788, v7, v5, v6);
  }
}

- (_TtCC14HealthPlatform29HealthPlatformContextProvider12ObserverShim)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(HealthPlatformContextProvider.ObserverShim *)&v5 init];
}

@end