@interface GKImageCache
- (GKImageCache)initWithName:(id)name maxCount:(unint64_t)count;
@end

@implementation GKImageCache

- (GKImageCache)initWithName:(id)name maxCount:(unint64_t)count
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = GKImageCache;
  v7 = [(GKImageCache *)&v13 init];
  v8 = v7;
  if (v7)
  {
    [(GKImageCache *)v7 setName:nameCopy];
    [(GKImageCache *)v8 setCountLimit:count];
    v9 = +[GKScreenConfigurationController sharedController];
    [v9 registerListener:v8];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    didEnterBackground = [MEMORY[0x277D0BFD8] didEnterBackground];
    [defaultCenter addObserver:v8 selector:sel_applicationDidEnterBackground_ name:didEnterBackground object:0];
  }

  return v8;
}

@end