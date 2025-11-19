@interface NTCatchUpOperationArticleIDsRequest
- (NTCatchUpOperationArticleIDsRequest)init;
- (NTCatchUpOperationArticleIDsRequest)initWithArticleIDs:(id)a3 overrideHeadlineMetadataByArticleID:(id)a4;
@end

@implementation NTCatchUpOperationArticleIDsRequest

- (NTCatchUpOperationArticleIDsRequest)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTCatchUpOperationArticleIDsRequest init]";
    v10 = 2080;
    v11 = "NTCatchUpOperationRequest.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTCatchUpOperationArticleIDsRequest init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTCatchUpOperationArticleIDsRequest)initWithArticleIDs:(id)a3 overrideHeadlineMetadataByArticleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationArticleIDsRequest initWithArticleIDs:overrideHeadlineMetadataByArticleID:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationArticleIDsRequest initWithArticleIDs:overrideHeadlineMetadataByArticleID:];
  }

LABEL_6:
  v16.receiver = self;
  v16.super_class = NTCatchUpOperationArticleIDsRequest;
  v8 = [(NTCatchUpOperationArticleIDsRequest *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v6 copy];
    articleIDs = v8->_articleIDs;
    v8->_articleIDs = v11;

    v13 = [v7 copy];
    overrideHeadlineMetadataByArticleID = v8->_overrideHeadlineMetadataByArticleID;
    v8->_overrideHeadlineMetadataByArticleID = v13;
  }

  return v8;
}

- (void)initWithArticleIDs:overrideHeadlineMetadataByArticleID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithArticleIDs:overrideHeadlineMetadataByArticleID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "overrideHeadlineMetadataByArticleID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end