@interface NTCatchUpOperationForYouFetchInfo
- (NTCatchUpOperationForYouFetchInfo)init;
- (NTCatchUpOperationForYouFetchInfo)initWithAttemptedCachedOnly:(BOOL)only feedContextByFeedID:(id)d;
@end

@implementation NTCatchUpOperationForYouFetchInfo

- (NTCatchUpOperationForYouFetchInfo)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTCatchUpOperationForYouFetchInfo init]";
    v10 = 2080;
    v11 = "NTCatchUpOperation.m";
    v12 = 1024;
    v13 = 486;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTCatchUpOperationForYouFetchInfo init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTCatchUpOperationForYouFetchInfo)initWithAttemptedCachedOnly:(BOOL)only feedContextByFeedID:(id)d
{
  dCopy = d;
  if (!dCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperationForYouFetchInfo initWithAttemptedCachedOnly:feedContextByFeedID:];
  }

  v12.receiver = self;
  v12.super_class = NTCatchUpOperationForYouFetchInfo;
  v7 = [(NTCatchUpOperationForYouFetchInfo *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_attemptedCachedOnly = only;
    v9 = [dCopy copy];
    feedContextByFeedID = v8->_feedContextByFeedID;
    v8->_feedContextByFeedID = v9;
  }

  return v8;
}

- (void)initWithAttemptedCachedOnly:feedContextByFeedID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedContextByFeedID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end