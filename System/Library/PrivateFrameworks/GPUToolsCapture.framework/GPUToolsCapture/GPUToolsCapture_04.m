id unwrapMTL4AccelerationStructureDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v2 = [v1 copy];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id unwrapMTLFunctionDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 binaryArchives];
    v4 = unwrapNSArray(v3);
    [v2 setBinaryArchives:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 privateFunctions];
    v6 = unwrapNSArray(v5);
    [v2 setPrivateFunctions:v6];
  }

  return v2;
}

id unwrapMTLVisibleFunctionTableDescriptor(void *a1)
{
  v1 = [a1 copy];

  return v1;
}

id unwrapMTLIntersectionFunctionTableDescriptor(void *a1)
{
  v1 = [a1 copy];

  return v1;
}

id unwrapMTLTileRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 tileFunction];
  v4 = [v3 baseObject];
  [v2 setTileFunction:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 preloadedLibraries];
    v6 = unwrapNSArray(v5);
    [v2 setPreloadedLibraries:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 linkedFunctions];
    v8 = unwrapMTLLinkedFunctions(v7);
    [v2 setLinkedFunctions:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 binaryArchives];
    v10 = unwrapNSArray(v9);
    [v2 setBinaryArchives:v10];
  }

  return v2;
}

id deviceMTLTileRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 tileFunction];
  v4 = DEVICEOBJECT(v3);
  [v2 setTileFunction:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 preloadedLibraries];
    v6 = deviceNSArray(v5);
    [v2 setPreloadedLibraries:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 linkedFunctions];
    v8 = deviceMTLLinkedFunctions(v7);
    [v2 setLinkedFunctions:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 binaryArchives];
    v10 = deviceNSArray(v9);
    [v2 setBinaryArchives:v10];
  }

  return v2;
}

id unwrapMTLRenderPipelineFunctionsDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 vertexAdditionalBinaryFunctions];
  v4 = unwrapNSArray(v3);
  [v2 setVertexAdditionalBinaryFunctions:v4];

  v5 = [v1 fragmentAdditionalBinaryFunctions];
  v6 = unwrapNSArray(v5);
  [v2 setFragmentAdditionalBinaryFunctions:v6];

  v7 = [v1 tileAdditionalBinaryFunctions];
  v8 = unwrapNSArray(v7);
  [v2 setTileAdditionalBinaryFunctions:v8];

  v9 = [v1 objectAdditionalBinaryFunctions];
  v10 = unwrapNSArray(v9);
  [v2 setObjectAdditionalBinaryFunctions:v10];

  v11 = [v1 meshAdditionalBinaryFunctions];

  v12 = unwrapNSArray(v11);
  [v2 setMeshAdditionalBinaryFunctions:v12];

  return v2;
}

id deviceMTLMeshRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 objectFunction];
  v4 = DEVICEOBJECT(v3);
  [v2 setObjectFunction:v4];

  v5 = [v1 meshFunction];
  v6 = DEVICEOBJECT(v5);
  [v2 setMeshFunction:v6];

  v7 = [v1 fragmentFunction];
  v8 = DEVICEOBJECT(v7);
  [v2 setFragmentFunction:v8];

  v9 = [v1 binaryArchives];

  v10 = deviceNSArray(v9);
  [v2 setBinaryArchives:v10];

  v11 = [v2 objectLinkedFunctions];
  v12 = deviceMTLLinkedFunctions(v11);
  [v2 setObjectLinkedFunctions:v12];

  v13 = [v2 meshLinkedFunctions];
  v14 = deviceMTLLinkedFunctions(v13);
  [v2 setMeshLinkedFunctions:v14];

  v15 = [v2 fragmentLinkedFunctions];
  v16 = deviceMTLLinkedFunctions(v15);
  [v2 setFragmentLinkedFunctions:v16];

  return v2;
}

id unwrapMTLMeshRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 objectFunction];
  v4 = [v3 baseObject];
  [v2 setObjectFunction:v4];

  v5 = [v1 meshFunction];
  v6 = [v5 baseObject];
  [v2 setMeshFunction:v6];

  v7 = [v1 fragmentFunction];
  v8 = [v7 baseObject];
  [v2 setFragmentFunction:v8];

  v9 = [v1 binaryArchives];

  v10 = unwrapNSArray(v9);
  [v2 setBinaryArchives:v10];

  v11 = [v2 objectLinkedFunctions];
  v12 = unwrapMTLLinkedFunctions(v11);
  [v2 setObjectLinkedFunctions:v12];

  v13 = [v2 meshLinkedFunctions];
  v14 = unwrapMTLLinkedFunctions(v13);
  [v2 setMeshLinkedFunctions:v14];

  v15 = [v2 fragmentLinkedFunctions];
  v16 = unwrapMTLLinkedFunctions(v15);
  [v2 setFragmentLinkedFunctions:v16];

  return v2;
}

id deviceMTLMeshRenderPipelineDescriptorWithoutResourceIndex(void *a1)
{
  v1 = deviceMTLMeshRenderPipelineDescriptor(a1);
  [v1 setForceResourceIndex:0];
  [v1 setResourceIndex:_MTLInvalidResourceIndex];

  return v1;
}

id unwrapMTLAccelerationStructurePassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = [v3 sampleBufferAttachments];
  for (i = 0; i != 4; ++i)
  {
    v8 = [v6 objectAtIndexedSubscript:i];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 sampleBuffer];
      v11 = [v10 baseObject];
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:i];
      [v13 setSampleBuffer:v11];

      v14 = [v9 sampleBuffer];
      [v14 touch];

      v15 = [v9 sampleBuffer];

      if (v4)
      {
        if (v15)
        {
          v16 = [v9 sampleBuffer];
          [v4 addObject:v16];
        }
      }
    }
  }

  return v5;
}

id unwrapMTLGenericBVHBuffersSPI(void *a1)
{
  v1 = [a1 copy];
  v2 = [v1 headerBuffer];
  v3 = [v2 baseObject];
  [v1 setHeaderBuffer:v3];

  v4 = [v1 innerNodeBuffer];
  v5 = [v4 baseObject];
  [v1 setInnerNodeBuffer:v5];

  v6 = [v1 leafNodeBuffer];
  v7 = [v6 baseObject];
  [v1 setLeafNodeBuffer:v7];

  v8 = [v1 primitiveBuffer];
  v9 = [v8 baseObject];
  [v1 setPrimitiveBuffer:v9];

  v10 = [v1 geometryBuffer];
  v11 = [v10 baseObject];
  [v1 setGeometryBuffer:v11];

  v12 = [v1 instanceTransformBuffer];
  v13 = [v12 baseObject];
  [v1 setInstanceTransformBuffer:v13];

  v14 = [v1 perPrimitiveDataBuffer];
  v15 = [v14 baseObject];
  [v1 setPerPrimitiveDataBuffer:v15];

  return v1;
}

id unwrapMTL4RenderPipelineBinaryFunctionsDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 vertexAdditionalBinaryFunctions];
  v4 = unwrapNSArray(v3);
  [v2 setVertexAdditionalBinaryFunctions:v4];

  v5 = [v1 fragmentAdditionalBinaryFunctions];
  v6 = unwrapNSArray(v5);
  [v2 setFragmentAdditionalBinaryFunctions:v6];

  v7 = [v1 tileAdditionalBinaryFunctions];
  v8 = unwrapNSArray(v7);
  [v2 setTileAdditionalBinaryFunctions:v8];

  v9 = [v1 objectAdditionalBinaryFunctions];
  v10 = unwrapNSArray(v9);
  [v2 setObjectAdditionalBinaryFunctions:v10];

  v11 = [v1 meshAdditionalBinaryFunctions];

  v12 = unwrapNSArray(v11);
  [v2 setMeshAdditionalBinaryFunctions:v12];

  return v2;
}

id unwrapMTL4PipelineStageDynamicLinkingDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 binaryLinkedFunctions];
  v4 = unwrapNSArray(v3);
  [v2 setBinaryLinkedFunctions:v4];

  v5 = [v1 preloadedLibraries];

  v6 = unwrapNSArray(v5);
  [v2 setPreloadedLibraries:v6];

  return v2;
}

id unwrapMTL4RenderPipelineDynamicLinkingDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 vertexLinkingDescriptor];
  v4 = [v2 vertexLinkingDescriptor];
  unwrapInPlaceMTL4PipelineStageDynamicLinkingDescriptor(v3, v4);

  v5 = [v1 fragmentLinkingDescriptor];
  v6 = [v2 fragmentLinkingDescriptor];
  unwrapInPlaceMTL4PipelineStageDynamicLinkingDescriptor(v5, v6);

  v7 = [v1 tileLinkingDescriptor];
  v8 = [v2 tileLinkingDescriptor];
  unwrapInPlaceMTL4PipelineStageDynamicLinkingDescriptor(v7, v8);

  v9 = [v1 objectLinkingDescriptor];
  v10 = [v2 objectLinkingDescriptor];
  unwrapInPlaceMTL4PipelineStageDynamicLinkingDescriptor(v9, v10);

  v11 = [v1 meshLinkingDescriptor];

  v12 = [v2 meshLinkingDescriptor];
  unwrapInPlaceMTL4PipelineStageDynamicLinkingDescriptor(v11, v12);

  return v2;
}

void unwrapInPlaceMTL4PipelineStageDynamicLinkingDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 binaryLinkedFunctions];
  v6 = unwrapNSArray(v5);
  [v3 setBinaryLinkedFunctions:v6];

  v8 = [v4 preloadedLibraries];

  v7 = unwrapNSArray(v8);
  [v3 setPreloadedLibraries:v7];
}

id unwrapMTL4CommandBufferOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 logState];

  v4 = [v3 baseObject];
  [v2 setLogState:v4];

  return v2;
}

void CaptureMTLDeviceStoreMetadata(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [v3 traceStream];
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = DEVICEOBJECT(v3);

    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    GTTraceContext_pushEncoderWithStream(a1, &v15);
    v7 = v16;
    *(v16 + 8) = -10239;
    v8 = BYTE9(v17);
    if (BYTE9(v17) > 0x30uLL)
    {
      v10 = *(*(&v15 + 1) + 24);
      v11 = BYTE10(v17);
      ++BYTE10(v17);
      v9 = GTTraceMemPool_allocateBytes(v10, *(&v16 + 1), v11 | 0x1000000000) + 16;
      v8 = v11;
    }

    else
    {
      v9 = (v7 + BYTE9(v17));
      BYTE9(v17) += 16;
    }

    *(v7 + 13) = v8;
    v12 = SaveMTLDeviceDescriptor(&v15, v6);
    *v9 = v5;
    v9[8] = v12;
    *(v9 + 9) = 0;
    *(v9 + 3) = 0;
    s();
    *v13 = v14;
    *(v13 + 8) = BYTE8(v17);
    *(v16 + 15) |= 8u;
  }
}

uint64_t CaptureRespondsToSelector(uint64_t a1, const char *a2)
{
  v3 = objc_opt_respondsToSelector();
  if ((v3 & 1) == 0 && (sel_getUid("baseObject") == a2 || sel_getUid("streamReference") == a2 || sel_getUid("traceStream") == a2 || sel_getUid("traceContext") == a2 || sel_getUid("touch") == a2))
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t CaptureConformsToProtocol(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 conformsToProtocol:v3];

  if (&OBJC_PROTOCOL___CaptureMTLObject == v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

uint64_t CaptureFindFuncSnapshot(void *a1, uint64_t a2)
{
  v5 = [a1 streamReference];
  entry = find_entry(a2, &v5, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

void *CaptureCreateFuncSnapshot(void *a1, apr_hash_t *a2, apr_pool_t *a3)
{
  v5 = [a1 streamReference];
  v6 = apr_palloc(a3, 0x18uLL);
  *v6 = v5;
  apr_hash_set(a2, v6, 8, v6);
  return v6;
}

void CaptureRemoveFuncSnapshot(void *a1, apr_hash_t *a2)
{
  key = [a1 streamReference];
  entry = find_entry(a2, &key, 8uLL, 0);
  if (*entry)
  {
    if (*(*entry + 32))
    {
      apr_hash_set(a2, &key, 8, 0);
    }
  }
}

apr_hash_index_t *CaptureClearFuncSnapshot(apr_hash_index_t *result, uint64_t a2)
{
  if (result == (&dword_0 + 1))
  {
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = a2;
    *(a2 + 40) = 0;
    result = apr_hash_next((a2 + 16));
    if (result)
    {
      v3 = result;
      do
      {
        apr_hash_set(a2, *(*(v3 + 1) + 16), 8, 0);
        result = apr_hash_next(v3);
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

CaptureMTLDevice *DYMTLWrapDeviceWithDebugLayer(void *a1)
{
  v1 = a1;
  if (CaptureInterposerInit_onceToken != -1)
  {
    dispatch_once(&CaptureInterposerInit_onceToken, &__block_literal_global_156);
  }

  if (DYMTLWrapDeviceWithDebugLayer_onceToken != -1)
  {
    dispatch_once(&DYMTLWrapDeviceWithDebugLayer_onceToken, &__block_literal_global_10760);
  }

  if (isDebugDevice == 1)
  {
    if (isShaderValDevice)
    {
      v2 = WrapGPUDebugDevice(v1);
      v3 = WrapDebugDevice(v2);

      goto LABEL_12;
    }

    v4 = WrapDebugDevice(v1);
  }

  else
  {
    v3 = v1;
    if (!isShaderValDevice)
    {
      goto LABEL_14;
    }

    v4 = WrapGPUDebugDevice(v1);
  }

  v3 = v4;
  v2 = v1;
LABEL_12:

  if (isShaderValDevice)
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "Metal Shader Validation", 0, "To enable capturing, disable Metal Shader Validation and relaunch your application.");
  }

LABEL_14:
  v5 = [CaptureMTLDevice alloc];
  v6 = [(CaptureMTLDevice *)v5 initWithBaseObject:v3 captureContext:g_ctx];
  CaptureMTLDeviceStoreMetadata(g_ctx, v6);
  CaptureAGXInit(v6);
  if ((dword_31F7C8 & 0x40) != 0)
  {
    dispatch_semaphore_wait(qword_31F530, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v6;
}

id WrapGPUDebugDevice(void *a1)
{
  v1 = a1;
  v2 = [v1 supportsFamily:1006];
  v3 = v1;
  if ((v2 & 1) == 0 && (v4 = NSClassFromString(@"MTLLegacySVDevice")) != 0 || (v4 = NSClassFromString(@"MTLGPUDebugDevice"), v5 = v3, v4))
  {
    v5 = [[v4 alloc] initWithBaseObject:v3 parent:0];
  }

  return v5;
}

id WrapDebugDevice(void *a1)
{
  v1 = a1;
  v2 = [[MTLDebugDevice alloc] initWithBaseObject:v1 parent:0];

  return v2;
}

IMP CaptureMTLInit()
{
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, "sharedCaptureManager");
  result = method_setImplementation(ClassMethod, MTLCaptureManager_sharedCaptureManager);
  MTLCaptureManager_sharedCaptureManagerIMP = result;
  return result;
}

id MTLCaptureManager_sharedCaptureManager()
{
  if (MTLCaptureManager_sharedCaptureManager_onceToken != -1)
  {
    dispatch_once(&MTLCaptureManager_sharedCaptureManager_onceToken, &__block_literal_global_125);
  }

  v1 = MTLCaptureManager_sharedCaptureManager_sharedCaptureManager;

  return v1;
}

id copyAndNullifyReferencesInAccelerationStructureDescriptor(void *a1)
{
  v1 = [a1 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v46 = v1;
    v2 = [v1 geometryDescriptors];
    v3 = [v2 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (!v3)
    {
      goto LABEL_56;
    }

    v4 = v3;
    v5 = &GSSystemRootDirectory_ptr;
    v6 = &GSSystemRootDirectory_ptr;
    v7 = *v67;
    v49 = *v67;
    while (1)
    {
      v8 = 0;
      v48 = v4;
      do
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v66 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 setPrimitiveDataBuffer:0];
          [v9 setPrimitiveDataBufferOffset:0];
          [v9 setPrimitiveDataStride:0];
          [v9 setPrimitiveDataElementSize:0];
        }

        v10 = v5[500];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          [v11 setVertexBuffer:0];
          [v11 setVertexBufferOffset:0];
          [v11 setIndexBuffer:0];
          [v11 setIndexBufferOffset:0];
          if (objc_opt_respondsToSelector())
          {
            goto LABEL_11;
          }

          goto LABEL_36;
        }

        v12 = v6[494];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v9;
          [v13 setBoundingBoxBuffer:0];
          [v13 setBoundingBoxBufferOffset:0];
          goto LABEL_36;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v5;
          v15 = v2;
          v11 = v9;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v16 = [v11 vertexBuffers];
          v17 = [v16 countByEnumeratingWithState:&v62 objects:v73 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v63;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v63 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v62 + 1) + 8 * i);
                [v21 setBuffer:0];
                [v21 setOffset:0];
              }

              v18 = [v16 countByEnumeratingWithState:&v62 objects:v73 count:16];
            }

            while (v18);
          }

          [v11 setIndexBuffer:0];
          [v11 setIndexBufferOffset:0];
          v2 = v15;
          v5 = v14;
          v4 = v48;
          v7 = v49;
          v6 = &GSSystemRootDirectory_ptr;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_36;
          }

LABEL_11:
          [v11 setTransformationMatrixBuffer:0];
          [v11 setTransformationMatrixBufferOffset:0];
LABEL_36:

          goto LABEL_37;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v9;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v23 = [v22 boundingBoxBuffers];
          v24 = [v23 countByEnumeratingWithState:&v58 objects:v72 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v59;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v59 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v58 + 1) + 8 * j);
                [v28 setBuffer:0];
                [v28 setOffset:0];
              }

              v25 = [v23 countByEnumeratingWithState:&v58 objects:v72 count:16];
            }

            while (v25);
          }

          goto LABEL_33;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v9;
          [v29 setControlPointBuffer:0];
          [v29 setControlPointBufferOffset:0];
          [v29 setRadiusBuffer:0];
          [v29 setRadiusBufferOffset:0];
          [v29 setIndexBuffer:0];
          [v29 setIndexBufferOffset:0];
          goto LABEL_36;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v9;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v47 = v30;
          v31 = [v30 controlPointBuffers];
          v32 = [v31 countByEnumeratingWithState:&v54 objects:v71 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v55;
            do
            {
              for (k = 0; k != v33; k = k + 1)
              {
                if (*v55 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v54 + 1) + 8 * k);
                [v36 setBuffer:0];
                [v36 setOffset:0];
              }

              v33 = [v31 countByEnumeratingWithState:&v54 objects:v71 count:16];
            }

            while (v33);
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v37 = [v47 radiusBuffers];
          v38 = [v37 countByEnumeratingWithState:&v50 objects:v70 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v51;
            do
            {
              for (m = 0; m != v39; m = m + 1)
              {
                if (*v51 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v50 + 1) + 8 * m);
                [v42 setBuffer:0];
                [v42 setOffset:0];
              }

              v39 = [v37 countByEnumeratingWithState:&v50 objects:v70 count:16];
            }

            while (v39);
          }

          [v47 setIndexBuffer:0];
          [v47 setIndexBufferOffset:0];
LABEL_33:
          v6 = &GSSystemRootDirectory_ptr;
          v7 = v49;
          goto LABEL_36;
        }

LABEL_37:
        v8 = v8 + 1;
      }

      while (v8 != v4);
      v43 = [v2 countByEnumeratingWithState:&v66 objects:v74 count:16];
      v4 = v43;
      if (!v43)
      {
LABEL_56:

        v1 = v46;
        goto LABEL_62;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v1;
    [v44 setInstanceDescriptorBuffer:0];
    [v44 setInstanceDescriptorBufferOffset:0];
    [v44 setMotionTransformBuffer:0];
    [v44 setMotionTransformBufferOffset:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_62;
    }

    v44 = v1;
    [v44 setInstanceDescriptorBuffer:0];
    [v44 setInstanceDescriptorBufferOffset:0];
    [v44 setMotionTransformBuffer:0];
    [v44 setMotionTransformBufferOffset:0];
    [v44 setMotionTransformCountBuffer:0];
    [v44 setMotionTransformCountBufferOffset:0];
    [v44 setInstanceCountBuffer:0];
    [v44 setInstanceCountBufferOffset:0];
  }

LABEL_62:

  return v1;
}

void MTLTextureInfo(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  if ((a2 - 250) <= 0xB && ((1 << (a2 + 6)) & 0xC0D) != 0)
  {
    *&v43 = 0;
    v41 = 0uLL;
    v42 = 0uLL;
    v40 = 0uLL;
    GTMTLPixelFormatGetInfoForDevice(a2, &v40);
    LODWORD(v10) = (DWORD2(v40) >> 3) & 4;
    if (a2 == 250)
    {
      v10 = 2;
    }

    else
    {
      v10 = v10;
    }

    v11 = BYTE8(v40) & 0x40;
    v12 = (DWORD2(v40) >> 6) & 1;
    v13 = a3[1];
    v14 = *a3 * a4;
    v15 = (v10 | v12) * v14;
    *(a5 + 8) = v15;
    *(a5 + 16) = v13 * v15;
    if (v10)
    {
      v16 = v14 * v10 * v13;
      *(a5 + 40) = v14 * v10;
      *(a5 + 48) = v16;
      v17 = a3[2] * v16;
      *(a5 + 56) = v12;
      *(a5 + 24) = v17;
      *(a5 + 32) = v17;
      v18 = 1;
      *a5 = 1;
      if (!v11)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v17 = 0;
    v18 = 0;
    if (v11)
    {
LABEL_12:
      v27 = v10 == 0;
      v28 = (a5 + 32 * v18);
      v29 = v14 * v13;
      v30 = a3[2] * v14 * v13;
      v28[4] = v30;
      v28[5] = v14;
      v31 = !v27;
      v28[6] = v29;
      v28[7] = 2 * v31;
      *(a5 + 24) = v17 + v30;
      v26 = v18 + 1;
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 - 550) < 2)
    {
      v19 = *a3;
      v20 = a3[1];
      v21 = 4 * *a3;
      *(a5 + 40) = v21;
      *(a5 + 48) = v20 * v21;
      v22 = a3[2];
      v23 = v22 * v20 * v21;
      v24 = v20 * v19;
      *(a5 + 72) = v19;
      *(a5 + 80) = v24;
      v25 = v22 * v24;
      *(a5 + 64) = v25;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = v23 + v25;
      *(a5 + 32) = v23;
      v26 = 2;
LABEL_16:
      *a5 = v26;
      goto LABEL_17;
    }

    v50 = 0;
    v48 = 0uLL;
    v49 = 0uLL;
    v47 = 0uLL;
    GTMTLPixelFormatGetInfoForDevice(a2, &v47);
    if ((WORD4(v47) & 0x400) != 0)
    {
      v35 = (v49 + *a3 - 1) / v49 * *(&v48 + 1);
      v37 = v35 * ((*(&v49 + 1) + a3[1] - 1) / *(&v49 + 1));
      v38 = a3[2] * v37;
      *(a5 + 56) = (DWORD2(v47) >> 11) & 4;
      v39 = v37;
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v32 = *a3;
      v33 = a3[1];
      v34 = a3[2];
      GTMTLGetTextureLevelInfoForDeviceWithOptions(a2, a4, &v40);
      v35 = v45;
      v36 = a3[1];
      v37 = v36 * v45;
      v38 = a3[2] * v36 * v45;
      v39 = v36 * v45;
    }

    *(a5 + 40) = v35;
    *(a5 + 48) = v37;
    *(a5 + 24) = v38;
    *(a5 + 32) = v38;
    *(a5 + 8) = v35;
    *(a5 + 16) = v39;
    *a5 = 1;
  }

LABEL_17:
}

BOOL MTLTextureIsCube(void *a1)
{
  v1 = a1;
  v2 = [v1 textureType];
  v3 = [v1 textureType];

  return v2 == &dword_4 + 1 || v3 == &dword_4 + 2;
}

int64x2_t MTLTextureMipmapSize@<Q0>(uint64x2_t *a1@<X0>, unint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v3 = a1[1].i64[0] >> a2;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = vshlq_u64(*a1, vnegq_s64(vdupq_n_s64(a2)));
  v5 = vcgtq_u64(v4, vdupq_n_s64(1uLL));
  result = vsubq_s64(vandq_s8(v4, v5), vmvnq_s8(v5));
  *a3 = result;
  a3[1].i64[0] = v3;
  return result;
}

id GetSparseTextureMappingKernelFunction(void *a1, void *a2)
{
  v3 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v4 = a1;
  GTMTLPixelFormatGetInfoForDevice([v4 pixelFormat], v19);
  v5 = [v4 textureType];

  v6 = DWORD2(v19[0]);
  if (v5 > 7)
  {
    v8 = 0;
  }

  else
  {
    if ((BYTE8(v19[0]) & 0x20) != 0)
    {
      v7 = @"depth";
    }

    else
    {
      v7 = @"texture";
    }

    v8 = [NSString stringWithFormat:off_2F2298[v5], v7];
    v6 = DWORD2(v19[0]);
  }

  v9 = @"uint";
  if ((v6 & 0x280000) == 0)
  {
    v9 = 0;
  }

  v10 = @"int";
  if ((v6 & 0x140000) == 0)
  {
    v10 = v9;
  }

  v11 = (v6 & 0x30000) == 0;
  v12 = @"float";
  if (v11)
  {
    v12 = v10;
  }

  v18 = 0;
  v13 = v12;
  v14 = [v3 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\n\nstruct inputData\n{\n    uint3 textureSize;\n    uint3 tileSize;\n    uint3 textureSizeInTiles;\n\n    uint slice;\n    uint face;\n    uint mipmap;\n    uint maxTileNumber;\n};\ntemplate<typename T> uint3 createSampleCoord(T value) { return uint3(value.x options:value.y error:{value.z); }\ntemplate<> uint3 createSampleCoord(uint value){ return uint3(value, 0, 0); }\ntemplate<> uint3 createSampleCoord(uint2 value) { return uint3(value.x, value.y, 0); }\n\n#define KERNEL_COPY_MAPPING_STATE_READ(TEXTURE_TYPE, RETURN_TYPE, TEXTURE_DIM, GID_TYPE, ...) \\\nkernel void kernel_copy_mapping_state_read_##TEXTURE_TYPE##_##RETURN_TYPE(TEXTURE_TYPE<RETURN_TYPE, access::read> sparse [[texture(0)]], \\\n                                                                           device uint8_t* outputBuffer [[buffer(0)]], \\\n                                                                           constant inputData *metadata [[buffer(1)]], \\\n                                                                           GID_TYPE gid [[thread_position_in_grid]])\\\n{\\\n   uint3 tid = createSampleCoord(gid);\\\n   uint3 sampleLoc = tid * metadata->tileSize;\\\n   uint outputBufferLoc = tid.x + tid.y*(metadata->textureSizeInTiles.x) + tid.z*(metadata->textureSizeInTiles.x * metadata->textureSizeInTiles.y);\\\n   if (outputBufferLoc < metadata->maxTileNumber)\\\n   {\\\n       if (sparse.sparse_read(sampleLoc.TEXTURE_DIM, ##__VA_ARGS__).resident())\\\n       {\\\n           outputBuffer[outputBufferLoc] = 1;\\\n       }\\\n   }\\\n}\\\n\n#define KERNEL_COPY_MAPPING(RETURN_TYPE) \\\nKERNEL_COPY_MAPPING_STATE_READ(texture2d, RETURN_TYPE, xy, uint2, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(texture2d_array, RETURN_TYPE, xy, uint2, metadata->slice, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(texture3d, RETURN_TYPE, xyz, uint3, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(texturecube, RETURN_TYPE, xy, uint2, metadata->face, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(texturecube_array, RETURN_TYPE, xy, uint2, metadata->face, metadata->slice, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(texture2d_ms, RETURN_TYPE, xy, uint2, metadata->mipmap); \\\n\n#define KERNEL_COPY_MAPPING_DEPTH()\\\nKERNEL_COPY_MAPPING_STATE_READ(depth2d, float, xy, uint2, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(depthcube, float, xy, uint2, metadata->face, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(depthcube_array, float, xy, uint2, metadata->face, metadata->slice, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(depth2d_ms, float, xy, uint2, metadata->mipmap); \\\nKERNEL_COPY_MAPPING_STATE_READ(depth2d_array, float, xy, uint2, metadata->slice, metadata->mipmap); \\\n\n//Generate functions for all of the Metal texture data types.\nKERNEL_COPY_MAPPING(half)\nKERNEL_COPY_MAPPING(float)\nKERNEL_COPY_MAPPING(short)\nKERNEL_COPY_MAPPING(ushort)\nKERNEL_COPY_MAPPING(int)\nKERNEL_COPY_MAPPING(uint)\nKERNEL_COPY_MAPPING_DEPTH()\n", 0, &v18}];
  v15 = [NSString stringWithFormat:@"kernel_copy_mapping_state_read_%@_%@", v8, v13];

  v16 = [v14 newFunctionWithName:v15];

  return v16;
}

id GetSparseTextureMappingBuffer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 0;
  if ([v3 arrayLength])
  {
    v6 = 0;
    do
    {
      if ([v3 mipmapLevelCount])
      {
        v7 = 0;
        do
        {
          v8 = [v3 width];
          if (v8 >> v7 <= 1)
          {
            LODWORD(v9) = 1;
          }

          else
          {
            v9 = v8 >> v7;
          }

          v10 = [v3 height];
          if (v10 >> v7 <= 1)
          {
            LODWORD(v11) = 1;
          }

          else
          {
            v11 = v10 >> v7;
          }

          v12 = [v3 depth];
          if (v12 >> v7 <= 1)
          {
            LODWORD(v13) = 1;
          }

          else
          {
            v13 = v12 >> v7;
          }

          v14 = [v3 textureType];
          v15 = [v3 pixelFormat];
          v16 = [v3 sampleCount];
          if (v4)
          {
            [v4 sparseTileSizeWithTextureType:v14 pixelFormat:v15 sampleCount:v16];
            LODWORD(v17) = 0;
            LODWORD(v18) = 0;
            v19 = v17;
            v20 = v18;
            LODWORD(v17) = 0;
            v21 = v17;
          }

          else
          {
            v21 = 0.0;
            v20 = 0.0;
            v19 = 0.0;
          }

          v5 += vcvtpd_u64_f64(v11 / v20) * vcvtpd_u64_f64(v9 / v19) * vcvtpd_u64_f64(v13 / v21);
          ++v7;
        }

        while (v7 < [v3 mipmapLevelCount]);
      }

      ++v6;
    }

    while (v6 < [v3 arrayLength]);
  }

  v22 = [v4 newBufferWithLength:v5 options:0];

  return v22;
}

uint64_t _Xmach_exception_raise_state_identity(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v2 = *(result + 4);
  if (*(result + 24) != 2 || v2 - 5277 < 0xFFFFEBAF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v4 = -300;
    goto LABEL_7;
  }

  v5 = *(result + 64);
  if (v5 > 2)
  {
LABEL_6:
    v4 = -304;
    goto LABEL_7;
  }

  v4 = -304;
  if (v5 <= (v2 - 76) >> 3)
  {
    v6 = 8 * v5;
    if (v2 >= v6 + 76)
    {
      v7 = *(result + v6 + 72);
      if (v7 <= 0x510)
      {
        v8 = v2 - v6;
        if (v7 <= (v8 - 76) >> 2 && v8 == 4 * v7 + 76)
        {
          *(a2 + 40) = 1296;
          v4 = 46;
          goto LABEL_7;
        }
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *_Xmach_exception_raise_state(_DWORD *result, uint64_t a2)
{
  v2 = -304;
  if ((*result & 0x80000000) == 0)
  {
    v3 = result[1];
    if (v3 - 5249 >= 0xFFFFEBAF)
    {
      v4 = result[9];
      if (v4 <= 2)
      {
        v5 = 2 * v4;
        v6 = v4 <= (v3 - 48) >> 3 && v3 >= 8 * v4 + 48;
        if (v6 && (v7 = result[v5 + 11], v7 <= 0x510) && (v8 = v3 - v5 * 4, v7 <= (v8 - 48) >> 2) && v8 == 4 * v7 + 48)
        {
          *(a2 + 40) = 1296;
          v2 = 46;
        }

        else
        {
          v2 = -304;
        }
      }
    }
  }

  *(a2 + 32) = v2;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xmach_exception_raise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 4);
  if (*(a1 + 24) != 2 || (v5 - 85) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v8 = *(a1 + 64);
  if (v8 <= 2 && v8 <= (v5 - 68) >> 3 && v5 == ((8 * v8) | 0x44))
  {
    result = catch_mach_exception_raise(a1, a2, a3, a4, a1 + 68);
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t mach_exc_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 2410) >= 0xFFFFFFFB)
  {
    return *(&catch_mach_exc_subsystem + 5 * (v1 - 2405) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t mach_exc_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 2410) >= 0xFFFFFFFB && (v5 = *(&catch_mach_exc_subsystem + 5 * (v4 - 2405) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

double GTResourceTrackerBuildArgumentBuffers()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  newpool = 0;
  apr_pool_create_ex(&newpool, v1, 0, 0);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v65 = v11;
  v66 = v10;
  pool = 0;
  arr[0] = apr_array_make(v2, 128, 40);
  arr[1] = apr_array_make(v2, 32, 16);
  p = v2;
  v69 = apr_array_make(v2, 32, 8);
  v12 = newpool;
  GTMTLSMContext_indirectCommandBufferResources(newpool, v6, v4, v70);
  apr_pool_create_ex(&pool, v12, 0, 0);
  *&v75 = v8;
  v13 = *(*(*find_entry(v11, &v75, 8uLL, 0) + 32) + 32);
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = atomic_load((v13 + 4));
      v16 = v14 + (v15 >> 6) - 1;
      if (v16 > 0)
      {
        break;
      }

      v13 = *(v13 + 40);
      v14 = v16;
      if (!v13)
      {
        v14 = v16;
        goto LABEL_8;
      }
    }

    v16 = 0;
LABEL_8:
    v17 = v14 | (v16 << 32);
  }

  else
  {
    v17 = 0;
  }

  v63 = v10;
LABEL_10:
  v18 = v13 + 64;
  while (v13)
  {
    v19 = HIDWORD(v17);
    v20 = v18 + ((HIDWORD(v17) - v17) << 6);
    if ((*(v20 + 15) & 8) == 0)
    {
      break;
    }

    ConstructorType = GTFenum_getConstructorType(*(v20 + 8));
    if (GTFenum_isMTLCommandEncoder(ConstructorType))
    {
      bzero(&v73, 0x2BA0uLL);
      GTMTLSMCommandEncoder_processTraceFunc(&v73, (v18 + ((HIDWORD(v17) - v17) << 6)), v10);
      if (v73 > 64)
      {
        if (v73 == 65)
        {
          v64 = HIDWORD(v17);
          v26 = v74;
          nelts = arr[0]->nelts;
          v27 = v69;
          v28 = apr_hash_make(v69->pool);
          *apr_array_push(v27) = v28;
          *&v75 = v26;
          v29 = *(*(*find_entry(v65, &v75, 8uLL, 0) + 32) + 32);
          if (v29)
          {
            v30 = 0;
            while (1)
            {
              v31 = atomic_load((v29 + 4));
              v32 = v30 + (v31 >> 6) - 1;
              if (v32 > 1)
              {
                break;
              }

              v29 = *(v29 + 40);
              v30 = v32;
              if (!v29)
              {
                v30 = v32;
                goto LABEL_28;
              }
            }

            v32 = 1;
LABEL_28:
            v33 = v30 | (v32 << 32);
          }

          else
          {
            v33 = 0;
          }

          v34 = 0;
          while (v29)
          {
            v35 = v29 + 64 + ((HIDWORD(v33) - v33) << 6);
            if ((*(v35 + 15) & 8) == 0)
            {
              break;
            }

            v36 = GTFenum_getConstructorType(*(v35 + 8));
            if (GTFenum_isMTLCommandEncoder(v36))
            {
              bzero(&v75, 0x2BA0uLL);
              GTMTLSMCommandEncoder_processTraceFunc(&v75, (v29 + 64 + ((HIDWORD(v33) - v33) << 6)), v66);
              v34 += commandEncoder_processStream_();
            }

            v37 = atomic_load((v29 + 4));
            v38 = v33 + (v37 >> 6);
            v39 = (HIDWORD(v33) + 1);
            v33 = (v39 << 32) | v33;
            if (v39 == v38 - 1)
            {
              v33 = (v39 << 32) | v39;
              v29 = *(v29 + 40);
            }
          }

          v22 = arr[0];
          v18 = v13 + 64;
          goto LABEL_37;
        }

        if (v73 == 70)
        {
          goto LABEL_20;
        }
      }

      else if (v73 == 21 || v73 == 28)
      {
LABEL_20:
        v64 = HIDWORD(v17);
        v22 = arr[0];
        v23 = v69;
        nelts = arr[0]->nelts;
        v25 = apr_hash_make(v69->pool);
        *apr_array_push(v23) = v25;
        commandEncoder_processStream_();
LABEL_37:
        v40 = nelts;
        v41 = v22->nelts;
        v19 = v41 - nelts;
        v42 = pool;
        v43 = apr_hash_make(pool);
        if (v19 >= 1)
        {
          v44 = v43;
          v45 = 40 * v41;
          do
          {
            v46 = &v22->elts[v45];
            *&v76[16] = 0;
            *v76 = 0u;
            v75 = 0u;
            v48 = *(v46 - 40);
            v47 = v46 - 40;
            v75 = v48;
            *&v76[8] = *(v47 + 24);
            v49 = *find_entry(v44, &v75, 0x28uLL, 0);
            if (v49 && *(v49 + 32))
            {
              --v19;
              v50 = &v22->elts[40 * v40 + 40 * v19];
              v51 = *v50;
              v52 = *(v50 + 16);
              *(v47 + 4) = *(v50 + 32);
              *v47 = v51;
              *(v47 + 1) = v52;
            }

            else
            {
              v53 = apr_palloc(v42, 0x28uLL);
              v54 = *&v76[16];
              v55 = *v76;
              *v53 = v75;
              v53[1] = v55;
              *(v53 + 4) = v54;
              apr_hash_set(v44, v53, 40, v53);
            }

            --v41;
            v45 -= 40;
          }

          while (v41 > v40);
          v10 = v63;
          v18 = v13 + 64;
        }

        apr_pool_clear(v42);
        v22->nelts = v40 + v19;
        v56 = apr_array_push(arr[1]);
        *v56 = v40;
        v56[1] = v19;
        LODWORD(v19) = v64;
      }
    }

    v57 = atomic_load((v13 + 4));
    v58 = v17 + (v57 >> 6);
    v59 = (v19 + 1);
    v17 = (v59 << 32) | v17;
    if (v59 == v58 - 1)
    {
      v17 = (v59 << 32) | v59;
      v13 = *(v13 + 40);
      goto LABEL_10;
    }
  }

  apr_pool_destroy(newpool);
  v60 = apr_palloc(p, 0x18uLL);
  v60[2] = v69;
  result = *arr;
  *v60 = *arr;
  return result;
}

uint64_t commandEncoder_processStream_()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v71 = v4;
  bzero(__src, 0x2BA0uLL);
  v5 = *(*(*find_entry(*v3, &v71, 8uLL, 0) + 32) + 32);
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

  v10 = 0;
  v69 = v2;
LABEL_10:
  v70 = v5 + 64;
  while (v5)
  {
    v11 = v70 + ((HIDWORD(v9) - v9) << 6);
    if ((*(v11 + 15) & 8) == 0)
    {
      break;
    }

    GTMTLSMCommandEncoder_processTraceFunc(__src, (v70 + ((HIDWORD(v9) - v9) << 6)), *(v3 + 8));
    v12 = v10 + v2;
    v13 = *(v11 + 8);
    if (v13 == -16377)
    {
      v14 = GTTraceFunc_argumentBytesWithMap(v11, *(v11 + 13), *(v3 + 8));
      v15 = *(v3 + 40);
      v16 = *(v14 + 3);
      v85[0].i64[0] = *(v14 + 1);
      v85[0].i64[1] = v16;
      MTLHarvesterMarkMutableAncestors(*(*(v15 + 24) + 8 * *(v15 + 12) - 8), v85, qword_297620, v10 + v2);
      LODWORD(v17) = 1;
    }

    else
    {
      if (GTFenum_isDrawCall(*(v11 + 8)))
      {
        v18 = Draw(v3, __src, v10 + v2);
      }

      else
      {
        if (v13 > -15298)
        {
          v19 = v13 == -15059;
          v20 = -15297;
        }

        else
        {
          v19 = v13 == -16137;
          v20 = -15486;
        }

        if (v19 || v13 == v20)
        {
          v22 = *v3;
          v85[0].i64[0] = __src[1075];
          entry = find_entry(v22, v85, 8uLL, 0);
          if (*entry)
          {
            v24 = *(*entry + 32);
            v25 = 0uLL;
            if (v24 && (v26 = *(v24 + 32)) != 0 && (*(v26 + 79) & 8) != 0)
            {
              v27 = (v26 + 64);
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            v24 = 0;
            v27 = 0;
            v25 = 0uLL;
          }

          v83 = 0;
          *&v82[256] = v25;
          *&v82[272] = v25;
          *&v82[224] = v25;
          *&v82[240] = v25;
          *&v82[192] = v25;
          *&v82[208] = v25;
          *&v82[160] = v25;
          *&v82[176] = v25;
          *&v82[128] = v25;
          *&v82[144] = v25;
          *&v82[96] = v25;
          *&v82[112] = v25;
          *&v82[64] = v25;
          *&v82[80] = v25;
          *&v82[32] = v25;
          *&v82[48] = v25;
          *v82 = v25;
          *&v82[16] = v25;
          *&v80 = v25;
          v81 = v25;
          v78 = v25;
          v79 = v25;
          v76 = v25;
          v77 = v25;
          *&v74 = v25;
          v75 = v25;
          v73 = v25;
          LODWORD(v73) = 71;
          *(&v74 + 1) = -1;
          *(&v80 + 1) = -1;
          GTMTLSMRenderPipelineState_processTraceFuncWithMap(&v73, *(v3 + 8), v27);
          if (*(&v78 + 1))
          {
            LODWORD(v17) = 0;
          }

          else
          {
            memcpy(__dst, v82, sizeof(__dst));
            v35 = *(v3 + 8);
            memset(v85, 0, 440);
            GTMTLRenderPipelineState_rootPipeline(v85, v24, v22, v35);
            v36 = *(*(*(v3 + 40) + 24) + 8 * *(*(v3 + 40) + 12) - 8);
            ArgumentBufferAccess(*(v3 + 24), &__src[869], &__src[900], &__src[868], &__dst[272], *(v85[4].i64[0] + 136), v12);
            *&__dst[224] = vandq_s8(*&__dst[224], vdupq_n_s64(~__src[868]));
            MTLHarvesterMarkMutableAncestors(v36, &__src[869], &__dst[224], v12);
            LODWORD(v17) = 1;
          }

LABEL_43:
          v2 = v69;
          goto LABEL_44;
        }

        if (!GTFenum_isComputeCall(v13))
        {
          if (v13 >> 2 != 1073737833)
          {
            goto LABEL_80;
          }

          v29 = 0;
          v30 = *v3;
          v31 = 0uLL;
          if (v13 > -15963)
          {
            if (v13 != -15961)
            {
              v67 = *v3;
              v68 = 0;
              v17 = 0;
              v32 = 0;
              if (v13 != -15962)
              {
                goto LABEL_64;
              }

              v40 = GTTraceFunc_argumentBytesWithMap(v11, *(v11 + 13), *(v3 + 8));
              v85[0].i64[0] = *(v40 + 1);
              v41 = v67;
              goto LABEL_50;
            }

            v33 = GTTraceFunc_argumentBytesWithMap(v11, *(v11 + 13), *(v3 + 8));
            v85[0].i64[0] = *(v33 + 1);
            v34 = v30;
LABEL_53:
            v44 = *find_entry(v34, v85, 8uLL, 0);
            if (v44)
            {
              v43 = *(v44 + 32);
            }

            else
            {
              v43 = 0;
            }

            v49 = GTTraceMemoryMap_argumentBlobAtIndex(v33[40], *(v3 + 8), *(v33 + 4));
            v50 = v49 + 16;
            if (!v49)
            {
              v50 = 0;
            }

            v68 = v50;
            v47 = GTTraceFunc_argumentBytesWithMap(v11, v33[41], *(v3 + 8));
            v48 = (v47 + 8);
          }

          else
          {
            if (v13 != -15964)
            {
              v66 = *v3;
              v68 = 0;
              v17 = 0;
              v32 = 0;
              if (v13 == -15963)
              {
                v33 = GTTraceFunc_argumentBytesWithMap(v11, *(v11 + 13), *(v3 + 8));
                v85[0].i64[0] = *(v33 + 1);
                v34 = v66;
                goto LABEL_53;
              }

LABEL_64:
              v51 = v32;
              v85[0] = v31;
              v85[1].i64[0] = v31.i64[0];
              v85[9].i64[0] = 0;
              v85[8] = v31;
              v85[6] = v31;
              v85[7] = v31;
              v85[5].i64[1] = v31.i64[1];
              v85[4] = v31;
              v85[3] = v31;
              v85[2] = v31;
              v85[0].i32[0] = 57;
              v85[1].i64[1] = -1;
              v85[6].i16[5] = 2;
              v85[5].i64[0] = -1;
              if (v29 && (v52 = *(v29 + 32)) != 0 && (*(v52 + 79) & 8) != 0)
              {
                v53 = v52 + 64;
              }

              else
              {
                v53 = 0;
              }

              GTMTLSMIndirectCommandBuffer_processTraceFuncWithMap(v85, *(v3 + 8), v53);
              memset(v82, 0, 72);
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v73 = 0u;
              GTMTLCreateIndirectCommandEncoder(&v73, v85[7].i64[0]);
              if (LODWORD(__src[0]) == 70)
              {
                memcpy(v85, __src, sizeof(v85));
                if (!*(v73 + 19))
                {
                  v58 = *(v73 + 38);
                  if (v58 >= 0x40)
                  {
                    LOBYTE(v58) = 64;
                  }

                  v85[4].i64[0] &= -1 << v58;
                  v59 = *(v73 + 31);
                  if (v59 >= 0x40)
                  {
                    LOBYTE(v59) = 64;
                  }

                  v85[123].i64[1] &= -1 << v59;
                  v60 = *(v73 + 35);
                  if (v60 >= 0x40)
                  {
                    LOBYTE(v60) = 64;
                  }

                  v85[227].i64[0] &= -1 << v60;
                  v61 = *(v73 + 34);
                  if (v61 >= 0x40)
                  {
                    LOBYTE(v61) = 64;
                  }

                  v85[330].i64[1] &= -1 << v61;
                }

                if (v17)
                {
                  v62 = *&v82[64];
                  v63 = v68 + v51 * *&v82[64];
                  v64 = v17;
                  do
                  {
                    if (GTMTLSMRenderCommandEncoder_loadIndirectCommand(&v85[3].i64[1], &v73, v63, v3 + 48))
                    {
                      Draw(v3, v85, v12);
                    }

                    ++v12;
                    v63 += v62;
                    --v64;
                  }

                  while (v64);
                }
              }

              else
              {
                if (LODWORD(__src[0]) != 28)
                {
LABEL_80:
                  LODWORD(v17) = 0;
                  goto LABEL_44;
                }

                memcpy(v85, __src, sizeof(v85));
                if (!*(v73 + 19))
                {
                  v54 = *(v73 + 32);
                  if (v54 >= 0x40)
                  {
                    LOBYTE(v54) = 64;
                  }

                  v85[4].i64[1] &= -1 << v54;
                }

                if (v17)
                {
                  v55 = *&v82[64];
                  v56 = v68 + v51 * *&v82[64];
                  v57 = v17;
                  do
                  {
                    if (GTMTLSMComputeCommandEncoder_loadIndirectCommand(&v85[3].i64[1], &v73, v56, v3 + 48))
                    {
                      Dispatch(v3, v85, v12);
                    }

                    ++v12;
                    v56 += v55;
                    --v57;
                  }

                  while (v57);
                }
              }

              goto LABEL_43;
            }

            v40 = GTTraceFunc_argumentBytesWithMap(v11, *(v11 + 13), *(v3 + 8));
            v85[0].i64[0] = *(v40 + 1);
            v41 = v30;
LABEL_50:
            v42 = *find_entry(v41, v85, 8uLL, 0);
            if (v42)
            {
              v43 = *(v42 + 32);
            }

            else
            {
              v43 = 0;
            }

            v45 = GTTraceMemoryMap_argumentBlobAtIndex(v40[40], *(v3 + 8), *(v40 + 4));
            v46 = v45 + 16;
            if (!v45)
            {
              v46 = 0;
            }

            v68 = v46;
            v47 = v40 + 16;
            v48 = (v40 + 24);
          }

          v32 = *v47;
          v17 = *v48;
          v2 = v69;
          v31 = 0uLL;
          v29 = v43;
          goto LABEL_64;
        }

        v18 = Dispatch(v3, __src, v10 + v2);
      }

      LODWORD(v17) = v18;
    }

LABEL_44:
    v10 += v17;
    v37 = atomic_load((v5 + 4));
    v38 = v9 + (v37 >> 6);
    v39 = (HIDWORD(v9) + 1);
    v9 = (v39 << 32) | v9;
    if (v39 == v38 - 1)
    {
      v9 = (v39 << 32) | v39;
      v5 = *(v5 + 40);
      goto LABEL_10;
    }
  }

  return v10;
}

void MTLHarvesterMarkMutableAncestors(apr_hash_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10 = *a1;
  do
  {
    v11 = a3[1] >> v8;
    if (!v11)
    {
      break;
    }

    v12 = v8 + __clz(__rbit64(v11));
    v22 = *(a2 + 8 * v12);
    v13 = *find_entry(a1, &v22, 8uLL, 0);
    if (v13)
    {
      v14 = *(v13 + 32);
      if (v14)
      {
        continue;
      }
    }

    v14 = apr_hash_make(v10);
    v15 = apr_palloc(v10, 8uLL);
    *v15 = v22;
    apr_hash_set(a1, v15, 8, v14);
    v16 = 0;
    do
    {
      v17 = *a3 >> v16;
      if (!v17)
      {
        break;
      }

      v18 = v16 + __clz(__rbit64(v17));
      v21 = *(a2 + 8 * v18);
      v19 = *find_entry(v14, &v21, 8uLL, 0);
      if (!v19 || !*(v19 + 32))
      {
        if (!v9)
        {
          v9 = apr_palloc(v10, 8uLL);
          *v9 = a4;
        }

        v20 = apr_palloc(v10, 8uLL);
        *v20 = v21;
        apr_hash_set(v14, v20, 8, v9);
      }

      v16 = v18 + 1;
    }

    while (v18 < 63);
    v8 = v12 + 1;
  }

  while (v12 < 63);
}

uint64_t Draw(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  *&v25 = a2[1075];
  entry = find_entry(v6, &v25, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
  }

  else
  {
    v8 = 0;
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  GTMTLSMRenderPipelineState_resourceAccess(v8, *(a1 + 8), v19);
  v9 = *(*(*(a1 + 40) + 24) + 8 * *(*(a1 + 40) + 12) - 8);
  v10 = *(a1 + 8);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
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
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTMTLRenderPipelineState_rootPipeline(&v25, v8, v6, v10);
  v11 = GTMTLSMRenderPipelineState_renderPipelineDescriptorType(0, &v25);
  if (v11 == 3)
  {
    v16 = *(a1 + 8);
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
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
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    GTMTLRenderPipelineState_rootPipeline(&v25, v8, v6, v16);
    v17 = *(&v29 + 1);
    ArgumentBufferAccess(*(a1 + 24), (a2 + 455), (a2 + 486), (a2 + 454), v23, *(*(&v29 + 1) + 368), a3);
    v22[0] = vandq_s8(v22[0], vdupq_n_s64(~a2[454]));
    MTLHarvesterMarkMutableAncestors(v9, (a2 + 455), v22, a3);
    ArgumentBufferAccess(*(a1 + 24), (a2 + 662), (a2 + 693), (a2 + 661), &v23[3].i64[1], *(v17 + 360), a3);
    *(v23 + 8) = vandq_s8(*(v23 + 8), vdupq_n_s64(~a2[661]));
    MTLHarvesterMarkMutableAncestors(v9, (a2 + 662), &v23[0].i64[1], a3);
    ArgumentBufferAccess(*(a1 + 24), (a2 + 248), (a2 + 279), (a2 + 247), &v21 + 1, *(v17 + 344), a3);
    *(v20 + 8) = vandq_s8(*(v20 + 8), vdupq_n_s64(~a2[247]));
    v14 = (a2 + 248);
    v15 = &v20[0].i64[1];
    goto LABEL_8;
  }

  if (v11 == 1)
  {
    v12 = *(a1 + 8);
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
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
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    GTMTLRenderPipelineState_rootPipeline(&v25, v8, v6, v12);
    v13 = v28;
    ArgumentBufferAccess(*(a1 + 24), (a2 + 10), (a2 + 41), (a2 + 8), v20, *(v28 + 1296), a3);
    v19[0] = vandq_s8(v19[0], vdupq_n_s64(~a2[8]));
    MTLHarvesterMarkMutableAncestors(v9, (a2 + 10), v19, a3);
    ArgumentBufferAccess(*(a1 + 24), (a2 + 248), (a2 + 279), (a2 + 247), &v21 + 1, v13[147], a3);
    *(v20 + 8) = vandq_s8(*(v20 + 8), vdupq_n_s64(~a2[247]));
    MTLHarvesterMarkMutableAncestors(v9, (a2 + 248), &v20[0].i64[1], a3);
    ArgumentBufferAccess(*(a1 + 24), (a2 + 455), (a2 + 486), (a2 + 454), v23, v13[155], a3);
    v22[0] = vandq_s8(v22[0], vdupq_n_s64(~a2[454]));
    MTLHarvesterMarkMutableAncestors(v9, (a2 + 455), v22, a3);
    ArgumentBufferAccess(*(a1 + 24), (a2 + 662), (a2 + 693), (a2 + 661), &v23[3].i64[1], v13[152], a3);
    *(v23 + 8) = vandq_s8(*(v23 + 8), vdupq_n_s64(~a2[661]));
    v14 = (a2 + 662);
    v15 = &v23[0].i64[1];
LABEL_8:
    MTLHarvesterMarkMutableAncestors(v9, v14, v15, a3);
    return 1;
  }

  return 0;
}

apr_array_header_t *ArgumentBufferAccess(apr_array_header_t *arr, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7)
{
  v13 = arr;
  v14 = 0;
  do
  {
    v15 = *a5 >> v14;
    if (!v15)
    {
      break;
    }

    v16 = __clz(__rbit64(v15));
    v17 = (v14 + v16);
    if (((*(a4 + (((v14 + v16) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v14 + v16)) & 1) == 0)
    {
      arr = apr_array_push(v13);
      arr->pool = *(a2 + 8 * v17);
      *&arr->elt_size = *(a3 + 8 * v17);
      *&arr->nalloc = a7;
      arr->elts = a6;
      arr[1].pool = v17;
    }

    v14 = v17 + 1;
  }

  while (v17 < 63);
  return arr;
}

char *Dispatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *&v15 = *(a2 + 64);
  entry = find_entry(v6, &v15, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = *(v8 + 32);
      if (v9)
      {
        if ((*(v9 + 79) & 8) != 0)
        {
          v10 = (v9 + 64);
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
LABEL_8:
  v15 = 0u;
  v16 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = 0u;
  v23 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  LODWORD(v15) = 29;
  v17 = -1;
  v24 = -1;
  GTMTLSMComputePipelineState_processTraceFuncWithMap(&v15, *(a1 + 8), v10);
  if (*(&v20 + 1))
  {
    return 0;
  }

  v13[0] = v26;
  v13[1] = v27;
  v13[2] = v28;
  v14 = v29;
  result = GTMTLComputePipelineState_computeFunction(v8, v6, *(a1 + 8));
  if (result)
  {
    v12 = *(*(*(a1 + 40) + 24) + 8 * *(*(a1 + 40) + 12) - 8);
    ArgumentBufferAccess(*(a1 + 24), a2 + 88, a2 + 336, a2 + 72, &v14, result, a3);
    v13[0] = vandq_s8(v13[0], vdupq_n_s64(~*(a2 + 72)));
    MTLHarvesterMarkMutableAncestors(v12, a2 + 88, v13, a3);
    return (&dword_0 + 1);
  }

  return result;
}

void CreateCommandBufferEpilogue(void *a1, uint64_t a2)
{
  v3 = a1;
  GTMTLCaptureEventBuffer_add(v3, a2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __CreateCommandBufferEpilogue_block_invoke;
  block[3] = &unk_2F2508;
  v7 = v3;
  v4 = CreateCommandBufferEpilogue_onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&CreateCommandBufferEpilogue_onceToken, block);
  }
}

uint64_t __CreateCommandBufferEpilogue_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v5, "encodeWaitForEvent:value:");

    return method_setImplementation(InstanceMethod, MTLCommandBuffer_encodeWaitForEventWithValue);
  }

  return result;
}

void CommandQueueTakeSnapshot(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = *(v1 + 88);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) != 2)
  {
    if (*(v1 + 88))
    {
      v10 = [*(v1 + 9) allObjects];
      v11 = [v10 copy];
      v12 = *(v2 + 10);
      *(v2 + 10) = v11;

      v3 = 0;
    }

    goto LABEL_22;
  }

  if ((*(v1 + 88) & 1) == 0)
  {
    if ([*(v1 + 9) count])
    {
      s();
      v5 = v4;
      *(v4 + 8) |= 0x80u;
      if (*(v2 + 10))
      {
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v6 = *(v2 + 4);
        GTTraceContext_pushEncoderWithStream(*(v2 + 3), &v42);
        v7 = v43;
        *(v43 + 8) = -15249;
        v8 = BYTE9(v44);
        if (BYTE9(v44) > 0x28uLL)
        {
          v13 = *(*(&v42 + 1) + 24);
          v14 = BYTE10(v44);
          ++BYTE10(v44);
          v9 = GTTraceMemPool_allocateBytes(v13, *(&v43 + 1), v14 | 0x1800000000) + 16;
          v8 = v14;
        }

        else
        {
          v9 = (v7 + BYTE9(v44));
          BYTE9(v44) += 24;
        }

        *(v7 + 13) = v8;
        v15 = [v2 traceStream];
        if (v15)
        {
          v16 = *v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = [*(v2 + 10) count];
        v18 = [*(v2 + 10) count];
        __chkstk_darwin(v18, 8 * v18);
        v20 = (&v42 - v19);
        bzero(&v42 - v19, v21);
        v22 = StreamNSArray(&v42, v20, *(v2 + 10));
        *v9 = v16;
        *(v9 + 1) = v17;
        v9[16] = v22;
        *(v9 + 17) = 0;
        *(v9 + 5) = 0;
        v23 = v43;
        *v5 = v44;
        *(v5 + 8) = BYTE8(v44);
        *(v23 + 15) |= 8u;
      }

      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v24 = *(v2 + 4);
      GTTraceContext_pushEncoderWithStream(*(v2 + 3), &v42);
      v25 = v43;
      *(v43 + 8) = -15251;
      v26 = BYTE9(v44);
      if (BYTE9(v44) > 0x28uLL)
      {
        v28 = *(*(&v42 + 1) + 24);
        v29 = BYTE10(v44);
        ++BYTE10(v44);
        v27 = GTTraceMemPool_allocateBytes(v28, *(&v43 + 1), v29 | 0x1800000000) + 16;
        v26 = v29;
      }

      else
      {
        v27 = (v25 + BYTE9(v44));
        BYTE9(v44) += 24;
      }

      *(v25 + 13) = v26;
      v30 = [v2 traceStream];
      if (v30)
      {
        v31 = *v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = [*(v2 + 9) count];
      v33 = [*(v2 + 9) allObjects];
      v34 = [v33 count];
      __chkstk_darwin(v34, 8 * v34);
      v36 = (&v42 - v35);
      bzero(&v42 - v35, v37);
      v38 = [*(v2 + 9) allObjects];
      v39 = StreamNSArray(&v42, v36, v38);
      *v27 = v31;
      *(v27 + 1) = v32;
      v27[16] = v39;
      *(v27 + 17) = 0;
      *(v27 + 5) = 0;

      v40 = v43;
      *v5 = v44;
      v41 = BYTE8(v44);
      *(v40 + 15) |= 8u;
      *(v5 + 8) = v41 & 0x7F;
    }

    v3 = 1;
LABEL_22:
    *(v2 + 88) = v3;
  }
}

void AddResidencySet(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4[9] addObject:v3];
    ResidencySetTakeSnapshotInternal(v3, 0);
  }
}

uint64_t __Block_byref_object_copy__11525(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CommandQueueCaptureResidencySetSnapshots(void *a1)
{
  v1 = a1;
  CommandQueueTakeSnapshot(v1);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = v1[9];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        ResidencySetTakeSnapshotInternal(*(*(&v7 + 1) + 8 * v6), 0);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void ReportError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [NSError errorWithDomain:a2 code:a3 userInfo:a4];
  v6 = v5;
  if ((dword_31F7C8 & 2) != 0)
  {
    if (s_logUsingOsLog == 1)
    {
      v7 = gt_tagged_log(4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = [v6 code];
        v9 = [v6 localizedDescription];
        v10 = [v9 UTF8String];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = "(unknown)";
        }

        v12 = [v6 localizedFailureReason];
        v13 = [v12 UTF8String];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = "";
        }

        v15 = [v6 localizedRecoverySuggestion];
        v16 = [v15 UTF8String];
        *buf = 134218754;
        v17 = "none";
        v31 = v8;
        if (v16)
        {
          v17 = v16;
        }

        v32 = 2080;
        v33 = v11;
        v34 = 2080;
        v35 = v14;
        v36 = 2080;
        v37 = v17;
        _os_log_fault_impl(&dword_0, v7, OS_LOG_TYPE_FAULT, "fail: error (%ld): %s %s [recommendation: %s]", buf, 0x2Au);
      }
    }

    else
    {
      v18 = __stderrp;
      v19 = [v5 code];
      v7 = [v6 localizedDescription];
      v20 = [v7 UTF8String];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = "(unknown)";
      }

      v22 = [v6 localizedFailureReason];
      v23 = [v22 UTF8String];
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = "";
      }

      v25 = [v6 localizedRecoverySuggestion];
      v26 = [v25 UTF8String];
      v27 = "none";
      if (v26)
      {
        v27 = v26;
      }

      v28 = [NSString stringWithFormat:@"fail: error (%ld): %s %s [recommendation: %s]", v19, v21, v24, v27];
      fprintf(v18, "%s\n", [v28 UTF8String]);
    }
  }

  if (a1)
  {
    v29 = v6;
    *a1 = v6;
  }
}

void FillMissingCaptureObjectError(void *a1)
{
  v3[0] = NSLocalizedDescriptionKey;
  v3[1] = NSLocalizedRecoverySuggestionErrorKey;
  v4[0] = @"Capture Object property is not set.";
  v4[1] = @"Specify an object to be captured like MTLDevice.";
  v2 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  ReportError(a1, MTLCaptureErrorDomain, 3, v2);
}

void FillCaptureObjectTypeError(void *a1, void *a2)
{
  v8[0] = @"Wrong capture object type.";
  v3 = a2;
  v4 = [NSString stringWithFormat:@"Selected capture mode requires the capture object to be %@", v3, NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey];
  v8[1] = v4;
  v7[2] = NSLocalizedRecoverySuggestionErrorKey;
  v5 = [NSString stringWithFormat:@"Specify %@ object to be captured.", v3];

  v8[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  ReportError(a1, MTLCaptureErrorDomain, 3, v6);
}

void __FillGTMTLCaptureDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 72) completionHandler];
  if (a2)
  {
    v3 = [NSString stringWithUTF8String:a2];
    v4 = [NSURL fileURLWithPath:v3];
    v5[2](v5, v4);
  }

  else
  {
    v5[2](v5, 0);
  }
}

void FinishCapture()
{
  v0 = +[CaptureMTLCaptureManager sharedCaptureManager];
  v1 = [v0 isCapturing];

  if (v1)
  {
    v2 = +[CaptureMTLCaptureManager sharedCaptureManager];
    [v2 stopCapture];
  }

  v3 = +[CaptureMTLCaptureManager toolsCaptureManager];
  v4 = [v3 isCapturing];

  if (v4)
  {
    v5 = +[CaptureMTLCaptureManager toolsCaptureManager];
    [v5 stopCapture];
  }
}

uint64_t GTMTLCaptureManager_init()
{
  v0 = dispatch_semaphore_create(0);
  v1 = qword_31F528;
  qword_31F528 = v0;

  qword_31F530 = dispatch_semaphore_create(0);

  return _objc_release_x1();
}

intptr_t GTMTLCaptureManager_waitForCaptureTrigger()
{
  if ((dword_31F7C8 & 0x40) != 0)
  {
    return dispatch_semaphore_wait(qword_31F530, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

id GTMTLCaptureManager_supportsRemoteCapture()
{
  if ((dword_31F7C8 & 0x800) != 0)
  {
    return &dword_0 + 1;
  }

  else
  {
    return [*g_guestAppClientMTL hasObservers];
  }
}

void GTMTLCaptureManager_startCapture(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _sharedCaptureManager;
  *(v3 + 224) = mach_absolute_time();
  GTMTLCaptureStatistics_begin(v3);
  v4 = objc_opt_new();
  [v4 setCaptureState:3];
  [*g_guestAppClientMTL notifyCaptureProgress:v4];
  GTMTLCaptureManager_preCaptureTakeSnapshots(a1);
  v5 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StartCapture", &unk_2E94FB, v6, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

void GTMTLCaptureManager_preCaptureTakeSnapshots(uint64_t a1)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v2 = newpool;
  v3 = GTTraceContext_copyStreamMap(a1, newpool);
  v4 = apr_hash_first(v2, v3);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *(*(v5 + 1) + 32);
      if (v6)
      {
        v7 = *(v6 + 32);
        if (v7)
        {
          if ((*(v7 + 79) & 8) != 0 && GTFenum_getConstructorType(*(v7 + 72)) == 100)
          {
            TextureViewPoolTakeSnapshot(*(v6 + 16));
          }
        }
      }

      v5 = apr_hash_next(v5);
    }

    while (v5);
  }

  apr_pool_destroy(v2);
}

unint64_t GTMTLCaptureManager_stopActiveCapture(uint64_t a1, uint64_t a2)
{
  v4 = *(g_ctx + 72);
  GTTraceStoreDebugDescription();
  v5 = &unk_31F000;
  v6 = _sharedCaptureManager;
  p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
  v8 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StopActiveCapture", &unk_2E94FB, &buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  v9 = *(v6 + 77);
  if (*v6)
  {
    WaitForDevice(g_ctx, *v6);
  }

  v10 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1 + a2;
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Capture-StopActiveCaptureDumpContext", "Index: %llu", &buf, 0xCu);
  }

  v101[0] = g_ctx;
  v101[1] = v6;
  v101[2] = a1;
  v101[3] = a2;
  v102 = (dword_31F7C8 & 0x400000) != 0;
  v103[0] = 0;
  *(v103 + 3) = 0;
  v11 = GTMTLCaptureManager_prepareForSerialization(v101);
  v12 = v11;
  if (*(*(v11 + 728) + 12) < 1)
  {
    GTTraceContextDumpEmptyCapture(v11);
    goto LABEL_34;
  }

  GTTraceDump_writeStartup0(v11, *(v11 + 32), *v11);
  v13 = *(v12 + 32);
  v14 = *v12;
  v15 = *(v12 + 16);
  v16 = apr_palloc(*v12, 0x100000uLL);
  *&buf = *(v12 + 56);
  entry = find_entry(v15, &buf, 8uLL, 0);
  if (*entry && (v18 = *(*entry + 32)) != 0)
  {
    v19 = atomic_load((v18 + 56));
    v20 = (v18 + (~(v19 >> 2) & 8));
  }

  else
  {
    v20 = &dword_8;
  }

  *&buf = *v20;
  *(&buf + 1) = v16;
  v107 = 0x100000;
  v21 = fbstream_open(v13[24], "startup-1-platform", v14);
  v108 = v21;
  v109 = v13;
  v110 = 0;
  LOBYTE(v111) = *(v12 + 668);
  *(&v111 + 1) = 0;
  HIDWORD(v111) = 0;
  GTEncodeMetalLayers(&buf, v12);
  apr_pool_cleanup_kill(*v21, v21, fbstream_cleanup);
  fbstream_cleanup(v21);
  GTTraceDump_writeDeviceResources(v12, *(v12 + 32), *v12);
  GTTraceDump_writeDelta(v12, *(v12 + 32), *v12);
  strcpy(&buf, "temporary data");
  GTMTLCaptureState_storePointer(*(v12 + 32), "gttrace-dump", &buf, &dword_C + 3);
  strcpy(&buf, "dummy data");
  v104 = 0;
  v105[0] = 4;
  if (!sysctlbyname("sysctl.proc_translated", &v104, v105, 0, 0) && v104)
  {
    GTMTLCaptureState_storePointer(*(v12 + 32), "is_rosetta", &buf, &dword_8 + 3);
  }

  if (os_variant_has_internal_content())
  {
    GTMTLCaptureState_storePointer(*(v12 + 32), "is_internal", &buf, &dword_8 + 3);
  }

  v96 = v9;
  v98 = v6;
  if (GTCorePlatform_isAlmond())
  {
    v22 = "is_almond";
LABEL_22:
    GTMTLCaptureState_storePointer(*(v12 + 32), v22, &buf, &dword_8 + 3);
    goto LABEL_23;
  }

  if (GTCorePlatform_isCatalyst())
  {
    v22 = "is_catalyst";
    goto LABEL_22;
  }

LABEL_23:
  WaitForDevice(*(v12 + 8), *(v12 + 56));
  GTTraceDump_writeCapture(v12, *(v12 + 32), *v12, dword_31F7C8 & 1);
  GTTraceDump_writeUnsortedCapture(v12, *(v12 + 32), *v12);
  p = *v12;
  v105[0] = @"MTLCAPTURE_PRESENT_DOWNLOAD";
  v93 = [NSNumber numberWithUnsignedLongLong:dword_31F7C8 & 1];
  *&buf = v93;
  v105[1] = @"MTLCAPTURE_PRESENT_DOWNLOAD_SIZE";
  v91 = [NSNumber numberWithUnsignedLongLong:qword_31F7C0];
  *(&buf + 1) = v91;
  v105[2] = @"MTLCAPTURE_LOG_ERRORS";
  v90 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 1) & 1];
  v107 = v90;
  v105[3] = @"MTLCAPTURE_HASH_DUPLICATE_FILES";
  v89 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 5) & 1];
  v108 = v89;
  v105[4] = @"MTLCAPTURE_WAIT_EVENT_TIMEOUT";
  v88 = [NSNumber numberWithUnsignedLongLong:GT_ENV];
  v109 = v88;
  v105[5] = @"MTLCAPTURE_WAIT_SHARED_EVENT_TIMEOUT_CPU";
  v87 = [NSNumber numberWithUnsignedLongLong:qword_31F7A8];
  v110 = v87;
  v105[6] = @"MTLCAPTURE_DESTINATION_DEVELOPER_TOOLS_ENABLE";
  v86 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 11) & 1];
  v111 = v86;
  v105[7] = @"MTLCAPTURE_WAIT_FOR_SIGNAL";
  v85 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 6) & 1];
  v112 = v85;
  v105[8] = @"MTLCAPTURE_NO_METALFX_CAPTURE";
  v84 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 8) & 1];
  v113 = v84;
  v105[9] = @"MTLCAPTURE_DISABLE_HEAP_TEXTURE_COMPRESSION";
  v83 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 9) & 1];
  v114 = v83;
  v105[10] = @"MTLCAPTURE_CAPTURE_ADS_BUFFER_SPI";
  v82 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 2) & 1];
  v115 = v82;
  v105[11] = @"MTLCAPTURE_ADS_EXTRA_BUFFERS";
  v81 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 4) & 1];
  v116 = v81;
  v105[12] = @"MTLCAPTURE_MAX_DOWNLOAD_COMMAND_BUFFERS";
  v80 = [NSNumber numberWithUnsignedLongLong:qword_31F7B0];
  v117 = v80;
  v105[13] = @"MTLCAPTURE_FORCE_RAYTRACING_ENABLE";
  v79 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 3) & 1];
  v118 = v79;
  v105[14] = @"MTLCAPTURE_IS_COMPOSITOR";
  v78 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 7) & 1];
  v119 = v78;
  v105[15] = @"MTLCAPTURE_ENABLE_DOWNLOADS_AT_EVENTS";
  v77 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 10) & 1];
  v120 = v77;
  v105[16] = @"MTLCAPTURE_ENABLE_MPROTECT";
  v76 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 12) & 1];
  v121 = v76;
  v105[17] = @"MTLCAPTURE_ENABLE_MPROTECT_BUFFER_SPLITTING";
  v75 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 13) & 1];
  v122 = v75;
  v105[18] = @"MTLCAPTURE_DISABLE_HEAPS";
  v74 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 14) & 1];
  v123 = v74;
  v105[19] = @"MTLCAPTURE_DISABLE_PLACEMENT_HEAPS";
  v73 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 15) & 1];
  v124 = v73;
  v105[20] = @"MTLCAPTURE_FORCE_WAIT_UNTIL_COMPLETED_ON_COMMIT";
  v72 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 16) & 1];
  v125 = v72;
  v105[21] = @"MTLCAPTURE_REDIRECT_LOGGING_TO_STREAMS";
  v71 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 17) & 1];
  v126 = v71;
  v105[22] = @"MTLCAPTURE_WITH_F12";
  v70 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 18) & 1];
  v127 = v70;
  v105[23] = @"MTLCAPTURE_SUPPORT_SUPERSEDING_LAYERS";
  v23 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 19) & 1];
  v128 = v23;
  v105[24] = @"MTLCAPTURE_DOWNLOADER_ENHANCED_COMMAND_BUFFER_ERRORS";
  v24 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 20) & 1];
  v129 = v24;
  v105[25] = @"MTLCAPTURE_DOWNLOADER_FORCE_SPLIT_COMMAND_ENCODERS";
  v25 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 21) & 1];
  v130 = v25;
  v105[26] = @"MTLCAPTURE_ENABLE_DOWNLOADER_FULL_HEAPS";
  v26 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 22) & 1];
  v131 = v26;
  v105[27] = @"MTLCAPTURE_FORCE_WAIT_SHARED_EVENT_TIMEOUT_CPU";
  v27 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 26) & 1];
  v132 = v27;
  v105[28] = @"MTLCAPTURE_ENABLE_EVENT_BUFFER";
  v28 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 27) & 1];
  v133 = v28;
  v105[29] = @"MTLCAPTURE_ENABLE_STREAMREF_AS_OBJECT_ID";
  v29 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 28) & 1];
  v134 = v29;
  v105[30] = @"MTLCAPTURE_DISABLE_CADISPLAY";
  v30 = [NSNumber numberWithUnsignedLongLong:(dword_31F7C8 >> 29) & 1];
  v135 = v30;
  v31 = [NSDictionary dictionaryWithObjects:&buf forKeys:v105 count:31];

  v94 = v31;
  v32 = [NSKeyedArchiver archivedDataWithRootObject:v31 requiringSecureCoding:1 error:0];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 bytes];
    v35 = [v33 length];
    v5 = &unk_31F000;
    v6 = v98;
    p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
    v36 = v96;
    if (v34)
    {
      v37 = v35;
      v38 = apr_palloc(p, v35);
      memcpy(v38, v34, v37);
    }

    else
    {
      v38 = 0;
    }

    v39 = [v33 length];
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v5 = &unk_31F000;
    v6 = v98;
    p_prots = (&OBJC_PROTOCOL___CaptureMTLObject + 16);
    v36 = v96;
  }

  if (v38 && v39)
  {
    GTMTLCaptureState_storePointer(*(v12 + 32), "environment", v38, v39);
  }

  if ((v36 & 1) == 0)
  {
    UnusedDownloadRequest = GTTraceContextDumpGetUnusedDownloadRequest(v12);
    v41 = GTResourceDownloaderProcessRequest(*v12, UnusedDownloadRequest);
    DownloadFromDevice(*(v12 + 16), *(v12 + 56), v41);
    apr_hash_clear(*(v12 + 672));
    DownloadsByResource(v41, *(v12 + 672));
    GTTraceDump_writeUnusedDeviceResources(v12, *(v12 + 32), *v12);
    GTTraceContextDumpUnusedCount(v12, &buf);
  }

LABEL_34:
  v42 = *(g_ctx + 72);
  GTTraceStoreDebugDescription();
  GTTraceContextDumpEnd(v12);
  v43 = p_prots[10];
  if (os_signpost_enabled(v43))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Capture-StopActiveCaptureDumpContext", &unk_2E94FB, &buf, 2u);
  }

  WaitForHarvesting();
  *&buf = 0;
  mach_timebase_info(&buf);
  mach_absolute_time();
  if (*(v6 + 73) == 1)
  {
    v44 = atomic_load((v6 + 216));
    v99 = v44 != 0;
  }

  else
  {
    v99 = 0;
  }

  v45 = objc_retainBlock(*(v6 + 80));
  v46 = [NSString stringWithUTF8String:*(v6 + 208)];
  atomic_load((v6 + 216));
  GTMTLCaptureState_close(v5[164]);
  v5[164] = 0;
  GTCaptureBoundaryTracker_reset();
  if (v45)
  {
    v45[2](v45, [v46 UTF8String]);
  }

  g_targetRef = 0;
  v47 = atomic_load(&g_frameCount);
  v48 = atomic_load(&g_frameOther);
  v49 = atomic_load(&g_commitCount);
  v50 = atomic_load(&g_commitOther);
  v51 = atomic_load(&g_resourceCount);
  v52 = atomic_load(&g_resourceDownloaded);
  v53 = atomic_load(&g_GPUDataSize);
  v92 = v52;
  v95 = v53;
  v54 = atomic_load(&g_GPUDataDownloaded);
  v97 = v54;
  v55 = objc_opt_new();
  v56 = [NSURL URLWithString:v46];
  [v55 setArchiveURL:v56];

  v57 = objc_opt_new();
  [v57 setCaptureState:2];
  [v57 setCompletionState:v55];
  v58 = objc_opt_new();
  [v57 setStats:v58];

  v59 = [v57 stats];
  [v59 setFrameCount:v47];

  v60 = [v57 stats];
  [v60 setFrameOther:v48];

  v61 = [v57 stats];
  [v61 setCommitCount:v49];

  v62 = [v57 stats];
  [v62 setCommitOther:v50];

  v63 = [v57 stats];
  [v63 setResourceCount:v51];

  v64 = [v57 stats];
  [v64 setResourceDownloaded:v92];

  v65 = [v57 stats];
  [v65 setGPUDataSize:v95];

  v66 = [v57 stats];
  [v66 setGPUDataDownloaded:v97];

  [*g_guestAppClientMTL notifyCaptureProgress:v57];
  objc_autoreleasePoolPop(context);
  v67 = *(g_ctx + 72);
  result = GTTraceStoreDebugDescription();
  if (v99)
  {
    return task_suspend(mach_task_self_);
  }

  return result;
}

void GTTraceContextDumpEnd(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    GTMTLCaptureManager_dumpDeviceFilesLocal(v2, *(a1 + 56));
  }

  GTTraceDump_endContext(a1);
}

void WaitForHarvesting()
{
  v0 = GTMTLGuestAppClient_copyCaptureDevices(g_guestAppClientMTL);
  v1 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v1, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Capture-StopActiveCaptureHarvesterWait", &unk_2E94FB, buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 dispatchGroup];
        dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

        [v7 invalidateHarvester];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Capture-StopActiveCaptureHarvesterWait", &unk_2E94FB, buf, 2u);
  }
}

void GTMTLCaptureManager_dumpDeviceFilesLocal(uint64_t a1, uint64_t a2)
{
  context = objc_autoreleasePoolPush();
  v3 = newDYDeviceInfo();
  v4 = GTMTLGuestAppClient_copyDeviceProfiles(g_guestAppClientMTL);
  [v3 setProfiles:v4];

  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v3 forKey:NSKeyedArchiveRootObjectKey];
  v6 = [v5 encodedData];
  GTMTLCaptureState_storeData(a1, @"(device info)", v6);
  GTMTLCaptureState_storeData(a1, @"(control device info)", v6);

  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v8 = [v3 profiles];
  [v7 encodeObject:v8 forKey:NSKeyedArchiveRootObjectKey];

  v9 = [v7 encodedData];
  GTMTLCaptureState_storeData(a1, @"(device profile)", v9);

  v36[0] = @"(uuid)";
  v29 = objc_alloc_init(NSUUID);
  v27 = [v29 UUIDString];
  v37[0] = v27;
  v37[1] = &off_2F76A0;
  v36[1] = @"DYCaptureSession.capture_version";
  v36[2] = @"DYCaptureSession.interpose_feature_version";
  v37[2] = &off_2F76B8;
  v37[3] = @"0";
  v36[3] = @"DYCaptureSession.interpose_patch_version";
  v36[4] = @"DYCaptureSession.nativePointerSize";
  v37[4] = &off_2F76D0;
  v36[5] = @"DYCaptureSession.boundaryLess";
  v26 = [NSNumber numberWithBool:*(a1 + 74)];
  v37[5] = v26;
  v37[6] = &off_2F76E8;
  v36[6] = @"DYCaptureSession.graphics_api";
  v36[7] = @"DYCaptureSession.library_link_time_versions";
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [&off_2F7848 count]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [&off_2F7848 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(&off_2F7848);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", NSVersionOfLinkTimeLibrary([v15 UTF8String]));
        [v10 setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [&off_2F7848 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v12);
  }

  v17 = [v10 copy];

  v37[7] = v17;
  v37[8] = &off_2F76E8;
  v36[8] = @"DYCaptureEngine.captured_frames_count";
  v36[9] = @"DYCaptureEngine.launch_dictionary";
  v37[9] = &__NSDictionary0__struct;
  v36[10] = @"DYCaptureEngine.linked_on_apex_or_later";
  v18 = [NSNumber numberWithUnsignedChar:_CFExecutableLinkedOnOrAfter()];
  v37[10] = v18;
  v36[11] = @"DYCaptureSession.deviceId";
  v19 = [NSNumber numberWithUnsignedLong:a2];
  v37[11] = v19;
  v37[12] = &off_2F76A0;
  v36[12] = @"DYCaptureSession.unusedBufferCount";
  v36[13] = @"DYCaptureSession.unusedTextureCount";
  v37[13] = &off_2F76A0;
  v37[14] = &off_2F76A0;
  v36[14] = @"DYCaptureSession.unusedLibraryCount";
  v36[15] = @"DYCaptureSession.unusedFunctionCount";
  v36[16] = @"DYCaptureSession.unusedRenderPipelineStateCount";
  v36[17] = @"DYCaptureSession.unusedComputePipelineStateCount";
  v37[15] = &off_2F76A0;
  v37[16] = &off_2F76A0;
  v36[18] = @"DYCaptureSession.unusedDepthStencilStateCount";
  v36[19] = @"DYCaptureSession.unusedSamplerStateCount";
  v37[17] = &off_2F76A0;
  v37[18] = &off_2F76A0;
  v36[20] = @"DYCaptureSession.unusedCommandQueueCount";
  v37[19] = &off_2F76A0;
  v37[20] = &off_2F76A0;
  v20 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:21];

  v31 = 0;
  v21 = [NSPropertyListSerialization dataWithPropertyList:v20 format:200 options:0 error:&v31];
  v22 = v31;
  memset(v38, 0, 48);
  v23 = *(a1 + 192);
  v24 = v21;
  v25 = v22;
  GTCaptureArchive_addFile(v23, "metadata", [v21 bytes], objc_msgSend(v21, "length"), 0, v38);

  objc_autoreleasePoolPop(context);
}

void GTMTLCaptureManager_abortActiveCapture(uint64_t a1, const char *a2)
{
  v4 = &unk_31F000;
  v5 = _sharedCaptureManager;
  v6 = objc_autoreleasePoolPush();
  v7 = GTMTLGuestAppClient_getUnsupportedFenumInfo();
  v8 = v7;
  p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
  if (v7)
  {
    v10 = [v7 asError];
    v11 = v10;
    if (s_logUsingOsLog == 1)
    {
      v12 = gt_tagged_log(4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v53 = [v11 code];
        v13 = [v11 localizedDescription];
        v52 = [v13 UTF8String];
        [v11 localizedFailureReason];
        v14 = v55 = v6;
        v15 = [v14 UTF8String];
        v16 = a2;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = "";
        }

        [v11 localizedRecoverySuggestion];
        v19 = v18 = a1;
        v20 = [v19 UTF8String];
        *buf = 134218754;
        v21 = "none";
        *&buf[4] = v53;
        if (v20)
        {
          v21 = v20;
        }

        *&buf[12] = 2080;
        *&buf[14] = v52;
        *&buf[22] = 2080;
        v59 = v17;
        a2 = v16;
        *v60 = 2080;
        *&v60[2] = v21;
        _os_log_fault_impl(&dword_0, v12, OS_LOG_TYPE_FAULT, "fail: Capture aborted (%ld): %s %s [recommendation: %s]", buf, 0x2Au);

        a1 = v18;
        v4 = &unk_31F000;
        v6 = v55;

        p_prots = (&OBJC_PROTOCOL___CaptureMTLObject + 16);
      }
    }

    else
    {
      v54 = __stderrp;
      v51 = [v10 code];
      v12 = [v11 localizedDescription];
      v22 = [v12 UTF8String];
      v23 = [v11 localizedFailureReason];
      v24 = [v23 UTF8String];
      v25 = a1;
      v26 = v6;
      if (v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = "";
      }

      [v11 localizedRecoverySuggestion];
      v28 = v56 = a2;
      v29 = [v28 UTF8String];
      v30 = "none";
      if (v29)
      {
        v30 = v29;
      }

      v50 = v27;
      v6 = v26;
      a1 = v25;
      v31 = [NSString stringWithFormat:@"fail: Capture aborted (%ld): %s %s [recommendation: %s]", v51, v22, v50, v30];
      fprintf(v54, "%s\n", [v31 UTF8String]);

      p_prots = &OBJC_PROTOCOL___CaptureMTLObject.prots;
      a2 = v56;

      v4 = &unk_31F000;
    }
  }

  *buf = g_ctx;
  *&buf[8] = v5;
  *&buf[16] = a1;
  v59 = a2;
  v60[0] = (dword_31F7C8 & 0x400000) != 0;
  *&v60[1] = 0;
  *&v60[4] = 0;
  v32 = GTMTLCaptureManager_prepareForSerialization(buf);
  GTTraceContextDumpEmptyCapture(v32);
  GTTraceContextDumpEnd(v32);
  WaitForHarvesting();

  objc_autoreleasePoolPop(v6);
  v33 = objc_retainBlock(*(v5 + 80));
  if (!*(v5 + 208))
  {
    GTMTLCaptureState_close(v4[164]);
    goto LABEL_32;
  }

  v34 = [NSString stringWithUTF8String:?];
  GTMTLCaptureState_close(v4[164]);
  if (!v34)
  {
    goto LABEL_32;
  }

  if (*(p_prots + 88) == 1)
  {
    v35 = gt_tagged_log(4);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v34 UTF8String];
      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "Capture aborted, removing archive: %s", buf, 0xCu);
    }
  }

  else
  {
    v37 = __stdoutp;
    v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Capture aborted, removing archive: %s", [v34 UTF8String]);
    fprintf(v37, "%s\n", [v35 UTF8String]);
  }

  v38 = +[NSFileManager defaultManager];
  v57 = 0;
  v39 = [v38 removeItemAtPath:v34 error:&v57];
  v40 = v57;

  if ((v39 & 1) == 0)
  {
    if (*(p_prots + 88) == 1)
    {
      v41 = gt_tagged_log(4);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
LABEL_30:

        goto LABEL_31;
      }

      v42 = [v34 UTF8String];
      v43 = [v40 localizedDescription];
      v44 = [v43 UTF8String];
      *buf = 136315394;
      *&buf[4] = v42;
      *&buf[12] = 2080;
      *&buf[14] = v44;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "Remove archive %s failed: %s", buf, 0x16u);
    }

    else
    {
      v45 = __stdoutp;
      v46 = [v34 UTF8String];
      v41 = [v40 localizedDescription];
      v43 = [NSString stringWithFormat:@"Remove archive %s failed: %s", v46, [v41 UTF8String]];
      fprintf(v45, "%s\n", [v43 UTF8String]);
    }

    goto LABEL_30;
  }

LABEL_31:

LABEL_32:
  v4[164] = 0;
  GTCaptureBoundaryTracker_reset();
  v47 = objc_opt_new();
  [v47 setCaptureState:2];
  v48 = objc_opt_new();
  [v47 setCompletionState:v48];

  v49 = objc_opt_new();
  [v47 setStats:v49];

  [*g_guestAppClientMTL notifyCaptureProgress:v47];
  if (v33)
  {
    v33[2](v33, 0);
  }
}

void GTMTLCaptureManager_activateCaptureWithDescriptor(uint64_t a1)
{
  if (*(a1 + 75) == 1)
  {
    if (*(a1 + 56))
    {
      _sharedCaptureManager = GTMTLCaptureState_createLocalCapture(a1);
      *(_sharedCaptureManager + 240) = (dword_31F7C8 & 0x20) != 0;
    }

    else
    {
      v8 = *(a1 + 48);
      v11 = *(a1 + 32);
      v12 = v8;
      v13 = *(a1 + 64);
      v9 = *(a1 + 16);
      v10[0] = *a1;
      v10[1] = v9;
      v14 = objc_retainBlock(*(a1 + 80));
      *&v11 = atomic_fetch_add(&qword_31F538, 1uLL) + 1;
      _sharedCaptureManager = GTMTLCaptureState_createRemoteCapture(v10);
      *(_sharedCaptureManager + 240) = (dword_31F7C8 & 0x20) != 0;
    }
  }

  else
  {
    RemoteCapture = GTMTLCaptureState_createRemoteCapture(a1);
    LOBYTE(RemoteCapture[30].numer) = (dword_31F7C8 & 0x20) != 0;
    _sharedCaptureManager = RemoteCapture;
    RemoteCapture[26] = apr_pstrdup(*&RemoteCapture[11], *(a1 + 56));
    v3 = _sharedCaptureManager;
    v4 = atomic_load(&qword_31F538);
    do
    {
      v5 = *(v3 + 32);
      if (v4 >= v5)
      {
        break;
      }

      v6 = v4;
      atomic_compare_exchange_strong(&qword_31F538, &v6, v5);
      v7 = v6 == v4;
      v4 = v6;
    }

    while (!v7);
  }
}

intptr_t GTMTLCaptureManager_updateCaptureDescriptorFromHost(intptr_t result)
{
  v1 = _sharedCaptureManager;
  if (*(result + 32) == *(_sharedCaptureManager + 32))
  {
    *(_sharedCaptureManager + 73) = *(result + 73);
    *(v1 + 208) = apr_pstrdup(*(v1 + 88), *(result + 56));
    result = dispatch_semaphore_signal(qword_31F528);
    v1 = _sharedCaptureManager;
  }

  v2 = atomic_load(&qword_31F538);
  do
  {
    v3 = *(v1 + 32);
    if (v2 >= v3)
    {
      break;
    }

    v4 = v2;
    atomic_compare_exchange_strong(&qword_31F538, &v4, v3);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  return result;
}

void GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [GTUnsupportedFenumInfo alloc];
  if (a1)
  {
    v9 = [NSString stringWithUTF8String:a1];
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (a2)
    {
LABEL_3:
      v10 = [NSString stringWithUTF8String:a2];
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  v10 = 0;
  if (a3)
  {
LABEL_4:
    v11 = [NSString stringWithUTF8String:a3];
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = 0;
  if (a4)
  {
LABEL_5:
    v12 = [NSString stringWithUTF8String:a4];
    v13 = [v8 initWithFenum:v9 category:v10 customMessage:v11 customRecoverySuggestion:v12];

    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  v13 = [v8 initWithFenum:v9 category:v10 customMessage:v11 customRecoverySuggestion:0];
  if (a3)
  {
LABEL_6:
  }

LABEL_7:
  if (a2)
  {
  }

  if (a1)
  {
  }

  GTMTLGuestAppClient_notifyUnsupportedFenum(v13);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v14 = 0x900000000;
  GTCaptureBoundaryTracker_handleTrigger(&v14);
}

uint64_t GetClientMemorySize(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 pixelFormat];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 device];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  GTMTLGetTextureLevelInfoForDeviceWithOptions(v8, [v7 sampleCount], &v15);

  v13 = [v7 textureType];
  if (v13 < 2)
  {
    goto LABEL_5;
  }

  if (v13 != &dword_4 + 3 || !a4)
  {
    if (a3)
    {
LABEL_6:
      a4 = v16 * a3;
      return *(&v16 + 1) * a4;
    }

LABEL_5:
    a3 = v19;
    goto LABEL_6;
  }

  return *(&v16 + 1) * a4;
}

id unwrapFrameInterpolatorDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 scaler];

  v4 = [v3 baseObject];
  [v2 setScaler:v4];

  return v2;
}

uint64_t WrapMTLFX(uint64_t a1, objc_class *a2)
{
  if (NSClassFromString(@"MTLFXSpatialScalerDescriptor") == a2)
  {
    v4 = MTLFXSpatialScalerDescriptor_ptr;
    v10 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v10, "newSpatialScalerWithDevice:");
    MTLFXSpatialScalerDescriptor_newSpatialScalerWithDeviceIMP = method_setImplementation(InstanceMethod, MTLFXSpatialScalerDescriptor_newSpatialScalerWithDevice);
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      return result;
    }

    v7 = MTLFXSpatialScalerDescriptor_newMTL4SpatialScalerWithDevice_compiler;
    v8 = &MTLFXSpatialScalerDescriptor_newMTL4SpatialScalerWithDevice_compilerIMP;
    v9 = &selRef_newSpatialScalerWithDevice_compiler_;
    goto LABEL_13;
  }

  if (NSClassFromString(@"MTLFXTemporalScalerDescriptor") == a2)
  {
    v4 = MTLFXTemporalScalerDescriptor_ptr;
    v12 = objc_opt_class();
    v13 = class_getInstanceMethod(v12, "newTemporalScalerWithDevice:");
    MTLFXTemporalScalerDescriptor_newTemporalScalerWithDeviceIMP = method_setImplementation(v13, MTLFXTemporalScalerDescriptor_newTemporalScalerWithDevice);
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      return result;
    }

    v7 = MTLFXTemporalScalerDescriptor_newMTL4TemporalScalerWithDevice_compiler;
    v8 = &MTLFXTemporalScalerDescriptor_newMTL4TemporalScalerWithDevice_compilerIMP;
    v9 = &selRef_newTemporalScalerWithDevice_compiler_;
    goto LABEL_13;
  }

  if (NSClassFromString(@"MTLFXFrameInterpolatorDescriptor") == a2)
  {
    v4 = MTLFXFrameInterpolatorDescriptor_ptr;
    v14 = objc_opt_class();
    v15 = class_getInstanceMethod(v14, "newFrameInterpolatorWithDevice:");
    MTLFXFrameInterpolatorDescriptor_newFrameInterpolatorWithDeviceIMP = method_setImplementation(v15, MTLFXFrameInterpolatorDescriptor_newFrameInterpolatorWithDevice);
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      return result;
    }

    v7 = MTLFXFrameInterpolatorDescriptor_newMTL4FrameInterpolatorWithDevice_compiler;
    v8 = &MTLFXFrameInterpolatorDescriptor_newMTL4FrameInterpolatorWithDevice_compilerIMP;
    v9 = &selRef_newFrameInterpolatorWithDevice_compiler_;
    goto LABEL_13;
  }

  result = NSClassFromString(@"MTLFXTemporalDenoisedScalerDescriptor");
  if (result == a2)
  {
    v4 = MTLFXTemporalDenoisedScalerDescriptor_ptr;
    v5 = objc_opt_class();
    v6 = class_getInstanceMethod(v5, "newTemporalDenoisedScalerWithDevice:");
    MTLFXTemporalDenoisedScalerDescriptor_newTemporalDenoisedScalerWithDeviceIMP = method_setImplementation(v6, MTLFXTemporalDenoisedScalerDescriptor_newTemporalDenoisedScalerWithDevice);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = MTLFXTemporalDenoisedScalerDescriptor_newMTL4TemporalDenoisedScalerWithDevice_compiler;
      v8 = &MTLFXTemporalDenoisedScalerDescriptor_newMTL4TemporalDenoisedScalerWithDevice_compilerIMP;
      v9 = &selRef_newTemporalDenoisedScalerWithDevice_compiler_;
LABEL_13:
      v16 = *v4;
      v17 = objc_opt_class();
      v18 = class_getInstanceMethod(v17, *v9);
      result = method_setImplementation(v18, v7);
      *v8 = result;
    }
  }

  return result;
}

CaptureMTL4FXTemporalDenoisedScaler *MTLFXTemporalDenoisedScalerDescriptor_newMTL4TemporalDenoisedScalerWithDevice_compiler(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v18 = MTLFXTemporalDenoisedScalerDescriptor_newMTL4TemporalDenoisedScalerWithDevice_compilerIMP(a1, a2, v7, v8);
  }

  else
  {
    v9 = [v7 traceContext];
    v33 = v9;
    v34 = 0;
    add = atomic_fetch_add(v9 + 10, 1uLL);
    s();
    v11 = v10;
    v12 = *v10;
    *v10 = v13;
    v36 = v12;
    v37 = *(v10 + 8);
    v38 = 16400;
    v39 = 0;
    v40 = 0;
    v14 = MTLFXTemporalDenoisedScalerDescriptor_newMTL4TemporalDenoisedScalerWithDevice_compilerIMP;
    v15 = [v7 baseObject];
    v16 = [v8 baseObject];
    v17 = v14(a1, a2, v15, v16);

    if (v17)
    {
      v18 = [[CaptureMTL4FXTemporalDenoisedScaler alloc] initWithBaseObject:v17 captureDevice:v7 captureCompiler:v8];
    }

    else
    {
      v18 = 0;
    }

    GTTraceEncoder_setStream(&v33, [(CaptureMTL4FXTemporalDenoisedScaler *)v18 traceStream]);
    v19 = v34;
    *(v34 + 8) = -18424;
    v20 = v38;
    if (v38 > 0x20uLL)
    {
      v22 = *(*(&v33 + 1) + 24);
      v23 = HIBYTE(v38);
      ++HIBYTE(v38);
      v21 = GTTraceMemPool_allocateBytes(v22, add, v23 | 0x2000000000) + 16;
      v20 = v23;
    }

    else
    {
      v21 = (v19 + v38);
      LOBYTE(v38) = v38 + 32;
    }

    *(v19 + 13) = v20;
    v24 = [v7 traceStream];
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [(CaptureMTL4FXTemporalDenoisedScaler *)v18 traceStream];
    if (v26)
    {
      var0 = v26->var0;
    }

    else
    {
      var0 = 0;
    }

    v28 = [v8 traceStream];
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = SaveMTLFXTemporalDenoisedScalerDescriptor(&v33, a1);
    *v21 = v25;
    *(v21 + 1) = var0;
    *(v21 + 2) = v29;
    v21[24] = v30;
    *(v21 + 25) = 0;
    *(v21 + 7) = 0;
    [v7 traceContext];
    v31 = v34;
    *v11 = v36;
    *(v11 + 8) = v37;
    *(v31 + 15) |= 8u;
  }

  return v18;
}

CaptureMTL4FXFrameInterpolator *MTLFXFrameInterpolatorDescriptor_newMTL4FrameInterpolatorWithDevice_compiler(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v18 = MTLFXFrameInterpolatorDescriptor_newMTL4FrameInterpolatorWithDevice_compilerIMP(a1, a2, v7, v8);
  }

  else
  {
    v9 = [v7 traceContext];
    v33 = v9;
    v34 = 0;
    add = atomic_fetch_add(v9 + 10, 1uLL);
    s();
    v11 = v10;
    v12 = *v10;
    *v10 = v13;
    v36 = v12;
    v37 = *(v10 + 8);
    v38 = 16400;
    v39 = 0;
    v40 = 0;
    v14 = MTLFXFrameInterpolatorDescriptor_newMTL4FrameInterpolatorWithDevice_compilerIMP;
    v15 = [v7 baseObject];
    v16 = [v8 baseObject];
    v17 = v14(a1, a2, v15, v16);

    if (v17)
    {
      v18 = [[CaptureMTL4FXFrameInterpolator alloc] initWithBaseObject:v17 captureDevice:v7 captureCompiler:v8];
    }

    else
    {
      v18 = 0;
    }

    GTTraceEncoder_setStream(&v33, [(CaptureMTL4FXFrameInterpolator *)v18 traceStream]);
    v19 = v34;
    *(v34 + 8) = -18425;
    v20 = v38;
    if (v38 > 0x20uLL)
    {
      v22 = *(*(&v33 + 1) + 24);
      v23 = HIBYTE(v38);
      ++HIBYTE(v38);
      v21 = GTTraceMemPool_allocateBytes(v22, add, v23 | 0x2000000000) + 16;
      v20 = v23;
    }

    else
    {
      v21 = (v19 + v38);
      LOBYTE(v38) = v38 + 32;
    }

    *(v19 + 13) = v20;
    v24 = [v7 traceStream];
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [(CaptureMTL4FXFrameInterpolator *)v18 traceStream];
    if (v26)
    {
      var0 = v26->var0;
    }

    else
    {
      var0 = 0;
    }

    v28 = [v8 traceStream];
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = SaveMTLFXFrameInterpolatorDescriptor(&v33, a1);
    *v21 = v25;
    *(v21 + 1) = var0;
    *(v21 + 2) = v29;
    v21[24] = v30;
    *(v21 + 25) = 0;
    *(v21 + 7) = 0;
    [v7 traceContext];
    v31 = v34;
    *v11 = v36;
    *(v11 + 8) = v37;
    *(v31 + 15) |= 8u;
  }

  return v18;
}

CaptureMTL4FXTemporalScaler *MTLFXTemporalScalerDescriptor_newMTL4TemporalScalerWithDevice_compiler(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v18 = MTLFXTemporalScalerDescriptor_newMTL4TemporalScalerWithDevice_compilerIMP(a1, a2, v7, v8);
  }

  else
  {
    v9 = [v7 traceContext];
    v33 = v9;
    v34 = 0;
    add = atomic_fetch_add(v9 + 10, 1uLL);
    s();
    v11 = v10;
    v12 = *v10;
    *v10 = v13;
    v36 = v12;
    v37 = *(v10 + 8);
    v38 = 16400;
    v39 = 0;
    v40 = 0;
    v14 = MTLFXTemporalScalerDescriptor_newMTL4TemporalScalerWithDevice_compilerIMP;
    v15 = [v7 baseObject];
    v16 = [v8 baseObject];
    v17 = v14(a1, a2, v15, v16);

    if (v17)
    {
      v18 = [[CaptureMTL4FXTemporalScaler alloc] initWithBaseObject:v17 captureDevice:v7 captureCompiler:v8];
    }

    else
    {
      v18 = 0;
    }

    GTTraceEncoder_setStream(&v33, [(CaptureMTL4FXTemporalScaler *)v18 traceStream]);
    v19 = v34;
    *(v34 + 8) = -18426;
    v20 = v38;
    if (v38 > 0x20uLL)
    {
      v22 = *(*(&v33 + 1) + 24);
      v23 = HIBYTE(v38);
      ++HIBYTE(v38);
      v21 = GTTraceMemPool_allocateBytes(v22, add, v23 | 0x2000000000) + 16;
      v20 = v23;
    }

    else
    {
      v21 = (v19 + v38);
      LOBYTE(v38) = v38 + 32;
    }

    *(v19 + 13) = v20;
    v24 = [v7 traceStream];
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [(CaptureMTL4FXTemporalScaler *)v18 traceStream];
    if (v26)
    {
      var0 = v26->var0;
    }

    else
    {
      var0 = 0;
    }

    v28 = [v8 traceStream];
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = SaveMTLFXTemporalScalerDescriptor(&v33, a1);
    *v21 = v25;
    *(v21 + 1) = var0;
    *(v21 + 2) = v29;
    v21[24] = v30;
    *(v21 + 25) = 0;
    *(v21 + 7) = 0;
    [v7 traceContext];
    v31 = v34;
    *v11 = v36;
    *(v11 + 8) = v37;
    *(v31 + 15) |= 8u;
  }

  return v18;
}

CaptureMTL4FXSpatialScaler *MTLFXSpatialScalerDescriptor_newMTL4SpatialScalerWithDevice_compiler(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v18 = MTLFXSpatialScalerDescriptor_newMTL4SpatialScalerWithDevice_compilerIMP(a1, a2, v7, v8);
  }

  else
  {
    v9 = [v7 traceContext];
    v33 = v9;
    v34 = 0;
    add = atomic_fetch_add(v9 + 10, 1uLL);
    s();
    v11 = v10;
    v12 = *v10;
    *v10 = v13;
    v36 = v12;
    v37 = *(v10 + 8);
    v38 = 16400;
    v39 = 0;
    v40 = 0;
    v14 = MTLFXSpatialScalerDescriptor_newMTL4SpatialScalerWithDevice_compilerIMP;
    v15 = [v7 baseObject];
    v16 = [v8 baseObject];
    v17 = v14(a1, a2, v15, v16);

    if (v17)
    {
      v18 = [[CaptureMTL4FXSpatialScaler alloc] initWithBaseObject:v17 captureDevice:v7 captureCompiler:v8];
    }

    else
    {
      v18 = 0;
    }

    GTTraceEncoder_setStream(&v33, [(CaptureMTL4FXSpatialScaler *)v18 traceStream]);
    v19 = v34;
    *(v34 + 8) = -18427;
    v20 = v38;
    if (v38 > 0x20uLL)
    {
      v22 = *(*(&v33 + 1) + 24);
      v23 = HIBYTE(v38);
      ++HIBYTE(v38);
      v21 = GTTraceMemPool_allocateBytes(v22, add, v23 | 0x2000000000) + 16;
      v20 = v23;
    }

    else
    {
      v21 = (v19 + v38);
      LOBYTE(v38) = v38 + 32;
    }

    *(v19 + 13) = v20;
    v24 = [v7 traceStream];
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [(CaptureMTL4FXSpatialScaler *)v18 traceStream];
    if (v26)
    {
      var0 = v26->var0;
    }

    else
    {
      var0 = 0;
    }

    v28 = [v8 traceStream];
    if (v28)
    {
      v29 = *v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = SaveMTLFXSpatialScalerDescriptor(&v33, a1);
    *v21 = v25;
    *(v21 + 1) = var0;
    *(v21 + 2) = v29;
    v21[24] = v30;
    *(v21 + 25) = 0;
    *(v21 + 7) = 0;
    [v7 traceContext];
    v31 = v34;
    *v11 = v36;
    *(v11 + 8) = v37;
    *(v31 + 15) |= 8u;
  }

  return v18;
}

CaptureMTLFXTemporalDenoisedScaler *MTLFXTemporalDenoisedScalerDescriptor_newTemporalDenoisedScalerWithDevice(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v15 = MTLFXTemporalDenoisedScalerDescriptor_newTemporalDenoisedScalerWithDeviceIMP(a1, a2, v5);
  }

  else
  {
    v7 = [v5 traceContext];
    v28 = v7;
    v29 = 0;
    add = atomic_fetch_add(v7 + 10, 1uLL);
    s();
    v9 = v8;
    v10 = *v8;
    *v8 = v11;
    v31 = v10;
    v32 = *(v8 + 8);
    v33 = 16400;
    v34 = 0;
    v35 = 0;
    v12 = MTLFXTemporalDenoisedScalerDescriptor_newTemporalDenoisedScalerWithDeviceIMP;
    v13 = [v6 baseObject];
    v14 = v12(a1, a2, v13);

    if (v14)
    {
      v15 = [[CaptureMTLFXTemporalDenoisedScaler alloc] initWithBaseObject:v14 captureDevice:v6];
    }

    else
    {
      v15 = 0;
    }

    GTTraceEncoder_setStream(&v28, [(CaptureMTLFXTemporalDenoisedScaler *)v15 traceStream]);
    v16 = v29;
    *(v29 + 8) = -18428;
    v17 = v33;
    if (v33 > 0x28uLL)
    {
      v19 = *(*(&v28 + 1) + 24);
      v20 = HIBYTE(v33);
      ++HIBYTE(v33);
      v18 = GTTraceMemPool_allocateBytes(v19, add, v20 | 0x1800000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + v33);
      LOBYTE(v33) = v33 + 24;
    }

    *(v16 + 13) = v17;
    v21 = [v6 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(CaptureMTLFXTemporalDenoisedScaler *)v15 traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    v25 = SaveMTLFXTemporalDenoisedScalerDescriptor(&v28, a1);
    *v18 = v22;
    *(v18 + 1) = var0;
    v18[16] = v25;
    *(v18 + 17) = 0;
    *(v18 + 5) = 0;
    [v6 traceContext];
    v26 = v29;
    *v9 = v31;
    *(v9 + 8) = v32;
    *(v26 + 15) |= 8u;
  }

  return v15;
}

CaptureMTLFXFrameInterpolator *MTLFXFrameInterpolatorDescriptor_newFrameInterpolatorWithDevice(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v15 = MTLFXFrameInterpolatorDescriptor_newFrameInterpolatorWithDeviceIMP(a1, a2, v5);
  }

  else
  {
    v7 = [v5 traceContext];
    v28 = v7;
    v29 = 0;
    add = atomic_fetch_add(v7 + 10, 1uLL);
    s();
    v9 = v8;
    v10 = *v8;
    *v8 = v11;
    v31 = v10;
    v32 = *(v8 + 8);
    v33 = 16400;
    v34 = 0;
    v35 = 0;
    v12 = MTLFXFrameInterpolatorDescriptor_newFrameInterpolatorWithDeviceIMP;
    v13 = [v6 baseObject];
    v14 = v12(a1, a2, v13);

    if (v14)
    {
      v15 = [[CaptureMTLFXFrameInterpolator alloc] initWithBaseObject:v14 captureDevice:v6];
    }

    else
    {
      v15 = 0;
    }

    GTTraceEncoder_setStream(&v28, [(CaptureMTLFXFrameInterpolator *)v15 traceStream]);
    v16 = v29;
    *(v29 + 8) = -18429;
    v17 = v33;
    if (v33 > 0x28uLL)
    {
      v19 = *(*(&v28 + 1) + 24);
      v20 = HIBYTE(v33);
      ++HIBYTE(v33);
      v18 = GTTraceMemPool_allocateBytes(v19, add, v20 | 0x1800000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + v33);
      LOBYTE(v33) = v33 + 24;
    }

    *(v16 + 13) = v17;
    v21 = [v6 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(CaptureMTLFXFrameInterpolator *)v15 traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    v25 = SaveMTLFXFrameInterpolatorDescriptor(&v28, a1);
    *v18 = v22;
    *(v18 + 1) = var0;
    v18[16] = v25;
    *(v18 + 17) = 0;
    *(v18 + 5) = 0;
    [v6 traceContext];
    v26 = v29;
    *v9 = v31;
    *(v9 + 8) = v32;
    *(v26 + 15) |= 8u;
  }

  return v15;
}

CaptureMTLFXTemporalScaler *MTLFXTemporalScalerDescriptor_newTemporalScalerWithDevice(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v15 = MTLFXTemporalScalerDescriptor_newTemporalScalerWithDeviceIMP(a1, a2, v5);
  }

  else
  {
    v7 = [v5 traceContext];
    v28 = v7;
    v29 = 0;
    add = atomic_fetch_add(v7 + 10, 1uLL);
    s();
    v9 = v8;
    v10 = *v8;
    *v8 = v11;
    v31 = v10;
    v32 = *(v8 + 8);
    v33 = 16400;
    v34 = 0;
    v35 = 0;
    v12 = MTLFXTemporalScalerDescriptor_newTemporalScalerWithDeviceIMP;
    v13 = [v6 baseObject];
    v14 = v12(a1, a2, v13);

    if (v14)
    {
      v15 = [[CaptureMTLFXTemporalScaler alloc] initWithBaseObject:v14 captureDevice:v6];
    }

    else
    {
      v15 = 0;
    }

    GTTraceEncoder_setStream(&v28, [(CaptureMTLFXTemporalScaler *)v15 traceStream]);
    v16 = v29;
    *(v29 + 8) = -18431;
    v17 = v33;
    if (v33 > 0x28uLL)
    {
      v19 = *(*(&v28 + 1) + 24);
      v20 = HIBYTE(v33);
      ++HIBYTE(v33);
      v18 = GTTraceMemPool_allocateBytes(v19, add, v20 | 0x1800000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + v33);
      LOBYTE(v33) = v33 + 24;
    }

    *(v16 + 13) = v17;
    v21 = [v6 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(CaptureMTLFXTemporalScaler *)v15 traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    v25 = SaveMTLFXTemporalScalerDescriptor(&v28, a1);
    *v18 = v22;
    *(v18 + 1) = var0;
    v18[16] = v25;
    *(v18 + 17) = 0;
    *(v18 + 5) = 0;
    [v6 traceContext];
    v26 = v29;
    *v9 = v31;
    *(v9 + 8) = v32;
    *(v26 + 15) |= 8u;
  }

  return v15;
}

CaptureMTLFXSpatialScaler *MTLFXSpatialScalerDescriptor_newSpatialScalerWithDevice(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((dword_31F7C8 & 0x100) != 0)
  {
    v15 = MTLFXSpatialScalerDescriptor_newSpatialScalerWithDeviceIMP(a1, a2, v5);
  }

  else
  {
    v7 = [v5 traceContext];
    v28 = v7;
    v29 = 0;
    add = atomic_fetch_add(v7 + 10, 1uLL);
    s();
    v9 = v8;
    v10 = *v8;
    *v8 = v11;
    v31 = v10;
    v32 = *(v8 + 8);
    v33 = 16400;
    v34 = 0;
    v35 = 0;
    v12 = MTLFXSpatialScalerDescriptor_newSpatialScalerWithDeviceIMP;
    v13 = [v6 baseObject];
    v14 = v12(a1, a2, v13);

    if (v14)
    {
      v15 = [[CaptureMTLFXSpatialScaler alloc] initWithBaseObject:v14 captureDevice:v6];
    }

    else
    {
      v15 = 0;
    }

    GTTraceEncoder_setStream(&v28, [(CaptureMTLFXSpatialScaler *)v15 traceStream]);
    v16 = v29;
    *(v29 + 8) = -18432;
    v17 = v33;
    if (v33 > 0x28uLL)
    {
      v19 = *(*(&v28 + 1) + 24);
      v20 = HIBYTE(v33);
      ++HIBYTE(v33);
      v18 = GTTraceMemPool_allocateBytes(v19, add, v20 | 0x1800000000) + 16;
      v17 = v20;
    }

    else
    {
      v18 = (v16 + v33);
      LOBYTE(v33) = v33 + 24;
    }

    *(v16 + 13) = v17;
    v21 = [v6 traceStream];
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(CaptureMTLFXSpatialScaler *)v15 traceStream];
    if (v23)
    {
      var0 = v23->var0;
    }

    else
    {
      var0 = 0;
    }

    v25 = SaveMTLFXSpatialScalerDescriptor(&v28, a1);
    *v18 = v22;
    *(v18 + 1) = var0;
    v18[16] = v25;
    *(v18 + 17) = 0;
    *(v18 + 5) = 0;
    [v6 traceContext];
    v26 = v29;
    *v9 = v31;
    *(v9 + 8) = v32;
    *(v26 + 15) |= 8u;
  }

  return v15;
}

uint64_t mach_exception_raise(mach_port_t a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  v17 = 0u;
  v22 = 0;
  v21 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v15 = 2;
  v16 = a2;
  DWORD1(v17) = 1245184;
  DWORD2(v17) = a3;
  v18 = 1245184;
  v19 = NDR_record;
  v20 = a4;
  if (a6 > 2)
  {
    return 4294966989;
  }

  __memcpy_chk();
  LODWORD(v21) = a6;
  v9 = (8 * a6) | 0x44;
  v10 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v10;
  reply_port.msgh_bits = -2147478253;
  *&reply_port.msgh_voucher_port = 0x96500000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v10;
  }

  v12 = mach_msg(&reply_port, 3, v9, 0x2Cu, msgh_local_port, 0, 0);
  v6 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
    return v6;
  }

  if (v12)
  {
    mig_dealloc_reply_port(reply_port.msgh_local_port);
    return v6;
  }

  if (reply_port.msgh_id == 71)
  {
    v6 = 4294966988;
LABEL_20:
    mach_msg_destroy(&reply_port);
    return v6;
  }

  if (reply_port.msgh_id != 2505)
  {
    v6 = 4294966995;
    goto LABEL_20;
  }

  v6 = 4294966996;
  if ((reply_port.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (reply_port.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (reply_port.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v6 = v17;
  if (v17)
  {
    goto LABEL_20;
  }

  return v6;
}

uint64_t mach_exception_raise_state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v9 = __chkstk_darwin(a1, a2);
  memset(v36, 0, 480);
  memset(&reply_port, 0, sizeof(reply_port));
  v35 = NDR_record;
  LODWORD(v36[0]) = v15;
  if (v10 <= 2)
  {
    v16 = v14;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v21 = v9;
    v22 = 8 * v10;
    __memcpy_chk();
    DWORD1(v36[0]) = v20;
    v23 = &reply_port + v22;
    *(&reply_port + v22 + 40) = *v19;
    if (v17 <= 0x510)
    {
      v26 = v23 - 16;
      memcpy(v23 + 48, v18, 4 * v17);
      *(v26 + 15) = v17;
      v27 = mig_get_reply_port();
      reply_port.msgh_remote_port = v21;
      reply_port.msgh_local_port = v27;
      reply_port.msgh_bits = 5395;
      *&reply_port.msgh_voucher_port = 0x96600000000;
      if (&_voucher_mach_msg_set)
      {
        voucher_mach_msg_set(&reply_port);
        msgh_local_port = reply_port.msgh_local_port;
      }

      else
      {
        msgh_local_port = v27;
      }

      v29 = mach_msg(&reply_port, 3, v22 + 4 * v17 + 48, 0x1474u, msgh_local_port, 0, 0);
      v24 = v29;
      if ((v29 - 268435458) <= 0xE && ((1 << (v29 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port.msgh_local_port);
        return v24;
      }

      if (v29)
      {
        mig_dealloc_reply_port(reply_port.msgh_local_port);
        return v24;
      }

      if (reply_port.msgh_id == 71)
      {
        v24 = 4294966988;
      }

      else if (reply_port.msgh_id == 2506)
      {
        if ((reply_port.msgh_bits & 0x80000000) == 0)
        {
          if (reply_port.msgh_size - 5229 <= 0xFFFFEBBE)
          {
            if (LODWORD(v36[0]))
            {
              v30 = reply_port.msgh_remote_port == 0;
            }

            else
            {
              v30 = 0;
            }

            if (v30 && reply_port.msgh_size == 36)
            {
              v24 = LODWORD(v36[0]);
            }

            else
            {
              v24 = 4294966996;
            }

            goto LABEL_30;
          }

          if (!reply_port.msgh_remote_port)
          {
            v24 = LODWORD(v36[0]);
            if (LODWORD(v36[0]))
            {
              goto LABEL_30;
            }

            v32 = DWORD2(v36[0]);
            if (DWORD2(v36[0]) <= 0x510 && DWORD2(v36[0]) <= (reply_port.msgh_size - 44) >> 2)
            {
              v33 = 4 * DWORD2(v36[0]);
              if (reply_port.msgh_size == 4 * DWORD2(v36[0]) + 44)
              {
                *v19 = DWORD1(v36[0]);
                memcpy(v16, v36 + 12, v33);
                v24 = 0;
                *a9 = v32;
                return v24;
              }
            }
          }
        }

        v24 = 4294966996;
      }

      else
      {
        v24 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&reply_port);
      return v24;
    }
  }

  return 4294966989;
}

uint64_t mach_exception_raise_state_identity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, void *a10, _DWORD *a11)
{
  v11 = __chkstk_darwin(a1, a2);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v37 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v35 = 2;
  v36 = v15;
  DWORD1(v37) = 1245184;
  DWORD2(v37) = v16;
  v38 = 1245184;
  v39 = NDR_record;
  v40 = v17;
  if (v12 <= 2)
  {
    v18 = v14;
    v19 = v13;
    v20 = v12;
    v21 = v11;
    v22 = 8 * v12;
    __memcpy_chk();
    LODWORD(v41) = v20;
    v23 = &reply_port + v22;
    *(&reply_port + v22 + 68) = *v19;
    if (a9 <= 0x510)
    {
      v26 = v23 - 16;
      memcpy(v23 + 76, v18, 4 * a9);
      *(v26 + 22) = a9;
      v27 = mig_get_reply_port();
      reply_port.msgh_remote_port = v21;
      reply_port.msgh_local_port = v27;
      reply_port.msgh_bits = -2147478253;
      *&reply_port.msgh_voucher_port = 0x96700000000;
      if (&_voucher_mach_msg_set)
      {
        voucher_mach_msg_set(&reply_port);
        msgh_local_port = reply_port.msgh_local_port;
      }

      else
      {
        msgh_local_port = v27;
      }

      v29 = mach_msg(&reply_port, 3, v22 + 4 * a9 + 76, 0x1474u, msgh_local_port, 0, 0);
      v24 = v29;
      if ((v29 - 268435458) <= 0xE && ((1 << (v29 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port.msgh_local_port);
        return v24;
      }

      if (v29)
      {
        mig_dealloc_reply_port(reply_port.msgh_local_port);
        return v24;
      }

      if (reply_port.msgh_id == 71)
      {
        v24 = 4294966988;
      }

      else if (reply_port.msgh_id == 2507)
      {
        if ((reply_port.msgh_bits & 0x80000000) == 0)
        {
          if (reply_port.msgh_size - 5229 <= 0xFFFFEBBE)
          {
            if (v37)
            {
              v30 = reply_port.msgh_remote_port == 0;
            }

            else
            {
              v30 = 0;
            }

            if (v30 && reply_port.msgh_size == 36)
            {
              v24 = v37;
            }

            else
            {
              v24 = 4294966996;
            }

            goto LABEL_30;
          }

          if (!reply_port.msgh_remote_port)
          {
            v24 = v37;
            if (v37)
            {
              goto LABEL_30;
            }

            v32 = DWORD2(v37);
            if (DWORD2(v37) <= 0x510 && DWORD2(v37) <= (reply_port.msgh_size - 44) >> 2)
            {
              v33 = 4 * DWORD2(v37);
              if (reply_port.msgh_size == 4 * DWORD2(v37) + 44)
              {
                *v19 = DWORD1(v37);
                memcpy(a10, &v37 + 12, v33);
                v24 = 0;
                *a11 = v32;
                return v24;
              }
            }
          }
        }

        v24 = 4294966996;
      }

      else
      {
        v24 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&reply_port);
      return v24;
    }
  }

  return 4294966989;
}

void GTMTLTelemetryEnvironment_init()
{
  v0 = getenv("MTLTELEMETRY_REPORT_FREQUENCY");
  if (v0)
  {
    v1 = strtof(v0, 0);
  }

  else
  {
    v1 = 0.2;
  }

  GT_TELEMETRY_ENV = LODWORD(v1);
}

void GTTelemetry_init()
{
  if (GTTelemetry_init::onceToken != -1)
  {
    dispatch_once(&GTTelemetry_init::onceToken, &__block_literal_global_14853);
  }
}

void GTTelemetry_addLayer(void *a1)
{
  v1 = [a1 streamReference];

  GTTelemetry_addStreamRef(v1);
}

void GTTelemetry_addStreamRef(uint64_t a1)
{
  v2 = telemetry;
  std::mutex::lock((telemetry + 8));
  v3 = telemetry;
  v5 = *(telemetry + 208);
  v4 = *(telemetry + 216);
  if (v5 >= v4)
  {
    v7 = *(telemetry + 200);
    v8 = v5 - v7;
    v9 = 0xF0B7672A07A44C6BLL * ((v5 - v7) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x7A44C6AFC2DD9CLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xF0B7672A07A44C6BLL * ((v4 - v7) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3D226357E16ECELL)
    {
      v12 = 0x7A44C6AFC2DD9CLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x7A44C6AFC2DD9CLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 536 * v9;
    *v13 = a1;
    v6 = 536 * v9 + 536;
    bzero((v13 + 8), 0x210uLL);
    memcpy((v13 - v8), v7, v8);
    v3[25] = v13 - v8;
    v3[26] = v6;
    v3[27] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a1;
    v6 = (v5 + 536);
    bzero(v5 + 8, 0x210uLL);
  }

  v3[26] = v6;

  std::mutex::unlock((v2 + 8));
}

void GTTelemetry_addDevice(void *a1)
{
  v14 = a1;
  v1 = [v14 streamReference];
  v2 = telemetry;
  std::mutex::lock((telemetry + 136));
  v3 = telemetry;
  v5 = *(telemetry + 256);
  v4 = *(telemetry + 264);
  if (v5 >= v4)
  {
    v7 = *(telemetry + 248);
    v8 = v5 - v7;
    v9 = 0xF83E0F83E0F83E1 * ((v5 - v7) >> 4);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x7C1F07C1F07C1FLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xF83E0F83E0F83E1 * ((v4 - v7) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3E0F83E0F83E0FLL)
    {
      v12 = 0x7C1F07C1F07C1FLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x7C1F07C1F07C1FLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 528 * v9;
    *v13 = v1;
    v6 = 528 * v9 + 528;
    bzero((v13 + 8), 0x208uLL);
    memcpy((v13 - v8), v7, v8);
    v3[31] = v13 - v8;
    v3[32] = v6;
    v3[33] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v1;
    v6 = (v5 + 528);
    bzero(v5 + 8, 0x208uLL);
  }

  v3[32] = v6;
  std::mutex::unlock((v2 + 136));
}

void GTTelemetry_addCommandQueue(void *a1)
{
  bzero(&v4, 0x208uLL);
  v3 = [a1 streamReference];
  v2 = telemetry;
  std::mutex::lock((telemetry + 72));
  std::vector<GTTelemetryQueue>::push_back[abi:nn200100](telemetry + 224, &v3);

  std::mutex::unlock((v2 + 72));
}

void std::vector<GTTelemetryQueue>::push_back[abi:nn200100](uint64_t a1, void *__src)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = 0xF83E0F83E0F83E1 * (v7 >> 4) + 1;
    if (v8 > 0x7C1F07C1F07C1FLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xF83E0F83E0F83E1 * ((v3 - v6) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3E0F83E0F83E0FLL)
    {
      v10 = 0x7C1F07C1F07C1FLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x7C1F07C1F07C1FLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (16 * (v7 >> 4));
    memcpy(v11, __src, 0x210uLL);
    v5 = v11 + 528;
    memcpy(&v11[-v7], v6, v7);
    *a1 = &v11[-v7];
    *(a1 + 8) = v11 + 528;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    memcpy(*(a1 + 8), __src, 0x210uLL);
    v5 = (v4 + 528);
  }

  *(a1 + 8) = v5;
}

void GTTelemetry_removeLayer(void *a1)
{
  v1 = [a1 streamReference];

  GTTelemetry_removeStreamRef(v1);
}

void GTTelemetry_removeStreamRef(uint64_t a1)
{
  v2 = telemetry;
  std::mutex::lock((telemetry + 8));
  v3 = telemetry;
  v4 = *(telemetry + 200);
  v5 = *(telemetry + 208);
  if (v5 != v4)
  {
    v6 = 0xF0B7672A07A44C6BLL * (v5 - v4);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (*v4 != a1)
    {
      v4 += 67;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    memcpy(v4, v5 - 67, 0x218uLL);
    *(v3 + 208) -= 536;
  }

LABEL_8:

  std::mutex::unlock((v2 + 8));
}

void GTTelemetry_removeCommandQueue(void *a1)
{
  v1 = [a1 streamReference];
  v2 = telemetry;
  std::mutex::lock((telemetry + 72));
  v3 = telemetry;
  v4 = *(telemetry + 224);
  v5 = *(telemetry + 232);
  if (v5 != v4)
  {
    v6 = 0xF83E0F83E0F83E1 * ((v5 - v4) >> 4);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (*v4 != v1)
    {
      v4 += 66;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    memcpy(v4, v5 - 528, 0x210uLL);
    *(v3 + 232) -= 528;
  }

LABEL_8:

  std::mutex::unlock((v2 + 72));
}

void GTTelemetry_addMTL4CommandQueue(void *a1)
{
  bzero(&v4, 0x208uLL);
  v3 = [a1 streamReference];
  v2 = telemetry;
  std::mutex::lock((telemetry + 72));
  std::vector<GTTelemetryQueue>::push_back[abi:nn200100](telemetry + 224, &v3);

  std::mutex::unlock((v2 + 72));
}

void GTTelemetry_removeMTL4CommandQueue(void *a1)
{
  v1 = [a1 streamReference];
  v2 = telemetry;
  std::mutex::lock((telemetry + 72));
  v3 = telemetry;
  v4 = *(telemetry + 224);
  v5 = *(telemetry + 232);
  if (v5 != v4)
  {
    v6 = 0xF83E0F83E0F83E1 * ((v5 - v4) >> 4);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (*v4 != v1)
    {
      v4 += 66;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    memcpy(v4, v5 - 528, 0x210uLL);
    *(v3 + 232) -= 528;
  }

LABEL_8:

  std::mutex::unlock((v2 + 72));
}

void GTTelemetry_trackMTL4Commit(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 device];
  v6 = [v5 streamReference];

  v7 = [v4 streamReference];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __GTTelemetry_trackMTL4Commit_block_invoke;
  v8[3] = &__block_descriptor_48_e30_v16__0___MTL4CommitFeedback__8l;
  v8[4] = v6;
  v8[5] = v7;
  [v3 addFeedbackHandler:v8];
}

uint64_t CHistoryRecord::Add(uint64_t this, unsigned int a2, float a3)
{
  v3 = 0;
  v4 = a2 % 0x78;
  v5 = 999.99;
  v6 = 0.0;
  if (a3 > 999.99 || a3 < 0.0)
  {
    a3 = 0.0;
  }

  *this = v4;
  v8 = this + 4 * v4;
  v9 = *(this + 8) + (a3 - *(v8 + 16));
  *(this + 4) = a3;
  *(this + 8) = v9;
  *(v8 + 16) = a3;
  *(this + 12) = v9 / 120.0;
  for (i = 16; i != 496; i += 4)
  {
    v11 = *(this + i);
    v12 = fminf(v5, v11);
    v13 = fmaxf(v6, v11);
    if (v11 > 0.0)
    {
      v6 = v13;
      ++v3;
      v5 = v12;
    }
  }

  v14 = 0.0;
  if (v3)
  {
    v14 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  *(this + 500) = v6;
  *(this + 496) = v14;
  return this;
}

void GTTelemetry_trackPresent(void *a1)
{
  v1 = a1;
  v2 = [v1 layer];
  v3 = [v2 streamReference];

  if (objc_opt_respondsToSelector())
  {
    v4 = DEVICEOBJECT(v1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __GTTelemetry_trackPresent_block_invoke;
    v5[3] = &__block_descriptor_40_e23_v16__0___MTLDrawable__8l;
    v5[4] = v3;
    [v4 addPresentedHandler:v5];
  }
}

void GTTelemetry_trackStreamRefPresent(uint64_t a1, CFTimeInterval a2)
{
  v4 = telemetry;
  std::mutex::lock((telemetry + 8));
  for (i = *(telemetry + 200); i != *(telemetry + 208); i += 536)
  {
    if (*i == a1)
    {
      v6 = *(i + 8);
      *(i + 8) = v6 + 1;
      if (a2 <= 0.0)
      {
        a2 = CACurrentMediaTime();
      }

      v7 = (a2 - *(i + 24)) * 1000.0;
      CHistoryRecord::Add(i + 32, v6, v7);
      *(i + 24) = a2;
      break;
    }
  }

  std::mutex::unlock((v4 + 8));
}

void GTTelemetry_trackCommit(void *a1)
{
  v1 = a1;
  v2 = [v1 device];
  v3 = [v2 streamReference];

  v4 = [v1 commandQueue];
  v5 = [v4 streamReference];

  v6 = DEVICEOBJECT(v1);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __GTTelemetry_trackCommit_block_invoke;
  v7[3] = &__block_descriptor_48_e28_v16__0___MTLCommandBuffer__8l;
  v7[4] = v3;
  v7[5] = v5;
  [v6 addCompletedHandler:v7];
}

void GTTelemetry_stats(char *a1@<X8>)
{
  bzero(a1, 0x4880uLL);
  v2 = telemetry;
  std::mutex::lock((telemetry + 8));
  v3 = *(telemetry + 200);
  v4 = *(telemetry + 208);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = 0xF0B7672A07A44C6BLL * (v5 >> 3);
    if (v7 >= 0x40)
    {
      LODWORD(v7) = 64;
    }

    if (v7 <= 1)
    {
      LODWORD(v7) = 1;
    }

    v8 = 32 * v7;
    do
    {
      v9 = &a1[v6];
      v10 = *(v3 + 8);
      *v9 = *v3;
      *(v9 + 3) = v10;
      *(v9 + 5) = v10 - *(v3 + 16);
      *(v9 + 2) = *(v3 + 44);
      *(v9 + 12) = *(v3 + 528);
      *(v3 + 16) = v10;
      v6 += 32;
      v3 += 536;
    }

    while (v8 != v6);
  }

  std::mutex::unlock((v2 + 8));
  v11 = telemetry;
  std::mutex::lock((telemetry + 72));
  v12 = *(telemetry + 224);
  v13 = *(telemetry + 232);
  v14 = v13 - v12;
  if (v13 != v12)
  {
    v15 = 0;
    v16 = 0xF83E0F83E0F83E1 * (v14 >> 4);
    if (v16 >= 0x200)
    {
      LODWORD(v16) = 512;
    }

    if (v16 <= 1)
    {
      LODWORD(v16) = 1;
    }

    v17 = 32 * v16;
    do
    {
      v18 = &a1[v15];
      v19 = *(v12 + 8);
      *(v18 + 256) = *v12;
      *(v18 + 259) = v19;
      *(v18 + 517) = v19 - *(v12 + 16);
      *(v18 + 514) = *(v12 + 36);
      *&a1[v15 + 2060] = *(v12 + 520);
      *(v12 + 16) = v19;
      v15 += 32;
      v12 += 528;
    }

    while (v17 != v15);
  }

  std::mutex::unlock((v11 + 72));
  v20 = telemetry;
  std::mutex::lock((telemetry + 136));
  v21 = *(telemetry + 248);
  v22 = *(telemetry + 256);
  v23 = v22 - v21;
  if (v22 != v21)
  {
    v24 = 0;
    v25 = 0xF83E0F83E0F83E1 * (v23 >> 4);
    if (v25 >= 4)
    {
      LODWORD(v25) = 4;
    }

    if (v25 <= 1)
    {
      LODWORD(v25) = 1;
    }

    v26 = 32 * v25;
    do
    {
      v27 = &a1[v24];
      v28 = *(v21 + 8);
      *(v27 + 2304) = *v21;
      *(v27 + 2307) = v28;
      *&a1[v24 + 18452] = v28 - *(v21 + 16);
      *&a1[v24 + 18440] = *(v21 + 36);
      *&a1[v24 + 18444] = *(v21 + 520);
      *(v21 + 16) = v28;
      v24 += 32;
      v21 += 528;
    }

    while (v26 != v24);
  }

  std::mutex::unlock((v20 + 136));
  ++*telemetry;
}

__n128 GTMTLGetTextureLevelInfoForDeviceWithOptions@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v7 = a1 + 11;
  if ((a1 - 501) <= 0x3E)
  {
    if (((1 << v7) & 0x2000000000100001) != 0)
    {
      *a3 = 0u;
      result.n128_u64[0] = 0;
      *(a3 + 48) = 0u;
      v8 = 2 * a2;
      goto LABEL_7;
    }

    if (((1 << v7) & 0x4000000000800008) != 0)
    {
      goto LABEL_5;
    }
  }

  if (a1 == 590)
  {
LABEL_5:
    *a3 = 0u;
    result.n128_u64[0] = 0;
    *(a3 + 48) = 0u;
    v8 = 4 * a2;
LABEL_7:
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = v8;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    return result;
  }

  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  return result;
}

uint64_t GTMTLPixelFormatGetInfoForDevice@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  result = MTLPixelFormatGetInfoForDevice();
  v5 = *(a2 + 8);
  if (v5)
  {
    if (a1 > 500)
    {
      v6 = a1 + 11;
      if ((a1 - 501) > 0x3E)
      {
        goto LABEL_6;
      }

      if (((1 << v6) & 0x2000000000100001) != 0)
      {
        v7 = 2;
        goto LABEL_9;
      }

      if (((1 << v6) & 0x4000000000800008) == 0)
      {
LABEL_6:
        if (a1 != 590)
        {
          return result;
        }
      }

      v7 = 4;
LABEL_9:
      *(a2 + 24) = v7;
      return result;
    }

    if (a1 == 141 || a1 == 143)
    {
      *(a2 + 8) = v5 & 0xFFFFF7FF;
    }
  }

  return result;
}

char *GTNameSimilarityScore(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if (v5 <= [v4 length])
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = [v6 length];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [v3 characterAtIndex:v9];
      if (v10 != [v4 characterAtIndex:v9])
      {
        break;
      }

      if (v8 == ++v9)
      {
        v9 = v8;
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id MTLDevice_newHeap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = objc_opt_new();
  [v11 setSize:a2];
  [v11 setResourceOptions:a3];
  [v11 setType:a4];
  v12 = [v10 newHeapWithDescriptor:v11];

  if (v9)
  {
    [v12 setLabel:v9];
  }

  return v12;
}

id MTLDevice_create()
{
  v0 = MTLCreateSystemDefaultDevice();

  return v0;
}

id MTLDevice_newBuffer(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = objc_opt_new();
  [v9 setLength:a2];
  [v9 setResourceOptions:a3];
  v10 = [v8 newBufferWithDescriptor:v9];

  if (v10)
  {
    [v10 setLabel:v7];
  }

  return v10;
}

id MTLDevice_newTexture(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = a1;
  v13 = objc_opt_new();
  [v13 setTextureType:a2];
  [v13 setPixelFormat:a3];
  [v13 setWidth:*a4];
  [v13 setHeight:a4[1]];
  [v13 setDepth:a4[2]];
  [v13 setResourceOptions:a5];
  v14 = [v12 newTextureWithDescriptor:v13];

  [v14 setLabel:v11];

  return v14;
}

id MTLHeap_backbuffer(void *a1)
{
  v1 = a1;
  v2 = [v1 currentAllocatedSize];
  v3 = [v1 resourceOptions];
  if ([v1 type])
  {
    if ([v1 type] == &dword_0 + 1)
    {
      v4 = [v1 newBufferWithLength:v2 options:v3 offset:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [v1 newBufferWithLength:v2 options:v3];
    [v4 makeAliasable];
  }

  [NSString stringWithFormat:@"com.apple.gputools.MTLHeapBackBuffer_0x%llx", v1];

  return v4;
}

id MTLHeap_newBuffer(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  if ([v7 type] == &dword_0 + 2)
  {
    goto LABEL_5;
  }

  if ([v7 type])
  {
    if ([v7 type] == &dword_0 + 1)
    {
      v9 = [v7 newBufferWithLength:a2 options:objc_msgSend(v7 offset:{"resourceOptions"), a3}];
      goto LABEL_7;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [v7 newBufferWithLength:a2 options:{objc_msgSend(v7, "resourceOptions")}];
LABEL_7:
  v10 = v9;
  if (v9)
  {
    [v9 setLabel:v8];
  }

LABEL_9:

  return v10;
}

id MTLHeap_newTexture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = a7;
  v15 = objc_opt_new();
  [v15 setTextureType:a2];
  [v15 setPixelFormat:a3];
  [v15 setWidth:*a5];
  [v15 setHeight:a5[1]];
  [v15 setDepth:a5[2]];
  [v15 setUsage:a4];
  [v15 setResourceOptions:{objc_msgSend(v13, "resourceOptions")}];
  if ([v13 type] == &dword_0 + 2)
  {
    goto LABEL_5;
  }

  if ([v13 type])
  {
    if ([v13 type] == &dword_0 + 1)
    {
      v16 = [v13 newTextureWithDescriptor:v15 offset:a6];
      goto LABEL_7;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = [v13 newTextureWithDescriptor:v15];
LABEL_7:
  v17 = v16;
  if (v16)
  {
    [v16 setLabel:v14];
  }

LABEL_9:

  return v17;
}

id MTLTexture_descriptor(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  [v2 setTextureType:{objc_msgSend(v1, "textureType")}];
  [v2 setPixelFormat:objc_msgSend(v1, "pixelFormat")];
  [v2 setWidth:{objc_msgSend(v1, "width")}];
  [v2 setHeight:{objc_msgSend(v1, "height")}];
  [v2 setDepth:{objc_msgSend(v1, "depth")}];
  [v2 setUsage:{objc_msgSend(v1, "usage")}];
  [v2 setResourceOptions:{objc_msgSend(v1, "resourceOptions")}];
  [v2 setMipmapLevelCount:{objc_msgSend(v1, "mipmapLevelCount")}];
  [v2 setSampleCount:{objc_msgSend(v1, "sampleCount")}];
  [v2 setArrayLength:{objc_msgSend(v1, "arrayLength")}];
  [v2 setFramebufferOnly:{objc_msgSend(v1, "isFramebufferOnly")}];
  [v2 setAllowGPUOptimizedContents:{objc_msgSend(v1, "allowGPUOptimizedContents")}];
  v3 = [v1 compressionType];

  [v2 setCompressionType:v3];

  return v2;
}

id DEVICEOBJECT(id a1)
{
  v2 = objc_autoreleasePoolPush();
  while ((objc_opt_respondsToSelector() & 1) != 0)
  {
    a1 = [a1 performSelector:"baseObject"];
  }

  objc_autoreleasePoolPop(v2);

  return a1;
}

uint64_t DisableMTLDebugErrors()
{
  ErrorModeType = MTLFailureTypeGetErrorModeType();
  MTLFailureTypeSetErrorModeType();
  return ErrorModeType;
}

void MakeGTMTLTensorExtents(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 8) = 0u;
  v4 = a2 + 8;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v9 = v3;
  v5 = [v3 rank];
  *a2 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (v5 - 1);
    if ((v5 - 1) >= 0xF)
    {
      v7 = 15;
    }

    v8 = 8 * v7 + 8;
    do
    {
      *(v4 + v6) = *([v9 extents] + v6);
      v6 += 8;
    }

    while (v8 != v6);
  }
}

id MakeMTLTensorExtents(void *a1)
{
  v1 = 0;
  memset(v5, 0, sizeof(v5));
  v2 = *a1;
  do
  {
    if (v2 == v1)
    {
      break;
    }

    *(v5 + v1) = a1[v1 + 1];
    ++v1;
  }

  while (v1 != 16);
  v3 = [[MTLTensorExtents alloc] initWithRank:*a1 extents:v5];

  return v3;
}

uint64_t MTLTensorExtents_bytesLength(void *a1, void *a2, unsigned __int8 a3)
{
  v5 = a2;
  MakeGTMTLTensorExtents(a1, v9);
  MakeGTMTLTensorExtents(v5, v8);

  v6 = v8[v8[0]] * v9[v9[0]];
  return v6 * GTMTLTensorDataType_bytesLength(a3);
}

uint64_t MTLTensor_bytesLength(void *a1)
{
  memset(v16, 0, 136);
  v1 = a1;
  v2 = [v1 dimensions];
  MakeGTMTLTensorExtents(v2, v16);

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v3 = v16[0];
  v12 = v16[0];
  v13 = 1;
  if (v16[0] >= 2uLL)
  {
    v4 = &v16[1];
    v5 = v16[0] - 1;
    v6 = v14;
    v7 = 1;
    do
    {
      v8 = *v4++;
      v7 *= v8;
      *v6++ = v7;
      --v5;
    }

    while (v5);
    v3 = v12;
  }

  v9 = [v1 dataType];

  v10 = *(&v13 + v3 - 1) * v16[v16[0]];
  return v10 * GTMTLTensorDataType_bytesLength(v9);
}

id MTLTensorExtents_computeStrides(void *a1)
{
  MakeGTMTLTensorExtents(a1, &v8);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10[0] = v8;
  v10[1] = 1;
  if (v8 >= 2)
  {
    v1 = &v9;
    v2 = v8 - 1;
    v3 = v11;
    v4 = 1;
    do
    {
      v5 = *v1++;
      v4 *= v5;
      *v3++ = v4;
      --v2;
    }

    while (v2);
  }

  v6 = MakeMTLTensorExtents(v10);

  return v6;
}

void GTMTLTensor_wholeSlice(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [MTLTensorExtents alloc];
  v7 = [v3 dimensions];
  v5 = [v4 initWithRank:objc_msgSend(v7 extents:{"rank"), &GTMTLTensor_wholeSlice_origin}];
  MakeGTMTLTensorExtents(v5, a2);
  v6 = [v3 dimensions];

  MakeGTMTLTensorExtents(v6, a2 + 136);
}

id GTMTLTensorSlice_origin(uint64_t a1)
{
  v1 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v1;
  v8 = *(a1 + 128);
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = MakeMTLTensorExtents(v7);

  return v5;
}

id GTMTLTensorSlice_dimensions(uint64_t a1)
{
  v1 = *(a1 + 216);
  v2 = *(a1 + 248);
  v7[6] = *(a1 + 232);
  v7[7] = v2;
  v8 = *(a1 + 264);
  v3 = *(a1 + 152);
  v4 = *(a1 + 184);
  v7[2] = *(a1 + 168);
  v7[3] = v4;
  v7[4] = *(a1 + 200);
  v7[5] = v1;
  v7[0] = *(a1 + 136);
  v7[1] = v3;
  v5 = MakeMTLTensorExtents(v7);

  return v5;
}

id MakeMTLLogicalToPhysicalColorAttachmentMap(uint64_t a1)
{
  v6 = a1;
  v1 = objc_opt_new();
  v2 = 0;
  while (1)
  {
    v3 = *(&v6 + v2);
    if (v3 == 255)
    {
      break;
    }

    [v1 setPhysicalIndex:v3 forLogicalIndex:{v2++, v6}];
    if (v2 == 8)
    {
      v4 = v1;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:

  return v4;
}

uint64_t MakeGTMTLLogicalToPhysicalColorAttachmentMap(void *a1)
{
  v2 = 0;
  v5 = 0;
  do
  {
    if (a1)
    {
      v3 = [a1 getPhysicalIndexForLogicalIndex:v2];
    }

    else
    {
      v3 = -1;
    }

    *(&v5 + v2++) = v3;
  }

  while (v2 != 8);
  return v5;
}

uint64_t GTLowerBound(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 12);
  if (v4 >= 1)
  {
    do
    {
      v8 = v4 >> 1;
      v9 = v3 + *(a1 + 8) * (v4 >> 1);
      if ((a3(v9, a2) & 0x80000000) != 0)
      {
        v3 = v9 + *(a1 + 8);
        v8 = v4 + ~v8;
      }

      v4 = v8;
    }

    while (v8 > 0);
  }

  return v3;
}

uint64_t GTBinarySearch(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 12);
  if (v3 < 1)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  while (1)
  {
    v8 = v3 >> 1;
    v9 = v7 + *(a1 + 8) * (v3 >> 1);
    v10 = a3(v9, a2);
    if (!v10)
    {
      break;
    }

    if (v10 < 0)
    {
      v7 = v9 + *(a1 + 8);
      v8 = v3 + ~v8;
    }

    v3 = v8;
    if (v8 <= 0)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t GTInsert(apr_array_header_t *a1, int a2)
{
  apr_array_push(a1);
  memmove(&a1->elts[a1->elt_size + a1->elt_size * a2], &a1->elts[a1->elt_size * a2], a1->elt_size * (a1->nelts + ~a2));
  return &a1->elts[a1->elt_size * a2];
}

int *GTUnstableRemove(int *result, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = result;
    v3 = result[3];
    if (v3 > a2)
    {
      result = memmove((*(result + 3) + result[2] * a2), (*(result + 3) + result[2] * (v3 - 1)), result[2]);
      v4 = v2[3];
      if (v4)
      {
        v2[3] = v4 - 1;
      }
    }
  }

  return result;
}

apr_array_header_t *GTSetIntersection(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *))
{
  v4 = *a1;
  if (a2 && (v5 = *(a1 + 12)) != 0 && (v7 = *(a2 + 12)) != 0 && (v8 = *(a1 + 8), v8 == *(a2 + 8)))
  {
    v10 = apr_array_make(v4, v7 + v5, *(a1 + 8));
    v11 = *(a1 + 12);
    if (v11 * v8)
    {
      v12 = *(a2 + 12);
      if (v12 * v8)
      {
        v13 = *(a1 + 24);
        v14 = &v13[v11 * v8];
        v15 = *(a2 + 24);
        v16 = &v15[v12 * v8];
        do
        {
          if ((a3(v13, v15) & 0x80000000) != 0)
          {
            v13 += v8;
          }

          else
          {
            if ((a3(v15, v13) & 0x80000000) == 0)
            {
              v17 = apr_array_push(v10);
              memcpy(v17, v13, v8);
              v13 += v8;
            }

            v15 += v8;
          }
        }

        while (v13 != v14 && v15 != v16);
      }
    }

    return v10;
  }

  else
  {
    v19 = *(a1 + 8);

    return apr_array_make(v4, 0, v19);
  }
}

vm_address_t GTCoreAlloc(uint64_t a1, memory_object_size_t a2)
{
  address = 0;
  object_handle = 0;
  size = a2;
  memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v4 = memory_entry_64;
    if (s_logUsingOsLog != 1)
    {
      v11 = __stderrp;
      mach_error_string(memory_entry_64);
      fprintf(v11, "warning: failed to create memory entry error 0x%x (%s)\n");
      return 0;
    }

    v5 = gt_tagged_log(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = mach_error_string(v4);
      *buf = 67109378;
      v21 = v4;
      v22 = 2080;
      v23 = v6;
      v7 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_9:
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
      return 0;
    }

    return 0;
  }

  v8 = vm_map(mach_task_self_, &address, a2, 0, 1, object_handle, 0, 0, 3, 3, 1u);
  if (v8)
  {
    v9 = v8;
    if (s_logUsingOsLog != 1)
    {
      v14 = __stderrp;
      mach_error_string(v8);
      fprintf(v14, "warning: failed to map memory error 0x%x (%s)\n");
      return 0;
    }

    v5 = gt_tagged_log(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v9);
      *buf = 67109378;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      v7 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_9;
    }

    return 0;
  }

  if (hideMemory == 1)
  {
    v12 = mach_memory_entry_ownership(object_handle, mach_task_self_, 4, 1);
    if (v12)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __GTCoreAlloc_block_invoke;
      block[3] = &__block_descriptor_tmp_14940;
      v16 = v12;
      if (GTCoreAlloc_onceToken != -1)
      {
        dispatch_once(&GTCoreAlloc_onceToken, block);
      }
    }
  }

  mach_port_deallocate(mach_task_self_, object_handle);
  return address;
}

void __GTCoreAlloc_block_invoke(uint64_t a1)
{
  if (s_logUsingOsLog == 1)
  {
    v2 = gt_tagged_log(3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 67109378;
      v8 = v3;
      v9 = 2080;
      v10 = mach_error_string(v3);
      _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "warning: failed to mark memory(GRAPHICS) error 0x%x (%s)", buf, 0x12u);
    }
  }

  else
  {
    v4 = __stderrp;
    v5 = *(a1 + 32);
    v6 = mach_error_string(v5);
    fprintf(v4, "warning: failed to mark memory(GRAPHICS) error 0x%x (%s)\n", v5, v6);
  }
}

vm_address_t *GTCoreFree(vm_address_t *result, vm_size_t size)
{
  if (result)
  {
    v2 = result;
    result = vm_deallocate(mach_task_self_, *result, size);
    *v2 = 0;
  }

  return result;
}

void *GTDataAppendBytes(void *result, const void *a2, size_t a3)
{
  v3 = result;
  v4 = result[1];
  v5 = v4 + a3;
  if (v4 + a3 <= result[2])
  {
    result = memcpy((*result + v4), a2, a3);
    v5 = v3[1] + a3;
  }

  v3[1] = v5;
  return result;
}

void GTDataIncreaseLength(void *a1, size_t a2)
{
  v2 = a2;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 > v4;
  v7 = v5 - v4;
  if (v6)
  {
    if (v7 < a2)
    {
      a2 = v7;
    }

    bzero((*a1 + v4), a2);
    v4 = a1[1];
  }

  a1[1] = v4 + v2;
}

float get32f(float **a1)
{
  result = **a1;
  *a1 += 2;
  return result;
}

const char *ReadDynamicBufferString(const char **a1)
{
  v1 = *a1;
  *a1 += (strlen(*a1) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*v1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ReadDynamicBufferData(uint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1 + 1);
  }

  else
  {
    v2 = 0;
  }

  *a1 = (*a1 + ((v1 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  return v2;
}

id PrettifyFenumString(void *a1, int a2, int a3)
{
  v5 = a1;
  if (v5)
  {
    v6 = v5;
    if ([v5 hasPrefix:@"kDYFE"])
    {
      v7 = [v6 substringFromIndex:5];

      v6 = v7;
    }

    v8 = [v6 rangeOfString:@"_"];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@" " options:0 range:{v8, v9}];

      v6 = v10;
    }

    v11 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@":"];

    v12 = @"-";
    if (a2)
    {
      v12 = @"+";
    }

    v13 = &stru_2F4BE0;
    if (a3)
    {
      v13 = @":";
    }

    v14 = [NSString stringWithFormat:@"%@[%@%@]", v12, v11, v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void GTError_initialize()
{
  if (GTError_initialize_onceToken != -1)
  {
    dispatch_once(&GTError_initialize_onceToken, &__block_literal_global_15038);
  }
}

BOOL GTError_addError(int *a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (!a1)
  {
    return v2 != 0;
  }

  if (!v2)
  {
    return 0;
  }

  if (GTError_initialize_onceToken != -1)
  {
    dispatch_once(&GTError_initialize_onceToken, &__block_literal_global_15038);
  }

  if (a1[1])
  {
    v5 = *a2 | *a1 | 2;
  }

  else
  {
    v7 = *a1;
    v9 = *(a2 + 16);
    v8 = *(a2 + 32);
    *a1 = *a2;
    *(a1 + 1) = v9;
    *(a1 + 2) = v8;
    v5 = *a1 | v7;
  }

  *a1 = v5;
  return 1;
}

char *GTError_description(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if (GTError_initialize_onceToken != -1)
    {
      dispatch_once(&GTError_initialize_onceToken, &__block_literal_global_15038);
    }

    v2 = 0;
    v3 = "";
    v4 = "Assertion failed: ";
    while (1)
    {
      if (!v1)
      {
        return v3;
      }

      v5 = *(v1 + 4);
      if (v5 > 501)
      {
        if (v5 == 502)
        {
          v13 = s_errorPool;
          if ((*v1 & 2) != 0)
          {
            v22 = apr_itoa(s_errorPool, v2);
            v23 = *(v1 + 8);
            if (!v23)
            {
              v23 = "(none)";
            }

            if (*(v1 + 40))
            {
              v24 = "\n";
            }

            else
            {
              v24 = 0;
            }

            v8 = apr_pstrcat(v13, v3, "Error #", v22, " Archive data:\n\tFilename: ", v23, "\n\tReason: ", *(v1 + 16), " is false", v24, 0, v34, v35, v36);
          }

          else
          {
            v14 = *(v1 + 8);
            if (!v14)
            {
              v14 = "(none)";
            }

            v8 = apr_pstrcat(s_errorPool, v3, "Archive data error: \n", "\tFilename: ", v14, "\n", "\tReason: ", *(v1 + 16), " is false", 0, v33, v34, v35, v36);
          }

          goto LABEL_35;
        }

        if (v5 == 503)
        {
          v9 = s_errorPool;
          if ((*v1 & 2) != 0)
          {
            v37 = apr_itoa(s_errorPool, v2);
            v18 = v4;
            v19 = apr_ltoa(s_errorPool, *(v1 + 8));
            v20 = apr_ltoa(s_errorPool, *(v1 + 16));
            if (*(v1 + 40))
            {
              v21 = "\n";
            }

            else
            {
              v21 = 0;
            }

            v28 = v19;
            v4 = v18;
            v8 = apr_pstrcat(v9, v3, "Error #", v37, " GetStream:\n\tDevice object: ", v28, "\n\tFunc index: ", v20, "\n", "\tReason: ", *(v1 + 24), " is false", v21, 0);
          }

          else
          {
            v10 = apr_ltoa(s_errorPool, *(v1 + 8));
            v11 = apr_ltoa(s_errorPool, *(v1 + 16));
            v8 = apr_pstrcat(v9, v3, "GetStream failed: \n", "\tDevice object: ", v10, "\n", "\tFunc index: ", v11, "\n", "\tReason: ", *(v1 + 24), " is false", 0, v36);
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v5 == 500)
        {
          v8 = apr_pstrcat(s_errorPool, v3, v4, *(v1 + 8), 0, v27, v29, v30, v31, v32, v33, v34, v35, v36);
          goto LABEL_35;
        }

        if (v5 == 501)
        {
          v6 = s_errorPool;
          if ((*v1 & 2) != 0)
          {
            v15 = apr_itoa(s_errorPool, v2);
            v16 = apr_itoa(s_errorPool, *(v1 + 8));
            if (*(v1 + 40))
            {
              v17 = "\n";
            }

            else
            {
              v17 = 0;
            }

            v8 = apr_pstrcat(v6, v3, "Error #", v15, " DYDecode:\n\tFunc index: ", v16, "\n\tFenum: ", *(v1 + 16), "\n\tReason: ", *(v1 + 24), " is false", v17, 0, v36);
          }

          else
          {
            v7 = apr_ltoa(s_errorPool, *(v1 + 8));
            v8 = apr_pstrcat(v6, v3, "DYDecode failed: \n", "\tFunc index: ", v7, "\n", "\tFenum: ", *(v1 + 16), "\n", "\tReason: ", *(v1 + 24), " is false", 0, v36);
          }

          goto LABEL_35;
        }
      }

      v12 = s_errorPool;
      v26 = apr_itoa(s_errorPool, v5);
      v8 = apr_pstrcat(v12, v3, "Code: ", v26, 0, v27, v29, v30, v31, v32, v33, v34, v35, v36);
LABEL_35:
      v3 = v8;
      ++v2;
      v1 = *(v1 + 40);
      if (v2 == 50)
      {
        return apr_pstrcat(s_errorPool, v8, "and more...\n", 0);
      }
    }
  }

  return "";
}

_DWORD *GTError_flags(_DWORD *result)
{
  if (result)
  {
    return (*result & 0xFFFFFFFD);
  }

  return result;
}

_OWORD *GTError_copy(__int128 *a1, apr_pool_t *p)
{
  v2 = 0;
  if (a1 && p)
  {
    v5 = apr_palloc(p, 0x30uLL);
    v2 = v5;
    if (v5)
    {
      v5[1] = 0u;
      v5[2] = 0u;
      *v5 = 0u;
    }

    v6 = *a1;
    v7 = a1[2];
    v5[1] = a1[1];
    v5[2] = v7;
    *v5 = v6;
    v8 = *(a1 + 5);
    if (v8)
    {
      v9 = v5;
      do
      {
        v10 = apr_palloc(p, 0x30uLL);
        if (v10)
        {
          v10[1] = 0u;
          v10[2] = 0u;
          *v10 = 0u;
        }

        *(v9 + 5) = v10;
        v11 = *v8;
        v12 = v8[2];
        v10[1] = v8[1];
        v10[2] = v12;
        *v10 = v11;
        v8 = *(v8 + 5);
        v9 = v10;
      }

      while (v8);
    }
  }

  return v2;
}

double GTError_single@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v3;
    *(a2 + 32) = *(a1 + 4);
    *(a2 + 40) = 0;
    *a2 &= ~2u;
  }

  else
  {
    *&v2 = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return *&v2;
}

char *GTError_string(char *s)
{
  if (GTError_initialize_onceToken != -1)
  {
    dispatch_once(&GTError_initialize_onceToken, &__block_literal_global_15038);
  }

  v2 = s_errorPool;

  return apr_pstrdup(v2, s);
}

uint64_t gt_error_assert_add_error(int *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  if (a1 && (a2 & 1) == 0)
  {
    v9[0] = *a1;
    v9[1] = a7;
    v10 = a3;
    v11 = a6;
    v12 = a4;
    v13 = a5;
    v14 = 0;
    GTError_addError(a1, v9);
  }

  return a2 ^ 1u;
}

char *GTFilePath_append(uint64_t a1, uint64_t a2)
{
  result = apr_pstrcat(*(a1 + 8), *a1, "/", a2, 0);
  *a1 = result;
  return result;
}

BOOL GTFile_append(int a1, dispatch_data_t data)
{
  v5 = 0;
  if (data && a1 != -1)
  {
    v9 = v2;
    v10 = v3;
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = __GTFile_append_block_invoke;
    applier[3] = &__block_descriptor_36_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l;
    v8 = a1;
    return dispatch_data_apply(data, applier);
  }

  return v5;
}

BOOL GTFile_write(int a1, uint64_t a2, dispatch_data_t data)
{
  v5 = 0;
  if (data && a1 != -1)
  {
    v9 = v3;
    v10 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __GTFile_write_block_invoke;
    v7[3] = &__block_descriptor_44_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l;
    v8 = a1;
    v7[4] = a2;
    return dispatch_data_apply(data, v7);
  }

  return v5;
}

uint64_t GTFile_map(int a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x80000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = (a3 - v6) >= 0x100000 ? 0x100000 : a3 - v6;
      v8 = read(a1, (a2 + v6), v7);
      if ((v8 + 1) < 2)
      {
        break;
      }

      v6 += v8;
      if (v6 == a3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t GTFile_close(_DWORD *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *a1 = -1;
  }

  return result;
}

uint64_t GTFile_printf(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0xFFFFFFFFLL;
  if (a2 && (a1 & 0x80000000) == 0)
  {
    return vdprintf(a1, a2, &a9);
  }

  return v9;
}

id GTFileSystem_move(uint64_t a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  v5 = [NSString stringWithUTF8String:a1];
  v6 = [NSString stringWithUTF8String:a2];
  v17 = 0;
  v7 = [v4 moveItemAtPath:v5 toPath:v6 error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = &dword_0 + 1;
  }

  else
  {

    v10 = +[NSFileManager defaultManager];
    v11 = [NSString stringWithUTF8String:a2];
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [NSString stringWithUTF8String:a1];
    v14 = [NSURL fileURLWithPath:v13];
    v16 = 0;
    v9 = [v10 replaceItemAtURL:v12 withItemAtURL:v14 backupItemName:0 options:0 resultingItemURL:0 error:&v16];
    v8 = v16;
  }

  return v9;
}

id GTFileSystem_unlink(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [NSString stringWithUTF8String:a1];
  v6 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v6];

  return v4;
}

id GTFileSystem_symlink(uint64_t a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [NSString stringWithUTF8String:a1];
  v9 = 0;
  v7 = [v4 createSymbolicLinkAtPath:v5 withDestinationPath:v6 error:&v9];

  return v7;
}

id GTFileSystem_copy(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithUTF8String:a2];
  v4 = [NSURL fileURLWithPath:v3];

  v5 = +[NSFileManager defaultManager];
  v6 = [v4 URLByDeletingLastPathComponent];
  v16 = 0;
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [NSString stringWithUTF8String:a1];
    v11 = [NSURL fileURLWithPath:v10];
    v15 = v8;
    v12 = [v9 copyItemAtURL:v11 toURL:v4 error:&v15];
    v13 = v15;

    v8 = v13;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL GTFileSystem_write(const char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = open(a1, 1537, 420);
    if (v6 == -1)
    {
      v5 = 0;
    }

    else
    {
      v7 = v6;
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = __GTFileSystem_write_block_invoke;
      applier[3] = &__block_descriptor_36_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l;
      v10 = v6;
      v5 = dispatch_data_apply(v4, applier);
      close(v7);
    }
  }

  return v5;
}

id GTFileSystem_mkdir(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [NSString stringWithUTF8String:a1];
  v6 = 0;
  v4 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v6];

  return v4;
}

id GTFileSystem_fileExists(uint64_t a1, _BYTE *a2)
{
  v8 = 0;
  v4 = +[NSFileManager defaultManager];
  v5 = [NSString stringWithUTF8String:a1];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v8];

  if (a2)
  {
    *a2 = v8;
  }

  return v6;
}

id GTFileSystem_delete(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [NSString stringWithUTF8String:a1];
  v4 = [v2 removeItemAtPath:v3 error:0];

  return v4;
}

char *gt_filepath_merge(const char *a1, const char *a2, apr_pool_t *a3)
{
  v6 = strlen(a1);
  v7 = strlen(a2);
  v8 = v7;
  if (v6)
  {
    v6 -= a1[v6 - 1] == 47;
  }

  v9 = apr_palloc(a3, v7 + v6 + 2);
  memcpy(v9, a1, v6);
  v9[v6] = 47;
  memcpy(&v9[v6 + 1], a2, v8);
  v9[v8 + 1 + v6] = 0;
  return v9;
}

ssize_t gt_read_full(int a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  do
  {
    if ((a3 - v6) >= 0x100000)
    {
      v7 = 0x100000;
    }

    else
    {
      v7 = a3 - v6;
    }

    result = read(a1, (a2 + v6), v7);
    if (result == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = result;
    }

    v6 += v9;
  }

  while (result != -1 && v6 != a3);
  return result;
}

ssize_t gt_write_full(int __fd, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  do
  {
    if ((a3 - v6) >= 0x100000)
    {
      v7 = 0x100000;
    }

    else
    {
      v7 = a3 - v6;
    }

    result = write(__fd, (a2 + v6), v7);
    if (result == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = result;
    }

    v6 += v9;
  }

  while (result != -1 && v6 != a3);
  return result;
}

uint64_t gt_file_copy(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v5 = open(v2, 0);
  v6 = creat(v4, 0x1B0u);
  v7 = lseek(v5, 0, 2);
  lseek(v5, 0, 0);
  if (v7)
  {
    for (i = 0; i < v7; i += v10)
    {
      if (v7 - i >= 0x2000)
      {
        v9 = 0x2000;
      }

      else
      {
        v9 = v7 - i;
      }

      v10 = read(v5, v17, v9);
      v11 = 0;
      do
      {
        if ((v10 - v11) >= 0x100000)
        {
          v12 = 0x100000;
        }

        else
        {
          v12 = v10 - v11;
        }

        v13 = write(v6, &v17[v11], v12);
        if (v13 == -1)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        v11 += v14;
      }

      while (v13 != -1 && v11 != v10);
    }
  }

  close(v5);
  return close(v6);
}

id gt_tagged_log(uint64_t a1)
{
  if (a1 != 18)
  {
    v3 = a1;
    if (a1 < 0x11)
    {
      LogForTag = GTCoreLog_getLogForTag(a1);
      if (GTCoreLog_enabled(LogForTag))
      {
        v5 = LogForTag[2];
      }

      else
      {
        v5 = &_os_log_disabled;
      }

      v1 = v5;
      goto LABEL_12;
    }

    if (s_logUsingOsLog == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v10 = v3;
        _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "fail: Invalid log tag: %u", buf, 8u);
      }
    }

    else
    {
      v6 = __stderrp;
      v7 = [NSString stringWithFormat:@"fail: Invalid log tag: %u", a1];
      fprintf(v6, "%s\n", [v7 UTF8String]);
    }
  }

  v1 = &_os_log_default;
  v2 = &_os_log_default;
LABEL_12:

  return v1;
}

void *GTCoreLog_getLogForTag(unsigned int a1)
{
  v1 = (&GTCoreLog_getLogForTag_s_logs + 24 * a1);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __GTCoreLog_getLogForTag_block_invoke;
  v3[3] = &__block_descriptor_44_e5_v8__0l;
  v4 = a1;
  v3[4] = v1;
  if (*v1 != -1)
  {
    dispatch_once(&GTCoreLog_getLogForTag_s_logs + 3 * a1, v3);
  }

  return v1;
}

uint64_t GTCoreLog_enabled(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:*(a1 + 8)];

  return v3;
}

void GTCoreLogInit()
{
  if (GTCoreLogInit_once != -1)
  {
    dispatch_once(&GTCoreLogInit_once, &__block_literal_global_15105);
  }
}

uint64_t GTCoreLogTagEnabled(unsigned int a1)
{
  if (a1 == 18)
  {
    return 1;
  }

  if (a1 > 0x10)
  {
    return 0;
  }

  LogForTag = GTCoreLog_getLogForTag(a1);

  return GTCoreLog_enabled(LogForTag);
}

double GTCorePlatformInfoGet@<D0>(_OWORD *a1@<X8>)
{
  if (GTCorePlatformInfoGet_onceToken != -1)
  {
    dispatch_once(&GTCorePlatformInfoGet_onceToken, &__block_literal_global_15118);
  }

  result = *&GTCorePlatformInfoGet_info;
  v3 = *&qword_31F648;
  *a1 = GTCorePlatformInfoGet_info;
  a1[1] = v3;
  return result;
}

BOOL GTCorePlatform_isTranslated()
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("sysctl.proc_translated", &v3, &v2, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = v3 == 0;
  }

  return !v0;
}

id GTCorePlatform_isCatalyst()
{
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 isMacCatalystApp];

  return v1;
}

id GTCorePlatform_isAlmond()
{
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 isiOSAppOnMac];

  return v1;
}

void *gt_snprintf(apr_pool_t *a1, char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(__str, 0x40uLL, __format, va);
  v5 = (v4 + 1);
  v6 = apr_palloc(a1, v5);
  v7 = v6;
  if (v4 < 0x40)
  {
    memcpy(v6, __str, v5);
  }

  else
  {
    vsnprintf(v6, v5, __format, va);
  }

  return v7;
}

BOOL GTString_endsWith(char *__s, const char *a2)
{
  result = 0;
  if (__s && a2)
  {
    v5 = strlen(__s);
    v6 = strlen(a2);
    return v6 <= v5 && strcmp(&__s[v5 - v6], a2) == 0;
  }

  return result;
}

unint64_t GTHash_data(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x20)
  {
    v11 = 0x27D4EB2F165667C5;
  }

  else
  {
    v2 = 0;
    v3 = a1 + a2 - 31;
    v4 = 0x61C8864E7A143579;
    v5 = 0x60EA27EEADC0B5D6;
    v6 = 0xC2B2AE3D27D4EB4FLL;
    do
    {
      v7 = __ROR8__(v5 - 0x3D4D51C2D82B14B1 * *a1, 33);
      v5 = 0x9E3779B185EBCA87 * v7;
      v8 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * a1[1], 33);
      v6 = 0x9E3779B185EBCA87 * v8;
      v9 = __ROR8__(v2 - 0x3D4D51C2D82B14B1 * a1[2], 33);
      v2 = 0x9E3779B185EBCA87 * v9;
      v10 = __ROR8__(v4 - 0x3D4D51C2D82B14B1 * a1[3], 33);
      v4 = 0x9E3779B185EBCA87 * v10;
      a1 += 4;
    }

    while (a1 < v3);
    v11 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v6, 57) + __ROR8__(v5, 63) + __ROR8__(v2, 52) + __ROR8__(v4, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v7, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v8, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v9, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v10, 33))) - 0x7A1435883D4D519DLL;
  }

  v12 = v11 + a2;
  v13 = a2 & 0x1F;
  if (v13 >= 8)
  {
    do
    {
      v14 = *a1++;
      v12 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v14, 33)) ^ v12, 37);
      v13 -= 8;
    }

    while (v13 > 7);
  }

  if (v13 >= 4)
  {
    v15 = *a1;
    a1 = (a1 + 4);
    v12 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v15) ^ v12, 41);
    v13 -= 4;
  }

  for (; v13; --v13)
  {
    v16 = *a1;
    a1 = (a1 + 1);
    v12 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v16) ^ v12, 53);
  }

  v17 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v12 ^ (v12 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v12 ^ (v12 >> 33))) >> 29));
  return v17 ^ HIDWORD(v17);
}

void *GTHash_blocks(uint64_t *a1, unint64_t a2, unint64_t a3, apr_pool_t *p)
{
  v7 = a2 / a3;
  v8 = a2 / a3 * a3;
  v17 = a2 % a3;
  if (a2 % a3)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = a2 / a3;
  }

  v10 = apr_palloc(p, 0x20uLL);
  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  v12 = apr_palloc(p, (8 * v11));
  v13 = v12;
  if (v12)
  {
    bzero(v12, (8 * v11));
  }

  v10[3] = v13;
  *v10 = p;
  *(v10 + 3) = v9;
  *(v10 + 4) = v11;
  *(v10 + 2) = 8;
  if (a2 >= a3)
  {
    v14 = 0;
    v15 = a1;
    do
    {
      v13[v14++] = GTHash_data(v15, a3);
      v15 = (v15 + a3);
    }

    while (v7 > v14);
  }

  else
  {
    v14 = 0;
  }

  if (a2 != v8)
  {
    v13[v14] = GTHash_data((a1 + v14 * a3), v17);
  }

  return v10;
}

int *GTHash_diff(uint64_t a1, uint64_t a2, apr_pool_t *p)
{
  v6 = apr_palloc(p, 0x20uLL);
  v7 = apr_palloc(p, 0x10uLL);
  v8 = v7;
  if (v7)
  {
    *v7 = 0;
    *(v7 + 1) = 0;
  }

  *(v6 + 3) = v7;
  *v6 = p;
  *(v6 + 1) = 16;
  v6[4] = 1;
  v9 = *(a1 + 12);
  v10 = *(a2 + 12);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a2 + 24);
    v15 = *(a1 + 24);
    v16 = 1;
    v17 = 16;
    do
    {
      if (*(v14 + 8 * v13) == *(v15 + 8 * v13))
      {
        LODWORD(v18) = v13;
      }

      else
      {
        LODWORD(v18) = v13 + 1;
        if (v13 + 1 >= v11)
        {
          v19 = 1;
          if (v12 == v16)
          {
LABEL_18:
            if (v16 < 1)
            {
              v16 = 1;
            }

            else
            {
              v16 *= 2;
            }

            v8 = apr_palloc(*v6, v17 * v16);
            memcpy(v8, *(v6 + 3), v6[2] * v6[4]);
            bzero(&v8[v6[2] * v6[4]], v6[2] * (v16 - v6[4]));
            *(v6 + 3) = v8;
            v6[4] = v16;
            v17 = v6[2];
            v12 = v6[3];
          }
        }

        else
        {
          v18 = v18;
          v19 = 1;
          while (*(v14 + 8 * v18) != *(v15 + 8 * v18))
          {
            ++v19;
            if (v11 == ++v18)
            {
              v19 = (v11 - 2 - v13) + 2;
              LODWORD(v18) = v11;
              if (v12 == v16)
              {
                goto LABEL_18;
              }

              goto LABEL_22;
            }
          }

          if (v12 == v16)
          {
            goto LABEL_18;
          }
        }

LABEL_22:
        v20 = v17 * v12++;
        v6[3] = v12;
        v21 = &v8[v20];
        *v21 = v13;
        *(v21 + 1) = v19;
      }

      v13 = v18 + 1;
    }

    while (v18 + 1 < v11);
  }

  return v6;
}

char *__cdecl apr_cpystrn(char *dst, const char *src, apr_size_t dst_size)
{
  if (dst_size)
  {
    if (src && (v3 = &dst[dst_size - 1], v3 > dst))
    {
      v4 = dst_size - 1;
      while (1)
      {
        v5 = *src;
        *dst = v5;
        if (!v5)
        {
          break;
        }

        ++dst;
        ++src;
        if (!--v4)
        {
          dst = v3;
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      *dst = 0;
    }
  }

  return dst;
}

apr_status_t apr_tokenize_to_argv(const char *arg_str, char ***argv_out, apr_pool_t *token_context)
{
  while (1)
  {
    v6 = *arg_str;
    if (v6 != 9 && v6 != 32)
    {
      break;
    }

    ++arg_str;
  }

  if (!*arg_str)
  {
    v7 = 1;
    goto LABEL_48;
  }

  v7 = 1;
  v8 = arg_str;
  do
  {
    if (v6 == 39)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v6 == 34)
    {
      ++v8;
    }

    else
    {
      v8 = v9;
    }

    v10 = v6 != 34 && v6 != 39;
    v11 = v6 != 34 && v6 == 39;
    while (1)
    {
      v12 = *v8;
      if (v12 == 92)
      {
        v15 = *(v8 + 1);
        v16 = v15 > 0x27;
        v17 = (1 << v15) & 0x8500000200;
        if (!v16 && v17 != 0)
        {
          ++v8;
          goto LABEL_38;
        }
      }

      else if (!*v8)
      {
        break;
      }

      if (v10 && (v12 == 9 || v12 == 32))
      {
        break;
      }

      v13 = v12 == 39 && v11;
      v14 = v12 == 34 && v6 == 34;
      if (v14 || v13)
      {
        break;
      }

LABEL_38:
      ++v8;
    }

    if (*v8)
    {
      ++v8;
    }

    while (1)
    {
      v6 = *v8;
      if (v6 != 32 && v6 != 9)
      {
        break;
      }

      ++v8;
    }

    ++v7;
  }

  while (*v8);
LABEL_48:
  v20 = apr_palloc(token_context, 8 * v7);
  *argv_out = v20;
  if (v7 < 2)
  {
    v22 = 0;
    goto LABEL_106;
  }

  v21 = 0;
  v22 = (v7 - 1);
  while (2)
  {
    while (1)
    {
      v23 = *arg_str;
      if (v23 != 32 && v23 != 9)
      {
        break;
      }

      ++arg_str;
    }

    if (v23 == 39)
    {
      v25 = arg_str + 1;
    }

    else
    {
      v25 = arg_str;
    }

    if (v23 == 34)
    {
      v26 = arg_str + 1;
    }

    else
    {
      v26 = v25;
    }

    v27 = v23 != 34 && v23 != 39;
    v28 = v23 != 34 && v23 == 39;
    v29 = v26;
    while (2)
    {
      v30 = *v29;
      if (v30 == 92)
      {
        v33 = *(v29 + 1);
        v16 = v33 > 0x27;
        v34 = (1 << v33) & 0x8500000200;
        if (v16 || v34 == 0)
        {
          goto LABEL_71;
        }

        ++v29;
LABEL_88:
        ++v29;
        continue;
      }

      break;
    }

    if (!*v29)
    {
      goto LABEL_89;
    }

LABEL_71:
    if (!v27 || v30 != 9 && v30 != 32)
    {
      v31 = v30 == 39 && v28;
      v32 = v30 == 34 && v23 == 34;
      if (!v32 && !v31)
      {
        goto LABEL_88;
      }
    }

LABEL_89:
    arg_str = v29 + 1;
    (*argv_out)[v21] = apr_palloc(token_context, v29 + 1 - v26);
    if (v29 + 1 != v26)
    {
      v36 = (*argv_out)[v21];
      v37 = &v36[v29 - v26];
      if (v37 <= v36)
      {
LABEL_95:
        *v36 = 0;
      }

      else
      {
        v38 = v29 - v26;
        while (1)
        {
          v39 = *v26;
          *v36 = v39;
          if (!v39)
          {
            break;
          }

          ++v36;
          ++v26;
          if (!--v38)
          {
            v36 = v37;
            goto LABEL_95;
          }
        }
      }
    }

    v40 = (*argv_out)[v21];
    v41 = *v40;
    if (*v40)
    {
      v42 = 0;
      v43 = (v40 + 1);
      do
      {
        if (v42 || v41 != 92)
        {
          v42 = 0;
          *v40++ = v41;
        }

        else
        {
          v42 = 1;
        }

        v44 = *v43++;
        v41 = v44;
      }

      while (v44);
    }

    *v40 = 0;
    if (++v21 != v22)
    {
      continue;
    }

    break;
  }

  v20 = *argv_out;
LABEL_106:
  v20[v22] = 0;
  return 0;
}

const char *__cdecl apr_filepath_name_get(const char *pathname)
{
  v2 = strrchr(pathname, 47);
  if (v2)
  {
    return v2 + 1;
  }

  else
  {
    return pathname;
  }
}

char *__cdecl apr_collapse_spaces(char *dest, const char *src)
{
  v3 = *src;
  if (*src)
  {
    v4 = src + 1;
    while ((v3 & 0x80) == 0)
    {
      if ((_DefaultRuneLocale.__runetype[v3] & 0x4000) == 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      v5 = *v4++;
      v3 = v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    if (__maskrune(v3, 0x4000uLL))
    {
      goto LABEL_6;
    }

LABEL_5:
    *dest++ = v3;
    goto LABEL_6;
  }

LABEL_10:
  *dest = 0;
  return dest;
}

char *__cdecl apr_strerror(apr_status_t statcode, char *buf, apr_size_t bufsize)
{
  if (statcode <= 19999)
  {
    if ((strerror_r(statcode, buf, bufsize) & 0x80000000) == 0 || !bufsize)
    {
      return buf;
    }

    v5 = &buf[bufsize - 1];
    v6 = buf;
    if (v5 > buf)
    {
      v7 = 0;
      while (1)
      {
        buf[v7] = aAprDoesNotUnde[v7];
        if (v7 == 39)
        {
          return buf;
        }

        if (bufsize - 1 == ++v7)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_89:
    *v6 = 0;
    return buf;
  }

  if (statcode >> 6 > 0x752)
  {
    if (statcode > 0xA392F)
    {
      if (statcode > 0xAFC7F)
      {
        if (!bufsize)
        {
          return buf;
        }

        v5 = &buf[bufsize - 1];
        v6 = buf;
        if (v5 <= buf)
        {
          goto LABEL_89;
        }

        v14 = "Unrecognized resolver error";
        if (statcode == 720004)
        {
          v14 = "No address for host";
        }

        if (statcode == 720001)
        {
          v15 = "Unknown host";
        }

        else
        {
          v15 = v14;
        }

        v16 = bufsize - 1;
        v17 = buf;
        while (1)
        {
          v18 = *v15;
          *v17 = v18;
          if (!v18)
          {
            break;
          }

          ++v17;
          ++v15;
          if (!--v16)
          {
LABEL_39:
            v6 = v5;
            goto LABEL_89;
          }
        }
      }

      else
      {
        v10 = gai_strerror(statcode - 670000);
        if (!bufsize)
        {
          return buf;
        }

        v6 = buf;
        if (!v10)
        {
          goto LABEL_89;
        }

        v5 = &buf[bufsize - 1];
        v6 = buf;
        if (v5 <= buf)
        {
          goto LABEL_89;
        }

        v11 = bufsize - 1;
        v12 = buf;
        while (1)
        {
          v13 = *v10;
          *v12 = v13;
          if (!v13)
          {
            break;
          }

          ++v12;
          ++v10;
          if (!--v11)
          {
            goto LABEL_39;
          }
        }
      }
    }

    else
    {
      if (!bufsize)
      {
        return buf;
      }

      v5 = &buf[bufsize - 1];
      v6 = buf;
      if (v5 <= buf)
      {
        goto LABEL_89;
      }

      v9 = 0;
      while (1)
      {
        buf[v9] = aAprDoesNotUnde[v9];
        if (v9 == 39)
        {
          break;
        }

        if (bufsize - 1 == ++v9)
        {
          goto LABEL_39;
        }
      }
    }
  }

  else
  {
    v8 = "Could not perform a stat on the file.";
    switch(statcode)
    {
      case 20001:
        break;
      case 20002:
        v8 = "A new pool could not be created.";
        break;
      case 20003:
      case 20018:
LABEL_64:
        v8 = "Error string not specified yet";
        break;
      case 20004:
        v8 = "An invalid date has been provided";
        break;
      case 20005:
        v8 = "An invalid socket was returned";
        break;
      case 20006:
        v8 = "No process was provided and one was required.";
        break;
      case 20007:
        v8 = "No time was provided and one was required.";
        break;
      case 20008:
        v8 = "No directory was provided and one was required.";
        break;
      case 20009:
        v8 = "No lock was provided and one was required.";
        break;
      case 20010:
        v8 = "No poll structure was provided and one was required.";
        break;
      case 20011:
        v8 = "No socket was provided and one was required.";
        break;
      case 20012:
        v8 = "No thread was provided and one was required.";
        break;
      case 20013:
        v8 = "No thread key structure was provided and one was required.";
        break;
      case 20014:
        v8 = "Internal error (specific information not available)";
        break;
      case 20015:
        v8 = "No shared memory is currently available";
        break;
      case 20016:
        v8 = "The specified IP address is invalid.";
        break;
      case 20017:
        v8 = "The specified network mask is invalid.";
        break;
      case 20019:
        v8 = "DSO load failed";
        break;
      case 20020:
        v8 = "The given path is absolute";
        break;
      case 20021:
        v8 = "The given path is relative";
        break;
      case 20022:
        v8 = "The given path is incomplete";
        break;
      case 20023:
        v8 = "The given path was above the root path";
        break;
      case 20024:
        v8 = "The given path is misformatted or contained invalid characters";
        break;
      case 20025:
        v8 = "The given path contained wildcard characters";
        break;
      case 20026:
        v8 = "Could not find the requested symbol.";
        break;
      case 20027:
        v8 = "The process is not recognized.";
        break;
      case 20028:
        v8 = "Not enough entropy to continue.";
        break;
      default:
        switch(statcode)
        {
          case 70001:
            v8 = "Your code just forked, and you are currently executing in the child process";
            break;
          case 70002:
            v8 = "Your code just forked, and you are currently executing in the parent process";
            break;
          case 70003:
            v8 = "The specified thread is detached";
            break;
          case 70004:
            v8 = "The specified thread is not detached";
            break;
          case 70005:
            v8 = "The specified child process is done executing";
            break;
          case 70006:
            v8 = "The specified child process is not done executing";
            break;
          case 70007:
            v8 = "The timeout specified has expired";
            break;
          case 70008:
            v8 = "Partial results are valid but processing is incomplete";
            break;
          case 70012:
            v8 = "Bad character specified on command line";
            break;
          case 70013:
            v8 = "Missing parameter for the specified command line option";
            break;
          case 70014:
            v8 = "End of file found";
            break;
          case 70015:
            v8 = "Could not find specified socket in poll list.";
            break;
          case 70019:
            v8 = "Shared memory is implemented anonymously";
            break;
          case 70020:
            v8 = "Shared memory is implemented using files";
            break;
          case 70021:
            v8 = "Shared memory is implemented using a key system";
            break;
          case 70022:
            v8 = "There is no error, this value signifies an initialized error code";
            break;
          case 70023:
            v8 = "This function has not been implemented on this platform";
            break;
          case 70024:
            v8 = "passwords do not match";
            break;
          case 70025:
            v8 = "The given lock was busy.";
            break;
          default:
            goto LABEL_64;
        }

        break;
    }

    if (!bufsize)
    {
      return buf;
    }

    v6 = buf;
    if (&buf[bufsize - 1] <= buf)
    {
      goto LABEL_89;
    }

    v19 = bufsize - 1;
    v20 = buf;
    while (1)
    {
      v21 = *v8;
      *v20 = v21;
      if (!v21)
      {
        break;
      }

      ++v20;
      ++v8;
      if (!--v19)
      {
        v6 = &buf[bufsize - 1];
        goto LABEL_89;
      }
    }
  }

  return buf;
}

apr_hash_t *__cdecl apr_hash_make(apr_pool_t *pool)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  gettimeofday(&v6, 0);
  v6.tv_sec = v6.tv_usec + 1000000 * v6.tv_sec;
  tv_sec = v6.tv_sec;
  v3 = apr_palloc(pool, 0x50uLL);
  *v3 = pool;
  v3[9] = 0;
  v3[6] = 0xF00000000;
  *(v3 + 14) = (&v6 ^ pool ^ v3 ^ tv_sec ^ HIDWORD(tv_sec)) - 1;
  v4 = apr_palloc(pool, 0x80uLL);
  if (v4)
  {
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  v3[1] = v4;
  v3[8] = 0;
  return v3;
}

apr_hash_t *__cdecl apr_hash_make_custom(apr_pool_t *pool, apr_hashfunc_t hash_func)
{
  result = apr_hash_make(pool);
  *(result + 8) = hash_func;
  return result;
}

apr_hash_index_t *__cdecl apr_hash_next(apr_hash_index_t *hi)
{
  v1 = *(hi + 2);
  *(hi + 1) = v1;
  if (v1)
  {
LABEL_5:
    *(hi + 2) = *v1;
  }

  else
  {
    v2 = *hi;
    v3 = *(*hi + 52);
    v4 = *(hi + 6);
    while (v4 <= v3)
    {
      v1 = *(*(v2 + 8) + 8 * v4++);
      *(hi + 6) = v4;
      *(hi + 1) = v1;
      if (v1)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return hi;
}

apr_hash_index_t *__cdecl apr_hash_first(apr_pool_t *p, apr_hash_t *ht)
{
  if (p)
  {
    v3 = apr_palloc(p, 0x20uLL);
  }

  else
  {
    v3 = ht + 16;
  }

  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = ht;
  *(v3 + 6) = 0;

  return apr_hash_next(v3);
}

void apr_hash_this(apr_hash_index_t *hi, const void **key, apr_ssize_t *klen, void **val)
{
  if (key)
  {
    *key = *(*(hi + 1) + 16);
  }

  if (klen)
  {
    *klen = *(*(hi + 1) + 24);
  }

  if (val)
  {
    *val = *(*(hi + 1) + 32);
  }
}

uint64_t hashfunc_default(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == -1)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = a1;
      do
      {
        a3 = (33 * a3 + v5);
        v7 = *++v6;
        v5 = v7;
      }

      while (v7);
    }

    else
    {
      v6 = a1;
    }

    *a2 = v6 - a1;
  }

  else
  {
    for (; v3; --v3)
    {
      v4 = *a1++;
      a3 = (33 * a3 + v4);
    }
  }

  return a3;
}

apr_hash_t *__cdecl apr_hash_copy(apr_pool_t *pool, const apr_hash_t *h)
{
  result = apr_palloc(pool, 40 * *(h + 12) + 8 * (*(h + 13) + 1) + 80);
  v5 = 0;
  v6 = 0;
  *(result + 12) = *(h + 12);
  v7 = *(h + 52);
  *(result + 52) = v7;
  *(result + 8) = *(h + 8);
  *(result + 9) = 0;
  *result = pool;
  *(result + 1) = result + 80;
  if ((v7 + 1) > 1)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 1;
  }

  do
  {
    v9 = (*(result + 1) + 8 * v5);
    v10 = *(*(h + 1) + 8 * v5);
    if (v10)
    {
      do
      {
        v11 = (v6 + 1);
        v12 = result + 40 * v6 + 8 * (v7 + 1) + 80;
        *v9 = v12;
        *(v12 + 2) = *(v10 + 2);
        v13 = v10[3];
        *(v12 + 2) = v10[2];
        v6 = *v9;
        v14 = v10[4];
        v6[3] = v13;
        v6[4] = v14;
        v9 = *v9;
        v10 = *v10;
        LODWORD(v6) = v11;
      }

      while (v10);
    }

    else
    {
      v11 = v6;
    }

    *v9 = 0;
    ++v5;
    v6 = v11;
  }

  while (v5 != v8);
  return result;
}

void *__cdecl apr_hash_get(apr_hash_t *ht, const void *key, apr_ssize_t klen)
{
  entry = find_entry(ht, key, klen, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

void *find_entry(uint64_t a1, _BYTE *a2, size_t a3, uint64_t a4)
{
  __n = a3;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = v7(a2, &__n);
  }

  else
  {
    v8 = hashfunc_default(a2, &__n, *(a1 + 56));
  }

  v9 = v8;
  v10 = (*(a1 + 8) + 8 * (*(a1 + 52) & v8));
  v11 = *v10;
  if (*v10)
  {
    v12 = __n;
    while (1)
    {
      v13 = v10;
      v10 = v11;
      if (*(v11 + 8) == v9 && *(v11 + 24) == v12 && !memcmp(*(v11 + 16), a2, v12))
      {
        break;
      }

      v11 = *v10;
      if (!*v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (a4)
    {
      v14 = *(a1 + 72);
      if (v14)
      {
        *(a1 + 72) = *v14;
      }

      else
      {
        v14 = apr_palloc(*a1, 0x28uLL);
      }

      *v14 = 0;
      v14[2] = v9;
      v15 = __n;
      *(v14 + 2) = a2;
      *(v14 + 3) = v15;
      *(v14 + 4) = a4;
      *v10 = v14;
      ++*(a1 + 48);
    }

    return v10;
  }

  return v13;
}

void apr_hash_set(apr_hash_t *ht, const void *key, apr_ssize_t klen, const void *val)
{
  entry = find_entry(ht, key, klen, val);
  v7 = *entry;
  if (*entry)
  {
    if (val)
    {
      v7[4] = val;
      v8 = *(ht + 13);
      if (*(ht + 12) > v8)
      {
        v9 = (2 * v8) | 1;
        v10 = 8 * (2 * v8 + 2);
        v11 = apr_palloc(*ht, v10);
        v12 = v11;
        if (v11)
        {
          bzero(v11, v10);
        }

        *(ht + 3) = 0;
        *(ht + 4) = 0;
        *(ht + 2) = ht;
        *(ht + 10) = 0;
        v13 = (ht + 16);
        while (1)
        {
          v13 = apr_hash_next(v13);
          if (!v13)
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v14 + 8) & v9;
          *v14 = v12[v15];
          v12[v15] = v14;
        }

        *(ht + 1) = v12;
        *(ht + 13) = v9;
      }
    }

    else
    {
      *entry = *v7;
      *v7 = *(ht + 9);
      *(ht + 9) = v7;
      --*(ht + 12);
    }
  }
}

void apr_hash_clear(apr_hash_t *ht)
{
  *(ht + 3) = 0;
  *(ht + 4) = 0;
  *(ht + 2) = ht;
  *(ht + 10) = 0;
  v2 = apr_hash_next((ht + 16));
  if (v2)
  {
    v3 = v2;
    do
    {
      apr_hash_set(ht, *(*(v3 + 1) + 16), *(*(v3 + 1) + 24), 0);
      v3 = apr_hash_next(v3);
    }

    while (v3);
  }
}

apr_hash_t *__cdecl apr_hash_merge(apr_pool_t *p, const apr_hash_t *h1, const apr_hash_t *h2, void *(__cdecl *merger)(apr_pool_t *, const void *, apr_ssize_t, const void *, const void *, const void *), const void *data)
{
  v8 = apr_palloc(p, 0x50uLL);
  v9 = v8;
  v8[8] = *(h2 + 8);
  v8[9] = 0;
  v11 = *(h2 + 12);
  v10 = *(h2 + 13);
  *(v8 + 12) = v11;
  v12 = *(h1 + 12);
  if (*(h1 + 13) > v10)
  {
    v10 = *(h1 + 13);
  }

  pa = p;
  *v8 = p;
  *(v8 + 13) = v10;
  if (v12 + v11 > v10)
  {
    v10 = (2 * v10) | 1;
    *(v8 + 13) = v10;
  }

  *(v8 + 14) = *(h2 + 14);
  v13 = 8 * (v10 + 1);
  v14 = apr_palloc(p, v13);
  v15 = v14;
  if (v14)
  {
    bzero(v14, v13);
  }

  v9[1] = v15;
  v16 = *(h1 + 12) + *(h2 + 12);
  if (v16)
  {
    v17 = apr_palloc(p, 40 * v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
  v19 = 0;
  v20 = *(h2 + 13);
  if ((v20 + 1) > 1)
  {
    v21 = (v20 + 1);
  }

  else
  {
    v21 = 1;
  }

  do
  {
    v22 = *(*(h2 + 1) + 8 * v18);
    if (v22)
    {
      v23 = *(v9 + 13);
      do
      {
        v24 = *(v22 + 2);
        v25 = &v17[40 * v19];
        *(v25 + 1) = *(v22 + 1);
        *(v25 + 4) = v22[4];
        v26 = v9[1];
        v27 = *(v26 + 8 * (v23 & v24));
        *(v25 + 2) = v24;
        *v25 = v27;
        *(v26 + 8 * (v23 & v24)) = v25;
        ++v19;
        v22 = *v22;
      }

      while (v22);
    }

    ++v18;
  }

  while (v18 != v21);
  v28 = 0;
  v42 = h1;
  do
  {
    v43 = v28;
    for (i = *(*(h1 + 1) + 8 * v28); i; i = *i)
    {
      v31 = v9[8];
      v32 = i[2];
      if (v31)
      {
        v33 = v31(v32, i + 3);
      }

      else
      {
        v33 = hashfunc_default(v32, i + 3, *(v9 + 14));
      }

      v34 = v33;
      v35 = *(v9 + 13) & v33;
      v36 = v9[1];
      v37 = *(v36 + 8 * v35);
      v38 = i[3];
      if (v37)
      {
        while (1)
        {
          if (v37[3] == v38)
          {
            v39 = i[2];
            if (!memcmp(v37[2], v39, v38))
            {
              break;
            }
          }

          v37 = *v37;
          if (!v37)
          {
            goto LABEL_30;
          }
        }

        v30 = i[4];
        if (merger)
        {
          v37[4] = (merger)(pa, v39, v38, v30, v37[4], data);
        }

        else
        {
          v37[4] = v30;
        }
      }

      else
      {
LABEL_30:
        v40 = &v17[40 * v19];
        *(v40 + 2) = i[2];
        *(v40 + 3) = v38;
        *(v40 + 4) = i[4];
        *(v40 + 2) = v34;
        *v40 = *(v36 + 8 * v35);
        *(v36 + 8 * v35) = v40;
        ++*(v9 + 12);
        ++v19;
      }
    }

    v28 = v43 + 1;
    h1 = v42;
  }

  while (v43 + 1 <= *(v42 + 13));
  return v9;
}

int apr_hash_do(apr_hash_do_callback_fn_t *comp, void *rec, const apr_hash_t *ht)
{
  v5 = 0;
  v12 = 0;
  v11[0] = ht;
  v6 = *(ht + 13);
  v7 = *(ht + 1);
  while (1)
  {
    v8 = *(v7 + 8 * v5++);
    v11[1] = v8;
    if (v8)
    {
      break;
    }

    if (v5 > v6)
    {
      return 1;
    }
  }

  LODWORD(v12) = v5;
  v11[2] = *v8;
  v9 = v11;
  while (1)
  {
    result = (comp)(rec, *(*(v9 + 1) + 16), *(*(v9 + 1) + 24), *(*(v9 + 1) + 32));
    if (!result)
    {
      break;
    }

    v9 = apr_hash_next(v9);
    if (!v9)
    {
      return 1;
    }
  }

  return result;
}

apr_status_t apr_atomic_init(apr_pool_t *p)
{
  if (hash_mutex)
  {
    return 0;
  }

  v2 = apr_palloc(p, 0x38uLL);
  hash_mutex = v2;
  v3 = *(p + 5);
  if (v3)
  {
    *(p + 5) = *v3;
  }

  else
  {
    v3 = apr_palloc(p, 0x20uLL);
  }

  v4 = 0;
  v3[1] = v2;
  v3[2] = atomic_cleanup;
  v3[3] = apr_pool_cleanup_null;
  *v3 = *(p + 4);
  *(p + 4) = v3;
  while (1)
  {
    result = apr_thread_mutex_create((hash_mutex + v4), 0, p);
    if (result)
    {
      break;
    }

    v4 += 8;
    if (v4 == 56)
    {
      return 0;
    }
  }

  return result;
}

uint64_t atomic_cleanup(uint64_t a1)
{
  if (hash_mutex == a1)
  {
    hash_mutex = 0;
  }

  return 0;
}

void apr_atomic_set32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (*mem = val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }
}

apr_uint32_t apr_atomic_add32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (v5 = *mem, *mem += val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }

  return v5;
}

void apr_atomic_sub32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (*mem -= val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }
}

int apr_atomic_dec32(apr_uint32_t *mem)
{
  v2 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v2 + 8)) || (--*mem, v3 = *mem, pthread_mutex_unlock((v2 + 8))))
  {
    abort();
  }

  return v3;
}

apr_uint32_t apr_atomic_cas32(apr_uint32_t *mem, apr_uint32_t with, apr_uint32_t cmp)
{
  v6 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v6 + 8)))
  {
    goto LABEL_6;
  }

  v7 = *mem;
  if (*mem == cmp)
  {
    *mem = with;
  }

  if (pthread_mutex_unlock((v6 + 8)))
  {
LABEL_6:
    abort();
  }

  return v7;
}

apr_uint32_t apr_atomic_xchg32(apr_uint32_t *mem, apr_uint32_t val)
{
  v4 = *(hash_mutex + 8 * (-7 * (mem / 0x1C) + (mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (v5 = *mem, *mem = val, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }

  return v5;
}

void *__cdecl apr_atomic_casptr(void **mem, void *with, const void *cmp)
{
  v6 = *(hash_mutex + 8 * (-7 * (*mem / 0x1C) + (*mem >> 2)));
  if (pthread_mutex_lock((v6 + 8)))
  {
    goto LABEL_6;
  }

  v7 = *mem;
  if (*mem == cmp)
  {
    *mem = with;
  }

  if (pthread_mutex_unlock((v6 + 8)))
  {
LABEL_6:
    abort();
  }

  return v7;
}

void *__cdecl apr_atomic_xchgptr(void **mem, void *with)
{
  v4 = *(hash_mutex + 8 * (-7 * (*mem / 0x1C) + (*mem >> 2)));
  if (pthread_mutex_lock((v4 + 8)) || (v5 = *mem, *mem = with, pthread_mutex_unlock((v4 + 8))))
  {
    abort();
  }

  return v5;
}

void apr_pool_destroy(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v3 = *(p + 1);
    if (!v3)
    {
      break;
    }

    apr_pool_destroy(v3);
  }

  while (1)
  {
    v4 = *(p + 4);
    if (!v4)
    {
      break;
    }

    *(p + 4) = *v4;
    (*(v4 + 16))(*(v4 + 8));
  }

  free_proc_chain(*(p + 7));
  if (*p)
  {
    v5 = *(*(*p + 48) + 24);
    if (v5)
    {
      pthread_mutex_lock((v5 + 8));
    }

    v6 = *(p + 2);
    **(p + 3) = v6;
    if (v6)
    {
      *(v6 + 24) = *(p + 3);
    }

    if (v5)
    {
      pthread_mutex_unlock((v5 + 8));
    }
  }

  v7 = *(p + 6);
  v8 = *(p + 12);
  **(v8 + 8) = 0;
  if (v7[4] == p)
  {
    v7[3] = 0;
  }

  else
  {
    v9 = v7[3];
    if (v9)
    {
      pthread_mutex_lock((v9 + 8));
    }
  }

  v10 = 0;
  v11 = *v7;
  v12 = v7[1];
  v13 = v7 + 5;
  v14 = v7[2];
  do
  {
    while (1)
    {
      v15 = v8;
      v8 = *v8;
      v16 = *(v15 + 16);
      if (!v12 || v14 > v16)
      {
        break;
      }

      *v15 = v10;
      v10 = v15;
      if (!v8)
      {
        goto LABEL_35;
      }
    }

    if (v16 > 0x13)
    {
      *v15 = *v13;
      *v13 = v15;
    }

    else
    {
      v17 = v13[v16];
      *v15 = v17;
      if (v11 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v11;
      }

      if (!v17)
      {
        v11 = v18;
      }

      v13[v16] = v15;
    }

    v19 = v14 > v16;
    v14 += ~v16;
    if (!v19)
    {
      v14 = 0;
    }
  }

  while (v8);
LABEL_35:
  *v7 = v11;
  v7[2] = v14;
  v20 = v7[3];
  if (v20)
  {
    pthread_mutex_unlock((v20 + 8));
  }

  if (v10)
  {
    do
    {
      v21 = *v10;
      vm_deallocate(mach_task_self_, v10, ((*(v10 + 16) << 12) + 4096));
      v10 = v21;
    }

    while (v21);
  }

  if (v7[4] == p)
  {

    apr_allocator_destroy(v7);
  }
}

uint64_t free_proc_chain(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = result;
  do
  {
    result = apr_proc_wait(*v2, 0, 0, APR_NOWAIT);
    if (result != 70006)
    {
      *(v2 + 8) = 0;
    }

    v2 = *(v2 + 16);
  }

  while (v2);
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if (v4 == 1)
    {
      result = apr_proc_kill(*v3, 9);
    }

    else if (v4 == 4 || v4 == 2)
    {
      result = apr_proc_kill(*v3, 15);
      if (!result)
      {
        LODWORD(v2) = 1;
      }
    }

    v3 = *(v3 + 16);
  }

  while (v3);
  v6 = v1;
  if (!v2)
  {
    goto LABEL_29;
  }

  v11 = xmmword_2975E0;
  result = select(0, 0, 0, 0, &v11);
  v7 = 46875;
  while (2)
  {
    v8 = 0;
    v9 = v1;
    do
    {
      v10 = v8;
      if (*(v9 + 8) == 2)
      {
        v8 = 1;
        result = apr_proc_wait(*v9, 0, 0, APR_NOWAIT);
        if (result == 70006)
        {
          goto LABEL_24;
        }

        *(v9 + 8) = 0;
      }

      v8 = v10;
LABEL_24:
      v9 = *(v9 + 16);
    }

    while (v9);
    if (v8 && v7 <= 0x2DC6BF)
    {
      *&v11 = v7 / 0xF4240;
      *(&v11 + 1) = v7 % 0xF4240;
      result = select(0, 0, 0, 0, &v11);
      v7 *= 2;
      continue;
    }

    break;
  }

  v6 = v1;
  do
  {
LABEL_29:
    if (*(v6 + 8) == 2)
    {
      result = apr_proc_kill(*v6, 9);
    }

    v6 = *(v6 + 16);
  }

  while (v6);
  do
  {
    if (*(v1 + 8))
    {
      result = apr_proc_wait(*v1, 0, 0, APR_WAIT);
    }

    v1 = *(v1 + 16);
  }

  while (v1);
  return result;
}