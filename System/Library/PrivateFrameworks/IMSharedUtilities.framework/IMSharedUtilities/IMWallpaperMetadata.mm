@interface IMWallpaperMetadata
+ (id)wallpaperExtensionIdentifierFromType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (IMWallpaperMetadata)initWithCoder:(id)coder;
- (IMWallpaperMetadata)initWithDictionaryRepresentation:(id)representation;
- (IMWallpaperMetadata)initWithFontName:(id)name fontSize:(double)size fontWeight:(double)weight fontColor:(id)color isVertical:(BOOL)vertical type:(id)type backgroundColor:(id)backgroundColor;
- (NSDictionary)backgroundColor;
- (NSDictionary)fontColor;
@end

@implementation IMWallpaperMetadata

- (IMWallpaperMetadata)initWithFontName:(id)name fontSize:(double)size fontWeight:(double)weight fontColor:(id)color isVertical:(BOOL)vertical type:(id)type backgroundColor:(id)backgroundColor
{
  verticalCopy = vertical;
  nameCopy = name;
  colorCopy = color;
  typeCopy = type;
  backgroundColorCopy = backgroundColor;
  v24.receiver = self;
  v24.super_class = IMWallpaperMetadata;
  v20 = [(IMWallpaperMetadata *)&v24 init];
  if (v20)
  {
    v21 = [[IMWallpaperMetadata_Impl alloc] initWithFontName:nameCopy fontSize:colorCopy fontWeight:verticalCopy fontColor:typeCopy isVertical:backgroundColorCopy type:size backgroundColor:weight];
    swiftImpl = v20->swiftImpl;
    v20->swiftImpl = v21;
  }

  return v20;
}

- (IMWallpaperMetadata)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = IMWallpaperMetadata;
  v5 = [(IMWallpaperMetadata *)&v9 init];
  if (v5)
  {
    v6 = [[IMWallpaperMetadata_Impl alloc] initWithDictionaryRepresentation:representationCopy];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

- (IMWallpaperMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = IMWallpaperMetadata;
  v5 = [(IMWallpaperMetadata *)&v9 init];
  if (v5)
  {
    v6 = [[IMWallpaperMetadata_Impl alloc] initWithCoder:coderCopy];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

- (NSDictionary)fontColor
{
  fontColor = [(IMWallpaperMetadata_Impl *)self->swiftImpl fontColor];
  dictionaryRepresentation = [fontColor dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (NSDictionary)backgroundColor
{
  backgroundColor = [(IMWallpaperMetadata_Impl *)self->swiftImpl backgroundColor];
  dictionaryRepresentation = [backgroundColor dictionaryRepresentation];

  return dictionaryRepresentation;
}

+ (id)wallpaperExtensionIdentifierFromType:(int64_t)type
{
  if (type > 2)
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return off_1E7826E60[type];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    fontName = [(IMWallpaperMetadata *)self fontName];
    fontName2 = [v7 fontName];
    v10 = [fontName isEqualToString:fontName2];
    if ((v10 & 1) == 0)
    {
      fontName3 = [(IMWallpaperMetadata *)self fontName];
      fontName4 = [v7 fontName];
      if (fontName3 != fontName4)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    [(IMWallpaperMetadata *)self fontSize];
    v13 = v12;
    [v7 fontSize];
    if (v13 == v14)
    {
      [(IMWallpaperMetadata *)self fontWeight];
      v16 = v15;
      [v7 fontWeight];
      if (v16 == v17)
      {
        isVertical = [(IMWallpaperMetadata *)self isVertical];
        if (isVertical == [v7 isVertical])
        {
          type = [(IMWallpaperMetadata *)self type];
          type2 = [v7 type];
          if ([type isEqualToString:type2])
          {
            v35 = type2;
            backgroundColor = [(IMWallpaperMetadata *)self backgroundColor];
            [v7 backgroundColor];
            v34 = v36 = backgroundColor;
            v33 = [backgroundColor isEqualToDictionary:?];
            if ((v33 & 1) == 0)
            {
              backgroundColor2 = [(IMWallpaperMetadata *)self backgroundColor];
              backgroundColor3 = [v7 backgroundColor];
              v31 = backgroundColor2;
              if (backgroundColor2 != backgroundColor3)
              {
                v11 = 0;
                v24 = v35;
                goto LABEL_23;
              }

              v30 = backgroundColor3;
            }

            v32 = type;
            fontColor = [(IMWallpaperMetadata *)self fontColor];
            fontColor2 = [v7 fontColor];
            if ([fontColor isEqualToDictionary:fontColor2])
            {

              v11 = 1;
            }

            else
            {
              fontColor3 = [(IMWallpaperMetadata *)self fontColor];
              fontColor4 = [v7 fontColor];
              v11 = fontColor3 == fontColor4;
            }

            type = v32;
            v24 = v35;
            backgroundColor3 = v30;
            if (v33)
            {
LABEL_24:

              if (v10)
              {
                goto LABEL_16;
              }

              goto LABEL_15;
            }

LABEL_23:

            goto LABEL_24;
          }
        }
      }
    }

    v11 = 0;
    if (v10)
    {
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

@end