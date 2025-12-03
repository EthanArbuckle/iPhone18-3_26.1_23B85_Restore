@interface NDTodayFeedConfig
- (NDTodayFeedConfig)initWithCoder:(id)coder;
- (NDTodayFeedConfig)initWithPublishDate:(id)date topStoriesArticleIDs:(id)ds topStoriesPackageURLs:(id)ls;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDTodayFeedConfig

- (NDTodayFeedConfig)initWithPublishDate:(id)date topStoriesArticleIDs:(id)ds topStoriesPackageURLs:(id)ls
{
  dateCopy = date;
  dsCopy = ds;
  lsCopy = ls;
  v19.receiver = self;
  v19.super_class = NDTodayFeedConfig;
  v11 = [(NDTodayFeedConfig *)&v19 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    publishDate = v11->_publishDate;
    v11->_publishDate = v12;

    v14 = [dsCopy copy];
    topStoriesArticleIDs = v11->_topStoriesArticleIDs;
    v11->_topStoriesArticleIDs = v14;

    v16 = [lsCopy copy];
    topStoriesPackageURLs = v11->_topStoriesPackageURLs;
    v11->_topStoriesPackageURLs = v16;
  }

  return v11;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D30F48]) initWithObject:self];
  publishDate = [(NDTodayFeedConfig *)self publishDate];
  [v3 addField:@"publishDate" object:publishDate];

  topStoriesArticleIDs = [(NDTodayFeedConfig *)self topStoriesArticleIDs];
  [v3 addField:@"topStoriesArticleIDs" object:topStoriesArticleIDs];

  topStoriesPackageURLs = [(NDTodayFeedConfig *)self topStoriesPackageURLs];
  [v3 addField:@"topStoriesPackageURLs" object:topStoriesPackageURLs];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (NDTodayFeedConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publishDate"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"topStoriesArticleIDs"];
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"topStoriesPackageURLs"];

  distantPast = v5;
  if (!v5)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [(NDTodayFeedConfig *)self initWithPublishDate:distantPast topStoriesArticleIDs:v9 topStoriesPackageURLs:v10];
  if (!v5)
  {
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  publishDate = [(NDTodayFeedConfig *)self publishDate];
  [coderCopy encodeObject:publishDate forKey:@"publishDate"];

  topStoriesArticleIDs = [(NDTodayFeedConfig *)self topStoriesArticleIDs];
  [coderCopy encodeObject:topStoriesArticleIDs forKey:@"topStoriesArticleIDs"];

  topStoriesPackageURLs = [(NDTodayFeedConfig *)self topStoriesPackageURLs];
  [coderCopy encodeObject:topStoriesPackageURLs forKey:@"topStoriesPackageURLs"];
}

@end