@interface NPSDomainAccessorFilePresenter
- (BOOL)isCurrent;
- (NPSDomainAccessorFilePresenter)initWithDelegate:(id)a3 domainURL:(id)a4;
- (NPSDomainAccessorFilePresenterDelegate)delegate;
- (id)synchronizeForReadingOnly:(BOOL)a3 handler:(id)a4;
- (void)dealloc;
- (void)relinquishPresentedItemToWriter:(id)a3;
@end

@implementation NPSDomainAccessorFilePresenter

- (BOOL)isCurrent
{
  v12[1] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  presenterOperationQueue = self->_presenterOperationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__NPSDomainAccessorFilePresenter_isCurrent__block_invoke;
  v7[3] = &unk_1E8129540;
  v7[4] = self;
  v7[5] = &v8;
  v3 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:v7];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(NSOperationQueue *)presenterOperationQueue addOperations:v4 waitUntilFinished:1];

  LOBYTE(presenterOperationQueue) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  v5 = *MEMORY[0x1E69E9840];
  return presenterOperationQueue;
}

- (NPSDomainAccessorFilePresenter)initWithDelegate:(id)a3 domainURL:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"delegate: (%@)", 0];
    v21 = [v18 exceptionWithName:v19 reason:v20 userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

  v8 = v7;
  v23.receiver = self;
  v23.super_class = NPSDomainAccessorFilePresenter;
  v9 = [(NPSDomainAccessorFilePresenter *)&v23 init];
  if (v9)
  {
    v10 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v25 = v9;
      v26 = 2048;
      v27 = v6;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "self: (%p); delegate: (%p); domainURL: (%@)", buf, 0x20u);
    }

    objc_storeWeak(&v9->_delegate, v6);
    objc_storeStrong(&v9->_domainURL, a4);
    v9->_current = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.nanoprefsync.frmrk.filePresenter", v11);
    presenterUnderlyingQueue = v9->_presenterUnderlyingQueue;
    v9->_presenterUnderlyingQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    presenterOperationQueue = v9->_presenterOperationQueue;
    v9->_presenterOperationQueue = v14;

    [(NSOperationQueue *)v9->_presenterOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v9->_presenterOperationQueue setUnderlyingQueue:v9->_presenterUnderlyingQueue];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1C0D93000, v3, OS_LOG_TYPE_DEFAULT, "self: (%p)", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = NPSDomainAccessorFilePresenter;
  [(NPSDomainAccessorFilePresenter *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)synchronizeForReadingOnly:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
  {
    [NPSDomainAccessorFilePresenter synchronizeForReadingOnly:handler:];
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:self];
  domainURL = self->_domainURL;
  if (v4)
  {
    v23 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke;
    v21[3] = &unk_1E8129638;
    v21[4] = self;
    v10 = &v22;
    v22 = v7;
    v11 = &v23;
    [v8 coordinateReadingItemAtURL:domainURL options:1 error:&v23 byAccessor:v21];
  }

  else
  {
    v20 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke_2;
    v18[3] = &unk_1E8129638;
    v18[4] = self;
    v10 = &v19;
    v19 = v7;
    v11 = &v20;
    [v8 coordinateWritingItemAtURL:domainURL options:0 error:&v20 byAccessor:v18];
  }

  v12 = *v11;

  if (v12)
  {
    v13 = nps_domain_accessor_log;
    if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_domainURL;
      *buf = 138412546;
      v25 = v14;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1C0D93000, v13, OS_LOG_TYPE_DEFAULT, "Failed to file-coordinate URL (%@) with error: (%@)", buf, 0x16u);
    }

    v15 = v12;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 8) = result;
  return result;
}

uint64_t __68__NPSDomainAccessorFilePresenter_synchronizeForReadingOnly_handler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 8) = result;
  return result;
}

- (void)relinquishPresentedItemToWriter:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nps_domain_accessor_log;
  if (os_log_type_enabled(nps_domain_accessor_log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = self;
    _os_log_impl(&dword_1C0D93000, v5, OS_LOG_TYPE_DEFAULT, "self: (%p)", &v8, 0xCu);
  }

  self->_current = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained filePresenterDidBecomeNonCurrent:self];

  if (v4)
  {
    v4[2](v4, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (NPSDomainAccessorFilePresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end