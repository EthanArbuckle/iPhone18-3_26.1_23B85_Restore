@interface EGStillImageProcessorControllerDelegateNode
+ (id)newProcessorControllerInput;
+ (id)newSbufInput;
+ (id)newSbufInputWithIndex:(int)a3;
+ (id)newSbufOutput;
+ (id)newSbufOutputWithIndex:(int)a3;
- (EGStillImageProcessorControllerDelegateNode)initWithName:(id)a3 delegate:(id)a4;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8 dimensionAlignment:(int)a9;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 dimensions:(id)a6;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)a3 format:(id)a4;
- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4;
- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4 inferenceInputBufferType:(unint64_t)a5;
- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5;
@end

@implementation EGStillImageProcessorControllerDelegateNode

+ (id)newProcessorControllerInput
{
  v2 = [EGInput alloc];

  return [(EGInput *)v2 initWithName:@"processorController"];
}

+ (id)newSbufInput
{
  v2 = [EGInput alloc];

  return [(EGInput *)v2 initWithName:@"sbuf"];
}

+ (id)newSbufInputWithIndex:(int)a3
{
  v3 = *&a3;
  v4 = [EGInput alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v3];

  return [(EGInput *)v4 initWithName:v5];
}

+ (id)newSbufOutput
{
  v2 = [EGStillImageOutput alloc];

  return [(EGOutput *)v2 initWithName:@"sbuf"];
}

+ (id)newSbufOutputWithIndex:(int)a3
{
  v3 = *&a3;
  v4 = [EGStillImageOutput alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v3];

  return [(EGOutput *)v4 initWithName:v5];
}

- (EGStillImageProcessorControllerDelegateNode)initWithName:(id)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = EGStillImageProcessorControllerDelegateNode;
  v5 = [(EGNode *)&v8 initWithName:a3];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processingCoordinatorDelegate, a4);
  }

  return v6;
}

- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5
{
  if (a5)
  {
    v5 = *&a5;
    v7 = EGStillImageGraphManagerForGraphElement(self);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v5, "-[EGStillImageProcessorControllerDelegateNode processorController:didFinishProcessingInput:err:]"];

    [v7 didEncounterError:v5 description:v8 element:self];
  }
}

- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4
{
  Weak = objc_loadWeak(&self->_processingCoordinatorDelegate);

  return [Weak processorController:a3 newInferencesForProcessorInput:a4];
}

- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4 inferenceInputBufferType:(unint64_t)a5
{
  Weak = objc_loadWeak(&self->_processingCoordinatorDelegate);

  return [Weak processorController:a3 newInferencesForProcessorInput:a4 inferenceInputBufferType:a5];
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_processingCoordinatorDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained processorController:a3 newOutputPixelBufferForProcessorInput:a4 type:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 dimensions:(id)a6
{
  OUTLINED_FUNCTION_3_46();
  WeakRetained = objc_loadWeakRetained((v6 + 104));
  if (WeakRetained)
  {
    v8 = [OUTLINED_FUNCTION_2_56() processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6
{
  OUTLINED_FUNCTION_3_46();
  WeakRetained = objc_loadWeakRetained((v6 + 104));
  if (WeakRetained)
  {
    v8 = [OUTLINED_FUNCTION_2_56() processorController:? newOutputPixelBufferForProcessorInput:? type:? attachedMediaKey:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8
{
  OUTLINED_FUNCTION_1_61();
  WeakRetained = objc_loadWeakRetained((v8 + 104));
  if (WeakRetained)
  {
    v10 = [OUTLINED_FUNCTION_0_50() processorController:? newOutputPixelBufferForProcessorInput:? type:? attachedMediaKey:? pixelFormat:? dimensions:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8 dimensionAlignment:(int)a9
{
  OUTLINED_FUNCTION_1_61();
  WeakRetained = objc_loadWeakRetained((v9 + 104));
  if (WeakRetained)
  {
    LODWORD(v13) = a9;
    v11 = [OUTLINED_FUNCTION_0_50() processorController:v13 newOutputPixelBufferForProcessorInput:? type:? attachedMediaKey:? pixelFormat:? dimensions:? dimensionAlignment:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)a3 format:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_processingCoordinatorDelegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained preparedOutputPixelBufferPoolForAttachedMediaKey:a3 format:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end