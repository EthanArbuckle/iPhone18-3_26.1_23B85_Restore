@interface ISPlatformInfo
+ (id)sharedInstance;
- (BOOL)_platform:(unint64_t)a3 withinAllowedPlatforms:(id)a4 allowNative:(BOOL)a5;
- (BOOL)supportsRequestingIconStacksForPlatform:(unint64_t)a3;
- (BOOL)supportsRequestingLayerStacksForPlatform:(unint64_t)a3;
- (BOOL)supportsRequestingMultisizedImagesForPlatform:(unint64_t)a3;
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

- (BOOL)_platform:(unint64_t)a3 withinAllowedPlatforms:(id)a4 allowNative:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (!a3 && v5)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IFPlatformInfo nativePlatform](self, "nativePlatform")}];
      v11 = [v8 containsObject:v12];
    }
  }

  return v11;
}

- (BOOL)supportsRequestingLayerStacksForPlatform:(unint64_t)a3
{
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1A656A0, &unk_1F1A656B8, 0}];
  LOBYTE(a3) = [(ISPlatformInfo *)self _platform:a3 withinAllowedPlatforms:v5 allowNative:1];

  return a3;
}

- (BOOL)supportsRequestingMultisizedImagesForPlatform:(unint64_t)a3
{
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1A656D0, &unk_1F1A656E8, &unk_1F1A65700, &unk_1F1A65718, &unk_1F1A656B8, 0}];
  LOBYTE(a3) = [(ISPlatformInfo *)self _platform:a3 withinAllowedPlatforms:v5 allowNative:1];

  return a3;
}

- (BOOL)supportsRequestingIconStacksForPlatform:(unint64_t)a3
{
  v5 = +[ISDefaults sharedInstance];
  v6 = [v5 isSolariumEnabled];

  if (!v6)
  {
    return 0;
  }

  v7 = +[ISDefaults sharedInstance];
  v8 = [v7 iconStackAppIconsAllowed];

  if (!v8)
  {
    return 0;
  }

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1A65700, &unk_1F1A656D0, &unk_1F1A656E8, &unk_1F1A65718, &unk_1F1A656B8, 0}];
  v10 = [(ISPlatformInfo *)self _platform:a3 withinAllowedPlatforms:v9 allowNative:1];

  return v10;
}

@end