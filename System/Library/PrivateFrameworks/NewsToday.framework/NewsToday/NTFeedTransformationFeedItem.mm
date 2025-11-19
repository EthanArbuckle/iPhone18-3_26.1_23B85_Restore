@interface NTFeedTransformationFeedItem
- (BOOL)isEqual:(id)a3;
- (NSDate)cacheCutoffTimeRelativeDate;
- (NSString)clusterID;
- (NSString)identifier;
- (NTFeedTransformationFeedItem)init;
- (NTFeedTransformationFeedItem)initWithFeedItem:(id)a3 cacheExpirationDate:(id)a4 surfacedByChannelID:(id)a5;
- (id)protoitemWithFetchedFeedItemHeadline:(id)a3 configuration:(id)a4;
- (unint64_t)hash;
@end

@implementation NTFeedTransformationFeedItem

- (NTFeedTransformationFeedItem)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTFeedTransformationFeedItem init]";
    v10 = 2080;
    v11 = "NTFeedTransformationFeedItem.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTFeedTransformationFeedItem init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTFeedTransformationFeedItem)initWithFeedItem:(id)a3 cacheExpirationDate:(id)a4 surfacedByChannelID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationFeedItem initWithFeedItem:cacheExpirationDate:surfacedByChannelID:];
  }

  v19.receiver = self;
  v19.super_class = NTFeedTransformationFeedItem;
  v11 = [(NTFeedTransformationFeedItem *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    feedItem = v11->_feedItem;
    v11->_feedItem = v12;

    v14 = [v9 copy];
    cacheExpirationDate = v11->_cacheExpirationDate;
    v11->_cacheExpirationDate = v14;

    v16 = [v10 copy];
    surfacedByChannelID = v11->_surfacedByChannelID;
    v11->_surfacedByChannelID = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = [(NTFeedTransformationFeedItem *)self feedItem];
    v7 = [v5 feedItem];
    if ([v6 isEqual:v7])
    {
      v8 = [(NTFeedTransformationFeedItem *)self cacheExpirationDate];
      v9 = [v5 cacheExpirationDate];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NTFeedTransformationFeedItem *)self feedItem];
  v4 = [v3 hash];
  v5 = [(NTFeedTransformationFeedItem *)self cacheExpirationDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)identifier
{
  v2 = [(NTFeedTransformationFeedItem *)self feedItem];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)clusterID
{
  v2 = [(NTFeedTransformationFeedItem *)self feedItem];
  v3 = [v2 clusterID];

  return v3;
}

- (NSDate)cacheCutoffTimeRelativeDate
{
  v2 = [(NTFeedTransformationFeedItem *)self feedItem];
  v3 = [v2 publishDate];

  return v3;
}

- (id)protoitemWithFetchedFeedItemHeadline:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NTFeedTransformationFeedItem *)self isLocal])
  {
    objc_opt_class();
    v8 = FCDynamicCast();
    [v8 assignStoryType:5 withConfiguration:v7];
  }

  v9 = [NTTodayHeadlineProtoitem alloc];
  v10 = [(NTFeedTransformationFeedItem *)self identifier];
  v11 = [(NTTodayHeadlineProtoitem *)v9 initWithIdentifier:v10 headline:v6 actionURL:0];

  return v11;
}

- (void)initWithFeedItem:cacheExpirationDate:surfacedByChannelID:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItem"];
  *buf = 136315906;
  v3 = "[NTFeedTransformationFeedItem initWithFeedItem:cacheExpirationDate:surfacedByChannelID:]";
  v4 = 2080;
  v5 = "NTFeedTransformationFeedItem.m";
  v6 = 1024;
  v7 = 34;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end