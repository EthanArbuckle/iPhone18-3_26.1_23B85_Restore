@interface CRInsights
+ (id)sharedInsights;
+ (void)dispatchAsyncOnQueue:(id)a3 block:(id)a4;
- (CRInsights)init;
- (CRInsightsDelegate)delegate;
- (id)allowOverrideWithKey:(id)a3 forResultFromBlock:(id)a4;
- (id)allowOverrideWithKey:(id)a3 forValue:(id)a4;
- (id)cameraReaderForCurrentThread;
- (id)currentContext;
- (id)enterSection:(id)a3 withDescription:(id)a4;
- (id)takeContextSnapshot;
- (void)attachContextCopyToCurrentThread:(id)a3;
- (void)attachContextToCurrentThread:(id)a3;
- (void)attachNewContextToCurrentThreadWithCameraReader:(id)a3;
- (void)leaveSection:(id)a3;
- (void)notifySampleBufferProcessingEnd:(opaqueCMSampleBuffer *)a3;
- (void)notifySampleBufferProcessingStart:(opaqueCMSampleBuffer *)a3;
- (void)provideInsightValue:(id)a3 forKey:(id)a4;
- (void)resetContextForCurrentThread;
- (void)setContextValue:(id)a3 forKey:(id)a4;
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
    block[4] = a1;
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(CRInsights *)v2 setThreadsToContexts:v3];
  }

  return v2;
}

- (id)currentContext
{
  v3 = MEMORY[0x277CCAE60];
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v3 valueWithNonretainedObject:v4];

  v6 = [(CRInsights *)self threadsToContexts];
  objc_sync_enter(v6);
  v7 = [(CRInsights *)self threadsToContexts];
  v8 = [v7 objectForKey:v5];

  objc_sync_exit(v6);

  return v8;
}

- (id)takeContextSnapshot
{
  v2 = [(CRInsights *)self currentContext];
  if (v2)
  {
    v3 = [[CRInsightsContext alloc] initWithContext:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)attachNewContextToCurrentThreadWithCameraReader:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CRInsightsContext);
  [(CRInsightsContext *)v5 setCameraReader:v4];

  [(CRInsights *)self attachContextToCurrentThread:v5];
}

- (void)attachContextToCurrentThread:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = MEMORY[0x277CCAE60];
    v6 = [MEMORY[0x277CCACC8] currentThread];
    v7 = [v5 valueWithNonretainedObject:v6];

    v8 = [(CRInsights *)self threadsToContexts];
    objc_sync_enter(v8);
    v9 = [(CRInsights *)self threadsToContexts];
    [v9 setObject:v10 forKey:v7];

    objc_sync_exit(v8);
    v4 = v10;
  }
}

- (void)attachContextCopyToCurrentThread:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[CRInsightsContext alloc] initWithContext:v4];

    [(CRInsights *)self attachContextToCurrentThread:v5];
  }
}

- (void)resetContextForCurrentThread
{
  v3 = MEMORY[0x277CCAE60];
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v3 valueWithNonretainedObject:v4];

  v5 = [(CRInsights *)self threadsToContexts];
  objc_sync_enter(v5);
  v6 = [(CRInsights *)self threadsToContexts];
  [v6 removeObjectForKey:v7];

  objc_sync_exit(v5);
}

- (void)setContextValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRInsights *)self currentContext];
  [v8 setValue:v7 forKey:v6];
}

- (id)cameraReaderForCurrentThread
{
  v3 = MEMORY[0x277CCAE60];
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v3 valueWithNonretainedObject:v4];

  v6 = [(CRInsights *)self threadsToContexts];
  objc_sync_enter(v6);
  v7 = [(CRInsights *)self threadsToContexts];
  v8 = [v7 objectForKey:v5];
  v9 = [v8 cameraReader];

  objc_sync_exit(v6);

  return v9;
}

- (void)notifySampleBufferProcessingStart:(opaqueCMSampleBuffer *)a3
{
  v5 = [(CRInsights *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRInsights *)self cameraReaderForCurrentThread];
    if (v7)
    {
      v9 = v7;
      v8 = [(CRInsights *)self delegate];
      [v8 cameraReader:v9 willProcessSampleBuffer:a3];

      v7 = v9;
    }
  }
}

- (void)notifySampleBufferProcessingEnd:(opaqueCMSampleBuffer *)a3
{
  v5 = [(CRInsights *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRInsights *)self cameraReaderForCurrentThread];
    if (v7)
    {
      v8 = [(CRInsights *)self delegate];
      [v8 cameraReader:v7 didProcessSampleBuffer:a3];
    }
  }

  [(CRInsights *)self resetContextForCurrentThread];
}

- (void)provideInsightValue:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CRInsights *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CRInsights *)self cameraReaderForCurrentThread];
    if (v9)
    {
      v10 = [(CRInsights *)self delegate];
      [v10 cameraReader:v9 didProvideInsightValue:v11 forKey:v6];
    }
  }
}

- (id)enterSection:(id)a3 withDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRInsights *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRInsights *)self cameraReaderForCurrentThread];
    if (v10)
    {
      v11 = [[CRInsightsCodeSection alloc] initWithName:v6 andDescription:v7];
      v12 = [(CRInsights *)self delegate];
      [v12 cameraReader:v10 willRunSection:v11];
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

- (void)leaveSection:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(CRInsights *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CRInsights *)self cameraReaderForCurrentThread];
      if (v6)
      {
        v7 = [(CRInsights *)self delegate];
        [v7 cameraReader:v6 didRunSection:v8];
      }
    }
  }
}

- (id)allowOverrideWithKey:(id)a3 forResultFromBlock:(id)a4
{
  v6 = *(a4 + 2);
  v7 = a3;
  v8 = v6(a4);
  v9 = [(CRInsights *)self allowOverrideWithKey:v7 forValue:v8];

  return v9;
}

- (id)allowOverrideWithKey:(id)a3 forValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRInsights *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRInsights *)self cameraReaderForCurrentThread];
    if (v10)
    {
      v11 = [(CRInsights *)self delegate];
      v15 = 0;
      v12 = [v11 cameraReader:v10 willAcceptOverride:&v15 forKey:v6];
      v13 = v15;

      if (v12)
      {

        goto LABEL_8;
      }
    }
  }

  v13 = v7;
LABEL_8:

  return v13;
}

+ (void)dispatchAsyncOnQueue:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CRInsights sharedInsights];
  v8 = [v7 takeContextSnapshot];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__CRInsights_dispatchAsyncOnQueue_block___block_invoke;
  v11[3] = &unk_278EAAFB0;
  v12 = v8;
  v13 = v5;
  v9 = v5;
  v10 = v8;
  dispatch_async(v6, v11);
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