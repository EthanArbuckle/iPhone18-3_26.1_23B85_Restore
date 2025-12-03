@interface MTLGPUDebugVisibleFunctionTable
- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)table descriptor:(id)descriptor computePipeline:(id)pipeline;
- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)table descriptor:(id)descriptor device:(id)device;
- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)table descriptor:(id)descriptor renderPipeline:(id)pipeline stage:(unint64_t)stage;
- (void)_setupCommon;
- (void)dealloc;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage;
- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
@end

@implementation MTLGPUDebugVisibleFunctionTable

- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)table descriptor:(id)descriptor computePipeline:(id)pipeline
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugVisibleFunctionTable;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:table parent:pipeline];
  [(MTLGPUDebugVisibleFunctionTable *)v5 _setupCommon];
  return v5;
}

- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)table descriptor:(id)descriptor renderPipeline:(id)pipeline stage:(unint64_t)stage
{
  v9.receiver = self;
  v9.super_class = MTLGPUDebugVisibleFunctionTable;
  v7 = [(MTLToolsResource *)&v9 initWithBaseObject:table parent:pipeline];
  [(MTLGPUDebugVisibleFunctionTable *)v7 _setupCommon];
  v7->_stage = stage;
  return v7;
}

- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)table descriptor:(id)descriptor device:(id)device
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugVisibleFunctionTable;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:table parent:device];
  [(MTLGPUDebugVisibleFunctionTable *)v5 _setupCommon];
  return v5;
}

- (void)_setupCommon
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setDataType:115];
  [v3 setIndex:0];
  originalObject = [(MTLToolsObject *)self->super.super.super._device originalObject];
  v8[0] = v3;
  v5 = [originalObject newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];

  v6 = [-[MTLToolsObject originalObject](self->super.super.super._device "originalObject")];
  [v5 setArgumentBuffer:v6 offset:0];
  [v5 setVisibleFunctionTable:-[MTLToolsObject originalObject](self atIndex:{"originalObject"), 0}];

  self->_gpuIdentifier = *[v6 contents];
  self->_handleBuffer = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:248 options:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v9 = [buffer handleForOffset:offset];
  *([(MTLBuffer *)self->_handleBuffer contents]+ 8 * index) = v9;
  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setBuffer:buffer offset:offset atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v10 = 0;
    v11 = 1;
    do
    {
      [(MTLGPUDebugVisibleFunctionTable *)self setBuffer:buffers[v10] offset:offsets[v10] atIndex:v10 + location];
      v10 = v11;
    }

    while (length > v11++);
  }
}

- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage
{
  [encoder useResourceInternal:self->_handleBuffer usage:?];
  baseObject = self->super.super.super._baseObject;

  [encoder useResourceInternal:baseObject usage:usage];
}

- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  v5 = *&stages.var1;
  var1 = stages.var0.var1;
  [encoder useResourceInternal:self->_handleBuffer usage:? stages:?];
  baseObject = self->super.super.super._baseObject;

  [encoder useResourceInternal:baseObject usage:usage stages:{var1, v5}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugVisibleFunctionTable;
  [(MTLToolsResource *)&v3 dealloc];
}

@end