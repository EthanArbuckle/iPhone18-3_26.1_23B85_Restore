@interface FCPaywallVisualSpecConfiguration
+ (id)defaultAudioFeedPaywallVisualSpecConfigurationLarge;
+ (id)defaultAudioFeedPaywallVisualSpecConfigurationSmall;
+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationLarge;
+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationMedium;
+ (id)defaultMagazineFeedPaywallVisualSpecConfigurationSmall;
+ (id)defaultPaywallVisualSpecConfiguration;
- (BOOL)isEqual:(id)a3;
- (FCPaywallVisualSpecConfiguration)init;
- (FCPaywallVisualSpecConfiguration)initWithConfigDictionary:(id)a3;
- (FCPaywallVisualSpecConfiguration)initWithMultiResolutionImage:(id)a3 darkStyleMultiResolutionImage:(id)a4 multiResolutionBadgeImage:(id)a5 darkStyleMultiResolutionBadgeImage:(id)a6 multiSizeVideo:(id)a7 videoURL:(id)a8 videoWidth:(int64_t)a9 videoHeight:(int64_t)a10 gradientPercentHeight:(double)a11 textTopPadding:(int64_t)a12 badgeVerticalOffset:(int64_t)a13 backgroundColor:(id)a14 darkStyleBackgroundColor:(id)a15 mastheadTextColor:(id)a16 largeTextColor:(id)a17 smallTextColor:(id)a18 offersTextColor:(id)a19;
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

- (FCPaywallVisualSpecConfiguration)initWithConfigDictionary:(id)a3
{
  v3 = a3;
  v32 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"image", 0);
  v34 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v32];
  v31 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"alternateImage", 0);
  v33 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v31];
  v30 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"badgeImage", 0);
  v17 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v30];
  v29 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"alternateBadgeImage", 0);
  v16 = [[FCMultiResolutionImage alloc] initWithConfigDictionary:v29];
  v28 = FCAppConfigurationDictionaryValueWithDefaultValue(v3, @"video", 0);
  v27 = [[FCMultiSizeVideo alloc] initWithConfigDictionary:v28];
  v26 = FCAppConfigurationURLValue(v3, @"videoURL");
  v22 = FCAppConfigurationIntegerValue(v3, @"videoWidth", 0);
  v21 = FCAppConfigurationIntegerValue(v3, @"videoHeight", 0);
  v4 = FCAppConfigurationDoubleValue(v3, @"gradientPercentHeight", 0.0);
  v19 = FCAppConfigurationIntegerValue(v3, @"textTopPadding", 57);
  v15 = FCAppConfigurationIntegerValue(v3, @"badgeVerticalOffset", 0);
  v25 = FCAppConfigurationStringValue(v3, @"backgroundColor", 0);
  v13 = [FCColor nullableColorWithHexString:v25];
  v20 = FCAppConfigurationStringValue(v3, @"alternateBackgroundColor", 0);
  v12 = [FCColor nullableColorWithHexString:v20];
  v18 = FCAppConfigurationStringValue(v3, @"mastheadColor", 0);
  v5 = [FCColor nullableColorWithHexString:v18];
  v14 = FCAppConfigurationStringValue(v3, @"largeTextColor", 0);
  v6 = [FCColor nullableColorWithHexString:v14];
  v7 = FCAppConfigurationStringValue(v3, @"smallTextColor", 0);
  v8 = [FCColor nullableColorWithHexString:v7];
  v9 = FCAppConfigurationStringValue(v3, @"offersTextColor", 0);

  v10 = [FCColor nullableColorWithHexString:v9];
  v24 = [(FCPaywallVisualSpecConfiguration *)self initWithMultiResolutionImage:v34 darkStyleMultiResolutionImage:v33 multiResolutionBadgeImage:v17 darkStyleMultiResolutionBadgeImage:v16 multiSizeVideo:v27 videoURL:v26 videoWidth:v4 videoHeight:v22 gradientPercentHeight:v21 textTopPadding:v19 badgeVerticalOffset:v15 backgroundColor:v13 darkStyleBackgroundColor:v12 mastheadTextColor:v5 largeTextColor:v6 smallTextColor:v8 offersTextColor:v10];

  return v24;
}

- (FCPaywallVisualSpecConfiguration)initWithMultiResolutionImage:(id)a3 darkStyleMultiResolutionImage:(id)a4 multiResolutionBadgeImage:(id)a5 darkStyleMultiResolutionBadgeImage:(id)a6 multiSizeVideo:(id)a7 videoURL:(id)a8 videoWidth:(int64_t)a9 videoHeight:(int64_t)a10 gradientPercentHeight:(double)a11 textTopPadding:(int64_t)a12 badgeVerticalOffset:(int64_t)a13 backgroundColor:(id)a14 darkStyleBackgroundColor:(id)a15 mastheadTextColor:(id)a16 largeTextColor:(id)a17 smallTextColor:(id)a18 offersTextColor:(id)a19
{
  v44 = a3;
  v42 = a4;
  v35 = a5;
  v41 = a5;
  v40 = a6;
  v36 = a7;
  v25 = a7;
  v37 = a8;
  v26 = a8;
  v43 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v39 = a19;
  v45.receiver = self;
  v45.super_class = FCPaywallVisualSpecConfiguration;
  v31 = [(FCPaywallVisualSpecConfiguration *)&v45 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_multiResolutionImage, a3);
    objc_storeStrong(&v32->_darkStyleMultiResolutionImage, a4);
    objc_storeStrong(&v32->_multiResolutionBadgeImage, v35);
    objc_storeStrong(&v32->_darkStyleMultiResolutionBadgeImage, a6);
    objc_storeStrong(&v32->_multiSizeVideo, v36);
    objc_storeStrong(&v32->_videoURL, v37);
    v32->_videoWidth = a9;
    v32->_videoHeight = a10;
    v32->_gradientPercentHeight = a11;
    v32->_textTopPadding = a12;
    v32->_badgeVerticalOffset = a13;
    objc_storeStrong(&v32->_backgroundColor, a14);
    objc_storeStrong(&v32->_darkStyleBackgroundColor, a15);
    objc_storeStrong(&v32->_mastheadTextColor, a16);
    objc_storeStrong(&v32->_largeTextColor, a17);
    objc_storeStrong(&v32->_smallTextColor, a18);
    objc_storeStrong(&v32->_offersTextColor, a19);
  }

  return v32;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v8 = [(FCPaywallVisualSpecConfiguration *)self multiResolutionImage];
    v9 = [v6 multiResolutionImage];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionImage];
      v12 = [v6 darkStyleMultiResolutionImage];
      if ([v10 nf_object:v11 isEqualToObject:v12])
      {
        v13 = MEMORY[0x1E69E58C0];
        v14 = [(FCPaywallVisualSpecConfiguration *)self multiResolutionBadgeImage];
        v15 = [v6 multiResolutionBadgeImage];
        if ([v13 nf_object:v14 isEqualToObject:v15])
        {
          v36 = v14;
          v16 = MEMORY[0x1E69E58C0];
          v17 = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionBadgeImage];
          [v6 darkStyleMultiResolutionBadgeImage];
          v35 = v37 = v17;
          if ([v16 nf_object:v17 isEqualToObject:?])
          {
            v18 = MEMORY[0x1E69E58C0];
            v19 = [(FCPaywallVisualSpecConfiguration *)self backgroundColor];
            v33 = [v6 backgroundColor];
            v34 = v19;
            if ([v18 nf_object:v19 isEqualToObject:?])
            {
              v20 = MEMORY[0x1E69E58C0];
              v21 = [(FCPaywallVisualSpecConfiguration *)self darkStyleBackgroundColor];
              v22 = [v6 darkStyleBackgroundColor];
              v23 = v20;
              v24 = v22;
              if ([v23 nf_object:v21 isEqualToObject:v22])
              {
                [(FCPaywallVisualSpecConfiguration *)self gradientPercentHeight];
                v26 = v25;
                [v6 gradientPercentHeight];
                v14 = v36;
                if (v26 == v27)
                {
                  v32 = v24;
                  v28 = [(FCPaywallVisualSpecConfiguration *)self textTopPadding];
                  if (v28 == [v6 textTopPadding])
                  {
                    v29 = [(FCPaywallVisualSpecConfiguration *)self badgeVerticalOffset];
                    v30 = v29 == [v6 badgeVerticalOffset];
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
                v14 = v36;
              }
            }

            else
            {
              v30 = 0;
              v14 = v36;
            }
          }

          else
          {
            v30 = 0;
            v14 = v36;
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
  v22 = [(FCPaywallVisualSpecConfiguration *)self multiResolutionImage];
  v3 = [v22 hash];
  v21 = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionImage];
  v4 = [v21 hash] ^ v3;
  v5 = [(FCPaywallVisualSpecConfiguration *)self multiResolutionBadgeImage];
  v6 = [v5 hash];
  v7 = [(FCPaywallVisualSpecConfiguration *)self darkStyleMultiResolutionBadgeImage];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [(FCPaywallVisualSpecConfiguration *)self backgroundColor];
  v10 = [v9 hash];
  v11 = [(FCPaywallVisualSpecConfiguration *)self darkStyleBackgroundColor];
  v12 = v8 ^ v10 ^ [v11 hash];
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