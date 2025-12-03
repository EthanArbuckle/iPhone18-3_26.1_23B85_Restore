@interface FCPersonalizationFunctionProvider
- (FCPersonalizationFunctionProvider)init;
- (FCPersonalizationFunctionProvider)initWithAppConfiguration:(id)configuration;
- (id)diversifyItems:(id)items limit:(unint64_t)limit preselectedItems:(id)preselectedItems;
@end

@implementation FCPersonalizationFunctionProvider

- (FCPersonalizationFunctionProvider)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPersonalizationFunctionProvider init]";
    v10 = 2080;
    v11 = "FCPersonalizationFunctionProvider.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPersonalizationFunctionProvider init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPersonalizationFunctionProvider)initWithAppConfiguration:(id)configuration
{
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appConfiguration"];
    *buf = 136315906;
    v15 = "[FCPersonalizationFunctionProvider initWithAppConfiguration:]";
    v16 = 2080;
    v17 = "FCPersonalizationFunctionProvider.m";
    v18 = 1024;
    v19 = 33;
    v20 = 2114;
    v21 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v13.receiver = self;
  v13.super_class = FCPersonalizationFunctionProvider;
  v5 = [(FCPersonalizationFunctionProvider *)&v13 init];
  if (v5)
  {
    [configurationCopy articleDiversificationSimilarityExpectationStart];
    v5->_articleDiversificationSimilarityExpectationStart = v6;
    [configurationCopy articleDiversificationSimilarityExpectationEnd];
    v5->_articleDiversificationSimilarityExpectationEnd = v7;
    [configurationCopy articleDiversificationUniquePublisherExpectationSlope];
    v5->_articleDiversificationUniquePublisherExpectationSlope = v8;
    [configurationCopy articleDiversificationUniquePublisherExpectationYIntercept];
    v5->_articleDiversificationUniquePublisherExpectationYIntercept = v9;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)diversifyItems:(id)items limit:(unint64_t)limit preselectedItems:(id)preselectedItems
{
  preselectedItemsCopy = preselectedItems;
  itemsCopy = items;
  [(FCPersonalizationFunctionProvider *)self articleDiversificationSimilarityExpectationStart];
  v11 = v10;
  [(FCPersonalizationFunctionProvider *)self articleDiversificationSimilarityExpectationEnd];
  v13 = v12;
  [(FCPersonalizationFunctionProvider *)self articleDiversificationUniquePublisherExpectationSlope];
  v15 = v14;
  [(FCPersonalizationFunctionProvider *)self articleDiversificationUniquePublisherExpectationYIntercept];
  v17 = [FCPersonalizationUtilities diversifyItems:itemsCopy withPreselectedItems:preselectedItemsCopy limit:limit similarityStartExpectation:v11 similarityEndExpectation:v13 publisherDiversificationSlope:v15 publisherDiversificationYIntercept:v16];

  return v17;
}

@end