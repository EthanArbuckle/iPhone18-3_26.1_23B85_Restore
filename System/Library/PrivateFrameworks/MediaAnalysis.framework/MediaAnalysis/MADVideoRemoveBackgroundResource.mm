@interface MADVideoRemoveBackgroundResource
+ (id)sharedResource;
- (int64_t)inactiveCost;
@end

@implementation MADVideoRemoveBackgroundResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_21];

  return v5;
}

MADVideoRemoveBackgroundResource *__50__MADVideoRemoveBackgroundResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADVideoRemoveBackgroundResource);

  return v0;
}

- (int64_t)inactiveCost
{
  if (DeviceHasANE())
  {
    return 10;
  }

  else
  {
    return 100;
  }
}

@end