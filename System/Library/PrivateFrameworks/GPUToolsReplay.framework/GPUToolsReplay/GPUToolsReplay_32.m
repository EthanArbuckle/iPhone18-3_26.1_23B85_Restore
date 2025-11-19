id MakeMTLSamplerDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLSamplerDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 16) != 0];
  [v2 setResourceIndex:*(a1 + 16)];

  return v2;
}

id MakeMTLHeapDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E40]);
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

id MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E68]);
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

id MakeMTLComputePipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D28]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 848)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setComputeFunction:v6];

  [v4 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 958) != 0];
  if (*(a1 + 872))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v7];
  }

  v8 = [v4 stageInputDescriptor];
  v9 = 0;
  v10 = (a1 + 10);
  do
  {
    v11 = [v8 layouts];
    v12 = [v11 objectAtIndexedSubscript:v9];
    [v12 setStride:*(v10 - 10)];
    [v12 setStepRate:*(v10 - 1)];
    v13 = *v10;
    v10 += 16;
    [v12 setStepFunction:v13];

    ++v9;
  }

  while (v9 != 31);
  v14 = 0;
  v15 = (a1 + 501);
  do
  {
    v16 = [v8 attributes];
    v17 = [v16 objectAtIndexedSubscript:v14];
    [v17 setFormat:*v15];
    [v17 setOffset:*(v15 - 5)];
    [v17 setBufferIndex:*(v15 - 1)];

    ++v14;
    v15 += 8;
  }

  while (v14 != 31);
  [v8 setIndexType:*(a1 + 745)];
  [v8 setIndexBufferIndex:*(a1 + 744)];

  for (i = 0; i != 31; ++i)
  {
    v19 = [v4 buffers];
    v20 = [v19 objectAtIndexedSubscript:i];
    [v20 setMutability:*(a1 + 920 + i)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportIndirectCommandBuffers:*(a1 + 956) != 0];
  }

  [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 918)];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 880)];
  v22 = [v3 objectForKeyedSubscript:v21];
  [v4 setPipelineLibrary:v22];

  v23 = *(a1 + 864);
  if (v23)
  {
    v24 = CreateObjectArrayWithMap(*(a1 + 856), v23, v3);
    [v4 setFunctionPointers:v24];
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
    v25 = GTData_MakeDictionary(*(a1 + 832), *(a1 + 840));
    [v4 setPluginData:v25];
  }

  v26 = GTData_MakeDictionary(*(a1 + 816), *(a1 + 824));
  [v4 setDriverCompilerOptions:v26];

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxCallStackDepth:*(a1 + 916)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingBinaryFunctions:*(a1 + 955) != 0];
  }

  v27 = [v4 linkedFunctions];
  MakeNestedMTLLinkedFunctions(v27, a1 + 752, v3);

  v28 = *(a1 + 896);
  if (v28)
  {
    v29 = CreateObjectArrayWithMap(*(a1 + 888), v28, v3);
    [v4 setPreloadedLibraries:v29];
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

id MakeMTLTileRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD7070]);
  if (*(a1 + 112))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v5];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 136)];
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

id MakeMTLCommandQueueDescriptor(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D00]);
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

id MakeMTLIOCommandQueueDescriptor(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E58]);
  [v2 setMaxCommandBufferCount:*a1];
  [v2 setPriority:*(a1 + 4)];
  [v2 setType:*(a1 + 5)];

  return v2;
}

id MakeMTLVisibleFunctionTableDescriptorWithoutResourceIndex(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD70A8]);
  [v2 setFunctionCount:*a1];

  return v2;
}

id MakeMTLVisibleFunctionTableDescriptorWithResourceIndex(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD70A8]);
  [v2 setFunctionCount:*a1];
  [v2 setForceResourceIndex:a1[1] != 0];
  [v2 setResourceIndex:a1[1]];

  return v2;
}

id MakeMTLFunctionDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D80]);
  [v4 setOptions:*(a1 + 40)];
  if (*(a1 + 8))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setName:v5];
  }

  if (*(a1 + 32))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
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
    v2 = objc_alloc_init(MEMORY[0x277CD6D68]);
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
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v6 + 16)];
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

id MakeMTLCompileOptions(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D10]);
  v5 = GTData_MakeDictionary(*a1, *(a1 + 8));
  [v4 setPreprocessorMacros:v5];

  [v4 setDebuggingEnabled:*(a1 + 56) != 0];
  [v4 setLanguageVersion:*(a1 + 48)];
  if (*(a1 + 16))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setAdditionalCompilerArguments:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPreserveInvariance:*(a1 + 62) != 0];
  }

  if (*(a1 + 24))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
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

id MakeNestedMTLMotionKeyframeData(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCABB0];
  v7 = *a2;
  v8 = a3;
  v9 = [v6 numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  [v5 setBuffer:v10];
  [v5 setOffset:a2[1]];

  return v5;
}

id MakeMTLAccelerationStructureDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = *(a1 + 96);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_86;
      }

      v7 = v3;
      v5 = objc_alloc_init(MEMORY[0x277CD6E90]);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1]];
      v9 = [v7 objectForKeyedSubscript:v8];
      [v5 setInstanceDescriptorBuffer:v9];

      [v5 setInstanceDescriptorBufferOffset:a1[2]];
      [v5 setInstanceDescriptorStride:a1[3]];
      [v5 setInstanceCount:*a1];
      v10 = a1[5];
      if (v10)
      {
        v11 = CreateObjectArrayWithMap(a1[4], v10, v7);
        [v5 setInstancedAccelerationStructures:v11];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setInstanceDescriptorType:*(a1 + 80)];
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
      v13 = [v7 objectForKeyedSubscript:v12];
      [v5 setMotionTransformBuffer:v13];

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformBufferOffset:a1[7]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformCount:a1[8]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformStride:a1[9]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformType:*(a1 + 82)];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setInstanceTransformationMatrixLayout:*(a1 + 81)];
      }

      goto LABEL_85;
    }

    v83 = v3;
    v14 = v3;
    v82 = objc_alloc_init(MEMORY[0x277CD6F08]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = v15;
    if (!a1[1])
    {
LABEL_74:
      v5 = v82;
      [v82 setGeometryDescriptors:v16];
      if (objc_opt_respondsToSelector())
      {
        LODWORD(v69) = *(a1 + 6);
        [v82 setMotionStartTime:v69];
      }

      if (objc_opt_respondsToSelector())
      {
        LODWORD(v70) = *(a1 + 4);
        [v82 setMotionEndTime:v70];
      }

      v7 = v14;
      if (objc_opt_respondsToSelector())
      {
        [v82 setMotionStartBorderMode:*(a1 + 29)];
      }

      v4 = v83;
      if (objc_opt_respondsToSelector())
      {
        [v82 setMotionEndBorderMode:*(a1 + 28)];
      }

      if (objc_opt_respondsToSelector())
      {
        [v82 setMotionKeyframeCount:*(a1 + 5)];
      }

LABEL_85:
      goto LABEL_86;
    }

    v17 = 0;
    v86 = v14;
    v84 = a1;
    v85 = v15;
    while (1)
    {
      v18 = (*a1 + 152 * v17);
      v19 = v14;
      v20 = v19;
      v21 = 0;
      v22 = *(v18 + 146);
      if (v22 > 3)
      {
        switch(v22)
        {
          case 4u:
            v88 = v19;
            v49 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C28]);
            v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[1])
            {
              v51 = 0;
              v52 = 0;
              do
              {
                v53 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v53, (*v18 + v51), v49);
                objc_claimAutoreleasedReturnValue();
                [v50 addObject:v53];

                ++v52;
                v51 += 16;
              }

              while (v18[1] > v52);
            }

            [v21 setBoundingBoxBuffers:v50];
            [v21 setBoundingBoxStride:v18[3]];
            [v21 setBoundingBoxCount:v18[2]];

            goto LABEL_60;
          case 5u:
            v58 = MEMORY[0x277CD6C10];
            v59 = v19;
            v21 = objc_alloc_init(v58);
            v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v61 = [v59 objectForKeyedSubscript:v60];
            [v21 setControlPointBuffer:v61];

            [v21 setControlPointBufferOffset:v18[1]];
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[6]];
            v63 = [v59 objectForKeyedSubscript:v62];
            [v21 setRadiusBuffer:v63];

            [v21 setRadiusBufferOffset:v18[7]];
            [v21 setControlPointCount:v18[2]];
            [v21 setControlPointStride:v18[3]];
            [v21 setRadiusStride:v18[8]];
            v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[4]];
            v65 = [v59 objectForKeyedSubscript:v64];

            [v21 setIndexBuffer:v65];
            [v21 setIndexBufferOffset:v18[5]];
            [v21 setSegmentCount:v18[10]];
            [v21 setSegmentControlPointCount:v18[9]];
            [v21 setControlPointFormat:*(v18 + 88)];
            [v21 setRadiusFormat:*(v18 + 93)];
            [v21 setIndexType:*(v18 + 92)];
            [v21 setCurveType:*(v18 + 90)];
            [v21 setCurveBasis:*(v18 + 89)];
            if (objc_opt_respondsToSelector())
            {
              [v21 setEndCaps:*(v18 + 91)];
            }

            v16 = v85;
            v14 = v86;
            break;
          case 6u:
            v88 = v19;
            v32 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C38]);
            v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[1])
            {
              v34 = 0;
              v35 = 0;
              do
              {
                v36 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v36, (*v18 + v34), v32);
                objc_claimAutoreleasedReturnValue();
                [v33 addObject:v36];

                ++v35;
                v34 += 16;
              }

              while (v18[1] > v35);
            }

            [v21 setControlPointBuffers:v33];
            v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[7])
            {
              v38 = 0;
              v39 = 0;
              do
              {
                v40 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v40, (v18[6] + v38), v32);
                objc_claimAutoreleasedReturnValue();
                [v37 addObject:v40];

                ++v39;
                v38 += 16;
              }

              while (v18[7] > v39);
            }

            [v21 setRadiusBuffers:v37];
            [v21 setControlPointCount:v18[2]];
            [v21 setControlPointStride:v18[3]];
            [v21 setRadiusStride:v18[8]];
            v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[4]];
            v42 = [v32 objectForKeyedSubscript:v41];
            [v21 setIndexBuffer:v42];

            [v21 setIndexBufferOffset:v18[5]];
            [v21 setSegmentCount:v18[10]];
            [v21 setControlPointFormat:*(v18 + 88)];
            [v21 setRadiusFormat:*(v18 + 93)];
            [v21 setIndexType:*(v18 + 92)];
            [v21 setSegmentControlPointCount:v18[9]];
            [v21 setCurveType:*(v18 + 90)];
            [v21 setCurveBasis:*(v18 + 89)];
            if (objc_opt_respondsToSelector())
            {
              [v21 setEndCaps:*(v18 + 91)];
            }

            a1 = v84;
LABEL_60:
            v16 = v85;
            v14 = v86;
            v20 = v88;
            break;
        }
      }

      else
      {
        switch(v22)
        {
          case 1u:
            v89 = v19;
            v23 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C68]);
            v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[5]];
            v44 = [v23 objectForKeyedSubscript:v43];
            [v21 setVertexBuffer:v44];

            [v21 setVertexBufferOffset:v18[6]];
            [v21 setVertexStride:v18[7]];
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v46 = [v23 objectForKeyedSubscript:v45];
            [v21 setIndexBuffer:v46];

            [v21 setIndexBufferOffset:v18[1]];
            [v21 setIndexType:*(v18 + 64)];
            [v21 setTriangleCount:v18[4]];
            if (objc_opt_respondsToSelector())
            {
              [v21 setVertexFormat:*(v18 + 66)];
            }

            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[2]];
            v48 = [v23 objectForKeyedSubscript:v47];
            [v21 setTransformationMatrixBuffer:v48];

            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixBufferOffset:v18[3]];
            }

            v20 = v89;
            v14 = v86;
            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixLayout:*(v18 + 65)];
            }

            goto LABEL_55;
          case 2u:
            v54 = MEMORY[0x277CD6C00];
            v55 = v19;
            v21 = objc_alloc_init(v54);
            v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v57 = [v55 objectForKeyedSubscript:v56];

            [v21 setBoundingBoxBuffer:v57];
            v16 = v85;

            [v21 setBoundingBoxBufferOffset:v18[1]];
            [v21 setBoundingBoxStride:v18[3]];
            [v21 setBoundingBoxCount:v18[2]];
            break;
          case 3u:
            v87 = v19;
            v23 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C40]);
            v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[6])
            {
              v25 = 0;
              v26 = 0;
              do
              {
                v27 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v27, (v18[5] + v25), v23);
                objc_claimAutoreleasedReturnValue();
                [v24 addObject:v27];

                ++v26;
                v25 += 16;
              }

              while (v18[6] > v26);
            }

            [v21 setVertexBuffers:v24];
            [v21 setVertexStride:v18[7]];
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v29 = [v23 objectForKeyedSubscript:v28];
            [v21 setIndexBuffer:v29];

            [v21 setIndexBufferOffset:v18[1]];
            [v21 setIndexType:*(v18 + 64)];
            [v21 setTriangleCount:v18[4]];
            if (objc_opt_respondsToSelector())
            {
              [v21 setVertexFormat:*(v18 + 66)];
            }

            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[2]];
            v31 = [v23 objectForKeyedSubscript:v30];
            [v21 setTransformationMatrixBuffer:v31];

            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixBufferOffset:v18[3]];
            }

            a1 = v84;
            v14 = v86;
            v20 = v87;
            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixLayout:*(v18 + 65)];
            }

LABEL_55:
            break;
        }
      }

      [v21 setIntersectionFunctionTableOffset:v18[12]];
      [v21 setOpaque:*(v18 + 145) != 0];
      [v21 setAllowDuplicateIntersectionFunctionInvocation:*(v18 + 144) != 0];
      if (v18[13])
      {
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        [v21 setLabel:v66];
      }

      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[14]];
      v68 = [v20 objectForKeyedSubscript:v67];
      [v21 setPrimitiveDataBuffer:v68];

      if (objc_opt_respondsToSelector())
      {
        [v21 setPrimitiveDataBufferOffset:v18[15]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v21 setPrimitiveDataStride:v18[17]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v21 setPrimitiveDataElementSize:v18[16]];
      }

      [v16 addObject:v21];
      if (a1[1] <= ++v17)
      {
        goto LABEL_74;
      }
    }
  }

  if (v6 == 3)
  {
    v72 = MEMORY[0x277CD6E78];
    v73 = v3;
    v5 = objc_alloc_init(v72);
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[2]];
    v75 = [v73 objectForKeyedSubscript:v74];
    [v5 setInstanceDescriptorBuffer:v75];

    [v5 setInstanceDescriptorBufferOffset:a1[3]];
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
    v77 = [v73 objectForKeyedSubscript:v76];
    [v5 setInstanceCountBuffer:v77];

    [v5 setInstanceCountBufferOffset:a1[1]];
    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[4]];
    v79 = [v73 objectForKeyedSubscript:v78];
    [v5 setMotionTransformBuffer:v79];

    [v5 setMotionTransformBufferOffset:a1[5]];
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    v81 = [v73 objectForKeyedSubscript:v80];

    [v5 setMotionTransformCountBuffer:v81];
    [v5 setMotionTransformCountBufferOffset:a1[7]];
    [v5 setMaxInstanceCount:*(a1 + 19)];
    [v5 setInstanceDescriptorStride:*(a1 + 18)];
    [v5 setMaxMotionTransformCount:*(a1 + 20)];
    [v5 setInstanceDescriptorType:*(a1 + 84)];
    if (objc_opt_respondsToSelector())
    {
      [v5 setMotionTransformStride:a1[8]];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 setMotionTransformType:*(a1 + 86)];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 setInstanceTransformationMatrixLayout:*(a1 + 85)];
    }
  }

  else if (v6 == 4)
  {
    v5 = MakeMTL4AccelerationStructureDescriptor(a1);
  }

LABEL_86:
  [v5 setUsage:*(a1 + 97)];

  return v5;
}

id MakeMTL4AccelerationStructureDescriptor(uint64_t *a1)
{
  v2 = *(a1 + 88);
  switch(v2)
  {
    case 5:
      v3 = objc_alloc_init(MEMORY[0x277CD6B98]);
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (!a1[1])
      {
LABEL_42:
        [v3 setGeometryDescriptors:v5];
        [v3 setMotionEndBorderMode:*(a1 + 32)];
        LODWORD(v16) = *(a1 + 6);
        [v3 setMotionEndTime:v16];
        [v3 setMotionKeyframeCount:a1[2]];
        [v3 setMotionStartBorderMode:*(a1 + 33)];
        LODWORD(v17) = *(a1 + 7);
        [v3 setMotionStartTime:v17];

        break;
      }

      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = 0;
        v9 = *a1;
        v10 = *(*a1 + v6 + 146);
        if (v10 > 9)
        {
          switch(v10)
          {
            case 0xAu:
              v8 = objc_alloc_init(MEMORY[0x277CD6A70]);
              v13 = v9 + v6;
              [v8 setBoundingBoxBuffers:{*(v9 + v6), *(v9 + v6 + 8)}];
LABEL_36:
              [v8 setBoundingBoxCount:*(v13 + 16)];
              [v8 setBoundingBoxStride:*(v13 + 24)];
              break;
            case 0xBu:
              v8 = objc_alloc_init(MEMORY[0x277CD6A58]);
              v12 = v9 + v6;
              [v8 setControlPointBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setControlPointCount:*(v9 + v6 + 48)];
              [v8 setControlPointFormat:*(v9 + v6 + 88)];
              [v8 setControlPointStride:*(v9 + v6 + 56)];
              [v8 setCurveBasis:*(v9 + v6 + 89)];
              [v8 setCurveEndCaps:*(v9 + v6 + 90)];
              [v8 setCurveType:*(v9 + v6 + 91)];
              [v8 setIndexBuffer:{*(v12 + 16), *(v12 + 24)}];
              [v8 setIndexType:*(v9 + v6 + 92)];
              [v8 setRadiusBuffer:{*(v12 + 32), *(v12 + 40)}];
              goto LABEL_38;
            case 0xCu:
              v8 = objc_alloc_init(MEMORY[0x277CD6A80]);
              v12 = v9 + v6;
              [v8 setControlPointBuffers:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setControlPointCount:*(v9 + v6 + 48)];
              [v8 setControlPointFormat:*(v9 + v6 + 88)];
              [v8 setControlPointStride:*(v9 + v6 + 56)];
              [v8 setCurveBasis:*(v9 + v6 + 89)];
              [v8 setCurveEndCaps:*(v9 + v6 + 90)];
              [v8 setCurveType:*(v9 + v6 + 91)];
              [v8 setIndexBuffer:{*(v12 + 16), *(v12 + 24)}];
              [v8 setIndexType:*(v9 + v6 + 92)];
              [v8 setRadiusBuffers:{*(v12 + 32), *(v12 + 40)}];
LABEL_38:
              [v8 setRadiusFormat:*(v12 + 93)];
              [v8 setRadiusStride:*(v12 + 64)];
              [v8 setSegmentControlPointCount:*(v12 + 72)];
              [v8 setSegmentCount:*(v12 + 80)];
              break;
          }
        }

        else
        {
          switch(v10)
          {
            case 7u:
              v8 = objc_alloc_init(MEMORY[0x277CD6AA0]);
              v11 = v9 + v6;
              [v8 setIndexBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setIndexType:*(v9 + v6 + 64)];
              [v8 setTransformationMatrixBuffer:{*(v11 + 16), *(v11 + 24)}];
              if (objc_opt_respondsToSelector())
              {
                [v8 setTransformationMatrixLayout:*(v11 + 65)];
              }

              [v8 setTriangleCount:*(v11 + 48)];
              [v8 setVertexBuffer:{*(v11 + 32), *(v11 + 40)}];
              goto LABEL_33;
            case 8u:
              v8 = objc_alloc_init(MEMORY[0x277CD6A50]);
              v13 = v9 + v6;
              [v8 setBoundingBoxBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              goto LABEL_36;
            case 9u:
              v8 = objc_alloc_init(MEMORY[0x277CD6A98]);
              v11 = v9 + v6;
              [v8 setIndexBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setIndexType:*(v9 + v6 + 64)];
              [v8 setTransformationMatrixBuffer:{*(v11 + 16), *(v11 + 24)}];
              if (objc_opt_respondsToSelector())
              {
                [v8 setTransformationMatrixLayout:*(v11 + 65)];
              }

              [v8 setTriangleCount:*(v11 + 48)];
              [v8 setVertexBuffers:{*(v11 + 32), *(v11 + 40)}];
LABEL_33:
              [v8 setVertexFormat:*(v11 + 66)];
              [v8 setVertexStride:*(v11 + 56)];
              break;
          }
        }

        v14 = v9 + v6;
        [v8 setAllowDuplicateIntersectionFunctionInvocation:*(v9 + v6 + 144) != 0];
        [v8 setIntersectionFunctionTableOffset:*(v9 + v6 + 112)];
        if (*(v9 + v6 + 120))
        {
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
          [v8 setLabel:v15];
        }

        [v8 setOpaque:*(v14 + 145) != 0];
        [v8 setPrimitiveDataBuffer:{*(v14 + 96), *(v14 + 104)}];
        [v8 setPrimitiveDataElementSize:*(v14 + 128)];
        [v8 setPrimitiveDataStride:*(v14 + 136)];
        [v5 addObject:v8];

        ++v7;
        v6 += 152;
        if (a1[1] <= v7)
        {
          goto LABEL_42;
        }
      }

    case 6:
      v3 = objc_alloc_init(MEMORY[0x277CD6B38]);
      [v3 setInstanceCount:a1[4]];
      [v3 setInstanceDescriptorBuffer:{*a1, a1[1]}];
      [v3 setInstanceDescriptorStride:a1[5]];
      [v3 setInstanceDescriptorType:*(a1 + 64)];
      if (objc_opt_respondsToSelector())
      {
        [v3 setInstanceTransformationMatrixLayout:*(a1 + 65)];
      }

      [v3 setMotionTransformBuffer:{a1[2], a1[3]}];
      [v3 setMotionTransformCount:a1[6]];
      if (objc_opt_respondsToSelector())
      {
        [v3 setMotionTransformStride:a1[7]];
      }

      if (objc_opt_respondsToSelector())
      {
        v4 = *(a1 + 66);
        goto LABEL_16;
      }

      break;
    case 7:
      v3 = objc_alloc_init(MEMORY[0x277CD6B20]);
      [v3 setInstanceCountBuffer:{*a1, a1[1]}];
      [v3 setInstanceDescriptorBuffer:{a1[2], a1[3]}];
      [v3 setInstanceDescriptorStride:*(a1 + 18)];
      [v3 setInstanceDescriptorType:*(a1 + 84)];
      if (objc_opt_respondsToSelector())
      {
        [v3 setInstanceTransformationMatrixLayout:*(a1 + 85)];
      }

      [v3 setMaxInstanceCount:*(a1 + 19)];
      [v3 setMaxMotionTransformCount:*(a1 + 20)];
      [v3 setMotionTransformBuffer:{a1[4], a1[5]}];
      [v3 setMotionTransformCountBuffer:{a1[6], a1[7]}];
      if (objc_opt_respondsToSelector())
      {
        [v3 setMotionTransformStride:a1[8]];
      }

      if (objc_opt_respondsToSelector())
      {
        v4 = *(a1 + 86);
LABEL_16:
        [v3 setMotionTransformType:v4];
      }

      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

id MakeMTLBlitPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6CA0]);
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLComputePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D18]);
  [v4 setDispatchType:*(a1 + 96)];
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLResourceStatePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6FA8]);
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLAccelerationStructurePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6C58]);
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLIntersectionFunctionTableDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6EB0]);
  [v2 setFunctionCount:*(a1 + 8)];

  return v2;
}

id MakeMTLIntersectionFunctionTableDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6EB0]);
  [v2 setFunctionCount:*(a1 + 8)];
  [v2 setForceResourceIndex:*a1 != 0];
  [v2 setResourceIndex:*a1];

  return v2;
}

id MakeMTLRenderPipelineFunctionsDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6F88]);
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

id MakeMTLIntersectionFunctionDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E98]);
  [v2 setOptions:*(a1 + 40)];
  if (*(a1 + 8))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setName:v3];
  }

  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setSpecializedName:v4];
  }

  v5 = MakeMTLFunctionConstantValues(*a1);
  [v2 setConstantValues:v5];

  return v2;
}

id MakeMTLResidencySetDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6F98]);
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
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  return v2;
}

id MakeMTL4ArgumentTableDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6AB0]);
  [v2 setInitializeBindings:*(a1 + 32) != 0];
  if (*a1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  [v2 setMaxBufferBindCount:*(a1 + 8)];
  [v2 setMaxSamplerStateBindCount:*(a1 + 16)];
  [v2 setMaxTextureBindCount:*(a1 + 24)];
  [v2 setSupportAttributeStrides:*(a1 + 33) != 0];

  return v2;
}

id MakeMTL4RenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6BA8]);
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
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 600)];
  v11 = [v3 objectForKeyedSubscript:v10];
  [v4 setRasterizationRateMap:v11];

  [v4 setRenderTargetArrayLength:*(a1 + 622)];
  [v4 setRenderTargetHeight:*(a1 + 624)];
  [v4 setRenderTargetWidth:*(a1 + 626)];
  v12 = [v4 stencilAttachment];

  [v4 setThreadgroupMemoryLength:*(a1 + 616)];
  [v4 setTileHeight:*(a1 + 628)];
  [v4 setTileWidth:*(a1 + 630)];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 608)];
  v14 = [v3 objectForKeyedSubscript:v13];
  [v4 setVisibilityResultBuffer:v14];

  [v4 setVisibilityResultType:*(a1 + 634)];
  [v4 setSupportColorAttachmentMapping:*(a1 + 633) != 0];

  return v4;
}

id MakeMTL4LibraryDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6B48]);
  if (*a1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
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
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setSource:v8];
  }

  return v4;
}

id MakeMTL4FunctionDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 24);
  if (v5 == 1)
  {
    v12 = MEMORY[0x277CD6BD0];
    v13 = v3;
    v8 = objc_alloc_init(v12);
    v14 = MakeMTLFunctionConstantValues(*a1);
    [v8 setConstantValues:v14];

    v15 = MakeMTL4FunctionDescriptor(a1[1], v13);

    [v8 setFunctionDescriptor:v15];
    if (!a1[2])
    {
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v8 setSpecializedName:v11];
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = MEMORY[0x277CD6B58];
    v7 = v3;
    v8 = objc_alloc_init(v6);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
    v10 = [v7 objectForKeyedSubscript:v9];

    [v8 setLibrary:v10];
    if (!a1[1])
    {
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v8 setName:v11];
LABEL_7:

    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

id MakeMTL4CompilerTaskOptions(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6B00]);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = CreateObjectArrayWithMap(*a1, v5, v3);
    [v4 setLookupArchives:v6];
  }

  return v4;
}

id MakeMTL4CompilerDescriptor(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6AF0]);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1]];
  v4 = [0 objectForKeyedSubscript:v3];
  [v2 setPipelineDataSetSerializer:v4];

  if (*a1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v5];
  }

  return v2;
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

id MakeMTL4RenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6BC0]);
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

  v9 = MakeMTL4FunctionDescriptor((a1 + 872), v3);
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

  v12 = MakeMTL4FunctionDescriptor((a1 + 904), v3);
  [v4 setVertexFunctionDescriptor:v12];

  [v4 setSupportIndirectCommandBuffers:*(a1 + 966)];
  [v4 setColorAttachmentMappingState:*(a1 + 962)];

  return v4;
}

id MakeMTL4MeshRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6B78]);
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

  v9 = MakeMTL4FunctionDescriptor((a1 + 128), v3);
  [v4 setFragmentFunctionDescriptor:v9];

  [v4 setMaxTotalThreadgroupsPerMeshGrid:*(a1 + 280)];
  [v4 setMaxTotalThreadsPerMeshThreadgroup:*(a1 + 288)];
  [v4 setMaxTotalThreadsPerObjectThreadgroup:*(a1 + 296)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 304)];
  }

  v10 = MakeMTL4FunctionDescriptor((a1 + 160), v3);
  [v4 setMeshFunctionDescriptor:v10];

  [v4 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 331) != 0];
  v11 = MakeMTL4FunctionDescriptor((a1 + 192), v3);
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

id MakeMTL4PipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = *(a1 + 1016);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = v3;
      v5 = objc_alloc_init(MEMORY[0x277CD6B68]);
      if (*(a1 + 32))
      {
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        [v5 setLabel:v14];
      }

      v12 = MakeMTL4FunctionDescriptor(a1, v7);
      [v5 setMachineLearningFunctionDescriptor:v12];
LABEL_16:

      goto LABEL_22;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_22;
      }

      v7 = v3;
      v5 = objc_alloc_init(MEMORY[0x277CD6BE8]);
      for (i = 0; i != 8; ++i)
      {
        v9 = [v5 colorAttachments];
        v10 = [v9 objectAtIndexedSubscript:i];
        [v10 setPixelFormat:*(a1 + 2 * i + 56)];
      }

      [v5 setMaxTotalThreadsPerThreadgroup:*(a1 + 72)];
      [v5 setRasterSampleCount:*(a1 + 80)];
      if (objc_opt_respondsToSelector())
      {
        v11 = *(a1 + 48);
        v23 = *(a1 + 32);
        v24 = v11;
        [v5 setRequiredThreadsPerThreadgroup:&v23];
      }

      [v5 setSupportBinaryLinking:*(a1 + 88) != 0];
      [v5 setThreadgroupSizeMatchesTileSize:*(a1 + 89) != 0];
      v12 = MakeMTL4FunctionDescriptor(a1, v7);
      [v5 setTileFunctionDescriptor:v12];
      goto LABEL_16;
    }

    v13 = MakeMTL4MeshRenderPipelineDescriptor(a1, v3);
    goto LABEL_18;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_22;
    }

    v13 = MakeMTL4RenderPipelineDescriptor(a1, v3);
LABEL_18:
    v5 = v13;
    goto LABEL_22;
  }

  v15 = MEMORY[0x277CD6B08];
  v16 = v3;
  v5 = objc_alloc_init(v15);
  v17 = MakeMTL4FunctionDescriptor(a1, v16);

  [v5 setComputeFunctionDescriptor:v17];
  [v5 setMaxTotalThreadsPerThreadgroup:*(a1 + 56)];
  if (objc_opt_respondsToSelector())
  {
    v18 = *(a1 + 48);
    v23 = *(a1 + 32);
    v24 = v18;
    [v5 setRequiredThreadsPerThreadgroup:&v23];
  }

  [v5 setSupportBinaryLinking:*(a1 + 64) != 0];
  [v5 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 66) != 0];
  [v5 setSupportIndirectCommandBuffers:*(a1 + 65)];
LABEL_22:
  if (*(a1 + 1008))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v5 setLabel:v19];
  }

  v20 = [v5 options];
  [v20 setEnableAccelerationStructureViewerInstrumentation:*(a1 + 1000) != 0];
  [v20 setEnablePerformanceStatistics:*(a1 + 1001) != 0];
  [v20 setEnablePostMeshDump:*(a1 + 1002) != 0];
  [v20 setEnablePostVertexDump:*(a1 + 1003) != 0];
  [v20 setEnableResourcePatchingInstrumentation:*(a1 + 1004) != 0];
  [v20 setEnableResourceUsageInstrumentation:*(a1 + 1005) != 0];
  [v20 setMaxNumRegisters:*(a1 + 984)];
  v21 = GTData_MakeDictionary(*(a1 + 968), *(a1 + 976));
  [v20 setPluginData:v21];

  [v20 setShaderReflection:*(a1 + 1006)];
  [v20 setShaderValidation:*(a1 + 1007)];
  [v20 setPostVertexDumpBufferIndex:*(a1 + 992)];

  return v5;
}

id MakeMTLTensorDescriptorWithoutResourceIndex(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD7038]);
  [v2 setDataType:*(a1 + 283)];
  v3 = *(a1 + 112);
  *&v17[96] = *(a1 + 96);
  *&v17[112] = v3;
  *&v17[128] = *(a1 + 128);
  v4 = *(a1 + 48);
  *&v17[32] = *(a1 + 32);
  *&v17[48] = v4;
  v5 = *(a1 + 80);
  *&v17[64] = *(a1 + 64);
  *&v17[80] = v5;
  v6 = *(a1 + 16);
  *v17 = *a1;
  *&v17[16] = v6;
  v7 = MakeMTLTensorExtents(v17);
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
  v22 = *(a1 + 208);
  v23 = v9;
  v10 = *(a1 + 256);
  v24 = *(a1 + 240);
  v25 = v10;
  v11 = *(a1 + 160);
  v18 = *(a1 + 144);
  v19 = v11;
  v12 = *(a1 + 192);
  v20 = *(a1 + 176);
  v21 = v12;
  v13 = v2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && v8)
  {
    *&v17[72] = v22;
    *&v17[88] = v23;
    *&v17[104] = v24;
    *&v17[120] = v25;
    *&v17[8] = v18;
    *&v17[24] = v19;
    *&v17[40] = v20;
    *v17 = v8;
    *&v17[56] = v21;
    v14 = MakeMTLTensorExtents(v17);
    [v13 setStrides:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

id MakeMTLTensorDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLTensorDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 272) != 0];
  [v2 setResourceIndex:*(a1 + 272)];

  return v2;
}

id MakeMTLTextureViewDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7060]);
  [v2 setLevelRange:{*a1, *(a1 + 8)}];
  [v2 setPixelFormat:*(a1 + 36)];
  [v2 setSliceRange:{*(a1 + 16), *(a1 + 24)}];
  [v2 setTextureType:*(a1 + 38)];
  v3 = *(a1 + 32);
  [v2 setSwizzle:MTLTextureSwizzleKeyToChannels()];

  return v2;
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
  v4 = objc_alloc_init(MEMORY[0x277CD6B90]);
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

id MakeMTL4RenderPipelineDynamicLinkingDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6BC8]);
  v5 = [v4 fragmentLinkingDescriptor];

  v6 = [v4 meshLinkingDescriptor];

  v7 = [v4 objectLinkingDescriptor];

  v8 = [v4 tileLinkingDescriptor];

  v9 = [v4 vertexLinkingDescriptor];

  return v4;
}

id MakeMTL4CommandAllocatorDescriptor(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6AC8]);
  if (*a1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  return v2;
}

id MakeMTL4CommandBufferOptions(void *a1, void *a2)
{
  v3 = MEMORY[0x277CD6AD0];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
  v7 = [v4 objectForKeyedSubscript:v6];

  [v5 setLogState:v7];

  return v5;
}

id MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CD7050]);
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

void MakeGTMTLSamplerDescriptor(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 label];
  v5 = [v4 UTF8String];

  if (v5)
  {
    strlen(v5);
  }

  MEMORY[0x28223BE20]();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  v8 = v3;
  *(a1 + 32) = xmmword_24DA92D08;
  *(a1 + 48) = unk_24DA92D18;
  *(a1 + 64) = 0;
  *a1 = GTMTLSamplerDescriptorDefaults;
  *(a1 + 16) = unk_24DA92CF8;
  v9 = v8;
  v10 = [v9 label];
  v11 = [v10 UTF8String];
  v12 = v11;
  if (!v11 || (v13 = strlen(v11), v14 = v13 + 1, v13 == -1))
  {
    v14 = 0;
    v7 = 0;
  }

  memcpy(v7, v12, v14);

  *(a1 + 60) = [v9 minFilter];
  *(a1 + 59) = [v9 magFilter];
  *(a1 + 61) = [v9 mipFilter];
  *(a1 + 8) = [v9 maxAnisotropy];
  *(a1 + 65) = [v9 sAddressMode];
  *(a1 + 67) = [v9 tAddressMode];
  *(a1 + 63) = [v9 rAddressMode];
  *(a1 + 62) = [v9 normalizedCoordinates];
  [v9 lodMinClamp];
  *(a1 + 48) = v15;
  [v9 lodMaxClamp];
  *(a1 + 44) = v16;
  *a1 = v7;
  *(a1 + 58) = [v9 lodAverage];
  *(a1 + 55) = [v9 compareFunction];
  *(a1 + 54) = [v9 borderColor];
  *(a1 + 66) = [v9 supportArgumentBuffers];
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 16) = [v9 resourceIndex];
  }

  *(a1 + 56) = [v9 forceResourceIndex];
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 64) = [v9 reductionMode];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 24) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 28) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 32) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 36) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 57) = [v9 forceSeamsOnCubemapFiltering];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 52) = [v9 pixelFormat];
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 lodBias];
    *(a1 + 40) = v17;
  }

  v18 = [v9 label];

  *a1 = [v18 UTF8String];
  v19 = *MEMORY[0x277D85DE8];
}

id MakeMTLRenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6F48]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 792)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setVisibilityResultBuffer:v6];

  v7 = 0;
  v8 = a1;
  do
  {
    if (*(v8 + 8))
    {
      v9 = [v4 colorAttachments];
      v10 = [v9 objectAtIndexedSubscript:v7];
    }

    ++v7;
    v8 += 64;
  }

  while (v7 != 8);
  v11 = [v4 depthAttachment];

  v12 = [v4 stencilAttachment];

  [v4 setRenderTargetArrayLength:*(a1 + 806)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setImageblockSampleLength:*(a1 + 804)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setThreadgroupMemoryLength:*(a1 + 800)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTileWidth:*(a1 + 814)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTileHeight:*(a1 + 812)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setRenderTargetWidth:*(a1 + 810)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setRenderTargetHeight:*(a1 + 808)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDefaultRasterSampleCount:*(a1 + 816)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 818) != 0];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 784)];
  v14 = [v3 objectForKeyedSubscript:v13];
  [v4 setRasterizationRateMap:v14];

  if (objc_opt_respondsToSelector())
  {
    [v4 setDitherEnabled:*(a1 + 817) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDefaultColorSampleCount:*(a1 + 776)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointCoordYFlipEnabled:*(a1 + 819) != 0];
  }

  v15 = 0;
  v16 = (a1 + 544);
  do
  {
    if (*(v16 - 2))
    {
      v17 = [v4 sampleBufferAttachments];
      v18 = [v17 objectAtIndexedSubscript:v15];
      v19 = MEMORY[0x277CCABB0];
      v20 = *(v16 - 2);
      v21 = v3;
      v22 = [v19 numberWithUnsignedLongLong:v20];
      v23 = [v21 objectForKeyedSubscript:v22];

      [v18 setSampleBuffer:v23];
      [v18 setStartOfVertexSampleIndex:*v16];
      [v18 setEndOfVertexSampleIndex:*(v16 - 3)];
      [v18 setStartOfFragmentSampleIndex:*(v16 - 1)];
      [v18 setEndOfFragmentSampleIndex:*(v16 - 4)];
    }

    ++v15;
    v16 += 5;
  }

  while (v15 != 4);
  if (objc_opt_respondsToSelector())
  {
    [v4 setSkipEmptyTilesOnClearEnabled:*(a1 + 820) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setVisibilityResultType:*(a1 + 822)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportColorAttachmentMapping:*(a1 + 821) != 0];
  }

  [v4 setSamplePositions:*(a1 + 760) count:*(a1 + 768)];

  return v4;
}

id MakeMTLRasterizationRateMapDescriptor(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = 8 * v2;
  MEMORY[0x28223BE20]();
  v4 = v22 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * v2);
  if (*(a1 + 16))
  {
    v22[1] = v22;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*(a1 + 8) + v5);
      v8 = v7[8];
      v9 = v7[10];
      v10 = v7[9];
      v11 = objc_alloc(MEMORY[0x277CD6F18]);
      v23 = v8;
      v24 = v9;
      v25 = v10;
      v12 = [v11 initWithSampleCount:&v23];
      v13 = *&v4[8 * v6];
      *&v4[8 * v6] = v12;

      memcpy([v12 horizontalSampleStorage], *(*(a1 + 8) + v5), 4 * v8);
      memcpy([v12 verticalSampleStorage], *(*(a1 + 8) + v5 + 8), 4 * v9);
      ++v6;
      v14 = *(a1 + 16);
      v5 += 24;
    }

    while (v6 < v14);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 30);
  v16 = *(a1 + 28);
  v23 = *(a1 + 32);
  v24 = v15;
  v25 = v16;
  v17 = [MEMORY[0x277CD6F20] rasterizationRateMapDescriptorWithScreenSize:&v23 layerCount:v14 layers:v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v17 setLabel:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 setMutability:*(a1 + 34)];
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v19) = *(a1 + 24);
    [v17 setMinFactor:v19];
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 setSkipSampleValidationAndApplySampleAtTileGranularity:*(a1 + 35) != 0];
  }

  if (v2)
  {
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

id MakeMTLCounterSampleBufferDescriptor(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D48]);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 8)];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v3;
  v6 = [v3 counterSets];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v5 isEqualToString:v12];

        if (v13)
        {
          [v4 setCounterSet:v11];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v14];
  }

  [v4 setStorageMode:*(a1 + 44)];
  [v4 setSampleCount:*(a1 + 40)];

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

id MakeMTLStitchedLibraryDescriptor(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD7008];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setOptions:*(a1 + 48)];
  v6 = MakeMTLFunctionStitchingGraphArray(a1);
  [v5 setFunctionGraphs:v6];

  v7 = CreateObjectArrayWithMap(*(a1 + 16), *(a1 + 40), v4);

  [v5 setFunctions:v7];

  return v5;
}

id MakeMTLFunctionStitchingGraphArray(void *a1)
{
  v26 = objc_opt_new();
  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1[4]];
  if (a1[4])
  {
    v2 = 0;
    while (1)
    {
      v3 = *a1 + 56 * v2;
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{*v3, v25}];
      v4 = MakeMTLFunctionStitchingFunctionNodeArray(*(v3 + 8), *(v3 + 16), a1, v26);
      v5 = v4;
      v6 = MEMORY[0x277CBEBF8];
      if (v4)
      {
        v6 = v4;
      }

      v27 = v6;

      v7 = MakeMTLFunctionStitchingFunctionNode(a1, *(v3 + 24), v26);
      v8 = *(v3 + 40);
      if (v8)
      {
        v9 = *(v3 + 32);
        v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
        while (1)
        {
          v12 = *v9;
          v9 += 8;
          v11 = v12;
          if (v12 == 1)
          {
            break;
          }

          if (v11 == 2)
          {
            v13 = 0x277CD6D98;
LABEL_11:
            v14 = objc_alloc_init(*v13);
            [v10 addObject:v14];
          }

          if (!--v8)
          {
            v15 = [v10 copy];

            goto LABEL_15;
          }
        }

        v13 = 0x277CD6D90;
        goto LABEL_11;
      }

      v15 = 0;
LABEL_15:
      v16 = MEMORY[0x277CBEBF8];
      if (v15)
      {
        v16 = v15;
      }

      v17 = v16;

      v18 = *(v3 + 48);
      if (v18 == 2)
      {
        break;
      }

      v19 = v28;
      if (v18 == 1)
      {
        v20 = 0x277CD6DD0;
LABEL_21:
        v21 = [objc_alloc(*v20) initWithFunctionName:v19 nodes:v27 outputNode:v7 attributes:v17];
        [v25 addObject:v21];
      }

      if (++v2 >= a1[4])
      {
        goto LABEL_23;
      }
    }

    v20 = 0x277CD6DE0;
    v19 = v28;
    goto LABEL_21;
  }

LABEL_23:
  v22 = v25;
  v23 = [v25 copy];

  return v23;
}

id MakeMTLFunctionStitchingFunctionNodeArray(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
    do
    {
      v10 = *a1++;
      v9 = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      v12 = [v7 objectForKeyedSubscript:v11];

      if (!v12)
      {
        v12 = MakeMTLFunctionStitchingFunctionNode(a3, v9, v7);
      }

      [v8 addObject:v12];

      --a2;
    }

    while (a2);
    v13 = [v8 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id MakeMTLFunctionStitchingFunctionNode(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2 || *(a1 + 24) < a2)
  {
    v6 = 0;
    goto LABEL_62;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;
    goto LABEL_61;
  }

  v10 = *(a1 + 8) + 56 * a2;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v10 - 48)];
  v11 = *(v10 - 40);
  v12 = *(v10 - 24);
  v13 = v5;
  if (v12)
  {
    v39 = v10;
    v40 = v8;
    v41 = v5;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];
    while (1)
    {
      v16 = *v11++;
      v15 = v16;
      v17 = v13;
      if (v16 && *(a1 + 24) >= v15)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
        v18 = [v17 objectForKeyedSubscript:v19];

        if (!v18)
        {
          v20 = *(a1 + 8) + 56 * v15;
          v21 = *(v20 - 56);
          if (v21 > 6)
          {
            if (*(v20 - 56) > 9u)
            {
              switch(v21)
              {
                case 0xAu:
                  v24 = MEMORY[0x277CD6DA0];
                  goto LABEL_40;
                case 0xBu:
                  v24 = MEMORY[0x277CD6DA8];
LABEL_40:
                  v22 = objc_alloc_init(v24);
LABEL_41:
                  v18 = v22;
                  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                  [v17 setObject:v18 forKeyedSubscript:v25];

                  break;
                case 0xCu:
LABEL_32:
                  v18 = MakeMTLFunctionStitchingFunctionNode(a1, v15, v17);
                  break;
              }
            }

            else
            {
              switch(v21)
              {
                case 7u:
                  v23 = MEMORY[0x277CD6E10];
LABEL_37:
                  v22 = [[v23 alloc] initWithBindIndex:*(v20 - 40)];
                  goto LABEL_41;
                case 8u:
                  v23 = MEMORY[0x277CD6E20];
                  goto LABEL_37;
                case 9u:
                  v23 = MEMORY[0x277CD6DF8];
                  goto LABEL_37;
              }
            }
          }

          else if (*(v20 - 56) > 3u)
          {
            switch(v21)
            {
              case 4u:
                v23 = MEMORY[0x277CD6DE8];
                goto LABEL_37;
              case 5u:
                v22 = [objc_alloc(MEMORY[0x277CD6DF0]) initWithBindIndex:*(v20 - 40) byteOffset:*(v20 - 48) dereference:*(v20 - 38) != 0];
                goto LABEL_41;
              case 6u:
                v23 = MEMORY[0x277CD6E18];
                goto LABEL_37;
            }
          }

          else
          {
            if (v21 - 1 < 2)
            {
              goto LABEL_32;
            }

            if (v21 == 3)
            {
              v22 = [objc_alloc(MEMORY[0x277CD6E08]) initWithArgumentIndex:*(v20 - 40)];
              goto LABEL_41;
            }
          }
        }
      }

      else
      {
        v18 = 0;
      }

      [v14 addObject:v18];
      if (!--v12)
      {
        v26 = [v14 copy];

        v8 = v40;
        v5 = v41;
        v10 = v39;
        goto LABEL_45;
      }
    }
  }

  v26 = 0;
LABEL_45:

  v27 = MEMORY[0x277CBEBF8];
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v29 = v28;

  v30 = MakeMTLFunctionStitchingFunctionNodeArray(*(v10 - 32), *(v10 - 16), a1, v13);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32;

  v34 = *(v10 - 56);
  if (v34 == 1)
  {
    v36 = MEMORY[0x277CD6DB8];
    goto LABEL_57;
  }

  if (v34 == 12)
  {
    v36 = MEMORY[0x277CD6DB0];
LABEL_57:
    v35 = [[v36 alloc] initWithName:v8 arguments:v29 controlDependencies:v33];
    goto LABEL_58;
  }

  if (v34 != 2)
  {
    v6 = 0;
    goto LABEL_60;
  }

  v35 = [objc_alloc(MEMORY[0x277CD6DC8]) initWithName:v8 arguments:v29 controlDependencies:v33 isEarlyReturn:*(v10 - 8) != 0];
LABEL_58:
  v6 = v35;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v13 setObject:v6 forKeyedSubscript:v37];

LABEL_60:
LABEL_61:

LABEL_62:

  return v6;
}

id MakeMTLStitchedLibraryDescriptorSPI(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD7018];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setOptions:*(a1 + 48)];
  v6 = MakeMTLFunctionStitchingGraphArray(a1);
  [v5 setFunctionGraphs:v6];

  v7 = CreateObjectArrayWithMap(*(a1 + 16), *(a1 + 40), v4);

  [v5 setFunctions:v7];

  return v5;
}

id MakeMTLAccelerationStructureAllocationDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6BF8]);
  [v2 setStorageMode:*(a1 + 9)];
  [v2 setForceResourceIndex:*a1 != 0];
  [v2 setResourceIndex:*a1];

  return v2;
}

id MakeMTLFXSpatialScalerDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7178]);
  [v2 setInputWidth:*a1];
  [v2 setInputHeight:*(a1 + 8)];
  [v2 setOutputWidth:*(a1 + 16)];
  [v2 setOutputHeight:*(a1 + 24)];
  [v2 setColorTextureFormat:*(a1 + 32)];
  [v2 setOutputTextureFormat:*(a1 + 34)];
  [v2 setColorProcessingMode:*(a1 + 36)];

  return v2;
}

id MakeMTLFXTemporalScalerDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7188]);
  [v2 setColorTextureFormat:*a1];
  [v2 setDepthTextureFormat:a1[1]];
  [v2 setMotionTextureFormat:a1[2]];
  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureEnabled:*(a1 + 58) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureFormat:a1[4]];
  }

  [v2 setOutputTextureFormat:a1[3]];
  [v2 setInputWidth:*(a1 + 2)];
  [v2 setInputHeight:*(a1 + 3)];
  [v2 setOutputWidth:*(a1 + 4)];
  [v2 setOutputHeight:*(a1 + 5)];
  LODWORD(v3) = *(a1 + 12);
  [v2 setInputContentMinScale:v3];
  LODWORD(v4) = *(a1 + 13);
  [v2 setInputContentMaxScale:v4];
  [v2 setAutoExposureEnabled:*(a1 + 56) != 0];
  [v2 setInputContentPropertiesEnabled:*(a1 + 57) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setRequiresSynchronousInitialization:*(a1 + 59) != 0];
  }

  return v2;
}

id MakeMTLFXFrameInterpolatorDescriptor(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CD7170];
  v13 = a2;
  v14 = objc_alloc_init(v12);
  if (objc_opt_respondsToSelector())
  {
    [v14 setInputWidth:*a1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setInputHeight:*(a1 + 8)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setOutputWidth:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setOutputHeight:*(a1 + 24)];
  }

  [v14 setColorTextureFormat:*(a1 + 40)];
  [v14 setOutputTextureFormat:*(a1 + 46)];
  [v14 setMotionTextureFormat:*(a1 + 44)];
  [v14 setDepthTextureFormat:*(a1 + 42)];
  if (objc_opt_respondsToSelector())
  {
    [v14 setUITextureFormat:*(a1 + 48)];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
  v16 = [v13 objectForKeyedSubscript:v15];

  if (v16)
  {
    [v14 setScaler:v16];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
    v18 = [v9 objectForKeyedSubscript:v17];
    if (v18)
    {
      [v14 setScaler:v18];
    }

    else
    {
      v24 = v11;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
      v19 = [v10 objectForKeyedSubscript:?];
      if (v19)
      {
        [v14 setScaler:v19];
      }

      else
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 32)];
        v21 = [v24 objectForKeyedSubscript:v20];
        [v14 setScaler:v21];
      }

      v11 = v24;
    }
  }

  return v14;
}

id MakeMTLFXTemporalDenoisedScalerDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7180]);
  [v2 setColorTextureFormat:*a1];
  [v2 setDepthTextureFormat:a1[1]];
  [v2 setMotionTextureFormat:a1[2]];
  [v2 setDiffuseAlbedoTextureFormat:a1[3]];
  [v2 setSpecularAlbedoTextureFormat:a1[4]];
  [v2 setNormalTextureFormat:a1[5]];
  [v2 setRoughnessTextureFormat:a1[6]];
  [v2 setSpecularHitDistanceTextureFormat:a1[7]];
  if (objc_opt_respondsToSelector())
  {
    [v2 setDenoiseStrengthMaskTextureFormat:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setDenoiseStrengthMaskTextureEnabled:*(a1 + 69) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSpecularHitDistanceTextureFormat:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSpecularHitDistanceTextureEnabled:*(a1 + 68) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setTransparencyOverlayTextureFormat:a1[9]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setTransparencyOverlayTextureEnabled:*(a1 + 70) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureEnabled:*(a1 + 66) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureFormat:a1[11]];
  }

  [v2 setOutputTextureFormat:a1[10]];
  [v2 setInputWidth:*(a1 + 3)];
  [v2 setInputHeight:*(a1 + 4)];
  [v2 setOutputWidth:*(a1 + 5)];
  [v2 setOutputHeight:*(a1 + 6)];
  LODWORD(v3) = *(a1 + 14);
  [v2 setInputContentMinScale:v3];
  LODWORD(v4) = *(a1 + 15);
  [v2 setInputContentMaxScale:v4];
  [v2 setAutoExposureEnabled:*(a1 + 64) != 0];
  [v2 setInputContentPropertiesEnabled:*(a1 + 65) != 0];

  return v2;
}

id MakeMTLResourceViewPoolDescriptor(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6FB8]);
  if (a1[1])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  [v2 setResourceViewCount:a1[2]];
  [v2 setForceBaseResourceID:*a1 != 0];
  [v2 setBaseResourceID:*a1];

  return v2;
}

BOOL GTMTLSMBuilder_streamIntersectionRange(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a3 + 32);
  if (v5 && (*(v5 + 79) & 8) != 0)
  {
    v6 = (v5 + 64);
  }

  else
  {
    v6 = 0;
  }

  Func = GTTraceStream_lastFunc(a3);
  if (*v6 >= a1 + a2)
  {
    return 0;
  }

  v9 = Func;
  return !GTFenum_isDestructor(*(Func + 8)) || a1 <= *v9;
}

uint64_t GTMTLSMBuilder_compareStreams(void **a1, void **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *v2;
  }

  v3 = *a2;
  if (*a2)
  {
    v3 = *v3;
  }

  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t *GTMTLSMContext_buildDeviceMirrorWithIgnoreFlags(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, apr_pool_t *pool)
{
  v6 = pool;
  v1552 = *MEMORY[0x277D85DE8];
  v1544 = 0;
  v1542 = 0u;
  v1543 = 0u;
  v1540 = 0u;
  v1541 = 0u;
  v1538 = 0u;
  v1539 = 0u;
  v1536 = 0u;
  v1537 = 0u;
  v1534 = 0u;
  v1535 = 0u;
  v1532 = 0u;
  v1533 = 0u;
  v1526 = 1;
  v1527 = a4;
  v1528 = a5;
  p = pool;
  ht = apr_hash_make(pool);
  v1531 = a2;
  v10 = apr_array_make(v6, *(a1 + 48), 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  v11 = apr_hash_next((a1 + 16));
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = *(*(v12 + 1) + 32);
      *apr_array_push(v10) = v13;
      v12 = apr_hash_next(v12);
    }

    while (v12);
  }

  qsort(v10->elts, v10->nelts, v10->elt_size, GTMTLSMBuilder_compareStreams);
  v1525 = 0;
  v1524 = 0u;
  v1523 = 0u;
  v1522 = 0u;
  v1521 = 1;
  __key = &v1521;
  v14 = bsearch(&__key, v10->elts, v10->nelts, v10->elt_size, GTMTLSMBuilder_compareStreams);
  elts = v10->elts;
  nelts = v10->nelts;
  v18 = &elts[8 * nelts];
  v1516 = v18;
  if (v14)
  {
    v19 = *v14;
    if (*(*(*v14 + 32) + 72) != -10239)
    {
      v25 = 0;
      goto LABEL_1948;
    }

    v20 = v14 + 1;
    if (GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v19))
    {
      ++DWORD2(v1539);
      v21 = *(v19 + 32);
      if (v21)
      {
        v22 = 0;
        while (1)
        {
          v23 = atomic_load((v21 + 4));
          v24 = v22 + (v23 >> 6) - 1;
          if (v24 > 0)
          {
            break;
          }

          v21 = *(v21 + 40);
          v22 = v24;
          if (!v21)
          {
            v22 = v24;
            goto LABEL_16;
          }
        }

        v24 = 0;
LABEL_16:
        v26 = v22 | (v24 << 32);
      }

      else
      {
        v26 = 0;
      }

      v27 = 0;
      v28 = 0;
      while (v21)
      {
        v29 = v21 + 64;
        v30 = v21 + 64 + ((HIDWORD(v26) - v26) << 6);
        if ((*(v30 + 15) & 8) == 0)
        {
          break;
        }

        v31 = *v30;
        if (*v30 >= v1528 + v1527)
        {
          break;
        }

        v32 = *(v30 + 8);
        if (v32 == -10239)
        {
          v33 = v1531;
          v34 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v26) - v26) << 6)), *(v30 + 13), v1531);
          v27 = *v34;
          v28 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v26) - v26) << 6)), v34[8], v33);
        }

        else if (v32 == -16317)
        {
          if (v1527 <= v31)
          {
            v1307 = apr_palloc(p, 0x30uLL);
            *v1307 = 36;
            v1307[1] = v27;
            *(v1307 + 1) = xmmword_24DA8B920;
            v1307[4] = 0;
            v1307[5] = v28;
            v1308 = *find_entry(ht, v1307 + 8, 8uLL, 0);
            if (v1308)
            {
              v1308 = *(v1308 + 32);
            }

            v18 = v1516;
            v1307[4] = v1308;
            apr_hash_set(ht, v1307 + 1, 8, v1307);
            v1307[3] = v31;
          }

          else
          {
            v18 = v1516;
          }

          goto LABEL_30;
        }

        v35 = atomic_load((v21 + 4));
        v36 = v26 + (v35 >> 6);
        v37 = (HIDWORD(v26) + 1);
        v26 = (v37 << 32) | v26;
        if (v37 == v36 - 1)
        {
          v26 = (v37 << 32) | v37;
          v21 = *(v21 + 40);
        }
      }

      v38 = apr_palloc(p, 0x30uLL);
      *v38 = 36;
      v38[1] = v27;
      *(v38 + 1) = xmmword_24DA8B920;
      v38[4] = 0;
      v38[5] = v28;
      v39 = *find_entry(ht, v38 + 8, 8uLL, 0);
      if (v39)
      {
        v39 = *(v39 + 32);
      }

      v18 = v1516;
      v38[4] = v39;
      apr_hash_set(ht, v38 + 1, 8, v38);
      v38[3] = -1;
    }
  }

  else
  {
    v20 = &elts[8 * nelts];
  }

LABEL_30:
  newpool = 0;
  apr_pool_create_ex(&newpool, v6, 0, v15);
  if (*(a3 + 12) <= 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = *(a3 + 12);
  }

  v41 = apr_array_make(newpool, v40, 64);
  v42 = *(a3 + 12);
  if (v42 >= 1)
  {
    v43 = 0;
    for (i = 0; i < v42; ++i)
    {
      v45 = (*(a3 + 24) + v43);
      if ((*(v45 + 2) | 4) == 0xFFFFD856)
      {
        v46 = apr_array_push(v41);
        v47 = *v45;
        v48 = v45[1];
        v49 = v45[3];
        v46[2] = v45[2];
        v46[3] = v49;
        *v46 = v47;
        v46[1] = v48;
        v42 = *(a3 + 12);
      }

      v43 += 64;
    }
  }

  if (v20 != v18)
  {
    v1515 = v41;
    do
    {
      v50 = *v20;
      if (*v20)
      {
        v51 = *(v50 + 32);
        if (v51)
        {
          if ((*(v51 + 79) & 8) != 0)
          {
            v52 = *(v51 + 72);
            v1517 = v20;
            if (v52 == -7163)
            {
              v53 = 32;
              v54 = GTTraceFunc_argumentBytesWithPool((v51 + 64), *(v51 + 77), *(v50 + 24)) + 8;
            }

            else
            {
              v55 = GTFenum_getConstructorType(v52) - 2;
              if (v55 > 0x6C)
              {
                v53 = -1;
              }

              else
              {
                v53 = byte_24DA91F13[v55];
              }

              v56 = GTTraceFunc_argumentBytesWithPool((v51 + 64), *(v51 + 77), *(v50 + 24));
              v54 = v56 + 16;
              if (v52 == -15914)
              {
                v57 = v56 + 16;
              }

              else
              {
                v57 = v56;
              }

              if (v52 != -15913)
              {
                v54 = v57;
              }
            }

            v58 = *v54;
            v1518 = v58;
            if (v53 == 31 || v58 == 1 || (v59 = find_entry(ht, &v1518, 8uLL, 0), *v59) && *(*v59 + 32))
            {
              switch(v53)
              {
                case 0:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 24);
                  memset(&__src[128], 0, 40);
                  *&__src[32] = 0;
                  memset(&__src[48], 0, 32);
                  *__src = 22;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  *&__src[120] = -1;
                  *&__src[40] = v1526;
                  LODWORD(v1532) = v1532 + 1;
                  v60 = *(v50 + 32);
                  if (v60 && (*(v60 + 79) & 8) != 0)
                  {
                    v61 = (v60 + 64);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  GTMTLSMBuffer_processTraceFuncWithMap(__src, v1531, v61);
                  v1074 = *(v50 + 32);
                  if (!v1074)
                  {
                    v1078 = 0;
                    goto LABEL_1684;
                  }

                  v1075 = 0;
                  do
                  {
                    v1076 = atomic_load((v1074 + 4));
                    v1077 = v1075 + (v1076 >> 6) - 1;
                    if (v1077 > 1)
                    {
                      v1077 = 1;
                      goto LABEL_1683;
                    }

                    v1074 = *(v1074 + 40);
                    v1075 = v1077;
                  }

                  while (v1074);
                  v1075 = v1077;
LABEL_1683:
                  v1078 = v1075 | (v1077 << 32);
LABEL_1684:
                  while (2)
                  {
                    v1079 = v1074 + 64;
LABEL_1685:
                    if (!v1074 || (v1080 = v1079 + ((HIDWORD(v1078) - v1078) << 6), (*(v1080 + 15) & 8) == 0) || (v549 = *v1080, *v1080 >= v1528 + v1527))
                    {
                      v576 = apr_palloc(p, 0xA8uLL);
                      v1097 = *&__src[16];
                      v1096 = *&__src[32];
                      *v576 = *__src;
                      v576[1] = v1097;
                      v576[2] = v1096;
                      v1098 = *&__src[96];
                      v1100 = *&__src[48];
                      v1099 = *&__src[64];
                      v576[5] = *&__src[80];
                      v576[6] = v1098;
                      v576[3] = v1100;
                      v576[4] = v1099;
                      v1102 = *&__src[128];
                      v1101 = *&__src[144];
                      v1103 = *&__src[112];
                      *(v576 + 20) = *&__src[160];
                      v576[8] = v1102;
                      v576[9] = v1101;
                      v576[7] = v1103;
                      goto LABEL_1816;
                    }

                    v1081 = *(v1080 + 8);
                    if (v1081 <= -16368)
                    {
                      if (v1081 != -16372)
                      {
                        if (v1081 == -16370)
                        {
                          if (v1527 <= v549)
                          {
                            v576 = apr_palloc(p, 0xA8uLL);
                            v1254 = *&__src[16];
                            v1253 = *&__src[32];
                            *v576 = *__src;
                            v576[1] = v1254;
                            v576[2] = v1253;
                            v1255 = *&__src[96];
                            v1257 = *&__src[48];
                            v1256 = *&__src[64];
                            v576[5] = *&__src[80];
                            v576[6] = v1255;
                            v576[3] = v1257;
                            v576[4] = v1256;
                            v1259 = *&__src[128];
                            v1258 = *&__src[144];
                            v1260 = *&__src[112];
                            *(v576 + 20) = *&__src[160];
                            v576[8] = v1259;
                            v576[9] = v1258;
                            v576[7] = v1260;
                            goto LABEL_1786;
                          }

                          goto LABEL_1852;
                        }

                        goto LABEL_1700;
                      }
                    }

                    else if (v1081 != -16122 && v1081 != -16367)
                    {
                      goto LABEL_1700;
                    }

                    if (v1527 <= v549)
                    {
                      v1083 = apr_palloc(p, 0xA8uLL);
                      v1085 = *&__src[16];
                      v1084 = *&__src[32];
                      *v1083 = *__src;
                      *(v1083 + 1) = v1085;
                      *(v1083 + 2) = v1084;
                      v1086 = *&__src[96];
                      v1088 = *&__src[48];
                      v1087 = *&__src[64];
                      *(v1083 + 5) = *&__src[80];
                      *(v1083 + 6) = v1086;
                      *(v1083 + 3) = v1088;
                      *(v1083 + 4) = v1087;
                      v1090 = *&__src[128];
                      v1089 = *&__src[144];
                      v1091 = *&__src[112];
                      v1083[20] = *&__src[160];
                      *(v1083 + 8) = v1090;
                      *(v1083 + 9) = v1089;
                      *(v1083 + 7) = v1091;
                      v1092 = *find_entry(ht, v1083 + 8, 8uLL, 0);
                      if (v1092)
                      {
                        v1092 = *(v1092 + 32);
                      }

                      v1083[4] = v1092;
                      apr_hash_set(ht, v1083 + 1, 8, v1083);
                      v1083[3] = v549;
                    }

LABEL_1700:
                    GTMTLSMBuffer_processTraceFuncWithMap(__src, v1531, (v1079 + ((HIDWORD(v1078) - v1078) << 6)));
                    v1093 = atomic_load((v1074 + 4));
                    v1094 = v1078 + (v1093 >> 6);
                    v1095 = (HIDWORD(v1078) + 1);
                    v1078 = (v1095 << 32) | v1078;
                    if (v1095 == v1094 - 1)
                    {
                      v1078 = (v1095 << 32) | v1095;
                      v1074 = *(v1074 + 40);
                      continue;
                    }

                    goto LABEL_1685;
                  }

                case 1:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(&__src[96], 0, 224);
                  memset(&__src[48], 0, 32);
                  *&__src[32] = 0;
                  memset(__src, 0, 24);
                  *__src = 101;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  *&__src[40] = v1526;
                  ++DWORD1(v1532);
                  v156 = *(v50 + 32);
                  if (v156 && (*(v156 + 79) & 8) != 0)
                  {
                    v157 = (v156 + 64);
                  }

                  else
                  {
                    v157 = 0;
                  }

                  GTMTLSMTensor_processTraceFuncWithMap(__src, v1531, v157);
                  v1104 = *(v50 + 32);
                  if (!v1104)
                  {
                    v1108 = 0;
                    goto LABEL_1712;
                  }

                  v1105 = 0;
                  while (1)
                  {
                    v1106 = atomic_load((v1104 + 4));
                    v1107 = v1105 + (v1106 >> 6) - 1;
                    if (v1107 > 1)
                    {
                      break;
                    }

                    v1104 = *(v1104 + 40);
                    v1105 = v1107;
                    if (!v1104)
                    {
                      v1105 = v1107;
                      goto LABEL_1711;
                    }
                  }

                  v1107 = 1;
LABEL_1711:
                  v1108 = v1105 | (v1107 << 32);
                  while (1)
                  {
LABEL_1712:
                    if (!v1104 || (v1109 = v1104 + 64 + ((HIDWORD(v1108) - v1108) << 6), (*(v1109 + 15) & 8) == 0) || (v482 = *v1109, *v1109 >= v1528 + v1527))
                    {
                      v894 = apr_palloc(p, 0x140uLL);
                      v489 = v894;
                      v895 = 320;
                      goto LABEL_1730;
                    }

                    v1110 = *(v1109 + 8);
                    if (v1110 > -14939)
                    {
                      break;
                    }

                    if (v1110 == -14950)
                    {
                      goto LABEL_1722;
                    }

                    if (v1110 == -14948)
                    {
                      if (v1527 <= v482)
                      {
                        v1209 = apr_palloc(p, 0x140uLL);
                        v489 = v1209;
                        v1210 = 320;
                        goto LABEL_1907;
                      }

                      goto LABEL_1852;
                    }

LABEL_1727:
                    GTMTLSMTensor_processTraceFuncWithMap(__src, v1531, (v1104 + 64 + ((HIDWORD(v1108) - v1108) << 6)));
                    v1114 = atomic_load((v1104 + 4));
                    v1115 = v1108 + (v1114 >> 6);
                    v1116 = (HIDWORD(v1108) + 1);
                    v1108 = (v1116 << 32) | v1108;
                    if (v1116 == v1115 - 1)
                    {
                      v1108 = (v1116 << 32) | v1116;
                      v1104 = *(v1104 + 40);
                    }
                  }

                  if (v1110 != -14938 && v1110 != -14933)
                  {
                    goto LABEL_1727;
                  }

LABEL_1722:
                  if (v1527 <= v482)
                  {
                    v1112 = apr_palloc(p, 0x140uLL);
                    memcpy(v1112, __src, 0x140uLL);
                    v1113 = *find_entry(ht, v1112 + 8, 8uLL, 0);
                    if (v1113)
                    {
                      v1113 = *(v1113 + 32);
                    }

                    *(v1112 + 4) = v1113;
                    apr_hash_set(ht, v1112 + 8, 8, v1112);
                    *(v1112 + 3) = v482;
                  }

                  goto LABEL_1727;
                case 2:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 128);
                  *&__src[32] = 0;
                  memset(&__src[48], 0, 32);
                  *__src = 80;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  *&__src[224] = 0xFFFFFFFFLL;
                  *&__src[40] = v1526;
                  ++DWORD2(v1532);
                  v130 = *(v50 + 32);
                  if (v130 && (*(v130 + 79) & 8) != 0)
                  {
                    v131 = v130 + 64;
                  }

                  else
                  {
                    v131 = 0;
                  }

                  GTMTLSMTexture_processTraceFuncWithMap(__src, v1531, v131);
                  v1036 = *(v50 + 32);
                  if (!v1036)
                  {
                    v1040 = 0;
                    goto LABEL_1654;
                  }

                  v1037 = 0;
                  while (1)
                  {
                    v1038 = atomic_load((v1036 + 4));
                    v1039 = v1037 + (v1038 >> 6) - 1;
                    if (v1039 > 1)
                    {
                      break;
                    }

                    v1036 = *(v1036 + 40);
                    v1037 = v1039;
                    if (!v1036)
                    {
                      v1037 = v1039;
                      goto LABEL_1653;
                    }
                  }

                  v1039 = 1;
LABEL_1653:
                  v1040 = v1037 | (v1039 << 32);
                  while (1)
                  {
LABEL_1654:
                    if (!v1036 || (v1041 = v1036 + 64 + ((HIDWORD(v1040) - v1040) << 6), (*(v1041 + 15) & 8) == 0) || (v1042 = *v1041, *v1041 >= v1528 + v1527))
                    {
                      v1061 = apr_palloc(p, 0xE8uLL);
                      v1063 = *&__src[16];
                      v1062 = *&__src[32];
                      *v1061 = *__src;
                      v1061[1] = v1063;
                      v1061[2] = v1062;
                      v1064 = *&__src[96];
                      v1066 = *&__src[48];
                      v1065 = *&__src[64];
                      v1061[5] = *&__src[80];
                      v1061[6] = v1064;
                      v1061[3] = v1066;
                      v1061[4] = v1065;
                      v1067 = *&__src[160];
                      v1069 = *&__src[112];
                      v1068 = *&__src[128];
                      v1061[9] = *&__src[144];
                      v1061[10] = v1067;
                      v1061[7] = v1069;
                      v1061[8] = v1068;
                      v1071 = *&__src[192];
                      v1070 = *&__src[208];
                      v1072 = *&__src[176];
                      *(v1061 + 28) = *&__src[224];
                      v1061[12] = v1071;
                      v1061[13] = v1070;
                      v1061[11] = v1072;
                      v1073 = *find_entry(ht, v1061 + 8, 8uLL, 0);
                      if (v1073)
                      {
                        v1073 = *(v1073 + 32);
                      }

                      *(v1061 + 4) = v1073;
                      apr_hash_set(ht, v1061 + 8, 8, v1061);
                      v1042 = -1;
                      goto LABEL_1674;
                    }

                    v1043 = *(v1041 + 8);
                    if (v1043 > -16233)
                    {
                      break;
                    }

                    if (v1043 == -16240)
                    {
                      goto LABEL_1664;
                    }

                    if (v1043 == -16238)
                    {
                      if (v1527 > v1042)
                      {
                        goto LABEL_1852;
                      }

                      v1061 = apr_palloc(p, 0xE8uLL);
                      v1242 = *&__src[16];
                      v1241 = *&__src[32];
                      *v1061 = *__src;
                      v1061[1] = v1242;
                      v1061[2] = v1241;
                      v1243 = *&__src[96];
                      v1245 = *&__src[48];
                      v1244 = *&__src[64];
                      v1061[5] = *&__src[80];
                      v1061[6] = v1243;
                      v1061[3] = v1245;
                      v1061[4] = v1244;
                      v1246 = *&__src[160];
                      v1248 = *&__src[112];
                      v1247 = *&__src[128];
                      v1061[9] = *&__src[144];
                      v1061[10] = v1246;
                      v1061[7] = v1248;
                      v1061[8] = v1247;
                      v1250 = *&__src[192];
                      v1249 = *&__src[208];
                      v1251 = *&__src[176];
                      *(v1061 + 28) = *&__src[224];
                      v1061[12] = v1250;
                      v1061[13] = v1249;
                      v1061[11] = v1251;
                      v1252 = *find_entry(ht, v1061 + 8, 8uLL, 0);
                      if (v1252)
                      {
                        v1252 = *(v1252 + 32);
                      }

                      *(v1061 + 4) = v1252;
                      apr_hash_set(ht, v1061 + 8, 8, v1061);
LABEL_1674:
                      *(v1061 + 3) = v1042;
                      goto LABEL_1852;
                    }

LABEL_1669:
                    GTMTLSMTexture_processTraceFuncWithMap(__src, v1531, v1036 + 64 + ((HIDWORD(v1040) - v1040) << 6));
                    v1058 = atomic_load((v1036 + 4));
                    v1059 = v1040 + (v1058 >> 6);
                    v1060 = (HIDWORD(v1040) + 1);
                    v1040 = (v1060 << 32) | v1040;
                    if (v1060 == v1059 - 1)
                    {
                      v1040 = (v1060 << 32) | v1060;
                      v1036 = *(v1036 + 40);
                    }
                  }

                  if (v1043 != -16232 && v1043 != -16114)
                  {
                    goto LABEL_1669;
                  }

LABEL_1664:
                  if (v1527 <= v1042)
                  {
                    v1045 = apr_palloc(p, 0xE8uLL);
                    v1047 = *&__src[16];
                    v1046 = *&__src[32];
                    *v1045 = *__src;
                    *(v1045 + 1) = v1047;
                    *(v1045 + 2) = v1046;
                    v1048 = *&__src[96];
                    v1050 = *&__src[48];
                    v1049 = *&__src[64];
                    *(v1045 + 5) = *&__src[80];
                    *(v1045 + 6) = v1048;
                    *(v1045 + 3) = v1050;
                    *(v1045 + 4) = v1049;
                    v1051 = *&__src[160];
                    v1053 = *&__src[112];
                    v1052 = *&__src[128];
                    *(v1045 + 9) = *&__src[144];
                    *(v1045 + 10) = v1051;
                    *(v1045 + 7) = v1053;
                    *(v1045 + 8) = v1052;
                    v1055 = *&__src[192];
                    v1054 = *&__src[208];
                    v1056 = *&__src[176];
                    v1045[28] = *&__src[224];
                    *(v1045 + 12) = v1055;
                    *(v1045 + 13) = v1054;
                    *(v1045 + 11) = v1056;
                    v1057 = *find_entry(ht, v1045 + 8, 8uLL, 0);
                    if (v1057)
                    {
                      v1057 = *(v1057 + 32);
                    }

                    v1045[4] = v1057;
                    apr_hash_set(ht, v1045 + 1, 8, v1045);
                    v1045[3] = v1042;
                  }

                  goto LABEL_1669;
                case 3:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1532);
                  v186 = *(v50 + 32);
                  if (!v186)
                  {
                    v278 = 0;
                    goto LABEL_1335;
                  }

                  v187 = 0;
                  do
                  {
                    v188 = atomic_load((v186 + 4));
                    v189 = v187 + (v188 >> 6) - 1;
                    if (v189 > 0)
                    {
                      v189 = 0;
                      goto LABEL_1334;
                    }

                    v186 = *(v186 + 40);
                    v187 = v189;
                  }

                  while (v186);
                  v187 = v189;
LABEL_1334:
                  v278 = v187 | (v189 << 32);
LABEL_1335:
                  v1430 = 0;
                  v1455 = 0;
                  v1479 = 0;
                  v850 = 0;
                  v851 = 0;
                  v852 = 0;
                  v1412 = 0;
                  v1506 = xmmword_24DA8B930;
                  while (1)
                  {
                    if (!v186 || (v853 = v186 + 64, v854 = v186 + 64 + ((HIDWORD(v278) - v278) << 6), (*(v854 + 15) & 8) == 0) || (v359 = *v854, *v854 >= v1528 + v1527))
                    {
                      v366 = apr_palloc(p, 0x58uLL);
                      *v366 = 75;
                      *(v366 + 1) = v1430;
                      v366[1] = v1455;
                      v367 = v366 + 1;
                      v368 = -1;
                      v366[2] = v1479;
                      v366[3] = -1;
                      v366[4] = 0;
                      v366[5] = v850;
                      v366[6] = v851;
                      v366[7] = v852;
                      *(v366 + 4) = v1506;
                      v366[10] = v1412;
                      goto LABEL_1352;
                    }

                    v855 = *(v854 + 8);
                    if (v855 == -16241)
                    {
                      if (v1527 <= v359)
                      {
                        v1192 = apr_palloc(p, 0x58uLL);
                        *v1192 = 75;
                        *(v1192 + 1) = v1430;
                        v1192[1] = v1455;
                        v1193 = v1192 + 1;
                        v1192[2] = v1479;
                        v1192[3] = -1;
                        v1192[4] = 0;
                        v1192[5] = v850;
                        v1192[6] = v851;
                        v1192[7] = v852;
                        *(v1192 + 4) = v1506;
                        v1192[10] = v1412;
                        goto LABEL_1837;
                      }

                      goto LABEL_1852;
                    }

                    v856 = v1531;
                    if (v855 == -10163)
                    {
                      break;
                    }

                    if (v855 == -10226)
                    {
                      v859 = GTTraceFunc_argumentBytesWithMap((v853 + ((HIDWORD(v278) - v278) << 6)), *(v854 + 13), v1531);
                      *(&v860 + 1) = *(&v1506 + 1);
                      *&v860 = *(v859 + 1);
LABEL_1348:
                      v1506 = v860;
                      goto LABEL_1349;
                    }

                    if (v855 == -16309)
                    {
                      v857 = GTTraceFunc_argumentBytesWithMap((v853 + ((HIDWORD(v278) - v278) << 6)), *(v854 + 13), v1531);
                      v1455 = *(v857 + 1);
                      v1479 = *v854;
                      v1430 = *(v854 + 8);
                      v858 = GTTraceFunc_argumentBytesWithMap((v853 + ((HIDWORD(v278) - v278) << 6)), *(v854 + 14), v856);
                      v852 = v858;
                      if (v858)
                      {
                        v1412 = *(v858 + 2);
                        v1506 = *v858;
                      }

                      v850 = *v857;
                      v851 = GTTraceFunc_argumentBytesWithMap((v853 + ((HIDWORD(v278) - v278) << 6)), v857[16], v856);
                    }

LABEL_1349:
                    v862 = atomic_load((v186 + 4));
                    v863 = v278 + (v862 >> 6);
                    v864 = (HIDWORD(v278) + 1);
                    v278 = (v864 << 32) | v278;
                    if (v864 == v863 - 1)
                    {
                      v278 = (v864 << 32) | v864;
                      v186 = *(v186 + 40);
                    }
                  }

                  v861 = GTTraceFunc_argumentBytesWithMap((v853 + ((HIDWORD(v278) - v278) << 6)), *(v854 + 13), v1531);
                  *&v860 = v1506;
                  *(&v860 + 1) = *(v861 + 1);
                  goto LABEL_1348;
                case 4:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(&__src[128], 0, 312);
                  memset(&__src[32], 0, 88);
                  memset(__src, 0, 24);
                  *__src = 71;
                  *&__src[24] = -1;
                  *&__src[120] = -1;
                  LODWORD(v1533) = v1533 + 1;
                  v195 = *(v50 + 32);
                  if (!v195)
                  {
                    v280 = 0;
                    goto LABEL_1403;
                  }

                  v196 = 0;
                  while (1)
                  {
                    v197 = atomic_load((v195 + 4));
                    v198 = v196 + (v197 >> 6) - 1;
                    if (v198 > 0)
                    {
                      break;
                    }

                    v195 = *(v195 + 40);
                    v196 = v198;
                    if (!v195)
                    {
                      v196 = v198;
                      goto LABEL_1402;
                    }
                  }

                  v198 = 0;
LABEL_1402:
                  v280 = v196 | (v198 << 32);
                  while (1)
                  {
LABEL_1403:
                    if (!v195 || (v890 = v195 + 64 + ((HIDWORD(v280) - v280) << 6), (*(v890 + 15) & 8) == 0) || (v482 = *v890, *v890 >= v1528 + v1527))
                    {
                      v894 = apr_palloc(p, 0x1B8uLL);
                      v489 = v894;
                      v895 = 440;
LABEL_1730:
                      memcpy(v894, __src, v895);
                      goto LABEL_1731;
                    }

                    if (*(v890 + 8) == -16242)
                    {
                      break;
                    }

                    GTMTLSMRenderPipelineState_processTraceFuncWithMap(__src, v1531, v890);
                    v891 = atomic_load((v195 + 4));
                    v892 = v280 + (v891 >> 6);
                    v893 = (HIDWORD(v280) + 1);
                    v280 = (v893 << 32) | v280;
                    if (v893 == v892 - 1)
                    {
                      v280 = (v893 << 32) | v893;
                      v195 = *(v195 + 40);
                    }
                  }

                  if (v1527 <= v482)
                  {
                    v1209 = apr_palloc(p, 0x1B8uLL);
                    v489 = v1209;
                    v1210 = 440;
LABEL_1907:
                    memcpy(v1209, __src, v1210);
                    goto LABEL_1916;
                  }

                  goto LABEL_1852;
                case 5:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[128], 0, 96);
                  memset(&__src[32], 0, 88);
                  *__src = 29;
                  *&__src[24] = -1;
                  *&__src[120] = -1;
                  ++DWORD1(v1533);
                  v140 = *(v50 + 32);
                  if (!v140)
                  {
                    v267 = 0;
                    goto LABEL_968;
                  }

                  v141 = 0;
                  while (1)
                  {
                    v142 = atomic_load((v140 + 4));
                    v143 = v141 + (v142 >> 6) - 1;
                    if (v143 > 0)
                    {
                      break;
                    }

                    v140 = *(v140 + 40);
                    v141 = v143;
                    if (!v140)
                    {
                      v141 = v143;
                      goto LABEL_967;
                    }
                  }

                  v143 = 0;
LABEL_967:
                  v267 = v141 | (v143 << 32);
                  while (1)
                  {
LABEL_968:
                    if (!v140 || (v665 = v140 + 64 + ((HIDWORD(v267) - v267) << 6), (*(v665 + 15) & 8) == 0) || (v482 = *v665, *v665 >= v1528 + v1527))
                    {
                      v489 = apr_palloc(p, 0xE0uLL);
                      v669 = *&__src[16];
                      *v489 = *__src;
                      v489[1] = v669;
                      v670 = *&__src[80];
                      v672 = *&__src[32];
                      v671 = *&__src[48];
                      v489[4] = *&__src[64];
                      v489[5] = v670;
                      v489[2] = v672;
                      v489[3] = v671;
                      v673 = *&__src[144];
                      v675 = *&__src[96];
                      v674 = *&__src[112];
                      v489[8] = *&__src[128];
                      v489[9] = v673;
                      v489[6] = v675;
                      v489[7] = v674;
                      v676 = *&__src[208];
                      v678 = *&__src[160];
                      v677 = *&__src[176];
                      v489[12] = *&__src[192];
                      v489[13] = v676;
                      v489[10] = v678;
                      v489[11] = v677;
                      goto LABEL_1731;
                    }

                    if (*(v665 + 8) == -16321)
                    {
                      break;
                    }

                    GTMTLSMComputePipelineState_processTraceFuncWithMap(__src, v1531, v665);
                    v666 = atomic_load((v140 + 4));
                    v667 = v267 + (v666 >> 6);
                    v668 = (HIDWORD(v267) + 1);
                    v267 = (v668 << 32) | v267;
                    if (v668 == v667 - 1)
                    {
                      v267 = (v668 << 32) | v668;
                      v140 = *(v140 + 40);
                    }
                  }

                  if (v1527 <= v482)
                  {
                    v489 = apr_palloc(p, 0xE0uLL);
                    v1198 = *&__src[16];
                    *v489 = *__src;
                    v489[1] = v1198;
                    v1199 = *&__src[80];
                    v1201 = *&__src[32];
                    v1200 = *&__src[48];
                    v489[4] = *&__src[64];
                    v489[5] = v1199;
                    v489[2] = v1201;
                    v489[3] = v1200;
                    v1202 = *&__src[144];
                    v1204 = *&__src[96];
                    v1203 = *&__src[112];
                    v489[8] = *&__src[128];
                    v489[9] = v1202;
                    v489[6] = v1204;
                    v489[7] = v1203;
                    v1205 = *&__src[208];
                    v1207 = *&__src[160];
                    v1206 = *&__src[176];
                    v489[12] = *&__src[192];
                    v489[13] = v1205;
                    v489[10] = v1207;
                    v489[11] = v1206;
                    goto LABEL_1916;
                  }

                  goto LABEL_1852;
                case 6:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  *__src = 0uLL;
                  LOWORD(v1550) = 0;
                  BYTE2(v1550) = 0;
                  ++DWORD2(v1533);
                  v158 = *(v50 + 32);
                  if (!v158)
                  {
                    v271 = 0;
                    goto LABEL_1077;
                  }

                  v159 = 0;
                  do
                  {
                    v160 = atomic_load((v158 + 4));
                    v161 = v159 + (v160 >> 6) - 1;
                    if (v161 > 0)
                    {
                      v161 = 0;
                      goto LABEL_1076;
                    }

                    v158 = *(v158 + 40);
                    v159 = v161;
                  }

                  while (v158);
                  v159 = v161;
LABEL_1076:
                  v271 = v159 | (v161 << 32);
LABEL_1077:
                  v725 = 0;
                  v1354 = 0;
                  v1363 = 0;
                  v1373 = 0;
                  v1426 = 0;
                  v1347 = 0;
                  v1337 = 0;
                  v1395 = 0;
                  v1342 = 0;
                  v1475 = 0;
                  v1451 = 0;
                  v1383 = 0;
                  v1502 = 0u;
                  v1408 = 2;
                  v1328 = -1;
                  v1332 = 0;
                  v1324 = -1;
                  while (1)
                  {
                    if (!v158 || (v726 = v158 + 64 + ((HIDWORD(v271) - v271) << 6), (*(v726 + 15) & 8) == 0) || (v727 = *v726, *v726 >= v1528 + v1527))
                    {
                      v746 = apr_palloc(p, 0x98uLL);
                      *v746 = 57;
                      *(v746 + 1) = v725;
                      v746[1] = v1354;
                      v746[2] = v1373;
                      v746[3] = v1328;
                      v746[4] = 0;
                      v746[5] = v1363;
                      *(v746 + 3) = *__src;
                      *(v746 + 4) = v1502;
                      v746[10] = v1324;
                      v746[11] = v1332;
                      *(v746 + 24) = v1426;
                      *(v746 + 25) = 0;
                      *(v746 + 52) = v1347;
                      *(v746 + 53) = v1408;
                      *(v746 + 108) = v1337;
                      v747 = v1550;
                      *(v746 + 111) = BYTE2(v1550);
                      *(v746 + 109) = v747;
                      v746[14] = v1395;
                      v746[15] = v1342;
                      v746[16] = v1475;
                      v746[17] = v1451;
                      v746[18] = v1383;
                      v748 = *find_entry(ht, v746 + 8, 8uLL, 0);
                      if (v748)
                      {
                        v748 = *(v748 + 32);
                      }

                      v746[4] = v748;
                      apr_hash_set(ht, v746 + 1, 8, v746);
                      v746[3] = -1;
                      goto LABEL_1852;
                    }

                    v728 = *(v726 + 8);
                    if (v728 == -15925 || v728 == -15919)
                    {
                      if (v1527 <= v727)
                      {
                        v730 = apr_palloc(p, 0x98uLL);
                        *v730 = 57;
                        *(v730 + 1) = v725;
                        v730[1] = v1354;
                        v730[2] = v1373;
                        v730[3] = v1328;
                        v730[4] = 0;
                        v730[5] = v1363;
                        *(v730 + 3) = *__src;
                        *(v730 + 4) = v1502;
                        v730[10] = v1324;
                        v730[11] = v1332;
                        *(v730 + 24) = v1426;
                        *(v730 + 25) = 0;
                        *(v730 + 52) = v1347;
                        *(v730 + 53) = v1408;
                        *(v730 + 108) = v1337;
                        v731 = v1550;
                        *(v730 + 111) = BYTE2(v1550);
                        *(v730 + 109) = v731;
                        v730[14] = v1395;
                        v730[15] = v1342;
                        v730[16] = v1475;
                        v730[17] = v1451;
                        v730[18] = v1383;
                        v732 = *find_entry(ht, v730 + 8, 8uLL, 0);
                        if (v732)
                        {
                          v732 = *(v732 + 32);
                        }

                        v730[4] = v732;
                        apr_hash_set(ht, v730 + 1, 8, v730);
                        v730[3] = v727;
                        v728 = *(v726 + 8);
                      }
                    }

                    else if (v728 == -15923)
                    {
                      if (v1527 <= v727)
                      {
                        v1238 = apr_palloc(p, 0x98uLL);
                        *v1238 = 57;
                        *(v1238 + 1) = v725;
                        v1238[1] = v1354;
                        v1238[2] = v1373;
                        v1238[3] = v1328;
                        v1238[4] = 0;
                        v1238[5] = v1363;
                        *(v1238 + 3) = *__src;
                        *(v1238 + 4) = v1502;
                        v1238[10] = v1324;
                        v1238[11] = v1332;
                        *(v1238 + 24) = v1426;
                        *(v1238 + 25) = 0;
                        *(v1238 + 52) = v1347;
                        *(v1238 + 53) = v1408;
                        *(v1238 + 108) = v1337;
                        v1239 = v1550;
                        *(v1238 + 111) = BYTE2(v1550);
                        *(v1238 + 109) = v1239;
                        v1238[14] = v1395;
                        v1238[15] = v1342;
                        v1238[16] = v1475;
                        v1238[17] = v1451;
                        v1238[18] = v1383;
                        v1240 = *find_entry(ht, v1238 + 8, 8uLL, 0);
                        if (v1240)
                        {
                          v1240 = *(v1240 + 32);
                        }

                        v1238[4] = v1240;
                        apr_hash_set(ht, v1238 + 1, 8, v1238);
                        v1238[3] = v727;
                      }

                      goto LABEL_1852;
                    }

                    v733 = v1531;
                    if (v728 > -15920)
                    {
                      if (v728 > -10210)
                      {
                        switch(v728)
                        {
                          case -10209:
                            v1324 = *(GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531) + 1);
                            break;
                          case -10202:
                            v742 = GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531);
                            v736.i64[0] = v1502.i64[0];
                            v736.i64[1] = *(v742 + 1);
                            goto LABEL_1121;
                          case -10166:
                            v739 = *(GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531) + 1);
LABEL_1114:
                            v1451 = v739;
                            break;
                        }
                      }

                      else
                      {
                        switch(v728)
                        {
                          case -15919:
                            v1337 = 1;
                            break;
                          case -10218:
                            v1475 = *(GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531) + 1);
                            break;
                          case -10215:
                            v735 = GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531);
                            v736.i64[1] = v1502.i64[1];
                            v736.i64[0] = *(v735 + 1);
LABEL_1121:
                            v1502 = v736;
                            break;
                        }
                      }
                    }

                    else if (v728 > -15925)
                    {
                      switch(v728)
                      {
                        case -15924:
                          v1426 = *(GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531) + 2);
                          break;
                        case -15923:
                          v1328 = *v726;
                          break;
                        case -15920:
                          v737 = *(GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531) + 2);
                          v738 = v1408;
                          if (v737 != 1)
                          {
                            v738 = v737;
                          }

                          v1408 = v738;
                          break;
                      }
                    }

                    else
                    {
                      if (v728 == -15972 || v728 == -15969)
                      {
                        v740 = GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531);
                        v1373 = *v726;
                        v725 = *(v726 + 8);
                        v1354 = *(v740 + 1);
                        v1363 = *v740;
                        v1395 = GTTraceFunc_argumentBytesWithMap(v726, v740[32], v733);
                        v1383 = *(v740 + 4);
                        v1347 = *(v740 + 12);
                        v741 = GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 14), v733);
                        if (!v741)
                        {
                          v1342 = 0;
                          goto LABEL_1123;
                        }

                        v1502 = vextq_s8(*v741, *v741, 8uLL);
                        v1426 = v741[1].i32[0];
                        v1475 = v741[1].i64[1];
                        v1342 = v741;
                        v739 = v741[3].i64[0];
                        goto LABEL_1114;
                      }

                      if (v728 == -15925)
                      {
                        v734 = GTTraceFunc_argumentBytesWithMap(v726, *(v726 + 13), v1531);
                        v1332 = GTTraceFunc_argumentBytesWithMap(v726, v734[8], v733);
                      }
                    }

LABEL_1123:
                    v743 = atomic_load((v158 + 4));
                    v744 = v271 + (v743 >> 6);
                    v745 = (HIDWORD(v271) + 1);
                    v271 = (v745 << 32) | v271;
                    if (v745 == v744 - 1)
                    {
                      v271 = (v745 << 32) | v745;
                      v158 = *(v158 + 40);
                    }
                  }

                case 7:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1533);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 152);
                  *__src = 83;
                  *&__src[24] = -1;
                  v162 = *(v50 + 32);
                  if (v162)
                  {
                    v163 = 0;
                    while (1)
                    {
                      v164 = atomic_load((v162 + 4));
                      v165 = v163 + (v164 >> 6) - 1;
                      if (v165 > 0)
                      {
                        break;
                      }

                      v162 = *(v162 + 40);
                      v163 = v165;
                      if (!v162)
                      {
                        v163 = v165;
LABEL_1129:
                        v272 = v163 | (v165 << 32);
                        goto LABEL_1130;
                      }
                    }

                    v165 = 0;
                    goto LABEL_1129;
                  }

                  v272 = 0;
                  while (1)
                  {
LABEL_1130:
                    if (!v162 || (v749 = v162 + 64 + ((HIDWORD(v272) - v272) << 6), (*(v749 + 15) & 8) == 0) || (v549 = *v749, *v749 >= v1528 + v1527))
                    {
                      v576 = apr_palloc(p, 0xB8uLL);
                      v766 = *&__src[48];
                      v768 = *__src;
                      v767 = *&__src[16];
                      v576[2] = *&__src[32];
                      v576[3] = v766;
                      *v576 = v768;
                      v576[1] = v767;
                      v769 = *&__src[112];
                      v771 = *&__src[64];
                      v770 = *&__src[80];
                      v576[6] = *&__src[96];
                      v576[7] = v769;
                      v576[4] = v771;
                      v576[5] = v770;
                      v773 = *&__src[144];
                      v772 = *&__src[160];
                      v774 = *&__src[128];
                      *(v576 + 22) = *&__src[176];
                      v576[9] = v773;
                      v576[10] = v772;
                      v576[8] = v774;
                      goto LABEL_1816;
                    }

                    v750 = *(v749 + 8);
                    if (v750 > -15600)
                    {
                      break;
                    }

                    if (v750 == -15607)
                    {
                      goto LABEL_1140;
                    }

                    if (v750 == -15605)
                    {
                      v576 = apr_palloc(p, 0xB8uLL);
                      v1261 = *&__src[48];
                      v1263 = *__src;
                      v1262 = *&__src[16];
                      v576[2] = *&__src[32];
                      v576[3] = v1261;
                      *v576 = v1263;
                      v576[1] = v1262;
                      v1264 = *&__src[112];
                      v1266 = *&__src[64];
                      v1265 = *&__src[80];
                      v576[6] = *&__src[96];
                      v576[7] = v1264;
                      v576[4] = v1266;
                      v576[5] = v1265;
                      v1268 = *&__src[144];
                      v1267 = *&__src[160];
                      v1269 = *&__src[128];
                      *(v576 + 22) = *&__src[176];
                      v576[9] = v1268;
                      v576[10] = v1267;
                      v576[8] = v1269;
                      goto LABEL_1786;
                    }

LABEL_1145:
                    GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(__src, v1531, (v162 + 64 + ((HIDWORD(v272) - v272) << 6)));
                    v763 = atomic_load((v162 + 4));
                    v764 = v272 + (v763 >> 6);
                    v765 = (HIDWORD(v272) + 1);
                    v272 = (v765 << 32) | v272;
                    if (v765 == v764 - 1)
                    {
                      v272 = (v765 << 32) | v765;
                      v162 = *(v162 + 40);
                    }
                  }

                  if (v750 != -15596 && v750 != -15599)
                  {
                    goto LABEL_1145;
                  }

LABEL_1140:
                  if (v1527 <= v549)
                  {
                    v752 = apr_palloc(p, 0xB8uLL);
                    v753 = *&__src[48];
                    v755 = *__src;
                    v754 = *&__src[16];
                    *(v752 + 2) = *&__src[32];
                    *(v752 + 3) = v753;
                    *v752 = v755;
                    *(v752 + 1) = v754;
                    v756 = *&__src[112];
                    v758 = *&__src[64];
                    v757 = *&__src[80];
                    *(v752 + 6) = *&__src[96];
                    *(v752 + 7) = v756;
                    *(v752 + 4) = v758;
                    *(v752 + 5) = v757;
                    v760 = *&__src[144];
                    v759 = *&__src[160];
                    v761 = *&__src[128];
                    v752[22] = *&__src[176];
                    *(v752 + 9) = v760;
                    *(v752 + 10) = v759;
                    *(v752 + 8) = v761;
                    v762 = *find_entry(ht, v752 + 8, 8uLL, 0);
                    if (v762)
                    {
                      v762 = *(v762 + 32);
                    }

                    v752[4] = v762;
                    apr_hash_set(ht, v752 + 1, 8, v752);
                    v752[3] = v549;
                  }

                  goto LABEL_1145;
                case 8:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 80);
                  memset(&__src[32], 0, 48);
                  *__src = 60;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  LODWORD(v1534) = v1534 + 1;
                  v206 = *(v50 + 32);
                  if (v206 && (*(v206 + 79) & 8) != 0)
                  {
                    v207 = v206 + 64;
                  }

                  else
                  {
                    v207 = 0;
                  }

                  GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(__src, v1531, v207);
                  v1160 = *(v50 + 32);
                  if (!v1160)
                  {
                    v1164 = 0;
                    goto LABEL_1798;
                  }

                  v1161 = 0;
                  while (1)
                  {
                    v1162 = atomic_load((v1160 + 4));
                    v1163 = v1161 + (v1162 >> 6) - 1;
                    if (v1163 > 1)
                    {
                      break;
                    }

                    v1160 = *(v1160 + 40);
                    v1161 = v1163;
                    if (!v1160)
                    {
                      v1161 = v1163;
                      goto LABEL_1797;
                    }
                  }

                  v1163 = 1;
LABEL_1797:
                  v1164 = v1161 | (v1163 << 32);
                  while (1)
                  {
LABEL_1798:
                    if (!v1160 || (v1165 = v1160 + 64 + ((HIDWORD(v1164) - v1164) << 6), (*(v1165 + 15) & 8) == 0) || (v549 = *v1165, *v1165 >= v1528 + v1527))
                    {
                      v576 = apr_palloc(p, 0xB0uLL);
                      v1182 = *&__src[16];
                      v1181 = *&__src[32];
                      *v576 = *__src;
                      v576[1] = v1182;
                      v576[2] = v1181;
                      v1183 = *&__src[96];
                      v1185 = *&__src[48];
                      v1184 = *&__src[64];
                      v576[5] = *&__src[80];
                      v576[6] = v1183;
                      v576[3] = v1185;
                      v576[4] = v1184;
                      v1186 = *&__src[160];
                      v1188 = *&__src[112];
                      v1187 = *&__src[128];
                      v576[9] = *&__src[144];
                      v576[10] = v1186;
                      v576[7] = v1188;
                      v576[8] = v1187;
                      goto LABEL_1816;
                    }

                    v1166 = *(v1165 + 8);
                    if (v1166 > -15561)
                    {
                      break;
                    }

                    if (v1166 == -15570)
                    {
                      goto LABEL_1808;
                    }

                    if (v1166 == -15568)
                    {
                      if (v1527 > v549)
                      {
                        goto LABEL_1852;
                      }

                      v576 = apr_palloc(p, 0xB0uLL);
                      v1271 = *&__src[16];
                      v1270 = *&__src[32];
                      *v576 = *__src;
                      v576[1] = v1271;
                      v576[2] = v1270;
                      v1272 = *&__src[96];
                      v1274 = *&__src[48];
                      v1273 = *&__src[64];
                      v576[5] = *&__src[80];
                      v576[6] = v1272;
                      v576[3] = v1274;
                      v576[4] = v1273;
                      v1275 = *&__src[160];
                      v1277 = *&__src[112];
                      v1276 = *&__src[128];
                      v576[9] = *&__src[144];
                      v576[10] = v1275;
                      v576[7] = v1277;
                      v576[8] = v1276;
LABEL_1786:
                      v1159 = *find_entry(ht, v576 + 8, 8uLL, 0);
                      if (v1159)
                      {
                        v1159 = *(v1159 + 32);
                      }

                      *(v576 + 4) = v1159;
                      apr_hash_set(ht, v576 + 8, 8, v576);
LABEL_1819:
                      *(v576 + 3) = v549;
                      goto LABEL_1852;
                    }

LABEL_1813:
                    GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(__src, v1531, v1160 + 64 + ((HIDWORD(v1164) - v1164) << 6));
                    v1178 = atomic_load((v1160 + 4));
                    v1179 = v1164 + (v1178 >> 6);
                    v1180 = (HIDWORD(v1164) + 1);
                    v1164 = (v1180 << 32) | v1164;
                    if (v1180 == v1179 - 1)
                    {
                      v1164 = (v1180 << 32) | v1180;
                      v1160 = *(v1160 + 40);
                    }
                  }

                  if (v1166 != -15557 && v1166 != -15560)
                  {
                    goto LABEL_1813;
                  }

LABEL_1808:
                  if (v1527 <= v549)
                  {
                    v1168 = apr_palloc(p, 0xB0uLL);
                    v1170 = *&__src[16];
                    v1169 = *&__src[32];
                    *v1168 = *__src;
                    *(v1168 + 1) = v1170;
                    *(v1168 + 2) = v1169;
                    v1171 = *&__src[96];
                    v1173 = *&__src[48];
                    v1172 = *&__src[64];
                    *(v1168 + 5) = *&__src[80];
                    *(v1168 + 6) = v1171;
                    *(v1168 + 3) = v1173;
                    *(v1168 + 4) = v1172;
                    v1174 = *&__src[160];
                    v1176 = *&__src[112];
                    v1175 = *&__src[128];
                    *(v1168 + 9) = *&__src[144];
                    *(v1168 + 10) = v1174;
                    *(v1168 + 7) = v1176;
                    *(v1168 + 8) = v1175;
                    v1177 = *find_entry(ht, v1168 + 8, 8uLL, 0);
                    if (v1177)
                    {
                      v1177 = *(v1177 + 32);
                    }

                    v1168[4] = v1177;
                    apr_hash_set(ht, v1168 + 1, 8, v1168);
                    v1168[3] = v549;
                  }

                  goto LABEL_1813;
                case 9:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[96], 0, 120);
                  memset(&__src[32], 0, 48);
                  *__src = 16;
                  *&__src[24] = -1;
                  *&__src[106] = 2;
                  *&__src[80] = 0xFFFFFFFFFFFFFFFFLL;
                  ++DWORD1(v1534);
                  v203 = *(v50 + 32);
                  if (v203)
                  {
                    v204 = v1515;
                    if ((*(v203 + 79) & 8) != 0)
                    {
                      v205 = (v203 + 64);
                    }

                    else
                    {
                      v205 = 0;
                    }
                  }

                  else
                  {
                    v205 = 0;
                    v204 = v1515;
                  }

                  GTMTLSMAccelerationStructure_processTraceFuncWithMap(__src, v1531, v205);
                  v1118 = v204->elts;
                  v1119 = *(v50 + 32);
                  if (!v1119)
                  {
                    v1123 = 0;
                    goto LABEL_1744;
                  }

                  v1120 = 0;
                  do
                  {
                    v1121 = atomic_load((v1119 + 4));
                    v1122 = v1120 + (v1121 >> 6) - 1;
                    if (v1122 > 1)
                    {
                      v1122 = 1;
                      goto LABEL_1743;
                    }

                    v1119 = *(v1119 + 40);
                    v1120 = v1122;
                  }

                  while (v1119);
                  v1120 = v1122;
LABEL_1743:
                  v1123 = v1120 | (v1122 << 32);
LABEL_1744:
                  v1124 = &v1118[64 * v204->nelts];
                  while (1)
                  {
                    if (v1119 && (v1125 = v1119 + ((0xFFFFFFFF00000001 * v1123) >> 32 << 6), (*(v1125 + 79) & 8) != 0))
                    {
                      v1126 = v1125 + 64;
                    }

                    else
                    {
                      v1126 = 0;
                    }

                    if (v1118 >= v1124)
                    {
                      break;
                    }

                    if (v1126)
                    {
                      if (*v1118 == *v1126)
                      {
                        v1118 += 64;
LABEL_1759:
                        v1129 = atomic_load((v1119 + 4));
                        v1130 = v1123 + (v1129 >> 6);
                        v1127 = HIDWORD(v1123);
LABEL_1762:
                        v1132 = (v1127 + 1);
                        if (v1132 == v1130 - 1)
                        {
                          v1123 = (v1132 << 32) | v1132;
                          v1119 = *(v1119 + 40);
                        }

                        else
                        {
                          v1123 = (v1132 << 32) | v1123;
                        }

                        goto LABEL_1765;
                      }

                      if (*v1118 >= *v1126)
                      {
                        goto LABEL_1759;
                      }
                    }

                    v1126 = v1118;
                    v1118 += 64;
LABEL_1765:
                    if (*v1126 >= v1528 + v1527)
                    {
LABEL_1784:
                      v549 = -1;
LABEL_1785:
                      v576 = apr_palloc(p, 0xD8uLL);
                      v1149 = *&__src[16];
                      *v576 = *__src;
                      v576[1] = v1149;
                      v1150 = *&__src[80];
                      v1152 = *&__src[32];
                      v1151 = *&__src[48];
                      v576[4] = *&__src[64];
                      v576[5] = v1150;
                      v576[2] = v1152;
                      v576[3] = v1151;
                      v1153 = *&__src[144];
                      v1155 = *&__src[96];
                      v1154 = *&__src[112];
                      v576[8] = *&__src[128];
                      v576[9] = v1153;
                      v576[6] = v1155;
                      v576[7] = v1154;
                      v1157 = *&__src[176];
                      v1156 = *&__src[192];
                      v1158 = *&__src[160];
                      *(v576 + 26) = *&__src[208];
                      v576[11] = v1157;
                      v576[12] = v1156;
                      v576[10] = v1158;
                      goto LABEL_1786;
                    }

                    v1133 = *(v1126 + 8);
                    if (v1133 == -10154 || v1133 == -10158)
                    {
                      v1134 = *(GTTraceFunc_argumentBytesWithMap(v1126, *(v1126 + 13), v1531) + 1);
                    }

                    else
                    {
                      v1134 = GTTraceFunc_targetContext(v1126, v1531);
                    }

                    if (v1134 == *&__src[8])
                    {
                      v1135 = *(v1126 + 8);
                      if (v1135 > -15553)
                      {
                        if (v1135 != -15552 && v1135 != -10154 && v1135 != -10158)
                        {
                          goto LABEL_1783;
                        }

LABEL_1779:
                        v1136 = *v1126;
                        if (v1527 <= *v1126)
                        {
                          v1137 = apr_palloc(p, 0xD8uLL);
                          v1138 = *&__src[16];
                          *v1137 = *__src;
                          *(v1137 + 1) = v1138;
                          v1139 = *&__src[80];
                          v1141 = *&__src[32];
                          v1140 = *&__src[48];
                          *(v1137 + 4) = *&__src[64];
                          *(v1137 + 5) = v1139;
                          *(v1137 + 2) = v1141;
                          *(v1137 + 3) = v1140;
                          v1142 = *&__src[144];
                          v1144 = *&__src[96];
                          v1143 = *&__src[112];
                          *(v1137 + 8) = *&__src[128];
                          *(v1137 + 9) = v1142;
                          *(v1137 + 6) = v1144;
                          *(v1137 + 7) = v1143;
                          v1146 = *&__src[176];
                          v1145 = *&__src[192];
                          v1147 = *&__src[160];
                          v1137[26] = *&__src[208];
                          *(v1137 + 11) = v1146;
                          *(v1137 + 12) = v1145;
                          *(v1137 + 10) = v1147;
                          v1148 = *find_entry(ht, v1137 + 8, 8uLL, 0);
                          if (v1148)
                          {
                            v1148 = *(v1148 + 32);
                          }

                          v1137[4] = v1148;
                          apr_hash_set(ht, v1137 + 1, 8, v1137);
                          v1137[3] = v1136;
                        }

                        goto LABEL_1783;
                      }

                      if ((v1135 + 15651) < 2 || v1135 == -15661)
                      {
                        goto LABEL_1779;
                      }

                      if (v1135 == -15659)
                      {
                        v549 = *v1126;
                        if (v1527 > *v1126)
                        {
                          goto LABEL_1852;
                        }

                        goto LABEL_1785;
                      }

LABEL_1783:
                      GTMTLSMAccelerationStructure_processTraceFuncWithMap(__src, v1531, v1126);
                    }
                  }

                  if (!v1126)
                  {
                    goto LABEL_1784;
                  }

                  v1127 = HIDWORD(v1123);
                  if (v1119 && (v1128 = v1119 + ((HIDWORD(v1123) - v1123) << 6), (*(v1128 + 79) & 8) != 0))
                  {
                    v1126 = v1128 + 64;
                  }

                  else
                  {
                    v1126 = 0;
                  }

                  v1131 = atomic_load((v1119 + 4));
                  v1130 = v1123 + (v1131 >> 6);
                  goto LABEL_1762;
                case 10:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1534);
                  v102 = *(v50 + 32);
                  if (!v102)
                  {
                    v258 = 0;
                    goto LABEL_648;
                  }

                  v103 = 0;
                  do
                  {
                    v104 = atomic_load((v102 + 4));
                    v105 = v103 + (v104 >> 6) - 1;
                    if (v105 > 0)
                    {
                      v105 = 0;
                      goto LABEL_647;
                    }

                    v102 = *(v102 + 40);
                    v103 = v105;
                  }

                  while (v102);
                  v103 = v105;
LABEL_647:
                  v258 = v103 | (v105 << 32);
LABEL_648:
                  v1421 = 0;
                  v1441 = 0;
                  v1469 = 0;
                  v466 = 0;
                  v467 = 0;
                  v468 = 0;
                  v1496 = xmmword_24DA8B930;
                  while (1)
                  {
                    if (!v102 || (v469 = v102 + 64, v470 = v102 + 64 + ((HIDWORD(v258) - v258) << 6), (*(v470 + 15) & 8) == 0) || (v359 = *v470, *v470 >= v1528 + v1527))
                    {
                      v366 = apr_palloc(p, 0x50uLL);
                      *v366 = 34;
                      *(v366 + 1) = v1421;
                      v366[1] = v1441;
                      v367 = v366 + 1;
                      v368 = -1;
                      v366[2] = v1469;
                      v366[3] = -1;
                      v366[4] = 0;
                      v366[5] = v466;
                      v366[6] = v467;
                      v366[7] = v468;
                      *(v366 + 4) = v1496;
                      goto LABEL_1352;
                    }

                    v471 = *(v470 + 8);
                    if (v471 == -16320)
                    {
                      if (v1527 > v359)
                      {
                        goto LABEL_1852;
                      }

                      v1192 = apr_palloc(p, 0x50uLL);
                      *v1192 = 34;
                      *(v1192 + 1) = v1421;
                      v1192[1] = v1441;
                      v1193 = v1192 + 1;
                      v1192[2] = v1469;
                      v1192[3] = -1;
                      v1192[4] = 0;
                      v1192[5] = v466;
                      v1192[6] = v467;
                      v1192[7] = v468;
                      *(v1192 + 4) = v1496;
                      goto LABEL_1837;
                    }

                    v472 = v1531;
                    if (v471 == -10149)
                    {
                      break;
                    }

                    if (v471 == -10150)
                    {
                      v475 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 13), v1531);
                      *(&v476 + 1) = *(&v1496 + 1);
                      *&v476 = *(v475 + 1);
LABEL_661:
                      v1496 = v476;
                      goto LABEL_662;
                    }

                    if (v471 == -16311)
                    {
                      v473 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 13), v1531);
                      v1441 = *(v473 + 1);
                      v1469 = *v470;
                      v1421 = *(v470 + 8);
                      v474 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 14), v472);
                      v468 = v474;
                      if (v474)
                      {
                        v1496 = *v474;
                      }

                      v466 = *v473;
                      v467 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), v473[16], v472);
                    }

LABEL_662:
                    v478 = atomic_load((v102 + 4));
                    v479 = v258 + (v478 >> 6);
                    v480 = (HIDWORD(v258) + 1);
                    v258 = (v480 << 32) | v258;
                    if (v480 == v479 - 1)
                    {
                      v258 = (v480 << 32) | v480;
                      v102 = *(v102 + 40);
                    }
                  }

                  v477 = GTTraceFunc_argumentBytesWithMap((v469 + ((HIDWORD(v258) - v258) << 6)), *(v470 + 13), v1531);
                  *&v476 = v1496;
                  *(&v476 + 1) = *(v477 + 1);
                  goto LABEL_661;
                case 11:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1534);
                  v144 = *(v50 + 32);
                  if (!v144)
                  {
                    v268 = 0;
                    goto LABEL_977;
                  }

                  v145 = 0;
                  do
                  {
                    v146 = atomic_load((v144 + 4));
                    v147 = v145 + (v146 >> 6) - 1;
                    if (v147 > 0)
                    {
                      v147 = 0;
                      goto LABEL_976;
                    }

                    v144 = *(v144 + 40);
                    v145 = v147;
                  }

                  while (v144);
                  v145 = v147;
LABEL_976:
                  v268 = v145 | (v147 << 32);
LABEL_977:
                  v1352 = 0;
                  v1393 = 0;
                  v1406 = 0;
                  v1371 = 0;
                  v1381 = 0;
                  v1361 = 0;
                  v679 = 0;
                  v1500 = 0;
                  v680 = 0;
                  v1473 = 0;
                  v1449 = 0;
                  while (1)
                  {
                    if (!v144 || (v681 = v144 + 64 + ((HIDWORD(v268) - v268) << 6), (*(v681 + 15) & 8) == 0) || (v368 = *v681, *v681 >= v1528 + v1527))
                    {
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 100;
                      *(v545 + 1) = v1352;
                      *(v545 + 1) = v1393;
                      v367 = v545 + 8;
                      v368 = -1;
                      *(v545 + 2) = v1406;
                      *(v545 + 3) = -1;
LABEL_1009:
                      *(v545 + 4) = 0;
                      *(v545 + 5) = v1371;
                      *(v545 + 6) = v1381;
                      *(v545 + 7) = v1361;
                      *(v545 + 8) = v679;
                      *(v545 + 9) = v1500;
                      *(v545 + 10) = v680;
                      *(v545 + 11) = v1473;
                      v546 = v1449;
LABEL_1010:
                      *(v545 + 12) = v546;
                      goto LABEL_1352;
                    }

                    v682 = *(v681 + 8);
                    if (v682 > -14856)
                    {
                      break;
                    }

                    if ((v682 + 14970) < 2)
                    {
                      goto LABEL_990;
                    }

                    if (v682 == -14972)
                    {
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 100;
                      *(v545 + 1) = v1352;
                      *(v545 + 1) = v1393;
                      v367 = v545 + 8;
                      *(v545 + 2) = v1406;
                      *(v545 + 3) = -1;
                      goto LABEL_1009;
                    }

LABEL_993:
                    v686 = v1531;
                    if (v682 <= -14970)
                    {
                      if (v682 == -15189)
                      {
                        v692 = GTTraceFunc_argumentBytesWithMap(v681, *(v681 + 13), v1531);
                        v1393 = *(v692 + 1);
                        v1406 = *v681;
                        v1352 = *(v681 + 8);
                        v693 = GTTraceFunc_argumentBytesWithMap(v681, v692[24], v686);
                        v1371 = *v692;
                        v1381 = v693;
                        v1361 = *v693;
                        goto LABEL_1006;
                      }

                      if (v682 == -14970)
                      {
                        v689 = GTTraceFunc_argumentBytesWithMap(v681, *(v681 + 13), v1531);
                        v1500 = v689 + 16;
                        v1473 = *(v689 + 3);
                        v690 = *(v689 + 1);
                        goto LABEL_1003;
                      }
                    }

                    else
                    {
                      switch(v682)
                      {
                        case -14969:
                          v687 = GTTraceFunc_argumentBytesWithMap(v681, *(v681 + 13), v1531);
                          v1500 = v687 + 8;
                          v688 = *(v687 + 4);
LABEL_1002:
                          v1473 = v688;
                          v690 = *(v687 + 2);
LABEL_1003:
                          v1449 = v690;
                          ++v679;
                          v680 = 1;
                          break;
                        case -14855:
                          v691 = GTTraceFunc_argumentBytesWithMap(v681, *(v681 + 13), v1531);
                          v1500 = GTTraceFunc_argumentBytesWithMap(v681, v691[56], v686);
                          v680 = *(v691 + 6);
                          v1473 = *(v691 + 3);
                          ++v679;
                          v1449 = *(v691 + 1);
                          break;
                        case -14802:
                          v687 = GTTraceFunc_argumentBytesWithMap(v681, *(v681 + 13), v1531);
                          v1500 = v687 + 8;
                          v688 = *(v687 + 6);
                          goto LABEL_1002;
                      }
                    }

LABEL_1006:
                    v694 = atomic_load((v144 + 4));
                    v695 = v268 + (v694 >> 6);
                    v696 = (HIDWORD(v268) + 1);
                    v268 = (v696 << 32) | v268;
                    if (v696 == v695 - 1)
                    {
                      v268 = (v696 << 32) | v696;
                      v144 = *(v144 + 40);
                    }
                  }

                  if (v682 != -14802 && v682 != -14855)
                  {
                    goto LABEL_993;
                  }

LABEL_990:
                  v684 = apr_palloc(p, 0x68uLL);
                  *v684 = 100;
                  *(v684 + 1) = v1352;
                  v684[1] = v1393;
                  v684[2] = v1406;
                  v684[3] = -1;
                  v684[4] = 0;
                  v684[5] = v1371;
                  v684[6] = v1381;
                  v684[7] = v1361;
                  v684[8] = v679;
                  v684[9] = v1500;
                  v684[10] = v680;
                  v684[11] = v1473;
                  v684[12] = v1449;
                  v685 = *find_entry(ht, v684 + 8, 8uLL, 0);
                  if (v685)
                  {
                    v685 = *(v685 + 32);
                  }

                  v684[4] = v685;
                  apr_hash_set(ht, v684 + 1, 8, v684);
                  v684[3] = v368;
                  v682 = *(v681 + 8);
                  goto LABEL_993;
                case 12:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 64);
                  *__src = 50;
                  *&__src[24] = -1;
                  *&__src[88] = 2;
                  LODWORD(v1535) = v1535 + 1;
                  v122 = *(v50 + 32);
                  if (!v122)
                  {
                    v263 = 0;
                    goto LABEL_778;
                  }

                  v123 = 0;
                  while (1)
                  {
                    v124 = atomic_load((v122 + 4));
                    v125 = v123 + (v124 >> 6) - 1;
                    if (v125 > 0)
                    {
                      break;
                    }

                    v122 = *(v122 + 40);
                    v123 = v125;
                    if (!v122)
                    {
                      v123 = v125;
                      goto LABEL_777;
                    }
                  }

                  v125 = 0;
LABEL_777:
                  v263 = v123 | (v125 << 32);
                  while (1)
                  {
LABEL_778:
                    if (!v122 || (v590 = v122 + 64 + ((HIDWORD(v263) - v263) << 6), (*(v590 + 15) & 8) == 0) || (v549 = *v590, *v590 >= v1528 + v1527))
                    {
                      v598 = apr_palloc(p, 0x60uLL);
                      v576 = v598;
                      goto LABEL_1472;
                    }

                    v591 = *(v590 + 8);
                    if (v591 > -10209)
                    {
                      break;
                    }

                    if (v591 == -16119 || v591 == -16115)
                    {
                      goto LABEL_789;
                    }

                    if (v591 == -16118)
                    {
                      if (v1527 > v549)
                      {
                        goto LABEL_1852;
                      }

                      v1278 = apr_palloc(p, 0x60uLL);
                      v576 = v1278;
                      goto LABEL_1925;
                    }

LABEL_793:
                    GTMTLSMHeap_processTraceFuncWithMap(__src, v1531, (v122 + 64 + ((HIDWORD(v263) - v263) << 6)));
                    v595 = atomic_load((v122 + 4));
                    v596 = v263 + (v595 >> 6);
                    v597 = (HIDWORD(v263) + 1);
                    v263 = (v597 << 32) | v263;
                    if (v597 == v596 - 1)
                    {
                      v263 = (v597 << 32) | v597;
                      v122 = *(v122 + 40);
                    }
                  }

                  if ((v591 + 10208) >= 2)
                  {
                    goto LABEL_793;
                  }

LABEL_789:
                  if (v1527 <= v549)
                  {
                    v593 = apr_palloc(p, 0x60uLL);
                    *(v593 + 2) = *&__src[32];
                    *(v593 + 3) = *&__src[48];
                    *(v593 + 4) = *&__src[64];
                    *(v593 + 5) = *&__src[80];
                    *v593 = *__src;
                    *(v593 + 1) = *&__src[16];
                    v594 = *find_entry(ht, v593 + 8, 8uLL, 0);
                    if (v594)
                    {
                      v594 = *(v594 + 32);
                    }

                    v593[4] = v594;
                    apr_hash_set(ht, v593 + 1, 8, v593);
                    v593[3] = v549;
                  }

                  goto LABEL_793;
                case 13:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  *&__src[4] = 0;
                  *__src = 0;
                  ++DWORD1(v1535);
                  v90 = *(v50 + 32);
                  if (!v90)
                  {
                    v255 = 0;
                    goto LABEL_522;
                  }

                  v91 = 0;
                  do
                  {
                    v92 = atomic_load((v90 + 4));
                    v93 = v91 + (v92 >> 6) - 1;
                    if (v93 > 0)
                    {
                      v93 = 0;
                      goto LABEL_521;
                    }

                    v90 = *(v90 + 40);
                    v91 = v93;
                  }

                  while (v90);
                  v91 = v93;
LABEL_521:
                  v255 = v91 | (v93 << 32);
LABEL_522:
                  v1440 = 0;
                  v1402 = 0;
                  v1420 = 0;
                  v1467 = 0;
                  v1312 = 0;
                  v1314 = 0;
                  v1319 = 0;
                  v1322 = 0;
                  v1330 = 0;
                  v1334 = 0;
                  v396 = 0;
                  v1339 = 0;
                  v1344 = 0;
                  v1309 = 0;
                  v1310 = 0;
                  v1357 = 0;
                  v1368 = 0;
                  v1390 = 0;
                  v1316 = 0;
                  v1326 = 0;
                  v1350 = 0;
                  v1378 = 0;
                  v397 = 0;
                  v1311 = -1;
                  while (1)
                  {
                    if (!v90 || (v398 = v90 + 64 + ((HIDWORD(v255) - v255) << 6), (*(v398 + 15) & 8) == 0) || (v399 = *v398, *v398 >= v1528 + v1527))
                    {
                      v438 = apr_palloc(p, 0xB8uLL);
                      *v438 = 62;
                      *(v438 + 1) = v1440;
                      v438[1] = v1420;
                      v438[2] = v1467;
                      v438[3] = v1311;
                      v438[4] = 0;
                      v438[5] = v1402;
                      v438[6] = v1314;
                      v438[7] = v1312;
                      v438[8] = v1322;
                      v438[9] = v1330;
                      v438[10] = v396;
                      v438[11] = v1339;
                      v438[12] = v1310;
                      v438[13] = v1344;
                      v438[14] = v1357;
                      v438[15] = v1334;
                      v438[16] = v1368;
                      v438[17] = v1309;
                      v438[18] = v1390;
                      v438[19] = v1319;
                      v438[20] = v1316;
                      *(v438 + 42) = v1326;
                      *(v438 + 43) = v1350;
                      *(v438 + 176) = v1378;
                      *(v438 + 177) = v397;
                      *(v438 + 91) = *&__src[4];
                      *(v438 + 178) = *__src;
                      v439 = *find_entry(ht, v438 + 8, 8uLL, 0);
                      if (v439)
                      {
                        v439 = *(v439 + 32);
                      }

                      v438[4] = v439;
                      apr_hash_set(ht, v438 + 1, 8, v438);
                      v438[3] = -1;
                      goto LABEL_1852;
                    }

                    v400 = *(v398 + 8);
                    if (v400 == -16292)
                    {
                      if (v1527 > v399)
                      {
                        v401 = v1531;
LABEL_531:
                        v402 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v401);
                        v1368 = GTTraceFunc_argumentBytesWithMap(v398, v402[8], v401);
                        goto LABEL_615;
                      }

                      v403 = apr_palloc(p, 0xB8uLL);
                      *v403 = 62;
                      *(v403 + 1) = v1440;
                      v403[1] = v1420;
                      v403[2] = v1467;
                      v403[3] = v1311;
                      v403[4] = 0;
                      v403[5] = v1402;
                      v403[6] = v1314;
                      v403[7] = v1312;
                      v403[8] = v1322;
                      v403[9] = v1330;
                      v403[10] = v396;
                      v403[11] = v1339;
                      v403[12] = v1310;
                      v403[13] = v1344;
                      v403[14] = v1357;
                      v403[15] = v1334;
                      v403[16] = v1368;
                      v403[17] = v1309;
                      v403[18] = v1390;
                      v403[19] = v1319;
                      v403[20] = v1316;
                      *(v403 + 42) = v1326;
                      *(v403 + 43) = v1350;
                      *(v403 + 176) = v1378;
                      *(v403 + 177) = v397;
                      *(v403 + 91) = *&__src[4];
                      *(v403 + 178) = *__src;
                      v404 = *find_entry(ht, v403 + 8, 8uLL, 0);
                      if (v404)
                      {
                        v404 = *(v404 + 32);
                      }

                      v403[4] = v404;
                      apr_hash_set(ht, v403 + 1, 8, v403);
                      v403[3] = v399;
                      v400 = *(v398 + 8);
                    }

                    else if (v400 == -16291)
                    {
                      v1219 = apr_palloc(p, 0xB8uLL);
                      *v1219 = 62;
                      *(v1219 + 1) = v1440;
                      v1219[1] = v1420;
                      v1219[2] = v1467;
                      v1219[3] = v1311;
                      v1219[4] = 0;
                      v1219[5] = v1402;
                      v1219[6] = v1314;
                      v1219[7] = v1312;
                      v1219[8] = v1322;
                      v1219[9] = v1330;
                      v1219[10] = v396;
                      v1219[11] = v1339;
                      v1219[12] = v1310;
                      v1219[13] = v1344;
                      v1219[14] = v1357;
                      v1219[15] = v1334;
                      v1219[16] = v1368;
                      v1219[17] = v1309;
                      v1219[18] = v1390;
                      v1219[19] = v1319;
                      v1219[20] = v1316;
                      *(v1219 + 42) = v1326;
                      *(v1219 + 43) = v1350;
                      *(v1219 + 176) = v1378;
                      *(v1219 + 177) = v397;
                      *(v1219 + 91) = *&__src[4];
                      *(v1219 + 178) = *__src;
                      entry = find_entry(ht, v1219 + 8, 8uLL, 0);
                      v1221 = *entry;
                      if (*entry)
                      {
                        v1221 = *(v1221 + 32);
                      }

                      v1219[4] = v1221;
                      apr_hash_set(ht, v1219 + 1, 8, v1219);
                      v1219[3] = v399;
                      goto LABEL_1852;
                    }

                    v401 = v1531;
                    if (v400 <= -16019)
                    {
                      if (v400 <= -16293)
                      {
                        if (v400 <= -16307)
                        {
                          if (v400 == -16308)
                          {
                            v429 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                            v1467 = *v398;
                            v1440 = *(v398 + 8);
                            v1402 = *v429;
                            v1420 = *(v429 + 1);
                            v430 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v430;
                            if (!v430)
                            {
                              v434 = v429[16];
LABEL_614:
                              v1357 = GTTraceFunc_argumentBytesWithMap(v398, v434, v401);
                              v1316 = 0;
                              v397 = 0;
                              goto LABEL_615;
                            }

                            v1390 = *(v430 + 1);
                            v1378 = v430[16];
                            v411 = v429[16];
                            goto LABEL_599;
                          }

                          if (v400 == -16307)
                          {
                            v419 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                            v1467 = *v398;
                            v1440 = *(v398 + 8);
                            v1402 = *v419;
                            v1420 = *(v419 + 1);
                            v420 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v420;
                            if (v420)
                            {
                              v1390 = *(v420 + 1);
                              v1378 = v420[16];
                              v1357 = GTTraceFunc_argumentBytesWithMap(v398, v419[24], v401);
                              v1319 = *v396;
                            }

                            else
                            {
                              v1357 = GTTraceFunc_argumentBytesWithMap(v398, v419[24], v401);
                              v1319 = 0;
                            }

                            v397 = 1;
                          }
                        }

                        else
                        {
                          if (v400 != -16306)
                          {
                            if (v400 != -16305 && v400 != -16304)
                            {
                              goto LABEL_615;
                            }

                            v412 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                            v1467 = *v398;
                            v1440 = *(v398 + 8);
                            v1402 = *v412;
                            v1420 = *(v412 + 1);
                            v413 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v413;
                            if (v413)
                            {
                              v1390 = *(v413 + 1);
                              v1378 = v413[16];
                            }

                            v1357 = GTTraceFunc_argumentBytesWithMap(v398, v412[24], v401);
                            v1334 = GTTraceFunc_argumentBytesWithMap(v398, v412[25], v401);
                            goto LABEL_589;
                          }

                          v424 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                          v1467 = *v398;
                          v1440 = *(v398 + 8);
                          v1402 = *v424;
                          v1420 = *(v424 + 1);
                          v425 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v425;
                          if (v425)
                          {
                            v1390 = *(v425 + 1);
                            v1378 = v425[16];
                          }

                          v1357 = GTTraceFunc_argumentBytesWithMap(v398, v424[24], v401);
                          v397 = 3;
                        }
                      }

                      else if (v400 > -16084)
                      {
                        if (v400 == -16083)
                        {
                          v433 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                          v1309 = GTTraceFunc_argumentBytesWithMap(v398, v433[8], v401);
                          goto LABEL_615;
                        }

                        if (v400 != -16039)
                        {
                          if (v400 != -16029)
                          {
                            goto LABEL_615;
                          }

LABEL_577:
                          v416 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                          v1467 = *v398;
                          v1440 = *(v398 + 8);
                          v1402 = *v416;
                          v1420 = *(v416 + 1);
                          v417 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v417;
                          if (v417)
                          {
                            v1390 = *(v417 + 1);
                            v1378 = v417[16];
                          }

                          v418 = GTTraceFunc_argumentBytesWithMap(v398, v416[24], v401);
                          if (v418)
                          {
                            v1326 = *v418;
                            v1322 = v418 + 8;
                          }

                          v1330 = GTTraceFunc_argumentBytesWithMap(v398, v416[25], v401);
                          v397 = 4;
                          goto LABEL_615;
                        }

                        v431 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                        v1467 = *v398;
                        v1440 = *(v398 + 8);
                        v1402 = *v431;
                        v1420 = *(v431 + 1);
                        v432 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                        v396 = v432;
                        if (v432)
                        {
                          v1390 = *(v432 + 1);
                          v1378 = v432[16];
                        }

                        v1357 = GTTraceFunc_argumentBytesWithMap(v398, v431[24], v401);
                        if (GTString_isMetalPackageURL(v1357))
                        {
                          v397 = 7;
                        }

                        else
                        {
                          v397 = 1;
                        }

                        if (v396)
                        {
                          v1319 = *v396;
                        }

                        else
                        {
                          v1319 = 0;
                        }
                      }

                      else
                      {
                        switch(v400)
                        {
                          case -16292:
                            goto LABEL_531;
                          case -16291:
                            v1311 = *v398;
                            break;
                          case -16095:
                            v409 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                            v1467 = *v398;
                            v1440 = *(v398 + 8);
                            v1402 = *v409;
                            v1420 = *(v409 + 1);
                            v410 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                            v396 = v410;
                            if (!v410)
                            {
                              v434 = v409[24];
                              goto LABEL_614;
                            }

                            v1390 = *(v410 + 1);
                            v1378 = v410[16];
                            v411 = v409[24];
LABEL_599:
                            v1357 = GTTraceFunc_argumentBytesWithMap(v398, v411, v401);
                            v397 = 0;
                            v1316 = *v396;
                            break;
                        }
                      }
                    }

                    else if (v400 > -15421)
                    {
                      if (v400 <= -15135)
                      {
                        if (v400 != -15420 && v400 != -15419)
                        {
                          if (v400 != -15135)
                          {
                            goto LABEL_615;
                          }

LABEL_586:
                          v421 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                          v1467 = *v398;
                          v1440 = *(v398 + 8);
                          v1402 = *v421;
                          v1420 = *(v421 + 1);
                          v422 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v422;
                          if (v422)
                          {
                            v1390 = *(v422 + 1);
                            v1378 = v422[16];
                          }

                          v1314 = *v421;
                          v423 = GTTraceFunc_argumentBytesWithMap(v398, v421[24], v401);
                          v1334 = *(v423 + 1);
                          v1312 = v423;
                          v1357 = *(v423 + 3);
LABEL_589:
                          v397 = 2;
                          goto LABEL_615;
                        }

LABEL_566:
                        v414 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                        v1467 = *v398;
                        v1440 = *(v398 + 8);
                        v1402 = *v414;
                        v1420 = *(v414 + 1);
                        v415 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                        v396 = v415;
                        if (v415)
                        {
                          v1390 = *(v415 + 1);
                          v1378 = v415[16];
                        }

                        v1339 = GTTraceFunc_argumentBytesWithMap(v398, v414[24], v401);
                        v1344 = *(v1339 + 2);
                        v408 = *(v1339 + 10);
LABEL_569:
                        v1350 = v408;
                        v397 = 6;
                        goto LABEL_615;
                      }

                      switch(v400)
                      {
                        case -15134:
                          goto LABEL_586;
                        case -10188:
                          v428 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                          v1390 = GTTraceFunc_argumentBytesWithMap(v398, v428[8], v401);
                          break;
                        case -10183:
                          v1378 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531)[8];
                          break;
                      }
                    }

                    else
                    {
                      if (v400 > -15436)
                      {
                        if (v400 != -15435 && v400 != -15434 && v400 != -15421)
                        {
                          goto LABEL_615;
                        }

                        goto LABEL_566;
                      }

                      switch(v400)
                      {
                        case -16018:
                          goto LABEL_577;
                        case -15847:
                          v426 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                          v1467 = *v398;
                          v1440 = *(v398 + 8);
                          v1402 = *v426;
                          v1420 = *(v426 + 1);
                          v427 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v427;
                          if (v427)
                          {
                            v1390 = *(v427 + 1);
                            v1378 = v427[16];
                          }

                          v1322 = GTTraceFunc_argumentBytesWithMap(v398, v426[32], v401);
                          v1326 = *(v426 + 4);
                          v1330 = GTTraceFunc_argumentBytesWithMap(v398, v426[33], v401);
                          v397 = 5;
                          break;
                        case -15693:
                          v405 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 13), v1531);
                          v1467 = *v398;
                          v1440 = *(v398 + 8);
                          v1402 = *v405;
                          v1420 = *(v405 + 1);
                          v406 = GTTraceFunc_argumentBytesWithMap(v398, *(v398 + 14), v401);
                          v396 = v406;
                          if (v406)
                          {
                            v1390 = *(v406 + 1);
                            v1378 = v406[16];
                          }

                          v1310 = GTTraceFunc_argumentBytesWithMap(v398, v405[24], v401);
                          v407 = GTTraceFunc_argumentBytesWithMap(v398, v405[25], v401);
                          v408 = *v407;
                          v1344 = v407 + 8;
                          goto LABEL_569;
                      }
                    }

LABEL_615:
                    v435 = atomic_load((v90 + 4));
                    v436 = v255 + (v435 >> 6);
                    v437 = (HIDWORD(v255) + 1);
                    v255 = (v437 << 32) | v255;
                    if (v437 == v436 - 1)
                    {
                      v255 = (v437 << 32) | v437;
                      v90 = *(v90 + 40);
                    }
                  }

                case 14:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  *&__src[4] = 0;
                  *__src = 0;
                  ++DWORD2(v1535);
                  v170 = *(v50 + 32);
                  if (!v170)
                  {
                    v274 = 0;
                    goto LABEL_1189;
                  }

                  v171 = 0;
                  do
                  {
                    v172 = atomic_load((v170 + 4));
                    v173 = v171 + (v172 >> 6) - 1;
                    if (v173 > 0)
                    {
                      v173 = 0;
                      goto LABEL_1188;
                    }

                    v170 = *(v170 + 40);
                    v171 = v173;
                  }

                  while (v170);
                  v171 = v173;
LABEL_1188:
                  v274 = v171 | (v173 << 32);
LABEL_1189:
                  v1453 = 0;
                  v1477 = 0;
                  v1504 = 0;
                  v1355 = 0;
                  v1364 = 0;
                  v1410 = 0;
                  v1428 = 0;
                  v1396 = 0;
                  v796 = 0;
                  v1374 = 0;
                  v1384 = 0u;
                  v1348 = -1;
                  while (1)
                  {
                    if (!v170 || (v797 = v170 + 64, v798 = v170 + 64 + ((HIDWORD(v274) - v274) << 6), (*(v798 + 15) & 8) == 0) || (v368 = *v798, *v798 >= v1528 + v1527))
                    {
                      v713 = apr_palloc(p, 0x78uLL);
                      v713[1] = v1477;
                      v714 = v713 + 1;
                      *v713 = 37;
                      *(v713 + 1) = v1453;
                      v713[2] = v1504;
                      v713[3] = v1348;
                      v713[4] = 0;
                      v713[5] = v1355;
                      v713[6] = v1428;
                      v713[7] = v1364;
                      v713[8] = 0;
                      v713[9] = v1410;
                      v713[10] = v1396;
                      v713[11] = v796;
                      *(v713 + 6) = v1384;
                      *(v713 + 56) = v1374;
                      *(v713 + 114) = *__src;
                      *(v713 + 59) = *&__src[4];
                      goto LABEL_1256;
                    }

                    v799 = *(v798 + 8);
                    if (v799 == -15676)
                    {
                      if (v1527 > v368)
                      {
                        v800 = v1531;
LABEL_1205:
                        v803 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 13), v800);
                        v1410 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), v803[8], v800);
                        goto LABEL_1226;
                      }

                      v801 = apr_palloc(p, 0x78uLL);
                      v801[1] = v1477;
                      *v801 = 37;
                      *(v801 + 1) = v1453;
                      v801[2] = v1504;
                      v801[3] = v1348;
                      v801[4] = 0;
                      v801[5] = v1355;
                      v801[6] = v1428;
                      v801[7] = v1364;
                      v801[8] = 0;
                      v801[9] = v1410;
                      v801[10] = v1396;
                      v801[11] = v796;
                      *(v801 + 6) = v1384;
                      *(v801 + 56) = v1374;
                      *(v801 + 114) = *__src;
                      *(v801 + 59) = *&__src[4];
                      v802 = *find_entry(ht, v801 + 8, 8uLL, 0);
                      if (v802)
                      {
                        v802 = *(v802 + 32);
                      }

                      v801[4] = v802;
                      apr_hash_set(ht, v801 + 1, 8, v801);
                      v801[3] = v368;
                      v799 = *(v798 + 8);
                    }

                    else if (v799 == -15675)
                    {
                      v366 = apr_palloc(p, 0x78uLL);
                      v366[1] = v1477;
                      v367 = v366 + 1;
                      *v366 = 37;
                      *(v366 + 1) = v1453;
                      v366[2] = v1504;
                      v366[3] = v1348;
                      v366[4] = 0;
                      v366[5] = v1355;
                      v366[6] = v1428;
                      v366[7] = v1364;
                      v366[8] = 0;
                      v366[9] = v1410;
                      v366[10] = v1396;
                      v366[11] = v796;
                      *(v366 + 6) = v1384;
                      *(v366 + 56) = v1374;
                      *(v366 + 114) = *__src;
                      *(v366 + 59) = *&__src[4];
                      goto LABEL_1352;
                    }

                    v800 = v1531;
                    if (v799 > -15140)
                    {
                      if (v799 <= -15138)
                      {
                        v804 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 13), v1531);
                        v1477 = *(v804 + 1);
                        v1504 = *v798;
                        v1453 = *(v798 + 8);
                        v805 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 14), v800);
                        if (v805)
                        {
                          v1396 = *v805;
                          v1384 = *(v805 + 8);
                          v1374 = *(v805 + 12);
                        }

                        v1428 = *v804;
                        goto LABEL_1224;
                      }

                      if (v799 != -15137 && v799 != -15136)
                      {
                        goto LABEL_1226;
                      }

                      v806 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 13), v1531);
                      v1477 = *(v806 + 1);
                      v1504 = *v798;
                      v1453 = *(v798 + 8);
                      v808 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 14), v800);
                      if (v808)
                      {
                        v1396 = *v808;
                        v1384 = *(v808 + 8);
                        v1374 = *(v808 + 12);
                      }

                      v1428 = *v806;
                      goto LABEL_1220;
                    }

                    if (v799 > -15676)
                    {
                      if (v799 == -15675)
                      {
                        v1348 = *v798;
                        goto LABEL_1226;
                      }

                      if (v799 == -15613)
                      {
                        v806 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 13), v1531);
                        v1477 = *(v806 + 1);
                        v1504 = *v798;
                        v1453 = *(v798 + 8);
                        v807 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 14), v800);
                        if (v807)
                        {
                          v1396 = *v807;
                          v1384 = *(v807 + 8);
                          v1374 = *(v807 + 12);
                        }

                        v1355 = *v806;
LABEL_1220:
                        v796 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), v806[24], v800);
                      }
                    }

                    else
                    {
                      if (v799 == -15695)
                      {
                        v804 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 13), v1531);
                        v1477 = *(v804 + 1);
                        v1504 = *v798;
                        v1453 = *(v798 + 8);
                        v809 = GTTraceFunc_argumentBytesWithMap((v797 + ((HIDWORD(v274) - v274) << 6)), *(v798 + 14), v800);
                        if (v809)
                        {
                          v1396 = *v809;
                          v1384 = *(v809 + 8);
                          v1374 = *(v809 + 12);
                        }

                        v1355 = *v804;
LABEL_1224:
                        v1364 = *(v804 + 2);
                        goto LABEL_1226;
                      }

                      if (v799 == -15676)
                      {
                        goto LABEL_1205;
                      }
                    }

LABEL_1226:
                    v810 = atomic_load((v170 + 4));
                    v811 = v274 + (v810 >> 6);
                    v812 = (HIDWORD(v274) + 1);
                    v274 = (v812 << 32) | v274;
                    if (v812 == v811 - 1)
                    {
                      v274 = (v812 << 32) | v812;
                      v170 = *(v170 + 40);
                    }
                  }

                case 15:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[4] = 0;
                  *__src = 0;
                  ++HIDWORD(v1535);
                  v174 = *(v50 + 32);
                  if (!v174)
                  {
                    v275 = 0;
                    goto LABEL_1231;
                  }

                  v175 = 0;
                  do
                  {
                    v176 = atomic_load((v174 + 4));
                    v177 = v175 + (v176 >> 6) - 1;
                    if (v177 > 0)
                    {
                      v177 = 0;
                      goto LABEL_1230;
                    }

                    v174 = *(v174 + 40);
                    v175 = v177;
                  }

                  while (v174);
                  v175 = v177;
LABEL_1230:
                  v275 = v175 | (v177 << 32);
LABEL_1231:
                  v813 = 0;
                  v1429 = 0;
                  v1454 = 0;
                  v1385 = 0;
                  v1505 = 0;
                  v1375 = 0;
                  LOBYTE(v1478) = 0;
                  v1365 = 0u;
                  v1397 = 0;
                  v1411 = -1;
                  while (1)
                  {
                    if (!v174 || (v814 = v174 + 64, v815 = v174 + 64 + ((HIDWORD(v275) - v275) << 6), (*(v815 + 15) & 8) == 0) || (v368 = *v815, *v815 >= v1528 + v1527))
                    {
                      v713 = apr_palloc(p, 0x58uLL);
                      *v713 = 67;
                      *(v713 + 1) = v813;
                      v713[1] = v1397;
                      v714 = v713 + 1;
                      v713[2] = v1429;
                      v713[3] = v1411;
                      v713[4] = 0;
                      v713[5] = v1454;
                      v713[6] = v1385;
                      v713[7] = v1505;
                      *(v713 + 4) = v1365;
                      *(v713 + 40) = v1375;
                      *(v713 + 82) = v1478;
                      *(v713 + 83) = *__src;
                      *(v713 + 87) = __src[4];
                      goto LABEL_1256;
                    }

                    v816 = *(v815 + 8);
                    if (v816 == -15743)
                    {
                      if (v1527 > v368)
                      {
                        v817 = v1531;
LABEL_1250:
                        v822 = GTTraceFunc_argumentBytesWithMap((v814 + ((HIDWORD(v275) - v275) << 6)), *(v815 + 13), v817);
                        v1505 = GTTraceFunc_argumentBytesWithMap((v814 + ((HIDWORD(v275) - v275) << 6)), v822[8], v817);
                        goto LABEL_1253;
                      }

                      v818 = apr_palloc(p, 0x58uLL);
                      *v818 = 67;
                      *(v818 + 1) = v813;
                      v818[1] = v1397;
                      v818[2] = v1429;
                      v818[3] = v1411;
                      v818[4] = 0;
                      v818[5] = v1454;
                      v818[6] = v1385;
                      v818[7] = v1505;
                      *(v818 + 4) = v1365;
                      *(v818 + 40) = v1375;
                      *(v818 + 82) = v1478;
                      *(v818 + 83) = *__src;
                      *(v818 + 87) = __src[4];
                      v819 = *find_entry(ht, v818 + 8, 8uLL, 0);
                      if (v819)
                      {
                        v819 = *(v819 + 32);
                      }

                      v818[4] = v819;
                      apr_hash_set(ht, v818 + 1, 8, v818);
                      v818[3] = v368;
                      v816 = *(v815 + 8);
                    }

                    else if (v816 == -15742)
                    {
                      if (v1527 > v368)
                      {
                        goto LABEL_1852;
                      }

                      v366 = apr_palloc(p, 0x58uLL);
                      *v366 = 67;
                      *(v366 + 1) = v813;
                      v366[1] = v1397;
                      v367 = v366 + 1;
                      v366[2] = v1429;
                      v366[3] = v1411;
                      v366[4] = 0;
                      v366[5] = v1454;
                      v366[6] = v1385;
                      v366[7] = v1505;
                      *(v366 + 4) = v1365;
                      *(v366 + 40) = v1375;
                      *(v366 + 82) = v1478;
                      *(v366 + 83) = *__src;
                      *(v366 + 87) = __src[4];
                      goto LABEL_1352;
                    }

                    v817 = v1531;
                    if (v816 > -15745)
                    {
                      if (v816 == -15744)
                      {
                        v1478 = *(GTTraceFunc_argumentBytesWithMap((v814 + ((HIDWORD(v275) - v275) << 6)), *(v815 + 13), v1531) + 2);
                        goto LABEL_1253;
                      }

                      if (v816 == -15743)
                      {
                        goto LABEL_1250;
                      }
                    }

                    else if (v816 == -16291)
                    {
                      v1411 = *v815;
                    }

                    else if (v816 == -16075)
                    {
                      v820 = GTTraceFunc_argumentBytesWithMap((v814 + ((HIDWORD(v275) - v275) << 6)), *(v815 + 13), v1531);
                      v1429 = *v815;
                      v813 = *(v815 + 8);
                      v1397 = *(v820 + 1);
                      v1454 = *v820;
                      v1385 = GTTraceFunc_argumentBytesWithMap((v814 + ((HIDWORD(v275) - v275) << 6)), v820[24], v817);
                      v821 = GTTraceFunc_argumentBytesWithMap((v814 + ((HIDWORD(v275) - v275) << 6)), *(v815 + 14), v817);
                      if (v821)
                      {
                        v1375 = *(v821 + 12);
                        v1365 = *(v821 + 8);
                      }
                    }

LABEL_1253:
                    v823 = atomic_load((v174 + 4));
                    v824 = v275 + (v823 >> 6);
                    v825 = (HIDWORD(v275) + 1);
                    v275 = (v825 << 32) | v275;
                    if (v825 == v824 - 1)
                    {
                      v275 = (v825 << 32) | v825;
                      v174 = *(v174 + 40);
                    }
                  }

                case 16:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1536) = v1536 + 1;
                  v216 = *(v50 + 32);
                  if (!v216)
                  {
                    v284 = 0;
                    goto LABEL_1475;
                  }

                  v217 = 0;
                  while (1)
                  {
                    v218 = atomic_load((v216 + 4));
                    v219 = v217 + (v218 >> 6) - 1;
                    if (v219 > 0)
                    {
                      break;
                    }

                    v216 = *(v216 + 40);
                    v217 = v219;
                    if (!v216)
                    {
                      v217 = v219;
                      goto LABEL_1474;
                    }
                  }

                  v219 = 0;
LABEL_1474:
                  v284 = v217 | (v219 << 32);
LABEL_1475:
                  v932 = 0;
                  v933 = 0;
                  v934 = 0;
                  v1483 = 0;
                  v1490 = 0;
                  while (v216)
                  {
                    v935 = v216 + 64;
                    v936 = v216 + 64 + ((HIDWORD(v284) - v284) << 6);
                    if ((*(v936 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v313 = *v936;
                    if (*v936 >= v1528 + v1527)
                    {
                      break;
                    }

                    v937 = *(v936 + 8);
                    if (v937 == -16127)
                    {
                      if (v1527 > v313)
                      {
                        goto LABEL_1852;
                      }

                      v1191 = apr_palloc(p, 0x38uLL);
                      v1234 = v1191;
                      *v1191 = 41;
                      *(v1191 + 1) = v932;
                      *(v1191 + 1) = v933;
                      v1235 = v1191 + 8;
                      *(v1191 + 2) = v934;
                      *(v1191 + 3) = -1;
                      *(v1191 + 4) = 0;
                      *(v1191 + 5) = v1483;
LABEL_1846:
                      *(v1191 + 6) = v1490;
LABEL_1887:
                      v1236 = *find_entry(ht, v1235, 8uLL, 0);
                      if (v1236)
                      {
                        v1236 = *(v1236 + 32);
                      }

                      *(v1234 + 4) = v1236;
                      apr_hash_set(ht, v1235, 8, v1234);
                      *(v1234 + 3) = v313;
                      goto LABEL_1852;
                    }

                    v938 = v1531;
                    if (v937 == -16136)
                    {
                      v940 = GTTraceFunc_argumentBytesWithMap((v935 + ((HIDWORD(v284) - v284) << 6)), *(v936 + 13), v1531);
                      v1490 = GTTraceFunc_argumentBytesWithMap((v935 + ((HIDWORD(v284) - v284) << 6)), v940[8], v938);
                    }

                    else if (v937 == -16128)
                    {
                      v939 = GTTraceFunc_argumentBytesWithMap((v935 + ((HIDWORD(v284) - v284) << 6)), *(v936 + 13), v1531);
                      v934 = *v936;
                      v932 = *(v936 + 8);
                      v933 = *(v939 + 1);
                      v1483 = *v939;
                    }

                    v941 = atomic_load((v216 + 4));
                    v942 = v284 + (v941 >> 6);
                    v943 = (HIDWORD(v284) + 1);
                    v284 = (v943 << 32) | v284;
                    if (v943 == v942 - 1)
                    {
                      v284 = (v943 << 32) | v943;
                      v216 = *(v216 + 40);
                    }
                  }

                  v325 = apr_palloc(p, 0x38uLL);
                  v304 = v325;
                  *v325 = 41;
                  *(v325 + 1) = v932;
                  *(v325 + 1) = v933;
                  v305 = v325 + 8;
                  v306 = -1;
                  *(v325 + 2) = v934;
                  *(v325 + 3) = -1;
                  *(v325 + 4) = 0;
                  *(v325 + 5) = v1483;
                  goto LABEL_1487;
                case 17:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1536);
                  v208 = *(v50 + 32);
                  if (!v208)
                  {
                    v282 = 0;
                    goto LABEL_1428;
                  }

                  v209 = 0;
                  do
                  {
                    v210 = atomic_load((v208 + 4));
                    v211 = v209 + (v210 >> 6) - 1;
                    if (v211 > 0)
                    {
                      v211 = 0;
                      goto LABEL_1427;
                    }

                    v208 = *(v208 + 40);
                    v209 = v211;
                  }

                  while (v208);
                  v209 = v211;
LABEL_1427:
                  v282 = v209 | (v211 << 32);
LABEL_1428:
                  v910 = 0;
                  v1414 = 0;
                  v1433 = 0;
                  v1458 = 0;
                  v1509 = 0;
                  v1482 = -1;
                  while (1)
                  {
                    if (!v208 || (v911 = v208 + 64, v912 = v208 + 64 + ((HIDWORD(v282) - v282) << 6), (*(v912 + 15) & 8) == 0) || (v900 = *v912, *v912 >= v1528 + v1527))
                    {
                      v908 = apr_palloc(p, 0x38uLL);
                      v339 = v908;
                      *v908 = 38;
                      *(v908 + 1) = v910;
                      *(v908 + 1) = v1414;
                      v340 = v908 + 8;
                      *(v908 + 2) = v1433;
                      *(v908 + 3) = v1482;
                      *(v908 + 4) = 0;
                      *(v908 + 5) = v1458;
                      v909 = v1509;
                      goto LABEL_1449;
                    }

                    v913 = *(v912 + 8);
                    if (v913 == -15880)
                    {
                      if (v1527 > v900)
                      {
                        v914 = v1531;
LABEL_1444:
                        v919 = GTTraceFunc_argumentBytesWithMap((v911 + ((HIDWORD(v282) - v282) << 6)), *(v912 + 13), v914);
                        v1509 = GTTraceFunc_argumentBytesWithMap((v911 + ((HIDWORD(v282) - v282) << 6)), v919[8], v914);
                        goto LABEL_1446;
                      }

                      v915 = apr_palloc(p, 0x38uLL);
                      *v915 = 38;
                      *(v915 + 1) = v910;
                      v915[1] = v1414;
                      v915[2] = v1433;
                      v915[3] = v1482;
                      v915[4] = 0;
                      v915[5] = v1458;
                      v915[6] = v1509;
                      v916 = *find_entry(ht, v915 + 8, 8uLL, 0);
                      if (v916)
                      {
                        v916 = *(v916 + 32);
                      }

                      v915[4] = v916;
                      apr_hash_set(ht, v915 + 1, 8, v915);
                      v915[3] = v900;
                      v913 = *(v912 + 8);
                    }

                    else if (v913 == -15879)
                    {
                      if (v1527 > v900)
                      {
                        goto LABEL_1852;
                      }

                      v1211 = apr_palloc(p, 0x38uLL);
                      v1212 = v1211;
                      *v1211 = 38;
                      *(v1211 + 1) = v910;
                      *(v1211 + 1) = v1414;
                      v1213 = v1211 + 8;
                      *(v1211 + 2) = v1433;
                      *(v1211 + 3) = v1482;
                      *(v1211 + 4) = 0;
                      *(v1211 + 5) = v1458;
                      v1214 = v1509;
                      goto LABEL_1873;
                    }

                    if (v913 == -15879)
                    {
                      v1482 = *v912;
                      goto LABEL_1446;
                    }

                    v914 = v1531;
                    if (v913 == -15880)
                    {
                      goto LABEL_1444;
                    }

                    if (v913 == -15997)
                    {
                      v917 = GTTraceFunc_argumentBytesWithMap((v911 + ((HIDWORD(v282) - v282) << 6)), *(v912 + 13), v1531);
                      v910 = *(v912 + 8);
                      v918 = *(v917 + 1);
                      v1414 = v918;
                      v1433 = *v912;
                      v1458 = *v917;
                    }

LABEL_1446:
                    v920 = atomic_load((v208 + 4));
                    v921 = v282 + (v920 >> 6);
                    v922 = (HIDWORD(v282) + 1);
                    v282 = (v922 << 32) | v282;
                    if (v922 == v921 - 1)
                    {
                      v282 = (v922 << 32) | v922;
                      v208 = *(v208 + 40);
                    }
                  }

                case 18:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1536);
                  v82 = *(v50 + 32);
                  if (!v82)
                  {
                    v253 = 0;
                    goto LABEL_477;
                  }

                  v83 = 0;
                  do
                  {
                    v84 = atomic_load((v82 + 4));
                    v85 = v83 + (v84 >> 6) - 1;
                    if (v85 > 0)
                    {
                      v85 = 0;
                      goto LABEL_476;
                    }

                    v82 = *(v82 + 40);
                    v83 = v85;
                  }

                  while (v82);
                  v83 = v85;
LABEL_476:
                  v253 = v83 | (v85 << 32);
LABEL_477:
                  v369 = 0;
                  v1401 = 0;
                  v1419 = 0;
                  v1465 = 0;
                  v1439 = 0;
                  v1494 = 0;
                  v1389 = 0;
                  v1367 = -1;
                  v1377 = 0;
                  while (1)
                  {
                    if (!v82 || (v370 = v82 + 64, v371 = v82 + 64 + ((HIDWORD(v253) - v253) << 6), (*(v371 + 15) & 8) == 0) || (v306 = *v371, *v371 >= v1528 + v1527))
                    {
                      v339 = apr_palloc(p, 0x50uLL);
                      *v339 = 76;
                      *(v339 + 1) = v369;
                      *(v339 + 1) = v1401;
                      v340 = v339 + 8;
                      *(v339 + 2) = v1465;
                      *(v339 + 3) = v1367;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1419;
                      *(v339 + 6) = v1377;
                      *(v339 + 7) = v1439;
                      *(v339 + 8) = v1494;
                      *(v339 + 9) = v1389;
                      goto LABEL_1562;
                    }

                    v372 = *(v371 + 8);
                    if ((v372 + 15975) >= 2)
                    {
                      if (v372 == -15973)
                      {
                        if (v1527 > v306)
                        {
                          goto LABEL_1852;
                        }

                        v304 = apr_palloc(p, 0x50uLL);
                        *v304 = 76;
                        *(v304 + 1) = v369;
                        *(v304 + 1) = v1401;
                        v305 = v304 + 8;
                        *(v304 + 2) = v1465;
                        *(v304 + 3) = v1367;
                        *(v304 + 4) = 0;
                        *(v304 + 5) = v1419;
                        *(v304 + 6) = v1377;
                        *(v304 + 7) = v1439;
                        *(v304 + 8) = v1494;
                        *(v304 + 9) = v1389;
                        goto LABEL_1849;
                      }
                    }

                    else if (v1527 <= v306)
                    {
                      v373 = apr_palloc(p, 0x50uLL);
                      *v373 = 76;
                      *(v373 + 1) = v369;
                      v373[1] = v1401;
                      v373[2] = v1465;
                      v373[3] = v1367;
                      v373[4] = 0;
                      v373[5] = v1419;
                      v373[6] = v1377;
                      v373[7] = v1439;
                      v373[8] = v1494;
                      v373[9] = v1389;
                      v374 = *find_entry(ht, v373 + 8, 8uLL, 0);
                      if (v374)
                      {
                        v374 = *(v374 + 32);
                      }

                      v373[4] = v374;
                      apr_hash_set(ht, v373 + 1, 8, v373);
                      v373[3] = v306;
                      v372 = *(v371 + 8);
                    }

                    v375 = v1531;
                    if (v372 <= -15974)
                    {
                      switch(v372)
                      {
                        case -15996:
                          v379 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1531);
                          v1494 = 0;
                          v1465 = *v371;
                          v369 = *(v371 + 8);
                          v1401 = *(v379 + 1);
                          v1419 = *v379;
                          v1439 = *(v379 + 2);
                          v1389 = *(v379 + 6);
                          break;
                        case -15975:
                          v377 = *(GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1531) + 1);
                          goto LABEL_503;
                        case -15974:
                          v378 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1531);
                          v1377 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), v378[8], v375);
                          break;
                      }
                    }

                    else if (v372 > -15910)
                    {
                      if (v372 == -15909)
                      {
                        v380 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1531);
                        v1465 = *v371;
                        v369 = *(v371 + 8);
                        v1401 = *(v380 + 1);
                        v1419 = *v380;
                        v1389 = *(v380 + 8);
                        v377 = *(v380 + 3);
                        v1439 = *(v380 + 2);
                        goto LABEL_503;
                      }

                      if (v372 == -15907)
                      {
                        v1439 = *(GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1531) + 1);
                      }
                    }

                    else if (v372 == -15973)
                    {
                      v1367 = *v371;
                    }

                    else if (v372 == -15912)
                    {
                      v376 = GTTraceFunc_argumentBytesWithMap((v370 + ((HIDWORD(v253) - v253) << 6)), *(v371 + 13), v1531);
                      v1465 = *v371;
                      v369 = *(v371 + 8);
                      v1401 = *(v376 + 1);
                      v1419 = *v376;
                      v1389 = *(v376 + 6);
                      v377 = *(v376 + 2);
LABEL_503:
                      v1494 = v377;
                    }

                    v381 = atomic_load((v82 + 4));
                    v382 = v253 + (v381 >> 6);
                    v383 = (HIDWORD(v253) + 1);
                    v253 = (v383 << 32) | v253;
                    if (v383 == v382 - 1)
                    {
                      v253 = (v383 << 32) | v383;
                      v82 = *(v82 + 40);
                    }
                  }

                case 19:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  *__src = 0;
                  ++HIDWORD(v1536);
                  v126 = *(v50 + 32);
                  if (!v126)
                  {
                    v264 = 0;
                    goto LABEL_798;
                  }

                  v127 = 0;
                  while (1)
                  {
                    v128 = atomic_load((v126 + 4));
                    v129 = v127 + (v128 >> 6) - 1;
                    if (v129 > 0)
                    {
                      break;
                    }

                    v126 = *(v126 + 40);
                    v127 = v129;
                    if (!v126)
                    {
                      v127 = v129;
                      goto LABEL_797;
                    }
                  }

                  v129 = 0;
LABEL_797:
                  v264 = v127 | (v129 << 32);
LABEL_798:
                  v599 = 0;
                  v1392 = 0;
                  v1404 = 0;
                  v1423 = 0;
                  v1447 = 0;
                  v1498 = 0;
                  v1471 = -1;
                  while (v126)
                  {
                    v600 = v126 + 64;
                    v601 = v126 + 64 + ((HIDWORD(v264) - v264) << 6);
                    if ((*(v601 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v306 = *v601;
                    if (*v601 >= v1528 + v1527)
                    {
                      break;
                    }

                    v602 = *(v601 + 8);
                    if ((v602 + 15491) >= 2)
                    {
                      if (v602 == -15489)
                      {
                        if (v1527 > v306)
                        {
                          goto LABEL_1852;
                        }

                        v304 = apr_palloc(p, 0x50uLL);
                        *v304 = 61;
                        *(v304 + 1) = v599;
                        *(v304 + 1) = v1392;
                        v305 = v304 + 8;
                        *(v304 + 2) = v1404;
                        *(v304 + 3) = v1471;
                        *(v304 + 4) = 0;
                        *(v304 + 5) = v1423;
                        *(v304 + 6) = v1447;
                        *(v304 + 7) = 0;
                        v1237 = *__src;
                        *(v304 + 8) = v1498;
                        *(v304 + 9) = v1237;
                        goto LABEL_1849;
                      }
                    }

                    else if (v1527 <= v306)
                    {
                      v603 = apr_palloc(p, 0x50uLL);
                      *v603 = 61;
                      *(v603 + 1) = v599;
                      v603[1] = v1392;
                      v603[2] = v1404;
                      v603[3] = v1471;
                      v603[4] = 0;
                      v603[5] = v1423;
                      v603[6] = v1447;
                      v603[7] = 0;
                      v604 = *__src;
                      v603[8] = v1498;
                      v603[9] = v604;
                      v605 = *find_entry(ht, v603 + 8, 8uLL, 0);
                      if (v605)
                      {
                        v605 = *(v605 + 32);
                      }

                      v603[4] = v605;
                      apr_hash_set(ht, v603 + 1, 8, v603);
                      v603[3] = v306;
                      v602 = *(v601 + 8);
                    }

                    v606 = v1531;
                    if (v602 > -15491)
                    {
                      if (v602 == -15490)
                      {
                        v1498 = *(GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), *(v601 + 13), v1531) + 1);
                      }

                      else if (v602 == -15489)
                      {
                        v1471 = *v601;
                      }
                    }

                    else if (v602 == -15496)
                    {
                      v608 = GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), *(v601 + 13), v1531);
                      v1498 = 0;
                      v599 = *(v601 + 8);
                      v609 = *(v608 + 1);
                      v1392 = v609;
                      v1404 = *v601;
                      v1423 = *v608;
                    }

                    else if (v602 == -15491)
                    {
                      v607 = GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), *(v601 + 13), v1531);
                      v1447 = GTTraceFunc_argumentBytesWithMap((v600 + ((HIDWORD(v264) - v264) << 6)), v607[8], v606);
                    }

                    v610 = atomic_load((v126 + 4));
                    v611 = v264 + (v610 >> 6);
                    v612 = (HIDWORD(v264) + 1);
                    v264 = (v612 << 32) | v264;
                    if (v612 == v611 - 1)
                    {
                      v264 = (v612 << 32) | v612;
                      v126 = *(v126 + 40);
                    }
                  }

                  v339 = apr_palloc(p, 0x50uLL);
                  *v339 = 61;
                  *(v339 + 1) = v599;
                  *(v339 + 1) = v1392;
                  v340 = v339 + 8;
                  *(v339 + 2) = v1404;
                  *(v339 + 3) = v1471;
                  *(v339 + 4) = 0;
                  *(v339 + 5) = v1423;
                  *(v339 + 6) = v1447;
                  *(v339 + 7) = 0;
                  v613 = *__src;
                  *(v339 + 8) = v1498;
                  *(v339 + 9) = v613;
                  goto LABEL_1562;
                case 20:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1537) = v1537 + 1;
                  v224 = *(v50 + 32);
                  if (!v224)
                  {
                    v286 = 0;
                    goto LABEL_1513;
                  }

                  v225 = 0;
                  while (1)
                  {
                    v226 = atomic_load((v224 + 4));
                    v227 = v225 + (v226 >> 6) - 1;
                    if (v227 > 0)
                    {
                      break;
                    }

                    v224 = *(v224 + 40);
                    v225 = v227;
                    if (!v224)
                    {
                      v225 = v227;
                      goto LABEL_1512;
                    }
                  }

                  v227 = 0;
LABEL_1512:
                  v286 = v225 | (v227 << 32);
LABEL_1513:
                  v384 = 0;
                  v385 = 0;
                  v1466 = 0;
                  v1488 = 0;
                  v342 = 0;
                  while (v224)
                  {
                    v952 = v224 + 64;
                    v953 = v224 + 64 + ((HIDWORD(v286) - v286) << 6);
                    if ((*(v953 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v388 = *v953;
                    if (*v953 >= v1528 + v1527)
                    {
                      break;
                    }

                    v954 = *(v953 + 8);
                    if (v954 == -15891)
                    {
                      v955 = v1531;
                      v956 = GTTraceFunc_argumentBytesWithMap((v952 + ((HIDWORD(v286) - v286) << 6)), *(v953 + 13), v1531);
                      v1466 = *v953;
                      v384 = *(v953 + 8);
                      v385 = *(v956 + 1);
                      v1488 = *v956;
                      v342 = GTTraceFunc_argumentBytesWithMap((v952 + ((HIDWORD(v286) - v286) << 6)), v956[16], v955);
                    }

                    else if (v954 == -15893)
                    {
                      if (v1527 > v388)
                      {
                        goto LABEL_1852;
                      }

                      v1216 = apr_palloc(p, 0x38uLL);
                      v1217 = v1216;
                      v1218 = 64;
LABEL_1878:
                      *v1216 = v1218;
                      *(v1216 + 1) = v384;
                      *(v1216 + 1) = v385;
                      v1222 = v1216 + 8;
                      *(v1216 + 2) = v1466;
                      *(v1216 + 3) = -1;
                      *(v1216 + 4) = 0;
                      *(v1216 + 5) = v1488;
                      *(v1216 + 6) = v342;
LABEL_1879:
                      v1231 = *find_entry(ht, v1222, 8uLL, 0);
                      if (v1231)
                      {
                        v1231 = *(v1231 + 32);
                      }

                      *(v1217 + 4) = v1231;
                      apr_hash_set(ht, v1222, 8, v1217);
                      *(v1217 + 3) = v388;
                      goto LABEL_1852;
                    }

                    v957 = atomic_load((v224 + 4));
                    v958 = v286 + (v957 >> 6);
                    v959 = (HIDWORD(v286) + 1);
                    v286 = (v959 << 32) | v286;
                    if (v959 == v958 - 1)
                    {
                      v286 = (v959 << 32) | v959;
                      v224 = *(v224 + 40);
                    }
                  }

                  v353 = apr_palloc(p, 0x38uLL);
                  v304 = v353;
                  v395 = 64;
                  goto LABEL_1524;
                case 21:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1537);
                  v86 = *(v50 + 32);
                  v1488 = v1526;
                  if (!v86)
                  {
                    v254 = 0;
                    goto LABEL_509;
                  }

                  v87 = 0;
                  do
                  {
                    v88 = atomic_load((v86 + 4));
                    v89 = v87 + (v88 >> 6) - 1;
                    if (v89 > 0)
                    {
                      v89 = 0;
                      goto LABEL_508;
                    }

                    v86 = *(v86 + 40);
                    v87 = v89;
                  }

                  while (v86);
                  v87 = v89;
LABEL_508:
                  v254 = v87 | (v89 << 32);
LABEL_509:
                  v384 = 0;
                  v385 = 0;
                  v1466 = 0;
                  v342 = 0;
                  while (v86)
                  {
                    v386 = v86 + 64;
                    v387 = v86 + 64 + ((HIDWORD(v254) - v254) << 6);
                    if ((*(v387 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v388 = *v387;
                    if (*v387 >= v1528 + v1527)
                    {
                      break;
                    }

                    v389 = *(v387 + 8);
                    if (v389 == -15848)
                    {
                      v390 = v1531;
                      v391 = GTTraceFunc_argumentBytesWithMap((v386 + ((HIDWORD(v254) - v254) << 6)), *(v387 + 13), v1531);
                      v1466 = *v387;
                      v384 = *(v387 + 8);
                      v385 = *(v391 + 1);
                      v1488 = *v391;
                      v342 = GTTraceFunc_argumentBytesWithMap((v386 + ((HIDWORD(v254) - v254) << 6)), v391[24], v390);
                    }

                    else if (v389 == -15867)
                    {
                      if (v1527 > v388)
                      {
                        goto LABEL_1852;
                      }

                      v1216 = apr_palloc(p, 0x38uLL);
                      v1217 = v1216;
                      v1218 = 31;
                      goto LABEL_1878;
                    }

                    v392 = atomic_load((v86 + 4));
                    v393 = v254 + (v392 >> 6);
                    v394 = (HIDWORD(v254) + 1);
                    v254 = (v394 << 32) | v254;
                    if (v394 == v393 - 1)
                    {
                      v254 = (v394 << 32) | v394;
                      v86 = *(v86 + 40);
                    }
                  }

                  v353 = apr_palloc(p, 0x38uLL);
                  v304 = v353;
                  v395 = 31;
LABEL_1524:
                  *v353 = v395;
                  *(v353 + 1) = v384;
                  *(v353 + 1) = v385;
                  v305 = v353 + 8;
                  v306 = -1;
                  *(v353 + 2) = v1466;
                  *(v353 + 3) = -1;
                  *(v353 + 4) = 0;
                  *(v353 + 5) = v1488;
                  goto LABEL_1578;
                case 22:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  v1550 = 0;
                  *__src = -1;
                  ++DWORD2(v1537);
                  v118 = *(v50 + 32);
                  if (!v118)
                  {
                    v262 = 0;
                    goto LABEL_762;
                  }

                  v119 = 0;
                  while (1)
                  {
                    v120 = atomic_load((v118 + 4));
                    v121 = v119 + (v120 >> 6) - 1;
                    if (v121 > 0)
                    {
                      break;
                    }

                    v118 = *(v118 + 40);
                    v119 = v121;
                    if (!v118)
                    {
                      v119 = v121;
                      goto LABEL_761;
                    }
                  }

                  v121 = 0;
LABEL_761:
                  v262 = v119 | (v121 << 32);
LABEL_762:
                  v451 = 0;
                  v452 = 0;
                  v453 = 0;
                  v578 = 0;
                  while (v118)
                  {
                    v579 = v118 + 64 + ((HIDWORD(v262) - v262) << 6);
                    if ((*(v579 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v456 = *v579;
                    if (*v579 >= v1528 + v1527)
                    {
                      break;
                    }

                    v580 = *(v579 + 8);
                    if (v580 == -15922)
                    {
                      v581 = GTTraceFunc_argumentBytesWithMap((v118 + 64 + ((HIDWORD(v262) - v262) << 6)), *(v579 + 13), v1531);
                      v452 = *(v581 + 1);
                      v451 = *(v579 + 8);
                      v453 = *v579;
                      v578 = *v581;
                      v1550 = *(v581 + 2);
                    }

                    else if (v580 == -15957)
                    {
                      if (v1527 > v456)
                      {
                        goto LABEL_1852;
                      }

                      v1223 = v578;
                      v1224 = apr_palloc(p, 0x38uLL);
                      v1225 = v1224;
                      v1226 = 59;
                      goto LABEL_1866;
                    }

                    v582 = atomic_load((v118 + 4));
                    v583 = v262 + (v582 >> 6);
                    v584 = (HIDWORD(v262) + 1);
                    v262 = (v584 << 32) | v262;
                    if (v584 == v583 - 1)
                    {
                      v262 = (v584 << 32) | v584;
                      v118 = *(v118 + 40);
                    }
                  }

                  v462 = v578;
                  v463 = apr_palloc(p, 0x38uLL);
                  v464 = v463;
                  v465 = 59;
                  goto LABEL_773;
                case 23:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  v1550 = 0;
                  *__src = -1;
                  ++HIDWORD(v1537);
                  v98 = *(v50 + 32);
                  if (!v98)
                  {
                    v257 = 0;
                    goto LABEL_635;
                  }

                  v99 = 0;
                  do
                  {
                    v100 = atomic_load((v98 + 4));
                    v101 = v99 + (v100 >> 6) - 1;
                    if (v101 > 0)
                    {
                      v101 = 0;
                      goto LABEL_634;
                    }

                    v98 = *(v98 + 40);
                    v99 = v101;
                  }

                  while (v98);
                  v99 = v101;
LABEL_634:
                  v257 = v99 | (v101 << 32);
LABEL_635:
                  v451 = 0;
                  v452 = 0;
                  v453 = 0;
                  v454 = 0;
                  while (v98)
                  {
                    v455 = v98 + 64 + ((HIDWORD(v257) - v257) << 6);
                    if ((*(v455 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v456 = *v455;
                    if (*v455 >= v1528 + v1527)
                    {
                      break;
                    }

                    v457 = *(v455 + 8);
                    if (v457 == -15921)
                    {
                      v458 = GTTraceFunc_argumentBytesWithMap((v98 + 64 + ((HIDWORD(v257) - v257) << 6)), *(v455 + 13), v1531);
                      v452 = *(v458 + 1);
                      v451 = *(v455 + 8);
                      v453 = *v455;
                      v454 = *v458;
                      v1550 = *(v458 + 2);
                    }

                    else if (v457 == -15935)
                    {
                      if (v1527 > v456)
                      {
                        goto LABEL_1852;
                      }

                      v1223 = v454;
                      v1224 = apr_palloc(p, 0x38uLL);
                      v1225 = v1224;
                      v1226 = 58;
LABEL_1866:
                      *v1224 = v1226;
                      *(v1224 + 1) = v451;
                      v1224[1] = v452;
                      v1227 = v1224 + 1;
                      v1228 = *__src;
                      v1224[2] = v453;
                      v1224[3] = v1228;
                      v1224[4] = 0;
                      v1224[5] = v1223;
                      v1224[6] = v1550;
                      v1229 = *find_entry(ht, v1224 + 8, 8uLL, 0);
                      if (v1229)
                      {
                        v1229 = *(v1229 + 32);
                      }

                      v1225[4] = v1229;
                      apr_hash_set(ht, v1227, 8, v1225);
                      v1225[3] = v456;
                      goto LABEL_1852;
                    }

                    v459 = atomic_load((v98 + 4));
                    v460 = v257 + (v459 >> 6);
                    v461 = (HIDWORD(v257) + 1);
                    v257 = (v461 << 32) | v257;
                    if (v461 == v460 - 1)
                    {
                      v257 = (v461 << 32) | v461;
                      v98 = *(v98 + 40);
                    }
                  }

                  v462 = v454;
                  v463 = apr_palloc(p, 0x38uLL);
                  v464 = v463;
                  v465 = 58;
LABEL_773:
                  *v463 = v465;
                  *(v463 + 1) = v451;
                  *(v463 + 1) = v452;
                  v585 = v463 + 8;
                  v586 = *__src;
                  *(v463 + 2) = v453;
                  *(v463 + 3) = v586;
                  *(v463 + 4) = 0;
                  *(v463 + 5) = v462;
                  *(v463 + 6) = v1550;
                  v587 = *find_entry(ht, v463 + 8, 8uLL, 0);
                  if (v587)
                  {
                    v587 = *(v587 + 32);
                  }

                  v464[4] = v587;
                  v588 = ht;
                  v589 = v585;
                  goto LABEL_965;
                case 24:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[2] = 0;
                  *__src = 0;
                  LODWORD(v1538) = v1538 + 1;
                  v148 = *(v50 + 32);
                  if (!v148)
                  {
                    v269 = 0;
                    goto LABEL_1013;
                  }

                  v149 = 0;
                  do
                  {
                    v150 = atomic_load((v148 + 4));
                    v151 = v149 + (v150 >> 6) - 1;
                    if (v151 > 0)
                    {
                      v151 = 0;
                      goto LABEL_1012;
                    }

                    v148 = *(v148 + 40);
                    v149 = v151;
                  }

                  while (v148);
                  v149 = v151;
LABEL_1012:
                  v269 = v149 | (v151 << 32);
LABEL_1013:
                  v697 = 0;
                  v1450 = 0;
                  v1501 = 0;
                  v1474 = 0;
                  v1346 = 0;
                  v1353 = 0;
                  v1425 = 0;
                  v1362 = 0;
                  LOBYTE(v1372) = 0;
                  LOBYTE(v1382) = 0;
                  v1407 = 3;
                  v1394 = 1;
                  v1336 = -1;
                  LOBYTE(v1341) = 1;
                  while (1)
                  {
                    if (!v148 || (v698 = v148 + 64, v699 = v148 + 64 + ((HIDWORD(v269) - v269) << 6), (*(v699 + 15) & 8) == 0) || (v368 = *v699, *v699 >= v1528 + v1527))
                    {
                      v713 = apr_palloc(p, 0x50uLL);
                      *v713 = 27;
                      *(v713 + 1) = v697;
                      v713[1] = v1450;
                      v714 = v713 + 1;
                      v713[2] = v1501;
                      v713[3] = v1336;
                      v713[4] = 0;
                      v713[5] = v1474;
                      v713[6] = v1353;
                      v713[7] = v1346;
                      *(v713 + 16) = v1425;
                      *(v713 + 17) = v1362;
                      *(v713 + 72) = v1394;
                      *(v713 + 73) = v1407;
                      *(v713 + 74) = v1372;
                      *(v713 + 75) = v1382;
                      *(v713 + 76) = v1341;
                      v715 = *__src;
                      *(v713 + 79) = __src[2];
                      *(v713 + 77) = v715;
LABEL_1256:
                      v826 = *find_entry(ht, v714, 8uLL, 0);
                      if (v826)
                      {
                        v826 = *(v826 + 32);
                      }

                      v713[4] = v826;
                      apr_hash_set(ht, v714, 8, v713);
                      v713[3] = -1;
                      goto LABEL_1852;
                    }

                    v700 = *(v699 + 8);
                    if ((v700 + 16349) >= 5)
                    {
                      if (v700 == -16344)
                      {
                        if (v1527 > v368)
                        {
                          goto LABEL_1852;
                        }

                        v366 = apr_palloc(p, 0x50uLL);
                        *v366 = 27;
                        *(v366 + 1) = v697;
                        v366[1] = v1450;
                        v367 = v366 + 1;
                        v366[2] = v1501;
                        v366[3] = v1336;
                        v366[4] = 0;
                        v366[5] = v1474;
                        v366[6] = v1353;
                        v366[7] = v1346;
                        *(v366 + 16) = v1425;
                        *(v366 + 17) = v1362;
                        *(v366 + 72) = v1394;
                        *(v366 + 73) = v1407;
                        *(v366 + 74) = v1372;
                        *(v366 + 75) = v1382;
                        *(v366 + 76) = v1341;
                        v1280 = *__src;
                        *(v366 + 79) = __src[2];
                        *(v366 + 77) = v1280;
                        goto LABEL_1352;
                      }
                    }

                    else if (v1527 <= v368)
                    {
                      v701 = apr_palloc(p, 0x50uLL);
                      *v701 = 27;
                      *(v701 + 1) = v697;
                      v701[1] = v1450;
                      v701[2] = v1501;
                      v701[3] = v1336;
                      v701[4] = 0;
                      v701[5] = v1474;
                      v701[6] = v1353;
                      v701[7] = v1346;
                      *(v701 + 16) = v1425;
                      *(v701 + 17) = v1362;
                      *(v701 + 72) = v1394;
                      *(v701 + 73) = v1407;
                      *(v701 + 74) = v1372;
                      *(v701 + 75) = v1382;
                      *(v701 + 76) = v1341;
                      v702 = *__src;
                      *(v701 + 79) = __src[2];
                      *(v701 + 77) = v702;
                      v703 = *find_entry(ht, v701 + 8, 8uLL, 0);
                      if (v703)
                      {
                        v703 = *(v703 + 32);
                      }

                      v701[4] = v703;
                      apr_hash_set(ht, v701 + 1, 8, v701);
                      v701[3] = v368;
                      v700 = *(v699 + 8);
                    }

                    v704 = v1531;
                    if (v700 <= -16317)
                    {
                      if (v700 > -16347)
                      {
                        switch(v700)
                        {
                          case -16346:
                            v1341 = *(GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531) + 2);
                            break;
                          case -16345:
                            v1372 = *(GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531) + 2);
                            break;
                          case -16344:
                            v1336 = *v699;
                            break;
                        }
                      }

                      else
                      {
                        switch(v700)
                        {
                          case -16349:
                            v709 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531);
                            v1353 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), v709[8], v704);
                            break;
                          case -16348:
                            v1362 = *(GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531) + 2);
                            break;
                          case -16347:
                            v1382 = *(GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531) + 2);
                            break;
                        }
                      }
                    }

                    else if (v700 <= -15810)
                    {
                      switch(v700)
                      {
                        case -16316:
                          v707 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531);
                          v1501 = *v699;
                          v697 = *(v699 + 8);
                          v1450 = *(v707 + 1);
                          v1474 = *v707;
                          v706 = 64;
                          goto LABEL_1047;
                        case -16315:
                          v708 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531);
                          v1501 = *v699;
                          v697 = *(v699 + 8);
                          v1450 = *(v708 + 1);
                          v1474 = *v708;
                          v706 = *(v708 + 4);
                          goto LABEL_1047;
                        case -16165:
                          v705 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531);
                          v1501 = *v699;
                          v697 = *(v699 + 8);
                          v1450 = *(v705 + 1);
                          v1474 = *v705;
                          v1346 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), v705[16], v704);
                          v706 = *v1346;
LABEL_1047:
                          v1425 = v706;
                          break;
                      }
                    }

                    else if (v700 > -15807)
                    {
                      if (v700 == -15806 || v700 == -15805)
                      {
                        v1394 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531)[8];
                      }
                    }

                    else if (v700 == -15809 || v700 == -15808)
                    {
                      v1407 = GTTraceFunc_argumentBytesWithMap((v698 + ((HIDWORD(v269) - v269) << 6)), *(v699 + 13), v1531)[8];
                    }

                    v710 = atomic_load((v148 + 4));
                    v711 = v269 + (v710 >> 6);
                    v712 = (HIDWORD(v269) + 1);
                    v269 = (v712 << 32) | v269;
                    if (v712 == v711 - 1)
                    {
                      v269 = (v712 << 32) | v712;
                      v148 = *(v148 + 40);
                    }
                  }

                case 25:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1538);
                  v94 = *(v50 + 32);
                  if (!v94)
                  {
                    v256 = 0;
                    goto LABEL_622;
                  }

                  v95 = 0;
                  while (1)
                  {
                    v96 = atomic_load((v94 + 4));
                    v97 = v95 + (v96 >> 6) - 1;
                    if (v97 > 0)
                    {
                      break;
                    }

                    v94 = *(v94 + 40);
                    v95 = v97;
                    if (!v94)
                    {
                      v95 = v97;
                      goto LABEL_621;
                    }
                  }

                  v97 = 0;
LABEL_621:
                  v256 = v95 | (v97 << 32);
LABEL_622:
                  v440 = 0;
                  v441 = 0;
                  v1468 = 0;
                  v1495 = 0;
                  v442 = 0;
                  while (v94)
                  {
                    v443 = v94 + 64;
                    v444 = v94 + 64 + ((HIDWORD(v256) - v256) << 6);
                    if ((*(v444 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v388 = *v444;
                    if (*v444 >= v1528 + v1527)
                    {
                      break;
                    }

                    v445 = *(v444 + 8);
                    if (v445 == -15350)
                    {
                      v446 = v1531;
                      v447 = GTTraceFunc_argumentBytesWithMap((v443 + ((HIDWORD(v256) - v256) << 6)), *(v444 + 13), v1531);
                      v1468 = *v444;
                      v440 = *(v444 + 8);
                      v441 = *(v447 + 1);
                      v1495 = *v447;
                      v442 = GTTraceFunc_argumentBytesWithMap((v443 + ((HIDWORD(v256) - v256) << 6)), v447[24], v446);
                    }

                    else if (v445 == -15332)
                    {
                      if (v1527 > v388)
                      {
                        goto LABEL_1852;
                      }

                      v1217 = apr_palloc(p, 0x40uLL);
                      *v1217 = 52;
                      v1217[1] = v440;
                      *(v1217 + 1) = v441;
                      v1222 = v1217 + 2;
                      *(v1217 + 2) = v1468;
                      *(v1217 + 3) = -1;
                      *(v1217 + 4) = 0;
                      *(v1217 + 5) = v1495;
                      *(v1217 + 6) = 0;
                      *(v1217 + 7) = v442;
                      goto LABEL_1879;
                    }

                    v448 = atomic_load((v94 + 4));
                    v449 = v256 + (v448 >> 6);
                    v450 = (HIDWORD(v256) + 1);
                    v256 = (v450 << 32) | v256;
                    if (v450 == v449 - 1)
                    {
                      v256 = (v450 << 32) | v450;
                      v94 = *(v94 + 40);
                    }
                  }

                  v304 = apr_palloc(p, 0x40uLL);
                  *v304 = 52;
                  *(v304 + 1) = v440;
                  *(v304 + 1) = v441;
                  v305 = v304 + 8;
                  v306 = -1;
                  *(v304 + 2) = v1468;
                  *(v304 + 3) = -1;
                  *(v304 + 4) = 0;
                  *(v304 + 5) = v1495;
                  *(v304 + 6) = 0;
                  *(v304 + 7) = v442;
                  goto LABEL_1849;
                case 26:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[2] = 0;
                  *__src = 0;
                  ++DWORD2(v1538);
                  v232 = *(v50 + 32);
                  if (!v232)
                  {
                    v288 = 0;
                    goto LABEL_1540;
                  }

                  v233 = 0;
                  while (1)
                  {
                    v234 = atomic_load((v232 + 4));
                    v235 = v233 + (v234 >> 6) - 1;
                    if (v235 > 0)
                    {
                      break;
                    }

                    v232 = *(v232 + 40);
                    v233 = v235;
                    if (!v232)
                    {
                      v233 = v235;
                      goto LABEL_1539;
                    }
                  }

                  v235 = 0;
LABEL_1539:
                  v288 = v233 | (v235 << 32);
LABEL_1540:
                  v973 = 0;
                  v1434 = 0;
                  v1459 = 0;
                  v1511 = 0;
                  v974 = 0;
                  v1415 = 0;
                  v975 = 0;
                  v1485 = -1;
                  v1514 = v6;
LABEL_1541:
                  v976 = v232 + 64;
                  while (1)
                  {
                    if (!v232 || (v977 = v976 + ((HIDWORD(v288) - v288) << 6), (*(v977 + 15) & 8) == 0) || (v306 = *v977, *v977 >= v1528 + v1527))
                    {
                      v339 = apr_palloc(p, 0x40uLL);
                      *v339 = 68;
                      *(v339 + 1) = v973;
                      *(v339 + 1) = v1434;
                      v340 = v339 + 8;
                      *(v339 + 2) = v1459;
                      *(v339 + 3) = v1485;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1511;
                      *(v339 + 6) = v974;
                      *(v339 + 14) = v975;
                      v339[60] = v1415;
                      *(v339 + 61) = *__src;
                      v339[63] = __src[2];
                      goto LABEL_1562;
                    }

                    v978 = *(v977 + 8);
                    if (v978 == -15411)
                    {
                      if (v1527 > v306)
                      {
                        v979 = v1531;
                        goto LABEL_1557;
                      }

                      v980 = apr_palloc(p, 0x40uLL);
                      *v980 = 68;
                      *(v980 + 1) = v973;
                      v980[1] = v1434;
                      v980[2] = v1459;
                      v980[3] = v1485;
                      v980[4] = 0;
                      v980[5] = v1511;
                      v980[6] = v974;
                      *(v980 + 14) = v975;
                      *(v980 + 60) = v1415;
                      *(v980 + 61) = *__src;
                      *(v980 + 63) = __src[2];
                      v981 = *find_entry(ht, v980 + 8, 8uLL, 0);
                      if (v981)
                      {
                        v981 = *(v981 + 32);
                      }

                      v980[4] = v981;
                      apr_hash_set(ht, v980 + 1, 8, v980);
                      v980[3] = v306;
                      v978 = *(v977 + 8);
                      v976 = v232 + 64;
                      v6 = v1514;
                    }

                    else if (v978 == -15801)
                    {
                      if (v1527 > v306)
                      {
                        goto LABEL_1852;
                      }

                      v304 = apr_palloc(p, 0x40uLL);
                      *v304 = 68;
                      *(v304 + 1) = v973;
                      *(v304 + 1) = v1434;
                      v305 = v304 + 8;
                      *(v304 + 2) = v1459;
                      *(v304 + 3) = v1485;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1511;
                      *(v304 + 6) = v974;
                      *(v304 + 14) = v975;
                      v304[60] = v1415;
                      *(v304 + 61) = *__src;
                      v304[63] = __src[2];
                      goto LABEL_1849;
                    }

                    if (v978 == -15801)
                    {
                      v1485 = *v977;
                      goto LABEL_1559;
                    }

                    v979 = v1531;
                    if (v978 != -15411)
                    {
                      if (v978 == -15793)
                      {
                        v982 = GTTraceFunc_argumentBytesWithMap(v977, *(v977 + 13), v1531);
                        v1459 = *v977;
                        v973 = *(v977 + 8);
                        v1434 = *(v982 + 1);
                        v1511 = *v982;
                        v974 = GTTraceFunc_argumentBytesWithMap(v977, v982[16], v979);
                        v975 = *(v974 + 6);
                        v1415 = v974[34];
                      }

                      goto LABEL_1559;
                    }

LABEL_1557:
                    v983 = GTTraceFunc_argumentBytesWithMap(v977, *(v977 + 13), v979);
                    v974 = GTTraceFunc_argumentBytesWithMap(v977, v983[8], v979);
LABEL_1559:
                    v984 = atomic_load((v232 + 4));
                    v985 = v288 + (v984 >> 6);
                    v986 = (HIDWORD(v288) + 1);
                    v288 = (v986 << 32) | v288;
                    if (v986 == v985 - 1)
                    {
                      v288 = (v986 << 32) | v986;
                      v232 = *(v232 + 40);
                      goto LABEL_1541;
                    }
                  }

                case 27:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1538);
                  v228 = *(v50 + 32);
                  if (!v228)
                  {
                    v287 = 0;
                    goto LABEL_1527;
                  }

                  v229 = 0;
                  while (1)
                  {
                    v230 = atomic_load((v228 + 4));
                    v231 = v229 + (v230 >> 6) - 1;
                    if (v231 > 0)
                    {
                      break;
                    }

                    v228 = *(v228 + 40);
                    v229 = v231;
                    if (!v228)
                    {
                      v229 = v231;
                      goto LABEL_1526;
                    }
                  }

                  v231 = 0;
LABEL_1526:
                  v287 = v229 | (v231 << 32);
LABEL_1527:
                  v960 = 0;
                  v961 = 0;
                  v1484 = 0;
                  v1510 = 0;
                  v962 = 0;
                  v963 = 0;
                  while (v228)
                  {
                    v964 = v228 + 64;
                    v965 = v228 + 64 + ((HIDWORD(v287) - v287) << 6);
                    if ((*(v965 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v313 = *v965;
                    if (*v965 >= v1528 + v1527)
                    {
                      break;
                    }

                    v966 = *(v965 + 8);
                    if (v966 == -15900)
                    {
                      v967 = v1531;
                      v968 = GTTraceFunc_argumentBytesWithMap((v964 + ((HIDWORD(v287) - v287) << 6)), *(v965 + 13), v1531);
                      v1484 = *v965;
                      v960 = *(v965 + 8);
                      v961 = *(v968 + 1);
                      v1510 = *v968;
                      v962 = GTTraceFunc_argumentBytesWithMap((v964 + ((HIDWORD(v287) - v287) << 6)), v968[24], v967);
                      v963 = *(v968 + 4);
                    }

                    else if (v966 == -15769)
                    {
                      if (v1527 > v313)
                      {
                        goto LABEL_1852;
                      }

                      v1232 = v963;
                      v1234 = apr_palloc(p, 0x40uLL);
                      *v1234 = 73;
                      v1234[1] = v960;
                      *(v1234 + 1) = v961;
                      v1235 = v1234 + 2;
                      *(v1234 + 2) = v1484;
                      *(v1234 + 3) = -1;
                      *(v1234 + 4) = 0;
                      *(v1234 + 5) = v1510;
                      *(v1234 + 6) = v962;
                      v1234[14] = v1232;
                      v1234[15] = 0;
                      goto LABEL_1887;
                    }

                    v969 = atomic_load((v228 + 4));
                    v970 = v287 + (v969 >> 6);
                    v971 = (HIDWORD(v287) + 1);
                    v287 = (v971 << 32) | v287;
                    if (v971 == v970 - 1)
                    {
                      v287 = (v971 << 32) | v971;
                      v228 = *(v228 + 40);
                    }
                  }

                  v972 = v963;
                  v304 = apr_palloc(p, 0x40uLL);
                  *v304 = 73;
                  *(v304 + 1) = v960;
                  *(v304 + 1) = v961;
                  v305 = v304 + 8;
                  v306 = -1;
                  *(v304 + 2) = v1484;
                  *(v304 + 3) = -1;
                  *(v304 + 4) = 0;
                  *(v304 + 5) = v1510;
                  *(v304 + 6) = v962;
                  *(v304 + 14) = v972;
                  *(v304 + 15) = 0;
                  goto LABEL_1849;
                case 28:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1539) = v1539 + 1;
                  v110 = *(v50 + 32);
                  if (!v110)
                  {
                    v260 = 0;
                    goto LABEL_681;
                  }

                  v111 = 0;
                  while (1)
                  {
                    v112 = atomic_load((v110 + 4));
                    v113 = v111 + (v112 >> 6) - 1;
                    if (v113 > 0)
                    {
                      break;
                    }

                    v110 = *(v110 + 40);
                    v111 = v113;
                    if (!v110)
                    {
                      v111 = v113;
                      goto LABEL_680;
                    }
                  }

                  v113 = 0;
LABEL_680:
                  v260 = v111 | (v113 << 32);
LABEL_681:
                  v490 = 0;
                  v491 = 0;
                  v492 = 0;
                  v493 = 0;
                  v494 = 0;
                  v495 = 0;
                  v496 = 0;
                  LODWORD(v1470) = 0;
                  v1403 = 0;
                  v1391 = 0;
                  LODWORD(v1369) = 0;
                  v1379 = 0;
                  v1422 = 0u;
LABEL_682:
                  v1497 = v110 + 64;
                  while (1)
                  {
                    if (!v110 || (v497 = v1497 + ((HIDWORD(v260) - v260) << 6), (*(v497 + 15) & 8) == 0) || (v368 = *v497, *v497 >= v1528 + v1527))
                    {
                      v540 = v492;
                      v541 = v491;
                      v542 = v496;
                      v543 = v494;
                      v544 = v490;
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 15;
                      *(v545 + 1) = v544;
                      *(v545 + 1) = v541;
                      v367 = v545 + 8;
                      v368 = -1;
                      *(v545 + 2) = v540;
                      *(v545 + 3) = -1;
                      *(v545 + 4) = 0;
                      *(v545 + 5) = v493;
                      *(v545 + 6) = v543;
                      *(v545 + 7) = v495;
                      *(v545 + 16) = v542;
LABEL_724:
                      *(v545 + 17) = v1470;
                      *(v545 + 18) = v1403 | (v1391 << 8);
                      v546 = v1379;
                      *(v545 + 19) = v1369;
                      *(v545 + 5) = v1422;
                      goto LABEL_1010;
                    }

                    v498 = *(v497 + 8);
                    if (v498 == -6139)
                    {
                      if (v1527 > v368)
                      {
                        goto LABEL_1852;
                      }

                      v1194 = v490;
                      v1195 = v494;
                      v1196 = v491;
                      v1197 = v492;
                      v545 = apr_palloc(p, 0x68uLL);
                      v366 = v545;
                      *v545 = 15;
                      *(v545 + 1) = v1194;
                      *(v545 + 1) = v1196;
                      v367 = v545 + 8;
                      *(v545 + 2) = v1197;
                      *(v545 + 3) = -1;
                      *(v545 + 4) = 0;
                      *(v545 + 5) = v493;
                      *(v545 + 6) = v1195;
                      *(v545 + 7) = v495;
                      *(v545 + 16) = v496;
                      goto LABEL_724;
                    }

                    v499 = v1531;
                    if (v498 > -6120)
                    {
                      if (v498 > -6111)
                      {
                        if (v498 > -6097)
                        {
                          if (v498 != -6096 && v498 != -6095)
                          {
                            goto LABEL_717;
                          }

                          v516 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                          v1444 = *v497;
                          v517 = *(v497 + 8);
                          v518 = v496;
                          v519 = *v516;
                          v520 = *(v516 + 1);
                          v521 = GTTraceFunc_argumentBytesWithMap(v497, v516[16], v499);
                          v494 = v519;
                          v496 = v518;
                          v491 = v520;
                          v493 = v517;
                          v492 = v1444;
                          v495 = v521;
                          goto LABEL_716;
                        }

                        if (v498 == -6110)
                        {
LABEL_713:
                          v522 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v522;
                          v491 = *(v522 + 1);
                        }

                        else
                        {
                          if (v498 != -6109)
                          {
                            goto LABEL_717;
                          }

LABEL_714:
                          v523 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v523;
                          v491 = *(v523 + 1);
                          v495 = *(v523 + 2);
                          v496 = *(v523 + 6);
                          LODWORD(v1470) = *(v523 + 7);
                          LODWORD(v1369) = *(v523 + 9);
                          v1403 = *(v523 + 8);
                          v1391 = *(v523 + 8) >> 8;
                          *(&v508 + 1) = *(&v1422 + 1);
                          *&v508 = *(v523 + 5);
LABEL_715:
                          v1422 = v508;
                        }

LABEL_716:
                        v490 = v493;
                        goto LABEL_717;
                      }

                      switch(v498)
                      {
                        case -6119:
                          goto LABEL_713;
                        case -6116:
                          v539 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v539;
                          v491 = *(v539 + 1);
                          v495 = *(v539 + 2);
                          v496 = *(v539 + 6);
                          LODWORD(v1470) = *(v539 + 7);
                          v1403 = *(v539 + 8);
                          v1391 = *(v539 + 8) >> 8;
                          v1422 = *(v539 + 40);
                          LODWORD(v1369) = *(v539 + 9);
                          v1379 = *(v539 + 7);
                          goto LABEL_716;
                        case -6111:
                          v509 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                          v1443 = *v497;
                          v510 = *(v497 + 8);
                          v511 = *v509;
                          v512 = *(v509 + 1);
                          v513 = GTTraceFunc_argumentBytesWithMap(v497, v509[16], v499);
                          v514 = v509[24];
                          v495 = v513;
                          v504 = GTTraceFunc_argumentBytesWithMap(v497, v514, v499);
                          v494 = v511;
                          v491 = v512;
                          v493 = v510;
                          v492 = v1443;
                          v505 = v504 >> 32;
                          goto LABEL_706;
                      }
                    }

                    else if (v498 <= -6134)
                    {
                      switch(v498)
                      {
                        case -6143:
                          v532 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                          v1446 = *v497;
                          v533 = *(v497 + 8);
                          v535 = *v532;
                          v534 = *(v532 + 1);
                          v536 = GTTraceFunc_argumentBytesWithMap(v497, v532[16], v499);
                          v537 = v532[24];
                          v495 = v536;
                          v538 = GTTraceFunc_argumentBytesWithMap(v497, v537, v499);
                          v490 = v533;
                          v494 = v535;
                          v491 = v534;
                          v492 = v1446;
                          v496 = v538;
                          v1470 = v538 >> 32;
                          v493 = v533;
                          break;
                        case -6141:
                          goto LABEL_714;
                        case -6134:
                          v507 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                          v492 = *v497;
                          v493 = *(v497 + 8);
                          v494 = *v507;
                          v491 = *(v507 + 1);
                          v1379 = v1379 & 0xFFFFFFFFFFFFFF00 | v507[16];
                          v495 = *(v507 + 3);
                          v496 = *(v507 + 8);
                          LODWORD(v1470) = *(v507 + 9);
                          v508 = *(v507 + 40);
                          goto LABEL_715;
                      }
                    }

                    else if (v498 > -6130)
                    {
                      if (v498 == -6129)
                      {
                        v528 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                        v1445 = *v497;
                        v1359 = *(v497 + 8);
                        v530 = *v528;
                        v529 = *(v528 + 1);
                        v495 = *(v528 + 4);
                        v531 = GTTraceFunc_argumentBytesWithMap(v497, v528[24], v499);
                        v494 = v530;
                        v491 = v529;
                        v492 = v1445;
                        v1403 = v531;
                        v1391 = v531 >> 8;
                        v1369 = v531 >> 32;
                        v496 = *(v528 + 8);
                        LODWORD(v1470) = *(v528 + 9);
                        v493 = v1359;
                        goto LABEL_716;
                      }

                      if (v498 == -6122)
                      {
                        v515 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                        v492 = *v497;
                        v493 = *(v497 + 8);
                        v494 = *v515;
                        v491 = *(v515 + 1);
                        v1379 = v1379 & 0xFFFFFFFFFFFF0000 | v515[16] | (*(v515 + 5) << 8);
                        v495 = *(v515 + 3);
                        v496 = *(v515 + 8);
                        LODWORD(v1470) = *(v515 + 9);
                        LODWORD(v1369) = *(v515 + 11);
                        v1403 = *(v515 + 10);
                        v1391 = *(v515 + 10) >> 8;
                        v508 = *(v515 + 3);
                        goto LABEL_715;
                      }
                    }

                    else
                    {
                      if (v498 == -6133)
                      {
                        v527 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                        v492 = *v497;
                        v493 = *(v497 + 8);
                        v494 = *v527;
                        v491 = *(v527 + 1);
                        v496 = *(v527 + 5);
                        v495 = *(v527 + 4);
                        LODWORD(v1470) = *(v527 + 6);
                        v1403 = *(v527 + 7);
                        v1391 = *(v527 + 7) >> 8;
                        goto LABEL_716;
                      }

                      if (v498 == -6131)
                      {
                        v500 = GTTraceFunc_argumentBytesWithMap((v1497 + ((HIDWORD(v260) - v260) << 6)), *(v497 + 13), v1531);
                        v1442 = *v497;
                        v1358 = *(v497 + 8);
                        v501 = *v500;
                        v502 = *(v500 + 1);
                        v503 = GTTraceFunc_argumentBytesWithMap(v497, v500[16], v499);
                        v504 = GTTraceFunc_argumentBytesWithMap(v497, v500[24], v499);
                        v494 = v501;
                        v491 = v502;
                        v493 = v1358;
                        v492 = v1442;
                        v505 = v504 >> 32;
                        v506 = v500[32];
                        v495 = v503;
                        v1403 = v506;
LABEL_706:
                        v490 = v493;
                        v496 = v504;
                        LODWORD(v1470) = v505;
                      }
                    }

LABEL_717:
                    v524 = atomic_load((v110 + 4));
                    v525 = v260 + (v524 >> 6);
                    v526 = (HIDWORD(v260) + 1);
                    v260 = (v526 << 32) | v260;
                    if (v526 == v525 - 1)
                    {
                      v260 = (v526 << 32) | v526;
                      v110 = *(v110 + 40);
                      goto LABEL_682;
                    }
                  }

                case 29:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  __src[2] = 0;
                  *__src = 0;
                  ++DWORD1(v1539);
                  v132 = *(v50 + 32);
                  if (!v132)
                  {
                    v265 = 0;
                    goto LABEL_822;
                  }

                  v133 = 0;
                  do
                  {
                    v134 = atomic_load((v132 + 4));
                    v135 = v133 + (v134 >> 6) - 1;
                    if (v135 > 0)
                    {
                      v135 = 0;
                      goto LABEL_821;
                    }

                    v132 = *(v132 + 40);
                    v133 = v135;
                  }

                  while (v132);
                  v133 = v135;
LABEL_821:
                  v265 = v133 | (v135 << 32);
LABEL_822:
                  v1448 = 0;
                  v1405 = 0;
                  v1424 = 0;
                  v1472 = 0;
                  v1327 = 0;
                  v1331 = 0;
                  v1380 = 0;
                  v1499 = 0;
                  v1340 = 0;
                  v1345 = 0;
                  v614 = 0;
                  v1360 = 0;
                  v1335 = 0;
                  v1317 = 0;
                  v1351 = 0;
                  v1320 = 0;
                  v1323 = 0;
                  v1370 = 0;
                  v615 = -1;
                  while (1)
                  {
                    if (!v132 || (v616 = v132 + 64 + ((HIDWORD(v265) - v265) << 6), (*(v616 + 15) & 8) == 0) || (v306 = *v616, *v616 >= v1528 + v1527))
                    {
                      v339 = apr_palloc(p, 0x88uLL);
                      *(v339 + 1) = v1424;
                      v340 = v339 + 8;
                      *v339 = 43;
                      *(v339 + 1) = v1448;
                      *(v339 + 2) = v1472;
                      *(v339 + 3) = v615;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1405;
                      *(v339 + 6) = v1327;
                      *(v339 + 7) = v1380;
                      *(v339 + 8) = v1499;
                      *(v339 + 9) = v1345;
                      *(v339 + 10) = v614;
                      *(v339 + 11) = v1360;
                      *(v339 + 12) = v1335;
                      *(v339 + 13) = v1317;
                      *(v339 + 14) = v1340;
                      *(v339 + 15) = v1331;
                      *(v339 + 64) = v1351;
                      v339[130] = v1320;
                      v339[131] = v1323;
                      v339[132] = v1370;
                      v339[135] = __src[2];
                      *(v339 + 133) = *__src;
                      goto LABEL_1562;
                    }

                    v617 = *(v616 + 8);
                    if (v617 == -16123 || v617 == -10157)
                    {
                      if (v1527 <= v306)
                      {
                        v619 = apr_palloc(p, 0x88uLL);
                        v619[1] = v1424;
                        *v619 = 43;
                        *(v619 + 1) = v1448;
                        v619[2] = v1472;
                        v619[3] = v615;
                        v619[4] = 0;
                        v619[5] = v1405;
                        v619[6] = v1327;
                        v619[7] = v1380;
                        v619[8] = v1499;
                        v619[9] = v1345;
                        v619[10] = v614;
                        v619[11] = v1360;
                        v619[12] = v1335;
                        v619[13] = v1317;
                        v619[14] = v1340;
                        v619[15] = v1331;
                        *(v619 + 64) = v1351;
                        *(v619 + 130) = v1320;
                        *(v619 + 131) = v1323;
                        *(v619 + 132) = v1370;
                        *(v619 + 135) = __src[2];
                        *(v619 + 133) = *__src;
                        v620 = *find_entry(ht, v619 + 8, 8uLL, 0);
                        if (v620)
                        {
                          v620 = *(v620 + 32);
                        }

                        v619[4] = v620;
                        apr_hash_set(ht, v619 + 1, 8, v619);
                        v619[3] = v306;
                        v617 = *(v616 + 8);
                      }
                    }

                    else if (v617 == -16293)
                    {
                      v304 = apr_palloc(p, 0x88uLL);
                      *(v304 + 1) = v1424;
                      v305 = v304 + 8;
                      *v304 = 43;
                      *(v304 + 1) = v1448;
                      *(v304 + 2) = v1472;
                      *(v304 + 3) = v615;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1405;
                      *(v304 + 6) = v1327;
                      *(v304 + 7) = v1380;
                      *(v304 + 8) = v1499;
                      *(v304 + 9) = v1345;
                      *(v304 + 10) = v614;
                      *(v304 + 11) = v1360;
                      *(v304 + 12) = v1335;
                      *(v304 + 13) = v1317;
                      *(v304 + 14) = v1340;
                      *(v304 + 15) = v1331;
                      *(v304 + 64) = v1351;
                      v304[130] = v1320;
                      v304[131] = v1323;
                      v304[132] = v1370;
                      v304[135] = __src[2];
                      *(v304 + 133) = *__src;
                      goto LABEL_1849;
                    }

                    v621 = v1531;
                    if (v617 > -15731)
                    {
                      if (v617 > -15431)
                      {
                        if (v617 <= -15429)
                        {
                          if (v617 != -15430)
                          {
LABEL_874:
                            v633 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                            v1472 = *v616;
                            v1448 = *(v616 + 8);
                            v1405 = *v633;
                            v1424 = *(v633 + 1);
                            v634 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                            v614 = v634;
                            if (v634)
                            {
                              v1499 = *v634;
                            }

                            else
                            {
                              v1499 = 0;
                            }

                            v1360 = GTTraceFunc_argumentBytesWithMap(v616, v633[24], v621);
                            v1335 = GTTraceFunc_argumentBytesWithMap(v616, v633[25], v621);
LABEL_882:
                            v1351 = *(v633 + 8);
LABEL_883:
                            v1370 = 1;
                            goto LABEL_910;
                          }

LABEL_876:
                          v633 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                          v1472 = *v616;
                          v1448 = *(v616 + 8);
                          v1405 = *v633;
                          v1424 = *(v633 + 1);
                          v635 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                          v614 = v635;
                          if (v635)
                          {
                            v1499 = *v635;
                          }

                          else
                          {
                            v1499 = 0;
                          }

                          v1360 = GTTraceFunc_argumentBytesWithMap(v616, v633[24], v621);
                          goto LABEL_882;
                        }

                        switch(v617)
                        {
                          case -15428:
                            goto LABEL_876;
                          case -15427:
                            goto LABEL_874;
                          case -10157:
                            v626 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531)[16];
LABEL_898:
                            v1340 = GTTraceFunc_argumentBytesWithMap(v616, v626, v621);
                            break;
                        }
                      }

                      else if (v617 <= -15609)
                      {
                        if (v617 == -15730)
                        {
                          goto LABEL_874;
                        }

                        if (v617 == -15609)
                        {
LABEL_867:
                          v629 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                          v1472 = *v616;
                          v1448 = *(v616 + 8);
                          v1405 = *v629;
                          v1424 = *(v629 + 1);
                          v630 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                          v614 = v630;
                          if (v630)
                          {
                            v1499 = *v630;
                          }

                          else
                          {
                            v1499 = 0;
                          }

                          v626 = v629[24];
                          goto LABEL_898;
                        }
                      }

                      else
                      {
                        switch(v617)
                        {
                          case -15608:
                            goto LABEL_867;
                          case -15551:
                            v636 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                            v1472 = *v616;
                            v1448 = *(v616 + 8);
                            v1405 = *v636;
                            v1424 = *(v636 + 1);
                            v637 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                            v614 = v637;
                            if (v637)
                            {
                              v1499 = *v637;
                            }

                            else
                            {
                              v1499 = 0;
                            }

                            v643 = v636[32];
                            goto LABEL_907;
                          case -15550:
                            v624 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                            v1472 = *v616;
                            v1448 = *(v616 + 8);
                            v1405 = *v624;
                            v1424 = *(v624 + 1);
                            v625 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                            v614 = v625;
                            if (v625)
                            {
                              v1499 = *v625;
                            }

                            else
                            {
                              v1499 = 0;
                            }

                            v643 = v624[24];
LABEL_907:
                            v1331 = GTTraceFunc_argumentBytesWithMap(v616, v643, v621);
                            break;
                        }
                      }
                    }

                    else if (v617 > -16083)
                    {
                      if (v617 > -16039)
                      {
                        if (v617 == -16038)
                        {
                          v641 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                          v1472 = *v616;
                          v1448 = *(v616 + 8);
                          v1405 = *v641;
                          v1424 = *(v641 + 1);
                          v642 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                          v614 = v642;
                          if (v642)
                          {
                            v1499 = *v642;
                          }

                          else
                          {
                            v1499 = 0;
                          }

                          v1380 = GTTraceFunc_argumentBytesWithMap(v616, v641[16], v621);
                          v1323 = 1;
                          goto LABEL_910;
                        }

                        if (v617 == -15830)
                        {
                          v638 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                          v1472 = *v616;
                          v1448 = *(v616 + 8);
                          v1405 = *v638;
                          v1424 = *(v638 + 1);
                          v639 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                          v614 = v639;
                          if (v639)
                          {
                            v1499 = *v639;
                          }

                          else
                          {
                            v1499 = 0;
                          }

                          v1380 = GTTraceFunc_argumentBytesWithMap(v616, v638[18], v621);
                          v1317 = GTTraceFunc_argumentBytesWithMap(v616, v638[16], v621);
                          v1320 = v638[17];
                          goto LABEL_883;
                        }

                        if (v617 != -15731)
                        {
                          goto LABEL_910;
                        }

                        goto LABEL_876;
                      }

                      if (v617 == -16082 || v617 == -16081)
                      {
                        v631 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                        v1472 = *v616;
                        v1448 = *(v616 + 8);
                        v1405 = *v631;
                        v1424 = *(v631 + 1);
                        v632 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                        v614 = v632;
                        if (v632)
                        {
                          v1499 = *v632;
                        }

                        else
                        {
                          v1499 = 0;
                        }

                        v1380 = GTTraceFunc_argumentBytesWithMap(v616, v631[32], v621);
                        v1345 = GTTraceFunc_argumentBytesWithMap(v616, v631[33], v621);
                        v1327 = *(v631 + 2);
                      }
                    }

                    else if (v617 <= -16124)
                    {
                      if (v617 == -16293)
                      {
                        v615 = *v616;
                      }

                      else if (v617 == -16290)
                      {
                        v627 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                        v1472 = *v616;
                        v1448 = *(v616 + 8);
                        v1405 = *v627;
                        v1424 = *(v627 + 1);
                        v628 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                        v614 = v628;
                        if (v628)
                        {
                          v1499 = *v628;
                        }

                        else
                        {
                          v1499 = 0;
                        }

                        v1380 = GTTraceFunc_argumentBytesWithMap(v616, v627[16], v621);
                      }
                    }

                    else if (v617 == -16123)
                    {
                      v640 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                      v1499 = GTTraceFunc_argumentBytesWithMap(v616, v640[8], v621);
                    }

                    else if (v617 == -16107 || v617 == -16106)
                    {
                      v622 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 13), v1531);
                      v1472 = *v616;
                      v1448 = *(v616 + 8);
                      v1405 = *v622;
                      v1424 = *(v622 + 1);
                      v623 = GTTraceFunc_argumentBytesWithMap(v616, *(v616 + 14), v621);
                      v614 = v623;
                      if (v623)
                      {
                        v1499 = *v623;
                      }

                      else
                      {
                        v1499 = 0;
                      }

                      v1380 = GTTraceFunc_argumentBytesWithMap(v616, v622[24], v621);
                      v1345 = GTTraceFunc_argumentBytesWithMap(v616, v622[25], v621);
                    }

LABEL_910:
                    v644 = atomic_load((v132 + 4));
                    v645 = v265 + (v644 >> 6);
                    v646 = (HIDWORD(v265) + 1);
                    v265 = (v646 << 32) | v265;
                    if (v646 == v645 - 1)
                    {
                      v265 = (v646 << 32) | v646;
                      v132 = *(v132 + 40);
                    }
                  }

                case 31:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 24);
                  *__src = 2;
                  *&__src[24] = -1;
                  ++HIDWORD(v1539);
                  v182 = *(v50 + 32);
                  if (!v182)
                  {
                    v277 = 0;
                    goto LABEL_1326;
                  }

                  v183 = 0;
                  do
                  {
                    v184 = atomic_load((v182 + 4));
                    v185 = v183 + (v184 >> 6) - 1;
                    if (v185 > 0)
                    {
                      v185 = 0;
                      goto LABEL_1325;
                    }

                    v182 = *(v182 + 40);
                    v183 = v185;
                  }

                  while (v182);
                  v183 = v185;
LABEL_1325:
                  v277 = v183 | (v185 << 32);
LABEL_1326:
                  while (v182)
                  {
                    v846 = v182 + 64 + ((HIDWORD(v277) - v277) << 6);
                    if ((*(v846 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v482 = *v846;
                    if (*v846 >= v1528 + v1527)
                    {
                      break;
                    }

                    if (*(v846 + 8) == -7161)
                    {
                      if (v1527 > v482)
                      {
                        goto LABEL_1852;
                      }

                      v489 = apr_palloc(p, 0x38uLL);
                      *v489 = *__src;
                      v489[1] = *&__src[16];
                      v489[2] = *&__src[32];
                      *(v489 + 6) = *&__src[48];
LABEL_1916:
                      v1279 = *find_entry(ht, v489 + 8, 8uLL, 0);
                      if (v1279)
                      {
                        v1279 = *(v1279 + 32);
                      }

                      *(v489 + 4) = v1279;
                      apr_hash_set(ht, v489 + 8, 8, v489);
LABEL_1734:
                      *(v489 + 3) = v482;
                      goto LABEL_1852;
                    }

                    GTMTLSMDrawable_processTraceFuncWithMap(__src, v1531, v846);
                    v847 = atomic_load((v182 + 4));
                    v848 = v277 + (v847 >> 6);
                    v849 = (HIDWORD(v277) + 1);
                    v277 = (v849 << 32) | v277;
                    if (v849 == v848 - 1)
                    {
                      v277 = (v849 << 32) | v849;
                      v182 = *(v182 + 40);
                    }
                  }

                  v489 = apr_palloc(p, 0x38uLL);
                  *v489 = *__src;
                  v489[1] = *&__src[16];
                  v489[2] = *&__src[32];
                  *(v489 + 6) = *&__src[48];
                  goto LABEL_1731;
                case 32:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  memset(&__src[32], 0, 248);
                  memset(__src, 0, 24);
                  *__src = 3;
                  *&__src[24] = -1;
                  LODWORD(v1540) = v1540 + 1;
                  v136 = *(v50 + 32);
                  if (!v136)
                  {
                    v266 = 0;
                    goto LABEL_915;
                  }

                  v137 = 0;
                  while (1)
                  {
                    v138 = atomic_load((v136 + 4));
                    v139 = v137 + (v138 >> 6) - 1;
                    if (v139 > 0)
                    {
                      break;
                    }

                    v136 = *(v136 + 40);
                    v137 = v139;
                    if (!v136)
                    {
                      v137 = v139;
                      goto LABEL_914;
                    }
                  }

                  v139 = 0;
LABEL_914:
                  v266 = v137 | (v139 << 32);
LABEL_915:
                  v647 = v136 + 64;
                  while (1)
                  {
                    if (!v136 || (v648 = v647 + ((HIDWORD(v266) - v266) << 6), (*(v648 + 15) & 8) == 0) || (v649 = *v648, *v648 >= v1528 + v1527))
                    {
                      v464 = apr_palloc(p, 0x118uLL);
                      memcpy(v464, __src, 0x118uLL);
                      v664 = *find_entry(ht, v464 + 8, 8uLL, 0);
                      if (v664)
                      {
                        v664 = *(v664 + 32);
                      }

                      v464[4] = v664;
                      v588 = ht;
                      v589 = v464 + 1;
LABEL_965:
                      apr_hash_set(v588, v589, 8, v464);
                      v464[3] = -1;
                      goto LABEL_1852;
                    }

                    v650 = *(v648 + 8);
                    if ((v650 + 7165) > 0xB)
                    {
                      break;
                    }

                    if (((1 << (v650 - 3)) & 0x86B) != 0)
                    {
                      goto LABEL_933;
                    }

                    if (v650 != -7163)
                    {
                      break;
                    }

                    if (v1527 > v649 || *&__src[8] == 0)
                    {
                      v652 = v1531;
LABEL_941:
                      v656 = GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v652);
                      *&__src[8] = *v656;
                      *&__src[16] = *v648;
                      *&__src[40] = *(v656 + 1);
                      goto LABEL_960;
                    }

LABEL_934:
                    v654 = apr_palloc(p, 0x118uLL);
                    memcpy(v654, __src, 0x118uLL);
                    v655 = *find_entry(ht, v654 + 8, 8uLL, 0);
                    if (v655)
                    {
                      v655 = *(v655 + 32);
                    }

                    *(v654 + 4) = v655;
                    apr_hash_set(ht, v654 + 8, 8, v654);
                    *(v654 + 3) = v649;
                    v650 = *(v648 + 8);
LABEL_937:
                    v652 = v1531;
                    if (v650 <= -7163)
                    {
                      if (v650 <= -7166)
                      {
                        if (v650 == -8183)
                        {
                          v659 = GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531);
                          for (j = 0; j != 128; j += 16)
                          {
                            *&__src[j + 48] = *&v659[j + 8];
                          }

                          *&__src[248] = *(v659 + 136);
                        }

                        else if (v650 == -8181)
                        {
                          *&__src[192] = *(GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531) + 8);
                        }

                        goto LABEL_960;
                      }

                      if (v650 == -7165)
                      {
                        *&__src[272] = *(GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531) + 1);
                        goto LABEL_960;
                      }

                      if (v650 == -7164)
                      {
                        *&__src[176] = *(GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531) + 8);
                        goto LABEL_960;
                      }

                      goto LABEL_941;
                    }

                    if (v650 <= -7160)
                    {
                      if (v650 != -7162)
                      {
                        if (v650 == -7160)
                        {
                          __src[274] = *(GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531) + 2);
                        }

                        goto LABEL_960;
                      }
                    }

                    else if (v650 != -7159)
                    {
                      if (v650 == -7154)
                      {
                        __src[275] = *(GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531) + 2);
                      }

                      else if (v650 == -7153)
                      {
                        v657 = GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531);
                        *&__src[264] = GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), v657[8], v652);
                      }

                      goto LABEL_960;
                    }

                    v658 = GTTraceFunc_argumentBytesWithMap((v647 + ((HIDWORD(v266) - v266) << 6)), *(v648 + 13), v1531);
                    *&__src[216] = *(v658 + 8);
                    *&__src[232] = *(v658 + 24);
                    *&__src[208] = *(v658 + 5);
LABEL_960:
                    v661 = atomic_load((v136 + 4));
                    v662 = v266 + (v661 >> 6);
                    v663 = (HIDWORD(v266) + 1);
                    v266 = (v663 << 32) | v266;
                    if (v663 == v662 - 1)
                    {
                      v266 = (v663 << 32) | v663;
                      v136 = *(v136 + 40);
                      goto LABEL_915;
                    }
                  }

                  if (v650 != -8183 && v650 != -8181)
                  {
                    goto LABEL_937;
                  }

LABEL_933:
                  if (v1527 > v649)
                  {
                    goto LABEL_937;
                  }

                  goto LABEL_934;
                case 33:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  *&__src[3] = 0;
                  *__src = 0;
                  ++DWORD1(v1540);
                  v240 = *(v50 + 32);
                  if (!v240)
                  {
                    v290 = 0;
                    goto LABEL_1581;
                  }

                  v241 = 0;
                  do
                  {
                    v242 = atomic_load((v240 + 4));
                    v243 = v241 + (v242 >> 6) - 1;
                    if (v243 > 0)
                    {
                      v243 = 0;
                      goto LABEL_1580;
                    }

                    v240 = *(v240 + 40);
                    v241 = v243;
                  }

                  while (v240);
                  v241 = v243;
LABEL_1580:
                  v290 = v241 | (v243 << 32);
LABEL_1581:
                  v1435 = 0;
                  v1487 = 0;
                  v1460 = 0;
                  v998 = 0;
                  v999 = 0;
                  v1387 = 0;
                  v1399 = 0;
                  v1416 = 0;
                  v1000 = 0;
                  v1513 = 0u;
                  while (1)
                  {
                    if (!v240 || (v1001 = v240 + 64, v1002 = v240 + 64 + ((HIDWORD(v290) - v290) << 6), (*(v1002 + 15) & 8) == 0) || (v306 = *v1002, *v1002 >= v1528 + v1527))
                    {
                      v1025 = v999;
                      v1026 = apr_palloc(p, 0x68uLL);
                      v304 = v1026;
                      *v1026 = 44;
                      *(v1026 + 1) = v1435;
                      *(v1026 + 1) = v1487;
                      v305 = v1026 + 8;
                      v306 = -1;
                      *(v1026 + 2) = v1460;
                      *(v1026 + 3) = -1;
                      goto LABEL_1848;
                    }

                    v1003 = *(v1002 + 8);
                    if (v1003 == -15610)
                    {
                      v1025 = v999;
                      v1026 = apr_palloc(p, 0x68uLL);
                      v304 = v1026;
                      *v1026 = 44;
                      *(v1026 + 1) = v1435;
                      *(v1026 + 1) = v1487;
                      v305 = v1026 + 8;
                      *(v1026 + 2) = v1460;
                      *(v1026 + 3) = -1;
LABEL_1848:
                      *(v1026 + 4) = 0;
                      *(v1026 + 5) = v998;
                      *(v1026 + 6) = v1025;
                      *(v1026 + 7) = v1387;
                      *(v1026 + 8) = v1399;
                      *(v1026 + 9) = v1416;
                      *(v1026 + 5) = v1513;
                      v1026[96] = v1000;
                      *(v1026 + 97) = *__src;
                      *(v1026 + 25) = *&__src[3];
LABEL_1849:
                      v1215 = *find_entry(ht, v305, 8uLL, 0);
                      if (v1215)
                      {
                        v1215 = *(v1215 + 32);
                      }

                      *(v304 + 4) = v1215;
                      apr_hash_set(ht, v305, 8, v304);
                      *(v304 + 3) = v306;
                      goto LABEL_1852;
                    }

                    v1004 = v1531;
                    if (v1003 > -15437)
                    {
                      if (v1003 > -10142)
                      {
                        if (v1003 == -10141)
                        {
                          v1020 = v999;
                          v1021 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                          v999 = v1020;
                          v1014.i64[0] = v1513.i64[0];
                          v1014.i64[1] = *(v1021 + 1);
                          goto LABEL_1618;
                        }

                        if (v1003 == -10140)
                        {
                          v1012 = v999;
                          v1013 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                          v999 = v1012;
                          v1014.i64[1] = v1513.i64[1];
                          v1014.i64[0] = *(v1013 + 1);
LABEL_1618:
                          v1513 = v1014;
                        }
                      }

                      else if (v1003 == -15436)
                      {
                        v1016 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                        v1487 = *(v1016 + 1);
                        v1460 = *v1002;
                        v1435 = *(v1002 + 8);
                        v1017 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 14), v1004);
                        v998 = v1017;
                        if (v1017)
                        {
                          v1513 = vextq_s8(*v1017, *v1017, 8uLL);
                        }

                        v1416 = *v1016;
                        v999 = *(v1016 + 2);
                        v1000 = 1;
                      }

                      else if (v1003 == -14835)
                      {
                        v1007 = v1000;
                        v1008 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                        v1487 = *(v1008 + 1);
                        v1460 = *v1002;
                        v1435 = *(v1002 + 8);
                        v1009 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 14), v1004);
                        v998 = v1009;
                        if (v1009)
                        {
                          v1513 = vextq_s8(*v1009, *v1009, 8uLL);
                        }

                        v1387 = *v1008;
                        goto LABEL_1610;
                      }
                    }

                    else if (v1003 > -15445)
                    {
                      if (v1003 == -15444)
                      {
                        v1018 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                        v1487 = *(v1018 + 1);
                        v1460 = *v1002;
                        v1435 = *(v1002 + 8);
                        v1019 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 14), v1004);
                        v998 = v1019;
                        if (v1019)
                        {
                          v1513 = vextq_s8(*v1019, *v1019, 8uLL);
                        }

                        v1416 = *v1018;
                        v999 = *(v1018 + 2);
                        v1000 = 2;
                      }

                      else if (v1003 == -15437)
                      {
                        v1010 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                        v1487 = *(v1010 + 1);
                        v1460 = *v1002;
                        v1435 = *(v1002 + 8);
                        v1011 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 14), v1004);
                        v998 = v1011;
                        if (v1011)
                        {
                          v1513 = vextq_s8(*v1011, *v1011, 8uLL);
                        }

                        v1416 = *v1010;
                        v999 = *(v1010 + 2);
                        v1000 = 4;
                      }
                    }

                    else
                    {
                      if (v1003 == -15620)
                      {
                        v1007 = v1000;
                        v1008 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                        v1487 = *(v1008 + 1);
                        v1460 = *v1002;
                        v1435 = *(v1002 + 8);
                        v1015 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 14), v1004);
                        v998 = v1015;
                        if (v1015)
                        {
                          v1513 = vextq_s8(*v1015, *v1015, 8uLL);
                        }

                        v1399 = *v1008;
LABEL_1610:
                        v999 = *(v1008 + 2);
                        v1000 = v1007;
                        goto LABEL_1619;
                      }

                      if (v1003 == -15463)
                      {
                        v1005 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 13), v1531);
                        v1487 = *(v1005 + 1);
                        v1460 = *v1002;
                        v1435 = *(v1002 + 8);
                        v1006 = GTTraceFunc_argumentBytesWithMap((v1001 + ((HIDWORD(v290) - v290) << 6)), *(v1002 + 14), v1004);
                        v998 = v1006;
                        if (v1006)
                        {
                          v1513 = vextq_s8(*v1006, *v1006, 8uLL);
                        }

                        v1416 = *v1005;
                        v999 = *(v1005 + 2);
                        v1000 = v1005[24];
                      }
                    }

LABEL_1619:
                    v1022 = atomic_load((v240 + 4));
                    v1023 = v290 + (v1022 >> 6);
                    v1024 = (HIDWORD(v290) + 1);
                    v290 = (v1024 << 32) | v290;
                    if (v1024 == v1023 - 1)
                    {
                      v290 = (v1024 << 32) | v1024;
                      v240 = *(v240 + 40);
                    }
                  }

                case 34:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1540);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 64);
                  *__src = 39;
                  *&__src[24] = -1;
                  v106 = *(v50 + 32);
                  if (!v106)
                  {
                    v259 = 0;
                    goto LABEL_667;
                  }

                  v107 = 0;
                  while (1)
                  {
                    v108 = atomic_load((v106 + 4));
                    v109 = v107 + (v108 >> 6) - 1;
                    if (v109 > 0)
                    {
                      break;
                    }

                    v106 = *(v106 + 40);
                    v107 = v109;
                    if (!v106)
                    {
                      v107 = v109;
                      goto LABEL_666;
                    }
                  }

                  v109 = 0;
LABEL_666:
                  v259 = v107 | (v109 << 32);
LABEL_667:
                  while (v106)
                  {
                    v481 = v106 + 64 + ((HIDWORD(v259) - v259) << 6);
                    if ((*(v481 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v482 = *v481;
                    if (*v481 >= v1528 + v1527)
                    {
                      break;
                    }

                    v483 = *(v481 + 8);
                    if ((v483 + 20480) >= 5)
                    {
                      if (v483 == -20475)
                      {
                        v489 = apr_palloc(p, 0x60uLL);
                        v489[2] = *&__src[32];
                        v489[3] = *&__src[48];
                        v489[4] = *&__src[64];
                        v489[5] = *&__src[80];
                        *v489 = *__src;
                        v489[1] = *&__src[16];
                        goto LABEL_1916;
                      }
                    }

                    else if (v1527 <= v482)
                    {
                      v484 = apr_palloc(p, 0x60uLL);
                      *(v484 + 2) = *&__src[32];
                      *(v484 + 3) = *&__src[48];
                      *(v484 + 4) = *&__src[64];
                      *(v484 + 5) = *&__src[80];
                      *v484 = *__src;
                      *(v484 + 1) = *&__src[16];
                      v485 = *find_entry(ht, v484 + 8, 8uLL, 0);
                      if (v485)
                      {
                        v485 = *(v485 + 32);
                      }

                      v484[4] = v485;
                      apr_hash_set(ht, v484 + 1, 8, v484);
                      v484[3] = v482;
                    }

                    GTMTLFXSMSpatialScaler_processTraceFuncWithMap(__src, v1531, v106 + 64 + ((HIDWORD(v259) - v259) << 6));
                    v486 = atomic_load((v106 + 4));
                    v487 = v259 + (v486 >> 6);
                    v488 = (HIDWORD(v259) + 1);
                    v259 = (v488 << 32) | v259;
                    if (v488 == v487 - 1)
                    {
                      v259 = (v488 << 32) | v488;
                      v106 = *(v106 + 40);
                    }
                  }

                  v489 = apr_palloc(p, 0x60uLL);
                  v489[2] = *&__src[32];
                  v489[3] = *&__src[48];
                  v489[4] = *&__src[64];
                  v489[5] = *&__src[80];
                  *v489 = *__src;
                  v489[1] = *&__src[16];
LABEL_1731:
                  v1117 = *find_entry(ht, v489 + 8, 8uLL, 0);
                  if (v1117)
                  {
                    v1117 = *(v1117 + 32);
                  }

                  *(v489 + 4) = v1117;
                  apr_hash_set(ht, v489 + 8, 8, v489);
                  v482 = -1;
                  goto LABEL_1734;
                case 35:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1540);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 120);
                  *__src = 40;
                  *&__src[24] = -1;
                  v212 = *(v50 + 32);
                  if (!v212)
                  {
                    v283 = 0;
                    goto LABEL_1452;
                  }

                  v213 = 0;
                  do
                  {
                    v214 = atomic_load((v212 + 4));
                    v215 = v213 + (v214 >> 6) - 1;
                    if (v215 > 0)
                    {
                      v215 = 0;
                      goto LABEL_1451;
                    }

                    v212 = *(v212 + 40);
                    v213 = v215;
                  }

                  while (v212);
                  v213 = v215;
LABEL_1451:
                  v283 = v213 | (v215 << 32);
LABEL_1452:
                  while (v212)
                  {
                    v923 = v212 + 64 + ((HIDWORD(v283) - v283) << 6);
                    if ((*(v923 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v549 = *v923;
                    if (*v923 >= v1528 + v1527)
                    {
                      break;
                    }

                    v924 = *(v923 + 8);
                    if ((v924 + 20473) < 0xF || (v924 + 20457) < 2 || v924 == -18430)
                    {
                      if (v1527 <= v549)
                      {
                        v927 = apr_palloc(p, 0x98uLL);
                        *(v927 + 6) = *&__src[96];
                        *(v927 + 7) = *&__src[112];
                        *(v927 + 8) = *&__src[128];
                        v927[18] = *&__src[144];
                        *(v927 + 2) = *&__src[32];
                        *(v927 + 3) = *&__src[48];
                        *(v927 + 4) = *&__src[64];
                        *(v927 + 5) = *&__src[80];
                        *v927 = *__src;
                        *(v927 + 1) = *&__src[16];
                        v928 = *find_entry(ht, v927 + 8, 8uLL, 0);
                        if (v928)
                        {
                          v928 = *(v928 + 32);
                        }

                        v927[4] = v928;
                        apr_hash_set(ht, v927 + 1, 8, v927);
                        v927[3] = v549;
                      }
                    }

                    else if (v924 == -20458)
                    {
                      goto LABEL_1924;
                    }

                    GTMTLFXSMTemporalScaler_processTraceFuncWithMap(__src, v1531, (v212 + 64 + ((HIDWORD(v283) - v283) << 6)));
                    v929 = atomic_load((v212 + 4));
                    v930 = v283 + (v929 >> 6);
                    v931 = (HIDWORD(v283) + 1);
                    v283 = (v931 << 32) | v283;
                    if (v931 == v930 - 1)
                    {
                      v283 = (v931 << 32) | v931;
                      v212 = *(v212 + 40);
                    }
                  }

                  goto LABEL_1471;
                case 36:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1541) = v1541 + 1;
                  v236 = *(v50 + 32);
                  if (!v236)
                  {
                    v289 = 0;
                    goto LABEL_1567;
                  }

                  v237 = 0;
                  while (1)
                  {
                    v238 = atomic_load((v236 + 4));
                    v239 = v237 + (v238 >> 6) - 1;
                    if (v239 > 0)
                    {
                      break;
                    }

                    v236 = *(v236 + 40);
                    v237 = v239;
                    if (!v236)
                    {
                      v237 = v239;
                      goto LABEL_1566;
                    }
                  }

                  v239 = 0;
LABEL_1566:
                  v289 = v237 | (v239 << 32);
LABEL_1567:
                  v988 = 0;
                  v1486 = 0;
                  v1512 = 0;
                  v989 = 0;
                  v342 = 0;
                  while (v236)
                  {
                    v990 = v236 + 64;
                    v991 = v236 + 64 + ((HIDWORD(v289) - v289) << 6);
                    if ((*(v991 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v313 = *v991;
                    if (*v991 >= v1528 + v1527)
                    {
                      break;
                    }

                    v992 = *(v991 + 8);
                    if (v992 == -15245)
                    {
                      v993 = v1531;
                      v994 = GTTraceFunc_argumentBytesWithMap((v990 + ((HIDWORD(v289) - v289) << 6)), *(v991 + 13), v1531);
                      v1486 = *(v994 + 1);
                      v1512 = *v991;
                      v988 = *(v991 + 8);
                      v342 = GTTraceFunc_argumentBytesWithMap((v990 + ((HIDWORD(v289) - v289) << 6)), v994[24], v993);
                      v989 = *v994;
                    }

                    else if (v992 == -15231)
                    {
                      v1233 = apr_palloc(p, 0x38uLL);
                      v1234 = v1233;
                      *v1233 = 72;
                      *(v1233 + 1) = v988;
                      *(v1233 + 1) = v1486;
                      v1235 = v1233 + 8;
                      *(v1233 + 2) = v1512;
                      *(v1233 + 3) = -1;
                      *(v1233 + 4) = 0;
                      *(v1233 + 5) = v989;
LABEL_1886:
                      *(v1233 + 6) = v342;
                      goto LABEL_1887;
                    }

                    v995 = atomic_load((v236 + 4));
                    v996 = v289 + (v995 >> 6);
                    v997 = (HIDWORD(v289) + 1);
                    v289 = (v997 << 32) | v289;
                    if (v997 == v996 - 1)
                    {
                      v289 = (v997 << 32) | v997;
                      v236 = *(v236 + 40);
                    }
                  }

                  v353 = apr_palloc(p, 0x38uLL);
                  v304 = v353;
                  *v353 = 72;
                  *(v353 + 1) = v988;
                  *(v353 + 1) = v1486;
                  v305 = v353 + 8;
                  v306 = -1;
                  *(v353 + 2) = v1512;
                  *(v353 + 3) = -1;
                  *(v353 + 4) = 0;
                  *(v353 + 5) = v989;
                  goto LABEL_1578;
                case 37:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1541);
                  *__src = 0uLL;
                  v74 = *(v50 + 32);
                  if (!v74)
                  {
                    v251 = 0;
                    goto LABEL_446;
                  }

                  v75 = 0;
                  do
                  {
                    v76 = atomic_load((v74 + 4));
                    v77 = v75 + (v76 >> 6) - 1;
                    if (v77 > 0)
                    {
                      v77 = 0;
                      goto LABEL_445;
                    }

                    v74 = *(v74 + 40);
                    v75 = v77;
                  }

                  while (v74);
                  v75 = v77;
LABEL_445:
                  v251 = v75 | (v77 << 32);
LABEL_446:
                  v341 = 0;
                  v1463 = 0;
                  v1492 = 0;
                  v342 = 0;
                  while (1)
                  {
                    if (!v74 || (v343 = v74 + 64, v344 = v74 + 64 + ((HIDWORD(v251) - v251) << 6), (*(v344 + 15) & 8) == 0) || (v313 = *v344, *v344 >= v1528 + v1527))
                    {
                      v353 = apr_palloc(p, 0x38uLL);
                      v304 = v353;
                      *v353 = 53;
                      *(v353 + 1) = v341;
                      *(v353 + 1) = v1463;
                      v305 = v353 + 8;
                      v306 = -1;
                      *(v353 + 2) = v1492;
                      *(v353 + 3) = -1;
                      *(v353 + 2) = *__src;
LABEL_1578:
                      *(v353 + 6) = v342;
                      goto LABEL_1849;
                    }

                    v345 = *(v344 + 8);
                    if (v345 == -15328)
                    {
                      v1233 = apr_palloc(p, 0x38uLL);
                      v1234 = v1233;
                      *v1233 = 53;
                      *(v1233 + 1) = v341;
                      *(v1233 + 1) = v1463;
                      v1235 = v1233 + 8;
                      *(v1233 + 2) = v1492;
                      *(v1233 + 3) = -1;
                      *(v1233 + 2) = *__src;
                      goto LABEL_1886;
                    }

                    v346 = v6;
                    v347 = v1531;
                    v348 = 24;
                    if (v345 > -15261)
                    {
                      break;
                    }

                    if (v345 != -15348)
                    {
                      if (v345 != -15296)
                      {
                        goto LABEL_460;
                      }

LABEL_458:
                      v348 = 32;
                    }

LABEL_459:
                    v349 = GTTraceFunc_argumentBytesWithMap((v343 + ((HIDWORD(v251) - v251) << 6)), *(v344 + 13), v1531);
                    v1463 = *(v349 + 1);
                    v1492 = *v344;
                    v341 = *(v344 + 8);
                    v342 = GTTraceFunc_argumentBytesWithMap((v343 + ((HIDWORD(v251) - v251) << 6)), v349[v348], v347);
LABEL_460:
                    v350 = atomic_load((v74 + 4));
                    v351 = v251 + (v350 >> 6);
                    v352 = (HIDWORD(v251) + 1);
                    v251 = (v352 << 32) | v251;
                    v6 = v346;
                    if (v352 == v351 - 1)
                    {
                      v251 = (v352 << 32) | v352;
                      v74 = *(v74 + 40);
                    }
                  }

                  if (v345 != -15260)
                  {
                    if (v345 != -15259)
                    {
                      goto LABEL_460;
                    }

                    goto LABEL_459;
                  }

                  goto LABEL_458;
                case 38:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1541);
                  v199 = *(v50 + 32);
                  if (!v199)
                  {
                    v281 = 0;
                    goto LABEL_1412;
                  }

                  v200 = 0;
                  do
                  {
                    v201 = atomic_load((v199 + 4));
                    v202 = v200 + (v201 >> 6) - 1;
                    if (v202 > 0)
                    {
                      v202 = 0;
                      goto LABEL_1411;
                    }

                    v199 = *(v199 + 40);
                    v200 = v202;
                  }

                  while (v199);
                  v200 = v202;
LABEL_1411:
                  v281 = v200 | (v202 << 32);
LABEL_1412:
                  v896 = 0;
                  v897 = 0;
                  v1508 = 0;
                  v1481 = 0;
                  v1432 = 0;
                  v1457 = -1;
                  while (v199)
                  {
                    v898 = v199 + 64;
                    v899 = v199 + 64 + ((HIDWORD(v281) - v281) << 6);
                    if ((*(v899 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v900 = *v899;
                    if (*v899 >= v1528 + v1527)
                    {
                      break;
                    }

                    v901 = *(v899 + 8);
                    if (v901 == -16344)
                    {
                      if (v1527 > v900)
                      {
                        goto LABEL_1852;
                      }

                      v1211 = apr_palloc(p, 0x38uLL);
                      v1212 = v1211;
                      *v1211 = 92;
                      *(v1211 + 1) = v896;
                      *(v1211 + 1) = v897;
                      v1213 = v1211 + 8;
                      *(v1211 + 2) = v1508;
                      *(v1211 + 3) = v1457;
                      *(v1211 + 4) = 0;
                      *(v1211 + 5) = v1481;
                      v1214 = v1432;
LABEL_1873:
                      *(v1211 + 6) = v1214;
                      v1230 = *find_entry(ht, v1213, 8uLL, 0);
                      if (v1230)
                      {
                        v1230 = *(v1230 + 32);
                      }

                      v1212[4] = v1230;
                      apr_hash_set(ht, v1213, 8, v1212);
                      v1212[3] = v900;
                      goto LABEL_1852;
                    }

                    v902 = v1531;
                    switch(v901)
                    {
                      case -14834:
                        v904 = GTTraceFunc_argumentBytesWithMap((v898 + ((HIDWORD(v281) - v281) << 6)), *(v899 + 13), v1531);
                        v1508 = *v899;
                        v896 = *(v899 + 8);
                        v897 = *(v904 + 1);
                        v1481 = *v904;
                        v1432 = GTTraceFunc_argumentBytesWithMap((v898 + ((HIDWORD(v281) - v281) << 6)), v904[24], v902);
                        break;
                      case -15155:
                        v1457 = *v899;
                        break;
                      case -15190:
                        v903 = GTTraceFunc_argumentBytesWithMap((v898 + ((HIDWORD(v281) - v281) << 6)), *(v899 + 13), v1531);
                        v1508 = *v899;
                        v896 = *(v899 + 8);
                        v897 = *(v903 + 1);
                        v1481 = *v903;
                        break;
                    }

                    v905 = atomic_load((v199 + 4));
                    v906 = v281 + (v905 >> 6);
                    v907 = (HIDWORD(v281) + 1);
                    v281 = (v907 << 32) | v281;
                    if (v907 == v906 - 1)
                    {
                      v281 = (v907 << 32) | v907;
                      v199 = *(v199 + 40);
                    }
                  }

                  v908 = apr_palloc(p, 0x38uLL);
                  v339 = v908;
                  *v908 = 92;
                  *(v908 + 1) = v896;
                  *(v908 + 1) = v897;
                  v340 = v908 + 8;
                  *(v908 + 2) = v1508;
                  *(v908 + 3) = v1457;
                  *(v908 + 4) = 0;
                  *(v908 + 5) = v1481;
                  v909 = v1432;
LABEL_1449:
                  *(v908 + 6) = v909;
                  goto LABEL_1562;
                case 39:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1541);
                  v70 = *(v50 + 32);
                  if (!v70)
                  {
                    v250 = 0;
                    goto LABEL_419;
                  }

                  v71 = 0;
                  do
                  {
                    v72 = atomic_load((v70 + 4));
                    v73 = v71 + (v72 >> 6) - 1;
                    if (v73 > 0)
                    {
                      v73 = 0;
                      goto LABEL_418;
                    }

                    v70 = *(v70 + 40);
                    v71 = v73;
                  }

                  while (v70);
                  v71 = v73;
LABEL_418:
                  v250 = v71 | (v73 << 32);
LABEL_419:
                  v326 = 0;
                  v1400 = 0;
                  v1418 = 0;
                  v1437 = 0;
                  v1388 = 0;
                  v1491 = 0;
                  v1462 = -1;
                  while (1)
                  {
                    if (!v70 || (v327 = v70 + 64, v328 = v70 + 64 + ((HIDWORD(v250) - v250) << 6), (*(v328 + 15) & 8) == 0) || (v306 = *v328, *v328 >= v1528 + v1527))
                    {
                      v339 = apr_palloc(p, 0x40uLL);
                      *v339 = 91;
                      *(v339 + 1) = v326;
                      *(v339 + 1) = v1400;
                      v340 = v339 + 8;
                      *(v339 + 2) = v1437;
                      *(v339 + 3) = v1462;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1418;
                      *(v339 + 6) = v1388;
                      *(v339 + 7) = v1491;
LABEL_1562:
                      v987 = *find_entry(ht, v340, 8uLL, 0);
                      if (v987)
                      {
                        v987 = *(v987 + 32);
                      }

                      *(v339 + 4) = v987;
                      apr_hash_set(ht, v340, 8, v339);
                      *(v339 + 3) = -1;
                      goto LABEL_1852;
                    }

                    v329 = *(v328 + 8);
                    if (v329 == -14907)
                    {
                      if (v1527 > v306)
                      {
                        v330 = v1531;
LABEL_440:
                        v335 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), *(v328 + 13), v330);
                        v1491 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), v335[8], v330);
                        goto LABEL_441;
                      }

                      v331 = apr_palloc(p, 0x40uLL);
                      *v331 = 91;
                      *(v331 + 1) = v326;
                      v331[1] = v1400;
                      v331[2] = v1437;
                      v331[3] = v1462;
                      v331[4] = 0;
                      v331[5] = v1418;
                      v331[6] = v1388;
                      v331[7] = v1491;
                      v332 = *find_entry(ht, v331 + 8, 8uLL, 0);
                      if (v332)
                      {
                        v332 = *(v332 + 32);
                      }

                      v331[4] = v332;
                      apr_hash_set(ht, v331 + 1, 8, v331);
                      v331[3] = v306;
                      v329 = *(v328 + 8);
                    }

                    else if ((v329 + 15170) <= 1)
                    {
                      if (v1527 > v306)
                      {
                        goto LABEL_1852;
                      }

                      v304 = apr_palloc(p, 0x40uLL);
                      *v304 = 91;
                      *(v304 + 1) = v326;
                      *(v304 + 1) = v1400;
                      v305 = v304 + 8;
                      *(v304 + 2) = v1437;
                      *(v304 + 3) = v1462;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1418;
                      *(v304 + 6) = v1388;
                      *(v304 + 7) = v1491;
                      goto LABEL_1849;
                    }

                    v330 = v1531;
                    if (v329 > -15171)
                    {
                      if ((v329 + 15170) >= 2)
                      {
                        if (v329 == -14907)
                        {
                          goto LABEL_440;
                        }
                      }

                      else
                      {
                        v1462 = *v328;
                      }
                    }

                    else if ((v329 + 15173) >= 2)
                    {
                      if (v329 == -15196)
                      {
                        v334 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), *(v328 + 13), v1531);
                        v1437 = *v328;
                        v326 = *(v328 + 8);
                        v1400 = *(v334 + 1);
                        v1418 = *v334;
                      }
                    }

                    else if (!v326)
                    {
                      v333 = GTTraceFunc_argumentBytesWithMap((v327 + ((HIDWORD(v250) - v250) << 6)), *(v328 + 13), v1531);
                      v1437 = *v328;
                      v326 = *(v328 + 8);
                      v1388 = *v333;
                      v1400 = *(v333 + 1);
                      v1418 = 1;
                    }

LABEL_441:
                    v336 = atomic_load((v70 + 4));
                    v337 = v250 + (v336 >> 6);
                    v338 = (HIDWORD(v250) + 1);
                    v250 = (v338 << 32) | v250;
                    if (v338 == v337 - 1)
                    {
                      v250 = (v338 << 32) | v338;
                      v70 = *(v70 + 40);
                    }
                  }

                case 40:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1542) = v1542 + 1;
                  v66 = *(v50 + 32);
                  if (!v66)
                  {
                    v249 = 0;
                    goto LABEL_404;
                  }

                  v67 = 0;
                  while (1)
                  {
                    v68 = atomic_load((v66 + 4));
                    v69 = v67 + (v68 >> 6) - 1;
                    if (v69 > 0)
                    {
                      break;
                    }

                    v66 = *(v66 + 40);
                    v67 = v69;
                    if (!v66)
                    {
                      v67 = v69;
                      goto LABEL_403;
                    }
                  }

                  v69 = 0;
LABEL_403:
                  v249 = v67 | (v69 << 32);
LABEL_404:
                  v307 = 0;
                  v308 = 0;
                  v309 = 0;
                  v310 = 0;
                  v1490 = 0;
                  while (1)
                  {
                    v311 = v66 + 64;
                    do
                    {
                      if (!v66 || (v312 = v311 + ((HIDWORD(v249) - v249) << 6), (*(v312 + 15) & 8) == 0) || (v313 = *v312, *v312 >= v1528 + v1527))
                      {
                        v324 = v309;
                        v325 = apr_palloc(p, 0x38uLL);
                        v304 = v325;
                        *v325 = 90;
                        *(v325 + 1) = v307;
                        *(v325 + 1) = v308;
                        v305 = v325 + 8;
                        v306 = -1;
                        *(v325 + 2) = v324;
                        *(v325 + 3) = -1;
                        *(v325 + 4) = 0;
                        *(v325 + 5) = v310;
LABEL_1487:
                        *(v325 + 6) = v1490;
                        goto LABEL_1849;
                      }

                      v314 = *(v312 + 8);
                      if (v314 == -15175)
                      {
                        if (v1527 > v313)
                        {
                          goto LABEL_1852;
                        }

                        v1190 = v309;
                        v1191 = apr_palloc(p, 0x38uLL);
                        v1234 = v1191;
                        *v1191 = 90;
                        *(v1191 + 1) = v307;
                        *(v1191 + 1) = v308;
                        v1235 = v1191 + 8;
                        *(v1191 + 2) = v1190;
                        *(v1191 + 3) = -1;
                        *(v1191 + 4) = 0;
                        *(v1191 + 5) = v310;
                        goto LABEL_1846;
                      }

                      v315 = v1531;
                      if (v314 == -15197)
                      {
                        v317 = GTTraceFunc_argumentBytesWithMap((v311 + ((HIDWORD(v249) - v249) << 6)), *(v312 + 13), v1531);
                        v318 = v6;
                        v319 = *v312;
                        v307 = *(v312 + 8);
                        v310 = *v317;
                        v308 = *(v317 + 1);
                        v320 = GTTraceFunc_argumentBytesWithMap(v312, v317[24], v315);
                        v309 = v319;
                        v6 = v318;
                        v311 = v66 + 64;
                        v1490 = v320;
                      }

                      else if (v314 == -15198)
                      {
                        v316 = GTTraceFunc_argumentBytesWithMap((v311 + ((HIDWORD(v249) - v249) << 6)), *(v312 + 13), v1531);
                        v309 = *v312;
                        v307 = *(v312 + 8);
                        v310 = *v316;
                        v308 = *(v316 + 1);
                      }

                      v321 = atomic_load((v66 + 4));
                      v322 = v249 + (v321 >> 6);
                      v323 = (HIDWORD(v249) + 1);
                      v249 = (v323 << 32) | v249;
                    }

                    while (v323 != v322 - 1);
                    v249 = (v323 << 32) | v323;
                    v66 = *(v66 + 40);
                  }

                case 41:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  bzero(__src, 0x6B8uLL);
                  *__src = 88;
                  *&__src[24] = -1;
                  ++DWORD1(v1542);
                  v114 = *(v50 + 32);
                  if (!v114)
                  {
                    v261 = 0;
                    goto LABEL_727;
                  }

                  v115 = 0;
                  while (1)
                  {
                    v116 = atomic_load((v114 + 4));
                    v117 = v115 + (v116 >> 6) - 1;
                    if (v117 > 0)
                    {
                      break;
                    }

                    v114 = *(v114 + 40);
                    v115 = v117;
                    if (!v114)
                    {
                      v115 = v117;
                      goto LABEL_726;
                    }
                  }

                  v117 = 0;
LABEL_726:
                  v261 = v115 | (v117 << 32);
                  while (1)
                  {
LABEL_727:
                    if (!v114 || (v547 = v114 + 64, v548 = v114 + 64 + ((HIDWORD(v261) - v261) << 6), (*(v548 + 15) & 8) == 0) || (v549 = *v548, *v548 >= v1528 + v1527))
                    {
                      v575 = apr_palloc(p, 0x6B8uLL);
                      v576 = v575;
                      v577 = 1720;
                      goto LABEL_1510;
                    }

                    v550 = *(v548 + 8);
                    if ((v550 + 15181) < 4 || v550 == -14848)
                    {
                      if (v1527 <= v549)
                      {
                        v552 = apr_palloc(p, 0x6B8uLL);
                        memcpy(v552, __src, 0x6B8uLL);
                        v553 = *find_entry(ht, v552 + 8, 8uLL, 0);
                        if (v553)
                        {
                          v553 = *(v553 + 32);
                        }

                        *(v552 + 4) = v553;
                        apr_hash_set(ht, v552 + 8, 8, v552);
                        *(v552 + 3) = v549;
                        v550 = *(v548 + 8);
                      }
                    }

                    else if (v550 == -15182)
                    {
                      if (v1527 > v549)
                      {
                        goto LABEL_1852;
                      }

                      v1285 = apr_palloc(p, 0x6B8uLL);
                      v576 = v1285;
                      v1286 = 1720;
                      goto LABEL_1927;
                    }

                    v554 = v1531;
                    if (v550 <= -15181)
                    {
                      switch(v550)
                      {
                        case -15200:
                          v567 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1531);
                          *&__src[8] = *(v567 + 1);
                          *&__src[16] = *v548;
                          *&__src[4] = *(v548 + 8);
                          *&__src[40] = *v567;
                          *&__src[48] = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), v567[24], v554);
                          break;
                        case -15182:
                          *&__src[24] = *v548;
                          break;
                        case -15181:
                          v559 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1531);
                          v560 = *(v559 + 2);
                          *&__src[8 * v560 + 64] = *(v559 + 1);
                          v561 = 1 << v560;
                          v562 = (v560 >> 3) & 0x1FFFFFFFFFFFFFF8;
                          v563 = *&__src[v562 + 56] | v561;
LABEL_753:
                          *&__src[v562 + 56] = v563;
                          break;
                      }
                    }

                    else
                    {
                      if (v550 <= -15179)
                      {
                        if (v550 != -15180)
                        {
                          v555 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1531);
                          v556 = *(v555 + 1);
                          v557 = *(v555 + 2);
                          v558 = &__src[1592];
LABEL_755:
                          *&v558[8 * v557] = v556;
                          goto LABEL_757;
                        }

                        v568 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1531);
                        v569 = *(v568 + 2);
                        *&__src[8 * v569 + 64] = *(v568 + 1);
                        v570 = 1 << v569;
                        v562 = (v569 >> 3) & 0x1FFFFFFFFFFFFFF8;
                        v563 = *&__src[v562 + 56] & ~v570;
                        goto LABEL_753;
                      }

                      if (v550 == -15178)
                      {
                        v571 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1531);
                        v556 = *(v571 + 1);
                        v557 = *(v571 + 2);
                        v558 = &__src[568];
                        goto LABEL_755;
                      }

                      if (v550 == -14848)
                      {
                        v564 = GTTraceFunc_argumentBytesWithMap((v547 + ((HIDWORD(v261) - v261) << 6)), *(v548 + 13), v1531);
                        v565 = *(v564 + 3);
                        *&__src[8 * v565 + 64] = *(v564 + 1);
                        v566 = (v565 >> 3) & 0x1FFFFFFFFFFFFFF8;
                        *&__src[v566 + 56] |= 1 << v565;
                        *&__src[8 * v565 + 320] = *(v564 + 2);
                        *&__src[v566 + 312] |= 1 << v565;
                      }
                    }

LABEL_757:
                    v572 = atomic_load((v114 + 4));
                    v573 = v261 + (v572 >> 6);
                    v574 = (HIDWORD(v261) + 1);
                    v261 = (v574 << 32) | v261;
                    if (v574 == v573 - 1)
                    {
                      v261 = (v574 << 32) | v574;
                      v114 = *(v114 + 40);
                    }
                  }

                case 42:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1542);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 120);
                  *__src = 103;
                  *&__src[24] = -1;
                  v152 = *(v50 + 32);
                  if (!v152)
                  {
                    v270 = 0;
                    goto LABEL_1057;
                  }

                  v153 = 0;
                  while (1)
                  {
                    v154 = atomic_load((v152 + 4));
                    v155 = v153 + (v154 >> 6) - 1;
                    if (v155 > 0)
                    {
                      break;
                    }

                    v152 = *(v152 + 40);
                    v153 = v155;
                    if (!v152)
                    {
                      v153 = v155;
                      goto LABEL_1056;
                    }
                  }

                  v155 = 0;
LABEL_1056:
                  v270 = v153 | (v155 << 32);
LABEL_1057:
                  while (v152)
                  {
                    v716 = v152 + 64 + ((HIDWORD(v270) - v270) << 6);
                    if ((*(v716 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v549 = *v716;
                    if (*v716 >= v1528 + v1527)
                    {
                      break;
                    }

                    v717 = *(v716 + 8);
                    if (((v717 + 20349) > 0x15 || ((1 << (v717 + 125)) & 0x3FE001) == 0) && (v717 + 20455) >= 9)
                    {
                      if (v717 == -20446)
                      {
LABEL_1924:
                        v1278 = apr_palloc(p, 0x98uLL);
                        v576 = v1278;
                        v1278[6] = *&__src[96];
                        v1278[7] = *&__src[112];
                        v1278[8] = *&__src[128];
                        *(v1278 + 18) = *&__src[144];
LABEL_1925:
                        v1278[2] = *&__src[32];
                        v1278[3] = *&__src[48];
                        v1278[4] = *&__src[64];
                        v1278[5] = *&__src[80];
                        *v1278 = *__src;
                        v1278[1] = *&__src[16];
                        goto LABEL_1786;
                      }
                    }

                    else if (v1527 <= v549)
                    {
                      v720 = apr_palloc(p, 0x98uLL);
                      *(v720 + 6) = *&__src[96];
                      *(v720 + 7) = *&__src[112];
                      *(v720 + 8) = *&__src[128];
                      v720[18] = *&__src[144];
                      *(v720 + 2) = *&__src[32];
                      *(v720 + 3) = *&__src[48];
                      *(v720 + 4) = *&__src[64];
                      *(v720 + 5) = *&__src[80];
                      *v720 = *__src;
                      *(v720 + 1) = *&__src[16];
                      v721 = *find_entry(ht, v720 + 8, 8uLL, 0);
                      if (v721)
                      {
                        v721 = *(v721 + 32);
                      }

                      v720[4] = v721;
                      apr_hash_set(ht, v720 + 1, 8, v720);
                      v720[3] = v549;
                    }

                    GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(__src, v1531, (v152 + 64 + ((HIDWORD(v270) - v270) << 6)));
                    v722 = atomic_load((v152 + 4));
                    v723 = v270 + (v722 >> 6);
                    v724 = (HIDWORD(v270) + 1);
                    v270 = (v724 << 32) | v270;
                    if (v724 == v723 - 1)
                    {
                      v270 = (v724 << 32) | v724;
                      v152 = *(v152 + 40);
                    }
                  }

LABEL_1471:
                  v598 = apr_palloc(p, 0x98uLL);
                  v576 = v598;
                  v598[6] = *&__src[96];
                  v598[7] = *&__src[112];
                  v598[8] = *&__src[128];
                  *(v598 + 18) = *&__src[144];
LABEL_1472:
                  v598[2] = *&__src[32];
                  v598[3] = *&__src[48];
                  v598[4] = *&__src[64];
                  v598[5] = *&__src[80];
                  *v598 = *__src;
                  v598[1] = *&__src[16];
                  goto LABEL_1816;
                case 43:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1542);
                  memset(&__src[32], 0, 304);
                  memset(__src, 0, 24);
                  *__src = 104;
                  *&__src[24] = -1;
                  v220 = *(v50 + 32);
                  if (!v220)
                  {
                    v285 = 0;
                    goto LABEL_1490;
                  }

                  v221 = 0;
                  while (1)
                  {
                    v222 = atomic_load((v220 + 4));
                    v223 = v221 + (v222 >> 6) - 1;
                    if (v223 > 0)
                    {
                      break;
                    }

                    v220 = *(v220 + 40);
                    v221 = v223;
                    if (!v220)
                    {
                      v221 = v223;
                      goto LABEL_1489;
                    }
                  }

                  v223 = 0;
LABEL_1489:
                  v285 = v221 | (v223 << 32);
                  while (1)
                  {
LABEL_1490:
                    if (!v220 || (v944 = v220 + 64 + ((HIDWORD(v285) - v285) << 6), (*(v944 + 15) & 8) == 0) || (v549 = *v944, *v944 >= v1528 + v1527))
                    {
                      v575 = apr_palloc(p, 0x150uLL);
                      v576 = v575;
                      v577 = 336;
                      goto LABEL_1510;
                    }

                    v945 = *(v944 + 8);
                    if ((v945 + 20444) < 0x17)
                    {
                      goto LABEL_1494;
                    }

                    if (v945 > -20349)
                    {
                      break;
                    }

                    if (v945 == -20420)
                    {
                      goto LABEL_1494;
                    }

                    if (v945 == -20421)
                    {
                      v1285 = apr_palloc(p, 0x150uLL);
                      v576 = v1285;
                      v1286 = 336;
                      goto LABEL_1927;
                    }

LABEL_1498:
                    GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(__src, v1531, (v220 + 64 + ((HIDWORD(v285) - v285) << 6)));
                    v948 = atomic_load((v220 + 4));
                    v949 = v285 + (v948 >> 6);
                    v950 = (HIDWORD(v285) + 1);
                    v285 = (v950 << 32) | v285;
                    if (v950 == v949 - 1)
                    {
                      v285 = (v950 << 32) | v950;
                      v220 = *(v220 + 40);
                    }
                  }

                  if ((v945 + 20348) >= 2 && v945 != -18422)
                  {
                    goto LABEL_1498;
                  }

LABEL_1494:
                  if (v1527 <= v549)
                  {
                    v946 = apr_palloc(p, 0x150uLL);
                    memcpy(v946, __src, 0x150uLL);
                    v947 = *find_entry(ht, v946 + 8, 8uLL, 0);
                    if (v947)
                    {
                      v947 = *(v947 + 32);
                    }

                    *(v946 + 4) = v947;
                    apr_hash_set(ht, v946 + 8, 8, v946);
                    *(v946 + 3) = v549;
                  }

                  goto LABEL_1498;
                case 44:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  LODWORD(v1543) = v1543 + 1;
                  v62 = *(v50 + 32);
                  if (!v62)
                  {
                    v248 = 0;
                    goto LABEL_389;
                  }

                  v63 = 0;
                  while (1)
                  {
                    v64 = atomic_load((v62 + 4));
                    v65 = v63 + (v64 >> 6) - 1;
                    if (v65 > 0)
                    {
                      break;
                    }

                    v62 = *(v62 + 40);
                    v63 = v65;
                    if (!v62)
                    {
                      v63 = v65;
                      goto LABEL_388;
                    }
                  }

                  v65 = 0;
LABEL_388:
                  v248 = v63 | (v65 << 32);
LABEL_389:
                  v292 = 0;
                  v1436 = 0;
                  v1489 = 0;
                  v1461 = 0;
                  v1417 = 0;
                  while (v62)
                  {
                    v293 = v62 + 64;
                    v294 = v62 + 64 + ((HIDWORD(v248) - v248) << 6);
                    if ((*(v294 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v295 = *v294;
                    if (*v294 >= v1528 + v1527)
                    {
                      break;
                    }

                    v296 = *(v294 + 8);
                    if (v296 == -15144)
                    {
                      v297 = apr_palloc(p, 0x40uLL);
                      *v297 = 93;
                      *(v297 + 1) = v292;
                      v297[1] = v1436;
                      v297[2] = v1489;
                      v297[3] = -1;
                      v297[4] = 0;
                      v297[5] = v1461;
                      v297[6] = v1417;
                      v297[7] = 0;
                      v298 = *find_entry(ht, v297 + 8, 8uLL, 0);
                      if (v298)
                      {
                        v298 = *(v298 + 32);
                      }

                      v297[4] = v298;
                      apr_hash_set(ht, v297 + 1, 8, v297);
                      v297[3] = v295;
                      v296 = *(v294 + 8);
                    }

                    if (v296 == -15194)
                    {
                      v299 = v1531;
                      v300 = GTTraceFunc_argumentBytesWithMap((v293 + ((HIDWORD(v248) - v248) << 6)), *(v294 + 13), v1531);
                      v1489 = *v294;
                      v292 = *(v294 + 8);
                      v1436 = *(v300 + 1);
                      v1461 = *v300;
                      v1417 = GTTraceFunc_argumentBytesWithMap((v293 + ((HIDWORD(v248) - v248) << 6)), v300[24], v299);
                    }

                    v301 = atomic_load((v62 + 4));
                    v302 = v248 + (v301 >> 6);
                    v303 = (HIDWORD(v248) + 1);
                    v248 = (v303 << 32) | v248;
                    if (v303 == v302 - 1)
                    {
                      v248 = (v303 << 32) | v303;
                      v62 = *(v62 + 40);
                    }
                  }

                  v304 = apr_palloc(p, 0x40uLL);
                  *v304 = 93;
                  *(v304 + 1) = v292;
                  *(v304 + 1) = v1436;
                  v305 = v304 + 8;
                  v306 = -1;
                  *(v304 + 2) = v1489;
                  *(v304 + 3) = -1;
                  *(v304 + 4) = 0;
                  *(v304 + 5) = v1461;
                  *(v304 + 6) = v1417;
                  *(v304 + 7) = 0;
                  goto LABEL_1849;
                case 45:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD1(v1543);
                  v78 = *(v50 + 32);
                  if (!v78)
                  {
                    v252 = 0;
                    goto LABEL_465;
                  }

                  v79 = 0;
                  while (1)
                  {
                    v80 = atomic_load((v78 + 4));
                    v81 = v79 + (v80 >> 6) - 1;
                    if (v81 > 0)
                    {
                      break;
                    }

                    v78 = *(v78 + 40);
                    v79 = v81;
                    if (!v78)
                    {
                      v79 = v81;
LABEL_464:
                      v252 = v79 | (v81 << 32);
LABEL_465:
                      v354 = 0;
                      v355 = 0;
                      v1464 = 0;
                      v1493 = 0;
                      v356 = 0;
                      v1438 = 0;
                      while (v78)
                      {
                        v357 = v78 + 64;
                        v358 = v78 + 64 + ((HIDWORD(v252) - v252) << 6);
                        if ((*(v358 + 15) & 8) == 0)
                        {
                          break;
                        }

                        v359 = *v358;
                        if (*v358 >= v1528 + v1527)
                        {
                          break;
                        }

                        v360 = *(v358 + 8);
                        if (v360 == -14825)
                        {
                          if (v1527 > v359)
                          {
                            goto LABEL_1852;
                          }

                          v1192 = apr_palloc(p, 0x40uLL);
                          *v1192 = 106;
                          *(v1192 + 1) = v354;
                          v1192[1] = v355;
                          v1193 = v1192 + 1;
                          v1192[2] = v1464;
                          v1192[3] = -1;
                          v1192[4] = 0;
                          v1192[5] = v1493;
                          v1192[6] = v356;
                          v1192[7] = v1438;
LABEL_1837:
                          v1208 = *find_entry(ht, v1193, 8uLL, 0);
                          if (v1208)
                          {
                            v1208 = *(v1208 + 32);
                          }

                          v1192[4] = v1208;
                          apr_hash_set(ht, v1193, 8, v1192);
                          v1192[3] = v359;
                          goto LABEL_1852;
                        }

                        if ((v360 + 14869) <= 1)
                        {
                          v361 = v1531;
                          v362 = GTTraceFunc_argumentBytesWithMap((v357 + ((HIDWORD(v252) - v252) << 6)), *(v358 + 13), v1531);
                          v1464 = *v358;
                          v354 = *(v358 + 8);
                          v355 = *(v362 + 1);
                          v1493 = *v362;
                          v1438 = GTTraceFunc_argumentBytesWithMap((v357 + ((HIDWORD(v252) - v252) << 6)), *(v358 + 14), v361);
                          v356 = GTTraceFunc_argumentBytesWithMap((v357 + ((HIDWORD(v252) - v252) << 6)), v362[24], v361);
                        }

                        v363 = atomic_load((v78 + 4));
                        v364 = v252 + (v363 >> 6);
                        v365 = (HIDWORD(v252) + 1);
                        v252 = (v365 << 32) | v252;
                        if (v365 == v364 - 1)
                        {
                          v252 = (v365 << 32) | v365;
                          v78 = *(v78 + 40);
                        }
                      }

                      v366 = apr_palloc(p, 0x40uLL);
                      *v366 = 106;
                      *(v366 + 1) = v354;
                      v366[1] = v355;
                      v367 = v366 + 1;
                      v368 = -1;
                      v366[2] = v1464;
                      v366[3] = -1;
                      v366[4] = 0;
                      v366[5] = v1493;
                      v366[6] = v356;
                      v366[7] = v1438;
LABEL_1352:
                      v865 = *find_entry(ht, v367, 8uLL, 0);
                      if (v865)
                      {
                        v865 = *(v865 + 32);
                      }

                      v366[4] = v865;
                      apr_hash_set(ht, v367, 8, v366);
                      v366[3] = v368;
                      goto LABEL_1852;
                    }
                  }

                  v81 = 0;
                  goto LABEL_464;
                case 46:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1543);
                  v1550 = 0;
                  v1549 = 0;
                  v1548 = 0;
                  v1547 = 0;
                  v1546 = 0;
                  v1545 = 0;
                  *__src = -1;
                  v166 = *(v50 + 32);
                  if (!v166)
                  {
                    v273 = 0;
                    goto LABEL_1150;
                  }

                  v167 = 0;
                  do
                  {
                    v168 = atomic_load((v166 + 4));
                    v169 = v167 + (v168 >> 6) - 1;
                    if (v169 > 0)
                    {
                      v169 = 0;
                      goto LABEL_1149;
                    }

                    v166 = *(v166 + 40);
                    v167 = v169;
                  }

                  while (v166);
                  v167 = v169;
LABEL_1149:
                  v273 = v167 | (v169 << 32);
LABEL_1150:
                  v1409 = 0;
                  v1427 = 0;
                  v1452 = 0;
                  v1503 = 0;
                  v1476 = 0;
                  v775 = 0;
                  while (1)
                  {
                    if (!v166 || (v776 = v166 + 64, v777 = (v166 + 64 + ((HIDWORD(v273) - v273) << 6)), (v777[15] & 8) == 0) || (v306 = *v777, *v777 >= v1528 + v1527))
                    {
                      v339 = apr_palloc(p, 0x70uLL);
                      *v339 = 108;
                      *(v339 + 1) = v1409;
                      *(v339 + 1) = v1427;
                      v340 = v339 + 8;
                      v792 = *__src;
                      *(v339 + 2) = v1452;
                      *(v339 + 3) = v792;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1503;
                      *(v339 + 6) = v1476;
                      *(v339 + 7) = v775;
                      v793 = v1549;
                      *(v339 + 8) = v1550;
                      *(v339 + 9) = v793;
                      v794 = v1547;
                      *(v339 + 10) = v1548;
                      *(v339 + 11) = v794;
                      v795 = v1545;
                      *(v339 + 12) = v1546;
                      *(v339 + 13) = v795;
                      goto LABEL_1562;
                    }

                    v778 = *(v777 + 2);
                    if ((v778 + 20405) < 5 || v778 == -20326)
                    {
                      if (v1527 <= v306)
                      {
                        v780 = apr_palloc(p, 0x70uLL);
                        *v780 = 108;
                        *(v780 + 1) = v1409;
                        v780[1] = v1427;
                        v781 = *__src;
                        v780[2] = v1452;
                        v780[3] = v781;
                        v780[4] = 0;
                        v780[5] = v1503;
                        v780[6] = v1476;
                        v780[7] = v775;
                        v782 = v1549;
                        v780[8] = v1550;
                        v780[9] = v782;
                        v783 = v1547;
                        v780[10] = v1548;
                        v780[11] = v783;
                        v784 = v1545;
                        v780[12] = v1546;
                        v780[13] = v784;
                        v785 = *find_entry(ht, v780 + 8, 8uLL, 0);
                        if (v785)
                        {
                          v785 = *(v785 + 32);
                        }

                        v780[4] = v785;
                        apr_hash_set(ht, v780 + 1, 8, v780);
                        v780[3] = v306;
                        v778 = *(v777 + 2);
                      }
                    }

                    else if (v778 == -20399)
                    {
                      v304 = apr_palloc(p, 0x70uLL);
                      *v304 = 108;
                      *(v304 + 1) = v1409;
                      *(v304 + 1) = v1427;
                      v305 = v304 + 8;
                      v1281 = *__src;
                      *(v304 + 2) = v1452;
                      *(v304 + 3) = v1281;
                      *(v304 + 4) = 0;
                      *(v304 + 5) = v1503;
                      *(v304 + 6) = v1476;
                      *(v304 + 7) = v775;
                      v1282 = v1549;
                      *(v304 + 8) = v1550;
                      *(v304 + 9) = v1282;
                      v1283 = v1547;
                      *(v304 + 10) = v1548;
                      *(v304 + 11) = v1283;
                      v1284 = v1545;
                      *(v304 + 12) = v1546;
                      *(v304 + 13) = v1284;
                      goto LABEL_1849;
                    }

                    v786 = v1531;
                    if (v778 > -20402)
                    {
                      if (v778 > -20327)
                      {
                        if (v778 == -20326)
                        {
                          v777 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v777[13], v1531) + 8;
                          v787 = &v1545;
                          goto LABEL_1183;
                        }

                        if (v778 == -18427)
                        {
                          v788 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v777[13], v1531);
                          v1452 = *v777;
                          v1409 = *(v777 + 2);
                          v1427 = *(v788 + 1);
                          v1503 = *v788;
                          v1476 = *(v788 + 2);
                          v775 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v788[24], v786);
                          v777 = v775 + 8;
                          v1547 = *v775;
                          goto LABEL_1181;
                        }
                      }

                      else
                      {
                        if (v778 == -20401)
                        {
                          v777 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v777[13], v1531) + 8;
                          v787 = &v1548;
                          goto LABEL_1183;
                        }

                        if (v778 == -20399)
                        {
                          v787 = __src;
                          goto LABEL_1183;
                        }
                      }
                    }

                    else
                    {
                      if (v778 > -20404)
                      {
                        if (v778 == -20403)
                        {
                          v777 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v777[13], v1531) + 8;
LABEL_1181:
                          v787 = &v1546;
                        }

                        else
                        {
                          v777 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v777[13], v1531) + 8;
                          v787 = &v1547;
                        }

LABEL_1183:
                        *v787 = *v777;
                        goto LABEL_1184;
                      }

                      if (v778 == -20405)
                      {
                        v777 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v777[13], v1531) + 8;
                        v787 = &v1549;
                        goto LABEL_1183;
                      }

                      if (v778 == -20404)
                      {
                        v777 = GTTraceFunc_argumentBytesWithMap((v776 + ((HIDWORD(v273) - v273) << 6)), v777[13], v1531) + 8;
                        v787 = &v1550;
                        goto LABEL_1183;
                      }
                    }

LABEL_1184:
                    v789 = atomic_load((v166 + 4));
                    v790 = v273 + (v789 >> 6);
                    v791 = (HIDWORD(v273) + 1);
                    v273 = (v791 << 32) | v273;
                    if (v791 == v790 - 1)
                    {
                      v273 = (v791 << 32) | v791;
                      v166 = *(v166 + 40);
                    }
                  }

                case 47:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1543);
                  v191 = *(v50 + 32);
                  if (!v191)
                  {
                    v279 = 0;
                    goto LABEL_1357;
                  }

                  v192 = 0;
                  do
                  {
                    v193 = atomic_load((v191 + 4));
                    v194 = v192 + (v193 >> 6) - 1;
                    if (v194 > 0)
                    {
                      v194 = 0;
                      goto LABEL_1356;
                    }

                    v191 = *(v191 + 40);
                    v192 = v194;
                  }

                  while (v191);
                  v192 = v194;
LABEL_1356:
                  v279 = v192 | (v194 << 32);
LABEL_1357:
                  v1318 = 0;
                  v1313 = 0;
                  v1321 = 0;
                  v1325 = 0;
                  v1329 = 0;
                  v866 = 0;
                  v1338 = 0;
                  v1343 = 0;
                  v1349 = 0;
                  v1356 = 0;
                  v1366 = 0;
                  v1376 = 0;
                  v1386 = 0;
                  v1398 = 0;
                  LOBYTE(v1413) = 0;
                  v1431 = 0;
                  v1315 = 0;
                  v190.f64[0] = 0.0;
                  v1480 = 0u;
                  v1507 = v190;
                  v867 = 0.0;
                  v190.f64[0] = 0.0;
                  v1456 = v190;
                  v1333 = -1;
                  while (1)
                  {
                    if (!v191 || (v868 = v191 + 64, v869 = v191 + 64 + ((HIDWORD(v279) - v279) << 6), (*(v869 + 15) & 8) == 0) || (v306 = *v869, *v869 >= v1528 + v1527))
                    {
                      v339 = apr_palloc(p, 0xA8uLL);
                      *(v339 + 1) = v1313;
                      v340 = v339 + 8;
                      *v339 = 109;
                      *(v339 + 1) = v1318;
                      *(v339 + 2) = v1321;
                      *(v339 + 3) = v1333;
                      *(v339 + 4) = 0;
                      *(v339 + 5) = v1329;
                      *(v339 + 6) = v1325;
                      *(v339 + 7) = v866;
                      *(v339 + 8) = v1338;
                      *(v339 + 9) = v1343;
                      *(v339 + 10) = v1349;
                      *(v339 + 11) = v1356;
                      *(v339 + 12) = v1366;
                      *(v339 + 13) = v1376;
                      *(v339 + 14) = v1386;
                      *(v339 + 120) = v1480;
                      *(v339 + 17) = v1398;
                      *(v339 + 18) = *&v1456.f64[0];
                      *(v339 + 19) = *&v1507.f64[0];
                      *(v339 + 40) = v867;
                      v339[164] = v1413;
                      v339[165] = v1431;
                      v339[166] = v1315;
                      v339[167] = 0;
                      goto LABEL_1562;
                    }

                    v870 = *(v869 + 8);
                    v871 = (v870 + 20369);
                    if (v871 > 0x2D)
                    {
                      goto LABEL_1398;
                    }

                    if (((1 << (v870 - 111)) & 0x20000005DFFFLL) == 0)
                    {
                      break;
                    }

LABEL_1363:
                    if (v1527 <= v306)
                    {
                      v872 = apr_palloc(p, 0xA8uLL);
                      v872[1] = v1313;
                      *v872 = 109;
                      *(v872 + 1) = v1318;
                      v872[2] = v1321;
                      v872[3] = v1333;
                      v872[4] = 0;
                      v872[5] = v1329;
                      v872[6] = v1325;
                      v872[7] = v866;
                      v872[8] = v1338;
                      v872[9] = v1343;
                      v872[10] = v1349;
                      v872[11] = v1356;
                      v872[12] = v1366;
                      v872[13] = v1376;
                      v872[14] = v1386;
                      *(v872 + 15) = v1480;
                      v872[17] = v1398;
                      v872[18] = *&v1456.f64[0];
                      v872[19] = *&v1507.f64[0];
                      *(v872 + 40) = v867;
                      *(v872 + 164) = v1413;
                      *(v872 + 165) = v1431;
                      *(v872 + 166) = v1315;
                      *(v872 + 167) = 0;
                      v873 = *find_entry(ht, v872 + 8, 8uLL, 0);
                      if (v873)
                      {
                        v873 = *(v873 + 32);
                      }

                      v872[4] = v873;
                      apr_hash_set(ht, v872 + 1, 8, v872);
                      v872[3] = v306;
                      v870 = *(v869 + 8);
                    }

LABEL_1367:
                    v874 = v1531;
                    switch(v870)
                    {
                      case -20369:
                        v1343 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      case -20368:
                        v1413 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 2);
                        goto LABEL_1395;
                      case -20367:
                        v1349 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      case -20366:
                        v1366 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      case -20365:
                        v1338 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      case -20364:
                        v878 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531);
                        v879.i64[0] = v1480.i64[0];
                        v879.i64[1] = *(v878 + 1);
                        goto LABEL_1379;
                      case -20363:
                        v882 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531);
                        v879.i64[1] = v1480.i64[1];
                        v879.i64[0] = *(v882 + 1);
LABEL_1379:
                        v1480 = v879;
                        goto LABEL_1395;
                      case -20362:
                        v885 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531);
                        v881 = v1456;
                        LODWORD(v881.f64[0]) = *(v885 + 2);
                        goto LABEL_1389;
                      case -20361:
                        v880 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531);
                        v881 = v1456;
                        HIDWORD(v881.f64[0]) = *(v880 + 2);
LABEL_1389:
                        v1456 = v881;
                        goto LABEL_1395;
                      case -20360:
                        v1356 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      case -20359:
                        v883 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531);
                        v884 = v1507;
                        LODWORD(v884.f64[0]) = *(v883 + 2);
                        goto LABEL_1391;
                      case -20358:
                        v886 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531);
                        v884 = v1507;
                        HIDWORD(v884.f64[0]) = *(v886 + 2);
LABEL_1391:
                        v1507 = v884;
                        goto LABEL_1395;
                      case -20357:
                        v1376 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      case -20356:
                      case -20350:
                      case -20349:
                      case -20348:
                      case -20347:
                      case -20346:
                      case -20345:
                      case -20344:
                      case -20343:
                      case -20342:
                      case -20341:
                      case -20340:
                      case -20339:
                      case -20338:
                      case -20337:
                      case -20336:
                      case -20335:
                      case -20334:
                      case -20333:
                      case -20332:
                      case -20331:
                      case -20330:
                      case -20329:
                      case -20328:
                      case -20327:
                      case -20326:
                      case -20325:
                        goto LABEL_1395;
                      case -20355:
                        v867 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 2);
                        goto LABEL_1395;
                      case -20354:
                        v1386 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      case -20353:
                        v877 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 2);
                        goto LABEL_1382;
                      case -20352:
                        v1333 = *v869;
                        goto LABEL_1395;
                      case -20351:
                        v1431 = 0;
                        goto LABEL_1395;
                      case -20324:
                        v1398 = *(GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531) + 1);
                        goto LABEL_1395;
                      default:
                        if (v870 == -18423)
                        {
                          v1315 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531)[8];
                        }

                        else if (v870 == -18426)
                        {
                          v875 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), *(v869 + 13), v1531);
                          v1318 = *(v869 + 8);
                          v1313 = *(v875 + 1);
                          v1329 = *v875;
                          v1321 = *v869;
                          v1325 = *(v875 + 2);
                          v866 = GTTraceFunc_argumentBytesWithMap((v868 + ((HIDWORD(v279) - v279) << 6)), v875[24], v874);
                          v1480 = *(v866 + 1);
                          v876 = vcvtq_f64_u64(v1480);
                          *&v876.f64[0] = vneg_f32(vcvt_f32_f64(v876));
                          v1507 = v876;
                          v876.f64[0] = 0.0;
                          v1456 = v876;
                          LOBYTE(v877) = 1;
                          LOBYTE(v1413) = 1;
                          v867 = 1.0;
LABEL_1382:
                          v1431 = v877;
                        }

LABEL_1395:
                        v887 = atomic_load((v191 + 4));
                        v888 = v279 + (v887 >> 6);
                        v889 = (HIDWORD(v279) + 1);
                        v279 = (v889 << 32) | v279;
                        if (v889 == v888 - 1)
                        {
                          v279 = (v889 << 32) | v889;
                          v191 = *(v191 + 40);
                        }

                        break;
                    }
                  }

                  if (v871 == 17)
                  {
                    v304 = apr_palloc(p, 0xA8uLL);
                    *(v304 + 1) = v1313;
                    v305 = v304 + 8;
                    *v304 = 109;
                    *(v304 + 1) = v1318;
                    *(v304 + 2) = v1321;
                    *(v304 + 3) = v1333;
                    *(v304 + 4) = 0;
                    *(v304 + 5) = v1329;
                    *(v304 + 6) = v1325;
                    *(v304 + 7) = v866;
                    *(v304 + 8) = v1338;
                    *(v304 + 9) = v1343;
                    *(v304 + 10) = v1349;
                    *(v304 + 11) = v1356;
                    *(v304 + 12) = v1366;
                    *(v304 + 13) = v1376;
                    *(v304 + 14) = v1386;
                    *(v304 + 120) = v1480;
                    *(v304 + 17) = v1398;
                    *(v304 + 18) = *&v1456.f64[0];
                    *(v304 + 19) = *&v1507.f64[0];
                    *(v304 + 40) = v867;
                    v304[164] = v1413;
                    v304[165] = v1431;
                    v304[166] = v1315;
                    v304[167] = 0;
                    goto LABEL_1849;
                  }

LABEL_1398:
                  if (v870 != -18423)
                  {
                    goto LABEL_1367;
                  }

                  goto LABEL_1363;
                case 48:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++DWORD2(v1542);
                  memset(__src, 0, 24);
                  memset(&__src[32], 0, 136);
                  *__src = 107;
                  *&__src[24] = -1;
                  v244 = *(v50 + 32);
                  if (!v244)
                  {
                    v291 = 0;
                    goto LABEL_1624;
                  }

                  v245 = 0;
                  while (1)
                  {
                    v246 = atomic_load((v244 + 4));
                    v247 = v245 + (v246 >> 6) - 1;
                    if (v247 > 0)
                    {
                      break;
                    }

                    v244 = *(v244 + 40);
                    v245 = v247;
                    if (!v244)
                    {
                      v245 = v247;
                      goto LABEL_1623;
                    }
                  }

                  v247 = 0;
LABEL_1623:
                  v291 = v245 | (v247 << 32);
LABEL_1624:
                  while (v244)
                  {
                    v1027 = v244 + 64 + ((HIDWORD(v291) - v291) << 6);
                    if ((*(v1027 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v549 = *v1027;
                    if (*v1027 >= v1528 + v1527)
                    {
                      break;
                    }

                    v1028 = *(v1027 + 8);
                    v1029 = (v1028 + 20419) > 0xB || ((1 << (v1028 - 61)) & 0xDFD) == 0;
                    if (v1029 && ((v1028 + 20345) <= 0x12 ? (v1030 = ((1 << (v1028 + 121)) & 0x401FF) == 0) : (v1030 = 1), v1030))
                    {
                      if (v1028 == -20475)
                      {
                        v576 = apr_palloc(p, 0xA8uLL);
                        v576[7] = *&__src[112];
                        v576[8] = *&__src[128];
                        v576[9] = *&__src[144];
                        *(v576 + 20) = *&__src[160];
                        v576[3] = *&__src[48];
                        v576[4] = *&__src[64];
                        v576[5] = *&__src[80];
                        v576[6] = *&__src[96];
                        *v576 = *__src;
                        v576[1] = *&__src[16];
                        v576[2] = *&__src[32];
                        goto LABEL_1786;
                      }
                    }

                    else if (v1527 <= v549)
                    {
                      v1031 = apr_palloc(p, 0xA8uLL);
                      *(v1031 + 7) = *&__src[112];
                      *(v1031 + 8) = *&__src[128];
                      *(v1031 + 9) = *&__src[144];
                      v1031[20] = *&__src[160];
                      *(v1031 + 3) = *&__src[48];
                      *(v1031 + 4) = *&__src[64];
                      *(v1031 + 5) = *&__src[80];
                      *(v1031 + 6) = *&__src[96];
                      *v1031 = *__src;
                      *(v1031 + 1) = *&__src[16];
                      *(v1031 + 2) = *&__src[32];
                      v1032 = *find_entry(ht, v1031 + 8, 8uLL, 0);
                      if (v1032)
                      {
                        v1032 = *(v1032 + 32);
                      }

                      v1031[4] = v1032;
                      apr_hash_set(ht, v1031 + 1, 8, v1031);
                      v1031[3] = v549;
                    }

                    GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(__src, v1531, (v244 + 64 + ((HIDWORD(v291) - v291) << 6)));
                    v1033 = atomic_load((v244 + 4));
                    v1034 = v291 + (v1033 >> 6);
                    v1035 = (HIDWORD(v291) + 1);
                    v291 = (v1035 << 32) | v291;
                    if (v1035 == v1034 - 1)
                    {
                      v291 = (v1035 << 32) | v1035;
                      v244 = *(v244 + 40);
                    }
                  }

                  v576 = apr_palloc(p, 0xA8uLL);
                  v576[7] = *&__src[112];
                  v576[8] = *&__src[128];
                  v576[9] = *&__src[144];
                  *(v576 + 20) = *&__src[160];
                  v576[3] = *&__src[48];
                  v576[4] = *&__src[64];
                  v576[5] = *&__src[80];
                  v576[6] = *&__src[96];
                  *v576 = *__src;
                  v576[1] = *&__src[16];
                  v576[2] = *&__src[32];
                  goto LABEL_1816;
                case 49:
                  if (!GTMTLSMBuilder_streamIntersectionRange(v1527, v1528, v50))
                  {
                    goto LABEL_1852;
                  }

                  ++HIDWORD(v1544);
                  memset(&__src[32], 0, 320);
                  memset(__src, 0, 24);
                  *__src = 110;
                  *&__src[24] = -1;
                  v178 = *(v50 + 32);
                  if (!v178)
                  {
                    v276 = 0;
                    break;
                  }

                  v179 = 0;
                  while (1)
                  {
                    v180 = atomic_load((v178 + 4));
                    v181 = v179 + (v180 >> 6) - 1;
                    if (v181 > 0)
                    {
                      break;
                    }

                    v178 = *(v178 + 40);
                    v179 = v181;
                    if (!v178)
                    {
                      v179 = v181;
                      goto LABEL_1260;
                    }
                  }

                  v181 = 0;
LABEL_1260:
                  v276 = v179 | (v181 << 32);
                  break;
                default:
                  goto LABEL_1852;
              }

              while (2)
              {
                if (!v178 || (v827 = v178 + 64, v828 = v178 + 64 + ((HIDWORD(v276) - v276) << 6), (*(v828 + 15) & 8) == 0) || (v549 = *v828, *v828 >= v1528 + v1527))
                {
                  v575 = apr_palloc(p, 0x160uLL);
                  v576 = v575;
                  v577 = 352;
LABEL_1510:
                  memcpy(v575, __src, v577);
LABEL_1816:
                  v1189 = *find_entry(ht, v576 + 8, 8uLL, 0);
                  if (v1189)
                  {
                    v1189 = *(v1189 + 32);
                  }

                  *(v576 + 4) = v1189;
                  apr_hash_set(ht, v576 + 8, 8, v576);
                  v549 = -1;
                  goto LABEL_1819;
                }

                v829 = *(v828 + 8);
                if ((v829 + 20397) < 0x10)
                {
LABEL_1267:
                  if (v1527 <= v549)
                  {
                    v831 = apr_palloc(p, 0x160uLL);
                    memcpy(v831, __src, 0x160uLL);
                    v832 = *find_entry(ht, v831 + 8, 8uLL, 0);
                    if (v832)
                    {
                      v832 = *(v832 + 32);
                    }

                    *(v831 + 4) = v832;
                    apr_hash_set(ht, v831 + 8, 8, v831);
                    *(v831 + 3) = v549;
                    v829 = *(v828 + 8);
                  }
                }

                else
                {
                  v830 = (v829 + 20380);
                  if (v830 <= 0x37)
                  {
                    if (((1 << (v829 - 100)) & 0x800000000005FFLL) != 0)
                    {
                      goto LABEL_1267;
                    }

                    if (v830 == 9)
                    {
                      v1285 = apr_palloc(p, 0x160uLL);
                      v576 = v1285;
                      v1286 = 352;
LABEL_1927:
                      memcpy(v1285, __src, v1286);
                      goto LABEL_1786;
                    }
                  }
                }

                v833 = v1531;
                if (v829 > -20326)
                {
                  if (v829 > -20318)
                  {
                    if (v829 == -20317)
                    {
                      *&__src[192] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                    }

                    else if (v829 == -18424)
                    {
                      v834 = GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531);
                      *&__src[8] = *(v834 + 1);
                      *&__src[16] = *v828;
                      *&__src[4] = *(v828 + 8);
                      *&__src[40] = *v834;
                      *&__src[48] = *(v834 + 2);
                      v835 = GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), v834[24], v833);
                      v836 = 0;
                      *&__src[56] = v835;
                      *&__src[200] = 0;
                      v837 = *(v835 + 24);
                      *&__src[216] = 1065353216;
                      *&__src[348] = 257;
                      *&__src[168] = v837;
                      *&__src[208] = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v837)));
                      do
                      {
                        if (v836 > 0xA || (v838 = 1.0, ((1 << v836) & 0x421) == 0))
                        {
                          v838 = 0.0;
                          if (v836 == 15)
                          {
                            v838 = 1.0;
                          }
                        }

                        *&__src[4 * v836++ + 220] = v838;
                      }

                      while (v836 != 16);
                      for (k = 0; k != 16; ++k)
                      {
                        if (k > 0xA || (v840 = 1.0, ((1 << k) & 0x421) == 0))
                        {
                          v840 = 0.0;
                          if (k == 15)
                          {
                            v840 = 1.0;
                          }
                        }

                        *&__src[4 * k + 284] = v840;
                      }
                    }
                  }

                  else if (v829 == -20325)
                  {
                    *&__src[184] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                  }

                  else if (v829 == -20318)
                  {
                    __src[349] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 2);
                  }
                }

                else
                {
                  switch(v829)
                  {
                    case -20397:
                      *&__src[72] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20396:
                      *&__src[160] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20395:
                      __src[348] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 2);
                      break;
                    case -20394:
                      *&__src[80] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20393:
                      *&__src[96] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20392:
                      *&__src[136] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20391:
                      *&__src[64] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20390:
                      *&__src[176] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20389:
                      *&__src[168] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20388:
                      *&__src[200] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 2);
                      break;
                    case -20387:
                      *&__src[204] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 2);
                      break;
                    case -20386:
                      *&__src[88] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20385:
                      *&__src[208] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 2);
                      break;
                    case -20384:
                      *&__src[212] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 2);
                      break;
                    case -20383:
                      *&__src[112] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20382:
                      *&__src[144] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20380:
                      *&__src[216] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 2);
                      break;
                    case -20378:
                      *&__src[152] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20376:
                      *&__src[120] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20375:
                      *&__src[104] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20374:
                      *&__src[128] = *(GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531) + 1);
                      break;
                    case -20373:
                      v842 = GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531);
                      *&__src[284] = *(v842 + 8);
                      *&__src[300] = *(v842 + 24);
                      *&__src[316] = *(v842 + 40);
                      *&__src[332] = *(v842 + 56);
                      break;
                    case -20372:
                      v841 = GTTraceFunc_argumentBytesWithMap((v827 + ((HIDWORD(v276) - v276) << 6)), *(v828 + 13), v1531);
                      *&__src[220] = *(v841 + 8);
                      *&__src[236] = *(v841 + 24);
                      *&__src[252] = *(v841 + 40);
                      *&__src[268] = *(v841 + 56);
                      break;
                    case -20371:
                      *&__src[24] = *v828;
                      break;
                    case -20370:
                      __src[349] = 0;
                      break;
                    default:
                      break;
                  }
                }

                v843 = atomic_load((v178 + 4));
                v844 = v276 + (v843 >> 6);
                v845 = (HIDWORD(v276) + 1);
                v276 = (v845 << 32) | v276;
                if (v845 == v844 - 1)
                {
                  v276 = (v845 << 32) | v845;
                  v178 = *(v178 + 40);
                }

                continue;
              }
            }

LABEL_1852:
            v18 = v1516;
            v20 = v1517;
          }
        }
      }

      ++v20;
    }

    while (v20 != v18);
  }

  v1287 = &v1532;
  v1288 = apr_palloc(v6, 0x198uLL);
  v25 = v1288;
  if (v1288)
  {
    *(v1288 + 8) = 0u;
    *(v1288 + 376) = 0u;
    *(v1288 + 392) = 0u;
    *(v1288 + 344) = 0u;
    *(v1288 + 360) = 0u;
    *(v1288 + 312) = 0u;
    *(v1288 + 328) = 0u;
    *(v1288 + 280) = 0u;
    *(v1288 + 296) = 0u;
    *(v1288 + 248) = 0u;
    *(v1288 + 264) = 0u;
    *(v1288 + 216) = 0u;
    *(v1288 + 232) = 0u;
    *(v1288 + 184) = 0u;
    *(v1288 + 200) = 0u;
    *(v1288 + 152) = 0u;
    *(v1288 + 168) = 0u;
    *(v1288 + 120) = 0u;
    *(v1288 + 136) = 0u;
    *(v1288 + 88) = 0u;
    *(v1288 + 104) = 0u;
    *(v1288 + 56) = 0u;
    *(v1288 + 72) = 0u;
    *(v1288 + 24) = 0u;
    *(v1288 + 40) = 0u;
  }

  *v1288 = ht;
  for (m = 1; m != 51; ++m)
  {
    v1290 = *v1287++;
    v25[m] = apr_array_make(v6, v1290, 8);
  }

  v1291 = *v25;
  *(v1291 + 24) = 0;
  *(v1291 + 32) = 0;
  *(v1291 + 16) = v1291;
  *(v1291 + 40) = 0;
  v1292 = apr_hash_next((v1291 + 16));
  if (v1292)
  {
    v1293 = v1292;
    do
    {
      v1294 = *(*(v1293 + 1) + 32);
      v1295 = *v1294 - 2;
      if (v1295 <= 0x6C)
      {
        v1296 = byte_24DA91F13[v1295];
        if (v1296 != -1)
        {
          *apr_array_push(v25[v1296 + 1]) = v1294;
        }
      }

      v1293 = apr_hash_next(v1293);
    }

    while (v1293);
  }

  v1297 = v25[32];
  v1298 = *(v1297 + 12);
  if (v1298 > 0)
  {
    v1299 = v1298 - 1;
    do
    {
      v1300 = *(*(v1297 + 24) + 8 * v1299);
      *__src = *(v1300 + 48);
      v1301 = *find_entry(*v25, __src, 8uLL, 0);
      if (!v1301 || !*(v1301 + 32))
      {
        apr_hash_set(*v25, (v1300 + 8), 8, 0);
        v1302 = *(v1297 + 12);
        *(*(v1297 + 24) + 8 * v1299) = *(*(v1297 + 24) + 8 * v1302 - 8);
        if (v1302)
        {
          *(v1297 + 12) = v1302 - 1;
        }
      }

      v1303 = v1299-- + 1;
    }

    while (v1303 > 1);
  }

  for (n = 1; n != 51; ++n)
  {
    qsort(*(v25[n] + 24), *(v25[n] + 12), *(v25[n] + 8), GTMTLSMObject_compare);
  }

  apr_pool_destroy(newpool);
LABEL_1948:
  v1305 = *MEMORY[0x277D85DE8];
  return v25;
}