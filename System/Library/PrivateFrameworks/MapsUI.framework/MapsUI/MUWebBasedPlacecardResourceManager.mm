@interface MUWebBasedPlacecardResourceManager
+ (id)sharedInstance;
- (id)bundleDirectory;
@end

@implementation MUWebBasedPlacecardResourceManager

- (id)bundleDirectory
{
  directoryURL = [(_MUWebBasedPlacecardResourceManager *)self->_manager directoryURL];
  path = [directoryURL path];

  return path;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_20185 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_20185, &__block_literal_global_20186);
  }

  v3 = sharedInstance_resourceManager;

  return v3;
}

uint64_t __52__MUWebBasedPlacecardResourceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MUWebBasedPlacecardResourceManager);
  v1 = sharedInstance_resourceManager;
  sharedInstance_resourceManager = v0;

  v2 = +[_TtC6MapsUI35_MUWebBasedPlacecardResourceManager shared];
  v3 = *(sharedInstance_resourceManager + 8);
  *(sharedInstance_resourceManager + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end