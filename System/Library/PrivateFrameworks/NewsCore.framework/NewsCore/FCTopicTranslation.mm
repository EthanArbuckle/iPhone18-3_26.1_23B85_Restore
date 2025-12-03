@interface FCTopicTranslation
- (FCTopicTranslation)init;
- (FCTopicTranslation)initWithLanguageBucket:(id)bucket;
- (FCTopicTranslation)initWithTagID:(id)d;
- (NTPBArticleTopic)articleTopic;
- (id)description;
@end

@implementation FCTopicTranslation

- (FCTopicTranslation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTopicTranslation init]";
    v10 = 2080;
    v11 = "FCTopicTranslation.m";
    v12 = 1024;
    v13 = 22;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTopicTranslation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCTopicTranslation)initWithTagID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FCTopicTranslation;
  v5 = [(FCTopicTranslation *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    tagID = v5->_tagID;
    v5->_tagID = v6;
  }

  return v5;
}

- (FCTopicTranslation)initWithLanguageBucket:(id)bucket
{
  bucketCopy = bucket;
  v5 = [bucketCopy key];
  v6 = [(FCTopicTranslation *)self initWithTagID:v5];

  if (v6)
  {
    groupingFlags = [bucketCopy groupingFlags];
    -[FCTopicTranslation setIsHidden:](v6, "setIsHidden:", [groupingFlags isHidden]);

    groupingFlags2 = [bucketCopy groupingFlags];
    -[FCTopicTranslation setIsEligibleForGrouping:](v6, "setIsEligibleForGrouping:", [groupingFlags2 isEligibleForGrouping]);

    groupingFlags3 = [bucketCopy groupingFlags];
    -[FCTopicTranslation setIsEligibleForGroupingIfFavorited:](v6, "setIsEligibleForGroupingIfFavorited:", [groupingFlags3 isEligibleForGroupingIfFavorited]);
  }

  return v6;
}

- (NTPBArticleTopic)articleTopic
{
  articleTopic = self->_articleTopic;
  if (!articleTopic)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B6D00]);
    tagID = [(FCTopicTranslation *)self tagID];
    [v4 setTagID:tagID];

    [v4 setIsHidden:{-[FCTopicTranslation isHidden](self, "isHidden")}];
    [v4 setIsEligibleForGrouping:{-[FCTopicTranslation isEligibleForGrouping](self, "isEligibleForGrouping")}];
    [v4 setIsEligibleForGroupingIfFavorited:{-[FCTopicTranslation isEligibleForGroupingIfFavorited](self, "isEligibleForGroupingIfFavorited")}];
    v6 = self->_articleTopic;
    self->_articleTopic = v4;

    articleTopic = self->_articleTopic;
  }

  return articleTopic;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  tagID = [(FCTopicTranslation *)self tagID];
  v5 = [v3 stringWithFormat:@"TopicTranslation tagID: %@ isHidden: %d isEligibleForGrouping: %d isEligibleForGroupingIfFavorited: %d", tagID, -[FCTopicTranslation isHidden](self, "isHidden"), -[FCTopicTranslation isEligibleForGrouping](self, "isEligibleForGrouping"), -[FCTopicTranslation isEligibleForGroupingIfFavorited](self, "isEligibleForGroupingIfFavorited")];

  return v5;
}

@end