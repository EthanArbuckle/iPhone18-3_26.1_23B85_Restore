id ObtainResourceTrackingTracingBufferV2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 newBufferWithLength:24 * *(*a2 + 12) + 16 * (*(a2[4] + 48) + *(a2[1] + 48) + *(a2[5] + 48) + *(a2[6] + 48) + *(a2[7] + 48) + *(a2[8] + 48) + *(a2[9] + 48) + 2 * *(a2[10] + 48)) + 64 options:0];

  return v4;
}

void InstrumentFunctionWithResourceTrackingV2(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t *a4, __n128 *a5, apr_pool_t *a6)
{
  v12 = [*(a2 + 8) defaultDevice];
  if (*(a3 + 8) >> 2 == 1073737833)
  {
    goto LABEL_67;
  }

  v13 = *a2;
  GTMTLReplayController_debugSubCommandResume(a2, *a3 - *(*a2 + 88) + 1, -1);
  v14 = [*(a2 + 8) defaultDevice];
  v15 = *a2;
  v16 = *(*a2 + 40);
  v17 = a2 + 192;
  v18 = *(a2 + 11360);
  if (v18 != 28)
  {
    if (v18 != 70)
    {
LABEL_66:

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_accessTracking.mm", "InstrumentFunctionWithResourceTrackingV2", 5564, 64, "Resource access tracking failed", v51, v52, v53);
      FlushCommandQueue(a2);
LABEL_67:
      *(a1 + 144) = 0;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      goto LABEL_68;
    }

    v56 = *(*a2 + 40);
    v62 = v14;
    p = [*(a2 + 8) renderCommandEncoderForKey:*(a2 + 200)];
    if (!p)
    {
      goto LABEL_64;
    }

    v19 = *(a2 + 11360);
    if (v19 - 95) <= 0xA && ((0x409u >> (v19 - 95)))
    {
      v20 = 112;
    }

    else
    {
      if (!v19)
      {
        v24 = 0;
        goto LABEL_15;
      }

      v20 = 8600;
    }

    v24 = *(v17 + v20);
LABEL_15:
    Object = GTMTLSMContext_getObject(**(v15 + 40), v24, *a3);
    if (!Object)
    {
      goto LABEL_64;
    }

    v26 = Object;
    v27 = ObtainTracingRenderPipelineState(*(v15 + 40), *(a2 + 8), Object, a4, *a3, a6);
    if (!v27)
    {
      goto LABEL_64;
    }

    ReplaceSamplerStatesWithIndirected(&v78, a2, *a3, a6);
    ReplaceFunctionTablesWithInstrumented(&v74, a2, a4, *a3, v26, a5, a6);
    [(apr_pool_t *)p setRenderPipelineState:v27];
    MakeTraceBufferResident(a4, p);
    if ((SupportsGlobalRelocation(v62, a4) & 1) == 0 && (BindTraceBufferUsingBindings(a4, v26, p) & 1) == 0)
    {
LABEL_63:
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v76 + 8);
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v74);
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v78);

LABEL_64:
      goto LABEL_65;
    }

    v28 = *(a3 + 8);
    if (v28 > -15298)
    {
      if (v28 == -15059)
      {
        goto LABEL_39;
      }

      v29 = -15297;
    }

    else
    {
      if (v28 == -16137)
      {
        goto LABEL_39;
      }

      v29 = -15486;
    }

    if (v28 != v29)
    {
      if (GTFenum_isDrawCall(v28) && (!UpdateDrawSamplerStates(a4, v56, &v78, a2 + 248, p, *a3) || !UpdateDrawFunctionTables(a4, v56, &v74, (a2 + 248), p, *a3)))
      {
        goto LABEL_63;
      }

LABEL_45:
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v76 + 8);
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v74);
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v78);

      v14 = v62;
      goto LABEL_46;
    }

LABEL_39:
    if ((UpdateSamplerStates(4, p, a2 + 8664, a2 + 10812, a2 + 10876, v56, *a3, &v78) & 1) == 0 || (UpdateFunctionTables(4, p, a2 + 7144, (a2 + 7136), v56, *a3, &v74) & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_45;
  }

  v57 = *(*a2 + 40);
  v62 = v14;
  v21 = [*(a2 + 8) computeCommandEncoderForKey:*(a2 + 200)];
  if (!v21)
  {
LABEL_33:

LABEL_65:
    v14 = v62;
    goto LABEL_66;
  }

  v22 = *(a2 + 11360);
  if (v22 - 95) <= 0xA && ((0x409u >> (v22 - 95)))
  {
    v23 = 56;
  }

  else
  {
    if (!v22)
    {
      v30 = 0;
      goto LABEL_25;
    }

    v23 = 64;
  }

  v30 = *(v17 + v23);
LABEL_25:
  v31 = GTMTLSMContext_getObject(**(*a2 + 40), v30, *a3);
  if (!v31)
  {
    goto LABEL_33;
  }

  v32 = v31;
  v33 = ObtainTracingComputePipelineState(*(*a2 + 40), *(a2 + 8), v31, a4, *a3, a6);
  if (!v33)
  {
    goto LABEL_33;
  }

  pa = v33;
  ReplaceSamplerStatesWithIndirected(&v78, a2, *a3, a6);
  ReplaceFunctionTablesWithInstrumented(&v74, a2, a4, *a3, v32, a5, a6);
  MakeTraceBufferResident(a4, v21);
  if ((SupportsGlobalRelocation(v62, a4) & 1) == 0 && (BindTraceBufferUsingBindings(a4, v32, v21) & 1) == 0 || ([v21 setComputePipelineState:pa], (UpdateSamplerStates(8, v21, a2 + 2048, a2 + 2368, a2 + 2432, v57, *a3, &v78) & 1) == 0))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v76 + 8);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v74);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v78);

    goto LABEL_33;
  }

  updated = UpdateFunctionTables(8, v21, a2 + 280, (a2 + 264), v57, *a3, &v74);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v76 + 8);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v74);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v78);

  v14 = v62;
  if ((updated & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_46:

  v35 = a6;
  v36 = *(v13 + 40);
  v37 = *(a2 + 8);
  v58 = v37;
  pb = v35;
  v38 = GTMTLIndirectResources_remap(a5, v37, v35);
  v78 = *v38;
  v79 = *(v38 + 1);
  v63 = v38[4];
  v74 = *(v38 + 5);
  v39 = *(v38 + 9);
  v75 = *(v38 + 7);
  v76 = v39;
  v77 = v38[11];
  *&v64[3] = *(v38 + 25);
  *v64 = *(v38 + 97);
  v54 = *(v38 + 96);
  if (!v54)
  {
    v40 = apr_array_make(v35, 10, 8);
    GTMTLSMContext_getObjects(*(v36 + 32), *a3, v40);
    if (v40->nelts >= 1)
    {
      v41 = 0;
      v55 = a4;
      do
      {
        v42 = *&v40->elts[8 * v41];
        if (v42)
        {
          v43 = *(v42 + 8);
        }

        else
        {
          v43 = 0;
        }

        v44 = [v37 samplerStateForKey:v43];
        v45 = v44;
        if (v44)
        {
          v73 = [v44 uniqueIdentifier];
          v46 = *find_entry(v63, &v73, 8uLL, 0);
          if (!v46 || !*(v46 + 32))
          {
            v47 = apr_palloc(pb, 0x20uLL);
            v48 = v47;
            if (v47)
            {
              *v47 = 0u;
              *(v47 + 1) = 0u;
            }

            v49 = v73;
            if (v42)
            {
              v42 = *(v42 + 8);
            }

            v50 = [v45 gpuResourceID];
            *v48 = v49;
            v48[1] = v42;
            v48[2] = v50;
            v48[3] = 0;
            apr_hash_set(v63, v48, 8, v48);
            a4 = v55;
            v37 = v58;
          }
        }

        ++v41;
      }

      while (v41 < v40->nelts);
    }
  }

  v65[0] = v78;
  v65[1] = v79;
  v67 = v74;
  v68 = v75;
  v66 = v63;
  v69 = v76;
  v70 = v77;
  v71 = v54;
  *v72 = *v64;
  *&v72[3] = *&v64[3];
  if (!PopulateResourceTrackingBuffersV2(a4, v65))
  {
    goto LABEL_67;
  }

  GTMTLReplayController_defaultDispatchFunction(a2, a3);
  FlushCommandQueue(a2);
  DecodeResourceTrackingBuffersV2(a1, a4, v65);
LABEL_68:
}

GTMTLResourceUsageItem *MakeResourceUsageItem(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(GTMTLResourceUsageItem);
  [(GTMTLResourceUsageItem *)v4 setStage:a2];
  [(GTMTLResourceUsageItem *)v4 setKind:*(a1 + 8)];
  [(GTMTLResourceUsageItem *)v4 setResourceID:*a1];
  [(GTMTLResourceUsageItem *)v4 setUsage:*(a1 + 16)];

  return v4;
}

void InstrumentV2Result::~InstrumentV2Result(InstrumentV2Result *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

GTMTLResourceUsageItem *MakeResourceUsageItem(uint64_t a1)
{
  v2 = objc_alloc_init(GTMTLResourceUsageItem);
  [(GTMTLResourceUsageItem *)v2 setStage:0];
  [(GTMTLResourceUsageItem *)v2 setKind:*(a1 + 8)];
  [(GTMTLResourceUsageItem *)v2 setResourceID:*a1];
  [(GTMTLResourceUsageItem *)v2 setUsage:*(a1 + 16)];

  return v2;
}

BOOL IsSubFuncEnumDrawMeshCall(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) >> 2 != 1073737833)
  {
    return 0;
  }

  v5 = *a1;
  v6 = a1[1];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  GetExecuteCommandsInBufferArgs(&v13, a2, *(v5 + 16));
  Object = GTMTLSMContext_getObject(**(v5 + 40), v13, *a2);
  GTMTLCreateIndirectCommandEncoder(v10, Object[14]);
  v8 = *(&v13 + 1) <= a3 && v14 + *(&v13 + 1) >= a3 && *(&v14 + 1) && ((*(*(&v14 + 1) + v12 * a3 + v11) - 128) & 0xFFFFFFFFFFFFFF7FLL) == 0;

  return v8;
}

BOOL ShouldInstrumentICBObjectStage(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 8) >> 2 == 1073737833)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = *a1[23];
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v24, 0, sizeof(v24));
    GTMTLSMContext_indirectCommandBufferResources(v24, *(v6 + 40), *a2, v8);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    GetExecuteCommandsInBufferArgs(&v21, a2, *(v6 + 16));
    Object = GTMTLSMContext_getObject(**(v6 + 40), v21, *a2);
    GTMTLCreateIndirectCommandEncoder(v18, Object[14]);
    if (*(&v21 + 1) > a3)
    {
      goto LABEL_18;
    }

    if (v22 + *(&v21 + 1) < a3)
    {
      goto LABEL_18;
    }

    if (!*(&v22 + 1))
    {
      goto LABEL_18;
    }

    v10 = Object[14];
    if (!v10)
    {
      goto LABEL_18;
    }

    if (*(v10 + 26))
    {
      v11 = *(a1 + 2840);
      if (v11 - 95) <= 0xA && ((0x409u >> (v11 - 95)))
      {
        v12 = 14;
      }

      else
      {
        if (!v11)
        {
          v14 = 0;
          goto LABEL_15;
        }

        v12 = 1075;
      }

      v14 = a1[v12 + 24];
    }

    else
    {
      v14 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(*(&v25 + 1), *(*(&v22 + 1) + v20 * a3 + v19));
    }

LABEL_15:
    v15 = GTMTLSMContext_getObject(**(v6 + 40), v14, *a2);
    if (v15)
    {
      v16 = v15[9];
      if (v16)
      {
        v13 = *(v16 + 368) != 0;
LABEL_19:

        return v13;
      }
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  return 0;
}

void InstrumentSubCommandWithAccessTrackingV2()
{
  v0 = MEMORY[0x28223BE20]();
  v7 = v0;
  v66 = *MEMORY[0x277D85DE8];
  v8 = *(v2 + 8);
  if (v8 >> 2 != 1073737833)
  {
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  v15 = v8 & 0xFFFFC1A6;
  if (v15 == -15964)
  {
    v26 = *v1;
    v17 = *(v1 + 8);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    GetExecuteCommandsInBufferArgs(&v60, v13, *(v26 + 16));
    Object = GTMTLSMContext_getObject(**(v26 + 40), v60, *v13);
    GTMTLCreateIndirectCommandEncoder(&v56, Object[14]);
    if (*(&v60 + 1) > v12 || v61 + *(&v60 + 1) < v12)
    {
      goto LABEL_52;
    }

    GTMTLReplayController_debugSubCommandResume(v14, *v13 - *(v26 + 88) + 1, v12 + 1);
    v28 = *v14;
    v55 = *(v14 + 8);
    v29 = *(&v61 + 1) + v59 * v12;
    v30 = *(v29 + v57);
    if (v30 != 64 && v30 != 32)
    {
      if (!v30)
      {

        goto LABEL_19;
      }

      goto LABEL_50;
    }

    if (*(v14 + 11360))
    {
      v32 = *(v14 + 200);
    }

    else
    {
      v32 = 0;
    }

    v52 = [v55 computeCommandEncoderForKey:v32];
    if (v52)
    {
      MakeTraceBufferResident(v11, v52);
      v50 = v56;
      if (v56[26])
      {
        v33 = *(v14 + 11360);
        if (v33 - 95) <= 0xA && ((0x409u >> (v33 - 95)))
        {
          v34 = 56;
        }

        else
        {
          if (!v33)
          {
            goto LABEL_49;
          }

          v34 = 64;
        }

        v38 = *(v14 + 192 + v34);
      }

      else
      {
        v38 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(v10[3].n128_i64[0], *(v29 + v58));
      }

      if (v38)
      {
        v40 = GTMTLSMContext_getObject(**(v28 + 40), v38, *v13);
        if (v40)
        {
          v41 = v40;
          v42 = ObtainTracingComputePipelineState(*(v28 + 40), v55, v40, v11, *v13, v9);
          if (v42)
          {
            v48 = v42;
            ReplaceFunctionTablesWithInstrumented(v63, v14, v11, *v13, v41, v10, v9);
            std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v64);
            std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v63);
            if (v50[19])
            {
              [v52 setComputePipelineState:v48];
              DYMTLDispatchComputeCommandEncoder(v52, &v56, v29);
LABEL_67:

              goto LABEL_19;
            }

            memcpy(__dst, (v14 + 248), 0x8D0uLL);
            if (GTMTLSMComputeCommandEncoder_loadIndirectCommand(v14 + 248, &v56, v29, v10))
            {
              GTMTLReplayController_restoreComputeCommandEncoder(v52, v14 + 248, __dst, v55);
              [v52 setComputePipelineState:v48];
              DYMTLDispatchComputeCommandEncoder(v52, &v56, v29);
              goto LABEL_67;
            }

            v42 = v48;
          }

          goto LABEL_51;
        }
      }
    }

LABEL_49:

LABEL_50:
LABEL_51:
    FlushCommandQueue(v14);
LABEL_52:
    *(v7 + 144) = 0;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    goto LABEL_53;
  }

  if (v15 == -15962)
  {
    v16 = *v1;
    v17 = *(v1 + 8);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    GetExecuteCommandsInBufferArgs(&v60, v13, *(v16 + 16));
    v18 = GTMTLSMContext_getObject(**(v16 + 40), v60, *v13);
    GTMTLCreateIndirectCommandEncoder(&v56, v18[14]);
    if (*(&v60 + 1) > v12)
    {
      goto LABEL_52;
    }

    if (v61 + *(&v60 + 1) < v12)
    {
      goto LABEL_52;
    }

    v19 = *(&v61 + 1);
    if (!*(&v61 + 1))
    {
      goto LABEL_52;
    }

    v54 = v17;
    GTMTLReplayController_debugSubCommandResume(v14, *v13 - *(v16 + 88) + 1, v12 + 1);
    v20 = *v14;
    v21 = *(v14 + 8);
    v49 = v20;
    GTMTLReplayController_debugSubCommandResume(v14, *v13 - *(v20 + 88) + 1, v12 + 1);
    v22 = v19 + v59 * v12;
    v23 = *(v22 + v57);
    v17 = v54;
    if (v23 > 8)
    {
      goto LABEL_37;
    }

    if (((1 << v23) & 0x116) != 0)
    {
      goto LABEL_9;
    }

    if (v23)
    {
LABEL_37:
      if (v23 != 128 && v23 != 256)
      {

LABEL_63:
        FlushCommandQueue(v14);
        goto LABEL_52;
      }

LABEL_9:
      if (*(v14 + 11360))
      {
        v24 = *(v14 + 200);
      }

      else
      {
        v24 = 0;
      }

      v53 = v21;
      v35 = [v21 renderCommandEncoderForKey:v24];
      if (v35)
      {
        MakeTraceBufferResident(v11, v35);
        v47 = v56;
        if (!v56[26])
        {
          v39 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(v10[2].n128_i64[1], *(v22 + v58));
LABEL_57:
          if (v39)
          {
            v43 = GTMTLSMContext_getObject(**(v49 + 40), v39, *v13);
            if (v43)
            {
              v44 = v43;
              v51 = ObtainTracingRenderPipelineState(*(v49 + 40), v53, v43, v11, *v13, v9);
              if (v51)
              {
                ReplaceFunctionTablesWithInstrumented(v63, v14, v11, *v13, v44, v10, v9);
                std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v64);
                std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v63);
                if (v47[19])
                {
                  [v35 setRenderPipelineState:v51];
                  v45 = [v53 executeIndirectCommandBufferMap];
                  DYMTLDrawRenderCommandEncoder(v35, &v56, v22, v10, v45);

LABEL_70:
                  goto LABEL_19;
                }

                memcpy(__dst, (v14 + 248), sizeof(__dst));
                if (GTMTLSMRenderCommandEncoder_loadIndirectCommand(__dst, &v56, v22, v10))
                {
                  GTMTLReplayController_restoreRenderCommandEncoder(v35, v14 + 248, __dst, v53);
                  [v35 setRenderPipelineState:v51];
                  v46 = [v53 executeIndirectCommandBufferMap];
                  DYMTLDrawRenderCommandEncoder(v35, &v56, v22, v10, v46);

                  goto LABEL_70;
                }
              }

              goto LABEL_63;
            }
          }

          goto LABEL_62;
        }

        v36 = *(v14 + 11360);
        if (v36 - 95) <= 0xA && ((0x409u >> (v36 - 95)))
        {
          v37 = 112;
LABEL_56:
          v39 = *(v14 + 192 + v37);
          goto LABEL_57;
        }

        if (v36)
        {
          v37 = 8600;
          goto LABEL_56;
        }
      }

LABEL_62:

      goto LABEL_63;
    }

LABEL_19:
    v31 = GTMTLIndirectResources_remap(v10, *(v14 + 8), v9);
    PopulateResourceTrackingBuffersV2(v11, v31);
    FlushCommandQueue(v14);
    DecodeResourceTrackingBuffersV2(v7, v11, v31);
LABEL_53:

    goto LABEL_12;
  }

LABEL_11:
  *(v0 + 144) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
LABEL_12:
  v25 = *MEMORY[0x277D85DE8];
}

BOOL IsTraceBufferValidV2(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ![v1 storageMode] && objc_msgSend(v2, "length") >= 0x40)
  {
    v5 = [v2 contents];
    v6 = *(v5 + 4);
    v7 = *(v5 + 44);
    v3 = [v2 length] >= 16 * v7 + 24 * v6 + 64;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void DecodeResourceTrackingBufferV2(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = *MEMORY[0x277D85DE8];
  v21 = a2;
  if (IsTraceBufferValidV2(v21))
  {
    v22 = [v21 contents];
    v23 = v22[1];
    a13 = *v22;
    a14 = v23;
    v24 = v22[3];
    a15 = v22[2];
    a16 = v24;
    v25 = 24 * DWORD1(a13);
    if (DWORD1(a13))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(DWORD1(a13));
    }

    v26 = 16 * HIDWORD(a15);
    if (HIDWORD(a15))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(HIDWORD(a15));
    }

    v27 = (v22 + 4);
    memcpy(0, v27, v25);
    memcpy(0, &v27[v25], v26);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v28 = 0;
    vars0 = 0;
    do
    {
      if (*(a3 + qword_24DA91088[v28]))
      {
        v30 = v28 + 1;
        if (*(&a13 + v28 + 2) < *(&a13 + v28 + 3))
        {
          v31 = ResourceKindByResourceTypeIndex[v28];
        }
      }

      else
      {
        v30 = v28 + 1;
      }

      v28 = v30;
    }

    while (v30 != 9);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void std::vector<ResourceUsageEntry>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t PopulateResourceTrackingBufferV2(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = *MEMORY[0x277D85DE8];
  v36 = a1;
  v21 = 0;
  a15 = 0u;
  a16 = 0u;
  a13 = 0u;
  a14 = 0u;
  LOBYTE(a13) = 2;
  v22 = *(*a2 + 12);
  v23 = *(a2[1] + 48);
  v24 = a2[5];
  v25 = *(a2[4] + 48);
  HIDWORD(vars8) = v23;
  v40 = *(a2[8] + 48);
  v41 = *(a2[9] + 48);
  v42 = *(a2[10] + 48);
  v43 = *(v24 + 48);
  v44 = *(a2[6] + 48);
  v45 = *(a2[7] + 48);
  DWORD1(a13) = v22;
  HIDWORD(a13) = v23;
  do
  {
    v23 += *(&vars8 + v21 + 8);
    *(&a13 + v21 + 16) = v23;
    v21 += 4;
  }

  while (v21 != 32);
  if (v22)
  {
    if ((v22 & 0x80000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(v22);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  *&v26 = std::__introsort<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,false>(0, 0, 0, 1, 0).n128_u64[0];
  if (HIDWORD(a15))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(HIDWORD(a15));
  }

  v27 = 0;
  v37 = 1;
  do
  {
    v28 = *(a2 + qword_24DA91088[v27]);
    if (v28)
    {
      *(v28 + 24) = 0;
      *(v28 + 32) = 0;
      *(v28 + 16) = v28;
      *(v28 + 40) = 0;
      if (apr_hash_next((v28 + 16)))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(1uLL);
      }

      vars0 = CompareResourceTrackingTracingResourceEntryV2;
      v26 = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,false>(0, 0, &vars0, 0, 1, v29);
    }

    else
    {
      v37 = 0;
    }

    ++v27;
  }

  while (v27 != 9);
  if ([v36 length] >= 0x40)
  {
    v33 = [v36 contents];
    v34 = a14;
    *v33 = a13;
    v33[1] = v34;
    v35 = a16;
    v33[2] = a15;
    v33[3] = v35;
    v30 = v37;
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

void sub_24D9383E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*v9 >= *v12)
        {
          return result;
        }

LABEL_106:
        v200 = *(v12 + 16);
        v172 = *v12;
        v94 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v94;
        result = v172;
        *(a2 - 8) = v200;
LABEL_107:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = *(v12 + 24);
      v96 = (v12 + 48);
      v97 = *(v12 + 48);
      if (v95 >= *v12)
      {
        if (v97 < v95)
        {
          v142 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
          *(v12 + 64) = v142;
          if (*(v12 + 24) < *v12)
          {
            v203 = *(v12 + 16);
            v177 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result = v177;
            *v91 = v177;
            *(v12 + 40) = v203;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v201 = *(v12 + 16);
          v173 = *v12;
          *v12 = *v96;
          *(v12 + 16) = *(v12 + 64);
          result = v173;
          *v96 = v173;
          v98 = v201;
          goto LABEL_187;
        }

        v205 = *(v12 + 16);
        v180 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        result = v180;
        *v91 = v180;
        *(v12 + 40) = v205;
        if (v97 < *(v12 + 24))
        {
          v98 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
LABEL_187:
          *(v12 + 64) = v98;
        }
      }

      if (*v9 >= v96->n128_u64[0])
      {
        return result;
      }

      result = *v96;
      v148 = *(v12 + 64);
      v149 = *(a2 - 8);
      *v96 = *v9;
      *(v12 + 64) = v149;
      *(a2 - 8) = v148;
      *v9 = result;
      if (v96->n128_u64[0] >= v91->n128_u64[0])
      {
        return result;
      }

      v150 = *(v12 + 40);
      result = *v91;
      *v91 = *v96;
      *(v12 + 40) = *(v12 + 64);
      *v96 = result;
      *(v12 + 64) = v150;
LABEL_191:
      if (*(v12 + 24) < *v12)
      {
        v206 = *(v12 + 16);
        v181 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v181;
        *v91 = v181;
        v91[1].n128_u64[0] = v206;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,0>(v12, (v12 + 24), (v12 + 48), v12 + 72, a2 - 24, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = v12 + 24;
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            v105 = v103[1].n128_u64[1];
            if (v105 < v103->n128_u64[0])
            {
              v174 = v103[2];
              v106 = v102;
              while (1)
              {
                v107 = v12 + v106;
                *(v107 + 24) = *(v12 + v106);
                *(v107 + 40) = *(v12 + v106 + 16);
                if (!v106)
                {
                  break;
                }

                v106 -= 24;
                if (v105 >= *(v107 - 24))
                {
                  v108 = v12 + v106 + 24;
                  goto LABEL_126;
                }
              }

              v108 = v12;
LABEL_126:
              *v108 = v105;
              result = v174;
              *(v108 + 8) = v174;
            }

            v99 = &v104[1].n128_u64[1];
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v143 = v99;
          v144 = *(a1 + 24);
          if (v144 < *a1)
          {
            v178 = *(a1 + 32);
            do
            {
              *v99 = *(v99 - 24);
              *(v99 + 16) = *(v99 - 8);
              v145 = *(v99 - 48);
              v99 -= 24;
            }

            while (v144 < v145);
            *v99 = v144;
            result = v178;
            *(v99 + 8) = v178;
          }

          v99 = v143 + 24;
          a1 = v143;
        }

        while (v143 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v109 = (v14 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = (v12 + 24 * v112);
            if (2 * v111 + 2 >= v14)
            {
              v114 = *v113;
            }

            else
            {
              v114 = v113[3];
              v115 = *v113 >= v114;
              if (*v113 > v114)
              {
                v114 = *v113;
              }

              if (!v115)
              {
                v113 += 3;
                v112 = 2 * v111 + 2;
              }
            }

            v116 = (v12 + 24 * v111);
            v117 = *v116;
            if (v114 >= *v116)
            {
              v175 = *(v116 + 1);
              do
              {
                v118 = v116;
                v116 = v113;
                v119 = *v113;
                v118[2] = v113[2];
                *v118 = v119;
                if (v109 < v112)
                {
                  break;
                }

                v120 = (2 * v112) | 1;
                v113 = (v12 + 24 * v120);
                v112 = 2 * v112 + 2;
                if (v112 >= v14)
                {
                  v121 = *v113;
                  v112 = v120;
                }

                else
                {
                  v121 = *v113;
                  v122 = v113[3];
                  if (*v113 <= v122)
                  {
                    v121 = v113[3];
                  }

                  if (*v113 >= v122)
                  {
                    v112 = v120;
                  }

                  else
                  {
                    v113 += 3;
                  }
                }
              }

              while (v121 >= v117);
              *v116 = v117;
              *(v116 + 1) = v175;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v123 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v124 = 0;
          v202 = *(v12 + 16);
          v176 = *v12;
          v125 = v12;
          do
          {
            v126 = v125 + 24 * v124;
            v127 = v126 + 24;
            v128 = (2 * v124) | 1;
            v124 = 2 * v124 + 2;
            if (v124 >= v123)
            {
              v124 = v128;
            }

            else
            {
              v130 = *(v126 + 48);
              v129 = v126 + 48;
              if (*(v129 - 24) >= v130)
              {
                v124 = v128;
              }

              else
              {
                v127 = v129;
              }
            }

            v131 = *v127;
            *(v125 + 16) = *(v127 + 16);
            *v125 = v131;
            v125 = v127;
          }

          while (v124 <= ((v123 - 2) >> 1));
          a2 -= 24;
          if (v127 == a2)
          {
            result = v176;
            *(v127 + 16) = v202;
            *v127 = v176;
          }

          else
          {
            v132 = *a2;
            *(v127 + 16) = *(a2 + 16);
            *v127 = v132;
            result = v176;
            *(a2 + 16) = v202;
            *a2 = v176;
            v133 = v127 - v12 + 24;
            if (v133 >= 25)
            {
              v134 = (-2 - 0x5555555555555555 * (v133 >> 3)) >> 1;
              v135 = v12 + 24 * v134;
              v136 = *v127;
              if (*v135 < *v127)
              {
                v153 = *(v127 + 8);
                do
                {
                  v137 = v127;
                  v127 = v135;
                  v138 = *v135;
                  *(v137 + 16) = *(v135 + 16);
                  *v137 = v138;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = v12 + 24 * v134;
                }

                while (*v135 < v136);
                *v127 = v136;
                result = v153;
                *(v127 + 8) = v153;
              }
            }
          }
        }

        while (v123-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v184 = v16[2];
          v156 = *v16;
          v22 = *v9;
          v16[2] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v184;
          *v9 = v156;
          if (*v16 < *v12)
          {
            v185 = *(v12 + 16);
            v157 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[2];
            *v12 = v23;
            v16[2] = v185;
            *v16 = v157;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v182 = *(v12 + 16);
          v154 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v188 = *(v12 + 16);
        v160 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[2];
        *v12 = v26;
        v16[2] = v188;
        *v16 = v160;
        if (*v9 < *v16)
        {
          v182 = v16[2];
          v154 = *v16;
          v27 = *v9;
          v16[2] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v182;
          *v9 = v154;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v32 = *(v29 - 24);
      v30 = v29 - 24;
      v31 = v32;
      v33 = *v10;
      if (v32 >= *(v12 + 24))
      {
        if (v33 < v31)
        {
          v189 = *(v30 + 16);
          v161 = *v30;
          v37 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v189;
          *v10 = v161;
          if (*v30 < *v28)
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = *(v30 + 16);
            *v28 = *v30;
            *(v12 + 40) = v40;
            *(v30 + 16) = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v31)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = *(v30 + 16);
        *v28 = *v30;
        *(v12 + 40) = v45;
        *(v30 + 16) = v44;
        *v30 = v43;
        if (*v10 < *v30)
        {
          v191 = *(v30 + 16);
          v163 = *v30;
          v46 = *v10;
          *(v30 + 16) = *(a2 - 32);
          *v30 = v46;
          v34 = v163;
          *(a2 - 32) = v191;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v51 = *(v48 + 24);
      v49 = v48 + 24;
      v50 = v51;
      v52 = *v11;
      if (v51 >= *(v12 + 48))
      {
        if (v52 < v50)
        {
          v192 = *(v49 + 16);
          v164 = *v49;
          v56 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v192;
          *v11 = v164;
          if (*v49 < *v47)
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = *(v49 + 16);
            *v47 = *v49;
            *(v12 + 64) = v59;
            *(v49 + 16) = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v50)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = *(v49 + 16);
        *v47 = *v49;
        *(v12 + 64) = v62;
        *(v49 + 16) = v61;
        *v49 = v60;
        if (*v11 < *v49)
        {
          v193 = *(v49 + 16);
          v165 = *v49;
          v63 = *v11;
          *(v49 + 16) = *(a2 - 56);
          *v49 = v63;
          v53 = v165;
          *(a2 - 56) = v193;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = *v16;
      v65 = *v49;
      if (*v16 >= *v30)
      {
        if (v65 < v64)
        {
          v195 = v16[2];
          v167 = *v16;
          *v16 = *v49;
          v16[2] = *(v49 + 16);
          *(v49 + 16) = v195;
          *v49 = v167;
          if (*v16 < *v30)
          {
            v196 = *(v30 + 16);
            v168 = *v30;
            *v30 = *v16;
            *(v30 + 16) = v16[2];
            v16[2] = v196;
            *v16 = v168;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v194 = *(v30 + 16);
          v166 = *v30;
          *v30 = *v49;
          *(v30 + 16) = *(v49 + 16);
          goto LABEL_56;
        }

        v197 = *(v30 + 16);
        v169 = *v30;
        *v30 = *v16;
        *(v30 + 16) = v16[2];
        v16[2] = v197;
        *v16 = v169;
        if (*v49 < *v16)
        {
          v194 = v16[2];
          v166 = *v16;
          *v16 = *v49;
          v16[2] = *(v49 + 16);
LABEL_56:
          *(v49 + 16) = v194;
          *v49 = v166;
        }
      }

      v198 = *(v12 + 16);
      v170 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[2];
      *v12 = v66;
      v16[2] = v198;
      *v16 = v170;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= *v16)
    {
      if (v17 < v20)
      {
        v186 = *(v12 + 16);
        v158 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v186;
        *v9 = v158;
        if (*v12 < *v16)
        {
          v187 = v16[2];
          v159 = *v16;
          v25 = *v12;
          v16[2] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v187;
          *v12 = v159;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v190 = v16[2];
      v162 = *v16;
      v41 = *v12;
      v16[2] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v190;
      *v12 = v162;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v183 = *(v12 + 16);
      v155 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v183 = v16[2];
      v155 = *v16;
      v21 = *v9;
      v16[2] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v183;
    *v9 = v155;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v151 = *(v12 + 8);
      v68 = v12;
      do
      {
        v69 = v68;
        v70 = *(v68 + 24);
        v68 += 24;
      }

      while (v70 < v67);
      v71 = a2;
      if (v69 == v12)
      {
        v71 = a2;
        do
        {
          if (v68 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 = v68;
      if (v68 < v71)
      {
        v74 = v71;
        do
        {
          v75 = *v12;
          v76 = *(v12 + 16);
          v77 = *(v74 + 16);
          *v12 = *v74;
          *(v12 + 16) = v77;
          *(v74 + 16) = v76;
          *v74 = v75;
          do
          {
            v78 = *(v12 + 24);
            v12 += 24;
          }

          while (v78 < v67);
          do
          {
            v79 = *(v74 - 24);
            v74 -= 24;
          }

          while (v79 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v80 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v80;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v151;
      if (v68 < v71)
      {
        goto LABEL_79;
      }

      v81 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *>(a1, (v12 - 24), v151);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *>(v12, a2, v82))
      {
        a2 = v12 - 24;
        if (!v81)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v81)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,false>(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v152 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v84 = v12 + 24;
        do
        {
          v12 = v84;
          if (v84 >= a2)
          {
            break;
          }

          v84 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v83 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v83);
      }

      v85 = a2;
      if (v12 < a2)
      {
        v85 = a2;
        do
        {
          v86 = *(v85 - 24);
          v85 -= 24;
        }

        while (v67 < v86);
      }

      while (v12 < v85)
      {
        v199 = *(v12 + 16);
        v171 = *v12;
        v87 = *v85;
        *(v12 + 16) = *(v85 + 16);
        *v12 = v87;
        *(v85 + 16) = v199;
        *v85 = v171;
        do
        {
          v88 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v88);
        do
        {
          v89 = *(v85 - 24);
          v85 -= 24;
        }

        while (v67 < v89);
      }

      if (v12 - 24 != a1)
      {
        v90 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v90;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v152;
      *(v12 - 16) = v152;
    }
  }

  v91 = (v12 + 24);
  v92 = *(v12 + 24);
  v93 = *v9;
  if (v92 >= *v12)
  {
    if (v93 >= v92)
    {
      return result;
    }

    result = *v91;
    v140 = *(v12 + 40);
    v141 = *(a2 - 8);
    *v91 = *v9;
    *(v12 + 40) = v141;
    *(a2 - 8) = v140;
    *v9 = result;
    goto LABEL_191;
  }

  if (v93 < v92)
  {
    goto LABEL_106;
  }

  v204 = *(v12 + 16);
  v179 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result = v179;
  *v91 = v179;
  *(v12 + 40) = v204;
  if (*v9 < *(v12 + 24))
  {
    result = *v91;
    v146 = *(v12 + 40);
    v147 = *(a2 - 8);
    *v91 = *v9;
    *(v12 + 40) = v147;
    *(a2 - 8) = v146;
    goto LABEL_107;
  }

  return result;
}

double std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,false>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = a2 - 1;
    v97 = a2 - 3;
    v98 = a2 - 2;
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = a2 - v11;
          v13 = v12 - 2;
          if (v12 <= 2)
          {
            if (v12 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v12 == 2)
            {
              if (!(*a3)(a2 - 1, v11))
              {
                return a6.n128_f64[0];
              }

LABEL_107:
              v102 = *v11;
              *v11 = *v10;
              a6 = v102;
              goto LABEL_108;
            }

            goto LABEL_9;
          }

          switch(v12)
          {
            case 3uLL:
              v47 = (*a3)(v11 + 1, v11);
              v48 = (*a3)(a2 - 1, v11 + 1);
              if (v47)
              {
                if (v48)
                {
                  goto LABEL_107;
                }

                v91 = v11[1];
                v102 = *v11;
                *v11 = v91;
                v11[1] = v102;
                if (!(*a3)(a2 - 1, v11 + 1))
                {
                  return a6.n128_f64[0];
                }

                a6 = v11[1];
                v102 = a6;
                v11[1] = *v10;
LABEL_108:
                *v10 = a6;
                return a6.n128_f64[0];
              }

              if (!v48)
              {
                return a6.n128_f64[0];
              }

              v102 = v11[1];
              v84 = v102;
              v11[1] = *v10;
              *v10 = v84;
LABEL_182:
              if ((*a3)(v11 + 1, v11))
              {
                v95 = v11[1];
                v102 = *v11;
                *v11 = v95;
                a6.n128_u64[0] = v102.n128_u64[0];
                v11[1] = v102;
              }

              return a6.n128_f64[0];
            case 4uLL:
              v49 = (*a3)(v11 + 1, v11);
              v50 = (*a3)(v11 + 2, v11 + 1);
              if ((v49 & 1) == 0)
              {
                if (v50)
                {
                  v85 = v11[1];
                  v11[1] = v11[2];
                  v11[2] = v85;
                  if ((*a3)(v11 + 1, v11))
                  {
                    v86 = v11[1];
                    v102 = *v11;
                    *v11 = v86;
                    v11[1] = v102;
                  }
                }

                goto LABEL_179;
              }

              if (v50)
              {
                v102 = *v11;
                *v11 = v11[2];
                v51 = v102;
              }

              else
              {
                v92 = v11[1];
                v102 = *v11;
                *v11 = v92;
                v11[1] = v102;
                if (!(*a3)(v11 + 2, v11 + 1))
                {
                  goto LABEL_179;
                }

                v51 = v11[1];
                v11[1] = v11[2];
              }

              v11[2] = v51;
LABEL_179:
              if (!(*a3)(a2 - 1, v11 + 2))
              {
                return a6.n128_f64[0];
              }

              v102 = v11[2];
              v93 = v102;
              v11[2] = *v10;
              *v10 = v93;
              if (!(*a3)(v11 + 2, v11 + 1))
              {
                return a6.n128_f64[0];
              }

              v94 = v11[1];
              v11[1] = v11[2];
              v11[2] = v94;
              goto LABEL_182;
            case 5uLL:

              a6.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_9:
          if (v12 <= 23)
          {
            v52 = v11 + 1;
            v54 = v11 == a2 || v52 == a2;
            if (a5)
            {
              if (!v54)
              {
                v55 = 0;
                v56 = v11;
                do
                {
                  v57 = v56;
                  v56 = v52;
                  if ((*a3)(v52, v57))
                  {
                    v102 = *v56;
                    v58 = v55;
                    while (1)
                    {
                      *(v11 + v58 + 16) = *(v11 + v58);
                      if (!v58)
                      {
                        break;
                      }

                      v58 -= 16;
                      if (((*a3)(&v102, (v11 + v58)) & 1) == 0)
                      {
                        v59 = (v11 + v58 + 16);
                        goto LABEL_127;
                      }
                    }

                    v59 = v11;
LABEL_127:
                    a6.n128_u64[0] = v102.n128_u64[0];
                    *v59 = v102;
                  }

                  v52 = v56 + 1;
                  v55 += 16;
                }

                while (&v56[1] != a2);
              }
            }

            else if (!v54)
            {
              do
              {
                v87 = a1;
                a1 = v52;
                if ((*a3)(v52, v87))
                {
                  v102 = *a1;
                  v88 = a1;
                  do
                  {
                    v89 = v88 - 1;
                    *v88 = v88[-1];
                    v90 = (*a3)(&v102, v88 - 2);
                    v88 = v89;
                  }

                  while ((v90 & 1) != 0);
                  a6.n128_u64[0] = v102.n128_u64[0];
                  *v89 = v102;
                }

                v52 = a1 + 1;
              }

              while (&a1[1] != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v100 = a2;
              v60 = v13 >> 1;
              v61 = v13 >> 1;
              do
              {
                v62 = v61;
                if (v60 >= v61)
                {
                  v63 = (2 * v61) | 1;
                  v64 = &a1[v63];
                  if (2 * v61 + 2 < v12 && (*a3)(&a1[v63], v64 + 1))
                  {
                    ++v64;
                    v63 = 2 * v62 + 2;
                  }

                  v65 = &a1[v62];
                  if (((*a3)(v64, v65) & 1) == 0)
                  {
                    v102 = *v65;
                    do
                    {
                      v66 = v64;
                      *v65 = *v64;
                      if (v60 < v63)
                      {
                        break;
                      }

                      v67 = (2 * v63) | 1;
                      v64 = &a1[v67];
                      v68 = 2 * v63 + 2;
                      if (v68 < v12 && (*a3)(&a1[v67], v64 + 1))
                      {
                        ++v64;
                        v67 = v68;
                      }

                      v65 = v66;
                      v63 = v67;
                    }

                    while (!(*a3)(v64, &v102));
                    *v66 = v102;
                  }
                }

                v61 = v62 - 1;
              }

              while (v62);
              v69 = v100;
              do
              {
                v70 = v69;
                v71 = 0;
                v101 = *a1;
                v72 = a1;
                do
                {
                  v73 = &v72[v71];
                  v74 = v73 + 1;
                  v75 = (2 * v71) | 1;
                  v76 = 2 * v71 + 2;
                  if (v76 < v12)
                  {
                    v77 = v73 + 2;
                    if ((*a3)(v73 + 1, v73 + 2))
                    {
                      v74 = v77;
                      v75 = v76;
                    }
                  }

                  *v72 = *v74;
                  v72 = v74;
                  v71 = v75;
                }

                while (v75 <= ((v12 - 2) >> 1));
                v69 = v70 - 1;
                if (v74 == &v70[-1])
                {
                  a6.n128_u64[0] = v101.n128_u64[0];
                  *v74 = v101;
                }

                else
                {
                  *v74 = *v69;
                  a6.n128_u64[0] = v101.n128_u64[0];
                  *v69 = v101;
                  v78 = (v74 - a1 + 16) >> 4;
                  v79 = v78 < 2;
                  v80 = v78 - 2;
                  if (!v79)
                  {
                    v81 = v80 >> 1;
                    v82 = &a1[v80 >> 1];
                    if ((*a3)(v82, v74))
                    {
                      v102 = *v74;
                      do
                      {
                        v83 = v82;
                        *v74 = *v82;
                        if (!v81)
                        {
                          break;
                        }

                        v81 = (v81 - 1) >> 1;
                        v82 = &a1[v81];
                        v74 = v83;
                      }

                      while (((*a3)(v82, &v102) & 1) != 0);
                      a6.n128_u64[0] = v102.n128_u64[0];
                      *v83 = v102;
                    }
                  }
                }

                v79 = v12-- <= 2;
              }

              while (!v79);
            }

            return a6.n128_f64[0];
          }

          v14 = &v11[v12 >> 1];
          v15 = *a3;
          if (v12 >= 0x81)
          {
            v16 = v15(&v11[v12 >> 1], v11);
            v17 = (*a3)(a2 - 1, &v11[v12 >> 1]);
            if (v16)
            {
              if (v17)
              {
                v102 = *v11;
                *v11 = *v10;
                goto LABEL_26;
              }

              v102 = *v11;
              *v11 = *v14;
              *v14 = v102;
              if ((*a3)(a2 - 1, &v11[v12 >> 1]))
              {
                v102 = *v14;
                *v14 = *v10;
LABEL_26:
                *v10 = v102;
              }
            }

            else if (v17)
            {
              v102 = *v14;
              *v14 = *v10;
              *v10 = v102;
              if ((*a3)(&v11[v12 >> 1], v11))
              {
                v102 = *v11;
                *v11 = *v14;
                *v14 = v102;
              }
            }

            v20 = v14 - 1;
            v21 = (*a3)(v14 - 1, a1 + 1);
            v22 = (*a3)(v98, v14 - 1);
            if (v21)
            {
              if (v22)
              {
                v23 = a1[1];
                v102 = v23;
                v24 = a2 - 2;
                a1[1] = *v98;
                goto LABEL_38;
              }

              v102 = a1[1];
              v26 = v102;
              a1[1] = *v20;
              *v20 = v26;
              if ((*a3)(v98, v14 - 1))
              {
                v102 = *v20;
                v24 = a2 - 2;
                *v20 = *v98;
                v23 = v102;
LABEL_38:
                *v24 = v23;
              }
            }

            else if (v22)
            {
              v102 = *v20;
              *v20 = *v98;
              *v98 = v102;
              if ((*a3)(v14 - 1, a1 + 1))
              {
                v102 = a1[1];
                v25 = v102;
                a1[1] = *v20;
                *v20 = v25;
              }
            }

            v27 = (*a3)(v14 + 1, a1 + 2);
            v28 = (*a3)(v97, v14 + 1);
            if (v27)
            {
              if (v28)
              {
                v29 = a1[2];
                v102 = v29;
                v30 = a2 - 3;
                a1[2] = *v97;
                goto LABEL_47;
              }

              v102 = a1[2];
              v32 = v102;
              a1[2] = v14[1];
              v14[1] = v32;
              if ((*a3)(v97, v14 + 1))
              {
                v102 = v14[1];
                v30 = a2 - 3;
                v14[1] = *v97;
                v29 = v102;
LABEL_47:
                *v30 = v29;
              }
            }

            else if (v28)
            {
              v102 = v14[1];
              v14[1] = *v97;
              *v97 = v102;
              if ((*a3)(v14 + 1, a1 + 2))
              {
                v102 = a1[2];
                v31 = v102;
                a1[2] = v14[1];
                v14[1] = v31;
              }
            }

            v33 = (*a3)(&a1[v12 >> 1], v14 - 1);
            v34 = (*a3)(v14 + 1, &a1[v12 >> 1]);
            if (v33)
            {
              if (v34)
              {
                v102 = *v20;
                *v20 = v14[1];
                goto LABEL_56;
              }

              v102 = *v20;
              *v20 = *v14;
              *v14 = v102;
              if ((*a3)(v14 + 1, &a1[v12 >> 1]))
              {
                v102 = *v14;
                *v14 = v14[1];
LABEL_56:
                v14[1] = v102;
              }
            }

            else if (v34)
            {
              v102 = *v14;
              *v14 = v14[1];
              v14[1] = v102;
              if ((*a3)(&a1[v12 >> 1], v14 - 1))
              {
                v102 = *v20;
                *v20 = *v14;
                *v14 = v102;
              }
            }

            v102 = *a1;
            *a1 = *v14;
            *v14 = v102;
            goto LABEL_58;
          }

          v18 = v15(v11, &v11[v12 >> 1]);
          v19 = (*a3)(a2 - 1, v11);
          if (v18)
          {
            if (v19)
            {
              v102 = *v14;
              *v14 = *v10;
LABEL_35:
              *v10 = v102;
              goto LABEL_58;
            }

            v102 = *v14;
            *v14 = *v11;
            *v11 = v102;
            if ((*a3)(a2 - 1, v11))
            {
              v102 = *v11;
              *v11 = *v10;
              goto LABEL_35;
            }
          }

          else if (v19)
          {
            v102 = *v11;
            *v11 = *v10;
            *v10 = v102;
            if ((*a3)(v11, &v11[v12 >> 1]))
            {
              v102 = *v14;
              *v14 = *v11;
              *v11 = v102;
            }
          }

LABEL_58:
          --a4;
          if (a5 & 1) != 0 || ((*a3)(a1 - 1, a1))
          {
            break;
          }

          v101 = *a1;
          if ((*a3)(&v101, a2 - 1))
          {
            v11 = a1;
            do
            {
              ++v11;
            }

            while (((*a3)(&v101, v11) & 1) == 0);
          }

          else
          {
            v42 = a1 + 1;
            do
            {
              v11 = v42;
              if (v42 >= a2)
              {
                break;
              }

              v43 = (*a3)(&v101, v42);
              v42 = v11 + 1;
            }

            while (!v43);
          }

          v44 = a2;
          if (v11 < a2)
          {
            v44 = a2;
            do
            {
              --v44;
            }

            while (((*a3)(&v101, v44) & 1) != 0);
          }

          while (v11 < v44)
          {
            v102 = *v11;
            *v11 = *v44;
            *v44 = v102;
            do
            {
              ++v11;
            }

            while (!(*a3)(&v101, v11));
            do
            {
              --v44;
            }

            while (((*a3)(&v101, v44) & 1) != 0);
          }

          v45 = v11 - 1;
          if (&v11[-1] != a1)
          {
            *a1 = *v45;
          }

          a5 = 0;
          a6.n128_u64[0] = v101.n128_u64[0];
          *v45 = v101;
        }

        v101 = *a1;
        v35 = a1;
        do
        {
          v36 = v35++;
        }

        while (((*a3)(v35, &v101) & 1) != 0);
        v37 = a2;
        if (v36 == a1)
        {
          v37 = a2;
          do
          {
            if (v35 >= v37)
            {
              break;
            }

            --v37;
          }

          while (((*a3)(v37, &v101) & 1) == 0);
        }

        else
        {
          do
          {
            --v37;
          }

          while (!(*a3)(v37, &v101));
        }

        if (v35 < v37)
        {
          v38 = v35;
          v39 = v37;
          do
          {
            v102 = *v38;
            v40 = v102;
            *v38 = *v39;
            *v39 = v40;
            do
            {
              v36 = v38++;
            }

            while (((*a3)(v38, &v101) & 1) != 0);
            do
            {
              --v39;
            }

            while (!(*a3)(v39, &v101));
          }

          while (v38 < v39);
        }

        if (v36 != a1)
        {
          *a1 = *v36;
        }

        *v36 = v101;
        if (v35 >= v37)
        {
          break;
        }

LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,false>(a1, v36, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v36 + 1;
      }

      v41 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*>(a1, v36, a3);
      v11 = v36 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*>(v36 + 1, a2, a3))
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_79;
      }
    }

    a2 = v36;
    if (!v41)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    v17 = *a1;
    *a1 = *a2;
    *a2 = v17;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    if ((*a6)(a3, a2))
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      if ((*a6)(a2, a1))
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v22 = *a4;
    *a4 = *a5;
    *a5 = v22;
    if ((*a6)(a4, a3))
    {
      v23 = *a3;
      *a3 = *a4;
      *a4 = v23;
      if ((*a6)(a3, a2))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        if ((*a6)(a2, a1))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v9 = a2 - 1;
      v10 = (*a3)(a1 + 1, a1);
      v11 = (*a3)(v9, a1 + 1);
      if (v10)
      {
        if (v11)
        {
          v12 = *a1;
          *a1 = *v9;
        }

        else
        {
          v26 = *a1;
          *a1 = a1[1];
          a1[1] = v26;
          if (!(*a3)(v9, a1 + 1))
          {
            return 1;
          }

          v12 = a1[1];
          a1[1] = *v9;
        }

        *v9 = v12;
        return 1;
      }

      if (!v11)
      {
        return 1;
      }

      v21 = a1[1];
      a1[1] = *v9;
      *v9 = v21;
LABEL_50:
      if ((*a3)(a1 + 1, a1))
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(GTMTLReplayResourceTrackingTracingResourceEntryV2 const&,GTMTLReplayResourceTrackingTracingResourceEntryV2 const&),GTMTLReplayResourceTrackingTracingResourceEntryV2*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v17 = a2 - 1;
    v18 = (*a3)(a1 + 1, a1);
    v19 = (*a3)(a1 + 2, a1 + 1);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v24 = a1[1];
        a1[1] = a1[2];
        a1[2] = v24;
        if ((*a3)(a1 + 1, a1))
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
        }
      }

      goto LABEL_47;
    }

    if (v19)
    {
      v20 = *a1;
      *a1 = a1[2];
    }

    else
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_47;
      }

      v20 = a1[1];
      a1[1] = a1[2];
    }

    a1[2] = v20;
LABEL_47:
    if (!(*a3)(v17, a1 + 2))
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = *v17;
    *v17 = v35;
    if (!(*a3)(a1 + 2, a1 + 1))
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    if (v15)
    {
      v16 = *a1;
      *a1 = *v13;
    }

    else
    {
      v27 = *a1;
      *a1 = a1[1];
      a1[1] = v27;
      if (!(*a3)(a1 + 2, a1 + 1))
      {
        goto LABEL_33;
      }

      v16 = a1[1];
      a1[1] = *v13;
    }

    *v13 = v16;
  }

  else if (v15)
  {
    v22 = a1[1];
    a1[1] = *v13;
    *v13 = v22;
    if ((*a3)(a1 + 1, a1))
    {
      v23 = *a1;
      *a1 = a1[1];
      a1[1] = v23;
    }
  }

LABEL_33:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    if ((*a3)(v28, v13))
    {
      v39[0] = *v28;
      v31 = v29;
      while (1)
      {
        v32 = (a1 + v31);
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v31 -= 16;
        if (((*a3)(v39, v32 + 1) & 1) == 0)
        {
          v33 = (a1 + v31 + 48);
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v39[0];
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v13 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (*a3 < a2->n128_u64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (*a3 < a2->n128_u64[0])
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a5 < *a4)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a4 < *a3)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (*a3 < a2->n128_u64[0])
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = (a2 - 24);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_u64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,PopulateResourceTrackingBufferV2(objc_object  {objcproto9MTLBuffer}*,GTMTLIndirectResources const&,apr_pool_t *)::$_0 &,GTMTLReplayResourceTrackingTracingBufferEntryV2 *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_u64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v23->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 1) = v56;
    if (v21->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_u64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_u64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void MakeRootResourceAliasable(void *a1)
{
  v6 = a1;
  v1 = [v6 heap];
  v2 = v1;
  if (v1 && ![v1 type])
  {
    if (![v6 conformsToProtocol:&unk_2860F5FC0])
    {
      goto LABEL_7;
    }

    v3 = v6;
    v4 = [v3 parentTexture];
    if (v4)
    {

      goto LABEL_8;
    }

    v5 = [v3 buffer];

    if (!v5)
    {
LABEL_7:
      [v6 makeAliasable];
    }
  }

LABEL_8:
}

id GTPostVertexDataError(unsigned int a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEB38];
  v10 = a2;
  v11 = [v9 alloc];
  v12 = [v11 initWithObjectsAndKeys:{v10, *MEMORY[0x277CCA450], 0}];

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTPostVertexDumpErrorDomain" code:a1 userInfo:v12];

  return v13;
}

id GTMTLReplayController_generatePostMeshData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v301[1] = *MEMORY[0x277D85DE8];
  v273 = a2;
  v272 = a11;
  v15 = *(a10 + 96);
  [v15 device];
  v291 = 0;
  v16 = v290 = 0;
  v17 = a8[9];
  if (v17)
  {
    memcpy(__dst, v17, sizeof(__dst));
    v18 = 0;
    v19 = BYTE6(__dst[63]);
    do
    {
      v20 = &__dst[v18];
      *v20 = 0;
      *(v20 + 3) = 0;
      v18 += 2;
    }

    while (v18 != 16);
    LOWORD(__dst[50]) = 0;
    v266 = v19 != 0;
    LOWORD(__dst[51]) = 0;
    HIBYTE(__dst[63]) = 0;
    LOWORD(__dst[0]) = 70;
    memset(&__dst[16], 0, 64);
    __dst[43] = 0;
    __dst[47] = 0;
    v21 = [*(a1 + 8) renderPipelineDescriptorMap];
    v22 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(__dst, v21);

    v23 = [v22 objectFunction];
    LODWORD(v21) = v23 != 0;

    [v22 setRasterizationEnabled:0];
    [v22 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
    v258 = v21;
    if (objc_opt_respondsToSelector())
    {
      v298 = 0;
      v24 = [v16 newRenderPipelineStateWithMeshDescriptor:v22 options:1 reflection:&v291 error:&v298];
      v25 = v298;
      if (v24)
      {
        v261 = a1;
        v300 = @"enable-post-mesh-dump-instrumentation";
        v26 = [MEMORY[0x277CBEB68] null];
        v301[0] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v301 forKeys:&v300 count:1];
        [v22 setGpuCompilerSPIOptions:v27];

        v292 = v25;
        v28 = [v16 newRenderPipelineStateWithMeshDescriptor:v22 options:0x200000001 reflection:&v290 error:&v292];
        v29 = v292;

        goto LABEL_17;
      }

      *a12 = GTPostVertexDataError(2u, @"Post-transform geometry data fetch pipeline reflection error", 0, v25);
    }

    else
    {
      *a12 = GTPostVertexDataError(3u, @"Post-transform geometry data fetch for mesh stage is not supported", @"Update target OS to the latest version", 0);
    }

LABEL_29:
    v28 = 0;
    goto LABEL_30;
  }

  v30 = a8[11];
  if (!v30)
  {
    GTPostVertexDataError(1u, @"Internal error: Pipeline descriptor error", 0, 0);
    v266 = 0;
    v258 = 0;
    *a12 = v28 = 0;
    goto LABEL_30;
  }

  if (v30[1016] != 4)
  {
    v266 = 0;
    v258 = 0;
    goto LABEL_29;
  }

  memcpy(__dst, v30, 0x158uLL);
  v31 = 0;
  v32 = BYTE5(__dst[41]);
  do
  {
    v33 = &__dst[v31];
    *v33 = 0;
    *(v33 + 3) = 0;
    v31 += 2;
  }

  while (v31 != 16);
  v266 = v32 != 0;
  LOWORD(__dst[0]) = 70;
  __dst[39] = 0;
  v34 = [*(a1 + 8) libraries];
  v22 = MakeMTL4MeshRenderPipelineDescriptor(__dst, v34);

  v35 = [v22 objectFunctionDescriptor];
  v36 = v35 != 0;

  [v22 setFragmentFunctionDescriptor:0];
  [v22 setRasterizationEnabled:0];
  [v22 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
  v37 = [v22 options];

  if (!v37)
  {
    v38 = objc_opt_new();
    [v22 setOptions:v38];
  }

  v39 = [v22 options];
  [v39 setShaderReflection:1];

  v40 = a8[12];
  if (v40)
  {
    v41 = [*(a1 + 8) dynamicLibraries];
    v40 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v40, v41);
  }

  v258 = v36;
  v42 = [*(a1 + 8) defaultCompiler];
  v298 = 0;
  v270 = v40;
  v43 = [v42 newRenderPipelineStateWithDescriptor:v22 dynamicLinkingDescriptor:v40 compilerTaskOptions:0 error:&v298];
  v44 = a1;
  v45 = v43;
  v46 = v298;

  if (v45)
  {
    v291 = [v45 reflection];
    v47 = [v22 options];
    [v47 setEnablePostMeshDump:1];

    v48 = [v22 options];
    [v48 setShaderReflection:1];

    v261 = v44;
    [*(v44 + 8) defaultCompiler];
    v49 = v246 = a7;
    v301[0] = v46;
    v28 = [v49 newRenderPipelineStateWithDescriptor:v22 dynamicLinkingDescriptor:v270 compilerTaskOptions:0 error:v301];
    v29 = v301[0];

    a7 = v246;
    v290 = [v28 reflection];

LABEL_17:
    if (v28)
    {

      a1 = v261;
      goto LABEL_30;
    }

    v50 = [v29 domain];
    a1 = v261;
    if ([v50 hasPrefix:@"AGXMetal"])
    {
      v51 = [v29 localizedDescription];
      v52 = [v51 containsString:@"Payload size >"];

      if (v52)
      {
        v53 = @"Maximum tools-supported payload size exceeded";
        v54 = @"Reduce your object data payload to 16368 bytes or less";
        v55 = 3;
        v56 = 0;
LABEL_28:
        *a12 = GTPostVertexDataError(v55, v53, v54, v56);

        goto LABEL_29;
      }
    }

    else
    {
    }

    v53 = @"Post-transform geometry data fetch pipeline error";
    v55 = 2;
    v54 = 0;
    v56 = v29;
    goto LABEL_28;
  }

  *a12 = GTPostVertexDataError(2u, @"Post-transform geometry data fetch pipeline reflection error", 0, v46);

  v28 = 0;
  a1 = v44;
LABEL_30:

  v57 = v291;
  v58 = v290;
  v59 = v58;
  if (!v28)
  {
    v69 = 0;
    v70 = v272;
    v71 = v273;
    goto LABEL_131;
  }

  v269 = v16;
  v271 = v58;
  v262 = a1;
  v263 = v28;
  v265 = v15;
  v299 = 0;
  v298 = 0;
  v60 = [MEMORY[0x277CBEB38] dictionary];
  v61 = [MEMORY[0x277CBEB38] dictionary];
  v264 = v57;
  [v57 meshBuiltInArguments];
  v286 = 0u;
  v287 = 0u;
  v288 = 0u;
  v62 = v289 = 0u;
  v63 = [v62 countByEnumeratingWithState:&v286 objects:v297 count:16];
  v64 = a7;
  v243 = a8;
  if (v63)
  {
    v65 = v63;
    v66 = *v287;
    while (2)
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v287 != v66)
        {
          objc_enumerationMutation(v62);
        }

        v68 = *(*(&v286 + 1) + 8 * i);
        if ([v68 builtInType] == 24)
        {
          v268 = [v68 meshVertexCount];
          v72 = [v68 meshPrimitiveCount];
          v73 = [v68 meshTopologyType] - 1;
          v247 = v64;
          v248 = v72;
          if (v73 > 2)
          {
            v223 = 0;
          }

          else
          {
            v223 = dword_24DA910D0[v73];
          }

          v74 = [v68 meshVertexStruct];
          v254 = [v68 meshPrimitiveStruct];
          v282 = 0u;
          v283 = 0u;
          v284 = 0u;
          v285 = 0u;
          v244 = v74;
          v75 = [v74 members];
          v76 = [v75 countByEnumeratingWithState:&v282 objects:v296 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v283;
            do
            {
              for (j = 0; j != v77; ++j)
              {
                if (*v283 != v78)
                {
                  objc_enumerationMutation(v75);
                }

                v80 = *(*(&v282 + 1) + 8 * j);
                v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v80, "dataType")}];
                v82 = [v80 name];
                [v60 setObject:v81 forKeyedSubscript:v82];
              }

              v77 = [v75 countByEnumeratingWithState:&v282 objects:v296 count:16];
            }

            while (v77);
          }

          v280 = 0u;
          v281 = 0u;
          v278 = 0u;
          v279 = 0u;
          v83 = [v254 members];
          v84 = [v83 countByEnumeratingWithState:&v278 objects:v295 count:16];
          if (v84)
          {
            v85 = v84;
            v86 = *v279;
            do
            {
              for (k = 0; k != v85; ++k)
              {
                if (*v279 != v86)
                {
                  objc_enumerationMutation(v83);
                }

                v88 = *(*(&v278 + 1) + 8 * k);
                v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v88, "dataType")}];
                v90 = [v88 name];
                [v61 setObject:v89 forKeyedSubscript:v90];
              }

              v85 = [v83 countByEnumeratingWithState:&v278 objects:v295 count:16];
            }

            while (v85);
          }

          v255 = 1;
          goto LABEL_61;
        }
      }

      v65 = [v62 countByEnumeratingWithState:&v286 objects:v297 count:16];
      if (v65)
      {
        continue;
      }

      break;
    }
  }

  if (!v266)
  {
    v247 = v64;
    v223 = 0;
    v268 = 0;
    v248 = 0;
    v255 = 0;
LABEL_61:
    [v271 meshBindings];
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    v91 = v277 = 0u;
    v92 = [v91 countByEnumeratingWithState:&v274 objects:v294 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v275;
LABEL_63:
      v95 = 0;
      while (1)
      {
        if (*v275 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = *(*(&v274 + 1) + 8 * v95);
        v97 = [v96 name];
        if ([v97 isEqualToString:@"__post_mesh_dump_impl_trace_buffer"])
        {
          v98 = [v96 type];

          if (!v98)
          {
            v202 = [v96 index];
            v99 = [v96 bufferStructType];
            v100 = [v99 memberByName:@"size"];
            v201 = [v100 offset];
            v101 = [v99 memberByName:@"os_tg_bounds"];
            v199 = [v101 offset];
            v102 = [v101 arrayType];
            v200 = [v102 stride];
            v103 = [v99 memberByName:@"num_dumped_mesh_threadgroups"];
            v220 = [v103 offset];
            v104 = [v99 memberByName:@"max_ms_tg_ids"];
            v216 = [v104 offset];

            v259 = v99;
            v105 = [v99 memberByName:@"mesh_data"];
            v224 = [v105 offset];
            v241 = v105;
            v106 = [v105 arrayType];
            v245 = [v106 stride];
            v239 = v106;
            v107 = [v106 elementStructType];
            v236 = [v107 memberByName:@"primitive_count"];
            v108 = [v236 offset];
            v232 = [v107 memberByName:@"amplification_id"];
            v109 = [v232 offset];
            v230 = [v107 memberByName:@"object_threadgroup_position_in_grid"];
            v217 = [v230 offset];
            v229 = [v107 memberByName:@"threadgroup_position_in_grid"];
            v215 = [v229 offset];
            v228 = [v107 memberByName:@"indices"];
            v110 = [v228 offset];
            v227 = [v107 memberByName:@"indices_present"];
            v111 = [v227 offset];
            v112 = [v107 memberByName:@"indices_thread_id"];
            v212 = [v112 offset];
            v213 = v111;
            v214 = v110;
            if (v248)
            {
              v113 = [v112 arrayType];
              v211 = [v113 stride];
            }

            else
            {
              v211 = 0;
            }

            v225 = [v107 memberByName:@"vertices_present"];
            v210 = [v225 offset];
            v114 = [v107 memberByName:@"vertices_thread_id"];
            v209 = [v114 offset];
            v219 = v108;
            if (v268)
            {
              v115 = [v114 arrayType];
              v208 = [v115 stride];
            }

            else
            {
              v208 = 0;
            }

            v116 = [v107 memberByName:@"vertices"];
            v207 = [v116 offset];
            v218 = v109;
            if (v268)
            {
              v117 = [v116 arrayType];
              v222 = [v117 stride];
              v256 = [v117 elementStructType];
            }

            else
            {
              v222 = 0;
              v256 = 0;
            }

            v226 = v112;
            v118 = [v107 memberByName:@"primitives_present"];
            v206 = [v118 offset];
            v119 = [v107 memberByName:@"primitives_thread_id"];
            v205 = [v119 offset];
            if (v248)
            {
              v120 = [v119 arrayType];
              v204 = [v120 stride];
            }

            else
            {
              v204 = 0;
            }

            v121 = [v107 memberByName:@"primitives"];
            v203 = [v121 offset];
            if (v248)
            {
              v122 = [v121 arrayType];
              v221 = [v122 stride];
              v267 = [v122 elementStructType];
            }

            else
            {
              v221 = 0;
              v267 = 0;
            }

            v123 = 0;
            v124 = 1;
            v125 = v272;
            v71 = v273;
            v126 = a12;
            v57 = v264;
            v127 = v256;
            if (!v256)
            {
              goto LABEL_92;
            }

            goto LABEL_93;
          }
        }

        else
        {
        }

        if (v93 == ++v95)
        {
          v93 = [v91 countByEnumeratingWithState:&v274 objects:v294 count:16];
          if (v93)
          {
            goto LABEL_63;
          }

          break;
        }
      }
    }

    if ((v266 | v255) == 1)
    {
      GTPostVertexDataError(1u, @"Internal error: Post-transform geometry data buffer binding is missing", 0, 0);
      v69 = 0;
      *a12 = v70 = v272;
      v71 = v273;
      v57 = v264;
LABEL_129:

      v28 = v263;
      v59 = v271;
      goto LABEL_130;
    }

    v206 = 0;
    v207 = 0;
    v221 = 0;
    v222 = 0;
    v203 = 0;
    v204 = 0;
    v245 = 0;
    v218 = 0;
    v219 = 0;
    v217 = 0;
    v214 = 0;
    v215 = 0;
    v209 = 0;
    v210 = 0;
    v212 = 0;
    v213 = 0;
    v208 = 0;
    v205 = 0;
    v211 = 0;
    v201 = 0;
    v202 = 0;
    v127 = 0;
    v267 = 0;
    v124 = 0;
    v199 = 4;
    v200 = 0;
    v220 = 36;
    v216 = 40;
    v224 = 44;
    v125 = v272;
    v71 = v273;
    v126 = a12;
    v57 = v264;
    v123 = v258;
LABEL_92:
    if (v268)
    {
      goto LABEL_95;
    }

LABEL_93:
    if (!v267 && v248)
    {
LABEL_95:
      *v126 = GTPostVertexDataError(1u, @"Internal error: Post-transform geometry data buffer binding is missing", 0, 0);

      v69 = 0;
LABEL_128:
      v70 = v125;
      goto LABEL_129;
    }

    v260 = v123;
    v128 = [v265 contents];
    v240 = [v265 length];
    v242 = v128;
    bzero(v128, v240);
    v257 = v127;
    if (v124)
    {
      v129 = *(a4 + 24) + (*GroupBuilder_getCommandBuffer(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), a5) << 6);
      GTMTLReplayController_defaultDispatchFunction(v262, v129);
      v130 = *(GTTraceFunc_argumentBytesWithMap(v129, *(v129 + 13), *(a3 + 16)) + 1);
      if (!GTFenum_isMTL4CommandBufferRelated(*(v129 + 8)))
      {
        v146 = [v71 commandBufferForKey:v130];
        if (v146)
        {
          v175 = objc_alloc_init(MEMORY[0x277CD6F48]);
          [v175 setRenderTargetWidth:*(v262 + 22544)];
          [v175 setRenderTargetHeight:*(v262 + 22552)];
          v176 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(v262 + 22544) height:*(v262 + 22552) mipmapped:0];
          [v176 setUsage:4];
          [v176 setStorageMode:2];
          if ([v269 supportsMemorylessRenderTargets])
          {
            [v176 setStorageMode:3];
          }

          v177 = [v269 newTextureWithDescriptor:v176];
          v178 = [v175 colorAttachments];
          v179 = [v178 objectAtIndexedSubscript:0];
          [v179 setTexture:v177];

          v180 = [v175 colorAttachments];
          v181 = [v180 objectAtIndexedSubscript:0];
          [v181 setLoadAction:0];

          v182 = [v175 colorAttachments];
          v183 = [v182 objectAtIndexedSubscript:0];
          [v183 setStoreAction:0];

          if ((GT_SUPPORT_0 & 0x40) != 0)
          {
            [v175 setDefaultRasterSampleCount:1];
          }

          CommandEncoder = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), a5);
          v185 = [v146 renderCommandEncoderWithDescriptor:v175];
          v186 = *(a4 + 24) + (*CommandEncoder << 6);
          v71 = v273;
          [v273 setRenderCommandEncoder:v185 forKey:{*(GTTraceFunc_argumentBytesWithMap(v186, *(v186 + 13), *(a3 + 16)) + 1)}];
          v238 = v146;
          if (!RestoreCommandEncoder())
          {
            *a12 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);

            v146 = 0;
            v69 = 0;
LABEL_127:

            v57 = v264;
            goto LABEL_128;
          }

          [v185 setRenderPipelineState:v263];
          v187 = [v125 length];
          v188 = [v125 bytes];
          *&v242[v201] = v240;
          v189 = &v242[v199];
          v190 = &v242[v199 + v200];
          bzero(&v242[v199], 2 * v200);
          if (v187)
          {
            v191 = *v188;
            *(v189 + 2) = *(v188 + 8);
            *v189 = v191;
            v192 = *(v188 + 12);
            *(v190 + 8) = *(v188 + 20);
            *v190 = v192;
          }

          else
          {
            *(v189 + 2) = 0;
            *v189 = 0;
            *v190 = -1;
            *(v190 + 8) = -1;
          }

          v235 = v175;
          *&v242[v220] = 0;
          [v185 setMeshBuffer:v265 offset:0 atIndex:v202];
          if (*(a6 + 8) >> 2 == 1073737833)
          {
            v195 = *(a9 + 360);
            v196 = v273;
            v197 = [v273 executeIndirectCommandBufferMap];
            DYMTLDrawRenderCommandEncoder(v185, a9 + 40, v195, a9 + 256, v197);

            apr_pool_clear(*(a9 + 368));
            v126 = a12;
            v198 = v262;
          }

          else
          {
            v198 = v262;
            GTMTLReplayController_defaultDispatchFunction(v262, a6);
            v126 = a12;
            v196 = v273;
          }

          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v198, a5);
          [v196 commitCommandBuffers];
          [v146 waitUntilCompleted];

          v146 = 0;
          v71 = v196;
LABEL_108:
          v157 = *&v242[v220];
          v158 = v224 + v245 * v157;
          v159 = [v269 maxBufferLength];
          if (v159 >= v158)
          {
            v160 = v224 + v245 * v157;
          }

          else
          {
            v160 = v159;
          }

          if (v160 >= 0x20000000)
          {
            v161 = 0x20000000;
          }

          else
          {
            v161 = v160;
          }

          if (v161 > v240 && v161 < MEMORY[0x253033EF0]() - 0x10000000 && (v162 = [v269 newBufferWithLength:v161 options:0]) != 0)
          {
            v163 = *(a10 + 96);
            *(a10 + 96) = v162;

            memcpy(__dst, a9, 0x178uLL);
            v125 = v272;
            v69 = GTMTLReplayController_generatePostMeshData(v262, v71, a3, a4, a5, a6, v247, v243, __dst, a10, v272, v126);
          }

          else
          {
            v234 = v146;
            v164 = SaveObjectStruct(v222, v257, v60, 0, 0);
            v165 = SaveObjectStruct(v221, v267, v61, 0, 0);
            v166 = (v164 + v165 + 380) & 0xFFFFFFFFFFFFFF00;
            v253 = v240 < v158;
            if (v240 < v158)
            {
              v157 = (v240 - v224) / v245;
            }

            v167 = &v242[v216];
            if (v260)
            {
              v168 = [v263 maxTotalThreadgroupsPerMeshGrid];
              v169 = 0xFFFFFFFFLL;
              if (v168 < 0xFFFFFFFF)
              {
                v169 = v168;
              }

              if (v169 <= 1)
              {
                LODWORD(v169) = 1;
              }

              v170 = v169 - 1;
              *v167 = v170;
              *(v167 + 1) = v170;
              *(v167 + 2) = v170;
            }

            v298 = *v167;
            v299 = *(v167 + 2);
            v69 = [v269 newBufferWithLength:((v157 * v245 + 255) & 0xFFFFFFFFFFFFFF00) + v166 options:0];
            v171 = [v69 contents];
            *v171 = 2;
            *(v171 + 4) = v166;
            *(v171 + 8) = 125;
            *(v171 + 12) = v164;
            *(v171 + 16) = v165;
            *(v171 + 20) = v223;
            *(v171 + 24) = v268;
            *(v171 + 28) = v207;
            *(v171 + 32) = v222;
            *(v171 + 36) = v248;
            *(v171 + 40) = v203;
            *(v171 + 44) = v221;
            *(v171 + 48) = v157;
            *(v171 + 52) = v245;
            *(v171 + 56) = v219;
            *(v171 + 60) = v218;
            *(v171 + 64) = v217;
            *(v171 + 68) = v215;
            *(v171 + 72) = v214;
            v172 = v299;
            *(v171 + 76) = v298;
            *(v171 + 84) = v172;
            *(v171 + 88) = v210;
            *(v171 + 92) = v206;
            *(v171 + 96) = v213;
            *(v171 + 100) = v209;
            *(v171 + 104) = v208;
            *(v171 + 108) = v205;
            *(v171 + 112) = v204;
            *(v171 + 116) = v212;
            *(v171 + 120) = v211;
            *(v171 + 124) = v253;
            SaveObjectStruct(v222, v257, v60, (v171 + 125), v164);
            SaveObjectStruct(v221, v267, v61, (v171 + 125 + v164), v165);
            memcpy((v171 + v166), &v242[v224], v157 * v245);
            v125 = v272;
            v71 = v273;
            v146 = v234;
          }

          goto LABEL_127;
        }

LABEL_107:
        v238 = 0;
        goto LABEL_108;
      }

      v131 = [v71 mtl4CommandBufferForKey:v130];
      if (v131)
      {
        v132 = v131;
        v133 = objc_opt_new();
        v134 = [v71 defaultDevice];
        v237 = v133;
        v135 = [v134 newResidencySetWithDescriptor:v133 error:0];

        [v135 addAllocation:v265];
        [v135 commit];
        v231 = v135;
        v233 = v132;
        [v132 useResidencySet:v135];
        v136 = objc_alloc_init(MEMORY[0x277CD6BA8]);
        [v136 setRenderTargetWidth:*(v262 + 22544)];
        [v136 setRenderTargetHeight:*(v262 + 22552)];
        v137 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(v262 + 22544) height:*(v262 + 22552) mipmapped:0];
        [v137 setUsage:4];
        [v137 setStorageMode:2];
        if ([v269 supportsMemorylessRenderTargets])
        {
          [v137 setStorageMode:3];
        }

        v138 = [v269 newTextureWithDescriptor:v137];
        v139 = [v136 colorAttachments];
        v140 = [v139 objectAtIndexedSubscript:0];
        [v140 setTexture:v138];

        v141 = [v136 colorAttachments];
        v142 = [v141 objectAtIndexedSubscript:0];
        [v142 setLoadAction:0];

        v143 = [v136 colorAttachments];
        v144 = [v143 objectAtIndexedSubscript:0];
        [v144 setStoreAction:0];

        if ((GT_SUPPORT_0 & 0x40) != 0)
        {
          [v136 setDefaultRasterSampleCount:1];
        }

        v145 = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), a5);
        v146 = v132;
        v147 = [v132 renderCommandEncoderWithDescriptor:v136];
        v148 = *(a4 + 24) + (*v145 << 6);
        [v273 setMTL4RenderCommandEncoder:v147 forKey:{*(GTTraceFunc_argumentBytesWithMap(v148, *(v148 + 13), *(a3 + 16)) + 1)}];
        v149 = [v273 mtl4ArgumentTableForKey:*(v247 + 96)];
        [v149 setAddress:objc_msgSend(v265 atIndex:{"gpuAddress"), v202}];

        v150 = RestoreCommandEncoder();
        v125 = v272;
        if (v150)
        {
          [v147 setRenderPipelineState:v263];
          v151 = [v272 length];
          v152 = [v272 bytes];
          *&v242[v201] = v240;
          v153 = &v242[v199];
          v154 = &v242[v199 + v200];
          bzero(&v242[v199], 2 * v200);
          if (v151)
          {
            v155 = *v152;
            *(v153 + 2) = *(v152 + 8);
            *v153 = v155;
            v156 = *(v152 + 12);
            *(v154 + 8) = *(v152 + 20);
            *v154 = v156;
          }

          else
          {
            *(v153 + 2) = 0;
            *v153 = 0;
            *v154 = -1;
            *(v154 + 8) = -1;
          }

          *&v242[v220] = 0;
          GTMTLReplayController_defaultDispatchFunction(v262, a6);
          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v262, a5);
          [v273 commitCommandBuffers:v262 + 40];
          v193 = *(v262 + 40);
          v194 = atomic_load((v262 + 48));
          [v193 waitUntilSignaledValue:v194 - 1 timeoutMS:-1];

          v125 = v272;
          v146 = v233;
        }

        else
        {
          *a12 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);
        }

        v238 = 0;
        v69 = 0;
        v126 = a12;
        v71 = v273;
        if (!v150)
        {
          goto LABEL_127;
        }

        goto LABEL_108;
      }
    }

    v146 = 0;
    goto LABEL_107;
  }

  GTPostVertexDataError(1u, @"Internal error: Missing mesh reflection", 0, 0);
  v69 = 0;
  *a12 = v59 = v271;
  v57 = v264;
  v70 = v272;
  v71 = v273;
LABEL_130:

  v15 = v265;
  v16 = v269;
LABEL_131:

  v173 = *MEMORY[0x277D85DE8];

  return v69;
}

id GTMTLReplayController_generatePostVertexData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = a2;
  v17 = 63 - __clz(~(*(a8 + 152) | *(a8 + 144)) & 0x7FFFFFFF);
  v18 = *(a10 + 96);
  v19 = [v18 device];
  if ([v19 maxVertexBuffers] <= v17)
  {
    GTPostVertexDataError(1u, @"Internal error: Post-transform geometry data buffer binding error", 0, 0);
    *a11 = v50 = 0;
    goto LABEL_43;
  }

  v98 = a5;
  v94 = a6;
  v96 = a7;
  v102 = 0;
  v103[0] = 0;
  v20 = GTMTLReplayController_createPostVertexPipeline(a1, a8, v19, v17, v103, &v102);
  v21 = v103[0];
  v22 = v102;
  v23 = v22;
  if (v20)
  {
    v95 = v20;
    v97 = v19;
    v93 = v22;
    v24 = [v21 postVertexDumpStride];
    v25 = [v18 contents];
    *v25 = 0;
    v92 = v24;
    v25[1] = ([v18 length] - 8) / v24;
    v26 = *(a4 + 24) + (*GroupBuilder_getCommandBuffer(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), v98) << 6);
    GTMTLReplayController_defaultDispatchFunction(a1, v26);
    v27 = *(GTTraceFunc_argumentBytesWithMap(v26, *(v26 + 13), *(a3 + 16)) + 1);
    if (GTFenum_isMTL4CommandBufferRelated(*(v26 + 8)))
    {
      v28 = [v16 mtl4CommandBufferForKey:v27];
      if (v28)
      {
        v86 = v25;
        v88 = v21;
        v29 = v28;
        v30 = objc_opt_new();
        v90 = v16;
        v31 = [v16 defaultDevice];
        v32 = [v31 newResidencySetWithDescriptor:v30 error:0];

        [v32 addAllocation:v18];
        [v32 commit];
        v84 = v29;
        v83 = v32;
        [v29 useResidencySet:v32];
        v33 = objc_alloc_init(MEMORY[0x277CD6BA8]);
        [v33 setRenderTargetWidth:*(a1 + 22544)];
        [v33 setRenderTargetHeight:*(a1 + 22552)];
        v34 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(a1 + 22544) height:*(a1 + 22552) mipmapped:0];
        [v34 setUsage:4];
        [v34 setStorageMode:2];
        if ([v97 supportsMemorylessRenderTargets])
        {
          [v34 setStorageMode:3];
        }

        v35 = [v97 newTextureWithDescriptor:v34];
        v36 = [v33 colorAttachments];
        v37 = [v36 objectAtIndexedSubscript:0];
        [v37 setTexture:v35];

        v38 = [v33 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];
        [v39 setLoadAction:0];

        v40 = [v33 colorAttachments];
        v41 = [v40 objectAtIndexedSubscript:0];
        [v41 setStoreAction:0];

        if ((GT_SUPPORT_0 & 0x40) != 0)
        {
          [v33 setDefaultRasterSampleCount:1];
        }

        CommandEncoder = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), v98);
        v43 = [v84 renderCommandEncoderWithDescriptor:v33];
        v44 = *(a4 + 24) + (*CommandEncoder << 6);
        v16 = v90;
        [v90 setMTL4RenderCommandEncoder:v43 forKey:{*(GTTraceFunc_argumentBytesWithMap(v44, *(v44 + 13), *(a3 + 16)) + 1)}];
        v45 = [v90 mtl4ArgumentTableForKey:*(v96 + 64)];
        [v45 setAddress:objc_msgSend(v18 atIndex:{"gpuAddress"), v17}];

        v46 = RestoreCommandEncoder();
        v47 = a11;
        if (v46)
        {
          [v43 setRenderPipelineState:v95];
          GTMTLReplayController_defaultDispatchFunction(a1, v94);
          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(a1, v98);
          [v90 commitCommandBuffers:a1 + 40];
          v48 = *(a1 + 40);
          v49 = atomic_load((a1 + 48));
          [v48 waitUntilSignaledValue:v49 - 1 timeoutMS:-1];
        }

        else
        {
          *a11 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);
        }

        v21 = v88;

        if (v46)
        {
          v67 = 0;
          v51 = v84;
          v25 = v86;
LABEL_34:

          v69 = *v25;
          if (v69 <= v25[1] || (v70 = v92 * v69 + 8, v70 >= MEMORY[0x253033EF0]() - 0x10000000))
          {
            v73 = [v21 postVertexDumpOutputs];
            v74 = (SaveObject(v92, v73, 0, 0) + 259) & 0xFFFFFFFFFFFFFF00;
            LODWORD(v75) = *v25;
            v76 = v25[1];
            if (*v25 >= v76)
            {
              v75 = v76;
            }

            else
            {
              v75 = v75;
            }

            v77 = v21;
            v78 = (v92 * v75 + 263) & 0xFFFFFFFFFFFFFF00;
            v19 = v97;
            v50 = [v97 newBufferWithLength:v78 + v74 options:0];
            v79 = [v50 contents];
            *v79 = v74;
            SaveObject(v92, v73, (v79 + 4), v74 - 4);
            v80 = [v18 contents];
            v81 = v78;
            v21 = v77;
            memcpy((v79 + v74), v80, v81);
          }

          else
          {
            v19 = v97;
            v71 = [v97 newBufferWithLength:v70 options:0];
            v72 = *(a10 + 96);
            *(a10 + 96) = v71;

            memcpy(__dst, a9, sizeof(__dst));
            v50 = GTMTLReplayController_generatePostVertexData(a1, v16, a3, a4, v98, v94, v96, a8, __dst, a10, v47);
          }

          v23 = v93;
          v20 = v95;
          goto LABEL_42;
        }

        v20 = v95;
        v23 = v93;
        v68 = v84;
        goto LABEL_31;
      }

      v67 = 0;
      v51 = 0;
    }

    else
    {
      v51 = [v16 commandBufferForKey:v27];
      if (v51)
      {
        v87 = v25;
        v89 = v21;
        v91 = v16;
        v52 = objc_alloc_init(MEMORY[0x277CD6F48]);
        [v52 setRenderTargetWidth:*(a1 + 22544)];
        [v52 setRenderTargetHeight:*(a1 + 22552)];
        v53 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:*(a1 + 22544) height:*(a1 + 22552) mipmapped:0];
        [v53 setStorageMode:2];
        [v53 setUsage:4];
        if ([v97 supportsMemorylessRenderTargets])
        {
          [v53 setStorageMode:3];
        }

        v54 = [v97 newTextureWithDescriptor:v53];
        [v52 colorAttachments];
        v55 = v85 = v52;
        v56 = [v55 objectAtIndexedSubscript:0];
        [v56 setTexture:v54];

        v57 = [v52 colorAttachments];
        v58 = [v57 objectAtIndexedSubscript:0];
        [v58 setLoadAction:0];

        v59 = [v52 colorAttachments];
        v60 = [v59 objectAtIndexedSubscript:0];
        [v60 setStoreAction:0];

        if ((GT_SUPPORT_0 & 0x40) != 0)
        {
          [v52 setDefaultRasterSampleCount:1];
        }

        v61 = GroupBuilder_getCommandEncoder(*(*(a3 + 120) + 12), *(*(a3 + 120) + 24), v98);
        v62 = [v51 renderCommandEncoderWithDescriptor:v52];
        v63 = *(a4 + 24) + (*v61 << 6);
        v16 = v91;
        [v91 setRenderCommandEncoder:v62 forKey:{*(GTTraceFunc_argumentBytesWithMap(v63, *(v63 + 13), *(a3 + 16)) + 1)}];
        v20 = v95;
        if (RestoreCommandEncoder())
        {
          if ((GT_SUPPORT_0 & 0x20) != 0)
          {
            LODWORD(v64) = 925353388;
            [v62 setTessellationFactorScale:v64];
          }

          [v62 setRenderPipelineState:v95];
          [v62 setVertexBuffer:v18 offset:0 atIndex:v17];
          v25 = v87;
          if (*(v94 + 8) >> 2 == 1073737833)
          {
            v65 = *(a9 + 360);
            v66 = [v91 executeIndirectCommandBufferMap];
            DYMTLDrawRenderCommandEncoder(v62, a9 + 40, v65, a9 + 256, v66);

            apr_pool_clear(*(a9 + 368));
          }

          else
          {
            GTMTLReplayController_defaultDispatchFunction(a1, v94);
          }

          v21 = v89;
          v47 = a11;
          GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(a1, v98);
          [v91 commitCommandBuffers];
          [v51 waitUntilCompleted];

          v67 = v51;
          v51 = 0;
          goto LABEL_34;
        }

        *a11 = GTPostVertexDataError(1u, @"Internal error: Encoder restore failed", 0, 0);

        v68 = 0;
        v21 = v89;
        v23 = v93;
LABEL_31:

        v50 = 0;
        v19 = v97;
        goto LABEL_42;
      }

      v67 = 0;
    }

    v47 = a11;
    goto LABEL_34;
  }

  GTPostVertexDataError(2u, @"Post-transform geometry data fetch pipeline error", 0, v22);
  *a11 = v50 = 0;
LABEL_42:

LABEL_43:

  return v50;
}

id GTMTLReplayController_createPostVertexPipeline(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a2[6];
  if (v12)
  {
    memcpy(__dst, v12, sizeof(__dst));
    for (i = 0; i != 16; i += 2)
    {
      v14 = &__dst[i];
      *(v14 + 372) = 0;
      *(v14 + 747) = 0;
    }

    WORD2(__dst[167]) = 0;
    LOWORD(__dst[169]) = 0;
    BYTE4(__dst[187]) = 0;
    LOWORD(__dst[93]) = 70;
    __dst[147] = 0;
    memset(&__dst[109], 0, 64);
    v15 = [*(a1 + 8) renderPipelineDescriptorMap];
    v16 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(__dst, v15);

    [v16 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
    [v16 setRasterizationEnabled:0];
    if ((GT_SUPPORT_0 & 0x20) != 0)
    {
      [v16 setTessellationPartitionMode:1];
      [v16 setMaxTessellationFactor:1];
      [v16 setTessellationFactorScaleEnabled:1];
    }

    [v16 setPostVertexDumpBufferIndex:a4];
    v34 = 0;
    v17 = [v11 newRenderPipelineStateWithDescriptor:v16 options:0x80000 reflection:a5 error:&v34];
    v18 = v34;
  }

  else
  {
    v20 = a2[11];
    if (v20)
    {
      if (v20[1016] == 2)
      {
        memcpy(__dst, v20, 0x3C8uLL);
        for (j = 0; j != 16; j += 2)
        {
          v22 = &__dst[j];
          *(v22 + 372) = 0;
          *(v22 + 747) = 0;
        }

        LOWORD(__dst[93]) = 70;
        BYTE4(__dst[120]) = 0;
        v23 = a2[12];
        if (v23)
        {
          v24 = [*(a1 + 8) dynamicLibraries];
          v23 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v23, v24);
        }

        v25 = [*(a1 + 8) libraries];
        v26 = MakeMTL4RenderPipelineDescriptor(__dst, v25);

        [v26 setLabel:@"GPUToolsInternalPostTransformPipelineStateLabel"];
        [v26 setFragmentFunctionDescriptor:0];
        v27 = [v26 options];

        if (!v27)
        {
          v28 = objc_opt_new();
          [v26 setOptions:v28];
        }

        v29 = [v26 options];
        [v29 setEnablePostVertexDump:1];

        v30 = [v26 options];
        [v30 setPostVertexDumpBufferIndex:a4];

        v31 = [*(a1 + 8) defaultCompiler];
        v33 = 0;
        v17 = [v31 newRenderPipelineStateWithDescriptor:v26 dynamicLinkingDescriptor:v23 compilerTaskOptions:0 error:&v33];
        v32 = v33;

        if (a5)
        {
          *a5 = [v17 reflection];
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      GTPostVertexDataError(1u, @"Internal error: Pipeline descriptor error", 0, 0);
      *a6 = v17 = 0;
    }
  }

  return v17;
}

uint64_t RestoreCommandEncoder()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v13[1389] = *MEMORY[0x277D85DE8];
  v5 = v0;
  v6 = *(v2 + 8);
  v7 = *(v4 + 11168);
  if (v7 == 98)
  {
    memcpy(v13, (v4 + 56), 0x758uLL);
    v13[7] = 0;
    v13[170] = 0;
    LOBYTE(v13[234]) = 0;
    LODWORD(v13[233]) = 0;
    GTMTLReplayController_restoreDefaultRenderCommandEncoder4(v5, *(v2 + 22544), *(v2 + 22552), v13, v6);
  }

  else
  {
    if (v7 != 70)
    {
      v10 = 0;
      goto LABEL_7;
    }

    memcpy(v13, (v4 + 56), 0x2B68uLL);
    v13[1068] = 0;
    v13[1231] = 0;
    BYTE5(v13[1387]) = 0;
    HIDWORD(v13[1386]) = 0;
    v8 = *(v2 + 22544);
    v9 = *(v2 + 22552);
    GTMTLReplayController_restoreDefaultRenderCommandEncoder();
  }

  v10 = 1;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t SaveObject(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  v28 = a3;
  v30 = a4;
  if (a4 >= 8 && (*a3 = 115, a4 > 0xF))
  {
    a3[1] = a1;
    v23 = [v7 count];
    if (a4 >= 0x18)
    {
      a3[2] = v23;
    }
  }

  else
  {
    [v7 count];
  }

  v9 = 24;
  v29 = 24;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 airMDType];
        WriteDynamicBufferString(&v28, [v16 UTF8String]);

        v17 = [v15 dataType];
        v18 = v29 + 8;
        if (v29 + 8 <= v30)
        {
          *(v28 + v29) = v17;
        }

        v29 = v18;
        v19 = [v15 name];
        WriteDynamicBufferString(&v28, [v19 UTF8String]);

        v20 = [v15 offset];
        v9 = v29 + 8;
        if (v29 + 8 <= v30)
        {
          *(v28 + v29) = v20;
        }

        v29 = v9;
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

void WriteDynamicBufferString(void *a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  v5 = v4 + 1;
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + v4 + 1;
  if (v8 <= v6)
  {
    memcpy((*a1 + v7), v3, v5);
    v6 = a1[2];
    v8 = a1[1] + v5;
  }

  a1[1] = v8;
  v9 = (v4 & 0xFFFFFFFFFFFFFFF8) + ~v4;
  v10 = v9 + 8;
  v11 = v6 > v8;
  v12 = v6 - v8;
  if (v11)
  {
    if (v12 >= v10)
    {
      v13 = v9 + 8;
    }

    else
    {
      v13 = v12;
    }

    bzero((*a1 + v8), v13);
    v8 = a1[1];
  }

  a1[1] = v8 + v10;
}

uint64_t SaveObjectStruct(uint64_t a1, void *a2, void *a3, void *a4, unint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v46 = a4;
  v48 = a5;
  if (a5 >= 8)
  {
    *a4 = 115;
    if (a5 >= 0x10)
    {
      a4[1] = a1;
    }
  }

  v11 = [v9 members];
  v12 = [v11 count];
  if (a5 >= 0x18)
  {
    a4[2] = v12;
  }

  v13 = 24;
  v47 = 24;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v9 members];
  v40 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v40)
  {
    v36 = v9;
    v37 = v10;
    v39 = *v43;
    v14 = obj;
    while (1)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(v14);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [v16 name];
        v18 = [v17 componentsSeparatedByString:@"/"];
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = &stru_2860BD438;
        if ([v18 count] >= 2)
        {
          v20 = [v18 objectAtIndexedSubscript:1];
        }

        v41 = v17;
        if (-[__CFString length](v20, "length") || [v19 isEqualToString:@"air.position"])
        {
          v21 = [v10 objectForKeyedSubscript:v20];
          if ([v16 dataType] != 2)
          {
            if (v21)
            {
              v24 = [v21 unsignedIntegerValue];
            }

            else
            {
LABEL_33:
              v24 = [v16 dataType];
              v21 = 0;
            }

LABEL_34:
            WriteDynamicBufferString(&v46, [v19 UTF8String]);
            v31 = v47 + 8;
            if (v47 + 8 <= v48)
            {
              *(v46 + v47) = v24;
            }

            v47 = v31;
            WriteDynamicBufferString(&v46, [(__CFString *)v20 UTF8String]);
            v32 = [v16 offset];
            v33 = v47 + 8;
            if (v47 + 8 <= v48)
            {
              *(v46 + v47) = v32;
            }

            v23 = 0;
            v47 = v33;
            goto LABEL_39;
          }
        }

        else
        {
          if ([v16 dataType] != 2)
          {
            goto LABEL_33;
          }

          v21 = 0;
        }

        v22 = [v16 arrayType];
        v23 = v22;
        if (v21)
        {
          v24 = [v21 unsignedIntegerValue];
          if (!v23)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_33;
          }

          v24 = [v22 elementType];
        }

        if ([v23 arrayLength])
        {
          v25 = 0;
          do
          {
            WriteDynamicBufferString(&v46, [v19 UTF8String]);
            v26 = v47 + 8;
            if (v47 + 8 <= v48)
            {
              *(v46 + v47) = v24;
            }

            v47 = v26;
            v27 = [(__CFString *)v20 stringByAppendingFormat:@"[%lu]", v25];
            WriteDynamicBufferString(&v46, [v27 UTF8String]);

            v28 = [v16 offset];
            v29 = [v23 stride];
            v30 = v47 + 8;
            if (v47 + 8 <= v48)
            {
              *(v46 + v47) = v28 + v29 * v25;
            }

            v47 = v30;
            ++v25;
          }

          while (v25 < [v23 arrayLength]);
          v10 = v37;
          v14 = obj;
        }

LABEL_39:
      }

      v40 = [v14 countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (!v40)
      {
        v13 = v47;
        v9 = v36;
        break;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v13;
}

id getRenderPipelineBinaries(void *a1)
{
  v1 = DEVICEOBJECT(a1);
  if (qword_27F09CF90 & 0x200) != 0 && (objc_opt_respondsToSelector())
  {
    v2 = [v1 pipelineBinaries];
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  return v2;
}

void GTMTLReplayController_dispatchForUSCSampling(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v26 = a3;
  v11 = a5;
  if ((qword_27F09CF90 & 0x200) == 0)
  {
    goto LABEL_2;
  }

  v12 = *(a2 + 8);
  if (v12 <= -16286)
  {
    if (v12 != -16337)
    {
      if (v12 == -16325)
      {
        v19 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
        v14 = [v26 computeCommandEncoderForKey:*v19];
        v15 = [v14 endEncodingAndRetrieveProgramAddressTable];
        [v11 addProgramAddressTable:v15 forEncoder:objc_msgSend(v26 atEncoderIndex:{"globalTraceIdForEncoder:ofType:", *v19, 0), a6}];
        [v26 removeComputeCommandEncoderForKey:*v19];
LABEL_13:

        goto LABEL_16;
      }

      goto LABEL_2;
    }

    v22 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
    v23 = [v26 computeCommandEncoderForKey:*v22];
    v24 = [v26 computePipelineStateForKey:*(v22 + 1)];
    GTMTLReplayController_defaultDispatchFunction(a1, a2);
    v25 = getRenderPipelineBinaries(v24);
    [v11 addBinaries:v25];
  }

  else
  {
    if (v12 == -16285)
    {
      v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
      v14 = [v26 parallelRenderCommandEncoderForKey:*v13];
      v15 = [v14 endEncodingAndRetrieveProgramAddressTable];
      v16 = *v13;
      v17 = v26;
      v18 = 1;
      goto LABEL_12;
    }

    if (v12 != -16279)
    {
      if (v12 == -16246)
      {
        v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4);
        v14 = [v26 renderCommandEncoderForKey:*v13];
        v15 = [v14 endEncodingAndRetrieveProgramAddressTable];
        v16 = *v13;
        v17 = v26;
        v18 = 0;
LABEL_12:
        [v11 addProgramAddressTable:v15 forEncoder:objc_msgSend(v17 atEncoderIndex:{"globalTraceIdForEncoder:ofType:", v16, v18), a6}];
        [v26 removeRenderCommandEncoderForKey:*v13];
        goto LABEL_13;
      }

LABEL_2:
      GTMTLReplayController_defaultDispatchFunction(a1, a2);
      goto LABEL_16;
    }

    v20 = [v26 renderPipelineStateForKey:{*(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a4) + 1)}];
    v21 = getRenderPipelineBinaries(v20);
    [v11 addBinaries:v21];

    GTMTLReplayController_defaultDispatchFunction(a1, a2);
  }

LABEL_16:
}

id GTShaderProfilerAnalyzeBinaryLLVM(void *a1, uint64_t a2, void *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v40 = a3;
  v39 = v5;
  if (a2 <= 0x7FFFFFFE)
  {
    if (GTShaderProfilerAnalyzeBinaryLLVM(NSData *,int,objc_object  {objcproto26GTShaderProfilerISAPrinter}*)::onceToken != -1)
    {
      dispatch_once(&GTShaderProfilerAnalyzeBinaryLLVM(NSData *,int,objc_object  {objcproto26GTShaderProfilerISAPrinter}*)::onceToken, &__block_literal_global_5461);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    memset(v44, 0, sizeof(v44));
    v43 = 0u;
    v6 = v5;
    v38 = v6;
    [v38 bytes];
    [v6 length];
    v67[4] = 257;
    llvm::MemoryBuffer::getMemBufferCopy();
    llvm::MemoryBuffer::getMemBufferRef(&v66, v65);
    llvm::object::createBinary();
    if (v77)
    {
      v7 = 0;
    }

    else
    {
      v8 = v76;
      v76 = 0;
      v9 = v65;
      v65 = 0;
      v10 = v43;
      *&v43 = v8;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      v11 = *(&v43 + 1);
      *(&v43 + 1) = v9;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      std::string::basic_string[abi:nn200100]<0>(&v64, "g");
      std::to_string(&v66, a2 + 10);
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v66;
      }

      else
      {
        v12 = v66.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v66.__r_.__value_.__l.__size_;
      }

      std::string::append(&v64, v12, size);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      v14 = v43;
      if ((*(v43 + 8) - 9) >= 0xF)
      {
        v14 = 0;
      }

      v42 = v14;
      if (v14)
      {
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        llvm::Triple::setArch();
        (*(*v42 + 384))(&v66);
        llvm::SubtargetFeatures::getString(v62, &v66);
        v49.__r_.__value_.__r.__words[0] = &v66;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v49);
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v15 = llvm::TargetRegistry::lookupTarget();
        v41 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        v16 = *(v15 + 288);
        if (v16)
        {
          v16();
          v15 = v41;
        }

        v17 = *(v15 + 80);
        if (v17)
        {
          v18 = BYTE7(v74);
          if (SBYTE7(v74) < 0)
          {
            v18 = *(&v73 + 1);
          }

          v19 = &v73;
          if (SBYTE7(v74) < 0)
          {
            v19 = v73;
          }

          LOWORD(v50) = 261;
          v49.__r_.__value_.__r.__words[0] = v19;
          v49.__r_.__value_.__l.__size_ = v18;
          MEMORY[0x253032E50](&v66, &v49);
          v17 = v17(&v66);
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }
        }

        std::unique_ptr<llvm::MCRegisterInfo const>::reset[abi:nn200100](v44, v17);
        if (*&v44[0])
        {
          llvm::MCTargetOptions::MCTargetOptions(&v49);
          v20 = *(v41 + 48);
          if (v20)
          {
            v21 = *&v44[0];
            v22 = BYTE7(v74);
            if (SBYTE7(v74) < 0)
            {
              v22 = *(&v73 + 1);
            }

            v23 = &v73;
            if (SBYTE7(v74) < 0)
            {
              v23 = v73;
            }

            v80 = 261;
            v78 = v23;
            v79 = v22;
            MEMORY[0x253032E50](&v66, &v78);
            v24 = v20(v21, &v66, &v49);
            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = *(&v44[0] + 1);
          *(&v44[0] + 1) = v24;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v64;
          }

          else
          {
            v26 = v64.__r_.__value_.__r.__words[0];
          }

          if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v64.__r_.__value_.__l.__size_;
          }

          if (v63 >= 0)
          {
            v28 = v62;
          }

          else
          {
            v28 = v62[0];
          }

          if (v63 >= 0)
          {
            v29 = v63;
          }

          else
          {
            v29 = v62[1];
          }

          v30 = *(v41 + 88);
          if (v30)
          {
            v31 = BYTE7(v74);
            if (SBYTE7(v74) < 0)
            {
              v31 = *(&v73 + 1);
            }

            v32 = &v73;
            if (SBYTE7(v74) < 0)
            {
              v32 = v73;
            }

            v80 = 261;
            v78 = v32;
            v79 = v31;
            MEMORY[0x253032E50](&v66, &v78);
            v33 = v30(&v66, v26, v27, v28, v29);
            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v33 = 0;
          }

          v34 = v45;
          *&v45 = v33;
          if (v34)
          {
            (*(*v34 + 8))(v34);
          }

          v7 = BYTE8(v44[0]);
          if (*(&v44[0] + 1))
          {
            if (v45)
            {
              v71 = 0;
              v72 = 0u;
              *&v66.__r_.__value_.__l.__data_ = (MEMORY[0x277D821E0] + 16);
              LODWORD(v66.__r_.__value_.__r.__words[2]) = 0;
              bzero(v67, 0x329uLL);
              v68 = 0u;
              v70 = 0;
              v69 = 0;
              operator new();
            }

            v7 = 0;
          }

          v66.__r_.__value_.__r.__words[0] = &v58;
          std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v66);
          if (v57 < 0)
          {
            operator delete(v56);
          }

          if (v55 < 0)
          {
            operator delete(v54);
          }

          if (v53 < 0)
          {
            operator delete(v52);
          }

          if (v51 < 0)
          {
            operator delete(v49.__r_.__value_.__r.__words[2]);
          }
        }

        else
        {
LABEL_39:
          v7 = 0;
        }

        if (SHIBYTE(v61) < 0)
        {
          operator delete(v59);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }

        if (SBYTE7(v74) < 0)
        {
          operator delete(v73);
        }
      }

      else
      {
        v7 = 0;
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }
    }

    llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v76);
    v35 = v65;
    v65 = 0;
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    if (v7)
    {
      if (([v40 setupBinary:v38 targetIndex:a2] & 1) == 0)
      {
      }

      operator new();
    }

    GTShaderProfilerLLVMContext::~GTShaderProfilerLLVMContext(&v41);
  }

  v36 = *MEMORY[0x277D85DE8];

  return 0;
}

void sub_24D94ADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(llvm::Error)>::~__value_func[abi:nn200100](&STACK[0x240]);
  std::__function::__value_func<void ()(llvm::Error)>::~__value_func[abi:nn200100](v74 - 160);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  llvm::MCObjectFileInfo::~MCObjectFileInfo(&STACK[0x260]);
  llvm::MCTargetOptions::~MCTargetOptions(&a52);
  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a74);
  }

  if (*(v74 - 201) < 0)
  {
    operator delete(*(v74 - 224));
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected((v74 - 176));
  v76 = STACK[0x238];
  STACK[0x238] = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  GTShaderProfilerLLVMContext::~GTShaderProfilerLLVMContext(&a29);
  _Unwind_Resume(a1);
}

void GTShaderProfilerLLVMContext::~GTShaderProfilerLLVMContext(GTShaderProfilerLLVMContext *this)
{
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](this + 12, 0);
  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    MEMORY[0x2530332C0](v10, 0x10F0C40CB53E019);
  }

  v11 = *(this + 5);
  *(this + 5) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  std::unique_ptr<llvm::MCRegisterInfo const>::reset[abi:nn200100](this + 4, 0);
  v12 = *(this + 3);
  *(this + 3) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 2);
  *(this + 2) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }
}

uint64_t std::unique_ptr<llvm::MCContext>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x253032EC0]();

    JUMPOUT(0x2530332C0);
  }

  return result;
}

uint64_t *std::unique_ptr<llvm::MCRegisterInfo const>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    llvm::deallocate_buffer(*(v2 + 184), (8 * *(v2 + 200)));
    llvm::deallocate_buffer(*(v2 + 160), (8 * *(v2 + 176)));

    JUMPOUT(0x2530332C0);
  }

  return result;
}

uint64_t GTShaderProfilerLLVMTargetClauseAnalysis::addString(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = v7;
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v7;
      if (v7 >= *&v8)
      {
        v12 = v7 % *&v8;
      }
    }

    else
    {
      v12 = (*&v8 - 1) & v7;
    }

    v13 = *(*(a1 + 160) + 8 * v12);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == v9)
        {
          if (std::equal_to<std::string>::operator()[abi:nn200100](i + 2, a2))
          {
            return *(i + 10);
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v15 >= *&v8)
            {
              v15 %= *&v8;
            }
          }

          else
          {
            v15 &= *&v8 - 1;
          }

          if (v15 != v12)
          {
            break;
          }
        }
      }
    }
  }

  v17 = *(a1 + 136);
  v18 = *(a1 + 144);
  v16 = (a1 + 136);
  v19 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v20 = v19;
  if (!*&v8)
  {
    goto LABEL_40;
  }

  v21 = vcnt_s8(v8);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = v19;
    if (v19 >= *&v8)
    {
      v23 = v19 % *&v8;
    }
  }

  else
  {
    v23 = (*&v8 - 1) & v19;
  }

  v24 = *(*(a1 + 160) + 8 * v23);
  if (!v24 || (v25 = *v24) == 0)
  {
LABEL_40:
    operator new();
  }

  while (1)
  {
    v26 = v25[1];
    if (v26 == v20)
    {
      break;
    }

    if (v22 > 1)
    {
      if (v26 >= *&v8)
      {
        v26 %= *&v8;
      }
    }

    else
    {
      v26 &= *&v8 - 1;
    }

    if (v26 != v23)
    {
      goto LABEL_40;
    }

LABEL_39:
    v25 = *v25;
    if (!v25)
    {
      goto LABEL_40;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v25 + 2, a2))
  {
    goto LABEL_39;
  }

  v44 = -1431655765 * ((v18 - v17) >> 3);
  *(v25 + 10) = v44;
  v27 = *(a1 + 152);
  if (v18 >= v27)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v16) >> 3);
    if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v16) >> 3);
    v31 = 2 * v30;
    if (2 * v30 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    if (v30 >= 0x555555555555555)
    {
      v32 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v32 = v31;
    }

    v45.__end_cap_.__value_ = (a1 + 136);
    if (v32)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v32);
    }

    begin = (24 * v29);
    v45.__first_ = 0;
    v45.__begin_ = begin;
    value = 0;
    v45.__end_ = begin;
    v45.__end_cap_.__value_ = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
      begin = v45.__begin_;
      end = v45.__end_;
      value = v45.__end_cap_.__value_;
    }

    else
    {
      v36 = *a2;
      begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&begin->__r_.__value_.__l.__data_ = v36;
      end = begin;
    }

    v33 = end + 1;
    v38 = *(a1 + 136);
    v39 = *(a1 + 144) - v38;
    v40 = begin - v39;
    memcpy(begin - v39, v38, v39);
    v41 = *(a1 + 136);
    *(a1 + 136) = v40;
    *(a1 + 144) = v33;
    v42 = *(a1 + 152);
    *(a1 + 152) = value;
    v45.__end_ = v41;
    v45.__end_cap_.__value_ = v42;
    v45.__first_ = v41;
    v45.__begin_ = v41;
    std::__split_buffer<std::string>::~__split_buffer(&v45);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *a2, *(a2 + 1));
    }

    else
    {
      v28 = *a2;
      v18->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v18->__r_.__value_.__l.__data_ = v28;
    }

    v33 = v18 + 1;
    *(a1 + 144) = v18 + 1;
  }

  *(a1 + 144) = v33;
  return v44;
}

void std::vector<GTShaderProfilerDebugBinaryLocation>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::vector<GTShaderProfilerDebugBinaryRange>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerDebugBinaryRange>>(v10);
    }

    v11 = 28 * v7;
    v12 = *a2;
    *(v11 + 12) = *(a2 + 12);
    *v11 = v12;
    v6 = 28 * v7 + 28;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 12) = *(a2 + 12);
    *v4 = v5;
    v6 = v4 + 28;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerDebugBinaryRange>>(unint64_t a1)
{
  if (a1 < 0x924924924924925)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerShaderTargetClause>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::agxclauseanalyzer::InstrStream>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t llvm::Expected<std::vector<llvm::iterator_range<llvm::agxclauseanalyzer::AnalyzerInput::InstIteratorImpl<llvm::agxclauseanalyzer::AnalyzerInput const>>>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<llvm::Error>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *llvm::agxclauseanalyzer::AnalyzerInput::InstIteratorImpl<llvm::agxclauseanalyzer::AnalyzerInput>::operator++(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  (*(**a1 + 24))(&v6);
  v3 = v6;
  if (v7)
  {
    ++a1[1];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else
  {
    a1[1] += *(v6 + 16);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerShaderInstructionInfo>>(unint64_t a1)
{
  if (a1 < 0x71C71C71C71C71DLL)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::agxclauseanalyzer::AnalyzerInput>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Error)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void llvm::MCTargetOptions::~MCTargetOptions(void **this)
{
  v2 = this + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__function::__func<void (*)(llvm::Error),std::allocator<void (*)(llvm::Error)>,void ()(llvm::Error)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  *a2 = 0;
  v2(&v4);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void sub_24D94C4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<void (*)(llvm::Error),std::allocator<void (*)(llvm::Error)>,void ()(llvm::Error)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2860BC288;
  a2[1] = v2;
  return result;
}

uint64_t ___Z33GTShaderProfilerAnalyzeBinaryLLVMP6NSDataiPU37objcproto26GTShaderProfilerISAPrinter11objc_object_block_invoke()
{
  LLVMInitializeAGX2TargetInfo();
  LLVMInitializeAGX2TargetMC();
  v0 = LLVMInitializeAGX2Disassembler();

  return MEMORY[0x2821F1740](v0);
}

uint64_t AddResourceRestoreRequest(apr_array_header_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  v7 = *(a2 + 24);
  v8 = *(a3 + 4);
  if (v8 <= -10238)
  {
    if (v8 > -14804)
    {
      if (v8 == -14803)
      {
        goto LABEL_28;
      }

      if (v8 == -10240)
      {
        v60 = a3 + 36;
        *&v115[8] = *(a3 + 56);
        v119[0] = 28;
        appended = AppendString_13794(&v115[16], a3 + 36, v119);
        *&v115[24] = *(v60 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
        AliasStream = GetAliasStream(v7, *&v115[8], a4);
        if (AliasStream)
        {
          v63 = *AliasStream;
        }

        else
        {
          v63 = 0;
        }

        v98 = apr_pstrdup(a1->pool, appended);
        v99 = GetAliasStream(v7, *&v115[8], a4);
        if (GTFenum_getConstructorType(*(*(v99 + 32) + 72)) == 50)
        {
          v100 = 50;
        }

        else
        {
          v100 = 22;
        }

        v101 = apr_array_push(a1);
        v101[3] = v98;
        v102 = *&v115[24];
        *v101 = v100;
        v101[1] = v63;
        v101[2] = a4;
        *(v101 + 2) = v102;
        *(v101 + 3) = 0u;
        *(v101 + 4) = 0u;
        *(v101 + 5) = 0u;
        *(v101 + 6) = 0u;
        *(v101 + 7) = 0u;
        *(v101 + 8) = 0u;
        *(v101 + 9) = 0u;
        *(v101 + 10) = 0u;
        *(v101 + 11) = 0u;
        *(v101 + 12) = 0u;
        *(v101 + 13) = 0u;
        *(v101 + 14) = 0u;
        *(v101 + 15) = 0u;
        *(v101 + 16) = 0u;
        *(v101 + 17) = 0u;
        *(v101 + 18) = 0u;
        *(v101 + 19) = 0u;
        *(v101 + 20) = 0u;
        *(v101 + 21) = 0u;
        *(v101 + 22) = 0u;
        *(v101 + 23) = 0u;
        *(v101 + 24) = 0u;
        *(v101 + 25) = 0u;
        result = 1;
        *(v101 + 26) = 0u;
        *(v101 + 27) = 0u;
        return result;
      }

      if (v8 != -10238)
      {
        return result;
      }
    }

    else
    {
      if (v8 == -16313)
      {
        goto LABEL_30;
      }

      if (v8 != -16236)
      {
        if (v8 == -16234)
        {
          memset(v115, 0, 80);
          DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_withBytes_bytesPerRow(v115, a3, (*a3 - 36), 0);
          v14 = GetAliasStream(v7, *v115, a4);
          if (v14)
          {
            v15 = *v14;
          }

          else
          {
            v15 = 0;
          }

          v106 = apr_pstrdup(a1->pool, *&v115[64]);
          v107 = apr_array_push(a1);
          v108 = *&v115[40];
          v109 = *&v115[48];
          v110 = *&v115[72];
          *(v107 + 3) = v106;
          v111 = vmovn_s32(vuzp1q_s32(*&v115[8], *&v115[24]));
          *v107 = 80;
          *(v107 + 1) = v15;
          *(v107 + 2) = a4;
          *(v107 + 16) = 0;
          *(v107 + 17) = WORD4(v109);
          *(v107 + 36) = v111;
          *(v107 + 22) = v108;
          *(v107 + 23) = v109;
          *(v107 + 12) = v110;
          *(v107 + 68) = 0u;
          *(v107 + 84) = 0u;
          *(v107 + 100) = 0u;
          *(v107 + 116) = 0u;
          *(v107 + 132) = 0u;
          *(v107 + 148) = 0u;
          *(v107 + 164) = 0u;
          *(v107 + 180) = 0u;
          *(v107 + 196) = 0u;
          *(v107 + 212) = 0u;
          *(v107 + 228) = 0u;
          *(v107 + 244) = 0u;
          *(v107 + 27) = 0u;
          *(v107 + 52) = 0u;
          v112 = v107 + 52;
          *(v107 + 260) = 0u;
          *(v107 + 276) = 0u;
          *(v107 + 292) = 0u;
          *(v107 + 308) = 0u;
          *(v107 + 324) = 0u;
          *(v107 + 340) = 0u;
          *(v107 + 356) = 0u;
          *(v107 + 372) = 0u;
          *(v107 + 388) = 0u;
          *(v107 + 404) = 0u;
          result = 1;
          *(v112 + 23) = 0u;
        }

        return result;
      }
    }

LABEL_24:
    memset(v115, 0, 104);
    DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v115, a3, (*a3 - 36), 0);
    v22 = GetAliasStream(v7, *v115, a4);
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    v39 = apr_pstrdup(a1->pool, *&v115[72]);
    v40 = apr_array_push(a1);
    v42 = *&v115[56];
    v41 = *&v115[64];
    v43 = *&v115[40];
    v44 = *&v115[48];
    v45 = *&v115[96];
    *(v40 + 3) = v39;
    v46 = vmovn_s64(*&v115[80]);
    v47 = vmovn_s32(vuzp1q_s32(*&v115[8], *&v115[24]));
    *v40 = 80;
    *(v40 + 1) = v23;
    *(v40 + 2) = a4;
    *(v40 + 16) = v41;
    *(v40 + 17) = v42;
    *(v40 + 36) = v47;
    *(v40 + 22) = v43;
    *(v40 + 23) = v44;
    *(v40 + 6) = v46;
    *(v40 + 14) = v45;
    *(v40 + 60) = 0u;
    v48 = v40 + 60;
    *(v40 + 111) = 0;
    *(v40 + 412) = 0u;
    *(v40 + 428) = 0u;
    *(v40 + 380) = 0u;
    *(v40 + 396) = 0u;
    *(v40 + 348) = 0u;
    *(v40 + 364) = 0u;
    *(v40 + 316) = 0u;
    *(v40 + 332) = 0u;
    *(v40 + 284) = 0u;
    *(v40 + 300) = 0u;
    *(v40 + 252) = 0u;
    *(v40 + 268) = 0u;
    *(v40 + 220) = 0u;
    *(v40 + 236) = 0u;
    *(v40 + 188) = 0u;
    *(v40 + 204) = 0u;
    *(v40 + 156) = 0u;
    *(v40 + 172) = 0u;
    *(v40 + 124) = 0u;
    *(v40 + 140) = 0u;
    *(v40 + 92) = 0u;
    *(v40 + 108) = 0u;
    result = 1;
    *(v48 + 1) = 0u;
    return result;
  }

  if (v8 <= -10220)
  {
    if (v8 != -10237)
    {
      if (v8 != -10236)
      {
        if (v8 != -10232)
        {
          return result;
        }

        v16 = a3 + 36;
        v17 = strcmp((a3 + 36), "CUulul");
        v18 = 12;
        if (!v17)
        {
          v18 = 8;
        }

        *v115 = *(v16 + v18);
        v119[0] = v18 + 8;
        v19 = AppendString_13794(&v115[8], v16, v119);
        *&v115[16] = *(v16 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
        v20 = GetAliasStream(v7, *v115, a4);
        if (v20)
        {
          v21 = *v20;
        }

        else
        {
          v21 = 0;
        }

        v103 = apr_pstrdup(a1->pool, v19);
        v96 = apr_array_push(a1);
        v97 = v96;
        *(v96 + 3) = v103;
        v104 = vmovn_s64(*&v115[16]);
        *v96 = 86;
        *(v96 + 1) = v21;
        *(v96 + 2) = a4;
        *(v96 + 4) = v104;
        goto LABEL_70;
      }

      goto LABEL_24;
    }

LABEL_30:
    memset(v115, 0, 48);
    DYTraceDecode_MTLDevice_newBufferWithBytes_length_options(v115, a3, (*a3 - 36), 0);
    v37 = GetAliasStream(v7, *&v115[8], a4);
    if (v37)
    {
      v38 = *v37;
    }

    else
    {
      v38 = 0;
    }

    v64 = apr_pstrdup(a1->pool, *&v115[16]);
    v65 = apr_array_push(a1);
    v66 = *&v115[24];
    *v65 = 22;
    v65[1] = v38;
    v65[2] = a4;
    v65[3] = v64;
    v65[4] = 0;
    v65[5] = v66;
    *(v65 + 3) = 0u;
    *(v65 + 4) = 0u;
    *(v65 + 5) = 0u;
    *(v65 + 6) = 0u;
    *(v65 + 7) = 0u;
    *(v65 + 8) = 0u;
    *(v65 + 9) = 0u;
    *(v65 + 10) = 0u;
    *(v65 + 11) = 0u;
    *(v65 + 12) = 0u;
    *(v65 + 13) = 0u;
    *(v65 + 14) = 0u;
    *(v65 + 15) = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 17) = 0u;
    *(v65 + 18) = 0u;
    *(v65 + 19) = 0u;
    *(v65 + 20) = 0u;
    *(v65 + 21) = 0u;
    *(v65 + 22) = 0u;
    *(v65 + 23) = 0u;
    *(v65 + 24) = 0u;
    *(v65 + 25) = 0u;
    *(v65 + 26) = 0u;
    result = 1;
    *(v65 + 27) = 0u;
    return result;
  }

  if (v8 > -10191)
  {
    if (v8 == -10190)
    {
      v53 = a3 + 36;
      *v115 = *(a3 + 52);
      v119[0] = 24;
      v54 = AppendString_13794(&v115[8], a3 + 36, v119);
      v55 = (v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v56 = *(v53 + v55);
      *&v115[8] = v54;
      *&v115[16] = v56;
      v119[0] = v55 + 8;
      v57 = AppendString_13794(&v115[24], v53, v119);
      v58 = *(v53 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
      v59 = GetAliasStream(v7, *v115, a4);
      if (v59)
      {
        v114 = *v59;
      }

      else
      {
        v114 = 0;
      }

      v113 = apr_pstrdup(a1->pool, *&v115[8]);
      v79 = *a2;
      v80 = *(a2 + 8);
      v81 = *v80;
      Data = GTCaptureArchive_readData(v79, v80, v57, *v80, 0);
      if (v58)
      {
        LODWORD(v84) = v58;
      }

      else
      {
        v84 = v82 >> 3;
      }

      v85 = apr_palloc(a1->pool, 8 * v84);
      v86 = v85;
      if (v84)
      {
        v87 = 0;
        v88 = v84;
        v89 = v85;
        do
        {
          v90 = *Data;
          Data += 8;
          v91 = GetAliasStream(v7, v90, a4);
          if (v91)
          {
            v92 = *v91;
          }

          else
          {
            v92 = 0;
          }

          *v89++ = v92;
          v87 |= v92 == 0;
          --v88;
        }

        while (v88);
        apr_pool_clear(v81);
        if (v87)
        {
          return 1;
        }
      }

      else
      {
        apr_pool_clear(v81);
      }

      v93 = apr_array_push(a1);
      v94 = *&v115[16];
      *v93 = 16;
      *(v93 + 1) = v114;
      *(v93 + 2) = a4;
      *(v93 + 3) = v113;
      *(v93 + 4) = v94;
      *(v93 + 5) = v86;
      *(v93 + 12) = v84;
      *(v93 + 68) = 0u;
      *(v93 + 84) = 0u;
      *(v93 + 100) = 0u;
      *(v93 + 116) = 0u;
      *(v93 + 132) = 0u;
      *(v93 + 148) = 0u;
      *(v93 + 164) = 0u;
      *(v93 + 180) = 0u;
      *(v93 + 196) = 0u;
      *(v93 + 212) = 0u;
      *(v93 + 228) = 0u;
      *(v93 + 244) = 0u;
      *(v93 + 27) = 0u;
      *(v93 + 52) = 0u;
      v93 += 52;
      *(v93 + 13) = 0u;
      *(v93 + 14) = 0u;
      *(v93 + 15) = 0u;
      *(v93 + 16) = 0u;
      *(v93 + 17) = 0u;
      *(v93 + 18) = 0u;
      *(v93 + 19) = 0u;
      *(v93 + 20) = 0u;
      *(v93 + 21) = 0u;
      *(v93 + 22) = 0u;
      *(v93 + 23) = 0u;
      return 1;
    }

    if (v8 != -10142)
    {
      return result;
    }

LABEL_28:
    v24 = a3 + 36;
    *v115 = *(a3 + 60);
    *&v115[88] = *(a3 + 148);
    *&v115[104] = *(a3 + 164);
    *&v115[120] = *(a3 + 180);
    *&v115[136] = *(a3 + 196);
    *&v115[24] = *(a3 + 84);
    *&v115[40] = *(a3 + 100);
    *&v115[56] = *(a3 + 116);
    *&v115[72] = *(a3 + 132);
    *&v115[8] = *(a3 + 68);
    v25 = *(a3 + 316);
    *&v116[96] = *(a3 + 300);
    *&v116[112] = v25;
    *&v116[128] = *(a3 + 332);
    v26 = *(a3 + 220);
    v27 = *(a3 + 252);
    *&v116[32] = *(a3 + 236);
    *&v116[48] = v27;
    v28 = *(a3 + 284);
    *&v116[64] = *(a3 + 268);
    *&v116[80] = v28;
    *v116 = *(a3 + 204);
    *&v116[16] = v26;
    v119[0] = 304;
    v29 = AppendString_13794(&v117, a3 + 36, v119);
    v30 = v24 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v31 = *(v30 + 112);
    *&v118[96] = *(v30 + 96);
    *&v118[112] = v31;
    *&v118[128] = *(v30 + 128);
    v32 = *(v30 + 48);
    *&v118[32] = *(v30 + 32);
    *&v118[48] = v32;
    v33 = *(v30 + 80);
    *&v118[64] = *(v30 + 64);
    *&v118[80] = v33;
    v34 = *(v30 + 16);
    *v118 = *v30;
    *&v118[16] = v34;
    v35 = GetAliasStream(v7, *v115, a4);
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    v67 = apr_pstrdup(a1->pool, v29);
    v68 = *&v115[8];
    v69 = *v116;
    v70 = apr_array_push(a1);
    v71 = *v118;
    *v70 = 101;
    *(v70 + 1) = v36;
    *(v70 + 2) = a4;
    *(v70 + 3) = v67;
    *(v70 + 4) = v68;
    v72 = *&v115[16];
    *(v70 + 104) = *&v115[80];
    *(v70 + 120) = *&v115[96];
    *(v70 + 136) = *&v115[112];
    *(v70 + 152) = *&v115[128];
    *(v70 + 40) = v72;
    *(v70 + 56) = *&v115[32];
    *(v70 + 72) = *&v115[48];
    *(v70 + 88) = *&v115[64];
    *(v70 + 21) = v69;
    *(v70 + 15) = *&v116[72];
    *(v70 + 16) = *&v116[88];
    *(v70 + 17) = *&v116[104];
    *(v70 + 18) = *&v116[120];
    *(v70 + 11) = *&v116[8];
    *(v70 + 12) = *&v116[24];
    *(v70 + 13) = *&v116[40];
    *(v70 + 14) = *&v116[56];
    *(v70 + 38) = v71;
    v73 = *&v118[120];
    *(v70 + 408) = *&v118[104];
    *(v70 + 424) = v73;
    v74 = *&v118[88];
    *(v70 + 376) = *&v118[72];
    *(v70 + 392) = v74;
    v75 = *&v118[56];
    *(v70 + 344) = *&v118[40];
    *(v70 + 360) = v75;
    v76 = *&v118[24];
    *(v70 + 312) = *&v118[8];
    *(v70 + 328) = v76;
    v70[440] = -1;
    *(v70 + 111) = 0;
    *(v70 + 441) = 0;
    return 1;
  }

  if (v8 != -10219)
  {
    if (v8 != -10194)
    {
      return result;
    }

    v9 = a3 + 36;
    *v115 = *(a3 + 44);
    v119[0] = 16;
    v10 = AppendString_13794(&v115[8], a3 + 36, v119);
    v11 = *(v9 + ((v119[0] + 3) & 0xFFFFFFFFFFFFFFFCLL));
    v12 = GetAliasStream(v7, *v115, a4);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v95 = apr_pstrdup(a1->pool, v10);
    v96 = apr_array_push(a1);
    v97 = v96;
    *v96 = 16;
    *(v96 + 1) = v13;
    *(v96 + 2) = a4;
    *(v96 + 3) = v95;
    *(v96 + 4) = v11;
LABEL_70:
    *(v96 + 56) = 0u;
    *(v96 + 72) = 0u;
    *(v96 + 88) = 0u;
    *(v96 + 104) = 0u;
    *(v96 + 120) = 0u;
    *(v96 + 136) = 0u;
    *(v96 + 152) = 0u;
    *(v96 + 168) = 0u;
    *(v96 + 184) = 0u;
    *(v96 + 200) = 0u;
    *(v96 + 216) = 0u;
    *(v96 + 232) = 0u;
    *(v96 + 248) = 0u;
    *(v96 + 55) = 0;
    *(v97 + 40) = 0u;
    v105 = v97 + 40;
    v105[14] = 0u;
    v105[15] = 0u;
    v105[16] = 0u;
    v105[17] = 0u;
    v105[18] = 0u;
    v105[19] = 0u;
    v105[20] = 0u;
    v105[21] = 0u;
    v105[22] = 0u;
    v105[23] = 0u;
    result = 1;
    v105[24] = 0u;
    return result;
  }

  *v115 = *(a3 + 40);
  v119[0] = 12;
  v49 = AppendString_13794(&v115[8], a3 + 36, v119);
  v50 = GetAliasStream(v7, *v115, a4);
  if (v50)
  {
    v51 = *v50;
  }

  else
  {
    v51 = 0;
  }

  v77 = apr_pstrdup(a1->pool, v49);
  v78 = apr_array_push(a1);
  *v78 = 57;
  v78[1] = v51;
  v78[2] = a4;
  v78[3] = v77;
  *(v78 + 2) = 0u;
  *(v78 + 3) = 0u;
  *(v78 + 4) = 0u;
  *(v78 + 5) = 0u;
  *(v78 + 6) = 0u;
  *(v78 + 7) = 0u;
  *(v78 + 8) = 0u;
  *(v78 + 9) = 0u;
  *(v78 + 10) = 0u;
  *(v78 + 11) = 0u;
  *(v78 + 12) = 0u;
  *(v78 + 13) = 0u;
  *(v78 + 14) = 0u;
  *(v78 + 15) = 0u;
  *(v78 + 16) = 0u;
  *(v78 + 17) = 0u;
  *(v78 + 18) = 0u;
  *(v78 + 19) = 0u;
  *(v78 + 20) = 0u;
  *(v78 + 21) = 0u;
  *(v78 + 22) = 0u;
  *(v78 + 23) = 0u;
  *(v78 + 24) = 0u;
  *(v78 + 25) = 0u;
  result = 1;
  *(v78 + 26) = 0u;
  *(v78 + 27) = 0u;
  return result;
}

uint64_t GetRestoreSortingOrder(uint64_t a1)
{
  v1 = *a1;
  if (*a1 > 59)
  {
    if (v1 <= 82)
    {
      if (v1 == 60)
      {
        return 2;
      }

      if (v1 == 80)
      {
        return 6;
      }
    }

    else
    {
      switch(v1)
      {
        case 'S':
          return 3;
        case 'V':
          return 5;
        case 'e':
          return 10;
      }
    }

    return 0;
  }

  if (v1 > 49)
  {
    if (v1 == 50)
    {
      return 1;
    }

    if (v1 == 57)
    {
      return 9;
    }

    return 0;
  }

  if (v1 != 16)
  {
    if (v1 == 22)
    {
      return 4;
    }

    return 0;
  }

  if (*(a1 + 48))
  {
    return 8;
  }

  else
  {
    return 7;
  }
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

id SharedBufferArray_retainArray(uint64_t a1)
{
  v2 = [*(a1 + 8) copy];
  [*(a1 + 8) removeAllObjects];
  v3 = [v2 lastObject];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 16);
    v6 = [v3 buffer];
    v7 = [v6 length];

    if (v5 < v7)
    {
      [*(a1 + 8) addObject:v4];
    }
  }

  return v2;
}

void SharedCommandBuffer_clearCommandBuffer(uint64_t a1)
{
  [*(a1 + 16) endEncoding];
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
}

id SharedCommandBuffer_commandBuffer(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&SharedBlitLock);
  if (!*(a1 + 8))
  {
    v4 = InternalCommandBuffer(*a1, @"SharedCommandBuffer", a2);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
  }

  pthread_mutex_unlock(&SharedBlitLock);
  v6 = *(a1 + 8);

  return v6;
}

id InternalCommandBuffer(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 isStatEnabled])
  {
    v7 = [v5 getStatLocations];
    [v5 setStatLocations:0];
    v8 = NewCommandBuffer(v5);
    [v5 setStatLocations:v7];
  }

  else
  {
    v8 = NewCommandBuffer(v5);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", v6];

  [v8 setLabel:v9];
  v10 = *a3;
  v11 = atomic_load((a3 + 8));
  [v8 encodeWaitForEvent:v10 value:v11 - 1];

  return v8;
}

id InternalBlitCommandEncoder(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 isStatEnabled])
  {
    v5 = [v4 getStatLocations];
    [v4 setStatLocations:0];
    v6 = [v3 blitCommandEncoder];
    [v4 setStatLocations:v5];
  }

  else
  {
    v6 = [v3 blitCommandEncoder];
  }

  return v6;
}

void verifyPerCounterCommandData(void *a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (g_runningValidationCI == 1)
  {
    v10 = [a1 objectForKeyedSubscript:v6];
    if (v10)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v34 = v7;
      obj = v7;
      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = &unk_27F09C000;
        v14 = *v39;
        v15 = "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m";
        v16 = "verifyPerCounterCommandData";
        do
        {
          v17 = 0;
          v35 = v12;
          do
          {
            if (*v39 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v18 = [v10 objectForKeyedSubscript:*(*(&v38 + 1) + 8 * v17)];
            v21 = v18;
            if (v18)
            {
              if ([v18 count] != a4)
              {
                v22 = v14;
                v23 = v10;
                v24 = v16;
                v25 = v15;
                v26 = v13;
                if (v13[3992])
                {
                  v27 = "#CI_ERROR# ";
                }

                else
                {
                  v27 = "";
                }

                [v21 count];
                v33 = v27;
                v13 = v26;
                v15 = v25;
                v16 = v24;
                v10 = v23;
                v14 = v22;
                v12 = v35;
                GTMTLReplay_handleError(101, v15, v16, 578, 1, "%s%s %u: Counter %@ had incorrect number of results when validating %@ dictionary, size was %lu should be %lu\n", v28, v29, v33);
              }
            }

            else
            {
              v30 = "";
              if (v13[3992])
              {
                v30 = "#CI_ERROR# ";
              }

              GTMTLReplay_handleError(101, v15, v16, 574, 1, "%s%s %u: Counter %@ not found when validating %@ dictionary\n", v19, v20, v30);
            }

            ++v17;
          }

          while (v12 != v17);
          v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v12);
      }

      v7 = v34;
    }

    else
    {
      if (g_runningInCI)
      {
        v31 = "#CI_ERROR# ";
      }

      else
      {
        v31 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "verifyPerCounterCommandData", 566, 1, "%s%s %u: Dictionary %@ not found in JSON dictionary\n", v8, v9, v31);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __BatchIdFilteredCounters_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"batchfiltered"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"vendorCounters"];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) addObject:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

id GenerateSimplePriorityList(void *a1, unint64_t *a2)
{
  v2 = a1;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = 0;
  if ([v2 count])
  {
    v5 = 0;
    do
    {
      v6 = [v2 objectAtIndexedSubscript:v5];
      v7 = [v6 unsignedIntValue];

      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
        for (i = 0; i != v7; ++i)
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
          [v8 addObject:v10];
        }

        [v3 addObject:v8];
        if (v4 <= v7)
        {
          v4 = v7;
        }
      }

      ++v5;
    }

    while (v5 < [v2 count]);
  }

  if (g_runningInCI)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Batch ID filtering will require %lu batches", v4];
    v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v12 UTF8String]);
  }

  if (a2)
  {
    *a2 = v4;
  }

  return v3;
}

id RemoveUnfilterableCounters(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 mutableCopy];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5902;
  v25 = __Block_byref_object_dispose__5903;
  v26 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __RemoveUnfilterableCounters_block_invoke;
  v18[3] = &unk_2796583D0;
  v6 = v4;
  v19 = v6;
  v20 = &v21;
  [v5 enumerateKeysAndObjectsUsingBlock:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v22[5];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v5 removeObjectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v27 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];
  _Block_object_dispose(&v21, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_24D94F714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5902(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __RemoveUnfilterableCounters_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

uint64_t GTMTLReplay_CLI(const char *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  v717 = *MEMORY[0x277D85DE8];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v673 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v674 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v675 = 0;
  [v674 setName:@"gputools.MTLReplayer.parallelQueue"];
  [v673 setName:@"gputools.MTLReplayer.serialQueue"];
  [v673 setMaxConcurrentOperationCount:1];
  if (g_runningInCI == 1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLReplayer attempting to open capture archive: %s", a1];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v6 UTF8String]);
  }

  v7 = newpool;
  DataSource = GTMTLReplayController_makeDataSource(a1, newpool);
  if (!DataSource)
  {
    if (g_runningInCI)
    {
      v15 = "#CI_ERROR# ";
    }

    else
    {
      v15 = "";
    }

    v16 = 1;
    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 672, 1, "%s%s %u: Failed to open capture archive: %s\n", v8, v9, v15);
    goto LABEL_402;
  }

  if (g_runningInCI)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLReplayer opened capture archive: %s", a1];
    v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v12 UTF8String]);
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v672 = 0;
  [v13 createDirectoryAtPath:@"/tmp/com.apple.gputools.profiling" withIntermediateDirectories:1 attributes:0 error:&v672];
  v581 = v672;

  v585 = [MEMORY[0x277CCACA8] stringWithUTF8String:{*(GTMTLSMContext_getDevice(**(DataSource + 5), *(DataSource + 11))[5] + 64)}];
  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v587 = [v14 stringForKey:@"GPUMTLOverrideDeviceFamily"];

  if (*(a2 + 40))
  {
    v580 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    if (!v587 || (v17 = [v585 hasPrefix:v587], v18 = v587, v17))
    {
      v18 = v585;
    }

    v580 = v18;
  }

  v19 = *(GTMTLSMContext_getDevice(**(DataSource + 5), *(DataSource + 11))[5] + 16);
  v20 = dlsym(0xFFFFFFFFFFFFFFFDLL, "MTLOverrideDeviceCreationFlags");
  if (v20)
  {
    v20(v19);
  }

  if (g_runningInCI == 1)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating system default device"];
    v22 = [v21 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v23 = *MEMORY[0x277D85E08];
    v24 = v22;
    fprintf(v23, "#CI-INFO# %s\n", [v22 UTF8String]);
  }

  v598 = MTLCreateSystemDefaultDevice();
  if (g_runningInCI == 1)
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [v598 name];
    v27 = [v25 stringWithFormat:@"Selected default device %@", v26];

    v28 = [v27 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v29 = *MEMORY[0x277D85E08];
    v30 = v28;
    fprintf(v29, "#CI-INFO# %s\n", [v28 UTF8String]);
  }

  v31 = DEVICEOBJECT(v598);
  v32 = [v31 acceleratorPort];

  v671 = 0x7FFFFFFF;
  v591 = GetMetalPluginName(v32, &v671);
  obj = v671;
  if (v671 == 0x80000000)
  {
    obj = MetalPluginTarget(v591);
  }

  v608 = IsAGXMetalPlugin(v591, v33);
  if (v608)
  {
    v34 = DEVICEOBJECT(v598);
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      [v598 setShaderDebugInfoCaching:1];
      if (g_runningInCI == 1)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enabled shaderDebugInfoCaching on device"];
        v37 = [v36 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

        v38 = *MEMORY[0x277D85E08];
        v39 = v37;
        fprintf(v38, "#CI-INFO# %s\n", [v37 UTF8String]);
      }
    }

    if ((*(a2 + 186) & 0x20) != 0)
    {
      v40 = GTProfilerConfigurationVariables(v32);
      v41 = [v40 objectForKeyedSubscript:@"num_cores"];
      v42 = [v41 unsignedIntValue];

      if (obj > 5 || obj == 5 && v42 >= 7)
      {
        *(a2 + 184) = *(a2 + 184) & 0xFF9FFFFF | 0x400000;
      }
    }
  }

  if (g_runningInCI == 1)
  {
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GTMTLReplaySupport_init()"];
    v44 = [v43 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v45 = *MEMORY[0x277D85E08];
    v46 = v44;
    fprintf(v45, "#CI-INFO# %s\n", [v44 UTF8String]);
  }

  v596 = [[GTMTLReplayObjectMap alloc] initWithDevice:v598];
  GTMTLReplaySupport_init(v598);
  GTMTLReplayController_initializeArgumentBufferSupport(DataSource, v598, v596);
  GTMTLReplayController_populateUnusedResources(DataSource, v596);
  if (g_runningInCI == 1)
  {
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GTMTLReplayController_makeController()"];
    v48 = [v47 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v49 = *MEMORY[0x277D85E08];
    v50 = v48;
    fprintf(v49, "#CI-INFO# %s\n", [v48 UTF8String]);
  }

  Controller = GTMTLReplayController_makeController(DataSource, v7, v598, v596, 0, 0);
  if ((*(a2 + 186) & 0x78) != 0)
  {
    v51 = MEMORY[0x253033EF0]();
    v52 = v51 - 0x10000000;
    if (v51 - 0x10000000 >= 0x18000000)
    {
      v52 = 402653184;
    }

    if (v51 >> 28)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    if (g_runningInCI == 1)
    {
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"OptimizingRestores, maxBufferLen = %zu, availableMemory = %zu\n", v53, MEMORY[0x253033EF0]()];
      v55 = [v54 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v56 = *MEMORY[0x277D85E08];
      v57 = v55;
      fprintf(v56, "#CI-INFO# %s\n", [v55 UTF8String]);
    }

    GTMTLReplayController_optimizeRestores(Controller, v53);
  }

  if (g_runningInCI == 1)
  {
    v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating GTMTLReplayWireframeRenderer"];
    v59 = [v58 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v60 = MEMORY[0x277D85E08];
    v61 = *MEMORY[0x277D85E08];
    v62 = v59;
    fprintf(v61, "#CI-INFO# %s\n", [v59 UTF8String]);

    v660 = 0;
    v659 = 0;
    v661 = 0;
    v662 = 0u;
    v663 = 0u;
    v664 = 0u;
    v665 = 0u;
    v666 = 0u;
    v667 = 0u;
    v668 = 0u;
    v669 = 0u;
    v670 = 0;
    if (g_runningInCI)
    {
      v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GTMTLReplayWireframeRenderer_initWithDevice()"];
      v64 = [v63 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v65 = *v60;
      v66 = v64;
      fprintf(v65, "#CI-INFO# %s\n", [v64 UTF8String]);
    }
  }

  else
  {
    v660 = 0;
    v659 = 0;
    v661 = 0;
    v662 = 0u;
    v663 = 0u;
    v664 = 0u;
    v665 = 0u;
    v666 = 0u;
    v667 = 0u;
    v668 = 0u;
    v669 = 0u;
    v670 = 0;
  }

  v67 = [Controller[1] defaultDevice];
  GTMTLReplayWireframeRenderer_initWithDevice(&v659, v67);

  v68 = getenv("ATF_RESULTSDIRECTORY");
  if (!v68)
  {
    if ((g_runningInCI & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_55:
    v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.saveDestination=%s", *(a2 + 48)];
    v70 = [v69 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v71 = *MEMORY[0x277D85E08];
    v72 = v70;
    fprintf(v71, "#CI-INFO# %s\n", [v70 UTF8String]);

    goto LABEL_56;
  }

  if (g_runningInCI)
  {
    goto LABEL_55;
  }

  *(a2 + 48) = v68;
  *(a2 + 184) |= 0x40u;
LABEL_56:
  v73 = MEMORY[0x277CBEBC0];
  v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 48)];
  v590 = [v73 fileURLWithPath:v74 isDirectory:1];

  v75 = [MEMORY[0x277CCAA00] defaultManager];
  [v75 createDirectoryAtURL:v590 withIntermediateDirectories:1 attributes:0 error:0];

  v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v77 = [v76 lastPathComponent];
  v586 = [v77 stringByDeletingPathExtension];

  v80 = *(a2 + 184);
  if (v80)
  {
    if (g_runningInCI == 1)
    {
      v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calling GenerateThumbnails"];
      v125 = [v124 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v126 = *MEMORY[0x277D85E08];
      v127 = v125;
      fprintf(v126, "#CI-INFO# %s\n", [v125 UTF8String]);
    }

    v652 = MEMORY[0x277D85DD0];
    v653 = 3221225472;
    v654 = __GTMTLReplay_CLI_block_invoke;
    v655 = &unk_2796583F8;
    v656 = v586;
    v658 = a3;
    v657 = v590;
    v651 = 0;
    Thumbnails = GenerateThumbnails();
    v588 = 0;
    if ((Thumbnails & 1) == 0)
    {
      GTMTLReplay_handleNSError(v588);
      if (g_runningInCI)
      {
        v131 = "#CI_ERROR# ";
      }

      else
      {
        v131 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 807, 1, "%s%s %u: Failed to generate thumbnails!\n", v129, v130, v131);
    }

    v93 = v656;
    goto LABEL_396;
  }

  if ((v80 & 0x620000) == 0x20000)
  {
    if (g_runningInCI == 1)
    {
      v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"profileBatchIdFilter"];
      v82 = [v81 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      v83 = *MEMORY[0x277D85E08];
      v84 = v82;
      fprintf(v83, "#CI-INFO# %s\n", [v82 UTF8String]);
    }

    if (v608)
    {
      v85 = g_runningInCI;
      if ((obj & 0x80000000) == 0)
      {
        if (g_runningInCI)
        {
          v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"targetIndex=%d", obj];
          v87 = [v86 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v88 = *MEMORY[0x277D85E08];
          v89 = v87;
          fprintf(v88, "#CI-INFO# %s\n", [v87 UTF8String]);
        }

        v90 = [Controller[1] defaultDevice];
        v91 = DYMTLReplayFrameProfiler_loadAnalysis(v90);
        v588 = [v91 mutableCopy];

        v92 = [v588 objectForKeyedSubscript:@"DerivedCounterDictionary"];
        v93 = [v92 mutableCopy];

        verifyCounterDictionary(v93);
        v614 = [v93 objectForKeyedSubscript:@"DerivedCounters"];
        v94 = [MEMORY[0x277CCA8D8] mainBundle];
        v95 = [v94 pathForResource:@"GPUCounterGraph" ofType:@"plist"];

        v96 = v95;
        v628 = objc_opt_new();
        if (v96)
        {
          v97 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v96];
          v98 = v97;
          if (v97)
          {
            v99 = [v97 objectForKey:@"counters"];
            v709 = MEMORY[0x277D85DD0];
            v710 = 3221225472;
            v711 = __BatchIdFilteredCounters_block_invoke;
            v712 = &unk_2796583A8;
            v713 = v628;
            [v99 enumerateKeysAndObjectsUsingBlock:&v709];
          }
        }

        [v628 addObject:@"GPUTime"];
        v100 = RemoveUnfilterableCounters(v614, v628);
        [v93 setObject:v100 forKeyedSubscript:@"DerivedCounters"];
        [v588 setObject:v93 forKeyedSubscript:@"DerivedCounterDictionary"];
        if (g_runningInCI == 1)
        {
          v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filtered counter list from %lu to %lu counters", objc_msgSend(v614, "count"), objc_msgSend(v100, "count")];
          v102 = [v101 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v103 = *MEMORY[0x277D85E08];
          v104 = v102;
          fprintf(v103, "#CI-INFO# %s\n", [v102 UTF8String]);
        }

        v609 = GTMTLReplayHost_rawCounters(v100);
        v105 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
        v106 = [v105 mutableCopy];

        v107 = GTMTLReplayHost_rawCountersToNormalizeSet(v100);
        [v106 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
        [v106 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
        [v106 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
        [v106 setObject:v107 forKeyedSubscript:@"NormalizedCounters"];
        v110 = [v106 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
        if (v110)
        {
          [v106 setObject:v588 forKeyedSubscript:@"derivedCounterInfo"];
          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(a2 + 184) >> 17) & 1];
          [v106 setObject:v111 forKeyedSubscript:@"profileBatchIdFilter"];

          [v106 setObject:v609 forKeyedSubscript:@"profileCounters"];
          [v106 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
          v112 = [MEMORY[0x277CCABB0] numberWithInt:obj];
          [v106 setObject:v112 forKeyedSubscript:@"gpuTarget"];

          v113 = GenerateSimplePriorityList(v110, 0);
          [v106 setObject:v113 forKeyedSubscript:@"encoderBatchPriorityList"];

          [v106 setObject:0 forKeyedSubscript:@"pause"];
          [v106 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"resume"];
          [v106 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
          v114 = [v590 path];
          v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
          GTMTLReplayClient_streamBatchFilteredData(Controller, &v673, v106, &__block_literal_global_5948);
          if (g_runningInCI == 1)
          {
            v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for batch ID streaming..."];
            v117 = [v116 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v118 = *MEMORY[0x277D85E08];
            v119 = v117;
            fprintf(v118, "#CI-INFO# %s\n", [v117 UTF8String]);
          }

          [v674 waitUntilAllOperationsAreFinished];
          if (g_runningInCI == 1)
          {
            v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished"];
            v121 = [v120 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v122 = *MEMORY[0x277D85E08];
            v123 = v121;
            fprintf(v122, "#CI-INFO# %s\n", [v121 UTF8String]);
          }
        }

        else
        {
          if (g_runningInCI)
          {
            v252 = "#CI_ERROR# ";
          }

          else
          {
            v252 = "";
          }

          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 853, 1, "%s%s %u: activePerEncoderDrawCallCount missing in payload\n", v108, v109, v252);
        }

        goto LABEL_396;
      }

      v203 = "%s%s %u: -profileBatchIdFilter only supported on recent AGX devices\n";
      v204 = 820;
    }

    else
    {
      v85 = g_runningInCI;
      v203 = "%s%s %u: -profileBatchIdFilter only supported on AGX devices\n";
      v204 = 816;
    }

    if (v85)
    {
      v218 = "#CI_ERROR# ";
    }

    else
    {
      v218 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", v204, 1, v203, v78, v79, v218);
    goto LABEL_397;
  }

  if ((v80 & 0x100) == 0)
  {
    if ((v608 & ((v80 & 0x400000u) >> 22)) == 1)
    {
      v132 = [Controller[1] defaultDevice];
      v133 = DYMTLReplayFrameProfiler_loadAnalysis(v132);
      v588 = [v133 mutableCopy];

      v134 = *Controller;
      v135 = GTShaderProfilerStreamDataFromReplayDataSource();
      [v135 setMetalPluginName:v591];
      v136 = [v598 name];
      [v135 setMetalDeviceName:v136];

      v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      v138 = [v137 lastPathComponent];
      [v135 setTraceName:v138];

      [v135 setSupportsFileFormatV2:1];
      v139 = [v588 objectForKeyedSubscript:@"DerivedCounterDictionary"];
      v140 = v139;
      if (v139)
      {
        verifyCounterDictionary(v139);
        v141 = [v140 objectForKeyedSubscript:@"DerivedCounters"];
        v142 = GTMTLReplayHost_rawCounters(v141);
        [v588 setObject:v142 forKeyedSubscript:@"profileCounters"];

        if (g_runningInCI == 1)
        {
          v143 = MEMORY[0x277CCACA8];
          v144 = [v588 description];
          v145 = [v143 stringWithFormat:@"Derived Counters %@", v144];

          v146 = [v145 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v147 = *MEMORY[0x277D85E08];
          v148 = v146;
          fprintf(v147, "#CI-INFO# %s\n", [v146 UTF8String]);
        }

        v629 = GTMTLReplayHost_rawCountersToNormalizeSet(v141);
      }

      else
      {
        v629 = 0;
      }

      v616 = [[GTGPUAPSConfig alloc] initForProfiling];
      v253 = [[GTGPUAPSConfig alloc] initForCounters];
      v254 = objc_opt_new();
      [v254 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
      [v254 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceComputeEncoders"];
      [v254 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceBlitEncoders"];
      v255 = [MEMORY[0x277CCABB0] numberWithInt:obj];
      [v254 setObject:v255 forKeyedSubscript:@"gpuTarget"];

      v256 = v629;
      if (!v629)
      {
        v256 = objc_opt_new();
      }

      [v254 setObject:v256 forKeyedSubscript:@"NormalizedCounters"];
      if (!v629)
      {
      }

      [v254 setObject:v588 forKeyedSubscript:@"derivedCounterInfo"];
      [v254 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
      v257 = [v616 toDictionary];
      [v254 setObject:v257 forKeyedSubscript:@"ProfilingConfig"];

      v258 = [v253 toDictionary];
      [v254 setObject:v258 forKeyedSubscript:@"CounterConfig"];

      [v254 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"useOverlap"];
      v259 = MEMORY[0x277CCABB0];
      v260 = [MEMORY[0x277CCAC38] processInfo];
      v261 = [v259 numberWithUnsignedLongLong:{objc_msgSend(v260, "physicalMemory")}];
      [v254 setObject:v261 forKeyedSubscript:@"PhysicalMemory"];

      [v254 setObject:&unk_2860D6AB8 forKeyedSubscript:@"DataExpansionFactor"];
      v262 = [v254 objectForKeyedSubscript:@"GPUState"];

      if (v262)
      {
        v263 = [v254 objectForKeyedSubscript:@"GPUState"];
        [v135 setProfiledPerformanceState:{objc_msgSend(v263, "intValue")}];
      }

      else
      {
        [v135 setProfiledPerformanceState:2];
      }

      v264 = [v254 objectForKeyedSubscript:@"useOverlap"];

      if (v264)
      {
        v265 = [v254 objectForKeyedSubscript:@"useOverlap"];
        v266 = [v265 BOOLValue];

        [v135 setProfiledExecutionMode:v266 ^ 1u];
      }

      else
      {
        [v135 setProfiledExecutionMode:0];
      }

      v267 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
      [v254 addEntriesFromDictionary:v267];
      if (v135)
      {
        if (g_runningInCI == 1)
        {
          v268 = [MEMORY[0x277CCACA8] stringWithFormat:@"Collecting APS Data..."];
          v269 = [v268 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v270 = *MEMORY[0x277D85E08];
          v271 = v269;
          fprintf(v270, "#CI-INFO# %s\n", [v269 UTF8String]);
        }

        v709 = 0;
        v710 = &v709;
        v711 = 0x2020000000;
        LOBYTE(v712) = 0;
        v705 = 0;
        v706 = &v705;
        v707 = 0x2020000000;
        LOBYTE(v708) = 0;
        v701 = 0;
        v702 = &v701;
        v703 = 0x2020000000;
        LOBYTE(v704) = 0;
        v272 = dispatch_semaphore_create(0);
        v645[0] = MEMORY[0x277D85DD0];
        v645[1] = 3221225472;
        v645[2] = __GTMTLReplay_CLI_block_invoke_289;
        v645[3] = &unk_279658440;
        v273 = v272;
        v646 = v273;
        v648 = &v709;
        v649 = &v705;
        v650 = &v701;
        v274 = v135;
        v647 = v274;
        GTMTLReplayClient_collectAPSData(Controller, &v673, v254, v645);
        if (g_runningInCI == 1)
        {
          v275 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for APS Data..."];
          v276 = [v275 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v277 = *MEMORY[0x277D85E08];
          v278 = v276;
          fprintf(v277, "#CI-INFO# %s\n", [v276 UTF8String]);
        }

        dispatch_semaphore_wait(v273, 0xFFFFFFFFFFFFFFFFLL);
        [v674 waitUntilAllOperationsAreFinished];
        [v274 addPipelinePerformanceStatisticsData:Controller[8]];

        _Block_object_dispose(&v701, 8);
        _Block_object_dispose(&v705, 8);
        _Block_object_dispose(&v709, 8);
      }

      if ((*(a2 + 186) & 2) != 0)
      {
        v279 = BatchIdFiterableCounters();
        NSLog(&cfstr_FilteredBatchI.isa, v279);
        v280 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
        v281 = [v280 mutableCopy];

        v282 = objc_opt_new();
        [v281 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
        [v281 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
        [v281 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
        [v281 setObject:v282 forKeyedSubscript:@"NormalizedCounters"];
        v283 = [v281 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
        v705 = 0;
        [v281 setObject:v588 forKeyedSubscript:@"derivedCounterInfo"];
        v284 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(a2 + 184) >> 17) & 1];
        [v281 setObject:v284 forKeyedSubscript:@"profileBatchIdFilter"];

        [v281 setObject:v279 forKeyedSubscript:@"profileCounters"];
        [v281 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
        v285 = [MEMORY[0x277CCABB0] numberWithInt:obj];
        [v281 setObject:v285 forKeyedSubscript:@"gpuTarget"];

        v286 = GenerateSimplePriorityList(v283, &v705);
        [v281 setObject:v286 forKeyedSubscript:@"encoderBatchPriorityList"];

        [v281 setObject:0 forKeyedSubscript:@"pause"];
        [v281 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"resume"];
        [v281 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
        v709 = 0;
        v710 = &v709;
        v711 = 0x2020000000;
        v712 = 0;
        v644[0] = MEMORY[0x277D85DD0];
        v644[1] = 3221225472;
        v644[2] = __GTMTLReplay_CLI_block_invoke_2_317;
        v644[3] = &unk_279658468;
        v644[4] = &v709;
        v644[5] = v705;
        GTMTLReplayClient_streamBatchFilteredData(Controller, &v673, v281, v644);
        if (g_runningInCI == 1)
        {
          v287 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for batch ID streaming..."];
          v288 = [v287 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v289 = *MEMORY[0x277D85E08];
          v290 = v288;
          fprintf(v289, "#CI-INFO# %s\n", [v288 UTF8String]);
        }

        [v674 waitUntilAllOperationsAreFinished];
        v291 = [v135 archivedBatchIdFilteredCounterData];
        v292 = [v291 count];
        v293 = v292 == v705;

        if (!v293 && g_runningInCI == 1)
        {
          v294 = MEMORY[0x277CCACA8];
          v295 = v705;
          v296 = [v135 archivedBatchIdFilteredCounterData];
          v297 = [v294 stringWithFormat:@"Invalid batch ID fitering counter count, expected max batches: %lu, got: %lu", v295, objc_msgSend(v296, "count")];

          v298 = [v297 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

          v299 = *MEMORY[0x277D85E08];
          v300 = v298;
          fprintf(v299, "#CI-ERROR# %s\n", [v298 UTF8String]);
        }

        _Block_object_dispose(&v709, 8);
      }

      if (g_runningInCI == 1)
      {
        v301 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished"];
        v302 = [v301 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

        v303 = *MEMORY[0x277D85E08];
        v304 = v302;
        fprintf(v303, "#CI-INFO# %s\n", [v302 UTF8String]);
      }

      if (*(a2 + 48))
      {
        v305 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        v306 = [v305 stringByStandardizingPath];

        LOBYTE(v709) = 0;
        v307 = [MEMORY[0x277CCAA00] defaultManager];
        [v307 createDirectoryAtPath:v306 withIntermediateDirectories:1 attributes:0 error:0];

        v308 = [MEMORY[0x277CCAA00] defaultManager];
        v309 = [v308 fileExistsAtPath:v306 isDirectory:&v709];

        if (v309 && v709 == 1)
        {
          v310 = MEMORY[0x277CCACA8];
          v311 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
          v312 = [v311 lastPathComponent];
          v313 = [v312 stringByDeletingPathExtension];
          v314 = [v310 stringWithFormat:@"%@.gpuprofiler_raw", v313];
          v315 = [v306 stringByAppendingPathComponent:v314];

          v306 = v315;
        }

        v316 = [v306 pathExtension];
        v317 = [v316 isEqualToString:@"gpuprofiler_raw"];

        if ((v317 & 1) == 0)
        {
          v318 = [v306 stringByAppendingPathExtension:@"gpuprofiler_raw"];

          v306 = v318;
        }

        NSLog(&cfstr_SaveDestinatio.isa, v306);
        v319 = [MEMORY[0x277CCAA00] defaultManager];
        v320 = [v319 fileExistsAtPath:v306];

        if (v320)
        {
          v321 = [MEMORY[0x277CCAA00] defaultManager];
          [v321 removeItemAtPath:v306 error:0];
        }

        v322 = [MEMORY[0x277CBEBC0] fileURLWithPath:v306];
        v323 = [v135 encode:v322 error:0];

        v324 = [MEMORY[0x277CCAA00] defaultManager];
        NSLog(&cfstr_WrittenUAtDest.isa, [v324 fileExistsAtPath:v306], v306);

        [v135 cleanupLocalFiles];
      }
    }

    else
    {
      if ((v608 & ((v80 & 0x200000u) >> 21)) == 1)
      {
        v205 = objc_opt_new();
        [v205 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
        v206 = [MEMORY[0x277CCABB0] numberWithInt:obj];
        [v205 setObject:v206 forKeyedSubscript:@"gpuTarget"];
        v588 = v205;

        [v205 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseMTLCounters"];
        [v205 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
        [v205 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceComputeEncoders"];
        [v205 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceBlitEncoders"];
        v207 = *(a2 + 164);
        if ((v207 & 0x80000000) == 0)
        {
          if (v207 <= 2)
          {
            v208 = 2;
          }

          else
          {
            v208 = v207;
          }

          v209 = [MEMORY[0x277CCABB0] numberWithInt:v208];
          [v205 setObject:v209 forKeyedSubscript:@"GPUState"];
        }

        v210 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
        [v588 addEntriesFromDictionary:v210];
        v577 = v210;
        v211 = *Controller;
        v212 = GTShaderProfilerStreamDataFromReplayDataSource();
        [v212 setMetalPluginName:v591];
        v213 = [v598 name];
        [v212 setMetalDeviceName:v213];

        v214 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
        v215 = [v214 lastPathComponent];
        [v212 setTraceName:v215];

        v216 = [v588 objectForKeyedSubscript:@"GPUState"];

        if (v216)
        {
          v217 = [v588 objectForKeyedSubscript:@"GPUState"];
          [v212 setProfiledPerformanceState:{objc_msgSend(v217, "intValue")}];
        }

        else
        {
          [v212 setProfiledPerformanceState:2];
        }

        v433 = [v588 objectForKeyedSubscript:@"useOverlap"];

        if (v433)
        {
          v434 = [v588 objectForKeyedSubscript:@"useOverlap"];
          v435 = [v434 BOOLValue];

          [v212 setProfiledExecutionMode:v435 ^ 1u];
        }

        else
        {
          [v212 setProfiledExecutionMode:0];
        }

        [v212 setProfiledProfilerMode:0];
        v709 = 0;
        v710 = &v709;
        v711 = 0x2020000000;
        v712 = 0;
        v705 = 0;
        v706 = &v705;
        v707 = 0x2020000000;
        v708 = 0;
        v701 = 0;
        v702 = &v701;
        v703 = 0x2020000000;
        v704 = 0;
        if (v212)
        {
          if (g_runningInCI == 1)
          {
            v436 = [MEMORY[0x277CCACA8] stringWithFormat:@"Collecting Timeline Data..."];
            v437 = [v436 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v438 = *MEMORY[0x277D85E08];
            v439 = v437;
            fprintf(v438, "#CI-INFO# %s\n", [v437 UTF8String]);
          }

          v641[0] = MEMORY[0x277D85DD0];
          v641[1] = 3221225472;
          v641[2] = __GTMTLReplay_CLI_block_invoke_3;
          v641[3] = &unk_279658490;
          v440 = v212;
          v642 = v440;
          v643 = &v709;
          GTMTLReplayClient_collectGPUShaderTimelineData(Controller, &v673, v588, v641);
          if (g_runningInCI == 1)
          {
            v441 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for GPU Timeline..."];
            v442 = [v441 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v443 = *MEMORY[0x277D85E08];
            v444 = v442;
            fprintf(v443, "#CI-INFO# %s\n", [v442 UTF8String]);
          }

          [v674 waitUntilAllOperationsAreFinished];
          if (g_runningInCI == 1)
          {
            v445 = [MEMORY[0x277CCACA8] stringWithFormat:@"Collecting Shader Profiler Data..."];
            v446 = [v445 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v447 = *MEMORY[0x277D85E08];
            v448 = v446;
            fprintf(v447, "#CI-INFO# %s\n", [v446 UTF8String]);
          }

          v638[0] = MEMORY[0x277D85DD0];
          v638[1] = 3221225472;
          v638[2] = __GTMTLReplay_CLI_block_invoke_4;
          v638[3] = &unk_279658490;
          v449 = v440;
          v639 = v449;
          v640 = &v705;
          GTMTLReplayClient_streamShaderProfilingData(Controller, &v673, v588, v638);
          if (g_runningInCI == 1)
          {
            v450 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for Shader Profiler..."];
            v451 = [v450 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v452 = *MEMORY[0x277D85E08];
            v453 = v451;
            fprintf(v452, "#CI-INFO# %s\n", [v451 UTF8String]);
          }

          [v674 waitUntilAllOperationsAreFinished];
          [v449 addPipelinePerformanceStatisticsData:Controller[8]];
          if (g_runningInCI == 1)
          {
            v454 = [MEMORY[0x277CCACA8] stringWithFormat:@"Colleting Batch ID Filtered Countersr..."];
            v455 = [v454 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v456 = *MEMORY[0x277D85E08];
            v457 = v455;
            fprintf(v456, "#CI-INFO# %s\n", [v455 UTF8String]);
          }

          if ((*(a2 + 186) & 2) != 0)
          {
            v458 = [Controller[1] defaultDevice];
            v459 = DYMTLReplayFrameProfiler_loadAnalysis(v458);
            v634 = [v459 mutableCopy];

            v460 = [v634 objectForKeyedSubscript:@"DerivedCounterDictionary"];
            v461 = [v460 mutableCopy];

            verifyCounterDictionary(v461);
            v612 = [v461 objectForKeyedSubscript:@"DerivedCounters"];
            v462 = MEMORY[0x277CBEB58];
            v463 = BatchIdFiterableCounters();
            v464 = [v462 setWithArray:v463];

            [v464 addObject:@"GPUTime"];
            v619 = RemoveUnfilterableCounters(v612, v464);
            [v461 setObject:v619 forKeyedSubscript:@"DerivedCounters"];
            [v634 setObject:v461 forKeyedSubscript:@"DerivedCounterDictionary"];
            v606 = GTMTLReplayHost_rawCounters(v619);
            v465 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
            v466 = [v465 mutableCopy];

            v467 = GTMTLReplayHost_rawCountersToNormalizeSet(v619);
            [v466 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
            [v466 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
            [v466 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
            [v466 setObject:v467 forKeyedSubscript:@"NormalizedCounters"];
            v594 = [v466 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
            *&v685 = 0;
            [v466 setObject:v634 forKeyedSubscript:@"derivedCounterInfo"];
            v468 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(a2 + 184) >> 17) & 1];
            [v466 setObject:v468 forKeyedSubscript:@"profileBatchIdFilter"];

            [v466 setObject:v606 forKeyedSubscript:@"profileCounters"];
            [v466 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
            v469 = [MEMORY[0x277CCABB0] numberWithInt:obj];
            [v466 setObject:v469 forKeyedSubscript:@"gpuTarget"];

            v470 = GenerateSimplePriorityList(v594, &v685);
            [v466 setObject:v470 forKeyedSubscript:@"encoderBatchPriorityList"];

            [v466 setObject:0 forKeyedSubscript:@"pause"];
            [v466 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"resume"];
            [v466 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
            if (g_runningInCI == 1)
            {
              v471 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tBatch ID Filterable Counters: %@", v464];
              v472 = [v471 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

              v473 = *MEMORY[0x277D85E08];
              v474 = v472;
              fprintf(v473, "#CI-INFO# %s\n", [v472 UTF8String]);
            }

            v475 = [v464 allObjects];
            [v449 setBatchIdFilterableCounters:v475];

            v637[0] = MEMORY[0x277D85DD0];
            v637[1] = 3221225472;
            v637[2] = __GTMTLReplay_CLI_block_invoke_5;
            v637[3] = &unk_279658468;
            v637[4] = &v701;
            v637[5] = v685;
            GTMTLReplayClient_streamBatchFilteredData(Controller, &v673, v466, v637);
            if (g_runningInCI == 1)
            {
              v476 = [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for batch ID streaming..."];
              v477 = [v476 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

              v478 = *MEMORY[0x277D85E08];
              v479 = v477;
              fprintf(v478, "#CI-INFO# %s\n", [v477 UTF8String]);
            }

            [v674 waitUntilAllOperationsAreFinished];
            v480 = [v449 archivedBatchIdFilteredCounterData];
            v481 = [v480 count];
            v482 = v481 == v685;

            if (!v482 && g_runningInCI == 1)
            {
              v483 = MEMORY[0x277CCACA8];
              v484 = v685;
              v485 = [v449 archivedBatchIdFilteredCounterData];
              v486 = [v483 stringWithFormat:@"Invalid batch ID fitering counter count, expected max batches: %lu, got: %lu", v484, objc_msgSend(v485, "count")];

              v487 = [v486 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-ERROR# "];

              v488 = *MEMORY[0x277D85E08];
              v489 = v487;
              fprintf(v488, "#CI-ERROR# %s\n", [v487 UTF8String]);
            }
          }
        }

        if (g_runningInCI == 1)
        {
          v490 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finished"];
          v491 = [v490 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v492 = *MEMORY[0x277D85E08];
          v493 = v491;
          fprintf(v492, "#CI-INFO# %s\n", [v491 UTF8String]);
        }

        if (*(a2 + 48))
        {
          v494 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
          LOBYTE(v685) = 0;
          v495 = [MEMORY[0x277CCAA00] defaultManager];
          v496 = [v495 fileExistsAtPath:v494 isDirectory:&v685];

          if (v496 && v685 == 1)
          {
            v497 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 48)];
            v498 = MEMORY[0x277CCACA8];
            v499 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
            v500 = [v499 lastPathComponent];
            v501 = [v500 stringByDeletingPathExtension];
            v502 = [v498 stringWithFormat:@"%@.gpuprofiler_raw", v501];
            v503 = [v497 stringByAppendingPathComponent:v502];

            v494 = v503;
          }

          v504 = [v494 pathExtension];
          v505 = [v504 isEqualToString:@"gpuprofiler_raw"];

          if (v505)
          {
            v506 = [v494 stringByAppendingPathExtension:@"gpuprofiler_raw"];

            v494 = v506;
          }

          v636 = v581;
          v507 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v212 requiringSecureCoding:1 error:&v636];
          v508 = v636;

          [v507 writeToFile:v494 atomically:0];
          v581 = v508;
        }

        _Block_object_dispose(&v701, 8);
        _Block_object_dispose(&v705, 8);
        _Block_object_dispose(&v709, 8);

        goto LABEL_395;
      }

      if ((v80 & 0x80000) != 0)
      {
        if (v608)
        {
          v424 = objc_opt_new();
          [v424 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
          [v424 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseMTLCounters"];
          [v424 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
          [v424 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceComputeEncoders"];
          [v424 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CoalesceBlitEncoders"];
          v588 = v424;
          v425 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
          [v588 addEntriesFromDictionary:v425];
          v426 = [v590 path];
          v427 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
          v428 = v425;
          if (g_runningInCI == 1)
          {
            v429 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating Streaming Shader Profiler Helper"];
            v430 = [v429 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v431 = *MEMORY[0x277D85E08];
            v432 = v430;
            fprintf(v431, "#CI-INFO# %s\n", [v430 UTF8String]);
          }

          GTMTLReplayClient_collectGPUShaderTimelineData(Controller, &v673, v588, &__block_literal_global_372);
          [v674 waitUntilAllOperationsAreFinished];

          v93 = v428;
          goto LABEL_396;
        }

        goto LABEL_397;
      }

      if ((v80 & 0x200) == 0)
      {
        if ((v80 & 0x80) == 0)
        {
          if ((v80 & 0x4000) != 0)
          {
            if (!strcmp(*(a2 + 128), "all"))
            {
              v536 = [Controller[1] defaultCommandQueue];
              v588 = [v536 availableCounters];
              v538 = MEMORY[0x277CBEBC0];
              v539 = [v586 stringByAppendingString:@"_allCountersInfo.plist"];
              v540 = [v538 fileURLWithPath:v539 isDirectory:0 relativeToURL:v590];
              [v588 writeToURL:v540 error:0];
            }

            else
            {
              v535 = objc_alloc(MEMORY[0x277CBEA60]);
              v536 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 128)];
              v588 = [v535 initWithContentsOfFile:v536];
            }

            v689 = @"profileCounters";
            v690 = v588;
            v541 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v690 forKeys:&v689 count:1];
            v542 = GTMTLReplayClient_derivedCounterData(Controller, &v673, v541);
            v543 = MEMORY[0x277CBEBC0];
            v544 = [v586 stringByAppendingPathExtension:@".csv"];
            v545 = [v543 fileURLWithPath:v544 isDirectory:0 relativeToURL:v590];
            WriteToCSVFromCounterData(v542, v545);

            v546 = MEMORY[0x277CBEBC0];
            v547 = [v586 stringByAppendingPathExtension:@".plist"];
            v548 = [v546 fileURLWithPath:v547 isDirectory:0 relativeToURL:v590];
            WriteToPlistFromCounterData(v542, v548);

            v93 = v541;
            goto LABEL_396;
          }

          if ((v80 & 0x8000) != 0)
          {
            v589 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, v608);
            v537 = GTMTLReplayClient_queryShaderInfo(Controller, &v673, v589);
          }

          else
          {
            if ((v80 & 0x40000) != 0)
            {
              v588 = GTMTLReplayClient_collectPipelinePerformanceStatistics(Controller);
              v549 = [v588 description];
              v550 = [v549 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

              v551 = MEMORY[0x277CBEBC0];
              v552 = [v586 stringByAppendingPathExtension:@"txt"];
              v553 = [v551 fileURLWithPath:v552 isDirectory:0 relativeToURL:v590];
              [v550 writeToURL:v553 atomically:0 encoding:4 error:0];

              v93 = v550;
              goto LABEL_396;
            }

            if ((v80 & 0x10000) == 0)
            {
              v241 = *(a2 + 24);
              if (v241 >= 1)
              {
                v242 = 0;
                v243 = MEMORY[0x277D85E08];
                v244 = v581;
                do
                {
                  if (g_runningInCI == 1)
                  {
                    v245 = [MEMORY[0x277CCACA8] stringWithFormat:@"replayCapture, loop count=%d/%d", v242, v241];
                    v246 = [v245 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

                    v247 = *v243;
                    v248 = v246;
                    fprintf(v247, "#CI-INFO# %s\n", [v246 UTF8String]);
                  }

                  v249 = objc_alloc_init(MEMORY[0x277CD6CC8]);
                  v250 = [Controller[1] defaultDevice];
                  [v249 setCaptureObject:v250];

                  GTMTLReplayController_debugSubCommandStop(Controller, *(*(*Controller + 16) + 12), 0);
                  if (*(a2 + 37) == 1)
                  {
                    v251 = [Controller[1] defaultCommandQueue];
                    [v251 finish];
                  }

                  GTMTLReplayController_rewind(Controller);

                  v244 = 0;
                  v581 = 0;
                  v242 = (v242 + 1);
                  v241 = *(a2 + 24);
                }

                while (v242 < v241);
              }
            }
          }
        }

        goto LABEL_397;
      }

      if (!v608)
      {
        goto LABEL_397;
      }

      v520 = objc_opt_new();
      [v520 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
      [v520 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"CollectLimiters"];
      v135 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
      [v520 addEntriesFromDictionary:v135];
      v588 = v520;
      v521 = GTMTLReplayClient_embeddedQueryShaderInfo(Controller, &v673, v520);
      v522 = [v521 mutableCopy];

      [v522 setObject:v520 forKeyedSubscript:@"payload"];
      v523 = [v522 objectForKeyedSubscript:@"LimiterCounters"];
      if (v523)
      {
        v524 = [v522 objectForKeyedSubscript:@"limiter sample data"];
        v525 = v524 == 0;

        if (v525)
        {
          v635 = [v522 objectForKeyedSubscript:@"LimiterCounters"];
          v627 = [v635 objectForKeyedSubscript:@"DerivedCounterDictionary"];
          v526 = [v627 objectForKeyedSubscript:@"DerivedCounters"];
          v620 = GTMTLReplayHost_rawCountersToNormalizeSet(v526);

          [v588 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
          [v588 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
          [v588 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
          v527 = [v627 objectForKeyedSubscript:@"counters"];
          [v588 setObject:v527 forKeyedSubscript:@"profileCounters"];

          [v588 setObject:v620 forKeyedSubscript:@"NormalizedCounters"];
          v528 = [v522 objectForKeyedSubscript:@"gputime"];
          v529 = [v522 objectForKeyedSubscript:@"consistent time"];
          v530 = v529;
          if (v529)
          {
            v531 = [v529 objectForKeyedSubscript:@"gputime"];
            v532 = v531;
            if (v531)
            {
              v533 = v531;

              v528 = v533;
            }
          }

          if (v528)
          {
            v534 = [v528 unsignedLongLongValue];
          }

          else
          {
            v534 = 0;
          }

          v554 = [v522 objectForKeyedSubscript:@"encoder time data"];
          objc = v530;
          v595 = v528;
          v555 = [v522 objectForKeyedSubscript:@"kick time data"];
          v613 = ProcessEncoderTimeData(v554, v555, v588, v534);
          v607 = v555;

          v556 = [v613 objectAtIndexedSubscript:1];
          v557 = ProcessDerivedCounterDataFromDevice(v635, v588, v556);

          v558 = GTMTLReplayHost_collectSoftwareEncoderCounters(*Controller, 1);
          v559 = ComputeDerivedCounters(v635, v557, v558);
          if (v559)
          {
            [v522 setObject:v559 forKeyedSubscript:@"LimiterCounterData"];
            v560 = [v559 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
            v584 = [v560 objectForKeyedSubscript:@"counters"];

            v691[0] = @"PerCounterEncoderCallData";
            v561 = [v559 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
            v562 = [v561 objectForKeyedSubscript:@"AverageSamples"];
            v563 = GTMTLReplayHost_createPerCounterCommandData(v584, v562);
            v691[1] = @"MetalPluginName";
            v692[0] = v563;
            v692[1] = v591;
            v564 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v692 forKeys:v691 count:2];

            v565 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v564 options:1 error:0];
            v566 = MEMORY[0x277CBEBC0];
            v567 = [v586 stringByAppendingPathExtension:@"json"];
            v568 = [v566 fileURLWithPath:v567 isDirectory:0 relativeToURL:v590];
            [v565 writeToURL:v568 atomically:0];
          }
        }
      }

      v569 = [v590 path];
      v570 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    }

    v93 = v135;
    goto LABEL_396;
  }

  if (g_runningInCI == 1)
  {
    v149 = [MEMORY[0x277CCACA8] stringWithFormat:@"collectDerivedCounters"];
    v150 = [v149 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v151 = *MEMORY[0x277D85E08];
    v152 = v150;
    fprintf(v151, "#CI-INFO# %s\n", [v150 UTF8String]);
  }

  v153 = *Controller;
  v588 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v615 = v153[15];
  v154 = *(v615 + 12);
  if (v154 < 1)
  {
    v158 = &stru_2860BD438;
    v159 = &stru_2860BD438;
    v592 = &stru_2860BD438;
    goto LABEL_223;
  }

  v155 = 0;
  v156 = 0;
  v157 = v153[2];
  v630 = v153[16];
  v158 = &stru_2860BD438;
  v159 = &stru_2860BD438;
  v592 = &stru_2860BD438;
  do
  {
    v160 = (*(v615 + 24) + 24 * v156);
    v161 = *v160;
    if (!GTFenum_isBeginCommandBuffer(*(v630[3] + (v161 << 6) + 8)))
    {
      goto LABEL_206;
    }

    v603 = v156;
    v162 = v160[1];
    if (v161 + 1 >= v162)
    {
      goto LABEL_205;
    }

    v163 = v161 + 1;
    do
    {
      v164 = v630[3] + (v163 << 6);
      v165 = *(v164 + 8);
      if (v165 <= -15795)
      {
        if (v165 > -16124)
        {
          if ((v165 + 16123) <= 0x3C && ((1 << (v165 - 5)) & 0x1000000000000011) != 0)
          {
            goto LABEL_140;
          }

          v167 = (v165 + 15925) > 0x2D || ((1 << (v165 + 53)) & 0x200800000001) == 0;
          v168 = -15974;
        }

        else
        {
          if ((v165 + 0x4000) <= 0x2D && ((1 << v165) & 0x200800081001) != 0)
          {
            goto LABEL_140;
          }

          v167 = (v165 + 16292) > 0x34 || ((1 << (v165 - 92)) & 0x10000000000811) == 0;
          v168 = -16136;
        }

        goto LABEL_135;
      }

      if (v165 <= -15314)
      {
        if (v165 > -15608)
        {
          v170 = v165 == -15607 || v165 == -15570;
          v171 = -15491;
        }

        else
        {
          v170 = (v165 + 15676) <= 0x1C && ((1 << (v165 + 60)) & 0x10008101) != 0 || v165 == -15794;
          v171 = -15743;
        }

        if (!v170 && v165 != v171)
        {
          goto LABEL_165;
        }

LABEL_140:
        if (v165 > -16289)
        {
          if (v165 != -16288 && v165 != -16281 && v165 != -15890)
          {
            goto LABEL_194;
          }
        }

        else if (v165 != -16384)
        {
          if (v165 == -16365)
          {
            v179 = GTTraceFunc_argumentBytesWithMap((v630[3] + (v163 << 6)), *(v164 + 13), v157);
            v180 = GTTraceFunc_argumentBytesWithMap(v164, v179[8], v157);
            if (v180)
            {
              v181 = [MEMORY[0x277CCACA8] stringWithUTF8String:v180];
              v178 = v158;
            }

            else
            {
LABEL_202:
              v178 = v158;
              v181 = &stru_2860BD438;
            }

LABEL_196:

            v162 = v160[1];
            v158 = v181;
            goto LABEL_197;
          }

          if (v165 != -16339)
          {
LABEL_194:
            v178 = v159;
            v159 = &stru_2860BD438;
            goto LABEL_195;
          }
        }

        v176 = GTTraceFunc_argumentBytesWithMap((v630[3] + (v163 << 6)), *(v164 + 13), v157);
        v177 = GTTraceFunc_argumentBytesWithMap(v164, v176[8], v157);
        if (!v177)
        {
          goto LABEL_194;
        }

        [MEMORY[0x277CCACA8] stringWithUTF8String:v177];
        v159 = v178 = v159;
LABEL_195:
        v181 = v158;
        goto LABEL_196;
      }

      if (v165 > -15069)
      {
        v167 = (v165 + 14950) > 0x2D || ((1 << (v165 + 102)) & 0x280000000001) == 0;
        v168 = -15068;
      }

      else
      {
        v167 = (v165 + 15313) > 0x17 || ((1 << (v165 - 47)) & 0x800041) == 0;
        v168 = -15127;
      }

LABEL_135:
      if (!v167 || v165 == v168)
      {
        goto LABEL_140;
      }

LABEL_165:
      if (GTFenumIsSampledCall(*(v164 + 8), v608))
      {
        InclusiveRange = GroupBuilder_findInclusiveRange(*(v615 + 12), *(v615 + 24), v163);
        if (v155 == InclusiveRange)
        {
          v184 = v155;
        }

        else
        {
          v184 = InclusiveRange;
          v185 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v184)
          {
            v186 = v184;
            do
            {
              v187 = v630[3] + (*v186 << 6);
              v188 = *(v187 + 8);
              if (GTFenum_isPushDebugGroup(v188))
              {
                if (v188 <= -16245)
                {
                  v189 = v188 == -16374 || v188 == -16323;
                  v190 = -16283;
                }

                else if (v188 > -15883)
                {
                  v189 = v188 == -15786;
                  v190 = -15882;
                }

                else
                {
                  v189 = v188 == -16244;
                  v190 = -16065;
                }

                if (v189 || v188 == v190)
                {
                  v192 = GTTraceFunc_argumentBytesWithMap(v187, *(v187 + 13), v157);
                  v193 = GTTraceFunc_argumentBytesWithMap(v187, v192[8], v157);
                  if (v193)
                  {
                    v194 = [MEMORY[0x277CCACA8] stringWithUTF8String:v193];
                    [v185 addObject:v194];
                  }
                }
              }

              v195 = v186[2];
              if (v195)
              {
                v186 -= 6 * v195;
              }

              else
              {
                v186 = 0;
              }
            }

            while (v195);
          }

          v196 = v185;
          v197 = [v196 count];
          if (v197 >= 2)
          {
            v198 = 0;
            v199 = v197 >> 1;
            v200 = v197 - 1;
            do
            {
              [v196 exchangeObjectAtIndex:v198++ withObjectAtIndex:v200--];
            }

            while (v199 != v198);
          }

          v201 = [v196 componentsJoinedByString:@"->"];

          v592 = v201;
        }

        v178 = [MEMORY[0x277CCABB0] numberWithInt:v163];
        v709 = v178;
        v710 = v158;
        v711 = v159;
        v712 = v592;
        v202 = [MEMORY[0x277CBEA60] arrayWithObjects:&v709 count:4];
        [v588 addObject:v202];

        v155 = v184;
        goto LABEL_195;
      }

      if (GTFenum_isEndEncoding(v165))
      {
        goto LABEL_194;
      }

      if (GTFenum_isEndCommandBuffer(v165))
      {
        goto LABEL_202;
      }

      v178 = v158;
      v181 = &stru_2860BD438;
      if (v165 == -15343)
      {
        goto LABEL_196;
      }

LABEL_197:
      ++v163;
    }

    while (v163 < v162);
    v154 = *(v615 + 12);
LABEL_205:
    v156 = v160[3] + v603;
LABEL_206:
    ++v156;
  }

  while (v156 < v154);
LABEL_223:

  if ((v608 & 1) == 0)
  {
    v699[0] = @"MetalPluginName";
    v699[1] = @"GPUState";
    v700[0] = v591;
    v700[1] = &unk_2860D67D0;
    v232 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v700 forKeys:v699 count:2];
    v577 = GTMTLReplayClient_queryShaderInfo(Controller, &v673, v232);

    v233 = [v577 objectForKeyedSubscript:@"derivedCounterData"];
    v234 = [v233 mutableCopy];

    if (*(a2 + 56))
    {
      v235 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      v236 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 56)];
      v237 = GTMTLReplayClient_loadDerivedCounterInfo(v235, v236);

      v238 = GTMTLReplayClient_mergeDerivedCounterInfo(v234, v237);
      v239 = [v238 mutableCopy];

      v240 = v239;
    }

    else
    {
      v240 = v234;
    }

    v575 = v240;
    v325 = [v240 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    v326 = [v325 mutableCopy];

    verifyCounterDictionary(v326);
    v578 = v326;
    v327 = [v578 objectForKeyedSubscript:@"DerivedCounters"];
    v226 = [v327 mutableCopy];

    v328 = [v578 objectForKeyedSubscript:@"Instruments"];
    v631 = v328;
    if (v328)
    {
      v329 = [v328 objectForKeyedSubscript:@"Profiles"];
      v330 = v329;
      if (v329)
      {
        v331 = [v329 allKeys];
        v332 = v331;
        if (v331)
        {
          v687 = 0u;
          v688 = 0u;
          v685 = 0u;
          v686 = 0u;
          v333 = [v331 countByEnumeratingWithState:&v685 objects:&v709 count:16];
          if (v333)
          {
            v617 = *v686;
            v622 = v330;
            obja = v332;
            do
            {
              v625 = 0;
              v604 = v333;
              do
              {
                if (*v686 != v617)
                {
                  objc_enumerationMutation(obja);
                }

                v334 = [v622 objectForKeyedSubscript:*(*(&v685 + 1) + 8 * v625)];
                v335 = v334;
                if (v334)
                {
                  v336 = [v334 objectForKeyedSubscript:@"DerivedCounters"];
                  v683 = 0u;
                  v684 = 0u;
                  v681 = 0u;
                  v682 = 0u;
                  v337 = [v336 countByEnumeratingWithState:&v681 objects:&v705 count:16];
                  v610 = v335;
                  if (v337)
                  {
                    v338 = *v682;
                    do
                    {
                      for (i = 0; i != v337; ++i)
                      {
                        if (*v682 != v338)
                        {
                          objc_enumerationMutation(v336);
                        }

                        v340 = [*(*(&v681 + 1) + 8 * i) allValues];
                        v679 = 0u;
                        v680 = 0u;
                        v677 = 0u;
                        v678 = 0u;
                        v341 = [v340 countByEnumeratingWithState:&v677 objects:&v701 count:16];
                        if (v341)
                        {
                          v342 = *v678;
                          do
                          {
                            for (j = 0; j != v341; ++j)
                            {
                              if (*v678 != v342)
                              {
                                objc_enumerationMutation(v340);
                              }

                              [v226 removeObjectForKey:*(*(&v677 + 1) + 8 * j)];
                            }

                            v341 = [v340 countByEnumeratingWithState:&v677 objects:&v701 count:16];
                          }

                          while (v341);
                        }
                      }

                      v337 = [v336 countByEnumeratingWithState:&v681 objects:&v705 count:16];
                    }

                    while (v337);
                  }

                  v335 = v610;
                }

                ++v625;
              }

              while (v625 != v604);
              v332 = obja;
              v333 = [obja countByEnumeratingWithState:&v685 objects:&v709 count:16];
              v330 = v622;
            }

            while (v333);
          }
        }
      }

      v328 = v631;
    }

    [v578 setObject:v226 forKeyedSubscript:@"DerivedCounters"];
    verifyCounterDictionary(v578);
    [v575 setObject:v578 forKeyedSubscript:@"DerivedCounterDictionary"];
    v344 = MEMORY[0x277CBEBC0];
    v345 = [v586 stringByAppendingString:@"_derivedCounterInfoResult.plist"];
    v346 = [v344 fileURLWithPath:v345 isDirectory:0 relativeToURL:v590];
    [v575 writeToURL:v346 atomically:0];

    v574 = GTMTLReplayHost_rawCounters(v226);
    if (![v574 count])
    {
      if (g_runningInCI)
      {
        v349 = "#CI_ERROR# ";
      }

      else
      {
        v349 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 917, 1, "%s%s %u: No raw counters remain from derived counter list: %@\n", v347, v348, v349);
    }

    v350 = GTMTLReplayHost_rawCountersToNormalizeSet(v226);
    v697[0] = @"NoBlitSampling";
    v697[1] = @"SampleEncoders";
    v698[0] = MEMORY[0x277CBEC38];
    v698[1] = MEMORY[0x277CBEC38];
    v697[2] = @"SplitEncoderData";
    v697[3] = @"profileCounters";
    v698[2] = MEMORY[0x277CBEC28];
    v698[3] = v574;
    v697[4] = @"NormalizedCounters";
    v572 = v350;
    v698[4] = v350;
    v571 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v698 forKeys:v697 count:5];
    v351 = GTMTLReplayClient_derivedCounterData(Controller, &v673, v571);
    v576 = [v351 mutableCopy];

    v695 = @"frameProfile";
    v352 = [v577 objectForKeyedSubscript:?];
    v696 = v352;
    v353 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v696 forKeys:&v695 count:1];
    [v576 setObject:v353 forKeyedSubscript:@"Timing Data"];

    v356 = [v576 objectForKeyedSubscript:@"EncoderData"];
    if (!v356)
    {
      if (g_runningInCI)
      {
        v357 = "#CI_ERROR# ";
      }

      else
      {
        v357 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_CLI.m", "GTMTLReplay_CLI", 936, 1, "%s%s %u: encoderData is nil\n", v354, v355, v357);
    }

    v358 = GTMTLReplayHost_collectSoftwareEncoderCounters(*Controller, 0);
    v359 = ComputeDerivedCounters(v575, v356, v358);
    v360 = [v359 mutableCopy];

    [v360 setObject:v588 forKeyedSubscript:@"TraceInformation"];
    v573 = [v360 copy];
    v361 = MEMORY[0x277CBEBC0];
    v362 = [v586 stringByAppendingString:@"_encoder_derivedComputedData.plist"];
    v363 = [v361 fileURLWithPath:v362 isDirectory:0 relativeToURL:v590];
    [v573 writeToURL:v363 atomically:0];

    v364 = *Controller;
    v623 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v583 = v364;
    v579 = v364[15];
    v365 = *(v579 + 12);
    if (v365 < 1)
    {
LABEL_353:
      v397 = [v623 copy];

      v398 = ComputeDerivedCounters(v575, v576, v397);
      v399 = [v398 mutableCopy];

      [v399 setObject:v588 forKeyedSubscript:@"TraceInformation"];
      v633 = [v399 copy];
      v400 = MEMORY[0x277CBEBC0];
      v401 = [v586 stringByAppendingString:@"_derivedComputedData.plist"];
      v402 = [v400 fileURLWithPath:v401 isDirectory:0 relativeToURL:v590];
      [v633 writeToURL:v402 atomically:0];

      v403 = MEMORY[0x277CBEBC0];
      v404 = [v586 stringByAppendingString:@"_derivedCounterDataFromDeviceResult.plist"];
      v405 = [v403 fileURLWithPath:v404 isDirectory:0 relativeToURL:v590];
      [v576 writeToURL:v405 atomically:0];

      v406 = [v633 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v407 = [v406 objectForKeyedSubscript:@"counters"];

      v693[0] = @"PerCounterDrawCallData";
      v408 = [v633 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v409 = [v408 objectForKeyedSubscript:@"AverageSamples"];
      v410 = GTMTLReplayHost_createPerCounterCommandData(v407, v409);
      v694[0] = v410;
      v693[1] = @"PerCounterEncoderCallData";
      v411 = [v573 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v412 = [v411 objectForKeyedSubscript:@"AverageSamples"];
      v413 = GTMTLReplayHost_createPerCounterCommandData(v407, v412);
      v694[1] = v413;
      v693[2] = @"MetalPluginName";
      v414 = [v575 objectForKeyedSubscript:?];
      v694[2] = v414;
      v415 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v694 forKeys:v693 count:3];

      v416 = [v633 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v417 = [v416 objectForKeyedSubscript:@"AverageSamples"];
      verifyPerCounterCommandData(v415, @"PerCounterDrawCallData", v407, [v417 count]);

      v418 = [v573 objectForKeyedSubscript:@"derivedCounterDataForBottleneckAnalysis"];
      v419 = [v418 objectForKeyedSubscript:@"AverageSamples"];
      verifyPerCounterCommandData(v415, @"PerCounterEncoderCallData", v407, [v419 count]);

      v420 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v415 options:1 error:0];
      v421 = MEMORY[0x277CBEBC0];
      v422 = [v586 stringByAppendingPathExtension:@"json"];
      v423 = [v421 fileURLWithPath:v422 isDirectory:0 relativeToURL:v590];
      [v420 writeToURL:v423 atomically:0];

      goto LABEL_355;
    }

    v366 = 0;
    v593 = v364[2];
    v605 = v364[16];
    while (1)
    {
      v582 = v366;
      v367 = (*(v579 + 24) + 24 * v366);
      if (GTMTLReplayHost_IsFuncEnumSampledEncoder(*(*(v605 + 24) + (*v367 << 6) + 8), 0, 0))
      {
        RenderPassDescriptor = GetRenderPassDescriptor();
        v626 = RenderPassDescriptorContainsClear(RenderPassDescriptor);
        v369 = *v367;
        objb = v367;
        if (v369 + 1 < v367[1])
        {
          v370 = v369 + 1;
          while (1)
          {
            v611 = v370;
            v371 = *(v605 + 24) + (v370 << 6);
            v372 = *(v371 + 8);
            if (!GTFenumIsSampledCall(v372, 0))
            {
              break;
            }

            v373 = SoftwareCounterForFunc(v371, v593);
            v375 = v374;
            v376 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v626];
            v705 = v376;
            v377 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v373];
            v706 = v377;
            v378 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v375];
            v707 = v378;
            v379 = [MEMORY[0x277CBEA60] arrayWithObjects:&v705 count:3];
            [v623 addObject:v379];

LABEL_349:
            v370 = v611 + 1;
            if (v611 + 1 >= objb[1])
            {
              goto LABEL_350;
            }
          }

          if (v372 >> 2 != 1073737833)
          {
            goto LABEL_349;
          }

          GetExecuteCommandsInBufferArgs(&v709, v371, v583[2]);
          v716 = 0;
          v715 = 0u;
          memset(v714, 0, sizeof(v714));
          Object = GTMTLSMContext_getObject(*v583[5], v709, *v371);
          GTMTLCreateIndirectCommandEncoder(v714, Object[14]);
          v381 = v711;
          if (!v711)
          {
            goto LABEL_349;
          }

          v382 = 0;
          v632 = v712;
          v383 = v716;
          v384 = v714[1];
          v618 = *(&v715 + 1);
          v385 = v710 << 32;
          while (2)
          {
            v386 = 0;
            v387 = v632 + v383 * (v385 >> 32);
            v388 = *&v387[v384];
            if (v388 <= 1)
            {
              if (!v388)
              {
                goto LABEL_348;
              }

              v389 = 0;
              if (v388 != 1)
              {
                goto LABEL_347;
              }

              v386 = 0;
              v390 = &v387[v618 + 24];
            }

            else if (v388 == 2)
            {
              v391 = &v387[v618];
              v386 = *(v391 + 1);
              v390 = v391 + 32;
            }

            else
            {
              if (v388 != 4)
              {
                v389 = 0;
                if (v388 == 8)
                {
                  v386 = 0;
                  v390 = &v387[v618 + 64];
                  break;
                }

LABEL_347:
                v392 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v626];
                v701 = v392;
                v393 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v386];
                v702 = v393;
                v394 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v389];
                v703 = v394;
                v395 = [MEMORY[0x277CBEA60] arrayWithObjects:&v701 count:3];
                [v623 addObject:v395];

LABEL_348:
                ++v382;
                v385 += 0x100000000;
                if (v381 <= v382)
                {
                  goto LABEL_349;
                }

                continue;
              }

              v386 = 0;
              v390 = &v387[v618 + 56];
            }

            break;
          }

          v389 = *v390;
          goto LABEL_347;
        }

LABEL_350:
        v396 = objb[3] + v582;
        v365 = *(v579 + 12);
      }

      else
      {
        v396 = v582;
      }

      v366 = v396 + 1;
      if (v366 >= v365)
      {
        goto LABEL_353;
      }
    }
  }

  v219 = [Controller[1] defaultDevice];
  v220 = DYMTLReplayFrameProfiler_loadAnalysis(v219);
  v577 = [v220 mutableCopy];

  v221 = [v577 objectForKeyedSubscript:@"DerivedCounterDictionary"];
  verifyCounterDictionary(v221);
  v575 = v221;
  v578 = [v221 objectForKeyedSubscript:@"DerivedCounters"];
  v222 = GTMTLReplayHost_rawCounters(v578);
  [v577 setObject:v222 forKeyedSubscript:@"profileCounters"];

  v223 = GTMTLReplayHost_generateDerivedDataPayload(*Controller, 1);
  v224 = [v223 mutableCopy];

  v574 = GTMTLReplayHost_rawCountersToNormalizeSet(v578);
  [v224 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NoBlitSampling"];
  [v224 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SampleEncoders"];
  [v224 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SplitEncoderData"];
  [v224 setObject:v574 forKeyedSubscript:@"NormalizedCounters"];
  [v224 setObject:v577 forKeyedSubscript:@"derivedCounterInfo"];
  [v224 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseMTLCounters"];
  [v224 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseKicktimestamps"];
  v225 = [MEMORY[0x277CCABB0] numberWithInt:obj];
  [v224 setObject:v225 forKeyedSubscript:@"gpuTarget"];

  if ((obj & 0x80000000) != 0)
  {
    GTMTLReplayClient_embeddedDerivedCounterData(Controller, &v673, v577);
  }

  v226 = v224;
  [v226 setObject:v591 forKeyedSubscript:@"MetalPluginName"];
  v576 = [v590 path];
  v571 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  if (g_runningInCI == 1)
  {
    v227 = v226;
    v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"Creating Streaming Derived Counters Helper"];
    v229 = [v228 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v230 = *MEMORY[0x277D85E08];
    v231 = v229;
    fprintf(v230, "#CI-INFO# %s\n", [v229 UTF8String]);

    v226 = v227;
  }

  GTMTLReplayClient_streamDerivedCounterData(Controller, &v673, v226);
  [v674 waitUntilAllOperationsAreFinished];
  v572 = v226;
LABEL_355:

LABEL_395:
  v93 = v577;
LABEL_396:

LABEL_397:
  if (g_runningInCI == 1)
  {
    v509 = [MEMORY[0x277CCACA8] stringWithFormat:@"commandQueue finish"];
    v510 = [v509 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v511 = *MEMORY[0x277D85E08];
    v512 = v510;
    fprintf(v511, "#CI-INFO# %s\n", [v510 UTF8String]);
  }

  v513 = [Controller[1] defaultCommandQueue];
  [v513 finish];
  [v674 waitUntilAllOperationsAreFinished];
  if (g_runningInCI == 1)
  {
    v514 = [MEMORY[0x277CCACA8] stringWithFormat:@"normal exit"];
    v515 = [v514 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v516 = *MEMORY[0x277D85E08];
    v517 = v515;
    fprintf(v516, "#CI-INFO# %s\n", [v515 UTF8String]);
  }

  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(&v659);
  v16 = 0;
LABEL_402:

  v518 = *MEMORY[0x277D85DE8];
  return v16;
}