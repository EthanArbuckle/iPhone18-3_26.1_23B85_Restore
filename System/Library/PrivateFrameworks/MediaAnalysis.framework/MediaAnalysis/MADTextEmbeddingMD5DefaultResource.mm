@interface MADTextEmbeddingMD5DefaultResource
+ (id)sharedResource;
@end

@implementation MADTextEmbeddingMD5DefaultResource

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_377];

  return v5;
}

MADTextEmbeddingMD5DefaultResource *__52__MADTextEmbeddingMD5DefaultResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(MADTextEmbeddingMD5DefaultResource);

  return v0;
}

@end