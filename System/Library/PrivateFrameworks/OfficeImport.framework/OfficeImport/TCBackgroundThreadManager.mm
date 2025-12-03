@interface TCBackgroundThreadManager
- (TCBackgroundThreadManager)initWithCancelDelegate:(id)delegate;
- (void)addASyncBlock:(id)block;
- (void)dealloc;
- (void)waitUntilComplete;
@end

@implementation TCBackgroundThreadManager

- (TCBackgroundThreadManager)initWithCancelDelegate:(id)delegate
{
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = TCBackgroundThreadManager;
  v6 = [(TCBackgroundThreadManager *)&v20 init];
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    mQueue = v6->mQueue;
    v6->mQueue = v7;

    v9 = dispatch_queue_create("com.apple.iWork.TCBackgroundProgressQueue", 0);
    mProgressReportingQueue = v6->mProgressReportingQueue;
    v6->mProgressReportingQueue = v9;

    v11 = dispatch_group_create();
    mGroup = v6->mGroup;
    v6->mGroup = v11;

    objc_storeStrong(&v6->mCancelDelegate, delegate);
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];
    v15 = [threadDictionary objectForKey:@"TCMessageContext Instance"];
    [(TCBackgroundThreadManager *)v6 setMessageContext:v15];

    currentThread2 = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    v18 = [threadDictionary2 objectForKey:@"TCProgressContext Instance"];
    [(TCBackgroundThreadManager *)v6 setProgressContext:v18];
  }

  return v6;
}

- (void)dealloc
{
  mQueue = self->mQueue;
  if (mQueue)
  {
    self->mQueue = 0;
  }

  mGroup = self->mGroup;
  if (mGroup)
  {
    self->mGroup = 0;
  }

  mProgressReportingQueue = self->mProgressReportingQueue;
  if (mProgressReportingQueue)
  {
    self->mProgressReportingQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = TCBackgroundThreadManager;
  [(TCBackgroundThreadManager *)&v6 dealloc];
}

- (void)addASyncBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->mIsWaiting)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TCBackgroundThreadManager addASyncBlock:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCBackgroundThreadManager.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:83 isFatal:0 description:"TCBackgroundThreadManager: Cannot add blocks when waiting"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  else
  {
    mQueue = self->mQueue;
    ++self->mBlockCount;
    mGroup = self->mGroup;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__TCBackgroundThreadManager_addASyncBlock___block_invoke;
    v10[3] = &unk_2799C6CB8;
    v10[4] = self;
    v11 = blockCopy;
    dispatch_group_async(mGroup, mQueue, v10);
  }
}

void __43__TCBackgroundThreadManager_addASyncBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  if (*(v2 + 16) == 1)
  {
    v3 = *(v2 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__TCBackgroundThreadManager_addASyncBlock___block_invoke_2;
    block[3] = &unk_2799C68D0;
    block[4] = v2;
    dispatch_sync(v3, block);
    v2 = *(a1 + 32);
  }

  --*(v2 + 24);
}

- (void)waitUntilComplete
{
  [TCProgressContext createStageWithSteps:@"Background object processing" takingSteps:self->mBlockCount name:100.0];
  self->mIsWaiting = 1;
  dispatch_group_wait(self->mGroup, 0xFFFFFFFFFFFFFFFFLL);

  +[TCProgressContext endStage];
}

@end