@interface IOGPUMetalIOCommandBuffer
- (BOOL)hasFollowOnWork;
- (BOOL)validateNotificationCount;
- (id).cxx_construct;
- (void)addBarrier;
- (void)commit;
- (void)completeCommandCallbackBlocks;
- (void)dealloc;
- (void)didCompleteWithStatus:(int64_t)a3;
- (void)enqueue;
- (void)getCommandBufferBytes:(unsigned int)a3;
- (void)growKernelCommandBuffer:(unsigned int)a3;
- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7;
- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11;
- (void)setLabel:(id)a3;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)tryCancel;
- (void)validateNotificationCount;
- (void)waitForEvent:(id)a3 value:(unint64_t)a4;
@end

@implementation IOGPUMetalIOCommandBuffer

- (void)dealloc
{
  ioCompletionGroup = self->_ioCompletionGroup;
  if (ioCompletionGroup)
  {
    dispatch_release(ioCompletionGroup);
    self->_ioCompletionGroup = 0;
  }

  self->_stagingBuffers = 0;
  gpuBlitEncoder = self->_gpuBlitEncoder;
  if (gpuBlitEncoder)
  {
    [(MTLBlitCommandEncoder *)gpuBlitEncoder endEncoding];

    self->_gpuBlitEncoder = 0;
  }

  gpuCommandBuffer = self->_gpuCommandBuffer;
  if (gpuCommandBuffer)
  {

    self->_gpuCommandBuffer = 0;
  }

  ioKernelCommandShmem = self->_ioKernelCommandShmem;
  if (ioKernelCommandShmem)
  {
    IOGPUMetalDeviceShmemRelease(ioKernelCommandShmem);
    self->_ioKernelCommandShmem = 0;
  }

  IOGPUIOCommandQueueDestroyIOCommandBuffer(self->_queue->_ioCommandQueueRef, self->_commandBufferID);
  self->_commandBufferID = 0;

  self->_queue = 0;
  self->_device = 0;
  v7.receiver = self;
  v7.super_class = IOGPUMetalIOCommandBuffer;
  [(_MTLIOCommandBuffer *)&v7 dealloc];
}

- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6
{
  v11 = [a5 stagingBufferSize:a4 offset:a6];
  v12 = *MEMORY[0x1E6974318];
  v13 = *MEMORY[0x1E6974328];
  if (*(&self->super.super.super.isa + v13) >= v11)
  {
    v14 = *(&self->super.super.super.isa + v12);
  }

  else
  {
    v14 = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v11];
    if (!v14)
    {
      v22 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v11];
      v14 = v22;
      if (!v22 || [objc_msgSend(v22 "buffer")] < v11)
      {

        *(&self->super.super.super.isa + *MEMORY[0x1E6974350]) = 1;
        return;
      }

      v23 = *(&self->super.super.super.isa + *MEMORY[0x1E6974340]);
      MTLResourceListAddResource();
    }

    v15 = [objc_msgSend(v14 "buffer")];
    *(&self->super.super.super.isa + v13) = v15;
    if (v15 < v11)
    {
      [IOGPUMetalIOCommandBuffer loadBytes:size:sourceHandle:sourceHandleOffset:];
    }

    *(&self->super.super.super.isa + *MEMORY[0x1E6974320]) = 0;
    *(&self->super.super.super.isa + v12) = v14;
  }

  v16 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:56];
  *v16 = 0x3800000000;
  bzero(v16 + 1, 0x30uLL);
  *(v16 + 2) = [a5 vnioID];
  if (v11)
  {
    v16[2] = [a5 getHandleOffset:a4 offset:a6];
    v16[3] = v11;
    v17 = [objc_msgSend(v14 "buffer")];
    v18 = *MEMORY[0x1E6974320];
    v19 = *(&self->super.super.super.isa + v18) + v17;
    v20 = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
    v16[4] = v19;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke;
    v24[3] = &unk_1E8362E88;
    v24[4] = self;
    v24[5] = a5;
    v24[6] = v20;
    v24[7] = a3;
    v24[8] = a4;
    v24[9] = a6;
    v24[10] = v19;
    v24[11] = v11;
    v16[6] = _Block_copy(v24);
    std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v16 + 6);
    *(&self->super.super.super.isa + v18) = (*(&self->super.super.super.isa + v18) + v11);
    *(&self->super.super.super.isa + v13) = (*(&self->super.super.super.isa + v13) - v11);
    atomic_fetch_add(&self->_notificationCount, 1u);
  }

  else
  {
    v16[2] = a6;
    v16[3] = a4;
    v16[4] = a3;
  }

  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    v21 = *(&self->super.super.super.isa + *MEMORY[0x1E6974340]);
    MTLResourceListAddResource();
  }
}

void __76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v17 = v2;
    v18 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke_2;
      v10[3] = &unk_1E8362E60;
      v11 = *(a1 + 32);
      v8 = *(a1 + 56);
      v12 = *(a1 + 48);
      v13 = v8;
      v14 = *(a1 + 64);
      v9 = *(a1 + 88);
      v15 = *(a1 + 80);
      v16 = v9;
      dispatch_group_async(v6, v7, v10);
    }
  }
}

unint64_t __76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke_2(uint64_t a1)
{
  if (*__globalGPUCommPage)
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 32) + 400);
    IOGPUDeviceTraceEventStart();
  }

  result = [*(a1 + 40) decompress:*(a1 + 56) size:*(a1 + 64) offset:*(a1 + 72) stagingBuffer:*(a1 + 80) stagingBufferSize:*(a1 + 88)];
  if (result == -1 || result < *(a1 + 64))
  {
    *(*(a1 + 32) + *MEMORY[0x1E6974350]) = 2;
  }

  if (*__globalGPUCommPage)
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 400);

    return IOGPUDeviceTraceEventEnd();
  }

  return result;
}

- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7
{
  v10 = a3;
  v46 = [a3 storageMode];
  if (v46 == 2)
  {
    v12 = a5;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a6 stagingBufferSize:a5 offset:a7];
  v14 = v13;
  v15 = v12 + v13;
  v16 = *MEMORY[0x1E6974318];
  v44 = *MEMORY[0x1E6974328];
  if (*(&self->super.super.super.isa + v44) >= (v12 + v13))
  {
    v42 = v12 + v13;
    v17 = *(&self->super.super.super.isa + v16);
  }

  else
  {
    v17 = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v15];
    if (!v17)
    {
      v31 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v15];
      v17 = v31;
      if (!v31 || [objc_msgSend(v31 "buffer")] < v15)
      {

        *(&self->super.super.super.isa + *MEMORY[0x1E6974350]) = 1;
        return;
      }

      v40 = *(&self->super.super.super.isa + *MEMORY[0x1E6974340]);
      MTLResourceListAddResource();
    }

    v18 = [objc_msgSend(v17 "buffer")];
    *(&self->super.super.super.isa + v44) = v18;
    v42 = v15;
    if (v18 < v15)
    {
      [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
    }

    *(&self->super.super.super.isa + *MEMORY[0x1E6974320]) = 0;
    *(&self->super.super.super.isa + v16) = v17;
  }

  v19 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:56];
  *v19 = 0x3800000000;
  bzero(v19 + 1, 0x30uLL);
  *(v19 + 2) = [a6 vnioID];
  v43 = a6;
  v20 = a4;
  if (v14)
  {
    v41 = v10;
    v19[2] = [a6 getHandleOffset:a5 offset:a7];
    v19[3] = v14;
    v21 = [objc_msgSend(v17 "buffer")];
    v22 = *MEMORY[0x1E6974320];
    v23 = *(&self->super.super.super.isa + v22) + v12 + v21;
    if (v46 == 2)
    {
      v24 = [objc_msgSend(v17 "buffer")];
      v25 = *(&self->super.super.super.isa + v22);
    }

    else
    {
      v24 = [v41 contents];
      v25 = a4;
    }

    v28 = v24 + v25;
    v29 = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
    v30 = [v43 globalTraceObjectID];
    v19[4] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke;
    aBlock[3] = &unk_1E8362ED8;
    aBlock[6] = v29;
    aBlock[7] = v30;
    aBlock[4] = self;
    aBlock[5] = v43;
    aBlock[8] = v28;
    aBlock[9] = a5;
    aBlock[10] = a7;
    aBlock[11] = v23;
    aBlock[12] = v14;
    v19[6] = _Block_copy(aBlock);
    std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v19 + 6);
    atomic_fetch_add(&self->_notificationCount, 1u);
    v10 = v41;
    v20 = a4;
  }

  else
  {
    v19[2] = a7;
    v19[3] = a5;
    if (v46 == 2)
    {
      v26 = [objc_msgSend(v17 "buffer")];
      v27 = *(&self->super.super.super.isa + *MEMORY[0x1E6974320]) + v26;
    }

    else
    {
      v27 = ([v10 contents] + a4);
    }

    v19[4] = v27;
  }

  if (v46 == 2)
  {
    if (!self->_hasFollowOnGPUWork)
    {
      v33 = [(MTLCommandQueue *)[(_MTLIOCommandQueue *)self->_queue gpuQueue] commandBuffer];
      self->_gpuCommandBuffer = v33;
      if (!v33)
      {
        [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
      }

      v34 = [(MTLCommandBuffer *)v33 blitCommandEncoder];
      self->_gpuBlitEncoder = v34;
      if (!v34)
      {
        [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
      }

      self->_hasFollowOnGPUWork = 1;
    }

    gpuBlitEncoder = self->_gpuBlitEncoder;
    if (!gpuBlitEncoder)
    {
      gpuBlitEncoder = [(MTLCommandBuffer *)self->_gpuCommandBuffer blitCommandEncoder];
      self->_gpuBlitEncoder = gpuBlitEncoder;
      if (!gpuBlitEncoder)
      {
        [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
      }
    }

    v36 = [v17 buffer];
    v32 = *MEMORY[0x1E6974320];
    [(MTLBlitCommandEncoder *)gpuBlitEncoder copyFromBuffer:v36 sourceOffset:*(&self->super.super.super.isa + v32) toBuffer:v10 destinationOffset:v20 size:a5];
  }

  else
  {
    v32 = *MEMORY[0x1E6974320];
  }

  *(&self->super.super.super.isa + v32) = (*(&self->super.super.super.isa + v32) + v42);
  *(&self->super.super.super.isa + v44) = (*(&self->super.super.super.isa + v44) - v42);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    v37 = *MEMORY[0x1E6974340];
    v38 = *(&self->super.super.super.isa + v37);
    MTLResourceListAddResource();
    v39 = *(&self->super.super.super.isa + v37);
    MTLResourceListAddResource();
  }
}

void __84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v17 = v2;
    v18 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke_2;
      block[3] = &unk_1E8362EB0;
      v8 = *(a1 + 32);
      v12 = *(a1 + 48);
      v11 = v8;
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v9 = *(a1 + 96);
      v15 = *(a1 + 88);
      v16 = v9;
      dispatch_group_async(v6, v7, block);
    }
  }
}

unint64_t __84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke_2(uint64_t a1)
{
  if (*__globalGPUCommPage)
  {
    v2 = *(*(a1 + 32) + 400);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    IOGPUDeviceTraceEventStart();
  }

  result = [*(a1 + 40) decompress:*(a1 + 64) size:*(a1 + 72) offset:*(a1 + 80) stagingBuffer:*(a1 + 88) stagingBufferSize:*(a1 + 96)];
  if (result == -1 || result < *(a1 + 72))
  {
    *(*(a1 + 32) + *MEMORY[0x1E6974350]) = 2;
  }

  if (*__globalGPUCommPage)
  {
    v6 = *(*(a1 + 32) + 400);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);

    return IOGPUDeviceTraceEventEnd();
  }

  return result;
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11
{
  v75 = 0;
  v76 = 0;
  v73 = *&a9->var0;
  v74 = 0;
  v71 = *&a6->var0;
  v72 = 1;
  MTLCalculateSourceBufferSizeAndAlignment();
  v73 = 0uLL;
  v74 = 0;
  v55 = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
  v54 = [a10 globalTraceObjectID];
  if (a6->var2)
  {
    for (i = 0; i < a6->var2; ++i)
    {
      v14 = [a10 stagingBufferSize:v76 offset:a11];
      v15 = v75;
      v16 = (v76 + v75 + v14);
      v17 = *MEMORY[0x1E6974318];
      v18 = *MEMORY[0x1E6974328];
      v62 = v16;
      v60 = v18;
      if (*(&self->super.super.super.isa + v18) >= v16)
      {
        v19 = *(&self->super.super.super.isa + v17);
        v23 = *MEMORY[0x1E6974320];
      }

      else
      {
        v19 = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v16];
        if (!v19)
        {
          v20 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v16];
          v19 = v20;
          if (!v20 || [objc_msgSend(v20 "buffer")] < v16)
          {

            *(&self->super.super.super.isa + *MEMORY[0x1E6974350]) = 1;
            goto LABEL_41;
          }

          v21 = *(&self->super.super.super.isa + *MEMORY[0x1E6974340]);
          MTLResourceListAddResource();
        }

        v22 = [objc_msgSend(v19 "buffer")];
        *(&self->super.super.super.isa + v18) = v22;
        if (v22 < v16)
        {
          __assert_rtn("[IOGPUMetalIOCommandBuffer loadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:]", "IOGPUMetalIOCommandBuffer.mm", 534, "_currentStagingBufferRemainingBytes >= paddedStagingBufferSize");
        }

        v23 = *MEMORY[0x1E6974320];
        *(&self->super.super.super.isa + v23) = 0;
        *(&self->super.super.super.isa + v17) = v19;
        v15 = v75;
      }

      v24 = *(&self->super.super.super.isa + v23);
      v25 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:56];
      *v25 = 0x3800000000;
      bzero(v25 + 1, 0x30uLL);
      v26 = (v24 + v15 - 1) / v15 * v15;
      *(v25 + 2) = [a10 vnioID];
      if (v14)
      {
        v25[2] = [a10 getHandleOffset:v76 offset:a11];
        v25[3] = v14;
        v27 = [objc_msgSend(v19 "buffer")];
        v28 = v76;
        v29 = [objc_msgSend(v19 "buffer")];
        v30 = v27 + v26 + v28;
        v31 = v29 + v26;
        v25[4] = v30;
        if (a6->var2 < 2)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke;
          aBlock[3] = &unk_1E8362ED8;
          aBlock[6] = v55;
          aBlock[7] = v54;
          aBlock[4] = self;
          aBlock[5] = a10;
          aBlock[8] = v29 + v26;
          aBlock[9] = v76;
          aBlock[10] = a11;
          aBlock[11] = v30;
          aBlock[12] = v14;
          v25[6] = _Block_copy(aBlock);
          std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v25 + 6);
          atomic_fetch_add(&self->_notificationCount, 1u);
        }

        else
        {
          v32 = v76;
          v33 = *(&v73 + 1);
          if (*(&v73 + 1) >= v74)
          {
            v53 = v76;
            v35 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v73 + 1) - v73) >> 3);
            v36 = v35 + 1;
            if (v35 + 1 > 0x666666666666666)
            {
              std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
            }

            if (0x999999999999999ALL * ((v74 - v73) >> 3) > v36)
            {
              v36 = 0x999999999999999ALL * ((v74 - v73) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v74 - v73) >> 3) >= 0x333333333333333)
            {
              v37 = 0x666666666666666;
            }

            else
            {
              v37 = v36;
            }

            if (v37)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<IOGPUIODecompressionArgs>>(&v73, v37);
            }

            v38 = (8 * ((*(&v73 + 1) - v73) >> 3));
            *v38 = v31;
            v38[1] = v53;
            v38[2] = a11;
            v38[3] = v30;
            v38[4] = v14;
            v34 = 40 * v35 + 40;
            v39 = v38 - (*(&v73 + 1) - v73);
            memcpy(v39, v73, *(&v73 + 1) - v73);
            v40 = v73;
            *&v73 = v39;
            *(&v73 + 1) = v34;
            v74 = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            **(&v73 + 1) = v31;
            v33[1] = v32;
            v33[2] = a11;
            v33[3] = v30;
            v34 = (v33 + 5);
            v33[4] = v14;
          }

          *(&v73 + 1) = v34;
        }
      }

      else
      {
        v25[2] = a11;
        v25[3] = v62;
        v25[4] = *(&self->super.super.super.isa + v23) + [objc_msgSend(v19 "buffer")];
      }

      if (!self->_hasFollowOnGPUWork)
      {
        v41 = [(MTLCommandQueue *)[(_MTLIOCommandQueue *)self->_queue gpuQueue] commandBuffer];
        self->_gpuCommandBuffer = v41;
        if (!v41)
        {
          v51 = 627;
          v52 = "_gpuCommandBuffer";
          goto LABEL_49;
        }

        v42 = [(MTLCommandBuffer *)v41 blitCommandEncoder];
        self->_gpuBlitEncoder = v42;
        if (!v42)
        {
          v51 = 629;
LABEL_48:
          v52 = "_gpuBlitEncoder";
LABEL_49:
          __assert_rtn("[IOGPUMetalIOCommandBuffer loadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:]", "IOGPUMetalIOCommandBuffer.mm", v51, v52);
        }

        self->_hasFollowOnGPUWork = 1;
      }

      gpuBlitEncoder = self->_gpuBlitEncoder;
      if (!gpuBlitEncoder)
      {
        gpuBlitEncoder = [(MTLCommandBuffer *)self->_gpuCommandBuffer blitCommandEncoder];
        self->_gpuBlitEncoder = gpuBlitEncoder;
        if (!gpuBlitEncoder)
        {
          v51 = 637;
          goto LABEL_48;
        }
      }

      v44 = [v19 buffer];
      v71 = *&a6->var0;
      v72 = 1;
      v45 = i + a9->var2;
      v68 = *&a9->var0;
      v69 = v45;
      [(MTLBlitCommandEncoder *)gpuBlitEncoder copyFromBuffer:v44 sourceOffset:v26 sourceBytesPerRow:a7 sourceBytesPerImage:a8 sourceSize:&v71 toTexture:a3 destinationSlice:a4 destinationLevel:a5 destinationOrigin:&v68];
      *(&self->super.super.super.isa + v23) = (*(&self->super.super.super.isa + v23) + v62);
      *(&self->super.super.super.isa + v60) = (*(&self->super.super.super.isa + v60) - v62);
      a11 += a8;
    }
  }

  if (*(&v73 + 1) != v73)
  {
    v46 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
    *v46 = 0x1800000001;
    v47 = v46 + 1;
    bzero(v46 + 1, 0x10uLL);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3321888768;
    v64[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_3;
    v64[3] = &unk_1F49BFE10;
    v64[4] = self;
    v64[6] = v55;
    v64[7] = v54;
    __p = 0;
    v66 = 0;
    v67 = 0;
    std::vector<IOGPUIODecompressionArgs>::__init_with_size[abi:ne200100]<IOGPUIODecompressionArgs*,IOGPUIODecompressionArgs*>(&__p, v73, *(&v73 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v73 + 1) - v73) >> 3));
    v64[5] = a10;
    *v47 = _Block_copy(v64);
    std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v47);
    atomic_fetch_add(&self->_notificationCount, 1u);
    if (__p)
    {
      v66 = __p;
      operator delete(__p);
    }
  }

  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    v48 = *MEMORY[0x1E6974340];
    v49 = *(&self->super.super.super.isa + v48);
    MTLResourceListAddResource();
    v50 = *(&self->super.super.super.isa + v48);
    MTLResourceListAddResource();
  }

LABEL_41:
  if (v73)
  {
    *(&v73 + 1) = v73;
    operator delete(v73);
  }
}

void __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v17 = v2;
    v18 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_2;
      block[3] = &unk_1E8362EB0;
      v8 = *(a1 + 32);
      v12 = *(a1 + 48);
      v11 = v8;
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v9 = *(a1 + 96);
      v15 = *(a1 + 88);
      v16 = v9;
      dispatch_group_async(v6, v7, block);
    }
  }
}

unint64_t __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_2(uint64_t a1)
{
  if (*__globalGPUCommPage)
  {
    v2 = *(*(a1 + 32) + 400);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    IOGPUDeviceTraceEventStart();
  }

  result = [*(a1 + 40) decompress:*(a1 + 64) size:*(a1 + 72) offset:*(a1 + 80) stagingBuffer:*(a1 + 88) stagingBufferSize:*(a1 + 96)];
  if (result == -1 || result < *(a1 + 72))
  {
    *(*(a1 + 32) + *MEMORY[0x1E6974350]) = 2;
  }

  if (*__globalGPUCommPage)
  {
    v6 = *(*(a1 + 32) + 400);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);

    return IOGPUDeviceTraceEventEnd();
  }

  return result;
}

void __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_3(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v13 = v2;
    v14 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_4;
      block[3] = &unk_1F49BFDD8;
      block[4] = *(a1 + 32);
      v9 = *(a1 + 48);
      v11 = 0;
      v12 = 0;
      __p = 0;
      std::vector<IOGPUIODecompressionArgs>::__init_with_size[abi:ne200100]<IOGPUIODecompressionArgs*,IOGPUIODecompressionArgs*>(&__p, *(a1 + 64), *(a1 + 72), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 72) - *(a1 + 64)) >> 3));
      block[5] = *(a1 + 40);
      dispatch_group_async(v6, v7, block);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }
    }
  }
}

void *__146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_4(void *result)
{
  v1 = result;
  if (*__globalGPUCommPage)
  {
    v2 = *(result[4] + 400);
    v3 = result[6];
    v4 = result[7];
    result = IOGPUDeviceTraceEventStart();
  }

  v5 = -858993459 * ((v1[9] - v1[8]) >> 3);
  if (v5)
  {
    v6 = 0;
    v7 = 40 * v5;
    while (1)
    {
      v8 = (v1[8] + v6);
      v9 = v8[1];
      result = [v1[5] decompress:*v8 size:v9 offset:v8[2] stagingBuffer:v8[3] stagingBufferSize:v8[4]];
      if (result == -1 || result < v9)
      {
        break;
      }

      v6 += 40;
      if (v7 == v6)
      {
        goto LABEL_11;
      }
    }

    *(v1[4] + *MEMORY[0x1E6974350]) = 2;
  }

LABEL_11:
  if (*__globalGPUCommPage)
  {
    v11 = *(v1[4] + 400);
    v12 = v1[6];
    v13 = v1[7];

    return IOGPUDeviceTraceEventEnd();
  }

  return result;
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11
{
  v12 = *a6;
  v11 = *a9;
  [(IOGPUMetalIOCommandBuffer *)self loadTexture:a3 slice:a4 level:a5 size:&v12 sourceBytesPerRow:a7 sourceBytesPerImage:a8 destinationOrigin:&v11 sourceHandle:a10 sourceHandleOffset:a11];
}

- (void)addBarrier
{
  v3 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
  *v3 = 0x1800000001;
  bzero(v3 + 8, 0x10uLL);
  if (self->_hasFollowOnGPUWork)
  {
    v4 = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
    v5 = [(MTLCommandBuffer *)self->_gpuCommandBuffer globalTraceObjectID];
    gpuBlitEncoder = self->_gpuBlitEncoder;
    if (gpuBlitEncoder)
    {
      [(MTLBlitCommandEncoder *)gpuBlitEncoder endEncoding];

      self->_gpuBlitEncoder = 0;
    }

    gpuCommandBuffer = self->_gpuCommandBuffer;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke;
    v15[3] = &unk_1E8362F00;
    v15[4] = self;
    [(MTLCommandBuffer *)gpuCommandBuffer addCompletedHandler:v15];
    v8 = self->_gpuCommandBuffer;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2;
    aBlock[3] = &unk_1E8362F50;
    aBlock[4] = self;
    aBlock[5] = v8;
    aBlock[6] = v4;
    aBlock[7] = v5;
    *(v3 + 1) = _Block_copy(aBlock);
    v3[16] = 1;
    atomic_fetch_add(&self->_notificationCount, 1u);

    self->_gpuCommandBuffer = 0;
    self->_hasFollowOnGPUWork = 0;
  }

  else
  {
    lastBarrierNotificationCount = self->_lastBarrierNotificationCount;
    p_notificationCount = &self->_notificationCount;
    v11 = atomic_load(&self->_notificationCount);
    if (lastBarrierNotificationCount != v11)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_4;
      v13[3] = &unk_1E8362F78;
      v13[4] = self;
      *(v3 + 1) = _Block_copy(v13);
      v3[16] = 1;
      atomic_fetch_add(p_notificationCount, 1u);
      v12 = atomic_load(p_notificationCount);
      self->_lastBarrierNotificationCount = v12;
    }
  }

  std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v3 + 1);
  [(_MTLIOCommandBuffer *)self reuseActiveScratchBuffers];
}

uint64_t __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if ([a2 status] == 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return [v2 barrierComplete:v3];
}

void __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2(uint64_t a1, int a2)
{
  if (a2 != 4)
  {
    v13 = v2;
    v14 = v3;
    v6 = (a1 + 32);
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2_cold_1(v5, v6);
    }

    else
    {
      v7 = *(v5 + 376);
      v8 = [*(v5 + 304) getDecompressionQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_3;
      v10[3] = &unk_1E8362F28;
      v9 = *(a1 + 48);
      v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v12 = v9;
      dispatch_group_async(v7, v8, v10);
    }
  }
}

uint64_t __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) commit];
  if (*__globalGPUCommPage)
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 40) + 400);
    v4 = *(a1 + 56);
    IOGPUDeviceTraceEvent();
  }

  result = [*(a1 + 32) waitUntilCompleted];
  if (*__globalGPUCommPage)
  {
    v6 = *(*(a1 + 40) + 400);

    return IOGPUDeviceTraceEvent();
  }

  return result;
}

void __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_4(uint64_t a1, int a2)
{
  if (a2 != 4)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = *(a1 + 32);
    v6 = *(v5 + 376);
    v7 = [*(v5 + 304) getDecompressionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_5;
    block[3] = &unk_1E8362AB0;
    block[4] = *(a1 + 32);
    dispatch_group_async(v6, v7, block);
  }
}

uint64_t __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) barrierComplete:3];
  if (*__globalGPUCommPage)
  {
    v3 = *(*(a1 + 32) + 400);

    return IOGPUDeviceTraceEvent();
  }

  return result;
}

- (void)waitForEvent:(id)a3 value:(unint64_t)a4
{
  v7 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
  bzero(v7 + 1, 0x10uLL);
  *(v7 + 2) = [a3 eventPort];
  v7[2] = a4;
  *v7 = 0x1800000003;
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    v8 = *(&self->super.super.super.isa + *MEMORY[0x1E6974340]);

    MTLResourceListAddResource();
  }
}

- (void)signalEvent:(id)a3 value:(unint64_t)a4
{
  [(IOGPUMetalIOCommandBuffer *)self addBarrier];
  v7 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
  bzero(v7 + 1, 0x10uLL);
  *(v7 + 2) = [a3 eventPort];
  v7[2] = a4;
  *v7 = 0x1800000002;
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    v8 = *(&self->super.super.super.isa + *MEMORY[0x1E6974340]);

    MTLResourceListAddResource();
  }
}

- (void)enqueue
{
  v2 = *MEMORY[0x1E6974330];
  if ((*(&self->super.super.super.isa + v2) & 1) == 0)
  {
    *(&self->super.super.super.isa + v2) = 1;
    [(IOGPUMetalIOCommandQueue *)self->_queue enqueueCommandBuffer:self];
  }
}

- (void)commit
{
  if (self->_committed)
  {
    [IOGPUMetalIOCommandBuffer commit];
  }

  if (*__globalGPUCommPage)
  {
    globalTraceObjectID = self->_globalTraceObjectID;
    IOGPUDeviceTraceEvent();
  }

  [(_MTLIOCommandBuffer *)self clearScratchBufferLists];
  [(IOGPUMetalIOCommandBuffer *)self enqueue];
  self->_committed = 1;
  queue = self->_queue;

  [(IOGPUMetalIOCommandQueue *)queue commitCommandBuffer:self];
}

- (void)didCompleteWithStatus:(int64_t)a3
{
  v5 = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
  v6 = [(MTLCommandBuffer *)self->_gpuCommandBuffer globalTraceObjectID];
  dispatch_group_wait(self->_ioCompletionGroup, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *MEMORY[0x1E6974350];
  if (!*(&self->super.super.super.isa + v7))
  {
    *(&self->super.super.super.isa + v7) = a3;
  }

  if (self->_hasFollowOnGPUWork)
  {
    if (self->_tryCancel)
    {
      *(&self->super.super.super.isa + v7) = 1;
    }

    if (![(IOGPUMetalIOCommandBuffer *)self hasFollowOnWork])
    {
      [IOGPUMetalIOCommandBuffer didCompleteWithStatus:];
    }

    if (*(&self->super.super.super.isa + v7) == 3)
    {
      gpuBlitEncoder = self->_gpuBlitEncoder;
      if (gpuBlitEncoder)
      {
        [(MTLBlitCommandEncoder *)gpuBlitEncoder endEncoding];

        self->_gpuBlitEncoder = 0;
      }

      gpuCommandBuffer = self->_gpuCommandBuffer;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51__IOGPUMetalIOCommandBuffer_didCompleteWithStatus___block_invoke;
      v20[3] = &unk_1E8362FA0;
      v20[4] = self;
      v20[5] = v5;
      v20[6] = v6;
      [(MTLCommandBuffer *)gpuCommandBuffer addCompletedHandler:v20];
      [(MTLCommandBuffer *)self->_gpuCommandBuffer commit];
      if (*__globalGPUCommPage)
      {
        globalTraceObjectID = self->_globalTraceObjectID;
LABEL_20:
        IOGPUDeviceTraceEvent();
      }
    }

    else
    {
      [(IOGPUMetalIOCommandQueue *)self->_queue commandBufferComplete];
      v15 = *(&self->super.super.super.isa + v7);
      v19.receiver = self;
      v19.super_class = IOGPUMetalIOCommandBuffer;
      [(_MTLIOCommandBuffer *)&v19 didCompleteWithStatus:v15];
      if (*__globalGPUCommPage)
      {
        v16 = self->_globalTraceObjectID;
        v17 = *(&self->super.super.super.isa + v7);
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (atomic_load(&self->_notificationCount))
    {
      if (![(IOGPUMetalIOCommandBuffer *)self hasFollowOnWork])
      {
        [IOGPUMetalIOCommandBuffer didCompleteWithStatus:];
      }

      [(IOGPUMetalIOCommandQueue *)self->_queue commandBufferComplete];
    }

    v12 = *(&self->super.super.super.isa + v7);
    v18.receiver = self;
    v18.super_class = IOGPUMetalIOCommandBuffer;
    [(_MTLIOCommandBuffer *)&v18 didCompleteWithStatus:v12];
    if (*__globalGPUCommPage)
    {
      v13 = self->_globalTraceObjectID;
      v14 = *(&self->super.super.super.isa + v7);
      goto LABEL_20;
    }
  }

  self->_stagingBuffers = 0;
}

id __51__IOGPUMetalIOCommandBuffer_didCompleteWithStatus___block_invoke(uint64_t a1, void *a2)
{
  [*(*(a1 + 32) + 304) commandBufferComplete];
  if ([a2 status] == 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v9.receiver = *(a1 + 32);
  v9.super_class = IOGPUMetalIOCommandBuffer;
  result = objc_msgSendSuper2(&v9, sel_didCompleteWithStatus_, v4);
  if (*__globalGPUCommPage)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 400);
    v8 = *(a1 + 48);
    return IOGPUDeviceTraceEvent();
  }

  return result;
}

- (void)tryCancel
{
  if (!self->_tryCancel)
  {
    self->_tryCancel = 1;
    IOGPUIOCommandQueueTryCancelIOCommandBuffer(self->_queue->_ioCommandQueueRef, self->_commandBufferID);
  }
}

- (void)growKernelCommandBuffer:(unsigned int)a3
{
  ioKernelCommandShmem = self->_ioKernelCommandShmem;
  if (!ioKernelCommandShmem)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  ioKernelCommandShmemStart = self->_ioKernelCommandShmemStart;
  if (!ioKernelCommandShmemStart || (ioKernelCommandShmemCurrent = self->_ioKernelCommandShmemCurrent) == 0 || (ioKernelCommandShmemEnd = self->_ioKernelCommandShmemEnd) == 0)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  if (ioKernelCommandShmemEnd < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  v8 = ioKernelCommandShmemCurrent - ioKernelCommandShmemStart;
  if (ioKernelCommandShmemCurrent < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  v9 = a3 + ioKernelCommandShmemEnd - ioKernelCommandShmemStart + 8;
  pool = ioKernelCommandShmem->_priv.pool;
  v11 = *(pool + 48);
  while (v11 < v9)
  {
    if (v11 >= 0x200000)
    {
      v11 += 0x100000;
    }

    else
    {
      v11 *= 2;
    }
  }

  [(IOGPUMetalDeviceShmemPool *)ioKernelCommandShmem->_priv.pool setShmemSize:?];
  Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(pool);
  self->_ioKernelCommandShmem = Shmem;
  if (!Shmem)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:?];
    }

    abort();
  }

  shmemSize = Shmem->_shmemSize;
  virtualAddress = Shmem->_virtualAddress;
  self->_ioKernelCommandShmemStart = virtualAddress;
  if (shmemSize < v9)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  self->_ioKernelCommandShmemEnd = &virtualAddress[shmemSize];
  v15 = ioKernelCommandShmem->_virtualAddress;
  if (!v15)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  if (shmemSize <= v8)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  memcpy(self->_ioKernelCommandShmemStart, v15, v8);
  IOGPUMetalDeviceShmemRelease(ioKernelCommandShmem);
  self->_ioKernelCommandShmemCurrent = &self->_ioKernelCommandShmemStart[v8];
  self->_commandListHeader = self->_ioKernelCommandShmemStart;
}

- (void)getCommandBufferBytes:(unsigned int)a3
{
  if (a3 <= 7)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  if (!self->_ioKernelCommandShmem)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  ioKernelCommandShmemStart = self->_ioKernelCommandShmemStart;
  if (!ioKernelCommandShmemStart || (result = self->_ioKernelCommandShmemCurrent) == 0 || (ioKernelCommandShmemEnd = self->_ioKernelCommandShmemEnd) == 0)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  if (ioKernelCommandShmemEnd < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  if (result < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  v7 = a3;
  if (ioKernelCommandShmemEnd - result < a3)
  {
    [(IOGPUMetalIOCommandBuffer *)self growKernelCommandBuffer:?];
    result = self->_ioKernelCommandShmemCurrent;
  }

  self->_ioKernelCommandShmemCurrent = result + v7;
  self->_commandListHeader->var1 = result + v7 - LODWORD(self->_ioKernelCommandShmemStart);
  return result;
}

- (void)setLabel:(id)a3
{
  v9.receiver = self;
  v9.super_class = IOGPUMetalIOCommandBuffer;
  [(_MTLObjectWithLabel *)&v9 setLabel:?];
  if (*__globalGPUCommPage)
  {
    v5 = [(MTLDevice *)self->_device deviceRef];
    globalTraceObjectID = self->_globalTraceObjectID;
    v7 = *MEMORY[0x1E6974338];
    v8 = *(&self->super.super.super.isa + v7);
    [a3 cStringUsingEncoding:1];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(v5, 8, 0, globalTraceObjectID, v8);
  }
}

- (BOOL)hasFollowOnWork
{
  if (self->_hasFollowOnGPUWork)
  {
    return 1;
  }

  v3 = atomic_load(&self->_notificationCount);
  return v3 != 0;
}

- (BOOL)validateNotificationCount
{
  p_notificationCount = &self->_notificationCount;
  v3 = atomic_load(&self->_notificationCount);
  if (v3 >= 0x2000)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(IOGPUMetalIOCommandBuffer *)p_notificationCount validateNotificationCount];
    }

    completionQueueDispatch = self->_queue->_completionQueueDispatch;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__IOGPUMetalIOCommandBuffer_validateNotificationCount__block_invoke;
    block[3] = &unk_1E8362AB0;
    block[4] = self;
    dispatch_async(completionQueueDispatch, block);
  }

  return v3 < 0x2000;
}

id __54__IOGPUMetalIOCommandBuffer_validateNotificationCount__block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeCommandCallbackBlocks];
  v3.receiver = *(a1 + 32);
  v3.super_class = IOGPUMetalIOCommandBuffer;
  return objc_msgSendSuper2(&v3, sel_didCompleteWithStatus_, 2);
}

- (void)completeCommandCallbackBlocks
{
  p_commandCallbackBlocks = &self->_commandCallbackBlocks;
  v3 = self[1].super.super.super.isa - self->_commandCallbackBlocks.__begin_;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = *(p_commandCallbackBlocks->__begin_ + v4);
      v6[2](v6, 4);
      _Block_release(v6);
      ++v4;
    }

    while (v5 != v4);
  }
}

- (id).cxx_construct
{
  *(self + 53) = 0;
  *(self + 54) = 0;
  *(self + 52) = 0;
  return self;
}

uint64_t __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2_cold_1(uint64_t a1, id *a2)
{
  v3 = *MEMORY[0x1E6974350];
  *(a1 + v3) = 1;
  result = [*a2 barrierComplete:*(*a2 + v3)];
  if (*__globalGPUCommPage)
  {
    v5 = *(*a2 + 50);

    return IOGPUDeviceTraceEvent();
  }

  return result;
}

- (void)growKernelCommandBuffer:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 392);
  v3 = 136315394;
  v4 = "[IOGPUMetalIOCommandBuffer growKernelCommandBuffer:]";
  v5 = 1024;
  v6 = v1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Failed to Allocate Shmem to grow IOCommandBuffer [commandBufferID: %u]", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)validateNotificationCount
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(a1);
  v3[0] = 67109376;
  v3[1] = v1;
  v4 = 1024;
  v5 = 0x2000;
  _os_log_error_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IOCommandBuffer NotificationCount(%u) >= IOQueue MaxNotificationDepth(%d)", v3, 0xEu);
  v2 = *MEMORY[0x1E69E9840];
}

@end