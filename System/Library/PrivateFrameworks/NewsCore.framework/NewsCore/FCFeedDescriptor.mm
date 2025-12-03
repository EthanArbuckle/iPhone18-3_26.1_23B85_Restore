@interface FCFeedDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubscribedToWithSubscriptionController:(id)controller;
- (FCFeedDescriptor)init;
- (FCFeedDescriptor)initWithIdentifier:(id)identifier;
- (NSString)description;
- (NSString)name;
- (id)fetchOperationForHeadlinesWithIDs:(id)ds context:(id)context;
- (id)latestHeadlineResultsWithContext:(id)context;
- (id)streamOfHeadlinesWithIDs:(id)ds context:(id)context cachedOnly:(BOOL)only maxCachedAge:(double)age;
- (id)streamOfLatestHeadlinesWithContext:(id)context;
- (int64_t)feedSortMethod;
- (unint64_t)feedFilterOptions;
- (unint64_t)hash;
@end

@implementation FCFeedDescriptor

- (FCFeedDescriptor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedDescriptor init]";
    v10 = 2080;
    v11 = "FCFeedDescriptor.m";
    v12 = 1024;
    v13 = 64;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeedDescriptor)initWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != nil"];
    *buf = 136315906;
    v14 = "[FCFeedDescriptor initWithIdentifier:]";
    v15 = 2080;
    v16 = "FCFeedDescriptor.m";
    v17 = 1024;
    v18 = 69;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v12.receiver = self;
  v12.super_class = FCFeedDescriptor;
  v5 = [(FCFeedDescriptor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if (identifierCopy)
    {
      v7 = [identifierCopy copy];
      identifier = v6->_identifier;
      v6->_identifier = v7;
    }

    else
    {
      identifier = v5;
      v6 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    identifier = [(FCFeedDescriptor *)self identifier];
    identifier2 = [v6 identifier];
    v9 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(FCFeedDescriptor *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (NSString)description
{
  v3 = [FCDescription descriptionWithObject:self];
  name = [(FCFeedDescriptor *)self name];
  [v3 addField:@"name" value:name];

  identifier = [(FCFeedDescriptor *)self identifier];
  [v3 addField:@"identifier" value:identifier];

  v6 = NSStringFromFCFeedDescriptorConfiguration([(FCFeedDescriptor *)self feedConfiguration]);
  [v3 addField:@"feedConfiguration" value:v6];

  alternativeFeedDescriptor = [(FCFeedDescriptor *)self alternativeFeedDescriptor];
  [v3 addField:@"alternativeFeedDescriptor" object:alternativeFeedDescriptor];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (NSString)name
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCFeedDescriptor name]";
    v10 = 2080;
    v11 = "FCFeedDescriptor.m";
    v12 = 1024;
    v13 = 128;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFeedDescriptor name]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)isSubscribedToWithSubscriptionController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if ([(FCFeedDescriptor *)self isSubscribable])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
      *buf = 136315906;
      v14 = "[FCFeedDescriptor isSubscribedToWithSubscriptionController:]";
      v15 = 2080;
      v16 = "FCFeedDescriptor.m";
      v17 = 1024;
      v18 = 146;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFeedDescriptor isSubscribedToWithSubscriptionController:]"];
    v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)feedSortMethod
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCFeedDescriptor feedSortMethod]";
    v10 = 2080;
    v11 = "FCFeedDescriptor.m";
    v12 = 1024;
    v13 = 220;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFeedDescriptor feedSortMethod]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)feedFilterOptions
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCFeedDescriptor feedFilterOptions]";
    v10 = 2080;
    v11 = "FCFeedDescriptor.m";
    v12 = 1024;
    v13 = 225;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFeedDescriptor feedFilterOptions]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)streamOfHeadlinesWithIDs:(id)ds context:(id)context cachedOnly:(BOOL)only maxCachedAge:(double)age
{
  v31 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context"];
    *buf = 136315906;
    v24 = "[FCFeedDescriptor streamOfHeadlinesWithIDs:context:cachedOnly:maxCachedAge:]";
    v25 = 2080;
    v26 = "FCFeedDescriptor.m";
    v27 = 1024;
    v28 = 242;
    v29 = 2114;
    v30 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v12 = [[FCArrayStream alloc] initWithArray:dsCopy];
  v13 = [FCTransformedResultsStream alloc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__FCFeedDescriptor_streamOfHeadlinesWithIDs_context_cachedOnly_maxCachedAge___block_invoke;
  v19[3] = &unk_1E7C3A1B0;
  v19[4] = self;
  v20 = contextCopy;
  onlyCopy = only;
  ageCopy = age;
  v14 = contextCopy;
  v15 = [(FCTransformedResultsStream *)v13 initWithStream:v12 asyncTransformBlock:v19];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __77__FCFeedDescriptor_streamOfHeadlinesWithIDs_context_cachedOnly_maxCachedAge___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [*(a1 + 32) fetchOperationForHeadlinesWithIDs:a2 context:*(a1 + 40)];
  v9 = v8;
  if (*(a1 + 56))
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  [v8 setCachePolicy:v10];
  [v9 setMaximumCachedAge:*(a1 + 48)];
  [v9 setQualityOfService:a3];
  if (a3 == 9)
  {
    v11 = -1;
  }

  else
  {
    v11 = a3 == 33 || a3 == 25;
  }

  [v9 setRelativePriority:v11];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__FCFeedDescriptor_streamOfHeadlinesWithIDs_context_cachedOnly_maxCachedAge___block_invoke_2;
  v14[3] = &unk_1E7C37A38;
  v15 = v7;
  v12 = v7;
  [v9 setFetchCompletionBlock:v14];
  v13 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v13 addOperation:v9];
}

void __77__FCFeedDescriptor_streamOfHeadlinesWithIDs_context_cachedOnly_maxCachedAge___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fetchedObject];
  (*(v2 + 16))(v2, v3);
}

- (id)fetchOperationForHeadlinesWithIDs:(id)ds context:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "context"];
    *buf = 136315906;
    v13 = "[FCFeedDescriptor fetchOperationForHeadlinesWithIDs:context:]";
    v14 = 2080;
    v15 = "FCFeedDescriptor.m";
    v16 = 1024;
    v17 = 267;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  articleController = [contextCopy articleController];
  v8 = [articleController headlinesFetchOperationForArticleIDs:dsCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)streamOfLatestHeadlinesWithContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCFeedDescriptor streamOfLatestHeadlinesWithContext:]";
    v12 = 2080;
    v13 = "FCFeedDescriptor.m";
    v14 = 1024;
    v15 = 275;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFeedDescriptor streamOfLatestHeadlinesWithContext:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)latestHeadlineResultsWithContext:(id)context
{
  contextCopy = context;
  v5 = [FCStreamingResults alloc];
  v6 = [(FCFeedDescriptor *)self streamOfLatestHeadlinesWithContext:contextCopy];

  v7 = [(FCStreamingResults *)v5 initWithStream:v6];

  return v7;
}

@end