@interface HUComfortSound
+ (id)comfortSoundWithAsset:(id)a3;
+ (id)defaultComfortSoundForGroup:(unint64_t)a3;
+ (id)soundWithName:(id)a3 path:(id)a4 andGroup:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstalled;
- (HUComfortSound)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)localizedName;
- (id)nextFilePath;
- (void)encodeWithCoder:(id)a3;
- (void)nextFilePath;
@end

@implementation HUComfortSound

+ (id)comfortSoundWithAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 properties];
  v5 = [v4 valueForKey:@"SoundName"];
  v6 = [v3 localURL];
  v7 = [v3 properties];
  v8 = [v7 valueForKey:@"SoundGroup"];
  v9 = +[HUComfortSound soundWithName:path:andGroup:](HUComfortSound, "soundWithName:path:andGroup:", v5, v6, [v8 unsignedIntegerValue]);

  [v9 setAsset:v3];

  return v9;
}

+ (id)defaultComfortSoundForGroup:(unint64_t)a3
{
  if (a3 - 1 > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E85CA1B8[a3 - 1];
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:v4 withExtension:@"m4a"];
  v7 = [HUComfortSound soundWithName:v4 path:v6 andGroup:a3];

  return v7;
}

+ (id)soundWithName:(id)a3 path:(id)a4 andGroup:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 length])
  {
    v9 = objc_alloc_init(HUComfortSound);
    [(HUComfortSound *)v9 setName:v7];
    [(HUComfortSound *)v9 setPath:v8];
    [(HUComfortSound *)v9 setSoundGroup:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HUComfortSound)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HUComfortSound;
  v5 = [(HUComfortSound *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HUComfortSoundNameKey"];
    [(HUComfortSound *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HUComfortSoundPathKey"];
    [(HUComfortSound *)v5 setPath:v7];

    -[HUComfortSound setSoundGroup:](v5, "setSoundGroup:", [v4 decodeIntegerForKey:@"HUComfortSoundGroupKey"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HUComfortSoundAssetKey"];
    [(HUComfortSound *)v5 setAsset:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HUComfortSound *)self name];
  [v4 encodeObject:v5 forKey:@"HUComfortSoundNameKey"];

  v6 = [(HUComfortSound *)self path];
  [v4 encodeObject:v6 forKey:@"HUComfortSoundPathKey"];

  [v4 encodeInteger:-[HUComfortSound soundGroup](self forKey:{"soundGroup"), @"HUComfortSoundGroupKey"}];
  v7 = [(HUComfortSound *)self asset];
  [v4 encodeObject:v7 forKey:@"HUComfortSoundAssetKey"];
}

- (NSString)localizedName
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HUComfortSound *)self name];
  v4 = [v2 stringWithFormat:@"%@_%@", @"ComfortSound", v3];
  v5 = hearingLocString(v4);

  return v5;
}

- (id)nextFilePath
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [(HUComfortSound *)self path];

  if (!v3)
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
    v6 = [(HUComfortSound *)self path];
    v7 = [v6 pathExtension];
    v8 = [v7 isEqualToString:@"m4a"];

    if (v8)
    {
      v20[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v10 = 0;
LABEL_16:
      v14 = [HUComfortSoundsShuffler shufflerWithArray:v9];
      v15 = self->_fileShuffler;
      self->_fileShuffler = v14;

      fileShuffler = self->_fileShuffler;
      goto LABEL_17;
    }

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = 0;
    v12 = [v11 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:&v19];
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
  v16 = [(HUComfortSoundsShuffler *)fileShuffler nextObject];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __30__HUComfortSound_nextFilePath__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"m4a"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 path];
    v6 = [(HUComfortSound *)self path];
    v7 = [v5 isEqual:v6];
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
  v5 = [(HUComfortSound *)self name];
  v6 = [(HUComfortSound *)self soundGroup];
  v7 = [(HUComfortSound *)self path];
  v8 = [v3 stringWithFormat:@"%@ - %@ [%lu] = %@", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isInstalled
{
  v3 = [(HUComfortSound *)self asset];
  if (v3)
  {
    v4 = [(HUComfortSound *)self asset];
    v5 = [v4 isInstalled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)nextFilePath
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Error loading assets %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end