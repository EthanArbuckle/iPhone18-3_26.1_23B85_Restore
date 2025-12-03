@interface HUComfortSound
+ (id)comfortSoundWithAsset:(id)asset;
+ (id)defaultComfortSoundForGroup:(unint64_t)group;
+ (id)soundWithName:(id)name path:(id)path andGroup:(unint64_t)group;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstalled;
- (HUComfortSound)initWithCoder:(id)coder;
- (NSString)description;
- (NSString)localizedName;
- (id)nextFilePath;
- (void)encodeWithCoder:(id)coder;
- (void)nextFilePath;
@end

@implementation HUComfortSound

+ (id)comfortSoundWithAsset:(id)asset
{
  assetCopy = asset;
  properties = [assetCopy properties];
  v5 = [properties valueForKey:@"SoundName"];
  localURL = [assetCopy localURL];
  properties2 = [assetCopy properties];
  v8 = [properties2 valueForKey:@"SoundGroup"];
  v9 = +[HUComfortSound soundWithName:path:andGroup:](HUComfortSound, "soundWithName:path:andGroup:", v5, localURL, [v8 unsignedIntegerValue]);

  [v9 setAsset:assetCopy];

  return v9;
}

+ (id)defaultComfortSoundForGroup:(unint64_t)group
{
  if (group - 1 > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E85CA1B8[group - 1];
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:v4 withExtension:@"m4a"];
  v7 = [HUComfortSound soundWithName:v4 path:v6 andGroup:group];

  return v7;
}

+ (id)soundWithName:(id)name path:(id)path andGroup:(unint64_t)group
{
  nameCopy = name;
  pathCopy = path;
  if ([nameCopy length])
  {
    v9 = objc_alloc_init(HUComfortSound);
    [(HUComfortSound *)v9 setName:nameCopy];
    [(HUComfortSound *)v9 setPath:pathCopy];
    [(HUComfortSound *)v9 setSoundGroup:group];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HUComfortSound)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HUComfortSound;
  v5 = [(HUComfortSound *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HUComfortSoundNameKey"];
    [(HUComfortSound *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HUComfortSoundPathKey"];
    [(HUComfortSound *)v5 setPath:v7];

    -[HUComfortSound setSoundGroup:](v5, "setSoundGroup:", [coderCopy decodeIntegerForKey:@"HUComfortSoundGroupKey"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HUComfortSoundAssetKey"];
    [(HUComfortSound *)v5 setAsset:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(HUComfortSound *)self name];
  [coderCopy encodeObject:name forKey:@"HUComfortSoundNameKey"];

  path = [(HUComfortSound *)self path];
  [coderCopy encodeObject:path forKey:@"HUComfortSoundPathKey"];

  [coderCopy encodeInteger:-[HUComfortSound soundGroup](self forKey:{"soundGroup"), @"HUComfortSoundGroupKey"}];
  asset = [(HUComfortSound *)self asset];
  [coderCopy encodeObject:asset forKey:@"HUComfortSoundAssetKey"];
}

- (NSString)localizedName
{
  v2 = MEMORY[0x1E696AEC0];
  name = [(HUComfortSound *)self name];
  v4 = [v2 stringWithFormat:@"%@_%@", @"ComfortSound", name];
  v5 = hearingLocString(v4);

  return v5;
}

- (id)nextFilePath
{
  v20[1] = *MEMORY[0x1E69E9840];
  path = [(HUComfortSound *)self path];

  if (!path)
  {
    v4 = HCLogComfortSounds();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [HUComfortSound nextFilePath];
    }
  }

  fileShuffler = self->_fileShuffler;
  if (!fileShuffler)
  {
    path2 = [(HUComfortSound *)self path];
    pathExtension = [path2 pathExtension];
    v8 = [pathExtension isEqualToString:@"m4a"];

    if (v8)
    {
      v20[0] = path2;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v10 = 0;
LABEL_16:
      v14 = [HUComfortSoundsShuffler shufflerWithArray:v9];
      v15 = self->_fileShuffler;
      self->_fileShuffler = v14;

      fileShuffler = self->_fileShuffler;
      goto LABEL_17;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v19 = 0;
    v12 = [defaultManager contentsOfDirectoryAtURL:path2 includingPropertiesForKeys:0 options:0 error:&v19];
    v10 = v19;

    if (v10)
    {
      v13 = HCLogComfortSounds();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [HUComfortSound nextFilePath];
      }
    }

    else if ([v12 count])
    {
      v9 = [v12 ax_filteredArrayUsingBlock:&__block_literal_global_2];
      goto LABEL_15;
    }

    v9 = 0;
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
  nextObject = [(HUComfortSoundsShuffler *)fileShuffler nextObject];
  v17 = *MEMORY[0x1E69E9840];

  return nextObject;
}

uint64_t __30__HUComfortSound_nextFilePath__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"m4a"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    path = [equalCopy path];
    path2 = [(HUComfortSound *)self path];
    v7 = [path isEqual:path2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = HUComfortSound;
  v4 = [(HUComfortSound *)&v10 description];
  name = [(HUComfortSound *)self name];
  soundGroup = [(HUComfortSound *)self soundGroup];
  path = [(HUComfortSound *)self path];
  v8 = [v3 stringWithFormat:@"%@ - %@ [%lu] = %@", v4, name, soundGroup, path];

  return v8;
}

- (BOOL)isInstalled
{
  asset = [(HUComfortSound *)self asset];
  if (asset)
  {
    asset2 = [(HUComfortSound *)self asset];
    isInstalled = [asset2 isInstalled];
  }

  else
  {
    isInstalled = 0;
  }

  return isInstalled;
}

- (void)nextFilePath
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Error loading assets %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end