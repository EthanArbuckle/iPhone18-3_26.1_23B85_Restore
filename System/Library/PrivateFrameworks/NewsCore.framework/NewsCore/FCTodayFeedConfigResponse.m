@interface FCTodayFeedConfigResponse
- (FCTodayFeedConfigResponse)initWithCKConfigData:(id)a3 ckRecordsByType:(id)a4 newsEdgeConfigData:(id)a5;
@end

@implementation FCTodayFeedConfigResponse

- (FCTodayFeedConfigResponse)initWithCKConfigData:(id)a3 ckRecordsByType:(id)a4 newsEdgeConfigData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCTodayFeedConfigResponse;
  v12 = [(FCTodayFeedConfigResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ckConfigData, a3);
    objc_storeStrong(&v13->_ckRecordsByType, a4);
    objc_storeStrong(&v13->_newsEdgeConfigData, a5);
  }

  return v13;
}

@end