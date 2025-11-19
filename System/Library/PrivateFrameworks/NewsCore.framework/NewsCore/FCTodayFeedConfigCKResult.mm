@interface FCTodayFeedConfigCKResult
- (FCTodayFeedConfigCKResult)initWithRecordsByType:(id)a3;
@end

@implementation FCTodayFeedConfigCKResult

- (FCTodayFeedConfigCKResult)initWithRecordsByType:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FCTodayFeedConfigCKResult;
  v6 = [(FCTodayFeedConfigCKResult *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordsByType, a3);
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E70410];
    v9 = [v8 onlyRecord];

    v10 = [v9 todayFeedConfiguration];
    v11 = [v10 dataUsingEncoding:4];
    configData = v7->_configData;
    v7->_configData = v11;
  }

  return v7;
}

@end