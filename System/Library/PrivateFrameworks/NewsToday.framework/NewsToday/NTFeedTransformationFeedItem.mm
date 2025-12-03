@interface NTFeedTransformationFeedItem
- (BOOL)isEqual:(id)equal;
- (NSDate)cacheCutoffTimeRelativeDate;
- (NSString)clusterID;
- (NSString)identifier;
- (NTFeedTransformationFeedItem)init;
- (NTFeedTransformationFeedItem)initWithFeedItem:(id)item cacheExpirationDate:(id)date surfacedByChannelID:(id)d;
- (id)protoitemWithFetchedFeedItemHeadline:(id)headline configuration:(id)configuration;
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

- (NTFeedTransformationFeedItem)initWithFeedItem:(id)item cacheExpirationDate:(id)date surfacedByChannelID:(id)d
{
  itemCopy = item;
  dateCopy = date;
  dCopy = d;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationFeedItem initWithFeedItem:cacheExpirationDate:surfacedByChannelID:];
  }

  v19.receiver = self;
  v19.super_class = NTFeedTransformationFeedItem;
  v11 = [(NTFeedTransformationFeedItem *)&v19 init];
  if (v11)
  {
    v12 = [itemCopy copy];
    feedItem = v11->_feedItem;
    v11->_feedItem = v12;

    v14 = [dateCopy copy];
    cacheExpirationDate = v11->_cacheExpirationDate;
    v11->_cacheExpirationDate = v14;

    v16 = [dCopy copy];
    surfacedByChannelID = v11->_surfacedByChannelID;
    v11->_surfacedByChannelID = v16;
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
    feedItem = [(NTFeedTransformationFeedItem *)self feedItem];
    feedItem2 = [v5 feedItem];
    if ([feedItem isEqual:feedItem2])
    {
      cacheExpirationDate = [(NTFeedTransformationFeedItem *)self cacheExpirationDate];
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
  feedItem = [(NTFeedTransformationFeedItem *)self feedItem];
  v4 = [feedItem hash];
  cacheExpirationDate = [(NTFeedTransformationFeedItem *)self cacheExpirationDate];
  v6 = [cacheExpirationDate hash];

  return v6 ^ v4;
}

- (NSString)identifier
{
  feedItem = [(NTFeedTransformationFeedItem *)self feedItem];
  identifier = [feedItem identifier];

  return identifier;
}

- (NSString)clusterID
{
  feedItem = [(NTFeedTransformationFeedItem *)self feedItem];
  clusterID = [feedItem clusterID];

  return clusterID;
}

- (NSDate)cacheCutoffTimeRelativeDate
{
  feedItem = [(NTFeedTransformationFeedItem *)self feedItem];
  publishDate = [feedItem publishDate];

  return publishDate;
}

- (id)protoitemWithFetchedFeedItemHeadline:(id)headline configuration:(id)configuration
{
  headlineCopy = headline;
  configurationCopy = configuration;
  if ([(NTFeedTransformationFeedItem *)self isLocal])
  {
    objc_opt_class();
    v8 = FCDynamicCast();
    [v8 assignStoryType:5 withConfiguration:configurationCopy];
  }

  v9 = [NTTodayHeadlineProtoitem alloc];
  identifier = [(NTFeedTransformationFeedItem *)self identifier];
  v11 = [(NTTodayHeadlineProtoitem *)v9 initWithIdentifier:identifier headline:headlineCopy actionURL:0];

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