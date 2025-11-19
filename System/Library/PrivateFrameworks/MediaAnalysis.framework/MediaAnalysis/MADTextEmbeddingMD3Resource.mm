@interface MADTextEmbeddingMD3Resource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD3Resource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_354];

  return v5;
}

MADTextEmbeddingMD3Resource *__45__MADTextEmbeddingMD3Resource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD3Resource);

  return v0;
}

@end