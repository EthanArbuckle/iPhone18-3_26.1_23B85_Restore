uint64_t IOSurfaceAcceleratorCreate(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  valuePtr = xmmword_25494D810;
  v21 = 500000;
  *a3 = 0;
  if (!kIOSurfaceAcceleratorID)
  {
    pthread_once(&IOSurfaceAcceleratorGetTypeID_once, ioSurfaceAcceleratorClassInitialize);
  }

  connect = 0;
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 16) = 0;
  *(Instance + 44) = 0;
  if (a2)
  {
    if (CFDictionaryGetValue(a2, @"Sharpener"))
    {
      Strength = srs_getStrength(a2);
      *(Instance + 44) = 1;
      v7 = Strength | 0xB00000;
      v8 = "AppleSRSDriver";
    }

    else
    {
      v7 = 0;
      v8 = "AppleM2ScalerCSCDriver";
    }

    Value = CFDictionaryGetValue(a2, @"PriorityBand");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    v10 = CFDictionaryGetValue(a2, @"DutyCycleDuration");
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr + 8);
    }

    v11 = CFDictionaryGetValue(a2, @"HistogramDuration");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt64Type, &v21);
    }
  }

  else
  {
    v7 = 0;
    v8 = "AppleM2ScalerCSCDriver";
  }

  if (checkIsVirtualized_once != -1)
  {
    IOSurfaceAcceleratorCreate_cold_1();
  }

  v12 = *MEMORY[0x277CD2898];
  if (checkIsVirtualized_is_virtualized == 1)
  {
    v13 = IOServiceMatching("AppleM2ScalerParavirtDriver");
    MatchingService = IOServiceGetMatchingService(v12, v13);
    if (!MatchingService)
    {
      v15 = 3758097088;
      fwrite("IOServiceMatchingfailed for: AppleM2ScalerParavirtDriver\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
LABEL_28:
      CFRelease(Instance);
      return v15;
    }
  }

  else
  {
    v16 = IOServiceMatching(v8);
    MatchingService = IOServiceGetMatchingService(v12, v16);
    if (!MatchingService)
    {
      v15 = 3758097088;
      fprintf(*MEMORY[0x277D85DF8], "IOServiceMatchingfailed for: %s\n", v8);
      goto LABEL_28;
    }
  }

  v17 = MatchingService;
  v15 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], v7, &connect);
  if (v15)
  {
    goto LABEL_28;
  }

  v18 = connect;
  *(Instance + 32) = v17;
  *(Instance + 36) = v18;
  *a3 = Instance;
  if (checkIsVirtualized_once != -1)
  {
    IOSurfaceAcceleratorCreate_cold_1();
  }

  if ((checkIsVirtualized_is_virtualized & 1) == 0 && IOConnectCallStructMethod(*(Instance + 36), 0xAu, &valuePtr, 0x18uLL, 0, 0))
  {
    fprintf(*MEMORY[0x277D85DF8], "Failed to set client property for: %s\n", v8);
  }

  return 0;
}

uint64_t IOSurfaceAcceleratorTransformSurface(uint64_t a1, __IOSurface *a2, __IOSurface *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6)
{
  memset(v11, 0, sizeof(v11));
  if (a6)
  {
    *(v11 + 8) = *a6;
    *(&v11[1] + 1) = *(a6 + 16);
  }

  prepareTransformRectangles(a5, v11);
  result = prepareTransformBuffersAndOptions(a2, a3, a4, 0, v11);
  if (!result)
  {
    return transformSurface(a1, v11, a4);
  }

  return result;
}

__n128 prepareTransformRectangles(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 40) = *a1;
    result = *(a1 + 16);
    v3 = *(a1 + 32);
    *(a2 + 56) = result;
    *(a2 + 96) = v3;
  }

  return result;
}

uint64_t prepareTransformBuffersAndOptions(__IOSurface *a1, IOSurfaceRef buffer, const __CFDictionary *a3, char a4, uint64_t a5)
{
  if (buffer && a1 && a5)
  {
    *(a5 + 88) = 0;
    *(a5 + 4) = IOSurfaceGetID(buffer);
    *a5 = IOSurfaceGetID(a1);
    *(a5 + 72) = IOSurfaceGetWidth(a1);
    *(a5 + 76) = IOSurfaceGetHeight(a1);
    *(a5 + 112) = IOSurfaceGetWidth(buffer);
    *(a5 + 116) = IOSurfaceGetHeight(buffer);
    *(a5 + 80) = 0;
    if (a3)
    {
      *v75 = 0;
      *v76 = 0;
      *v73 = 0;
      *v74 = 0;
      v72 = 0;
      if (getNumber(a3, @"UnwireSurface", &v72))
      {
        *(a5 + 32) |= v72 << 35;
      }

      v71 = 0;
      if (getNumber(a3, @"Transform", &v71))
      {
        if ((v71 & 0xFFFFFFFC & ((v71 & 0xFFFFFFFC) - 1)) != 0)
        {
          if (log_level_enabled(1u, 0))
          {
            prepareTransformBuffersAndOptions_cold_2(&v71);
          }

LABEL_156:
          v11 = 3758097090;
          if (log_level_enabled(1u, 0))
          {
            prepareTransformBuffersAndOptions_cold_11();
          }

          return v11;
        }

        *(a5 + 32) |= v71;
      }

      v70 = 0;
      if (getNumber(a3, @"DitherControl", &v70))
      {
        v10 = v70;
        if (v70 >= 4)
        {
          if (log_level_enabled(1u, 0))
          {
            prepareTransformBuffersAndOptions_cold_3(&v70);
          }

          goto LABEL_156;
        }
      }

      else
      {
        v10 = 1;
      }

      *(a5 + 32) |= v10 << 13;
      if (getBoolean(a3, @"CustomFilter"))
      {
        *(a5 + 32) |= 0x40uLL;
      }

      if (getBoolean(a3, @"NearestFilter"))
      {
        *(a5 + 32) |= 0x80uLL;
      }

      if (getBoolean(a3, @"OptOutBlitClip"))
      {
        *(a5 + 32) |= 0x100uLL;
      }

      if (getBoolean(a3, @"LockInScaler"))
      {
        *(a5 + 32) |= 0x200uLL;
      }

      if (getBoolean(a3, @"SkipAsyncCallback"))
      {
        *(a5 + 32) |= 0x400uLL;
      }

      if (getBoolean(a3, @"FixUpscaling"))
      {
        *(a5 + 32) |= 0x1000uLL;
      }

      if (getBoolean(a3, @"ITUVariantCSCEnable"))
      {
        *(a5 + 32) |= 0x1000000000000uLL;
      }

      v69 = 0;
      if (getNumber(a3, @"AlphaOverride", &v69))
      {
        *(a5 + 32) |= 0x40000uLL;
        *(a5 + 168) = v69;
      }

      *(a5 + 204) = 0;
      v68 = 0;
      if (getNumber(a3, @"WriteOnlyModeAlpha", &v68))
      {
        *(a5 + 204) = v68;
        if (getNumber(a3, @"WriteOnlyModeRedLuma", &v68))
        {
          *(a5 + 206) = v68;
          if (getNumber(a3, @"WriteOnlyModeGreenCb", &v68))
          {
            *(a5 + 208) = v68;
            if (getNumber(a3, @"WriteOnlyModeBlueCr", &v68))
            {
              *(a5 + 210) = v68;
              *(a5 + 32) |= 0x2000000000000uLL;
            }
          }
        }
      }

      if (getBoolean(a3, @"FilmGrainEnable"))
      {
        *(a5 + 32) |= 0x4000000000000uLL;
      }

      if (getNumber(a3, @"BorderFillX", &v76[1]) && getNumber(a3, @"BorderFillY", v76) && getNumber(a3, @"BorderFillWidth", &v75[1]) && getNumber(a3, @"BorderFillHeight", v75) && getNumber(a3, @"BorderFillRedY", v74) && getNumber(a3, @"BorderFillGreenCb", &v73[1]) && getNumber(a3, @"BorderFillBlueCr", v73))
      {
        *(a5 + 32) |= 0x10000000uLL;
        v23 = v76[0];
        *(a5 + 172) = v76[1];
        *(a5 + 176) = v23;
        v24 = v75[0];
        *(a5 + 180) = v75[1];
        *(a5 + 184) = v24;
        v25 = v73[1];
        *(a5 + 192) = v74[0];
        *(a5 + 196) = v25;
        *(a5 + 200) = v73[0];
        if (getNumber(a3, @"BorderFillAlpha", &v74[1]))
        {
          *(a5 + 188) = v74[1];
        }
      }

      if (getNumber(a3, @"HistogramBinMode", (a5 + 220)))
      {
        *(a5 + 32) |= 0x20000000uLL;
        getNumber(a3, @"HistogramOffsetX", (a5 + 224));
        getNumber(a3, @"HistogramOffsetY", (a5 + 228));
        getNumber(a3, @"HistogramWidth", (a5 + 232));
        getNumber(a3, @"HistogramHeight", (a5 + 236));
        if (*(a5 + 220) == 2)
        {
          Value = CFDictionaryGetValue(a3, @"HistogramPixelBins");
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            v28 = Count;
            v29 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Value, v29);
              if (!ValueAtIndex)
              {
                break;
              }

              v31 = ValueAtIndex;
              v32 = CFGetTypeID(ValueAtIndex);
              if (v32 != CFNumberGetTypeID())
              {
                break;
              }

              LODWORD(valuePtr[0]) = 0;
              CFNumberGetValue(v31, kCFNumberSInt32Type, valuePtr);
              v33 = LODWORD(valuePtr[0]);
              if (HIWORD(LODWORD(valuePtr[0])))
              {
                if (log_level_enabled(1u, 0))
                {
                  prepareTransformBuffersAndOptions_cold_4(v33);
                }

                goto LABEL_156;
              }

              *(a5 + 240 + 4 * v29++) = valuePtr[0];
              if (v28 == v29)
              {
                goto LABEL_63;
              }
            }

            if (log_level_enabled(1u, 0))
            {
              prepareTransformBuffersAndOptions_cold_10();
            }

            goto LABEL_156;
          }
        }
      }

LABEL_63:
      v67 = 0;
      if (getNumber(a3, @"ZeroFill", &v67) && v67)
      {
        *(a5 + 32) |= 0x40000000uLL;
      }

      v66 = 0;
      if (getNumber(a3, @"ColorRemapMode", &v66))
      {
        if (v66 >= 5)
        {
          goto LABEL_156;
        }

        *(a5 + 32) |= v66 << 36;
      }

      if (getBoolean(a3, @"DisablePseudoLinearScaling"))
      {
        *(a5 + 32) |= 0x80000000uLL;
      }

      if (getBoolean(a3, @"PixelAveraging"))
      {
        *(a5 + 32) |= 0x100000000uLL;
      }

      if (getBoolean(a3, @"EdgeMirroring"))
      {
        *(a5 + 32) |= 0x200000000uLL;
      }

      if (getBoolean(a3, @"DirectionalScalingEnable"))
      {
        *(a5 + 32) |= 0x8000000000uLL;
      }

      if (getBoolean(a3, @"HDREnable"))
      {
        *(a5 + 32) |= 0x10000000000uLL;
      }

      if (getBoolean(a3, @"NoiseEstimationEnable"))
      {
        *(a5 + 32) |= 0x40000000000uLL;
      }

      if (getBoolean(a3, @"EnhanceEnable"))
      {
        *(a5 + 32) |= 0x20000000000uLL;
      }

      if (getBoolean(a3, @"ReadOnly"))
      {
        *(a5 + 32) |= 0x80000000000uLL;
      }

      if (getBoolean(a3, @"HtpcLargeHeaders"))
      {
        *(a5 + 32) |= 0x100000000000uLL;
      }

      if (getBoolean(a3, @"VraScaling"))
      {
        *(a5 + 32) |= 0x200000000000uLL;
      }

      if (getBoolean(a3, @"NoPowerEarlyBail"))
      {
        *(a5 + 32) |= 0x400000000000uLL;
      }

      if (getBoolean(a3, @"HighPriority") && log_level_enabled(1u, 0))
      {
        prepareTransformBuffersAndOptions_cold_5();
      }

      if (getBoolean(a3, @"FirmwareTimeoutInject"))
      {
        *(a5 + 32) |= 0x800000000000uLL;
      }

      if (getBoolean(a3, @"LockInScaler"))
      {
        v34 = log_level_enabled(3u, 0);
        if (v34)
        {
          prepareTransformBuffersAndOptions_cold_6(v34, v35, v36, v37, v38, v39, v40, v41);
        }
      }

      if (getBoolean(a3, @"ReducedPrecisionFractionalOffsets"))
      {
        *(a5 + 32) |= 0x8000000000000uLL;
      }

      if (getBoolean(a3, @"NoCoalesceAsyncIOFenceWrites"))
      {
        *(a5 + 32) |= 0x10000000000000uLL;
      }

      if (getBoolean(a3, @"DestinationSurfaceDisplayBound"))
      {
        *(a5 + 32) |= 0x20000000000000uLL;
      }

      if (getBoolean(a3, @"SymmetricScaling"))
      {
        *(a5 + 32) |= 0x40000000000000uLL;
      }

      if (getBoolean(a3, @"DefaultChromaDownsample"))
      {
        *(a5 + 32) |= 0x80000000000000uLL;
      }

      if (getBoolean(a3, @"ITUVariantCSCEnable"))
      {
        *(a5 + 32) |= 0x1000000000000uLL;
      }

      valuePtr[0] = 0;
      if (getNumberU64(a3, @"SharedEventSrcRef", valuePtr))
      {
        *(a5 + 120) = MEMORY[0x259C1FF40](valuePtr[0]);
        getNumberU64(a3, @"SharedEventSrcWait", (a5 + 128));
        getNumberU64(a3, @"SharedEventSrcSignal", (a5 + 136));
      }

      v77 = 0;
      if (getNumberU64(a3, @"SharedEventDstRef", &v77))
      {
        *(a5 + 144) = MEMORY[0x259C1FF40](v77);
        getNumberU64(a3, @"SharedEventDstWait", (a5 + 152));
        getNumberU64(a3, @"SharedEventDstSignal", (a5 + 160));
      }

      v42 = (a5 + 292);
      v43 = 4;
      do
      {
        *(v42 - 5) = 0;
        *v42 = 0;
        v42 += 10;
        --v43;
      }

      while (v43);
      v44 = CFDictionaryGetValue(a3, @"IOSurfaceAcceleratorCommApi");
      if (v44)
      {
        v45 = v44;
        v46 = CFArrayGetCount(v44);
        if (v46 >= 1)
        {
          v47 = v46;
          for (i = 0; v47 != i; ++i)
          {
            v49 = CFArrayGetValueAtIndex(v45, i);
            if (v49)
            {
              v50 = v49;
              Length = CFDataGetLength(v49);
              if (Length)
              {
                v52 = Length;
                BytePtr = CFDataGetBytePtr(v50);
                if (BytePtr)
                {
                  if (v52 != 40)
                  {
                    if (log_level_enabled(1u, 0))
                    {
                      prepareTransformBuffersAndOptions_cold_7();
                    }

                    goto LABEL_156;
                  }

                  v54 = BytePtr;
                  v55 = *BytePtr;
                  if (*BytePtr <= 1)
                  {
                    if (v55)
                    {
                      if (v55 != 1)
                      {
LABEL_180:
                        if (log_level_enabled(1u, 0))
                        {
                          prepareTransformBuffersAndOptions_cold_9(v54);
                        }

                        goto LABEL_156;
                      }

                      v57 = 0;
                      v56 = 568;
                    }

                    else
                    {
                      v56 = 0;
                      v57 = 0;
                    }
                  }

                  else
                  {
                    switch(v55)
                    {
                      case 2:
                        v56 = 36872;
                        v57 = 1;
                        break;
                      case 3:
                        v56 = *(BytePtr + 4);
                        v57 = 2;
                        break;
                      case 4:
                        v56 = *(BytePtr + 4);
                        v57 = 3;
                        break;
                      default:
                        goto LABEL_180;
                    }
                  }

                  v58 = a5 + 272 + 40 * v57;
                  *v58 = v55;
                  *(v58 + 16) = v56;
                  v59 = *(BytePtr + 5);
                  if (v59 > 1)
                  {
                    if (v59 == 2)
                    {
                      v60 = 4104;
                    }

                    else
                    {
                      if (v59 != 3)
                      {
LABEL_178:
                        if (log_level_enabled(1u, 0))
                        {
                          prepareTransformBuffersAndOptions_cold_8(v54 + 5);
                        }

                        goto LABEL_156;
                      }

                      v60 = *(BytePtr + 8);
                    }
                  }

                  else
                  {
                    v60 = *(BytePtr + 5);
                    if (v59)
                    {
                      if (v59 != 1)
                      {
                        goto LABEL_178;
                      }

                      v60 = 380;
                    }
                  }

                  *(v58 + 20) = v59;
                  *(v58 + 32) = v60;
                  *(v58 + 8) = *(BytePtr + 1);
                  *(v58 + 24) = *(BytePtr + 3);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      *(a5 + 32) |= 0x2000uLL;
    }

    v20 = IOSurfaceCopyValue(buffer, *MEMORY[0x277CD2978]);
    if (v20)
    {
      v21 = v20;
      if (CFEqual(v20, *MEMORY[0x277CD29A0]) || CFEqual(v21, *MEMORY[0x277CD2998]))
      {
        v11 = 0;
        v22 = 1;
      }

      else if (CFEqual(v21, *MEMORY[0x277CD2990]))
      {
        v11 = 0;
        v22 = 2;
      }

      else if (CFEqual(v21, *MEMORY[0x277CD29B0]))
      {
        v11 = 0;
        v22 = 3;
      }

      else if (CFEqual(v21, *MEMORY[0x277CD29A8]))
      {
        v11 = 0;
        v22 = 4;
      }

      else if (CFEqual(v21, *MEMORY[0x277CD2988]))
      {
        v11 = 0;
        v22 = 5;
      }

      else if (CFEqual(v21, *MEMORY[0x277CD2980]))
      {
        v11 = 0;
        v22 = 6;
      }

      else
      {
        v11 = 3758097090;
        if (log_level_enabled(1u, 0))
        {
          prepareTransformBuffersAndOptions_cold_12();
        }

        v22 = 0;
      }

      CFRelease(v21);
    }

    else
    {
      v77 = 132;
      BulkAttachments = IOSurfaceGetBulkAttachments();
      v11 = BulkAttachments;
      if (v77 == 132 && BulkAttachments == 0)
      {
        v63 = v79 - 1;
      }

      else
      {
        v63 = -1;
      }

      if (v63 > 6u)
      {
        v22 = 0;
      }

      else
      {
        v22 = dword_25494D7F0[v63];
      }
    }

    if (!v11 && v22)
    {
      *(a5 + 32) |= (v22 << 15);
    }

    if (!v11 && (a4 & 1) == 0)
    {
      v11 = 0;
      *(a5 + 32) |= 0x1000uLL;
    }
  }

  else
  {
    v11 = 3758097090;
    v12 = log_level_enabled(1u, 0);
    if (v12)
    {
      prepareTransformBuffersAndOptions_cold_1(v12, v13, v14, v15, v16, v17, v18, v19, v65);
    }
  }

  return v11;
}

BOOL getNumber(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  v5 = Value;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, a3);
  }

  return v5 != 0;
}

uint64_t ioSurfaceAcceleratorClassInitialize()
{
  kIOSurfaceAcceleratorID = _CFRuntimeRegisterClass();

  return log_start(4, 2u, 0x7FFFFF, 0x37u);
}

uint64_t log_start(uint64_t result, unsigned int a2, int a3, unsigned __int8 a4)
{
  gIosaLogListenerMask = 0;
  gIosaLogListenerRegisteredCount = 0;
  if (a2 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = a2;
  }

  gIosaLogVerbosity = v4;
  gIosaLogModuleMask = a3 & 0x7FFFFF;
  gIosaLogHeaderMask = a4;
  if ((result & 2) != 0)
  {
    gIosaLogListenerMask = 2;
    v5 = 1;
    gIosaLogListenerRegisteredCount = 1;
    gIosaLogListenerQueue[0] = printf_listener;
    v6 = 6;
    if ((result & 4) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  v5 = 0;
  v6 = 4;
  if ((result & 4) != 0)
  {
LABEL_8:
    gIosaLogListenerMask = v6;
    gIosaLogListenerRegisteredCount = v5 + 1;
    gIosaLogListenerQueue[v5] = syslog_listener;
  }

  return result;
}

uint64_t __checkIsVirtualized_block_invoke()
{
  v6 = 0;
  v5 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v6, &v5, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v6 == 0;
  }

  v2 = !v1;
  checkIsVirtualized_is_virtualized = v2;
  if (!v1)
  {
    v6 = 0;
    v5 = 4;
    result = sysctlbyname("debug.iosa.simulated_model", &v6, &v5, 0, 0);
    if (result)
    {
      v3 = 1;
    }

    else
    {
      v3 = v6 == 0;
    }

    v4 = v3;
    checkIsVirtualized_is_virtualized = v4;
  }

  return result;
}

const __CFBoolean *getBoolean(const __CFDictionary *a1, const __CFString *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    return (CFBooleanGetValue(result) != 0);
  }

  return result;
}

BOOL getNumberU64(const __CFDictionary *a1, const __CFString *a2, unint64_t *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  v5 = Value;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberLongLongType, a3);
  }

  return v5 != 0;
}

uint64_t transformSurface(uint64_t a1, char *inputStruct, CFDictionaryRef theDict)
{
  if (*(a1 + 44) == 1)
  {
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v43 = 0;
    memset(outputStruct, 0, sizeof(outputStruct));
    outputStructCnt = 88;
    inputStructa = *inputStruct;
    v45 = *(inputStruct + 8);
    v46 = *(inputStruct + 3);
    v47 = 0;
    Value = CFDictionaryGetValue(theDict, @"SharpenerMode");
    if (Value)
    {
      v6 = Value;
      v7 = 1;
      if (CFStringCompare(Value, @"SharpenerMode_Static", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_8;
      }

      if (CFStringCompare(v6, @"SharpenerMode_Dynamic", 1uLL) == kCFCompareEqualTo)
      {
        v7 = 0;
LABEL_8:
        v48 = v7;
        HIDWORD(v49) = getpid();
        LODWORD(v49) = srs_getStrength(theDict);
        v16 = CFDictionaryGetValue(theDict, @"SharpenerSourceCleaness");
        if (v16)
        {
          v17 = v16;
          if (CFStringCompare(v16, @"SharpenerSourceCleaness_Noisy", 1uLL))
          {
            v18 = 1;
            if (CFStringCompare(v17, @"SharpenerSourceCleaness_Normal", 1uLL) == kCFCompareEqualTo)
            {
              goto LABEL_21;
            }

            if (CFStringCompare(v17, @"SharpenerSourceCleaness_Clean", 1uLL))
            {
              v19 = log_level_enabled(2u, 0);
              if (v19)
              {
                transformSurface_cold_2(v19, v20, v21, v22, v23, v24, v25, v26, v40);
              }

              goto LABEL_14;
            }

            v18 = 2;
          }

          else
          {
            v18 = 0;
          }

LABEL_21:
          DWORD1(v49) = v18;
          v29 = CFDictionaryGetValue(theDict, @"SharpenerSourceSharpness");
          if (v29)
          {
            v30 = v29;
            if (CFStringCompare(v29, @"SharpenerSourceSharpness_Blur", 1uLL) == kCFCompareEqualTo)
            {
              v31 = 0;
              goto LABEL_28;
            }

            v31 = 1;
            if (CFStringCompare(v30, @"SharpenerSourceSharpness_Sharp", 1uLL) == kCFCompareEqualTo)
            {
LABEL_28:
              DWORD2(v49) = v31;
              return IOConnectCallStructMethod(*(a1 + 36), 1u, &inputStructa, 0x58uLL, outputStruct, &outputStructCnt);
            }

            v32 = log_level_enabled(2u, 0);
            if (v32)
            {
              transformSurface_cold_3(v32, v33, v34, v35, v36, v37, v38, v39, v40);
            }
          }

          v31 = 1;
          goto LABEL_28;
        }

LABEL_14:
        v18 = 1;
        goto LABEL_21;
      }

      v8 = log_level_enabled(2u, 0);
      if (v8)
      {
        transformSurface_cold_1(v8, v9, v10, v11, v12, v13, v14, v15, v40);
      }
    }

    v7 = 1;
    goto LABEL_8;
  }

  v27 = *(a1 + 36);

  return IOConnectCallStructMethod(v27, 1u, inputStruct, 0x1B0uLL, 0, 0);
}

uint64_t IOSurfaceAcceleratorSetCustomFilter(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  memset(v10, 0, sizeof(v10));
  result = prepareCustomFilter(a2, a3, a4, a5, a6, a7, a8, v10);
  if (!result)
  {
    return IOConnectCallStructMethod(*(a1 + 36), 4u, v10, 0x20uLL, 0, 0);
  }

  return result;
}

uint64_t prepareCustomFilter(int a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && a3 && a4 && a5 && a6 && a7 && a8)
  {
    v8 = 0;
    *a8 = a1;
    *(a8 + 4) = a2;
    *(a8 + 8) = a3;
    *(a8 + 12) = a4;
    *(a8 + 16) = a5;
    *(a8 + 20) = a6;
    *(a8 + 24) = a7;
  }

  else
  {
    v8 = 3758097090;
    v9 = log_level_enabled(1u, 0);
    if (v9)
    {
      prepareCustomFilter_cold_1(v9, v10, v11, v12, v13, v14, v15, v16, v18);
    }
  }

  return v8;
}

uint64_t ioSurfaceAcceleratorFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IONotificationPortDestroy(v2);
  }

  v3 = *(a1 + 36);
  if (v3)
  {
    v3 = IOServiceClose(v3);
  }

  return log_stop(v3);
}

uint64_t log_set_verbosity(uint64_t result)
{
  if (result >= 5)
  {
    v1 = 5;
  }

  else
  {
    v1 = result;
  }

  gIosaLogVerbosity = v1;
  return result;
}

uint64_t printf_listener(int *a1, const char *a2, va_list a3)
{
  v7 = *MEMORY[0x277D85DE8];
  log_format_munge(__str, a2, a1);
  result = vprintf(__str, a3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void syslog_listener(uint64_t a1, const char *a2, char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  log_format_munge(__str, a2, a1);
  v5 = *(a1 + 4);
  if (v5 > 5)
  {
    v6 = -1;
  }

  else
  {
    v6 = dword_25494D7D8[v5];
  }

  vsyslog(v6, __str, a3);
  v7 = *MEMORY[0x277D85DE8];
}

BOOL log_level_enabled(unsigned int a1, int a2)
{
  result = 1;
  if (a2 != 1)
  {
    return gIosaLogVerbosity >= a1 && (gIosaLogModuleMask & (1 << a2)) != 0;
  }

  return result;
}

uint64_t log_msg(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!gIosaLogListenerMask)
  {
    return result;
  }

  v10 = gIosaLogHeaderMask & a3;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  LODWORD(v12) = gIosaLogHeaderMask & a3;
  if ((gIosaLogHeaderMask & a3 & 1) == 0)
  {
    if ((gIosaLogHeaderMask & a3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    DWORD1(v12) = result;
    if ((gIosaLogHeaderMask & a3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&v13 = "IOSA";
  if ((gIosaLogHeaderMask & a3 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((gIosaLogHeaderMask & a3 & 4) != 0)
  {
LABEL_5:
    DWORD2(v12) = a2;
  }

LABEL_6:
  if ((gIosaLogHeaderMask & a3 & 0x38) != 0)
  {
    *(&v13 + 1) = a4;
    *&v14 = a5;
    *(&v14 + 1) = a6;
  }

  if ((gIosaLogHeaderMask & a3 & 0x40) != 0)
  {
    result = pthread_threadid_np(0, &v15);
  }

  if (v10 < 0)
  {
    result = mach_continuous_time();
    *(&v15 + 1) = result;
  }

  if (gIosaLogListenerRegisteredCount)
  {
    v11 = 0;
    do
    {
      result = (gIosaLogListenerQueue[v11++])(&v12, a7, &a9);
    }

    while (v11 < gIosaLogListenerRegisteredCount);
  }

  return result;
}

void log_panic_debug(int a1, const char *a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = snprintf(__str, 0x200uLL, "[%s][%s:%zu, %s] ", log_module_desc[a1], a3, a4, a2);
  vsnprintf(&__str[v10], 512 - v10, a5, &a9);
  syslog(3, "%s", __str);
  abort();
}

uint64_t log_format_munge(char *__str, const char *a2, int *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  if (*a3)
  {
    v8 = snprintf(__str, 0xFFuLL, "[%-*s]", 4, *(a3 + 2));
    if ((v8 - 256) < 0xFFFFFF01)
    {
      log_format_munge();
    }

    v7 = v8;
    v6 = *a3;
    if ((*a3 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  v7 += snprintf(&__str[v7], 255 - v7, "[%-*s]", 5, log_level_desc[a3[1]]);
  if (v7 - 256 < 0xFFFFFF01)
  {
    log_format_munge();
  }

  v6 = *a3;
  if ((*a3 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v7 += snprintf(&__str[v7], 255 - v7, "[0x%016llx]", *(a3 + 7));
    if (v7 - 256 < 0xFFFFFF01)
    {
      log_format_munge();
    }

    v6 = *a3;
    if ((*a3 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_11:
  v7 += snprintf(&__str[v7], 255 - v7, "[0x%08llx]", *(a3 + 6));
  if (v7 - 256 < 0xFFFFFF01)
  {
    log_format_munge();
  }

  v6 = *a3;
  if ((*a3 & 0x80) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v6 & 4) != 0)
  {
LABEL_15:
    v7 += snprintf(&__str[v7], 255 - v7, "[%-*s]", 12, log_module_desc[a3[2]]);
    if (v7 - 256 < 0xFFFFFF01)
    {
      log_format_munge();
    }

    v6 = *a3;
  }

  if ((v6 & 0x38) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if ((~v6 & 0x18) == 0)
  {
    v9 = *(a3 + 4);
    v10 = strlen(v9) - 1;
    v11 = v10;
    while (v11)
    {
      v12 = v11 - 1;
      v13 = v9[v11] != 47 || v11 >= v10;
      --v11;
      if (!v13)
      {
        v14 = v12 + 2;
        goto LABEL_31;
      }
    }

    v14 = 0;
LABEL_31:
    str_truncate(v25, &v9[v14]);
    str_truncate(v24, *(a3 + 3));
    if ((v7 & 0x80000000) != 0)
    {
      log_format_munge();
    }

    v7 += snprintf(&__str[v7], 255 - v7, "[%*s %*s:%-*lu]", 24, v24, 24, v25, 4, *(a3 + 5));
    if (v7 - 256 <= 0xFFFFFF00)
    {
      log_format_munge();
    }

    goto LABEL_46;
  }

  if ((v6 & 0x10) != 0)
  {
    v16 = *(a3 + 4);
    v17 = strlen(v16) - 1;
    v18 = v17;
    while (v18)
    {
      v19 = v18 - 1;
      v20 = v16[v18] != 47 || v18 >= v17;
      --v18;
      if (!v20)
      {
        v21 = v19 + 2;
        goto LABEL_42;
      }
    }

    v21 = 0;
LABEL_42:
    str_truncate(v25, &v16[v21]);
    if ((v7 & 0x80000000) != 0)
    {
      log_format_munge();
    }

    v7 += snprintf(&__str[v7], 255 - v7, "[%*s:%-*lu]", 24, v25, 4, *(a3 + 5));
    if (v7 - 256 <= 0xFFFFFF00)
    {
      log_format_munge();
    }

    goto LABEL_46;
  }

  if ((v6 & 8) != 0)
  {
    str_truncate(v25, *(a3 + 3));
    v7 += snprintf(&__str[v7], 255 - v7, "[%*s:%-*lu]", 24, v25, 4, *(a3 + 5));
    if (v7 - 256 <= 0xFFFFFF00)
    {
      log_format_munge();
    }
  }

  else
  {
LABEL_28:
    if (!v7)
    {
      v15 = 0;
      goto LABEL_49;
    }
  }

LABEL_46:
  if (v7 == 255)
  {
    v15 = 255;
  }

  else
  {
    v15 = v7 + 1;
    __str[v7] = 32;
  }

LABEL_49:
  result = snprintf(&__str[v15], 255 - v15, "%s", a2);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

size_t str_truncate(char *a1, const char *__s)
{
  v4 = strlen(__s);
  if (v4 > 0x18)
  {
    v8 = v4;
    strlcpy(a1, __s, 0x10uLL);
    a1[16] = 46;
    v6 = &__s[v8 - 7];
    v5 = a1 + 17;
    v7 = 7;
  }

  else
  {
    v5 = a1;
    v6 = __s;
    v7 = 24;
  }

  return strlcpy(v5, v6, v7);
}

uint64_t IOSurfaceAcceleratorGetTypeID()
{
  result = kIOSurfaceAcceleratorID;
  if (!kIOSurfaceAcceleratorID)
  {
    pthread_once(&IOSurfaceAcceleratorGetTypeID_once, ioSurfaceAcceleratorClassInitialize);
    return kIOSurfaceAcceleratorID;
  }

  return result;
}

uint64_t IOSurfaceAcceleratorGetServiceObject(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 3758097084;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a2 = *(a1 + 32);
      *a3 = *(a1 + 36);
    }
  }

  return result;
}

uint64_t srs_getStrength(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Strength");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = 1;
  if (CFStringCompare(Value, @"StrengthWeak", 1uLL))
  {
    if (CFStringCompare(v2, @"StrengthNormal", 1uLL))
    {
      if (CFStringCompare(v2, @"StrengthStrong", 1uLL) == kCFCompareEqualTo)
      {
        return 3;
      }

      v4 = log_level_enabled(2u, 0);
      if (v4)
      {
        srs_getStrength_cold_1(v4, v5, v6, v7, v8, v9, v10, v11, v13);
      }
    }

    return 0;
  }

  return v3;
}

uint64_t IOSurfaceAcceleratorGetID(mach_port_t *a1, mach_port_t *a2)
{
  outputCnt = 1;
  result = 3758097090;
  if (a1 && a2)
  {
    if (a1[11] == 1)
    {
      result = 0;
      a1[10] = 255;
    }

    else
    {
      v5 = a1[10];
      if (v5)
      {
        result = 0;
      }

      else
      {
        output = 0;
        result = IOConnectCallScalarMethod(a1[9], 5u, 0, 0, &output, &outputCnt);
        if (result)
        {
          v5 = a1[10];
        }

        else
        {
          v5 = output;
          a1[10] = output;
        }
      }

      *a2 = v5;
    }
  }

  return result;
}

CFRunLoopSourceRef IOSurfaceAcceleratorGetRunLoopSource(CFRunLoopSourceRef result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 3);
    if (!result)
    {
      v2 = *(v1 + 2);
      if (v2 || (v2 = IONotificationPortCreate(*MEMORY[0x277CD2898]), (*(v1 + 2) = v2) != 0))
      {
        v3 = *(v1 + 9);
        MachPort = IONotificationPortGetMachPort(v2);
        MEMORY[0x259C1FE50](v3, 0, MachPort, 0);
        result = IONotificationPortGetRunLoopSource(*(v1 + 2));
        *(v1 + 3) = result;
      }

      else
      {
        return *(v1 + 3);
      }
    }
  }

  return result;
}

uint64_t convertToTransform(uint64_t a1, __IOSurface *a2, IOSurfaceRef buffer, const __CFDictionary *a4, uint32x2_t *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
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
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (a7)
  {
    *(&v13 + 1) = a7;
    *&v14 = a8;
    *(&v14 + 1) = a9;
  }

  if (a5 && a6)
  {
    v11 = (a5[2].i32[1] << 14) | (a5->u32[1] << 16);
    *(&v15 + 1) = (a5[2].i32[0] << 14) | (a5->u32[0] << 16);
    *&v16[0] = v11;
    *(v16 + 8) = vshll_n_u32(a5[1], 0x10uLL);
    v17 = *a6;
  }

  result = prepareTransformBuffersAndOptions(a2, buffer, a4, 1, &v13);
  if (!result)
  {
    return transformSurface(a1, &v13, a4);
  }

  return result;
}

uint64_t IOSurfaceAcceleratorCaptureSurface(uint64_t a1, IOSurfaceRef buffer, const __CFDictionary *a3, int a4, unsigned int a5, unsigned int a6, int a7, int a8, int a9, int a10, __int128 a11, uint64_t a12)
{
  v19 = 3758097090;
  inputStruct = a11;
  v24 = a12;
  v25 = 0;
  ID = IOSurfaceGetID(buffer);
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a4;
  if (a9 + a7 <= a5 && a10 + a8 <= a6)
  {
    if (!a3)
    {
      return IOConnectCallStructMethod(*(a1 + 36), 0, &inputStruct, 0x40uLL, 0, 0);
    }

    Value = CFDictionaryGetValue(a3, @"Transform");
    if (!Value)
    {
      return IOConnectCallStructMethod(*(a1 + 36), 0, &inputStruct, 0x40uLL, 0, 0);
    }

    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if ((valuePtr & 0xFFFFFFFC & ((valuePtr & 0xFFFFFFFC) - 1)) == 0)
    {
      v25 = 2 * valuePtr;
      return IOConnectCallStructMethod(*(a1 + 36), 0, &inputStruct, 0x40uLL, 0, 0);
    }
  }

  return v19;
}

uint64_t IOSurfaceAcceleratorSetFilterCoefficients(uint64_t a1, _DWORD *a2)
{
  v4 = 3758097085;
  fprintf(*MEMORY[0x277D85DF8], "WARNING: Use of %s is DEPRECATED. Please use IOSurfaceAcceleratorSetCustomFilter SPI instead.\n", "IOReturn IOSurfaceAcceleratorSetFilterCoefficients(IOSurfaceAcceleratorRef, IOSurfaceAcceleratorFilter *)");
  v5 = malloc_type_malloc(0x600uLL, 0x100004052888210uLL);
  if (v5)
  {
    v6 = v5;
    v7 = a2 + 321;
    v8 = a2 + 129;
    v9 = a2 + 193;
    v10 = a2 + 1;
    v11 = 1;
    while (1)
    {
      v12 = v11;
      v13 = *a2 & 0xF;
      if (v13 > 7)
      {
        v4 = 3758097090;
        goto LABEL_26;
      }

      v14 = 0;
      v15 = v7;
      v16 = v6;
      do
      {
        for (i = 0; i != 64; i += 4)
        {
          *v16++ = v15[i];
        }

        ++v14;
        ++v15;
      }

      while (v14 != 4);
      v18 = 0;
      v19 = v8;
      do
      {
        for (j = 0; j != 64; j += 4)
        {
          *v16++ = v19[j];
        }

        ++v18;
        ++v19;
      }

      while (v18 != 4);
      v21 = 0;
      v22 = v9;
      do
      {
        for (k = 0; k != 128; k += 8)
        {
          *v16++ = v22[k];
        }

        ++v21;
        ++v22;
      }

      while (v21 != 8);
      v24 = 0;
      v25 = v10;
      do
      {
        for (m = 0; m != 128; m += 8)
        {
          *v16++ = v25[m];
        }

        ++v24;
        ++v25;
      }

      while (v24 != 8);
      v27 = IOSurfaceAcceleratorSetCustomFilter(a1, (0x40000 - (v13 << 15)) >> 3, 4, 16, (0x40000 - (v13 << 15)) >> 3, 8, 16, v6);
      if (v27)
      {
        break;
      }

      if ((*a2 & 0x80000000) != 0)
      {
        v11 = 0;
        a2 += 385;
        v7 += 385;
        v8 += 385;
        v9 += 385;
        v10 += 385;
        if (v12)
        {
          continue;
        }
      }

      v4 = 0;
      goto LABEL_26;
    }

    v4 = v27;
LABEL_26:
    free(v6);
  }

  return v4;
}

uint64_t IOSurfaceAcceleratorKernelTests(uint64_t a1, _DWORD *inputStruct)
{
  if (*inputStruct <= 0x3E8u)
  {
    return IOConnectCallStructMethod(*(a1 + 36), 6u, inputStruct, 0xFA8uLL, 0, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfaceAcceleratorGetHistogram(uint64_t a1, uint64_t a2)
{
  v3 = 3758097084;
  result = 3758097090;
  if (a1 && a2)
  {
    valuePtr = 0;
    v6 = IORegistryEntrySearchCFProperty(*(a1 + 32), "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (v6)
    {
      v7 = v6;
      inputStruct = 0;
      Value = CFDictionaryGetValue(v6, @"kSurfaceAcceleratorCapabilitiesHistogramValues");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        v9 = a2 + 4;
        inputStruct = a2 + 4;
        v3 = IOConnectCallStructMethod(*(a1 + 36), 7u, &inputStruct, 8uLL, 0, 0);
        if (!v3)
        {
          *(a2 + 1544) = v9;
          v10 = valuePtr;
          *(a2 + 1552) = v9 + 4 * valuePtr;
          *(a2 + 1560) = v9 + 8 * v10;
          *a2 = v10;
        }
      }

      CFRelease(v7);
      return v3;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t IOSurfaceAcceleratorGetFrameworkInfo(void *a1)
{
  result = 3758097090;
  if (a1)
  {
    *a1 = 0;
    return 3758097136;
  }

  return result;
}

uint64_t IOSurfaceAcceleratorGetDiag(uint64_t a1, _DWORD *a2)
{
  inputStruct = a2;
  v2 = 3758097090;
  if (a1)
  {
    if (a2)
    {
      v2 = 3758097089;
      if (*a2 == 1766084715)
      {
        v2 = IOConnectCallStructMethod(*(a1 + 36), 8u, &inputStruct, 8uLL, 0, 0);
        if (v2)
        {
          fprintf(*MEMORY[0x277D85DF8], "[iosaDiag] IOSurfaceAcceleratorGetDiag returned %x\n", v2);
        }
      }
    }
  }

  return v2;
}

double IOSurfaceAcceleratorGetTransformEstimation(uint64_t a1, IOSurfaceRef buffer, __IOSurface *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a6)
  {
    v13 = 0;
    v14 = 0uLL;
    memset(v15, 0, sizeof(v15));
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    inputStruct[0] = v15;
    inputStruct[1] = &v13;
    DWORD2(v16) = IOSurfaceGetWidth(buffer);
    HIDWORD(v16) = IOSurfaceGetHeight(buffer);
    LODWORD(v19) = IOSurfaceGetWidth(a3);
    DWORD1(v19) = IOSurfaceGetHeight(a3);
    prepareTransformRectangles(a5, v15);
    if (!prepareTransformBuffersAndOptions(buffer, a3, a4, 0, v15))
    {
      IOConnectCallStructMethod(*(a1 + 36), 9u, inputStruct, 0x10uLL, 0, 0);
      *a6 = v13;
      result = *&v14;
      *(a6 + 8) = v14;
    }
  }

  return result;
}

uint64_t IOSurfaceAcceleratorParavirtProcessGuestData(uint64_t a1, uint64_t a2)
{
  result = 3758097090;
  if (a2 && *(a1 + 36))
  {
    if (*a2 == 2)
    {
      v9 = (a2 + 8);
      if (*(a2 + 16))
      {
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
      }

      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      v7 = *(a1 + 36);
      v8 = 1;
      v10 = 432;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      if (*a2 != 1)
      {
        goto LABEL_11;
      }

      v5 = *(a2 + 16);
      if (!v5)
      {
        goto LABEL_11;
      }

      v6 = (a2 + 24);
      v7 = *(a1 + 36);
      v8 = 11;
      v9 = 0;
      v10 = 0;
    }

    result = IOConnectCallStructMethod(v7, v8, v9, v10, v5, v6);
LABEL_11:
    *(a2 + 4) = result;
  }

  return result;
}

void log_format_munge()
{
  __assert_rtn("log_format_munge", "Log.cpp", 330, "( char_count > 0) &&(char_count < length)");
}

{
  __assert_rtn("log_format_munge", "Log.cpp", 338, "( char_count > 0) &&(char_count < length)");
}

{
  __assert_rtn("log_format_munge", "Log.cpp", 346, "( char_count > 0) &&(char_count < length)");
}

{
  __assert_rtn("log_format_munge", "Log.cpp", 354, "( char_count > 0) &&(char_count < length)");
}

{
  __assert_rtn("log_format_munge", "Log.cpp", 362, "( char_count > 0) &&(char_count < length)");
}

{
  __assert_rtn("log_format_munge", "Log.cpp", 404, "( char_count > 0) &&(char_count < length)");
}

{
  __assert_rtn("operator()", "Log.cpp", 320, "char_count >= 0");
}

{
  __assert_rtn("log_format_munge", "Log.cpp", 416, "( char_count > 0) &&(char_count < length)");
}

{
  __assert_rtn("log_format_munge", "Log.cpp", 391, "( char_count > 0) &&(char_count < length)");
}

uint64_t prepareTransformBuffersAndOptions_cold_2(unsigned int *a1)
{
  v9 = *a1;
  v1 = OUTLINED_FUNCTION_0();
  return log_msg(v1, v2, v3, v4, v5, 346, v6, v7, v9);
}

uint64_t prepareTransformBuffersAndOptions_cold_3(unsigned int *a1)
{
  v9 = *a1;
  v1 = OUTLINED_FUNCTION_0();
  return log_msg(v1, v2, v3, v4, v5, 370, v6, v7, v9);
}

uint64_t prepareTransformBuffersAndOptions_cold_8(unsigned int *a1)
{
  v9 = *a1;
  v1 = OUTLINED_FUNCTION_0();
  return log_msg(v1, v2, v3, v4, v5, 892, v6, v7, v9);
}

uint64_t prepareTransformBuffersAndOptions_cold_9(unsigned int *a1)
{
  v9 = *a1;
  v1 = OUTLINED_FUNCTION_0();
  return log_msg(v1, v2, v3, v4, v5, 867, v6, v7, v9);
}