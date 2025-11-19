@interface VCPMADVISceneClassificationResource
+ (id)sharedResource;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
@end

@implementation VCPMADVISceneClassificationResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_35];

  return v5;
}

VCPMADVISceneClassificationResource *__53__VCPMADVISceneClassificationResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(VCPMADVISceneClassificationResource);

  return v0;
}

- (int64_t)activeCost
{
  if (DeviceHasANE())
  {
    return 75;
  }

  else
  {
    return 100;
  }
}

- (int64_t)inactiveCost
{
  if (DeviceHasANE())
  {
    return 35;
  }

  else
  {
    return 100;
  }
}

@end