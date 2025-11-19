@interface NDTodayFeedConfig
- (NDTodayFeedConfig)initWithCoder:(id)a3;
- (NDTodayFeedConfig)initWithPublishDate:(id)a3 topStoriesArticleIDs:(id)a4 topStoriesPackageURLs:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDTodayFeedConfig

- (NDTodayFeedConfig)initWithPublishDate:(id)a3 topStoriesArticleIDs:(id)a4 topStoriesPackageURLs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = NDTodayFeedConfig;
  v11 = [(NDTodayFeedConfig *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    publishDate = v11->_publishDate;
    v11->_publishDate = v12;

    v14 = [v9 copy];
    topStoriesArticleIDs = v11->_topStoriesArticleIDs;
    v11->_topStoriesArticleIDs = v14;

    v16 = [v10 copy];
    topStoriesPackageURLs = v11->_topStoriesPackageURLs;
    v11->_topStoriesPackageURLs = v16;
  }

  return v11;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D30F48]) initWithObject:self];
  v4 = [(NDTodayFeedConfig *)self publishDate];
  [v3 addField:@"publishDate" object:v4];

  v5 = [(NDTodayFeedConfig *)self topStoriesArticleIDs];
  [v3 addField:@"topStoriesArticleIDs" object:v5];

  v6 = [(NDTodayFeedConfig *)self topStoriesPackageURLs];
  [v3 addField:@"topStoriesPackageURLs" object:v6];

  v7 = [v3 descriptionString];

  return v7;
}

- (NDTodayFeedConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publishDate"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"topStoriesArticleIDs"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"topStoriesPackageURLs"];

  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
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

  v11 = [(NDTodayFeedConfig *)self initWithPublishDate:v8 topStoriesArticleIDs:v9 topStoriesPackageURLs:v10];
  if (!v5)
  {
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NDTodayFeedConfig *)self publishDate];
  [v4 encodeObject:v5 forKey:@"publishDate"];

  v6 = [(NDTodayFeedConfig *)self topStoriesArticleIDs];
  [v4 encodeObject:v6 forKey:@"topStoriesArticleIDs"];

  v7 = [(NDTodayFeedConfig *)self topStoriesPackageURLs];
  [v4 encodeObject:v7 forKey:@"topStoriesPackageURLs"];
}

@end