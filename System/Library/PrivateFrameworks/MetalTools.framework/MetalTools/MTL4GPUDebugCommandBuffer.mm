@interface MTL4GPUDebugCommandBuffer
- (MTL4GPUDebugCommandBuffer)initWithCommandBuffer:(id)buffer device:(id)device;
- (id).cxx_construct;
- (id)computeCommandEncoder;
- (id)getRetainedData;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options;
- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length;
- (id)temporaryBufferWithLength:(unint64_t)length;
- (int)resourceUsageForBuffer:(id)buffer stage:(unint64_t)stage;
- (pair<id<MTLBuffer>,)_temporaryBufferWithLength:(unint64_t)length;
- (void)_Init;
- (void)_lateInit;
- (void)addResidencySetGPUDebug:(id)debug fromEncoder:(id)encoder;
- (void)addUsedPipelineState:(id)state;
- (void)applyResidencySets:(id)sets;
- (void)beginCommandBufferWithAllocator:(id)allocator;
- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)dealloc;
- (void)encodeResourceTableBuffers:(id)buffers type:(int64_t)type;
- (void)endCommandBuffer;
- (void)endingEncoder:(id)encoder type:(int64_t)type;
- (void)initReportBufferInPrivateData:(id)data;
- (void)markBuffer:(id)buffer usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)markTexture:(unint64_t)texture usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)preCommit:(id)commit;
- (void)setResidencyForBufferRange:(MTL4BufferRange)range;
- (void)setResidencyForResource:(id)resource;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
@end

@implementation MTL4GPUDebugCommandBuffer

- (void)addUsedPipelineState:(id)state
{
  usedPipelineStates = [*(self + 63) usedPipelineStates];

  [usedPipelineStates addObject:state];
}

- (void)_Init
{
  device = [(MTLToolsObject *)self device];
  *(self + 9) = device + 264;
  *(self + 10) = device + 292;
  *(self + 48) = 3;
  *(self + 188) = [(MTLDevice *)device supportsTileShaders];
  *(self + 189) = [(MTLDevice *)device supportsMeshShaders];
  *(self + 28) = 0;
  *(self + 46) = 0;
}

- (MTL4GPUDebugCommandBuffer)initWithCommandBuffer:(id)buffer device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTL4GPUDebugCommandBuffer;
  v4 = [(MTL4ToolsCommandBuffer *)&v6 initWithBaseObject:buffer parent:device];
  [(MTL4GPUDebugCommandBuffer *)v4 _Init];
  return v4;
}

- (void)markBuffer:(id)buffer usage:(unint64_t)usage stages:(unint64_t)stages
{
  stagesCopy = stages;
  usageCopy = usage;
  if (stages)
  {
    BufferUsageTable::addResource(self + 24, *(self + 3), buffer, usage & 7);
  }

  if ((stagesCopy & 6) != 0)
  {
    BufferUsageTable::addResource(self + 26, *(self + 3), buffer, usageCopy & 7);
  }

  if ((stagesCopy & 8) != 0)
  {
    BufferUsageTable::addResource(self + 28, *(self + 3), buffer, usageCopy & 7);
  }

  if ((stagesCopy & 0x10) != 0)
  {
    v9 = *(self + 3);

    BufferUsageTable::addResource(self + 30, v9, buffer, usageCopy & 7);
  }
}

- (void)markTexture:(unint64_t)texture usage:(unint64_t)usage stages:(unint64_t)stages
{
  stagesCopy = stages;
  usageCopy = usage;
  textureCopy = texture;
  if (stages)
  {
    TextureUsageTable::addResource(self + 32, *(self + 3), texture, usage & 7);
  }

  if ((stagesCopy & 6) != 0)
  {
    TextureUsageTable::addResource(self + 34, *(self + 3), textureCopy, usageCopy & 7);
  }

  if ((stagesCopy & 8) != 0)
  {
    TextureUsageTable::addResource(self + 36, *(self + 3), textureCopy, usageCopy & 7);
  }

  if ((stagesCopy & 0x10) != 0)
  {
    v9 = *(self + 3);

    TextureUsageTable::addResource(self + 38, v9, textureCopy, usageCopy & 7);
  }
}

- (id)getRetainedData
{
  result = *(self + 63);
  if (!result)
  {
    *(self + 63) = [[GPUDebugRetainedReportingData alloc] init:*(self + 3)];
    v4 = MetalBufferHeap::allocBuffer((*(self + 3) + 112));
    *(self + 11) = v4;
    *(self + 24) = v5;
    [*(self + 63) addUsedBuffer:{v4, *(self + 12)}];
    v6 = (self + 192);
    v7 = 64;
    do
    {
      BufferUsageTable::alloc(v6, *(self + 3), 1);
      v8._backingMemory = v6->_backingMemory;
      v6 += 2;
      [(MTL4GPUDebugCommandBuffer *)self setResidencyForResource:v8._backingMemory];
      v7 -= 16;
    }

    while (v7);
    v9 = (self + 256);
    v10 = 64;
    do
    {
      ResourceUsageTable::alloc(v9, *(self + 3), (*(*(self + 9) + 16) << 18));
      v11 = *v9;
      v9 = (v9 + 16);
      [(MTL4GPUDebugCommandBuffer *)self setResidencyForResource:v11];
      v10 -= 16;
    }

    while (v10);
    return *(self + 63);
  }

  return result;
}

- (void)setResidencyForResource:(id)resource
{
  cbAllocations = [*(self + 63) cbAllocations];

  [cbAllocations addObject:resource];
}

- (void)setResidencyForBufferRange:(MTL4BufferRange)range
{
  baseObject = [*(*(*(self + 3) + 384) + ((range.var0 >> 41) & 0x7FFFF8)) baseObject];

  [(MTL4GPUDebugCommandBuffer *)self setResidencyForResource:baseObject];
}

- (void)applyResidencySets:(id)sets
{
  v47 = *MEMORY[0x277D85DE8];
  if ((*(*(self + 9) + 20) & 0x200000001) != 0)
  {
    selfCopy = self;
    v39 = 0u;
    v40 = 0u;
    v41 = 1065353216;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    addedResidencySets = [sets addedResidencySets];
    v5 = [addedResidencySets countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v5)
    {
      v6 = *v36;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v36 != v6)
          {
            objc_enumerationMutation(addedResidencySets);
          }

          *&v42 = *(*(&v35 + 1) + 8 * i);
          *&v32 = [v42 hash];
          if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v39, &v32))
          {
            *&v32 = [v42 hash];
            std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(&v39, &v32);
          }
        }

        v5 = [addedResidencySets countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v5);
    }

    for (j = *(selfCopy + 54); j; j = *j)
    {
      *&v42 = j[3];
      *&v32 = [v42 hash];
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v39, &v32))
      {
        *&v32 = [v42 hash];
        std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(&v39, &v32);
      }
    }

    for (k = *(selfCopy + 59); k; k = *k)
    {
      for (m = k[5]; m; m = *m)
      {
        *&v42 = m[3];
        *&v32 = [v42 hash];
        if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(&v39, &v32))
        {
          *&v32 = [v42 hash];
          std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(&v39, &v32);
        }
      }
    }

    v32 = 0u;
    v33 = 0u;
    v34 = 1065353216;
    v29 = 0u;
    v30 = 0u;
    v31 = 1065353216;
    v11 = v40;
    if (v40)
    {
      v24 = selfCopy;
      do
      {
        v12 = v11[3];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        allCommittedAllocations = [v12 allCommittedAllocations];
        v14 = [allCommittedAllocations countByEnumeratingWithState:&v25 objects:v45 count:16];
        if (v14)
        {
          v15 = *v26;
          do
          {
            for (n = 0; n != v14; ++n)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(allCommittedAllocations);
              }

              v17 = *(*(&v25 + 1) + 8 * n);
              if (objc_opt_respondsToSelector())
              {
                *&v42 = v17;
                std::__hash_table<_MTLResource *,std::hash<_MTLResource *>,std::equal_to<_MTLResource *>,std::allocator<_MTLResource *>>::__emplace_unique_key_args<_MTLResource *,_MTLResource *>(&v32, &v42);
              }

              else if (objc_opt_respondsToSelector())
              {
                *&v42 = v17;
                std::__hash_table<_MTLHeap *,std::hash<_MTLHeap *>,std::equal_to<_MTLHeap *>,std::allocator<_MTLHeap *>>::__emplace_unique_key_args<_MTLHeap *,_MTLHeap *>(&v29, &v42);
              }
            }

            v14 = [allCommittedAllocations countByEnumeratingWithState:&v25 objects:v45 count:16];
          }

          while (v14);
        }

        v11 = *v11;
      }

      while (v11);
      v18 = v33;
      selfCopy = v24;
      while (v18)
      {
        v19 = v18[2];
        objc_opt_class();
        buffer = v19;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[MTL4GPUDebugCommandBuffer markTexture:usage:stages:](v24, "markTexture:usage:stages:", [v19 gpuIdentifier], 3, 31);
            goto LABEL_44;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_44;
          }

          buffer = [v19 buffer];
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v19 internalMTLBuffer])
          {
            buffer = [v19 internalMTLBuffer];
          }
        }

        [(MTL4GPUDebugCommandBuffer *)v24 markBuffer:buffer usage:3 stages:31];
LABEL_44:
        if ([v19 conformsToProtocol:&unk_284228AC0])
        {
          if (v19)
          {
            [v19 getActiveViews];
            for (ii = v43; ii; ii = *ii)
            {
              [(MTL4GPUDebugCommandBuffer *)v24 markTexture:ii[2] usage:3 stages:31];
            }
          }

          else
          {
            v44 = 0;
            v42 = 0u;
            v43 = 0u;
          }

          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v42);
        }

        v18 = *v18;
      }
    }

    for (jj = v30; jj; jj = *jj)
    {
      [(MTL4GPUDebugCommandBuffer *)selfCopy markHeap:jj[2] usage:3 stages:31];
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v29);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v32);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v39);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)preCommit:(id)commit
{
  [(MTL4GPUDebugCommandBuffer *)self applyResidencySets:commit];
  if ((*(*(self + 9) + 20) & 0x200000001) != 0)
  {
    HeapUsageTable::apply(self + 12, self + 24, self + 26, self + 28, self + 30, self + 32, self + 34, self + 36, self + 38, self + 20, self + 21, self + 22, self + 23);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v3 dealloc];
}

- (void)beginCommandBufferWithAllocator:(id)allocator
{
  *(self + 62) = allocator;
  v5 = *(self + 63);
  if (v5)
  {

    *(self + 63) = 0;
  }

  *(self + 63) = [(MTL4GPUDebugCommandBuffer *)self getRetainedData];
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(self + 52);
  v6.receiver = self;
  v6.super_class = MTL4GPUDebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v6 beginCommandBufferWithAllocator:allocator];
  [*(self + 63) setPrivateData:{objc_msgSend(*(self + 2), "privateData")}];
}

- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options
{
  *(self + 62) = allocator;
  v7 = *(self + 63);
  if (v7)
  {

    *(self + 63) = 0;
  }

  *(self + 63) = [(MTL4GPUDebugCommandBuffer *)self getRetainedData];
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(self + 52);
  v8.receiver = self;
  v8.super_class = MTL4GPUDebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v8 beginCommandBufferWithAllocator:allocator options:options];
  [*(self + 63) setPrivateData:{objc_msgSend(*(self + 2), "privateData")}];
}

- (void)initReportBufferInPrivateData:(id)data
{
  v5 = *(self + 2);
  v6 = MEMORY[0x277CD70D8];
  v7 = *(data + *MEMORY[0x277CD70D8]);
  v8 = [objc_msgSend(v5 "privateData")];
  v9 = v8 + [v5 privateDataOffset];
  *(v9 + 8) = [v7 gpuAddress];
  v10 = *(data + *v6);

  [(MTL4GPUDebugCommandBuffer *)self setResidencyForResource:v10];
}

- (void)addResidencySetGPUDebug:(id)debug fromEncoder:(id)encoder
{
  debugCopy = debug;
  v5 = (self + 456);
  v6 = [encoder hash];
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
    v13 = [encoder hash];
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
  v20 = [encoder hash];
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

  *&v27 = [debugCopy hash];
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(v25 + 3, &v27))
  {
    *&v27 = [debugCopy hash];
    std::__hash_table<std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLGPUDebugResidencySet *>>>::__emplace_unique_impl<unsigned long,MTLGPUDebugResidencySet *&>();
  }
}

- (void)useResidencySet:(id)set
{
  if ((*(*(self + 9) + 20) & 0x200000001) != 0)
  {
    v7 = [set hash];
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(self + 52, &v7))
    {
      setCopy = set;
      v7 = [set hash];
      std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *>(self + 52, &v7);
    }
  }

  v5.receiver = self;
  v5.super_class = MTL4GPUDebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v5 useResidencySet:set];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if ((*(*(self + 9) + 20) & 0x200000001) != 0 && count != 0)
  {
    setsCopy = sets;
    countCopy = count;
    do
    {
      v12 = *setsCopy;
      v11 = [v12 hash];
      if (!std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::find<unsigned long long>(self + 52, &v11))
      {
        v11 = [v12 hash];
        std::__hash_table<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLGPUDebugResidencySet *>>>::__emplace_unique_key_args<unsigned long,unsigned long,MTLGPUDebugResidencySet *&>(self + 52, &v11);
      }

      ++setsCopy;
      --countCopy;
    }

    while (countCopy);
  }

  v10.receiver = self;
  v10.super_class = MTL4GPUDebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v10 useResidencySets:sets count:count];
}

- (void)_lateInit
{
  if ((*(self + 68) & 1) == 0)
  {
    *(self + 68) = 1;
    if (!*(self + 63))
    {
      *(self + 63) = [(MTL4GPUDebugCommandBuffer *)self getRetainedData];
    }
  }
}

- (void)endCommandBuffer
{
  [*(*(self + 3) + 680) commit];
  [-[MTLToolsObject baseObject](self "baseObject")];
  v3.receiver = self;
  v3.super_class = MTL4GPUDebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v3 endCommandBuffer];
}

- (int)resourceUsageForBuffer:(id)buffer stage:(unint64_t)stage
{
  if (stage <= 3)
  {
    if (stage != 2)
    {
LABEL_9:
      v4 = (self + 192);
      return BufferUsageTable::getUsage(v4, buffer);
    }

LABEL_8:
    v4 = (self + 208);
    return BufferUsageTable::getUsage(v4, buffer);
  }

  if (stage == 4)
  {
    goto LABEL_8;
  }

  if (stage == 8)
  {
    v4 = (self + 224);
    return BufferUsageTable::getUsage(v4, buffer);
  }

  if (stage != 16)
  {
    goto LABEL_9;
  }

  v4 = (self + 240);
  return BufferUsageTable::getUsage(v4, buffer);
}

- (pair<id<MTLBuffer>,)_temporaryBufferWithLength:(unint64_t)length
{
  std::mutex::lock((self + 120));
  v5 = (self + 88);
  MTLBuffer = MetalBuffer::getMTLBuffer((self + 88));
  v7 = *(self + 13);
  v8 = (length + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 + v8 > [MTLBuffer length])
  {
    [(MTLToolsObject *)self device];
    *v5 = MetalBufferHeap::allocBuffer((*(self + 3) + 112));
    *(self + 24) = v9;
    *(self + 13) = 0;
    MTLBuffer = MetalBuffer::getMTLBuffer((self + 88));
    [*(self + 63) addUsedBuffer:{*v5, *(self + 12)}];
  }

  v10 = *(self + 13);
  *(self + 13) = v10 + v8;
  std::mutex::unlock((self + 120));
  v11 = MTLBuffer;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (id)temporaryBufferWithLength:(unint64_t)length
{
  v5 = [(MTL4GPUDebugCommandBuffer *)self _temporaryBufferWithLength:?];
  v7 = [[MTLGPUDebugBuffer alloc] initWithBuffer:v5 device:*(self + 3) offset:v6 length:length track:0];

  return v7;
}

- (id)temporaryBufferWithBytes:(const void *)bytes length:(unint64_t)length
{
  v6 = [(MTL4GPUDebugCommandBuffer *)self temporaryBufferWithLength:length];
  memcpy([v6 contents], bytes, length);
  return v6;
}

- (void)endingEncoder:(id)encoder type:(int64_t)type
{
  std::mutex::lock((self + 120));
  if ((*(*(self + 9) + 20) & 2) != 0)
  {
    encoderID = [encoder encoderID];
    if ([encoder label])
    {
      label = [encoder label];
    }

    else
    {
      label = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", encoderID];
    }

    [*(self + 63) setEncoderLabelForIndex:label encoderIndex:encoderID];
  }

  std::mutex::unlock((self + 120));
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options
{
  [(MTL4GPUDebugCommandBuffer *)self _lateInit];
  v7 = -[MTL4GPUDebugRenderCommandEncoder initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:]([MTL4GPUDebugRenderCommandEncoder alloc], "initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) renderCommandEncoderWithDescriptor:-[MTL4ToolsCommandBuffer unwrappedMTL4RenderPassDescriptor:](self options:{"unwrappedMTL4RenderPassDescriptor:", descriptor), options}], self, descriptor, objc_msgSend(*(self + 3), "incrementCurrentEncoderID"));
  [(MTL4GPUDebugCommandBuffer *)self beginningEncoder:v7 type:1];

  return v7;
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
{
  [(MTL4GPUDebugCommandBuffer *)self _lateInit];
  v5 = -[MTL4GPUDebugRenderCommandEncoder initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:]([MTL4GPUDebugRenderCommandEncoder alloc], "initWithRenderCommandEncoder:commandBuffer:descriptor:encoderID:", [*(self + 2) renderCommandEncoderWithDescriptor:{-[MTL4ToolsCommandBuffer unwrappedMTL4RenderPassDescriptor:](self, "unwrappedMTL4RenderPassDescriptor:", descriptor)}], self, 0, objc_msgSend(*(self + 3), "incrementCurrentEncoderID"));
  [(MTL4GPUDebugCommandBuffer *)self beginningEncoder:v5 type:1];

  return v5;
}

- (id)computeCommandEncoder
{
  [(MTL4GPUDebugCommandBuffer *)self _lateInit];
  v3 = -[MTL4GPUDebugComputeCommandEncoder initWithComputeCommandEncoder:commandBuffer:encoderID:]([MTL4GPUDebugComputeCommandEncoder alloc], "initWithComputeCommandEncoder:commandBuffer:encoderID:", [*(self + 2) computeCommandEncoder], self, objc_msgSend(*(self + 3), "incrementCurrentEncoderID"));
  [(MTL4GPUDebugCommandBuffer *)self beginningEncoder:v3 type:2];

  return v3;
}

- (void)encodeResourceTableBuffers:(id)buffers type:(int64_t)type
{
  if (type == 2)
  {
    v8 = *(self + 24);
    v9 = *(self + 32);

    [buffers setBufferUsageTable:v8 textureUsageTable:v9];
  }

  else if (type == 1)
  {
    [buffers setBufferUsageTable:*(self + 24) textureUsageTable:*(self + 32) forStage:1];
    [buffers setBufferUsageTable:*(self + 26) textureUsageTable:*(self + 34) forStage:2];
    if ([*(self + 3) supportsMeshShaders])
    {
      [buffers setBufferUsageTable:*(self + 28) textureUsageTable:*(self + 36) forStage:8];
      [buffers setBufferUsageTable:*(self + 30) textureUsageTable:*(self + 38) forStage:16];
      v6 = *(self + 26);
      v7 = *(self + 34);

      [buffers setBufferUsageTable:v6 textureUsageTable:v7 forStage:4];
    }
  }
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 24) = 0;
  *(self + 15) = 850045863;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 22) = 0;
  *(self + 50) = 0;
  *(self + 51) = 0;
  *(self + 49) = 0;
  *(self + 26) = 0u;
  *(self + 27) = 0u;
  *(self + 112) = 1065353216;
  *(self + 456) = 0u;
  *(self + 472) = 0u;
  *(self + 122) = 1065353216;
  return self;
}

@end