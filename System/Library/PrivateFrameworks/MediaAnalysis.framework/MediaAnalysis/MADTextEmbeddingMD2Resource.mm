@interface MADTextEmbeddingMD2Resource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD2Resource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_346];

  return v5;
}

MADTextEmbeddingMD2Resource *__45__MADTextEmbeddingMD2Resource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD2Resource);

  return v0;
}

@end