@interface FPDFileCoordinationProvider
- (FPDFileCoordinationProvider)initWithRootURL:(id)a3;
- (FPDFileCoordinationProviderDelegate)delegate;
- (NSOperationQueue)_providedItemsOperationQueue;
- (NSString)_fileReactorID;
- (id)_physicalURLForURL:(id)a3;
- (id)delegateForURL:(id)a3;
- (void)_cancelProvidingItemAtURL:(id)a3 toReaderWithID:(id)a4;
- (void)_movingItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5;
- (void)_provideItemAtURL:(id)a3 completionHandler:(id)a4;
- (void)_provideItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5;
- (void)_providedItemAtURL:(id)a3 didGainPresenterWithInfo:(id)a4;
- (void)_providedItemAtURL:(id)a3 didLosePresenterWithID:(id)a4;
- (void)_providedItemAtURL:(id)a3 withPresenterWithID:(id)a4 didMoveToURL:(id)a5;
- (void)_writerWithID:(id)a3 didFinishWritingForURL:(id)a4;
@end

@implementation FPDFileCoordinationProvider

- (FPDFileCoordinationProvider)initWithRootURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPDFileCoordinationProvider;
  v6 = [(FPDFileCoordinationProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providedItemsURL, a3);
  }

  return v7;
}

- (id)delegateForURL:(id)a3
{
  v4 = a3;
  v5 = [(FPDFileCoordinationProvider *)self delegate];
  v6 = [v5 _siblingDelegateForURL:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [(FPDFileCoordinationProvider *)self delegate];
  }

  v8 = v7;

  return v8;
}

- (NSOperationQueue)_providedItemsOperationQueue
{
  v2 = [(FPDFileCoordinationProvider *)self delegate];
  v3 = [v2 _providedItemsOperationQueue];

  return v3;
}

- (NSString)_fileReactorID
{
  v2 = [(FPDFileCoordinationProvider *)self delegate];
  v3 = [v2 _fileReactorID];

  return v3;
}

- (id)_physicalURLForURL:(id)a3
{
  v4 = a3;
  v5 = [(FPDFileCoordinationProvider *)self delegateForURL:v4];
  v6 = [v5 _physicalURLForURL:v4];

  return v6;
}

- (void)_provideItemAtURL:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FPDFileCoordinationProvider _provideItemAtURL:a2 completionHandler:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AC20]);
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:v8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__FPDFileCoordinationProvider__provideItemAtURL_completionHandler___block_invoke;
  v13[3] = &unk_1E83BEC58;
  v14 = v7;
  v12 = v7;
  [v11 _provideItemAtURL:v8 withInfo:v10 completionHandler:v13];
}

void __67__FPDFileCoordinationProvider__provideItemAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x1E696ABF8] _setProvidedItemRecursiveGenerationCount:{objc_msgSend(v5, "providedItemRecursiveGenerationCount")}];
  }

  v3 = *(a1 + 32);
  v4 = [v5 error];
  (*(v3 + 16))(v3, v4);
}

- (void)_provideItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:v10];
  [v11 _provideItemAtURL:v10 withInfo:v9 completionHandler:v8];
}

- (void)_cancelProvidingItemAtURL:(id)a3 toReaderWithID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:v7];
  [v8 _cancelProvidingItemAtURL:v7 toReaderWithID:v6];
}

- (void)_writerWithID:(id)a3 didFinishWritingForURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:v6];
  [v8 _writerWithID:v7 didFinishWritingForURL:v6];
}

- (void)_providedItemAtURL:(id)a3 didGainPresenterWithInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:v7];
  [v8 _providedItemAtURL:v7 didGainPresenterWithInfo:v6];
}

- (void)_providedItemAtURL:(id)a3 didLosePresenterWithID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:v7];
  [v8 _providedItemAtURL:v7 didLosePresenterWithID:v6];
}

- (void)_providedItemAtURL:(id)a3 withPresenterWithID:(id)a4 didMoveToURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:v10];
  [v11 _providedItemAtURL:v10 withPresenterWithID:v9 didMoveToURL:v8];
}

- (void)_movingItemAtURL:(id)a3 withInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:v8];
  v12 = [v9 destinationDirectoryURL];
  v13 = [(FPDFileCoordinationProvider *)self delegateForURL:v12];

  if (v11 == v13)
  {
    [v11 _movingItemAtURL:v8 withInfo:v9 completionHandler:v10];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDFileCoordinationProvider _movingItemAtURL:v8 withInfo:v9 completionHandler:v14];
    }

    v15 = [MEMORY[0x1E696AC10] providingRequiredResponse];
    v10[2](v10, v15);
  }
}

- (FPDFileCoordinationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_provideItemAtURL:(const char *)a1 completionHandler:(NSObject *)a2 .cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Calling deprecated method: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_movingItemAtURL:(void *)a1 withInfo:(void *)a2 completionHandler:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 fp_shortDescription];
  v6 = [a2 destinationDirectoryURL];
  v7 = [v6 fp_shortDescription];
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_debug_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] needs providing %@ for moving into a different domain %@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end