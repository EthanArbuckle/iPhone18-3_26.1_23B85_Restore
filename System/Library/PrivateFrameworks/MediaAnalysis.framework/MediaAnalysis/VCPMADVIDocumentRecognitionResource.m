@interface VCPMADVIDocumentRecognitionResource
+ (id)sharedResource;
- (int64_t)activeCost;
- (int64_t)inactiveCost;
@end

@implementation VCPMADVIDocumentRecognitionResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_43];

  return v5;
}

VCPMADVIDocumentRecognitionResource *__53__VCPMADVIDocumentRecognitionResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(VCPMADVIDocumentRecognitionResource);

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