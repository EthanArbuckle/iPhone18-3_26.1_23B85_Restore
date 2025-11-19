@interface HMDMobileAssetManagerFactory
+ (id)makeInstanceWithContext:(id)a3;
- (HMDMobileAssetManagerFactory)init;
@end

@implementation HMDMobileAssetManagerFactory

+ (id)makeInstanceWithContext:(id)a3
{
  v8[3] = &type metadata for DefaultMobileAssetManagerDataSource;
  v8[4] = &off_283CE7308;
  type metadata accessor for MobileAssetManager();
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_0(v8, &type metadata for DefaultMobileAssetManagerDataSource);
  v5 = a3;
  v6 = sub_229668F10(v5, v4);

  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

- (HMDMobileAssetManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDMobileAssetManagerFactory;
  return [(HMDMobileAssetManagerFactory *)&v3 init];
}

@end