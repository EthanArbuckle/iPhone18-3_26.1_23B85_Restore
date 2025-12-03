@interface NTHeadlinePersonalizationMetadata
- (NTHeadlinePersonalizationMetadata)init;
- (NTHeadlinePersonalizationMetadata)initWithArticleID:(id)d publisherID:(id)iD scoredTopicIDs:(id)ds;
- (NTHeadlinePersonalizationMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (NTHeadlinePersonalizationMetadata)initWithArticleID:(id)d publisherID:(id)iD scoredTopicIDs:(id)ds
{
  dCopy = d;
  iDCopy = iD;
  dsCopy = ds;
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadlinePersonalizationMetadata initWithArticleID:publisherID:scoredTopicIDs:];
    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadlinePersonalizationMetadata initWithArticleID:publisherID:scoredTopicIDs:];
  }

LABEL_6:
  if (!dsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTHeadlinePersonalizationMetadata initWithArticleID:publisherID:scoredTopicIDs:];
  }

  v19.receiver = self;
  v19.super_class = NTHeadlinePersonalizationMetadata;
  v11 = [(NTHeadlinePersonalizationMetadata *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    articleID = v11->_articleID;
    v11->_articleID = v12;

    v14 = [iDCopy copy];
    publisherID = v11->_publisherID;
    v11->_publisherID = v14;

    v16 = [dsCopy copy];
    scoredTopicIDs = v11->_scoredTopicIDs;
    v11->_scoredTopicIDs = v16;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  articleID = [(NTHeadlinePersonalizationMetadata *)self articleID];
  [coderCopy encodeObject:articleID forKey:@"a"];

  publisherID = [(NTHeadlinePersonalizationMetadata *)self publisherID];
  [coderCopy encodeObject:publisherID forKey:@"b"];

  scoredTopicIDs = [(NTHeadlinePersonalizationMetadata *)self scoredTopicIDs];
  [coderCopy encodeObject:scoredTopicIDs forKey:@"c"];
}

- (NTHeadlinePersonalizationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"a"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"b"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"c"];

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