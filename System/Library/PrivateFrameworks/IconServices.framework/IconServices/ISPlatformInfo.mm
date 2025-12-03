@interface ISPlatformInfo
+ (id)sharedInstance;
- (BOOL)_platform:(unint64_t)_platform withinAllowedPlatforms:(id)platforms allowNative:(BOOL)native;
- (BOOL)supportsRequestingIconStacksForPlatform:(unint64_t)platform;
- (BOOL)supportsRequestingLayerStacksForPlatform:(unint64_t)platform;
- (BOOL)supportsRequestingMultisizedImagesForPlatform:(unint64_t)platform;
@end

@implementation ISPlatformInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[ISPlatformInfo sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_5;

  return v3;
}

uint64_t __32__ISPlatformInfo_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_5 = objc_alloc_init(ISPlatformInfo);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_platform:(unint64_t)_platform withinAllowedPlatforms:(id)platforms allowNative:(BOOL)native
{
  nativeCopy = native;
  platformsCopy = platforms;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_platform];
  v10 = [platformsCopy containsObject:v9];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (!_platform && nativeCopy)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IFPlatformInfo nativePlatform](self, "nativePlatform")}];
      v11 = [platformsCopy containsObject:v12];
    }
  }

  return v11;
}

- (BOOL)supportsRequestingLayerStacksForPlatform:(unint64_t)platform
{
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1A656A0, &unk_1F1A656B8, 0}];
  LOBYTE(platform) = [(ISPlatformInfo *)self _platform:platform withinAllowedPlatforms:v5 allowNative:1];

  return platform;
}

- (BOOL)supportsRequestingMultisizedImagesForPlatform:(unint64_t)platform
{
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1A656D0, &unk_1F1A656E8, &unk_1F1A65700, &unk_1F1A65718, &unk_1F1A656B8, 0}];
  LOBYTE(platform) = [(ISPlatformInfo *)self _platform:platform withinAllowedPlatforms:v5 allowNative:1];

  return platform;
}

- (BOOL)supportsRequestingIconStacksForPlatform:(unint64_t)platform
{
  v5 = +[ISDefaults sharedInstance];
  isSolariumEnabled = [v5 isSolariumEnabled];

  if (!isSolariumEnabled)
  {
    return 0;
  }

  v7 = +[ISDefaults sharedInstance];
  iconStackAppIconsAllowed = [v7 iconStackAppIconsAllowed];

  if (!iconStackAppIconsAllowed)
  {
    return 0;
  }

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1A65700, &unk_1F1A656D0, &unk_1F1A656E8, &unk_1F1A65718, &unk_1F1A656B8, 0}];
  v10 = [(ISPlatformInfo *)self _platform:platform withinAllowedPlatforms:v9 allowNative:1];

  return v10;
}

@end