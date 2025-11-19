@interface BWStillImageProcessorControllerOutputRouter
- (BWStillImageProcessorControllerOutputRouter)initWithOutputSampleBufferRouter:(id)a3 name:(id)a4;
- (NSArray)bypassedProcessorsTypes;
- (void)addBypassedProcessorType:(unint64_t)a3;
- (void)dealloc;
@end

@implementation BWStillImageProcessorControllerOutputRouter

- (BWStillImageProcessorControllerOutputRouter)initWithOutputSampleBufferRouter:(id)a3 name:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWStillImageProcessorControllerOutputRouter;
  v6 = [(BWStillImageProcessorControllerOutputRouter *)&v8 init];
  if (v6)
  {
    v6->_outputSampleBufferRouter = [a3 copy];
    v6->_name = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageProcessorControllerOutputRouter;
  [(BWStillImageProcessorControllerOutputRouter *)&v3 dealloc];
}

- (void)addBypassedProcessorType:(unint64_t)a3
{
  bypassedProcessorTypes = self->_bypassedProcessorTypes;
  if (!bypassedProcessorTypes)
  {
    bypassedProcessorTypes = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_bypassedProcessorTypes = bypassedProcessorTypes;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];

  [(NSMutableArray *)bypassedProcessorTypes addObject:v6];
}

- (NSArray)bypassedProcessorsTypes
{
  v2 = [(NSMutableArray *)self->_bypassedProcessorTypes copy];

  return v2;
}

@end