uint64_t CMPhotoCFDictionaryGetSizeIfPresent(uint64_t a1, uint64_t a2, void *a3)
{
  Int64IfPresent = CMPhotoCFDictionaryGetInt64IfPresent();
  result = 0;
  if (a3)
  {
    if (Int64IfPresent)
    {
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t CMPhotoSurfacePoolCreateMemorySurface(uint64_t a1, unint64_t a2, uint64_t a3, __IOSurface **a4)
{
  v6 = a1;
  buffer = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_8(&CMPhotoSurfacePoolGetDefault_onceToken);
    v6 = defaultSurfacePool;
  }

  if (v6 == @"SurfacePoolOneShot")
  {
    v14 = 0;
    goto LABEL_14;
  }

  v39 = 0;
  if (!Pool_LookupSizeBucket(v6 + 24, a2, &v39) || (v7 = *(v6 + 48), v8 = (v7 + 88 * v39), !v7))
  {
    v14 = *(v6 + 160);
LABEL_14:
    OUTLINED_FUNCTION_5_6();
    MemorySurface = CMPhotoCreateMemorySurface(v15, v16, v17, v18, v19, v14, v20);
    if (!MemorySurface)
    {
      v36 = 0;
      v37 = 4294950305;
      goto LABEL_33;
    }

    goto LABEL_52;
  }

  MemorySurface = FigSimpleMutexLock();
  if (MemorySurface)
  {
    goto LABEL_52;
  }

  v10 = *v8;
  if (*v8)
  {
    while (!*(v10 + 72) && IOSurfaceIsInUse(*v10))
    {
      v10 = *(v10 + 40);
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    Pool_MarkBufferAsUsed(v6 + 24, v8, v10);
    v12 = *v10;
    buffer = v12;
    *(v6 + 384) = OUTLINED_FUNCTION_12_5();
    *(v6 + 392) = 0;
    if (*(v6 + 352))
    {
      [*(v6 + 352) takeAssertionUntilTime:OUTLINED_FUNCTION_2_7() forContext:v6];
      [*(v6 + 352) registerBackgroundNotificationHandlerForContext:v6 handler:*(v6 + 360)];
    }

    if (*(v6 + 320))
    {
      dispatch_resume(*(v6 + 328));
      v11 = 0;
      *(v6 + 320) = 0;
    }

    else
    {
      v11 = 0;
    }

    v13 = 1;
  }

  else
  {
LABEL_11:
    v11 = v8[2];
    Pool_Cleanup((v6 + 24), *(v6 + 80) - v11, *(v6 + 104) - 1, 0, 0);
    v12 = 0;
    v13 = 0;
  }

  FigSimpleMutexUnlock();
  if (!v13 || !v12)
  {
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (CMPhotoUsePurgeableIOSurfaces() && IOSurfaceSetPurgeable(v12, 0, 0))
  {
    SurfacePool_DetachSurface(v6, v12, 0);
    CFRelease(v12);
    buffer = 0;
LABEL_43:
    if (((*(v6 + 136) + v11) <= *(v6 + 80) || !*(v6 + 153)) && (*(v6 + 144) < *(v6 + 104) || !*(v6 + 152)))
    {
      goto LABEL_16;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    MemorySurface = FigSignalErrorAtGM();
LABEL_52:
    v37 = MemorySurface;
    v36 = 0;
LABEL_53:
    WiringAssertion = 0;
    goto LABEL_54;
  }

  v34 = *MEMORY[0x1E696CF98];
  v35 = IOSurfaceCopyValue(v12, *MEMORY[0x1E696CF98]);
  IOSurfaceRemoveAllValues(v12);
  if (v35)
  {
    IOSurfaceSetValue(v12, v34, v35);
    CFRelease(v35);
  }

LABEL_16:
  v21 = buffer;
  if (buffer)
  {
LABEL_32:
    v36 = 0;
    v37 = 0;
    *a4 = v21;
    goto LABEL_33;
  }

  v22 = *(v6 + 160);
  OUTLINED_FUNCTION_5_6();
  MemorySurface = CMPhotoCreateMemorySurface(v23, v24, v25, v26, v27, v22, v28);
  if (MemorySurface)
  {
    goto LABEL_52;
  }

  if (*(v6 + 128))
  {
    WiringAssertion = IOSurfaceCreateWiringAssertion();
  }

  else
  {
    WiringAssertion = 0;
  }

  CMPhotoGetEncodeAccelerationModeOverride(0);
  IOSurfaceIncrementUseCount(0);
  v30 = OUTLINED_FUNCTION_11_4();
  v36 = v30;
  if (v30)
  {
    v30[4] = v8;
    v31 = v8[2];
    *v30 = 0;
    v30[1] = v31;
    v30[2] = WiringAssertion;
    v30[3] = 0;
    v32 = FigSimpleMutexLock();
    if (!v32)
    {
      Pool_InsertNewBuffer((v6 + 24), v8, v36);
      *(v6 + 384) = OUTLINED_FUNCTION_12_5();
      *(v6 + 392) = 0;
      if (*(v6 + 352))
      {
        [*(v6 + 352) takeAssertionUntilTime:OUTLINED_FUNCTION_2_7() forContext:v6];
        [*(v6 + 352) registerBackgroundNotificationHandlerForContext:v6 handler:*(v6 + 360)];
      }

      if (*(v6 + 320))
      {
        dispatch_resume(*(v6 + 328));
        *(v6 + 320) = 0;
      }

      FigSimpleMutexUnlock();
      v21 = 0;
      goto LABEL_32;
    }

    v37 = v32;
    goto LABEL_53;
  }

  v37 = 4294950305;
LABEL_54:
  if (buffer)
  {
    IOSurfaceDecrementUseCount(buffer);
    CFRelease(buffer);
  }

  if (WiringAssertion)
  {
    CFRelease(WiringAssertion);
  }

LABEL_33:
  free(v36);
  return v37;
}

BOOL CMPhotoUnifiedJPEGDecoderShouldUseHWForOperation(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  ShouldUseHWDecoderForSize = CMPhotoShouldUseHWDecoderForSize(*(a1 + 64) * *(a1 + 56), 1);
  if (*(a1 + 48) == 4)
  {
    if (!ShouldUseHWDecoderForSize)
    {
      return 0;
    }
  }

  else if (*(a1 + 32) > 0xC800000uLL || !ShouldUseHWDecoderForSize)
  {
    return 0;
  }

  if (qword_1ED6FA638 == -1)
  {
    if (a2)
    {
      return 0;
    }
  }

  else
  {
    CMPhotoUnifiedJPEGDecoderFileSupportedByHardware_cold_1();
    if (a2)
    {
      return 0;
    }
  }

  return _isHWAvailableHelper_sHWAvailable && JPEGDeviceInterface_supportsAppleInterchangeFormats();
}

uint64_t _prepare(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, BOOL *a9)
{
  ShouldUseHWForOperation = CMPhotoUnifiedJPEGDecoderShouldUseHWForOperation(a1, a3);
  v14 = MEMORY[0x1E695FF58];
  if (ShouldUseHWForOperation)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    HWDecoderIfNeeded = _createHWDecoderIfNeeded(a1, a2);
    if (*v14 == 1)
    {
      kdebug_trace();
    }

    v16 = a3 != 2;
    if (!HWDecoderIfNeeded)
    {
      v16 = 0;
    }

    if (a3 == 2 && HWDecoderIfNeeded)
    {
      return HWDecoderIfNeeded;
    }

    v17 = !v16;
    if (!v16 && (a3 || !a7))
    {
      if (!a9)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
  }

  if (*v14 == 1)
  {
    kdebug_trace();
  }

  HWDecoderIfNeeded = _createSWDecoderIfNeeded(a1, a7);
  if (*v14 == 1)
  {
    kdebug_trace();
  }

  if (a9 && !HWDecoderIfNeeded)
  {
LABEL_14:
    HWDecoderIfNeeded = 0;
    *a9 = v17;
  }

  return HWDecoderIfNeeded;
}

uint64_t _createHWDecoderIfNeeded(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (*(a1 + 144))
  {
    v13 = 0;
    DataWrappingIOSurface = 0;
    if (*(a1 + 216))
    {
      DataPointer = 0;
    }

    else
    {
      DataPointer = -16996;
    }

    goto LABEL_47;
  }

  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  Length = 0;
  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    if ((CFDataGetBytePtr(*(a1 + 40)) & 0x1F) == 0 && CFDataGetLength(*(a1 + 40)) > 0x800000)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        DataWrappingIOSurface = CFRetain(v5);
        v5 = *(a1 + 40);
      }

      else
      {
        DataWrappingIOSurface = 0;
      }

      Length = CFDataGetLength(v5);
      BytePtr = CFDataGetBytePtr(DataWrappingIOSurface);
      v12 = 1;
      CMPhotoCreateMemorySurface(Length, 1246774599, 1, BytePtr, Length, 0, &cf);
LABEL_24:
      if (cf)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    v4 = *(a1 + 48);
  }

  if (v4 == 2)
  {
    if (!CMBlockBufferIsRangeContiguous(*(a1 + 40), 0, 0))
    {
      goto LABEL_23;
    }

    dataPointerOut = 0;
    lengthAtOffsetOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(*(a1 + 40), 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (!DataPointer)
    {
      v10 = CFDataCreateWithBytesNoCopy(*(a1 + 8), dataPointerOut, lengthAtOffsetOut, *MEMORY[0x1E695E498]);
      if (v10)
      {
        DataWrappingIOSurface = v10;
        v24 = 0;
        if (CMPhotoCopyBackingIOSurfaceFromStorage(*(a1 + 40), 2, &cf, &v24, &Length) || v24)
        {
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          MemorySurface = CMPhotoCreateMemorySurface(lengthAtOffsetOut, 1246774599, 1, dataPointerOut, lengthAtOffsetOut, 0, &cf);
          if (MemorySurface)
          {
            goto LABEL_71;
          }

          Length = lengthAtOffsetOut;
        }

        MemorySurface = IOSurfaceLock(cf, 0, 0);
        if (!MemorySurface)
        {
          v12 = 0;
          goto LABEL_24;
        }

LABEL_71:
        v20 = MemorySurface;
        goto LABEL_65;
      }

      DataPointer = -16991;
    }

    v13 = 0;
    DataWrappingIOSurface = 0;
LABEL_47:
    if (*(a1 + 145) | DataPointer)
    {
      v20 = DataPointer;
    }

    else
    {
      v20 = 4294950300;
    }

    goto LABEL_62;
  }

  if (v4 != 4)
  {
LABEL_23:
    DataWrappingIOSurface = 0;
    Length = *(a1 + 32);
    v12 = 1;
    goto LABEL_24;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  cf = v8;
  DataWrappingIOSurface = 0;
  Length = IOSurfaceGetAllocSize(v8);
  v12 = 1;
  if (v8)
  {
LABEL_25:
    v13 = 0;
    if (DataWrappingIOSurface)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_29:
  PooledIOSurfaceFromStreamRange = _createPooledIOSurfaceFromStreamRange(a2, *(a1 + 16), *(a1 + 24), *(a1 + 32), &Length, &cf);
  if (PooledIOSurfaceFromStreamRange)
  {
    v13 = 0;
    goto LABEL_57;
  }

  v13 = 1;
  if (DataWrappingIOSurface)
  {
    goto LABEL_32;
  }

LABEL_31:
  DataWrappingIOSurface = CMPhotoCreateDataWrappingIOSurface(*(a1 + 8), cf, 0, Length);
  if (!DataWrappingIOSurface)
  {
    PooledIOSurfaceFromStreamRange = -16991;
    goto LABEL_57;
  }

LABEL_32:
  v15 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v16 = JPEGParseJPEGInfo(DataWrappingIOSurface, a1 + 148, 0, 0);
  if (*v15 == 1)
  {
    kdebug_trace();
  }

  *(a1 + 144) = 1;
  PooledIOSurfaceFromStreamRange = -16996;
  if ((*(a1 + 200) & 1) == 0)
  {
    v17 = 1024;
    if (*(a1 + 172) == 1)
    {
      v17 = 1536;
    }

    v18 = (*(a1 + 152) * *(a1 + 148));
    PooledIOSurfaceFromStreamRange = v17 >= v18 ? -16996 : v16;
    if (v17 < v18 && !PooledIOSurfaceFromStreamRange)
    {
      *(a1 + 145) = 1;
      if ((v12 & 1) == 0)
      {
        IOSurfaceUnlock(cf, 0, 0);
      }

      DataPointer = 0;
      v19 = Length;
      *(a1 + 216) = cf;
      *(a1 + 224) = v19;
      cf = 0;
      *(a1 + 232) = v13;
      goto LABEL_47;
    }
  }

LABEL_57:
  if (*(a1 + 145) | PooledIOSurfaceFromStreamRange)
  {
    v20 = PooledIOSurfaceFromStreamRange;
  }

  else
  {
    v20 = 4294950300;
  }

  if ((v12 & 1) == 0)
  {
    IOSurfaceUnlock(cf, 0, 0);
  }

LABEL_62:
  v22 = cf;
  if (v13 && cf)
  {
    IOSurfaceDecrementUseCount(cf);
LABEL_65:
    v22 = cf;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (DataWrappingIOSurface)
  {
    CFRelease(DataWrappingIOSurface);
  }

  return v20;
}

uint64_t _createPooledIOSurfaceFromStreamRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, IOSurfaceRef *a6)
{
  buffer = 0;
  v11 = a4;
  if (a5)
  {
    v11 = *a5;
  }

  v12 = CMPhotoSurfacePoolCreateMemorySurface(a1, v11 + 2, 1, &buffer);
  if (v12 || (v12 = IOSurfaceLock(buffer, 0, 0), v12))
  {
    v17 = v12;
  }

  else
  {
    BaseAddress = IOSurfaceGetBaseAddress(buffer);
    v19 = 0;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v14)
    {
      v15 = v14(a2, a4, a3, BaseAddress, &v19);
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        if (v19 == a4)
        {
          v16 = &BaseAddress[v11];
          if (BaseAddress[v11 - 2] != 255 || *(v16 - 1) != 217)
          {
            *v16 = -9729;
            v11 += 2;
          }

          IOSurfaceUnlock(buffer, 0, 0);
          if (a5)
          {
            *a5 = v11;
          }

          v17 = 0;
          *a6 = buffer;
          return v17;
        }

        v17 = 4294950304;
      }
    }

    else
    {
      v17 = 4294954514;
    }

    IOSurfaceUnlock(buffer, 0, 0);
  }

  if (buffer)
  {
    IOSurfaceDecrementUseCount(buffer);
    if (buffer)
    {
      CFRelease(buffer);
    }
  }

  return v17;
}

uint64_t CMPhotoRestrictedDecodingDisabled()
{
  if (CMPhotoRestrictedDecodingDisabled_onceToken != -1)
  {
    CMPhotoRestrictedDecodingDisabled_cold_1();
  }

  return 0;
}

uint64_t CMPhotoGetEvenScalingModeDefault(uint64_t a1, uint64_t a2)
{
  if (CMPhotoGetEvenScalingModeDefault_onceToken != -1)
  {
    CMPhotoGetEvenScalingModeDefault_cold_1();
  }

  return a2;
}

uint64_t CMPhotoCFDictionaryGetInt64IfPresent()
{
  result = OUTLINED_FUNCTION_1_28();
  if (v4)
  {
    if (v2)
    {
      v5 = v3;
      if (v3)
      {
        result = OUTLINED_FUNCTION_2_30(v2, v4, v14, number);
        if (result)
        {
          TypeID = CFNumberGetTypeID();
          if (v0 == OUTLINED_FUNCTION_3_29(TypeID, v7, v8, v9, v10, v11, v12, v13, v15, numbera))
          {
            CFNumberGetValue(numberb, kCFNumberSInt64Type, v5);
            return 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoCFDictionaryGetCFValueIfPresent()
{
  result = OUTLINED_FUNCTION_1_28();
  if (v3)
  {
    if (v1)
    {
      v4 = v2;
      result = OUTLINED_FUNCTION_2_30(v1, v3, v6, cf);
      if (result)
      {
        v5 = CFGetTypeID(cfa);
        result = 1;
        if (v4)
        {
          if (v5)
          {
            *v4 = cfa;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _createImageForIndex_1(uint64_t a1, unint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  cf = 0;
  v14 = a2;
  v12 = 0;
  v9 = _checkImageIndex(a1 + 40, &v14, &v12);
  if (v9)
  {
    return v9;
  }

  v10 = _decodeImage(*(a1 + 40), a1, *(a1 + 64), 0, 0, a3, v12, 0, a4, 0, &cf);
  if (v10)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a5 = cf;
  }

  return v10;
}

uint64_t _createImageForIndex_3(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4, CGImageRef *a5)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v33 = 0;
  if (!*(a1 + 112))
  {
    fig_log_get_emitter();
    SampleBuffer = FigSignalErrorAtGM();
    goto LABEL_4;
  }

  if (a3)
  {
    v46[0] = @"DryRun";
    SampleBuffer = _checkForUnsupportedKeys(a3, v46);
    if (SampleBuffer)
    {
      goto LABEL_4;
    }
  }

  SampleBuffer = _moveSampleCursorToIndexAndCreateSampleBuffer(*(a1 + 40), a2, *(a1 + 80));
  if (SampleBuffer)
  {
    goto LABEL_4;
  }

  v14 = *(a1 + 96);
  if (!v14 || ((Count = CFArrayGetCount(v14), Count >= 1) ? (v16 = 0) : (v16 = -1), Count < 1 || !CMPhotoShouldDecodeAlphaAutomatically(a3, 0, &v33)))
  {
    SampleBuffer = _decodePixelBufferForImageIndex(*(a1 + 40), a1, a2, v45, *(a1 + 80), a3, a4, a5);
    goto LABEL_4;
  }

  v19 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  CMPhotoDecompressionContainerCreateAlphaDecodeOptionsForInternalIndex(a1, a2, a3, v33, &v44, &v43, v17, v18, v22, block, SHIDWORD(block), v24, v25, v26, v27, v28, v29, v30, v31);
  if (SampleBuffer)
  {
    goto LABEL_4;
  }

  v20 = *(a1 + 104);
  if (!v20)
  {
    v20 = dispatch_queue_create("com.apple.coremedia.decodeasyncauxiliary", 0);
    *(a1 + 104) = v20;
    if (!v20)
    {
      v11 = 4294950305;
      goto LABEL_5;
    }
  }

  block = MEMORY[0x1E69E9820];
  v24 = *"";
  v25 = ___createImageForIndex_block_invoke;
  v26 = &unk_1E77A2AD0;
  v29 = a1;
  v30 = a2;
  v31 = v16;
  v32 = v43;
  v27 = &v34;
  v28 = &v38;
  dispatch_async(v20, &block);
  v21 = _decodePixelBufferForImageIndex(*(a1 + 40), a1, a2, v45, *(a1 + 80), v44, 2, &v42);
  if (v21)
  {
    v11 = v21;
    dispatch_sync(*(a1 + 104), &__block_literal_global_22_0);
    goto LABEL_5;
  }

  LOBYTE(v46[0]) = 0;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  dispatch_sync(*(a1 + 104), &__block_literal_global_14);
  v11 = *(v35 + 6);
  if (v11)
  {
    goto LABEL_5;
  }

  if (CMPhotoCreateImageFromAlphaAndMainBuffer(v42, v39[3], 2, 0, LOBYTE(v46[0]), a4, a5))
  {
    SampleBuffer = CMPhotoCreateWrappedPixelBufferForType(*(a1 + 40), v42, LOBYTE(v46[0]), a4, a5);
    if (SampleBuffer)
    {
LABEL_4:
      v11 = SampleBuffer;
      goto LABEL_5;
    }
  }

  if (*v19 == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  v11 = 0;
LABEL_5:
  if (v44)
  {
    CFRelease(v44);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  v12 = v39[3];
  if (v12)
  {
    CFRelease(v12);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  return v11;
}

uint64_t CMPhotoDecompressionSessionCopyScaler(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 16));
    v5 = *(a1 + 280);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    os_unfair_lock_unlock((a1 + 16));
    return 0;
  }

  return result;
}

uint64_t _isCodecAllowedByDictionary(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = a4;
  FigCFDictionaryApplyBlock();
  if (a1)
  {
    v5 = *(v8 + 24);
  }

  else
  {
    v5 = 1;
    *(v8 + 24) = 1;
  }

  _Block_object_dispose(&v7, 8);
  return v5;
}

void OUTLINED_FUNCTION_14_2()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 137) = 1;
}

dispatch_time_t OUTLINED_FUNCTION_14_4()
{
  v2 = *(v0 + 152) + 5000000000;

  return dispatch_time(0, v2);
}

void OUTLINED_FUNCTION_14_8(const void *a1@<X1>, int a2@<W8>)
{
  if (a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = *v6;

  CFDictionarySetValue(v2, a1, v7);
}

uint64_t OUTLINED_FUNCTION_14_10(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
{

  return CMPhotoFloatFromRationalArray(a1, 1, 0, 0, a5);
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return FigSimpleMutexLock();
}

void OUTLINED_FUNCTION_14_18(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int bytes)
{
  bytes = bswap32(a1);

  CFDataAppendBytes(v8, &bytes, 4);
}

uint64_t CMPhotoDecompressionSessionCopySurfacePool(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 16));
    v5 = *(a1 + 272);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    os_unfair_lock_unlock((a1 + 16));
    return 0;
  }

  return result;
}

uint64_t CMPhotoCFDictionaryGetInt32IfPresent()
{
  result = OUTLINED_FUNCTION_1_28();
  if (v4)
  {
    if (v2)
    {
      v5 = v3;
      if (v3)
      {
        result = OUTLINED_FUNCTION_2_30(v2, v4, v14, number);
        if (result)
        {
          TypeID = CFNumberGetTypeID();
          if (v0 == OUTLINED_FUNCTION_3_29(TypeID, v7, v8, v9, v10, v11, v12, v13, v15, numbera))
          {
            CFNumberGetValue(numberb, kCFNumberSInt32Type, v5);
            return 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

double _getImageSize(uint64_t a1, int a2, int a3, unint64_t a4, __n128 *a5, __n128 a6)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (_parseExifIfNeeded(a1, 0) || !*(a1 + 280))
      {
        return a6.n128_f64[0];
      }

      a6 = *(a1 + 288);
    }

    else
    {
      if (a2 != 2)
      {
        return a6.n128_f64[0];
      }

      v9 = 0;
      if (_getAuxiliaryImageStorageForIndex(a1, a3, a4, &v9))
      {
        return a6.n128_f64[0];
      }

      a6 = *v9;
    }
  }

  else
  {
    if (_parseImageSizeAndTypeIfNeeded())
    {
      return a6.n128_f64[0];
    }

    a6 = *(a1 + 72);
  }

  v10 = a6;
  if (a5)
  {
    a6.n128_u64[0] = v10.n128_u64[0];
    *a5 = v10;
  }

  return a6.n128_f64[0];
}

uint64_t _parseOptionsForJPEGDecoding(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  result = CMPhotoDecompressionContainerParseOptions(a1, a2, a3, a4, a7);
  if (result)
  {
    return result;
  }

  v13 = *(a7 + 72);
  if ((a6 & 0xFE) == 0xC2 && v13 != 2)
  {
    *(a7 + 72) = 1;
LABEL_8:
    if (*(a7 + 21) && (a3 * a4) / (*(a7 + 48) * *(a7 + 40)) >= 5)
    {
      *(a7 + 72) = 1;
    }

    goto LABEL_11;
  }

  if (v13 != 2)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (a5 == 2)
  {
    result = 0;
    *(a7 + 72) = 1;
  }

  else
  {
    v15 = *(a7 + 4);
    if ((v15 - 1278226736) <= 6 && ((1 << (v15 - 48)) & 0x45) != 0)
    {
      return 0;
    }

    v16 = v15 == 875704422 || v15 == 875704438;
    v17 = v16 || v15 == 875704934;
    v18 = v17 || v15 == 875836518;
    v19 = v18 || v15 == 1111970369;
    v20 = v19 || v15 == 1278226488;
    v21 = v20 || v15 == 1278555701;
    v22 = v21 || v15 == 1380401729;
    v23 = v22 || v15 == 1815162994;
    v24 = v23 || v15 == 1815491698;
    v25 = v24 || v15 == 1882468912;
    v26 = v25 || v15 == 1882468914;
    v27 = v26 || v15 == 1882469428;
    v28 = v27 || v15 == 1885745712;
    v29 = v28 || v15 == 1885745714;
    v30 = v29 || v15 == 1885746228;
    v31 = v30 || v15 == 1952854576;
    v32 = v31 || v15 == 1952854578;
    v33 = v32 || v15 == 1952855092;
    v34 = v33 || v15 == 1953903152;
    v35 = v34 || v15 == 1953903154;
    v36 = v35 || v15 == 1953903668;
    v37 = v36 || v15 == 2016686640;
    v38 = v37 || v15 == 2016686642;
    v39 = v38 || v15 == 2016687156;
    v40 = v39 || v15 == 2019963440;
    v41 = v40 || v15 == 2019963442;
    if (v41 || v15 == 2019963956)
    {
      return 0;
    }

    IsAGXCompressed = CMPhotoPixelFormatIsAGXCompressed(v15);
    if (IsAGXCompressed && CMPhotoSupportsAGXCompressedFormat())
    {
      return 0;
    }

    if (CMPhotoPixelFormatIsLossyCompressed(v15) && CMPhotoSupportsLossyCompressedFormat())
    {
      return 0;
    }

    else
    {
      return 4294950301;
    }
  }

  return result;
}

double CMPhotoPixelBufferConstrainSizeToMaxSideLength(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, unint64_t *a8, BOOL *a9, double *a10)
{
  v29 = a2;
  v30 = a1;
  LODWORD(result) = 4.0;
  if (!a6)
  {
    *&result = 1.0;
  }

  if (!a3 || !(a4 | a5))
  {
    if (a1 <= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = a1;
    }

    v12 = a2;
    v13 = a1;
    if (!a3 || v11 == a3)
    {
      goto LABEL_42;
    }

    if (!(a4 | a5))
    {
      a5 = a2;
      a4 = a1;
    }
  }

  v14 = &v29;
  v15 = &v29;
  if (a1 < a2)
  {
    v16 = a4;
  }

  else
  {
    v16 = a5;
  }

  if (a1 < a2)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  if (a1 >= a2)
  {
    v15 = &v30;
  }

  else
  {
    v14 = &v30;
  }

  v18 = fminf(*&result, a3 / v17);
  v19 = vcvtas_u32_f32(v18 * v17);
  *v15 = v19;
  *&result = v18 * v16;
  v20 = vcvtas_u32_f32(*&result);
  *v14 = v20;
  if ((a3 & 1) == 0 && v17 != a3)
  {
    v21 = v19 != a3 || (v20 & 1) == 0;
    v22 = !v21 && a7 == 0;
    if (v22 && a5 != a4)
    {
      v24 = roundf(*&result * 0.5);
      result = v24 + v24;
      *v14 = result;
    }
  }

  if (a7)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v30 >= 2)
  {
    v13 = v30;
  }

  else
  {
    v13 = v12;
  }

  if (v29 >= 2)
  {
    v12 = v29;
  }

LABEL_42:
  v25 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v26 = v12 & 0xFFFFFFFFFFFFFFFELL;
  if (v13 <= 1)
  {
    v25 = 1;
  }

  if (v12 <= 1)
  {
    v26 = 1;
  }

  if (a7)
  {
    v12 = v26;
    v13 = v25;
  }

  if (a8)
  {
    *a8 = v13;
    a8[1] = v12;
  }

  if (a9)
  {
    v28 = a1 != v13 || a2 != v12;
    *a9 = v28;
  }

  if (a10)
  {
    result = v13 / a1;
    *a10 = result;
    a10[1] = v12 / a2;
  }

  return result;
}

void _once_CMPhotoScaleAndRotateSessionGetDefault()
{
  cf = 0;
  v0 = CMPhotoScaleAndRotateSessionCreate(*MEMORY[0x1E695E480], 0, &cf);
  v1 = cf;
  if (v0 || (v2 = 0, atomic_compare_exchange_strong_explicit(&defaultSession, &v2, cf, memory_order_relaxed, memory_order_relaxed), v2))
  {
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t CMPhotoScaleAndRotateSessionCreate(const __CFAllocator *a1, const __CFDictionary *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 4294950306;
  }

  NumberOfScalerCores = FigGetNumberOfScalerCores();
  pthread_once(&CMPhotoScaleAndRotateSessionGetTypeID_onceToken, RegisterCMPhotoScaleAndRotateSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294950305;
  }

  v8 = Instance;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"SurfacePool");
    if (Value)
    {
      v10 = Value;
      v11 = CFGetTypeID(Value);
      if (v11 == CMPhotoSurfacePoolGetTypeID() || v10 == @"SurfacePoolOneShot")
      {
        *(v8 + 16) = CFRetain(v10);
      }
    }
  }

  *(v8 + 24) = 0;
  *(v8 + 32) = dispatch_semaphore_create(NumberOfScalerCores);
  v13 = MEMORY[0x1E695E9C0];
  *(v8 + 40) = CFArrayCreateMutable(a1, NumberOfScalerCores, MEMORY[0x1E695E9C0]);
  *(v8 + 48) = 0;
  *(v8 + 56) = dispatch_semaphore_create(NumberOfScalerCores);
  Mutable = CFArrayCreateMutable(a1, NumberOfScalerCores, v13);
  result = 0;
  *(v8 + 64) = Mutable;
  *a3 = v8;
  return result;
}

uint64_t RegisterCMPhotoScaleAndRotateSession()
{
  sCMPhotoScaleAndRotateSessionClass = 0;
  *algn_1ED6FAA18 = "CMPhotoScaleAndRotateSession";
  qword_1ED6FAA20 = CMPhotoScaleAndRotateSessionClass_Init;
  unk_1ED6FAA28 = 0;
  qword_1ED6FAA38 = 0;
  unk_1ED6FAA40 = 0;
  qword_1ED6FAA30 = CMPhotoScaleAndRotateSessionClass_Finalize;
  qword_1ED6FAA48 = CMPhotoScaleAndRotateSessionClass_CopyFormattingDesc;
  unk_1ED6FAA50 = 0;
  result = _CFRuntimeRegisterClass();
  sCMPhotoScaleAndRotateSessionTypeID = result;
  return result;
}

double CMPhotoScaleAndRotateSessionClass_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void CMPhotoScaleAndRotateSessionFlushCaches(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a1;
  if (!a1)
  {
    pthread_once(&CMPhotoScaleAndRotateSessionGetDefault_onceToken, _once_CMPhotoScaleAndRotateSessionGetDefault);
    v4 = defaultSession;
  }

  v5 = CMPhotoUsePurgeableIOSurfaces();
  v6 = *(v4 + 16);
  if (a3 || !v5)
  {
    CMPhotoSurfacePoolFlushCaches(v6, a3);
  }

  else
  {
    CMPhotoSurfacePoolMarkCachesVolatile(v6, 1);
  }

  os_unfair_lock_lock((v4 + 24));
  CFArrayRemoveAllValues(*(v4 + 40));
  os_unfair_lock_unlock((v4 + 24));
  os_unfair_lock_lock((v4 + 48));
  CFArrayRemoveAllValues(*(v4 + 64));

  os_unfair_lock_unlock((v4 + 48));
}

BOOL CMPhotoUsePurgeableIOSurfaces()
{
  if (qword_1ED6FA728 != -1)
  {
    CMPhotoUsePurgeableIOSurfaces_cold_1();
  }

  return (_MergedGlobals_11 & 1) == 0;
}

uint64_t CMPhotoSurfacePoolMarkCachesVolatile(uint64_t a1, int a2)
{
  result = CMPhotoUsePurgeableIOSurfaces();
  if (result)
  {
    if (!a1)
    {
      result = OUTLINED_FUNCTION_0_8(&CMPhotoSurfacePoolGetDefault_onceToken);
      a1 = defaultSurfacePool;
    }

    if (a1 != @"SurfacePoolOneShot")
    {
      result = FigSimpleMutexLock();
      if (!result)
      {
        Pool_Cleanup((a1 + 24), *(a1 + 80), *(a1 + 104), 0, a2);
        Pool_Cleanup((a1 + 168), *(a1 + 224), *(a1 + 248), 0, a2);

        return FigSimpleMutexUnlock();
      }
    }
  }

  return result;
}

uint64_t CMPhotoDecompressionSessionFlushCachedBuffers(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_1_29(a1);
  CMPhotoScaleAndRotateSessionFlushCaches(*(v3 + 280), a2, a3);
  v6 = CMPhotoUsePurgeableIOSurfaces();
  v7 = *(v3 + 272);
  if (a3 || !v6)
  {
    CMPhotoSurfacePoolFlushCaches(v7, a3);
  }

  else
  {
    CMPhotoSurfacePoolMarkCachesVolatile(v7, 1);
  }

  os_unfair_lock_unlock((v3 + 16));
  return 0;
}

BOOL CMPhotoShouldUseHWDecoderForSize(unint64_t a1, int a2)
{
  v2 = &g_cutOffHEIF;
  if (a2)
  {
    v2 = &g_cutOffJPEG;
  }

  return *v2 <= a1;
}

uint64_t CMPhotoDecompressionContainerParseOptions(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 4294950306;
  }

  *a5 = 0;
  *(a5 + 1) = CMPhotoGetDecodeHighSpeedDefault();
  *(a5 + 2) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 71) = 0;
  *(a5 + 66) = 0;
  strcpy((a5 + 4), "f024");
  *(a5 + 104) = 1;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 16) = 0;
  v38 = (a5 + 16);
  *(a5 + 20) = 0;
  *(a5 + 88) = 0;
  *(a5 + 80) = 0;
  *(a5 + 76) = 0;
  *(a5 + 72) = 0;
  v9 = (a5 + 72);
  *(a5 + 120) = 0;
  *(a5 + 124) = 0;
  *(a5 + 70) = 0;
  *(a5 + 132) = 0;
  *(a5 + 133) = 1;
  *(a5 + 105) = 0;
  *(a5 + 135) = 0;
  *(a5 + 136) = -1082130432;
  *(a5 + 140) = 0;
  *(a5 + 142) = 0;
  *(a5 + 12) = 0;
  *(a5 + 65) = 0;
  if (!a2)
  {
    return 0;
  }

  if (a1[27] || a1[25])
  {
    if (a1[26])
    {
      v10 = 2;
    }

    else
    {
      if (!a1[24])
      {
        goto LABEL_10;
      }

      v10 = 1;
    }

    *v9 = v10;
  }

LABEL_10:
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    goto LABEL_11;
  }

  result = CMPhotoDecompressionContainerValidateSourceCropRect(Value);
  if (!result)
  {
    *(a5 + 21) = 1;
    *(a5 + 133) = 0;
LABEL_11:
    v12 = FigCFDictionaryGetValue();
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFDictionaryGetTypeID())
      {
        goto LABEL_44;
      }

      CMPhotoCFDictionaryGetIntIfPresent();
      if (*(a5 + 128) >= 8u)
      {
        goto LABEL_44;
      }

      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetBooleanIfPresent();
      if (CMPhotoCFDictionaryGetFloatIfPresent() && *(a5 + 136) < 1.0)
      {
        return 4294950306;
      }

      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetBooleanIfPresent();
      BooleanIfPresent = CMPhotoCFDictionaryGetBooleanIfPresent();
      v15 = FigCFDictionaryGetValue();
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        v18 = (a5 + 56);
        v20 = (a5 + 4);
        v19 = (a5 + 65);
        if (v17 != CFDictionaryGetTypeID())
        {
          return 4294950306;
        }

        *(a5 + 144) = v16;
        goto LABEL_22;
      }
    }

    else
    {
      BooleanIfPresent = 0;
    }

    v18 = (a5 + 56);
    v20 = (a5 + 4);
    v19 = (a5 + 65);
LABEL_22:
    CMPhotoCFDictionaryGetBooleanIfPresent();
    *(a5 + 8) = CMPhotoCFDictionaryGetInt32IfPresent();
    v22 = FigCFDictionaryGetValue();
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 != CVPixelBufferGetTypeID())
      {
        goto LABEL_44;
      }

      *(a5 + 88) = v23;
      PixelFormatType = CVPixelBufferGetPixelFormatType(v23);
      v26 = (a5 + 104);
      if (*(a5 + 8))
      {
        if (PixelFormatType != *v20)
        {
          goto LABEL_44;
        }
      }

      else
      {
        *(a5 + 4) = PixelFormatType;
        *(a5 + 8) = 1;
      }
    }

    else
    {
      *(a5 + 88) = 0;
      v26 = (a5 + 104);
    }

    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (CMPhotoCFDictionaryGetSizeIfPresent(a2, @"MaxPixelSize", v18))
    {
      if (!*v18)
      {
        goto LABEL_44;
      }

      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetBooleanIfPresent();
    }

    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    *(a5 + 105) = 0;
    CMPhotoCFDictionaryGetCFValueIfPresent();
    *(a5 + 105) &= CMPhotoRestrictedDecodingDisabled() == 0;
    if (CMPhotoCFDictionaryGetIntIfPresent())
    {
      if (*v38 > 4u)
      {
LABEL_44:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_21();
        return FigSignalErrorAtGM();
      }

      if (!*v18)
      {
        *v38 = 0;
      }

      *(a5 + 20) = 1;
    }

    IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
    v28 = *v9;
    if (IntIfPresent && (v28 >= 3 || v28 == 2 && *(a5 + 105)))
    {
      goto LABEL_44;
    }

    *(a5 + 72) = CMPhotoGetEncodeAccelerationModeOverride(v28);
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (CMPhotoCFDictionaryGetBooleanIfPresent())
    {
      if (*v26 && *(a5 + 105))
      {
        goto LABEL_44;
      }
    }

    else if (*(a5 + 105))
    {
      *v26 = 0;
    }

    CMPhotoCFDictionaryGetInt32IfPresent();
    v29 = *v18;
    if (*v18)
    {
      v30 = *(a5 + 40);
      v31 = *(a5 + 48);
      if (v30 <= v31)
      {
        v32 = *(a5 + 48);
      }

      else
      {
        v32 = *(a5 + 40);
      }

      if (*(a5 + 69))
      {
        if (v30 >= v31)
        {
          v30 = *(a5 + 48);
        }

        v33 = vcvtps_s32_f32((v32 / v30) * v29);
        v29 = (v33 + 1 - (v33 - 1) % 2);
        *v18 = v29;
        if (!v29)
        {
          goto LABEL_57;
        }
      }

      if (v32 == v29)
      {
        *v18 = 0;
      }

      else
      {
LABEL_57:
        if (v29)
        {
          v34 = (*v38 - 2) > 2;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          *(a5 + 70) = 1;
        }
      }
    }

    CMPhotoCFDictionaryGetBooleanIfPresent();
    *(a5 + 70) = CMPhotoGetEvenScalingModeDefault(0, *(a5 + 70));
    *(a5 + 76) = CMPhotoCFDictionaryGetSizeIfPresent(a2, @"ReservedRequestID", (a5 + 80));
    CMPhotoCFDictionaryGetBooleanIfPresent();
    v35 = FigCFDictionaryGetValue();
    v36 = v35;
    if (v35)
    {
      v37 = CFGetTypeID(v35);
      if (v37 != CGColorSpaceGetTypeID())
      {
        goto LABEL_44;
      }
    }

    *(a5 + 96) = v36;
    if (*(a5 + 105))
    {
      *v9 = 1;
    }

    if (*(a5 + 128) == 6 && !BooleanIfPresent)
    {
      *(a5 + 142) = 1;
    }

    if (*v19 && (*v18 || *(a5 + 21)))
    {
      goto LABEL_44;
    }

    return 0;
  }

  return result;
}

uint64_t CMPhotoGetDecodeHighSpeedDefault()
{
  if (CMPhotoGetDecodeHighSpeedDefault_onceToken != -1)
  {
    CMPhotoGetDecodeHighSpeedDefault_cold_1();
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_1_9(pthread_once_t *a1)
{

  return pthread_once(a1, _once_setDefaultPool);
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  a10 = a2;
  v11 = a1 + 40;

  return _checkImageIndex(v11, &a10, 0);
}

void *OUTLINED_FUNCTION_1_22()
{

  return malloc_type_calloc(1uLL, 0x30uLL, 0x10E2040A0F51DDDuLL);
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, unsigned __int8 a12, int a13, unsigned int a14)
{

  return CMPhotoEncoderSupportsPixelFormat(a14, v14, 1, a12, 0);
}

void OUTLINED_FUNCTION_1_29(os_unfair_lock_s *a1)
{
  v2 = a1 + 4;

  os_unfair_lock_lock(v2);
}

void _once_CMPhotoSurfacePoolGetDefault()
{
  cf = 0;
  v0 = CMPhotoSurfacePoolCreate(*MEMORY[0x1E695E480], 0, &cf);
  v1 = cf;
  if (v0 || (v2 = 0, atomic_compare_exchange_strong_explicit(&defaultSurfacePool, &v2, cf, memory_order_relaxed, memory_order_relaxed), v2))
  {
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t RegisterCMPhotoSurfacePoolClass()
{
  sCMPhotoSurfacePoolClass = 0;
  *algn_1ED6FAA88 = "CMPhotoSurfacePoolClass";
  qword_1ED6FAA90 = CMPhotoSurfacePoolClass_Init;
  unk_1ED6FAA98 = 0;
  qword_1ED6FAAA0 = CMPhotoSurfacePoolClass_Finalize;
  unk_1ED6FAAA8 = 0;
  qword_1ED6FAAB0 = 0;
  unk_1ED6FAAB8 = 0;
  qword_1ED6FAAC0 = CMPhotoSurfacePoolClass_CopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sCMPhotoSurfacePoolTypeID = result;
  return result;
}

double CMPhotoSurfacePoolClass_Init(_OWORD *a1)
{
  result = 0.0;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t CMPhotoSurfacePoolCreate(const __CFAllocator *a1, const __CFDictionary *a2, uint64_t *a3)
{
  pthread_once(&CMPhotoSurfacePoolGetTypeID_onceToken, RegisterCMPhotoSurfacePoolClass);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294950305;
  }

  v7 = Instance;
  v23 = 0;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"MemoryPoolAttributes");
  }

  else
  {
    Value = 0;
  }

  v9 = Pool_SetOptions(v7 + 24, Value, &kMemoryPoolDefaults, 0);
  if (v9)
  {
    goto LABEL_30;
  }

  if (CMPhotoCFDictionaryGetIntIfPresent())
  {
    v10 = -1;
  }

  else
  {
    v10 = 1000000000;
  }

  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, @"ImagePoolAttributes");
  }

  else
  {
    v11 = 0;
  }

  Pool_SetOptions(v7 + 168, v11, &kImagePoolDefaults, 0x10uLL);
  if (CMPhotoCFDictionaryGetIntIfPresent())
  {
    v10 = -1;
  }

  v9 = Pool_Create(a1, v7 + 24, 0);
  if (v9)
  {
LABEL_30:
    v20 = v9;
    goto LABEL_31;
  }

  *(v7 + 184) = 1;
  *(v7 + 168) = 0;
  *(v7 + 176) = v7 + 168;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], 0);
  *(v7 + 192) = Mutable;
  if (!Mutable || (v13 = FigSimpleMutexCreate(), (*(v7 + 312) = v13) == 0) || (v14 = dispatch_semaphore_create(0), (*(v7 + 344) = v14) == 0) || (v15 = dispatch_queue_create("com.apple.coremedia.photo.surfacepool-eventqueue", 0), (*(v7 + 336) = v15) == 0) || (v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v15), (*(v7 + 328) = v16) == 0))
  {
    v20 = 4294950305;
LABEL_31:
    CFRelease(v7);
    return v20;
  }

  dispatch_set_context(v16, v7);
  dispatch_source_set_event_handler_f(*(v7 + 328), SurfacePool_CleanupTimerHandler);
  dispatch_source_set_cancel_handler_f(*(v7 + 328), SurfacePool_CleanupTimerCanceled);
  if (v10 == -1)
  {
    v17 = -1;
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = v10;
  }

  v19 = dispatch_time(v17, v18);
  dispatch_source_set_timer(*(v7 + 328), v19, v10, v10 >> 3);
  *(v7 + 320) = 1;
  *(v7 + 368) = v10;
  *(v7 + 376) = 10000000000;
  if (v10 != -1)
  {
    if (!+[CMPhotoProcessMonitor isForegroundApp])
    {
      *(v7 + 376) = v10;
    }

    *(v7 + 352) = +[CMPhotoProcessMonitor getShared];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __CMPhotoSurfacePoolCreate_block_invoke;
    v22[3] = &__block_descriptor_40_e5_v8__0l;
    v22[4] = v7;
    *(v7 + 360) = [v22 copy];
  }

  v20 = 0;
  *(v7 + 16) = 0;
  *a3 = v7;
  return v20;
}

uint64_t CMPhotoCFDictionaryGetIntIfPresent()
{
  result = OUTLINED_FUNCTION_1_28();
  if (v4)
  {
    if (v2)
    {
      v5 = v3;
      if (v3)
      {
        result = OUTLINED_FUNCTION_2_30(v2, v4, v14, number);
        if (result)
        {
          TypeID = CFNumberGetTypeID();
          if (v0 == OUTLINED_FUNCTION_3_29(TypeID, v7, v8, v9, v10, v11, v12, v13, v15, numbera))
          {
            CFNumberGetValue(numberb, kCFNumberIntType, v5);
            return 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoCFDictionaryGetBooleanIfPresent()
{
  result = OUTLINED_FUNCTION_1_28();
  if (v3)
  {
    if (v1)
    {
      v4 = v2;
      if (v2)
      {
        result = OUTLINED_FUNCTION_2_30(v1, v3, v6, cf);
        if (result)
        {
          v5 = CFGetTypeID(cf);
          if (CFBooleanGetTypeID() == v5)
          {
            *v4 = CFBooleanGetValue(cf);
            return 1;
          }

          else if (CFNumberGetTypeID() == v5)
          {
            HIDWORD(v6) = 0;
            result = CFNumberGetValue(cf, kCFNumberIntType, &v6 + 4);
            if (result)
            {
              *v4 = HIDWORD(v6) != 0;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Pool_Create(const __CFAllocator *a1, uint64_t a2, int a3)
{
  *(a2 + 16) = a3;
  *a2 = 0;
  *(a2 + 8) = a2;
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], 0);
    *(a2 + 24) = Mutable;
    if (Mutable)
    {
      return 0;
    }

    else
    {
      return 4294950305;
    }
  }

  else
  {
    v6 = 88 * *(a2 + 40);
    v7 = MEMORY[0x1AC550000](a1, v6, 594620006, 0);
    bzero(v7, v6);
    *(a2 + 24) = v7;
    if (v7)
    {
      v8 = *(a2 + 40);
      if (v8)
      {
        v9 = 0;
        v10 = *(a2 + 32);
        do
        {
          *(*(a2 + 24) + v9) = 0;
          v11 = *v10++;
          *(*(a2 + 24) + v9 + 8) = *(a2 + 24) + v9;
          *(*(a2 + 24) + v9 + 16) = v11;
          v9 += 88;
          --v8;
        }

        while (v8);
      }

      return 0;
    }

    else
    {
      return 4294950305;
    }
  }
}

uint64_t Pool_SetOptions(uint64_t a1, const __CFDictionary *cf, uint64_t a3, unint64_t a4)
{
  if (cf && (v7 = cf, v8 = CFGetTypeID(cf), v8 == CFDictionaryGetTypeID()))
  {
    v9 = *(a3 + 16);
    OUTLINED_FUNCTION_4_5();
    CMPhotoCFDictionaryGetIntIfPresent();
    OUTLINED_FUNCTION_1_7();
    if (v11)
    {
      v10 = v9;
    }

    *(a1 + 56) = v10;
    v12 = *(a3 + 24);
    OUTLINED_FUNCTION_4_5();
    CMPhotoCFDictionaryGetIntIfPresent();
    OUTLINED_FUNCTION_1_7();
    if (!v11)
    {
      v12 = v13;
    }

    *(a1 + 64) = v12;
    OUTLINED_FUNCTION_4_5();
    CMPhotoCFDictionaryGetIntIfPresent();
    OUTLINED_FUNCTION_1_7();
    if (v11)
    {
      v14 = v12;
    }

    *(a1 + 72) = v14;
    v15 = *(a3 + 32);
    OUTLINED_FUNCTION_4_5();
    CMPhotoCFDictionaryGetIntIfPresent();
    OUTLINED_FUNCTION_1_7();
    if (v11)
    {
      v16 = v15;
    }

    *(a1 + 80) = v16;
    v17 = *(a3 + 40);
    OUTLINED_FUNCTION_4_5();
    CMPhotoCFDictionaryGetIntIfPresent();
    OUTLINED_FUNCTION_1_7();
    if (!v11)
    {
      v17 = v18;
    }

    *(a1 + 88) = v17;
    OUTLINED_FUNCTION_4_5();
    CMPhotoCFDictionaryGetIntIfPresent();
    OUTLINED_FUNCTION_1_7();
    if (v11)
    {
      v19 = v17;
    }

    *(a1 + 96) = v19;
    v20 = *(a3 + 56);
    OUTLINED_FUNCTION_4_5();
    Int64IfPresent = CMPhotoCFDictionaryGetInt64IfPresent();
    v22 = 0;
    if (!Int64IfPresent)
    {
      v22 = v20;
    }

    *(a1 + 136) = v22;
    v23 = *(a3 + 48);
    OUTLINED_FUNCTION_4_5();
    BooleanIfPresent = CMPhotoCFDictionaryGetBooleanIfPresent();
    v25 = 0;
    v26 = 0;
    if (!BooleanIfPresent)
    {
      v26 = v23;
    }
  }

  else
  {
    v7 = 0;
    *(a1 + 56) = *(a3 + 16);
    v27 = *(a3 + 24);
    *(a1 + 64) = v27;
    *(a1 + 72) = v27;
    *(a1 + 80) = *(a3 + 32);
    v28 = *(a3 + 40);
    *(a1 + 88) = v28;
    *(a1 + 96) = v28;
    *(a1 + 136) = *(a3 + 56);
    v26 = *(a3 + 48);
    v25 = 1;
  }

  *(a1 + 104) = v26;
  *(a1 + 128) = 0;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  *(a1 + 129) = 0;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  if ((v25 & 1) != 0 || (Value = CFDictionaryGetValue(v7, @"Sizes")) == 0)
  {
    result = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = *a3;
    *(a1 + 40) = *(a3 + 8);
  }

  else
  {
    v30 = Value;
    v31 = CFGetTypeID(Value);
    if (v31 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v30);
      Length = CFDataGetLength(v30);
      v34 = Length >> 2;
      v35 = malloc_type_malloc(8 * (Length >> 2), 0x100004000313F17uLL);
      *(a1 + 32) = v35;
      if (v35)
      {
        *(a1 + 40) = v34;
        *(a1 + 48) = 1;
        if (Length >= 4)
        {
          do
          {
            v37 = *BytePtr;
            BytePtr += 4;
            v36 = v37;
            if (a4)
            {
              v36 += a4 + ~((v36 - 1) % a4);
            }

            *v35++ = v36;
            --v34;
          }

          while (v34);
        }

        return 0;
      }

      else
      {
        return 4294950305;
      }
    }

    else
    {
      return 4294950306;
    }
  }

  return result;
}

uint64_t ___getMarkSurfacesNonPurgeable_block_invoke()
{
  result = FigServer_IsServerProcess();
  _MergedGlobals_11 = result != 0;
  return result;
}

uint64_t CMPhotoSurfacePoolCreateImageSurfaceWithAlignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, int a8, uint64_t a9, unint64_t a10, unsigned int a11, unsigned __int8 a12, IOSurfaceRef *a13, char *a14)
{
  buffer = 0;
  if (a6 >= 0x7FFFFFFF || (v14 = a7, a7 >= 0x7FFFFFFF))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
LABEL_251:
    v39 = FigSignalErrorAtGM();
    goto LABEL_284;
  }

  v15 = a6;
  v18 = a1;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_8(&CMPhotoSurfacePoolGetDefault_onceToken);
    v18 = defaultSurfacePool;
    if (!defaultSurfacePool)
    {
      v104 = 0;
      WiringAssertion = 0;
      goto LABEL_293;
    }
  }

  if (a9)
  {
    v19 = a9;
  }

  else
  {
    v19 = 16;
  }

  v114 = v19;
  CMPhotoSmallestNumGreaterThanAndDivisibleBy(v15, v19);
  OUTLINED_FUNCTION_13_4();
  v21 = v21 || a2 == 875704438;
  if (v21)
  {
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_13_4();
  if (v21 || a2 == 875704950 || a2 == 1278555701)
  {
    goto LABEL_77;
  }

  switch(a2)
  {
    case 0x62363468:
      goto LABEL_79;
    case 0x62676338:
    case 0x62676734:
      goto LABEL_84;
    case 0x62677032:
      goto LABEL_81;
    case 0x62703136:
      goto LABEL_79;
    case 0x62747032:
LABEL_81:
      v35 = 1;
      v36 = 8;
      if (!v15)
      {
        goto LABEL_95;
      }

      goto LABEL_86;
  }

  v25 = a2 == 1651847472 || a2 == 1651925816;
  v26 = v25 || a2 == 1651926376;
  if (v26 || a2 == 1652056888)
  {
LABEL_79:
    v36 = 4;
    v35 = 4;
    if (!v15)
    {
      goto LABEL_95;
    }

    goto LABEL_86;
  }

  v30 = a2 == 1734501176 || a2 == 1734505012 || a2 == 1735549492 || a2 == 1735549752;
  if (v30 || a2 == 1751527984 || a2 == 1882468912)
  {
    goto LABEL_84;
  }

  switch(a2)
  {
    case 0x70343232:
      goto LABEL_77;
    case 0x70663230:
      goto LABEL_84;
    case 0x70663232:
      goto LABEL_77;
    case 0x72676338:
    case 0x72676734:
      goto LABEL_84;
    case 0x72677030:
      v35 = 1;
      v36 = 16;
      if (v15)
      {
        goto LABEL_86;
      }

      goto LABEL_95;
  }

  OUTLINED_FUNCTION_10_6();
  if (v21)
  {
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_10_6();
  if (v21)
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_9_7();
  if (v21)
  {
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_9_7();
  if (v21)
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_8_5();
  if (v21)
  {
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_8_5();
  if (v21)
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_7_4();
  if (v21)
  {
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_7_4();
  if (v21)
  {
LABEL_77:
    v35 = 1;
    v36 = 2;
    if (!v15)
    {
      goto LABEL_95;
    }

LABEL_86:
    v37 = v15 % v36;
    if (v37)
    {
      if (v20 <= v15 || v37 > v20 - v15)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_96;
  }

  OUTLINED_FUNCTION_6_5();
  if (!v21)
  {
    OUTLINED_FUNCTION_6_5();
    if (!v21 && a2 != 2037741171 && a2 != 2019963442 && a2 != 2037741158)
    {
      v36 = 1;
      v35 = 1;
      if (a2 != 2019963440)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    goto LABEL_77;
  }

LABEL_84:
  v36 = 2;
  v35 = 2;
LABEL_85:
  if (v15)
  {
    goto LABEL_86;
  }

LABEL_95:
  v15 = v36;
LABEL_96:
  if (!v14)
  {
    v14 = v35;
    goto LABEL_100;
  }

  if (!(v14 % v35))
  {
    goto LABEL_100;
  }

LABEL_92:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  v39 = FigSignalErrorAtGM();
  if (v39)
  {
    goto LABEL_284;
  }

LABEL_100:
  v40 = a10;
  v41 = a12;
  v112 = a4;
  if (v18 == @"SurfacePoolOneShot")
  {
    v110 = 0;
    v72 = 0;
    v46 = a11;
    v56 = v14;
    v57 = v15;
LABEL_256:
    if (!a5 && a8)
    {
      a3 = CMPhotoSmallestNumGreaterThanAndDivisibleBy(a3, v57);
      v112 = CMPhotoSmallestNumGreaterThanAndDivisibleBy(v112, v56);
    }

    v39 = CMPhotoCreateImageSurface(a2, a3, v112, v57, v56, v114, v40, v46, v41, 0, 0, v72, &buffer);
    if (v39)
    {
      goto LABEL_284;
    }

    if (!buffer)
    {
      v104 = 0;
      v108 = 4294950305;
      goto LABEL_283;
    }

    v66 = v46;
    CMPhotoGetEncodeAccelerationModeOverride(buffer);
    IOSurfaceIncrementUseCount(buffer);
    if (v18 != @"SurfacePoolOneShot")
    {
      Value = 0;
      v71 = 0;
      v62 = v110;
      atomic_fetch_add((v110 + 132), 1u);
      goto LABEL_263;
    }

    v71 = 0;
    v98 = buffer;
    v62 = v110;
    if (buffer)
    {
      goto LABEL_281;
    }

    v99 = v40;
    Value = 0;
    v102 = 0;
    v101 = 60;
    v100 = 56;
LABEL_267:
    v39 = CMPhotoCreateImageSurface(a2, *v100, *v101, v57, v56, v114, v99, v66, a12, 0, 0, v102, &buffer);
    if (v39)
    {
      goto LABEL_284;
    }

    if (v62[6].i8[8])
    {
      WiringAssertion = IOSurfaceCreateWiringAssertion();
    }

    else
    {
      WiringAssertion = 0;
    }

    CMPhotoGetEncodeAccelerationModeOverride(buffer);
    IOSurfaceIncrementUseCount(buffer);
    v104 = OUTLINED_FUNCTION_11_4();
    if (v104)
    {
      v105 = buffer;
      *v104 = buffer;
      v104[2] = WiringAssertion;
      v104[4] = Value;
      v104[1] = IOSurfaceGetAllocSize(v105);
      if (IOSurfaceGetPlaneCount(buffer))
      {
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffer, 0);
      }

      else
      {
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRow(buffer);
      }

      v104[3] = BytesPerRowOfPlane;
      v107 = FigSimpleMutexLock();
      if (!v107)
      {
        Pool_InsertNewBuffer(v62, Value, v104);
        *(v18 + 384) = OUTLINED_FUNCTION_12_5();
        *(v18 + 392) = 0;
        if (*(v18 + 352))
        {
          [*(v18 + 352) takeAssertionUntilTime:OUTLINED_FUNCTION_2_7() forContext:v18];
          [*(v18 + 352) registerBackgroundNotificationHandlerForContext:v18 handler:*(v18 + 360)];
        }

        if (*(v18 + 320))
        {
          dispatch_resume(*(v18 + 328));
          *(v18 + 320) = 0;
        }

        FigSimpleMutexUnlock();
        v98 = buffer;
        goto LABEL_281;
      }

      v108 = v107;
      goto LABEL_285;
    }

LABEL_293:
    v108 = 4294950305;
LABEL_286:
    if (buffer)
    {
      IOSurfaceDecrementUseCount(buffer);
      if (buffer)
      {
        CFRelease(buffer);
      }
    }

    if (WiringAssertion)
    {
      CFRelease(WiringAssertion);
    }

    goto LABEL_283;
  }

  v110 = v18 + 168;
  v42 = *(*(v18 + 200) + 8 * *(v18 + 208) - 8);
  v43 = CMPhotoPaddedSizeFromImageSizeAndBlockSize(a3, a4, v15);
  v45 = v43 > v42 || v44 > v42;
  v46 = a11;
  if (v45)
  {
    goto LABEL_254;
  }

  LODWORD(v47) = v43;
  v48 = v44;
  if (!(a8 | a5))
  {
    v117 = 0;
    if (!Pool_LookupSizeBucket(v110, v43, &v117) || (v49 = *(v18 + 200), v47 = *(v49 + 8 * v117), !Pool_LookupSizeBucket(v110, v48, &v117)))
    {
      v46 = a11;
      v40 = a10;
      v41 = a12;
      goto LABEL_254;
    }

    v48 = *(v49 + 8 * v117);
    v46 = a11;
    v40 = a10;
    v41 = a12;
  }

  v50 = a3;
  if (!a5)
  {
    v50 = v47;
  }

  v51 = v112;
  if (!a5)
  {
    v51 = v48;
  }

  *bytes = v50;
  *&bytes[4] = v51;
  *&bytes[8] = v47;
  *&bytes[12] = v48;
  HIDWORD(v119) = v40;
  LODWORD(v119) = a2;
  *(&v119 + 4) = __PAIR64__(v114, v46);
  v52 = CFGetAllocator(v18);
  v53 = CFDataCreate(v52, bytes, 32);
  if (!v53)
  {
    goto LABEL_254;
  }

  v54 = v53;
  if (FigSimpleMutexLock())
  {
    CFRelease(v54);
LABEL_254:
    v56 = v14;
    v57 = v15;
LABEL_255:
    v72 = *(v18 + 304);
    goto LABEL_256;
  }

  Value = CFDictionaryGetValue(*(v18 + 192), v54);
  v56 = v14;
  v57 = v15;
  if (!Value)
  {
    v58 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00402736B2FBuLL);
    Value = v58;
    if (v58)
    {
      *v58 = 0;
      *(v58 + 1) = v58;
      v59 = v119;
      *(v58 + 56) = *bytes;
      *(v58 + 72) = v59;
      CFDictionarySetValue(*(v18 + 192), v54, v58);
    }
  }

  FigSimpleMutexUnlock();
  CFRelease(v54);
  if (!Value)
  {
    goto LABEL_255;
  }

  v39 = FigSimpleMutexLock();
  if (v39)
  {
LABEL_284:
    v108 = v39;
    v104 = 0;
LABEL_285:
    WiringAssertion = 0;
    goto LABEL_286;
  }

  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(a2);
  v61 = *Value;
  v62 = (v18 + 168);
  if (!*Value)
  {
LABEL_130:
    v66 = v46;
    v67 = CMPhotoGetBytesPerPixelForPixelFormat(a2);
    v68 = CMPhotoAlignValue(v67 * *(Value + 16), v114);
    if (CMPhotoPixelFormatIsRAW(a2) || CMPhotoPixelFormatIsRAWVersatile(a2) || (a2 - 1278226488) <= 0x30 && ((1 << (a2 - 56)) & 0x1400000000001) != 0)
    {
      goto LABEL_132;
    }

    if ((a2 - 1278226736) <= 6 && ((1 << (a2 - 48)) & 0x45) != 0)
    {
      goto LABEL_132;
    }

    if (a2 == 16)
    {
      goto LABEL_132;
    }

    v81 = a2 == 32 || a2 == 825306677;
    if (v81 || a2 == 825437747)
    {
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_13_4();
    if (!v21 && a2 != 875704438)
    {
      OUTLINED_FUNCTION_13_4();
      if (v21 || a2 == 875704950)
      {
        goto LABEL_245;
      }

      if (a2 == 875836518 || a2 == 875836534)
      {
        goto LABEL_243;
      }

      if (a2 == 1111970369 || a2 == 1278555701 || a2 == 1380401729 || a2 == 1380410945 || a2 == 1380411457 || a2 == 1647589490 || a2 == 1717855600 || a2 == 1717856627 || a2 == 1751410032 || a2 == 1751411059)
      {
        goto LABEL_132;
      }

      if (a2 != 1751527984)
      {
        switch(a2)
        {
          case 0x6C313072:
          case 0x6C363472:
            goto LABEL_132;
          case 0x72673366:
          case 0x72673368:
            goto LABEL_243;
          case 0x73372E35:
            goto LABEL_132;
        }

        OUTLINED_FUNCTION_10_6();
        if (!v21)
        {
          OUTLINED_FUNCTION_10_6();
          if (v21)
          {
            goto LABEL_245;
          }

          OUTLINED_FUNCTION_10_6();
          if (v21)
          {
            goto LABEL_243;
          }

          OUTLINED_FUNCTION_9_7();
          if (!v21)
          {
            OUTLINED_FUNCTION_9_7();
            if (v21)
            {
              goto LABEL_245;
            }

            OUTLINED_FUNCTION_9_7();
            if (v21)
            {
              goto LABEL_243;
            }

            OUTLINED_FUNCTION_8_5();
            if (!v21)
            {
              OUTLINED_FUNCTION_8_5();
              if (v21)
              {
                goto LABEL_245;
              }

              OUTLINED_FUNCTION_8_5();
              if (v21)
              {
                goto LABEL_243;
              }

              OUTLINED_FUNCTION_7_4();
              if (!v21)
              {
                OUTLINED_FUNCTION_7_4();
                if (v21)
                {
                  goto LABEL_245;
                }

                OUTLINED_FUNCTION_7_4();
                if (v21)
                {
                  goto LABEL_243;
                }

                OUTLINED_FUNCTION_6_5();
                if (!v21)
                {
                  OUTLINED_FUNCTION_6_5();
                  if (v21)
                  {
                    goto LABEL_245;
                  }

                  OUTLINED_FUNCTION_6_5();
                  if (v21)
                  {
                    goto LABEL_243;
                  }

                  if (a2 != 2019963440)
                  {
                    if (a2 != 2019963442)
                    {
                      if (a2 != 2019963956)
                      {
                        if (a2 != 2037741171 && a2 != 2037741158)
                        {
                          v69 = 0;
                          goto LABEL_133;
                        }

LABEL_132:
                        v69 = v68 * *(Value + 17);
LABEL_133:
                        Pool_Cleanup(v110, *(v18 + 224) - v69, *(v18 + 248) - 1, 0, 0);
                        v70 = 0;
                        v71 = 0;
                        goto LABEL_141;
                      }

LABEL_243:
                      v69 = 3 * v68 * *(Value + 17);
                      goto LABEL_133;
                    }

LABEL_245:
                    v69 = 2 * v68 * *(Value + 17);
                    goto LABEL_133;
                  }
                }
              }
            }
          }
        }
      }
    }

    v69 = (((*(Value + 17) + 1) >> 1) + *(Value + 17)) * v68;
    goto LABEL_133;
  }

  v63 = BytesPerPixelForPixelFormat;
  while (1)
  {
    if (!*(v61 + 72) && IOSurfaceIsInUse(*v61))
    {
      goto LABEL_129;
    }

    v64 = *(v61 + 24);
    if (a8)
    {
      break;
    }

    if (!(v64 % v114))
    {
      goto LABEL_135;
    }

LABEL_129:
    v61 = *(v61 + 40);
    if (!v61)
    {
      goto LABEL_130;
    }
  }

  v65 = *(v61 + 32);
  if (v64 != v63 * *(v65 + 64) || *(v65 + 76) != v46)
  {
    goto LABEL_129;
  }

LABEL_135:
  Pool_MarkBufferAsUsed(v110, Value, v61);
  buffer = *v61;
  *(v18 + 384) = OUTLINED_FUNCTION_12_5();
  *(v18 + 392) = 0;
  if (*(v18 + 352))
  {
    [*(v18 + 352) takeAssertionUntilTime:OUTLINED_FUNCTION_2_7() forContext:v18];
    [*(v18 + 352) registerBackgroundNotificationHandlerForContext:v18 handler:*(v18 + 360)];
  }

  v66 = v46;
  if (*(v18 + 320))
  {
    dispatch_resume(*(v18 + 328));
    v69 = 0;
    *(v18 + 320) = 0;
  }

  else
  {
    v69 = 0;
  }

  v70 = 1;
  v71 = 1;
LABEL_141:
  FigSimpleMutexUnlock();
  v73 = buffer;
  if (v70)
  {
    if (buffer)
    {
      v74 = CMPhotoUsePurgeableIOSurfaces();
      v73 = buffer;
      if (v74)
      {
        v75 = IOSurfaceSetPurgeable(buffer, 0, 0);
        v73 = buffer;
        if (v75)
        {
          SurfacePool_DetachSurface(v18, buffer, 1);
          CFRelease(buffer);
          v71 = 0;
          buffer = 0;
          goto LABEL_153;
        }
      }
    }
  }

  v76 = v70 ^ 1;
  if (!v73)
  {
    v76 = 1;
  }

  if (v76)
  {
LABEL_150:
    if (!v73)
    {
      goto LABEL_153;
    }

    goto LABEL_151;
  }

  v77 = *MEMORY[0x1E696CF98];
  v78 = IOSurfaceCopyValue(v73, *MEMORY[0x1E696CF98]);
  IOSurfaceRemoveAllValues(buffer);
  if (v78)
  {
    IOSurfaceSetValue(buffer, v77, v78);
    CFRelease(v78);
    v71 = 1;
    v73 = buffer;
    goto LABEL_150;
  }

  v71 = 1;
  if (buffer)
  {
LABEL_151:
    v40 = a10;
    goto LABEL_263;
  }

LABEL_153:
  v39 = FigSimpleMutexLock();
  if (v39)
  {
    goto LABEL_284;
  }

  v79 = *(v18 + 288);
  v80 = *(v18 + 280) + v69;
  FigSimpleMutexUnlock();
  if (v80 > *(v18 + 224) && *(v18 + 297) || (v40 = a10, v79 >= *(v18 + 248)) && *(v18 + 296))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_0();
    goto LABEL_251;
  }

LABEL_263:
  v98 = buffer;
  if (!buffer)
  {
    v99 = v40;
    v100 = (Value + 7);
    v101 = Value + 60;
    v102 = v62[8].i64[1];
    goto LABEL_267;
  }

LABEL_281:
  *a13 = v98;
  buffer = 0;
  v104 = 0;
  v108 = 0;
  if (a14)
  {
    *a14 = v71;
  }

LABEL_283:
  free(v104);
  return v108;
}

uint64_t CMPhotoCreateMemorySurface(unint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __IOSurface **a7)
{
  if (a1 >> 31 || a4 && a1 > a5)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v14 = Mutable;
    CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E696CE60], 0);
    CMPhotoCFDictionarySetInt32(v14, *MEMORY[0x1E696CFC0], a2);
    CMPhotoCFDictionarySetSize(v14, *MEMORY[0x1E696CE30], a1);
    if (qword_1ED6FA728 != -1)
    {
      dispatch_once(&qword_1ED6FA728, &__block_literal_global_41);
    }

    if (_MergedGlobals_11 == 1)
    {
      CMPhotoCFDictionarySetBoolean(v14, *MEMORY[0x1E696CFA0], 1);
    }

    CMPhotoCFDictionarySetInt(v14, *MEMORY[0x1E696CF70], a3);
    if (a4)
    {
      FigCFDictionarySetInt64();
    }

    if (a6)
    {
      CMPhotoCFDictionarySetInt64(v14, *MEMORY[0x1E696CE38], a6);
    }

    v15 = IOSurfaceCreate(v14);
    if (v15)
    {
      v16 = v15;
      if (a4)
      {
        v17 = @"CMPhoto Wrapped Memory Surface";
      }

      else
      {
        v17 = @"CMPhoto Memory Surface";
      }

      IOSurfaceSetValue(v15, *MEMORY[0x1E696CF98], v17);
      if (_getShouldSetSurfaceOwnership())
      {
        IOSurfaceSetOwnership();
      }

      if (a7)
      {
        v18 = 0;
        *a7 = v16;
      }

      else
      {
        CFRelease(v16);
        v18 = 0;
      }
    }

    else
    {
      v18 = 4294950305;
    }

    CFRelease(v14);
    return v18;
  }
}

uint64_t _getShouldSetSurfaceOwnership()
{
  if (_getShouldSetSurfaceOwnership_onceToken != -1)
  {
    _getShouldSetSurfaceOwnership_cold_1();
  }

  if (qword_1ED6FA728 != -1)
  {
    CMPhotoUsePurgeableIOSurfaces_cold_1();
  }

  return _getShouldSetSurfaceOwnership_setOwnership & ~_MergedGlobals_11 & 1;
}

int64x2_t Pool_InsertNewBuffer(int64x2_t *a1, void *a2, uint64_t a3)
{
  if (*a3)
  {
    CFRetain(*a3);
  }

  *(a3 + 72) = 0;
  *(a3 + 40) = 0;
  v6 = a2[1];
  *(a3 + 48) = v6;
  *v6 = a3;
  a2[1] = a3 + 40;
  *(a3 + 56) = 0;
  v7 = a1->i64[1];
  *(a3 + 64) = v7;
  *v7 = a3;
  a1->i64[1] = a3 + 56;
  v8 = vdupq_n_s64(1uLL);
  v8.i64[0] = *(a3 + 8);
  result = vaddq_s64(a1[7], v8);
  a1[7] = result;
  ++a2[3];
  ++a2[5];
  return result;
}

uint64_t CMPhotoCFDictionarySetInt(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr))
    {
      v6 = OUTLINED_FUNCTION_0_32();
      CFDictionarySetValue(v6, v7, v8);
      CFRelease(v3);
      return 0;
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

uint64_t CMPhotoGetBytesPerPixelForPixelFormat(int a1)
{
  if (a1 > 1651798065)
  {
    if (a1 > 1919365991)
    {
      if (a1 > 1952855091)
      {
        if (a1 > 2019963439)
        {
          if (a1 > 2037741157)
          {
            if (a1 > 2084070959)
            {
              return 1;
            }

            if (a1 != 2037741158)
            {
              v2 = 2037741171;
              goto LABEL_134;
            }

            return 2;
          }

          if (a1 == 2019963440 || a1 == 2019963442)
          {
            return 2;
          }

          v2 = 2019963956;
        }

        else
        {
          if (a1 > 1953903667)
          {
            if (a1 > 2016686641)
            {
              if (a1 != 2016686642)
              {
                v1 = 13364;
                goto LABEL_124;
              }
            }

            else if (a1 != 1953903668)
            {
              v1 = 12848;
LABEL_124:
              v2 = v1 | 0x78340000;
              goto LABEL_134;
            }

            return 2;
          }

          if (a1 == 1952855092 || a1 == 1953903152)
          {
            return 2;
          }

          v2 = 1953903154;
        }

LABEL_134:
        if (a1 == v2)
        {
          return 2;
        }

        return 1;
      }

      if (a1 > 1936077361)
      {
        if (a1 <= 1937125937)
        {
          if (a1 == 1936077362 || a1 == 1936077876)
          {
            return 2;
          }

          v3 = 12848;
        }

        else
        {
          if (a1 > 1952854575)
          {
            if (a1 == 1952854576)
            {
              return 2;
            }

            v2 = 1952854578;
            goto LABEL_134;
          }

          if (a1 == 1937125938)
          {
            return 2;
          }

          v3 = 13364;
        }

        v2 = v3 | 0x73760000;
        goto LABEL_134;
      }

      if (a1 <= 1919381551)
      {
        if (a1 != 1919365992)
        {
          if (a1 == 1919378232)
          {
            return 1;
          }

          v2 = 1919379252;
          goto LABEL_134;
        }

        return 2;
      }

      if (a1 != 1919381552)
      {
        if (a1 != 1932996149)
        {
          v2 = 1936077360;
          goto LABEL_134;
        }

        return 2;
      }

      return 0;
    }

    if (a1 <= 1751410031)
    {
      if (a1 > 1717856626)
      {
        if (a1 > 1734505011)
        {
          if (a1 <= 1735549751)
          {
            if (a1 != 1734505012)
            {
              v2 = 1735549492;
              goto LABEL_134;
            }

            return 2;
          }

          if (a1 == 1735549752)
          {
            return 1;
          }

          v4 = 1735553072;
          goto LABEL_138;
        }

        if (a1 != 1717856627)
        {
          if (a1 == 1734501176)
          {
            return 1;
          }

          v4 = 1734504496;
          goto LABEL_138;
        }

        return 4;
      }

      if (a1 <= 1651926375)
      {
        if (a1 != 1651798066)
        {
          if (a1 != 1651847472)
          {
            return 1;
          }

          return 2;
        }

        return 0;
      }

      if (a1 == 1651926376)
      {
        return 2;
      }

      if (a1 == 1652056888)
      {
        return 1;
      }

      v5 = 1717855600;
      goto LABEL_142;
    }

    if (a1 > 1882468911)
    {
      if (a1 <= 1885745711)
      {
        if (a1 != 1882468912 && a1 != 1882468914)
        {
          v4 = 1882469428;
LABEL_138:
          if (a1 != v4)
          {
            return 1;
          }
        }
      }

      else if (a1 > 1885746227)
      {
        if (a1 != 1885746228)
        {
          v5 = 1919365990;
LABEL_142:
          if (a1 != v5)
          {
            return 1;
          }

          return 4;
        }
      }

      else if (a1 != 1885745712)
      {
        v4 = 1885745714;
        goto LABEL_138;
      }

      return 0;
    }

    if (a1 <= 1815162993)
    {
      if (a1 == 1751410032 || a1 == 1751411059)
      {
        return 2;
      }

      v2 = 1751527984;
      goto LABEL_134;
    }

    if (a1 == 1815162994)
    {
      return 4;
    }

    if (a1 != 1815361650)
    {
      if (a1 != 1815491698)
      {
        return 1;
      }

      return 8;
    }

    return 6;
  }

  if (a1 > 875704437)
  {
    if (a1 <= 1279340599)
    {
      if (a1 > 1278226487)
      {
        if (a1 > 1278226735)
        {
          if ((a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
          {
            return 2;
          }

          v2 = 1278555701;
          goto LABEL_134;
        }

        if (a1 == 1278226488)
        {
          return 1;
        }

        if (a1 != 1278226534)
        {
          v2 = 1278226536;
          goto LABEL_134;
        }

        return 4;
      }

      if (a1 <= 875836518 || a1 == 875836534)
      {
        return 1;
      }

      v5 = 1111970369;
      goto LABEL_142;
    }

    if (a1 > 1647589489)
    {
      if (a1 > 1650943795)
      {
        if (a1 > 1650946097)
        {
          if (a1 != 1650946098)
          {
            v2 = 1651519798;
            goto LABEL_134;
          }

          return 0;
        }

        if (a1 == 1650943796)
        {
          return 2;
        }

        v4 = 1650946096;
        goto LABEL_138;
      }

      if (a1 != 1647589490)
      {
        if (a1 != 1647719528)
        {
          return 1;
        }

        return 2;
      }

      return 6;
    }

    if (a1 <= 1380410944)
    {
      if (a1 == 1279340600)
      {
        return 2;
      }

      if (a1 == 1279340854)
      {
        return 4;
      }

      v5 = 1380401729;
      goto LABEL_142;
    }

    if (a1 != 1380410945)
    {
      if (a1 != 1380411457)
      {
        v2 = 1647392369;
        goto LABEL_134;
      }

      return 8;
    }

    return 16;
  }

  else
  {
    if (a1 > 643970674)
    {
      if (a1 <= 792225327)
      {
        if (a1 <= 645423927 && (a1 == 643970675 || a1 == 644375667))
        {
          return 2;
        }

        return 1;
      }

      if (a1 <= 825437746)
      {
        if (a1 == 792225328 || a1 == 792229424)
        {
          return 1;
        }

        v2 = 825306677;
        goto LABEL_134;
      }

      if (a1 <= 843264309)
      {
        if (a1 != 825437747)
        {
          v2 = 843264056;
          goto LABEL_134;
        }

        return 2;
      }

      if (a1 != 843264310)
      {
        return 1;
      }

      return 4;
    }

    if (a1 > 641234479)
    {
      if (a1 <= 642527287)
      {
        return 1;
      }

      if (a1 <= 642527541)
      {
        if (a1 == 642527288)
        {
          return 1;
        }

        v2 = 642527336;
        goto LABEL_134;
      }

      if (a1 == 642527542)
      {
        return 2;
      }

      v2 = 643970664;
      goto LABEL_134;
    }

    if (a1 > 641230383)
    {
      return 1;
    }

    if (a1 == 16)
    {
      return 2;
    }

    if (a1 != 24)
    {
      if (a1 != 32)
      {
        return 1;
      }

      return 4;
    }

    return 3;
  }
}

uint64_t CMPhotoSurfacePoolCreatePixelBufferAndReportOrigin(const void *a1, uint64_t a2, size_t a3, size_t a4, int a5, unint64_t a6, unint64_t a7, int a8, uint64_t a9, const __CFDictionary *a10, CVPixelBufferRef *a11, char *a12)
{
  buffer = 0;
  pixelBufferOut = 0;
  if (CMPhotoPixelFormatIsLossyCompressed(a2) || CMPhotoPixelFormatIsAGXCompressed(a2))
  {
    CFGetAllocator(a1);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      if (a6 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = a6;
      }

      v22 = CMPhotoPaddedSizeFromImageSizeAndBlockSize(a3, a4, v21);
      v24 = v22;
      v25 = v23;
      if (a9 || (v22 == a3 ? (v26 = v23 == a4) : (v26 = 0), !v26))
      {
        v43 = 0;
        v44 = 0;
        v27 = *MEMORY[0x1E6966090];
        CMPhotoCFDictionaryGetSizeIfPresent(MutableCopy, *MEMORY[0x1E6966090], &v44);
        v28 = *MEMORY[0x1E6966078];
        CMPhotoCFDictionaryGetSizeIfPresent(MutableCopy, *MEMORY[0x1E6966078], &v43);
        v29 = v44 <= v24 - a3 ? v24 - a3 : v44;
        v30 = v43 <= v25 - a4 ? v25 - a4 : v43;
        CMPhotoCFDictionarySetSize(MutableCopy, v27, v29);
        CMPhotoCFDictionarySetSize(MutableCopy, v28, v30);
        if (a9)
        {
          CMPhotoCFDictionarySetSize(MutableCopy, *MEMORY[0x1E6966020], a9);
        }
      }

      v31 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E69660D8], Mutable);
      v33 = CVPixelBufferCreate(v31, a3, a4, a2, MutableCopy, &pixelBufferOut);
      if (!v33)
      {
        if (a12)
        {
          *a12 = 0;
        }

        goto LABEL_23;
      }

      v34 = v33;
      if (Mutable)
      {
LABEL_24:
        CFRelease(Mutable);
      }
    }

    else
    {
      v34 = 4294950305;
    }
  }

  else
  {
    v44 = 0;
    CMPhotoCFDictionaryGetSizeIfPresent(a10, *MEMORY[0x1E6966140], &v44);
    if (!a1)
    {
      OUTLINED_FUNCTION_0_8(&CMPhotoSurfacePoolGetDefault_onceToken);
      a1 = defaultSurfacePool;
    }

    PixelBufferWithSurface = CMPhotoSurfacePoolCreateImageSurfaceWithAlignment(a1, a2, a3, a4, a5, a6, a7, a8, a9, v44, 1u, 0, &buffer, a12);
    if (!PixelBufferWithSurface)
    {
      v38 = CFGetAllocator(a1);
      PixelBufferWithSurface = CMPhotoCreatePixelBufferWithSurface(v38, buffer, a10);
      if (!PixelBufferWithSurface)
      {
        if (!a5)
        {
          PixelBufferSize = CMPhotoGetPixelBufferSize(pixelBufferOut);
          v41 = vcvtad_u64_f64(v40);
          if (vcvtad_u64_f64(PixelBufferSize) != a3 || v41 != a4)
          {
            CMPhotoSetPixelBufferCLAP(pixelBufferOut, 0, 0, a3, a4, 0, 1);
          }
        }

        Mutable = 0;
        MutableCopy = 0;
LABEL_23:
        v34 = 0;
        *a11 = pixelBufferOut;
        pixelBufferOut = 0;
        if (!Mutable)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    v34 = PixelBufferWithSurface;
    MutableCopy = 0;
  }

LABEL_25:
  v35 = buffer;
  if (buffer)
  {
    IOSurfaceDecrementUseCount(buffer);
    CFRelease(v35);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v34;
}

uint64_t CMPhotoCreateImageSurface(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8, unsigned __int8 a9, uint64_t a10, unint64_t a11, uint64_t a12, __IOSurface **a13)
{
  value = 0;
  properties = 0;
  if (!a13)
  {
    return 4294950306;
  }

  ImageSurfacePropertiesAndName = _createImageSurfacePropertiesAndName(a1, a2, a3, a4, a5, a6, a7, a8, a9, &properties, &value);
  if (ImageSurfacePropertiesAndName)
  {
    v17 = ImageSurfacePropertiesAndName;
  }

  else
  {
    if (!a10)
    {
LABEL_6:
      if (qword_1ED6FA728 != -1)
      {
        dispatch_once(&qword_1ED6FA728, &__block_literal_global_41);
      }

      if (_MergedGlobals_11 == 1)
      {
        CMPhotoCFDictionarySetBoolean(properties, *MEMORY[0x1E696CFA0], 1);
      }

      if (a12)
      {
        CMPhotoCFDictionarySetInt64(properties, *MEMORY[0x1E696CE38], a12);
      }

      v14 = IOSurfaceCreate(properties);
      if (v14)
      {
        v15 = v14;
        if (a10)
        {
          v16 = @"CMPhoto Wrapped";
        }

        else
        {
          v16 = value;
        }

        IOSurfaceSetValue(v14, *MEMORY[0x1E696CF98], v16);
        if (_getShouldSetSurfaceOwnership())
        {
          IOSurfaceSetOwnership();
        }

        v17 = 0;
        *a13 = v15;
      }

      else
      {
        v17 = 4294950305;
      }

      goto LABEL_19;
    }

    v19 = 0;
    CMPhotoCFDictionaryGetSizeIfPresent(properties, *MEMORY[0x1E696CE30], &v19);
    if (v19 <= a11)
    {
      FigCFDictionarySetInt64();
      goto LABEL_6;
    }

    v17 = 4294950306;
  }

LABEL_19:
  if (properties)
  {
    CFRelease(properties);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v17;
}

uint64_t Pool_LookupSizeBucket(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 32);
  if (*v3 >= a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 40) - 1;
    if (v3[v4] < a2)
    {
      return 0;
    }

    if (v4 >= 2)
    {
      v6 = 0;
      do
      {
        if (v3[(v4 + v6) >> 1] >= a2)
        {
          v4 = (v4 + v6) >> 1;
        }

        else
        {
          v6 = (v4 + v6) >> 1;
        }
      }

      while (v4 - v6 > 1);
    }
  }

  *a3 = v4;
  return 1;
}

void OUTLINED_FUNCTION_22_3()
{
  v2 = *(v0 + 104);

  CFSetAddValue(v2, 0x756E6966);
}

uint64_t OUTLINED_FUNCTION_22_7(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return _readRawImageTags(&STACK[0x260], v75, v76, a1, &a75, &a74, &a73, &a72, &a71, &a70, &a69, &a66, &a65, &a64, &a63, &a62);
}

uint64_t CMPhotoDecompressionSessionCopyPooledJPEGHWSession(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 4294950306;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = *"";
  v9[2] = ___setupHWCacheIfNeeded_block_invoke;
  v9[3] = &unk_1E77A3730;
  v9[4] = &v10;
  v9[5] = a1;
  dispatch_sync(v4, v9);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    if (*(a1 + 240))
    {
      dispatch_semaphore_wait(*(a1 + 256), 0xFFFFFFFFFFFFFFFFLL);
      os_unfair_lock_lock((a1 + 248));
      v6 = *(a1 + 264);
      if (v6 && CFArrayGetCount(v6) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 264), 0);
        CFArrayRemoveValueAtIndex(*(a1 + 264), 0);
      }

      else
      {
        ValueAtIndex = JPEGDeviceInterface_openDriverConnection();
      }

      os_unfair_lock_unlock((a1 + 248));
      if (ValueAtIndex)
      {
        v5 = 0;
        *a2 = ValueAtIndex;
      }

      else
      {
        dispatch_semaphore_signal(*(a1 + 256));
        return 4294950305;
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  return v5;
}

void ___setupHWCacheIfNeeded_block_invoke(uint64_t a1)
{
  if (CMPhotoUnifiedJPEGDecoderHardwareAvailable() && !*(*(a1 + 40) + 240))
  {
    v2 = 2 * CMPhotoUnifiedJPEGDecoderNumHardwareCores();
    v3 = *(a1 + 40);
    v3[62] = 0;
    v4 = CFGetAllocator(v3);
    *(*(a1 + 40) + 264) = CFArrayCreateMutable(v4, v2, 0);
    v5 = *(a1 + 40);
    if (*(v5 + 264) && (*(*(a1 + 40) + 256) = dispatch_semaphore_create(v2), v5 = *(a1 + 40), *(v5 + 256)))
    {
      *(v5 + 240) = 1;
      *(v5 + 244) = v2;
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = -16991;
    }

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v6 = *(v5 + 256);
      if (v6)
      {
        CFRelease(v6);
        *(*(a1 + 40) + 256) = 0;
        v5 = *(a1 + 40);
      }

      v7 = *(v5 + 264);
      if (v7)
      {
        CFRelease(v7);
        *(*(a1 + 40) + 264) = 0;
      }
    }
  }
}

uint64_t JPEGDecompressSurface(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int a7, int a8, uint64_t a9, uint64_t a10, unint64_t *a11, __int128 a12)
{
  v17 = a3;
  v18 = a9;
  v102[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a12 != 0)
    {
      return 4294950302;
    }

    v30 = *a6;
    v31 = a6[1];
    v32 = a6[4];
    v33 = a6[14];
    v34 = a6[15];

    return CMPhotoParavirtualizedGuestJPEGHardwareDecode(a3, a4, a5, v30, v31, v32, v33, v34, a7, a9, a10, a11);
  }

  if (JPEGDeviceInterface_numberOfJPEGCores() < 2)
  {
    return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
  }

  v20 = JPEGDeviceInterface_supportsRSTLogging();
  if (a1)
  {
    return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
  }

  if (a11)
  {
    return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
  }

  if (!v20)
  {
    return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
  }

  if (*(a6 + 26) != 1)
  {
    return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
  }

  v22 = *a6;
  v21 = a6[1];
  if (v21 * v22 < 0x3D0901 || v22 != a9 || v21 != a10)
  {
    return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
  }

  v102[0] = 0;
  *v101 = 0;
  v23 = JPEGDeviceInterface_numberOfJPEGCores();
  v24 = a6[15];
  if (v23 >= v24)
  {
    v25 = a6[15];
  }

  else
  {
    v25 = v23;
  }

  if (v25 < 2)
  {
    if (v25)
    {
      v91 = a4;
      v92 = a9;
      v90 = a8;
      v93 = a7;
      buffer = v17;
      v95 = 0;
      v26 = 0;
      v98 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
      goto LABEL_79;
    }

    return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
  }

  buffer = v17;
  v95 = malloc_type_calloc(0xDA0uLL, 4uLL, 0x73EE7122uLL);
  v91 = a4;
  v92 = a9;
  v93 = a7;
  v90 = a8;
  if (!v95)
  {
    v95 = 0;
    goto LABEL_78;
  }

  if (a6[5] != a6[14])
  {
LABEL_78:
    v26 = 0;
    v98 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 2;
    goto LABEL_79;
  }

  v35 = (v24 + 1) >> 1;
  IOSurfaceLock(v17, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v17);
  v37 = 0;
  v38 = BaseAddress + a6[8];
  __src = (BaseAddress + 1);
  v87 = BaseAddress;
  v39 = v38 - 4;
  v84 = (v24 + 1) >> 1;
  v88 = a5;
  v81 = v38 - 4;
  v82 = v38;
  while (2)
  {
    v40 = v37 * v35;
    v89 = v37;
    if (v37 == 1)
    {
      v41 = a6[15];
    }

    else
    {
      v41 = v35 + v40;
    }

    if (v40)
    {
      v42 = *&v39[4 * v40];
    }

    else
    {
      v42 = 0;
    }

    v101[v37 + 4] = v42;
    if (v37 == 1)
    {
      v101[3] = IOSurfaceGetAllocSize(v17) - a6[11];
      v43 = a6[1] - a6[3] * v40;
    }

    else
    {
      v101[v37 + 2] = *&v38[4 * v41 - 4];
      v43 = a6[3] * (v41 - v40);
    }

    v44 = &v95[872 * v89 + 33];
    v45 = a6[12];
    v46 = v45 & 7;
    if ((v45 & 7) != 0)
    {
      memset(v44, 255, 8 - v46);
      v44 = (v44 + 8 - v46);
      v47 = v46 + 3062;
    }

    else
    {
      v47 = 3070;
    }

    v99 = 0;
    *v44 = *v87;
    v48 = v44 + 1;
    v96 = bswap32(v43) >> 16;
    v49 = __src;
    while (1)
    {
      while (1)
      {
        if (*v49 != 255)
        {
          v50 = 1;
          goto LABEL_44;
        }

        v51 = __rev16(*(v49 + 1));
        v50 = v51 + 2;
        if (v49[1] - 192 <= 0x1D && ((1 << (v49[1] + 64)) & 0x2C000011) != 0)
        {
          break;
        }

LABEL_44:
        v49 += v50;
      }

      v53 = v47 >= v50;
      v47 -= v50;
      if (!v53)
      {
        goto LABEL_72;
      }

      memcpy(v48, v49, v51 + 2);
      v54 = v49[1];
      if (v54 != 192)
      {
        break;
      }

      if (v51 != 3 * *(a6 + 24) + 8)
      {
        goto LABEL_72;
      }

      *(v48 + 5) = v96;
      v99 = 1;
LABEL_52:
      v49 += v50;
      v48 = (v48 + v50);
    }

    if (v54 != 218)
    {
      goto LABEL_52;
    }

    if (!v99)
    {
LABEL_72:
      IOSurfaceUnlock(buffer, 1u, 0);
      v26 = 0;
LABEL_73:
      v98 = 0;
      v27 = 0;
      goto LABEL_74;
    }

    v35 = (v24 + 1) >> 1;
    v17 = buffer;
    v95[872 * v89 + 31] = v48 + v50 - (v95 + 3488 * v89 + 132);
    v37 = v89 + 1;
    v39 = v81;
    v38 = v82;
    if (v89 != 1)
    {
      continue;
    }

    break;
  }

  IOSurfaceUnlock(buffer, 1u, 0);
  v26 = dispatch_group_create();
  if (!v26)
  {
    goto LABEL_73;
  }

  v98 = dispatch_queue_create("com.apple.coremedia.jpegdecode.callbackqueue", 0);
  if (!v98)
  {
    goto LABEL_73;
  }

  v55 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  v27 = v55;
  if (v55)
  {
    IONotificationPortSetDispatchQueue(v55, v98);
    v56 = v102;
    v57 = 1;
    v29 = 2;
    do
    {
      v58 = v57;
      v59 = JPEGDeviceInterface_openDriverConnection();
      *v56 = v59;
      if (!v59)
      {
        v28 = 0;
        goto LABEL_76;
      }

      v60 = v59;
      MachPort = IONotificationPortGetMachPort(v27);
      MEMORY[0x1AC551C90](v60, 0, MachPort, 0);
      v57 = 0;
      v56 = v102 + 1;
    }

    while ((v58 & 1) != 0);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 1744;
    v66 = v101;
    v67 = v84;
    do
    {
      v97 = v62;
      if (v64 == 1)
      {
        v83 = a6[15];
        __srca = v62;
      }

      else
      {
        __srca = v64 * v67;
        v83 = v67 + v62;
      }

      v68 = &v95[v63];
      v95[v63] = IOSurfaceGetID(buffer);
      *(v68 + 2) = IOSurfaceGetID(v88);
      *(v68 + 1) = IOSurfaceGetAllocSize(buffer);
      *(v68 + 3) = IOSurfaceGetAllocSize(v88);
      v70 = a6[3];
      v69 = a6[4];
      *(v68 + 10) = v70 * __srca;
      *(v68 + 11) = v69;
      v71 = *a6;
      v72 = a6[1] - v70 * __srca;
      *(v68 + 19) = a9;
      *(v68 + 20) = a10;
      *(v68 + 8) = v93;
      *(v68 + 9) = 0;
      v73 = v70 * (v83 - __srca);
      if (v72 < v73)
      {
        v73 = v72;
      }

      *(v68 + 5) = v71;
      *(v68 + 6) = v73;
      *(v68 + 28) = v64;
      *(v68 + 29) = v64 != 1;
      v74 = v101[v64 + 4];
      *(v68 + 30) = v101[v64 + 2] - v74;
      *(v68 + 32) = a6[11] + v74;
      *(v68 + 6) = _stripDecodeCompleteCallback;
      *(v68 + 7) = v26;
      *(v68 + 8) = v66;
      dispatch_group_enter(v26);
      v75 = JPEGDeviceInterface_decodeJPEG2024(*(v102 + v64), v68, &v95[v65]);
      v76 = v75;
      if (v75)
      {
        syslog(5, "JPEGDecompressSurfaceParallel : Picture decode failed: %08x", v75);
        v101[v64] = v76;
        dispatch_group_leave(v26);
      }

      v65 += 872;
      ++v66;
      v63 += 872;
      v67 = v84;
      v62 = v97 + v84;
    }

    while (!(v76 | v64++));
    dispatch_group_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    if (!v101[0])
    {
      v28 = (v101[1] | v76) == 0;
      goto LABEL_75;
    }
  }

LABEL_74:
  v28 = 0;
LABEL_75:
  v29 = 2;
LABEL_76:
  a5 = v88;
LABEL_79:
  v78 = 0;
  do
  {
    v79 = *(v102 + v78);
    if (v79)
    {
      JPEGDeviceInterface_closeDriverConnection(v79);
    }

    v78 += 4;
  }

  while (4 * v29 != v78);
  if (v27)
  {
    IONotificationPortSetDispatchQueue(v27, 0);
    IONotificationPortDestroy(v27);
  }

  a4 = v91;
  a7 = v93;
  a8 = v90;
  if (v98)
  {
    dispatch_release(v98);
  }

  v17 = buffer;
  if (v26)
  {
    dispatch_release(v26);
  }

  if (v95)
  {
    free(v95);
  }

  v18 = v92;
  if (v28)
  {
    return 0;
  }

  return JPEGDecompressSurfaceHelper(a1, v17, a4, a5, *a6, a6[1], a6[4], a6[14], a6[15], a7, a8, v80, v18, SHIDWORD(v18), a10, a11, a12, *(&a12 + 1));
}

void OUTLINED_FUNCTION_5_4()
{
  *(v0 - 81) = 1;
  *(v0 - 83) = 0;
  *(v0 - 84) = 0;
  *(v0 - 88) = 0;
}

uint64_t OUTLINED_FUNCTION_5_8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_5_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43, int a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, char a58, uint64_t a59, unint64_t a60, uint64_t a61, char a62, int a63)
{
  LOBYTE(STACK[0x4BC]) = 0;
  LOBYTE(STACK[0x4BD]) = a66;
  LOBYTE(STACK[0x4BE]) = a64;
  LOBYTE(STACK[0x4BF]) = a62;
  LODWORD(STACK[0x4C0]) = v74;
  LODWORD(STACK[0x4C4]) = a44;
  STACK[0x4C8] = a60;
  STACK[0x4D0] = a71;
  STACK[0x4D8] = a43;
  *(v73 - 256) = 0;
  *(v73 - 255) = a58;
  *(v73 - 254) = 0;
  v75 = *(v72 + 96);
  v76 = *(v72 + 112);
  *(v73 - 224) = *(v72 + 125);
  *(v71 + 115) = v76;
  *(v71 + 99) = v75;
  result = 0.0;
  *(v71 + 194) = 0u;
  *(v71 + 184) = 0u;
  *(v71 + 168) = 0u;
  *(v71 + 152) = 0u;
  *(v71 + 136) = 0u;
  *(v73 - 142) = a46;
  *(v73 - 136) = a45;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_21()
{

  return CMPhotoAlignValue((4 * ((v1 + 2) / 3uLL)) | 3, v0);
}

BOOL OUTLINED_FUNCTION_5_24()
{
  v3 = *(v1 + 16);

  return CMPhotoDecompressionSessionAsyncRequestCancelled(v3, v0);
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  a12 = -1;
  a13 = 0;

  return CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(a4, &a13, &a12);
}

const __CFBoolean *_checkSupportsRSTLogging()
{
  result = _checkUInt32DriverProperty(@"AppleJPEGSupportsRSTLogging", _supportsRSTLogging);
  _supportsRSTLogging = result;
  return result;
}

uint64_t SurfacePool_DetachSurface(__CFString *a1, void *a2, int a3)
{
  v5 = a1;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_8(&CMPhotoSurfacePoolGetDefault_onceToken);
    v5 = defaultSurfacePool;
  }

  if (v5 != @"SurfacePoolOneShot")
  {
    result = FigSimpleMutexLock();
    if (result)
    {
      return result;
    }

    v7 = 168;
    if (!a3)
    {
      v7 = 24;
    }

    v8 = (&v5->isa + v7);
    v9 = *(&v5->isa + v7);
    if (v9)
    {
      while (*v9 != a2)
      {
        v9 = v9[7];
        if (!v9)
        {
          goto LABEL_24;
        }
      }

      if (a2)
      {
        CFRetain(a2);
      }

      v10 = v9[7];
      v11 = v9[8];
      v12 = v8 + 1;
      if (v10)
      {
        v12 = (v10 + 64);
      }

      *v12 = v11;
      *v11 = v10;
      v13 = v9[5];
      v14 = v9[6];
      if (v13)
      {
        v15 = (v13 + 48);
      }

      else
      {
        v15 = (v9[4] + 8);
      }

      *v15 = v14;
      *v14 = v13;
      CMPhotoGetEncodeAccelerationModeOverride(*v9);
      if (*v9)
      {
        CFRelease(*v9);
      }

      v16 = v9[2];
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = v8[15];
      v8[14] -= v9[1];
      v8[15] = v17 - 1;
      v18 = v9[4];
      --*(v18 + 24);
      ++*(v18 + 48);
      free(v9);
      IOSurfaceDecrementUseCount(a2);
      IOSurfaceRemoveValue(a2, *MEMORY[0x1E696CF98]);
      CMPhotoGetEncodeAccelerationModeOverride(a2);
      if (a2)
      {
        CFRelease(a2);
      }
    }

LABEL_24:
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t JPEGDecompressSurfaceHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, uint64_t *a16, void *a17, void *a18)
{
  v18 = MEMORY[0x1EEE9AC00]();
  v40 = v19;
  v41 = v20;
  connection = v18;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  bzero(v47, 0xD90uLL);
  bzero(outputStruct, 0xDA0uLL);
  AllocSize = IOSurfaceGetAllocSize(v30);
  inputStruct[0] = IOSurfaceGetID(v30);
  ID = IOSurfaceGetID(v26);
  v47[1] = v24;
  v47[2] = v22;
  if (AllocSize >= v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = AllocSize;
  }

  if (!v28)
  {
    v33 = AllocSize;
  }

  inputStruct[2] = ID;
  inputStruct[1] = v33;
  inputStruct[3] = IOSurfaceGetAllocSize(v26);
  v47[4] = a10;
  v47[14] = a11;
  v47[7] = v41;
  v47[15] = a13;
  v47[16] = a15;
  if (a16)
  {
    v35 = *a16;
    v34 = a16[1];
    v36 = a16[2];
    if (*a16 || v34 || v36 != v40 || a16[3] != a9)
    {
      v47[19] = 1;
      v47[20] = v35;
      v47[21] = v34;
      v47[22] = v36;
      v47[23] = a16[3];
      v47[17] = v40;
      v47[18] = a9;
    }
  }

  v37 = JPEGDeviceInterface_decodeJPEG2024(connection, inputStruct, outputStruct);
  v38 = v37;
  if (a17)
  {
    *a17 = v44;
  }

  if (a18)
  {
    *a18 = v45;
  }

  if (v37)
  {
    syslog(5, "JPEGDecompressSurface : Picture decode failed: %08x", v37);
  }

  return v38;
}

uint64_t JPEGDeviceInterface_decodeJPEG2024(mach_port_t connection, void *inputStruct, void *outputStruct)
{
  outputStructCnt = 3488;
  v6 = MEMORY[0x1E695FF58];
  v7 = connection;
  if (connection || (v7 = _openService()) != 0)
  {
    if (*v6 == 1)
    {
      kdebug_trace();
    }

    v8 = IOConnectCallStructMethod(v7, 7u, inputStruct, 0xDA0uLL, outputStruct, &outputStructCnt);
  }

  else
  {
    v8 = 3758097101;
  }

  if (!*(inputStruct + 6) && *v6 == 1)
  {
    kdebug_trace();
  }

  if (!connection && v7)
  {
    _closeService(v7);
  }

  return v8;
}

intptr_t CMPhotoDecompressionSessionRecyclePooledJPEGHWSession(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 240))
  {
    os_unfair_lock_lock((a1 + 248));
    if (a3)
    {
      os_unfair_lock_unlock((a1 + 248));
      JPEGDeviceInterface_closeDriverConnection(a2);
    }

    else
    {
      CFArrayInsertValueAtIndex(*(a1 + 264), 0, a2);
      os_unfair_lock_unlock((a1 + 248));
    }

    v7 = *(a1 + 256);

    return dispatch_semaphore_signal(v7);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void CMPhotoAddDefault601709MatrixToBufferIfAllowed(__CVBuffer *a1, int a2, int a3)
{
  if (!a1)
  {
    return;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = PixelFormatType;
  IsFullRange = CMPhotoPixelFormatIsFullRange(PixelFormatType);
  v9 = CMPhotoPixelFormatContainsRGB(v7);
  v10 = 1;
  if (v7 <= 1278226735)
  {
    if ((v7 - 1278226488) <= 0x30 && ((1 << (v7 - 56)) & 0x1400000000001) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (((v7 - 1278226736) > 6 || ((1 << (v7 - 48)) & 0x45) == 0) && v7 != 1717855600 && v7 != 1751410032)
  {
LABEL_11:
    v10 = v7 == 1751411059 || v7 == 1717856627;
  }

LABEL_17:
  v12 = 1;
  if (v7 != 825306677 && v7 != 825437747)
  {
    v12 = v7 == 1932996149;
  }

  if (CMPhotoPixelFormatIsRAW(v7))
  {
    v13 = 1;
  }

  else
  {
    v13 = CMPhotoPixelFormatIsRAWVersatile(v7) != 0;
  }

  IsITUR_2100TF = CMPhotoPixelBufferIsITUR_2100TF(a1);
  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  if (((v15 | v12) & 1) == 0 && !v13 && !IsITUR_2100TF)
  {
    v16 = *MEMORY[0x1E6965F98];
    v17 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F98], 0);
    if (v17)
    {

      CFRelease(v17);
    }

    else
    {
      if (a2 && IsFullRange)
      {
        v18 = MEMORY[0x1E6965FC8];
      }

      else
      {
        if (!a3)
        {
          return;
        }

        v18 = MEMORY[0x1E6965FD0];
      }

      v19 = *v18;

      CVBufferSetAttachment(a1, v16, v19, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

uint64_t CMPhotoPixelFormatContainsRGB(OSType pixelFormat)
{
  v3 = 0;
  if (pixelFormat == 1380401729)
  {
    return 1;
  }

  else
  {
    v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
    FigCFDictionaryGetBooleanIfPresent();
    if (v1)
    {
      CFRelease(v1);
    }
  }

  return v3;
}

BOOL CMPhotoPixelBufferIsITUR_2100TF(__CVBuffer *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F30], 0);
  v2 = v1;
  if (v1)
  {
    v1 = FigCFEqual();
    if (v1)
    {
      v3 = 1;
    }

    else
    {
      v1 = FigCFEqual();
      v3 = v1 != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_45(v1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void CMPhotoGetPixelBufferCLAP(__CVBuffer *a1, void *a2, void *a3, void *a4, void *a5)
{
  PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(a1);
  if (a2)
  {
    *a2 = PixelBufferCLAPAsRect;
  }

  if (a3)
  {
    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    *a5 = v12;
  }
}

uint64_t CMPhotoDecompressionSessionDetachSurface(os_unfair_lock_s *a1, void *a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_1_29(a1);
  v4 = CMPhotoSurfacePoolDetachImageSurface(*(v2 + 272), a2);
  os_unfair_lock_unlock((v2 + 16));
  return v4;
}

void CMPhotoUnifiedJPEGDecoderDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 216);
    if (v3)
    {
      if (!*(a1 + 232) || (IOSurfaceDecrementUseCount(v3), (v3 = *(a1 + 216)) != 0))
      {
        CFRelease(v3);
      }
    }

    applejpeg_decode_destroy();
    InputWrapper_destroy(*(a1 + 80));
    v4 = *(a1 + 88);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void InputWrapper_destroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t _dropPreparedDecoders(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 88);
  if (v2)
  {
    v5.length = CFArrayGetCount(*(a1 + 88));
    v5.location = 0;
    CFArrayApplyFunction(v2, v5, _disposePreparedDecoder, 0);
  }

  *(a1 + 80) = 0;

  return FigSimpleMutexUnlock();
}

uint64_t CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(uint64_t result)
{
  if (result > 762603059)
  {
    if (result > 796419633)
    {
      if (result <= 2088003121)
      {
        if (result > 2084070959)
        {
          if (result > 2084718400)
          {
            if (result == 2084718401)
            {
              return 1111970369;
            }

            if (result == 2085367864)
            {
              return 1278226488;
            }

            v12 = 2088003120;
            goto LABEL_87;
          }

          if (result == 2084070960)
          {
            return 875704422;
          }

          v23 = 2084075056;
LABEL_157:
          if (result != v23)
          {
            return result;
          }

          goto LABEL_158;
        }

        if (result > 796423727)
        {
          if (result == 796423728)
          {
            return 2016686640;
          }

          if (result == 796423730)
          {
            goto LABEL_124;
          }

          v8 = 796423732;
LABEL_122:
          if (result != v8)
          {
            return result;
          }

          v20 = 2016686640;
          return (v20 + 516);
        }

        if (result == 796419634)
        {
          return 2019963442;
        }

        v5 = 796419636;
      }

      else
      {
        if (result <= 2088265263)
        {
          if (result <= 2088007215)
          {
            if (result != 2088003122)
            {
              v7 = 2088003124;
LABEL_169:
              if (result != v7)
              {
                return result;
              }

              goto LABEL_170;
            }

LABEL_172:
            v21 = 1952854576;
            return v21 | 2u;
          }

          if (result != 2088007216)
          {
            if (result != 2088007218)
            {
              if (result != 2088007220)
              {
                return result;
              }

              goto LABEL_112;
            }

            return 1953903154;
          }

          return 1953903152;
        }

        if (result > 2088269359)
        {
          if (result != 2088269360)
          {
            if (result != 2088269362)
            {
              v8 = 2088269364;
              goto LABEL_122;
            }

            goto LABEL_124;
          }

          return 2016686640;
        }

        if (result == 2088265264)
        {
          return 2019963440;
        }

        if (result == 2088265266)
        {
          return 2019963442;
        }

        v5 = 2088265268;
      }
    }

    else
    {
      if (result > 792225327)
      {
        if (result > 796157489)
        {
          if (result <= 796161585)
          {
            if (result == 796157490)
            {
              goto LABEL_172;
            }

            if (result != 796157492)
            {
              v3 = 796161584;
              goto LABEL_133;
            }

            goto LABEL_170;
          }

          if (result == 796161586)
          {
            return 1953903154;
          }

          if (result == 796161588)
          {
            goto LABEL_112;
          }

          v6 = 796419632;
          goto LABEL_110;
        }

        if (result > 792872768)
        {
          if (result == 792872769)
          {
            return 1111970369;
          }

          if (result == 793522232)
          {
            return 1278226488;
          }

          v12 = 796157488;
LABEL_87:
          if (result != v12)
          {
            return result;
          }

          return 1952854576;
        }

        if (result == 792225328)
        {
          return 875704422;
        }

        v23 = 792229424;
        goto LABEL_157;
      }

      if (result <= 762865201)
      {
        if (result <= 762607153)
        {
          if (result != 762603060)
          {
            v3 = 762607152;
LABEL_133:
            if (result != v3)
            {
              return result;
            }

            return 1953903152;
          }

LABEL_170:
          v20 = 1952854576;
          return (v20 + 516);
        }

        if (result == 762607154)
        {
          return 1953903154;
        }

        if (result == 762607156)
        {
          goto LABEL_112;
        }

        v6 = 762865200;
LABEL_110:
        if (result != v6)
        {
          return result;
        }

        return 2019963440;
      }

      if (result > 762869295)
      {
        if (result == 762869296)
        {
          return 2016686640;
        }

        if (result == 762869298)
        {
          goto LABEL_124;
        }

        v8 = 762869300;
        goto LABEL_122;
      }

      if (result == 762865202)
      {
        return 2019963442;
      }

      v5 = 762865204;
    }

LABEL_163:
    if (result != v5)
    {
      return result;
    }

    v19 = 2019963442;
    return (v19 + 514);
  }

  if (result > 645101107)
  {
    if (result > 645424689)
    {
      if (result > 758670895)
      {
        if (result <= 759967799)
        {
          if (result == 758670896)
          {
            return 875704422;
          }

          if (result != 758674992)
          {
            v4 = 759318337;
LABEL_145:
            if (result != v4)
            {
              return result;
            }

            return 1111970369;
          }

LABEL_158:
          v24 = 875704422;
          return v24 | 0x10u;
        }

        if (result == 759967800)
        {
          return 1278226488;
        }

        if (result != 762603056)
        {
          if (result != 762603058)
          {
            return result;
          }

          goto LABEL_172;
        }

        return 1952854576;
      }

      if (result > 645428783)
      {
        if (result != 645428784)
        {
          if (result != 645428786)
          {
            v8 = 645428788;
            goto LABEL_122;
          }

LABEL_124:
          v21 = 2016686640;
          return v21 | 2u;
        }

        return 2016686640;
      }

      if (result != 645424690)
      {
        v5 = 645424692;
        goto LABEL_163;
      }

      return 2019963442;
    }

    if (result <= 645166639)
    {
      if (result <= 645162543)
      {
        if (result == 645161784)
        {
          v22 = 1651925816;
        }

        else
        {
          v22 = result;
        }

        if (result == 645101108)
        {
          return 1937126452;
        }

        else
        {
          return v22;
        }
      }

      if (result == 645162544)
      {
        return 1952854576;
      }

      if (result != 645162546)
      {
        v7 = 645162548;
        goto LABEL_169;
      }

      goto LABEL_172;
    }

    if (result > 645166643)
    {
      if (result != 645166644)
      {
        if (result == 645423928)
        {
          return 1652056888;
        }

        v6 = 645424688;
        goto LABEL_110;
      }

LABEL_112:
      v19 = 1953903154;
      return (v19 + 514);
    }

    if (result != 645166640)
    {
      if (result != 645166642)
      {
        return result;
      }

      return 1953903154;
    }

    return 1953903152;
  }

  if (result <= 642527537)
  {
    if (result <= 641234483)
    {
      if (result > 641230387)
      {
        if (result == 641230388)
        {
          return 875836518;
        }

        if (result != 641234480)
        {
          v1 = result == 641234482;
          v2 = 875704950;
          goto LABEL_128;
        }

        goto LABEL_158;
      }

      if (result != 641230384)
      {
        v1 = result == 641230386;
        v2 = 875704934;
LABEL_128:
        if (v1)
        {
          return v2;
        }

        else
        {
          return result;
        }
      }

      return 875704422;
    }

    if (result > 642527287)
    {
      if (result != 642527288)
      {
        v9 = 642527336;
        v10 = 1278226536;
        if (result == 642527536)
        {
          v11 = 1278226736;
        }

        else
        {
          v11 = result;
        }

LABEL_104:
        if (result == v9)
        {
          return v10;
        }

        else
        {
          return v11;
        }
      }

      return 1278226488;
    }

    if (result == 641234484)
    {
      v24 = 875836518;
      return v24 | 0x10u;
    }

    v4 = 641877825;
    goto LABEL_145;
  }

  if (result > 644624753)
  {
    if (result <= 645097011)
    {
      if (result == 644624754)
      {
        return 1815162994;
      }

      if (result == 645097008)
      {
        return 1936077360;
      }

      v1 = result == 645097010;
      v2 = 1936077362;
      goto LABEL_128;
    }

    v9 = 645097012;
    v10 = 1936077876;
    if (result == 645101106)
    {
      v18 = 1937125938;
    }

    else
    {
      v18 = result;
    }

    if (result == 645101104)
    {
      v11 = 1937125936;
    }

    else
    {
      v11 = v18;
    }

    goto LABEL_104;
  }

  if (result == 644375667)
  {
    v13 = 1751411059;
  }

  else
  {
    v13 = result;
  }

  if (result == 643970675)
  {
    v14 = 1651519798;
  }

  else
  {
    v14 = v13;
  }

  if (result == 643970664)
  {
    v15 = 1651926376;
  }

  else
  {
    v15 = v14;
  }

  if (result == 642527542)
  {
    v16 = 1278226742;
  }

  else
  {
    v16 = result;
  }

  if (result == 642527538)
  {
    v17 = 1278226738;
  }

  else
  {
    v17 = v16;
  }

  if (result <= 643970663)
  {
    return v17;
  }

  else
  {
    return v15;
  }
}

uint64_t CMPhotoPixelFormatIsFullRange(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  if (UncompressedPixelFormatFromCompressedPixelFormat == 1278555701)
  {
    return 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat == 1380401729)
  {
    return 1;
  }

  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!DescriptionWithPixelFormatType || !CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E6966248]))
  {
    return 1;
  }

  return FigCFEqual();
}

double CMPhotoGetPixelBufferCLAPAsRect(__CVBuffer *a1)
{
  PixelBufferSize = CMPhotoGetPixelBufferSize(a1);
  v3 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D70], 0);
  CropRectFromCLAPDict = CMPhotoGetCropRectFromCLAPDict(v3, PixelBufferSize);
  if (v3)
  {
    CFRelease(v3);
  }

  return CropRectFromCLAPDict;
}

double CMPhotoGetPixelBufferSize(__CVBuffer *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  Width = CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  return Width;
}

void CMPhotoCreateColorSpaceFromPixelBufferAttachments(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFStringRef yCbCrMatrixString, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_106();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v23)
  {
    v30 = *MEMORY[0x1E695F128];
  }

  else
  {
    v30 = *MEMORY[0x1E695F1C0];
  }

  if (!v22 || (v31 = v23, v32 = v22, CFDictionaryGetCount(v22) < 1))
  {
    v37 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v32, *MEMORY[0x1E6965CE8]);
  if (Value)
  {
    ColorSpaceFromTriplets = CFRetain(Value);
    if (ColorSpaceFromTriplets)
    {
      goto LABEL_17;
    }
  }

  v35 = CFDictionaryGetValue(v32, *MEMORY[0x1E6965EC8]);
  if (v35)
  {
    ColorSpaceFromAttachments = CGColorSpaceCreateWithICCData(v35);
    goto LABEL_10;
  }

  v38 = CFDictionaryGetValue(v32, *MEMORY[0x1E6965D88]);
  v39 = CFDictionaryGetValue(v32, *MEMORY[0x1E6965F30]);
  yCbCrMatrixStringa = CFDictionaryGetValue(v32, *MEMORY[0x1E6965F98]);
  ColorSpaceFromTriplets = CMPhotoCreateColorSpaceFromTriplets(v38, v39, v40, v31);
  if (ColorSpaceFromTriplets)
  {
LABEL_17:
    v37 = ColorSpaceFromTriplets;
  }

  else
  {
    CVColorPrimariesGetIntegerCodePointForString(v38);
    CVTransferFunctionGetIntegerCodePointForString(v39);
    CVYCbCrMatrixGetIntegerCodePointForString(yCbCrMatrixStringa);
    v37 = CGColorSpaceCreateFromCICP();
    if (!v37)
    {
      if (!v39 || !v38)
      {
LABEL_12:
        if (!(v25 | v27) && !v37)
        {
          v37 = CGColorSpaceCreateWithName(v30);
          if (!v37)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_18;
      }

      ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v32);
LABEL_10:
      v37 = ColorSpaceFromAttachments;
      goto LABEL_12;
    }
  }

LABEL_18:
  if (v25)
  {
    CGColorSpaceGetName(v37);
    v41 = FigCFEqual();
    if (v37)
    {
      if (v41)
      {
        CFRelease(v37);
        v37 = 0;
      }
    }
  }

LABEL_22:
  *v29 = v37;
  OUTLINED_FUNCTION_105();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CMPhotoGetTripletsForColorSpace(v2, a1, va, 0, 0);
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return FigSimpleMutexLock();
}

void OUTLINED_FUNCTION_29_2(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, __CVBuffer *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{

  CMPhotoCreateCVPixelBufferNotBackedByIOSurface(a1, a2, a3, a4, 0, 0, 64, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

void CMPhotoDecompressionSessionClass_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_21);
    v3 = *(a1 + 40);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 40) = 0;
    }
  }

  _releaseAsyncQueueElements((a1 + 144));
  _releaseAsyncQueueElements((a1 + 192));
  _releaseAsyncQueueElements((a1 + 96));
  _releaseAsyncQueueElements((a1 + 48));
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 288) = 0;
  }

  v6 = *(a1 + 296);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 296) = 0;
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 280) = 0;
  }

  v8 = *(a1 + 272);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 272) = 0;
  }

  if (*(a1 + 240))
  {
    v9 = *(a1 + 264);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v11 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 264), v11 - 2);
          JPEGDeviceInterface_closeDriverConnection(ValueAtIndex);
          CFArrayRemoveValueAtIndex(*(a1 + 264), v11 - 2);
          --v11;
        }

        while (v11 > 1);
      }
    }

    v13 = *(a1 + 256);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 256) = 0;
    }

    v14 = *(a1 + 264);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 264) = 0;
    }
  }

  v15 = *(a1 + 304);
  if (v15)
  {
    _Block_release(v15);
    *(a1 + 304) = 0;
  }
}

void _releaseAsyncQueueElements(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    dispatch_barrier_sync(v2, &__block_literal_global_22_1);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
      a1[2] = 0;
    }
  }

  v4 = a1[1];
  if (v4)
  {
    dispatch_release(v4);
    a1[1] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    dispatch_release(v6);
    a1[3] = 0;
  }
}

uint64_t CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(void *cf, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, uint64_t *a7)
{
  v8 = 0;
  MutableCopy = 0;
  cfa = 0;
  v9 = 4294950306;
  if (a6 && a7)
  {
    if (!a3 || (CFGetAllocator(cf), (MutableCopy = FigCFDictionaryCreateMutableCopy()) != 0))
    {
      v18 = -1;
      v14 = CMPhotoDecompressionContainerInternalToExternalIndexAndCopyAlternateOptions(cf, a2, &v18, 0, &MutableCopy);
      if (!v14)
      {
        v17 = 0;
        CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions(cf, v18, MutableCopy, &v17);
        if (!v14)
        {
          if (v17 < 1)
          {
LABEL_16:
            v9 = 0;
LABEL_17:
            v8 = 0;
            goto LABEL_18;
          }

          v15 = 0;
          while (1)
          {
            if (cfa)
            {
              CFRelease(cfa);
              cfa = 0;
            }

            CMPhotoDecompressionContainerCopyAuxiliaryImageTypeURNForIndexWithOptions(cf, v18, v15, MutableCopy, &cfa);
            if (v14)
            {
              break;
            }

            if (CMPhotoGetAuxiliaryImageTypeFromURN() == a4 && (a4 != 4 || FigCFEqual()))
            {
              v9 = 0;
              *a7 = v15;
              v8 = 1;
              goto LABEL_18;
            }

            if (++v15 >= v17)
            {
              goto LABEL_16;
            }
          }
        }
      }

      v9 = v14;
      goto LABEL_17;
    }

    v8 = 0;
    v9 = 4294950305;
  }

LABEL_18:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  *a6 = v8;
  return v9;
}

uint64_t CMPhotoDecompressionContainerInternalToExternalIndexAndCopyAlternateOptions(void *a1, uint64_t a2, void *a3, void *a4, CFMutableDictionaryRef *a5)
{
  if (a1[73] <= a2)
  {
    return 4294950306;
  }

  if (a1[69])
  {
    v6 = *(a1[71] + 8 * a2);
    a2 = *(a1[70] + 8 * a2);
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6 = 0;
  if (a3)
  {
LABEL_4:
    *a3 = a2;
  }

LABEL_5:
  if (a4)
  {
    *a4 = v6;
  }

  if (!a5)
  {
    return 0;
  }

  v7 = *a5;
  if (*a5)
  {
    Mutable = 0;
  }

  else
  {
    v10 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = Mutable;
    if (!Mutable)
    {
      return 4294950305;
    }
  }

  v9 = FigCFDictionarySetCFIndex();
  if (v9)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a5 = v7;
  }

  return v9;
}

void CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      if (a4)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v13 + 136))
        {
          v14 = OUTLINED_FUNCTION_2_22();
          v15(v14);
        }
      }
    }
  }
}

uint64_t _getAuxiliaryImageCountForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*(a1 + 112))
  {
    Count = CFArrayGetCount(*(a1 + 96));
    result = 0;
    *a4 = Count;
  }

  else
  {
    _getAuxiliaryImageCountForIndex_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t _getAuxiliaryImageCountForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (a2 <= 0)
    {
      v4 = *(a1 + 80);
    }

    else
    {
      v4 = 0;
    }

    *a4 = v4;
  }

  return 0;
}

uint64_t _getAuxiliaryImageCountForIndex_2(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_17_4(a1, a2, a3, a4, a5, a6, a7, a8, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11), v13);
  if (!result)
  {
    result = _parseMPOIfNeeded(a1 + 40);
    if (a4)
    {
      if (!result)
      {
        *a4 = *(a1 + 272) - (v12 != 0);
      }
    }
  }

  return result;
}

uint64_t _getAuxiliaryImageCountForIndex_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (a4)
    {
      *a4 = *(a1 + 144) != 0;
    }

    return 0;
  }
}

void CMPhotoDecompressionContainerClass_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v3(a1);
      v2 = a1[4];
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      v4(a1);
    }
  }

  v5 = a1[69];
  if (v5)
  {
    CFRelease(v5);
    a1[69] = 0;
  }

  v6 = a1[70];
  if (v6)
  {
    a1[70] = 0;
    free(v6);
  }

  v7 = a1[71];
  if (v7)
  {
    a1[71] = 0;
    free(v7);
  }

  v8 = a1[75];
  if (v8)
  {
    CFRelease(v8);
    a1[75] = 0;
  }

  v9 = a1[76];
  if (v9)
  {
    CFRelease(v9);
    a1[76] = 0;
  }

  v10 = a1[77];
  if (v10)
  {
    CFRelease(v10);
    a1[77] = 0;
  }

  v11 = a1[2];
  if (v11)
  {
    CFRelease(v11);
    a1[2] = 0;
  }
}

uint64_t _invalidate(void *a1)
{
  v2 = a1[59];
  if (v2)
  {
    CFRelease(v2);
    a1[59] = 0;
  }

  _dropPreparedDecoders(a1);
  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
    a1[11] = 0;
  }

  FigSimpleMutexDestroy();
  a1[9] = 0;
  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  CMPhotoUnifiedJPEGDecoderDestroy(a1[12]);
  a1[12] = 0;
  return 0;
}

uint64_t _invalidate_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  return 0;
}

uint64_t _invalidate_1(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 64);
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = *"";
    block[2] = ___invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = v2;
    dispatch_sync(v3, block);
    v4 = *(a1 + 64);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 64) = 0;
    }
  }

  if (*v2)
  {
    CFRelease(*v2);
    *v2 = 0;
  }

  _closeContainer_1(a1);
  return 0;
}

uint64_t _invalidate_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  _closeContainer_2(a1);
  return 0;
}

uint64_t _invalidate_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  return 0;
}

uint64_t _invalidate_4(uint64_t a1)
{
  _releaseAllContainerResources(a1);
  v2 = *(a1 + 492);
  if (v2)
  {
    JPEGDeviceInterface_closeDriverConnection(v2);
    *(a1 + 492) = 0;
  }

  return 0;
}

uint64_t _invalidate_5(uint64_t a1)
{
  _finishAsyncEncoding(a1);
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 120) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 168) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 152) = 0;
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 160) = 0;
  }

  FigSemaphoreDestroy();
  *(a1 + 200) = 0;
  v7 = *(a1 + 192);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 192) = 0;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 128) = 0;
  }

  CMPhotoCompressionSessionDestroySequenceGroupReaders(*(a1 + 144));
  *(a1 + 144) = 0;
  CMPhotoHEIFFileWriterDispose(*(a1 + 88));
  *(a1 + 88) = 0;
  return 0;
}

uint64_t _closeContainer(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 288) = 0;
  *(a1 + 104) = 0;
  v4 = *(a1 + 144);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 144) = 0;
  }

  *(a1 + 376) = 0;
  v5 = *(a1 + 424);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 424) = 0;
  }

  *(a1 + 400) = 0;
  v6 = *(a1 + 456);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 456) = 0;
  }

  *(a1 + 432) = 0;
  v7 = *(a1 + 472);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 472) = 0;
  }

  *(a1 + 464) = 0;
  v8 = *(a1 + 488);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 488) = 0;
  }

  *(a1 + 480) = 0;
  *(a1 + 152) = 0;
  if (*(a1 + 272))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      _releaseAuxImageStorage((*(a1 + 280) + v9));
      ++v10;
      v9 += 104;
    }

    while (v10 < *(a1 + 272));
  }

  v11 = *(a1 + 280);
  if (v11)
  {
    *(a1 + 280) = 0;
    free(v11);
  }

  *(a1 + 153) = 0;
  _releaseAuxImageStorage((a1 + 160));
  return 0;
}

uint64_t _closeContainer_0(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 288) = 0;
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 296) = 0;
  }

  v4 = *(a1 + 304);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 304) = 0;
  }

  v5 = *(a1 + 312);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 312) = 0;
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 320) = 0;
  }

  v7 = *(a1 + 328);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 328) = 0;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 72) = 0;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 56) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = 0;
  return 0;
}

uint64_t _closeContainer_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 128) = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  return 0;
}

uint64_t _closeContainer_2(uint64_t a1)
{
  _releaseSequenceReader(*(a1 + 80));
  *(a1 + 80) = 0;
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = 0;
    do
    {
      if (CFArrayGetCount(v2) <= v3)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v3);
      _releaseSequenceReader(ValueAtIndex);
      ++v3;
      v2 = *(a1 + 88);
    }

    while (v2);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (CFArrayGetCount(v5) <= v6)
      {
        break;
      }

      v7 = CFArrayGetValueAtIndex(*(a1 + 96), v6);
      _releaseSequenceReader(v7);
      ++v6;
      v5 = *(a1 + 96);
    }

    while (v5);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 96) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 72) = 0;
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 104) = 0;
  return 0;
}

uint64_t _closeContainer_3(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      _releaseAuxImageStorage((*(a1 + 88) + v2));
      ++v3;
      v2 += 104;
    }

    while (v3 < *(a1 + 80));
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 88) = 0;
    free(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 104) = 0;
  }

  DicomDecoderDestroy(*(a1 + 112));
  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 56) = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 64) = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 40) = 0;
  }

  return 0;
}

uint64_t CMPhotoUnifiedJPEGDecoderNumHardwareCores()
{
  if (qword_1ED6FA638 != -1)
  {
    CMPhotoUnifiedJPEGDecoderFileSupportedByHardware_cold_1();
  }

  if (_isHWAvailableHelper_sHWAvailable)
  {
    return _isHWAvailableHelper_sNumCores;
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoUnifiedJPEGDecoderHardwareAvailable()
{
  if (qword_1ED6FA638 != -1)
  {
    CMPhotoUnifiedJPEGDecoderFileSupportedByHardware_cold_1();
  }

  return _isHWAvailableHelper_sHWAvailable;
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, const void *a2)
{

  return CMPhotoCFDictionarySetBoolean(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return VTPixelRotationSessionRotateSubImage();
}

const void *OUTLINED_FUNCTION_21_6()
{
  v3 = *(v0 + 40);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, unint64_t a13)
{
  a13 = a2;
  a12 = 0;
  v14 = a1 + 40;

  return _checkImageIndex(v14, &a13, &a12);
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return FigCFDictionaryGetValue();
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(a28 + 4 * v28 + 16380);

  return _encodeWriteSymbol(&a28, v30);
}

void *OUTLINED_FUNCTION_9_5@<X0>(int a1@<W8>)
{
  *(v1 - 92) = a1;

  return malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7759597uLL);
}

uint64_t OUTLINED_FUNCTION_9_13(double a1, uint64_t a2, uint64_t a3)
{
  v5 = llround(a1);

  return CMPhotoCFDictionarySetInt(v3, a3, v5);
}

uint64x2_t OUTLINED_FUNCTION_9_14(float64x2_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a1.f64[0];
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 200) = a4;
  a1.f64[1] = a2;
  result = vcvtq_u64_f64(vrndaq_f64(a1));
  *(v4 + 88) = result;
  return result;
}

uint64_t JPEGParseJPEGInfo(const __CFData *a1, uint64_t a2, int a3, char a4)
{
  BytePtr = CFDataGetBytePtr(a1);
  v8 = CFDataGetLength(a1);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  if (v8 < 3)
  {
    return 4294954387;
  }

  if (BytePtr[1] != 216)
  {
    return 4294954387;
  }

  v9 = v8;
  *(a2 + 48) = 2;
  v10 = v8 - 2;
  if (v8 - 2 < 4)
  {
    return 4294954387;
  }

  v67 = a3;
  v11 = 0;
  Mutable = 0;
  v13 = 0;
  v14 = 0;
  v15 = BytePtr + 2;
  v16 = 1;
  v17 = &v70;
  v18 = 4;
  v19 = v10;
  v20 = 1;
  do
  {
    v21 = v15;
    while (1)
    {
      v22 = *v21++;
      if (v22 == 255)
      {
        break;
      }

      --v19;
      v15 = v21;
      if (v19 < 4)
      {
        goto LABEL_111;
      }
    }

    v23 = v15[1];
    v24 = __rev16(*(v15 + 1));
    v25 = v24 + 2;
    v26 = v23 - 192;
    if ((v23 - 192) < 3)
    {
      v28 = v19 < 0xD || v25 > v19;
      if (v28)
      {
        goto LABEL_111;
      }

      *(a2 + 52) = v23 == 194;
      v29 = v15[4];
      *(a2 + 25) = v29;
      if ((v29 | 4) != 0xC)
      {
        goto LABEL_115;
      }

      *(a2 + 4) = __rev16(*(v15 + 5));
      *a2 = __rev16(*(v15 + 7));
      v30 = v15[9];
      *(a2 + 24) = v30;
      if (v24 != 3 * v30 + 8)
      {
        goto LABEL_115;
      }

      if (v30 == 3)
      {
        v31 = 0;
        v32 = 11;
        while (1)
        {
          v33 = v15[v32];
          v17[v31] = v33;
          if (v31)
          {
            if (v33 != 17)
            {
              break;
            }
          }

          ++v31;
          v32 += 3;
          if (v31 == 3)
          {
            switch(v70)
            {
              case 17:
                v35 = 0x800000008;
                v34 = 2;
                break;
              case 65:
                v34 = 3;
                v35 = 0x800000020;
                break;
              case 34:
                v34 = 0;
                v35 = 0x1000000010;
                break;
              case 33:
                v34 = 1;
                v35 = 0x800000010;
                break;
              default:
                goto LABEL_115;
            }

            v27 = 0;
            *(a2 + 8) = v35;
            *(a2 + 16) = v34;
            goto LABEL_70;
          }
        }

LABEL_115:
        v36 = 4294954386;
        goto LABEL_112;
      }

      if (v30 != 1)
      {
        goto LABEL_115;
      }

      v27 = 0;
      *(a2 + 8) = 0x800000008;
      *(a2 + 16) = v18;
LABEL_70:
      v11 = 1;
    }

    else
    {
      switch(v23)
      {
        case 218:
          v36 = 4294954387;
          if ((v11 & 1) == 0)
          {
            goto LABEL_112;
          }

          if (v19 < 0xA || v25 > v19)
          {
            goto LABEL_112;
          }

          if (v15[4] != *(a2 + 24))
          {
            goto LABEL_115;
          }

          v11 = 1;
          v27 = 1;
          break;
        case 221:
          if (v19 < 6 || v24 != 4)
          {
            goto LABEL_111;
          }

          v27 = 0;
          *(a2 + 20) = __rev16(*(v15 + 2));
          v25 = 6;
          break;
        case 226:
          if (v19 < 0x12 || (a4 & 1) == 0)
          {
            goto LABEL_88;
          }

          if (v25 > v19)
          {
            goto LABEL_111;
          }

          if (v24 < 0x10)
          {
            v27 = 0;
            a4 = 1;
            break;
          }

          lengtha = v24 - 16;
          OUTLINED_FUNCTION_1_13();
          if (strncmp(v15 + 4, v42, 0xCuLL))
          {
            a4 = 1;
            goto LABEL_63;
          }

          if (!v15[17])
          {
            OUTLINED_FUNCTION_2_14();
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_2_14();
          v20 = v64;
          v11 = v66;
          if (v46 && v46 != v45)
          {
            goto LABEL_87;
          }

          v49 = v15[16];
          if (v45 <= (v49 - 1) || v44 + 1 != v49)
          {
            goto LABEL_87;
          }

          v65 = v45;
          if (!Mutable)
          {
            Mutable = CFDataCreateMutable(v47, 0);
            if (!Mutable)
            {
              OUTLINED_FUNCTION_0_14();
              v20 = v64;
LABEL_82:
              v11 = v66;
LABEL_87:
              a4 = 0;
LABEL_88:
              v27 = 0;
              break;
            }

            v49 = v15[16];
          }

          CFDataAppendBytes(Mutable, v15 + 18, lengtha);
          a4 = 1;
          if (v49 == v65)
          {
            OUTLINED_FUNCTION_0_14();
LABEL_81:
            v20 = v64;
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_0_14();
          v20 = v64;
          break;
        case 234:
          if (v19 >= 0xE)
          {
            if (v25 > v19)
            {
              goto LABEL_111;
            }

            if (v24 >= 0xC)
            {
              OUTLINED_FUNCTION_1_13();
              v63 = v40;
              if (memcmp(v15 + 4, v41, 6uLL))
              {
                goto LABEL_63;
              }

              OUTLINED_FUNCTION_0_14();
              v20 = v64;
              v11 = v66;
              if (v43)
              {
                v27 = 0;
                Mutable = v63;
                break;
              }

              v48 = __rev16(*(v15 + 6));
              Mutable = v63;
              if (v48)
              {
                if (v24 >= 4 * v48 + 12)
                {
                  v27 = 0;
                  *(a2 + 26) = v16;
                  *(a2 + 28) = v48;
                  *(a2 + 32) = v15 - BytePtr + 14;
                  break;
                }
              }
            }
          }

          break;
        case 238:
          if (v19 >= 0x10)
          {
            if (v25 > v19)
            {
              goto LABEL_111;
            }

            OUTLINED_FUNCTION_1_13();
            if (!memcmp(v15 + 4, v38, 5uLL))
            {
              OUTLINED_FUNCTION_0_14();
            }

            else
            {
LABEL_63:
              OUTLINED_FUNCTION_0_14();
              v20 = v64;
            }

            v11 = v66;
            break;
          }

          break;
        case 255:
          v27 = 0;
          v25 = 1;
          break;
        default:
          goto LABEL_88;
      }
    }

    v51 = v19 >= v25;
    v19 -= v25;
    if (!v51)
    {
      goto LABEL_111;
    }

    if (v26 <= 0x1D && ((v16 << v26) & 0x2C000011) != 0)
    {
      *(a2 + 48) += v25;
    }

    v15 += v25;
    if (v19 < 4)
    {
      v52 = 1;
    }

    else
    {
      v52 = v27;
    }
  }

  while ((v52 & 1) == 0);
  if (!v27)
  {
LABEL_111:
    v36 = 4294954387;
    goto LABEL_112;
  }

  *(a2 + 44) = v15 - BytePtr;
  if ((v14 & (v20 != 1)) != 0)
  {
    goto LABEL_115;
  }

  if (v67)
  {
    v53 = BytePtr[v10] == 255 && BytePtr[v9 - 1] == 217;
    *(a2 + 53) = v53;
  }

  if (v13)
  {
    v55 = Mutable;
    v28 = CFDataGetLength(Mutable) < 1;
    Mutable = v55;
    if (!v28)
    {
      v56 = CGColorSpaceCreateWithICCData(v55);
      v57 = v56;
      if (v56 && CGColorSpaceGetModel(v56) == kCGColorSpaceModelRGB)
      {
        *(a2 + 36) = CFRetain(v57);
      }

      CGColorSpaceRelease(v57);
      goto LABEL_131;
    }
  }

  if (a4)
  {
    v55 = Mutable;
    v58 = CGImageSourceCreateWithData(a1, 0);
    Mutable = v55;
    if (v58)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v58, 0, 0);
      if (ImageAtIndex)
      {
        v60 = ImageAtIndex;
        ColorSpace = CGImageGetColorSpace(ImageAtIndex);
        if (ColorSpace)
        {
          ColorSpace = CFRetain(ColorSpace);
        }

        *(a2 + 36) = ColorSpace;
        CFRelease(v60);
      }

      CFRelease(v58);
LABEL_131:
      Mutable = v55;
    }
  }

  v62 = vshl_u32(vadd_s32(vadd_s32(*a2, *(a2 + 8)), -1), vsub_s32(vclz_s32(*(a2 + 8)), 0x1F0000001FLL));
  *(a2 + 56) = v62;
  if (*(a2 + 26) != 1 || *(a2 + 20) == v62.i32[0] && *(a2 + 28) == v62.i32[1] - 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0;
    *(a2 + 26) = 0;
  }

LABEL_112:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v36;
}

void Pool_Cleanup(void *a1, unint64_t a2, unint64_t a3, int a4, int a5)
{
  v6 = a3;
  v7 = a2;
  if (a4)
  {
    if (a1[14] > a2 && a1[8] < a2)
    {
      v7 = a1[8];
    }

    if (a1[15] > a3 && a1[11] < a3)
    {
      v6 = a1[11];
    }
  }

  v9 = *a1;
  if (*a1)
  {
    do
    {
      v10 = v9;
      v9 = v9[7];
      if (*(v10 + 72) || !IOSurfaceIsInUse(*v10))
      {
        if (a1[14] > v7 || a1[15] > v6 || (v20 = CMPhotoUsePurgeableIOSurfaces(), a5) && v20 && *(v10[4] + 76) != 2)
        {
          v11 = v10[7];
          v12 = v10[8];
          v13 = (v11 + 64);
          if (!v11)
          {
            v13 = a1 + 1;
          }

          *v13 = v12;
          *v12 = v11;
          v14 = v10[5];
          if (v14)
          {
            v15 = (v14 + 48);
          }

          else
          {
            v15 = (v10[4] + 8);
          }

          v16 = v10[6];
          *v15 = v16;
          *v16 = v14;
          CMPhotoGetEncodeAccelerationModeOverride(*v10);
          if (*v10)
          {
            CFRelease(*v10);
          }

          v17 = v10[2];
          if (v17)
          {
            CFRelease(v17);
          }

          v18 = a1[15];
          a1[14] -= v10[1];
          a1[15] = v18 - 1;
          v19 = v10[4];
          --*(v19 + 24);
          ++*(v19 + 48);
          free(v10);
        }

        else if (!*(v10 + 72))
        {
          if (CMPhotoUsePurgeableIOSurfaces())
          {
            IOSurfaceSetPurgeable(*v10, 1u, 0);
          }

          *(v10 + 72) = 1;
        }
      }
    }

    while (v9);
  }
}

uint64_t CMPhotoCFDictionarySetInt64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr))
    {
      v6 = OUTLINED_FUNCTION_0_32();
      CFDictionarySetValue(v6, v7, v8);
      CFRelease(v3);
      return 0;
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return kdebug_trace();
}

void OUTLINED_FUNCTION_19_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11, __CVBuffer *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{

  CMPhotoCreateCVPixelBufferNotBackedByIOSurface(a1, a2, a3, a4, v25, v25, a17, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

CFIndex OUTLINED_FUNCTION_19_3(CFIndex range)
{
  v5.length = range;
  v4 = *(v1 + 8);
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(v4, v5, v2);
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString *a5)
{

  return CMPhotoAddValueToCGImageMetadata(v7, v8, v6, v5, a5);
}

uint64_t CMPhotoPixelFormatIsRAW(int a1)
{
  result = 1;
  if (a1 <= 1734505011)
  {
    if (a1 > 1650946097)
    {
      if (a1 != 1650946098 && a1 != 1734501176)
      {
        v4 = 1734504496;
LABEL_19:
        if (a1 != v4)
        {
          return 0;
        }
      }
    }

    else if (a1 != 1650942776 && a1 != 1650943796)
    {
      v4 = 1650946096;
      goto LABEL_19;
    }
  }

  else
  {
    if (a1 > 1735553071)
    {
      if (a1 > 1919379251)
      {
        if (a1 == 1919379252)
        {
          return result;
        }

        v3 = 28720;
      }

      else
      {
        if (a1 == 1735553072)
        {
          return result;
        }

        v3 = 25400;
      }

      v4 = v3 | 0x72670000;
      goto LABEL_19;
    }

    if (a1 != 1734505012 && a1 != 1735549492)
    {
      v4 = 1735549752;
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t CMPhotoPixelFormatIsRAWVersatile(int a1)
{
  result = 1;
  if (a1 > 1651847471)
  {
    if (a1 > 1651926375)
    {
      if (a1 == 1651926376)
      {
        return result;
      }

      v3 = 1652056888;
    }

    else
    {
      if (a1 == 1651847472)
      {
        return result;
      }

      v3 = 1651925816;
    }
  }

  else if (a1 > 1651519797)
  {
    if (a1 == 1651519798)
    {
      return result;
    }

    v3 = 1651798066;
  }

  else
  {
    if (a1 == 1647392369)
    {
      return result;
    }

    v3 = 1647719528;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t CMPhotoCreatePixelBufferWithSurface(const __CFAllocator *a1, IOSurfaceRef buffer, const __CFDictionary *a3)
{
  if (IOSurfaceGetPixelFormat(buffer) == 1380401729)
  {
    if (a3)
    {
      v5 = OUTLINED_FUNCTION_9_0();
      MutableCopy = CFDictionaryCreateMutableCopy(v5, v6, a3);
      if (!MutableCopy)
      {
        return 4294950305;
      }
    }

    else
    {
      v13 = OUTLINED_FUNCTION_9_0();
      MutableCopy = CFDictionaryCreateMutable(v13, v14, v15, v16);
      if (!MutableCopy)
      {
        return 4294950305;
      }
    }

    v17 = MutableCopy;
    v18 = OUTLINED_FUNCTION_9_0();
    Mutable = CFDictionaryCreateMutable(v18, v19, v20, v21);
    if (Mutable)
    {
      v23 = Mutable;
      CFDictionarySetValue(v17, *MEMORY[0x1E6966120], Mutable);
      CMPhotoCFDictionarySetInt32(v23, *MEMORY[0x1E6966288], 1380401729);
      CMPhotoCFDictionarySetInt(v23, *MEMORY[0x1E6966210], 32);
      v24 = CFDataCreate(a1, CMPhotoCreatePixelBufferWithSurface_kBlack_32RGBA, 4);
      if (v24)
      {
        v25 = v24;
        CFDictionarySetValue(v23, *MEMORY[0x1E6966220], v24);
        v26 = OUTLINED_FUNCTION_84();
        v30 = CVPixelBufferCreateWithIOSurface(v26, v27, v28, v29);
        CFRelease(v17);
        CFRelease(v23);
        CFRelease(v25);
        return v30;
      }

      CFRelease(v17);
      v31 = v23;
    }

    else
    {
      v31 = v17;
    }

    CFRelease(v31);
    return 4294950305;
  }

  v8 = OUTLINED_FUNCTION_84();

  return CVPixelBufferCreateWithIOSurface(v8, v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_16_1(__CVBuffer *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{

  return CMPhotoSetPixelBufferCLAP(a1, a2, a3, a4, a5, 0, 1);
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return FigCFDictionaryGetValue();
}

uint64_t OUTLINED_FUNCTION_6_3(pthread_once_t *a1)
{

  return pthread_once(a1, _registerFigNoteTrace);
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, opaqueCMSampleBuffer *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29, uint64_t a30)
{
  a30 = 0;
  a28 = 0u;
  a29 = 0u;
  a27 = 0u;

  return CMPhotoReadAV1SequenceHeaderInfoFromSampleBuffer(a15, &a27);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_6_17()
{

  return CFDictionaryCreateMutable(v2, 0, v0, v1);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_6_24()
{

  return CFDictionaryCreateMutable(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_6_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  a13 = 0;

  return CMPhotoDecompressionContainerIsCodecAllowed(v13, 1684237600, &a13);
}

uint64_t CMPhotoCFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = 4294950306;
  if (a1 && a2)
  {
    v4 = MEMORY[0x1E695E4D0];
    if (!a3)
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(a1, a2, *v4);
    return 0;
  }

  return v3;
}

void OUTLINED_FUNCTION_24_2(uint64_t a1, uint64_t a2, const void *a3)
{

  _copyPropertyFromReaderToDictionary(v4, a2, a3, v3);
}

void OUTLINED_FUNCTION_24_3(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t bytes)
{
  bytes = bswap64(a1);

  CFDataAppendBytes(v8, &bytes, 8);
}

uint64_t CMPhotoPixelFormatIsLossyCompressed50(int a1)
{
  result = 1;
  if (a1 <= 2088265263)
  {
    if (a1 != 2084070960 && a1 != 2084075056 && a1 != 2085367864)
    {
      return 0;
    }
  }

  else if ((a1 - 2088265264) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
  {
    v3 = a1 - 2088269360;
    if (v3 > 4 || ((1 << v3) & 0x15) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMPhotoPixelFormatIsAGXCompressed(int a1)
{
  result = 1;
  if (a1 > 645101103)
  {
    if (a1 <= 645166639)
    {
      if ((a1 - 645101104) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0 || (a1 - 645162544) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
      {
        return result;
      }

      v3 = 645161784;
LABEL_28:
      if (a1 == v3)
      {
        return result;
      }

      return 0;
    }

    if (a1 <= 645424687)
    {
      if ((a1 - 645166640) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
      {
        return result;
      }

      v3 = 645423928;
      goto LABEL_28;
    }

    if ((a1 - 645424688) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
    {
      return result;
    }

    v4 = -645428784;
LABEL_31:
    v5 = a1 + v4;
    if (v5 > 4 || ((1 << v5) & 0x15) == 0)
    {
      return 0;
    }

    return result;
  }

  if (a1 <= 642527535)
  {
    if (a1 > 641234479)
    {
      if ((a1 - 641234480) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0 || a1 == 642527288)
      {
        return result;
      }

      v3 = 642527336;
      goto LABEL_28;
    }

    v4 = -641230384;
    goto LABEL_31;
  }

  if (a1 > 644375666)
  {
    if ((a1 - 645097008) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0 || a1 == 644375667)
    {
      return result;
    }

    v3 = 644624754;
    goto LABEL_28;
  }

  if (((a1 - 642527536) > 6 || ((1 << (a1 - 48)) & 0x45) == 0) && a1 != 643970664)
  {
    v3 = 643970675;
    goto LABEL_28;
  }

  return result;
}

uint64_t CMPhotoPixelFormatIsLossyCompressed62(int a1)
{
  result = 1;
  if (a1 <= 796419631)
  {
    if (a1 != 792225328 && a1 != 792229424 && a1 != 793522232)
    {
      return 0;
    }
  }

  else if ((a1 - 796419632) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
  {
    v3 = a1 - 796423728;
    if (v3 > 4 || ((1 << v3) & 0x15) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMPhotoPixelFormatIsLossyCompressed75(int a1)
{
  result = 1;
  if (a1 <= 762865199)
  {
    if (a1 != 758670896 && a1 != 758674992 && a1 != 759967800)
    {
      return 0;
    }
  }

  else if ((a1 - 762865200) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
  {
    v3 = a1 - 762869296;
    if (v3 > 4 || ((1 << v3) & 0x15) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return CMPhotoGetPixelBufferDataPointers(a1, v7, v6, 0, a5, a6, 0);
}

void OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x480] = a69;
  STACK[0x488] = STACK[0x208];
  STACK[0x490] = a65;
  STACK[0x498] = a68;
}

CFDataRef CMPhotoCreateDataWrappingIOSurface(const __CFAllocator *a1, IOSurfaceRef buffer, unint64_t a3, CFIndex a4)
{
  if (!buffer)
  {
    return 0;
  }

  AllocSize = IOSurfaceGetAllocSize(buffer);
  v9 = AllocSize - a3;
  if (AllocSize < a3 || a4 + a3 > AllocSize)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigSignalErrorAtGM();
    return 0;
  }

  v10 = CFRetain(buffer);
  if (IOSurfaceLock(v10, 1u, 0))
  {
    v15 = 0;
    if (!v10)
    {
      return v15;
    }

    goto LABEL_22;
  }

  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v9;
  }

  BaseAddress = IOSurfaceGetBaseAddress(v10);
  if (!BaseAddress)
  {
    v14 = 0;
LABEL_29:
    v15 = 0;
    v16 = 1;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v13 = BaseAddress;
  context.version = 0;
  context.info = v10;
  memset(&context.retain, 0, 24);
  context.allocate = _ioSurfaceDeallocator_allocate;
  context.reallocate = 0;
  context.deallocate = _ioSurfaceDeallocator_deallocateDirect;
  context.preferredSize = 0;
  v14 = CFAllocatorCreate(0, &context);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = CFDataCreateWithBytesNoCopy(a1, &v13[a3], v11, v14);
  v16 = v15 == 0;
  if (v15)
  {
    v10 = 0;
  }

  if (v10)
  {
LABEL_13:
    if (v16)
    {
      IOSurfaceUnlock(v10, 1u, 0);
    }
  }

LABEL_15:
  v17 = !v16;
  if (!v15)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    CFRelease(v15);
    v15 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
LABEL_22:
    CFRelease(v10);
  }

  return v15;
}

void _ioSurfaceDeallocator_deallocateDirect(int a1, IOSurfaceRef buffer)
{
  IOSurfaceUnlock(buffer, 1u, 0);
  if (buffer)
  {

    CFRelease(buffer);
  }
}

uint64_t JPEGDeviceInterface_supportsDecodeSize(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  pthread_once(&JPEGDeviceInterface_supportsAppleInterchangeFormats_once, _checkSupportsAppleInterchangeFormats);
  if (_supportsAppleInterchangeFormats)
  {
    return 1;
  }

  v10 = a4 > 7 && a5 > 7;
  v12 = a4 > 0x1F && a5 > 7;
  v14 = a4 > 7 && a5 > 7;
  if (a3 != 4)
  {
    v14 = 0;
  }

  if (a3 != 3)
  {
    v12 = v14;
  }

  if (a3 != 2)
  {
    v10 = v12;
  }

  v16 = a4 > 0xF && a5 > 0xF;
  v18 = a4 > 0xF && a5 > 7;
  if (a3 != 1)
  {
    v18 = 0;
  }

  if (a3)
  {
    v16 = v18;
  }

  if (a3 <= 1)
  {
    return v16;
  }

  else
  {
    return v10;
  }
}

uint64_t CMPhotoSmallestNumGreaterThanAndDivisibleBy(uint64_t result, uint64_t a2)
{
  if (a2 + result != (a2 + result) / a2 * a2)
  {
    return (a2 + result) / a2 * a2;
  }

  return result;
}

uint64_t CMPhotoAlignValue(unint64_t a1, unint64_t a2)
{
  if (a1 % a2)
  {
    v2 = a2 - a1 % a2;
  }

  else
  {
    v2 = 0;
  }

  return v2 + a1;
}

uint64_t _createImageSurfacePropertiesAndName(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8, unsigned __int8 a9, unint64_t *a10, unint64_t a11)
{
  if (!(a2 >> 31) && !(a3 >> 31))
  {
    v11 = a10;
    v12 = 4294950306;
    if (!a10)
    {
      return v12;
    }

    v13 = a11;
    if (!a11)
    {
      return v12;
    }

    v14 = a1;
    v15 = a4 | a5 ? a4 : 2;
    v16 = !a4 || a5 == 0;
    v17 = v16;
    if (a4 | a5 && v17)
    {
      return v12;
    }

    v18 = MEMORY[0x1E695E480];
    if (a6)
    {
      v19 = a6;
    }

    else
    {
      v19 = 16;
    }

    v12 = a3;
    if (a1 <= 0x20 && ((1 << a1) & 0x101010000) != 0)
    {
      goto LABEL_315;
    }

    if ((a1 - 1278226488) <= 0x30 && ((1 << (a1 - 56)) & 0x1400000000001) != 0)
    {
      goto LABEL_289;
    }

    if ((a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
    {
      goto LABEL_289;
    }

    v20 = a1 == 643970664 || a1 == 643970675;
    v21 = v20 || a1 == 644375667;
    v22 = v21 || a1 == 645161784;
    v23 = v22 || a1 == 645423928;
    v24 = v23 || a1 == 825306677;
    if (v24 || a1 == 825437747)
    {
      goto LABEL_289;
    }

    if (a1 == 843264056 || a1 == 843264310)
    {
      goto LABEL_315;
    }

    if (a1 != 875704422 && a1 != 875704438 && a1 != 875704934 && a1 != 875704950 && a1 != 875836518 && a1 != 875836534)
    {
      switch(a1)
      {
        case 0x42475241:
        case 0x4C353635:
        case 0x4C413038:
        case 0x4C413136:
        case 0x52474241:
        case 0x52476641:
        case 0x52476841:
        case 0x62343872:
          goto LABEL_315;
        case 0x62363468:
        case 0x62676338:
        case 0x62676734:
          goto LABEL_289;
        case 0x62677032:
          goto LABEL_249;
        case 0x62703136:
          goto LABEL_289;
        case 0x62747032:
          goto LABEL_249;
      }

      v41 = a1 == 1651847472 || a1 == 1651925816;
      v42 = v41 || a1 == 1651926376;
      v43 = v42 || a1 == 1652056888;
      v44 = v43 || a1 == 1717855600;
      v45 = v44 || a1 == 1717856627;
      v46 = v45 || a1 == 1734501176;
      v47 = v46 || a1 == 1734505012;
      v48 = v47 || a1 == 1735549492;
      v49 = v48 || a1 == 1735549752;
      v50 = v49 || a1 == 1751410032;
      if (v50 || a1 == 1751411059)
      {
        goto LABEL_289;
      }

      if (a1 != 1751527984)
      {
        switch(a1)
        {
          case 0x6C313072:
          case 0x6C343872:
          case 0x6C363472:
            goto LABEL_315;
          case 0x70343230:
          case 0x70343232:
          case 0x70343434:
          case 0x70663230:
          case 0x70663232:
          case 0x70663434:
            goto LABEL_249;
          case 0x72673366:
            goto LABEL_315;
          case 0x79757673:
LABEL_342:
            v12 = a8;
            v207 = a11;
            v15 = CMPhotoPaddedSizeFromImageSizeAndBlockSize(a2, a3, v15);
            v148 = v147;
            BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v14);
            v150 = CMPhotoAlignValue(v15 * BytesPerPixelForPixelFormat, v19);
            if (v150 >> 31)
            {
              goto LABEL_429;
            }

            v151 = v150;
            v152 = v150 * v148;
            if (a7)
            {
              v152 = CMPhotoAlignValue(v150 * v148, a7);
            }

            if (v152 >> 31)
            {
LABEL_429:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_9();
              FigSignalErrorAtGM();
              OUTLINED_FUNCTION_6_21();
              v116 = @"CMPhoto YUV";
              goto LABEL_404;
            }

            Mutable = CFDictionaryCreateMutable(*v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              v154 = Mutable;
              CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E696CE60], 0);
              CMPhotoCFDictionarySetSize(v154, *MEMORY[0x1E696D130], a2);
              CMPhotoCFDictionarySetSize(v154, *MEMORY[0x1E696CF58], a3);
              CMPhotoCFDictionarySetInt32(v154, *MEMORY[0x1E696CFC0], v14);
              CMPhotoCFDictionarySetSize(v154, *MEMORY[0x1E696CE58], v151);
              v156 = v15 - a2;
              v155 = v15 > a2;
              v15 = v154;
              if (v155)
              {
                CMPhotoCFDictionarySetSize(v154, *MEMORY[0x1E696D070], v156);
              }

              v11 = a10;
              if (v148 > a3)
              {
                CMPhotoCFDictionarySetSize(v154, *MEMORY[0x1E696D068], v148 - a3);
              }

              CMPhotoCFDictionarySetSize(v154, *MEMORY[0x1E696CE30], v152);
              CMPhotoCFDictionarySetInt(v154, *MEMORY[0x1E696CF70], v12);
              CMPhotoCFDictionarySetBoolean(v154, *MEMORY[0x1E696D0D8], a9);
              v12 = 0;
              v116 = @"CMPhoto YUV";
              goto LABEL_310;
            }

            v15 = 0;
            v116 = @"CMPhoto YUV";
            goto LABEL_403;
        }

        if (a1 != 1919378232 && a1 != 1919379252)
        {
          if (a1 != 1919381552)
          {
            if (a1 != 1932996149)
            {
              if (a1 != 1936077360 && a1 != 1936077362 && a1 != 1936077876 && a1 != 1937125936 && a1 != 1937125938 && a1 != 1937126452 && a1 != 1952854576 && a1 != 1952854578 && a1 != 1952855092 && a1 != 1953903152 && a1 != 1953903154 && a1 != 1953903668 && a1 != 2016686640 && a1 != 2016686642 && a1 != 2016687156 && a1 != 2019963440 && a1 != 2019963442 && a1 != 2019963956)
              {
                if (a1 != 2037741158)
                {
                  if (a1 != 1919365992)
                  {
                    return 4294950301;
                  }

LABEL_315:
                  v11 = a8;
                  v217 = 0;
                  if (!CMPhotoPixelFormatIsSubsampled(a1, 0, 0, 0, &v217))
                  {
                    v12 = a3;
                    v132 = CMPhotoPaddedSizeFromImageSizeAndBlockSize(a2, a3, v15);
                    v134 = v133;
                    v211 = v132;
                    v206 = CMPhotoGetBytesPerPixelForPixelFormat(v14);
                    v135 = CMPhotoAlignValue(v132 * v206, v19);
                    if (!(v135 >> 31))
                    {
                      v136 = v135;
                      v137 = v135 * v134;
                      if (a7)
                      {
                        v137 = CMPhotoAlignValue(v135 * v134, a7);
                      }

                      if (!(v137 >> 31))
                      {
                        v202 = v136;
                        v138 = v217 * v137;
                        if (!((v217 * v137) >> 31))
                        {
                          allocatorb = *v18;
                          v139 = CFDictionaryCreateMutable(*v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                          v15 = v139;
                          if (v139)
                          {
                            CMPhotoCFDictionarySetInt(v139, *MEMORY[0x1E696CE60], 0);
                            CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E696D130], a2);
                            CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E696CF58], a3);
                            CMPhotoCFDictionarySetInt32(v15, *MEMORY[0x1E696CFC0], v14);
                            CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E696CE30], v138);
                            CMPhotoCFDictionarySetInt(v15, *MEMORY[0x1E696CF70], v11);
                            CMPhotoCFDictionarySetBoolean(v15, *MEMORY[0x1E696D0D8], a9);
                            if (v217 == 3)
                            {
                              v198 = v134;
                              theDicta = v15;
                              v199 = CFArrayCreateMutable(allocatorb, 3, MEMORY[0x1E695E9C0]);
                              if (v199)
                              {
                                if (!v217)
                                {
LABEL_338:
                                  v15 = theDicta;
                                  CFDictionarySetValue(theDicta, *MEMORY[0x1E696D0A8], v199);
                                  CFRelease(v199);
                                  v12 = 0;
                                  OUTLINED_FUNCTION_9_19();
LABEL_341:
                                  v116 = @"CMPhoto RGB";
                                  goto LABEL_392;
                                }

                                v140 = 0;
                                v141 = 0;
                                v197 = *MEMORY[0x1E696D0C8];
                                v11 = *MEMORY[0x1E696D090];
                                v142 = *MEMORY[0x1E696CFE0];
                                v143 = *MEMORY[0x1E696D0B0];
                                v13 = *MEMORY[0x1E696CFE8];
                                theArrayb = *MEMORY[0x1E696D070];
                                v188 = *MEMORY[0x1E696D068];
                                v186 = v134 - a3;
                                v144 = *MEMORY[0x1E696D0B8];
                                while (1)
                                {
                                  v145 = CFDictionaryCreateMutable(allocatorb, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                  if (!v145)
                                  {
                                    break;
                                  }

                                  v146 = v145;
                                  CMPhotoCFDictionarySetSize(v145, v197, a2);
                                  CMPhotoCFDictionarySetSize(v146, v11, a3);
                                  CMPhotoCFDictionarySetSize(v146, v142, v206);
                                  CMPhotoCFDictionarySetSize(v146, v143, v140);
                                  CMPhotoCFDictionarySetSize(v146, v13, v202);
                                  if (v211 > a2)
                                  {
                                    CMPhotoCFDictionarySetSize(v146, theArrayb, v211 - a2);
                                  }

                                  if (v198 > a3)
                                  {
                                    CMPhotoCFDictionarySetSize(v146, v188, v186);
                                  }

                                  CMPhotoCFDictionarySetSize(v146, v144, v137);
                                  CFArrayAppendValue(v199, v146);
                                  CFRelease(v146);
                                  ++v141;
                                  v140 += v137;
                                  if (v217 <= v141)
                                  {
                                    goto LABEL_338;
                                  }
                                }

                                CFRelease(v199);
                              }

                              v12 = 4294950305;
                              OUTLINED_FUNCTION_9_19();
                              v15 = theDicta;
                            }

                            else
                            {
                              v11 = a10;
                              if (v217 == 1)
                              {
                                CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E696CE58], v202);
                                CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E696CE50], v206);
                                CMPhotoCFDictionarySetInt(v15, *MEMORY[0x1E696CFA8], 0);
                                if (v211 > a2)
                                {
                                  CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E696D070], v211 - a2);
                                }

                                if (v134 > a3)
                                {
                                  CMPhotoCFDictionarySetSize(v15, *MEMORY[0x1E696D068], v134 - a3);
                                }

                                v12 = 0;
                                goto LABEL_341;
                              }

                              fig_log_get_emitter();
                              OUTLINED_FUNCTION_9();
                              v12 = FigSignalErrorAtGM();
                            }

                            CFRelease(v15);
                            v15 = 0;
                            goto LABEL_341;
                          }

                          v12 = 4294950305;
LABEL_418:
                          v11 = a10;
                          goto LABEL_341;
                        }
                      }
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_9();
                    FigSignalErrorAtGM();
                  }

                  OUTLINED_FUNCTION_6_21();
                  goto LABEL_418;
                }

                goto LABEL_342;
              }

              goto LABEL_212;
            }

            goto LABEL_289;
          }

LABEL_249:
          v209 = a8;
          v88 = OUTLINED_FUNCTION_2_28();
          v89 = v88;
          v12 = v90;
          v91 = v14 == 1650946098 || v14 == 1651798066;
          v207 = a11;
          if (v91)
          {
            v159 = CMPhotoAlignValue((v88 * 1.5), 0x60uLL);
            v13 = CMPhotoAlignValue(v159, v19);
          }

          else
          {
            switch(v14)
            {
              case 1882468912:
LABEL_260:
                OUTLINED_FUNCTION_3_26();
                v195 = v92;
                OUTLINED_FUNCTION_10_18();
                v201 = v93;
                v204 = v94;
                OUTLINED_FUNCTION_5_21();
                v95 = OUTLINED_FUNCTION_13_15();
                v97 = 1;
                theArray = v89;
                goto LABEL_360;
              case 1882468914:
                goto LABEL_353;
              case 1882469428:
LABEL_354:
                theArray = 2 * v88;
                v158 = (v88 + 2) / 3;
                v13 = CMPhotoAlignValue((4 * v158) | 3, v19);
                v95 = CMPhotoAlignValue((8 * v158) | 7, v19);
                v97 = 1;
                v201 = v12;
                v204 = a3;
                v195 = a2;
                goto LABEL_360;
            }

            if (v14 != 1919381552)
            {
              if (v14 != 1885745714)
              {
                if (v14 != 1885746228)
                {
                  if (v14 != 1885745712)
                  {
                    v15 = 0;
                    v116 = @"CMPhoto Packed";
                    goto LABEL_395;
                  }

                  goto LABEL_260;
                }

                goto LABEL_354;
              }

LABEL_353:
              OUTLINED_FUNCTION_3_26();
              v195 = v157;
              OUTLINED_FUNCTION_5_21();
              v95 = OUTLINED_FUNCTION_13_15();
              v97 = 1;
              v201 = v12;
              theArray = v89;
              v204 = a3;
              goto LABEL_360;
            }

            v13 = CMPhotoAlignValue(5 * ((v88 + 3) >> 2), 0x140uLL);
            if (v13 != CMPhotoAlignValue(v13, v19))
            {
              goto LABEL_420;
            }
          }

          v95 = 0;
          v201 = 0;
          v204 = 0;
          theArray = 0;
          v195 = 0;
          v97 = 0;
LABEL_360:
          if (!(v13 >> 31))
          {
            v191 = v95;
            v160 = *v18;
            v161 = OUTLINED_FUNCTION_7_21(v95, v96, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v161)
            {
              v15 = 0;
              v116 = @"CMPhoto Packed";
              goto LABEL_422;
            }

            v162 = v161;
            CMPhotoCFDictionarySetInt(v161, *MEMORY[0x1E696CE60], 0);
            CMPhotoCFDictionarySetSize(v162, *MEMORY[0x1E696D130], a2);
            v163 = a3;
            CMPhotoCFDictionarySetSize(v162, *MEMORY[0x1E696CF58], a3);
            theDictb = v162;
            CMPhotoCFDictionarySetInt32(v162, *MEMORY[0x1E696CFC0], v14);
            if (!v97)
            {
              v178 = v13 * a3;
              if (a7)
              {
                v178 = CMPhotoAlignValue(v13 * a3, a7);
              }

              v176 = a9;
              v179 = v162;
              CMPhotoCFDictionarySetSize(v162, *MEMORY[0x1E696CE58], v13);
              if (v89 > a2)
              {
                CMPhotoCFDictionarySetSize(v162, *MEMORY[0x1E696D070], v89 - a2);
              }

              v13 = a11;
              if (v12 > a3)
              {
                CMPhotoCFDictionarySetSize(v162, *MEMORY[0x1E696D068], v12 - a3);
              }

              v166 = 0;
              v163 = 0;
LABEL_387:
              CMPhotoCFDictionarySetSize(v179, *MEMORY[0x1E696CE30], v178);
              CMPhotoCFDictionarySetInt(v179, *MEMORY[0x1E696CF70], v209);
              CMPhotoCFDictionarySetBoolean(v179, *MEMORY[0x1E696D0D8], v176);
              v12 = 0;
              if (!v163)
              {
LABEL_389:
                if (v166)
                {
                  CFRelease(v166);
                }

                v116 = @"CMPhoto Packed";
                v15 = theDictb;
                goto LABEL_392;
              }

LABEL_388:
              CFRelease(v163);
              goto LABEL_389;
            }

            v164 = CFArrayCreateMutable(v160, 2, MEMORY[0x1E695E9C0]);
            v166 = v164;
            if (!v164)
            {
              OUTLINED_FUNCTION_8_18();
              goto LABEL_427;
            }

            v167 = OUTLINED_FUNCTION_7_21(v164, v165, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v163 = v167;
            if (v167)
            {
              v189 = *MEMORY[0x1E696D0C8];
              CMPhotoCFDictionarySetSize(v167, *MEMORY[0x1E696D0C8], a2);
              v168 = *MEMORY[0x1E696D090];
              CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696D090], a3);
              v169 = *MEMORY[0x1E696D0B0];
              CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696D0B0], 0);
              v170 = *MEMORY[0x1E696CFE8];
              CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696CFE8], v13);
              if (v89 > a2)
              {
                CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696D070], v89 - a2);
              }

              if (v12 > a3)
              {
                CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696D068], v12 - a3);
              }

              v171 = v13 * v12;
              if (a7)
              {
                v171 = CMPhotoAlignValue(v171, a7);
              }

              if (v171 >> 31)
              {
LABEL_425:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_9();
                v12 = FigSignalErrorAtGM();
                goto LABEL_426;
              }

              v172 = *MEMORY[0x1E696D0B8];
              CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696D0B8], v171);
              CFArrayAppendValue(v166, v163);
              CFRelease(v163);
              v175 = OUTLINED_FUNCTION_7_21(v173, v174, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v163 = v175;
              if (v175)
              {
                CMPhotoCFDictionarySetSize(v175, v189, v195);
                CMPhotoCFDictionarySetSize(v163, v168, v204);
                CMPhotoCFDictionarySetSize(v163, v169, v171);
                CMPhotoCFDictionarySetSize(v163, v170, v191);
                v176 = a9;
                if (theArray >> 1 > v195)
                {
                  CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696D070], (theArray >> 1) - v195);
                }

                v11 = a10;
                if (v201 > v204)
                {
                  CMPhotoCFDictionarySetSize(v163, *MEMORY[0x1E696D068], v201 - v204);
                }

                v177 = v201 * v191;
                if (!((v201 * v191) >> 31))
                {
                  CMPhotoCFDictionarySetSize(v163, v172, v177);
                  v178 = v171 + v177;
                  if (!(v178 >> 31))
                  {
                    CFArrayAppendValue(v166, v163);
                    v179 = theDictb;
                    CFDictionarySetValue(theDictb, *MEMORY[0x1E696D0A8], v166);
                    v13 = a11;
                    goto LABEL_387;
                  }
                }

                goto LABEL_425;
              }
            }

            v12 = 4294950305;
LABEL_426:
            v11 = a10;
LABEL_427:
            v13 = a11;
            CFRelease(theDictb);
            theDictb = 0;
            if (!v163)
            {
              goto LABEL_389;
            }

            goto LABEL_388;
          }

LABEL_420:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9();
          FigSignalErrorAtGM();
          OUTLINED_FUNCTION_6_21();
          v116 = @"CMPhoto Packed";
          goto LABEL_310;
        }

LABEL_289:
        v210 = a8;
        v207 = a11;
        v12 = OUTLINED_FUNCTION_2_28();
        v118 = v117;
        v119 = CMPhotoGetBytesPerPixelForPixelFormat(v14);
        SurfaceElementWidthForPixelFormat = CMPhotoGetSurfaceElementWidthForPixelFormat(v14);
        v15 = CMPhotoGetSurfaceElementWidthForPixelFormat(v14);
        v121 = CMPhotoAlignValue(v12 * v119, v19);
        v122 = v121;
        v123 = v121 * v118;
        if (a7)
        {
          v123 = CMPhotoAlignValue(v121 * v118, a7);
        }

        if (v123 >> 31 || (allocatora = v12, v12 = v122 * SurfaceElementWidthForPixelFormat, (v122 * SurfaceElementWidthForPixelFormat) >> 31))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_0();
          FigSignalErrorAtGM();
          OUTLINED_FUNCTION_6_21();
          v116 = @"CMPhoto Luma";
LABEL_404:
          v11 = a10;
LABEL_310:
          v13 = v207;
          goto LABEL_392;
        }

        v124 = *v18;
        v125 = CFDictionaryCreateMutable(v124, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v125)
        {
          v15 = 0;
          v116 = @"CMPhoto Luma";
LABEL_403:
          v12 = 4294950305;
          goto LABEL_404;
        }

        v126 = v125;
        v205 = v118;
        v127 = SurfaceElementWidthForPixelFormat * v119 * v15;
        CMPhotoCFDictionarySetInt(v125, *MEMORY[0x1E696CE60], 0);
        CMPhotoCFDictionarySetSize(v126, *MEMORY[0x1E696D130], a2);
        CMPhotoCFDictionarySetSize(v126, *MEMORY[0x1E696CF58], a3);
        CMPhotoCFDictionarySetSize(v126, *MEMORY[0x1E696CE50], v127);
        CMPhotoCFDictionarySetSize(v126, *MEMORY[0x1E696CE58], v12);
        CMPhotoCFDictionarySetInt32(v126, *MEMORY[0x1E696CFC0], v14);
        if (SurfaceElementWidthForPixelFormat >= 2)
        {
          CMPhotoCFDictionarySetSize(v126, *MEMORY[0x1E696CF10], SurfaceElementWidthForPixelFormat);
        }

        if (v15 >= 2)
        {
          CMPhotoCFDictionarySetSize(v126, *MEMORY[0x1E696CF08], v15);
        }

        v128 = CFArrayCreateMutable(v124, 1, MEMORY[0x1E695E9C0]);
        v11 = a10;
        if (v128)
        {
          v129 = v128;
          v130 = CFDictionaryCreateMutable(v124, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v130)
          {
            v131 = v130;
            CMPhotoCFDictionarySetSize(v130, *MEMORY[0x1E696D0C8], a2);
            CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696D090], a3);
            CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696CFE0], v127);
            CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696D0B0], 0);
            CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696CFE8], v12);
            if (allocatora > a2)
            {
              CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696D070], allocatora - a2);
            }

            if (v205 > a3)
            {
              CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696D068], v205 - a3);
            }

            if (SurfaceElementWidthForPixelFormat >= 2)
            {
              CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696D060], SurfaceElementWidthForPixelFormat);
            }

            if (v15 >= 2)
            {
              CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696D058], v15);
            }

            CMPhotoCFDictionarySetSize(v131, *MEMORY[0x1E696D0B8], v123);
            CFArrayAppendValue(v129, v131);
            CFDictionarySetValue(v126, *MEMORY[0x1E696D0A8], v129);
            CMPhotoCFDictionarySetSize(v126, *MEMORY[0x1E696CE30], v123);
            CMPhotoCFDictionarySetInt(v126, *MEMORY[0x1E696CF70], v210);
            CMPhotoCFDictionarySetBoolean(v126, *MEMORY[0x1E696D0D8], a9);
            v12 = 0;
            v15 = v126;
          }

          else
          {
            OUTLINED_FUNCTION_8_18();
            v131 = v126;
          }

          CFRelease(v131);
          CFRelease(v129);
          v116 = @"CMPhoto Luma";
          goto LABEL_310;
        }

        CFRelease(v126);
        v15 = 0;
        v116 = @"CMPhoto Luma";
LABEL_422:
        v12 = 4294950305;
        goto LABEL_310;
      }
    }

LABEL_212:
    v208 = a8;
    v77 = OUTLINED_FUNCTION_2_28();
    v203 = v78;
    v79 = CMPhotoGetBytesPerPixelForPixelFormat(v14);
    v200 = CMPhotoAlignValue(v77 * v79, v19);
    if (v200 >> 31)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_6_21();
      goto LABEL_285;
    }

    v15 = v77;
    if (v14 == 875704422 || v14 == 875704438)
    {
      goto LABEL_248;
    }

    if (v14 == 875704934 || v14 == 875704950)
    {
      goto LABEL_262;
    }

    if (v14 != 875836518 && v14 != 875836534)
    {
      if (v14 == 1751527984 || v14 == 1936077360)
      {
        goto LABEL_248;
      }

      if (v14 == 1936077362)
      {
        goto LABEL_262;
      }

      if (v14 != 1936077876)
      {
        switch(v14)
        {
          case 1937125936:
            goto LABEL_248;
          case 1937125938:
            goto LABEL_262;
          case 1937126452:
            goto LABEL_261;
          case 1952854576:
            goto LABEL_248;
          case 1952854578:
            goto LABEL_262;
          case 1952855092:
            goto LABEL_261;
          case 1953903152:
            goto LABEL_248;
          case 1953903154:
            goto LABEL_262;
          case 1953903668:
            goto LABEL_261;
          case 2016686640:
LABEL_248:
            OUTLINED_FUNCTION_10_18();
            v185 = v86;
            v187 = v85;
            v87 = (v203 + 1) >> 1;
LABEL_263:
            v190 = v87;
LABEL_264:
            theDict = CMPhotoAlignValue(v15 * v79, v19);
            v99 = *v18;
            v101 = OUTLINED_FUNCTION_7_21(theDict, v100, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v101)
            {
              v102 = v101;
              CMPhotoCFDictionarySetInt(v101, *MEMORY[0x1E696CE60], 0);
              CMPhotoCFDictionarySetSize(v102, *MEMORY[0x1E696D130], a2);
              CMPhotoCFDictionarySetSize(v102, *MEMORY[0x1E696CF58], a3);
              CMPhotoCFDictionarySetInt32(v102, *MEMORY[0x1E696CFC0], v14);
              v103 = CFArrayCreateMutable(v99, 2, MEMORY[0x1E695E9C0]);
              if (v103)
              {
                v105 = v103;
                v196 = v79;
                v106 = OUTLINED_FUNCTION_7_21(v103, v104, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v106)
                {
                  OUTLINED_FUNCTION_8_18();
                  goto LABEL_284;
                }

                v107 = v106;
                theArraya = v105;
                v181 = v15;
                v108 = *MEMORY[0x1E696D0C8];
                CMPhotoCFDictionarySetSize(v106, *MEMORY[0x1E696D0C8], a2);
                v15 = *MEMORY[0x1E696D090];
                CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696D090], a3);
                v11 = *MEMORY[0x1E696CFE0];
                CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696CFE0], v196);
                v12 = *MEMORY[0x1E696D0B0];
                CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696D0B0], 0);
                v13 = *MEMORY[0x1E696CFE8];
                CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696CFE8], v200);
                if (v77 > a2)
                {
                  CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696D070], v77 - a2);
                }

                if (v203 > a3)
                {
                  CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696D068], v203 - a3);
                }

                v109 = v200 * v203;
                if (a7)
                {
                  v109 = CMPhotoAlignValue(v200 * v203, a7);
                }

                if (v109 >> 31)
                {
                  OUTLINED_FUNCTION_9_19();
                }

                else
                {
                  v110 = *MEMORY[0x1E696D0B8];
                  CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696D0B8], v109);
                  CFArrayAppendValue(theArraya, v107);
                  CFRelease(v107);
                  v113 = OUTLINED_FUNCTION_7_21(v111, v112, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!v113)
                  {
                    OUTLINED_FUNCTION_8_18();
                    OUTLINED_FUNCTION_9_19();
LABEL_415:
                    v105 = theArraya;
                    goto LABEL_284;
                  }

                  v107 = v113;
                  CMPhotoCFDictionarySetSize(v113, v108, v185);
                  CMPhotoCFDictionarySetSize(v107, v15, v187);
                  CMPhotoCFDictionarySetSize(v107, v11, 2 * v196);
                  CMPhotoCFDictionarySetSize(v107, v12, v109);
                  CMPhotoCFDictionarySetSize(v107, v13, theDict);
                  if (v181 >> 1 > v185)
                  {
                    CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696D070], (v181 >> 1) - v185);
                  }

                  if (v190 > v187)
                  {
                    CMPhotoCFDictionarySetSize(v107, *MEMORY[0x1E696D068], v190 - v187);
                  }

                  v114 = theDict * v190;
                  v11 = a10;
                  if (a7)
                  {
                    v114 = CMPhotoAlignValue(v114, a7);
                  }

                  if (!(v114 >> 31))
                  {
                    CMPhotoCFDictionarySetSize(v107, v110, v114);
                    v115 = v114 + v109;
                    if (!(v115 >> 31))
                    {
                      v105 = theArraya;
                      CFArrayAppendValue(theArraya, v107);
                      CFDictionarySetValue(v102, *MEMORY[0x1E696D0A8], theArraya);
                      CMPhotoCFDictionarySetSize(v102, *MEMORY[0x1E696CE30], v115);
                      CMPhotoCFDictionarySetInt(v102, *MEMORY[0x1E696CF70], v208);
                      CMPhotoCFDictionarySetBoolean(v102, *MEMORY[0x1E696D0D8], a9);
                      v12 = 0;
                      v15 = v102;
                      v102 = v107;
                      v13 = a11;
LABEL_284:
                      CFRelease(v102);
                      CFRelease(v105);
LABEL_285:
                      v116 = @"CMPhoto Bi-planar";
LABEL_392:
                      *v11 = v15;
                      *v13 = CFRetain(v116);
                      return v12;
                    }
                  }

                  v13 = a11;
                }

                fig_log_get_emitter();
                v12 = FigSignalErrorAtGM();
                CFRelease(v102);
                v15 = 0;
                v102 = v107;
                goto LABEL_415;
              }

              CFRelease(v102);
            }

            v15 = 0;
            v116 = @"CMPhoto Bi-planar";
            v12 = 4294950305;
            goto LABEL_392;
          case 2016686642:
            goto LABEL_262;
        }

        if (v14 != 2016687156 && v14 != 2019963956)
        {
          if (v14 != 2019963442)
          {
            if (v14 == 2019963440)
            {
              goto LABEL_248;
            }

            v15 = 0;
            v116 = @"CMPhoto Bi-planar";
LABEL_395:
            v12 = 4294950306;
            goto LABEL_392;
          }

LABEL_262:
          OUTLINED_FUNCTION_3_26();
          v185 = v98;
          v187 = a3;
          v87 = v203;
          goto LABEL_263;
        }
      }
    }

LABEL_261:
    v15 = 2 * v77;
    v187 = a3;
    v190 = v203;
    v185 = a2;
    goto LABEL_264;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _clearTimerRecord(uint64_t result)
{
  if (globalPool)
  {
    if (*globalPool)
    {
      v1 = result;
      result = FigSimpleMutexLock();
      if (!result)
      {
        v3.length = CFArrayGetCount(*(globalPool + 8 * v1 + 16));
        v3.location = 0;
        CFArrayApplyFunction(*(globalPool + 8 * v1 + 16), v3, _clearTimeRecordApplier, *(globalPool + 32));
        CFArrayRemoveAllValues(*(globalPool + 8 * v1 + 16));

        return FigSimpleMutexUnlock();
      }
    }
  }

  return result;
}

uint64_t _detectSourceIsMIAF(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_69();
  if (*(v4 + 160))
  {
    v5 = *(v3 + 161);
LABEL_11:
    v8 = 0;
    *v2 = v5;
    return v8;
  }

  if (!*(v3 + 48))
  {
    v5 = 0;
    *(v3 + 161) = 0;
    goto LABEL_10;
  }

  FigPictureCollectionGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 4294954514;
  }

  v6 = OUTLINED_FUNCTION_75_0();
  v8 = v7(v6);
  if (!v8)
  {
    v5 = FigCFEqual();
    *(v3 + 161) = v5;
LABEL_10:
    *(v3 + 160) = 1;
    goto LABEL_11;
  }

  return v8;
}

uint64_t _getDataRangeFromReader()
{
  OUTLINED_FUNCTION_69();
  v28 = 0;
  cf = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2(v1, &cf);
  if (v3)
  {
    goto LABEL_36;
  }

  v4 = cf;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
LABEL_30:
    v23 = 4294954514;
    goto LABEL_31;
  }

  v3 = v5(v4, &v28);
  if (!v3)
  {
    v6 = 0;
    v7 = -1;
    while (1)
    {
      v8 = v26;
      if (v26)
      {
        v26 = 0;
        free(v8);
      }

      v9 = v25;
      if (v25)
      {
        v25 = 0;
        free(v9);
      }

      v10 = v28;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v11)
      {
        goto LABEL_30;
      }

      v3 = v11(v10, &v27, &v26, &v25, 0, 0);
      if (v3)
      {
        break;
      }

      v12 = v27;
      if (v27)
      {
        if (v27 >= 1)
        {
          v14 = v25;
          v13 = v26;
          do
          {
            v16 = *v13++;
            v15 = v16;
            v18 = *v14++;
            v17 = v18;
            v19 = v18 + v15;
            if (v6 > v18 + v15)
            {
              v19 = v6;
            }

            if (__CFADD__(v17, v15))
            {
              v6 = -1;
            }

            else
            {
              v6 = v19;
            }

            if (v7 >= v15)
            {
              v7 = v15;
            }

            --v12;
          }

          while (v12);
        }
      }

      else
      {
        OUTLINED_FUNCTION_70();
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
      {
        goto LABEL_30;
      }

      v20 = OUTLINED_FUNCTION_17();
      v22 = v21(v20);
      if (v22)
      {
        v23 = v22;
        if (v22 == -17171)
        {
          v23 = 0;
          if (v0)
          {
            *v0 = v7;
            v0[1] = v6 - v7;
          }
        }

        goto LABEL_31;
      }
    }
  }

LABEL_36:
  v23 = v3;
LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  free(v26);
  free(v25);
  return v23;
}

uint64_t CMPhotoGetInfoFromFormatDescription(const opaqueCMFormatDescription *a1, opaqueCMSampleBuffer *a2, int a3, FourCharCode *a4, _BYTE *a5, unint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, void *a10, void *a11, void *a12)
{
  HIDWORD(v125) = a3;
  HIDWORD(v134) = 0;
  WORD1(v134) = -1;
  v133 = -1;
  v131 = 0;
  theBuffer = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v129 = a7;
  v130 = a8;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v18 = MediaSubType;
  if (a4)
  {
    *a4 = MediaSubType;
  }

  v136 = 0;
  v137 = 0;
  v135 = 0;
  sbuf = a2;
  if (!a10 && !a11 && !a12)
  {
    v41 = 0;
    v43 = v129;
    v45 = v130;
    goto LABEL_69;
  }

  v127 = a5;
  v128 = a6;
  Extensions = CMFormatDescriptionGetExtensions(a1);
  v20 = Extensions;
  if (Extensions)
  {
    Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965D88]);
    StringForIntegerCodePoint = CFDictionaryGetValue(v20, *MEMORY[0x1E6965F30]);
    MatrixFromPixelBufferAttachments = CMPhotoGetMatrixFromPixelBufferAttachments(v20);
    v20 = MatrixFromPixelBufferAttachments;
    v24 = Value != 0;
    if (Value && StringForIntegerCodePoint && MatrixFromPixelBufferAttachments)
    {
      goto LABEL_52;
    }

    HIDWORD(v124) = StringForIntegerCodePoint != 0;
    LODWORD(v125) = MatrixFromPixelBufferAttachments != 0;
  }

  else
  {
    HIDWORD(v124) = 0;
    LODWORD(v125) = 0;
    v24 = 0;
    StringForIntegerCodePoint = 0;
    Value = 0;
  }

  Extension = CMFormatDescriptionGetMediaSubType(a1);
  if (Extension != 1735551332)
  {
    goto LABEL_26;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    goto LABEL_26;
  }

  v33 = Extension;
  Extension = CFDictionaryGetValue(Extension, @"hvcC");
  if (Extension)
  {
    v34 = 1752589105;
LABEL_21:
    v35 = v34;
    goto LABEL_27;
  }

  Extension = CFDictionaryGetValue(v33, @"avcC");
  if (Extension)
  {
    v34 = 1635148593;
    goto LABEL_21;
  }

  Extension = CFDictionaryGetValue(v33, @"slmC");
  if (Extension)
  {
    v34 = 1936484717;
    goto LABEL_21;
  }

  Extension = CFDictionaryGetValue(v33, @"av1C");
  if (Extension)
  {
    v34 = 1635135537;
    cf = Extension;
    v123 = CFGetTypeID(Extension);
    Extension = CFArrayGetTypeID();
    if (v123 == Extension)
    {
      goto LABEL_21;
    }

    v123 = CFGetTypeID(cf);
    Extension = CFDataGetTypeID();
    v35 = v18;
    if (v123 == Extension)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_26:
    v35 = v18;
  }

LABEL_27:
  if (v35 == 1635135537)
  {
    v41 = 0;
    if (sbuf)
    {
      if (HIDWORD(v125))
      {
        v41 = OUTLINED_FUNCTION_6_8(Extension, v26, v27, v28, v29, v30, v31, v32, blockBufferOut, v121, cf, v123, v124, v125, sbuf, v127, v128, v129, v130, v131, theBuffer, v133, v134, v135, v136, v137, colorPrimariesCodePoint, v139, v140, v141);
        if (!v41)
        {
          if (v24)
          {
            Value = 0;
          }

          else
          {
            Value = CVColorPrimariesGetStringForIntegerCodePoint(SDWORD1(colorPrimariesCodePoint));
          }

          if ((v124 & 0x100000000) != 0)
          {
            StringForIntegerCodePoint = 0;
          }

          else
          {
            StringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint(SDWORD2(colorPrimariesCodePoint));
          }

          if (v125)
          {
            v20 = 0;
          }

          else
          {
            v20 = CMPhotoCVYCbCrMatrixGetStringForIntegerCodePoint(SHIDWORD(colorPrimariesCodePoint));
          }
        }
      }
    }

    goto LABEL_53;
  }

  v36 = v35 == 1635148593 || v35 == 1936484717;
  if (v36 || v35 == 1752589105)
  {
    if (v24)
    {
      v38 = 0;
    }

    else
    {
      v38 = &v137;
    }

    if (HIDWORD(v124))
    {
      v39 = 0;
    }

    else
    {
      v39 = &v136;
    }

    if (v125)
    {
      v40 = 0;
    }

    else
    {
      v40 = &v135;
    }

    CMPhotoCopyTripletsFromVUIInsideFormatDescription(a1, v38, v39, v40);
    v41 = 0;
    if (v137)
    {
      Value = v137;
    }

    if (v136)
    {
      StringForIntegerCodePoint = v136;
    }

    if (v135)
    {
      v20 = v135;
    }

    goto LABEL_53;
  }

LABEL_52:
  v41 = 0;
LABEL_53:
  a6 = v128;
  if (a10)
  {
    if (Value)
    {
      v42 = CFRetain(Value);
    }

    else
    {
      v42 = 0;
    }

    *a10 = v42;
  }

  v43 = v129;
  if (a11)
  {
    if (StringForIntegerCodePoint)
    {
      v44 = CFRetain(StringForIntegerCodePoint);
    }

    else
    {
      v44 = 0;
    }

    *a11 = v44;
  }

  if (a12)
  {
    v45 = v130;
    a5 = v127;
    if (v20)
    {
      v46 = CFRetain(v20);
    }

    else
    {
      v46 = 0;
    }

    *a12 = v46;
  }

  else
  {
    v45 = v130;
    a5 = v127;
  }

LABEL_69:
  if (v137)
  {
    CFRelease(v137);
  }

  if (v136)
  {
    CFRelease(v136);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  if (v41)
  {
    goto LABEL_183;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_5_9();
    if (!v36 && v18 != 1635148593)
    {
      OUTLINED_FUNCTION_10_10();
      if (v18 == v56)
      {
        ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = OUTLINED_FUNCTION_13_6(v48, v49, v50, v51, v52, v53, v54, v55, blockBufferOut, v121, cf, v123, v124, v125, sbuf, v127, v128, v129, v130, v131, theBuffer, v133, v134, v135, v136, v137, colorPrimariesCodePoint);
        if (ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
        {
          goto LABEL_199;
        }

        IsFullRange = CMPhotoPixelFormatIsFullRange(colorPrimariesCodePoint);
        goto LABEL_94;
      }

      OUTLINED_FUNCTION_9_9();
      if (v18 != v57)
      {
        goto LABEL_91;
      }
    }

    v58 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960038]);
    if (v58)
    {
      IsFullRange = CFBooleanGetValue(v58);
LABEL_94:
      *a5 = IsFullRange;
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_5_9();
    if (!v36)
    {
LABEL_91:
      IsFullRange = 1;
      goto LABEL_94;
    }

    IsFullRange = 1;
    if (!sbuf || !HIDWORD(v125))
    {
      goto LABEL_94;
    }

    ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = OUTLINED_FUNCTION_6_8(1, v60, v61, v62, v63, v64, v65, v66, blockBufferOut, v121, cf, v123, v124, v125, sbuf, v127, v128, v129, v130, v131, theBuffer, v133, v134, v135, v136, v137, colorPrimariesCodePoint, v139, v140, v141);
    *a5 = (ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord | colorPrimariesCodePoint) != 0;
    if (ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
    {
      goto LABEL_199;
    }
  }

LABEL_95:
  v68 = a6 | v43 | v45;
  v69 = v68 != 0;
  if (!v68 && a9 == 0)
  {
    goto LABEL_182;
  }

  OUTLINED_FUNCTION_5_9();
  if (v36)
  {
    LOBYTE(colorPrimariesCodePoint) = -1;
    LOBYTE(v137) = -1;
    v110 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
    if (!v110)
    {
      goto LABEL_144;
    }

    v111 = CFDictionaryGetValue(v110, @"av1C");
    if (!v111)
    {
      goto LABEL_144;
    }

    ValueAtIndex = v111;
    v113 = CFGetTypeID(v111);
    if (v113 == CFArrayGetTypeID())
    {
      v114 = OUTLINED_FUNCTION_53();
      ValueAtIndex = CFArrayGetValueAtIndex(v114, v115);
      if (!ValueAtIndex)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v117 = CFGetTypeID(ValueAtIndex);
      if (v117 != CFDataGetTypeID())
      {
        goto LABEL_144;
      }
    }

    CFDataGetBytePtr(ValueAtIndex);
    CFDataGetLength(ValueAtIndex);
    ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord();
    if (ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
    {
      goto LABEL_199;
    }

    BYTE3(v134) = BYTE2(v134);
    v116 = colorPrimariesCodePoint;
    if (colorPrimariesCodePoint != 2)
    {
      if (colorPrimariesCodePoint == 1)
      {
        v133 = 0;
LABEL_147:
        if (v137)
        {
          switch(v137)
          {
            case 'd':
              v118 = 3;
              break;
            case 'o':
              v118 = 6;
              break;
            case 'n':
              v118 = 5;
              break;
            default:
              HIDWORD(v134) = 0;
              if (!a6)
              {
                goto LABEL_174;
              }

              goto LABEL_173;
          }
        }

        else
        {
          v118 = 1;
        }

        HIDWORD(v134) = v118;
        goto LABEL_172;
      }

      v116 = -1;
    }

    LODWORD(v133) = v116;
    HIDWORD(v133) = v116;
    goto LABEL_147;
  }

  if (v18 == 1635148593)
  {
    v137 = 0;
    *&colorPrimariesCodePoint = 0;
    v89 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
    if (!v89)
    {
      goto LABEL_144;
    }

    v90 = CFDictionaryGetValue(v89, @"avcC");
    if (!v90)
    {
      goto LABEL_144;
    }

    v91 = v90;
    CFDataGetBytePtr(v90);
    CFDataGetLength(v91);
    ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = FigH264Bridge_GetSPSFromAVCC();
    if (ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
    {
      goto LABEL_199;
    }

    if (v69)
    {
      OUTLINED_FUNCTION_4_9(ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord, v92, v93, v94, v95, v96, v97, v98, blockBufferOut, v121, cf, v123, v124, v125, sbuf, v127, v128, v129, v130, v131, theBuffer, v133, v134, v135, v136, v137, colorPrimariesCodePoint);
      FigH264Bridge_GetSPSChromaFormatAndBitDepths();
      switch(v136)
      {
        case 0:
          v99 = 6;
          goto LABEL_155;
        case 1:
          v99 = 5;
          goto LABEL_155;
        case 2:
          v99 = 3;
          goto LABEL_155;
        case 3:
          v99 = 1;
LABEL_155:
          HIDWORD(v134) = v99;
          break;
        default:
          HIDWORD(v134) = 0;
          break;
      }
    }

    if (a9 != 0)
    {
      FigH264Bridge_GetSPS_VUI_ChromaLocation();
      if (!a6)
      {
        goto LABEL_174;
      }

      goto LABEL_173;
    }

LABEL_172:
    if (!a6)
    {
LABEL_174:
      if (v43)
      {
        *v43 = BYTE3(v134);
      }

      if (v45)
      {
        *v45 = BYTE2(v134);
      }

LABEL_178:
      if (a9)
      {
        *a9 = HIDWORD(v133);
      }

      if (*(&a9 + 1))
      {
        v41 = 0;
        **(&a9 + 1) = v133;
        goto LABEL_183;
      }

LABEL_182:
      v41 = 0;
      goto LABEL_183;
    }

LABEL_173:
    *a6 = HIDWORD(v134);
    goto LABEL_174;
  }

  OUTLINED_FUNCTION_10_10();
  if (v18 == v78)
  {
    if (!v69)
    {
      goto LABEL_178;
    }

    ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = OUTLINED_FUNCTION_13_6(v70, v71, v72, v73, v74, v75, v76, v77, blockBufferOut, v121, cf, v123, v124, v125, sbuf, v127, v128, v129, v130, v131, theBuffer, v133, v134, v135, v136, v137, colorPrimariesCodePoint);
    if (!ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
    {
      HIDWORD(v134) = CMPhotoGetChromaSubsamplingFromPixelFormat(colorPrimariesCodePoint);
      BYTE3(v134) = CMPhotoGetBitDepthForPixelFormat(colorPrimariesCodePoint);
      BYTE2(v134) = BYTE3(v134);
      if (!a6)
      {
        goto LABEL_174;
      }

      goto LABEL_173;
    }

    goto LABEL_199;
  }

  if (v18 == 1785750887)
  {
    v133 = 0x100000001;
    if (sbuf)
    {
      DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
      if (!DataBuffer)
      {
        v41 = 4294950194;
        goto LABEL_183;
      }

      v101 = DataBuffer;
      v102 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
      if (v102)
      {
        v103 = CFDictionaryGetValue(v102, @"jpgC");
        if (v103)
        {
          v104 = v103;
          Length = CFDataGetLength(v103);
          if (Length)
          {
            v106 = Length;
            v107 = a6;
            v108 = *MEMORY[0x1E695E480];
            BytePtr = CFDataGetBytePtr(v104);
            ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = CMBlockBufferCreateWithMemoryBlock(v108, BytePtr, v106, *MEMORY[0x1E695E498], 0, 0, v106, 0, &theBuffer);
            if (ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
            {
              goto LABEL_199;
            }

            ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = CMBlockBufferAppendBufferReference(theBuffer, v101, 0, 0, 0);
            if (ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
            {
              goto LABEL_199;
            }

            a6 = v107;
            v101 = theBuffer;
          }
        }
      }

      ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = CMPhotoByteStreamCreateFromSource(v101, 0, 0, 0, &v131, 0);
      if (!ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
      {
        LODWORD(colorPrimariesCodePoint) = 0;
        CMPhotoGetImageInformationFromJFIFByteStream();
        if (!ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
        {
          BYTE3(v134) = colorPrimariesCodePoint;
          BYTE2(v134) = colorPrimariesCodePoint;
          if (!a6)
          {
            goto LABEL_174;
          }

          goto LABEL_173;
        }
      }

LABEL_199:
      v41 = ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord;
      goto LABEL_183;
    }

    goto LABEL_172;
  }

  OUTLINED_FUNCTION_9_9();
  if (v18 != v79)
  {
    goto LABEL_172;
  }

  v137 = 0;
  *&colorPrimariesCodePoint = 0;
  v80 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (v80 && CFDictionaryGetValue(v80, @"hvcC"))
  {
    ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord = FigHEVCBridge_GetHEVCParameterSetAtIndex();
    if (!ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord)
    {
      if (v69)
      {
        OUTLINED_FUNCTION_4_9(ChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord, v81, v82, v83, v84, v85, v86, v87, blockBufferOut, v121, cf, v123, v124, v125, sbuf, v127, v128, v129, v130, v131, theBuffer, v133, v134, v135, v136, v137, colorPrimariesCodePoint);
        FigHEVCBridge_GetSPSChromaFormatAndBitDepths();
        switch(v136)
        {
          case 0:
            v88 = 6;
            goto LABEL_162;
          case 1:
            v88 = 5;
            goto LABEL_162;
          case 2:
            v88 = 3;
            goto LABEL_162;
          case 3:
            v88 = 1;
LABEL_162:
            HIDWORD(v134) = v88;
            break;
          default:
            HIDWORD(v134) = 0;
            break;
        }
      }

      if (a9 != 0)
      {
        FigHEVCBridge_GetSPS_VUI_ChromaLocation();
        if (!a6)
        {
          goto LABEL_174;
        }

        goto LABEL_173;
      }

      goto LABEL_172;
    }

    goto LABEL_199;
  }

LABEL_144:
  v41 = 4294950303;
LABEL_183:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v131)
  {
    CFRelease(v131);
  }

  return v41;
}