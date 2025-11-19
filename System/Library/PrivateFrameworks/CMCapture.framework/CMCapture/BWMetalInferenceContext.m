@interface BWMetalInferenceContext
- (BWMetalInferenceContext)initWithScheduler:(id)a3 priority:(unsigned int)a4;
- (void)dealloc;
@end

@implementation BWMetalInferenceContext

- (BWMetalInferenceContext)initWithScheduler:(id)a3 priority:(unsigned int)a4
{
  v11.receiver = self;
  v11.super_class = BWMetalInferenceContext;
  v6 = [(BWMetalInferenceContext *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6991778] metalDevice];
    v6->_device = v7;
    v8 = [(MTLDevice *)v7 newCommandQueue];
    v6->_commandQueue = v8;
    v6->_commandQueueSPI = v8;
    if (a3)
    {
      -[MTLCommandQueue setSubmissionQueue:](v8, "setSubmissionQueue:", [a3 metalSubmissionQueue]);
      -[MTLCommandQueueSPI setCompletionQueue:](v6->_commandQueueSPI, "setCompletionQueue:", [a3 metalCompletionQueue]);
    }

    if (a4 - 13 >= 2 && a4)
    {
      if (a4 == 39)
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