@interface MTLCountersComputeCommandEncoder
- (MTLCountersComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setImageBlockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setLabel:(id)label;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)waitForFence:(id)fence;
@end

@implementation MTLCountersComputeCommandEncoder

- (MTLCountersComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLCountersComputeCommandEncoder;
  v6 = [(MTLToolsComputeCommandEncoder *)&v8 initWithComputeCommandEncoder:encoder parent:buffer descriptor:descriptor];
  if (v6)
  {
    v6->_traceEncoder = [objc_msgSend(buffer "traceBuffer")];
    *(&v6->_APITimingEnabled + 4) = [objc_msgSend(buffer "device")];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCountersComputeCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (void)insertDebugSignpost:(id)signpost
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v9 insertDebugSignpost:signpost];
}

- (void)pushDebugGroup:(id)group
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v9 pushDebugGroup:group];
}

- (void)popDebugGroup
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v3 = mach_absolute_time();
  }

  else
  {
    v3 = 0;
  }

  self->_traceEncoder->super._timer = v3;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v4 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v6 = v4 - traceEncoder->super._timer;
  }

  else
  {
    v6 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v6;
  v7 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v7 popDebugGroup];
}

- (void)setLabel:(id)label
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v9 setLabel:label];
}

- (void)setComputePipelineState:(id)state
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v9 setComputePipelineState:state];
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v13 setBytes:bytes length:length atIndex:index];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v13 setBuffer:buffer offset:offset atIndex:index];
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 setBufferOffset:offset atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
  }

  else
  {
    v10 = 0;
  }

  self->_traceEncoder->super._timer = v10;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v13 = v11 - traceEncoder->super._timer;
  }

  else
  {
    v13 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v13;
  v14 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v14 setBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 setTexture:texture atIndex:index];
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v12 setTextures:textures withRange:location, length];
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 setSamplerState:state atIndex:index];
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v12 setSamplerStates:states withRange:location, length];
}

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  self->_traceEncoder->super._timer = v11;
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;
  [baseObject setSamplerState:state lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
  if (*(&self->_APITimingEnabled + 4))
  {
    v17 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v19 = v17 - traceEncoder->super._timer;
  }

  else
  {
    v19 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v19;
  v20 = self->_traceEncoder;
  *&v15 = clamp;
  *&v16 = maxClamp;

  [(MTLCountersTraceComputeCommandEncoder *)v20 setSamplerState:state lodMinClamp:index lodMaxClamp:v15 atIndex:v16];
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v12 = mach_absolute_time();
  }

  else
  {
    v12 = 0;
  }

  self->_traceEncoder->super._timer = v12;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v13 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v15 = v13 - traceEncoder->super._timer;
  }

  else
  {
    v15 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v15;
  v16 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v16 setSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:location, length];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 setThreadgroupMemoryLength:length atIndex:index];
}

- (void)setImageBlockWidth:(unint64_t)width height:(unint64_t)height
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setImageBlockWidth:width height:height];
}

- (void)setStageInRegion:(id *)region
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  baseObject = [(MTLToolsObject *)self baseObject];
  v7 = *&region->var0.var2;
  v13 = *&region->var0.var0;
  v14 = v7;
  v15 = *&region->var1.var1;
  [baseObject setStageInRegion:&v13];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;
  v12 = *&region->var0.var2;
  v13 = *&region->var0.var0;
  v14 = v12;
  v15 = *&region->var1.var1;
  [(MTLCountersTraceComputeCommandEncoder *)v11 setStageInRegion:&v13];
}

- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 setStageInRegionWithIndirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  baseObject = [(MTLToolsObject *)self baseObject];
  v15 = *&threadgroups->var0;
  var2 = threadgroups->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  [baseObject dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;
  v15 = *&threadgroups->var0;
  var2 = threadgroups->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  [(MTLCountersTraceComputeCommandEncoder *)v12 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  baseObject = [(MTLToolsObject *)self baseObject];
  v15 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  [baseObject dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerThreadgroup:&v15];
  if (*(&self->_APITimingEnabled + 4))
  {
    v11 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v13 = v11 - traceEncoder->super._timer;
  }

  else
  {
    v13 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v13;
  v14 = self->_traceEncoder;
  v15 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  [(MTLCountersTraceComputeCommandEncoder *)v14 dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerThreadgroup:&v15];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  baseObject = [(MTLToolsObject *)self baseObject];
  v15 = *&threads->var0;
  var2 = threads->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  [baseObject dispatchThreads:&v15 threadsPerThreadgroup:&v13];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;
  v15 = *&threads->var0;
  var2 = threads->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  [(MTLCountersTraceComputeCommandEncoder *)v12 dispatchThreads:&v15 threadsPerThreadgroup:&v13];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 dispatchThreadsWithIndirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)updateFence:(id)fence
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v9 updateFence:fence];
}

- (void)waitForFence:(id)fence
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v9 waitForFence:fence];
}

- (void)endEncoding
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v3 = mach_absolute_time();
  }

  else
  {
    v3 = 0;
  }

  self->_traceEncoder->super._timer = v3;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v4 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v6 = v4 - traceEncoder->super._timer;
  }

  else
  {
    v6 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v6;
  v7 = self->_traceEncoder;

  [(MTLCountersTraceCommandEncoder *)v7 endEncoding];
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 useResource:resource usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
  }

  else
  {
    v9 = 0;
  }

  self->_traceEncoder->super._timer = v9;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v10 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v12 = v10 - traceEncoder->super._timer;
  }

  else
  {
    v12 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v12;
  v13 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v13 useResources:resources count:count usage:usage];
}

- (void)useHeap:(id)heap
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v9 useHeap:heap];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 useHeaps:heaps count:count];
}

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v5 = mach_absolute_time();
  }

  else
  {
    v5 = 0;
  }

  self->_traceEncoder->super._timer = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v6 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v8 = v6 - traceEncoder->super._timer;
  }

  else
  {
    v8 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v8;
  v9 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v9 memoryBarrierWithScope:scope];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 memoryBarrierWithResources:resources count:count];
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 setVisibleFunctionTable:table atBufferIndex:index];
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v12 setVisibleFunctionTables:tables withBufferRange:location, length];
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  if (*(&self->_APITimingEnabled + 4))
  {
    v7 = mach_absolute_time();
  }

  else
  {
    v7 = 0;
  }

  self->_traceEncoder->super._timer = v7;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v10 = v8 - traceEncoder->super._timer;
  }

  else
  {
    v10 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v10;
  v11 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v11 setIntersectionFunctionTable:table atBufferIndex:index];
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (*(&self->_APITimingEnabled + 4))
  {
    v8 = mach_absolute_time();
  }

  else
  {
    v8 = 0;
  }

  self->_traceEncoder->super._timer = v8;
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (*(&self->_APITimingEnabled + 4))
  {
    v9 = mach_absolute_time();
    traceEncoder = self->_traceEncoder;
    v11 = v9 - traceEncoder->super._timer;
  }

  else
  {
    v11 = 0;
    traceEncoder = self->_traceEncoder;
  }

  traceEncoder->super._timer = v11;
  v12 = self->_traceEncoder;

  [(MTLCountersTraceComputeCommandEncoder *)v12 setIntersectionFunctionTables:tables withBufferRange:location, length];
}

@end