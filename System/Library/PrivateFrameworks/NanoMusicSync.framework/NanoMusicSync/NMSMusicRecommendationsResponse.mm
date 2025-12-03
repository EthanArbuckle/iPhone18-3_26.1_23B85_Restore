@interface NMSMusicRecommendationsResponse
- (NMSMusicRecommendationsResponse)initWithCachedData:(id)data recommendations:(id)recommendations;
@end

@implementation NMSMusicRecommendationsResponse

- (NMSMusicRecommendationsResponse)initWithCachedData:(id)data recommendations:(id)recommendations
{
  dataCopy = data;
  recommendationsCopy = recommendations;
  v12.receiver = self;
  v12.super_class = NMSMusicRecommendationsResponse;
  v9 = [(NMSMusicRecommendationsResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedData, data);
    objc_storeStrong(&v10->_recommendations, recommendations);
  }

  return v10;
}

@end