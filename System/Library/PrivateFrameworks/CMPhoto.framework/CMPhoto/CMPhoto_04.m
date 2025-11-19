uint64_t CMPhotoCodecSessionPool_RecycleSession(uint64_t a1, int a2, const void *a3, int a4)
{
  if (a2)
  {
    v7 = 88;
  }

  else
  {
    v7 = 48;
  }

  v8 = 40;
  if (!a2)
  {
    v8 = 32;
  }

  v9 = *(a1 + v8);
  v10 = FigSimpleMutexLock();
  if (v10)
  {
    return v10;
  }

  v11 = (a1 + v7);
  v31 = 0;
  Value = CFDictionaryGetValue(v11[3], a3);
  if (!Value)
  {
    fig_log_get_emitter();
    IdleSessionSlots = FigSignalErrorAtGM();
    goto LABEL_34;
  }

  v13 = Value;
  v14 = *(a1 + 152);
  Value[1] = 0;
  Value[2] = 0;
  *(Value + 48) = 1;
  Value[7] = dispatch_time(0, v14);
  if (a4 || *(v13 + 49))
  {
    CodecSessionPool_DestroyGatewayForSession(v11, a3);
    Count = CFArrayGetCount(v11[1]);
    v16 = OUTLINED_FUNCTION_19_3(Count);
    CFArrayRemoveValueAtIndex(v11[1], v16);
    goto LABEL_11;
  }

  IdleSessionSlots = CodecSessionPool_GetIdleSessionSlots(v11, v13[4], 1, &v31);
  if (IdleSessionSlots)
  {
LABEL_34:
    v27 = IdleSessionSlots;
    goto LABEL_28;
  }

  CFArrayAppendValue(v31, a3);
LABEL_11:
  v17 = CFArrayGetCount(v11[4]);
  v18 = CFArrayGetCount(v11[1]);
  if (v17 >= 1)
  {
    v19 = v18;
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11[4], i);
      v22 = CFDictionaryGetValue(v11[2], *ValueAtIndex);
      if (v22)
      {
        v23 = v22;
        if (CFArrayGetCount(v22) > 0)
        {
          v28 = CFArrayGetValueAtIndex(v23, 0);
          CFDictionaryGetValue(v11[3], v28);
          goto LABEL_26;
        }
      }
    }

    if (v19 >= v9)
    {
      context = 0;
      theArray = 0;
      CFDictionaryApplyFunction(v11[2], CodecSessionPool_PurgeIdleSessionFromLargestGroupApplier, &context);
      if (theArray)
      {
        if (context >= 1)
        {
          v24 = CFArrayGetValueAtIndex(theArray, 0);
          CodecSessionPool_DestroyGatewayForSession(v11, v24);
          v25 = CFArrayGetCount(v11[1]);
          v26 = OUTLINED_FUNCTION_19_3(v25);
          CFArrayRemoveValueAtIndex(v11[1], v26);
        }
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v11[4], 0);
LABEL_26:
    dispatch_semaphore_signal(*(ValueAtIndex + 1));
    CodecSessionPool_DequeueWaitingClient(v11, ValueAtIndex);
    goto LABEL_27;
  }

  *(a1 + 160) = OUTLINED_FUNCTION_12_5();
  if (*(a1 + 176))
  {
    [*(a1 + 176) takeAssertionUntilTime:OUTLINED_FUNCTION_14_4() forContext:a1];
    [*(a1 + 176) registerBackgroundNotificationHandlerForContext:a1 handler:*(a1 + 184)];
  }

  if (!*(a1 + 128))
  {
LABEL_27:
    v27 = 0;
    goto LABEL_28;
  }

  dispatch_resume(*(a1 + 136));
  v27 = 0;
  *(a1 + 128) = 0;
LABEL_28:
  FigSimpleMutexUnlock();
  return v27;
}

void _oneShotItemDecodeCallback(int a1, int a2, void *cf, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *(a5 + 16) = a2;
  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
  if (!*(a4 + 156))
  {
    CMPhotoRemoveColorInformationGuessedBy(cf);
    v10 = *a5;
  }

  CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(a4 + 48), *(a4 + 56), *(a4 + 64), *(a4 + 72), v10);
  CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(a4 + 80), *(a4 + 84), *a5);
  CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(*(a4 + 24), *a5);
  if (!*(a4 + 208))
  {
    dispatch_semaphore_signal(*(a5 + 8));
  }

  if (*v9 == 1)
  {

    kdebug_trace();
  }
}

void VTTileDecompressionPluginClass_dispose(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = *(v2 + 4);
      if (v3)
      {
        dispatch_barrier_sync_f(v3, 0, _dispatch_empty_0);
        v4 = *(v2 + 4);
        if (v4)
        {
          dispatch_release(v4);
        }
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        if (!*(a1 + 80) && ((v6 = *(a1 + 72), v6 == 1635135537) || v6 == 1902212657))
        {
          VTTileDecompressionSessionInvalidate();
        }

        else
        {
          VTSessionSetProperty(v5, *MEMORY[0x1E6983948], *MEMORY[0x1E695E4D0]);
          CMPhotoCodecSessionPoolRecycleSession(*(a1 + 24), *(v2 + 1), *v2);
        }

        v7 = *(v2 + 1);
        if (v7)
        {
          CFRelease(v7);
          *(v2 + 1) = 0;
        }
      }

      v8 = *(v2 + 2);
      if (v8)
      {
        CFRelease(v8);
      }

      free(v2);
      *(a1 + 64) = 0;
    }
  }
}

uint64_t CMPhotoDecompressionPluginDecode(uint64_t a1)
{
  if (a1)
  {
    return (*(*(a1 + 40) + 32))();
  }

  else
  {
    return OUTLINED_FUNCTION_1_0();
  }
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, 262, 3, 1uLL, a5);
}

uint64_t VTTileDecompressionPluginClass_decode(uint64_t a1, CFDictionaryRef theDict, CFTypeRef a3, uint64_t a4)
{
  v4 = *(a1 + 64);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CanvasPixelBuffer");
    v10 = CFDictionaryGetValue(theDict, @"TilePixelBuffer");
    v11 = CFDictionaryGetValue(theDict, @"CanvasOrigin");
    if (Value)
    {
      if (v11)
      {
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
      }

LABEL_6:
      v12 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      if (*(v4 + 25))
      {
        if (*v12 == 1)
        {
          kdebug_trace();
        }

        v13 = VTTileDecompressionSessionDecodeTile();
        if (*v12 == 1)
        {
LABEL_17:
          kdebug_trace();
        }

LABEL_18:
        if (v13)
        {
          goto LABEL_19;
        }

        return 0;
      }

      if (*(v4 + 24))
      {
        if (*v12 == 1)
        {
          kdebug_trace();
        }

        v13 = VTTileDecompressionSessionDecodeTile();
        if (*v12 == 1)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v15 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040518B8D9EuLL);
      if (!v15)
      {
        *v4 = 1;
        return 4294950305;
      }

      v16 = v15;
      v17 = *(v4 + 8);
      if (v17)
      {
        v18 = CFRetain(v17);
        if (!a3)
        {
LABEL_26:
          v19 = CFRetain(Value);
          *v16 = a1;
          v16[1] = v18;
          v16[2] = a3;
          v16[3] = v19;
          v16[4] = 0;
          v16[5] = -1;
          v16[6] = a4;
          dispatch_async_f(*(v4 + 32), v16, _dispatch_tileDecodeTileAsync);
          return 0;
        }
      }

      else
      {
        v18 = 0;
        if (!a3)
        {
          goto LABEL_26;
        }
      }

      a3 = CFRetain(a3);
      goto LABEL_26;
    }

    Value = v10;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  VTTileDecompressionPluginClass_decode_cold_1(&v20);
  v13 = v20;
  if (!v20)
  {
    return 0;
  }

LABEL_19:
  *v4 = 1;
  if ((v13 | 2) == 0x44E)
  {
    return 4294951826;
  }

  else
  {
    return v13;
  }
}

void CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(const opaqueCMFormatDescription *a1, __CVBuffer *a2)
{
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (Extensions)
  {
    v4 = Extensions;
    Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6960020]);
    if (Value)
    {
      CVBufferSetAttachment(a2, *MEMORY[0x1E6965DE0], Value, kCVAttachmentMode_ShouldPropagate);
    }

    v6 = CFDictionaryGetValue(v4, *MEMORY[0x1E6960080]);
    if (v6)
    {
      CVBufferSetAttachment(a2, *MEMORY[0x1E6965EE8], v6, kCVAttachmentMode_ShouldPropagate);
    }

    v7 = CFDictionaryGetValue(v4, *MEMORY[0x1E6960018]);
    if (v7)
    {
      CVBufferSetAttachment(a2, @"ContentColorVolume", v7, kCVAttachmentMode_ShouldPropagate);
    }

    v8 = CFDictionaryGetValue(v4, *MEMORY[0x1E695FFF0]);
    if (v8)
    {
      v9 = *MEMORY[0x1E6965CD8];

      CVBufferSetAttachment(a2, v9, v8, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

void CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(unsigned int a1, unsigned int a2, __CVBuffer *a3)
{
  if (a2 != -1 && a1 != -1)
  {
    if (a3)
    {
      CMPhotoAddChromaLocationToPixelBufferAccordingToFormat_cold_1(a3, a1, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  *(v0 - 160) = 0;
  *(v0 - 192) = 0;

  return CMPhotoCFDictionaryGetFloatIfPresent();
}

void HEIFItemDecoderRelease(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      HEIFItemDecoderWaitForFinishAndReturnStatus(a1, 0, 0, 0);
    }

    CMPhotoDecompressionPluginDispose(*(a1 + 16));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 224);
    if (v7)
    {
      dispatch_release(v7);
    }

    v8 = *(a1 + 232);
    if (v8)
    {
      dispatch_release(v8);
    }

    v9 = *(a1 + 14584);
    if (v9)
    {
      CFRelease(v9);
    }

    FigCFArrayApplyFunction();
    v10 = *(a1 + 14592);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 14600);
    if (v11)
    {
      CFRelease(v11);
    }

    free(a1);
  }
}

uint64_t _once_CMPhotoDeviceSupportsTileDecodingToCanvas()
{
  v8 = *MEMORY[0x1E69E9840];
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  if (sDeviceType == 8)
  {
    v6 = 16;
    v1 = *MEMORY[0x1E696CD60];
    v2 = IOServiceMatching("AppleAVD");
    result = IOServiceGetMatchingService(v1, v2);
    if (result)
    {
      v3 = result;
      if (MEMORY[0x1AC551D00](result, "HEVCCanDecodeTileToCanvas", v7, &v6))
      {
        v4 = 1;
      }

      else
      {
        v4 = v6 == 0;
      }

      v5 = !v4 && strncasecmp(v7, "Yes", v6) == 0;
      sDeviceSupportsTileDecodingToCanvas = v5;
      return IOObjectRelease(v3);
    }

    else
    {
      sDeviceSupportsTileDecodingToCanvas = 0;
    }
  }

  else
  {
    sDeviceSupportsTileDecodingToCanvas = 1;
  }

  return result;
}

uint64_t _once_getDeviceType()
{
  v2 = 8;
  v3 = 0;
  result = sysctlbyname("hw.cpufamily", &v3, &v2, 0, 0);
  if (v3 > 1598941842)
  {
    if (v3 > 2271604201)
    {
      if (v3 > 3660830780)
      {
        if (v3 == 3660830781)
        {
          v1 = 11;
          goto LABEL_49;
        }

        if (v3 == 3894312694)
        {
          v1 = 7;
          goto LABEL_49;
        }

        if (v3 != 4197663070)
        {
          goto LABEL_46;
        }
      }

      else if (v3 != 2271604202)
      {
        if (v3 == 2465937352)
        {
          v1 = 5;
          goto LABEL_49;
        }

        if (v3 == 2872336137)
        {
          v1 = 18;
          goto LABEL_49;
        }

        goto LABEL_46;
      }

LABEL_31:
      v1 = 12;
      goto LABEL_49;
    }

    if (v3 <= 1867590059)
    {
      if (v3 != 1598941843)
      {
        if (v3 == 1741614739)
        {
          v1 = 6;
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      goto LABEL_31;
    }

    if (v3 != 1867590060)
    {
      if (v3 != 1912690738)
      {
        if (v3 == 1976872121)
        {
          v1 = 15;
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      goto LABEL_31;
    }

LABEL_37:
    v1 = 13;
    goto LABEL_49;
  }

  if (v3 <= 541402831)
  {
    if (v3 <= 399882553)
    {
      if (v3 == 30910251)
      {
        v1 = 17;
        goto LABEL_49;
      }

      if (v3 == 131287967)
      {
        v1 = 8;
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (v3 != 399882554)
    {
      if (v3 == 458787763)
      {
        v1 = 10;
        goto LABEL_49;
      }

      if (v3 == 492472296)
      {
        v1 = 16;
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  if (v3 > 747742333)
  {
    switch(v3)
    {
      case 747742334:
        v1 = 4;
        goto LABEL_49;
      case 933271106:
        v1 = 3;
        goto LABEL_49;
      case 1176831186:
        v1 = 9;
        goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v3 == 541402832)
  {
    v1 = 14;
    goto LABEL_49;
  }

  if (v3 == 678884789)
  {
    goto LABEL_37;
  }

LABEL_46:
  result = _isMobileGestaltVirtualDevice();
  if (result)
  {
    v1 = 10;
  }

  else
  {
    v1 = 0;
  }

LABEL_49:
  sDeviceType = v1;
  return result;
}

__CFString *cmpweak_kFigPictureCollectionProperty_SourceSpecifiesOrientation()
{
  if (MEMORY[0x1E69721A0])
  {
    return *MEMORY[0x1E69721A0];
  }

  else
  {
    return @"SourceSpecifiesOrientation";
  }
}

uint64_t CMPhotoCreatePixelBufferCLAPDictionaryFromRect(const __CFAllocator *a1, CFMutableDictionaryRef *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v16 = Mutable;
    v17 = a5 + a7 * 0.5 - a3 * 0.5;
    v18 = CMPhotoCFDictionarySetFloat(Mutable, *MEMORY[0x1E6965D68], v17);
    if (v18 || (v19 = a6 + a8 * 0.5 - a4 * 0.5, v18 = CMPhotoCFDictionarySetFloat(v16, *MEMORY[0x1E6965D78], v19), v18) || (v20 = a7, v18 = CMPhotoCFDictionarySetFloat(v16, *MEMORY[0x1E6965D80], v20), v18))
    {
      v22 = v18;
    }

    else
    {
      v21 = a8;
      v22 = CMPhotoCFDictionarySetFloat(v16, *MEMORY[0x1E6965D60], v21);
      if (!v22)
      {
        *a2 = v16;
        return v22;
      }
    }

    CFRelease(v16);
    return v22;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCFDictionarySetFloat(uint64_t a1, uint64_t a2, float a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr))
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

__CVBuffer *CMPhotoPixelBufferHasUnhandledIdentityMatrix(__CVBuffer *result)
{
  if (result)
  {
    v1 = result;
    v2 = CVBufferCopyAttachment(result, *MEMORY[0x1E6965F98], 0);
    v3 = FigCFEqual();
    PixelFormatType = CVPixelBufferGetPixelFormatType(v1);
    v5 = CMPhotoPixelFormatContainsYCbCr(PixelFormatType);
    if (v2)
    {
      CFRelease(v2);
    }

    if (v5)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    return !v6;
  }

  return result;
}

unint64_t _convertAndScalePixelBufferOddSafe(uint64_t a1, __CVBuffer *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, int a24, uint64_t a25)
{
  if (!a2)
  {
    return 4294950306;
  }

  if (a8 == *MEMORY[0x1E695F060] && a9 == *(MEMORY[0x1E695F060] + 8))
  {
    return 4294950306;
  }

  if (CGRectIsNull(*&a4))
  {
    CMPhotoGetPixelBufferCLAPAsRect(a2);
  }

  HIDWORD(v86) = a24;
  HIDWORD(v89) = a21;
  CVPixelBufferGetPixelFormatType(a2);
  OUTLINED_FUNCTION_31();
  IsSubsampled = CMPhotoPixelFormatIsSubsampled(v28, v29, v30, v31, 0);
  if (!IsSubsampled)
  {
    OUTLINED_FUNCTION_31();
    IsSubsampled = CMPhotoPixelFormatIsSubsampled(v39, v40, v41, v42, 0);
    if (!IsSubsampled)
    {
      if (a3)
      {
        IsSubsampled = CMPhotoCFDictionaryGetBooleanIfPresent();
      }
    }
  }

  HIDWORD(v68) = a24;
  *(&v68 + 1) = __PAIR16__(a23, a22);
  LOBYTE(v68) = BYTE4(v89);
  OUTLINED_FUNCTION_11_3(IsSubsampled, v33, v34, v35, v36, v37, a14, v38, v58, v60, v62, pixelBufferOut, v66, v68, a25, v74, v75, v76, v77, v78, v79, v80, v81, *&a4, *&a5, *&a6, *&a7, v86, a13, v89, v90, a1);
  OUTLINED_FUNCTION_5_5();
  return _convertAndScalePixelBuffer(v43, v44, v45, v46, a12, v88, v47, v48, v49, v50, v51, v52, v53, a19, v54, v55, v59, v61, v63, pixelBufferOuta, v67, v69, v70, v71, v72, v73);
}

const void *_getPixelBufferDescriptionKey(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69();
  Attributes = CVPixelBufferGetAttributes();
  if (!Attributes)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(Attributes, *MEMORY[0x1E6966120]);
  if (!Value)
  {
    CVPixelBufferGetPixelFormatType(v2);
    Value = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (!Value)
    {
      return 0;
    }
  }

  return CFDictionaryGetValue(Value, v1);
}

uint64_t CMPhotoPixelFormatContainsYCbCr(OSType pixelFormat)
{
  v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
  FigCFDictionaryGetBooleanIfPresent();
  if (v1)
  {
    CFRelease(v1);
  }

  return 0;
}

const __CFBoolean *CMPhotoCFBooleanGetValue(const __CFBoolean *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (CFBooleanGetTypeID() == v2)
    {

      return CFBooleanGetValue(v1);
    }

    else if (CFNumberGetTypeID() == v2)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
      {
        v3 = valuePtr == 0;
      }

      else
      {
        v3 = 1;
      }

      return !v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMPhotoColorTripletCreateDictionaryRepresentation(uint64_t a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (Mutable)
  {
    CMPhotoCFDictionarySetInt(Mutable, @"primaries", a1);
    CMPhotoCFDictionarySetInt(v5, @"matrix", a2);
    CMPhotoCFDictionarySetInt(v5, @"transferFunction", SHIDWORD(a1));
  }

  return v5;
}

uint64_t CMPhotoScaleAndRotateSessionTransformImage(uint64_t a1, __CVBuffer *a2, uint64_t a3, __CVBuffer **a4)
{
  v55[0] = 0;
  if (!a2)
  {
    return 4294950306;
  }

  v54 = 1;
  v8 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v8;
  v52.origin = rect.origin;
  v52.size = v8;
  v51 = 1;
  if (*a4)
  {
    v9 = *a4;
  }

  else
  {
    v9 = a2;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v9);
  v10 = MEMORY[0x1E695F060];
  size = *MEMORY[0x1E695F060];
  v48 = 1;
  v47 = (*a4 == 0) << 6;
  v46 = 1;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  cf = 0;
  v39 = 0;
  if (!a3)
  {
    IntIfPresent = 0;
LABEL_12:
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetIntIfPresent();
  IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
  CMPhotoCFDictionaryGetIntIfPresent();
  CMPhotoCFDictionaryGetSizeIfPresent(a3, @"RowAlignment", &v47);
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  CMPhotoCFDictionaryGetCFValueIfPresent();
  if (!CMPhotoCFDictionaryGetSizeIfPresent(a3, @"DestinationMaxSideLength", &v39))
  {
    goto LABEL_12;
  }

  if (v42 || v40)
  {
    goto LABEL_50;
  }

  if (CGRectIsNull(rect))
  {
    CMPhotoGetPixelBufferCLAPAsRect(a2);
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  OUTLINED_FUNCTION_42();
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v27, v28, v29, v30, v31, v32, v33, v34, 0, 0);
  size = vcvtq_f64_u64(0);
  if (!a1)
  {
LABEL_30:
    OUTLINED_FUNCTION_3_5(&CMPhotoScaleAndRotateSessionGetDefault_onceToken);
    a1 = defaultSession;
  }

LABEL_13:
  v12 = *v10;
  v13 = v10[1];
  if (size.width == *v10 && size.height == v13)
  {
    if (CGRectIsNull(rect))
    {
      rect.origin.x = CMPhotoGetPixelBufferCLAPAsRect(a2);
      rect.origin.y = v15;
      rect.size.width = v16;
      rect.size.height = v17;
    }

    size = rect.size;
  }

  if (!*a4)
  {
    return _convertAndScalePixelBufferOddSafe(a1, a2, a3, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, size.width, size.height, v54, v51, PixelFormatType, 0, 0, *&v52.origin.x, *&v52.origin.y, *&v52.size.width, *&v52.size.height, v48, v47, v46, v45, v44, -1, a4);
  }

  CMPhotoGetPixelBufferCLAPAsRect(*a4);
  v19 = v18;
  v21 = v20;
  v22 = CVPixelBufferGetPixelFormatType(*a4);
  if (IntIfPresent && v22 != PixelFormatType)
  {
    goto LABEL_50;
  }

  if (!CGRectIsNull(v52))
  {
    v23 = vcvtad_u64_f64(v52.size.width) + vcvtad_u64_f64(v52.origin.x);
    v24 = vcvtad_u64_f64(v52.size.height) + vcvtad_u64_f64(v52.origin.y);
    IsAGXVersatile = CMPhotoPixelFormatIsAGXVersatile(PixelFormatType);
    v26 = v23;
    if (IsAGXVersatile)
    {
      if (v19 + v19 < v26 || v21 + v21 < v24)
      {
        goto LABEL_50;
      }
    }

    else if (v19 < v26 || v21 < v24)
    {
      goto LABEL_50;
    }
  }

  result = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(v51, v55, 0);
  if (!result)
  {
    if (v55[0] == 270 || (height = size.width, width = size.height, v55[0] == 90))
    {
      height = size.height;
      width = size.width;
    }

    if (size.width != v12 || size.height != v13)
    {
      if (CMPhotoPixelFormatIsAGXVersatile(PixelFormatType))
      {
        if (height > v19 + v19 || width > v21 + v21)
        {
LABEL_50:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1();
          return FigSignalErrorAtGM();
        }
      }

      else if (height > v19 || width > v21)
      {
        goto LABEL_50;
      }
    }

    return _convertAndScalePixelBufferOddSafe(a1, a2, a3, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, size.width, size.height, v54, v51, PixelFormatType, 0, 0, *&v52.origin.x, *&v52.origin.y, *&v52.size.width, *&v52.size.height, v48, v47, v46, v45, v44, -1, a4);
  }

  return result;
}

uint64_t CMPhotoColorTripletMakeWithDictionaryRepresentation(uint64_t result)
{
  if (result)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
    return 0;
  }

  return result;
}

uint64_t CMPhotoCFDictionaryGetDoubleIfPresent()
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
            CFNumberGetValue(numberb, kCFNumberDoubleType, v5);
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

__CFDictionary *CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(__CFDictionary *a1, int a2, int a3, int a4, int a5)
{
  Mutable = a1;
  if (a1 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
  {
    CMPhotoCFDictionarySetBoolean(Mutable, @"HighSpeed", a2);
    CMPhotoCFDictionarySetBoolean(Mutable, @"DisableMSRForTransfer", a3);
    CMPhotoCFDictionarySetBoolean(Mutable, @"UseExperimentalMSRAcceleratorForTransfer", a4);
    CMPhotoCFDictionarySetBoolean(Mutable, @"DisableGPUForTransfer", a5);
  }

  return Mutable;
}

uint64_t CMPhotoCreateDefaultTripletsForTransfer(__CVBuffer *a1, uint64_t a2)
{
  if (a1)
  {
    v5[1] = v2;
    v5[2] = v3;
    CMPhotoCreateDefaultTripletsForTransfer_cold_1(a2, a1, v5);
  }

  return 0;
}

const __CFBoolean *CMPhotoCreateDefaultTripletsForTransfer_cold_1(uint64_t a1, __CVBuffer *a2, uint64_t *a3)
{
  v5 = a1;
  IsFullRange = CMPhotoPixelFormatIsFullRange(a1);
  PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(a2);
  result = CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
  if (result && (result = CMPhotoPixelFormatContainsYCbCr(v5), result))
  {
    result = CMPhotoPixelBufferIsITUR_2100TF(a2);
    v9 = 1;
    if (!IsFullRange)
    {
      v9 = 2;
    }

    if (result)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t CMPhotoPixelBufferMemcpySupportedForBuffer(__CVBuffer *a1, _BYTE *a2, char a3, char a4)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = 0;
  if (PixelFormatType > 1380401728)
  {
    if (PixelFormatType > 1937125935)
    {
      if (PixelFormatType <= 1953903151)
      {
        if (PixelFormatType == 1937125936)
        {
          goto LABEL_30;
        }

        v10 = 1952854576;
      }

      else
      {
        if (PixelFormatType == 1953903152 || PixelFormatType == 2019963440)
        {
          goto LABEL_30;
        }

        v10 = 2016686640;
      }
    }

    else if (PixelFormatType <= 1815162993)
    {
      if (PixelFormatType == 1380401729)
      {
        goto LABEL_30;
      }

      v10 = 1751527984;
    }

    else
    {
      if (PixelFormatType == 1815162994 || PixelFormatType == 1815491698)
      {
        goto LABEL_30;
      }

      v10 = 1936077360;
    }

LABEL_29:
    if (PixelFormatType != v10)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (PixelFormatType <= 875836533)
  {
    if (PixelFormatType <= 875704933)
    {
      if (PixelFormatType == 875704422)
      {
        goto LABEL_30;
      }

      v10 = 875704438;
    }

    else
    {
      if (PixelFormatType == 875704934 || PixelFormatType == 875704950)
      {
        goto LABEL_30;
      }

      v10 = 875836518;
    }

    goto LABEL_29;
  }

  if (PixelFormatType > 1278226735)
  {
    if ((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (PixelFormatType != 875836534 && PixelFormatType != 1111970369)
  {
    v10 = 1278226488;
    goto LABEL_29;
  }

LABEL_30:
  extraRowsOnTop = 0uLL;
  CVPixelBufferGetExtendedPixels(a1, &extraRowsOnTop + 1, 0, &extraRowsOnTop, 0);
  if (extraRowsOnTop != 0)
  {
    return 0;
  }

  v11 = 0;
  if (CMPhotoPixelFormatIsSubsampled(PixelFormatType, 0, 0, &v11, 0))
  {
    return 0;
  }

  if (!v11)
  {
    return 1;
  }

  if (*a2)
  {
    return 0;
  }

  result = 0;
  if ((a2[8] & 1) == 0 && (a3 & 1) == 0 && (a4 & 1) == 0)
  {
    return 1;
  }

  return result;
}

double OUTLINED_FUNCTION_107()
{

  return CMPhotoGetPixelBufferCLAPAsRect(v0);
}

uint64_t OUTLINED_FUNCTION_48@<X0>(unint64_t a1@<X8>)
{

  return CMPhotoAlignValue(5 * (a1 >> 2), 0x140uLL);
}

uint64_t _decodeImage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void CMPhotoDecompressionSessionFreeAsyncRequest(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t _canDecodeTilesOrLayersIntoCanvas(__CVBuffer *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, int a8, int *a9, uint64_t a10, int a11)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PixelBufferSize = CMPhotoGetPixelBufferSize(a1);
  if (a11 == 1785750887)
  {
    return PixelFormatType == a8;
  }

  else
  {
    v23 = PixelBufferSize;
    v24 = v21;
    v25 = CMPhotoDeviceSupportsTileDecodingToCanvas();
    v22 = 0;
    if ((a8 & 0xFFFFFFEF) != 0x34343466 && v25)
    {
      IOSurface = CVPixelBufferGetIOSurface(a1);
      v28 = PixelFormatType == a8 && IOSurface != 0;
      v53 = 0u;
      v54 = 0u;
      CMPhotoPixelBufferAttributesGetExtendedPixelsStruct(a10, &v53);
      if (v53 | v54)
      {
        v31 = 0;
        v29 = a7;
      }

      else
      {
        v29 = a7;
        v31 = (a6 < 2 || !*(&v53 + 1)) && (a7 < 2 || *(&v54 + 1) == 0);
      }

      if (!v28)
      {
        v31 = 0;
      }

      if (a4 | a5)
      {
        v32 = a4;
      }

      else
      {
        v32 = a2;
      }

      if (a4 | a5)
      {
        v33 = a5;
      }

      else
      {
        v33 = a3;
      }

      if (a2 > a9[6] || a3 > a9[4] || v32 < a9[7] || v33 < a9[5])
      {
        v31 = 0;
      }

      if (a6 >= 2 && a2 % *a9)
      {
        v31 = 0;
      }

      v37 = vcvtad_u64_f64(v23);
      v38 = vcvtad_u64_f64(v24);
      if (v29 >= 2 && a3 % a9[1])
      {
        v31 = 0;
      }

      v39 = a2 + v37 + ~((v37 - 1) % a2);
      v40 = a3 + v38 + ~((v38 - 1) % a3);
      if (a4 | a5)
      {
        v39 = a4 + a9[2] + ~((a4 - 1) % a9[2]) + v37 + ~((v37 - 1) % a2);
        v40 = a5 + a9[3] + ~((a5 - 1) % a9[3]) + v38 + ~((v38 - 1) % a3);
      }

      v41 = 0;
      if (a6 == 1)
      {
        v42 = *(&v53 + 1) + a2;
      }

      else
      {
        v42 = v39;
      }

      if (v29 == 1)
      {
        v43 = *(&v54 + 1) + a3;
      }

      else
      {
        v43 = v40;
      }

      v45 = v42 <= a9[8] && v43 <= a9[9] && v31;
      while (1)
      {
        v46 = CVPixelBufferGetPlaneCount(a1) ? CVPixelBufferGetPlaneCount(a1) : 1;
        if (v41 >= v46)
        {
          break;
        }

        if (CVPixelBufferIsPlanar(a1))
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v41);
        }

        else
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a1);
        }

        v48 = BytesPerRowOfPlane <= a9[10] && v45;
        if (BytesPerRowOfPlane % *a9)
        {
          v45 = 0;
        }

        else
        {
          v45 = v48;
        }

        ++v41;
      }

      extraRowsOnBottom = 0;
      extraColumnsOnRight = 0;
      CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
      return extraColumnsOnRight + v37 >= v42 && extraRowsOnBottom + v38 >= v43 && v45;
    }
  }

  return v22;
}

uint64_t CMPhotoCreateCGImageWithPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3, CGImageRef *a4)
{
  if (!pixelBuffer)
  {
    return 4294950306;
  }

  v9 = pixelBuffer;
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  if (a3 && IOSurface)
  {
    v186 = a4;
    v12 = CVPixelBufferGetIOSurface(v9);
    PixelFormat = IOSurfaceGetPixelFormat(v12);
    cf[0] = 0;
    CMPhotoGetPixelBufferCLAPAsRect(v9);
    OUTLINED_FUNCTION_64();
    v189 = vcvtad_u64_f64(v14);
    v191 = vcvtad_u64_f64(v15);
    IsTiled = IOSurfaceIsTiled();
    v17 = vdupq_n_s32(PixelFormat);
    v18 = vceqq_s32(v17, xmmword_1A5AAD170);
    v17.i32[1] = PixelFormat & 0xFFFFFFFD;
    v19 = (PixelFormat != 1380411457) & ~vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v17, xmmword_1A5AAD160), v18)));
    if (PixelFormat == 1815162994)
    {
      v19 = 0;
    }

    if (PixelFormat == 1380410945)
    {
      v19 = 0;
    }

    if (PixelFormat == 1815491698)
    {
      v19 = 0;
    }

    if (PixelFormat == 1717856627)
    {
      v19 = 0;
    }

    if (PixelFormat == 1751411059)
    {
      v19 = 0;
    }

    if ((v19 & 1) != 0 || IsTiled)
    {
      FastestAlignment = CGBitmapGetFastestAlignment();
      v21 = MEMORY[0x1AC550000](a1, 48, 1909800069, 0);
      if (!v21)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3();
        v58 = FigSignalErrorAtGM();
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_35();
      if (!v59 & v23 || ((1 << v22) & 0x1400000000001) == 0)
      {
        OUTLINED_FUNCTION_15_0();
        if (!v59 & v23 || (OUTLINED_FUNCTION_10(), v59))
        {
          if (PixelFormat == 1278555701)
          {
            v28 = 1278555445;
            v21[6] = 1278555445;
            v29 = 2 * v189;
            goto LABEL_78;
          }

          OUTLINED_FUNCTION_33();
          if (v59)
          {
            v24 = 1;
          }

          else
          {
            v24 = PixelFormat == 1717856627;
          }

          if (!v24 && PixelFormat != 1751411059 && PixelFormat != 1751410032)
          {
            if (CMPhotoGetBitDepthForPixelFormat(PixelFormat) < 9)
            {
              v28 = 1111970369;
              v21[6] = 1111970369;
              v29 = 4 * v189;
            }

            else
            {
              if (PixelFormat == 1380410945)
              {
                v27 = 1380410945;
              }

              else
              {
                v27 = 1815491698;
              }

              if (PixelFormat == 1380411457)
              {
                v28 = 1380411457;
              }

              else
              {
                v28 = v27;
              }

              v21[6] = v28;
              v29 = 8 * v189;
            }

            goto LABEL_78;
          }
        }
      }

      v21[6] = PixelFormat;
      CMPhotoGetBitDepthForPixelFormat(PixelFormat);
      OUTLINED_FUNCTION_52();
      CMPhotoGetUsedBitDepthForPixelFormat(PixelFormat);
      v29 = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormat) * v189;
      v28 = v21[6];
LABEL_78:
      CMPhotoGetUsedBitDepthForPixelFormat(v28);
      v60 = (FastestAlignment + v29 - 1) & -FastestAlignment;
      *(v21 + 4) = v60;
      *(v21 + 5) = v60 * v191;
      *(v21 + 1) = CFRetain(v9);
      *(v21 + 2) = 0;
      v21[7] = 0;
      v61 = FigSimpleMutexCreate();
      *v21 = v61;
      if (v61)
      {
        callbacks = *byte_1F1914670;
        v62 = CGDataProviderCreateDirect(v21, v60 * v191, &callbacks);
        v63 = 0;
        goto LABEL_80;
      }

      v58 = 4294950305;
LABEL_97:
      free(v21);
      return v58;
    }

    v178 = v18;
    if (v12)
    {
      CFRetain(v12);
    }

    IOSurfaceLock(v12, 5u, 0);
    IOSurfaceUnlock(v12, 5u, 0);
    IOSurfaceLock(v12, 1u, 0);
    IOSurfaceIncrementUseCount(v12);
    OUTLINED_FUNCTION_15_0();
    if (!v59 & v23 || ((1 << v123) & 0x45) == 0)
    {
      OUTLINED_FUNCTION_32();
      if (!v59)
      {
        v124 = PixelFormat == 1380410945 || PixelFormat == 1380411457;
        if (!v124 && PixelFormat != 1815491698)
        {
          OUTLINED_FUNCTION_59();
        }
      }
    }

    v150 = vcvtad_u64_f64(v6);
    v151 = OUTLINED_FUNCTION_85();
    v183 = vcvtad_u64_f64(v5);
    if (CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(v151, v152))
    {
      v153 = v178;
    }

    else
    {
      OUTLINED_FUNCTION_32();
      v153 = v178;
      if (!v59)
      {
        if (PixelFormat == 1380410945 || PixelFormat == 1380411457 || PixelFormat == 1815491698)
        {
LABEL_189:
          OUTLINED_FUNCTION_59();
          if (!v59)
          {
            v157 = v150;
            if (PixelFormat != 1815491698 && PixelFormat != 1380411457 && PixelFormat != 1380410945)
            {
              OUTLINED_FUNCTION_52();
              if (PixelFormat != v164 && PixelFormat != 1278226536)
              {
                OUTLINED_FUNCTION_33();
              }

              v159 = 1;
              OUTLINED_FUNCTION_35();
              if (!(!v59 & v23))
              {
                OUTLINED_FUNCTION_13_1();
                if (!v166)
                {
                  goto LABEL_198;
                }
              }

              OUTLINED_FUNCTION_15_0();
              if (!(!v59 & v23))
              {
                OUTLINED_FUNCTION_10();
                if (!v59)
                {
                  goto LABEL_198;
                }
              }

              OUTLINED_FUNCTION_33();
              if (v59 || PixelFormat == 1751410032)
              {
                goto LABEL_198;
              }
            }

            goto LABEL_192;
          }

LABEL_191:
          v157 = v150;
LABEL_192:
          if (PixelFormat == 1717856627 || PixelFormat == 1751411059)
          {
            v159 = 1;
          }

          else
          {
            v159 = 4;
          }

LABEL_198:
          UsedBitDepthForPixelFormat = CMPhotoGetUsedBitDepthForPixelFormat(PixelFormat);
          if (PixelFormat == 1815162994)
          {
            v161 = 32;
          }

          else
          {
            v161 = UsedBitDepthForPixelFormat * v159;
          }

          BytesPerRow = IOSurfaceGetBytesPerRow(v12);
          BaseAddress = IOSurfaceGetBaseAddress(v12);
          v62 = CGDataProviderCreateWithData(v12, &BaseAddress[BytesPerRow * v157 + (v161 >> 3) * v183], BytesPerRow * v191, _callbackDataProviderReleaseSurface);
          v63 = v159 == 1;
LABEL_80:
          ColorSpaceFromPixelBuffer = CMPhotoCreateColorSpaceFromPixelBuffer(v9, cf, 0, 0);
          v65 = cf[0];
          if (ColorSpaceFromPixelBuffer)
          {
            goto LABEL_86;
          }

          OUTLINED_FUNCTION_8_2();
          v74 = OUTLINED_FUNCTION_55(v66, v67, v68, v69, v70, v71, v72, v73, v167, v170, v174, v176, v178.i64[0], v178.i64[1], v181, v183, v4, v186, v189, v191);
          v75 = !v63;
          if (v74)
          {
            v75 = 1;
          }

          if ((v75 & 1) == 0)
          {
            if (CGColorSpaceGetNumberOfComponents(v65) == 1)
            {
LABEL_85:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1();
              ColorSpaceFromPixelBuffer = FigSignalErrorAtGM();
LABEL_86:
              v58 = ColorSpaceFromPixelBuffer;
              if (!v65)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }

            if (v65)
            {
              CFRelease(v65);
            }

            v65 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
            cf[0] = v65;
            OUTLINED_FUNCTION_8_2();
            v74 = OUTLINED_FUNCTION_55(v76, v77, v78, v79, v80, v81, v82, v83, v168, v171, v175, v177, v179, v180, v182, v184, v185, v187, v190, v192);
          }

          v84 = v74;
          if (v74)
          {
            CMPhotoGetEncodeAccelerationModeOverride(v12);
            CGImageSetProperty();
            v58 = 0;
            *v187 = v84;
            if (!v65)
            {
LABEL_94:
              if (v62)
              {
                CFRelease(v62);
              }

              v21 = 0;
              goto LABEL_97;
            }

LABEL_93:
            CFRelease(v65);
            goto LABEL_94;
          }

          goto LABEL_85;
        }

        OUTLINED_FUNCTION_59();
      }
    }

    v156 = vmovn_s32(v153);
    if (vuzp1_s8(v156, v156).i8[7])
    {
      goto LABEL_191;
    }

    goto LABEL_189;
  }

  cf[0] = 0;
  if (CVPixelBufferGetIOSurface(v9))
  {
    v30 = IOSurfaceIsTiled() == 0;
  }

  else
  {
    v30 = 1;
  }

  CVPixelBufferGetPixelFormatType(v9);
  OUTLINED_FUNCTION_39();
  v33 = v31 == v32 || v31 == 1278226488;
  if (v33 || ((OUTLINED_FUNCTION_52(), v34 != v35) ? (v36 = v34 == 1278226536) : (v36 = 1), !v36 ? (v37 = v34 == 1278226736) : (v37 = 1), !v37 ? (v38 = v34 == 1278226738) : (v38 = 1), !v38 && (v34 != 1278226742 ? (v39 = v34 == 1815491698) : (v39 = 1), v39 || ((OUTLINED_FUNCTION_38(), v34 != v40) ? (v41 = v34 == 1717856627) : (v41 = 1), !v41 ? (v42 = v34 == 1751410032) : (v42 = 1), !v42 ? (v43 = v34 == 1751411059) : (v43 = 1), !v43 && v34 == 1380401729))))
  {
    if (v30)
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_103();
    if (!v59 & v23 || ((1 << v121) & 0x1400000000001) == 0)
    {
      OUTLINED_FUNCTION_34();
      if (!v59 & v23 || (OUTLINED_FUNCTION_10(), v126))
      {
        OUTLINED_FUNCTION_38();
      }
    }
  }

  CMPhotoGetBitDepthForPixelFormat(v34);
  OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_4();
  v58 = CMPhotoScaleAndRotateSessionTransformForSize(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, 0, v170, v174);
  v9 = cf[0];
  if (v58)
  {
    return v58;
  }

LABEL_100:
  *&callbacks.version = 0;
  CVPixelBufferGetPixelFormatType(v9);
  OUTLINED_FUNCTION_39();
  if (v85 != v86 && v85 != 1278226488 && v85 != 1278226742 && v85 != 1380401729 && v85 != 1815491698)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v122 = FigSignalErrorAtGM();
LABEL_135:
    v58 = v122;
    goto LABEL_170;
  }

  v91 = v85;
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v85);
  v93 = OUTLINED_FUNCTION_85();
  CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(v93, v94);
  v122 = CVPixelBufferLockBaseAddress(v9, 1uLL);
  if (v122)
  {
    goto LABEL_135;
  }

  v188 = a4;
  if (CVPixelBufferGetPlaneCount(v9) == 1)
  {
    v95 = OUTLINED_FUNCTION_9_0();
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v95, v96);
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v9);
  }

  v98 = BaseAddressOfPlane;
  if (CVPixelBufferGetPlaneCount(v9) == 1)
  {
    v99 = OUTLINED_FUNCTION_9_0();
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v99, v100);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v9);
  }

  v102 = BytesPerRowOfPlane;
  PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(v9);
  v105 = v104;
  v107 = v106;
  v108 = BytesPerPixelForPixelFormat;
  v110 = v109 * BytesPerPixelForPixelFormat;
  v111 = (v106 * v110);
  Data = CGBitmapAllocateData();
  if (Data)
  {
    v113 = Data;
    if (v107)
    {
      v114 = &v98[(v105 * v102) + (PixelBufferCLAPAsRect * v108)];
      v115 = v107;
      v116 = Data;
      do
      {
        memcpy(v116, v114, v110);
        v116 += v110;
        v114 += v102;
        --v115;
      }

      while (v115);
    }

    v117 = CVPixelBufferUnlockBaseAddress(v9, 1uLL);
    if (v117)
    {
      v58 = v117;
    }

    else
    {
      v118 = CGDataProviderCreateWithData(0, v113, v111, _callbackDataProviderReleaseImage);
      if (v118)
      {
        v119 = v118;
        v120 = CMPhotoCreateColorSpaceFromPixelBuffer(v9, &callbacks, 0, 0);
        if (v120)
        {
          v58 = v120;
          v127 = *&callbacks.version;
          goto LABEL_167;
        }

        OUTLINED_FUNCTION_39();
        CMPhotoGetBitDepthForPixelFormat(v91);
        v127 = *&callbacks.version;
        OUTLINED_FUNCTION_8_2();
        v136 = OUTLINED_FUNCTION_50(v128, v129, v130, v131, v132, v133, v134, v135, v167, v170, SHIDWORD(v170));
        if (v136)
        {
          goto LABEL_166;
        }

        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v127);
        CGColorSpaceGetName(v127);
        v138 = *MEMORY[0x1E695F128];
        v193 = FigCFEqual();
        if (v127)
        {
          CFRelease(v127);
        }

        v139 = vdupq_n_s32(v91);
        v140 = vceqq_s32(v139, xmmword_1A5AAD150);
        v139.i32[1] = v91 & 0xFFFFFFFD;
        *v139.i8 = vmovn_s16(vuzp1q_s16(vceqq_s32(v139, xmmword_1A5AAD140), v140));
        v139.i8[0] = vmaxv_u8(*v139.i8);
        if (((v91 != 1278226742) & ~v139.i32[0]) != 0 || NumberOfComponents == 1)
        {
          v127 = 0;
          if (!CMPhotoPixelFormatContainsRGB(v91) || !v193)
          {
            goto LABEL_173;
          }

          v138 = *MEMORY[0x1E695F1C0];
        }

        v127 = CGColorSpaceCreateWithName(v138);
        if (v127)
        {
          CMPhotoGetBitDepthForPixelFormat(v91);
          OUTLINED_FUNCTION_8_2();
          v136 = OUTLINED_FUNCTION_50(v141, v142, v143, v144, v145, v146, v147, v148, v169, v172, v173);
          if (v136)
          {
LABEL_166:
            v58 = 0;
            *v188 = v136;
LABEL_167:
            if (v127)
            {
              CFRelease(v127);
            }

            CFRelease(v119);
            goto LABEL_170;
          }
        }

LABEL_173:
        fig_log_get_emitter();
        v58 = FigSignalErrorAtGM();
        goto LABEL_167;
      }

      v58 = 4294950305;
    }

    CGBitmapFreeData();
  }

  else
  {
    v58 = 4294950305;
  }

LABEL_170:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v58;
}

uint64_t CMPhotoDecompressionPluginIsHardwareSession(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 56)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoCodecSessionPoolRecycleSession(uint64_t a1, CFTypeRef cf, int a3)
{
  v5 = a1;
  if (!a1)
  {
    OUTLINED_FUNCTION_1_9(&CMPhotoCodecSessionPoolGetDefault_onceToken);
    v5 = defaultPool;
    if (!defaultPool)
    {
      return 4294950305;
    }
  }

  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == VTCompressionSessionGetTypeID() || (v7 = CFGetTypeID(cf), v7 == VTTileCompressionSessionGetTypeID()))
  {
    v11 = v5;
    v12 = 0;
  }

  else
  {
    v8 = CFGetTypeID(cf);
    if (v8 != VTDecompressionSessionGetTypeID())
    {
      v9 = CFGetTypeID(cf);
      if (v9 != VTTileDecompressionSessionGetTypeID())
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    v11 = v5;
    v12 = 1;
  }

  return CMPhotoCodecSessionPool_RecycleSession(v11, v12, cf, a3);
}

uint64_t CMPhotoGetAuxiliaryImageTypeFromURN()
{
  if (FigCFEqual() || FigCFEqual())
  {
    return 3;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 2;
  }

  if (FigCFEqual())
  {
    return 5;
  }

  return 4;
}

const void *Pool_MarkBufferAsUsed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = (a2 + 8);
  if (v6)
  {
    v8 = (v6 + 48);
  }

  *v8 = v7;
  *v7 = v6;
  *v5 = 0;
  v9 = *(a2 + 8);
  *(a3 + 48) = v9;
  *v9 = a3;
  *(a2 + 8) = v5;
  v10 = (a3 + 56);
  v11 = *(a3 + 56);
  v12 = *(a3 + 64);
  v13 = (a1 + 8);
  if (v11)
  {
    v13 = (v11 + 64);
  }

  *v13 = v12;
  *v12 = v11;
  *v10 = 0;
  v14 = *(a1 + 8);
  *(a3 + 64) = v14;
  *v14 = a3;
  *(a1 + 8) = v10;
  IOSurfaceIncrementUseCount(*a3);
  *(a3 + 72) = 0;
  result = *a3;
  if (*a3)
  {
    result = CFRetain(result);
  }

  ++*(a2 + 32);
  return result;
}

void CMPhotoAddChromaLocationToPixelBufferAccordingToFormat_cold_1(__CVBuffer *a1, unsigned int a2, unsigned int a3)
{
  PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(a1);
  Value = CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
  if (Value)
  {
    v10 = ChromaSubsamplingFromPixelFormat == 5;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    _setChromaLocationAttachmentToBuffer(1, a2, a1);

    _setChromaLocationAttachmentToBuffer(0, a3, a1);
  }
}

uint64_t CMPhotoGetChromaSubsamplingFromPixelFormat(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  result = 5;
  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1882469427)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 1278555444)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1751527983)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 1380410944)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1380410945 || UncompressedPixelFormatFromCompressedPixelFormat == 1380411457)
          {
            return 1;
          }

          v3 = 1647589490;
        }

        else
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1278555445 || UncompressedPixelFormatFromCompressedPixelFormat == 1378955371)
          {
            return 1;
          }

          v3 = 1380401729;
        }

        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1815491697)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1751527984)
        {
          return result;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1815162994)
        {
          return 1;
        }

        v3 = 1815361650;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1815491698)
      {
        return 1;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1882468912)
      {
        return result;
      }

      v4 = 1882468914;
    }

    else
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 1111970368)
      {
        if ((UncompressedPixelFormatFromCompressedPixelFormat - 1278226488) <= 0x30 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 56)) & 0x1400000000001) != 0 || (UncompressedPixelFormatFromCompressedPixelFormat - 1278226736) <= 6 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 48)) & 0x45) != 0)
        {
          return 6;
        }

        v3 = 1111970369;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 875704933)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 32)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 875704422)
          {
            return result;
          }

          v5 = 875704438;
          goto LABEL_71;
        }

        return 1;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat > 875836517)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 875836518)
        {
          return 1;
        }

        v3 = 875836534;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 875704934)
      {
        return 3;
      }

      v4 = 875704950;
    }

LABEL_75:
    if (UncompressedPixelFormatFromCompressedPixelFormat != v4)
    {
      goto LABEL_78;
    }

    return 3;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1952854577)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1936077359)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 1885746227)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1885746228 || UncompressedPixelFormatFromCompressedPixelFormat == 1919365990)
        {
          return 1;
        }

        v3 = 1919365992;
        goto LABEL_67;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1882469428)
      {
        return 1;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1885745712)
      {
        return result;
      }

      v4 = 1885745714;
      goto LABEL_75;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1937125935)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077360)
      {
        return result;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077362)
      {
        return 3;
      }

      v3 = 1936077876;
      goto LABEL_67;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1937126451)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1937125936)
      {
        return result;
      }

      v4 = 1937125938;
      goto LABEL_75;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1937126452)
    {
      v5 = 1952854576;
      goto LABEL_71;
    }

    return 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 2016686641)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 2019963441)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 2037741157)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 2019963442)
        {
          return 3;
        }

        v3 = 2019963956;
LABEL_67:
        if (UncompressedPixelFormatFromCompressedPixelFormat == v3)
        {
          return 1;
        }

LABEL_78:
        if (CMPhotoPixelFormatIsRAW(UncompressedPixelFormatFromCompressedPixelFormat))
        {
          return 7;
        }

        result = CMPhotoPixelFormatIsRAWVersatile(UncompressedPixelFormatFromCompressedPixelFormat);
        if (result)
        {
          return 7;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1717856626)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 825306677 || UncompressedPixelFormatFromCompressedPixelFormat == 825437747)
          {
            return 6;
          }

          v7 = 1717855600;
        }

        else
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat > 1751411058)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1932996149)
            {
              return 6;
            }

            v6 = 26995;
          }

          else
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1717856627)
            {
              return 6;
            }

            v6 = 25968;
          }

          v7 = v6 | 0x68640000;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat != v7)
        {
          return result;
        }

        return 6;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 2037741171)
      {
        return 3;
      }

      v4 = 2037741158;
      goto LABEL_75;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 2016686642)
    {
      return 3;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 2016687156)
    {
      v5 = 2019963440;
      goto LABEL_71;
    }

    return 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1953903153)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat != 1952854578)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 1952855092)
      {
        v5 = 1953903152;
        goto LABEL_71;
      }

      return 1;
    }

    return 3;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1999843441)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat != 1953903154)
    {
      v3 = 1953903668;
      goto LABEL_67;
    }

    return 3;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat == 1999843442)
  {
    return 1;
  }

  v5 = 2016686640;
LABEL_71:
  if (UncompressedPixelFormatFromCompressedPixelFormat != v5)
  {
    goto LABEL_78;
  }

  return result;
}

void _setChromaLocationAttachmentToBuffer(int a1, unsigned int a2, CVBufferRef buffer)
{
  if (a2 <= 5)
  {
    v3 = MEMORY[0x1E6965CF0];
    if (a1)
    {
      v3 = MEMORY[0x1E6965D00];
    }

    CVBufferSetAttachment(buffer, *v3, **(&unk_1E77A17C8 + a2), kCVAttachmentMode_ShouldPropagate);
  }
}

void CMPhotoPixelBufferCopyCropRectToOffset(__CVBuffer *a1, int a2, uint64_t *a3, __CVBuffer *a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1)
  {
    v8 = a4;
    if (a4)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      v15 = CVPixelBufferGetPixelFormatType(v8);
      v16 = v15;
      if (a8)
      {
        if (PixelFormatType != v15)
        {
          BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
          if (BitDepthForPixelFormat != CMPhotoGetBitDepthForPixelFormat(v16))
          {
            goto LABEL_67;
          }

          if (!CMPhotoPixelFormatContainsYCbCr(PixelFormatType))
          {
            goto LABEL_67;
          }

          if (!CMPhotoPixelFormatContainsYCbCr(v16))
          {
            goto LABEL_67;
          }

          ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
          if (ChromaSubsamplingFromPixelFormat != CMPhotoGetChromaSubsamplingFromPixelFormat(v16))
          {
            goto LABEL_67;
          }
        }
      }

      else if (PixelFormatType != v15)
      {
        goto LABEL_67;
      }

      Width = CVPixelBufferGetWidth(v8);
      Height = CVPixelBufferGetHeight(v8);
      v96 = 0;
      v97 = 0;
      v21 = OUTLINED_FUNCTION_14_0();
      CVPixelBufferGetExtendedPixels(v21, v22, v23, 0, v24);
      if (a3[2] > Width - a6 || a3[3] > Height - a7 + v97)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3();
      }

      else
      {
        v25 = *(a3 + 1);
        v95[0] = *a3;
        v95[1] = v25;
        if (CMPhotoPixelBufferMemcpySupportedForBuffer(a1, v95, a6, a7))
        {
          if (!a2 || (v26 = OUTLINED_FUNCTION_20(), !CVPixelBufferLockBaseAddress(v26, v27)))
          {
            if (a5)
            {
              v28 = OUTLINED_FUNCTION_14_0();
              if (CVPixelBufferLockBaseAddress(v28, v29))
              {
                a5 = 0;
                goto LABEL_51;
              }

              a5 = 1;
            }

            v30 = *a3;
            v89 = a3[1];
            BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
            OUTLINED_FUNCTION_42();
            if (CMPhotoPixelFormatIsSubsampled(v31, v32, v33, v34, v35))
            {
              goto LABEL_51;
            }

            v94 = v8;
            if (CVPixelBufferGetPlaneCount(a1) < 2)
            {
              v85 = a5;
              BaseAddress = CVPixelBufferGetBaseAddress(a1);
              v37 = CVPixelBufferGetBaseAddress(v8);
              CVPixelBufferGetBytesPerRow(a1);
              v38 = OUTLINED_FUNCTION_86();
              BytesPerRow = CVPixelBufferGetBytesPerRow(v38);
              v40 = a3[3];
              if (v40 >= CVPixelBufferGetHeight(a1))
              {
                v41 = CVPixelBufferGetHeight(a1);
              }

              else
              {
                v41 = a3[3];
              }

              v75 = a3[2];
              if (v75 >= CVPixelBufferGetWidth(a1))
              {
                v76 = CVPixelBufferGetWidth(a1);
                if (!v41)
                {
LABEL_50:
                  a5 = v85;
LABEL_51:
                  if (a2)
                  {
                    v80 = OUTLINED_FUNCTION_20();
                    CVPixelBufferUnlockBaseAddress(v80, v81);
                  }

                  if (a5)
                  {
                    v82 = OUTLINED_FUNCTION_14_0();
                    CVPixelBufferUnlockBaseAddress(v82, v83);
                  }

                  goto LABEL_55;
                }
              }

              else
              {
                v76 = a3[2];
                if (!v41)
                {
                  goto LABEL_50;
                }
              }

              v77 = &BaseAddress[BytesPerPixelForPixelFormat * v30];
              v78 = &v37[BytesPerPixelForPixelFormat * a6 + BytesPerRow * a7];
              v79 = v76 * BytesPerPixelForPixelFormat;
              do
              {
                memcpy(v78, v77, v79);
                v78 += BytesPerRow;
                --v41;
              }

              while (v41);
              goto LABEL_50;
            }

            if (!CVPixelBufferGetPlaneCount(a1))
            {
              goto LABEL_51;
            }

            v85 = a5;
            v42 = 0;
            v92 = 2 * BytesPerPixelForPixelFormat * v30;
            v91 = 2 * BytesPerPixelForPixelFormat * a6;
            v87 = BytesPerPixelForPixelFormat * a6;
            v88 = BytesPerPixelForPixelFormat * v30;
            while (1)
            {
              v43 = OUTLINED_FUNCTION_40();
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v43, v44);
              v46 = CVPixelBufferGetBaseAddressOfPlane(v8, v42);
              v47 = OUTLINED_FUNCTION_40();
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v47, v48);
              v50 = CVPixelBufferGetBytesPerRowOfPlane(v8, v42);
              if (v42)
              {
                break;
              }

              v64 = a3[3];
              v65 = OUTLINED_FUNCTION_17();
              if (v64 >= CVPixelBufferGetHeightOfPlane(v65, v66))
              {
                v67 = OUTLINED_FUNCTION_17();
                HeightOfPlane = CVPixelBufferGetHeightOfPlane(v67, v68);
              }

              else
              {
                HeightOfPlane = a3[3];
              }

              v61 = &BaseAddressOfPlane[v88 + BytesPerRowOfPlane * v89];
              v62 = &v46[v87 + v50 * a7];
              v69 = a3[2];
              v70 = OUTLINED_FUNCTION_17();
              if (v69 >= CVPixelBufferGetWidthOfPlane(v70, v71))
              {
                v72 = OUTLINED_FUNCTION_17();
                WidthOfPlane = CVPixelBufferGetWidthOfPlane(v72, v73);
                if (HeightOfPlane)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                WidthOfPlane = a3[2];
                if (HeightOfPlane)
                {
                  goto LABEL_39;
                }
              }

LABEL_41:
              ++v42;
              v8 = v94;
              if (CVPixelBufferGetPlaneCount(a1) <= v42)
              {
                goto LABEL_50;
              }
            }

            v51 = a3[2];
            HeightOfPlane = a3[3];
            v53 = OUTLINED_FUNCTION_40();
            if (HeightOfPlane >= CVPixelBufferGetHeightOfPlane(v53, v54))
            {
              v55 = OUTLINED_FUNCTION_40();
              HeightOfPlane = CVPixelBufferGetHeightOfPlane(v55, v56);
            }

            v57 = OUTLINED_FUNCTION_40();
            if (v51 >= CVPixelBufferGetWidthOfPlane(v57, v58))
            {
              v59 = OUTLINED_FUNCTION_40();
              v51 = CVPixelBufferGetWidthOfPlane(v59, v60);
            }

            v61 = &BaseAddressOfPlane[v92 + BytesPerRowOfPlane * v89];
            v62 = &v46[v91 + v50 * a7];
            WidthOfPlane = 2 * v51;
            if (!HeightOfPlane)
            {
              goto LABEL_41;
            }

LABEL_39:
            v74 = WidthOfPlane * BytesPerPixelForPixelFormat;
            do
            {
              memcpy(v62, v61, v74);
              v61 += BytesPerRowOfPlane;
              v62 += v50;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
            goto LABEL_41;
          }

LABEL_55:
          OUTLINED_FUNCTION_73();
          return;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3();
      }

      FigSignalErrorAtGM();
      goto LABEL_55;
    }
  }

LABEL_67:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_73();

  FigSignalErrorAtGM();
}

void CMPhotoPropagateColorPropertiesFromSourceBuffer(CVBufferRef buffer, __CVBuffer *a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  if (buffer && a2)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E6965EC8];
    v12[0] = *MEMORY[0x1E6965CE8];
    v12[1] = v5;
    v6 = *MEMORY[0x1E6965F30];
    v12[2] = *MEMORY[0x1E6965D88];
    v12[3] = v6;
    v7 = *MEMORY[0x1E6965F98];
    v12[4] = *MEMORY[0x1E6965F98];
    do
    {
      v8 = v12[v4];
      attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
      v9 = CVBufferCopyAttachment(buffer, v8, &attachmentMode);
      if (v9)
      {
        v10 = v9;
        if (v8 == v7)
        {
          CMPhotoAddMatrixToBufferIfAllowed(a2, v9);
        }

        else
        {
          CVBufferSetAttachment(a2, v8, v9, attachmentMode);
        }

        CFRelease(v10);
      }

      ++v4;
    }

    while (v4 != 5);
  }
}

void CMPhotoAddMatrixToBufferIfAllowed(__CVBuffer *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CMPhotoPixelFormatContainsRGB(PixelFormatType);
  v6 = 1;
  if (PixelFormatType > 1278226735)
  {
    if ((PixelFormatType - 1278226736) <= 6 && ((1 << (PixelFormatType - 48)) & 0x45) != 0 || PixelFormatType == 1717855600 || PixelFormatType == 1751410032)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if ((PixelFormatType - 1278226488) > 0x30 || ((1 << (PixelFormatType - 56)) & 0x1400000000001) == 0)
  {
LABEL_11:
    v6 = PixelFormatType == 1751411059 || PixelFormatType == 1717856627;
  }

LABEL_17:
  v8 = 1;
  if (PixelFormatType != 825306677 && PixelFormatType != 825437747)
  {
    v8 = PixelFormatType == 1932996149;
  }

  if (!CMPhotoPixelFormatIsRAW(PixelFormatType))
  {
    IsRAWVersatile = CMPhotoPixelFormatIsRAWVersatile(PixelFormatType);
    v10 = v5 || v6;
    if (((v10 | v8) & 1) == 0 && !IsRAWVersatile)
    {
      v11 = *MEMORY[0x1E6965F98];

      CVBufferSetAttachment(a1, v11, a2, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, ...)
{
  va_start(va, a1);

  return CMPhotoCreateColorSpaceFromPixelBuffer(v1, va, 1, 0);
}

uint64_t CMPhotoGetBitDepthForPixelFormat(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  v2 = 32;
  if (UncompressedPixelFormatFromCompressedPixelFormat > 1735549491)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1936077359)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1882468913)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1751527983)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat > 1735553071)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1735553072)
            {
              return 10;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat != 1751410032)
            {
              v5 = 1751411059;
              goto LABEL_112;
            }

            return 16;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat != 1735549492)
          {
            return 8;
          }

          return 14;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1815361649)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1751527984)
          {
            return 16;
          }

          v4 = 1815162994;
          goto LABEL_108;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1815361650 || UncompressedPixelFormatFromCompressedPixelFormat == 1815491698)
        {
          return 16;
        }

        v6 = 12848;
      }

      else
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 1919365989)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat <= 1919379251)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1919365990)
            {
              return v2;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat != 1919365992)
            {
              return 8;
            }

            return 16;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat != 1919379252)
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1919381552)
            {
              return 10;
            }

            v5 = 1932996149;
            goto LABEL_112;
          }

          return 14;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat > 1885745711)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1885745712 || UncompressedPixelFormatFromCompressedPixelFormat == 1885745714)
          {
            return 10;
          }

          v4 = 1885746228;
          goto LABEL_108;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1882468914)
        {
          return 10;
        }

        v6 = 13364;
      }

      v4 = v6 | 0x70340000;
      goto LABEL_108;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1953903153)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1937126451)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat <= 1936077875)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077360)
          {
            return 16;
          }

          v5 = 1936077362;
        }

        else
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1936077876 || UncompressedPixelFormatFromCompressedPixelFormat == 1937125936)
          {
            return 16;
          }

          v5 = 1937125938;
        }

        goto LABEL_112;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1952854577)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1937126452)
        {
          return 16;
        }

        v8 = 1952854576;
LABEL_117:
        if (UncompressedPixelFormatFromCompressedPixelFormat == v8)
        {
          return 12;
        }

        return 8;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1952854578 || UncompressedPixelFormatFromCompressedPixelFormat == 1952855092)
      {
        return 12;
      }

      v7 = 12848;
    }

    else
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 2016687155)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 2019963955)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 2019963956)
          {
            return 10;
          }

          return 8;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 2016687156 || UncompressedPixelFormatFromCompressedPixelFormat == 2019963440)
        {
          return 10;
        }

        v4 = 2019963442;
        goto LABEL_108;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat > 1999843441)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1999843442 || UncompressedPixelFormatFromCompressedPixelFormat == 2016686640)
        {
          return 10;
        }

        v4 = 2016686642;
        goto LABEL_108;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1953903154)
      {
        return 12;
      }

      v7 = 13364;
    }

    v8 = v7 | 0x74760000;
    goto LABEL_117;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 1378955370)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 1650946097)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1651926375)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat > 1651798065)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat == 1651798066)
          {
            return 12;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1651847472)
          {
            return 10;
          }

          return 8;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 1650946098)
        {
          return 12;
        }

        v5 = 1651519798;
        goto LABEL_112;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1734501175)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 1651926376)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat != 1717855600 && UncompressedPixelFormatFromCompressedPixelFormat != 1717856627)
          {
            return 8;
          }

          return v2;
        }

        return 16;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1734501176)
      {
        return 8;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1734504496)
      {
        return 10;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat != 1734505012)
      {
        return 8;
      }

      return 14;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1647589489)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 1380410944)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1378955371)
        {
          return 10;
        }

        return 8;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1380410945)
      {
        return v2;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat != 1380411457)
      {
        v5 = 1647392369;
        goto LABEL_112;
      }

      return 16;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1650942775)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1647589490)
      {
        return 16;
      }

      v5 = 1647719528;
      goto LABEL_112;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 1650942776)
    {
      return 8;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 1650943796)
    {
      return 14;
    }

    v4 = 1650946096;
LABEL_108:
    if (UncompressedPixelFormatFromCompressedPixelFormat == v4)
    {
      return 10;
    }

    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 875836533)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 875704421)
    {
      return 8;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat > 825437746)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 825437747)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 843264056)
        {
          v5 = 843264310;
          goto LABEL_112;
        }

        return 8;
      }

      return 16;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 32)
    {
      return 8;
    }

    v5 = 825306677;
LABEL_112:
    if (UncompressedPixelFormatFromCompressedPixelFormat == v5)
    {
      return 16;
    }

    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 1278226735)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1278555444)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 1278226736)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 1278226738)
        {
          v3 = 12598;
LABEL_65:
          v5 = v3 | 0x4C300000;
          goto LABEL_112;
        }

        return 12;
      }

      return 10;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 1278555445)
    {
      return 5;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 1279340600)
    {
      v5 = 1279340854;
      goto LABEL_112;
    }

    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 1278226488)
  {
    return 8;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat != 1278226534)
  {
    v3 = 12392;
    goto LABEL_65;
  }

  return v2;
}

uint64_t CMPhotoGetUsedBitDepthForPixelFormat(int a1)
{
  v1 = 32;
  if (a1 > 1734505011)
  {
    if (a1 > 1936077359)
    {
      if (a1 <= 1953903153)
      {
        if (a1 <= 1937126451)
        {
          if (a1 <= 1936077875)
          {
            if (a1 == 1936077360)
            {
              return 16;
            }

            v4 = 1936077362;
          }

          else
          {
            if (a1 == 1936077876 || a1 == 1937125936)
            {
              return 16;
            }

            v4 = 1937125938;
          }

          goto LABEL_124;
        }

        if (a1 <= 1952854577)
        {
          if (a1 == 1937126452)
          {
            return 16;
          }

          v4 = 1952854576;
          goto LABEL_124;
        }

        if (a1 == 1952854578 || a1 == 1952855092)
        {
          return 16;
        }

        v7 = 12848;
      }

      else
      {
        if (a1 > 2016687155)
        {
          if (a1 > 2019963955)
          {
            if (a1 == 2037741171 || a1 == 2037741158)
            {
              return 8;
            }

            v3 = 13364;
          }

          else
          {
            if (a1 == 2016687156 || a1 == 2019963440)
            {
              return 16;
            }

            v3 = 12850;
          }

          v4 = v3 | 0x78660000;
          goto LABEL_124;
        }

        if (a1 > 1999843441)
        {
          if (a1 != 1999843442)
          {
            if (a1 != 2016686640)
            {
              v4 = 2016686642;
              goto LABEL_124;
            }

            return 16;
          }

          return 10;
        }

        if (a1 == 1953903154)
        {
          return 16;
        }

        v7 = 13364;
      }

      v4 = v7 | 0x74760000;
      goto LABEL_124;
    }

    if (a1 <= 1882468913)
    {
      if (a1 <= 1751411058)
      {
        if (a1 <= 1735549751)
        {
          if (a1 == 1734505012)
          {
            return 16;
          }

          v4 = 1735549492;
          goto LABEL_124;
        }

        if (a1 != 1735549752)
        {
          if (a1 != 1735553072)
          {
            v4 = 1751410032;
            goto LABEL_124;
          }

          return 10;
        }

        return 8;
      }

      if (a1 <= 1815162993)
      {
        if (a1 == 1751411059)
        {
          return 16;
        }

        v4 = 1751527984;
        goto LABEL_124;
      }

      if (a1 == 1815162994)
      {
        return 10;
      }

      if (a1 == 1815491698)
      {
        return 16;
      }

      v5 = 12848;
    }

    else
    {
      if (a1 > 1919365989)
      {
        if (a1 <= 1919379251)
        {
          if (a1 == 1919365990)
          {
            return v1;
          }

          if (a1 != 1919365992)
          {
            v2 = 1919378232;
            goto LABEL_112;
          }

          return 16;
        }

        if (a1 == 1919379252)
        {
          return 16;
        }

        if (a1 != 1919381552)
        {
          v4 = 1932996149;
          goto LABEL_124;
        }

        return 10;
      }

      if (a1 > 1885745711)
      {
        if (a1 == 1885745712 || a1 == 1885745714)
        {
          return 10;
        }

        v6 = 1885746228;
LABEL_117:
        if (a1 != v6)
        {
          return 0;
        }

        return 10;
      }

      if (a1 == 1882468914)
      {
        return 10;
      }

      v5 = 13364;
    }

    v6 = v5 | 0x70340000;
    goto LABEL_117;
  }

  if (a1 > 1378955370)
  {
    if (a1 > 1650946097)
    {
      if (a1 > 1651926375)
      {
        if (a1 <= 1717856626)
        {
          if (a1 == 1651926376)
          {
            return 16;
          }

          if (a1 != 1652056888)
          {
            if (a1 != 1717855600)
            {
              return 0;
            }

            return v1;
          }

          return 8;
        }

        if (a1 == 1717856627)
        {
          return v1;
        }

        if (a1 == 1734501176)
        {
          return 8;
        }

        v6 = 1734504496;
        goto LABEL_117;
      }

      if (a1 <= 1651798065)
      {
        if (a1 != 1650946098)
        {
          v4 = 1651519798;
          goto LABEL_124;
        }
      }

      else if (a1 != 1651798066)
      {
        if (a1 != 1651847472)
        {
          v2 = 1651925816;
          goto LABEL_112;
        }

        return 16;
      }

      return 12;
    }

    if (a1 <= 1647589489)
    {
      if (a1 > 1380410944)
      {
        if (a1 == 1380410945)
        {
          return v1;
        }

        if (a1 != 1380411457)
        {
          v4 = 1647392369;
          goto LABEL_124;
        }

        return 16;
      }

      if (a1 != 1378955371)
      {
        v2 = 1380401729;
        goto LABEL_112;
      }

      return 10;
    }

    if (a1 <= 1650942775)
    {
      if (a1 == 1647589490)
      {
        return 16;
      }

      v4 = 1647719528;
      goto LABEL_124;
    }

    if (a1 != 1650942776)
    {
      if (a1 == 1650943796)
      {
        return 16;
      }

      v6 = 1650946096;
      goto LABEL_117;
    }

    return 8;
  }

  if (a1 <= 875836533)
  {
    if (a1 > 875704421)
    {
      if (a1 <= 875704933)
      {
        if (a1 == 875704422)
        {
          return 8;
        }

        v2 = 875704438;
      }

      else
      {
        if (a1 == 875704934 || a1 == 875704950)
        {
          return 8;
        }

        v2 = 875836518;
      }

LABEL_112:
      if (a1 != v2)
      {
        return 0;
      }

      return 8;
    }

    if (a1 > 825437746)
    {
      if (a1 != 825437747)
      {
        if (a1 != 843264056)
        {
          v4 = 843264310;
          goto LABEL_124;
        }

        return 8;
      }

      return 16;
    }

    if (a1 == 32)
    {
      return 8;
    }

    v4 = 825306677;
LABEL_124:
    if (a1 == v4)
    {
      return 16;
    }

    return 0;
  }

  if (a1 > 1278226735)
  {
    if (a1 <= 1278555444)
    {
      if ((a1 - 1278226736) > 6 || ((1 << (a1 - 48)) & 0x45) == 0)
      {
        return 0;
      }

      return 16;
    }

    if (a1 == 1278555445)
    {
      return 5;
    }

    if (a1 != 1279340600)
    {
      v4 = 1279340854;
      goto LABEL_124;
    }

    return 8;
  }

  if (a1 <= 1278226487)
  {
    if (a1 == 875836534)
    {
      return 8;
    }

    v2 = 1111970369;
    goto LABEL_112;
  }

  if (a1 == 1278226488)
  {
    return 8;
  }

  if (a1 != 1278226534)
  {
    v4 = 1278226536;
    goto LABEL_124;
  }

  return v1;
}

uint64_t VTDecompressionPluginClass_isHardwareSession(uint64_t a1)
{
  v1 = *(a1 + 64);
  propertyValueOut = 0;
  if (VTSessionCopyProperty(*(v1 + 8), *MEMORY[0x1E69839F0], *a1, &propertyValueOut))
  {
    v2 = 0;
  }

  else
  {
    v2 = FigCFEqual();
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  return v2;
}

uint64_t CMPhotoLeastCommonMultiple(uint64_t a1, uint64_t a2)
{
  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  if (v2)
  {
    if (v2 < 1)
    {
      v5 = v4;
    }

    else
    {
      do
      {
        v5 = v2;
        v2 = v4 % v2;
        v4 = v5;
      }

      while (v2);
    }
  }

  else if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return a2 * a1 / v5;
}

uint64_t SurfacePool_CleanupTimerHandler(uint64_t a1)
{
  result = FigSimpleMutexLock();
  if (!result)
  {
    if (*(a1 + 368) != -1)
    {
      v3 = OUTLINED_FUNCTION_12_5();
      v4 = dispatch_time(*(a1 + 384), *(a1 + 368));
      if (dispatch_time(*(a1 + 384), *(a1 + 376)) >= v3)
      {
        if (v4 < v3 && !*(a1 + 392))
        {
          ++*(a1 + 400);
          *(a1 + 392) = 1;
          Pool_Cleanup((a1 + 24), *(a1 + 96), *(a1 + 120), 1, 0);
          Pool_Cleanup((a1 + 168), *(a1 + 240), *(a1 + 264), 1, 0);
        }
      }

      else
      {
        SurfacePool_PerformFullClean(a1);
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t first_pixel_bgg4(void *a1, void *a2, int a3, int16x8_t a4, double a5, double a6, double a7, int8x16_t a8)
{
  v9 = *a1;
  v8 = (a1 + 1);
  *a4.i8 = vshr_n_u16(v9, 4uLL);
  *a2 = a4.i64[0];
  v10 = (a2 + 1);
  v11 = a3 - 4;
  if ((v11 & 7) != 0)
  {
    return sub_1A5954600();
  }

  else
  {
    return sub_1A5954620(v8, v10, v11, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1A5954620(uint16x8_t *a1, uint64_t a2, int a3, int16x8_t a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vshrq_n_u16(*a1, 4uLL);
  a4.i64[1] = v8.n128_u64[0];
  v9 = vandq_s8(vsubq_s16(v8, a4), a8);
  return process_pixel_blue0(&a1[1], a2, (a3 - 8), v8.n128_f64[1], v8, vshll_n_u16(*v9.i8, 2uLL), vshll_high_n_u16(v9, 2uLL));
}

uint64_t bitstream_write_code_blue0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_blue0(a1, a2, a3, a4, a5, a6, a7, v12);
  }

  else
  {
    return process_pixel_green0(a1, a2, a3, a4, a5, a9, a10, a11, a6, a7, v12);
  }
}

uint64_t bitstream_write_code_green0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, __n128 a11)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_green0(a1, a2, a3, a4, a5, a6, a7, v12);
  }

  else
  {
    return process_pixel_green1(a1, a2, a3, a4, a5, a9, a10, a11, a6, a7, v12);
  }
}

uint64_t bitstream_write_code_green1(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, __n128 a11)
{
  v11 = __OFSUB__(a8, a6);
  v12 = a8 - a6;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    return full_buffer_green1(a1, a2, a3, a4, a5, a6, a7, v12);
  }

  else
  {
    return process_pixel_red0(a1, a2, a3, a4, a5, a9, a10, a11, a6, a7, v12);
  }
}

uint64_t bitstream_write_code_red0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v8 = __OFSUB__(a8, a6);
  v9 = a8 - a6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    return full_buffer_red0(a1, a2, a3, a4, a5, a6, a7, v9);
  }

  else
  {
    return process_pixel_blue1();
  }
}

uint64_t bitstream_write_code_blue1(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11, double a12)
{
  v12 = __OFSUB__(a8, a6);
  v13 = a8 - a6;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    return full_buffer_blue1(a1, a2, a3, a4, a5, a6, a7, v13);
  }

  else
  {
    return process_pixel_green2(a1, a2, a3, a4, a5, a9, a10, a11, a12, a6, a7, v13);
  }
}

uint64_t bitstream_write_code_green2(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11, __n128 a12)
{
  v12 = __OFSUB__(a8, a6);
  v13 = a8 - a6;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    return full_buffer_green2(a1, a2, a3, a4, a5, a6, a7, v13);
  }

  else
  {
    return process_pixel_green3(a1, a2, a3, a4, a5, a9, a10, a11, a12, a6, a7, v13);
  }
}

uint64_t bitstream_write_code_green3(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11, __n128 a12)
{
  v12 = __OFSUB__(a8, a6);
  v13 = a8 - a6;
  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
    return full_buffer_green3(a1, a2, a3, a4, a5, a6, a7, v13);
  }

  else
  {
    return process_pixel_red1(a1, a2, a3, a4, a5, a9, a10, a11, a12, a6, a7, v13);
  }
}

uint64_t bitstream_write_code_red1(uint16x8_t *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int16x8_t a9, double a10, double a11, double a12, int8x16_t a13)
{
  v13 = __OFSUB__(a8, a6);
  v14 = a8 - a6;
  if ((v14 < 0) ^ v13 | (v14 == 0))
  {
    return full_buffer_red1(a1, a2, a3, a4, a5, a6, a7, v14);
  }

  else
  {
    return finish_quad_bgg4(a1, a2, a3, a4, a5, a6, a7, v14, a9, a10, a11, a12, a13);
  }
}

uint64_t finish_quad_bgg4(uint16x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, int16x8_t a9, double a10, double a11, double a12, int8x16_t a13)
{
  v13 = a7 | (a5 << a8);
  if (a3)
  {
    return sub_1A5954620(a1, a2, a3, a9, a10, a11, a12, a13);
  }

  else
  {
    return bitstream_write_flush_bgg4(a1, a2, a3, a4, a5, a6, v13);
  }
}

uint64_t bitstream_write_flush_bgg4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  if (a8 < 8)
  {
    return bitstream_write_quad_bgg4(a1, a2, a3, a4, a5, a6, a7);
  }

  v10 = a9 - a8;
  if (v10)
  {
    return flush_loop_bgg4(a1, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return done_bgg4(a1, a2);
  }
}

uint64_t flush_loop_bgg4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  do
  {
    HIDWORD(v8) = a7;
    LODWORD(v8) = a7;
    a7 = v8 >> 24;
    *a2++ = BYTE3(v8);
    v9 = __OFSUB__(a8, 8);
    a8 -= 8;
  }

  while (!((a8 < 0) ^ v9 | (a8 == 0)));
  return done_bgg4();
}

uint64_t first_pixel_luma(_DWORD *a1, __int32 *a2, int a3, int8x8_t a4)
{
  v5 = *a1;
  v4 = (a1 + 1);
  a4.i32[0] = v5;
  *a2 = v5;
  a4.i8[7] = HIBYTE(v5);
  if (((a3 - 4) & 7) != 0)
  {
    return process_quad_luma();
  }

  else
  {
    return process_pixel_luma(v4, a4);
  }
}

uint64_t process_quad_luma(__int32 *a1, uint64_t a2, int a3, uint64_t a4, double a5, int8x8_t a6)
{
  a6.i32[0] = *a1;
  v6 = vext_s8(*&a5, a6, 7uLL);
  HIBYTE(a5) = HIBYTE(*a1);
  v7.n128_u64[0] = vshll_n_u8(vsub_s8(a6, v6), 1uLL).u64[0];
  v7.n128_u64[1] = v7.n128_u64[0];
  return process_quad_luma4((a1 + 1), a2, (a3 - 4), a4, a5, v7);
}

uint64_t process_pixel_luma(double *a1, int8x8_t a2)
{
  v3 = *a1;
  _X0 = a1 + 1;
  __asm { PRFM            #0, [X0,#0x20] }

  return process_pixel_luma0(v3, vshll_n_u8(vsub_s8(*&v3, vext_s8(a2, *&v3, 7uLL)), 1uLL));
}

uint64_t bitstream_write_code_luma0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, float a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma0(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_luma1(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_luma1(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma1(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_luma2(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_luma2(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma2(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_luma3(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_luma3(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v8 = __OFSUB__(a8, a6);
  v9 = a8 - a6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    return full_buffer_luma3(a1, a2, a3, a4, a5, a6, a7, v9);
  }

  else
  {
    return process_pixel_luma4();
  }
}

uint64_t bitstream_write_code_luma4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma4(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_luma5(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_luma5(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma5(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_luma6(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_luma6(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_luma6(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_luma7(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_luma7(double *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int8x8_t a9)
{
  v9 = __OFSUB__(a8, a6);
  v10 = a8 - a6;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    return full_buffer_luma7(a1, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return finish_quad_luma(a1, a2, a3, a4, a5, a6, a7, v10, a9);
  }
}

uint64_t finish_quad_luma(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, int8x8_t a9)
{
  v9 = a7 | (a5 << a8);
  if (a3)
  {
    return process_pixel_luma(a1, a9);
  }

  else
  {
    return bitstream_write_flush_luma(a1, a2, a3, a4, a5, a6, v9);
  }
}

uint64_t bitstream_write_flush_luma@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  if (a8 < 8)
  {
    return bitstream_write_quad_luma(a1, a2, a3, a4, a5, a6, a7);
  }

  v10 = a9 - a8;
  if (v10)
  {
    return flush_loop_luma(a1, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return done_luma(a1, a2);
  }
}

uint64_t flush_loop_luma(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  do
  {
    HIDWORD(v8) = a7;
    LODWORD(v8) = a7;
    a7 = v8 >> 24;
    *a2++ = BYTE3(v8);
    v9 = __OFSUB__(a8, 8);
    a8 -= 8;
  }

  while (!((a8 < 0) ^ v9 | (a8 == 0)));
  return done_luma();
}

uint64_t first_pixel_chroma(_DWORD *a1, __int32 *a2, int a3, int8x8_t a4)
{
  v5 = *a1;
  v4 = (a1 + 1);
  a4.i32[0] = v5;
  *a2 = v5;
  a4.i16[3] = HIWORD(v5);
  if (((a3 - 4) & 7) != 0)
  {
    return process_quad_chroma();
  }

  else
  {
    return process_pixel_luma(v4, a4);
  }
}

uint64_t process_quad_chroma(__int32 *a1, uint64_t a2, int a3, uint64_t a4, double a5, int8x8_t a6)
{
  a6.i32[0] = *a1;
  v6 = vext_s8(*&a5, a6, 6uLL);
  HIWORD(a5) = HIWORD(*a1);
  v7.n128_u64[0] = vshll_n_u8(vsub_s8(a6, v6), 1uLL).u64[0];
  v7.n128_u64[1] = v7.n128_u64[0];
  return process_quad_chroma4((a1 + 1), a2, (a3 - 4), a4, a5, v7);
}

uint64_t process_pixel_chroma(double *a1, int8x8_t a2)
{
  v3 = *a1;
  _X0 = a1 + 1;
  __asm { PRFM            #0, [X0,#0x20] }

  return process_pixel_chroma0(v3, vshll_n_u8(vsub_s8(*&v3, vext_s8(a2, *&v3, 6uLL)), 1uLL));
}

uint64_t bitstream_write_code_chroma0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, float a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma0(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_chroma1(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_chroma1(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma1(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_chroma2(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_chroma2(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, double a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma2(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_chroma3(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_chroma3(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v8 = __OFSUB__(a8, a6);
  v9 = a8 - a6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    return full_buffer_chroma3(a1, a2, a3, a4, a5, a6, a7, v9);
  }

  else
  {
    return process_pixel_chroma4();
  }
}

uint64_t bitstream_write_code_chroma4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma4(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_chroma5(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_chroma5(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma5(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_chroma6(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_chroma6(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, double a9, __n128 a10)
{
  v10 = __OFSUB__(a8, a6);
  v11 = a8 - a6;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    return full_buffer_chroma6(a1, a2, a3, a4, a5, a6, a7, v11);
  }

  else
  {
    return process_pixel_chroma7(a1, a2, a3, a4, a5, a9, a10, a6, a7, v11);
  }
}

uint64_t bitstream_write_code_chroma7(double *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int8x8_t a9)
{
  v9 = __OFSUB__(a8, a6);
  v10 = a8 - a6;
  if ((v10 < 0) ^ v9 | (v10 == 0))
  {
    return full_buffer_chroma7(a1, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return finish_quad_chroma(a1, a2, a3, a4, a5, a6, a7, v10, a9);
  }
}

uint64_t finish_quad_chroma(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, int8x8_t a9)
{
  v9 = a7 | (a5 << a8);
  if (a3)
  {
    return process_pixel_chroma(a1, a9);
  }

  else
  {
    return bitstream_write_flush_chroma(a1, a2, a3, a4, a5, a6, v9);
  }
}

uint64_t bitstream_write_flush_chroma@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  if (a8 < 8)
  {
    return bitstream_write_quad_chroma(a1, a2, a3, a4, a5, a6, a7);
  }

  v10 = a9 - a8;
  if (v10)
  {
    return flush_loop_chroma(a1, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    return done_chroma(a1, a2);
  }
}

uint64_t flush_loop_chroma(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  do
  {
    HIDWORD(v8) = a7;
    LODWORD(v8) = a7;
    a7 = v8 >> 24;
    *a2++ = BYTE3(v8);
    v9 = __OFSUB__(a8, 8);
    a8 -= 8;
  }

  while (!((a8 < 0) ^ v9 | (a8 == 0)));
  return done_chroma();
}

uint64_t CMPhotoDNGCompressLineASM(uint64_t a1, __n128 a2)
{
  a2.n128_u16[0] = *(a1 + 40);
  a2.n128_u16[1] = *(a1 + 44);
  return sub_1A5955088(a2);
}

uint64_t sub_1A5955088(uint64_t a1, int16x8_t a2)
{
  do
  {
    v7 = *v3++;
    v6 -= 8;
    v8 = vshrq_n_u16(vshlq_n_s16(v7, 2uLL), 4uLL);
    a2.i32[1] = v8.i32[0];
    a2.i64[1] = *(v8.i64 + 4);
    a2 = vsubq_s16(v8, a2);
    v9 = vshll_n_s16(*a2.i8, 2uLL);
    v10 = vshll_high_n_s16(a2, 2uLL);
    a2.i32[0] = v8.i32[3];
    v11 = *(v2 + v9.i32[0]);
    v12 = (*(v2 + v9.i32[0]) >> 8);
    v13 = __OFSUB__(v5, v11);
    v14 = v5 - v11;
    if (v14 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v15 = v4 | (v12 << v14);
    v16 = *(v2 + v9.i32[1]);
    v17 = (*(v2 + v9.i32[1]) >> 8);
    v13 = __OFSUB__(v14, v16);
    v18 = v14 - v16;
    if (v18 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v19 = v15 | (v17 << v18);
    v20 = *(v2 + v9.i32[2]);
    v21 = (*(v2 + v9.i32[2]) >> 8);
    v13 = __OFSUB__(v18, v20);
    v22 = v18 - v20;
    if (v22 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v23 = v19 | (v21 << v22);
    v24 = *(v2 + v9.i32[3]);
    v25 = (*(v2 + v9.i32[3]) >> 8);
    v13 = __OFSUB__(v22, v24);
    v26 = v22 - v24;
    if (v26 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v27 = v23 | (v25 << v26);
    v28 = *(v2 + v10.i32[0]);
    v29 = (*(v2 + v10.i32[0]) >> 8);
    v13 = __OFSUB__(v26, v28);
    v30 = v26 - v28;
    if (v30 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v31 = v27 | (v29 << v30);
    v32 = *(v2 + v10.i32[1]);
    v33 = (*(v2 + v10.i32[1]) >> 8);
    v13 = __OFSUB__(v30, v32);
    v34 = v30 - v32;
    if (v34 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v35 = v31 | (v33 << v34);
    v36 = *(v2 + v10.i32[2]);
    v37 = (*(v2 + v10.i32[2]) >> 8);
    v13 = __OFSUB__(v34, v36);
    v38 = v34 - v36;
    if (v38 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v39 = v35 | (v37 << v38);
    v40 = *(v2 + v10.i32[3]);
    v41 = (*(v2 + v10.i32[3]) >> 8);
    v13 = __OFSUB__(v38, v40);
    v5 = v38 - v40;
    if (v5 < 0 != v13)
    {
      a1 = write_bitbuffer();
    }

    v4 = v39 | (v41 << v5);
  }

  while (v6);
  return done(a1);
}

uint64_t done(uint64_t result)
{
  *(result + 8) = v1;
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(result + 32) = v4;
  return result;
}

void byte_0()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_1();
}

void byte_1()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_2();
}

void byte_2()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_3();
}

void byte_3()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_4();
}

void byte_4()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_5();
}

void byte_5()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_6();
}

void byte_6()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  byte_7();
}

void byte_7()
{
  *v0 = HIBYTE(v1);
  v2 = v0 + 1;
  if (HIBYTE(v1) == 255)
  {
    *v2 = 0;
  }

  write_bitbuffer_done();
}

uint64_t SlimXEncodeBlocks_NEON(uint64_t *a1)
{
  v1071 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[2];
  v5 = *(a1 + 8);
  v4 = *(a1 + 9);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = predictionPattern[v5];
  v9 = a1[10];
  v10 = *(v9 + 128);
  if (v10 && *(v9 + 88) + v10 - v3 < 160)
  {
    return 4294951888;
  }

  v11 = 4294951891;
  v12 = vdupq_n_s16(-v4);
  switch(v5)
  {
    case 0:
      v185 = vmovl_u8(*v2);
      v186 = vmovl_u8(*(v2 + 8));
      v183 = vmovl_u8(*(v2 + v7));
      v184 = vmovl_u8(*(v2 + v7 + 8));
      v189 = (v2 + v7 + v7);
      v181 = vmovl_u8(*v189);
      v182 = vmovl_u8(v189[1]);
      v190 = (v189 + v7);
      v187 = vmovl_u8(*v190);
      v188 = vmovl_u8(v190[1]);
      goto LABEL_40;
    case 1:
      v13 = vmovl_u8(*v2);
      v14 = vmovl_u8(*(v2 + 8));
      v15 = vmovl_u8(*(v2 + v7));
      v16 = vmovl_u8(*(v2 + v7 + 8));
      v226 = (v2 + v7 + v7);
      v18 = vmovl_u8(*v226);
      v19 = vmovl_u8(v226[1]);
      v227 = (v226 + v7);
      v21 = vmovl_u8(*v227);
      v22 = vmovl_u8(v227[1]);
      goto LABEL_47;
    case 2:
      v128 = vmovl_u8(*v2);
      v129 = vmovl_u8(*(v2 + v7));
      v130 = (v2 + v7 + v7);
      v131 = vmovl_u8(*v130);
      v132 = (v130 + v7);
      v133 = vmovl_u8(*v132);
      v134 = (v132 + v7);
      v135 = vmovl_u8(*v134);
      v136 = (v134 + v7);
      v137 = vmovl_u8(*v136);
      v138 = (v136 + v7);
      v139 = vmovl_u8(*v138);
      v140 = vmovl_u8(*(v138 + v7));
      v26 = vtrn1q_s16(v128, v135);
      v141 = vtrn2q_s16(v128, v135);
      v28 = vtrn1q_s16(v131, v139);
      v142 = vtrn2q_s16(v131, v139);
      v143 = vtrn1q_s16(v129, v137);
      v31 = vtrn2q_s16(v129, v137);
      v144 = vtrn1q_s16(v133, v140);
      v33 = vtrn2q_s16(v133, v140);
      v29 = vzip2q_s64(v143, v141);
      v27.i64[0] = v143.i64[0];
      v27.i64[1] = v141.i64[0];
      v32 = vzip2q_s64(v144, v142);
      v30.i64[0] = v144.i64[0];
      v30.i64[1] = v142.i64[0];
      goto LABEL_64;
    case 3:
      v191 = vmovl_u8(*v2);
      v192 = vmovl_u8(*(v2 + v7));
      v193 = (v2 + v7 + v7);
      v194 = vmovl_u8(*v193);
      v195 = (v193 + v7);
      v196 = vmovl_u8(*v195);
      v197 = (v195 + v7);
      v198 = vmovl_u8(*v197);
      v199 = (v197 + v7);
      v200 = vmovl_u8(*v199);
      v201 = (v199 + v7);
      v202 = vmovl_u8(*v201);
      v203 = vmovl_u8(*(v201 + v7));
      v26 = vtrn1q_s32(v191, v198);
      v204 = vtrn2q_s32(v191, v198);
      v28 = vtrn1q_s32(v192, v200);
      v205 = vtrn2q_s32(v192, v200);
      v206 = vtrn1q_s32(v194, v202);
      v31 = vtrn2q_s32(v194, v202);
      v207 = vtrn1q_s32(v196, v203);
      v33 = vtrn2q_s32(v196, v203);
      v27 = vzip1q_s64(v206, v204);
      v29 = vzip2q_s64(v206, v204);
      v30 = vzip1q_s64(v207, v205);
      v32 = vzip2q_s64(v207, v205);
      goto LABEL_64;
    case 6:
      v145 = vmovl_u8(*v2);
      v146 = vmovl_u8(*(v2 + 8));
      v147 = vmovl_u8(*(v2 + v7));
      v148 = vmovl_u8(*(v2 + v7 + 8));
      v149 = (v2 + v7 + v7);
      v150 = vmovl_u8(*v149);
      v151 = vmovl_u8(v149[1]);
      v152 = (v149 + v7);
      v153 = vmovl_u8(*v152);
      v154 = vmovl_u8(v152[1]);
      if (v4)
      {
        v145 = vshlq_u16(v145, v12);
        v147 = vshlq_u16(v147, v12);
        v150 = vshlq_u16(v150, v12);
        v153 = vshlq_u16(v153, v12);
        v146 = vshlq_u16(v146, v12);
        v148 = vshlq_u16(v148, v12);
        v151 = vshlq_u16(v151, v12);
        v154 = vshlq_u16(v154, v12);
      }

      v155 = vtrn1q_s32(v145, v146);
      v156 = vtrn2q_s32(v145, v146);
      v157 = vtrn1q_s32(v147, v148);
      v158 = vtrn2q_s32(v147, v148);
      v159 = vtrn1q_s32(v150, v151);
      v160 = vtrn2q_s32(v150, v151);
      v161 = vtrn1q_s32(v153, v154);
      v162 = vtrn2q_s32(v153, v154);
      v26 = vtrn1q_s16(v155, v159);
      v27 = vtrn2q_s16(v155, v159);
      v28 = vtrn1q_s16(v157, v161);
      v30 = vtrn2q_s16(v157, v161);
      v29 = vtrn1q_s16(v156, v160);
      v31 = vtrn2q_s16(v156, v160);
      v32 = vtrn1q_s16(v158, v162);
      v33 = vtrn2q_s16(v158, v162);
      goto LABEL_64;
    case 7:
      v1070 = 0uLL;
      v1069 = 0uLL;
      vectorload_1x16_packed10(v2, v6, &v1070, &v1069);
      v1028 = v1069;
      v1040 = v1070;
      v179 = (v2 + v7);
      vectorload_1x16_packed10(v179, v6, &v1070, &v1069);
      v1009 = v1069;
      v1018 = v1070;
      v180 = (v179 + v7);
      vectorload_1x16_packed10(v180, v6, &v1070, &v1069);
      v996 = v1069;
      v1002 = v1070;
      vectorload_1x16_packed10((v180 + v7), v6, &v1070, &v1069);
      v182 = v996;
      v181 = v1002;
      v184 = v1009;
      v183 = v1018;
      v186 = v1028;
      v185 = v1040;
      v188 = v1069;
      v187 = v1070;
LABEL_40:
      v26.i64[0] = v185.i64[0];
      v26.i64[1] = v181.i64[0];
      v27 = vzip2q_s64(v185, v181);
      v28.i64[0] = v183.i64[0];
      v28.i64[1] = v187.i64[0];
      v29.i64[0] = v186.i64[0];
      v29.i64[1] = v182.i64[0];
      v30 = vzip2q_s64(v183, v187);
      v31 = vzip2q_s64(v186, v182);
      v32.i64[0] = v184.i64[0];
      v32.i64[1] = v188.i64[0];
      v33 = vzip2q_s64(v184, v188);
      goto LABEL_64;
    case 8:
      v1070 = 0uLL;
      v1069 = 0uLL;
      vectorload_1x16_packed10(v2, v6, &v1070, &v1069);
      v1029 = v1069;
      v1041 = v1070;
      v228 = (v2 + v7);
      vectorload_1x16_packed10(v228, v6, &v1070, &v1069);
      v1010 = v1069;
      v1019 = v1070;
      v229 = (v228 + v7);
      vectorload_1x16_packed10(v229, v6, &v1070, &v1069);
      v997 = v1069;
      v1003 = v1070;
      vectorload_1x16_packed10((v229 + v7), v6, &v1070, &v1069);
      v19 = v997;
      v18 = v1003;
      v16 = v1010;
      v15 = v1019;
      v14 = v1029;
      v13 = v1041;
      v22 = v1069;
      v21 = v1070;
      goto LABEL_47;
    case 10:
    case 24:
      v13 = *v2;
      v14 = *(v2 + 16);
      v15 = *(v2 + v7);
      v16 = *(v2 + v7 + 16);
      v17 = (v2 + v7 + v7);
      v18 = *v17;
      v19 = v17[1];
      v20 = (v17 + v7);
      v21 = *v20;
      v22 = v20[1];
      if (*(a1 + 40))
      {
        v23 = vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(vshlq_n_s16(v13, 0xCuLL), vshlq_n_s16(v15, 0xCuLL)), vshlq_n_s16(v18, 0xCuLL)), vshlq_n_s16(v21, 0xCuLL)), vshlq_n_s16(v14, 0xCuLL)), vshlq_n_s16(v16, 0xCuLL)), vshlq_n_s16(v19, 0xCuLL)), vshlq_n_s16(v22, 0xCuLL));
        v23.i16[0] = vmaxvq_u16(v23);
        if (v23.i32[0])
        {
          return 4294951887;
        }
      }

      if (v4)
      {
        v13 = vshlq_u16(v13, v12);
        v15 = vshlq_u16(v15, v12);
        v18 = vshlq_u16(v18, v12);
        v21 = vshlq_u16(v21, v12);
        v14 = vshlq_u16(v14, v12);
        v16 = vshlq_u16(v16, v12);
        v19 = vshlq_u16(v19, v12);
        v22 = vshlq_u16(v22, v12);
      }

      if (v5 == 11)
      {
LABEL_47:
        v26 = vtrn1q_s16(v13, v18);
        v27 = vtrn2q_s16(v13, v18);
        v28 = vtrn1q_s16(v15, v21);
        v30 = vtrn2q_s16(v15, v21);
        v29 = vtrn1q_s16(v14, v19);
        v31 = vtrn2q_s16(v14, v19);
        v32 = vtrn1q_s16(v16, v22);
        v33 = vtrn2q_s16(v16, v22);
      }

      else
      {
        v26.i64[0] = v13.i64[0];
        v26.i64[1] = v18.i64[0];
        v27 = vzip2q_s64(v13, v18);
        v28.i64[0] = v15.i64[0];
        v28.i64[1] = v21.i64[0];
        v29.i64[0] = v14.i64[0];
        v29.i64[1] = v19.i64[0];
        v30 = vzip2q_s64(v15, v21);
        v31 = vzip2q_s64(v14, v19);
        v32.i64[0] = v16.i64[0];
        v32.i64[1] = v22.i64[0];
        v33 = vzip2q_s64(v16, v22);
      }

LABEL_61:
      if (v5 >= 0x11 && *(a1 + 27))
      {
        v287 = *(a1 + 56);
        v288 = vdupq_n_s16(16 - v287);
        v289 = vdupq_n_s16(v287 - 1);
        v290 = vdupq_n_s16(-v287);
        v291 = vqsubq_u16(v288, vclzq_s16(v26));
        v292.i64[0] = -1;
        v292.i64[1] = -1;
        v293.i64[0] = 0x1000100010001;
        v293.i64[1] = 0x1000100010001;
        v26 = vaddq_s16(vshlq_u16(v291, v289), vshlq_u16(vaddq_s16(vsubq_s16(v26, vshlq_u16(v26, v290)), vshlq_u16(v293, vaddq_s16(v291, v292))), vnegq_s16(v291)));
        v294 = vqsubq_u16(v288, vclzq_s16(v28));
        v28 = vaddq_s16(vshlq_u16(v294, v289), vshlq_u16(vaddq_s16(vsubq_s16(v28, vshlq_u16(v28, v290)), vshlq_u16(v293, vaddq_s16(v294, v292))), vnegq_s16(v294)));
        v295 = vqsubq_u16(v288, vclzq_s16(v27));
        v27 = vaddq_s16(vshlq_u16(v295, v289), vshlq_u16(vaddq_s16(vsubq_s16(v27, vshlq_u16(v27, v290)), vshlq_u16(v293, vaddq_s16(v295, v292))), vnegq_s16(v295)));
        v296 = vqsubq_u16(v288, vclzq_s16(v30));
        v30 = vaddq_s16(vshlq_u16(v296, v289), vshlq_u16(vaddq_s16(vsubq_s16(v30, vshlq_u16(v30, v290)), vshlq_u16(v293, vaddq_s16(v296, v292))), vnegq_s16(v296)));
        v297 = vqsubq_u16(v288, vclzq_s16(v29));
        v29 = vaddq_s16(vshlq_u16(v297, v289), vshlq_u16(vaddq_s16(vsubq_s16(v29, vshlq_u16(v29, v290)), vshlq_u16(v293, vaddq_s16(v297, v292))), vnegq_s16(v297)));
        v298 = vqsubq_u16(v288, vclzq_s16(v32));
        v32 = vaddq_s16(vshlq_u16(v298, v289), vshlq_u16(vaddq_s16(vsubq_s16(v32, vshlq_u16(v32, v290)), vshlq_u16(v293, vaddq_s16(v298, v292))), vnegq_s16(v298)));
        v299 = vqsubq_u16(v288, vclzq_s16(v31));
        v31 = vaddq_s16(vshlq_u16(v299, v289), vshlq_u16(vaddq_s16(vsubq_s16(v31, vshlq_u16(v31, v290)), vshlq_u16(v293, vaddq_s16(v299, v292))), vnegq_s16(v299)));
        v300 = vqsubq_u16(v288, vclzq_s16(v33));
        v33 = vaddq_s16(vshlq_u16(v300, v289), vshlq_u16(vaddq_s16(vsubq_s16(v33, vshlq_u16(v33, v290)), vshlq_u16(v293, vaddq_s16(v300, v292))), vnegq_s16(v300)));
      }

LABEL_64:
      v301 = a1 + 21;
      v302 = vminq_u16(v26, v28);
      v302.i16[0] = vminvq_u16(v302);
      v303 = v302.i32[0];
      v304 = vmaxq_u16(v26, v28);
      v304.i16[0] = vmaxvq_u16(v304);
      v305 = (a1 + ((v8 >> 9) & 0x7FFFF8) + 42);
      v306 = v304.i32[0] - v303;
      v307 = __clz(v304.i32[0] - v303);
      *(a1 + 22) = 32 - v307 - *v305;
      *(a1 + 21) = 32 - v307;
      v308 = 1 << -v307;
      v309 = v305[2];
      if (v303 < v309 || (v308 + v309) <= v304.i32[0])
      {
        v311 = (v303 - ((v308 - v306) >> 1)) & ~((v303 - ((v308 - v306) >> 1)) >> 31);
        v312 = v311 - v309;
        LOWORD(v309) = v311;
      }

      else
      {
        v312 = 0;
      }

      *(a1 + 24) = v312;
      *(a1 + 23) = v309;
      v313 = vminq_u16(v27, v30);
      v313.i16[0] = vminvq_u16(v313);
      v314 = v313.i32[0];
      v315 = vmaxq_u16(v27, v30);
      v315.i16[0] = vmaxvq_u16(v315);
      v316 = &v301[4 * ((v8 >> 8) & 0xF)];
      v317 = v315.i32[0] - v314;
      v318 = __clz(v315.i32[0] - v314);
      *(a1 + 26) = 32 - v318 - *v316;
      *(a1 + 25) = 32 - v318;
      v319 = 1 << -v318;
      v320 = v316[2];
      if (v314 < v320 || (v319 + v320) <= v315.i32[0])
      {
        v322 = (v314 - ((v319 - v317) >> 1)) & ~((v314 - ((v319 - v317) >> 1)) >> 31);
        v323 = v322 - v320;
        LOWORD(v320) = v322;
      }

      else
      {
        v323 = 0;
      }

      *(a1 + 28) = v323;
      *(a1 + 27) = v320;
      v324 = vminq_u16(v29, v32);
      v324.i16[0] = vminvq_u16(v324);
      v325 = v324.i32[0];
      v326 = vmaxq_u16(v29, v32);
      v326.i16[0] = vmaxvq_u16(v326);
      v327 = &v301[4 * (v8 >> 4)];
      v328 = v326.i32[0] - v325;
      v329 = __clz(v326.i32[0] - v325);
      *(a1 + 30) = 32 - v329 - *v327;
      *(a1 + 29) = 32 - v329;
      v330 = 1 << -v329;
      v331 = v327[2];
      if (v325 < v331 || (v330 + v331) <= v326.i32[0])
      {
        v333 = (v325 - ((v330 - v328) >> 1)) & ~((v325 - ((v330 - v328) >> 1)) >> 31);
        v334 = v333 - v331;
        LOWORD(v331) = v333;
      }

      else
      {
        v334 = 0;
      }

      *(a1 + 32) = v334;
      *(a1 + 31) = v331;
      if (v5 == 19)
      {
        v335 = *(a1 + 36);
      }

      else
      {
        v336 = vminq_u16(v31, v33);
        v336.i16[0] = vminvq_u16(v336);
        v337 = v336.i32[0];
        v338 = vmaxq_u16(v31, v33);
        v338.i16[0] = vmaxvq_u16(v338);
        v339 = &v301[4 * (v8 & 0xF)];
        v340 = __clz(v338.i32[0] - v337);
        *(a1 + 34) = 32 - v340 - *v339;
        *(a1 + 33) = 32 - v340;
        v341 = 1 << -v340;
        v342 = v339[2];
        if (v337 < v342 || (v341 + v342) <= v338.i32[0])
        {
          v343 = (v337 - ((v341 - (v338.i32[0] - v337)) >> 1)) & ~((v337 - ((v341 - (v338.i32[0] - v337)) >> 1)) >> 31);
          v335 = v343 - v342;
        }

        else
        {
          v335 = 0;
          LOWORD(v343) = v342;
        }

        *(a1 + 36) = v335;
        *(a1 + 35) = v343;
      }

      v344 = 0;
      v345 = 0;
      v346 = 0;
      v347 = 0;
      v360 = v312 == 0;
      v348 = v312 != 0;
      if (v360)
      {
        v349 = 2;
      }

      else
      {
        v349 = 3;
      }

      if (v323)
      {
        v348 = v349;
      }

      if (v334)
      {
        v348 |= 4u;
      }

      if (v335)
      {
        v348 |= 8u;
      }

      v350 = a1 + 22;
      break;
    case 11:
    case 25:
      v13 = *v2;
      v14 = *(v2 + 16);
      v15 = *(v2 + v7);
      v16 = *(v2 + v7 + 16);
      v24 = (v2 + v7 + v7);
      v18 = *v24;
      v19 = v24[1];
      v25 = (v24 + v7);
      v21 = *v25;
      v22 = v25[1];
      if (!v4)
      {
        goto LABEL_47;
      }

      goto LABEL_37;
    case 12:
      v72 = (v2 + v7 + v7);
      v73 = *v72;
      v74 = v72[1];
      v75 = (v72 + v7);
      v76 = veorq_s8((*&vcltzq_s16(*v2) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v2);
      v77 = veorq_s8((*&vcltzq_s16(*(v2 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7));
      v78 = veorq_s8((*&vcltzq_s16(v73) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v73);
      v79 = veorq_s8((*&vcltzq_s16(*v75) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v75);
      v80 = veorq_s8((*&vcltzq_s16(*(v2 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + 16));
      v81 = veorq_s8((*&vcltzq_s16(*(v2 + v7 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7 + 16));
      v82 = veorq_s8((*&vcltzq_s16(v74) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v74);
      v83 = veorq_s8((*&vcltzq_s16(v75[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v75[1]);
      if (v4)
      {
        v76 = vshlq_u16(v76, v12);
        v77 = vshlq_u16(v77, v12);
        v78 = vshlq_u16(v78, v12);
        v79 = vshlq_u16(v79, v12);
        v80 = vshlq_u16(v80, v12);
        v81 = vshlq_u16(v81, v12);
        v82 = vshlq_u16(v82, v12);
        v83 = vshlq_u16(v83, v12);
      }

      v84 = vtrn1q_s32(v76, v80);
      v85 = vtrn2q_s32(v76, v80);
      v86 = vtrn1q_s32(v77, v81);
      v87 = vtrn2q_s32(v77, v81);
      v88 = vtrn1q_s32(v78, v82);
      v89 = vtrn2q_s32(v78, v82);
      v90 = vtrn1q_s32(v79, v83);
      v91 = vtrn2q_s32(v79, v83);
      v26 = vtrn1q_s16(v84, v88);
      v27 = vtrn2q_s16(v84, v88);
      v28 = vtrn1q_s16(v86, v90);
      v30 = vtrn2q_s16(v86, v90);
      v29 = vtrn1q_s16(v85, v89);
      v31 = vtrn2q_s16(v85, v89);
      v32 = vtrn1q_s16(v87, v91);
      v33 = vtrn2q_s16(v87, v91);
      goto LABEL_64;
    case 13:
      v51 = (v2 + v7 + v7);
      v52 = *v51;
      v53 = (v51 + v7);
      v54 = *v53;
      v55 = (v53 + v7);
      v56 = *v55;
      v57 = (v55 + v7);
      v58 = *v57;
      v59 = (v57 + v7);
      v60 = veorq_s8((*&vcltzq_s16(*v2) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v2);
      v61 = veorq_s8((*&vcltzq_s16(v52) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v52);
      v62 = veorq_s8((*&vcltzq_s16(*(v2 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7));
      v63 = veorq_s8((*&vcltzq_s16(v54) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v54);
      v64 = veorq_s8((*&vcltzq_s16(v56) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v56);
      v65 = veorq_s8((*&vcltzq_s16(*v59) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v59);
      v66 = veorq_s8((*&vcltzq_s16(v58) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v58);
      v67 = veorq_s8((*&vcltzq_s16(*(v59 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v59 + v7));
      if (v4)
      {
        v60 = vshlq_u16(v60, v12);
        v61 = vshlq_u16(v61, v12);
        v62 = vshlq_u16(v62, v12);
        v63 = vshlq_u16(v63, v12);
        v64 = vshlq_u16(v64, v12);
        v65 = vshlq_u16(v65, v12);
        v66 = vshlq_u16(v66, v12);
        v67 = vshlq_u16(v67, v12);
      }

      v26 = vtrn1q_s16(v60, v64);
      v68 = vtrn2q_s16(v60, v64);
      v28 = vtrn1q_s16(v61, v65);
      v69 = vtrn2q_s16(v61, v65);
      v70 = vtrn1q_s16(v62, v66);
      v31 = vtrn2q_s16(v62, v66);
      v71 = vtrn1q_s16(v63, v67);
      v33 = vtrn2q_s16(v63, v67);
      v29 = vzip2q_s64(v70, v68);
      v27.i64[0] = v70.i64[0];
      v27.i64[1] = v68.i64[0];
      v32 = vzip2q_s64(v71, v69);
      v30.i64[0] = v71.i64[0];
      v30.i64[1] = v69.i64[0];
      goto LABEL_64;
    case 14:
      v247 = (v2 + v7 + v7);
      v248 = *v247;
      v249 = (v247 + v7);
      v250 = *v249;
      v251 = (v249 + v7);
      v252 = *v251;
      v253 = (v251 + v7);
      v254 = *v253;
      v255 = (v253 + v7);
      v256 = veorq_s8((*&vcltzq_s16(*v2) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v2);
      v257 = veorq_s8((*&vcltzq_s16(*(v2 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7));
      v258 = veorq_s8((*&vcltzq_s16(v248) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v248);
      v259 = veorq_s8((*&vcltzq_s16(v250) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v250);
      v260 = veorq_s8((*&vcltzq_s16(v252) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v252);
      v261 = veorq_s8((*&vcltzq_s16(v254) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v254);
      v262 = veorq_s8((*&vcltzq_s16(*v255) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v255);
      v263 = veorq_s8((*&vcltzq_s16(*(v255 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v255 + v7));
      if (v4)
      {
        v256 = vshlq_u16(v256, v12);
        v257 = vshlq_u16(v257, v12);
        v258 = vshlq_u16(v258, v12);
        v259 = vshlq_u16(v259, v12);
        v260 = vshlq_u16(v260, v12);
        v261 = vshlq_u16(v261, v12);
        v262 = vshlq_u16(v262, v12);
        v263 = vshlq_u16(v263, v12);
      }

      v26 = vtrn1q_s32(v256, v260);
      v264 = vtrn2q_s32(v256, v260);
      v28 = vtrn1q_s32(v257, v261);
      v265 = vtrn2q_s32(v257, v261);
      v266 = vtrn1q_s32(v258, v262);
      v31 = vtrn2q_s32(v258, v262);
      v267 = vtrn1q_s32(v259, v263);
      v33 = vtrn2q_s32(v259, v263);
      v27 = vzip1q_s64(v266, v264);
      v29 = vzip2q_s64(v266, v264);
      v30 = vzip1q_s64(v267, v265);
      v32 = vzip2q_s64(v267, v265);
      goto LABEL_64;
    case 15:
      v163 = (v2 + v7 + v7);
      v164 = *v163;
      v165 = v163[1];
      v166 = (v163 + v7);
      v167 = veorq_s8((*&vcltzq_s16(*v2) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v2);
      v168 = veorq_s8((*&vcltzq_s16(*(v2 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7));
      v169 = veorq_s8((*&vcltzq_s16(v164) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v164);
      v170 = veorq_s8((*&vcltzq_s16(*v166) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v166);
      v171 = veorq_s8((*&vcltzq_s16(*(v2 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + 16));
      v172 = veorq_s8((*&vcltzq_s16(*(v2 + v7 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7 + 16));
      v173 = veorq_s8((*&vcltzq_s16(v165) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v165);
      v174 = veorq_s8((*&vcltzq_s16(v166[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v166[1]);
      if (v4)
      {
        v167 = vshlq_u16(v167, v12);
        v168 = vshlq_u16(v168, v12);
        v169 = vshlq_u16(v169, v12);
        v170 = vshlq_u16(v170, v12);
        v171 = vshlq_u16(v171, v12);
        v172 = vshlq_u16(v172, v12);
        v173 = vshlq_u16(v173, v12);
        v174 = vshlq_u16(v174, v12);
      }

      v26.i64[0] = v167.i64[0];
      v26.i64[1] = v169.i64[0];
      v27 = vzip2q_s64(v167, v169);
      v28.i64[0] = v168.i64[0];
      v28.i64[1] = v170.i64[0];
      v29.i64[0] = v171.i64[0];
      v29.i64[1] = v173.i64[0];
      v30 = vzip2q_s64(v168, v170);
      v31 = vzip2q_s64(v171, v173);
      v32.i64[0] = v172.i64[0];
      v32.i64[1] = v174.i64[0];
      v33 = vzip2q_s64(v172, v174);
      goto LABEL_64;
    case 16:
      v175 = (v2 + v7 + v7);
      v176 = *v175;
      v177 = v175[1];
      v178 = (v175 + v7);
      v13 = veorq_s8((*&vcltzq_s16(*v2) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v2);
      v15 = veorq_s8((*&vcltzq_s16(*(v2 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7));
      v18 = veorq_s8((*&vcltzq_s16(v176) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v176);
      v21 = veorq_s8((*&vcltzq_s16(*v178) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v178);
      v14 = veorq_s8((*&vcltzq_s16(*(v2 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + 16));
      v16 = veorq_s8((*&vcltzq_s16(*(v2 + v7 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7 + 16));
      v19 = veorq_s8((*&vcltzq_s16(v177) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v177);
      v22 = veorq_s8((*&vcltzq_s16(v178[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v178[1]);
      if (v4)
      {
LABEL_37:
        v13 = vshlq_u16(v13, v12);
        v15 = vshlq_u16(v15, v12);
        v18 = vshlq_u16(v18, v12);
        v21 = vshlq_u16(v21, v12);
        v14 = vshlq_u16(v14, v12);
        v16 = vshlq_u16(v16, v12);
        v19 = vshlq_u16(v19, v12);
        v22 = vshlq_u16(v22, v12);
      }

      goto LABEL_47;
    case 17:
      v230 = *v2;
      v231 = *(v2 + v7);
      v232 = (v2 + v7 + v7);
      v233 = *v232;
      v234 = (v232 + v7);
      v235 = *v234;
      v236 = (v234 + v7);
      v237 = *v236;
      v238 = (v236 + v7);
      v239 = *v238;
      v240 = (v238 + v7);
      v241 = *v240;
      v242 = *(v240 + v7);
      if (v4)
      {
        v230 = vshlq_u16(v230, v12);
        v233 = vshlq_u16(v233, v12);
        v237 = vshlq_u16(v237, v12);
        v241 = vshlq_u16(v241, v12);
        v231 = vshlq_u16(v231, v12);
        v235 = vshlq_u16(v235, v12);
        v239 = vshlq_u16(v239, v12);
        v242 = vshlq_u16(v242, v12);
      }

      v27 = vtrn1q_s16(v237, v230);
      v243 = vtrn2q_s16(v237, v230);
      v30 = vtrn1q_s16(v241, v233);
      v244 = vtrn2q_s16(v241, v233);
      v245 = vtrn1q_s16(v231, v239);
      v31 = vtrn2q_s16(v231, v239);
      v246 = vtrn1q_s16(v235, v242);
      v33 = vtrn2q_s16(v235, v242);
      v26 = vtrn1q_s32(v243, v245);
      v29 = vtrn2q_s32(v243, v245);
      v28 = vtrn1q_s32(v244, v246);
      v32 = vtrn2q_s32(v244, v246);
      goto LABEL_61;
    case 18:
      v208 = *v2;
      v209 = *(v2 + 16);
      v210 = *(v2 + v7);
      v211 = *(v2 + v7 + 16);
      v212 = (v2 + v7 + v7);
      v213 = *v212;
      v214 = v212[1];
      v215 = (v212 + v7);
      v216 = *v215;
      v217 = v215[1];
      if (v4)
      {
        v208 = vshlq_u16(v208, v12);
        v210 = vshlq_u16(v210, v12);
        v213 = vshlq_u16(v213, v12);
        v216 = vshlq_u16(v216, v12);
        v209 = vshlq_u16(v209, v12);
        v211 = vshlq_u16(v211, v12);
        v214 = vshlq_u16(v214, v12);
        v217 = vshlq_u16(v217, v12);
      }

      v218 = vtrn1q_s32(v208, v209);
      v219 = vtrn2q_s32(v208, v209);
      v220 = vtrn1q_s32(v210, v211);
      v221 = vtrn2q_s32(v210, v211);
      v222 = vtrn1q_s32(v213, v214);
      v223 = vtrn2q_s32(v213, v214);
      v224 = vtrn1q_s32(v216, v217);
      v225 = vtrn2q_s32(v216, v217);
      v26 = vtrn1q_s16(v218, v222);
      v27 = vtrn2q_s16(v218, v222);
      v28 = vtrn1q_s16(v220, v224);
      v30 = vtrn2q_s16(v220, v224);
      v29 = vtrn1q_s16(v219, v223);
      v31 = vtrn2q_s16(v219, v223);
      v32 = vtrn1q_s16(v221, v225);
      v33 = vtrn2q_s16(v221, v225);
      goto LABEL_61;
    case 19:
      *v26.i8 = vld3_s16(v2);
      v280 = (v2 + v7);
      v1072 = vld3_s16(v280);
      v281 = (v280 + v7);
      v26.i64[1] = v1072.val[0];
      v27.i64[0] = v282;
      v27.i64[1] = v1072.val[1];
      *v28.i8 = vld3_s16(v281);
      v283 = (v281 + v7);
      v1073 = vld3_s16(v283);
      v29.i64[0] = v284;
      v29.i64[1] = v1072.val[2];
      v28.i64[1] = v1073.val[0];
      v30.i64[0] = v285;
      v30.i64[1] = v1073.val[1];
      v32.i64[0] = v286;
      v32.i64[1] = v1073.val[2];
      v33 = 0uLL;
      if (v4)
      {
        v26 = vshlq_u16(v26, v12);
        v28 = vshlq_u16(v28, v12);
        v27 = vshlq_u16(v27, v12);
        v30 = vshlq_u16(v30, v12);
        v29 = vshlq_u16(v29, v12);
        v32 = vshlq_u16(v32, v12);
      }

      v31 = 0uLL;
      goto LABEL_61;
    case 20:
      v112 = *v2;
      v113 = *(v2 + v7);
      v114 = (v2 + v7 + v7);
      v115 = *v114;
      v116 = (v114 + v7);
      v117 = *v116;
      v118 = (v116 + v7);
      v119 = *v118;
      v120 = (v118 + v7);
      v121 = *v120;
      v122 = (v120 + v7);
      v123 = *v122;
      v124 = *(v122 + v7);
      if (v4)
      {
        v112 = vshlq_u16(v112, v12);
        v115 = vshlq_u16(v115, v12);
        v113 = vshlq_u16(v113, v12);
        v117 = vshlq_u16(v117, v12);
        v119 = vshlq_u16(v119, v12);
        v123 = vshlq_u16(v123, v12);
        v121 = vshlq_u16(v121, v12);
        v124 = vshlq_u16(v124, v12);
      }

      v26 = vtrn1q_s16(v112, v119);
      v125 = vtrn2q_s16(v112, v119);
      v28 = vtrn1q_s16(v115, v123);
      v126 = vtrn2q_s16(v115, v123);
      v127 = vtrn1q_s16(v113, v121);
      v31 = vtrn2q_s16(v113, v121);
      v30 = vtrn1q_s16(v117, v124);
      v33 = vtrn2q_s16(v117, v124);
      v29 = vzip2q_s64(v127, v125);
      v27.i64[0] = v127.i64[0];
      v27.i64[1] = v125.i64[0];
      v32 = vzip2q_s64(v30, v126);
      goto LABEL_57;
    case 21:
      v268 = *v2;
      v269 = *(v2 + 16);
      v270 = *(v2 + v7);
      v271 = *(v2 + v7 + 16);
      v272 = (v2 + v7 + v7);
      v273 = *v272;
      v274 = v272[1];
      v275 = (v272 + v7);
      v276 = *v275;
      v30 = v275[1];
      if (v4)
      {
        v268 = vshlq_u16(v268, v12);
        v273 = vshlq_u16(v273, v12);
        v270 = vshlq_u16(v270, v12);
        v276 = vshlq_u16(v276, v12);
        v269 = vshlq_u16(v269, v12);
        v274 = vshlq_u16(v274, v12);
        v271 = vshlq_u16(v271, v12);
        v30 = vshlq_u16(v30, v12);
      }

      v26 = vtrn1q_s16(v268, v269);
      v277 = vtrn2q_s16(v268, v269);
      v28 = vtrn1q_s16(v273, v274);
      v126 = vtrn2q_s16(v273, v274);
      v278 = vtrn1q_s16(v270, v271);
      v31 = vtrn2q_s16(v270, v271);
      v279 = vtrn1q_s16(v276, v30);
      v33 = vtrn2q_s16(v276, v30);
      v29 = vzip2q_s64(v278, v277);
      v27.i64[0] = v278.i64[0];
      v27.i64[1] = v277.i64[0];
      v32 = vzip2q_s64(v279, v126);
      v30.i64[0] = v279.i64[0];
LABEL_57:
      v30.i64[1] = v126.i64[0];
      goto LABEL_61;
    case 22:
      v34 = *v2;
      v35 = *(v2 + v7);
      v36 = (v2 + v7 + v7);
      v37 = *v36;
      v38 = (v36 + v7);
      v39 = *v38;
      v40 = (v38 + v7);
      v41 = *v40;
      v42 = (v40 + v7);
      v43 = *v42;
      v44 = (v42 + v7);
      v45 = *v44;
      v46 = *(v44 + v7);
      if (v4)
      {
        v34 = vshlq_u16(v34, v12);
        v35 = vshlq_u16(v35, v12);
        v37 = vshlq_u16(v37, v12);
        v39 = vshlq_u16(v39, v12);
        v41 = vshlq_u16(v41, v12);
        v43 = vshlq_u16(v43, v12);
        v45 = vshlq_u16(v45, v12);
        v46 = vshlq_u16(v46, v12);
      }

      v26 = vtrn1q_s32(v34, v41);
      v47 = vtrn2q_s32(v34, v41);
      v28 = vtrn1q_s32(v35, v43);
      v48 = vtrn2q_s32(v35, v43);
      v49 = vtrn1q_s32(v37, v45);
      v31 = vtrn2q_s32(v37, v45);
      v50 = vtrn1q_s32(v39, v46);
      v33 = vtrn2q_s32(v39, v46);
      v27 = vzip1q_s64(v49, v47);
      v29 = vzip2q_s64(v49, v47);
      v30 = vzip1q_s64(v50, v48);
      v32 = vzip2q_s64(v50, v48);
      goto LABEL_61;
    case 23:
      v92 = (v2 + v7 + v7);
      v93 = *v92;
      v94 = v92[1];
      v95 = (v92 + v7);
      v96 = veorq_s8((*&vcltzq_s16(*v2) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v2);
      v97 = veorq_s8((*&vcltzq_s16(*(v2 + v7)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7));
      v98 = veorq_s8((*&vcltzq_s16(v93) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v93);
      v99 = veorq_s8((*&vcltzq_s16(*v95) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *v95);
      v100 = veorq_s8((*&vcltzq_s16(*(v2 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + 16));
      v101 = veorq_s8((*&vcltzq_s16(*(v2 + v7 + 16)) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), *(v2 + v7 + 16));
      v102 = veorq_s8((*&vcltzq_s16(v94) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v94);
      v103 = veorq_s8((*&vcltzq_s16(v95[1]) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v95[1]);
      if (v4)
      {
        v96 = vshlq_u16(v96, v12);
        v97 = vshlq_u16(v97, v12);
        v98 = vshlq_u16(v98, v12);
        v99 = vshlq_u16(v99, v12);
        v100 = vshlq_u16(v100, v12);
        v101 = vshlq_u16(v101, v12);
        v102 = vshlq_u16(v102, v12);
        v103 = vshlq_u16(v103, v12);
      }

      v104 = vtrn1q_s32(v96, v100);
      v105 = vtrn2q_s32(v96, v100);
      v106 = vtrn1q_s32(v97, v101);
      v107 = vtrn2q_s32(v97, v101);
      v108 = vtrn1q_s32(v98, v102);
      v109 = vtrn2q_s32(v98, v102);
      v110 = vtrn1q_s32(v99, v103);
      v111 = vtrn2q_s32(v99, v103);
      v26 = vtrn1q_s16(v104, v108);
      v27 = vtrn2q_s16(v104, v108);
      v28 = vtrn1q_s16(v106, v110);
      v30 = vtrn2q_s16(v106, v110);
      v29 = vtrn1q_s16(v105, v109);
      v31 = vtrn2q_s16(v105, v109);
      v32 = vtrn1q_s16(v107, v111);
      v33 = vtrn2q_s16(v107, v111);
      goto LABEL_61;
    default:
      return v11;
  }

  do
  {
    v352 = *v350;
    v350 += 4;
    v351 = v352;
    if ((v352 + 2) >= 5u)
    {
      if (v306 >> 15)
      {
        v11 = 4294951894;
        if (v307 != 16)
        {
          return v11;
        }
      }

      else
      {
        if (!(v317 >> 15))
        {
          if (!(v328 >> 15))
          {
            v354 = *(a1 + 33);
            if (v354 <= 0xF)
            {
              *v3 = v348 + 64;
              v3[1] = *(a1 + 42) + 16 * *(a1 + 50);
              v358 = (v3 + 3);
              v3[2] = *(a1 + 58) + 16 * *(a1 + 66);
              goto LABEL_124;
            }

            goto LABEL_114;
          }

          if (HIWORD(v328))
          {
            return 4294951894;
          }

LABEL_113:
          v354 = *(a1 + 33);
LABEL_114:
          if (v354 <= 0x10)
          {
            *v3 = v348 + 80;
            v355 = *(a1 + 21) + (*(a1 + 25) << 6);
            v356 = v355 + (*(a1 + 29) << 12);
            v357 = v356 + (*(a1 + 33) << 18);
            v3[1] = v355;
            v3[2] = BYTE1(v356);
            v358 = (v3 + 4);
            v3[3] = BYTE2(v357);
            goto LABEL_124;
          }

          return 4294951894;
        }

        v11 = 4294951894;
      }

      if (HIWORD(v317) || HIWORD(v328))
      {
        return v11;
      }

      goto LABEL_113;
    }

    if (v351)
    {
      v345 = v344;
      ++v347;
    }

    v346 = 5 * v346 + v351 + 2;
    ++v344;
  }

  while (v344 != 4);
  if (v347 == 1)
  {
    v359 = v301[4 * v345 + 1];
    v360 = v359 == 0xFFFF || v359 == 1;
    if (!v360)
    {
      goto LABEL_123;
    }

    v353 = (((v359 >> 11) & 0x10 | (32 * v345)) ^ 0x80) + v348;
LABEL_122:
    *v3 = v353;
    v358 = (v3 + 1);
  }

  else
  {
    if (!v347)
    {
      LOBYTE(v353) = v348 + 48;
      goto LABEL_122;
    }

LABEL_123:
    *v3 = ((v346 >> 4) & 0xF0) + v348;
    v358 = (v3 + 2);
    v3[1] = v346;
  }

LABEL_124:
  v361 = a1 + 23;
  v362 = 4;
  while (2)
  {
    if (v348)
    {
      if (v5 <= 5)
      {
        LOWORD(v363) = *v361;
        goto LABEL_133;
      }

      v364 = v361[1];
      if (v364 >= 0)
      {
        v363 = v361[1];
      }

      else
      {
        v363 = -v364;
      }

      v365 = (v364 >> 9) & 0x40;
      if (v363 > 0x3F)
      {
        if ((v363 & 0xC000) != 0)
        {
          v368 = *v361;
          *v358 = 0;
          v367 = (v358 + 2);
          *(v358 + 1) = v368;
          v363 = v368 >> 8;
          v366 = 3;
        }

        else
        {
          *v358 = v363 & 0x3F | v365 | 0x80;
          v367 = (v358 + 1);
          LOWORD(v363) = v363 >> 6;
          v366 = 2;
        }
      }

      else
      {
        LOBYTE(v363) = v365 | v363;
LABEL_133:
        v366 = 1;
        v367 = v358;
      }

      v358 = (v358 + v366);
      *v367 = v363;
    }

    v348 >>= 1;
    v361 += 4;
    if (--v362)
    {
      continue;
    }

    break;
  }

  if (!v358)
  {
    return 4294951894;
  }

  v369 = a1 + 23;
  v370 = vld1q_dup_s16(v369);
  v371 = vsubq_s16(v26, v370);
  v372 = vsubq_s16(v28, v370);
  v373 = a1 + 27;
  v374 = vld1q_dup_s16(v373);
  v375 = vsubq_s16(v27, v374);
  v376 = vsubq_s16(v30, v374);
  v377 = a1 + 31;
  v378 = vld1q_dup_s16(v377);
  v379 = vsubq_s16(v29, v378);
  v380 = vsubq_s16(v32, v378);
  v381 = a1 + 35;
  v382 = vld1q_dup_s16(v381);
  v383 = vsubq_s16(v31, v382);
  v384 = vsubq_s16(v33, v382);
  v385 = *(a1 + 21);
  if (v5 > 0x10 || (v386 = *(a1 + 27)) == 0)
  {
    if (*(a1 + 21) <= 4u)
    {
      if (*(a1 + 21) <= 1u)
      {
        if (!*(a1 + 21))
        {
          goto LABEL_303;
        }

        v423 = vorrq_s8(vshrq_n_u32(v371, 0xFuLL), v371);
        v424.i64[0] = 0xFFFFLL;
        v424.i64[1] = 0xFFFFLL;
        v425 = vorrq_s8(vandq_s8(vshrq_n_u64(v423, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v423, v424));
        v426 = vorr_s8(vshld_n_s64(vextq_s8(v425, v425, 8uLL).i64[0], 4uLL), *v425.i8).u32[0];
        v427 = 1;
      }

      else if (v385 == 2)
      {
        v452 = vorrq_s8(vshrq_n_u32(v371, 0xEuLL), v371);
        v453.i64[0] = 0xFFFFLL;
        v453.i64[1] = 0xFFFFLL;
        v454 = vorrq_s8(vandq_s8(vshrq_n_u64(v452, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v452, v453));
        v426 = vorr_s8(vshld_n_s64(vextq_s8(v454, v454, 8uLL).i64[0], 8uLL), *v454.i8).u32[0];
        v427 = 2;
      }

      else
      {
        if (v385 != 3)
        {
          v400 = vorrq_s8(vshrq_n_u32(v371, 0xCuLL), v371);
          v401.i64[0] = 16776960;
          v401.i64[1] = 16776960;
          v402 = vandq_s8(vshrq_n_u64(v400, 0x18uLL), v401);
          v401.i64[0] = 0xFFFFLL;
          v401.i64[1] = 0xFFFFLL;
          v403 = vorrq_s8(v402, vandq_s8(v400, v401));
          *v358 = vorr_s8(vshld_n_s64(vextq_s8(v403, v403, 8uLL).i64[0], 0x10uLL), *v403.i8).u32[0];
          v358 = (v358 + 4);
          goto LABEL_264;
        }

        v437 = vorrq_s8(vshrq_n_u32(v371, 0xDuLL), v371);
        v438.i64[0] = 0xFFFFLL;
        v438.i64[1] = 0xFFFFLL;
        v439 = vorrq_s8(vandq_s8(vshrq_n_u64(v437, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v437, v438));
        v426 = vorr_s8(vshld_n_s64(vextq_s8(v439, v439, 8uLL).i64[0], 0xCuLL), *v439.i8).u32[0];
        v427 = 3;
      }

      *v358 = v426;
      v358 = (v358 + v427);
    }

    else if (*(a1 + 21) > 7u)
    {
      switch(v385)
      {
        case 8:
          v478 = vorrq_s8(vshrq_n_u32(v371, 8uLL), v371);
          v479.i64[0] = 4294901760;
          v479.i64[1] = 4294901760;
          v480 = vandq_s8(vshrq_n_u64(v478, 0x10uLL), v479);
          v479.i64[0] = 0xFFFFLL;
          v479.i64[1] = 0xFFFFLL;
          v481 = vorrq_s8(v480, vandq_s8(v478, v479));
          *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v481, v481, 8uLL).i64[0], 0x20uLL), *v481.i8);
          break;
        case 9:
          v449.i64[0] = 0xFFFF0000FFFFLL;
          v449.i64[1] = 0xFFFF0000FFFFLL;
          v450 = vorrq_s8(vandq_s8(vshrq_n_u32(v371, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v371, v449));
          v451 = vorrq_s8(vandq_s8(vshrq_n_u64(v450, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v450, vdupq_n_s64(0x1FFFFFFuLL)));
          v449.i64[0] = vextq_s8(v451, v451, 8uLL).u64[0];
          *v358 = vorr_s8(vshld_n_s64(v449.i64[0], 0x24uLL), *v451.i8);
          *(v358 + 8) = vshrd_n_u64(v449.u64[0], 0x1CuLL);
          v358 = (v358 + 9);
          break;
        case 10:
          v413.i64[0] = 0xFFFF0000FFFFLL;
          v413.i64[1] = 0xFFFF0000FFFFLL;
          v414 = vorrq_s8(vandq_s8(vshrq_n_u32(v371, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v371, v413));
          v415 = vorrq_s8(vandq_s8(vshrq_n_u64(v414, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v414, vdupq_n_s64(0x3FFFFFFuLL)));
          v413.i64[0] = vextq_s8(v415, v415, 8uLL).u64[0];
          *v358 = vorr_s8(vshld_n_s64(v413.i64[0], 0x28uLL), *v415.i8);
          *(v358 + 4) = vshrd_n_u64(v413.u64[0], 0x18uLL);
          v358 = (v358 + 10);
          break;
        default:
          v994 = v372;
          v998 = v375;
          v1004 = v376;
          v1011 = v379;
          v1020 = v380;
          v1030 = v383;
          v1042 = v384;
          v719 = 0;
          v1070 = 0uLL;
          do
          {
            v1068 = v371;
            v1070.i16[v719] = *(&v1068 & 0xFFFFFFFFFFFFFFF1 | (2 * (v719 & 7)));
            ++v719;
          }

          while (v719 != 8);
          v358 = vectorWritePacked(v358, &v1070, v385);
          v383 = v1030;
          v384 = v1042;
          v379 = v1011;
          v380 = v1020;
          v375 = v998;
          v376 = v1004;
          v372 = v994;
          break;
      }
    }

    else if (v385 == 5)
    {
      v475 = vorrq_s8(vshrq_n_u32(v371, 0xBuLL), v371);
      v476.i64[0] = 0xFFFFLL;
      v476.i64[1] = 0xFFFFLL;
      v477 = vorrq_s8(vandq_s8(vshrq_n_u64(v475, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v475, v476));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v477, v477, 8uLL).i64[0], 0x14uLL), *v477.i8);
      v358 = (v358 + 5);
    }

    else if (v385 == 6)
    {
      v446 = vorrq_s8(vshrq_n_u32(v371, 0xAuLL), v371);
      v447.i64[0] = 0xFFFFLL;
      v447.i64[1] = 0xFFFFLL;
      v448 = vorrq_s8(vandq_s8(vshrq_n_u64(v446, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v446, v447));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v448, v448, 8uLL).i64[0], 0x18uLL), *v448.i8);
      v358 = (v358 + 6);
    }

    else
    {
      v397 = vorrq_s8(vshrq_n_u32(v371, 9uLL), v371);
      v398.i64[0] = 0xFFFFLL;
      v398.i64[1] = 0xFFFFLL;
      v399 = vorrq_s8(vandq_s8(vshrq_n_u64(v397, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v397, v398));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v399, v399, 8uLL).i64[0], 0x1CuLL), *v399.i8);
      v358 = (v358 + 7);
    }

LABEL_264:
    v720 = *v301;
    if (v720 > 4)
    {
      if (*v301 > 7u)
      {
        switch(v720)
        {
          case 8u:
            v764 = vorrq_s8(vshrq_n_u32(v372, 8uLL), v372);
            v765.i64[0] = 4294901760;
            v765.i64[1] = 4294901760;
            v766 = vandq_s8(vshrq_n_u64(v764, 0x10uLL), v765);
            v765.i64[0] = 0xFFFFLL;
            v765.i64[1] = 0xFFFFLL;
            v767 = vorrq_s8(v766, vandq_s8(v764, v765));
            *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v767, v767, 8uLL).i64[0], 0x20uLL), *v767.i8);
            goto LABEL_303;
          case 9u:
            v754.i64[0] = 0xFFFF0000FFFFLL;
            v754.i64[1] = 0xFFFF0000FFFFLL;
            v755 = vorrq_s8(vandq_s8(vshrq_n_u32(v372, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v372, v754));
            v756 = vorrq_s8(vandq_s8(vshrq_n_u64(v755, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v755, vdupq_n_s64(0x1FFFFFFuLL)));
            v757 = vextq_s8(v756, v756, 8uLL).u64[0];
            *v358 = vorr_s8(vshld_n_s64(v757, 0x24uLL), *v756.i8);
            *(v358 + 8) = vshrd_n_u64(v757, 0x1CuLL);
            v358 = (v358 + 9);
            goto LABEL_303;
          case 0xAu:
            v728.i64[0] = 0xFFFF0000FFFFLL;
            v728.i64[1] = 0xFFFF0000FFFFLL;
            v729 = vorrq_s8(vandq_s8(vshrq_n_u32(v372, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v372, v728));
            v730 = vorrq_s8(vandq_s8(vshrq_n_u64(v729, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v729, vdupq_n_s64(0x3FFFFFFuLL)));
            v731 = vextq_s8(v730, v730, 8uLL).u64[0];
            *v358 = vorr_s8(vshld_n_s64(v731, 0x28uLL), *v730.i8);
            *(v358 + 4) = vshrd_n_u64(v731, 0x18uLL);
            v358 = (v358 + 10);
            goto LABEL_303;
        }
      }

      else
      {
        switch(v720)
        {
          case 5u:
            v761 = vorrq_s8(vshrq_n_u32(v372, 0xBuLL), v372);
            v762.i64[0] = 0xFFFFLL;
            v762.i64[1] = 0xFFFFLL;
            v763 = vorrq_s8(vandq_s8(vshrq_n_u64(v761, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v761, v762));
            *v358 = vorr_s8(vshld_n_s64(vextq_s8(v763, v763, 8uLL).i64[0], 0x14uLL), *v763.i8);
            v358 = (v358 + 5);
            goto LABEL_303;
          case 6u:
            v751 = vorrq_s8(vshrq_n_u32(v372, 0xAuLL), v372);
            v752.i64[0] = 0xFFFFLL;
            v752.i64[1] = 0xFFFFLL;
            v753 = vorrq_s8(vandq_s8(vshrq_n_u64(v751, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v751, v752));
            *v358 = vorr_s8(vshld_n_s64(vextq_s8(v753, v753, 8uLL).i64[0], 0x18uLL), *v753.i8);
            v358 = (v358 + 6);
            goto LABEL_303;
          case 7u:
            v721 = vorrq_s8(vshrq_n_u32(v372, 9uLL), v372);
            v722.i64[0] = 0xFFFFLL;
            v722.i64[1] = 0xFFFFLL;
            v723 = vorrq_s8(vandq_s8(vshrq_n_u64(v721, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v721, v722));
            *v358 = vorr_s8(vshld_n_s64(vextq_s8(v723, v723, 8uLL).i64[0], 0x1CuLL), *v723.i8);
            v358 = (v358 + 7);
            goto LABEL_303;
        }
      }

LABEL_300:
      v1001 = v375;
      v1007 = v376;
      v1015 = v379;
      v1024 = v380;
      v1035 = v383;
      v1047 = v384;
      v768 = 0;
      v1070 = 0uLL;
      do
      {
        v1067 = v372;
        v1070.i16[v768] = *(&v1067 & 0xFFFFFFFFFFFFFFF1 | (2 * (v768 & 7)));
        ++v768;
      }

      while (v768 != 8);
      v358 = vectorWritePacked(v358, &v1070, v720);
      v383 = v1035;
      v384 = v1047;
      v379 = v1015;
      v380 = v1024;
      v375 = v1001;
      v376 = v1007;
LABEL_303:
      v769 = *(a1 + 25);
      if (v769 > 4)
      {
        if (*(a1 + 25) > 7u)
        {
          switch(v769)
          {
            case 8u:
              v802 = vorrq_s8(vshrq_n_u32(v375, 8uLL), v375);
              v803.i64[0] = 4294901760;
              v803.i64[1] = 4294901760;
              v804 = vandq_s8(vshrq_n_u64(v802, 0x10uLL), v803);
              v803.i64[0] = 0xFFFFLL;
              v803.i64[1] = 0xFFFFLL;
              v805 = vorrq_s8(v804, vandq_s8(v802, v803));
              *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v805, v805, 8uLL).i64[0], 0x20uLL), *v805.i8);
              goto LABEL_330;
            case 9u:
              v792.i64[0] = 0xFFFF0000FFFFLL;
              v792.i64[1] = 0xFFFF0000FFFFLL;
              v793 = vorrq_s8(vandq_s8(vshrq_n_u32(v375, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v375, v792));
              v794 = vorrq_s8(vandq_s8(vshrq_n_u64(v793, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v793, vdupq_n_s64(0x1FFFFFFuLL)));
              v795 = vextq_s8(v794, v794, 8uLL).u64[0];
              *v358 = vorr_s8(vshld_n_s64(v795, 0x24uLL), *v794.i8);
              *(v358 + 8) = vshrd_n_u64(v795, 0x1CuLL);
              v358 = (v358 + 9);
              goto LABEL_330;
            case 0xAu:
              v777.i64[0] = 0xFFFF0000FFFFLL;
              v777.i64[1] = 0xFFFF0000FFFFLL;
              v778 = vorrq_s8(vandq_s8(vshrq_n_u32(v375, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v375, v777));
              v779 = vorrq_s8(vandq_s8(vshrq_n_u64(v778, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v778, vdupq_n_s64(0x3FFFFFFuLL)));
              v780 = vextq_s8(v779, v779, 8uLL).u64[0];
              *v358 = vorr_s8(vshld_n_s64(v780, 0x28uLL), *v779.i8);
              *(v358 + 4) = vshrd_n_u64(v780, 0x18uLL);
              v358 = (v358 + 10);
              goto LABEL_330;
          }
        }

        else
        {
          switch(v769)
          {
            case 5u:
              v799 = vorrq_s8(vshrq_n_u32(v375, 0xBuLL), v375);
              v800.i64[0] = 0xFFFFLL;
              v800.i64[1] = 0xFFFFLL;
              v801 = vorrq_s8(vandq_s8(vshrq_n_u64(v799, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v799, v800));
              *v358 = vorr_s8(vshld_n_s64(vextq_s8(v801, v801, 8uLL).i64[0], 0x14uLL), *v801.i8);
              v358 = (v358 + 5);
              goto LABEL_330;
            case 6u:
              v789 = vorrq_s8(vshrq_n_u32(v375, 0xAuLL), v375);
              v790.i64[0] = 0xFFFFLL;
              v790.i64[1] = 0xFFFFLL;
              v791 = vorrq_s8(vandq_s8(vshrq_n_u64(v789, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v789, v790));
              *v358 = vorr_s8(vshld_n_s64(vextq_s8(v791, v791, 8uLL).i64[0], 0x18uLL), *v791.i8);
              v358 = (v358 + 6);
              goto LABEL_330;
            case 7u:
              v770 = vorrq_s8(vshrq_n_u32(v375, 9uLL), v375);
              v771.i64[0] = 0xFFFFLL;
              v771.i64[1] = 0xFFFFLL;
              v772 = vorrq_s8(vandq_s8(vshrq_n_u64(v770, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v770, v771));
              *v358 = vorr_s8(vshld_n_s64(vextq_s8(v772, v772, 8uLL).i64[0], 0x1CuLL), *v772.i8);
              v358 = (v358 + 7);
              goto LABEL_330;
          }
        }

LABEL_327:
        v1008 = v376;
        v1016 = v379;
        v1025 = v380;
        v1036 = v383;
        v1048 = v384;
        v806 = 0;
        v1070 = 0uLL;
        do
        {
          v1066 = v375;
          v1070.i16[v806] = *(&v1066 & 0xFFFFFFFFFFFFFFF1 | (2 * (v806 & 7)));
          ++v806;
        }

        while (v806 != 8);
        v358 = vectorWritePacked(v358, &v1070, v769);
        v383 = v1036;
        v384 = v1048;
        v379 = v1016;
        v380 = v1025;
        v376 = v1008;
LABEL_330:
        v807 = *(a1 + 25);
        if (v807 > 4)
        {
          if (*(a1 + 25) > 7u)
          {
            switch(v807)
            {
              case 8u:
                v840 = vorrq_s8(vshrq_n_u32(v376, 8uLL), v376);
                v841.i64[0] = 4294901760;
                v841.i64[1] = 4294901760;
                v842 = vandq_s8(vshrq_n_u64(v840, 0x10uLL), v841);
                v841.i64[0] = 0xFFFFLL;
                v841.i64[1] = 0xFFFFLL;
                v843 = vorrq_s8(v842, vandq_s8(v840, v841));
                *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v843, v843, 8uLL).i64[0], 0x20uLL), *v843.i8);
                goto LABEL_357;
              case 9u:
                v830.i64[0] = 0xFFFF0000FFFFLL;
                v830.i64[1] = 0xFFFF0000FFFFLL;
                v831 = vorrq_s8(vandq_s8(vshrq_n_u32(v376, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v376, v830));
                v832 = vorrq_s8(vandq_s8(vshrq_n_u64(v831, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v831, vdupq_n_s64(0x1FFFFFFuLL)));
                v833 = vextq_s8(v832, v832, 8uLL).u64[0];
                *v358 = vorr_s8(vshld_n_s64(v833, 0x24uLL), *v832.i8);
                *(v358 + 8) = vshrd_n_u64(v833, 0x1CuLL);
                v358 = (v358 + 9);
                goto LABEL_357;
              case 0xAu:
                v815.i64[0] = 0xFFFF0000FFFFLL;
                v815.i64[1] = 0xFFFF0000FFFFLL;
                v816 = vorrq_s8(vandq_s8(vshrq_n_u32(v376, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v376, v815));
                v817 = vorrq_s8(vandq_s8(vshrq_n_u64(v816, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v816, vdupq_n_s64(0x3FFFFFFuLL)));
                v818 = vextq_s8(v817, v817, 8uLL).u64[0];
                *v358 = vorr_s8(vshld_n_s64(v818, 0x28uLL), *v817.i8);
                *(v358 + 4) = vshrd_n_u64(v818, 0x18uLL);
                v358 = (v358 + 10);
                goto LABEL_357;
            }
          }

          else
          {
            switch(v807)
            {
              case 5u:
                v837 = vorrq_s8(vshrq_n_u32(v376, 0xBuLL), v376);
                v838.i64[0] = 0xFFFFLL;
                v838.i64[1] = 0xFFFFLL;
                v839 = vorrq_s8(vandq_s8(vshrq_n_u64(v837, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v837, v838));
                *v358 = vorr_s8(vshld_n_s64(vextq_s8(v839, v839, 8uLL).i64[0], 0x14uLL), *v839.i8);
                v358 = (v358 + 5);
                goto LABEL_357;
              case 6u:
                v827 = vorrq_s8(vshrq_n_u32(v376, 0xAuLL), v376);
                v828.i64[0] = 0xFFFFLL;
                v828.i64[1] = 0xFFFFLL;
                v829 = vorrq_s8(vandq_s8(vshrq_n_u64(v827, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v827, v828));
                *v358 = vorr_s8(vshld_n_s64(vextq_s8(v829, v829, 8uLL).i64[0], 0x18uLL), *v829.i8);
                v358 = (v358 + 6);
                goto LABEL_357;
              case 7u:
                v808 = vorrq_s8(vshrq_n_u32(v376, 9uLL), v376);
                v809.i64[0] = 0xFFFFLL;
                v809.i64[1] = 0xFFFFLL;
                v810 = vorrq_s8(vandq_s8(vshrq_n_u64(v808, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v808, v809));
                *v358 = vorr_s8(vshld_n_s64(vextq_s8(v810, v810, 8uLL).i64[0], 0x1CuLL), *v810.i8);
                v358 = (v358 + 7);
                goto LABEL_357;
            }
          }

LABEL_354:
          v1017 = v379;
          v1026 = v380;
          v1037 = v383;
          v1049 = v384;
          v844 = 0;
          v1070 = 0uLL;
          do
          {
            v1065 = v376;
            v1070.i16[v844] = *(&v1065 & 0xFFFFFFFFFFFFFFF1 | (2 * (v844 & 7)));
            ++v844;
          }

          while (v844 != 8);
          v358 = vectorWritePacked(v358, &v1070, v807);
          v383 = v1037;
          v384 = v1049;
          v379 = v1017;
          v380 = v1026;
LABEL_357:
          v845 = *(a1 + 29);
          if (v845 > 4)
          {
            if (*(a1 + 29) > 7u)
            {
              switch(v845)
              {
                case 8u:
                  v878 = vorrq_s8(vshrq_n_u32(v379, 8uLL), v379);
                  v879.i64[0] = 4294901760;
                  v879.i64[1] = 4294901760;
                  v880 = vandq_s8(vshrq_n_u64(v878, 0x10uLL), v879);
                  v879.i64[0] = 0xFFFFLL;
                  v879.i64[1] = 0xFFFFLL;
                  v881 = vorrq_s8(v880, vandq_s8(v878, v879));
                  *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v881, v881, 8uLL).i64[0], 0x20uLL), *v881.i8);
                  goto LABEL_384;
                case 9u:
                  v868.i64[0] = 0xFFFF0000FFFFLL;
                  v868.i64[1] = 0xFFFF0000FFFFLL;
                  v869 = vorrq_s8(vandq_s8(vshrq_n_u32(v379, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v379, v868));
                  v870 = vorrq_s8(vandq_s8(vshrq_n_u64(v869, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v869, vdupq_n_s64(0x1FFFFFFuLL)));
                  v871 = vextq_s8(v870, v870, 8uLL).u64[0];
                  *v358 = vorr_s8(vshld_n_s64(v871, 0x24uLL), *v870.i8);
                  *(v358 + 8) = vshrd_n_u64(v871, 0x1CuLL);
                  v358 = (v358 + 9);
                  goto LABEL_384;
                case 0xAu:
                  v853.i64[0] = 0xFFFF0000FFFFLL;
                  v853.i64[1] = 0xFFFF0000FFFFLL;
                  v854 = vorrq_s8(vandq_s8(vshrq_n_u32(v379, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v379, v853));
                  v855 = vorrq_s8(vandq_s8(vshrq_n_u64(v854, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v854, vdupq_n_s64(0x3FFFFFFuLL)));
                  v856 = vextq_s8(v855, v855, 8uLL).u64[0];
                  *v358 = vorr_s8(vshld_n_s64(v856, 0x28uLL), *v855.i8);
                  *(v358 + 4) = vshrd_n_u64(v856, 0x18uLL);
                  v358 = (v358 + 10);
                  goto LABEL_384;
              }
            }

            else
            {
              switch(v845)
              {
                case 5u:
                  v875 = vorrq_s8(vshrq_n_u32(v379, 0xBuLL), v379);
                  v876.i64[0] = 0xFFFFLL;
                  v876.i64[1] = 0xFFFFLL;
                  v877 = vorrq_s8(vandq_s8(vshrq_n_u64(v875, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v875, v876));
                  *v358 = vorr_s8(vshld_n_s64(vextq_s8(v877, v877, 8uLL).i64[0], 0x14uLL), *v877.i8);
                  v358 = (v358 + 5);
                  goto LABEL_384;
                case 6u:
                  v865 = vorrq_s8(vshrq_n_u32(v379, 0xAuLL), v379);
                  v866.i64[0] = 0xFFFFLL;
                  v866.i64[1] = 0xFFFFLL;
                  v867 = vorrq_s8(vandq_s8(vshrq_n_u64(v865, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v865, v866));
                  *v358 = vorr_s8(vshld_n_s64(vextq_s8(v867, v867, 8uLL).i64[0], 0x18uLL), *v867.i8);
                  v358 = (v358 + 6);
                  goto LABEL_384;
                case 7u:
                  v846 = vorrq_s8(vshrq_n_u32(v379, 9uLL), v379);
                  v847.i64[0] = 0xFFFFLL;
                  v847.i64[1] = 0xFFFFLL;
                  v848 = vorrq_s8(vandq_s8(vshrq_n_u64(v846, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v846, v847));
                  *v358 = vorr_s8(vshld_n_s64(vextq_s8(v848, v848, 8uLL).i64[0], 0x1CuLL), *v848.i8);
                  v358 = (v358 + 7);
                  goto LABEL_384;
              }
            }

LABEL_381:
            v1027 = v380;
            v1038 = v383;
            v1050 = v384;
            v882 = 0;
            v1070 = 0uLL;
            do
            {
              v1064 = v379;
              v1070.i16[v882] = *(&v1064 & 0xFFFFFFFFFFFFFFF1 | (2 * (v882 & 7)));
              ++v882;
            }

            while (v882 != 8);
            v358 = vectorWritePacked(v358, &v1070, v845);
            v383 = v1038;
            v384 = v1050;
            v380 = v1027;
LABEL_384:
            v883 = *(a1 + 29);
            if (v883 > 4)
            {
              if (*(a1 + 29) > 7u)
              {
                switch(v883)
                {
                  case 8u:
                    v916 = vorrq_s8(vshrq_n_u32(v380, 8uLL), v380);
                    v917.i64[0] = 4294901760;
                    v917.i64[1] = 4294901760;
                    v918 = vandq_s8(vshrq_n_u64(v916, 0x10uLL), v917);
                    v917.i64[0] = 0xFFFFLL;
                    v917.i64[1] = 0xFFFFLL;
                    v919 = vorrq_s8(v918, vandq_s8(v916, v917));
                    *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v919, v919, 8uLL).i64[0], 0x20uLL), *v919.i8);
                    goto LABEL_411;
                  case 9u:
                    v906.i64[0] = 0xFFFF0000FFFFLL;
                    v906.i64[1] = 0xFFFF0000FFFFLL;
                    v907 = vorrq_s8(vandq_s8(vshrq_n_u32(v380, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v380, v906));
                    v908 = vorrq_s8(vandq_s8(vshrq_n_u64(v907, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v907, vdupq_n_s64(0x1FFFFFFuLL)));
                    v909 = vextq_s8(v908, v908, 8uLL).u64[0];
                    *v358 = vorr_s8(vshld_n_s64(v909, 0x24uLL), *v908.i8);
                    *(v358 + 8) = vshrd_n_u64(v909, 0x1CuLL);
                    v358 = (v358 + 9);
                    goto LABEL_411;
                  case 0xAu:
                    v891.i64[0] = 0xFFFF0000FFFFLL;
                    v891.i64[1] = 0xFFFF0000FFFFLL;
                    v892 = vorrq_s8(vandq_s8(vshrq_n_u32(v380, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v380, v891));
                    v893 = vorrq_s8(vandq_s8(vshrq_n_u64(v892, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v892, vdupq_n_s64(0x3FFFFFFuLL)));
                    v894 = vextq_s8(v893, v893, 8uLL).u64[0];
                    *v358 = vorr_s8(vshld_n_s64(v894, 0x28uLL), *v893.i8);
                    *(v358 + 4) = vshrd_n_u64(v894, 0x18uLL);
                    v358 = (v358 + 10);
                    goto LABEL_411;
                }
              }

              else
              {
                switch(v883)
                {
                  case 5u:
                    v913 = vorrq_s8(vshrq_n_u32(v380, 0xBuLL), v380);
                    v914.i64[0] = 0xFFFFLL;
                    v914.i64[1] = 0xFFFFLL;
                    v915 = vorrq_s8(vandq_s8(vshrq_n_u64(v913, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v913, v914));
                    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v915, v915, 8uLL).i64[0], 0x14uLL), *v915.i8);
                    v358 = (v358 + 5);
                    goto LABEL_411;
                  case 6u:
                    v903 = vorrq_s8(vshrq_n_u32(v380, 0xAuLL), v380);
                    v904.i64[0] = 0xFFFFLL;
                    v904.i64[1] = 0xFFFFLL;
                    v905 = vorrq_s8(vandq_s8(vshrq_n_u64(v903, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v903, v904));
                    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v905, v905, 8uLL).i64[0], 0x18uLL), *v905.i8);
                    v358 = (v358 + 6);
                    goto LABEL_411;
                  case 7u:
                    v884 = vorrq_s8(vshrq_n_u32(v380, 9uLL), v380);
                    v885.i64[0] = 0xFFFFLL;
                    v885.i64[1] = 0xFFFFLL;
                    v886 = vorrq_s8(vandq_s8(vshrq_n_u64(v884, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v884, v885));
                    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v886, v886, 8uLL).i64[0], 0x1CuLL), *v886.i8);
                    v358 = (v358 + 7);
                    goto LABEL_411;
                }
              }

LABEL_408:
              v1039 = v383;
              v1051 = v384;
              v920 = 0;
              v1070 = 0uLL;
              do
              {
                v1063 = v380;
                v1070.i16[v920] = *(&v1063 & 0xFFFFFFFFFFFFFFF1 | (2 * (v920 & 7)));
                ++v920;
              }

              while (v920 != 8);
              v358 = vectorWritePacked(v358, &v1070, v883);
              v383 = v1039;
              v384 = v1051;
LABEL_411:
              if (v5 == 19)
              {
                goto LABEL_476;
              }

              v921 = *(a1 + 33);
              if (v921 > 4)
              {
                if (*(a1 + 33) > 7u)
                {
                  switch(v921)
                  {
                    case 8u:
                      v954 = vorrq_s8(vshrq_n_u32(v383, 8uLL), v383);
                      v955.i64[0] = 4294901760;
                      v955.i64[1] = 4294901760;
                      v956 = vandq_s8(vshrq_n_u64(v954, 0x10uLL), v955);
                      v955.i64[0] = 0xFFFFLL;
                      v955.i64[1] = 0xFFFFLL;
                      v957 = vorrq_s8(v956, vandq_s8(v954, v955));
                      *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v957, v957, 8uLL).i64[0], 0x20uLL), *v957.i8);
                      goto LABEL_439;
                    case 9u:
                      v944.i64[0] = 0xFFFF0000FFFFLL;
                      v944.i64[1] = 0xFFFF0000FFFFLL;
                      v945 = vorrq_s8(vandq_s8(vshrq_n_u32(v383, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v383, v944));
                      v946 = vorrq_s8(vandq_s8(vshrq_n_u64(v945, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v945, vdupq_n_s64(0x1FFFFFFuLL)));
                      v947 = vextq_s8(v946, v946, 8uLL).u64[0];
                      *v358 = vorr_s8(vshld_n_s64(v947, 0x24uLL), *v946.i8);
                      *(v358 + 8) = vshrd_n_u64(v947, 0x1CuLL);
                      v358 = (v358 + 9);
                      goto LABEL_439;
                    case 0xAu:
                      v929.i64[0] = 0xFFFF0000FFFFLL;
                      v929.i64[1] = 0xFFFF0000FFFFLL;
                      v930 = vorrq_s8(vandq_s8(vshrq_n_u32(v383, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v383, v929));
                      v931 = vorrq_s8(vandq_s8(vshrq_n_u64(v930, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v930, vdupq_n_s64(0x3FFFFFFuLL)));
                      v932 = vextq_s8(v931, v931, 8uLL).u64[0];
                      *v358 = vorr_s8(vshld_n_s64(v932, 0x28uLL), *v931.i8);
                      *(v358 + 4) = vshrd_n_u64(v932, 0x18uLL);
                      v358 = (v358 + 10);
                      goto LABEL_439;
                  }
                }

                else
                {
                  switch(v921)
                  {
                    case 5u:
                      v951 = vorrq_s8(vshrq_n_u32(v383, 0xBuLL), v383);
                      v952.i64[0] = 0xFFFFLL;
                      v952.i64[1] = 0xFFFFLL;
                      v953 = vorrq_s8(vandq_s8(vshrq_n_u64(v951, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v951, v952));
                      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v953, v953, 8uLL).i64[0], 0x14uLL), *v953.i8);
                      v358 = (v358 + 5);
                      goto LABEL_439;
                    case 6u:
                      v941 = vorrq_s8(vshrq_n_u32(v383, 0xAuLL), v383);
                      v942.i64[0] = 0xFFFFLL;
                      v942.i64[1] = 0xFFFFLL;
                      v943 = vorrq_s8(vandq_s8(vshrq_n_u64(v941, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v941, v942));
                      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v943, v943, 8uLL).i64[0], 0x18uLL), *v943.i8);
                      v358 = (v358 + 6);
                      goto LABEL_439;
                    case 7u:
                      v922 = vorrq_s8(vshrq_n_u32(v383, 9uLL), v383);
                      v923.i64[0] = 0xFFFFLL;
                      v923.i64[1] = 0xFFFFLL;
                      v924 = vorrq_s8(vandq_s8(vshrq_n_u64(v922, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v922, v923));
                      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v924, v924, 8uLL).i64[0], 0x1CuLL), *v924.i8);
                      v358 = (v358 + 7);
                      goto LABEL_439;
                  }
                }

LABEL_436:
                v1052 = v384;
                v958 = 0;
                v1070 = 0uLL;
                do
                {
                  v1062 = v383;
                  v1070.i16[v958] = *(&v1062 & 0xFFFFFFFFFFFFFFF1 | (2 * (v958 & 7)));
                  ++v958;
                }

                while (v958 != 8);
                v358 = vectorWritePacked(v358, &v1070, v921);
                v384 = v1052;
LABEL_439:
                v959 = *(a1 + 33);
                if (v959 <= 4)
                {
                  if (*(a1 + 33) <= 1u)
                  {
                    if (!*(a1 + 33))
                    {
                      goto LABEL_476;
                    }

                    v679 = vorrq_s8(vshrq_n_u32(v384, 0xFuLL), v384);
                    v680 = vandq_s8(vshrq_n_u64(v679, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL));
                    goto LABEL_459;
                  }

                  switch(v959)
                  {
                    case 2u:
                      v705 = vorrq_s8(vshrq_n_u32(v384, 0xEuLL), v384);
                      v706 = vandq_s8(vshrq_n_u64(v705, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL));
                      goto LABEL_467;
                    case 3u:
                      v685 = vorrq_s8(vshrq_n_u32(v384, 0xDuLL), v384);
                      v686 = vandq_s8(vshrq_n_u64(v685, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL));
LABEL_461:
                      v972.i64[0] = 0xFFFFLL;
                      v972.i64[1] = 0xFFFFLL;
                      v973 = vorrq_s8(v686, vandq_s8(v685, v972));
                      v970 = vorr_s8(vshld_n_s64(vextq_s8(v973, v973, 8uLL).i64[0], 0xCuLL), *v973.i8).u32[0];
                      v971 = 3;
                      goto LABEL_468;
                    case 4u:
                      v669 = vorrq_s8(vshrq_n_u32(v384, 0xCuLL), v384);
                      goto LABEL_451;
                  }
                }

                else if (*(a1 + 33) > 7u)
                {
                  switch(v959)
                  {
                    case 8u:
                      v718 = vorrq_s8(vshrq_n_u32(v384, 8uLL), v384);
                      goto LABEL_472;
                    case 9u:
                      v976.i64[0] = 0xFFFF0000FFFFLL;
                      v976.i64[1] = 0xFFFF0000FFFFLL;
                      v977 = vorrq_s8(vandq_s8(vshrq_n_u32(v384, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v384, v976));
                      v698 = vandq_s8(v977, vdupq_n_s64(0x1FFFFFFuLL));
                      v700 = vshrq_n_u64(v977, 0xEuLL);
                      v699 = vdupq_n_s64(0x7FFFFFC0000uLL);
                      goto LABEL_465;
                    case 0xAu:
                      v965.i64[0] = 0xFFFF0000FFFFLL;
                      v965.i64[1] = 0xFFFF0000FFFFLL;
                      v674 = vorrq_s8(vandq_s8(vshrq_n_u32(v384, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v384, v965));
                      goto LABEL_456;
                  }
                }

                else
                {
                  switch(v959)
                  {
                    case 5u:
                      v711 = vorrq_s8(vshrq_n_u32(v384, 0xBuLL), v384);
                      v712 = vandq_s8(vshrq_n_u64(v711, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL));
                      goto LABEL_470;
                    case 6u:
                      v691 = vorrq_s8(vshrq_n_u32(v384, 0xAuLL), v384);
                      v692 = vandq_s8(vshrq_n_u64(v691, 0x14uLL), vdupq_n_s64(0xFFFF000uLL));
                      goto LABEL_463;
                    case 7u:
                      v662 = vorrq_s8(vshrq_n_u32(v384, 9uLL), v384);
                      v663 = vandq_s8(vshrq_n_u64(v662, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL));
LABEL_445:
                      v960.i64[0] = 0xFFFFLL;
                      v960.i64[1] = 0xFFFFLL;
                      v961 = vorrq_s8(v663, vandq_s8(v662, v960));
                      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v961, v961, 8uLL).i64[0], 0x1CuLL), *v961.i8);
                      v358 = (v358 + 7);
                      goto LABEL_476;
                  }
                }

                v987 = 0;
                v1070 = 0uLL;
                do
                {
                  v1061 = v384;
                  v1070.i16[v987] = *(&v1061 & 0xFFFFFFFFFFFFFFF1 | (2 * (v987 & 7)));
                  ++v987;
                }

                while (v987 != 8);
                goto LABEL_475;
              }

              if (*(a1 + 33) <= 1u)
              {
                if (!*(a1 + 33))
                {
                  goto LABEL_476;
                }

                v933 = vorrq_s8(vshrq_n_u32(v383, 0xFuLL), v383);
                v934.i64[0] = 0xFFFFLL;
                v934.i64[1] = 0xFFFFLL;
                v935 = vorrq_s8(vandq_s8(vshrq_n_u64(v933, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v933, v934));
                v936 = vorr_s8(vshld_n_s64(vextq_s8(v935, v935, 8uLL).i64[0], 4uLL), *v935.i8).u32[0];
                v937 = 1;
              }

              else
              {
                switch(v921)
                {
                  case 2u:
                    v948 = vorrq_s8(vshrq_n_u32(v383, 0xEuLL), v383);
                    v949.i64[0] = 0xFFFFLL;
                    v949.i64[1] = 0xFFFFLL;
                    v950 = vorrq_s8(vandq_s8(vshrq_n_u64(v948, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v948, v949));
                    v936 = vorr_s8(vshld_n_s64(vextq_s8(v950, v950, 8uLL).i64[0], 8uLL), *v950.i8).u32[0];
                    v937 = 2;
                    break;
                  case 3u:
                    v938 = vorrq_s8(vshrq_n_u32(v383, 0xDuLL), v383);
                    v939.i64[0] = 0xFFFFLL;
                    v939.i64[1] = 0xFFFFLL;
                    v940 = vorrq_s8(vandq_s8(vshrq_n_u64(v938, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v938, v939));
                    v936 = vorr_s8(vshld_n_s64(vextq_s8(v940, v940, 8uLL).i64[0], 0xCuLL), *v940.i8).u32[0];
                    v937 = 3;
                    break;
                  case 4u:
                    v925 = vorrq_s8(vshrq_n_u32(v383, 0xCuLL), v383);
                    v926.i64[0] = 16776960;
                    v926.i64[1] = 16776960;
                    v927 = vandq_s8(vshrq_n_u64(v925, 0x18uLL), v926);
                    v926.i64[0] = 0xFFFFLL;
                    v926.i64[1] = 0xFFFFLL;
                    v928 = vorrq_s8(v927, vandq_s8(v925, v926));
                    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v928, v928, 8uLL).i64[0], 0x10uLL), *v928.i8).u32[0];
                    v358 = (v358 + 4);
                    goto LABEL_439;
                  default:
                    goto LABEL_436;
                }
              }

              *v358 = v936;
              v358 = (v358 + v937);
              goto LABEL_439;
            }

            if (*(a1 + 29) <= 1u)
            {
              if (!*(a1 + 29))
              {
                goto LABEL_411;
              }

              v895 = vorrq_s8(vshrq_n_u32(v380, 0xFuLL), v380);
              v896.i64[0] = 0xFFFFLL;
              v896.i64[1] = 0xFFFFLL;
              v897 = vorrq_s8(vandq_s8(vshrq_n_u64(v895, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v895, v896));
              v898 = vorr_s8(vshld_n_s64(vextq_s8(v897, v897, 8uLL).i64[0], 4uLL), *v897.i8).u32[0];
              v899 = 1;
            }

            else
            {
              switch(v883)
              {
                case 2u:
                  v910 = vorrq_s8(vshrq_n_u32(v380, 0xEuLL), v380);
                  v911.i64[0] = 0xFFFFLL;
                  v911.i64[1] = 0xFFFFLL;
                  v912 = vorrq_s8(vandq_s8(vshrq_n_u64(v910, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v910, v911));
                  v898 = vorr_s8(vshld_n_s64(vextq_s8(v912, v912, 8uLL).i64[0], 8uLL), *v912.i8).u32[0];
                  v899 = 2;
                  break;
                case 3u:
                  v900 = vorrq_s8(vshrq_n_u32(v380, 0xDuLL), v380);
                  v901.i64[0] = 0xFFFFLL;
                  v901.i64[1] = 0xFFFFLL;
                  v902 = vorrq_s8(vandq_s8(vshrq_n_u64(v900, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v900, v901));
                  v898 = vorr_s8(vshld_n_s64(vextq_s8(v902, v902, 8uLL).i64[0], 0xCuLL), *v902.i8).u32[0];
                  v899 = 3;
                  break;
                case 4u:
                  v887 = vorrq_s8(vshrq_n_u32(v380, 0xCuLL), v380);
                  v888.i64[0] = 16776960;
                  v888.i64[1] = 16776960;
                  v889 = vandq_s8(vshrq_n_u64(v887, 0x18uLL), v888);
                  v888.i64[0] = 0xFFFFLL;
                  v888.i64[1] = 0xFFFFLL;
                  v890 = vorrq_s8(v889, vandq_s8(v887, v888));
                  *v358 = vorr_s8(vshld_n_s64(vextq_s8(v890, v890, 8uLL).i64[0], 0x10uLL), *v890.i8).u32[0];
                  v358 = (v358 + 4);
                  goto LABEL_411;
                default:
                  goto LABEL_408;
              }
            }

            *v358 = v898;
            v358 = (v358 + v899);
            goto LABEL_411;
          }

          if (*(a1 + 29) <= 1u)
          {
            if (!*(a1 + 29))
            {
              goto LABEL_411;
            }

            v857 = vorrq_s8(vshrq_n_u32(v379, 0xFuLL), v379);
            v858.i64[0] = 0xFFFFLL;
            v858.i64[1] = 0xFFFFLL;
            v859 = vorrq_s8(vandq_s8(vshrq_n_u64(v857, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v857, v858));
            v860 = vorr_s8(vshld_n_s64(vextq_s8(v859, v859, 8uLL).i64[0], 4uLL), *v859.i8).u32[0];
            v861 = 1;
          }

          else
          {
            switch(v845)
            {
              case 2u:
                v872 = vorrq_s8(vshrq_n_u32(v379, 0xEuLL), v379);
                v873.i64[0] = 0xFFFFLL;
                v873.i64[1] = 0xFFFFLL;
                v874 = vorrq_s8(vandq_s8(vshrq_n_u64(v872, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v872, v873));
                v860 = vorr_s8(vshld_n_s64(vextq_s8(v874, v874, 8uLL).i64[0], 8uLL), *v874.i8).u32[0];
                v861 = 2;
                break;
              case 3u:
                v862 = vorrq_s8(vshrq_n_u32(v379, 0xDuLL), v379);
                v863.i64[0] = 0xFFFFLL;
                v863.i64[1] = 0xFFFFLL;
                v864 = vorrq_s8(vandq_s8(vshrq_n_u64(v862, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v862, v863));
                v860 = vorr_s8(vshld_n_s64(vextq_s8(v864, v864, 8uLL).i64[0], 0xCuLL), *v864.i8).u32[0];
                v861 = 3;
                break;
              case 4u:
                v849 = vorrq_s8(vshrq_n_u32(v379, 0xCuLL), v379);
                v850.i64[0] = 16776960;
                v850.i64[1] = 16776960;
                v851 = vandq_s8(vshrq_n_u64(v849, 0x18uLL), v850);
                v850.i64[0] = 0xFFFFLL;
                v850.i64[1] = 0xFFFFLL;
                v852 = vorrq_s8(v851, vandq_s8(v849, v850));
                *v358 = vorr_s8(vshld_n_s64(vextq_s8(v852, v852, 8uLL).i64[0], 0x10uLL), *v852.i8).u32[0];
                v358 = (v358 + 4);
                goto LABEL_384;
              default:
                goto LABEL_381;
            }
          }

          *v358 = v860;
          v358 = (v358 + v861);
          goto LABEL_384;
        }

        if (*(a1 + 25) <= 1u)
        {
          if (!*(a1 + 25))
          {
            goto LABEL_357;
          }

          v819 = vorrq_s8(vshrq_n_u32(v376, 0xFuLL), v376);
          v820.i64[0] = 0xFFFFLL;
          v820.i64[1] = 0xFFFFLL;
          v821 = vorrq_s8(vandq_s8(vshrq_n_u64(v819, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v819, v820));
          v822 = vorr_s8(vshld_n_s64(vextq_s8(v821, v821, 8uLL).i64[0], 4uLL), *v821.i8).u32[0];
          v823 = 1;
        }

        else
        {
          switch(v807)
          {
            case 2u:
              v834 = vorrq_s8(vshrq_n_u32(v376, 0xEuLL), v376);
              v835.i64[0] = 0xFFFFLL;
              v835.i64[1] = 0xFFFFLL;
              v836 = vorrq_s8(vandq_s8(vshrq_n_u64(v834, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v834, v835));
              v822 = vorr_s8(vshld_n_s64(vextq_s8(v836, v836, 8uLL).i64[0], 8uLL), *v836.i8).u32[0];
              v823 = 2;
              break;
            case 3u:
              v824 = vorrq_s8(vshrq_n_u32(v376, 0xDuLL), v376);
              v825.i64[0] = 0xFFFFLL;
              v825.i64[1] = 0xFFFFLL;
              v826 = vorrq_s8(vandq_s8(vshrq_n_u64(v824, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v824, v825));
              v822 = vorr_s8(vshld_n_s64(vextq_s8(v826, v826, 8uLL).i64[0], 0xCuLL), *v826.i8).u32[0];
              v823 = 3;
              break;
            case 4u:
              v811 = vorrq_s8(vshrq_n_u32(v376, 0xCuLL), v376);
              v812.i64[0] = 16776960;
              v812.i64[1] = 16776960;
              v813 = vandq_s8(vshrq_n_u64(v811, 0x18uLL), v812);
              v812.i64[0] = 0xFFFFLL;
              v812.i64[1] = 0xFFFFLL;
              v814 = vorrq_s8(v813, vandq_s8(v811, v812));
              *v358 = vorr_s8(vshld_n_s64(vextq_s8(v814, v814, 8uLL).i64[0], 0x10uLL), *v814.i8).u32[0];
              v358 = (v358 + 4);
              goto LABEL_357;
            default:
              goto LABEL_354;
          }
        }

        *v358 = v822;
        v358 = (v358 + v823);
        goto LABEL_357;
      }

      if (*(a1 + 25) <= 1u)
      {
        if (!*(a1 + 25))
        {
          goto LABEL_357;
        }

        v781 = vorrq_s8(vshrq_n_u32(v375, 0xFuLL), v375);
        v782.i64[0] = 0xFFFFLL;
        v782.i64[1] = 0xFFFFLL;
        v783 = vorrq_s8(vandq_s8(vshrq_n_u64(v781, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v781, v782));
        v784 = vorr_s8(vshld_n_s64(vextq_s8(v783, v783, 8uLL).i64[0], 4uLL), *v783.i8).u32[0];
        v785 = 1;
      }

      else
      {
        switch(v769)
        {
          case 2u:
            v796 = vorrq_s8(vshrq_n_u32(v375, 0xEuLL), v375);
            v797.i64[0] = 0xFFFFLL;
            v797.i64[1] = 0xFFFFLL;
            v798 = vorrq_s8(vandq_s8(vshrq_n_u64(v796, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v796, v797));
            v784 = vorr_s8(vshld_n_s64(vextq_s8(v798, v798, 8uLL).i64[0], 8uLL), *v798.i8).u32[0];
            v785 = 2;
            break;
          case 3u:
            v786 = vorrq_s8(vshrq_n_u32(v375, 0xDuLL), v375);
            v787.i64[0] = 0xFFFFLL;
            v787.i64[1] = 0xFFFFLL;
            v788 = vorrq_s8(vandq_s8(vshrq_n_u64(v786, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v786, v787));
            v784 = vorr_s8(vshld_n_s64(vextq_s8(v788, v788, 8uLL).i64[0], 0xCuLL), *v788.i8).u32[0];
            v785 = 3;
            break;
          case 4u:
            v773 = vorrq_s8(vshrq_n_u32(v375, 0xCuLL), v375);
            v774.i64[0] = 16776960;
            v774.i64[1] = 16776960;
            v775 = vandq_s8(vshrq_n_u64(v773, 0x18uLL), v774);
            v774.i64[0] = 0xFFFFLL;
            v774.i64[1] = 0xFFFFLL;
            v776 = vorrq_s8(v775, vandq_s8(v773, v774));
            *v358 = vorr_s8(vshld_n_s64(vextq_s8(v776, v776, 8uLL).i64[0], 0x10uLL), *v776.i8).u32[0];
            v358 = (v358 + 4);
            goto LABEL_330;
          default:
            goto LABEL_327;
        }
      }

      *v358 = v784;
      v358 = (v358 + v785);
      goto LABEL_330;
    }

    if (*v301 <= 1u)
    {
      if (!*v301)
      {
        goto LABEL_303;
      }

      v732 = vorrq_s8(vshrq_n_u32(v372, 0xFuLL), v372);
      v733.i64[0] = 0xFFFFLL;
      v733.i64[1] = 0xFFFFLL;
      v734 = vorrq_s8(vandq_s8(vshrq_n_u64(v732, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v732, v733));
      v735 = vorr_s8(vshld_n_s64(vextq_s8(v734, v734, 8uLL).i64[0], 4uLL), *v734.i8).u32[0];
      v736 = 1;
    }

    else
    {
      switch(v720)
      {
        case 2u:
          v758 = vorrq_s8(vshrq_n_u32(v372, 0xEuLL), v372);
          v759.i64[0] = 0xFFFFLL;
          v759.i64[1] = 0xFFFFLL;
          v760 = vorrq_s8(vandq_s8(vshrq_n_u64(v758, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v758, v759));
          v735 = vorr_s8(vshld_n_s64(vextq_s8(v760, v760, 8uLL).i64[0], 8uLL), *v760.i8).u32[0];
          v736 = 2;
          break;
        case 3u:
          v748 = vorrq_s8(vshrq_n_u32(v372, 0xDuLL), v372);
          v749.i64[0] = 0xFFFFLL;
          v749.i64[1] = 0xFFFFLL;
          v750 = vorrq_s8(vandq_s8(vshrq_n_u64(v748, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v748, v749));
          v735 = vorr_s8(vshld_n_s64(vextq_s8(v750, v750, 8uLL).i64[0], 0xCuLL), *v750.i8).u32[0];
          v736 = 3;
          break;
        case 4u:
          v724 = vorrq_s8(vshrq_n_u32(v372, 0xCuLL), v372);
          v725.i64[0] = 16776960;
          v725.i64[1] = 16776960;
          v726 = vandq_s8(vshrq_n_u64(v724, 0x18uLL), v725);
          v725.i64[0] = 0xFFFFLL;
          v725.i64[1] = 0xFFFFLL;
          v727 = vorrq_s8(v726, vandq_s8(v724, v725));
          *v358 = vorr_s8(vshld_n_s64(vextq_s8(v727, v727, 8uLL).i64[0], 0x10uLL), *v727.i8).u32[0];
          v358 = (v358 + 4);
          goto LABEL_303;
        default:
          goto LABEL_300;
      }
    }

    *v358 = v735;
    v358 = (v358 + v736);
    goto LABEL_303;
  }

  v387 = v385 - v386 * v385 / 8;
  v388 = vdupq_n_s16(v386 * v385 / -8);
  v389 = vshlq_u16(v371, v388);
  if (v387 <= 4)
  {
    if (v387 <= 1)
    {
      if (!v387)
      {
        goto LABEL_193;
      }

      if (v387 != 1)
      {
        goto LABEL_281;
      }

      v428 = vorrq_s8(vshrq_n_u32(v389, 0xFuLL), v389);
      v429.i64[0] = 0xFFFFLL;
      v429.i64[1] = 0xFFFFLL;
      v430 = vorrq_s8(vandq_s8(vshrq_n_u64(v428, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v428, v429));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v430, v430, 8uLL).i64[0], 4uLL), *v430.i8).u32[0];
      v431 = (v358 + 1);
      v432 = vshlq_u16(v372, v388);
      v433 = vorrq_s8(vshrq_n_u32(v432, 0xFuLL), v432);
      v429.i64[0] = 0xFFFFLL;
      v429.i64[1] = 0xFFFFLL;
      v434 = vorrq_s8(vandq_s8(vshrq_n_u64(v433, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v433, v429));
      v435 = vorr_s8(vshld_n_s64(vextq_s8(v434, v434, 8uLL).i64[0], 4uLL), *v434.i8).u32[0];
      v436 = 1;
    }

    else if (v387 == 2)
    {
      v469 = vorrq_s8(vshrq_n_u32(v389, 0xEuLL), v389);
      v470.i64[0] = 0xFFFFLL;
      v470.i64[1] = 0xFFFFLL;
      v471 = vorrq_s8(vandq_s8(vshrq_n_u64(v469, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v469, v470));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v471, v471, 8uLL).i64[0], 8uLL), *v471.i8).u32[0];
      v431 = (v358 + 2);
      v472 = vshlq_u16(v372, v388);
      v473 = vorrq_s8(vshrq_n_u32(v472, 0xEuLL), v472);
      v470.i64[0] = 0xFFFFLL;
      v470.i64[1] = 0xFFFFLL;
      v474 = vorrq_s8(vandq_s8(vshrq_n_u64(v473, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v473, v470));
      v435 = vorr_s8(vshld_n_s64(vextq_s8(v474, v474, 8uLL).i64[0], 8uLL), *v474.i8).u32[0];
      v436 = 2;
    }

    else
    {
      if (v387 != 3)
      {
        v404 = vorrq_s8(vshrq_n_u32(v389, 0xCuLL), v389);
        v405.i64[0] = 16776960;
        v405.i64[1] = 16776960;
        v406 = vandq_s8(vshrq_n_u64(v404, 0x18uLL), v405);
        v405.i64[0] = 0xFFFFLL;
        v405.i64[1] = 0xFFFFLL;
        v407 = vorrq_s8(v406, vandq_s8(v404, v405));
        *v358 = vorr_s8(vshld_n_s64(vextq_s8(v407, v407, 8uLL).i64[0], 0x10uLL), *v407.i8).u32[0];
        v408 = v358 + 1;
        v409 = vshlq_u16(v372, v388);
        v410 = vorrq_s8(vshrq_n_u32(v409, 0xCuLL), v409);
        v405.i64[0] = 16776960;
        v405.i64[1] = 16776960;
        v411 = vandq_s8(vshrq_n_u64(v410, 0x18uLL), v405);
        v405.i64[0] = 0xFFFFLL;
        v405.i64[1] = 0xFFFFLL;
        v412 = vorrq_s8(v411, vandq_s8(v410, v405));
        *v408 = vorr_s8(vshld_n_s64(vextq_s8(v412, v412, 8uLL).i64[0], 0x10uLL), *v412.i8).u32[0];
        v358 = (v408 + 1);
        goto LABEL_193;
      }

      v440 = vorrq_s8(vshrq_n_u32(v389, 0xDuLL), v389);
      v441.i64[0] = 0xFFFFLL;
      v441.i64[1] = 0xFFFFLL;
      v442 = vorrq_s8(vandq_s8(vshrq_n_u64(v440, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v440, v441));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v442, v442, 8uLL).i64[0], 0xCuLL), *v442.i8).u32[0];
      v431 = (v358 + 3);
      v443 = vshlq_u16(v372, v388);
      v444 = vorrq_s8(vshrq_n_u32(v443, 0xDuLL), v443);
      v441.i64[0] = 0xFFFFLL;
      v441.i64[1] = 0xFFFFLL;
      v445 = vorrq_s8(vandq_s8(vshrq_n_u64(v444, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v444, v441));
      v435 = vorr_s8(vshld_n_s64(vextq_s8(v445, v445, 8uLL).i64[0], 0xCuLL), *v445.i8).u32[0];
      v436 = 3;
    }

    *v431 = v435;
    v358 = (v431 + v436);
    goto LABEL_193;
  }

  if (v387 <= 7)
  {
    if (v387 == 5)
    {
      v482 = vorrq_s8(vshrq_n_u32(v389, 0xBuLL), v389);
      v483.i64[0] = 0xFFFFLL;
      v483.i64[1] = 0xFFFFLL;
      v484 = vorrq_s8(vandq_s8(vshrq_n_u64(v482, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v482, v483));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v484, v484, 8uLL).i64[0], 0x14uLL), *v484.i8);
      v485 = (v358 + 5);
      v486 = vshlq_u16(v372, v388);
      v487 = vorrq_s8(vshrq_n_u32(v486, 0xBuLL), v486);
      v483.i64[0] = 0xFFFFLL;
      v483.i64[1] = 0xFFFFLL;
      v488 = vorrq_s8(vandq_s8(vshrq_n_u64(v487, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v487, v483));
      *v485 = vorr_s8(vshld_n_s64(vextq_s8(v488, v488, 8uLL).i64[0], 0x14uLL), *v488.i8);
      v358 = (v485 + 5);
    }

    else if (v387 == 6)
    {
      v455 = vorrq_s8(vshrq_n_u32(v389, 0xAuLL), v389);
      v456.i64[0] = 0xFFFFLL;
      v456.i64[1] = 0xFFFFLL;
      v457 = vorrq_s8(vandq_s8(vshrq_n_u64(v455, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v455, v456));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v457, v457, 8uLL).i64[0], 0x18uLL), *v457.i8);
      v458 = (v358 + 6);
      v459 = vshlq_u16(v372, v388);
      v460 = vorrq_s8(vshrq_n_u32(v459, 0xAuLL), v459);
      v456.i64[0] = 0xFFFFLL;
      v456.i64[1] = 0xFFFFLL;
      v461 = vorrq_s8(vandq_s8(vshrq_n_u64(v460, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v460, v456));
      *v458 = vorr_s8(vshld_n_s64(vextq_s8(v461, v461, 8uLL).i64[0], 0x18uLL), *v461.i8);
      v358 = (v458 + 6);
    }

    else
    {
      v390 = vorrq_s8(vshrq_n_u32(v389, 9uLL), v389);
      v391.i64[0] = 0xFFFFLL;
      v391.i64[1] = 0xFFFFLL;
      v392 = vorrq_s8(vandq_s8(vshrq_n_u64(v390, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v390, v391));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v392, v392, 8uLL).i64[0], 0x1CuLL), *v392.i8);
      v393 = (v358 + 7);
      v394 = vshlq_u16(v372, v388);
      v395 = vorrq_s8(vshrq_n_u32(v394, 9uLL), v394);
      v391.i64[0] = 0xFFFFLL;
      v391.i64[1] = 0xFFFFLL;
      v396 = vorrq_s8(vandq_s8(vshrq_n_u64(v395, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v395, v391));
      *v393 = vorr_s8(vshld_n_s64(vextq_s8(v396, v396, 8uLL).i64[0], 0x1CuLL), *v396.i8);
      v358 = (v393 + 7);
    }

    goto LABEL_193;
  }

  switch(v387)
  {
    case 8:
      v489 = vorrq_s8(vshrq_n_u32(v389, 8uLL), v389);
      v490.i64[0] = 4294901760;
      v490.i64[1] = 4294901760;
      v491 = vandq_s8(vshrq_n_u64(v489, 0x10uLL), v490);
      v490.i64[0] = 0xFFFFLL;
      v490.i64[1] = 0xFFFFLL;
      v492 = vorrq_s8(v491, vandq_s8(v489, v490));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v492, v492, 8uLL).i64[0], 0x20uLL), *v492.i8);
      v493 = (v358 + 1);
      v494 = vshlq_u16(v372, v388);
      v495 = vorrq_s8(vshrq_n_u32(v494, 8uLL), v494);
      v490.i64[0] = 4294901760;
      v490.i64[1] = 4294901760;
      v496 = vandq_s8(vshrq_n_u64(v495, 0x10uLL), v490);
      v490.i64[0] = 0xFFFFLL;
      v490.i64[1] = 0xFFFFLL;
      v497 = vorrq_s8(v496, vandq_s8(v495, v490));
      *v493 = vorr_s8(vshld_n_s64(vextq_s8(v497, v497, 8uLL).i64[0], 0x20uLL), *v497.i8);
      v358 = &v493[1];
      goto LABEL_193;
    case 9:
      v462.i64[0] = 0xFFFF0000FFFFLL;
      v462.i64[1] = 0xFFFF0000FFFFLL;
      v463 = vorrq_s8(vandq_s8(vshrq_n_u32(v389, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v389, v462));
      v464 = vorrq_s8(vandq_s8(vshrq_n_u64(v463, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v463, vdupq_n_s64(0x1FFFFFFuLL)));
      v462.i64[0] = vextq_s8(v464, v464, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v462.i64[0], 0x24uLL), *v464.i8);
      *(v358 + 8) = vshrd_n_u64(v462.u64[0], 0x1CuLL);
      v465 = (v358 + 9);
      v462.i64[0] = 0xFFFF0000FFFFLL;
      v462.i64[1] = 0xFFFF0000FFFFLL;
      v466 = vshlq_u16(v372, v388);
      v467 = vorrq_s8(vandq_s8(vshrq_n_u32(v466, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v466, v462));
      v468 = vorrq_s8(vandq_s8(vshrq_n_u64(v467, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v467, vdupq_n_s64(0x1FFFFFFuLL)));
      v462.i64[0] = vextq_s8(v468, v468, 8uLL).u64[0];
      *v465 = vorr_s8(vshld_n_s64(v462.i64[0], 0x24uLL), *v468.i8);
      v465[1].i8[0] = vshrd_n_u64(v462.u64[0], 0x1CuLL);
      v358 = (&v465[1] + 1);
      goto LABEL_193;
    case 10:
      v416.i64[0] = 0xFFFF0000FFFFLL;
      v416.i64[1] = 0xFFFF0000FFFFLL;
      v417 = vorrq_s8(vandq_s8(vshrq_n_u32(v389, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v389, v416));
      v418 = vorrq_s8(vandq_s8(vshrq_n_u64(v417, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v417, vdupq_n_s64(0x3FFFFFFuLL)));
      v416.i64[0] = vextq_s8(v418, v418, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v416.i64[0], 0x28uLL), *v418.i8);
      *(v358 + 4) = vshrd_n_u64(v416.u64[0], 0x18uLL);
      v419 = (v358 + 10);
      v416.i64[0] = 0xFFFF0000FFFFLL;
      v416.i64[1] = 0xFFFF0000FFFFLL;
      v420 = vshlq_u16(v372, v388);
      v421 = vorrq_s8(vandq_s8(vshrq_n_u32(v420, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v420, v416));
      v422 = vorrq_s8(vandq_s8(vshrq_n_u64(v421, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v421, vdupq_n_s64(0x3FFFFFFuLL)));
      v416.i64[0] = vextq_s8(v422, v422, 8uLL).u64[0];
      *v419 = vorr_s8(vshld_n_s64(v416.i64[0], 0x28uLL), *v422.i8);
      v419[1].i16[0] = vshrd_n_u64(v416.u64[0], 0x18uLL);
      v358 = (&v419[1] + 2);
      goto LABEL_193;
  }

LABEL_281:
  v993 = v388;
  v995 = v372;
  v999 = v375;
  v1005 = v376;
  v1012 = v379;
  v1021 = v380;
  v1031 = v383;
  v1043 = v384;
  v737 = 0;
  v1070 = 0uLL;
  do
  {
    v1060 = v389;
    v1070.i16[v737] = *(&v1060 & 0xFFFFFFFFFFFFFFF1 | (2 * (v737 & 7)));
    ++v737;
  }

  while (v737 != 8);
  v738 = vectorWritePacked(v358, &v1070, v387);
  v739 = vshlq_u16(v995, v993);
  v989 = 0;
  v1070 = 0uLL;
  do
  {
    v1059 = v739;
    v1070.i16[v989] = *(&v1059 & 0xFFFFFFFFFFFFFFF1 | (2 * (v989 & 7)));
    ++v989;
  }

  while (v989 != 8);
  v358 = vectorWritePacked(v738, &v1070, v387);
  v383 = v1031;
  v384 = v1043;
  v379 = v1012;
  v380 = v1021;
  v375 = v999;
  v376 = v1005;
LABEL_193:
  v498 = *(a1 + 25);
  v499 = v498 - *(a1 + 27) * v498 / 8;
  v500 = vdupq_n_s16(*(a1 + 27) * v498 / -8);
  v501 = vshlq_u16(v375, v500);
  if (v499 <= 4)
  {
    if (v499 <= 1)
    {
      if (!v499)
      {
        goto LABEL_216;
      }

      if (v499 != 1)
      {
        goto LABEL_284;
      }

      v525 = vorrq_s8(vshrq_n_u32(v501, 0xFuLL), v501);
      v526.i64[0] = 0xFFFFLL;
      v526.i64[1] = 0xFFFFLL;
      v527 = vorrq_s8(vandq_s8(vshrq_n_u64(v525, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v525, v526));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v527, v527, 8uLL).i64[0], 4uLL), *v527.i8).u32[0];
      v528 = (v358 + 1);
      v529 = vshlq_u16(v376, v500);
      v530 = vorrq_s8(vshrq_n_u32(v529, 0xFuLL), v529);
      v526.i64[0] = 0xFFFFLL;
      v526.i64[1] = 0xFFFFLL;
      v531 = vorrq_s8(vandq_s8(vshrq_n_u64(v530, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v530, v526));
      v532 = vorr_s8(vshld_n_s64(vextq_s8(v531, v531, 8uLL).i64[0], 4uLL), *v531.i8).u32[0];
      v533 = 1;
    }

    else if (v499 == 2)
    {
      v554 = vorrq_s8(vshrq_n_u32(v501, 0xEuLL), v501);
      v555.i64[0] = 0xFFFFLL;
      v555.i64[1] = 0xFFFFLL;
      v556 = vorrq_s8(vandq_s8(vshrq_n_u64(v554, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v554, v555));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v556, v556, 8uLL).i64[0], 8uLL), *v556.i8).u32[0];
      v528 = (v358 + 2);
      v557 = vshlq_u16(v376, v500);
      v558 = vorrq_s8(vshrq_n_u32(v557, 0xEuLL), v557);
      v555.i64[0] = 0xFFFFLL;
      v555.i64[1] = 0xFFFFLL;
      v559 = vorrq_s8(vandq_s8(vshrq_n_u64(v558, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v558, v555));
      v532 = vorr_s8(vshld_n_s64(vextq_s8(v559, v559, 8uLL).i64[0], 8uLL), *v559.i8).u32[0];
      v533 = 2;
    }

    else
    {
      if (v499 != 3)
      {
        v509 = vorrq_s8(vshrq_n_u32(v501, 0xCuLL), v501);
        v510.i64[0] = 16776960;
        v510.i64[1] = 16776960;
        v511 = vandq_s8(vshrq_n_u64(v509, 0x18uLL), v510);
        v510.i64[0] = 0xFFFFLL;
        v510.i64[1] = 0xFFFFLL;
        v512 = vorrq_s8(v511, vandq_s8(v509, v510));
        *v358 = vorr_s8(vshld_n_s64(vextq_s8(v512, v512, 8uLL).i64[0], 0x10uLL), *v512.i8).u32[0];
        v513 = v358 + 1;
        v514 = vshlq_u16(v376, v500);
        v515 = vorrq_s8(vshrq_n_u32(v514, 0xCuLL), v514);
        v510.i64[0] = 16776960;
        v510.i64[1] = 16776960;
        v516 = vandq_s8(vshrq_n_u64(v515, 0x18uLL), v510);
        v510.i64[0] = 0xFFFFLL;
        v510.i64[1] = 0xFFFFLL;
        v517 = vorrq_s8(v516, vandq_s8(v515, v510));
        *v513 = vorr_s8(vshld_n_s64(vextq_s8(v517, v517, 8uLL).i64[0], 0x10uLL), *v517.i8).u32[0];
        v358 = (v513 + 1);
        goto LABEL_216;
      }

      v534 = vorrq_s8(vshrq_n_u32(v501, 0xDuLL), v501);
      v535.i64[0] = 0xFFFFLL;
      v535.i64[1] = 0xFFFFLL;
      v536 = vorrq_s8(vandq_s8(vshrq_n_u64(v534, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v534, v535));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v536, v536, 8uLL).i64[0], 0xCuLL), *v536.i8).u32[0];
      v528 = (v358 + 3);
      v537 = vshlq_u16(v376, v500);
      v538 = vorrq_s8(vshrq_n_u32(v537, 0xDuLL), v537);
      v535.i64[0] = 0xFFFFLL;
      v535.i64[1] = 0xFFFFLL;
      v539 = vorrq_s8(vandq_s8(vshrq_n_u64(v538, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v538, v535));
      v532 = vorr_s8(vshld_n_s64(vextq_s8(v539, v539, 8uLL).i64[0], 0xCuLL), *v539.i8).u32[0];
      v533 = 3;
    }

    *v528 = v532;
    v358 = (v528 + v533);
    goto LABEL_216;
  }

  if (v499 <= 7)
  {
    if (v499 == 5)
    {
      v560 = vorrq_s8(vshrq_n_u32(v501, 0xBuLL), v501);
      v561.i64[0] = 0xFFFFLL;
      v561.i64[1] = 0xFFFFLL;
      v562 = vorrq_s8(vandq_s8(vshrq_n_u64(v560, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v560, v561));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v562, v562, 8uLL).i64[0], 0x14uLL), *v562.i8);
      v563 = (v358 + 5);
      v564 = vshlq_u16(v376, v500);
      v565 = vorrq_s8(vshrq_n_u32(v564, 0xBuLL), v564);
      v561.i64[0] = 0xFFFFLL;
      v561.i64[1] = 0xFFFFLL;
      v566 = vorrq_s8(vandq_s8(vshrq_n_u64(v565, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v565, v561));
      *v563 = vorr_s8(vshld_n_s64(vextq_s8(v566, v566, 8uLL).i64[0], 0x14uLL), *v566.i8);
      v358 = (v563 + 5);
    }

    else if (v499 == 6)
    {
      v540 = vorrq_s8(vshrq_n_u32(v501, 0xAuLL), v501);
      v541.i64[0] = 0xFFFFLL;
      v541.i64[1] = 0xFFFFLL;
      v542 = vorrq_s8(vandq_s8(vshrq_n_u64(v540, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v540, v541));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v542, v542, 8uLL).i64[0], 0x18uLL), *v542.i8);
      v543 = (v358 + 6);
      v544 = vshlq_u16(v376, v500);
      v545 = vorrq_s8(vshrq_n_u32(v544, 0xAuLL), v544);
      v541.i64[0] = 0xFFFFLL;
      v541.i64[1] = 0xFFFFLL;
      v546 = vorrq_s8(vandq_s8(vshrq_n_u64(v545, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v545, v541));
      *v543 = vorr_s8(vshld_n_s64(vextq_s8(v546, v546, 8uLL).i64[0], 0x18uLL), *v546.i8);
      v358 = (v543 + 6);
    }

    else
    {
      v502 = vorrq_s8(vshrq_n_u32(v501, 9uLL), v501);
      v503.i64[0] = 0xFFFFLL;
      v503.i64[1] = 0xFFFFLL;
      v504 = vorrq_s8(vandq_s8(vshrq_n_u64(v502, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v502, v503));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v504, v504, 8uLL).i64[0], 0x1CuLL), *v504.i8);
      v505 = (v358 + 7);
      v506 = vshlq_u16(v376, v500);
      v507 = vorrq_s8(vshrq_n_u32(v506, 9uLL), v506);
      v503.i64[0] = 0xFFFFLL;
      v503.i64[1] = 0xFFFFLL;
      v508 = vorrq_s8(vandq_s8(vshrq_n_u64(v507, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v507, v503));
      *v505 = vorr_s8(vshld_n_s64(vextq_s8(v508, v508, 8uLL).i64[0], 0x1CuLL), *v508.i8);
      v358 = (v505 + 7);
    }

    goto LABEL_216;
  }

  switch(v499)
  {
    case 8:
      v567 = vorrq_s8(vshrq_n_u32(v501, 8uLL), v501);
      v568.i64[0] = 4294901760;
      v568.i64[1] = 4294901760;
      v569 = vandq_s8(vshrq_n_u64(v567, 0x10uLL), v568);
      v568.i64[0] = 0xFFFFLL;
      v568.i64[1] = 0xFFFFLL;
      v570 = vorrq_s8(v569, vandq_s8(v567, v568));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v570, v570, 8uLL).i64[0], 0x20uLL), *v570.i8);
      v571 = (v358 + 1);
      v572 = vshlq_u16(v376, v500);
      v573 = vorrq_s8(vshrq_n_u32(v572, 8uLL), v572);
      v568.i64[0] = 4294901760;
      v568.i64[1] = 4294901760;
      v574 = vandq_s8(vshrq_n_u64(v573, 0x10uLL), v568);
      v568.i64[0] = 0xFFFFLL;
      v568.i64[1] = 0xFFFFLL;
      v575 = vorrq_s8(v574, vandq_s8(v573, v568));
      *v571 = vorr_s8(vshld_n_s64(vextq_s8(v575, v575, 8uLL).i64[0], 0x20uLL), *v575.i8);
      v358 = &v571[1];
      goto LABEL_216;
    case 9:
      v547.i64[0] = 0xFFFF0000FFFFLL;
      v547.i64[1] = 0xFFFF0000FFFFLL;
      v548 = vorrq_s8(vandq_s8(vshrq_n_u32(v501, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v501, v547));
      v549 = vorrq_s8(vandq_s8(vshrq_n_u64(v548, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v548, vdupq_n_s64(0x1FFFFFFuLL)));
      v547.i64[0] = vextq_s8(v549, v549, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v547.i64[0], 0x24uLL), *v549.i8);
      *(v358 + 8) = vshrd_n_u64(v547.u64[0], 0x1CuLL);
      v550 = (v358 + 9);
      v547.i64[0] = 0xFFFF0000FFFFLL;
      v547.i64[1] = 0xFFFF0000FFFFLL;
      v551 = vshlq_u16(v376, v500);
      v552 = vorrq_s8(vandq_s8(vshrq_n_u32(v551, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v551, v547));
      v553 = vorrq_s8(vandq_s8(vshrq_n_u64(v552, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v552, vdupq_n_s64(0x1FFFFFFuLL)));
      v547.i64[0] = vextq_s8(v553, v553, 8uLL).u64[0];
      *v550 = vorr_s8(vshld_n_s64(v547.i64[0], 0x24uLL), *v553.i8);
      v550[1].i8[0] = vshrd_n_u64(v547.u64[0], 0x1CuLL);
      v358 = (&v550[1] + 1);
      goto LABEL_216;
    case 10:
      v518.i64[0] = 0xFFFF0000FFFFLL;
      v518.i64[1] = 0xFFFF0000FFFFLL;
      v519 = vorrq_s8(vandq_s8(vshrq_n_u32(v501, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v501, v518));
      v520 = vorrq_s8(vandq_s8(vshrq_n_u64(v519, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v519, vdupq_n_s64(0x3FFFFFFuLL)));
      v518.i64[0] = vextq_s8(v520, v520, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v518.i64[0], 0x28uLL), *v520.i8);
      *(v358 + 4) = vshrd_n_u64(v518.u64[0], 0x18uLL);
      v521 = (v358 + 10);
      v518.i64[0] = 0xFFFF0000FFFFLL;
      v518.i64[1] = 0xFFFF0000FFFFLL;
      v522 = vshlq_u16(v376, v500);
      v523 = vorrq_s8(vandq_s8(vshrq_n_u32(v522, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v522, v518));
      v524 = vorrq_s8(vandq_s8(vshrq_n_u64(v523, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v523, vdupq_n_s64(0x3FFFFFFuLL)));
      v518.i64[0] = vextq_s8(v524, v524, 8uLL).u64[0];
      *v521 = vorr_s8(vshld_n_s64(v518.i64[0], 0x28uLL), *v524.i8);
      v521[1].i16[0] = vshrd_n_u64(v518.u64[0], 0x18uLL);
      v358 = (&v521[1] + 2);
      goto LABEL_216;
  }

LABEL_284:
  v1000 = v500;
  v1006 = v376;
  v1013 = v379;
  v1022 = v380;
  v1032 = v383;
  v1044 = v384;
  v740 = 0;
  v1070 = 0uLL;
  do
  {
    v1058 = v501;
    v1070.i16[v740] = *(&v1058 & 0xFFFFFFFFFFFFFFF1 | (2 * (v740 & 7)));
    ++v740;
  }

  while (v740 != 8);
  v741 = vectorWritePacked(v358, &v1070, v499);
  v742 = vshlq_u16(v1006, v1000);
  v990 = 0;
  v1070 = 0uLL;
  do
  {
    v1057 = v742;
    v1070.i16[v990] = *(&v1057 & 0xFFFFFFFFFFFFFFF1 | (2 * (v990 & 7)));
    ++v990;
  }

  while (v990 != 8);
  v358 = vectorWritePacked(v741, &v1070, v499);
  v383 = v1032;
  v384 = v1044;
  v379 = v1013;
  v380 = v1022;
LABEL_216:
  v576 = *(a1 + 29);
  v577 = v576 - *(a1 + 27) * v576 / 8;
  v578 = vdupq_n_s16(*(a1 + 27) * v576 / -8);
  v579 = vshlq_u16(v379, v578);
  if (v577 <= 4)
  {
    if (v577 <= 1)
    {
      if (!v577)
      {
        goto LABEL_239;
      }

      if (v577 != 1)
      {
        goto LABEL_287;
      }

      v603 = vorrq_s8(vshrq_n_u32(v579, 0xFuLL), v579);
      v604.i64[0] = 0xFFFFLL;
      v604.i64[1] = 0xFFFFLL;
      v605 = vorrq_s8(vandq_s8(vshrq_n_u64(v603, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v603, v604));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v605, v605, 8uLL).i64[0], 4uLL), *v605.i8).u32[0];
      v606 = (v358 + 1);
      v607 = vshlq_u16(v380, v578);
      v608 = vorrq_s8(vshrq_n_u32(v607, 0xFuLL), v607);
      v604.i64[0] = 0xFFFFLL;
      v604.i64[1] = 0xFFFFLL;
      v609 = vorrq_s8(vandq_s8(vshrq_n_u64(v608, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v608, v604));
      v610 = vorr_s8(vshld_n_s64(vextq_s8(v609, v609, 8uLL).i64[0], 4uLL), *v609.i8).u32[0];
      v611 = 1;
    }

    else if (v577 == 2)
    {
      v632 = vorrq_s8(vshrq_n_u32(v579, 0xEuLL), v579);
      v633.i64[0] = 0xFFFFLL;
      v633.i64[1] = 0xFFFFLL;
      v634 = vorrq_s8(vandq_s8(vshrq_n_u64(v632, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v632, v633));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v634, v634, 8uLL).i64[0], 8uLL), *v634.i8).u32[0];
      v606 = (v358 + 2);
      v635 = vshlq_u16(v380, v578);
      v636 = vorrq_s8(vshrq_n_u32(v635, 0xEuLL), v635);
      v633.i64[0] = 0xFFFFLL;
      v633.i64[1] = 0xFFFFLL;
      v637 = vorrq_s8(vandq_s8(vshrq_n_u64(v636, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v636, v633));
      v610 = vorr_s8(vshld_n_s64(vextq_s8(v637, v637, 8uLL).i64[0], 8uLL), *v637.i8).u32[0];
      v611 = 2;
    }

    else
    {
      if (v577 != 3)
      {
        v587 = vorrq_s8(vshrq_n_u32(v579, 0xCuLL), v579);
        v588.i64[0] = 16776960;
        v588.i64[1] = 16776960;
        v589 = vandq_s8(vshrq_n_u64(v587, 0x18uLL), v588);
        v588.i64[0] = 0xFFFFLL;
        v588.i64[1] = 0xFFFFLL;
        v590 = vorrq_s8(v589, vandq_s8(v587, v588));
        *v358 = vorr_s8(vshld_n_s64(vextq_s8(v590, v590, 8uLL).i64[0], 0x10uLL), *v590.i8).u32[0];
        v591 = v358 + 1;
        v592 = vshlq_u16(v380, v578);
        v593 = vorrq_s8(vshrq_n_u32(v592, 0xCuLL), v592);
        v588.i64[0] = 16776960;
        v588.i64[1] = 16776960;
        v594 = vandq_s8(vshrq_n_u64(v593, 0x18uLL), v588);
        v588.i64[0] = 0xFFFFLL;
        v588.i64[1] = 0xFFFFLL;
        v595 = vorrq_s8(v594, vandq_s8(v593, v588));
        *v591 = vorr_s8(vshld_n_s64(vextq_s8(v595, v595, 8uLL).i64[0], 0x10uLL), *v595.i8).u32[0];
        v358 = (v591 + 1);
        goto LABEL_239;
      }

      v612 = vorrq_s8(vshrq_n_u32(v579, 0xDuLL), v579);
      v613.i64[0] = 0xFFFFLL;
      v613.i64[1] = 0xFFFFLL;
      v614 = vorrq_s8(vandq_s8(vshrq_n_u64(v612, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v612, v613));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v614, v614, 8uLL).i64[0], 0xCuLL), *v614.i8).u32[0];
      v606 = (v358 + 3);
      v615 = vshlq_u16(v380, v578);
      v616 = vorrq_s8(vshrq_n_u32(v615, 0xDuLL), v615);
      v613.i64[0] = 0xFFFFLL;
      v613.i64[1] = 0xFFFFLL;
      v617 = vorrq_s8(vandq_s8(vshrq_n_u64(v616, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v616, v613));
      v610 = vorr_s8(vshld_n_s64(vextq_s8(v617, v617, 8uLL).i64[0], 0xCuLL), *v617.i8).u32[0];
      v611 = 3;
    }

    *v606 = v610;
    v358 = (v606 + v611);
    goto LABEL_239;
  }

  if (v577 <= 7)
  {
    if (v577 == 5)
    {
      v638 = vorrq_s8(vshrq_n_u32(v579, 0xBuLL), v579);
      v639.i64[0] = 0xFFFFLL;
      v639.i64[1] = 0xFFFFLL;
      v640 = vorrq_s8(vandq_s8(vshrq_n_u64(v638, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v638, v639));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v640, v640, 8uLL).i64[0], 0x14uLL), *v640.i8);
      v641 = (v358 + 5);
      v642 = vshlq_u16(v380, v578);
      v643 = vorrq_s8(vshrq_n_u32(v642, 0xBuLL), v642);
      v639.i64[0] = 0xFFFFLL;
      v639.i64[1] = 0xFFFFLL;
      v644 = vorrq_s8(vandq_s8(vshrq_n_u64(v643, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v643, v639));
      *v641 = vorr_s8(vshld_n_s64(vextq_s8(v644, v644, 8uLL).i64[0], 0x14uLL), *v644.i8);
      v358 = (v641 + 5);
    }

    else if (v577 == 6)
    {
      v618 = vorrq_s8(vshrq_n_u32(v579, 0xAuLL), v579);
      v619.i64[0] = 0xFFFFLL;
      v619.i64[1] = 0xFFFFLL;
      v620 = vorrq_s8(vandq_s8(vshrq_n_u64(v618, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v618, v619));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v620, v620, 8uLL).i64[0], 0x18uLL), *v620.i8);
      v621 = (v358 + 6);
      v622 = vshlq_u16(v380, v578);
      v623 = vorrq_s8(vshrq_n_u32(v622, 0xAuLL), v622);
      v619.i64[0] = 0xFFFFLL;
      v619.i64[1] = 0xFFFFLL;
      v624 = vorrq_s8(vandq_s8(vshrq_n_u64(v623, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v623, v619));
      *v621 = vorr_s8(vshld_n_s64(vextq_s8(v624, v624, 8uLL).i64[0], 0x18uLL), *v624.i8);
      v358 = (v621 + 6);
    }

    else
    {
      v580 = vorrq_s8(vshrq_n_u32(v579, 9uLL), v579);
      v581.i64[0] = 0xFFFFLL;
      v581.i64[1] = 0xFFFFLL;
      v582 = vorrq_s8(vandq_s8(vshrq_n_u64(v580, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v580, v581));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v582, v582, 8uLL).i64[0], 0x1CuLL), *v582.i8);
      v583 = (v358 + 7);
      v584 = vshlq_u16(v380, v578);
      v585 = vorrq_s8(vshrq_n_u32(v584, 9uLL), v584);
      v581.i64[0] = 0xFFFFLL;
      v581.i64[1] = 0xFFFFLL;
      v586 = vorrq_s8(vandq_s8(vshrq_n_u64(v585, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v585, v581));
      *v583 = vorr_s8(vshld_n_s64(vextq_s8(v586, v586, 8uLL).i64[0], 0x1CuLL), *v586.i8);
      v358 = (v583 + 7);
    }

    goto LABEL_239;
  }

  switch(v577)
  {
    case 8:
      v645 = vorrq_s8(vshrq_n_u32(v579, 8uLL), v579);
      v646.i64[0] = 4294901760;
      v646.i64[1] = 4294901760;
      v647 = vandq_s8(vshrq_n_u64(v645, 0x10uLL), v646);
      v646.i64[0] = 0xFFFFLL;
      v646.i64[1] = 0xFFFFLL;
      v648 = vorrq_s8(v647, vandq_s8(v645, v646));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v648, v648, 8uLL).i64[0], 0x20uLL), *v648.i8);
      v649 = (v358 + 1);
      v650 = vshlq_u16(v380, v578);
      v651 = vorrq_s8(vshrq_n_u32(v650, 8uLL), v650);
      v646.i64[0] = 4294901760;
      v646.i64[1] = 4294901760;
      v652 = vandq_s8(vshrq_n_u64(v651, 0x10uLL), v646);
      v646.i64[0] = 0xFFFFLL;
      v646.i64[1] = 0xFFFFLL;
      v653 = vorrq_s8(v652, vandq_s8(v651, v646));
      *v649 = vorr_s8(vshld_n_s64(vextq_s8(v653, v653, 8uLL).i64[0], 0x20uLL), *v653.i8);
      v358 = &v649[1];
      goto LABEL_239;
    case 9:
      v625.i64[0] = 0xFFFF0000FFFFLL;
      v625.i64[1] = 0xFFFF0000FFFFLL;
      v626 = vorrq_s8(vandq_s8(vshrq_n_u32(v579, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v579, v625));
      v627 = vorrq_s8(vandq_s8(vshrq_n_u64(v626, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v626, vdupq_n_s64(0x1FFFFFFuLL)));
      v625.i64[0] = vextq_s8(v627, v627, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v625.i64[0], 0x24uLL), *v627.i8);
      *(v358 + 8) = vshrd_n_u64(v625.u64[0], 0x1CuLL);
      v628 = (v358 + 9);
      v625.i64[0] = 0xFFFF0000FFFFLL;
      v625.i64[1] = 0xFFFF0000FFFFLL;
      v629 = vshlq_u16(v380, v578);
      v630 = vorrq_s8(vandq_s8(vshrq_n_u32(v629, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v629, v625));
      v631 = vorrq_s8(vandq_s8(vshrq_n_u64(v630, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v630, vdupq_n_s64(0x1FFFFFFuLL)));
      v625.i64[0] = vextq_s8(v631, v631, 8uLL).u64[0];
      *v628 = vorr_s8(vshld_n_s64(v625.i64[0], 0x24uLL), *v631.i8);
      v628[1].i8[0] = vshrd_n_u64(v625.u64[0], 0x1CuLL);
      v358 = (&v628[1] + 1);
      goto LABEL_239;
    case 10:
      v596.i64[0] = 0xFFFF0000FFFFLL;
      v596.i64[1] = 0xFFFF0000FFFFLL;
      v597 = vorrq_s8(vandq_s8(vshrq_n_u32(v579, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v579, v596));
      v598 = vorrq_s8(vandq_s8(vshrq_n_u64(v597, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v597, vdupq_n_s64(0x3FFFFFFuLL)));
      v596.i64[0] = vextq_s8(v598, v598, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v596.i64[0], 0x28uLL), *v598.i8);
      *(v358 + 4) = vshrd_n_u64(v596.u64[0], 0x18uLL);
      v599 = (v358 + 10);
      v596.i64[0] = 0xFFFF0000FFFFLL;
      v596.i64[1] = 0xFFFF0000FFFFLL;
      v600 = vshlq_u16(v380, v578);
      v601 = vorrq_s8(vandq_s8(vshrq_n_u32(v600, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v600, v596));
      v602 = vorrq_s8(vandq_s8(vshrq_n_u64(v601, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v601, vdupq_n_s64(0x3FFFFFFuLL)));
      v596.i64[0] = vextq_s8(v602, v602, 8uLL).u64[0];
      *v599 = vorr_s8(vshld_n_s64(v596.i64[0], 0x28uLL), *v602.i8);
      v599[1].i16[0] = vshrd_n_u64(v596.u64[0], 0x18uLL);
      v358 = (&v599[1] + 2);
      goto LABEL_239;
  }

LABEL_287:
  v1014 = v578;
  v1023 = v380;
  v1033 = v383;
  v1045 = v384;
  v743 = 0;
  v1070 = 0uLL;
  do
  {
    v1056 = v579;
    v1070.i16[v743] = *(&v1056 & 0xFFFFFFFFFFFFFFF1 | (2 * (v743 & 7)));
    ++v743;
  }

  while (v743 != 8);
  v744 = vectorWritePacked(v358, &v1070, v577);
  v745 = vshlq_u16(v1023, v1014);
  v991 = 0;
  v1070 = 0uLL;
  do
  {
    v1055 = v745;
    v1070.i16[v991] = *(&v1055 & 0xFFFFFFFFFFFFFFF1 | (2 * (v991 & 7)));
    ++v991;
  }

  while (v991 != 8);
  v358 = vectorWritePacked(v744, &v1070, v577);
  v383 = v1033;
  v384 = v1045;
LABEL_239:
  v654 = *(a1 + 33);
  v655 = v654 - *(a1 + 27) * v654 / 8;
  v656 = vdupq_n_s16(*(a1 + 27) * v654 / -8);
  v657 = vshlq_u16(v383, v656);
  if (v655 <= 4)
  {
    if (v655 > 1)
    {
      if (v655 != 2)
      {
        if (v655 != 3)
        {
          v664 = vorrq_s8(vshrq_n_u32(v657, 0xCuLL), v657);
          v665.i64[0] = 16776960;
          v665.i64[1] = 16776960;
          v666 = vandq_s8(vshrq_n_u64(v664, 0x18uLL), v665);
          v665.i64[0] = 0xFFFFLL;
          v665.i64[1] = 0xFFFFLL;
          v667 = vorrq_s8(v666, vandq_s8(v664, v665));
          *v358 = vorr_s8(vshld_n_s64(vextq_s8(v667, v667, 8uLL).i64[0], 0x10uLL), *v667.i8).u32[0];
          v358 = (v358 + 4);
          v668 = vshlq_u16(v384, v656);
          v669 = vorrq_s8(vshrq_n_u32(v668, 0xCuLL), v668);
LABEL_451:
          v962.i64[0] = 16776960;
          v962.i64[1] = 16776960;
          v963 = vandq_s8(vshrq_n_u64(v669, 0x18uLL), v962);
          v962.i64[0] = 0xFFFFLL;
          v962.i64[1] = 0xFFFFLL;
          v964 = vorrq_s8(v963, vandq_s8(v669, v962));
          *v358 = vorr_s8(vshld_n_s64(vextq_s8(v964, v964, 8uLL).i64[0], 0x10uLL), *v964.i8).u32[0];
          v358 = (v358 + 4);
          goto LABEL_476;
        }

        v681 = vorrq_s8(vshrq_n_u32(v657, 0xDuLL), v657);
        v682.i64[0] = 0xFFFFLL;
        v682.i64[1] = 0xFFFFLL;
        v683 = vorrq_s8(vandq_s8(vshrq_n_u64(v681, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL)), vandq_s8(v681, v682));
        *v358 = vorr_s8(vshld_n_s64(vextq_s8(v683, v683, 8uLL).i64[0], 0xCuLL), *v683.i8).u32[0];
        v358 = (v358 + 3);
        v684 = vshlq_u16(v384, v656);
        v685 = vorrq_s8(vshrq_n_u32(v684, 0xDuLL), v684);
        v686 = vandq_s8(vshrq_n_u64(v685, 0x1AuLL), vdupq_n_s64(0x3FFFC0uLL));
        goto LABEL_461;
      }

      v701 = vorrq_s8(vshrq_n_u32(v657, 0xEuLL), v657);
      v702.i64[0] = 0xFFFFLL;
      v702.i64[1] = 0xFFFFLL;
      v703 = vorrq_s8(vandq_s8(vshrq_n_u64(v701, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL)), vandq_s8(v701, v702));
      *v358 = vorr_s8(vshld_n_s64(vextq_s8(v703, v703, 8uLL).i64[0], 8uLL), *v703.i8).u32[0];
      v358 = (v358 + 2);
      v704 = vshlq_u16(v384, v656);
      v705 = vorrq_s8(vshrq_n_u32(v704, 0xEuLL), v704);
      v706 = vandq_s8(vshrq_n_u64(v705, 0x1CuLL), vdupq_n_s64(0xFFFF0uLL));
LABEL_467:
      v980.i64[0] = 0xFFFFLL;
      v980.i64[1] = 0xFFFFLL;
      v981 = vorrq_s8(v706, vandq_s8(v705, v980));
      v970 = vorr_s8(vshld_n_s64(vextq_s8(v981, v981, 8uLL).i64[0], 8uLL), *v981.i8).u32[0];
      v971 = 2;
      goto LABEL_468;
    }

    if (!v655)
    {
      goto LABEL_476;
    }

    if (v655 != 1)
    {
LABEL_290:
      v1034 = v656;
      v1046 = v384;
      v746 = 0;
      v1070 = 0uLL;
      do
      {
        v1054 = v657;
        v1070.i16[v746] = *(&v1054 & 0xFFFFFFFFFFFFFFF1 | (2 * (v746 & 7)));
        ++v746;
      }

      while (v746 != 8);
      v358 = vectorWritePacked(v358, &v1070, v655);
      v747 = vshlq_u16(v1046, v1034);
      v992 = 0;
      v1070 = 0uLL;
      do
      {
        v1053 = v747;
        v1070.i16[v992] = *(&v1053 & 0xFFFFFFFFFFFFFFF1 | (2 * (v992 & 7)));
        ++v992;
      }

      while (v992 != 8);
      v959 = v655;
LABEL_475:
      v358 = vectorWritePacked(v358, &v1070, v959);
      goto LABEL_476;
    }

    v675 = vorrq_s8(vshrq_n_u32(v657, 0xFuLL), v657);
    v676.i64[0] = 0xFFFFLL;
    v676.i64[1] = 0xFFFFLL;
    v677 = vorrq_s8(vandq_s8(vshrq_n_u64(v675, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL)), vandq_s8(v675, v676));
    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v677, v677, 8uLL).i64[0], 4uLL), *v677.i8).u32[0];
    v358 = (v358 + 1);
    v678 = vshlq_u16(v384, v656);
    v679 = vorrq_s8(vshrq_n_u32(v678, 0xFuLL), v678);
    v680 = vandq_s8(vshrq_n_u64(v679, 0x1EuLL), vdupq_n_s64(0x3FFFCuLL));
LABEL_459:
    v968.i64[0] = 0xFFFFLL;
    v968.i64[1] = 0xFFFFLL;
    v969 = vorrq_s8(v680, vandq_s8(v679, v968));
    v970 = vorr_s8(vshld_n_s64(vextq_s8(v969, v969, 8uLL).i64[0], 4uLL), *v969.i8).u32[0];
    v971 = 1;
LABEL_468:
    *v358 = v970;
    v358 = (v358 + v971);
    goto LABEL_476;
  }

  if (v655 > 7)
  {
    if (v655 != 8)
    {
      if (v655 != 9)
      {
        if (v655 == 10)
        {
          v670.i64[0] = 0xFFFF0000FFFFLL;
          v670.i64[1] = 0xFFFF0000FFFFLL;
          v671 = vorrq_s8(vandq_s8(vshrq_n_u32(v657, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v657, v670));
          v672 = vorrq_s8(vandq_s8(vshrq_n_u64(v671, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v671, vdupq_n_s64(0x3FFFFFFuLL)));
          v670.i64[0] = vextq_s8(v672, v672, 8uLL).u64[0];
          *v358 = vorr_s8(vshld_n_s64(v670.i64[0], 0x28uLL), *v672.i8);
          *(v358 + 4) = vshrd_n_u64(v670.u64[0], 0x18uLL);
          v358 = (v358 + 10);
          v670.i64[0] = 0xFFFF0000FFFFLL;
          v670.i64[1] = 0xFFFF0000FFFFLL;
          v673 = vshlq_u16(v384, v656);
          v674 = vorrq_s8(vandq_s8(vshrq_n_u32(v673, 6uLL), vdupq_n_s64(0x3FFFC0003FFFC00uLL)), vandq_s8(v673, v670));
LABEL_456:
          v966 = vorrq_s8(vandq_s8(vshrq_n_u64(v674, 0xCuLL), vdupq_n_s64(0x3FFFFFF00000uLL)), vandq_s8(v674, vdupq_n_s64(0x3FFFFFFuLL)));
          v967 = vextq_s8(v966, v966, 8uLL).u64[0];
          *v358 = vorr_s8(vshld_n_s64(v967, 0x28uLL), *v966.i8);
          *(v358 + 4) = vshrd_n_u64(v967, 0x18uLL);
          v358 = (v358 + 10);
          goto LABEL_476;
        }

        goto LABEL_290;
      }

      v693.i64[0] = 0xFFFF0000FFFFLL;
      v693.i64[1] = 0xFFFF0000FFFFLL;
      v694 = vorrq_s8(vandq_s8(vshrq_n_u32(v657, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v657, v693));
      v695 = vorrq_s8(vandq_s8(vshrq_n_u64(v694, 0xEuLL), vdupq_n_s64(0x7FFFFFC0000uLL)), vandq_s8(v694, vdupq_n_s64(0x1FFFFFFuLL)));
      v693.i64[0] = vextq_s8(v695, v695, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v693.i64[0], 0x24uLL), *v695.i8);
      *(v358 + 8) = vshrd_n_u64(v693.u64[0], 0x1CuLL);
      v358 = (v358 + 9);
      v693.i64[0] = 0xFFFF0000FFFFLL;
      v693.i64[1] = 0xFFFF0000FFFFLL;
      v696 = vshlq_u16(v384, v656);
      v697 = vorrq_s8(vandq_s8(vshrq_n_u32(v696, 7uLL), vdupq_n_s64(0x1FFFE0001FFFE00uLL)), vandq_s8(v696, v693));
      v698 = vandq_s8(v697, vdupq_n_s64(0x1FFFFFFuLL));
      v699 = vdupq_n_s64(0x7FFFFFC0000uLL);
      v700 = vshrq_n_u64(v697, 0xEuLL);
LABEL_465:
      v978 = vorrq_s8(vandq_s8(v700, v699), v698);
      v979 = vextq_s8(v978, v978, 8uLL).u64[0];
      *v358 = vorr_s8(vshld_n_s64(v979, 0x24uLL), *v978.i8);
      *(v358 + 8) = vshrd_n_u64(v979, 0x1CuLL);
      v358 = (v358 + 9);
      goto LABEL_476;
    }

    v713 = vorrq_s8(vshrq_n_u32(v657, 8uLL), v657);
    v714.i64[0] = 4294901760;
    v714.i64[1] = 4294901760;
    v715 = vandq_s8(vshrq_n_u64(v713, 0x10uLL), v714);
    v714.i64[0] = 0xFFFFLL;
    v714.i64[1] = 0xFFFFLL;
    v716 = vorrq_s8(v715, vandq_s8(v713, v714));
    *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v716, v716, 8uLL).i64[0], 0x20uLL), *v716.i8);
    v717 = vshlq_u16(v384, v656);
    v718 = vorrq_s8(vshrq_n_u32(v717, 8uLL), v717);
LABEL_472:
    v984.i64[0] = 4294901760;
    v984.i64[1] = 4294901760;
    v985 = vandq_s8(vshrq_n_u64(v718, 0x10uLL), v984);
    v984.i64[0] = 0xFFFFLL;
    v984.i64[1] = 0xFFFFLL;
    v986 = vorrq_s8(v985, vandq_s8(v718, v984));
    *v358++ = vorr_s8(vshld_n_s64(vextq_s8(v986, v986, 8uLL).i64[0], 0x20uLL), *v986.i8);
    goto LABEL_476;
  }

  if (v655 == 5)
  {
    v707 = vorrq_s8(vshrq_n_u32(v657, 0xBuLL), v657);
    v708.i64[0] = 0xFFFFLL;
    v708.i64[1] = 0xFFFFLL;
    v709 = vorrq_s8(vandq_s8(vshrq_n_u64(v707, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL)), vandq_s8(v707, v708));
    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v709, v709, 8uLL).i64[0], 0x14uLL), *v709.i8);
    v358 = (v358 + 5);
    v710 = vshlq_u16(v384, v656);
    v711 = vorrq_s8(vshrq_n_u32(v710, 0xBuLL), v710);
    v712 = vandq_s8(vshrq_n_u64(v711, 0x16uLL), vdupq_n_s64(0x3FFFC00uLL));
LABEL_470:
    v982.i64[0] = 0xFFFFLL;
    v982.i64[1] = 0xFFFFLL;
    v983 = vorrq_s8(v712, vandq_s8(v711, v982));
    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v983, v983, 8uLL).i64[0], 0x14uLL), *v983.i8);
    v358 = (v358 + 5);
    goto LABEL_476;
  }

  if (v655 != 6)
  {
    v658 = vorrq_s8(vshrq_n_u32(v657, 9uLL), v657);
    v659.i64[0] = 0xFFFFLL;
    v659.i64[1] = 0xFFFFLL;
    v660 = vorrq_s8(vandq_s8(vshrq_n_u64(v658, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL)), vandq_s8(v658, v659));
    *v358 = vorr_s8(vshld_n_s64(vextq_s8(v660, v660, 8uLL).i64[0], 0x1CuLL), *v660.i8);
    v358 = (v358 + 7);
    v661 = vshlq_u16(v384, v656);
    v662 = vorrq_s8(vshrq_n_u32(v661, 9uLL), v661);
    v663 = vandq_s8(vshrq_n_u64(v662, 0x12uLL), vdupq_n_s64(0x3FFFC000uLL));
    goto LABEL_445;
  }

  v687 = vorrq_s8(vshrq_n_u32(v657, 0xAuLL), v657);
  v688.i64[0] = 0xFFFFLL;
  v688.i64[1] = 0xFFFFLL;
  v689 = vorrq_s8(vandq_s8(vshrq_n_u64(v687, 0x14uLL), vdupq_n_s64(0xFFFF000uLL)), vandq_s8(v687, v688));
  *v358 = vorr_s8(vshld_n_s64(vextq_s8(v689, v689, 8uLL).i64[0], 0x18uLL), *v689.i8);
  v358 = (v358 + 6);
  v690 = vshlq_u16(v384, v656);
  v691 = vorrq_s8(vshrq_n_u32(v690, 0xAuLL), v690);
  v692 = vandq_s8(vshrq_n_u64(v691, 0x14uLL), vdupq_n_s64(0xFFFF000uLL));
LABEL_463:
  v974.i64[0] = 0xFFFFLL;
  v974.i64[1] = 0xFFFFLL;
  v975 = vorrq_s8(v692, vandq_s8(v691, v974));
  *v358 = vorr_s8(vshld_n_s64(vextq_s8(v975, v975, 8uLL).i64[0], 0x18uLL), *v975.i8);
  v358 = (v358 + 6);
LABEL_476:
  v11 = 0;
  a1[2] = v358;
  return v11;
}

unsigned int *vectorload_1x16_packed10(unsigned int *result, int a2, _WORD *a3, _WORD *a4)
{
  v4 = *result;
  if (a2 == 2)
  {
    *a3 = (v4 >> 20) & 0x3FF;
    v15 = result[1];
    v16 = result[2];
    a3[1] = v15 & 0x3FF;
    a3[2] = (v15 >> 10) & 0x3FF;
    a3[3] = (v15 >> 20) & 0x3FF;
    a3[4] = v16 & 0x3FF;
    a3[5] = (v16 >> 10) & 0x3FF;
    a3[6] = (v16 >> 20) & 0x3FF;
    v17 = result[3];
    v18 = result[4];
    a3[7] = v17 & 0x3FF;
    *a4 = (v17 >> 10) & 0x3FF;
    a4[1] = (v17 >> 20) & 0x3FF;
    a4[2] = v18 & 0x3FF;
    a4[3] = (v18 >> 10) & 0x3FF;
    LOWORD(v17) = (v18 >> 20) & 0x3FF;
    v19 = result[5];
    a4[4] = v17;
    a4[5] = v19 & 0x3FF;
    v9 = v19 >> 20;
    a4[6] = (v19 >> 10) & 0x3FF;
  }

  else if (a2 == 1)
  {
    *a3 = (v4 >> 10) & 0x3FF;
    a3[1] = (v4 >> 20) & 0x3FF;
    v10 = result[1];
    v11 = result[2];
    a3[2] = v10 & 0x3FF;
    a3[3] = (v10 >> 10) & 0x3FF;
    a3[4] = (v10 >> 20) & 0x3FF;
    a3[5] = v11 & 0x3FF;
    a3[6] = (v11 >> 10) & 0x3FF;
    a3[7] = (v11 >> 20) & 0x3FF;
    v12 = result[3];
    v13 = result[4];
    *a4 = v12 & 0x3FF;
    a4[1] = (v12 >> 10) & 0x3FF;
    a4[2] = (v12 >> 20) & 0x3FF;
    a4[3] = v13 & 0x3FF;
    a4[4] = (v13 >> 10) & 0x3FF;
    a4[5] = (v13 >> 20) & 0x3FF;
    v14 = result[5];
    LOWORD(v13) = v14 & 0x3FF;
    v9 = v14 >> 10;
    a4[6] = v13;
  }

  else
  {
    if (a2)
    {
      vectorload_1x16_packed10_cold_1();
    }

    *a3 = v4 & 0x3FF;
    a3[1] = (v4 >> 10) & 0x3FF;
    a3[2] = (v4 >> 20) & 0x3FF;
    v5 = result[1];
    v6 = result[2];
    a3[3] = v5 & 0x3FF;
    a3[4] = (v5 >> 10) & 0x3FF;
    a3[5] = (v5 >> 20) & 0x3FF;
    a3[6] = v6 & 0x3FF;
    a3[7] = (v6 >> 10) & 0x3FF;
    *a4 = (v6 >> 20) & 0x3FF;
    v7 = result[3];
    v8 = result[4];
    a4[1] = v7 & 0x3FF;
    a4[2] = (v7 >> 10) & 0x3FF;
    a4[3] = (v7 >> 20) & 0x3FF;
    a4[4] = v8 & 0x3FF;
    a4[5] = (v8 >> 10) & 0x3FF;
    a4[6] = (v8 >> 20) & 0x3FF;
    v9 = result[5];
  }

  a4[7] = v9 & 0x3FF;
  return result;
}

int *SlimXDecodeBlocks_NEON(int *result, double a2, uint32x4_t a3, uint32x4_t a4)
{
  v427 = *MEMORY[0x1E69E9840];
  v4 = *(result + 2);
  v5 = *(result + 3);
  if (v4 >= v5)
  {
    goto LABEL_288;
  }

  v6 = *result;
  v7 = result[2];
  v8 = result[3];
  v9 = result + 42;
  v11 = result[8];
  v10 = result[9];
  v12 = vdupq_n_s16(v10);
  v13 = predictionPattern[v11];
  v14 = (v4 + 2);
  while (1)
  {
    v15 = v14 - 1;
    *(result + 2) = v14 - 1;
    v16 = *(v14 - 2);
    v17 = v16 & 0xF;
    v18 = v16 >> 4;
    if (v16 >> 4 != 6)
    {
      break;
    }

    if (v17 < 8)
    {
      v19 = 10 - v17;
      if ((v16 & 0xF) == 0)
      {
        v19 = 0;
      }

      result[27] = v17;
      result[28] = v19;
      ++v14;
      if (v15 != v5)
      {
        continue;
      }
    }

    goto LABEL_288;
  }

  if (v16 >> 4 <= 2)
  {
    if (v18 < 3)
    {
      if (v15 >= v5)
      {
        goto LABEL_288;
      }

      *(result + 2) = v14;
      v26 = *(v14 - 1) | (v18 << 8);
      v27 = v26;
      v28 = v26 % 5u;
      *(result + 34) = v26 % 5u;
      v29 = (v26 / 5u) % 5u;
      *(result + 30) = v29;
      v30 = ((((v26 - ((18351 * v27) >> 16)) >> 1) + ((18351 * v27) >> 16)) >> 4) % 5u;
      *(result + 26) = v30;
      v31 = (((v26 - ((1573 * v27) >> 16)) >> 1) + ((1573 * v27) >> 16)) >> 6;
      if (v27 >= 0x271)
      {
        v32 = v31 - 5;
      }

      else
      {
        v32 = v31;
      }

      *(result + 22) = v32;
      goto LABEL_30;
    }
  }

  else
  {
    if (v16 >> 4 <= 4)
    {
      if (v18 == 3)
      {
        v21 = *&v9[(v13 >> 9) & 0x7FFFF8];
        *(result + 21) = v21;
        LOWORD(v22) = *&v9[8 * ((v13 >> 8) & 0xF)];
        *(result + 25) = v22;
        LOWORD(v24) = *&v9[8 * (v13 >> 4)];
        *(result + 29) = v24;
        LOWORD(v25) = *&v9[8 * (v13 & 0xF)];
      }

      else
      {
        if (v15 >= v5)
        {
          goto LABEL_288;
        }

        *(result + 2) = v14;
        v20 = *(v14 - 1);
        v21 = v20 & 0xF;
        *(result + 21) = v21;
        v22 = v20 >> 4;
        *(result + 25) = v20 >> 4;
        if (v14 >= v5)
        {
          goto LABEL_288;
        }

        v15 = v14 + 1;
        *(result + 2) = v14 + 1;
        v23 = *v14;
        LOWORD(v24) = v23 & 0xF;
        *(result + 29) = v24;
        v25 = v23 >> 4;
      }

      *(result + 33) = v25;
      v14 = v15;
      goto LABEL_31;
    }

    if (v18 == 5)
    {
      if (v15 >= v5)
      {
        goto LABEL_288;
      }

      *(result + 2) = v14;
      if (v14 >= v5)
      {
        goto LABEL_288;
      }

      v33 = *(v14 - 1);
      *(result + 2) = v14 + 1;
      if ((v14 + 1) >= v5)
      {
        goto LABEL_288;
      }

      v34 = *v14;
      v35 = v14 + 2;
      *(result + 2) = v14 + 2;
      v36 = v14[1];
      v37 = (v34 << 8) | (v36 << 16);
      v21 = v33 & 0x3F;
      v38 = v33 & 0xFFFF00FF | (v34 << 8);
      *(result + 21) = v21;
      v22 = (v38 >> 6) & 0x3F;
      *(result + 25) = (v38 >> 6) & 0x3F;
      v24 = (v37 >> 12) & 0x3F;
      *(result + 29) = (v37 >> 12) & 0x3F;
      v25 = v36 >> 2;
      *(result + 33) = v36 >> 2;
      v14 = v35;
      goto LABEL_31;
    }

    if (v18 == 7)
    {
      goto LABEL_288;
    }
  }

  *(result + 34) = 2;
  *(result + 30) = 2;
  *(result + 26) = 2;
  *(result + 22) = 2;
  *&v9[8 * ((v16 >> 5) & 3) + 2] = (2 * ((v16 & 0x10) != 0)) ^ 3;
  v32 = *(result + 22);
  v30 = *(result + 26);
  v29 = *(result + 30);
  v28 = *(result + 34);
  --v14;
LABEL_30:
  v21 = v32 + *&v9[(v13 >> 9) & 0x7FFFF8] - 2;
  *(result + 21) = v21;
  LOWORD(v22) = v30 + *&v9[8 * ((v13 >> 8) & 0xF)] - 2;
  *(result + 25) = v22;
  LOWORD(v24) = v29 + *&v9[8 * (v13 >> 4)] - 2;
  *(result + 29) = v24;
  LOWORD(v25) = v28 + *&v9[8 * (v13 & 0xF)] - 2;
  *(result + 33) = v25;
LABEL_31:
  if (v11 >= 6)
  {
    v39 = 16;
  }

  else
  {
    v39 = 8;
  }

  if (v39 < v21)
  {
    goto LABEL_288;
  }

  v40 = v22;
  if (v39 < v22)
  {
    goto LABEL_288;
  }

  v41 = v24;
  if (v39 < v24)
  {
    goto LABEL_288;
  }

  v42 = v25;
  if (v39 < v25)
  {
    goto LABEL_288;
  }

  v43 = result + 23;
  v44 = 16;
  do
  {
    if ((v17 & 1) == 0)
    {
      LOWORD(v45) = 0;
LABEL_41:
      *v43 = *&v9[8 * ((v13 >> (v44 - 4)) & 3) + 4] + v45;
      goto LABEL_54;
    }

    if (v14 >= v5)
    {
      goto LABEL_288;
    }

    v46 = v14 + 1;
    *(result + 2) = v14 + 1;
    v45 = *v14;
    if (v11 > 5)
    {
      if (*v14)
      {
        if ((v45 & 0x80) != 0)
        {
          if (v46 >= v5)
          {
            goto LABEL_288;
          }

          v48 = v14 + 2;
          *(result + 2) = v14 + 2;
          v49 = v45 & 0x3F | (v14[1] << 6);
          if ((v45 & 0x40) != 0)
          {
            v45 = -v49;
          }

          else
          {
            LOWORD(v45) = v49;
          }

          v14 = v48;
        }

        else
        {
          if (v45 >= 0x40)
          {
            v45 = -(v45 & 0x3F);
          }

          ++v14;
        }

        goto LABEL_41;
      }

      if (v46 >= v5)
      {
        goto LABEL_288;
      }

      *(result + 2) = v14 + 2;
      v47 = v14[1];
      *v43 = v47;
      if ((v14 + 2) >= v5)
      {
        goto LABEL_288;
      }

      v46 = v14 + 3;
      *(result + 2) = v14 + 3;
      *v43 = v47 | (v14[2] << 8);
    }

    else
    {
      *v43 = v45;
    }

    v14 = v46;
LABEL_54:
    v17 >>= 1;
    v43 += 4;
    v44 -= 4;
  }

  while (v44);
  v50 = result[27];
  if (v11 <= 0x10 && v50)
  {
    if (v11 >= 0xC || v11 == 6)
    {
      v52 = 0;
    }

    else
    {
      v52 = -1;
    }

    v53 = v50 * v21 + 7;
    v54 = v50 * v21 / 8;
    v55 = v21 - v54;
    v56 = 1 << (v54 - 1);
    if (v53 < 0xF)
    {
      v56 = 0;
    }

    if (v55 <= 0x10 && (v5 - v14) >= v55)
    {
      a3.i32[0] = v11;
      a4.i32[0] = 6;
      v57 = vdupq_lane_s32(*&vcgtq_u32(a4, a3), 0);
      v58 = vdupq_n_s16(v52);
      v59 = vbicq_s8(vornq_s8((*&v58 & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL)), v58), v57);
      v60 = *&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      v61 = v56 + *(result + 23);
      if (v55 < 5)
      {
        v64 = 0;
        v62 = 0;
      }

      else
      {
        v63 = *v14;
        v14 += 4;
        v62 = v63;
        v64 = 32;
      }

      v75 = 0;
      v76 = vdupq_n_s16(v54);
      v77 = vdupq_n_s16(v61);
      v78 = vorrq_s8(v60, v59);
      v79 = ~(-1 << v55);
      v426 = 0uLL;
      do
      {
        while (v64 < v55)
        {
          v80 = *v14++;
          v62 += v80 << v64;
          v64 += 8;
        }

        v426.i16[v75] = v62 & v79;
        v62 >>= v55;
        v64 -= v55;
        ++v75;
      }

      while (v75 != 8);
      *(result + 2) = v14;
      if ((v5 - v14) >= v55)
      {
        v81 = vaddq_s16(vshlq_u16(v426, v76), v77);
        if (v55 < 5)
        {
          v84 = 0;
          v82 = 0;
        }

        else
        {
          v83 = *v14;
          v14 += 4;
          v82 = v83;
          v84 = 32;
        }

        v91 = 0;
        v86 = vminq_u16(v81, v78);
        v426 = 0uLL;
        do
        {
          while (v84 < v55)
          {
            v92 = *v14++;
            v82 += v92 << v84;
            v84 += 8;
          }

          v426.i16[v91] = v82 & v79;
          v82 >>= v55;
          v84 -= v55;
          ++v91;
        }

        while (v91 != 8);
        *(result + 2) = v14;
        v93 = v50 * v40 + 7;
        v94 = v50 * v40 >= 0 ? v50 * v40 : v50 * v40 + 7;
        v95 = v94 >> 3;
        v96 = (v40 - (v94 >> 3));
        v97 = 1 << ((v94 >> 3) - 1);
        v98 = v93 >= 0xF ? v97 : 0;
        if (v96 <= 0x10 && (v5 - v14) >= v96)
        {
          v99 = vaddq_s16(vshlq_u16(v426, v76), v77);
          v100 = v98 + *(result + 27);
          if (v96 < 5)
          {
            v103 = 0;
            v101 = 0;
          }

          else
          {
            v102 = *v14;
            v14 += 4;
            v101 = v102;
            v103 = 32;
          }

          v112 = 0;
          v113 = vdupq_n_s16(v95);
          v114 = vdupq_n_s16(v100);
          v105 = vminq_u16(v99, v78);
          v115 = ~(-1 << v96);
          v426 = 0uLL;
          do
          {
            while (v103 < v96)
            {
              v116 = *v14++;
              v101 += v116 << v103;
              v103 += 8;
            }

            v426.i16[v112] = v101 & v115;
            v101 >>= v96;
            v103 -= v96;
            ++v112;
          }

          while (v112 != 8);
          *(result + 2) = v14;
          if ((v5 - v14) >= v96)
          {
            v117 = vaddq_s16(vshlq_u16(v426, v113), v114);
            if (v96 < 5)
            {
              v120 = 0;
              v118 = 0;
            }

            else
            {
              v119 = *v14;
              v14 += 4;
              v118 = v119;
              v120 = 32;
            }

            v127 = 0;
            v122 = vminq_u16(v117, v78);
            v426 = 0uLL;
            do
            {
              while (v120 < v96)
              {
                v128 = *v14++;
                v118 += v128 << v120;
                v120 += 8;
              }

              v426.i16[v127] = v118 & v115;
              v118 >>= v96;
              v120 -= v96;
              ++v127;
            }

            while (v127 != 8);
            *(result + 2) = v14;
            v129 = v50 * v41 + 7;
            v130 = v50 * v41 >= 0 ? v50 * v41 : v50 * v41 + 7;
            v131 = v130 >> 3;
            v132 = (v41 - (v130 >> 3));
            v133 = 1 << ((v130 >> 3) - 1);
            v134 = v129 >= 0xF ? v133 : 0;
            if (v132 <= 0x10 && (v5 - v14) >= v132)
            {
              v135 = vaddq_s16(vshlq_u16(v426, v113), v114);
              v136 = v134 + *(result + 31);
              if (v132 < 5)
              {
                v139 = 0;
                v137 = 0;
              }

              else
              {
                v138 = *v14;
                v14 += 4;
                v137 = v138;
                v139 = 32;
              }

              v148 = 0;
              v149 = vdupq_n_s16(v131);
              v150 = vdupq_n_s16(v136);
              v141 = vminq_u16(v135, v78);
              v151 = ~(-1 << v132);
              v426 = 0uLL;
              do
              {
                while (v139 < v132)
                {
                  v152 = *v14++;
                  v137 += v152 << v139;
                  v139 += 8;
                }

                v426.i16[v148] = v137 & v151;
                v137 >>= v132;
                v139 -= v132;
                ++v148;
              }

              while (v148 != 8);
              *(result + 2) = v14;
              if ((v5 - v14) >= v132)
              {
                v153 = vaddq_s16(vshlq_u16(v426, v149), v150);
                if (v132 < 5)
                {
                  v156 = 0;
                  v154 = 0;
                }

                else
                {
                  v155 = *v14;
                  v14 += 4;
                  v154 = v155;
                  v156 = 32;
                }

                v166 = 0;
                v158 = vminq_u16(v153, v78);
                v426 = 0uLL;
                do
                {
                  while (v156 < v132)
                  {
                    v167 = *v14++;
                    v154 += v167 << v156;
                    v156 += 8;
                  }

                  v426.i16[v166] = v154 & v151;
                  v154 >>= v132;
                  v156 -= v132;
                  ++v166;
                }

                while (v166 != 8);
                *(result + 2) = v14;
                v168 = v50 * v42 + 7;
                v169 = v50 * v42 >= 0 ? v50 * v42 : v50 * v42 + 7;
                v170 = v169 >> 3;
                v171 = (v42 - (v169 >> 3));
                v172 = 1 << ((v169 >> 3) - 1);
                v173 = v168 >= 0xF ? v172 : 0;
                if (v171 <= 0x10 && (v5 - v14) >= v171)
                {
                  v174 = vaddq_s16(vshlq_u16(v426, v149), v150);
                  v175 = v173 + *(result + 35);
                  if (v171 < 5)
                  {
                    v178 = 0;
                    v176 = 0;
                  }

                  else
                  {
                    v177 = *v14;
                    v14 += 4;
                    v176 = v177;
                    v178 = 32;
                  }

                  v179 = 0;
                  v180 = vdupq_n_s16(v170);
                  v181 = vdupq_n_s16(v175);
                  v160 = vminq_u16(v174, v78);
                  v182 = ~(-1 << v171);
                  v426 = 0uLL;
                  do
                  {
                    while (v178 < v171)
                    {
                      v183 = *v14++;
                      v176 += v183 << v178;
                      v178 += 8;
                    }

                    v426.i16[v179] = v176 & v182;
                    v176 >>= v171;
                    v178 -= v171;
                    ++v179;
                  }

                  while (v179 != 8);
                  *(result + 2) = v14;
                  if ((v5 - v14) >= v171)
                  {
                    v184 = vaddq_s16(vshlq_u16(v426, v180), v181);
                    if (v171 < 5)
                    {
                      v187 = 0;
                      v185 = 0;
                    }

                    else
                    {
                      v186 = *v14;
                      v14 += 4;
                      v185 = v186;
                      v187 = 32;
                    }

                    v188 = 0;
                    v161 = vminq_u16(v184, v78);
                    v426 = 0uLL;
                    do
                    {
                      while (v187 < v171)
                      {
                        v189 = *v14++;
                        v185 += v189 << v187;
                        v187 += 8;
                      }

                      v426.i16[v188] = v185 & v182;
                      v185 >>= v171;
                      v187 -= v171;
                      ++v188;
                    }

                    while (v188 != 8);
                    *(result + 2) = v14;
                    v162 = vminq_u16(vaddq_s16(vshlq_u16(v426, v180), v181), v78);
                    goto LABEL_230;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_288:
    longjmp(result + 29, -15407);
  }

  if (v21 > 0x10u || (v5 - v14) < v21)
  {
    goto LABEL_288;
  }

  if (v21 < 5u)
  {
    v67 = 0;
    v65 = 0;
  }

  else
  {
    v66 = *v14;
    v14 += 4;
    v65 = v66;
    v67 = 32;
  }

  v68 = 0;
  v69 = *(result + 23);
  v70 = ~(-1 << v21);
  v426 = 0uLL;
  do
  {
    while (v67 < v21)
    {
      v71 = *v14++;
      v65 += v71 << v67;
      v67 += 8;
    }

    v426.i16[v68] = v69 + (v65 & v70);
    v65 >>= v21;
    v67 -= v21;
    ++v68;
  }

  while (v68 != 8);
  *(result + 2) = v14;
  if ((v5 - v14) < v21)
  {
    goto LABEL_288;
  }

  if (v21 < 5u)
  {
    v74 = 0;
    v72 = 0;
  }

  else
  {
    v73 = *v14;
    v14 += 4;
    v72 = v73;
    v74 = 32;
  }

  v85 = 0;
  v86 = v426;
  v426 = 0uLL;
  do
  {
    while (v74 < v21)
    {
      v87 = *v14++;
      v72 += v87 << v74;
      v74 += 8;
    }

    v426.i16[v85] = v69 + (v72 & v70);
    v72 >>= v21;
    v74 -= v21;
    ++v85;
  }

  while (v85 != 8);
  *(result + 2) = v14;
  if (v40 > 0x10 || (v5 - v14) < v40)
  {
    goto LABEL_288;
  }

  if (v40 < 5)
  {
    v90 = 0;
    v88 = 0;
  }

  else
  {
    v89 = *v14;
    v14 += 4;
    v88 = v89;
    v90 = 32;
  }

  v104 = 0;
  v105 = v426;
  v106 = *(result + 27);
  v107 = ~(-1 << v40);
  v426 = 0uLL;
  do
  {
    while (v90 < v40)
    {
      v108 = *v14++;
      v88 += v108 << v90;
      v90 += 8;
    }

    v426.i16[v104] = v106 + (v88 & v107);
    v88 >>= v40;
    v90 -= v40;
    ++v104;
  }

  while (v104 != 8);
  *(result + 2) = v14;
  if ((v5 - v14) < v40)
  {
    goto LABEL_288;
  }

  if (v40 < 5)
  {
    v111 = 0;
    v109 = 0;
  }

  else
  {
    v110 = *v14;
    v14 += 4;
    v109 = v110;
    v111 = 32;
  }

  v121 = 0;
  v122 = v426;
  v426 = 0uLL;
  do
  {
    while (v111 < v40)
    {
      v123 = *v14++;
      v109 += v123 << v111;
      v111 += 8;
    }

    v426.i16[v121] = v106 + (v109 & v107);
    v109 >>= v40;
    v111 -= v40;
    ++v121;
  }

  while (v121 != 8);
  *(result + 2) = v14;
  if (v41 > 0x10 || (v5 - v14) < v41)
  {
    goto LABEL_288;
  }

  if (v41 < 5)
  {
    v126 = 0;
    v124 = 0;
  }

  else
  {
    v125 = *v14;
    v14 += 4;
    v124 = v125;
    v126 = 32;
  }

  v140 = 0;
  v141 = v426;
  v142 = *(result + 31);
  v143 = ~(-1 << v41);
  v426 = 0uLL;
  do
  {
    while (v126 < v41)
    {
      v144 = *v14++;
      v124 += v144 << v126;
      v126 += 8;
    }

    v426.i16[v140] = v142 + (v124 & v143);
    v124 >>= v41;
    v126 -= v41;
    ++v140;
  }

  while (v140 != 8);
  *(result + 2) = v14;
  if ((v5 - v14) < v41)
  {
    goto LABEL_288;
  }

  if (v41 < 5)
  {
    v147 = 0;
    v145 = 0;
  }

  else
  {
    v146 = *v14;
    v14 += 4;
    v145 = v146;
    v147 = 32;
  }

  v157 = 0;
  v158 = v426;
  v426 = 0uLL;
  do
  {
    while (v147 < v41)
    {
      v159 = *v14++;
      v145 += v159 << v147;
      v147 += 8;
    }

    v426.i16[v157] = v142 + (v145 & v143);
    v145 >>= v41;
    v147 -= v41;
    ++v157;
  }

  while (v157 != 8);
  *(result + 2) = v14;
  v160 = v426;
  if (v11 == 19)
  {
    v161 = 0uLL;
    v162 = 0uLL;
    if (!v50)
    {
LABEL_238:
      if (v10)
      {
        v86 = vshlq_u16(v86, v12);
        v105 = vshlq_u16(v105, v12);
        v122 = vshlq_u16(v122, v12);
        v141 = vshlq_u16(v141, v12);
        v158 = vshlq_u16(v158, v12);
        v160 = vshlq_u16(v160, v12);
      }

      v429.val[0] = vextq_s8(v86, v86, 8uLL).u64[0];
      v429.val[1] = vextq_s8(v122, v122, 8uLL).u64[0];
      vst3_s16(v6, *v86.i8);
      v233 = (v6 + v8);
      v429.val[2] = vextq_s8(v158, v158, 8uLL).u64[0];
      vst3_s16(v233, v429);
      v234 = (v233 + v8);
      v428.val[0] = vextq_s8(v105, v105, 8uLL).u64[0];
      vst3_s16(v234, *v105.i8);
      v235 = (v234 + v8);
      v428.val[1] = vextq_s8(v141, v141, 8uLL).u64[0];
      v428.val[2] = vextq_s8(v160, v160, 8uLL).u64[0];
      vst3_s16(v235, v428);
      return result;
    }

LABEL_231:
    v199 = result[28];
    if (v199)
    {
      v200 = vdupq_n_s16(v199 - 1);
      v201 = vnegq_s16(v200);
      v202 = vdupq_n_s16(-v199);
      v203.i64[0] = 0x1000100010001;
      v203.i64[1] = 0x1000100010001;
      v204 = vqsubq_u16(vshlq_u16(v86, v201), v203);
      v205 = vshlq_u16(vsubq_s16(v86, vshlq_u16(v204, v200)), v204);
      v86 = vaddq_s16(vshlq_u16(v205, v202), v205);
      v206 = vqsubq_u16(vshlq_u16(v105, v201), v203);
      v207 = vshlq_u16(vsubq_s16(v105, vshlq_u16(v206, v200)), v206);
      v105 = vaddq_s16(vshlq_u16(v207, v202), v207);
      v208 = vqsubq_u16(vshlq_u16(v122, v201), v203);
      v209 = vshlq_u16(vsubq_s16(v122, vshlq_u16(v208, v200)), v208);
      v122 = vaddq_s16(vshlq_u16(v209, v202), v209);
      v210 = vqsubq_u16(vshlq_u16(v141, v201), v203);
      v211 = vshlq_u16(vsubq_s16(v141, vshlq_u16(v210, v200)), v210);
      v141 = vaddq_s16(vshlq_u16(v211, v202), v211);
      v212 = vqsubq_u16(vshlq_u16(v158, v201), v203);
      v213 = vshlq_u16(vsubq_s16(v158, vshlq_u16(v212, v200)), v212);
      v158 = vaddq_s16(vshlq_u16(v213, v202), v213);
      v214 = vqsubq_u16(vshlq_u16(v160, v201), v203);
      v215 = vshlq_u16(vsubq_s16(v160, vshlq_u16(v214, v200)), v214);
      v160 = vaddq_s16(vshlq_u16(v215, v202), v215);
      v216 = vqsubq_u16(vshlq_u16(v161, v201), v203);
      v217 = vshlq_u16(vsubq_s16(v161, vshlq_u16(v216, v200)), v216);
      v161 = vaddq_s16(vshlq_u16(v217, v202), v217);
      v218 = vqsubq_u16(vshlq_u16(v162, v201), v203);
      v219 = vshlq_u16(vsubq_s16(v162, vshlq_u16(v218, v200)), v218);
      v162 = vaddq_s16(vshlq_u16(v219, v202), v219);
    }
  }

  else
  {
    if (v42 > 0x10 || (v5 - v14) < v42)
    {
      goto LABEL_288;
    }

    if (v42 < 5)
    {
      v165 = 0;
      v163 = 0;
    }

    else
    {
      v164 = *v14;
      v14 += 4;
      v163 = v164;
      v165 = 32;
    }

    v190 = 0;
    v191 = *(result + 35);
    v192 = ~(-1 << v42);
    v426 = 0uLL;
    do
    {
      while (v165 < v42)
      {
        v193 = *v14++;
        v163 += v193 << v165;
        v165 += 8;
      }

      v426.i16[v190] = v191 + (v163 & v192);
      v163 >>= v42;
      v165 -= v42;
      ++v190;
    }

    while (v190 != 8);
    *(result + 2) = v14;
    if ((v5 - v14) < v42)
    {
      goto LABEL_288;
    }

    if (v42 < 5)
    {
      v196 = 0;
      v194 = 0;
    }

    else
    {
      v195 = *v14;
      v14 += 4;
      v194 = v195;
      v196 = 32;
    }

    v197 = 0;
    v161 = v426;
    v426 = 0uLL;
    do
    {
      while (v196 < v42)
      {
        v198 = *v14++;
        v194 += v198 << v196;
        v196 += 8;
      }

      v426.i16[v197] = v191 + (v194 & v192);
      v194 >>= v42;
      v196 -= v42;
      ++v197;
    }

    while (v197 != 8);
    *(result + 2) = v14;
    v162 = v426;
    if (v50)
    {
LABEL_230:
      if (v11 > 0x10)
      {
        goto LABEL_231;
      }
    }
  }

  switch(v11)
  {
    case 0:
    case 7:
      v220 = vzip1q_s64(v86, v122);
      v221 = vzip2q_s64(v86, v122);
      v222 = vzip1q_s64(v105, v141);
      v223 = vzip2q_s64(v105, v141);
      v224 = vzip1q_s64(v158, v161);
      v225 = vzip2q_s64(v158, v161);
      v226 = vzip1q_s64(v160, v162);
      v227 = vzip2q_s64(v160, v162);
      if (!v10)
      {
        goto LABEL_236;
      }

      goto LABEL_235;
    case 1:
    case 8:
    case 11:
    case 25:
      v220 = vtrn1q_s16(v86, v122);
      v221 = vtrn2q_s16(v86, v122);
      v222 = vtrn1q_s16(v105, v141);
      v223 = vtrn2q_s16(v105, v141);
      v224 = vtrn1q_s16(v158, v161);
      v225 = vtrn2q_s16(v158, v161);
      v226 = vtrn1q_s16(v160, v162);
      v227 = vtrn2q_s16(v160, v162);
      if (v10)
      {
LABEL_235:
        v220 = vshlq_u16(v220, v12);
        v222 = vshlq_u16(v222, v12);
        v221 = vshlq_u16(v221, v12);
        v223 = vshlq_u16(v223, v12);
        v224 = vshlq_u16(v224, v12);
        v226 = vshlq_u16(v226, v12);
        v225 = vshlq_u16(v225, v12);
        v227 = vshlq_u16(v227, v12);
      }

LABEL_236:
      if (v11 > 5)
      {
        if ((v11 - 7) > 1)
        {
          *v6 = v220;
          *(v6 + 16) = v224;
          v266 = (v6 + v8);
          *v266 = v222;
          v266[1] = v226;
          v267 = (v6 + v8 + v8);
          *v267 = v221;
          v267[1] = v225;
          v268 = (v267 + v8);
          *v268 = v223;
LABEL_287:
          v268[1] = v227;
        }

        else
        {
          v425 = v224;
          v426 = v220;
          v423 = v223;
          v424 = v227;
          v421 = v221;
          v422 = v225;
          v419 = v222;
          v420 = v226;
          vectorstore_1x16_packed10(v6, v7, &v426, &v425);
          v425 = v420;
          v426 = v419;
          vectorstore_1x16_packed10((v6 + v8), v7, &v426, &v425);
          v425 = v422;
          v426 = v421;
          vectorstore_1x16_packed10((v6 + 2 * v8), v7, &v426, &v425);
          v425 = v424;
          v426 = v423;
          result = vectorstore_1x16_packed10((v6 + 3 * v8), v7, &v426, &v425);
        }
      }

      else
      {
        *v6 = vqmovn_u16(v220);
        *(v6 + 8) = vqmovn_u16(v224);
        v228 = (v6 + v8);
        *v228 = vqmovn_u16(v222);
        v228[1] = vqmovn_u16(v226);
        v229 = (v6 + v8 + v8);
        *v229 = vqmovn_u16(v221);
        v229[1] = vqmovn_u16(v225);
        v230 = (v229 + v8);
        v231 = vqmovn_u16(v223);
        v232 = vqmovn_u16(v227);
LABEL_276:
        *v230 = v231;
        v230[1] = v232;
      }

      break;
    case 2:
      v364 = vzip1q_s64(v122, v158);
      v365 = vzip2q_s64(v122, v158);
      v366 = vzip1q_s64(v141, v160);
      v367 = vzip2q_s64(v141, v160);
      *v6 = vqmovn_u16(vtrn1q_s16(v86, v365));
      *(v6 + v8) = vqmovn_u16(vtrn1q_s16(v364, v161));
      *(v6 + 2 * v8) = vqmovn_u16(vtrn1q_s16(v105, v367));
      *(v6 + 3 * v8) = vqmovn_u16(vtrn1q_s16(v366, v162));
      v362 = vtrn2q_s16(v366, v162);
      *(v6 + 4 * v8) = vqmovn_u16(vtrn2q_s16(v86, v365));
      *(v6 + 5 * v8) = vqmovn_u16(vtrn2q_s16(v364, v161));
      v363 = vqmovn_u16(vtrn2q_s16(v105, v367));
      goto LABEL_272;
    case 3:
      v358 = vzip1q_s64(v122, v158);
      v359 = vzip2q_s64(v122, v158);
      v360 = vzip1q_s64(v141, v160);
      v361 = vzip2q_s64(v141, v160);
      *v6 = vqmovn_u16(vtrn1q_s32(v86, v359));
      *(v6 + v8) = vqmovn_u16(vtrn1q_s32(v105, v361));
      *(v6 + 2 * v8) = vqmovn_u16(vtrn1q_s32(v358, v161));
      *(v6 + 3 * v8) = vqmovn_u16(vtrn1q_s32(v360, v162));
      v362 = vtrn2q_s32(v360, v162);
      *(v6 + 4 * v8) = vqmovn_u16(vtrn2q_s32(v86, v359));
      *(v6 + 5 * v8) = vqmovn_u16(vtrn2q_s32(v105, v361));
      v363 = vqmovn_u16(vtrn2q_s32(v358, v161));
LABEL_272:
      *(v6 + 6 * v8) = v363;
      *(v6 - v8 + 8 * v8) = vqmovn_u16(v362);
      return result;
    case 6:
      v368 = vtrn1q_s16(v86, v122);
      v369 = vtrn2q_s16(v86, v122);
      v370 = vtrn1q_s16(v105, v141);
      v371 = vtrn2q_s16(v105, v141);
      v372 = vtrn1q_s16(v158, v161);
      v373 = vtrn2q_s16(v158, v161);
      v374 = vtrn1q_s16(v160, v162);
      v375 = vtrn2q_s16(v160, v162);
      v376 = vtrn1q_s32(v368, v372);
      v377 = vtrn2q_s32(v368, v372);
      v378 = vtrn1q_s32(v370, v374);
      v379 = vtrn2q_s32(v370, v374);
      v380 = vtrn1q_s32(v369, v373);
      v381 = vtrn2q_s32(v369, v373);
      v382 = vtrn1q_s32(v371, v375);
      v383 = vtrn2q_s32(v371, v375);
      if (v10)
      {
        v376 = vshlq_u16(v376, v12);
        v378 = vshlq_u16(v378, v12);
        v380 = vshlq_u16(v380, v12);
        v382 = vshlq_u16(v382, v12);
        v377 = vshlq_u16(v377, v12);
        v379 = vshlq_u16(v379, v12);
        v381 = vshlq_u16(v381, v12);
        v383 = vshlq_u16(v383, v12);
      }

      *v6 = vqmovn_u16(v376);
      *(v6 + 8) = vqmovn_u16(v377);
      v384 = (v6 + v8);
      *v384 = vqmovn_u16(v378);
      v384[1] = vqmovn_u16(v379);
      v385 = (v6 + v8 + v8);
      *v385 = vqmovn_u16(v380);
      v385[1] = vqmovn_u16(v381);
      v230 = (v385 + v8);
      v231 = vqmovn_u16(v382);
      v232 = vqmovn_u16(v383);
      goto LABEL_276;
    case 10:
    case 24:
      v255 = vzip1q_s64(v86, v122);
      v256 = vzip2q_s64(v86, v122);
      v257 = vzip1q_s64(v105, v141);
      v258 = vzip2q_s64(v105, v141);
      v259 = vzip1q_s64(v158, v161);
      v260 = vzip2q_s64(v158, v161);
      v261 = vzip1q_s64(v160, v162);
      v262 = vzip2q_s64(v160, v162);
      if (v10)
      {
        v255 = vshlq_u16(v255, v12);
        v257 = vshlq_u16(v257, v12);
        v256 = vshlq_u16(v256, v12);
        v258 = vshlq_u16(v258, v12);
        v259 = vshlq_u16(v259, v12);
        v261 = vshlq_u16(v261, v12);
        v260 = vshlq_u16(v260, v12);
        v262 = vshlq_u16(v262, v12);
      }

      *v6 = v255;
      *(v6 + 16) = v259;
      v263 = (v6 + v8);
      *v263 = v257;
      v263[1] = v261;
      v264 = (v6 + v8 + v8);
      *v264 = v256;
      v264[1] = v260;
      v265 = (v264 + v8);
      *v265 = v258;
      v265[1] = v262;
      return result;
    case 12:
    case 23:
      v236 = vtrn1q_s16(v86, v122);
      v237 = vtrn2q_s16(v86, v122);
      v238 = vtrn1q_s16(v105, v141);
      v239 = vtrn2q_s16(v105, v141);
      v240 = vtrn1q_s16(v158, v161);
      v241 = vtrn2q_s16(v158, v161);
      v242 = vtrn1q_s16(v160, v162);
      v243 = vtrn2q_s16(v160, v162);
      v244 = vtrn1q_s32(v236, v240);
      v245 = vtrn2q_s32(v236, v240);
      v246 = vtrn1q_s32(v238, v242);
      v247 = vtrn2q_s32(v238, v242);
      v248 = vtrn1q_s32(v237, v241);
      v249 = vtrn2q_s32(v237, v241);
      v250 = vtrn1q_s32(v239, v243);
      v251 = vtrn2q_s32(v239, v243);
      if (v10)
      {
        v244 = vshlq_u16(v244, v12);
        v246 = vshlq_u16(v246, v12);
        v248 = vshlq_u16(v248, v12);
        v250 = vshlq_u16(v250, v12);
        v245 = vshlq_u16(v245, v12);
        v247 = vshlq_u16(v247, v12);
        v249 = vshlq_u16(v249, v12);
        v251 = vshlq_u16(v251, v12);
      }

      *v6 = veorq_s8((*&vcgezq_s16(v244) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v244);
      *(v6 + 16) = veorq_s8((*&vcgezq_s16(v245) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v245);
      v252 = (v6 + v8);
      *v252 = veorq_s8((*&vcgezq_s16(v246) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v246);
      v252[1] = veorq_s8((*&vcgezq_s16(v247) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v247);
      v253 = (v6 + v8 + v8);
      *v253 = veorq_s8((*&vcgezq_s16(v248) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v248);
      v253[1] = veorq_s8((*&vcgezq_s16(v249) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v249);
      v254 = (v253 + v8);
      *v254 = veorq_s8((*&vcgezq_s16(v250) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v250);
      v254[1] = veorq_s8((*&vcgezq_s16(v251) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v251);
      return result;
    case 13:
      v341 = vzip1q_s64(v122, v158);
      v342 = vzip2q_s64(v122, v158);
      v343 = vzip1q_s64(v141, v160);
      v344 = vzip2q_s64(v141, v160);
      v345 = vtrn1q_s16(v86, v342);
      v346 = vtrn2q_s16(v86, v342);
      v347 = vtrn1q_s16(v105, v344);
      v348 = vtrn2q_s16(v105, v344);
      v349 = vtrn1q_s16(v341, v161);
      v350 = vtrn2q_s16(v341, v161);
      v351 = vtrn1q_s16(v343, v162);
      v352 = vtrn2q_s16(v343, v162);
      if (v10)
      {
        v345 = vshlq_u16(v345, v12);
        v347 = vshlq_u16(v347, v12);
        v349 = vshlq_u16(v349, v12);
        v351 = vshlq_u16(v351, v12);
        v346 = vshlq_u16(v346, v12);
        v348 = vshlq_u16(v348, v12);
        v350 = vshlq_u16(v350, v12);
        v352 = vshlq_u16(v352, v12);
      }

      v339 = veorq_s8((*&vcgezq_s16(v352) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v352);
      *v6 = veorq_s8((*&vcgezq_s16(v345) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v345);
      *(v6 + v8) = veorq_s8((*&vcgezq_s16(v349) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v349);
      v353 = (v6 + v8 + v8);
      *v353 = veorq_s8((*&vcgezq_s16(v347) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v347);
      v354 = (v353 + v8);
      *v354 = veorq_s8((*&vcgezq_s16(v351) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v351);
      v355 = (v354 + v8);
      *v355 = veorq_s8((*&vcgezq_s16(v346) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v346);
      v356 = (v355 + v8);
      *v356 = veorq_s8((*&vcgezq_s16(v350) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v350);
      v357 = (v356 + v8);
      *v357 = veorq_s8((*&vcgezq_s16(v348) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v348);
      goto LABEL_283;
    case 14:
      v386 = vzip1q_s64(v122, v158);
      v387 = vzip2q_s64(v122, v158);
      v388 = vzip1q_s64(v141, v160);
      v389 = vzip2q_s64(v141, v160);
      v390 = vtrn1q_s32(v86, v387);
      v391 = vtrn2q_s32(v86, v387);
      v392 = vtrn1q_s32(v105, v389);
      v393 = vtrn2q_s32(v105, v389);
      v394 = vtrn1q_s32(v386, v161);
      v395 = vtrn2q_s32(v386, v161);
      v396 = vtrn1q_s32(v388, v162);
      v397 = vtrn2q_s32(v388, v162);
      if (v10)
      {
        v390 = vshlq_u16(v390, v12);
        v392 = vshlq_u16(v392, v12);
        v394 = vshlq_u16(v394, v12);
        v396 = vshlq_u16(v396, v12);
        v391 = vshlq_u16(v391, v12);
        v393 = vshlq_u16(v393, v12);
        v395 = vshlq_u16(v395, v12);
        v397 = vshlq_u16(v397, v12);
      }

      v336 = veorq_s8((*&vcgezq_s16(v394) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v394);
      v338 = veorq_s8((*&vcgezq_s16(v396) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v396);
      v333 = veorq_s8((*&vcgezq_s16(v391) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v391);
      v335 = veorq_s8((*&vcgezq_s16(v393) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v393);
      v337 = veorq_s8((*&vcgezq_s16(v395) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v395);
      v339 = veorq_s8((*&vcgezq_s16(v397) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v397);
      *v6 = veorq_s8((*&vcgezq_s16(v390) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v390);
      v340 = v6 + v8;
      *(v6 + v8) = veorq_s8((*&vcgezq_s16(v392) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v392);
      goto LABEL_282;
    case 15:
      v269 = vzip1q_s64(v86, v122);
      v270 = vzip2q_s64(v86, v122);
      v271 = vzip1q_s64(v105, v141);
      v272 = vzip2q_s64(v105, v141);
      v273 = vzip1q_s64(v158, v161);
      v274 = vzip2q_s64(v158, v161);
      v275 = vzip1q_s64(v160, v162);
      v276 = vzip2q_s64(v160, v162);
      if (v10)
      {
        goto LABEL_253;
      }

      goto LABEL_254;
    case 16:
      v269 = vtrn1q_s16(v86, v122);
      v270 = vtrn2q_s16(v86, v122);
      v271 = vtrn1q_s16(v105, v141);
      v272 = vtrn2q_s16(v105, v141);
      v273 = vtrn1q_s16(v158, v161);
      v274 = vtrn2q_s16(v158, v161);
      v275 = vtrn1q_s16(v160, v162);
      v276 = vtrn2q_s16(v160, v162);
      if (!v10)
      {
        goto LABEL_254;
      }

LABEL_253:
      v269 = vshlq_u16(v269, v12);
      v271 = vshlq_u16(v271, v12);
      v270 = vshlq_u16(v270, v12);
      v272 = vshlq_u16(v272, v12);
      v273 = vshlq_u16(v273, v12);
      v275 = vshlq_u16(v275, v12);
      v274 = vshlq_u16(v274, v12);
      v276 = vshlq_u16(v276, v12);
LABEL_254:
      v227 = veorq_s8((*&vcgezq_s16(v276) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v276);
      *v6 = veorq_s8((*&vcgezq_s16(v269) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v269);
      *(v6 + 16) = veorq_s8((*&vcgezq_s16(v273) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v273);
      v277 = (v6 + v8);
      *v277 = veorq_s8((*&vcgezq_s16(v271) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v271);
      v277[1] = veorq_s8((*&vcgezq_s16(v275) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v275);
      v278 = (v6 + v8 + v8);
      *v278 = veorq_s8((*&vcgezq_s16(v270) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v270);
      v278[1] = veorq_s8((*&vcgezq_s16(v274) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v274);
      v268 = &v278->i8[v8];
      *v268 = veorq_s8((*&vcgezq_s16(v272) | __PAIR128__(0x8000800080008000, 0x8000800080008000)), v272);
      goto LABEL_287;
    case 17:
      v279 = vtrn1q_s32(v86, v158);
      v280 = vtrn2q_s32(v86, v158);
      v281 = vtrn1q_s32(v105, v160);
      v282 = vtrn2q_s32(v105, v160);
      v283 = vtrn1q_s16(v122, v279);
      v284 = vtrn2q_s16(v122, v279);
      v285 = vtrn1q_s16(v141, v281);
      v286 = vtrn2q_s16(v141, v281);
      v287 = vtrn1q_s16(v280, v161);
      v288 = vtrn2q_s16(v280, v161);
      v289 = vtrn1q_s16(v282, v162);
      v290 = vtrn2q_s16(v282, v162);
      if (v10)
      {
        v284 = vshlq_u16(v284, v12);
        v286 = vshlq_u16(v286, v12);
        v283 = vshlq_u16(v283, v12);
        v285 = vshlq_u16(v285, v12);
        v287 = vshlq_u16(v287, v12);
        v289 = vshlq_u16(v289, v12);
        v288 = vshlq_u16(v288, v12);
        v290 = vshlq_u16(v290, v12);
      }

      *v6 = v284;
      *(v6 + v8) = v287;
      v291 = (v6 + v8 + v8);
      *v291 = v286;
      v292 = (v291 + v8);
      *v292 = v289;
      v293 = (v292 + v8);
      *v293 = v283;
      v294 = (v293 + v8);
      *v294 = v288;
      v295 = (v294 + v8);
      *v295 = v285;
      *(v295 + v8) = v290;
      return result;
    case 18:
      v402 = vtrn1q_s16(v86, v122);
      v403 = vtrn2q_s16(v86, v122);
      v404 = vtrn1q_s16(v105, v141);
      v405 = vtrn2q_s16(v105, v141);
      v406 = vtrn1q_s16(v158, v161);
      v407 = vtrn2q_s16(v158, v161);
      v408 = vtrn1q_s16(v160, v162);
      v409 = vtrn2q_s16(v160, v162);
      v410 = vtrn1q_s32(v402, v406);
      v411 = vtrn2q_s32(v402, v406);
      v412 = vtrn1q_s32(v404, v408);
      v413 = vtrn2q_s32(v404, v408);
      v414 = vtrn1q_s32(v403, v407);
      v415 = vtrn2q_s32(v403, v407);
      v416 = vtrn1q_s32(v405, v409);
      v227 = vtrn2q_s32(v405, v409);
      if (v10)
      {
        v410 = vshlq_u16(v410, v12);
        v412 = vshlq_u16(v412, v12);
        v414 = vshlq_u16(v414, v12);
        v416 = vshlq_u16(v416, v12);
        v411 = vshlq_u16(v411, v12);
        v413 = vshlq_u16(v413, v12);
        v415 = vshlq_u16(v415, v12);
        v227 = vshlq_u16(v227, v12);
      }

      *v6 = v410;
      *(v6 + 16) = v411;
      v417 = (v6 + v8);
      *v417 = v412;
      v417[1] = v413;
      v418 = (v6 + v8 + v8);
      *v418 = v414;
      v418[1] = v415;
      v268 = (v418 + v8);
      *v268 = v416;
      goto LABEL_287;
    case 19:
      goto LABEL_238;
    case 20:
      v311 = vzip1q_s64(v122, v158);
      v312 = vzip2q_s64(v122, v158);
      v313 = vzip1q_s64(v141, v160);
      v314 = vzip2q_s64(v141, v160);
      v315 = vtrn1q_s16(v86, v312);
      v316 = vtrn2q_s16(v86, v312);
      v317 = vtrn1q_s16(v105, v314);
      v318 = vtrn2q_s16(v105, v314);
      v319 = vtrn1q_s16(v311, v161);
      v320 = vtrn2q_s16(v311, v161);
      v321 = vtrn1q_s16(v313, v162);
      v322 = vtrn2q_s16(v313, v162);
      if (v10)
      {
        v315 = vshlq_u16(v315, v12);
        v317 = vshlq_u16(v317, v12);
        v319 = vshlq_u16(v319, v12);
        v321 = vshlq_u16(v321, v12);
        v316 = vshlq_u16(v316, v12);
        v318 = vshlq_u16(v318, v12);
        v320 = vshlq_u16(v320, v12);
        v322 = vshlq_u16(v322, v12);
      }

      *v6 = v315;
      *(v6 + v8) = v319;
      v323 = (v6 + v8 + v8);
      *v323 = v317;
      v324 = (v323 + v8);
      *v324 = v321;
      v325 = (v324 + v8);
      *v325 = v316;
      v326 = (v325 + v8);
      *v326 = v320;
      v327 = (v326 + v8);
      *v327 = v318;
      *(v327 + v8) = v322;
      return result;
    case 21:
      v296 = vzip1q_s64(v122, v158);
      v297 = vzip2q_s64(v122, v158);
      v298 = vzip1q_s64(v141, v160);
      v299 = vzip2q_s64(v141, v160);
      v300 = vtrn1q_s16(v86, v297);
      v301 = vtrn2q_s16(v86, v297);
      v302 = vtrn1q_s16(v105, v299);
      v303 = vtrn2q_s16(v105, v299);
      v304 = vtrn1q_s16(v296, v161);
      v305 = vtrn2q_s16(v296, v161);
      v306 = vtrn1q_s16(v298, v162);
      v307 = vtrn2q_s16(v298, v162);
      if (v10)
      {
        v300 = vshlq_u16(v300, v12);
        v302 = vshlq_u16(v302, v12);
        v304 = vshlq_u16(v304, v12);
        v306 = vshlq_u16(v306, v12);
        v301 = vshlq_u16(v301, v12);
        v303 = vshlq_u16(v303, v12);
        v305 = vshlq_u16(v305, v12);
        v307 = vshlq_u16(v307, v12);
      }

      *v6 = v300;
      *(v6 + 16) = v301;
      v308 = (v6 + v8);
      *v308 = v304;
      v308[1] = v305;
      v309 = (v6 + v8 + v8);
      *v309 = v302;
      v309[1] = v303;
      v310 = (v309 + v8);
      *v310 = v306;
      v310[1] = v307;
      return result;
    case 22:
      v328 = vzip1q_s64(v122, v158);
      v329 = vzip2q_s64(v122, v158);
      v330 = vzip1q_s64(v141, v160);
      v331 = vzip2q_s64(v141, v160);
      v332 = vtrn1q_s32(v86, v329);
      v333 = vtrn2q_s32(v86, v329);
      v334 = vtrn1q_s32(v105, v331);
      v335 = vtrn2q_s32(v105, v331);
      v336 = vtrn1q_s32(v328, v161);
      v337 = vtrn2q_s32(v328, v161);
      v338 = vtrn1q_s32(v330, v162);
      v339 = vtrn2q_s32(v330, v162);
      if (v10)
      {
        v332 = vshlq_u16(v332, v12);
        v334 = vshlq_u16(v334, v12);
        v336 = vshlq_u16(v336, v12);
        v338 = vshlq_u16(v338, v12);
        v333 = vshlq_u16(v333, v12);
        v335 = vshlq_u16(v335, v12);
        v337 = vshlq_u16(v337, v12);
        v339 = vshlq_u16(v339, v12);
      }

      *v6 = v332;
      v340 = v6 + v8;
      *(v6 + v8) = v334;
LABEL_282:
      v398 = (v340 + v8);
      *v398 = v336;
      v399 = (v398 + v8);
      *v399 = v338;
      v400 = (v399 + v8);
      *v400 = v333;
      v401 = (v400 + v8);
      *v401 = v335;
      v357 = &v401->i8[v8];
      *v357 = v337;
LABEL_283:
      *(v357 + v8) = v339;
      return result;
    default:
      longjmp(result + 29, -15405);
  }

  return result;
}

int *vectorstore_1x16_packed10(int *result, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  switch(a2)
  {
    case 2:
      v11 = a3[1] + (a3[2] << 10) + (a3[3] << 20);
      *result = *result & 0xFFFFF | (*a3 << 20);
      result[1] = v11;
      v12 = a3[7] + (*a4 << 10) + (a4[1] << 20);
      result[2] = a3[4] + (a3[5] << 10) + (a3[6] << 20);
      result[3] = v12;
      v9 = a4[2] + (a4[3] << 10) + (a4[4] << 20);
      v10 = a4[5] + (a4[6] << 10) + (a4[7] << 20);
      goto LABEL_7;
    case 1:
      v7 = a3[2] + (a3[3] << 10) + (a3[4] << 20);
      *result = (*result & 0x3FF | (*a3 << 10)) + (a3[1] << 20);
      result[1] = v7;
      v8 = *a4 + (a4[1] << 10) + (a4[2] << 20);
      result[2] = a3[5] + (a3[6] << 10) + (a3[7] << 20);
      result[3] = v8;
      v9 = a4[3] + (a4[4] << 10) + (a4[5] << 20);
      v10 = a4[6] + (a4[7] << 10);
LABEL_7:
      result[4] = v9;
      result[5] = v10;
      return result;
    case 0:
      v4 = a3[3] + (a3[4] << 10) + (a3[5] << 20);
      *result = *a3 + (a3[1] << 10) + (a3[2] << 20);
      result[1] = v4;
      v5 = a4[1] + (a4[2] << 10) + (a4[3] << 20);
      result[2] = a3[6] + (a3[7] << 10) + (*a4 << 20);
      result[3] = v5;
      v6 = a4[7];
      result[4] = a4[4] + (a4[5] << 10) + (a4[6] << 20);
      result[5] = v6;
      break;
  }

  return result;
}