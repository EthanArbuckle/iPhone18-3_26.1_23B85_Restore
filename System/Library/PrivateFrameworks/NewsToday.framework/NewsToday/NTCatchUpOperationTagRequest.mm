@interface NTCatchUpOperationTagRequest
- (NTCatchUpOperationTagRequest)init;
- (NTCatchUpOperationTagRequest)initWithTagTodaySectionSpecificConfig:(id)config tagID:(id)d;
@end

@implementation NTCatchUpOperationTagRequest

- (NTCatchUpOperationTagRequest)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTCatchUpOperationTagRequest init]";
    v10 = 2080;
    v11 = "NTCatchUpOperationRequest.m";
    v12 = 1024;
    v13 = 58;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTCatchUpOperationTagRequest init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTCatchUpOperationTagRequest)initWithTagTodaySectionSpecificConfig:(id)config tagID:(id)d
{
  configCopy = config;
  dCopy = d;
  if (!configCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationTagRequest initWithTagTodaySectionSpecificConfig:tagID:];
    if (dCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationTagRequest initWithTagTodaySectionSpecificConfig:tagID:];
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = NTCatchUpOperationTagRequest;
  v8 = [(NTCatchUpOperationTagRequest *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    tagID = v8->_tagID;
    v8->_tagID = v9;

    v8->_cutoffTime = [configCopy cutoffTime];
    v8->_headlinesPerFeedFetchCount = [configCopy headlinesPerFeedFetchCount];
    fetchingBin = [configCopy fetchingBin];
    v12 = fetchingBin == 1;
    if (fetchingBin == 2)
    {
      v12 = 2;
    }

    v8->_fetchingBin = v12;
  }

  return v8;
}

- (void)initWithTagTodaySectionSpecificConfig:tagID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagTodaySectionSpecificConfig", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithTagTodaySectionSpecificConfig:tagID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tagID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end