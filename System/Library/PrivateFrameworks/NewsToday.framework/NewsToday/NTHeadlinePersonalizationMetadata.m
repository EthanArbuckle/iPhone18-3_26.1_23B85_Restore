@interface NTHeadlinePersonalizationMetadata
- (NTHeadlinePersonalizationMetadata)init;
- (NTHeadlinePersonalizationMetadata)initWithArticleID:(id)a3 publisherID:(id)a4 scoredTopicIDs:(id)a5;
- (NTHeadlinePersonalizationMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTHeadlinePersonalizationMetadata

- (NTHeadlinePersonalizationMetadata)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTHeadlinePersonalizationMetadata init]";
    v10 = 2080;
    v11 = "NTHeadlinePersonalizationMetadata.m";
    v12 = 1024;
    v13 = 19;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTHeadlinePersonalizationMetadata init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTHeadlinePersonalizationMetadata)initWithArticleID:(id)a3 publisherID:(id)a4 scoredTopicIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadlinePersonalizationMetadata initWithArticleID:publisherID:scoredTopicIDs:];
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
    [NTHeadlinePersonalizationMetadata initWithArticleID:publisherID:scoredTopicIDs:];
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadlinePersonalizationMetadata initWithArticleID:publisherID:scoredTopicIDs:];
  }

  v19.receiver = self;
  v19.super_class = NTHeadlinePersonalizationMetadata;
  v11 = [(NTHeadlinePersonalizationMetadata *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    articleID = v11->_articleID;
    v11->_articleID = v12;

    v14 = [v9 copy];
    publisherID = v11->_publisherID;
    v11->_publisherID = v14;

    v16 = [v10 copy];
    scoredTopicIDs = v11->_scoredTopicIDs;
    v11->_scoredTopicIDs = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTHeadlinePersonalizationMetadata *)self articleID];
  [v4 encodeObject:v5 forKey:@"a"];

  v6 = [(NTHeadlinePersonalizationMetadata *)self publisherID];
  [v4 encodeObject:v6 forKey:@"b"];

  v7 = [(NTHeadlinePersonalizationMetadata *)self scoredTopicIDs];
  [v4 encodeObject:v7 forKey:@"c"];
}

- (NTHeadlinePersonalizationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"a"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"b"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"c"];

  v12 = [(NTHeadlinePersonalizationMetadata *)self initWithArticleID:v5 publisherID:v6 scoredTopicIDs:v11];
  return v12;
}

- (void)initWithArticleID:publisherID:scoredTopicIDs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithArticleID:publisherID:scoredTopicIDs:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "publisherID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithArticleID:publisherID:scoredTopicIDs:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "scoredTopicIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end