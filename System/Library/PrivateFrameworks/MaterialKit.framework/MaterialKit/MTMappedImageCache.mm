@interface MTMappedImageCache
+ (id)sharedCache;
@end

@implementation MTMappedImageCache

+ (id)sharedCache
{
  if (sharedCache___once != -1)
  {
    +[MTMappedImageCache sharedCache];
  }

  v3 = sharedCache___cache;

  return v3;
}

uint64_t __33__MTMappedImageCache_sharedCache__block_invoke()
{
  v0 = [MTMappedImageCache alloc];
  v1 = MEMORY[0x277CF0D70];
  v2 = objc_alloc_init(_MTClientDemarcatedCurrentContainerPathProvider);
  v3 = [v1 optionsWithContainerPathProvider:v2];
  v4 = [(MTMappedImageCache *)v0 initWithUniqueIdentifier:@"MTMappedImageCache" options:v3];
  v5 = sharedCache___cache;
  sharedCache___cache = v4;

  v6 = sharedCache___cache;

  return [v6 removeAllImagesWithCompletion:0];
}

@end