id NewLibraryWithSource(uint64_t a1, void *a2, char *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = StringFromArchive(**a1, *(a1 + 184), a3);
  if ([v10 libraryType] == 1)
  {
    v12 = [v10 installName];
    v13 = [v12 hasPrefix:@"/"];

    if (v13)
    {
      v14 = *(a1 + 22648);
      v15 = [v10 installName];
      v16 = [v15 substringFromIndex:1];
      v17 = [v14 URLByAppendingPathComponent:v16];

      v18 = [v17 path];
      [v10 setInstallName:v18];
    }
  }

  v24 = 0;
  v19 = [v9 newLibraryWithSource:v11 options:v10 error:&v24];
  v20 = v24;
  v21 = v20;
  if (a5)
  {
    v22 = v20;
    *a5 = v21;
  }

  ValidateLibrary(v19);
  objc_claimAutoreleasedReturnValue();

  return v19;
}

id GetDynamicLibraryURL(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a4);
  v9 = GTTraceFunc_argumentBytesWithMap(a3, a2, a4);
  v10 = *(v8 + 1);

  return GTMTLReplayController_dumpLibrary(a1, v9, v10);
}

void GTMTLReplayController_defaultDispatchFunction(uint64_t a1, uint64_t a2)
{
  if ((qword_27F09CF90 & 0x10000000) != 0)
  {
    v4 = *(a1 + 22568);
    if (v4 >= 1 && v4 == *(a1 + 22560))
    {
      return;
    }
  }

  if ((GT_SUPPORT_0 & 0x80000) != 0)
  {
    v5 = *(*a1 + 16);
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    if (v7 <= -15616)
    {
      if (v7 <= -16164)
      {
        if (v7 <= -16314)
        {
          if (v7 == -16370 || v7 == -16314)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (v7 == -16313)
        {
LABEL_40:
          v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v5);
          v14 = [v6 bufferForKey:*(v13 + 1)];
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
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
          v31 = 0u;
          v15 = *(v13 + 1);
          *buf = 22;
          v30 = v15;
          *(&v31 + 1) = GTTraceFunc_argumentBytesWithMap(a2, v13[40], v5);
          *(&v32 + 1) = *(v13 + 2);
          GTMTLReplayController_restoreMTLBufferContents(a1, buf);

          goto LABEL_74;
        }

        v12 = -16312;
        goto LABEL_39;
      }

      if (v7 <= -15779)
      {
        v8 = v7 + 16163;
        if (v8 <= 0x2E && ((1 << v8) & 0x680000000001) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if (v7 <= -15706)
      {
        if (v7 == -15778)
        {
LABEL_74:

          return;
        }

        v12 = -15707;
LABEL_39:
        if (v7 == v12)
        {
          goto LABEL_40;
        }

LABEL_73:
        GTMTLReplayController_defaultDispatchFunction_noPinning(a1, a2);
        goto LABEL_74;
      }

      if (v7 == -15705)
      {
        goto LABEL_74;
      }

      if (v7 != -15659)
      {
        goto LABEL_73;
      }

      v20 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v5);
      Object = GTMTLSMContext_getObject(**(*a1 + 40), *v20, *a2 - 1);
      v18 = Object;
      if ((GT_SUPPORT_0 & 0x100000) == 0 && Object[20])
      {
        if (s_logUsingOsLog == 1)
        {
          v22 = gt_tagged_log(0xAu);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_24D764000, v22, OS_LOG_TYPE_ERROR, "warning: Acceleration structure indirection is not supported, but acceleration structures have indices", buf, 2u);
          }
        }

        else
        {
          v27 = *MEMORY[0x277D85DF8];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"warning: Acceleration structure indirection is not supported, but acceleration structures have indices"];
          fprintf(v27, "%s\n", [v28 UTF8String]);
        }
      }

      if (v18[6])
      {
        if ((GT_SUPPORT_0 & 0x100000) == 0 || !v18[20])
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

LABEL_69:
      if (v18[19] || ((GT_SUPPORT_0 & 0x100000) == 0 || !v18[20]) && v18[21])
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    if (v7 > -15356)
    {
      if (v7 > -15353)
      {
        if (v7 == -15352 || v7 == -15351)
        {
          if ((GT_SUPPORT_0 & 0x80000) != 0)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        v12 = -10237;
        goto LABEL_39;
      }

      if (v7 == -15355 || v7 == -15354)
      {
LABEL_24:
        v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v5);
        v11 = GTMTLSMContext_getObject(**(*a1 + 40), *(v10 + 1), *a2);
        if ((GT_SUPPORT_0 & 0x100000) == 0 || !v11[20])
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      v9 = -15353;
LABEL_23:
      if (v7 != v9)
      {
        goto LABEL_73;
      }

      goto LABEL_24;
    }

    if (v7 > -15510)
    {
      if (v7 == -15509 || v7 == -15464)
      {
        goto LABEL_74;
      }

      v9 = -15356;
      goto LABEL_23;
    }

    if (v7 == -15615)
    {
      v23 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v5);
      v24 = GTMTLSMContext_getObject(**(*a1 + 40), *(v23 + 1), *a2);
      v18 = v24;
      if ((GT_SUPPORT_0 & 0x100000) != 0 || !v24[20])
      {
        goto LABEL_69;
      }

      if (s_logUsingOsLog == 1)
      {
        v19 = gt_tagged_log(0xAu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          goto LABEL_77;
        }

LABEL_62:

        goto LABEL_69;
      }
    }

    else
    {
      if (v7 != -15614)
      {
        goto LABEL_73;
      }

      v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v5);
      v17 = GTMTLSMContext_getObject(**(*a1 + 40), *(v16 + 1), *a2);
      v18 = v17;
      if ((GT_SUPPORT_0 & 0x100000) != 0 || !v17[20])
      {
        goto LABEL_69;
      }

      if (s_logUsingOsLog == 1)
      {
        v19 = gt_tagged_log(0xAu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
LABEL_77:
          _os_log_error_impl(&dword_24D764000, v19, OS_LOG_TYPE_ERROR, "warning: Acceleration structure indirection is not supported, but acceleration structures have indices", buf, 2u);
          goto LABEL_62;
        }

        goto LABEL_62;
      }
    }

    v25 = *MEMORY[0x277D85DF8];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"warning: Acceleration structure indirection is not supported, but acceleration structures have indices"];
    fprintf(v25, "%s\n", [v26 UTF8String]);

    goto LABEL_69;
  }

  GTMTLReplayController_defaultDispatchFunction_noPinning(a1, a2);
}

id _MakeMTLTextureDescriptor()
{
  v0 = MakeMTLTextureDescriptor();
  v1 = [v0 resourceOptions];
  v2 = v1 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
  if ((qword_27F09CF90 & 0x100000) == 0)
  {
    v2 = v1;
  }

  if ((qword_27F09CF90 & 0x80000) != 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFCFFLL;
  }

  else
  {
    v3 = v2;
  }

  [v0 setResourceOptions:v3];

  return v0;
}

void MTLComputeCommandEncoder_useHeap(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  [v9 useHeap:a5];
  if ((qword_27F09CF90 & 0x200000000) != 0)
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = *(v10 + 40);
    v13 = *a2;
    v14 = *(a3 + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __MTLComputeCommandEncoder_useHeap_block_invoke;
    v15[3] = &unk_279658188;
    v16 = v9;
    UseHeapTextures(v12, v11, v13, v14, v15);
  }
}

void MTLComputeCommandEncoder_useHeaps_count(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  [v20 useHeaps:a5 count:a6];
  if ((qword_27F09CF90 & 0x200000000) != 0 && a6)
  {
    v11 = 0;
    v19 = *(*a1 + 16);
    do
    {
      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v19);
      v13 = a6;
      v14 = a1[1];
      v15 = *(*a1 + 40);
      v16 = *a2;
      v17 = *&v12[8 * v11];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __MTLComputeCommandEncoder_useHeaps_count_block_invoke;
      v21[3] = &unk_279658188;
      v22 = v20;
      v18 = v14;
      a6 = v13;
      UseHeapTextures(v15, v18, v16, v17, v21);

      ++v11;
    }

    while (v13 != v11);
  }
}

id MTLDevice_newAccelerationStructureWithDescriptor(id *a1, unint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = *(*a1 + 2);
  v12 = a1[1];
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
LABEL_13:
    v16 = [a1[1] deviceForKey:*a3];
    goto LABEL_14;
  }

  v13 = [v9 heapAccelerationStructureSizeAndAlignWithDescriptor:v10];
  if (!v13 || (v14 = v13, v15 = objc_alloc_init(MEMORY[0x277CD6E40]), [v15 setType:0], objc_msgSend(v15, "setSize:", v14), objc_msgSend(v15, "setResourceOptions:", 32), v16 = objc_msgSend(v9, "newHeapWithDescriptor:", v15), v15, !v16))
  {
    if (s_logUsingOsLog == 1)
    {
      v18 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a3 + 8);
        *buf = 134217984;
        *&buf[4] = v32;
        _os_log_error_impl(&dword_24D764000, v18, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v19 = *MEMORY[0x277D85DF8];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", *(a3 + 8)];
      fprintf(v19, "%s\n", [v20 UTF8String]);
    }

    goto LABEL_13;
  }

  if (s_logUsingOsLog == 1)
  {
    v17 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a3 + 8);
      *buf = 134218240;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = [v16 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v17, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v34 = *MEMORY[0x277D85E08];
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", *(a3 + 8), objc_msgSend(v16, "gpuAddress")];
    fprintf(v34, "%s\n", [v31 UTF8String]);
  }

LABEL_14:
  if ((GT_SUPPORT_0 & 0x100000) != 0)
  {
    memset(buf, 0, sizeof(buf));
    v25 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v11);
    v26 = [v12 resources];
    v27 = MakeMTLAccelerationStructureDescriptor(v25, v26);
    if (v16)
    {
      [v16 accelerationStructureSizesWithDescriptor:v27];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    Object = GTMTLSMContext_getObject(**(*a1 + 5), *(a3 + 8), *a2);
    v24 = [v16 newAccelerationStructureWithSize:*buf resourceIndex:Object[20]];
  }

  else
  {
    v21 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v11);
    v22 = [v12 resources];
    v23 = MakeMTLAccelerationStructureDescriptor(v21, v22);
    v24 = [v16 newAccelerationStructureWithDescriptor:v23];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

id MTLDevice_newAccelerationStructureWithSize(id *a1, unint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = v9;
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
LABEL_13:
    v14 = [a1[1] deviceForKey:*a3];
    goto LABEL_14;
  }

  v11 = [v9 heapAccelerationStructureSizeAndAlignWithSize:a5];
  if (!v11 || (v12 = v11, v13 = objc_alloc_init(MEMORY[0x277CD6E40]), [v13 setType:0], objc_msgSend(v13, "setSize:", v12), objc_msgSend(v13, "setResourceOptions:", 32), v14 = objc_msgSend(v10, "newHeapWithDescriptor:", v13), v13, !v14))
  {
    if (s_logUsingOsLog == 1)
    {
      v16 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v25 = a3[1];
        *buf = 134217984;
        v28 = v25;
        _os_log_error_impl(&dword_24D764000, v16, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", a3[1]];
      fprintf(v17, "%s\n", [v18 UTF8String]);
    }

    goto LABEL_13;
  }

  if (s_logUsingOsLog == 1)
  {
    v15 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v26 = a3[1];
      *buf = 134218240;
      v28 = v26;
      v29 = 2048;
      v30 = [v14 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v15, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v23 = *MEMORY[0x277D85E08];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", a3[1], objc_msgSend(v14, "gpuAddress")];
    fprintf(v23, "%s\n", [v24 UTF8String]);
  }

LABEL_14:
  if ((GT_SUPPORT_0 & 0x100000) != 0)
  {
    v19 = [v14 newAccelerationStructureWithSize:a3[2] resourceIndex:{GTMTLSMContext_getObject(**(*a1 + 5), a3[1], *a2)[20]}];
  }

  else
  {
    v19 = [v14 newAccelerationStructureWithSize:a3[2]];
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id MTLDevice_newAccelerationStructureWithSize_resourceIndex(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
LABEL_13:
    v14 = [*(a1 + 8) deviceForKey:*a2];
    goto LABEL_14;
  }

  v11 = [v9 heapAccelerationStructureSizeAndAlignWithSize:a4];
  if (!v11 || (v12 = v11, v13 = objc_alloc_init(MEMORY[0x277CD6E40]), [v13 setType:0], objc_msgSend(v13, "setSize:", v12), objc_msgSend(v13, "setResourceOptions:", 32), v14 = objc_msgSend(v10, "newHeapWithDescriptor:", v13), v13, !v14))
  {
    if (s_logUsingOsLog == 1)
    {
      v16 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = a2[1];
        *buf = 134217984;
        v27 = v24;
        _os_log_error_impl(&dword_24D764000, v16, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", a2[1]];
      fprintf(v17, "%s\n", [v18 UTF8String]);
    }

    goto LABEL_13;
  }

  if (s_logUsingOsLog == 1)
  {
    v15 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v25 = a2[1];
      *buf = 134218240;
      v27 = v25;
      v28 = 2048;
      v29 = [v14 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v15, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v22 = *MEMORY[0x277D85E08];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", a2[1], objc_msgSend(v14, "gpuAddress")];
    fprintf(v22, "%s\n", [v23 UTF8String]);
  }

LABEL_14:
  v19 = [v14 newAccelerationStructureWithSize:a4 resourceIndex:a5];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id MTLDevice_newAccelerationStructureWithSize_withDescriptor(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v11 = [v9 heapAccelerationStructureSizeAndAlignWithSize:a4];
  if (!v11 || (v12 = v11, v13 = objc_alloc_init(MEMORY[0x277CD6E40]), [v13 setType:0], objc_msgSend(v13, "setSize:", v12), objc_msgSend(v13, "setStorageMode:", objc_msgSend(v10, "storageMode")), v14 = objc_msgSend(v9, "newHeapWithDescriptor:", v13), v13, !v14))
  {
    if (s_logUsingOsLog == 1)
    {
      v16 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v26 = a2[1];
        *buf = 134217984;
        v29 = v26;
        _os_log_error_impl(&dword_24D764000, v16, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", a2[1]];
      fprintf(v17, "%s\n", [v18 UTF8String]);
    }

    goto LABEL_18;
  }

  if (s_logUsingOsLog == 1)
  {
    v15 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v27 = a2[1];
      *buf = 134218240;
      v29 = v27;
      v30 = 2048;
      v31 = [v14 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v15, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v19 = *MEMORY[0x277D85E08];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", a2[1], objc_msgSend(v14, "gpuAddress")];
    fprintf(v19, "%s\n", [v20 UTF8String]);
  }

  v21 = [v10 forceResourceIndex] ? objc_msgSend(v14, "newAccelerationStructureWithSize:resourceIndex:", a4, objc_msgSend(v10, "resourceIndex")) : objc_msgSend(v14, "newAccelerationStructureWithSize:", a4);
  v22 = v21;

  if (!v22)
  {
LABEL_18:
    v23 = [*(a1 + 8) deviceForKey:*a2];
    v22 = [v23 newAccelerationStructureWithSize:a4 withDescriptor:v10];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

id _MakeMTLComputePipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLComputePipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLComputePipelineDescriptor_initializePoolToken, &__block_literal_global_90);
  }

  v6 = MakeMTLComputePipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && a1[95] + a1[97] + a1[101])
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLComputePipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v13[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v13[1] = v9;
    memset(v12, 0, sizeof(v12));
    MakeMTLLinkedFunctionsWithResourceIndices(v12, (a1 + 94), v13, _MakeMTLComputePipelineDescriptor_pool);
    v10 = [v6 linkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v12);

    apr_pool_destroy(v8);
  }

  return v6;
}

id _MakeMTLRenderPipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLRenderPipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLRenderPipelineDescriptor_initializePoolToken, &__block_literal_global_98_3064);
  }

  v6 = MakeMTLRenderPipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && (a1[134] + a1[136] + a1[140] || a1[110] + a1[112] + a1[116]))
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLRenderPipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v15[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v15[1] = v9;
    memset(v14, 0, sizeof(v14));
    MakeMTLLinkedFunctionsWithResourceIndices(v14, (a1 + 133), v15, _MakeMTLRenderPipelineDescriptor_pool);
    memset(v13, 0, sizeof(v13));
    MakeMTLLinkedFunctionsWithResourceIndices(v13, (a1 + 109), v15, _MakeMTLRenderPipelineDescriptor_pool);
    v10 = [v6 vertexLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v14);

    v11 = [v6 fragmentLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v11, v13);

    apr_pool_destroy(v8);
  }

  return v6;
}

id _MakeMTLMeshRenderPipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLMeshRenderPipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLMeshRenderPipelineDescriptor_initializePoolToken, &__block_literal_global_100);
  }

  v6 = MakeMTLMeshRenderPipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && (a1[33] + a1[35] + a1[39] || a1[25] + a1[27] + a1[31] || a1[17] + a1[19] + a1[23]))
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLMeshRenderPipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v17[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v17[1] = v9;
    memset(v16, 0, sizeof(v16));
    MakeMTLLinkedFunctionsWithResourceIndices(v16, (a1 + 32), v17, _MakeMTLMeshRenderPipelineDescriptor_pool);
    memset(v15, 0, sizeof(v15));
    MakeMTLLinkedFunctionsWithResourceIndices(v15, (a1 + 24), v17, _MakeMTLMeshRenderPipelineDescriptor_pool);
    memset(v14, 0, sizeof(v14));
    MakeMTLLinkedFunctionsWithResourceIndices(v14, (a1 + 16), v17, _MakeMTLMeshRenderPipelineDescriptor_pool);
    v10 = [v6 objectLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v16);

    v11 = [v6 meshLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v11, v15);

    v12 = [v6 fragmentLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v12, v14);

    apr_pool_destroy(v8);
  }

  return v6;
}

id _MakeMTLTileRenderPipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLTileRenderPipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLTileRenderPipelineDescriptor_initializePoolToken, &__block_literal_global_102);
  }

  v6 = MakeMTLTileRenderPipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && a1[1] + a1[3] + a1[7])
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLTileRenderPipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v13[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v13[1] = v9;
    memset(v12, 0, sizeof(v12));
    MakeMTLLinkedFunctionsWithResourceIndices(v12, a1, v13, _MakeMTLTileRenderPipelineDescriptor_pool);
    v10 = [v6 linkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v12);

    apr_pool_destroy(v8);
  }

  return v6;
}

id MTLDevice_newTextureWithDescriptor(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ((qword_27F09CF90 & 0x80000000) == 0 || (v9 = [v7 heapTextureSizeAndAlignWithDescriptor:v8]) == 0)
  {
LABEL_16:
    v13 = [*(a1 + 8) deviceForKey:*a2];
    goto LABEL_17;
  }

  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x277CD6E40]);
  [v11 setType:0];
  [v11 setSize:v10];
  [v11 setResourceOptions:{objc_msgSend(v8, "resourceOptions")}];
  [v11 setStorageMode:{2 * ((objc_msgSend(v11, "storageMode") & 0xFFFFFFFFFFFFFFFELL) == 2)}];
  v12 = [v7 newHeapWithDescriptor:v11];
  if (!v12)
  {
    if (s_logUsingOsLog)
    {
      v15 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v24 = a2[1];
        *buf = 134217984;
        v26 = v24;
        _os_log_error_impl(&dword_24D764000, v15, OS_LOG_TYPE_ERROR, "MTLTexture %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v18 = *MEMORY[0x277D85DF8];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture %lld could not be backed by a MTLHeap", a2[1]];
      fprintf(v18, "%s\n", [v19 UTF8String]);
    }

    goto LABEL_16;
  }

  v13 = v12;
  if (s_logUsingOsLog)
  {
    v14 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v23 = a2[1];
      *buf = 134218240;
      v26 = v23;
      v27 = 2048;
      v28 = [v13 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v14, OS_LOG_TYPE_DEBUG, "MTLTexture %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture %lld backed by address 0x%llx (MTLHeap)", a2[1], objc_msgSend(v12, "gpuAddress")];
    fprintf(v16, "%s\n", [v17 UTF8String]);
  }

LABEL_17:
  v20 = [v13 newTextureWithDescriptor:v8];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id MTLHeap_newTextureWithDescriptor(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = *a1;
  if ((qword_27F09CF90 & 0x200000000) == 0 || ([*(v11 + 48) heapExtractedTextures], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v21 = [v10 resourceOptions];
    v22 = v21 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
    if ((qword_27F09CF90 & 0x100000) == 0)
    {
      v22 = v21;
    }

    if ((qword_27F09CF90 & 0x80000) != 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFFCFFLL;
    }

    else
    {
      v23 = v22;
    }

    [v10 setResourceOptions:v23];
    goto LABEL_16;
  }

  v13 = [*(v11 + 48) heapExtractedTextures];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 8)];
  v15 = [v13 indexOfObject:v14];

  v16 = [v10 resourceOptions];
  v17 = v16 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
  if ((qword_27F09CF90 & 0x100000) == 0)
  {
    v17 = v16;
  }

  if ((qword_27F09CF90 & 0x80000) != 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFCFFLL;
  }

  else
  {
    v18 = v17;
  }

  [v10 setResourceOptions:v18];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_16:
    if ([v9 type] == 1)
    {
      v24 = [v9 newTextureWithDescriptor:v10 offset:{*(GTMTLSMContext_lastFunction(**(v11 + 40), *(a3 + 8), *a2) + 56)}];
    }

    else
    {
      v24 = [v9 newTextureWithDescriptor:v10];
    }

    v20 = v24;
    goto LABEL_20;
  }

  v19 = [v9 device];
  v20 = [v19 newTextureWithDescriptor:v10];

LABEL_20:

  return v20;
}

id MTLHeap_newTextureWithDescriptor_offset(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if ((qword_27F09CF90 & 0x200000000) != 0 && (v11 = *a1, [*(*a1 + 48) heapExtractedTextures], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [*(v11 + 48) heapExtractedTextures];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 8)];
    v15 = [v13 indexOfObject:v14];

    v16 = [v10 resourceOptions];
    v17 = v16 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
    if ((qword_27F09CF90 & 0x100000) == 0)
    {
      v17 = v16;
    }

    if ((qword_27F09CF90 & 0x80000) != 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFFCFFLL;
    }

    else
    {
      v18 = v17;
    }

    [v10 setResourceOptions:v18];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [v9 device];
      v20 = [v19 newTextureWithDescriptor:v10];

      goto LABEL_19;
    }
  }

  else
  {
    v21 = [v10 resourceOptions];
    v22 = v21 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
    if ((qword_27F09CF90 & 0x100000) == 0)
    {
      v22 = v21;
    }

    if ((qword_27F09CF90 & 0x80000) != 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFFCFFLL;
    }

    else
    {
      v23 = v22;
    }

    [v10 setResourceOptions:v23];
  }

  if ((qword_27F09CF90 & 0x4000) != 0)
  {
    [v10 setCompressionMode:2];
  }

  v20 = [v9 newTextureWithDescriptor:v10 offset:a5];
LABEL_19:

  return v20;
}

void MTLRenderCommandEncoder_useHeap(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  [v9 useHeap:a5];
  if ((qword_27F09CF90 & 0x200000000) != 0)
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = *(v10 + 40);
    v13 = *a2;
    v14 = *(a3 + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __MTLRenderCommandEncoder_useHeap_block_invoke;
    v15[3] = &unk_279658188;
    v16 = v9;
    UseHeapTextures(v12, v11, v13, v14, v15);
  }
}

void MTLRenderCommandEncoder_useHeap_stages(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  [v11 useHeap:a5 stages:a6];
  if ((qword_27F09CF90 & 0x200000000) != 0)
  {
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v12 + 40);
    v15 = *a2;
    v16 = *(a3 + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __MTLRenderCommandEncoder_useHeap_stages_block_invoke;
    v17[3] = &unk_2796581B0;
    v18 = v11;
    v19 = a6;
    UseHeapTextures(v14, v13, v15, v16, v17);
  }
}

void MTLRenderCommandEncoder_useHeaps_count(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  [v20 useHeaps:a5 count:a6];
  if ((qword_27F09CF90 & 0x200000000) != 0 && a6)
  {
    v11 = 0;
    v19 = *(*a1 + 16);
    do
    {
      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v19);
      v13 = a6;
      v14 = a1[1];
      v15 = *(*a1 + 40);
      v16 = *a2;
      v17 = *&v12[8 * v11];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __MTLRenderCommandEncoder_useHeaps_count_block_invoke;
      v21[3] = &unk_279658188;
      v22 = v20;
      v18 = v14;
      a6 = v13;
      UseHeapTextures(v15, v18, v16, v17, v21);

      ++v11;
    }

    while (v13 != v11);
  }
}

void MTLRenderCommandEncoder_useHeaps_count_stages(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  [v22 useHeaps:a5 count:a6 stages:a7];
  if ((qword_27F09CF90 & 0x200000000) != 0 && a6)
  {
    v12 = 0;
    v20 = *(*a1 + 16);
    do
    {
      v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 24), v20);
      v14 = a1[1];
      v15 = *(*a1 + 40);
      v16 = *a2;
      v17 = a6;
      v18 = *&v13[8 * v12];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __MTLRenderCommandEncoder_useHeaps_count_stages_block_invoke;
      v23[3] = &unk_2796581B0;
      v24 = v22;
      v25 = a7;
      v19 = v18;
      a6 = v17;
      UseHeapTextures(v15, v14, v16, v19, v23);

      ++v12;
    }

    while (v17 != v12);
  }
}

id NewCommandBuffer(void *a1)
{
  if (g_commandBufferDescriptor)
  {
    [a1 commandBufferWithDescriptor:?];
  }

  else
  {
    [a1 commandBuffer];
  }
  v1 = ;

  return v1;
}

id MTLDevice_newBufferWithBytes_length_options(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = **a1;
  v7 = *(a1 + 184);
  v8 = *(*a1 + 16);
  v25 = *(a1 + 8);
  v9 = [v25 deviceForKey:*a3];
  p = *v7;
  v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 40), v8);
  FileWithFilename = GTCaptureArchive_getFileWithFilename(v6, v10);
  v12 = *(a3 + 24);
  if ((v12 & 0xF0) == 0x20 || (v13 = FileWithFilename, v14 = *(FileWithFilename + 24), (v14 & 2) == 0) && (v12 & 0xF) == 1)
  {
    v15 = [v9 newBufferWithLength:*(a3 + 16) options:{v12 & 0xFFFFFFFFFFEFFFFFLL, p}];
    v16 = *(a3 + 16);
    v17 = *(a1 + 24);
    v18 = [v17 bufferWithLength:v16 alignment:1];
    v19 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 40), v8);
    GTCaptureArchive_fillBuffer(v6, v7, v19, [v18 contents], *(a3 + 16), 0);
    v20 = [v17 blitCommandEncoder];

    v21 = [v18 heapBuffer];
    [v20 copyFromBuffer:v21 sourceOffset:objc_msgSend(v18 toBuffer:"heapLocation") destinationOffset:v15 size:{0, *(a3 + 16)}];

LABEL_5:
    v22 = p;
    goto LABEL_6;
  }

  if ((v14 & 2) == 0)
  {
    v15 = [v9 newBufferWithLength:*(a3 + 16) options:v12 & 0xFFFFFFFFFFEFFFFFLL];
    GTCaptureArchive_fillBufferCompressedDeflate(v6, *(a1 + 184), v13, [v15 contents], *(a3 + 16), 0);
    goto LABEL_5;
  }

  v22 = p;
  v15 = [v9 newBufferWithBytes:GTCaptureArchive_mapDataSeparateFile(v6 length:FileWithFilename options:{p, 0), *(a3 + 16), v12 & 0xFFFFFFFFFFEFFFFFLL}];
LABEL_6:
  apr_pool_clear(v22);

  return v15;
}

id _MakeIOSurface(uint64_t a1, void *a2)
{
  v94[10] = *MEMORY[0x277D85DE8];
  v75 = a2;
  v78 = a1;
  if (*(a1 + 104))
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:*(a1 + 104) length:*(a1 + 112) freeWhenDone:0];
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v74 = v6;
    a1 = v78;
    v9 = [v4 setWithObjects:{v5, v74, v7, v8, objc_opt_class(), 0}];
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v3 error:0];
    v76 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD29D0]];
  }

  else
  {
    v76 = 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
  [v11 setObject:v12 forKeyedSubscript:@"address"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 92)];
  v14 = MEMORY[0x277CD2928];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD2928]];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 94)];
  v16 = MEMORY[0x277CD28D0];
  [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277CD28D0]];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 84)];
  v18 = MEMORY[0x277CD28D8];
  [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD28D8]];

  v19 = MEMORY[0x277CD28B0];
  v20 = MEMORY[0x277CD28B8];
  v21 = MEMORY[0x277CD28C8];
  if (!*(a1 + 102))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 96)];
    [v11 setObject:v22 forKeyedSubscript:*v19];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 80)];
    [v11 setObject:v23 forKeyedSubscript:*v20];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 98)];
    [v11 setObject:v24 forKeyedSubscript:*v21];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 100)];
    [v11 setObject:v25 forKeyedSubscript:*MEMORY[0x277CD28C0]];
  }

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 8)];
  v27 = MEMORY[0x277CD28A8];
  v77 = v11;
  [v11 setObject:v26 forKeyedSubscript:*MEMORY[0x277CD28A8]];

  v28 = v76;
  if (v76)
  {
    v29 = *v14;
    v94[0] = *v27;
    v94[1] = v29;
    v30 = *v19;
    v94[2] = *v16;
    v94[3] = v30;
    v31 = *v21;
    v94[4] = *v20;
    v94[5] = v31;
    v32 = *v18;
    v94[6] = *MEMORY[0x277CD28C0];
    v94[7] = v32;
    v94[8] = @"IOSurfaceAddress";
    v94[9] = @"IOSurfaceProtectionOptions";
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:10];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v34 = v76;
    v35 = [v34 countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v88;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v88 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v87 + 1) + 8 * i);
          if (([v33 containsObject:v39] & 1) == 0)
          {
            v40 = [v34 objectForKeyedSubscript:v39];
            [v77 setObject:v40 forKeyedSubscript:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v36);
    }
  }

  v41 = v78;
  if (*(v78 + 102))
  {
    v42 = *MEMORY[0x277CD2900];
    v92[0] = *MEMORY[0x277CD2920];
    v92[1] = v42;
    v43 = *MEMORY[0x277CD28E8];
    v92[2] = *MEMORY[0x277CD28E0];
    v92[3] = v43;
    v44 = *MEMORY[0x277CD28F0];
    v92[4] = *MEMORY[0x277CD28F8];
    v92[5] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:6];
    v79 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v78 + 102)];
    v82 = [v76 objectForKeyedSubscript:*MEMORY[0x277CD2908]];
    v46 = 0x277CCA000uLL;
    if (*(v78 + 102))
    {
      v47 = 0;
      v81 = 0;
      do
      {
        v48 = (v78 + 16 + 16 * v47);
        v49 = *(v48 + 3);
        v50 = *v48;
        v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v52 = [*(v46 + 2992) numberWithUnsignedShort:*(v48 + 2)];
        [v51 setObject:v52 forKeyedSubscript:*MEMORY[0x277CD2920]];

        v53 = [*(v46 + 2992) numberWithUnsignedShort:*(v48 + 3)];
        [v51 setObject:v53 forKeyedSubscript:*MEMORY[0x277CD2900]];

        v54 = [*(v46 + 2992) numberWithUnsignedShort:*(v48 + 4)];
        [v51 setObject:v54 forKeyedSubscript:*MEMORY[0x277CD28E0]];

        v55 = [*(v46 + 2992) numberWithUnsignedInt:*v48];
        [v51 setObject:v55 forKeyedSubscript:*MEMORY[0x277CD28E8]];

        if (*(v48 + 5))
        {
          v56 = [*(v46 + 2992) numberWithUnsignedShort:?];
          [v51 setObject:v56 forKeyedSubscript:*MEMORY[0x277CD28F8]];
        }

        if (*(v48 + 6))
        {
          v57 = [*(v46 + 2992) numberWithUnsignedShort:?];
          [v51 setObject:v57 forKeyedSubscript:*MEMORY[0x277CD28F0]];
        }

        v58 = v50 * v49;
        v59 = [*(v46 + 2992) numberWithUnsignedInteger:v81];
        [v51 setObject:v59 forKeyedSubscript:*MEMORY[0x277CD2910]];

        v60 = [*(v46 + 2992) numberWithUnsignedInteger:v58];
        [v51 setObject:v60 forKeyedSubscript:*MEMORY[0x277CD2918]];

        if (v82)
        {
          v80 = v58;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v61 = [v82 objectAtIndexedSubscript:v47];
          v62 = [v61 countByEnumeratingWithState:&v83 objects:v91 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v84;
            do
            {
              for (j = 0; j != v63; ++j)
              {
                if (*v84 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v66 = *(*(&v83 + 1) + 8 * j);
                if (([v45 containsObject:v66] & 1) == 0)
                {
                  v67 = [v82 objectAtIndexedSubscript:v47];
                  v68 = [v67 objectForKeyedSubscript:v66];
                  [v51 setObject:v68 forKeyedSubscript:v66];
                }
              }

              v63 = [v61 countByEnumeratingWithState:&v83 objects:v91 count:16];
            }

            while (v63);
          }

          v41 = v78;
          v46 = 0x277CCA000;
          v58 = v80;
        }

        v69 = [v51 copy];
        [v79 addObject:v69];

        v81 += v58;
        ++v47;
      }

      while (v47 < *(v41 + 102));
    }

    v70 = [v79 copy];
    [v77 setObject:v70 forKeyedSubscript:*MEMORY[0x277CD2908]];

    v28 = v76;
  }

  v71 = [v75 iosurfaceForProperties:v77];

  v72 = *MEMORY[0x277D85DE8];

  return v71;
}

id MakeNSArray(uint64_t *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *a1++;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      v10 = [v5 objectForKeyedSubscript:v9];
      [v6 addObject:v10];

      --v7;
    }

    while (v7);
  }

  return v6;
}

id NewLibraryWithFile(void *a1, uint64_t a2, char *a3, const char *a4, int a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = *(a2 + 176);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a6];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (!v16)
  {
    if (!a3)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v17 = *(a2 + 160);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a6];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = MTLDevice_newLibraryWithFile(v13, v19, a7);
    }

    else
    {
      v21 = **a2;
      v22 = *(a2 + 184);
      FileWithFilename = GTCaptureArchive_getFileWithFilename(v21, a3);
      if (a5)
      {
        if (a4)
        {
          v24 = a4;
        }

        else
        {
          v24 = a3;
        }

        v25 = GTMTLReplayController_dumpLibrary(a2, a3, v24);
        v26 = MTLDevice_newLibraryWithFile(v13, v25, a7);
      }

      else
      {
        v27 = FileWithFilename;
        if ((*(FileWithFilename + 24) & 2) != 0)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v21];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
          v31 = [v29 stringByAppendingPathComponent:v30];

          v32 = [MEMORY[0x277CBEBC0] fileURLWithPath:v31];
          v20 = MTLDevice_newLibraryWithFile(v13, v32, a7);

          goto LABEL_15;
        }

        v28 = malloc_type_malloc(*(FileWithFilename + 8), 0x972F8E9AuLL);
        GTCaptureArchive_fillBufferCompressedDeflate(v21, v22, v27, v28, *(v27 + 8), 0);
        v25 = dispatch_data_create(v28, *(v27 + 8), 0, *MEMORY[0x277D85CB0]);
        v26 = MTLDevice_newLibraryWithData(v13, v25, a7);
      }

      v20 = v26;
    }

LABEL_15:
    v16 = v20;
  }

LABEL_16:

  return v16;
}

id _MakeMTLCompileOptions(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = MakeMTLCompileOptions(a1, a2);
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277CD6D10]);
  }

  v3 = v2;
  [v2 setDebuggingEnabled:1];

  return v3;
}

void UseHeapTextures(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v17 = a2;
  v9 = a5;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v10);
  v11 = newpool;
  v12 = apr_array_make(newpool, 4, 8);
  GTMTLSMContext_getHeapResourcesWithType(a1, a4, a3, 0x50, v12, v11);
  if (v12->nelts >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *&v12->elts[8 * v13];
      if (v14)
      {
        v15 = *(v14 + 8);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v17 textureForKey:{v15, v17}];
      v9[2](v9, v16);

      ++v13;
    }

    while (v13 < v12->nelts);
  }

  apr_pool_destroy(v11);
}

apr_array_header_t *MakeMTLLinkedFunctionsWithResourceIndices(apr_array_header_t **a1, uint64_t a2, uint64_t *a3, apr_pool_t *p)
{
  v8 = apr_array_make(p, *(a2 + 24), 8);
  v9 = apr_array_make(p, *(a2 + 56), 8);
  result = apr_array_make(p, *(a2 + 8), 8);
  v11 = result;
  v12 = *a3;
  v13 = a3[1];
  if (*(a2 + 24))
  {
    v14 = 0;
    do
    {
      v23 = *(*(a2 + 16) + 8 * v14);
      result = find_entry(v13, &v23, 8uLL, 0);
      pool = result->pool;
      if (result->pool)
      {
        v16 = *(pool + 4);
        if (v16)
        {
          result = find_entry(v12, v16, 8uLL, 0);
          pool = result->pool;
          if (result->pool)
          {
            pool = *(pool + 4);
            if (pool)
            {
              pool = *pool;
            }
          }
        }

        else
        {
          pool = 0;
        }
      }

      *&v8->elts[8 * v14++] = pool;
    }

    while (*(a2 + 24) > v14);
  }

  if (*(a2 + 56))
  {
    v17 = 0;
    do
    {
      v23 = *(*(a2 + 48) + 8 * v17);
      result = find_entry(v13, &v23, 8uLL, 0);
      v18 = result->pool;
      if (result->pool)
      {
        v19 = *(v18 + 4);
        if (v19)
        {
          result = find_entry(v12, v19, 8uLL, 0);
          v18 = result->pool;
          if (result->pool)
          {
            v18 = *(v18 + 4);
            if (v18)
            {
              v18 = *v18;
            }
          }
        }

        else
        {
          v18 = 0;
        }
      }

      *&v9->elts[8 * v17++] = v18;
    }

    while (*(a2 + 56) > v17);
  }

  if (*(a2 + 8))
  {
    v20 = 0;
    do
    {
      v23 = *(*a2 + 8 * v20);
      result = find_entry(v13, &v23, 8uLL, 0);
      v21 = result->pool;
      if (result->pool)
      {
        v22 = *(v21 + 4);
        if (v22)
        {
          result = find_entry(v12, v22, 8uLL, 0);
          v21 = result->pool;
          if (result->pool)
          {
            v21 = *(v21 + 4);
            if (v21)
            {
              v21 = *v21;
            }
          }
        }

        else
        {
          v21 = 0;
        }
      }

      *&v11->elts[8 * v20++] = v21;
    }

    while (*(a2 + 8) > v20);
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v11;
  return result;
}

void PopulateLinkedFunctionsResourceIndices(void *a1, void *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setFunctionResourceIndices:*(*a2 + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setPrivateFunctionResourceIndices:*(a2[1] + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setBinaryFunctionResourceIndices:*(a2[2] + 24)];
  }
}

void GTMTLReplay_dispatchFailedToSet(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:64];
  v3 = funcMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

void GTMTLReplay_dispatchFailedToGet(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = funcMap;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
    v27 = [v4 objectForKeyedSubscript:v5];

    if (v27)
    {
      v6 = [v27 bytes];
    }

    else
    {
      v6 = 0;
    }

    v7 = failureMap;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "integerValue") + 1}];
      v11 = failureMap;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
      [v11 setObject:v10 forKeyedSubscript:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v14 = failureMap;
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
      [v14 setObject:v13 forKeyedSubscript:v15];

      if (v6)
      {
        v16 = GTFenum_getConstructorType(*(v6 + 8)) - 1;
        if (v16 > 0x6D)
        {
          v17 = "Unknown";
        }

        else
        {
          v17 = off_2796593E8[v16];
        }

        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
        FuncEnumAsString = GetFuncEnumAsString(*(v6 + 8));
      }

      else
      {
        v10 = 0;
        FuncEnumAsString = 0;
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
      [v12 setObject:v19 forKeyedSubscript:@"GTErrorKeyTraceStreamID"];

      if (a2)
      {
        [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"GTErrorKeyResourceUnused"];
      }

      if (v6)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v6];
        [v12 setObject:v20 forKeyedSubscript:@"GTErrorKeyFunctionIndex"];
      }

      if (FuncEnumAsString)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:FuncEnumAsString];
        [v12 setObject:v21 forKeyedSubscript:@"GTErrorKeyFenum"];
      }

      if (!v10 || ([v12 setObject:v10 forKeyedSubscript:@"GTErrorKeyReceiverType"], -[__CFString isEqualToString:](v10, "isEqualToString:", @"Unknown")))
      {

        v10 = @"Metal object";
      }

      v22 = MEMORY[0x277CCACA8];
      if (FuncEnumAsString)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:FuncEnumAsString];
        v24 = PrettifyFenumString(v23);
        v25 = [v22 stringWithFormat:@"%@ creation failed when calling %@.", v10, v24];
      }

      else
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ creation failed.", v10];
      }

      [v12 setObject:v25 forKeyedSubscript:*MEMORY[0x277CCA450]];
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.gputools.MTLReplayer" code:150 userInfo:v12];
      GTMTLReplay_handleNSError(v26);
    }
  }
}

uint64_t GetEnvDefault(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return strtol(v3, 0, 0);
}

id GTApplePMPPerfStateControl::EnableConsistentPerfState(GTApplePMPPerfStateControl *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 <= 2)
  {
    v5 = objc_opt_new();
    *(this + 3) = a2;
    memset(v19, 0, sizeof(v19));
    v20 = *this;
    std::vector<unsigned long long>::vector[abi:nn200100](&__p, v19, 5uLL);
    if (*(this + 452))
    {
      v6 = 0;
      v7 = 0;
      v8 = this;
      do
      {
        v9 = *(v8 + 5);
        if (v9)
        {
          v10 = (this + 56 * v7 + 8 * *(this + 3) + 24);
          v11 = v10;
        }

        else
        {
          v10 = (v8 + 56);
          v11 = (v8 + 64);
        }

        v12 = *v11;
        v13 = __p + 8 * (v7 >> 4);
        *v13 |= *v10 << (v6 & 0x3C);
        v13[2] |= v12 << (v6 & 0x3C);
        if (v9 && *(v8 + 2))
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v8 + *(this + 3) + 3)];
          [v5 setObject:v14 forKeyedSubscript:*(v8 + 2)];
        }

        ++v7;
        v6 += 4;
        v8 = (v8 + 56);
      }

      while (v7 < *(this + 452));
    }

    GTApplePMPPerfStateControl::SetDVFSContraints(this, 0);
    if (GTApplePMPPerfStateControl::SetDVFSStates(this, __p, (v18 - __p) >> 3))
    {
      v2 = 0;
    }

    else
    {
      v2 = [v5 copy];
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v2 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_24D908034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GTApplePMPPerfStateControl::SetDVFSContraints(GTApplePMPPerfStateControl *this, int a2)
{
  input[10] = *MEMORY[0x277D85DE8];
  if (!*(this + 454))
  {
    v4 = *(this + 2);
    if (v4)
    {
      v5 = 0;
      input[0] = 2;
      input[1] = 0;
      if (a2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      input[2] = 0;
      input[3] = v6;
      if ((a2 & 1) == 0)
      {
        v5 = *this;
      }

      input[4] = v5;
      v7 = IOConnectCallMethod(v4, 6u, input, 5u, 0, 0, 0, 0, 0, 0);
      if (v7)
      {
        if (g_runningInCI)
        {
          v8 = "#CI_ERROR# ";
        }

        else
        {
          v8 = "";
        }

        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v7)];
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTApplePMPPerfStateControl.mm", "SetDVFSContraints", 331, 2, "%s%s %u: Failed to send PM command (0x%x - %@)\n", v9, v10, v8);
      }
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t GTApplePMPPerfStateControl::SetDVFSStates(GTApplePMPPerfStateControl *this, uint64_t *input, uint32_t inputCnt)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 0;
  }

  v5 = IOConnectCallMethod(v4, *(this + 459), input, inputCnt, 0, 0, 0, 0, 0, 0);
  v6 = v5;
  if (v5)
  {
    if (g_runningInCI)
    {
      v7 = "#CI_ERROR# ";
    }

    else
    {
      v7 = "";
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v5)];
    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTApplePMPPerfStateControl.mm", "SetDVFSStates", 306, 2, "%s%s %u: _setDVFSStates (0x%x - %@)\n", v8, v9, v7);
  }

  return v6;
}

void GTApplePMPPerfStateControl::DisableConsistentPerfState(GTApplePMPPerfStateControl *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 3) != 3)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    std::vector<unsigned long long>::vector[abi:nn200100](&__p, v11, 5uLL);
    v2 = __p;
    if (*(this + 452))
    {
      v3 = 0;
      v4 = 0;
      v5 = (this + 64);
      do
      {
        v6 = (v4 >> 1) & 0x7FFFFFFFFFFFFFF8;
        *(v2 + v6) |= *(v5 - 1) << (v3 & 0x3C);
        v7 = *v5;
        v5 += 7;
        *(v2 + v6 + 16) |= v7 << (v3 & 0x3C);
        ++v4;
        v3 += 4;
      }

      while (v4 < *(this + 452));
    }

    *(this + 3) = 3;
    GTApplePMPPerfStateControl::SetDVFSStates(this, v2, (v10 - v2) >> 3);
    GTApplePMPPerfStateControl::SetDVFSContraints(this, 1);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void GTApplePMPPerfStateControl::Close(GTApplePMPPerfStateControl *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 2) = 0;
    if (g_runningInCI == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u Connection Closed", *MEMORY[0x277D85F48]];
      v3 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v3 UTF8String]);
    }
  }
}

id GTMTLReplayController_getResizeRenderPipelineState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 176);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = *(a1 + 104);
    v10 = v9;
    v11 = *(a2 + 8);
    v12 = 10;
    v13 = 90;
    if ((v11 & 0x800010) == 0x10)
    {
      v13 = a3;
    }

    if ((v11 & 0x40) == 0)
    {
      v12 = v13;
    }

    if ((v11 & 0x20) != 0)
    {
      v14 = 55;
    }

    else
    {
      v14 = v12;
    }

    v15 = [v9 colorAttachments];
    v16 = [v15 objectAtIndexedSubscript:0];
    [v16 setPixelFormat:v14];

    v17 = *(a2 + 8);
    v18 = 144;
    v19 = 120;
    v20 = 128;
    if ((v17 & 0x40000) == 0)
    {
      v20 = 112;
    }

    if ((v17 & 0x80000) == 0)
    {
      v19 = v20;
    }

    if ((v17 & 0x40) == 0)
    {
      v18 = v19;
    }

    if ((v17 & 0x20) != 0)
    {
      v21 = 136;
    }

    else
    {
      v21 = v18;
    }

    [v10 setFragmentFunction:*(a1 + v21)];
    v22 = [v10 fragmentFunction];
    v23 = [v22 device];

    v28 = 0;
    v8 = [v23 newRenderPipelineStateWithDescriptor:v10 error:&v28];
    v24 = v28;
    v25 = *(a1 + 176);
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v25 setObject:v8 forKeyedSubscript:v26];
  }

  return v8;
}

id GTMTLReplayController_resizeTexture(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5, unint64_t a6, void **a7)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a1;
  v16 = [v14 device];
  v17 = [v14 pixelFormat];
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  GTMTLPixelFormatGetInfoForDevice(&v47, v16, v17);
  v18 = 10;
  v19 = 90;
  if ((DWORD2(v47) & 0x800010) == 0x10)
  {
    v19 = v17;
  }

  if ((BYTE8(v47) & 0x40) == 0)
  {
    v18 = v19;
  }

  if ((BYTE8(v47) & 0x20) != 0)
  {
    v20 = 55;
  }

  else
  {
    v20 = v18;
  }

  v43 = a6;
  v21 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:v20 width:a5 height:a6 mipmapped:0];
  [v21 setUsage:5];
  [v21 setResourceOptions:32];
  [v21 setAllowGPUOptimizedContents:0];
  v46 = 0;
  v22 = [v15 newTextureWithDescriptor:v21 error:&v46];

  v23 = v46;
  v24 = v23;
  if (v22)
  {
    v38 = v23;
    v40 = v16;
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v57 = 0u;
    v52 = 0u;
    v51 = 1065353216;
    LODWORD(v53) = 1065353216;
    DWORD1(v54) = 1065353216;
    v56 = 1065353216;
    v25 = objc_alloc_init(MEMORY[0x277CD6F48]);
    v26 = [v25 colorAttachments];
    [v26 objectAtIndexedSubscript:0];
    v28 = v27 = v13;
    [v28 setTexture:v22];

    v42 = v27;
    v29 = [v27 renderCommandEncoderWithDescriptor:v25];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"ResizeTexture"];
    [v29 setLabel:v30];

    v44[0] = v47;
    v44[1] = v48;
    v44[2] = v49;
    v45 = v50;
    v31 = GTMTLReplayController_getResizeRenderPipelineState(a2, v44, v17);
    [v29 setRenderPipelineState:v31];

    [v29 setVertexBuffer:*(a2 + 168) offset:0 atIndex:0];
    [v29 setVertexBuffer:*(a2 + 168) offset:96 atIndex:1];
    if ([v14 width] >= a5 || objc_msgSend(v14, "height") >= v43)
    {
      v32 = 160;
    }

    else
    {
      v32 = 152;
    }

    [v29 setFragmentSamplerState:*(a2 + v32) atIndex:{0, v38, v40}];
    [v29 setFragmentTexture:v14 atIndex:0];
    [v29 setFragmentBytes:&v51 length:80 atIndex:0];
    [v29 drawPrimitives:3 vertexStart:0 vertexCount:6];
    [v29 endEncoding];
    v33 = v22;

    v16 = v41;
    v13 = v42;
    v24 = v39;
  }

  else
  {
    if (v23)
    {
      v58 = *MEMORY[0x277CCA7E8];
      v59[0] = v23;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    }

    else
    {
      v34 = 0;
    }

    GTMTLReplay_fillError(a7, 101, v34);
    if (a7)
    {
      v35 = *a7;
    }

    else
    {
      v35 = 0;
    }

    GTMTLReplay_handleNSError(v35);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v22;
}

id GTMTLReplayClient_retrieveTexturesForResize(id *a1, void *a2, void *a3, int a4, void **a5)
{
  v119[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a1[1];
  v11 = a1[3];
  v86 = a1[2];
  v89 = [v10 defaultDevice];
  v84 = [v89 maxTextureWidth2D];
  v113 = 0uLL;
  v85 = objc_alloc_init(MEMORY[0x277CD7050]);
  [v85 setResourceOptions:32];
  v12 = [v9 count];
  v91 = v8;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v14 = v13;
  v15 = 0x277CCA000;
  v90 = v12;
  if (v12)
  {
    v77 = a5;
    v78 = v10;
    v80 = v11;
    v87 = 0;
    v16 = 0;
    v82 = v13;
    v83 = v9;
    while (1)
    {
      v17 = [v9 objectAtIndexedSubscript:v16];
      v18 = [v91 objectAtIndexedSubscript:v16];
      v19 = [v17 pixelFormat];
      v20 = [v18 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
      v21 = [v20 unsignedIntegerValue];

      if (v19 == 260)
      {
        break;
      }

      PlanePixelFormat = GetPlanePixelFormat(v19, 0);
      v22 = v19;
      if (!PlanePixelFormat)
      {
        goto LABEL_9;
      }

      [v14 addObject:v17];
LABEL_76:

      if (v90 == ++v16)
      {
        if (v87)
        {
          GTMTLReplay_commitCommandBuffer(v87);
        }

        else
        {
          v87 = 0;
        }

        v10 = v78;
        v11 = v80;
        v15 = 0x277CCA000uLL;
        goto LABEL_84;
      }
    }

    v22 = 260;
    if (v21 == 9)
    {
      v22 = 261;
    }

LABEL_9:
    v96 = v22;
    v24 = [v17 usage];
    v25 = [v18 objectForKeyedSubscript:@"DependencyGraphRequestedTextureLevel"];
    v26 = [v18 objectForKeyedSubscript:@"DependencyGraphRequestedTextureSlice"];
    v98 = v25;
    v95 = [v25 unsignedIntegerValue];
    v93 = v26;
    v27 = v26;
    v28 = v96;
    v92 = [v27 unsignedIntegerValue];
    v29 = [v17 textureType];
    v30 = (v24 & 1) == 0;
    v97 = v18;
    if (v29 <= 9)
    {
      if (((1 << v29) & 0x68) != 0)
      {
        v31 = 0;
        goto LABEL_31;
      }

      if (((1 << v29) & 0x110) != 0)
      {
        if (v24)
        {
          v30 = 0;
        }

        else
        {
          v30 = a4;
        }

        if (a4 && v19 != v96)
        {
          v31 = 1;
          goto LABEL_31;
        }

        v31 = a4;
        goto LABEL_36;
      }

      if (((1 << v29) & 0x280) != 0)
      {
LABEL_14:
        v31 = 0;
        if (v19 == v96)
        {
          v94 = 0;
          goto LABEL_39;
        }

        v30 = 1;
        goto LABEL_31;
      }
    }

    if (v29 < 2)
    {
      goto LABEL_14;
    }

    v31 = 0;
    if (v29 == 2 && (!v98 ? (v30 = v24 ^ 1) : (v30 = (v24 & 1) == 0), v98) || v19 != v96)
    {
LABEL_31:
      v32 = [v17 usage];
      v94 = 1;
      if ((v31 & 1) == 0 && (v32 & 0x10) != 0 && (v30 & 1) == 0)
      {
        v33 = v17;
        v18 = v97;
        v34 = v92;
        v35 = v95;
        goto LABEL_69;
      }

      goto LABEL_39;
    }

LABEL_36:
    v94 = 0;
    if ((v31 & 1) == 0 && (v30 & 1) == 0)
    {
      v33 = v17;
      v18 = v97;
      v34 = v92;
      v35 = v95;
      goto LABEL_71;
    }

LABEL_39:
    v36 = [v17 width];
    v37 = [v17 height];
    if (v98)
    {
      v112 = 0;
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
      GTMTLPixelFormatGetInfoForDevice(&v109, v89, v19);
      v38 = (DWORD2(v109) >> 11) & 4;
      if ((~DWORD2(v109) & 0x60) == 0)
      {
        if (v21 == 9)
        {
          v38 |= 2uLL;
        }

        else if (v21 == 8)
        {
          v38 |= 1uLL;
        }
      }

      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v76 = v38;
      GTMTLGetTextureLevelInfoForDeviceWithOptions(&v102, v89, v19, v36, v37, 1, [v17 sampleCount]);
      v37 = *(&v102 + 1);
      v36 = v102;
      v39 = v103;
    }

    else
    {
      v39 = 1;
    }

    if (v84 >= v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = v84;
    }

    v41 = 5;
    if (!v31)
    {
      v41 = 1;
    }

    if (v94)
    {
      v42 = v41 | 0x10;
    }

    else
    {
      v42 = v41;
    }

    [v85 setPixelFormat:v19, v76];
    [v85 setWidth:v40];
    [v85 setHeight:v37];
    [v85 setUsage:v42];
    v101 = 0;
    v33 = [v86 newTextureWithDescriptor:v85 error:&v101];
    v43 = v101;
    v44 = v43;
    if (!v33)
    {
      if (v43)
      {
        v118 = *MEMORY[0x277CCA7E8];
        v119[0] = v43;
        v66 = v43;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:&v118 count:1];
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      v14 = v82;
      v9 = v83;
      v10 = v78;
      v11 = v80;
      v18 = v97;
      GTMTLReplay_fillError(v77, 101, v67);
      if (v77)
      {
        v73 = *v77;
      }

      else
      {
        v73 = 0;
      }

      GTMTLReplay_handleNSError(v73);

      v72 = v93;
      goto LABEL_95;
    }

    v88 = v17;
    v45 = v39;
    v46 = [v97 objectForKeyedSubscript:@"DependencyGraphRequestedTextureDepthPlane"];
    v47 = [v46 unsignedIntegerValue];

    if (!v31)
    {
      v54 = [v80 blitCommandEncoder];
      v102 = 0uLL;
      *&v103 = v47;
      *&v109 = v40;
      *(&v109 + 1) = v37;
      *&v110 = v45;
      v99 = v113;
      v100 = 0;
      v51 = v88;
      [v54 copyFromTexture:v88 sourceSlice:v92 sourceLevel:v95 sourceOrigin:&v102 sourceSize:&v109 toTexture:v33 destinationSlice:0 destinationLevel:0 destinationOrigin:&v99];

      v9 = v83;
      v28 = v96;
      v18 = v97;
      goto LABEL_68;
    }

    v81 = v44;
    *&v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v102 = 0u;
    GTMTLPixelFormatGetInfoForDevice(&v102, v89, v19);
    v48 = BYTE8(v102);
    v49 = objc_alloc_init(MEMORY[0x277CD6F48]);
    v50 = v49;
    v28 = v96;
    if ((v48 & 0x20) != 0)
    {
      v53 = [v49 depthAttachment];
      v51 = v88;
      [v53 setTexture:v88];
      [v53 setLevel:v95];
      [v53 setSlice:v92];
      [v53 setDepthPlane:v47];
      [v53 setResolveTexture:v33];
      [v53 setLoadAction:1];
      [v53 setStoreAction:2];
      v18 = v97;
      if ((v48 & 0x40) == 0)
      {
LABEL_65:
        v56 = v87;
        if (!v87)
        {
          v57 = [v78 defaultCommandQueue];
          v58 = [v57 commandBuffer];

          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"ThumbnailsResolve"];
          [v58 setLabel:v59];

          v56 = v58;
          v44 = v81;
        }

        v87 = v56;
        v60 = [v56 renderCommandEncoderWithDescriptor:v50];
        [v60 endEncoding];

        v9 = v83;
LABEL_68:

        v35 = 0;
        v34 = 0;
        v14 = v82;
        if (v94)
        {
LABEL_69:
          v61 = [v33 newTextureViewWithPixelFormat:v28 textureType:2 levels:v35 slices:1, v34, 1];

          if (!v61)
          {
            v116 = @"GTErrorKeyMTLPixelFormat";
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
            v117 = v62;
            v63 = MEMORY[0x277CBEAC0];
            v64 = &v117;
            v65 = &v116;
LABEL_86:
            v17 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:1];

            GTMTLReplay_fillError(v77, 101, v17);
            if (v77)
            {
              v71 = *v77;
            }

            else
            {
              v71 = 0;
            }

            v10 = v78;
            v11 = v80;
            v72 = v93;
            GTMTLReplay_handleNSError(v71);
LABEL_95:

            v70 = 0;
            goto LABEL_96;
          }

          goto LABEL_74;
        }

LABEL_71:
        if ([v33 textureType] != 4 && objc_msgSend(v33, "textureType") != 8)
        {
          goto LABEL_75;
        }

        v61 = [v33 newTextureViewWithPixelFormat:v28 textureType:objc_msgSend(v33 levels:"textureType") slices:v35, 1, v34, 1];

        if (!v61)
        {
          v114 = @"GTErrorKeyMTLPixelFormat";
          v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
          v115 = v62;
          v63 = MEMORY[0x277CBEAC0];
          v64 = &v115;
          v65 = &v114;
          goto LABEL_86;
        }

LABEL_74:
        v33 = v61;
LABEL_75:
        [v14 addObject:v33];

        v17 = v33;
        goto LABEL_76;
      }

      v55 = [v50 stencilAttachment];

      v53 = v55;
    }

    else
    {
      v18 = v97;
      v51 = v88;
      if ((v48 & 0x40) != 0)
      {
        v53 = [v49 stencilAttachment];
      }

      else
      {
        v52 = [v49 colorAttachments];
        v53 = [v52 objectAtIndexedSubscript:0];
      }
    }

    [v53 setTexture:v51];
    [v53 setLevel:v95];
    [v53 setSlice:v92];
    [v53 setDepthPlane:v47];
    [v53 setResolveTexture:v33];
    [v53 setLoadAction:1];
    [v53 setStoreAction:2];
    goto LABEL_65;
  }

  v87 = 0;
LABEL_84:
  v68 = [*(v15 + 3240) stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"TextureBlit"];
  v69 = [v11 commandBuffer];
  [v69 setLabel:v68];

  [v11 commitCommandBuffer];
  v70 = v14;
LABEL_96:

  v74 = *MEMORY[0x277D85DE8];

  return v70;
}

void GTMTLReplayClient_resizeResolution(unint64_t *a1, void *a2, unint64_t *a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"width"];
  v7 = [v6 unsignedIntegerValue];
  v8 = [v5 objectForKeyedSubscript:@"height"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v5 objectForKeyedSubscript:@"format"];

  v11 = [v10 unsignedIntegerValue];
  v12 = *a3;
  v13 = a3[1];
  v14 = *a3;
  v15 = v13;
  if (*a3 < v7 && v13 < v9 && v11)
  {
    v16 = v7 / v12;
    v14 = (v16 * v12);
    v15 = (v16 * v13);
  }

  if (v14 <= v7)
  {
    if (v15 <= v9 || !v11)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  if (v15 > v9)
  {
LABEL_11:
    v20 = v9 / v13;
    v18 = v20 * v12;
    v19 = v20 * v13;
    if (v18 > v7)
    {
      v21 = v7 / v18;
      v18 = v18 * v21;
      v19 = v19 * v21;
    }

    goto LABEL_13;
  }

  v17 = v7 / v14;
  v18 = v17 * v14;
  v19 = v17 * v15;
LABEL_13:
  v15 = v19;
  v14 = v18;
  if (v18 <= 8)
  {
    v14 = 8;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

LABEL_17:
  if (v7)
  {
    v12 = v14;
  }

  if (v9)
  {
    v13 = v15;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 1;
}

void AccelerationStructureViewerServer::ReplayerTransport::teardown(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained sessionID] && objc_msgSend(v8, "requestID"))
    {
      v12 = MEMORY[0x277CCA8C8];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = ___ZN33AccelerationStructureViewerServer17ReplayerTransport8teardownEPNS_8EndpointEP7NSError_block_invoke;
      v17 = &unk_279658B00;
      v20 = a1;
      v18 = v8;
      v19 = v6;
      v13 = [v12 blockOperationWithBlock:&v14];
      [*(*(a1 + 24) + 288) addOperation:{v13, v14, v15, v16, v17}];

      v9 = v18;
      goto LABEL_10;
    }

    v9 = v6;
    v26 = &unk_2860BB7A8;
    v27 = 0u;
    objc_storeStrong(&v27, a3);
    *(&v27 + 1) = 0;
    *&v21[0] = &unk_2860BB6A8;
    *(v21 + 8) = 0u;
    AccelerationStructureViewer::DataSourceError::encode(&v26, v21);
    v10 = *&v21[1];
    v25 = 0;
    v24 = 0u;
    std::vector<unsigned char>::__append(&v24, *&v21[1] + 1);
    v11 = v24;
    memset(v21 + 8, 0, 24);
    *&v21[0] = &unk_2860BB6F0;
    v22 = v24 + 1;
    v23 = v10;
    AccelerationStructureViewer::DataSourceError::encode(&v26, v21);
    if (v21[1] == v23)
    {
      *v11 = 6;
      (*(*a1 + 32))(a1, a2, 0, 0, v11, v10 + 1);
    }

    else if (!v11)
    {
LABEL_7:

LABEL_10:
      goto LABEL_11;
    }

    operator delete(v11);
    goto LABEL_7;
  }

LABEL_11:
}

void *___ZN33AccelerationStructureViewerServer17ReplayerTransport8teardownEPNS_8EndpointEP7NSError_block_invoke(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = a1[6];
    if (!*(v3 + 32))
    {
      v4 = *(v3 + 48);
      v5 = [result requestID];
      v6 = a1[5];
      v7 = *(v4 + 16);

      return v7(v4, v5, 0, v6);
    }
  }

  return result;
}

void AccelerationStructureViewerServer::ReplayerTransport::send(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = a3 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || (v14 = atomic_load((v12 + 48)), *(a1 + 40) >= v14))
    {
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:a5 length:a6];
      v16 = MEMORY[0x277CCA8C8];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = ___ZN33AccelerationStructureViewerServer17ReplayerTransport4sendEPNS_8EndpointEbmPvm_block_invoke;
      v19[3] = &unk_2796581D8;
      v22 = a1;
      v24 = a3;
      v20 = WeakRetained;
      v23 = a4;
      v17 = v15;
      v21 = v17;
      v18 = [v16 blockOperationWithBlock:v19];
      [*(*(a1 + 24) + 288) addOperation:v18];
    }

    else
    {
      (*(**(a1 + 16) + 24))(*(a1 + 16), a4);
    }
  }
}

void ___ZN33AccelerationStructureViewerServer17ReplayerTransport4sendEPNS_8EndpointEbmPvm_block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 48);
  v4 = *(v3 + 32);
  if (v4)
  {
    if (*(a1 + 64) != 1)
    {
      goto LABEL_9;
    }

    v5 = atomic_load((v4 + 48));
    if (*(v3 + 40) < v5)
    {
      v6 = *(a1 + 56);
      v7 = *(**(v3 + 16) + 24);
      v8 = *MEMORY[0x277D85DE8];

      v7();
      return;
    }

    v2 = *(a1 + 32);
    if (*(v3 + 32))
    {
LABEL_9:
      v18 = @"sessionId";
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "sessionID")}];
      v19[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v11 = [GTTransportMessage_replayer messageWithKind:4609 attributes:v10 payload:*(a1 + 40)];

      [*(v3 + 32) send:v11 inReplyTo:0 error:0];
LABEL_10:
      v12 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v13 = *(v3 + 48);
  v14 = [v2 sessionID];
  v15 = *(a1 + 40);
  v16 = *(v13 + 16);
  v17 = *MEMORY[0x277D85DE8];

  v16(v13, v14, v15, 0);
}

void AccelerationStructureViewerServer::ReplayerTransport::~ReplayerTransport(id *this)
{
  AccelerationStructureViewerServer::ReplayerTransport::~ReplayerTransport(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BC1E8;
  objc_storeWeak(this + 1, 0);

  objc_destroyWeak(this + 1);
}

void sub_24D909F64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_24D90A82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = GTAccelerationStructureServerSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void GTMTLReplayWireframeRenderer_initWithDevice(uint64_t a1, void *a2)
{
  *(a1 + 72) = 1;
  v3 = a2;
  v4 = GTMTLReplayController_defaultLibrary(v3);
  v5 = [v4 newFunctionWithName:@"wireframeCreationFragment"];
  [v5 setLabel:@"wireframeCreationFragment"];
  v6 = objc_opt_new();
  [v6 setLibrary:v4];
  [v6 setName:@"wireframeCreationFragment"];
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
  v8 = v6;

  v9 = *(a1 + 48);
  *(a1 + 48) = v5;
  v10 = v5;

  *(a1 + 32) = 10;
  v11 = [v4 newFunctionWithName:@"createOutlineTexture"];
  v57 = 0;
  v12 = [v3 newComputePipelineStateWithFunction:v11 error:&v57];
  v13 = v57;
  v14 = *(a1 + 80);
  *(a1 + 80) = v12;

  v15 = [v4 newFunctionWithName:@"createOutlineTextureMS"];
  v56 = v13;
  v16 = [v3 newComputePipelineStateWithFunction:v15 error:&v56];
  v17 = v56;

  v18 = *(a1 + 88);
  *(a1 + 88) = v16;

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = *(a1 + 176);
  *(a1 + 176) = v19;

  v21 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v22 = *(a1 + 104);
  *(a1 + 104) = v21;

  v23 = [v4 newFunctionWithName:@"passthoughVertex"];
  [*(a1 + 104) setVertexFunction:v23];

  v24 = [v4 newFunctionWithName:@"fragmentShader"];
  v25 = *(a1 + 112);
  *(a1 + 112) = v24;

  v26 = [v4 newFunctionWithName:@"fragmentShaderUint"];
  v27 = *(a1 + 120);
  *(a1 + 120) = v26;

  v28 = [v4 newFunctionWithName:@"fragmentShaderSint"];
  v29 = *(a1 + 128);
  *(a1 + 128) = v28;

  v30 = [v4 newFunctionWithName:@"depthShader"];
  v31 = *(a1 + 136);
  *(a1 + 136) = v30;

  v32 = [v4 newFunctionWithName:@"stencilShader"];
  v33 = *(a1 + 144);
  *(a1 + 144) = v32;

  v34 = objc_alloc_init(MEMORY[0x277CD6FC8]);
  [v34 setMinFilter:0];
  [v34 setMagFilter:0];
  [v34 setMipFilter:0];
  v35 = [v3 newSamplerStateWithDescriptor:v34];
  v36 = *(a1 + 152);
  *(a1 + 152) = v35;

  [v34 setMinFilter:1];
  [v34 setMagFilter:1];
  [v34 setMipFilter:2];
  v37 = [v3 newSamplerStateWithDescriptor:v34];
  v38 = *(a1 + 160);
  *(a1 + 160) = v37;

  v39 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:10 width:128 height:128 mipmapped:0];
  v40 = *a1;
  *a1 = v39;

  [*a1 setUsage:21];
  [*a1 setResourceOptions:32];
  v41 = [v3 newBufferWithBytes:&GTMTLReplayWireframeRenderer_initWithDevice_posData length:144 options:0];
  v42 = *(a1 + 168);
  *(a1 + 168) = v41;

  v43 = [*(a1 + 104) vertexDescriptor];
  v44 = [v43 attributes];
  v45 = [v44 objectAtIndexedSubscript:0];
  [v45 setFormat:31];

  v46 = [v43 attributes];
  v47 = [v46 objectAtIndexedSubscript:1];
  [v47 setFormat:29];

  v48 = [v43 attributes];
  v49 = [v48 objectAtIndexedSubscript:1];
  [v49 setBufferIndex:1];

  v50 = [v43 layouts];
  v51 = [v50 objectAtIndexedSubscript:0];
  [v51 setStride:16];

  v52 = [v43 layouts];
  v53 = [v52 objectAtIndexedSubscript:1];
  [v53 setStride:8];

  v54 = [v3 newBufferWithLength:0x2000000 options:0];
  v55 = *(a1 + 96);
  *(a1 + 96) = v54;
}

void GTMTLReplayWireframeRenderer_submit()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  __dst[1389] = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v11;
  if (*(v9 + 11360) != 98)
  {
    v65 = v6;
    v33 = v11;
    v34 = *v9;
    v35 = *(v9 + 8);
    v36 = *(*v9 + 128);
    v37 = *(v36 + 24);
    v71 = (*(v9 + 22560) - 1);
    CommandBuffer = GroupBuilder_getCommandBuffer(*(*(v34 + 120) + 12), *(*(v34 + 120) + 24), v71);
    if (CommandBuffer)
    {
      v73 = v12;
      v39 = v37 + (*CommandBuffer << 6);
      GTMTLReplayController_defaultDispatchFunction(v9, v39);
      v67 = [v35 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v39, *(v39 + 13), *(v34 + 16)) + 1)}];
      if (v67)
      {
        v63 = v35;
        CommandEncoder = GroupBuilder_getCommandEncoder(*(*(v34 + 120) + 12), *(*(v34 + 120) + 24), v71);
        if (!CommandEncoder)
        {
          GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
          if (v2)
          {
            v57 = *v2;
          }

          else
          {
            v57 = 0;
          }

          v12 = v73;
          GTMTLReplay_handleNSError(v57);
          goto LABEL_54;
        }

        v41 = CommandEncoder;
        v69 = v4;
        v61 = v33;
        v42 = objc_alloc_init(MEMORY[0x277CD6F48]);
        v43 = [v42 colorAttachments];
        v44 = [v43 objectAtIndexedSubscript:0];
        GTMTLReplayWireframeRenderer_makeColorAttachment(v8 + 8, v44);

        [v42 setRasterizationRateMap:*(v8 + 16)];
        if (*(v8 + 24))
        {
          [v42 setRenderTargetArrayLength:?];
        }

        v45 = [v67 renderCommandEncoderWithDescriptor:{v42, v61}];
        v33 = v62;
        if (!v45)
        {
          GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
          if (v2)
          {
            v59 = *v2;
          }

          else
          {
            v59 = 0;
          }

          v12 = v73;
          v35 = v63;
          GTMTLReplay_handleNSError(v59);

          goto LABEL_54;
        }

        v46 = v45;
        v47 = v37 + (v71 << 6);
        v48 = *(v36 + 24) + (*v41 << 6);
        v35 = v63;
        [v63 setRenderCommandEncoder:v46 forKey:{*(GTTraceFunc_argumentBytesWithMap(v48, *(v48 + 13), *(v34 + 16)) + 1)}];

        memcpy(__dst, (v9 + 248), 0x2B68uLL);
        __dst[1068] = 0;
        __dst[1231] = 0;
        *(&__dst[1252] + 4) = 0x3F80000000000000;
        BYTE3(__dst[1387]) = v69;
        LODWORD(__dst[1337]) = 1065353216;
        BYTE5(__dst[1387]) = 0;
        HIDWORD(__dst[1386]) = 0;
        v49 = *(v9 + 22544);
        v50 = *(v9 + 22552);
        GTMTLReplayController_restoreDefaultRenderCommandEncoder();
        [v46 setRenderPipelineState:v62];
        if (*(v47 + 8) >> 2 == 1073737833)
        {
          v51 = *(v65 + 360);
          v52 = [v63 executeIndirectCommandBufferMap];
          LOBYTE(v51) = DYMTLDrawRenderCommandEncoder(v46, v65 + 40, v51, v65 + 256, v52);

          apr_pool_clear(*(v65 + 368));
          if ((v51 & 1) == 0)
          {
            GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
            if (v2)
            {
              v53 = *v2;
            }

            else
            {
              v53 = 0;
            }

            v12 = v73;
            GTMTLReplay_handleNSError(v53);

LABEL_54:
            goto LABEL_55;
          }
        }

        else
        {
          GTMTLReplayController_defaultDispatchFunction(v9, v47);
        }

        __dst[0] = MEMORY[0x277D85DD0];
        __dst[1] = 3221225472;
        __dst[2] = __GTMTLReplayWireframeRenderer_submit3_block_invoke;
        __dst[3] = &unk_279658380;
        __dst[4] = v62;
        [v67 addCompletedHandler:__dst];
        GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v9, v71);
        [v63 commitCommandBuffers];

        v12 = v73;
LABEL_55:

        goto LABEL_56;
      }

      GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
      if (v2)
      {
        v55 = *v2;
      }

      else
      {
        v55 = 0;
      }

      v12 = v73;
    }

    else
    {
      GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
      if (v2)
      {
        v55 = *v2;
      }

      else
      {
        v55 = 0;
      }
    }

    GTMTLReplay_handleNSError(v55);
    goto LABEL_55;
  }

  v68 = v4;
  v13 = *v9;
  v14 = *(v9 + 8);
  v15 = (*(v9 + 22560) - 1);
  v16 = *(*v9 + 128);
  v17 = *(v16 + 24);
  v18 = GroupBuilder_getCommandBuffer(*(*(v13 + 120) + 12), *(*(v13 + 120) + 24), v15);
  if (v18 && (v19 = v17 + (*v18 << 6), GTMTLReplayController_defaultDispatchFunction(v9, v19), [v14 mtl4CommandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v19, *(v19 + 13), *(v13 + 16)) + 1)}], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    v22 = GroupBuilder_getCommandEncoder(*(*(v13 + 120) + 12), *(*(v13 + 120) + 24), v15);
    if (v22)
    {
      v64 = v22;
      v66 = v14;
      v70 = v21;
      v72 = v12;
      v23 = objc_alloc_init(MEMORY[0x277CD6BA8]);
      v24 = [v23 colorAttachments];
      v25 = [v24 objectAtIndexedSubscript:0];
      GTMTLReplayWireframeRenderer_makeColorAttachment(v8 + 8, v25);

      [v23 setRasterizationRateMap:*(v8 + 16)];
      if (*(v8 + 24))
      {
        [v23 setRenderTargetArrayLength:?];
      }

      v26 = [v70 renderCommandEncoderWithDescriptor:v23];
      v12 = v72;
      if (v26)
      {
        v27 = v26;
        v28 = *(v16 + 24) + (*v64 << 6);
        [v66 setMTL4RenderCommandEncoder:v27 forKey:{*(GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), *(v13 + 16)) + 1)}];

        memcpy(__dst, (v9 + 248), 0x758uLL);
        __dst[7] = 0;
        __dst[170] = 0;
        HIBYTE(__dst[233]) = v68;
        HIDWORD(__dst[185]) = 1065353216;
        LOBYTE(__dst[234]) = 0;
        LODWORD(__dst[233]) = 0;
        GTMTLReplayController_restoreDefaultRenderCommandEncoder4(v27, *(v9 + 22544), *(v9 + 22552), __dst, v66);
        [v27 setRenderPipelineState:v72];
        if (*(v17 + (v15 << 6) + 8) >> 2 != 1073737833)
        {
          GTMTLReplayController_defaultDispatchFunction(v9, v17 + (v15 << 6));
        }

        GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v9, v15);
        v29 = v66;
        [v66 commitCommandBuffers:v9 + 40];
        v30 = [*(v9 + 24) commandBuffer];
        v31 = *(v9 + 40);
        v32 = atomic_load((v9 + 48));
        [v30 encodeWaitForEvent:v31 value:v32 - 1];

        v14 = v29;
        v12 = v72;
      }

      else
      {
        GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
        if (v2)
        {
          v58 = *v2;
        }

        else
        {
          v58 = 0;
        }

        v14 = v66;
        GTMTLReplay_handleNSError(v58);
      }
    }

    else
    {
      GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
      if (v2)
      {
        v56 = *v2;
      }

      else
      {
        v56 = 0;
      }

      GTMTLReplay_handleNSError(v56);
    }
  }

  else
  {
    GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
    if (v2)
    {
      v54 = *v2;
    }

    else
    {
      v54 = 0;
    }

    GTMTLReplay_handleNSError(v54);
  }

LABEL_56:
  v60 = *MEMORY[0x277D85DE8];
}

int *GroupBuilder_getCommandEncoder(int a1, int *a2, unint64_t a3)
{
  InclusiveRange = GroupBuilder_findInclusiveRange(a1, a2, a3);
  if (InclusiveRange)
  {
    while (1)
    {
      ConstructorType = GTFenum_getConstructorType(InclusiveRange[5]);
      if (GTFenum_isMTLCommandEncoder(ConstructorType) || (ConstructorType - 95) <= 0xA && ((0x409u >> (ConstructorType - 95)) & 1) != 0)
      {
        break;
      }

      v5 = InclusiveRange[2];
      if (v5)
      {
        InclusiveRange -= 6 * v5;
      }

      else
      {
        InclusiveRange = 0;
      }

      if (!v5)
      {
        return 0;
      }
    }
  }

  return InclusiveRange;
}

void GTMTLReplayWireframeRenderer_makeColorAttachment(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLoadAction:2];
  [v3 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  if (*(a1 + 18) == 1)
  {
    [v3 setStoreAction:1];
  }

  [v3 setTexture:*a1];
}

id GTMTLReplayController_generateWireframeTexture(uint64_t a1, void *a2, uint64_t a3, apr_allocator_t *a4, void **a5)
{
  v6 = a4;
  v201[2] = *MEMORY[0x277D85DE8];
  v8 = a1 + 20480;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v9 = *a1;
  v161 = *(a1 + 8);
  v10 = *(*a1 + 128);
  v11 = (*(v8 + 2080) - 1);
  if (v11 >= *(v10 + 12))
  {
    GTMTLReplay_fillError(a5, 101, MEMORY[0x277CBEC10]);
    if (a5)
    {
      v15 = *a5;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_12;
  }

  v159 = a5;
  v189 = 0;
  v190[0] = 0;
  v190[1] = 0;
  if (*(a1 + 11360) == 98)
  {
    v12 = GTMTLReplayController_renderPassDescriptor4(a1);
    if (v12)
    {
      v13 = (v12 + 622);
      v14 = (v12 + 600);
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  v16 = GTMTLReplayController_renderPassDescriptor(a1);
  if (!v16)
  {
LABEL_40:
    GTMTLReplay_fillError(a5, 101, MEMORY[0x277CBEC10]);
    if (a5)
    {
      v15 = *a5;
    }

    else
    {
      v15 = 0;
    }

LABEL_12:
    GTMTLReplay_handleNSError(v15);
LABEL_54:
    v50 = 0;
    goto LABEL_55;
  }

  v13 = (v16 + 806);
  v14 = (v16 + 784);
LABEL_9:
  v17 = *v14;
  if ((GT_SUPPORT_0 & 0x80) != 0)
  {
    v18 = *v13;
    *(a2 + 12) = v18;
    if (v18 <= 1)
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  v157 = v18;
  v19 = [v161 rasterizationRateMapForKey:v17];
  v20 = a2[2];
  a2[2] = v19;

  v21 = *(a1 + 8);
  if (*(a1 + 11360) == 98)
  {
    v22 = GTMTLReplayController_renderPassDescriptor4(a1);
    if (v22)
    {
      v23 = v22;
      v24 = [v21 renderPassDescriptorMap];
      v25 = MakeMTL4RenderPassDescriptor(v23, v24);

      if (v25)
      {
        [v25 setRasterizationRateMap:0];
        v26 = [v21 defaultDevice];
        v27 = [v25 validate:v26 width:&v189 height:v190];

        if ((v27 & 1) == 0)
        {
          GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
          if (v159)
          {
            v28 = *v159;
          }

          else
          {
            v28 = 0;
          }

LABEL_52:
          GTMTLReplay_handleNSError(v28);

LABEL_53:
          goto LABEL_54;
        }

        goto LABEL_24;
      }
    }

LABEL_43:
    GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
    if (v159)
    {
      v46 = *v159;
    }

    else
    {
      v46 = 0;
    }

    GTMTLReplay_handleNSError(v46);
    goto LABEL_53;
  }

  v29 = GTMTLReplayController_renderPassDescriptor(a1);
  if (!v29)
  {
    goto LABEL_43;
  }

  v30 = v29;
  v31 = [v21 renderPassDescriptorMap];
  v25 = MakeMTLRenderPassDescriptor(v30, v31);

  if (!v25)
  {
    goto LABEL_43;
  }

  [v25 setRasterizationRateMap:0];
  v32 = [v21 defaultDevice];
  v33 = [v25 validate:v32 width:&v189 height:v190];

  if ((v33 & 1) == 0)
  {
    GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
    if (v159)
    {
      v28 = *v159;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_52;
  }

LABEL_24:

  v34 = (*(v10 + 24) + (v11 << 6));
  v35 = *(v34 + 2);
  v36 = GTFenum_isDrawCall(v35);
  v37 = 0;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  if ((v35 & 0xFFFFFFFC) == 0xFFFFC1A4)
  {
    v38 = 1;
  }

  else
  {
    v38 = v36;
  }

  v184 = 0uLL;
  v185 = 0uLL;
  v183 = 0uLL;
  v181 = 0uLL;
  memset(v182, 0, sizeof(v182));
  v179 = 0uLL;
  v180 = 0uLL;
  v177 = 0uLL;
  v178 = 0uLL;
  v175 = 0uLL;
  v176 = 0uLL;
  v173 = 0uLL;
  v174 = 0uLL;
  v171 = 0uLL;
  v172 = 0uLL;
  v169 = 0uLL;
  v170 = 0uLL;
  v167 = 0uLL;
  v168 = 0uLL;
  v166 = 0uLL;
  if (*(a1 + 11360) != 98 && (v35 & 0xFFFFFFFC) == 0xFFFFC1A4)
  {
    v188 = **(a1 + 184);
    GTMTLSMContext_indirectCommandBufferResources(v182, *(v9 + 40), *v34, v188);
    GetExecuteCommandsInBufferArgs(&v166, v34, *(v9 + 16));
    Object = GTMTLSMContext_getObject(**(v9 + 40), v166, *v34);
    if (!Object)
    {
      GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
      if (v159)
      {
        v53 = *v159;
      }

      else
      {
        v53 = 0;
      }

      GTMTLReplay_handleNSError(v53);
      goto LABEL_54;
    }

    GTMTLCreateIndirectCommandEncoder(&v168 + 8, Object[14]);
    v37 = *(&v167 + 1) + *(&v181 + 1) * *(v8 + 2084);
    *(&v187 + 1) = v37;
    GTMTLSMRenderCommandEncoder_loadIndirectCommand(a1 + 248, &v168 + 1, v37, v182);
    v35 = *(v34 + 2);
  }

  if (v35 >> 2 == 1073737833 && !*(*(&v168 + 1) + 26))
  {
    v41 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(*(&v183 + 1), *(v37 + *(&v169 + 1)));
  }

  else
  {
    v40 = 8792;
    if (*(a1 + 11360) == 98)
    {
      v40 = 304;
    }

    v41 = *(a1 + v40);
  }

  v42 = GTMTLSMContext_getObject(**(*a1 + 40), v41, *v34);
  if (!v42)
  {
    v47 = *MEMORY[0x277CCA450];
    *&__dst[0] = @"Failed to generate wireframe";
    v201[0] = v47;
    v201[1] = @"GTErrorKeyFunctionIndex";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v34];
    *(&__dst[0] + 1) = v48;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:v201 count:2];
    GTMTLReplay_fillError(v159, 102, v49);

    goto LABEL_54;
  }

  v43 = v42;
  if ((v38 & v6) != 1)
  {
    goto LABEL_72;
  }

  v44 = v42[6];
  if (v44)
  {
    v45 = *(v44 + 1272);
    goto LABEL_73;
  }

  v54 = v42[8];
  if (v54)
  {
    v45 = *(v54 + 150);
    goto LABEL_73;
  }

  v55 = v42[9];
  if (v55)
  {
    v45 = *(v55 + 509);
    goto LABEL_73;
  }

  v56 = v42[11];
  if (!v56)
  {
LABEL_72:
    v45 = 1;
    goto LABEL_73;
  }

  v57 = *(v56 + 1016);
  switch(v57)
  {
    case 5:
      v45 = *(v56 + 80);
      break;
    case 4:
      v45 = *(v56 + 320);
      break;
    case 2:
      v45 = *(v56 + 952);
      break;
    default:
      goto LABEL_72;
  }

LABEL_73:
  v58 = [v161 defaultDevice];
  v60 = v189;
  v59 = v190[0];
  v61 = v58;
  if (a3 == 1)
  {
    v62 = 7;
  }

  else
  {
    v62 = 8;
  }

  v63 = a2[v62];
  v64 = v63;
  if (v63 && [v63 width] == v60 && objc_msgSend(v64, "height") == v59 && objc_msgSend(v64, "arrayLength") == v157 && objc_msgSend(v64, "sampleCount") == v45)
  {
    v65 = a2;
LABEL_91:
    v70 = v64;
    v71 = v65[1];
    v65[1] = v70;
    goto LABEL_96;
  }

  v66 = a2[1];
  a2[1] = 0;

  [*a2 setWidth:v60];
  [*a2 setHeight:v59];
  v67 = 2;
  if (v157 > 1)
  {
    v67 = 3;
  }

  v68 = 4;
  if (v157 > 1)
  {
    v68 = 8;
  }

  if (v45 <= 1)
  {
    v69 = v67;
  }

  else
  {
    v69 = v68;
  }

  [*a2 setTextureType:v69];
  a2[9] = v45;
  [*a2 setArrayLength:v157];
  [*a2 setSampleCount:v45];
  v64 = [v61 newTextureWithDescriptor:*a2];
  if (v64)
  {
    objc_storeStrong(&a2[v62], v64);
    v65 = a2;
    *(a2 + 26) = 1;
    goto LABEL_91;
  }

  v201[0] = @"GTErrorKeyMTLTextureDescriptor";
  v72 = SerializeMTLTextureDescriptorToDictionary(*a2);
  *&__dst[0] = v72;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:v201 count:1];

  GTMTLReplay_fillError(v159, 101, v71);
  if (v159)
  {
    v73 = *v159;
  }

  else
  {
    v73 = 0;
  }

  GTMTLReplay_handleNSError(v73);
  v70 = 0;
LABEL_96:

  if (!v70)
  {
LABEL_161:
    v50 = 0;
    goto LABEL_162;
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_136;
  }

  v74 = GTMTLSMRenderPipelineState_renderPipelineDescriptorType(*(v9 + 40), v43);
  if (v74 <= 2)
  {
    if (v74)
    {
      if (v74 != 1)
      {
        GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
        if (v159)
        {
          v93 = *v159;
        }

        else
        {
          v93 = 0;
        }

        goto LABEL_160;
      }

      memset(__dst, 0, 512);
      GTMTLSMRenderPipelineState_renderPipelineDescriptor(*(v9 + 40), v43, __dst, newpool);
      v91 = [v161 renderPipelineDescriptorMap];
      v92 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(__dst, v91);
    }

    else
    {
      if (!v43[14])
      {
        GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
        if (v159)
        {
          v93 = *v159;
        }

        else
        {
          v93 = 0;
        }

        goto LABEL_160;
      }

      v94 = [v161 pipelineLibraryForKey:v43[5]];
      v95 = DEVICEOBJECT(v94);
      v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:v43[14]];
      v92 = [v95 newRenderPipelineDescriptorWithName:v96 error:v159];

      if (!v92)
      {
        GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
        if (v159)
        {
          v142 = *v159;
        }

        else
        {
          v142 = 0;
        }

        GTMTLReplay_handleNSError(v142);
        v50 = 0;
        goto LABEL_172;
      }
    }

    if ([v92 isRasterizationEnabled])
    {
      [v92 setRasterSampleCount:v45];
      [v92 setFragmentFunction:a2[6]];
      [v92 setFragmentLinkedFunctions:0];
      [v92 setFragmentPreloadedLibraries:MEMORY[0x277CBEBF8]];
      v97 = a2[4];
      v98 = [v92 colorAttachments];
      v99 = [v98 objectAtIndexedSubscript:0];
      [v99 setPixelFormat:v97];

      v100 = [v92 colorAttachments];
      v101 = [v100 objectAtIndexedSubscript:0];
      [v101 setWriteMask:15];

      v102 = [v92 colorAttachments];
      v103 = [v102 objectAtIndexedSubscript:0];
      [v103 setBlendingEnabled:0];

      [v92 setDepthAttachmentPixelFormat:0];
      [v92 setStencilAttachmentPixelFormat:0];
      for (i = 1; i != 8; ++i)
      {
        v105 = [v92 colorAttachments];
        v106 = [v105 objectAtIndexedSubscript:i];
        [v106 setPixelFormat:0];
      }

      v107 = [v161 defaultDevice];
      v165 = 0;
      v89 = [v107 newRenderPipelineStateWithDescriptor:v92 error:&v165];
      v108 = v165;

      if (!v89)
      {
        if (v108)
        {
          v198 = *MEMORY[0x277CCA7E8];
          v199 = v108;
          v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
        }

        else
        {
          v141 = 0;
        }

        GTMTLReplay_fillError(v159, 101, v141);
        if (v159)
        {
          v152 = *v159;
        }

        else
        {
          v152 = 0;
        }

        GTMTLReplay_handleNSError(v152);
        v50 = v70;

        goto LABEL_162;
      }

      goto LABEL_191;
    }

    v50 = v70;
    v94 = v92;
LABEL_172:

    goto LABEL_162;
  }

  if (v74 <= 4)
  {
    if (v74 == 3)
    {
      memset(__dst, 0, 512);
      v75 = v43[9];
      if (v75)
      {
        memcpy(__dst, v75, 0x200uLL);
        if (BYTE14(__dst[31]))
        {
          v76 = [v161 renderPipelineDescriptorMap];
          v77 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(__dst, v76);

          [v77 setRasterSampleCount:v45];
          [v77 setFragmentFunction:a2[6]];
          [v77 setFragmentLinkedFunctions:0];
          [v77 setFragmentPreloadedLibraries:MEMORY[0x277CBEBF8]];
          v78 = a2[4];
          v79 = [v77 colorAttachments];
          v80 = [v79 objectAtIndexedSubscript:0];
          [v80 setPixelFormat:v78];

          v81 = [v77 colorAttachments];
          v82 = [v81 objectAtIndexedSubscript:0];
          [v82 setWriteMask:15];

          v83 = [v77 colorAttachments];
          v84 = [v83 objectAtIndexedSubscript:0];
          [v84 setBlendingEnabled:0];

          [v77 setDepthAttachmentPixelFormat:0];
          [v77 setStencilAttachmentPixelFormat:0];
          for (j = 1; j != 8; ++j)
          {
            v86 = [v77 colorAttachments];
            v87 = [v86 objectAtIndexedSubscript:j];
            [v87 setPixelFormat:0];
          }

          v88 = [v161 defaultDevice];
          v164 = 0;
          v89 = [v88 newRenderPipelineStateWithMeshDescriptor:v77 options:0 reflection:0 error:&v164];
          v90 = v164;

          if (!v89)
          {
            if (v90)
            {
              v196 = *MEMORY[0x277CCA7E8];
              v197 = v90;
              v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
            }

            else
            {
              v150 = 0;
            }

            GTMTLReplay_fillError(v159, 101, v150);
            if (v159)
            {
              v155 = *v159;
            }

            else
            {
              v155 = 0;
            }

            GTMTLReplay_handleNSError(v155);
            v50 = v70;

            goto LABEL_162;
          }

          goto LABEL_191;
        }
      }

      goto LABEL_136;
    }

    bzero(__dst, 0x3C8uLL);
    v109 = v43[11];
    if (v109)
    {
      memcpy(__dst, v109, 0x3C8uLL);
    }

    v110 = [v161 libraries];
    v111 = MakeMTL4RenderPipelineDescriptor(__dst, v110);

    if (([v111 isRasterizationEnabled] & 1) == 0)
    {
      v50 = v70;

      goto LABEL_162;
    }

    [v111 setRasterSampleCount:v45];
    [v111 setFragmentFunctionDescriptor:a2[5]];
    [v111 setFragmentStaticLinkingDescriptor:0];
    [v111 setSupportFragmentBinaryLinking:0];
    v112 = a2[4];
    v113 = [v111 colorAttachments];
    v114 = [v113 objectAtIndexedSubscript:0];
    [v114 setPixelFormat:v112];

    v115 = [v111 colorAttachments];
    v116 = [v115 objectAtIndexedSubscript:0];
    [v116 setWriteMask:15];

    v117 = [v111 colorAttachments];
    v118 = [v117 objectAtIndexedSubscript:0];
    [v118 setBlendingState:0];

    for (k = 1; k != 8; ++k)
    {
      v120 = [v111 colorAttachments];
      v121 = [v120 objectAtIndexedSubscript:k];
      [v121 setPixelFormat:0];
    }

    v122 = v43[12];
    if (v122)
    {
      v123 = [v161 dynamicLibraries];
      v124 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v122, v123);
    }

    else
    {
      v124 = 0;
    }

    v143 = objc_alloc_init(MEMORY[0x277CD6B00]);
    v144 = [v161 defaultCompiler];
    v163 = 0;
    v89 = [v144 newRenderPipelineStateWithDescriptor:v111 dynamicLinkingDescriptor:v124 compilerTaskOptions:v143 error:&v163];
    v145 = v163;

    if (v89)
    {
      v50 = 0;
    }

    else
    {
      if (v145)
      {
        v194 = *MEMORY[0x277CCA7E8];
        v195 = v145;
        v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
      }

      else
      {
        v146 = 0;
      }

      GTMTLReplay_fillError(v159, 101, v146);
      if (v159)
      {
        v153 = *v159;
      }

      else
      {
        v153 = 0;
      }

      GTMTLReplay_handleNSError(v153);
      v50 = v70;
    }

    v154 = v89 == 0;

    goto LABEL_190;
  }

  if (v74 == 5)
  {
    GTMTLReplay_fillError(v159, 101, MEMORY[0x277CBEC10]);
    if (v159)
    {
      v93 = *v159;
    }

    else
    {
      v93 = 0;
    }

LABEL_160:
    GTMTLReplay_handleNSError(v93);
    goto LABEL_161;
  }

  memset(__dst, 0, 344);
  v125 = v43[11];
  if (v125)
  {
    memcpy(__dst, v125, 0x158uLL);
    if (BYTE13(__dst[20]))
    {
      v126 = [v161 libraries];
      v127 = MakeMTL4MeshRenderPipelineDescriptor(__dst, v126);

      [v127 setRasterSampleCount:v45];
      [v127 setFragmentFunctionDescriptor:a2[5]];
      [v127 setFragmentStaticLinkingDescriptor:0];
      [v127 setSupportFragmentBinaryLinking:0];
      v128 = a2[4];
      v129 = [v127 colorAttachments];
      v130 = [v129 objectAtIndexedSubscript:0];
      [v130 setPixelFormat:v128];

      v131 = [v127 colorAttachments];
      v132 = [v131 objectAtIndexedSubscript:0];
      [v132 setWriteMask:15];

      v133 = [v127 colorAttachments];
      v134 = [v133 objectAtIndexedSubscript:0];
      [v134 setBlendingState:0];

      for (m = 1; m != 8; ++m)
      {
        v136 = [v127 colorAttachments];
        v137 = [v136 objectAtIndexedSubscript:m];
        [v137 setPixelFormat:0];
      }

      v138 = v43[12];
      if (v138)
      {
        v139 = [v161 dynamicLibraries];
        v140 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v138, v139);
      }

      else
      {
        v140 = 0;
      }

      v147 = objc_alloc_init(MEMORY[0x277CD6B00]);
      v148 = [v161 defaultCompiler];
      v162 = 0;
      v89 = [v148 newRenderPipelineStateWithDescriptor:v127 dynamicLinkingDescriptor:v140 compilerTaskOptions:v147 error:&v162];
      v149 = v162;

      if (v89)
      {
        v50 = 0;
      }

      else
      {
        if (v149)
        {
          v192 = *MEMORY[0x277CCA7E8];
          v193 = v149;
          v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
        }

        else
        {
          v151 = 0;
        }

        GTMTLReplay_fillError(v159, 101, v151);
        if (v159)
        {
          v156 = *v159;
        }

        else
        {
          v156 = 0;
        }

        GTMTLReplay_handleNSError(v156);
        v50 = v70;
      }

      v154 = v89 == 0;

LABEL_190:
      if (v154)
      {
        goto LABEL_162;
      }

LABEL_191:
      GTMTLReplayWireframeRenderer_submit();
      v50 = v70;

      goto LABEL_162;
    }
  }

LABEL_136:
  v50 = v70;
LABEL_162:

LABEL_55:
  apr_pool_destroy(newpool);
  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

GTReplayQueryRasterMapReply *GTMTLReplayClient_queryRasterMap(uint64_t a1, uint64_t a2, void **a3)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [*(a1 + 8) rasterizationRateMapForKey:a2];
    v4 = v3;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (v3)
    {
      [v3 screenSize];
      v29 = 0uLL;
      v30 = 0;
      [v4 physicalGranularity];
    }

    else
    {
      v29 = 0uLL;
      v30 = 0;
    }

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "layerCount")}];
    if ([v4 layerCount])
    {
      v8 = 0;
      do
      {
        v27 = 0uLL;
        v28 = 0;
        if (v4)
        {
          [v4 physicalSizeForLayer:v8];
        }

        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v27)
        {
          v11 = 0;
          do
          {
            *&v10 = v11;
            [v4 mapPhysicalToScreenCoordinates:v8 forLayer:{v10, 0.0}];
            v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
            [v9 addObject:v12];

            v11 += v29;
          }

          while (v11 < v27);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
        [v9 addObject:v13];

        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (*(&v27 + 1))
        {
          v16 = 0;
          do
          {
            *&v15 = v16;
            [v4 mapPhysicalToScreenCoordinates:v8 forLayer:{0.0, v15}];
            LODWORD(v18) = v17;
            v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
            [v14 addObject:v19];

            v16 += *(&v29 + 1);
          }

          while (v16 < *(&v27 + 1));
        }

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
        [v14 addObject:v20];

        v21 = objc_alloc_init(GTRasterMapLayer);
        v25 = v27;
        v26 = 1;
        [(GTRasterMapLayer *)v21 setSize:&v25];
        [(GTRasterMapLayer *)v21 setHorizontalLogicalCoordinatesAtPhysicalTileBoundaries:v9];
        [(GTRasterMapLayer *)v21 setVerticalLogicalCoordinatesAtPhysicalTileBoundaries:v14];
        [v7 setObject:v21 atIndexedSubscript:v8];

        ++v8;
      }

      while (v8 < [v4 layerCount]);
    }

    v22 = objc_alloc_init(GTReplayQueryRasterMapReply);
    v27 = v29;
    v28 = v30;
    [(GTReplayQueryRasterMapReply *)v22 setPhysicalGranularity:&v27];
    [(GTReplayQueryRasterMapReply *)v22 setLayers:v7];
  }

  else
  {
    v34 = *MEMORY[0x277CCA450];
    v35[0] = @"Raster map query failed: controller not initialized";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    GTMTLReplay_fillError(a3, 101, v4);
    if (a3)
    {
      v6 = *a3;
    }

    else
    {
      v6 = 0;
    }

    GTMTLReplay_handleNSError(v6);
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t HarvestResourceObject()
{
  v1 = MEMORY[0x28223BE20]();
  v670 = v2;
  v683 = v1;
  v686 = v3;
  obj = v4;
  p[47] = *MEMORY[0x277D85DE8];
  v6 = v5;
  [g_activityLog enterHarvestResourceObjectWithAttributes:v6];
  v703 = v6;
  v7 = [v6 objectForKeyedSubscript:@"requestID"];
  v669 = [v7 unsignedLongLongValue];

  v8 = [v703 objectForKeyedSubscript:@"streamref"];
  v677 = [v8 unsignedLongLongValue];

  v9 = [v703 objectForKeyedSubscript:@"type"];
  v10 = [v9 unsignedIntValue];

  v11 = [v703 objectForKeyedSubscript:@"object"];
  v673 = [v11 unsignedLongLongValue];

  v12 = [v703 objectForKeyedSubscript:@"functionIndex"];
  v716 = [v12 unsignedIntValue];

  v13 = [v703 objectForKeyedSubscript:@"functionIndex"];
  v14 = [v13 unsignedLongLongValue];

  v682 = [v703 objectForKeyedSubscript:@"resolution"];
  v681 = [v703 objectForKeyedSubscript:@"objectThreadgroupRange"];
  [(*v686)[2] appendBytes:"MTSP" length:8];
  v777 = 0u;
  v778 = 0u;
  v779 = 0u;
  DWORD2(v777) = 7;
  LODWORD(v778) = 2;
  v15 = (*v686)[1];
  DYTraceEncode_InternalData(&v777, **v686);
  v16 = **v686;
  v17 = *v16;
  if ((*(v16 + 33) & 0x10) != 0)
  {
    v19 = **v686;
    v18 = *v16;
    do
    {
      v19 = (v19 + v17);
      v17 = *v19;
      v18 += v17;
    }

    while ((*(v19 + 33) & 0x20) == 0);
  }

  else
  {
    v18 = *v16;
  }

  [(*v686)[2] appendBytes:v16 length:v18];
  v20 = HIDWORD(v14);
  v21 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    LODWORD(v877[0]) = 67109120;
    DWORD1(v877[0]) = v716;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "debugFuncStop %u", v877, 8u);
  }

  GTMTLReplayController_debugSubCommandStop(v683, v716, HIDWORD(v14));
  v22 = v877;
  v23 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    LOWORD(v877[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", &unk_24DA93952, v877, 2u);
  }

  if (v10 <= 38)
  {
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 != 22)
        {
          if (v10 == 24)
          {
            v45 = v677;
            if (!v677)
            {
              AliasStream = GetAliasStream(*(*v683 + 3), v673, *(*v683 + 11) + v716 - 1);
              if (AliasStream)
              {
                v45 = *AliasStream;
              }

              else
              {
                v45 = 0;
              }
            }

            ht = [v683[1] indirectCommandBufferForKey:v45];
            if (s_logUsingOsLog == 1)
            {
              v296 = gt_tagged_log(0xCu);
              if (os_log_type_enabled(v296, OS_LOG_TYPE_INFO))
              {
                v297 = [(apr_hash_t *)ht label];
                if (v297)
                {
                  v20 = [(apr_hash_t *)ht label];
                  v298 = v20;
                  v299 = [v20 UTF8String];
                }

                else
                {
                  v299 = "no label";
                }

                LODWORD(v877[0]) = 134218242;
                *(v877 + 4) = v45;
                WORD6(v877[0]) = 2080;
                *(v877 + 14) = v299;
                _os_log_impl(&dword_24D764000, v296, OS_LOG_TYPE_INFO, "Harvesting Indirect Command Buffer %llu (%s)", v877, 0x16u);
                if (v297)
                {
                }
              }
            }

            else
            {
              v300 = *MEMORY[0x277D85E08];
              v301 = MEMORY[0x277CCACA8];
              v296 = [(apr_hash_t *)ht label];
              if (v296)
              {
                v20 = [(apr_hash_t *)ht label];
                v302 = v20;
                v303 = [v20 UTF8String];
              }

              else
              {
                v303 = "no label";
              }

              v304 = [v301 stringWithFormat:@"Harvesting Indirect Command Buffer %llu (%s)", v45, v303];
              v305 = v304;
              fprintf(v300, "%s\n", [v304 UTF8String]);

              if (v296)
              {
              }

              else
              {
                v296 = 0;
              }
            }

            v357 = GTMTLSMContext_getObject(**(*v683 + 5), v45, *(*v683 + 11) + v716 - 1)[14];
            v358 = [(apr_hash_t *)ht device];
            v359 = [(apr_hash_t *)ht size];
            v360 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v357);
            v27 = v358;
            v361 = [v358 newIndirectCommandBufferWithDescriptor:v360 maxCommandCount:v359 options:0];

            v362 = [v683[3] blitCommandEncoder];
            [v362 copyIndirectCommandBuffer:ht sourceRange:0 destination:v359 destinationIndex:{v361, 0}];

            if (v677)
            {
              v363 = v677;
            }

            else
            {
              v363 = v673;
            }

            v364 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLIndirectCommandBuffer-0x%llx-Fetch", v363];
            v810[0] = v361;
            v365 = [MEMORY[0x277CBEA90] dataWithBytes:v357 length:48];
            v810[1] = v365;
            v366 = [MEMORY[0x277CBEA60] arrayWithObjects:v810 count:2];

            [v686[1] setObject:v366 forKeyedSubscript:v364];
            memset(v877, 0, 216);
            GTMTLCreateIndirectCommandEncoder(v877, v357);
            if (v686[2] && v669)
            {
              v367 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
              [v686[2] setObject:v367 forKeyedSubscript:v364];
            }

            v746[0] = 0;
            v746[1] = v363;
            v368 = v364;
            v746[2] = [v364 UTF8String];
            v746[3] = 0;
            v746[4] = *&v877[13] * v359;
            v369 = (*v686)[1];
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v746, **v686);
            v370 = **v686;
            v371 = *v370;
            if ((*(v370 + 33) & 0x10) != 0)
            {
              v373 = **v686;
              v372 = *v370;
              do
              {
                v373 = (v373 + v371);
                v371 = *v373;
                v372 += v371;
              }

              while ((*(v373 + 33) & 0x20) == 0);
            }

            else
            {
              v372 = *v370;
            }

            [(*v686)[2] appendBytes:v370 length:v372];

            goto LABEL_594;
          }

          goto LABEL_84;
        }

        if (s_logUsingOsLog == 1)
        {
          v58 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            LOWORD(v877[0]) = 0;
            _os_log_impl(&dword_24D764000, v58, OS_LOG_TYPE_INFO, "Harvesting threadgroup buffer", v877, 2u);
          }
        }

        else
        {
          v104 = *MEMORY[0x277D85E08];
          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting threadgroup buffer"];
          v105 = v58;
          fprintf(v104, "%s\n", [v58 UTF8String]);
        }

        GTMTLReplayController_rewind(v683);
        GTMTLReplayController_debugSubCommand(v683, v716, v20);
        if (*(v683 + 2840) != 70)
        {
          goto LABEL_388;
        }

        v106 = v673 + 1025;
        v107 = v683 + 4 * v673 + 4100;
        v108 = *(v107 + 2740);
        if (!v108)
        {
          goto LABEL_388;
        }

        if (v106 >= 0x1F)
        {
          goto LABEL_388;
        }

        v109 = *v683;
        v110 = *(*v683 + 11);
        v111 = *(v683 + 5640);
        v112 = *(v107 + 2771);
        v113 = GTMTLReplayController_renderPassDescriptor(v683);
        v114 = *(v113 + 814);
        if (!*(v113 + 814) || (v115 = v113, ht = v111, v116 = *(v113 + 812), !*(v113 + 812)))
        {
LABEL_388:
          v119 = MakeNSError(101, MEMORY[0x277CBEC10]);
          GTMTLReplay_handleNSError(v119);
          ht = [MEMORY[0x277CBEA90] data];
          goto LABEL_586;
        }

        v678 = v110;
        v687 = v112;
        v692 = v106;
        v117 = v683[2818];
        v118 = v683[2819];
        v119 = v683[1];
        obja = [v119 defaultDevice];
        v120 = (v117 + (v114 - 1)) / v114 * v108 * ((v118 + (v116 - 1)) / v116);
        v121 = v683[3];
        v717 = [v121 bufferWithLength:v120 alignment:1];
        if (!v717)
        {
          v128 = MakeNSError(101, MEMORY[0x277CBEC10]);
          GTMTLReplay_handleNSError(v128);
          ht = [MEMORY[0x277CBEA90] data];
          goto LABEL_581;
        }

        if ((GT_SUPPORT_0 & 1) == 0)
        {
LABEL_584:
          ht = [v717 data];
          goto LABEL_585;
        }

        v697 = objc_alloc_init(MEMORY[0x277CD6D10]);
        p[0] = @"THREADGROUP_MEMORY_LENGTH";
        v122 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v108];
        *&__dst[0] = v122;
        p[1] = @"THREADGROUP_MEMORY_INDEX";
        v123 = [MEMORY[0x277CCABB0] numberWithInt:v106];
        *(&__dst[0] + 1) = v123;
        v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:p count:2];
        [v697 setPreprocessorMacros:v124];

        *&v817 = 0;
        v671 = [obja newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\n\nkernel void dumpThreadgroupData(uint2 threadgroupInGrid [[ threadgroup_position_in_grid ]] options:\n                                uint2 threadgroupsPerGrid [[ threadgroups_per_grid ]] error:{\n                                device uint8_t* threadgroupBufferDump [[ buffer(0) ]], \n                                threadgroup uint8_t* threadgroupData [[ threadgroup(THREADGROUP_MEMORY_INDEX) ]])\n{\n   uint tileIndex = (threadgroupInGrid.y * threadgroupsPerGrid.x) + threadgroupInGrid.x;\n   uint offset = THREADGROUP_MEMORY_LENGTH * tileIndex;\n\n   for (int i = 0; i < THREADGROUP_MEMORY_LENGTH; i++)\n   {\n       threadgroupBufferDump[offset + i] = threadgroupData[i];\n   }\n}\n", v697, &v817}];
        v125 = v817;
        if (!v671)
        {
          *&v780 = 0;
          GTMTLReplay_fillError(&v780, 101, MEMORY[0x277CBEC10]);
          v126 = v780;
          GTMTLReplay_handleNSError(v126);
          ht = [MEMORY[0x277CBEA90] data];
          v129 = v125;
          v128 = 0;
          v130 = 0;
          goto LABEL_578;
        }

        v126 = [v671 newFunctionWithName:@"dumpThreadgroupData"];
        if (v126)
        {
          v127 = objc_alloc_init(MEMORY[0x277CD7070]);
          [v127 setLabel:@"Tile Pipeline for dumping Threadgroup data"];
          [v127 setTileFunction:v126];
          FillAttachmentPixelFormats(v115, v109[5], ht + v678, v127);
          *&v780 = v125;
          v128 = [obja newRenderPipelineStateWithTileDescriptor:v127 error:&v780];
          v129 = v780;

          if (v128)
          {
            v130 = 1;
LABEL_577:

LABEL_578:
            if (v130)
            {
              if (*(v683 + 2840))
              {
                v612 = v683[25];
              }

              else
              {
                v612 = 0;
              }

              v613 = [v119 renderCommandEncoderForKey:v612];
              [v613 pushDebugGroup:@"Dump Tile Threadgroup Data"];
              [v613 setRenderPipelineState:v128];
              v614 = [v717 heapBuffer];
              [v613 setTileBuffer:v614 offset:objc_msgSend(v717 atIndex:{"heapLocation"), 0}];

              [v613 setThreadgroupMemoryLength:v108 offset:v687 atIndex:v692];
              v877[0] = vdupq_n_s64(1uLL);
              *&v877[1] = 1;
              [v613 dispatchThreadsPerTile:v877];
              [v613 popDebugGroup];

              goto LABEL_584;
            }

LABEL_581:

LABEL_585:
LABEL_586:

            [v683[1] commitCommandBuffers];
            v615 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLBuffer-0x%llx-Fetch", v673];
            [v686[1] setObject:ht forKeyedSubscript:v615];
            if (v686[2] && v669)
            {
              v616 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
              [v686[2] setObject:v616 forKeyedSubscript:v615];
            }

            v745[0] = 0;
            v745[1] = v673;
            v27 = v615;
            v617 = v615;
            v745[2] = [v615 UTF8String];
            v745[3] = 0;
            v745[4] = [(apr_hash_t *)ht length];
            v618 = (*v686)[1];
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v745, **v686);
            v619 = **v686;
            v620 = *v619;
            if ((*(v619 + 33) & 0x10) != 0)
            {
              v622 = **v686;
              v621 = *v619;
              do
              {
                v622 = (v622 + v620);
                v620 = *v622;
                v621 += v620;
              }

              while ((*(v622 + 33) & 0x20) == 0);
            }

            else
            {
              v621 = *v619;
            }

            [(*v686)[2] appendBytes:v619 length:v621];
            goto LABEL_594;
          }

          v789 = 0;
          GTMTLReplay_fillError(&v789, 101, MEMORY[0x277CBEC10]);
          v611 = v789;
          GTMTLReplay_handleNSError(v611);
          ht = [MEMORY[0x277CBEA90] data];
        }

        else
        {
          *&v780 = 0;
          GTMTLReplay_fillError(&v780, 101, MEMORY[0x277CBEC10]);
          v127 = v780;
          GTMTLReplay_handleNSError(v127);
          ht = [MEMORY[0x277CBEA90] data];
          v129 = v125;
        }

        v128 = 0;
        v130 = 0;
        goto LABEL_577;
      }

      ht = v683[1];
      v76 = v683[3];
      v77 = *v683;
      v78 = *(*v683 + 11) + v716;
      v79 = GetAliasStream(*(*v683 + 3), v673, v78 - 1);
      if (v79)
      {
        v80 = *v79;
      }

      else
      {
        v80 = 0;
      }

      v134 = [(apr_hash_t *)ht accelerationStructureForKey:v80];
      Object = GTMTLSMContext_getObject(*v77[5], v80, v78);
      if (!Object)
      {

        goto LABEL_553;
      }

      v136 = Object;
      v137 = [v76 bufferWithLength:24 alignment:1];
      v138 = [v76 accelerationStructureCommandEncoder];
      v139 = [v137 heapBuffer];
      [v138 writeAccelerationStructureSerializationData:v134 toBuffer:v139 offset:{objc_msgSend(v137, "heapLocation")}];

      v140 = [v76 commitCommandBufferAndWait];
      if ([v140 status] == 5)
      {
        *v670 = [v140 error];

        goto LABEL_553;
      }

      v179 = [v137 data];
      v180 = v179;
      v181 = [v179 bytes];

      v698 = [(apr_hash_t *)ht defaultDevice];
      if ([v698 isCompatibleWithAccelerationStructure:*v181])
      {
        v182 = *(v136 + 113) != 0;
      }

      else
      {
        v182 = 0;
      }

      v720 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure-0x%llx-Generic", v80];
      v693 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Offsets", v720];
      if (v182)
      {
        v280 = v698;
        if (!*(v136 + 112))
        {
          v281 = [v698 newBufferWithLength:v181[1] options:0];
          v282 = [v76 accelerationStructureCommandEncoder];
          [v282 serializePrimitiveAccelerationStructure:v134 toBuffer:v281 serializedBufferOffset:0];
          objd = [v76 commitCommandBufferAndWait];
          if ([objd status] == 5)
          {
LABEL_450:
            *v670 = [objd error];
LABEL_455:

            goto LABEL_456;
          }

          v280 = v698;
        }

        v690 = [v280 latestSupportedGenericBVHVersion];
        v281 = [objc_alloc(MEMORY[0x277CD6E28]) initWithVersion:v690];
        v282 = [v76 accelerationStructureCommandEncoder];
        if (([v282 writeGenericBVHStructureSizesOfAccelerationStructure:v134 into:v281] & 1) == 0)
        {
LABEL_456:

          goto LABEL_553;
        }

        objd = [v76 commitCommandBufferAndWait];
        if ([objd status] == 5)
        {
          goto LABEL_450;
        }

        objd = [objc_alloc(MEMORY[0x277CD6E38]) initWithVersion:v690];
        v684 = [v281 headerBufferSize];
        v679 = &v684[[v281 innerNodeBufferSize]];
        v674 = &v679[[v281 leafNodeBufferSize]];
        v667 = &v674[[v281 primitiveBufferSize]];
        v661 = &v667[[v281 geometryBufferSize]];
        v658 = ([v281 instanceTransformBufferSize] + v661);
        v655 = &v658[[v281 perPrimitiveDataBufferSize]];
        v284 = &v655[[v281 controlPointBufferSize]];
        v283 = [v76 bufferWithLength:? alignment:?];
        v493 = [v283 heapBuffer];
        [objd setHeaderBuffer:v493];

        [objd setHeaderBufferOffset:{objc_msgSend(v283, "heapLocation")}];
        v494 = [v283 heapBuffer];
        [objd setInnerNodeBuffer:v494];

        [objd setInnerNodeBufferOffset:{&v684[objc_msgSend(v283, "heapLocation")]}];
        v495 = [v283 heapBuffer];
        [objd setLeafNodeBuffer:v495];

        [objd setLeafNodeBufferOffset:{&v679[objc_msgSend(v283, "heapLocation")]}];
        v496 = [v283 heapBuffer];
        [objd setPrimitiveBuffer:v496];

        [objd setPrimitiveBufferOffset:{&v674[objc_msgSend(v283, "heapLocation")]}];
        v497 = [v283 heapBuffer];
        [objd setGeometryBuffer:v497];

        [objd setGeometryBufferOffset:{&v667[objc_msgSend(v283, "heapLocation")]}];
        v498 = [v283 heapBuffer];
        [objd setInstanceTransformBuffer:v498];

        [objd setInstanceTransformBufferOffset:{objc_msgSend(v283, "heapLocation") + v661}];
        v499 = [v283 heapBuffer];
        [objd setPerPrimitiveDataBuffer:v499];

        [objd setPerPrimitiveDataBufferOffset:{&v658[objc_msgSend(v283, "heapLocation")]}];
        v500 = [v283 heapBuffer];
        [objd setControlPointBuffer:v500];

        [objd setControlPointBufferOffset:{&v655[objc_msgSend(v283, "heapLocation")]}];
        v501 = [v76 accelerationStructureCommandEncoder];
        if (([v501 writeGenericBVHStructureOfAccelerationStructure:v134 into:objd] & 1) == 0)
        {
LABEL_454:

          v282 = v281;
          v281 = v283;
          goto LABEL_455;
        }

        v502 = [v76 commitCommandBufferAndWait];
        if ([v502 status] == 5)
        {
          *v670 = [v502 error];

          goto LABEL_454;
        }

        v653 = MEMORY[0x277CCAAB0];
        v790[0] = @"version";
        v691 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v690];
        v791[0] = v691;
        v790[1] = @"headerBufferOffset";
        v654 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
        v791[1] = v654;
        v790[2] = @"innerNodeBufferOffset";
        v685 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v684];
        v791[2] = v685;
        v790[3] = @"leafNodeBufferOffset";
        v680 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v679];
        v791[3] = v680;
        v790[4] = @"primitiveBufferOffset";
        v676 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v674];
        v791[4] = v676;
        v790[5] = @"geometryBufferOffset";
        v668 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v667];
        v791[5] = v668;
        v790[6] = @"instanceTransformBufferOffset";
        v663 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v661];
        v791[6] = v663;
        v790[7] = @"perPrimitiveDataBufferOffset";
        v659 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v658];
        v791[7] = v659;
        v790[8] = @"controlPointBufferOffset";
        v601 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v655];
        v791[8] = v601;
        v602 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v791 forKeys:v790 count:9];
        v603 = [v653 archivedDataWithRootObject:v602 requiringSecureCoding:1 error:v670];
        [v686[1] setObject:v603 forKeyedSubscript:v693];
      }

      else
      {
        v281 = objc_alloc_init(MEMORY[0x277CBEA90]);
        [v686[1] setObject:v281 forKeyedSubscript:v693];
        v283 = 0;
        v284 = 0;
      }

      v285 = [v283 data];
      [v686[1] setObject:v285 forKeyedSubscript:v720];

      if (v686[2] && v669)
      {
        v286 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
        [v686[2] setObject:v286 forKeyedSubscript:v720];
      }

      v724[0] = 0;
      v724[1] = v80;
      v287 = v720;
      v724[2] = [v720 UTF8String];
      v724[3] = 0;
      v724[4] = v284;
      v288 = (*v686)[1];
      DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v724, **v686);
      v289 = **v686;
      v290 = *v289;
      if ((*(v289 + 33) & 0x10) != 0)
      {
        v381 = **v686;
        v291 = *v289;
        do
        {
          v381 = (v381 + v290);
          v290 = *v381;
          v291 += v290;
        }

        while ((*(v381 + 33) & 0x20) == 0);
      }

      else
      {
        v291 = *v289;
      }

      [(*v686)[2] appendBytes:v289 length:v291];

      v27 = v76;
      goto LABEL_594;
    }

    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_84;
      }

      if (v673 == -1347)
      {
        if (s_logUsingOsLog == 1)
        {
          v177 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
          {
            LOWORD(v877[0]) = 0;
            _os_log_impl(&dword_24D764000, v177, OS_LOG_TYPE_INFO, "Harvesting translation buffer", v877, 2u);
          }
        }

        else
        {
          v200 = *MEMORY[0x277D85E08];
          v177 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting translation buffer"];
          v201 = v177;
          fprintf(v200, "%s\n", [v177 UTF8String]);
        }

        p[0] = 0;
        apr_pool_create_ex(p, 0, 0, v202);
        v203 = *v683;
        memset(v877, 0, 104);
        v204 = p[0];
        GTMTLSMContext_indirectCommandBufferResources(v877, *(v203 + 5), *(v203 + 11) + v716, p[0]);
        v699 = *(v203 + 1);
        v719 = v683[1];
        v205 = *&v877[0];
        v206 = apr_array_make(v204, *(*&v877[0] + 12), 32);
        objc = apr_hash_make(v204);
        hta = apr_hash_make(v204);
        if (*(v205 + 12) >= 1)
        {
          v207 = 0;
          v208 = 0;
          do
          {
            v209 = *(v205 + 24);
            v210 = apr_array_push(v206);
            v211 = [v719 bufferForKey:*(v209 + v207 + 16)];
            v212 = DEVICEOBJECT(v211);

            *v210 = [v212 gpuAddress];
            v210[1] = [v212 length];
            v210[2] = *(v209 + v207 + 16);
            *(v210 + 24) = *(v209 + v207 + 24);

            ++v208;
            v207 += 32;
          }

          while (v208 < *(v205 + 12));
        }

        qsort(v206->elts, v206->nelts, v206->elt_size, GTMTLGPUAddressResource_compare);
        v213 = *(&v877[2] + 1);
        *(*(&v877[2] + 1) + 24) = 0;
        *(v213 + 32) = 0;
        *(v213 + 16) = v213;
        *(v213 + 40) = 0;
        v214 = apr_hash_next((v213 + 16));
        if (v214)
        {
          v215 = v214;
          do
          {
            v216 = *(*(v215 + 1) + 32);
            v217 = apr_palloc(v204, 0x20uLL);
            v218 = [v719 renderPipelineStateForKey:*(v216 + 8)];
            v219 = DEVICEOBJECT(v218);

            *v217 = [v219 uniqueIdentifier];
            v217[1] = *(v216 + 8);
            v217[2] = [v219 gpuResourceID];
            apr_hash_set(objc, v217, 8, v217);

            v215 = apr_hash_next(v215);
          }

          while (v215);
        }

        v220 = *&v877[3];
        *(*&v877[3] + 24) = 0;
        *(v220 + 32) = 0;
        *(v220 + 16) = v220;
        *(v220 + 40) = 0;
        v221 = apr_hash_next((v220 + 16));
        if (v221)
        {
          v222 = v221;
          do
          {
            v223 = *(*(v222 + 1) + 32);
            v224 = apr_palloc(v204, 0x20uLL);
            v225 = [v719 computePipelineStateForKey:*(v223 + 8)];
            v226 = DEVICEOBJECT(v225);

            *v224 = [v226 uniqueIdentifier];
            v224[1] = *(v223 + 8);
            v224[2] = [v226 gpuResourceID];
            apr_hash_set(hta, v224, 8, v224);

            v222 = apr_hash_next(v222);
          }

          while (v222);
        }

        nelts = v206->nelts;
        v228 = 0;
        if (nelts >= 1)
        {
          v229 = (v206->elts + 24);
          do
          {
            v230 = *v229;
            v229 += 32;
            if (!v230)
            {
              ++v228;
            }

            --nelts;
          }

          while (nelts);
        }

        v231 = apr_array_make(v204, 3 * v228 + 2 * (*(hta + 12) + *(objc + 12)) + 3, 8);
        *apr_array_push(v231) = v228;
        v232 = v206->nelts;
        if (v232 >= 1)
        {
          v233 = 0;
          for (i = 0; i < v232; ++i)
          {
            elts = v206->elts;
            if (!elts[v233 + 24])
            {
              *&__dst[0] = *&elts[v233 + 16];
              entry = find_entry(v699, __dst, 8uLL, 0);
              if (*entry && (v237 = *(*entry + 32)) != 0)
              {
                v238 = atomic_load((v237 + 56));
                v239 = v237 + (~(v238 >> 2) & 8);
              }

              else
              {
                v239 = 8;
              }

              v240 = *v239;
              *apr_array_push(v231) = v240;
              v241 = &elts[v233];
              v242 = *&elts[v233];
              *apr_array_push(v231) = v242;
              v243 = *(v241 + 1);
              *apr_array_push(v231) = v243;
              v232 = v206->nelts;
            }

            v233 += 32;
          }
        }

        v244 = *(objc + 12);
        *apr_array_push(v231) = v244;
        *(objc + 10) = 0;
        *(objc + 2) = objc;
        *(objc + 3) = 0;
        *(objc + 4) = 0;
        v245 = apr_hash_next((objc + 16));
        if (v245)
        {
          v246 = v245;
          do
          {
            v247 = *(*(v246 + 1) + 32);
            *&__dst[0] = v247[1];
            v248 = find_entry(v699, __dst, 8uLL, 0);
            if (*v248 && (v249 = *(*v248 + 32)) != 0)
            {
              v250 = atomic_load((v249 + 56));
              v251 = v249 + (~(v250 >> 2) & 8);
            }

            else
            {
              v251 = 8;
            }

            v252 = *v251;
            *apr_array_push(v231) = v252;
            v253 = *v247;
            *apr_array_push(v231) = v253;
            v246 = apr_hash_next(v246);
          }

          while (v246);
        }

        v254 = *(hta + 12);
        *apr_array_push(v231) = v254;
        *(hta + 10) = 0;
        *(hta + 2) = hta;
        *(hta + 3) = 0;
        *(hta + 4) = 0;
        v255 = apr_hash_next((hta + 16));
        if (v255)
        {
          v256 = v255;
          do
          {
            v257 = *(*(v256 + 1) + 32);
            *&__dst[0] = v257[1];
            v258 = find_entry(v699, __dst, 8uLL, 0);
            if (*v258 && (v259 = *(*v258 + 32)) != 0)
            {
              v260 = atomic_load((v259 + 56));
              v261 = v259 + (~(v260 >> 2) & 8);
            }

            else
            {
              v261 = 8;
            }

            v262 = *v261;
            *apr_array_push(v231) = v262;
            v263 = *v257;
            *apr_array_push(v231) = v263;
            v256 = apr_hash_next(v256);
          }

          while (v256);
        }

        v264 = v231->elts;
        elt_size = v231->elt_size;
        v265 = v231->nelts;

        v267 = objc_alloc(MEMORY[0x277CBEA90]);
        v767[0] = MEMORY[0x277D85DD0];
        v767[1] = 3221225472;
        v767[2] = __HarvestResourceObject_block_invoke_101;
        v767[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
        v767[4] = p[0];
        ht = [v267 initWithBytesNoCopy:v264 length:elt_size * v265 deallocator:v767];
      }

      else if (v673 == -1026)
      {
        if (s_logUsingOsLog == 1)
        {
          v56 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            LOWORD(v877[0]) = 0;
            _os_log_impl(&dword_24D764000, v56, OS_LOG_TYPE_INFO, "Harvesting vertex data", v877, 2u);
          }
        }

        else
        {
          v190 = *MEMORY[0x277D85E08];
          v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting vertex data"];
          v191 = v56;
          fprintf(v190, "%s\n", [v56 UTF8String]);
        }

        v192 = v681;
        v193 = v683[1];
        v194 = *v683;
        v195 = *(*v683 + 16);
        v196 = (*(v683 + 5640) - 1);
        v197 = *(v195 + 24) + (v196 << 6);
        memset(p, 0, 376);
        memcpy(v877, v683 + 24, 0x2BA8uLL);
        if (LODWORD(v877[698]) == 70)
        {
          memcpy(__dst, v683 + 31, 0x2B68uLL);
          if (*(v197 + 8) >> 2 == 1073737833)
          {
            p[46] = *v683[23];
            GTMTLSMContext_indirectCommandBufferResources(&p[32], *(v194 + 40), *v197, p[46]);
            GetExecuteCommandsInBufferArgs(p, v197, *(v194 + 16));
            v198 = GTMTLSMContext_getObject(**(v194 + 40), p[0], *v197);
            GTMTLCreateIndirectCommandEncoder(&p[5], v198[14]);
            p[45] = (p[3] + p[31] * *(v683 + 5641));
            GTMTLSMRenderCommandEncoder_loadIndirectCommand(__dst, &p[5], p[45], &p[32]);
            memcpy(&v877[3] + 8, __dst, 0x2B68uLL);
          }

          v199 = *&__dst[534];
        }

        else
        {
          v199 = *&v877[7];
        }

        v273 = GTMTLSMContext_getObject(**(v194 + 40), v199, *v197);
        if (v273)
        {
          v274 = v273;
          if (v273[9] || (v382 = v273[11]) != 0 && *(v382 + 1016) == 4)
          {
            memcpy(__dst, p, 0x178uLL);
            v275 = GTMTLReplayController_generatePostMeshData(v683, v193, v194, v195, v196, v197, v877, v274, __dst, obj, v192, v670);
          }

          else
          {
            memcpy(__dst, p, 0x178uLL);
            v275 = GTMTLReplayController_generatePostVertexData(v683, v193, v194, v195, v196, v197, v877, v274, __dst, obj, v670);
          }

          v348 = v275;
        }

        else
        {
          GTPostVertexDataError(1u, @"Internal error: Pipeline state error", 0, 0);
          *v670 = v348 = 0;
        }

        if (!v348)
        {
          goto LABEL_596;
        }

        v383 = objc_alloc(MEMORY[0x277CBEA90]);
        v384 = v348;
        v385 = [v348 contents];
        v386 = [v348 length];
        v768[0] = MEMORY[0x277D85DD0];
        v768[1] = 3221225472;
        v768[2] = __HarvestResourceObject_block_invoke;
        v768[3] = &unk_279658278;
        v387 = v348;
        v769 = v387;
        ht = [v383 initWithBytesNoCopy:v385 length:v386 deallocator:v768];
      }

      else
      {
        if (v673 > 0xFFFFFFFFFFFFFBFELL)
        {
          v178 = 0;
          ht = 0;
LABEL_338:
          if (v677)
          {
            v388 = v677;
          }

          else
          {
            v388 = v673;
          }

          v389 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLBuffer-0x%llx-Fetch", v388];
          [v686[1] setObject:ht forKeyedSubscript:v389];
          if (v686[2] && v669)
          {
            v390 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
            [v686[2] setObject:v390 forKeyedSubscript:v389];
          }

          v760[0] = 0;
          v760[1] = v388;
          v27 = v389;
          v391 = v389;
          v760[2] = [v389 UTF8String];
          v760[3] = v178;
          v760[4] = [(apr_hash_t *)ht length];
          v392 = (*v686)[1];
          DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v760, **v686);
          v393 = **v686;
          v394 = *v393;
          if ((*(v393 + 33) & 0x10) != 0)
          {
            v396 = **v686;
            v395 = *v393;
            do
            {
              v396 = (v396 + v394);
              v394 = *v396;
              v395 += v394;
            }

            while ((*(v396 + 33) & 0x20) == 0);
          }

          else
          {
            v395 = *v393;
          }

          [(*v686)[2] appendBytes:v393 length:v395];
          goto LABEL_594;
        }

        if (v673 < 0xFFFFFFFFFFFFFBBELL)
        {
          if (v673 < 0xFFFFFFFFFFFFFB7ELL)
          {
            if (v673 < 0xFFFFFFFFFFFFFB3ELL)
            {
              if (v673 < 0xFFFFFFFFFFFFFAFELL)
              {
                if (v673 < 0xFFFFFFFFFFFFFABELL)
                {
                  v604 = v683;
                  v605 = v683[3];
                  v606 = v677;
                  if (!v677)
                  {
                    v607 = GetAliasStream(*(*v683 + 3), v673, *(*v683 + 11) + v716 - 1);
                    if (v607)
                    {
                      v606 = *v607;
                    }

                    else
                    {
                      v606 = 0;
                    }

                    v604 = v683;
                  }

                  v625 = [v604[1] bufferForKey:v606];
                  v626 = [v703 objectForKeyedSubscript:@"range.location"];
                  LODWORD(v178) = [v626 unsignedIntValue];
                  v627 = [v703 objectForKeyedSubscript:@"range.length"];
                  v628 = [v627 unsignedIntValue];

                  v629 = [v625 length];
                  v630 = v629;
                  if (v628)
                  {
                    v631 = v178;
                    v632 = v628 + v178;
                    if (v632 >= v629)
                    {
                      v632 = v629;
                    }

                    if (v629 >= v178)
                    {
                      v178 = v178;
                    }

                    else
                    {
                      v178 = 0;
                    }

                    v633 = v632 >= v631;
                    v634 = v632 - v631;
                    if (v633)
                    {
                      v630 = v634;
                    }

                    else
                    {
                      v630 = 0;
                    }
                  }

                  else
                  {
                    v178 = 0;
                  }

                  if (s_logUsingOsLog == 1)
                  {
                    v635 = gt_tagged_log(0xCu);
                    if (os_log_type_enabled(v635, OS_LOG_TYPE_INFO))
                    {
                      v636 = [v625 label];
                      if (v636)
                      {
                        v0 = [v625 label];
                        v637 = v0;
                        v638 = [v0 UTF8String];
                      }

                      else
                      {
                        v638 = "no label";
                      }

                      LODWORD(v877[0]) = 134218754;
                      *(v877 + 4) = v606;
                      WORD6(v877[0]) = 2080;
                      *(v877 + 14) = v638;
                      WORD3(v877[1]) = 2048;
                      *(&v877[1] + 1) = v178;
                      LOWORD(v877[2]) = 2048;
                      *(&v877[2] + 2) = v178 + v630;
                      _os_log_impl(&dword_24D764000, v635, OS_LOG_TYPE_INFO, "Harvesting buffer %llu (%s) range: %llu - %llu", v877, 0x2Au);
                      if (v636)
                      {
                      }
                    }
                  }

                  else
                  {
                    v639 = *MEMORY[0x277D85E08];
                    v640 = MEMORY[0x277CCACA8];
                    v635 = [v625 label];
                    if (v635)
                    {
                      v0 = [v625 label];
                      v641 = v0;
                      v642 = [v0 UTF8String];
                    }

                    else
                    {
                      v642 = "no label";
                    }

                    v643 = [v640 stringWithFormat:@"Harvesting buffer %llu (%s) range: %llu - %llu", v606, v642, v178, v178 + v630];
                    v644 = v643;
                    fprintf(v639, "%s\n", [v643 UTF8String]);

                    if (v635)
                    {
                    }

                    else
                    {
                      v635 = 0;
                    }
                  }

                  v645 = [v605 bufferWithLength:v630 alignment:1];
                  v862 = v625;
                  v646 = [MEMORY[0x277CBEA60] arrayWithObjects:&v862 count:1];
                  GTMTLReplayClient_waitForUntrackedWritesToComplete(v683, v646);

                  v647 = [v605 blitCommandEncoder];
                  v648 = [v645 heapBuffer];
                  [v647 copyFromBuffer:v625 sourceOffset:v178 toBuffer:v648 destinationOffset:objc_msgSend(v645 size:{"heapLocation"), v630}];

                  ht = [v645 data];

                  goto LABEL_338;
                }

                *&v877[0] = 0;
                apr_pool_create_ex(v877, 0, 0, v24);
                v594 = *&v877[0];
                v595 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
                v597 = v596;
                v598 = objc_alloc(MEMORY[0x277CBEA90]);
                v761[0] = MEMORY[0x277D85DD0];
                v761[1] = 3221225472;
                v761[2] = __HarvestResourceObject_block_invoke_6;
                v761[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
                v761[4] = v594;
                ht = [v598 initWithBytesNoCopy:v595 length:v597 deallocator:v761];
              }

              else
              {
                *&v877[0] = 0;
                apr_pool_create_ex(v877, 0, 0, v24);
                v510 = *&v877[0];
                v511 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
                v513 = v512;
                v514 = objc_alloc(MEMORY[0x277CBEA90]);
                v762[0] = MEMORY[0x277D85DD0];
                v762[1] = 3221225472;
                v762[2] = __HarvestResourceObject_block_invoke_5;
                v762[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
                v762[4] = v510;
                ht = [v514 initWithBytesNoCopy:v511 length:v513 deallocator:v762];
              }
            }

            else
            {
              *&v877[0] = 0;
              apr_pool_create_ex(v877, 0, 0, v24);
              v401 = *&v877[0];
              v402 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
              v404 = v403;
              v405 = objc_alloc(MEMORY[0x277CBEA90]);
              v763[0] = MEMORY[0x277D85DD0];
              v763[1] = 3221225472;
              v764[0] = __HarvestResourceObject_block_invoke_4;
              v764[1] = &__block_descriptor_40_e12_v24__0_v8Q16l;
              v764[2] = v401;
              ht = [v405 initWithBytesNoCopy:v402 length:v404 deallocator:v763];
            }
          }

          else
          {
            *&v877[0] = 0;
            apr_pool_create_ex(v877, 0, 0, v24);
            v376 = *&v877[0];
            v377 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
            v379 = v378;
            v380 = objc_alloc(MEMORY[0x277CBEA90]);
            v765[0] = MEMORY[0x277D85DD0];
            v765[1] = 3221225472;
            v765[2] = __HarvestResourceObject_block_invoke_3;
            v765[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
            v765[4] = v376;
            ht = [v380 initWithBytesNoCopy:v377 length:v379 deallocator:v765];
          }
        }

        else
        {
          *&v877[0] = 0;
          apr_pool_create_ex(v877, 0, 0, v24);
          v268 = *&v877[0];
          v269 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
          v271 = v270;
          v272 = objc_alloc(MEMORY[0x277CBEA90]);
          v766[0] = MEMORY[0x277D85DD0];
          v766[1] = 3221225472;
          v766[2] = __HarvestResourceObject_block_invoke_2;
          v766[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
          v766[4] = v268;
          ht = [v272 initWithBytesNoCopy:v269 length:v271 deallocator:v766];
        }
      }

      v178 = 0;
      goto LABEL_338;
    }

    if (v673 == -3)
    {
      if (s_logUsingOsLog == 1)
      {
        v184 = gt_tagged_log(0xCu);
        if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
        {
          LOWORD(v877[0]) = 0;
          _os_log_impl(&dword_24D764000, v184, OS_LOG_TYPE_INFO, "Harvesting solid wireframe texture", v877, 2u);
        }
      }

      else
      {
        v340 = *MEMORY[0x277D85E08];
        v184 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting solid wireframe texture"];
        v341 = v184;
        fprintf(v340, "%s\n", [v184 UTF8String]);
      }

      v775 = 0;
      v342 = &v775;
      v343 = GTMTLReplayController_generateWireframeTexture(v683, obj, 0, 1, &v775);
LABEL_291:
      v185 = v343;
LABEL_392:
      v27 = *v342;
      goto LABEL_393;
    }

    if (v673 != -2)
    {
      if (v673 != -1)
      {
        if (v673 < 0xFFFFFFFFFFFFFDFFLL)
        {
          v346 = v677;
          if (!v677)
          {
            v347 = GetAliasStream(*(*v683 + 3), v673, *(*v683 + 11) + v716 - 1);
            if (v347)
            {
              v346 = *v347;
            }

            else
            {
              v346 = 0;
            }
          }

          v515 = v683[7];
          v516 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v346];
          v517 = [v515 objectForKeyedSubscript:v516];
          v518 = v517;
          if (v517)
          {
            v185 = v517;
          }

          else
          {
            v519 = [v683[1] tryGetTextureForKey:v346];
            v22 = v519;
            if (v519)
            {
              v185 = v519;
            }

            else
            {
              v520 = [v683[1] textureViewPoolEntryForKey:v346];
              v185 = [v520 materializeTextureView];
            }
          }

          if (s_logUsingOsLog == 1)
          {
            v521 = gt_tagged_log(0xCu);
            if (os_log_type_enabled(v521, OS_LOG_TYPE_INFO))
            {
              v522 = [v185 label];
              if (v522)
              {
                v22 = [v185 label];
                v523 = v22;
                v524 = [v22 UTF8String];
              }

              else
              {
                v524 = "no label";
              }

              LODWORD(v877[0]) = 134218242;
              *(v877 + 4) = v346;
              WORD6(v877[0]) = 2080;
              *(v877 + 14) = v524;
              _os_log_impl(&dword_24D764000, v521, OS_LOG_TYPE_INFO, "Harvesting texture %llu (%s)", v877, 0x16u);
              if (v522)
              {
              }
            }
          }

          else
          {
            v525 = *MEMORY[0x277D85E08];
            v526 = MEMORY[0x277CCACA8];
            v521 = [v185 label];
            if (v521)
            {
              v22 = [v185 label];
              v527 = v22;
              v528 = [v22 UTF8String];
            }

            else
            {
              v528 = "no label";
            }

            v529 = [v526 stringWithFormat:@"Harvesting texture %llu (%s)", v346, v528];
            v530 = v529;
            fprintf(v525, "%s\n", [v529 UTF8String]);

            if (v521)
            {
            }

            else
            {
              v521 = 0;
            }
          }

          v592 = [v703 objectForKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
          v593 = v592;
          if (v592)
          {
            v673 = [v592 unsignedLongLongValue];
          }

          v27 = 0;
          if (v185)
          {
LABEL_394:
            v873 = v185;
            v424 = [MEMORY[0x277CBEA60] arrayWithObjects:&v873 count:1];
            GTMTLReplayClient_waitForUntrackedWritesToComplete(v683, v424);

            memset(v877, 0, 24);
            v425 = [v185 width];
            v426 = [v185 height];
            *&v877[0] = v425;
            *(&v877[0] + 1) = v426;
            *&v877[1] = 1;
            memset(__dst, 0, 24);
            *p = v877[0];
            p[2] = 1;
            GTMTLReplayClient_resizeResolution(__dst, v682, p);
            if ([v185 storageMode] == 3)
            {
              v877[0] = __dst[0];
              *&v877[1] = *&__dst[1];
              v427 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v185);
              [v427 setWidth:*&v877[0]];
              [v427 setHeight:*(&v877[0] + 1)];
              [v427 setDepth:*&v877[1]];
              [v427 setStorageMode:2];
              v428 = [v185 device];
              v429 = [v428 newTextureWithDescriptor:v427];

              if (!v429)
              {
                v871 = @"GTErrorKeyMTLTextureDescriptor";
                v441 = SerializeMTLTextureDescriptorToDictionary(v427);
                v872 = v441;
                v442 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v872 forKeys:&v871 count:1];
                GTMTLReplay_fillError(v670, 102, v442);
                ht = 0;
LABEL_423:

                goto LABEL_553;
              }

              v430 = v429;
            }

            else
            {
              v430 = v185;
            }

            ht = v430;
            v433 = *&v877[0] ^ *&__dst[0] | *(&v877[0] + 1) ^ *(&__dst[0] + 1) | *&v877[1] ^ *&__dst[1];
            if ([(apr_hash_t *)v430 textureType]== 4 || [(apr_hash_t *)ht textureType]== 8)
            {
              v434 = [v703 objectForKeyedSubscript:@"resolveMultisampleTexture"];
              v435 = v434;
              if (v434)
              {
                v436 = v434;
              }

              else
              {
                v436 = [MEMORY[0x277CCABB0] numberWithBool:v433 != 0];
              }

              v437 = v436;

              v438 = [v437 BOOLValue];
            }

            else
            {
              v438 = 0;
            }

            if (v433 | v677)
            {
              v870 = v703;
              v439 = [MEMORY[0x277CBEA60] arrayWithObjects:&v870 count:1];
              v869 = ht;
              v440 = [MEMORY[0x277CBEA60] arrayWithObjects:&v869 count:1];
              v772 = 0;
              v441 = GTMTLReplayClient_retrieveTexturesForResize(v683, v439, v440, v438, &v772);
              v427 = v772;

              if (v427)
              {
                v867 = *MEMORY[0x277CCA7E8];
                v868 = v427;
                v442 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v868 forKeys:&v867 count:1];
                GTMTLReplay_fillError(v670, 101, v442);
                if (v670)
                {
                  v443 = *v670;
                }

                else
                {
                  v443 = 0;
                }

                GTMTLReplay_handleNSError(v443);
                goto LABEL_423;
              }

              if (v433)
              {
                v450 = [v683[1] defaultCommandQueue];
                v442 = InternalCommandBuffer(v450, @"ResizeTexture", (v683 + 5));

                v451 = v683[2];
                v452 = [v441 objectAtIndexedSubscript:0];
                v771 = 0;
                v453 = GTMTLReplayController_resizeTexture(v451, obj, v442, v452, *&__dst[0], *(&__dst[0] + 1), &v771);
                v427 = v771;

                if (v427)
                {
                  v865 = *MEMORY[0x277CCA7E8];
                  v866 = v427;
                  v454 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v866 forKeys:&v865 count:1];
                  GTMTLReplay_fillError(v670, 101, v454);
                  if (v670)
                  {
                    v455 = *v670;
                  }

                  else
                  {
                    v455 = 0;
                  }

                  GTMTLReplay_handleNSError(v455);

                  ht = v453;
                  goto LABEL_423;
                }

                GTMTLReplay_commitCommandBuffer(v442);
              }

              else
              {
                v453 = [v441 firstObject];
                v442 = ht;
              }

              if (v677)
              {
                v503 = [v703 objectForKeyedSubscript:@"DependencyGraphRequestedTextureLevel"];
                v504 = [v503 unsignedIntegerValue];

                v505 = [v703 objectForKeyedSubscript:@"DependencyGraphRequestedTextureSlice"];
                v506 = [v505 unsignedIntegerValue];

                v507 = [v703 objectForKeyedSubscript:@"DependencyGraphRequestedTextureDepthPlane"];
                v508 = [v507 unsignedIntegerValue];

                v509 = [v703 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
                v445 = [v509 unsignedIntegerValue];

                if (v445 == 8)
                {
                  v445 = 0;
                }

                else if (v445 == 9)
                {
                  v445 = 1;
                }

                v444 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture-0x%llx-%llx-%llu-%llu-%llu-%llu-Fetch", v677, v669, v504, v506, v508, v445];
                ht = v453;
                v673 = v677;
              }

              else
              {
                v444 = 0;
                v445 = -1;
                ht = v453;
              }
            }

            else
            {
              v444 = 0;
              v445 = -1;
            }

            v446 = v683[3];
            v770 = 0;
            GTMTLReplayClient_harvestTexture(obj, v446, ht, v673, v686, v445, v444, v669, &v770);
            v447 = v770;
            if (!v447)
            {

              goto LABEL_594;
            }

            v448 = v447;
            v863 = *MEMORY[0x277CCA7E8];
            v864 = v447;
            v449 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v864 forKeys:&v863 count:1];
            GTMTLReplay_fillError(v670, 102, v449);

            goto LABEL_553;
          }

          v432 = 1;
          v431 = 0;
LABEL_550:
          GTMTLReplay_fillError(v670, 102, v431);
          if ((v432 & 1) == 0)
          {
          }

          goto LABEL_553;
        }

        GTMTLReplayController_rewind(v683);
        GTMTLReplayController_debugSubCommand(v683, v716, HIDWORD(v14));
        v773 = 0;
        v185 = HarvestTileImageBlockMemory(v683, v673 + 513, &v773);
        v27 = v773;
        [v683[1] commitCommandBuffers];
LABEL_393:
        if (v185)
        {
          goto LABEL_394;
        }

        if (v27)
        {
          v874 = *MEMORY[0x277CCA7E8];
          v875 = v27;
          v431 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v875 forKeys:&v874 count:1];
          v432 = 0;
        }

        else
        {
          v431 = 0;
          v432 = 1;
        }

        goto LABEL_550;
      }

      if (s_logUsingOsLog == 1)
      {
        v57 = gt_tagged_log(0xCu);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          LOWORD(v877[0]) = 0;
          _os_log_impl(&dword_24D764000, v57, OS_LOG_TYPE_INFO, "Harvesting wireframe texture", v877, 2u);
        }
      }

      else
      {
        v344 = *MEMORY[0x277D85E08];
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting wireframe texture"];
        v345 = v57;
        fprintf(v344, "%s\n", [v57 UTF8String]);
      }

      v776 = 0;
      v342 = &v776;
      v343 = GTMTLReplayController_generateWireframeTexture(v683, obj, 1, 0, &v776);
      goto LABEL_291;
    }

    if (s_logUsingOsLog == 1)
    {
      v183 = gt_tagged_log(0xCu);
      if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
      {
        LOWORD(v877[0]) = 0;
        _os_log_impl(&dword_24D764000, v183, OS_LOG_TYPE_INFO, "Harvesting outline texture", v877, 2u);
      }
    }

    else
    {
      v335 = *MEMORY[0x277D85E08];
      v183 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting outline texture"];
      v336 = v183;
      fprintf(v335, "%s\n", [v183 UTF8String]);
    }

    v774 = 0;
    p[0] = 0;
    v337 = GTMTLReplayController_generateWireframeTexture(v683, obj, 0, 1, p);
    v338 = p[0];
    v695 = v338;
    if (!v337)
    {
      if (v338)
      {
        *&__dst[0] = *MEMORY[0x277CCA7E8];
        *&v877[0] = v338;
        v374 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v877 forKeys:__dst count:1];
      }

      else
      {
        v374 = 0;
      }

      v701 = v374;
      GTMTLReplay_fillError(&v774, 101, v374);
      GTMTLReplay_handleNSError(v774);
      v185 = 0;
LABEL_391:

      v342 = &v774;
      goto LABEL_392;
    }

    v701 = [*obj copy];
    [v701 setUsage:18];
    if ([v337 sampleCount] >= 2)
    {
      [v701 setSampleCount:1];
      if ([v337 textureType] == 4)
      {
        v339 = 2;
LABEL_373:
        [v701 setTextureType:v339];
        goto LABEL_374;
      }

      if ([v337 textureType] == 8)
      {
        v339 = 3;
        goto LABEL_373;
      }
    }

LABEL_374:
    v406 = [v337 device];
    v185 = [v406 newTextureWithDescriptor:v701];

    if (v185)
    {
      v666 = [v683[1] defaultCommandQueue];
      v689 = [v666 commandBuffer];
      v407 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"GenerateOutlineTexture"];
      [v689 setLabel:v407];

      v408 = [v689 computeCommandEncoder];
      v409 = [v337 sampleCount];
      v410 = 10;
      if (v409 > 1)
      {
        v410 = 11;
      }

      [v408 setComputePipelineState:obj[v410]];
      v722 = [obj[10] threadExecutionWidth];
      v411 = [obj[10] maxTotalThreadsPerThreadgroup];
      v412 = [v337 width];
      v413 = [v337 height];
      if ([v337 arrayLength])
      {
        v414 = 0;
        v415 = v411 / v722;
        htc = (v722 + v412 - 1) / v722;
        v416 = (v411 / v722 + v413 - 1) / (v411 / v722);
        do
        {
          v417 = [v337 pixelFormat];
          v418 = [v337 sampleCount];
          v419 = [v337 mipmapLevelCount];
          if (v418 >= 2)
          {
            v420 = 4;
          }

          else
          {
            v420 = 2;
          }

          v421 = [v337 newTextureViewWithPixelFormat:v417 textureType:v420 levels:0 slices:v419, v414, 1];
          v422 = [v185 newTextureViewWithPixelFormat:objc_msgSend(v185 textureType:"pixelFormat") levels:2 slices:0, objc_msgSend(v185, "mipmapLevelCount"), v414, 1];
          [v408 setTexture:v421 atIndex:0];
          [v408 setTexture:v422 atIndex:1];
          *&v877[0] = htc;
          *(&v877[0] + 1) = v416;
          *&v877[1] = 1;
          *&__dst[0] = v722;
          *(&__dst[0] + 1) = v415;
          *&__dst[1] = 1;
          [v408 dispatchThreadgroups:v877 threadsPerThreadgroup:__dst];

          ++v414;
        }

        while (v414 < [v337 arrayLength]);
      }

      [v408 endEncoding];
      GTMTLReplay_commitCommandBuffer(v689);
      v423 = v185;
    }

    else
    {
      *&__dst[0] = @"GTErrorKeyMTLTextureDescriptor";
      *&v877[0] = v701;
      v666 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v877 forKeys:__dst count:1];
      GTMTLReplay_fillError(&v774, 101, v666);
      GTMTLReplay_handleNSError(v774);
    }

    goto LABEL_391;
  }

  if (v10 <= 49)
  {
    if (v10 != 39)
    {
      if (v10 == 48)
      {
        if (s_logUsingOsLog == 1)
        {
          v59 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            LOWORD(v877[0]) = 0;
            _os_log_impl(&dword_24D764000, v59, OS_LOG_TYPE_INFO, "Harvesting pipeline binaries", v877, 2u);
          }
        }

        else
        {
          v131 = *MEMORY[0x277D85E08];
          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting pipeline binaries"];
          v132 = v59;
          fprintf(v131, "%s\n", [v59 UTF8String]);
        }

        if (!v677)
        {
          v133 = GetAliasStream(*(*v683 + 3), v673, *(*v683 + 11) + v716 - 1);
          if (v133)
          {
            v677 = *v133;
          }

          else
          {
            v677 = 0;
          }
        }

        v306 = [v703 objectForKeyedSubscript:@"context"];
        v307 = [v306 unsignedIntValue];

        v308 = v683[1];
        if (v307 == 71)
        {
          [v308 renderPipelineStateForKey:v677];
        }

        else
        {
          [v308 computePipelineStateForKey:v677];
        }
        v309 = ;
        v660 = DEVICEOBJECT(v309);

        if (v660)
        {
          v310 = v660;
          v311 = [v310 pipelineBinaries];
          v694 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v311, "count")}];
          v665 = v310;
          v743 = 0u;
          v744 = 0u;
          v741 = 0u;
          v742 = 0u;
          htb = v311;
          v700 = [(apr_hash_t *)htb countByEnumeratingWithState:&v741 objects:v809 count:16];
          if (v700)
          {
            v688 = *v742;
            do
            {
              for (j = 0; j != v700; j = j + 1)
              {
                if (*v742 != v688)
                {
                  objc_enumerationMutation(htb);
                }

                v312 = *(*(&v741 + 1) + 8 * j);
                v313 = objc_opt_new();
                v739 = 0u;
                v740 = 0u;
                v737 = 0u;
                v738 = 0u;
                obje = v312;
                v314 = [(apr_hash_t *)htb objectForKeyedSubscript:v312];
                v315 = [v314 countByEnumeratingWithState:&v737 objects:v808 count:16];
                if (v315)
                {
                  v316 = *v738;
                  do
                  {
                    for (k = 0; k != v315; ++k)
                    {
                      if (*v738 != v316)
                      {
                        objc_enumerationMutation(v314);
                      }

                      v318 = *(*(&v737 + 1) + 8 * k);
                      v319 = [v318 binary];

                      if (v319)
                      {
                        v806[0] = @"uniqueId";
                        v320 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v318, "uniqueIdentifier")}];
                        v807[0] = v320;
                        v806[1] = @"data";
                        v321 = [v318 binary];
                        v807[1] = v321;
                        v322 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v807 forKeys:v806 count:2];
                        [v313 addObject:v322];
                      }
                    }

                    v315 = [v314 countByEnumeratingWithState:&v737 objects:v808 count:16];
                  }

                  while (v315);
                }

                v323 = [v313 copy];
                [v694 setObject:v323 forKeyedSubscript:obje];
              }

              v700 = [(apr_hash_t *)htb countByEnumeratingWithState:&v741 objects:v809 count:16];
            }

            while (v700);
          }

          v324 = v683[8];
          v325 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v677];
          v326 = [v324 objectForKeyedSubscript:v325];

          if (v326)
          {
            v805 = v326;
            v327 = [MEMORY[0x277CBEA60] arrayWithObjects:&v805 count:1];
            [v694 setObject:v327 forKeyedSubscript:@"PerformanceStatistics"];
          }

          v736 = 0;
          v328 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v694 requiringSecureCoding:1 error:&v736];
          v329 = v736;
          if (!v329)
          {
            v350 = [MEMORY[0x277CCACA8] stringWithFormat:@"PipelineBinaries-0x%llx-Fetch", v673];
            [v686[1] setObject:v328 forKeyedSubscript:v350];
            if (v686[2] && v669)
            {
              v351 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
              [v686[2] setObject:v351 forKeyedSubscript:v350];
            }

            v735[0] = 0;
            v735[1] = v673;
            v352 = v350;
            v735[2] = [v350 UTF8String];
            v735[3] = 0;
            v735[4] = [v328 length];
            v353 = (*v686)[1];
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v735, **v686);
            v354 = **v686;
            v355 = *v354;
            if ((*(v354 + 33) & 0x10) != 0)
            {
              v400 = **v686;
              v356 = *v354;
              do
              {
                v400 = (v400 + v355);
                v355 = *v400;
                v356 += v355;
              }

              while ((*(v400 + 33) & 0x20) == 0);
            }

            else
            {
              v356 = *v354;
            }

            [(*v686)[2] appendBytes:v354 length:v356];

            v27 = v665;
            ht = v665;
            goto LABEL_594;
          }

          v330 = v329;
          v331 = *MEMORY[0x277CCA7E8];
          v803[0] = *MEMORY[0x277CCA450];
          v803[1] = v331;
          v804[0] = @"Serializing PipelineBinaries data failed.";
          v804[1] = v329;
          v332 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v804 forKeys:v803 count:2];
          GTMTLReplay_fillError(v670, 101, v332);
          if (v670)
          {
            v333 = *v670;
          }

          else
          {
            v333 = 0;
          }

          GTMTLReplay_handleNSError(v333);

          v334 = v665;
        }

        else
        {
          v801 = *MEMORY[0x277CCA7E8];
          v802 = @"Failed to get binaries for pipeline";
          v334 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v802 forKeys:&v801 count:1];
          GTMTLReplay_fillError(v670, 102, v334);
        }

        goto LABEL_553;
      }

      if (v10 == 49)
      {
        ht = v683[3];
        v27 = [v683[1] tensorForKey:v677];
        v28 = [v703 objectForKeyedSubscript:@"tensorSlice"];
        v29 = v28;
        if (v28 && [v28 length] == 272)
        {
          v30 = v29;
          v31 = [v29 bytes];
          memcpy(__dst, v31, 0x110uLL);
          v32 = *(v31 + 216);
          v33 = *(v31 + 248);
          v877[6] = *(v31 + 232);
          v877[7] = v33;
          *&v877[8] = *(v31 + 264);
          v34 = *(v31 + 152);
          v35 = *(v31 + 184);
          v877[2] = *(v31 + 168);
          v877[3] = v35;
          v877[4] = *(v31 + 200);
          v877[5] = v32;
          v877[0] = *(v31 + 136);
          v877[1] = v34;
          *&v825 = 0;
          v824 = 0u;
          v823 = 0u;
          v822 = 0u;
          v821 = 0u;
          v820 = 0u;
          v819 = 0u;
          v818 = 0u;
          *&v817 = *&v877[0];
          *(&v817 + 1) = 1;
          if (*&v877[0] >= 2uLL)
          {
            v36 = v877 + 1;
            v37 = *&v877[0] - 1;
            v38 = &v818;
            v39 = 1;
            do
            {
              v40 = *v36++;
              v39 *= v40;
              *v38++ = v39;
              --v37;
            }

            while (v37);
          }

          if (s_logUsingOsLog == 1)
          {
            v41 = gt_tagged_log(0xCu);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = [v27 label];
              if (v42)
              {
                v10 = [v27 label];
                v43 = v10;
                v44 = [v10 UTF8String];
              }

              else
              {
                v44 = "no label";
              }

              LODWORD(v877[0]) = 134218242;
              *(v877 + 4) = v677;
              WORD6(v877[0]) = 2080;
              *(v877 + 14) = v44;
              _os_log_impl(&dword_24D764000, v41, OS_LOG_TYPE_INFO, "Harvesting tensor %llu (%s)", v877, 0x16u);
              if (v42)
              {
              }
            }
          }

          else
          {
            v276 = *MEMORY[0x277D85E08];
            v277 = MEMORY[0x277CCACA8];
            v41 = [v27 label];
            if (v41)
            {
              v10 = [v27 label];
              v278 = v10;
              v279 = [v10 UTF8String];
            }

            else
            {
              v279 = "no label";
            }

            v398 = [v277 stringWithFormat:@"Harvesting tensor %llu (%s)", v677, v279];
            v399 = v398;
            fprintf(v276, "%s\n", [v398 UTF8String]);

            if (v41)
            {
            }

            else
            {
              v41 = 0;
            }
          }

          v456 = [v27 dataType];
          v877[6] = *(&__dst[14] + 8);
          v877[7] = *(&__dst[15] + 8);
          *&v877[8] = *(&__dst[16] + 1);
          v877[2] = *(&__dst[10] + 8);
          v877[3] = *(&__dst[11] + 8);
          v877[4] = *(&__dst[12] + 8);
          v877[5] = *(&__dst[13] + 8);
          v877[0] = *(&__dst[8] + 8);
          v877[1] = *(&__dst[9] + 8);
          *&p[10] = v822;
          *&p[12] = v823;
          *&p[14] = v824;
          p[16] = v825;
          *&p[2] = v818;
          *&p[4] = v819;
          *&p[6] = v820;
          *&p[8] = v821;
          *p = v817;
          v723 = [(apr_hash_t *)ht bufferWithLength:GTMTLTensorExtents_bytesLength(v877 alignment:p, v456), 1];
          v457 = objc_alloc_init(MEMORY[0x277CD7038]);
          v877[6] = *(&__dst[14] + 8);
          v877[7] = *(&__dst[15] + 8);
          *&v877[8] = *(&__dst[16] + 1);
          v877[2] = *(&__dst[10] + 8);
          v877[3] = *(&__dst[11] + 8);
          v877[4] = *(&__dst[12] + 8);
          v877[5] = *(&__dst[13] + 8);
          v877[0] = *(&__dst[8] + 8);
          v877[1] = *(&__dst[9] + 8);
          v458 = MakeMTLTensorExtents(v877);
          [v457 setDimensions:v458];

          [v457 setDataType:{objc_msgSend(v27, "dataType")}];
          [v457 setUsage:1];
          v877[6] = v823;
          v877[7] = v824;
          *&v877[8] = v825;
          v877[2] = v819;
          v877[3] = v820;
          v877[4] = v821;
          v877[5] = v822;
          v877[0] = v817;
          v877[1] = v818;
          v459 = MakeMTLTensorExtents(v877);
          [v457 setStrides:v459];

          objf = [v723 tensorAlias:v457];
          v859 = v27;
          v460 = [MEMORY[0x277CBEA60] arrayWithObjects:&v859 count:1];
          GTMTLReplayClient_waitForUntrackedWritesToComplete(v683, v460);

          memset(p, 0, 272);
          GTMTLTensor_wholeSlice(p, objf);
          v461 = [(apr_hash_t *)ht blitCommandEncoder];
          memcpy(v877, __dst, 0x110uLL);
          v462 = GTMTLTensorSlice_origin(v877);
          memcpy(v877, __dst, 0x110uLL);
          v463 = GTMTLTensorSlice_dimensions(v877);
          memcpy(v877, p, 0x110uLL);
          v464 = GTMTLTensorSlice_origin(v877);
          memcpy(v877, p, 0x110uLL);
          v465 = GTMTLTensorSlice_dimensions(v877);
          [v461 copyFromTensor:v27 sourceOrigin:v462 sourceDimensions:v463 toTensor:objf destinationOrigin:v464 destinationDimensions:v465];

          v466 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTensor-0x%llx-Fetch", v677];
          v467 = [v723 data];
          [v686[1] setObject:v467 forKeyedSubscript:v466];
          if (v686[2] && v669)
          {
            v468 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
            [v686[2] setObject:v468 forKeyedSubscript:v466];
          }

          v469 = 0;
          memset(&v877[1], 0, 408);
          v780 = __dst[0];
          v785 = __dst[5];
          v786 = __dst[6];
          v787 = __dst[7];
          v788 = *&__dst[8];
          v781 = __dst[1];
          v782 = __dst[2];
          v783 = __dst[3];
          *&v877[0] = v677;
          *(&v877[0] + 1) = *&__dst[0];
          v784 = __dst[4];
          do
          {
            v877[v469 + 1] = *(&v780 + v469 * 16 + 8);
            ++v469;
          }

          while (v469 != 8);
          v470 = 0;
          v788 = *(&__dst[16] + 1);
          v780 = *(&__dst[8] + 8);
          v785 = *(&__dst[13] + 8);
          v786 = *(&__dst[14] + 8);
          v787 = *(&__dst[15] + 8);
          v781 = *(&__dst[9] + 8);
          v782 = *(&__dst[10] + 8);
          v783 = *(&__dst[11] + 8);
          v784 = *(&__dst[12] + 8);
          *&v877[9] = *(&__dst[8] + 1);
          do
          {
            *(&v877[v470 + 9] + 8) = *(&v780 + v470 * 16 + 8);
            ++v470;
          }

          while (v470 != 8);
          v471 = v466;
          v472 = [v466 UTF8String];
          v780 = v817;
          v785 = v822;
          v786 = v823;
          v787 = v824;
          v788 = v825;
          v781 = v818;
          v782 = v819;
          v783 = v820;
          v784 = v821;
          *&v877[18] = v817;
          for (m = 37; m != 53; m += 2)
          {
            *(v877 + m * 8) = *&v764[m];
          }

          v474 = *v686;
          v475 = **v686;
          *(v475 + 1) = 0;
          *(v475 + 2) = 0;
          *(v475 + 3) = 0;
          *v475 = 0xFFFFC62D00000024;
          v475[8] = 0;
          strcpy(v475 + 36, "C@17ul@17ulU<b>@17ul");
          *(v475 + 57) = 0;
          *(v475 + 59) = 0;
          *(v475 + 15) = *&v877[0];
          *(v475 + 17) = *(v877 + 8);
          v476 = *(&v877[1] + 8);
          v477 = *(&v877[2] + 8);
          v478 = *(&v877[3] + 8);
          *(v475 + 33) = *(&v877[4] + 8);
          *(v475 + 29) = v478;
          *(v475 + 25) = v477;
          *(v475 + 21) = v476;
          v479 = *(&v877[5] + 8);
          v480 = *(&v877[6] + 8);
          v481 = *(&v877[7] + 8);
          *(v475 + 49) = *(&v877[8] + 1);
          *(v475 + 45) = v481;
          *(v475 + 41) = v480;
          *(v475 + 37) = v479;
          v482 = v877[14];
          v483 = v877[16];
          *(v475 + 75) = v877[15];
          *(v475 + 79) = v483;
          *(v475 + 83) = *&v877[17];
          v484 = v877[9];
          *(v475 + 55) = v877[10];
          v485 = v877[12];
          *(v475 + 59) = v877[11];
          *(v475 + 63) = v485;
          *(v475 + 67) = v877[13];
          *(v475 + 71) = v482;
          *(v475 + 51) = v484;
          *v475 = 340;
          AppendString(v472, v475);
          v486 = *v475;
          v487 = (v486 + 3) & 0xFFFFFFFC;
          bzero(v475 + v486, v487 - v486);
          *v475 = v487;
          v488 = v475 + v487;
          *(v488 + 5) = v877[23];
          *(v488 + 6) = v877[24];
          *(v488 + 7) = v877[25];
          *(v488 + 16) = *&v877[26];
          *(v488 + 1) = v877[19];
          *(v488 + 2) = v877[20];
          *(v488 + 3) = v877[21];
          *(v488 + 4) = v877[22];
          *v488 = v877[18];
          *v475 += 136;
          v489 = *v474;
          v489[1] = -10142;
          v490 = *v489;
          if ((*(v489 + 33) & 0x10) != 0)
          {
            v492 = v489;
            v491 = *v489;
            do
            {
              v492 = (v492 + v490);
              v490 = *v492;
              v491 += v490;
            }

            while ((*(v492 + 33) & 0x20) == 0);
          }

          else
          {
            v491 = *v489;
          }

          [v474[2] appendBytes:v489 length:v491];

          goto LABEL_594;
        }

        v860 = *MEMORY[0x277CCA450];
        v861 = @"Tensor slice not found";
        v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v861 forKeys:&v860 count:1];
        GTMTLReplay_fillError(v670, 101, v100);
        if (v670)
        {
          v101 = *v670;
        }

        else
        {
          v101 = 0;
        }

        GTMTLReplay_handleNSError(v101);

        goto LABEL_553;
      }

LABEL_84:
      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_harvestResource.m", "HarvestResourceObject", 987, 32, "kDYMessageFetchResourceObject: %u invalidType", v25, v26, v10);
      goto LABEL_595;
    }

    ht = v683[1];
    v81 = GetAliasStream(*(*v683 + 3), v673, *(*v683 + 11) + v716 - 1);
    if (v81)
    {
      v82 = *v81;
    }

    else
    {
      v82 = 0;
    }

    if (s_logUsingOsLog == 1)
    {
      v141 = gt_tagged_log(0xCu);
      if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
      {
        LODWORD(v877[0]) = 134217984;
        *(v877 + 4) = v82;
        _os_log_impl(&dword_24D764000, v141, OS_LOG_TYPE_INFO, "Harvesting rasterization rate map %llu", v877, 0xCu);
      }
    }

    else
    {
      v142 = *MEMORY[0x277D85E08];
      v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting rasterization rate map %llu", v82];
      v143 = v141;
      fprintf(v142, "%s\n", [v141 UTF8String]);
    }

    v144 = GTMTLReplayClient_queryRasterMap(v683, v82, v670);
    if (v144)
    {
      v718 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v733 = 0u;
      v734 = 0u;
      v731 = 0u;
      v732 = 0u;
      v664 = v144;
      v145 = [v144 layers];
      v146 = [v145 countByEnumeratingWithState:&v731 objects:v800 count:16];
      if (v146)
      {
        v147 = *v732;
        objb = v145;
        do
        {
          for (n = 0; n != v146; ++n)
          {
            if (*v732 != v147)
            {
              objc_enumerationMutation(objb);
            }

            v149 = *(*(&v731 + 1) + 8 * n);
            v798[0] = @"RasterizationRateLayerPhysicalSize";
            v150 = MEMORY[0x277CCABB0];
            if (v149)
            {
              [v149 size];
              v151 = v728;
            }

            else
            {
              v151 = 0;
              v728 = 0;
              v729 = 0;
              v730 = 0;
            }

            v152 = [v150 numberWithUnsignedLongLong:v151];
            v797[0] = v152;
            v153 = MEMORY[0x277CCABB0];
            if (v149)
            {
              [v149 size];
              v154 = v726;
            }

            else
            {
              v154 = 0;
              v725[10] = 0;
              v726 = 0;
              v727 = 0;
            }

            v155 = [v153 numberWithUnsignedLongLong:v154];
            v797[1] = v155;
            v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v797 count:2];
            v799[0] = v156;
            v798[1] = @"RasterizationRateLayerHorizontalLogicalCoordinatesAtPhysicalTileBoundaries";
            v157 = [v149 horizontalLogicalCoordinatesAtPhysicalTileBoundaries];
            v799[1] = v157;
            v798[2] = @"RasterizationRateLayerVerticalLogicalCoordinatesAtPhysicalTileBoundaries";
            v158 = [v149 verticalLogicalCoordinatesAtPhysicalTileBoundaries];
            v799[2] = v158;
            v159 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v799 forKeys:v798 count:3];
            [v718 addObject:v159];
          }

          v145 = objb;
          v146 = [objb countByEnumeratingWithState:&v731 objects:v800 count:16];
        }

        while (v146);
      }

      v160 = MEMORY[0x277CCAAB0];
      v795[0] = @"RasterizationRateMapPhysicalGranularity";
      v161 = MEMORY[0x277CCABB0];
      [v664 physicalGranularity];
      v162 = [v161 numberWithUnsignedLongLong:v725[7]];
      v794[0] = v162;
      v163 = MEMORY[0x277CCABB0];
      [v664 physicalGranularity];
      v164 = [v163 numberWithUnsignedLongLong:v725[5]];
      v794[1] = v164;
      v165 = MEMORY[0x277CCABB0];
      [v664 physicalGranularity];
      v166 = [v165 numberWithUnsignedLongLong:v725[3]];
      v794[2] = v166;
      v167 = [MEMORY[0x277CBEA60] arrayWithObjects:v794 count:3];
      v795[1] = @"RasterizationRateLayers";
      v796[0] = v167;
      v796[1] = v718;
      v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v796 forKeys:v795 count:2];
      v725[0] = 0;
      v169 = [v160 archivedDataWithRootObject:v168 requiringSecureCoding:0 error:v725];
      v170 = v725[0];
      [v686[1] setObject:v169 forKeyedSubscript:@"MTLRasterizationRateMap-DerivedMetadata"];

      if (!v170)
      {

        goto LABEL_161;
      }

      v171 = *MEMORY[0x277CCA7E8];
      v792[0] = *MEMORY[0x277CCA450];
      v792[1] = v171;
      v793[0] = @"Serializing MTLRasterizationRateMap-DerivedMetadata failed.";
      v793[1] = v170;
      v172 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v793 forKeys:v792 count:2];
      GTMTLReplay_fillError(v670, 101, v172);
      if (v670)
      {
        v173 = *v670;
      }

      else
      {
        v173 = 0;
      }

      GTMTLReplay_handleNSError(v173);
    }

    else
    {
      GTMTLReplay_fillError(v670, 101, MEMORY[0x277CBEC10]);
      if (v670)
      {
        v176 = *v670;
      }

      else
      {
        v176 = 0;
      }

      GTMTLReplay_handleNSError(v176);
    }

LABEL_553:
    v348 = 0;
    goto LABEL_596;
  }

  if (v10 == 50)
  {
    v83 = [v683[1] mtl4MachineLearningPipelineStateForKey:v677];
    ht = DEVICEOBJECT(v83);

    if (ht)
    {
      v84 = [(apr_hash_t *)ht optimizedBytecode];
      v27 = v84;
      if (v84)
      {
        v85 = MEMORY[0x277D25080];
        v86 = [v84 allValues];
        v87 = [v86 objectAtIndexedSubscript:0];
        v88 = [v27 allKeys];
        v89 = [v88 objectAtIndexedSubscript:0];
        v90 = [v85 newGraphWithMLIRByteCode:v87 signature:v89];

        if (v90)
        {
          v759 = 0;
          v91 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v90 requiringSecureCoding:0 error:&v759];
          v92 = v759;
          v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"MLGraph-0x%llx-Fetch", v677];
          [v686[1] setObject:v91 forKeyedSubscript:v93];
          if (v686[2] && v669)
          {
            v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
            [v686[2] setObject:v94 forKeyedSubscript:v93];
          }

          v758[0] = 0;
          v758[1] = v677;
          v95 = v93;
          v758[2] = [v93 UTF8String];
          v758[3] = 0;
          v758[4] = [v91 length];
          v96 = (*v686)[1];
          DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v758, **v686);
          v97 = **v686;
          v98 = *v97;
          if ((*(v97 + 33) & 0x10) != 0)
          {
            v349 = **v686;
            v99 = *v97;
            do
            {
              v349 = (v349 + v98);
              v98 = *v349;
              v99 += v98;
            }

            while ((*(v349 + 33) & 0x20) == 0);
          }

          else
          {
            v99 = *v97;
          }

          [(*v686)[2] appendBytes:v97 length:v99];

          goto LABEL_594;
        }

        v853 = *MEMORY[0x277CCA450];
        v854 = @"Failed to serialize Machine Learning Graph Viewer object";
        v294 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v854 forKeys:&v853 count:1];
        GTMTLReplay_fillError(v670, 101, v294);
        if (v670)
        {
          v295 = *v670;
        }

        else
        {
          v295 = 0;
        }

        GTMTLReplay_handleNSError(v295);

        goto LABEL_553;
      }

      v855 = *MEMORY[0x277CCA450];
      v856 = @"machine learning pipeline bytecode not found";
      v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v856 forKeys:&v855 count:1];
      GTMTLReplay_fillError(v670, 101, v102);
      if (v670)
      {
        v103 = *v670;
      }

      else
      {
        v103 = 0;
      }

      goto LABEL_163;
    }

    v857 = *MEMORY[0x277CCA450];
    v858 = @"machine learning pipeline not found";
    v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v858 forKeys:&v857 count:1];
    GTMTLReplay_fillError(v670, 101, v174);
    if (v670)
    {
      v175 = *v670;
    }

    else
    {
      v175 = 0;
    }

LABEL_278:
    GTMTLReplay_handleNSError(v175);

    goto LABEL_553;
  }

  if (v10 == 51)
  {
    v60 = [v703 objectForKeyedSubscript:@"mlModule"];
    if (v60)
    {
      v61 = [v703 objectForKeyedSubscript:@"mlResource"];
      if (v61)
      {
        v62 = [v683[1] mtl4MachineLearningPipelineStateForKey:v677];
        v63 = DEVICEOBJECT(v62);

        if (v63)
        {
          v757 = 0;
          v64 = [v63 resourceBlobForByteCodeSignature:v60 resourceName:v61 error:&v757];
          v65 = v757;
          v66 = v65;
          if (v64)
          {
            v67 = MEMORY[0x277CCACA8];
            v68 = SanitizedShortString(v61, 0xAuLL);
            v69 = [v67 stringWithFormat:@"MLGraphData-0x%llx-%@-Fetch", v677, v68];

            [v686[1] setObject:v64 forKeyedSubscript:v69];
            if (v686[2] && v669)
            {
              v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
              [v686[2] setObject:v70 forKeyedSubscript:v69];
            }

            v756[0] = 0;
            v756[1] = v677;
            v71 = v69;
            v756[2] = [v69 UTF8String];
            v756[3] = 0;
            v756[4] = [v64 length];
            v72 = (*v686)[1];
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v756, **v686);
            v73 = **v686;
            v74 = *v73;
            if ((*(v73 + 33) & 0x10) != 0)
            {
              v397 = **v686;
              v75 = *v73;
              do
              {
                v397 = (v397 + v74);
                v74 = *v397;
                v75 += v74;
              }

              while ((*(v397 + 33) & 0x20) == 0);
            }

            else
            {
              v75 = *v73;
            }

            [(*v686)[2] appendBytes:v73 length:v75];
          }

          else
          {
            v845 = *MEMORY[0x277CCA7E8];
            v846 = v65;
            v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v846 forKeys:&v845 count:1];
            GTMTLReplay_fillError(v670, 101, v69);
            if (v670)
            {
              v375 = *v670;
            }

            else
            {
              v375 = 0;
            }

            GTMTLReplay_handleNSError(v375);
          }

          if (v64)
          {
            goto LABEL_595;
          }
        }

        else
        {
          v847 = *MEMORY[0x277CCA450];
          v848 = @"machine learning pipeline not found";
          v292 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v848 forKeys:&v847 count:1];
          GTMTLReplay_fillError(v670, 101, v292);
          if (v670)
          {
            v293 = *v670;
          }

          else
          {
            v293 = 0;
          }

          GTMTLReplay_handleNSError(v293);
        }
      }

      else
      {
        v849 = *MEMORY[0x277CCA450];
        v850 = @"machine learning resource key not specified";
        v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v850 forKeys:&v849 count:1];
        GTMTLReplay_fillError(v670, 101, v186);
        if (v670)
        {
          v187 = *v670;
        }

        else
        {
          v187 = 0;
        }

        GTMTLReplay_handleNSError(v187);
      }

      goto LABEL_553;
    }

    v851 = *MEMORY[0x277CCA450];
    v852 = @"machine learning module key not specified";
    v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v852 forKeys:&v851 count:1];
    GTMTLReplay_fillError(v670, 101, v174);
    if (v670)
    {
      v175 = *v670;
    }

    else
    {
      v175 = 0;
    }

    goto LABEL_278;
  }

  if (v10 != 52)
  {
    goto LABEL_84;
  }

  ht = [v703 objectForKeyedSubscript:@"mlIntermediateOps"];
  if (!ht || ![(apr_hash_t *)ht count])
  {
    v843 = *MEMORY[0x277CCA450];
    v844 = @"machine learning intermediate ops not specified";
    v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v844 forKeys:&v843 count:1];
    GTMTLReplay_fillError(v670, 101, v102);
    if (v670)
    {
      v103 = *v670;
    }

    else
    {
      v103 = 0;
    }

LABEL_163:
    GTMTLReplay_handleNSError(v103);

    goto LABEL_553;
  }

  v47 = [v683[1] mtl4MachineLearningPipelineStateForKey:v677];
  v664 = DEVICEOBJECT(v47);

  if (!v664)
  {
    v841 = *MEMORY[0x277CCA450];
    v842 = @"machine learning pipeline not found";
    v188 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v842 forKeys:&v841 count:1];
    GTMTLReplay_fillError(v670, 101, v188);
    if (v670)
    {
      v189 = *v670;
    }

    else
    {
      v189 = 0;
    }

    goto LABEL_485;
  }

  if ((v716 & 0x80000000) != 0 || (v48 = *v683, v49 = *(*v683 + 16), v716 >= *(v49 + 12)))
  {
    v839 = *MEMORY[0x277CCA450];
    v840 = @"dispatch index out of range";
    v188 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v840 forKeys:&v839 count:1];
    GTMTLReplay_fillError(v670, 101, v188);
    if (v670)
    {
      v189 = *v670;
    }

    else
    {
      v189 = 0;
    }

    goto LABEL_485;
  }

  v50 = *(v49 + 24) + (v716 << 6);
  if (*(v50 + 8) != -14893)
  {
    v837 = *MEMORY[0x277CCA450];
    v838 = @"expected machine learning dispatch call";
    v188 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v838 forKeys:&v837 count:1];
    GTMTLReplay_fillError(v670, 101, v188);
    if (v670)
    {
      v189 = *v670;
    }

    else
    {
      v189 = 0;
    }

LABEL_485:
    GTMTLReplay_handleNSError(v189);

    goto LABEL_553;
  }

  v789 = *GTTraceFunc_argumentBytesWithMap(v50, *(v50 + 13), v48[2]);
  v51 = *(*find_entry(v48[1], &v789, 8uLL, 0) + 32);
  memset(v877, 0, 512);
  v52 = *(v51 + 32);
  if (v52)
  {
    v53 = 0;
    while (1)
    {
      v54 = atomic_load((v52 + 4));
      v55 = v53 + (v54 >> 6) - 1;
      if (v55 > 0)
      {
        break;
      }

      v52 = *(v52 + 40);
      v53 = v55;
      if (!v52)
      {
        v53 = v55;
        goto LABEL_489;
      }
    }

    v55 = 0;
LABEL_489:
    v531 = v53 | (v55 << 32);
  }

  else
  {
    v531 = 0;
  }

  while (v52)
  {
    v532 = v52 + 64 + ((HIDWORD(v531) - v531) << 6);
    if ((*(v532 + 15) & 8) == 0 || *v532 > v48[11] + v716)
    {
      break;
    }

    GTMTL4SMCommandEncoder_processTraceFunc(v877, v532, v48[2]);
    v533 = atomic_load((v52 + 4));
    v534 = v531 + (v533 >> 6);
    v535 = (HIDWORD(v531) + 1);
    v531 = (v535 << 32) | v531;
    if (v535 == v534 - 1)
    {
      v531 = (v535 << 32) | v535;
      v52 = *(v52 + 40);
    }
  }

  v536 = [v683[1] mtl4ArgumentTableForKey:*&v877[4]];
  if (!v536)
  {
    v835 = *MEMORY[0x277CCA450];
    v836 = @"argument table not found";
    v590 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
    GTMTLReplay_fillError(v670, 101, v590);
    if (v670)
    {
      v591 = *v670;
    }

    else
    {
      v591 = 0;
    }

    GTMTLReplay_handleNSError(v591);

    goto LABEL_553;
  }

  v652 = objc_opt_new();
  v537 = [v664 reflection];
  v651 = v536;
  if (!v537)
  {
    v833 = *MEMORY[0x277CCA450];
    v834 = @"machine learning pipeline reflection data not available";
    v599 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v834 forKeys:&v833 count:1];
    GTMTLReplay_fillError(v670, 101, v599);
    if (v670)
    {
      v600 = *v670;
    }

    else
    {
      v600 = 0;
    }

    GTMTLReplay_handleNSError(v600);

    goto LABEL_553;
  }

  v650 = [v536 device];
  v832 = 0;
  v831 = 0u;
  v830 = 0u;
  v829 = 0u;
  v828 = 0u;
  v827 = 0u;
  v826 = 0u;
  v825 = 0u;
  v824 = 0u;
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  [v536 getBufferBindings:&v817 bindingCount:{objc_msgSend(v536, "bufferBindingCount")}];
  v754 = 0u;
  v755 = 0u;
  v752 = 0u;
  v753 = 0u;
  v538 = [v537 bindings];
  v539 = [v538 countByEnumeratingWithState:&v752 objects:v816 count:16];
  v649 = v537;
  if (!v539)
  {
    goto LABEL_509;
  }

  v540 = *v753;
  while (2)
  {
    for (ii = 0; ii != v539; ++ii)
    {
      if (*v753 != v540)
      {
        objc_enumerationMutation(v538);
      }

      v542 = *(*(&v752 + 1) + 8 * ii);
      if ([v542 type] == 37 && !objc_msgSend(v542, "access"))
      {
        v543 = [v542 index];
        if (v543 >= [v536 bufferBindingCount])
        {
          v814 = *MEMORY[0x277CCA450];
          v815 = @"invalid tensor binding index";
          v608 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v815 forKeys:&v814 count:1];
          GTMTLReplay_fillError(v670, 101, v608);
          if (v670)
          {
            v609 = *v670;
          }

          else
          {
            v609 = 0;
          }
        }

        else
        {
          v544 = [v650 mtlTensorFromGpuResourceID:{*(&v817 + objc_msgSend(v542, "index"))}];
          v545 = DEVICEOBJECT(v544);

          if (v545)
          {
            [v652 addObject:v545];

            v536 = v651;
            continue;
          }

          v812 = *MEMORY[0x277CCA450];
          v813 = @"tensor not found";
          v608 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v813 forKeys:&v812 count:1];
          GTMTLReplay_fillError(v670, 101, v608);
          if (v670)
          {
            v609 = *v670;
          }

          else
          {
            v609 = 0;
          }
        }

        GTMTLReplay_handleNSError(v609);

        goto LABEL_553;
      }
    }

    v539 = [v538 countByEnumeratingWithState:&v752 objects:v816 count:16];
    if (v539)
    {
      continue;
    }

    break;
  }

LABEL_509:

  v546 = [v664 runWithInputsArray:v652 resultsArray:0 intermediateOperations:ht];
  v672 = objc_opt_new();
  v696 = v683[3];
  v748 = 0u;
  v749 = 0u;
  v750 = 0u;
  v751 = 0u;
  v656 = v546;
  v675 = [v656 countByEnumeratingWithState:&v748 objects:v811 count:16];
  if (v675)
  {
    v702 = 0;
    v662 = *v749;
    do
    {
      for (objg = 0; objg != v675; objg = objg + 1)
      {
        if (*v749 != v662)
        {
          objc_enumerationMutation(v656);
        }

        v547 = *(*(&v748 + 1) + 8 * objg);
        if (s_logUsingOsLog == 1)
        {
          v548 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v548, OS_LOG_TYPE_INFO))
          {
            v549 = [v547 label];
            if (v549)
            {
              v657 = [v547 label];
              v550 = v657;
              v551 = [v657 UTF8String];
            }

            else
            {
              v551 = "no label";
            }

            LODWORD(__dst[0]) = 67109634;
            DWORD1(__dst[0]) = v702;
            WORD4(__dst[0]) = 1024;
            *(__dst + 10) = v716;
            HIWORD(__dst[0]) = 2080;
            *&__dst[1] = v551;
            _os_log_impl(&dword_24D764000, v548, OS_LOG_TYPE_INFO, "Harvesting intermediate tensor #%d at dispatch index %d (%s)", __dst, 0x18u);
            if (v549)
            {
            }
          }
        }

        else
        {
          v552 = *MEMORY[0x277D85E08];
          v553 = MEMORY[0x277CCACA8];
          v548 = [*(*(&v748 + 1) + 8 * objg) label];
          if (v548)
          {
            v683 = [v547 label];
            v554 = v683;
            v555 = [v683 UTF8String];
          }

          else
          {
            v555 = "no label";
          }

          v556 = [v553 stringWithFormat:@"Harvesting intermediate tensor #%d at dispatch index %d (%s)", v702, v716, v555];
          v557 = v556;
          fprintf(v552, "%s\n", [v556 UTF8String]);

          if (v548)
          {
          }

          else
          {
            v548 = 0;
          }
        }

        memset(__dst, 0, 136);
        v558 = v547;
        v559 = [v558 dimensions];
        MakeGTMTLTensorExtents(__dst, v559);

        v785 = __dst[5];
        v786 = __dst[6];
        v787 = __dst[7];
        v781 = __dst[1];
        v782 = __dst[2];
        v783 = __dst[3];
        v784 = __dst[4];
        v788 = *&__dst[8];
        v780 = __dst[0];
        memset(&p[2], 0, 120);
        p[0] = *&__dst[0];
        p[1] = 1;
        if (*&__dst[0] >= 2uLL)
        {
          v560 = v780 - 1;
          v561 = &v780 + 1;
          v562 = &p[2];
          v563 = 1;
          do
          {
            v564 = *v561++;
            v563 *= v564;
            *v562++ = v563;
            --v560;
          }

          while (v560);
        }

        v565 = [v558 dataType];

        v785 = __dst[5];
        v786 = __dst[6];
        v787 = __dst[7];
        v781 = __dst[1];
        v782 = __dst[2];
        v783 = __dst[3];
        v784 = __dst[4];
        v788 = *&__dst[8];
        v780 = __dst[0];
        v566 = [v696 bufferWithLength:GTMTLTensorExtents_bytesLength(&v780 alignment:{p, v565), 1}];
        v567 = objc_opt_new();
        v568 = [v558 dimensions];
        [v567 setDimensions:v568];

        v569 = [v558 dimensions];
        v570 = MTLTensorExtents_computeStrides(v569);
        [v567 setStrides:v570];

        [v567 setDataType:{objc_msgSend(v558, "dataType")}];
        [v567 setUsage:1];
        memset(__dst, 0, 272);
        GTMTLTensor_wholeSlice(__dst, v558);
        memcpy(p, __dst, 0x110uLL);
        v571 = GTMTLTensorSlice_origin(p);
        memcpy(p, __dst, 0x110uLL);
        v572 = GTMTLTensorSlice_dimensions(p);
        v573 = [v558 dimensions];
        v574 = MTLTensorExtents_computeStrides(v573);

        v575 = [v566 tensorAlias:v567];
        v576 = DEVICEOBJECT(v575);

        v577 = [v696 blitCommandEncoder];
        v578 = DEVICEOBJECT(v577);
        [v578 copyFromTensor:v558 sourceOrigin:v571 sourceDimensions:v572 toTensor:v576 destinationOrigin:v571 destinationDimensions:v572];

        v579 = [v566 data];
        [v672 addObject:v579];

        v702 = (v702 + 1);
      }

      v675 = [v656 countByEnumeratingWithState:&v748 objects:v811 count:16];
    }

    while (v675);
  }

  v580 = MEMORY[0x277CCACA8];
  v581 = [(apr_hash_t *)ht objectAtIndexedSubscript:0];
  v582 = SanitizedShortString(v581, 0x18uLL);
  v583 = [v580 stringWithFormat:@"MLIntermediateData-0x%llx-%d-%@-Fetch", v677, v716, v582];

  [v686[1] setObject:v672 forKeyedSubscript:v583];
  if (v686[2] && v669)
  {
    v584 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v669];
    [v686[2] setObject:v584 forKeyedSubscript:v583];
  }

  v747[0] = 0;
  v747[1] = v677;
  v585 = v583;
  v747[2] = [v583 UTF8String];
  v747[3] = 0;
  v747[4] = [v672 count];
  v586 = (*v686)[1];
  DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v747, **v686);
  v587 = **v686;
  v588 = *v587;
  if ((*(v587 + 33) & 0x10) != 0)
  {
    v610 = **v686;
    v589 = *v587;
    do
    {
      v610 = (v610 + v588);
      v588 = *v610;
      v589 += v588;
    }

    while ((*(v610 + 33) & 0x20) == 0);
  }

  else
  {
    v589 = *v587;
  }

  [(*v686)[2] appendBytes:v587 length:v589];

LABEL_161:
  v27 = v664;
LABEL_594:

LABEL_595:
  v348 = 1;
LABEL_596:

  [g_activityLog leaveActivity];
  v623 = *MEMORY[0x277D85DE8];
  return v348;
}

void GTMTLReplayClient_waitForUntrackedWritesToComplete(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * v7) hazardTrackingMode] == 1)
        {
          v10 = [*(a1 + 8) defaultCommandQueue];
          [v10 finish];

          v8 = v3;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = *(a1 + 40);
  v9 = atomic_load((a1 + 48));
  [v8 waitUntilSignaledValue:v9 - 1 timeoutMS:8000];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

void GTMTLReplayClient_harvestTexture(uint64_t a1, void *a2, void *a3, size_t a4, unsigned int ***a5, unint64_t a6, void *a7, uint64_t a8, void **a9)
{
  v193 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a7;
  v140 = [v14 device];
  v16 = v14;
  v17 = v13;
  if (v16)
  {
    v18 = [v16 device];
    v19 = v16;
    if ([v16 storageMode] == 3)
    {
      v19 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v16);
      [v19 setStorageMode:2];
      v20 = [v18 newTextureWithDescriptor:v19];

      if (!v20)
      {
        v191[0] = @"GTErrorKeyMTLTextureDescriptor";
        v30 = SerializeMTLTextureDescriptorToDictionary(v19);
        *&v173 = v30;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v173 forKeys:v191 count:1];

        GTMTLReplay_fillError(a9, 101, v24);
        if (a9)
        {
          v31 = *a9;
        }

        else
        {
          v31 = 0;
        }

        GTMTLReplay_handleNSError(v31);
        goto LABEL_23;
      }

      v19 = v20;
    }

    if ([v19 isFramebufferOnly])
    {
      v21 = [v17 blitCommandEncoder];

      if (v21)
      {
        [v17 commitCommandBuffer];
      }

      v22 = [v17 resourcePool];
      v23 = [v17 commandBuffer];
      *&v173 = 0;
      v24 = GTMTLReplayController_resizeTexture(v22, a1, v23, v19, [v19 width], objc_msgSend(v19, "height"), &v173);
      v25 = v173;

      if (v25)
      {
        v186 = *MEMORY[0x277CCA7E8];
        v191[0] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v191 forKeys:&v186 count:1];
        GTMTLReplay_fillError(a9, 101, v26);
        if (a9)
        {
          v27 = *a9;
        }

        else
        {
          v27 = 0;
        }

        GTMTLReplay_handleNSError(v27);

LABEL_23:
        v29 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v19;
    }

    v24 = v24;
    v29 = v24;
LABEL_24:

    goto LABEL_25;
  }

  GTMTLReplay_fillError(a9, 101, MEMORY[0x277CBEC10]);
  if (a9)
  {
    v28 = *a9;
  }

  else
  {
    v28 = 0;
  }

  GTMTLReplay_handleNSError(v28);
  v29 = 0;
LABEL_25:

  v32 = [v29 pixelFormat];
  v139 = [v29 sampleCount];
  v171 = 0uLL;
  v172 = 0;
  v33 = [v29 width];
  v34 = [v29 height];
  v152 = [v29 depth];
  memset(v191, 0, 56);
  GTMTLPixelFormatGetInfoForDevice(v191, v140, v32);
  v192 = 0uLL;
  v124 = a8;
  v125 = v15;
  v136 = v17;
  v120 = v16;
  if ((~LODWORD(v191[1]) & 0x60) != 0)
  {
    if ((v191[1] & 0x2000) != 0)
    {
      *&v192 = 4;
    }

    v35 = 1;
  }

  else
  {
    v192 = xmmword_24DA8BC50;
    v35 = 2;
  }

  v189 = v32;
  v190 = v32;
  v186 = v33;
  v187[0] = v34;
  v187[1] = v152;
  v188[0] = v33;
  v188[1] = v34;
  v188[2] = v152;
  v184 = v29;
  v36 = v184;
  v185 = v36;
  PlanePixelFormat = GetPlanePixelFormat(v32, 0);
  v121 = v36;
  if (PlanePixelFormat)
  {
    v38 = PlanePixelFormat;
    v39 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v36);
    v149 = objc_alloc_init(MEMORY[0x277CD6F48]);
    v151 = objc_alloc_init(MEMORY[0x277CD6F70]);
    v40 = v34;
    v41 = 0;
    v42.i64[0] = v33;
    v42.i64[1] = v40;
    v43 = 1;
    v154 = v42;
    v145 = vshrq_n_u64(vaddq_s64(v42, vdupq_n_s64(1uLL)), 1uLL);
    v44 = &v189;
    v45 = &v186;
    v46 = &v184;
    while (1)
    {
      *v44 = v38;
      if (v32 == 543 || (v47 = v154, v32 == 540))
      {
        if (v43)
        {
          v48 = -1;
        }

        else
        {
          v48 = 0;
        }

        v47 = vbslq_s8(vdupq_n_s64(v48), v154, v145);
      }

      *v45 = v47;
      v45[1].i64[0] = v152;
      [v39 setWidth:v47.i64[0]];
      [v39 setHeight:v45->i64[1]];
      [v39 setPixelFormat:v38];
      v49 = [v140 newTextureWithDescriptor:v39];
      v50 = *v46;
      *v46 = v49;

      if (!v49)
      {
        v182 = @"GTErrorKeyMTLTextureDescriptor";
        v60 = SerializeMTLTextureDescriptorToDictionary(v39);
        v183 = v60;
        v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:&v182 count:1];

        GTMTLReplay_fillError(a9, 101, v61);
        if (a9)
        {
          v62 = *a9;
        }

        else
        {
          v62 = 0;
        }

        v72 = v125;
        v74 = v17;
        GTMTLReplay_handleNSError(v62);

        goto LABEL_96;
      }

      v51 = v32;
      v52 = [v149 colorAttachments];
      v53 = [v52 objectAtIndexedSubscript:v41];
      [v53 setTexture:v49];

      v54 = [v149 colorAttachments];
      v55 = [v54 objectAtIndexedSubscript:v41];
      [v55 setLoadAction:0];

      v56 = [v149 colorAttachments];
      v57 = [v56 objectAtIndexedSubscript:v41];
      [v57 setStoreAction:1];

      v58 = [v151 colorAttachments];
      v59 = [v58 objectAtIndexedSubscript:v41];
      [v59 setPixelFormat:v38];

      if ((v43 & 1) == 0)
      {
        break;
      }

      v32 = v51;
      v38 = GetPlanePixelFormat(v51, 1);
      v43 = 0;
      v45 = v188;
      v46 = &v185;
      v44 = &v190;
      v41 = 1;
    }

    v63 = GTMTLReplayController_defaultLibrary(v140);
    v64 = [v63 newFunctionWithName:@"Harvest2PVertex"];
    [v151 setVertexFunction:v64];

    v65 = @"Harvest2PFragmentDownloadYCbCr";
    if (((1 << (v51 + 12)) & 0x90000900009) == 0)
    {
      v65 = @"Harvest2PFragmentDownload";
    }

    if ((v51 - 500) <= 0x2B)
    {
      v66 = v65;
    }

    else
    {
      v66 = @"Harvest2PFragmentDownload";
    }

    v67 = [v63 newFunctionWithName:v66];
    [v151 setFragmentFunction:v67];

    v170 = 0;
    v68 = [v140 newRenderPipelineStateWithDescriptor:v151 error:&v170];
    v69 = v170;
    v70 = v69;
    if (v69)
    {
      v180 = *MEMORY[0x277CCA7E8];
      v181 = v69;
      v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
      GTMTLReplay_fillError(a9, 101, v71);
      v72 = v125;
      if (a9)
      {
        v73 = *a9;
      }

      else
      {
        v73 = 0;
      }

      GTMTLReplay_handleNSError(v73);

      v75 = v149;
    }

    else
    {
      v75 = v149;
      v71 = [v17 renderCommandEncoderWithDescriptor:v149];
      [v71 setRenderPipelineState:v68];
      [v71 setFragmentTexture:v121 atIndex:0];
      [v71 drawPrimitives:3 vertexStart:0 vertexCount:3];
      v72 = v125;
    }

    v74 = v17;
    if (!v70)
    {
      v35 = 2;
      v32 = v51;
      v36 = v121;
      goto LABEL_58;
    }
  }

  else
  {
LABEL_58:
    v122 = [v36 mipmapLevelCount];
    v137 = v32;
    if ([v36 textureType] == 5 || objc_msgSend(v36, "textureType") == 6)
    {
      v128 = 6 * [v36 arrayLength];
    }

    else
    {
      v128 = [v36 arrayLength];
    }

    v72 = v125;
    v74 = v17;
    v77 = a6;
    if (v122)
    {
      v147 = 0;
      v127 = (48 * v35 + 279) & 0x300;
      v144 = v35;
      do
      {
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v133 = 0;
        v134 = 0;
        v132 = 1;
        v82 = v187;
        v135 = v127;
        do
        {
          if (v35 <= v77 || v77 == v78)
          {
            v179 = 0;
            v177 = 0u;
            v178 = 0u;
            v175 = 0u;
            v176 = 0u;
            v83 = *(&v189 + v78);
            v173 = 0u;
            v174 = 0u;
            v118 = *(&v192 + v78);
            *&v76 = GTMTLGetTextureLevelInfoForDeviceWithOptions(&v173, v140, v83, *(v82 - 1), *v82, v82[1], v139).n128_u64[0];
            if (v78)
            {
              v84 = v77 == v78;
            }

            else
            {
              v84 = 1;
            }

            if (v84)
            {
              v81 = v174;
              v80 = *(&v173 + 1);
              v79 = v173;
            }

            v133 += *(&v178 + 1);
            v134 += v178;
            v135 += v179;
            v85 = v132;
            if (v132 <= *(&v177 + 1))
            {
              v85 = *(&v177 + 1);
            }

            v132 = v85;
          }

          ++v78;
          v82 += 3;
        }

        while (v35 != v78);
        v126 = v81;
        if (v128)
        {
          for (i = 0; i != v128; ++i)
          {
            v130 = v80;
            v131 = v79;
            v86 = [v74 bufferWithLength:v135 alignment:{v132, v76, v118}];
            v87 = [v86 contents];
            bzero(v87, v127);
            *v87 = 0x63617074757265;
            v87[2] = 65538;
            v87[3] = v127;
            v150 = v86;
            v142 = [v86 heapLocation];
            v146 = [v74 blitCommandEncoder];
            v143 = v87;
            v141 = v87 + 6;
            v88 = &v184;
            v89 = &v192;
            v90 = &v189;
            v91 = v187;
            v92 = v77;
            v93 = v35;
            v155 = v127;
            do
            {
              if (v35 <= v77 || !v92)
              {
                v179 = 0;
                v177 = 0u;
                v178 = 0u;
                v175 = 0u;
                v176 = 0u;
                v173 = 0u;
                v174 = 0u;
                v119 = *v89;
                GTMTLGetTextureLevelInfoForDeviceWithOptions(&v173, v140, *v90, *(v91 - 1), *v91, v91[1], v139);
                v94 = v174;
                v95 = v173;
                v96 = v178;
                v97 = &v141[12 * *(v143 + 2)];
                *v97 = v137;
                *(v97 + 2) = v95;
                *(v97 + 3) = v94;
                *(v97 + 2) = v96;
                ++*(v143 + 2);
                v153 = *v88;
                v168 = v95;
                v169 = v94;
                v98 = [v150 heapBuffer];
                v166 = v171;
                v167 = v172;
                v118 = v155 + v142;
                [v146 copyFromTexture:v153 sourceSlice:i sourceLevel:v147 sourceOrigin:&v166 sourceSize:&v168 toBuffer:v98 destinationOffset:? destinationBytesPerRow:? destinationBytesPerImage:? options:?];

                if ((v191[1] & 0x2000) != 0)
                {
                  v99 = [v136 commandBuffer];
                  v156[0] = MEMORY[0x277D85DD0];
                  v156[1] = 3221225472;
                  v156[2] = __GTMTLReplayClient_harvestTexture_block_invoke;
                  v156[3] = &unk_2796582C0;
                  v157 = v150;
                  v158 = v155;
                  v163 = v177;
                  v164 = v178;
                  v165 = v179;
                  v159 = v173;
                  v160 = v174;
                  v161 = v175;
                  v162 = v176;
                  [v99 addCompletedHandler:v156];
                }

                v155 += v179;
                v77 = a6;
                v35 = v144;
              }

              ++v88;
              v89 = (v89 + 8);
              --v92;
              ++v90;
              v91 += 3;
              --v93;
            }

            while (v93);
            v72 = v125;
            if (v125)
            {
              v100 = v125;
              v74 = v136;
              v101 = v124;
            }

            else
            {
              v101 = v124;
              v118 = a4;
              v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture-0x%llx-%llx-%llu-%llu-Fetch"];
              v74 = v136;
            }

            v80 = v130;
            v79 = v131;
            v102 = [v150 data];
            [a5[1] setObject:v102 forKeyedSubscript:v100];

            if (v101 && a5[2])
            {
              v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v101];
              [a5[2] setObject:v103 forKeyedSubscript:v100];
            }

            v104 = [v100 UTF8String];
            v105 = **a5;
            *(v105 + 1) = 0;
            *(v105 + 2) = 0;
            *(v105 + 3) = 0;
            *v105 = 0xFFFFC09400000024;
            v105[8] = 0;
            strcpy(v105 + 36, "C@6ulululU<b>ululul");
            *(v105 + 7) = a4;
            *(v105 + 8) = 0;
            *(v105 + 9) = 0;
            *(v105 + 10) = 0;
            *(v105 + 11) = v131;
            *(v105 + 12) = v130;
            *(v105 + 13) = v126;
            *(v105 + 14) = v147;
            *(v105 + 15) = i;
            *v105 = 128;
            AppendString(v104, v105);
            v106 = *v105;
            v107 = (v106 + 3) & 0xFFFFFFFC;
            bzero(v105 + v106, v107 - v106);
            *v105 = v107;
            *(v105 + v107) = v134;
            v108 = *v105 + 8;
            *v105 = v108;
            *(v105 + v108) = v133;
            v109 = *v105 + 8;
            *v105 = v109;
            *(v105 + v109) = v135;
            *v105 += 8;
            v110 = *a5;
            v111 = **a5;
            v111[1] = -10236;
            v112 = v110[2];
            v113 = *v111;
            if ((*(v111 + 33) & 0x10) != 0)
            {
              v114 = *v111;
              v115 = v111;
              do
              {
                v115 = (v115 + v114);
                v114 = *v115;
                v113 += v114;
              }

              while ((*(v115 + 33) & 0x20) == 0);
            }

            [v112 appendBytes:? length:?];

            v35 = v144;
          }
        }

        ++v147;
      }

      while (v147 != v122);
    }
  }

LABEL_96:
  for (j = 8; j != -8; j -= 8)
  {
  }

  v117 = *MEMORY[0x277D85DE8];
}

void AddAttachmentToArray(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[5] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = *find_entry(a4, a2, 8uLL, 0);
  if (v10)
  {
    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = *find_entry(a4, a2 + 8, 8uLL, 0);
  if (v12)
  {
    v12 = *(v12 + 32);
  }

  if (v11 && (*(v11 + 32) & 0x8000000000000000) == 0)
  {
    v33 = *a2;
    entry = find_entry(a5, &v33, 8uLL, 0);
    if (*entry && (v14 = *(*entry + 32)) != 0)
    {
      v15 = atomic_load((v14 + 56));
      v16 = v14 + (~(v15 >> 2) & 8);
    }

    else
    {
      v16 = 8;
    }

    v21 = *v16;
    v36[0] = @"DependencyGraphRequestedTextureID";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
    v37[0] = v22;
    v36[1] = @"DependencyGraphRequestedTextureAttachmentIndex";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v37[1] = v23;
    v36[2] = @"DependencyGraphRequestedTextureSlice";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 10)];
    v37[2] = v24;
    v36[3] = @"DependencyGraphRequestedTextureLevel";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 26)];
    v37[3] = v25;
    v36[4] = @"DependencyGraphRequestedTextureDepthPlane";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 9)];
    v37[4] = v26;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v37;
    v29 = v36;
LABEL_20:
    v31 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:5];
    [v9 addObject:v31];

    goto LABEL_21;
  }

  if (v12 && (*(v12 + 32) & 0x8000000000000000) == 0)
  {
    v33 = a2[1];
    v17 = find_entry(a5, &v33, 8uLL, 0);
    if (*v17 && (v18 = *(*v17 + 32)) != 0)
    {
      v19 = atomic_load((v18 + 56));
      v20 = v18 + (~(v19 >> 2) & 8);
    }

    else
    {
      v20 = 8;
    }

    v30 = *v20;
    v34[0] = @"DependencyGraphRequestedTextureID";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
    v35[0] = v22;
    v34[1] = @"DependencyGraphRequestedTextureAttachmentIndex";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v35[1] = v23;
    v34[2] = @"DependencyGraphRequestedTextureSlice";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 11)];
    v35[2] = v24;
    v34[3] = @"DependencyGraphRequestedTextureLevel";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 24)];
    v35[3] = v25;
    v34[4] = @"DependencyGraphRequestedTextureDepthPlane";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 8)];
    v35[4] = v26;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v35;
    v29 = v34;
    goto LABEL_20;
  }

LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t GTMTLReplayHost_IsFuncEnumSampledEncoder(int a1, int a2, _BYTE *a3)
{
  ConstructorType = GTFenum_getConstructorType(a1);
  if (GTFenum_isMTLCommandEncoder(ConstructorType))
  {
    if (a2)
    {
      v7 = -16286;
    }

    else
    {
      v7 = -16351;
    }

    v8 = 0x21000000000811uLL >> (ConstructorType - 17);
    if ((ConstructorType - 17) >= 0x36)
    {
      LOBYTE(v8) = 0;
    }

    if (v7 == a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v9 & 1;
}

id GTMTLReplayHost_generateDerivedDataPayload(uint64_t a1, int a2)
{
  v81[12] = *MEMORY[0x277D85DE8];
  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = *(a1 + 120);
  v10 = 0x277CCA000uLL;
  v72 = v3;
  if (*(v9 + 12) < 1)
  {
    v54 = 0;
    goto LABEL_57;
  }

  v62 = v8;
  v63 = v4;
  v59 = v6;
  v60 = v7;
  v64 = 0;
  v65 = v5;
  v11 = 0;
  v12 = 0;
  v61 = a1;
  v73 = *(a1 + 128);
  do
  {
    v13 = v12;
    v14 = 24 * v12;
    while (1)
    {
      v15 = v10;
      v16 = *(v9 + 24);
      v17 = (v16 + v14);
      v18 = *(v16 + v14);
      v19 = *(v73 + 24) + (v18 << 6);
      v20 = *(v19 + 8);
      if (v20 != -10224)
      {
        break;
      }

      v10 = v15;
      v21 = [*(v15 + 2992) numberWithUnsignedInteger:v11];
      [v74 addObject:v21];

      v11 = 0;
      ++v13;
      v14 += 24;
      if (v13 >= *(v9 + 12))
      {
        goto LABEL_55;
      }
    }

    if (GTFenum_isBeginCommandBuffer(*(v19 + 8)))
    {
      if ((*(v19 + 15) & 0x40) == 0 || v17[5] == -12544)
      {
        v22 = v17[3];
        if (v22 < 1)
        {
          goto LABEL_35;
        }

        v23 = 0;
        v24 = v16 + 44;
        do
        {
          v23 += GTMTLReplayHost_IsFuncEnumSampledEncoder(*(v24 + v14), a2, 0);
          v24 += 24;
          --v22;
        }

        while (v22);
        goto LABEL_36;
      }

LABEL_37:
      LODWORD(v13) = v17[3] + v13;
LABEL_38:
      v10 = v15;
      goto LABEL_52;
    }

    if (GTFenum_getConstructorType(v20) == 51)
    {
      if ((*(v19 + 15) & 0x40) == 0 || v17[5] == -12543)
      {
        v25 = v17[3];
        if (v25 >= 1)
        {
          v23 = 0;
          v26 = v16 + 44;
          do
          {
            v23 += GTMTLReplayHost_IsFuncEnumSampledEncoder(*(v26 + v14), a2, 0);
            v26 += 24;
            --v25;
          }

          while (v25);
          goto LABEL_36;
        }

LABEL_35:
        v23 = 0;
LABEL_36:
        ++v11;
        v10 = v15;
        v34 = [*(v15 + 2992) numberWithUnsignedInteger:v23];
        [v72 addObject:v34];

        goto LABEL_52;
      }

      goto LABEL_37;
    }

    if (!GTMTLReplayHost_IsFuncEnumSampledEncoder(v20, a2, v75))
    {
      goto LABEL_38;
    }

    v27 = v18 + 1;
    v66 = v17[1];
    if (v18 + 1 >= v66)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = *(v73 + 24) + (v27 << 6);
        v30 = *(v29 + 8);
        if (GTFenumIsSampledCall(v30, a2))
        {
          ++v28;
        }

        else if (v30 >> 2 == 1073737833)
        {
          GetExecuteCommandsInBufferArgs(v75, v29, *(v61 + 16));
          v79 = 0;
          memset(v78, 0, sizeof(v78));
          Object = GTMTLSMContext_getObject(**(v61 + 40), v75[0], *v29);
          GTMTLCreateIndirectCommandEncoder(v78, Object[14]);
          v32 = v76;
          if (v76)
          {
            v33 = v75[1] << 32;
            do
            {
              if (*(v77 + v78[1] + v79 * (v33 >> 32)))
              {
                ++v28;
              }

              v33 += 0x100000000;
              --v32;
            }

            while (v32);
          }

          v66 = v17[1];
        }

        ++v27;
      }

      while (v27 < v66);
    }

    v35 = [v65 count];
    v36 = *v19 - *(v61 + 88);
    v37 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
    [v62 addObject:v37];

    v38 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
    v39 = [*(v15 + 2992) numberWithUnsignedInteger:v36];
    [v63 setObject:v38 forKeyedSubscript:v39];

    v40 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
    v67 = v35;
    v41 = [*(v15 + 2992) numberWithUnsignedInteger:v35];
    [v65 setObject:v40 forKeyedSubscript:v41];

    v64 += v28;
    ConstructorType = GTFenum_getConstructorType(*(v19 + 8));
    if (ConstructorType == 17)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    if (ConstructorType == 28)
    {
      v43 = 1;
    }

    if (ConstructorType == 21)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    v45 = ConstructorType;
    v46 = [*(v15 + 2992) numberWithInt:v44];
    [v70 addObject:v46];

    v10 = v15;
    if ((v45 | 4) == 0x15)
    {
      v47 = [*(v15 + 2992) numberWithUnsignedInteger:v67];
      v48 = v60;
    }

    else
    {
      v49 = [v59 count];
      v50 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
      v51 = [*(v15 + 2992) numberWithUnsignedInteger:v49];
      [v59 setObject:v50 forKeyedSubscript:v51];

      v52 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
      [v69 addObject:v52];

      v47 = [*(v15 + 2992) numberWithInt:v44];
      v48 = v68;
    }

    [v48 addObject:v47];

    LODWORD(v13) = v17[3] + v13;
LABEL_52:
    v12 = v13 + 1;
  }

  while (v13 + 1 < *(v9 + 12));
  if (v11)
  {
    v53 = [*(v10 + 2992) numberWithUnsignedInteger:v11];
    [v74 addObject:v53];
  }

LABEL_55:
  v3 = v72;
  v8 = v62;
  v4 = v63;
  v54 = v64;
  v5 = v65;
  v6 = v59;
  v7 = v60;
LABEL_57:
  v80[0] = @"blitEncoderIndices";
  v80[1] = @"perCommandBufferEncoderCount";
  v81[0] = v7;
  v81[1] = v3;
  v80[2] = @"perEncoderDrawCallCount";
  v80[3] = @"perEncoderIndexDrawCallCount";
  v81[2] = v4;
  v81[3] = v5;
  v81[4] = v74;
  v80[4] = @"perFrameCommandBufferCount";
  v80[5] = @"totalDrawCallCount";
  v55 = [*(v10 + 2992) numberWithUnsignedInteger:v54];
  v81[5] = v55;
  v81[6] = &unk_2860D6740;
  v80[6] = @"uscSamplingPeriod";
  v80[7] = @"withoutBlitPerEncoderIndexDrawCallCount";
  v81[7] = v6;
  v81[8] = v8;
  v80[8] = @"activePerEncoderDrawCallCount";
  v80[9] = @"perEncoderKickCount";
  v81[9] = v70;
  v81[10] = v69;
  v80[10] = @"splitEncoderCommandCount";
  v80[11] = @"splitPerEncoderKickCount";
  v81[11] = v68;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:12];

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

BOOL GTFenumIsSampledCall(int a1, int a2)
{
  if (GTFenum_isDrawCall(a1) & 1) != 0 || (GTFenum_isComputeCall(a1))
  {
    return 1;
  }

  result = 1;
  if (a1 > -15298)
  {
    if (a1 == -15297)
    {
      return result;
    }

    v5 = -15059;
  }

  else
  {
    if (a1 == -16137)
    {
      return result;
    }

    v5 = -15486;
  }

  if (a1 != v5)
  {
    result = GTFenum_isSampledBlitCall(a1);
    if (!result)
    {
      if (a2)
      {

        return GTFenum_isSampledBlitCallAGX(a1);
      }
    }
  }

  return result;
}

uint64_t GetRenderPassDescriptor()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v8 = *MEMORY[0x277D85DE8];
  bzero(v6, 0x2BA0uLL);
  GTMTLSMCommandEncoder_processTraceFunc(v6, v3, v2);
  if (v6[0] == 70 || v6[0] == 65)
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}