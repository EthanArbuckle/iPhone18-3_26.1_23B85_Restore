@interface FCTopicTranslation
- (FCTopicTranslation)init;
- (FCTopicTranslation)initWithLanguageBucket:(id)a3;
- (FCTopicTranslation)initWithTagID:(id)a3;
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

- (FCTopicTranslation)initWithTagID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCTopicTranslation;
  v5 = [(FCTopicTranslation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    tagID = v5->_tagID;
    v5->_tagID = v6;
  }

  return v5;
}

- (FCTopicTranslation)initWithLanguageBucket:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [(FCTopicTranslation *)self initWithTagID:v5];

  if (v6)
  {
    v7 = [v4 groupingFlags];
    -[FCTopicTranslation setIsHidden:](v6, "setIsHidden:", [v7 isHidden]);

    v8 = [v4 groupingFlags];
    -[FCTopicTranslation setIsEligibleForGrouping:](v6, "setIsEligibleForGrouping:", [v8 isEligibleForGrouping]);

    v9 = [v4 groupingFlags];
    -[FCTopicTranslation setIsEligibleForGroupingIfFavorited:](v6, "setIsEligibleForGroupingIfFavorited:", [v9 isEligibleForGroupingIfFavorited]);
  }

  return v6;
}

- (NTPBArticleTopic)articleTopic
{
  articleTopic = self->_articleTopic;
  if (!articleTopic)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B6D00]);
    v5 = [(FCTopicTranslation *)self tagID];
    [v4 setTagID:v5];

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
  v4 = [(FCTopicTranslation *)self tagID];
  v5 = [v3 stringWithFormat:@"TopicTranslation tagID: %@ isHidden: %d isEligibleForGrouping: %d isEligibleForGroupingIfFavorited: %d", v4, -[FCTopicTranslation isHidden](self, "isHidden"), -[FCTopicTranslation isEligibleForGrouping](self, "isEligibleForGrouping"), -[FCTopicTranslation isEligibleForGroupingIfFavorited](self, "isEligibleForGroupingIfFavorited")];

  return v5;
}

@end