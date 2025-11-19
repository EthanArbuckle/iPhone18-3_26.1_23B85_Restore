id MakeMTLHeapDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTLHeapDescriptor);
  [v2 setSize:*(a1 + 8)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setType:*(a1 + 20)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setResourceOptions:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSparsePageSize:*(a1 + 19)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxCompatiblePlacementSparsePageSize:*(a1 + 18)];
  }

  return v2;
}

id MakeMTLHeapDescriptorWithBufferPinning(void *a1)
{
  v2 = MakeMTLHeapDescriptor(a1);
  [v2 setPinnedGPUAddress:*a1];

  return v2;
}

uint64_t TranslateGTMTLIndirectCommandBufferDescriptorAuto(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a2 + 32);
  *(a2 + 32) = v7 + 48;
  if (a3)
  {
    *v7 = GTMTLIndirectCommandBufferDescriptorDefaults;
    *(v7 + 16) = unk_29BF78;
    *(v7 + 32) = xmmword_29BF88;
    v8 = v5;
    *(v7 + 16) = [v8 commandTypes];
    if (objc_opt_respondsToSelector())
    {
      *(v7 + 26) = [v8 inheritPipelineState];
    }

    *(v7 + 19) = [v8 inheritBuffers];
    *(v7 + 38) = [v8 maxVertexBufferBindCount];
    *(v7 + 31) = [v8 maxFragmentBufferBindCount];
    if (objc_opt_respondsToSelector())
    {
      *(v7 + 32) = [v8 maxKernelBufferBindCount];
    }

    *(v7 + 8) = [v8 resourceIndex];
    if (objc_opt_respondsToSelector())
    {
      *(v7 + 41) = [v8 supportRayTracing];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 35) = [v8 maxObjectBufferBindCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 34) = [v8 maxMeshBufferBindCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 36) = [v8 maxObjectThreadgroupMemoryBindCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 40) = [v8 supportDynamicAttributeStride];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 37) = [v8 maxScissorRectCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 39) = [v8 maxViewportCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 23) = [v8 inheritDepthStencilState];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 21) = [v8 inheritDepthBias];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 28) = [v8 inheritStencilReferenceValues];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 22) = [v8 inheritDepthClipMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 20) = [v8 inheritCullMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 25) = [v8 inheritFrontFacingWinding];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 29) = [v8 inheritTriangleFillMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 24) = [v8 inheritDepthTestBounds];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 27) = [v8 inheritScissorRects];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 30) = [v8 inheritViewports];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 18) = [v8 inheritBlendColor];
    }

    if (objc_opt_respondsToSelector())
    {
      *v7 = [v8 maxToolsDispatchBindings];
    }
  }

  else
  {
    v9 = v5;
    v7 = 0;
  }

  return v7;
}

id MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLIndirectCommandBufferDescriptor);
  [v2 setCommandTypes:*(a1 + 16)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritPipelineState:*(a1 + 26) != 0];
  }

  [v2 setInheritBuffers:*(a1 + 19) != 0];
  [v2 setMaxVertexBufferBindCount:*(a1 + 38)];
  [v2 setMaxFragmentBufferBindCount:*(a1 + 31)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxKernelBufferBindCount:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxKernelThreadgroupMemoryBindCount:*(a1 + 33)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSupportRayTracing:*(a1 + 41) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxObjectBufferBindCount:*(a1 + 35)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxMeshBufferBindCount:*(a1 + 34)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxObjectThreadgroupMemoryBindCount:*(a1 + 36)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSupportDynamicAttributeStride:*(a1 + 40) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxScissorRectCount:*(a1 + 37)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxViewportCount:*(a1 + 39)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthStencilState:*(a1 + 23) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthBias:*(a1 + 21) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritStencilReferenceValues:*(a1 + 28) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthClipMode:*(a1 + 22) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritCullMode:*(a1 + 20) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritFrontFacingWinding:*(a1 + 25) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritTriangleFillMode:*(a1 + 29) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthTestBounds:*(a1 + 24) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritScissorRects:*(a1 + 27) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritViewports:*(a1 + 30) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritBlendColor:*(a1 + 18) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxToolsDispatchBindings:*a1];
  }

  return v2;
}

id MakeMTLIndirectCommandBufferDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(a1);
  [v2 setResourceIndex:*(a1 + 8)];

  return v2;
}

uint64_t TranslateNestedGTMTLAttributeDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *(a2 + 5) = [v5 format];
  *a2 = [v5 offset];
  v6 = [v5 bufferIndex];

  *(a2 + 4) = v6;
  return a2;
}

id MakeNestedMTLAttributeDescriptor(void *a1, unsigned int *a2)
{
  v3 = a1;
  [v3 setFormat:*(a2 + 5)];
  [v3 setOffset:*a2];
  [v3 setBufferIndex:*(a2 + 4)];

  return v3;
}

uint64_t TranslateNestedGTMTLBufferLayoutDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *a2 = [v5 stride];
  *(a2 + 8) = [v5 stepRate];
  v6 = [v5 stepFunction];

  *(a2 + 10) = v6;
  return a2;
}

id MakeNestedMTLBufferLayoutDescriptor(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 setStride:*a2];
  [v3 setStepRate:*(a2 + 8)];
  [v3 setStepFunction:*(a2 + 10)];

  return v3;
}

uint64_t TranslateNestedGTMTLStageInputOutputDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = 0;
  v8 = a2;
  do
  {
    v9 = [v6 layouts];
    v10 = [v9 objectAtIndexedSubscript:v7];
    v12 = v10;
    if (a4)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    TranslateNestedGTMTLBufferLayoutDescriptor(v10, v13, v11, a4);

    ++v7;
    v8 += 16;
  }

  while (v7 != 31);
  v14 = 0;
  v15 = a2 + 496;
  do
  {
    v16 = [v6 attributes];
    v17 = [v16 objectAtIndexedSubscript:v14];
    v19 = v17;
    if (a4)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0;
    }

    TranslateNestedGTMTLAttributeDescriptor(v17, v20, v18, a4);

    ++v14;
    v15 += 8;
  }

  while (v14 != 31);
  if (a4)
  {
    *(a2 + 745) = [v6 indexType];
    *(a2 + 744) = [v6 indexBufferIndex];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeNestedMTLStageInputOutputDescriptor(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = a2;
  do
  {
    v6 = [v3 layouts];
    v7 = [v6 objectAtIndexedSubscript:v4];

    ++v4;
    v5 += 16;
  }

  while (v4 != 31);
  v8 = 0;
  v9 = (a2 + 496);
  do
  {
    v10 = [v3 attributes];
    v11 = [v10 objectAtIndexedSubscript:v8];

    ++v8;
    v9 += 2;
  }

  while (v8 != 31);
  [v3 setIndexType:*(a2 + 745)];
  [v3 setIndexBufferIndex:*(a2 + 744)];

  return v3;
}

uint64_t TranslateGTMTLComputePipelineDescriptorAuto(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2[39];
  a2[39] = v6 + 960;
  if (a3)
  {
    memcpy(v6, &GTMTLComputePipelineDescriptorDefaults, 0x3C0uLL);
  }

  v7 = v5;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = a2 + 74;
    v13 = a2[74];
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = a2[74];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = a2 + 74;
    v13 = a2[74];
  }

  v14 = 0;
  v15 = 0;
LABEL_8:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);
  }

  v16 = [v7 stageInputDescriptor];
  TranslateNestedGTMTLStageInputOutputDescriptor(v16, v6, v17, a3);

  for (i = 0; i != 31; ++i)
  {
    v19 = [v7 buffers];
    v20 = [v19 objectAtIndexedSubscript:i];
    v21 = v20;
    if (a3)
    {
      *(v6 + i + 920) = [v20 mutability];
    }
  }

  v22 = [v7 functionPointers];
  v23 = TranslateNSArray(v22, a2, a3);

  if (objc_opt_respondsToSelector())
  {
    v24 = [v7 pluginData];
    v25 = GTMTLDescriptorAllocator_copyDictionary(a2, v24, a3);
    v41 = v26;
  }

  else
  {
    v41 = 0;
    v25 = 0;
  }

  v27 = [v7 driverCompilerOptions];
  v28 = GTMTLDescriptorAllocator_copyDictionary(a2, v27, a3);
  v30 = v29;

  v31 = [v7 linkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v31, (v6 + 752), a2, a3);

  v32 = [v7 preloadedLibraries];
  v33 = TranslateNSArray(v32, a2, a3);

  if (a3)
  {
    v34 = [v7 computeFunction];
    *(v6 + 848) = [v34 streamReference];

    *(v6 + 958) = [v7 threadGroupSizeIsMultipleOfThreadExecutionWidth];
    *(v6 + 872) = v15;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 956) = [v7 supportIndirectCommandBuffers];
    }

    *(v6 + 918) = [v7 maxTotalThreadsPerThreadgroup];
    if (objc_opt_respondsToSelector())
    {
      v35 = [v7 pipelineLibrary];
      *(v6 + 880) = [v35 streamReference];
    }

    v36 = [v7 functionPointers];
    *(v6 + 864) = [v36 count];

    if (*(v6 + 864))
    {
      v37 = v23;
    }

    else
    {
      v37 = 0;
    }

    *(v6 + 856) = v37;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 904) = [v7 resourceIndex];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 957) = [v7 textureWriteRoundingMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 954) = [v7 openGLModeEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 953) = [v7 openCLModeEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 952) = [v7 needsCustomBorderColorSamplers];
    }

    *(v6 + 832) = v25;
    *(v6 + 840) = v41;
    *(v6 + 816) = v28;
    *(v6 + 824) = v30;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 916) = [v7 maxCallStackDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 955) = [v7 supportAddingBinaryFunctions];
    }

    v38 = [v7 preloadedLibraries];
    *(v6 + 896) = [v38 count];

    if (*(v6 + 896))
    {
      v39 = v33;
    }

    else
    {
      v39 = 0;
    }

    *(v6 + 888) = v39;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 914) = [v7 maxAccelerationStructureTraversalDepth];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTLComputePipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLComputePipelineDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 848)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setComputeFunction:v6];

  [v4 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 958) != 0];
  if (*(a1 + 872))
  {
    v7 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v7];
  }

  v8 = [v4 stageInputDescriptor];

  for (i = 0; i != 31; ++i)
  {
    v10 = [v4 buffers];
    v11 = [v10 objectAtIndexedSubscript:i];
    [v11 setMutability:*(a1 + 920 + i)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportIndirectCommandBuffers:*(a1 + 956) != 0];
  }

  [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 918)];
  v12 = [NSNumber numberWithUnsignedLongLong:*(a1 + 880)];
  v13 = [v3 objectForKeyedSubscript:v12];
  [v4 setPipelineLibrary:v13];

  v14 = *(a1 + 864);
  if (v14)
  {
    v15 = CreateObjectArrayWithMap(*(a1 + 856), v14, v3);
    [v4 setFunctionPointers:v15];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTextureWriteRoundingMode:*(a1 + 957)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 954) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenCLModeEnabled:*(a1 + 953) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setNeedsCustomBorderColorSamplers:*(a1 + 952) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = GTData_MakeDictionary(*(a1 + 832), *(a1 + 840));
    [v4 setPluginData:v16];
  }

  v17 = GTData_MakeDictionary(*(a1 + 816), *(a1 + 824));
  [v4 setDriverCompilerOptions:v17];

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxCallStackDepth:*(a1 + 916)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingBinaryFunctions:*(a1 + 955) != 0];
  }

  v18 = [v4 linkedFunctions];
  MakeNestedMTLLinkedFunctions(v18, (a1 + 752), v3);

  v19 = *(a1 + 896);
  if (v19)
  {
    v20 = CreateObjectArrayWithMap(*(a1 + 888), v19, v3);
    [v4 setPreloadedLibraries:v20];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 914)];
  }

  return v4;
}

id MakeMTLComputePipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLComputePipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 956))
  {
    [v3 setResourceIndex:*(a1 + 904)];
  }

  return v4;
}

_WORD *TranslateNestedGTMTLTileRenderPipelineColorAttachmentDescriptor(void *a1, _WORD *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a2;
  *a2 = [a1 pixelFormat];
  return v4;
}

id MakeNestedMTLTileRenderPipelineColorAttachmentDescriptor(void *a1, unsigned __int16 *a2)
{
  v3 = a1;
  [v3 setPixelFormat:*a2];

  return v3;
}

uint64_t TranslateGTMTLTileRenderPipelineDescriptor(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2[29];
  a2[29] = v6 + 192;
  if (a3)
  {
    *(v6 + 128) = xmmword_29CDD0;
    *(v6 + 144) = unk_29CDE0;
    *(v6 + 160) = xmmword_29CDF0;
    *(v6 + 176) = unk_29CE00;
    *(v6 + 64) = xmmword_29CD90;
    *(v6 + 80) = unk_29CDA0;
    *(v6 + 96) = xmmword_29CDB0;
    *(v6 + 112) = unk_29CDC0;
    *v6 = GTMTLTileRenderPipelineDescriptorDefaults;
    *(v6 + 16) = unk_29CD60;
    *(v6 + 32) = xmmword_29CD70;
    *(v6 + 48) = unk_29CD80;
  }

  v7 = v5;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = a2 + 74;
    v13 = a2[74];
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = a2[74];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = a2 + 74;
    v13 = a2[74];
  }

  v14 = 0;
  v15 = 0;
LABEL_8:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);
  }

  for (i = 0; i != 8; ++i)
  {
    v17 = [v7 colorAttachments];
    v18 = [v17 objectAtIndexedSubscript:i];
    v19 = v18;
    if (a3)
    {
      *(v6 + 2 * i + 64) = [v18 pixelFormat];
    }
  }

  for (j = 0; j != 31; ++j)
  {
    v21 = [v7 tileBuffers];
    v22 = [v21 objectAtIndexedSubscript:j];
    v23 = v22;
    if (a3)
    {
      *(v6 + j + 152) = [v22 mutability];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v24 = [v7 pluginData];
    v25 = GTMTLDescriptorAllocator_copyDictionary(a2, v24, a3);
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v7 preloadedLibraries];
  v29 = TranslateNSArray(v28, a2, a3);

  v30 = [v7 linkedFunctions];
  TranslateNestedGTMTLLinkedFunctions(v30, v6, a2, a3);

  if (a3)
  {
    *(v6 + 112) = v15;
    v31 = [v7 tileFunction];
    *(v6 + 136) = [v31 streamReference];

    *(v6 + 150) = [v7 rasterSampleCount];
    *(v6 + 185) = [v7 threadgroupSizeMatchesTileSize];
    *(v6 + 96) = v25;
    *(v6 + 104) = v27;
    v32 = [v7 preloadedLibraries];
    *(v6 + 128) = [v32 count];

    if (*(v6 + 128))
    {
      v33 = v29;
    }

    else
    {
      v33 = 0;
    }

    *(v6 + 120) = v33;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 184) = [v7 supportAddingBinaryFunctions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 146) = [v7 maxCallStackDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 144) = [v7 maxAccelerationStructureTraversalDepth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 148) = [v7 maxTotalThreadsPerThreadgroup];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 183) = [v7 colorSampleCount];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTLTileRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLTileRenderPipelineDescriptor);
  if (*(a1 + 112))
  {
    v5 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v5];
  }

  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 136)];
  v7 = [v3 objectForKeyedSubscript:v6];
  [v4 setTileFunction:v7];

  [v4 setRasterSampleCount:*(a1 + 150)];
  for (i = 0; i != 8; ++i)
  {
    v9 = [v4 colorAttachments];
    v10 = [v9 objectAtIndexedSubscript:i];
    [v10 setPixelFormat:*(a1 + 2 * i + 64)];
  }

  [v4 setThreadgroupSizeMatchesTileSize:*(a1 + 185) != 0];
  for (j = 0; j != 31; ++j)
  {
    v12 = [v4 tileBuffers];
    v13 = [v12 objectAtIndexedSubscript:j];
    [v13 setMutability:*(a1 + j + 152)];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = GTData_MakeDictionary(*(a1 + 96), *(a1 + 104));
    [v4 setPluginData:v14];
  }

  v15 = *(a1 + 128);
  if (v15)
  {
    v16 = CreateObjectArrayWithMap(*(a1 + 120), v15, v3);
    [v4 setPreloadedLibraries:v16];
  }

  v17 = [v4 linkedFunctions];
  MakeNestedMTLLinkedFunctions(v17, a1, v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingBinaryFunctions:*(a1 + 184) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxCallStackDepth:*(a1 + 146)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 144)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 148)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 183)];
  }

  return v4;
}

uint64_t TranslateGTMTLCommandQueueDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a2 + 48);
  *(a2 + 48) = v7 + 16;
  if (a3)
  {
    *v7 = GTMTLCommandQueueDescriptorDefaults;
    v8 = v5;
    *v7 = [v8 maxCommandBufferCount];
    if (objc_opt_respondsToSelector())
    {
      *(v7 + 8) = [v8 qosLevel];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 4) = [v8 commitSynchronously];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 7) = [v8 isOpenGLQueue];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 6) = [v8 disableCrossQueueHazardTracking];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v7 + 5) = [v8 commitsWithQoS];
    }
  }

  else
  {
    v9 = v5;
    v7 = 0;
  }

  return v7;
}

id MakeMTLCommandQueueDescriptor(unsigned int *a1)
{
  v2 = objc_alloc_init(MTLCommandQueueDescriptor);
  [v2 setMaxCommandBufferCount:*a1];
  if (objc_opt_respondsToSelector())
  {
    [v2 setQosLevel:*(a1 + 8)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCommitSynchronously:*(a1 + 4) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setIsOpenGLQueue:*(a1 + 7) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setDisableCrossQueueHazardTracking:*(a1 + 6) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCommitsWithQoS:*(a1 + 5) != 0];
  }

  return v2;
}

uint64_t TranslateGTMTLIOCommandQueueDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a2 + 56);
  *(a2 + 56) = v7 + 8;
  if (a3)
  {
    *v7 = 64;
    *v7 = [v5 maxCommandBufferCount];
    *(v7 + 4) = [v6 priority];
    *(v7 + 5) = [v6 type];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id MakeMTLIOCommandQueueDescriptor(unsigned int *a1)
{
  v2 = objc_alloc_init(MTLIOCommandQueueDescriptor);
  [v2 setMaxCommandBufferCount:*a1];
  [v2 setPriority:*(a1 + 4)];
  [v2 setType:*(a1 + 5)];

  return v2;
}

uint64_t TranslateGTMTLCommandBufferDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *(a2 + 64);
  *(a2 + 64) = v7 + 16;
  if (a3)
  {
    *v7 = GTMTLCommandBufferDescriptorDefaults;
    *(v7 + 8) = [v5 errorOptions];
    *(v7 + 9) = [v6 retainedReferences];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 deadlineProfile];
      *v7 = [v8 streamReference];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t TranslateGTMTLVisibleFunctionTableDescriptor(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 72);
  *(a2 + 72) = v3 + 24;
  if (!a3)
  {
    return 0;
  }

  v4 = a1;
  *v3 = [v4 functionCount];
  *(v3 + 8) = [v4 resourceIndex];
  v5 = [v4 forceResourceIndex];

  *(v3 + 16) = v5;
  return v3;
}

id MakeMTLVisibleFunctionTableDescriptorWithoutResourceIndex(void *a1)
{
  v2 = objc_alloc_init(MTLVisibleFunctionTableDescriptor);
  [v2 setFunctionCount:*a1];

  return v2;
}

id MakeMTLVisibleFunctionTableDescriptorWithResourceIndex(void *a1)
{
  v2 = objc_alloc_init(MTLVisibleFunctionTableDescriptor);
  [v2 setFunctionCount:*a1];
  [v2 setForceResourceIndex:a1[1] != 0];
  [v2 setResourceIndex:a1[1]];

  return v2;
}

uint64_t TranslateGTMTLFunctionDescriptor(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3[10];
  a3[10] = v9 + 48;
  v10 = v7;
  v11 = [v10 name];
  v12 = [v11 UTF8String];
  v13 = v12;
  if (v12)
  {
    v14 = strlen(v12);
    v15 = a3 + 74;
    v16 = a3[74];
    v17 = v14 + 1;
    if (v14 != -1)
    {
      v18 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v15 = a3 + 74;
    v16 = a3[74];
  }

  v17 = 0;
  v18 = 0;
LABEL_6:
  *v15 = v16 + v17;
  if (a4)
  {
    memcpy(v18, v13, v17);
  }

  v19 = [v10 specializedName];
  v20 = [v19 UTF8String];
  v21 = v20;
  if (v20)
  {
    v22 = strlen(v20);
    v23 = a3 + 74;
    v24 = a3[74];
    v25 = v22 + 1;
    if (v22 != -1)
    {
      v26 = a3[74];
      goto LABEL_13;
    }
  }

  else
  {
    v23 = a3 + 74;
    v24 = a3[74];
  }

  v25 = 0;
  v26 = 0;
LABEL_13:
  *v23 = v24 + v25;
  if (a4)
  {
    memcpy(v26, v21, v25);
  }

  v27 = [v10 constantValues];

  if (v27)
  {
    v28 = a3[59];
    v29 = [v10 constantValues];
    TranslateGTMTLFunctionConstantValues(v29, v8, a3, a4);
  }

  else
  {
    v28 = 0;
  }

  v30 = [v10 privateFunctions];
  v31 = TranslateNSArray(v30, a3, a4);

  if (a4)
  {
    *(v9 + 40) = [v10 options];
    *(v9 + 32) = v26;
    *v9 = v28;
    *(v9 + 8) = v18;
    v32 = [v10 privateFunctions];
    *(v9 + 24) = [v32 count];

    if (*(v9 + 24))
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    *(v9 + 16) = v33;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void TranslateGTMTLFunctionConstantValues(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v55 = a3[59];
  a3[59] = v55 + 2;
  v54 = a3[61];
  if (v8)
  {
    v62 = v7;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v60 = [v8 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (!v60)
    {
      goto LABEL_61;
    }

    v56 = v7;
    obj = *v72;
    while (1)
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v72 != obj)
        {
          objc_enumerationMutation(v8);
        }

        v10 = v8;
        v11 = [v8 objectForKeyedSubscript:*(*(&v71 + 1) + 8 * i)];
        v12 = a3[61];
        a3[61] = v12 + 32;
        v13 = [v11 name];
        v14 = [v13 UTF8String];
        v15 = v14;
        if (v14)
        {
          v16 = strlen(v14);
          v17 = a3[74];
          v18 = v16 + 1;
          if (v16 != -1)
          {
            v19 = a3[74];
            goto LABEL_12;
          }
        }

        else
        {
          v17 = a3[74];
        }

        v18 = 0;
        v19 = 0;
LABEL_12:
        a3[74] = v17 + v18;
        if (a4)
        {
          memcpy(v19, v15, v18);
        }

        if (v62 && (v20 = [v62 constantValueWithFunctionConstant:v11]) != 0)
        {
          v21 = v20;
          [v11 type];
          v22 = _MTLConstantDataSize();
          v23 = a3[74];
          v24 = v23;
          if (v22)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v22 = 0;
          v21 = 0;
          v23 = a3[74];
        }

        v24 = 0;
LABEL_20:
        a3[74] = &v23[v22];
        if (a4)
        {
          memcpy(v24, v21, v22);
          *(v12 + 24) = [v11 index];
          *(v12 + 16) = v19;
          *(v12 + 27) = [v11 type];
          *(v12 + 26) = [v11 required];
          *v12 = v24;
          *(v12 + 8) = v22;
        }

        v8 = v10;
      }

      v60 = [v10 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (!v60)
      {
        v7 = v56;
        goto LABEL_61;
      }
    }
  }

  v57 = v7;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v25 = [v7 newIndexedConstantArray];
  v26 = [v25 countByEnumeratingWithState:&v67 objects:v76 count:16];
  v62 = v25;
  if (!v26)
  {
    goto LABEL_39;
  }

  v27 = v26;
  v28 = *v68;
  do
  {
    for (j = 0; j != v27; j = j + 1)
    {
      if (*v68 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v67 + 1) + 8 * j);
      v31 = a3[61];
      a3[61] = v31 + 32;
      v32 = [v30 data];
      if (v32)
      {
        [v30 dataType];
        v33 = _MTLConstantDataSize();
        v34 = a3[74];
        v35 = v34;
        if (v33)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v33 = 0;
        v34 = a3[74];
      }

      v35 = 0;
LABEL_35:
      a3[74] = &v34[v33];
      if (a4)
      {
        memcpy(v35, v32, v33);
        *(v31 + 24) = [v30 index];
        *(v31 + 16) = 0;
        *(v31 + 27) = [v30 dataType];
        *(v31 + 26) = 0;
        *v31 = v35;
        *(v31 + 8) = v33;
      }

      v25 = v62;
    }

    v27 = [v62 countByEnumeratingWithState:&v67 objects:v76 count:16];
  }

  while (v27);
LABEL_39:

  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obja = [v57 newNamedConstantArray];
  v36 = [obja countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v36)
  {
    v37 = v36;
    v61 = *v64;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v64 != v61)
        {
          objc_enumerationMutation(obja);
        }

        v39 = *(*(&v63 + 1) + 8 * k);
        v40 = a3[61];
        a3[61] = v40 + 32;
        v41 = [v39 name];
        v42 = [v41 UTF8String];
        v43 = v42;
        if (v42)
        {
          v44 = strlen(v42);
          v45 = a3[74];
          v46 = v44 + 1;
          if (v44 != -1)
          {
            v47 = a3[74];
            goto LABEL_49;
          }
        }

        else
        {
          v45 = a3[74];
        }

        v46 = 0;
        v47 = 0;
LABEL_49:
        a3[74] = v45 + v46;
        if (a4)
        {
          memcpy(v47, v43, v46);
        }

        v48 = [v39 data];
        if (v48)
        {
          [v39 dataType];
          v49 = _MTLConstantDataSize();
          v50 = a3[74];
          v51 = v50;
          if (v49)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v49 = 0;
          v50 = a3[74];
        }

        v51 = 0;
LABEL_56:
        a3[74] = &v50[v49];
        if (a4)
        {
          memcpy(v51, v48, v49);
          *(v40 + 24) = -1;
          *(v40 + 16) = v47;
          *(v40 + 27) = [v39 dataType];
          *(v40 + 26) = 0;
          *v40 = v51;
          *(v40 + 8) = v49;
        }
      }

      v37 = [obja countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v37);
  }

  v7 = v57;
  v8 = 0;
LABEL_61:

  if (a4)
  {
    v52 = v54;
    v53 = (a3[61] - v54) >> 5;
    if (a3[61] == v54)
    {
      v52 = 0;
    }

    *v55 = v52;
    v55[1] = v53;
  }
}

id MakeMTLFunctionDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLFunctionDescriptor);
  [v4 setOptions:*(a1 + 40)];
  if (*(a1 + 8))
  {
    v5 = [NSString stringWithUTF8String:?];
    [v4 setName:v5];
  }

  if (*(a1 + 32))
  {
    v6 = [NSString stringWithUTF8String:?];
    [v4 setSpecializedName:v6];
  }

  v7 = MakeMTLFunctionConstantValues(*a1);
  [v4 setConstantValues:v7];

  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = CreateObjectArrayWithMap(*(a1 + 16), v8, v3);
    [v4 setPrivateFunctions:v9];
  }

  return v4;
}

id MakeMTLFunctionConstantValues(void *a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(MTLFunctionConstantValues);
    if (a1[1])
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(*a1 + v3);
        if (v5)
        {
          v6 = *a1 + v3;
          v7 = *(v6 + 27);
          if (*(v6 + 24) == 0xFFFFLL)
          {
            v8 = [NSString stringWithUTF8String:*(v6 + 16)];
            [v2 setConstantValue:v5 type:v7 withName:v8];
          }

          else
          {
            [v2 setConstantValue:*(*a1 + v3) type:*(v6 + 27) atIndex:?];
          }
        }

        ++v4;
        v3 += 32;
      }

      while (a1[1] > v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t TranslateNestedGTMTLCompileOptions(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [v7 preprocessorMacros];
  v9 = GTMTLDescriptorAllocator_copyDictionary(a3, v8, a4);
  v11 = v10;

  v12 = [v7 additionalCompilerArguments];
  v13 = [v12 UTF8String];
  v14 = v13;
  if (v13)
  {
    v15 = strlen(v13);
    v16 = (a3 + 592);
    v17 = *(a3 + 592);
    v18 = v15 + 1;
    if (v15 != -1)
    {
      v19 = *(a3 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v16 = (a3 + 592);
    v17 = *(a3 + 592);
  }

  v18 = 0;
  v19 = 0;
LABEL_6:
  *v16 = v17 + v18;
  if (a4)
  {
    memcpy(v19, v14, v18);
  }

  v20 = [v7 installName];
  v21 = [v20 UTF8String];
  v22 = v21;
  if (v21)
  {
    v23 = strlen(v21);
    v24 = (a3 + 592);
    v25 = *(a3 + 592);
    v26 = v23 + 1;
    if (v23 != -1)
    {
      v27 = *(a3 + 592);
      goto LABEL_13;
    }
  }

  else
  {
    v24 = (a3 + 592);
    v25 = *(a3 + 592);
  }

  v26 = 0;
  v27 = 0;
LABEL_13:
  *v24 = v25 + v26;
  if (a4)
  {
    memcpy(v27, v22, v26);
  }

  v28 = [v7 libraries];
  v29 = TranslateNSArray(v28, a3, a4);

  if (a4)
  {
    *a2 = v9;
    *(a2 + 8) = v11;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 57) = [v7 fastMathEnabled];
    }

    *(a2 + 56) = [v7 debuggingEnabled];
    *(a2 + 48) = [v7 languageVersion];
    *(a2 + 16) = v19;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 62) = [v7 preserveInvariance];
    }

    *(a2 + 24) = v27;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 58) = [v7 libraryType];
    }

    v30 = [v7 libraries];
    *(a2 + 40) = [v30 count];

    if (*(a2 + 40))
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    *(a2 + 32) = v31;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 63) = [v7 sourceLanguage];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 61) = [v7 optimizationLevel];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 55) = [v7 compileSymbolVisibility];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 54) = [v7 allowReferencingUndefinedSymbols];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 52) = [v7 maxTotalThreadsPerThreadgroup];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 59) = [v7 mathFloatingPointFunctions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 60) = [v7 mathMode];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateGTMTLCompileOptions(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 456);
  *(a2 + 456) = v6 + 64;
  if (a3)
  {
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  v7 = v5;
  v8 = [v7 preprocessorMacros];
  v9 = GTMTLDescriptorAllocator_copyDictionary(a2, v8, a3);
  v11 = v10;

  v12 = [v7 additionalCompilerArguments];
  v13 = [v12 UTF8String];
  v14 = v13;
  if (v13)
  {
    v15 = strlen(v13);
    v16 = (a2 + 592);
    v17 = *(a2 + 592);
    v18 = v15 + 1;
    if (v15 != -1)
    {
      v19 = *(a2 + 592);
      goto LABEL_8;
    }
  }

  else
  {
    v16 = (a2 + 592);
    v17 = *(a2 + 592);
  }

  v18 = 0;
  v19 = 0;
LABEL_8:
  *v16 = v17 + v18;
  if (a3)
  {
    memcpy(v19, v14, v18);
  }

  v20 = [v7 installName];
  v21 = [v20 UTF8String];
  v22 = v21;
  if (v21)
  {
    v23 = strlen(v21);
    v24 = (a2 + 592);
    v25 = *(a2 + 592);
    v26 = v23 + 1;
    if (v23 != -1)
    {
      v27 = *(a2 + 592);
      goto LABEL_15;
    }
  }

  else
  {
    v24 = (a2 + 592);
    v25 = *(a2 + 592);
  }

  v26 = 0;
  v27 = 0;
LABEL_15:
  *v24 = v25 + v26;
  if (a3)
  {
    memcpy(v27, v22, v26);
  }

  v28 = [v7 libraries];
  v29 = TranslateNSArray(v28, a2, a3);

  if (a3)
  {
    *v6 = v9;
    *(v6 + 8) = v11;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 57) = [v7 fastMathEnabled];
    }

    *(v6 + 56) = [v7 debuggingEnabled];
    *(v6 + 48) = [v7 languageVersion];
    *(v6 + 16) = v19;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 62) = [v7 preserveInvariance];
    }

    *(v6 + 24) = v27;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 58) = [v7 libraryType];
    }

    v30 = [v7 libraries];
    *(v6 + 40) = [v30 count];

    if (*(v6 + 40))
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    *(v6 + 32) = v31;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 63) = [v7 sourceLanguage];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 61) = [v7 optimizationLevel];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 55) = [v7 compileSymbolVisibility];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 54) = [v7 allowReferencingUndefinedSymbols];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 52) = [v7 maxTotalThreadsPerThreadgroup];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 59) = [v7 mathFloatingPointFunctions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 60) = [v7 mathMode];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeNestedMTLCompileOptions(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = GTData_MakeDictionary(*a2, *(a2 + 8));
  [v5 setPreprocessorMacros:v7];

  [v5 setDebuggingEnabled:*(a2 + 56) != 0];
  [v5 setLanguageVersion:*(a2 + 48)];
  if (*(a2 + 16))
  {
    v8 = [NSString stringWithUTF8String:?];
    [v5 setAdditionalCompilerArguments:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setPreserveInvariance:*(a2 + 62) != 0];
  }

  if (*(a2 + 24))
  {
    v9 = [NSString stringWithUTF8String:?];
    [v5 setInstallName:v9];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setLibraryType:*(a2 + 58)];
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = CreateObjectArrayWithMap(*(a2 + 32), v10, v6);
    [v5 setLibraries:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setSourceLanguage:*(a2 + 63)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setOptimizationLevel:*(a2 + 61)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setCompileSymbolVisibility:*(a2 + 55)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setAllowReferencingUndefinedSymbols:*(a2 + 54) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setMaxTotalThreadsPerThreadgroup:*(a2 + 52)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setMathFloatingPointFunctions:*(a2 + 59)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setMathMode:*(a2 + 60)];
  }

  return v5;
}

id MakeMTLCompileOptions(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLCompileOptions);
  v5 = GTData_MakeDictionary(*a1, *(a1 + 8));
  [v4 setPreprocessorMacros:v5];

  [v4 setDebuggingEnabled:*(a1 + 56) != 0];
  [v4 setLanguageVersion:*(a1 + 48)];
  if (*(a1 + 16))
  {
    v6 = [NSString stringWithUTF8String:?];
    [v4 setAdditionalCompilerArguments:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPreserveInvariance:*(a1 + 62) != 0];
  }

  if (*(a1 + 24))
  {
    v7 = [NSString stringWithUTF8String:?];
    [v4 setInstallName:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setLibraryType:*(a1 + 58)];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = CreateObjectArrayWithMap(*(a1 + 32), v8, v3);
    [v4 setLibraries:v9];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSourceLanguage:*(a1 + 63)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOptimizationLevel:*(a1 + 61)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setCompileSymbolVisibility:*(a1 + 55)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAllowReferencingUndefinedSymbols:*(a1 + 54) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 52)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMathFloatingPointFunctions:*(a1 + 59)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMathMode:*(a1 + 60)];
  }

  return v4;
}

void *TranslateNestedGTMTLAccelerationStructureBoundingBoxGeometryDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  v6 = [v5 boundingBoxBuffer];
  *a2 = [v6 streamReference];

  a2[1] = [v5 boundingBoxBufferOffset];
  a2[3] = [v5 boundingBoxStride];
  v7 = [v5 boundingBoxCount];

  a2[2] = v7;
  return a2;
}

id MakeMTLAccelerationStructureBoundingBoxGeometryDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLAccelerationStructureBoundingBoxGeometryDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*a1];
  v6 = [v3 objectForKeyedSubscript:v5];

  [v4 setBoundingBoxBuffer:v6];
  [v4 setBoundingBoxBufferOffset:a1[1]];
  [v4 setBoundingBoxStride:a1[3]];
  [v4 setBoundingBoxCount:a1[2]];

  return v4;
}

uint64_t TranslateNestedGTMTLAccelerationStructureCurveGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 controlPointBuffer];
    *a2 = [v8 streamReference];

    *(a2 + 8) = [v7 controlPointBufferOffset];
    v9 = [v7 radiusBuffer];
    *(a2 + 48) = [v9 streamReference];

    *(a2 + 56) = [v7 radiusBufferOffset];
    *(a2 + 16) = [v7 controlPointCount];
    *(a2 + 24) = [v7 controlPointStride];
    *(a2 + 64) = [v7 radiusStride];
    v10 = [v7 indexBuffer];
    *(a2 + 32) = [v10 streamReference];

    *(a2 + 40) = [v7 indexBufferOffset];
    *(a2 + 80) = [v7 segmentCount];
    *(a2 + 72) = [v7 segmentControlPointCount];
    *(a2 + 88) = [v7 controlPointFormat];
    *(a2 + 93) = [v7 radiusFormat];
    *(a2 + 92) = [v7 indexType];
    *(a2 + 90) = [v7 curveType];
    *(a2 + 89) = [v7 curveBasis];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 91) = [v7 endCaps];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLAccelerationStructureCurveGeometryDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLAccelerationStructureCurveGeometryDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*a1];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setControlPointBuffer:v6];

  [v4 setControlPointBufferOffset:*(a1 + 8)];
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v8 = [v3 objectForKeyedSubscript:v7];
  [v4 setRadiusBuffer:v8];

  [v4 setRadiusBufferOffset:*(a1 + 56)];
  [v4 setControlPointCount:*(a1 + 16)];
  [v4 setControlPointStride:*(a1 + 24)];
  [v4 setRadiusStride:*(a1 + 64)];
  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v10 = [v3 objectForKeyedSubscript:v9];

  [v4 setIndexBuffer:v10];
  [v4 setIndexBufferOffset:*(a1 + 40)];
  [v4 setSegmentCount:*(a1 + 80)];
  [v4 setSegmentControlPointCount:*(a1 + 72)];
  [v4 setControlPointFormat:*(a1 + 88)];
  [v4 setRadiusFormat:*(a1 + 93)];
  [v4 setIndexType:*(a1 + 92)];
  [v4 setCurveType:*(a1 + 90)];
  [v4 setCurveBasis:*(a1 + 89)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setEndCaps:*(a1 + 91)];
  }

  return v4;
}

void *TranslateNestedGTMTLMotionKeyframeData(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  v6 = [v5 buffer];
  *a2 = [v6 streamReference];

  v7 = [v5 offset];
  a2[1] = v7;
  return a2;
}

id MakeNestedMTLMotionKeyframeData(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1;
  v6 = *a2;
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  [v5 setBuffer:v9];
  [v5 setOffset:a2[1]];

  return v5;
}

uint64_t TranslateNestedGTMTLAccelerationStructureMotionTriangleGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = *(a3 + 512);
  v9 = [v7 vertexBuffers];
  *(a3 + 512) += 16 * [v9 count];

  v10 = [v7 vertexBuffers];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v13 = v8;
    do
    {
      v14 = [v7 vertexBuffers];
      v15 = [v14 objectAtIndexedSubscript:v12];
      v17 = v15;
      if (a4)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0;
      }

      TranslateNestedGTMTLMotionKeyframeData(v15, v18, v16, a4);

      ++v12;
      v19 = [v7 vertexBuffers];
      v20 = [v19 count];

      v13 += 2;
    }

    while (v20 > v12);
  }

  if (a4)
  {
    *(a2 + 40) = v8;
    v21 = [v7 vertexBuffers];
    *(a2 + 48) = [v21 count];

    *(a2 + 56) = [v7 vertexStride];
    v22 = [v7 indexBuffer];
    *a2 = [v22 streamReference];

    *(a2 + 8) = [v7 indexBufferOffset];
    *(a2 + 64) = [v7 indexType];
    *(a2 + 32) = [v7 triangleCount];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 66) = [v7 vertexFormat];
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [v7 transformationMatrixBuffer];
      *(a2 + 16) = [v23 streamReference];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 24) = [v7 transformationMatrixBufferOffset];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 65) = [v7 transformationMatrixLayout];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLAccelerationStructureMotionTriangleGeometryDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLAccelerationStructureMotionTriangleGeometryDescriptor);
  v5 = objc_alloc_init(NSMutableArray);
  if (*(a1 + 48))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = objc_alloc_init(MTLMotionKeyframeData);
      MakeNestedMTLMotionKeyframeData(v8, (*(a1 + 40) + v6), v3);
      objc_claimAutoreleasedReturnValue();
      [v5 addObject:v8];

      ++v7;
      v6 += 16;
    }

    while (*(a1 + 48) > v7);
  }

  [v4 setVertexBuffers:v5];
  [v4 setVertexStride:*(a1 + 56)];
  v9 = [NSNumber numberWithUnsignedLongLong:*a1];
  v10 = [v3 objectForKeyedSubscript:v9];
  [v4 setIndexBuffer:v10];

  [v4 setIndexBufferOffset:*(a1 + 8)];
  [v4 setIndexType:*(a1 + 64)];
  [v4 setTriangleCount:*(a1 + 32)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexFormat:*(a1 + 66)];
  }

  v11 = [NSNumber numberWithUnsignedLongLong:*(a1 + 16)];
  v12 = [v3 objectForKeyedSubscript:v11];
  [v4 setTransformationMatrixBuffer:v12];

  if (objc_opt_respondsToSelector())
  {
    [v4 setTransformationMatrixBufferOffset:*(a1 + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTransformationMatrixLayout:*(a1 + 65)];
  }

  return v4;
}

void *TranslateNestedGTMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = *(a3 + 512);
  v9 = [v7 boundingBoxBuffers];
  *(a3 + 512) += 16 * [v9 count];

  v10 = [v7 boundingBoxBuffers];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v13 = v8;
    do
    {
      v14 = [v7 boundingBoxBuffers];
      v15 = [v14 objectAtIndexedSubscript:v12];
      v17 = v15;
      if (a4)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0;
      }

      TranslateNestedGTMTLMotionKeyframeData(v15, v18, v16, a4);

      ++v12;
      v19 = [v7 boundingBoxBuffers];
      v20 = [v19 count];

      v13 += 2;
    }

    while (v20 > v12);
  }

  if (a4)
  {
    *a2 = v8;
    v21 = [v7 boundingBoxBuffers];
    a2[1] = [v21 count];

    a2[3] = [v7 boundingBoxStride];
    a2[2] = [v7 boundingBoxCount];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor);
  v5 = objc_alloc_init(NSMutableArray);
  if (a1[1])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = objc_alloc_init(MTLMotionKeyframeData);
      MakeNestedMTLMotionKeyframeData(v8, (*a1 + v6), v3);
      objc_claimAutoreleasedReturnValue();
      [v5 addObject:v8];

      ++v7;
      v6 += 16;
    }

    while (a1[1] > v7);
  }

  [v4 setBoundingBoxBuffers:v5];
  [v4 setBoundingBoxStride:a1[3]];
  [v4 setBoundingBoxCount:a1[2]];

  return v4;
}

uint64_t TranslateNestedGTMTLAccelerationStructureTriangleGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 vertexBuffer];
    *(a2 + 40) = [v8 streamReference];

    *(a2 + 48) = [v7 vertexBufferOffset];
    *(a2 + 56) = [v7 vertexStride];
    v9 = [v7 indexBuffer];
    *a2 = [v9 streamReference];

    *(a2 + 8) = [v7 indexBufferOffset];
    *(a2 + 64) = [v7 indexType];
    *(a2 + 32) = [v7 triangleCount];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 66) = [v7 vertexFormat];
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 transformationMatrixBuffer];
      *(a2 + 16) = [v10 streamReference];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 24) = [v7 transformationMatrixBufferOffset];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 65) = [v7 transformationMatrixLayout];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLAccelerationStructureTriangleGeometryDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLAccelerationStructureTriangleGeometryDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setVertexBuffer:v6];

  [v4 setVertexBufferOffset:*(a1 + 48)];
  [v4 setVertexStride:*(a1 + 56)];
  v7 = [NSNumber numberWithUnsignedLongLong:*a1];
  v8 = [v3 objectForKeyedSubscript:v7];
  [v4 setIndexBuffer:v8];

  [v4 setIndexBufferOffset:*(a1 + 8)];
  [v4 setIndexType:*(a1 + 64)];
  [v4 setTriangleCount:*(a1 + 32)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexFormat:*(a1 + 66)];
  }

  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 16)];
  v10 = [v3 objectForKeyedSubscript:v9];
  [v4 setTransformationMatrixBuffer:v10];

  if (objc_opt_respondsToSelector())
  {
    [v4 setTransformationMatrixBufferOffset:*(a1 + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTransformationMatrixLayout:*(a1 + 65)];
  }

  return v4;
}

uint64_t TranslateNestedGTMTLAccelerationStructureMotionCurveGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = *(a3 + 512);
  v9 = [v7 controlPointBuffers];
  *(a3 + 512) += 16 * [v9 count];

  v10 = [v7 controlPointBuffers];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v13 = v8;
    do
    {
      v14 = [v7 controlPointBuffers];
      v15 = [v14 objectAtIndexedSubscript:v12];
      v17 = v15;
      if (a4)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0;
      }

      TranslateNestedGTMTLMotionKeyframeData(v15, v18, v16, a4);

      ++v12;
      v19 = [v7 controlPointBuffers];
      v20 = [v19 count];

      v13 += 2;
    }

    while (v20 > v12);
  }

  v21 = *(a3 + 512);
  v22 = [v7 radiusBuffers];
  *(a3 + 512) += 16 * [v22 count];

  v23 = [v7 radiusBuffers];
  v24 = [v23 count];

  if (v24)
  {
    v25 = 0;
    v26 = v21;
    do
    {
      v27 = [v7 radiusBuffers];
      v28 = [v27 objectAtIndexedSubscript:v25];
      v30 = v28;
      if (a4)
      {
        v31 = v26;
      }

      else
      {
        v31 = 0;
      }

      TranslateNestedGTMTLMotionKeyframeData(v28, v31, v29, a4);

      ++v25;
      v32 = [v7 radiusBuffers];
      v33 = [v32 count];

      v26 += 2;
    }

    while (v33 > v25);
  }

  if (a4)
  {
    *a2 = v8;
    v34 = [v7 controlPointBuffers];
    *(a2 + 8) = [v34 count];

    *(a2 + 48) = v21;
    v35 = [v7 radiusBuffers];
    *(a2 + 56) = [v35 count];

    *(a2 + 16) = [v7 controlPointCount];
    *(a2 + 24) = [v7 controlPointStride];
    *(a2 + 64) = [v7 radiusStride];
    v36 = [v7 indexBuffer];
    *(a2 + 32) = [v36 streamReference];

    *(a2 + 40) = [v7 indexBufferOffset];
    *(a2 + 80) = [v7 segmentCount];
    *(a2 + 88) = [v7 controlPointFormat];
    *(a2 + 93) = [v7 radiusFormat];
    *(a2 + 92) = [v7 indexType];
    *(a2 + 72) = [v7 segmentControlPointCount];
    *(a2 + 90) = [v7 curveType];
    *(a2 + 89) = [v7 curveBasis];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 91) = [v7 endCaps];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLAccelerationStructureMotionCurveGeometryDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLAccelerationStructureMotionCurveGeometryDescriptor);
  v5 = objc_alloc_init(NSMutableArray);
  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = objc_alloc_init(MTLMotionKeyframeData);
      MakeNestedMTLMotionKeyframeData(v8, (*a1 + v6), v3);
      objc_claimAutoreleasedReturnValue();
      [v5 addObject:v8];

      ++v7;
      v6 += 16;
    }

    while (*(a1 + 8) > v7);
  }

  [v4 setControlPointBuffers:v5];
  v9 = objc_alloc_init(NSMutableArray);
  if (*(a1 + 56))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = objc_alloc_init(MTLMotionKeyframeData);
      MakeNestedMTLMotionKeyframeData(v12, (*(a1 + 48) + v10), v3);
      objc_claimAutoreleasedReturnValue();
      [v9 addObject:v12];

      ++v11;
      v10 += 16;
    }

    while (*(a1 + 56) > v11);
  }

  [v4 setRadiusBuffers:v9];
  [v4 setControlPointCount:*(a1 + 16)];
  [v4 setControlPointStride:*(a1 + 24)];
  [v4 setRadiusStride:*(a1 + 64)];
  v13 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v14 = [v3 objectForKeyedSubscript:v13];
  [v4 setIndexBuffer:v14];

  [v4 setIndexBufferOffset:*(a1 + 40)];
  [v4 setSegmentCount:*(a1 + 80)];
  [v4 setControlPointFormat:*(a1 + 88)];
  [v4 setRadiusFormat:*(a1 + 93)];
  [v4 setIndexType:*(a1 + 92)];
  [v4 setSegmentControlPointCount:*(a1 + 72)];
  [v4 setCurveType:*(a1 + 90)];
  [v4 setCurveBasis:*(a1 + 89)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setEndCaps:*(a1 + 91)];
  }

  return v4;
}

uint64_t TranslateNestedGTMTLAccelerationStructureGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = *(a3 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a4)
  {
    memcpy(v15, v10, v14);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TranslateNestedGTMTLAccelerationStructureBoundingBoxGeometryDescriptor(v7, a2, v16, a4);
    v17 = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      TranslateNestedGTMTLAccelerationStructureCurveGeometryDescriptor(v7, a2, v18, a4);
      v17 = 5;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        TranslateNestedGTMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(v7, a2, a3, a4);
        v17 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          TranslateNestedGTMTLAccelerationStructureMotionCurveGeometryDescriptor(v7, a2, a3, a4);
          v17 = 6;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            TranslateNestedGTMTLAccelerationStructureMotionTriangleGeometryDescriptor(v7, a2, a3, a4);
            v17 = 3;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              TranslateNestedGTMTLAccelerationStructureTriangleGeometryDescriptor(v7, a2, v19, a4);
              v17 = 1;
            }

            else
            {
              v17 = 0;
            }
          }
        }
      }
    }
  }

  if (a4)
  {
    *(a2 + 146) = v17;
    *(a2 + 96) = [v7 intersectionFunctionTableOffset];
    *(a2 + 145) = [v7 opaque];
    *(a2 + 144) = [v7 allowDuplicateIntersectionFunctionInvocation];
    *(a2 + 104) = v15;
    if (objc_opt_respondsToSelector())
    {
      v20 = [v7 primitiveDataBuffer];
      *(a2 + 112) = [v20 streamReference];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 120) = [v7 primitiveDataBufferOffset];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 136) = [v7 primitiveDataStride];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 128) = [v7 primitiveDataElementSize];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLAccelerationStructureGeometryDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = *(a1 + 146);
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4u:
        v6 = MakeMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(a1, v3);
        break;
      case 5u:
        v6 = MakeMTLAccelerationStructureCurveGeometryDescriptor(a1, v3);
        break;
      case 6u:
        v6 = MakeMTLAccelerationStructureMotionCurveGeometryDescriptor(a1, v3);
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 1u:
        v6 = MakeMTLAccelerationStructureTriangleGeometryDescriptor(a1, v3);
        break;
      case 2u:
        v6 = MakeMTLAccelerationStructureBoundingBoxGeometryDescriptor(a1, v3);
        break;
      case 3u:
        v6 = MakeMTLAccelerationStructureMotionTriangleGeometryDescriptor(a1, v3);
        break;
      default:
        goto LABEL_15;
    }
  }

  v4 = v6;
LABEL_15:
  [v4 setIntersectionFunctionTableOffset:*(a1 + 96)];
  [v4 setOpaque:*(a1 + 145) != 0];
  [v4 setAllowDuplicateIntersectionFunctionInvocation:*(a1 + 144) != 0];
  if (*(a1 + 104))
  {
    v7 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v7];
  }

  v8 = [NSNumber numberWithUnsignedLongLong:*(a1 + 112)];
  v9 = [v3 objectForKeyedSubscript:v8];
  [v4 setPrimitiveDataBuffer:v9];

  if (objc_opt_respondsToSelector())
  {
    [v4 setPrimitiveDataBufferOffset:*(a1 + 120)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPrimitiveDataStride:*(a1 + 136)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPrimitiveDataElementSize:*(a1 + 128)];
  }

  return v4;
}

uint64_t TranslateNestedGTMTLPrimitiveAccelerationStructureDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = *(a3 + 424);
  v9 = [v7 geometryDescriptors];
  *(a3 + 424) += 152 * [v9 count];

  v10 = [v7 geometryDescriptors];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v13 = v8;
    do
    {
      v14 = [v7 geometryDescriptors];
      v15 = [v14 objectAtIndexedSubscript:v12];
      v16 = v15;
      if (a4)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0;
      }

      TranslateNestedGTMTLAccelerationStructureGeometryDescriptor(v15, v17, a3, a4);

      ++v12;
      v18 = [v7 geometryDescriptors];
      v19 = [v18 count];

      v13 += 152;
    }

    while (v19 > v12);
  }

  if (a4)
  {
    *a2 = v8;
    v20 = [v7 geometryDescriptors];
    *(a2 + 8) = [v20 count];

    if (objc_opt_respondsToSelector())
    {
      [v7 motionStartTime];
      *(a2 + 24) = v21;
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 motionEndTime];
      *(a2 + 16) = v22;
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 29) = [v7 motionStartBorderMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 28) = [v7 motionEndBorderMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 20) = [v7 motionKeyframeCount];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLPrimitiveAccelerationStructureDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLPrimitiveAccelerationStructureDescriptor);
  v5 = objc_alloc_init(NSMutableArray);
  if (*(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = MakeMTLAccelerationStructureGeometryDescriptor(*a1 + v6, v3);
      [v5 addObject:v8];

      ++v7;
      v6 += 152;
    }

    while (*(a1 + 8) > v7);
  }

  [v4 setGeometryDescriptors:v5];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v9) = *(a1 + 24);
    [v4 setMotionStartTime:v9];
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v10) = *(a1 + 16);
    [v4 setMotionEndTime:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionStartBorderMode:*(a1 + 29)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionEndBorderMode:*(a1 + 28)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionKeyframeCount:*(a1 + 20)];
  }

  return v4;
}

uint64_t TranslateGTMTLAccelerationStructureDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 352);
  *(a2 + 352) = v6 + 104;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TranslateNestedGTMTL4AccelerationStructureDescriptor(v7, v6, a2, a3);
    v8 = 4;
    if (a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      TranslateNestedGTMTLIndirectInstanceAccelerationStructureDescriptor(v7, v6, v9, a3);
      v8 = 3;
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          TranslateNestedGTMTLPrimitiveAccelerationStructureDescriptor(v7, v6, a2, a3);
          v8 = 1;
          if (!a3)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v8 = 0;
          if (!a3)
          {
            goto LABEL_12;
          }
        }

LABEL_14:
        *(v6 + 96) = v8;
        *(v6 + 97) = [v7 usage];
        goto LABEL_15;
      }

      TranslateNestedGTMTLInstanceAccelerationStructureDescriptor(v7, v6, a2, a3);
      v8 = 2;
      if (a3)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_12:
  v6 = 0;
LABEL_15:

  return v6;
}

uint64_t TranslateNestedGTMTL4AccelerationStructureDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TranslateNestedGTMTL4IndirectInstanceAccelerationStructureDescriptor(v7, a2, v8, a4);
    v9 = 7;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        TranslateNestedGTMTL4PrimitiveAccelerationStructureDescriptor(v7, a2, a3, a4);
        v9 = 5;
        if (!a4)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = 0;
        if (!a4)
        {
          goto LABEL_9;
        }
      }

LABEL_11:
      *(a2 + 88) = v9;
      goto LABEL_12;
    }

    TranslateNestedGTMTL4InstanceAccelerationStructureDescriptor(v7, a2, v10, a4);
    v9 = 6;
    if (a4)
    {
      goto LABEL_11;
    }
  }

LABEL_9:
  a2 = 0;
LABEL_12:

  return a2;
}

uint64_t TranslateNestedGTMTLIndirectInstanceAccelerationStructureDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 instanceDescriptorBuffer];
    *(a2 + 16) = [v8 streamReference];

    *(a2 + 24) = [v7 instanceDescriptorBufferOffset];
    v9 = [v7 instanceCountBuffer];
    *a2 = [v9 streamReference];

    *(a2 + 8) = [v7 instanceCountBufferOffset];
    v10 = [v7 motionTransformBuffer];
    *(a2 + 32) = [v10 streamReference];

    *(a2 + 40) = [v7 motionTransformBufferOffset];
    v11 = [v7 motionTransformCountBuffer];
    *(a2 + 48) = [v11 streamReference];

    *(a2 + 56) = [v7 motionTransformCountBufferOffset];
    *(a2 + 76) = [v7 maxInstanceCount];
    *(a2 + 72) = [v7 instanceDescriptorStride];
    *(a2 + 80) = [v7 maxMotionTransformCount];
    *(a2 + 84) = [v7 instanceDescriptorType];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 64) = [v7 motionTransformStride];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 86) = [v7 motionTransformType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 85) = [v7 instanceTransformationMatrixLayout];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateNestedGTMTLInstanceAccelerationStructureDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [v7 instancedAccelerationStructures];
  v9 = TranslateNSArray(v8, a3, a4);

  if (a4)
  {
    v10 = [v7 instanceDescriptorBuffer];
    *(a2 + 8) = [v10 streamReference];

    *(a2 + 16) = [v7 instanceDescriptorBufferOffset];
    *(a2 + 24) = [v7 instanceDescriptorStride];
    *a2 = [v7 instanceCount];
    v11 = [v7 instancedAccelerationStructures];
    *(a2 + 40) = [v11 count];

    if (*(a2 + 40))
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    *(a2 + 32) = v12;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 80) = [v7 instanceDescriptorType];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v7 motionTransformBuffer];
      *(a2 + 48) = [v13 streamReference];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 56) = [v7 motionTransformBufferOffset];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 64) = [v7 motionTransformCount];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 72) = [v7 motionTransformStride];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 82) = [v7 motionTransformType];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 81) = [v7 instanceTransformationMatrixLayout];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateNestedGTMTL4IndirectInstanceAccelerationStructureDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    *a2 = [v6 instanceCountBuffer];
    *(a2 + 8) = v8;
    *(a2 + 16) = [v7 instanceDescriptorBuffer];
    *(a2 + 24) = v9;
    *(a2 + 72) = [v7 instanceDescriptorStride];
    *(a2 + 84) = [v7 instanceDescriptorType];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 85) = [v7 instanceTransformationMatrixLayout];
    }

    *(a2 + 76) = [v7 maxInstanceCount];
    *(a2 + 80) = [v7 maxMotionTransformCount];
    *(a2 + 32) = [v7 motionTransformBuffer];
    *(a2 + 40) = v10;
    *(a2 + 48) = [v7 motionTransformCountBuffer];
    *(a2 + 56) = v11;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 64) = [v7 motionTransformStride];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 86) = [v7 motionTransformType];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateNestedGTMTL4InstanceAccelerationStructureDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    *(a2 + 32) = [v6 instanceCount];
    *a2 = [v7 instanceDescriptorBuffer];
    *(a2 + 8) = v8;
    *(a2 + 40) = [v7 instanceDescriptorStride];
    *(a2 + 64) = [v7 instanceDescriptorType];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 65) = [v7 instanceTransformationMatrixLayout];
    }

    *(a2 + 16) = [v7 motionTransformBuffer];
    *(a2 + 24) = v9;
    *(a2 + 48) = [v7 motionTransformCount];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 56) = [v7 motionTransformStride];
    }

    if (objc_opt_respondsToSelector())
    {
      *(a2 + 66) = [v7 motionTransformType];
    }
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateNestedGTMTL4PrimitiveAccelerationStructureDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = *(a3 + 432);
  v9 = [v7 geometryDescriptors];
  *(a3 + 432) += 152 * [v9 count];

  v10 = [v7 geometryDescriptors];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    v13 = v8;
    do
    {
      v14 = [v7 geometryDescriptors];
      v15 = [v14 objectAtIndexedSubscript:v12];
      v16 = v15;
      if (a4)
      {
        v17 = v13;
      }

      else
      {
        v17 = 0;
      }

      TranslateNestedGTMTL4AccelerationStructureGeometryDescriptor(v15, v17, a3, a4);

      ++v12;
      v18 = [v7 geometryDescriptors];
      v19 = [v18 count];

      v13 += 152;
    }

    while (v19 > v12);
  }

  if (a4)
  {
    *a2 = v8;
    v20 = [v7 geometryDescriptors];
    *(a2 + 8) = [v20 count];

    *(a2 + 32) = [v7 motionEndBorderMode];
    [v7 motionEndTime];
    *(a2 + 24) = v21;
    *(a2 + 16) = [v7 motionKeyframeCount];
    *(a2 + 33) = [v7 motionStartBorderMode];
    [v7 motionStartTime];
    *(a2 + 28) = v22;
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateNestedGTMTL4AccelerationStructureGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = *(a3 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a4)
  {
    memcpy(v15, v10, v14);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TranslateNestedGTMTL4AccelerationStructureBoundingBoxGeometryDescriptor(v7, a2, v16, a4);
    v17 = 8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      TranslateNestedGTMTL4AccelerationStructureCurveGeometryDescriptor(v7, a2, v18, a4);
      v17 = 11;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        TranslateNestedGTMTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor(v7, a2, v19, a4);
        v17 = 10;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          TranslateNestedGTMTL4AccelerationStructureMotionCurveGeometryDescriptor(v7, a2, v20, a4);
          v17 = 12;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            TranslateNestedGTMTL4AccelerationStructureMotionTriangleGeometryDescriptor(v7, a2, v21, a4);
            v17 = 9;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              TranslateNestedGTMTL4AccelerationStructureTriangleGeometryDescriptor(v7, a2, v22, a4);
              v17 = 7;
            }

            else
            {
              v17 = 0;
            }
          }
        }
      }
    }
  }

  if (a4)
  {
    *(a2 + 144) = [v7 allowDuplicateIntersectionFunctionInvocation];
    *(a2 + 112) = [v7 intersectionFunctionTableOffset];
    *(a2 + 120) = v15;
    *(a2 + 145) = [v7 opaque];
    *(a2 + 96) = [v7 primitiveDataBuffer];
    *(a2 + 104) = v23;
    *(a2 + 128) = [v7 primitiveDataElementSize];
    *(a2 + 136) = [v7 primitiveDataStride];
    *(a2 + 146) = v17;
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void *TranslateNestedGTMTL4AccelerationStructureBoundingBoxGeometryDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *a2 = [v5 boundingBoxBuffer];
  a2[1] = v6;
  a2[2] = [v5 boundingBoxCount];
  v7 = [v5 boundingBoxStride];

  a2[3] = v7;
  return a2;
}

uint64_t TranslateNestedGTMTL4AccelerationStructureCurveGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *a2 = [v5 controlPointBuffer];
  *(a2 + 8) = v6;
  *(a2 + 48) = [v5 controlPointCount];
  *(a2 + 88) = [v5 controlPointFormat];
  *(a2 + 56) = [v5 controlPointStride];
  *(a2 + 89) = [v5 curveBasis];
  *(a2 + 90) = [v5 curveEndCaps];
  *(a2 + 91) = [v5 curveType];
  *(a2 + 16) = [v5 indexBuffer];
  *(a2 + 24) = v7;
  *(a2 + 92) = [v5 indexType];
  *(a2 + 32) = [v5 radiusBuffer];
  *(a2 + 40) = v8;
  *(a2 + 93) = [v5 radiusFormat];
  *(a2 + 64) = [v5 radiusStride];
  *(a2 + 72) = [v5 segmentControlPointCount];
  v9 = [v5 segmentCount];

  *(a2 + 80) = v9;
  return a2;
}

void *TranslateNestedGTMTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *a2 = [v5 boundingBoxBuffers];
  a2[1] = v6;
  a2[2] = [v5 boundingBoxCount];
  v7 = [v5 boundingBoxStride];

  a2[3] = v7;
  return a2;
}

uint64_t TranslateNestedGTMTL4AccelerationStructureMotionCurveGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *a2 = [v5 controlPointBuffers];
  *(a2 + 8) = v6;
  *(a2 + 48) = [v5 controlPointCount];
  *(a2 + 88) = [v5 controlPointFormat];
  *(a2 + 56) = [v5 controlPointStride];
  *(a2 + 89) = [v5 curveBasis];
  *(a2 + 90) = [v5 curveEndCaps];
  *(a2 + 91) = [v5 curveType];
  *(a2 + 16) = [v5 indexBuffer];
  *(a2 + 24) = v7;
  *(a2 + 92) = [v5 indexType];
  *(a2 + 32) = [v5 radiusBuffers];
  *(a2 + 40) = v8;
  *(a2 + 93) = [v5 radiusFormat];
  *(a2 + 64) = [v5 radiusStride];
  *(a2 + 72) = [v5 segmentControlPointCount];
  v9 = [v5 segmentCount];

  *(a2 + 80) = v9;
  return a2;
}

uint64_t TranslateNestedGTMTL4AccelerationStructureMotionTriangleGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    *a2 = [v6 indexBuffer];
    *(a2 + 8) = v8;
    *(a2 + 64) = [v7 indexType];
    *(a2 + 16) = [v7 transformationMatrixBuffer];
    *(a2 + 24) = v9;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 65) = [v7 transformationMatrixLayout];
    }

    *(a2 + 48) = [v7 triangleCount];
    *(a2 + 32) = [v7 vertexBuffers];
    *(a2 + 40) = v10;
    *(a2 + 66) = [v7 vertexFormat];
    *(a2 + 56) = [v7 vertexStride];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t TranslateNestedGTMTL4AccelerationStructureTriangleGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  v7 = v6;
  if (a4)
  {
    *a2 = [v6 indexBuffer];
    *(a2 + 8) = v8;
    *(a2 + 64) = [v7 indexType];
    *(a2 + 16) = [v7 transformationMatrixBuffer];
    *(a2 + 24) = v9;
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 65) = [v7 transformationMatrixLayout];
    }

    *(a2 + 48) = [v7 triangleCount];
    *(a2 + 32) = [v7 vertexBuffer];
    *(a2 + 40) = v10;
    *(a2 + 66) = [v7 vertexFormat];
    *(a2 + 56) = [v7 vertexStride];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTLAccelerationStructureDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = *(a1 + 96);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = MakeMTLIndirectInstanceAccelerationStructureDescriptor(a1, v3);
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_11;
      }

      v6 = MakeMTL4AccelerationStructureDescriptor(a1);
    }
  }

  else if (v5 == 1)
  {
    v6 = MakeMTLPrimitiveAccelerationStructureDescriptor(a1, v3);
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v6 = MakeMTLInstanceAccelerationStructureDescriptor(a1, v3);
  }

  v4 = v6;
LABEL_11:
  [v4 setUsage:*(a1 + 97)];

  return v4;
}

id MakeMTL4AccelerationStructureDescriptor(uint64_t a1)
{
  v1 = *(a1 + 88);
  switch(v1)
  {
    case 5:
      v2 = MakeMTL4PrimitiveAccelerationStructureDescriptor(a1);
      break;
    case 6:
      v2 = MakeMTL4InstanceAccelerationStructureDescriptor(a1);
      break;
    case 7:
      v2 = MakeMTL4IndirectInstanceAccelerationStructureDescriptor(a1);
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

id MakeMTLIndirectInstanceAccelerationStructureDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLIndirectInstanceAccelerationStructureDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 16)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setInstanceDescriptorBuffer:v6];

  [v4 setInstanceDescriptorBufferOffset:*(a1 + 24)];
  v7 = [NSNumber numberWithUnsignedLongLong:*a1];
  v8 = [v3 objectForKeyedSubscript:v7];
  [v4 setInstanceCountBuffer:v8];

  [v4 setInstanceCountBufferOffset:*(a1 + 8)];
  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v10 = [v3 objectForKeyedSubscript:v9];
  [v4 setMotionTransformBuffer:v10];

  [v4 setMotionTransformBufferOffset:*(a1 + 40)];
  v11 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v12 = [v3 objectForKeyedSubscript:v11];

  [v4 setMotionTransformCountBuffer:v12];
  [v4 setMotionTransformCountBufferOffset:*(a1 + 56)];
  [v4 setMaxInstanceCount:*(a1 + 76)];
  [v4 setInstanceDescriptorStride:*(a1 + 72)];
  [v4 setMaxMotionTransformCount:*(a1 + 80)];
  [v4 setInstanceDescriptorType:*(a1 + 84)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionTransformStride:*(a1 + 64)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionTransformType:*(a1 + 86)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setInstanceTransformationMatrixLayout:*(a1 + 85)];
  }

  return v4;
}

id MakeMTLInstanceAccelerationStructureDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 8)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setInstanceDescriptorBuffer:v6];

  [v4 setInstanceDescriptorBufferOffset:*(a1 + 16)];
  [v4 setInstanceDescriptorStride:*(a1 + 24)];
  [v4 setInstanceCount:*a1];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*(a1 + 32), v7, v3);
    [v4 setInstancedAccelerationStructures:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setInstanceDescriptorType:*(a1 + 80)];
  }

  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  v10 = [v3 objectForKeyedSubscript:v9];
  [v4 setMotionTransformBuffer:v10];

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionTransformBufferOffset:*(a1 + 56)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionTransformCount:*(a1 + 64)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionTransformStride:*(a1 + 72)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMotionTransformType:*(a1 + 82)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setInstanceTransformationMatrixLayout:*(a1 + 81)];
  }

  return v4;
}

id MakeMTL4IndirectInstanceAccelerationStructureDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4IndirectInstanceAccelerationStructureDescriptor);
  [v2 setInstanceCountBuffer:{*a1, *(a1 + 8)}];
  [v2 setInstanceDescriptorBuffer:{*(a1 + 16), *(a1 + 24)}];
  [v2 setInstanceDescriptorStride:*(a1 + 72)];
  [v2 setInstanceDescriptorType:*(a1 + 84)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setInstanceTransformationMatrixLayout:*(a1 + 85)];
  }

  [v2 setMaxInstanceCount:*(a1 + 76)];
  [v2 setMaxMotionTransformCount:*(a1 + 80)];
  [v2 setMotionTransformBuffer:{*(a1 + 32), *(a1 + 40)}];
  [v2 setMotionTransformCountBuffer:{*(a1 + 48), *(a1 + 56)}];
  if (objc_opt_respondsToSelector())
  {
    [v2 setMotionTransformStride:*(a1 + 64)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMotionTransformType:*(a1 + 86)];
  }

  return v2;
}

id MakeMTL4InstanceAccelerationStructureDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4InstanceAccelerationStructureDescriptor);
  [v2 setInstanceCount:*(a1 + 32)];
  [v2 setInstanceDescriptorBuffer:{*a1, *(a1 + 8)}];
  [v2 setInstanceDescriptorStride:*(a1 + 40)];
  [v2 setInstanceDescriptorType:*(a1 + 64)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setInstanceTransformationMatrixLayout:*(a1 + 65)];
  }

  [v2 setMotionTransformBuffer:{*(a1 + 16), *(a1 + 24)}];
  [v2 setMotionTransformCount:*(a1 + 48)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setMotionTransformStride:*(a1 + 56)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMotionTransformType:*(a1 + 66)];
  }

  return v2;
}

id MakeMTL4PrimitiveAccelerationStructureDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4PrimitiveAccelerationStructureDescriptor);
  v3 = objc_alloc_init(NSMutableArray);
  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = MakeMTL4AccelerationStructureGeometryDescriptor(*a1 + v4);
      [v3 addObject:v6];

      ++v5;
      v4 += 152;
    }

    while (*(a1 + 8) > v5);
  }

  [v2 setGeometryDescriptors:v3];
  [v2 setMotionEndBorderMode:*(a1 + 32)];
  LODWORD(v7) = *(a1 + 24);
  [v2 setMotionEndTime:v7];
  [v2 setMotionKeyframeCount:*(a1 + 16)];
  [v2 setMotionStartBorderMode:*(a1 + 33)];
  LODWORD(v8) = *(a1 + 28);
  [v2 setMotionStartTime:v8];

  return v2;
}

id MakeMTL4AccelerationStructureGeometryDescriptor(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 146);
  if (v3 > 9)
  {
    switch(v3)
    {
      case 0xAu:
        v4 = MakeMTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor(a1);
        break;
      case 0xBu:
        v4 = MakeMTL4AccelerationStructureCurveGeometryDescriptor(a1);
        break;
      case 0xCu:
        v4 = MakeMTL4AccelerationStructureMotionCurveGeometryDescriptor(a1);
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v3)
    {
      case 7u:
        v4 = MakeMTL4AccelerationStructureTriangleGeometryDescriptor(a1);
        break;
      case 8u:
        v4 = MakeMTL4AccelerationStructureBoundingBoxGeometryDescriptor(a1);
        break;
      case 9u:
        v4 = MakeMTL4AccelerationStructureMotionTriangleGeometryDescriptor(a1);
        break;
      default:
        goto LABEL_15;
    }
  }

  v2 = v4;
LABEL_15:
  [v2 setAllowDuplicateIntersectionFunctionInvocation:*(a1 + 144) != 0];
  [v2 setIntersectionFunctionTableOffset:*(a1 + 112)];
  if (*(a1 + 120))
  {
    v5 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v5];
  }

  [v2 setOpaque:*(a1 + 145) != 0];
  [v2 setPrimitiveDataBuffer:{*(a1 + 96), *(a1 + 104)}];
  [v2 setPrimitiveDataElementSize:*(a1 + 128)];
  [v2 setPrimitiveDataStride:*(a1 + 136)];

  return v2;
}

id MakeMTL4AccelerationStructureBoundingBoxGeometryDescriptor(void *a1)
{
  v2 = objc_alloc_init(MTL4AccelerationStructureBoundingBoxGeometryDescriptor);
  [v2 setBoundingBoxBuffer:{*a1, a1[1]}];
  [v2 setBoundingBoxCount:a1[2]];
  [v2 setBoundingBoxStride:a1[3]];

  return v2;
}

id MakeMTL4AccelerationStructureCurveGeometryDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4AccelerationStructureCurveGeometryDescriptor);
  [v2 setControlPointBuffer:{*a1, *(a1 + 8)}];
  [v2 setControlPointCount:*(a1 + 48)];
  [v2 setControlPointFormat:*(a1 + 88)];
  [v2 setControlPointStride:*(a1 + 56)];
  [v2 setCurveBasis:*(a1 + 89)];
  [v2 setCurveEndCaps:*(a1 + 90)];
  [v2 setCurveType:*(a1 + 91)];
  [v2 setIndexBuffer:{*(a1 + 16), *(a1 + 24)}];
  [v2 setIndexType:*(a1 + 92)];
  [v2 setRadiusBuffer:{*(a1 + 32), *(a1 + 40)}];
  [v2 setRadiusFormat:*(a1 + 93)];
  [v2 setRadiusStride:*(a1 + 64)];
  [v2 setSegmentControlPointCount:*(a1 + 72)];
  [v2 setSegmentCount:*(a1 + 80)];

  return v2;
}

id MakeMTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor(void *a1)
{
  v2 = objc_alloc_init(MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor);
  [v2 setBoundingBoxBuffers:{*a1, a1[1]}];
  [v2 setBoundingBoxCount:a1[2]];
  [v2 setBoundingBoxStride:a1[3]];

  return v2;
}

id MakeMTL4AccelerationStructureMotionCurveGeometryDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4AccelerationStructureMotionCurveGeometryDescriptor);
  [v2 setControlPointBuffers:{*a1, *(a1 + 8)}];
  [v2 setControlPointCount:*(a1 + 48)];
  [v2 setControlPointFormat:*(a1 + 88)];
  [v2 setControlPointStride:*(a1 + 56)];
  [v2 setCurveBasis:*(a1 + 89)];
  [v2 setCurveEndCaps:*(a1 + 90)];
  [v2 setCurveType:*(a1 + 91)];
  [v2 setIndexBuffer:{*(a1 + 16), *(a1 + 24)}];
  [v2 setIndexType:*(a1 + 92)];
  [v2 setRadiusBuffers:{*(a1 + 32), *(a1 + 40)}];
  [v2 setRadiusFormat:*(a1 + 93)];
  [v2 setRadiusStride:*(a1 + 64)];
  [v2 setSegmentControlPointCount:*(a1 + 72)];
  [v2 setSegmentCount:*(a1 + 80)];

  return v2;
}

id MakeMTL4AccelerationStructureMotionTriangleGeometryDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4AccelerationStructureMotionTriangleGeometryDescriptor);
  [v2 setIndexBuffer:{*a1, *(a1 + 8)}];
  [v2 setIndexType:*(a1 + 64)];
  [v2 setTransformationMatrixBuffer:{*(a1 + 16), *(a1 + 24)}];
  if (objc_opt_respondsToSelector())
  {
    [v2 setTransformationMatrixLayout:*(a1 + 65)];
  }

  [v2 setTriangleCount:*(a1 + 48)];
  [v2 setVertexBuffers:{*(a1 + 32), *(a1 + 40)}];
  [v2 setVertexFormat:*(a1 + 66)];
  [v2 setVertexStride:*(a1 + 56)];

  return v2;
}

id MakeMTL4AccelerationStructureTriangleGeometryDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4AccelerationStructureTriangleGeometryDescriptor);
  [v2 setIndexBuffer:{*a1, *(a1 + 8)}];
  [v2 setIndexType:*(a1 + 64)];
  [v2 setTransformationMatrixBuffer:{*(a1 + 16), *(a1 + 24)}];
  if (objc_opt_respondsToSelector())
  {
    [v2 setTransformationMatrixLayout:*(a1 + 65)];
  }

  [v2 setTriangleCount:*(a1 + 48)];
  [v2 setVertexBuffer:{*(a1 + 32), *(a1 + 40)}];
  [v2 setVertexFormat:*(a1 + 66)];
  [v2 setVertexStride:*(a1 + 56)];

  return v2;
}

void *TranslateNestedGTMTLBlitPassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  v6 = [v5 sampleBuffer];
  a2[1] = [v6 streamReference];

  a2[2] = [v5 startOfEncoderSampleIndex];
  v7 = [v5 endOfEncoderSampleIndex];

  *a2 = v7;
  return a2;
}

id MakeNestedMTLBlitPassSampleBufferAttachmentDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2[1];
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  [v5 setSampleBuffer:v9];
  [v5 setStartOfEncoderSampleIndex:a2[2]];
  [v5 setEndOfEncoderSampleIndex:*a2];

  return v5;
}

_OWORD *TranslateGTMTLBlitPassDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 248);
  v7 = v6;
  *(a2 + 248) = v6 + 6;
  if (a3)
  {
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
  }

  for (i = 0; i != 4; ++i)
  {
    v9 = [v5 sampleBufferAttachments];
    v10 = [v9 objectAtIndexedSubscript:i];
    v11 = [v10 sampleBuffer];

    if (v11)
    {
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:i];
      v15 = v13;
      if (a3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 0;
      }

      TranslateNestedGTMTLBlitPassSampleBufferAttachmentDescriptor(v13, v16, v14, a3);
    }

    v7 += 3;
  }

  if (a3)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id MakeMTLBlitPassDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLBlitPassDescriptor);
  for (i = 0; i != 4; ++i)
  {
    if (a1[1])
    {
      v6 = [v4 sampleBufferAttachments];
      v7 = [v6 objectAtIndexedSubscript:i];
    }

    a1 += 3;
  }

  return v4;
}

void *TranslateNestedGTMTLComputePassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  v6 = [v5 sampleBuffer];
  a2[1] = [v6 streamReference];

  a2[2] = [v5 startOfEncoderSampleIndex];
  v7 = [v5 endOfEncoderSampleIndex];

  *a2 = v7;
  return a2;
}

id MakeNestedMTLComputePassSampleBufferAttachmentDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2[1];
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  [v5 setSampleBuffer:v9];
  [v5 setStartOfEncoderSampleIndex:a2[2]];
  [v5 setEndOfEncoderSampleIndex:*a2];

  return v5;
}

uint64_t TranslateGTMTLComputePassDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 256);
  *(a2 + 256) = v6 + 104;
  if (a3)
  {
    *(v6 + 96) = 0;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  v7 = v5;
  v8 = 0;
  v9 = v6;
  do
  {
    v10 = [v7 sampleBufferAttachments];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v12 = [v11 sampleBuffer];

    if (v12)
    {
      v13 = [v7 sampleBufferAttachments];
      v14 = [v13 objectAtIndexedSubscript:v8];
      v16 = v14;
      if (a3)
      {
        v17 = v9;
      }

      else
      {
        v17 = 0;
      }

      TranslateNestedGTMTLComputePassSampleBufferAttachmentDescriptor(v14, v17, v15, a3);
    }

    ++v8;
    v9 += 3;
  }

  while (v8 != 4);
  if (a3)
  {
    *(v6 + 96) = [v7 dispatchType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTLComputePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLComputePassDescriptor);
  [v4 setDispatchType:*(a1 + 96)];
  for (i = 0; i != 4; ++i)
  {
    if (*(a1 + 8))
    {
      v6 = [v4 sampleBufferAttachments];
      v7 = [v6 objectAtIndexedSubscript:i];
    }

    a1 += 24;
  }

  return v4;
}

void *TranslateNestedGTMTLResourceStatePassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  v6 = [v5 sampleBuffer];
  a2[1] = [v6 streamReference];

  a2[2] = [v5 startOfEncoderSampleIndex];
  v7 = [v5 endOfEncoderSampleIndex];

  *a2 = v7;
  return a2;
}

id MakeNestedMTLResourceStatePassSampleBufferAttachmentDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2[1];
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  [v5 setSampleBuffer:v9];
  [v5 setStartOfEncoderSampleIndex:a2[2]];
  [v5 setEndOfEncoderSampleIndex:*a2];

  return v5;
}

_OWORD *TranslateGTMTLResourceStatePassDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 264);
  v7 = v6;
  *(a2 + 264) = v6 + 6;
  if (a3)
  {
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
  }

  for (i = 0; i != 4; ++i)
  {
    v9 = [v5 sampleBufferAttachments];
    v10 = [v9 objectAtIndexedSubscript:i];
    v11 = [v10 sampleBuffer];

    if (v11)
    {
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:i];
      v15 = v13;
      if (a3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 0;
      }

      TranslateNestedGTMTLResourceStatePassSampleBufferAttachmentDescriptor(v13, v16, v14, a3);
    }

    v7 += 3;
  }

  if (a3)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id MakeMTLResourceStatePassDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLResourceStatePassDescriptor);
  for (i = 0; i != 4; ++i)
  {
    if (a1[1])
    {
      v6 = [v4 sampleBufferAttachments];
      v7 = [v6 objectAtIndexedSubscript:i];
    }

    a1 += 3;
  }

  return v4;
}

void *TranslateNestedGTMTLAccelerationStructurePassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  v6 = [v5 sampleBuffer];
  a2[1] = [v6 streamReference];

  a2[2] = [v5 startOfEncoderSampleIndex];
  v7 = [v5 endOfEncoderSampleIndex];

  *a2 = v7;
  return a2;
}

id MakeNestedMTLAccelerationStructurePassSampleBufferAttachmentDescriptor(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2[1];
  v7 = a3;
  v8 = [NSNumber numberWithUnsignedLongLong:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  [v5 setSampleBuffer:v9];
  [v5 setStartOfEncoderSampleIndex:a2[2]];
  [v5 setEndOfEncoderSampleIndex:*a2];

  return v5;
}

_OWORD *TranslateGTMTLAccelerationStructurePassDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 272);
  v7 = v6;
  *(a2 + 272) = v6 + 6;
  if (a3)
  {
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
  }

  for (i = 0; i != 4; ++i)
  {
    v9 = [v5 sampleBufferAttachments];
    v10 = [v9 objectAtIndexedSubscript:i];
    v11 = [v10 sampleBuffer];

    if (v11)
    {
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:i];
      v15 = v13;
      if (a3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 0;
      }

      TranslateNestedGTMTLAccelerationStructurePassSampleBufferAttachmentDescriptor(v13, v16, v14, a3);
    }

    v7 += 3;
  }

  if (a3)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id MakeMTLAccelerationStructurePassDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLAccelerationStructurePassDescriptor);
  for (i = 0; i != 4; ++i)
  {
    if (a1[1])
    {
      v6 = [v4 sampleBufferAttachments];
      v7 = [v6 objectAtIndexedSubscript:i];
    }

    a1 += 3;
  }

  return v4;
}

uint64_t TranslateGTMTLIntersectionFunctionTableDescriptor(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 88);
  *(a2 + 88) = v3 + 16;
  if (!a3)
  {
    return 0;
  }

  v4 = a1;
  *(v3 + 8) = [v4 functionCount];
  *v3 = [v4 resourceIndex];
  v5 = [v4 forceResourceIndex];

  *(v3 + 12) = v5;
  return v3;
}

id MakeMTLIntersectionFunctionTableDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLIntersectionFunctionTableDescriptor);
  [v2 setFunctionCount:*(a1 + 8)];

  return v2;
}

id MakeMTLIntersectionFunctionTableDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLIntersectionFunctionTableDescriptor);
  [v2 setFunctionCount:*(a1 + 8)];
  [v2 setForceResourceIndex:*a1 != 0];
  [v2 setResourceIndex:*a1];

  return v2;
}

uint64_t *TranslateGTMTLRenderPipelineFunctionsDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 96);
  *(a2 + 96) = v6 + 10;
  v7 = [v5 vertexAdditionalBinaryFunctions];
  v8 = TranslateNSArray(v7, a2, a3);

  v9 = [v5 fragmentAdditionalBinaryFunctions];
  v10 = TranslateNSArray(v9, a2, a3);

  v11 = [v5 tileAdditionalBinaryFunctions];
  v12 = TranslateNSArray(v11, a2, a3);

  v13 = [v5 meshAdditionalBinaryFunctions];
  v14 = TranslateNSArray(v13, a2, a3);

  v15 = [v5 objectAdditionalBinaryFunctions];
  v16 = TranslateNSArray(v15, a2, a3);

  if (a3)
  {
    v17 = [v5 vertexAdditionalBinaryFunctions];
    v6[9] = [v17 count];

    if (v6[9])
    {
      v18 = v8;
    }

    else
    {
      v18 = 0;
    }

    v6[8] = v18;
    v19 = [v5 fragmentAdditionalBinaryFunctions];
    v6[1] = [v19 count];

    if (v6[1])
    {
      v20 = v10;
    }

    else
    {
      v20 = 0;
    }

    *v6 = v20;
    v21 = [v5 tileAdditionalBinaryFunctions];
    v6[7] = [v21 count];

    if (v6[7])
    {
      v22 = v12;
    }

    else
    {
      v22 = 0;
    }

    v6[6] = v22;
    v23 = [v5 meshAdditionalBinaryFunctions];
    v6[3] = [v23 count];

    if (v6[3])
    {
      v24 = v14;
    }

    else
    {
      v24 = 0;
    }

    v6[2] = v24;
    v25 = [v5 objectAdditionalBinaryFunctions];
    v6[5] = [v25 count];

    if (v6[5])
    {
      v26 = v16;
    }

    else
    {
      v26 = 0;
    }

    v6[4] = v26;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTLRenderPipelineFunctionsDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLRenderPipelineFunctionsDescriptor);
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = CreateObjectArrayWithMap(*(a1 + 64), v5, v3);
    [v4 setVertexAdditionalBinaryFunctions:v6];
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*a1, v7, v3);
    [v4 setFragmentAdditionalBinaryFunctions:v8];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = CreateObjectArrayWithMap(*(a1 + 48), v9, v3);
    [v4 setTileAdditionalBinaryFunctions:v10];
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = CreateObjectArrayWithMap(*(a1 + 16), v11, v3);
    [v4 setMeshAdditionalBinaryFunctions:v12];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = CreateObjectArrayWithMap(*(a1 + 32), v13, v3);
    [v4 setObjectAdditionalBinaryFunctions:v14];
  }

  return v4;
}

uint64_t TranslateGTMTLAccelerationStructureAllocationDescriptor(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 104);
  *(a2 + 104) = v3 + 16;
  if (!a3)
  {
    return 0;
  }

  v4 = a1;
  *(v3 + 9) = [v4 storageMode];
  *(v3 + 8) = [v4 forceResourceIndex];
  v5 = [v4 resourceIndex];

  *v3 = v5;
  return v3;
}

id MakeMTLAccelerationStructureAllocationDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLAccelerationStructureAllocationDescriptor);
  [v2 setStorageMode:*(a1 + 9)];

  return v2;
}

id MakeMTLAccelerationStructureAllocationDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLAccelerationStructureAllocationDescriptor);
  [v2 setStorageMode:*(a1 + 9)];
  [v2 setForceResourceIndex:*a1 != 0];
  [v2 setResourceIndex:*a1];

  return v2;
}

uint64_t TranslateGTMTLIntersectionFunctionDescriptor(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3[35];
  a3[35] = v9 + 48;
  v10 = v7;
  v11 = [v10 name];
  v12 = [v11 UTF8String];
  v13 = v12;
  if (v12)
  {
    v14 = strlen(v12);
    v15 = a3 + 74;
    v16 = a3[74];
    v17 = v14 + 1;
    if (v14 != -1)
    {
      v18 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v15 = a3 + 74;
    v16 = a3[74];
  }

  v17 = 0;
  v18 = 0;
LABEL_6:
  *v15 = v16 + v17;
  if (a4)
  {
    memcpy(v18, v13, v17);
  }

  v19 = [v10 specializedName];
  v20 = [v19 UTF8String];
  v21 = v20;
  if (v20)
  {
    v22 = strlen(v20);
    v23 = a3 + 74;
    v24 = a3[74];
    v25 = v22 + 1;
    if (v22 != -1)
    {
      v26 = a3[74];
      goto LABEL_13;
    }
  }

  else
  {
    v23 = a3 + 74;
    v24 = a3[74];
  }

  v25 = 0;
  v26 = 0;
LABEL_13:
  *v23 = v24 + v25;
  if (a4)
  {
    memcpy(v26, v21, v25);
  }

  v27 = [v10 constantValues];

  if (!v27)
  {
    v28 = 0;
    if (a4)
    {
      goto LABEL_17;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v28 = a3[59];
  v29 = [v10 constantValues];
  TranslateGTMTLFunctionConstantValues(v29, v8, a3, a4);

  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_17:
  *(v9 + 40) = [v10 options];
  *(v9 + 32) = v26;
  *v9 = v28;
  *(v9 + 8) = v18;
LABEL_20:

  return v9;
}

id MakeMTLIntersectionFunctionDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTLIntersectionFunctionDescriptor);
  [v2 setOptions:*(a1 + 40)];
  if (*(a1 + 8))
  {
    v3 = [NSString stringWithUTF8String:?];
    [v2 setName:v3];
  }

  if (*(a1 + 32))
  {
    v4 = [NSString stringWithUTF8String:?];
    [v2 setSpecializedName:v4];
  }

  v5 = MakeMTLFunctionConstantValues(*a1);
  [v2 setConstantValues:v5];

  return v2;
}

uint64_t TranslateGTMTLResidencySetDescriptor(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(a2 + 112);
  *(a2 + 112) = v6 + 24;
  v7 = v5;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 16) = [v7 evictsImmediately];
    }

    if (objc_opt_respondsToSelector())
    {
      *v6 = [v7 initialCapacity];
    }

    *(v6 + 8) = v15;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id MakeMTLResidencySetDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTLResidencySetDescriptor);
  if (objc_opt_respondsToSelector())
  {
    [v2 setEvictsImmediately:*(a1 + 16) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInitialCapacity:*a1];
  }

  if (*(a1 + 8))
  {
    v3 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  return v2;
}

uint64_t TranslateGTMTL4ArgumentTableDescriptor(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(a2 + 120);
  *(a2 + 120) = v6 + 40;
  v7 = [v5 label];
  v8 = [v7 UTF8String];
  v9 = v8;
  if (v8)
  {
    v10 = strlen(v8);
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
    v13 = v10 + 1;
    if (v10 != -1)
    {
      v14 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  *v11 = v12 + v13;
  if (a3)
  {
    memcpy(v14, v9, v13);

    *(v6 + 32) = [v5 initializeBindings];
    *v6 = v14;
    *(v6 + 8) = [v5 maxBufferBindCount];
    *(v6 + 16) = [v5 maxSamplerStateBindCount];
    *(v6 + 24) = [v5 maxTextureBindCount];
    *(v6 + 33) = [v5 supportAttributeStrides];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id MakeMTL4ArgumentTableDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4ArgumentTableDescriptor);
  [v2 setInitializeBindings:*(a1 + 32) != 0];
  if (*a1)
  {
    v3 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  [v2 setMaxBufferBindCount:*(a1 + 8)];
  [v2 setMaxSamplerStateBindCount:*(a1 + 16)];
  [v2 setMaxTextureBindCount:*(a1 + 24)];
  [v2 setSupportAttributeStrides:*(a1 + 33) != 0];

  return v2;
}

uint64_t TranslateGTMTL4RenderPassDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 320);
  *(a2 + 320) = v6 + 640;
  if (a3)
  {
    bzero(v6, 0x280uLL);
  }

  v7 = v5;
  v8 = 0;
  v9 = v6;
  do
  {
    v10 = [v7 colorAttachments];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v12 = [v11 texture];

    if (v12)
    {
      v13 = [v7 colorAttachments];
      v14 = [v13 objectAtIndexedSubscript:v8];
      v16 = v14;
      if (a3)
      {
        v17 = v9;
      }

      else
      {
        v17 = 0;
      }

      TranslateNestedGTMTLRenderPassColorAttachmentDescriptor(v14, v17, v15, a3);
    }

    ++v8;
    v9 += 8;
  }

  while (v8 != 8);
  v18 = [v7 depthAttachment];
  TranslateNestedGTMTLRenderPassDepthAttachmentDescriptor(v18, v6 + 512, v19, a3);

  v20 = [v7 stencilAttachment];
  TranslateNestedGTMTLRenderPassStencilAttachmentDescriptor(v20, v6 + 560, v21, a3);

  if (a3)
  {
    *(v6 + 632) = [v7 defaultRasterSampleCount];
    *(v6 + 620) = [v7 imageblockSampleLength];
    v22 = [v7 rasterizationRateMap];
    *(v6 + 600) = [v22 streamReference];

    *(v6 + 622) = [v7 renderTargetArrayLength];
    *(v6 + 624) = [v7 renderTargetHeight];
    *(v6 + 626) = [v7 renderTargetWidth];
    *(v6 + 616) = [v7 threadgroupMemoryLength];
    *(v6 + 628) = [v7 tileHeight];
    *(v6 + 630) = [v7 tileWidth];
    v23 = [v7 visibilityResultBuffer];
    *(v6 + 608) = [v23 streamReference];

    *(v6 + 634) = [v7 visibilityResultType];
    *(v6 + 633) = [v7 supportColorAttachmentMapping];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTL4RenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4RenderPassDescriptor);
  v5 = 0;
  v6 = a1;
  do
  {
    if (*(v6 + 8))
    {
      v7 = [v4 colorAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
    }

    ++v5;
    v6 += 64;
  }

  while (v5 != 8);
  [v4 setDefaultRasterSampleCount:*(a1 + 632)];
  v9 = [v4 depthAttachment];

  [v4 setImageblockSampleLength:*(a1 + 620)];
  v10 = [NSNumber numberWithUnsignedLongLong:*(a1 + 600)];
  v11 = [v3 objectForKeyedSubscript:v10];
  [v4 setRasterizationRateMap:v11];

  [v4 setRenderTargetArrayLength:*(a1 + 622)];
  [v4 setRenderTargetHeight:*(a1 + 624)];
  [v4 setRenderTargetWidth:*(a1 + 626)];
  v12 = [v4 stencilAttachment];

  [v4 setThreadgroupMemoryLength:*(a1 + 616)];
  [v4 setTileHeight:*(a1 + 628)];
  [v4 setTileWidth:*(a1 + 630)];
  v13 = [NSNumber numberWithUnsignedLongLong:*(a1 + 608)];
  v14 = [v3 objectForKeyedSubscript:v13];
  [v4 setVisibilityResultBuffer:v14];

  [v4 setVisibilityResultType:*(a1 + 634)];
  [v4 setSupportColorAttachmentMapping:*(a1 + 633) != 0];

  return v4;
}

void *TranslateGTMTL4LibraryDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 128);
  *(a2 + 128) = v6 + 4;
  v7 = [v5 name];
  v8 = [v7 UTF8String];
  v9 = v8;
  if (v8)
  {
    v10 = strlen(v8);
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
    v13 = v10 + 1;
    if (v10 != -1)
    {
      v14 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  *v11 = v12 + v13;
  if (a3)
  {
    memcpy(v14, v9, v13);
  }

  v15 = [v5 options];

  if (v15)
  {
    v16 = [v5 options];
    v15 = TranslateGTMTLCompileOptions(v16, a2, a3);
  }

  if (a3)
  {
    v6[1] = v15;
  }

  v17 = [v5 source];
  v18 = [v17 UTF8String];
  v19 = v18;
  if (v18)
  {
    v20 = strlen(v18);
    v21 = (a2 + 592);
    v22 = *(a2 + 592);
    v23 = v20 + 1;
    if (v20 != -1)
    {
      v24 = *(a2 + 592);
      goto LABEL_17;
    }
  }

  else
  {
    v21 = (a2 + 592);
    v22 = *(a2 + 592);
  }

  v23 = 0;
  v24 = 0;
LABEL_17:
  *v21 = v22 + v23;
  if (a3)
  {
    memcpy(v24, v19, v23);

    *v6 = v14;
    v6[2] = v24;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id MakeMTL4LibraryDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4LibraryDescriptor);
  if (*a1)
  {
    v5 = [NSString stringWithUTF8String:?];
    [v4 setName:v5];
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = MakeMTLCompileOptions(v6, v3);
    [v4 setOptions:v7];
  }

  if (a1[2])
  {
    v8 = [NSString stringWithUTF8String:?];
    [v4 setSource:v8];
  }

  return v4;
}

_BYTE *TranslateGTMTL4PipelineDataSetSerializerDescriptor(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 136);
  *(a2 + 136) = v3 + 1;
  if (!a3)
  {
    return 0;
  }

  *v3 = [a1 configuration];
  return v3;
}

id MakeMTL4PipelineDataSetSerializerDescriptor(unsigned __int8 *a1)
{
  v2 = objc_alloc_init(MTL4PipelineDataSetSerializerDescriptor);
  [v2 setConfiguration:*a1];

  return v2;
}

void *TranslateNestedGTMTL4LibraryFunctionDescriptor(void *a1, void *a2, uint64_t a3, char a4)
{
  v7 = a1;
  v8 = [v7 name];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = *(a3 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a4)
  {
    memcpy(v15, v10, v14);

    v16 = [v7 library];
    *a2 = [v16 streamReference];

    a2[1] = v15;
  }

  else
  {

    a2 = 0;
  }

  return a2;
}

id MakeMTL4LibraryFunctionDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4LibraryFunctionDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:*a1];
  v6 = [v3 objectForKeyedSubscript:v5];

  [v4 setLibrary:v6];
  if (a1[1])
  {
    v7 = [NSString stringWithUTF8String:?];
    [v4 setName:v7];
  }

  return v4;
}

uint64_t TranslateNestedGTMTL4FunctionDescriptor(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      TranslateNestedGTMTL4SpecializedFunctionDescriptor(v7, a2, a3, a4);
      v8 = 1;
      if (!a4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = 0;
      if (!a4)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    *(a2 + 24) = v8;
    goto LABEL_9;
  }

  TranslateNestedGTMTL4LibraryFunctionDescriptor(v7, a2, a3, a4);
  v8 = 2;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  a2 = 0;
LABEL_9:

  return a2;
}

void *TranslateNestedGTMTL4SpecializedFunctionDescriptor(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 constantValues];

  if (v8)
  {
    v9 = a3[59];
    v10 = [v7 constantValues];
    TranslateGTMTLFunctionConstantValues(v10, 0, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  v11 = [v7 functionDescriptor];

  if (v11)
  {
    v11 = a3[58];
    a3[58] = v11 + 32;
    v12 = [v7 functionDescriptor];
    TranslateNestedGTMTL4FunctionDescriptor(v12, v11, a3, a4);
  }

  v13 = [v7 specializedName];
  v14 = [v13 UTF8String];
  v15 = v14;
  if (v14)
  {
    v16 = strlen(v14);
    v17 = a3 + 74;
    v18 = a3[74];
    v19 = v16 + 1;
    if (v16 != -1)
    {
      v20 = a3[74];
      goto LABEL_11;
    }
  }

  else
  {
    v17 = a3 + 74;
    v18 = a3[74];
  }

  v19 = 0;
  v20 = 0;
LABEL_11:
  *v17 = v18 + v19;
  if (a4)
  {
    memcpy(v20, v15, v19);

    *a2 = v9;
    a2[1] = v11;
    a2[2] = v20;
  }

  else
  {

    a2 = 0;
  }

  return a2;
}

id MakeMTL4FunctionDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 24);
  if (v4 == 1)
  {
    v5 = MakeMTL4SpecializedFunctionDescriptor(a1, v3);
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = MakeMTL4LibraryFunctionDescriptor(a1, v3);
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

id MakeMTL4SpecializedFunctionDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4SpecializedFunctionDescriptor);
  v5 = MakeMTLFunctionConstantValues(*a1);
  [v4 setConstantValues:v5];

  v6 = MakeMTL4FunctionDescriptor(*(a1 + 8), v3);

  [v4 setFunctionDescriptor:v6];
  if (*(a1 + 16))
  {
    v7 = [NSString stringWithUTF8String:?];
    [v4 setSpecializedName:v7];
  }

  return v4;
}

uint64_t *TranslateGTMTL4CompilerTaskOptions(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 144);
  *(a2 + 144) = v6 + 2;
  v7 = [v5 lookupArchives];
  v8 = TranslateNSArray(v7, a2, a3);

  if (a3)
  {
    v9 = [v5 lookupArchives];
    v6[1] = [v9 count];

    if (v6[1])
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTL4CompilerTaskOptions(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4CompilerTaskOptions);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = CreateObjectArrayWithMap(*a1, v5, v3);
    [v4 setLookupArchives:v6];
  }

  return v4;
}

uint64_t TranslateNestedGTMTL4PipelineOptions(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [v7 pluginData];
  v9 = GTMTLDescriptorAllocator_copyDictionary(a3, v8, a4);
  v11 = v10;

  if (a4)
  {
    *(a2 + 32) = [v7 enableAccelerationStructureViewerInstrumentation];
    *(a2 + 33) = [v7 enablePerformanceStatistics];
    *(a2 + 34) = [v7 enablePostMeshDump];
    *(a2 + 35) = [v7 enablePostVertexDump];
    *(a2 + 36) = [v7 enableResourcePatchingInstrumentation];
    *(a2 + 37) = [v7 enableResourceUsageInstrumentation];
    v12 = [v7 maxNumRegisters];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *a2 = v9;
    *(a2 + 38) = [v7 shaderReflection];
    *(a2 + 39) = [v7 shaderValidation];
    *(a2 + 24) = [v7 postVertexDumpBufferIndex];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeNestedMTL4PipelineOptions(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 setEnableAccelerationStructureViewerInstrumentation:*(a2 + 32) != 0];
  [v3 setEnablePerformanceStatistics:*(a2 + 33) != 0];
  [v3 setEnablePostMeshDump:*(a2 + 34) != 0];
  [v3 setEnablePostVertexDump:*(a2 + 35) != 0];
  [v3 setEnableResourcePatchingInstrumentation:*(a2 + 36) != 0];
  [v3 setEnableResourceUsageInstrumentation:*(a2 + 37) != 0];
  [v3 setMaxNumRegisters:*(a2 + 16)];
  v4 = GTData_MakeDictionary(*a2, *(a2 + 8));
  [v3 setPluginData:v4];

  [v3 setShaderReflection:*(a2 + 38)];
  [v3 setShaderValidation:*(a2 + 39)];
  [v3 setPostVertexDumpBufferIndex:*(a2 + 24)];

  return v3;
}

void *TranslateGTMTL4CompilerDescriptor(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(a2 + 152);
  *(a2 + 152) = v6 + 3;
  v7 = [v5 label];
  v8 = [v7 UTF8String];
  v9 = v8;
  if (v8)
  {
    v10 = strlen(v8);
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
    v13 = v10 + 1;
    if (v10 != -1)
    {
      v14 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  *v11 = v12 + v13;
  if (a3)
  {
    memcpy(v14, v9, v13);

    v15 = [v5 pipelineDataSetSerializer];
    v6[1] = [v15 streamReference];

    *v6 = v14;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id MakeMTL4CompilerDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4CompilerDescriptor);
  v5 = [NSNumber numberWithUnsignedLongLong:a1[1]];
  v6 = [v3 objectForKeyedSubscript:v5];

  [v4 setPipelineDataSetSerializer:v6];
  if (*a1)
  {
    v7 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v7];
  }

  return v4;
}

uint64_t TranslateNestedGTMTL4ComputePipelineDescriptor(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 computeFunctionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v8, a2, a3, a4);

  if (a4)
  {
    *(a2 + 56) = [v7 maxTotalThreadsPerThreadgroup];
    if (objc_opt_respondsToSelector())
    {
      if (v7)
      {
        [v7 requiredThreadsPerThreadgroup];
        v9 = v12;
        v10 = v13;
      }

      else
      {
        v10 = 0;
        v9 = 0uLL;
      }

      *(a2 + 32) = v9;
      *(a2 + 48) = v10;
    }

    *(a2 + 64) = [v7 supportBinaryLinking];
    *(a2 + 66) = [v7 threadGroupSizeIsMultipleOfThreadExecutionWidth];
    *(a2 + 65) = [v7 supportIndirectCommandBuffers];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTL4ComputePipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4ComputePipelineDescriptor);
  v5 = MakeMTL4FunctionDescriptor(a1, v3);

  [v4 setComputeFunctionDescriptor:v5];
  [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 56)];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = v6;
    [v4 setRequiredThreadsPerThreadgroup:&v8];
  }

  [v4 setSupportBinaryLinking:*(a1 + 64) != 0];
  [v4 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 66) != 0];
  [v4 setSupportIndirectCommandBuffers:*(a1 + 65)];

  return v4;
}

uint64_t TranslateNestedGTMTL4MachineLearningPipelineDescriptor(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = a3 + 74;
    v13 = a3[74];
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = a3 + 74;
    v13 = a3[74];
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a4)
  {
    memcpy(v15, v10, v14);

    v16 = [v7 machineLearningFunctionDescriptor];

    TranslateNestedGTMTL4FunctionDescriptor(v16, a2, a3, a4);
    *(a2 + 32) = v15;
  }

  else
  {

    v17 = [v7 machineLearningFunctionDescriptor];

    TranslateNestedGTMTL4FunctionDescriptor(v17, a2, a3, 0);
    return 0;
  }

  return a2;
}

id MakeMTL4MachineLearningPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4MachineLearningPipelineDescriptor);
  if (*(a1 + 32))
  {
    v5 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v5];
  }

  v6 = MakeMTL4FunctionDescriptor(a1, v3);
  [v4 setMachineLearningFunctionDescriptor:v6];

  return v4;
}

uint64_t TranslateNestedGTMTL4RenderPipelineColorAttachmentDescriptor(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a1;
  *(a2 + 2) = [v5 alphaBlendOperation];
  *(a2 + 3) = [v5 blendingState];
  *(a2 + 4) = [v5 destinationAlphaBlendFactor];
  *(a2 + 5) = [v5 destinationRGBBlendFactor];
  *a2 = [v5 pixelFormat];
  *(a2 + 6) = [v5 rgbBlendOperation];
  *(a2 + 7) = [v5 sourceAlphaBlendFactor];
  *(a2 + 8) = [v5 sourceRGBBlendFactor];
  v6 = [v5 writeMask];

  *(a2 + 9) = v6;
  return a2;
}

id MakeNestedMTL4RenderPipelineColorAttachmentDescriptor(void *a1, unsigned __int16 *a2)
{
  v3 = a1;
  [v3 setAlphaBlendOperation:*(a2 + 2)];
  [v3 setBlendingState:*(a2 + 3)];
  [v3 setDestinationAlphaBlendFactor:*(a2 + 4)];
  [v3 setDestinationRGBBlendFactor:*(a2 + 5)];
  [v3 setPixelFormat:*a2];
  [v3 setRgbBlendOperation:*(a2 + 6)];
  [v3 setSourceAlphaBlendFactor:*(a2 + 7)];
  [v3 setSourceRGBBlendFactor:*(a2 + 8)];
  [v3 setWriteMask:*(a2 + 9)];

  return v3;
}

uint64_t TranslateNestedGTMTL4RenderPipelineDescriptor(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = 0;
  v9 = a2 + 744;
  do
  {
    v10 = [v7 colorAttachments];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v13 = v11;
    if (a4)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    TranslateNestedGTMTL4RenderPipelineColorAttachmentDescriptor(v11, v14, v12, a4);

    ++v8;
    v9 += 16;
  }

  while (v8 != 8);
  v15 = [v7 fragmentFunctionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v15, a2 + 872, a3, a4);

  v16 = [v7 vertexDescriptor];
  TranslateNestedGTMTLVertexDescriptor(v16, a2, v17, a4);

  v18 = [v7 vertexFunctionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v18, a2 + 904, a3, a4);

  if (a4)
  {
    *(a2 + 960) = [v7 alphaToCoverageState];
    *(a2 + 961) = [v7 alphaToOneState];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 936) = [v7 colorSampleCount];
    }

    *(a2 + 963) = [v7 inputPrimitiveTopology];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 944) = [v7 maxVertexAmplificationCount];
    }

    *(a2 + 952) = [v7 rasterSampleCount];
    *(a2 + 964) = [v7 isRasterizationEnabled];
    *(a2 + 965) = [v7 supportFragmentBinaryLinking];
    *(a2 + 967) = [v7 supportVertexBinaryLinking];
    *(a2 + 966) = [v7 supportIndirectCommandBuffers];
    *(a2 + 962) = [v7 colorAttachmentMappingState];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTL4RenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4RenderPipelineDescriptor);
  [v4 setAlphaToCoverageState:*(a1 + 960)];
  [v4 setAlphaToOneState:*(a1 + 961)];
  v5 = 0;
  v6 = (a1 + 744);
  do
  {
    v7 = [v4 colorAttachments];
    v8 = [v7 objectAtIndexedSubscript:v5];

    ++v5;
    v6 += 8;
  }

  while (v5 != 8);
  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 936)];
  }

  v9 = MakeMTL4FunctionDescriptor(a1 + 872, v3);
  [v4 setFragmentFunctionDescriptor:v9];

  [v4 setInputPrimitiveTopology:*(a1 + 963)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 944)];
  }

  [v4 setRasterSampleCount:*(a1 + 952)];
  [v4 setRasterizationEnabled:*(a1 + 964) != 0];
  [v4 setSupportFragmentBinaryLinking:*(a1 + 965) != 0];
  [v4 setSupportVertexBinaryLinking:*(a1 + 967) != 0];
  v10 = objc_opt_new();
  [v4 setVertexDescriptor:v10];

  v11 = [v4 vertexDescriptor];

  v12 = MakeMTL4FunctionDescriptor(a1 + 904, v3);
  [v4 setVertexFunctionDescriptor:v12];

  [v4 setSupportIndirectCommandBuffers:*(a1 + 966)];
  [v4 setColorAttachmentMappingState:*(a1 + 962)];

  return v4;
}

uint64_t TranslateNestedGTMTL4MeshRenderPipelineDescriptor(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = 0;
  v9 = a2;
  do
  {
    v10 = [v7 colorAttachments];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v13 = v11;
    if (a4)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    TranslateNestedGTMTL4RenderPipelineColorAttachmentDescriptor(v11, v14, v12, a4);

    ++v8;
    v9 += 16;
  }

  while (v8 != 8);
  v15 = [v7 fragmentFunctionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v15, a2 + 128, a3, a4);

  v16 = [v7 meshFunctionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v16, a2 + 160, a3, a4);

  v17 = [v7 objectFunctionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v17, a2 + 192, a3, a4);

  if (a4)
  {
    *(a2 + 328) = [v7 alphaToCoverageState];
    *(a2 + 329) = [v7 alphaToOneState];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 272) = [v7 colorSampleCount];
    }

    *(a2 + 280) = [v7 maxTotalThreadgroupsPerMeshGrid];
    *(a2 + 288) = [v7 maxTotalThreadsPerMeshThreadgroup];
    *(a2 + 296) = [v7 maxTotalThreadsPerObjectThreadgroup];
    if (objc_opt_respondsToSelector())
    {
      *(a2 + 304) = [v7 maxVertexAmplificationCount];
    }

    *(a2 + 331) = [v7 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    *(a2 + 332) = [v7 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    *(a2 + 312) = [v7 payloadMemoryLength];
    *(a2 + 320) = [v7 rasterSampleCount];
    *(a2 + 333) = [v7 isRasterizationEnabled];
    if (objc_opt_respondsToSelector())
    {
      if (v7)
      {
        [v7 requiredThreadsPerMeshThreadgroup];
        v18 = v23;
        v19 = v24;
      }

      else
      {
        v19 = 0;
        v18 = 0uLL;
      }

      *(a2 + 224) = v18;
      *(a2 + 240) = v19;
    }

    if (objc_opt_respondsToSelector())
    {
      if (v7)
      {
        [v7 requiredThreadsPerObjectThreadgroup];
        v20 = v23;
        v21 = v24;
      }

      else
      {
        v21 = 0;
        v20 = 0uLL;
      }

      *(a2 + 248) = v20;
      *(a2 + 264) = v21;
    }

    *(a2 + 334) = [v7 supportFragmentBinaryLinking];
    *(a2 + 336) = [v7 supportMeshBinaryLinking];
    *(a2 + 337) = [v7 supportObjectBinaryLinking];
    *(a2 + 335) = [v7 supportIndirectCommandBuffers];
    *(a2 + 330) = [v7 colorAttachmentMappingState];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTL4MeshRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4MeshRenderPipelineDescriptor);
  [v4 setAlphaToCoverageState:*(a1 + 328)];
  [v4 setAlphaToOneState:*(a1 + 329)];
  v5 = 0;
  v6 = a1;
  do
  {
    v7 = [v4 colorAttachments];
    v8 = [v7 objectAtIndexedSubscript:v5];

    ++v5;
    v6 += 8;
  }

  while (v5 != 8);
  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 272)];
  }

  v9 = MakeMTL4FunctionDescriptor(a1 + 128, v3);
  [v4 setFragmentFunctionDescriptor:v9];

  [v4 setMaxTotalThreadgroupsPerMeshGrid:*(a1 + 280)];
  [v4 setMaxTotalThreadsPerMeshThreadgroup:*(a1 + 288)];
  [v4 setMaxTotalThreadsPerObjectThreadgroup:*(a1 + 296)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 304)];
  }

  v10 = MakeMTL4FunctionDescriptor(a1 + 160, v3);
  [v4 setMeshFunctionDescriptor:v10];

  [v4 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 331) != 0];
  v11 = MakeMTL4FunctionDescriptor(a1 + 192, v3);
  [v4 setObjectFunctionDescriptor:v11];

  [v4 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 332) != 0];
  [v4 setPayloadMemoryLength:*(a1 + 312)];
  [v4 setRasterSampleCount:*(a1 + 320)];
  [v4 setRasterizationEnabled:*(a1 + 333) != 0];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 240);
    v15 = *(a1 + 224);
    v16 = v12;
    [v4 setRequiredThreadsPerMeshThreadgroup:&v15];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = *(a1 + 264);
    v15 = *(a1 + 248);
    v16 = v13;
    [v4 setRequiredThreadsPerObjectThreadgroup:&v15];
  }

  [v4 setSupportFragmentBinaryLinking:*(a1 + 334) != 0];
  [v4 setSupportMeshBinaryLinking:*(a1 + 336) != 0];
  [v4 setSupportObjectBinaryLinking:*(a1 + 337) != 0];
  [v4 setSupportIndirectCommandBuffers:*(a1 + 335)];
  [v4 setColorAttachmentMappingState:*(a1 + 330)];

  return v4;
}

uint64_t TranslateNestedGTMTL4TileRenderPipelineDescriptor(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  for (i = 0; i != 8; ++i)
  {
    v9 = [v7 colorAttachments];
    v10 = [v9 objectAtIndexedSubscript:i];
    v11 = v10;
    if (a4)
    {
      *(a2 + 2 * i + 56) = [v10 pixelFormat];
    }
  }

  v12 = [v7 tileFunctionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v12, a2, a3, a4);

  if (a4)
  {
    *(a2 + 72) = [v7 maxTotalThreadsPerThreadgroup];
    *(a2 + 80) = [v7 rasterSampleCount];
    if (objc_opt_respondsToSelector())
    {
      if (v7)
      {
        [v7 requiredThreadsPerThreadgroup];
        v13 = v16;
        v14 = v17;
      }

      else
      {
        v14 = 0;
        v13 = 0uLL;
      }

      *(a2 + 32) = v13;
      *(a2 + 48) = v14;
    }

    *(a2 + 88) = [v7 supportBinaryLinking];
    *(a2 + 89) = [v7 threadgroupSizeMatchesTileSize];
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

id MakeMTL4TileRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4TileRenderPipelineDescriptor);
  for (i = 0; i != 8; ++i)
  {
    v6 = [v4 colorAttachments];
    v7 = [v6 objectAtIndexedSubscript:i];
    [v7 setPixelFormat:*(a1 + 2 * i + 56)];
  }

  [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 72)];
  [v4 setRasterSampleCount:*(a1 + 80)];
  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = v8;
    [v4 setRequiredThreadsPerThreadgroup:&v11];
  }

  [v4 setSupportBinaryLinking:*(a1 + 88) != 0];
  [v4 setThreadgroupSizeMatchesTileSize:*(a1 + 89) != 0];
  v9 = MakeMTL4FunctionDescriptor(a1, v3);
  [v4 setTileFunctionDescriptor:v9];

  return v4;
}

uint64_t TranslateGTMTL4PipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2[42];
  a2[42] = v6 + 1024;
  v7 = v5;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = a2 + 74;
    v13 = a2[74];
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = a2[74];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = a2 + 74;
    v13 = a2[74];
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);
  }

  v16 = [v7 options];
  TranslateNestedGTMTL4PipelineOptions(v16, v6 + 968, a2, a3);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TranslateNestedGTMTL4ComputePipelineDescriptor(v7, v6, a2, a3);
    v17 = 1;
    if (a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      TranslateNestedGTMTL4MachineLearningPipelineDescriptor(v7, v6, a2, a3);
      v17 = 3;
      if (a3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        TranslateNestedGTMTL4MeshRenderPipelineDescriptor(v7, v6, a2, a3);
        v17 = 4;
        if (a3)
        {
          goto LABEL_24;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            TranslateNestedGTMTL4TileRenderPipelineDescriptor(v7, v6, a2, a3);
            v17 = 5;
            if (!a3)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v17 = 0;
            if (!a3)
            {
              goto LABEL_22;
            }
          }

LABEL_24:
          *(v6 + 1008) = v15;
          *(v6 + 1016) = v17;
          goto LABEL_25;
        }

        TranslateNestedGTMTL4RenderPipelineDescriptor(v7, v6, a2, a3);
        v17 = 2;
        if (a3)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_22:
  v6 = 0;
LABEL_25:

  return v6;
}

id MakeMTL4PipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = *(a1 + 1016);
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = MakeMTL4ComputePipelineDescriptor(a1, v3);
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_13;
      }

      v6 = MakeMTL4RenderPipelineDescriptor(a1, v3);
    }
  }

  else
  {
    switch(v5)
    {
      case 3u:
        v6 = MakeMTL4MachineLearningPipelineDescriptor(a1, v3);
        break;
      case 4u:
        v6 = MakeMTL4MeshRenderPipelineDescriptor(a1, v3);
        break;
      case 5u:
        v6 = MakeMTL4TileRenderPipelineDescriptor(a1, v3);
        break;
      default:
        goto LABEL_13;
    }
  }

  v4 = v6;
LABEL_13:
  if (*(a1 + 1008))
  {
    v7 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v7];
  }

  v8 = [v4 options];

  return v4;
}

uint64_t TranslateGTMTLTensorDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 160);
  *(a2 + 160) = v6 + 288;
  v7 = v5;
  v8 = v7;
  if (a3)
  {
    *(v6 + 283) = [v7 dataType];
    v9 = [v8 dimensions];
    MakeGTMTLTensorExtents(v9, &v20);
    v10 = v27;
    *(v6 + 96) = v26;
    *(v6 + 112) = v10;
    *(v6 + 128) = v28;
    v11 = v23;
    *(v6 + 32) = v22;
    *(v6 + 48) = v11;
    v12 = v25;
    *(v6 + 64) = v24;
    *(v6 + 80) = v12;
    v13 = v21;
    *v6 = v20;
    *(v6 + 16) = v13;

    *(v6 + 287) = [v8 usage];
    *(v6 + 284) = [v8 forceResourceIndex];
    *(v6 + 272) = [v8 resourceIndex];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 282) = [v8 cpuCacheMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 285) = [v8 hazardTrackingMode];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 280) = [v8 resourceOptions];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 286) = [v8 storageMode];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v8 strides];
      MakeGTMTLTensorExtents(v14, &v20);
      v15 = v24;
      *(v6 + 216) = v25;
      v16 = v27;
      *(v6 + 232) = v26;
      *(v6 + 248) = v16;
      v17 = v20;
      *(v6 + 152) = v21;
      v18 = v23;
      *(v6 + 168) = v22;
      *(v6 + 184) = v18;
      *(v6 + 200) = v15;
      *(v6 + 264) = v28;
      *(v6 + 136) = v17;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeMTLTensorDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MTLTensorDescriptor);
  [v2 setDataType:*(a1 + 283)];
  v3 = *(a1 + 112);
  *&v16[96] = *(a1 + 96);
  *&v16[112] = v3;
  *&v16[128] = *(a1 + 128);
  v4 = *(a1 + 48);
  *&v16[32] = *(a1 + 32);
  *&v16[48] = v4;
  v5 = *(a1 + 80);
  *&v16[64] = *(a1 + 64);
  *&v16[80] = v5;
  v6 = *(a1 + 16);
  *v16 = *a1;
  *&v16[16] = v6;
  v7 = MakeMTLTensorExtents(v16);
  [v2 setDimensions:v7];

  [v2 setUsage:*(a1 + 287)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setCpuCacheMode:*(a1 + 282)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setHazardTrackingMode:*(a1 + 285)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setResourceOptions:*(a1 + 280)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setStorageMode:*(a1 + 286)];
  }

  v8 = *(a1 + 136);
  v9 = *(a1 + 224);
  v21 = *(a1 + 208);
  v22 = v9;
  v10 = *(a1 + 256);
  v23 = *(a1 + 240);
  v24 = v10;
  v11 = *(a1 + 160);
  v17 = *(a1 + 144);
  v18 = v11;
  v12 = *(a1 + 192);
  v19 = *(a1 + 176);
  v20 = v12;
  v13 = v2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && v8)
  {
    *&v16[72] = v21;
    *&v16[88] = v22;
    *&v16[104] = v23;
    *&v16[120] = v24;
    *&v16[8] = v17;
    *&v16[24] = v18;
    *&v16[40] = v19;
    *v16 = v8;
    *&v16[56] = v20;
    v14 = MakeMTLTensorExtents(v16);
    [v13 setStrides:v14];
  }

  return v13;
}

id MakeMTLTensorDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLTensorDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 272) != 0];
  [v2 setResourceIndex:*(a1 + 272)];

  return v2;
}

uint64_t TranslateGTMTLResourceViewPoolDescriptor(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(a2 + 168);
  *(a2 + 168) = v6 + 32;
  v7 = [v5 label];
  v8 = [v7 UTF8String];
  v9 = v8;
  if (v8)
  {
    v10 = strlen(v8);
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
    v13 = v10 + 1;
    if (v10 != -1)
    {
      v14 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  *v11 = v12 + v13;
  if (a3)
  {
    memcpy(v14, v9, v13);

    *(v6 + 8) = v14;
    *(v6 + 16) = [v5 resourceViewCount];
    *v6 = [v5 baseResourceID];
    *(v6 + 24) = [v5 forceBaseResourceID];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id MakeMTLResourceViewPoolDescriptorWithoutBaseResourceID(uint64_t a1)
{
  v2 = objc_alloc_init(MTLResourceViewPoolDescriptor);
  if (*(a1 + 8))
  {
    v3 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  [v2 setResourceViewCount:*(a1 + 16)];

  return v2;
}

id MakeMTLResourceViewPoolDescriptorWithBaseResourceID(void *a1)
{
  v2 = MakeMTLResourceViewPoolDescriptorWithoutBaseResourceID(a1);
  [v2 setForceBaseResourceID:*a1 != 0];
  [v2 setBaseResourceID:*a1];

  return v2;
}

uint64_t TranslateGTMTLTextureViewDescriptor(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 176);
  *(a2 + 176) = v3 + 40;
  if (!a3)
  {
    return 0;
  }

  TranslateGTMTLTextureViewDescriptorDirectly(a1, v3);
  return v3;
}

uint64_t TranslateGTMTLTextureViewDescriptorDirectly(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = [v3 levelRange];
  *(a2 + 8) = v4;
  *(a2 + 36) = [v3 pixelFormat];
  *(a2 + 16) = [v3 sliceRange];
  *(a2 + 24) = v5;
  *(a2 + 38) = [v3 textureType];
  [v3 swizzle];

  *(a2 + 32) = MTLTextureSwizzleChannelsToKey();
  return a2;
}

id MakeMTLTextureViewDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTLTextureViewDescriptor);
  [v2 setLevelRange:{*a1, *(a1 + 8)}];
  [v2 setPixelFormat:*(a1 + 36)];
  [v2 setSliceRange:{*(a1 + 16), *(a1 + 24)}];
  [v2 setTextureType:*(a1 + 38)];
  v3 = *(a1 + 32);
  [v2 setSwizzle:MTLTextureSwizzleKeyToChannels()];

  return v2;
}

uint64_t TranslateGTMTL4CommandQueueDescriptor(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(a2 + 184);
  *(a2 + 184) = v6 + 16;
  v7 = v5;
  v8 = [v7 label];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = (a2 + 592);
    v13 = *(a2 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);

    *v6 = v15;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 8) = [v7 supportMTLEvent];
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

id MakeMTL4CommandQueueDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTL4CommandQueueDescriptor);
  if (*a1)
  {
    v3 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSupportMTLEvent:*(a1 + 8) != 0];
  }

  return v2;
}

uint64_t TranslateGTMTL4BinaryFunctionDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[41];
  a2[41] = v5 + 80;
  v6 = a1;
  v7 = [v6 functionDescriptor];
  TranslateNestedGTMTL4FunctionDescriptor(v7, v5 + 40, a2, a3);

  v8 = [v6 name];
  v9 = [v8 UTF8String];
  v10 = v9;
  if (v9)
  {
    v11 = strlen(v9);
    v12 = a2 + 74;
    v13 = a2[74];
    v14 = v11 + 1;
    if (v11 != -1)
    {
      v15 = a2[74];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = a2 + 74;
    v13 = a2[74];
  }

  v14 = 0;
  v15 = 0;
LABEL_6:
  *v12 = v13 + v14;
  if (a3)
  {
    memcpy(v15, v10, v14);

    v16 = [v6 pipelineOptions];

    TranslateNestedGTMTL4PipelineOptions(v16, v5, a2, a3);
    *(v5 + 72) = v15;
  }

  else
  {

    v17 = [v6 pipelineOptions];

    TranslateNestedGTMTL4PipelineOptions(v17, v5, a2, 0);
    return 0;
  }

  return v5;
}

id MakeMTL4BinaryFunctionDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4BinaryFunctionDescriptor);
  v5 = MakeMTL4FunctionDescriptor(a1 + 40, v3);

  [v4 setFunctionDescriptor:v5];
  if (*(a1 + 72))
  {
    v6 = [NSString stringWithUTF8String:?];
    [v4 setName:v6];
  }

  v7 = [v4 pipelineOptions];

  return v4;
}

uint64_t *TranslateNestedGTMTL4PipelineStageDynamicLinkingDescriptor(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = [v7 binaryLinkedFunctions];
  v9 = TranslateNSArray(v8, a3, a4);

  v10 = [v7 preloadedLibraries];
  v11 = TranslateNSArray(v10, a3, a4);

  if (a4)
  {
    v12 = [v7 binaryLinkedFunctions];
    a2[1] = [v12 count];

    if (a2[1])
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    *a2 = v13;
    a2[2] = [v7 maxCallStackDepth];
    v14 = [v7 preloadedLibraries];
    a2[4] = [v14 count];

    if (a2[4])
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    a2[3] = v15;
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

uint64_t *TranslateGTMTL4PipelineStageDynamicLinkingDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 192);
  *(a2 + 192) = v6 + 5;
  v7 = [v5 binaryLinkedFunctions];
  v8 = TranslateNSArray(v7, a2, a3);

  v9 = [v5 preloadedLibraries];
  v10 = TranslateNSArray(v9, a2, a3);

  if (a3)
  {
    v11 = [v5 binaryLinkedFunctions];
    v6[1] = [v11 count];

    if (v6[1])
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    *v6 = v12;
    v6[2] = [v5 maxCallStackDepth];
    v13 = [v5 preloadedLibraries];
    v6[4] = [v13 count];

    if (v6[4])
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    v6[3] = v14;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id MakeNestedMTL4PipelineStageDynamicLinkingDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*a2, v7, v6);
    [v5 setBinaryLinkedFunctions:v8];
  }

  [v5 setMaxCallStackDepth:*(a2 + 16)];
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = CreateObjectArrayWithMap(*(a2 + 24), v9, v6);
    [v5 setPreloadedLibraries:v10];
  }

  return v5;
}

id MakeMTL4PipelineStageDynamicLinkingDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4PipelineStageDynamicLinkingDescriptor);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = CreateObjectArrayWithMap(*a1, v5, v3);
    [v4 setBinaryLinkedFunctions:v6];
  }

  [v4 setMaxCallStackDepth:*(a1 + 16)];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*(a1 + 24), v7, v3);
    [v4 setPreloadedLibraries:v8];
  }

  return v4;
}

uint64_t *TranslateGTMTL4RenderPipelineDynamicLinkingDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 288);
  *(a2 + 288) = v5 + 25;
  v6 = a1;
  v7 = [v6 fragmentLinkingDescriptor];
  TranslateNestedGTMTL4PipelineStageDynamicLinkingDescriptor(v7, v5, a2, a3);

  v8 = [v6 meshLinkingDescriptor];
  TranslateNestedGTMTL4PipelineStageDynamicLinkingDescriptor(v8, v5 + 5, a2, a3);

  v9 = [v6 objectLinkingDescriptor];
  TranslateNestedGTMTL4PipelineStageDynamicLinkingDescriptor(v9, v5 + 10, a2, a3);

  v10 = [v6 tileLinkingDescriptor];
  TranslateNestedGTMTL4PipelineStageDynamicLinkingDescriptor(v10, v5 + 15, a2, a3);

  v11 = [v6 vertexLinkingDescriptor];

  TranslateNestedGTMTL4PipelineStageDynamicLinkingDescriptor(v11, v5 + 20, a2, a3);
  if (a3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

id MakeMTL4RenderPipelineDynamicLinkingDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4RenderPipelineDynamicLinkingDescriptor);
  v5 = [v4 fragmentLinkingDescriptor];

  v6 = [v4 meshLinkingDescriptor];

  v7 = [v4 objectLinkingDescriptor];

  v8 = [v4 tileLinkingDescriptor];

  v9 = [v4 vertexLinkingDescriptor];

  return v4;
}

void *TranslateGTMTL4CommandAllocatorDescriptor(void *a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 200);
  *(a2 + 200) = v5 + 1;
  v6 = [a1 label];
  v7 = [v6 UTF8String];
  v8 = v7;
  if (v7)
  {
    v9 = strlen(v7);
    v10 = (a2 + 592);
    v11 = *(a2 + 592);
    v12 = v9 + 1;
    if (v9 != -1)
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
    memcpy(v13, v8, v12);

    *v5 = v13;
  }

  else
  {

    return 0;
  }

  return v5;
}

id MakeMTL4CommandAllocatorDescriptor(void *a1)
{
  v2 = objc_alloc_init(MTL4CommandAllocatorDescriptor);
  if (*a1)
  {
    v3 = [NSString stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  return v2;
}

uint64_t TranslateGTMTL4AccelerationStructureDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 344);
  *(a2 + 344) = v6 + 96;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TranslateNestedGTMTL4IndirectInstanceAccelerationStructureDescriptor(v7, v6, v8, a3);
    v9 = 7;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        TranslateNestedGTMTL4PrimitiveAccelerationStructureDescriptor(v7, v6, a2, a3);
        v9 = 5;
        if (!a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = 0;
        if (!a3)
        {
          goto LABEL_9;
        }
      }

LABEL_11:
      *(v6 + 88) = v9;
      goto LABEL_12;
    }

    TranslateNestedGTMTL4InstanceAccelerationStructureDescriptor(v7, v6, v10, a3);
    v9 = 6;
    if (a3)
    {
      goto LABEL_11;
    }
  }

LABEL_9:
  v6 = 0;
LABEL_12:

  return v6;
}

void *TranslateGTMTL4CommandBufferOptions(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 208);
  *(a2 + 208) = v3 + 1;
  if (!a3)
  {
    return 0;
  }

  v4 = [a1 logState];
  *v3 = [v4 streamReference];

  return v3;
}

id MakeMTL4CommandBufferOptions(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTL4CommandBufferOptions);
  v5 = [NSNumber numberWithUnsignedLongLong:*a1];
  v6 = [v3 objectForKeyedSubscript:v5];

  [v4 setLogState:v6];

  return v4;
}

uint64_t MakeGTMTLTextureDescriptor(uint64_t a1, void *a2)
{
  *a1 = GTMTLTextureDescriptorDefaults;
  *(a1 + 16) = unk_29CCD8;
  *(a1 + 32) = xmmword_29CCE8;
  *(a1 + 48) = 512;
  return TranslateGTMTLTextureDescriptorDirectly(a2, a1);
}

id MakeMTLTextureDescriptorFromTextureWithResourceIndex(void *a1)
{
  v1 = a1;
  v2 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v1);
  v3 = DEVICEOBJECT(v1);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [v1 resourceIndex];
    [v2 setResourceIndex:v5];
    [v2 setForceResourceIndex:v5 != _MTLInvalidResourceIndex];
  }

  return v2;
}

id MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MTLTextureDescriptor);
  [v2 setTextureType:{objc_msgSend(v1, "textureType")}];
  [v2 setPixelFormat:objc_msgSend(v1, "pixelFormat")];
  [v2 setUsage:{objc_msgSend(v1, "usage")}];
  [v2 setWidth:{objc_msgSend(v1, "width")}];
  [v2 setHeight:{objc_msgSend(v1, "height")}];
  [v2 setDepth:{objc_msgSend(v1, "depth")}];
  [v2 setArrayLength:{objc_msgSend(v1, "arrayLength")}];
  [v2 setStorageMode:{objc_msgSend(v1, "storageMode")}];
  [v2 setSampleCount:{objc_msgSend(v1, "sampleCount")}];
  [v2 setCpuCacheMode:{objc_msgSend(v1, "cpuCacheMode")}];
  [v2 setMipmapLevelCount:{objc_msgSend(v1, "mipmapLevelCount")}];
  if (objc_opt_respondsToSelector())
  {
    [v2 setHazardTrackingMode:{objc_msgSend(v1, "hazardTrackingMode")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setAllowGPUOptimizedContents:{objc_msgSend(v1, "allowGPUOptimizedContents")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSwizzle:{objc_msgSend(v1, "swizzle")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setSwizzleKey:{objc_msgSend(v1, "swizzleKey")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setRotation:{objc_msgSend(v1, "rotation")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setSparseSurfaceDefaultValue:{objc_msgSend(v1, "sparseSurfaceDefaultValue")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setCompressionType:{objc_msgSend(v1, "compressionType")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setCompressionFootprint:{objc_msgSend(v1, "compressionFootprint")}];
  }

  return v2;
}

void MakeGTMTLSamplerDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 label];
  v5 = [v4 UTF8String];

  if (v5)
  {
    v5 = (strlen(v5) + 1);
  }

  bzero(v9, 0x250uLL);
  v9[2] = a1;
  __chkstk_darwin(v6, v7);
  bzero(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v9[74] = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TranslateGTMTLSamplerDescriptor(v3, v9, 1);
  v8 = [v3 label];

  *a1 = [v8 UTF8String];
}

void MakeGTMTLIndirectCommandBufferDescriptorFromIndirectCommandBuffer(uint64_t a1, void *a2)
{
  v3 = a2;
  v37 = 0;
  [v3 getHeader:&v37 headerSize:0];
  v4 = DEVICEOBJECT(v3);
  v5 = objc_opt_respondsToSelector();

  v6 = 0;
  if (v5)
  {
    v6 = [v3 resourceIndex];
  }

  v7 = *(v37 + 8);
  v8 = *(v37 + 13);
  v9 = *(v37 + 12);
  v35 = *(v37 + 16);
  v36 = *(v37 + 15);
  v10 = *(v37 + 18);
  v33 = *(v37 + 17);
  v34 = *(v37 + 21);
  v31 = *(v37 + 23);
  v32 = *(v37 + 22);
  v29 = *(v37 + 24);
  v30 = *(v37 + 14);
  LODWORD(v26) = *(v37 + 19);
  HIDWORD(v26) = *(v37 + 20);
  v11 = [v3 device];
  v12 = DEVICEOBJECT(v11);
  v13 = [v12 supportsMeshShadersInICB];

  v14 = [v3 device];
  LODWORD(v12) = [v14 supportsFamily:1010];

  if (v12)
  {
    v15 = *(v37 + 25);
    v16 = *(v37 + 28);
    v17 = *(v37 + 29);
    v18 = *(v37 + 30);
    v19 = *(v37 + 31);
    v20 = *(v37 + 26);
    v21 = *(v37 + 27);
    v22 = *(v37 + 32);
    v23 = *(v37 + 33);
    v24 = *(v37 + 34);
    v25 = *(v37 + 35);
  }

  else
  {
    v25 = 1;
    v17 = 1;
    v20 = 1;
    v16 = 1;
    v15 = 1;
    v22 = 1;
    v18 = 1;
    v23 = 1;
    v21 = 1;
    v19 = 1;
    v24 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 18) = v25;
  *(a1 + 19) = v8;
  *(a1 + 20) = v17;
  *(a1 + 21) = v20;
  *(a1 + 22) = v16;
  *(a1 + 23) = v15;
  *(a1 + 24) = v22;
  *(a1 + 25) = v18;
  *(a1 + 26) = v9;
  *(a1 + 27) = v23;
  *(a1 + 28) = v21;
  *(a1 + 29) = v19;
  *(a1 + 30) = v24;
  *(a1 + 31) = v36;
  *(a1 + 32) = v35;
  *(a1 + 33) = v34;
  *(a1 + 34) = v10;
  *(a1 + 35) = v33;
  *(a1 + 36) = v32;
  *(a1 + 37) = v31;
  *(a1 + 38) = v30;
  *(a1 + 39) = v29;
  *(a1 + 40) = v28;
  *(a1 + 41) = v27;
  *(a1 + 42) = v13;
  *(a1 + 47) = 0;
  *(a1 + 43) = 0;
}

void TranslateGTMTLIndirectCommandBufferDescriptorWithDevice(void *a1, void *a2, uint64_t a3, int a4)
{
  v12 = a1;
  v7 = a2;
  v8 = *(a3 + 32);
  TranslateGTMTLIndirectCommandBufferDescriptorAuto(v12, a3, a4);
  if (a4)
  {
    v9 = DEVICEOBJECT(v7);
    *(v8 + 42) = [v9 supportsMeshShadersInICB];

    v10 = *(v8 + 16);
    if (objc_opt_respondsToSelector())
    {
      v11 = [v12 maxKernelThreadgroupMemoryBindCount];
    }

    else if ((v10 & 0x60) != 0)
    {
      v11 = 31;
    }

    else
    {
      v11 = 0;
    }

    *(v8 + 33) = v11;
  }
}

id MakeMTLIndirectCommandBufferDescriptorFromIndirectCommandBuffer(void *a1)
{
  memset(v3, 0, sizeof(v3));
  MakeGTMTLIndirectCommandBufferDescriptorFromIndirectCommandBuffer(v3, a1);
  v1 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v3);

  return v1;
}

uint64_t TranslateGTMTLRenderPassDescriptor(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a2 + 296);
  TranslateGTMTLRenderPassDescriptorAuto(v5, a2, a3);
  v7 = [v5 getSamplePositions:0 count:0];
  v8 = 0;
  v9 = *(a2 + 584);
  *(a2 + 584) = v9 + 8 * v7;
  if (a3)
  {
    *(v6 + 768) = v7;
    *(v6 + 760) = v9;
    [v5 getSamplePositions:? count:?];
    v8 = v6;
  }

  return v8;
}

id MakeMTLRenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = MakeMTLRenderPassDescriptorAuto(a1, a2);
  [v3 setSamplePositions:*(a1 + 760) count:*(a1 + 768)];

  return v3;
}

uint64_t TranslateGTMTLComputePipelineDescriptor(void *a1, void *a2, int a3)
{
  v4 = a2[39];
  TranslateGTMTLComputePipelineDescriptorAuto(a1, a2, a3);
  if (!a3)
  {
    return 0;
  }

  *(v4 + 951) = -1;
  return v4;
}

void TranslateGTMTLDeviceDescriptor(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(a2 + 480);
  *(a2 + 480) = v6 + 112;
  v7 = [v5 name];
  v8 = [v7 UTF8String];
  v9 = v8;
  if (v8)
  {
    v10 = strlen(v8);
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
    v13 = v10 + 1;
    if (v10 != -1)
    {
      v14 = *(a2 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (a2 + 592);
    v12 = *(a2 + 592);
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  *v11 = v12 + v13;
  if (a3)
  {
    memcpy(v14, v9, v13);

    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *v6 = 0u;
    *(v6 + 102) = 1;
    *(v6 + 64) = v14;
    if (v5)
    {
      [v5 maxThreadsPerThreadgroup];
      *(v6 + 96) = v22;
      [v5 maxThreadsPerThreadgroup];
      *(v6 + 98) = v21;
      [v5 maxThreadsPerThreadgroup];
      v15 = v20;
    }

    else
    {
      v15 = 0;
      *(v6 + 96) = 0;
    }

    *(v6 + 100) = v15;
    *v6 = [v5 sharedMemorySize];
    *(v6 + 8) = [v5 dedicatedMemorySize];
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 103) = [v5 samplerReductionModeSupport];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 109) = [v5 isPlacementHeapSupported];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 16) = [v5 deviceCreationFlags];
    }

    v16 = DEVICEOBJECT(v5);
    if (objc_opt_respondsToSelector())
    {
      v17 = 0;
      v19 = xmmword_297600;
      do
      {
        v18 = [v16 resourcePatchingTypeForResourceType:{v17, *&v19}];
        *(v6 + 24) = vorrq_s8(vandq_s8(vdupq_n_s64((1 << v17++)), vceqq_s64(vdupq_n_s64(v18), v19)), *(v6 + 24));
      }

      while (v17 != 12);
      *(v6 + 110) = 12;
    }
  }

  else
  {
  }
}

void TranslateGTIOSurface(__IOSurface *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = *(a2 + 552);
  *(a2 + 552) = v6 + 120;
  v7 = IOSurfaceCopyAllValues(a1);
  v8 = kIOSurfaceCreationProperties;
  v9 = [(__CFDictionary *)v7 objectForKeyedSubscript:kIOSurfaceCreationProperties];
  if ([v9 count] <= 1)
  {
    PlaneCount = IOSurfaceGetPlaneCount(a1);
    if (PlaneCount)
    {
      v11 = PlaneCount;
      v12 = 0;
      while (!IOSurfaceGetCompressionTypeOfPlane())
      {
        if (v11 == ++v12)
        {
          goto LABEL_10;
        }
      }

      v39 = v9;
      v40 = v8;
      v41 = v4;
      v42 = a3;
      v43 = v7;
      v44 = v6;
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      v59 = [[NSMutableArray alloc] initWithCapacity:v11];
      v13 = 0;
      v56 = kIOSurfacePlaneCompressionType;
      v55 = kIOSurfacePlaneCompressionFootprint;
      v54 = kIOSurfacePlaneCompressedTileWidth;
      v53 = kIOSurfacePlaneCompressedTileHeight;
      v52 = kIOSurfacePlaneBytesPerTileData;
      v51 = kIOSurfacePlaneBytesPerCompressedTileHeader;
      v50 = kIOSurfacePlaneWidthInCompressedTiles;
      v49 = kIOSurfacePlaneHeightInCompressedTiles;
      v48 = kIOSurfacePlaneBytesPerRowOfTileData;
      v47 = kIOSurfacePlaneCompressedTileHeaderRegionOffset;
      v46 = kIOSurfacePlaneCompressedTileDataRegionOffset;
      v45 = kIOSurfaceAddressFormat;
      v58 = v11;
      do
      {
        BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, v13);
        BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
        BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
        v77[0] = IOSurfacePropertyKeyPlaneBytesPerElement;
        v74 = [NSNumber numberWithUnsignedLong:IOSurfaceGetBytesPerElementOfPlane(a1, v13)];
        v78[0] = v74;
        v77[1] = IOSurfacePropertyKeyPlaneBytesPerRow;
        v73 = [NSNumber numberWithUnsignedLong:IOSurfaceGetBytesPerRowOfPlane(a1, v13)];
        v78[1] = v73;
        v77[2] = IOSurfacePropertyKeyPlaneElementHeight;
        v72 = [NSNumber numberWithUnsignedLong:IOSurfaceGetElementHeightOfPlane(a1, v13)];
        v78[2] = v72;
        v77[3] = IOSurfacePropertyKeyPlaneElementWidth;
        v71 = [NSNumber numberWithUnsignedLong:IOSurfaceGetElementWidthOfPlane(a1, v13)];
        v78[3] = v71;
        v77[4] = IOSurfacePropertyKeyPlaneHeight;
        v70 = [NSNumber numberWithUnsignedLong:IOSurfaceGetHeightOfPlane(a1, v13)];
        v78[4] = v70;
        v77[5] = IOSurfacePropertyKeyPlaneWidth;
        v69 = [NSNumber numberWithUnsignedLong:IOSurfaceGetWidthOfPlane(a1, v13)];
        v78[5] = v69;
        v77[6] = IOSurfacePropertyKeyPlaneOffset;
        v66 = [NSNumber numberWithLong:BaseAddressOfPlane - BaseAddress];
        v78[6] = v66;
        v77[7] = IOSurfacePropertyKeyPlaneSize;
        v65 = [NSNumber numberWithUnsignedLong:IOSurfaceGetSizeOfPlane()];
        v78[7] = v65;
        v77[8] = v56;
        v64 = [NSNumber numberWithUnsignedInt:IOSurfaceGetCompressionTypeOfPlane()];
        v78[8] = v64;
        v77[9] = v55;
        v63 = [NSNumber numberWithUnsignedInt:IOSurfaceGetCompressionFootprintOfPlane()];
        v78[9] = v63;
        v77[10] = v54;
        v62 = [NSNumber numberWithUnsignedLong:IOSurfaceGetCompressedTileWidthOfPlane()];
        v78[10] = v62;
        v77[11] = v53;
        v61 = [NSNumber numberWithUnsignedLong:IOSurfaceGetCompressedTileHeightOfPlane()];
        v78[11] = v61;
        v77[12] = v52;
        v60 = [NSNumber numberWithUnsignedLong:IOSurfaceGetBytesPerTileDataOfPlane()];
        v78[12] = v60;
        v77[13] = v51;
        v15 = [NSNumber numberWithUnsignedLong:IOSurfaceGetBytesPerCompressedTileHeaderOfPlane()];
        v78[13] = v15;
        v77[14] = v50;
        v16 = [NSNumber numberWithUnsignedLong:IOSurfaceGetWidthInCompressedTilesOfPlane()];
        v78[14] = v16;
        v77[15] = v49;
        v17 = [NSNumber numberWithUnsignedLong:IOSurfaceGetHeightInCompressedTilesOfPlane()];
        v78[15] = v17;
        v77[16] = v48;
        v18 = [NSNumber numberWithUnsignedLong:IOSurfaceGetBytesPerRowOfTileDataOfPlane()];
        v78[16] = v18;
        v77[17] = v47;
        v19 = [NSNumber numberWithLong:BaseAddressOfCompressedTileHeaderRegionOfPlane - BaseAddress];
        v78[17] = v19;
        v77[18] = v46;
        v20 = [NSNumber numberWithLong:BaseAddressOfCompressedTileDataRegionOfPlane - BaseAddress];
        v78[18] = v20;
        v77[19] = v45;
        v21 = [NSNumber numberWithUnsignedChar:IOSurfaceGetAddressFormatOfPlane()];
        v78[19] = v21;
        v22 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:20];
        [v59 addObject:v22];

        ++v13;
      }

      while (v58 != v13);
      v75[0] = IOSurfacePropertyKeyAllocSize;
      v23 = [NSNumber numberWithUnsignedLong:IOSurfaceGetAllocSize(a1)];
      v76[0] = v23;
      v75[1] = IOSurfacePropertyKeyWidth;
      v24 = [NSNumber numberWithUnsignedLong:IOSurfaceGetWidth(a1)];
      v76[1] = v24;
      v75[2] = IOSurfacePropertyKeyHeight;
      v25 = [NSNumber numberWithUnsignedLong:IOSurfaceGetHeight(a1)];
      v76[2] = v25;
      v75[3] = IOSurfacePropertyKeyPixelFormat;
      v26 = [NSNumber numberWithUnsignedInt:IOSurfaceGetPixelFormat(a1)];
      v76[3] = v26;
      v75[4] = IOSurfacePropertyKeyPlaneInfo;
      v27 = [v59 copy];
      v76[4] = v27;
      v75[5] = IOSurfacePropertyKeyPixelSizeCastingAllowed;
      v28 = [NSNumber numberWithUnsignedChar:IOSurfaceAllowsPixelSizeCasting(a1)];
      v76[5] = v28;
      v75[6] = IOSurfacePropertyKeyCacheMode;
      v29 = [NSNumber numberWithUnsignedInt:IOSurfaceGetCacheMode()];
      v76[6] = v29;
      v30 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:7];

      v31 = [(__CFDictionary *)v43 mutableCopy];
      [v31 setObject:v30 forKeyedSubscript:v40];
      v7 = [v31 copy];

      v9 = v30;
      v6 = v44;
      a3 = v42;
      v4 = v41;
    }
  }

LABEL_10:

  v32 = GTMTLDescriptorAllocator_copyDictionary(v4, v7, a3);
  if (a3)
  {
    v34 = v32;
    v35 = v33;
    *(v6 + 104) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 8) = 0u;
    *v6 = a1;
    *(v6 + 8) = IOSurfaceGetAllocSize(a1);
    *(v6 + 92) = IOSurfaceGetWidth(a1);
    *(v6 + 94) = IOSurfaceGetHeight(a1);
    *(v6 + 96) = IOSurfaceGetBytesPerElement(a1);
    *(v6 + 80) = IOSurfaceGetBytesPerRow(a1);
    *(v6 + 98) = IOSurfaceGetElementWidth(a1);
    *(v6 + 100) = IOSurfaceGetElementHeight(a1);
    *(v6 + 84) = IOSurfaceGetPixelFormat(a1);
    LODWORD(v78[0]) = 2;
    IOSurfaceGetYCbCrMatrix();
    *(v6 + 88) = v78[0];
    v36 = IOSurfaceGetPlaneCount(a1);
    *(v6 + 102) = v36;
    if (v36)
    {
      v37 = 0;
      v38 = (v6 + 28);
      do
      {
        *(v38 - 4) = IOSurfaceGetWidthOfPlane(a1, v37);
        *(v38 - 3) = IOSurfaceGetHeightOfPlane(a1, v37);
        *(v38 - 2) = IOSurfaceGetBytesPerElementOfPlane(a1, v37);
        *(v38 - 3) = IOSurfaceGetBytesPerRowOfPlane(a1, v37);
        *(v38 - 1) = IOSurfaceGetElementWidthOfPlane(a1, v37);
        *v38 = IOSurfaceGetElementHeightOfPlane(a1, v37);
        v38 += 8;
        ++v37;
      }

      while (v37 < *(v6 + 102));
    }

    *(v6 + 104) = v34;
    *(v6 + 112) = v35;
  }
}

id MakeIOSurface(uint64_t a1)
{
  v1 = a1;
  v2 = MTLDepthStencilDescriptor_ptr;
  if (*(a1 + 104))
  {
    v3 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 104) length:*(a1 + 112) freeWhenDone:0];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v55 = objc_opt_class();
    v2 = MTLDepthStencilDescriptor_ptr;
    v7 = [NSSet setWithObjects:v4, v5, v6, v55, objc_opt_class(), 0];
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v3 error:0];
    v57 = [v8 objectForKeyedSubscript:kIOSurfaceCreationProperties];

    v1 = a1;
  }

  else
  {
    v57 = 0;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [v2[69] numberWithUnsignedLongLong:*v1];
  [v9 setObject:v10 forKeyedSubscript:@"address"];

  v11 = [v2[69] numberWithUnsignedShort:*(v1 + 92)];
  [v9 setObject:v11 forKeyedSubscript:IOSurfacePropertyKeyWidth];

  v12 = [v2[69] numberWithUnsignedShort:*(v1 + 94)];
  [v9 setObject:v12 forKeyedSubscript:IOSurfacePropertyKeyHeight];

  v13 = [v2[69] numberWithUnsignedInt:*(v1 + 84)];
  [v9 setObject:v13 forKeyedSubscript:IOSurfacePropertyKeyPixelFormat];

  if (!*(v1 + 102))
  {
    v14 = [v2[69] numberWithUnsignedShort:*(v1 + 96)];
    [v9 setObject:v14 forKeyedSubscript:IOSurfacePropertyKeyBytesPerElement];

    v15 = [v2[69] numberWithUnsignedInt:*(v1 + 80)];
    [v9 setObject:v15 forKeyedSubscript:IOSurfacePropertyKeyBytesPerRow];

    v16 = [v2[69] numberWithUnsignedShort:*(v1 + 98)];
    [v9 setObject:v16 forKeyedSubscript:IOSurfacePropertyKeyElementWidth];

    v17 = [v2[69] numberWithUnsignedShort:*(v1 + 100)];
    [v9 setObject:v17 forKeyedSubscript:IOSurfacePropertyKeyElementHeight];
  }

  v18 = [v2[69] numberWithUnsignedLongLong:*(v1 + 8)];
  v56 = v9;
  [v9 setObject:v18 forKeyedSubscript:IOSurfacePropertyKeyAllocSize];

  if (v57)
  {
    v74[0] = IOSurfacePropertyKeyAllocSize;
    v74[1] = IOSurfacePropertyKeyWidth;
    v74[2] = IOSurfacePropertyKeyHeight;
    v74[3] = IOSurfacePropertyKeyBytesPerElement;
    v74[4] = IOSurfacePropertyKeyBytesPerRow;
    v74[5] = IOSurfacePropertyKeyElementWidth;
    v74[6] = IOSurfacePropertyKeyElementHeight;
    v74[7] = IOSurfacePropertyKeyPixelFormat;
    v74[8] = @"IOSurfaceAddress";
    v74[9] = @"IOSurfaceProtectionOptions";
    v19 = [NSArray arrayWithObjects:v74 count:10];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v20 = v57;
    v21 = [v20 countByEnumeratingWithState:&v67 objects:v73 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v68;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v68 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v67 + 1) + 8 * i);
          if (([v19 containsObject:v25] & 1) == 0)
          {
            v26 = [v20 objectForKeyedSubscript:v25];
            [v9 setObject:v26 forKeyedSubscript:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v67 objects:v73 count:16];
      }

      while (v22);
    }
  }

  v27 = a1;
  if (*(a1 + 102))
  {
    v72[0] = IOSurfacePropertyKeyPlaneWidth;
    v72[1] = IOSurfacePropertyKeyPlaneHeight;
    v72[2] = IOSurfacePropertyKeyPlaneBytesPerElement;
    v72[3] = IOSurfacePropertyKeyPlaneBytesPerRow;
    v72[4] = IOSurfacePropertyKeyPlaneElementWidth;
    v72[5] = IOSurfacePropertyKeyPlaneElementHeight;
    v28 = [NSArray arrayWithObjects:v72 count:6];
    v59 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 102)];
    v62 = [v57 objectForKeyedSubscript:IOSurfacePropertyKeyPlaneInfo];
    v29 = MTLDepthStencilDescriptor_ptr;
    if (*(a1 + 102))
    {
      v30 = 0;
      v61 = 0;
      do
      {
        v31 = (a1 + 16 + 16 * v30);
        v32 = *(v31 + 3);
        v33 = *v31;
        v34 = objc_alloc_init(NSMutableDictionary);
        v35 = [v29[69] numberWithUnsignedShort:*(v31 + 2)];
        [v34 setObject:v35 forKeyedSubscript:IOSurfacePropertyKeyPlaneWidth];

        v36 = [v29[69] numberWithUnsignedShort:*(v31 + 3)];
        [v34 setObject:v36 forKeyedSubscript:IOSurfacePropertyKeyPlaneHeight];

        v37 = [v29[69] numberWithUnsignedShort:*(v31 + 4)];
        [v34 setObject:v37 forKeyedSubscript:IOSurfacePropertyKeyPlaneBytesPerElement];

        v38 = [v29[69] numberWithUnsignedInt:*v31];
        [v34 setObject:v38 forKeyedSubscript:IOSurfacePropertyKeyPlaneBytesPerRow];

        if (*(v31 + 5))
        {
          v39 = [v29[69] numberWithUnsignedShort:?];
          [v34 setObject:v39 forKeyedSubscript:IOSurfacePropertyKeyPlaneElementWidth];
        }

        if (*(v31 + 6))
        {
          v40 = [v29[69] numberWithUnsignedShort:?];
          [v34 setObject:v40 forKeyedSubscript:IOSurfacePropertyKeyPlaneElementHeight];
        }

        v41 = v33 * v32;
        v42 = [v29[69] numberWithUnsignedInteger:v61];
        [v34 setObject:v42 forKeyedSubscript:IOSurfacePropertyKeyPlaneOffset];

        v43 = [v29[69] numberWithUnsignedInteger:v41];
        [v34 setObject:v43 forKeyedSubscript:IOSurfacePropertyKeyPlaneSize];

        if (v62)
        {
          v60 = v41;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v44 = [v62 objectAtIndexedSubscript:v30];
          v45 = [v44 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v64;
            do
            {
              for (j = 0; j != v46; j = j + 1)
              {
                if (*v64 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v63 + 1) + 8 * j);
                if (([v28 containsObject:v49] & 1) == 0)
                {
                  v50 = [v62 objectAtIndexedSubscript:v30];
                  v51 = [v50 objectForKeyedSubscript:v49];
                  [v34 setObject:v51 forKeyedSubscript:v49];
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v46);
          }

          v27 = a1;
          v29 = MTLDepthStencilDescriptor_ptr;
          v41 = v60;
        }

        v52 = [v34 copy];
        [v59 addObject:v52];

        v61 += v41;
        ++v30;
      }

      while (v30 < *(v27 + 102));
    }

    v53 = [v59 copy];
    [v56 setObject:v53 forKeyedSubscript:IOSurfacePropertyKeyPlaneInfo];
  }

  return v56;
}

void TranslateGTMTLRasterizationRateMapDescriptor(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2[30];
  a2[30] = v6 + 40;
  v7 = [v5 label];
  v8 = [v7 UTF8String];
  v9 = v8;
  if (v8)
  {
    v10 = strlen(v8);
    v11 = a2 + 74;
    v12 = a2[74];
    v13 = v10 + 1;
    if (v10 != -1)
    {
      v14 = a2[74];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = a2 + 74;
    v12 = a2[74];
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  *v11 = v12 + v13;
  if (a3)
  {
    memcpy(v14, v9, v13);
  }

  v26 = v14;

  v25 = a2[52];
  v15 = [v5 layerCount];
  if (v15)
  {
    v16 = v15;
    for (i = 0; i != v16; ++i)
    {
      v18 = a2[52];
      a2[52] = v18 + 24;
      v19 = [v5 layers];
      v20 = [v19 objectAtIndexedSubscript:i];

      if (v20)
      {
        [v20 sampleCount];
      }

      v21 = a2[73];
      a2[73] = v21;
      if (a3)
      {
        *v18 = v21;
        *(v18 + 8) = v21;
        *(v18 + 16) = 0;
        *(v18 + 20) = 0;
        *(v18 + 18) = 0;
      }
    }
  }

  if (a3)
  {
    *(v6 + 32) = 0x20000;
    *v6 = GTMTLRasterizationRateMapDescriptorDefaults;
    *(v6 + 16) = unk_29CD38;
    *v6 = v26;
    v22 = 0xAAAAAAAAAAAAAAABLL * ((a2[52] - v25) >> 3);
    if (a2[52] == v25)
    {
      v23 = 0;
    }

    else
    {
      v23 = v25;
    }

    *(v6 + 8) = v23;
    *(v6 + 16) = v22;
    if (v5)
    {
      [v5 screenSize];
    }

    *(v6 + 32) = 0;
    *(v6 + 30) = 0;
    *(v6 + 28) = 0;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 34) = [v5 mutability];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 minFactor];
      *(v6 + 24) = v24;
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 35) = [v5 skipSampleValidationAndApplySampleAtTileGranularity];
    }
  }
}

id MakeMTLRasterizationRateMapDescriptor(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = 8 * v3;
  __chkstk_darwin(a1, a2);
  v5 = v22 - ((8 * v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v5, 8 * v3);
  if (*(a1 + 16))
  {
    v22[1] = v22;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(a1 + 8) + v6);
      v9 = v8[8];
      v10 = v8[10];
      v11 = v8[9];
      v12 = [MTLRasterizationRateLayerDescriptor alloc];
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v13 = [v12 initWithSampleCount:&v23];
      v14 = *&v5[8 * v7];
      *&v5[8 * v7] = v13;

      memcpy([v13 horizontalSampleStorage], *(*(a1 + 8) + v6), 4 * v9);
      memcpy([v13 verticalSampleStorage], *(*(a1 + 8) + v6 + 8), 4 * v10);
      ++v7;
      v15 = *(a1 + 16);
      v6 += 24;
    }

    while (v7 < v15);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 30);
  v17 = *(a1 + 28);
  v23 = *(a1 + 32);
  v24 = v16;
  v25 = v17;
  v18 = [MTLRasterizationRateMapDescriptor rasterizationRateMapDescriptorWithScreenSize:&v23 layerCount:v15 layers:v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v19 = [NSString stringWithUTF8String:?];
    [v18 setLabel:v19];
  }

  if (objc_opt_respondsToSelector())
  {
    [v18 setMutability:*(a1 + 34)];
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v20) = *(a1 + 24);
    [v18 setMinFactor:v20];
  }

  if (objc_opt_respondsToSelector())
  {
    [v18 setSkipSampleValidationAndApplySampleAtTileGranularity:*(a1 + 35) != 0];
  }

  if (v3)
  {
    do
    {

      v4 -= 8;
    }

    while (v4);
  }

  return v18;
}

void TranslateGTMTLCounterSampleBufferDescriptor(void *a1, void *a2, int a3)
{
  v5 = a1;
  v61 = a2[55];
  v62 = v5;
  a2[55] = v61 + 48;
  v6 = [v5 label];
  v7 = [v6 UTF8String];
  v8 = v7;
  if (v7)
  {
    v9 = strlen(v7);
    v10 = a2 + 74;
    v11 = a2[74];
    v12 = v9 + 1;
    if (v9 != -1)
    {
      v13 = a2[74];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = a2 + 74;
    v11 = a2[74];
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  *v10 = v11 + v12;
  if (a3)
  {
    memcpy(v13, v8, v12);
  }

  v60 = v13;

  v14 = [v62 counterSet];
  v15 = [v14 name];
  v16 = [v15 UTF8String];
  v17 = v16;
  if (v16)
  {
    v18 = strlen(v16);
    v19 = a2 + 74;
    v20 = a2[74];
    v21 = v18 + 1;
    if (v18 != -1)
    {
      v22 = a2[74];
      goto LABEL_13;
    }
  }

  else
  {
    v19 = a2 + 74;
    v20 = a2[74];
  }

  v21 = 0;
  v22 = 0;
LABEL_13:
  *v19 = v20 + v21;
  if (a3)
  {
    memcpy(v22, v17, v21);
  }

  v23 = [v62 counterSet];
  v24 = [v23 description];
  v25 = [v24 UTF8String];
  v26 = v25;
  if (v25)
  {
    v27 = strlen(v25);
    v28 = a2 + 74;
    v29 = a2[74];
    v30 = v27 + 1;
    if (v27 != -1)
    {
      v31 = a2[74];
      goto LABEL_20;
    }
  }

  else
  {
    v28 = a2 + 74;
    v29 = a2[74];
  }

  v30 = 0;
  v31 = 0;
LABEL_20:
  v59 = v22;
  *v28 = v29 + v30;
  if (a3)
  {
    memcpy(v31, v26, v30);
  }

  v58 = v31;

  v57 = a2[70];
  v32 = [v62 counterSet];
  v33 = [v32 counters];
  v34 = [v33 count];

  v35 = v34;
  if (v34)
  {
    for (i = 0; v35 != i; ++i)
    {
      v37 = a2[70];
      a2[70] = v37 + 2;
      v38 = [v62 counterSet];
      v39 = [v38 counters];
      v40 = [v39 objectAtIndexedSubscript:i];

      v41 = [v40 name];
      v42 = [v41 UTF8String];
      v43 = v42;
      if (v42)
      {
        v44 = strlen(v42);
        v45 = a2[74];
        v46 = v44 + 1;
        if (v44 != -1)
        {
          v47 = a2[74];
          goto LABEL_29;
        }
      }

      else
      {
        v45 = a2[74];
      }

      v46 = 0;
      v47 = 0;
LABEL_29:
      a2[74] = v45 + v46;
      if (a3)
      {
        memcpy(v47, v43, v46);
      }

      v48 = [v40 description];
      v49 = [v48 UTF8String];
      v50 = v49;
      if (!v49)
      {
        v52 = a2[74];
LABEL_35:
        v53 = 0;
        v54 = 0;
        goto LABEL_36;
      }

      v51 = strlen(v49);
      v52 = a2[74];
      v53 = v51 + 1;
      if (v51 == -1)
      {
        goto LABEL_35;
      }

      v54 = a2[74];
LABEL_36:
      a2[74] = v52 + v53;
      if (a3)
      {
        memcpy(v54, v50, v53);

        *v37 = v47;
        v37[1] = v54;
      }

      else
      {
      }
    }
  }

  if (a3)
  {
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *v61 = v60;
    *(v61 + 8) = v59;
    *(v61 + 16) = v58;
    *(v61 + 24) = 0;
    v55 = (a2[70] - v57) >> 4;
    *(v61 + 32) = v55;
    if (v55)
    {
      v56 = v57;
    }

    else
    {
      v56 = 0;
    }

    *(v61 + 24) = v56;
    *(v61 + 40) = [v62 sampleCount];
    *(v61 + 44) = [v62 storageMode];
  }
}

id MakeMTLCounterSampleBufferDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLCounterSampleBufferDescriptor);
  v5 = [NSString stringWithUTF8String:*(a1 + 8)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v3;
  v6 = [v3 counterSets];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v5 isEqualToString:v12];

        if (v13)
        {
          [v4 setCounterSet:v11];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (*a1)
  {
    v14 = [NSString stringWithUTF8String:?];
    [v4 setLabel:v14];
  }

  [v4 setStorageMode:*(a1 + 44)];
  [v4 setSampleCount:*(a1 + 40)];

  return v4;
}

char *TranslateGTMTLImageFilterFunctionInfo(char *result, int a2, uint64_t a3, char a4)
{
  if (a2 >= 1)
  {
    v6 = a2;
    v7 = (result + 8);
    do
    {
      v8 = *(a3 + 368);
      *(a3 + 368) = v8 + 24;
      if (a4)
      {
        v9 = *(a3 + 496);
        result = memcpy(v9, v7[1], 24 * *v7);
        *v8 = *(v7 - 8);
        v10 = *v7;
        if (*v7)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0;
        }

        *(v8 + 8) = v10;
        *(v8 + 16) = v11;
      }

      else
      {
        v10 = *v7;
      }

      *(a3 + 496) += 24 * v10;
      v7 += 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

void TranslateGTMTLStitchedLibraryDescriptor(void *a1, void *a2, uint64_t a3)
{
  v25 = a1;
  v5 = [v25 options];
  v6 = [v25 functionGraphs];
  v7 = [v6 count];

  if (v7)
  {
    v8 = a2[66];
  }

  else
  {
    v8 = 0;
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v9 = newpool;
  v10 = apr_hash_make(newpool);
  v26 = 1;
  v11 = a2[67];
  v12 = [v25 functionGraphs];
  CopyFunctionStitchingGraphs(v12, v10, &v26, a2, a3);

  v13 = v26;
  v14 = [v25 functions];
  v15 = [v14 count];

  if (v15)
  {
    [v25 functions];
    v16 = v9;
    v17 = v13;
    v18 = v7;
    v19 = v11;
    v20 = v8;
    v22 = v21 = v5;
    v24 = TranslateNSArray(v22, a2, a3);

    v5 = v21;
    v8 = v20;
    v11 = v19;
    v7 = v18;
    v13 = v17;
    v9 = v16;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v24 = 0;
  if (a3)
  {
LABEL_6:
    v23 = a2[47];
    *v23 = v8;
    *(v23 + 8) = v11;
    *(v23 + 16) = v24;
    *(v23 + 24) = v13 - 1;
    *(v23 + 32) = v7;
    *(v23 + 40) = v15;
    *(v23 + 48) = v5;
    *(v23 + 49) = 0;
    *(v23 + 52) = 0;
  }

LABEL_7:
  a2[47] += 56;
  apr_pool_destroy(v9);
}

void CopyFunctionStitchingGraphs(void *a1, apr_pool_t **a2, const void **a3, void *a4, uint64_t a5)
{
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = a1;
  v36 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v36)
  {
    v33 = *v50;
    v34 = a2;
    v35 = a3;
    do
    {
      v9 = 0;
      do
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * v9);
        v44 = v9;
        if ([v10 isMemberOfClass:objc_opt_class()])
        {
          v42 = 2;
        }

        else
        {
          v42 = [v10 isMemberOfClass:objc_opt_class()];
        }

        v11 = [v10 functionName];
        v12 = [v11 UTF8String];
        v13 = v12;
        if (v12)
        {
          v14 = strlen(v12);
          v15 = a4[74];
          v16 = v14 + 1;
          if (v14 != -1)
          {
            __dst = a4[74];
            goto LABEL_14;
          }
        }

        else
        {
          v15 = a4[74];
        }

        v16 = 0;
        __dst = 0;
LABEL_14:
        a4[74] = v15 + v16;
        if (a5)
        {
          memcpy(__dst, v13, v16);
        }

        v17 = [v10 nodes];
        v41 = [v17 count];

        v18 = [v10 nodes];
        v40 = CopyFunctionStitchingFunctionNodeArray(v18, v34, a3, a4, a5);

        v19 = [v10 outputNode];

        if (v19)
        {
          v20 = [v10 outputNode];
          v39 = CopyFunctionStitchingFunctionNode(v20, v34, a3, a4, a5);
        }

        else
        {
          v39 = 0;
        }

        v21 = [v10 attributes];
        v22 = [v21 count];

        v38 = v22;
        if (v22)
        {
          v37 = a4[68];
        }

        else
        {
          v37 = 0;
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v23 = [v10 attributes];
        v24 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v46;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v46 != v26)
              {
                objc_enumerationMutation(v23);
              }

              if (a5)
              {
                v28 = *(*(&v45 + 1) + 8 * i);
                if ([v28 isMemberOfClass:objc_opt_class()])
                {
                  v29 = 1;
                }

                else if ([v28 isMemberOfClass:objc_opt_class()])
                {
                  v29 = 2;
                }

                else
                {
                  v29 = 0;
                }

                v30 = a4[68];
                *v30 += v29;
              }

              else
              {
                v30 = a4[68];
              }

              a4[68] = v30 + 8;
            }

            v25 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v25);
        }

        if (a5)
        {
          v31 = a4[66];
          *v31 = __dst;
          *(v31 + 8) = v40;
          *(v31 + 16) = v41;
          *(v31 + 24) = v39;
          *(v31 + 32) = v37;
          *(v31 + 40) = v38;
          *(v31 + 48) = v42;
          *(v31 + 49) = 0;
          *(v31 + 52) = 0;
        }

        a4[66] += 56;
        v9 = v44 + 1;
        a3 = v35;
      }

      while ((v44 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v36);
  }
}

uint64_t CopyFunctionStitchingFunctionNodeArray(void *a1, apr_pool_t **a2, const void **a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = [v9 count];
  if (v10)
  {
    v11 = a4[72];
  }

  else
  {
    v11 = 0;
  }

  a4[72] += 8 * v10;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v21;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = CopyFunctionStitchingFunctionNode(*(*(&v20 + 1) + 8 * i), a2, a3, a4, a5);
        if (a5)
        {
          *(v11 + 8 * v15++) = v18;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  return v11;
}

const void *CopyFunctionStitchingFunctionNode(void *a1, apr_pool_t **a2, const void **a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v62 = 0;
  if (GetFunctionStitchingNodeID(v9, a2, a3, &v62))
  {
    goto LABEL_50;
  }

  v58 = a2;
  v50 = a4[67];
  a4[67] = v50 + 56;
  MTLFunctionStitchingNodeType = GetMTLFunctionStitchingNodeType(v9);
  v11 = [v9 name];
  v12 = [v11 UTF8String];
  v13 = v12;
  if (!v12)
  {
    v15 = a4 + 74;
    v16 = a4[74];
    goto LABEL_6;
  }

  v14 = strlen(v12);
  v15 = a4 + 74;
  v16 = a4[74];
  v17 = v14 + 1;
  if (v14 == -1)
  {
LABEL_6:
    v17 = 0;
    __dst = 0;
    goto LABEL_7;
  }

  __dst = a4[74];
LABEL_7:
  *v15 = v16 + v17;
  if (a5)
  {
    memcpy(__dst, v13, v17);
  }

  v52 = MTLFunctionStitchingNodeType;

  v53 = v9;
  v18 = [v9 arguments];
  v19 = [v18 count];
  if (v19)
  {
    v20 = a4[72];
  }

  else
  {
    v20 = 0;
  }

  v59 = v20;
  a4[72] += 8 * v19;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v18;
  v54 = a5;
  v21 = v58;
  v61 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v61)
  {
    v22 = 0;
    v23 = *v64;
    v56 = a3;
    v57 = a4;
    v55 = *v64;
    do
    {
      v24 = 0;
      do
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v63 + 1) + 8 * v24);
        v26 = GetMTLFunctionStitchingNodeType(v25);
        if (v26 - 3 < 9)
        {
          v27 = v25;
          v69 = 0;
          if (GetFunctionStitchingNodeID(v27, v21, a3, &v69))
          {
            v28 = v69;
LABEL_28:

            goto LABEL_39;
          }

          v29 = a4[67];
          a4[67] = v29 + 56;
          v68 = 0;
          v67 = 0;
          v30 = GetMTLFunctionStitchingNodeType(v27);
          v31 = v30;
          v32 = 0;
          v33 = 0;
          if (v30 > 5)
          {
            v34 = 0;
            if ((v30 - 6) < 4)
            {
              goto LABEL_22;
            }

LABEL_25:
            if (a5)
            {
              *v29 = v31;
              *(v29 + 1) = 0;
              *(v29 + 4) = 0;
              *(v29 + 8) = v32;
              *(v29 + 16) = v34;
              *(v29 + 18) = v33;
              *(v29 + 19) = v67;
              *(v29 + 23) = v68;
              *(v29 + 24) = 0u;
              *(v29 + 40) = 0u;
            }

            v28 = v69;
            a3 = v56;
            a4 = v57;
            v21 = v58;
            v23 = v55;
            goto LABEL_28;
          }

          if (v30 == 3)
          {
            v35 = [v27 argumentIndex];
          }

          else
          {
            if (v30 != 4)
            {
              v34 = 0;
              if (v30 != 5)
              {
                goto LABEL_25;
              }

              v37 = v27;
              v32 = [v37 byteOffset];
              v34 = [v37 bindIndex];
              v33 = [v37 dereference];

              a5 = v54;
              goto LABEL_24;
            }

LABEL_22:
            v35 = [v27 bindIndex];
          }

          v34 = v35;
          v33 = 0;
          v32 = 0;
LABEL_24:
          v68 = 0;
          v67 = 0;
          goto LABEL_25;
        }

        if (v26 > 0xC || ((1 << v26) & 0x1006) == 0)
        {
          v28 = 0;
        }

        else
        {
          v28 = CopyFunctionStitchingFunctionNode(v25, v21, a3, a4, a5);
        }

LABEL_39:

        if (a5)
        {
          *(v59 + 8 * v22++) = v28;
        }

        v24 = v24 + 1;
      }

      while (v61 != v24);
      v38 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      v61 = v38;
    }

    while (v38);
  }

  v9 = v53;
  v39 = [v53 arguments];
  v40 = [v39 count];

  v41 = [v53 controlDependencies];
  v42 = a5;
  v43 = v41;
  v44 = CopyFunctionStitchingFunctionNodeArray(v41, v21, a3, a4, v42);

  v45 = [v53 controlDependencies];
  v46 = [v45 count];

  if (v52 == 2)
  {
    v47 = [v53 isEarlyReturn];
  }

  else
  {
    v47 = 0;
  }

  if (v54)
  {
    *v50 = v52;
    *(v50 + 1) = 0;
    *(v50 + 4) = 0;
    *(v50 + 8) = __dst;
    *(v50 + 16) = v59;
    *(v50 + 24) = v44;
    *(v50 + 32) = v40;
    *(v50 + 40) = v46;
    *(v50 + 48) = v47;
    *(v50 + 49) = 0;
    *(v50 + 52) = 0;
  }

LABEL_50:
  v48 = v62;

  return v48;
}

uint64_t GetFunctionStitchingNodeID(void *a1, apr_pool_t **a2, const void **a3, const void **a4)
{
  v7 = a1;
  v15 = v7;
  entry = find_entry(a2, &v15, 8uLL, 0);
  if (*entry && (v9 = *(*entry + 32)) != 0)
  {
    *a4 = v9;
    v10 = 1;
  }

  else
  {
    v11 = *a3;
    *a4 = *a3;
    *a3 = v11 + 1;
    v12 = *a4;
    v13 = apr_palloc(*a2, 8uLL);
    *v13 = v15;
    apr_hash_set(a2, v13, 8, v12);
    v10 = 0;
  }

  return v10;
}

id GetMTLFunctionStitchingNodeType(void *a1)
{
  v1 = a1;
  if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_8 + 3;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_8 + 2;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_8 + 1;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_8;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_4 + 3;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_4 + 2;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_4 + 1;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_4;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_0 + 3;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_0 + 2;
  }

  else if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = &dword_C;
  }

  else
  {
    v2 = [v1 isMemberOfClass:objc_opt_class()];
  }

  return v2;
}

void TranslateGTMTLStitchedLibraryDescriptorSPI(void *a1, void *a2, uint64_t a3)
{
  v25 = a1;
  v5 = [v25 options];
  v6 = [v25 functionGraphs];
  v7 = [v6 count];

  if (v7)
  {
    v8 = a2[66];
  }

  else
  {
    v8 = 0;
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v9 = newpool;
  v10 = apr_hash_make(newpool);
  v26 = 1;
  v11 = a2[67];
  v12 = [v25 functionGraphs];
  CopyFunctionStitchingGraphs(v12, v10, &v26, a2, a3);

  v13 = v26;
  v14 = [v25 functions];
  v15 = [v14 count];

  if (v15)
  {
    [v25 functions];
    v16 = v9;
    v17 = v13;
    v18 = v7;
    v19 = v11;
    v20 = v8;
    v22 = v21 = v5;
    v24 = TranslateNSArray(v22, a2, a3);

    v5 = v21;
    v8 = v20;
    v11 = v19;
    v7 = v18;
    v13 = v17;
    v9 = v16;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v24 = 0;
  if (a3)
  {
LABEL_6:
    v23 = a2[47];
    *v23 = v8;
    *(v23 + 8) = v11;
    *(v23 + 16) = v24;
    *(v23 + 24) = v13 - 1;
    *(v23 + 32) = v7;
    *(v23 + 40) = v15;
    *(v23 + 48) = v5;
    *(v23 + 49) = 0;
    *(v23 + 52) = 0;
  }

LABEL_7:
  a2[47] += 56;
  apr_pool_destroy(v9);
}