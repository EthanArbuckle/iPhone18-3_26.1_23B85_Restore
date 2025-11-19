@interface MTLGPUDebugIntersectionFunctionTable
- (MTLGPUDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 device:(id)a4 descriptor:(id)a5;
- (MTLGPUDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 device:(id)a4 descriptor:(id)a5 computePipelineState:(id)a6;
- (MTLGPUDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 device:(id)a4 descriptor:(id)a5 renderPipelineState:(id)a6 stage:(unint64_t)a7;
- (void)_initHandleBuffer;
- (void)_setupIdentifier;
- (void)dealloc;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFunction:(id)a3 atIndex:(unint64_t)a4;
- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4;
- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
@end

@implementation MTLGPUDebugIntersectionFunctionTable

- (MTLGPUDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 device:(id)a4 descriptor:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugIntersectionFunctionTable;
  v6 = [(MTLToolsResource *)&v8 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v6->_functionCount = [a5 functionCount];
    v6->_handleBuffer = [-[MTLToolsObject baseObject](v6->super.super.super._device "baseObject")];
    [(MTLGPUDebugIntersectionFunctionTable *)v6 _setupIdentifier];
    [(MTLGPUDebugIntersectionFunctionTable *)v6 _initHandleBuffer];
  }

  return v6;
}

- (MTLGPUDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 device:(id)a4 descriptor:(id)a5 computePipelineState:(id)a6
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugIntersectionFunctionTable;
  v8 = [(MTLToolsResource *)&v10 initWithBaseObject:a3 parent:a4];
  if (v8)
  {
    v8->_functionCount = [a5 functionCount];
    v8->_computePipelineState = a6;
    v8->_handleBuffer = [-[MTLToolsObject baseObject](v8->super.super.super._device "baseObject")];
    [(MTLGPUDebugIntersectionFunctionTable *)v8 _setupIdentifier];
    [(MTLGPUDebugIntersectionFunctionTable *)v8 _initHandleBuffer];
  }

  return v8;
}

- (MTLGPUDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 device:(id)a4 descriptor:(id)a5 renderPipelineState:(id)a6 stage:(unint64_t)a7
{
  v12.receiver = self;
  v12.super_class = MTLGPUDebugIntersectionFunctionTable;
  v10 = [(MTLToolsResource *)&v12 initWithBaseObject:a3 parent:a4];
  if (v10)
  {
    v10->_functionCount = [a5 functionCount];
    v10->_renderPipelineState = a6;
    v10->_handleBuffer = [-[MTLToolsObject baseObject](v10->super.super.super._device "baseObject")];
    v10->_stage = a7;
    [(MTLGPUDebugIntersectionFunctionTable *)v10 _setupIdentifier];
    [(MTLGPUDebugIntersectionFunctionTable *)v10 _initHandleBuffer];
  }

  return v10;
}

- (void)_initHandleBuffer
{
  v3 = 0;
  for (i = 0; i != 31; ++i)
  {
    *([(MTLBuffer *)self->_handleBuffer contents]+ 8 * i) = 0;
    [(MTLToolsObject *)self->super.super.super._baseObject setBuffer:self->_handleBuffer offset:v3 atIndex:i];
    v3 += 8;
  }
}

- (void)_setupIdentifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setDataType:116];
  [v3 setIndex:0];
  v4 = [(MTLToolsObject *)self->super.super.super._device originalObject];
  v8[0] = v3;
  v5 = [v4 newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];

  v6 = [-[MTLToolsObject originalObject](self->super.super.super._device "originalObject")];
  [v5 setArgumentBuffer:v6 offset:0];
  [v5 setIntersectionFunctionTable:-[MTLToolsObject originalObject](self atIndex:{"originalObject"), 0}];

  self->_gpuIdentifier = *[v6 contents];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4
{
  [a3 useResourceInternal:self->super.super.super._baseObject usage:?];
  handleBuffer = self->_handleBuffer;

  [a3 useResourceInternal:handleBuffer usage:a4];
}

- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  v5 = *&a5.var1;
  var1 = a5.var0.var1;
  [a3 useResourceInternal:self->super.super.super._baseObject usage:? stages:?];
  handleBuffer = self->_handleBuffer;

  [a3 useResourceInternal:handleBuffer usage:a4 stages:{var1, v5}];
}

- (void)setFunction:(id)a3 atIndex:(unint64_t)a4
{
  if (a3)
  {
    baseObject = self->super.super.super._baseObject;
    v6 = [a3 baseObject];

    [(MTLToolsObject *)baseObject setFunction:v6 atIndex:a4];
  }
}

- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugIntersectionFunctionTable *)self setFunction:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v7 = [a3 handleForOffset:a4];
  *([(MTLBuffer *)self->_handleBuffer contents]+ 8 * a5) = v7;
  baseObject = self->super.super.super._baseObject;
  handleBuffer = self->_handleBuffer;

  [(MTLToolsObject *)baseObject setBuffer:handleBuffer offset:8 * a5 atIndex:a5];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    for (i = 0; i != length; ++i)
    {
      [(MTLGPUDebugIntersectionFunctionTable *)self setBuffer:a3[i] offset:a4[i] atIndex:i];
    }
  }
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [a3 gpuResourceID];
  *([(MTLBuffer *)self->_handleBuffer contents]+ 8 * a4) = v6;
  baseObject = self->super.super.super._baseObject;
  handleBuffer = self->_handleBuffer;

  [(MTLToolsObject *)baseObject setBuffer:handleBuffer offset:8 * a4 atIndex:a4];
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLGPUDebugIntersectionFunctionTable *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugIntersectionFunctionTable;
  [(MTLToolsIntersectionFunctionTable *)&v3 dealloc];
}

@end