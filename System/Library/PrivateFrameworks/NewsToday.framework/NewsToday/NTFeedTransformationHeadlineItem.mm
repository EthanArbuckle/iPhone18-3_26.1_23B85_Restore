@interface NTFeedTransformationHeadlineItem
- (BOOL)isEqual:(id)equal;
- (NSDate)cacheCutoffTimeRelativeDate;
- (NSString)clusterID;
- (NSString)identifier;
- (NTFeedTransformationHeadlineItem)init;
- (NTFeedTransformationHeadlineItem)initWithHeadline:(id)headline cacheExpirationDate:(id)date actionURL:(id)l;
- (id)protoitemWithFetchedFeedItemHeadline:(id)headline configuration:(id)configuration;
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

- (NTFeedTransformationHeadlineItem)initWithHeadline:(id)headline cacheExpirationDate:(id)date actionURL:(id)l
{
  headlineCopy = headline;
  dateCopy = date;
  lCopy = l;
  if (!headlineCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationHeadlineItem initWithHeadline:cacheExpirationDate:actionURL:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
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
    v12 = [headlineCopy copy];
    headline = v11->_headline;
    v11->_headline = v12;

    v14 = [dateCopy copy];
    cacheExpirationDate = v11->_cacheExpirationDate;
    v11->_cacheExpirationDate = v14;

    v16 = [lCopy copy];
    actionURL = v11->_actionURL;
    v11->_actionURL = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    headline = [(NTFeedTransformationHeadlineItem *)self headline];
    headline2 = [v5 headline];
    if ([headline isEqual:headline2])
    {
      cacheExpirationDate = [(NTFeedTransformationHeadlineItem *)self cacheExpirationDate];
      cacheExpirationDate2 = [v5 cacheExpirationDate];
      v10 = [cacheExpirationDate isEqual:cacheExpirationDate2];
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
  headline = [(NTFeedTransformationHeadlineItem *)self headline];
  v4 = [headline hash];
  cacheExpirationDate = [(NTFeedTransformationHeadlineItem *)self cacheExpirationDate];
  v6 = [cacheExpirationDate hash];

  return v6 ^ v4;
}

- (NSString)identifier
{
  headline = [(NTFeedTransformationHeadlineItem *)self headline];
  articleID = [headline articleID];

  return articleID;
}

- (NSString)clusterID
{
  headline = [(NTFeedTransformationHeadlineItem *)self headline];
  clusterID = [headline clusterID];

  return clusterID;
}

- (NSDate)cacheCutoffTimeRelativeDate
{
  headline = [(NTFeedTransformationHeadlineItem *)self headline];
  publishDate = [headline publishDate];

  return publishDate;
}

- (id)protoitemWithFetchedFeedItemHeadline:(id)headline configuration:(id)configuration
{
  configurationCopy = configuration;
  headline = [(NTFeedTransformationHeadlineItem *)self headline];
  if ([(NTFeedTransformationHeadlineItem *)self isLocal])
  {
    objc_opt_class();
    v7 = FCDynamicCast();
    [v7 assignStoryType:5 withConfiguration:configurationCopy];
  }

  v8 = [NTTodayHeadlineProtoitem alloc];
  identifier = [(NTFeedTransformationHeadlineItem *)self identifier];
  actionURL = [(NTFeedTransformationHeadlineItem *)self actionURL];
  v11 = [(NTTodayHeadlineProtoitem *)v8 initWithIdentifier:identifier headline:headline actionURL:actionURL];

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