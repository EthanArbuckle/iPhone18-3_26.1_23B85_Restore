@interface MTLCountersCommandBuffer
- (MTLCountersCommandBuffer)initWithCommandBuffer:(id)a3 commandQueue:(id)a4 descriptor:(id)a5;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3;
- (id)renderCommandEncoderWithDescriptor:(id)a3;
- (id)resourceStateCommandEncoder;
- (id)resourceStateCommandEncoderWithDescriptor:(id)a3;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (void)addPurgedHeap:(id)a3;
- (void)addPurgedResource:(id)a3;
- (void)dealloc;
- (void)presentDrawable:(id)a3;
- (void)presentDrawable:(id)a3 atTime:(double)a4;
- (void)waitUntilCompleted;
- (void)waitUntilScheduled;
@end

@implementation MTLCountersCommandBuffer

- (MTLCountersCommandBuffer)initWithCommandBuffer:(id)a3 commandQueue:(id)a4 descriptor:(id)a5
{
  if ((atomic_load_explicit(&qword_27DA61180, memory_order_acquire) & 1) == 0)
  {
    v10 = a4;
    v9 = self;
    [MTLCountersCommandBuffer initWithCommandBuffer:commandQueue:descriptor:];
    self = v9;
    a4 = v10;
  }

  v11.receiver = self;
  v11.super_class = MTLCountersCommandBuffer;
  v7 = [(MTLToolsCommandBuffer *)&v11 initWithCommandBuffer:a3 parent:a4 descriptor:a5];
  if (v7)
  {
    v7->_traceBuffer = -[MTLCountersTraceCommandBuffer init:]([MTLCountersTraceCommandBuffer alloc], "init:", [a3 retainedReferences]);
    if (_MergedGlobals == 1)
    {
      [(MTLToolsCommandBuffer *)v7 setProfilingEnabled:1];
    }
  }

  return v7;
}

- (void)dealloc
{
  traceBuffer = self->_traceBuffer;
  v4 = *&self->MTLToolsCommandBuffer_opaque[8];
  v5 = [(NSDictionary *)[(MTLToolsCommandBuffer *)self profilingResults] mutableCopy];
  v6 = MEMORY[0x277CCABB0];
  [(MTLToolsCommandBuffer *)self kernelStartTime];
  [v5 setObject:objc_msgSend(v6 forKey:{"numberWithUnsignedLongLong:", (v7 * 1000000000.0)), @"MTLCommandBufferKernelStartTime"}];
  v8 = MEMORY[0x277CCABB0];
  [(MTLToolsCommandBuffer *)self kernelEndTime];
  [v5 setObject:objc_msgSend(v8 forKey:{"numberWithUnsignedLongLong:", (v9 * 1000000000.0)), @"MTLCommandBufferKernelEndTime"}];
  v10 = MEMORY[0x277CCABB0];
  [(MTLToolsCommandBuffer *)self GPUStartTime];
  [v5 setObject:objc_msgSend(v10 forKey:{"numberWithUnsignedLongLong:", (v11 * 1000000000.0)), @"MTLCommandBufferGPUStartTime"}];
  v12 = MEMORY[0x277CCABB0];
  [(MTLToolsCommandBuffer *)self GPUEndTime];
  [v5 setObject:objc_msgSend(v12 forKey:{"numberWithUnsignedLongLong:", (v13 * 1000000000.0)), @"MTLCommandBufferGPUEndTime"}];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MTLCountersCommandBuffer_dealloc__block_invoke;
  block[3] = &unk_2787B5040;
  block[4] = traceBuffer;
  block[5] = v4;
  block[6] = v5;
  block[7] = self;
  dispatch_async(global_queue, block);

  v15.receiver = self;
  v15.super_class = MTLCountersCommandBuffer;
  [(MTLToolsCommandBuffer *)&v15 dealloc];
}

- (id)blitCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLCountersBlitCommandEncoder alloc] initWithBlitCommandEncoder:v4 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (id)renderCommandEncoderWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLCountersRenderCommandEncoder alloc] initWithRenderCommandEncoder:v6 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

- (id)computeCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLCountersComputeCommandEncoder alloc] initWithComputeCommandEncoder:v4 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (id)computeCommandEncoderWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLCountersComputeCommandEncoder alloc] initWithComputeCommandEncoder:v6 commandBuffer:self descriptor:a3];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

- (id)blitCommandEncoderWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLCountersBlitCommandEncoder alloc] initWithBlitCommandEncoder:v6 commandBuffer:self descriptor:a3];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLCountersComputeCommandEncoder alloc] initWithComputeCommandEncoder:v6 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLCountersParallelRenderCommandEncoder alloc] initWithBaseRenderPass:v6 commandBuffer:self descriptor:a3];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [[MTLCountersRenderCommandEncoder alloc] initWithRenderCommandEncoder:v10 parent:self descriptor:a3];
    objc_autoreleasePoolPop(v9);

    return v11;
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [[MTLCountersComputeCommandEncoder alloc] initWithComputeCommandEncoder:v8 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [[MTLCountersComputeCommandEncoder alloc] initWithComputeCommandEncoder:v10 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v9);

    return v11;
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    return 0;
  }
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  v9 = objc_autoreleasePoolPush();
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [[MTLCountersComputeCommandEncoder alloc] initWithComputeCommandEncoder:v10 commandBuffer:self descriptor:a3];
    objc_autoreleasePoolPop(v9);

    return v11;
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    return 0;
  }
}

- (id)resourceStateCommandEncoderWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTLCountersResourceStateCommandEncoder alloc] initWithResourceStateCommandEncoder:v6 commandBuffer:self descriptor:a3];
    objc_autoreleasePoolPop(v5);

    return v7;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

- (id)resourceStateCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLCountersResourceStateCommandEncoder alloc] initWithResourceStateCommandEncoder:v4 commandBuffer:self descriptor:0];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (void)addPurgedResource:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 addPurgedResource:a3];
}

- (void)addPurgedHeap:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 addPurgedHeap:a3];
}

- (void)waitUntilScheduled
{
  [(MTLCountersTraceCommandBuffer *)self->_traceBuffer waitUntilScheduled];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 waitUntilScheduled];
}

- (void)waitUntilCompleted
{
  [(MTLCountersTraceCommandBuffer *)self->_traceBuffer waitUntilCompleted];
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 waitUntilCompleted];
}

- (void)presentDrawable:(id)a3
{
  [(MTLCountersTraceCommandBuffer *)self->_traceBuffer presentDrawable:?];
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 presentDrawable:a3];
}

- (void)presentDrawable:(id)a3 atTime:(double)a4
{
  [MTLCountersTraceCommandBuffer presentDrawable:"presentDrawable:atTime:" atTime:?];
  v7 = [(MTLToolsObject *)self baseObject];

  [v7 presentDrawable:a3 atTime:a4];
}

- (void)initWithCommandBuffer:commandQueue:descriptor:.cold.1()
{
  if (__cxa_guard_acquire(&qword_27DA61180))
  {
    v0 = getenv("MTL_XML_DUMP_EVENTS");
    if (!v0)
    {
      v0 = "1";
    }

    _MergedGlobals = strtol(v0, 0, 0) != 0;

    __cxa_guard_release(&qword_27DA61180);
  }
}

@end