@interface FCHeadlineClusteringRules
+ (id)rulesWithTreatment:(id)a3 configurationSet:(int64_t)a4 deviceIsiPad:(BOOL)a5 limitUnpaidArticles:(BOOL)a6 enforcePublisherCap:(BOOL)a7 minClusterSizeiPhone:(int64_t)a8 maxClusterSizeiPhone:(int64_t)a9 minClusterSizeiPad:(int64_t)a10 maxClusterSizeiPad:(int64_t)a11 todayFeedEnabled:(BOOL)a12;
- (FCHeadlineClusteringRules)init;
- (FCHeadlineClusteringRules)initWithMinClusterSize:(unint64_t)a3 maxClusterSize:(unint64_t)a4 minIdealClusterSize:(unint64_t)a5 maxIdealClusterSize:(unint64_t)a6 minClusterSizeAutoFavorite:(unint64_t)a7 maxClusterSizeAutoFavorite:(unint64_t)a8 minIdealClusterSizeAutoFavorite:(unint64_t)a9 maxIdealClusterSizeAutoFavorite:(unint64_t)a10 maxPublisherOccurrences:(unint64_t)a11 enforcePublisherCap:(BOOL)a12 maxUnpaidArticles:(unint64_t)a13 maxEvergreenArticles:(unint64_t)a14 topicDiversityThreshold:(double)a15 maxNativeAdCount:(unint64_t)a16 thumbnailMinHammingDistance:(unint64_t)a17;
- (unint64_t)maxClusterSizeAutoFavorite;
- (unint64_t)maxIdealClusterSizeAutoFavorite;
- (unint64_t)minClusterSizeAutoFavorite;
- (unint64_t)minIdealClusterSizeAutoFavorite;
@end

@implementation FCHeadlineClusteringRules

+ (id)rulesWithTreatment:(id)a3 configurationSet:(int64_t)a4 deviceIsiPad:(BOOL)a5 limitUnpaidArticles:(BOOL)a6 enforcePublisherCap:(BOOL)a7 minClusterSizeiPhone:(int64_t)a8 maxClusterSizeiPhone:(int64_t)a9 minClusterSizeiPad:(int64_t)a10 maxClusterSizeiPad:(int64_t)a11 todayFeedEnabled:(BOOL)a12
{
  v14 = a6;
  v15 = a5;
  v17 = a12;
  v18 = a10;
  v19 = a3;
  v20 = v19;
  v21 = &a9;
  if (v15)
  {
    v21 = &a11;
  }

  v22 = *v21;
  if (!v15)
  {
    v18 = a8;
  }

  if (!v19)
  {
    v25 = [FCHeadlineClusteringRules alloc];
    if (v15)
    {
      v26 = 5;
    }

    else
    {
      v26 = 3;
    }

    LOBYTE(v45) = a7;
    v27 = [(FCHeadlineClusteringRules *)v25 initWithMinClusterSize:v18 maxClusterSize:v22 minIdealClusterSize:3 maxIdealClusterSize:9 minClusterSizeAutoFavorite:3 maxClusterSizeAutoFavorite:1.0 minIdealClusterSizeAutoFavorite:3 maxIdealClusterSizeAutoFavorite:v26 maxPublisherOccurrences:2 enforcePublisherCap:v45 maxUnpaidArticles:1 maxEvergreenArticles:0 topicDiversityThreshold:0 maxNativeAdCount:0 thumbnailMinHammingDistance:?];
    goto LABEL_49;
  }

  if (v15)
  {
    v23 = [v19 maxUnpaidArticlesIPad];
    v50 = [v20 maxPublisherOccurrencesIPad];
    v24 = [v20 maxNativeAdCountIPad];
  }

  else
  {
    v23 = [v19 maxUnpaidArticlesIPhone];
    v50 = [v20 maxPublisherOccurrencesIPhone];
    v24 = [v20 maxNativeAdCountIPhone];
  }

  v28 = v24;
  [v20 topicDiversityThreshold];
  v30 = v29;
  v49 = v18;
  v48 = v14;
  if (a4 > 0x1C)
  {
    goto LABEL_24;
  }

  if (((1 << a4) & 0x18280000) == 0)
  {
    if (a4 == 11)
    {
      if (v15)
      {
        v31 = [v20 maxUnpaidArticlesIPadForYouGroup];
        v50 = [v20 maxPublisherOccurrencesIPadForYouGroup];
        v33 = [v20 maxNativeAdCountIPadForYouGroup];
        goto LABEL_31;
      }

      v31 = [v20 maxUnpaidArticlesIPhoneForYouGroup];
      v50 = [v20 maxPublisherOccurrencesIPhoneForYouGroup];
      v40 = [v20 maxNativeAdCountIPhoneForYouGroup];
      goto LABEL_40;
    }

    if (a4 == 12)
    {
      if (v15)
      {
        v31 = [v20 maxUnpaidArticlesIPadGreatStoriesYouMissed];
        v50 = [v20 maxPublisherOccurrencesIPadGreatStoriesYouMissed];
        v33 = [v20 maxNativeAdCountIPadGreatStoriesYouMissed];
LABEL_31:
        if (v17)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v47 = v34;
        v46 = [FCHeadlineClusteringRules alloc];
        goto LABEL_35;
      }

      v31 = [v20 maxUnpaidArticlesIPhoneGreatStoriesYouMissed];
      v50 = [v20 maxPublisherOccurrencesIPhoneGreatStoriesYouMissed];
      v40 = [v20 maxNativeAdCountIPhoneGreatStoriesYouMissed];
      goto LABEL_40;
    }

LABEL_24:
    if (a4 == 10)
    {
      if (v15)
      {
        v31 = [v20 maxUnpaidArticlesIPadBestOfBundle];
        v50 = [v20 maxPublisherOccurrencesIPadBestOfBundle];
        v33 = [v20 maxNativeAdCountIPadBestOfBundle];
        goto LABEL_31;
      }

      v31 = [v20 maxUnpaidArticlesIPhoneBestOfBundle];
      v50 = [v20 maxPublisherOccurrencesIPhoneBestOfBundle];
      v40 = [v20 maxNativeAdCountIPhoneBestOfBundle];
    }

    else
    {
      if (v15)
      {
        v31 = [v20 maxUnpaidArticlesIPad];
        v50 = [v20 maxPublisherOccurrencesIPad];
        v33 = [v20 maxNativeAdCountIPad];
        goto LABEL_31;
      }

      v31 = [v20 maxUnpaidArticlesIPhone];
      v50 = [v20 maxPublisherOccurrencesIPhone];
      v40 = [v20 maxNativeAdCountIPhone];
    }

LABEL_40:
    if (v17)
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v47 = v41;
    v46 = [FCHeadlineClusteringRules alloc];
    goto LABEL_44;
  }

  v31 = v23;
  if (v17)
  {
    v32 = v28;
  }

  else
  {
    v32 = 0;
  }

  v47 = v32;
  v46 = [FCHeadlineClusteringRules alloc];
  v30 = 1.0;
  if (!v15)
  {
LABEL_44:
    v35 = [v20 minIdealClusterSizeIPhone];
    v36 = [v20 maxIdealClusterSizeIPhone];
    v37 = [v20 minClusterSizeIPhoneAutoFavorite];
    [v20 maxClusterSizeIPhoneAutoFavorite];
    v38 = [v20 minIdealClusterSizeIPhoneAutoFavorite];
    v39 = [v20 maxIdealClusterSizeIPhoneAutoFavorite];
    goto LABEL_45;
  }

LABEL_35:
  v35 = [v20 minIdealClusterSizeIPad];
  v36 = [v20 maxIdealClusterSizeIPad];
  v37 = [v20 minClusterSizeIPadAutoFavorite];
  [v20 maxClusterSizeIPadAutoFavorite];
  v38 = [v20 minIdealClusterSizeIPadAutoFavorite];
  v39 = [v20 maxIdealClusterSizeIPadAutoFavorite];
LABEL_45:
  if (v48)
  {
    v42 = v31;
  }

  else
  {
    v42 = v22;
  }

  LOBYTE(v45) = a7;
  v27 = -[FCHeadlineClusteringRules initWithMinClusterSize:maxClusterSize:minIdealClusterSize:maxIdealClusterSize:minClusterSizeAutoFavorite:maxClusterSizeAutoFavorite:minIdealClusterSizeAutoFavorite:maxIdealClusterSizeAutoFavorite:maxPublisherOccurrences:enforcePublisherCap:maxUnpaidArticles:maxEvergreenArticles:topicDiversityThreshold:maxNativeAdCount:thumbnailMinHammingDistance:](v46, "initWithMinClusterSize:maxClusterSize:minIdealClusterSize:maxIdealClusterSize:minClusterSizeAutoFavorite:maxClusterSizeAutoFavorite:minIdealClusterSizeAutoFavorite:maxIdealClusterSizeAutoFavorite:maxPublisherOccurrences:enforcePublisherCap:maxUnpaidArticles:maxEvergreenArticles:topicDiversityThreshold:maxNativeAdCount:thumbnailMinHammingDistance:", v49, v22, v35, v36, v37, v30, v38, v39, v50, v45, v42, [v20 maxEvergreenArticlesPerGroup], v47, objc_msgSend(v20, "thumbnailMinHammingDistance"));
LABEL_49:
  v43 = v27;

  return v43;
}

- (FCHeadlineClusteringRules)initWithMinClusterSize:(unint64_t)a3 maxClusterSize:(unint64_t)a4 minIdealClusterSize:(unint64_t)a5 maxIdealClusterSize:(unint64_t)a6 minClusterSizeAutoFavorite:(unint64_t)a7 maxClusterSizeAutoFavorite:(unint64_t)a8 minIdealClusterSizeAutoFavorite:(unint64_t)a9 maxIdealClusterSizeAutoFavorite:(unint64_t)a10 maxPublisherOccurrences:(unint64_t)a11 enforcePublisherCap:(BOOL)a12 maxUnpaidArticles:(unint64_t)a13 maxEvergreenArticles:(unint64_t)a14 topicDiversityThreshold:(double)a15 maxNativeAdCount:(unint64_t)a16 thumbnailMinHammingDistance:(unint64_t)a17
{
  v30.receiver = self;
  v30.super_class = FCHeadlineClusteringRules;
  result = [(FCHeadlineClusteringRules *)&v30 init];
  if (result)
  {
    result->_minClusterSize = a3;
    result->_maxClusterSize = a4;
    result->_minIdealClusterSize = a5;
    result->_maxIdealClusterSize = a6;
    result->_minClusterSizeAutoFavorite = a7;
    result->_maxClusterSizeAutoFavorite = a8;
    result->_minIdealClusterSizeAutoFavorite = a9;
    result->_maxIdealClusterSizeAutoFavorite = a10;
    result->_enforcePublisherCap = a12;
    result->_maxUnpaidArticles = a13;
    result->_maxEvergreenArticles = a14;
    result->_topicDiversityThreshold = a15;
    result->_maxPublisherOccurrences = a11;
    result->_maxNativeAdCount = a16;
    result->_thumbnailMinHammingDistance = a17;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_autoFavoriteClusterMinSizeMultiplier = _Q0;
  }

  return result;
}

- (FCHeadlineClusteringRules)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCHeadlineClusteringRules init]";
    v10 = 2080;
    v11 = "FCHeadlineClusteringRules.m";
    v12 = 1024;
    v13 = 213;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCHeadlineClusteringRules init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)minClusterSizeAutoFavorite
{
  minClusterSizeAutoFavorite = self->_minClusterSizeAutoFavorite;
  [(FCHeadlineClusteringRules *)self autoFavoriteClusterMinSizeMultiplier];
  *&v3 = v3 * minClusterSizeAutoFavorite;
  return vcvtas_u32_f32(*&v3);
}

- (unint64_t)maxClusterSizeAutoFavorite
{
  maxClusterSizeAutoFavorite = self->_maxClusterSizeAutoFavorite;
  [(FCHeadlineClusteringRules *)self autoFavoriteClusterMaxSizeMultiplier];
  *&v3 = v3 * maxClusterSizeAutoFavorite;
  return vcvtas_u32_f32(*&v3);
}

- (unint64_t)minIdealClusterSizeAutoFavorite
{
  minIdealClusterSizeAutoFavorite = self->_minIdealClusterSizeAutoFavorite;
  [(FCHeadlineClusteringRules *)self autoFavoriteClusterMinSizeMultiplier];
  *&v3 = v3 * minIdealClusterSizeAutoFavorite;
  return vcvtas_u32_f32(*&v3);
}

- (unint64_t)maxIdealClusterSizeAutoFavorite
{
  maxIdealClusterSizeAutoFavorite = self->_maxIdealClusterSizeAutoFavorite;
  [(FCHeadlineClusteringRules *)self autoFavoriteClusterMaxSizeMultiplier];
  *&v3 = v3 * maxIdealClusterSizeAutoFavorite;
  return vcvtas_u32_f32(*&v3);
}

@end