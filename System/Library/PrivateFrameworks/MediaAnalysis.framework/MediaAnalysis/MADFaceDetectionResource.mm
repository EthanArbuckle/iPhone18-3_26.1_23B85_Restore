@interface MADFaceDetectionResource
+ (id)sharedResource;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
@end

@implementation MADFaceDetectionResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_64];

  return v5;
}

MADFaceDetectionResource *__42__MADFaceDetectionResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADFaceDetectionResource);

  return v0;
}

- (int64_t)activeCost
{
  if (DeviceHasANE())
  {
    return 20;
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