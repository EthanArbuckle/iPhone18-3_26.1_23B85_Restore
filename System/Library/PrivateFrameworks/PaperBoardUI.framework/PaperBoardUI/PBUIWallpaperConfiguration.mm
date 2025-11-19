@interface PBUIWallpaperConfiguration
- (BOOL)isEqual:(id)a3;
- (NSDictionary)proceduralWallpaperOptions;
- (NSString)proceduralWallpaperIdentifier;
- (PBUIWallpaperConfiguration)init;
- (PBUIWallpaperConfiguration)initWithCoder:(id)a3;
- (PBUIWallpaperConfiguration)initWithVariant:(int64_t)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBUIWallpaperConfiguration

- (PBUIWallpaperConfiguration)initWithVariant:(int64_t)a3 type:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PBUIWallpaperConfiguration;
  result = [(PBUIWallpaperConfiguration *)&v7 init];
  if (result)
  {
    result->_variant = a3;
    result->_wallpaperType = a4;
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
  v2 = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v3 = [v2 objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];

  return v3;
}

- (NSDictionary)proceduralWallpaperOptions
{
  v2 = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v3 = [v2 objectForKey:@"kSBUIMagicWallpaperPresetOptionsKey"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithVariant:-[PBUIWallpaperConfiguration variant](self type:{"variant"), -[PBUIWallpaperConfiguration wallpaperType](self, "wallpaperType")}];
  if (v4)
  {
    *(v4 + 8) = [(PBUIWallpaperConfiguration *)self needsWallpaperDimmingTreatment];
    *(v4 + 9) = [(PBUIWallpaperConfiguration *)self needsInactiveAppearanceTreatment];
    v5 = [(PBUIWallpaperConfiguration *)self wallpaperImage];
    v6 = *(v4 + 24);
    *(v4 + 24) = v5;

    v7 = [(PBUIWallpaperConfiguration *)self wallpaperOriginalImage];
    v8 = *(v4 + 32);
    *(v4 + 32) = v7;

    v9 = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImage];
    v10 = *(v4 + 40);
    *(v4 + 40) = v9;

    v11 = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
    v12 = [v11 copy];
    v13 = *(v4 + 48);
    *(v4 + 48) = v12;

    v14 = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
    v15 = [v14 copy];
    v16 = *(v4 + 56);
    *(v4 + 56) = v15;

    v17 = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
    v18 = [v17 copy];
    v19 = *(v4 + 72);
    *(v4 + 72) = v18;

    v20 = [(PBUIWallpaperConfiguration *)self videoURL];
    v21 = [v20 copy];
    v22 = *(v4 + 80);
    *(v4 + 80) = v21;

    v23 = [(PBUIWallpaperConfiguration *)self originalVideoURL];
    v24 = [v23 copy];
    v25 = *(v4 + 88);
    *(v4 + 88) = v24;

    v26 = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
    v27 = [v26 copy];
    v28 = *(v4 + 64);
    *(v4 + 64) = v27;

    v29 = [(PBUIWallpaperConfiguration *)self wallpaperColor];
    v30 = [v29 copy];
    v31 = *(v4 + 96);
    *(v4 + 96) = v30;

    v32 = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
    v33 = [v32 copy];
    v34 = *(v4 + 104);
    *(v4 + 104) = v33;

    v35 = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
    v36 = [v35 copy];
    v37 = *(v4 + 112);
    *(v4 + 112) = v36;

    v38 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v47) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PBUIWallpaperConfiguration *)self variant];
      if (v8 == [(PBUIWallpaperConfiguration *)v7 variant]
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
        v49 = [(PBUIWallpaperConfiguration *)self needsInactiveAppearanceTreatment];
        v47 = v49 ^ [(PBUIWallpaperConfiguration *)v7 needsInactiveAppearanceTreatment]^ 1;
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
  v3 = [(PBUIWallpaperConfiguration *)self variant];
  v4 = [(PBUIWallpaperConfiguration *)self wallpaperType]+ v3;
  v26 = [(PBUIWallpaperConfiguration *)self wallpaperImage];
  v5 = v4 + [v26 hash];
  v25 = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
  v6 = [v25 hash];
  v24 = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
  v7 = v5 + v6 + [v24 hash];
  v8 = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v9 = [v8 hash];
  v10 = [(PBUIWallpaperConfiguration *)self videoURL];
  v11 = v9 + [v10 hash];
  v12 = [(PBUIWallpaperConfiguration *)self originalVideoURL];
  v13 = v7 + v11 + [v12 hash];
  v14 = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
  v15 = [v14 hash];
  v16 = [(PBUIWallpaperConfiguration *)self wallpaperColor];
  v17 = v15 + [v16 hash];
  v18 = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
  v19 = v17 + [v18 hash];
  v20 = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
  v21 = v13 + v19 + [v20 hash];
  v22 = v21 + [(PBUIWallpaperConfiguration *)self needsWallpaperDimmingTreatment];

  return v22 + [(PBUIWallpaperConfiguration *)self needsInactiveAppearanceTreatment];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = PBUIStringForWallpaperType([(PBUIWallpaperConfiguration *)self wallpaperType]);
  v6 = [v4 appendObject:v5 withName:@"wallpaperType"];

  v7 = [(PBUIWallpaperConfiguration *)self wallpaperImage];
  v8 = [v4 appendObject:v7 withName:@"wallpaperImage" skipIfNil:1];

  v9 = [(PBUIWallpaperConfiguration *)self wallpaperOriginalImage];
  v10 = [v4 appendObject:v9 withName:@"wallpaperOriginalImage" skipIfNil:1];

  v11 = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImage];
  v12 = [v4 appendObject:v11 withName:@"wallpaperThumbnailImage" skipIfNil:1];

  v13 = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
  v14 = [v4 appendObject:v13 withName:@"wallpaperThumbnailImageData" skipIfNil:1];

  v15 = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
  v16 = [v4 appendObject:v15 withName:@"wallpaperImageHashData" skipIfNil:1];

  v17 = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  v18 = [v4 appendObject:v17 withName:@"proceduralWallpaperInfo" skipIfNil:1];

  v19 = [(PBUIWallpaperConfiguration *)self videoURL];
  v20 = [v4 appendObject:v19 withName:@"videoURL" skipIfNil:1];

  v21 = [(PBUIWallpaperConfiguration *)self originalVideoURL];
  v22 = [v4 appendObject:v21 withName:@"originalVideoURL" skipIfNil:1];

  v23 = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
  v24 = [v4 appendObject:v23 withName:@"wallpaperOptions" skipIfNil:1];

  v25 = [(PBUIWallpaperConfiguration *)self wallpaperColor];
  v26 = [v4 appendObject:v25 withName:@"wallpaperColor" skipIfNil:1];

  v27 = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
  v28 = [v4 appendObject:v27 withName:@"wallpaperColorName" skipIfNil:1];

  v29 = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
  v30 = [v4 appendObject:v29 withName:@"wallpaperGradient" skipIfNil:1];

  v31 = [v4 appendBool:-[PBUIWallpaperConfiguration needsWallpaperDimmingTreatment](self withName:"needsWallpaperDimmingTreatment") ifEqualTo:{@"needsWallpaperDimmingTreatment", 1}];
  v32 = [v4 appendBool:-[PBUIWallpaperConfiguration needsInactiveAppearanceTreatment](self withName:"needsInactiveAppearanceTreatment") ifEqualTo:{@"needsInactiveAppearanceTreatment", 1}];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = PBUIStringForWallpaperType([(PBUIWallpaperConfiguration *)self wallpaperType]);
  [v18 encodeObject:v4 forKey:@"wallpaperType"];

  v5 = PBUIStringForWallpaperVariant([(PBUIWallpaperConfiguration *)self variant]);
  [v18 encodeObject:v5 forKey:@"variant"];

  v6 = [(PBUIWallpaperConfiguration *)self wallpaperImage];
  [v18 encodeObject:v6 forKey:@"wallpaperImage"];

  v7 = [(PBUIWallpaperConfiguration *)self wallpaperOriginalImage];
  [v18 encodeObject:v7 forKey:@"wallpaperOriginalImage"];

  v8 = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImage];
  [v18 encodeObject:v8 forKey:@"wallpaperThumbnailImage"];

  v9 = [(PBUIWallpaperConfiguration *)self wallpaperThumbnailImageData];
  [v18 encodeObject:v9 forKey:@"wallpaperThumbnailImageData"];

  v10 = [(PBUIWallpaperConfiguration *)self wallpaperImageHashData];
  [v18 encodeObject:v10 forKey:@"wallpaperImageHashData"];

  v11 = [(PBUIWallpaperConfiguration *)self proceduralWallpaperInfo];
  [v18 encodeObject:v11 forKey:@"proceduralWallpaperInfo"];

  v12 = [(PBUIWallpaperConfiguration *)self videoURL];
  [v18 encodeObject:v12 forKey:@"videoURL"];

  v13 = [(PBUIWallpaperConfiguration *)self originalVideoURL];
  [v18 encodeObject:v13 forKey:@"originalVideoURL"];

  v14 = [(PBUIWallpaperConfiguration *)self wallpaperOptions];
  [v18 encodeObject:v14 forKey:@"wallpaperOptions"];

  v15 = [(PBUIWallpaperConfiguration *)self wallpaperColor];
  [v18 encodeObject:v15 forKey:@"wallpaperColor"];

  v16 = [(PBUIWallpaperConfiguration *)self wallpaperColorName];
  [v18 encodeObject:v16 forKey:@"wallpaperColorName"];

  v17 = [(PBUIWallpaperConfiguration *)self wallpaperGradient];
  [v18 encodeObject:v17 forKey:@"wallpaperGradient"];

  [v18 encodeBool:-[PBUIWallpaperConfiguration needsWallpaperDimmingTreatment](self forKey:{"needsWallpaperDimmingTreatment"), @"needsWallpaperDimmingTreatment"}];
  [v18 encodeBool:-[PBUIWallpaperConfiguration needsInactiveAppearanceTreatment](self forKey:{"needsInactiveAppearanceTreatment"), @"needsInactiveAppearanceTreatment"}];
}

- (PBUIWallpaperConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = PBUIWallpaperConfiguration;
  v5 = [(PBUIWallpaperConfiguration *)&v47 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"wallpaperType"];
    v5->_wallpaperType = PBUIWallpaperTypeForString(v7);

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"variant"];
    v5->_variant = PBUIWallpaperVariantForString(v9);

    v10 = objc_opt_self();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"wallpaperImage"];
    wallpaperImage = v5->_wallpaperImage;
    v5->_wallpaperImage = v11;

    v13 = objc_opt_self();
    v14 = [v4 decodeObjectOfClass:v13 forKey:@"wallpaperOriginalImage"];
    wallpaperOriginalImage = v5->_wallpaperOriginalImage;
    v5->_wallpaperOriginalImage = v14;

    v16 = objc_opt_self();
    v17 = [v4 decodeObjectOfClass:v16 forKey:@"wallpaperThumbnailImage"];
    wallpaperThumbnailImage = v5->_wallpaperThumbnailImage;
    v5->_wallpaperThumbnailImage = v17;

    v19 = objc_opt_self();
    v20 = [v4 decodeObjectOfClass:v19 forKey:@"wallpaperThumbnailImageData"];
    wallpaperThumbnailImageData = v5->_wallpaperThumbnailImageData;
    v5->_wallpaperThumbnailImageData = v20;

    v22 = objc_opt_self();
    v23 = [v4 decodeObjectOfClass:v22 forKey:@"wallpaperImageHashData"];
    wallpaperImageHashData = v5->_wallpaperImageHashData;
    v5->_wallpaperImageHashData = v23;

    v25 = objc_opt_self();
    v26 = [v4 decodeObjectOfClass:v25 forKey:@"proceduralWallpaperInfo"];
    proceduralWallpaperInfo = v5->_proceduralWallpaperInfo;
    v5->_proceduralWallpaperInfo = v26;

    v28 = objc_opt_self();
    v29 = [v4 decodeObjectOfClass:v28 forKey:@"videoURL"];
    videoURL = v5->_videoURL;
    v5->_videoURL = v29;

    v31 = objc_opt_self();
    v32 = [v4 decodeObjectOfClass:v31 forKey:@"originalVideoURL"];
    originalVideoURL = v5->_originalVideoURL;
    v5->_originalVideoURL = v32;

    v34 = objc_opt_self();
    v35 = [v4 decodeObjectOfClass:v34 forKey:@"wallpaperOptions"];
    wallpaperOptions = v5->_wallpaperOptions;
    v5->_wallpaperOptions = v35;

    v37 = objc_opt_self();
    v38 = [v4 decodeObjectOfClass:v37 forKey:@"wallpaperColor"];
    wallpaperColor = v5->_wallpaperColor;
    v5->_wallpaperColor = v38;

    v40 = objc_opt_self();
    v41 = [v4 decodeObjectOfClass:v40 forKey:@"wallpaperColorName"];
    wallpaperColorName = v5->_wallpaperColorName;
    v5->_wallpaperColorName = v41;

    v43 = objc_opt_self();
    v44 = [v4 decodeObjectOfClass:v43 forKey:@"wallpaperGradient"];
    wallpaperGradient = v5->_wallpaperGradient;
    v5->_wallpaperGradient = v44;

    v5->_needsWallpaperDimmingTreatment = [v4 decodeBoolForKey:@"needsWallpaperDimmingTreatment"];
    v5->_needsInactiveAppearanceTreatment = [v4 decodeBoolForKey:@"needsInactiveAppearanceTreatment"];
  }

  return v5;
}

@end