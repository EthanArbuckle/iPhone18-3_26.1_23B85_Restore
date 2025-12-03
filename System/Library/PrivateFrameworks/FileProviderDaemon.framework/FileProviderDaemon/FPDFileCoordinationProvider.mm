@interface FPDFileCoordinationProvider
- (FPDFileCoordinationProvider)initWithRootURL:(id)l;
- (FPDFileCoordinationProviderDelegate)delegate;
- (NSOperationQueue)_providedItemsOperationQueue;
- (NSString)_fileReactorID;
- (id)_physicalURLForURL:(id)l;
- (id)delegateForURL:(id)l;
- (void)_cancelProvidingItemAtURL:(id)l toReaderWithID:(id)d;
- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)_provideItemAtURL:(id)l completionHandler:(id)handler;
- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)_providedItemAtURL:(id)l didGainPresenterWithInfo:(id)info;
- (void)_providedItemAtURL:(id)l didLosePresenterWithID:(id)d;
- (void)_providedItemAtURL:(id)l withPresenterWithID:(id)d didMoveToURL:(id)rL;
- (void)_writerWithID:(id)d didFinishWritingForURL:(id)l;
@end

@implementation FPDFileCoordinationProvider

- (FPDFileCoordinationProvider)initWithRootURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = FPDFileCoordinationProvider;
  v6 = [(FPDFileCoordinationProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providedItemsURL, l);
  }

  return v7;
}

- (id)delegateForURL:(id)l
{
  lCopy = l;
  delegate = [(FPDFileCoordinationProvider *)self delegate];
  v6 = [delegate _siblingDelegateForURL:lCopy];

  if (v6)
  {
    delegate2 = v6;
  }

  else
  {
    delegate2 = [(FPDFileCoordinationProvider *)self delegate];
  }

  v8 = delegate2;

  return v8;
}

- (NSOperationQueue)_providedItemsOperationQueue
{
  delegate = [(FPDFileCoordinationProvider *)self delegate];
  _providedItemsOperationQueue = [delegate _providedItemsOperationQueue];

  return _providedItemsOperationQueue;
}

- (NSString)_fileReactorID
{
  delegate = [(FPDFileCoordinationProvider *)self delegate];
  _fileReactorID = [delegate _fileReactorID];

  return _fileReactorID;
}

- (id)_physicalURLForURL:(id)l
{
  lCopy = l;
  v5 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  v6 = [v5 _physicalURLForURL:lCopy];

  return v6;
}

- (void)_provideItemAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FPDFileCoordinationProvider _provideItemAtURL:a2 completionHandler:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AC20]);
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__FPDFileCoordinationProvider__provideItemAtURL_completionHandler___block_invoke;
  v13[3] = &unk_1E83BEC58;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [v11 _provideItemAtURL:lCopy withInfo:v10 completionHandler:v13];
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

- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  lCopy = l;
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  [v11 _provideItemAtURL:lCopy withInfo:infoCopy completionHandler:handlerCopy];
}

- (void)_cancelProvidingItemAtURL:(id)l toReaderWithID:(id)d
{
  dCopy = d;
  lCopy = l;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  [v8 _cancelProvidingItemAtURL:lCopy toReaderWithID:dCopy];
}

- (void)_writerWithID:(id)d didFinishWritingForURL:(id)l
{
  lCopy = l;
  dCopy = d;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  [v8 _writerWithID:dCopy didFinishWritingForURL:lCopy];
}

- (void)_providedItemAtURL:(id)l didGainPresenterWithInfo:(id)info
{
  infoCopy = info;
  lCopy = l;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  [v8 _providedItemAtURL:lCopy didGainPresenterWithInfo:infoCopy];
}

- (void)_providedItemAtURL:(id)l didLosePresenterWithID:(id)d
{
  dCopy = d;
  lCopy = l;
  v8 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  [v8 _providedItemAtURL:lCopy didLosePresenterWithID:dCopy];
}

- (void)_providedItemAtURL:(id)l withPresenterWithID:(id)d didMoveToURL:(id)rL
{
  rLCopy = rL;
  dCopy = d;
  lCopy = l;
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  [v11 _providedItemAtURL:lCopy withPresenterWithID:dCopy didMoveToURL:rLCopy];
}

- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  v11 = [(FPDFileCoordinationProvider *)self delegateForURL:lCopy];
  destinationDirectoryURL = [infoCopy destinationDirectoryURL];
  v13 = [(FPDFileCoordinationProvider *)self delegateForURL:destinationDirectoryURL];

  if (v11 == v13)
  {
    [v11 _movingItemAtURL:lCopy withInfo:infoCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDFileCoordinationProvider _movingItemAtURL:lCopy withInfo:infoCopy completionHandler:v14];
    }

    providingRequiredResponse = [MEMORY[0x1E696AC10] providingRequiredResponse];
    handlerCopy[2](handlerCopy, providingRequiredResponse);
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