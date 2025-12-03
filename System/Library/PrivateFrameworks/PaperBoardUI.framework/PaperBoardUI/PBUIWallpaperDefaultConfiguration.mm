@interface PBUIWallpaperDefaultConfiguration
- (BOOL)isEqual:(id)equal;
- (PBUIWallpaperDefaultConfiguration)init;
- (PBUIWallpaperDefaultConfiguration)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initColorWithColor:(id)color;
- (id)initColorWithColorName:(id)name;
- (id)initGradientWithGradient:(id)gradient;
- (id)initProceduralWithIdentifier:(id)identifier options:(id)options;
- (id)initStaticWithImageURL:(id)l;
- (id)initVideoWithStaticImageURL:(id)l videoURL:(id)rL;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBUIWallpaperDefaultConfiguration

- (id)initStaticWithImageURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 1;
    v7 = [lCopy copy];
    staticImageURL = v6->_staticImageURL;
    v6->_staticImageURL = v7;
  }

  return v6;
}

- (id)initVideoWithStaticImageURL:(id)l videoURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v15.receiver = self;
  v15.super_class = PBUIWallpaperDefaultConfiguration;
  v8 = [(PBUIWallpaperDefaultConfiguration *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_wallpaperType = 3;
    v10 = [lCopy copy];
    staticImageURL = v9->_staticImageURL;
    v9->_staticImageURL = v10;

    v12 = [rLCopy copy];
    videoURL = v9->_videoURL;
    v9->_videoURL = v12;
  }

  return v9;
}

- (id)initProceduralWithIdentifier:(id)identifier options:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = PBUIWallpaperDefaultConfiguration;
  v8 = [(PBUIWallpaperDefaultConfiguration *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_wallpaperType = 2;
    v10 = [identifierCopy copy];
    proceduralWallpaperIdentifier = v9->_proceduralWallpaperIdentifier;
    v9->_proceduralWallpaperIdentifier = v10;

    v12 = [optionsCopy copy];
    proceduralWallpaperOptions = v9->_proceduralWallpaperOptions;
    v9->_proceduralWallpaperOptions = v12;
  }

  return v9;
}

- (id)initColorWithColor:(id)color
{
  colorCopy = color;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 4;
    v7 = [colorCopy copy];
    wallpaperColor = v6->_wallpaperColor;
    v6->_wallpaperColor = v7;
  }

  return v6;
}

- (id)initColorWithColorName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 4;
    v7 = [nameCopy copy];
    wallpaperColorName = v6->_wallpaperColorName;
    v6->_wallpaperColorName = v7;
  }

  return v6;
}

- (id)initGradientWithGradient:(id)gradient
{
  gradientCopy = gradient;
  v10.receiver = self;
  v10.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperType = 5;
    v7 = [gradientCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v29 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      wallpaperType = [(PBUIWallpaperDefaultConfiguration *)self wallpaperType];
      if (wallpaperType == [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperType]&& ([(PBUIWallpaperDefaultConfiguration *)self staticImageURL], v9 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 staticImageURL], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(PBUIWallpaperDefaultConfiguration *)self videoURL], v12 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 videoURL], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier], v15 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 proceduralWallpaperIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17) && ([(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions], v18 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 proceduralWallpaperOptions], v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, v20) && ([(PBUIWallpaperDefaultConfiguration *)self wallpaperColor], v21 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperColor], v22 = objc_claimAutoreleasedReturnValue(), v23 = BSEqualObjects(), v22, v21, v23) && ([(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName], v24 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperColorName], v25 = objc_claimAutoreleasedReturnValue(), v26 = BSEqualObjects(), v25, v24, v26))
      {
        wallpaperGradient = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
        wallpaperGradient2 = [(PBUIWallpaperDefaultConfiguration *)v7 wallpaperGradient];
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
  wallpaperType = [(PBUIWallpaperDefaultConfiguration *)self wallpaperType];
  staticImageURL = [(PBUIWallpaperDefaultConfiguration *)self staticImageURL];
  v5 = [staticImageURL hash] + wallpaperType;
  videoURL = [(PBUIWallpaperDefaultConfiguration *)self videoURL];
  v7 = [videoURL hash];
  proceduralWallpaperIdentifier = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier];
  v9 = v5 + v7 + [proceduralWallpaperIdentifier hash];
  proceduralWallpaperOptions = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions];
  v11 = [proceduralWallpaperOptions hash];
  wallpaperColor = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColor];
  v13 = v11 + [wallpaperColor hash];
  wallpaperColorName = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName];
  v15 = v9 + v13 + [wallpaperColorName hash];
  wallpaperGradient = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
  v17 = [wallpaperGradient hash];

  return v15 + v17;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIWallpaperDefaultConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = PBUIStringForWallpaperType([(PBUIWallpaperDefaultConfiguration *)self wallpaperType]);
  v6 = [v4 appendObject:v5 withName:@"wallpaperType"];

  staticImageURL = [(PBUIWallpaperDefaultConfiguration *)self staticImageURL];
  v8 = [v4 appendObject:staticImageURL withName:@"staticImageURL"];

  videoURL = [(PBUIWallpaperDefaultConfiguration *)self videoURL];
  v10 = [v4 appendObject:videoURL withName:@"videoURL"];

  proceduralWallpaperIdentifier = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier];
  v12 = [v4 appendObject:proceduralWallpaperIdentifier withName:@"proceduralWallpaperIdentifier"];

  proceduralWallpaperOptions = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions];
  v14 = [v4 appendObject:proceduralWallpaperOptions withName:@"proceduralWallpaperOptions"];

  wallpaperColor = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColor];
  v16 = [v4 appendObject:wallpaperColor withName:@"wallpaperColor"];

  wallpaperColorName = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName];
  v18 = [v4 appendObject:wallpaperColorName withName:@"wallpaperColorName"];

  wallpaperGradient = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
  v20 = [v4 appendObject:wallpaperGradient withName:@"wallpaperGradient"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIWallpaperDefaultConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = PBUIStringForWallpaperType([(PBUIWallpaperDefaultConfiguration *)self wallpaperType]);
  [coderCopy encodeObject:v5 forKey:@"wallpaperType"];

  staticImageURL = [(PBUIWallpaperDefaultConfiguration *)self staticImageURL];
  [coderCopy encodeObject:staticImageURL forKey:@"staticImageURL"];

  videoURL = [(PBUIWallpaperDefaultConfiguration *)self videoURL];
  [coderCopy encodeObject:videoURL forKey:@"videoURL"];

  proceduralWallpaperIdentifier = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperIdentifier];
  [coderCopy encodeObject:proceduralWallpaperIdentifier forKey:@"proceduralWallpaperIdentifier"];

  proceduralWallpaperOptions = [(PBUIWallpaperDefaultConfiguration *)self proceduralWallpaperOptions];
  [coderCopy encodeObject:proceduralWallpaperOptions forKey:@"proceduralWallpaperOptions"];

  wallpaperColor = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColor];
  [coderCopy encodeObject:wallpaperColor forKey:@"wallpaperColor"];

  wallpaperColorName = [(PBUIWallpaperDefaultConfiguration *)self wallpaperColorName];
  [coderCopy encodeObject:wallpaperColorName forKey:@"wallpaperColorName"];

  wallpaperGradient = [(PBUIWallpaperDefaultConfiguration *)self wallpaperGradient];
  [coderCopy encodeObject:wallpaperGradient forKey:@"wallpaperGradient"];
}

- (PBUIWallpaperDefaultConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = PBUIWallpaperDefaultConfiguration;
  v5 = [(PBUIWallpaperDefaultConfiguration *)&v30 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"wallpaperType"];
    v5->_wallpaperType = PBUIWallpaperTypeForString(v7);

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"staticImageURL"];
    staticImageURL = v5->_staticImageURL;
    v5->_staticImageURL = v9;

    v11 = objc_opt_self();
    v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"videoURL"];
    videoURL = v5->_videoURL;
    v5->_videoURL = v12;

    v14 = objc_opt_self();
    v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"proceduralWallpaperIdentifier"];
    proceduralWallpaperIdentifier = v5->_proceduralWallpaperIdentifier;
    v5->_proceduralWallpaperIdentifier = v15;

    v17 = objc_opt_self();
    v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"wallpaperThumbnailImageData"];
    proceduralWallpaperOptions = v5->_proceduralWallpaperOptions;
    v5->_proceduralWallpaperOptions = v18;

    v20 = objc_opt_self();
    v21 = [coderCopy decodeObjectOfClass:v20 forKey:@"wallpaperColor"];
    wallpaperColor = v5->_wallpaperColor;
    v5->_wallpaperColor = v21;

    v23 = objc_opt_self();
    v24 = [coderCopy decodeObjectOfClass:v23 forKey:@"wallpaperColorName"];
    wallpaperColorName = v5->_wallpaperColorName;
    v5->_wallpaperColorName = v24;

    v26 = objc_opt_self();
    v27 = [coderCopy decodeObjectOfClass:v26 forKey:@"wallpaperGradient"];
    wallpaperGradient = v5->_wallpaperGradient;
    v5->_wallpaperGradient = v27;
  }

  return v5;
}

@end