@interface MADTextEmbeddingMD1Resource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD1Resource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_0];

  return v5;
}

MADTextEmbeddingMD1Resource *__45__MADTextEmbeddingMD1Resource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD1Resource);

  return v0;
}

@end