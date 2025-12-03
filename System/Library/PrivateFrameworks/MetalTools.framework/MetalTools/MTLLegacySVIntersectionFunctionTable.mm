@interface MTLLegacySVIntersectionFunctionTable
- (MTLLegacySVIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table device:(id)device descriptor:(id)descriptor;
- (MTLLegacySVIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table device:(id)device descriptor:(id)descriptor computePipelineState:(id)state;
- (MTLLegacySVIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table device:(id)device descriptor:(id)descriptor renderPipelineState:(id)state stage:(unint64_t)stage;
- (void)_initHandleBuffer;
- (void)_setupIdentifier;
- (void)dealloc;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFunction:(id)function atIndex:(unint64_t)index;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage;
- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages;
@end

@implementation MTLLegacySVIntersectionFunctionTable

- (MTLLegacySVIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table device:(id)device descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVIntersectionFunctionTable;
  v6 = [(MTLToolsResource *)&v8 initWithBaseObject:table parent:device];
  if (v6)
  {
    v6->_functionCount = [descriptor functionCount];
    v6->_handleBuffer = [-[MTLToolsObject baseObject](v6->super.super.super._device "baseObject")];
    [(MTLLegacySVIntersectionFunctionTable *)v6 _setupIdentifier];
    [(MTLLegacySVIntersectionFunctionTable *)v6 _initHandleBuffer];
  }

  return v6;
}

- (MTLLegacySVIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table device:(id)device descriptor:(id)descriptor computePipelineState:(id)state
{
  v10.receiver = self;
  v10.super_class = MTLLegacySVIntersectionFunctionTable;
  v8 = [(MTLToolsResource *)&v10 initWithBaseObject:table parent:device];
  if (v8)
  {
    v8->_functionCount = [descriptor functionCount];
    v8->_computePipelineState = state;
    v8->_handleBuffer = [-[MTLToolsObject baseObject](v8->super.super.super._device "baseObject")];
    [(MTLLegacySVIntersectionFunctionTable *)v8 _setupIdentifier];
    [(MTLLegacySVIntersectionFunctionTable *)v8 _initHandleBuffer];
  }

  return v8;
}

- (MTLLegacySVIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table device:(id)device descriptor:(id)descriptor renderPipelineState:(id)state stage:(unint64_t)stage
{
  v12.receiver = self;
  v12.super_class = MTLLegacySVIntersectionFunctionTable;
  v10 = [(MTLToolsResource *)&v12 initWithBaseObject:table parent:device];
  if (v10)
  {
    v10->_functionCount = [descriptor functionCount];
    v10->_renderPipelineState = state;
    v10->_handleBuffer = [-[MTLToolsObject baseObject](v10->super.super.super._device "baseObject")];
    v10->_stage = stage;
    [(MTLLegacySVIntersectionFunctionTable *)v10 _setupIdentifier];
    [(MTLLegacySVIntersectionFunctionTable *)v10 _initHandleBuffer];
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
  originalObject = [(MTLToolsObject *)self->super.super.super._device originalObject];
  v8[0] = v3;
  v5 = [originalObject newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];

  v6 = [-[MTLToolsObject originalObject](self->super.super.super._device "originalObject")];
  [v5 setArgumentBuffer:v6 offset:0];
  [v5 setIntersectionFunctionTable:-[MTLToolsObject originalObject](self atIndex:{"originalObject"), 0}];

  self->_gpuIdentifier = *[v6 contents];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)useWithComputeEncoder:(id)encoder usage:(unint64_t)usage
{
  [encoder useResourceInternal:self->super.super.super._baseObject usage:?];
  handleBuffer = self->_handleBuffer;

  [encoder useResourceInternal:handleBuffer usage:usage];
}

- (void)useWithRenderEncoder:(id)encoder usage:(unint64_t)usage stages:(optional<unsigned long>)stages
{
  v5 = *&stages.var1;
  var1 = stages.var0.var1;
  [encoder useResourceInternal:self->super.super.super._baseObject usage:? stages:?];
  handleBuffer = self->_handleBuffer;

  [encoder useResourceInternal:handleBuffer usage:usage stages:{var1, v5}];
}

- (void)setFunction:(id)function atIndex:(unint64_t)index
{
  if (function)
  {
    baseObject = self->super.super.super._baseObject;
    baseObject = [function baseObject];

    [(MTLToolsObject *)baseObject setFunction:baseObject atIndex:index];
  }
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *functions++;
      [(MTLLegacySVIntersectionFunctionTable *)self setFunction:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v7 = [buffer handleForOffset:offset];
  *([(MTLBuffer *)self->_handleBuffer contents]+ 8 * index) = v7;
  baseObject = self->super.super.super._baseObject;
  handleBuffer = self->_handleBuffer;

  [(MTLToolsObject *)baseObject setBuffer:handleBuffer offset:8 * index atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    for (i = 0; i != length; ++i)
    {
      [(MTLLegacySVIntersectionFunctionTable *)self setBuffer:buffers[i] offset:offsets[i] atIndex:i];
    }
  }
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  gpuResourceID = [table gpuResourceID];
  *([(MTLBuffer *)self->_handleBuffer contents]+ 8 * index) = gpuResourceID;
  baseObject = self->super.super.super._baseObject;
  handleBuffer = self->_handleBuffer;

  [(MTLToolsObject *)baseObject setBuffer:handleBuffer offset:8 * index atIndex:index];
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLLegacySVIntersectionFunctionTable *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVIntersectionFunctionTable;
  [(MTLToolsIntersectionFunctionTable *)&v3 dealloc];
}

@end