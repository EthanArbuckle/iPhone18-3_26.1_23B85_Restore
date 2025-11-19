@interface MTLGPUDebugCommandBuffer
- (MTLGPUDebugCommandBuffer)initWithCommandBuffer:(id)a3 commandQueue:(id)a4 descriptor:(id)a5;
- (id).cxx_construct;
- (id)_internalBindingTableForStage:(unint64_t)a3;
- (id)accelerationStructureCommandEncoder;
- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3;
- (id)blitCommandEncoder;
- (id)blitCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDescriptor:(id)a3;
- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3;
- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3;
- (id)renderCommandEncoderWithDescriptor:(id)a3;
- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5;
- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4;
- (id)temporaryBufferWithLength:(unint64_t)a3;
- (int)resourceUsageForTexture:(id)a3 stage:(unint64_t)a4;
- (pair<id<MTLBuffer>,)_temporaryBufferWithLength:(unint64_t)a3;
- (void)_addUsedBuffer:(id)a3;
- (void)_checkReportBuffers;
- (void)_lateInit;
- (void)_setInternalBindingTables:(id)a3 type:(unint64_t)a4;
- (void)addResidencySetGPUDebug:(id)a3 fromEncoder:(id)a4;
- (void)beginingEncoder:(id)a3 type:(unint64_t)a4;
- (void)dealloc;
- (void)encodeResourceTableBuffers:(id)a3 type:(unint64_t)a4;
- (void)endingEncoder:(id)a3 type:(unint64_t)a4;
- (void)markBuffer:(id)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)markTexture:(unint64_t)a3 usage:(unint64_t)a4 stages:(unint64_t)a5;
- (void)preCommit;
- (void)preCompletionHandlers;
- (void)useResidencySet:(id)a3;
- (void)useResidencySets:(const void *)a3 count:(unint64_t)a4;
@end

@implementation MTLGPUDebugCommandBuffer

- (MTLGPUDebugCommandBuffer)initWithCommandBuffer:(id)a3 commandQueue:(id)a4 descriptor:(id)a5
{
  v12.receiver = self;
  v12.super_class = MTLGPUDebugCommandBuffer;
  v6 = [(MTLToolsCommandBuffer *)&v12 initWithCommandBuffer:a3 parent:a4 descriptor:a5];
  v7 = v6;
  if (v6)
  {
    v8 = [(MTLToolsObject *)v6 device];
    *(v7 + 19) = v8 + 264;
    *(v7 + 20) = v8 + 292;
    *(v7 + 98) = a4;
    v9 = [(MTLDevice *)v8 areWritableHeapsEnabled];
    v10 = 3;
    if (!v9)
    {
      v10 = 1;
    }

    *(v7 + 83) = v10;
    *(v7 + 428) = [*(v7 + 3) supportsTileShaders];
    *(v7 + 429) = [*(v7 + 3) supportsMeshShaders];
    *(v7 + 78) = 0;
    *(v7 + 79) = 0;
    *(v7 + 106) = 0;
    [(MTLGPUDebugCommandBuffer *)v7 _lateInit];
  }

  return v7;
}

- (void)_addUsedBuffer:(id)a3
{
  std::mutex::lock((self + 248));
  v5 = (self + 224);
  v7 = *(self + 29);
  v6 = *(self + 30);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - *v5;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto19MTLGPUDebugViewable}*>>(self + 224, v12);
    }

    *(8 * v9) = a3;
    v8 = 8 * v9 + 8;
    v13 = *(self + 29) - *v5;
    v14 = (8 * v9 - v13);
    memcpy(v14, *v5, v13);
    v15 = *v5;
    *v5 = v14;
    *(self + 29) = v8;
    *(self + 30) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = a3;
    v8 = (v7 + 8);
  }

  *(self + 29) = v8;
  [(MTLToolsCommandBuffer *)self addRetainedObject:a3];

  std::mutex::unlock((self + 248));
}

- (void)_lateInit
{
  if ((*(self + 149) & 1) == 0)
  {
    *(self + 149) = 1;
    if ((*(*(self + 19) + 20) & 0x810000) == 0x10000)
    {
      *(self + 21) = [*(self + 3) newStageBufferArgumentEncoder];
    }

    v3 = (self + 200);
    *(self + 25) = MetalBufferHeap::allocBuffer((*(self + 3) + 112));
    *(self + 52) = v4;
    v5 = (self + 176);
    v7 = *(self + 23);
    v6 = *(self + 24);
    if (v7 >= v6)
    {
      v9 = (v7 - *v5) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v6 - *v5;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MetalBuffer>>(self + 176, v12);
      }

      v13 = (16 * v9);
      *v13 = *v3;
      v8 = 16 * v9 + 16;
      v14 = *(self + 23) - *v5;
      v15 = v13 - v14;
      memcpy(v13 - v14, *v5, v14);
      v16 = *v5;
      *v5 = v15;
      *(self + 23) = v8;
      *(self + 24) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = *v3;
      v8 = (v7 + 16);
    }

    *(self + 23) = v8;
    v17 = 5;
    v18 = self;
    do
    {
      *(v18 + 54) = [*(self + 3) newInternalBufferWithLength:320 options:0];
      v18 = (v18 + 8);
      --v17;
    }

    while (v17);
    if ((*(*(self + 19) + 20) & 0x200000001) != 0)
    {
      v19 = (self + 472);
      v20 = 64;
      do
      {
        BufferUsageTable::alloc(v19, *(self + 3), 1);
        v19 += 2;
        v20 -= 16;
      }

      while (v20);
      v21 = (self + 536);
      v22 = 64;
      do
      {
        ResourceUsageTable::alloc(v21, *(self + 3), (*(*(self + 19) + 16) << 18));
        v21 = (v21 + 16);
        v22 -= 16;
      }

      while (v22);
      v23 = (self + 600);
      v24 = 64;
      do
      {
        ResourceUsageTable::alloc(v23, *(self + 3), (*(*(self + 19) + 16) << 19));
        v23 = (v23 + 16);
        v24 -= 16;
      }

      while (v24);
    }
  }
}

- (int)resourceUsageForTexture:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 != 2)
    {
LABEL_9:
      v4 = (self + 536);
      return TextureUsageTable::getUsage(v4, a3);
    }

LABEL_8:
    v4 = (self + 552);
    return TextureUsageTable::getUsage(v4, a3);
  }

  if (a4 == 4)
  {
    goto LABEL_8;
  }

  if (a4 == 8)
  {
    v4 = (self + 568);
    return TextureUsageTable::getUsage(v4, a3);
  }

  if (a4 != 16)
  {
    goto LABEL_9;
  }

  v4 = (self + 584);
  return TextureUsageTable::getUsage(v4, a3);
}

- (pair<id<MTLBuffer>,)_temporaryBufferWithLength:(unint64_t)a3
{
  std::mutex::lock((self + 360));
  v5 = (self + 200);
  MTLBuffer = MetalBuffer::getMTLBuffer((self + 200));
  v7 = *(self + 27);
  v8 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + v8 > [MTLBuffer length])
  {
    [(MTLToolsObject *)self device];
    *v5 = MetalBufferHeap::allocBuffer((*(self + 3) + 112));
    *(self + 52) = v9;
    *(self + 27) = 0;
    MTLBuffer = MetalBuffer::getMTLBuffer((self + 200));
    v10 = (self + 176);
    v12 = *(self + 23);
    v11 = *(self + 24);
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<MetalBuffer>>(self + 176, v17);
      }

      v18 = (16 * v14);
      *v18 = *v5;
      v13 = 16 * v14 + 16;
      v19 = *(self + 23) - *v10;
      v20 = v18 - v19;
      memcpy(v18 - v19, *v10, v19);
      v21 = *v10;
      *v10 = v20;
      *(self + 23) = v13;
      *(self + 24) = 0;
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

    *(self + 23) = v13;
  }

  v22 = *(self + 27);
  *(self + 27) = v22 + v8;
  std::mutex::unlock((self + 360));
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
    v6 = (self + 424);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    os_unfair_lock_lock(self + 106);
  }

  v7 = [(MTLGPUDebugCommandBuffer *)self _temporaryBufferWithLength:a3];
  v9 = [[MTLGPUDebugBuffer alloc] initWithBuffer:v7 device:*(self + 3) offset:v8 length:a3];
  [(MTLToolsCommandBuffer *)self addRetainedObject:v9];

  if (v6)
  {
    os_unfair_lock_unlock(v6);
  }

  return v9;
}

- (id)temporaryBufferWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v6 = [(MTLGPUDebugCommandBuffer *)self temporaryBufferWithLength:a4];
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
    BufferUsageTable::addResource(self + 59, *(self + 3), a3, v6 & 7);
  }

  if ((v5 & 6) != 0)
  {
    BufferUsageTable::addResource(self + 61, *(self + 3), a3, v6 & 7);
  }

  if ((v5 & 8) != 0)
  {
    BufferUsageTable::addResource(self + 63, *(self + 3), a3, v6 & 7);
  }

  if ((v5 & 0x10) != 0)
  {
    BufferUsageTable::addResource(self + 65, *(self + 3), a3, v6 & 7);
  }

  if (v11)
  {

    os_unfair_lock_unlock(v11);
  }
}

- (void)markTexture:(unint64_t)a3 usage:(unint64_t)a4 stages:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
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
    TextureUsageTable::addResource(self + 67, *(self + 3), v7, v6 & 7);
  }

  if ((v5 & 6) != 0)
  {
    TextureUsageTable::addResource(self + 69, *(self + 3), v7, v6 & 7);
  }

  if ((v5 & 8) != 0)
  {
    TextureUsageTable::addResource(self + 71, *(self + 3), v7, v6 & 7);
  }

  if ((v5 & 0x10) != 0)
  {
    TextureUsageTable::addResource(self + 73, *(self + 3), v7, v6 & 7);
  }

  if (v11)
  {

    os_unfair_lock_unlock(v11);
  }
}

- (void)_checkReportBuffers
{
  if (*(self + 97))
  {
    [(MTLGPUDebugCommandBuffer *)self _decodeReportLogState:?];
  }
}

- (void)beginingEncoder:(id)a3 type:(unint64_t)a4
{
  [MTLGPUDebugCommandBuffer _setInternalBindingTables:"_setInternalBindingTables:type:" type:?];
  if ((*(*(self + 19) + 20) & 0x200000001) != 0)
  {

    [(MTLGPUDebugCommandBuffer *)self encodeResourceTableBuffers:a3 type:a4];
  }
}

- (void)endingEncoder:(id)a3 type:(unint64_t)a4
{
  std::mutex::lock((self + 360));
  if ((*(*(self + 19) + 20) & 2) != 0)
  {
    v7 = [a3 encoderID];
    v10 = v7;
    v8 = [a3 label];
    if (a4 == 3)
    {
      v9 = [*(a3 + 1) label];
      if (v9)
      {

        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", v9, v8];
      }
    }

    if (!v8)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v7];
    }

    v11 = &v10;
    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(self + 40, &v10)[3] = v8;
  }

  ++*(self + 78);
  std::mutex::unlock((self + 360));
}

- (void)_setInternalBindingTables:(id)a3 type:(unint64_t)a4
{
  if (a4 == 3)
  {
LABEL_4:
    [a3 _setInternalBindingTableForStage:-[MTLGPUDebugCommandBuffer _internalBindingTableForStage:](self stage:{"_internalBindingTableForStage:", 1), 1}];
    [a3 _setInternalBindingTableForStage:-[MTLGPUDebugCommandBuffer _internalBindingTableForStage:](self stage:{"_internalBindingTableForStage:", 2), 2}];
    [a3 _setInternalBindingTableForStage:-[MTLGPUDebugCommandBuffer _internalBindingTableForStage:](self stage:{"_internalBindingTableForStage:", 16), 16}];
    [a3 _setInternalBindingTableForStage:-[MTLGPUDebugCommandBuffer _internalBindingTableForStage:](self stage:{"_internalBindingTableForStage:", 8), 8}];
    v6 = [(MTLGPUDebugCommandBuffer *)self _internalBindingTableForStage:4];

    [a3 _setInternalBindingTableForStage:v6 stage:4];
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

  v7 = *(self + 54);

  [a3 setInternalBindingTable:v7];
}

- (void)encodeResourceTableBuffers:(id)a3 type:(unint64_t)a4
{
  if (a4 == 3)
  {
LABEL_4:
    [a3 setBufferUsageTable:*(self + 59) textureUsageTable:*(self + 67) textureTypeTable:*(*(self + 3) + 432) forStage:1];
    [a3 setBufferUsageTable:*(self + 61) textureUsageTable:*(self + 69) textureTypeTable:*(*(self + 3) + 432) forStage:2];
    if ([*(self + 3) supportsMeshShaders])
    {
      [a3 setBufferUsageTable:*(self + 63) textureUsageTable:*(self + 71) textureTypeTable:*(*(self + 3) + 432) forStage:8];
      [a3 setBufferUsageTable:*(self + 65) textureUsageTable:*(self + 73) textureTypeTable:*(*(self + 3) + 432) forStage:16];
      v6 = *(self + 61);
      v7 = *(*(self + 3) + 432);
      v8 = *(self + 69);

      [a3 setBufferUsageTable:v6 textureUsageTable:v8 textureTypeTable:v7 forStage:4];
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

  v9 = *(self + 59);
  v10 = *(self + 67);
  v11 = *(*(self + 3) + 432);

  [a3 setBufferUsageTable:v9 textureUsageTable:v10 textureTypeTable:v11];
}

- (id)_internalBindingTableForStage:(unint64_t)a3
{
  v3 = (self + 432);
  v4 = __ROR8__(a3 - 2, 1);
  v5 = (self + 448);
  v6 = (self + 456);
  if (v4 != 7)
  {
    v6 = (self + 432);
  }

  if (v4 != 3)
  {
    v5 = v6;
  }

  if (v4 == 1)
  {
    v3 = (self + 464);
  }

  if (!v4)
  {
    v3 = (self + 440);
  }

  if (v4 > 2)
  {
    v3 = v5;
  }

  return *v3;
}

- (id)renderCommandEncoderWithDescriptor:(id)a3
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v5 = -[MTLGPUDebugRenderCommandEncoder initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLGPUDebugRenderCommandEncoder alloc], "initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) renderCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLRenderPassDescriptor:](self, "unwrapMTLRenderPassDescriptor:", a3)}], self, a3, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v5 type:0];

  return v5;
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v9 = -[MTLGPUDebugRenderCommandEncoder initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLGPUDebugRenderCommandEncoder alloc], "initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) sampledRenderCommandEncoderWithDescriptor:-[MTLToolsCommandBuffer unwrapMTLRenderPassDescriptor:](self programInfoBuffer:"unwrapMTLRenderPassDescriptor:" capacity:{a3), a4, a5}], self, a3, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v9 type:0];

  return v9;
}

- (id)parallelRenderCommandEncoderWithDescriptor:(id)a3
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v5 = -[MTLGPUDebugParallelRenderCommandEncoder initWithParallelRenderCommandEncoder:parent:descriptor:encoderID:]([MTLGPUDebugParallelRenderCommandEncoder alloc], "initWithParallelRenderCommandEncoder:parent:descriptor:encoderID:", [*(self + 2) parallelRenderCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLRenderPassDescriptor:](self, "unwrapMTLRenderPassDescriptor:", a3)}], self, a3, *(self + 78));

  return v5;
}

- (id)computeCommandEncoderWithDispatchType:(unint64_t)a3
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v5 = -[MTLGPUDebugComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLGPUDebugComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) computeCommandEncoderWithDispatchType:a3], self, 0, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v5 type:1];

  return v5;
}

- (id)sampledComputeCommandEncoderWithDispatchType:(unint64_t)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v9 = -[MTLGPUDebugComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLGPUDebugComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) sampledComputeCommandEncoderWithDispatchType:a3 programInfoBuffer:a4 capacity:a5], self, 0, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v9 type:1];

  return v9;
}

- (id)computeCommandEncoderWithDescriptor:(id)a3
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v5 = -[MTLGPUDebugComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLGPUDebugComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) computeCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLComputePassDescriptor:](self, "unwrapMTLComputePassDescriptor:", a3)}], self, a3, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v5 type:1];

  return v5;
}

- (id)sampledComputeCommandEncoderWithDescriptor:(id)a3 programInfoBuffer:(id *)a4 capacity:(unint64_t)a5
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v9 = -[MTLGPUDebugComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:]([MTLGPUDebugComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) sampledComputeCommandEncoderWithDescriptor:-[MTLToolsCommandBuffer unwrapMTLComputePassDescriptor:](self programInfoBuffer:"unwrapMTLComputePassDescriptor:" capacity:{a3), a4, a5}], self, a3, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v9 type:1];

  return v9;
}

- (id)blitCommandEncoder
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v3 = -[MTLGPUDebugBlitCommandEncoder initWithBlitCommandEncoder:parent:descriptor:encoderID:]([MTLGPUDebugBlitCommandEncoder alloc], "initWithBlitCommandEncoder:parent:descriptor:encoderID:", [*(self + 2) blitCommandEncoder], self, 0, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v3 type:2];

  return v3;
}

- (id)blitCommandEncoderWithDescriptor:(id)a3
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  v5 = -[MTLGPUDebugBlitCommandEncoder initWithBlitCommandEncoder:parent:descriptor:encoderID:]([MTLGPUDebugBlitCommandEncoder alloc], "initWithBlitCommandEncoder:parent:descriptor:encoderID:", [*(self + 2) blitCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLBlitPassDescriptor:](self, "unwrapMTLBlitPassDescriptor:", a3)}], self, a3, *(self + 78));
  [(MTLGPUDebugCommandBuffer *)self beginingEncoder:v5 type:2];

  return v5;
}

- (id)accelerationStructureCommandEncoder
{
  result = [*(self + 2) accelerationStructureCommandEncoder];
  if (result)
  {
    v4 = [[MTLGPUDebugAccelerationStructureCommandEncoder alloc] initWithAccelerationStructureCommandEncoder:result parent:self accelerationStructurePassDescriptor:0];

    return v4;
  }

  return result;
}

- (id)accelerationStructureCommandEncoderWithDescriptor:(id)a3
{
  [(MTLGPUDebugCommandBuffer *)self _lateInit];
  result = [*(self + 2) accelerationStructureCommandEncoderWithDescriptor:{-[MTLToolsCommandBuffer unwrapMTLAccelerationStructurePassDescriptor:](self, "unwrapMTLAccelerationStructurePassDescriptor:", a3)}];
  if (result)
  {
    v6 = [[MTLGPUDebugAccelerationStructureCommandEncoder alloc] initWithAccelerationStructureCommandEncoder:result parent:self accelerationStructurePassDescriptor:a3];

    return v6;
  }

  return result;
}

- (void)addResidencySetGPUDebug:(id)a3 fromEncoder:(id)a4
{
  v30 = a3;
  v5 = (self + 736);
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
    std::__hash_table<std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>>>::__emplace_unique_impl<unsigned long,MTLGPUDebugResidencySet *&>();
  }
}

- (void)useResidencySet:(id)a3
{
  if ((*(*(self + 19) + 20) & 0x200000001) != 0)
  {
    v7 = [a3 hash];
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(self + 87, &v7))
    {
      v6 = a3;
      v7 = [a3 hash];
      std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *>(self + 87, &v7);
    }
  }

  v5.receiver = self;
  v5.super_class = MTLGPUDebugCommandBuffer;
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
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(self + 87, &v11))
      {
        v11 = [v12 hash];
        std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(self + 87, &v11);
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v10.receiver = self;
  v10.super_class = MTLGPUDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v10 useResidencySets:a3 count:a4];
}

- (void)preCommit
{
  ii = self;
  v56 = *MEMORY[0x277D85DE8];
  v3 = *(*(self + 19) + 20);
  if ((v3 & 2) != 0 && !*(self + 97))
  {
    v4 = objc_alloc_init(MEMORY[0x277CD6EC8]);
    [v4 setBufferSize:1024];
    *&v51 = 0;
    v5 = [*(ii + 3) newLogStateWithDescriptor:v4 error:&v51];
    *(ii + 97) = v5;
    [v5 setUsedForShaderValidation:1];

    v6 = MTLGPUDebugLog();
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.Metal"];
    [*(ii + 97) populateDefaultLoggerCache:objc_msgSend(v7 logger:{"stringWithFormat:", @"%@%@", v8, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "GPUDebug")), v6}];
    v9 = [(MTLToolsObject *)ii baseObject];
    [v9 useInternalResidencySet:*(*(ii + 97) + *MEMORY[0x277CD70E0])];
    v10 = [*(ii + 98) baseObject];
    [*(v10 + *MEMORY[0x277CD70D0]) setReportBufferInPrivateData:objc_msgSend(*(ii + 2) privateDataOffset:"privateData") logState:{objc_msgSend(*(ii + 2), "privateDataOffset"), *(ii + 97)}];
    v3 = *(*(ii + 19) + 20);
  }

  if ((v3 & 0x200000001) != 0)
  {
    v11 = [(MTLToolsCommandBuffer *)ii commandQueue];
    v48 = 0u;
    v49 = 0u;
    v50 = 1065353216;
    v12 = [(MTLCommandQueue *)v11 residencySetsLock];
    os_unfair_lock_lock(v12);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = [(MTLCommandQueue *)v11 residencySetsArray];
    v14 = [v13 countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v14)
    {
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v13);
          }

          *&v51 = *(*(&v44 + 1) + 8 * i);
          *&v41 = [v51 hash];
          if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v48, &v41))
          {
            *&v41 = [v51 hash];
            std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(&v48, &v41);
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v14);
    }

    os_unfair_lock_unlock(v12);
    for (j = *(ii + 89); j; j = *j)
    {
      *&v51 = j[3];
      *&v41 = [v51 hash];
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v48, &v41))
      {
        *&v41 = [v51 hash];
        std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(&v48, &v41);
      }
    }

    for (k = *(ii + 94); k; k = *k)
    {
      for (m = k[5]; m; m = *m)
      {
        *&v51 = m[3];
        *&v41 = [v51 hash];
        if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v48, &v41))
        {
          *&v41 = [v51 hash];
          std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(&v48, &v41);
        }
      }
    }

    v41 = 0u;
    v42 = 0u;
    v43 = 1065353216;
    v38 = 0u;
    v39 = 0u;
    v40 = 1065353216;
    v20 = v49;
    if (v49)
    {
      v32 = ii;
      do
      {
        v21 = v20[3];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v22 = [v21 allCommittedAllocations];
        v23 = [v22 countByEnumeratingWithState:&v34 objects:v54 count:16];
        if (v23)
        {
          v24 = *v35;
          do
          {
            for (n = 0; n != v23; ++n)
            {
              if (*v35 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v34 + 1) + 8 * n);
              if (objc_opt_respondsToSelector())
              {
                *&v51 = v26;
                std::__hash_table<_MTLResource *,std::hash<_MTLResource *>,std::equal_to<_MTLResource *>,std::allocator<_MTLResource *>>::__emplace_unique_key_args<_MTLResource *,_MTLResource *>(&v41, &v51);
              }

              else if (objc_opt_respondsToSelector())
              {
                *&v51 = v26;
                std::__hash_table<_MTLHeap *,std::hash<_MTLHeap *>,std::equal_to<_MTLHeap *>,std::allocator<_MTLHeap *>>::__emplace_unique_key_args<_MTLHeap *,_MTLHeap *>(&v38, &v51);
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v34 objects:v54 count:16];
          }

          while (v23);
        }

        v20 = *v20;
      }

      while (v20);
      v27 = v42;
      for (ii = v32; v27; v27 = *v27)
      {
        v28 = v27[2];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MTLGPUDebugCommandBuffer *)v32 markBuffer:v28 usage:3 stages:31];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[MTLGPUDebugCommandBuffer markTexture:usage:stages:](v32, "markTexture:usage:stages:", [v28 gpuIdentifier], 3, 31);
          }
        }

        if ([v28 conformsToProtocol:&unk_284228AC0])
        {
          if (v28)
          {
            [v28 getActiveViews];
            for (jj = v52; jj; jj = *jj)
            {
              [(MTLGPUDebugCommandBuffer *)v32 markTexture:jj[2] usage:3 stages:31];
            }
          }

          else
          {
            v53 = 0;
            v51 = 0u;
            v52 = 0u;
          }

          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v51);
        }
      }
    }

    for (kk = v39; kk; kk = *kk)
    {
      [(MTLGPUDebugCommandBuffer *)ii markHeap:kk[2] usage:3 stages:31];
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v38);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v41);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v48);
    if ((*(*(ii + 19) + 20) & 0x200000001) != 0)
    {
      HeapUsageTable::apply((ii + 664), ii + 59, ii + 61, ii + 63, ii + 65, ii + 67, ii + 69, ii + 71, ii + 73, (ii + 600), (ii + 616), (ii + 632), (ii + 648));
    }
  }

  v33.receiver = ii;
  v33.super_class = MTLGPUDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v33 preCommit];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)preCompletionHandlers
{
  if ((*(*(self + 19) + 20) & 2) != 0)
  {
    [(MTLGPUDebugCommandBuffer *)self _checkReportBuffers];
  }

  v3 = (self + 472);
  v4 = 64;
  do
  {
    ResourceUsageTable::free(v3);
    v3 += 2;
    v4 -= 16;
  }

  while (v4);
  v5 = (self + 536);
  v6 = 64;
  do
  {
    ResourceUsageTable::free(v5);
    v5 += 2;
    v6 -= 16;
  }

  while (v6);
  for (i = 0; i != 40; i += 8)
  {
  }

  v8 = *(self + 22);
  v9 = *(self + 23);
  if (v8 != v9)
  {
    do
    {
      MetalBuffer::free(v8++);
    }

    while (v8 != v9);
    v8 = *(self + 22);
  }

  *(self + 23) = v8;
  v10 = *(self + 28);
  v11 = *(self + 29);
  if (v10 != v11)
  {
    do
    {
      v12 = *v10++;
    }

    while (v10 != v11);
    v10 = *(self + 28);
  }

  *(self + 29) = v10;
  v13.receiver = self;
  v13.super_class = MTLGPUDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v13 preCompletionHandlers];
}

- (void)dealloc
{
  for (i = *(self + 42); i; i = *i)
  {
  }

  v4 = *(self + 22);
  v5 = *(self + 23);
  if (v4 != v5)
  {
    do
    {
      MetalBuffer::free(v4++);
    }

    while (v4 != v5);
    v4 = *(self + 22);
  }

  *(self + 23) = v4;
  v6 = *(self + 28);
  v7 = *(self + 29);
  if (v6 != v7)
  {
    do
    {
      v8 = *v6++;
    }

    while (v6 != v7);
    v6 = *(self + 28);
  }

  *(self + 29) = v6;
  v9.receiver = self;
  v9.super_class = MTLGPUDebugCommandBuffer;
  [(MTLToolsCommandBuffer *)&v9 dealloc];
}

- (id).cxx_construct
{
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 22) = 0;
  *(self + 25) = 0;
  *(self + 52) = 0;
  *(self + 29) = 0;
  *(self + 30) = 0;
  *(self + 28) = 0;
  *(self + 31) = 850045863;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 38) = 0;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 88) = 1065353216;
  *(self + 45) = 850045863;
  *(self + 23) = 0u;
  *(self + 24) = 0u;
  *(self + 25) = 0u;
  *(self + 52) = 0;
  *(self + 85) = 0;
  *(self + 86) = 0;
  *(self + 84) = 0;
  *(self + 696) = 0u;
  *(self + 712) = 0u;
  *(self + 182) = 1065353216;
  *(self + 46) = 0u;
  *(self + 47) = 0u;
  *(self + 192) = 1065353216;
  return self;
}

@end