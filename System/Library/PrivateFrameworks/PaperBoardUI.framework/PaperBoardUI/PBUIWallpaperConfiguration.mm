@interface PBUIWallpaperConfiguration
- (BOOL)isEqual:(id)equal;
- (NSDictionary)proceduralWallpaperOptions;
- (NSString)proceduralWallpaperIdentifier;
- (PBUIWallpaperConfiguration)init;
- (PBUIWallpaperConfiguration)initWithCoder:(id)coder;
- (PBUIWallpaperConfiguration)initWithVariant:(int64_t)variant type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBUIWallpaperConfiguration

- (PBUIWallpaperConfiguration)initWithVariant:(int64_t)variant type:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = PBUIWallpaperConfiguration;
  result = [(PBUIWallpaperConfiguration *)&v7 init];
  if (result)
  {
    result->_variant = variant;
    result->_wallpaperType = type;
  }

  return result;
}

- (PBUIWallpaperConfiguration)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Use a designated initializer" userInfo:0];
  objc_exception_throw(v2);
}

- (NSString)proceduralWallpaperIdentifier
{
  proceduralWallpaperInfo = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v3 = [proceduralWallpaperInfo objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];

  return v3;
}

- (NSDictionary)proceduralWallpaperOptions
{
  proceduralWallpaperInfo = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v3 = [proceduralWallpaperInfo objectForKey:@"kSBUIMagicWallpaperPresetOptionsKey"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithVariant:-[PBUIWallpaperConfiguration variant](self type:{"variant"), -[PBUIWallpaperConfiguration wallpaperType](self, "wallpaperType")}];
  if (v4)
  {
    *(v4 + 8) = [(PBUIWallpaperConfiguration *)self needsWallpaperDimmingTreatment];
    *(v4 + 9) = [(PBUIWallpaperConfiguration *)self needsInactiveAppearanceTreatment];
    wallpaperImage = [(PBUIWallpaperConfiguration *)self wallpaperImage];
    v6 = *(v4 + 24);
    *(v4 + 24) = wallpaperImage;

    wallpaperOriginalImage = [(PBUIWallpaperConfiguration *)self wallpaperOriginalImage];
    v8 = *(v4 + 32);
    *(v4 + 32) = wallpaperOriginalImage;

    wallpaperThumbnailImage = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImage];
    v10 = *(v4 + 40);
    *(v4 + 40) = wallpaperThumbnailImage;

    wallpaperThumbnailImageData = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
    v12 = [wallpaperThumbnailImageData copy];
    v13 = *(v4 + 48);
    *(v4 + 48) = v12;

    wallpaperImageHashData = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
    v15 = [wallpaperImageHashData copy];
    v16 = *(v4 + 56);
    *(v4 + 56) = v15;

    proceduralWallpaperInfo = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
    v18 = [proceduralWallpaperInfo copy];
    v19 = *(v4 + 72);
    *(v4 + 72) = v18;

    videoURL = [(PBUIWallpaperConfiguration *)self videoURL];
    v21 = [videoURL copy];
    v22 = *(v4 + 80);
    *(v4 + 80) = v21;

    originalVideoURL = [(PBUIWallpaperConfiguration *)self originalVideoURL];
    v24 = [originalVideoURL copy];
    v25 = *(v4 + 88);
    *(v4 + 88) = v24;

    wallpaperOptions = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
    v27 = [wallpaperOptions copy];
    v28 = *(v4 + 64);
    *(v4 + 64) = v27;

    wallpaperColor = [(PBUIWallpaperConfiguration *)self wallpaperColor];
    v30 = [wallpaperColor copy];
    v31 = *(v4 + 96);
    *(v4 + 96) = v30;

    wallpaperColorName = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
    v33 = [wallpaperColorName copy];
    v34 = *(v4 + 104);
    *(v4 + 104) = v33;

    wallpaperGradient = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
    v36 = [wallpaperGradient copy];
    v37 = *(v4 + 112);
    *(v4 + 112) = v36;

    v38 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v47) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      variant = [(PBUIWallpaperConfiguration *)self variant];
      if (variant == [(PBUIWallpaperConfiguration *)v7 variant]
        && (v9 = [(PBUIWallpaperConfiguration *)self wallpaperType], v9 == [(PBUIWallpaperConfiguration *)v7 wallpaperType])
        && ([(PBUIWallpaperConfiguration *)self wallpaperImage], v10 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperImage], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12)
        && ([(PBUIWallpaperConfiguration *)self wallpaperOriginalImage], v13 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperOriginalImage], v14 = objc_claimAutoreleasedReturnValue(), v15 = (v13 != 0) ^ (v14 != 0), v14, v13, (v15 & 1) == 0)
        && ([(PBUIWallpaperConfiguration *)self wallpaperThumbnailImage], v16 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperThumbnailImage], v17 = objc_claimAutoreleasedReturnValue(), v18 = (v16 != 0) ^ (v17 != 0), v17, v16, (v18 & 1) == 0)
        && ([(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData], v19 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperThumbnailImageData], v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, v21)
        && ([(PBUIWallpaperConfiguration *)self wallpaperImageHashData], v22 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperImageHashData], v23 = objc_claimAutoreleasedReturnValue(), v24 = BSEqualObjects(), v23, v22, v24)
        && ([(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo], v25 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 proceduralWallpaperInfo], v26 = objc_claimAutoreleasedReturnValue(), v27 = BSEqualObjects(), v26, v25, v27)
        && ([(PBUIWallpaperConfiguration *)self videoURL], v28 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 videoURL], v29 = objc_claimAutoreleasedReturnValue(), v30 = BSEqualObjects(), v29, v28, v30)
        && ([(PBUIWallpaperConfiguration *)self originalVideoURL], v31 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 originalVideoURL], v32 = objc_claimAutoreleasedReturnValue(), v33 = BSEqualObjects(), v32, v31, v33)
        && ([(PBUIWallpaperConfiguration *)self wallpaperOptions], v34 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperOptions], v35 = objc_claimAutoreleasedReturnValue(), v36 = BSEqualObjects(), v35, v34, v36)
        && ([(PBUIWallpaperConfiguration *)self wallpaperColor], v37 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperColor], v38 = objc_claimAutoreleasedReturnValue(), v39 = BSEqualObjects(), v38, v37, v39)
        && ([(PBUIWallpaperConfiguration *)self wallpaperColorName], v40 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperColorName], v41 = objc_claimAutoreleasedReturnValue(), v42 = BSEqualObjects(), v41, v40, v42)
        && ([(PBUIWallpaperConfiguration *)self wallpaperGradient], v43 = objc_claimAutoreleasedReturnValue(), [(PBUIWallpaperConfiguration *)v7 wallpaperGradient], v44 = objc_claimAutoreleasedReturnValue(), v45 = BSEqualObjects(), v44, v43, v45)
        && (v46 = [(PBUIWallpaperConfiguration *)self needsWallpaperDimmingTreatment], v46 == [(PBUIWallpaperConfiguration *)v7 needsWallpaperDimmingTreatment]))
      {
        needsInactiveAppearanceTreatment = [(PBUIWallpaperConfiguration *)self needsInactiveAppearanceTreatment];
        v47 = needsInactiveAppearanceTreatment ^ [(PBUIWallpaperConfiguration *)v7 needsInactiveAppearanceTreatment]^ 1;
      }

      else
      {
        LOBYTE(v47) = 0;
      }
    }

    else
    {
      LOBYTE(v47) = 0;
    }
  }

  return v47;
}

- (unint64_t)hash
{
  variant = [(PBUIWallpaperConfiguration *)self variant];
  v4 = [(PBUIWallpaperConfiguration *)self wallpaperType]+ variant;
  wallpaperImage = [(PBUIWallpaperConfiguration *)self wallpaperImage];
  v5 = v4 + [wallpaperImage hash];
  wallpaperThumbnailImageData = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
  v6 = [wallpaperThumbnailImageData hash];
  wallpaperImageHashData = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
  v7 = v5 + v6 + [wallpaperImageHashData hash];
  proceduralWallpaperInfo = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v9 = [proceduralWallpaperInfo hash];
  videoURL = [(PBUIWallpaperConfiguration *)self videoURL];
  v11 = v9 + [videoURL hash];
  originalVideoURL = [(PBUIWallpaperConfiguration *)self originalVideoURL];
  v13 = v7 + v11 + [originalVideoURL hash];
  wallpaperOptions = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
  v15 = [wallpaperOptions hash];
  wallpaperColor = [(PBUIWallpaperConfiguration *)self wallpaperColor];
  v17 = v15 + [wallpaperColor hash];
  wallpaperColorName = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
  v19 = v17 + [wallpaperColorName hash];
  wallpaperGradient = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
  v21 = v13 + v19 + [wallpaperGradient hash];
  v22 = v21 + [(PBUIWallpaperConfiguration *)self needsWallpaperDimmingTreatment];

  return v22 + [(PBUIWallpaperConfiguration *)self needsInactiveAppearanceTreatment];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIWallpaperConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = PBUIStringForWallpaperType([(PBUIWallpaperConfiguration *)self wallpaperType]);
  v6 = [v4 appendObject:v5 withName:@"wallpaperType"];

  wallpaperImage = [(PBUIWallpaperConfiguration *)self wallpaperImage];
  v8 = [v4 appendObject:wallpaperImage withName:@"wallpaperImage" skipIfNil:1];

  wallpaperOriginalImage = [(PBUIWallpaperConfiguration *)self wallpaperOriginalImage];
  v10 = [v4 appendObject:wallpaperOriginalImage withName:@"wallpaperOriginalImage" skipIfNil:1];

  wallpaperThumbnailImage = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImage];
  v12 = [v4 appendObject:wallpaperThumbnailImage withName:@"wallpaperThumbnailImage" skipIfNil:1];

  wallpaperThumbnailImageData = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
  v14 = [v4 appendObject:wallpaperThumbnailImageData withName:@"wallpaperThumbnailImageData" skipIfNil:1];

  wallpaperImageHashData = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
  v16 = [v4 appendObject:wallpaperImageHashData withName:@"wallpaperImageHashData" skipIfNil:1];

  proceduralWallpaperInfo = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v18 = [v4 appendObject:proceduralWallpaperInfo withName:@"proceduralWallpaperInfo" skipIfNil:1];

  videoURL = [(PBUIWallpaperConfiguration *)self videoURL];
  v20 = [v4 appendObject:videoURL withName:@"videoURL" skipIfNil:1];

  originalVideoURL = [(PBUIWallpaperConfiguration *)self originalVideoURL];
  v22 = [v4 appendObject:originalVideoURL withName:@"originalVideoURL" skipIfNil:1];

  wallpaperOptions = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
  v24 = [v4 appendObject:wallpaperOptions withName:@"wallpaperOptions" skipIfNil:1];

  wallpaperColor = [(PBUIWallpaperConfiguration *)self wallpaperColor];
  v26 = [v4 appendObject:wallpaperColor withName:@"wallpaperColor" skipIfNil:1];

  wallpaperColorName = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
  v28 = [v4 appendObject:wallpaperColorName withName:@"wallpaperColorName" skipIfNil:1];

  wallpaperGradient = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
  v30 = [v4 appendObject:wallpaperGradient withName:@"wallpaperGradient" skipIfNil:1];

  v31 = [v4 appendBool:-[PBUIWallpaperConfiguration needsWallpaperDimmingTreatment](self withName:"needsWallpaperDimmingTreatment") ifEqualTo:{@"needsWallpaperDimmingTreatment", 1}];
  v32 = [v4 appendBool:-[PBUIWallpaperConfiguration needsInactiveAppearanceTreatment](self withName:"needsInactiveAppearanceTreatment") ifEqualTo:{@"needsInactiveAppearanceTreatment", 1}];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIWallpaperConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = PBUIStringForWallpaperType([(PBUIWallpaperConfiguration *)self wallpaperType]);
  [coderCopy encodeObject:v4 forKey:@"wallpaperType"];

  v5 = PBUIStringForWallpaperVariant([(PBUIWallpaperConfiguration *)self variant]);
  [coderCopy encodeObject:v5 forKey:@"variant"];

  wallpaperImage = [(PBUIWallpaperConfiguration *)self wallpaperImage];
  [coderCopy encodeObject:wallpaperImage forKey:@"wallpaperImage"];

  wallpaperOriginalImage = [(PBUIWallpaperConfiguration *)self wallpaperOriginalImage];
  [coderCopy encodeObject:wallpaperOriginalImage forKey:@"wallpaperOriginalImage"];

  wallpaperThumbnailImage = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImage];
  [coderCopy encodeObject:wallpaperThumbnailImage forKey:@"wallpaperThumbnailImage"];

  wallpaperThumbnailImageData = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
  [coderCopy encodeObject:wallpaperThumbnailImageData forKey:@"wallpaperThumbnailImageData"];

  wallpaperImageHashData = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
  [coderCopy encodeObject:wallpaperImageHashData forKey:@"wallpaperImageHashData"];

  proceduralWallpaperInfo = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  [coderCopy encodeObject:proceduralWallpaperInfo forKey:@"proceduralWallpaperInfo"];

  videoURL = [(PBUIWallpaperConfiguration *)self videoURL];
  [coderCopy encodeObject:videoURL forKey:@"videoURL"];

  originalVideoURL = [(PBUIWallpaperConfiguration *)self originalVideoURL];
  [coderCopy encodeObject:originalVideoURL forKey:@"originalVideoURL"];

  wallpaperOptions = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
  [coderCopy encodeObject:wallpaperOptions forKey:@"wallpaperOptions"];

  wallpaperColor = [(PBUIWallpaperConfiguration *)self wallpaperColor];
  [coderCopy encodeObject:wallpaperColor forKey:@"wallpaperColor"];

  wallpaperColorName = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
  [coderCopy encodeObject:wallpaperColorName forKey:@"wallpaperColorName"];

  wallpaperGradient = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
  [coderCopy encodeObject:wallpaperGradient forKey:@"wallpaperGradient"];

  [coderCopy encodeBool:-[PBUIWallpaperConfiguration needsWallpaperDimmingTreatment](self forKey:{"needsWallpaperDimmingTreatment"), @"needsWallpaperDimmingTreatment"}];
  [coderCopy encodeBool:-[PBUIWallpaperConfiguration needsInactiveAppearanceTreatment](self forKey:{"needsInactiveAppearanceTreatment"), @"needsInactiveAppearanceTreatment"}];
}

- (PBUIWallpaperConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v47.receiver = self;
  v47.super_class = PBUIWallpaperConfiguration;
  v5 = [(PBUIWallpaperConfiguration *)&v47 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"wallpaperType"];
    v5->_wallpaperType = PBUIWallpaperTypeForString(v7);

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"variant"];
    v5->_variant = PBUIWallpaperVariantForString(v9);

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"wallpaperImage"];
    wallpaperImage = v5->_wallpaperImage;
    v5->_wallpaperImage = v11;

    v13 = objc_opt_self();
    v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"wallpaperOriginalImage"];
    wallpaperOriginalImage = v5->_wallpaperOriginalImage;
    v5->_wallpaperOriginalImage = v14;

    v16 = objc_opt_self();
    v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"wallpaperThumbnailImage"];
    wallpaperThumbnailImage = v5->_wallpaperThumbnailImage;
    v5->_wallpaperThumbnailImage = v17;

    v19 = objc_opt_self();
    v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"wallpaperThumbnailImageData"];
    wallpaperThumbnailImageData = v5->_wallpaperThumbnailImageData;
    v5->_wallpaperThumbnailImageData = v20;

    v22 = objc_opt_self();
    v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"wallpaperImageHashData"];
    wallpaperImageHashData = v5->_wallpaperImageHashData;
    v5->_wallpaperImageHashData = v23;

    v25 = objc_opt_self();
    v26 = [coderCopy decodeObjectOfClass:v25 forKey:@"proceduralWallpaperInfo"];
    proceduralWallpaperInfo = v5->_proceduralWallpaperInfo;
    v5->_proceduralWallpaperInfo = v26;

    v28 = objc_opt_self();
    v29 = [coderCopy decodeObjectOfClass:v28 forKey:@"videoURL"];
    videoURL = v5->_videoURL;
    v5->_videoURL = v29;

    v31 = objc_opt_self();
    v32 = [coderCopy decodeObjectOfClass:v31 forKey:@"originalVideoURL"];
    originalVideoURL = v5->_originalVideoURL;
    v5->_originalVideoURL = v32;

    v34 = objc_opt_self();
    v35 = [coderCopy decodeObjectOfClass:v34 forKey:@"wallpaperOptions"];
    wallpaperOptions = v5->_wallpaperOptions;
    v5->_wallpaperOptions = v35;

    v37 = objc_opt_self();
    v38 = [coderCopy decodeObjectOfClass:v37 forKey:@"wallpaperColor"];
    wallpaperColor = v5->_wallpaperColor;
    v5->_wallpaperColor = v38;

    v40 = objc_opt_self();
    v41 = [coderCopy decodeObjectOfClass:v40 forKey:@"wallpaperColorName"];
    wallpaperColorName = v5->_wallpaperColorName;
    v5->_wallpaperColorName = v41;

    v43 = objc_opt_self();
    v44 = [coderCopy decodeObjectOfClass:v43 forKey:@"wallpaperGradient"];
    wallpaperGradient = v5->_wallpaperGradient;
    v5->_wallpaperGradient = v44;

    v5->_needsWallpaperDimmingTreatment = [coderCopy decodeBoolForKey:@"needsWallpaperDimmingTreatment"];
    v5->_needsInactiveAppearanceTreatment = [coderCopy decodeBoolForKey:@"needsInactiveAppearanceTreatment"];
  }

  return v5;
}

@end