@interface MTL4DebugMachineLearningCommandEncoder
- (MTL4DebugMachineLearningCommandEncoder)initWithMLCommandEncoder:(id)encoder commandBuffer:(id)buffer;
- (id)commandBuffer;
- (void)dealloc;
- (void)dispatchNetworkWithIntermediatesHeap:(id)heap;
- (void)endEncoding;
- (void)setArgumentTable:(id)table;
- (void)setPipelineState:(id)state;
@end

@implementation MTL4DebugMachineLearningCommandEncoder

- (MTL4DebugMachineLearningCommandEncoder)initWithMLCommandEncoder:(id)encoder commandBuffer:(id)buffer
{
  v8.receiver = self;
  v8.super_class = MTL4DebugMachineLearningCommandEncoder;
  v6 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v6)
  {
    v6->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:encoder device:v6->super.super.super._device commandBuffer:buffer encoderStageMask:0x40000000];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4DebugMachineLearningCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 dealloc];
}

- (id)commandBuffer
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugMachineLearningCommandEncoder;
  return [(objc_super *)v5 commandBuffer];
}

- (void)setArgumentTable:(id)table
{
  if (!table)
  {
    [MTL4DebugMachineLearningCommandEncoder setArgumentTable:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTL4DebugMachineLearningCommandEncoder setArgumentTable:];
  }

  self->_currentArgumentTable = table;
  v5.receiver = self;
  v5.super_class = MTL4DebugMachineLearningCommandEncoder;
  [(MTL4ToolsMachineLearningCommandEncoder *)&v5 setArgumentTable:table];
}

- (void)setPipelineState:(id)state
{
  if (!state)
  {
    [MTL4DebugMachineLearningCommandEncoder setPipelineState:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTL4DebugMachineLearningCommandEncoder setPipelineState:];
  }

  self->_currentPipelineState = state;
  v5.receiver = self;
  v5.super_class = MTL4DebugMachineLearningCommandEncoder;
  [(MTL4ToolsMachineLearningCommandEncoder *)&v5 setPipelineState:state];
}

- (void)dispatchNetworkWithIntermediatesHeap:(id)heap
{
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    [MTL4DebugMachineLearningCommandEncoder dispatchNetworkWithIntermediatesHeap:];
  }

  if (!self->_currentPipelineState)
  {
    [MTL4DebugMachineLearningCommandEncoder dispatchNetworkWithIntermediatesHeap:];
  }

  if (!self->_currentArgumentTable)
  {
    [MTL4DebugMachineLearningCommandEncoder dispatchNetworkWithIntermediatesHeap:];
  }

  intermediatesHeapSize = [(MTL4ToolsMachineLearningPipelineState *)self->_currentPipelineState intermediatesHeapSize];
  if (!heap && intermediatesHeapSize)
  {
    [MTL4DebugMachineLearningCommandEncoder dispatchNetworkWithIntermediatesHeap:];
  }

  v6 = [heap size];
  v7 = v6 - [heap usedSize];
  if (v7 < [(MTL4ToolsMachineLearningPipelineState *)self->_currentPipelineState intermediatesHeapSize])
  {
    [(MTL4DebugMachineLearningCommandEncoder *)heap dispatchNetworkWithIntermediatesHeap:?];
  }

  if ([heap type] != 1)
  {
    [MTL4DebugMachineLearningCommandEncoder dispatchNetworkWithIntermediatesHeap:];
  }

  originalObject = [(MTLToolsObject *)self->_currentArgumentTable originalObject];
  bufferBindingCount = [originalObject bufferBindingCount];
  std::vector<MTLResourceID>::vector[abi:ne200100](__p, bufferBindingCount);
  [originalObject getBufferBindings:__p[0] bindingCount:bufferBindingCount];
  reflection = [(MTL4ToolsMachineLearningPipelineState *)self->_currentPipelineState reflection];
  v11 = [-[MTL4MachineLearningPipelineReflection bindings](reflection "bindings")];
  if (bufferBindingCount < v11)
  {
    MTLReportFailure();
  }

  if (bufferBindingCount >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = bufferBindingCount;
  }

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      bindings = [-[MTL4MachineLearningPipelineReflection bindings](reflection bindings];
      v15 = *(__p[0] + i);
      [bindings dimensions];
      if (_MTLTensorElementCount())
      {
        if (!v15)
        {
          v16 = i;
          MTLReportFailure();
        }

        [objc_msgSend(objc_msgSend(originalObject device];
        if ((_MTLTensorExtentsAreEqual() & 1) == 0)
        {
          v16 = i;
          MTLReportFailure();
        }
      }
    }
  }

  v17.receiver = self;
  v17.super_class = MTL4DebugMachineLearningCommandEncoder;
  [(MTL4ToolsMachineLearningCommandEncoder *)&v17 dispatchNetworkWithIntermediatesHeap:heap, v16];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)endEncoding
{
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder endEncodingPreamble];
  v3.receiver = self;
  v3.super_class = MTL4DebugMachineLearningCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
}

- (uint64_t)dispatchNetworkWithIntermediatesHeap:(void *)a1 .cold.5(void *a1, id *a2)
{
  [a1 size];
  [a1 usedSize];
  [*a2 intermediatesHeapSize];
  return MTLReportFailure();
}

@end