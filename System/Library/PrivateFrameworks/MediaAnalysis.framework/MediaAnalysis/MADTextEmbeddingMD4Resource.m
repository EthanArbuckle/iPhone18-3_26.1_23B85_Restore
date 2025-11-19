@interface MADTextEmbeddingMD4Resource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD4Resource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_363];

  return v5;
}

MADTextEmbeddingMD4Resource *__45__MADTextEmbeddingMD4Resource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD4Resource);

  return v0;
}

@end