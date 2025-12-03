@interface BWMetalInferenceContext
- (BWMetalInferenceContext)initWithScheduler:(id)scheduler priority:(unsigned int)priority;
- (void)dealloc;
@end

@implementation BWMetalInferenceContext

- (BWMetalInferenceContext)initWithScheduler:(id)scheduler priority:(unsigned int)priority
{
  v11.receiver = self;
  v11.super_class = BWMetalInferenceContext;
  v6 = [(BWMetalInferenceContext *)&v11 init];
  if (v6)
  {
    metalDevice = [MEMORY[0x1E6991778] metalDevice];
    v6->_device = metalDevice;
    newCommandQueue = [(MTLDevice *)metalDevice newCommandQueue];
    v6->_commandQueue = newCommandQueue;
    v6->_commandQueueSPI = newCommandQueue;
    if (scheduler)
    {
      -[MTLCommandQueue setSubmissionQueue:](newCommandQueue, "setSubmissionQueue:", [scheduler metalSubmissionQueue]);
      -[MTLCommandQueueSPI setCompletionQueue:](v6->_commandQueueSPI, "setCompletionQueue:", [scheduler metalCompletionQueue]);
    }

    if (priority - 13 >= 2 && priority)
    {
      if (priority == 39)
      {
        v9 = 2;
      }

      else
      {
        v9 = 4;
      }
    }

    else
    {
      v9 = 1;
    }

    [(MTLCommandQueueSPI *)v6->_commandQueueSPI setGPUPriority:v9];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMetalInferenceContext;
  [(BWMetalInferenceContext *)&v3 dealloc];
}

@end