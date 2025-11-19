uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

DYGTMTLDeviceProfile *newProfileWithMTLDevice(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLDeviceProfile);
  [(DYGTMTLDeviceProfile *)v2 setVersion:2];
  v3 = [v1 name];
  [(DYGTMTLDeviceProfile *)v2 setName:v3];

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:17];
  for (i = 0; i != 17; ++i)
  {
    v6 = newProfileWithMTLDevice_availableFeatures[i];
    if ([v1 supportsFeatureSet:v6])
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      [v4 addObject:v7];
    }
  }

  v8 = [v4 copy];
  v26 = v2;
  [(DYGTMTLDeviceProfile *)v2 setSupportedFeatureSets:v8];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  if ([v1 areProgrammableSamplePositionsSupported] && objc_msgSend(v1, "maxCustomSamplePositions"))
  {
    v10 = 1;
    do
    {
      if ([v1 supportsTextureSampleCount:v10])
      {
        v11 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
        [v1 getDefaultSamplePositions:v11 count:v10];
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v13 = 0;
        do
        {
          v14 = [MEMORY[0x277CCAE60] valueWithPoint:vcvtq_f64_f32(*&v11[8 * v13])];
          [v12 addObject:v14];

          ++v13;
        }

        while (v10 != v13);
        free(v11);
        v15 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
        v16 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        [v9 setObject:v15 forKey:v16];
      }
    }

    while ([v1 maxCustomSamplePositions] > v10++);
  }

  v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
  v19 = v26;
  [(DYGTMTLDeviceProfile *)v26 setDefaultSamplePositions:v18];

  if (objc_opt_respondsToSelector())
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:17];
    for (j = 0; j != 17; ++j)
    {
      v22 = newProfileWithMTLDevice_availableGPUFamilies[j];
      if ([v1 supportsFamily:v22])
      {
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
        [v20 addObject:v23];
      }
    }

    v24 = [v20 copy];
    v19 = v26;
    [(DYGTMTLDeviceProfile *)v26 setSupportedGPUFamilies:v24];
  }

  return v19;
}

id DaemonDeviceCapabilities(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MTLCreateSystemDefaultDevice();
  v3 = newProfileWithMTLDevice(v2);

  v4 = MEMORY[0x277CCA8D8];
  v5 = [v1 stringByAppendingPathComponent:@"/System/Library/Frameworks/Metal.framework"];

  v6 = [v4 bundleWithPath:v5];

  if (v6)
  {
    v7 = *MEMORY[0x277CBED58];
    v8 = [v6 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
  }

  else
  {
    v8 = &stru_2860D7200;
  }

  *values = xmmword_279661098;
  v19 = *off_2796610A8;
  v20 = @"main-screen-scale";
  v9 = CFArrayCreate(0, values, 5, MEMORY[0x277CBF128]);
  v10 = MGCopyMultipleAnswers();
  CFRelease(v9);
  v15 = v3;
  v16[0] = @"gputools.contexts-info";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v17[0] = v11;
  v17[1] = v10;
  v16[1] = @"screen-dimensions";
  v16[2] = @"metal_version";
  v16[3] = @"nativePointerSize";
  v17[2] = v8;
  v17[3] = &unk_2860E9000;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id DaemonCreateGuestAppTransport(void *a1)
{
  v50 = *MEMORY[0x277D85DE8];
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

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v46;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v45 + 1) + 8 * v8);
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
          v6 = [v4 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  }

  v20 = v17;
  v21 = [v16 objectForKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];
  v22 = [v21 componentsSeparatedByString:@":"];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 mutableCopy];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  }

  v25 = v24;
  v26 = [v2 objectForKeyedSubscript:@"platformPrefix"];
  v27 = [v16 objectForKeyedSubscript:@"GPUTOOLS_EXTRA_PLUGIN_PATHS"];
  v28 = [v2 objectForKeyedSubscript:@"shouldLoadReplayer"];
  if (!v28)
  {
    goto LABEL_39;
  }

  v29 = v28;
  [v2 objectForKeyedSubscript:@"shouldLoadCapture"];
  v44 = v25;
  v30 = v23;
  v31 = v20;
  v32 = v21;
  v33 = v27;
  v35 = v34 = v26;
  v36 = [v35 BOOLValue];

  v26 = v34;
  v27 = v33;
  v21 = v32;
  v20 = v31;
  v23 = v30;
  v25 = v44;

  if (v36)
  {
LABEL_39:
    v37 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsCapture.framework/GPUToolsCapture"];
    if (([v25 containsObject:v37] & 1) == 0)
    {
      [v25 addObject:v37];
    }

    [v20 setObject:v37 forKeyedSubscript:@"DYMTL_TOOLS_DYLIB_PATH"];
  }

  v38 = [v2 objectForKeyedSubscript:@"shouldLoadDiagnostics"];
  v39 = [v38 BOOLValue];

  if (v39)
  {
    v40 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsDiagnostics.framework/GPUToolsDiagnostics"];
    if (([v25 containsObject:v40] & 1) == 0)
    {
      [v25 addObject:v40];
    }
  }

  v41 = [v23 count];
  if (v41 != [v25 count])
  {
    v42 = [v25 componentsJoinedByString:@":"];
    [v20 setObject:v42 forKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];

    v43 = [v20 copy];
    v16 = v43;
  }

LABEL_30:
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

void *GTMTLDeviceCapabilitiesQuery()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __GTMTLDeviceCapabilitiesQuery_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &storage;
  if (GTMTLDeviceCapabilitiesQuery_onceToken != -1)
  {
    dispatch_once(&GTMTLDeviceCapabilitiesQuery_onceToken, block);
  }

  return &storage;
}

void __GTMTLDeviceCapabilitiesQuery_block_invoke(uint64_t a1)
{
  v2 = MTLCreateSystemDefaultDevice();
  v3 = *(a1 + 32);
  ++*(v3 + 1168);
  *(v3 + 520) = 4096;
  *(v3 + 528) = xmmword_24DC0EE00;
  *(v3 + 544) = xmmword_24DC0EE10;
  *(v3 + 560) = xmmword_24DC0EE20;
  *(v3 + 576) = 0x8000;
  v4 = [v2 name];
  strncpy(v3, [v4 UTF8String], 0x80uLL);

  v5 = *(a1 + 32);
  v6 = [v2 familyName];
  strncpy((v5 + 128), [v6 UTF8String], 0x80uLL);

  v7 = *(a1 + 32);
  v8 = [v2 vendorName];
  strncpy((v7 + 256), [v8 UTF8String], 0x80uLL);

  v9 = *(a1 + 32);
  v10 = [v2 productName];
  strncpy((v9 + 384), [v10 UTF8String], 0x80uLL);

  *(*(a1 + 32) + 512) = [v2 registryID];
  v11 = [v2 targetDeviceArchitecture];
  v12 = [v11 version];

  v13 = *(a1 + 32) + 520 + *(*(a1 + 32) + 520);
  *&v45[0] = 0;
  mach_timebase_info(v45);
  *v13 = *&v45[0];
  v14 = [v2 targetDeviceArchitecture];
  *(v13 + 40) = [v14 cpuType];

  v15 = [v2 targetDeviceArchitecture];
  *(v13 + 44) = [v15 subType];

  *(v13 + 617) = [v2 requiresRaytracingEmulation];
  for (i = 1001; i != 1017; ++i)
  {
    if ([v2 supportsFamily:i])
    {
      *(v13 + 64) |= (1 << (i + 24));
    }
  }

  for (j = 2002; j != 2018; ++j)
  {
    if ([v2 supportsFamily:j])
    {
      *(v13 + 48) |= (1 << (j + 48));
    }
  }

  for (k = 3001; k != 3017; ++k)
  {
    if ([v2 supportsFamily:k])
    {
      *(v13 + 72) |= (1 << (k + 72));
    }
  }

  for (m = 0; m != 16; ++m)
  {
    if ([v2 supportsFamily:m + 5001])
    {
      *(v13 + 56) |= (1 << (m + 1));
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty([v2 acceleratorPort], @"GPUConfigurationVariable", 0, 0);
  v21 = [CFProperty objectForKeyedSubscript:@"num_cores"];
  *(v13 + 80) = [v21 unsignedIntValue];

  v22 = [CFProperty objectForKeyedSubscript:@"num_mgpus"];
  *(v13 + 84) = [v22 unsignedIntValue];

  v23 = [CFProperty objectForKeyedSubscript:@"num_gps"];
  *(v13 + 88) = [v23 unsignedIntValue];

  v24 = [CFProperty objectForKeyedSubscript:@"num_frags"];
  *(v13 + 92) = [v24 unsignedIntValue];

  v25 = [CFProperty objectForKeyedSubscript:@"gpu_gen"];
  *(v13 + 100) = [v25 unsignedIntValue];

  v26 = [CFProperty objectForKeyedSubscript:@"omu_eval_window"];

  if (v26)
  {
    v27 = [CFProperty objectForKeyedSubscript:@"omu_eval_window"];
    *(v13 + 96) = [v27 unsignedIntValue];
  }

  else
  {
    *(v13 + 96) = 2048;
  }

  v28 = [CFProperty objectForKeyedSubscript:@"core_mask_list"];
  v29 = 0;
  v30 = v13 + 104;
  do
  {
    if ([v28 count] <= v29)
    {
      *(v30 + 8 * v29) = 0;
    }

    else
    {
      v31 = [v28 objectAtIndexedSubscript:v29];
      *(v30 + 8 * v29) = [v31 unsignedLongLongValue];
    }

    ++v29;
  }

  while (v29 != 64);
  v32 = [v2 targetDeviceArchitecture];
  *(v13 + 12) = [v32 versionCombined];

  v33 = [v2 targetDeviceArchitecture];
  *(v13 + 16) = [v33 driverVersion];

  *(v13 + 24) = [v2 sharedMemorySize];
  *(v13 + 32) = [v2 dedicatedMemorySize];
  *(v13 + 8) = v12;

  v34 = 0;
  v35 = *(a1 + 32) + 536 + *(*(a1 + 32) + 536);
  do
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    MTLPixelFormatGetInfoForDevice();
    if (BYTE8(v45[0]))
    {
      *(v35 + v34) = 1;
    }

    ++v34;
  }

  while (v34 != 4096);
  v36 = *(a1 + 32) + 544 + *(*(a1 + 32) + 544);
  *(v36 + 4) = [v2 isFloat32FilteringSupported];
  *(v36 + 5) = [v2 isMsaa32bSupported];
  *v36 = [v2 readWriteTextureSupport];
  v37 = *(a1 + 32) + 552 + *(*(a1 + 32) + 552);
  *(v37 + 4) = [v2 isAnisoSampleFixSupported];
  *(v37 + 5) = [v2 isClampToHalfBorderSupported];
  *(v37 + 6) = [v2 isCustomBorderColorSupported];
  *v37 = [v2 samplerReductionModeSupport];
  if ([v2 areProgrammableSamplePositionsSupported])
  {
    v38 = 1;
    if ([v2 supportsTextureSampleCount:1])
    {
      v39 = 8;
    }

    else
    {
      v38 = 2;
      if ([v2 supportsTextureSampleCount:2])
      {
        v39 = 16;
      }

      else
      {
        v38 = 4;
        if ([v2 supportsTextureSampleCount:4])
        {
          v39 = 32;
        }

        else
        {
          v38 = 8;
          if ([v2 supportsTextureSampleCount:8])
          {
            v39 = 64;
          }

          else
          {
            v38 = 16;
            if ([v2 supportsTextureSampleCount:16])
            {
              v39 = 128;
            }

            else
            {
              v38 = 32;
              if (![v2 supportsTextureSampleCount:32])
              {
                goto LABEL_43;
              }

              v39 = 256;
            }
          }
        }
      }
    }

    [v2 getDefaultSamplePositions:v37 + v39 count:v38];
    ++*(v37 + 7);
  }

LABEL_43:
  v40 = *(a1 + 32) + 560 + *(*(a1 + 32) + 560);
  *(v40 + 12) = [v2 isRTZRoundingSupported];
  *v40 = [v2 doubleFPConfig];
  *(v40 + 4) = [v2 halfFPConfig];
  *(v40 + 8) = [v2 singleFPConfig];
  v41 = (*(a1 + 32) + 568 + *(*(a1 + 32) + 568));
  *v41 = [v2 maxFramebufferStorageBits];
  v41[1] = [v2 linearTextureArrayAlignmentBytes];
  v41[2] = [v2 linearTextureArrayAlignmentSlice];
  v41[3] = [v2 maxTileBuffers];
  v41[4] = [v2 maxTileTextures];
  v41[5] = [v2 maxTileSamplers];
  v41[6] = [v2 maxTileInlineDataSize];
  v41[7] = [v2 minTilePixels];
  v41[8] = [v2 maxColorAttachments];
  v41[9] = [v2 maxVertexAttributes];
  v41[10] = [v2 maxVertexBuffers];
  v41[11] = [v2 maxVertexTextures];
  v41[12] = [v2 maxVertexSamplers];
  v41[13] = [v2 maxVertexInlineDataSize];
  v41[14] = [v2 maxInterpolants];
  v41[15] = [v2 maxFragmentBuffers];
  v41[16] = [v2 maxFragmentTextures];
  v41[17] = [v2 maxFragmentSamplers];
  v41[18] = [v2 maxFragmentInlineDataSize];
  v41[19] = [v2 maxComputeBuffers];
  v41[20] = [v2 maxComputeTextures];
  v41[21] = [v2 maxComputeSamplers];
  v41[22] = [v2 maxComputeInlineDataSize];
  v41[23] = [v2 maxComputeLocalMemorySizes];
  v41[24] = [v2 maxTotalComputeThreadsPerThreadgroup];
  v41[25] = [v2 maxComputeThreadgroupMemory];
  [v2 maxLineWidth];
  v41[26] = v42;
  [v2 maxPointSize];
  v41[27] = v43;
  v41[28] = [v2 maxVisibilityQueryOffset];
  v41[29] = [v2 maxBufferLength];
  v41[30] = [v2 minConstantBufferAlignmentBytes];
  v41[31] = [v2 minBufferNoCopyAlignmentBytes];
  v41[32] = [v2 maxTextureWidth1D];
  v41[33] = [v2 maxTextureWidth2D];
  v41[34] = [v2 maxTextureHeight2D];
  v41[35] = [v2 maxTextureWidth3D];
  v41[36] = [v2 maxTextureHeight3D];
  v41[37] = [v2 maxTextureDepth3D];
  v41[38] = [v2 maxTextureDimensionCube];
  v41[39] = [v2 maxTextureLayers];
  v41[40] = [v2 linearTextureAlignmentBytes];
  v41[41] = [v2 iosurfaceTextureAlignmentBytes];
  v41[42] = [v2 iosurfaceReadOnlyTextureAlignmentBytes];
  v41[43] = [v2 deviceLinearTextureAlignmentBytes];
  v41[44] = [v2 deviceLinearReadOnlyTextureAlignmentBytes];
  v41[45] = [v2 maxFunctionConstantIndices];
  v41[46] = [v2 maxComputeThreadgroupMemoryAlignmentBytes];
  v41[47] = [v2 maxInterpolatedComponents];
  v41[48] = [v2 maxTessellationFactor];
  v41[49] = [v2 maxIndirectBuffers];
  v41[50] = [v2 maxIndirectTextures];
  v41[51] = [v2 maxIndirectSamplers];
  v41[52] = [v2 maxIndirectSamplersPerDevice];
  v41[53] = [v2 maxFenceInstances];
  v41[54] = [v2 maxViewportCount];
  v41[55] = [v2 maxCustomSamplePositions];
  v41[56] = [v2 maxVertexAmplificationFactor];
  v41[57] = [v2 maxVertexAmplificationCount];
  v41[58] = [v2 maxTextureBufferWidth];
  v41[59] = [v2 maxComputeAttributes];
  v41[60] = [v2 maxIOCommandsInFlight];
  v41[61] = [v2 maxPredicatedNestingDepth];
  v41[62] = [v2 maxConstantBufferArguments];
  v41[63] = [v2 maximumComputeSubstreams];
  if (objc_opt_respondsToSelector())
  {
    v41[64] = [v2 maxAccelerationStructureLevels];
  }

  v44 = *(a1 + 32) + 576 + *(*(a1 + 32) + 576);
  *v44 = [v2 argumentBuffersSupport];
  *(v44 + 4) = [v2 supportsTLS];
  *(v44 + 5) = [v2 supportsGlobalVariableRelocation];
  *(v44 + 6) = [v2 supportsGlobalVariableRelocationCompute];
  *(v44 + 7) = [v2 supportsGlobalVariableRelocationRender];
  *(v44 + 8) = [v2 supportsDynamicLibraries];
  *(v44 + 9) = [v2 supportsRenderDynamicLibraries];
  *(v44 + 10) = [v2 supportsFunctionPointers];
  *(v44 + 11) = [v2 supportsFunctionPointersFromRender];
  *(v44 + 12) = [v2 areProgrammableSamplePositionsSupported];
  if (objc_opt_respondsToSelector())
  {
    *(v44 + 13) = [v2 supportsGlobalVariableBindings];
  }
}

const char *GTDeviceCapabilities_fromDevice(void *a1)
{
  v1 = a1;
  GTMTLDeviceCapabilitiesQuery();
  if (qword_27F09F0B0)
  {
    v2 = 0;
    v3 = &storage;
    while (1)
    {
      v4 = [v1 name];
      v5 = strncmp(v3, [v4 UTF8String], 0x80uLL);

      if (!v5)
      {
        break;
      }

      ++v2;
      v3 += 584;
      if (qword_27F09F0B0 <= v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

  return v3;
}

id MessagePathMerge(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  empty = 0;
  if (v3 && v4)
  {
    empty = xpc_array_create_empty();
    count = xpc_array_get_count(v3);
    v8 = count >= xpc_array_get_count(v5) ? v5 : v3;
    v9 = xpc_array_get_count(v8);
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        uint64 = xpc_array_get_uint64(v3, i);
        if (uint64 != xpc_array_get_uint64(v5, i))
        {
          break;
        }

        v13 = xpc_uint64_create(uint64);
        xpc_array_append_value(empty, v13);
      }
    }
  }

  return empty;
}

uint64_t MessagePathEndsWith(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4 || !xpc_array_get_count(v4))
  {
LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  if (v3)
  {
    count = xpc_array_get_count(v5);
    if (count <= xpc_array_get_count(v3))
    {
      if (xpc_array_get_count(v3))
      {
        v8 = 0;
        v9 = -1;
        while (v8 < xpc_array_get_count(v5))
        {
          v10 = xpc_array_get_count(v3);
          v11 = xpc_array_get_count(v5);
          uint64 = xpc_array_get_uint64(v3, v10 + v9);
          if (uint64 != xpc_array_get_uint64(v5, v11 + v9))
          {
            goto LABEL_5;
          }

          ++v8;
          --v9;
          v7 = 1;
          if (v8 >= xpc_array_get_count(v3))
          {
            goto LABEL_13;
          }
        }
      }

      goto LABEL_12;
    }
  }

LABEL_5:
  v7 = 0;
LABEL_13:

  return v7;
}

BOOL MessageHasReply(void *a1)
{
  v1 = a1;
  v2 = (xpc_dictionary_get_flag(v1, "_flags", 0) & 1) != 0 || xpc_dictionary_get_BOOL(v1, "_reply");

  return v2;
}

void MessageSetHasReply(void *a1)
{
  xdict = a1;
  xpc_dictionary_set_flag(xdict, "_flags", 0);
  xpc_dictionary_set_BOOL(xdict, "_reply", 1);
}

BOOL MessageIsValid(void *a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v5 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Encountered an XPC error: %@", @"Message is nil"];
      v25[0] = v6;
      v7 = MEMORY[0x277CBEAC0];
      v8 = v25;
      v9 = &v24;
      goto LABEL_8;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  if (MEMORY[0x253035010](v3) == MEMORY[0x277D86480])
  {
    if (a2)
    {
      v11 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_error_string(v4)];
      v14 = [v12 stringWithFormat:@"Encountered an XPC error: %@", v13];
      v23 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a2 = [v11 errorWithDomain:@"com.apple.gputools.transport" code:7 userInfo:v15];
    }

    goto LABEL_11;
  }

  if (MEMORY[0x253035010](v4) != MEMORY[0x277D86468])
  {
    if (a2)
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Encountered an XPC error: %@", @"Unexpected XPC object type", *MEMORY[0x277CCA450]];
      v21 = v6;
      v7 = MEMORY[0x277CBEAC0];
      v8 = &v21;
      v9 = &v20;
LABEL_8:
      v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
      *a2 = [v5 errorWithDomain:@"com.apple.gputools.transport" code:7 userInfo:v10];

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  nserror = xpc_dictionary_get_nserror(v4, "_error");
  v16 = nserror == 0;
  if (a2 && nserror)
  {
    nserror = nserror;
    *a2 = nserror;
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t MessageVisit(void *a1, const char *a2)
{
  v3 = a1;
  v4 = xpc_dictionary_string_array_contains(v3, "_visited", a2);
  if ((v4 & 1) == 0)
  {
    v5 = xpc_string_create(a2);
    xpc_dictionary_array_push(v3, "_visited", v5);
  }

  return v4 ^ 1u;
}

void MessageRemoteRoutingInfoGet(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = xpc_dictionary_get_uint64(v3, "_remoteDeviceRelayPort");
  *(a2 + 8) = xpc_dictionary_get_uint64(v3, "_remoteDeviceRelayPid");
  *(a2 + 16) = xpc_dictionary_get_uint64(v3, "_remoteDeviceRelayRemotePid");
  flag = xpc_dictionary_get_flag(v3, "_flags", 6);

  *(a2 + 24) = flag;
}

void MessageRemoteRoutingInfoSet(void *a1, uint64_t a2)
{
  v3 = a1;
  xdict = v3;
  if (*a2)
  {
    xpc_dictionary_set_uint64(v3, "_remoteDeviceRelayPort", *a2);
    v3 = xdict;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    xpc_dictionary_set_uint64(xdict, "_remoteDeviceRelayPid", v4);
    v3 = xdict;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    xpc_dictionary_set_uint64(xdict, "_remoteDeviceRelayRemotePid", v5);
    v3 = xdict;
  }

  if (*(a2 + 24) == 1)
  {
    xpc_dictionary_set_flag(xdict, "_flags", 6);
    v3 = xdict;
  }
}

id allServicesForDevice(void *a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    a2 = [a2 uniqueDeviceID];
  }

  v4 = allServicesForDeviceUDID(v3, a2);

  return v4;
}

id allServicesForDeviceUDID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "_cmd", "allServices");
  if (v4)
  {
    xpc_dictionary_set_string(empty, "_device_dest", [v4 UTF8String]);
  }

  MessageSetHasReply(empty);
  v10 = 0;
  v6 = [v3 sendMessageWithReplySync:empty error:&v10];
  if (v6)
  {
    v7 = objc_opt_class();
    nsarray = xpc_dictionary_get_nsarray(v6, "returnValue", v7);
  }

  else
  {
    [v3 setError:0];
    nsarray = 0;
  }

  return nsarray;
}

id filteredArrayByService(void *a1, Protocol *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromProtocol(a2);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 serviceProperties];
        v13 = [v12 protocolName];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id filteredArrayByPID(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 processInfo];
        if ([v11 processIdentifier] == a2)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id filteredArrayByPort(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 serviceProperties];
        if ([v11 servicePort] == a2)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id newSetWithArrayMinusArray(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB58];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithArray:v5];

  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  [v6 minusSet:v7];

  v8 = [v6 copy];

  return v8;
}

id GTTpacket_loadFromData(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v1 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  v11 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v6 fromData:v2 error:&v11];

  v8 = v11;
  v9 = v8;
  if (!v7)
  {
    NSLog(&cfstr_FailedToDecode.isa, v8);
  }

  return v7;
}

void **GTTpacket_stream(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040F9A837A9uLL);
  v3 = objc_opt_new();
  v4 = v2[2];
  v2[2] = v3;

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1];
  v6 = *v2;
  *v2 = v5;

  v2[1] = a1;
  return v2;
}

void GTTpacket_record(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    [v6 setSelector:v7];

    v10[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v6 setRequests:v8];

    [v6 setRequestID:{objc_msgSend(v5, "requestID")}];
    [*a1 addObject:v6];
    if ([*a1 count] > *(a1 + 8))
    {
      [*a1 removeObjectAtIndex:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void GTTpacket_recordBatch(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v9 = objc_opt_new();
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    [v9 setSelector:v6];

    v7 = [v5 requests];
    [v9 setRequests:v7];

    v8 = [v5 requestID];
    [v9 setRequestID:v8];
    [*a1 addObject:v9];
    if ([*a1 count] > *(a1 + 8))
    {
      [*a1 removeObjectAtIndex:0];
    }
  }
}

dispatch_data_t GTTpacket_finish(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      [*(a1 + 32) setRequests:?];
      [*(a1 + 16) addObject:*(a1 + 32)];
      v2 = *(a1 + 32);
      *(a1 + 32) = 0;

      v3 = *(a1 + 24);
      *(a1 + 24) = 0;
    }

    v4 = MEMORY[0x277CCAAB0];
    v5 = [*a1 copy];
    v15 = 0;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v15];
    v7 = v15;

    if (v6)
    {
      v8 = [v6 bytes];
      v9 = [v6 length];
      destructor[0] = MEMORY[0x277D85DD0];
      destructor[1] = 3221225472;
      destructor[2] = __GTTpacket_finish_block_invoke;
      destructor[3] = &unk_279661140;
      v14 = v6;
      v10 = dispatch_data_create(v8, v9, 0, destructor);
      free(a1);
      v11 = v14;
    }

    else
    {
      v11 = [v7 localizedDescription];
      NSLog(&cfstr_FailedToEncode.isa, v11);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *GTTransportArchiveDirectory()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 isiOSAppOnMac];

  if (v1)
  {
    v2 = @"/tmp/com.apple.GPUToolsAgent";
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:getpwnam("mobile")->pw_dir];
    v2 = [v3 stringByAppendingPathComponent:@"Library/GPUTools"];
  }

  return v2;
}

uint64_t GTTransportEnvironment_init()
{
  GT_TRANSPORT_ENV = GetEnvDefault("MTLTRANSPORT_REPLAY_MAX_RECORD_REQUEST", 64);
  qword_27F19EC68 = qword_27F19EC68 & 0xFFFFFFFFFFFFFFFELL | GetEnvDefault("MTLTRANSPORT_REPLAY_RECORD_REQUEST", 1) & 1;
  result = GetEnvDefault("MTLTRANSPORT_LAUNCH_TIMEOUT", 30);
  qword_27F19EC60 = result;
  return result;
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

void xpc_dictionary_set_nsobject(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277CCAAB0];
    v8 = 0;
    v6 = a1;
    v7 = [v5 archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
    xpc_dictionary_set_data(v6, a2, [v7 bytes], objc_msgSend(v7, "length"));
  }
}

void xpc_dictionary_set_nsdata(void *a1, const char *a2, id a3)
{
  if (a3)
  {
    v6 = a3;
    v7 = a3;
    xdict = a1;
    v8 = [v7 bytes];
    v9 = [v7 length];

    xpc_dictionary_set_data(xdict, a2, v8, v9);
  }
}

const void *xpc_dictionary_get_nsdata(void *a1, const char *a2)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v4 initWithBytes:v3 length:length];
  }

  return result;
}

const void *xpc_dictionary_get_nsdata_nocopy(void *a1, const char *a2)
{
  length = 0;
  result = xpc_dictionary_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v4 initWithBytesNoCopy:v3 length:length freeWhenDone:0];
  }

  return result;
}

void *xpc_dictionary_get_nsobject(void *a1, const char *a2, uint64_t a3)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (!nsdata_nocopy)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:nsdata_nocopy error:&v7];
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v5 = 0;
  }

  return v5;
}

uint64_t xpc_dictionary_get_nsobject_any(void *a1, const char *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = a1;
  v4 = [v2 alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 initWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  nsobject_classes = xpc_dictionary_get_nsobject_classes(v3, a2, v13);

  return nsobject_classes;
}

uint64_t xpc_dictionary_get_nsarray(void *a1, const char *a2, uint64_t a3)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v7 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:a3 fromData:nsdata_nocopy error:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t xpc_dictionary_get_nsdictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedDictionaryWithKeysOfClass:a3 objectsOfClass:a4 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t xpc_dictionary_get_nsobject_classes(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id xpc_dictionary_get_nsdictionary_any(void *a1, const char *a2)
{
  nsobject_any = xpc_dictionary_get_nsobject_any(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = nsobject_any;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

const char *xpc_error_string(void *a1)
{
  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  if (!result)
  {
    return "Unknown";
  }

  return result;
}

void xpc_dictionary_set_flag(void *a1, const char *a2, char a3)
{
  xdict = a1;
  uint64 = xpc_dictionary_get_uint64(xdict, a2);
  xpc_dictionary_set_uint64(xdict, a2, uint64 | (1 << a3));
}

void xpc_dictionary_array_push(void *a1, const char *a2, void *a3)
{
  value = a3;
  v5 = a1;
  empty = xpc_dictionary_get_array(v5, a2);
  if (!empty)
  {
    empty = xpc_array_create_empty();
  }

  xpc_array_append_value(empty, value);
  xpc_dictionary_set_value(v5, a2, empty);
}

uint64_t xpc_dictionary_string_array_contains(void *a1, const char *a2, uint64_t a3)
{
  v4 = xpc_dictionary_get_array(a1, a2);
  v5 = v4;
  if (v4 && MEMORY[0x253035010](v4) == MEMORY[0x277D86440])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __xpc_dictionary_string_array_contains_block_invoke;
    v8[3] = &unk_279661170;
    v8[4] = &v9;
    v8[5] = a3;
    xpc_array_apply(v5, v8);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __xpc_dictionary_string_array_contains_block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    return 1;
  }

  v5 = strcmp(*(a1 + 40), string_ptr);
  result = 1;
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

const void *xpc_array_get_nsdata_nocopy(void *a1, size_t a2)
{
  length = 0;
  result = xpc_array_get_data(a1, a2, &length);
  if (result)
  {
    v3 = result;
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    return [v4 initWithBytesNoCopy:v3 length:length freeWhenDone:0];
  }

  return result;
}

uint64_t xpc_array_get_nsobject_classes(void *a1, size_t a2, void *a3)
{
  v5 = a3;
  nsdata_nocopy = xpc_array_get_nsdata_nocopy(a1, a2);
  if (nsdata_nocopy)
  {
    v9 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:nsdata_nocopy error:&v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

xpc_object_t xpc_nsobject_create(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v4];
  }

  else
  {
    v1 = 0;
  }

  v2 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));

  return v2;
}

id gt_xpc_dictionary_create_reply(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);

  return reply;
}

void *GTUnarchivedObjectOfClassesExpectingClass(uint64_t a1, objc_class *a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:a1 fromData:a3 error:a4];
  if (!v6)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
    goto LABEL_8;
  }

  if (v4)
  {
    if (!*v4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA450];
      v8 = MEMORY[0x277CCACA8];
      v9 = NSStringFromClass(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v8 stringWithFormat:@"Unexpected type when unarchiving response. Expected %@ Received %@", v9, v11];
      v17[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *v4 = [v7 errorWithDomain:@"com.apple.gputools.transport" code:9 userInfo:v13];
    }

    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t registerService(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = a1;
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, "_cmd", "registerService:forProcess:");
    MessageSetHasReply(empty);
    xpc_dictionary_set_nsobject(empty, "serviceProperties", v4);
    v8 = objc_alloc_init(GTProcessInfo);
    xpc_dictionary_set_nsobject(empty, "processInfo", v8);

    v9 = xpc_connection_send_message_with_reply_sync(v6, empty);
    if (MEMORY[0x253035010](v9) != MEMORY[0x277D86480] && MEMORY[0x253035010](v9) == MEMORY[0x277D86468])
    {
      [v4 setServicePort:{xpc_dictionary_get_uint64(v9, "servicePort")}];
      v10 = MEMORY[0x277CCACA8];
      string = xpc_dictionary_get_string(v9, "deviceUDID");
      if (string)
      {
        v12 = string;
      }

      else
      {
        v12 = "";
      }

      v13 = [v10 stringWithUTF8String:v12];
      [v4 setDeviceUDID:v13];

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

GTLocalXPCConnection *GTTransportLaunchedProcessConnectionNew(void *a1)
{
  v1 = a1;
  v2 = ConnectToServiceDaemon();
  v3 = [[GTLocalXPCConnection alloc] initWithTransactionScopedXPCConnection:v2 messageQueue:v1];

  ActivateServiceDaemonConnection(v3);

  return v3;
}

xpc_connection_t ConnectToServiceDaemon()
{
  v0 = dispatch_queue_create("com.apple.gputools.localConnection", 0);
  mach_service = xpc_connection_create_mach_service("com.apple.gputools.service", v0, 0);

  return mach_service;
}

void ActivateServiceDaemonConnection(void *a1)
{
  v1 = a1;
  objc_initWeak(&location, v1);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __ActivateServiceDaemonConnection_block_invoke;
  v4[3] = &unk_2796612B0;
  objc_copyWeak(&v5, &location);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __ActivateServiceDaemonConnection_block_invoke_2;
  v2[3] = &unk_2796612B0;
  objc_copyWeak(&v3, &location);
  [v1 activateWithMessageHandler:v4 andErrorHandler:v2];

  objc_destroyWeak(&v3);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

GTLocalXPCConnection *GTTransportServiceDaemonConnectionNew(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = dispatch_queue_create("com.apple.gputools.defaultMessageProcessing", 0);
  }

  v2 = ConnectToServiceDaemon();
  v3 = [[GTLocalXPCConnection alloc] initWithXPCConnection:v2 messageQueue:v1];
  ActivateServiceDaemonConnection(v3);

  return v3;
}

id GTTransportServiceDaemonConnectIfVersionNotOlderThan(void *a1, unint64_t a2)
{
  v3 = GTTransportServiceDaemonConnectionNew(a1);
  if (v3)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__0;
    v45 = __Block_byref_object_dispose__0;
    v46 = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __GTTransportServiceDaemonConnectIfVersionNotOlderThan_block_invoke;
    block[3] = &unk_279661288;
    v40 = &v41;
    v6 = v3;
    v38 = v6;
    v7 = v4;
    v39 = v7;
    dispatch_async(v5, block);

    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [v8 objectForKey:@"GPUToolsTransportServiceDaemonConnectionTimeout"];

    if (v9)
    {
      [v8 doubleForKey:@"GPUToolsTransportServiceDaemonConnectionTimeout"];
      v11 = v10;
      if (GTCoreLogUseOsLog())
      {
        v12 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_1();
        }
      }

      else
      {
        v14 = *MEMORY[0x277D85E08];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUToolsTransportServiceDaemonConnectionTimeout is %gs [overridden]", *&v11];
        fprintf(v14, "%s\n", [v12 UTF8String]);
      }
    }

    else
    {
      v11 = 2.0;
    }

    v15 = dispatch_time(0, (v11 * 1000000000.0));
    if (dispatch_group_wait(v7, v15))
    {
      if (GTCoreLogUseOsLog())
      {
        v16 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_2();
        }

        goto LABEL_25;
      }

      v23 = *MEMORY[0x277D85E08];
      v24 = MEMORY[0x277CCACA8];
      v36 = v11;
      v25 = @"Timed out after waiting %gs for gputoolsserviced to respond";
    }

    else
    {
      v17 = v42[5];
      if (v17)
      {
        v18 = filteredArrayByService(v17, &unk_2860EC7A8);
        v16 = [v18 firstObject];

        v19 = [v16 serviceProperties];
        v20 = [v19 version];

        v21 = GTCoreLogUseOsLog();
        if (v20 >= a2)
        {
          if (v21)
          {
            v30 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_3();
            }
          }

          else
          {
            v35 = *MEMORY[0x277D85E08];
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully connected to gputoolsserviced"];
            fprintf(v35, "%s\n", [v30 UTF8String]);
          }

          v26 = v6;
          goto LABEL_26;
        }

        if (v21)
        {
          v22 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_4(v16, a2, v22);
          }
        }

        else
        {
          v31 = *MEMORY[0x277D85E08];
          v32 = MEMORY[0x277CCACA8];
          v33 = [v16 serviceProperties];
          v34 = [v32 stringWithFormat:@"gputoolsserviced is too old (%llu < %llu)", objc_msgSend(v33, "version"), a2];
          fprintf(v31, "%s\n", [v34 UTF8String]);
        }

LABEL_25:
        v26 = 0;
LABEL_26:

        _Block_object_dispose(&v41, 8);
        goto LABEL_29;
      }

      if (GTCoreLogUseOsLog())
      {
        v16 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_5();
        }

        goto LABEL_25;
      }

      v23 = *MEMORY[0x277D85E08];
      v24 = MEMORY[0x277CCACA8];
      v25 = @"No gputoolsserviced on this OS";
    }

    v16 = [v24 stringWithFormat:v25, *&v36];
    fprintf(v23, "%s\n", [v16 UTF8String]);
    goto LABEL_25;
  }

  if (GTCoreLogUseOsLog())
  {
    v13 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_6();
    }
  }

  else
  {
    v27 = *MEMORY[0x277D85E08];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create connection to gputoolsserviced"];
    fprintf(v27, "%s\n", [v28 UTF8String]);
  }

  v26 = 0;
LABEL_29:

  return v26;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __GTTransportServiceDaemonConnectIfVersionNotOlderThan_block_invoke(uint64_t a1)
{
  v2 = allServices(*(a1 + 32));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void __ActivateServiceDaemonConnection_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dispatchMessage:v5 replyConnection:WeakRetained];
  }
}

void __ActivateServiceDaemonConnection_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x253034EE0](a2);
  if (GTCoreLogUseOsLog())
  {
    v4 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __ActivateServiceDaemonConnection_block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = *MEMORY[0x277D85E08];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection: Error:%s", v3];
    fprintf(v5, "%s\n", [v6 UTF8String]);
  }

  free(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained connection];
    v10 = MEMORY[0x253034EE0]();

    if (GTCoreLogUseOsLog())
    {
      v11 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __ActivateServiceDaemonConnection_block_invoke_2_cold_2();
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85E08];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection: Disconnect:%s", v10];
      fprintf(v12, "%s\n", [v11 UTF8String]);
    }

    free(v10);
  }
}

void GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void GTTransportServiceDaemonConnectIfVersionNotOlderThan_cold_4(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 serviceProperties];
  v7 = 134218240;
  v8 = [v5 version];
  v9 = 2048;
  v10 = a2;
  _os_log_debug_impl(&dword_24DBC9000, a3, OS_LOG_TYPE_DEBUG, "gputoolsserviced is too old (%llu < %llu)", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __ActivateServiceDaemonConnection_block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __ActivateServiceDaemonConnection_block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

id GTBulkDataCompress(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = v6;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v9 = v6;
      goto LABEL_12;
    }

    if (a2 != 1)
    {
      goto LABEL_13;
    }

    v8 = 0;
  }

  else
  {
    switch(a2)
    {
      case 2:
        v8 = 3;
        break;
      case 3:
        v8 = 1;
        break;
      case 4:
        v8 = 2;
        break;
      default:
        goto LABEL_13;
    }
  }

  v9 = [v6 compressedDataUsingAlgorithm:v8 error:a3];
LABEL_12:
  v3 = v9;
LABEL_13:

  return v3;
}

id GTBulkDataDecompress(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = v6;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v9 = v6;
      goto LABEL_12;
    }

    if (a2 != 1)
    {
      goto LABEL_13;
    }

    v8 = 0;
  }

  else
  {
    switch(a2)
    {
      case 2:
        v8 = 3;
        break;
      case 3:
        v8 = 1;
        break;
      case 4:
        v8 = 2;
        break;
      default:
        goto LABEL_13;
    }
  }

  v9 = [v6 decompressedDataUsingAlgorithm:v8 error:a3];
LABEL_12:
  v3 = v9;
LABEL_13:

  return v3;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

NSObject *Encode(void *a1, void *a2, const char *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "_cmd", a3);
  xpc_dictionary_set_flag(empty, "_flags", 2);
  v26 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v26];
  v12 = v26;
  if (v11)
  {
    xpc_dictionary_set_data(empty, "data", [v11 bytes], objc_msgSend(v11, "length"));
    v13 = -[GTDisplayRequestToken initWithID:]([GTDisplayRequestToken alloc], "initWithID:", [v7 requestID]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __Encode_block_invoke;
    v22[3] = &unk_279661468;
    v23 = v7;
    v25 = v9;
    v14 = v13;
    v24 = v14;
    [v8 sendMessage:empty replyHandler:v22];
    v15 = v24;
    v16 = v14;

    v17 = v16;
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v16 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        Encode_cold_1(v12);
      }
    }

    else
    {
      v18 = *MEMORY[0x277D85DF8];
      v19 = MEMORY[0x277CCACA8];
      v16 = [v12 localizedDescription];
      v20 = [v19 stringWithFormat:@"Failed to archive display request %@", v16];
      fprintf(v18, "%s\n", [v20 UTF8String]);
    }

    v17 = 0;
  }

  return v17;
}

void __Encode_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(a2, "data");
    v13 = v5;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:nsdata_nocopy error:&v13];
    v8 = v13;

    if (!v7)
    {
      if (GTCoreLogUseOsLog())
      {
        v9 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __Encode_block_invoke_cold_1(v8);
        }
      }

      else
      {
        v10 = *MEMORY[0x277D85DF8];
        v11 = MEMORY[0x277CCACA8];
        v9 = [v8 localizedDescription];
        v12 = [v11 stringWithFormat:@"Failed to unarchive display response %@", v9];
        fprintf(v10, "%s\n", [v12 UTF8String]);
      }

      v7 = -[GTDisplayResponse initWithID:]([GTDisplayResponse alloc], "initWithID:", [*(a1 + 32) requestID]);
      [(GTDisplayResponse *)v7 setError:v8];
    }
  }

  else
  {
    v7 = -[GTDisplayResponse initWithID:]([GTDisplayResponse alloc], "initWithID:", [*(a1 + 32) requestID]);
    [(GTDisplayResponse *)v7 setError:v5];
    v8 = v5;
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) completed];
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void Encode_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_1(&dword_24DBC9000, v2, v3, "Failed to archive display request %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __Encode_block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_1(&dword_24DBC9000, v2, v3, "Failed to unarchive display response %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void DeleteAllArchives(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = v1;
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v1];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = v3;
  v5 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:&__block_literal_global];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 pathExtension];
        v13 = [v12 caseInsensitiveCompare:@"gputrace"];

        if (!v13)
        {
          [v2 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v2;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v28 = 0;
        v21 = [v20 removeItemAtURL:v19 error:&v28];
        v22 = v28;

        if ((v21 & 1) == 0)
        {
          if (GTCoreLogUseOsLog())
          {
            v23 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v38 = v19;
              v39 = 2112;
              v40 = v22;
              _os_log_error_impl(&dword_24DBC9000, v23, OS_LOG_TYPE_ERROR, "Failed to delete archive %@ %@", buf, 0x16u);
            }
          }

          else
          {
            v24 = *MEMORY[0x277D85DF8];
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to delete archive %@ %@", v19, v22];
            fprintf(v24, "%s\n", [v23 UTF8String]);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v16);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __DeleteAllArchives_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [v3 code];

    if (v5 == 260)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (GTCoreLogUseOsLog())
  {
    v6 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __DeleteAllArchives_block_invoke_cold_1();
    }
  }

  else
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Directory enumeration failed whilst deleting archives %@", v3];
    fprintf(v7, "%s\n", [v8 UTF8String]);
  }

LABEL_10:

  return 1;
}

uint64_t GTFileTransferCompressionAlgorithmToNSDataCompressionAlgorithm(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return 0;
  }

  else
  {
    return qword_24DC0EEC0[a1 - 2];
  }
}

uint64_t ProcessCompressionStream(compression_stream *a1, const uint8_t *a2, size_t a3, uint8_t *a4, size_t a5, uint64_t a6, void *a7)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v13 = a7;
  a1->src_ptr = a2;
  a1->src_size = a3;
  if (!a3)
  {
LABEL_7:
    a6 = 1;
    goto LABEL_16;
  }

  while (compression_stream_process(a1, 0) != COMPRESSION_STATUS_ERROR)
  {
    if (!a1->dst_size)
    {
      if (!v13[2](v13, a4, a5, a6))
      {
        goto LABEL_15;
      }

      a1->dst_ptr = a4;
      a1->dst_size = a5;
    }

    if (!a1->src_size)
    {
      goto LABEL_7;
    }
  }

  if (!GTCoreLogUseOsLog())
  {
    v15 = *MEMORY[0x277D85DF8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to process compression stream"];
    fprintf(v15, "%s\n", [v16 UTF8String]);

    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v14 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    ProcessCompressionStream_cold_1();
  }

  if (a6)
  {
LABEL_14:
    v17 = MEMORY[0x277CCA9B8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Compression failed: %@", @"Failed to process compression stream", *MEMORY[0x277CCA450]];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a6 = [v17 errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v19];

LABEL_15:
    a6 = 0;
  }

LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return a6;
}

uint64_t FinalizeCompressionStream(compression_stream *a1, uint8_t *a2, size_t a3, uint64_t a4, void *a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = compression_stream_process(a1, 1);
  if (v10 == COMPRESSION_STATUS_OK)
  {
    while (v9[2](v9, a2, a3, a4))
    {
      a1->dst_ptr = a2;
      a1->dst_size = a3;
      v10 = compression_stream_process(a1, 1);
      if (v10)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_14;
  }

LABEL_4:
  if (v10 != COMPRESSION_STATUS_ERROR)
  {
    if (v9[2](v9, a2, a3 - a1->dst_size, a4))
    {
      a1->dst_ptr = a2;
      a1->dst_size = a3;
      a4 = 1;
      goto LABEL_15;
    }

LABEL_14:
    a4 = 0;
    goto LABEL_15;
  }

  if (!GTCoreLogUseOsLog())
  {
    v12 = *MEMORY[0x277D85DF8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to finalize compression stream"];
    fprintf(v12, "%s\n", [v13 UTF8String]);

    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v11 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    FinalizeCompressionStream_cold_1();
  }

  if (a4)
  {
LABEL_13:
    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Compression failed: %@", @"Failed to finalize compression stream", *MEMORY[0x277CCA450]];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a4 = [v14 errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v16];

    goto LABEL_14;
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return a4;
}

uint64_t GTFileWriterTransferFileEntries(void *a1, void *a2, void *a3, id *a4, void *a5)
{
  v135 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v121 = malloc_type_malloc([v10 chunkSize], 0x3260538DuLL);
  if ([v10 compressionAlgorithm])
  {
    v12 = v8;
    v115 = v9;
    v13 = v10;
    v113 = v11;
    if (![v12 count])
    {
      v46 = 1;
      goto LABEL_113;
    }

    memset(&buf, 0, sizeof(buf));
    v14 = [v13 compressionAlgorithm] - 1;
    if (v14 > 4)
    {
      v15 = 0;
    }

    else
    {
      v15 = dword_24DC0EEE0[v14];
    }

    v118 = v13;
    if (compression_stream_init(&buf, COMPRESSION_STREAM_ENCODE, v15))
    {
      if (GTCoreLogUseOsLog())
      {
        v47 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          GTFileWriterTransferFileEntries_cold_1();
        }
      }

      else
      {
        v77 = *MEMORY[0x277D85DF8];
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize encode compression stream"];
        fprintf(v77, "%s\n", [v47 UTF8String]);
      }

      if (a4)
      {
        v78 = MEMORY[0x277CCA9B8];
        *&v130 = *MEMORY[0x277CCA450];
        v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"Compression failed: %@", @"Failed to initialize encode compression stream"];
        v129[0] = v68;
        v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:&v130 count:1];
        *a4 = [v78 errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v79];

        v46 = 0;
LABEL_112:

        goto LABEL_113;
      }

      v46 = 0;
LABEL_113:

      goto LABEL_114;
    }

    v97 = v8;
    v99 = v11;
    v93 = v10;
    v95 = v9;
    v120 = malloc_type_malloc([v13 chunkSize], 0xE0DF840FuLL);
    buf.src_size = 0;
    buf.dst_ptr = v121;
    buf.dst_size = [v13 chunkSize];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v102 = v12;
    v48 = v12;
    v49 = [v48 countByEnumeratingWithState:&v130 objects:v129 count:16];
    if (!v49)
    {
LABEL_81:

LABEL_110:
      v46 = FinalizeCompressionStream(&buf, v121, [v13 chunkSize], a4, v113);
      v68 = 0;
      v9 = v95;
      v8 = v97;
      v10 = v93;
      v11 = v99;
      v12 = v102;
LABEL_111:
      free(v120);
      compression_stream_destroy(&buf);
      goto LABEL_112;
    }

    v50 = v49;
    v51 = *v131;
    v106 = *MEMORY[0x277CCA5B8];
    v104 = *MEMORY[0x277CCA450];
    v108 = *v131;
    v110 = v48;
LABEL_52:
    v52 = 0;
    v112 = v50;
    while (1)
    {
      if (*v131 != v51)
      {
        objc_enumerationMutation(v48);
      }

      v53 = *(*(&v130 + 1) + 8 * v52);
      v54 = objc_autoreleasePoolPush();
      v55 = [v53 destination];
      if (v55)
      {
        goto LABEL_76;
      }

      if ([v53 fileSize])
      {
        break;
      }

LABEL_77:
      objc_autoreleasePoolPop(v54);
      if (++v52 == v50)
      {
        v74 = [v48 countByEnumeratingWithState:&v130 objects:v129 count:16];
        v50 = v74;
        if (v74)
        {
          goto LABEL_52;
        }

        goto LABEL_81;
      }
    }

    v56 = objc_alloc(MEMORY[0x277CBEBC0]);
    v57 = [v53 path];
    v55 = [v56 initFileURLWithPath:v57 isDirectory:0 relativeToURL:v115];

    v58 = open([v55 fileSystemRepresentation], 0);
    if (v58 < 0)
    {
      v84 = *__error();
      if (GTCoreLogUseOsLog())
      {
        v85 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          GTFileWriterTransferFileEntries_cold_2();
        }
      }

      else
      {
        v86 = *MEMORY[0x277D85DF8];
        v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for reading (%d)", v55, v84];
        fprintf(v86, "%s\n", [v85 UTF8String]);
      }

      v87 = MEMORY[0x277CCA9B8];
      v128 = v104;
      *v125 = @"Failed to open file for reading";
      v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:&v128 count:1];
      v68 = [v87 errorWithDomain:v106 code:v84 userInfo:v88];

      v13 = v118;
LABEL_107:

      objc_autoreleasePoolPop(v54);
      if (!v68)
      {
        goto LABEL_110;
      }

      v9 = v95;
      v8 = v97;
      v10 = v93;
      v11 = v99;
      v12 = v102;
      if (a4)
      {
        v89 = v68;
        v46 = 0;
        *a4 = v68;
      }

      else
      {
        v46 = 0;
      }

      goto LABEL_111;
    }

    v59 = v58;
    v60 = 0;
    v61 = 0;
    while (2)
    {
      if (v60 >= [v53 fileSize])
      {
        v68 = v61;
      }

      else
      {
        v62 = [v53 fileSize] - v60;
        if (v62 >= [v13 chunkSize])
        {
          v62 = [v13 chunkSize];
        }

        v63 = v120;
        v64 = &v120[v62];
        while (v63 < v64)
        {
          v65 = read(v59, v63, v64 - v63);
          v63 += v65;
          if (v65 < 0)
          {
            goto LABEL_69;
          }
        }

        if ((v62 & 0x8000000000000000) != 0)
        {
LABEL_69:
          v69 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v70 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *v125 = 138412546;
              *&v125[4] = v55;
              v126 = 1024;
              v127 = v69;
              _os_log_error_impl(&dword_24DBC9000, v70, OS_LOG_TYPE_ERROR, "Failed to read from file %@ (%d)", v125, 0x12u);
            }
          }

          else
          {
            v71 = *MEMORY[0x277D85DF8];
            v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read from file %@ (%d)", v55, v69];
            fprintf(v71, "%s\n", [v70 UTF8String]);
          }

          v13 = v118;

          v72 = MEMORY[0x277CCA9B8];
          v123 = v104;
          v124 = @"Failed to read from file";
          v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
          v68 = [v72 errorWithDomain:v106 code:v69 userInfo:v73];

          break;
        }

        v60 += v62;
        v13 = v118;
        v66 = [v118 chunkSize];
        v122 = v61;
        v67 = ProcessCompressionStream(&buf, v120, v62, v121, v66, &v122, v113);
        v68 = v122;

        v61 = v68;
        if (v67)
        {
          continue;
        }
      }

      break;
    }

    close(v59);
    v48 = v110;
    if (v68)
    {
      goto LABEL_107;
    }

    v51 = v108;
    v50 = v112;
LABEL_76:

    goto LABEL_77;
  }

  v16 = v8;
  v116 = v9;
  v117 = v10;
  v98 = v11;
  v17 = v11;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v130 objects:v129 count:16];
  if (!v19)
  {

    v46 = 1;
    goto LABEL_104;
  }

  v92 = v10;
  v94 = v9;
  v96 = v8;
  v20 = 0;
  v21 = *v131;
  v101 = v17;
  v111 = *MEMORY[0x277CCA5B8];
  v109 = *MEMORY[0x277CCA450];
  v105 = *v131;
  v107 = v18;
LABEL_7:
  v22 = 0;
  v114 = v19;
  while (1)
  {
    if (*v131 != v21)
    {
      objc_enumerationMutation(v18);
    }

    v23 = *(*(&v130 + 1) + 8 * v22);
    v24 = objc_autoreleasePoolPush();
    v25 = [v23 destination];
    if (v25)
    {
      v26 = v25;
LABEL_40:

      goto LABEL_41;
    }

    if ([v23 fileSize])
    {
      break;
    }

LABEL_41:
    objc_autoreleasePoolPop(v24);
    if (++v22 == v19)
    {
      v19 = [v18 countByEnumeratingWithState:&v130 objects:v129 count:16];
      if (v19)
      {
        goto LABEL_7;
      }

      v11 = v98;
      v45 = a4;
      goto LABEL_96;
    }
  }

  v27 = objc_alloc(MEMORY[0x277CBEBC0]);
  v28 = [v23 path];
  v26 = [v27 initFileURLWithPath:v28 isDirectory:0 relativeToURL:v116];

  v29 = open([v26 fileSystemRepresentation], 0);
  if ((v29 & 0x80000000) == 0)
  {
    v30 = v29;
    if ([v23 fileSize])
    {
      v119 = 0;
      v31 = 0;
      while (2)
      {
        v32 = [v23 fileSize] - v31;
        v33 = [v117 chunkSize];
        if (v32 >= v33 - v20)
        {
          v34 = v33 - v20;
        }

        else
        {
          v34 = v32;
        }

        v35 = v20;
        v36 = &v121[v20];
        v37 = &v121[v20 + v34];
        while (v36 < v37)
        {
          v38 = read(v30, v36, v37 - v36);
          v36 += v38;
          if (v38 < 0)
          {
            goto LABEL_30;
          }
        }

        if ((v34 & 0x8000000000000000) != 0)
        {
LABEL_30:
          v39 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v40 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.dst_ptr) = 138412546;
              *(&buf.dst_ptr + 4) = v26;
              WORD2(buf.dst_size) = 1024;
              *(&buf.dst_size + 6) = v39;
              _os_log_error_impl(&dword_24DBC9000, v40, OS_LOG_TYPE_ERROR, "Failed to read from file %@ (%d)", &buf, 0x12u);
            }
          }

          else
          {
            v41 = *MEMORY[0x277D85DF8];
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read from file %@ (%d)", v26, v39];
            fprintf(v41, "%s\n", [v40 UTF8String]);
          }

          v42 = v39;

          v43 = MEMORY[0x277CCA9B8];
          v124 = v109;
          v128 = @"Failed to read from file";
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v124 count:1];
          v19 = [v43 errorWithDomain:v111 code:v42 userInfo:v44];

LABEL_36:
          v20 = v35;
          break;
        }

        v20 = v34 + v35;
        if (v34 + v35 == [v117 chunkSize])
        {
          v35 += v34;
          v123 = v119;
          v103 = v101[2](v101, v121, v35, &v123);
          v19 = v123;

          if (!v103)
          {
            goto LABEL_36;
          }

          v20 = 0;
          v119 = v19;
        }

        else
        {
          v19 = v119;
        }

        v31 += v34;
        if (v31 < [v23 fileSize])
        {
          continue;
        }

        break;
      }

      close(v30);
      if (v19)
      {
        v45 = a4;
        v18 = v107;
        goto LABEL_93;
      }

      v21 = v105;
      v18 = v107;
    }

    else
    {
      close(v30);
    }

    v19 = v114;
    goto LABEL_40;
  }

  v75 = *__error();
  if (GTCoreLogUseOsLog())
  {
    v76 = gt_tagged_log(0x10u);
    v45 = a4;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      GTFileWriterTransferFileEntries_cold_2();
    }
  }

  else
  {
    v80 = *MEMORY[0x277D85DF8];
    v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for reading (%d)", v26, v75];
    fprintf(v80, "%s\n", [v76 UTF8String]);
    v45 = a4;
  }

  v81 = MEMORY[0x277CCA9B8];
  *v125 = v109;
  buf.dst_ptr = @"Failed to open file for reading";
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v125 count:1];
  v19 = [v81 errorWithDomain:v111 code:v75 userInfo:v82];

LABEL_93:
  objc_autoreleasePoolPop(v24);

  v11 = v98;
  if (!v19)
  {
LABEL_96:
    v17 = v101;
    if (v20)
    {
      v46 = v101[2](v101, v121, v20, v45);
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v46 = 1;
    }

    goto LABEL_103;
  }

  v17 = v101;
  if (v45)
  {
    v83 = v19;
    v46 = 0;
    *v45 = v19;
  }

  else
  {
    v46 = 0;
  }

LABEL_103:
  v9 = v94;
  v8 = v96;
  v10 = v92;
LABEL_104:

LABEL_114:
  free(v121);

  v90 = *MEMORY[0x277D85DE8];
  return v46;
}

id LocalArchiveURL(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEBC0];
  ++LocalArchivePath_downloadNumber;
  v4 = a2;
  v5 = a1;
  v6 = [v5 lastPathComponent];
  v7 = [v6 stringByDeletingPathExtension];

  v8 = [v5 pathExtension];

  v9 = [v7 stringByAppendingFormat:@"-%04u", LocalArchivePath_downloadNumber];
  v10 = [v9 stringByAppendingPathExtension:v8];

  v11 = [v4 stringByAppendingPathComponent:v10];

  v12 = [v3 fileURLWithPath:v11 isDirectory:1];

  return v12;
}

const char *GTFileTransferCompressionAlgorithmToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return "<UNKNOWN>";
  }

  else
  {
    return off_2796615C0[a1];
  }
}

BOOL GTFileTransferOptionsValidate(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 && [v1 chunkSize] && objc_msgSend(v2, "compressionAlgorithm") < 6;

  return v3;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void __DeleteAllArchives_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void GTFileWriterTransferFileEntries_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

GTReplayRequestToken *ProxyReplayerBatchRequest(void *a1, void *a2, void *a3, const char *a4, void *a5, uint64_t a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v46 = v11;
  v14 = -[GTReplayRequestToken initWithService:andTokenId:]([GTReplayRequestToken alloc], "initWithService:andTokenId:", v11, [v12 requestID]);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "_cmd", a4);
  xpc_dictionary_set_flag(empty, "_flags", 2);
  v42 = v14;
  xpc_dictionary_set_uint64(empty, "requestID", [(GTReplayRequestToken *)v14 tokenId]);
  v43 = v13;
  if (v13)
  {
    xpc_dictionary_set_flag(empty, "flags", 0);
  }

  v16 = xpc_array_create_empty();
  v17 = xpc_array_create_empty();
  v18 = xpc_array_create_empty();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v44 = v12;
  v19 = [v12 requests];
  v20 = [v19 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v20)
  {

    xpc_dictionary_set_value(empty, "_batch_requestIDs", v16);
    v29 = "_batch_requestObjs";
    v30 = empty;
    v31 = v17;
    goto LABEL_16;
  }

  v21 = v20;
  xdict = empty;
  v41 = v10;
  LOBYTE(v22) = 0;
  v23 = *v53;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v53 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v52 + 1) + 8 * i);
      v26 = xpc_uint64_create([v25 requestID]);
      xpc_array_append_value(v16, v26);

      v27 = xpc_nsobject_create(v25);
      xpc_array_append_value(v17, v27);

      v28 = xpc_dictionary_create_empty();
      [v25 encodeXPCOnlyObjects:v28];
      v22 = v22 || xpc_dictionary_get_count(v28) != 0;
      xpc_array_append_value(v18, v28);
    }

    v21 = [v19 countByEnumeratingWithState:&v52 objects:v56 count:16];
  }

  while (v21);

  empty = xdict;
  xpc_dictionary_set_value(xdict, "_batch_requestIDs", v16);
  xpc_dictionary_set_value(xdict, "_batch_requestObjs", v17);
  v10 = v41;
  if (v22)
  {
    v29 = "_batch_requestXPCObjs";
    v30 = xdict;
    v31 = v18;
LABEL_16:
    xpc_dictionary_set_value(v30, v29, v31);
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __ProxyReplayerBatchRequest_block_invoke;
  v47[3] = &unk_2796617F8;
  v48 = v44;
  v32 = v42;
  v49 = v32;
  v50 = v43;
  v51 = a6;
  v33 = v43;
  v34 = v44;
  [v10 sendMessage:empty replyHandler:v47];
  v35 = empty;
  v36 = v50;
  v37 = v32;

  v38 = *MEMORY[0x277D85DE8];
  return v32;
}

id DispatchReplayerBatchRequest(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = a2;
  uint64 = xpc_dictionary_get_uint64(v10, "requestID");
  flag = xpc_dictionary_get_flag(v10, "flags", 0);
  v13 = xpc_dictionary_get_array(v10, "_batch_requestIDs");
  v14 = xpc_dictionary_get_array(v10, "_batch_requestObjs");
  v15 = xpc_dictionary_get_array(v10, "_batch_requestXPCObjs");
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:xpc_array_get_count(v13)];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __DispatchReplayerBatchRequest_block_invoke;
  applier[3] = &unk_279661820;
  v34 = v14;
  v35 = v16;
  v36 = v15;
  v37 = v9;
  v27 = v9;
  v17 = v15;
  v18 = v16;
  v19 = v14;
  xpc_array_apply(v13, applier);
  v20 = [[GTReplayRequestBatch alloc] initNoRequestID];
  [v20 setRequestID:uint64];
  v21 = [v18 copy];
  [v20 setRequests:v21];

  v22 = gt_xpc_dictionary_create_reply(v10);

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __DispatchReplayerBatchRequest_block_invoke_2;
  v28[3] = &unk_279661848;
  v32 = flag;
  v29 = v8;
  v30 = v22;
  v31 = v7;
  v23 = v7;
  v24 = v22;
  v25 = v8;
  [v20 setCompletionHandler:v28];

  return v20;
}

void __ProxyReplayerBatchRequest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v5, "response", v10);
    v12 = [nsobject_classes error];

    if (v12 || (uint64 = xpc_dictionary_get_uint64(v5, "bulkDataHandle")) == 0)
    {
      v13 = [*(a1 + 32) completionHandler];

      if (v13)
      {
        v14 = [*(a1 + 32) completionHandler];
        (v14)[2](v14, nsobject_classes);
      }

      [*(a1 + 40) completed];
    }

    else
    {
      v18 = uint64;
      v19 = [*(a1 + 48) transferOptions];
      [v19 setCompressionAlgorithm:*(a1 + 56)];
      v20 = *(a1 + 48);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __ProxyReplayerBatchRequest_block_invoke_2;
      v21[3] = &unk_2796617D0;
      v22 = nsobject_classes;
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      [v20 downloadData:v18 usingTransferOptions:v19 completionHandler:v21];
    }
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setError:v6];
    v15 = [*(a1 + 32) completionHandler];

    if (v15)
    {
      v16 = [*(a1 + 32) completionHandler];
      (v16)[2](v16, v10);
    }

    [*(a1 + 40) completed];
  }
}

void __ProxyReplayerBatchRequest_block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [a1[4] setData:a2];
  if (!a2)
  {
    [a1[4] setError:v7];
  }

  v5 = [a1[5] completionHandler];

  if (v5)
  {
    v6 = [a1[5] completionHandler];
    (v6)[2](v6, a1[4]);
  }

  [a1[6] completed];
}

uint64_t __DispatchReplayerBatchRequest_block_invoke(uint64_t a1, size_t a2, void *a3)
{
  v3 = a3;
  v44 = MEMORY[0x277CBEB98];
  v45 = v3;
  v43 = objc_opt_class();
  v42 = objc_opt_class();
  v39 = objc_opt_class();
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v44 setWithObjects:{v43, v42, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  nsobject_classes = xpc_array_get_nsobject_classes(*(a1 + 32), a2, v14);
  if (nsobject_classes)
  {
    v16 = nsobject_classes;
    v17 = v45;
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = xpc_array_get_dictionary(v18, a2);
      [v16 decodeXPCOnlyObjects:v19];
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      (*(v20 + 16))(v20, v16);
    }
  }

  else
  {
    v16 = [[GTReplayRequestUnknown alloc] initNoRequestID];
    v17 = v45;
    [v16 setRequestID:xpc_uint64_get_value(v45)];
  }

  [*(a1 + 40) setObject:v16 atIndexedSubscript:a2];

  return 1;
}

void __DispatchReplayerBatchRequest_block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v4 = [v6 data];
    v5 = [v3 handoverDataForDownload:v4];

    [v6 setData:0];
    xpc_dictionary_set_uint64(*(a1 + 40), "bulkDataHandle", v5);
  }

  xpc_dictionary_set_nsobject(*(a1 + 40), "response", v6);
  [*(a1 + 48) sendMessage:*(a1 + 40)];
}

id FindRemoteGTFileWriterService(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = allServicesForDeviceUDID(a1, a2);
  v7 = filteredArrayByService(v6, &unk_2860ED240);
  if ([v7 count] == 1)
  {
    v8 = [v7 firstObject];
  }

  else
  {
    v9 = filteredArrayByPID(v7, [v5 currentRemoteRelayPid]);
    v8 = [v9 firstObject];
  }

  return v8;
}

id LocalArchiveURLFromRemoteURL(void *a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = GTTransportArchiveDirectory();
  v5 = [v3 initFileURLWithPath:v4 isDirectory:1];

  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 path];
  v8 = [v2 path];

  v9 = [v7 stringByAppendingPathComponent:v8];
  v10 = [v6 fileURLWithPath:v9 isDirectory:1];

  return v10;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __NewFileEntriesForURL_block_invoke(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  return 0;
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

GTTelemetryRequestToken *ProxyTelemetryBatchRequest(void *a1, void *a2, void *a3, const char *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v7 = a2;
  v8 = a3;
  v28 = v7;
  v9 = -[GTTelemetryRequestToken initWithService:andTokenId:]([GTTelemetryRequestToken alloc], "initWithService:andTokenId:", v7, [v8 requestID]);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "_cmd", a4);
  v27 = v9;
  xpc_dictionary_set_uint64(empty, "requestID", [(GTTelemetryRequestToken *)v9 tokenId]);
  v11 = xpc_array_create_empty();
  v12 = xpc_array_create_empty();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [v8 requests];
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = xpc_uint64_create([v18 requestID]);
        xpc_array_append_value(v11, v19);

        v20 = xpc_nsobject_create(v18);
        xpc_array_append_value(v12, v20);
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  xpc_dictionary_set_value(empty, "_batch_requestIDs", v11);
  xpc_dictionary_set_value(empty, "_batch_requestObjs", v12);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __ProxyTelemetryBatchRequest_block_invoke;
  v30[3] = &unk_279661668;
  v31 = v8;
  v21 = v27;
  v32 = v21;
  v22 = v8;
  [v29 sendMessage:empty replyHandler:v30];
  v23 = v32;
  v24 = v21;

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

id DispatchTelemetryBatchRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  uint64 = xpc_dictionary_get_uint64(v4, "requestID");
  v6 = xpc_dictionary_get_array(v4, "_batch_requestIDs");
  v7 = xpc_dictionary_get_array(v4, "_batch_requestObjs");
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:xpc_array_get_count(v6)];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __DispatchTelemetryBatchRequest_block_invoke;
  applier[3] = &unk_2796619B8;
  v21 = v7;
  v22 = v8;
  v9 = v8;
  v10 = v7;
  xpc_array_apply(v6, applier);
  v11 = [[GTTelemetryRequestBatch alloc] initNoRequestID];
  [v11 setRequestID:uint64];
  v12 = [v9 copy];
  [v11 setRequests:v12];

  v13 = gt_xpc_dictionary_create_reply(v4);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __DispatchTelemetryBatchRequest_block_invoke_2;
  v17[3] = &unk_2796619E0;
  v18 = v13;
  v19 = v3;
  v14 = v3;
  v15 = v13;
  [v11 setCompletionHandler:v17];

  return v11;
}

void __ProxyTelemetryBatchRequest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v13)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v13, "response", v9);
  }

  else
  {
    nsobject_classes = objc_opt_new();
    [nsobject_classes setError:v5];
  }

  v11 = [*(a1 + 32) completionHandler];

  if (v11)
  {
    v12 = [*(a1 + 32) completionHandler];
    (v12)[2](v12, nsobject_classes);
  }

  [*(a1 + 40) completed];
}

uint64_t __DispatchTelemetryBatchRequest_block_invoke(uint64_t a1, size_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  nsobject_classes = xpc_array_get_nsobject_classes(*(a1 + 32), a2, v10);
  if (!nsobject_classes)
  {
    nsobject_classes = [[GTTelemetryRequestUnknown alloc] initNoRequestID];
    [nsobject_classes setRequestID:xpc_uint64_get_value(v5)];
  }

  [*(a1 + 40) setObject:nsobject_classes atIndexedSubscript:a2];

  return 1;
}

uint64_t __DispatchTelemetryBatchRequest_block_invoke_2(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nsobject(*(a1 + 32), "response", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

void GTPoint3DDecode(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v6 = a1;
  v7 = [v5 stringByAppendingString:@".x"];
  *a3 = [v6 decodeInt64ForKey:v7];

  v8 = [v5 stringByAppendingString:@".y"];
  a3[1] = [v6 decodeInt64ForKey:v8];

  v10 = [v5 stringByAppendingString:@".z"];

  v9 = [v6 decodeInt64ForKey:v10];
  a3[2] = v9;
}

void GTPoint3DEncode(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a3;
  v7 = a1;
  v8 = [v6 stringByAppendingString:@".x"];
  [v7 encodeInt64:v5 forKey:v8];

  v9 = a2[1];
  v10 = [v6 stringByAppendingString:@".y"];
  [v7 encodeInt64:v9 forKey:v10];

  v11 = a2[2];
  v12 = [v6 stringByAppendingString:@".z"];

  [v7 encodeInt64:v11 forKey:v12];
}

uint64_t GTPoint2DDecode(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 stringByAppendingString:@".x"];
  v6 = [v4 decodeInt64ForKey:v5];

  v7 = [v3 stringByAppendingString:@".y"];

  [v4 decodeInt64ForKey:v7];
  return v6;
}

void GTPoint2DEncode(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = [v7 stringByAppendingString:@".x"];
  [v8 encodeInt64:a2 forKey:v9];

  v10 = [v7 stringByAppendingString:@".y"];

  [v8 encodeInt64:a3 forKey:v10];
}

unint64_t GTDispatchUIDDecode(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 stringByAppendingString:@".dispatchIndex"];
  v6 = [v4 decodeInt32ForKey:v5];

  v7 = [v3 stringByAppendingString:@".dispatchICBIndex"];

  v8 = [v4 decodeInt32ForKey:v7];
  return v6 | (v8 << 32);
}

void GTDispatchUIDEncode(void *a1, unint64_t a2, void *a3)
{
  v5 = HIDWORD(a2);
  v6 = a3;
  v7 = a1;
  v8 = [v6 stringByAppendingString:@".dispatchIndex"];
  [v7 encodeInt32:a2 forKey:v8];

  v9 = [v6 stringByAppendingString:@".dispatchICBIndex"];

  [v7 encodeInt32:v5 forKey:v9];
}

void GTMTLTensorExtentsDecode(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  v5 = (a3 + 8);
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  v6 = a2;
  v7 = a1;
  v8 = [v6 stringByAppendingString:@".rank"];
  *a3 = [v7 decodeInt64ForKey:v8];

  v9 = objc_opt_class();
  v10 = [v6 stringByAppendingString:@".extents"];

  v16 = [v7 decodeObjectOfClass:v9 forKey:v10];

  if (v16 && [v16 length] >= 0x80)
  {
    v11 = [v16 bytes];
    v12 = v11[5];
    v5[4] = v11[4];
    v5[5] = v12;
    v13 = v11[7];
    v5[6] = v11[6];
    v5[7] = v13;
    v14 = v11[1];
    *v5 = *v11;
    v5[1] = v14;
    v15 = v11[3];
    v5[2] = v11[2];
    v5[3] = v15;
  }
}

void GTMTLTensorExtentsEncode(void *a1, uint64_t *a2, void *a3)
{
  v4 = a2 + 1;
  v5 = *a2;
  v6 = a3;
  v7 = a1;
  v8 = [v6 stringByAppendingString:@".rank"];
  [v7 encodeInt64:v5 forKey:v8];

  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:128];
  v9 = [v6 stringByAppendingString:@".extents"];

  [v7 encodeObject:v10 forKey:v9];
}

void GTMTLTensorSliceDecode(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = a1;
  v7 = [v5 stringByAppendingString:@".origin"];
  GTMTLTensorExtentsDecode(v6, v7, a3);

  v8 = [v5 stringByAppendingString:@".dimensions"];

  GTMTLTensorExtentsDecode(v6, v8, a3 + 136);
}

void GTMTLTensorSliceEncode(void *a1, __int128 *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [v5 stringByAppendingString:@".origin"];
  v8 = a2[7];
  v23 = a2[6];
  v24 = v8;
  v25 = *(a2 + 16);
  v9 = a2[3];
  v19 = a2[2];
  v20 = v9;
  v10 = a2[5];
  v21 = a2[4];
  v22 = v10;
  v11 = a2[1];
  v17 = *a2;
  v18 = v11;
  GTMTLTensorExtentsEncode(v6, &v17, v7);

  v12 = [v5 stringByAppendingString:@".dimensions"];

  v13 = *(a2 + 216);
  v14 = *(a2 + 248);
  v23 = *(a2 + 232);
  v24 = v14;
  v25 = *(a2 + 33);
  v15 = *(a2 + 152);
  v16 = *(a2 + 184);
  v19 = *(a2 + 168);
  v20 = v16;
  v21 = *(a2 + 200);
  v22 = v13;
  v17 = *(a2 + 136);
  v18 = v15;
  GTMTLTensorExtentsEncode(v6, &v17, v12);
}

const char *GTDecodeFunctionTypeShortString(__int16 a1)
{
  if ((a1 - 1) > 7u)
  {
    return "unknown";
  }

  else
  {
    return off_279661A00[(a1 - 1)];
  }
}

GTCaptureRequestToken *ProxyCaptureBatchRequest(void *a1, void *a2, void *a3, const char *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v7 = a2;
  v8 = a3;
  v28 = v7;
  v9 = -[GTCaptureRequestToken initWithCaptureService:andTokenId:]([GTCaptureRequestToken alloc], "initWithCaptureService:andTokenId:", v7, [v7 nextRequestID]);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "_cmd", a4);
  v27 = v9;
  xpc_dictionary_set_uint64(empty, "requestID", [(GTCaptureRequestToken *)v9 tokenId]);
  v11 = xpc_array_create_empty();
  v12 = xpc_array_create_empty();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [v8 requests];
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = xpc_uint64_create([v18 requestID]);
        xpc_array_append_value(v11, v19);

        v20 = xpc_nsobject_create(v18);
        xpc_array_append_value(v12, v20);
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  xpc_dictionary_set_value(empty, "_batch_requestIDs", v11);
  xpc_dictionary_set_value(empty, "_batch_requestObjs", v12);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __ProxyCaptureBatchRequest_block_invoke;
  v30[3] = &unk_279661668;
  v31 = v8;
  v21 = v27;
  v32 = v21;
  v22 = v8;
  [v29 sendMessage:empty replyHandler:v30];
  v23 = v32;
  v24 = v21;

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

GTCaptureRequestBatch *DispatchCaptureBatchRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  uint64 = xpc_dictionary_get_uint64(v4, "requestID");
  v6 = xpc_dictionary_get_array(v4, "_batch_requestIDs");
  v7 = xpc_dictionary_get_array(v4, "_batch_requestObjs");
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:xpc_array_get_count(v6)];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __DispatchCaptureBatchRequest_block_invoke;
  applier[3] = &unk_2796619B8;
  v21 = v7;
  v22 = v8;
  v9 = v8;
  v10 = v7;
  xpc_array_apply(v6, applier);
  v11 = [[GTCaptureRequestBatch alloc] initWithRequestID:uint64];
  v12 = [v9 copy];
  [(GTCaptureRequestBatch *)v11 setRequests:v12];

  v13 = gt_xpc_dictionary_create_reply(v4);

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __DispatchCaptureBatchRequest_block_invoke_2;
  v17[3] = &unk_279661A98;
  v18 = v13;
  v19 = v3;
  v14 = v3;
  v15 = v13;
  [(GTCaptureRequestBatch *)v11 setCompletionHandler:v17];

  return v11;
}

void __ProxyCaptureBatchRequest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v13)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    nsobject_classes = xpc_dictionary_get_nsobject_classes(v13, "response", v9);
  }

  else
  {
    nsobject_classes = objc_opt_new();
    [nsobject_classes setError:v5];
  }

  v11 = [*(a1 + 32) completionHandler];

  if (v11)
  {
    v12 = [*(a1 + 32) completionHandler];
    (v12)[2](v12, nsobject_classes);
  }

  [*(a1 + 40) completed];
}

uint64_t __DispatchCaptureBatchRequest_block_invoke(uint64_t a1, size_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  nsobject_classes = xpc_array_get_nsobject_classes(*(a1 + 32), a2, v11);
  if (!nsobject_classes)
  {
    nsobject_classes = [[GTCaptureRequestUnknown alloc] initWithRequestID:xpc_uint64_get_value(v5)];
  }

  [*(a1 + 40) setObject:nsobject_classes atIndexedSubscript:a2];

  return 1;
}

uint64_t __DispatchCaptureBatchRequest_block_invoke_2(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nsobject(*(a1 + 32), "response", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

vm_address_t GTCoreAlloc(memory_object_size_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  address = 0;
  object_handle = 0;
  size = a1;
  v2 = MEMORY[0x277D85F48];
  memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x277D85F48], &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v4 = memory_entry_64;
    v5 = gt_tagged_log(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = mach_error_string(v4);
      *buf = 67109378;
      v17 = v4;
      v18 = 2080;
      v19 = v6;
      v7 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_10:
      _os_log_error_impl(&dword_24DBC9000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
    }
  }

  else
  {
    v8 = vm_map(*v2, &address, a1, 0, 1, object_handle, 0, 0, 3, 3, 1u);
    if (!v8)
    {
      mach_port_deallocate(*v2, object_handle);
      result = address;
      goto LABEL_7;
    }

    v9 = v8;
    v5 = gt_tagged_log(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = mach_error_string(v9);
      *buf = 67109378;
      v17 = v9;
      v18 = 2080;
      v19 = v12;
      v7 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_10;
    }
  }

  result = 0;
LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
  return result;
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

    v13 = &stru_2860D7200;
    if (a3)
    {
      v13 = @":";
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%@%@]", v12, v11, v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id gt_tagged_log(unsigned int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 == 18)
  {
LABEL_5:
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
    goto LABEL_13;
  }

  if (a1 >= 0x11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      LODWORD(v10) = 67109120;
      HIDWORD(v10) = a1;
      _os_log_fault_impl(&dword_24DBC9000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "fail: Invalid log tag: %u", &v10, 8u);
    }

    goto LABEL_5;
  }

  v4 = &GTCoreLog_getLogForTag_s_logs[3 * a1];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __GTCoreLog_getLogForTag_block_invoke;
  v13 = &__block_descriptor_44_e5_v8__0l;
  LODWORD(v15) = a1;
  v14 = v4;
  if (*v4 != -1)
  {
    dispatch_once(&GTCoreLog_getLogForTag_s_logs[3 * a1], &v10);
  }

  if (v4[1] && ([MEMORY[0x277CBEBD0] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", v4[1]), v5, !v6))
  {
    v7 = MEMORY[0x277D86228];
  }

  else
  {
    v7 = v4[2];
  }

  v2 = v7;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t atomic_cleanup(uint64_t a1)
{
  if (hash_mutex == a1)
  {
    hash_mutex = 0;
  }

  return 0;
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
    v5 = *(p + 1);
    if (!v5)
    {
      break;
    }

    apr_pool_destroy(v5);
  }

  while (1)
  {
    v6 = *(p + 4);
    if (!v6)
    {
      break;
    }

    *(p + 4) = *v6;
    (*(v6 + 16))(*(v6 + 8));
  }

  v7 = *(p + 7);
  if (!v7)
  {
    goto LABEL_42;
  }

  v8 = *(p + 7);
  do
  {
    if (apr_proc_wait(*v8, 1, v1, v2) != 70006)
    {
      *(v8 + 8) = 0;
    }

    v8 = *(v8 + 16);
  }

  while (v8);
  v9 = v7;
  do
  {
    v10 = v9[2];
    if (v10 == 1)
    {
      apr_proc_kill(**v9, 9);
    }

    else
    {
      v11 = v10 == 4 || v10 == 2;
      if (v11 && !apr_proc_kill(**v9, 15))
      {
        LODWORD(v8) = 1;
      }
    }

    v9 = *(v9 + 2);
  }

  while (v9);
  v12 = v7;
  if (!v8)
  {
    goto LABEL_36;
  }

  v35 = xmmword_24DC0EF10;
  select(0, 0, 0, 0, &v35);
  v13 = 46875;
  while (2)
  {
    v14 = 0;
    v15 = v7;
    do
    {
      v16 = v14;
      if (v15[2] == 2)
      {
        v14 = 1;
        if (apr_proc_wait(*v15, 1, v1, v2) == 70006)
        {
          goto LABEL_31;
        }

        v15[2] = 0;
      }

      v14 = v16;
LABEL_31:
      v15 = *(v15 + 2);
    }

    while (v15);
    if (v14 && v13 <= 0x2DC6BF)
    {
      *&v35 = v13 / 0xF4240;
      *(&v35 + 1) = v13 % 0xF4240;
      select(0, 0, 0, 0, &v35);
      v13 *= 2;
      continue;
    }

    break;
  }

  v12 = v7;
  do
  {
LABEL_36:
    if (v12[2] == 2)
    {
      apr_proc_kill(**v12, 9);
    }

    v12 = *(v12 + 2);
  }

  while (v12);
  do
  {
    if (v7[2])
    {
      apr_proc_wait(*v7, 0, v1, v2);
    }

    v7 = *(v7 + 2);
  }

  while (v7);
LABEL_42:
  if (*p)
  {
    v17 = *(*(*p + 48) + 24);
    if (v17)
    {
      pthread_mutex_lock((v17 + 8));
    }

    v18 = *(p + 2);
    **(p + 3) = v18;
    if (v18)
    {
      *(v18 + 24) = *(p + 3);
    }

    if (v17)
    {
      pthread_mutex_unlock((v17 + 8));
    }
  }

  v19 = *(p + 6);
  v20 = *(p + 12);
  *v20[1] = 0;
  if (v19[4] == p)
  {
    v19[3] = 0;
  }

  else
  {
    v21 = v19[3];
    if (v21)
    {
      pthread_mutex_lock((v21 + 8));
    }
  }

  v22 = 0;
  v23 = *v19;
  v24 = v19[1];
  v25 = (v19 + 5);
  v26 = v19[2];
  do
  {
    while (1)
    {
      v27 = v20;
      v20 = *v20;
      v28 = *(v27 + 4);
      if (!v24 || v26 > v28)
      {
        break;
      }

      *v27 = v22;
      v22 = v27;
      if (!v20)
      {
        goto LABEL_69;
      }
    }

    if (v28 > 0x13)
    {
      *v27 = *v25;
      *v25 = v27;
    }

    else
    {
      v29 = v25[v28];
      *v27 = v29;
      if (v23 <= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v23;
      }

      if (!v29)
      {
        v23 = v30;
      }

      v25[v28] = v27;
    }

    v31 = v26 > v28;
    v26 += ~v28;
    if (!v31)
    {
      v26 = 0;
    }
  }

  while (v20);
LABEL_69:
  *v19 = v23;
  v19[2] = v26;
  v32 = v19[3];
  if (v32)
  {
    pthread_mutex_unlock((v32 + 8));
  }

  if (v22)
  {
    v33 = MEMORY[0x277D85F48];
    do
    {
      v34 = *v22;
      MEMORY[0x253034DA0](*v33, v22, ((*(v22 + 4) << 12) + 4096));
      v22 = v34;
    }

    while (v34);
  }

  if (v19[4] == p)
  {
    apr_allocator_destroy(v19);
  }
}

void apr_allocator_destroy(apr_allocator_t *allocator)
{
  v1 = 0;
  v2 = allocator + 40;
  v3 = MEMORY[0x277D85F48];
  do
  {
    while (1)
    {
      v4 = *&v2[8 * v1];
      if (!v4)
      {
        break;
      }

      *&v2[8 * v1] = *v4;
      v5 = (*(v4 + 16) << 12);
      MEMORY[0x253034DA0](*v3);
    }

    ++v1;
  }

  while (v1 != 20);
  v6 = *v3;

  JUMPOUT(0x253034DA0);
}

uint64_t **allocator_alloc(unint64_t *a1, unint64_t a2)
{
  if (a2 + 4135 >= 0x2000)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v2 = 0x2000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) < a2 || v2 == 0)
  {
    return 0;
  }

  v4 = v2 >> 12;
  v5 = (v2 >> 12) - 1;
  if (HIDWORD(v5))
  {
    return 0;
  }

  v8 = a1[3];
  if (v8)
  {
    pthread_mutex_lock((v8 + 8));
  }

  v10 = (a1 + 5);
  v9 = *a1;
  if (v5 <= *a1)
  {
    v13 = &v10[v5];
    v6 = *v13;
    v14 = *v13 == 0;
    v15 = v5 < v9;
    if (*v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 >= v9;
    }

    if (!v16)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v6 = v17;
        v14 = v17 == 0;
        v15 = v4 < v9;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4 >= v9;
        }

        ++v4;
      }

      while (!v18);
    }

    if (v14)
    {
      goto LABEL_28;
    }

    v21 = *v6;
    *v13 = *v6;
    if (v21 == 0 && !v15)
    {
      v22 = v13 - 1;
      do
      {
        if (*v22--)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 == 1;
        }

        --v9;
      }

      while (!v24);
      *a1 = v9;
    }

    v12 = (*(v6 + 4) + 1);
LABEL_41:
    v25 = a1[2] + v12;
    if (v25 >= a1[1])
    {
      v25 = a1[1];
    }

    a1[2] = v25;
    v26 = a1[3];
    if (v26)
    {
      pthread_mutex_unlock((v26 + 8));
    }

    goto LABEL_45;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_28;
  }

  v11 = *(v6 + 4);
  if (v5 <= v11)
  {
LABEL_17:
    *v10 = *v6;
    v12 = (v11 + 1);
    goto LABEL_41;
  }

  while (1)
  {
    v10 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v11 = *(v6 + 4);
    if (v5 <= v11)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  v19 = a1[3];
  if (v19)
  {
    pthread_mutex_unlock((v19 + 8));
  }

  v20 = GTCoreAlloc(v2);
  v6 = v20;
  if (v20)
  {
    *(v20 + 16) = v5;
    *(v20 + 32) = v20 + v2;
LABEL_45:
    *v6 = 0;
    v6[3] = (v6 + 5);
  }

  return v6;
}

apr_status_t apr_pool_create_ex(apr_pool_t **newpool, apr_pool_t *parent, apr_abortfunc_t abort_fn, apr_allocator_t *allocator)
{
  v4 = allocator;
  v5 = abort_fn;
  *newpool = 0;
  if (parent)
  {
    v7 = parent;
  }

  else
  {
    v7 = global_pool;
  }

  if (!abort_fn && v7)
  {
    v5 = *(v7 + 8);
  }

  if (!allocator)
  {
    v4 = *(v7 + 6);
  }

  v8 = allocator_alloc(v4, 0x1FD8uLL);
  if (v8)
  {
    *v8 = v8;
    v8[1] = v8;
    v9 = v8[3];
    v8[3] = v9 + 15;
    v9[12] = v8;
    v9[13] = (v9 + 15);
    v9[14] = 0;
    v9[6] = v4;
    v9[7] = 0;
    v9[4] = 0;
    v9[5] = 0;
    v9[10] = 0;
    v9[11] = v8;
    v9[8] = v5;
    v9[9] = 0;
    *v9 = v7;
    v9[1] = 0;
    if (v7)
    {
      v10 = *(*(v7 + 6) + 24);
      if (v10)
      {
        pthread_mutex_lock((v10 + 8));
      }

      v13 = *(v7 + 1);
      v12 = (v7 + 8);
      v11 = v13;
      v9[2] = v13;
      if (v13)
      {
        *(v11 + 24) = v9 + 2;
      }

      *v12 = v9;
      v9[3] = v12;
      if (v10)
      {
        pthread_mutex_unlock((v10 + 8));
      }
    }

    else
    {
      v9[2] = 0;
      v9[3] = 0;
    }

    v14 = 0;
    *newpool = v9;
  }

  else
  {
    v14 = 12;
    if (v5)
    {
      (v5)(12);
    }
  }

  return v14;
}

void *__cdecl apr_palloc(apr_pool_t *p, apr_size_t size)
{
  v3 = (size + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 < size)
  {
LABEL_2:
    v4 = *(p + 8);
    if (v4)
    {
      v4(12);
    }

    return 0;
  }

  v6 = *(p + 11);
  result = v6[3];
  if (v3 <= v6[4] - result)
  {
    v6[3] = (result + v3);
    return result;
  }

  v7 = *v6;
  if (v3 <= (*v6)[4] - (*v6)[3])
  {
    v8 = *v7;
    *v7[1] = *v7;
    v8[1] = v7[1];
  }

  else
  {
    v7 = allocator_alloc(*(p + 6), (size + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  *(v7 + 5) = 0;
  result = v7[3];
  v7[3] = (result + v3);
  v9 = v6[1];
  v7[1] = v9;
  *v9 = v7;
  *v7 = v6;
  v6[1] = v7;
  *(p + 11) = v7;
  v10 = (v6[4] - v6[3]) >> 12;
  *(v6 + 5) = v10;
  if (v10 < *(*v6 + 5))
  {
    v11 = *v6;
    do
    {
      v11 = *v11;
    }

    while (*(v11 + 5) > v10);
    *v7 = *v6;
    (*v6)[1] = v6[1];
    v12 = v11[1];
    v6[1] = v12;
    *v12 = v6;
    *v6 = v11;
    v11[1] = v6;
  }

  return result;
}

void apr_pool_cleanup_register(apr_pool_t *p, const void *data, apr_status_t (__cdecl *plain_cleanup)(void *), apr_status_t (__cdecl *child_cleanup)(void *))
{
  if (p)
  {
    v8 = *(p + 5);
    if (v8)
    {
      *(p + 5) = *v8;
    }

    else
    {
      v8 = apr_palloc(p, 0x20uLL);
    }

    v8[2] = plain_cleanup;
    v8[3] = child_cleanup;
    *v8 = *(p + 4);
    v8[1] = data;
    *(p + 4) = v8;
  }
}

apr_status_t apr_proc_wait(apr_proc_t *proc, int *exitcode, apr_exit_why_e *exitwhy, apr_wait_how_e waithow)
{
  v8 = 0;
  if (exitcode)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  while (1)
  {
    v6 = waitpid(proc->pid, &v8, v5);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return *__error();
    }
  }

  if (!v6)
  {
    return 70006;
  }

  proc->pid = v6;
  if ((~v8 & 0x7F) != 0)
  {
    return 70005;
  }

  else
  {
    return 20014;
  }
}

apr_status_t apr_proc_kill(apr_proc_t *proc, int sig)
{
  if (kill(proc, sig) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

apr_status_t apr_initialize(void)
{
  if (initialized++)
  {
    return 0;
  }

  if (!apr_pools_initialized++)
  {
    global_allocator = 0;
    v4 = GTCoreAlloc(0xC8uLL);
    if (!v4)
    {
      apr_pools_initialized = 0;
      return 12;
    }

    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 192) = 0;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    global_allocator = v4;
    *(v4 + 8) = vdupq_n_s64(0x8000uLL);
    v5 = apr_pool_create_ex(&global_pool, 0, 0, v4);
    if (v5)
    {
      v1 = v5;
      apr_allocator_destroy(global_allocator);
      global_allocator = 0;
      apr_pools_initialized = 0;
      return v1;
    }

    v7 = global_pool;
    *(global_pool + 80) = "apr_global_pool";
    if (hash_mutex)
    {
LABEL_20:
      newpool = 0;
      v11 = apr_thread_mutex_create(&newpool, v7, v6);
      if (!v11)
      {
        v12 = global_allocator;
        v13 = global_pool;
        *(global_allocator + 24) = newpool;
        *(v12 + 32) = v13;
        goto LABEL_5;
      }
    }

    else
    {
      v8 = apr_palloc(v7, 0x38uLL);
      hash_mutex = v8;
      v9 = *(v7 + 5);
      if (v9)
      {
        *(v7 + 5) = *v9;
      }

      else
      {
        v9 = apr_palloc(v7, 0x20uLL);
      }

      v10 = 0;
      v9[1] = v8;
      v9[2] = atomic_cleanup;
      v9[3] = apr_pool_cleanup_null;
      *v9 = *(v7 + 4);
      *(v7 + 4) = v9;
      while (1)
      {
        v11 = apr_thread_mutex_create((hash_mutex + v10), v7, v6);
        if (v11)
        {
          break;
        }

        v10 += 8;
        if (v10 == 56)
        {
          LODWORD(v7) = global_pool;
          goto LABEL_20;
        }
      }
    }

    return v11;
  }

LABEL_5:
  newpool = 0;
  if (apr_pool_create_ex(&newpool, 0, 0, 0))
  {
    return 20002;
  }

  v1 = 0;
  *(newpool + 10) = "apr_initialize";
  return v1;
}

char *GTCapabilitiesRuntime_fromDeviceSafe(void *a1, apr_pool_t *a2)
{
  v3 = a1;
  v4 = apr_palloc(a2, 0x10480uLL);
  v5 = v4;
  v6 = v4 + 49408;
  if (v4)
  {
    bzero(v4, 0x10480uLL);
  }

  v7 = v3;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 name];
    snprintf(v5 + 49152, 0x100uLL, "%s", [v9 UTF8String]);

    v10 = [v8 targetDeviceArchitecture];
    *v6 = [v10 cpuType];
    *(v6 + 1) = [v10 subType];
    *(v6 + 4) = [v10 version];
    v6[10] = [v10 version] >> 16;
    v6[11] = [v10 version] >> 24;
    *(v6 + 3) = [v10 versionCombined];
    *(v6 + 2) = [v10 driverVersion];

    if (*v6 == 16777235)
    {
      *(v5 + 3090) = 0u;
      v11 = *MEMORY[0x277CD2898];
      v12 = IOServiceMatching("AGXAccelerator");
      MatchingService = IOServiceGetMatchingService(v11, v12);
      if (MatchingService)
      {
        connect = 0;
        v14 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 1u, &connect);
        v15 = 0;
        if (!v14)
        {
          outputStruct = 0uLL;
          outputStructCnt = 16;
          v16 = IOConnectCallStructMethod(connect, 0x10Au, 0, 0, &outputStruct, &outputStructCnt);
          v15 = v16 == 0;
          if (!v16)
          {
            *(v5 + 3090) = outputStruct;
          }
        }
      }

      else
      {
        v15 = 0;
      }

      v6[268] = v15;
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = 0;
      v18 = v5 + 66601;
      do
      {
        *(v18 + v17) = [v8 supportsFamily:v17 + 1001];
        ++v17;
      }

      while (v17 != 30);
      v19 = 0;
      v20 = v5 + 66631;
      do
      {
        *(v20 + v19) = [v8 supportsFamily:v19 + 2001];
        ++v19;
      }

      while (v19 != 10);
      v21 = 0;
      v22 = v5 + 66641;
      do
      {
        *(v22 + v21) = [v8 supportsFamily:v21 + 3001];
        ++v21;
      }

      while (v21 != 10);
      *(v5 + 66651) = 257;
      v5[66653] = [v8 supportsFamily:5001];
      v5[66654] = [v8 supportsFamily:5002];
      *(v5 + 49497) = *v18;
      v5[49505] = v5[66609];
      *(v6 + 49) = *v20;
      *(v5 + 24754) = *v22;
      v5[49510] = v5[66643];
      v6[103] = v5[66653];
    }

    *(v6 + 3) = -1;
    if (objc_opt_respondsToSelector())
    {
      *(v6 + 6) = [v8 maxThreadgroupMemoryLength];
    }

    if (objc_opt_respondsToSelector())
    {
      outputStruct = 0uLL;
      *&v256 = 0;
      [v8 maxThreadsPerThreadgroup];
      v23 = v256;
      *(v6 + 56) = outputStruct;
      *(v6 + 9) = v23;
    }

    if (objc_opt_respondsToSelector())
    {
      *(v6 + 10) = [v8 maxBufferLength];
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v8 supportsLateEvalEvent];
    }

    else
    {
      v24 = 0;
    }

    v6[213] = v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = [v8 supportsRaytracing];
    }

    else
    {
      v25 = 0;
    }

    v6[215] = v25;
    if (objc_opt_respondsToSelector())
    {
      v26 = [v8 supportsTileShaders];
    }

    else
    {
      v26 = 0;
    }

    v6[214] = v26;
    if (objc_opt_respondsToSelector())
    {
      v27 = [v8 supportsMeshShaders];
    }

    else
    {
      v27 = 0;
    }

    v6[216] = v27;
    if (objc_opt_respondsToSelector())
    {
      v28 = [v8 isMsaa32bSupported];
    }

    else
    {
      v28 = 0;
    }

    v6[142] = v28;
    if (objc_opt_respondsToSelector())
    {
      v29 = [v8 supportsBufferWithIOSurface];
    }

    else
    {
      v29 = 0;
    }

    v6[219] = v29;
    if (objc_opt_respondsToSelector())
    {
      v30 = [v8 supportsBGR10A2];
    }

    else
    {
      v30 = 0;
    }

    v6[155] = v30;
    if (objc_opt_respondsToSelector())
    {
      v31 = [v8 supportsSparseHeaps];
    }

    else
    {
      v31 = 0;
    }

    v6[223] = v31;
    if (objc_opt_respondsToSelector())
    {
      v32 = [v8 supportsSparseTextures];
    }

    else
    {
      v32 = 0;
    }

    v6[224] = v32;
    if (objc_opt_respondsToSelector())
    {
      v33 = [v8 supportsPlacementHeaps];
    }

    else
    {
      v33 = 0;
    }

    v6[222] = v33;
    if (objc_opt_respondsToSelector())
    {
      v34 = [v8 supportsComputeMemoryBarrier];
    }

    else
    {
      v34 = 0;
    }

    v6[206] = v34;
    if (objc_opt_respondsToSelector())
    {
      v35 = [v8 supportsRenderMemoryBarrier];
    }

    else
    {
      v35 = 0;
    }

    v6[207] = v35;
    if (objc_opt_respondsToSelector())
    {
      v36 = [v8 supportsPartialRenderMemoryBarrier];
    }

    else
    {
      v36 = 0;
    }

    v6[208] = v36;
    if (objc_opt_respondsToSelector())
    {
      for (i = 0; i != 16; ++i)
      {
        v5[i + 49593] = [v8 supportsVertexAmplificationCount:i];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      for (j = 0; j != 32; ++j)
      {
        v5[j + 49512] = [v8 supportsTextureSampleCount:j];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      for (k = 0; k != 16; ++k)
      {
        v5[k + 49577] = [v8 supportsRasterizationRateMapWithLayerCount:k];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v40 = [v8 supportsProgrammableSamplePositions];
    }

    else
    {
      v40 = 0;
    }

    v6[168] = v40;
    if (objc_opt_respondsToSelector())
    {
      v41 = [v8 supportsGFXIndirectCommandBuffers];
    }

    else
    {
      v41 = 0;
    }

    v6[209] = v41;
    if (objc_opt_respondsToSelector())
    {
      v42 = [v8 supportsCMPIndirectCommandBuffers];
    }

    else
    {
      v42 = 0;
    }

    v6[210] = v42;
    if (objc_opt_respondsToSelector())
    {
      v43 = [v8 supportsIndirectDrawAndDispatch];
    }

    else
    {
      v43 = 0;
    }

    v6[212] = v43;
    if (objc_opt_respondsToSelector())
    {
      v44 = [v8 supportsMeshShadersInICB];
    }

    else
    {
      v44 = 0;
    }

    v6[211] = v44;
    if (objc_opt_respondsToSelector())
    {
      v45 = [v8 supportsMemorylessRenderTargets];
    }

    else
    {
      v45 = 0;
    }

    v6[137] = v45;
    if (objc_opt_respondsToSelector())
    {
      v46 = [v8 supportsRenderTargetTextureRotation];
    }

    else
    {
      v46 = 0;
    }

    v6[140] = v46;
    if (objc_opt_respondsToSelector())
    {
      v47 = [v8 supportsNonUniformThreadgroupSize];
    }

    else
    {
      v47 = 0;
    }

    v6[217] = v47;
    if (objc_opt_respondsToSelector())
    {
      v48 = [v8 supportsArgumentBuffersTier2];
    }

    else
    {
      v48 = 0;
    }

    v6[136] = v48;
    if (objc_opt_respondsToSelector())
    {
      v49 = [v8 supportsConcurrentComputeDispatch];
    }

    else
    {
      v49 = 0;
    }

    v6[218] = v49;
    if (objc_opt_respondsToSelector())
    {
      v50 = [v8 supportsSharedStorageHeapResources];
    }

    else
    {
      v50 = 0;
    }

    v6[221] = v50;
    if (objc_opt_respondsToSelector())
    {
      v51 = [v8 supportsSharedStorageTextures];
    }

    else
    {
      v51 = 0;
    }

    v6[138] = v51;
    if (objc_opt_respondsToSelector())
    {
      v52 = [v8 supportsSharedTextureHandles];
    }

    else
    {
      v52 = 0;
    }

    v6[139] = v52;
    if (objc_opt_respondsToSelector())
    {
      v53 = [v8 supportsDynamicAttributeStride];
    }

    else
    {
      v53 = 0;
    }

    v6[227] = v53;
    if (objc_opt_respondsToSelector())
    {
      v54 = [v8 supportsNonSquareTileShaders];
    }

    else
    {
      v54 = 0;
    }

    v6[228] = v54;
    if (objc_opt_respondsToSelector())
    {
      v55 = [v8 supportsLayeredRendering];
    }

    else
    {
      v55 = 0;
    }

    v6[229] = v55;
    if (objc_opt_respondsToSelector())
    {
      v56 = [v8 supportsViewportAndScissorArray];
    }

    else
    {
      v56 = 0;
    }

    v6[230] = v56;
    if (objc_opt_respondsToSelector())
    {
      v57 = [v8 supportsLinearTextureFromSharedBuffer];
    }

    else
    {
      v57 = 0;
    }

    v6[143] = v57;
    if (objc_opt_respondsToSelector())
    {
      v58 = [v8 supportsNonPrivateDepthStencilTextures];
    }

    else
    {
      v58 = 0;
    }

    v6[144] = v58;
    if (objc_opt_respondsToSelector())
    {
      v59 = [v8 supportsRenderToLinearTextures];
    }

    else
    {
      v59 = 0;
    }

    v6[145] = v59;
    if (objc_opt_respondsToSelector())
    {
      v60 = [v8 supportsSeparateDepthStencil];
    }

    else
    {
      v60 = 0;
    }

    v6[147] = v60;
    if (objc_opt_respondsToSelector())
    {
      v61 = [v8 supportsRelaxedTextureViewRequirements];
    }

    else
    {
      v61 = 0;
    }

    v6[148] = v61;
    if (objc_opt_respondsToSelector())
    {
      v62 = [v8 supportsVariableRateRasterization];
    }

    else
    {
      v62 = 0;
    }

    v6[238] = v62;
    if (objc_opt_respondsToSelector())
    {
      v63 = [v8 supportsExtendedVertexFormats];
    }

    else
    {
      v63 = 0;
    }

    v6[231] = v63;
    if (objc_opt_respondsToSelector())
    {
      v64 = [v8 supportsFunctionPointers];
    }

    else
    {
      v64 = 0;
    }

    v6[203] = v64;
    if (objc_opt_respondsToSelector())
    {
      v65 = [v8 supportsFunctionPointersFromRender];
    }

    else
    {
      v65 = 0;
    }

    v6[204] = v65;
    if (objc_opt_respondsToSelector())
    {
      v66 = [v8 supportsFunctionPointersFromMesh];
    }

    else
    {
      v66 = 0;
    }

    v6[205] = v66;
    if (objc_opt_respondsToSelector())
    {
      v67 = [v8 supportsDynamicLibraries];
    }

    else
    {
      v67 = 0;
    }

    v6[201] = v67;
    if (objc_opt_respondsToSelector())
    {
      v68 = [v8 supportsRenderDynamicLibraries];
    }

    else
    {
      v68 = 0;
    }

    v6[202] = v68;
    if (objc_opt_respondsToSelector())
    {
      v69 = [v8 supportsDepthClipMode];
    }

    else
    {
      v69 = 0;
    }

    v6[239] = v69;
    if (objc_opt_respondsToSelector())
    {
      v70 = [v8 supportsDepthClipModeClampExtended];
    }

    else
    {
      v70 = 0;
    }

    v6[240] = v70;
    if (objc_opt_respondsToSelector())
    {
      v71 = [v8 supportsSparseDepthAttachments];
    }

    else
    {
      v71 = 0;
    }

    v6[225] = v71;
    if (objc_opt_respondsToSelector())
    {
      v72 = [v8 supportsLossyCompression];
    }

    else
    {
      v72 = 0;
    }

    v6[146] = v72;
    if (objc_opt_respondsToSelector())
    {
      v73 = [v8 supportsTextureSwizzle];
    }

    else
    {
      v73 = 0;
    }

    v6[149] = v73;
    if (objc_opt_respondsToSelector())
    {
      v74 = [v8 supportsTextureCubeArray];
    }

    else
    {
      v74 = 0;
    }

    v6[150] = v74;
    if (objc_opt_respondsToSelector())
    {
      v75 = [v8 supportsTexture2DMultisampleArray];
    }

    else
    {
      v75 = 0;
    }

    v6[151] = v75;
    if (objc_opt_respondsToSelector())
    {
      v76 = [v8 supportsLinearTexture2DArray];
    }

    else
    {
      v76 = 0;
    }

    v6[152] = v76;
    if (objc_opt_respondsToSelector())
    {
      v77 = [v8 supports2DLinearTexArraySPI];
    }

    else
    {
      v77 = 0;
    }

    v6[153] = v77;
    if (objc_opt_respondsToSelector())
    {
      v78 = [v8 supportsRGBA10A2Gamma];
    }

    else
    {
      v78 = 0;
    }

    v6[154] = v78;
    if (objc_opt_respondsToSelector())
    {
      v79 = [v8 supportsBGR10A2];
    }

    else
    {
      v79 = 0;
    }

    v6[155] = v79;
    if (objc_opt_respondsToSelector())
    {
      v80 = [v8 supportsSRGBwrites];
    }

    else
    {
      v80 = 0;
    }

    v6[156] = v80;
    if (objc_opt_respondsToSelector())
    {
      v81 = [v8 supportsBfloat16Format];
    }

    else
    {
      v81 = 0;
    }

    v6[157] = v81;
    if (objc_opt_respondsToSelector())
    {
      v82 = [v8 supportsSamplerReductionMode];
    }

    else
    {
      v82 = 0;
    }

    v6[232] = v82;
    if (objc_opt_respondsToSelector())
    {
      v83 = [v8 supportsSamplerAddressModeClampToHalfBorder];
    }

    else
    {
      v83 = 0;
    }

    v6[233] = v83;
    if (objc_opt_respondsToSelector())
    {
      v84 = [v8 supportsCustomBorderColor];
    }

    else
    {
      v84 = 0;
    }

    v6[234] = v84;
    if (objc_opt_respondsToSelector())
    {
      v85 = [v8 supportsSamplerCompareFunction];
    }

    else
    {
      v85 = 0;
    }

    v6[235] = v85;
    if (objc_opt_respondsToSelector())
    {
      v86 = [v8 supportsBlackOrWhiteSamplerBorderColors];
    }

    else
    {
      v86 = 0;
    }

    v6[236] = v86;
    if (objc_opt_respondsToSelector())
    {
      v87 = [v8 supportsMirrorClampToEdgeSamplerMode];
    }

    else
    {
      v87 = 0;
    }

    v6[237] = v87;
    if (objc_opt_respondsToSelector())
    {
      v88 = [v8 supportsPrimitiveMotionBlur];
    }

    else
    {
      v88 = 0;
    }

    v6[158] = v88;
    if (objc_opt_respondsToSelector())
    {
      v89 = [v8 supportsRayTracingICBs];
    }

    else
    {
      v89 = 0;
    }

    v6[159] = v89;
    if (objc_opt_respondsToSelector())
    {
      v90 = [v8 supportsRayTracingExtendedVertexFormats];
    }

    else
    {
      v90 = 0;
    }

    v6[160] = v90;
    if (objc_opt_respondsToSelector())
    {
      v91 = [v8 supportsHeapAccelerationStructureAllocation];
    }

    else
    {
      v91 = 0;
    }

    v6[226] = v91;
    if (objc_opt_respondsToSelector())
    {
      v92 = [v8 supportsRayTracingPerPrimitiveData];
    }

    else
    {
      v92 = 0;
    }

    v6[161] = v92;
    if (objc_opt_respondsToSelector())
    {
      v93 = [v8 supportsRayTracingBuffersFromTables];
    }

    else
    {
      v93 = 0;
    }

    v6[162] = v93;
    if (objc_opt_respondsToSelector())
    {
      v94 = [v8 supportsRayTracingAccelerationStructureCPUDeserialization];
    }

    else
    {
      v94 = 0;
    }

    v6[163] = v94;
    if (objc_opt_respondsToSelector())
    {
      v95 = [v8 supportsRayTracingMultiLevelInstancing];
    }

    else
    {
      v95 = 0;
    }

    v6[164] = v95;
    if (objc_opt_respondsToSelector())
    {
      v96 = [v8 supportsRayTracingIndirectInstanceAccelerationStructureBuild];
    }

    else
    {
      v96 = 0;
    }

    v6[165] = v96;
    if (objc_opt_respondsToSelector())
    {
      v97 = [v8 supportsRayTracingGPUTableUpdateBuffers];
    }

    else
    {
      v97 = 0;
    }

    v6[166] = v97;
    if (objc_opt_respondsToSelector())
    {
      v98 = [v8 supportsRayTracingCurves];
    }

    else
    {
      v98 = 0;
    }

    v6[167] = v98;
    if (objc_opt_respondsToSelector())
    {
      v99 = [v8 supportsBCTextureCompression];
    }

    else
    {
      v99 = 0;
    }

    v6[241] = v99;
    if (objc_opt_respondsToSelector())
    {
      v100 = [v8 supports3DBCTextures];
    }

    else
    {
      v100 = 0;
    }

    v6[242] = v100;
    if (objc_opt_respondsToSelector())
    {
      v101 = [v8 supportsMSAADepthResolve];
    }

    else
    {
      v101 = 0;
    }

    v6[243] = v101;
    if (objc_opt_respondsToSelector())
    {
      v102 = [v8 supportsMSAAStencilResolve];
    }

    else
    {
      v102 = 0;
    }

    v6[244] = v102;
    if (objc_opt_respondsToSelector())
    {
      v103 = [v8 supportsMSAADepthResolveFilter];
    }

    else
    {
      v103 = 0;
    }

    v6[245] = v103;
    if (objc_opt_respondsToSelector())
    {
      v104 = [v8 supports32bpcMSAATextures];
    }

    else
    {
      v104 = 0;
    }

    v6[246] = v104;
    if (objc_opt_respondsToSelector())
    {
      v105 = [v8 supports32BitMSAA];
    }

    else
    {
      v105 = 0;
    }

    v6[247] = v105;
    if (objc_opt_respondsToSelector())
    {
      v106 = [v8 supportsNonPrivateMSAATextures];
    }

    else
    {
      v106 = 0;
    }

    v6[248] = v106;
    if (objc_opt_respondsToSelector())
    {
      v107 = [v8 supportsCombinedMSAAStoreAndResolveAction];
    }

    else
    {
      v107 = 0;
    }

    v6[249] = v107;
    if (objc_opt_respondsToSelector())
    {
      v108 = [v8 supportsMSAAStencilResolveFilter];
    }

    else
    {
      v108 = 0;
    }

    v6[250] = v108;
    if (objc_opt_respondsToSelector())
    {
      v109 = [v8 supportsASTCTextureCompression];
    }

    else
    {
      v109 = 0;
    }

    v6[251] = v109;
    if (objc_opt_respondsToSelector())
    {
      v110 = [v8 supports3DASTCTextures];
    }

    else
    {
      v110 = 0;
    }

    v6[252] = v110;
    if (objc_opt_respondsToSelector())
    {
      v111 = [v8 supportsASTCHDRTextureCompression];
    }

    else
    {
      v111 = 0;
    }

    v6[253] = v111;
    if (objc_opt_respondsToSelector())
    {
      v112 = [v8 supportsLimitedYUVFormats];
    }

    else
    {
      v112 = 0;
    }

    v6[254] = v112;
    if (objc_opt_respondsToSelector())
    {
      v113 = [v8 supportsExtendedYUVFormats];
    }

    else
    {
      v113 = 0;
    }

    v6[255] = v113;
    if (objc_opt_respondsToSelector())
    {
      v114 = [v8 supportsAlphaYUVFormats];
    }

    else
    {
      v114 = 0;
    }

    v6[256] = v114;
    if (objc_opt_respondsToSelector())
    {
      v115 = [v8 supportsYCBCRFormats];
    }

    else
    {
      v115 = 0;
    }

    v6[257] = v115;
    if (objc_opt_respondsToSelector())
    {
      v116 = [v8 supportsYCBCRFormatsPQ];
    }

    else
    {
      v116 = 0;
    }

    v6[258] = v116;
    if (objc_opt_respondsToSelector())
    {
      v117 = [v8 supportsYCBCRFormats12];
    }

    else
    {
      v117 = 0;
    }

    v6[259] = v117;
    if (objc_opt_respondsToSelector())
    {
      v118 = [v8 supportsYCBCRFormatsXR];
    }

    else
    {
      v118 = 0;
    }

    v6[260] = v118;
    if (objc_opt_respondsToSelector())
    {
      v119 = [v8 supportsYCBCRPackedFormatsPQ];
    }

    else
    {
      v119 = 0;
    }

    v6[261] = v119;
    if (objc_opt_respondsToSelector())
    {
      v120 = [v8 supportsYCBCRPackedFormats12];
    }

    else
    {
      v120 = 0;
    }

    v6[262] = v120;
    if (objc_opt_respondsToSelector())
    {
      v121 = [v8 supportsYCBCRPackedFormatsXR];
    }

    else
    {
      v121 = 0;
    }

    v6[263] = v121;
    if (objc_opt_respondsToSelector())
    {
      v122 = [v8 supportsPublicXR10Formats];
    }

    else
    {
      v122 = 0;
    }

    v6[264] = v122;
    if (objc_opt_respondsToSelector())
    {
      v123 = [v8 supportsExtendedXR10Formats];
    }

    else
    {
      v123 = 0;
    }

    v124 = 0;
    v6[265] = v123;
    do
    {
      v125 = word_24DC0EF70[v124];
      v258 = 0;
      v256 = 0u;
      v257 = 0u;
      outputStruct = 0u;
      MTLPixelFormatGetInfoForDevice();
      v126 = WORD4(outputStruct);
      v127 = &v5[12 * v125];
      *v127 = DWORD2(outputStruct);
      *(v127 + 2) = v125;
      if ((v126 & 0x400) == 0)
      {
        *(v127 + 3) = BYTE1(v257);
      }

      if ((v126 & 0x461) == 1)
      {
        *(v127 + 4) = [v8 minimumLinearTextureAlignmentForPixelFormat:v125];
        *(v127 + 5) = [v8 minimumTextureBufferAlignmentForPixelFormat:v125];
      }

      ++v124;
    }

    while (v124 != 275);
    v6[267] = [MEMORY[0x277CD7178] supportsDevice:v8];
    v6[266] = [MEMORY[0x277CD7188] supportsDevice:v8];
    [MEMORY[0x277CD7188] supportedInputContentMinScaleForDevice:v8];
    *(v5 + 16668) = v128;
    [MEMORY[0x277CD7188] supportedInputContentMaxScaleForDevice:v8];
    *(v5 + 16669) = v129;
    if (NSClassFromString(&cfstr_Mtlfxframeinte.isa))
    {
      if (objc_opt_respondsToSelector())
      {
        v130 = [MEMORY[0x277CD7170] supportsDevice:v8];
      }

      else
      {
        v130 = 0;
      }

      v5[66662] = v130;
    }

    if (NSClassFromString(&cfstr_Mtlfxtemporald.isa))
    {
      if (objc_opt_respondsToSelector())
      {
        v131 = [MEMORY[0x277CD7180] supportsDevice:v8];
      }

      else
      {
        v131 = 0;
      }

      v5[66663] = v131;
      v132 = objc_opt_respondsToSelector();
      v133 = 0;
      v134 = 0;
      if (v132)
      {
        [MEMORY[0x277CD7180] supportedInputContentMinScaleForDevice:{v8, 0.0}];
      }

      *(v5 + 16670) = v134;
      if (objc_opt_respondsToSelector())
      {
        [MEMORY[0x277CD7180] supportedInputContentMaxScaleForDevice:v8];
        v133 = v135;
      }

      *(v5 + 16671) = v133;
    }

    v136 = 0;
    v137 = v5 + 49684;
    for (m = -20480; m != -20313; ++m)
    {
      if (GTFenum_isSupported(m))
      {
        *&v137[4 * v136++] = m;
      }
    }

    v139 = -18432;
    v140 = 11;
    do
    {
      if (GTFenum_isSupported(v139))
      {
        *&v137[4 * v136++] = v139;
      }

      ++v139;
      --v140;
    }

    while (v140);
    for (n = -16384; n != -14793; ++n)
    {
      if (GTFenum_isSupported(n))
      {
        *&v137[4 * v136++] = n;
      }
    }

    v142 = 0;
    v143 = -12544;
    do
    {
      v144 = v142;
      if (GTFenum_isSupported(v143))
      {
        *&v137[4 * v136++] = v143;
      }

      v143 = -12543;
      v142 = 1;
    }

    while ((v144 & 1) == 0);
    v145 = -10240;
    v146 = 103;
    do
    {
      if (GTFenum_isSupported(v145))
      {
        *&v137[4 * v136++] = v145;
      }

      ++v145;
      --v146;
    }

    while (v146);
    v147 = -7168;
    v148 = 16;
    do
    {
      if (GTFenum_isSupported(v147))
      {
        *&v137[4 * v136++] = v147;
      }

      ++v147;
      --v148;
    }

    while (v148);
    v149 = -6656;
    v150 = 5;
    do
    {
      if (GTFenum_isSupported(v149))
      {
        *&v137[4 * v136++] = v149;
      }

      ++v149;
      --v150;
    }

    while (v150);
    v151 = -6144;
    v152 = 50;
    do
    {
      if (GTFenum_isSupported(v151))
      {
        *&v137[4 * v136++] = v151;
      }

      ++v151;
      --v152;
    }

    while (v152);
    *&v137[4 * v136] = 0;
    *&v137[4 * v136 + 4] = -12281;
    *&v137[4 * v136 + 8] = -12280;
    *&v137[4 * v136 + 12] = -12272;
    *&v137[4 * v136 + 16] = -8183;
    *&v137[4 * v136 + 20] = -8182;
    *&v137[4 * v136 + 24] = -8181;
    qsort(v5 + 49684, v136 + 7, 4uLL, CompareUInt32);
    *(v6 + 68) = v136 + 7;
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 8303) = [v8 deviceCreationFlags];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 8304) = [v8 sharedMemorySize];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 8305) = [v8 dedicatedMemorySize];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 8306) = [v8 maximumComputeSubstreams];
    }

    v153 = [v8 maxRasterizationRateLayerCount];
    *(v5 + 8307) = v153;
    if (v153 >= 0x11)
    {
      v6[88] = 1;
    }

    *(v5 + 8309) = [v8 maxAccelerationStructureTraversalDepth];
    *(v5 + 33240) = [v8 latestSupportedGenericBVHVersion];
    v5[66482] = [v8 bufferRobustnessSupport];
    if (objc_opt_respondsToSelector())
    {
      v5[66483] = [v8 halfFPConfig];
    }

    if (objc_opt_respondsToSelector())
    {
      v5[66484] = [v8 singleFPConfig];
    }

    if (objc_opt_respondsToSelector())
    {
      v5[66485] = [v8 doubleFPConfig];
    }

    if (objc_opt_respondsToSelector())
    {
      v5[66486] = [v8 sparseTexturesSupport];
    }

    if (objc_opt_respondsToSelector())
    {
      v5[66487] = [v8 defaultTextureWriteRoundingMode];
    }

    if (objc_opt_respondsToSelector())
    {
      for (ii = 0; ii != 3; ++ii)
      {
        v5[ii + 66499] = [v8 supportsTextureWriteRoundingMode:ii];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v5[66488] = [v8 readWriteTextureSupport];
    }

    if (objc_opt_respondsToSelector())
    {
      for (jj = 0; jj != 10; ++jj)
      {
        v5[jj + 66489] = [v8 supportsPrimitiveType:jj];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v156 = [v8 supportPriorityBand];
    }

    else
    {
      v156 = 0;
    }

    v5[66504] = v156;
    if (objc_opt_respondsToSelector())
    {
      v157 = [v8 isQuadDataSharingSupported];
    }

    else
    {
      v157 = 0;
    }

    v5[66505] = v157;
    if (objc_opt_respondsToSelector())
    {
      v158 = [v8 supportsLargeFramebufferConfigs];
    }

    else
    {
      v158 = 0;
    }

    v5[66506] = v158;
    if (objc_opt_respondsToSelector())
    {
      v159 = [v8 supports32BitFloatFiltering];
    }

    else
    {
      v159 = 0;
    }

    v5[66507] = v159;
    if (objc_opt_respondsToSelector())
    {
      v160 = [v8 requiresRaytracingEmulation];
    }

    else
    {
      v160 = 0;
    }

    v5[66598] = v160;
    if (objc_opt_respondsToSelector())
    {
      v161 = [v8 requiresBFloat16Emulation];
    }

    else
    {
      v161 = 0;
    }

    v5[66599] = v161;
    if (objc_opt_respondsToSelector())
    {
      v162 = [v8 supportsCountingOcclusionQuery];
    }

    else
    {
      v162 = 0;
    }

    v5[66508] = v162;
    if (objc_opt_respondsToSelector())
    {
      v163 = [v8 supportsBaseVertexInstanceDrawing];
    }

    else
    {
      v163 = 0;
    }

    v5[66509] = v163;
    if (objc_opt_respondsToSelector())
    {
      v164 = [v8 supportsMipLevelsSmallerThanBlockSize];
    }

    else
    {
      v164 = 0;
    }

    v5[66510] = v164;
    if (objc_opt_respondsToSelector())
    {
      v165 = [v8 supportsRenderPassWithoutRenderTarget];
    }

    else
    {
      v165 = 0;
    }

    v5[66511] = v165;
    if (objc_opt_respondsToSelector())
    {
      v166 = [v8 supportsSeparateVisibilityAndShadingRate];
    }

    else
    {
      v166 = 0;
    }

    v5[66512] = v166;
    if (objc_opt_respondsToSelector())
    {
      v167 = [v8 supportsDynamicControlPointCount];
    }

    else
    {
      v167 = 0;
    }

    v5[66513] = v167;
    if (objc_opt_respondsToSelector())
    {
      v168 = [v8 supportsTessellation];
    }

    else
    {
      v168 = 0;
    }

    v5[66514] = v168;
    if (objc_opt_respondsToSelector())
    {
      v169 = [v8 supportsIndirectTessellation];
    }

    else
    {
      v169 = 0;
    }

    v5[66515] = v169;
    if (objc_opt_respondsToSelector())
    {
      v170 = [v8 supportsFP32TessFactors];
    }

    else
    {
      v170 = 0;
    }

    v5[66516] = v170;
    if (objc_opt_respondsToSelector())
    {
      v171 = [v8 supportsUnalignedVertexFetch];
    }

    else
    {
      v171 = 0;
    }

    v5[66517] = v171;
    if (objc_opt_respondsToSelector())
    {
      v172 = [v8 supportsBinaryArchives];
    }

    else
    {
      v172 = 0;
    }

    v5[66518] = v172;
    if (objc_opt_respondsToSelector())
    {
      v173 = [v8 supportsForceSeamsOnCubemaps];
    }

    else
    {
      v173 = 0;
    }

    v5[66519] = v173;
    if (objc_opt_respondsToSelector())
    {
      v174 = [v8 supportsAnisoSampleFix];
    }

    else
    {
      v174 = 0;
    }

    v5[66520] = v174;
    if (objc_opt_respondsToSelector())
    {
      v175 = [v8 supportsIndirectWritableTextures];
    }

    else
    {
      v175 = 0;
    }

    v5[66521] = v175;
    if (objc_opt_respondsToSelector())
    {
      v176 = [v8 supportsBufferPrefetchStatistics];
    }

    else
    {
      v176 = 0;
    }

    v5[66522] = v176;
    if (objc_opt_respondsToSelector())
    {
      v177 = [v8 supportsMutableTier1ArgumentBuffers];
    }

    else
    {
      v177 = 0;
    }

    v5[66523] = v177;
    if (objc_opt_respondsToSelector())
    {
      v178 = [v8 supportsIndirectStageInRegion];
    }

    else
    {
      v178 = 0;
    }

    v5[66524] = v178;
    if (objc_opt_respondsToSelector())
    {
      v179 = [v8 supportsIndirectTextures];
    }

    else
    {
      v179 = 0;
    }

    v5[66525] = v179;
    if (objc_opt_respondsToSelector())
    {
      v180 = [v8 supportsReadWriteTextureArgumentsTier2];
    }

    else
    {
      v180 = 0;
    }

    v5[66526] = v180;
    if (objc_opt_respondsToSelector())
    {
      v181 = [v8 supportsBufferBoundsChecking];
    }

    else
    {
      v181 = 0;
    }

    v5[66527] = v181;
    if (objc_opt_respondsToSelector())
    {
      v182 = [v8 supportsInterchangeTiled];
    }

    else
    {
      v182 = 0;
    }

    v5[66528] = v182;
    if (objc_opt_respondsToSelector())
    {
      v183 = [v8 supportsExplicitVisibilityGroups];
    }

    else
    {
      v183 = 0;
    }

    v5[66529] = v183;
    if (objc_opt_respondsToSelector())
    {
      v184 = [v8 supportsForkJoin];
    }

    else
    {
      v184 = 0;
    }

    v5[66530] = v184;
    if (objc_opt_respondsToSelector())
    {
      v185 = [v8 supportsDevicePartitioning];
    }

    else
    {
      v185 = 0;
    }

    v5[66531] = v185;
    if (objc_opt_respondsToSelector())
    {
      v186 = [v8 supportsQuadReduction];
    }

    else
    {
      v186 = 0;
    }

    v5[66532] = v186;
    if (objc_opt_respondsToSelector())
    {
      v187 = [v8 supportsVirtualSubstreams];
    }

    else
    {
      v187 = 0;
    }

    v5[66533] = v187;
    if (objc_opt_respondsToSelector())
    {
      v188 = [v8 supportsCommandBufferJump];
    }

    else
    {
      v188 = 0;
    }

    v5[66534] = v188;
    if (objc_opt_respondsToSelector())
    {
      v189 = [v8 supportsPrimitiveRestartOverride];
    }

    else
    {
      v189 = 0;
    }

    v5[66535] = v189;
    if (objc_opt_respondsToSelector())
    {
      v190 = [v8 supportsStreamingCodecSignaling];
    }

    else
    {
      v190 = 0;
    }

    v5[66536] = v190;
    if (objc_opt_respondsToSelector())
    {
      v191 = [v8 supportsGlobalVariableRelocation];
    }

    else
    {
      v191 = 0;
    }

    v5[66537] = v191;
    if (objc_opt_respondsToSelector())
    {
      v192 = [v8 supportsGlobalVariableRelocationRender];
    }

    else
    {
      v192 = 0;
    }

    v5[66538] = v192;
    if (objc_opt_respondsToSelector())
    {
      v193 = [v8 supportsGlobalVariableRelocationCompute];
    }

    else
    {
      v193 = 0;
    }

    v5[66539] = v193;
    if (objc_opt_respondsToSelector())
    {
      v194 = [v8 supportsTLS];
    }

    else
    {
      v194 = 0;
    }

    v5[66540] = v194;
    if (objc_opt_respondsToSelector())
    {
      v195 = [v8 supportsOpenCLTextureWriteSwizzles];
    }

    else
    {
      v195 = 0;
    }

    v5[66541] = v195;
    if (objc_opt_respondsToSelector())
    {
      v196 = [v8 supportsFixedLinePointFillDepthGradient];
    }

    else
    {
      v196 = 0;
    }

    v5[66542] = v196;
    if (objc_opt_respondsToSelector())
    {
      v197 = [v8 supportsFragmentOnlyEncoders];
    }

    else
    {
      v197 = 0;
    }

    v5[66543] = v197;
    if (objc_opt_respondsToSelector())
    {
      v198 = [v8 supportsDeadlineProfile];
    }

    else
    {
      v198 = 0;
    }

    v5[66544] = v198;
    if (objc_opt_respondsToSelector())
    {
      v199 = [v8 supportsFillTexture];
    }

    else
    {
      v199 = 0;
    }

    v5[66545] = v199;
    if (objc_opt_respondsToSelector())
    {
      v200 = [v8 supportsSetThreadgroupPackingDisabled];
    }

    else
    {
      v200 = 0;
    }

    v5[66546] = v200;
    if (objc_opt_respondsToSelector())
    {
      v201 = [v8 supportsPipelineLibraries];
    }

    else
    {
      v201 = 0;
    }

    v5[66547] = v201;
    if (objc_opt_respondsToSelector())
    {
      v202 = [v8 supportsCompressedTextureViewSPI];
    }

    else
    {
      v202 = 0;
    }

    v5[66548] = v202;
    if (objc_opt_respondsToSelector())
    {
      v203 = [v8 supportsPerformanceStateAssertion];
    }

    else
    {
      v203 = 0;
    }

    v5[66549] = v203;
    if (objc_opt_respondsToSelector())
    {
      v204 = [v8 supportsStackOverflowErrorCode];
    }

    else
    {
      v204 = 0;
    }

    v5[66550] = v204;
    if (objc_opt_respondsToSelector())
    {
      v205 = [v8 supportsIABHashForTools];
    }

    else
    {
      v205 = 0;
    }

    v5[66551] = v205;
    if (objc_opt_respondsToSelector())
    {
      v206 = [v8 supportsRayTracingTraversalMetrics];
    }

    else
    {
      v206 = 0;
    }

    v5[66552] = v206;
    if (objc_opt_respondsToSelector())
    {
      v207 = [v8 supportsInt64];
    }

    else
    {
      v207 = 0;
    }

    v5[66553] = v207;
    if (objc_opt_respondsToSelector())
    {
      v208 = [v8 supportsNonZeroTextureWriteLOD];
    }

    else
    {
      v208 = 0;
    }

    v5[66554] = v208;
    if (objc_opt_respondsToSelector())
    {
      v209 = [v8 supportsInvariantVertexPosition];
    }

    else
    {
      v209 = 0;
    }

    v5[66555] = v209;
    if (objc_opt_respondsToSelector())
    {
      v210 = [v8 supportsProgrammableBlending];
    }

    else
    {
      v210 = 0;
    }

    v5[66556] = v210;
    if (objc_opt_respondsToSelector())
    {
      v211 = [v8 supportsFastMathInfNaNPropagation];
    }

    else
    {
      v211 = 0;
    }

    v5[66557] = v211;
    if (objc_opt_respondsToSelector())
    {
      v212 = [v8 supportsQueryTextureLOD];
    }

    else
    {
      v212 = 0;
    }

    v5[66558] = v212;
    if (objc_opt_respondsToSelector())
    {
      v213 = [v8 supportsShaderLODAverage];
    }

    else
    {
      v213 = 0;
    }

    v5[66559] = v213;
    if (objc_opt_respondsToSelector())
    {
      v214 = [v8 supportsPacked32TextureBufferWrites];
    }

    else
    {
      v214 = 0;
    }

    v5[66560] = v214;
    if (objc_opt_respondsToSelector())
    {
      v215 = [v8 supportsFragmentBufferWrites];
    }

    else
    {
      v215 = 0;
    }

    v5[66561] = v215;
    if (objc_opt_respondsToSelector())
    {
      v216 = [v8 supportsAtomicFloat];
    }

    else
    {
      v216 = 0;
    }

    v5[66562] = v216;
    if (objc_opt_respondsToSelector())
    {
      v217 = [v8 supportsNorm16BCubicFiltering];
    }

    else
    {
      v217 = 0;
    }

    v5[66563] = v217;
    if (objc_opt_respondsToSelector())
    {
      v218 = [v8 supportsTextureOutOfBoundsReads];
    }

    else
    {
      v218 = 0;
    }

    v5[66564] = v218;
    if (objc_opt_respondsToSelector())
    {
      v219 = [v8 supportsMemoryOrderAtomics];
    }

    else
    {
      v219 = 0;
    }

    v5[66565] = v219;
    if (objc_opt_respondsToSelector())
    {
      v220 = [v8 supportsPullModelInterpolation];
    }

    else
    {
      v220 = 0;
    }

    v5[66566] = v220;
    if (objc_opt_respondsToSelector())
    {
      v221 = [v8 supportsSIMDGroupMatrix];
    }

    else
    {
      v221 = 0;
    }

    v5[66567] = v221;
    if (objc_opt_respondsToSelector())
    {
      v222 = [v8 supportsSIMDShuffleAndFill];
    }

    else
    {
      v222 = 0;
    }

    v5[66568] = v222;
    if (objc_opt_respondsToSelector())
    {
      v223 = [v8 supportsAtomicUlongVoidMinMax];
    }

    else
    {
      v223 = 0;
    }

    v5[66569] = v223;
    if (objc_opt_respondsToSelector())
    {
      v224 = [v8 supportsFloat16BCubicFiltering];
    }

    else
    {
      v224 = 0;
    }

    v5[66570] = v224;
    if (objc_opt_respondsToSelector())
    {
      v225 = [v8 supportsFloat16InfNanFiltering];
    }

    else
    {
      v225 = 0;
    }

    v5[66571] = v225;
    if (objc_opt_respondsToSelector())
    {
      v226 = [v8 supportsRTZRounding];
    }

    else
    {
      v226 = 0;
    }

    v5[66572] = v226;
    if (objc_opt_respondsToSelector())
    {
      v227 = [v8 supportsQuadGroup];
    }

    else
    {
      v227 = 0;
    }

    v5[66573] = v227;
    if (objc_opt_respondsToSelector())
    {
      v228 = [v8 supportsImageBlocks];
    }

    else
    {
      v228 = 0;
    }

    v5[66574] = v228;
    if (objc_opt_respondsToSelector())
    {
      v229 = [v8 supportsImageBlockSampleCoverageControl];
    }

    else
    {
      v229 = 0;
    }

    v5[66575] = v229;
    if (objc_opt_respondsToSelector())
    {
      v230 = [v8 supportsShaderBarycentricCoordinates];
    }

    else
    {
      v230 = 0;
    }

    v5[66576] = v230;
    if (objc_opt_respondsToSelector())
    {
      v231 = [v8 supportsSIMDGroup];
    }

    else
    {
      v231 = 0;
    }

    v5[66577] = v231;
    if (objc_opt_respondsToSelector())
    {
      v232 = [v8 supportsShaderMinLODClamp];
    }

    else
    {
      v232 = 0;
    }

    v5[66578] = v232;
    if (objc_opt_respondsToSelector())
    {
      v233 = [v8 supportsSIMDShufflesAndBroadcast];
    }

    else
    {
      v233 = 0;
    }

    v5[66579] = v233;
    if (objc_opt_respondsToSelector())
    {
      v234 = [v8 supportsQuadShufflesAndBroadcast];
    }

    else
    {
      v234 = 0;
    }

    v5[66580] = v234;
    if (objc_opt_respondsToSelector())
    {
      v235 = [v8 supportsSIMDReduction];
    }

    else
    {
      v235 = 0;
    }

    v5[66581] = v235;
    if (objc_opt_respondsToSelector())
    {
      v236 = [v8 supportsRasterOrderGroups];
    }

    else
    {
      v236 = 0;
    }

    v5[66582] = v236;
    if (objc_opt_respondsToSelector())
    {
      v237 = [v8 supportsRasterOrderGroupsColorAttachment];
    }

    else
    {
      v237 = 0;
    }

    v5[66583] = v237;
    if (objc_opt_respondsToSelector())
    {
      v238 = [v8 supportsNativeHardwareFP16];
    }

    else
    {
      v238 = 0;
    }

    v5[66584] = v238;
    if (objc_opt_respondsToSelector())
    {
      v239 = [v8 supportsRaytracingFromRender];
    }

    else
    {
      v239 = 0;
    }

    v5[66585] = v239;
    if (objc_opt_respondsToSelector())
    {
      v240 = [v8 supportsArrayOfTextures];
    }

    else
    {
      v240 = 0;
    }

    v5[66586] = v240;
    if (objc_opt_respondsToSelector())
    {
      v241 = [v8 supportsArrayOfSamplers];
    }

    else
    {
      v241 = 0;
    }

    v5[66587] = v241;
    if (objc_opt_respondsToSelector())
    {
      v242 = [v8 supportsReadWriteBufferArguments];
    }

    else
    {
      v242 = 0;
    }

    v5[66588] = v242;
    if (objc_opt_respondsToSelector())
    {
      v243 = [v8 supportsPostDepthCoverage];
    }

    else
    {
      v243 = 0;
    }

    v5[66589] = v243;
    if (objc_opt_respondsToSelector())
    {
      v244 = [v8 supportsBfloat16Buffers];
    }

    else
    {
      v244 = 0;
    }

    v5[66590] = v244;
    if (objc_opt_respondsToSelector())
    {
      v245 = [v8 supportsComputeCompressedTextureWrite];
    }

    else
    {
      v245 = 0;
    }

    v5[66591] = v245;
    if (objc_opt_respondsToSelector())
    {
      v246 = [v8 supportsStencilFeedback];
    }

    else
    {
      v246 = 0;
    }

    v5[66592] = v246;
    if (objc_opt_respondsToSelector())
    {
      v247 = [v8 supportsRenderTextureWrites];
    }

    else
    {
      v247 = 0;
    }

    v5[66593] = v247;
    if (objc_opt_respondsToSelector())
    {
      v248 = [v8 supportsReadWriteTextureArguments];
    }

    else
    {
      v248 = 0;
    }

    v5[66594] = v248;
    if (objc_opt_respondsToSelector())
    {
      v249 = [v8 supportsReadWriteTextureCubeArguments];
    }

    else
    {
      v249 = 0;
    }

    v5[66595] = v249;
    if (objc_opt_respondsToSelector())
    {
      v250 = [v8 supportsWritableArrayOfTextures];
    }

    else
    {
      v250 = 0;
    }

    v5[66596] = v250;
    if (objc_opt_respondsToSelector())
    {
      v251 = [v8 supportsExtendedSamplerLODBiasRange];
    }

    else
    {
      v251 = 0;
    }

    v5[66661] = v251;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v6[88] = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v252 = [v8 limits];
      *(v5 + 66072) = *v252;
      *(v5 + 66088) = *(v252 + 16);
      *(v5 + 66104) = *(v252 + 32);
      *(v5 + 66120) = *(v252 + 48);
      *(v5 + 66136) = *(v252 + 64);
      *(v5 + 66152) = *(v252 + 80);
      *(v5 + 8271) = *(v252 + 96);
      *(v5 + 8272) = *(v252 + 104);
      *(v5 + 16546) = *(v252 + 112);
      *(v5 + 66188) = *(v252 + 120);
      *(v5 + 66204) = *(v252 + 136);
      *(v5 + 66220) = *(v252 + 152);
      *(v5 + 66236) = *(v252 + 168);
      *(v5 + 66252) = *(v252 + 184);
      *(v5 + 66268) = *(v252 + 200);
      *(v5 + 66284) = *(v252 + 216);
      *(v5 + 66300) = *(v252 + 232);
      *(v5 + 66316) = *(v252 + 248);
      *(v5 + 8291) = *(v252 + 256);
    }

    if (objc_opt_respondsToSelector())
    {
      v253 = [v8 supportsIntersectionFunctionBuffers];
    }

    else
    {
      v253 = 0;
    }

    v5[66664] = v253;
  }

  else
  {
    v6[88] = 1;
  }

  return v5;
}

uint64_t CompareUInt32(_DWORD *a1, _DWORD *a2)
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

uint64_t GTCapabilitiesRuntime_heapTextureInfoCompatible(uint64_t *a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = *a1;
      v10 = *(*a1 + v6);
      if (*(a2 + 12 * *(v10 + 34)))
      {
        v11 = MEMORY[0x277CD7058];
        v12 = v23;
        v13 = objc_alloc_init(v11);
        [v13 setTextureType:*(v10 + 49)];
        [v13 setPixelFormat:*(v10 + 34)];
        [v13 setWidth:*(v10 + 24)];
        [v13 setHeight:*(v10 + 32)];
        [v13 setDepth:*(v10 + 30)];
        [v13 setMipmapLevelCount:*(v10 + 45)];
        [v13 setSampleCount:*(v10 + 47)];
        [v13 setArrayLength:*(v10 + 28)];
        [v13 setUsage:*(v10 + 20)];
        [v13 setResourceOptions:*(v10 + 36)];
        if (objc_opt_respondsToSelector())
        {
          [v13 setSwizzleKey:*(v10 + 16)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 setRotation:*(v10 + 46)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 setAllowGPUOptimizedContents:*(v10 + 38) != 0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 setSparseSurfaceDefaultValue:*(v10 + 48)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 setWriteSwizzleEnabled:*(v10 + 50) != 0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 setCompressionType:*(v10 + 41)];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v13 setLossyCompressionMode:*(v10 + 41)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 setCompressionFootprint:*(v10 + 39)];
        }

        if (objc_opt_respondsToSelector())
        {
          [v13 setCompressionMode:*(v10 + 40)];
        }

        [v13 setAllowGPUOptimizedContents:*(v10 + 38) != 0];
        [v13 setFramebufferOnly:*(v10 + 43) != 0];
        [v13 setIsDrawable:*(v10 + 44) != 0];
        v14 = [v12 heapTextureSizeAndAlignWithDescriptor:v13];
        v16 = v15;

        v17 = v9 + v6;
        v18 = *(v9 + v6 + 8);
        v19 = *(v17 + 16);

        v21 = v18 >= v16 && v19 <= v14;
        v8 &= v21;
        v5 = *(a1 + 2);
      }

      ++v7;
      v6 += 24;
    }

    while (v7 < v5);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t GTCapabilitiesRuntime_heapAccelerationStructureInfoCompatible(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a2 + 49623) == 1 && *(a1 + 8))
  {
    v6 = 0;
    v7 = 0;
    LODWORD(v8) = 1;
    do
    {
      v9 = (*a1 + v6);
      v10 = [v5 heapAccelerationStructureSizeAndAlignWithSize:*v9];
      v13 = v9[1] >= v11 && v9[2] <= v10;
      v8 = v13 & v8;
      ++v7;
      v6 += 24;
    }

    while (v7 < *(a1 + 8));
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id GTCapabilitiesRuntime_serialize(const uint8_t *a1, uint64_t a2, apr_pool_t *p)
{
  v4 = 66688;
  v13 = 66688;
  v14 = a2;
  if (a2)
  {
    v5 = a2;
    v6 = apr_palloc(p, 0x10480uLL);
    v7 = v6;
    if (v6)
    {
      bzero(v6, 0x10480uLL);
    }

    v4 = compression_encode_buffer(v7, 0x10480uLL, a1, 0x10480uLL, 0, v5);
  }

  else
  {
    v7 = a1;
  }

  v11 = 9;
  v12 = 1;
  v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [v8 appendBytes:&v12 length:4];
  [v8 appendBytes:&v11 length:4];
  [v8 appendBytes:&v14 length:8];
  [v8 appendBytes:&v13 length:8];
  [v8 appendBytes:v7 length:v4];
  v9 = [v8 copy];

  return v9;
}

uint8_t *decodeBuffer(const uint8_t *a1, size_t a2, uint64_t a3, size_t a4, size_t a5, apr_pool_t *p)
{
  if (a4 <= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a4;
  }

  v11 = apr_palloc(p, v10);
  v12 = v11;
  if (v11)
  {
    bzero(v11, v10);
    if (a3)
    {
      if (compression_decode_buffer(v12, a4, a1, a2, 0, a3) == a4)
      {
        return v12;
      }
    }

    else if (a2 >= a4)
    {
      memcpy(v12, a1, a4);
      return v12;
    }

    return 0;
  }

  return v12;
}

uint64_t GTCapabilitiesHeapAccelerationStructureInfo_deserialize(void *a1, apr_pool_t *a2, _BYTE *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v5 = a1;
  v6 = [v5 length];
  v7 = [v5 bytes];

  if (v6 <= 3 || (v8 = *v7, *v7 >= 2u) || (v6 & 0xFFFFFFFFFFFFFFFCLL) == 4 || (v6 & 0xFFFFFFFFFFFFFFF8) == 8 || (v6 & 0xFFFFFFFFFFFFFFF0) == 0x10)
  {
LABEL_8:
    if (a3)
    {
      result = 0;
      *a3 = 1;
      return result;
    }

    return 0;
  }

  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = *(v7 + 24);
    v12 = decodeBuffer((v7 + 32), v6 - 32, *(v7 + 8), v11 * v10, v11 * v10, a2);
    if (v12)
    {
      GTCapabilitiesHeapAccelerationStructureInfo_deserializeFromBuffer(v12, v13, v11, v10, v8, a3, a2);
      return v13[0];
    }

    goto LABEL_8;
  }

  return 0;
}

char *GTCapabilitiesHeapAccelerationStructureInfo_deserializeFromBuffer(char *result, uint64_t a2, unint64_t a3, uint64_t a4, int a5, _BYTE *a6, apr_pool_t *p)
{
  if (a5 == 1 && (v11 = result, v12 = 24 * a4, (result = apr_palloc(p, 24 * a4)) != 0))
  {
    v13 = result;
    bzero(result, v12);
    if (a3 >= 0x18)
    {
      v14 = 24;
    }

    else
    {
      v14 = a3;
    }

    v15 = v13;
    v16 = a4;
    do
    {
      result = memcpy(v15, v11, v14);
      v15 += 24;
      v11 += a3;
      --v16;
    }

    while (v16);
    *a2 = v13;
    *(a2 + 8) = a4;
  }

  else if (a6)
  {
    *a6 = 1;
  }

  return result;
}

uint64_t GTCapabilitiesHeapTextureInfo_deserialize(void *a1, apr_pool_t *a2, _BYTE *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v5 = a1;
  v6 = [v5 length];
  v7 = [v5 bytes];

  if (v6 <= 3 || (v8 = *v7, v8 >= 2) || (v6 & 0xFFFFFFFFFFFFFFFCLL) == 4 || (v6 & 0xFFFFFFFFFFFFFFF8) == 8 || v6 - 16 <= 0x17)
  {
LABEL_8:
    if (a3)
    {
      result = 0;
      *a3 = 1;
      return result;
    }

    return 0;
  }

  v10 = *(v7 + 2);
  if (v10)
  {
    v11 = *(v7 + 3);
    v12 = *(v7 + 4);
    v13 = decodeBuffer(v7 + 40, v6 - 40, *(v7 + 1), (v12 + v11) * v10, (v12 + v11) * v10, a2);
    if (v13)
    {
      GTCapabilitiesHeapTextureInfo_deserializeFromBuffer(v13, v14, v11, v12, v10, v8, a3, a2);
      return v14[0];
    }

    goto LABEL_8;
  }

  return 0;
}

void GTCapabilitiesHeapTextureInfo_deserializeFromBuffer(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, apr_pool_t *p)
{
  if (a6 == 1)
  {
    v14 = 24 * a5;
    v15 = apr_palloc(p, 24 * a5);
    if (v15)
    {
      v16 = v15;
      v40 = a2;
      v41 = a7;
      bzero(v15, v14);
      if (a3 >= 0x10)
      {
        v17 = 16;
      }

      else
      {
        v17 = a3;
      }

      v18 = 1;
      v19 = a1;
      v20 = a5;
      do
      {
        memcpy(&v16[v18], v19, v17);
        v18 += 3;
        v19 += a3;
        --v20;
      }

      while (v20);
      v21 = 0;
      v22 = &a1[a5 * a3];
      while (1)
      {
        bzero(&v44, 0x250uLL);
        v23 = 0;
        v24 = 0;
        v43[0] = 56;
        do
        {
          v24 += (v43[v23++] + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        while (v23 != 75);
        v25 = apr_palloc(p, v24);
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = &v22[v21 * a4];
        bzero(v25, v24);
        v28 = 0;
        v29 = v26;
        do
        {
          if (((v43[v28] + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          v29 += (v43[v28] + 7) & 0xFFFFFFFFFFFFFFF8;
          v43[v28++] = v30;
        }

        while (v28 != 75);
        v31 = v43[0];
        *(v43[0] + 48) = 512;
        *v31 = GTMTLTextureDescriptorDefaults;
        *(v31 + 16) = unk_24DC0F1B0;
        *(v31 + 32) = xmmword_24DC0F1C0;
        v32 = *v27;
        *(v31 + 49) = *(v27 + 1);
        *(v31 + 34) = *(v27 + 2);
        *(v31 + 24) = *(v27 + 3);
        *(v31 + 32) = *(v27 + 4);
        *(v31 + 30) = *(v27 + 5);
        *(v31 + 45) = *(v27 + 6);
        *(v31 + 47) = *(v27 + 7);
        *(v31 + 28) = *(v27 + 8);
        v33 = 72;
        if (v32 < 3)
        {
          v33 = 80;
        }

        v34 = &v27[v33];
        *(v31 + 43) = *v34;
        *(v31 + 44) = *(v34 + 1);
        if (v32)
        {
          *(v31 + 20) = *(v34 + 2);
          if (v32 <= 3)
          {
            if (v32 == 3)
            {
              *(v31 + 36) = *(v34 + 16) | (16 * *(v34 + 12));
            }
          }

          else
          {
            v35 = v34[24];
            *(v31 + 46) = v35;
            v36 = *(v34 + 10);
            v37 = v36 | (16 * *(v34 + 8));
            *(v31 + 36) = v36 | (16 * *(v34 + 16));
            if (v32 >= 0x15)
            {
              *(v31 + 38) = *(v34 + 6);
              *(v31 + 40) = *(v34 + 7);
              if (v32 != 21)
              {
                *(v31 + 8) = *(v34 + 8);
                *(v31 + 42) = *(v34 + 9);
                if (v32 >= 0x23)
                {
                  v38 = *(v34 + 22);
                  v39 = *(v34 + 24);
                  *(v31 + 16) = v34[80] | (*(v34 + 22) << 8) | (*(v34 + 24) << 16) | (*(v34 + 26) << 24);
                  if (v32 >= 0x27)
                  {
                    *(v31 + 16) = *(v34 + 14);
                    if (v32 >= 0x2A)
                    {
                      *(v31 + 36) = v37 | (*(v34 + 60) << 8);
                      *v31 = *(v34 + 16);
                      *(v31 + 48) = *(v34 + 17);
                      *(v31 + 50) = *(v34 + 18);
                      if (v32 >= 0x31)
                      {
                        *(v31 + 41) = *(v34 + 19);
                        *(v31 + 39) = *(v34 + 20);
                      }
                    }
                  }
                }
              }
            }

            if (v35 == 255)
            {
              *(v31 + 46) = 0;
            }
          }
        }

        v16[3 * v21++] = v26;
        if (v21 == a5)
        {
          *v40 = v16;
          *(v40 + 8) = a5;
          return;
        }
      }

      a7 = v41;
    }
  }

  if (a7)
  {
    *a7 = 1;
  }
}

uint64_t GTFenum_isSupported(int a1)
{
  result = 1;
  if (a1 > -12545)
  {
    if (a1 > -8184)
    {
      if (a1 <= -6145)
      {
        if ((a1 + 7168) < 0x10 || (a1 + 6656) < 5 || (a1 + 8183) < 3)
        {
          return result;
        }
      }

      else if ((a1 + 6144) < 0x32 || !a1)
      {
        return result;
      }

      return 0;
    }

    if ((a1 + 10240) >= 0x67 && ((a1 + 12281) > 9 || ((1 << (a1 - 7)) & 0x203) == 0) && (a1 + 12544) >= 2)
    {
      return 0;
    }
  }

  else
  {
    if (a1 > -18433)
    {
      switch(a1)
      {
        case -16384:
        case -16383:
        case -16382:
        case -16381:
        case -16380:
        case -16379:
        case -16378:
        case -16377:
        case -16376:
        case -16375:
        case -16374:
        case -16373:
        case -16372:
        case -16371:
        case -16370:
        case -16369:
        case -16368:
        case -16367:
        case -16366:
        case -16365:
        case -16364:
        case -16363:
        case -16362:
        case -16361:
        case -16360:
        case -16359:
        case -16358:
        case -16357:
        case -16356:
        case -16355:
        case -16354:
        case -16353:
        case -16352:
        case -16351:
        case -16350:
        case -16349:
        case -16348:
        case -16347:
        case -16346:
        case -16345:
        case -16344:
        case -16343:
        case -16342:
        case -16341:
        case -16340:
        case -16339:
        case -16338:
        case -16337:
        case -16336:
        case -16335:
        case -16334:
        case -16333:
        case -16332:
        case -16331:
        case -16330:
        case -16329:
        case -16328:
        case -16327:
        case -16326:
        case -16325:
        case -16324:
        case -16323:
        case -16322:
        case -16321:
        case -16320:
        case -16319:
        case -16318:
        case -16317:
        case -16316:
        case -16315:
        case -16314:
        case -16313:
        case -16312:
        case -16311:
        case -16310:
        case -16309:
        case -16308:
        case -16307:
        case -16306:
        case -16305:
        case -16304:
        case -16303:
        case -16302:
        case -16301:
        case -16300:
        case -16299:
        case -16298:
        case -16297:
        case -16296:
        case -16295:
        case -16294:
        case -16293:
        case -16292:
        case -16291:
        case -16290:
        case -16289:
        case -16288:
        case -16287:
        case -16286:
        case -16285:
        case -16284:
        case -16283:
        case -16282:
        case -16281:
        case -16280:
        case -16279:
        case -16278:
        case -16277:
        case -16276:
        case -16275:
        case -16274:
        case -16273:
        case -16272:
        case -16271:
        case -16270:
        case -16269:
        case -16268:
        case -16267:
        case -16266:
        case -16265:
        case -16264:
        case -16263:
        case -16262:
        case -16261:
        case -16260:
        case -16259:
        case -16258:
        case -16257:
        case -16256:
        case -16255:
        case -16254:
        case -16253:
        case -16252:
        case -16251:
        case -16250:
        case -16249:
        case -16248:
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
        case -16220:
        case -16219:
        case -16218:
        case -16217:
        case -16216:
        case -16215:
        case -16214:
        case -16213:
        case -16212:
        case -16211:
        case -16210:
        case -16209:
        case -16208:
        case -16207:
        case -16206:
        case -16205:
        case -16204:
        case -16203:
        case -16202:
        case -16201:
        case -16200:
        case -16199:
        case -16198:
        case -16197:
        case -16196:
        case -16195:
        case -16194:
        case -16193:
        case -16192:
        case -16191:
        case -16190:
        case -16189:
        case -16188:
        case -16187:
        case -16186:
        case -16185:
        case -16184:
        case -16183:
        case -16182:
        case -16181:
        case -16180:
        case -16179:
        case -16178:
        case -16177:
        case -16176:
        case -16175:
        case -16174:
        case -16173:
        case -16172:
        case -16171:
        case -16170:
        case -16169:
        case -16168:
        case -16167:
        case -16166:
        case -16165:
        case -16164:
        case -16163:
        case -16162:
        case -16161:
        case -16160:
        case -16159:
        case -16158:
        case -16157:
        case -16156:
        case -16155:
        case -16154:
        case -16153:
        case -16152:
        case -16151:
        case -16150:
        case -16149:
        case -16148:
        case -16147:
        case -16146:
        case -16145:
        case -16144:
        case -16143:
        case -16142:
        case -16141:
        case -16140:
        case -16139:
        case -16138:
        case -16137:
        case -16136:
        case -16135:
        case -16134:
        case -16133:
        case -16132:
        case -16131:
        case -16130:
        case -16129:
        case -16128:
        case -16127:
        case -16126:
        case -16125:
        case -16124:
        case -16123:
        case -16122:
        case -16121:
        case -16120:
        case -16119:
        case -16118:
        case -16117:
        case -16116:
        case -16115:
        case -16114:
        case -16113:
        case -16112:
        case -16111:
        case -16110:
        case -16109:
        case -16108:
        case -16107:
        case -16106:
        case -16105:
        case -16104:
        case -16103:
        case -16102:
        case -16101:
        case -16100:
        case -16099:
        case -16098:
        case -16097:
        case -16096:
        case -16095:
        case -16094:
        case -16093:
        case -16092:
        case -16091:
        case -16090:
        case -16089:
        case -16088:
        case -16087:
        case -16086:
        case -16085:
        case -16084:
        case -16083:
        case -16082:
        case -16081:
        case -16080:
        case -16079:
        case -16078:
        case -16077:
        case -16076:
        case -16075:
        case -16074:
        case -16073:
        case -16072:
        case -16071:
        case -16070:
        case -16069:
        case -16068:
        case -16067:
        case -16066:
        case -16065:
        case -16064:
        case -16063:
        case -16062:
        case -16061:
        case -16060:
        case -16059:
        case -16058:
        case -16057:
        case -16056:
        case -16055:
        case -16054:
        case -16053:
        case -16052:
        case -16051:
        case -16050:
        case -16049:
        case -16048:
        case -16047:
        case -16046:
        case -16045:
        case -16044:
        case -16043:
        case -16042:
        case -16041:
        case -16040:
        case -16039:
        case -16038:
        case -16037:
        case -16036:
        case -16035:
        case -16034:
        case -16033:
        case -16032:
        case -16031:
        case -16030:
        case -16029:
        case -16028:
        case -16027:
        case -16026:
        case -16025:
        case -16024:
        case -16023:
        case -16022:
        case -16021:
        case -16020:
        case -16019:
        case -16018:
        case -16017:
        case -16016:
        case -16015:
        case -16014:
        case -16013:
        case -16012:
        case -16011:
        case -16010:
        case -16009:
        case -16008:
        case -16007:
        case -16006:
        case -16005:
        case -16004:
        case -16003:
        case -16002:
        case -16001:
        case -16000:
        case -15999:
        case -15998:
        case -15997:
        case -15996:
        case -15995:
        case -15994:
        case -15993:
        case -15992:
        case -15991:
        case -15990:
        case -15989:
        case -15988:
        case -15987:
        case -15986:
        case -15985:
        case -15984:
        case -15983:
        case -15982:
        case -15981:
        case -15980:
        case -15979:
        case -15978:
        case -15977:
        case -15976:
        case -15975:
        case -15974:
        case -15973:
        case -15972:
        case -15971:
        case -15970:
        case -15969:
        case -15968:
        case -15967:
        case -15966:
        case -15965:
        case -15964:
        case -15963:
        case -15962:
        case -15961:
        case -15960:
        case -15959:
        case -15958:
        case -15957:
        case -15956:
        case -15955:
        case -15954:
        case -15953:
        case -15952:
        case -15951:
        case -15950:
        case -15949:
        case -15948:
        case -15947:
        case -15946:
        case -15945:
        case -15944:
        case -15943:
        case -15942:
        case -15941:
        case -15940:
        case -15939:
        case -15938:
        case -15937:
        case -15936:
        case -15935:
        case -15934:
        case -15933:
        case -15932:
        case -15931:
        case -15930:
        case -15929:
        case -15928:
        case -15927:
        case -15926:
        case -15925:
        case -15924:
        case -15923:
        case -15922:
        case -15921:
        case -15920:
        case -15919:
        case -15918:
        case -15917:
        case -15916:
        case -15915:
        case -15914:
        case -15913:
        case -15912:
        case -15911:
        case -15910:
        case -15909:
        case -15908:
        case -15907:
        case -15906:
        case -15905:
        case -15904:
        case -15903:
        case -15902:
        case -15901:
        case -15900:
        case -15899:
        case -15898:
        case -15897:
        case -15896:
        case -15895:
        case -15894:
        case -15893:
        case -15892:
        case -15891:
        case -15890:
        case -15889:
        case -15888:
        case -15887:
        case -15886:
        case -15885:
        case -15884:
        case -15883:
        case -15882:
        case -15881:
        case -15880:
        case -15879:
        case -15878:
        case -15877:
        case -15876:
        case -15875:
        case -15874:
        case -15873:
        case -15872:
        case -15871:
        case -15870:
        case -15869:
        case -15868:
        case -15867:
        case -15866:
        case -15865:
        case -15864:
        case -15863:
        case -15862:
        case -15861:
        case -15860:
        case -15859:
        case -15858:
        case -15857:
        case -15856:
        case -15855:
        case -15854:
        case -15853:
        case -15852:
        case -15851:
        case -15850:
        case -15849:
        case -15848:
        case -15847:
        case -15846:
        case -15845:
        case -15844:
        case -15843:
        case -15842:
        case -15841:
        case -15840:
        case -15839:
        case -15838:
        case -15837:
        case -15836:
        case -15835:
        case -15834:
        case -15833:
        case -15832:
        case -15831:
        case -15830:
        case -15829:
        case -15828:
        case -15827:
        case -15826:
        case -15825:
        case -15824:
        case -15823:
        case -15822:
        case -15821:
        case -15820:
        case -15819:
        case -15818:
        case -15817:
        case -15816:
        case -15815:
        case -15814:
        case -15813:
        case -15812:
        case -15811:
        case -15810:
        case -15809:
        case -15808:
        case -15807:
        case -15806:
        case -15805:
        case -15804:
        case -15803:
        case -15802:
        case -15801:
        case -15800:
        case -15799:
        case -15798:
        case -15797:
        case -15796:
        case -15795:
        case -15794:
        case -15793:
        case -15792:
        case -15791:
        case -15790:
        case -15789:
        case -15788:
        case -15787:
        case -15786:
        case -15785:
        case -15784:
        case -15783:
        case -15782:
        case -15781:
        case -15780:
        case -15779:
        case -15778:
        case -15777:
        case -15776:
        case -15775:
        case -15774:
        case -15773:
        case -15772:
        case -15771:
        case -15770:
        case -15769:
        case -15768:
        case -15767:
        case -15766:
        case -15765:
        case -15764:
        case -15763:
        case -15762:
        case -15761:
        case -15760:
        case -15759:
        case -15758:
        case -15757:
        case -15756:
        case -15755:
        case -15754:
        case -15753:
        case -15752:
        case -15751:
        case -15750:
        case -15749:
        case -15748:
        case -15747:
        case -15746:
        case -15745:
        case -15744:
        case -15743:
        case -15742:
        case -15741:
        case -15740:
        case -15739:
        case -15738:
        case -15737:
        case -15736:
        case -15735:
        case -15734:
        case -15733:
        case -15732:
        case -15731:
        case -15730:
        case -15729:
        case -15728:
        case -15727:
        case -15726:
        case -15725:
        case -15724:
        case -15723:
        case -15722:
        case -15721:
        case -15720:
        case -15719:
        case -15718:
        case -15717:
        case -15716:
        case -15715:
        case -15714:
        case -15713:
        case -15712:
        case -15711:
        case -15710:
        case -15709:
        case -15708:
        case -15707:
        case -15706:
        case -15705:
        case -15704:
        case -15703:
        case -15702:
        case -15701:
        case -15700:
        case -15699:
        case -15698:
        case -15695:
        case -15693:
        case -15692:
        case -15691:
        case -15690:
        case -15689:
        case -15688:
        case -15685:
        case -15683:
        case -15680:
        case -15676:
        case -15675:
        case -15674:
        case -15673:
        case -15672:
        case -15671:
        case -15668:
        case -15666:
        case -15665:
        case -15664:
        case -15662:
        case -15661:
        case -15660:
        case -15659:
        case -15658:
        case -15657:
        case -15656:
        case -15655:
        case -15654:
        case -15653:
        case -15652:
        case -15651:
        case -15650:
        case -15649:
        case -15648:
        case -15647:
        case -15646:
        case -15645:
        case -15644:
        case -15643:
        case -15642:
        case -15641:
        case -15640:
        case -15639:
        case -15638:
        case -15637:
        case -15636:
        case -15635:
        case -15634:
        case -15633:
        case -15632:
        case -15631:
        case -15630:
        case -15629:
        case -15628:
        case -15627:
        case -15626:
        case -15625:
        case -15624:
        case -15623:
        case -15622:
        case -15621:
        case -15620:
        case -15619:
        case -15618:
        case -15615:
        case -15614:
        case -15613:
        case -15612:
        case -15610:
        case -15609:
        case -15608:
        case -15607:
        case -15606:
        case -15605:
        case -15604:
        case -15603:
        case -15602:
        case -15601:
        case -15600:
        case -15599:
        case -15598:
        case -15597:
        case -15596:
        case -15595:
        case -15594:
        case -15593:
        case -15592:
        case -15591:
        case -15590:
        case -15589:
        case -15588:
        case -15587:
        case -15586:
        case -15585:
        case -15584:
        case -15583:
        case -15582:
        case -15581:
        case -15580:
        case -15579:
        case -15578:
        case -15577:
        case -15576:
        case -15575:
        case -15570:
        case -15569:
        case -15568:
        case -15567:
        case -15566:
        case -15565:
        case -15564:
        case -15563:
        case -15562:
        case -15561:
        case -15560:
        case -15559:
        case -15558:
        case -15557:
        case -15556:
        case -15552:
        case -15551:
        case -15550:
        case -15549:
        case -15548:
        case -15547:
        case -15546:
        case -15545:
        case -15544:
        case -15541:
        case -15540:
        case -15539:
        case -15538:
        case -15537:
        case -15536:
        case -15535:
        case -15534:
        case -15533:
        case -15532:
        case -15531:
        case -15530:
        case -15529:
        case -15526:
        case -15525:
        case -15524:
        case -15523:
        case -15522:
        case -15521:
        case -15520:
        case -15519:
        case -15511:
        case -15509:
        case -15508:
        case -15506:
        case -15505:
        case -15504:
        case -15503:
        case -15502:
        case -15501:
        case -15500:
        case -15499:
        case -15498:
        case -15497:
        case -15496:
        case -15495:
        case -15494:
        case -15493:
        case -15492:
        case -15491:
        case -15490:
        case -15489:
        case -15488:
        case -15487:
        case -15486:
        case -15475:
        case -15474:
        case -15473:
        case -15472:
        case -15471:
        case -15470:
        case -15469:
        case -15468:
        case -15467:
        case -15466:
        case -15465:
        case -15464:
        case -15463:
        case -15462:
        case -15461:
        case -15460:
        case -15459:
        case -15458:
        case -15457:
        case -15456:
        case -15455:
        case -15454:
        case -15453:
        case -15452:
        case -15451:
        case -15450:
        case -15449:
        case -15448:
        case -15447:
        case -15446:
        case -15445:
        case -15444:
        case -15443:
        case -15442:
        case -15441:
        case -15440:
        case -15439:
        case -15438:
        case -15437:
        case -15436:
        case -15435:
        case -15434:
        case -15433:
        case -15432:
        case -15431:
        case -15430:
        case -15429:
        case -15428:
        case -15427:
        case -15426:
        case -15425:
        case -15424:
        case -15423:
        case -15422:
        case -15421:
        case -15420:
        case -15419:
        case -15418:
        case -15417:
        case -15416:
        case -15415:
        case -15414:
        case -15412:
        case -15411:
        case -15410:
        case -15406:
        case -15405:
        case -15404:
        case -15403:
        case -15401:
        case -15400:
        case -15399:
        case -15398:
        case -15397:
        case -15396:
        case -15395:
        case -15394:
        case -15393:
        case -15392:
        case -15391:
        case -15390:
        case -15389:
        case -15388:
        case -15387:
        case -15386:
        case -15385:
        case -15384:
        case -15383:
        case -15382:
        case -15381:
        case -15366:
        case -15365:
        case -15364:
        case -15363:
        case -15362:
        case -15361:
        case -15360:
        case -15359:
        case -15358:
        case -15357:
        case -15356:
        case -15355:
        case -15354:
        case -15353:
        case -15352:
        case -15351:
        case -15350:
        case -15349:
        case -15348:
        case -15347:
        case -15346:
        case -15345:
        case -15344:
        case -15343:
        case -15342:
        case -15341:
        case -15340:
        case -15339:
        case -15338:
        case -15337:
        case -15336:
        case -15335:
        case -15334:
        case -15333:
        case -15332:
        case -15331:
        case -15330:
        case -15329:
        case -15328:
        case -15327:
        case -15325:
        case -15324:
        case -15323:
        case -15322:
        case -15321:
        case -15320:
        case -15319:
        case -15318:
        case -15317:
        case -15316:
        case -15315:
        case -15314:
        case -15313:
        case -15312:
        case -15311:
        case -15310:
        case -15309:
        case -15308:
        case -15307:
        case -15306:
        case -15305:
        case -15304:
        case -15303:
        case -15302:
        case -15301:
        case -15300:
        case -15299:
        case -15298:
        case -15297:
        case -15296:
        case -15295:
        case -15294:
        case -15293:
        case -15292:
        case -15291:
        case -15290:
        case -15289:
        case -15288:
        case -15287:
        case -15285:
        case -15284:
        case -15283:
        case -15282:
        case -15281:
        case -15280:
        case -15279:
        case -15278:
        case -15277:
        case -15276:
        case -15275:
        case -15274:
        case -15273:
        case -15272:
        case -15270:
        case -15267:
        case -15266:
        case -15265:
        case -15264:
        case -15263:
        case -15262:
        case -15261:
        case -15260:
        case -15259:
        case -15258:
        case -15257:
        case -15255:
        case -15254:
        case -15253:
        case -15252:
        case -15251:
        case -15250:
        case -15249:
        case -15246:
        case -15245:
        case -15242:
        case -15241:
        case -15240:
        case -15239:
        case -15238:
        case -15237:
        case -15236:
        case -15235:
        case -15234:
        case -15233:
        case -15232:
        case -15231:
        case -15230:
        case -15229:
        case -15228:
        case -15227:
        case -15226:
        case -15225:
        case -15224:
        case -15223:
        case -15220:
        case -15219:
        case -15218:
        case -15217:
        case -15212:
        case -15211:
        case -15210:
        case -15209:
        case -15208:
        case -15207:
        case -15206:
        case -15205:
        case -15204:
        case -15200:
        case -15198:
        case -15197:
        case -15196:
        case -15195:
        case -15194:
        case -15190:
        case -15189:
        case -15182:
        case -15181:
        case -15180:
        case -15179:
        case -15178:
        case -15176:
        case -15175:
        case -15174:
        case -15173:
        case -15172:
        case -15171:
        case -15170:
        case -15169:
        case -15168:
        case -15167:
        case -15166:
        case -15165:
        case -15164:
        case -15163:
        case -15162:
        case -15161:
        case -15160:
        case -15158:
        case -15157:
        case -15156:
        case -15155:
        case -15154:
        case -15153:
        case -15152:
        case -15151:
        case -15150:
        case -15149:
        case -15146:
        case -15143:
        case -15142:
        case -15141:
        case -15140:
        case -15139:
        case -15138:
        case -15137:
        case -15136:
        case -15135:
        case -15134:
        case -15131:
        case -15130:
        case -15128:
        case -15127:
        case -15119:
        case -15118:
        case -15117:
        case -15115:
        case -15114:
        case -15113:
        case -15112:
        case -15111:
        case -15109:
        case -15108:
        case -15107:
        case -15106:
        case -15105:
        case -15104:
        case -15100:
        case -15096:
        case -15095:
        case -15094:
        case -15093:
        case -15092:
        case -15091:
        case -15089:
        case -15088:
        case -15086:
        case -15085:
        case -15084:
        case -15083:
        case -15082:
        case -15081:
        case -15076:
        case -15075:
        case -15068:
        case -15060:
        case -15059:
        case -15058:
        case -15057:
        case -15056:
        case -15055:
        case -15054:
        case -15053:
        case -15052:
        case -15051:
        case -15050:
        case -15049:
        case -15048:
        case -15047:
        case -15044:
        case -15043:
        case -15042:
        case -15041:
        case -15040:
        case -15039:
        case -15038:
        case -15037:
        case -15036:
        case -15035:
        case -15034:
        case -15033:
        case -15032:
        case -15031:
        case -15030:
        case -15029:
        case -15028:
        case -15027:
        case -15026:
        case -15025:
        case -15024:
        case -15023:
        case -15022:
        case -15021:
        case -15020:
        case -15019:
        case -15018:
        case -15017:
        case -15016:
        case -14999:
        case -14998:
        case -14997:
        case -14976:
        case -14973:
        case -14972:
        case -14971:
        case -14970:
        case -14969:
        case -14968:
        case -14966:
        case -14965:
        case -14963:
        case -14960:
        case -14959:
        case -14958:
        case -14957:
        case -14956:
        case -14954:
        case -14952:
        case -14950:
        case -14949:
        case -14948:
        case -14947:
        case -14946:
        case -14945:
        case -14944:
        case -14943:
        case -14942:
        case -14941:
        case -14940:
        case -14939:
        case -14938:
        case -14935:
        case -14933:
        case -14932:
        case -14930:
        case -14928:
        case -14927:
        case -14926:
        case -14925:
        case -14924:
        case -14923:
        case -14922:
        case -14921:
        case -14920:
        case -14919:
        case -14918:
        case -14917:
        case -14916:
        case -14915:
        case -14914:
        case -14913:
        case -14912:
        case -14911:
        case -14910:
        case -14909:
        case -14908:
        case -14907:
        case -14906:
        case -14905:
        case -14904:
        case -14903:
        case -14902:
        case -14901:
        case -14900:
        case -14899:
        case -14898:
        case -14897:
        case -14896:
        case -14895:
        case -14894:
        case -14893:
        case -14892:
        case -14891:
        case -14890:
        case -14889:
        case -14888:
        case -14887:
        case -14886:
        case -14885:
        case -14884:
        case -14879:
        case -14878:
        case -14877:
        case -14876:
        case -14875:
        case -14874:
        case -14873:
        case -14872:
        case -14871:
        case -14870:
        case -14869:
        case -14868:
        case -14867:
        case -14866:
        case -14865:
        case -14864:
        case -14863:
        case -14862:
        case -14861:
        case -14860:
        case -14859:
        case -14858:
        case -14857:
        case -14856:
        case -14855:
        case -14854:
        case -14853:
        case -14852:
        case -14851:
        case -14850:
        case -14849:
        case -14848:
        case -14847:
        case -14846:
        case -14845:
        case -14844:
        case -14843:
        case -14842:
        case -14841:
        case -14840:
        case -14839:
        case -14838:
        case -14837:
        case -14836:
        case -14835:
        case -14834:
        case -14833:
        case -14832:
        case -14831:
        case -14830:
        case -14829:
        case -14828:
        case -14827:
        case -14826:
        case -14825:
        case -14824:
        case -14823:
        case -14822:
        case -14819:
        case -14818:
        case -14816:
        case -14815:
        case -14814:
        case -14813:
        case -14812:
        case -14811:
        case -14810:
        case -14809:
        case -14808:
        case -14807:
        case -14806:
        case -14805:
        case -14804:
        case -14803:
        case -14802:
        case -14801:
        case -14800:
        case -14799:
        case -14798:
        case -14797:
        case -14796:
        case -14795:
        case -14794:
          return result;
        case -15697:
        case -15696:
        case -15694:
        case -15687:
        case -15686:
        case -15684:
        case -15682:
        case -15681:
        case -15679:
        case -15678:
        case -15677:
        case -15670:
        case -15669:
        case -15667:
        case -15663:
        case -15617:
        case -15616:
        case -15611:
        case -15574:
        case -15573:
        case -15572:
        case -15571:
        case -15555:
        case -15554:
        case -15553:
        case -15543:
        case -15542:
        case -15528:
        case -15527:
        case -15518:
        case -15517:
        case -15516:
        case -15515:
        case -15514:
        case -15513:
        case -15512:
        case -15510:
        case -15507:
        case -15485:
        case -15484:
        case -15483:
        case -15482:
        case -15481:
        case -15480:
        case -15479:
        case -15478:
        case -15477:
        case -15476:
        case -15413:
        case -15409:
        case -15408:
        case -15407:
        case -15402:
        case -15380:
        case -15379:
        case -15378:
        case -15377:
        case -15376:
        case -15375:
        case -15374:
        case -15373:
        case -15372:
        case -15371:
        case -15370:
        case -15369:
        case -15368:
        case -15367:
        case -15326:
        case -15286:
        case -15271:
        case -15269:
        case -15268:
        case -15256:
        case -15248:
        case -15247:
        case -15244:
        case -15243:
        case -15222:
        case -15221:
        case -15216:
        case -15215:
        case -15214:
        case -15213:
        case -15203:
        case -15202:
        case -15201:
        case -15199:
        case -15193:
        case -15192:
        case -15191:
        case -15188:
        case -15187:
        case -15186:
        case -15185:
        case -15184:
        case -15183:
        case -15177:
        case -15159:
        case -15148:
        case -15147:
        case -15145:
        case -15144:
        case -15133:
        case -15132:
        case -15129:
        case -15126:
        case -15125:
        case -15124:
        case -15123:
        case -15122:
        case -15121:
        case -15120:
        case -15116:
        case -15110:
        case -15103:
        case -15102:
        case -15101:
        case -15099:
        case -15098:
        case -15097:
        case -15090:
        case -15087:
        case -15080:
        case -15079:
        case -15078:
        case -15077:
        case -15074:
        case -15073:
        case -15072:
        case -15071:
        case -15070:
        case -15069:
        case -15067:
        case -15066:
        case -15065:
        case -15064:
        case -15063:
        case -15062:
        case -15061:
        case -15046:
        case -15045:
        case -15015:
        case -15014:
        case -15013:
        case -15012:
        case -15011:
        case -15010:
        case -15009:
        case -15008:
        case -15007:
        case -15006:
        case -15005:
        case -15004:
        case -15003:
        case -15002:
        case -15001:
        case -15000:
        case -14996:
        case -14995:
        case -14994:
        case -14993:
        case -14992:
        case -14991:
        case -14990:
        case -14989:
        case -14988:
        case -14987:
        case -14986:
        case -14985:
        case -14984:
        case -14983:
        case -14982:
        case -14981:
        case -14980:
        case -14979:
        case -14978:
        case -14977:
        case -14975:
        case -14974:
        case -14967:
        case -14964:
        case -14962:
        case -14961:
        case -14955:
        case -14953:
        case -14951:
        case -14937:
        case -14936:
        case -14934:
        case -14931:
        case -14929:
        case -14883:
        case -14882:
        case -14881:
        case -14880:
        case -14821:
        case -14820:
        case -14817:
          return 0;
        default:
          if ((a1 + 18432) >= 0xB)
          {
            return 0;
          }

          break;
      }

      return result;
    }

    if ((a1 + 20376) >= 0x3F)
    {
      v3 = (a1 + 20480);
      if (v3 > 0x34 || v3 == 33)
      {
        v4 = (a1 + 20426);
        if (v4 > 0x30 || v4 == 18)
        {
          return 0;
        }
      }
    }
  }

  return result;
}