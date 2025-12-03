@interface NTKTimeOffsetManager
+ (id)sharedManager;
- (NTKTimeOffsetManager)init;
- (id)faceDisplayTime;
- (void)dealloc;
@end

@implementation NTKTimeOffsetManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_3 != -1)
  {
    +[NTKTimeOffsetManager sharedManager];
  }

  v3 = sharedManager_manager_2;

  return v3;
}

void __37__NTKTimeOffsetManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(NTKTimeOffsetManager);
  v1 = sharedManager_manager_2;
  sharedManager_manager_2 = v0;
}

- (NTKTimeOffsetManager)init
{
  v7.receiver = self;
  v7.super_class = NTKTimeOffsetManager;
  v2 = [(NTKTimeOffsetManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(NTKTimeOffsetManager *)v2 _loadTimeOffset];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleFaceDefaultsChanged name:@"NTKFaceDefaultsChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__handleFaceLibraryReloaded name:@"NTKFaceLibraryReloadedNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKTimeOffsetManager;
  [(NTKTimeOffsetManager *)&v4 dealloc];
}

- (id)faceDisplayTime
{
  v3 = [MEMORY[0x277CBB700] now];
  v4 = [(NTKTimeOffsetManager *)self displayTimeForRealTime:v3];

  return v4;
}

@end