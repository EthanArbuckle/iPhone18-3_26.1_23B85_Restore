@interface HLPURLSessionTask
+ (HLPURLSessionDelegateResponds)delegateRespondsWithDelegate:(id)a3;
- (HLPURLSessionDelegate)networkDelegate;
- (HLPURLSessionTask)initWithSessionTask:(id)a3 identifier:(id)a4;
- (NSString)identifier;
- (NSURL)URL;
- (void)cancel;
- (void)dealloc;
- (void)didCompleteWithError:(id)a3;
- (void)registerDelegate:(id)a3;
- (void)setPriority:(float)a3;
- (void)unregisterDelegate:(id)a3;
@end

@implementation HLPURLSessionTask

- (void)dealloc
{
  [(HLPURLSessionTask *)self cancel];
  v3.receiver = self;
  v3.super_class = HLPURLSessionTask;
  [(HLPURLSessionTask *)&v3 dealloc];
}

- (HLPURLSessionTask)initWithSessionTask:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HLPURLSessionTask;
  v9 = [(HLPURLSessionTask *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a4);
    objc_storeStrong(&v10->_task, a3);
    v11 = dispatch_queue_create("com.apple.tipsd.urlsessionQueue", 0);
    sessionTaskDelegateQueue = v10->_sessionTaskDelegateQueue;
    v10->_sessionTaskDelegateQueue = v11;

    v13 = v10->_sessionTaskDelegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__HLPURLSessionTask_initWithSessionTask_identifier___block_invoke;
    block[3] = &unk_279706B10;
    v16 = v10;
    dispatch_sync(v13, block);
  }

  return v10;
}

void __52__HLPURLSessionTask_initWithSessionTask_identifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
  [*(a1 + 32) setSessionTaskDelegates:v2];
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v4 = [(HLPURLSessionTask *)self URL];
    v3 = [v4 lastPathComponent];
  }

  return v3;
}

- (NSURL)URL
{
  v2 = [(NSURLSessionTask *)self->_task originalRequest];
  v3 = [v2 URL];

  return v3;
}

- (void)setPriority:(float)a3
{
  [(NSURLSessionTask *)self->_task priority];
  if (*&v5 != a3)
  {
    task = self->_task;
    *&v5 = a3;

    [(NSURLSessionTask *)task setPriority:v5];
  }
}

+ (HLPURLSessionDelegateResponds)delegateRespondsWithDelegate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = objc_opt_respondsToSelector();
  v6 = objc_opt_respondsToSelector();
  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();

  v10 = 0x10000000000;
  if ((v4 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x100000000;
  if ((v9 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if ((v8 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 256;
  if ((v7 & 1) == 0)
  {
    v14 = 0;
  }

  return ((v12 | v10) & 0xFFFFFFFFFFFFFFFELL | v6 & 1 | v14 | v13 | v11);
}

- (void)didCompleteWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_sessionTaskDelegates copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v10++) URLSessionSessionTask:self didCompleteWithError:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HLPURLSessionTask_didCompleteWithError___block_invoke;
  block[3] = &unk_279706B10;
  block[4] = self;
  dispatch_sync(sessionTaskDelegateQueue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __42__HLPURLSessionTask_didCompleteWithError___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionTaskDelegates];
  [v1 removeAllObjects];
}

- (void)registerDelegate:(id)a3
{
  v4 = a3;
  if (v4 && ![(NSHashTable *)self->_sessionTaskDelegates containsObject:v4])
  {
    sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__HLPURLSessionTask_registerDelegate___block_invoke;
    v6[3] = &unk_279706F08;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(sessionTaskDelegateQueue, v6);
  }
}

void __38__HLPURLSessionTask_registerDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionTaskDelegates];
  [v2 addObject:*(a1 + 40)];
}

- (void)unregisterDelegate:(id)a3
{
  v4 = a3;
  sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __40__HLPURLSessionTask_unregisterDelegate___block_invoke;
  v10 = &unk_279706F08;
  v11 = self;
  v6 = v4;
  v12 = v6;
  dispatch_sync(sessionTaskDelegateQueue, &v7);
  if (![(NSHashTable *)self->_sessionTaskDelegates count:v7])
  {
    [(HLPURLSessionTask *)self cancel];
  }
}

void __40__HLPURLSessionTask_unregisterDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionTaskDelegates];
  [v2 removeObject:*(a1 + 40)];
}

- (void)cancel
{
  [(NSURLSessionTask *)self->_task cancel];
  sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HLPURLSessionTask_cancel__block_invoke;
  block[3] = &unk_279706B10;
  block[4] = self;
  dispatch_sync(sessionTaskDelegateQueue, block);
  self->_cancelled = 1;
}

void __27__HLPURLSessionTask_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionTaskDelegates];
  [v1 removeAllObjects];
}

- (HLPURLSessionDelegate)networkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_networkDelegate);

  return WeakRetained;
}

@end