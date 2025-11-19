@interface VCPMADVIRectangleDetectionResource
+ (id)sharedResource;
@end

@implementation VCPMADVIRectangleDetectionResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_63];

  return v5;
}

VCPMADVIRectangleDetectionResource *__52__VCPMADVIRectangleDetectionResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(VCPMADVIRectangleDetectionResource);

  return v0;
}

@end