@interface FCTodayFeedConfigCKResult
- (FCTodayFeedConfigCKResult)initWithRecordsByType:(id)type;
@end

@implementation FCTodayFeedConfigCKResult

- (FCTodayFeedConfigCKResult)initWithRecordsByType:(id)type
{
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = FCTodayFeedConfigCKResult;
  v6 = [(FCTodayFeedConfigCKResult *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recordsByType, type);
    v8 = [typeCopy objectForKeyedSubscript:&unk_1F2E70410];
    onlyRecord = [v8 onlyRecord];

    todayFeedConfiguration = [onlyRecord todayFeedConfiguration];
    v11 = [todayFeedConfiguration dataUsingEncoding:4];
    configData = v7->_configData;
    v7->_configData = v11;
  }

  return v7;
}

@end