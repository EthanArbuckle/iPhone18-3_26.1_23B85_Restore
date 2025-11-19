@interface MTLGPUDebugVisibleFunctionTable
- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)a3 descriptor:(id)a4 computePipeline:(id)a5;
- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)a3 descriptor:(id)a4 device:(id)a5;
- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)a3 descriptor:(id)a4 renderPipeline:(id)a5 stage:(unint64_t)a6;
- (void)_setupCommon;
- (void)dealloc;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4;
- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5;
@end

@implementation MTLGPUDebugVisibleFunctionTable

- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)a3 descriptor:(id)a4 computePipeline:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugVisibleFunctionTable;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:a3 parent:a5];
  [(MTLGPUDebugVisibleFunctionTable *)v5 _setupCommon];
  return v5;
}

- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)a3 descriptor:(id)a4 renderPipeline:(id)a5 stage:(unint64_t)a6
{
  v9.receiver = self;
  v9.super_class = MTLGPUDebugVisibleFunctionTable;
  v7 = [(MTLToolsResource *)&v9 initWithBaseObject:a3 parent:a5];
  [(MTLGPUDebugVisibleFunctionTable *)v7 _setupCommon];
  v7->_stage = a6;
  return v7;
}

- (MTLGPUDebugVisibleFunctionTable)initWithVisibleFunctionTable:(id)a3 descriptor:(id)a4 device:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugVisibleFunctionTable;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:a3 parent:a5];
  [(MTLGPUDebugVisibleFunctionTable *)v5 _setupCommon];
  return v5;
}

- (void)_setupCommon
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setDataType:115];
  [v3 setIndex:0];
  v4 = [(MTLToolsObject *)self->super.super.super._device originalObject];
  v8[0] = v3;
  v5 = [v4 newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];

  v6 = [-[MTLToolsObject originalObject](self->super.super.super._device "originalObject")];
  [v5 setArgumentBuffer:v6 offset:0];
  [v5 setVisibleFunctionTable:-[MTLToolsObject originalObject](self atIndex:{"originalObject"), 0}];

  self->_gpuIdentifier = *[v6 contents];
  self->_handleBuffer = [(MTLToolsDevice *)self->super.super.super._device newInternalBufferWithLength:248 options:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v9 = [a3 handleForOffset:a4];
  *([(MTLBuffer *)self->_handleBuffer contents]+ 8 * a5) = v9;
  baseObject = self->super.super.super._baseObject;

  [(MTLToolsObject *)baseObject setBuffer:a3 offset:a4 atIndex:a5];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    v10 = 0;
    v11 = 1;
    do
    {
      [(MTLGPUDebugVisibleFunctionTable *)self setBuffer:a3[v10] offset:a4[v10] atIndex:v10 + location];
      v10 = v11;
    }

    while (length > v11++);
  }
}

- (void)useWithComputeEncoder:(id)a3 usage:(unint64_t)a4
{
  [a3 useResourceInternal:self->_handleBuffer usage:?];
  baseObject = self->super.super.super._baseObject;

  [a3 useResourceInternal:baseObject usage:a4];
}

- (void)useWithRenderEncoder:(id)a3 usage:(unint64_t)a4 stages:(optional<unsigned long>)a5
{
  v5 = *&a5.var1;
  var1 = a5.var0.var1;
  [a3 useResourceInternal:self->_handleBuffer usage:? stages:?];
  baseObject = self->super.super.super._baseObject;

  [a3 useResourceInternal:baseObject usage:a4 stages:{var1, v5}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugVisibleFunctionTable;
  [(MTLToolsResource *)&v3 dealloc];
}

@end