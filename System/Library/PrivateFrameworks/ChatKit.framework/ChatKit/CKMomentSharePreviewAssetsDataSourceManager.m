@interface CKMomentSharePreviewAssetsDataSourceManager
- (CKMomentSharePreviewAssetsDataSourceManager)initWithMomentShareURL:(id)a3;
- (id)createInitialDataSource;
- (void)_fetchMomentShare;
- (void)_handleFetchedMomentShare:(id)a3 error:(id)a4;
- (void)_momentShareCacheDidChange:(id)a3;
- (void)createInitialDataSource;
@end

@implementation CKMomentSharePreviewAssetsDataSourceManager

- (CKMomentSharePreviewAssetsDataSourceManager)initWithMomentShareURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CKMomentSharePreviewAssetsDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentShareURL, a3);
    if (v7->_momentShareURL)
    {
      v8 = [MEMORY[0x1E69A5C00] sharedInstance];
      momentShareCache = v7->_momentShareCache;
      v7->_momentShareCache = v8;

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:v7 selector:sel__momentShareCacheDidChange_ name:*MEMORY[0x1E69A59C8] object:v7->_momentShareCache];

      [(CKMomentSharePreviewAssetsDataSourceManager *)v7 _fetchMomentShare];
    }
  }

  return v7;
}

- (id)createInitialDataSource
{
  currentDataSource = self->_currentDataSource;
  if (!currentDataSource)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(CKMomentSharePreviewAssetsDataSourceManager *)self createInitialDataSource];
    }

    v5 = _CreateDataSourceForMomentShare(self->_momentShare);
    v6 = self->_currentDataSource;
    self->_currentDataSource = v5;

    currentDataSource = self->_currentDataSource;
  }

  return currentDataSource;
}

- (void)_fetchMomentShare
{
  objc_initWeak(&location, self);
  momentShareCache = self->_momentShareCache;
  v4 = [(NSURL *)self->_momentShareURL absoluteString];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CKMomentSharePreviewAssetsDataSourceManager__fetchMomentShare__block_invoke;
  v5[3] = &unk_1E72F6E50;
  objc_copyWeak(&v6, &location);
  [(IMMomentShareCache *)momentShareCache momentShareForURLString:v4 completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __64__CKMomentSharePreviewAssetsDataSourceManager__fetchMomentShare__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFetchedMomentShare:v6 error:v5];
}

- (void)_handleFetchedMomentShare:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v10)
    {
      [CKMomentSharePreviewAssetsDataSourceManager _handleFetchedMomentShare:v7 error:?];
    }
  }

  else if (v10)
  {
    [CKMomentSharePreviewAssetsDataSourceManager _handleFetchedMomentShare:error:];
  }

  if (CKIsEqual(self->_momentShare, v7))
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CKMomentSharePreviewAssetsDataSourceManager _handleFetchedMomentShare:v7 error:?];
    }

LABEL_15:

    goto LABEL_19;
  }

  objc_storeStrong(&self->_momentShare, a3);
  currentDataSource = self->_currentDataSource;
  v11 = IMLogHandleForCategory();
  v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (!currentDataSource)
  {
    if (v13)
    {
      [CKMomentSharePreviewAssetsDataSourceManager _handleFetchedMomentShare:v11 error:?];
    }

    goto LABEL_15;
  }

  if (v7)
  {
    if (v13)
    {
      [CKMomentSharePreviewAssetsDataSourceManager _handleFetchedMomentShare:v7 error:?];
    }
  }

  else if (v13)
  {
    [CKMomentSharePreviewAssetsDataSourceManager _handleFetchedMomentShare:error:];
  }

  v14 = _CreateDataSourceForMomentShare(self->_momentShare);
  v15 = self->_currentDataSource;
  self->_currentDataSource = v14;

  [(PXSectionedDataSourceManager *)self setDataSource:self->_currentDataSource changeDetails:0];
LABEL_19:
}

- (void)_momentShareCacheDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A59D0]];

  v6 = [(NSURL *)self->_momentShareURL absoluteString];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CKMomentSharePreviewAssetsDataSourceManager _momentShareCacheDidChange:];
    }

    [(CKMomentSharePreviewAssetsDataSourceManager *)self _fetchMomentShare];
  }
}

- (void)createInitialDataSource
{
  v1 = [*(a1 + 192) uuid];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_2(&dword_19020E000, v2, v3, "<%p> Create initial data source for moment share: %{public}@, URL: %@", v4, v5, v6, v7, v8);
}

- (void)_handleFetchedMomentShare:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_2(&dword_19020E000, v3, v4, "<%p> Fetched moment share: %{public}@ for URL: %@", v5, v6, v7, v8, v9);
}

- (void)_handleFetchedMomentShare:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_19020E000, v2, OS_LOG_TYPE_DEBUG, "<%p> Failed to fetch moment share for URL: %@, error: %@", v3, 0x20u);
}

- (void)_handleFetchedMomentShare:(uint64_t)a1 error:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_2(&dword_19020E000, v3, v4, "<%p> Provide preview for moment share: %{public}@, URL: %@", v5, v6, v7, v8, v9);
}

- (void)_handleFetchedMomentShare:error:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_19020E000, v0, OS_LOG_TYPE_DEBUG, "<%p> Provide placeholder for URL: %@", v1, 0x16u);
}

- (void)_handleFetchedMomentShare:(uint64_t)a1 error:(NSObject *)a2 .cold.5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_19020E000, a2, OS_LOG_TYPE_DEBUG, "<%p> Waiting to create the initial data source", &v2, 0xCu);
}

- (void)_handleFetchedMomentShare:(uint64_t)a1 error:(void *)a2 .cold.6(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_2(&dword_19020E000, v3, v4, "<%p> Ignoring redundant update for moment share: %{public}@, URL: %@", v5, v6, v7, v8, v9);
}

- (void)_momentShareCacheDidChange:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_19020E000, v0, OS_LOG_TYPE_DEBUG, "<%p> Re-fetch changed moment share for URL: %@", v1, 0x16u);
}

@end