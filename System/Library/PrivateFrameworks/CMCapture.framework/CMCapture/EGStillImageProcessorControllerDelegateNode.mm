@interface EGStillImageProcessorControllerDelegateNode
+ (id)newProcessorControllerInput;
+ (id)newSbufInput;
+ (id)newSbufInputWithIndex:(int)index;
+ (id)newSbufOutput;
+ (id)newSbufOutputWithIndex:(int)index;
- (EGStillImageProcessorControllerDelegateNode)initWithName:(id)name delegate:(id)delegate;
- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type;
- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key;
- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key pixelFormat:(unsigned int)format dimensions:(id)dimensions;
- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key pixelFormat:(unsigned int)format dimensions:(id)dimensions dimensionAlignment:(int)alignment;
- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type dimensions:(id)dimensions;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
- (id)processorController:(id)controller newInferencesForProcessorInput:(id)input;
- (id)processorController:(id)controller newInferencesForProcessorInput:(id)input inferenceInputBufferType:(unint64_t)type;
- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err;
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

+ (id)newSbufInputWithIndex:(int)index
{
  v3 = *&index;
  v4 = [EGInput alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v3];

  return [(EGInput *)v4 initWithName:v5];
}

+ (id)newSbufOutput
{
  v2 = [EGStillImageOutput alloc];

  return [(EGOutput *)v2 initWithName:@"sbuf"];
}

+ (id)newSbufOutputWithIndex:(int)index
{
  v3 = *&index;
  v4 = [EGStillImageOutput alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sbuf%d", v3];

  return [(EGOutput *)v4 initWithName:v5];
}

- (EGStillImageProcessorControllerDelegateNode)initWithName:(id)name delegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = EGStillImageProcessorControllerDelegateNode;
  v5 = [(EGNode *)&v8 initWithName:name];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processingCoordinatorDelegate, delegate);
  }

  return v6;
}

- (void)processorController:(id)controller didFinishProcessingInput:(id)input err:(int)err
{
  if (err)
  {
    v5 = *&err;
    v7 = EGStillImageGraphManagerForGraphElement(self);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered err:%d in %s", v5, "-[EGStillImageProcessorControllerDelegateNode processorController:didFinishProcessingInput:err:]"];

    [v7 didEncounterError:v5 description:v8 element:self];
  }
}

- (id)processorController:(id)controller newInferencesForProcessorInput:(id)input
{
  Weak = objc_loadWeak(&self->_processingCoordinatorDelegate);

  return [Weak processorController:controller newInferencesForProcessorInput:input];
}

- (id)processorController:(id)controller newInferencesForProcessorInput:(id)input inferenceInputBufferType:(unint64_t)type
{
  Weak = objc_loadWeak(&self->_processingCoordinatorDelegate);

  return [Weak processorController:controller newInferencesForProcessorInput:input inferenceInputBufferType:type];
}

- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_processingCoordinatorDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained processorController:controller newOutputPixelBufferForProcessorInput:input type:type];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type dimensions:(id)dimensions
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

- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key
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

- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key pixelFormat:(unsigned int)format dimensions:(id)dimensions
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

- (__CVBuffer)processorController:(id)controller newOutputPixelBufferForProcessorInput:(id)input type:(unint64_t)type attachedMediaKey:(id)key pixelFormat:(unsigned int)format dimensions:(id)dimensions dimensionAlignment:(int)alignment
{
  OUTLINED_FUNCTION_1_61();
  WeakRetained = objc_loadWeakRetained((v9 + 104));
  if (WeakRetained)
  {
    LODWORD(v13) = alignment;
    v11 = [OUTLINED_FUNCTION_0_50() processorController:v13 newOutputPixelBufferForProcessorInput:? type:? attachedMediaKey:? pixelFormat:? dimensions:? dimensionAlignment:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  WeakRetained = objc_loadWeakRetained(&self->_processingCoordinatorDelegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained preparedOutputPixelBufferPoolForAttachedMediaKey:key format:format];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end