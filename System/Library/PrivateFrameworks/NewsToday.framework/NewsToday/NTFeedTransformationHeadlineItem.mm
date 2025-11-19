@interface NTFeedTransformationHeadlineItem
- (BOOL)isEqual:(id)a3;
- (NSDate)cacheCutoffTimeRelativeDate;
- (NSString)clusterID;
- (NSString)identifier;
- (NTFeedTransformationHeadlineItem)init;
- (NTFeedTransformationHeadlineItem)initWithHeadline:(id)a3 cacheExpirationDate:(id)a4 actionURL:(id)a5;
- (id)protoitemWithFetchedFeedItemHeadline:(id)a3 configuration:(id)a4;
- (unint64_t)hash;
@end

@implementation NTFeedTransformationHeadlineItem

- (NTFeedTransformationHeadlineItem)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTFeedTransformationHeadlineItem init]";
    v10 = 2080;
    v11 = "NTFeedTransformationHeadlineItem.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTFeedTransformationHeadlineItem init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTFeedTransformationHeadlineItem)initWithHeadline:(id)a3 cacheExpirationDate:(id)a4 actionURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationHeadlineItem initWithHeadline:cacheExpirationDate:actionURL:];
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationHeadlineItem initWithHeadline:cacheExpirationDate:actionURL:];
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = NTFeedTransformationHeadlineItem;
  v11 = [(NTFeedTransformationHeadlineItem *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    headline = v11->_headline;
    v11->_headline = v12;

    v14 = [v9 copy];
    cacheExpirationDate = v11->_cacheExpirationDate;
    v11->_cacheExpirationDate = v14;

    v16 = [v10 copy];
    actionURL = v11->_actionURL;
    v11->_actionURL = v16;
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
    v6 = [(NTFeedTransformationHeadlineItem *)self headline];
    v7 = [v5 headline];
    if ([v6 isEqual:v7])
    {
      v8 = [(NTFeedTransformationHeadlineItem *)self cacheExpirationDate];
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
  v3 = [(NTFeedTransformationHeadlineItem *)self headline];
  v4 = [v3 hash];
  v5 = [(NTFeedTransformationHeadlineItem *)self cacheExpirationDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)identifier
{
  v2 = [(NTFeedTransformationHeadlineItem *)self headline];
  v3 = [v2 articleID];

  return v3;
}

- (NSString)clusterID
{
  v2 = [(NTFeedTransformationHeadlineItem *)self headline];
  v3 = [v2 clusterID];

  return v3;
}

- (NSDate)cacheCutoffTimeRelativeDate
{
  v2 = [(NTFeedTransformationHeadlineItem *)self headline];
  v3 = [v2 publishDate];

  return v3;
}

- (id)protoitemWithFetchedFeedItemHeadline:(id)a3 configuration:(id)a4
{
  v5 = a4;
  v6 = [(NTFeedTransformationHeadlineItem *)self headline];
  if ([(NTFeedTransformationHeadlineItem *)self isLocal])
  {
    objc_opt_class();
    v7 = FCDynamicCast();
    [v7 assignStoryType:5 withConfiguration:v5];
  }

  v8 = [NTTodayHeadlineProtoitem alloc];
  v9 = [(NTFeedTransformationHeadlineItem *)self identifier];
  v10 = [(NTFeedTransformationHeadlineItem *)self actionURL];
  v11 = [(NTTodayHeadlineProtoitem *)v8 initWithIdentifier:v9 headline:v6 actionURL:v10];

  return v11;
}

- (void)initWithHeadline:cacheExpirationDate:actionURL:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "headline"];
  *buf = 136315906;
  v3 = "[NTFeedTransformationHeadlineItem initWithHeadline:cacheExpirationDate:actionURL:]";
  v4 = 2080;
  v5 = "NTFeedTransformationHeadlineItem.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithHeadline:cacheExpirationDate:actionURL:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "cacheExpirationDate"];
  *buf = 136315906;
  v3 = "[NTFeedTransformationHeadlineItem initWithHeadline:cacheExpirationDate:actionURL:]";
  v4 = 2080;
  v5 = "NTFeedTransformationHeadlineItem.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end