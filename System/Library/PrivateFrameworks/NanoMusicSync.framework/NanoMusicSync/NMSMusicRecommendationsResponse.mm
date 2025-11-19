@interface NMSMusicRecommendationsResponse
- (NMSMusicRecommendationsResponse)initWithCachedData:(id)a3 recommendations:(id)a4;
@end

@implementation NMSMusicRecommendationsResponse

- (NMSMusicRecommendationsResponse)initWithCachedData:(id)a3 recommendations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NMSMusicRecommendationsResponse;
  v9 = [(NMSMusicRecommendationsResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedData, a3);
    objc_storeStrong(&v10->_recommendations, a4);
  }

  return v10;
}

@end