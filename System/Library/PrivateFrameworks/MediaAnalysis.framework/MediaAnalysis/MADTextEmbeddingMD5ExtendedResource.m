@interface MADTextEmbeddingMD5ExtendedResource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD5ExtendedResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_384];

  return v5;
}

MADTextEmbeddingMD5ExtendedResource *__53__MADTextEmbeddingMD5ExtendedResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD5ExtendedResource);

  return v0;
}

@end