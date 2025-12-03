@interface FCTodayFeedConfigResponse
- (FCTodayFeedConfigResponse)initWithCKConfigData:(id)data ckRecordsByType:(id)type newsEdgeConfigData:(id)configData;
@end

@implementation FCTodayFeedConfigResponse

- (FCTodayFeedConfigResponse)initWithCKConfigData:(id)data ckRecordsByType:(id)type newsEdgeConfigData:(id)configData
{
  dataCopy = data;
  typeCopy = type;
  configDataCopy = configData;
  v15.receiver = self;
  v15.super_class = FCTodayFeedConfigResponse;
  v12 = [(FCTodayFeedConfigResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ckConfigData, data);
    objc_storeStrong(&v13->_ckRecordsByType, type);
    objc_storeStrong(&v13->_newsEdgeConfigData, configData);
  }

  return v13;
}

@end