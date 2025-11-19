@interface MADImageRemoveBackgroundResource
+ (id)sharedResource;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
- (void)purge;
@end

@implementation MADImageRemoveBackgroundResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_103];

  return v5;
}

MADImageRemoveBackgroundResource *__50__MADImageRemoveBackgroundResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADImageRemoveBackgroundResource);

  return v0;
}

- (int64_t)activeCost
{
  if (!DeviceHasANE())
  {
    return 100;
  }

  if (self->_maskOnly)
  {
    return 50;
  }

  return 100;
}

- (int64_t)inactiveCost
{
  if (!DeviceHasANE())
  {
    return 100;
  }

  if (self->_maskOnly)
  {
    return 10;
  }

  return 15;
}

- (void)purge
{
  cachedMaskState = self->_cachedMaskState;
  self->_cachedMaskState = 0;

  v4.receiver = self;
  v4.super_class = MADImageRemoveBackgroundResource;
  [(VCPMADVisionResource *)&v4 purge];
}

@end