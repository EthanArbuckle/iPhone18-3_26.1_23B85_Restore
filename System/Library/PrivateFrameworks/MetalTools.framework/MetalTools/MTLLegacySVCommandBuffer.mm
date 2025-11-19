@interface MTLLegacySVCommandBuffer
- (MTLLegacySVCommandBuffer)initWithCommandBuffer:(id)a3 commandQueue:(id)a4 descriptor:(id)a5;
- (ReportBufferEntry)_allocReportEntryStorageForType:(SEL)a3;
- (id).cxx_construct;
- (id)_newReportBuffer;
- (id)accelerationStructureCommandEncoder;
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (id)encodeBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5 resultOffset:(unint64_t *)a6;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3;
- (id)renderCommandEncoderWithDescriptor:(id)a3;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)temporaryBufferWithLength:(unint64_t)a3;
- (int)resourceUsageForBuffer:(id)a3 stage:(unint64_t)a4;
- (int)resourceUsageForTexture:(id)a3 stage:(unint64_t)a4;
- (pair<id<MTLBuffer>,)_temporaryBufferWithLength:(unint64_t)a3;
- (void)_checkReportBuffers;
- (void)_encodeReportBuffer:(id)a3 type:(unint64_t)a4;
- (void)_lateInit;
- (void)addResidencySetGPUDebug:(id)a3 fromEncoder:(id)a4;
- (void)beginUseOfMeshShadersInEncoder:(id)a3;
- (void)beginingEncoder:(id)a3 type:(unint64_t)a4;
- (void)dealloc;
- (void)encodeResourceTableBuffers:(id)a3 type:(unint64_t)a4;
- (void)endingEncoder:(id)a3 type:(unint64_t)a4;
- (void)markAccelerationStructure:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)markBuffer:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)markHeap:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)markTexture:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)preCommit;
- (void)preCompletionHandlers;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
@end

@implementation MTLLegacySVCommandBuffer

- (MTLLegacySVCommandBuffer)initWithCommandBuffer:(id)a3 commandQueue:(id)a4 descriptor:(id)a5
{
  v11.receiver = self;
  v11.super_class = MTLLegacySVCommandBuffer;
  v5 = [(MTLToolsCommandBuffer *)&v11 initWithCommandBuffer:a3 parent:a4 descriptor:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(MTLToolsObject *)v5 device];
    *(v6 + 19) = v7 + 264;
    *(v6 + 20) = v7 + 292;
    v8 = [(MTLDevice *)v7 areWritableHeapsEnabled];
    v9 = 3;
    if (!v8)
    {
      v9 = 1;
    }

    *(v6 + 59) = v9;
    *(v6 + 404) = [*(v6 + 3) supportsTileShaders];
    *(v6 + 405) = [*(v6 + 3) supportsMeshShaders];
    *(v6 + 64) = 0;
    *(v6 + 65) = 0;
    *(v6 + 100) = 0;
  }

  return v6;
}

- (void)_lateInit
{
  if ((*(self + 149) & 1) == 0)
  {
    *(self + 149) = 1;
    v3 = *(*(self + 19) + 20);
    if ((v3 & 0x810000) == 0x10000)
    {
      *(self + 21) = [*(self + 3) newStageBufferArgumentEncoder];
      v3 = *(*(self + 19) + 20);
    }

    if ((v3 & 2) != 0)
    {
      *(self + 22) = [(MTLLegacySVCommandBuffer *)self _newReportBuffer];
      *(self + 23) = 0;
      *(self + 24) = [(MTLLegacySVCommandBuffer *)self _newReportBuffer];
      *(self + 25) = 0;
    }

    v4 = (self + 232);
    *(self + 29) = LegacySVMetalBufferHeap::allocBuffer((*(self + 3) + 112));
    *(self + 60) = v5;
    v6 = (self + 208);
    v8 = *(self + 27);
    v7 = *(self + 28);
    if (v8 >= v7)
    {
      v10 = (v8 - *v6) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v12 = v7 - *v6;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MetalBuffer>>(self + 208, v13);
      }

      v14 = (16 * v10);
      *v14 = *v4;
      v9 = 16 * v10 + 16;
      v15 = *(self + 27) - *v6;
      v16 = v14 - v15;
      memcpy(v14 - v15, *v6, v15);
      v17 = *v6;
      *v6 = v16;
      *(self + 27) = v9;
      *(self + 28) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = *v4;
      v9 = (v8 + 16);
    }

    *(self + 27) = v9;
    if ((*(*(self + 19) + 20) & 0x200000001) != 0)
    {
      for (i = 0; i != 32; i += 8)
      {
        v19 = [*(self + 3) newInternalBufferWithLength:0x40000 options:0];
        *(self + i + 408) = v19;
        v20 = [v19 contents];
        *v20 |= 0xCu;
      }

      for (j = 0; j != 32; j += 8)
      {
        *(self + j + 440) = [*(self + 3) newInternalBufferWithLength:(*(*(self + 19) + 16) << 18) options:0];
      }
    }
  }
}

- (int)resourceUsageForBuffer:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 != 2)
    {
LABEL_8:
      v5 = (self + 408);
      goto LABEL_10;
    }

LABEL_7:
    v5 = (self + 416);
    goto LABEL_10;
  }

  if (a4 == 4)
  {
    goto LABEL_7;
  }

  if (a4 == 8)
  {
    v5 = (self + 424);
    goto LABEL_10;
  }

  if (a4 != 16)
  {
    goto LABEL_8;
  }

  v5 = (self + 432);
LABEL_10:
  v6 = [*v5 contents];
  v7 = [a3 bufferIndex];
  return (*(v6 + (v7 >> 2)) >> (2 * (v7 & 3))) & 3;
}

- (int)resourceUsageForTexture:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 != 2)
    {
LABEL_8:
      v5 = (self + 440);
      goto LABEL_10;
    }

LABEL_7:
    v5 = (self + 448);
    goto LABEL_10;
  }

  if (a4 == 4)
  {
    goto LABEL_7;
  }

  if (a4 == 8)
  {
    v5 = (self + 456);
    goto LABEL_10;
  }

  if (a4 != 16)
  {
    goto LABEL_8;
  }

  v5 = (self + 464);
LABEL_10:
  v6 = [*v5 contents];
  v7 = [a3 gpuIdentifier];
  return (*(v6 + (v7 >> 2)) >> (2 * (v7 & 3))) & 3;
}

- (pair<id<MTLBuffer>,)_temporaryBufferWithLength:(unint64_t)a3
{
  std::mutex::lock((self + 336));
  v5 = (self + 232);
  MTLBuffer = LegacySVMetalBuffer::getMTLBuffer((self + 232));
  v7 = *(self + 31);
  v8 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + v8 > [MTLBuffer length])
  {
    *v5 = LegacySVMetalBufferHeap::allocBuffer(([(MTLToolsObject *)self device]+ 112));
    *(self + 60) = v9;
    *(self + 31) = 0;
    MTLBuffer = LegacySVMetalBuffer::getMTLBuffer((self + 232));
    v10 = (self + 208);
    v12 = *(self + 27);
    v11 = *(self + 28);
    if (v12 >= v11)
    {
      v14 = (v12 - *v10) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - *v10;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MetalBuffer>>(self + 208, v17);
      }

      v18 = (16 * v14);
      *v18 = *v5;
      v13 = 16 * v14 + 16;
      v19 = *(self + 27) - *v10;
      v20 = v18 - v19;
      memcpy(v18 - v19, *v10, v19);
      v21 = *v10;
      *v10 = v20;
      *(self + 27) = v13;
      *(self + 28) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v12 = *v5;
      v13 = (v12 + 16);
    }

    *(self + 27) = v13;
  }

  v22 = *(self + 31);
  *(self + 31) = v22 + v8;
  std::mutex::unlock((self + 336));
  v23 = MTLBuffer;
  v24 = v22;
  result.var1 = v24;
  result.var0 = v23;
  return result;
}

- (id)temporaryBufferWithLength:(unint64_t)a3
{
  v5 = [(MTLToolsCommandBuffer *)self useRetainedObjectsLock];
  if (v5)
  {
    v6 = (self + 400);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    os_unfair_lock_lock(self + 100);
  }

  v7 = [(MTLLegacySVCommandBuffer *)self _temporaryBufferWithLength:a3];
  v9 = [[MTLLegacySVBuffer alloc] initWithBuffer:v7 device:*(self + 3) offset:v8 length:a3];
  [(MTLToolsCommandBuffer *)self addRetainedObject:v9];

  if (v6)
  {
    os_unfair_lock_unlock(v6);
  }

  return v9;
}

- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v6 = [(MTLLegacySVCommandBuffer *)self temporaryBufferWithLength:a4];
  memcpy([v6 contents], a3, a4);
  return v6;
}

- (void)markBuffer:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v9 = *(self + 44);
  v10 = (self + 40);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    os_unfair_lock_lock(v10);
  }

  if (v5)
  {
  }

  if ((v5 & 6) != 0)
  {
  }

  if ((v5 & 8) != 0)
  {
  }

  if ((v5 & 0x10) != 0)
  {
  }

  if (v11)
  {

    os_unfair_lock_unlock(v11);
  }
}

- (void)markAccelerationStructure:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v9 = *(self + 44);
  v10 = (self + 40);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    os_unfair_lock_lock(v10);
  }

  if (v5)
  {
  }

  if ((v5 & 6) != 0)
  {
  }

  if (v11)
  {

    os_unfair_lock_unlock(v11);
  }
}

- (void)markTexture:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v9 = *(self + 44);
  v10 = (self + 40);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    os_unfair_lock_lock(v10);
  }

  if (v5)
  {
  }

  if ((v5 & 6) != 0)
  {
  }

  if ((v5 & 8) != 0)
  {
  }

  if ((v5 & 0x10) != 0)
  {
  }

  if (v11)
  {

    os_unfair_lock_unlock(v11);
  }
}

- (void)markHeap:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v5 = (self + 472);
  v7 = *(self + 60);
  v6 = *(self + 61);
  v8 = v7;
  if (v7 != v6)
  {
    v8 = *(self + 60);
    while (*v8 != a3)
    {
      v8 += 24;
      if (v8 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  if (v8 == v6)
  {
LABEL_8:
    v10 = *v5 | a4;
    v11 = *(self + 62);
    if (v6 >= v11)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) + 1;
      if (v13 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v7) >> 3);
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v16 = (8 * ((v6 - v7) >> 3));
      *v16 = a3;
      v16[1] = a5;
      v16[2] = v10;
      v12 = v16 + 3;
      v17 = v16 - (v6 - v7);
      memcpy(v17, v7, v6 - v7);
      v5[1] = v17;
      v5[2] = v12;
      v5[3] = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v6 = a3;
      *(v6 + 1) = a5;
      v12 = v6 + 24;
      *(v6 + 2) = v10;
    }

    v5[2] = v12;
  }

  else
  {
    v9 = *(v8 + 2) | a4;
    *(v8 + 1) |= a5;
    *(v8 + 2) = v9;
  }
}

- (void)_checkReportBuffers
{
  v7 = [objc_msgSend(a2 "description")];
  *a1 = 136315138;
  *a3 = v7;
  _os_log_error_impl(&dword_22E0FF000, a4, OS_LOG_TYPE_ERROR, "%s", a1, 0xCu);
}

- (void)beginingEncoder:(id)a3 type:(unint64_t)a4
{
  v7 = *(*(self + 19) + 20);
  if ((v7 & 2) != 0)
  {
    std::mutex::lock((self + 336));
    [(MTLLegacySVCommandBuffer *)self _encodeReportBuffer:a3 type:a4];
    std::mutex::unlock((self + 336));
    v7 = *(*(self + 19) + 20);
  }

  if ((v7 & 0x200000001) != 0)
  {

    [(MTLLegacySVCommandBuffer *)self encodeResourceTableBuffers:a3 type:a4];
  }
}

- (void)endingEncoder:(id)a3 type:(unint64_t)a4
{
  std::mutex::lock((self + 336));
  if ((*(*(self + 19) + 20) & 2) != 0)
  {
    v7 = [a3 encoderID];
    v8 = v7;
    if (v7 >= ((*(self + 40) - *(self + 39)) >> 3))
    {
      std::vector<MTLGPUDebugBuffer *>::resize(self + 39, ((v7 + 1) * 1.5));
    }

    v9 = [a3 label];
    if (a4 == 3)
    {
      v10 = [*(a3 + 1) label];
      if (v10)
      {

        v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", v10, v9];
      }
    }

    *(*(self + 39) + 8 * v8) = v9;
  }

  ++*(self + 64);

  std::mutex::unlock((self + 336));
}

- (void)beginUseOfMeshShadersInEncoder:(id)a3
{
  if ((*(*(self + 19) + 20) & 2) != 0)
  {
    std::mutex::lock((self + 336));
    if (*(self + 406) == 1)
    {
      *(self + 406) = 0;
      [(MTLLegacySVCommandBuffer *)self _allocReportEntryStorageForType:8];
      [(MTLLegacySVCommandBuffer *)self _allocReportEntryStorageForType:7, 0];
      [a3 setObjectReportBuffer:0 offset:0];
      [a3 setMeshReportBuffer:0 offset:0];
    }

    std::mutex::unlock((self + 336));
  }
}

- (id)encodeBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5 resultOffset:(unint64_t *)a6
{
  length = a5.length;
  v10 = -[MTLLegacySVCommandBuffer _temporaryBufferWithLength:](self, "_temporaryBufferWithLength:", [*(self + 21) encodedLength]);
  v12 = v11;
  std::mutex::lock((self + 336));
  [*(self + 21) setArgumentBuffer:v10 offset:v12];
  if (length)
  {
    for (i = 0; length != i; ++i)
    {
      v14 = a3[i];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = *(self + 21);
          v16 = [v14 baseObject];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(self + 21) setVisibleFunctionTable:objc_msgSend(v14 atIndex:{"baseObject"), i}];
            continue;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v15 = *(self + 21);
          if (isKindOfClass)
          {
            [v15 setIntersectionFunctionTable:objc_msgSend(v14 atIndex:{"baseObject"), i}];
            continue;
          }

          v16 = [v14 baseObject];
        }

        [v15 setBuffer:v16 offset:a4[i] atIndex:i];
      }
    }
  }

  *a6 = v12;
  std::mutex::unlock((self + 336));
  return v10;
}

- (id)_newReportBuffer
{
  v3 = [*(self + 3) newInternalBufferWithLength:4960 options:0];
  v4 = -[MTLLegacySVBuffer initWithBuffer:device:offset:length:track:]([MTLLegacySVBuffer alloc], "initWithBuffer:device:offset:length:track:", v3, *(self + 3), 0, [v3 length], 0);

  return v4;
}

- (ReportBufferEntry)_allocReportEntryStorageForType:(SEL)a3
{
  v7 = &OBJC_IVAR___MTLLegacySVCommandBuffer__vertexComputeReportBuffer;
  if (a4 == 2)
  {
    v7 = &OBJC_IVAR___MTLLegacySVCommandBuffer__fragmentReportBuffer;
  }

  v8 = *v7;
  v9 = &OBJC_IVAR___MTLLegacySVCommandBuffer__vertexComputeReportOffset;
  if (a4 == 2)
  {
    v9 = &OBJC_IVAR___MTLLegacySVCommandBuffer__fragmentReportOffset;
  }

  v10 = *v9;
  v11 = *(self + v10) + 496;
  result = [*(self + v8) length];
  if (v11 <= result)
  {
    v17 = *(self + v10);
  }

  else
  {
    v13 = (self + 264);
    v15 = *(self + 34);
    v14 = *(self + 35);
    if (v15 >= v14)
    {
      v18 = (v15 - *v13) >> 3;
      if ((v18 + 1) >> 61)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v19 = v14 - *v13;
      v20 = v19 >> 2;
      if (v19 >> 2 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(self + 264, v21);
      }

      *(8 * v18) = *(self + v8);
      v16 = 8 * v18 + 8;
      v22 = *(self + 34) - *v13;
      v23 = (8 * v18 - v22);
      memcpy(v23, *v13, v22);
      v24 = *v13;
      *v13 = v23;
      *(self + 34) = v16;
      *(self + 35) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v15 = *(self + v8);
      v16 = (v15 + 8);
    }

    *(self + 34) = v16;
    result = [(MTLLegacySVCommandBuffer *)self _newReportBuffer];
    v17 = 0;
    *(self + v8) = result;
    *(self + v10) = 0;
  }

  retstr->var1 = *(self + v8);
  retstr->var2 = v17;
  retstr->var0 = a4;
  *(self + v10) = v17 + 496;
  v25 = self + 288;
  v26 = *(self + 37);
  v27 = *(self + 38);
  if (v26 >= v27)
  {
    v29 = *v25;
    v30 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v25) >> 3);
    v31 = v30 + 1;
    if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v32 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v29) >> 3);
    if (2 * v32 > v31)
    {
      v31 = 2 * v32;
    }

    if (v32 >= 0x555555555555555)
    {
      v33 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      if (v33 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v34 = 8 * ((v26 - *v25) >> 3);
    *v34 = *&retstr->var0;
    *(v34 + 16) = retstr->var2;
    v28 = 24 * v30 + 24;
    v35 = (v34 - (v26 - v29));
    result = memcpy(v35, v29, v26 - v29);
    *v25 = v35;
    *(v25 + 1) = v28;
    *(v25 + 2) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v26 = *&retstr->var0;
    *(v26 + 16) = retstr->var2;
    v28 = v26 + 24;
  }

  *(v25 + 1) = v28;
  return result;
}

- (void)encodeResourceTableBuffers:(id)a3 type:(unint64_t)a4
{
  if (a4 == 3)
  {
LABEL_4:
    v5 = (self + 408);
    v6 = (self + 440);
    [a3 setBufferUsageTable:*(self + 51) textureUsageTable:*(self + 55) forStage:1];
    [a3 setBufferUsageTable:v5[1] textureUsageTable:v6[1] forStage:2];
    [a3 setBufferUsageTable:v5[2] textureUsageTable:v6[2] forStage:8];
    v7 = v5[3];
    v8 = v6[3];

    [a3 setBufferUsageTable:v7 textureUsageTable:v8 forStage:16];
    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }

  v9 = *(self + 51);
  v10 = *(self + 55);

  [a3 setBufferUsageTable:v9 textureUsageTable:v10];
}

- (void)_encodeReportBuffer:(id)a3 type:(unint64_t)a4
{
  if (a4 == 3)
  {
LABEL_4:
    if (self)
    {
      [(MTLLegacySVCommandBuffer *)self _allocReportEntryStorageForType:1];
      [(MTLLegacySVCommandBuffer *)self _allocReportEntryStorageForType:2];
    }

    [a3 setVertexReportBuffer:0 offset:0];
    [a3 setFragmentReportBuffer:0 offset:0];
    if (*(self + 404) == 1)
    {
      [(MTLLegacySVCommandBuffer *)self _allocReportEntryStorageForType:2];
      [a3 setTileReportBuffer:0 offset:0];
    }

    if (*(self + 405) == 1)
    {
      *(self + 406) = 1;
    }

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }

  if (self)
  {
    [(MTLLegacySVCommandBuffer *)self _allocReportEntryStorageForType:3];
  }

  [a3 setKernelReportBuffer:0 offset:0];
}

- (id)renderCommandEncoderWithDescriptor:(id)a3
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v5 = -[MTLLegacySVRenderCommandEncoder initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLLegacySVRenderCommandEncoder alloc], "initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) renderCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLRenderPassDescriptor:](self, "unwrapMTLRenderPassDescriptor:", a3)}], self, a3, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v5 type:0];

  return v5;
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v9 = -[MTLLegacySVRenderCommandEncoder initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLLegacySVRenderCommandEncoder alloc], "initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) sampledRenderCommandEncoderWithDescriptor:-[MTLToolsCommandBuffer unwrapMTLRenderPassDescriptor:](self programInfoBuffer:"unwrapMTLRenderPassDescriptor:" capacity:{a3), a4, a5}], self, a3, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v9 type:0];

  return v9;
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v5 = -[MTLLegacySVParallelRenderCommandEncoder initWithParallelRenderCommandEncoder:parent:descriptor:encoderID:]([MTLLegacySVParallelRenderCommandEncoder alloc], "initWithParallelRenderCommandEncoder:parent:descriptor:encoderID:", [*(self + 2) parallelRenderCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLRenderPassDescriptor:](self, "unwrapMTLRenderPassDescriptor:", a3)}], self, a3, *(self + 64));

  return v5;
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v5 = -[MTLLegacySVComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLLegacySVComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) computeCommandEncoderWithDispatchType:a3], self, 0, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v5 type:1];

  return v5;
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v9 = -[MTLLegacySVComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLLegacySVComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) sampledComputeCommandEncoderWithDispatchType:a3 programInfoBuffer:a4 capacity:a5], self, 0, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v9 type:1];

  return v9;
}

- (id)computeCommandEncoderWithDescriptor:(id)a3
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v5 = -[MTLLegacySVComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLLegacySVComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) computeCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLComputePassDescriptor:](self, "unwrapMTLComputePassDescriptor:", a3)}], self, a3, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v5 type:1];

  return v5;
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v9 = -[MTLLegacySVComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLLegacySVComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) sampledComputeCommandEncoderWithDescriptor:-[MTLToolsCommandBuffer unwrapMTLComputePassDescriptor:](self programInfoBuffer:"unwrapMTLComputePassDescriptor:" capacity:{a3), a4, a5}], self, a3, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v9 type:1];

  return v9;
}

- (id)blitCommandEncoder
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v3 = -[MTLLegacySVBlitCommandEncoder initWithBlitCommandEncoder:parent:descriptor:encoderID:]([MTLLegacySVBlitCommandEncoder alloc], "initWithBlitCommandEncoder:parent:descriptor:encoderID:", [*(self + 2) blitCommandEncoder], self, 0, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v3 type:2];

  return v3;
}

- (id)blitCommandEncoderWithDescriptor:(id)a3
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  v5 = -[MTLLegacySVBlitCommandEncoder initWithBlitCommandEncoder:parent:descriptor:encoderID:]([MTLLegacySVBlitCommandEncoder alloc], "initWithBlitCommandEncoder:parent:descriptor:encoderID:", [*(self + 2) blitCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLBlitPassDescriptor:](self, "unwrapMTLBlitPassDescriptor:", a3)}], self, a3, *(self + 64));
  [(MTLLegacySVCommandBuffer *)self beginingEncoder:v5 type:2];

  return v5;
}

- (id)accelerationStructureCommandEncoder
{
  result = [*(self + 2) accelerationStructureCommandEncoder];
  if (result)
  {
    v4 = [[MTLLegacySVAccelerationStructureCommandEncoder alloc] initWithAccelerationStructureCommandEncoder:result parent:self accelerationStructurePassDescriptor:0];

    return v4;
  }

  return result;
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3
{
  [(MTLLegacySVCommandBuffer *)self _lateInit];
  result = [*(self + 2) accelerationStructureCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLAccelerationStructurePassDescriptor:](self, "unwrapMTLAccelerationStructurePassDescriptor:", a3)}];
  if (result)
  {
    v6 = [[MTLLegacySVAccelerationStructureCommandEncoder alloc] initWithAccelerationStructureCommandEncoder:result parent:self accelerationStructurePassDescriptor:a3];

    return v6;
  }

  return result;
}

- (void)addResidencySetGPUDebug:(id)a3 fromEncoder:(id)a4
{
  v30 = a3;
  v5 = (self + 544);
  v6 = [a4 hash];
  v7 = v5[1];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*v5 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    v13 = [a4 hash];
    v27 = 0u;
    v28 = 0u;
    LODWORD(v29) = 1065353216;
    v14 = v5[1];
    if (!*&v14)
    {
      goto LABEL_34;
    }

    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v13;
      if (v13 >= *&v14)
      {
        v16 = v13 % *&v14;
      }
    }

    else
    {
      v16 = (*&v14 - 1) & v13;
    }

    v17 = *(*v5 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_34:
      operator new();
    }

    while (1)
    {
      v19 = v18[1];
      if (v19 == v13)
      {
        if (v18[2] == v13)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v27);
          goto LABEL_35;
        }
      }

      else
      {
        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&v14)
          {
            v19 %= *&v14;
          }
        }

        else
        {
          v19 &= *&v14 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_34;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v6 == v12)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11[2] != v6)
  {
    goto LABEL_16;
  }

LABEL_35:
  v20 = [a4 hash];
  v21 = v5[1];
  if (!*&v21)
  {
    goto LABEL_51;
  }

  v22 = vcnt_s8(v21);
  v22.i16[0] = vaddlv_u8(v22);
  if (v22.u32[0] > 1uLL)
  {
    v23 = v20;
    if (v20 >= *&v21)
    {
      v23 = v20 % *&v21;
    }
  }

  else
  {
    v23 = (*&v21 - 1) & v20;
  }

  v24 = *(*v5 + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_51:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (2)
  {
    v26 = v25[1];
    if (v26 != v20)
    {
      if (v22.u32[0] > 1uLL)
      {
        if (v26 >= *&v21)
        {
          v26 %= *&v21;
        }
      }

      else
      {
        v26 &= *&v21 - 1;
      }

      if (v26 != v23)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v25[2] != v20)
    {
LABEL_50:
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  *&v27 = [v30 hash];
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(v25 + 3, &v27))
  {
    *&v27 = [v30 hash];
    std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::__emplace_unique_impl<unsigned long,MTLLegacySVResidencySet *&>();
  }
}

- (void)useResidencySet:(id)a3
{
  if ((*(*(self + 19) + 20) & 0x200000001) != 0)
  {
    v7 = [a3 hash];
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(self + 63, &v7))
    {
      v6 = a3;
      v7 = [a3 hash];
      std::__hash_table<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLLegacySVResidencySet *>(self + 63, &v7);
    }
  }

  v5.receiver = self;
  v5.super_class = MTLLegacySVCommandBuffer;
  [(MTLToolsCommandBuffer *)&v5 useResidencySet:a3];
}

- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4
{
  if ((*(*(self + 19) + 20) & 0x200000001) != 0 && a4 != 0)
  {
    v8 = a3;
    v9 = a4;
    do
    {
      v12 = *v8;
      v11 = [v12 hash];
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(self + 63, &v11))
      {
        v11 = [v12 hash];
        std::__hash_table<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLLegacySVResidencySet *&>(self + 63, &v11);
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v10.receiver = self;
  v10.super_class = MTLLegacySVCommandBuffer;
  [(MTLToolsCommandBuffer *)&v10 useResidencySets:a3 count:a4];
}

- (void)preCommit
{
  v69 = *MEMORY[0x277D85DE8];
  if ((*(*(self + 19) + 20) & 0x200000001) != 0)
  {
    v63 = 0u;
    v64 = 0u;
    LODWORD(v65) = 1065353216;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v3 = [(MTLCommandQueue *)[(MTLToolsCommandBuffer *)self commandQueue] residencySetsArray];
    v4 = [v3 countByEnumeratingWithState:&v42 objects:v68 count:16];
    if (v4)
    {
      v5 = *v43;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v43 != v5)
          {
            objc_enumerationMutation(v3);
          }

          *&v59 = *(*(&v42 + 1) + 8 * i);
          *&v55 = [v59 hash];
          if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v63, &v55))
          {
            *&v55 = [v59 hash];
            std::__hash_table<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLLegacySVResidencySet *&>(&v63, &v55);
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v42 objects:v68 count:16];
      }

      while (v4);
    }

    for (j = *(self + 65); j; j = *j)
    {
      *&v59 = j[3];
      *&v55 = [v59 hash];
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v63, &v55))
      {
        *&v55 = [v59 hash];
        std::__hash_table<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLLegacySVResidencySet *&>(&v63, &v55);
      }
    }

    for (k = *(self + 70); k; k = *k)
    {
      for (m = k[5]; m; m = *m)
      {
        *&v59 = m[3];
        *&v55 = [v59 hash];
        if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v63, &v55))
        {
          *&v55 = [v59 hash];
          std::__hash_table<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLLegacySVResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLLegacySVResidencySet *&>(&v63, &v55);
        }
      }
    }

    v59 = 0u;
    v60 = 0u;
    LODWORD(v61) = 1065353216;
    v55 = 0u;
    v56 = 0u;
    LODWORD(v57) = 1065353216;
    v10 = v64;
    if (v64)
    {
      do
      {
        v11 = v10[3];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v12 = [v11 allCommittedAllocations];
        v13 = [v12 countByEnumeratingWithState:&v38 objects:v67 count:16];
        if (v13)
        {
          v14 = *v39;
          do
          {
            for (n = 0; n != v13; ++n)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v38 + 1) + 8 * n);
              if (objc_opt_respondsToSelector())
              {
                v54[0] = v16;
                std::__hash_table<_MTLResource *,std::hash<_MTLResource *>,std::equal_to<_MTLResource *>,std::allocator<_MTLResource *>>::__emplace_unique_key_args<_MTLResource *,_MTLResource *>(&v59, v54);
              }

              else
              {
                v54[0] = v16;
                std::__hash_table<_MTLHeap *,std::hash<_MTLHeap *>,std::equal_to<_MTLHeap *>,std::allocator<_MTLHeap *>>::__emplace_unique_key_args<_MTLHeap *,_MTLHeap *>(&v55, v54);
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v38 objects:v67 count:16];
          }

          while (v13);
        }

        v10 = *v10;
      }

      while (v10);
      for (ii = v60; ii; ii = *ii)
      {
        v18 = ii[2];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MTLLegacySVCommandBuffer *)self markBuffer:v18 usage:3 stages:31];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(MTLLegacySVCommandBuffer *)self markTexture:v18 usage:3 stages:31];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(MTLLegacySVCommandBuffer *)self markAccelerationStructure:v18 usage:3 stages:31];
            }
          }
        }
      }
    }

    for (jj = v56; jj; jj = *jj)
    {
      [(MTLLegacySVCommandBuffer *)self markHeap:jj[2] usage:3 stages:31];
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v55);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v59);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v63);
    if ((*(*(self + 19) + 20) & 0x200000001) != 0)
    {
      v20 = *(self + 60);
      v21 = *(self + 61);
      if (v20 != v21)
      {
        v22 = MEMORY[0x277D85DD0];
        do
        {
          v23 = *(v20 + 8);
          if (v23)
          {
            v24 = *v20;
            *&v63 = MEMORY[0x277D85DD0];
            *(&v63 + 1) = 3221225472;
            *&v64 = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke;
            *(&v64 + 1) = &__block_descriptor_48_e12_v20__0_I8I16l;
            v65 = self + 408;
            v66 = v20;
            [v24 enumerateBufferIndices:&v63];
            v25 = *v20;
            *&v59 = v22;
            *(&v59 + 1) = 3221225472;
            *&v60 = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_2;
            *(&v60 + 1) = &__block_descriptor_48_e12_v20__0_I8I16l;
            v61 = self + 408;
            v62 = v20;
            [v25 enumerateAccelerationStructureIndices:&v59];
            v26 = *v20;
            *&v55 = v22;
            *(&v55 + 1) = 3221225472;
            *&v56 = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_3;
            *(&v56 + 1) = &__block_descriptor_48_e12_v20__0_I8I16l;
            v57 = self + 440;
            v58 = v20;
            [v26 enumerateTextureIndices:&v55];
            v23 = *(v20 + 8);
          }

          if ((v23 & 6) != 0)
          {
            v27 = *v20;
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_4;
            v54[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v54[4] = self + 416;
            v54[5] = v20;
            [v27 enumerateBufferIndices:v54];
            v28 = *v20;
            v53[0] = v22;
            v53[1] = 3221225472;
            v53[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_5;
            v53[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v53[4] = self + 416;
            v53[5] = v20;
            [v28 enumerateAccelerationStructureIndices:v53];
            v29 = *v20;
            v52[0] = v22;
            v52[1] = 3221225472;
            v52[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_6;
            v52[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v52[4] = self + 448;
            v52[5] = v20;
            [v29 enumerateTextureIndices:v52];
            v23 = *(v20 + 8);
          }

          if ((v23 & 8) != 0)
          {
            v30 = *v20;
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_7;
            v51[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v51[4] = self + 424;
            v51[5] = v20;
            [v30 enumerateBufferIndices:v51];
            v31 = *v20;
            v50[0] = v22;
            v50[1] = 3221225472;
            v50[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_8;
            v50[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v50[4] = self + 424;
            v50[5] = v20;
            [v31 enumerateAccelerationStructureIndices:v50];
            v32 = *v20;
            v49[0] = v22;
            v49[1] = 3221225472;
            v49[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_9;
            v49[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v49[4] = self + 456;
            v49[5] = v20;
            [v32 enumerateTextureIndices:v49];
            v23 = *(v20 + 8);
          }

          if ((v23 & 0x10) != 0)
          {
            v33 = *v20;
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_10;
            v48[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v48[4] = self + 432;
            v48[5] = v20;
            [v33 enumerateBufferIndices:v48];
            v34 = *v20;
            v47[0] = v22;
            v47[1] = 3221225472;
            v47[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_11;
            v47[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v47[4] = self + 432;
            v47[5] = v20;
            [v34 enumerateAccelerationStructureIndices:v47];
            v35 = *v20;
            v46[0] = v22;
            v46[1] = 3221225472;
            v46[2] = ___ZN12_GLOBAL__N_112_GLOBAL__N_114HeapUsageTable5applyERNS0_16BufferUsageTableES3_S3_S3_RNS0_17TextureUsageTableES5_S5_S5__block_invoke_12;
            v46[3] = &__block_descriptor_48_e12_v20__0_I8I16l;
            v46[4] = self + 464;
            v46[5] = v20;
            [v35 enumerateTextureIndices:v46];
          }

          v20 += 24;
        }

        while (v20 != v21);
      }
    }
  }

  v37.receiver = self;
  v37.super_class = MTLLegacySVCommandBuffer;
  [(MTLToolsCommandBuffer *)&v37 preCommit];
  v36 = *MEMORY[0x277D85DE8];
}

- (void)preCompletionHandlers
{
  if ((*(*(self + 19) + 20) & 2) != 0)
  {
    [(MTLLegacySVCommandBuffer *)self _checkReportBuffers];
  }

  v3 = 0;
  v4 = self + 408;
  do
  {

    *&v4[v3] = 0;
    v3 += 8;
  }

  while (v3 != 32);
  v5 = 0;
  v6 = self + 440;
  do
  {

    *&v6[v5] = 0;
    v5 += 8;
  }

  while (v5 != 32);
  v7 = *(self + 26);
  v8 = *(self + 27);
  if (v7 != v8)
  {
    do
    {
      LegacySVMetalBuffer::free(v7++);
    }

    while (v7 != v8);
    v7 = *(self + 26);
  }

  *(self + 27) = v7;
  v9.receiver = self;
  v9.super_class = MTLLegacySVCommandBuffer;
  [(MTLToolsCommandBuffer *)&v9 preCompletionHandlers];
}

- (void)dealloc
{
  v3 = *(self + 33);
  v4 = *(self + 34);
  while (v3 != v4)
  {
    v5 = *v3++;
  }

  v6 = *(self + 39);
  v7 = *(self + 40);
  while (v6 != v7)
  {
    v8 = *v6++;
  }

  v9 = *(self + 26);
  v10 = *(self + 27);
  if (v9 != v10)
  {
    do
    {
      LegacySVMetalBuffer::free(v9++);
    }

    while (v9 != v10);
    v9 = *(self + 26);
  }

  *(self + 27) = v9;
  *(self + 37) = *(self + 36);
  v11.receiver = self;
  v11.super_class = MTLLegacySVCommandBuffer;
  [(MTLToolsCommandBuffer *)&v11 dealloc];
}

- (id).cxx_construct
{
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 26) = 0;
  *(self + 29) = 0;
  *(self + 60) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 33) = 0;
  *(self + 37) = 0;
  *(self + 38) = 0;
  *(self + 36) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  *(self + 42) = 850045863;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 49) = 0;
  *(self + 61) = 0;
  *(self + 62) = 0;
  *(self + 60) = 0;
  *(self + 504) = 0u;
  *(self + 520) = 0u;
  *(self + 134) = 1065353216;
  *(self + 34) = 0u;
  *(self + 35) = 0u;
  *(self + 144) = 1065353216;
  return self;
}

@end