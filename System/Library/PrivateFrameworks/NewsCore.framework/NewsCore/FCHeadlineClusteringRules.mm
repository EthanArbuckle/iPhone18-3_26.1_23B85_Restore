@interface FCHeadlineClusteringRules
+ (id)rulesWithTreatment:(id)treatment configurationSet:(int64_t)set deviceIsiPad:(BOOL)pad limitUnpaidArticles:(BOOL)articles enforcePublisherCap:(BOOL)cap minClusterSizeiPhone:(int64_t)phone maxClusterSizeiPhone:(int64_t)sizeiPhone minClusterSizeiPad:(int64_t)self0 maxClusterSizeiPad:(int64_t)self1 todayFeedEnabled:(BOOL)self2;
- (FCHeadlineClusteringRules)init;
- (FCHeadlineClusteringRules)initWithMinClusterSize:(unint64_t)size maxClusterSize:(unint64_t)clusterSize minIdealClusterSize:(unint64_t)idealClusterSize maxIdealClusterSize:(unint64_t)maxIdealClusterSize minClusterSizeAutoFavorite:(unint64_t)favorite maxClusterSizeAutoFavorite:(unint64_t)autoFavorite minIdealClusterSizeAutoFavorite:(unint64_t)sizeAutoFavorite maxIdealClusterSizeAutoFavorite:(unint64_t)self0 maxPublisherOccurrences:(unint64_t)self1 enforcePublisherCap:(BOOL)self2 maxUnpaidArticles:(unint64_t)self3 maxEvergreenArticles:(unint64_t)self4 topicDiversityThreshold:(double)self5 maxNativeAdCount:(unint64_t)self6 thumbnailMinHammingDistance:(unint64_t)self7;
- (unint64_t)maxClusterSizeAutoFavorite;
- (unint64_t)maxIdealClusterSizeAutoFavorite;
- (unint64_t)minClusterSizeAutoFavorite;
- (unint64_t)minIdealClusterSizeAutoFavorite;
@end

@implementation FCHeadlineClusteringRules

+ (id)rulesWithTreatment:(id)treatment configurationSet:(int64_t)set deviceIsiPad:(BOOL)pad limitUnpaidArticles:(BOOL)articles enforcePublisherCap:(BOOL)cap minClusterSizeiPhone:(int64_t)phone maxClusterSizeiPhone:(int64_t)sizeiPhone minClusterSizeiPad:(int64_t)self0 maxClusterSizeiPad:(int64_t)self1 todayFeedEnabled:(BOOL)self2
{
  articlesCopy = articles;
  padCopy = pad;
  enabledCopy = enabled;
  phoneCopy = sizeiPad;
  treatmentCopy = treatment;
  v20 = treatmentCopy;
  v21 = &sizeiPhone;
  if (padCopy)
  {
    v21 = &clusterSizeiPad;
  }

  v22 = *v21;
  if (!padCopy)
  {
    phoneCopy = phone;
  }

  if (!treatmentCopy)
  {
    v25 = [FCHeadlineClusteringRules alloc];
    if (padCopy)
    {
      v26 = 5;
    }

    else
    {
      v26 = 3;
    }

    LOBYTE(v45) = cap;
    v27 = [(FCHeadlineClusteringRules *)v25 initWithMinClusterSize:phoneCopy maxClusterSize:v22 minIdealClusterSize:3 maxIdealClusterSize:9 minClusterSizeAutoFavorite:3 maxClusterSizeAutoFavorite:1.0 minIdealClusterSizeAutoFavorite:3 maxIdealClusterSizeAutoFavorite:v26 maxPublisherOccurrences:2 enforcePublisherCap:v45 maxUnpaidArticles:1 maxEvergreenArticles:0 topicDiversityThreshold:0 maxNativeAdCount:0 thumbnailMinHammingDistance:?];
    goto LABEL_49;
  }

  if (padCopy)
  {
    maxUnpaidArticlesIPad = [treatmentCopy maxUnpaidArticlesIPad];
    maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPad];
    maxNativeAdCountIPad = [v20 maxNativeAdCountIPad];
  }

  else
  {
    maxUnpaidArticlesIPad = [treatmentCopy maxUnpaidArticlesIPhone];
    maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPhone];
    maxNativeAdCountIPad = [v20 maxNativeAdCountIPhone];
  }

  v28 = maxNativeAdCountIPad;
  [v20 topicDiversityThreshold];
  v30 = v29;
  v49 = phoneCopy;
  v48 = articlesCopy;
  if (set > 0x1C)
  {
    goto LABEL_24;
  }

  if (((1 << set) & 0x18280000) == 0)
  {
    if (set == 11)
    {
      if (padCopy)
      {
        maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPadForYouGroup];
        maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPadForYouGroup];
        maxNativeAdCountIPadForYouGroup = [v20 maxNativeAdCountIPadForYouGroup];
        goto LABEL_31;
      }

      maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPhoneForYouGroup];
      maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPhoneForYouGroup];
      maxNativeAdCountIPhoneForYouGroup = [v20 maxNativeAdCountIPhoneForYouGroup];
      goto LABEL_40;
    }

    if (set == 12)
    {
      if (padCopy)
      {
        maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPadGreatStoriesYouMissed];
        maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPadGreatStoriesYouMissed];
        maxNativeAdCountIPadForYouGroup = [v20 maxNativeAdCountIPadGreatStoriesYouMissed];
LABEL_31:
        if (enabledCopy)
        {
          v34 = maxNativeAdCountIPadForYouGroup;
        }

        else
        {
          v34 = 0;
        }

        v47 = v34;
        v46 = [FCHeadlineClusteringRules alloc];
        goto LABEL_35;
      }

      maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPhoneGreatStoriesYouMissed];
      maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPhoneGreatStoriesYouMissed];
      maxNativeAdCountIPhoneForYouGroup = [v20 maxNativeAdCountIPhoneGreatStoriesYouMissed];
      goto LABEL_40;
    }

LABEL_24:
    if (set == 10)
    {
      if (padCopy)
      {
        maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPadBestOfBundle];
        maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPadBestOfBundle];
        maxNativeAdCountIPadForYouGroup = [v20 maxNativeAdCountIPadBestOfBundle];
        goto LABEL_31;
      }

      maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPhoneBestOfBundle];
      maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPhoneBestOfBundle];
      maxNativeAdCountIPhoneForYouGroup = [v20 maxNativeAdCountIPhoneBestOfBundle];
    }

    else
    {
      if (padCopy)
      {
        maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPad];
        maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPad];
        maxNativeAdCountIPadForYouGroup = [v20 maxNativeAdCountIPad];
        goto LABEL_31;
      }

      maxUnpaidArticlesIPadForYouGroup = [v20 maxUnpaidArticlesIPhone];
      maxPublisherOccurrencesIPad = [v20 maxPublisherOccurrencesIPhone];
      maxNativeAdCountIPhoneForYouGroup = [v20 maxNativeAdCountIPhone];
    }

LABEL_40:
    if (enabledCopy)
    {
      v41 = maxNativeAdCountIPhoneForYouGroup;
    }

    else
    {
      v41 = 0;
    }

    v47 = v41;
    v46 = [FCHeadlineClusteringRules alloc];
    goto LABEL_44;
  }

  maxUnpaidArticlesIPadForYouGroup = maxUnpaidArticlesIPad;
  if (enabledCopy)
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
  if (!padCopy)
  {
LABEL_44:
    minIdealClusterSizeIPhone = [v20 minIdealClusterSizeIPhone];
    maxIdealClusterSizeIPhone = [v20 maxIdealClusterSizeIPhone];
    minClusterSizeIPhoneAutoFavorite = [v20 minClusterSizeIPhoneAutoFavorite];
    [v20 maxClusterSizeIPhoneAutoFavorite];
    minIdealClusterSizeIPhoneAutoFavorite = [v20 minIdealClusterSizeIPhoneAutoFavorite];
    maxIdealClusterSizeIPhoneAutoFavorite = [v20 maxIdealClusterSizeIPhoneAutoFavorite];
    goto LABEL_45;
  }

LABEL_35:
  minIdealClusterSizeIPhone = [v20 minIdealClusterSizeIPad];
  maxIdealClusterSizeIPhone = [v20 maxIdealClusterSizeIPad];
  minClusterSizeIPhoneAutoFavorite = [v20 minClusterSizeIPadAutoFavorite];
  [v20 maxClusterSizeIPadAutoFavorite];
  minIdealClusterSizeIPhoneAutoFavorite = [v20 minIdealClusterSizeIPadAutoFavorite];
  maxIdealClusterSizeIPhoneAutoFavorite = [v20 maxIdealClusterSizeIPadAutoFavorite];
LABEL_45:
  if (v48)
  {
    v42 = maxUnpaidArticlesIPadForYouGroup;
  }

  else
  {
    v42 = v22;
  }

  LOBYTE(v45) = cap;
  v27 = -[FCHeadlineClusteringRules initWithMinClusterSize:maxClusterSize:minIdealClusterSize:maxIdealClusterSize:minClusterSizeAutoFavorite:maxClusterSizeAutoFavorite:minIdealClusterSizeAutoFavorite:maxIdealClusterSizeAutoFavorite:maxPublisherOccurrences:enforcePublisherCap:maxUnpaidArticles:maxEvergreenArticles:topicDiversityThreshold:maxNativeAdCount:thumbnailMinHammingDistance:](v46, "initWithMinClusterSize:maxClusterSize:minIdealClusterSize:maxIdealClusterSize:minClusterSizeAutoFavorite:maxClusterSizeAutoFavorite:minIdealClusterSizeAutoFavorite:maxIdealClusterSizeAutoFavorite:maxPublisherOccurrences:enforcePublisherCap:maxUnpaidArticles:maxEvergreenArticles:topicDiversityThreshold:maxNativeAdCount:thumbnailMinHammingDistance:", v49, v22, minIdealClusterSizeIPhone, maxIdealClusterSizeIPhone, minClusterSizeIPhoneAutoFavorite, v30, minIdealClusterSizeIPhoneAutoFavorite, maxIdealClusterSizeIPhoneAutoFavorite, maxPublisherOccurrencesIPad, v45, v42, [v20 maxEvergreenArticlesPerGroup], v47, objc_msgSend(v20, "thumbnailMinHammingDistance"));
LABEL_49:
  v43 = v27;

  return v43;
}

- (FCHeadlineClusteringRules)initWithMinClusterSize:(unint64_t)size maxClusterSize:(unint64_t)clusterSize minIdealClusterSize:(unint64_t)idealClusterSize maxIdealClusterSize:(unint64_t)maxIdealClusterSize minClusterSizeAutoFavorite:(unint64_t)favorite maxClusterSizeAutoFavorite:(unint64_t)autoFavorite minIdealClusterSizeAutoFavorite:(unint64_t)sizeAutoFavorite maxIdealClusterSizeAutoFavorite:(unint64_t)self0 maxPublisherOccurrences:(unint64_t)self1 enforcePublisherCap:(BOOL)self2 maxUnpaidArticles:(unint64_t)self3 maxEvergreenArticles:(unint64_t)self4 topicDiversityThreshold:(double)self5 maxNativeAdCount:(unint64_t)self6 thumbnailMinHammingDistance:(unint64_t)self7
{
  v30.receiver = self;
  v30.super_class = FCHeadlineClusteringRules;
  result = [(FCHeadlineClusteringRules *)&v30 init];
  if (result)
  {
    result->_minClusterSize = size;
    result->_maxClusterSize = clusterSize;
    result->_minIdealClusterSize = idealClusterSize;
    result->_maxIdealClusterSize = maxIdealClusterSize;
    result->_minClusterSizeAutoFavorite = favorite;
    result->_maxClusterSizeAutoFavorite = autoFavorite;
    result->_minIdealClusterSizeAutoFavorite = sizeAutoFavorite;
    result->_maxIdealClusterSizeAutoFavorite = clusterSizeAutoFavorite;
    result->_enforcePublisherCap = cap;
    result->_maxUnpaidArticles = articles;
    result->_maxEvergreenArticles = evergreenArticles;
    result->_topicDiversityThreshold = threshold;
    result->_maxPublisherOccurrences = occurrences;
    result->_maxNativeAdCount = count;
    result->_thumbnailMinHammingDistance = distance;
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