@interface MADTextEmbeddingMD6ExtendedResource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD6ExtendedResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_405];

  return v5;
}

MADTextEmbeddingMD6ExtendedResource *__53__MADTextEmbeddingMD6ExtendedResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD6ExtendedResource);

  return v0;
}

@end