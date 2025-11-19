@interface VCPMADVIVisualSearchResource
+ (id)sharedResource;
@end

@implementation VCPMADVIVisualSearchResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_81];

  return v5;
}

VCPMADVIVisualSearchResource *__46__VCPMADVIVisualSearchResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(VCPMADVIVisualSearchResource);

  return v0;
}

@end