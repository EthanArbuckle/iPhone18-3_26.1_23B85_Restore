@interface NUManagerAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation NUManagerAssembly

- (void)loadInRegistry:(id)registry
{
  publicContainer = [registry publicContainer];
  v3 = [publicContainer registerProtocol:&unk_286E350C0 factory:&__block_literal_global_1];
}

NUArticleContentSizeManager *__36__NUManagerAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  v4 = [NUArticleContentSizeManager alloc];
  v5 = [v3 tagSettings];
  v6 = [(NUArticleContentSizeManager *)v4 initWithTagSettings:v5];

  return v6;
}

@end