@interface FCFeedItemsWithIDLookupResult
- (FCFeedItemsWithIDLookupResult)init;
- (FCFeedItemsWithIDLookupResult)initWithSectionIDByFeedID:(id)d feedItems:(id)items;
@end

@implementation FCFeedItemsWithIDLookupResult

- (FCFeedItemsWithIDLookupResult)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedItemsWithIDLookupResult init]";
    v10 = 2080;
    v11 = "FCChannelSectionHeadlinesFetchOperation.m";
    v12 = 1024;
    v13 = 88;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedItemsWithIDLookupResult init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeedItemsWithIDLookupResult)initWithSectionIDByFeedID:(id)d feedItems:(id)items
{
  dCopy = d;
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = FCFeedItemsWithIDLookupResult;
  v8 = [(FCFeedItemsWithIDLookupResult *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    sectionIDsByFeedID = v8->_sectionIDsByFeedID;
    v8->_sectionIDsByFeedID = v9;

    v11 = [itemsCopy copy];
    feedItems = v8->_feedItems;
    v8->_feedItems = v11;
  }

  return v8;
}

@end