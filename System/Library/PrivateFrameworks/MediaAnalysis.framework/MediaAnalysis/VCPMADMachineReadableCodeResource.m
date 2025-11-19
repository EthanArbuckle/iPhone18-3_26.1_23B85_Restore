@interface VCPMADMachineReadableCodeResource
+ (id)sharedResource;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
@end

@implementation VCPMADMachineReadableCodeResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_41];

  return v5;
}

VCPMADMachineReadableCodeResource *__51__VCPMADMachineReadableCodeResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(VCPMADMachineReadableCodeResource);

  return v0;
}

- (int64_t)activeCost
{
  if (DeviceHasANE())
  {
    return 30;
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
    return 5;
  }

  else
  {
    return 100;
  }
}

@end