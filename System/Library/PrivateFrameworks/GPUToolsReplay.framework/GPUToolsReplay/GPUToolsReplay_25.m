void *ExpandChildren(apr_array_header_t *a1, uint64_t a2, uint64_t a3)
{
  *apr_array_push(a1) = a2;
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
          result = ExpandChildren(a1, *(*(v7 + 24) + 8 * v8++), a3);
        }

        while (v8 < *(v7 + 12));
      }
    }
  }

  return result;
}

void CreateResourceFromStream(id *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = *(*a1 + 2);
  v32 = a1[1];
  v7 = *(a2 + 32);
  ConstructorType = GTFenum_getConstructorType(*(v7 + 72));
  v8 = 0;
  while (1)
  {
    v9 = atomic_load((v7 + 4));
    v10 = v8 + (v9 >> 6) - 1;
    if (v10 > 0)
    {
      break;
    }

    v7 = *(v7 + 40);
    v8 = v10;
    if (!v7)
    {
      v8 = v10;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v8 | (v10 << 32);
  v12 = v32;
  while (v7)
  {
    v13 = v7 + 64;
    v14 = v7 + 64 + ((HIDWORD(v11) - v11) << 6);
    if ((*(v14 + 15) & 8) == 0 || *v14 >= a3)
    {
      break;
    }

    if (*(v14 + 8) != -16120 || (GT_SUPPORT_0 & 0x80000) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(v14 + 8);
      if (v16 <= -14803)
      {
        if (v16 == -16313)
        {
          goto LABEL_23;
        }

        if (v16 != -16236)
        {
          v18 = -14969;
LABEL_20:
          if (v16 != v18 || ConstructorType != 80)
          {
            GTMTLReplayController_defaultDispatchFunction(v5, v13 + ((HIDWORD(v11) - v11) << 6));
          }
        }
      }

      else
      {
        v17 = (v16 + 10238);
        if (v17 > 0x30)
        {
          goto LABEL_16;
        }

        if (((1 << (v16 - 2)) & 0x1100000000005) == 0)
        {
          if (v17 != 1)
          {
LABEL_16:
            v18 = -14802;
            goto LABEL_20;
          }

LABEL_23:
          if ((GT_SUPPORT_0 & 0x80000) == 0)
          {
            v29 = v5;
            v19 = GTTraceFunc_argumentBytesWithMap((v13 + ((HIDWORD(v11) - v11) << 6)), *(v14 + 13), v6);
            v20 = [v32 deviceForKey:*v19];
            v21 = v20;
            v22 = *(v19 + 3) & 0xFFFFFFFFFFEFFFFFLL;
            if ((qword_27F09CF90 & 4) != 0)
            {
              v23 = 32;
            }

            else
            {
              v23 = *(v19 + 3) & 0xFFFFFFFFFFEFFFFFLL;
            }

            v24 = [v20 newBufferWithLength:*(v19 + 2) options:{v23, v6, v29}];
            if (v24)
            {
              [v32 setBuffer:v24 forKey:*(v19 + 1)];
            }

            v6 = v28;
            v5 = v30;
          }
        }
      }

      objc_autoreleasePoolPop(v15);
      v12 = v32;
    }

    v25 = atomic_load((v7 + 4));
    v26 = v11 + (v25 >> 6);
    v27 = (HIDWORD(v11) + 1);
    v11 = (v27 << 32) | v11;
    if (v27 == v26 - 1)
    {
      v11 = (v27 << 32) | v27;
      v7 = *(v7 + 40);
    }
  }
}

void MapSparseTextureRegions(void *a1, void *a2, uint64_t a3, apr_pool_t *a4)
{
  v7 = a1;
  v41 = a2;
  v8 = apr_array_make(a4, 8, 48);
  arr = apr_array_make(a4, 8, 48);
  v43 = apr_array_make(a4, 8, 8);
  v42 = apr_array_make(a4, 8, 8);
  v40 = v7;
  v39 = [v7 device];
  if (*(a3 + 12) < 1)
  {
    v12 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(a3 + 24);
      v15 = v14 + v9;
      v16 = *(v14 + v9 + 8);
      if (v16 != v11)
      {
        if (v8->nelts >= 1)
        {
          v47 = 0uLL;
          v48 = 0;
          v17 = [v12 textureType];
          v18 = [v12 pixelFormat];
          v19 = [v12 sampleCount];
          if (v39)
          {
            [v39 sparseTileSizeWithTextureType:v17 pixelFormat:v18 sampleCount:v19];
          }

          else
          {
            v47 = 0uLL;
            v48 = 0;
          }

          elts = v8->elts;
          v21 = arr->elts;
          nelts = v8->nelts;
          v45 = v47;
          v46 = v48;
          [v39 convertSparsePixelRegions:elts toTileRegions:v21 withTileSize:&v45 alignmentMode:0 numRegions:{nelts, v39}];
          [v40 updateTextureMappings:v12 mode:0 regions:arr->elts mipLevels:v43->elts slices:v42->elts numRegions:v8->nelts];
          arr->nelts = 0;
          v8->nelts = 0;
          v43->nelts = 0;
          v42->nelts = 0;
          v16 = *(v15 + 8);
        }

        v23 = [v41 textureForKey:{v16, v39}];

        v13 = [v23 firstMipmapInTail];
        v11 = *(v15 + 8);
        v12 = v23;
      }

      if (v13 >= *(v15 + 34))
      {
        apr_array_push(arr);
        v24 = apr_array_push(v8);
        v25 = *(v14 + v9 + 44);
        v26 = *(v14 + v9 + 46);
        v27 = vmovl_u16(*(v14 + v9 + 36));
        *&v28 = v27.u32[0];
        *(&v28 + 1) = v27.u32[1];
        v29 = v28;
        *&v28 = v27.u32[2];
        *(&v28 + 1) = v27.u32[3];
        *v24 = v29;
        v24[1] = v28;
        *(v24 + 4) = v25;
        *(v24 + 5) = v26;
        v30 = *(v15 + 34);
        *apr_array_push(v43) = v30;
        v31 = *(v14 + v9 + 32);
        *apr_array_push(v42) = v31;
      }

      ++v10;
      v9 += 448;
    }

    while (v10 < *(a3 + 12));
  }

  v32 = v39;
  if (v8->nelts > 0)
  {
    v47 = 0uLL;
    v48 = 0;
    v33 = [v12 textureType];
    v34 = [v12 pixelFormat];
    v35 = [v12 sampleCount];
    if (v39)
    {
      [v39 sparseTileSizeWithTextureType:v33 pixelFormat:v34 sampleCount:v35];
    }

    else
    {
      v47 = 0uLL;
      v48 = 0;
    }

    v36 = v8->elts;
    v37 = arr->elts;
    v38 = v8->nelts;
    v45 = v47;
    v46 = v48;
    [v39 convertSparsePixelRegions:v36 toTileRegions:v37 withTileSize:&v45 alignmentMode:0 numRegions:{v38, v39}];
    [v40 updateTextureMappings:v12 mode:0 regions:arr->elts mipLevels:v43->elts slices:v42->elts numRegions:v8->nelts];
  }
}

void FillRequestsAlignment(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(a1 + 24);
      if (*(v9 + v7) == 80)
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v10 = v9 + v7;
        GTMTLSMContext_getTextureDescriptor(a2, *(v9 + v7 + 8), *(v9 + v7 + 16), &v26);
        v11 = WORD1(v28);
        v25 = 0;
        memset(v24, 0, sizeof(v24));
        GTMTLPixelFormatGetInfoForDevice(v24, v5, WORD1(v28));
        v13 = xmmword_24DA8BC50;
        if ((~DWORD2(v24[0]) & 0x60) != 0)
        {
          v12.i32[0] = 0;
          v14.i64[1] = v19;
          v14.i64[0] = 0;
          v13.i32[0] = WORD4(v24[0]) & 0x2000;
          v15 = vdupq_lane_s32(*&vceqq_s32(v13, v12), 0);
          v16.i64[1] = v19;
          v16.i64[0] = 4;
          v13 = vbslq_s8(v15, v14, v16);
        }

        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v19 = v13.i64[1];
        memset(v20, 0, sizeof(v20));
        v17 = v13.i8[0];
        v18 = *(v10 + 34);
        GTMTLGetTextureLevelInfoForDeviceWithOptions(v20, v5, v11, DWORD2(v27), v28, HIWORD(v27), HIBYTE(v28));
        *(v10 + 60) = WORD4(v21);
        *(v10 + 62) = v17;
        v6 = *(a1 + 12);
      }

      v7 += 448;
    }
  }
}

void GroupRequestsByCapacity(apr_array_header_t *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, a1->pool, 0, a4);
  v5 = newpool;
  v6 = apr_array_copy(newpool, a1);
  qsort(v6->elts, v6->nelts, v6->elt_size, CompareRequestsBySize);
  a1->nelts = 0;
  while (v6->nelts)
  {
    elts = v6->elts;
    v8 = apr_array_push(a1);
    memcpy(v8, elts, 0x1C0uLL);
    v9 = RequestSize(elts);
    nelts = v6->nelts;
    v6->nelts = 0;
    if (nelts < 2)
    {
      break;
    }

    v11 = v9;
    v12 = 448 * nelts;
    v13 = 448;
    do
    {
      v14 = v6->elts;
      v15 = RequestAlignment(&v14[v13]);
      v16 = (v11 + v15 - 1) & -v15;
      v17 = v16 + RequestSize(&v14[v13]);
      v18 = v6;
      if (v17 <= 0x2000000)
      {
        v11 = v16 + RequestSize(&v14[v13]);
        v18 = a1;
      }

      v19 = apr_array_push(v18);
      memcpy(v19, &v14[v13], 0x1C0uLL);
      v13 += 448;
    }

    while (v12 != v13);
  }

  apr_pool_destroy(v5);
}

uint64_t AppendRestoreJobsToLoadQueue(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 12) >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = apr_array_push(*(v3 + 22584));
      *v5 = 0;
      v6 = *(a2 + 24) + 448 * v4;
      v5[1] = v6;
      v7 = *(a2 + 12);
      result = CountRequestsWithinCapacity(v6, (v7 - v4));
      *(v5 + 1) = result;
      v4 += result;
    }

    while (v4 < v7);
  }

  return result;
}

intptr_t SignalLoadQueueThreads(intptr_t result, int a2)
{
  atomic_store(0, (result + 22592));
  if (*(result + 22656) >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = *(result + 22656);
  }

  if (v2 >= 1)
  {
    v3 = result;
    do
    {
      dispatch_group_enter(*(v3 + 22608));
      result = dispatch_semaphore_signal(*(v3 + 22600));
      --v2;
    }

    while (v2);
  }

  return result;
}

void RestoreOrderedResourcesFromArchive(const char ****a1, uint64_t a2, uint64_t a3, void *a4)
{
  v132 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (s_logUsingOsLog == 1)
  {
    v6 = gt_tagged_log(0xEu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "s";
      if (a3 == 1)
      {
        v7 = "";
      }

      *buf = 67109378;
      *&buf[4] = a3;
      *&buf[8] = 2080;
      *&buf[10] = v7;
      _os_log_impl(&dword_24D764000, v6, OS_LOG_TYPE_DEFAULT, "Restoring %d ordered resource%s", buf, 0x12u);
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85E08];
    v9 = "s";
    if (a3 == 1)
    {
      v9 = "";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Restoring %d ordered resource%s", a3, v9];
    fprintf(v8, "%s\n", [v10 UTF8String]);
  }

  v11 = os_signpost_id_make_with_pointer(g_signpostLog, a1);
  [v5 enterRestoreResources:a2 count:a3];
  v110 = a1[3];
  v105 = [a1[1] defaultDevice];
  v12 = [v105 sharedMemorySize];
  v13 = g_signpostLog;
  v14 = v13;
  spid = v11;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Replayer-2-restore", "RestoreOrderedResourcesFromArchive x%d", buf, 8u);
  }

  v106 = v5;

  if (a3 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = a3;
    v19 = 0;
    v120 = v18;
    v121 = 4 * v12 / 0xAuLL;
    v20 = MEMORY[0x277D86228];
    v113 = v15;
    while (1)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a2 + 448 * v16;
      v23 = RequestSize(v22);
      v24 = v20;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        v25 = *(v22 + 8);
        v26 = *(v22 + 24);
        *buf = 134218498;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2082;
        *&buf[24] = v26;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Replayer-6-high", "%llu. %{xcode:size-in-bytes}zu %{public}s", buf, 0x20u);
      }

      if (*v22 == 16)
      {
        v124 = v16;
        v125 = v23;
        v114 = v21;
        v45 = **a1;
        v46 = a1[23];
        v47 = a1[1];
        v48 = *(v22 + 24);
        v112 = v47;
        v49 = [v47 accelerationStructureForKey:*(v22 + 8)];
        v50 = a1[3];
        FileWithFilename = GTCaptureArchive_getFileWithFilename(v45, v48);
        v118 = v50;
        v52 = v50;
        v53 = v46;
        v54 = [v52 bufferWithLength:*(FileWithFilename + 8) alignment:32];
        GTCaptureArchive_fillBuffer(v45, v53, v48, [v54 contents], *(FileWithFilename + 8), 0);
        v55 = v54;
        v56 = [a1[1] defaultDevice];
        v111 = v56;
        v116 = v55;
        if ([v55 length] > 0x17)
        {
          v108 = v53;
          v57 = v19;
          v58 = [v55 contents];
          v59 = *v58;
          v60 = v58[1];
          v61 = v58[2];
          v62 = *(FileWithFilename + 8);
          v63 = [v49 size];
          v64 = [v56 isCompatibleWithAccelerationStructure:v59];
          v65 = v60 > v62 || v61 > v63;
          if (v65 || (v64 & 1) == 0)
          {
            apr_pool_clear(*v108);
            v15 = v113;
            v21 = v114;
            v20 = MEMORY[0x277D86228];
            v19 = v57;
            v42 = v112;
            v16 = v124;
            v23 = v125;
          }

          else
          {
            v107 = [v118 accelerationStructureCommandEncoder];
            v21 = v114;
            v19 = v57;
            if (*(v22 + 40))
            {
              if (s_logUsingOsLog)
              {
                v66 = gt_tagged_log(0xEu);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  v67 = *(v22 + 8);
                  v68 = [v49 label];
                  v69 = [v68 UTF8String];
                  v70 = *(v22 + 24);
                  v71 = *(v22 + 32);
                  v72 = *(v22 + 48);
                  *buf = 134219010;
                  *&buf[4] = v67;
                  *&buf[12] = 2080;
                  *&buf[14] = v69;
                  *&buf[22] = 2080;
                  *&buf[24] = v70;
                  LOWORD(v127) = 2048;
                  *(&v127 + 2) = v71;
                  WORD5(v127) = 1024;
                  HIDWORD(v127) = v72;
                  _os_log_impl(&dword_24D764000, v66, OS_LOG_TYPE_DEFAULT, "Restoring instance acceleration structure %llu '%s' from file '%s' [serializedSize = %llu, primitiveAccelerationStructuresCount = %d]", buf, 0x30u);
                }
              }

              else
              {
                v79 = *MEMORY[0x277D85E08];
                v80 = MEMORY[0x277CCACA8];
                v81 = *(v22 + 8);
                v66 = [v49 label];
                v82 = [v80 stringWithFormat:@"Restoring instance acceleration structure %llu '%s' from file '%s' [serializedSize = %llu, primitiveAccelerationStructuresCount = %d]", v81, -[NSObject UTF8String](v66, "UTF8String"), *(v22 + 24), *(v22 + 32), *(v22 + 48)];
                fprintf(v79, "%s\n", [v82 UTF8String]);
              }

              v42 = v112;

              v83 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v22 + 48)];
              v16 = v124;
              if (*(v22 + 48))
              {
                v84 = 0;
                do
                {
                  v85 = [v112 accelerationStructureForKey:*(*(v22 + 40) + 8 * v84)];
                  [v83 addObject:v85];

                  ++v84;
                }

                while (v84 < *(v22 + 48));
              }

              v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"deserializeInstanceAccelerationStructure %llu", *(v22 + 8)];
              v87 = v107;
              [v107 insertDebugSignpost:v86];

              v88 = [v116 heapBuffer];
              [v107 deserializeInstanceAccelerationStructure:v49 primitiveAccelerationStructures:v83 fromBuffer:v88 serializedBufferOffset:{objc_msgSend(v116, "heapLocation")}];

              v15 = v113;
              v21 = v114;
              v23 = v125;
            }

            else
            {
              if (s_logUsingOsLog)
              {
                v73 = gt_tagged_log(0xEu);
                v23 = v125;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  v74 = *(v22 + 8);
                  v75 = [v49 label];
                  v76 = [v75 UTF8String];
                  v77 = *(v22 + 24);
                  v78 = *(v22 + 32);
                  *buf = 134218754;
                  *&buf[4] = v74;
                  *&buf[12] = 2080;
                  *&buf[14] = v76;
                  *&buf[22] = 2080;
                  *&buf[24] = v77;
                  LOWORD(v127) = 2048;
                  *(&v127 + 2) = v78;
                  _os_log_impl(&dword_24D764000, v73, OS_LOG_TYPE_DEFAULT, "Restoring primitive acceleration structure %llu '%s' from file '%s' [serializedSize = %llu]", buf, 0x2Au);
                }

                v15 = v113;
              }

              else
              {
                v89 = *MEMORY[0x277D85E08];
                v90 = MEMORY[0x277CCACA8];
                v91 = *(v22 + 8);
                v73 = [v49 label];
                v92 = [v90 stringWithFormat:@"Restoring primitive acceleration structure %llu '%s' from file '%s' [serializedSize = %llu]", v91, -[NSObject UTF8String](v73, "UTF8String"), *(v22 + 24), *(v22 + 32)];
                fprintf(v89, "%s\n", [v92 UTF8String]);

                v15 = v113;
                v23 = v125;
              }

              v42 = v112;

              v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"deserializePrimitiveAccelerationStructure %llu", *(v22 + 8)];
              v87 = v107;
              [v107 insertDebugSignpost:v93];

              v83 = [v116 heapBuffer];
              [v107 deserializePrimitiveAccelerationStructure:v49 fromBuffer:v83 serializedBufferOffset:{objc_msgSend(v116, "heapLocation")}];
              v16 = v124;
            }

            apr_pool_clear(*v108);
            v20 = MEMORY[0x277D86228];
          }
        }

        else
        {
          apr_pool_clear(*v53);
          v15 = v113;
          v21 = v114;
          v20 = MEMORY[0x277D86228];
          v16 = v124;
          v23 = v125;
          v42 = v112;
        }
      }

      else
      {
        if (*v22 != 57)
        {
          goto LABEL_47;
        }

        v27 = *a1;
        Object = GTMTLSMContext_getObject(*(*a1)[5], *(v22 + 8), *(v22 + 16));
        v29 = *(Object + 36);
        v115 = v29;
        v117 = v19;
        v30 = Object[14];
        v31 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v30);
        v32 = [a1[1] defaultDevice];
        v123 = v16;
        v33 = [v32 newIndirectCommandBufferWithDescriptor:v31 maxCommandCount:v29 options:256];

        v34 = a1[23];
        v35 = *v34;
        Data = GTCaptureArchive_readData(*v27, v34, *(v22 + 24), *v34, 0);
        v131 = 0;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        memset(buf, 0, sizeof(buf));
        GTMTLSMContext_indirectCommandBufferResources(buf, v27[5], v27[11], v35);
        v37 = [v33 size];
        [a1[1] restoreIndirectCommandBufferDataMap];
        v38 = v17;
        v40 = v39 = v21;
        v41 = v37;
        v15 = v113;
        GTMTLEncodeIndirectCommandBufferWithRange(v33, 0, v41, v30, Data, buf, v40);

        v21 = v39;
        v17 = v38;
        v42 = v33;
        v16 = v123;
        v43 = [a1[1] indirectCommandBufferForKey:*(v22 + 8)];
        v44 = [a1[3] blitCommandEncoder];
        [v44 copyIndirectCommandBuffer:v42 sourceRange:0 destination:v115 destinationIndex:{v43, 0}];

        v20 = MEMORY[0x277D86228];
        apr_pool_clear(v35);

        v19 = v117;
      }

LABEL_47:
      v94 = g_signpostLog;
      v95 = v94;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v95, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-6-high", &unk_24DA93952, buf, 2u);
      }

      v19 += v23;

      if (v19 >= v121)
      {
        if (s_logUsingOsLog == 1)
        {
          v96 = gt_tagged_log(0xEu);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_24D764000, v96, OS_LOG_TYPE_DEFAULT, "RestoreOrderedResourcesFromArchive ran over the shared blit buffer usage limit, flushing shared blit buffer", buf, 2u);
          }
        }

        else
        {
          v97 = *MEMORY[0x277D85E08];
          v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"RestoreOrderedResourcesFromArchive ran over the shared blit buffer usage limit, flushing shared blit buffer"];
          fprintf(v97, "%s\n", [v96 UTF8String]);
        }

        v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"RestoreOrderedResourcesFromArchive"];
        v99 = [v110 commandBuffer];
        [v99 setLabel:v98];

        [v110 commitCommandBuffer];
        v19 = 0;
      }

      v17 += v23;
      objc_autoreleasePoolPop(v21);
      if (++v16 == v120)
      {
        goto LABEL_59;
      }
    }
  }

  v17 = 0;
LABEL_59:
  v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"RestoreOrderedResourcesFromArchive"];
  v101 = [v110 commandBuffer];
  [v101 setLabel:v100];

  [v110 commitCommandBuffer];
  v102 = g_signpostLog;
  v103 = v102;
  if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v102))
  {
    *buf = 134217984;
    *&buf[4] = v17;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v103, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-2-restore", "%{xcode:size-in-bytes}zu", buf, 0xCu);
  }

  [v106 leaveActivity];
  v104 = *MEMORY[0x277D85DE8];
}

apr_hash_index_t *RestoreVisibleFunctionTablesForFunctionIndex(id *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(*a1 + 22);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = v4;
  *(v4 + 40) = 0;
  result = apr_hash_next((v4 + 16));
  if (result)
  {
    v6 = result;
    v7 = 1;
    v52 = a2;
    v53 = v3;
    do
    {
      v8 = *(v6 + 1);
      v9 = *(v8 + 32);
      if (*(v9 + 12) < 1)
      {
        goto LABEL_55;
      }

      v10 = 0;
      v11 = 0;
      v12 = **(v8 + 16);
      do
      {
        Object = GTMTLSMContext_getObject(**(*v3 + 5), v12, a2);
        if (Object)
        {
          v14 = Object[2];
          v15 = *v3;
          v16 = *(*v3 + 9);
          if (v16 > v14 || *(*v3 + 10) + v16 <= v14)
          {
            v18 = (*(v9 + 24) + v10);
            v19 = *v18;
            v20 = v18[1] + *v18;
            if (*v18 <= a2 && v20 > a2)
            {
              if (v7)
              {
                v22 = os_signpost_id_make_with_pointer(g_signpostLog, v3);
                v23 = g_signpostLog;
                v24 = v23;
                if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_24D764000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "Replayer-2-restore", "RestoreVisibleFunctionTablesFlush", buf, 2u);
                }

                v25 = [v3[1] defaultCommandQueue];
                [v25 finish];
                v26 = g_signpostLog;
                v27 = v26;
                if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
                {
                  *v58 = 0;
                  _os_signpost_emit_with_name_impl(&dword_24D764000, v27, OS_SIGNPOST_INTERVAL_END, v22, "Replayer-2-restore", &unk_24DA93952, v58, 2u);
                }

                v15 = *v3;
              }

              v57 = v15[2];
              v28 = v3[1];
              v29 = *(*v3 + 1);
              v60 = v12;
              v30 = *(*(*find_entry(v29, &v60, 8uLL, 0) + 32) + 32);
              if (v30)
              {
                v31 = 0;
                while (1)
                {
                  v32 = atomic_load((v30 + 4));
                  v33 = v31 + (v32 >> 6) - 1;
                  if (v33 > 0)
                  {
                    break;
                  }

                  v30 = *(v30 + 40);
                  v31 = v33;
                  if (!v30)
                  {
                    v31 = v33;
                    goto LABEL_31;
                  }
                }

                v33 = 0;
LABEL_31:
                v34 = v31 | (v33 << 32);
              }

              else
              {
                v34 = 0;
              }

              v56 = v28;
LABEL_33:
              v35 = v30 + 64;
LABEL_34:
              if (!v30 || (v36 = v35 + ((HIDWORD(v34) - v34) << 6), (*(v36 + 15) & 8) == 0))
              {
LABEL_54:

                v7 = 0;
                a2 = v52;
                break;
              }

              v37 = *v36;
              if (v19 <= *v36 && v20 > v37)
              {
                v39 = *(v36 + 8);
                if (v39 == -15597)
                {
                  v43 = GTTraceFunc_argumentBytesWithMap((v35 + ((HIDWORD(v34) - v34) << 6)), *(v36 + 13), v57);
                  v3 = v53;
                  v55 = [v28 visibleFunctionTableForKey:*v43];
                  p = *v53[23];
                  v44 = apr_palloc(p, 8 * *(v43 + 2));
                  v45 = GTTraceFunc_argumentBytesWithMap(v36, v43[24], v57);
                  if (*(v43 + 2))
                  {
                    v46 = v45;
                    v47 = 0;
                    do
                    {
                      v44[v47] = [v56 functionHandleForKey:{*&v46[8 * v47], v52}];
                      ++v47;
                      v48 = *(v43 + 2);
                    }

                    while (v48 > v47);
                    v3 = v53;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  v41 = v55;
                  [v55 setFunctions:v44 withRange:{*(v43 + 1), v48, v52}];
                  apr_pool_clear(p);
                  v28 = v56;
                }

                else
                {
                  if (v39 != -15598)
                  {
                    goto LABEL_52;
                  }

                  v40 = GTTraceFunc_argumentBytesWithMap((v35 + ((HIDWORD(v34) - v34) << 6)), *(v36 + 13), v57);
                  v41 = [v28 visibleFunctionTableForKey:*v40];
                  v42 = [v28 functionHandleForKey:*(v40 + 1)];
                  [v41 setFunction:v42 atIndex:*(v40 + 2)];
                }

                v35 = v30 + 64;
              }

              else if (v37 > v20)
              {
                goto LABEL_54;
              }

LABEL_52:
              v49 = atomic_load((v30 + 4));
              v50 = v34 + (v49 >> 6);
              v51 = (HIDWORD(v34) + 1);
              v34 = (v51 << 32) | v34;
              if (v51 == v50 - 1)
              {
                v34 = (v51 << 32) | v51;
                v30 = *(v30 + 40);
                goto LABEL_33;
              }

              goto LABEL_34;
            }
          }
        }

        ++v11;
        v10 += 16;
      }

      while (v11 < *(v9 + 12));
LABEL_55:
      result = apr_hash_next(v6);
      v6 = result;
    }

    while (result);
  }

  return result;
}

apr_hash_index_t *RestoreIntersectionFunctionTablesForFunctionIndex(uint64_t *a1, unint64_t a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 184);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = v4;
  *(v4 + 40) = 0;
  result = apr_hash_next((v4 + 16));
  if (!result)
  {
    goto LABEL_92;
  }

  v6 = result;
  v7 = 1;
  do
  {
    v8 = *(v6 + 1);
    v9 = *(v8 + 32);
    if (*(v9 + 12) < 1)
    {
      goto LABEL_25;
    }

    v10 = 0;
    v11 = **(v8 + 16);
    while (2)
    {
      v12 = *(*a1 + 40);
      *buf = v11;
      entry = find_entry(*v12, buf, 8uLL, 0);
      if (!*entry)
      {
        goto LABEL_24;
      }

      v14 = *(*entry + 32);
      if (!v14)
      {
        goto LABEL_24;
      }

      v15 = 0;
      while (1)
      {
        if (v14[2] <= a2)
        {
          v16 = v14;
          if (v14[3] > a2)
          {
            goto LABEL_12;
          }
        }

        if (v15)
        {
          break;
        }

        v16 = 0;
LABEL_12:
        v14 = v14[4];
        v15 = v16;
        if (!v14)
        {
          if (v16)
          {
            goto LABEL_16;
          }

          goto LABEL_24;
        }
      }

      v16 = v15;
LABEL_16:
      v17 = v16[2];
      v18 = *a1;
      v19 = *(*a1 + 72);
      v20 = v19 <= v17 && *(*a1 + 80) + v19 > v17;
      if (v20 || ((v21 = (*(v9 + 24) + 16 * v10), v22 = *v21, v23 = v21[1] + *v21, *v21 <= a2) ? (v24 = v23 > a2) : (v24 = 0), !v24))
      {
LABEL_24:
        if (++v10 >= *(v9 + 12))
        {
          goto LABEL_25;
        }

        continue;
      }

      break;
    }

    if (v7)
    {
      v25 = os_signpost_id_make_with_pointer(g_signpostLog, a1);
      v26 = g_signpostLog;
      v27 = v26;
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "Replayer-2-restore", "RestoreIntersectionFunctionTablesFlush", buf, 2u);
      }

      v28 = [a1[1] defaultCommandQueue];
      [v28 finish];
      v29 = g_signpostLog;
      v30 = v29;
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v30, OS_SIGNPOST_INTERVAL_END, v25, "Replayer-2-restore", &unk_24DA93952, buf, 2u);
      }

      v18 = *a1;
    }

    v89 = *(v18 + 16);
    v90 = a1[1];
    v31 = *(*a1 + 8);
    *buf = v11;
    v32 = *(*(*find_entry(v31, buf, 8uLL, 0) + 32) + 32);
    if (v32)
    {
      v33 = 0;
      v34 = v89;
      while (1)
      {
        v35 = atomic_load((v32 + 4));
        v36 = v33 + (v35 >> 6) - 1;
        if (v36 > 0)
        {
          break;
        }

        v32 = *(v32 + 40);
        v33 = v36;
        if (!v32)
        {
          v33 = v36;
          goto LABEL_42;
        }
      }

      v36 = 0;
LABEL_42:
      v37 = v33 | (v36 << 32);
    }

    else
    {
      v37 = 0;
      v34 = v89;
    }

    v88 = v6;
    while (2)
    {
      v38 = v32 + 64;
LABEL_45:
      if (v32)
      {
        v39 = HIDWORD(v37);
        v40 = (v38 + ((HIDWORD(v37) - v37) << 6));
        if ((*(v40 + 15) & 8) != 0)
        {
          v41 = *v40;
          if (v22 > *v40 || v23 <= v41)
          {
            if (v41 > v23)
            {
              break;
            }

LABEL_88:
            v77 = atomic_load((v32 + 4));
            v78 = v37 + (v77 >> 6);
            v79 = (v39 + 1);
            v37 = (v79 << 32) | v37;
            if (v79 == v78 - 1)
            {
              v37 = (v79 << 32) | v79;
              v32 = *(v32 + 40);
              continue;
            }

            goto LABEL_45;
          }

          v43 = *(v40 + 2);
          v91 = HIDWORD(v37);
          v92 = v37;
          if (v43 > -15531)
          {
            if (v43 <= -15259)
            {
              if (v43 == -15530)
              {
                v74 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
                v52 = [v90 intersectionFunctionTableForKey:*v74];
                [v52 setOpaqueTriangleIntersectionFunctionWithSignature:*(v74 + 1) atIndex:*(v74 + 2)];
              }

              else
              {
                if (v43 != -15529)
                {
                  goto LABEL_88;
                }

                v68 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
                v52 = [v90 intersectionFunctionTableForKey:*v68];
                [v52 setOpaqueTriangleIntersectionFunctionWithSignature:*(v68 + 1) withRange:{*(v68 + 2), *(v68 + 3)}];
              }
            }

            else
            {
              switch(v43)
              {
                case -15258:
                  v73 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
                  v52 = [v90 intersectionFunctionTableForKey:*v73];
                  [v52 setOpaqueCurveIntersectionFunctionWithSignature:*(v73 + 1) atIndex:*(v73 + 2)];
                  break;
                case -15257:
                  v75 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
                  v52 = [v90 intersectionFunctionTableForKey:*v75];
                  [v52 setOpaqueCurveIntersectionFunctionWithSignature:*(v75 + 1) withRange:{*(v75 + 2), *(v75 + 3)}];
                  break;
                case -10152:
                  if (!a1[19])
                  {
                    v80 = MakeNSError(101, MEMORY[0x277CBEC10]);
                    GTMTLReplay_handleNSError(v80);

                    goto LABEL_91;
                  }

                  v44 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
                  v45 = [v90 intersectionFunctionTableForKey:*v44];
                  v46 = GTTraceFunc_argumentBytesWithMap(v40, v44[8], v89);
                  v47 = 8 * *v46;
                  v85 = [a1[1] defaultCommandQueue];
                  v48 = [v85 commandBuffer];
                  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"RestoreIFT"];
                  [v48 setLabel:v49];

                  v50 = [v48 computeCommandEncoder];
                  [v50 setComputePipelineState:a1[19]];
                  [v50 setIntersectionFunctionTable:v45 atBufferIndex:0];
                  v51 = v47;
                  v52 = v45;
                  v34 = v89;
                  [v50 setBytes:v46 + 8 length:v51 atIndex:1];
                  [v50 setBytes:v46 length:8 atIndex:2];
                  v53 = *v46;
                  v6 = v88;
                  *buf = v53;
                  *pb = vdupq_n_s64(1uLL);
                  *&buf[8] = *pb;
                  v93 = [a1[19] threadExecutionWidth];
                  v94 = *pb;
                  [v50 dispatchThreads:buf threadsPerThreadgroup:&v93];
                  [v50 endEncoding];
                  [v48 addCompletedHandler:&__block_literal_global_260];
                  GTMTLReplay_commitCommandBuffer(v48);

                  break;
                default:
                  goto LABEL_88;
              }
            }

            goto LABEL_87;
          }

          if (v43 > -15546)
          {
            if (v43 != -15545)
            {
              if (v43 != -15544)
              {
                goto LABEL_88;
              }

              v60 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
              v87 = [v90 intersectionFunctionTableForKey:*v60];
              v109 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v96 = 0u;
              memset(buf, 0, sizeof(buf));
              v61 = GTTraceFunc_argumentBytesWithMap(v40, v60[24], v34);
              v62 = GTTraceFunc_argumentBytesWithMap(v40, v60[25], v34);
              v63 = v62;
              if (*(v60 + 2))
              {
                pa = v62;
                v64 = 0;
                do
                {
                  v65 = [v90 bufferForKey:{*&v61[8 * v64], v63}];
                  v66 = *&buf[8 * v64];
                  *&buf[8 * v64] = v65;

                  ++v64;
                  v67 = *(v60 + 2);
                }

                while (v67 > v64);
                v6 = v88;
                v34 = v89;
                v63 = pa;
              }

              else
              {
                v67 = 0;
              }

              v52 = v87;
              [v87 setBuffers:buf offsets:v63 withRange:{*(v60 + 1), v67}];
              for (i = 240; i != -8; i -= 8)
              {
              }

              goto LABEL_87;
            }

            v72 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
            v70 = [v90 intersectionFunctionTableForKey:*v72];
            v34 = v89;
            v71 = [v90 bufferForKey:*(v72 + 1)];
            [v70 setBuffer:v71 offset:*(v72 + 2) atIndex:*(v72 + 3)];
          }

          else
          {
            if (v43 != -15559)
            {
              if (v43 != -15558)
              {
                goto LABEL_88;
              }

              v54 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
              v86 = [v90 intersectionFunctionTableForKey:*v54];
              p = *a1[23];
              v55 = apr_palloc(p, 8 * *(v54 + 2));
              v56 = GTTraceFunc_argumentBytesWithMap(v40, v54[24], v34);
              if (*(v54 + 2))
              {
                v57 = v56;
                v58 = 0;
                do
                {
                  v55[v58] = [v90 functionHandleForKey:*&v57[8 * v58]];
                  ++v58;
                  v59 = *(v54 + 2);
                }

                while (v59 > v58);
                v34 = v89;
              }

              else
              {
                v59 = 0;
              }

              v52 = v86;
              [v86 setFunctions:v55 withRange:{*(v54 + 1), v59}];
              apr_pool_clear(p);
              v6 = v88;
              goto LABEL_87;
            }

            v69 = GTTraceFunc_argumentBytesWithMap((v38 + ((HIDWORD(v37) - v37) << 6)), *(v40 + 13), v34);
            v70 = [v90 intersectionFunctionTableForKey:*v69];
            v34 = v89;
            v71 = [v90 functionHandleForKey:*(v69 + 1)];
            [v70 setFunction:v71 atIndex:*(v69 + 2)];
          }

          v52 = v70;
LABEL_87:

          LODWORD(v39) = v91;
          LODWORD(v37) = v92;
          v38 = v32 + 64;
          goto LABEL_88;
        }
      }

      break;
    }

LABEL_91:

    v7 = 0;
LABEL_25:
    result = apr_hash_next(v6);
    v6 = result;
  }

  while (result);
LABEL_92:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

void DoLoadJob(void **a1, uint64_t a2, void *a3, apr_hash_t *a4)
{
  v125 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (*a2 == 1)
  {
    ht = a4;
    v13 = *(a2 + 8);
    v14 = *(a2 + 4);
    v15 = v6;
    v16 = os_signpost_id_make_with_pointer(g_signpostLog, a1);
    v98 = v15;
    v105 = v13;
    [v15 enterRestoreResources:v13 count:v14];
    v17 = a1[3];
    v115 = a1[1];
    v114 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v14];
    v18 = g_signpostLog;
    v19 = v18;
    v101 = v16 - 1;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Replayer-2-restore", "DownloadBufferContent", buf, 2u);
    }

    v103 = v16;

    v104 = v14;
    if (v14 >= 1)
    {
      v20 = v14;
      v21 = (v13 + 40);
      do
      {
        if (*(v21 - 5) == 22)
        {
          v22 = [v115 bufferForKey:*(v21 - 4)];
          v23 = [v17 bufferWithLength:*v21 alignment:1];
          v24 = [v17 blitCommandEncoder];
          v25 = *(v21 - 1);
          v26 = [v23 heapBuffer];
          [v24 copyFromBuffer:v22 sourceOffset:v25 toBuffer:v26 destinationOffset:objc_msgSend(v23 size:{"heapLocation"), *v21}];

          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v21 - 4)];
          [v114 setObject:v23 forKey:v27];
        }

        v21 += 56;
        --v20;
      }

      while (v20);
    }

    v28 = [v17 commandBuffer];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"DownloadBufferContent"];
    [v28 setLabel:v29];

    [v17 commitCommandBuffer];
    [v28 waitUntilCompleted];

    v30 = &unk_27F09B000;
    v31 = g_signpostLog;
    v32 = v31;
    v33 = v101;
    v34 = v103;
    if (v101 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v31))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v32, OS_SIGNPOST_INTERVAL_END, v103, "Replayer-2-restore", &unk_24DA93952, buf, 2u);
    }

    v100 = **a1;
    p = *ht;
    v113 = a1[23];
    v35 = g_signpostLog;
    v36 = v35;
    v38 = v104;
    v37 = v105;
    if (v101 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 67109120;
      *v122 = v104;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v103, "Replayer-2-restore", "CompareAndRestoreResourcesFromArchive x%d", buf, 8u);
    }

    v99 = v7;

    if (v104 < 1)
    {
      v40 = 0;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v106 = v17;
      do
      {
        v117 = objc_autoreleasePoolPush();
        v41 = v37 + 448 * v39;
        v120 = RequestSize(v41);
        v42 = MEMORY[0x277D86228];
        v43 = MEMORY[0x277D86228];
        if (v33 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          v44 = *(v41 + 8);
          v45 = *(v41 + 24);
          *buf = 134218498;
          *v122 = v44;
          *&v122[8] = 2048;
          *&v122[10] = v120;
          v123 = 2082;
          v124 = v45;
          _os_signpost_emit_with_name_impl(&dword_24D764000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v34, "Replayer-6-high", "%llu. %{xcode:size-in-bytes}zu %{public}s", buf, 0x20u);
        }

        v46 = *v41;
        v118 = v39;
        if (*v41 > 85)
        {
          if (v46 == 86)
          {
            GTMTLReplayController_restoreIOSurfaceData_length_forPlane(a1, v37 + 448 * v39);
          }

          else if (v46 == 101)
          {
            GTMTLReplayController_restoreMTLTensor(a1, v37 + 448 * v39);
          }
        }

        else if (v46 == 22)
        {
          v111 = v40;
          v47 = [v17 bufferWithLength:*(v41 + 40) alignment:1];
          GTCaptureArchive_fillBuffer(v100, v113, *(v41 + 24), [v47 contents], *(v41 + 40), 0);
          v48 = apr_array_make(p, 0, 16);
          v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v41 + 8)];
          v49 = [v114 objectForKeyedSubscript:?];
          v50 = v47;
          v51 = [v49 length];
          v108 = v49;
          v52 = [v49 contents];
          v110 = v50;
          v53 = [v50 contents];
          if (v51)
          {
            v54 = v53;
            v55 = 0;
            v56 = 0;
            for (i = 0; i < v51; i += 0x10000)
            {
              v58 = v51 - i;
              while (1)
              {
                v59 = v58 - 0x10000;
                v60 = v58 >= 0x10000 ? 0x10000 : v58;
                v61 = memcmp((v52 + i), (v54 + i), v60);
                if (v61 || !v55)
                {
                  break;
                }

                v62 = apr_array_push(v48);
                v55 = 0;
                *v62 = v56;
                v62[1] = i - v56;
                i += 0x10000;
                v58 = v59;
                if (i >= v51)
                {
                  goto LABEL_50;
                }
              }

              if ((v55 ^ (v61 != 0)))
              {
                v56 = i;
                v55 = v61 != 0;
              }
            }

            if (v55)
            {
              v63 = apr_array_push(v48);
              *v63 = v56;
              v63[1] = v51 - v56;
            }
          }

LABEL_50:

          v64 = apr_palloc(p, 8uLL);
          *v64 = *(v41 + 8);
          apr_hash_set(ht, v64, 8, v48);
          v65 = [v115 bufferForKey:*(v41 + 8)];
          v17 = v106;
          v66 = [v106 blitCommandEncoder];
          v67 = [v110 heapBuffer];
          [v66 copyFromBuffer:v67 sourceOffset:objc_msgSend(v110 toBuffer:"heapLocation") destinationOffset:v65 size:{*(v41 + 32), *(v41 + 40)}];

          apr_pool_clear(*v113);
          v34 = v103;
          v38 = v104;
          v30 = &unk_27F09B000;
          v37 = v105;
          v33 = v101;
          v40 = v111;
        }

        else if (v46 == 80)
        {
          GTMTLReplayController_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(a1, v37 + 448 * v39);
        }

        v68 = v30[262];
        v69 = v68;
        if (v33 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24D764000, v69, OS_SIGNPOST_INTERVAL_END, v34, "Replayer-6-high", &unk_24DA93952, buf, 2u);
        }

        v40 += v120;

        objc_autoreleasePoolPop(v117);
        v39 = v118 + 1;
      }

      while (v118 + 1 != v38);
    }

    v92 = v40;
    v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"CompareAndRestoreResourcesFromArchive"];
    v94 = [v17 commandBuffer];
    [v94 setLabel:v93];

    [v17 commitCommandBufferWithLog:v98];
    v95 = v30[262];
    v96 = v95;
    if (v33 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v95))
    {
      *buf = 134217984;
      *v122 = v92;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v96, OS_SIGNPOST_INTERVAL_END, v34, "Replayer-2-restore", "%{xcode:size-in-bytes}zu", buf, 0xCu);
    }

    [v98 leaveActivity];
    goto LABEL_93;
  }

  if (!*a2)
  {
    v8 = *(a2 + 8);
    v9 = *(a2 + 4);
    v10 = v6;
    if (s_logUsingOsLog == 1)
    {
      v11 = gt_tagged_log(0xEu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "s";
        if (v9 == 1)
        {
          v12 = "";
        }

        *buf = 67109378;
        *v122 = v9;
        *&v122[4] = 2080;
        *&v122[6] = v12;
        _os_log_impl(&dword_24D764000, v11, OS_LOG_TYPE_DEFAULT, "Restoring %d resource%s", buf, 0x12u);
      }
    }

    else
    {
      v70 = *MEMORY[0x277D85E08];
      v71 = "s";
      if (v9 == 1)
      {
        v71 = "";
      }

      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"Restoring %d resource%s", v9, v71];
      fprintf(v70, "%s\n", [v72 UTF8String]);
    }

    v73 = os_signpost_id_make_with_pointer(g_signpostLog, a1);
    [v10 enterRestoreResources:v8 count:v9];
    v74 = a1[3];
    v75 = g_signpostLog;
    v76 = v75;
    v77 = v73 - 1;
    if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
    {
      *buf = 67109120;
      *v122 = v9;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v76, OS_SIGNPOST_INTERVAL_BEGIN, v73, "Replayer-2-restore", "RestoreResourceFromArchive x%d", buf, 8u);
    }

    v119 = v10;
    v107 = v74;
    v99 = v7;

    if (v9 < 1)
    {
      v78 = 0;
    }

    else
    {
      v78 = 0;
      v79 = MEMORY[0x277D86228];
      do
      {
        v80 = objc_autoreleasePoolPush();
        v81 = RequestSize(v8);
        v82 = v79;
        if (v77 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
        {
          v83 = v8[1];
          v84 = v8[3];
          *buf = 134218498;
          *v122 = v83;
          *&v122[8] = 2048;
          *&v122[10] = v81;
          v123 = 2082;
          v124 = v84;
          _os_signpost_emit_with_name_impl(&dword_24D764000, v79, OS_SIGNPOST_INTERVAL_BEGIN, v73, "Replayer-6-high", "%llu. %{xcode:size-in-bytes}zu %{public}s", buf, 0x20u);
        }

        v85 = *v8;
        if (*v8 <= 79)
        {
          if (v85 == 22 || v85 == 50)
          {
            GTMTLReplayController_restoreMTLBufferContents(a1, v8);
          }
        }

        else
        {
          switch(v85)
          {
            case 'P':
              GTMTLReplayController_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(a1, v8);
              break;
            case 'V':
              GTMTLReplayController_restoreIOSurfaceData_length_forPlane(a1, v8);
              break;
            case 'e':
              GTMTLReplayController_restoreMTLTensor(a1, v8);
              break;
          }
        }

        v86 = g_signpostLog;
        v87 = v86;
        if (v77 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_24D764000, v87, OS_SIGNPOST_INTERVAL_END, v73, "Replayer-6-high", &unk_24DA93952, buf, 2u);
        }

        v78 += v81;

        objc_autoreleasePoolPop(v80);
        v8 += 56;
        --v9;
      }

      while (v9);
    }

    v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"RestoreResourcesFromArchive"];
    v17 = v107;
    v89 = [v107 commandBuffer];
    [v89 setLabel:v88];

    [v107 commitCommandBufferWithLog:v119];
    v90 = g_signpostLog;
    v91 = v90;
    if (v77 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v90))
    {
      *buf = 134217984;
      *v122 = v78;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v91, OS_SIGNPOST_INTERVAL_END, v73, "Replayer-2-restore", "%{xcode:size-in-bytes}zu", buf, 0xCu);
    }

    [v119 leaveActivity];
LABEL_93:
    v7 = v99;
  }

  v97 = *MEMORY[0x277D85DE8];
}

void GTMTLReplayController_restoreIOSurfaceData_length_forPlane(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 184);
  v5 = *v4;
  Data = GTCaptureArchive_readData(**a1, v4, *(a2 + 24), *v4, 0);
  v8 = v7;
  v37 = *(a1 + 8);
  v9 = [v37 textureForKey:*(a2 + 8)];
  v10 = [v9 iosurface];
  v11 = v10;
  if (Data)
  {
    v12 = v8 >= 0x10;
  }

  else
  {
    v12 = 0;
  }

  if (v12 && *Data == 0x63617074757265)
  {
    IOSurfaceLock(v10, 0, 0);
    if (!IOSurfaceGetPlaneCount(v11))
    {
      IOSurfaceGetAllocSize(v11);
    }

    v13 = *(Data + 2);
    if (v13 <= 1)
    {
      if (v13 != 1)
      {
        goto LABEL_31;
      }

      v14 = *(a2 + 36);
    }

    else
    {
      v14 = 0;
    }

    v29 = Data;
    if (*Data == 0x63617074757265)
    {
      v30 = *(Data + 3);
      if (*(Data + 4) == 1)
      {
        v30 += 16;
      }

      v29 = &Data[v30];
    }

    v31 = 0;
    v32 = (Data + 64);
    do
    {
      IOSurfaceGetHeightOfPlane(v11, v14 + v31);
      IOSurfaceGetWidthOfPlane(v11, v14 + v31);
      IOSurfaceGetBytesPerRowOfPlane(v11, v14 + v31);
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v11, v14 + v31);
      memcpy(BaseAddressOfPlane, v29, *v32);
      v34 = *v32;
      v32 += 6;
      v29 += v34;
      ++v31;
    }

    while (*(Data + 2) > v31);
  }

  else if (([v9 pixelFormat] & 0xFFFFFFFFFFFFFFFELL) == 0x226)
  {
    v11 = [v9 iosurface];
    IOSurfaceLock(v11, 0, 0);
    PlaneCount = IOSurfaceGetPlaneCount(v11);
    if (PlaneCount)
    {
      v16 = PlaneCount;
      v35 = v9;
      v36 = v5;
      v17 = 0;
      for (i = 0; i != v16; ++i)
      {
        HeightOfPlane = IOSurfaceGetHeightOfPlane(v11, i);
        WidthOfPlane = IOSurfaceGetWidthOfPlane(v11, i);
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v11, i);
        BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(v11, i);
        v23 = IOSurfaceGetBaseAddressOfPlane(v11, i);
        if (HeightOfPlane)
        {
          v24 = v23;
          v25 = BytesPerElementOfPlane * WidthOfPlane;
          do
          {
            memcpy(v24, &Data[v17], v25);
            v17 += v25;
            v24 += BytesPerRowOfPlane;
            --HeightOfPlane;
          }

          while (HeightOfPlane);
        }
      }

      v9 = v35;
      v5 = v36;
    }
  }

  else
  {
    IOSurfaceLock(v11, 0, 0);
    v26 = IOSurfaceGetBaseAddressOfPlane(v11, *(a2 + 36));
    v27 = *(a2 + 32);
    if (IOSurfaceGetAllocSize(v11) <= v27)
    {
      AllocSize = IOSurfaceGetAllocSize(v11);
    }

    else
    {
      AllocSize = *(a2 + 32);
    }

    memcpy(v26, Data, AllocSize);
  }

LABEL_31:
  IOSurfaceUnlock(v11, 0, 0);
  apr_pool_clear(v5);
}

uint64_t CountRequestsWithinCapacity(uint64_t a1, uint64_t a2)
{
  v4 = RequestSize(a1);
  if (a2 < 2)
  {
    return 1;
  }

  v5 = v4;
  v6 = a1 + 448;
  v7 = 1;
  while (1)
  {
    v8 = RequestAlignment(v6);
    v5 = ((v5 + v8 - 1) & -v8) + RequestSize(v6);
    if (v5 > 0x2000000)
    {
      break;
    }

    ++v7;
    v6 += 448;
    if (a2 == v7)
    {
      return a2;
    }
  }

  return v7;
}

uint64_t CompareRequestsBySize(uint64_t a1, uint64_t a2)
{
  v4 = RequestSize(a2);
  if (v4 < RequestSize(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = RequestSize(a2);
  if (v6 != RequestSize(a1))
  {
    return 1;
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  v9 = v7 >= v8;
  v10 = v7 != v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t StartLoadingThread()
{
  v0 = MEMORY[0x28223BE20]();
  v46[2809] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  pool = 0;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v1);
  v2 = *(v0 + 8);
  v3 = *(v2 + 8);
  v4 = newpool;
  apr_pool_create_ex(&pool, newpool, 0, v5);
  *(v0 + 16) = apr_hash_make(pool);
  v33[0] = *v2;
  v30 = v3;
  v33[1] = v30;
  v33[2] = 0;
  v6 = [GTMTLReplaySharedBlitBuffer alloc];
  v7 = [v30 defaultCommandQueue];
  v34 = [(GTMTLReplaySharedBlitBuffer *)v6 initWithCommandQueue:v7 resourcePool:*(v2 + 16) sync:v2 + 40];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v45 = GTCaptureArchiveDecompressor_create(v4);
  bzero(v46, 0x57C8uLL);

  while (1)
  {
    dispatch_semaphore_wait(*(v2 + 22600), 0xFFFFFFFFFFFFFFFFLL);
    if (atomic_load((v2 + 22596)))
    {
      break;
    }

    v9 = pthread_self();
    v10 = [GTMTLReplayActivityLog alloc];
    v11 = [(GTMTLReplayActivityLog *)v10 initWithLog:g_activityLog];
    pthread_rwlock_wrlock(&rwlock);
    v12 = 0;
    v13 = threadLocalLogs;
    do
    {
      if (pthread_equal(v9, *v13))
      {
        v15 = v11;
        goto LABEL_12;
      }

      ++v12;
      v13 += 2;
    }

    while (v12 != 7);
    v12 = 0;
    v14 = threadLocalLogs;
    while (v14[1])
    {
      ++v12;
      v14 += 2;
      if (v12 == 7)
      {
        goto LABEL_13;
      }
    }

    v16 = v11;
    *v14 = v9;
LABEL_12:
    v17 = &threadLocalLogs[2 * v12];
    v18 = v17[1];
    v17[1] = v11;

LABEL_13:
    pthread_rwlock_unlock(&rwlock);

    add = atomic_fetch_add((v2 + 22592), 1u);
    v20 = *(v2 + 22584);
    if (add < *(v20 + 12))
    {
      v21 = *(v20 + 24);
      if (v21)
      {
        v22 = v21 + 16 * add;
        do
        {
          v23 = objc_autoreleasePoolPush();
          DoLoadJob(v33, v22, v11, *(v0 + 16));
          objc_autoreleasePoolPop(v23);
          v24 = atomic_fetch_add((v2 + 22592), 1u);
          v25 = *(v2 + 22584);
          if (v24 >= *(v25 + 12))
          {
            break;
          }

          v26 = *(v25 + 24);
          v22 = v26 + 16 * v24;
        }

        while (v26);
      }
    }

    [(GTMTLReplaySharedBlitBuffer *)v34 releaseBuffer];
    dispatch_group_leave(*(v2 + 22608));
  }

  apr_pool_destroy(newpool);
  __destructor_8_s8_s16_s24_S_s40_s56_s64_s72_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_S_s176_S_s22600_s22608_S_s22616_s22640_s22648(v33);

  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

void __destructor_8_s8_s16_s24_S_s40_s56_s64_s72_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_S_s176_S_s22600_s22608_S_s22616_s22640_s22648(uint64_t a1)
{
  v2 = *(a1 + 22648);
}

uint64_t GTMTLReplayController_cleanup(intptr_t a1)
{
  v2 = a1 + 20480;
  atomic_store(1u, (a1 + 22596));
  SignalLoadQueueThreads(a1, *(a1 + 22656));
  if (*(v2 + 2176) >= 1)
  {
    v3 = 0;
    v4 = (a1 + 22664);
    do
    {
      v5 = *v4;
      v4 += 3;
      pthread_join(v5, 0);
      ++v3;
    }

    while (v3 < *(v2 + 2176));
  }

  v6 = *(a1 + 22600);
  *(a1 + 22600) = 0;

  v7 = *(a1 + 22608);
  *(a1 + 22608) = 0;

  v8 = *(a1 + 22616);
  *(a1 + 22616) = 0;

  v9 = *(a1 + 8);
  *(a1 + 8) = 0;

  v10 = *(a1 + 24);
  *(a1 + 24) = 0;

  v11 = *(a1 + 16);
  *(a1 + 16) = 0;

  v12 = *(a1 + 56);
  *(a1 + 56) = 0;

  v13 = *(a1 + 72);
  *(a1 + 72) = 0;

  v14 = *(a1 + 80);
  *(a1 + 80) = 0;

  v15 = *(a1 + 176);
  *(a1 + 176) = 0;

  v16 = *(a1 + 64);
  *(a1 + 64) = 0;

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  [v17 removeItemAtURL:*(a1 + 22640) error:0];

  v18 = *(a1 + 22640);
  *(a1 + 22640) = 0;

  v19 = *(a1 + 22648);
  *(a1 + 22648) = 0;

  v20 = *(a1 + 160);
  *(a1 + 160) = 0;

  v21 = *(a1 + 168);
  *(a1 + 168) = 0;

  GTMTLReplayController_tileMemoryFree(a1);
  return 0;
}

void GTMTLReplayController_optimizeRestores(_DWORD *a1, unint64_t a2)
{
  v155 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 2827);
  *(a1 + 2827) = 0;

  apr_hash_clear(*(a1 + 2828));
  *(a1 + 2829) = *(*a1 + 144);
  v144 = a2;
  if (a2 && (qword_27F09CF90 & 0x10) == 0)
  {
    [*(a1 + 3) releaseBuffer];
    [*(a1 + 2) waitUntilCapacity];
    [g_activityLog enterOptimizeRestores];
    v127 = a1;
    v5 = os_signpost_id_generate(g_signpostLog);
    v6 = g_signpostLog;
    v7 = v6;
    spid = v5;
    v113 = v5 - 1;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Replayer-1-serial", "PlayCaptureAndRewind", buf, 2u);
    }

    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, v8);
    p = newpool;
    v117 = apr_hash_make(newpool);
    GTMTLReplayController_rewind(v127);
    v9 = *(*v127 + 128);
    for (i = v127[5640]; i < *(v9 + 12); v127[5640] = i)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(v9 + 24) + (v127[5640] << 6);
      v13 = *(v12 + 8);
      if (GTFenum_isBeginCommandBuffer(v13))
      {
        CompareCommandBufferRestore(v127, v12, v117);
        v13 = *(v12 + 8);
      }

      if (GTFenum_getConstructorType(v13) == 51)
      {
        CompareCommandBufferRestore(v127, v12, v117);
      }

      GTMTLReplayController_updateCommandEncoder(v127, v12);
      GTMTLReplayController_defaultDispatchFunction(v127, v12);
      objc_autoreleasePoolPop(v11);
      i = v127[5640] + 1;
    }

    RewindWithoutRestore(v127);
    RestoreCommandBuffer(v127, 0, p, v117);
    v14 = g_signpostLog;
    v15 = v14;
    if (v113 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v16 = g_signpostLog;
    }

    else
    {
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v15, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
      }

      v16 = g_signpostLog;
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v16, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Replayer-1-serial", "SortCommandBufferKeys", buf, 2u);
      }
    }

    v17 = *(*v127 + 144);
    arr = apr_array_make(p, *(v17 + 48), 8);
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 16) = v17;
    *(v17 + 40) = 0;
    v139 = v17;
    for (j = (v17 + 16); ; j = v20)
    {
      v19 = apr_hash_next(j);
      v20 = v19;
      if (!v19)
      {
        break;
      }

      v21 = **(*(v19 + 1) + 16);
      *apr_array_push(arr) = v21;
    }

    qsort(arr->elts, arr->nelts, arr->elt_size, CompareU64Pointer);
    nelts = arr->nelts;
    if (nelts)
    {
      elts = arr->elts;
      if (!*elts)
      {
        memmove(elts, elts + 8, 8 * nelts - 8);
        *&arr->elts[8 * arr->nelts - 8] = 0;
      }
    }

    v24 = g_signpostLog;
    v25 = v24;
    if (v113 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v26 = g_signpostLog;
    }

    else
    {
      if (os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v25, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
      }

      v26 = g_signpostLog;
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v26, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Replayer-1-serial", "FitResourcesInOptimizedBuffer", buf, 2u);
      }
    }

    v118 = **(v127 + 2829);
    ht = apr_hash_make(p);
    if (arr->nelts < 1)
    {
      v28 = 0;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = arr;
      do
      {
        v142 = v27;
        *&v151[0] = *&v29->elts[8 * v27];
        v30 = *find_entry(v117, v151, 8uLL, 0);
        if (v30)
        {
          v31 = *(v30 + 32);
        }

        else
        {
          v31 = 0;
        }

        v32 = *find_entry(v139, v151, 8uLL, 0);
        if (v32)
        {
          v33 = *(v32 + 32);
        }

        else
        {
          v33 = 0;
        }

        v34 = apr_array_copy(v118, v33);
        qsort(v34->elts, v34->nelts, v34->elt_size, CompareRequestsBySize);
        v35 = v34->nelts;
        v34->nelts = 0;
        if (v35 >= 1)
        {
          for (k = 0; k != v35; ++k)
          {
            v37 = &v34->elts[448 * k];
            if (*v37 != 22)
            {
              if (*v37 != 80)
              {
                continue;
              }

              memset(buf, 0, 56);
              GTMTLSMContext_getTextureDescriptor(*(*v127 + 40), *(v37 + 1), *(v37 + 2), buf);
              if (GetPlanePixelFormat(*&buf[34], 0))
              {
                continue;
              }
            }

            v38 = *find_entry(v31, v37 + 8, 8uLL, 0);
            if (v38 && (v39 = *(v38 + 32)) != 0)
            {
              v40 = *(v39 + 12);
              if (v40 < 1)
              {
                v42 = 0;
              }

              else
              {
                v41 = RequestAlignment(v37);
                v42 = 0;
                v43 = (*(v39 + 24) + 8);
                do
                {
                  v44 = *v43;
                  v43 += 2;
                  v42 = ((v41 - 1 + v42) & -v41) + v44;
                  --v40;
                }

                while (v40);
              }
            }

            else
            {
              v42 = RequestSize(v37);
            }

            v45 = RequestAlignment(v37);
            v46 = ((v28 + v45 - 1) & -v45) + v42;
            if (v46 <= v144)
            {
              v47 = v34->nelts;
              v34->nelts = v47 + 1;
              v48 = v34->elts;
              memcpy(buf, &v48[448 * k], sizeof(buf));
              v47 *= 448;
              memcpy(&v48[448 * k], &v48[v47], 0x1C0uLL);
              memcpy(&v34->elts[v47], buf, 0x1C0uLL);
              v28 = v46;
            }
          }
        }

        v29 = arr;
        apr_hash_set(ht, &arr->elts[8 * v142], 8, v34);
        v49 = v34->nelts;
        v50 = apr_palloc(v118, 0x20uLL);
        v50->pool = v118;
        elt_size = v34->elt_size;
        v50->nelts = v35 - v49;
        v50->nalloc = v35 - v49;
        v50->elt_size = elt_size;
        v50->elts = &v34->elts[elt_size * v49];
        GroupRequestsByCapacity(v50, v52, v53, v54);
        v55 = *(v127 + 2829);
        v56 = apr_palloc(v118, 8uLL);
        *v56 = *&v151[0];
        apr_hash_set(v55, v56, 8, v50);
        v27 = v142 + 1;
      }

      while (v142 + 1 < arr->nelts);
    }

    v57 = g_signpostLog;
    v58 = v57;
    if (v113 >= 0xFFFFFFFFFFFFFFFELL)
    {

      v59 = g_signpostLog;
    }

    else
    {
      if (os_signpost_enabled(v57))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v58, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
      }

      v59 = g_signpostLog;
      if (os_signpost_enabled(v59))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v59, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Replayer-1-serial", "FillDirtyRangesInOptimizedBuffer", buf, 2u);
      }
    }

    v60 = v127;
    v111 = [*(v127 + 1) defaultDevice];
    if (v28)
    {
      v61 = [v111 newBufferWithLength:v28 options:288];
      v62 = *(v127 + 2827);
      *(v127 + 2827) = v61;

      v60 = v127;
    }

    v63 = arr;
    if (arr->nelts >= 1)
    {
      v64 = 0;
      v145 = 0;
      while (1)
      {
        v115 = v64;
        v146 = *&v63->elts[8 * v64];
        v65 = *find_entry(v117, &v146, 8uLL, 0);
        v122 = v65 ? *(v65 + 32) : 0;
        v66 = *find_entry(ht, &v146, 8uLL, 0);
        v67 = v66 ? *(v66 + 32) : 0;
        v68 = apr_array_make(v118, *(v67 + 12), 48);
        v69 = *(v60 + 2828);
        v70 = apr_palloc(v118, 8uLL);
        *v70 = v146;
        v138 = v68;
        apr_hash_set(v69, v70, 8, v68);
        v125 = *(v67 + 24);
        v71 = *(v67 + 12);
        v130 = *(v60 + 2827);
        v120 = **v60;
        v126 = *(v60 + 23);
        v121 = *(v60 + 3);
        v124 = v71;
        if (v71 >= 1)
        {
          break;
        }

LABEL_123:

        v60 = v127;
        [*(v127 + 3) commitCommandBuffer];
        v64 = v115 + 1;
        v63 = arr;
        if (v115 + 1 >= arr->nelts)
        {
          goto LABEL_124;
        }
      }

      v129 = 0;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        v72 = v125 + 448 * v129;
        if (*v72 == 80)
        {
          break;
        }

        if (*v72 == 22)
        {
          if (v122)
          {
            entry = find_entry(v122, (v72 + 8), 8uLL, 0);
            if (*entry)
            {
              v74 = *(*entry + 32);
            }

            else
            {
              v74 = 0;
            }

            if (*(v74 + 12))
            {
              v140 = [v121 bufferWithLength:*(v72 + 40) alignment:1];
              GTCaptureArchive_fillBuffer(v120, v126, *(v72 + 24), [v140 contents], *(v72 + 40), 0);
              if (*(v74 + 12) >= 1)
              {
                v106 = 0;
                v107 = 0;
                do
                {
                  v145 = FillBufferWithBufferBlitOperation(*(v127 + 3), v72, v140, *(*(v74 + 24) + v106), *(*(v74 + 24) + v106 + 8), v130, v145, v138);
                  ++v107;
                  v106 += 16;
                }

                while (v107 < *(v74 + 12));
              }

LABEL_121:
            }
          }

          else
          {
            v141 = [v121 bufferWithLength:*(v72 + 40) alignment:1];
            GTCaptureArchive_fillBuffer(v120, v126, *(v72 + 24), [v141 contents], *(v72 + 40), 0);
            v145 = FillBufferWithBufferBlitOperation(*(v127 + 3), v72, v141, 0, *(v72 + 40), v130, v145, v138);
          }
        }

        apr_pool_clear(*v126);
        objc_autoreleasePoolPop(context);
        if (++v129 == v124)
        {
          goto LABEL_123;
        }
      }

      v140 = v130;
      v75 = **v127;
      v76 = *(v127 + 23);
      v137 = *(v127 + 3);
      v123 = *(v127 + 1);
      v136 = [v123 defaultDevice];
      FileWithFilename = GTCaptureArchive_getFileWithFilename(v75, *(v72 + 24));
      v78 = [v137 bufferWithLength:*(FileWithFilename + 8) alignment:1];
      GTCaptureArchive_fillBuffer(v75, v76, *(v72 + 24), [v78 contents], *(FileWithFilename + 8), 0);
      v79 = [v78 contents];
      v80 = [v78 length];
      if (v79)
      {
        v81 = v80 >= 0x10;
      }

      else
      {
        v81 = 0;
      }

      if (v81 && *v79 == 0x63617074757265)
      {
        if (*(v79 + 8) == 1)
        {
          v82 = *(v79 + 12) + 16;
        }

        else
        {
          v82 = *(v79 + 12);
        }
      }

      else
      {
        v79 = 0;
        v82 = 0;
      }

      v83 = RequestAlignment(v72);
      v153 = 0;
      v152 = 0u;
      memset(v151, 0, sizeof(v151));
      GTMTLSMContext_getTextureDescriptor(*(*v127 + 40), *(v72 + 8), *(v72 + 16), v151);
      v150 = 0;
      memset(v149, 0, sizeof(v149));
      v135 = WORD1(v152);
      GTMTLPixelFormatGetInfoForDevice(v149, v136, WORD1(v152));
      *&v154 = 0;
      v143 = v78;
      if ((~DWORD2(v149[0]) & 0x60) != 0)
      {
        if ((WORD4(v149[0]) & 0x2000) != 0)
        {
          *&v154 = 4;
        }

        v84 = 1;
      }

      else
      {
        v154 = xmmword_24DA8BC50;
        v84 = 2;
      }

      v132 = v84;
      v133 = v79;
      v85 = 0;
      v145 = (v145 + v83 - 1) & -v83;
      v86 = BYTE1(v153);
      v134 = HIBYTE(v152);
      v87 = (v79 + 64);
      v131 = BYTE1(v153);
      while (1)
      {
        if (v79 && *(v79 + 10) == 1 && *(v79 + 16) >= v85)
        {
          v88 = *(v87 - 1);
          v89 = *v87;
        }

        else
        {
          v88 = *(v72 + 48);
          v89 = *(v72 + 52);
        }

        if (v86 < 2)
        {
          break;
        }

        if (v86 != 7)
        {
          goto LABEL_105;
        }

LABEL_106:
        memset(buf, 0, 104);
        v90 = *(&v154 + v85);
        *&v91 = GTMTLGetTextureLevelInfoForDeviceWithOptions(buf, v136, v135, *(v72 + 42), *(v72 + 44), *(v72 + 46), v134).n128_u64[0];
        if (v88)
        {
          v92 = v88;
        }

        else
        {
          v92 = *&buf[80];
        }

        if (v89)
        {
          v93 = v89;
        }

        else
        {
          v93 = v92 * *&buf[32];
        }

        v94 = [v137 blitCommandEncoder];
        v95 = [v143 heapBuffer];
        v96 = [v143 heapLocation];
        v97 = *&buf[96];
        [v94 copyFromBuffer:v95 sourceOffset:v96 + v82 toBuffer:v140 destinationOffset:v145 size:*&buf[96]];

        v98 = apr_array_push(v138);
        v99 = *(v72 + 42);
        v100 = *(v72 + 44);
        v101 = *(v72 + 8);
        v102 = *(v72 + 36);
        v103 = *(v72 + 38);
        v104 = *(v72 + 32);
        v105 = *(v72 + 34);
        *v98 = v145;
        v98[1] = 80;
        v98[2] = v92;
        v98[3] = v93;
        v98[4] = v99;
        v98[5] = v100;
        *(v98 + 3) = v101;
        v98[8] = v102;
        v98[9] = v103;
        *(v98 + 20) = v104;
        *(v98 + 42) = v105;
        v145 += v97;
        v82 += v97;
        *(v98 + 43) = v90;
        ++v85;
        v87 += 6;
        v98[11] = 0;
        v79 = v133;
        v86 = v131;
        if (v132 == v85)
        {

          goto LABEL_121;
        }
      }

      v88 = 0;
LABEL_105:
      v89 = 0;
      goto LABEL_106;
    }

LABEL_124:
    apr_pool_destroy(p);
    v108 = g_signpostLog;
    v109 = v108;
    if (v113 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v109, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
    }

    [g_activityLog leaveActivity];
  }

  v110 = *MEMORY[0x277D85DE8];
}

uint64_t GTMTLReplayController_rewind(uint64_t a1)
{
  if (s_logUsingOsLog == 1)
  {
    v2 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24D764000, v2, OS_LOG_TYPE_INFO, "Rewinding", buf, 2u);
    }
  }

  else
  {
    v3 = *MEMORY[0x277D85E08];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rewinding"];
    fprintf(v3, "%s\n", [v4 UTF8String]);
  }

  Rewind(a1);
  return [*(a1 + 8) setLayerClass:objc_opt_class()];
}

uint64_t CompareCommandBufferRestore(apr_array_header_t **a1, uint64_t a2, apr_pool_t **a3)
{
  [g_activityLog enterRestoreCommandBufferAtIndex:*(a1 + 5640)];
  v9 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *&(*a1)->nalloc) + 1);
  [(apr_array_header_t *)a1[3] commitCommandBuffer];
  RestoreCommandBuffer(a1, v9, *a3, a3);
  v6 = *find_entry((*a1)[4].elts, &v9, 8uLL, 0);
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  DYMTLIndirectArgumentBufferManager_processCommandBuffer(a1, v7);
  return [g_activityLog leaveActivity];
}

void RewindWithoutRestore(uint64_t a1)
{
  v1 = a1;
  GTMTLReplayController_tileMemoryFree(a1);
  v2 = *(v1 + 8);
  v3 = *v1;
  v4 = *(*v1 + 216);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v4 + 12)];
  if (*(v4 + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(v4 + 24) + 8 * v6) + 8)];
      [v5 addObject:v7];

      ++v6;
    }

    while (v6 < *(v4 + 12));
  }

  [v2 removeResourcesForKeys:v5];

  if ((qword_27F09CF90 & 0x10000) != 0 || (*(v3 + 352) & 4) != 0)
  {
    v8 = [*(v1 + 8) defaultCommandQueue];
    [v8 finish];
    v9 = *(v1 + 40);
    add = atomic_fetch_add((v1 + 48), 1uLL);
    v11 = [*(v1 + 8) defaultCommandQueue4];
    [v11 signalEvent:v9 value:add];

    [v9 waitUntilSignaledValue:add timeoutMS:10000];
  }

  v12 = *(v3 + 224);
  if (*(v12 + 12) >= 1)
  {
    v13 = 0;
    v14 = *(v3 + 88);
    do
    {
      v15 = *(*(v12 + 24) + 8 * v13);
      if (v15)
      {
        v15 = *(v15 + 8);
      }

      v16 = *(v3 + 8);
      *&v69 = v15;
      v17 = *find_entry(v16, &v69, 8uLL, 0);
      if (v17)
      {
        v18 = *(v17 + 32);
      }

      else
      {
        v18 = 0;
      }

      CreateResourceFromStream(v1, v18, v14);
      ++v13;
    }

    while (v13 < *(v12 + 12));
  }

  if ((GT_SUPPORT_0 & 0x800) != 0 && *(*(v3 + 248) + 12))
  {
    context = objc_autoreleasePoolPush();
    v19 = [v2 defaultCommandQueue];
    v20 = InternalCommandBuffer(v19, @"MapSparseTextureRegions", v1 + 40);

    v53 = v20;
    v21 = [v20 resourceStateCommandEncoder];
    v57 = v1;
    v22 = **(v1 + 184);
    v55 = v3;
    v23 = *(v3 + 248);
    v24 = v21;
    v56 = v2;
    v60 = v2;
    v25 = apr_array_make(v22, 8, 48);
    v26 = apr_array_make(v22, 8, 48);
    v27 = apr_array_make(v22, 8, 8);
    v52 = v22;
    v28 = apr_array_make(v22, 8, 8);
    v61 = v24;
    v29 = [v24 device];
    v30 = v29;
    v31 = *(v23 + 12);
    if (v31 >= 1)
    {
      v32 = 0;
      v33 = 0;
      v58 = v29;
      v59 = v23;
      do
      {
        v34 = *(v23 + 24) + 448 * v32;
        v36 = *(v34 + 8);
        v35 = (v34 + 8);
        if (v36 != v33)
        {
          v64 = v35;
          v65 = v32;
          v37 = [v60 textureForKey:?];
          v38 = [v37 textureType];
          v39 = [v37 width];
          v40 = [v37 height];
          v41 = [v37 depth];
          v66 = [v37 firstMipmapInTail];
          v62 = v38;
          v63 = v37;
          v42 = [v37 arrayLength];
          v43 = 0;
          if ((v38 - 5) >= 2)
          {
            v44 = v42;
          }

          else
          {
            v44 = 6 * v42;
          }

          do
          {
            if (v44)
            {
              for (i = 0; i != v44; ++i)
              {
                apr_array_push(v26);
                v46 = apr_array_push(v25);
                *v46 = 0;
                v46[1] = 0;
                v46[2] = 0;
                v46[3] = v39;
                v46[4] = v40;
                v46[5] = v41;
                *apr_array_push(v27) = v43;
                *apr_array_push(v28) = i;
              }
            }

            if (v39 <= 1)
            {
              v39 = 1;
            }

            else
            {
              v39 >>= 1;
            }

            if (v40 <= 1)
            {
              v40 = 1;
            }

            else
            {
              v40 >>= 1;
            }

            if (v41 <= 1)
            {
              v41 = 1;
            }

            else
            {
              v41 >>= 1;
            }

            ++v43;
          }

          while (v43 <= v66);
          v69 = 0uLL;
          v70 = 0;
          v47 = [v63 pixelFormat];
          v48 = [v63 sampleCount];
          v30 = v58;
          if (v58)
          {
            [v58 sparseTileSizeWithTextureType:v62 pixelFormat:v47 sampleCount:v48];
          }

          else
          {
            v69 = 0uLL;
            v70 = 0;
          }

          v23 = v59;
          elts = v25->elts;
          v50 = v26->elts;
          nelts = v25->nelts;
          v67 = v69;
          v68 = v70;
          [v58 convertSparsePixelRegions:elts toTileRegions:v50 withTileSize:&v67 alignmentMode:0 numRegions:nelts];
          [v61 updateTextureMappings:v63 mode:1 regions:v26->elts mipLevels:v27->elts slices:v28->elts numRegions:v25->nelts];
          v25->nelts = 0;
          v26->nelts = 0;
          v27->nelts = 0;
          v28->nelts = 0;
          v33 = *v64;

          v31 = *(v59 + 12);
          v32 = v65;
        }

        ++v32;
      }

      while (v32 < v31);
    }

    MapSparseTextureRegions(v61, v60, *(v55 + 248), v52);
    apr_pool_clear(v52);
    [v61 endEncoding];
    GTMTLReplay_commitCommandBuffer(v53);

    objc_autoreleasePoolPop(context);
    v2 = v56;
    v1 = v57;
  }

  *(v1 + 22560) = 0;
  bzero((v1 + 192), 0x5750uLL);
}

uint64_t RestoreCommandBuffer(apr_array_header_t **a1, uint64_t a2, apr_pool_t *pool, apr_hash_t *a4)
{
  v46 = a2;
  v8 = apr_hash_make(pool);
  v9 = apr_palloc(pool, 8uLL);
  *v9 = a2;
  apr_hash_set(a4, v9, 8, v8);
  result = find_entry(*&(*a1)[4].nalloc, &v46, 8uLL, 0);
  if (*result)
  {
    v11 = *(*result + 32);
    if (v11)
    {
      v12 = *(v11 + 12);
      if (v12)
      {
        v45 = a1 + 2560;
        if (v12 >= 1)
        {
          v13 = 0;
          do
          {
            v14 = apr_array_push(a1[2823]);
            *v14 = 1;
            v15 = *(v11 + 24) + 448 * v13;
            v14[1] = v15;
            v16 = *(v11 + 12);
            v17 = CountRequestsWithinCapacity(v15, (v16 - v13));
            *(v14 + 1) = v17;
            v13 += v17;
          }

          while (v13 < v16);
        }

        SignalLoadQueueThreads(a1, a1[2823]->nelts - 1);
        CommandBufferCommitIndex = GTTraceDump_getCommandBufferCommitIndex(*&(*a1)[6].elt_size, v46);
        RestoreVisibleFunctionTablesForFunctionIndex(a1, CommandBufferCommitIndex);
        RestoreIntersectionFunctionTablesForFunctionIndex(a1, CommandBufferCommitIndex);
        v19 = [GTMTLReplayActivityLog alloc];
        v20 = [(GTMTLReplayActivityLog *)v19 initWithLog:g_activityLog];
        add = atomic_fetch_add(a1 + 5648, 1u);
        v22 = a1[2823];
        if (add < v22->nelts)
        {
          elts = v22->elts;
          if (elts)
          {
            v24 = &elts[16 * add];
            while (1)
            {
              v25 = objc_autoreleasePoolPush();
              DoLoadJob(a1, v24, v20, v8);
              v26 = atomic_fetch_add(a1 + 5648, 1u);
              v27 = a1[2823];
              if (v26 >= v27->nelts)
              {
                break;
              }

              v28 = v27->elts;
              v24 = &v28[16 * v26];
              objc_autoreleasePoolPop(v25);
              if (!v28)
              {
                goto LABEL_14;
              }
            }

            objc_autoreleasePoolPop(v25);
          }
        }

LABEL_14:

        result = dispatch_group_wait(a1[2826], 0xFFFFFFFFFFFFFFFFLL);
        a1[2823]->nelts = 0;
        if (*(a1 + 5664) >= 1)
        {
          v29 = 0;
          v30 = *v8;
          v31 = a1 + 2833;
          do
          {
            v32 = &v31[3 * v29];
            v35 = v32[2];
            v34 = v32 + 2;
            p_pool = &v35->pool;
            v35->elts = 0;
            v35[1].pool = 0;
            *&v35->nalloc = v35;
            v35[1].elt_size = 0;
            for (i = &v35->nalloc; ; i = v38)
            {
              v37 = apr_hash_next(i);
              v38 = v37;
              if (!v37)
              {
                break;
              }

              v39 = *(v37 + 1);
              v41 = *(v39 + 16);
              v40 = *(v39 + 24);
              if (v41)
              {
                v42 = apr_palloc(v30, *(v39 + 24));
                memcpy(v42, v41, v40);
                v39 = *(v38 + 1);
              }

              else
              {
                v42 = 0;
              }

              v43 = apr_array_copy(v30, *(v39 + 32));
              apr_hash_set(v8, v42, v40, v43);
            }

            v44 = *p_pool;
            apr_pool_clear(*p_pool);
            result = apr_hash_make(v44);
            *v34 = result;
            ++v29;
          }

          while (v29 < *(v45 + 544));
        }
      }
    }
  }

  return result;
}

uint64_t FillBufferWithBufferBlitOperation(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, apr_array_header_t *a8)
{
  v16 = RequestAlignment(a2);
  v17 = (a7 + v16 - 1) & -v16;
  v18 = a6;
  v19 = a3;
  v20 = [a1 blitCommandEncoder];
  v21 = [v19 heapBuffer];
  v22 = [v19 heapLocation];

  [v20 copyFromBuffer:v21 sourceOffset:v22 + a4 toBuffer:v18 destinationOffset:v17 size:a5];
  v23 = apr_array_push(a8);
  v24 = *(a2 + 8);
  v25 = *(a2 + 32) + a4;
  *v23 = v17;
  v23[1] = 22;
  *(v23 + 1) = v24;
  v23[4] = v25;
  v23[5] = a5;
  return v17 + a5;
}

uint64_t CompareU64Pointer(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

uint64_t Rewind(uint64_t result)
{
  v1 = result + 20480;
  if (*(result + 22560))
  {
    v2 = result;
    [g_activityLog enterRewind];
    RewindWithoutRestore(v2);
    v84 = 0;
    v3 = *find_entry(*(v2 + 22632), &v84, 8uLL, 0);
    if (v3)
    {
      v4 = *(v3 + 32);
    }

    else
    {
      v4 = 0;
    }

    AppendRestoreJobsToLoadQueue(v2, v4);
    SignalLoadQueueThreads(v2, *(*(v2 + 22584) + 12));
    v5 = [GTMTLReplayActivityLog alloc];
    v6 = [(GTMTLReplayActivityLog *)v5 initWithLog:g_activityLog];
    v81 = v1;
    entry = find_entry(*(v2 + 22624), &v84, 8uLL, 0);
    if (*entry)
    {
      v8 = *(*entry + 32);
      if (v8)
      {
        RestoreResourcesFromBuffer(v2, *(v2 + 22616), *(v8 + 24), *(v8 + 12), v6);
      }
    }

    v80 = v6;
    RestoreOrderedResourcesFromArchive(v2, *(*(*v2 + 264) + 24), *(*(*v2 + 264) + 12), v6);
    RestoreVisibleFunctionTablesForFunctionIndex(v2, *(*v2 + 88) - 1);
    RestoreIntersectionFunctionTablesForFunctionIndex(v2, *(*v2 + 88) - 1);
    v9 = *(*v2 + 88) - 1;
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, v10);
    p = newpool;
    v11 = apr_array_make(newpool, 32, 8);
    GTMTLSMContext_getObjects(*(*(*v2 + 40) + 336), v9, v11);
    nelts = v11->nelts;
    if (nelts >= 1)
    {
      v13 = 0;
      v83 = v11;
      do
      {
        v14 = *&v11->elts[8 * v13];
        v15 = v14[2];
        v16 = *(*v2 + 72);
        if (v16 > v15 || *(*v2 + 80) + v16 <= v15)
        {
          v18 = *(v2 + 8);
          v19 = [v18 mtl4ArgumentTableForKey:v14[1]];
          v20 = v14[6];
          v21 = v20[1];
          if (v21)
          {
            v22 = 0;
            if (v21 >= 0x1F)
            {
              v23 = 31;
            }

            else
            {
              v23 = v20[1];
            }

            do
            {
              v24 = &v14[v22];
              if ((v14[(v22 >> 6) + 7] & (1 << v22)) != 0)
              {
                v25 = v24[8];
                if ((v14[(v22 >> 6) + 39] & (1 << v22)) != 0)
                {
                  [v19 setAddress:v25 attributeStride:v24[40] atIndex:v22];
                }

                else
                {
                  [v19 setAddress:v25 atIndex:v22];
                }
              }

              else
              {
                [v19 setResource:v24[8] atBufferIndex:v22];
              }

              ++v22;
            }

            while (v23 != v22);
            v20 = v14[6];
            v11 = v83;
          }

          v26 = v20[3];
          if (v26)
          {
            v27 = 0;
            if (v26 >= 0x80)
            {
              v28 = 128;
            }

            else
            {
              v28 = v20[3];
            }

            do
            {
              [v19 setTexture:v14[v27 + 71] atIndex:{v27, v80}];
              ++v27;
            }

            while (v28 != v27);
            v20 = v14[6];
          }

          v29 = v20[2];
          if (v29)
          {
            v30 = 0;
            if (v29 >= 0x10)
            {
              v31 = 16;
            }

            else
            {
              v31 = v29;
            }

            do
            {
              [v19 setSamplerState:v14[v30 + 199] atIndex:{v30, v80}];
              ++v30;
            }

            while (v31 != v30);
          }

          nelts = v11->nelts;
        }

        ++v13;
      }

      while (v13 < nelts);
    }

    apr_pool_destroy(p);
    add = atomic_fetch_add((v1 + 2112), 1u);
    v33 = *(v2 + 22584);
    if (add >= *(v33 + 12))
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v33 + 24) + 16 * add;
    }

    while (v34)
    {
      v35 = objc_autoreleasePoolPush();
      DoLoadJob(v2, v34, v80, 0);
      v36 = atomic_fetch_add((v81 + 2112), 1u);
      v37 = *(v2 + 22584);
      if (v36 >= *(v37 + 12))
      {
        v34 = 0;
      }

      else
      {
        v34 = *(v37 + 24) + 16 * v36;
      }

      objc_autoreleasePoolPop(v35);
    }

    dispatch_group_wait(*(v2 + 22608), 0xFFFFFFFFFFFFFFFFLL);
    *(*(v2 + 22584) + 12) = 0;
    v38 = *v2;
    v39 = *(*v2 + 88);
    v40 = *(*v2 + 280);
    if (*(v40 + 12) >= 1)
    {
      v41 = 0;
      do
      {
        v42 = *(*(v40 + 24) + 8 * v41);
        if ((qword_27F09CF90 & 0x400) != 0 || *(v42 + 16) < v38[11])
        {
          v43 = [*(v2 + 8) residencySetForKey:{*(v42 + 8), v80}];
          [v43 removeAllAllocations];

          v44 = 0;
        }

        else
        {
          v44 = 1;
        }

        v45 = v38[1];
        newpool = *(v42 + 8);
        v46 = *find_entry(v45, &newpool, 8uLL, 0);
        if (v46)
        {
          v47 = *(v46 + 32);
        }

        else
        {
          v47 = 0;
        }

        RestoreResourceFromStream(v2, v47, v39, v44);
        ++v41;
        v40 = v38[35];
      }

      while (v41 < *(v40 + 12));
    }

    v48 = *(v38[36] + 12);
    if (v48)
    {
      v49 = **(v2 + 184);
      v50 = 8 * v48;
      v51 = apr_palloc(v49, 8 * v48);
      v52 = v51;
      if (v51)
      {
        bzero(v51, 8 * v48);
      }

      if (v48 >= 1)
      {
        v53 = 0;
        v54 = 0;
        do
        {
          v55 = [*(v2 + 8) residencySetForKey:{*(*(v38[36] + 24) + v53), v80}];
          if (v55)
          {
            v52[v54++] = v55;
          }

          v53 += 8;
        }

        while (v50 != v53);
        if (v54)
        {
          v56 = [*(v2 + 8) defaultCommandQueue];
          [v56 removeResidencySets:v52 count:v54];
        }
      }

      apr_pool_clear(v49);
    }

    v57 = v38[5];
    v58 = *(v57 + 200);
    v59 = *(v58 + 12);
    if (v59 >= 1)
    {
      v60 = 0;
      while (1)
      {
        v61 = *(*(v58 + 24) + 8 * v60);
        if ((qword_27F09CF90 & 0x400) != 0)
        {
          v65 = v38[1];
          if (!v61)
          {
            v66 = 0;
            goto LABEL_78;
          }
        }

        else
        {
          v62 = *(v61 + 16);
          v63 = v38[9];
          if (v63 <= v62 && v38[10] + v63 > v62)
          {
            goto LABEL_82;
          }

          v65 = v38[1];
        }

        v66 = *(v61 + 8);
LABEL_78:
        newpool = v66;
        v67 = *find_entry(v65, &newpool, 8uLL, 0);
        if (v67)
        {
          v68 = *(v67 + 32);
        }

        else
        {
          v68 = 0;
        }

        RestoreResourceFromStream(v2, v68, v39, 1);
        v59 = *(v58 + 12);
LABEL_82:
        if (++v60 >= v59)
        {
          v57 = v38[5];
          break;
        }
      }
    }

    v69 = *(v57 + 96);
    v70 = *(v69 + 12);
    if (v70 >= 1)
    {
      for (i = 0; i < v70; ++i)
      {
        v72 = *(*(v69 + 24) + 8 * i);
        if ((qword_27F09CF90 & 0x400) != 0)
        {
          v76 = v38[1];
          if (!v72)
          {
            v77 = 0;
            goto LABEL_95;
          }
        }

        else
        {
          v73 = *(v72 + 16);
          v74 = v38[9];
          if (v74 <= v73 && v38[10] + v74 > v73)
          {
            continue;
          }

          v76 = v38[1];
        }

        v77 = *(v72 + 8);
LABEL_95:
        newpool = v77;
        v78 = *find_entry(v76, &newpool, 8uLL, 0);
        if (v78)
        {
          v79 = *(v78 + 32);
        }

        else
        {
          v79 = 0;
        }

        RestoreResourceFromStream(v2, v79, v39, 1);
        v70 = *(v69 + 12);
      }
    }

    return [g_activityLog leaveActivity];
  }

  return result;
}

uint64_t RestoreResourcesFromBuffer(id *a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  v11 = os_signpost_id_make_with_pointer(g_signpostLog, a1);
  v48 = a1[3];
  v12 = a1[1];
  v13 = g_signpostLog;
  v14 = v13;
  v42 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a4;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Replayer-2-restore", "RestoreResourcesFromBuffer x%d", &buf, 8u);
  }

  spid = v11;
  v43 = v10;

  if (a4 >= 1)
  {
    v15 = 0;
    v16 = (a3 + 22);
    v17 = a4;
    v44 = v12;
    v45 = v9;
    while (1)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(v16 - 9);
      if (v19 == 80)
      {
        break;
      }

      if (v19 == 22)
      {
        v20 = [v12 bufferForKey:*(v16 - 7)];
        v21 = [v48 blitCommandEncoder];
        [v21 copyFromBuffer:v9 sourceOffset:*(v16 - 11) toBuffer:v20 destinationOffset:*(v16 - 3) size:*(v16 - 1)];

        v22 = *(v16 - 1);
LABEL_10:
        v15 += v22;
      }

      objc_autoreleasePoolPop(v18);
      v16 += 24;
      if (!--v17)
      {
        goto LABEL_14;
      }
    }

    v20 = [v12 textureForKey:*(v16 + 1)];
    v47 = *(v16 - 3);
    v46 = *(v16 - 1);
    v23 = *v16;
    v24 = v18;
    v25 = v15;
    v26 = *(v16 + 5);
    v27 = v16[7];
    v28 = v16[8];
    v29 = [v48 blitCommandEncoder];
    v30 = *(v16 - 11);
    v31 = *(v16 - 7);
    v32 = *(v16 - 5);
    v33 = v16[9];
    v34 = *(v16 + 20);
    v35 = *(v16 + 21);
    v49[2] = v28;
    *&buf = v47;
    *(&buf + 1) = v46;
    v51 = v23;
    v12 = v44;
    v49[0] = v26;
    v49[1] = v27;
    v15 = v25;
    v18 = v24;
    v9 = v45;
    [v29 copyFromBuffer:v33 sourceOffset:v34 sourceBytesPerRow:v49 sourceBytesPerImage:v35 sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:? options:?];

    v22 = *(v16 - 5) * *v16;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_14:
  v36 = [v48 commitCommandBufferWithLog:v43];
  v37 = g_signpostLog;
  v38 = v37;
  if (v42 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v15;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v38, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-2-restore", "%{xcode:size-in-bytes}zu", &buf, 0xCu);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

void RestoreResourceFromStream(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v18 = *(a1 + 8);
  v8 = *(a2 + 32);
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
    if ((*(v13 + 15) & 8) == 0 || *v13 >= a3)
    {
      break;
    }

    if (!a4 || !GTFenum_getConstructorType(*(v13 + 8)))
    {
      v14 = objc_autoreleasePoolPush();
      GTMTLReplayController_defaultDispatchFunction(a1, v8 + 64 + ((HIDWORD(v12) - v12) << 6));
      objc_autoreleasePoolPop(v14);
    }

    v15 = atomic_load((v8 + 4));
    v16 = v12 + (v15 >> 6);
    v17 = (HIDWORD(v12) + 1);
    v12 = (v17 << 32) | v12;
    if (v17 == v16 - 1)
    {
      v12 = (v17 << 32) | v17;
      v8 = *(v8 + 40);
    }
  }
}

uint64_t GTMTLReplayController_restoreCommandBuffer(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 20480;
  [g_activityLog enterRestoreCommandBufferAtIndex:*(a1 + 22560)];
  v36 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), *(*a1 + 16)) + 1);
  v5 = [*(a1 + 24) commitCommandBuffer];
  v6 = *find_entry(*(*a1 + 192), &v36, 8uLL, 0);
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = *find_entry(*(a1 + 22632), &v36, 8uLL, 0);
  if (!v8)
  {
    if (v7)
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_9;
    }

LABEL_16:
    v10 = 1;
    goto LABEL_17;
  }

  v9 = *(v8 + 32);
  if (v7)
  {
    v10 = 0;
LABEL_9:
    v11 = [*(a1 + 8) defaultCommandQueue];
    [v11 finish];

    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = *(v9 + 12);
  if (v12 < 1)
  {
    v10 = 1;
    goto LABEL_11;
  }

  v13 = *(v9 + 24);
  if (*v13 == 86)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v33 = 0;
  v34 = v13 + 56;
  do
  {
    if (v12 - 1 == v33)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v35 = *v34;
    v34 += 56;
    ++v33;
  }

  while (v35 != 86);
  v10 = 1;
  if (v33 < v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v9)
  {
LABEL_11:
    AppendRestoreJobsToLoadQueue(a1, v9);
    SignalLoadQueueThreads(a1, *(*(a1 + 22584) + 12));
  }

LABEL_17:
  v14 = [GTMTLReplayActivityLog alloc];
  v15 = [(GTMTLReplayActivityLog *)v14 initWithLog:g_activityLog];
  if ((v10 & 1) == 0 && *(v7 + 12) >= 1)
  {
    v16 = 0;
    do
    {
      v17 = *(*(v7 + 24) + 8 * v16);
      v18 = [*(a1 + 8) rasterizationRateMapForKey:*(v17 + 8)];
      v19 = MakeMTLRasterizationRateMapDescriptor(*(v17 + 48));
      [v18 resetUsingDescriptor:v19];

      ++v16;
    }

    while (v16 < *(v7 + 12));
  }

  CommandBufferCommitIndex = GTTraceDump_getCommandBufferCommitIndex(*(*a1 + 200), v36);
  RestoreVisibleFunctionTablesForFunctionIndex(a1, CommandBufferCommitIndex);
  RestoreIntersectionFunctionTablesForFunctionIndex(a1, CommandBufferCommitIndex);
  entry = find_entry(*(a1 + 22624), &v36, 8uLL, 0);
  if (*entry)
  {
    v22 = *(*entry + 32);
    if (v22)
    {
      v5 |= RestoreResourcesFromBuffer(a1, *(a1 + 22616), *(v22 + 24), *(v22 + 12), v15);
    }
  }

  add = atomic_fetch_add((v4 + 2112), 1u);
  v24 = *(a1 + 22584);
  if (add >= *(v24 + 12))
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 24) + 16 * add;
  }

  while (v25)
  {
    v26 = objc_autoreleasePoolPush();
    DoLoadJob(a1, v25, v15, 0);
    v27 = atomic_fetch_add((v4 + 2112), 1u);
    v28 = *(a1 + 22584);
    if (v27 >= *(v28 + 12))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v28 + 24) + 16 * v27;
    }

    objc_autoreleasePoolPop(v26);
  }

  dispatch_group_wait(*(a1 + 22608), 0xFFFFFFFFFFFFFFFFLL);
  *(*(a1 + 22584) + 12) = 0;
  if (byte_27F09CF8E)
  {
    sleep(byte_27F09CF8E);
  }

  v29 = *find_entry(*(*a1 + 152), &v36, 8uLL, 0);
  if (v29)
  {
    v30 = *(v29 + 32);
  }

  else
  {
    v30 = 0;
  }

  v31 = DYMTLIndirectArgumentBufferManager_processCommandBuffer(a1, v30);
  [g_activityLog leaveActivity];
  return v5 | v31;
}

uint64_t GTMTLReplayController_init(uint64_t a1)
{
  if (a1 && !initialized)
  {
    shared_initialized = 1;
    apr_pools_initialized = 1;
    apr_pools_shared_initialized = 1;
    global_pool = a1;
    global_allocator = *(a1 + 48);
  }

  v1 = getenv("LaunchInstanceID");
  if (v1)
  {
    setenv("GT_LAUNCH_UUID", v1, 0);
  }

  qword_27F09CF68 = GetEnvDefault("MTLREPLAYER_ABORT_ON_ERROR_CODE", -1);
  qword_27F09CF70 = GetEnvDefault("MTLREPLAYER_ABORT_ON_FAILURE_TYPE", 1);
  qword_27F09CF78 = GetEnvDefault("MTLREPLAYER_FORCE_PATCHING_TYPE_REPLACE_MASK", 0);
  word_27F09CF8C = GetEnvDefault("MTLREPLAYER_SHARED_RESOURCE_POOL_MAX_SIZE", 128);
  v2 = [MEMORY[0x277CCAC38] processInfo];
  byte_27F09CF8F = GetEnvDefault("MTLREPLAYER_RESTORE_THREAD_COUNT", [v2 activeProcessorCount] - 1);

  byte_27F09CF8E = GetEnvDefault("MTLREPLAYER_SLEEP_AFTER_RESTORE", 0);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFFELL | GetEnvDefault("MTLREPLAYER_VALIDATE_LOAD_ACTIONS", 0) & 1;
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFFDLL | (2 * (GetEnvDefault("MTLREPLAYER_FORCE_WAIT_UNTIL_COMPLETED", 0) & 1));
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFFBLL | (4 * (GetEnvDefault("MTLREPLAYER_FORCE_BUFFER_STORAGE_MODE_PRIVATE", 0) & 1));
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFF7 | (8 * (GetEnvDefault("MTLREPLAYER_ENHANCED_COMMAND_BUFFER_ERRORS", 0) & 1));
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFEFLL | (16 * (GetEnvDefault("MTLREPLAYER_DISABLE_OPTIMIZE_RESTORES", 1) & 1));
  v3 = [MEMORY[0x277CCAC38] processInfo];
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFDFLL | (32 * (GetEnvDefault("METAL_FRAME_DEBUGGER_DISABLE_DISPLAY_ON_DEVICE", [v3 isiOSAppOnMac]) & 1));

  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFFBFLL | ((GetEnvDefault("MTLREPLAYER_DISABLE_PATCHING_ARRAYS", 1) & 1) << 6);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFF7FLL | ((GetEnvDefault("MTLREPLAYER_PATCH_USING_ALL_RESOURCES", 0) & 1) << 7);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFEFFLL | ((GetEnvDefault("MTLREPLAYER_ALLOW_BUFFER_PINNING", 1) & 1) << 8);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFDFFFFLL | ((GetEnvDefault("MTLREPLAYER_BUFFER_PINNING_REQUIRES_AB", 1) & 1) << 17);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFDFFLL | ((GetEnvDefault("MTLREPLAYER_ALLOW_PROGRAM_ADDRESS_TABLES", 1) & 1) << 9);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFEFFFLL | ((GetEnvDefault("MTLREPLAYER_IGNORE_UNUSED_RESOURCE", 0) & 1) << 12);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFFBFFLL | ((GetEnvDefault("MTLREPLAYER_FORCE_LOAD_UNUSED_RESOURCE", 0) & 1) << 10);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFF7FFLL | ((GetEnvDefault("MTLREPLAYER_FORCE_RESOURCES_RESIDENT", 0) & 1) << 11);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFDFFFLL | ((GetEnvDefault("MTLREPLAYER_DISABLE_COMMAND_ENCODER_RESUME", 0) & 1) << 13);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFFBFFFLL | ((GetEnvDefault("MTLREPLAYER_DISABLE_HEAP_TEXTURE_COMPRESSION", 0) & 1) << 14);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFF7FFFLL | ((GetEnvDefault("MTLREPLAYER_DISABLE_SHADER_DEBUGGER_DRIVER_COMPILER_OPTIONS", 0) & 1) << 15);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFEFFFFLL | ((GetEnvDefault("MTLREPLAYER_FORCE_FINISH_ON_REWIND", 0) & 1) << 16);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFFBFFFFLL | ((GetEnvDefault("MTLREPLAYER_DISABLE_MEMORY_BARRIER_RENDER_TARGETS", 0) & 1) << 18);
  GT_ENV = getenv("MTLREPLAYER_INSERT_BINARY_ARCHIVES");
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFF7FFFFLL | ((GetEnvDefault("MTLREPLAYER_FORCE_DEFAULT_HAZARD_TRACKING", 0) & 1) << 19);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFEFFFFFLL | ((GetEnvDefault("MTLREPLAYER_FORCE_TRACKED_HAZARD_TRACKING", 0) & 1) << 20);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFDFFFFFLL | ((GetEnvDefault("MTLREPLAYER_ALLOW_OTHER_PLATFORMS", 0) & 1) << 21);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFBFFFFFLL | ((GetEnvDefault("MTLREPLAYER_DRAWABLE_RESOURCE_INDEX_WORKAROUND", 0) & 1) << 22);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFEFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_GPURESOURCEID_SCAN_AND_PATCH", 1) & 1) << 24);
  qword_27F09CF80 = GetEnvDefault("MTLREPLAYER_ERROR_FILTERING", -1);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFF7FFFFFLL | ((GetEnvDefault("MTLREPLAYER_ALLOW_ALIAS_IOSURFACE_BACKED_BUFFERS", 1) & 1) << 23);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFDFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_LOAD_VALIDATION", 0) & 1) << 25);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFBFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_LOAD_CAPTURE", 0) & 1) << 26);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFF7FFFFFFLL | ((GetEnvDefault("MTLREPLAYER_LOAD_HUD", 0) & 1) << 27);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFEFFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_STOP_ON_COMMIT_ERROR", 0) & 1) << 28);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFDFFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_REDIRECT_LOGGING_TO_STREAMS", 0) & 1) << 29);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFBFFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_LOCK_PARAM_BUFFER_SIZE_TO_MAX", 1) & 1) << 30);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFF7FFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_RESOURCES_ON_HEAPS", 0) & 1) << 31);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFEFFFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_LIVE_ICBS", 0) & 1) << 32);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFDFFFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_EXTRACT_FROM_HEAPS", 0) & 1) << 33);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFBFFFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_FORCE_FETCH_TEXTURES_FOR_DISPLAY", 0) & 1) << 34);
  dword_27F09CF88 = GetEnvDefault("MTLREPLAYER_DISPLAY_FETCH_TIMEOUT_MS", 2000);
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFF7FFFFFFFFLL | ((GetEnvDefault("MTLREPLAYER_DISABLE_REPLAY_SERVICE", 0) & 1) << 35);
  if (GTCoreLogInit_once != -1)
  {
    dispatch_once(&GTCoreLogInit_once, &__block_literal_global_10939);
  }

  v4 = qword_27F09CF90;
  s_logUsingOsLog = (qword_27F09CF90 & 0x20000000) == 0;
  if ((qword_27F09CF90 & 0x2000000) == 0)
  {
    if ((qword_27F09CF90 & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    setenv("METAL_CAPTURE_ENABLED", "1", 1);
    if ((qword_27F09CF90 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  setenv("MTL_DEBUG_LAYER", "1", 1);
  v4 = qword_27F09CF90;
  if ((qword_27F09CF90 & 0x4000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v4 & 0x8000000) != 0)
  {
LABEL_11:
    setenv("MTL_HUD_ENABLED", "1", 1);
  }

LABEL_12:
  setenv("AGX_SUPPORT_D24_S8", "1", 1);
  v5 = [[GTMTLReplayActivityLog alloc] init:0];
  v6 = g_activityLog;
  g_activityLog = v5;

  v21.rlim_cur = 0;
  mach_timebase_info(&v21);
  LODWORD(v8) = HIDWORD(v21.rlim_cur);
  LODWORD(v7) = v21.rlim_cur;
  *&time_scale = v7 / v8 * 0.000000001;
  v9 = qword_27F09CF90;
  v10 = NSClassFromString(&cfstr_Mtlcommandbuff.isa);
  if (v10 || (v10 = NSClassFromString(&cfstr_Mtlcommandbuff_0.isa)) != 0)
  {
    v11 = objc_alloc_init(v10);
    v12 = g_commandBufferDescriptor;
    g_commandBufferDescriptor = v11;

    [g_commandBufferDescriptor setRetainedReferences:1];
    [g_commandBufferDescriptor setErrorOptions:(v9 >> 3) & 1];
    v13 = g_commandBufferDescriptor;
    if (objc_opt_respondsToSelector())
    {
      [v13 setCaptureProgramAddressTable:(v9 >> 9) & 1];
    }
  }

  v14 = 0;
  newHandler = HandleCrashSignal;
  *algn_27F09CBE8 = 0;
  do
  {
    oldHandlers[v14] = 0;
    v14 += 2;
  }

  while (v14 != 64);
  for (i = 0; i != 5; ++i)
  {
    sigaction(GTMTLReplay_registerSignalHandlers_signals[i], &newHandler, &oldHandlers[2 * GTMTLReplay_registerSignalHandlers_signals[i]]);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = funcMap;
  funcMap = v16;

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = failureMap;
  failureMap = v18;

  v21.rlim_cur = 0;
  v21.rlim_max = 0;
  getrlimit(8, &v21);
  v21.rlim_cur = 10000;
  setrlimit(8, &v21);
  return MTLSetReportFailureBlock();
}

void *ShouldInstrumentFragmentStage(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  v9 = *(a3 + 8);
  if (GTFenum_isDrawCall(v9))
  {
    if (*(a1 + 2840) == 70)
    {
      result = GTMTLSMContext_getObject(**(v8 + 40), a1[1099], *a3);
      if (!result)
      {
        return result;
      }

      v11 = GTMTLSMRenderPipelineState_fragmentFunction(*(v8 + 40), result) == 0;
      return !v11;
    }

    return 0;
  }

  if (v9 >> 1 != 2147475667)
  {
    return 0;
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  GetExecuteCommandsInBufferArgs(&v23, a3, *(v8 + 16));
  Object = GTMTLSMContext_getObject(**(v8 + 40), v23, *a3);
  GTMTLCreateIndirectCommandEncoder(v22, Object[14]);
  if (*(&v23 + 1) > a4 || v24 + *(&v23 + 1) < a4)
  {
    return 0;
  }

  v13 = *(&v24 + 1) + v22[26] * a4;
  v14 = *(v13 + v22[1]);
  v15 = v14 > 8;
  v16 = (1 << v14) & 0x116;
  if (v15 || v16 == 0)
  {
    return 0;
  }

  if (*(v22[0] + 26))
  {
    v18 = *(a1 + 2840);
    if (v18 - 95) <= 0xA && ((0x409u >> (v18 - 95)))
    {
      v19 = 14;
    }

    else
    {
      if (!v18)
      {
        return 0;
      }

      v19 = 1075;
    }

    v20 = a1[v19 + 24];
  }

  else
  {
    v20 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(*(a2 + 40), *(v13 + v22[2]));
  }

  if (!v20)
  {
    return 0;
  }

  result = GTMTLSMContext_getObject(**(v8 + 40), v20, *a3);
  if (!result)
  {
    return result;
  }

  v21 = result[6];
  if (!v21)
  {
    return 0;
  }

  v11 = *(v21 + 1176) == 0;
  return !v11;
}

uint64_t std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[3] ^ (i[2] << 32);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_22;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[3] ^ (i[2] << 32);
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_22;
      }

LABEL_21:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    if (v10[2] != i[2] || v10[3] != i[3])
    {
      goto LABEL_21;
    }
  }

  return a1;
}

uint64_t std::unordered_map<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,std::equal_to<FunctionHandleKey><std::allocator<unsigned long const>>>::unordered_map(uint64_t result, unint64_t *a2, uint64_t a3)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[6 * a3]; i += 6)
    {
      v4 = *i;
      v5 = *(result + 8);
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*result + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (v9[2] != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_24D92D1BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>,void *>,std::__hash_node_destructor<std::equal_to<FunctionHandleKey><void *>>>::~unique_ptr[abi:nn200100](va);
  std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>,std::__unordered_map_hasher<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,std::hash,true>,std::equal_to<FunctionHandleKey><std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void GTMTLReplayAccessTracking::~GTMTLReplayAccessTracking(id *this)
{
  std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table((this + 50));
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table((this + 45));
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table((this + 40));
  std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>,std::__unordered_map_hasher<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,std::hash,true>,std::equal_to<FunctionHandleKey><std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>>::~__hash_table((this + 35));
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table((this + 30));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 25));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 20));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 15));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 10));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 5));

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this);
}

void ReplaceFunctionTablesWithRegular(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, apr_pool_t *p)
{
  v53 = a5;
  v9 = *a2;
  v10 = apr_array_make(p, 5, 8);
  pa = p;
  v11 = apr_array_make(p, 5, 8);
  GTMTLSMContext_getObjects(*(*(v9 + 40) + 64), a4, v10);
  v58 = a4;
  GTMTLSMContext_getObjects(*(*(v9 + 40) + 72), a4, v11);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  v52 = (a1 + 40);
  *(a1 + 56) = 0u;
  v54 = a1;
  *(a1 + 72) = 1065353216;
  nelts = v10->nelts;
  if (nelts >= 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = *&v10->elts[8 * v13];
      if (v14)
      {
        v15 = *(v14 + 16);
        v16 = *(v9 + 72);
        v17 = v16 <= v15 && *(v9 + 80) + v16 > v15;
        if (!v17 && ((a3 & 8) != 0 || !*(v14 + 128)))
        {
          if (!*(v14 + 136))
          {
            break;
          }

          v18 = (((*(v14 + 176) - 2) >> 1) | ((*(v14 + 176) - 2) << 7)) > 7u ? 1 : dword_24DA91068[(((*(v14 + 176) - 2) >> 1) | ((*(v14 + 176) - 2) << 7))];
          if ((v18 & a3) != 0)
          {
            break;
          }
        }
      }

LABEL_30:
      if (++v13 >= nelts)
      {
        goto LABEL_31;
      }
    }

    v19 = *(a2 + 8);
    *&v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    GetVisibleFunctionTableState(&v62, v9, v14, v58, pa);
    v20 = objc_alloc_init(MEMORY[0x277CD70A8]);
    [v20 setFunctionCount:{**(v14 + 112), v52, v53}];
    [v20 setResourceIndex:*(*(v14 + 112) + 8)];
    [v20 setForceResourceIndex:1];
    v21 = *(v14 + 136);
    if (v21)
    {
      v22 = *(v14 + 176);
      Object = GTMTLSMContext_getObject(**(v9 + 40), v21, v58);
      if (Object)
      {
        v24 = [v19 renderPipelineStateForKey:Object[1]];
        v25 = v24;
        if (v24)
        {
          v26 = [v24 newVisibleFunctionTableWithDescriptor:v20 stage:v22];
          v27 = v26;
          if (v26)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
      v28 = *(v14 + 128);
      if (v28)
      {
        v29 = GTMTLSMContext_getObject(**(v9 + 40), v28, v58);
        if (v29)
        {
          v30 = [v19 computePipelineStateForKey:v29[1]];
          v25 = v30;
          if (v30)
          {
            v26 = [v30 newVisibleFunctionTableWithDescriptor:v20];
            v27 = v26;
            if (v26)
            {
LABEL_24:
              SetupRegularVisibleFunctionTable(v26, *(v9 + 40), v19, &v62, v58);
            }

LABEL_25:

LABEL_27:
            if (v27)
            {
              v61[0] = *(v14 + 8);
              *&v62 = v61;
              v31 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(v54, v61[0]);
              objc_storeStrong(v31 + 3, v27);
              [*(a2 + 8) setVisibleFunctionTable:v27 forKey:*(v14 + 8)];
            }

            nelts = v10->nelts;
            goto LABEL_30;
          }
        }
      }
    }

    v27 = 0;
    goto LABEL_27;
  }

LABEL_31:
  v32 = v11->nelts;
  if (v32 >= 1)
  {
    for (i = 0; i < v32; ++i)
    {
      v34 = *&v11->elts[8 * i];
      if (!v34)
      {
        continue;
      }

      v35 = *(v34 + 16);
      v36 = *(v9 + 72);
      v37 = v36 <= v35 && *(v9 + 80) + v36 > v35;
      if (v37 || (a3 & 8) == 0 && *(v34 + 128))
      {
        continue;
      }

      if (*(v34 + 136))
      {
        v38 = (((*(v34 + 168) - 2) >> 1) | ((*(v34 + 168) - 2) << 7)) > 7u ? 1 : dword_24DA91068[(((*(v34 + 168) - 2) >> 1) | ((*(v34 + 168) - 2) << 7))];
        if ((v38 & a3) == 0)
        {
          continue;
        }
      }

      std::unordered_map<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>::unordered_map(v60, v54);
      v56 = *(a2 + 8);
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      GetIntersectionFunctionTableState(&v62, v9, v34, v58, v53, pa);
      v39 = objc_alloc_init(MEMORY[0x277CD6EB0]);
      [v39 setFunctionCount:*(*(v34 + 112) + 8)];
      [v39 setResourceIndex:**(v34 + 112)];
      [v39 setForceResourceIndex:1];
      v40 = *(v34 + 136);
      if (v40)
      {
        v41 = *(v34 + 168);
        v42 = GTMTLSMContext_getObject(**(v9 + 40), v40, v58);
        if (!v42)
        {
          goto LABEL_57;
        }

        v43 = [v56 renderPipelineStateForKey:v42[1]];
        v44 = v43;
        if (!v43)
        {
          goto LABEL_57;
        }

        v45 = [v43 newIntersectionFunctionTableWithDescriptor:v39 stage:v41];
        if (v45)
        {
          v46 = *(v9 + 40);
          std::unordered_map<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>::unordered_map(v61, v60);
          SetupRegularIntersectionFunctionTable(v45, v56, v46, v61, &v62, *(v34 + 136), v58);
LABEL_55:
          std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v61);
        }
      }

      else
      {
        v47 = *(v34 + 128);
        if (!v47 || (v48 = GTMTLSMContext_getObject(**(v9 + 40), v47, v58)) == 0 || ([v56 computePipelineStateForKey:v48[1]], v49 = objc_claimAutoreleasedReturnValue(), (v44 = v49) == 0))
        {
LABEL_57:
          v45 = 0;
          goto LABEL_58;
        }

        v45 = [v49 newIntersectionFunctionTableWithDescriptor:v39];
        if (v45)
        {
          v50 = *(v9 + 40);
          std::unordered_map<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>::unordered_map(v61, v60);
          SetupRegularIntersectionFunctionTable(v45, v56, v50, v61, &v62, *(v34 + 128), v58);
          goto LABEL_55;
        }
      }

LABEL_58:
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v60);
      if (v45)
      {
        v61[0] = *(v34 + 8);
        *&v62 = v61;
        v51 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(v52, v61[0]);
        objc_storeStrong(v51 + 3, v45);
        [*(a2 + 8) setIntersectionFunctionTable:v45 forKey:*(v34 + 8)];
      }

      v32 = v11->nelts;
    }
  }
}

void sub_24D92D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(va1);

  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(a2);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(a4);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>,std::__unordered_map_hasher<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,std::hash,true>,std::equal_to<FunctionHandleKey><std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *GetVisibleFunctionTableState(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, apr_pool_t *p)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 83;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  v9 = **(a3 + 112);
  *(a1 + 192) = v9;
  v10 = 8 * v9;
  v11 = apr_palloc(p, 8 * v9);
  *(a1 + 184) = v11;
  bzero(v11, v10);
  v12 = *(a2 + 8);
  v24 = *(a3 + 8);
  result = find_entry(v12, &v24, 8uLL, 0);
  if (*result)
  {
    v14 = *(*result + 32);
    if (v14)
    {
      v15 = *(v14 + 32);
      if (v15)
      {
        v16 = 0;
        while (1)
        {
          v17 = atomic_load((v15 + 4));
          v18 = v16 + (v17 >> 6) - 1;
          if (v18 > 0)
          {
            break;
          }

          v15 = *(v15 + 40);
          v16 = v18;
          if (!v15)
          {
            v16 = v18;
            goto LABEL_10;
          }
        }

        v18 = 0;
LABEL_10:
        v19 = v16 | (v18 << 32);
      }

      else
      {
        v19 = 0;
      }

      while (v15)
      {
        v20 = v15 + 64 + ((HIDWORD(v19) - v19) << 6);
        if ((*(v20 + 15) & 8) == 0 || *v20 >= a4)
        {
          break;
        }

        result = GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(a1, *(a2 + 16), v20);
        v21 = atomic_load((v15 + 4));
        v22 = v19 + (v21 >> 6);
        v23 = (HIDWORD(v19) + 1);
        v19 = (v23 << 32) | v19;
        if (v23 == v22 - 1)
        {
          v19 = (v23 << 32) | v23;
          v15 = *(v15 + 40);
        }
      }
    }
  }

  return result;
}

void SetupRegularVisibleFunctionTable(void *a1, uint64_t *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v14 = a1;
  v9 = a3;
  if (*(a4 + 192))
  {
    v10 = 0;
    do
    {
      v11 = *(*(a4 + 184) + 8 * v10);
      if (v11)
      {
        Object = GTMTLSMContext_getObject(*a2, v11, a5);
        if (Object)
        {
          v13 = [v9 functionHandleForKey:Object[1]];
          [v14 setFunction:v13 atIndex:v10];
        }
      }

      else
      {
        [v14 setFunction:0 atIndex:v10];
      }

      ++v10;
    }

    while (*(a4 + 192) > v10);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_24D92DF5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (v10[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void *GetIntersectionFunctionTableState(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, apr_pool_t *a6)
{
  bzero(a1, 0x3A8uLL);
  *a1 = 60;
  *(a1 + 3) = -1;
  *(a1 + 53) = 2;
  *(a1 + 10) = -1;
  v12 = *(*(a3 + 112) + 8);
  *(a1 + 23) = v12;
  v13 = 16 * v12;
  v14 = apr_palloc(a6, 16 * v12);
  *(a1 + 22) = v14;
  bzero(v14, v13);
  v15 = *(a2 + 8);
  v27 = *(a3 + 8);
  result = find_entry(v15, &v27, 8uLL, 0);
  if (*result)
  {
    v17 = *(*result + 32);
    if (v17)
    {
      v18 = *(v17 + 32);
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
            goto LABEL_10;
          }
        }

        v21 = 0;
LABEL_10:
        v22 = v19 | (v21 << 32);
      }

      else
      {
        v22 = 0;
      }

      while (v18)
      {
        v23 = v18 + 64 + ((HIDWORD(v22) - v22) << 6);
        if ((*(v23 + 15) & 8) == 0 || *v23 >= a4)
        {
          break;
        }

        result = GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithMap(a1, *(a2 + 16), v23, a5);
        v24 = atomic_load((v18 + 4));
        v25 = v22 + (v24 >> 6);
        v26 = (HIDWORD(v22) + 1);
        v22 = (v26 << 32) | v22;
        if (v26 == v25 - 1)
        {
          v22 = (v26 << 32) | v26;
          v18 = *(v18 + 40);
        }
      }
    }
  }

  return result;
}

void SetupRegularIntersectionFunctionTable(void *a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, unint64_t a7)
{
  v26 = a1;
  v13 = a2;
  if (a5[23])
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = a5[22];
      v17 = *(v16 + v14);
      switch(v17)
      {
        case 3:
          [v26 setOpaqueCurveIntersectionFunctionWithSignature:*(v16 + v14 + 8) atIndex:v15];
          break;
        case 2:
          [v26 setOpaqueTriangleIntersectionFunctionWithSignature:*(v16 + v14 + 8) atIndex:v15];
          break;
        case 1:
          v18 = *(v16 + v14 + 8);
          if (v18)
          {
            Object = GTMTLSMContext_getObject(*a3, v18, a7);
            if (Object && (Object[9] == a6 || Object[8] == a6))
            {
              v20 = [v13 functionHandleForKey:Object[1]];
              [v26 setFunction:v20 atIndex:v15];
            }
          }

          else
          {
            [v26 setFunction:0 atIndex:v15];
          }

          break;
      }

      ++v15;
      v14 += 16;
    }

    while (a5[23] > v15);
  }

  v21 = 0;
  v22 = a5 + 26;
  do
  {
    v23 = *(v22 - 4);
    if (v23 == 2)
    {
      v25 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a4, *(v22 - 1));
      if (!v25)
      {
        goto LABEL_22;
      }

      v24 = v25[3];
      [v26 setVisibleFunctionTable:v24 atBufferIndex:v21];
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_22;
      }

      v24 = [v13 bufferForKey:*(v22 - 1)];
      [v26 setBuffer:v24 offset:*v22 atIndex:v21];
    }

LABEL_22:
    ++v21;
    v22 += 3;
  }

  while (v21 != 31);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_24D92E9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void FlushCommandQueue(id *a1)
{
  [a1[1] commitCommandBuffers];
  v2 = [a1[1] defaultCommandQueue];
  v3 = [v2 commandBuffer];

  [v3 commit];
  [v3 waitUntilCompleted];
  [v3 status];
}

id ObtainTracingRenderPipelineState(uint64_t *a1, void *a2, void *a3, int8x8_t *a4, unint64_t a5, apr_pool_t *a6)
{
  v11 = a2;
  v12 = [v11 defaultDevice];
  if (a3[14])
  {
    goto LABEL_2;
  }

  v121 = a3[1];
  v114 = &v121;
  v13 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&a4[30], v121)[3];
  if (!v13)
  {
    v14 = a4[61];
    v15 = (*&v14 == 2) << 31;
    v16 = *&v14 == 1;
    v17 = 0x40000000;
    if (!v16)
    {
      v17 = v15;
    }

    v96 = v17;
    v18 = GTMTLSMRenderPipelineState_renderPipelineDescriptorType(a1, a3);
    LODWORD(v114) = v18;
    if (v18 > 3)
    {
      switch(v18)
      {
        case 4:
          v19 = a3[11];
          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = 968;
          break;
        case 5:
          v21 = a3[11];
          if (!v21)
          {
            goto LABEL_41;
          }

          v22 = v21[1];
          v115[0] = *v21;
          v115[1] = v22;
          v23 = v21[2];
          v24 = v21[3];
          v25 = v21[5];
          v115[4] = v21[4];
          v115[5] = v25;
          v115[2] = v23;
          v115[3] = v24;
          goto LABEL_24;
        case 6:
          v19 = a3[11];
          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = 344;
          break;
        default:
          goto LABEL_25;
      }
    }

    else
    {
      if (v18 == 1)
      {
        GTMTLSMRenderPipelineState_renderPipelineDescriptor(a1, a3, v115, a6);
LABEL_24:
        v18 = v114;
LABEL_25:
        switch(v18)
        {
          case 1:
            Function = GTMTLSMContext_lastFunction(*a1, v120, a5);
            if (!Function)
            {
              goto LABEL_2;
            }

            v43 = Function;
            if (*(Function + 132))
            {
              goto LABEL_2;
            }

            v44 = MakeMTLRenderPipelineDescriptor;
            v45 = [v11 renderPipelineDescriptorMap];
            v95 = v44(v115, v45);

            v46 = a4[62].i32[0];
            if (v46)
            {
              v92 = [v11 libraryForKey:*(v43 + 40)];
              v69 = [v11 functionMap];
              v113 = 0;
              v70 = ObtainTracingFunction(v12, v92, a4, v43, 1, v69, &v113);
              v94 = v113;

              if (!v70)
              {
                goto LABEL_106;
              }

              [v95 setVertexFunction:v70];
              v71 = ObtainTracingLinkedFunctions(a1, v11, a4, v118, 1, a5);
              [v95 setVertexLinkedFunctions:v71];

              v46 = a4[62].i32[0];
            }

            else
            {
              v94 = 0;
            }

            if ((v46 & 2) != 0)
            {
              if (!v119)
              {
                goto LABEL_107;
              }

              v75 = GTMTLSMContext_lastFunction(*a1, v119, a5);
              if (!v75)
              {
                goto LABEL_107;
              }

              v76 = v75;
              v92 = [v11 libraryForKey:*(v75 + 40)];
              [v11 functionMap];
              v90 = v112 = v94;
              v77 = ObtainTracingFunction(v12, v92, a4, v76, 2, v90, &v112);
              v78 = v112;

              if (!v77)
              {
                v94 = v78;
                goto LABEL_106;
              }

              [v95 setFragmentFunction:v77];
              v79 = ObtainTracingLinkedFunctions(a1, v11, a4, v117, 2, a5);
              [v95 setFragmentLinkedFunctions:v79];

              v94 = v78;
            }

            if (SupportsGlobalRelocation(v12, a4))
            {
              v111 = v94;
              v13 = [v12 newRenderPipelineStateWithDescriptor:v95 options:v96 reflection:0 error:&v111];
              v30 = v111;
              goto LABEL_77;
            }

            if (objc_opt_respondsToSelector())
            {
              [v95 setGpuCompilerSPIOptions:&unk_2860D6178];
            }

            v109 = v94;
            v110 = 0;
            v13 = [v12 newRenderPipelineStateWithDescriptor:v95 options:v96 | 1 reflection:&v110 error:&v109];
            v60 = v110;
            v40 = v109;

            v80 = a4[62].i32[0];
            if (v80)
            {
              v81 = [v60 vertexBindings];
              v82 = TraceBufferBindingIndex(v81, 1u);

              v108 = a3[1];
              v122 = &v108;
              *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a4, v108) + 6) = v82;
              v80 = a4[62].i32[0];
            }

            if ((v80 & 2) != 0)
            {
              v83 = [v60 fragmentBindings];
              v67 = TraceBufferBindingIndex(v83, 2u);

              v108 = a3[1];
              v122 = &v108;
              v68 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&a4[5], v108);
              goto LABEL_94;
            }

LABEL_95:

            if (v13)
            {
              v122 = &v121;
              v84 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&a4[30], v121);
              objc_storeStrong(v84 + 3, v13);
              v85 = a3[1];
              if (v114 != 2)
              {
                if (v114 != 1)
                {
                  goto LABEL_43;
                }

                v86 = a4[62].i32[0];
                if (v86)
                {
                  CreateRenderFunctionHandles(a4, a3[1], v118, 1uLL);
                  v86 = a4[62].i32[0];
                }

                if ((v86 & 2) == 0)
                {
                  goto LABEL_43;
                }

                v87 = 2;
                v88 = v117;
                goto LABEL_104;
              }

              if ((a4[62].i8[0] & 4) != 0)
              {
                v87 = 4;
                v88 = v115;
LABEL_104:
                CreateRenderFunctionHandles(a4, v85, v88, v87);
              }

LABEL_43:

              goto LABEL_44;
            }

LABEL_42:
            v13 = 0;
            GTMTLReplay_handleNSError(v40);
            goto LABEL_43;
          case 2:
            if (a4[62].i32[0] == 4)
            {
              v31 = GTMTLSMContext_lastFunction(*a1, v116, a5);
              if (!v31)
              {
LABEL_2:
                v13 = 0;
                goto LABEL_44;
              }

              v32 = v31;
              v95 = [v11 renderPipelineStateForKey:a3[1]];
              v94 = [v11 libraryForKey:*(v32 + 40)];
              v33 = [v11 functionMap];
              v107 = 0;
              v34 = ObtainTracingFunction(v12, v94, a4, v32, 4, v33, &v107);
              v35 = v107;

              if (v34)
              {
                v91 = v34;
                v36 = [v11 renderPipelineDescriptorMap];
                v37 = MakeMTLTileRenderPipelineDescriptor(v115, v36);

                v38 = v35;
                [v37 setTileFunction:v91];
                v39 = ObtainTracingLinkedFunctions(a1, v11, a4, v115, 4, a5);
                [v37 setLinkedFunctions:v39];

                if (v95)
                {
                  [v37 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(v95, "maxTotalThreadsPerThreadgroup")}];
                }

                if (SupportsGlobalRelocation(v12, a4))
                {
                  v106 = v35;
                  v13 = [v12 newRenderPipelineStateWithTileDescriptor:v37 options:v96 reflection:0 error:&v106];
                  v40 = v106;
                }

                else
                {
                  if (objc_opt_respondsToSelector())
                  {
                    [v37 setGpuCompilerSPIOptions:&unk_2860D61A0];
                  }

                  v104 = v35;
                  v105 = 0;
                  v13 = [v12 newRenderPipelineStateWithTileDescriptor:v37 options:v96 | 1 reflection:&v105 error:&v104];
                  v72 = v105;
                  v40 = v104;

                  v97 = v72;
                  v73 = [v72 tileBindings];
                  v74 = TraceBufferBindingIndex(v73, 4u);

                  v108 = a3[1];
                  v122 = &v108;
                  *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&a4[10], v108) + 6) = v74;
                  v38 = v97;
                }

                goto LABEL_83;
              }

              v93 = v94;
              v94 = v35;

              goto LABEL_107;
            }

            break;
          case 3:
LABEL_28:
            v26 = MakeMTLMeshRenderPipelineDescriptor;
            v27 = [v11 renderPipelineDescriptorMap];
            v95 = v26(v115, v27);

            v28 = a4[62].i32[0];
            if ((v28 & 0x10) == 0)
            {
              v94 = 0;
              if ((v28 & 0x20) == 0)
              {
                goto LABEL_30;
              }

              goto LABEL_55;
            }

            v47 = *(a3[9] + 368);
            if (v47)
            {
              v48 = GTMTLSMContext_lastFunction(*a1, v47, a5);
              v29 = v48;
              if (v48)
              {
                v92 = [v11 libraryForKey:*(v48 + 40)];
                v49 = [v11 functionMap];
                v103 = 0;
                v50 = ObtainTracingFunction(v12, v92, a4, v29, 16, v49, &v103);
                v94 = v103;

                if (!v50)
                {
                  goto LABEL_106;
                }

                [v95 setObjectFunction:v50];

                v28 = a4[62].i32[0];
                if ((v28 & 0x20) == 0)
                {
LABEL_30:
                  v29 = v94;
                  if ((v28 & 2) == 0)
                  {
LABEL_31:
                    v94 = v29;
                    goto LABEL_32;
                  }

                  goto LABEL_59;
                }

LABEL_55:
                v51 = *(a3[9] + 360);
                if (!v51)
                {
                  goto LABEL_107;
                }

                v52 = GTMTLSMContext_lastFunction(*a1, v51, a5);
                if (!v52)
                {
                  goto LABEL_107;
                }

                v53 = v52;
                v92 = [v11 libraryForKey:*(v52 + 40)];
                [v11 functionMap];
                v89 = v102 = v94;
                v54 = ObtainTracingFunction(v12, v92, a4, v53, 32, v89, &v102);
                v29 = v102;

                if (v54)
                {
                  [v95 setMeshFunction:v54];

                  if ((a4[62].i32[0] & 2) == 0)
                  {
                    goto LABEL_31;
                  }

LABEL_59:
                  v55 = *(a3[9] + 344);
                  if (!v55)
                  {
                    goto LABEL_108;
                  }

                  v56 = GTMTLSMContext_lastFunction(*a1, v55, a5);
                  if (!v56)
                  {
                    goto LABEL_108;
                  }

                  v57 = v56;
                  v92 = [v11 libraryForKey:*(v56 + 40)];
                  v58 = [v11 functionMap];
                  v101 = v29;
                  v59 = ObtainTracingFunction(v12, v92, a4, v57, 2, v58, &v101);
                  v94 = v101;

                  if (v59)
                  {
                    [v95 setFragmentFunction:v59];

LABEL_32:
                    if (SupportsGlobalRelocation(v12, a4))
                    {
                      v100 = v94;
                      v13 = [v12 newRenderPipelineStateWithMeshDescriptor:v95 options:v96 reflection:0 error:&v100];
                      v30 = v100;
LABEL_77:
                      v40 = v30;
LABEL_83:
                      v60 = v94;
                      goto LABEL_95;
                    }

                    if (objc_opt_respondsToSelector())
                    {
                      [v95 setGpuCompilerSPIOptions:&unk_2860D61C8];
                    }

                    v98 = v94;
                    v99 = 0;
                    v13 = [v12 newRenderPipelineStateWithMeshDescriptor:v95 options:v96 | 1 reflection:&v99 error:&v98];
                    v60 = v99;
                    v40 = v98;

                    v61 = a4[62].i32[0];
                    if ((v61 & 0x10) != 0)
                    {
                      v62 = [v60 objectBindings];
                      v63 = TraceBufferBindingIndex(v62, 0x10u);

                      v108 = a3[1];
                      v122 = &v108;
                      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&a4[15], v108) + 6) = v63;
                      v61 = a4[62].i32[0];
                    }

                    if ((v61 & 0x20) != 0)
                    {
                      v64 = [v60 meshBindings];
                      v65 = TraceBufferBindingIndex(v64, 0x20u);

                      v108 = a3[1];
                      v122 = &v108;
                      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&a4[20], v108) + 6) = v65;
                      v61 = a4[62].i32[0];
                    }

                    if ((v61 & 2) != 0)
                    {
                      v66 = [v60 fragmentBindings];
                      v67 = TraceBufferBindingIndex(v66, 2u);

                      v108 = a3[1];
                      v122 = &v108;
                      v68 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&a4[5], v108);
LABEL_94:
                      *(v68 + 6) = v67;
                      goto LABEL_95;
                    }

                    goto LABEL_95;
                  }

                  goto LABEL_106;
                }

                v94 = v29;
LABEL_106:

LABEL_107:
                v29 = v94;
              }
            }

            else
            {
              v29 = 0;
            }

LABEL_108:

            goto LABEL_2;
        }

LABEL_41:
        v40 = 0;
        goto LABEL_42;
      }

      if (v18 == 2)
      {
        GTMTLSMRenderPipelineState_tilePipelineDescriptor(a1, a3, v115, a6);
        goto LABEL_24;
      }

      if (v18 != 3)
      {
        goto LABEL_25;
      }

      v19 = a3[9];
      if (!v19)
      {
        goto LABEL_28;
      }

      v20 = 512;
    }

    memcpy(v115, v19, v20);
    goto LABEL_24;
  }

LABEL_44:

  return v13;
}

void ReplaceSamplerStatesWithIndirected(uint64_t a1, uint64_t a2, unint64_t a3, apr_pool_t *p)
{
  v6 = *a2;
  v7 = apr_array_make(p, 5, 8);
  GTMTLSMContext_getObjects(*(v6[5] + 32), a3, v7);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  nelts = v7->nelts;
  if (nelts >= 1)
  {
    v9 = 0;
    do
    {
      elts = v7->elts;
      v11 = *&elts[8 * v9];
      if (v11)
      {
        v12 = *(v11 + 16);
        v13 = v6[9];
        if (v13 > v12 || v6[10] + v13 <= v12)
        {
          v15 = *(v11 + 48);
          if (v15)
          {
            if (*(v15 + 66))
            {
              if ((v9 & 0x80000000) == 0 && nelts > v9)
              {
                memmove(&elts[v7->elt_size * v9], &elts[v7->elt_size * (nelts - 1)], v7->elt_size);
                v16 = v7->nelts;
                if (!v16)
                {
                  break;
                }

                nelts = v16 - 1;
                v7->nelts = nelts;
              }
            }

            else
            {
              ++v9;
            }
          }
        }
      }
    }

    while (v9 < nelts);
  }

  v34 = [*(a2 + 8) defaultDevice];
  if ([v34 supportsFamily:1009])
  {
    v17 = 500000;
  }

  else if ([v34 supportsFamily:1008] & 1) != 0 || (objc_msgSend(v34, "supportsFamily:", 1007) & 1) != 0 || (objc_msgSend(v34, "supportsFamily:", 2002))
  {
    v17 = 1024;
  }

  else if ([v34 supportsFamily:1006])
  {
    v17 = 128;
  }

  else
  {
    v17 = 0;
  }

  v18 = v7->nelts;
  if (v17 < v18 || v18 < 1)
  {
    goto LABEL_44;
  }

  v19 = 0;
  do
  {
    v20 = *&v7->elts[8 * v19];
    v21 = *(v20 + 48);
    v36 = *(v21 + 64);
    v22 = *(v21 + 48);
    v35[2] = *(v21 + 32);
    v35[3] = v22;
    v23 = *(v21 + 16);
    v35[0] = *v21;
    v35[1] = v23;
    BYTE2(v36) = 1;
    v24 = MakeMTLSamplerDescriptorWithoutResourceIndex(v35);
    v25 = [v34 newSamplerStateWithDescriptor:v24];
    if (!v25)
    {
      goto LABEL_43;
    }

    v26 = *(v20 + 8);
    v27 = *(a1 + 8);
    if (!*&v27)
    {
      goto LABEL_42;
    }

    v28 = vcnt_s8(v27);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = *(v20 + 8);
      if (v26 >= *&v27)
      {
        v29 = v26 % *&v27;
      }
    }

    else
    {
      v29 = (*&v27 - 1) & v26;
    }

    v30 = *(*a1 + 8 * v29);
    if (!v30 || (v31 = *v30) == 0)
    {
LABEL_42:
      operator new();
    }

    while (1)
    {
      v32 = v31[1];
      if (v32 == v26)
      {
        break;
      }

      if (v28.u32[0] > 1uLL)
      {
        if (v32 >= *&v27)
        {
          v32 %= *&v27;
        }
      }

      else
      {
        v32 &= *&v27 - 1;
      }

      if (v32 != v29)
      {
        goto LABEL_42;
      }

LABEL_41:
      v31 = *v31;
      if (!v31)
      {
        goto LABEL_42;
      }
    }

    if (v31[2] != v26)
    {
      goto LABEL_41;
    }

    objc_storeStrong(v31 + 3, v25);
    [*(a2 + 8) setSamplerState:v25 forKey:*(v20 + 8)];
LABEL_43:

    ++v19;
  }

  while (v19 < v7->nelts);
LABEL_44:
}

void ReplaceFunctionTablesWithInstrumented(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, apr_pool_t *p)
{
  v11 = *a2;
  v12 = apr_array_make(p, 5, 8);
  pa = p;
  v13 = apr_array_make(p, 5, 8);
  GTMTLSMContext_getObjects(*(*(v11 + 40) + 64), a4, v12);
  v66 = a4;
  GTMTLSMContext_getObjects(*(*(v11 + 40) + 72), a4, v13);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  v59 = (a1 + 40);
  *(a1 + 56) = 0u;
  v63 = a1;
  *(a1 + 72) = 1065353216;
  if (v12->nelts >= 1)
  {
    v14 = 0;
    while (1)
    {
      v15 = *&v12->elts[8 * v14];
      if (v15)
      {
        v16 = *(v15 + 16);
        v17 = *(v11 + 72);
        if (v17 > v16 || *(v11 + 80) + v17 <= v16)
        {
          v19 = *(a3 + 496);
          if (!*(v15 + 128) || v19 == 8)
          {
            if (!*(v15 + 136) || ((((*(v15 + 176) - 2) >> 1) | ((*(v15 + 176) - 2) << 7)) > 7u ? (v21 = 1) : (v21 = dword_24DA91068[(((*(v15 + 176) - 2) >> 1) | ((*(v15 + 176) - 2) << 7))]), (v21 & v19) != 0))
            {
              if (GTMTLSMPipelineState_isVisibleFunctionTableCompatible(*(v11 + 40), a5, v15))
              {
                break;
              }
            }
          }
        }
      }

LABEL_35:
      if (++v14 >= v12->nelts)
      {
        goto LABEL_36;
      }
    }

    v61 = *(a2 + 8);
    *&v82 = 0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    GetVisibleFunctionTableState(&v70, v11, v15, a4, pa);
    v22 = objc_alloc_init(MEMORY[0x277CD70A8]);
    [v22 setFunctionCount:**(v15 + 112)];
    [v22 setResourceIndex:*(*(v15 + 112) + 8)];
    [v22 setForceResourceIndex:1];
    if (*(v15 + 136))
    {
      v23 = *(v15 + 176);
      v24 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a3 + 240), *(a3 + 248), *(a5 + 8));
      if (v24)
      {
        v25 = v24[3];
        if (v25)
        {
          v57 = v25;
          v26 = [v25 newVisibleFunctionTableWithDescriptor:v22 stage:v23];
          if (v26)
          {
            v27 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a3 + 280), *(a3 + 288), v23);
            if (!v27)
            {
LABEL_76:
              abort();
            }

            SetupInstrumentedFunctionTable(v26, *(v11 + 40), (v27 + 3), &v70, *(a5 + 8), a4);
          }

          goto LABEL_30;
        }
      }
    }

    else if (*(v15 + 128))
    {
      v28 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a3 + 320), *(a3 + 328), *(a5 + 8));
      if (v28)
      {
        v29 = v28[3];
        if (v29)
        {
          v57 = v29;
          v30 = [v29 newVisibleFunctionTableWithDescriptor:v22];
          v26 = v30;
          if (v30)
          {
            SetupInstrumentedFunctionTable(v30, *(v11 + 40), a3 + 400, &v70, *(a5 + 8), a4);
          }

LABEL_30:

LABEL_32:
          if (v26)
          {
            v69[0] = *(v15 + 8);
            *&v70 = v69;
            v31 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(v63, v69[0]);
            objc_storeStrong(v31 + 3, v26);
            [*(a2 + 8) setVisibleFunctionTable:v26 forKey:*(v15 + 8)];
          }

          goto LABEL_35;
        }
      }
    }

    v26 = 0;
    goto LABEL_32;
  }

LABEL_36:
  if (v13->nelts >= 1)
  {
    v32 = 0;
    v33 = 0x277CD6000uLL;
    while (1)
    {
      v34 = *&v13->elts[8 * v32];
      if (!v34)
      {
        goto LABEL_74;
      }

      v35 = *(v34 + 16);
      v36 = *(v11 + 72);
      if (v36 <= v35 && *(v11 + 80) + v36 > v35)
      {
        goto LABEL_74;
      }

      v38 = *(a3 + 496);
      if (*(v34 + 128) && v38 != 8)
      {
        goto LABEL_74;
      }

      if (*(v34 + 136))
      {
        v40 = (((*(v34 + 168) - 2) >> 1) | ((*(v34 + 168) - 2) << 7)) > 7u ? 1 : dword_24DA91068[(((*(v34 + 168) - 2) >> 1) | ((*(v34 + 168) - 2) << 7))];
        if ((v40 & v38) == 0)
        {
          goto LABEL_74;
        }
      }

      if (!GTMTLSMPipelineState_isVisibleFunctionTableCompatible(*(v11 + 40), a5, v34))
      {
        goto LABEL_74;
      }

      std::unordered_map<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>::unordered_map(v68, v63);
      v41 = *(a2 + 8);
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      GetIntersectionFunctionTableState(&v70, v11, v34, v66, a6, pa);
      v42 = objc_alloc_init(*(v33 + 3760));
      [v42 setFunctionCount:*(*(v34 + 112) + 8)];
      [v42 setResourceIndex:**(v34 + 112)];
      [v42 setForceResourceIndex:1];
      v43 = *(v34 + 136);
      if (v43)
      {
        break;
      }

      v51 = *(v34 + 128);
      if (v51)
      {
        Object = GTMTLSMContext_getObject(**(v11 + 40), v51, v66);
        if (Object)
        {
          v53 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a3 + 320), *(a3 + 328), Object[1]);
          if (v53)
          {
            v62 = v41;
            v58 = v53[3];
            v47 = [v58 newIntersectionFunctionTableWithDescriptor:v42];
            if (v47)
            {
              v54 = *(v11 + 40);
              std::unordered_map<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>::unordered_map(v69, v68);
              SetupInstrumentedIntersectionFunctionTable(v47, v62, v54, a3 + 400, v69, &v70, *(v34 + 128), v66);
              v41 = v62;
              goto LABEL_66;
            }

LABEL_68:
            v41 = v62;
LABEL_69:

            goto LABEL_70;
          }
        }
      }

      v47 = 0;
LABEL_71:

      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v68);
      if (v47)
      {
        v69[0] = *(v34 + 8);
        *&v70 = v69;
        v55 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto28MTLIntersectionFunctionTable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(v59, v69[0]);
        objc_storeStrong(v55 + 3, v47);
        [*(a2 + 8) setIntersectionFunctionTable:v47 forKey:*(v34 + 8)];
      }

LABEL_74:
      if (++v32 >= v13->nelts)
      {
        return;
      }
    }

    v44 = *(v34 + 168);
    v45 = GTMTLSMContext_getObject(**(v11 + 40), v43, v66);
    if (v45)
    {
      v46 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a3 + 240), *(a3 + 248), v45[1]);
      if (v46)
      {
        v62 = v41;
        v58 = v46[3];
        v47 = [v58 newIntersectionFunctionTableWithDescriptor:v42 stage:v44];
        if (!v47)
        {
          goto LABEL_68;
        }

        v56 = *(v11 + 40);
        v48 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a3 + 280), *(a3 + 288), v44);
        if (!v48)
        {
          goto LABEL_76;
        }

        v49 = v48;
        std::unordered_map<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>::unordered_map(v69, v68);
        v50 = (v49 + 3);
        v41 = v62;
        SetupInstrumentedIntersectionFunctionTable(v47, v62, v56, v50, v69, &v70, *(v34 + 136), v66);
LABEL_66:
        std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v69);
        goto LABEL_69;
      }
    }

    v47 = 0;
LABEL_70:
    v33 = 0x277CD6000;
    goto LABEL_71;
  }
}

void sub_24D9305E0(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(va1);

  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(a4);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(a7);
  _Unwind_Resume(a1);
}

void MakeTraceBufferResident(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 496);
  if (v3)
  {
    [v4 useResource:*(a1 + 440) usage:3 stages:1];
    v3 = *(a1 + 496);
  }

  if ((v3 & 2) != 0)
  {
    [v4 useResource:*(a1 + 448) usage:3 stages:2];
    v3 = *(a1 + 496);
  }

  if ((v3 & 4) != 0)
  {
    [v4 useResource:*(a1 + 456) usage:3 stages:4];
    v3 = *(a1 + 496);
  }

  if ((v3 & 0x10) != 0)
  {
    [v4 useResource:*(a1 + 464) usage:3 stages:8];
    v3 = *(a1 + 496);
  }

  if ((v3 & 0x20) != 0)
  {
    [v4 useResource:*(a1 + 472) usage:3 stages:16];
    v3 = *(a1 + 496);
  }

  if ((v3 & 8) != 0)
  {
    [v4 useResource:*(a1 + 480) usage:3];
  }
}

uint64_t SupportsGlobalRelocation(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (*(a2 + 502))
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 496);
  if ((v5 & 2) != 0)
  {
    if (*(a2 + 501) == 1 && ![v3 supportsFamily:1009])
    {
      goto LABEL_16;
    }
  }

  else if ((v5 & 5) == 0)
  {
    if ((v5 & 8) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [v4 supportsGlobalVariableRelocationCompute];
        goto LABEL_9;
      }

LABEL_16:
      v7 = 0;
      goto LABEL_17;
    }

    if ((v5 & 0x30) == 0 || ![v3 supportsFamily:1009])
    {
      goto LABEL_16;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = [v4 supportsGlobalVariableRelocationRender];
LABEL_9:
  v7 = v6;
LABEL_17:

  return v7;
}

uint64_t BindTraceBufferUsingBindings(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 496);
  if (v7)
  {
    v8 = v5;
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*a1, *(a1 + 8), *(a2 + 8));
    if (!v9)
    {
      goto LABEL_20;
    }

    [v8 setVertexBuffer:*(a1 + 440) offset:0 atIndex:*(v9 + 6)];

    v7 = *(a1 + 496);
  }

  if ((v7 & 0x10) != 0)
  {
    v10 = v6;
    v11 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a1 + 120), *(a1 + 128), *(a2 + 8));
    if (!v11)
    {
      goto LABEL_20;
    }

    [v10 setObjectBuffer:*(a1 + 464) offset:0 atIndex:*(v11 + 6)];

    v7 = *(a1 + 496);
  }

  if ((v7 & 0x20) != 0)
  {
    v12 = v6;
    v13 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a1 + 160), *(a1 + 168), *(a2 + 8));
    if (!v13)
    {
      goto LABEL_20;
    }

    [v12 setMeshBuffer:*(a1 + 472) offset:0 atIndex:*(v13 + 6)];

    v7 = *(a1 + 496);
  }

  if ((v7 & 2) != 0)
  {
    v14 = v6;
    v15 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a1 + 40), *(a1 + 48), *(a2 + 8));
    if (!v15)
    {
      goto LABEL_20;
    }

    [v14 setFragmentBuffer:*(a1 + 448) offset:0 atIndex:*(v15 + 6)];

    v7 = *(a1 + 496);
  }

  if ((v7 & 4) != 0)
  {
    v16 = v6;
    v17 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a1 + 80), *(a1 + 88), *(a2 + 8));
    if (!v17)
    {
      goto LABEL_20;
    }

    [v16 setTileBuffer:*(a1 + 456) offset:0 atIndex:*(v17 + 6)];

    v7 = *(a1 + 496);
  }

  if ((v7 & 8) != 0)
  {
    v19 = v6;
    v20 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(*(a1 + 200), *(a1 + 208), *(a2 + 8));
    if (v20)
    {
      [v19 setBuffer:*(a1 + 480) offset:0 atIndex:*(v20 + 6)];
      v18 = 1;
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v18 = 1;
LABEL_22:

  return v18;
}

uint64_t UpdateSamplerStates(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unint64_t a7, void *a8)
{
  v15 = a2;
  v16 = v15;
  LOBYTE(v17) = 0;
  if (a1 > 0x20)
  {
    goto LABEL_46;
  }

  if (((1 << a1) & 0x100010016) == 0)
  {
    if (a1 != 8)
    {
      goto LABEL_46;
    }

    if ([v15 conformsToProtocol:&unk_2860F6690])
    {
      goto LABEL_4;
    }

LABEL_45:
    LOBYTE(v17) = 0;
    goto LABEL_46;
  }

  if (([v15 conformsToProtocol:&unk_2860F7040] & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_4:
  v35 = a4;
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = *(a3 + 8 * v18);
    if (!v20)
    {
      goto LABEL_11;
    }

    Object = GTMTLSMContext_getObject(*a6, v20, a7);
    if (!Object)
    {
      goto LABEL_26;
    }

    if (*Object != 75)
    {
LABEL_11:
      v17 = v19;
      goto LABEL_27;
    }

    v22 = a8[1];
    if (!*&v22)
    {
      goto LABEL_26;
    }

    v23 = Object[1];
    v24 = vcnt_s8(v22);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = Object[1];
      if (v23 >= *&v22)
      {
        v25 = v23 % *&v22;
      }
    }

    else
    {
      v25 = (*&v22 - 1) & v23;
    }

    v26 = *(*a8 + 8 * v25);
    if (!v26 || (v27 = *v26) == 0)
    {
LABEL_26:
      v17 = 0;
      goto LABEL_27;
    }

    while (1)
    {
      v28 = v27[1];
      if (v23 == v28)
      {
        break;
      }

      if (v24.u32[0] > 1uLL)
      {
        if (v28 >= *&v22)
        {
          v28 %= *&v22;
        }
      }

      else
      {
        v28 &= *&v22 - 1;
      }

      if (v28 != v25)
      {
        goto LABEL_26;
      }

LABEL_24:
      v17 = 0;
      v27 = *v27;
      if (!v27)
      {
        goto LABEL_27;
      }
    }

    if (v27[2] != v23)
    {
      goto LABEL_24;
    }

    v34 = a5;
    v29 = v27[3];
    v32 = v29;
    v17 = 0;
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          LODWORD(v30) = *(v35 + 4 * v18);
          LODWORD(v31) = *(v34 + 4 * v18);
          [v16 setSamplerState:v29 lodMinClamp:v18 lodMaxClamp:v30 atIndex:v31];
          v17 = v19;
          break;
        case 16:
          LODWORD(v30) = *(v35 + 4 * v18);
          LODWORD(v31) = *(v34 + 4 * v18);
          [v16 setObjectSamplerState:v29 lodMinClamp:v18 lodMaxClamp:v30 atIndex:v31];
          v17 = v19;
          break;
        case 32:
          LODWORD(v30) = *(v35 + 4 * v18);
          LODWORD(v31) = *(v34 + 4 * v18);
          [v16 setMeshSamplerState:v29 lodMinClamp:v18 lodMaxClamp:v30 atIndex:v31];
          v17 = v19;
          break;
      }
    }

    else
    {
      switch(a1)
      {
        case 1:
          LODWORD(v30) = *(v35 + 4 * v18);
          LODWORD(v31) = *(v34 + 4 * v18);
          [v16 setVertexSamplerState:v29 lodMinClamp:v18 lodMaxClamp:v30 atIndex:v31];
          v17 = v19;
          break;
        case 2:
          LODWORD(v30) = *(v35 + 4 * v18);
          LODWORD(v31) = *(v34 + 4 * v18);
          [v16 setFragmentSamplerState:v29 lodMinClamp:v18 lodMaxClamp:v30 atIndex:v31];
          v17 = v19;
          break;
        case 4:
          LODWORD(v30) = *(v35 + 4 * v18);
          LODWORD(v31) = *(v34 + 4 * v18);
          [v16 setTileSamplerState:v29 lodMinClamp:v18 lodMaxClamp:v30 atIndex:v31];
          v17 = v19;
          break;
      }
    }

    a5 = v34;
LABEL_27:
    ++v18;
    v19 = v17;
  }

  while (v18 != 16);
LABEL_46:

  return v17 & 1;
}

uint64_t UpdateFunctionTables(int a1, void *a2, uint64_t a3, void *a4, uint64_t *a5, unint64_t a6, void *a7)
{
  v13 = a2;
  v14 = v13;
  LOBYTE(v15) = 0;
  if (a1 > 0x20)
  {
    goto LABEL_54;
  }

  if (((1 << a1) & 0x100010016) == 0)
  {
    if (a1 != 8)
    {
      goto LABEL_54;
    }

    if ([v13 conformsToProtocol:&unk_2860F6690])
    {
      goto LABEL_4;
    }

LABEL_53:
    LOBYTE(v15) = 0;
    goto LABEL_54;
  }

  if (([v13 conformsToProtocol:&unk_2860F7040] & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_4:
  v16 = 0;
  v17 = 1;
  do
  {
    v18 = *(a3 + 8 * v16);
    if (!v18 || ((*a4 >> v16) & 1) != 0)
    {
      goto LABEL_7;
    }

    Object = GTMTLSMContext_getObject(*a5, v18, a6);
    if (!Object)
    {
      goto LABEL_38;
    }

    if (*Object != 60)
    {
      if (*Object != 83)
      {
        goto LABEL_7;
      }

      v20 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a7, Object[1]);
      if (v20)
      {
        v21 = v20[3];
        if (a1 > 3)
        {
          if (a1 == 4)
          {
            [v14 setTileVisibleFunctionTable:v21 atBufferIndex:v16];
          }

          else if (a1 == 8)
          {
            [v14 setVisibleFunctionTable:v21 atBufferIndex:v16];
          }
        }

        else if (a1 == 1)
        {
          [v14 setVertexVisibleFunctionTable:v21 atBufferIndex:v16];
        }

        else if (a1 == 2)
        {
          [v14 setFragmentVisibleFunctionTable:v21 atBufferIndex:v16];
        }

        goto LABEL_41;
      }

LABEL_38:
      v15 = 0;
      goto LABEL_8;
    }

    v22 = a7[6];
    if (!*&v22)
    {
      goto LABEL_38;
    }

    v23 = Object[1];
    v24 = vcnt_s8(v22);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = Object[1];
      if (v23 >= *&v22)
      {
        v25 = v23 % *&v22;
      }
    }

    else
    {
      v25 = (*&v22 - 1) & v23;
    }

    v26 = *(a7[5] + 8 * v25);
    if (!v26)
    {
      goto LABEL_38;
    }

    v27 = *v26;
    if (!v27)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v28 = v27[1];
      if (v23 == v28)
      {
        break;
      }

      if (v24.u32[0] > 1uLL)
      {
        if (v28 >= *&v22)
        {
          v28 %= *&v22;
        }
      }

      else
      {
        v28 &= *&v22 - 1;
      }

      if (v28 != v25)
      {
        goto LABEL_38;
      }

LABEL_36:
      v15 = 0;
      v27 = *v27;
      if (!v27)
      {
        goto LABEL_8;
      }
    }

    if (v27[2] != v23)
    {
      goto LABEL_36;
    }

    v29 = v27[3];
    v21 = v29;
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        [v14 setTileIntersectionFunctionTable:v29 atBufferIndex:v16];
      }

      else if (a1 == 8)
      {
        [v14 setIntersectionFunctionTable:v29 atBufferIndex:v16];
      }
    }

    else if (a1 == 1)
    {
      [v14 setVertexIntersectionFunctionTable:v29 atBufferIndex:v16];
    }

    else if (a1 == 2)
    {
      [v14 setFragmentIntersectionFunctionTable:v29 atBufferIndex:v16];
    }

LABEL_41:

LABEL_7:
    v15 = v17;
LABEL_8:
    ++v16;
    v17 = v15;
  }

  while (v16 != 31);
LABEL_54:

  return v15 & 1;
}

uint64_t UpdateDrawSamplerStates(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, unint64_t a6)
{
  v11 = a5;
  v12 = *(a1 + 496);
  if (v12)
  {
    updated = UpdateSamplerStates(1, v11, a4 + 1792, a4 + 10052, a4 + 10116, a2, a6, a3);
    v12 = *(a1 + 496);
    if ((v12 & 0x10) == 0)
    {
LABEL_3:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    updated = 1;
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_3;
    }
  }

  updated = updated & UpdateSamplerStates(16, v11, a4 + 5104, a4 + 10308, a4 + 10372, a2, a6, a3);
  v12 = *(a1 + 496);
  if ((v12 & 0x20) == 0)
  {
LABEL_4:
    if ((v12 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  updated = updated & UpdateSamplerStates(32, v11, a4 + 6760, a4 + 10436, a4 + 10500, a2, a6, a3);
  if ((*(a1 + 496) & 2) != 0)
  {
LABEL_9:
    updated = updated & UpdateSamplerStates(2, v11, a4 + 3448, a4 + 10180, a4 + 10244, a2, a6, a3);
  }

LABEL_10:

  return updated;
}

uint64_t UpdateDrawFunctionTables(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, unint64_t a6)
{
  v11 = a5;
  v12 = *(a1 + 496);
  if (v12)
  {
    updated = UpdateFunctionTables(1, v11, (a4 + 3), a4 + 1, a2, a6, a3);
    v12 = *(a1 + 496);
    if ((v12 & 0x10) == 0)
    {
LABEL_3:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    updated = 1;
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_3;
    }
  }

  updated = updated & UpdateFunctionTables(16, v11, (a4 + 448), a4 + 447, a2, a6, a3);
  v12 = *(a1 + 496);
  if ((v12 & 0x20) == 0)
  {
LABEL_4:
    if ((v12 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  updated = updated & UpdateFunctionTables(32, v11, (a4 + 655), a4 + 654, a2, a6, a3);
  if ((*(a1 + 496) & 2) != 0)
  {
LABEL_9:
    updated = updated & UpdateFunctionTables(2, v11, (a4 + 241), a4 + 240, a2, a6, a3);
  }

LABEL_10:

  return updated;
}

id ObtainTracingComputePipelineState(uint64_t *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, apr_pool_t *a6)
{
  v11 = a2;
  v12 = v11;
  if (a3[9])
  {
    v13 = 0;
    goto LABEL_18;
  }

  v14 = [v11 defaultDevice];
  v52 = a3[1];
  v49[0] = &v52;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>((a4 + 320), v52)[3];
  v16 = SupportsGlobalRelocation(v14, a4);
  if (v15)
  {
    goto LABEL_4;
  }

  v17 = v16;
  v18 = *(a4 + 488);
  v19 = (v18 == 2) << 31;
  v20 = v18 == 1;
  v21 = 0x40000000;
  if (!v20)
  {
    v21 = v19;
  }

  v40 = v21;
  v22 = GTMTLSMComputePipelineState_computeFunction(a1, a3);
  Function = GTMTLSMContext_lastFunction(*a1, v22, a5);
  if (!Function)
  {
    goto LABEL_15;
  }

  v24 = Function;
  v44 = [v12 computePipelineStateForKey:a3[1]];
  v42 = [v12 libraryForKey:*(v24 + 40)];
  if (!v42)
  {

LABEL_15:
    v15 = 0;
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v25 = [v12 functionMap];
  v51 = 0;
  v26 = ObtainTracingFunction(v14, v42, a4, v24, 8, v25, &v51);
  v43 = v51;

  if (v26)
  {
    v39 = v26;
    GTMTLSMComputePipelineState_computePipelineDescriptor(a1, a3, v49, a6);
    v27 = MakeMTLComputePipelineDescriptor;
    v28 = [v12 computePipelineDescriptorMap];
    v29 = v27(v49, v28);

    v41 = v29;
    [v29 setComputeFunction:v39];
    v30 = ObtainTracingLinkedFunctions(a1, v12, a4, v50, 8, a5);
    [v29 setLinkedFunctions:v30];

    if (v44)
    {
      [v29 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(v44, "maxTotalThreadsPerThreadgroup")}];
    }

    if (v17)
    {
      v48 = v43;
      v15 = [v14 newComputePipelineStateWithDescriptor:v29 options:v40 reflection:0 error:&v48];
      v31 = v48;

      v32 = 0;
      v43 = v31;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v29 setGpuCompilerSPIOptions:&unk_2860D61F0];
      }

      v46 = v43;
      v47 = 0;
      v15 = [v14 newComputePipelineStateWithDescriptor:v29 options:v40 | 1 reflection:&v47 error:{&v46, v39}];
      v32 = v47;
      v34 = v46;

      v35 = [v32 bindings];
      v36 = TraceBufferBindingIndex(v35, 8u);

      v45 = a3[1];
      v53 = &v45;
      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a4 + 200), v45) + 6) = v36;
      v43 = v34;
    }

    if (v15)
    {
      v53 = &v52;
      v37 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>((a4 + 320), v52);
      objc_storeStrong(v37 + 3, v15);
      if (*(a4 + 496) == 8)
      {
        v38 = a3[1];
        CreateComputeFunctionHandles(a4, v38, v50[2], v50[3]);
        CreateComputeFunctionHandles(a4, v38, v50[0], v50[1]);
      }
    }

    else
    {
      GTMTLReplay_handleNSError(v43);
    }

    v26 = v39;
  }

  else
  {
    v15 = 0;
  }

  if (!v26)
  {
    goto LABEL_16;
  }

LABEL_4:
  v15 = v15;
  v13 = v15;
LABEL_17:

LABEL_18:

  return v13;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_24D931CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

id ObtainTracingFunction(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = a6;
  if (*(a4 + 132))
  {
    goto LABEL_2;
  }

  v35 = *(a4 + 8);
  v36[0] = &v35;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>((a3 + 360), v35)[3];
  if (!v16)
  {
    v17 = *(a4 + 112);
    if (v17)
    {
      v18 = MakeMTLFunctionDescriptor(v17, v15);
      v19 = [v14 newFunctionWithDescriptor:v18 error:a7];
    }

    else
    {
      v20 = *(a4 + 120);
      if (v20)
      {
        v18 = MakeMTLIntersectionFunctionDescriptor(v20);
        v19 = [v14 newIntersectionFunctionWithDescriptor:v18 error:a7];
      }

      else
      {
        if (!*(a4 + 56))
        {
LABEL_2:
          v16 = 0;
          goto LABEL_32;
        }

        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        v25 = *(a4 + 72);
        if (v25)
        {
          v26 = MakeMTLFunctionConstantValues(v25);
          v16 = [v14 newFunctionWithName:v18 constantValues:v26 error:a7];

LABEL_9:
          if (!v16)
          {
            goto LABEL_32;
          }

          v21 = [v16 device];
          v22 = SupportsGlobalRelocation(v21, a3);

          if (!v22)
          {
            goto LABEL_31;
          }

          v23 = 0;
          if (a5 > 7)
          {
            switch(a5)
            {
              case 8:
                v24 = 480;
                goto LABEL_27;
              case 16:
                v24 = 464;
                goto LABEL_27;
              case 32:
                v24 = 472;
                goto LABEL_27;
            }
          }

          else
          {
            switch(a5)
            {
              case 1:
                v24 = 440;
                goto LABEL_27;
              case 2:
                v24 = 448;
                goto LABEL_27;
              case 4:
                v24 = 456;
LABEL_27:
                v23 = *(a3 + v24);
                break;
            }
          }

          v27 = v16;
          v28 = v23;
          v29 = [objc_alloc(MEMORY[0x277CD6CB8]) initWithSymbolName:@"__resource_tracking_impl_trace_buffer" buffer:v28 offset:0];
          v30 = v29;
          if (v29)
          {
            v36[0] = v29;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
            [v27 setRelocations:v31];
          }

LABEL_31:
          v35 = *(a4 + 8);
          v36[0] = &v35;
          v32 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>((a3 + 360), v35);
          objc_storeStrong(v32 + 3, v16);
          goto LABEL_32;
        }

        v19 = [v14 newFunctionWithName:v18];
      }
    }

    v16 = v19;
    goto LABEL_9;
  }

LABEL_32:

  v33 = *MEMORY[0x277D85DE8];

  return v16;
}

id ObtainTracingLinkedFunctions(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  v11 = a2;
  if (a4)
  {
    v12 = ObtainTracingFunctions(a1, v11, a3, *(a4 + 16), *(a4 + 24), a5, a6);
    v13 = ObtainTracingFunctions(a1, v11, a3, *a4, *(a4 + 8), a5, a6);
    v14 = ObtainTracingFunctions(a1, v11, a3, *(a4 + 48), *(a4 + 56), a5, a6);
    v15 = v14;
    if (v12 || v13 || v14)
    {
      v16 = objc_alloc_init(MEMORY[0x277CD6EC0]);
      [v16 setFunctions:v12];
      [v16 setBinaryFunctions:v13];
      [v16 setPrivateFunctions:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t TraceBufferBindingIndex(void *a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = 0;
  if (a2 <= 0x20 && ((1 << a2) & 0x100010116) != 0)
  {
    v4 = 0;
    while (2)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
LABEL_6:
        v8 = 0;
        while (1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if (![v9 type] && objc_msgSend(v9, "index") == v4)
          {
            break;
          }

          if (v6 == ++v8)
          {
            v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
            if (v6)
            {
              goto LABEL_6;
            }

            goto LABEL_16;
          }
        }

        if (++v4 != 31)
        {
          continue;
        }

        v4 = 0;
      }

      else
      {
LABEL_16:
      }

      break;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void CreateComputeFunctionHandles(GTMTLReplayAccessTracking *a1, unint64_t a2, const unint64_t *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (a4)
    {
      v5 = a3;
      do
      {
        v8 = *v5++;
        v15 = v8;
        v16 = a2;
        v14[0] = a2;
        v14[1] = v8;
        v17 = v14;
        v9 = std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::__emplace_unique_key_args<FunctionHandleKey,std::piecewise_construct_t const&,std::tuple<FunctionHandleKey const&>,std::piecewise_construct_t const&<>>(a1 + 50, v14)[4];
        if (!v9)
        {
          v17 = &v16;
          v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(a1 + 40, v16)[3];
          if (v10)
          {
            v11 = v10;
            v17 = &v15;
            v12 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(a1 + 45, v15)[3];
            if (v12)
            {
              v9 = [v11 functionHandleWithFunction:v12];
              if (v9)
              {
                v17 = v14;
                v13 = std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::__emplace_unique_key_args<FunctionHandleKey,std::piecewise_construct_t const&,std::tuple<FunctionHandleKey const&>,std::piecewise_construct_t const&<>>(a1 + 50, v14);
                objc_storeStrong(v13 + 4, v9);
              }
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }

        --v4;
      }

      while (v4);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::__emplace_unique_key_args<FunctionHandleKey,std::piecewise_construct_t const&,std::tuple<FunctionHandleKey const&>,std::piecewise_construct_t const&<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ (*a2 << 32);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ (*a2 << 32);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

void sub_24D932944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_24D932B94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

id ObtainTracingFunctions(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, unint64_t a7)
{
  v11 = a2;
  v25 = [v11 defaultDevice];
  if (a4)
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a5];
    if (a5)
    {
      v12 = 0;
      do
      {
        v13 = *a4++;
        Function = GTMTLSMContext_lastFunction(*a1, v13, a7);
        if (Function)
        {
          v15 = Function;
          v16 = [v11 libraryForKey:*(Function + 40)];
          v17 = [v11 functionMap];
          v26 = v12;
          v18 = ObtainTracingFunction(v25, v16, a3, v15, a6, v17, &v26);
          v19 = v26;

          if (v18)
          {
            [v22 addObject:v18];
          }

          v12 = v19;
        }

        else
        {
          v19 = v12;
        }

        --a5;
      }

      while (a5);
    }

    else
    {
      v19 = 0;
    }

    v20 = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_24D933000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void SetupInstrumentedFunctionTable(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v17 = a1;
  if (*(a4 + 192))
  {
    v11 = 0;
    do
    {
      v12 = *(*(a4 + 184) + 8 * v11);
      if (v12)
      {
        Object = GTMTLSMContext_getObject(*a2, v12, a6);
        if (Object)
        {
          v14 = Object[6];
          v18[0] = a5;
          v18[1] = v14;
          v15 = std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::find<FunctionHandleKey>(*a3, *(a3 + 8), v18);
          if (v15)
          {
            v16 = v15[4];
            [v17 setFunction:v16 atIndex:v11];
          }
        }
      }

      else
      {
        [v17 setFunction:0 atIndex:v11];
      }

      ++v11;
    }

    while (*(a4 + 192) > v11);
  }
}

void SetupInstrumentedIntersectionFunctionTable(void *a1, void *a2, uint64_t *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  v30 = a1;
  v15 = a2;
  if (a6[23])
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = a6[22];
      v19 = *(v18 + v16);
      switch(v19)
      {
        case 3:
          [v30 setOpaqueCurveIntersectionFunctionWithSignature:*(v18 + v16 + 8) atIndex:v17];
          break;
        case 2:
          [v30 setOpaqueTriangleIntersectionFunctionWithSignature:*(v18 + v16 + 8) atIndex:v17];
          break;
        case 1:
          v20 = *(v18 + v16 + 8);
          if (v20)
          {
            Object = GTMTLSMContext_getObject(*a3, v20, a8);
            if (Object && (Object[9] == a7 || Object[8] == a7))
            {
              v22 = Object[6];
              v31[0] = a7;
              v31[1] = v22;
              v23 = std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::find<FunctionHandleKey>(*a4, *(a4 + 8), v31);
              if (v23)
              {
                v24 = v23[4];
                [v30 setFunction:v24 atIndex:v17];
              }
            }
          }

          else
          {
            [v30 setFunction:0 atIndex:v17];
          }

          break;
      }

      ++v17;
      v16 += 16;
    }

    while (a6[23] > v17);
  }

  v25 = 0;
  v26 = a6 + 26;
  do
  {
    v27 = *(v26 - 4);
    if (v27 == 2)
    {
      v29 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a5, *(v26 - 1));
      if (!v29)
      {
        goto LABEL_23;
      }

      v28 = v29[3];
      [v30 setVisibleFunctionTable:v28 atBufferIndex:v25];
    }

    else
    {
      if (v27 != 1)
      {
        goto LABEL_23;
      }

      v28 = [v15 bufferForKey:*(v26 - 1)];
      [v30 setBuffer:v28 offset:*v26 atIndex:v25];
    }

LABEL_23:
    ++v25;
    v26 += 3;
  }

  while (v25 != 31);
}

void *std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::find<FunctionHandleKey>(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3[1] ^ (*a3 << 32);
  v4 = vcnt_s8(a2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a3[1] ^ (*a3 << 32);
    if (v3 >= a2)
    {
      v5 = v3 % a2;
    }
  }

  else
  {
    v5 = (a2 - 1) & v3;
  }

  v6 = *(a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == *a3 && result[3] == a3[1])
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= a2)
          {
            v8 %= a2;
          }
        }

        else
        {
          v8 &= a2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_24D9338DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void CreateRenderFunctionHandles(int8x8_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  CreateRenderFunctionHandles(a1, a2, *(a3 + 16), *(a3 + 24), a4);
  v8 = *a3;
  v9 = *(a3 + 8);

  CreateRenderFunctionHandles(a1, a2, v8, v9, a4);
}

void CreateRenderFunctionHandles(int8x8_t *a1, unint64_t a2, const unint64_t *a3, uint64_t a4, unint64_t a5)
{
  if (!a3 || !a4)
  {
    return;
  }

  v8 = 0;
  v9 = a1 + 35;
  do
  {
    v10 = a3[v8];
    v25 = v10;
    v26 = a2;
    v11 = a1[36];
    if (!*&v11)
    {
      goto LABEL_20;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = a5;
      if (*&v11 <= a5)
      {
        v13 = a5 % *&v11;
      }
    }

    else
    {
      v13 = (*&v11 - 1) & a5;
    }

    v14 = *(*v9 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == a5)
      {
        break;
      }

      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    if (v15[2] != a5)
    {
      goto LABEL_19;
    }

    v28[0] = a2;
    v28[1] = v10;
    v27 = v28;
    v17 = std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::__emplace_unique_key_args<FunctionHandleKey,std::piecewise_construct_t const&,std::tuple<FunctionHandleKey const&>,std::piecewise_construct_t const&<>>(v15 + 3, v28)[4];
    v18 = v17;
    if (!v17)
    {
      v27 = &v26;
      v19 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&a1[30], v26)[3];
      if (v19)
      {
        v20 = v19;
        v27 = &v25;
        v21 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&a1[45], v25)[3];
        if (v21)
        {
          v18 = [v20 functionHandleWithFunction:v21 stage:a5];
          if (v18)
          {
            v27 = v28;
            v22 = std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::__emplace_unique_key_args<FunctionHandleKey,std::piecewise_construct_t const&,std::tuple<FunctionHandleKey const&>,std::piecewise_construct_t const&<>>(v15 + 3, v28);
            objc_storeStrong(v22 + 4, v18);
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    ++v8;
  }

  while (v8 != a4);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>>,void *>,std::__hash_node_destructor<std::equal_to<FunctionHandleKey><void *>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,objc_object  {objcproto22MTLRenderPipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t GTMTLReplayClient_generateFunctionResourceUsageInfoV2_impl(uint64_t a1, unint64_t *a2, unint64_t a3, void *a4)
{
  v314 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = [*(a1 + 8) defaultDevice];
  v9 = [v8 argumentBuffersSupport];

  if (!v9)
  {
    v123 = 0;
    goto LABEL_190;
  }

  v225 = a3;
  v228 = a1;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v10);
  v258 = 0;
  memset(v257, 0, sizeof(v257));
  v11 = *a2;
  v12 = newpool;
  v13 = v7[5];
  v14 = apr_array_make(newpool, 32, 8);
  memset(v283, 0, sizeof(v283));
  v282 = 0u;
  v281 = 0u;
  *&v280[8] = 0u;
  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[1], v11, v14);
  v15 = apr_array_make(v12, v14->nelts, 32);
  *&v279 = v15;
  nelts = v14->nelts;
  if (nelts >= 1)
  {
    v17 = v15;
    for (i = 0; i < nelts; ++i)
    {
      v19 = *&v14->elts[8 * i];
      v20 = v19[1].u64[0];
      v21 = v7[9];
      if (v21 > v20 || v7[10] + v21 <= v20)
      {
        v23 = apr_array_push(v17);
        *v23 = vextq_s8(v19[7], v19[7], 8uLL);
        v23[1].i64[0] = v19->i64[1];
        v23[1].i8[8] = 0;
        nelts = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[2], v11, v14);
  v24 = apr_array_make(v12, v14->nelts, 32);
  *(&v279 + 1) = v24;
  v25 = v14->nelts;
  if (v25 >= 1)
  {
    v26 = v24;
    for (j = 0; j < v25; ++j)
    {
      v28 = *&v14->elts[8 * j];
      v29 = v28[2];
      v30 = v7[9];
      if (v30 > v29 || v7[10] + v30 <= v29)
      {
        v32 = apr_array_push(v26);
        v32[1] = v28[1];
        *v32 = v28[39];
        v25 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[3], v11, v14);
  v33 = apr_array_make(v12, v14->nelts, 32);
  *v280 = v33;
  v34 = v14->nelts;
  if (v34 >= 1)
  {
    v35 = v33;
    for (k = 0; k < v34; ++k)
    {
      v37 = *&v14->elts[8 * k];
      v38 = v37[2];
      v39 = v7[9];
      if (v39 > v38 || v7[10] + v39 <= v38)
      {
        v41 = apr_array_push(v35);
        v41[1] = v37[1];
        *v41 = v37[22];
        v34 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[4], v11, v14);
  v42 = apr_array_make(v12, v14->nelts, 32);
  *&v280[8] = v42;
  v43 = v14->nelts;
  if (v43 >= 1)
  {
    v44 = v42;
    for (m = 0; m < v43; ++m)
    {
      v46 = *&v14->elts[8 * m];
      v47 = v46[2];
      v48 = v7[9];
      if (v48 > v47 || v7[10] + v48 <= v47)
      {
        v50 = apr_array_push(v44);
        v50[1] = v46[1];
        *v50 = v46[8];
        v43 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[11], v11, v14);
  v51 = apr_array_make(v12, v14->nelts, 32);
  v283[1] = v51;
  v52 = v14->nelts;
  if (v52 >= 1)
  {
    v53 = v51;
    for (n = 0; n < v52; ++n)
    {
      v55 = *&v14->elts[8 * n];
      v56 = v55[2];
      v57 = v7[9];
      if (v57 > v56 || v7[10] + v57 <= v56)
      {
        v59 = apr_array_push(v53);
        v59[1] = v55[1];
        *v59 = v55[8];
        v52 = v14->nelts;
      }
    }
  }

  v231 = a2;
  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[5], v11, v14);
  v60 = apr_array_make(v12, v14->nelts, 32);
  *&v280[16] = v60;
  v61 = v14->nelts;
  if (v61 >= 1)
  {
    v62 = v60;
    for (ii = 0; ii < v61; ++ii)
    {
      v64 = *&v14->elts[8 * ii];
      v65 = v64[2];
      v66 = v7[9];
      v67 = v66 <= v65 && v7[10] + v66 > v65;
      if (!v67 && GTMTLSMPipelineState_supportsIndirectCommandBuffers(*&v14->elts[8 * ii]))
      {
        v68 = apr_array_push(v62);
        v68[1] = v64[1];
        *v68 = v64[15];
        v61 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[6], v11, v14);
  v69 = apr_array_make(v12, v14->nelts, 32);
  *&v281 = v69;
  v70 = v14->nelts;
  if (v70 >= 1)
  {
    v71 = v69;
    for (jj = 0; jj < v70; ++jj)
    {
      v73 = *&v14->elts[8 * jj];
      v74 = v73[2];
      v75 = v7[9];
      v76 = v75 <= v74 && v7[10] + v75 > v74;
      if (!v76 && GTMTLSMPipelineState_supportsIndirectCommandBuffers(*&v14->elts[8 * jj]))
      {
        v77 = apr_array_push(v71);
        v77[1] = v73[1];
        *v77 = v73[15];
        v70 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[7], v11, v14);
  v78 = apr_array_make(v12, v14->nelts, 32);
  *(&v281 + 1) = v78;
  v79 = v14->nelts;
  if (v79 >= 1)
  {
    v80 = v78;
    for (kk = 0; kk < v79; ++kk)
    {
      v82 = *&v14->elts[8 * kk];
      v83 = v82[2];
      v84 = v7[9];
      if (v84 > v83 || v7[10] + v84 <= v83)
      {
        v86 = apr_array_push(v80);
        v86[1] = v82[1];
        *v86 = v82[16];
        v79 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[8], v11, v14);
  v87 = apr_array_make(v12, v14->nelts, 32);
  *&v282 = v87;
  v88 = v14->nelts;
  if (v88 >= 1)
  {
    v89 = v87;
    for (mm = 0; mm < v88; ++mm)
    {
      v91 = *&v14->elts[8 * mm];
      v92 = v91[2];
      v93 = v7[9];
      if (v93 > v92 || v7[10] + v93 <= v92)
      {
        v95 = apr_array_push(v89);
        v95[1] = v91[1];
        *v95 = v91[18];
        v88 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[9], v11, v14);
  v96 = apr_array_make(v12, v14->nelts, 32);
  *(&v282 + 1) = v96;
  v97 = v14->nelts;
  if (v97 >= 1)
  {
    v98 = v96;
    for (nn = 0; nn < v97; ++nn)
    {
      v100 = *&v14->elts[8 * nn];
      v101 = v100[2];
      v102 = v7[9];
      if (v102 > v101 || v7[10] + v102 <= v101)
      {
        v104 = apr_array_push(v98);
        v104[1] = v100[1];
        *v104 = v100[19];
        v97 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[10], v11, v14);
  v105 = apr_array_make(v12, v14->nelts, 32);
  v283[0] = v105;
  v106 = v14->nelts;
  if (v106 >= 1)
  {
    v107 = v105;
    for (i1 = 0; i1 < v106; ++i1)
    {
      v109 = *&v14->elts[8 * i1];
      v110 = v109[2];
      v111 = v7[9];
      if (v111 > v110 || v7[10] + v111 <= v110)
      {
        v113 = apr_array_push(v107);
        v113[1] = v109[1];
        *v113 = v109[17];
        v106 = v14->nelts;
      }
    }
  }

  v14->nelts = 0;
  GTMTLSMContext_getObjects(v13[12], v11, v14);
  v114 = v14->nelts;
  if (v114 < 1)
  {
    LODWORD(v116) = 0;
    v118 = v228;
  }

  else
  {
    v115 = 0;
    v116 = 0;
    v117 = v7[9];
    v118 = v228;
    do
    {
      v119 = *&v14->elts[8 * v115];
      v120 = *(v119 + 16);
      if (v117 > v120 || v7[10] + v117 <= v120)
      {
        v122 = *(v119 + 64);
        if (v122 >= 1)
        {
          do
          {
            v116 += *(v119 + 80);
            v119 = *(v119 + 32);
            --v122;
          }

          while (v122);
        }
      }

      ++v115;
    }

    while (v115 != v114);
  }

  v124 = apr_array_make(v12, v116, 24);
  v283[2] = v124;
  if (v14->nelts >= 1)
  {
    v125 = 0;
    do
    {
      v126 = *&v14->elts[8 * v125];
      v127 = *(v126 + 16);
      v128 = v7[9];
      if (v128 > v127 || v7[10] + v128 <= v127)
      {
        v130 = *(v126 + 64);
        if (v130 >= 1)
        {
          v131 = 0;
          v132 = *(v126 + 64);
          v133 = *&v14->elts[8 * v125];
          do
          {
            v131 += *(v133 + 80);
            v133 = *(v133 + 32);
            --v132;
          }

          while (v132);
          v124->nelts += v131;
          do
          {
            v134 = *(v126 + 80);
            if (v134)
            {
              v135 = 0;
              v136 = *(v126 + 72);
              v137 = *(v126 + 32);
              v138 = *(v137 + 24);
              v139 = &v124->elts[24 * v131 - 24 * v134 + 8];
              do
              {
                v140 = v135 + *(v126 + 96);
                *(v139 - 1) = *(v136 + 8 * v135);
                *v139 = v138;
                *(v139 + 1) = v140;
                ++v135;
                v139 += 24;
              }

              while (*(v126 + 80) > v135);
            }

            else
            {
              v137 = *(v126 + 32);
            }

            v131 -= v134;
            ++v132;
            v126 = v137;
          }

          while (v132 != v130);
        }
      }

      ++v125;
    }

    while (v125 < v14->nelts);
  }

  GTMTLIndirectResources_optimizeByKey(v257, &v279, 0, v12);
  v141 = objc_autoreleasePoolPush();
  v142 = *(v231 + 8);
  context = v141;
  if (GTFenum_isDrawCall(v142))
  {
    if (GTFenum_isMeshCall(v142))
    {
      if (*(v118 + 11360) == 70 && (Object = GTMTLSMContext_getObject(**(*v118 + 40), *(v118 + 8792), *v231)) != 0 && (v144 = Object[9]) != 0 && *(v144 + 368))
      {
        v145 = [*(v118 + 8) defaultDevice];
        v146 = ObtainResourceTrackingTracingBufferV2(v145, v257);

        v147 = 48;
      }

      else
      {
        v146 = 0;
        v147 = 32;
      }

      v149 = [*(v118 + 8) defaultDevice];
      v151 = ObtainResourceTrackingTracingBufferV2(v149, v257);
      v150 = 0;
    }

    else
    {
      v149 = [*(v118 + 8) defaultDevice];
      v150 = ObtainResourceTrackingTracingBufferV2(v149, v257);
      v151 = 0;
      v146 = 0;
      v147 = 1;
    }

    if (ShouldInstrumentFragmentStage(v118, v257, v231, v225))
    {
      v161 = [*(v118 + 8) defaultDevice];
      v226 = ObtainResourceTrackingTracingBufferV2(v161, v257);

      v147 |= 2u;
    }

    else
    {
      v226 = 0;
    }

    *v280 = 0u;
    v279 = 0u;
    v281 = 0u;
    v282 = 0u;
    *&v280[16] = 1065353216;
    LODWORD(v283[0]) = 1065353216;
    *&v283[1] = 0u;
    v284 = 0u;
    v286 = 0u;
    v287 = 0u;
    v285 = 1065353216;
    v288 = 1065353216;
    v289 = 0u;
    v290 = 0u;
    v293 = 0u;
    v292 = 0u;
    v291 = 1065353216;
    v294 = 1065353216;
    v296 = 0u;
    v295 = 0u;
    v297 = 1065353216;
    v254 = 0u;
    v255 = 0u;
    v260 = 1;
    v256 = 1065353216;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v261, &v254);
    v251 = 0u;
    v252 = 0u;
    v253 = 1065353216;
    v265 = 2;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v266, &v251);
    v248 = 0u;
    v249 = 0u;
    v250 = 1065353216;
    v270 = 4;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v271, &v248);
    v245 = 0u;
    v246 = 0u;
    v247 = 1065353216;
    v275 = 16;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v276, &v245);
    v242 = 0u;
    v243 = 0u;
    v244 = 1065353216;
    v277 = 8;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v278, &v242);
    std::unordered_map<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,std::equal_to<FunctionHandleKey><std::allocator<unsigned long const>>>::unordered_map(v298, &v260, 5);
    for (i2 = 200; i2 != -40; i2 -= 48)
    {
      std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v260 + i2);
    }

    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v242);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v245);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v248);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v251);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v254);
    v299 = 0u;
    v300 = 0u;
    v301 = 1065353216;
    v302 = 0u;
    v303 = 0u;
    v304 = 1065353216;
    v305 = 0u;
    v306 = 0u;
    v307 = 1065353216;
    v163 = v150;
    *&v308 = v163;
    v164 = v226;
    *(&v308 + 1) = v164;
    *&v309 = 0;
    v165 = v146;
    *(&v309 + 1) = v165;
    v166 = v151;
    v310 = v166;
    v311 = 0;
    v312 = 2;
    LODWORD(v313) = v147;
    BYTE4(v313) = 0;
    BYTE5(v313) = GTFenum_isMeshCall(*(v231 + 8));
    HIWORD(v313) = 0;
    v167 = newpool;
    InstrumentFunctionWithResourceTrackingV2(&v260, v228, v231, &v279, v257, newpool);
    v123 = v260;
    ReplaceFunctionTablesWithRegular(v240, v228, v147, *v231, v257, v167);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v241);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v240);
    v168 = objc_alloc(MEMORY[0x277CBEB18]);
    v156 = [v168 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v262 - v261) >> 3) - 0x5555555555555555 * ((v264 - v263) >> 3) - 0x5555555555555555 * ((v267 - v266) >> 3) - 0x5555555555555555 * ((v269 - v268) >> 3)];
    v169 = v263;
    v170 = v264;
    while (v169 != v170)
    {
      v254 = *v169;
      *&v255 = v169[2];
      v171 = MakeResourceUsageItem(&v254, 8);
      [v156 addObject:v171];

      v169 += 3;
    }

    v172 = v266;
    v173 = v267;
    while (v172 != v173)
    {
      v254 = *v172;
      *&v255 = v172[2];
      v174 = MakeResourceUsageItem(&v254, 16);
      [v156 addObject:v174];

      v172 += 3;
    }

    v175 = v261;
    v176 = v262;
    while (v175 != v176)
    {
      v254 = *v175;
      *&v255 = v175[2];
      v177 = MakeResourceUsageItem(&v254, 1);
      [v156 addObject:v177];

      v175 += 3;
    }

    v178 = v268;
    v179 = v269;
    while (v178 != v179)
    {
      v254 = *v178;
      *&v255 = v178[2];
      v180 = MakeResourceUsageItem(&v254, 2);
      [v156 addObject:v180];

      v178 += 3;
    }

    if (__p)
    {
      v274 = __p;
      operator delete(__p);
    }

    if (v271)
    {
      v272 = v271;
      operator delete(v271);
    }

    if (v268)
    {
      v269 = v268;
      operator delete(v268);
    }

    if (v266)
    {
      v267 = v266;
      operator delete(v266);
    }

    if (v263)
    {
      v264 = v263;
      operator delete(v263);
    }

    if (v261)
    {
      v262 = v261;
      operator delete(v261);
    }

    GTMTLReplayAccessTracking::~GTMTLReplayAccessTracking(&v279);

    goto LABEL_186;
  }

  if (v142 > -15298)
  {
    if (v142 == -15059)
    {
      goto LABEL_135;
    }

    v148 = -15297;
  }

  else
  {
    if (v142 == -16137)
    {
      goto LABEL_135;
    }

    v148 = -15486;
  }

  if (v142 == v148)
  {
LABEL_135:
    *v280 = 0u;
    v279 = 0u;
    v281 = 0u;
    v282 = 0u;
    *&v280[16] = 1065353216;
    LODWORD(v283[0]) = 1065353216;
    *&v283[1] = 0u;
    v284 = 0u;
    v286 = 0u;
    v287 = 0u;
    v285 = 1065353216;
    v288 = 1065353216;
    v289 = 0u;
    v290 = 0u;
    v293 = 0u;
    v292 = 0u;
    v291 = 1065353216;
    v294 = 1065353216;
    v296 = 0u;
    v295 = 0u;
    v297 = 1065353216;
    v254 = 0u;
    v255 = 0u;
    v260 = 1;
    v256 = 1065353216;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v261, &v254);
    v251 = 0u;
    v252 = 0u;
    v253 = 1065353216;
    v265 = 2;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v266, &v251);
    v248 = 0u;
    v249 = 0u;
    v250 = 1065353216;
    v270 = 4;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v271, &v248);
    v245 = 0u;
    v246 = 0u;
    v247 = 1065353216;
    v275 = 16;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v276, &v245);
    v242 = 0u;
    v243 = 0u;
    v244 = 1065353216;
    v277 = 8;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v278, &v242);
    std::unordered_map<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,std::equal_to<FunctionHandleKey><std::allocator<unsigned long const>>>::unordered_map(v298, &v260, 5);
    for (i3 = 200; i3 != -40; i3 -= 48)
    {
      std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v260 + i3);
    }

    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v242);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v245);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v248);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v251);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v254);
    v299 = 0u;
    v300 = 0u;
    v301 = 1065353216;
    v302 = 0u;
    v303 = 0u;
    v304 = 1065353216;
    v305 = 0u;
    v306 = 0u;
    v307 = 1065353216;
    v308 = 0uLL;
    v153 = [*(v118 + 8) defaultDevice];
    v309 = ObtainResourceTrackingTracingBufferV2(v153, v257);
    v311 = 0;
    v310 = 0;
    v312 = 2;
    v313 = 0x100000004;

    v154 = newpool;
    InstrumentFunctionWithResourceTrackingV2(&v260, v118, v231, &v279, v257, newpool);
    v123 = v260;
    ReplaceFunctionTablesWithRegular(v238, v118, 4, *v231, v257, v154);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v239);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v238);
    v155 = objc_alloc(MEMORY[0x277CBEB18]);
    v156 = [v155 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v272 - v271) >> 3)];
    v157 = v271;
    v158 = v272;
    while (v157 != v158)
    {
      v254 = *v157;
      *&v255 = v157[2];
      v159 = MakeResourceUsageItem(&v254, 4);
      [v156 addObject:v159];

      v157 += 3;
    }

    v160 = __p;
    if (!__p)
    {
      goto LABEL_143;
    }

    v274 = __p;
    goto LABEL_142;
  }

  if (!GTFenum_isComputeCall(v142))
  {
    if ((v142 & 0xFFFFFFFE) != 0xFFFFC1A4)
    {
      if ((v142 & 0xFFFFFFFE) == 0xFFFFC1A6)
      {
        if (IsSubFuncEnumDrawMeshCall(v118, v231, v225))
        {
          if (ShouldInstrumentICBObjectStage(v118, v231, v225))
          {
            v191 = [*(v118 + 8) defaultDevice];
            v229 = ObtainResourceTrackingTracingBufferV2(v191, v257);

            v192 = 48;
          }

          else
          {
            v229 = 0;
            v192 = 32;
          }

          v200 = [*(v118 + 8) defaultDevice];
          v202 = ObtainResourceTrackingTracingBufferV2(v200, v257);
          v201 = 0;
        }

        else
        {
          v200 = [*(v118 + 8) defaultDevice];
          v201 = ObtainResourceTrackingTracingBufferV2(v200, v257);
          v229 = 0;
          v202 = 0;
          v192 = 1;
        }

        if (ShouldInstrumentFragmentStage(v118, v257, v231, v225))
        {
          v203 = [*(v118 + 8) defaultDevice];
          v224 = ObtainResourceTrackingTracingBufferV2(v203, v257);
          v192 |= 2u;
        }

        else
        {
          v224 = 0;
        }

        *v280 = 0u;
        v279 = 0u;
        v281 = 0u;
        v282 = 0u;
        *&v280[16] = 1065353216;
        LODWORD(v283[0]) = 1065353216;
        *&v283[1] = 0u;
        v284 = 0u;
        v286 = 0u;
        v287 = 0u;
        v285 = 1065353216;
        v288 = 1065353216;
        v289 = 0u;
        v290 = 0u;
        v293 = 0u;
        v292 = 0u;
        v291 = 1065353216;
        v294 = 1065353216;
        v296 = 0u;
        v295 = 0u;
        v297 = 1065353216;
        v254 = 0u;
        v255 = 0u;
        v260 = 1;
        v256 = 1065353216;
        v223 = v201;
        std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v261, &v254);
        v251 = 0u;
        v252 = 0u;
        v253 = 1065353216;
        v265 = 2;
        std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v266, &v251);
        v248 = 0u;
        v249 = 0u;
        v250 = 1065353216;
        v270 = 4;
        std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v271, &v248);
        v245 = 0u;
        v246 = 0u;
        v247 = 1065353216;
        v275 = 16;
        std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v276, &v245);
        v242 = 0u;
        v243 = 0u;
        v244 = 1065353216;
        v277 = 8;
        std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v278, &v242);
        std::unordered_map<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,std::equal_to<FunctionHandleKey><std::allocator<unsigned long const>>>::unordered_map(v298, &v260, 5);
        for (i4 = 200; i4 != -40; i4 -= 48)
        {
          std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v260 + i4);
        }

        std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v242);
        std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v245);
        std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v248);
        std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v251);
        std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v254);
        v299 = 0u;
        v300 = 0u;
        v301 = 1065353216;
        v302 = 0u;
        v303 = 0u;
        v304 = 1065353216;
        v305 = 0u;
        v306 = 0u;
        v307 = 1065353216;
        v205 = v201;
        *&v308 = v205;
        v206 = v224;
        *(&v308 + 1) = v206;
        *&v309 = 0;
        v207 = v229;
        *(&v309 + 1) = v207;
        v208 = v202;
        v310 = v208;
        v311 = 0;
        v312 = 2;
        LODWORD(v313) = v192;
        BYTE4(v313) = 1;
        BYTE5(v313) = IsSubFuncEnumDrawMeshCall(v118, v231, v225);
        HIWORD(v313) = 0;
        v209 = newpool;
        InstrumentSubCommandWithAccessTrackingV2();
        v123 = v260;
        ReplaceFunctionTablesWithRegular(v234, v118, v192, *v231, v257, v209);
        std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v235);
        std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v234);
        v210 = objc_alloc(MEMORY[0x277CBEB18]);
        v156 = [v210 initWithCapacity:{0xAAAAAAAAAAAAAAABLL * ((v262 - v261) >> 3) - 0x5555555555555555 * ((v269 - v268) >> 3) - 0x5555555555555555 * ((v264 - v263) >> 3) - 0x5555555555555555 * ((v267 - v266) >> 3), v223}];
        v211 = v263;
        v212 = v264;
        while (v211 != v212)
        {
          v254 = *v211;
          *&v255 = v211[2];
          v213 = MakeResourceUsageItem(&v254, 8);
          [v156 addObject:v213];

          v211 += 3;
        }

        v214 = v266;
        v215 = v267;
        while (v214 != v215)
        {
          v254 = *v214;
          *&v255 = v214[2];
          v216 = MakeResourceUsageItem(&v254, 16);
          [v156 addObject:v216];

          v214 += 3;
        }

        v217 = v261;
        v218 = v262;
        while (v217 != v218)
        {
          v254 = *v217;
          *&v255 = v217[2];
          v219 = MakeResourceUsageItem(&v254, 1);
          [v156 addObject:v219];

          v217 += 3;
        }

        v220 = v268;
        v221 = v269;
        while (v220 != v221)
        {
          v254 = *v220;
          *&v255 = v220[2];
          v222 = MakeResourceUsageItem(&v254, 2);
          [v156 addObject:v222];

          v220 += 3;
        }

        if (__p)
        {
          v274 = __p;
          operator delete(__p);
        }

        if (v271)
        {
          v272 = v271;
          operator delete(v271);
        }

        if (v268)
        {
          v269 = v268;
          operator delete(v268);
        }

        if (v266)
        {
          v267 = v266;
          operator delete(v266);
        }

        if (v263)
        {
          v264 = v263;
          operator delete(v263);
        }

        if (v261)
        {
          v262 = v261;
          operator delete(v261);
        }

        GTMTLReplayAccessTracking::~GTMTLReplayAccessTracking(&v279);
      }

      else
      {
        v123 = 0;
        v156 = 0;
      }

      goto LABEL_186;
    }

    *v280 = 0u;
    v279 = 0u;
    v281 = 0u;
    v282 = 0u;
    *&v280[16] = 1065353216;
    LODWORD(v283[0]) = 1065353216;
    *&v283[1] = 0u;
    v284 = 0u;
    v286 = 0u;
    v287 = 0u;
    v285 = 1065353216;
    v288 = 1065353216;
    v289 = 0u;
    v290 = 0u;
    v293 = 0u;
    v292 = 0u;
    v291 = 1065353216;
    v294 = 1065353216;
    v296 = 0u;
    v295 = 0u;
    v297 = 1065353216;
    v254 = 0u;
    v255 = 0u;
    v260 = 1;
    v256 = 1065353216;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v261, &v254);
    v251 = 0u;
    v252 = 0u;
    v253 = 1065353216;
    v265 = 2;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v266, &v251);
    v248 = 0u;
    v249 = 0u;
    v250 = 1065353216;
    v270 = 4;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v271, &v248);
    v245 = 0u;
    v246 = 0u;
    v247 = 1065353216;
    v275 = 16;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v276, &v245);
    v242 = 0u;
    v243 = 0u;
    v244 = 1065353216;
    v277 = 8;
    std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v278, &v242);
    std::unordered_map<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,std::equal_to<FunctionHandleKey><std::allocator<unsigned long const>>>::unordered_map(v298, &v260, 5);
    for (i5 = 200; i5 != -40; i5 -= 48)
    {
      std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v260 + i5);
    }

    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v242);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v245);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v248);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v251);
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v254);
    v299 = 0u;
    v300 = 0u;
    v301 = 1065353216;
    v302 = 0u;
    v303 = 0u;
    v304 = 1065353216;
    v305 = 0u;
    v306 = 0u;
    v307 = 1065353216;
    v308 = 0u;
    v309 = 0u;
    v310 = 0;
    v194 = [*(v118 + 8) defaultDevice];
    v311 = ObtainResourceTrackingTracingBufferV2(v194, v257);
    v312 = 2;
    v313 = 8;

    v195 = newpool;
    InstrumentSubCommandWithAccessTrackingV2();
    v123 = v260;
    ReplaceFunctionTablesWithRegular(v232, v118, 8, *v231, v257, v195);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v233);
    std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v232);
    v196 = objc_alloc(MEMORY[0x277CBEB18]);
    v156 = [v196 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v274 - __p) >> 3)];
    v197 = __p;
    v198 = v274;
    while (v197 != v198)
    {
      v254 = *v197;
      *&v255 = v197[2];
      v199 = MakeResourceUsageItem(&v254);
      [v156 addObject:v199];

      v197 += 3;
    }

    InstrumentV2Result::~InstrumentV2Result(&v260);
    goto LABEL_153;
  }

  *v280 = 0u;
  v279 = 0u;
  v281 = 0u;
  v282 = 0u;
  *&v280[16] = 1065353216;
  LODWORD(v283[0]) = 1065353216;
  *&v283[1] = 0u;
  v284 = 0u;
  v286 = 0u;
  v287 = 0u;
  v285 = 1065353216;
  v288 = 1065353216;
  v289 = 0u;
  v290 = 0u;
  v293 = 0u;
  v292 = 0u;
  v291 = 1065353216;
  v294 = 1065353216;
  v296 = 0u;
  v295 = 0u;
  v297 = 1065353216;
  v254 = 0u;
  v255 = 0u;
  v260 = 1;
  v256 = 1065353216;
  std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v261, &v254);
  v251 = 0u;
  v252 = 0u;
  v253 = 1065353216;
  v265 = 2;
  std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v266, &v251);
  v248 = 0u;
  v249 = 0u;
  v250 = 1065353216;
  v270 = 4;
  std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(&v271, &v248);
  v245 = 0u;
  v246 = 0u;
  v247 = 1065353216;
  v275 = 16;
  std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v276, &v245);
  v242 = 0u;
  v243 = 0u;
  v244 = 1065353216;
  v277 = 8;
  std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>::unordered_map(v278, &v242);
  std::unordered_map<unsigned long,std::unordered_map<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,std::allocator<std::pair<FunctionHandleKey const,objc_object  {objcproto17MTLFunctionHandle}*>>>,std::hash<unsigned long>,FunctionHandleKeyHash<unsigned long>,std::equal_to<FunctionHandleKey><std::allocator<unsigned long const>>>::unordered_map(v298, &v260, 5);
  for (i6 = 200; i6 != -40; i6 -= 48)
  {
    std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v260 + i6);
  }

  std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v242);
  std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v245);
  std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v248);
  std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v251);
  std::__hash_table<std::__hash_value_type<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong}>,std::__unordered_map_hasher<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},FunctionHandleKeyHash,std::equal_to<FunctionHandleKey>,true>,std::__unordered_map_equal<FunctionHandleKey,objc_object  {objcproto17MTLFunctionHandle}* {__strong},std::equal_to,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto17MTLFunctionHandle}* {__strong}>>::~__hash_table(&v254);
  v299 = 0u;
  v300 = 0u;
  v301 = 1065353216;
  v302 = 0u;
  v303 = 0u;
  v304 = 1065353216;
  v305 = 0u;
  v306 = 0u;
  v307 = 1065353216;
  v308 = 0u;
  v309 = 0u;
  v310 = 0;
  v185 = [*(v118 + 8) defaultDevice];
  v311 = ObtainResourceTrackingTracingBufferV2(v185, v257);
  v312 = 2;
  v313 = 0x100000008;

  v186 = newpool;
  InstrumentFunctionWithResourceTrackingV2(&v260, v118, v231, &v279, v257, newpool);
  v123 = v260;
  ReplaceFunctionTablesWithRegular(v236, v118, 8, *v231, v257, v186);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(&v237);
  std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLVisibleFunctionTable}* {__strong}>>::~__hash_table(v236);
  v187 = objc_alloc(MEMORY[0x277CBEB18]);
  v156 = [v187 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v274 - __p) >> 3)];
  v188 = __p;
  v189 = v274;
  if (__p != v274)
  {
    do
    {
      v254 = *v188;
      *&v255 = v188[2];
      v190 = MakeResourceUsageItem(&v254);
      [v156 addObject:v190];

      v188 += 3;
    }

    while (v188 != v189);
    v188 = __p;
  }

  if (v188)
  {
    v274 = v188;
    v160 = v188;
LABEL_142:
    operator delete(v160);
  }

LABEL_143:
  if (v271)
  {
    v272 = v271;
    operator delete(v271);
  }

  if (v268)
  {
    v269 = v268;
    operator delete(v268);
  }

  if (v266)
  {
    v267 = v266;
    operator delete(v266);
  }

  if (v263)
  {
    v264 = v263;
    operator delete(v263);
  }

  if (v261)
  {
    v262 = v261;
    operator delete(v261);
  }

LABEL_153:
  GTMTLReplayAccessTracking::~GTMTLReplayAccessTracking(&v279);
LABEL_186:
  objc_autoreleasePoolPop(context);
  apr_pool_destroy(newpool);
  if (v156)
  {
    v181 = [v156 copy];
    *a4 = v181;
  }

  else
  {
    *a4 = MEMORY[0x277CBEBF8];
  }

LABEL_190:
  v182 = *MEMORY[0x277D85DE8];
  return v123 & 1;
}