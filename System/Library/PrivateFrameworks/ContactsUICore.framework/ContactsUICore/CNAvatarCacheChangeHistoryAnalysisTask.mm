@interface CNAvatarCacheChangeHistoryAnalysisTask
- (CNAvatarCacheChangeHistoryAnalysisTask)initWithContactStore:(id)store startingToken:(id)token;
- (id)run:(id *)run;
- (void)executeRequest;
- (void)extractIdentifiers;
- (void)makeRequest;
@end

@implementation CNAvatarCacheChangeHistoryAnalysisTask

- (CNAvatarCacheChangeHistoryAnalysisTask)initWithContactStore:(id)store startingToken:(id)token
{
  storeCopy = store;
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = CNAvatarCacheChangeHistoryAnalysisTask;
  v9 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.ui.avatar-cache.change-history-analysis"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_startingToken, token);
    v11 = v10;
  }

  return v10;
}

- (id)run:(id *)run
{
  [(CNAvatarCacheChangeHistoryAnalysisTask *)self makeRequest];
  [(CNAvatarCacheChangeHistoryAnalysisTask *)self executeRequest];
  enumerator = [(CNAvatarCacheChangeHistoryAnalysisTask *)self enumerator];
  isSuccess = [enumerator isSuccess];

  if (isSuccess)
  {
    [(CNAvatarCacheChangeHistoryAnalysisTask *)self extractIdentifiers];
    v7 = [CNAvatarCacheChangeAnalysis alloc];
    finalToken = [(CNAvatarCacheChangeHistoryAnalysisTask *)self finalToken];
    identifiers = [(CNAvatarCacheChangeHistoryAnalysisTask *)self identifiers];
    v10 = [(CNAvatarCacheChangeAnalysis *)v7 initWithCurrentChangeHistoryToken:finalToken identifiersOfAffectedContacts:identifiers];
  }

  else
  {
    finalToken = [(CNAvatarCacheChangeHistoryAnalysisTask *)self enumerator];
    error = [finalToken error];
    identifiers = error;
    if (run)
    {
      v12 = error;
      v10 = 0;
      *run = identifiers;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)makeRequest
{
  v4 = objc_alloc_init(MEMORY[0x1E695CD40]);
  startingToken = [(CNAvatarCacheChangeHistoryAnalysisTask *)self startingToken];
  [v4 setStartingToken:startingToken];

  [v4 setIncludeGroupChanges:0];
  [(CNAvatarCacheChangeHistoryAnalysisTask *)self setRequest:v4];
}

- (void)executeRequest
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "Error fetching changes: %{public}@", &v2, 0xCu);
}

- (void)extractIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  enumerator = [(CNAvatarCacheChangeHistoryAnalysisTask *)self enumerator];
  if ([enumerator isSuccess])
  {
    v4 = objc_alloc_init(CNAvatarCacheFingerprintCollector);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    value = [enumerator value];
    v6 = [value countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(value);
          }

          [*(*(&v11 + 1) + 8 * v9++) acceptEventVisitor:v4];
        }

        while (v7 != v9);
        v7 = [value countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    fingerprintsOfAffectedContacts = [(CNAvatarCacheFingerprintCollector *)v4 fingerprintsOfAffectedContacts];
    [(CNAvatarCacheChangeHistoryAnalysisTask *)self setIdentifiers:fingerprintsOfAffectedContacts];
  }
}

@end