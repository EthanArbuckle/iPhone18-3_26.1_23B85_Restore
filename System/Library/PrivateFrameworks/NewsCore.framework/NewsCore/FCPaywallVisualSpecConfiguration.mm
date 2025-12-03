@interface FCPaywallVisualSpecConfiguration
+ (id)defaultAudioFeedPaywallVisualSpecConfigurationLarge;
+ (id)defaultAudioFeedPaywallVisualSpecConfigurationSmall;
+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationLarge;
+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationMedium;
+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationSmall;
+ (id)defaultPaywallVisualSpecConfiguration;
- (BOOL)isEqual:(id)equal;
- (FCPaywallVisualSpecConfiguration)init;
- (FCPaywallVisualSpecConfiguration)initWithConfigDictionary:(id)dictionary;
- (FCPaywallVisualSpecConfiguration)initWithMultiResolutionImage:(id)image darkStyleMultiResolutionImage:(id)resolutionImage multiResolutionBadgeImage:(id)badgeImage darkStyleMultiResolutionBadgeImage:(id)resolutionBadgeImage multiSizeVideo:(id)video videoURL:(id)l videoWidth:(int64_t)width videoHeight:(int64_t)self0 gradientPercentHeight:(double)self1 textTopPadding:(int64_t)self2 badgeVerticalOffset:(int64_t)self3 backgroundColor:(id)self4 darkStyleBackgroundColor:(id)self5 mastheadTextColor:(id)self6 largeTextColor:(id)self7 smallTextColor:(id)self8 offersTextColor:(id)self9;
- (unint64_t)hash;
@end

@implementation FCPaywallVisualSpecConfiguration

- (FCPaywallVisualSpecConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPaywallVisualSpecConfiguration init]";
    v10 = 2080;
    v11 = "FCPaywallVisualSpecConfiguration.m";
    v12 = 1024;
    v13 = 42;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPaywallVisualSpecConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPaywallVisualSpecConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"image", 0);
  v34 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v32];
  v31 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"alternateImage", 0);
  v33 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v31];
  v30 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"badgeImage", 0);
  v17 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v30];
  v29 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"alternateBadgeImage", 0);
  v16 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v29];
  v28 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"video", 0);
  v27 = [[FCMultiSizeVideo alloc] initWithConfigDictionary:v28];
  v26 = FCAppConfigurationURLValue(dictionaryCopy, @"videoURL");
  v22 = FCAppConfigurationIntegerValue(dictionaryCopy, @"videoWidth", 0);
  v21 = FCAppConfigurationIntegerValue(dictionaryCopy, @"videoHeight", 0);
  v4 = FCAppConfigurationDoubleValue(dictionaryCopy, @"gradientPercentHeight", 0.0);
  v19 = FCAppConfigurationIntegerValue(dictionaryCopy, @"textTopPadding", 57);
  v15 = FCAppConfigurationIntegerValue(dictionaryCopy, @"badgeVerticalOffset", 0);
  v25 = FCAppConfigurationStringValue(dictionaryCopy, @"backgroundColor", 0);
  v13 = [FCColor nullableColorWithHexString:v25];
  v20 = FCAppConfigurationStringValue(dictionaryCopy, @"alternateBackgroundColor", 0);
  v12 = [FCColor nullableColorWithHexString:v20];
  v18 = FCAppConfigurationStringValue(dictionaryCopy, @"mastheadColor", 0);
  v5 = [FCColor nullableColorWithHexString:v18];
  v14 = FCAppConfigurationStringValue(dictionaryCopy, @"largeTextColor", 0);
  v6 = [FCColor nullableColorWithHexString:v14];
  v7 = FCAppConfigurationStringValue(dictionaryCopy, @"smallTextColor", 0);
  v8 = [FCColor nullableColorWithHexString:v7];
  v9 = FCAppConfigurationStringValue(dictionaryCopy, @"offersTextColor", 0);

  v10 = [FCColor nullableColorWithHexString:v9];
  v24 = [(FCPaywallVisualSpecConfiguration *)self initWithMultiResolutionImage:v34 darkStyleMultiResolutionImage:v33 multiResolutionBadgeImage:v17 darkStyleMultiResolutionBadgeImage:v16 multiSizeVideo:v27 videoURL:v26 videoWidth:v4 videoHeight:v22 gradientPercentHeight:v21 textTopPadding:v19 badgeVerticalOffset:v15 backgroundColor:v13 darkStyleBackgroundColor:v12 mastheadTextColor:v5 largeTextColor:v6 smallTextColor:v8 offersTextColor:v10];

  return v24;
}

- (FCPaywallVisualSpecConfiguration)initWithMultiResolutionImage:(id)image darkStyleMultiResolutionImage:(id)resolutionImage multiResolutionBadgeImage:(id)badgeImage darkStyleMultiResolutionBadgeImage:(id)resolutionBadgeImage multiSizeVideo:(id)video videoURL:(id)l videoWidth:(int64_t)width videoHeight:(int64_t)self0 gradientPercentHeight:(double)self1 textTopPadding:(int64_t)self2 badgeVerticalOffset:(int64_t)self3 backgroundColor:(id)self4 darkStyleBackgroundColor:(id)self5 mastheadTextColor:(id)self6 largeTextColor:(id)self7 smallTextColor:(id)self8 offersTextColor:(id)self9
{
  imageCopy = image;
  resolutionImageCopy = resolutionImage;
  badgeImageCopy = badgeImage;
  badgeImageCopy2 = badgeImage;
  resolutionBadgeImageCopy = resolutionBadgeImage;
  videoCopy = video;
  videoCopy2 = video;
  lCopy = l;
  lCopy2 = l;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  textColorCopy = textColor;
  largeTextColorCopy = largeTextColor;
  smallTextColorCopy = smallTextColor;
  offersTextColorCopy = offersTextColor;
  v45.receiver = self;
  v45.super_class = FCPaywallVisualSpecConfiguration;
  v31 = [(FCPaywallVisualSpecConfiguration *)&v45 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_multiResolutionImage, image);
    objc_storeStrong(&v32->_darkStyleMultiResolutionImage, resolutionImage);
    objc_storeStrong(&v32->_multiResolutionBadgeImage, badgeImageCopy);
    objc_storeStrong(&v32->_darkStyleMultiResolutionBadgeImage, resolutionBadgeImage);
    objc_storeStrong(&v32->_multiSizeVideo, videoCopy);
    objc_storeStrong(&v32->_videoURL, lCopy);
    v32->_videoWidth = width;
    v32->_videoHeight = height;
    v32->_gradientPercentHeight = percentHeight;
    v32->_textTopPadding = padding;
    v32->_badgeVerticalOffset = offset;
    objc_storeStrong(&v32->_backgroundColor, color);
    objc_storeStrong(&v32->_darkStyleBackgroundColor, backgroundColor);
    objc_storeStrong(&v32->_mastheadTextColor, textColor);
    objc_storeStrong(&v32->_largeTextColor, largeTextColor);
    objc_storeStrong(&v32->_smallTextColor, smallTextColor);
    objc_storeStrong(&v32->_offersTextColor, offersTextColor);
  }

  return v32;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    multiResolutionImage = [(FCPaywallVisualSpecConfiguration *)self multiResolutionImage];
    multiResolutionImage2 = [v6 multiResolutionImage];
    if ([v7 nf_object:multiResolutionImage isEqualToObject:multiResolutionImage2])
    {
      v10 = MEMORY[0x1E69E58C0];
      darkStyleMultiResolutionImage = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionImage];
      darkStyleMultiResolutionImage2 = [v6 darkStyleMultiResolutionImage];
      if ([v10 nf_object:darkStyleMultiResolutionImage isEqualToObject:darkStyleMultiResolutionImage2])
      {
        v13 = MEMORY[0x1E69E58C0];
        multiResolutionBadgeImage = [(FCPaywallVisualSpecConfiguration *)self multiResolutionBadgeImage];
        multiResolutionBadgeImage2 = [v6 multiResolutionBadgeImage];
        if ([v13 nf_object:multiResolutionBadgeImage isEqualToObject:multiResolutionBadgeImage2])
        {
          v36 = multiResolutionBadgeImage;
          v16 = MEMORY[0x1E69E58C0];
          darkStyleMultiResolutionBadgeImage = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionBadgeImage];
          [v6 darkStyleMultiResolutionBadgeImage];
          v35 = v37 = darkStyleMultiResolutionBadgeImage;
          if ([v16 nf_object:darkStyleMultiResolutionBadgeImage isEqualToObject:?])
          {
            v18 = MEMORY[0x1E69E58C0];
            backgroundColor = [(FCPaywallVisualSpecConfiguration *)self backgroundColor];
            backgroundColor2 = [v6 backgroundColor];
            v34 = backgroundColor;
            if ([v18 nf_object:backgroundColor isEqualToObject:?])
            {
              v20 = MEMORY[0x1E69E58C0];
              darkStyleBackgroundColor = [(FCPaywallVisualSpecConfiguration *)self darkStyleBackgroundColor];
              darkStyleBackgroundColor2 = [v6 darkStyleBackgroundColor];
              v23 = v20;
              v24 = darkStyleBackgroundColor2;
              if ([v23 nf_object:darkStyleBackgroundColor isEqualToObject:darkStyleBackgroundColor2])
              {
                [(FCPaywallVisualSpecConfiguration *)self gradientPercentHeight];
                v26 = v25;
                [v6 gradientPercentHeight];
                multiResolutionBadgeImage = v36;
                if (v26 == v27)
                {
                  v32 = v24;
                  textTopPadding = [(FCPaywallVisualSpecConfiguration *)self textTopPadding];
                  if (textTopPadding == [v6 textTopPadding])
                  {
                    badgeVerticalOffset = [(FCPaywallVisualSpecConfiguration *)self badgeVerticalOffset];
                    v30 = badgeVerticalOffset == [v6 badgeVerticalOffset];
                  }

                  else
                  {
                    v30 = 0;
                  }

                  v24 = v32;
                }

                else
                {
                  v30 = 0;
                }
              }

              else
              {
                v30 = 0;
                multiResolutionBadgeImage = v36;
              }
            }

            else
            {
              v30 = 0;
              multiResolutionBadgeImage = v36;
            }
          }

          else
          {
            v30 = 0;
            multiResolutionBadgeImage = v36;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (unint64_t)hash
{
  multiResolutionImage = [(FCPaywallVisualSpecConfiguration *)self multiResolutionImage];
  v3 = [multiResolutionImage hash];
  darkStyleMultiResolutionImage = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionImage];
  v4 = [darkStyleMultiResolutionImage hash] ^ v3;
  multiResolutionBadgeImage = [(FCPaywallVisualSpecConfiguration *)self multiResolutionBadgeImage];
  v6 = [multiResolutionBadgeImage hash];
  darkStyleMultiResolutionBadgeImage = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionBadgeImage];
  v8 = v4 ^ v6 ^ [darkStyleMultiResolutionBadgeImage hash];
  backgroundColor = [(FCPaywallVisualSpecConfiguration *)self backgroundColor];
  v10 = [backgroundColor hash];
  darkStyleBackgroundColor = [(FCPaywallVisualSpecConfiguration *)self darkStyleBackgroundColor];
  v12 = v8 ^ v10 ^ [darkStyleBackgroundColor hash];
  v13 = MEMORY[0x1E696AD98];
  [(FCPaywallVisualSpecConfiguration *)self gradientPercentHeight];
  v14 = [v13 numberWithDouble:?];
  v20 = v12 ^ [v14 hash];
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[FCPaywallVisualSpecConfiguration textTopPadding](self, "textTopPadding")}];
  v16 = [v15 hash];
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[FCPaywallVisualSpecConfiguration badgeVerticalOffset](self, "badgeVerticalOffset")}];
  v18 = v16 ^ [v17 hash];

  return v20 ^ v18;
}

+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationSmall
{
  if (qword_1EDB27400 != -1)
  {
    dispatch_once(&qword_1EDB27400, &__block_literal_global_69);
  }

  v3 = _MergedGlobals_162;

  return v3;
}

void __90__FCPaywallVisualSpecConfiguration_defaultMagazineFeedPaywallVisualSpecConfigurationSmall__block_invoke()
{
  v0 = [FCPaywallVisualSpecConfiguration alloc];
  v8 = [FCColor colorWithRed:0.956862745 green:0.956862745 blue:0.956862745 alpha:1.0];
  v1 = [FCColor colorWithRed:0.184313725 green:0.184313725 blue:0.192156863 alpha:1.0];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor whiteColor];
  v4 = +[FCColor whiteColor];
  v5 = [FCColor colorWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  v6 = [(FCPaywallVisualSpecConfiguration *)v0 initWithMultiResolutionImage:0 darkStyleMultiResolutionImage:0 multiResolutionBadgeImage:0 darkStyleMultiResolutionBadgeImage:0 multiSizeVideo:0 videoURL:0 videoWidth:0.0 videoHeight:0 gradientPercentHeight:0 textTopPadding:57 badgeVerticalOffset:0 backgroundColor:v8 darkStyleBackgroundColor:v1 mastheadTextColor:v2 largeTextColor:v3 smallTextColor:v4 offersTextColor:v5];
  v7 = _MergedGlobals_162;
  _MergedGlobals_162 = v6;
}

+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationMedium
{
  if (qword_1EDB27410 != -1)
  {
    dispatch_once(&qword_1EDB27410, &__block_literal_global_65_0);
  }

  v3 = qword_1EDB27408;

  return v3;
}

void __91__FCPaywallVisualSpecConfiguration_defaultMagazineFeedPaywallVisualSpecConfigurationMedium__block_invoke()
{
  v0 = [FCPaywallVisualSpecConfiguration alloc];
  v8 = [FCColor colorWithRed:0.956862745 green:0.956862745 blue:0.956862745 alpha:1.0];
  v1 = [FCColor colorWithRed:0.184313725 green:0.184313725 blue:0.192156863 alpha:1.0];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor whiteColor];
  v4 = +[FCColor whiteColor];
  v5 = [FCColor colorWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  v6 = [(FCPaywallVisualSpecConfiguration *)v0 initWithMultiResolutionImage:0 darkStyleMultiResolutionImage:0 multiResolutionBadgeImage:0 darkStyleMultiResolutionBadgeImage:0 multiSizeVideo:0 videoURL:0 videoWidth:0.0 videoHeight:0 gradientPercentHeight:0 textTopPadding:57 badgeVerticalOffset:0 backgroundColor:v8 darkStyleBackgroundColor:v1 mastheadTextColor:v2 largeTextColor:v3 smallTextColor:v4 offersTextColor:v5];
  v7 = qword_1EDB27408;
  qword_1EDB27408 = v6;
}

+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationLarge
{
  if (qword_1EDB27420 != -1)
  {
    dispatch_once(&qword_1EDB27420, &__block_literal_global_67);
  }

  v3 = qword_1EDB27418;

  return v3;
}

void __90__FCPaywallVisualSpecConfiguration_defaultMagazineFeedPaywallVisualSpecConfigurationLarge__block_invoke()
{
  v0 = [FCPaywallVisualSpecConfiguration alloc];
  v8 = [FCColor colorWithRed:0.956862745 green:0.956862745 blue:0.956862745 alpha:1.0];
  v1 = [FCColor colorWithRed:0.184313725 green:0.184313725 blue:0.192156863 alpha:1.0];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor whiteColor];
  v4 = +[FCColor whiteColor];
  v5 = [FCColor colorWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  v6 = [(FCPaywallVisualSpecConfiguration *)v0 initWithMultiResolutionImage:0 darkStyleMultiResolutionImage:0 multiResolutionBadgeImage:0 darkStyleMultiResolutionBadgeImage:0 multiSizeVideo:0 videoURL:0 videoWidth:0.0 videoHeight:0 gradientPercentHeight:0 textTopPadding:57 badgeVerticalOffset:0 backgroundColor:v8 darkStyleBackgroundColor:v1 mastheadTextColor:v2 largeTextColor:v3 smallTextColor:v4 offersTextColor:v5];
  v7 = qword_1EDB27418;
  qword_1EDB27418 = v6;
}

+ (id)defaultAudioFeedPaywallVisualSpecConfigurationSmall
{
  if (qword_1EDB27430 != -1)
  {
    dispatch_once(&qword_1EDB27430, &__block_literal_global_69_0);
  }

  v3 = qword_1EDB27428;

  return v3;
}

void __87__FCPaywallVisualSpecConfiguration_defaultAudioFeedPaywallVisualSpecConfigurationSmall__block_invoke()
{
  v0 = [FCPaywallVisualSpecConfiguration alloc];
  v8 = [FCColor colorWithRed:0.956862745 green:0.956862745 blue:0.956862745 alpha:1.0];
  v1 = [FCColor colorWithRed:0.184313725 green:0.184313725 blue:0.192156863 alpha:1.0];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor whiteColor];
  v4 = +[FCColor whiteColor];
  v5 = [FCColor colorWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  v6 = [(FCPaywallVisualSpecConfiguration *)v0 initWithMultiResolutionImage:0 darkStyleMultiResolutionImage:0 multiResolutionBadgeImage:0 darkStyleMultiResolutionBadgeImage:0 multiSizeVideo:0 videoURL:0 videoWidth:0.0 videoHeight:0 gradientPercentHeight:0 textTopPadding:57 badgeVerticalOffset:0 backgroundColor:v8 darkStyleBackgroundColor:v1 mastheadTextColor:v2 largeTextColor:v3 smallTextColor:v4 offersTextColor:v5];
  v7 = qword_1EDB27428;
  qword_1EDB27428 = v6;
}

+ (id)defaultAudioFeedPaywallVisualSpecConfigurationLarge
{
  if (qword_1EDB27440 != -1)
  {
    dispatch_once(&qword_1EDB27440, &__block_literal_global_71);
  }

  v3 = qword_1EDB27438;

  return v3;
}

void __87__FCPaywallVisualSpecConfiguration_defaultAudioFeedPaywallVisualSpecConfigurationLarge__block_invoke()
{
  v0 = [FCPaywallVisualSpecConfiguration alloc];
  v8 = [FCColor colorWithRed:0.956862745 green:0.956862745 blue:0.956862745 alpha:1.0];
  v1 = [FCColor colorWithRed:0.184313725 green:0.184313725 blue:0.192156863 alpha:1.0];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor whiteColor];
  v4 = +[FCColor whiteColor];
  v5 = [FCColor colorWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  v6 = [(FCPaywallVisualSpecConfiguration *)v0 initWithMultiResolutionImage:0 darkStyleMultiResolutionImage:0 multiResolutionBadgeImage:0 darkStyleMultiResolutionBadgeImage:0 multiSizeVideo:0 videoURL:0 videoWidth:0.0 videoHeight:0 gradientPercentHeight:0 textTopPadding:57 badgeVerticalOffset:0 backgroundColor:v8 darkStyleBackgroundColor:v1 mastheadTextColor:v2 largeTextColor:v3 smallTextColor:v4 offersTextColor:v5];
  v7 = qword_1EDB27438;
  qword_1EDB27438 = v6;
}

+ (id)defaultPaywallVisualSpecConfiguration
{
  if (qword_1EDB27450 != -1)
  {
    dispatch_once(&qword_1EDB27450, &__block_literal_global_73_1);
  }

  v3 = qword_1EDB27448;

  return v3;
}

void __73__FCPaywallVisualSpecConfiguration_defaultPaywallVisualSpecConfiguration__block_invoke()
{
  v0 = [FCPaywallVisualSpecConfiguration alloc];
  v8 = [FCColor colorWithRed:0.956862745 green:0.956862745 blue:0.956862745 alpha:1.0];
  v1 = [FCColor colorWithRed:0.184313725 green:0.184313725 blue:0.192156863 alpha:1.0];
  v2 = +[FCColor whiteColor];
  v3 = +[FCColor whiteColor];
  v4 = +[FCColor whiteColor];
  v5 = [FCColor colorWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  v6 = [(FCPaywallVisualSpecConfiguration *)v0 initWithMultiResolutionImage:0 darkStyleMultiResolutionImage:0 multiResolutionBadgeImage:0 darkStyleMultiResolutionBadgeImage:0 multiSizeVideo:0 videoURL:0 videoWidth:0.0 videoHeight:0 gradientPercentHeight:0 textTopPadding:57 badgeVerticalOffset:0 backgroundColor:v8 darkStyleBackgroundColor:v1 mastheadTextColor:v2 largeTextColor:v3 smallTextColor:v4 offersTextColor:v5];
  v7 = qword_1EDB27448;
  qword_1EDB27448 = v6;
}

@end