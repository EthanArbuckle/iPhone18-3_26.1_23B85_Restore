@interface MADTextEmbeddingMD7v2DefaultResource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD7v2DefaultResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_417];

  return v5;
}

MADTextEmbeddingMD7v2DefaultResource *__54__MADTextEmbeddingMD7v2DefaultResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD7v2DefaultResource);

  return v0;
}

@end