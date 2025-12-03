@interface TSUURLTrackerFilePresenter
- (NSData)bookmarkData;
- (NSString)description;
- (NSURL)presentedItemURL;
- (TSUURLTrackerFilePresenter)init;
- (TSUURLTrackerFilePresenter)initWithURL:(id)l bookmarkData:(id)data delegate:(id)delegate;
- (id)URLAndReturnError:(id *)error;
- (id)_URLAndReturnError:(id *)error;
- (id)_bookmarkData;
- (id)_bookmarkDataAndReturnError:(id *)error;
- (id)_description;
- (id)bookmarkDataAndReturnError:(id *)error;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
- (void)pause;
- (void)presentedItemDidChangeUbiquityAttributes:(id)attributes;
- (void)presentedItemDidMoveToURL:(id)l;
- (void)relinquishPresentedItemToWriter:(id)writer;
- (void)startOrResume;
- (void)stop;
@end

@implementation TSUURLTrackerFilePresenter

- (TSUURLTrackerFilePresenter)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUURLTrackerFilePresenter init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUURLTracker.m"];
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:194 isFatal:0 description:"Do not call method"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUURLTrackerFilePresenter init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUURLTrackerFilePresenter)initWithURL:(id)l bookmarkData:(id)data delegate:(id)delegate
{
  lCopy = l;
  dataCopy = data;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = TSUURLTrackerFilePresenter;
  v11 = [(TSUURLTrackerFilePresenter *)&v23 init];
  if (v11)
  {
    v12 = dispatch_queue_create("TSUURLTrackerFilePresenter.access", 0);
    accessQueue = v11->_accessQueue;
    v11->_accessQueue = v12;

    v14 = [lCopy copy];
    URLIfAvailable = v11->_URLIfAvailable;
    v11->_URLIfAvailable = v14;

    v16 = [dataCopy copy];
    bookmarkDataIfAvailable = v11->_bookmarkDataIfAvailable;
    v11->_bookmarkDataIfAvailable = v16;

    v18 = MEMORY[0x277CCABD8];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUURLTrackerFilePresenter-%p", v11];
    v20 = [v18 tsu_newSerialOperationQueueWithName:v19];
    presentedItemOperationQueue = v11->_presentedItemOperationQueue;
    v11->_presentedItemOperationQueue = v20;

    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v11;
}

- (id)URLAndReturnError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__TSUURLTrackerFilePresenter_URLAndReturnError___block_invoke;
  block[3] = &unk_2799C6B50;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(accessQueue, block);
  v5 = v10[5];
  if (error && !v5)
  {
    *error = v16[5];
    v5 = v10[5];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __48__TSUURLTrackerFilePresenter_URLAndReturnError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _URLAndReturnError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_URLAndReturnError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  URLIfAvailable = self->_URLIfAvailable;
  if (!URLIfAvailable)
  {
    bookmarkDataIfAvailable = self->_bookmarkDataIfAvailable;
    if (bookmarkDataIfAvailable)
    {
      v18 = 0;
      obj = 0;
      v8 = [MEMORY[0x277CBEBC0] URLByResolvingBookmarkData:bookmarkDataIfAvailable options:768 relativeToURL:0 bookmarkDataIsStale:&v18 error:&obj];
      objc_storeStrong(&v24, obj);
      v9 = [v8 copy];
      v10 = self->_URLIfAvailable;
      self->_URLIfAvailable = v9;

      v11 = self->_URLIfAvailable;
      if (v11)
      {
        if (v18 == 1)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __49__TSUURLTrackerFilePresenter__URLAndReturnError___block_invoke;
          v16[3] = &unk_2799C6B78;
          v16[4] = self;
          v16[5] = &v19;
          v16[6] = 0;
          [(NSURL *)v11 tsu_performSecurityScopedResourceAccessUsingBlock:v16];
        }
      }

      else
      {
        objc_storeStrong(&self->_latestError, v20[5]);
      }

      v12 = self->_URLIfAvailable;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v5 = v13;
    if (!error || v13)
    {
      if (v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *error = self->_latestError;
    }

    if (self->_bookmarkDataIfAvailable)
    {
      if (TSUDefaultCat_init_token == -1)
      {
        v5 = 0;
        goto LABEL_19;
      }

      [TSUURLTrackerFilePresenter _URLAndReturnError:];
    }

    v5 = 0;
    goto LABEL_19;
  }

  v5 = URLIfAvailable;
LABEL_19:
  if (!self->_hasStarted && self->_bookmarkDataIfAvailable)
  {
    v14 = self->_URLIfAvailable;
    self->_URLIfAvailable = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v5;
}

void __49__TSUURLTrackerFilePresenter__URLAndReturnError___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = a1[6];
  v5 = *(v2 + 8);
  obj = *(v5 + 40);
  v6 = [v3 bookmarkDataWithOptions:v4 includingResourceValuesForKeys:0 relativeToURL:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = [v6 copy];
    v8 = a1[4];
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;
  }

  else if (TSUDefaultCat_init_token != -1)
  {
    __49__TSUURLTrackerFilePresenter__URLAndReturnError___block_invoke_cold_1();
  }
}

void __49__TSUURLTrackerFilePresenter__URLAndReturnError___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __49__TSUURLTrackerFilePresenter__URLAndReturnError___block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (NSData)bookmarkData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TSUURLTrackerFilePresenter_bookmarkData__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__TSUURLTrackerFilePresenter_bookmarkData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bookmarkData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_bookmarkData
{
  v7 = 0;
  v3 = [(TSUURLTrackerFilePresenter *)self _bookmarkDataAndReturnError:&v7];
  v4 = v7;
  if (!v3 && self->_URLIfAvailable && TSUDefaultCat_init_token != -1)
  {
    [TSUURLTrackerFilePresenter _bookmarkData];
  }

  if (!self->_hasStarted && self->_bookmarkDataIfAvailable)
  {
    URLIfAvailable = self->_URLIfAvailable;
    self->_URLIfAvailable = 0;
  }

  return v3;
}

void __43__TSUURLTrackerFilePresenter__bookmarkData__block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)startOrResume
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__TSUURLTrackerFilePresenter_startOrResume__block_invoke;
  v4[3] = &unk_2799C6BA0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(accessQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [MEMORY[0x277CCA9E8] addFilePresenter:self];
  }

  _Block_object_dispose(&v5, 8);
}

void __43__TSUURLTrackerFilePresenter_startOrResume__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) == 0)
  {
    *(v2 + 16) = 1;
    v4 = [*(a1 + 32) _URLAndReturnError:0];
    if (v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      *(*(a1 + 32) + 16) = 0;
    }
  }
}

- (void)pause
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__TSUURLTrackerFilePresenter_pause__block_invoke;
  v4[3] = &unk_2799C6BA0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(accessQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [MEMORY[0x277CCA9E8] removeFilePresenter:self];
  }

  _Block_object_dispose(&v5, 8);
}

id __35__TSUURLTrackerFilePresenter_pause__block_invoke(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 16) == 1)
  {
    v2 = result;
    *(v1 + 16) = 0;
    result = [*(result + 4) _bookmarkData];
    *(*(v2[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)stop
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__TSUURLTrackerFilePresenter_stop__block_invoke;
  v4[3] = &unk_2799C6BA0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(accessQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [MEMORY[0x277CCA9E8] removeFilePresenter:self];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __34__TSUURLTrackerFilePresenter_stop__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)bookmarkDataAndReturnError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TSUURLTrackerFilePresenter_bookmarkDataAndReturnError___block_invoke;
  block[3] = &unk_2799C6B50;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(accessQueue, block);
  v5 = v10[5];
  if (error && !v5)
  {
    *error = v16[5];
    v5 = v10[5];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __57__TSUURLTrackerFilePresenter_bookmarkDataAndReturnError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _bookmarkDataAndReturnError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_bookmarkDataAndReturnError:(id *)error
{
  bookmarkDataIfAvailable = self->_bookmarkDataIfAvailable;
  if (!bookmarkDataIfAvailable)
  {
    URLIfAvailable = self->_URLIfAvailable;
    if (URLIfAvailable)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy__10;
      v14 = __Block_byref_object_dispose__10;
      v15 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __58__TSUURLTrackerFilePresenter__bookmarkDataAndReturnError___block_invoke;
      v9[3] = &unk_2799C6B78;
      v9[5] = &v10;
      v9[6] = 0;
      v9[4] = self;
      [(NSURL *)URLIfAvailable tsu_performSecurityScopedResourceAccessUsingBlock:v9];
      if (!self->_bookmarkDataIfAvailable)
      {
        objc_storeStrong(&self->_latestError, v11[5]);
      }

      _Block_object_dispose(&v10, 8);
      bookmarkDataIfAvailable = v15;
      goto LABEL_8;
    }
  }

  if (self->_latestError)
  {
    self->_bookmarkDataIfAvailable = 0;
LABEL_8:
  }

  v7 = self->_bookmarkDataIfAvailable;
  if (error && !v7)
  {
    *error = self->_latestError;
    v7 = self->_bookmarkDataIfAvailable;
  }

  return v7;
}

void __58__TSUURLTrackerFilePresenter__bookmarkDataAndReturnError___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = a1[6];
  v5 = *(v2 + 8);
  obj = *(v5 + 40);
  v6 = [v3 bookmarkDataWithOptions:v4 includingResourceValuesForKeys:0 relativeToURL:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = [v6 copy];
  v8 = a1[4];
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;
}

- (NSURL)presentedItemURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__TSUURLTrackerFilePresenter_presentedItemURL__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)relinquishPresentedItemToWriter:(id)writer
{
  writerCopy = writer;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained relinquishPresentedItemToWriter:writerCopy];
  }

  else if (writerCopy)
  {
    writerCopy[2](writerCopy, 0);
  }
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(TSUURLTrackerFilePresenter *)self stop];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accommodatePresentedItemDeletionWithCompletionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)presentedItemDidMoveToURL:(id)l
{
  lCopy = l;
  v5 = [lCopy copy];
  accessQueue = self->_accessQueue;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__TSUURLTrackerFilePresenter_presentedItemDidMoveToURL___block_invoke;
  v12 = &unk_2799C68A8;
  selfCopy = self;
  v7 = v5;
  v14 = v7;
  dispatch_async(accessQueue, &v9);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presentedItemDidMoveToURL:{lCopy, v9, v10, v11, v12, selfCopy}];
  }
}

- (void)presentedItemDidChangeUbiquityAttributes:(id)attributes
{
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    presentedItemURL = [(TSUURLTrackerFilePresenter *)self presentedItemURL];
    allObjects = [attributesCopy allObjects];
    [presentedItemURL tsu_removeCachedResourceValueForKeys:allObjects];

    [WeakRetained presentedItemDidChangeUbiquityAttributes:attributesCopy];
  }
}

- (id)_description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p URL=%@>", v5, self, self->_URLIfAvailable];

  return v6;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__TSUURLTrackerFilePresenter_description__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__TSUURLTrackerFilePresenter_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end