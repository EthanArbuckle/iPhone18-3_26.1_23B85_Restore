@interface NTNewsModuleDescriptorsOperationPrefetchedContent
- (NTNewsModuleDescriptorsOperationPrefetchedContent)init;
- (NTNewsModuleDescriptorsOperationPrefetchedContent)initWithAppConfiguration:(id)configuration privateData:(id)data todayConfigsByRequestID:(id)d prefetchedHeldRecordsByType:(id)type;
@end

@implementation NTNewsModuleDescriptorsOperationPrefetchedContent

- (NTNewsModuleDescriptorsOperationPrefetchedContent)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTNewsModuleDescriptorsOperationPrefetchedContent init]";
    v10 = 2080;
    v11 = "NTNewsModuleDescriptorsOperation.m";
    v12 = 1024;
    v13 = 46;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTNewsModuleDescriptorsOperationPrefetchedContent init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTNewsModuleDescriptorsOperationPrefetchedContent)initWithAppConfiguration:(id)configuration privateData:(id)data todayConfigsByRequestID:(id)d prefetchedHeldRecordsByType:(id)type
{
  configurationCopy = configuration;
  dataCopy = data;
  dCopy = d;
  typeCopy = type;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperationPrefetchedContent initWithAppConfiguration:privateData:todayConfigsByRequestID:prefetchedHeldRecordsByType:];
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
    [NTNewsModuleDescriptorsOperationPrefetchedContent initWithAppConfiguration:privateData:todayConfigsByRequestID:prefetchedHeldRecordsByType:];
  }

LABEL_6:
  if (!typeCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNewsModuleDescriptorsOperationPrefetchedContent initWithAppConfiguration:privateData:todayConfigsByRequestID:prefetchedHeldRecordsByType:];
  }

  v24.receiver = self;
  v24.super_class = NTNewsModuleDescriptorsOperationPrefetchedContent;
  v14 = [(NTNewsModuleDescriptorsOperationPrefetchedContent *)&v24 init];
  if (v14)
  {
    v15 = [configurationCopy copy];
    appConfiguration = v14->_appConfiguration;
    v14->_appConfiguration = v15;

    v17 = [dataCopy copy];
    privateData = v14->_privateData;
    v14->_privateData = v17;

    v19 = [dCopy copy];
    todayConfigsByRequestID = v14->_todayConfigsByRequestID;
    v14->_todayConfigsByRequestID = v19;

    v21 = [typeCopy copy];
    prefetchedHeldRecordsByType = v14->_prefetchedHeldRecordsByType;
    v14->_prefetchedHeldRecordsByType = v21;
  }

  return v14;
}

- (void)initWithAppConfiguration:privateData:todayConfigsByRequestID:prefetchedHeldRecordsByType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appConfiguration", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAppConfiguration:privateData:todayConfigsByRequestID:prefetchedHeldRecordsByType:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todayConfigsByRequestID", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAppConfiguration:privateData:todayConfigsByRequestID:prefetchedHeldRecordsByType:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "prefetchedHeldRecordsByType", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end