@interface CRInsights
+ (id)sharedInsights;
+ (void)dispatchAsyncOnQueue:(id)queue block:(id)block;
- (CRInsights)init;
- (CRInsightsDelegate)delegate;
- (id)allowOverrideWithKey:(id)key forResultFromBlock:(id)block;
- (id)allowOverrideWithKey:(id)key forValue:(id)value;
- (id)cameraReaderForCurrentThread;
- (id)currentContext;
- (id)enterSection:(id)section withDescription:(id)description;
- (id)takeContextSnapshot;
- (void)attachContextCopyToCurrentThread:(id)thread;
- (void)attachContextToCurrentThread:(id)thread;
- (void)attachNewContextToCurrentThreadWithCameraReader:(id)reader;
- (void)leaveSection:(id)section;
- (void)notifySampleBufferProcessingEnd:(opaqueCMSampleBuffer *)end;
- (void)notifySampleBufferProcessingStart:(opaqueCMSampleBuffer *)start;
- (void)provideInsightValue:(id)value forKey:(id)key;
- (void)resetContextForCurrentThread;
- (void)setContextValue:(id)value forKey:(id)key;
@end

@implementation CRInsights

+ (id)sharedInsights
{
  if (os_variant_has_internal_diagnostics())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__CRInsights_sharedInsights__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (qword_27EE54520 != -1)
    {
      dispatch_once(&qword_27EE54520, block);
    }
  }

  v3 = _MergedGlobals_6;

  return v3;
}

void __28__CRInsights_sharedInsights__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"com.apple.CoreRecognition.enable_shared_insights"];

  if (v3)
  {
    v4 = objc_alloc_init(*(a1 + 32));
    v5 = _MergedGlobals_6;
    _MergedGlobals_6 = v4;
  }
}

- (CRInsights)init
{
  v5.receiver = self;
  v5.super_class = CRInsights;
  v2 = [(CRInsights *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(CRInsights *)v2 setThreadsToContexts:dictionary];
  }

  return v2;
}

- (id)currentContext
{
  v3 = MEMORY[0x277CCAE60];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v3 valueWithNonretainedObject:currentThread];

  threadsToContexts = [(CRInsights *)self threadsToContexts];
  objc_sync_enter(threadsToContexts);
  threadsToContexts2 = [(CRInsights *)self threadsToContexts];
  v8 = [threadsToContexts2 objectForKey:v5];

  objc_sync_exit(threadsToContexts);

  return v8;
}

- (id)takeContextSnapshot
{
  currentContext = [(CRInsights *)self currentContext];
  if (currentContext)
  {
    v3 = [[CRInsightsContext alloc] initWithContext:currentContext];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)attachNewContextToCurrentThreadWithCameraReader:(id)reader
{
  readerCopy = reader;
  v5 = objc_alloc_init(CRInsightsContext);
  [(CRInsightsContext *)v5 setCameraReader:readerCopy];

  [(CRInsights *)self attachContextToCurrentThread:v5];
}

- (void)attachContextToCurrentThread:(id)thread
{
  threadCopy = thread;
  if (threadCopy)
  {
    v10 = threadCopy;
    v5 = MEMORY[0x277CCAE60];
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    v7 = [v5 valueWithNonretainedObject:currentThread];

    threadsToContexts = [(CRInsights *)self threadsToContexts];
    objc_sync_enter(threadsToContexts);
    threadsToContexts2 = [(CRInsights *)self threadsToContexts];
    [threadsToContexts2 setObject:v10 forKey:v7];

    objc_sync_exit(threadsToContexts);
    threadCopy = v10;
  }
}

- (void)attachContextCopyToCurrentThread:(id)thread
{
  if (thread)
  {
    threadCopy = thread;
    v5 = [[CRInsightsContext alloc] initWithContext:threadCopy];

    [(CRInsights *)self attachContextToCurrentThread:v5];
  }
}

- (void)resetContextForCurrentThread
{
  v3 = MEMORY[0x277CCAE60];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v3 valueWithNonretainedObject:currentThread];

  threadsToContexts = [(CRInsights *)self threadsToContexts];
  objc_sync_enter(threadsToContexts);
  threadsToContexts2 = [(CRInsights *)self threadsToContexts];
  [threadsToContexts2 removeObjectForKey:v7];

  objc_sync_exit(threadsToContexts);
}

- (void)setContextValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  currentContext = [(CRInsights *)self currentContext];
  [currentContext setValue:valueCopy forKey:keyCopy];
}

- (id)cameraReaderForCurrentThread
{
  v3 = MEMORY[0x277CCAE60];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v3 valueWithNonretainedObject:currentThread];

  threadsToContexts = [(CRInsights *)self threadsToContexts];
  objc_sync_enter(threadsToContexts);
  threadsToContexts2 = [(CRInsights *)self threadsToContexts];
  v8 = [threadsToContexts2 objectForKey:v5];
  cameraReader = [v8 cameraReader];

  objc_sync_exit(threadsToContexts);

  return cameraReader;
}

- (void)notifySampleBufferProcessingStart:(opaqueCMSampleBuffer *)start
{
  delegate = [(CRInsights *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    cameraReaderForCurrentThread = [(CRInsights *)self cameraReaderForCurrentThread];
    if (cameraReaderForCurrentThread)
    {
      v9 = cameraReaderForCurrentThread;
      delegate2 = [(CRInsights *)self delegate];
      [delegate2 cameraReader:v9 willProcessSampleBuffer:start];

      cameraReaderForCurrentThread = v9;
    }
  }
}

- (void)notifySampleBufferProcessingEnd:(opaqueCMSampleBuffer *)end
{
  delegate = [(CRInsights *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    cameraReaderForCurrentThread = [(CRInsights *)self cameraReaderForCurrentThread];
    if (cameraReaderForCurrentThread)
    {
      delegate2 = [(CRInsights *)self delegate];
      [delegate2 cameraReader:cameraReaderForCurrentThread didProcessSampleBuffer:end];
    }
  }

  [(CRInsights *)self resetContextForCurrentThread];
}

- (void)provideInsightValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  delegate = [(CRInsights *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    cameraReaderForCurrentThread = [(CRInsights *)self cameraReaderForCurrentThread];
    if (cameraReaderForCurrentThread)
    {
      delegate2 = [(CRInsights *)self delegate];
      [delegate2 cameraReader:cameraReaderForCurrentThread didProvideInsightValue:valueCopy forKey:keyCopy];
    }
  }
}

- (id)enterSection:(id)section withDescription:(id)description
{
  sectionCopy = section;
  descriptionCopy = description;
  delegate = [(CRInsights *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    cameraReaderForCurrentThread = [(CRInsights *)self cameraReaderForCurrentThread];
    if (cameraReaderForCurrentThread)
    {
      v11 = [[CRInsightsCodeSection alloc] initWithName:sectionCopy andDescription:descriptionCopy];
      delegate2 = [(CRInsights *)self delegate];
      [delegate2 cameraReader:cameraReaderForCurrentThread willRunSection:v11];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)leaveSection:(id)section
{
  sectionCopy = section;
  if (sectionCopy)
  {
    delegate = [(CRInsights *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      cameraReaderForCurrentThread = [(CRInsights *)self cameraReaderForCurrentThread];
      if (cameraReaderForCurrentThread)
      {
        delegate2 = [(CRInsights *)self delegate];
        [delegate2 cameraReader:cameraReaderForCurrentThread didRunSection:sectionCopy];
      }
    }
  }
}

- (id)allowOverrideWithKey:(id)key forResultFromBlock:(id)block
{
  v6 = *(block + 2);
  keyCopy = key;
  v8 = v6(block);
  v9 = [(CRInsights *)self allowOverrideWithKey:keyCopy forValue:v8];

  return v9;
}

- (id)allowOverrideWithKey:(id)key forValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  delegate = [(CRInsights *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    cameraReaderForCurrentThread = [(CRInsights *)self cameraReaderForCurrentThread];
    if (cameraReaderForCurrentThread)
    {
      delegate2 = [(CRInsights *)self delegate];
      v15 = 0;
      v12 = [delegate2 cameraReader:cameraReaderForCurrentThread willAcceptOverride:&v15 forKey:keyCopy];
      v13 = v15;

      if (v12)
      {

        goto LABEL_8;
      }
    }
  }

  v13 = valueCopy;
LABEL_8:

  return v13;
}

+ (void)dispatchAsyncOnQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v7 = +[CRInsights sharedInsights];
  takeContextSnapshot = [v7 takeContextSnapshot];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__CRInsights_dispatchAsyncOnQueue_block___block_invoke;
  v11[3] = &unk_278EAAFB0;
  v12 = takeContextSnapshot;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = takeContextSnapshot;
  dispatch_async(queueCopy, v11);
}

uint64_t __41__CRInsights_dispatchAsyncOnQueue_block___block_invoke(uint64_t a1)
{
  v2 = +[CRInsights sharedInsights];
  [v2 attachContextCopyToCurrentThread:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (CRInsightsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end