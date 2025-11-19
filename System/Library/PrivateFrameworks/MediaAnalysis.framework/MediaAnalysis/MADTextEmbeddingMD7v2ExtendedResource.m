@interface MADTextEmbeddingMD7v2ExtendedResource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD7v2ExtendedResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_424];

  return v5;
}

MADTextEmbeddingMD7v2ExtendedResource *__55__MADTextEmbeddingMD7v2ExtendedResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD7v2ExtendedResource);

  return v0;
}

@end