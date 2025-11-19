@interface IMWallpaperMetadata
+ (id)wallpaperExtensionIdentifierFromType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (IMWallpaperMetadata)initWithCoder:(id)a3;
- (IMWallpaperMetadata)initWithDictionaryRepresentation:(id)a3;
- (IMWallpaperMetadata)initWithFontName:(id)a3 fontSize:(double)a4 fontWeight:(double)a5 fontColor:(id)a6 isVertical:(BOOL)a7 type:(id)a8 backgroundColor:(id)a9;
- (NSDictionary)backgroundColor;
- (NSDictionary)fontColor;
@end

@implementation IMWallpaperMetadata

- (IMWallpaperMetadata)initWithFontName:(id)a3 fontSize:(double)a4 fontWeight:(double)a5 fontColor:(id)a6 isVertical:(BOOL)a7 type:(id)a8 backgroundColor:(id)a9
{
  v11 = a7;
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v24.receiver = self;
  v24.super_class = IMWallpaperMetadata;
  v20 = [(IMWallpaperMetadata *)&v24 init];
  if (v20)
  {
    v21 = [[IMWallpaperMetadata_Impl alloc] initWithFontName:v16 fontSize:v17 fontWeight:v11 fontColor:v18 isVertical:v19 type:a4 backgroundColor:a5];
    swiftImpl = v20->swiftImpl;
    v20->swiftImpl = v21;
  }

  return v20;
}

- (IMWallpaperMetadata)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMWallpaperMetadata;
  v5 = [(IMWallpaperMetadata *)&v9 init];
  if (v5)
  {
    v6 = [[IMWallpaperMetadata_Impl alloc] initWithDictionaryRepresentation:v4];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

- (IMWallpaperMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMWallpaperMetadata;
  v5 = [(IMWallpaperMetadata *)&v9 init];
  if (v5)
  {
    v6 = [[IMWallpaperMetadata_Impl alloc] initWithCoder:v4];
    swiftImpl = v5->swiftImpl;
    v5->swiftImpl = v6;
  }

  return v5;
}

- (NSDictionary)fontColor
{
  v2 = [(IMWallpaperMetadata_Impl *)self->swiftImpl fontColor];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (NSDictionary)backgroundColor
{
  v2 = [(IMWallpaperMetadata_Impl *)self->swiftImpl backgroundColor];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

+ (id)wallpaperExtensionIdentifierFromType:(int64_t)a3
{
  if (a3 > 2)
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return off_1E7826E60[a3];
  }
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(IMWallpaperMetadata *)self fontName];
    v9 = [v7 fontName];
    v10 = [v8 isEqualToString:v9];
    if ((v10 & 1) == 0)
    {
      v3 = [(IMWallpaperMetadata *)self fontName];
      v4 = [v7 fontName];
      if (v3 != v4)
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
        v18 = [(IMWallpaperMetadata *)self isVertical];
        if (v18 == [v7 isVertical])
        {
          v19 = [(IMWallpaperMetadata *)self type];
          v20 = [v7 type];
          if ([v19 isEqualToString:v20])
          {
            v35 = v20;
            v21 = [(IMWallpaperMetadata *)self backgroundColor];
            [v7 backgroundColor];
            v34 = v36 = v21;
            v33 = [v21 isEqualToDictionary:?];
            if ((v33 & 1) == 0)
            {
              v22 = [(IMWallpaperMetadata *)self backgroundColor];
              v23 = [v7 backgroundColor];
              v31 = v22;
              if (v22 != v23)
              {
                v11 = 0;
                v24 = v35;
                goto LABEL_23;
              }

              v30 = v23;
            }

            v32 = v19;
            v26 = [(IMWallpaperMetadata *)self fontColor];
            v27 = [v7 fontColor];
            if ([v26 isEqualToDictionary:v27])
            {

              v11 = 1;
            }

            else
            {
              v29 = [(IMWallpaperMetadata *)self fontColor];
              v28 = [v7 fontColor];
              v11 = v29 == v28;
            }

            v19 = v32;
            v24 = v35;
            v23 = v30;
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