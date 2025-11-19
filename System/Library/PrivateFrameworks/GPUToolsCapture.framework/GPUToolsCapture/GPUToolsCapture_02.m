uint64_t AllocateDescriptorWithCount(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += (*(a2 + v5) + 7) & 0xFFFFFFFFFFFFFFF8;
    v5 += 8;
  }

  while (v5 != 600);
  v7 = *(*(a1 + 8) + 24);
  v8 = *(a1 + 24);
  v9 = *(a1 + 42);
  *(a1 + 42) = v9 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v7, v8, (v6 << 32) | (a3 << 16) | (a4 << 8) | v9);
  v11 = 0;
  v12 = Bytes + 16;
  do
  {
    if (((*(a2 + v11) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v12 += (*(a2 + v11) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + v11) = v13;
    v11 += 8;
  }

  while (v11 != 600);
  return Bytes[8];
}

uint64_t SaveMTLArray(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    bzero(v18, 0x258uLL);
    v19 = (8 * [v3 count] + 8);
    DescriptorWithCount = AllocateDescriptorWithCount(a1, v18, 0, 1u);
    v5 = [v3 count];
    v6 = v19;
    *v19 = v5;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = v6 + 1;
      v11 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v7);
          }

          *v10++ = [*(*(&v14 + 1) + 8 * i) streamReference];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    DescriptorWithCount = 0;
  }

  return DescriptorWithCount;
}

uint64_t SaveIOSurfaceRef(uint64_t a1, __IOSurface *a2)
{
  bzero(v6, 0x258uLL);
  TranslateGTIOSurface(a2, v6, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v6, 0x3Fu, 1u);
  TranslateGTIOSurface(a2, v6, 1);
  return DescriptorWithCount;
}

uint64_t SaveImageFilterFunctionInfo(uint64_t a1, uint64_t a2, int a3)
{
  bzero(v19, 0x258uLL);
  if (a3 <= 0)
  {
    return AllocateDescriptorWithCount(a1, v19, 0x14u, a3);
  }

  v6 = 0;
  v7 = a3 & 0x7FFFFFFF;
  v8 = (a2 + 8);
  v9 = v7;
  do
  {
    v10 = *v8;
    v8 += 3;
    v6 += 24 * v10;
    --v9;
  }

  while (v9);
  v20 = 24 * (a3 & 0x7FFFFFFF);
  __dst = v6;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v19, 0x14u, a3);
  v12 = v20;
  v13 = __dst;
  v14 = (a2 + 8);
  do
  {
    memcpy(v13, v14[1], 24 * *v14);
    *v12 = *(v14 - 8);
    v16 = *v14;
    v14 += 3;
    v15 = v16;
    if (v16)
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    *(v12 + 8) = v15;
    *(v12 + 16) = v17;
    v13 += 24 * v15;
    v12 += 24;
    --v7;
  }

  while (v7);
  return DescriptorWithCount;
}

uint64_t SaveMTLFunctionDescriptor(uint64_t a1, void *a2, void *a3)
{
  bzero(v10, 0x258uLL);
  v6 = a3;
  v7 = a2;
  TranslateGTMTLFunctionDescriptor(v7, v6, v10, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v10, 0x51u, 1u);
  TranslateGTMTLFunctionDescriptor(v7, v6, v10, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLIntersectionFunctionDescriptor(uint64_t a1, void *a2, void *a3)
{
  bzero(v10, 0x258uLL);
  v6 = a3;
  v7 = a2;
  TranslateGTMTLIntersectionFunctionDescriptor(v7, v6, v10, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v10, 0x5Du, 1u);
  TranslateGTMTLIntersectionFunctionDescriptor(v7, v6, v10, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLFunctionConstantValues(uint64_t a1, void *a2, void *a3)
{
  bzero(v10, 0x258uLL);
  v6 = a3;
  v7 = a2;
  TranslateGTMTLFunctionConstantValues(v6, v7, v10, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v10, 0x50u, 1u);
  TranslateGTMTLFunctionConstantValues(v6, v7, v10, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLDeviceDescriptor(uint64_t a1, void *a2)
{
  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLDeviceDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x41u, 1u);
  TranslateGTMTLDeviceDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLIndirectCommandBufferDescriptor(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v10, 0x258uLL);
  v6 = a3;
  v7 = a2;
  TranslateGTMTLIndirectCommandBufferDescriptorWithDevice(v7, v6, v10, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v10, 0x37u, 1u);
  TranslateGTMTLIndirectCommandBufferDescriptorWithDevice(v7, v6, v10, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLTextureDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(&v10, 0x250uLL);
  v4 = a2;
  v9 = 56;

  DescriptorWithCount = AllocateDescriptorWithCount(a1, &v9, 0x29u, 1u);
  v6 = v4;
  v7 = v9;
  *(v9 + 48) = 512;
  *v7 = GTMTLTextureDescriptorDefaults;
  v7[1] = unk_29CCD8;
  v7[2] = xmmword_29CCE8;
  TranslateGTMTLTextureDescriptorDirectly(v6, v7);

  return DescriptorWithCount;
}

uint64_t CopyGTMTLTextureDescriptor(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(&v10, 0x250uLL);
  v9 = 56;
  result = AllocateDescriptorWithCount(a1, &v9, 0x29u, 1u);
  v5 = v9;
  v7 = a2[1];
  v6 = a2[2];
  v8 = *a2;
  *(v9 + 48) = *(a2 + 6);
  v5[1] = v7;
  v5[2] = v6;
  *v5 = v8;
  return result;
}

uint64_t SaveMTLBufferDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 40;

  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x2Au, 1u);
  TranslateGTMTLBufferDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLSamplerDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLSamplerDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x35u, 1u);
  TranslateGTMTLSamplerDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLHeapDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLHeapDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x36u, 1u);
  TranslateGTMTLHeapDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLCommandQueueDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLCommandQueueDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x43u, 1u);
  TranslateGTMTLCommandQueueDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLIOCommandQueueDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 8;

  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x89u, 1u);
  TranslateGTMTLIOCommandQueueDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLCommandBufferDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 16;

  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x4Eu, 1u);
  TranslateGTMTLCommandBufferDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLVisibleFunctionTableDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 24;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x52u, 1u);
  TranslateGTMTLVisibleFunctionTableDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLCompileOptions(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLCompileOptions(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x49u, 1u);
  TranslateGTMTLCompileOptions(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLIntersectionFunctionTableDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x5Cu, 1u);
  TranslateGTMTLIntersectionFunctionTableDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLRenderPipelineFunctionsDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLRenderPipelineFunctionsDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x60u, 1u);
  TranslateGTMTLRenderPipelineFunctionsDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLAccelerationStructureAllocationDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 16;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x87u, 1u);
  TranslateGTMTLAccelerationStructureAllocationDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLResidencySetDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLResidencySetDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x8Eu, 1u);
  TranslateGTMTLResidencySetDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4ArgumentTableDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4ArgumentTableDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x8Fu, 1u);
  TranslateGTMTL4ArgumentTableDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4LibraryDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4LibraryDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x97u, 1u);
  TranslateGTMTL4LibraryDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4PipelineDataSetSerializerDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v8, 0x258uLL);
  v4 = a2;
  v9 = 1;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v8, 0x99u, 1u);
  v6 = v9;
  *v6 = [v4 configuration];

  return DescriptorWithCount;
}

uint64_t SaveMTL4CompilerTaskOptions(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4CompilerTaskOptions(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x9Du, 1u);
  TranslateGTMTL4CompilerTaskOptions(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4CompilerDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4CompilerDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x98u, 1u);
  TranslateGTMTL4CompilerDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLTensorDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLTensorDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x94u, 1u);
  TranslateGTMTLTensorDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLResourceViewPoolDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLResourceViewPoolDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA0u, 1u);
  TranslateGTMTLResourceViewPoolDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLTextureViewDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA1u, 1u);
  TranslateGTMTLTextureViewDescriptorDirectly(v4, v8);

  return DescriptorWithCount;
}

uint64_t CopyGTMTLTextureViewDescriptor(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v8, 0x258uLL);
  v9 = (&stru_20 + 8);
  result = AllocateDescriptorWithCount(a1, v8, 0xA1u, 1u);
  v5 = v9;
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  *v9 = *a2;
  v5[1] = v7;
  *(v5 + 4) = v6;
  return result;
}

uint64_t SaveMTL4CommandQueueDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4CommandQueueDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA2u, 1u);
  TranslateGTMTL4CommandQueueDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4PipelineStageDynamicLinkingDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4PipelineStageDynamicLinkingDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA3u, 1u);
  TranslateGTMTL4PipelineStageDynamicLinkingDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4CommandAllocatorDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4CommandAllocatorDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA7u, 1u);
  TranslateGTMTL4CommandAllocatorDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4CommandBufferOptions(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v9, 0x258uLL);
  v4 = a2;
  v10 = 8;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v9, 0xA9u, 1u);
  v6 = v10;
  v7 = [v4 logState];
  *v6 = [v7 streamReference];

  return DescriptorWithCount;
}

uint64_t SaveMTLMeshRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLMeshRenderPipelineDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x88u, 1u);
  TranslateGTMTLMeshRenderPipelineDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLDepthStencilDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLDepthStencilDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x34u, 1u);
  TranslateGTMTLDepthStencilDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLTileRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLTileRenderPipelineDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x39u, 1u);
  TranslateGTMTLTileRenderPipelineDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLRasterizationRateMapDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLRasterizationRateMapDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x45u, 1u);
  TranslateGTMTLRasterizationRateMapDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLBlitPassDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLBlitPassDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x24u, 1u);
  TranslateGTMTLBlitPassDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLComputePassDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLComputePassDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x26u, 1u);
  TranslateGTMTLComputePassDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLResourceStatePassDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLResourceStatePassDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x28u, 1u);
  TranslateGTMTLResourceStatePassDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLAccelerationStructurePassDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLAccelerationStructurePassDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x86u, 1u);
  TranslateGTMTLAccelerationStructurePassDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4RenderPipelineDynamicLinkingDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4RenderPipelineDynamicLinkingDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA4u, 1u);
  TranslateGTMTL4RenderPipelineDynamicLinkingDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLRenderPassDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLRenderPassDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x22u, 1u);
  TranslateGTMTLRenderPassDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLRenderPipelineDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x32u, 1u);
  TranslateGTMTLRenderPipelineDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLComputePipelineDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v8, 0x258uLL);
  v4 = a2;
  TranslateGTMTLComputePipelineDescriptorAuto(v4, v8, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v8, 0x3Du, 1u);
  v6 = v8[39];
  TranslateGTMTLComputePipelineDescriptorAuto(v4, v8, 1);
  *(v6 + 951) = -1;

  return DescriptorWithCount;
}

uint64_t SaveMTL4RenderPassDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4RenderPassDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x92u, 1u);
  TranslateGTMTL4RenderPassDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4BinaryFunctionDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4BinaryFunctionDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA5u, 1u);
  TranslateGTMTL4BinaryFunctionDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4PipelineDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4PipelineDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x9Cu, 1u);
  TranslateGTMTL4PipelineDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTL4AccelerationStructureDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTL4AccelerationStructureDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0xA8u, 1u);
  TranslateGTMTL4AccelerationStructureDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLAccelerationStructureDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLAccelerationStructureDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x5Bu, 1u);
  TranslateGTMTLAccelerationStructureDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLCounterSampleBufferDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLCounterSampleBufferDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x48u, 1u);
  TranslateGTMTLCounterSampleBufferDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLStitchedLibraryDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLStitchedLibraryDescriptor(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x66u, 1u);
  TranslateGTMTLStitchedLibraryDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLStitchedLibraryDescriptorSPI(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  TranslateGTMTLStitchedLibraryDescriptorSPI(v4, v7, 0);
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x66u, 1u);
  TranslateGTMTLStitchedLibraryDescriptorSPI(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLFXSpatialScalerDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x8Bu, 1u);
  TranslateGTMTLFXSpatialScalerDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLFXTemporalScalerDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 64;

  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x8Cu, 1u);
  TranslateGTMTLFXTemporalScalerDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLFXFrameInterpolatorDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 56;

  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x90u, 1u);
  TranslateGTMTLFXFrameInterpolatorDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

uint64_t SaveMTLFXTemporalDenoisedScalerDescriptor(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(v7, 0x258uLL);
  v4 = a2;
  v8 = 72;

  DescriptorWithCount = AllocateDescriptorWithCount(a1, v7, 0x91u, 1u);
  TranslateGTMTLFXTemporalDenoisedScalerDescriptor(v4, v7, 1);

  return DescriptorWithCount;
}

__n128 TranslateGTMTLCaptureDescriptor(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 448);
  *(a2 + 448) = v6 + 88;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = strlen(*(a1 + 56));
    v10 = (a2 + 592);
    v11 = *(a2 + 592);
    v12 = v8 + 1;
    if (v8 != -1)
    {
      v13 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v10 = (a2 + 592);
    v11 = *(a2 + 592);
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  *v10 = v11 + v12;
  if (a3)
  {
    memcpy(v13, v7, v12);
    *v6 = *a1;
    *(v6 + 16) = *(a1 + 16);
    result = *(a1 + 32);
    *(v6 + 32) = result;
    *(v6 + 48) = *(a1 + 48);
    *(v6 + 56) = v13;
    *(v6 + 72) = *(a1 + 72);
    *(v6 + 76) = *(a1 + 76);
    *(v6 + 78) = *(a1 + 78);
  }

  return result;
}

uint64_t SaveMTLCaptureDescriptor(uint64_t a1, uint64_t a2)
{
  bzero(v9, 0x258uLL);
  v10 = 88;
  v4 = *(a2 + 56);
  if (!v4 || (v5 = strlen(v4), v6 = v5 + 1, v5 == -1))
  {
    v6 = 0;
  }

  v11 = v6;
  DescriptorWithCount = AllocateDescriptorWithCount(a1, v9, 0x4Du, 1u);
  TranslateGTMTLCaptureDescriptor(a2, v9, 1);
  return DescriptorWithCount;
}

uint64_t GTResourceTrackerGetResourceType(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  entry = find_entry(a2, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v3 = *(*entry + 32);
  if (!v3 || !*v3)
  {
    return 0;
  }

  v4 = *(v3[4] + 72);

  return GTFenum_getConstructorType(v4);
}

uint64_t GTResourceTrackerUsingResource(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  if (a3)
  {
    v8 = result;
    result = find_entry(result, &v17, 8uLL, 0);
    if (!*result || !*(*result + 32))
    {
      v9 = apr_palloc(*v8, 0x10uLL);
      *v9 = v17;
      apr_hash_set(v8, v9, 8, v9);
      v18.i64[0] = v17;
      v10 = *find_entry(a4, &v18, 8uLL, 0);
      if (v10 && (v11 = *(v10 + 32)) != 0)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          v13 = v12 + 64;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      result = GTFenum_getConstructorType(*(v13 + 8));
      v9[2] = result;
      if (a2 <= 49)
      {
        if (a2 != 16)
        {
          if (a2 != 22)
          {
            return result;
          }

          v18 = 0u;
          v19 = 0;
          v25 = 0u;
          *&v26 = 0;
          v27 = 0u;
          v28 = 0u;
          v23 = 0u;
          v21 = 0u;
          v22 = 0u;
          v18.i32[0] = 22;
          v20 = -1;
          WORD5(v25) = 2;
          v24 = 0xFFFFFFFFFFFFFFFFLL;
          *&v29 = 0;
          *(&v26 + 1) = -1;
          GTMTLSMBuffer_processTraceFuncWithMap(v18.i8, a5, v13);
LABEL_19:
          v14 = v22;
LABEL_23:
          v15 = v8;
          v16 = 50;
          return GTResourceTrackerUsingResource(v15, v16, v14, a4, a5);
        }

        v18 = 0u;
        v19 = 0;
        *&v32 = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        v18.i32[0] = 16;
        v20 = -1;
        WORD5(v25) = 2;
        v24 = 0xFFFFFFFFFFFFFFFFLL;
        result = GTMTLSMAccelerationStructure_processTraceFuncWithMap(v18.i8, a5, v13);
        if (v22)
        {
          result = GTResourceTrackerUsingResource(v8, 50, v22, a4, a5);
        }

        v14 = *(&v28 + 1);
        if (*(&v28 + 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (a2 != 50)
        {
          if (a2 != 80)
          {
            if (a2 != 101)
            {
              return result;
            }

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v21 = 0u;
            v22 = 0u;
            v18 = 0u;
            v19 = 0;
            v18.i32[0] = 101;
            v20 = -1;
            WORD5(v25) = 2;
            v24 = 0xFFFFFFFFFFFFFFFFLL;
            result = GTMTLSMTensor_processTraceFuncWithMap(v18.i8, a5, v13);
            v14 = v27;
            if (!v27)
            {
              return result;
            }

            goto LABEL_31;
          }

          v18 = 0u;
          v19 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v21 = 0u;
          v22 = 0u;
          v18.i32[0] = 80;
          v20 = -1;
          WORD5(v25) = 2;
          v24 = 0xFFFFFFFFFFFFFFFFLL;
          *&v33 = 0xFFFFFFFFLL;
          GTMTLSMTexture_processTraceFuncWithMap(&v18, a5, v13);
          v14 = *(&v28 + 1);
          if (*(&v28 + 1))
          {
            v15 = v8;
            v16 = 80;
            return GTResourceTrackerUsingResource(v15, v16, v14, a4, a5);
          }

          v14 = v28;
          if (v28)
          {
LABEL_31:
            v15 = v8;
            v16 = 22;
            return GTResourceTrackerUsingResource(v15, v16, v14, a4, a5);
          }

          goto LABEL_19;
        }

        v18 = 0u;
        v19 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v18.i32[0] = 50;
        v20 = -1;
        WORD4(v24) = 2;
        result = GTMTLSMHeap_processTraceFuncWithMap(v18.i8, a5, v13);
        if (v22 && *(v22 + 20) != 2)
        {
          v14 = v18.i64[1];
          goto LABEL_23;
        }
      }
    }
  }

  return result;
}

void *GTResourceTrackerResourceWrite(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = tracker_resource_get(a1, a2, a3, a4);
  if (result)
  {
    result[4] = a4;
  }

  return result;
}

void *tracker_resource_get(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v23 = a3;
  GTResourceTrackerUsingResource(*(a1 + 24), a2, a3, *a1, *(a1 + 8));
  ParentResource = GetParentResource(a1, v5);
  if (ParentResource != v5)
  {
    find_entry(*a1, &ParentResource, 8uLL, 0);
    v5 = ParentResource;
    v23 = ParentResource;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  entry = find_entry(v7, &v23, 8uLL, 0);
  if (!*entry || (v9 = *(*entry + 32)) == 0)
  {
    v24 = v23;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = *find_entry(*a1, &v24, 8uLL, 0);
    if (v12)
    {
      v13 = *(v12 + 32);
      if (v13)
      {
        v14 = v13[4];
        if (v14)
        {
          if ((*(v14 + 79) & 8) != 0)
          {
            v15 = v14 + 64;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
LABEL_14:
    v16 = apr_palloc(v11, 0x38uLL);
    v9 = v16;
    if (v16)
    {
      v16[6] = 0;
      *(v16 + 1) = 0u;
      *(v16 + 2) = 0u;
      *v16 = 0u;
    }

    *v16 = v13[1];
    v16[1] = v24;
    ConstructorType = GTFenum_getConstructorType(*(v15 + 8));
    v9[3] = -1;
    *(v9 + 10) = ConstructorType;
    v9[2] = a4;
    v9[4] = -1;
    if (ConstructorType <= 59)
    {
      if (ConstructorType != 16)
      {
        if (ConstructorType == 22)
        {
          v25 = 0u;
          v26 = 0;
          v32 = 0u;
          v34 = 0u;
          v35 = 0u;
          *&v33 = 0;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          v25.i32[0] = 22;
          v27 = -1;
          WORD5(v32) = 2;
          v31 = 0xFFFFFFFFFFFFFFFFLL;
          *&v36 = 0;
          *(&v33 + 1) = -1;
          GTMTLSMBuffer_processTraceFuncWithMap(v25.i8, v10, v15);
          if ((GTFenum_isSharedResourceConstructor(*(v15 + 8)) & 1) == 0)
          {
            if ((BYTE8(v32) & 0xE0) != 0)
            {
              goto LABEL_44;
            }

            v20 = atomic_load(v13 + 7);
            v18 = (v20 >> 1) & 1;
LABEL_43:
            *(v9 + 48) = v18;
            goto LABEL_44;
          }
        }

        else
        {
          if (ConstructorType != 50)
          {
            goto LABEL_44;
          }

          if (*(a1 + 56) != 1)
          {
            goto LABEL_44;
          }

          v25 = 0u;
          v26 = 0;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v25.i32[0] = 50;
          v27 = -1;
          WORD4(v31) = 2;
          GTMTLSMHeap_processTraceFuncWithMap(v25.i8, v10, v15);
          if (!v29)
          {
            goto LABEL_44;
          }

          v19 = *(v29 + 16);
          if ((GTFenum_isSharedResourceConstructor(*(v15 + 8)) & 1) == 0 && (v19 & 0xE0) != 0)
          {
            goto LABEL_44;
          }
        }

LABEL_39:
        LOBYTE(v18) = 1;
        goto LABEL_43;
      }
    }

    else
    {
      if (ConstructorType <= 82)
      {
        if (ConstructorType != 60)
        {
          if (ConstructorType == 80)
          {
            v25 = 0u;
            v26 = 0;
            v32 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            v29 = 0u;
            v30 = 0u;
            v28 = 0u;
            v25.i32[0] = 80;
            v27 = -1;
            WORD5(v32) = 2;
            v31 = 0xFFFFFFFFFFFFFFFFLL;
            *&v40 = 0xFFFFFFFFLL;
            GTMTLSMTexture_processTraceFuncWithMap(&v25, v10, v15);
            if (v33 && (*(v33 + 36) & 0xF0) == 0x30)
            {
              v9[3] = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (GTFenum_isSharedResourceConstructor(*(v15 + 8)))
            {
              LOBYTE(v18) = (*(v15 + 15) & 2) == 0;
            }

            else
            {
              LOBYTE(v18) = 0;
            }

            goto LABEL_43;
          }

LABEL_44:
          apr_hash_set(v7, v9 + 1, 8, v9);
          return v9;
        }

        *v9 = v13[2];
        goto LABEL_39;
      }

      if (ConstructorType != 83)
      {
        if (ConstructorType == 101)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v26 = 0;
          v28 = 0u;
          v25 = 0u;
          v25.i32[0] = 101;
          v27 = -1;
          WORD5(v32) = 2;
          v31 = 0xFFFFFFFFFFFFFFFFLL;
          GTMTLSMTensor_processTraceFuncWithMap(v25.i8, v10, v15);
        }

        goto LABEL_44;
      }
    }

    *v9 = v13[2];
    goto LABEL_44;
  }

  return v9;
}

uint64_t GetParentResource(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  if (!a2)
  {
    return v21;
  }

  v3 = *find_entry(*a1, &v21, 8uLL, 0);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {
    v5 = *(v4 + 32);
    v6 = v5 ? v5 + 64 : 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 8);
  if (GTFenum_isSharedResourceConstructor(v7))
  {
    return v21;
  }

  ConstructorType = GTFenum_getConstructorType(v7);
  if (ConstructorType == 16)
  {
    if (*(a1 + 56) != 1)
    {
      return v21;
    }

    v22 = 0u;
    v23 = 0;
    *&v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v22.i32[0] = 16;
    v24 = -1;
    WORD5(v29) = 2;
    v28 = 0xFFFFFFFFFFFFFFFFLL;
    GTMTLSMAccelerationStructure_processTraceFuncWithMap(v22.i8, *(a1 + 8), v6);
  }

  else
  {
    if (ConstructorType != 22)
    {
      if (ConstructorType == 80)
      {
        v22 = 0u;
        v23 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22.i32[0] = 80;
        v24 = -1;
        WORD5(v29) = 2;
        v28 = 0xFFFFFFFFFFFFFFFFLL;
        v37 = 0xFFFFFFFFLL;
        GTMTLSMTexture_processTraceFuncWithMap(&v22, *(a1 + 8), v6);
        if (v32 != 0)
        {
          return GetParentResource(a1);
        }

        if (*(a1 + 56) == 1 && v26)
        {
          entry = find_entry(*a1, &v26, 8uLL, 0);
          if (*entry && (v11 = *(*entry + 32)) != 0 && (v12 = *(v11 + 32)) != 0 && (*(v12 + 79) & 8) != 0)
          {
            v13 = (v12 + 64);
          }

          else
          {
            v13 = 0;
          }

          v14 = 0u;
          v15 = 0;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          LODWORD(v14) = 50;
          v16 = -1;
          WORD4(v20) = 2;
          GTMTLSMHeap_processTraceFuncWithMap(&v14, *(a1 + 8), v13);
          if (v18)
          {
            if (*(v18 + 20) != 2)
            {
              return GetParentResource(a1);
            }
          }
        }
      }

      return v21;
    }

    if (*(a1 + 56) != 1)
    {
      return v21;
    }

    v22 = 0u;
    v23 = 0;
    v29 = 0u;
    *&v30 = 0;
    *&v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22.i32[0] = 22;
    v24 = -1;
    WORD5(v29) = 2;
    v28 = 0xFFFFFFFFFFFFFFFFLL;
    *(&v30 + 1) = -1;
    GTMTLSMBuffer_processTraceFuncWithMap(v22.i8, *(a1 + 8), v6);
  }

  if (!v26)
  {
    return v21;
  }

  return GetParentResource(a1);
}

void *GTResourceTrackerResourceRead(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = tracker_resource_get(a1, a2, a3, a4);
  v9 = v8;
  if (v8)
  {
    v10 = v8[3];
    if (v10 < 0)
    {
      v10 = a4;
    }

    v8[3] = v10;
    if (*(v8 + 48) == 1)
    {
      v11 = tracker_resource_get(a1, a2, a3, a4);
      if (v11)
      {
        v11[4] = a4;
      }
    }
  }

  return v9;
}

void *GTResourceTrackerResourceForceDownload(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = tracker_resource_get(a1, a2, a3, a4);
  if (result)
  {
    *(result + 48) = 1;
  }

  return result;
}

void *GTResourceTrackerResourceUsage(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 2) != 0)
  {
    v11 = tracker_resource_get(a1, a2, a3, a4);
    v10 = v11;
    if (v11)
    {
      v11[4] = a4;
    }
  }

  else
  {
    v10 = 0;
  }

  if ((a5 & 5) != 0)
  {
    v12 = GTResourceTrackerResourceRead(a1, a2, a3, a4);
    if (v12)
    {
      return v12;
    }
  }

  return v10;
}

uint64_t GTResourceTrackerUsingResourceArray(uint64_t result, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v8 = a4;
    v11 = result;
    do
    {
      v12 = *a3;
      if (*a3)
      {
        if (a2)
        {
          ResourceType = a2;
        }

        else
        {
          ResourceType = GTResourceTrackerGetResourceType(*a3, a5);
          v12 = *a3;
        }

        result = GTResourceTrackerUsingResource(v11, ResourceType, v12, a5, a6);
      }

      ++a3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *GTResourceTrackerResourceReadArray(uint64_t *result, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v10 = *a3;
      if (*a3)
      {
        if (a2)
        {
          ResourceType = a2;
        }

        else
        {
          ResourceType = GTResourceTrackerGetResourceType(*a3, *v9);
          v10 = *a3;
        }

        result = GTResourceTrackerResourceRead(v9, ResourceType, v10, a5);
      }

      ++a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *GTResourceTrackerResourceWriteArray(uint64_t *result, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a4;
    v9 = result;
    do
    {
      v10 = *a3;
      if (*a3)
      {
        if (a2)
        {
          ResourceType = a2;
        }

        else
        {
          ResourceType = GTResourceTrackerGetResourceType(*a3, *v9);
          v10 = *a3;
        }

        result = tracker_resource_get(v9, ResourceType, v10, a5);
        if (result)
        {
          result[4] = a5;
        }
      }

      ++a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t *GTResourceTrackerResourceUsageArray(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    v7 = a3;
    v9 = result;
    do
    {
      result = *a2;
      if (*a2)
      {
        ResourceType = GTResourceTrackerGetResourceType(result, *v9);
        result = GTResourceTrackerResourceUsage(v9, ResourceType, *a2, a4, a5);
      }

      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void GTResourceTrackerUsingResourceHeap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  if (!a2)
  {
    return;
  }

  if (*(a1 + 56) == 1)
  {
    entry = find_entry(*a1, &v21, 8uLL, 0);
    if (*entry && (v6 = *(*entry + 32)) != 0 && (v7 = *(v6 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }

    v14 = 0u;
    v15 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    LODWORD(v14) = 50;
    v16 = -1;
    WORD4(v20) = 2;
    GTMTLSMHeap_processTraceFuncWithMap(&v14, *(a1 + 8), v8);
    if (v18 && *(v18 + 20) != 2)
    {
      v13 = tracker_resource_get(a1, 50, v21, a3);
      if (v13)
      {
        v13[4] = a3;
      }

      goto LABEL_13;
    }

    v9 = *(a1 + 24);
    v10 = v21;
  }

  else
  {
    v10 = a2;
    v9 = *(a1 + 24);
  }

  GTResourceTrackerUsingResource(v9, 50, v10, *a1, *(a1 + 8));
LABEL_13:
  v11 = find_entry(*(a1 + 32), &v21, 8uLL, 0);
  if (!*v11 || !*(*v11 + 32))
  {
    v12 = apr_palloc(**(a1 + 32), 0x10uLL);
    *v12 = v21;
    v12[1] = a3;
    apr_hash_set(*(a1 + 32), v12, 8, v12);
  }
}

void ResourceTracker_postAccumulateHeapReads(uint64_t *a1)
{
  if (*(a1[4] + 48))
  {
    v2 = *a1;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = v2;
    *(v2 + 40) = 0;
    v3 = apr_hash_next((v2 + 16));
    if (v3)
    {
      v4 = v3;
      do
      {
        v5 = *(*(v4 + 1) + 32);
        if (!v5)
        {
          goto LABEL_7;
        }

        v6 = *(v5 + 32);
        if (!v6 || (*(v6 + 79) & 8) == 0)
        {
          goto LABEL_7;
        }

        ConstructorType = GTFenum_getConstructorType(*(v6 + 72));
        switch(ConstructorType)
        {
          case 16:
            v18 = 0u;
            v19 = 0;
            *&v32 = 0;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v21 = 0u;
            v18.i32[0] = 16;
            v20 = -1;
            WORD5(v25) = 2;
            v24 = 0xFFFFFFFFFFFFFFFFLL;
            GTMTLSMAccelerationStructure_processTraceFuncWithMap(v18.i8, a1[1], (v6 + 64));
            if (!v22)
            {
              goto LABEL_7;
            }

            v16 = *find_entry(a1[4], &v22, 8uLL, 0);
            if (!v16)
            {
              goto LABEL_7;
            }

            v17 = *(v16 + 32);
            if (!v17)
            {
              goto LABEL_7;
            }

            v10 = *(v17 + 8);
            v11 = v18.i64[1];
            if (v10 > IsHeapResourceMadeAliasable(v2, v18.i64[1], v10))
            {
              goto LABEL_7;
            }

            v12 = a1;
            v13 = 16;
            break;
          case 80:
            v18 = 0u;
            v19 = 0;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v21 = 0u;
            v22 = 0u;
            v18.i32[0] = 80;
            v20 = -1;
            WORD5(v25) = 2;
            v24 = 0xFFFFFFFFFFFFFFFFLL;
            v33 = 0xFFFFFFFFLL;
            GTMTLSMTexture_processTraceFuncWithMap(&v18, a1[1], v6 + 64);
            if (!v22)
            {
              goto LABEL_7;
            }

            v14 = *find_entry(a1[4], &v22, 8uLL, 0);
            if (!v14)
            {
              goto LABEL_7;
            }

            v15 = *(v14 + 32);
            if (!v15)
            {
              goto LABEL_7;
            }

            v10 = *(v15 + 8);
            v11 = v18.i64[1];
            if (v10 > IsHeapResourceMadeAliasable(v2, v18.i64[1], v10))
            {
              goto LABEL_7;
            }

            v12 = a1;
            v13 = 80;
            break;
          case 22:
            v18 = 0u;
            v19 = 0;
            v25 = 0u;
            *&v26 = 0;
            *&v29 = 0;
            v27 = 0u;
            v28 = 0u;
            v23 = 0u;
            v21 = 0u;
            v22 = 0u;
            v18.i32[0] = 22;
            v20 = -1;
            WORD5(v25) = 2;
            v24 = 0xFFFFFFFFFFFFFFFFLL;
            *(&v26 + 1) = -1;
            GTMTLSMBuffer_processTraceFuncWithMap(v18.i8, a1[1], (v6 + 64));
            if (!v22)
            {
              goto LABEL_7;
            }

            v8 = *find_entry(a1[4], &v22, 8uLL, 0);
            if (!v8)
            {
              goto LABEL_7;
            }

            v9 = *(v8 + 32);
            if (!v9)
            {
              goto LABEL_7;
            }

            v10 = *(v9 + 8);
            v11 = v18.i64[1];
            if (v10 > IsHeapResourceMadeAliasable(v2, v18.i64[1], v10))
            {
              goto LABEL_7;
            }

            v12 = a1;
            v13 = 22;
            break;
          default:
            goto LABEL_7;
        }

        GTResourceTrackerResourceRead(v12, v13, v11, v10);
LABEL_7:
        v4 = apr_hash_next(v4);
      }

      while (v4);
    }

    apr_hash_clear(a1[4]);
  }
}

uint64_t IsHeapResourceMadeAliasable(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = a2;
  v4 = *(*(*find_entry(a1, &v18, 8uLL, 0) + 32) + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_8:
        v8 = v5 | (v7 << 32);
        goto LABEL_9;
      }
    }

    v7 = 0;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *v9;
    if (*v9 > a3)
    {
      break;
    }

    v11 = *(v9 + 8);
    v13 = v11 == -16122 || v11 == -16114 || v11 == -15651;
    if (v13 || (GTFenum_isDestructor(v11) & 1) != 0)
    {
      return v10;
    }

    v14 = atomic_load((v4 + 4));
    v15 = v8 + (v14 >> 6);
    v16 = (HIDWORD(v8) + 1);
    v8 = (v16 << 32) | v8;
    if (v16 == v15 - 1)
    {
      v8 = (v16 << 32) | v16;
      v4 = *(v4 + 40);
    }
  }

  return -1;
}

void GTResourceTrackerUsingResourceHeapArray(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = *a2++;
      GTResourceTrackerUsingResourceHeap(a1, v8, a4);
      --v5;
    }

    while (v5);
  }
}

void *GTResourceTrackerMake(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = 0;
  return GTResourceTrackerMakeWithDescriptor(v4);
}

void *GTResourceTrackerMakeWithDescriptor(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = apr_palloc(v2, 0x40uLL);
  *v3 = *a1;
  v3[2] = v2;
  v3[3] = apr_hash_make(v2);
  v3[4] = apr_hash_make(v2);
  v3[5] = apr_hash_make(v2);
  v3[6] = apr_hash_make(v2);
  *(v3 + 56) = *(a1 + 24);
  return v3;
}

void GTResourceTrackerProcessFunction()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 8);
  ConstructorType = GTFenum_getConstructorType(v4);
  if (GTFenum_isMTLCommandEncoder(ConstructorType))
  {
    bzero(&v162, 0x2BA0uLL);
    GTMTLSMCommandEncoder_processTraceFunc(&v162, v2, v3[1]);
    if (v162 <= 64)
    {
      if (v162 != 17 && v162 != 21)
      {
        if (v162 != 28)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v162 <= 73)
      {
        if (v162 != 65)
        {
          if (v162 != 70)
          {
            return;
          }

          v6 = *v3;
          *&v168 = v163;
          v7 = *find_entry(v6, &v168, 8uLL, 0);
          if (v7 && (v8 = *(v7 + 32)) != 0 && (v9 = *(v8 + 32)) != 0 && (*(v9 + 79) & 8) != 0)
          {
            v10 = v9 + 64;
          }

          else
          {
            v10 = 0;
          }

          bzero(&v168, 0x2BA0uLL);
          GTMTLSMCommandEncoder_processTraceFunc(&v168, v10, v3[1]);
          bzero(&v164, 0x2BA0uLL);
          v159 = 0;
          v160 = 0;
          if (*(v10 + 8) != -16286)
          {
            v60 = *(&v172 + 1);
            v61 = renderCommandEncoder_processStreamWithDescriptor(v3, *(&v172 + 1), &v168);
            v159 = v191;
            LOWORD(v160) = v191[615];
            goto LABEL_176;
          }

          v11 = *v3;
          v161 = *(&v171 + 1);
          v12 = *find_entry(v11, &v161, 8uLL, 0);
          if (v12)
          {
            v13 = *(v12 + 32);
            if (v13)
            {
              v14 = *(v13 + 32);
              if (v14)
              {
                if ((*(v14 + 79) & 8) != 0)
                {
                  v15 = (v14 + 64);
LABEL_161:
                  GTMTLSMCommandEncoder_processTraceFunc(&v164, v15, v3[1]);
                  v125 = *(v13 + 32);
                  if (v125)
                  {
                    v126 = 0;
                    while (1)
                    {
                      v127 = atomic_load((v125 + 4));
                      v128 = v126 + (v127 >> 6) - 1;
                      if (v128 > 1)
                      {
                        break;
                      }

                      v125 = *(v125 + 40);
                      v126 = v128;
                      if (!v125)
                      {
                        v126 = v128;
                        goto LABEL_168;
                      }
                    }

                    v128 = 1;
LABEL_168:
                    v129 = v126 | (v128 << 32);
                  }

                  else
                  {
                    v129 = 0;
                  }

                  while (v125)
                  {
                    v130 = v125 + 64 + ((HIDWORD(v129) - v129) << 6);
                    if ((*(v130 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v131 = GTFenum_getConstructorType(*(v130 + 8));
                    if (!GTFenum_isMTLCommandEncoder(v131))
                    {
                      GTMTLSMCommandEncoder_processTraceFunc(&v164, (v125 + 64 + ((HIDWORD(v129) - v129) << 6)), v3[1]);
                    }

                    v132 = atomic_load((v125 + 4));
                    v133 = v129 + (v132 >> 6);
                    v134 = (HIDWORD(v129) + 1);
                    v129 = (v134 << 32) | v129;
                    if (v134 == v133 - 1)
                    {
                      v129 = (v134 << 32) | v134;
                      v125 = *(v125 + 40);
                    }
                  }

                  v60 = v166;
                  v159 = v167;
                  LOWORD(v160) = v167[64];
                  v61 = renderCommandEncoder_processStreamWithDescriptor(v3, v166, &v168);
LABEL_176:
                  RenderEncoderWithDescriptor(v3, v60);
                  if (v168 == 70)
                  {
                    v112 = &v159;
                    v113 = v3;
                    v114 = v60;
                    v111 = v61;
LABEL_178:
                    RenderEncoderEndEncoding(v113, v114, v112, v111);
                  }

                  return;
                }
              }
            }
          }

          else
          {
            v13 = 0;
          }

          v15 = 0;
          goto LABEL_161;
        }

        v43 = *v3;
        *&v168 = v163;
        v44 = *find_entry(v43, &v168, 8uLL, 0);
        if (v44)
        {
          v45 = *(v44 + 32);
          bzero(&v168, 0x2BA0uLL);
          if (v45)
          {
            v46 = *(v45 + 32);
            if (v46)
            {
              if ((*(v46 + 79) & 8) != 0)
              {
                v47 = (v46 + 64);
                goto LABEL_89;
              }
            }
          }
        }

        else
        {
          bzero(&v168, 0x2BA0uLL);
          v45 = 0;
        }

        v47 = 0;
LABEL_89:
        GTMTLSMCommandEncoder_processTraceFunc(&v168, v47, v3[1]);
        v75 = *(&v172 + 1);
        RenderEncoderWithDescriptor(v3, *(&v172 + 1));
        v76 = *(v45 + 32);
        if (v76)
        {
          v77 = 0;
          while (1)
          {
            v78 = atomic_load((v76 + 4));
            v79 = v77 + (v78 >> 6) - 1;
            if (v79 > 1)
            {
              break;
            }

            v76 = *(v76 + 40);
            v77 = v79;
            if (!v76)
            {
              v77 = v79;
LABEL_137:
              v80 = v77 | (v79 << 32);
              goto LABEL_138;
            }
          }

          v79 = 1;
          goto LABEL_137;
        }

        v80 = 0;
LABEL_138:
        while (v76)
        {
          v105 = v76 + 64;
          v106 = v76 + 64 + ((HIDWORD(v80) - v80) << 6);
          if ((*(v106 + 15) & 8) == 0)
          {
            break;
          }

          if (GTFenum_isEndEncoding(*(v106 + 8)))
          {
            v164 = &v173;
            LOWORD(v165) = v181;
            *(&v165 + 2) = 0;
            HIWORD(v165) = 0;
            v111 = *v106;
            v112 = &v164;
            v113 = v3;
            v114 = v75;
            goto LABEL_178;
          }

          GTResourceTrackerProcessResourceUse(v3, v105 + ((HIDWORD(v80) - v80) << 6), *v106);
          v107 = GTFenum_getConstructorType(*(v106 + 8));
          if (GTFenum_isMTLCommandEncoder(v107))
          {
            bzero(&v164, 0x2BA0uLL);
            GTMTLSMCommandEncoder_processTraceFunc(&v164, (v105 + ((HIDWORD(v80) - v80) << 6)), v3[1]);
            renderCommandEncoder_processStreamWithDescriptor(v3, v75, &v164);
          }

          else
          {
            GTMTLSMCommandEncoder_processTraceFunc(&v168, (v105 + ((HIDWORD(v80) - v80) << 6)), v3[1]);
          }

          v108 = atomic_load((v76 + 4));
          v109 = v80 + (v108 >> 6);
          v110 = (HIDWORD(v80) + 1);
          v80 = (v110 << 32) | v80;
          if (v110 == v109 - 1)
          {
            v80 = (v110 << 32) | v110;
            v76 = *(v76 + 40);
          }
        }

        return;
      }

      if (v162 != 74)
      {
        if (v162 != 82)
        {
          return;
        }

LABEL_43:
        computeCommandEncoder_processStream();
        return;
      }
    }

    defaultCommandEncoder_processStream();
    return;
  }

  if ((ConstructorType - 95) > 0xA || ((0x409u >> (ConstructorType - 95)) & 1) == 0)
  {
    if ((v4 + 20474) > 0x36 || ((0x40000020020001uLL >> (v4 - 6)) & 1) == 0)
    {
      v31 = *v2;

      GTResourceTrackerProcessResourceUse(v3, v2, v31);
      return;
    }

    v22 = GTTraceFunc_targetContext(v2, v3[1]);
    ReceiverType = GTFenum_getReceiverType(*(v2 + 8));
    if (ReceiverType > 102)
    {
      if (ReceiverType != 103)
      {
        if (ReceiverType != 104)
        {
          return;
        }

        v24 = *v2;
        v48 = *v3;
        *&v168 = v22;
        v49 = *(*find_entry(v48, &v168, 8uLL, 0) + 32);
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v172 = 0u;
        v173 = 0u;
        v169 = 0;
        v171 = 0u;
        v168 = 0u;
        LODWORD(v168) = 104;
        v170 = -1;
        v50 = *(v49 + 32);
        if (v50)
        {
          v51 = 0;
          while (1)
          {
            v52 = atomic_load((v50 + 4));
            v53 = v51 + (v52 >> 6) - 1;
            if (v53 > 0)
            {
              break;
            }

            v50 = *(v50 + 40);
            v51 = v53;
            if (!v50)
            {
              v51 = v53;
              goto LABEL_192;
            }
          }

          v53 = 0;
LABEL_192:
          v136 = v51 | (v53 << 32);
        }

        else
        {
          v136 = 0;
        }

        while (v50)
        {
          v144 = v50 + 64 + ((HIDWORD(v136) - v136) << 6);
          if ((*(v144 + 15) & 8) == 0 || *v144 > v24)
          {
            break;
          }

          GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(&v168, v3[1], v144);
          v145 = atomic_load((v50 + 4));
          v146 = v136 + (v145 >> 6);
          v147 = (HIDWORD(v136) + 1);
          v136 = (v147 << 32) | v136;
          if (v147 == v146 - 1)
          {
            v136 = (v147 << 32) | v147;
            v50 = *(v50 + 40);
          }
        }

        GTResourceTrackerUsingResource(v3[3], 104, v22, *v3, v3[1]);
        GTResourceTrackerResourceRead(v3, 80, v173, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v173 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v174, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v174 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v175, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v175 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v176, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v176 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v177 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v178 + 1), v24);
        v148 = v178;
        goto LABEL_216;
      }

      v24 = *v2;
      v68 = *v3;
      *&v168 = v22;
      v69 = *(*find_entry(v68, &v168, 8uLL, 0) + 32);
      v168 = 0u;
      v169 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v171 = 0u;
      LODWORD(v168) = 103;
      *&v178 = 0;
      v170 = -1;
      v70 = *(v69 + 32);
      if (v70)
      {
        v71 = 0;
        while (1)
        {
          v72 = atomic_load((v70 + 4));
          v73 = v71 + (v72 >> 6) - 1;
          if (v73 > 0)
          {
            break;
          }

          v70 = *(v70 + 40);
          v71 = v73;
          if (!v70)
          {
            v71 = v73;
            goto LABEL_208;
          }
        }

        v73 = 0;
LABEL_208:
        v138 = v71 | (v73 << 32);
      }

      else
      {
        v138 = 0;
      }

      while (v70)
      {
        v153 = v70 + 64 + ((HIDWORD(v138) - v138) << 6);
        if ((*(v153 + 15) & 8) == 0 || *v153 > v24)
        {
          break;
        }

        GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(&v168, v3[1], v153);
        v154 = atomic_load((v70 + 4));
        v155 = v138 + (v154 >> 6);
        v156 = (HIDWORD(v138) + 1);
        v138 = (v156 << 32) | v138;
        if (v156 == v155 - 1)
        {
          v138 = (v156 << 32) | v156;
          v70 = *(v70 + 40);
        }
      }

      GTResourceTrackerUsingResource(v3[3], 103, v22, *v3, v3[1]);
      GTResourceTrackerUsingResource(v3[3], 40, *(v172 + 32), *v3, v3[1]);
      GTResourceTrackerResourceRead(v3, 80, v173, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v173 + 1), v24);
      GTResourceTrackerResourceRead(v3, 80, v174, v24);
      v143 = *(&v174 + 1);
    }

    else
    {
      if (ReceiverType == 39)
      {
        v24 = *v2;
        v62 = *v3;
        *&v168 = v22;
        v63 = *(*find_entry(v62, &v168, 8uLL, 0) + 32);
        v168 = 0u;
        v169 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        LODWORD(v168) = 39;
        v170 = -1;
        v64 = *(v63 + 32);
        if (v64)
        {
          v65 = 0;
          while (1)
          {
            v66 = atomic_load((v64 + 4));
            v67 = v65 + (v66 >> 6) - 1;
            if (v67 > 0)
            {
              break;
            }

            v64 = *(v64 + 40);
            v65 = v67;
            if (!v64)
            {
              v65 = v67;
              goto LABEL_200;
            }
          }

          v67 = 0;
LABEL_200:
          v137 = v65 | (v67 << 32);
        }

        else
        {
          v137 = 0;
        }

        while (v64)
        {
          v149 = v64 + 64 + ((HIDWORD(v137) - v137) << 6);
          if ((*(v149 + 15) & 8) == 0 || *v149 > v24)
          {
            break;
          }

          GTMTLFXSMSpatialScaler_processTraceFuncWithMap(&v168, v3[1], v149);
          v150 = atomic_load((v64 + 4));
          v151 = v137 + (v150 >> 6);
          v152 = (HIDWORD(v137) + 1);
          v137 = (v152 << 32) | v137;
          if (v152 == v151 - 1)
          {
            v137 = (v152 << 32) | v152;
            v64 = *(v64 + 40);
          }
        }

        GTResourceTrackerUsingResource(v3[3], 39, v22, *v3, v3[1]);
        GTResourceTrackerResourceRead(v3, 80, v173, v24);
        v148 = *(&v173 + 1);
        goto LABEL_216;
      }

      if (ReceiverType != 40)
      {
        return;
      }

      v24 = *v2;
      v25 = *v3;
      *&v168 = v22;
      v26 = *(*find_entry(v25, &v168, 8uLL, 0) + 32);
      v168 = 0u;
      v169 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v171 = 0u;
      LODWORD(v168) = 40;
      *&v178 = 0;
      v170 = -1;
      v27 = *(v26 + 32);
      if (v27)
      {
        v28 = 0;
        while (1)
        {
          v29 = atomic_load((v27 + 4));
          v30 = v28 + (v29 >> 6) - 1;
          if (v30 > 0)
          {
            break;
          }

          v27 = *(v27 + 40);
          v28 = v30;
          if (!v27)
          {
            v28 = v30;
            goto LABEL_184;
          }
        }

        v30 = 0;
LABEL_184:
        v135 = v28 | (v30 << 32);
      }

      else
      {
        v135 = 0;
      }

      while (v27)
      {
        v139 = v27 + 64 + ((HIDWORD(v135) - v135) << 6);
        if ((*(v139 + 15) & 8) == 0 || *v139 > v24)
        {
          break;
        }

        GTMTLFXSMTemporalScaler_processTraceFuncWithMap(&v168, v3[1], v139);
        v140 = atomic_load((v27 + 4));
        v141 = v135 + (v140 >> 6);
        v142 = (HIDWORD(v135) + 1);
        v135 = (v142 << 32) | v135;
        if (v142 == v141 - 1)
        {
          v135 = (v142 << 32) | v142;
          v27 = *(v27 + 40);
        }
      }

      GTResourceTrackerUsingResource(v3[3], 40, v22, *v3, v3[1]);
      GTResourceTrackerResourceRead(v3, 80, v173, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v173 + 1), v24);
      GTResourceTrackerResourceRead(v3, 80, v174, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v174 + 1), v24);
      v143 = *(&v175 + 1);
    }

    GTResourceTrackerResourceRead(v3, 80, v143, v24);
    v148 = v175;
LABEL_216:
    v157 = tracker_resource_get(v3, 80, v148, v24);
    if (v157)
    {
      v157[4] = v24;
    }

    GTResourceTrackerUsingResource(v3[3], 41, *(&v172 + 1), *v3, v3[1]);
    return;
  }

  bzero(&v164, 0x790uLL);
  GTMTL4SMCommandEncoder_processTraceFunc(&v164, v2, v3[1]);
  switch(v164)
  {
    case 'i':
      v54 = v165;
      bzero(&v168, 0x790uLL);
      v55 = *v3;
      v162 = v54;
      v56 = *(*(*find_entry(v55, &v162, 8uLL, 0) + 32) + 32);
      if (v56)
      {
        v57 = 0;
        while (1)
        {
          v58 = atomic_load((v56 + 4));
          v59 = v57 + (v58 >> 6) - 1;
          if (v59 > 0)
          {
            break;
          }

          v56 = *(v56 + 40);
          v57 = v59;
          if (!v56)
          {
            v57 = v59;
            goto LABEL_148;
          }
        }

        v59 = 0;
LABEL_148:
        v81 = v57 | (v59 << 32);
      }

      else
      {
        v81 = 0;
      }

      while (v56)
      {
        v115 = v56 + 64;
        v116 = v56 + 64 + ((HIDWORD(v81) - v81) << 6);
        if ((*(v116 + 15) & 8) == 0)
        {
          break;
        }

        GTResourceTrackerProcessResourceUse(v3, v115 + ((HIDWORD(v81) - v81) << 6), *v116);
        GTMTL4SMCommandEncoder_processTraceFunc(&v168, (v115 + ((HIDWORD(v81) - v81) << 6)), v3[1]);
        v117 = atomic_load((v56 + 4));
        v118 = v81 + (v117 >> 6);
        v119 = (HIDWORD(v81) + 1);
        v81 = (v119 << 32) | v81;
        if (v119 == v118 - 1)
        {
          v81 = (v119 << 32) | v119;
          v56 = *(v56 + 40);
        }
      }

      break;
    case 'b':
      v32 = *v3;
      *&v168 = v165;
      v33 = *find_entry(v32, &v168, 8uLL, 0);
      if (v33 && (v34 = *(v33 + 32)) != 0 && (v35 = *(v34 + 32)) != 0 && (*(v35 + 79) & 8) != 0)
      {
        v36 = (v35 + 64);
      }

      else
      {
        v36 = 0;
      }

      bzero(&v168, 0x790uLL);
      GTMTL4SMCommandEncoder_processTraceFunc(&v168, v36, v3[1]);
      v37 = *v3;
      v38 = *(&v172 + 1);
      v162 = *(&v168 + 1);
      v39 = *(*(*find_entry(v37, &v162, 8uLL, 0) + 32) + 32);
      if (v39)
      {
        v40 = 0;
        while (1)
        {
          v41 = atomic_load((v39 + 4));
          v42 = v40 + (v41 >> 6) - 1;
          if (v42 > 1)
          {
            break;
          }

          v39 = *(v39 + 40);
          v40 = v42;
          if (!v39)
          {
            v40 = v42;
            goto LABEL_98;
          }
        }

        v42 = 1;
LABEL_98:
        v74 = v40 | (v42 << 32);
      }

      else
      {
        v74 = 0;
      }

LABEL_99:
      v158 = v39 + 64;
      while (v39)
      {
        v83 = v158 + ((HIDWORD(v74) - v74) << 6);
        if ((*(v83 + 15) & 8) == 0)
        {
          break;
        }

        v84 = *(v83 + 8);
        if (v84 == -15104 || v84 == -14892 || v84 == -15047)
        {
          v97 = *v83;
          goto LABEL_122;
        }

        GTResourceTrackerProcessResourceUse(v3, v158 + ((HIDWORD(v74) - v74) << 6), *v83);
        GTMTL4SMCommandEncoder_processTraceFunc(&v168, v83, v3[1]);
        if ((*(v83 + 8) + 15059) <= 0xB)
        {
          v87 = v168;
          v88 = v190[496];
          v89 = v38;
          v90 = 8;
          v91 = *v83;
          do
          {
            RenderEncoderLoadAttachment(v3, v89, v91);
            v89 += 64;
            --v90;
          }

          while (v90);
          RenderEncoderLoadAttachment(v3, v38 + 512, v91);
          RenderEncoderLoadAttachment(v3, v38 + 560, v91);
          if (v87 == 70)
          {
            if (v88)
            {
              v92 = *(v38 + 608);
              if (v92)
              {
                v93 = tracker_resource_get(v3, 22, v92, v91);
                if (v93)
                {
                  v93[4] = v91;
                }
              }
            }
          }

          GTResourceTrackerUsingResource(v3[3], 68, *(v38 + 600), *v3, v3[1]);
        }

        v94 = atomic_load((v39 + 4));
        v95 = v74 + (v94 >> 6);
        v96 = (HIDWORD(v74) + 1);
        v74 = (v96 << 32) | v74;
        if (v96 == v95 - 1)
        {
          v74 = (v96 << 32) | v96;
          v39 = *(v39 + 40);
          goto LABEL_99;
        }
      }

      v97 = -1;
LABEL_122:
      v98 = (v38 + 8);
      v99 = 8;
      do
      {
        GTResourceTrackerUsingResource(v3[3], 80, *v98, *v3, v3[1]);
        GTResourceTrackerUsingResource(v3[3], 80, *(v98 - 1), *v3, v3[1]);
        v98 += 8;
        --v99;
      }

      while (v99);
      GTResourceTrackerUsingResource(v3[3], 80, *(v38 + 520), *v3, v3[1]);
      GTResourceTrackerUsingResource(v3[3], 80, *(v38 + 512), *v3, v3[1]);
      GTResourceTrackerUsingResource(v3[3], 80, *(v38 + 568), *v3, v3[1]);
      GTResourceTrackerUsingResource(v3[3], 80, *(v38 + 560), *v3, v3[1]);
      GTResourceTrackerUsingResource(v3[3], 22, *(v38 + 608), *v3, v3[1]);
      GTResourceTrackerUsingResource(v3[3], 68, *(v38 + 600), *v3, v3[1]);
      if (v168 == 98)
      {
        v100 = 0;
        v101 = v38;
        do
        {
          v102 = *(v101 + 27);
          if (v102 == 4)
          {
            v102 = *&v190[v100];
          }

          RenderEncoderStoreAttachment(v3, v101, v102, v97);
          v100 += 8;
          v101 += 64;
        }

        while (v100 != 64);
        if (*(v38 + 539) == 4)
        {
          v103 = v190[497];
        }

        else
        {
          v103 = *(v38 + 539);
        }

        RenderEncoderStoreAttachment(v3, (v38 + 512), v103, v97);
        if (*(v38 + 587) == 4)
        {
          v104 = v190[498];
        }

        else
        {
          v104 = *(v38 + 587);
        }

        RenderEncoderStoreAttachment(v3, (v38 + 560), v104, v97);
      }

      break;
    case '_':
      v16 = v165;
      bzero(&v168, 0x790uLL);
      v17 = *v3;
      v162 = v16;
      v18 = *(*(*find_entry(v17, &v162, 8uLL, 0) + 32) + 32);
      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = atomic_load((v18 + 4));
          v21 = v19 + (v20 >> 6) - 1;
          if (v21 > 0)
          {
            break;
          }

          v18 = *(v18 + 40);
          v19 = v21;
          if (!v18)
          {
            v19 = v21;
            goto LABEL_154;
          }
        }

        v21 = 0;
LABEL_154:
        v82 = v19 | (v21 << 32);
      }

      else
      {
        v82 = 0;
      }

      while (v18)
      {
        v120 = v18 + 64;
        v121 = v18 + 64 + ((HIDWORD(v82) - v82) << 6);
        if ((*(v121 + 15) & 8) == 0)
        {
          break;
        }

        GTResourceTrackerProcessResourceUse(v3, v120 + ((HIDWORD(v82) - v82) << 6), *v121);
        GTMTL4SMCommandEncoder_processTraceFunc(&v168, (v120 + ((HIDWORD(v82) - v82) << 6)), v3[1]);
        v122 = atomic_load((v18 + 4));
        v123 = v82 + (v122 >> 6);
        v124 = (HIDWORD(v82) + 1);
        v82 = (v124 << 32) | v82;
        if (v124 == v123 - 1)
        {
          v82 = (v124 << 32) | v124;
          v18 = *(v18 + 40);
        }
      }

      break;
  }
}

void defaultCommandEncoder_processStream()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(v25, 0x2BA0uLL);
  v4 = *v3;
  v24 = v2;
  v5 = *(*(*find_entry(v4, &v24, 8uLL, 0) + 32) + 32);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = atomic_load((v5 + 4));
      v8 = v6 + (v7 >> 6) - 1;
      if (v8 > 0)
      {
        break;
      }

      v5 = *(v5 + 40);
      v6 = v8;
      if (!v5)
      {
        v6 = v8;
        goto LABEL_8;
      }
    }

    v8 = 0;
LABEL_8:
    v9 = v6 | (v8 << 32);
  }

  else
  {
    v9 = 0;
  }

  while (v5)
  {
    v10 = v5 + 64;
    v11 = v5 + 64 + ((HIDWORD(v9) - v9) << 6);
    if ((*(v11 + 15) & 8) == 0)
    {
      break;
    }

    GTResourceTrackerProcessResourceUse(v3, v10 + ((HIDWORD(v9) - v9) << 6), *v11);
    GTMTLSMCommandEncoder_processTraceFunc(v25, (v10 + ((HIDWORD(v9) - v9) << 6)), v3[1]);
    v12 = atomic_load((v5 + 4));
    v13 = v9 + (v12 >> 6);
    v14 = (HIDWORD(v9) + 1);
    v9 = (v14 << 32) | v9;
    if (v14 == v13 - 1)
    {
      v9 = (v14 << 32) | v14;
      v5 = *(v5 + 40);
    }
  }

  switch(v25[0])
  {
    case 0x11:
      v21 = v26;
      if (v26)
      {
        for (i = 8; i != 104; i += 24)
        {
          v23 = *(v21 + i);
          if (v23)
          {
            GTResourceTrackerUsingResource(v3[3], 31, v23, *v3, v3[1]);
          }
        }
      }

      break;
    case 0x15:
      v18 = v26;
      if (v26)
      {
        for (j = 8; j != 104; j += 24)
        {
          v20 = *(v18 + j);
          if (v20)
          {
            GTResourceTrackerUsingResource(v3[3], 31, v20, *v3, v3[1]);
          }
        }
      }

      break;
    case 0x4A:
      v15 = v26;
      if (v26)
      {
        for (k = 8; k != 104; k += 24)
        {
          v17 = *(v15 + k);
          if (v17)
          {
            GTResourceTrackerUsingResource(v3[3], 31, v17, *v3, v3[1]);
          }
        }
      }

      break;
  }
}

uint64_t computeCommandEncoder_processStream()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(v20, 0x2BA0uLL);
  v4 = *v3;
  v19 = v2;
  result = find_entry(v4, &v19, 8uLL, 0);
  v6 = *(*(*result + 32) + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 0)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_8:
    v10 = v7 | (v9 << 32);
  }

  else
  {
    v10 = 0;
  }

  while (v6)
  {
    v11 = v6 + 64;
    v12 = v6 + 64 + ((HIDWORD(v10) - v10) << 6);
    if ((*(v12 + 15) & 8) == 0)
    {
      break;
    }

    GTResourceTrackerProcessResourceUse(v3, v11 + ((HIDWORD(v10) - v10) << 6), *v12);
    GTMTLSMCommandEncoder_processTraceFunc(v20, (v11 + ((HIDWORD(v10) - v10) << 6)), v3[1]);
    result = ResourceTracker_processCommandEncoder(v3, *(v12 + 8), v20, *v12);
    v13 = atomic_load((v6 + 4));
    v14 = v10 + (v13 >> 6);
    v15 = (HIDWORD(v10) + 1);
    v10 = (v15 << 32) | v10;
    if (v15 == v14 - 1)
    {
      v10 = (v15 << 32) | v15;
      v6 = *(v6 + 40);
    }
  }

  if (v20[0] == 28)
  {
    v16 = v21;
    if (v21)
    {
      for (i = 8; i != 104; i += 24)
      {
        v18 = *(v16 + i);
        if (v18)
        {
          result = GTResourceTrackerUsingResource(v3[3], 31, v18, *v3, v3[1]);
        }
      }
    }
  }

  return result;
}

uint64_t renderCommandEncoder_processStreamWithDescriptor(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v26 = *(a3 + 8);
  v7 = *(*(*find_entry(v6, &v26, 8uLL, 0) + 32) + 32);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = atomic_load((v7 + 4));
      v10 = v8 + (v9 >> 6) - 1;
      if (v10 > 1)
      {
        break;
      }

      v7 = *(v7 + 40);
      v8 = v10;
      if (!v7)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    v10 = 1;
LABEL_8:
    v11 = v8 | (v10 << 32);
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  v12 = v7 + 64;
  while (v7)
  {
    v13 = v12 + ((HIDWORD(v11) - v11) << 6);
    if ((*(v13 + 15) & 8) == 0)
    {
      break;
    }

    isEndEncoding = GTFenum_isEndEncoding(*(v13 + 8));
    v15 = *v13;
    if (isEndEncoding)
    {
      return v15;
    }

    GTResourceTrackerProcessResourceUse(a1, v12 + ((HIDWORD(v11) - v11) << 6), v15);
    GTMTLSMCommandEncoder_processTraceFunc(a3, (v12 + ((HIDWORD(v11) - v11) << 6)), a1[1]);
    ResourceTracker_processCommandEncoder(a1, *(v13 + 8), a3, *v13);
    if (GTFenum_isDrawCall(*(v13 + 8)))
    {
      v16 = *a3 != 70 || *(a3 + 11157) == 0;
      v17 = *v13;
      v18 = a2;
      v19 = 8;
      do
      {
        RenderEncoderLoadAttachment(a1, v18, v17);
        v18 += 64;
        --v19;
      }

      while (v19);
      RenderEncoderLoadAttachment(a1, a2 + 672, v17);
      RenderEncoderLoadAttachment(a1, a2 + 720, v17);
      if (!v16)
      {
        v20 = *(a2 + 792);
        if (v20)
        {
          v21 = tracker_resource_get(a1, 22, v20, v17);
          if (v21)
          {
            v21[4] = v17;
          }
        }
      }

      GTResourceTrackerUsingResource(a1[3], 68, *(a2 + 784), *a1, a1[1]);
      v12 = v7 + 64;
    }

    v22 = atomic_load((v7 + 4));
    v23 = v11 + (v22 >> 6);
    v24 = (HIDWORD(v11) + 1);
    v11 = (v24 << 32) | v11;
    if (v24 == v23 - 1)
    {
      v11 = (v24 << 32) | v24;
      v7 = *(v7 + 40);
      goto LABEL_9;
    }
  }

  return -1;
}

uint64_t RenderEncoderWithDescriptor(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 1;
  v5 = 8;
  do
  {
    GTResourceTrackerUsingResource(a1[3], 80, *v4, *a1, a1[1]);
    GTResourceTrackerUsingResource(a1[3], 80, *(v4 - 1), *a1, a1[1]);
    v4 += 8;
    --v5;
  }

  while (v5);
  GTResourceTrackerUsingResource(a1[3], 80, a2[85], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[84], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[91], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[90], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 22, a2[99], *a1, a1[1]);
  result = GTResourceTrackerUsingResource(a1[3], 68, a2[98], *a1, a1[1]);
  v7 = 0;
  v8 = a2 + 66;
  do
  {
    v9 = v8[v7];
    if (v9)
    {
      result = GTResourceTrackerUsingResource(a1[3], 31, v9, *a1, a1[1]);
    }

    v7 += 5;
  }

  while (v7 != 20);
  return result;
}

void *RenderEncoderEndEncoding(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = a2;
  do
  {
    v10 = *(v9 + 27);
    if (v10 == 4)
    {
      v10 = *(*a3 + v8);
    }

    RenderEncoderStoreAttachment(a1, v9, v10, a4);
    v8 += 8;
    v9 += 64;
  }

  while (v8 != 64);
  v11 = *(a2 + 699);
  if (v11 == 4)
  {
    v11 = *(a3 + 8);
  }

  RenderEncoderStoreAttachment(a1, (a2 + 672), v11, a4);
  v12 = *(a2 + 747);
  if (v12 == 4)
  {
    v12 = *(a3 + 9);
  }

  return RenderEncoderStoreAttachment(a1, (a2 + 720), v12, a4);
}

uint64_t *RenderEncoderLoadAttachment(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  v7 = *(a2 + 25);
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  if (v7 != 1)
  {
    if (*(a2 + 25))
    {
      return result;
    }

LABEL_5:

    return GTResourceTrackerResourceRead(result, 80, v4, 0x7FFFFFFFFFFFFFFFLL);
  }

  GTResourceTrackerResourceRead(result, 80, v4, a3);
  v8 = *v6;
  v9 = *(a2 + 8);
  result = find_entry(v8, &v9, 8uLL, 0);
  if (*(*(*(*result + 32) + 32) + 72) == -16294)
  {
    result = tracker_resource_get(v6, 80, *(a2 + 8), a3);
    *(result + 48) = 1;
  }

  return result;
}

void *RenderEncoderStoreAttachment(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  if (v5)
  {
    v7 = result;
    if (a3 <= 1)
    {
      if (a3 >= 2)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 5)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = tracker_resource_get(result, 80, v5, a4);
      if (v9)
      {
        v9[4] = a4;
      }
    }

    v5 = *a2;
LABEL_12:
    result = tracker_resource_get(v7, 80, v5, a4);
    if (result)
    {
      result[4] = a4;
    }
  }

  return result;
}

void *ResourceTracker_processCommandEncoder(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  result = GTFenum_isDrawCall(a2);
  if (result)
  {
    if (*a3 != 70)
    {
      return result;
    }

    v9 = *a1;
    v21.i64[0] = *(a3 + 8600);
    entry = find_entry(v9, &v21, 8uLL, 0);
    if (*entry)
    {
      v11 = *(*entry + 32);
    }

    else
    {
      v11 = 0;
    }

    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v24, 0, sizeof(v24));
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    GTMTLSMRenderPipelineState_resourceAccess(v11, a1[1], &v21);
    v21 = vandq_s8(v21, vdupq_n_s64(~*(a3 + 64)));
    BufferAccess(a1, a3 + 80, &v21, a4);
    TextureAccess(a1, a3 + 824, &v22, a4);
    *(v24 + 8) = vandq_s8(*(v24 + 8), vdupq_n_s64(~*(a3 + 1976)));
    BufferAccess(a1, a3 + 1984, &v24[0].i64[1], a4);
    TextureAccess(a1, a3 + 2480, &v24[1].i64[1], a4);
    v27 = vandq_s8(v27, vdupq_n_s64(~*(a3 + 3632)));
    BufferAccess(a1, a3 + 3640, &v27, a4);
    TextureAccess(a1, a3 + 4136, &v28, a4);
    *(v30 + 8) = vandq_s8(*(v30 + 8), vdupq_n_s64(~*(a3 + 5288)));
    BufferAccess(a1, a3 + 5296, &v30[0].i64[1], a4);
    v16 = a3 + 5792;
    v17 = &v30[1].i64[1];
    return TextureAccess(a1, v16, v17, a4);
  }

  if (a2 <= -15298)
  {
    if (a2 != -16137)
    {
      v12 = -15486;
      goto LABEL_10;
    }

LABEL_11:
    v13 = *a1;
    v21.i64[0] = *(a3 + 8600);
    v14 = find_entry(v13, &v21, 8uLL, 0);
    if (*v14)
    {
      v15 = *(*v14 + 32);
    }

    else
    {
      v15 = 0;
    }

    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v24, 0, sizeof(v24));
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    GTMTLSMRenderPipelineState_resourceAccess(v15, a1[1], &v21);
    v33 = vandq_s8(v33, vdupq_n_s64(~*(a3 + 6944)));
    BufferAccess(a1, a3 + 6952, &v33, a4);
    v16 = a3 + 7448;
    v17 = &v34;
    return TextureAccess(a1, v16, v17, a4);
  }

  if (a2 == -15059)
  {
    goto LABEL_11;
  }

  v12 = -15297;
LABEL_10:
  if (a2 == v12)
  {
    goto LABEL_11;
  }

  result = GTFenum_isComputeCall(a2);
  if (!result)
  {
    return result;
  }

  v18 = *a1;
  v21.i64[0] = *(a3 + 64);
  v19 = find_entry(v18, &v21, 8uLL, 0);
  if (*v19)
  {
    v20 = *(*v19 + 32);
  }

  else
  {
    v20 = 0;
  }

  v24[0].i64[0] = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTMTLSMComputePipelineState_resourceAccess(v20, a1[1], &v21);
  v21 = vandq_s8(v21, vdupq_n_s64(~*(a3 + 72)));
  BufferAccess(a1, a3 + 88, &v21, a4);
  v16 = a3 + 832;
  v17 = &v22;
  return TextureAccess(a1, v16, v17, a4);
}

void *BufferAccess(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = result;
  v8 = 0;
  do
  {
    v9 = *a3 >> v8;
    if (!v9)
    {
      break;
    }

    v10 = v8 + __clz(__rbit64(v9));
    result = GTResourceTrackerResourceRead(v7, 22, *(a2 + 8 * v10), a4);
    v8 = v10 + 1;
  }

  while (v10 < 63);
  v11 = 0;
  do
  {
    v12 = a3[1] >> v11;
    if (!v12)
    {
      break;
    }

    v13 = v11 + __clz(__rbit64(v12));
    result = tracker_resource_get(v7, 22, *(a2 + 8 * v13), a4);
    if (result)
    {
      result[4] = a4;
    }

    v11 = v13 + 1;
  }

  while (v13 < 63);
  return result;
}

void *TextureAccess(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = 0;
    v11 = v9;
    v12 = (a3 + 16 * v8);
    v13 = a2 + (v8 << 9);
    do
    {
      v14 = *v12 >> v10;
      if (!v14)
      {
        break;
      }

      v15 = v10 + __clz(__rbit64(v14));
      result = GTResourceTrackerResourceRead(v7, 80, *(v13 + 8 * v15), a4);
      v10 = v15 + 1;
    }

    while (v15 < 63);
    v16 = 0;
    do
    {
      v17 = v12[1] >> v16;
      if (!v17)
      {
        break;
      }

      v18 = v16 + __clz(__rbit64(v17));
      result = tracker_resource_get(v7, 80, *(v13 + 8 * v18), a4);
      if (result)
      {
        result[4] = a4;
      }

      v16 = v18 + 1;
    }

    while (v18 < 63);
    v9 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  return result;
}

void GTResourceTrackerProcessCommandEncoder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v11 = a2;
  v3 = *(*(*find_entry(v2, &v11, 8uLL, 0) + 32) + 32);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = atomic_load((v3 + 4));
      v6 = v4 + (v5 >> 6) - 1;
      if (v6 > 0)
      {
        break;
      }

      v3 = *(v3 + 40);
      v4 = v6;
      if (!v3)
      {
        v4 = v6;
        goto LABEL_8;
      }
    }

    v6 = 0;
LABEL_8:
    v7 = v4 | (v6 << 32);
  }

  else
  {
    v7 = 0;
  }

  while (v3 && (*(v3 + 64 + ((HIDWORD(v7) - v7) << 6) + 15) & 8) != 0)
  {
    GTResourceTrackerProcessFunction();
    v8 = atomic_load((v3 + 4));
    v9 = v7 + (v8 >> 6);
    v10 = (HIDWORD(v7) + 1);
    v7 = (v10 << 32) | v7;
    if (v10 == v9 - 1)
    {
      v7 = (v10 << 32) | v10;
      v3 = *(v3 + 40);
    }
  }
}

void GTResourceTrackerProcessCommandBuffer(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v11 = a2;
  v3 = *(*(*find_entry(v2, &v11, 8uLL, 0) + 32) + 32);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = atomic_load((v3 + 4));
      v6 = v4 + (v5 >> 6) - 1;
      if (v6 > 0)
      {
        break;
      }

      v3 = *(v3 + 40);
      v4 = v6;
      if (!v3)
      {
        v4 = v6;
        goto LABEL_8;
      }
    }

    v6 = 0;
LABEL_8:
    v7 = v4 | (v6 << 32);
  }

  else
  {
    v7 = 0;
  }

  while (v3 && (*(v3 + 64 + ((HIDWORD(v7) - v7) << 6) + 15) & 8) != 0)
  {
    GTResourceTrackerProcessFunction();
    v8 = atomic_load((v3 + 4));
    v9 = v7 + (v8 >> 6);
    v10 = (HIDWORD(v7) + 1);
    v7 = (v10 << 32) | v7;
    if (v10 == v9 - 1)
    {
      v7 = (v10 << 32) | v10;
      v3 = *(v3 + 40);
    }
  }
}

void GTResourceTrackerProcessCommandBufferAndResidencySets(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  GTResourceTrackerProcessCommandBuffer(a1, a2);
  v7 = *a1;
  v10 = a3;
  v8 = *find_entry(v7, &v10, 8uLL, 0);
  if (v8)
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  ResourceTracker_processUsedResidencySets(a1, a4, v9, 0);
}

void ResourceTracker_processUsedResidencySets(uint64_t a1, unint64_t a2, uint64_t a3, apr_pool_t *parent)
{
  if (a3)
  {
    pool = 0;
    apr_pool_create_ex(&pool, parent, 0, 0);
    v8 = pool;
    v9 = apr_hash_make(pool);
    GatherCommandQueueResidencySetsUpToIndex(v9, a3, *(a1 + 8), a2, 0, 2);
    v10 = apr_hash_first(v8, v9);
    if (v10)
    {
      v11 = v10;
      do
      {
        GTResourceTrackerUsingResidencySet(a1, **(*(v11 + 1) + 16));
        v11 = apr_hash_next(v11);
      }

      while (v11);
    }

    apr_pool_destroy(v8);
  }

  if (*(*(a1 + 48) + 48))
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, parent, 0, 0);
    v12 = newpool;
    v30 = apr_hash_make(newpool);
    pool = apr_hash_make(v12);
    v13 = apr_hash_first(v12, *(a1 + 48));
    if (v13)
    {
      v14 = v13;
      do
      {
        v15 = *a1;
        v32 = **(*(v14 + 1) + 16);
        v16 = *find_entry(v15, &v32, 8uLL, 0);
        if (v16)
        {
          v17 = *(v16 + 32);
        }

        else
        {
          v17 = 0;
        }

        GatherResidencySetAllocationsUpToIndex(&pool, v17, *(a1 + 8), a2, 0, 2);
        v18 = 1;
        v19 = pool;
        v20 = v30;
        do
        {
          v21 = v18;
          if (v18)
          {
            v22 = v20;
          }

          else
          {
            v22 = v19;
          }

          for (i = apr_hash_first(v12, v22); ; i = apr_hash_next(v24))
          {
            v24 = i;
            if (!i)
            {
              break;
            }

            v25 = *(*(i + 1) + 16);
            if (GTResourceTrackerGetResourceType(*v25, *a1) == 50)
            {
              GTResourceTrackerUsingResourceHeap(a1, *v25, a2);
            }

            else
            {
              v26 = *(a1 + 24);
              ResourceType = GTResourceTrackerGetResourceType(*v25, *a1);
              GTResourceTrackerUsingResource(v26, ResourceType, *v25, *a1, *(a1 + 8));
              v28 = GTResourceTrackerGetResourceType(*v25, *a1);
              GTResourceTrackerResourceUsage(a1, v28, *v25, a2, 3);
            }
          }

          v18 = 0;
        }

        while ((v21 & 1) != 0);
        apr_hash_clear(v20);
        apr_hash_clear(v19);
        v14 = apr_hash_next(v14);
      }

      while (v14);
    }

    apr_pool_destroy(v12);
    apr_hash_clear(*(a1 + 48));
  }
}

void GTResourceTrackerUsingResidencySet(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  GTResourceTrackerUsingResource(a1[3], 72, a2, *a1, a1[1]);
  entry = find_entry(a1[6], &v5, 8uLL, 0);
  if (!*entry || !*(*entry + 32))
  {
    v4 = apr_palloc(*a1[6], 8uLL);
    *v4 = v5;
    apr_hash_set(a1[6], v4, 8, v4);
  }
}

void ResourceTracker_processAccelerationStructureReads(uint64_t a1)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, **(a1 + 40), 0, 0);
  v2 = newpool;
  v3 = apr_array_make(newpool, 16, 8);
  v4 = *(a1 + 40);
  *(v4 + 40) = 0;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = apr_hash_next((v4 + 16));
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = *(*(v6 + 1) + 32);
      if (*(v7 + 40) == 16)
      {
        v8 = *(v7 + 8);
        *apr_array_push(v3) = v8;
      }

      v6 = apr_hash_next(v6);
    }

    while (v6);
  }

  if (*(a1 + 56))
  {
    if (*(*(a1 + 32) + 48))
    {
      v9 = *a1;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = v9;
      *(v9 + 40) = 0;
      v10 = apr_hash_next((v9 + 16));
      if (v10)
      {
        v11 = v10;
        do
        {
          v12 = *(*(v11 + 1) + 32);
          if (v12)
          {
            v13 = *(v12 + 32);
            if (v13)
            {
              if ((*(v13 + 79) & 8) != 0)
              {
                v14 = *(v13 + 72);
                if (GTFenum_getConstructorType(v14) == 16 && GTFenum_getReceiverType(v14) == 50)
                {
                  v29 = 0u;
                  v30 = 0;
                  v43 = 0;
                  v41 = 0u;
                  v42 = 0u;
                  v39 = 0u;
                  v40 = 0u;
                  v38 = 0u;
                  v36 = 0u;
                  v37 = 0u;
                  v34 = 0u;
                  v32 = 0u;
                  v33 = 0u;
                  LODWORD(v29) = 16;
                  v31 = -1;
                  WORD5(v36) = 2;
                  v35 = 0xFFFFFFFFFFFFFFFFLL;
                  GTMTLSMAccelerationStructure_processTraceFuncWithMap(&v29, *(a1 + 8), (v13 + 64));
                  if (v33)
                  {
                    v15 = *find_entry(*(a1 + 32), &v33, 8uLL, 0);
                    if (v15)
                    {
                      if (*(v15 + 32))
                      {
                        v16 = *(&v29 + 1);
                        *apr_array_push(v3) = v16;
                      }
                    }
                  }
                }
              }
            }
          }

          v11 = apr_hash_next(v11);
        }

        while (v11);
      }
    }
  }

  if (v3->nelts >= 1)
  {
    v17 = 0;
    do
    {
      v28 = *&v3->elts[8 * v17];
      v29 = 0u;
      v30 = 0;
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v32 = 0u;
      v33 = 0u;
      LODWORD(v29) = 16;
      v31 = -1;
      WORD5(v36) = 2;
      v35 = 0xFFFFFFFFFFFFFFFFLL;
      v18 = *(*(*find_entry(*a1, &v28, 8uLL, 0) + 32) + 32);
      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = atomic_load((v18 + 4));
          v21 = v19 + (v20 >> 6) - 1;
          if (v21 > 0)
          {
            break;
          }

          v18 = *(v18 + 40);
          v19 = v21;
          if (!v18)
          {
            v19 = v21;
            goto LABEL_29;
          }
        }

        v21 = 0;
LABEL_29:
        v22 = v19 | (v21 << 32);
      }

      else
      {
        v22 = 0;
      }

      while (v18)
      {
        v23 = v18 + 64 + ((HIDWORD(v22) - v22) << 6);
        if ((*(v23 + 15) & 8) == 0)
        {
          break;
        }

        GTMTLSMAccelerationStructure_processTraceFuncWithMap(&v29, *(a1 + 8), (v18 + 64 + ((HIDWORD(v22) - v22) << 6)));
        if (*(v23 + 8) == -15552 && *(&v37 + 1) != 0)
        {
          GTResourceTrackerUsingAccelerationStructureDescriptor(a1, *(&v37 + 1), 1, *v23);
        }

        v25 = atomic_load((v18 + 4));
        v26 = v22 + (v25 >> 6);
        v27 = (HIDWORD(v22) + 1);
        v22 = (v27 << 32) | v22;
        if (v27 == v26 - 1)
        {
          v22 = (v27 << 32) | v27;
          v18 = *(v18 + 40);
        }
      }

      ++v17;
    }

    while (v17 < v3->nelts);
    v2 = newpool;
  }

  apr_pool_destroy(v2);
}

uint64_t *GTResourceTrackerUsingAccelerationStructureDescriptor(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 96);
  if (v8 == 3)
  {
    if (a3)
    {
      v42 = *result;
      v52 = *(a2 + 16);
      entry = find_entry(v42, &v52, 8uLL, 0);
      if (*entry && *(*entry + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 16), a4);
      }

      v44 = *v7;
      v52 = *a2;
      v45 = find_entry(v44, &v52, 8uLL, 0);
      if (*v45 && *(*v45 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *a2, a4);
      }

      v46 = *v7;
      v52 = *(a2 + 32);
      v47 = find_entry(v46, &v52, 8uLL, 0);
      if (*v47 && *(*v47 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 32), a4);
      }

      v48 = *v7;
      v52 = *(a2 + 48);
      result = find_entry(v48, &v52, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        return result;
      }
    }

    else
    {
      GTResourceTrackerResourceRead(result, 22, *(a2 + 16), a4);
      GTResourceTrackerResourceRead(v7, 22, *a2, a4);
      GTResourceTrackerResourceRead(v7, 22, *(a2 + 32), a4);
    }

    v51 = *(a2 + 48);

    return GTResourceTrackerResourceRead(v7, 22, v51, a4);
  }

  if (v8 == 2)
  {
    if (a3)
    {
      v39 = *result;
      v52 = *(a2 + 8);
      v40 = find_entry(v39, &v52, 8uLL, 0);
      if (*v40 && *(*v40 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 8), a4);
      }

      v41 = *v7;
      v52 = *(a2 + 48);
      result = find_entry(v41, &v52, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        goto LABEL_104;
      }
    }

    else
    {
      GTResourceTrackerResourceRead(result, 22, *(a2 + 8), a4);
    }

    result = GTResourceTrackerResourceRead(v7, 22, *(a2 + 48), a4);
LABEL_104:
    if (*(a2 + 40))
    {
      v49 = 0;
      do
      {
        if (!a3 || (v50 = *v7, v52 = *(*(a2 + 32) + 8 * v49), result = find_entry(v50, &v52, 8uLL, 0), *result) && *(*result + 32))
        {
          result = GTResourceTrackerResourceRead(v7, 16, *(*(a2 + 32) + 8 * v49), a4);
        }

        ++v49;
      }

      while (*(a2 + 40) > v49);
    }

    return result;
  }

  if (v8 == 1 && *(a2 + 8))
  {
    for (i = 0; *(a2 + 8) > i; ++i)
    {
      v10 = *a2 + 152 * i;
      if (!a3 || (v11 = *v7, v52 = *(v10 + 112), result = find_entry(v11, &v52, 8uLL, 0), *result) && *(*result + 32))
      {
        result = GTResourceTrackerResourceRead(v7, 22, *(v10 + 112), a4);
      }

      v12 = *(v10 + 146);
      if (v12 > 3)
      {
        switch(v12)
        {
          case 4u:
            if (*(v10 + 8))
            {
              v30 = 0;
              v31 = 0;
              do
              {
                if (!a3 || (v32 = *v7, v52 = *(*v10 + v30), result = find_entry(v32, &v52, 8uLL, 0), *result) && *(*result + 32))
                {
                  result = GTResourceTrackerResourceRead(v7, 22, *(*v10 + v30), a4);
                }

                ++v31;
                v30 += 16;
              }

              while (*(v10 + 8) > v31);
            }

            break;
          case 5u:
            if (a3)
            {
              v34 = *v7;
              v52 = *v10;
              v35 = find_entry(v34, &v52, 8uLL, 0);
              if (*v35 && *(*v35 + 32))
              {
                GTResourceTrackerResourceRead(v7, 22, *v10, a4);
              }

              v36 = *v7;
              v52 = *(v10 + 48);
              v37 = find_entry(v36, &v52, 8uLL, 0);
              if (*v37 && *(*v37 + 32))
              {
                GTResourceTrackerResourceRead(v7, 22, *(v10 + 48), a4);
              }

              goto LABEL_71;
            }

            GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            GTResourceTrackerResourceRead(v7, 22, *(v10 + 48), a4);
LABEL_78:
            v10 += 32;
            goto LABEL_79;
          case 6u:
            if (*(v10 + 8))
            {
              v17 = 0;
              v18 = 0;
              do
              {
                if (!a3 || (v19 = *v7, v52 = *(*v10 + v17), v20 = find_entry(v19, &v52, 8uLL, 0), *v20) && *(*v20 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*v10 + v17), a4);
                }

                ++v18;
                v17 += 16;
              }

              while (*(v10 + 8) > v18);
            }

            if (*(v10 + 56))
            {
              v21 = 0;
              v22 = 0;
              do
              {
                if (!a3 || (v23 = *v7, v52 = *(*(v10 + 48) + v21), v24 = find_entry(v23, &v52, 8uLL, 0), *v24) && *(*v24 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*(v10 + 48) + v21), a4);
                }

                ++v22;
                v21 += 16;
              }

              while (*(v10 + 56) > v22);
            }

            if (a3)
            {
LABEL_71:
              v38 = *v7;
              v52 = *(v10 + 32);
              result = find_entry(v38, &v52, 8uLL, 0);
              if (!*result || !*(*result + 32))
              {
                break;
              }
            }

            goto LABEL_78;
        }
      }

      else
      {
        switch(v12)
        {
          case 1u:
            if (!a3)
            {
              GTResourceTrackerResourceRead(v7, 22, *(v10 + 40), a4);
              goto LABEL_75;
            }

            v25 = *v7;
            v52 = *(v10 + 40);
            v26 = find_entry(v25, &v52, 8uLL, 0);
            if (*v26 && *(*v26 + 32))
            {
              GTResourceTrackerResourceRead(v7, 22, *(v10 + 40), a4);
            }

            goto LABEL_46;
          case 2u:
            if (a3)
            {
              v33 = *v7;
              v52 = *v10;
              result = find_entry(v33, &v52, 8uLL, 0);
              if (!*result || !*(*result + 32))
              {
                break;
              }
            }

            goto LABEL_79;
          case 3u:
            if (*(v10 + 48))
            {
              v13 = 0;
              v14 = 0;
              do
              {
                if (!a3 || (v15 = *v7, v52 = *(*(v10 + 40) + v13), v16 = find_entry(v15, &v52, 8uLL, 0), *v16) && *(*v16 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*(v10 + 40) + v13), a4);
                }

                ++v14;
                v13 += 16;
              }

              while (*(v10 + 48) > v14);
            }

            if ((a3 & 1) == 0)
            {
LABEL_75:
              GTResourceTrackerResourceRead(v7, 22, *v10, a4);
              goto LABEL_76;
            }

LABEL_46:
            v27 = *v7;
            v52 = *v10;
            v28 = find_entry(v27, &v52, 8uLL, 0);
            if (*v28 && *(*v28 + 32))
            {
              GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            }

            v29 = *v7;
            v52 = *(v10 + 16);
            result = find_entry(v29, &v52, 8uLL, 0);
            if (!*result || !*(*result + 32))
            {
              break;
            }

LABEL_76:
            v10 += 16;
LABEL_79:
            result = GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            break;
        }
      }
    }
  }

  return result;
}

void ResourceTracker_processUsedDrawables(uint64_t a1)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, **(a1 + 40), 0, 0);
  v2 = newpool;
  arr = apr_array_make(newpool, 16, 16);
  ht = apr_hash_make(v2);
  v3 = *(a1 + 24);
  *(v3 + 40) = 0;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v4 = apr_hash_next((v3 + 16));
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *(*(v5 + 1) + 32);
      v7 = v6[2];
      if (v7 == 2)
      {
        v11 = *(*find_entry(*a1, *(*(v5 + 1) + 32), 8uLL, 0) + 32);
        v42 = 0u;
        v43 = 0;
        *&v46 = 0;
        v45 = 0u;
        v42.i32[0] = 2;
        v44 = -1;
        v12 = *(v11 + 32);
        if (v12)
        {
          v13 = 0;
          while (1)
          {
            v14 = atomic_load((v12 + 4));
            v15 = v13 + (v14 >> 6) - 1;
            if (v15 > 0)
            {
              break;
            }

            v12 = *(v12 + 40);
            v13 = v15;
            if (!v12)
            {
              v13 = v15;
              goto LABEL_18;
            }
          }

          v15 = 0;
LABEL_18:
          v16 = v13 | (v15 << 32);
        }

        else
        {
          v16 = 0;
        }

        while (v12)
        {
          v17 = v12 + 64 + ((HIDWORD(v16) - v16) << 6);
          if ((*(v17 + 15) & 8) == 0)
          {
            break;
          }

          GTMTLSMDrawable_processTraceFuncWithMap(v42.i8, *(a1 + 8), (v12 + 64 + ((HIDWORD(v16) - v16) << 6)));
          if (*(v17 + 8) == -7167)
          {
            break;
          }

          v18 = atomic_load((v12 + 4));
          v19 = v16 + (v18 >> 6);
          v20 = (HIDWORD(v16) + 1);
          v16 = (v20 << 32) | v16;
          if (v20 == v19 - 1)
          {
            v16 = (v20 << 32) | v20;
            v12 = *(v12 + 40);
          }
        }

        v2 = newpool;
        v21 = apr_palloc(newpool, 8uLL);
        *v21 = v46;
        apr_hash_set(ht, v21, 8, v6);
      }

      else if (v7 == 80)
      {
        v8 = *find_entry(*a1, *(*(v5 + 1) + 32), 8uLL, 0);
        if (v8)
        {
          v9 = *(v8 + 32);
          if (v9)
          {
            v10 = *(v9 + 32);
            if (v10)
            {
              if ((*(v10 + 79) & 8) != 0)
              {
                v42 = 0u;
                v43 = 0;
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v45 = 0u;
                v46 = 0u;
                v42.i32[0] = 80;
                v44 = -1;
                WORD5(v49) = 2;
                v48 = 0xFFFFFFFFFFFFFFFFLL;
                v57 = 0xFFFFFFFFLL;
                GTMTLSMTexture_processTraceFuncWithMap(&v42, *(a1 + 8), v10 + 64);
                if (*(&v55 + 1) || v50 && *(v50 + 44))
                {
                  *apr_array_push(arr) = *v6;
                }
              }
            }
          }
        }
      }

      v5 = apr_hash_next(v5);
    }

    while (v5);
  }

  if (arr->nelts)
  {
    v22 = *a1;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 16) = v22;
    *(v22 + 40) = 0;
    v23 = apr_hash_next((v22 + 16));
    if (v23)
    {
      v24 = v23;
      do
      {
        v25 = *(*(v24 + 1) + 32);
        if (v25)
        {
          v26 = *(v25 + 32);
          if (v26)
          {
            if ((*(v26 + 79) & 8) != 0 && GTFenum_getConstructorType(*(v26 + 72)) == 2)
            {
              v42 = 0u;
              v43 = 0;
              *&v46 = 0;
              v45 = 0u;
              v42.i32[0] = 2;
              v44 = -1;
              GTMTLSMDrawable_processTraceFuncWithMap(v42.i8, *(a1 + 8), (v26 + 64));
              v27 = *(v25 + 32);
              if (v27)
              {
                v28 = 0;
                while (1)
                {
                  v29 = atomic_load((v27 + 4));
                  v30 = v28 + (v29 >> 6) - 1;
                  if (v30 > 1)
                  {
                    break;
                  }

                  v27 = *(v27 + 40);
                  v28 = v30;
                  if (!v27)
                  {
                    v28 = v30;
                    goto LABEL_44;
                  }
                }

                v30 = 1;
LABEL_44:
                v31 = v28 | (v30 << 32);
              }

              else
              {
                v31 = 0;
              }

              while (v27)
              {
                v32 = v27 + 64 + ((HIDWORD(v31) - v31) << 6);
                if ((*(v32 + 15) & 8) == 0)
                {
                  break;
                }

                GTMTLSMDrawable_processTraceFuncWithMap(v42.i8, *(a1 + 8), (v27 + 64 + ((HIDWORD(v31) - v31) << 6)));
                if (*(v32 + 8) == -7167)
                {
                  break;
                }

                v33 = atomic_load((v27 + 4));
                v34 = v31 + (v33 >> 6);
                v35 = (HIDWORD(v31) + 1);
                v31 = (v35 << 32) | v31;
                if (v35 == v34 - 1)
                {
                  v31 = (v35 << 32) | v35;
                  v27 = *(v27 + 40);
                }
              }

              nelts = arr->nelts;
              if (nelts >= 1)
              {
                elts = arr->elts;
                while (1)
                {
                  v38 = *elts;
                  elts += 16;
                  if (v38 == v46)
                  {
                    break;
                  }

                  if (!--nelts)
                  {
                    goto LABEL_56;
                  }
                }

                GTResourceTrackerUsingResource(*(a1 + 24), 2, v42.i64[1], *a1, *(a1 + 8));
              }
            }
          }
        }

LABEL_56:
        v24 = apr_hash_next(v24);
      }

      while (v24);
      v2 = newpool;
    }
  }

  apr_pool_destroy(v2);
}

apr_array_header_t *ResourceTracker_harvestResources(uint64_t a1, apr_pool_t *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    ResourceTracker_postAccumulateHeapReads(a1);
  }

  ResourceTracker_processAccelerationStructureReads(a1);
  apr_hash_make(a2);
  v4 = *(a1 + 40);
  v5 = apr_array_make(a2, *(v4 + 48), 56);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = v4;
  *(v4 + 40) = 0;
  v6 = apr_hash_next((v4 + 16));
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *(*(v7 + 1) + 32);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v9 = v8[1];
      v18 = *v8;
      v19 = v9;
      v20 = v8[2];
      LOBYTE(v21) = *(v8 + 48);
      if (DWORD2(v20) == 29 || DWORD2(v20) == 71)
      {
        goto LABEL_15;
      }

      if (*(a1 + 56) == 1)
      {
        v10 = *find_entry(*a1, &v18 + 8, 8uLL, 0);
        if (!v10)
        {
          goto LABEL_15;
        }

        v11 = *(v10 + 32);
        if (!v11)
        {
          goto LABEL_15;
        }

        v12 = *(v11 + 32);
        if (!v12 || (*(v12 + 79) & 8) == 0)
        {
          goto LABEL_15;
        }

        if (GTFenum_getConstructorType(*(v12 + 72)) == 50)
        {
          *&v18 = *(v11 + 16);
        }
      }

      v13 = apr_array_push(v5);
      v15 = v19;
      v14 = v20;
      v16 = v18;
      v13[6] = v21;
      *(v13 + 1) = v15;
      *(v13 + 2) = v14;
      *v13 = v16;
LABEL_15:
      v7 = apr_hash_next(v7);
    }

    while (v7);
  }

  return v5;
}

uint64_t ResourceTracker_addIndirectResources(uint64_t *a1, _DWORD **a2, unint64_t a3, apr_pool_t *p)
{
  v7 = apr_array_make(p, 128, 8);
  v7->nelts = 0;
  GTMTLSMContext_getObjects(a2[4], a3, v7);
  nelts = v7->nelts;
  if (nelts >= 1)
  {
    for (i = 0; i < nelts; ++i)
    {
      v10 = *&v7->elts[8 * i];
      if (*(*(v10 + 48) + 66))
      {
        GTResourceTrackerUsingResource(a1[3], 75, *(v10 + 8), *a1, a1[1]);
        nelts = v7->nelts;
      }
    }
  }

  v7->nelts = 0;
  GTMTLSMContext_getObjects(a2[11], a3, v7);
  if (v7->nelts >= 1)
  {
    v11 = 0;
    do
    {
      GTResourceTrackerUsingResource(a1[3], 34, *(*&v7->elts[8 * v11++] + 8), *a1, a1[1]);
    }

    while (v11 < v7->nelts);
  }

  v7->nelts = 0;
  GTMTLSMContext_getObjects(a2[5], a3, v7);
  v12 = v7->nelts;
  if (v12 >= 1)
  {
    for (j = 0; j < v12; ++j)
    {
      v14 = *&v7->elts[8 * j];
      if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(v14))
      {
        GTResourceTrackerUsingResource(a1[3], 71, *(v14 + 8), *a1, a1[1]);
        v12 = v7->nelts;
      }
    }
  }

  v7->nelts = 0;
  result = GTMTLSMContext_getObjects(a2[6], a3, v7);
  v16 = v7->nelts;
  if (v16 >= 1)
  {
    for (k = 0; k < v16; ++k)
    {
      v18 = *&v7->elts[8 * k];
      v19 = *(v18 + 56);
      if (v19)
      {
        if (*(v19 + 956))
        {
          result = GTResourceTrackerUsingResource(a1[3], 29, *(v18 + 8), *a1, a1[1]);
          v16 = v7->nelts;
        }
      }
    }
  }

  return result;
}

void *ResourceTracker_addAccelerationStructures(uint64_t *a1, uint64_t a2, unint64_t a3, apr_pool_t *p)
{
  v7 = apr_array_make(p, 128, 8);
  result = GTMTLSMContext_getObjects(*(a2 + 80), a3, v7);
  nelts = v7->nelts;
  if (nelts >= 1)
  {
    for (i = 0; i < nelts; ++i)
    {
      v11 = *(*&v7->elts[8 * i] + 120);
      if (v11)
      {
        result = GTResourceTrackerUsingAccelerationStructureDescriptor(a1, v11, 0, a3);
        nelts = v7->nelts;
      }
    }
  }

  return result;
}

apr_hash_index_t *ResourceTracker_addChainedResources(uint64_t *a1, uint64_t *a2, unint64_t a3, apr_pool_t *pool)
{
  v8 = apr_hash_make(pool);
  v9 = a1[3];
  *(v9 + 40) = 0;
  *(v9 + 16) = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  v10 = apr_hash_next((v9 + 16));
  if (v10)
  {
    v11 = v10;
    do
    {
      Object = GTMTLSMContext_getObject(a2, **(*(v11 + 1) + 32), a3);
      if (Object)
      {
        v13 = (*Object - 22) > 0x3A || ((1 << (*Object - 22)) & 0x400000010000001) == 0;
        if (!v13 || *Object == 16)
        {
          RootAllocation = GTMTLSMContext_getRootAllocation(a2, Object, a3);
          apr_hash_set(v8, RootAllocation + 1, 8, RootAllocation);
        }
      }

      v11 = apr_hash_next(v11);
    }

    while (v11);
  }

  v16 = apr_hash_make(pool);
  GTMTLSMContext_buildResourceChildrenMap(a2, a3, v16);
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = v8;
  *(v8 + 10) = 0;
  result = apr_hash_next((v8 + 16));
  if (result)
  {
    v18 = result;
    do
    {
      AddChainedResourcesRecursive(a1, *(*(v18 + 1) + 32), v16);
      result = apr_hash_next(v18);
      v18 = result;
    }

    while (result);
  }

  return result;
}

void *AddChainedResourcesRecursive(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  GTResourceTrackerUsingResource(a1[3], *a2, *(a2 + 8), *a1, a1[1]);
  result = find_entry(a3, (a2 + 8), 8uLL, 0);
  if (*result)
  {
    v7 = *(*result + 32);
    if (v7)
    {
      if (*(v7 + 12) >= 1)
      {
        v8 = 0;
        do
        {
          result = AddChainedResourcesRecursive(a1, *(*(v7 + 24) + 8 * v8++), a3);
        }

        while (v8 < *(v7 + 12));
      }
    }
  }

  return result;
}

uint64_t ResourceTracker_addResourceGroups(uint64_t *a1, uint64_t a2, unint64_t a3, apr_pool_t *p)
{
  v7 = apr_array_make(p, 128, 8);
  result = GTMTLSMContext_getObjects(*(a2 + 224), a3, v7);
  if (v7->nelts >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *&v7->elts[8 * v9];
      result = GTResourceTrackerUsingResource(a1[3], 73, *(v10 + 8), *a1, a1[1]);
      if (*(v10 + 56))
      {
        v11 = 0;
        do
        {
          v12 = a1[3];
          ResourceType = GTResourceTrackerGetResourceType(*(*(v10 + 48) + 8 * v11), *a1);
          result = GTResourceTrackerUsingResource(v12, ResourceType, *(*(v10 + 48) + 8 * v11++), *a1, a1[1]);
        }

        while (v11 < *(v10 + 56));
      }

      ++v9;
    }

    while (v9 < v7->nelts);
  }

  return result;
}

uint64_t ResourceTracker_addTextureViewPools(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (*(v2 + 12) >= 1)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = GTResourceTrackerUsingResource(v4[3], 100, *(*(*(v2 + 24) + 8 * v5++) + 8), *v4, v4[1]);
      v2 = *(a2 + 96);
    }

    while (v5 < *(v2 + 12));
  }

  return result;
}

uint64_t ResourceTracker_addFunctionHandles(uint64_t *a1, uint64_t a2, unint64_t a3, apr_pool_t *p)
{
  v7 = apr_array_make(p, 128, 8);
  result = GTMTLSMContext_getObjects(*(a2 + 272), a3, v7);
  if (v7->nelts >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *&v7->elts[8 * v9];
      v11 = v10 ? v10[1] : 0;
      GTResourceTrackerUsingResource(a1[3], 44, v11, *a1, a1[1]);
      result = GTMTLSMContext_lastFunction(a2, v10[6], a3);
      if (result)
      {
        v12 = result;
        GTResourceTrackerUsingResource(a1[3], 43, *(result + 8), *a1, a1[1]);
        result = ResourceTracker_addFunctionParent(a1, a2, v12, a3);
      }

      v13 = v10[9];
      if (v13)
      {
        break;
      }

      v13 = v10[8];
      if (v13)
      {
        v14 = a1[3];
        v15 = *a1;
        v16 = a1[1];
        v17 = 29;
        goto LABEL_12;
      }

LABEL_13:
      if (++v9 >= v7->nelts)
      {
        return result;
      }
    }

    v14 = a1[3];
    v15 = *a1;
    v16 = a1[1];
    v17 = 71;
LABEL_12:
    result = GTResourceTrackerUsingResource(v14, v17, v13, v15, v16);
    goto LABEL_13;
  }

  return result;
}

uint64_t ResourceTracker_addFunctionParent(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  if (*(a3 + 132))
  {
    if (!*(a3 + 104))
    {
      return result;
    }

    result = GTMTLSMContext_lastFunction(a2, *(a3 + 40), a4);
    if (!result)
    {
      return result;
    }

    v5 = result;
    result = GTResourceTrackerUsingResource(v4[3], 43, *(result + 8), *v4, v4[1]);
    v6 = *(v5 + 40);
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v6 = *(a3 + 40);
  }

  return ResourceTracker_addLibrary(v4, v6);
}

uint64_t ResourceTracker_addLibrary(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *&v40 = a2;
  entry = find_entry(v4, &v40, 8uLL, 0);
  if (*entry)
  {
    v6 = *(*entry + 32);
    v40 = 0u;
    v41 = 0;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    LODWORD(v40) = 62;
    v42 = -1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (v6 && (v9 = *(v6 + 32)) != 0 && (*(v9 + 79) & 8) != 0)
    {
      v10 = (v9 + 64);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v40 = 0u;
    v41 = 0;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    LODWORD(v40) = 62;
    v42 = -1;
    v8 = a1 + 1;
    v7 = a1[1];
  }

  GTMTLSMLibrary_processTraceFuncWithMap(&v40, v7, v10);
  if (DWORD2(v51))
  {
    v11 = 0;
    do
    {
      v12 = *(v45 + 8 * v11);
      v13 = *a1;
      *&v30 = v12;
      v14 = *find_entry(v13, &v30, 8uLL, 0);
      if (v14)
      {
        v15 = *(v14 + 32);
        v30 = 0u;
        v31 = 0;
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        LODWORD(v30) = 43;
        v32 = -1;
        v16 = *v8;
        if (v15 && (v17 = *(v15 + 32)) != 0 && (*(v17 + 79) & 8) != 0)
        {
          v18 = (v17 + 64);
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
        v30 = 0u;
        v31 = 0;
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        LODWORD(v30) = 43;
        v32 = -1;
        v16 = *v8;
      }

      GTMTLSMFunction_processTraceFuncWithMap(&v30, v16, v18);
      GTResourceTrackerUsingResource(a1[3], 43, v12, *a1, a1[1]);
      GTResourceTrackerUsingResource(a1[3], 62, *(&v33 + 1), *a1, a1[1]);
      ++v11;
    }

    while (v11 < DWORD2(v51));
  }

  if (HIDWORD(v51))
  {
    v19 = 0;
    do
    {
      v20 = *(*(&v47 + 1) + 8 * v19);
      v21 = *a1;
      *&v30 = v20;
      v22 = *find_entry(v21, &v30, 8uLL, 0);
      if (v22)
      {
        v23 = *(v22 + 32);
        v30 = 0u;
        v31 = 0;
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        LODWORD(v30) = 43;
        v32 = -1;
        v24 = *v8;
        if (v23 && (v25 = *(v23 + 32)) != 0 && (*(v25 + 79) & 8) != 0)
        {
          v26 = (v25 + 64);
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
        v30 = 0u;
        v31 = 0;
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        LODWORD(v30) = 43;
        v32 = -1;
        v24 = *v8;
      }

      GTMTLSMFunction_processTraceFuncWithMap(&v30, v24, v26);
      GTResourceTrackerUsingResource(a1[3], 43, v20, *a1, a1[1]);
      GTResourceTrackerUsingResource(a1[3], 62, *(&v33 + 1), *a1, a1[1]);
      ++v19;
    }

    while (v19 < HIDWORD(v51));
  }

  if (*(&v48 + 1) && *(*(&v48 + 1) + 40) >= 1)
  {
    v27 = 0;
    v28 = *(*(&v48 + 1) + 40) & 0x7FFFFFFFLL;
    do
    {
      ResourceTracker_addDynamicLibrary(a1, *(*(*(&v48 + 1) + 32) + 8 * v27++));
    }

    while (v28 != v27);
  }

  result = GTResourceTrackerUsingResource(a1[3], 62, a2, *a1, a1[1]);
  if (*(&v44 + 1))
  {
    return GTResourceTrackerUsingResource(a1[3], 93, v44, *a1, a1[1]);
  }

  return result;
}

uint64_t ResourceTracker_addDynamicLibrary(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *&v11 = a2;
  entry = find_entry(v4, &v11, 8uLL, 0);
  if (*entry)
  {
    v6 = *(*entry + 32);
    v11 = 0u;
    v12 = 0;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 37;
    v13 = -1;
    v7 = a1[1];
    if (v6 && (v8 = *(v6 + 32)) != 0 && (*(v8 + 79) & 8) != 0)
    {
      v9 = (v8 + 64);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0u;
    v12 = 0;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 37;
    v13 = -1;
    v7 = a1[1];
  }

  GTMTLSMDynamicLibrary_processTraceFuncWithMap(&v11, v7, v9);
  result = GTResourceTrackerUsingResource(a1[3], 37, a2, *a1, a1[1]);
  if (*(&v15 + 1))
  {
    return ResourceTracker_addLibrary(a1);
  }

  return result;
}

uint64_t ResourceTracker_addLibraries(uint64_t *a1, uint64_t a2, unint64_t a3, apr_pool_t *p)
{
  v8 = apr_array_make(p, 128, 8);
  GTMTLSMContext_getObjects(*(a2 + 40), a3, v8);
  if (v8->nelts >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *&v8->elts[8 * v9];
      v11 = v10 ? v10[1] : 0;
      v105[0] = v11;
      entry = find_entry(a1[3], v105, 8uLL, 0);
      if (*entry)
      {
        if (*(*entry + 32))
        {
          break;
        }
      }

LABEL_72:
      if (++v9 >= v8->nelts)
      {
        goto LABEL_89;
      }
    }

    v13 = v10[11];
    if (!v13)
    {
      if (v10[14])
      {
        GTResourceTrackerUsingResource(a1[3], 67, v10[5], *a1, a1[1]);
      }

      v16 = GTMTLSMRenderPipelineState_renderPipelineDescriptorType(a2, v10);
      switch(v16)
      {
        case 3:
          memset(v86, 0, 512);
          v53 = v10[9];
          if (v53)
          {
            memcpy(v86, v53, 0x200uLL);
            v55 = *(&v86[22] + 1);
            v54 = *&v86[23];
            v56 = *(&v86[21] + 1);
          }

          else
          {
            v56 = 0;
            v55 = 0;
            v54 = 0;
          }

          ResourceTracker_addFunction(a1, a2, v54, a3);
          ResourceTracker_addFunction(a1, a2, v55, a3);
          ResourceTracker_addFunction(a1, a2, v56, a3);
          ResourceTracker_addLinkedFunctions(a1, a2, &v86[16], a3);
          ResourceTracker_addLinkedFunctions(a1, a2, &v86[12], a3);
          v29 = &v86[8];
          goto LABEL_82;
        case 2:
          memset(v86, 0, 192);
          GTMTLSMRenderPipelineState_tilePipelineDescriptor(a2, v10, v86, p);
          ResourceTracker_addFunction(a1, a2, *(&v86[8] + 1), a3);
          v50 = LOWORD(v86[8]);
          if (LOWORD(v86[8]))
          {
            v51 = *(&v86[7] + 1);
            do
            {
              v52 = *v51++;
              ResourceTracker_addDynamicLibrary(a1, v52);
              --v50;
            }

            while (v50);
          }

          v29 = v86;
LABEL_82:
          ResourceTracker_addLinkedFunctions(a1, a2, v29, a3);
          break;
        case 1:
          memset(v86, 0, 512);
          GTMTLSMRenderPipelineState_renderPipelineDescriptor(a2, v10, v86, p);
          ResourceTracker_addFunction(a1, a2, v102, a3);
          ResourceTracker_addFunction(a1, a2, v93[14], a3);
          ResourceTracker_addFunction(a1, a2, v98, a3);
          ResourceTracker_addFunction(a1, a2, v95, a3);
          v17 = v104;
          if (v104)
          {
            v18 = v103;
            do
            {
              v19 = *v18++;
              ResourceTracker_addDynamicLibrary(a1, v19);
              --v17;
            }

            while (v17);
          }

          v20 = v94;
          if (v94)
          {
            v21 = v93[15];
            do
            {
              v22 = *v21++;
              ResourceTracker_addDynamicLibrary(a1, v22);
              --v20;
            }

            while (v20);
          }

          v23 = v100;
          if (v100)
          {
            v24 = v99;
            do
            {
              v25 = *v24++;
              ResourceTracker_addDynamicLibrary(a1, v25);
              --v23;
            }

            while (v23);
          }

          v26 = v97;
          if (v97)
          {
            v27 = v96;
            do
            {
              v28 = *v27++;
              ResourceTracker_addDynamicLibrary(a1, v28);
              --v26;
            }

            while (v26);
          }

          GTResourceTrackerUsingResource(a1[3], 67, v101, *a1, a1[1]);
          ResourceTracker_addLinkedFunctions(a1, a2, v93, a3);
          ResourceTracker_addLinkedFunctions(a1, a2, v89, a3);
          ResourceTracker_addLinkedFunctions(a1, a2, v92, a3);
          v29 = &v91;
          goto LABEL_82;
      }

      if (v10[10])
      {
        Object = GTMTLSMContext_getObject(a2, v10[5], v10[2]);
        if (Object)
        {
          v58 = Object;
          do
          {
            if (*v58 != 71)
            {
              break;
            }

            GTResourceTrackerUsingResource(a1[3], 71, v58[1], *a1, a1[1]);
            v58 = GTMTLSMContext_getObject(a2, v58[5], v58[2]);
          }

          while (v58);
        }
      }

      goto LABEL_72;
    }

    v14 = *(v13 + 1016);
    switch(v14)
    {
      case 2:
        for (i = v13 + 904; ; i = *(i + 8))
        {
          v35 = *(i + 24);
          if (v35 != 1)
          {
            break;
          }
        }

        if (v35 == 2)
        {
          ResourceTracker_addLibrary(a1, *i);
        }

        for (v13 += 872; ; v13 = *(v13 + 8))
        {
          v15 = *(v13 + 24);
          if (v15 != 1)
          {
            break;
          }
        }

        break;
      case 4:
        for (j = v13 + 192; ; j = *(j + 8))
        {
          v31 = *(j + 24);
          if (v31 != 1)
          {
            break;
          }
        }

        if (v31 == 2)
        {
          ResourceTracker_addLibrary(a1, *j);
        }

        for (k = v13 + 160; ; k = *(k + 8))
        {
          v33 = *(k + 24);
          if (v33 != 1)
          {
            break;
          }
        }

        if (v33 == 2)
        {
          ResourceTracker_addLibrary(a1, *k);
        }

        for (v13 += 128; ; v13 = *(v13 + 8))
        {
          v15 = *(v13 + 24);
          if (v15 != 1)
          {
            break;
          }
        }

        break;
      case 5:
        while (1)
        {
          v15 = *(v13 + 24);
          if (v15 != 1)
          {
            break;
          }

          v13 = *(v13 + 8);
        }

        break;
      default:
LABEL_55:
        v36 = v10[12];
        if (v36)
        {
          v37 = *(v36 + 192);
          if (*(v36 + 192))
          {
            v38 = *(v36 + 184);
            do
            {
              v39 = *v38++;
              ResourceTracker_addDynamicLibrary(a1, v39);
              --v37;
            }

            while (v37);
            v36 = v10[12];
          }

          ResourceTracker_addDynamicLinkingDescriptor(a1, v36);
          v40 = v10[12];
          v41 = *(v40 + 112);
          if (*(v40 + 112))
          {
            v42 = *(v40 + 104);
            do
            {
              v43 = *v42++;
              ResourceTracker_addDynamicLibrary(a1, v43);
              --v41;
            }

            while (v41);
            v40 = v10[12];
          }

          v44 = *(v40 + 72);
          if (*(v40 + 72))
          {
            v45 = *(v40 + 64);
            do
            {
              v46 = *v45++;
              ResourceTracker_addDynamicLibrary(a1, v46);
              --v44;
            }

            while (v44);
            v40 = v10[12];
          }

          v47 = *(v40 + 152);
          if (*(v40 + 152))
          {
            v48 = *(v40 + 144);
            do
            {
              v49 = *v48++;
              ResourceTracker_addDynamicLibrary(a1, v49);
              --v47;
            }

            while (v47);
          }
        }

        GTResourceTrackerUsingResource(a1[3], 93, v10[5], *a1, a1[1]);
        goto LABEL_72;
    }

    if (v15 == 2)
    {
      ResourceTracker_addLibrary(a1, *v13);
    }

    goto LABEL_55;
  }

LABEL_89:
  v8->nelts = 0;
  GTMTLSMContext_getObjects(*(a2 + 48), a3, v8);
  if (v8->nelts >= 1)
  {
    v59 = 0;
    do
    {
      v60 = *&v8->elts[8 * v59];
      if (v60)
      {
        v61 = v60[1];
      }

      else
      {
        v61 = 0;
      }

      v105[0] = v61;
      v62 = find_entry(a1[3], v105, 8uLL, 0);
      if (*v62 && *(*v62 + 32))
      {
        if (v60[14])
        {
          GTResourceTrackerUsingResource(a1[3], 67, v60[5], *a1, a1[1]);
        }

        v63 = v60[12];
        if (v63)
        {
          v66 = *v63;
          v65 = v63 + 1;
          v64 = v66;
          if (v66 >= 1)
          {
            v67 = v64 & 0x7FFFFFFF;
            do
            {
              v68 = *v65++;
              ResourceTracker_addFunction(a1, a2, v68, a3);
              --v67;
            }

            while (v67);
          }
        }

        else
        {
          v69 = v60[9];
          if (v69)
          {
            while (1)
            {
              v70 = *(v69 + 24);
              if (v70 != 1)
              {
                break;
              }

              v69 = *(v69 + 8);
            }

            if (v70 == 2)
            {
              ResourceTracker_addLibrary(a1, *v69);
            }

            ResourceTracker_addDynamicLinkingDescriptor(a1, v60[10]);
            GTResourceTrackerUsingResource(a1[3], 93, v60[5], *a1, a1[1]);
          }

          else
          {
            memset(v86, 0, 512);
            GTMTLSMComputePipelineState_computePipelineDescriptor(a2, v60, v86, p);
            GTResourceTrackerUsingResource(a1[3], 67, v89[1], *a1, a1[1]);
            ResourceTracker_addFunction(a1, a2, v87[12], a3);
            v71 = v88;
            if (v88)
            {
              v72 = v87[13];
              do
              {
                v73 = *v72++;
                ResourceTracker_addFunction(a1, a2, v73, a3);
                --v71;
              }

              while (v71);
            }

            v74 = v90;
            if (v90)
            {
              v75 = v89[2];
              do
              {
                v76 = *v75++;
                ResourceTracker_addDynamicLibrary(a1, v76);
                --v74;
              }

              while (v74);
            }

            ResourceTracker_addLinkedFunctions(a1, a2, v87, a3);
            if (v60[26])
            {
              v77 = GTMTLSMContext_getObject(a2, v60[5], v60[2]);
              if (v77)
              {
                v78 = v77;
                do
                {
                  if (*v78 != 29)
                  {
                    break;
                  }

                  GTResourceTrackerUsingResource(a1[3], 29, v78[1], *a1, a1[1]);
                  v78 = GTMTLSMContext_getObject(a2, v78[5], v78[2]);
                }

                while (v78);
              }
            }
          }
        }
      }

      ++v59;
    }

    while (v59 < v8->nelts);
  }

  v8->nelts = 0;
  result = GTMTLSMContext_getObjects(*(a2 + 368), a3, v8);
  if (v8->nelts >= 1)
  {
    v80 = 0;
    do
    {
      v81 = *&v8->elts[8 * v80];
      if (v81)
      {
        v82 = v81[1];
      }

      else
      {
        v82 = 0;
      }

      *&v86[0] = v82;
      result = find_entry(a1[3], v86, 8uLL, 0);
      if (*result && *(*result + 32))
      {
        for (m = v81 + 6; ; m = (v84 + 8))
        {
          v84 = *m;
          v85 = *(v84 + 24);
          if (v85 != 1)
          {
            break;
          }
        }

        if (v85 == 2)
        {
          ResourceTracker_addLibrary(a1, *v84);
        }

        result = GTResourceTrackerUsingResource(a1[3], 93, v81[5], *a1, a1[1]);
      }

      ++v80;
    }

    while (v80 < v8->nelts);
  }

  return result;
}

uint64_t ResourceTracker_addDynamicLinkingDescriptor(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (*(a2 + 32))
    {
      v3 = result;
      v4 = *(a2 + 24);
      do
      {
        v5 = *v4++;
        result = ResourceTracker_addDynamicLibrary(v3, v5);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t ResourceTracker_addFunction(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  result = GTMTLSMContext_lastFunction(a2, a3, a4);
  if (result)
  {
    v8 = result;
    GTResourceTrackerUsingResource(a1[3], 43, *(result + 8), *a1, a1[1]);
    GTResourceTrackerUsingResource(a1[3], 67, *(v8 + 48), *a1, a1[1]);
    result = ResourceTracker_addFunctionParent(a1, a2, v8, a4);
    v9 = *(v8 + 112);
    if (v9)
    {
      if (*(v9 + 24))
      {
        v10 = 0;
        do
        {
          result = ResourceTracker_addFunction(a1, a2, *(*(v9 + 16) + 8 * v10++), a4);
          v9 = *(v8 + 112);
        }

        while (*(v9 + 24) > v10);
      }
    }
  }

  return result;
}

uint64_t ResourceTracker_addLinkedFunctions(uint64_t result, uint64_t *a2, void *a3, unint64_t a4)
{
  v7 = result;
  if (a3[3])
  {
    v8 = 0;
    do
    {
      Function = GTMTLSMContext_lastFunction(a2, *(a3[2] + 8 * v8), a4);
      v10 = Function;
      if (Function)
      {
        v11 = *(Function + 8);
      }

      else
      {
        v11 = 0;
      }

      GTResourceTrackerUsingResource(v7[3], 43, v11, *v7, v7[1]);
      result = ResourceTracker_addFunctionParent(v7, a2, v10, a4);
      ++v8;
    }

    while (a3[3] > v8);
  }

  if (a3[7])
  {
    v12 = 0;
    do
    {
      v13 = GTMTLSMContext_lastFunction(a2, *(a3[6] + 8 * v12), a4);
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 8);
      }

      else
      {
        v15 = 0;
      }

      GTResourceTrackerUsingResource(v7[3], 43, v15, *v7, v7[1]);
      result = ResourceTracker_addFunctionParent(v7, a2, v14, a4);
      ++v12;
    }

    while (a3[7] > v12);
  }

  if (a3[1])
  {
    v16 = 0;
    do
    {
      v17 = GTMTLSMContext_lastFunction(a2, *(*a3 + 8 * v16), a4);
      v18 = v17;
      if (v17)
      {
        v19 = *(v17 + 8);
      }

      else
      {
        v19 = 0;
      }

      GTResourceTrackerUsingResource(v7[3], 43, v19, *v7, v7[1]);
      result = ResourceTracker_addFunctionParent(v7, a2, v18, a4);
      ++v16;
    }

    while (a3[1] > v16);
  }

  v20 = a3[5];
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      v22 = a3[4] + 24 * i;
      if (*(v22 + 16))
      {
        v23 = 0;
        do
        {
          v24 = GTMTLSMContext_lastFunction(a2, *(*(v22 + 8) + 8 * v23), a4);
          v25 = v24;
          if (v24)
          {
            v26 = *(v24 + 8);
          }

          else
          {
            v26 = 0;
          }

          GTResourceTrackerUsingResource(v7[3], 43, v26, *v7, v7[1]);
          result = ResourceTracker_addFunctionParent(v7, a2, v25, a4);
          ++v23;
        }

        while (v23 < *(v22 + 16));
        v20 = a3[5];
      }
    }
  }

  return result;
}

void GTResourceTrackerUsingResidencySetArray(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v7 = *a2++;
      v6 = v7;
      if (v7)
      {
        GTResourceTrackerUsingResidencySet(a1, v6);
      }

      --v3;
    }

    while (v3);
  }
}

uint64_t GTResourceTrackerUsingFrameInterpolator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *&v11 = a2;
  entry = find_entry(v3, &v11, 8uLL, 0);
  if (*entry)
  {
    v5 = *(*entry + 32);
    v11 = 0u;
    v12 = 0;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 103;
    v13 = -1;
    v6 = a1[1];
    if (v5 && (v7 = *(v5 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0u;
    v12 = 0;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 103;
    v13 = -1;
    v6 = a1[1];
  }

  GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(&v11, v6, v8);
  v9 = v15;
  result = GTResourceTrackerGetResourceType(*(v15 + 32), *a1);
  if ((result | 0x40) == 0x68)
  {
    return GTResourceTrackerUsingResource(a1[3], result, *(v9 + 32), *a1, a1[1]);
  }

  return result;
}

uint64_t GTResourceTrackerUsingMTL4FrameInterpolator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *&v11 = a2;
  entry = find_entry(v3, &v11, 8uLL, 0);
  if (*entry)
  {
    v5 = *(*entry + 32);
    v11 = 0u;
    v12 = 0;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    LODWORD(v11) = 107;
    v13 = -1;
    v6 = a1[1];
    if (v5 && (v7 = *(v5 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0u;
    v12 = 0;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    LODWORD(v11) = 107;
    v13 = -1;
    v6 = a1[1];
  }

  GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(&v11, v6, v8);
  v9 = *(&v15 + 1);
  result = GTResourceTrackerGetResourceType(*(*(&v15 + 1) + 32), *a1);
  if ((result - 109) <= 1)
  {
    return GTResourceTrackerUsingResource(a1[3], result, *(v9 + 32), *a1, a1[1]);
  }

  return result;
}

void GTCaptureBoundaryTracker_init(uint64_t a1)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v2 = newpool;
  v3 = apr_palloc(newpool, 0x68uLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 25) = 0;
    *(v3 + 84) = 0u;
    *(v3 + 68) = 0u;
    *(v3 + 52) = 0u;
    *(v3 + 36) = 0u;
    *(v3 + 20) = 0u;
  }

  *v3 = a1;
  *(v3 + 1) = v2;
  *(v3 + 4) = 0;
  *(v3 + 3) = dispatch_queue_create("com.apple.dt.GPUTools.GTCaptureBoundaryTracker", 0);
  for (i = 32; i != 72; i += 8)
  {
    v6 = apr_palloc(v2, 0x10uLL);
    *v6 = v2;
    v6[1] = apr_array_make(v2, 0, 64);
    *(v4 + i) = v6;
  }

  boundaryTrackerInstance = v4;

  GTCaptureBoundaryTracker_reset();
}

void GTCaptureBoundaryTracker_reset()
{
  v0 = boundaryTrackerInstance;
  os_unfair_lock_lock((boundaryTrackerInstance + 16));
  atomic_store(0, (v0 + 20));
  for (i = 32; i != 72; i += 8)
  {
    *(*(*(v0 + i) + 8) + 12) = 0;
  }

  v2 = apr_array_push(*(*(v0 + 32) + 8));
  *v2 = 0x700000001;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 7) = 1;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  atomic_store(0, (*v0 + 128));

  os_unfair_lock_unlock((v0 + 16));
}

void GTCaptureBoundaryTracker_handleTrigger(__int128 *a1)
{
  v2 = boundaryTrackerInstance;
  if (!*(a1 + 2))
  {
    v3 = atomic_load((*boundaryTrackerInstance + 80));
    if (v3 <= 1)
    {
      v3 = 1;
    }

    *(a1 + 2) = v3 - 1;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v4 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  v5 = *a1;
  v18 = a1[1];
  v17 = v5;
  v6 = a1[3];
  v21 = a1[4];
  v7 = a1[2];
  v20 = v6;
  block[2] = __GTCaptureBoundaryTracker_handleTrigger_block_invoke;
  block[3] = &unk_2F1E28;
  block[5] = &v23;
  block[6] = v2;
  v22 = *(a1 + 10);
  v19 = v7;
  block[4] = &v27;
  dispatch_sync(v4, block);
  if (*(v28 + 24) == 1)
  {
    *(v2 + 80) = *(a1 + 2) - *(v2 + 72) + 1;
    if (*(v24 + 24) == 1)
    {
      if (s_logUsingOsLog == 1)
      {
        v8 = gt_tagged_log(5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "🔥 Aborting capture", buf, 2u);
        }
      }

      else
      {
        fwrite("🔥 Aborting capture\n", 0x16uLL, 1uLL, __stdoutp);
      }

      GTMTLCaptureManager_abortActiveCapture(*(v2 + 72), *(v2 + 80));
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v12 = __GTCaptureBoundaryTracker_handleTrigger_block_invoke_2;
      v13 = &__block_descriptor_tmp_5;
      v14 = v2;
      v9 = atomic_load((boundaryTrackerInstance + 92));
      if (v9 < 1)
      {
        v12(v11);
      }

      else
      {
        global_queue = dispatch_get_global_queue(2, 0);
        dispatch_async(global_queue, v11);
      }
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

const char *GTCaptureTriggerTypeAsString(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "Instant";
  }

  else
  {
    return (&off_2F1EC8)[a1 - 1];
  }
}

const char *GTCaptureObjectTypeAsString(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return "None";
  }

  else
  {
    return (&off_2F1E68)[a1 - 1];
  }
}

BOOL GTEventTracker_isBlocked(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  entry = find_entry(*(a1 + 56), &v5, 8uLL, 0);
  return *entry && (v3 = *(*entry + 32)) != 0 && *(v3 + 12) != 0;
}

uint64_t EventValueCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

void *GTEventTracker_make(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, apr_pool_t *p)
{
  v10 = apr_palloc(p, 0x58uLL);
  v11 = v10;
  if (v10)
  {
    v10[10] = 0;
    *(v10 + 3) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
  }

  *v10 = apr_hash_make(p);
  v11[1] = apr_hash_make(p);
  v11[3] = apr_hash_make(p);
  v11[2] = apr_hash_make(p);
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = apr_hash_make(p);
  v11[8] = apr_hash_make(p);
  v11[9] = a4;
  v11[10] = p;
  return v11;
}

void *GTEventTracker_makeFrom(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = apr_palloc(v2, 0x58uLL);
  v4 = v3;
  if (v3)
  {
    v3[10] = 0;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
  }

  v3[1] = apr_hash_make(v2);
  v4[7] = apr_hash_make(v2);
  v4[8] = apr_hash_make(v2);
  *v4 = *a1;
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 2) = *(a1 + 32);
  v4[6] = *(a1 + 48);
  v4[9] = *(a1 + 72);
  v4[10] = v2;
  return v4;
}

void GTEventTracker_processFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 <= -15340)
  {
    if (v4 > -15750)
    {
      if (v4 != -15749)
      {
        if (v4 == -15490)
        {
LABEL_26:
          v17 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(a1 + 40));
          v13 = *a2;
          v14 = *v17;
          v15 = v17[1];
          v16 = a1;
          v12 = 0;
          goto LABEL_27;
        }

        if (v4 != -15340)
        {
          return;
        }

        goto LABEL_24;
      }
    }

    else if (v4 != -15991)
    {
      if (v4 != -15990)
      {
        if (v4 != -15975)
        {
          return;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (v4 <= -15286)
  {
    if (v4 == -15339)
    {
LABEL_16:
      v5 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(a1 + 40));
      CommandBufferQueue = GTTraceDump_getCommandBufferQueue(*(a1 + 48), *v5);
      v7 = *a2;
      v8 = v5[1];
      v9 = v5[2];
      goto LABEL_17;
    }

    if (v4 != -15309)
    {
      if (v4 != -15308)
      {
        return;
      }

      goto LABEL_16;
    }

LABEL_24:
    v11 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(a1 + 40));
    v12 = GTTraceDump_getCommandBufferQueue(*(a1 + 48), *v11);
    v13 = *a2;
    v14 = v11[1];
    v15 = v11[2];
LABEL_25:
    v16 = a1;
LABEL_27:

    GTEventTracker_processSignal(v16, v14, v12, v13, v15);
    return;
  }

  if (v4 == -15285)
  {
    goto LABEL_24;
  }

  if (v4 == -14844)
  {
    v18 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(a1 + 40));
    v12 = *v18;
    v14 = v18[1];
    v13 = *a2;
    v15 = v18[2];
    goto LABEL_25;
  }

  if (v4 != -14842)
  {
    return;
  }

  v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(a1 + 40));
  CommandBufferQueue = *v10;
  v8 = v10[1];
  v7 = *a2;
  v9 = v10[2];
LABEL_17:

  GTEventTracker_processWait(a1, v8, CommandBufferQueue, v7, v9);
}

apr_hash_index_t *GTEventTracker_processSignal(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v37 = a5;
  v38 = a3;
  v10 = apr_palloc(*(a1 + 80), 8uLL);
  *v10 = GTEventTracker_eventKey(*(a1 + 72), a2, a4);
  if (a3)
  {
    v11 = *find_entry(*(a1 + 64), &v38, 8uLL, 0);
    if (v11)
    {
      v12 = *(v11 + 32);
      if (v12)
      {
        result = find_entry(v12, v10, 8uLL, 0);
        if (*result)
        {
          v14 = *(*result + 32);
          if (v14)
          {
            if (*v14 >= v5)
            {
              return result;
            }
          }
        }
      }
    }
  }

  v15 = apr_palloc(*(a1 + 80), 8uLL);
  *v15 = a2;
  apr_hash_set(*a1, v15, 8, v10);
  v16 = *find_entry(*(a1 + 8), v10, 8uLL, 0);
  if (v16)
  {
    v17 = *(v16 + 32);
  }

  else
  {
    v17 = 0;
  }

  v18 = *find_entry(*(a1 + 16), v10, 8uLL, 0);
  if (!v18)
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = *(v18 + 32);
  if (!v17)
  {
LABEL_12:
    v17 = apr_palloc(*(a1 + 80), 8uLL);
    *v17 = 0;
    apr_hash_set(*(a1 + 8), v10, 8, v17);
  }

LABEL_13:
  if (!v19)
  {
    v19 = apr_array_make(*(a1 + 80), 4, 8);
    apr_hash_set(*(a1 + 16), v10, 8, v19);
  }

  if (*v17 < v5)
  {
    *v17 = v5;
  }

  nelts = v19->nelts;
  if (nelts)
  {
    elts = v19->elts;
    v36 = elts;
    if (nelts >= 1)
    {
      elt_size = v19->elt_size;
      v23 = v19->nelts;
      do
      {
        v24 = &elts[(elt_size * (v23 >> 1))];
        v25 = EventValueCompare(v24, &v37);
        if (v25 >= 0)
        {
          v23 >>= 1;
        }

        else
        {
          v23 += ~(v23 >> 1);
        }

        if (v25 < 0)
        {
          elts = &v24[elt_size];
        }
      }

      while (v23 > 0);
    }

    v5 = v37;
    v26 = (elts - v36) >> 3;
    if (nelts <= v26 || *elts > v37)
    {
      *GTInsert(v19, v26) = v5;
      v5 = v37;
    }
  }

  else
  {
    *apr_array_push(v19) = v5;
  }

  v27 = *(a1 + 56);
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = v27;
  *(v27 + 40) = 0;
  for (result = apr_hash_next((v27 + 16)); result; result = apr_hash_next(result))
  {
    v28 = *(*(result + 1) + 32);
    if (v28)
    {
      v29 = *(v28 + 12);
      if (v29 >= 1)
      {
        v30 = 0;
        for (i = 0; i < v29; ++i)
        {
          v32 = *(v28 + 24);
          v33 = v32 + v30;
          if (*(v32 + v30 + 8) == *v10 && *(v33 + 16) <= v5)
          {
            v34 = v32 + 24 * v29;
            v35 = *(v34 - 24);
            *(v33 + 16) = *(v34 - 8);
            *v33 = v35;
            v29 = *(v28 + 12);
            if (v29)
            {
              *(v28 + 12) = --v29;
            }
          }

          v30 += 24;
        }
      }
    }
  }

  return result;
}

void GTEventTracker_processWait(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v31 = a3;
  v32 = a2;
  v9 = apr_palloc(*(a1 + 80), 8uLL);
  *v9 = GTEventTracker_eventKey(*(a1 + 72), a2, a4);
  v10 = apr_palloc(*(a1 + 80), 8uLL);
  *v10 = a2;
  apr_hash_set(*a1, v10, 8, v9);
  v11 = *find_entry(*(a1 + 24), v9, 8uLL, 0);
  if (!v11 || (v12 = *(v11 + 32)) == 0)
  {
    v12 = apr_palloc(*(a1 + 80), 8uLL);
    *v12 = -1;
    apr_hash_set(*(a1 + 24), v9, 8, v12);
  }

  if (*v12 > a5)
  {
    *v12 = a5;
  }

  v13 = *find_entry(*(a1 + 64), &v31, 8uLL, 0);
  if (!v13 || (v14 = *(v13 + 32)) == 0)
  {
    v14 = apr_hash_make(*(a1 + 80));
    v15 = apr_palloc(*(a1 + 80), 8uLL);
    *v15 = v31;
    apr_hash_set(*(a1 + 64), v15, 8, v14);
  }

  v16 = *find_entry(v14, &v32, 8uLL, 0);
  if (v16 && (v17 = *(v16 + 32)) != 0)
  {
    if (*v17 >= a5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = apr_palloc(*(a1 + 80), 8uLL);
    *v17 = a5;
  }

  apr_hash_set(v14, v9, 8, v17);
LABEL_15:
  if (v31)
  {
    v18 = *find_entry(*(a1 + 8), v9, 8uLL, 0);
    v19 = v18 ? *(v18 + 32) : 0;
    entry = find_entry(*(a1 + 16), v9, 8uLL, 0);
    if (*entry)
    {
      v21 = *(*entry + 32);
      if (v21)
      {
        if (*(v21 + 12) >= 1)
        {
          v22 = **(v21 + 24);
          v23 = v22 == *v12;
          if (v22 >= *v12)
          {
            v24 = *v12;
          }

          else
          {
            v24 = v22 - 1;
          }

          if (v23)
          {
            v24 = *v12 - 1;
          }

          if (v24 < a5 && (!v19 || *v19 < a5))
          {
            v33 = v31;
            v25 = *find_entry(*(a1 + 56), &v33, 8uLL, 0);
            if (!v25 || (v26 = *(v25 + 32)) == 0)
            {
              v26 = apr_array_make(*(a1 + 80), 4, 24);
              v27 = apr_palloc(*(a1 + 80), 8uLL);
              *v27 = v33;
              apr_hash_set(*(a1 + 56), v27, 8, v26);
            }

            v28 = v33;
            v29 = *v9;
            v30 = apr_array_push(v26);
            *v30 = v28;
            v30[1] = v29;
            v30[2] = a5;
          }
        }
      }
    }
  }
}

void *GTEventTracker_eventKey(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  result = GTMTLSMContext_getObject(a1, a2, a3);
  if (result)
  {
    v4 = *result;
    if (*result == 76 || v4 == 61)
    {
      return (*(result + 18) | 0x8000000000000000);
    }

    else if (v4 == 38)
    {
      return (result[1] & 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL GTEventTracker_wasWaitSignaled(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *(a2 + 8);
  if (v5 <= -15340)
  {
    v6 = v5 == -15991;
    v7 = -15749;
  }

  else
  {
    v6 = v5 == -15339 || v5 == -14842;
    v7 = -15308;
  }

  if (v6 || v5 == v7)
  {
    v9 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(a1 + 40));
    v10 = *(v9 + 2);
    v13 = GTEventTracker_eventKey(*(a1 + 72), *(v9 + 1), *a2);
    entry = find_entry(*(a1 + 8), &v13, 8uLL, 0);
    return *entry && (v12 = *(*entry + 32)) != 0 && *v12 >= v10;
  }

  return result;
}

uint64_t GTEventTracker_isValueSignaled(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  v4 = *find_entry(*a1, &v9, 8uLL, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 32);
  if (!v5)
  {
    return 0;
  }

  v6 = *find_entry(a1[2], v5, 8uLL, 0);
  if (!v6)
  {
    return 0;
  }

  result = *(v6 + 32);
  if (result)
  {
    return GTBinarySearch(result, &v8, EventValueCompare) != 0;
  }

  return result;
}

void GTResourceTrackerProcessResourceUse(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (v6 <= -15820)
  {
    if (v6 <= -16280)
    {
      if (v6 <= -16383)
      {
        switch(v6)
        {
          case -20480:
          case -20473:
          case -20471:
          case -20470:
          case -20464:
          case -20456:
          case -20455:
          case -20454:
          case -20452:
          case -20448:
          case -20444:
          case -20442:
          case -20441:
          case -20440:
          case -20434:
          case -20431:
          case -20428:
          case -20426:
          case -20425:
          case -20424:
          case -20419:
          case -20417:
          case -20414:
          case -20409:
          case -20405:
          case -20397:
          case -20396:
          case -20394:
          case -20393:
          case -20392:
          case -20386:
          case -20383:
          case -20378:
          case -20376:
          case -20375:
          case -20374:
          case -20369:
          case -20367:
          case -20366:
          case -20360:
          case -20354:
          case -20348:
          case -20317:
          case -20314:
            goto LABEL_25;
          case -20479:
          case -20469:
          case -20439:
          case -20404:
          case -20391:
          case -20365:
            goto LABEL_260;
          case -20476:
          case -20461:
          case -20449:
          case -20430:
          case -20411:
          case -20401:
          case -20382:
          case -20357:
          case -20337:
          case -20328:
            goto LABEL_242;
          case -20474:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 39;
            goto LABEL_569;
          case -20457:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 40;
            goto LABEL_569;
          case -20445:
            v226 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerUsingResource(a1[3], 103, *v226, *a1, a1[1]);
            v227 = *v226;

            GTResourceTrackerUsingFrameInterpolator(a1, v227);
            break;
          case -20420:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 104;
            goto LABEL_569;
          case -20406:
            v224 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerUsingResource(a1[3], 107, *v224, *a1, a1[1]);
            v225 = *v224;

            GTResourceTrackerUsingMTL4FrameInterpolator(a1, v225);
            break;
          case -20398:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 108;
            goto LABEL_569;
          case -20370:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 110;
            goto LABEL_569;
          case -20351:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 109;
            goto LABEL_569;
          default:
            return;
        }

        return;
      }

      if (v6 > -16338)
      {
        if (v6 > -16334)
        {
          if (v6 <= -16332)
          {
            if (v6 == -16333)
            {
              v378 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v379 = a1[3];
              v380 = GTTraceFunc_argumentBytesWithMap(a2, v378[24], a1[1]);
              v381 = *(v378 + 2);
              if (v381)
              {
                v382 = v380;
                v384 = *a1;
                v383 = a1[1];
                do
                {
                  v386 = *v382++;
                  v385 = v386;
                  if (v386)
                  {
                    GTResourceTrackerUsingResource(v379, 80, v385, v384, v383);
                  }

                  --v381;
                }

                while (v381);
              }

              return;
            }
          }

          else
          {
            if (v6 == -16331)
            {
              v387 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v388 = a1[3];
              v389 = GTTraceFunc_argumentBytesWithMap(a2, v387[24], a1[1]);
              v390 = *(v387 + 2);
              if (v390)
              {
                v391 = v389;
                v393 = *a1;
                v392 = a1[1];
                do
                {
                  v395 = *v391++;
                  v394 = v395;
                  if (v395)
                  {
                    GTResourceTrackerUsingResource(v388, 75, v394, v393, v392);
                  }

                  --v390;
                }

                while (v390);
              }

              return;
            }

            if (v6 != -16330)
            {
              if (v6 == -16329)
              {
                v31 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v32 = a1[3];
                v33 = GTTraceFunc_argumentBytesWithMap(a2, v31[24], a1[1]);
                v34 = *(v31 + 2);
                if (v34)
                {
                  v35 = v33;
                  v37 = *a1;
                  v36 = a1[1];
                  do
                  {
                    v39 = *v35++;
                    v38 = v39;
                    if (v39)
                    {
                      GTResourceTrackerUsingResource(v32, 75, v38, v37, v36);
                    }

                    --v34;
                  }

                  while (v34);
                }
              }

              return;
            }
          }

LABEL_250:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
LABEL_251:
          ResourceType = 75;
          goto LABEL_569;
        }

        if (v6 > -16336)
        {
          if (v6 == -16335)
          {
            v369 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v370 = a1[3];
            v371 = GTTraceFunc_argumentBytesWithMap(a2, v369[24], a1[1]);
            v372 = *(v369 + 2);
            if (v372)
            {
              v373 = v371;
              v375 = *a1;
              v374 = a1[1];
              do
              {
                v377 = *v373++;
                v376 = v377;
                if (v377)
                {
                  GTResourceTrackerUsingResource(v370, 22, v376, v375, v374);
                }

                --v372;
              }

              while (v372);
            }

            return;
          }

LABEL_238:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 80;
LABEL_569:

          GTResourceTrackerUsingResource(v45, ResourceType, v42, v43, v44);
          return;
        }

        if (v6 == -16337)
        {
LABEL_324:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 29;
          goto LABEL_569;
        }

        v49 = -16336;
        goto LABEL_289;
      }

      if (v6 > -16379)
      {
        if (v6 <= -16360)
        {
          if (v6 == -16378)
          {
LABEL_227:
            v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            goto LABEL_653;
          }

          v81 = -16377;
          goto LABEL_213;
        }

        if (v6 != -16359 && v6 != -16358)
        {
          return;
        }

LABEL_248:
        v105 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v106 = a1[3];
        v42 = *(v105 + 1);
        goto LABEL_339;
      }

      if (v6 <= -16381)
      {
        if (v6 == -16382)
        {
LABEL_226:
          v100 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v101 = v100[1];
LABEL_624:
          GTResourceTrackerResourceRead(a1, 80, v101, a3);
          v48 = v100[10];
        }

        else
        {
LABEL_110:
          v50 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v51 = v50[1];
          v52 = a1;
          v53 = 22;
LABEL_111:
          GTResourceTrackerResourceRead(v52, v53, v51, a3);
          v48 = v50[8];
        }

        goto LABEL_243;
      }

      if (v6 == -16380)
      {
LABEL_244:
        v104 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 80, *(v104 + 1), a3);
        goto LABEL_245;
      }

      v24 = -16379;
      goto LABEL_241;
    }

    if (v6 <= -16088)
    {
      switch(v6)
      {
        case -16279:
          goto LABEL_196;
        case -16278:
        case -16263:
          goto LABEL_290;
        case -16277:
          v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v11 = a1[3];
          v12 = GTTraceFunc_argumentBytesWithMap(a2, v10[24], a1[1]);
          v13 = *(v10 + 2);
          if (v13)
          {
            v14 = v12;
            v16 = *a1;
            v15 = a1[1];
            do
            {
              v18 = *v14++;
              v17 = v18;
              if (v18)
              {
                GTResourceTrackerUsingResource(v11, 22, v17, v16, v15);
              }

              --v13;
            }

            while (v13);
          }

          return;
        case -16276:
        case -16261:
          goto LABEL_238;
        case -16275:
          v162 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v163 = a1[3];
          v164 = GTTraceFunc_argumentBytesWithMap(a2, v162[24], a1[1]);
          v165 = *(v162 + 2);
          if (v165)
          {
            v166 = v164;
            v168 = *a1;
            v167 = a1[1];
            do
            {
              v170 = *v166++;
              v169 = v170;
              if (v170)
              {
                GTResourceTrackerUsingResource(v163, 80, v169, v168, v167);
              }

              --v165;
            }

            while (v165);
          }

          return;
        case -16274:
        case -16272:
        case -16259:
        case -16257:
          goto LABEL_250;
        case -16273:
          v207 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v208 = a1[3];
          v209 = GTTraceFunc_argumentBytesWithMap(a2, v207[24], a1[1]);
          v210 = *(v207 + 2);
          if (v210)
          {
            v211 = v209;
            v213 = *a1;
            v212 = a1[1];
            do
            {
              v215 = *v211++;
              v214 = v215;
              if (v215)
              {
                GTResourceTrackerUsingResource(v208, 75, v214, v213, v212);
              }

              --v210;
            }

            while (v210);
          }

          return;
        case -16271:
          v180 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v181 = a1[3];
          v182 = GTTraceFunc_argumentBytesWithMap(a2, v180[24], a1[1]);
          v183 = *(v180 + 2);
          if (v183)
          {
            v184 = v182;
            v186 = *a1;
            v185 = a1[1];
            do
            {
              v188 = *v184++;
              v187 = v188;
              if (v188)
              {
                GTResourceTrackerUsingResource(v181, 75, v187, v186, v185);
              }

              --v183;
            }

            while (v183);
          }

          return;
        case -16270:
        case -16269:
        case -16268:
        case -16267:
        case -16266:
        case -16265:
        case -16264:
        case -16255:
        case -16253:
        case -16252:
        case -16251:
        case -16250:
        case -16247:
        case -16246:
        case -16245:
        case -16244:
        case -16243:
        case -16242:
        case -16241:
        case -16240:
        case -16239:
        case -16238:
        case -16237:
        case -16236:
        case -16235:
        case -16234:
        case -16233:
        case -16232:
        case -16231:
        case -16230:
        case -16229:
        case -16228:
        case -16227:
        case -16226:
        case -16225:
        case -16224:
        case -16223:
        case -16222:
        case -16221:
        case -16219:
        case -16218:
          return;
        case -16262:
          v171 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v172 = a1[3];
          v173 = GTTraceFunc_argumentBytesWithMap(a2, v171[24], a1[1]);
          v174 = *(v171 + 2);
          if (v174)
          {
            v175 = v173;
            v177 = *a1;
            v176 = a1[1];
            do
            {
              v179 = *v175++;
              v178 = v179;
              if (v179)
              {
                GTResourceTrackerUsingResource(v172, 22, v178, v177, v176);
              }

              --v174;
            }

            while (v174);
          }

          return;
        case -16260:
          v198 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v199 = a1[3];
          v200 = GTTraceFunc_argumentBytesWithMap(a2, v198[24], a1[1]);
          v201 = *(v198 + 2);
          if (v201)
          {
            v202 = v200;
            v204 = *a1;
            v203 = a1[1];
            do
            {
              v206 = *v202++;
              v205 = v206;
              if (v206)
              {
                GTResourceTrackerUsingResource(v199, 80, v205, v204, v203);
              }

              --v201;
            }

            while (v201);
          }

          return;
        case -16258:
          v153 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v154 = a1[3];
          v155 = GTTraceFunc_argumentBytesWithMap(a2, v153[24], a1[1]);
          v156 = *(v153 + 2);
          if (v156)
          {
            v157 = v155;
            v159 = *a1;
            v158 = a1[1];
            do
            {
              v161 = *v157++;
              v160 = v161;
              if (v161)
              {
                GTResourceTrackerUsingResource(v154, 75, v160, v159, v158);
              }

              --v156;
            }

            while (v156);
          }

          return;
        case -16256:
          v189 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v190 = a1[3];
          v191 = GTTraceFunc_argumentBytesWithMap(a2, v189[24], a1[1]);
          v192 = *(v189 + 2);
          if (v192)
          {
            v193 = v191;
            v195 = *a1;
            v194 = a1[1];
            do
            {
              v197 = *v193++;
              v196 = v197;
              if (v197)
              {
                GTResourceTrackerUsingResource(v190, 75, v196, v195, v194);
              }

              --v192;
            }

            while (v192);
          }

          return;
        case -16254:
          goto LABEL_323;
        case -16249:
        case -16248:
        case -16217:
LABEL_60:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 4);
          goto LABEL_697;
        case -16220:
          goto LABEL_162;
        case -16216:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
          goto LABEL_697;
        case -16215:
          v151 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v152 = v151[3];
LABEL_658:
          GTResourceTrackerResourceRead(a1, 22, v152, a3);
LABEL_659:
          v19 = v151[5];
          goto LABEL_697;
        case -16214:
          v216 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 80, *(v216 + 1), *a1, a1[1]);
          v45 = a1[3];
          v42 = *(v216 + 3);
          v43 = *a1;
          v44 = a1[1];
          goto LABEL_251;
        case -16213:
          goto LABEL_298;
        case -16212:
          goto LABEL_242;
        case -16211:
          goto LABEL_226;
        case -16210:
          goto LABEL_110;
        case -16209:
          goto LABEL_244;
        default:
          switch(v6)
          {
            case -16156:
            case -16155:
              goto LABEL_25;
            case -16148:
              goto LABEL_162;
            case -16147:
              goto LABEL_60;
            case -16146:
              v494 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v495 = v494[2];
LABEL_622:
              GTResourceTrackerResourceRead(a1, 22, v495, a3);
              v19 = v494[4];
              goto LABEL_697;
            case -16145:
              v492 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v493 = v492[4];
              goto LABEL_695;
            case -16144:
              v492 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              GTResourceTrackerResourceRead(a1, 22, v492[2], a3);
              v493 = v492[4];
LABEL_695:
              GTResourceTrackerResourceRead(a1, 22, v493, a3);
LABEL_696:
              v19 = v492[6];
              goto LABEL_697;
            case -16142:
              goto LABEL_290;
            case -16140:
              goto LABEL_238;
            case -16139:
            case -16138:
              goto LABEL_250;
            case -16133:
              goto LABEL_248;
            case -16131:
            case -16130:
            case -16129:
            case -16126:
            case -16125:
            case -16124:
              goto LABEL_260;
            default:
              return;
          }
      }
    }

    if (v6 > -15991)
    {
      if (v6 > -15959)
      {
        if (v6 <= -15887)
        {
          if (v6 > -15898)
          {
            if (v6 == -15897)
            {
              v442 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v443 = a1[3];
              v444 = GTTraceFunc_argumentBytesWithMap(a2, v442[16], a1[1]);
              v445 = *(v442 + 1);
              if (v445)
              {
                v446 = v444;
                v448 = *a1;
                v447 = a1[1];
                do
                {
                  v450 = *v446++;
                  v449 = v450;
                  if (v450)
                  {
                    GTResourceTrackerUsingResource(v443, 73, v449, v448, v447);
                  }

                  --v445;
                }

                while (v445);
              }

              return;
            }

            if (v6 == -15888)
            {
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 64;
              goto LABEL_569;
            }

            if (v6 != -15887)
            {
              return;
            }

            v73 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerResourceRead(a1, 80, v73[1], a3);
            v74 = v73[2];
            v75 = a1;
            v76 = 80;
            goto LABEL_215;
          }

          if (v6 != -15958)
          {
            if (v6 == -15898)
            {
              v123 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v124 = a1[3];
              v125 = GTTraceFunc_argumentBytesWithMap(a2, v123[16], a1[1]);
              v126 = *(v123 + 1);
              if (v126)
              {
                v127 = v125;
                v129 = *a1;
                v128 = a1[1];
                do
                {
                  v131 = *v127++;
                  v130 = v131;
                  if (v131)
                  {
                    GTResourceTrackerUsingResource(v124, 73, v130, v129, v128);
                  }

                  --v126;
                }

                while (v126);
              }
            }

            return;
          }

          goto LABEL_333;
        }

        if (v6 > -15878)
        {
          if (v6 != -15877)
          {
            if (v6 != -15821)
            {
              if (v6 == -15820)
              {
                v87 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v88 = GTTraceFunc_argumentBytesWithMap(a2, v87[24], a1[1]);
                v89 = *(v87 + 1);
                if (v89)
                {
                  v90 = v88;
                  do
                  {
                    v91 = *v90++;
                    GTResourceTrackerUsingResourceHeap(a1, v91, a3);
                    --v89;
                  }

                  while (v89);
                }
              }

              return;
            }

            goto LABEL_310;
          }

LABEL_325:
          v137 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v137 + 1), a3);
          v48 = *(v137 + 2);
        }

        else
        {
          if (v6 == -15886 || v6 == -15885)
          {
            goto LABEL_260;
          }

          if (v6 != -15878)
          {
            return;
          }

LABEL_95:
          v47 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v47 + 1), a3);
          v48 = *(v47 + 4);
        }

LABEL_243:
        v55 = a1;
        v56 = 80;
        goto LABEL_654;
      }

      if (v6 > -15965)
      {
        if (v6 <= -15962)
        {
          if (v6 != -15963)
          {
            v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            v20 = a1;
            v21 = 57;
LABEL_698:

            GTResourceTrackerResourceRead(v20, v21, v19, a3);
            return;
          }

          goto LABEL_331;
        }

        if (v6 == -15961)
        {
LABEL_331:
          v138 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 57, *(v138 + 1), a3);
LABEL_332:
          v19 = *(v138 + 2);
          goto LABEL_697;
        }

        if (v6 != -15960)
        {
          v86 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 57, *(v86 + 1), a3);
          v48 = *(v86 + 4);
LABEL_334:
          v55 = a1;
          v56 = 57;
          goto LABEL_654;
        }

LABEL_333:
        v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
        goto LABEL_334;
      }

      if (v6 > -15977)
      {
        if (v6 != -15976)
        {
          if (v6 == -15967)
          {
            goto LABEL_298;
          }

          v72 = -15966;
LABEL_309:
          if (v6 != v72)
          {
            return;
          }

          goto LABEL_310;
        }

        goto LABEL_242;
      }

      if (v6 == -15990)
      {
        goto LABEL_298;
      }

      if (v6 != -15977)
      {
        return;
      }

      v104 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v120 = tracker_resource_get(a1, 80, *(v104 + 1), a3);
      if (v120)
      {
        v120[4] = a3;
      }

LABEL_245:
      v48 = *(v104 + 10);
      goto LABEL_653;
    }

    if (v6 <= -16043)
    {
      if (v6 <= -16048)
      {
        if (v6 <= -16086)
        {
          if (v6 == -16087)
          {
            v424 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v425 = a1[3];
            v426 = GTTraceFunc_argumentBytesWithMap(a2, v424[24], a1[1]);
            v427 = *(v424 + 2);
            if (v427)
            {
              v428 = v426;
              v430 = *a1;
              v429 = a1[1];
              do
              {
                v432 = *v428++;
                v431 = v432;
                if (v432)
                {
                  GTResourceTrackerUsingResource(v425, 22, v431, v430, v429);
                }

                --v427;
              }

              while (v427);
            }
          }

          else
          {
            v107 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v108 = a1[3];
            v109 = GTTraceFunc_argumentBytesWithMap(a2, v107[24], a1[1]);
            v110 = *(v107 + 2);
            if (v110)
            {
              v111 = v109;
              v113 = *a1;
              v112 = a1[1];
              do
              {
                v115 = *v111++;
                v114 = v115;
                if (v115)
                {
                  GTResourceTrackerUsingResource(v108, 80, v114, v113, v112);
                }

                --v110;
              }

              while (v110);
            }
          }

          return;
        }

        if (v6 == -16085)
        {
          v412 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v413 = a1[3];
          v414 = GTTraceFunc_argumentBytesWithMap(a2, v412[24], a1[1]);
          v415 = *(v412 + 2);
          if (v415)
          {
            v416 = v414;
            v418 = *a1;
            v417 = a1[1];
            do
            {
              v420 = *v416++;
              v419 = v420;
              if (v420)
              {
                GTResourceTrackerUsingResource(v413, 75, v419, v418, v417);
              }

              --v415;
            }

            while (v415);
          }

          return;
        }

        if (v6 == -16084)
        {
          v398 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v399 = a1[3];
          v400 = GTTraceFunc_argumentBytesWithMap(a2, v398[24], a1[1]);
          v401 = *(v398 + 2);
          if (v401)
          {
            v402 = v400;
            v404 = *a1;
            v403 = a1[1];
            do
            {
              v406 = *v402++;
              v405 = v406;
              if (v406)
              {
                GTResourceTrackerUsingResource(v399, 75, v405, v404, v403);
              }

              --v401;
            }

            while (v401);
          }

          return;
        }

        if (v6 != -16079)
        {
          return;
        }

        goto LABEL_162;
      }

      if (v6 > -16046)
      {
        if (v6 != -16045)
        {
          if (v6 == -16044)
          {
            v407 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v408 = GTTraceFunc_argumentBytesWithMap(a2, v407[16], a1[1]);
            v409 = *(v407 + 1);
            if (v409)
            {
              v410 = v408;
              do
              {
                v411 = *v410++;
                GTResourceTrackerUsingResourceHeap(a1, v411, a3);
                --v409;
              }

              while (v409);
            }

            return;
          }

          goto LABEL_284;
        }

        goto LABEL_310;
      }

      if (v6 == -16047)
      {
        goto LABEL_284;
      }
    }

    else
    {
      if (v6 > -16004)
      {
        if (v6 > -15994)
        {
          if (v6 != -15993 && v6 != -15992)
          {
            v92 = -15991;
            goto LABEL_274;
          }

          goto LABEL_242;
        }

        if (v6 != -16003)
        {
          if (v6 == -15995)
          {
LABEL_242:
            v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            goto LABEL_243;
          }

          v24 = -15994;
LABEL_241:
          if (v6 != v24)
          {
            return;
          }

          goto LABEL_242;
        }

        v77 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v78 = a1[3];
        v79 = v77[32];
LABEL_589:
        v465 = GTTraceFunc_argumentBytesWithMap(a2, v79, a1[1]);
        v466 = *(v77 + 1);
        v467 = *a1;
        v468 = a1[1];

        GTResourceTrackerUsingResourceArray(v78, 0, v465, v466, v467, v468);
        return;
      }

      if (v6 > -16041)
      {
        if (v6 == -16040)
        {
          v460 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v461 = GTTraceFunc_argumentBytesWithMap(a2, v460[16], a1[1]);
          v462 = *(v460 + 1);
          if (v462)
          {
            v463 = v461;
            do
            {
              v464 = *v463++;
              GTResourceTrackerUsingResourceHeap(a1, v464, a3);
              --v462;
            }

            while (v462);
          }

          return;
        }

        if (v6 != -16017)
        {
          if (v6 != -16008)
          {
            return;
          }

          v77 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v78 = a1[3];
          v79 = v77[16];
          goto LABEL_589;
        }

LABEL_162:
        v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_697:
        v20 = a1;
        v21 = 22;
        goto LABEL_698;
      }

      if (v6 != -16042)
      {
        v72 = -16041;
        goto LABEL_309;
      }
    }

LABEL_313:
    v57 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v58 = v57[24];
LABEL_314:
    v133 = GTTraceFunc_argumentBytesWithMap(a2, v58, a1[1]);
    v134 = *(v57 + 1);
    v135 = *(v57 + 4);

    GTResourceTrackerResourceUsageArray(a1, v133, v134, a3, v135);
    return;
  }

  if (v6 > -15340)
  {
    if (v6 <= -14888)
    {
      if (v6 > -15120)
      {
        if (v6 <= -15042)
        {
          switch(v6)
          {
            case -15119:
            case -15118:
              goto LABEL_110;
            case -15117:
              goto LABEL_214;
            case -15115:
            case -15114:
              goto LABEL_244;
            case -15113:
              goto LABEL_226;
            case -15112:
              goto LABEL_95;
            case -15111:
              goto LABEL_325;
            case -15100:
              goto LABEL_227;
            case -15096:
            case -15094:
            case -15093:
            case -15092:
            case -15091:
              goto LABEL_242;
            case -15086:
              goto LABEL_254;
            case -15085:
              goto LABEL_324;
            case -15082:
            case -15081:
              goto LABEL_260;
            default:
              return;
          }

          return;
        }

        if (v6 <= -15018)
        {
          if (v6 != -15041)
          {
            if (v6 == -15035)
            {
LABEL_323:
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 34;
            }

            else
            {
              if (v6 != -15030)
              {
                return;
              }

LABEL_196:
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 71;
            }

            goto LABEL_569;
          }

          goto LABEL_254;
        }

        if (v6 <= -14894)
        {
          if (v6 != -15017)
          {
            v59 = -15016;
LABEL_259:
            if (v6 != v59)
            {
              return;
            }
          }

LABEL_260:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 41;
          goto LABEL_569;
        }

        if (v6 != -14893)
        {
          if (v6 != -14888)
          {
            return;
          }

LABEL_254:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 88;
          goto LABEL_569;
        }

LABEL_310:
        v132 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);

        GTResourceTrackerUsingResourceHeap(a1, v132, a3);
        return;
      }

      if (v6 > -15283)
      {
        if (v6 <= -15218)
        {
          if (v6 > -15274)
          {
            if (v6 == -15273)
            {
              v433 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v434 = a1[3];
              v435 = GTTraceFunc_argumentBytesWithMap(a2, v433[24], a1[1]);
              v436 = *(v433 + 2);
              if (v436)
              {
                v437 = v435;
                v439 = *a1;
                v438 = a1[1];
                do
                {
                  v441 = *v437++;
                  v440 = v441;
                  if (v441)
                  {
                    GTResourceTrackerUsingResource(v434, 22, v440, v439, v438);
                  }

                  --v436;
                }

                while (v436);
              }

              return;
            }

            if (v6 != -15254)
            {
              if (v6 == -15253)
              {
                v25 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v26 = GTTraceFunc_argumentBytesWithMap(a2, v25[16], a1[1]);
                v27 = *(v25 + 1);
                if (v27)
                {
                  v28 = v26;
                  do
                  {
                    v30 = *v28++;
                    v29 = v30;
                    if (v30)
                    {
                      GTResourceTrackerUsingResidencySet(a1, v29);
                    }

                    --v27;
                  }

                  while (v27);
                }
              }

              return;
            }

            goto LABEL_328;
          }

          if (v6 == -15282)
          {
            v451 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v452 = a1[3];
            v453 = GTTraceFunc_argumentBytesWithMap(a2, v451[24], a1[1]);
            v454 = *(v451 + 2);
            if (v454)
            {
              v455 = v453;
              v457 = *a1;
              v456 = a1[1];
              do
              {
                v459 = *v455++;
                v458 = v459;
                if (v459)
                {
                  GTResourceTrackerUsingResource(v452, 22, v458, v457, v456);
                }

                --v454;
              }

              while (v454);
            }

            return;
          }

          v49 = -15275;
LABEL_289:
          if (v6 != v49)
          {
            return;
          }

LABEL_290:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 22;
          goto LABEL_569;
        }

        if (v6 > -15173)
        {
          if (v6 != -15172)
          {
            if (v6 != -15163)
            {
              if (v6 == -15162)
              {
                v66 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v67 = GTTraceFunc_argumentBytesWithMap(a2, v66[16], a1[1]);
                v68 = *(v66 + 1);
                if (v68)
                {
                  v69 = v67;
                  do
                  {
                    v71 = *v69++;
                    v70 = v71;
                    if (v71)
                    {
                      GTResourceTrackerUsingResidencySet(a1, v70);
                    }

                    --v68;
                  }

                  while (v68);
                }
              }

              return;
            }

LABEL_328:
            v140 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);

            GTResourceTrackerUsingResidencySet(a1, v140);
            return;
          }

LABEL_293:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 90;
          goto LABEL_569;
        }

        if (v6 != -15217)
        {
          if (v6 != -15173)
          {
            return;
          }

          goto LABEL_293;
        }

LABEL_298:
        v121 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v122 = a1[3];
        ResourceType = GTResourceTrackerGetResourceType(*(v121 + 1), *a1);
        v42 = *(v121 + 1);
        v43 = *a1;
        v44 = a1[1];
        v45 = v122;
        goto LABEL_569;
      }

      if (v6 > -15309)
      {
        if (v6 > -15288)
        {
          if (v6 == -15287)
          {
            goto LABEL_322;
          }

          if (v6 == -15285)
          {
            goto LABEL_298;
          }

          v49 = -15284;
          goto LABEL_289;
        }

        if (v6 == -15308)
        {
          goto LABEL_298;
        }

        if (v6 != -15294)
        {
          return;
        }

        v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
        v43 = *a1;
        v44 = a1[1];
        v45 = a1[3];
LABEL_555:
        ResourceType = 53;
        goto LABEL_569;
      }

      if (v6 <= -15311)
      {
        if (v6 == -15339)
        {
          goto LABEL_298;
        }

        if (v6 != -15311)
        {
          return;
        }

        v83 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v84 = tracker_resource_get(a1, 22, *(v83 + 1), a3);
        if (v84)
        {
          *(v84 + 48) = 1;
        }

        v85 = tracker_resource_get(a1, 22, *(v83 + 1), a3);
        if (v85)
        {
          v85[4] = a3;
        }

        v45 = a1[3];
        v42 = *(v83 + 4);
        goto LABEL_554;
      }

      if (v6 == -15310)
      {
        v421 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v422 = tracker_resource_get(a1, 80, *(v421 + 1), a3);
        if (v422)
        {
          *(v422 + 48) = 1;
        }

        v423 = tracker_resource_get(a1, 80, *(v421 + 1), a3);
        if (v423)
        {
          v423[4] = a3;
        }

        v45 = a1[3];
        v42 = *(v421 + 12);
LABEL_554:
        v43 = *a1;
        v44 = a1[1];
        goto LABEL_555;
      }

      v92 = -15309;
LABEL_274:
      if (v6 != v92)
      {
        return;
      }

      goto LABEL_298;
    }

    if (v6 > -7158)
    {
      switch(v6)
      {
        case -6142:
          v543 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 7, *v543, *a1, a1[1]);
          v544 = GTTraceFunc_argumentBytesWithMap(a2, v543[40], a1[1]);
          v545 = *(v543 + 6);
          if (v545)
          {
            v546 = v544;
            do
            {
              v548 = *v546++;
              v547 = v548;
              if (v548)
              {
                GTResourceTrackerResourceRead(a1, 80, v547, a3);
              }

              --v545;
            }

            while (v545);
          }

          v549 = GTTraceFunc_argumentBytesWithMap(a2, v543[64], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, 80, v549, *(v543 + 9), a3);
          v19 = *(v543 + 13);
          goto LABEL_697;
        case -6141:
        case -6139:
        case -6138:
        case -6134:
        case -6133:
        case -6131:
        case -6129:
        case -6128:
        case -6127:
        case -6124:
        case -6123:
        case -6122:
        case -6120:
        case -6119:
        case -6116:
        case -6111:
        case -6110:
        case -6109:
          return;
        case -6140:
          v550 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 11, *v550, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v550[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v550[11], a3);
          v551 = tracker_resource_get(a1, 22, v550[15], a3);
          if (v551)
          {
            v551[4] = a3;
          }

          v19 = v550[19];
          goto LABEL_697;
        case -6137:
          v529 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 11, *v529, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v529[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v529[11], a3);
          v48 = v529[15];
          goto LABEL_653;
        case -6136:
          v151 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v151, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v151[3], a3);
          v152 = v151[4];
          goto LABEL_658;
        case -6135:
          v523 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v524 = a1[3];
          v525 = *v523;
          v526 = *a1;
          v527 = a1[1];
          v528 = 8;
          goto LABEL_661;
        case -6132:
          v521 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v521, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v521[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v521[16], a3);
          v48 = v521[21];
          goto LABEL_653;
        case -6130:
          v522 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v522, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v522[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v522[11], a3);
          v48 = v522[16];
          goto LABEL_653;
        case -6126:
          v523 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v524 = a1[3];
          v525 = *v523;
          v526 = *a1;
          v527 = a1[1];
          v528 = 7;
LABEL_661:
          GTResourceTrackerUsingResource(v524, v528, v525, v526, v527);
          GTResourceTrackerResourceRead(a1, 80, v523[5], a3);
          v48 = v523[7];
          goto LABEL_243;
        case -6125:
          v100 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 4, *v100, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 80, v100[6], a3);
          v101 = v100[8];
          goto LABEL_624;
        case -6121:
          v497 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 7, *v497, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 80, v497[5], a3);
          v19 = v497[7];
          goto LABEL_26;
        case -6118:
          v502 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 4, *v502, *a1, a1[1]);
          v503 = GTTraceFunc_argumentBytesWithMap(a2, v502[48], a1[1]);
          v504 = *(v502 + 7);
          if (v504)
          {
            v505 = v503;
            do
            {
              v507 = *v505++;
              v506 = v507;
              if (v507)
              {
                GTResourceTrackerResourceRead(a1, 80, v506, a3);
              }

              --v504;
            }

            while (v504);
          }

          v508 = GTTraceFunc_argumentBytesWithMap(a2, v502[72], a1[1]);
          v509 = *(v502 + 10);
          if (v509)
          {
            v510 = v508;
            do
            {
              v512 = *v510++;
              v511 = v512;
              if (v512)
              {
                GTResourceTrackerResourceRead(a1, 80, v511, a3);
              }

              --v509;
            }

            while (v509);
          }

          v513 = GTTraceFunc_argumentBytesWithMap(a2, v502[96], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, 80, v513, *(v502 + 13), a3);
          goto LABEL_676;
        case -6117:
          v50 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 8, *v50, *a1, a1[1]);
          v51 = v50[6];
          v52 = a1;
          v53 = 80;
          goto LABEL_111;
        case -6115:
          v514 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 8, *v514, *a1, a1[1]);
          v515 = GTTraceFunc_argumentBytesWithMap(a2, v514[48], a1[1]);
          v516 = *(v514 + 7);
          if (v516)
          {
            v517 = v515;
            do
            {
              v519 = *v517++;
              v518 = v519;
              if (v519)
              {
                GTResourceTrackerResourceRead(a1, 80, v518, a3);
              }

              --v516;
            }

            while (v516);
          }

          v520 = GTTraceFunc_argumentBytesWithMap(a2, v514[72], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, 80, v520, *(v514 + 10), a3);
          v19 = *(v514 + 12);
          goto LABEL_697;
        case -6114:
          v502 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v502, *a1, a1[1]);
          v531 = GTTraceFunc_argumentBytesWithMap(a2, v502[48], a1[1]);
          v532 = *(v502 + 7);
          if (v532)
          {
            v533 = v531;
            do
            {
              v535 = *v533++;
              v534 = v535;
              if (v535)
              {
                GTResourceTrackerResourceRead(a1, 80, v534, a3);
              }

              --v532;
            }

            while (v532);
          }

          v536 = GTTraceFunc_argumentBytesWithMap(a2, v502[72], a1[1]);
          v537 = *(v502 + 10);
          if (v537)
          {
            v538 = v536;
            do
            {
              v540 = *v538++;
              v539 = v540;
              if (v540)
              {
                GTResourceTrackerResourceRead(a1, 80, v539, a3);
              }

              --v537;
            }

            while (v537);
          }

          GTResourceTrackerResourceRead(a1, 22, *(v502 + 12), a3);
          v541 = tracker_resource_get(a1, 22, *(v502 + 12), a3);
          if (v541)
          {
            v541[4] = a3;
          }

          GTResourceTrackerResourceRead(a1, 22, *(v502 + 13), a3);
          v542 = tracker_resource_get(a1, 22, *(v502 + 13), a3);
          if (v542)
          {
            v542[4] = a3;
          }

LABEL_676:
          v19 = *(v502 + 15);
          goto LABEL_697;
        case -6113:
          v494 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v494, *a1, a1[1]);
          v495 = v494[3];
          goto LABEL_622;
        case -6112:
          v151 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v151, *a1, a1[1]);
          v552 = tracker_resource_get(a1, 22, v151[3], a3);
          if (v552)
          {
            v552[4] = a3;
          }

          v553 = tracker_resource_get(a1, 22, v151[4], a3);
          if (v553)
          {
            v553[4] = a3;
          }

          goto LABEL_659;
        case -6108:
          v492 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v492, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v492[3], a3);
          v493 = v492[5];
          goto LABEL_695;
        case -6107:
          v151 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v151, *a1, a1[1]);
          v152 = v151[3];
          goto LABEL_658;
        case -6106:
          v492 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v492, *a1, a1[1]);
          v554 = tracker_resource_get(a1, 22, v492[3], a3);
          if (v554)
          {
            v554[4] = a3;
          }

          v555 = tracker_resource_get(a1, 22, v492[5], a3);
          if (v555)
          {
            v555[4] = a3;
          }

          goto LABEL_696;
        case -6105:
        case -6101:
          v22 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v22, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v22[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v22[16], a3);
          v23 = tracker_resource_get(a1, 22, v22[21], a3);
          if (v23)
          {
            v23[4] = a3;
          }

          v19 = v22[26];
          goto LABEL_697;
        case -6104:
          v496 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 9, *v496, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v496[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v496[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v496[16], a3);
          v48 = v496[20];
          goto LABEL_653;
        case -6103:
          v500 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 9, *v500, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v500[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v500[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v500[16], a3);
          v501 = tracker_resource_get(a1, 22, v500[20], a3);
          if (v501)
          {
            v501[4] = a3;
          }

          v19 = v500[33];
          goto LABEL_697;
        case -6102:
        case -6100:
          v142 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v143 = a1[3];
          v144 = *v142;
          v145 = *a1;
          v146 = a1[1];
          v147 = 14;
          goto LABEL_342;
        case -6099:
        case -6098:
          v142 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v143 = a1[3];
          v144 = *v142;
          v145 = *a1;
          v146 = a1[1];
          v147 = 13;
LABEL_342:
          GTResourceTrackerUsingResource(v143, v147, v144, v145, v146);
          GTResourceTrackerResourceRead(a1, 22, v142[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v142[8], a3);
          GTResourceTrackerResourceRead(a1, 22, v142[10], a3);
          v148 = tracker_resource_get(a1, 22, v142[12], a3);
          if (v148)
          {
            v148[4] = a3;
          }

          v19 = v142[15];
          goto LABEL_697;
        case -6097:
          v498 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 12, *v498, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v498[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v498[8], a3);
          v499 = tracker_resource_get(a1, 22, v498[10], a3);
          if (v499)
          {
            v499[4] = a3;
          }

          v19 = v498[12];
          goto LABEL_697;
        default:
          if (v6 == -7157)
          {
            goto LABEL_338;
          }

          v103 = -7156;
          goto LABEL_337;
      }
    }

    if (v6 <= -14829)
    {
      if (v6 <= -14833)
      {
        if (v6 == -14887)
        {
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 106;
          goto LABEL_569;
        }

        if (v6 == -14886)
        {
          goto LABEL_260;
        }

        v59 = -14885;
        goto LABEL_259;
      }

      if (v6 <= -14831)
      {
        if (v6 != -14832)
        {
          v41 = -14831;
          goto LABEL_230;
        }

LABEL_192:
        v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_232:
        v55 = a1;
        v56 = 16;
        goto LABEL_654;
      }

      if (v6 != -14830)
      {
        v41 = -14829;
LABEL_230:
        if (v6 != v41)
        {
          return;
        }

        goto LABEL_231;
      }

      goto LABEL_231;
    }

    if (v6 <= -14813)
    {
      if (v6 != -14828)
      {
        if (v6 != -14827 && v6 != -14826)
        {
          return;
        }

        goto LABEL_192;
      }

LABEL_231:
      v102 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v102 + 1), a3);
      v48 = *(v102 + 2);
      goto LABEL_232;
    }

    if (v6 <= -10155)
    {
      if (v6 != -14812 && v6 != -14804)
      {
        return;
      }

      v54 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 101, *(v54 + 1), a3);
      v48 = *(v54 + 36);
      v55 = a1;
      v56 = 101;
      goto LABEL_654;
    }

    if (v6 == -10154)
    {
      v149 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v149 + 1), a3);
      v150 = GTTraceFunc_argumentBytesWithMap(a2, v149[16], a1[1]);
      if (!v150)
      {
        return;
      }

      goto LABEL_609;
    }

    v103 = -7158;
LABEL_337:
    if (v6 != v103)
    {
      return;
    }

LABEL_338:
    v141 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v106 = a1[3];
    v42 = *v141;
LABEL_339:
    v43 = *a1;
    v44 = a1[1];
    v45 = v106;
    ResourceType = 2;
    goto LABEL_569;
  }

  if (v6 > -15475)
  {
    if (v6 <= -15367)
    {
      switch(v6)
      {
        case -15474:
          goto LABEL_227;
        case -15473:
        case -15472:
        case -15471:
        case -15470:
        case -15469:
          goto LABEL_242;
        case -15466:
          v93 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v273 = tracker_resource_get(a1, 16, *(v93 + 1), a3);
          if (v273)
          {
            v273[4] = a3;
          }

          v274 = GTTraceFunc_argumentBytesWithMap(a2, v93[32], a1[1]);
          v275 = (v274 + 8);
          for (i = *v274; i; --i)
          {
            v278 = *v275++;
            v277 = v278;
            if (v278)
            {
              GTResourceTrackerResourceRead(a1, 16, v277, a3);
            }
          }

          goto LABEL_450;
        case -15465:
          goto LABEL_326;
        case -15459:
        case -15454:
        case -15449:
LABEL_29:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v20 = a1;
          v21 = 16;
          goto LABEL_698;
        case -15458:
        case -15453:
        case -15448:
          goto LABEL_89;
        case -15457:
          v306 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v307 = a1[3];
          v308 = GTTraceFunc_argumentBytesWithMap(a2, v306[24], a1[1]);
          v309 = *(v306 + 2);
          if (v309)
          {
            v310 = v308;
            v312 = *a1;
            v311 = a1[1];
            do
            {
              v314 = *v310++;
              v313 = v314;
              if (v314)
              {
                GTResourceTrackerUsingResource(v307, 60, v313, v312, v311);
              }

              --v309;
            }

            while (v309);
          }

          break;
        case -15456:
        case -15451:
        case -15446:
          goto LABEL_318;
        case -15455:
          v297 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v298 = a1[3];
          v299 = GTTraceFunc_argumentBytesWithMap(a2, v297[24], a1[1]);
          v300 = *(v297 + 2);
          if (v300)
          {
            v301 = v299;
            v303 = *a1;
            v302 = a1[1];
            do
            {
              v305 = *v301++;
              v304 = v305;
              if (v305)
              {
                GTResourceTrackerUsingResource(v298, 83, v304, v303, v302);
              }

              --v300;
            }

            while (v300);
          }

          break;
        case -15452:
          v333 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v334 = a1[3];
          v335 = GTTraceFunc_argumentBytesWithMap(a2, v333[24], a1[1]);
          v336 = *(v333 + 2);
          if (v336)
          {
            v337 = v335;
            v339 = *a1;
            v338 = a1[1];
            do
            {
              v341 = *v337++;
              v340 = v341;
              if (v341)
              {
                GTResourceTrackerUsingResource(v334, 60, v340, v339, v338);
              }

              --v336;
            }

            while (v336);
          }

          break;
        case -15450:
          v324 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v325 = a1[3];
          v326 = GTTraceFunc_argumentBytesWithMap(a2, v324[24], a1[1]);
          v327 = *(v324 + 2);
          if (v327)
          {
            v328 = v326;
            v330 = *a1;
            v329 = a1[1];
            do
            {
              v332 = *v328++;
              v331 = v332;
              if (v332)
              {
                GTResourceTrackerUsingResource(v325, 83, v331, v330, v329);
              }

              --v327;
            }

            while (v327);
          }

          break;
        case -15447:
          v315 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v316 = a1[3];
          v317 = GTTraceFunc_argumentBytesWithMap(a2, v315[24], a1[1]);
          v318 = *(v315 + 2);
          if (v318)
          {
            v319 = v317;
            v321 = *a1;
            v320 = a1[1];
            do
            {
              v323 = *v319++;
              v322 = v323;
              if (v323)
              {
                GTResourceTrackerUsingResource(v316, 60, v322, v321, v320);
              }

              --v318;
            }

            while (v318);
          }

          break;
        case -15445:
          v228 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v229 = a1[3];
          v230 = GTTraceFunc_argumentBytesWithMap(a2, v228[24], a1[1]);
          v231 = *(v228 + 2);
          if (v231)
          {
            v232 = v230;
            v234 = *a1;
            v233 = a1[1];
            do
            {
              v236 = *v232++;
              v235 = v236;
              if (v236)
              {
                GTResourceTrackerUsingResource(v229, 83, v235, v234, v233);
              }

              --v231;
            }

            while (v231);
          }

          break;
        case -15415:
          goto LABEL_162;
        case -15401:
        case -15391:
          goto LABEL_290;
        case -15399:
          v246 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v247 = a1[3];
          v248 = GTTraceFunc_argumentBytesWithMap(a2, v246[24], a1[1]);
          v249 = *(v246 + 2);
          if (v249)
          {
            v250 = v248;
            v252 = *a1;
            v251 = a1[1];
            do
            {
              v254 = *v250++;
              v253 = v254;
              if (v254)
              {
                GTResourceTrackerUsingResource(v247, 22, v253, v252, v251);
              }

              --v249;
            }

            while (v249);
          }

          break;
        case -15397:
        case -15396:
        case -15387:
        case -15386:
          goto LABEL_250;
        case -15395:
          v288 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v289 = a1[3];
          v290 = GTTraceFunc_argumentBytesWithMap(a2, v288[24], a1[1]);
          v291 = *(v288 + 2);
          if (v291)
          {
            v292 = v290;
            v294 = *a1;
            v293 = a1[1];
            do
            {
              v296 = *v292++;
              v295 = v296;
              if (v296)
              {
                GTResourceTrackerUsingResource(v289, 75, v295, v294, v293);
              }

              --v291;
            }

            while (v291);
          }

          break;
        case -15394:
          v342 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v343 = a1[3];
          v344 = GTTraceFunc_argumentBytesWithMap(a2, v342[24], a1[1]);
          v345 = *(v342 + 2);
          if (v345)
          {
            v346 = v344;
            v348 = *a1;
            v347 = a1[1];
            do
            {
              v350 = *v346++;
              v349 = v350;
              if (v350)
              {
                GTResourceTrackerUsingResource(v343, 75, v349, v348, v347);
              }

              --v345;
            }

            while (v345);
          }

          break;
        case -15393:
        case -15383:
          goto LABEL_238;
        case -15392:
          v279 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v280 = a1[3];
          v281 = GTTraceFunc_argumentBytesWithMap(a2, v279[24], a1[1]);
          v282 = *(v279 + 2);
          if (v282)
          {
            v283 = v281;
            v285 = *a1;
            v284 = a1[1];
            do
            {
              v287 = *v283++;
              v286 = v287;
              if (v287)
              {
                GTResourceTrackerUsingResource(v280, 80, v286, v285, v284);
              }

              --v282;
            }

            while (v282);
          }

          break;
        case -15389:
          v255 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v256 = a1[3];
          v257 = GTTraceFunc_argumentBytesWithMap(a2, v255[24], a1[1]);
          v258 = *(v255 + 2);
          if (v258)
          {
            v259 = v257;
            v261 = *a1;
            v260 = a1[1];
            do
            {
              v263 = *v259++;
              v262 = v263;
              if (v263)
              {
                GTResourceTrackerUsingResource(v256, 22, v262, v261, v260);
              }

              --v258;
            }

            while (v258);
          }

          break;
        case -15385:
          v351 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v352 = a1[3];
          v353 = GTTraceFunc_argumentBytesWithMap(a2, v351[24], a1[1]);
          v354 = *(v351 + 2);
          if (v354)
          {
            v355 = v353;
            v357 = *a1;
            v356 = a1[1];
            do
            {
              v359 = *v355++;
              v358 = v359;
              if (v359)
              {
                GTResourceTrackerUsingResource(v352, 75, v358, v357, v356);
              }

              --v354;
            }

            while (v354);
          }

          break;
        case -15384:
          v237 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v238 = a1[3];
          v239 = GTTraceFunc_argumentBytesWithMap(a2, v237[24], a1[1]);
          v240 = *(v237 + 2);
          if (v240)
          {
            v241 = v239;
            v243 = *a1;
            v242 = a1[1];
            do
            {
              v245 = *v241++;
              v244 = v245;
              if (v245)
              {
                GTResourceTrackerUsingResource(v238, 75, v244, v243, v242);
              }

              --v240;
            }

            while (v240);
          }

          break;
        case -15382:
          v264 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v265 = a1[3];
          v266 = GTTraceFunc_argumentBytesWithMap(a2, v264[24], a1[1]);
          v267 = *(v264 + 2);
          if (v267)
          {
            v268 = v266;
            v270 = *a1;
            v269 = a1[1];
            do
            {
              v272 = *v268++;
              v271 = v272;
              if (v272)
              {
                GTResourceTrackerUsingResource(v265, 80, v271, v270, v269);
              }

              --v267;
            }

            while (v267);
          }

          break;
        default:
          return;
      }

      return;
    }

    if (v6 <= -15343)
    {
      if (v6 != -15366)
      {
        v80 = -15365;
        goto LABEL_321;
      }

      v488 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v488 + 1), a3);
      v489 = tracker_resource_get(a1, 16, *(v488 + 2), a3);
      if (v489)
      {
        v489[4] = a3;
      }

      GTResourceTrackerUsingResource(a1[3], 22, *(v488 + 3), *a1, a1[1]);
      v9 = v488[48];
LABEL_608:
      v150 = GTTraceFunc_argumentBytesWithMap(a2, v9, a1[1]);
LABEL_609:

      GTResourceTrackerUsingAccelerationStructureDescriptor(a1, v150, 0, a3);
      return;
    }

    if (v6 == -15342)
    {
      v490 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v491 = tracker_resource_get(a1, 22, *(v490 + 1), a3);
      if (v491)
      {
        *(v491 + 48) = 1;
      }

      v48 = *(v490 + 1);
      goto LABEL_653;
    }

    v92 = -15340;
    goto LABEL_274;
  }

  if (v6 <= -15648)
  {
    if (v6 > -15757)
    {
      if (v6 > -15750)
      {
        if (v6 > -15727)
        {
          if (v6 != -15726 && v6 != -15723)
          {
            v40 = -15722;
            goto LABEL_263;
          }

LABEL_25:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_26:
          v20 = a1;
          v21 = 80;
          goto LABEL_698;
        }

        if (v6 != -15749)
        {
          v40 = -15728;
LABEL_263:
          if (v6 != v40)
          {
            return;
          }

          goto LABEL_25;
        }

        goto LABEL_298;
      }

      if (v6 > -15755)
      {
        if (v6 == -15754)
        {
LABEL_271:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 31;
          goto LABEL_569;
        }

        v82 = -15750;
LABEL_270:
        if (v6 != v82)
        {
          return;
        }

        goto LABEL_271;
      }

      if (v6 != -15756)
      {
        v82 = -15755;
        goto LABEL_270;
      }

      v397 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerUsingResource(a1[3], 31, *(v397 + 1), *a1, a1[1]);
LABEL_548:
      v48 = *(v397 + 4);
      goto LABEL_653;
    }

    if (v6 > -15785)
    {
      if (v6 <= -15783)
      {
        if (v6 == -15784)
        {
          v396 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v396 + 1), a3);
          v19 = *(v396 + 3);
          goto LABEL_697;
        }

        v40 = -15783;
        goto LABEL_263;
      }

      if (v6 == -15782)
      {
        goto LABEL_25;
      }

      v59 = -15781;
    }

    else
    {
      if (v6 <= -15793)
      {
        if (v6 != -15819)
        {
          if (v6 != -15818)
          {
            return;
          }

          v57 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v58 = v57[32];
          goto LABEL_314;
        }

LABEL_284:
        v116 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v117 = GTResourceTrackerGetResourceType(*(v116 + 1), *a1);
        v118 = *(v116 + 1);
        v119 = *(v116 + 4);

        GTResourceTrackerResourceUsage(a1, v117, v118, a3, v119);
        return;
      }

      if (v6 == -15792)
      {
        v397 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 80, *(v397 + 1), a3);
        goto LABEL_548;
      }

      v59 = -15785;
    }

    goto LABEL_259;
  }

  if (v6 <= -15598)
  {
    switch(v6)
    {
      case -15647:
        v7 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v8 = tracker_resource_get(a1, 16, *(v7 + 1), a3);
        if (v8)
        {
          v8[4] = a3;
        }

        GTResourceTrackerUsingResource(a1[3], 22, *(v7 + 2), *a1, a1[1]);
        v9 = v7[32];
        goto LABEL_608;
      case -15646:
      case -15645:
        goto LABEL_231;
      case -15644:
      case -15643:
      case -15642:
      case -15641:
      case -15640:
      case -15639:
      case -15636:
      case -15628:
      case -15627:
      case -15626:
      case -15625:
      case -15624:
        return;
      case -15638:
        v217 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 16, *(v217 + 1), a3);
        v218 = tracker_resource_get(a1, 16, *(v217 + 2), a3);
        if (v218)
        {
          v218[4] = a3;
        }

        GTResourceTrackerUsingResource(a1[3], 22, *(v217 + 3), *a1, a1[1]);
        v9 = v217[40];
        goto LABEL_608;
      case -15637:
        goto LABEL_271;
      case -15635:
      case -15630:
        goto LABEL_260;
      case -15634:
        goto LABEL_310;
      case -15633:
        v219 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v220 = GTTraceFunc_argumentBytesWithMap(a2, v219[16], a1[1]);
        v221 = *(v219 + 1);
        if (v221)
        {
          v222 = v220;
          do
          {
            v223 = *v222++;
            GTResourceTrackerUsingResourceHeap(a1, v223, a3);
            --v221;
          }

          while (v221);
        }

        return;
      case -15632:
        goto LABEL_284;
      case -15631:
        goto LABEL_313;
      case -15629:
        goto LABEL_322;
      case -15623:
        goto LABEL_29;
      default:
        if (v6 != -15598)
        {
          return;
        }

        v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
        v43 = *a1;
        v44 = a1[1];
        v45 = a1[3];
        ResourceType = 44;
        break;
    }

    goto LABEL_569;
  }

  if (v6 > -15581)
  {
    if (v6 > -15524)
    {
      if (v6 <= -15522)
      {
        if (v6 != -15523)
        {
          v60 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 16, *(v60 + 1), a3);
          v61 = GTTraceFunc_argumentBytesWithMap(a2, v60[32], a1[1]);
          v62 = (v61 + 8);
          for (j = *v61; j; --j)
          {
            v65 = *v62++;
            v64 = v65;
            if (v65)
            {
              GTResourceTrackerResourceRead(a1, 16, v64, a3);
            }
          }

          v48 = *(v60 + 2);
          goto LABEL_653;
        }

LABEL_326:
        v138 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v139 = tracker_resource_get(a1, 16, *(v138 + 1), a3);
        if (v139)
        {
          v139[4] = a3;
        }

        goto LABEL_332;
      }

      if (v6 != -15521)
      {
        v80 = -15502;
LABEL_321:
        if (v6 != v80)
        {
          return;
        }
      }

LABEL_322:
      v136 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v136 + 1), a3);
      v48 = *(v136 + 2);
      goto LABEL_653;
    }

    if (v6 == -15580)
    {
      v479 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v480 = a1[3];
      v481 = GTTraceFunc_argumentBytesWithMap(a2, v479[24], a1[1]);
      v482 = *(v479 + 2);
      if (v482)
      {
        v483 = v481;
        v485 = *a1;
        v484 = a1[1];
        do
        {
          v487 = *v483++;
          v486 = v487;
          if (v487)
          {
            GTResourceTrackerUsingResource(v480, 83, v486, v485, v484);
          }

          --v482;
        }

        while (v482);
      }

      return;
    }

    if (v6 != -15552)
    {
      if (v6 != -15524)
      {
        return;
      }

      v93 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v94 = tracker_resource_get(a1, 16, *(v93 + 1), a3);
      if (v94)
      {
        v94[4] = a3;
      }

      v95 = GTTraceFunc_argumentBytesWithMap(a2, v93[32], a1[1]);
      v96 = (v95 + 8);
      for (k = *v95; k; --k)
      {
        v99 = *v96++;
        v98 = v99;
        if (v99)
        {
          GTResourceTrackerResourceRead(a1, 16, v98, a3);
        }
      }

LABEL_450:
      v19 = *(v93 + 2);
      goto LABEL_697;
    }

    v469 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    GTResourceTrackerResourceRead(a1, 16, *v469, a3);
    v9 = v469[8];
    goto LABEL_608;
  }

  if (v6 <= -15589)
  {
    if (v6 == -15597)
    {
      v470 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v471 = a1[3];
      v472 = GTTraceFunc_argumentBytesWithMap(a2, v470[24], a1[1]);
      v473 = *(v470 + 2);
      if (v473)
      {
        v474 = v472;
        v476 = *a1;
        v475 = a1[1];
        do
        {
          v478 = *v474++;
          v477 = v478;
          if (v478)
          {
            GTResourceTrackerUsingResource(v471, 44, v477, v476, v475);
          }

          --v473;
        }

        while (v473);
      }

      return;
    }

    if (v6 == -15592)
    {
      goto LABEL_214;
    }

    v81 = -15591;
LABEL_213:
    if (v6 != v81)
    {
      return;
    }

LABEL_214:
    v73 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v74 = v73[1];
    v75 = a1;
    v76 = 22;
LABEL_215:
    GTResourceTrackerResourceRead(v75, v76, v74, a3);
    v48 = v73[3];
LABEL_653:
    v55 = a1;
    v56 = 22;
LABEL_654:
    v530 = tracker_resource_get(v55, v56, v48, a3);
    if (v530)
    {
      v530[4] = a3;
    }

    return;
  }

  if (v6 <= -15583)
  {
    if (v6 != -15588)
    {
      if (v6 != -15583)
      {
        return;
      }

LABEL_89:
      v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
      v43 = *a1;
      v44 = a1[1];
      v45 = a1[3];
      ResourceType = 60;
      goto LABEL_569;
    }

    goto LABEL_322;
  }

  if (v6 != -15582)
  {
LABEL_318:
    v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
    v43 = *a1;
    v44 = a1[1];
    v45 = a1[3];
    ResourceType = 83;
    goto LABEL_569;
  }

  v360 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
  v361 = a1[3];
  v362 = GTTraceFunc_argumentBytesWithMap(a2, v360[24], a1[1]);
  v363 = *(v360 + 2);
  if (v363)
  {
    v364 = v362;
    v366 = *a1;
    v365 = a1[1];
    do
    {
      v368 = *v364++;
      v367 = v368;
      if (v368)
      {
        GTResourceTrackerUsingResource(v361, 60, v367, v366, v365);
      }

      --v363;
    }

    while (v363);
  }
}