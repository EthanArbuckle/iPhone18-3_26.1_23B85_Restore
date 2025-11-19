@interface GTDownloadContext
- (GTDownloadContext)initWithQueue:(id)a3 forRequest:(apr_array_header_t *)a4;
- (id)accelerationStructureCommandEncoder;
- (id)blitCommandEncoder;
- (id)computeCommandEncoder;
- (id)newCommandBuffer;
- (void)dealloc;
- (void)flushWithCallback:(id)a3;
@end

@implementation GTDownloadContext

void __26__GTDownloadContext_flush__block_invoke(id a1, NSArray *a2)
{
  v2 = a2;
  v21 = _sharedCaptureManager;
  v3 = [(NSArray *)v2 count];
  mach_absolute_time();
  v4 = os_signpost_id_make_with_pointer(g_signpostLog, v2);
  v5 = g_signpostLog;
  v6 = v5;
  v20 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Capture-DumpFiles", &unk_2E94FB, buf, 2u);
  }

  spid = v4;

  v7 = 0;
  if (v3)
  {
    v8 = 0;
    do
    {
      v9 = [(NSArray *)v2 objectAtIndex:v8];
      v10 = v8 + 2;
      v11 = [(NSArray *)v2 objectAtIndex:v8 + 1];
      if ([v11 conformsToProtocol:&OBJC_PROTOCOL___MTLIndirectCommandBuffer] & 1) != 0 || NSClassFromString(@"MTLIOAccelIndirectCommandBuffer") && (NSClassFromString(@"MTLIOAccelIndirectCommandBuffer"), (objc_opt_isKindOfClass()))
      {
        v12 = v8 + 3;
        v13 = v11;
        v14 = [(NSArray *)v2 objectAtIndex:v8 + 2];
        v15 = GTMTLDecodeIndirectCommandBuffer(v13, v14);
        v16 = [v13 allocatedSize];

        atomic_fetch_add(&g_GPUDataDownloaded, v16);
        v10 = v12;
      }

      else
      {
        v15 = v11;
        atomic_fetch_add(&g_GPUDataDownloaded, [v15 length]);
      }

      GTMTLCaptureState_storePointer(v21, [v9 UTF8String], objc_msgSend(v15, "bytes"), objc_msgSend(v15, "length"));
      v7 += [v15 length];
      atomic_fetch_add(&g_resourceDownloaded, 1uLL);

      v8 = v10;
    }

    while (v10 < v3);
  }

  v17 = g_signpostLog;
  v18 = v17;
  if (v20 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v17))
  {
    *buf = 134217984;
    v23 = v7;
    _os_signpost_emit_with_name_impl(&dword_0, v18, OS_SIGNPOST_INTERVAL_END, spid, "Capture-DumpFiles", "Total bytes: %lu", buf, 0xCu);
  }

  if (!dword_31F4BC)
  {
    mach_timebase_info(&DumpFiles_timebaseInfo);
  }

  mach_absolute_time();
}

- (void)flushWithCallback:(id)a3
{
  accelerationStructureCommandEncoder = self->_accelerationStructureCommandEncoder;
  v5 = a3;
  [(MTLAccelerationStructureCommandEncoderSPI *)accelerationStructureCommandEncoder endEncoding];
  [(MTLBlitCommandEncoder *)self->_blit endEncoding];
  [(MTLCommandBuffer *)self->_command commit];
  [(MTLCommandBuffer *)self->_command waitUntilCompleted];
  v5[2](v5, self->_objects);

  v6 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    objects = self->_objects;
    v8 = v6;
    v9 = [(NSMutableArray *)objects count];
    v10 = [(NSMutableArray *)self->_MTLResources count];
    v15 = 134218240;
    v16 = v9;
    v17 = 2048;
    v18 = v10;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Capture-flushCleanup", "Objects: %lu, resources: %lu", &v15, 0x16u);
  }

  command = self->_command;
  self->_command = 0;

  blit = self->_blit;
  self->_blit = 0;

  v13 = self->_accelerationStructureCommandEncoder;
  self->_accelerationStructureCommandEncoder = 0;

  self->_usedGPUMemory = 0;
  [(NSMutableArray *)self->_objects removeAllObjects];
  [(NSMutableArray *)self->_MTLResources removeAllObjects];
  v14 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Capture-flushCleanup", &unk_2E94FB, &v15, 2u);
  }
}

- (id)accelerationStructureCommandEncoder
{
  if ((dword_31F7C8 & 0x200000) != 0)
  {
    [(MTLBlitCommandEncoder *)self->_blit endEncoding];
    blit = self->_blit;
    self->_blit = 0;

    [(MTLComputeCommandEncoder *)self->_computeCommandEncoder endEncoding];
    computeCommandEncoder = self->_computeCommandEncoder;
    self->_computeCommandEncoder = 0;

    [(MTLAccelerationStructureCommandEncoderSPI *)self->_accelerationStructureCommandEncoder endEncoding];
    accelerationStructureCommandEncoder = self->_accelerationStructureCommandEncoder;
    self->_accelerationStructureCommandEncoder = 0;
  }

  if (!self->_command)
  {
    v6 = [(MTLCommandQueue *)self->_queue commandBufferWithDescriptor:self->_commandBufferDescriptor];
    command = self->_command;
    self->_command = v6;
  }

  [(MTLBlitCommandEncoder *)self->_blit endEncoding];
  v8 = self->_blit;
  self->_blit = 0;

  [(MTLComputeCommandEncoder *)self->_computeCommandEncoder endEncoding];
  v9 = self->_computeCommandEncoder;
  self->_computeCommandEncoder = 0;

  v10 = self->_accelerationStructureCommandEncoder;
  if (!v10)
  {
    v11 = [(MTLCommandBuffer *)self->_command accelerationStructureCommandEncoder];
    v12 = self->_accelerationStructureCommandEncoder;
    self->_accelerationStructureCommandEncoder = v11;

    v10 = self->_accelerationStructureCommandEncoder;
  }

  return v10;
}

- (id)computeCommandEncoder
{
  if ((dword_31F7C8 & 0x200000) != 0)
  {
    [(MTLBlitCommandEncoder *)self->_blit endEncoding];
    blit = self->_blit;
    self->_blit = 0;

    [(MTLComputeCommandEncoder *)self->_computeCommandEncoder endEncoding];
    computeCommandEncoder = self->_computeCommandEncoder;
    self->_computeCommandEncoder = 0;

    [(MTLAccelerationStructureCommandEncoderSPI *)self->_accelerationStructureCommandEncoder endEncoding];
    accelerationStructureCommandEncoder = self->_accelerationStructureCommandEncoder;
    self->_accelerationStructureCommandEncoder = 0;
  }

  if (!self->_command)
  {
    v6 = [(MTLCommandQueue *)self->_queue commandBufferWithDescriptor:self->_commandBufferDescriptor];
    command = self->_command;
    self->_command = v6;
  }

  [(MTLBlitCommandEncoder *)self->_blit endEncoding];
  v8 = self->_blit;
  self->_blit = 0;

  [(MTLAccelerationStructureCommandEncoderSPI *)self->_accelerationStructureCommandEncoder endEncoding];
  v9 = self->_accelerationStructureCommandEncoder;
  self->_accelerationStructureCommandEncoder = 0;

  v10 = self->_computeCommandEncoder;
  if (!v10)
  {
    v11 = [(MTLCommandBuffer *)self->_command computeCommandEncoder];
    v12 = self->_computeCommandEncoder;
    self->_computeCommandEncoder = v11;

    v10 = self->_computeCommandEncoder;
  }

  return v10;
}

- (id)blitCommandEncoder
{
  if ((dword_31F7C8 & 0x200000) != 0)
  {
    [(MTLBlitCommandEncoder *)self->_blit endEncoding];
    blit = self->_blit;
    self->_blit = 0;

    [(MTLComputeCommandEncoder *)self->_computeCommandEncoder endEncoding];
    computeCommandEncoder = self->_computeCommandEncoder;
    self->_computeCommandEncoder = 0;

    [(MTLAccelerationStructureCommandEncoderSPI *)self->_accelerationStructureCommandEncoder endEncoding];
    accelerationStructureCommandEncoder = self->_accelerationStructureCommandEncoder;
    self->_accelerationStructureCommandEncoder = 0;
  }

  if (!self->_command)
  {
    v6 = [(MTLCommandQueue *)self->_queue commandBufferWithDescriptor:self->_commandBufferDescriptor];
    command = self->_command;
    self->_command = v6;
  }

  [(MTLComputeCommandEncoder *)self->_computeCommandEncoder endEncoding];
  v8 = self->_computeCommandEncoder;
  self->_computeCommandEncoder = 0;

  [(MTLAccelerationStructureCommandEncoderSPI *)self->_accelerationStructureCommandEncoder endEncoding];
  v9 = self->_accelerationStructureCommandEncoder;
  self->_accelerationStructureCommandEncoder = 0;

  v10 = self->_blit;
  if (v10)
  {
    v11 = self->_blitRequestCount + 1;
    self->_blitRequestCount = v11;
    if (v11 == 1000)
    {
      [(MTLBlitCommandEncoder *)v10 endEncoding];
      v12 = [(MTLCommandBuffer *)self->_command blitCommandEncoder];
      v13 = self->_blit;
      self->_blit = v12;

      self->_blitRequestCount = 1;
      v10 = self->_blit;
    }
  }

  else
  {
    v14 = [(MTLCommandBuffer *)self->_command blitCommandEncoder];
    v15 = self->_blit;
    self->_blit = v14;

    v10 = self->_blit;
    self->_blitRequestCount = 1;
  }

  return v10;
}

- (id)newCommandBuffer
{
  v2 = [(MTLCommandQueue *)self->_queue commandBufferWithDescriptor:self->_commandBufferDescriptor];
  [v2 addCompletedHandler:&__block_literal_global_266];
  return v2;
}

- (void)dealloc
{
  apr_pool_destroy(self->_pool);
  v3.receiver = self;
  v3.super_class = GTDownloadContext;
  [(GTDownloadContext *)&v3 dealloc];
}

- (GTDownloadContext)initWithQueue:(id)a3 forRequest:(apr_array_header_t *)a4
{
  v7 = a3;
  v28.receiver = self;
  v28.super_class = GTDownloadContext;
  v8 = [(GTDownloadContext *)&v28 init];
  v9 = v8;
  if (v8)
  {
    apr_pool_create_ex(&v8->_pool, 0, 0, 0);
    objc_storeStrong(&v9->_queue, a3);
    v10 = objc_alloc_init(MTLCommandBufferDescriptor);
    commandBufferDescriptor = v9->_commandBufferDescriptor;
    v9->_commandBufferDescriptor = v10;

    if ((dword_31F7C8 & 0x100000) != 0)
    {
      [(MTLCommandBufferDescriptor *)v9->_commandBufferDescriptor setErrorOptions:[(MTLCommandBufferDescriptor *)v9->_commandBufferDescriptor errorOptions]| 1];
    }

    v12 = [(MTLCommandQueue *)v9->_queue commandBufferWithDescriptor:v9->_commandBufferDescriptor];
    command = v9->_command;
    v9->_command = v12;

    v14 = [[NSMutableArray alloc] initWithCapacity:2 * a4->nelts];
    objects = v9->_objects;
    v9->_objects = v14;

    v9->_requests = apr_array_copy(v9->_pool, a4);
    v16 = [[NSMutableArray alloc] initWithCapacity:a4->nelts];
    MTLResources = v9->_MTLResources;
    v9->_MTLResources = v16;

    v18 = [[NSMutableArray alloc] initWithCapacity:a4->nelts];
    originalMTLResources = v9->_originalMTLResources;
    v9->_originalMTLResources = v18;

    requests = v9->_requests;
    if (requests->nelts >= 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = &requests->elts[v21];
        [(NSMutableArray *)v9->_originalMTLResources addObject:*v24];
        v23 |= v24[46] == 16;
        ++v22;
        requests = v9->_requests;
        v21 += 456;
      }

      while (v22 < requests->nelts);
      if (v23)
      {
        v25 = CaptureAccelerationStructures();
        captureAccelerationStructures = v9->_captureAccelerationStructures;
        v9->_captureAccelerationStructures = v25;
      }
    }
  }

  return v9;
}

@end