@interface NDNewsDaemonContext
- (NDNewsDaemonContext)init;
- (id)updateResultsHandler;
- (void)fetchLatestResultsWithParameters:(id)parameters completion:(id)completion;
- (void)fetchModuleDescriptorsWithCompletion:(id)completion;
- (void)fetchPlaceholderResultsWithOperationInfo:(id)info syncCompletion:(id)completion;
- (void)markAnalyticsElement:(id)element asReadAtDate:(id)date withCompletion:(id)completion;
- (void)markAnalyticsElements:(id)elements asSeenAtDate:(id)date withCompletion:(id)completion;
- (void)serviceHasNewTodayResults;
- (void)setUpdateResultsHandler:(id)handler;
@end

@implementation NDNewsDaemonContext

- (NDNewsDaemonContext)init
{
  v6.receiver = self;
  v6.super_class = NDNewsDaemonContext;
  v2 = [(NDNewsDaemonContext *)&v6 init];
  if (v2)
  {
    v3 = [[NDNewsServiceConnection alloc] initWithClient:v2];
    daemon = v2->_daemon;
    v2->_daemon = v3;
  }

  return v2;
}

- (void)serviceHasNewTodayResults
{
  _queue = [(NDNewsDaemonContext *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NDNewsDaemonContext_serviceHasNewTodayResults__block_invoke;
  block[3] = &unk_27997BFF8;
  block[4] = self;
  dispatch_async(_queue, block);
}

void __48__NDNewsDaemonContext_serviceHasNewTodayResults__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateResultsHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) updateResultsHandler];
    v3[2]();
  }
}

- (void)fetchModuleDescriptorsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext fetchModuleDescriptorsWithCompletion:];
  }

  daemon = [(NDNewsDaemonContext *)self daemon];
  [daemon fetchModuleDescriptorsWithCompletion:completionCopy];
}

- (void)fetchLatestResultsWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  if (!parametersCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext fetchLatestResultsWithParameters:completion:];
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext fetchLatestResultsWithParameters:completion:];
  }

LABEL_6:
  daemon = [(NDNewsDaemonContext *)self daemon];
  [daemon fetchLatestResultsWithParameters:parametersCopy completion:completionCopy];
}

- (void)fetchPlaceholderResultsWithOperationInfo:(id)info syncCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext fetchPlaceholderResultsWithOperationInfo:syncCompletion:];
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext fetchPlaceholderResultsWithOperationInfo:syncCompletion:];
  }

LABEL_6:
  daemon = [(NDNewsDaemonContext *)self daemon];
  [daemon fetchPlaceholderResultsWithOperationInfo:infoCopy syncCompletion:completionCopy];
}

- (void)setUpdateResultsHandler:(id)handler
{
  v4 = [handler copy];
  updateResultsHandler = self->_updateResultsHandler;
  self->_updateResultsHandler = v4;

  MEMORY[0x2821F96F8]();
}

- (id)updateResultsHandler
{
  v2 = _Block_copy(self->_updateResultsHandler);

  return v2;
}

- (void)markAnalyticsElements:(id)elements asSeenAtDate:(id)date withCompletion:(id)completion
{
  elementsCopy = elements;
  dateCopy = date;
  completionCopy = completion;
  if (!elementsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext markAnalyticsElements:asSeenAtDate:withCompletion:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext markAnalyticsElements:asSeenAtDate:withCompletion:];
  }

LABEL_6:
  daemon = [(NDNewsDaemonContext *)self daemon];
  [daemon markAnalyticsElements:elementsCopy asSeenAtDate:dateCopy withCompletion:completionCopy];
}

- (void)markAnalyticsElement:(id)element asReadAtDate:(id)date withCompletion:(id)completion
{
  elementCopy = element;
  dateCopy = date;
  completionCopy = completion;
  if (!elementCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext markAnalyticsElement:asReadAtDate:withCompletion:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsDaemonContext markAnalyticsElement:asReadAtDate:withCompletion:];
  }

LABEL_6:
  daemon = [(NDNewsDaemonContext *)self daemon];
  [daemon markAnalyticsElement:elementCopy asReadAtDate:dateCopy withCompletion:completionCopy];
}

- (void)fetchModuleDescriptorsWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestResultsWithParameters:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "parameters", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchLatestResultsWithParameters:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchPlaceholderResultsWithOperationInfo:syncCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "operationInfo", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchPlaceholderResultsWithOperationInfo:syncCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "syncCompletion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElements:asSeenAtDate:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsElements", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElements:asSeenAtDate:withCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElement:asReadAtDate:withCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "analyticsElement", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)markAnalyticsElement:asReadAtDate:withCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end