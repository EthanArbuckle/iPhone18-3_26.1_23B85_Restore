@interface MTL4DebugMachineLearningCommandEncoder
- (MTL4DebugMachineLearningCommandEncoder)initWithMLCommandEncoder:(id)a3 commandBuffer:(id)a4;
- (id)commandBuffer;
- (void)dealloc;
- (void)dispatchNetworkWithIntermediatesHeap:(id)a3;
- (void)endEncoding;
- (void)setArgumentTable:(id)a3;
- (void)setPipelineState:(id)a3;
@end

@implementation MTL4DebugMachineLearningCommandEncoder

- (MTL4DebugMachineLearningCommandEncoder)initWithMLCommandEncoder:(id)a3 commandBuffer:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTL4DebugMachineLearningCommandEncoder;
  v6 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v6)
  {
    v6->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:a3 device:v6->super.super.super._device commandBuffer:a4 encoderStageMask:0x40000000];
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

- (void)setArgumentTable:(id)a3
{
  if (!a3)
  {
    [MTL4DebugMachineLearningCommandEncoder setArgumentTable:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTL4DebugMachineLearningCommandEncoder setArgumentTable:];
  }

  self->_currentArgumentTable = a3;
  v5.receiver = self;
  v5.super_class = MTL4DebugMachineLearningCommandEncoder;
  [(MTL4ToolsMachineLearningCommandEncoder *)&v5 setArgumentTable:a3];
}

- (void)setPipelineState:(id)a3
{
  if (!a3)
  {
    [MTL4DebugMachineLearningCommandEncoder setPipelineState:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTL4DebugMachineLearningCommandEncoder setPipelineState:];
  }

  self->_currentPipelineState = a3;
  v5.receiver = self;
  v5.super_class = MTL4DebugMachineLearningCommandEncoder;
  [(MTL4ToolsMachineLearningCommandEncoder *)&v5 setPipelineState:a3];
}

- (void)dispatchNetworkWithIntermediatesHeap:(id)a3
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

  v5 = [(MTL4ToolsMachineLearningPipelineState *)self->_currentPipelineState intermediatesHeapSize];
  if (!a3 && v5)
  {
    [MTL4DebugMachineLearningCommandEncoder dispatchNetworkWithIntermediatesHeap:];
  }

  v6 = [a3 size];
  v7 = v6 - [a3 usedSize];
  if (v7 < [(MTL4ToolsMachineLearningPipelineState *)self->_currentPipelineState intermediatesHeapSize])
  {
    [(MTL4DebugMachineLearningCommandEncoder *)a3 dispatchNetworkWithIntermediatesHeap:?];
  }

  if ([a3 type] != 1)
  {
    [MTL4DebugMachineLearningCommandEncoder dispatchNetworkWithIntermediatesHeap:];
  }

  v8 = [(MTLToolsObject *)self->_currentArgumentTable originalObject];
  v9 = [v8 bufferBindingCount];
  std::vector<MTLResourceID>::vector[abi:ne200100](__p, v9);
  [v8 getBufferBindings:__p[0] bindingCount:v9];
  v10 = [(MTL4ToolsMachineLearningPipelineState *)self->_currentPipelineState reflection];
  v11 = [-[MTL4MachineLearningPipelineReflection bindings](v10 "bindings")];
  if (v9 < v11)
  {
    MTLReportFailure();
  }

  if (v9 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = [-[MTL4MachineLearningPipelineReflection bindings](v10 bindings];
      v15 = *(__p[0] + i);
      [v14 dimensions];
      if (_MTLTensorElementCount())
      {
        if (!v15)
        {
          v16 = i;
          MTLReportFailure();
        }

        [objc_msgSend(objc_msgSend(v8 device];
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
  [(MTL4ToolsMachineLearningCommandEncoder *)&v17 dispatchNetworkWithIntermediatesHeap:a3, v16];
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