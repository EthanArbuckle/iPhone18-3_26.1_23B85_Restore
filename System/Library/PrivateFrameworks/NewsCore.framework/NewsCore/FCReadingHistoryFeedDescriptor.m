@interface FCReadingHistoryFeedDescriptor
- (FCReadingHistoryFeedDescriptor)initWithPrivateDataController:(id)a3 identifier:(id)a4 feedType:(int64_t)a5;
- (FCReadingHistoryFeedDescriptor)initWithReadingHistory:(id)a3;
- (id)backingHeadlineIDs;
@end

@implementation FCReadingHistoryFeedDescriptor

- (id)backingHeadlineIDs
{
  v2 = [(FCReadingHistoryFeedDescriptor *)self readingHistory];
  v3 = [v2 sortedVisitedArticleIDs];

  return v3;
}

- (FCReadingHistoryFeedDescriptor)initWithPrivateDataController:(id)a3 identifier:(id)a4 feedType:(int64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v15 = "[FCReadingHistoryFeedDescriptor initWithPrivateDataController:identifier:feedType:]";
    v16 = 2080;
    v17 = "FCPrivateZoneFeedDescriptor.m";
    v18 = 1024;
    v19 = 98;
    v20 = 2114;
    v21 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = MEMORY[0x1E695DF30];
  v10 = *MEMORY[0x1E695D930];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCReadingHistoryFeedDescriptor initWithPrivateDataController:identifier:feedType:]"];
  v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

- (FCReadingHistoryFeedDescriptor)initWithReadingHistory:(id)a3
{
  v4.receiver = self;
  v4.super_class = FCReadingHistoryFeedDescriptor;
  return [(FCPrivateZoneFeedDescriptor *)&v4 initWithPrivateDataController:a3 identifier:@"FCReading-History" feedType:3];
}

@end