uint64_t *GTResourceTrackerProcessIndirectCommandResourceUse(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 > -15949)
  {
    if (v3 > -15923)
    {
      switch(v3)
      {
        case -15922:
          v18 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
          result = find_entry(v2[3], v18, 8uLL, 0);
          if (!*result || !*(*result + 32))
          {
            return result;
          }

          v6 = v2[3];
          v7 = *(v18 + 1);
          v9 = *v2;
          v10 = v2[1];
          v11 = 59;
          break;
        case -14924:
          v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
          result = find_entry(v2[3], v16, 8uLL, 0);
          if (!*result || !*(*result + 32))
          {
            return result;
          }

          v6 = v2[3];
          v7 = *(v16 + 1);
          v9 = *v2;
          v10 = v2[1];
          v11 = 34;
          break;
        case -15921:
          v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
          result = find_entry(v2[3], v8, 8uLL, 0);
          if (!*result || !*(*result + 32))
          {
            return result;
          }

          v6 = v2[3];
          v7 = *(v8 + 1);
          v9 = *v2;
          v10 = v2[1];
          v11 = 58;
          break;
        default:
          return result;
      }

      goto LABEL_41;
    }

    if (v3 == -15948)
    {
      v17 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
      result = find_entry(v2[3], v17, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        return result;
      }

      v6 = v2[3];
      v7 = *(v17 + 4);
      goto LABEL_40;
    }

    if (v3 == -15934)
    {
      v15 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
      result = find_entry(v2[3], v15, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        return result;
      }

      v6 = v2[3];
      v7 = *(v15 + 1);
      v9 = *v2;
      v10 = v2[1];
      v11 = 29;
      goto LABEL_41;
    }

    v4 = -15933;
    goto LABEL_21;
  }

  if (v3 > -15955)
  {
    if (v3 != -15954)
    {
      if (v3 == -15952)
      {
        v14 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
        result = find_entry(v2[3], v14, 8uLL, 0);
        if (!*result || !*(*result + 32))
        {
          return result;
        }

        GTResourceTrackerUsingResource(v2[3], 22, *(v14 + 4), *v2, v2[1]);
        v6 = v2[3];
        v7 = *(v14 + 8);
      }

      else
      {
        if (v3 != -15950)
        {
          return result;
        }

        v5 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
        result = find_entry(v2[3], v5, 8uLL, 0);
        if (!*result || !*(*result + 32))
        {
          return result;
        }

        GTResourceTrackerUsingResource(v2[3], 22, *(v5 + 4), *v2, v2[1]);
        GTResourceTrackerUsingResource(v2[3], 22, *(v5 + 6), *v2, v2[1]);
        v6 = v2[3];
        v7 = *(v5 + 10);
      }

      goto LABEL_40;
    }

    goto LABEL_22;
  }

  if (v3 != -15956)
  {
    v4 = -15955;
LABEL_21:
    if (v3 != v4)
    {
      return result;
    }

LABEL_22:
    v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
    result = find_entry(v2[3], v12, 8uLL, 0);
    if (!*result || !*(*result + 32))
    {
      return result;
    }

    v6 = v2[3];
    v7 = *(v12 + 1);
LABEL_40:
    v9 = *v2;
    v10 = v2[1];
    v11 = 22;
    goto LABEL_41;
  }

  v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
  result = find_entry(v2[3], v13, 8uLL, 0);
  if (!*result || !*(*result + 32))
  {
    return result;
  }

  v6 = v2[3];
  v7 = *(v13 + 1);
  v9 = *v2;
  v10 = v2[1];
  v11 = 71;
LABEL_41:

  return GTResourceTrackerUsingResource(v6, v11, v7, v9, v10);
}

uint64_t catch_mach_exception_raise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  pthread_mutex_lock(&tracingMutex);
  v6 = *(tracingRegions + 12);
  if (v6)
  {
    v7 = 0;
    v8 = (*(tracingRegions + 24) + 8);
    while (1)
    {
      v9 = *(v8 - 1);
      if (v9 <= v5 && *v8 + v9 > v5)
      {
        break;
      }

      ++v7;
      v8 += 3;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v6)
  {
LABEL_9:
    pthread_mutex_unlock(&tracingMutex);
    if (!oldArraySize)
    {
      return 5;
    }

    task_set_exception_ports(mach_task_self_, oldExcMasks, oldExcPorts, oldBehaviors, oldFlavors);
  }

  else
  {
    v10 = *(tracingRegions + 24) + 24 * v7;
    v19 = *v10;
    v20 = *(v10 + 16);
    if ((dword_31F7C8 & 0x2000) != 0)
    {
      v11 = (v5 - v19) / vm_page_size;
      v13 = *(*find_entry(tracedChunks, &v20, 8uLL, 0) + 32) + 8 * (v11 >> 6);
      *(v13 + 8) |= 1 << v11;
    }

    else
    {
      v11 = 0;
    }

    if (v20)
    {
      v14 = (v20 + 56);
      v15 = atomic_load((v20 + 56));
      v16 = v15;
      do
      {
        atomic_compare_exchange_strong(v14, &v16, v15 | 8);
        v17 = v16 == v15;
        v15 = v16;
      }

      while (!v17);
    }

    if ((dword_31F7C8 & 0x2000) != 0)
    {
      v18 = vm_page_size;
    }

    else
    {
      v18 = *(&v19 + 1);
    }

    mprotect((v19 + vm_page_size * v11), v18, 3);
    pthread_mutex_unlock(&tracingMutex);
  }

  return 0;
}

unint64_t GTMemoryGuard_registerRegion(unint64_t result, vm_size_t a2, uint64_t a3, int a4)
{
  v5 = result;
  v27 = a3;
  if (a3)
  {
    v6 = atomic_load((a3 + 56));
    if ((v6 & 8) != 0)
    {
      return result;
    }
  }

  if (a4)
  {
    pthread_mutex_lock(&tracingMutex);
    if (!tracingPool)
    {

      return pthread_mutex_unlock(&tracingMutex);
    }

    v7 = *find_entry(tracedChunks, &v27, 8uLL, 0);
    if (!v7)
    {
      return pthread_mutex_unlock(&tracingMutex);
    }

    v8 = *(v7 + 32);
    result = pthread_mutex_unlock(&tracingMutex);
    if (!v8)
    {
      return result;
    }
  }

  if ((vm_page_mask & v5) == 0 && vm_page_size <= a2)
  {
    pthread_once(&GTMemoryGuard_initialize_onceGuard, InitializeMemoryGuardOnce);
    pthread_mutex_lock(&tracingMutex);
    v14 = *(tracingRegions + 12);
    if (v14)
    {
      v15 = (*(tracingRegions + 24) + 16);
      while (*v15 != v27)
      {
        v15 += 3;
        if (!--v14)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_31;
    }

LABEL_21:
    v16 = apr_array_push(tracingRegions);
    v17 = v27;
    *v16 = v5;
    v16[1] = a2;
    v16[2] = v17;
    v18 = tracedChunks;
    if ((dword_31F7C8 & 0x2000) != 0)
    {
      entry = find_entry(tracedChunks, &v27, 8uLL, 0);
      if (*entry)
      {
        v23 = *(*entry + 32);
        if (v23)
        {
          bzero(v23 + 1, 8 * *v23);
LABEL_31:
          mprotect(v5, a2, 1);
          return pthread_mutex_unlock(&tracingMutex);
        }
      }

      v24 = (a2 + (vm_page_size << 6) - 1) / (vm_page_size << 6);
      v25 = malloc_type_calloc(1uLL, 8 * v24 + 8, 0x100004000313F17uLL);
      *v25 = v24;
      v26 = tracedChunks;
      v19 = apr_palloc(tracingPool, 8uLL);
      *v19 = v27;
      v20 = v26;
      v21 = v25;
    }

    else
    {
      v19 = apr_palloc(tracingPool, 8uLL);
      *v19 = v27;
      v20 = v18;
      v21 = &dword_8;
    }

    apr_hash_set(v20, v19, 8, v21);
    goto LABEL_31;
  }

  if (v27)
  {
    v10 = (v27 + 56);
    v11 = atomic_load((v27 + 56));
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong(v10, &v12, v11 | 8);
      v13 = v12 == v11;
      v11 = v12;
    }

    while (!v13);
  }

  return result;
}

apr_hash_t *InitializeMemoryGuardOnce()
{
  v0 = mach_task_self_;
  mach_port_allocate(mach_task_self_, 1u, &exceptionPort);
  mach_port_insert_right(v0, exceptionPort, exceptionPort, 0x14u);
  task_swap_exception_ports(v0, 2u, exceptionPort, -2147483647, 6, &oldExcMasks, &oldArraySize, &oldExcPorts, &oldBehaviors, &oldFlavors);
  v2 = 0;
  pthread_create(&v2, 0, MachServer, 0);
  pthread_detach(v2);
  apr_pool_create_ex(&tracingPool, 0, 0, 0);
  tracingRegions = apr_array_make(tracingPool, 1024, 24);
  result = apr_hash_make(tracingPool);
  tracedChunks = result;
  return result;
}

uint64_t GTMemoryGuard_unregisterRegion(uint64_t a1)
{
  key = a1;
  pthread_mutex_lock(&tracingMutex);
  v2 = tracingRegions;
  if (tracingRegions)
  {
    v3 = *(tracingRegions + 12);
    v4 = 0;
    if (v3)
    {
      v5 = (*(tracingRegions + 24) + 16);
      while (*v5 != a1)
      {
        ++v4;
        v5 += 3;
        if (v3 == v4)
        {
          goto LABEL_14;
        }
      }
    }

    if (v4 != v3)
    {
      if (v4 < v3 - 1)
      {
        v6 = 24 * v4;
        do
        {
          v7 = *(v2 + 24) + v6;
          ++v4;
          *v7 = *(v7 + 24);
          *(v7 + 16) = *(v7 + 40);
          v6 += 24;
        }

        while (v4 < *(v2 + 12) - 1);
        v3 = *(v2 + 12);
      }

      if (v3)
      {
        *(v2 + 12) = v3 - 1;
      }
    }

LABEL_14:
    if ((dword_31F7C8 & 0x2000) != 0)
    {
      v8 = *find_entry(tracedChunks, &key, 8uLL, 0);
      if (v8)
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }

    apr_hash_set(tracedChunks, &key, 8, 0);
    return pthread_mutex_unlock(&tracingMutex);
  }

  else
  {

    return pthread_mutex_unlock(&tracingMutex);
  }
}

uint64_t GTMemoryGuard_copyTracedChunks(void **a1, uint64_t a2)
{
  v9 = a2;
  if ((dword_31F7C8 & 0x2000) == 0)
  {
    return 0;
  }

  pthread_mutex_lock(&tracingMutex);
  if (!tracingRegions || (v3 = *find_entry(tracedChunks, &v9, 8uLL, 0)) == 0 || (v4 = *(v3 + 32)) == 0)
  {
    pthread_mutex_unlock(&tracingMutex);
    return 0;
  }

  v5 = *v4;
  v6 = 8 * *v4;
  v7 = malloc_type_realloc(*a1, v6, 0x100004000313F17uLL);
  *a1 = v7;
  memcpy(v7, v4 + 1, v6);
  pthread_mutex_unlock(&tracingMutex);
  return v5;
}

id CreateIndirectRenderCommandBufferSnapshot(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v9 device];
  v11 = DEVICEOBJECT(v8);

  v12 = [v11 device];
  v13 = [v11 size];
  v14 = [v12 newIndirectCommandBufferWithDescriptor:v7 maxCommandCount:v13 options:0x800000];

  v15 = [v10 renderFunctionCopyIndirectCommandBuffer];
  v16 = [v15 newArgumentEncoderWithBufferIndex:0];

  v17 = [v12 newBufferWithLength:objc_msgSend(v16 options:{"encodedLength"), 0}];
  [v16 setArgumentBuffer:v17 offset:0];
  [v16 setIndirectCommandBuffer:v14 atIndex:0];
  [v16 setIndirectCommandBuffer:v11 atIndex:1];
  v18 = DEVICEOBJECT(v9);

  [v18 useResource:v11 usage:1 stages:1];
  [v18 useResource:v14 usage:2 stages:1];
  [v18 setVertexBuffer:v17 offset:0 atIndex:0];
  v19 = [v10 renderPipelineCopyIndirectCommandBuffer];
  [v18 setRenderPipelineState:v19];

  [v18 drawPrimitives:0 vertexStart:0 vertexCount:v13];
  LOBYTE(v13) = [v12 supportsRenderMemoryBarrier];
  v20 = [v12 supportsPartialRenderMemoryBarrier];
  if ((v13 & 1) != 0 || v20)
  {
    v23 = v11;
    [v18 memoryBarrierWithResources:&v23 count:1 afterStages:1 beforeStages:1];
  }

  v21 = v17;
  *a4 = v17;

  return v14;
}

void RestoreRenderCommandEncoder(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v3 = [v2 traceContext];
  v4 = [v2 traceStream];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v5 = newpool;
  v6 = apr_hash_make(newpool);
  GTTraceMemPool_buildMemoryMap(v4[3], v6);
  v7 = GTTraceContext_copyStreamMap(v3, v5);
  bzero(v37, 0x2BA0uLL);
  v8 = v4[4];
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = atomic_load((v8 + 4));
      v11 = v9 + (v10 >> 6) - 1;
      if (v11 > 0)
      {
        break;
      }

      v8 = *(v8 + 40);
      v9 = v11;
      if (!v8)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v12 = v9 | (v11 << 32);
  }

  else
  {
    v12 = 0;
  }

  while (v8)
  {
    v13 = v8 + 64 + ((HIDWORD(v12) - v12) << 6);
    if ((*(v13 + 15) & 8) == 0)
    {
      break;
    }

    GTMTLSMCommandEncoder_processTraceFunc(v37, v13, v6);
    v14 = atomic_load((v8 + 4));
    v15 = v12 + (v14 >> 6);
    v16 = (HIDWORD(v12) + 1);
    v12 = (v16 << 32) | v12;
    if (v16 == v15 - 1)
    {
      v12 = (v16 << 32) | v16;
      v8 = *(v8 + 40);
    }
  }

  v17 = DEVICEOBJECT(v2);
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = 1 << v18;
    v22 = v40[v18];
    if ((v38 & (1 << v18)) != 0)
    {
      if (v22)
      {
        v23 = v22 + 16;
      }

      else
      {
        v23 = 0;
      }

      v24 = v40[v18 + 31];
      if ((v39 & v21) != 0)
      {
        [v17 setVertexBytes:v23 length:v24 attributeStride:v40[v18 + 62] atIndex:v18];
      }

      else
      {
        [v17 setVertexBytes:v23 length:v24 atIndex:v18];
      }
    }

    else
    {
      v36 = v40[v18];
      entry = find_entry(v7, &v36, 8uLL, 0);
      if (*entry && (v26 = *(*entry + 32)) != 0)
      {
        v27 = atomic_load((v26 + 56));
        v28 = (v26 + (~(v27 >> 2) & 8));
      }

      else
      {
        v28 = &dword_8;
      }

      v29 = *v28;
      if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLBuffer])
      {
        v30 = v40[v18 + 31];
        if ((v39 & v21) != 0)
        {
          [v17 setVertexBuffer:v29 offset:v30 attributeStride:v40[v18 + 62] atIndex:v18];
        }

        else
        {
          [v17 setVertexBuffer:v29 offset:v30 atIndex:v18];
        }
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLAccelerationStructure])
      {
        [v17 setVertexAccelerationStructure:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLIntersectionFunctionTable])
      {
        [v17 setVertexIntersectionFunctionTable:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLVisibleFunctionTable])
      {
        [v17 setVertexVisibleFunctionTable:v29 atBufferIndex:v18];
      }
    }

    v19 = 0;
    v18 = 1;
  }

  while ((v20 & 1) != 0);
  if (v41)
  {
    v36 = v41;
    v31 = find_entry(v7, &v36, 8uLL, 0);
    if (*v31 && (v32 = *(*v31 + 32)) != 0)
    {
      v33 = atomic_load((v32 + 56));
      v34 = (v32 + (~(v33 >> 2) & 8));
    }

    else
    {
      v34 = &dword_8;
    }

    [v17 setRenderPipelineState:*v34];
  }

  apr_pool_destroy(newpool);
}

id FindMetalLayerWithAddress(void *a1)
{
  os_unfair_lock_lock(&s_layerMapLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [s_layerStreamMap keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (v7 == a1)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  os_unfair_lock_unlock(&s_layerMapLock);

  return v8;
}

id AllMetalLayers()
{
  os_unfair_lock_lock(&s_layerMapLock);
  v0 = [s_layerStreamMap keyEnumerator];
  v1 = MakeLayerInfos(v0);

  os_unfair_lock_unlock(&s_layerMapLock);

  return v1;
}

id MakeLayerInfos(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = objc_alloc_init(DYGTCAMetalLayerInfo);
        v10 = [v8 device];
        [v9 setDeviceAddress:v10];

        v11 = [v8 device];
        v12 = [v11 traceStream];
        if (v12)
        {
          v13 = *v12;
        }

        else
        {
          v13 = 0;
        }

        [v9 setDeviceStreamRef:v13];

        [v9 setLayerAddress:v8];
        [v9 setLayerStreamRef:{objc_msgSend(v8, "streamReference")}];
        [v8 frame];
        [v9 setFrame:?];
        v14 = [v8 name];
        [v9 setName:v14];

        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t CaptureCA()
{
  v0 = [[NSMapTable alloc] initWithKeyOptions:2 valueOptions:0 capacity:8];
  v1 = s_layerStreamMap;
  s_layerStreamMap = v0;

  return _objc_addWillInitializeClassFunc();
}

Class WrapCA(uint64_t a1, objc_class *a2)
{
  result = NSClassFromString(@"CAMetalLayer");
  if (result == a2)
  {
    v4 = objc_opt_class();
    v5 = NSSelectorFromString(@"init");
    InstanceMethod = class_getInstanceMethod(v4, v5);
    CAMetalLayer_initIMP = method_setImplementation(InstanceMethod, CAMetalLayer_init);
    v7 = objc_opt_class();
    v8 = NSSelectorFromString(@"shimDrawable:");
    v9 = class_getInstanceMethod(v7, v8);
    v10 = objc_opt_class();
    if (v9)
    {
      v11 = NSSelectorFromString(@"shimDrawable:");
      v12 = &CAMetalLayer_shimDrawableIMP;
      v13 = CAMetalLayer_shimDrawable;
    }

    else
    {
      v11 = "nextDrawable";
      v12 = &CAMetalLayer_nextDrawableIMP;
      v13 = CAMetalLayer_nextDrawable;
    }

    v14 = v13;
    v15 = class_getInstanceMethod(v10, v11);
    *v12 = method_setImplementation(v15, v14);
    v16 = objc_opt_class();
    v17 = NSSelectorFromString(@"dealloc");
    v18 = class_getInstanceMethod(v16, v17);
    CAMetalLayer_deallocIMP = method_setImplementation(v18, CAMetalLayer_dealloc);
    v19 = objc_opt_class();
    class_addMethod(v19, "traceContext", traceContextIMP, "^{GTTraceContext}@:");
    v20 = objc_opt_class();
    class_addMethod(v20, "traceStream", traceStreamIMP, "^{GTTraceStream}@:");
    v21 = objc_opt_class();
    class_addMethod(v21, "streamReference", streamReferenceIMP, "Q@:");
    v22 = objc_opt_class();
    class_addMethod(v22, "baseObject", baseObjectIMP, "@@:");
    v23 = objc_opt_class();
    class_addMethod(v23, "touch", touchIMP, "v@:");
    v24 = objc_opt_class();

    return class_addProtocol(v24, &OBJC_PROTOCOL___CaptureMTLObject);
  }

  return result;
}

uint64_t touchIMP(void *a1)
{
  v1 = StreamForLayer(a1);
  result = mach_absolute_time();
  if (v1)
  {
    v3 = atomic_load(v1 + 7);
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong(v1 + 7, &v4, v3 & 0x3F | result & 0xFFFFFFFFFFFFFFC0);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  return result;
}

id StreamForLayer(void *a1)
{
  v1 = a1;
  v2 = os_unfair_lock_trylock(&s_layerMapLock);
  v3 = [s_layerStreamMap objectForKey:v1];

  if (v2)
  {
    os_unfair_lock_unlock(&s_layerMapLock);
  }

  if (v3)
  {
    v4 = [v3 pointerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id streamReferenceIMP(void *a1)
{
  result = StreamForLayer(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t CAMetalLayer_dealloc(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = StreamForLayer(v3);
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&s_layerMapLock);
    [s_layerStreamMap removeObjectForKey:v3];
    v6 = [s_layerStreamMap keyEnumerator];
    v7 = MakeLayerInfos(v6);

    os_unfair_lock_unlock(&s_layerMapLock);
    GTMTLGuestAppClientUpdateCAMetalLayerInfo(g_guestAppClientMTL, v7);
    GTTelemetry_removeStreamRef([v3 streamReference]);
    GTTraceContext_closeStream(g_ctx, v5);
  }

  v8 = CAMetalLayer_deallocIMP;

  return v8(v3, a2);
}

CaptureMTLDrawable *CAMetalLayer_nextDrawable(void *a1, uint64_t a2)
{
  v4 = OpenLayerStream(a1);
  v5 = g_ctx;
  if (v4)
  {
    v6 = *v4;
  }

  else
  {
    v6 = 0;
  }

  v25 = 0u;
  v22 = g_ctx;
  v23 = 0;
  add = atomic_fetch_add((g_ctx + 80), 1uLL);
  s();
  v8 = v7;
  v9 = *v7;
  *v7 = v10;
  *&v25 = v9;
  BYTE8(v25) = *(v7 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  *(v7 + 8) = BYTE8(v25) | 3;
  v11 = CAMetalLayer_nextDrawableIMP(a1, a2);
  if (v11)
  {
    v12 = [[CaptureMTLDrawable alloc] initWithBaseObject:v11 captureContext:v5];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v22, [(CaptureMTLDrawable *)v12 traceStream]);
  v13 = v23;
  *(v23 + 8) = -7166;
  v14 = BYTE9(v25);
  if (BYTE9(v25) > 0x30uLL)
  {
    v16 = *(*(&v22 + 1) + 24);
    v17 = BYTE10(v25);
    ++BYTE10(v25);
    v15 = GTTraceMemPool_allocateBytes(v16, add, v17 | 0x1000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v25));
    BYTE9(v25) += 16;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLDrawable *)v12 traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = v6;
  *(v15 + 1) = var0;
  v20 = v23;
  *v8 = v25;
  *(v8 + 8) = BYTE8(v25);
  *(v20 + 15) |= 8u;

  return v12;
}

uint64_t *OpenLayerStream(void *a1)
{
  v1 = a1;
  v2 = StreamForLayer(v1);
  if (!v2)
  {
    v2 = GTTraceContext_openStream(g_ctx, v1, v1);
    os_unfair_lock_lock(&s_layerMapLock);
    v3 = s_layerStreamMap;
    v4 = [NSValue valueWithPointer:v2];
    [v3 setObject:v4 forKey:v1];

    v5 = [s_layerStreamMap keyEnumerator];
    v6 = MakeLayerInfos(v5);

    os_unfair_lock_unlock(&s_layerMapLock);
    GTMTLGuestAppClientUpdateCAMetalLayerInfo(g_guestAppClientMTL, v6);
    GTTelemetry_addStreamRef([v1 streamReference]);
    v7 = MTLCreateSystemDefaultDevice();
    v8 = g_ctx;
    v9 = v7;
    if (v2)
    {
      v10 = *v2;
    }

    else
    {
      v10 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(v8, &v23);
    v11 = v24;
    *(v24 + 8) = -7163;
    v12 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v14 = *(*(&v23 + 1) + 24);
      v15 = BYTE10(v25);
      ++BYTE10(v25);
      v13 = GTTraceMemPool_allocateBytes(v14, *(&v24 + 1), v15 | 0x1800000000) + 16;
      v12 = v15;
    }

    else
    {
      v13 = (v11 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v11 + 13) = v12;
    v16 = [v9 traceStream];
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v9 baseObject];

    v19 = SaveMTLDeviceDescriptor(&v23, v18);
    *v13 = v10;
    *(v13 + 1) = v17;
    v13[16] = v19;
    *(v13 + 17) = 0;
    *(v13 + 5) = 0;

    s();
    *v20 = v21;
    *(v20 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  return v2;
}

CaptureMTLDrawable *CAMetalLayer_shimDrawable(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = OpenLayerStream(a1);
  v6 = g_ctx;
  if (v5)
  {
    v7 = *v5;
  }

  else
  {
    v7 = 0;
  }

  v25 = 0u;
  v22 = g_ctx;
  v23 = 0;
  add = atomic_fetch_add((g_ctx + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v25 = v10;
  BYTE8(v25) = *(v8 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  *(v8 + 8) = BYTE8(v25) | 3;
  if (v4)
  {
    v12 = [[CaptureMTLDrawable alloc] initWithBaseObject:v4 captureContext:v6];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v22, [(CaptureMTLDrawable *)v12 traceStream]);
  v13 = v23;
  *(v23 + 8) = -7166;
  v14 = BYTE9(v25);
  if (BYTE9(v25) > 0x30uLL)
  {
    v16 = *(*(&v22 + 1) + 24);
    v17 = BYTE10(v25);
    ++BYTE10(v25);
    v15 = GTTraceMemPool_allocateBytes(v16, add, v17 | 0x1000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v25));
    BYTE9(v25) += 16;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLDrawable *)v12 traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = v7;
  *(v15 + 1) = var0;
  v20 = v23;
  *v9 = v25;
  *(v9 + 8) = BYTE8(v25);
  *(v20 + 15) |= 8u;

  return v12;
}

id CAMetalLayer_init()
{
  v0 = CAMetalLayer_initIMP();
  OpenLayerStream(v0);

  return v0;
}

id ColorSpaceData(CGColorSpace *a1)
{
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = CGColorSpaceCopyPropertyList(a1);
    if (v3)
    {
      v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0, v7, v8];
      HIDWORD(v8) = [v4 length];
      v5 = [NSMutableData dataWithBytes:&v7 length:16];
      [v5 appendData:v4];
    }

    else
    {
      v5 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void GTEncodeMetalLayers(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  if ((dword_31F7C8 & 0x20000000) != 0)
  {
    v4 = 1;
  }

  else
  {
    v2 = +[CADisplay mainDisplay];
    v3 = [v2 currentOrientation];
    if ([v3 isEqualToString:@"rot0"])
    {
      v4 = 1;
    }

    else if ([v3 isEqualToString:@"rot90"])
    {
      v4 = 4;
    }

    else if ([v3 isEqualToString:@"rot180"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"rot270"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  v5 = *(a1 + 8);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x694300000000;
  *(v5 + 40) = 0;
  *(v5 + 48) = v4;
  *v5 = 0xFFFFE40D00000034;
  *(v5 + 8) = 0;
  v6 = *(a1 + 8);
  v7 = v6[8];
  v6[8] = v7 | 0x10004;
  v8 = *(a1 + 24);
  v9 = *v6;
  if ((v7 & 0x1000) != 0)
  {
    v11 = v6;
    v10 = *v6;
    do
    {
      v11 = (v11 + v9);
      v9 = *v11;
      v10 += v9;
    }

    while ((*(v11 + 33) & 0x20) == 0);
  }

  else
  {
    v10 = *v6;
  }

  v12 = objc_autoreleasePoolPush();
  [*(v8 + 8) appendBytes:v6 length:v10];
  objc_autoreleasePoolPop(v12);
  os_unfair_lock_lock(&s_layerMapLock);
  v13 = [NSMutableArray alloc];
  v14 = [v13 initWithCapacity:{objc_msgSend(s_layerStreamMap, "count")}];
  memset(&v104, 0, 64);
  v15 = s_layerStreamMap;
  v16 = [v15 countByEnumeratingWithState:&v104 objects:v105 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = **&v104.m13;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (**&v104.m13 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 addObject:{*(*&v104.m12 + 8 * i), v91}];
      }

      v17 = [v15 countByEnumeratingWithState:&v104 objects:v105 count:16];
    }

    while (v17);
  }

  os_unfair_lock_unlock(&s_layerMapLock);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v14;
  v20 = [obj countByEnumeratingWithState:&v96 objects:v115 count:16];
  v21 = v91;
  if (v20)
  {
    v22 = v20;
    v23 = *v97;
    height = CGSizeZero.height;
    do
    {
      v25 = 0;
      do
      {
        if (*v97 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v96 + 1) + 8 * v25);
        context = objc_autoreleasePoolPush();
        v27 = ColorSpaceData([v26 colorspace]);
        v28 = v26;
        memset(v105, 0, sizeof(v105));
        v106 = 0u;
        memset(&v107, 0, sizeof(v107));
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0;
        v29 = [v28 device];
        if (!v29)
        {
          v29 = MTLCreateSystemDefaultDevice();
        }

        v30 = [v29 streamReference];
        *(&v106 + 1) = v30;
        BYTE2(v114) = [v28 framebufferOnly];
        LOWORD(v114) = [v28 pixelFormat];
        [v28 drawableSize];
        v33 = v32;
        width = CGSizeZero.width;
        if (CGSizeZero.width == v33 && height == v31)
        {
          [v28 bounds];
          v37 = v36;
          [v28 contentsScale];
          v33 = v38 * v37;
          [v28 bounds];
          v40 = v39;
          [v28 contentsScale];
          v31 = width * v40;
        }

        *&v108 = v33;
        *(&v108 + 1) = v31;
        [v28 bounds];
        v42 = v41;
        v44 = v43;
        *(&v110 + 1) = v45;
        *&v111 = v46;
        *(&v111 + 1) = v41;
        *&v112 = v43;
        [v28 contentsScale];
        *&v110 = v47;
        if (os_variant_has_internal_content() && IsCompositorProcess_onceToken != -1)
        {
          dispatch_once(&IsCompositorProcess_onceToken, &__block_literal_global_7261);
        }

        if ((IsCompositorProcess_isCompositorProcess & 1) != 0 || (v48 = NSClassFromString(@"UIScreen")) == 0)
        {
          m14 = 240.0;
          m13 = 320.0;
        }

        else
        {
          v49 = v48;
          [(objc_class *)v48 performSelector:sel_getUid("mainScreen")];
          v94 = v29;
          v50 = v27;
          v51 = v30;
          v52 = v22;
          v54 = v53 = v23;
          v55 = NSSelectorFromString(@"bounds");
          v56 = [(objc_class *)v49 instanceMethodSignatureForSelector:v55];
          v57 = [NSInvocation invocationWithMethodSignature:v56];

          [v57 setSelector:v55];
          [v57 invokeWithTarget:v54];
          memset(&v104, 0, 32);
          [v57 getReturnValue:&v104];
          if (v104.m13 >= v104.m14)
          {
            m13 = v104.m13;
          }

          else
          {
            m13 = v104.m14;
          }

          if (v104.m13 >= v104.m14)
          {
            m14 = v104.m14;
          }

          else
          {
            m14 = v104.m13;
          }

          v21 = v91;
          v23 = v53;
          v22 = v52;
          v30 = v51;
          v27 = v50;
          v29 = v94;
        }

        v60 = v28;
        memset(&v104, 0, sizeof(v104));
        [v60 position];
        v62 = v61;
        [v60 position];
        v64 = v63;
        [v60 zPosition];
        CATransform3DMakeTranslation(&v104, v62, v64, v65);
        memset(&v100, 0, sizeof(v100));
        if (v60)
        {
          [v60 transform];
        }

        else
        {
          memset(&a, 0, sizeof(a));
        }

        b = v104;
        CATransform3DConcat(&v100, &a, &b);
        v66 = [v60 superlayer];
        if (v66)
        {
          v67 = v66;
          do
          {
            [v67 anchorPoint];
            v69 = v68;
            [v67 bounds];
            v71 = v70;
            [v67 anchorPoint];
            v73 = v72;
            [v67 bounds];
            v74 = -(v69 * v71);
            v76 = -(v73 * v75);
            [v67 anchorPointZ];
            CATransform3DMakeTranslation(&a, v74, v76, -v77);
            v104 = a;
            b = v100;
            v101 = a;
            CATransform3DConcat(&a, &b, &v101);
            v100 = a;
            [v67 transform];
            v101 = v100;
            CATransform3DConcat(&a, &v101, &b);
            v100 = a;
            [v67 sublayerTransform];
            v101 = v100;
            CATransform3DConcat(&a, &v101, &b);
            v100 = a;
            [v67 position];
            v79 = v78;
            [v67 position];
            v81 = v80;
            [v67 zPosition];
            CATransform3DMakeTranslation(&a, v79, v81, v82);
            v104 = a;
            b = v100;
            v101 = a;
            CATransform3DConcat(&a, &b, &v101);
            v100 = a;
            v83 = [v67 superlayer];

            v67 = v83;
          }

          while (v83);
        }

        if (v42 >= v44)
        {
          v84 = v44;
        }

        else
        {
          v84 = v42;
        }

        if (v42 < v44)
        {
          v42 = v44;
        }

        v107 = v100;
        *(&v112 + 1) = m13 / v42;
        *&v113 = m14 / v84;
        [v60 anchorPoint];
        *&v109 = v85;
        *(&v109 + 1) = v86;

        *(&v113 + 1) = [v27 bytes];
        if (v30 == *(v21 + 56))
        {
          v87 = *(a1 + 16);
          *&v104.m11 = *a1;
          *&v104.m13 = v87;
          *&v104.m21 = *(a1 + 32);
          v104.m23 = *(a1 + 48);
          if ((dword_31F7C8 & 0x10000000) != 0)
          {
            v88 = StreamForLayer(v60);
            if (v88)
            {
              v89 = atomic_load(v88 + 7);
              v90 = (v88 + (~(v89 >> 2) & 8));
            }

            else
            {
              v90 = &dword_8;
            }

            v60 = *v90;
          }

          *&v104.m11 = v60;
          WriteGTMTLSMLayer(&v104, v21, v105);
        }

        objc_autoreleasePoolPop(context);
        v25 = v25 + 1;
      }

      while (v25 != v22);
      v22 = [obj countByEnumeratingWithState:&v96 objects:v115 count:16];
    }

    while (v22);
  }
}

void *GTMTLDescriptorAllocator_copyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  error = 0;
  v6 = [[NSData alloc] initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v7 = CFPropertyListCreateWithData(0, v6, 0, 0, &error);
  if (error)
  {
    v8 = CFErrorCopyDescription(error);
    v9 = v8;
    if (s_logUsingOsLog == 1)
    {
      v10 = gt_tagged_log(3);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
        *buf = 136315138;
        v21 = CStringPtr;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "warning: %s", buf, 0xCu);
      }
    }

    else
    {
      v12 = __stderrp;
      v10 = [NSString stringWithFormat:@"warning: %s", CFStringGetCStringPtr(v8, 0x8000100u)];
      fprintf(v12, "%s\n", [v10 UTF8String]);
    }

    CFRelease(v9);
    CFRelease(error);
  }

  if (!v7)
  {
    return 0;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v15 = [v14 bytes];
  v16 = [v14 length];
  if (v16)
  {
    v17 = *(a1 + 592);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 592) += v16;
  if (a4)
  {
    memcpy(v17, v15, v16);
  }

  objc_autoreleasePoolPop(v13);
  return v17;
}

uint64_t GTAccelerationStructureDescriptorDownloader_needsDownloader(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = atomic_load((v1 + 4));
      v4 = v2 + (v3 >> 6) - 1;
      if (v4 > 0)
      {
        break;
      }

      v1 = *(v1 + 40);
      v2 = v4;
      if (!v1)
      {
        v2 = v4;
LABEL_8:
        v5 = v2 | (v4 << 32);
        goto LABEL_9;
      }
    }

    v4 = 0;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:
  while (v1)
  {
    v6 = v1 + 64 + ((HIDWORD(v5) - v5) << 6);
    if ((*(v6 + 15) & 8) == 0)
    {
      break;
    }

    v7 = *(v6 + 8);
    result = 1;
    if ((v7 + 15647) <= 9 && ((1 << (v7 + 31)) & 0x207) != 0)
    {
      return result;
    }

    v10 = (v7 + 15524) > 0x3B || ((1 << (v7 - 92)) & 0xC00000000000003) == 0;
    if (!v10 || v7 == -15366)
    {
      return result;
    }

    v12 = atomic_load((v1 + 4));
    v13 = (HIDWORD(v5) + 1);
    v14 = v5 + (v12 >> 6) - 1;
    v5 = (v13 << 32) | v5;
    if (v13 == v14)
    {
      v5 = (v13 << 32) | v13;
      v1 = *(v1 + 40);
    }
  }

  return 0;
}

apr_pool_t **GTAccelerationStructureDescriptorDownloader_make(void *a1, void *a2, apr_pool_t *a3, apr_pool_t *a4, apr_pool_t *a5)
{
  v10 = a2;
  v11 = DEVICEOBJECT(a1);
  v12 = apr_palloc(a5, 0x28uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 0;
    *v12 = 0u;
    *(v12 + 1) = 0u;
  }

  objc_storeStrong(v12 + 4, a2);
  *v13 = a5;
  v13[1] = a3;
  v13[2] = a4;
  v14 = objc_alloc_init(NSMutableSet);
  v15 = v13[3];
  v13[3] = v14;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __GTAccelerationStructureDescriptorDownloader_make_block_invoke;
  block[3] = &unk_2F2508;
  v20 = v11;
  v16 = s_accelerationStructureDescriptorDownloaderPipelinesToken_7822;
  v17 = v11;
  if (v16 != -1)
  {
    dispatch_once(&s_accelerationStructureDescriptorDownloaderPipelinesToken_7822, block);
  }

  return v13;
}

void BuildPipelines(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MTLCompileOptions);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLForResource:@"default" withExtension:@"metallib"];
    if (v5)
    {
      v33 = 0;
      v6 = [v1 newLibraryWithURL:v5 error:&v33];
      v7 = v33;
      if (v6)
      {
        v8 = [v6 newFunctionWithName:@"CopyAccelerationStructureState"];
        v32 = v7;
        v9 = [v1 newComputePipelineStateWithFunction:v8 error:&v32];
        v10 = v32;

        if (v9)
        {
          v31[2] = v10;
          v29 = [v6 newFunctionWithName:@"ClearAccelerationStructureChildren"];
          v11 = [v1 newComputePipelineStateWithFunction:? error:?];
          v12 = v10;

          if (v11)
          {
            obj = v11;
            v31[1] = v12;
            v27 = [v6 newFunctionWithName:@"FillInstanceHeader"];
            v13 = [v1 newComputePipelineStateWithFunction:? error:?];
            v14 = v12;

            if (v13)
            {
              v15 = [v6 newFunctionWithName:@"GetAccelerationStructureChildren"];
              if (v15)
              {
                v25 = v8;
                v31[0] = v14;
                v16 = [v1 newComputePipelineStateWithFunction:v15 error:v31];
                v26 = v31[0];

                v17 = v16;
                if (v16)
                {
                  v18 = [v6 newFunctionWithName:@"MarkAccelerationStructureChildren"];
                  v19 = v18;
                  if (v18)
                  {
                    v23 = v18;
                    v24 = v15;
                    v20 = v13;
                    v30 = v26;
                    v21 = [v1 newComputePipelineStateWithFunction:v18 error:&v30];
                    v22 = v30;

                    v8 = v25;
                    if (v21)
                    {
                      objc_storeStrong(&s_downloaderPipelines_0_7829, v20);
                      objc_storeStrong(&s_downloaderPipelines_1_7830, v9);
                      objc_storeStrong(&s_downloaderPipelines_2_7831, obj);
                      objc_storeStrong(&s_downloaderPipelines_3_7832, v17);
                      objc_storeStrong(&s_downloaderPipelines_4_7833, v21);
                    }

                    v19 = v23;
                    v26 = v22;
                    v13 = v20;
                    v15 = v24;
                  }

                  else
                  {
                    v8 = v25;
                  }
                }

                else
                {
                  v8 = v25;
                }

                v14 = v26;
              }
            }

            v12 = v14;
            v11 = obj;
          }

          v10 = v12;
        }

        v7 = v10;
      }
    }
  }
}

void GTAccelerationStructureDescriptorDownloader_preProcessFunc(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v4 > -15524)
  {
    if (v4 > -15466)
    {
      if (v4 != -15465)
      {
        if (v4 != -15366)
        {
          return;
        }

        goto LABEL_13;
      }
    }

    else if (v4 != -15523)
    {
      v6 = -15466;
      goto LABEL_16;
    }

LABEL_17:
    v5 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v3) + 1);
    goto LABEL_18;
  }

  if (v4 > -15639)
  {
    if (v4 != -15638)
    {
      v6 = -15524;
      goto LABEL_16;
    }

LABEL_13:
    v5 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v3) + 2);
    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  if ((v4 + 15646) >= 2)
  {
    v6 = -15647;
LABEL_16:
    if (v4 != v6)
    {
      return;
    }

    goto LABEL_17;
  }

  v5 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v3) + 2);
LABEL_18:
  v7 = AccelerationStructureByStreamRef(a1, v5);
  if (v7)
  {
    v8 = v7;
    [*(a1 + 24) addObject:v7];
    v7 = v8;
  }
}

id AccelerationStructureByStreamRef(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [NSNumber numberWithUnsignedLongLong:a2];
    v4 = [v2 objectForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void GTAccelerationStructureDescriptorDownloader_allocateStateBuffers(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 24);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          v10 = v9;
          v11 = v3;
          v12 = [v10 stateBuffer];
          if (!v12)
          {
            v13 = [v11 newBufferWithLength:8 options:0];
            v14 = [v13 contents];
            v15 = v14[1] & 0xFFFFFFF0;
            *v14 = 0;
            v14[1] = v15;
            [v10 setStateBuffer:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void GTAccelerationStructureDescriptorDownloader_processFunc(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  newpool = 0;
  v6 = *(a1 + 8);
  apr_pool_create_ex(&newpool, *a1, 0, 0);
  v7 = *(a2 + 8);
  if (v7 <= -15525)
  {
    if (v7 > -15646)
    {
      if (v7 != -15645)
      {
        if (v7 != -15638)
        {
          goto LABEL_33;
        }

        goto LABEL_6;
      }

      v25 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v10 = AccelerationStructureByStreamRef(a1, *(v25 + 1));
      v11 = AccelerationStructureByStreamRef(a1, *(v25 + 2));
      GTAccelerationStructureDescriptorDownloader_processCopy_7848(v5, v10, v11, 1);
    }

    else
    {
      if (v7 == -15647)
      {
        v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
        v17 = AccelerationStructureByStreamRef(a1, *(v16 + 1));
        if (v17)
        {
          v18 = GTTraceFunc_argumentBytesWithMap(a2, v16[32], v6);
          v38 = (v18[97] >> 2) & 1;
          [v5 setBytes:&v38 length:4 atIndex:7];
          v19 = v18[96];
          switch(v19)
          {
            case 1:
              ClearAccelerationStructureChildren(v5, v17, v38 != 0);
              break;
            case 2:
              v33 = [v17 stateBuffer];

              if (v33)
              {
                FillInstanceAccelerationStructureHeader(v5, v17, *v18, v38 != 0);
              }

              break;
            case 3:
              v20 = [v17 stateBuffer];

              if (v20)
              {
                v21 = AccelerationStructureByStreamRef(a1, *v18);
                v22 = v21;
                if (v21)
                {
                  v23 = DEVICEOBJECT(v21);

                  [v5 insertDebugSignpost:@"BuildInstanceIndirect"];
                  [v5 setBuffer:v23 offset:*(v18 + 1) atIndex:4];
                  v24 = [v17 stateBuffer];
                  [v5 setBuffer:v24 offset:0 atIndex:1];

                  [v5 setBytes:&v38 length:4 atIndex:7];
                  [v5 setComputePipelineState:s_downloaderPipelines_0_7829];
                  v36 = vdupq_n_s64(1uLL);
                  v37 = 1;
                  v34 = v36;
                  v35 = 1;
                  [v5 dispatchThreads:&v36 threadsPerThreadgroup:&v34];
                }
              }

              break;
          }
        }

        goto LABEL_33;
      }

      if (v7 != -15646)
      {
        goto LABEL_33;
      }

      v9 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v10 = AccelerationStructureByStreamRef(a1, *(v9 + 1));
      v11 = AccelerationStructureByStreamRef(a1, *(v9 + 2));
      GTAccelerationStructureDescriptorDownloader_processCopy_7848(v5, v10, v11, 0);
    }

    goto LABEL_33;
  }

  if (v7 <= -15467)
  {
    if (v7 != -15524)
    {
      if (v7 != -15523)
      {
        goto LABEL_33;
      }

      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v13 = AccelerationStructureByStreamRef(a1, *(v12 + 1));
      v14 = [v13 captureDescriptor];
      v15 = ([v14 usage] >> 2) & 1;

      ClearAccelerationStructureChildren(v5, v13, v15);
LABEL_32:

      goto LABEL_33;
    }

LABEL_26:
    v26 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
    v13 = AccelerationStructureByStreamRef(a1, *(v26 + 1));
    v27 = [v13 captureDescriptor];
    v28 = [v27 usage];

    v29 = GTTraceFunc_argumentBytesWithMap(a2, v26[32], v6);
    FillInstanceAccelerationStructureHeader(v5, v13, *v29, (v28 >> 2) & 1);
    goto LABEL_32;
  }

  switch(v7)
  {
    case -15466:
      goto LABEL_26;
    case -15465:
      v30 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v13 = AccelerationStructureByStreamRef(a1, *(v30 + 1));
      v31 = GTTraceFunc_argumentBytesWithMap(a2, v30[32], v6);
      if (v31)
      {
        v32 = (v31[97] >> 2) & 1;
      }

      else
      {
        v32 = 0;
      }

      ClearAccelerationStructureChildren(v5, v13, v32);
      goto LABEL_32;
    case -15366:
LABEL_6:
      v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      GTAccelerationStructureDescriptorDownloader_processRefit_7849(a1, v5, *(v8 + 1), *(v8 + 2));
      break;
  }

LABEL_33:
  apr_pool_destroy(newpool);
}

void ClearAccelerationStructureChildren(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 stateBuffer];

  if (v7)
  {
    v13 = a3;
    v14 = 1;
    [v5 insertDebugSignpost:@"ClearPrimitiveAccelerationStructureChildren"];
    [v5 setComputePipelineState:s_downloaderPipelines_2_7831];
    v8 = [v6 stateBuffer];
    [v5 setBuffer:v8 offset:0 atIndex:1];

    [v5 setBytes:&v14 length:4 atIndex:5];
    [v5 setBytes:&v13 length:4 atIndex:7];
    v11 = vdupq_n_s64(1uLL);
    v12 = 1;
    v9 = v11;
    v10 = 1;
    [v5 dispatchThreads:&v11 threadsPerThreadgroup:&v9];
  }
}

void FillInstanceAccelerationStructureHeader(void *a1, void *a2, int a3, int a4)
{
  v12 = a4;
  v13 = a3;
  v5 = a2;
  v6 = a1;
  [v6 insertDebugSignpost:@"FillInstanceAccelerationStructureHeader"];
  [v6 setComputePipelineState:s_downloaderPipelines_0_7829];
  [v6 setBytes:&v13 length:4 atIndex:4];
  v7 = [v5 stateBuffer];

  [v6 setBuffer:v7 offset:0 atIndex:1];
  [v6 setBytes:&v12 length:4 atIndex:7];
  v10 = vdupq_n_s64(1uLL);
  v11 = 1;
  v8 = v10;
  v9 = 1;
  [v6 dispatchThreads:&v10 threadsPerThreadgroup:&v8];
}

void GTAccelerationStructureDescriptorDownloader_processCopy_7848(void *a1, void *a2, void *a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  v20 = a4;
  if (v8)
  {
    if (v9)
    {
      v11 = [v8 stateBuffer];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 stateBuffer];

        if (v13)
        {
          [v7 insertDebugSignpost:@"CopyAccelerationStructureState"];
          [v7 setComputePipelineState:s_downloaderPipelines_1_7830];
          v14 = [v8 stateBuffer];
          [v7 setBuffer:v14 offset:0 atIndex:0];

          v15 = [v10 stateBuffer];
          [v7 setBuffer:v15 offset:0 atIndex:1];

          [v7 setBytes:&v20 length:1 atIndex:6];
          v18 = vdupq_n_s64(1uLL);
          v19 = 1;
          v16 = v18;
          v17 = 1;
          [v7 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
        }
      }
    }
  }
}

void GTAccelerationStructureDescriptorDownloader_processRefit_7849(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 && a3 != a4)
  {
    v7 = a2;
    v9 = AccelerationStructureByStreamRef(a1, a3);
    v8 = AccelerationStructureByStreamRef(a1, a4);
    GTAccelerationStructureDescriptorDownloader_processCopy_7848(v7, v9, v8, 0);
  }
}

void GTAccelerationStructureDescriptorDownloader_postProcess(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a6;
  if (a5)
  {
    v16 = [*(a1 + 24) copy];
    if ([v16 count])
    {
      v17 = g_signpostLog;
      if (os_signpost_enabled(g_signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_postProcess", &unk_2E94FB, buf, 2u);
      }

      v18 = [v16 count];
      add = atomic_fetch_add((a7 + 80), v18);
      v20 = [v15 device];
      v21 = [v20 dispatchGroup];
      dispatch_group_enter(v21);

      v22 = g_signpostLog;
      if (os_signpost_enabled(g_signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_postProcess", &unk_2E94FB, buf, 2u);
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __GTAccelerationStructureDescriptorDownloader_postProcess_block_invoke;
      v24[3] = &unk_2F1F88;
      v28 = add;
      v29 = v18;
      v25 = v16;
      v30 = a7;
      v26 = v15;
      v27 = v20;
      v23 = v20;
      [v13 notifyListener:v14 atValue:a4 block:v24];
    }

    else
    {
      [v13 setSignaledValue:a4 + 1];
    }
  }

  else
  {
    [v13 setSignaledValue:a4 + 1];
  }
}

id GTAccelerationStructureDescriptorDownloader_children(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v71 = objc_autoreleasePoolPush();
  LODWORD(a3) = GTAccelerationStructureDescriptorDownloader_childrenCount(v6);
  v70 = [v7 objectAtIndexedSubscript:0];
  v8 = 12 * [v70 count];
  v9 = v6;
  v10 = v7;
  v11 = [v5 commandBuffer];
  [v11 setLabel:@"com.apple.internal.gputools.DownloadAccelerationStructure"];
  v12 = [v11 device];
  v13 = GTAccelerationStructureDescriptorDownloader_childrenCount(v9);
  v14 = [v10 objectAtIndexedSubscript:0];
  v68 = v10;
  v15 = [v10 objectAtIndexedSubscript:1];
  v77 = v14;
  v74 = [v14 allValues];
  v78 = v11;
  v75 = [v11 computeCommandEncoder];
  v76 = v15;
  v69 = v9;
  v73 = v12;
  if (v8 >= 8 * a3)
  {
    if (v13)
    {
      v46 = [v12 newBufferWithLength:8 * v13 options:0];
    }

    else
    {
      v46 = 0;
    }

    v47 = v75;
    v48 = v74;
    v49 = v9;
    v90[0] = v13;
    v50 = v46;
    if (v13)
    {
      block = _NSConcreteStackBlock;
      v86 = 3221225472;
      v87 = __GTAccelerationStructureDescriptorDownloader_fillChildrenBuffer_block_invoke;
      v88 = &unk_2F2508;
      v51 = v47;
      v89 = v51;
      if (s_accelerationStructureDescriptorDownloaderPipelinesToken_7822 != -1)
      {
        dispatch_once(&s_accelerationStructureDescriptorDownloaderPipelinesToken_7822, &block);
      }

      v52 = [s_downloaderPipelines_3_7832 threadExecutionWidth];
      [v51 setComputePipelineState:s_downloaderPipelines_3_7832];
      v53 = DEVICEOBJECT(v49);
      [v51 setAccelerationStructure:v53 atBufferIndex:8];

      [v51 setBytes:v90 length:4 atIndex:4];
      [v51 setBuffer:v50 offset:0 atIndex:9];
      v83 = v90[0];
      v84 = vdupq_n_s64(1uLL);
      v81 = v52;
      v82 = v84;
      [v51 dispatchThreads:&v83 threadsPerThreadgroup:&v81];
    }

    [v47 endEncoding];
    [v78 commit];
    [v78 waitUntilCompleted];
    v54 = v77;
    v36 = v76;
    v55 = v50;
    if ([v55 length] < 8 * v13)
    {
      v44 = 0;
      v45 = v55;
      v57 = v70;
      v56 = v71;
      v58 = v68;
      goto LABEL_38;
    }

    v72 = v55;
    v59 = [v55 contents];
    v79 = v54;
    v33 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v54, "count")}];
    if (v13)
    {
      v60 = v13;
      do
      {
        if (*v59++)
        {
          v62 = [NSNumber numberWithUnsignedLongLong:?];
          v63 = [v36 objectForKeyedSubscript:v62];

          if (v63)
          {
            v64 = [v54 objectForKeyedSubscript:v63];
            if (v64)
            {
              [v33 addObject:v64];
            }
          }
        }

        --v60;
      }

      while (v60);
    }

    v44 = [v33 allObjects];
    v45 = v72;
  }

  else
  {
    v67 = v5;
    v66 = [v15 allKeys];
    v16 = [v66 sortedArrayUsingSelector:"compare:"];
    v17 = [v16 count];
    v18 = [v12 newBufferWithLength:8 * v17 options:0];
    v19 = [v18 contents];
    v20 = v12;
    if (v17)
    {
      v21 = v19;
      for (i = 0; i != v17; ++i)
      {
        v23 = [v16 objectAtIndexedSubscript:i];
        v21[i] = [v23 longLongValue];
      }
    }

    v24 = [v20 newBufferWithLength:4 * v17 options:0];
    v25 = v75;
    v26 = v16;
    v27 = v9;
    v90[0] = v13;
    v28 = v18;
    v29 = v24;
    if (v13)
    {
      block = _NSConcreteStackBlock;
      v86 = 3221225472;
      v87 = __GTAccelerationStructureDescriptorDownloader_markChildren_block_invoke;
      v88 = &unk_2F2508;
      v30 = v25;
      v89 = v30;
      if (s_accelerationStructureDescriptorDownloaderPipelinesToken_7822 != -1)
      {
        dispatch_once(&s_accelerationStructureDescriptorDownloaderPipelinesToken_7822, &block);
      }

      v31 = [s_downloaderPipelines_4_7833 threadExecutionWidth];
      v80 = [v26 count];
      [v30 setComputePipelineState:s_downloaderPipelines_4_7833];
      v32 = DEVICEOBJECT(v27);
      [v30 setAccelerationStructure:v32 atBufferIndex:8];

      [v30 setBytes:v90 length:4 atIndex:4];
      [v30 setBytes:&v80 length:4 atIndex:12];
      [v30 setBuffer:v28 offset:0 atIndex:10];
      [v30 setBuffer:v29 offset:0 atIndex:11];
      v83 = v90[0];
      v84 = vdupq_n_s64(1uLL);
      v81 = v31;
      v82 = v84;
      [v30 dispatchThreads:&v83 threadsPerThreadgroup:&v81];
    }

    v79 = v26;
    [v25 endEncoding];
    [v78 commit];
    [v78 waitUntilCompleted];
    v33 = v77;
    v34 = v76;
    v35 = v29;
    v36 = v28;
    v37 = [v28 contents];
    v72 = v35;
    v38 = [v35 contents];
    for (j = [[NSMutableArray alloc] initWithCapacity:v17]; v17; --v17)
    {
      if (*v38++)
      {
        v41 = [NSNumber numberWithUnsignedLongLong:*v37];
        v42 = [v34 objectForKeyedSubscript:v41];

        if (v42)
        {
          v43 = [v33 objectForKeyedSubscript:v42];
          if (v43)
          {
            [j addObject:v43];
          }
        }
      }

      ++v37;
    }

    v44 = [j copy];

    v45 = v66;
    v5 = v67;
  }

  v57 = v70;
  v56 = v71;
  v58 = v68;
  v54 = v79;
  v55 = v72;
LABEL_38:

  objc_autoreleasePoolPop(v56);

  return v44;
}

uint64_t GTAccelerationStructureDescriptorDownloader_childrenCount(void *a1)
{
  v1 = [a1 stateBuffer];
  v2 = v1;
  if (v1 && [v1 length] >= 8 && (v3 = objc_msgSend(v2, "contents"), (v3[1] & 2) != 0))
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void GTAccelerationStructureDescriptorDownloader_destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
}

void RegisterAccelerationStructure(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = s_accelerationStructuresToken;
  v6 = a1;
  if (v5 != -1)
  {
    dispatch_once(&s_accelerationStructuresToken, &__block_literal_global_8031);
  }

  v8 = [NSNumber numberWithUnsignedLongLong:a2];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  os_unfair_lock_lock(&s_accelerationStructuresLock);
  [s_accelerationStructuresByStreamRef setObject:v6 forKey:v8];

  [s_accelerationStructureGPUResourceIDToStreamRef setObject:v8 forKey:v7];
  os_unfair_lock_unlock(&s_accelerationStructuresLock);
}

id CaptureAccelerationStructures()
{
  if (s_accelerationStructuresToken != -1)
  {
    dispatch_once(&s_accelerationStructuresToken, &__block_literal_global_8031);
  }

  os_unfair_lock_lock(&s_accelerationStructuresLock);
  v0 = [NSMutableDictionary alloc];
  v1 = [v0 initWithCapacity:{objc_msgSend(s_accelerationStructuresByStreamRef, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = s_accelerationStructuresByStreamRef;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [s_accelerationStructuresByStreamRef objectForKey:{v7, v13}];
        if (v8)
        {
          [v1 setObject:v8 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v4);
  }

  v9 = [s_accelerationStructureGPUResourceIDToStreamRef copy];
  os_unfair_lock_unlock(&s_accelerationStructuresLock);
  v10 = [v1 copy];
  v17[0] = v10;
  v17[1] = v9;
  v11 = [NSArray arrayWithObjects:v17 count:2];

  return v11;
}

id CreateIndirectComputeCommandBufferSnapshot(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v9 device];
  v11 = DEVICEOBJECT(v8);

  v12 = [v11 device];
  v13 = [v11 size];
  v14 = [v12 newIndirectCommandBufferWithDescriptor:v7 maxCommandCount:v13 options:0];

  v15 = [v10 computeFunctionCopyIndirectCommandBuffer];
  v16 = [v15 newArgumentEncoderWithBufferIndex:0];

  v17 = [v12 newBufferWithLength:objc_msgSend(v16 options:{"encodedLength"), 0}];
  [v16 setArgumentBuffer:v17 offset:0];
  [v16 setIndirectCommandBuffer:v14 atIndex:0];
  [v16 setIndirectCommandBuffer:v11 atIndex:1];
  v18 = DEVICEOBJECT(v9);

  [v18 useResource:v11 usage:1];
  [v18 useResource:v14 usage:2];
  [v18 setBuffer:v17 offset:0 atIndex:0];
  v19 = [v10 computePipelineCopyIndirectCommandBuffer];
  [v18 setComputePipelineState:v19];
  if ([v12 supportsNonUniformThreadgroupSize])
  {
    v23 = v13;
    v24 = vdupq_n_s64(1uLL);
    *v22 = [v19 threadExecutionWidth];
    *&v22[8] = v24;
    [v18 dispatchThreads:&v23 threadsPerThreadgroup:v22];
  }

  else
  {
    v24 = vdupq_n_s64(1uLL);
    *v22 = v24;
    *&v22[16] = 1;
    v23 = v13;
    [v18 dispatchThreadgroups:&v23 threadsPerThreadgroup:v22];
  }

  if ([v12 supportsComputeMemoryBarrier])
  {
    v25 = v11;
    [v18 memoryBarrierWithResources:&v25 count:1];
  }

  v20 = v17;
  *a4 = v17;

  return v14;
}

void RestoreComputeCommandEncoder(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v3 = [v2 traceContext];
  v4 = [v2 traceStream];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v5 = newpool;
  v6 = apr_hash_make(newpool);
  GTTraceMemPool_buildMemoryMap(v4[3], v6);
  v7 = GTTraceContext_copyStreamMap(v3, v5);
  bzero(v37, 0x2BA0uLL);
  v8 = v4[4];
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = atomic_load((v8 + 4));
      v11 = v9 + (v10 >> 6) - 1;
      if (v11 > 0)
      {
        break;
      }

      v8 = *(v8 + 40);
      v9 = v11;
      if (!v8)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v12 = v9 | (v11 << 32);
  }

  else
  {
    v12 = 0;
  }

  while (v8)
  {
    v13 = v8 + 64 + ((HIDWORD(v12) - v12) << 6);
    if ((*(v13 + 15) & 8) == 0)
    {
      break;
    }

    GTMTLSMCommandEncoder_processTraceFunc(v37, v13, v6);
    v14 = atomic_load((v8 + 4));
    v15 = v12 + (v14 >> 6);
    v16 = (HIDWORD(v12) + 1);
    v12 = (v16 << 32) | v12;
    if (v16 == v15 - 1)
    {
      v12 = (v16 << 32) | v16;
      v8 = *(v8 + 40);
    }
  }

  v17 = DEVICEOBJECT(v2);
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = 1 << v18;
    v22 = v41[v18];
    if ((v39 & (1 << v18)) != 0)
    {
      if (v22)
      {
        v23 = v22 + 16;
      }

      else
      {
        v23 = 0;
      }

      v24 = v41[v18 + 31];
      if ((v40 & v21) != 0)
      {
        [v17 setBytes:v23 length:v24 attributeStride:v41[v18 + 62] atIndex:v18];
      }

      else
      {
        [v17 setBytes:v23 length:v24 atIndex:v18];
      }
    }

    else
    {
      v36 = v41[v18];
      entry = find_entry(v7, &v36, 8uLL, 0);
      if (*entry && (v26 = *(*entry + 32)) != 0)
      {
        v27 = atomic_load((v26 + 56));
        v28 = (v26 + (~(v27 >> 2) & 8));
      }

      else
      {
        v28 = &dword_8;
      }

      v29 = *v28;
      if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLBuffer])
      {
        v30 = v41[v18 + 31];
        if ((v40 & v21) != 0)
        {
          [v17 setBuffer:v29 offset:v30 attributeStride:v41[v18 + 62] atIndex:v18];
        }

        else
        {
          [v17 setBuffer:v29 offset:v30 atIndex:v18];
        }
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLAccelerationStructure])
      {
        [v17 setAccelerationStructure:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLVisibleFunctionTable])
      {
        [v17 setVisibleFunctionTable:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLIntersectionFunctionTable])
      {
        [v17 setIntersectionFunctionTable:v29 atBufferIndex:v18];
      }
    }

    v19 = 0;
    v18 = 1;
  }

  while ((v20 & 1) != 0);
  if (v38)
  {
    v36 = v38;
    v31 = find_entry(v7, &v36, 8uLL, 0);
    if (*v31 && (v32 = *(*v31 + 32)) != 0)
    {
      v33 = atomic_load((v32 + 56));
      v34 = (v32 + (~(v33 >> 2) & 8));
    }

    else
    {
      v34 = &dword_8;
    }

    [v17 setComputePipelineState:*v34];
  }

  apr_pool_destroy(newpool);
}

void InitNewTransport(GTMTLGuestAppClient *a1)
{
  v2 = dispatch_group_create();
  a1->var2 = v2;
  dispatch_group_enter(v2);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(global_queue, block);
}

void ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.gputools.capture", 0);
  dispatch_suspend(v2);
  v3 = GTTransportServiceDaemonConnectionNew();
  v4 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTMTLCaptureService];
  v5 = [[GTMTLCaptureService alloc] initWithGuestApp:*(a1 + 32)];
  v6 = [[GTMTLCaptureServiceXPCDispatcher alloc] initWithService:v5 properties:v4 notifyConnection:v3];
  [v4 setVersion:3];
  [v3 connection];
  if (registerService())
  {
    **(a1 + 32) = v5;
    [v3 registerDispatcher:v6 forPort:{objc_msgSend(v4, "servicePort")}];
  }

  v7 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTMTLTelemetryService];
  v8 = [[GTMTLTelemetryService alloc] initWithGuestApp:*(a1 + 32)];
  v9 = [[GTMTLTelemetryServiceXPCDispatcher alloc] initWithService:v8 properties:v7 notifyConnection:v3];
  [v3 connection];
  if (registerService())
  {
    *(*(a1 + 32) + 8) = v8;
    [v3 registerDispatcher:v9 forPort:{objc_msgSend(v7, "servicePort")}];
  }

  objc_initWeak(&location, v3);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke_2;
  v10[3] = &unk_2F2020;
  objc_copyWeak(&v11, &location);
  [v3 activateWithMessageHandler:v10 andErrorHandler:&__block_literal_global_8459];
  dispatch_resume(v2);
  dispatch_group_leave(*(*(a1 + 32) + 16));
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_A1C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {

    return [result dispatchMessage:a2 replyConnection:result];
  }

  return result;
}

GTMTLGuestAppClient *GTMTLGuestAppClient_initPlatform(uint64_t a1)
{
  v1 = GTCoreAlloc(a1, 0x80uLL);
  InitNewTransport(v1);
  v2 = IOServiceMatching("IOAccelerator");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (!MatchingService)
  {
    v4 = IOServiceMatching("IOAcceleratorES");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
  }

  v1->var4 = MatchingService;
  v1->var10 = objc_alloc_init(NSMutableArray);
  v1->var11 = objc_alloc_init(NSMutableArray);
  v1->var12 = objc_alloc_init(NSMutableArray);
  v1->var7 = 1000000000;
  v1->var9 = 0;
  v1->var17 = 0;
  return v1;
}

uint64_t GTMTLGuestAppClient_release(vm_address_t a1)
{
  IOObjectRelease(*(a1 + 28));
  v2 = mach_task_self_;

  return vm_deallocate(v2, a1, 0x80uLL);
}

void GTMTLCaptureEventBuffer_add(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v13 = a2;
  if ((dword_31F7C8 & 0x8000000) != 0 && *(boundaryTrackerInstance + 20))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __GTMTLCaptureEventBuffer_add_block_invoke;
    block[3] = &unk_2F2508;
    v5 = v3;
    v12 = v5;
    if (GTMTLCaptureEventBuffer_add_onceToken != -1)
    {
      dispatch_once(&GTMTLCaptureEventBuffer_add_onceToken, block);
    }

    if (GTMTLCaptureEventBuffer_add_computePipeline)
    {
      v6 = [v5 computeCommandEncoder];
      [v6 setComputePipelineState:GTMTLCaptureEventBuffer_add_computePipeline];
      [v6 setBuffer:eventBuffer offset:0 atIndex:0];
      [v6 setBuffer:eventBuffer offset:8 atIndex:1];
      [v6 setBytes:&v13 length:8 atIndex:2];
      v9 = vdupq_n_s64(1uLL);
      v10 = 1;
      v7 = v9;
      v8 = 1;
      [v6 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v7];
      [v6 endEncoding];
    }
  }
}

id GTMTLCaptureEventBuffer_getElements()
{
  v0 = [eventBuffer contents];
  if ((dword_31F7C8 & 0x8000000) != 0)
  {
    v1 = [NSData dataWithBytesNoCopy:v0 + 2 length:8 * *v0 freeWhenDone:0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id newDYDeviceInfo()
{
  v0 = objc_alloc_init(DYGTDeviceInfo);
  [v0 setPlatform:2];
  [v0 setRuntimeIdentifier:3735928559];
  if (gethostname(v33, 0x400uLL))
  {
    v1 = 0;
  }

  else
  {
    v1 = [NSString stringWithUTF8String:v33];
  }

  [v0 setName:v1];

  v2 = MGCopyAnswer();
  [v0 setProductType:v2];

  v3 = GSSystemRootDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"/System/Library/CoreServices/SystemVersion.plist"];
  v5 = [[NSDictionary alloc] initWithContentsOfFile:v4];
  v6 = [v5 objectForKey:@"ProductVersion"];
  [v0 setVersion:v6];

  v7 = [v5 objectForKey:@"ProductBuildVersion"];
  [v0 setBuild:v7];

  v8 = [NSBundle bundleWithIdentifier:@"com.apple.Metal"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForInfoDictionaryKey:kCFBundleVersionKey];
    [v0 setMetalVersion:v10];
  }

  else
  {
    [v0 setMetalVersion:&stru_2F4BE0];
  }

  [v0 setNativePointerSize:8];
  v11 = objc_alloc_init(DYGTGPUToolsVersionInfo);
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.GPUTools"];
  v13 = [v12 infoDictionary];
  v14 = NewPlistByAnonymizingPlist(v13);
  [v11 setInfoPlist:v14];

  v15 = [v12 URLForResource:@"version" withExtension:@"plist"];
  if (v15)
  {
    v16 = [NSDictionary dictionaryWithContentsOfURL:v15];
    v17 = NewPlistByAnonymizingPlist(v16);
    [v11 setVersionPlist:v17];
  }

  else
  {
    [v11 setVersionPlist:0];
  }

  [v11 setInterposeVersionGL:1572864];
  [v11 setInterposeVersionMetal:0];

  [v0 setGputoolsVersionInfo:v11];
  *v33 = 0;
  v34 = 0;
  v32.tv_sec = 0;
  v32.tv_nsec = 0;
  if (gethostuuid(v33, &v32))
  {
    [v0 setPermanentIdentifier:0];
  }

  else
  {
    v18 = [[NSUUID alloc] initWithUUIDBytes:v33];
    v19 = [v18 UUIDString];
    [v0 setPermanentIdentifier:v19];
  }

  if (MGIsQuestionValid())
  {
    v20 = MGCopyAnswer();
    v21 = [v20 unsignedIntValue];
  }

  else
  {
    v21 = 0;
  }

  if (MGIsQuestionValid())
  {
    v22 = MGCopyAnswer();
    v23 = [v22 unsignedIntValue];
  }

  else
  {
    v23 = 0;
  }

  if (MGIsQuestionValid())
  {
    v24 = MGCopyAnswer();
    v25 = [v24 unsignedIntValue];
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
  if (MGIsQuestionValid())
  {
    v27 = MGCopyAnswer();
    [v27 doubleValue];
    v26 = v28;
  }

  if (MGIsQuestionValid())
  {
    v29 = MGCopyAnswer();
    v30 = [v29 unsignedIntValue];
  }

  else
  {
    v30 = 0;
  }

  *v33 = v26;
  v34 = __PAIR64__(v23, v21);
  v35 = v25;
  v36 = v30;
  [v0 setMainScreenDescriptor:v33];

  return v0;
}

id NewPlistByAnonymizingPlist(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 removeObjectForKey:@"CFBundleInfoPlistURL"];
  [v1 removeObjectForKey:@"NSBundleInitialPath"];
  [v1 removeObjectForKey:@"NSBundleResolvedPath"];
  v2 = [v1 copy];

  return v2;
}

id newProfileWithMTLDevice(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLDeviceProfile);
  [v2 setVersion:2];
  v3 = [v1 name];
  [v2 setName:v3];

  v4 = [NSMutableArray arrayWithCapacity:17];
  for (i = 0; i != 17; ++i)
  {
    v6 = newProfileWithMTLDevice_availableFeatures[i];
    if ([v1 supportsFeatureSet:v6])
    {
      v7 = [NSNumber numberWithUnsignedInteger:v6];
      [v4 addObject:v7];
    }
  }

  v8 = [v4 copy];
  v26 = v2;
  [v2 setSupportedFeatureSets:v8];

  v9 = +[NSMutableDictionary dictionary];
  if ([v1 areProgrammableSamplePositionsSupported] && objc_msgSend(v1, "maxCustomSamplePositions"))
  {
    v10 = 1;
    do
    {
      if ([v1 supportsTextureSampleCount:v10])
      {
        v11 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
        [v1 getDefaultSamplePositions:v11 count:v10];
        v12 = objc_alloc_init(NSMutableArray);
        v13 = 0;
        do
        {
          v14 = [NSValue valueWithPoint:vcvtq_f64_f32(*&v11[8 * v13])];
          [v12 addObject:v14];

          ++v13;
        }

        while (v10 != v13);
        free(v11);
        v15 = [NSArray arrayWithArray:v12];
        v16 = [NSNumber numberWithInt:v10];
        [v9 setObject:v15 forKey:v16];
      }
    }

    while ([v1 maxCustomSamplePositions] > v10++);
  }

  v18 = [NSDictionary dictionaryWithDictionary:v9];
  v19 = v26;
  [v26 setDefaultSamplePositions:v18];

  if (objc_opt_respondsToSelector())
  {
    v20 = [NSMutableArray arrayWithCapacity:17];
    for (j = 0; j != 17; ++j)
    {
      v22 = newProfileWithMTLDevice_availableGPUFamilies[j];
      if ([v1 supportsFamily:v22])
      {
        v23 = [NSNumber numberWithInteger:v22];
        [v20 addObject:v23];
      }
    }

    v24 = [v20 copy];
    v19 = v26;
    [v26 setSupportedGPUFamilies:v24];
  }

  return v19;
}

id DaemonDeviceCapabilities(void *a1)
{
  v1 = a1;
  v2 = MTLCreateSystemDefaultDevice();
  v3 = newProfileWithMTLDevice(v2);

  v4 = [v1 stringByAppendingPathComponent:@"/System/Library/Frameworks/Metal.framework"];

  v5 = [NSBundle bundleWithPath:v4];

  if (v5)
  {
    v6 = [v5 objectForInfoDictionaryKey:kCFBundleVersionKey];
  }

  else
  {
    v6 = &stru_2F4BE0;
  }

  *values = *off_2F2080;
  v16 = *off_2F2090;
  v17 = @"main-screen-scale";
  v7 = CFArrayCreate(0, values, 5, &kCFTypeArrayCallBacks);
  v8 = MGCopyMultipleAnswers();
  CFRelease(v7);
  v12 = v3;
  v13[0] = @"gputools.contexts-info";
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v14[0] = v9;
  v14[1] = v8;
  v13[1] = @"screen-dimensions";
  v13[2] = @"metal_version";
  v13[3] = @"nativePointerSize";
  v14[2] = v6;
  v14[3] = &off_2F7640;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v10;
}

id isDesktopReplayer(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MTLReplayer"])
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.DesktopReplayer"];
  }

  return v2;
}

id isMobileReplayer(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MTLReplayer"])
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.MobileReplayer"];
  }

  return v2;
}

id modifyReplayerEnvironment(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 removeObjectsForKeys:&off_2F7830];
  [v1 removeObjectForKey:@"METAL_DEVICE_WRAPPER_TYPE"];
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"GPUDebugger.ReplayerEnvironment"];

  if (v3)
  {
    [v1 addEntriesFromDictionary:v3];
  }

  v4 = [v1 copy];

  return v4;
}

id FindDesktopReplayerPath(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  bzero(buf, 0x400uLL);
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    v3 = 0;
  }

  else
  {
    v4 = [NSString stringWithUTF8String:buf];
    v5 = [v4 stringByDeletingLastPathComponent];

    v3 = [v5 stringByReplacingOccurrencesOfString:@"GPUToolsTransportAgents.framework/Versions/A/XPCServices/GPUToolsAgentService.xpc/Contents/MacOS" withString:&stru_2F4BE0];
  }

  v6 = [v3 stringByAppendingPathComponent:v1];

  if ([v2 fileExistsAtPath:v6])
  {
    v7 = v6;
  }

  else
  {
    v8 = [@"/System/Library/CoreServices/" stringByAppendingPathComponent:v1];
    if ([v2 fileExistsAtPath:v8])
    {
      v7 = v8;
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 bundlePath];
      v11 = [v10 componentsSeparatedByString:@"/"];

      v12 = [v11 subarrayWithRange:{0, objc_msgSend(v11, "count") - 3}];
      v13 = [NSString pathWithComponents:v12];
      v14 = [v13 stringByAppendingPathComponent:v1];

      v26 = v12;
      v15 = [v12 objectAtIndexedSubscript:0];
      LODWORD(v12) = [v15 isEqualToString:&stru_2F4BE0];

      if (v12)
      {
        v16 = [NSString stringWithFormat:@"/%@", v14];

        v14 = v16;
      }

      if (([v2 fileExistsAtPath:v14] & 1) == 0)
      {
        v25 = v9;
        v17 = [v11 subarrayWithRange:{0, objc_msgSend(v11, "count") - 4}];
        v18 = [NSString pathWithComponents:v17];
        v19 = [v18 stringByAppendingPathComponent:@"Developer/Applications"];

        v14 = [v19 stringByAppendingPathComponent:v1];

        v20 = [v17 objectAtIndexedSubscript:0];
        LODWORD(v18) = [v20 isEqualToString:&stru_2F4BE0];

        if (v18)
        {
          v21 = [NSString stringWithFormat:@"/%@", v14];

          v14 = v21;
        }

        v9 = v25;
      }

      if (([v2 fileExistsAtPath:v14] & 1) == 0)
      {
        v22 = [@"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/GPUToolsPlatform/" stringByAppendingPathComponent:v1];

        if ([v2 fileExistsAtPath:v22])
        {
          v14 = v22;
        }

        else
        {
          v14 = [@"/Applications/Xcode.app/Contents/Developer/Applications/" stringByAppendingPathComponent:v1];
        }
      }

      if ([v2 fileExistsAtPath:v14])
      {
        v23 = v14;
      }

      else
      {
        v23 = 0;
      }

      v7 = v23;
    }
  }

  return v7;
}

id DaemonCreateGuestAppTransport(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_29;
  }

  v3 = [v1 objectForKeyedSubscript:@"environment"];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_28:

LABEL_29:
      v16 = 0;
      goto LABEL_30;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v45;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v10 = [v4 objectForKeyedSubscript:v9];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v4 = [v2 objectForKeyedSubscript:@"platformPrefix"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v12 = [v2 objectForKeyedSubscript:@"shouldLoadCapture"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }
  }

  v13 = [v2 objectForKeyedSubscript:@"shouldLoadReplayer"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  v14 = [v2 objectForKeyedSubscript:@"shouldLoadDiagnostics"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_25;
    }
  }

  v15 = [v2 objectForKeyedSubscript:@"environment"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 mutableCopy];
  }

  else
  {
    v17 = [[NSMutableDictionary alloc] initWithCapacity:2];
  }

  v19 = v17;
  v20 = [v16 objectForKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];
  v21 = [v20 componentsSeparatedByString:@":"];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 mutableCopy];
  }

  else
  {
    v23 = [[NSMutableArray alloc] initWithCapacity:2];
  }

  v24 = v23;
  v25 = [v2 objectForKeyedSubscript:@"platformPrefix"];
  v26 = [v16 objectForKeyedSubscript:@"GPUTOOLS_EXTRA_PLUGIN_PATHS"];
  v27 = [v2 objectForKeyedSubscript:@"shouldLoadReplayer"];
  if (!v27)
  {
    goto LABEL_39;
  }

  v28 = v27;
  [v2 objectForKeyedSubscript:@"shouldLoadCapture"];
  v43 = v24;
  v29 = v22;
  v30 = v19;
  v31 = v20;
  v32 = v26;
  v34 = v33 = v25;
  v35 = [v34 BOOLValue];

  v25 = v33;
  v26 = v32;
  v20 = v31;
  v19 = v30;
  v22 = v29;
  v24 = v43;

  if (v35)
  {
LABEL_39:
    v36 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsCapture.framework/GPUToolsCapture"];
    if (([v24 containsObject:v36] & 1) == 0)
    {
      [v24 addObject:v36];
    }

    [v19 setObject:v36 forKeyedSubscript:@"DYMTL_TOOLS_DYLIB_PATH"];
  }

  v37 = [v2 objectForKeyedSubscript:@"shouldLoadDiagnostics"];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    v39 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsDiagnostics.framework/GPUToolsDiagnostics"];
    if (([v24 containsObject:v39] & 1) == 0)
    {
      [v24 addObject:v39];
    }
  }

  v40 = [v22 count];
  if (v40 != [v24 count])
  {
    v41 = [v24 componentsJoinedByString:@":"];
    [v19 setObject:v41 forKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];

    v42 = [v19 copy];
    v16 = v42;
  }

LABEL_30:

  return v16;
}

void PresentTelemetry(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&OBJC_PROTOCOL___CAMetalDrawable])
  {
    GTTelemetry_trackPresent(v1);
  }
}

void PresentTrigger(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2 && (dword_31F7C8)
  {
    v5 = v3;
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, 0);
    v6 = [v5 traceContext];
    v7 = newpool;
    GTTraceContext_copyStreamMap(v6, newpool);
    p = v7;
    v8 = apr_hash_make(v7);
    GTTraceMemPool_buildMemoryMap(*([v5 traceStream] + 3), v8);
    v47 = [v5 layer];
    v9 = [v47 traceStream];
    if (v9)
    {
      v10 = *v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 texture];
    v12 = [v11 device];
    v13 = apr_array_make(p, 1, 56);
    v14 = *([v11 traceStream] + 1);
    v46 = v11;
    v15 = [v11 traceStream];
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 24);
    v18 = apr_array_push(v13);
    *v18 = v14;
    *(v18 + 1) = v16;
    *(v18 + 2) = v17;
    *(v18 + 3) = v17;
    *(v18 + 4) = v17;
    *(v18 + 5) = 80;
    v18[48] = 1;
    *(v18 + 49) = 0;
    *(v18 + 13) = 0;
    v48 = v5;
    DownloadRequests = GTResourceHarvesterGetDownloadRequests([v12 harvester], objc_msgSend(v5, "streamReference"), v13);
    v20 = GTResourceDownloaderProcessRequest(p, DownloadRequests);
    v21 = v20;
    if (v20->nelts >= 1)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(a2 + 24);
        v25 = &v20->elts[v22];
        v25[47] |= 4u;
        *(v25 + 3) = v10;
        *(v25 + 4) = v24;
        ++v23;
        v22 += 456;
      }

      while (v23 < v20->nelts);
    }

    GTMTLCaptureState_appendDownloadRequests(_sharedCaptureManager, v20);
    v26 = objc_alloc_init(GTDownloadPoint);
    v27 = DEVICEOBJECT(v12);
    v28 = [v27 newCommandQueue];
    v29 = [v27 newSharedEvent];
    [(GTDownloadPoint *)v26 setDownloadQueue:v28];
    [(GTDownloadPoint *)v26 setWaitEvent:v29];
    [(GTDownloadPoint *)v26 setWaitValue:1];
    [(GTDownloadPoint *)v26 setDownloadEvent:v29];
    [(GTDownloadPoint *)v26 setDownloadValue:[(GTDownloadPoint *)v26 waitValue]+ 1];
    [v29 setSignaledValue:{-[GTDownloadPoint waitValue](v26, "waitValue")}];
    v30 = [v12 dispatchGroup];
    dispatch_group_enter(v30);

    v31 = [v12 captureEventListener];
    v32 = [(GTDownloadPoint *)v26 downloadValue];
    *&v50 = _NSConcreteStackBlock;
    *(&v50 + 1) = 3221225472;
    v51 = __DownloadDrawable_block_invoke;
    v52 = &unk_2F20B0;
    v53 = v12;
    v33 = v12;
    [v29 notifyListener:v31 atValue:v32 block:&v50];

    v34 = [v33 downloader];
    [v34 downloadRequest:v21 atPoint:v26];

    apr_pool_destroy(p);
  }

  v35 = [v4 traceStream];
  if (v35)
  {
    v36 = *v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = *(a2 + 24);
  v38 = *(a2 + 32);
  v39 = [v4 layer];
  v40 = [v39 device];
  v41 = [v40 traceStream];
  if (v41)
  {
    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = [v4 layer];
  v44 = [v43 traceStream];
  if (v44)
  {
    v45 = *v44;
  }

  else
  {
    v45 = 0;
  }

  *&v50 = 0x300000003;
  *(&v50 + 1) = v36;
  v51 = v37;
  v52 = v38;
  v53 = 0;
  v54 = v42;
  v55 = v45;
  v56 = 0u;
  v57 = 0u;
  GTCaptureBoundaryTracker_handleTrigger(&v50);
}

void __DownloadDrawable_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v1);
}

id RetrieveGPUCaptureTexture(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1;
  if ((dword_31F7C8 & 0x80000) != 0)
  {
    v4 = v1;
    v3 = v4;
    if (([v4 conformsToProtocol:&OBJC_PROTOCOL___CaptureMTLObject] & 1) == 0)
    {
      v5 = v4;
      while ((objc_opt_respondsToSelector() & 1) != 0)
      {
        v3 = [v5 performSelector:"baseObject"];

        v5 = v3;
        if ([v3 conformsToProtocol:&OBJC_PROTOCOL___CaptureMTLObject])
        {
          goto LABEL_8;
        }
      }

      v3 = v5;
    }

LABEL_8:
  }

  return v3;
}

id NumberToInt(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SetCaptureDescriptor(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (v7)
  {
    [v7 setCaptureDescriptor:v9];
    if (a3)
    {
      v34 = 0uLL;
      v35 = 0uLL;
      *(&v33 + 1) = 0;
      v10 = [v8 traceContext];
      [v8 traceStream];
      GTTraceContext_pushEncoderWithStream(v10, &v33);
      v11 = v34;
      *(v34 + 8) = -10154;
      v12 = BYTE9(v35);
      if (BYTE9(v35) > 0x28uLL)
      {
        v18 = *(*(&v33 + 1) + 24);
        v19 = BYTE10(v35);
        ++BYTE10(v35);
        v13 = GTTraceMemPool_allocateBytes(v18, *(&v34 + 1), v19 | 0x1800000000) + 16;
        v12 = v19;
      }

      else
      {
        v13 = (v11 + BYTE9(v35));
        BYTE9(v35) += 24;
      }

      *(v11 + 13) = v12;
      v20 = [v8 traceStream];
      if (v20)
      {
        v21 = *v20;
      }

      else
      {
        v21 = 0;
      }

      v26 = [v7 traceStream];
      if (v26)
      {
        v27 = *v26;
      }

      else
      {
        v27 = 0;
      }

      v30 = SaveMTLAccelerationStructureDescriptor(&v33, v9);
      *v13 = v21;
      *(v13 + 1) = v27;
      v13[16] = v30;
      *(v13 + 17) = 0;
      *(v13 + 5) = 0;
      v29 = v8;
    }

    else
    {
      v34 = 0uLL;
      v35 = 0uLL;
      *(&v33 + 1) = 0;
      v14 = [v7 traceContext];
      [v7 traceStream];
      GTTraceContext_pushEncoderWithStream(v14, &v33);
      v15 = v34;
      *(v34 + 8) = -15552;
      v16 = BYTE9(v35);
      if (BYTE9(v35) > 0x30uLL)
      {
        v22 = *(*(&v33 + 1) + 24);
        v23 = BYTE10(v35);
        ++BYTE10(v35);
        v17 = GTTraceMemPool_allocateBytes(v22, *(&v34 + 1), v23 | 0x1000000000) + 16;
        v16 = v23;
      }

      else
      {
        v17 = (v15 + BYTE9(v35));
        BYTE9(v35) += 16;
      }

      *(v15 + 13) = v16;
      v24 = [v7 traceStream];
      if (v24)
      {
        v25 = *v24;
      }

      else
      {
        v25 = 0;
      }

      v28 = SaveMTLAccelerationStructureDescriptor(&v33, v9);
      *v17 = v25;
      v17[8] = v28;
      *(v17 + 9) = 0;
      *(v17 + 3) = 0;
      v29 = v7;
    }

    [v29 traceContext];
    s();
    *v31 = v32;
    *(v31 + 8) = BYTE8(v35);
    *(v34 + 15) |= 8u;
  }
}

void RetainAccelerationStructureDescriptorObjects(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 instanceDescriptorBuffer];
    [v9 touch];

    v10 = [v8 instanceDescriptorBuffer];

    if (v5 && v10)
    {
      v11 = [v8 instanceDescriptorBuffer];
      [v5 addObject:v11];
    }

    v12 = [v8 instanceDescriptorBuffer];
    RetainObjectForDescriptorDownloader(v12, v6);

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v13 = [v8 instancedAccelerationStructures];
    v14 = [v13 countByEnumeratingWithState:&v140 objects:v149 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v141;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v141 != v16)
          {
            objc_enumerationMutation(v13);
          }

          RetainObjectForDescriptorDownloader(*(*(&v140 + 1) + 8 * i), v6);
        }

        v15 = [v13 countByEnumeratingWithState:&v140 objects:v149 count:16];
      }

      while (v15);
    }

    v18 = [v8 motionTransformBuffer];
    [v18 touch];

    v19 = [v8 motionTransformBuffer];

    if (v5 && v19)
    {
      v20 = [v8 motionTransformBuffer];
      [v5 addObject:v20];
    }

    v21 = [v8 instancedAccelerationStructures];
    RetainNSArray(v5, v21);
LABEL_16:

    goto LABEL_112;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v114 = v7;
    v115 = v6;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v22 = [v7 geometryDescriptors];
    v23 = [v22 countByEnumeratingWithState:&v136 objects:v148 count:16];
    if (!v23)
    {
      goto LABEL_111;
    }

    v24 = v23;
    v25 = &GSSystemRootDirectory_ptr;
    v26 = &GSSystemRootDirectory_ptr;
    v119 = *v137;
    v117 = v22;
    while (1)
    {
      v27 = 0;
      v118 = v24;
      do
      {
        if (*v137 != v119)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v136 + 1) + 8 * v27);
        if (objc_opt_respondsToSelector())
        {
          v29 = [v28 primitiveDataBuffer];
          [v29 touch];

          v30 = [v28 primitiveDataBuffer];

          if (v5)
          {
            if (v30)
            {
              v31 = [v28 primitiveDataBuffer];
              [v5 addObject:v31];
            }
          }
        }

        v32 = v25[500];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v28;
          v34 = [v33 vertexBuffer];
          [v34 touch];

          v35 = [v33 vertexBuffer];

          if (v5 && v35)
          {
            v36 = [v33 vertexBuffer];
            [v5 addObject:v36];
          }

          v37 = [v33 indexBuffer];
          [v37 touch];

          v38 = [v33 indexBuffer];

          if (v5 && v38)
          {
            v39 = [v33 indexBuffer];
            [v5 addObject:v39];
          }

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_35;
        }

        v43 = v26[494];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v28;
          v45 = [v44 boundingBoxBuffer];
          [v45 touch];

          v46 = [v44 boundingBoxBuffer];

          if (v5 && v46)
          {
            v42 = [v44 boundingBoxBuffer];
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v28;
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v48 = [v33 vertexBuffers];
          v49 = [v48 countByEnumeratingWithState:&v132 objects:v147 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v133;
            do
            {
              for (j = 0; j != v50; j = j + 1)
              {
                if (*v133 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v132 + 1) + 8 * j);
                v54 = [v53 buffer];
                [v54 touch];

                v55 = [v53 buffer];

                if (v5 && v55)
                {
                  v56 = [v53 buffer];
                  [v5 addObject:v56];
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v132 objects:v147 count:16];
            }

            while (v50);
          }

          v57 = [v33 indexBuffer];
          [v57 touch];

          v58 = [v33 indexBuffer];

          if (v5 && v58)
          {
            v59 = [v33 indexBuffer];
            [v5 addObject:v59];
          }

          v22 = v117;
          v24 = v118;
          v25 = &GSSystemRootDirectory_ptr;
          v26 = &GSSystemRootDirectory_ptr;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_35:
          v40 = [v33 transformationMatrixBuffer];
          [v40 touch];

          v41 = [v33 transformationMatrixBuffer];

          if (v5 && v41)
          {
            v42 = [v33 transformationMatrixBuffer];
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = v28;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v47 = [v60 boundingBoxBuffers];
          v61 = [v47 countByEnumeratingWithState:&v128 objects:v146 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v129;
            do
            {
              for (k = 0; k != v62; k = k + 1)
              {
                if (*v129 != v63)
                {
                  objc_enumerationMutation(v47);
                }

                v65 = *(*(&v128 + 1) + 8 * k);
                v66 = [v65 buffer];
                [v66 touch];

                v67 = [v65 buffer];

                if (v5 && v67)
                {
                  v68 = [v65 buffer];
                  [v5 addObject:v68];
                }
              }

              v62 = [v47 countByEnumeratingWithState:&v128 objects:v146 count:16];
            }

            while (v62);
            v22 = v117;
            v24 = v118;
            v25 = &GSSystemRootDirectory_ptr;
            v26 = &GSSystemRootDirectory_ptr;
          }

          goto LABEL_43;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v69 = v28;
          v70 = [v69 controlPointBuffer];
          [v70 touch];

          v71 = [v69 controlPointBuffer];

          if (v5 && v71)
          {
            v72 = [v69 controlPointBuffer];
            [v5 addObject:v72];
          }

          v73 = [v69 radiusBuffer];
          [v73 touch];

          v74 = [v69 radiusBuffer];

          if (v5 && v74)
          {
            v75 = [v69 radiusBuffer];
            [v5 addObject:v75];
          }

          v76 = [v69 indexBuffer];
          [v76 touch];

          v77 = [v69 indexBuffer];

          if (v5 && v77)
          {
            v78 = v69;
            goto LABEL_109;
          }

          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v79 = v28;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v116 = v79;
          v80 = [v79 controlPointBuffers];
          v81 = [v80 countByEnumeratingWithState:&v124 objects:v145 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v125;
            do
            {
              for (m = 0; m != v82; m = m + 1)
              {
                if (*v125 != v83)
                {
                  objc_enumerationMutation(v80);
                }

                v85 = *(*(&v124 + 1) + 8 * m);
                v86 = [v85 buffer];
                [v86 touch];

                v87 = [v85 buffer];

                if (v5 && v87)
                {
                  v88 = [v85 buffer];
                  [v5 addObject:v88];
                }
              }

              v82 = [v80 countByEnumeratingWithState:&v124 objects:v145 count:16];
            }

            while (v82);
          }

          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v89 = [v116 radiusBuffers];
          v90 = [v89 countByEnumeratingWithState:&v120 objects:v144 count:16];
          if (v90)
          {
            v91 = v90;
            v92 = *v121;
            do
            {
              for (n = 0; n != v91; n = n + 1)
              {
                if (*v121 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = *(*(&v120 + 1) + 8 * n);
                v95 = [v94 buffer];
                [v95 touch];

                v96 = [v94 buffer];

                if (v5 && v96)
                {
                  v97 = [v94 buffer];
                  [v5 addObject:v97];
                }
              }

              v91 = [v89 countByEnumeratingWithState:&v120 objects:v144 count:16];
            }

            while (v91);
          }

          v98 = [v116 indexBuffer];
          [v98 touch];

          v99 = [v116 indexBuffer];

          v22 = v117;
          v24 = v118;
          v25 = &GSSystemRootDirectory_ptr;
          v26 = &GSSystemRootDirectory_ptr;
          if (v5 && v99)
          {
            v78 = v116;
LABEL_109:
            v42 = [v78 indexBuffer];
LABEL_42:
            v47 = v42;
            [v5 addObject:v42];
LABEL_43:
          }

LABEL_44:
        }

        v27 = v27 + 1;
      }

      while (v27 != v24);
      v100 = [v22 countByEnumeratingWithState:&v136 objects:v148 count:16];
      v24 = v100;
      if (!v100)
      {
LABEL_111:

        v7 = v114;
        v6 = v115;
        goto LABEL_112;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v101 = [v8 instanceDescriptorBuffer];
    [v101 touch];

    v102 = [v8 instanceDescriptorBuffer];

    if (v5 && v102)
    {
      v103 = [v8 instanceDescriptorBuffer];
      [v5 addObject:v103];
    }

    v104 = [v8 motionTransformBuffer];
    [v104 touch];

    v105 = [v8 motionTransformBuffer];

    if (v5 && v105)
    {
      v106 = [v8 motionTransformBuffer];
      [v5 addObject:v106];
    }

    v107 = [v8 motionTransformCountBuffer];
    [v107 touch];

    v108 = [v8 motionTransformCountBuffer];

    if (v5 && v108)
    {
      v109 = [v8 motionTransformCountBuffer];
      [v5 addObject:v109];
    }

    v110 = [v8 instanceCountBuffer];
    [v110 touch];

    v111 = [v8 instanceCountBuffer];

    if (v5 && v111)
    {
      v112 = [v8 instanceCountBuffer];
      [v5 addObject:v112];
    }

    v113 = [v8 instanceDescriptorBuffer];
    RetainObjectForDescriptorDownloader(v113, v6);

    v21 = [v8 instanceCountBuffer];
    RetainObjectForDescriptorDownloader(v21, v6);
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }
  }

LABEL_112:
}

id copyCaptureDescriptor(void **a1, int a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!a3)
  {
    v21 = copyAndNullifyReferencesInAccelerationStructureDescriptor(*a1);
    goto LABEL_102;
  }

  if (!a2)
  {
    v146 = v18;
    v148 = v17;
    [v17 removeAllObjects];
    v147 = a1;
    v22 = *a1;
    v150 = v15;
    v23 = v15;
    v149 = v16;
    v24 = v16;
    v145 = v19;
    v25 = v19;
    v26 = [v22 copy];
    objc_opt_class();
    v151 = v26;
    if (objc_opt_isKindOfClass())
    {
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v27 = [v26 geometryDescriptors];
      v28 = [v27 countByEnumeratingWithState:&v175 objects:v183 count:16];
      if (!v28)
      {
        goto LABEL_86;
      }

      v29 = v28;
      v30 = &GSSystemRootDirectory_ptr;
      v156 = *v176;
      v152 = v27;
      while (1)
      {
        v31 = 0;
        v153 = v29;
        do
        {
          if (*v176 != v156)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v175 + 1) + 8 * v31);
          v33 = v30[500];
          objc_opt_class();
          v157 = v32;
          v158 = v31;
          if (objc_opt_isKindOfClass())
          {
            if (objc_opt_respondsToSelector())
            {
              v34 = [v32 primitiveDataBuffer];

              if (v34)
              {
                v35 = [v32 primitiveDataBuffer];
                v36 = BlitBufferWithCache(v23, v35, @"gputools.ADSPrimitiveDataBuffer", v24, v25);
                [v32 setPrimitiveDataBuffer:v36];
              }
            }

            v37 = v32;
            v38 = [v37 vertexBuffer];

            if (v38)
            {
              v39 = [v37 vertexBuffer];
              v40 = BlitBufferWithCache(v23, v39, @"gputools.ADSVertexBuffer", v24, v25);
              [v37 setVertexBuffer:v40];
            }

            v41 = [v37 indexBuffer];

            if (v41)
            {
              v42 = 3 * [v37 triangleCount];
              v43 = [v37 indexType];
              v44 = 1;
              if (v43)
              {
                v44 = 2;
              }

              v45 = v42 << v44;
              v46 = [v37 indexBuffer];
              v47 = BlitBufferWithLength(v23, v46, [v37 indexBufferOffset], v45, @"gputools.ADSIndexBuffer", v24);
              [v37 setIndexBuffer:v47];

              [v37 setIndexBufferOffset:0];
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_83;
            }

            v48 = [v37 transformationMatrixBuffer];

            if (!v48)
            {
              goto LABEL_83;
            }

            v49 = [v37 transformationMatrixBuffer];
            v50 = BlitBufferWithLength(v23, v49, [v37 transformationMatrixBufferOffset], 0x30uLL, @"gputools.ADSTransformationMatrixBuffer", v24);
            [v37 setTransformationMatrixBuffer:v50];

            v51 = v37;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v32;
            v53 = [v52 boundingBoxBuffer];

            if (v53)
            {
              v54 = [v52 boundingBoxCount];
              v55 = [v52 boundingBoxStride] * v54;
              v56 = [v52 boundingBoxBuffer];
              v57 = BlitBufferWithLength(v23, v56, [v52 boundingBoxBufferOffset], v55, @"gputools.ADSBBoxBuffer", v24);
              [v52 setBoundingBoxBuffer:v57];

              [v52 setBoundingBoxBufferOffset:0];
            }

            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = v32;
            v171 = 0u;
            v172 = 0u;
            v173 = 0u;
            v174 = 0u;
            v154 = v58;
            v59 = [v58 vertexBuffers];
            v60 = [v59 countByEnumeratingWithState:&v171 objects:v182 count:16];
            if (v60)
            {
              v61 = v60;
              v62 = *v172;
              do
              {
                for (i = 0; i != v61; i = i + 1)
                {
                  if (*v172 != v62)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v64 = *(*(&v171 + 1) + 8 * i);
                  v65 = [v64 buffer];
                  v66 = BlitBufferWithCache(v23, v65, @"gputools.ADSMotionVertexBuffer", v24, v25);
                  [v64 setBuffer:v66];
                }

                v61 = [v59 countByEnumeratingWithState:&v171 objects:v182 count:16];
              }

              while (v61);
            }

            v67 = [v154 indexBuffer];

            if (v67)
            {
              v68 = 3 * [v154 triangleCount];
              v69 = [v154 indexType];
              v70 = 1;
              if (v69)
              {
                v70 = 2;
              }

              v71 = v68 << v70;
              v72 = [v154 indexBuffer];
              v73 = BlitBufferWithLength(v23, v72, [v154 indexBufferOffset], v71, @"gputools.ADSMotionIndexBuffer", v24);
              [v154 setIndexBuffer:v73];

              [v154 setIndexBufferOffset:0];
            }

            v27 = v152;
            v29 = v153;
            v30 = &GSSystemRootDirectory_ptr;
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_83;
            }

            v74 = [v154 transformationMatrixBuffer];

            if (!v74)
            {
              goto LABEL_83;
            }

            v75 = [v154 transformationMatrixBuffer];
            v76 = BlitBufferWithLength(v23, v75, [v154 transformationMatrixBufferOffset], 0x30uLL, @"gputools.ADSMotionTransformationMatrixBuffer", v24);
            [v154 setTransformationMatrixBuffer:v76];

            v51 = v154;
LABEL_24:
            [v51 setTransformationMatrixBufferOffset:0];
            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v77 = v32;
            v167 = 0u;
            v168 = 0u;
            v169 = 0u;
            v170 = 0u;
            v78 = [v77 boundingBoxBuffers];
            v79 = [v78 countByEnumeratingWithState:&v167 objects:v181 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v168;
              do
              {
                for (j = 0; j != v80; j = j + 1)
                {
                  if (*v168 != v81)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v83 = *(*(&v167 + 1) + 8 * j);
                  v84 = [v83 buffer];

                  if (v84)
                  {
                    v85 = [v83 buffer];
                    v86 = BlitBufferWithCache(v23, v85, @"gputools.ADSMotionBBoxBuffer", v24, v25);
                    [v83 setBuffer:v86];
                  }
                }

                v80 = [v78 countByEnumeratingWithState:&v167 objects:v181 count:16];
              }

              while (v80);
            }

            v27 = v152;
            v29 = v153;
            v30 = &GSSystemRootDirectory_ptr;
            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v87 = v32;
            v88 = [v87 controlPointBuffer];

            if (v88)
            {
              v89 = [v87 controlPointBuffer];
              v90 = BlitBufferWithCache(v23, v89, @"gputools.ADSCurveControlPointBuffer", v24, v25);
              [v87 setControlPointBuffer:v90];
            }

            v91 = [v87 radiusBuffer];

            if (v91)
            {
              v92 = [v87 radiusBuffer];
              v93 = BlitBufferWithCache(v23, v92, @"gputools.ADSCurveRadiusBuffer", v24, v25);
              [v87 setRadiusBuffer:v93];
            }

            v94 = [v87 indexBuffer];

            if (!v94)
            {
              goto LABEL_83;
            }

            v95 = [v87 indexBuffer];
            v96 = BlitBufferWithCache(v23, v95, @"gputools.ADSCurveIndexBuffer", v24, v25);
            v97 = v87;
            goto LABEL_82;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_84;
          }

          v98 = v32;
          v163 = 0u;
          v164 = 0u;
          v165 = 0u;
          v166 = 0u;
          v155 = v98;
          v99 = [v98 controlPointBuffers];
          v100 = [v99 countByEnumeratingWithState:&v163 objects:v180 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v164;
            do
            {
              for (k = 0; k != v101; k = k + 1)
              {
                if (*v164 != v102)
                {
                  objc_enumerationMutation(v99);
                }

                v104 = *(*(&v163 + 1) + 8 * k);
                v105 = [v104 buffer];

                if (v105)
                {
                  v106 = [v104 buffer];
                  v107 = BlitBufferWithCache(v23, v106, @"gputools.ADSMotionCurveControlPointBuffer", v24, v25);
                  [v104 setBuffer:v107];
                }
              }

              v101 = [v99 countByEnumeratingWithState:&v163 objects:v180 count:16];
            }

            while (v101);
          }

          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v108 = [v155 radiusBuffers];
          v109 = [v108 countByEnumeratingWithState:&v159 objects:v179 count:16];
          if (v109)
          {
            v110 = v109;
            v111 = *v160;
            do
            {
              for (m = 0; m != v110; m = m + 1)
              {
                if (*v160 != v111)
                {
                  objc_enumerationMutation(v108);
                }

                v113 = *(*(&v159 + 1) + 8 * m);
                v114 = [v113 buffer];

                if (v114)
                {
                  v115 = [v113 buffer];
                  v116 = BlitBufferWithCache(v23, v115, @"gputools.ADSMotionCurveRadiusBuffer", v24, v25);
                  [v113 setBuffer:v116];
                }
              }

              v110 = [v108 countByEnumeratingWithState:&v159 objects:v179 count:16];
            }

            while (v110);
          }

          v117 = [v155 indexBuffer];

          v27 = v152;
          v29 = v153;
          v30 = &GSSystemRootDirectory_ptr;
          if (v117)
          {
            v95 = [v155 indexBuffer];
            v96 = BlitBufferWithCache(v23, v95, @"gputools.ADSMotionCurveIndexBuffer", v24, v25);
            v97 = v155;
LABEL_82:
            [v97 setIndexBuffer:v96];
          }

LABEL_83:

          v31 = v158;
LABEL_84:
          v31 = v31 + 1;
        }

        while (v31 != v29);
        v29 = [v27 countByEnumeratingWithState:&v175 objects:v183 count:16];
        if (!v29)
        {
LABEL_86:

          goto LABEL_100;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v118 = v26;
      v119 = [v118 instanceDescriptorStride];
      v120 = [v118 instanceCount] * v119;
      v121 = [v118 instanceDescriptorBuffer];
      v122 = BlitBufferWithLength(v23, v121, [v118 instanceDescriptorBufferOffset], v120, @"gputools.ADSInstanceDescriptorBuffer", v24);
      [v118 setInstanceDescriptorBuffer:v122];

      [v118 setInstanceDescriptorBufferOffset:0];
      v123 = [v118 motionTransformBuffer];

      if (v123)
      {
        v124 = 48 * [v118 motionTransformCount];
        v125 = [v118 motionTransformBuffer];
        v126 = BlitBufferWithLength(v23, v125, [v118 motionTransformBufferOffset], v124, @"gputools.ADSMotionTransformBuffer", v24);
        [v118 setMotionTransformBuffer:v126];

        [v118 setMotionTransformBufferOffset:0];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_100:

        v16 = v149;
        v15 = v150;
        a1 = v147;
        v17 = v148;
        v19 = v145;
        v18 = v146;
        v20 = v151;
        goto LABEL_101;
      }

      v118 = v26;
      v127 = [v118 instanceDescriptorBuffer];

      if (v127)
      {
        v128 = [v118 maxInstanceCount];
        v129 = [v118 instanceDescriptorStride] * v128;
        v130 = [v118 instanceDescriptorBuffer];
        v131 = BlitBufferWithLength(v23, v130, [v118 instanceDescriptorBufferOffset], v129, @"gputools.ADSIndirectInstanceDescriptorBuffer", v24);
        [v118 setInstanceDescriptorBuffer:v131];

        [v118 setInstanceDescriptorBufferOffset:0];
      }

      v132 = [v118 instanceCountBuffer];

      if (v132)
      {
        v133 = [v118 instanceCountBuffer];
        v134 = BlitBufferWithLength(v23, v133, [v118 instanceCountBufferOffset], 4uLL, @"gputools.ADSInstanceCountBuffer", v24);
        [v118 setInstanceCountBuffer:v134];

        [v118 setInstanceCountBufferOffset:0];
      }

      v135 = [v118 motionTransformBuffer];

      if (v135)
      {
        v136 = 48 * [v118 maxMotionTransformCount];
        v137 = [v118 motionTransformBuffer];
        v138 = BlitBufferWithLength(v23, v137, [v118 motionTransformBufferOffset], v136, @"gputools.ADSMotionTransformBuffer", v24);
        [v118 setMotionTransformBuffer:v138];

        [v118 setMotionTransformBufferOffset:0];
      }

      v139 = [v118 motionTransformCountBuffer];

      if (v139)
      {
        v140 = [v118 motionTransformCountBuffer];
        v141 = BlitBufferWithLength(v23, v140, [v118 motionTransformCountBufferOffset], 4uLL, @"gputools.ADSMotionTransformCountBuffer", v24);
        [v118 setMotionTransformCountBuffer:v141];

        [v118 setMotionTransformCountBufferOffset:0];
      }
    }

    goto LABEL_100;
  }

  v20 = [*a1 copy];
LABEL_101:
  v142 = v20;
  *a1 = v20;
  RetainAccelerationStructureDescriptorObjects(v17, v18, v20);
  v21 = *a1;
LABEL_102:
  v143 = v21;

  return v143;
}

id BlitBufferWithCache(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v13 objectForKey:v10];
  if (!v14)
  {
    v15 = [v10 length];
    v14 = [v9 newBufferWithLength:v15 options:0];
    [v14 setLabel:v11];
    v19[0] = @"srcBuffer";
    v19[1] = @"srcOffset";
    v20[0] = v10;
    v20[1] = &off_2F7688;
    v20[2] = v14;
    v19[2] = @"dstBuffer";
    v19[3] = @"length";
    v16 = [NSNumber numberWithUnsignedLong:v15];
    v20[3] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

    [v12 addObject:v17];
    [v13 setObject:v14 forKey:v10];
  }

  return v14;
}

id BlitBufferWithLength(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = a6;
  v13 = a5;
  v14 = a2;
  v15 = [a1 newBufferWithLength:v11 options:0];
  [v15 setLabel:v13];

  v21[0] = v14;
  v20[0] = @"srcBuffer";
  v20[1] = @"srcOffset";
  v16 = [NSNumber numberWithUnsignedInteger:a3];
  v21[1] = v16;
  v21[2] = v15;
  v20[2] = @"dstBuffer";
  v20[3] = @"length";
  v17 = [NSNumber numberWithUnsignedInteger:a4];
  v21[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  [v12 addObject:v18];

  return v15;
}

void DownloadHeap(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  v8 = [v7 backbuffer];
  v9 = DEVICEOBJECT(v8);

  v11 = a3[6];
  v10 = a3[7];
  v12 = [v9 protectionOptions];
  v13 = [v5 getGPUBuffer:v10 context:v6];
  if (!v12)
  {
    v14 = [v6 blitCommandEncoder];
    [NSString stringWithFormat:@"DownloadHeap[name=%lu, ref=%llu]", *a3, a3[1]];

    v15 = [v6 blitCommandEncoder];
    v16 = [v13 buffer];
    [v15 copyFromBuffer:v9 sourceOffset:v11 toBuffer:v16 destinationOffset:objc_msgSend(v13 size:{"offset"), v10}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__str = 0u;
  v23 = 0u;
  GTResourceDownloaderGetResourceFilename(a3, 0, __str, 0x80uLL);
  v17 = [v13 buffer];
  v18 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v13 offset] + objc_msgSend(v17, "contents"), objc_msgSend(v13, "size"), 0);

  v19 = [v6 objects];
  v20 = [NSString stringWithUTF8String:__str];
  [v19 addObject:v20];

  v21 = [v6 objects];
  [v21 addObject:v18];

  atomic_fetch_add(&g_GPUDataSize, [v13 size]);
}

void DownloadBuffer(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  v9 = a3[6];
  v8 = a3[7];
  v10 = [v7 protectionOptions];
  v11 = [v5 getGPUBuffer:v8 context:v6];
  if (!v10)
  {
    v12 = [v6 blitCommandEncoder];
    [NSString stringWithFormat:@"DownloadBuffer[name=%lu, ref=%llu]", *a3, a3[1]];

    v13 = [v6 blitCommandEncoder];
    v14 = [v11 buffer];
    [v13 copyFromBuffer:v7 sourceOffset:v9 toBuffer:v14 destinationOffset:objc_msgSend(v11 size:{"offset"), v8}];
  }

  GTResourceDownloaderGetResourceFilename(a3, 0, __str, 0x80uLL);
  v15 = [v11 buffer];
  v16 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v11 offset] + objc_msgSend(v15, "contents"), objc_msgSend(v11, "size"), 0);

  v17 = [v6 objects];
  v18 = [NSString stringWithUTF8String:__str];
  [v17 addObject:v18];

  v19 = [v6 objects];
  [v19 addObject:v16];

  atomic_fetch_add(&g_GPUDataSize, [v16 length]);
}

void DownloadIOSurface(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___MTLTexture])
  {
    v29 = a3;
    v30 = v7;
    v31 = v6;
    v32 = v5;
    v35 = v7;
    v8 = [v35 iosurface];
    PlaneCount = IOSurfaceGetPlaneCount(v8);
    if (PlaneCount <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = PlaneCount;
    }

    v34 = v10;
    v11 = (48 * v10 + 279) & 0xFFFFFFFFFFFFFF00;
    AllocSize = IOSurfaceGetAllocSize(v8);
    v12 = GTCoreAlloc(AllocSize, AllocSize + v11);
    bzero(v12, v11);
    *v12 = 0x63617074757265;
    *(v12 + 2) = 65538;
    *(v12 + 3) = v11;
    ProtectionOptions = IOSurfaceGetProtectionOptions();
    v14 = 0;
    v15 = 0;
    v28 = v11;
    v33 = v12 + v11;
    do
    {
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v8, v15);
      WidthOfPlane = IOSurfaceGetWidthOfPlane(v8, v15);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v8, v15);
      SizeOfPlane = IOSurfaceGetSizeOfPlane();
      v20 = [v35 pixelFormat];
      v21 = &v12[6 * v12[2] + 3];
      *v21 = v20;
      v21[1] = WidthOfPlane;
      v21[2] = HeightOfPlane;
      v21[3] = 1;
      v21[4] = BytesPerRowOfPlane;
      v21[5] = SizeOfPlane;
      ++v12[2];
      if ((ProtectionOptions & 1) == 0)
      {
        IOSurfaceLock(v8, 1u, 0);
        BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v8, v15);
        memcpy(&v33[v14], BaseAddressOfPlane, SizeOfPlane);
        IOSurfaceUnlock(v8, 1u, 0);
      }

      v14 += SizeOfPlane;
      ++v15;
    }

    while (v34 != v15);
    GTResourceDownloaderGetResourceFilename(v29, *(v29 + 56), __str, 0x80uLL);
    v23 = [[NSData alloc] initWithBytesNoCopy:v12 length:AllocSize + v28 deallocator:&__block_literal_global_10264];
    v6 = v31;
    v24 = [v31 objects];
    v25 = [NSString stringWithUTF8String:__str];
    [v24 addObject:v25];

    v26 = [v31 objects];
    [v26 addObject:v23];

    atomic_fetch_add(&g_GPUDataSize, [v23 length]);
    v5 = v32;
    v7 = v30;
  }
}

void DownloadTensor(void *a1, void *a2, void *a3)
{
  v6 = *a3;
  v7 = a2;
  v19 = a1;
  v8 = [v19 getGPUBuffer:MTLTensor_bytesLength(v6) context:v7];
  v9 = [v7 blitCommandEncoder];
  [NSString stringWithFormat:@"DownloadTensor[name=%lu, ref=%llu]", *a3, a3[1]];

  memset(__src, 0, sizeof(__src));
  GTMTLTensor_wholeSlice(v6, __src);
  memcpy(__dst, __src, sizeof(__dst));
  v10 = GTMTLTensorSlice_origin(__dst);
  v11 = GTMTLTensorSlice_dimensions(__src);
  v12 = [v8 getTensorAlias:v6];
  v13 = [v7 blitCommandEncoder];
  [v13 copyFromTensor:v6 sourceOrigin:v10 sourceDimensions:v11 toTensor:v12 destinationOrigin:v10 destinationDimensions:v11];

  GTResourceDownloaderGetResourceFilename(a3, 0, __dst, 0x80uLL);
  v14 = [v8 buffer];
  v15 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v8 offset] + objc_msgSend(v14, "contents"), objc_msgSend(v8, "size"), 0);

  v16 = [v7 objects];
  v17 = [NSString stringWithUTF8String:__dst];
  [v16 addObject:v17];

  v18 = [v7 objects];
  [v18 addObject:v15];

  atomic_fetch_add(&g_GPUDataSize, [v15 length]);
}

void DownloadTexture(void *a1, void *a2, id *a3, int a4)
{
  v106 = a1;
  v105 = a2;
  v7 = *a3;
  v104 = DEVICEOBJECT(v7);

  if (a4 >= 1)
  {
    v8 = 0;
    v102 = a4;
    v103 = a3;
    do
    {
      context = objc_autoreleasePoolPush();
      v9 = &a3[57 * v8];
      v10 = v106;
      v122 = v105;
      v140 = v104;
      v11 = v140;
      v141 = v11;
      v112 = [v11 device];
      v129 = [v11 pixelFormat];
      v12 = [v11 sampleCount];
      v126 = [v11 storageMode];
      v113 = [v11 isFramebufferOnly];
      v13 = [v11 protectionOptions];
      v14 = *(v9 + 15);
      v15 = *(v9 + 32);
      if ((*(v9 + 47) & 4) != 0 && (dword_31F7C8 & 1) != 0 && (qword_31F7C0 >= v14 ? (v16 = qword_31F7C0 >= v15) : (v16 = 0), !v16))
      {
        if (v14 > v15)
        {
          v17 = 1;
          v15 = qword_31F7C0 * v15 / v14;
LABEL_40:
          v14 = qword_31F7C0;
          goto LABEL_12;
        }

        if (v14 >= v15)
        {
          v17 = 1;
          v15 = qword_31F7C0;
          goto LABEL_40;
        }

        v17 = 1;
        v14 = qword_31F7C0 * v14 / v15;
        v15 = qword_31F7C0;
      }

      else
      {
        v17 = 0;
      }

LABEL_12:
      v18 = *(v9 + 33);
      v119 = *(v9 + 13);
      v118 = *(v9 + 28);
      v117 = *(v9 + 29);
      memset(v139, 0, sizeof(v139));
      *__str = 0u;
      v138 = 0u;
      v127 = v14;
      v128 = v15;
      v134 = v14;
      v135 = v15;
      v130 = v18;
      v136 = v18;
      MTLTextureInfo(v112, v129, &v134, v12, __str);
      v19 = 48 * *__str + 279;
      v20 = v19 & 0xFFFFFFFFFFFFFF00;
      v120 = &a3[57 * v8];
      v123 = *__str;
      if (v17)
      {
        v21 = v19 & 0xFFFFFF00;
        v22 = v139;
        for (i = *__str; i; --i)
        {
          v24 = *v22;
          v22 += 4;
          v21 += v24;
        }

        v25 = v21;
      }

      else
      {
        v25 = *(v9 + 19);
      }

      v26 = [v10 getGPUBuffer:v25 context:v122];
      v27 = [v26 buffer];
      v28 = [v27 contents];
      v121 = v26;
      v29 = [v26 offset] + v28;

      bzero(v29, v20);
      *v29 = 0x63617074757265;
      v30 = v20;
      v31 = v11;
      *(v29 + 2) = 65538;
      *(v29 + 3) = v30;
      v107 = v30;
      if (v13)
      {
        v32 = v11;
        v33 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [v32 pixelFormat], objc_msgSend(v32, "width"), objc_msgSend(v32, "height"), 0);
        v34 = [v112 newTextureWithDescriptor:v33];
        [NSString stringWithFormat:@"DownloadSubTexture_copyTexture[name=%lu, ref=%llu]", *v120, v120[1]];

        v31 = v34;
        v140 = v31;

        v141 = v31;
      }

      v108 = v11;
      v109 = v10;
      if ((v113 | v17) == 1)
      {
        v35 = v10;
        v36 = v31;
        v114 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [v36 pixelFormat], v127, v128, 0);
        [v114 setStorageMode:2];
        v31 = [v112 newTextureWithDescriptor:v114];
        [NSString stringWithFormat:@"DownloadSubTexture_framebufferOnly_copyTexture[name=%lu, ref=%llu]", *v120, v120[1]];

        v37 = +[MTLRenderPassDescriptor renderPassDescriptor];
        v38 = [v37 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];
        [v39 setTexture:v31];

        v40 = [v37 colorAttachments];
        v41 = [v40 objectAtIndexedSubscript:0];
        [v41 setStoreAction:1];

        v42 = [v122 newCommandBuffer];
        v43 = [v42 renderCommandEncoderWithDescriptor:v37];
        [NSString stringWithFormat:@"DownloadSubTexture_framebufferOnly_draw[name=%lu, ref=%llu]", *v120, v120[1]];

        v44 = [v35 getFramebufferPipeline:{objc_msgSend(v36, "pixelFormat")}];
        [v43 setRenderPipelineState:v44];
        [v43 setFragmentTexture:v36 atIndex:0];
        [v43 drawPrimitives:3 vertexStart:0 vertexCount:3];
        [v43 endEncoding];
        [v42 commit];
        v140 = v31;
      }

      v45 = v123;
      *v111 = v8;
      if ((v129 & 0xFFFFFFFFFFFFFFFELL) == 0x226)
      {
        v46 = 94;
        if (v129 == 551)
        {
          v46 = 555;
        }

        if (v129 == 550)
        {
          v47 = 554;
        }

        else
        {
          v47 = v46;
        }

        v124 = v31;
        v48 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:v47 width:v127 height:v128 mipmapped:0];
        [v48 setStorageMode:2];
        [v48 setUsage:5];
        v100 = [v112 newTextureWithDescriptor:v48];
        v49 = v140;
        v140 = v100;

        v50 = &a3[57 * v8];
        [NSString stringWithFormat:@"DownloadSubTexture_RGB10A8_2P_copyTexture_0[name=%lu, ref=%llu]", *v120, v120[1]];

        v51 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:10 width:v127 height:v128 mipmapped:0];
        [v51 setStorageMode:2];
        [v51 setUsage:5];
        v52 = [v112 newTextureWithDescriptor:v51];
        v53 = v141;
        v141 = v52;

        [NSString stringWithFormat:@"DownloadSubTexture_RGB10A8_2P_copyTexture_1[name=%lu, ref=%llu]", *v50, v50[1]];
        v133 = 0;
        v54 = [v112 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal\n;struct VOut { float4 pos [[position]]; float2 uv; };\nvertex VOut Vertex(uint vid [[ vertex_id ]]) {VOut out; out.uv = float2((vid << 1) & 2 options:vid & 2); out.pos = float4(out.uv * 2.0f + -1.0f error:{0.0f, 1.0f); return out; }\nstruct FOut { float4 rt0 [[color(0)]]; float rt1 [[color(1)]]; };\nfragment FOut Fragment(VOut in [[stage_in]], texture2d<float> tex) { FOut out;\nfloat4 texel = tex.read(uint2(tex.get_width() * (in.uv.x), tex.get_height() * (in.uv.y)));out.rt0 = float4(texel.rgb, 0.0);\nout.rt1 = texel.a;\nreturn out; }\n", 0, &v133}];
        v55 = v133;
        v115 = [v54 newFunctionWithName:@"Vertex"];
        v101 = [v54 newFunctionWithName:@"Fragment"];
        v56 = objc_opt_new();
        [v56 setVertexFunction:v115];
        [v56 setFragmentFunction:v101];
        v57 = [v56 colorAttachments];
        v58 = [v57 objectAtIndexedSubscript:0];
        [v58 setPixelFormat:v47];

        v59 = [v56 colorAttachments];
        v60 = [v59 objectAtIndexedSubscript:1];
        [v60 setPixelFormat:10];

        v132 = v55;
        v61 = [v112 newRenderPipelineStateWithDescriptor:v56 error:&v132];
        v99 = v132;

        v62 = +[MTLRenderPassDescriptor renderPassDescriptor];
        v63 = [v62 colorAttachments];
        v64 = [v63 objectAtIndexedSubscript:0];
        [v64 setTexture:v100];

        v65 = [v62 colorAttachments];
        v66 = [v65 objectAtIndexedSubscript:0];
        [v66 setStoreAction:1];

        v67 = [v62 colorAttachments];
        v68 = [v67 objectAtIndexedSubscript:1];
        [v68 setTexture:v52];

        v69 = [v62 colorAttachments];
        v70 = [v69 objectAtIndexedSubscript:1];
        [v70 setStoreAction:1];

        v71 = [v122 newCommandBuffer];
        v72 = [v71 renderCommandEncoderWithDescriptor:v62];
        [NSString stringWithFormat:@"DownloadSubTexture_RGB10A8_2P_draw[name=%lu, ref=%llu]", *v50, v50[1]];

        [v72 setRenderPipelineState:v61];
        [v72 setFragmentTexture:v124 atIndex:0];

        [v72 drawPrimitives:3 vertexStart:0 vertexCount:3];
        [v72 endEncoding];
        [v71 commit];

        v45 = *__str;
      }

      v73 = [v121 offset];
      v75 = v127;
      v74 = v128;
      if (v45)
      {
        v76 = 0;
        v77 = v139;
        v78 = &v73[v107];
        v79 = v29 + 3;
        v116 = v29 + 3;
        do
        {
          v80 = *(v77 + 8);
          v81 = &v79[6 * v29[2]];
          *v81 = v129;
          v81[1] = v75;
          v81[2] = v74;
          v81[3] = v130;
          *(v81 + 2) = v80;
          ++v29[2];
          if (v126 != &dword_0 + 3)
          {
            v125 = v80;
            v82 = [v122 blitCommandEncoder];
            [NSString stringWithFormat:@"DownloadSubTexture[plane=%d]", v76];

            v83 = [v122 blitCommandEncoder];
            v84 = v29;
            v85 = v45;
            v86 = *(&v140 + v76);
            v87 = *(v120 + 24);
            v88 = *(v120 + 25);
            v89 = [v121 buffer];
            v90 = *(v77 + 3);
            v134 = v119;
            v135 = v118;
            v136 = v117;
            v131[0] = v127;
            v131[1] = v128;
            v131[2] = v130;
            v91 = v86;
            v45 = v85;
            v29 = v84;
            [v83 copyFromTexture:v91 sourceSlice:v87 sourceLevel:v88 sourceOrigin:&v134 sourceSize:v131 toBuffer:v89 destinationOffset:v78 destinationBytesPerRow:v125 destinationBytesPerImage:v90 options:?];

            v79 = v116;
            v75 = v127;
            v74 = v128;
          }

          v92 = *v77;
          v77 += 2;
          v78 += v92;
          ++v76;
        }

        while (v45 != v76);
      }

      for (j = 8; j != -8; j -= 8)
      {
      }

      a3 = v103;
      GTResourceDownloaderGetResourceFilename(v103, v111[0], __str, 0x80uLL);
      v94 = [v121 buffer];
      v95 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v121 offset] + objc_msgSend(v94, "contents"), objc_msgSend(v121, "size"), 0);

      v96 = [v122 objects];
      v97 = [NSString stringWithUTF8String:__str];
      [v96 addObject:v97];

      v98 = [v122 objects];
      [v98 addObject:v95];

      atomic_fetch_add(&g_GPUDataSize, [v95 length]);
      objc_autoreleasePoolPop(context);
      v8 = *v111 + 1;
    }

    while (*v111 + 1 != v102);
  }
}

void DownloadAccelerationStructure(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (DownloadAccelerationStructure_onceToken != -1)
  {
    dispatch_once(&DownloadAccelerationStructure_onceToken, &__block_literal_global_205);
  }

  v7 = *a3;
  v8 = [v7 device];
  v9 = DEVICEOBJECT(v8);

  v10 = [v9 newCommandQueue];
  [NSString stringWithFormat:@"com.apple.gputools.DownloadAccelerationStructure[name=%lu, ref=%llu]", *a3, a3[1]];

  v11 = [v5 getGPUBuffer:24 context:v6];
  v12 = [v10 commandBufferWithDescriptor:DownloadAccelerationStructure_commandBufferDescriptor];
  v92 = v10;
  [v10 label];

  v13 = [v12 accelerationStructureCommandEncoder];
  [v12 label];

  v14 = DEVICEOBJECT(v7);
  v15 = [v11 buffer];
  [v13 writeAccelerationStructureSerializationData:v14 toBuffer:v15 offset:{objc_msgSend(v11, "offset")}];

  [v13 endEncoding];
  [v12 commit];
  [v12 waitUntilCompleted];

  v16 = [v11 buffer];
  v17 = [v16 contents];
  v18 = [v11 offset];
  v20 = *&v18[v17];
  v19 = *&v18[v17 + 8];

  if (v19 >= 0x19 && [v9 isCompatibleWithAccelerationStructure:v20])
  {
    v89 = v9;
    v90 = v5;
    v21 = [v5 getGPUBuffer:v19 context:v6];
    v22 = [v7 stateBuffer];
    v91 = v6;
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = v22;
    v24 = [v7 stateBuffer];
    v25 = [v24 length];

    if (v25 < 8)
    {
      goto LABEL_16;
    }

    v26 = [v7 stateBuffer];
    v27 = *([v26 contents] + 1);

    if (v27)
    {
      v28 = v21;
      v29 = [v6 captureAccelerationStructures];
      v30 = GTAccelerationStructureDescriptorDownloader_children(v92, v7, v29);

      v31 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v30, "count")}];
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v32 = v30;
      v33 = [v32 countByEnumeratingWithState:&v93 objects:v106 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v94;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v94 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = DEVICEOBJECT(*(*(&v93 + 1) + 8 * i));
            [v31 addObject:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v93 objects:v106 count:16];
        }

        while (v34);
      }

      v38 = [v91 accelerationStructureCommandEncoder];
      [NSString stringWithFormat:@"DownloadAccelerationStructure_serializeInstanceAccelerationStructure[name=%lu, ref=%llu]", *a3, a3[1]];

      v39 = [v91 accelerationStructureCommandEncoder];
      v40 = DEVICEOBJECT(v7);
      v21 = v28;
      v41 = [v28 buffer];
      [v39 serializeInstanceAccelerationStructure:v40 primitiveAccelerationStructures:v31 toBuffer:v41 serializedBufferOffset:{objc_msgSend(v21, "offset")}];

      v6 = v91;
      v42 = MTLDepthStencilDescriptor_ptr;
    }

    else
    {
LABEL_16:
      v43 = [v6 accelerationStructureCommandEncoder];
      v42 = MTLDepthStencilDescriptor_ptr;
      [NSString stringWithFormat:@"DownloadAccelerationStructure_serializePrimitiveAccelerationStructure[name=%lu, ref=%llu]", *a3, a3[1]];

      v44 = [v6 accelerationStructureCommandEncoder];
      v45 = DEVICEOBJECT(v7);
      v46 = [v21 buffer];
      [v44 serializePrimitiveAccelerationStructure:v45 toBuffer:v46 serializedBufferOffset:{objc_msgSend(v21, "offset")}];

      v32 = 0;
    }

    GTResourceDownloaderGetResourceFilename(a3, 0, __str, 0x80uLL);
    v47 = [v21 buffer];
    v88 = v21;
    v48 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v21 offset] + objc_msgSend(v47, "contents"), objc_msgSend(v21, "size"), 0);

    v49 = [v6 objects];
    v50 = [v42[73] stringWithUTF8String:__str];
    [v49 addObject:v50];

    v51 = [v6 objects];
    [v51 addObject:v48];

    atomic_fetch_add(&g_GPUDataSize, [v48 length]);
    v52 = [v7 traceContext];
    v53 = a3[6];
    *__str = v52;
    v98 = 0;
    v99 = 0;
    v100 = v53;
    s();
    v55 = v54;
    v56 = *v54;
    *v54 = v57;
    v101 = v56;
    v102 = *(v54 + 8);
    v103 = 16400;
    v104 = 0;
    v105 = 0;
    v58 = [v7 stateBuffer];
    v59 = v58;
    if (v58 && [v58 length] >= 8)
    {
      v60 = *([v59 contents] + 1);
      v61 = v60 & 1;
      v87 = vand_s8(vshl_u32(vdup_n_s32(v60), 0xFFFFFFFEFFFFFFFFLL), 0x100000001);
      v62 = (v60 >> 3) & 1;
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v87 = 0;
    }

    GTTraceEncoder_setStream(__str, [v7 traceStream]);
    v63 = v99;
    *(v99 + 8) = -10159;
    v64 = v103;
    if (v103 > 0x28uLL)
    {
      v66 = *(v98 + 24);
      v86 = v59;
      v67 = a3;
      v68 = v62;
      v69 = v61;
      v70 = HIBYTE(v103);
      ++HIBYTE(v103);
      v65 = GTTraceMemPool_allocateBytes(v66, v100, v70 | 0x1800000000) + 16;
      v64 = v70;
      v61 = v69;
      v62 = v68;
      a3 = v67;
      v59 = v86;
    }

    else
    {
      v65 = (v63 + v103);
      LOBYTE(v103) = v103 + 24;
    }

    *(v63 + 13) = v64;
    v71 = [v7 traceStream];
    if (v71)
    {
      v72 = *v71;
    }

    else
    {
      v72 = 0;
    }

    *v65 = v72;
    *(v65 + 2) = v61;
    *(v65 + 12) = v87;
    *(v65 + 5) = v62;
    [v7 traceContext];
    v73 = v99;
    *v55 = v101;
    *(v55 + 8) = v102;
    *(v73 + 15) |= 8u;

    if (v32)
    {
      v74 = [v32 count];
      v75 = [[NSMutableData alloc] initWithLength:8 * v74];
      v76 = [v75 mutableBytes];
      if (v74)
      {
        v77 = v76;
        for (j = 0; j != v74; ++j)
        {
          v79 = [v32 objectAtIndexedSubscript:j];
          v80 = [v79 traceStream];
          if (v80)
          {
            v81 = atomic_load(v80 + 7);
            v82 = (v80 + (~(v81 >> 2) & 8));
          }

          else
          {
            v82 = &dword_8;
          }

          v77[j] = *v82;
        }
      }

      GTResourceDownloaderGetResourceFilename(a3, 1, __str, 0x80uLL);
      v83 = [v91 objects];
      v84 = [NSString stringWithUTF8String:__str];
      [v83 addObject:v84];

      v85 = [v91 objects];
      [v85 addObject:v75];

      atomic_fetch_add(&g_GPUDataSize, [v75 length]);
    }

    v5 = v90;
    v6 = v91;
    v9 = v89;
  }
}

uint64_t ResourceTypeSortOrder(int a1)
{
  if (a1 <= 59)
  {
    if (a1 > 49)
    {
      if (a1 == 50)
      {
        return 1;
      }

      if (a1 == 57)
      {
        return 8;
      }
    }

    else
    {
      if (a1 == 16)
      {
        return 7;
      }

      if (a1 == 22)
      {
        return 4;
      }
    }
  }

  else if (a1 <= 82)
  {
    if (a1 == 60)
    {
      return 2;
    }

    if (a1 == 80)
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 'S':
        return 3;
      case 'V':
        return 5;
      case 'e':
        return 9;
    }
  }

  return 0;
}

uint64_t GTResourceDownloaderRequest_markTextureAsDrawable(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 47) |= 4u;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

apr_array_header_t *GTResourceDownloaderProcessRequest(apr_pool_t *a1, uint64_t a2)
{
  v2 = a2;
  arr = apr_array_make(a1, *(a2 + 12), 456);
  if (*(v2 + 12) >= 1)
  {
    v3 = 0;
    v144 = v2;
    v4 = &unk_31F000;
    v146 = vdupq_n_s64(0x20uLL);
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(v2 + 24) + 456 * v3;
      Stream = GTTraceContext_getStream(v4[243], *(v6 + 8));
      Func = GTTraceStream_lastFunc(Stream);
      if ((GTFenum_isDestructor(*(Func + 8)) & 1) == 0)
      {
        v9 = *(v6 + 46);
        if (v9 > 0x3B)
        {
          v145 = v5;
          if (*(v6 + 46) > 0x52u)
          {
            if (v9 == 83)
            {
              v63 = v3;
              v64 = *v6;
              v65 = *(v6 + 8);
              v66 = *(v6 + 16);
              v67 = *(v6 + 40);
              v10 = *v6;
              v68 = [v10 functionArray];
              v69 = [v68 count];

              v70 = apr_array_push(arr);
              *v70 = v64;
              *(v70 + 1) = v65;
              v3 = v63;
              *(v70 + 3) = 0;
              *(v70 + 4) = 0;
              *(v70 + 2) = v66;
              *(v70 + 10) = v67;
              v2 = v144;
              v5 = v145;
              *(v70 + 11) = 5439488;
              *(v70 + 6) = v69;
              *(v70 + 72) = 0u;
              *(v70 + 88) = 0u;
              *(v70 + 104) = 0u;
              *(v70 + 120) = 0u;
              *(v70 + 136) = 0u;
              *(v70 + 152) = 0u;
              *(v70 + 168) = 0u;
              *(v70 + 184) = 0u;
              *(v70 + 200) = 0u;
              *(v70 + 216) = 0u;
              *(v70 + 232) = 0u;
              *(v70 + 248) = 0u;
              *(v70 + 56) = 0u;
              v70 += 56;
              *(v70 + 13) = 0u;
              *(v70 + 14) = 0u;
              *(v70 + 15) = 0u;
              *(v70 + 16) = 0u;
              *(v70 + 17) = 0u;
              *(v70 + 18) = 0u;
              *(v70 + 19) = 0u;
              *(v70 + 20) = 0u;
              *(v70 + 21) = 0u;
              *(v70 + 22) = 0u;
              *(v70 + 23) = 0u;
              *(v70 + 24) = 0u;
              goto LABEL_31;
            }

            if (v9 == 101)
            {
              v36 = *v6;
              v10 = DEVICEOBJECT(v36);

              v37 = apr_array_push(arr);
              v37[46] = *(v6 + 46);
              *v37 = *v6;
              *(v37 + 2) = *(v6 + 16);
              *(v37 + 10) = *(v6 + 40);
              GTMTLTensor_wholeSlice(v10, __src);
              memcpy(v37 + 48, __src, 0x110uLL);
              v38 = *(v37 + 264);
              v39 = *(v37 + 296);
              v188 = *(v37 + 280);
              v189 = v39;
              v190 = *(v37 + 39);
              v40 = *(v37 + 200);
              v41 = *(v37 + 232);
              v184 = *(v37 + 216);
              v185 = v41;
              v186 = *(v37 + 248);
              v187 = v38;
              v182 = *(v37 + 184);
              v183 = v40;
              memset(&__src[1], 0, 120);
              *&__src[0] = v182.i64[0];
              *(&__src[0] + 1) = 1;
              if (v182.i64[0] >= 2uLL)
              {
                v42 = v182.i64[0] - 1;
                v43 = &v182.i64[1];
                v44 = &__src[1];
                v45 = 1;
                do
                {
                  v46 = *v43++;
                  v45 *= v46;
                  *v44++ = v45;
                  --v42;
                }

                while (v42);
              }

              v47 = __src[7];
              *(v37 + 26) = __src[6];
              *(v37 + 27) = v47;
              *(v37 + 56) = *&__src[8];
              v48 = __src[3];
              *(v37 + 22) = __src[2];
              *(v37 + 23) = v48;
              v49 = __src[5];
              *(v37 + 24) = __src[4];
              *(v37 + 25) = v49;
              v50 = __src[1];
              *(v37 + 20) = __src[0];
              *(v37 + 21) = v50;
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 == 60)
            {
              v52 = v3;
              v53 = *v6;
              v54 = *(v6 + 8);
              v55 = *(v6 + 16);
              v56 = *(v6 + 40);
              v10 = *v6;
              v57 = [v10 functionArray];
              v58 = [v57 count];

              v59 = apr_array_push(arr);
              *v59 = v53;
              v59[1] = v54;
              v3 = v52;
              v59[3] = 0;
              v59[4] = 0;
              v59[2] = v55;
              *(v59 + 10) = v56;
              v2 = v144;
              v5 = v145;
              *(v59 + 11) = 3932160;
              v59[6] = v58;
              v59[7] = 31;
              *(v59 + 4) = 0u;
              *(v59 + 5) = 0u;
              *(v59 + 6) = 0u;
              *(v59 + 7) = 0u;
              *(v59 + 8) = 0u;
              *(v59 + 9) = 0u;
              *(v59 + 10) = 0u;
              *(v59 + 11) = 0u;
              *(v59 + 12) = 0u;
              *(v59 + 13) = 0u;
              *(v59 + 14) = 0u;
              *(v59 + 15) = 0u;
              *(v59 + 16) = 0u;
              *(v59 + 17) = 0u;
              *(v59 + 18) = 0u;
              *(v59 + 19) = 0u;
              *(v59 + 20) = 0u;
              *(v59 + 21) = 0u;
              *(v59 + 22) = 0u;
              *(v59 + 23) = 0u;
              *(v59 + 24) = 0u;
              *(v59 + 25) = 0u;
              *(v59 + 26) = 0u;
              *(v59 + 27) = 0u;
              v59[56] = 0;
              goto LABEL_31;
            }

            if (v9 == 80)
            {
              v12 = *v6;
              v13 = DEVICEOBJECT(v12);

              v176 = v6;
              v143 = v13;
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 isSparse])
              {
                v14 = v6;
                v15 = v13;
                v16 = *v14;
                v17 = DEVICEOBJECT(v16);

                v142 = v3;
                v149 = v15;
                if ([v17 isSparse])
                {
                  v18 = [v17 device];
                  v19 = [v18 newCommandQueue];
                  [NSString stringWithFormat:@"com.apple.gputools.GTResourceDownloader.DownloadSparseTextureMappingBuffer[name=%lu, ref=%llu]", *v14, v14[1]];

                  v20 = [0 commanndBufferDescriptor];
                  v21 = [v19 commandBufferWithDescriptor:v20];

                  v171 = v19;
                  [v19 label];

                  v167 = GetSparseTextureMappingKernelFunction(v17, v18);
                  v22 = [v18 newComputePipelineStateWithFunction:? error:?];
                  v23 = [v21 computeCommandEncoder];
                  v169 = v21;
                  [v21 label];

                  v165 = v22;
                  [v23 setComputePipelineState:v22];
                  [v23 setTexture:v17 atIndex:0];
                  v24 = GetSparseTextureMappingBuffer(v17, v18);
                  memset(__src, 0, 64);
                  v182 = 0uLL;
                  v183.i64[0] = 0;
                  v5 = [v17 textureType];
                  v25 = [v17 pixelFormat];
                  v26 = [v17 sampleCount];
                  if (v18)
                  {
                    [v18 sparseTileSizeWithTextureType:v5 pixelFormat:v25 sampleCount:v26];
                  }

                  else
                  {
                    v182 = 0uLL;
                    v183.i64[0] = 0;
                  }

                  if ([v17 arrayLength])
                  {
                    v5 = 0;
                    v100 = 0;
                    while (![v17 mipmapLevelCount])
                    {
LABEL_83:
                      if (++v100 >= [v17 arrayLength])
                      {
                        goto LABEL_84;
                      }
                    }

                    v101 = 0;
                    while (2)
                    {
                      v102 = [v17 width] >> v101;
                      if (v102 <= 1)
                      {
                        LODWORD(v102) = 1;
                      }

                      LODWORD(__src[0]) = v102;
                      v103 = [v17 height] >> v101;
                      if (v103 <= 1)
                      {
                        LODWORD(v103) = 1;
                      }

                      DWORD1(__src[0]) = v103;
                      v104 = [v17 depth] >> v101;
                      if (v104 <= 1)
                      {
                        LODWORD(v104) = 1;
                      }

                      DWORD2(__src[0]) = v104;
                      DWORD2(__src[1]) = v183.i32[0];
                      *&__src[1] = vmovn_s64(v182);
                      v105.i64[0] = LODWORD(__src[0]);
                      v105.i64[1] = DWORD1(__src[0]);
                      v106.i64[0] = 0xFFFFFFFFLL;
                      v106.i64[1] = 0xFFFFFFFFLL;
                      v180 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(vcvtq_f64_u64(v105), vcvtq_f64_u64(vandq_s8(v182, v106))))));
                      *&__src[2] = v180;
                      v107 = vcvtpd_u64_f64(v104 / v183.u32[0]);
                      DWORD2(__src[2]) = v107;
                      if ([v17 textureType] == &dword_4 + 1)
                      {
                        LODWORD(__src[3]) = v100;
                        DWORD2(__src[3]) = v101;
                        goto LABEL_77;
                      }

                      v108 = [v17 textureType];
                      LODWORD(__src[3]) = v100;
                      DWORD2(__src[3]) = v101;
                      if (v108 == &dword_4 + 2)
                      {
LABEL_77:
                        v109 = v100 % 6;
                      }

                      else
                      {
                        v109 = 0;
                      }

                      v110 = v180.i32[0] * v107 * v180.i32[1];
                      DWORD1(__src[3]) = v109;
                      HIDWORD(__src[3]) = v110;
                      [NSString stringWithFormat:@"DownloadSparseTextureMappingBuffer[slice = %lu, level = %lu]", v100, v101];

                      [v23 setBuffer:v24 offset:v5 atIndex:0];
                      [v23 setBytes:__src length:64 atIndex:1];
                      if (v101 >= [v17 firstMipmapInTail])
                      {
                        v112 = vdupq_n_s64(1uLL);
                        v194 = v112;
                        v195.i64[0] = 1;
                      }

                      else
                      {
                        v111.i64[0] = LODWORD(__src[2]);
                        v111.i64[1] = DWORD1(__src[2]);
                        v194 = v111;
                        v195.i64[0] = DWORD2(__src[2]);
                        v112 = v146;
                      }

                      v192 = v112;
                      v193 = 1;
                      [v23 dispatchThreads:&v194 threadsPerThreadgroup:&v192];
                      v5 += v110;
                      if (++v101 >= [v17 mipmapLevelCount])
                      {
                        goto LABEL_83;
                      }

                      continue;
                    }
                  }

LABEL_84:
                  [v23 endEncoding];
                  [v169 commit];
                  [v169 waitUntilCompleted];

                  v15 = v149;
                }

                else
                {
                  v24 = 0;
                }

                v113 = [v15 device];
                v162 = [v15 pixelFormat];
                v161 = [v15 sampleCount];
                v148 = [v24 contents];
                v114 = -1;
                do
                {
                  ++v114;
                }

                while (v114 < [v24 length]);
                v159 = *(v176 + 8);
                v160 = *v176;
                v158 = *(v176 + 16);
                v156 = *(v176 + 46);
                v157 = *(v176 + 40);
                v147 = [v15 firstMipmapInTail];
                v182 = 0uLL;
                v183.i64[0] = 0;
                v115 = [v15 textureType];
                v116 = [v15 pixelFormat];
                v117 = [v15 sampleCount];
                v141 = v24;
                if (v113)
                {
                  [v113 sparseTileSizeWithTextureType:v115 pixelFormat:v116 sampleCount:v117];
                }

                else
                {
                  v182 = 0uLL;
                  v183.i64[0] = 0;
                }

                if ([v15 arrayLength])
                {
                  v163 = 0;
                  v118 = 0;
                  v119 = 1;
                  do
                  {
                    if ([v15 mipmapLevelCount])
                    {
                      v120 = 0;
                      do
                      {
                        v121 = [v15 width];
                        if (v121 >> v120 <= 1)
                        {
                          LODWORD(v122) = 1;
                        }

                        else
                        {
                          v122 = v121 >> v120;
                        }

                        v123 = [v15 height];
                        if (v123 >> v120 <= 1)
                        {
                          LODWORD(v124) = 1;
                        }

                        else
                        {
                          v124 = v123 >> v120;
                        }

                        v125 = [v15 depth] >> v120;
                        LODWORD(v5) = vcvtpd_u64_f64(v122 / v182.u32[0]);
                        if (v125 <= 1)
                        {
                          LODWORD(v125) = 1;
                        }

                        v154 = vcvtpd_u64_f64(v124 / v182.u32[2]);
                        v151 = vcvtpd_u64_f64(v125 / v183.u32[0]);
                        v177 = v120;
                        if (v151)
                        {
                          v126 = 0;
                          v172 = 2 * (v147 < v120);
                          v174 = v182.i32[0];
                          if (v182.i32[0] >= v122)
                          {
                            v127 = v122;
                          }

                          else
                          {
                            v127 = v182.u32[0];
                          }

                          v153 = v182.i16[4];
                          if (v182.i32[2] >= v124)
                          {
                            v128 = v124;
                          }

                          else
                          {
                            v128 = v182.u16[4];
                          }

                          v150 = v183.i16[0];
                          if (v183.i32[0] < v125)
                          {
                            LOWORD(v125) = v183.i16[0];
                          }

                          v170 = v128;
                          v168 = v125;
                          v164 = v125;
                          v166 = v128;
                          v129 = 0uLL;
                          do
                          {
                            v152 = v126;
                            if (v154)
                            {
                              v130 = 0;
                              v181 = v126 * v150;
                              do
                              {
                                v155 = v130;
                                if (v5)
                                {
                                  v131 = 0;
                                  v132 = v130 * v5;
                                  v133 = v130 * v153;
                                  do
                                  {
                                    if (v148[v118 + v132 + v131])
                                    {
                                      __src[8] = v129;
                                      __src[9] = v129;
                                      __src[6] = v129;
                                      __src[7] = v129;
                                      __src[4] = v129;
                                      __src[5] = v129;
                                      __src[2] = v129;
                                      __src[3] = v129;
                                      __src[0] = v129;
                                      __src[1] = v129;
                                      v194.i64[0] = v127;
                                      v194.i64[1] = v166;
                                      v195.i64[0] = v164;
                                      MTLTextureInfo(v113, v162, v194.i64, v161, __src);
                                      v134 = *&__src[0];
                                      v135 = (48 * LODWORD(__src[0]) + 279) & 0xFFFFFF00;
                                      for (i = &__src[2]; v134; --v134)
                                      {
                                        v137 = *i;
                                        i += 4;
                                        v135 += v137;
                                      }

                                      v119 = v119 & 0xFFFFFFFD | v172;
                                      v138 = vmovn_s64(*(__src + 8));
                                      v139 = apr_array_push(arr);
                                      *v139 = v160;
                                      *(v139 + 1) = v159;
                                      *(v139 + 3) = 0;
                                      *(v139 + 4) = 0;
                                      *(v139 + 2) = v158;
                                      *(v139 + 10) = v157;
                                      *(v139 + 22) = 0;
                                      v139[46] = v156;
                                      v139[47] = v119;
                                      *(v139 + 24) = v163;
                                      *(v139 + 25) = v177;
                                      *(v139 + 13) = v131 * v174;
                                      *(v139 + 28) = v133;
                                      *(v139 + 29) = v181;
                                      *(v139 + 15) = v127;
                                      *(v139 + 32) = v170;
                                      *(v139 + 33) = v168;
                                      *(v139 + 68) = v138;
                                      *(v139 + 19) = v135;
                                      *(v139 + 56) = 0;
                                      v129 = 0uLL;
                                      *(v139 + 26) = 0u;
                                      *(v139 + 27) = 0u;
                                      *(v139 + 24) = 0u;
                                      *(v139 + 25) = 0u;
                                      *(v139 + 22) = 0u;
                                      *(v139 + 23) = 0u;
                                      *(v139 + 20) = 0u;
                                      *(v139 + 21) = 0u;
                                      *(v139 + 18) = 0u;
                                      *(v139 + 19) = 0u;
                                      *(v139 + 16) = 0u;
                                      *(v139 + 17) = 0u;
                                      *(v139 + 14) = 0u;
                                      *(v139 + 15) = 0u;
                                      *(v139 + 12) = 0u;
                                      *(v139 + 13) = 0u;
                                      *(v139 + 10) = 0u;
                                      *(v139 + 11) = 0u;
                                      *(v139 + 8) = 0u;
                                      *(v139 + 9) = 0u;
                                      *(v139 + 6) = 0u;
                                      *(v139 + 7) = 0u;
                                      *(v139 + 5) = 0u;
                                    }

                                    v131 = v131 + 1;
                                  }

                                  while (v131 != v5);
                                }

                                v130 = v155 + 1;
                              }

                              while (v155 + 1 != v154);
                            }

                            v126 = v152 + 1;
                          }

                          while (v152 + 1 != v151);
                        }

                        v118 += v154 * v5 * v151;
                        v120 = v177 + 1;
                        v15 = v149;
                      }

                      while (v177 + 1 < [v149 mipmapLevelCount]);
                    }

                    ++v163;
                  }

                  while (v163 < [v15 arrayLength]);
                }

                v2 = v144;
                v5 = v145;
                v4 = &unk_31F000;
                v71 = v141;
LABEL_126:

LABEL_127:
                v3 = v142;
              }

              else if (CanHarvestTextureAsIOSurfaceUsingCPU(v13))
              {
                v15 = *v6;
                if ([v15 conformsToProtocol:&OBJC_PROTOCOL___MTLTexture])
                {
                  v142 = v3;
                  v71 = v15;
                  PlaneCount = IOSurfaceGetPlaneCount([v71 iosurface]);
                  v73 = 0;
                  v74 = 0;
                  if (PlaneCount <= 1)
                  {
                    v75 = 1;
                  }

                  else
                  {
                    v75 = PlaneCount;
                  }

                  do
                  {
                    v73 += IOSurfaceGetSizeOfPlane();
                    ++v74;
                  }

                  while (v75 != v74);
                  v76 = apr_array_push(arr);
                  v178 = *v176;
                  v77 = *(v176 + 16);
                  v78 = *(v176 + 40);
                  v79 = [v71 iosurfacePlane];
                  *v76 = v178;
                  v76[3] = 0;
                  v76[4] = 0;
                  v76[2] = v77;
                  *(v76 + 10) = v78;
                  *(v76 + 11) = 5636096;
                  v76[6] = v73;
                  v76[7] = v79;
                  *(v76 + 4) = 0u;
                  *(v76 + 5) = 0u;
                  *(v76 + 6) = 0u;
                  *(v76 + 7) = 0u;
                  *(v76 + 8) = 0u;
                  *(v76 + 9) = 0u;
                  *(v76 + 10) = 0u;
                  *(v76 + 11) = 0u;
                  *(v76 + 12) = 0u;
                  *(v76 + 13) = 0u;
                  *(v76 + 14) = 0u;
                  *(v76 + 15) = 0u;
                  *(v76 + 16) = 0u;
                  *(v76 + 17) = 0u;
                  *(v76 + 18) = 0u;
                  *(v76 + 19) = 0u;
                  *(v76 + 20) = 0u;
                  *(v76 + 21) = 0u;
                  *(v76 + 22) = 0u;
                  *(v76 + 23) = 0u;
                  *(v76 + 24) = 0u;
                  *(v76 + 25) = 0u;
                  *(v76 + 26) = 0u;
                  *(v76 + 27) = 0u;
                  v15 = v71;
                  v76[56] = 0;
                  goto LABEL_126;
                }
              }

              else
              {
                v15 = v13;
                v80 = [v15 mipmapLevelCount];
                v81 = [v15 arrayLength];
                IsCube = MTLTextureIsCube(v15);
                v83 = 6;
                if (!IsCube)
                {
                  v83 = 1;
                }

                v173 = v80;
                if (v80)
                {
                  v142 = v3;
                  v84 = 0;
                  v179 = v83 * v81;
                  do
                  {
                    if ([v15 width] >> v84)
                    {
                      v85 = [v15 width] >> v84;
                    }

                    else
                    {
                      v85 = 1;
                    }

                    if ([v15 height] >> v84)
                    {
                      v86 = [v15 height] >> v84;
                    }

                    else
                    {
                      v86 = 1;
                    }

                    if ([v15 depth] >> v84)
                    {
                      v87 = [v15 depth] >> v84;
                    }

                    else
                    {
                      v87 = 1;
                    }

                    if (v179)
                    {
                      for (j = 0; j != v179; ++j)
                      {
                        v89 = apr_array_push(arr);
                        v90 = v15;
                        v91 = v15;
                        v92 = [v91 device];
                        v93 = [v91 pixelFormat];
                        v94 = [v91 sampleCount];
                        memset(__src, 0, 160);
                        v182.i64[0] = v85;
                        v182.i64[1] = v86;
                        v183.i64[0] = v87;
                        MTLTextureInfo(v92, v93, v182.i64, v94, __src);
                        v95 = *&__src[0];
                        v96 = (48 * LODWORD(__src[0]) + 279) & 0xFFFFFF00;
                        if (*&__src[0])
                        {
                          v97 = &__src[2];
                          do
                          {
                            v98 = *v97;
                            v97 += 8;
                            v96 += v98;
                            --v95;
                          }

                          while (v95);
                        }

                        v99 = vmovn_s64(*(__src + 8));

                        *(v89 + 1) = 0u;
                        *(v89 + 2) = 0u;
                        *v89 = 0u;
                        *(v89 + 24) = j;
                        *(v89 + 25) = v84;
                        *(v89 + 52) = 0;
                        *(v89 + 15) = v85;
                        *(v89 + 32) = v86;
                        *(v89 + 33) = v87;
                        *(v89 + 68) = v99;
                        *(v89 + 19) = v96;
                        *(v89 + 5) = 0u;
                        *(v89 + 6) = 0u;
                        *(v89 + 7) = 0u;
                        *(v89 + 8) = 0u;
                        *(v89 + 9) = 0u;
                        *(v89 + 10) = 0u;
                        *(v89 + 11) = 0u;
                        *(v89 + 12) = 0u;
                        *(v89 + 13) = 0u;
                        *(v89 + 14) = 0u;
                        *(v89 + 15) = 0u;
                        *(v89 + 16) = 0u;
                        *(v89 + 17) = 0u;
                        *(v89 + 18) = 0u;
                        *(v89 + 19) = 0u;
                        *(v89 + 20) = 0u;
                        *(v89 + 21) = 0u;
                        *(v89 + 22) = 0u;
                        *(v89 + 23) = 0u;
                        *(v89 + 24) = 0u;
                        *(v89 + 25) = 0u;
                        *(v89 + 26) = 0u;
                        *(v89 + 27) = 0u;
                        *(v89 + 56) = 0;
                        v89[46] = *(v176 + 46);
                        *v89 = *v176;
                        *(v89 + 2) = *(v176 + 16);
                        *(v89 + 10) = *(v176 + 40);
                        v15 = v90;
                      }
                    }

                    ++v84;
                    v4 = &unk_31F000;
                    v5 = v145;
                  }

                  while (v84 != v173);
                  v2 = v144;
                  goto LABEL_127;
                }
              }
            }
          }
        }

        else if (*(v6 + 46) > 0x31u)
        {
          if (v9 == 50)
          {
            v10 = *v6;
            v11 = [v10 backbuffer];
            v60 = DEVICEOBJECT(v11);
            v61 = v6;
            v62 = v60;
            ProcessDeviceBuffer(arr, v61, v60);

            goto LABEL_29;
          }

          if (v9 == 57)
          {
            v27 = *v6;
            v183 = 0u;
            v184 = 0u;
            v182 = 0u;
            v10 = v27;
            v28 = DEVICEOBJECT(v10);
            MakeGTMTLIndirectCommandBufferDescriptorFromIndirectCommandBuffer(&v182, v28);

            GTMTLCreateIndirectCommandEncoder(__src, &v182);
            v29 = apr_array_push(arr);
            v30 = *(v6 + 16);
            v31 = *(v6 + 40);
            v32 = *(v6 + 46);
            v33 = *v6;
            v194 = v182;
            v195 = v183;
            v196 = v184;
            *v29 = v33;
            v29[1].i64[0] = v30;
            v29[1].i64[1] = 0;
            v29[2].i64[0] = 0;
            v29[2].i32[2] = v31;
            v29[2].i16[6] = 0;
            v29[2].i16[7] = v32;
            v34 = v195;
            v35 = v196;
            v29[3] = v194;
            v29[4] = v34;
            v29[28].i64[0] = 0;
            v29[26] = 0u;
            v29[27] = 0u;
            v29[24] = 0u;
            v29[25] = 0u;
            v29[22] = 0u;
            v29[23] = 0u;
            v29[20] = 0u;
            v29[21] = 0u;
            v29[18] = 0u;
            v29[19] = 0u;
            v29[16] = 0u;
            v29[17] = 0u;
            v29[14] = 0u;
            v29[15] = 0u;
            v29[12] = 0u;
            v29[13] = 0u;
            v29[10] = 0u;
            v29[11] = 0u;
            v29[8] = 0u;
            v29[9] = 0u;
            v29[6] = 0u;
            v29[7] = 0u;
            v29[5] = v35;
LABEL_31:
          }
        }

        else
        {
          if (v9 == 16)
          {
            v10 = *v6;
            v51 = apr_array_push(arr);
            v51[46] = *(v6 + 46);
            *v51 = *v6;
            *(v51 + 2) = *(v6 + 16);
            *(v51 + 10) = *(v6 + 40);
            *(v51 + 6) = atomic_fetch_add([v10 traceContext] + 10, 1uLL);
            goto LABEL_31;
          }

          if (v9 == 22)
          {
            v10 = *v6;
            v11 = DEVICEOBJECT(v10);
            ProcessDeviceBuffer(arr, v6, v11);
LABEL_29:

            goto LABEL_31;
          }
        }
      }

      objc_autoreleasePoolPop(v5);
      ++v3;
    }

    while (v3 < *(v2 + 12));
  }

  return arr;
}

void ProcessDeviceBuffer(apr_array_header_t *a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v5 = [v34 length];
  if ((dword_31F7C8 & 0x1000) == 0)
  {
    v6 = apr_array_push(a1);
    v6[46] = *(a2 + 46);
    *v6 = *a2;
    *(v6 + 2) = *(a2 + 16);
    v7 = (a2 + 40);
LABEL_17:
    *(v6 + 10) = *v7;
    *(v6 + 6) = 0;
    *(v6 + 7) = v5;
    goto LABEL_18;
  }

  Stream = GTTraceContext_getStream(g_ctx, *(a2 + 8));
  v9 = Stream;
  v7 = (a2 + 40);
  if (*(a2 + 40))
  {
    if (!Stream)
    {
      goto LABEL_18;
    }

    v10 = atomic_load((Stream + 56));
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!Stream)
  {
    goto LABEL_11;
  }

  v11 = atomic_load((Stream + 56));
  v12 = v11;
  do
  {
    atomic_compare_exchange_strong((Stream + 56), &v12, v11 & 0xFFFFFFFFFFFFFFF7);
    v16 = v12 == v11;
    v11 = v12;
  }

  while (!v16);
LABEL_11:
  tempAlloc();
  v14 = v13;
  v15 = GTMemoryGuard_copyTracedChunks(v13, v9);
  CaptureMTLBuffer_registerBaseBufferForTracing(v34, v9, 1);
  if (*v7)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v6 = apr_array_push(a1);
    v6[46] = *(a2 + 46);
    *v6 = *a2;
    *(v6 + 2) = *(a2 + 16);
    goto LABEL_17;
  }

  if (!__CFADD__(v5 - 1, vm_page_size))
  {
    v17 = 0;
    v18 = v15 << 6;
    v19 = v15 - 1;
    v20 = (v5 - 1 + vm_page_size) / vm_page_size;
    do
    {
      v21 = *v14;
      v22 = v17 >> 6;
      v23 = *(*v14 + (v17 >> 6)) & (-1 << v17);
      v24 = v23 == 0;
      if (v17 >> 6 < v19 && !v23)
      {
        do
        {
          v23 = v21[++v22];
          v24 = v23 == 0;
        }

        while (v22 < v19 && !v23);
      }

      v17 = v18;
      v25 = v18;
      if (!v24)
      {
        v26 = __clz(__rbit64(v23));
        v27 = v23 | ~(-1 << v26);
        v28 = v27 == -1;
        v29 = v22;
        if (v22 < v19 && v27 == -1)
        {
          v30 = v21 + 1;
          v29 = v22;
          do
          {
            v27 = v30[v29++];
            v28 = v27 == -1;
          }

          while (v29 < v19 && v27 == -1);
        }

        v25 = v26 | (v22 << 6);
        if (v28)
        {
          v17 = v18;
        }

        else
        {
          v17 = __clz(__rbit64(~v27)) + (v29 << 6);
        }
      }

      if (v25 >= v20)
      {
        break;
      }

      v31 = vm_page_size * v25;
      v32 = vm_page_size * v17 >= v5 ? v5 : vm_page_size * v17;
      v33 = apr_array_push(a1);
      v33[46] = *(a2 + 46);
      *v33 = *a2;
      *(v33 + 2) = *(a2 + 16);
      *(v33 + 10) = *(a2 + 40);
      *(v33 + 6) = v31;
      *(v33 + 7) = v32 - v31;
    }

    while (v17 < v20);
  }

LABEL_18:
}

uint64_t MTLIndirectCommandBuffer_descriptor(uint64_t a1)
{
  v4 = 0u;
  v5 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v4.i32[0] = 57;
  v6 = -1;
  WORD5(v11) = 2;
  v10 = 0xFFFFFFFFFFFFFFFFLL;
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 79) & 8) != 0)
  {
    v2 = v1 + 64;
  }

  else
  {
    v2 = 0;
  }

  GTMTLSMIndirectCommandBuffer_processTraceFuncWithPool(&v4, *(a1 + 24), v2);
  return v12;
}

char *AllocateSnapshotMemory(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  GTMTLCreateIndirectCommandEncoder(v10, a2);
  v5 = (v11 * a3);
  v6 = *(*(a1 + 8) + 24);
  v7 = *(a1 + 24);
  v8 = *(a1 + 42);
  *(a1 + 42) = v8 + 1;

  return GTTraceMemPool_allocateBytes(v6, v7, v8 | (v5 << 32) | 0x100);
}

char *AllocateRangeSnapshotMemory(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 24);
  v2 = *(a1 + 24);
  v3 = *(a1 + 42);
  *(a1 + 42) = v3 + 1;
  return GTTraceMemPool_allocateBytes(v1, v2, v3 | 0x1000000100);
}

void *UnwrapArray(void *a1, void **a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    v6 = a1;
    do
    {
      v7 = *a2++;
      *v6++ = [v7 baseObject];
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t StreamArray(uint64_t a1, void *__src, id *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = __src;
    v9 = a4;
    do
    {
      v10 = [*a3 traceStream];
      if (v10)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0;
      }

      *v8++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  return GTTraceEncoder_storeBytes(a1, __src, 8 * a4);
}

uint64_t StreamArrayURL(uint64_t a1, void *a2, id *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = a2;
    v9 = a4;
    do
    {
      v10 = [*a3 traceStream];
      if (v10)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0;
      }

      *v8++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  return GTTraceEncoder_storeBlob(a1, a2, 8 * a4);
}

uint64_t StreamNSArray(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      v9 = [v8 traceStream];
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      a2[v7] = v10;

      v7 = v7 + 1;
    }

    while (v6 != v7);
  }

  v11 = GTTraceEncoder_storeBytes(a1, a2, 8 * v6);

  return v11;
}

uint64_t StreamMTLNameArray(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  v5 = 8 * v4;
  __chkstk_darwin(v4, v6);
  v8 = (&v16 - v7);
  bzero(&v16 - v7, v5 + 8);
  v9 = [v3 count];
  *v8 = v9;
  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [v3 objectAtIndexedSubscript:v10];
      v12 = [v11 traceStream];
      if (v12)
      {
        v13 = *v12;
      }

      else
      {
        v13 = 0;
      }

      v8[v10 + 1] = v13;

      ++v10;
    }

    while (v10 < *v8);
  }

  v14 = GTTraceEncoder_storeBytes(a1, v8, v5 + 8);

  return v14;
}

void RetainArray(void *a1, id *a2, uint64_t a3)
{
  for (i = a1; a3; --a3)
  {
    if (*a2)
    {
      [i addObject:?];
      [*a2 touch];
    }

    ++a2;
  }
}

void RetainNSArray(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];

      if (v5)
      {
        v6 = [v3 objectAtIndexedSubscript:v4];
        [v8 addObject:v6];

        v7 = [v3 objectAtIndexedSubscript:v4];
        [v7 touch];
      }

      ++v4;
    }

    while ([v3 count] > v4);
  }
}

id unwrapNSArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) baseObject];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id deviceNSArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = DEVICEOBJECT(*(*(&v12 + 1) + 8 * i));
          [v3 addObject:{v9, v12}];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id unwrapMTLLinkedFunctions(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = unwrapNSArray(v3);
  [v2 setFunctions:v4];

  v5 = [v1 binaryFunctions];
  v6 = unwrapNSArray(v5);
  [v2 setBinaryFunctions:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 privateFunctions];
    v8 = unwrapNSArray(v7);
    [v2 setPrivateFunctions:v8];
  }

  v9 = [v1 groups];

  if (v9)
  {
    v21 = v2;
    v10 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v1 groups];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v1 groups];
          v18 = [v17 objectForKeyedSubscript:v16];
          v19 = unwrapNSArray(v18);
          [v10 setObject:v19 forKey:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v2 = v21;
    [v21 setGroups:v10];
  }

  return v2;
}

id deviceMTLLinkedFunctions(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = deviceNSArray(v3);
  [v2 setFunctions:v4];

  v5 = [v1 binaryFunctions];
  v6 = deviceNSArray(v5);
  [v2 setBinaryFunctions:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 privateFunctions];
    v8 = deviceNSArray(v7);
    [v2 setPrivateFunctions:v8];
  }

  v9 = [v1 groups];

  if (v9)
  {
    v21 = v2;
    v10 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v1 groups];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v1 groups];
          v18 = [v17 objectForKeyedSubscript:v16];
          v19 = deviceNSArray(v18);
          [v10 setObject:v19 forKey:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v2 = v21;
    [v21 setGroups:v10];
  }

  return v2;
}

id unwrapMTLComputePipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 computeFunction];
  v4 = [v3 baseObject];
  [v2 setComputeFunction:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 pipelineLibrary];
    v6 = [v5 baseObject];
    [v2 setPipelineLibrary:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 functionPointers];
    v8 = unwrapNSArray(v7);
    [v2 setFunctionPointers:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 preloadedLibraries];
    v10 = unwrapNSArray(v9);
    [v2 setPreloadedLibraries:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 binaryArchives];
    v12 = unwrapNSArray(v11);
    [v2 setBinaryArchives:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 linkedFunctions];
    v14 = unwrapMTLLinkedFunctions(v13);
    [v2 setLinkedFunctions:v14];
  }

  return v2;
}

id deviceMTLComputePipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 computeFunction];
  v4 = DEVICEOBJECT(v3);
  [v2 setComputeFunction:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 pipelineLibrary];
    v6 = DEVICEOBJECT(v5);
    [v2 setPipelineLibrary:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 functionPointers];
    v8 = deviceNSArray(v7);
    [v2 setFunctionPointers:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 preloadedLibraries];
    v10 = deviceNSArray(v9);
    [v2 setPreloadedLibraries:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 binaryArchives];
    v12 = deviceNSArray(v11);
    [v2 setBinaryArchives:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 linkedFunctions];
    v14 = deviceMTLLinkedFunctions(v13);
    [v2 setLinkedFunctions:v14];
  }

  return v2;
}

id deviceMTLComputePipelineDescriptorWithoutResourceIndex(void *a1)
{
  v1 = deviceMTLComputePipelineDescriptor(a1);
  [v1 setForceResourceIndex:0];
  [v1 setResourceIndex:_MTLInvalidResourceIndex];

  return v1;
}

id unwrapMTLRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 vertexFunction];
  v4 = [v3 baseObject];
  [v2 setVertexFunction:v4];

  v5 = [v1 fragmentFunction];
  v6 = [v5 baseObject];
  [v2 setFragmentFunction:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 objectFunction];
    v8 = [v7 baseObject];
    [v2 setObjectFunction:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 meshFunction];
    v10 = [v9 baseObject];
    [v2 setMeshFunction:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 pipelineLibrary];
    v12 = [v11 baseObject];
    [v2 setPipelineLibrary:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 vertexPreloadedLibraries];
    v14 = unwrapNSArray(v13);
    [v2 setVertexPreloadedLibraries:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v1 fragmentPreloadedLibraries];
    v16 = unwrapNSArray(v15);
    [v2 setFragmentPreloadedLibraries:v16];
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v1 objectPreloadedLibraries];
    v18 = unwrapNSArray(v17);
    [v2 setObjectPreloadedLibraries:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v1 meshPreloadedLibraries];
    v20 = unwrapNSArray(v19);
    [v2 setMeshPreloadedLibraries:v20];
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [v1 vertexLinkedFunctions];
    v22 = unwrapMTLLinkedFunctions(v21);
    [v2 setVertexLinkedFunctions:v22];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v1 fragmentLinkedFunctions];
    v24 = unwrapMTLLinkedFunctions(v23);
    [v2 setFragmentLinkedFunctions:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [v1 objectLinkedFunctions];
    v26 = unwrapMTLLinkedFunctions(v25);
    [v2 setObjectLinkedFunctions:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [v1 meshLinkedFunctions];
    v28 = unwrapMTLLinkedFunctions(v27);
    [v2 setMeshLinkedFunctions:v28];
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v1 binaryArchives];
    v30 = unwrapNSArray(v29);
    [v2 setBinaryArchives:v30];
  }

  return v2;
}

id deviceMTLRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 vertexFunction];
  v4 = DEVICEOBJECT(v3);
  [v2 setVertexFunction:v4];

  v5 = [v1 fragmentFunction];
  v6 = DEVICEOBJECT(v5);
  [v2 setFragmentFunction:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 objectFunction];
    v8 = DEVICEOBJECT(v7);
    [v2 setObjectFunction:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 meshFunction];
    v10 = DEVICEOBJECT(v9);
    [v2 setMeshFunction:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 pipelineLibrary];
    v12 = DEVICEOBJECT(v11);
    [v2 setPipelineLibrary:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 vertexPreloadedLibraries];
    v14 = deviceNSArray(v13);
    [v2 setVertexPreloadedLibraries:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v1 fragmentPreloadedLibraries];
    v16 = deviceNSArray(v15);
    [v2 setFragmentPreloadedLibraries:v16];
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v1 objectPreloadedLibraries];
    v18 = deviceNSArray(v17);
    [v2 setObjectPreloadedLibraries:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v1 meshPreloadedLibraries];
    v20 = deviceNSArray(v19);
    [v2 setMeshPreloadedLibraries:v20];
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [v1 vertexLinkedFunctions];
    v22 = deviceMTLLinkedFunctions(v21);
    [v2 setVertexLinkedFunctions:v22];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v1 fragmentLinkedFunctions];
    v24 = deviceMTLLinkedFunctions(v23);
    [v2 setFragmentLinkedFunctions:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [v1 objectLinkedFunctions];
    v26 = deviceMTLLinkedFunctions(v25);
    [v2 setObjectLinkedFunctions:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [v1 meshLinkedFunctions];
    v28 = deviceMTLLinkedFunctions(v27);
    [v2 setMeshLinkedFunctions:v28];
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v1 binaryArchives];
    v30 = deviceNSArray(v29);
    [v2 setBinaryArchives:v30];
  }

  return v2;
}

id deviceMTLRenderPipelineDescriptorWithoutResourceIndex(void *a1)
{
  v1 = deviceMTLRenderPipelineDescriptor(a1);
  [v1 setForceResourceIndex:0];
  [v1 setResourceIndex:_MTLInvalidResourceIndex];

  return v1;
}

id unwrapMTLCommandQueueDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 logState];
    v4 = [v3 baseObject];
    [v2 setLogState:v4];
  }

  [v2 setEnableLowLatencyWaitSharedEvent:0];
  [v2 setEnableLowLatencySignalSharedEvent:0];

  return v2;
}

id unwrapMTL4LibraryDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 options];

  if (v3)
  {
    v4 = [v1 options];
    v5 = unwrapMTLCompileOptions(v4);
    [v2 setOptions:v5];
  }

  return v2;
}

id unwrapMTLCompileOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 libraries];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [v1 libraries];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v1 libraries];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) baseObject];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v2 setLibraries:v7];
  }

  return v2;
}

id unwrapMTL4CompilerDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 pipelineDataSetSerializer];

  if (v3)
  {
    v4 = [v1 pipelineDataSetSerializer];
    v5 = [v4 baseObject];
    [v2 setPipelineDataSetSerializer:v5];
  }

  return v2;
}

id unwrapMTL4FunctionDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = objc_opt_new();
    v4 = [v2 name];
    [v3 setName:v4];

    v5 = [v2 library];

    v6 = [v5 baseObject];
    [v3 setLibrary:v6];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v1;
    v3 = [v7 copy];
    v5 = [v7 functionDescriptor];

    v6 = unwrapMTL4FunctionDescriptor(v5);
    [v3 setFunctionDescriptor:v6];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v1;
    v3 = objc_opt_new();
    v10 = [v9 functionGraph];
    [v3 setFunctionGraph:v10];

    v11 = [v9 functionDescriptors];

    v12 = unwrapNSArray(v11);
    [v3 setFunctionDescriptors:v12];

    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "Metal 4 Function Stitching", 0, 0);
  }

  else
  {
    v3 = 0;
  }

LABEL_6:

  return v3;
}

id unwrapMTL4ComputePipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 computeFunctionDescriptor];

  v4 = unwrapMTL4FunctionDescriptor(v3);
  [v2 setComputeFunctionDescriptor:v4];

  OverridePipelineOptions(v2);

  return v2;
}

void OverridePipelineOptions(void *a1)
{
  v4 = a1;
  v1 = [v4 options];

  if (!v1)
  {
    v2 = objc_opt_new();
    [v4 setOptions:v2];
  }

  v3 = [v4 options];
  [v3 setShaderReflection:{objc_msgSend(v3, "shaderReflection") | 3}];
}

id unwrapMTL4MachineLearningPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 machineLearningFunctionDescriptor];

  v4 = unwrapMTL4FunctionDescriptor(v3);
  [v2 setMachineLearningFunctionDescriptor:v4];

  OverridePipelineOptions(v2);

  return v2;
}

id unwrapMTL4PipelineDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 copy];
    v4 = [v2 vertexFunctionDescriptor];
    v5 = unwrapMTL4FunctionDescriptor(v4);
    [v3 setVertexFunctionDescriptor:v5];
LABEL_5:

    v8 = [v2 fragmentFunctionDescriptor];

    v9 = unwrapMTL4FunctionDescriptor(v8);
    [v3 setFragmentFunctionDescriptor:v9];
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 copy];
    v6 = [v2 objectFunctionDescriptor];
    v7 = unwrapMTL4FunctionDescriptor(v6);
    [v3 setObjectFunctionDescriptor:v7];

    v4 = [v2 meshFunctionDescriptor];
    v5 = unwrapMTL4FunctionDescriptor(v4);
    [v3 setMeshFunctionDescriptor:v5];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v1;
    v3 = [v11 copy];
    v8 = [v11 tileFunctionDescriptor];

    v9 = unwrapMTL4FunctionDescriptor(v8);
    [v3 setTileFunctionDescriptor:v9];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:
  OverridePipelineOptions(v3);

  return v3;
}

id unwrapMTL4CompilerTaskOptions(void *a1)
{
  v1 = [a1 copy];

  return v1;
}

id unwrapMTLCommandBufferDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 logState];
    v4 = [v3 baseObject];
    [v2 setLogState:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 deadlineProfile];
    v6 = [v5 baseObject];
    [v2 setDeadlineProfile:v6];
  }

  return v2;
}

id unwrapMTLRenderPassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = [v3 visibilityResultBuffer];
  v7 = [v6 baseObject];
  [v5 setVisibilityResultBuffer:v7];

  v8 = [v3 visibilityResultBuffer];
  [v8 touch];

  v9 = [v3 visibilityResultBuffer];

  if (v4 && v9)
  {
    v10 = [v3 visibilityResultBuffer];
    [v4 addObject:v10];
  }

  v11 = *[v3 _descriptorPrivate];
  for (i = 0; i != 8; ++i)
  {
    v13 = [v11 _descriptorAtIndex:i];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 texture];
      v16 = [v15 baseObject];
      v17 = [v5 colorAttachments];
      v18 = [v17 objectAtIndexedSubscript:i];
      [v18 setTexture:v16];

      v19 = [v14 resolveTexture];
      v20 = [v19 baseObject];
      v21 = [v5 colorAttachments];
      v22 = [v21 objectAtIndexedSubscript:i];
      [v22 setResolveTexture:v20];

      v23 = [v14 texture];
      [v23 touch];

      v24 = [v14 texture];

      if (v4 && v24)
      {
        v25 = [v14 texture];
        [v4 addObject:v25];
      }

      v26 = [v14 resolveTexture];
      [v26 touch];

      v27 = [v14 resolveTexture];

      if (v4 && v27)
      {
        v28 = [v14 resolveTexture];
        [v4 addObject:v28];
      }
    }
  }

  v29 = [v11 _descriptorAtIndex:8];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 texture];
    v32 = [v31 baseObject];
    v33 = [v5 depthAttachment];
    [v33 setTexture:v32];

    v34 = [v30 resolveTexture];
    v35 = [v34 baseObject];
    v36 = [v5 depthAttachment];
    [v36 setResolveTexture:v35];

    v37 = [v30 texture];
    [v37 touch];

    v38 = [v30 texture];

    if (v4 && v38)
    {
      v39 = [v30 texture];
      [v4 addObject:v39];
    }

    v40 = [v30 resolveTexture];
    [v40 touch];

    v41 = [v30 resolveTexture];

    if (v4 && v41)
    {
      v42 = [v30 resolveTexture];
      [v4 addObject:v42];
    }
  }

  v43 = [v11 _descriptorAtIndex:9];

  if (v43)
  {
    v44 = [v43 texture];
    v45 = [v44 baseObject];
    v46 = [v5 stencilAttachment];
    [v46 setTexture:v45];

    v47 = [v43 resolveTexture];
    v48 = [v47 baseObject];
    v49 = [v5 stencilAttachment];
    [v49 setResolveTexture:v48];

    v50 = [v43 texture];
    [v50 touch];

    v51 = [v43 texture];

    if (v4 && v51)
    {
      v52 = [v43 texture];
      [v4 addObject:v52];
    }

    v53 = [v43 resolveTexture];
    [v53 touch];

    v54 = [v43 resolveTexture];

    if (v4 && v54)
    {
      v55 = [v43 resolveTexture];
      [v4 addObject:v55];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v56 = [v3 rasterizationRateMap];
    v57 = [v56 baseObject];
    [v5 setRasterizationRateMap:v57];

    v58 = [v3 rasterizationRateMap];
    [v58 touch];

    v59 = [v3 rasterizationRateMap];

    if (v4)
    {
      if (v59)
      {
        v60 = [v3 rasterizationRateMap];
        [v4 addObject:v60];
      }
    }
  }

  v61 = [v3 sampleBufferAttachments];
  for (j = 0; j != 4; ++j)
  {
    v63 = [v61 _descriptorAtIndex:j];
    v64 = v63;
    if (v63)
    {
      v65 = [v63 sampleBuffer];
      v66 = [v65 baseObject];
      v67 = [v5 sampleBufferAttachments];
      v68 = [v67 objectAtIndexedSubscript:j];
      [v68 setSampleBuffer:v66];

      v69 = [v64 sampleBuffer];
      [v69 touch];

      v70 = [v64 sampleBuffer];

      if (v4)
      {
        if (v70)
        {
          v71 = [v64 sampleBuffer];
          [v4 addObject:v71];
        }
      }
    }
  }

  return v5;
}

id unwrapMTL4RenderPassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = [v3 visibilityResultBuffer];
  v7 = [v6 baseObject];
  [v5 setVisibilityResultBuffer:v7];

  v8 = [v3 visibilityResultBuffer];
  [v8 touch];

  v9 = [v3 visibilityResultBuffer];

  if (v4 && v9)
  {
    v10 = [v3 visibilityResultBuffer];
    [v4 addObject:v10];
  }

  v11 = [v3 colorAttachments];
  for (i = 0; i != 8; ++i)
  {
    v13 = [v11 objectAtIndexedSubscript:i];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 texture];
      v16 = [v15 baseObject];
      v17 = [v5 colorAttachments];
      v18 = [v17 objectAtIndexedSubscript:i];
      [v18 setTexture:v16];

      v19 = [v14 resolveTexture];
      v20 = [v19 baseObject];
      v21 = [v5 colorAttachments];
      v22 = [v21 objectAtIndexedSubscript:i];
      [v22 setResolveTexture:v20];

      v23 = [v14 texture];
      [v23 touch];

      v24 = [v14 texture];

      if (v4 && v24)
      {
        v25 = [v14 texture];
        [v4 addObject:v25];
      }

      v26 = [v14 resolveTexture];
      [v26 touch];

      v27 = [v14 resolveTexture];

      if (v4 && v27)
      {
        v28 = [v14 resolveTexture];
        [v4 addObject:v28];
      }
    }
  }

  v29 = [v3 depthAttachment];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 texture];
    v32 = [v31 baseObject];
    v33 = [v5 depthAttachment];
    [v33 setTexture:v32];

    v34 = [v30 resolveTexture];
    v35 = [v34 baseObject];
    v36 = [v5 depthAttachment];
    [v36 setResolveTexture:v35];

    v37 = [v30 texture];
    [v37 touch];

    v38 = [v30 texture];

    if (v4 && v38)
    {
      v39 = [v30 texture];
      [v4 addObject:v39];
    }

    v40 = [v30 resolveTexture];
    [v40 touch];

    v41 = [v30 resolveTexture];

    if (v4 && v41)
    {
      v42 = [v30 resolveTexture];
      [v4 addObject:v42];
    }
  }

  v43 = [v3 stencilAttachment];

  if (v43)
  {
    v44 = [v43 texture];
    v45 = [v44 baseObject];
    v46 = [v5 stencilAttachment];
    [v46 setTexture:v45];

    v47 = [v43 resolveTexture];
    v48 = [v47 baseObject];
    v49 = [v5 stencilAttachment];
    [v49 setResolveTexture:v48];

    v50 = [v43 texture];
    [v50 touch];

    v51 = [v43 texture];

    if (v4 && v51)
    {
      v52 = [v43 texture];
      [v4 addObject:v52];
    }

    v53 = [v43 resolveTexture];
    [v53 touch];

    v54 = [v43 resolveTexture];

    if (v4 && v54)
    {
      v55 = [v43 resolveTexture];
      [v4 addObject:v55];
    }
  }

  v56 = [v3 rasterizationRateMap];
  v57 = [v56 baseObject];
  [v5 setRasterizationRateMap:v57];

  v58 = [v3 rasterizationRateMap];
  [v58 touch];

  v59 = [v3 rasterizationRateMap];

  if (v4 && v59)
  {
    v60 = [v3 rasterizationRateMap];
    [v4 addObject:v60];
  }

  return v5;
}

id unwrapMTLBlitPassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = 0;
  v7 = *[v3 _descriptorPrivate];
  do
  {
    v8 = [v7 _descriptorAtIndex:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 sampleBuffer];
      v11 = [v10 baseObject];
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:v6];
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

    ++v6;
  }

  while (v6 != 4);

  return v5;
}

id unwrapMTLComputePassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = 0;
  v7 = *([v3 _descriptorPrivate] + 1);
  do
  {
    v8 = [v7 _descriptorAtIndex:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 sampleBuffer];
      v11 = [v10 baseObject];
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:v6];
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

    ++v6;
  }

  while (v6 != 4);

  return v5;
}

id unwrapMTLResourceStatePassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = 0;
  v7 = *[v3 _descriptorPrivate];
  do
  {
    v8 = [v7 _descriptorAtIndex:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 sampleBuffer];
      v11 = [v10 baseObject];
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:v6];
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

    ++v6;
  }

  while (v6 != 4);

  return v5;
}

id unwrapMTLStitchedLibraryDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = unwrapNSArray(v3);
  [v2 setFunctions:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 binaryArchives];
    v6 = unwrapNSArray(v5);
    [v2 setBinaryArchives:v6];
  }

  return v2;
}

id unwrapMTLStitchedLibraryDescriptorSPI(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = unwrapNSArray(v3);
  [v2 setFunctions:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 binaryArchives];
    v6 = unwrapNSArray(v5);
    [v2 setBinaryArchives:v6];
  }

  return v2;
}

id unwrapMTLAccelerationStructureDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [v1 copy];
        v80 = [v3 instanceDescriptorBuffer];
        v81 = [v80 baseObject];
        [v3 setInstanceDescriptorBuffer:v81];

        v82 = [v3 instanceCountBuffer];
        v83 = [v82 baseObject];
        [v3 setInstanceCountBuffer:v83];

        v84 = [v3 motionTransformBuffer];
        v85 = [v84 baseObject];
        [v3 setMotionTransformBuffer:v85];

        v86 = [v3 motionTransformCountBuffer];
        v87 = [v86 baseObject];
        [v3 setMotionTransformCountBuffer:v87];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v88 = [v1 copy];
        }

        else
        {
          v88 = v1;
        }

        v3 = v88;
      }

      goto LABEL_74;
    }

    v90 = v1;
    v3 = [v1 copy];
    v11 = [v3 geometryDescriptors];
    v12 = [v11 mutableCopy];

    v13 = [v3 geometryDescriptors];
    v14 = [v13 count];

    if (!v14)
    {
LABEL_68:
      [v3 setGeometryDescriptors:v12];

      v1 = v90;
      goto LABEL_74;
    }

    v15 = 0;
    v91 = v12;
    v92 = v3;
    while (1)
    {
      v16 = [v3 geometryDescriptors];
      v17 = [v16 objectAtIndexedSubscript:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        v19 = [v18 vertexBuffer];
        v20 = [v19 baseObject];
        [v18 setVertexBuffer:v20];

        v21 = [v18 indexBuffer];
        v22 = [v21 baseObject];
        [v18 setIndexBuffer:v22];

        if (objc_opt_respondsToSelector())
        {
          v23 = [v18 transformationMatrixBuffer];
          v24 = [v23 baseObject];
          [v18 setTransformationMatrixBuffer:v24];
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        v23 = [v18 boundingBoxBuffer];
        v24 = [v23 baseObject];
        [v18 setBoundingBoxBuffer:v24];
LABEL_13:

LABEL_14:
        if (objc_opt_respondsToSelector())
        {
          v25 = [v18 primitiveDataBuffer];
          v26 = [v25 baseObject];
          [v18 setPrimitiveDataBuffer:v26];
        }

        goto LABEL_63;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v16;
        v18 = [v17 copy];
        v27 = [v18 indexBuffer];
        v28 = [v27 baseObject];
        [v18 setIndexBuffer:v28];

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v29 = [v18 vertexBuffers];
        v30 = [v29 countByEnumeratingWithState:&v102 objects:v106 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v103;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v103 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v102 + 1) + 8 * i);
              v35 = [v34 buffer];
              v36 = [v35 baseObject];
              [v34 setBuffer:v36];
            }

            v31 = [v29 countByEnumeratingWithState:&v102 objects:v106 count:16];
          }

          while (v31);
        }

        if (objc_opt_respondsToSelector())
        {
          v37 = [v18 transformationMatrixBuffer];
          v38 = [v37 baseObject];
          [v18 setTransformationMatrixBuffer:v38];
        }

        v12 = v91;
        v3 = v92;
        if (objc_opt_respondsToSelector())
        {
          v39 = [v18 primitiveDataBuffer];
          v40 = [v39 baseObject];
          [v18 setPrimitiveDataBuffer:v40];
        }

        goto LABEL_62;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v16;
        v18 = [v17 copy];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v41 = [v18 boundingBoxBuffers];
        v42 = [v41 countByEnumeratingWithState:&v102 objects:v106 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v103;
          do
          {
            for (j = 0; j != v43; j = j + 1)
            {
              if (*v103 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v102 + 1) + 8 * j);
              v47 = [v46 buffer];
              v48 = [v47 baseObject];
              [v46 setBuffer:v48];
            }

            v43 = [v41 countByEnumeratingWithState:&v102 objects:v106 count:16];
          }

          while (v43);
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_61;
        }

        v49 = [v18 primitiveDataBuffer];
        v50 = [v49 baseObject];
        [v18 setPrimitiveDataBuffer:v50];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = v16;
          v18 = [v17 copy];
          v52 = [v18 controlPointBuffer];
          v53 = [v52 baseObject];
          [v18 setControlPointBuffer:v53];

          v54 = [v18 radiusBuffer];
          v55 = [v54 baseObject];
          [v18 setRadiusBuffer:v55];

          v56 = [v18 indexBuffer];
          v57 = [v56 baseObject];
          [v18 setIndexBuffer:v57];

          if (objc_opt_respondsToSelector())
          {
            v58 = [v18 primitiveDataBuffer];
            v59 = [v58 baseObject];
            [v18 setPrimitiveDataBuffer:v59];
          }

          v16 = v51;
          goto LABEL_63;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = v17;
          goto LABEL_63;
        }

        v93 = v16;
        v18 = [v17 copy];
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v60 = [v18 controlPointBuffers];
        v61 = [v60 countByEnumeratingWithState:&v98 objects:v106 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v99;
          do
          {
            for (k = 0; k != v62; k = k + 1)
            {
              if (*v99 != v63)
              {
                objc_enumerationMutation(v60);
              }

              v65 = *(*(&v98 + 1) + 8 * k);
              v66 = [v65 buffer];
              v67 = [v66 baseObject];
              [v65 setBuffer:v67];
            }

            v62 = [v60 countByEnumeratingWithState:&v98 objects:v106 count:16];
          }

          while (v62);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v68 = [v18 radiusBuffers];
        v69 = [v68 countByEnumeratingWithState:&v94 objects:&v102 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v95;
          do
          {
            for (m = 0; m != v70; m = m + 1)
            {
              if (*v95 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v94 + 1) + 8 * m);
              v74 = [v73 buffer];
              v75 = [v74 baseObject];
              [v73 setBuffer:v75];
            }

            v70 = [v68 countByEnumeratingWithState:&v94 objects:&v102 count:16];
          }

          while (v70);
        }

        if (objc_opt_respondsToSelector())
        {
          v76 = [v18 primitiveDataBuffer];
          v77 = [v76 baseObject];
          [v18 setPrimitiveDataBuffer:v77];
        }

        v49 = [v18 indexBuffer];
        v50 = [v49 baseObject];
        [v18 setIndexBuffer:v50];
      }

LABEL_61:
      v12 = v91;
      v3 = v92;
LABEL_62:
      v16 = v93;
LABEL_63:

      [v12 setObject:v18 atIndexedSubscript:v15];
      ++v15;
      v78 = [v3 geometryDescriptors];
      v79 = [v78 count];

      if (v79 <= v15)
      {
        goto LABEL_68;
      }
    }
  }

  v2 = v1;
  v3 = [v2 copy];
  v4 = [v2 instancedAccelerationStructures];

  if (!v4)
  {
    [v3 setInstancedAccelerationStructures:0];
  }

  v5 = [v3 instanceDescriptorBuffer];
  v6 = [v5 baseObject];
  [v3 setInstanceDescriptorBuffer:v6];

  v7 = [v3 instancedAccelerationStructures];
  v8 = unwrapNSArray(v7);
  [v3 setInstancedAccelerationStructures:v8];

  v9 = [v3 motionTransformBuffer];
  v10 = [v9 baseObject];
  [v3 setMotionTransformBuffer:v10];

LABEL_74:

  return v3;
}