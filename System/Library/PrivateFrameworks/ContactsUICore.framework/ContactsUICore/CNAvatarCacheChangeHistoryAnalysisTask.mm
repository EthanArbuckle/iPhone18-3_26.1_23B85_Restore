@interface CNAvatarCacheChangeHistoryAnalysisTask
- (CNAvatarCacheChangeHistoryAnalysisTask)initWithContactStore:(id)a3 startingToken:(id)a4;
- (id)run:(id *)a3;
- (void)executeRequest;
- (void)extractIdentifiers;
- (void)makeRequest;
@end

@implementation CNAvatarCacheChangeHistoryAnalysisTask

- (CNAvatarCacheChangeHistoryAnalysisTask)initWithContactStore:(id)a3 startingToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNAvatarCacheChangeHistoryAnalysisTask;
  v9 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.ui.avatar-cache.change-history-analysis"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v10->_startingToken, a4);
    v11 = v10;
  }

  return v10;
}

- (id)run:(id *)a3
{
  [(CNAvatarCacheChangeHistoryAnalysisTask *)self makeRequest];
  [(CNAvatarCacheChangeHistoryAnalysisTask *)self executeRequest];
  v5 = [(CNAvatarCacheChangeHistoryAnalysisTask *)self enumerator];
  v6 = [v5 isSuccess];

  if (v6)
  {
    [(CNAvatarCacheChangeHistoryAnalysisTask *)self extractIdentifiers];
    v7 = [CNAvatarCacheChangeAnalysis alloc];
    v8 = [(CNAvatarCacheChangeHistoryAnalysisTask *)self finalToken];
    v9 = [(CNAvatarCacheChangeHistoryAnalysisTask *)self identifiers];
    v10 = [(CNAvatarCacheChangeAnalysis *)v7 initWithCurrentChangeHistoryToken:v8 identifiersOfAffectedContacts:v9];
  }

  else
  {
    v8 = [(CNAvatarCacheChangeHistoryAnalysisTask *)self enumerator];
    v11 = [v8 error];
    v9 = v11;
    if (a3)
    {
      v12 = v11;
      v10 = 0;
      *a3 = v9;
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
  v3 = [(CNAvatarCacheChangeHistoryAnalysisTask *)self startingToken];
  [v4 setStartingToken:v3];

  [v4 setIncludeGroupChanges:0];
  [(CNAvatarCacheChangeHistoryAnalysisTask *)self setRequest:v4];
}

- (void)executeRequest
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_ERROR, "Error fetching changes: %{public}@", &v2, 0xCu);
}

- (void)extractIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CNAvatarCacheChangeHistoryAnalysisTask *)self enumerator];
  if ([v3 isSuccess])
  {
    v4 = objc_alloc_init(CNAvatarCacheFingerprintCollector);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 value];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) acceptEventVisitor:v4];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    v10 = [(CNAvatarCacheFingerprintCollector *)v4 fingerprintsOfAffectedContacts];
    [(CNAvatarCacheChangeHistoryAnalysisTask *)self setIdentifiers:v10];
  }
}

@end