@interface PBUIWallpaperDefaultConfiguration
- (BOOL)isEqual:(id)a3;
- (PBUIWallpaperDefaultConfiguration)init;
- (PBUIWallpaperDefaultConfiguration)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initColorWithColor:(id)a3;
- (id)initColorWithColorName:(id)a3;
- (id)initGradientWithGradient:(id)a3;
- (id)initProceduralWithIdentifier:(id)a3 options:(id)a4;
- (id)initStaticWithImageURL:(id)a3;
- (id)initVideoWithStaticImageURL:(id)a3 videoURL:(id)a4;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBUIWallpaperDefaultConfiguration

- (id)initStaticWithImageURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 1;
    v7 = [v4 copy];
    staticImageURL = v6->_staticImageURL;
    v6->_staticImageURL = v7;
  }

  return v6;
}

- (id)initVideoWithStaticImageURL:(id)a3 videoURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PBUIWallpaperDefaultConfiguration;
  v8 = [(PBUIWallpaperDefaultConfiguration *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_wallpaperType = 3;
    v10 = [v6 copy];
    staticImageURL = v9->_staticImageURL;
    v9->_staticImageURL = v10;

    v12 = [v7 copy];
    videoURL = v9->_videoURL;
    v9->_videoURL = v12;
  }

  return v9;
}

- (id)initProceduralWithIdentifier:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PBUIWallpaperDefaultConfiguration;
  v8 = [(PBUIWallpaperDefaultConfiguration *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_wallpaperType = 2;
    v10 = [v6 copy];
    proceduralWallpaperIdentifier = v9->_proceduralWallpaperIdentifier;
    v9->_proceduralWallpaperIdentifier = v10;

    v12 = [v7 copy];
    proceduralWallpaperOptions = v9->_proceduralWallpaperOptions;
    v9->_proceduralWallpaperOptions = v12;
  }

  return v9;
}

- (id)initColorWithColor:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 4;
    v7 = [v4 copy];
    wallpaperColor = v6->_wallpaperColor;
    v6->_wallpaperColor = v7;
  }

  return v6;
}

- (id)initColorWithColorName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 4;
    v7 = [v4 copy];
    wallpaperColorName = v6->_wallpaperColorName;
    v6->_wallpaperColorName = v7;
  }

  return v6;
}

- (id)initGradientWithGradient:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 5;
    v7 = [v4 copy];
    wallpaperGradient = v6->_wallpaperGradient;
    v6->_wallpaperGradient = v7;
  }

  return v6;
}

- (PBUIWallpaperDefaultConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PBUIWallpaperDefaultConfiguration;
  result = [(PBUIWallpaperDefaultConfiguration *)&v3 init];
  if (result)
  {
    result->_wallpaperType = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v29 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperType];
      if (v8 == [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperType]&& ([(PBUIWallpaperDefaultConfiguration *)self staticImageURL], v9 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 staticImageURL], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(PBUIWallpaperDefaultConfiguration *)self videoURL], v12 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 videoURL], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier], v15 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 proceduralWallpaperIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17) && ([(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions], v18 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 proceduralWallpaperOptions], v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, v20) && ([(PBUIWallpaperDefaultConfiguration *)self wallpaperColor], v21 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperColor], v22 = objc_claimAutoreleasedReturnValue(), v23 = BSEqualObjects(), v22, v21, v23) && ([(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName], v24 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperColorName], v25 = objc_claimAutoreleasedReturnValue(), v26 = BSEqualObjects(), v25, v24, v26))
      {
        v27 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
        v28 = [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperGradient];
        v29 = BSEqualObjects();
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

- (unint64_t)hash
{
  v3 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperType];
  v4 = [(PBUIWallpaperDefaultConfiguration *)self staticImageURL];
  v5 = [v4 hash] + v3;
  v6 = [(PBUIWallpaperDefaultConfiguration *)self videoURL];
  v7 = [v6 hash];
  v8 = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier];
  v9 = v5 + v7 + [v8 hash];
  v10 = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions];
  v11 = [v10 hash];
  v12 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColor];
  v13 = v11 + [v12 hash];
  v14 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName];
  v15 = v9 + v13 + [v14 hash];
  v16 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
  v17 = [v16 hash];

  return v15 + v17;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperDefaultConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = PBUIStringForWallpaperType([(PBUIWallpaperDefaultConfiguration *)self wallpaperType]);
  v6 = [v4 appendObject:v5 withName:@"wallpaperType"];

  v7 = [(PBUIWallpaperDefaultConfiguration *)self staticImageURL];
  v8 = [v4 appendObject:v7 withName:@"staticImageURL"];

  v9 = [(PBUIWallpaperDefaultConfiguration *)self videoURL];
  v10 = [v4 appendObject:v9 withName:@"videoURL"];

  v11 = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier];
  v12 = [v4 appendObject:v11 withName:@"proceduralWallpaperIdentifier"];

  v13 = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions];
  v14 = [v4 appendObject:v13 withName:@"proceduralWallpaperOptions"];

  v15 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColor];
  v16 = [v4 appendObject:v15 withName:@"wallpaperColor"];

  v17 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName];
  v18 = [v4 appendObject:v17 withName:@"wallpaperColorName"];

  v19 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
  v20 = [v4 appendObject:v19 withName:@"wallpaperGradient"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperDefaultConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = PBUIStringForWallpaperType([(PBUIWallpaperDefaultConfiguration *)self wallpaperType]);
  [v4 encodeObject:v5 forKey:@"wallpaperType"];

  v6 = [(PBUIWallpaperDefaultConfiguration *)self staticImageURL];
  [v4 encodeObject:v6 forKey:@"staticImageURL"];

  v7 = [(PBUIWallpaperDefaultConfiguration *)self videoURL];
  [v4 encodeObject:v7 forKey:@"videoURL"];

  v8 = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier];
  [v4 encodeObject:v8 forKey:@"proceduralWallpaperIdentifier"];

  v9 = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions];
  [v4 encodeObject:v9 forKey:@"proceduralWallpaperOptions"];

  v10 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColor];
  [v4 encodeObject:v10 forKey:@"wallpaperColor"];

  v11 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName];
  [v4 encodeObject:v11 forKey:@"wallpaperColorName"];

  v12 = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
  [v4 encodeObject:v12 forKey:@"wallpaperGradient"];
}

- (PBUIWallpaperDefaultConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v30 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"wallpaperType"];
    v5->_wallpaperType = PBUIWallpaperTypeForString(v7);

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"staticImageURL"];
    staticImageURL = v5->_staticImageURL;
    v5->_staticImageURL = v9;

    v11 = objc_opt_self();
    v12 = [v4 decodeObjectOfClass:v11 forKey:@"videoURL"];
    videoURL = v5->_videoURL;
    v5->_videoURL = v12;

    v14 = objc_opt_self();
    v15 = [v4 decodeObjectOfClass:v14 forKey:@"proceduralWallpaperIdentifier"];
    proceduralWallpaperIdentifier = v5->_proceduralWallpaperIdentifier;
    v5->_proceduralWallpaperIdentifier = v15;

    v17 = objc_opt_self();
    v18 = [v4 decodeObjectOfClass:v17 forKey:@"wallpaperThumbnailImageData"];
    proceduralWallpaperOptions = v5->_proceduralWallpaperOptions;
    v5->_proceduralWallpaperOptions = v18;

    v20 = objc_opt_self();
    v21 = [v4 decodeObjectOfClass:v20 forKey:@"wallpaperColor"];
    wallpaperColor = v5->_wallpaperColor;
    v5->_wallpaperColor = v21;

    v23 = objc_opt_self();
    v24 = [v4 decodeObjectOfClass:v23 forKey:@"wallpaperColorName"];
    wallpaperColorName = v5->_wallpaperColorName;
    v5->_wallpaperColorName = v24;

    v26 = objc_opt_self();
    v27 = [v4 decodeObjectOfClass:v26 forKey:@"wallpaperGradient"];
    wallpaperGradient = v5->_wallpaperGradient;
    v5->_wallpaperGradient = v27;
  }

  return v5;
}

@end