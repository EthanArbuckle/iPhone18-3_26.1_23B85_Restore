@interface BWBackPressureNode
+ (void)initialize;
- (BWBackPressureNode)initWithNumberOfInputsAndOutputs:(unsigned int)a3 initialSemaphoreValue:(int64_t)a4;
- (void)_handleUpdatedPresentationTimestamp:(id *)a3 forIndex:(unint64_t)a4;
- (void)_setSemaphore:(id)a3;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setInitialSemaphoreValue:(int)a3;
@end

@implementation BWBackPressureNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWBackPressureNode)initWithNumberOfInputsAndOutputs:(unsigned int)a3 initialSemaphoreValue:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = BWBackPressureNode;
  v6 = [(BWNode *)&v12 init];
  if (v6)
  {
    if (a4)
    {
      v6->_semaphore = dispatch_semaphore_create(a4);
    }

    v6->_initialSemaphoreValue = a4;
    v6->_numberOfInputs = a3;
    v6->_presentationTimestampLock._os_unfair_lock_opaque = 0;
    v6->_receivedPresentationTimestampByInput = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6->_numberOfInputs];
    if (a3)
    {
      v7 = 0;
      v8 = a3;
      do
      {
        v9 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v6 index:v7];
        [(BWNodeInput *)v9 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
        [(BWNodeInput *)v9 setPassthroughMode:1];
        [(BWNode *)v6 addInput:v9];

        v10 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
        [(BWNodeOutput *)v10 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
        [(BWNodeOutput *)v10 setPassthroughMode:1];
        [(BWNodeOutput *)v10 setIndexOfInputWhichDrivesThisOutput:v7];
        [(BWNode *)v6 addOutput:v10];

        -[NSMutableArray setObject:atIndexedSubscript:](v6->_receivedPresentationTimestampByInput, "setObject:atIndexedSubscript:", [MEMORY[0x1E695DF70] array], v7++);
      }

      while (v8 != v7);
    }

    v6->_limitedGMErrorLogger = [[BWLimitedGMErrorLogger alloc] initWithName:@"Back Pressure" maxLoggingCount:10];
    v6->_stateLock._os_unfair_lock_opaque = 0;
    [(BWNode *)v6 setSupportsConcurrentLiveInputCallbacks:1];
    [(BWNode *)v6 setSupportsLiveReconfiguration:1];
    [(BWNode *)v6 setSupportsPrepareWhileRunning:1];
  }

  return v6;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_presentationTimestampLock);

  os_unfair_lock_unlock(&self->_presentationTimestampLock);
  v3.receiver = self;
  v3.super_class = BWBackPressureNode;
  [(BWNode *)&v3 dealloc];
}

- (void)setInitialSemaphoreValue:(int)a3
{
  if (!a3)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = @"Initial semaphore value must be non-zero";
LABEL_8:
    objc_exception_throw([v5 exceptionWithName:v6 reason:v7 userInfo:0]);
  }

  v4 = a3;
  if (self->_semaphore)
  {
    if (self->_initialSemaphoreValue != a3)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D930];
      v7 = @"Back pressure node doesn't support changing initial semaphore value";
      goto LABEL_8;
    }
  }

  else
  {
    self->_semaphore = dispatch_semaphore_create(a3);
    self->_initialSemaphoreValue = v4;
  }
}

- (void)_setSemaphore:(id)a3
{
  semaphore = self->_semaphore;
  if (semaphore != a3)
  {

    self->_semaphore = a3;
  }
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs", a3), "objectAtIndexedSubscript:", [a4 index]);
  v6 = [a4 format];

  [v5 setFormat:v6];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (!self->_semaphore)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Initial semaphore value must be set before format resolution" userInfo:0]);
  }

  v2.receiver = self;
  v2.super_class = BWBackPressureNode;
  [(BWNode *)&v2 prepareForCurrentConfigurationToBecomeLive];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs", a3, a4), "objectAtIndexedSubscript:", [a5 index]);

  [v5 makeConfiguredFormatLive];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  os_unfair_lock_lock(&self->_stateLock);
  numEODMessagesReceived = self->_numEODMessagesReceived;
  self->_numEODMessagesReceived = numEODMessagesReceived + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== numEODMessagesReceived + 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(BWNode *)self outputs];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) markEndOfLiveOutputForConfigurationID:a3];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }

    self->_numEODMessagesReceived = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = [a4 index];
  v7 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:v6];
  memset(&v12, 0, sizeof(v12));
  CMSampleBufferGetPresentationTimeStamp(&v12, a3);
  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
    v8 = CMGetAttachment(a3, @"FileWriterAction", 0);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID() && (CFEqual(v9, @"Stop") || CFEqual(v9, @"Pause") || CFEqual(v9, @"Flush") || CFEqual(v9, @"Terminate")))
      {
        self->_receivedFirstFrame = 0;
        [(BWNodeBackPressureSource *)self->_backPressureSourceNode setFirstFrameProcessed:0];
      }
    }
  }

  else
  {
    v11 = v12;
    [(BWBackPressureNode *)self _handleUpdatedPresentationTimestamp:&v11 forIndex:v6];
  }

  [v7 emitSampleBuffer:a3];
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  v6 = [a4 index];
  v7 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:v6];
  if (([objc_msgSend(a3 "backPressureSemaphoresToIgnore")] & 1) == 0)
  {
    v10 = 0uLL;
    v11 = 0;
    if (a3)
    {
      [a3 pts];
    }

    v8 = v10;
    v9 = v11;
    [(BWBackPressureNode *)self _handleUpdatedPresentationTimestamp:&v8 forIndex:v6];
  }

  [v7 emitDroppedSample:a3];
}

- (void)_handleUpdatedPresentationTimestamp:(id *)a3 forIndex:(unint64_t)a4
{
  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  if ((a3->var2 & 1) == 0)
  {
    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:0 errorString:@"Backpressure received unexpected invalid PTS"];
  }

  v8 = 152;
  os_unfair_lock_lock(&self->_presentationTimestampLock);
  MEMORY[0x1EEE9AC00]();
  v10 = v26 - v9;
  numberOfInputs = self->_numberOfInputs;
  v12 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
  if (!numberOfInputs)
  {
    goto LABEL_17;
  }

  v26[1] = v26;
  v27 = 152;
  v13 = 0;
  v14 = 0;
  do
  {
    *&v10[4 * v13] = -1;
    if (v13 != a4)
    {
      v15 = [*(&self->super.super.isa + v12[235]) objectAtIndexedSubscript:v13];
      if ([v15 count])
      {
        v16 = v12;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          [objc_msgSend(v15 objectAtIndexedSubscript:{v17), "doubleValue"}];
          if (vabdd_f64(v19, Seconds) < 0.00001)
          {
            break;
          }

          v17 = ++v18;
          if ([v15 count] <= v18)
          {
            v20 = 0;
            goto LABEL_13;
          }
        }

        *&v10[4 * v13] = v18;
        v20 = (v18 & 0x80000000) == 0;
LABEL_13:
        v12 = v16;
      }

      else
      {
        v20 = 0;
      }

      v14 += v20;
      numberOfInputs = self->_numberOfInputs;
    }

    ++v13;
  }

  while (v13 < numberOfInputs);
  v8 = v27;
  if (v14 >= numberOfInputs - 1)
  {
    if (numberOfInputs)
    {
      for (i = 0; i < numberOfInputs; ++i)
      {
        v24 = *&v10[4 * i];
        if ((v24 & 0x80000000) == 0)
        {
          [objc_msgSend(*(&self->super.super.isa + v12[235]) objectAtIndexedSubscript:{i), "removeObjectAtIndex:", v24}];
          numberOfInputs = self->_numberOfInputs;
        }
      }
    }

    os_unfair_lock_unlock((self + v8));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__BWBackPressureNode__handleUpdatedPresentationTimestamp_forIndex___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    semaphoreSignalQueue = self->_semaphoreSignalQueue;
    if (semaphoreSignalQueue)
    {
      dispatch_async(semaphoreSignalQueue, block);
    }

    else
    {
      dispatch_semaphore_signal(self->_semaphore);
    }

    if (!self->_receivedFirstFrame)
    {
      self->_receivedFirstFrame = 1;
      [(BWNodeBackPressureSource *)self->_backPressureSourceNode setFirstFrameProcessed:1];
    }
  }

  else
  {
LABEL_17:
    v21 = v12[235];
    v22 = [*(&self->super.super.isa + v21) objectAtIndexedSubscript:a4];
    [v22 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", Seconds)}];
    [objc_msgSend(*(&self->super.super.isa + v21) objectAtIndexedSubscript:{a4), "count"}];
    os_unfair_lock_unlock((self + v8));
  }
}

@end