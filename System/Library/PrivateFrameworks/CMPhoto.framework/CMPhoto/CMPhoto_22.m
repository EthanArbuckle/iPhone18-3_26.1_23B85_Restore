uint64_t _extractAndSetRationalForKey(const __CFData *a1, CFIndex a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  OUTLINED_FUNCTION_96();
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v11 = MutableCopy;
    if (!a1)
    {
      v13 = 4294950306;
LABEL_16:
      CFRelease(v11);
      return v13;
    }

    *buffer = 0;
    if ((CFDataGetLength(a1) - a2) < 8)
    {
      fig_log_get_emitter();
      appended = FigSignalErrorAtGM();
      if (appended)
      {
        goto LABEL_18;
      }

      if (a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v19.location = a2;
      v19.length = 8;
      CFDataGetBytes(a1, v19, buffer);
      if (a6)
      {
        *a6 = a2 + 8;
      }

      if (a3)
      {
LABEL_7:
        appended = FigCFArrayAppendInt32();
        if (appended)
        {
          goto LABEL_18;
        }

LABEL_14:
        v13 = FigCFArrayAppendInt64();
        if (!v13)
        {
          OUTLINED_FUNCTION_7_15();
          CFDictionarySetValue(v14, v15, v16);
        }

        goto LABEL_16;
      }
    }

    appended = FigCFArrayAppendInt64();
    if (!appended)
    {
      goto LABEL_14;
    }

LABEL_18:
    v13 = appended;
    goto LABEL_16;
  }

  return 4294950305;
}

uint64_t CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata(const CGImageMetadata *a1, unsigned int a2, uint64_t a3)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v43 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2000000000;
  v42 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if (a1 && a3)
  {
    v6 = CMPhotoMetadataCreateCFNumberFormatter(*MEMORY[0x1E695E480], kCFNumberFormatterNoStyle, &v43);
    v7 = v49;
    *(v49 + 6) = v6;
    if (!v6)
    {
      *(a3 + 64) = 0;
      *(a3 + 56) = 0;
      *(a3 + 68) = 0;
      *(a3 + 76) = 0;
      *(a3 + 28) = 1065353216;
      __asm { FMOV            V0.2S, #1.0 }

      *(a3 + 20) = _D0;
      *(a3 + 8) = 0x3F80000000000000;
      *(a3 + 4) = 1;
      v13 = a2 <= 1 ? 1 : a2;
      *(a3 + 16) = v13;
      OUTLINED_FUNCTION_0_21();
      v18 = *"";
      v19 = __CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata_block_invoke;
      v20 = &unk_1E77A24B8;
      v21 = &v29;
      v22 = &v48;
      v27 = v43;
      v28 = a3;
      v23 = v41;
      v24 = &v33;
      v25 = &v44;
      v26 = &v37;
      CGImageMetadataEnumerateTagsUsingBlock(a1, 0, 0, block);
      v7 = v49;
      if (!*(v49 + 6))
      {
        if (*(v30 + 24))
        {
          if (*(v45 + 6) != 1 || !*(v34 + 24) || !*(v38 + 24))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            v16 = FigSignalErrorAtGM();
            v7 = v49;
            *(v49 + 6) = v16;
          }
        }

        else
        {
          *(v49 + 6) = -16993;
        }
      }
    }
  }

  else
  {
    v51 = -16990;
    v7 = &v48;
  }

  if (v43)
  {
    CFRelease(v43);
    v7 = v49;
  }

  v14 = *(v7 + 6);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  return v14;
}

BOOL __CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata_block_invoke(uint64_t a1, int a2, CGImageMetadataTagRef tag)
{
  v5 = CGImageMetadataTagCopyNamespace(tag);
  cf = 0;
  if (FigCFEqual() || FigCFEqual())
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v6 = CGImageMetadataTagCopyName(tag);
    if (v6)
    {
      CMPhotoCopyMetadataTagValue(tag, *(a1 + 80), 0, &cf);
      OUTLINED_FUNCTION_6_13();
      *(v8 + 24) = v7;
      OUTLINED_FUNCTION_6_13();
      if (*(v9 + 24))
      {
        goto LABEL_13;
      }

      if (FigCFEqual())
      {
        *(*(*(a1 + 48) + 8) + 24) = FigCFEqual();
        goto LABEL_13;
      }

      if (FigCFEqual())
      {
        *(*(a1 + 88) + 4) = FigCFEqual();
        goto LABEL_13;
      }

      if (FigCFEqual() || FigCFEqual())
      {
        _extractFloatValuesFromAuxMetaTagValue(cf, 1u, (*(a1 + 88) + 8));
LABEL_12:
        OUTLINED_FUNCTION_6_13();
        *(v11 + 24) = v10;
        goto LABEL_13;
      }

      if (FigCFEqual() || FigCFEqual())
      {
        _extractFloatValuesFromAuxMetaTagValue(cf, 1u, (*(a1 + 88) + 12));
        OUTLINED_FUNCTION_6_13();
        *(v15 + 24) = v14;
        OUTLINED_FUNCTION_6_13();
        if (!*(v16 + 24))
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }
      }

      else
      {
        if (FigCFEqual())
        {
          _extractIntValuesFromAuxMetaTagValue(cf, (*(*(a1 + 64) + 8) + 24));
          goto LABEL_12;
        }

        if ((_findAndAddChannelEntry(v6, cf, 0, *(a1 + 88), (*(*(a1 + 72) + 8) + 24)) & 1) == 0)
        {
          if (cf)
          {
            v18 = CFGetTypeID(cf);
            if (v18 == CFArrayGetTypeID())
            {
              if (FigCFEqual())
              {
                if (cf)
                {
                  theArray = CFRetain(cf);
                  Count = CFArrayGetCount(theArray);
                }

                else
                {
                  theArray = 0;
                  Count = CFArrayGetCount(0);
                }

                if ((Count & 0xFFFFFFFFFFFFFFFDLL) == 1)
                {
                  v20 = Count;
                  v21 = 0;
                  v22 = 0;
                  *(*(a1 + 88) + 16) = Count;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
                    if (!ValueAtIndex)
                    {
                      break;
                    }

                    v24 = ValueAtIndex;
                    v25 = CFGetTypeID(ValueAtIndex);
                    if (v25 != CFDictionaryGetTypeID())
                    {
                      break;
                    }

                    if (v22)
                    {
                      CFRelease(v22);
                    }

                    v22 = FigCFDictionaryCopyArrayOfKeys();
                    v26 = CFArrayGetCount(v22);
                    if (v26 >= 1)
                    {
                      v27 = v26;
                      for (i = 0; i != v27; ++i)
                      {
                        v29 = CFArrayGetValueAtIndex(v22, i);
                        Value = CFDictionaryGetValue(v24, v29);
                        _findAndAddChannelEntry(v29, Value, v21, *(a1 + 88), (*(*(a1 + 72) + 8) + 24));
                      }
                    }

                    if (++v21 == v20)
                    {
                      if (!v22)
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_46;
                    }
                  }

                  OUTLINED_FUNCTION_6_13();
                  *(v31 + 24) = -17102;
                  if (v22)
                  {
LABEL_46:
                    CFRelease(v22);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_6_13();
                  *(v32 + 24) = -17102;
                }

LABEL_47:
                if (theArray)
                {
                  CFRelease(theArray);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_13();
      *(v17 + 24) = -17102;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_6_13();
  return *(v12 + 24) == 0;
}

uint64_t _findAndAddChannelEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (FigCFEqual() || FigCFEqual())
  {
    v7 = *(a4 + 16);
    return OUTLINED_FUNCTION_13_11(v7) == 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v7 = *(a4 + 16);
    return OUTLINED_FUNCTION_13_11(v7) == 0;
  }

  if (FigCFEqual())
  {
    v7 = *(a4 + 16);
    return OUTLINED_FUNCTION_13_11(v7) == 0;
  }

  if (FigCFEqual())
  {
    if (OUTLINED_FUNCTION_13_11(*(a4 + 16)))
    {
      return 0;
    }

    else
    {
      result = 1;
      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      v7 = *(a4 + 16);
      return OUTLINED_FUNCTION_13_11(v7) == 0;
    }
  }

  return result;
}

uint64_t CMPhotoCreateXMPMetadataFromMetadata(uint64_t a1, uint64_t a2, CGImageMetadata **a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    Mutable = CGImageMetadataCreateMutable();
    if (!Mutable)
    {
      return 4294950305;
    }

    v7 = Mutable;
    if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.adobe.com/hdr-gain-map/1.0/", @"HDRToneMap", 0))
    {
      v3 = 4294950305;
      goto LABEL_11;
    }

    v8 = _addIntToCGMetadata(v7, 1);
    if (!v8)
    {
      v9 = OUTLINED_FUNCTION_101();
      v8 = _addIntToCGMetadata(v9, v10);
      if (!v8)
      {
        v8 = OUTLINED_FUNCTION_12_14(*(a1 + 8));
        if (!v8)
        {
          v8 = OUTLINED_FUNCTION_12_14(*(a1 + 12));
          if (!v8)
          {
            v11 = *(a1 + 16);
            if (v11 == 3)
            {
              v12 = 0;
              v13 = a1 + 44;
              while (1)
              {
                v14 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v14, v15, @"Gamma", @"http://ns.adobe.com/hdr-gain-map/1.0/", v16);
                if (v8)
                {
                  break;
                }

                v17 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v17, v18, @"GainMapMin", @"http://ns.adobe.com/hdr-gain-map/1.0/", v19);
                if (v8)
                {
                  break;
                }

                v20 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v20, v21, @"GainMapMax", @"http://ns.adobe.com/hdr-gain-map/1.0/", v22);
                if (v8)
                {
                  break;
                }

                v23 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v23, v24, @"OffsetSDR", @"http://ns.adobe.com/hdr-gain-map/1.0/", v25);
                if (v8)
                {
                  break;
                }

                v26 = OUTLINED_FUNCTION_101();
                v8 = _addFloatToCGMetadataArray(v26, v27, @"OffsetHDR", @"http://ns.adobe.com/hdr-gain-map/1.0/", v28);
                if (v8)
                {
                  break;
                }

                ++v12;
                v13 += 4;
                if (v12 >= *(a1 + 16))
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
              if (v11 != 1)
              {
LABEL_11:
                CFRelease(v7);
                return v3;
              }

              v8 = OUTLINED_FUNCTION_12_14(*(a1 + 20));
              if (!v8)
              {
                v8 = OUTLINED_FUNCTION_12_14(*(a1 + 32));
                if (!v8)
                {
                  v8 = OUTLINED_FUNCTION_12_14(*(a1 + 44));
                  if (!v8)
                  {
                    v8 = OUTLINED_FUNCTION_12_14(*(a1 + 56));
                    if (!v8)
                    {
                      v8 = OUTLINED_FUNCTION_12_14(*(a1 + 68));
                      if (!v8)
                      {
LABEL_19:
                        v3 = 0;
                        *a3 = v7;
                        return v3;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = v8;
    goto LABEL_11;
  }

  return v3;
}

uint64_t _addIntToCGMetadata(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_96();
  v5 = CFStringCreateWithFormat(v2, v3, v4, a2);
  if (!v5)
  {
    return 4294950305;
  }

  v9 = v5;
  v10 = OUTLINED_FUNCTION_19_6(v5, v6, v7, v8, @"HDRToneMap");
  CFRelease(v9);
  return v10;
}

uint64_t _addFloatToCGMetadata(float a1)
{
  v11 = a1;
  v1 = OUTLINED_FUNCTION_96();
  v4 = CFStringCreateWithFormat(v1, v2, v3, *&v11);
  if (!v4)
  {
    return 4294950305;
  }

  v8 = v4;
  v9 = OUTLINED_FUNCTION_19_6(v4, v5, v6, v7, @"HDRToneMap");
  CFRelease(v8);
  return v9;
}

uint64_t _addFloatToCGMetadataArray(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, float a5)
{
  v16 = a5;
  v9 = OUTLINED_FUNCTION_96();
  v12 = CFStringCreateWithFormat(v9, v10, v11, *&v16);
  if (!v12)
  {
    return 4294950305;
  }

  v13 = v12;
  v14 = CMPhotoAddValueToCGImageMetadataArray(a1, a2, @"ChannelMetadata", v12, a3, a4, @"HDRToneMap");
  CFRelease(v13);
  return v14;
}

uint64_t CMPhotoHeadroomFromMeteorPlusMetadataMakerNote(uint64_t a1, _DWORD *a2)
{
  result = 4294950306;
  if (a1 && a2)
  {
    if ((FigCFDictionaryGetFloatIfPresent() || FigCFDictionaryGetFloatIfPresent()) && FigCFDictionaryGetFloatIfPresent())
    {
      result = 0;
      *a2 = 0;
    }

    else
    {
      return 4294950303;
    }
  }

  return result;
}

uint64_t _getOutputPixelFormatFromParameters(CVPixelBufferRef pixelBuffer, int a2, _DWORD *a3)
{
  v12 = 0;
  result = 4294950306;
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    IsITUR_2100TF = CMPhotoPixelBufferIsITUR_2100TF(pixelBuffer);
    if (a2 == 2)
    {
      if (!IsITUR_2100TF)
      {
        goto LABEL_9;
      }

      ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
      BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
      v11 = ChromaSubsamplingFromPixelFormat;
    }

    else
    {
      if (a2 == 5)
      {
        v12 = 1380411457;
LABEL_12:
        result = 0;
        *a3 = v12;
        return result;
      }

      if (IsITUR_2100TF)
      {
LABEL_9:
        v12 = PixelFormatType;
        goto LABEL_12;
      }

      v11 = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
      BitDepthForPixelFormat = 10;
    }

    result = CMPhotoGetYUVPixelFormatForParameters(v11, BitDepthForPixelFormat, 1, 0, 0, 0, 1, &v12);
    if (result)
    {
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t _newColorSpaceIfAskingForSDRFromHeadroom(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  CICPInfo = CGColorSpaceGetCICPInfo();
  result = 0;
  if (CICPInfo)
  {
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    result = 0;
    *a1 = v4;
  }

  return result;
}

uint64_t _commonApplyHDRGainMapOptions(uint64_t a1, int a2, int a3, float a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (a2)
  {
    FigCFDictionarySetBoolean();
  }

  result = 0;
  if (!a3 && a4 >= 1.0)
  {
    FigCFDictionarySetFloat();
    return 0;
  }

  return result;
}

uint64_t _extractFloatValuesFromAuxMetaTagValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _extractIntValuesFromAuxMetaTagValue_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _extractIntValuesFromAuxMetaTagValue_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoGainMapCreateOutputFromConstituents_cold_1(float *a1, const void *a2, _DWORD *a3)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v5 = CMPhotoParseFlexRangeMetadataDictionary(a2, a1);
  if (!v5)
  {
    if (a1[3] == 0.0)
    {
      return 0;
    }

    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM();
  }

  *a3 = v5;
  return 1;
}

uint64_t CMPhotoGainMapCreateOutputFromConstituents_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoGainMapCreateOutputFromConstituents_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SlimVideoEncoder_CreateSession(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 4294951896;
  }

  pthread_once(&SlimVideoEncoderSessionGetTypeID_onceToken, RegisterSlimVideoEncoderSessionClass);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294951894;
  }

  v4 = Instance;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t _startEncodeSession(CFTypeRef cf, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v8 = a4;
  v11 = HIDWORD(a4);
  cfa = 0;
  *a6 = a2;
  *(a6 + 12) = a4;
  v12 = *(a6 + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a6 + 24) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  FigFormatDescriptionRelease();
  *(a6 + 32) = 0;
  result = _createPixelBufferAttributesDictionaryForEncoder(*(a6 + 24), v8, v11, a3, a5, &cfa);
  if (!result)
  {
    if (*a6)
    {
      VTEncoderSessionSetPixelBufferAttributes();
    }

    else
    {
      v14 = *(a6 + 96);
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = cfa;
      if (cfa)
      {
        v15 = CFRetain(cfa);
      }

      *(a6 + 96) = v15;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }

    v16 = CMMemoryPoolCreate(0);
    *(a6 + 56) = v16;
    if (v16 && (*(a6 + 48) = 0, v17 = malloc_type_calloc(1uLL, 0x20B0uLL, 0x1030040868D5BD5uLL), (*(a6 + 64) = v17) != 0))
    {
      v18 = v17;
      result = 0;
      *v18 = v8;
      v18[1] = v11;
      *(v18 + 522) = xmmword_1A5ABB590;
      *(v18 + 7) = 3 * *(a6 + 12) * *(a6 + 16) + 0x20000;
      *(v18 + 17) = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t _encodeFrame(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v7 = v6;
  v9 = pixelBuffer;
  blockBufferOut = 0;
  v169 = 0;
  dataPointerOut = 0;
  dataLength = 0;
  cf = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  error = 0;
  v12 = CVBufferCopyAttachments(v9, kCVAttachmentMode_ShouldPropagate);
  if (CFDictionaryContainsKey(v12, @"StreamName"))
  {
    Value = CFDictionaryGetValue(v12, @"StreamName");
    if (CFStringCompare(Value, @"Depth", 1uLL))
    {
      v14 = 1;
      if (CFStringCompare(Value, @"IR", 1uLL))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = 0;
    }

    *(*(a1 + 64) + 144) = v14;
  }

LABEL_7:
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  v15 = *(a1 + 64);
  v158 = v12;
  if (!*(v15 + 116))
  {
    *(v15 + 32) = PixelFormatType;
    if (PixelFormatType == 1650943796)
    {
      v25 = CMGetAttachment(v9, @"RawImageMetadata", 0);
      v15 = *(a1 + 64);
      if (v25)
      {
        OUTLINED_FUNCTION_5_16(v15);
        v26 = @"RawImageMetadata";
      }

      else
      {
        v26 = @"MetadataDictionary";
      }

      key = v26;
      PixelFormatType = 1650943796;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v16 = CMGetAttachment(v9, @"RawImage", 0);
  if (!v16)
  {
    v15 = *(a1 + 64);
LABEL_16:
    key = @"MetadataDictionary";
    goto LABEL_19;
  }

  v17 = v16;
  v18 = CFDictionaryGetValue(v16, @"RawImageData");
  if (!v18 || (v19 = v18, (v20 = CFDictionaryGetValue(v17, @"RawImageMetadata")) == 0))
  {
    v31 = 0;
    OUTLINED_FUNCTION_0_22();
    Code = 4294951893;
    goto LABEL_295;
  }

  v21 = v20;
  PixelFormatType = 1650943796;
  Width = CVPixelBufferGetWidth(v19);
  Height = CVPixelBufferGetHeight(v19);
  key = @"RawImageMetadata";
  CMSetAttachment(v19, @"RawImageMetadata", v21, 1u);
  v24 = *(a1 + 64);
  *v24 = Width;
  v24[1] = Height;
  OUTLINED_FUNCTION_5_16(v24);
  *(v15 + 32) = 1650943796;
  v9 = v19;
LABEL_19:
  CVPixelBufferGetExtendedPixels(v9, 0, 0, 0, (v15 + 24));
  *(*(a1 + 64) + 112) = 0;
  if (a5)
  {
    CVPixelBufferGetHeightOfPlane(v9, 0);
    values.version = 0;
    keys.version = 0;
    CMPhotoPixelFormatIsAGXVersatile(PixelFormatType);
    if (CMPhotoPixelFormatContainsRGB(PixelFormatType))
    {
      v27 = 4;
    }

    else
    {
      v27 = CMPhotoPixelFormatIs420(PixelFormatType) || CMPhotoPixelFormatIsBayer14Bits(PixelFormatType) || CMPhotoPixelFormatIsRAWVersatile(PixelFormatType) && PixelFormatType != 1651519798 || CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(PixelFormatType) ? 8 : 1;
    }

    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    if ((*(a1 + 72) - 1) <= 1 && keys.version % v27 && *(*(a1 + 64) + 24) + keys.version % v27 < v27)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_19();
      Code = FigSignalErrorAtGM();
      v31 = 0;
LABEL_336:
      OUTLINED_FUNCTION_0_22();
      goto LABEL_295;
    }
  }

  if (CMPhotoPixelFormatIsVersatile(PixelFormatType))
  {
    VersatileBayerPattern = CMPhotoPixelBufferGetVersatileBayerPattern(v9);
    if (VersatileBayerPattern <= 0xC)
    {
      v29 = *(a1 + 64);
      *(v29 + 8360) = VersatileBayerPattern;
      if ((*(a1 + 72) & 0xFFFFFFFE) != 4)
      {
        v30 = *(v29 + 4);
        if (*(v29 + 24) + v30 < ((v30 + 3) & 0xFFFFFFFC))
        {
          v31 = 0;
          OUTLINED_FUNCTION_0_22();
          Code = 4294951891;
          goto LABEL_295;
        }

        if (((v30 + 3) & 4) != 0)
        {
          *(v29 + 8364) |= 1u;
        }
      }

      goto LABEL_37;
    }

    v31 = 0;
    OUTLINED_FUNCTION_0_22();
    Code = 4294950303;
LABEL_295:
    v54 = 1;
    goto LABEL_296;
  }

LABEL_37:
  v159 = a1;
  pixelBuffera = v9;
  if (*(a1 + 32))
  {
    v31 = 0;
    goto LABEL_66;
  }

  v32 = *(a1 + 24);
  v33 = *(a1 + 64);
  v34 = a1;
  v35 = *(v33 + 8360);
  v36 = *(v33 + 8364);
  v37 = *(v34 + 8);
  v7 = *(v34 + 72);
  *&values.version = 0;
  Mutable = CFDictionaryCreateMutable(v32, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v31 = 0;
    OUTLINED_FUNCTION_0_22();
    Code = 4294951895;
    v54 = 1;
    a1 = v159;
    v9 = pixelBuffera;
    goto LABEL_296;
  }

  v39 = Mutable;
  *v171 = 0;
  VersionFromPixelBufferInfo = Slim_GetVersionFromPixelBufferInfo(PixelFormatType, v35, v36, v7, v171);
  if (VersionFromPixelBufferInfo)
  {
    Code = VersionFromPixelBufferInfo;
    v31 = 0;
    a1 = v159;
    v9 = pixelBuffera;
    goto LABEL_56;
  }

  SInt32 = FigCFNumberCreateSInt32();
  CFDictionarySetValue(v39, *MEMORY[0x1E69600D8], SInt32);
  if ((v7 - 1) > 4)
  {
    v42 = 0;
    goto LABEL_46;
  }

  *bytes = *v171;
  *&values.version = CFDataCreate(v32, bytes, 4);
  if (*&values.version)
  {
    *&keys.version = @"slmC";
    v42 = CFDictionaryCreate(v32, &keys, &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (v42)
    {
      CFDictionarySetValue(v39, *MEMORY[0x1E69600A0], v42);
LABEL_46:
      v43 = MEMORY[0x1E6960030];
      if (v37)
      {
        v44 = FigCFNumberCreateSInt32();
        CFDictionarySetValue(v39, *MEMORY[0x1E6960028], v44);
        CFDictionarySetValue(v39, *v43, @"Slim");
        if (v44)
        {
          CFRelease(v44);
        }
      }

      else
      {
        CFDictionarySetValue(v39, *MEMORY[0x1E6960030], @"Slim");
      }

      Code = 0;
      v31 = v39;
      v39 = 0;
      goto LABEL_51;
    }

    v31 = 0;
    Code = 4294951895;
  }

  else
  {
    v31 = 0;
    v42 = 0;
    Code = 0;
  }

LABEL_51:
  v9 = pixelBuffera;
  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  a1 = v159;
LABEL_56:
  v7 = v6;
  if (*&values.version)
  {
    CFRelease(*&values.version);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (Code)
  {
    goto LABEL_336;
  }

  if (!v31)
  {
    OUTLINED_FUNCTION_0_22();
    Code = 4294951895;
    goto LABEL_295;
  }

  if (*a1)
  {
    OUTLINED_FUNCTION_3_18();
    VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
  }

  else
  {
    OUTLINED_FUNCTION_3_18();
    VideoFormatDescription = CMVideoFormatDescriptionCreate(v47, v48, v49, v50, v51, v52);
  }

  Code = VideoFormatDescription;
  if (VideoFormatDescription)
  {
    goto LABEL_336;
  }

LABEL_66:
  if ((*(a1 + 72) - 1) >= 5 && !*(*(a1 + 64) + 136))
  {
    v53 = malloc_type_calloc(1uLL, 0x50uLL, 0x101004022E95A03uLL);
    *(*(a1 + 64) + 136) = v53;
    CreateThreadContext(2, *(a1 + 12), v53);
  }

  v54 = 1;
  v55 = CVPixelBufferLockBaseAddress(v9, 1uLL);
  if (v55)
  {
    Code = v55;
    OUTLINED_FUNCTION_0_22();
    goto LABEL_296;
  }

  if (CVPixelBufferGetPlaneCount(v9) < 2)
  {
    PlaneCount = 1;
  }

  else
  {
    PlaneCount = CVPixelBufferGetPlaneCount(v9);
  }

  v57 = *(a1 + 64);
  *(v57 + 40) = PlaneCount;
  *(v57 + 48) = 1;
  if (CMPhotoPixelFormatContainsYCbCr(PixelFormatType))
  {
    *(*(a1 + 64) + 48) = 2;
    if (CMPhotoPixelFormatIs444(PixelFormatType) || CMPhotoPixelFormatIs422(PixelFormatType))
    {
      *(*(a1 + 64) + 48) = 1;
    }
  }

  if (!CVPixelBufferIsPlanar(v9))
  {
    *(*(a1 + 64) + 64) = CVPixelBufferGetBaseAddress(v9);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
    v90 = *(a1 + 64);
    *(v90 + 8) = BytesPerRow;
    v91 = *(v90 + 112);
    if (!v91)
    {
      goto LABEL_241;
    }

    v9 = pixelBuffera;
    if (((PixelFormatType - 1278226488) > 0x30 || ((1 << (PixelFormatType - 56)) & 0x1400000000001) == 0) && ((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0))
    {
      v92 = PixelFormatType == 825306677 || PixelFormatType == 825437747;
      v93 = v92 || PixelFormatType == 1111970369;
      v94 = v93 || PixelFormatType == 1380411457;
      if (!v94 && PixelFormatType != 1647589490)
      {
        if (PixelFormatType == 1647719528)
        {
          v114 = (v91 * BytesPerRow) >> 1;
          goto LABEL_240;
        }

        if (PixelFormatType != 1650942776 && PixelFormatType != 1650943796 && PixelFormatType != 1651519798 && PixelFormatType != 1651847472 && PixelFormatType != 1651925816 && PixelFormatType != 1651926376 && PixelFormatType != 1652056888 && PixelFormatType != 1717855600 && PixelFormatType != 1717856627 && PixelFormatType != 1734501176 && PixelFormatType != 1734505012 && PixelFormatType != 1735549492 && PixelFormatType != 1735549752 && PixelFormatType != 1751410032 && PixelFormatType != 1751411059 && PixelFormatType != 1815162994 && PixelFormatType != 1815491698 && PixelFormatType != 1919379252 && PixelFormatType != 1919378232)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_19();
          v153 = FigSignalErrorAtGM();
LABEL_319:
          Code = v153;
          OUTLINED_FUNCTION_0_22();
          goto LABEL_320;
        }
      }
    }

    v114 = v91 * BytesPerRow;
LABEL_240:
    *(v90 + 64) += v114;
    a1 = v159;
    goto LABEL_241;
  }

  if (*(*(a1 + 64) + 40))
  {
    v58 = 0;
    v7 = 2019963440;
    do
    {
      *(*(a1 + 64) + 8 * v58 + 64) = CVPixelBufferGetBaseAddressOfPlane(pixelBuffera, v58);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffera, v58);
      v60 = *(a1 + 64);
      *(v60 + 4 * v58 + 8) = BytesPerRowOfPlane;
      v61 = *(v60 + 112);
      if (v61)
      {
        if (PixelFormatType != 875704422 && PixelFormatType != 875704438 && PixelFormatType != 875704934 && PixelFormatType != 875704950 && PixelFormatType != 875836518 && PixelFormatType != 875836534 && PixelFormatType != 1751527984 && PixelFormatType != 1882468912 && PixelFormatType != 1885745712 && PixelFormatType != 1936077360 && PixelFormatType != 1936077362 && PixelFormatType != 1936077876 && PixelFormatType != 1937125936 && PixelFormatType != 1937125938 && PixelFormatType != 1937126452 && PixelFormatType != 1952854576 && PixelFormatType != 1952854578 && PixelFormatType != 1952855092 && PixelFormatType != 1953903152 && PixelFormatType != 1953903154 && PixelFormatType != 1953903668 && PixelFormatType != 2016686640 && PixelFormatType != 2016686642 && PixelFormatType != 2016687156 && PixelFormatType != 2019963440 && PixelFormatType != 2019963956 && PixelFormatType != 2019963442)
        {
          OUTLINED_FUNCTION_0_22();
          v54 = 0;
          Code = 4294951891;
          a1 = v159;
          v9 = pixelBuffera;
          goto LABEL_296;
        }

        v88 = (v60 + 64);
        if (v58)
        {
          v88 += v58;
          v61 /= *(v60 + 48);
        }

        *v88 += v61 * BytesPerRowOfPlane;
      }

      ++v58;
      a1 = v159;
    }

    while (*(*(v159 + 64) + 40) > v58);
  }

LABEL_241:
  v9 = pixelBuffera;
  switch(*(a1 + 72))
  {
    case 1:
    case 3:
    case 5:
      v115 = *(a1 + 64);
      v116 = *(v115 + 128);
      if (v116)
      {
        *(v115 + 56) = v116 + 0x80000;
        goto LABEL_250;
      }

      v117 = CVPixelBufferGetPixelFormatType(pixelBuffera);
      DataSizeFromWidthAndHeight = CMPhotoGetDataSizeFromWidthAndHeight(v117, 16 * ((*(a1 + 12) - 1) / 16) + 16, 8 * ((*(a1 + 16) - 1) / 8) + 8);
      if (!DataSizeFromWidthAndHeight)
      {
        goto LABEL_250;
      }

      v119 = DataSizeFromWidthAndHeight + 0x80000;
      goto LABEL_249;
    case 2:
      *&values.version = 0;
      v120 = YZipEncodeFindDataLength(*(a1 + 64), &values);
      if (v120)
      {
        Code = v120;
        OUTLINED_FUNCTION_0_22();
        v54 = 0;
        break;
      }

      v119 = *&values.version;
LABEL_249:
      *(*(a1 + 64) + 56) = v119;
LABEL_250:
      v121 = *(a1 + 48);
      if (v121)
      {
        LODWORD(PixelFormatType) = 1;
        v153 = CVPixelBufferLockBaseAddress(v121, 1uLL);
        if (v153)
        {
          goto LABEL_319;
        }
      }

      else
      {
        LODWORD(PixelFormatType) = 0;
      }

      v122 = *(a1 + 24);
      if (*(a1 + 72) == 4)
      {
        v123 = CMBlockBufferCreateEmpty(*(a1 + 24), 0, 0, &blockBufferOut);
        if (v123 || (v123 = UncompressedCopyFrame(*(a1 + 64), pixelBuffera, blockBufferOut, &dataLength), v123))
        {
LABEL_323:
          Code = v123;
LABEL_324:
          v7 = 0;
          goto LABEL_320;
        }
      }

      else
      {
        v124 = *(*(a1 + 64) + 56);
        Allocator = CMMemoryPoolGetAllocator(*(a1 + 56));
        v123 = CMBlockBufferCreateWithMemoryBlock(v122, 0, v124, Allocator, 0, 0, *(*(a1 + 64) + 56), 1u, &v169);
        if (v123)
        {
          goto LABEL_323;
        }

        CMBlockBufferGetDataPointer(v169, 0, 0, 0, &dataPointerOut);
        if (!dataPointerOut)
        {
          v7 = 0;
          v54 = 0;
          Code = 4294951893;
          break;
        }

        *(*(a1 + 64) + 88) = dataPointerOut;
        v126 = *(a1 + 64);
        switch(*(a1 + 72))
        {
          case 1:
            v127 = OUTLINED_FUNCTION_6_14(v126);
            v129 = SlimXEncodeFrame(v127, v128);
            goto LABEL_267;
          case 2:
            v132 = OUTLINED_FUNCTION_6_14(v126);
            v129 = YZipEncodeFrame(v132, v133);
            goto LABEL_267;
          case 3:
            v130 = OUTLINED_FUNCTION_6_14(v126);
            v129 = HrlcEncodeFrame(v130, v131);
            goto LABEL_267;
          case 5:
            if (*(v126 + 112))
            {
              v7 = 0;
              v54 = 0;
              Code = 4294951891;
              goto LABEL_296;
            }

            v129 = IntcEncodeFrame(pixelBuffera, *(a1 + 64), &dataLength);
LABEL_267:
            Code = v129;
            if (v129)
            {
              goto LABEL_324;
            }

            if (!dataLength)
            {
              v7 = 0;
              goto LABEL_331;
            }

            v123 = CMBlockBufferCreateWithBufferReference(*(a1 + 24), v169, 0, dataLength, 1u, &blockBufferOut);
            if (v123)
            {
              goto LABEL_323;
            }

            break;
          default:
            v134 = OUTLINED_FUNCTION_6_14(v126);
            v129 = SlimEncodeFrame(v134);
            goto LABEL_267;
        }
      }

      v135 = CMGetAttachment(pixelBuffera, key, 0);
      if (!v135)
      {
        goto LABEL_280;
      }

      v136 = CFPropertyListCreateData(*(a1 + 24), v135, kCFPropertyListXMLFormat_v1_0, 0, &error);
      if (v136)
      {
        v7 = v136;
        *v171 = 1635018093;
        Length = CFDataGetLength(v136);
        if (!blockBufferOut)
        {
LABEL_331:
          v54 = 0;
          Code = 4294951894;
          break;
        }

        v138 = Length;
        v139 = CFDataCreate(*MEMORY[0x1E695E480], v171, 4);
        HIDWORD(values.AllocateBlock) = 0;
        *&values.version = 0;
        values.FreeBlock = _bufFreeBlockCallback_0;
        values.refCon = v139;
        v140 = blockBufferOut;
        MutableBytePtr = CFDataGetMutableBytePtr(v139);
        v142 = *MEMORY[0x1E695E498];
        appended = CMBlockBufferAppendMemoryBlock(v140, MutableBytePtr, 4uLL, *MEMORY[0x1E695E498], &values, 0, 4uLL, 0);
        if (appended)
        {
          Code = appended;
          if (v139)
          {
            CFRelease(v139);
          }

          goto LABEL_276;
        }

        dataLength += 4;
        HIDWORD(keys.AllocateBlock) = 0;
        *&keys.version = 0;
        keys.FreeBlock = _bufFreeBlockCallback_0;
        keys.refCon = v7;
        v144 = blockBufferOut;
        v145 = CFDataGetMutableBytePtr(v7);
        v146 = CMBlockBufferAppendMemoryBlock(v144, v145, v138, v142, &keys, 0, v138, 0);
        if (v146)
        {
          Code = v146;
LABEL_276:
          v54 = 0;
          a1 = v159;
          break;
        }

        CFRetain(v7);
        dataLength += v138;
        a1 = v159;
      }

      else if (error)
      {
        Code = CFErrorGetCode(error);
        v7 = 0;
        if (Code)
        {
LABEL_320:
          v54 = 0;
          break;
        }
      }

      else
      {
LABEL_280:
        v7 = 0;
      }

      v147 = *(a1 + 48);
      if (v147)
      {
        CVPixelBufferUnlockBaseAddress(v147, 1uLL);
        v148 = *(a1 + 48);
        if (v148)
        {
          CFRelease(v148);
        }

        LODWORD(PixelFormatType) = 0;
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffera, 1uLL);
      if (*(a1 + 40))
      {
        if (pixelBuffera)
        {
          v149 = CFRetain(pixelBuffera);
        }

        else
        {
          v149 = 0;
        }

        *(a1 + 48) = v149;
      }

      *&sampleTimingArray.decodeTimeStamp.value = *MEMORY[0x1E6960C70];
      *&sampleTimingArray.presentationTimeStamp.value = *a3;
      v150 = *(MEMORY[0x1E6960C70] + 16);
      sampleTimingArray.presentationTimeStamp.epoch = *(a3 + 16);
      sampleTimingArray.decodeTimeStamp.epoch = v150;
      *&sampleTimingArray.duration.value = *a4;
      sampleTimingArray.duration.epoch = *(a4 + 16);
      v54 = 1;
      v151 = CMSampleBufferCreate(*(a1 + 24), blockBufferOut, 1u, 0, 0, *(a1 + 32), 1, 1, &sampleTimingArray, 1, &dataLength, &cf);
      if (!v151)
      {
        Code = 0;
        if (a6)
        {
          *a6 = cf;
          cf = 0;
        }

        goto LABEL_295;
      }

      Code = v151;
      break;
    case 4:
      *(*(a1 + 64) + 56) = 0;
      goto LABEL_250;
    default:
      goto LABEL_250;
  }

LABEL_296:
  if (error)
  {
    CFRelease(error);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v158)
  {
    CFRelease(v158);
  }

  if ((v54 & 1) == 0)
  {
    CVPixelBufferUnlockBaseAddress(v9, 1uLL);
  }

  if (PixelFormatType)
  {
    CVPixelBufferUnlockBaseAddress(*(a1 + 48), 1uLL);
  }

  return Code;
}

uint64_t _createPixelBufferAttributesDictionaryForEncoder(const __CFAllocator *a1, int a2, int a3, uint64_t a4, int a5, void *a6)
{
  if (a5 >= 6)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 0;
    }

    v12 = Mutable;
    v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v13)
    {
      v14 = v13;
      v15 = &SlimPixelFormatList;
      v16 = 62;
      do
      {
        v17 = CFNumberCreate(0, kCFNumberSInt32Type, v15);
        if (!v17)
        {
          CFRelease(v12);
          CFRelease(v14);
          return 0;
        }

        v18 = v17;
        CFArrayAppendValue(v14, v17);
        CFRelease(v18);
        v15 += 4;
        --v16;
      }

      while (v16);
      CFDictionaryAddValue(v12, *MEMORY[0x1E6966130], v14);
      CFRelease(v14);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if ((a5 - 3) < 3)
      {
        goto LABEL_22;
      }

      if ((a5 - 1) <= 1)
      {
        v19 = (a3 + 3) & 0xFFFFFFFC;
        if (CMPhotoPixelFormatContainsRGB(a4))
        {
          v20 = (a2 + 3) & 0xFFFFFFFC;
        }

        else
        {
          v20 = (a2 + 15) & 0xFFFFFFF0;
          if (CMPhotoPixelFormatIs420(a4))
          {
            v19 = (a3 + 7) & 0xFFFFFFF8;
          }

          else if (CMPhotoPixelFormatIsBayer14Bits(a4) || (IsRAWVersatile = CMPhotoPixelFormatIsRAWVersatile(a4), a4 != 1651519798) && IsRAWVersatile || CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(a4))
          {
            v20 = (a2 + 7) & 0xFFFFFFF8;
            v19 = (a3 + 7) & 0xFFFFFFF8;
          }
        }

        CMPhotoGetBytesPerPixelForPixelFormat(a4);
        FigCFDictionarySetInt32();
        if (v20 != a2)
        {
          FigCFDictionarySetInt32();
        }

        if (v19 != a3)
        {
LABEL_22:
          FigCFDictionarySetInt32();
        }
      }

      PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
      v23 = PixelBufferAttributesWithIOSurfaceSupport;
      if (a6)
      {
        if (!PixelBufferAttributesWithIOSurfaceSupport)
        {
          *a6 = 0;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    CFRelease(v12);
    return v23;
  }
}

void _setProperty_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_15(a1);
  v7 = _createPixelBufferAttributesDictionaryForEncoder(v3, v6, v5, *(v1 + 76), *v4, &cf);
  *v2 = v7;
  if (!v7)
  {
    VTEncoderSessionSetPixelBufferAttributes();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void _setPropertyInputPixelFormat_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_15(a1);
  v7 = _createPixelBufferAttributesDictionaryForEncoder(v3, v6, v5, *v4, *(v1 + 72), &cf);
  *v2 = v7;
  if (!v7)
  {
    VTEncoderSessionSetPixelBufferAttributes();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t CMPhotoCompressionPluginCreate(const void *a1, const void *a2, const void *a3, const void *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  pthread_once(&_checkFigNoteTraceOnce_onceToken_1, _registerFigNoteTrace_1);
  v15 = 0;
  v16 = 4294950306;
  if (!a7 || !a9)
  {
    goto LABEL_34;
  }

  v15 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10E00403899984DuLL);
  if (!v15)
  {
    v16 = 4294950305;
    goto LABEL_34;
  }

  v17 = a5[1];
  if (a6)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
  }

  v18 = a8;
  IsTileEncoderAvailable = CMPhotoIsTileEncoderAvailable(v17, 0);
  switch(v17)
  {
    case 1635135537:
      if (!CMPhotoSupportsAV1Encode())
      {
LABEL_36:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_0();
        v16 = FigSignalErrorAtGM();
        if (v16)
        {
          goto LABEL_34;
        }

        v20 = 0;
        v21 = (v15 + 32);
        goto LABEL_20;
      }

      goto LABEL_16;
    case 1936484717:
      v20 = &CMPhotoCompressionPluginClassSlim;
      break;
    case 1785750887:
      v20 = &CMPhotoCompressionPluginClassJPEG;
      break;
    case 1752589105:
      if (!CMPhotoSupportsHEVCEncode())
      {
        goto LABEL_36;
      }

LABEL_16:
      if (IsTileEncoderAvailable)
      {
        v20 = &CMPhotoCompressionPluginClassVideoToolbox_Tile;
      }

      else
      {
        v20 = CMPhotoCompressionPluginClassVideoToolbox;
      }

      break;
    default:
      v16 = 4294950298;
      goto LABEL_34;
  }

  v21 = (v15 + 32);
LABEL_20:
  *v21 = v20;
  if (a1)
  {
    v22 = CFRetain(a1);
  }

  else
  {
    v22 = 0;
  }

  *v15 = v22;
  if (a2)
  {
    v23 = CFRetain(a2);
  }

  else
  {
    v23 = 0;
  }

  *(v15 + 1) = v23;
  if (a3)
  {
    v24 = CFRetain(a3);
  }

  else
  {
    v24 = 0;
  }

  *(v15 + 2) = v24;
  if (a4)
  {
    v25 = CFRetain(a4);
  }

  else
  {
    v25 = 0;
  }

  *(v15 + 3) = v25;
  v26 = *a5;
  *(v15 + 10) = a5[1];
  v15[52] = *(a5 + 8);
  *(v15 + 12) = v26;
  *(v15 + 17) = a7;
  *(v15 + 18) = v18;
  v27 = *(a5 + 3);
  *(v15 + 108) = *(a5 + 7);
  *(v15 + 92) = v27;
  *(v15 + 14) = a5[9];
  v15[60] = *(a5 + 40);
  *(v15 + 22) = a5[16];
  *(v15 + 16) = a5[11];
  *(v15 + 72) = *(a5 + 3);
  *(v15 + 15) = *(a5 + 9);
  v15[128] = *(a5 + 80);
  v15[44] = *(a5 + 81);
  v16 = (**(v15 + 4))(v15, a6);
  if (!v16)
  {
    *a9 = v15;
    v15 = 0;
  }

LABEL_34:
  CMPhotoCompressionPluginDispose(v15);
  return v16;
}

uint64_t CMPhotoCompressionPluginPrepare(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoCompressionPluginEncode(uint64_t a1, __CVBuffer *a2, uint64_t a3, uint64x2_t *a4, uint64x2_t *a5, int a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*&a4[1] == 0)
  {
    v16.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(a2);
    v16.f64[1] = v17;
    v19.f64[1] = v18;
    *a4 = vcvtq_u64_f64(vrndaq_f64(v16));
    a4[1] = vcvtq_u64_f64(vrndaq_f64(v19));
  }

  v20 = a5->i64[0];
  if (a6)
  {
    v20 += a4->i64[0];
    v21 = a5->i64[1] + a4->i64[1];
    a5->i64[0] = v20;
    a5->i64[1] = v21;
  }

  else
  {
    v21 = a5->i64[1];
  }

  if (!(v20 | v21) && *&a5[1] == 0)
  {
    v22 = a4[1];
    *a5 = *a4;
    a5[1] = v22;
  }

  v23 = *(*(a1 + 32) + 32);
  v24 = a4[1];
  v28[0] = *a4;
  v28[1] = v24;
  v25 = a5[1];
  v27[0] = *a5;
  v27[1] = v25;
  return v23(a1, a2, a3, v28, v27, a7, a8);
}

uint64_t CMPhotoCompressionPluginCompleteEncodes(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294950302;
  }
}

uint64_t CMPhotoCompressionPluginPixelTransfer(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294950306;
  }

  v10 = *(*(a1 + 32) + 48);
  if (!v10)
  {
    return 4294950302;
  }

  v16 = v8;
  v17 = v9;
  v11 = a3[1];
  v15[0] = *a3;
  v15[1] = v11;
  v12 = a4[1];
  v14[0] = *a4;
  v14[1] = v12;
  return v10(a1, a2, v15, v14, a5, a6, a7, a8);
}

uint64_t CMPhotoCompressionPluginCanBeReused(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v17 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    return 4294950306;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    return 4294950302;
  }

  memcpy(v16, a2, 0x58uLL);
  result = v9(a1, v16, a3, a4, a5, a6, &v17);
  if (a7)
  {
    if (!result)
    {
      *a7 = v17;
    }
  }

  return result;
}

uint64_t CMPhotoCompressionPluginCopyReconstructionPixelBufferAttributes(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return (*(v1 + 56))();
  }

  else
  {
    return 4294950306;
  }
}

uint64_t SlimCompressionPluginClass_create(uint64_t a1, const __CFDictionary *a2)
{
  pthread_once(&_checkFigNoteTraceOnce_onceToken_2, _registerFigNoteTrace_2);
  v22 = -1;
  v23 = -1;
  v20 = 9;
  v21 = 1;
  v19 = 0;
  if (*(a1 + 40) == 1936484717)
  {
    v4 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E0040A9A32FFAuLL);
    if (!v4)
    {
      return 4294950305;
    }

    v5 = v4;
    v6 = *(a1 + 120);
    LODWORD(v7) = 4;
    if (v6 < 4)
    {
      v7 = *(a1 + 120);
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    *(v4 + 12) = v8;
    if (v8)
    {
      v9 = 0;
      v10 = (v4 + 16);
      while (1)
      {
        Session = SlimVideoEncoder_CreateSession(*a1, v10);
        if (Session)
        {
          break;
        }

        ++v9;
        ++v10;
        if (v9 >= *(v5 + 12))
        {
          goto LABEL_12;
        }
      }

      v16 = Session;
      goto LABEL_28;
    }

LABEL_12:
    *(v5 + 13) = 0;
    if (a2)
    {
      if (CMPhotoCFDictionaryGetIntIfPresent())
      {
        Value = CFDictionaryGetValue(a2, @"QualityControllerParameters");
      }

      else
      {
        Value = 0;
      }

      CMPhotoCFDictionaryGetIntIfPresent();
      if (v21 > 5 || (CMPhotoCFDictionaryGetIntIfPresent(), (v23 - 16) < 0xFFFFFFEF) || (CMPhotoCFDictionaryGetIntIfPresent(), (v22 - 256) < 0xFFFFFEFF))
      {
        v16 = 4294950306;
        goto LABEL_28;
      }

      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      *(v5 + 28) = v20;
      if (Value)
      {
        v13 = CFRetain(Value);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      *(v5 + 28) = 9;
    }

    *(v5 + 15) = v13;
    v14 = v21;
    *(v5 + 15) = v22;
    *(v5 + 16) = v14;
    *(v5 + 14) = v23;
    if (v5[72] || (TargetingPThreadRootQueueWithPriority = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority(), (*(v5 + 10) = TargetingPThreadRootQueueWithPriority) != 0))
    {
      v16 = 0;
      *(a1 + 152) = v5;
      return v16;
    }

    v16 = 4294950305;
LABEL_28:
    bzero(v18, 0xA8uLL);
    v18[19] = v5;
    SlimCompressionPluginClass_dispose(v18);
    return v16;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t SlimCompressionPluginClass_prepare(uint64_t a1, unint64_t a2, unint64_t a3)
{
  cf = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  if (!a1)
  {
    v8 = 4294950306;
    goto LABEL_31;
  }

  if (!(a2 | a3))
  {
    Mutable = 0;
    goto LABEL_37;
  }

  Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v8 = 4294950305;
    goto LABEL_27;
  }

  v7 = *(a1 + 152);
  if (!v7)
  {
    v8 = 4294950194;
    goto LABEL_27;
  }

  CMPhotoVideoQualityControllerDispose(*(v7 + 128));
  *(v7 + 128) = 0;
  v8 = 4294950190;
  if (a2 >> 31 || a3 >> 31)
  {
    goto LABEL_27;
  }

  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  LODWORD(v18) = *(a1 + 48);
  HIDWORD(v18) = a2;
  v19 = __PAIR64__(*(v7 + 64), a3);
  if (*(v7 + 48) >= 1)
  {
    v10 = 0;
    do
    {
      started = SlimVideoEncoder_StartSessionInternal(*a1, &v18, *(v7 + 16 + 8 * v10));
      if (started)
      {
        goto LABEL_34;
      }
    }

    while (++v10 < *(v7 + 48));
  }

  started = CMPhotoVideoQualityControllerCreate(*a1, *(a1 + 64), *(v7 + 112), a2, a3, *(a1 + 72), *(a1 + 80), *(v7 + 120), *(a1 + 40), *(a1 + 52), &v21);
  if (!started)
  {
    started = CMPhotoVideoQualityControllerSetSessionProperties(v21);
    if (!started)
    {
      v12 = *(v7 + 56);
      if (v12 != -1)
      {
        CMPhotoCFDictionarySetInt(Mutable, @"SlimXBitShift", v12);
      }

      CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E69836B8], *(a1 + 48));
      v13 = *(v7 + 64);
      if (v13 <= 5)
      {
        if (v13 != 3)
        {
          goto LABEL_19;
        }

        v17 = *(v7 + 60);
        if (v17 != -1)
        {
          CMPhotoCFDictionarySetInt(Mutable, @"SlimHrlcRunLengthValue", v17);
          v13 = *(v7 + 64);
LABEL_19:
          CMPhotoCFDictionarySetInt(Mutable, @"InternalCodecType", v13);
          if (*(v7 + 48) >= 1)
          {
            v14 = 0;
            do
            {
              v15 = *(v7 + 16 + 8 * v14);
              context[0] = 0;
              context[1] = v15;
              CFDictionaryApplyFunction(Mutable, _slimEncoderSessionSetOneProperty, context);
              v8 = LODWORD(context[0]);
              if (LODWORD(context[0]))
              {
                goto LABEL_27;
              }
            }

            while (++v14 < *(v7 + 48));
          }

          started = SlimVideoEncoder_CopyPixelBufferAttributesInternal(*(v7 + 16), &cf);
          if (!started)
          {
            if (*v9 == 1)
            {
              OUTLINED_FUNCTION_4();
            }

            CMPhotoCFDictionaryGetSizeIfPresent(cf, *MEMORY[0x1E6966020], (v7 + 88));
            CMPhotoPixelBufferAttributesGetExtendedPixels(cf, 0, (v7 + 96), 0, (v7 + 104));
            v8 = 0;
            *v7 = a2;
            *(v7 + 8) = a3;
            *(v7 + 128) = v21;
            v21 = 0;
            goto LABEL_27;
          }

          goto LABEL_34;
        }
      }

LABEL_37:
      v8 = 4294950306;
      goto LABEL_27;
    }
  }

LABEL_34:
  v8 = started;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_31:
  CMPhotoVideoQualityControllerDispose(v21);
  return v8;
}

uint64_t SlimCompressionPluginClass_encode(uint64_t a1, __CVBuffer *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v8 = *(a1 + 152);
  if (!v8)
  {
    v28 = 4294950194;
    goto LABEL_24;
  }

  v12 = *(v8 + 8);
  v13 = a5[2];
  v14 = a5[3];
  if (*v8 != v13 || v12 != v14)
  {
    v16 = a4[1];
    v17 = a5[1];
    if (*a4 == *a5 && v16 == v17)
    {
      SlimEncodeFrameProperties = SlimCompressionPluginClass_prepare(a1, v13, v14);
      if (!SlimEncodeFrameProperties)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v19 = v16 - v17 + a4[3];
      if (*v8 == v13 && v19 <= v12 && v14 < v12)
      {
        goto LABEL_18;
      }

      fig_log_get_emitter();
      SlimEncodeFrameProperties = FigSignalErrorAtGM();
    }

LABEL_33:
    v28 = SlimEncodeFrameProperties;
    goto LABEL_24;
  }

LABEL_18:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  if (*(v8 + 72))
  {
    SlimEncodeFrameProperties = _createSlimEncodeFrameProperties(a5[1], a5[3], *a1, &cf);
    if (!SlimEncodeFrameProperties)
    {
      v31 = *(v8 + 8 * *(v8 + 52) + 16);
      v34 = *MEMORY[0x1E6960C70];
      v35 = *(MEMORY[0x1E6960C70] + 16);
      v32 = v34;
      v33 = v35;
      SlimEncodeFrameProperties = SlimVideoEncoder_EncodeFrameInternal(v31, a2, &v34, &v32, cf, SlimCompressionPluginClass_callback, a1, a7);
      if (!SlimEncodeFrameProperties)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_33;
  }

  v22 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00401229A369uLL);
  if (v22)
  {
    v23 = a5[3];
    v24 = a5[1];
    *v22 = *(v8 + 8 * *(v8 + 52) + 16);
    *(v22 + 1) = a2;
    *(v22 + 2) = v23;
    v25 = MEMORY[0x1E6960C70];
    v26 = *MEMORY[0x1E6960C70];
    *(v22 + 24) = *MEMORY[0x1E6960C70];
    v27 = *(v25 + 16);
    *(v22 + 5) = v27;
    *(v22 + 3) = v26;
    *(v22 + 8) = v27;
    *(v22 + 9) = v24;
    *(v22 + 10) = SlimCompressionPluginClass_callback;
    *(v22 + 11) = a1;
    *(v22 + 12) = a7;
    dispatch_async_f(*(v8 + 80), v22, _dispatch_tileEncodeAsync);
LABEL_23:
    v28 = 0;
    *(v8 + 52) = (*(v8 + 52) + 1) % *(v8 + 48);
    goto LABEL_24;
  }

  v28 = 4294950305;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v28;
}

uint64_t _createSlimEncodeFrameProperties(uint64_t a1, uint64_t a2, CFAllocatorRef allocator, CFMutableDictionaryRef *a4)
{
  if (!(a2 | a1))
  {
    if (!a4)
    {
      return 0;
    }

    v8 = 0;
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v8 = Mutable;
  if (a1)
  {
    v9 = CMPhotoCFDictionarySetInt(Mutable, @"StillOffsetH", a1);
    if (v9)
    {
      v11 = v9;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v10 = CMPhotoCFDictionarySetInt(v8, @"EncodeHeight", a2);
    v11 = v10;
    if (!a4 || v10)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    v11 = 0;
LABEL_15:
    CFRelease(v8);
    return v11;
  }

LABEL_12:
  v11 = 0;
  *a4 = v8;
  return v11;
}

void _dispatch_tileEncodeAsync(char *a1)
{
  v11 = 0;
  if (!_createSlimEncodeFrameProperties(*(a1 + 9), *(a1 + 2), 0, &v11))
  {
    v2 = *a1;
    v3 = *(a1 + 1);
    v4 = *(a1 + 10);
    v5 = *(a1 + 11);
    v6 = *(a1 + 12);
    v9 = *(a1 + 24);
    v10 = *(a1 + 5);
    v7 = *(a1 + 3);
    v8 = *(a1 + 8);
    SlimVideoEncoder_EncodeFrameInternal(v2, v3, &v9, &v7, v11, v4, v5, v6);
  }

  free(a1);
  if (v11)
  {
    CFRelease(v11);
  }
}

void CMPhotoOneShotSessionPoolRecycleSession(const void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CMPhotoCompressionSessionGetTypeID())
  {
    v3 = 0;
  }

  else
  {
    if (v2 != CMPhotoDecompressionSessionGetTypeID())
    {
      goto LABEL_16;
    }

    v3 = 1;
  }

  if (globalPool && *globalPool)
  {
    valuePtr = dispatch_time(0, 60000000000);
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      if (!FigSimpleMutexLock())
      {
        CFArrayAppendValue(*(globalPool + 8 * v3 + 16), a1);
        CFDictionarySetValue(*(globalPool + 32), a1, v5);
        if (*(globalPool + 40))
        {
          dispatch_resume(*(globalPool + 48));
          *(globalPool + 40) = 0;
        }

        FigSimpleMutexUnlock();
      }

      CFRelease(a1);
      v6 = v5;
    }

    else
    {
      v6 = a1;
    }

    CFRelease(v6);
    return;
  }

LABEL_16:

  CFRelease(a1);
}

void _once_createGlobalPoolIfNeeded()
{
  globalPool = malloc_type_calloc(1uLL, 0x38uLL, 0x10200404B17195AuLL);
  if (globalPool)
  {
    v0 = FigSimpleMutexCreate();
    *(globalPool + 8) = v0;
    if (v0)
    {
      v1 = 0;
      v2 = *MEMORY[0x1E695E480];
      v3 = 1;
      v4 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v5 = v3;
        Mutable = CFArrayCreateMutable(v2, 0, v4);
        *(globalPool + 8 * v1 + 16) = Mutable;
        if (!Mutable)
        {
          break;
        }

        v3 = 0;
        v1 = 1;
        if ((v5 & 1) == 0)
        {
          v7 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(globalPool + 32) = v7;
          if (v7)
          {
            global_queue = dispatch_get_global_queue(0, 0);
            v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
            v10 = globalPool;
            *(globalPool + 48) = v9;
            if (v9)
            {
              dispatch_set_context(v9, v10);
              dispatch_source_set_event_handler_f(*(globalPool + 48), _performCleanup);
              v11 = dispatch_time(0, 60000000000);
              dispatch_source_set_timer(*(globalPool + 48), v11, 0xDF8475800uLL, 0x1BF08EB00uLL);
              v12 = globalPool;
              *(globalPool + 40) = 1;
              *v12 = 1;
            }
          }

          return;
        }
      }
    }
  }
}

uint64_t _performCleanup(uint64_t a1)
{
  result = FigSimpleMutexLock();
  if (!result)
  {
    v3 = _performCleanupByType(a1, 0);
    if (!(v3 + _performCleanupByType(a1, 1u)))
    {
      dispatch_suspend(*(a1 + 48));
      *(a1 + 40) = 1;
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMPhotoHEIFFileWriterCreate(const __CFAllocator *a1, const __CFDictionary *a2, void *a3)
{
  v52 = 0;
  cf = 0;
  v51 = 0;
  if (!a3)
  {
    v7 = 0;
    v48 = 4294950306;
    goto LABEL_46;
  }

  pthread_once(&_checkFigNoteTraceOnce_onceToken_3, _registerFigNoteTrace_3);
  v6 = malloc_type_calloc(1uLL, 0x100uLL, 0x10E0040BC676932uLL);
  v7 = v6;
  if (!v6)
  {
LABEL_54:
    v48 = 4294950305;
    goto LABEL_46;
  }

  *(v6 + 32) = 2;
  v8 = (v6 + 128);
  *(v6 + 23) = 26214400;
  v6[176] = 0;
  v9 = v6 + 176;
  if (a2)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
    v10 = *v8;
    if (*v8)
    {
      if (v10 == 4)
      {
        Value = CFDictionaryGetValue(a2, @"BackingIOSurfaceDestinationSize");
        v12 = Value;
        if (Value)
        {
          v15 = CFGetTypeID(Value);
          if (v15 != CFNumberGetTypeID())
          {
LABEL_9:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_5_0();
LABEL_60:
            v17 = FigSignalErrorAtGM();
            goto LABEL_61;
          }

          *&valuePtr = 0;
          if (!CFNumberGetValue(v12, kCFNumberLongType, &valuePtr) || valuePtr < 1)
          {
            goto LABEL_59;
          }

          v12 = 0;
          *(v7 + 18) = valuePtr;
        }
      }

      else if (v10 == 3)
      {
        v11 = CFDictionaryGetValue(a2, @"BackingFileURL");
        if (!v11)
        {
          goto LABEL_9;
        }

        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 != CFURLGetTypeID())
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      *v8 = 2;
    }

    CMPhotoCFDictionaryGetSizeIfPresent(a2, @"MaxOutputBufferSize", v7 + 23);
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (*v9)
    {
      if (*v8 != 4)
      {
        v50 = 0;
        v16 = *(v7 + 18);
        *&valuePtr = *(v7 + 16);
        *(&valuePtr + 1) = v12;
        *&v55 = v16;
        v17 = _createByteStreamAndBacking(a1, &valuePtr, &cf, &v52);
        if (!v17)
        {
          v18 = MEMORY[0x1E6972248];
          goto LABEL_24;
        }

LABEL_61:
        v48 = v17;
        goto LABEL_46;
      }

LABEL_59:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_0();
      goto LABEL_60;
    }
  }

  else
  {
    v12 = 0;
  }

  v50 = 0;
  v17 = _createByteStreamAndBacking(a1, &unk_1A5ABB698, &cf, &v52);
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = MEMORY[0x1E6972250];
LABEL_24:
  v50 = *v18;
  v19 = CFDictionaryCreate(a1, MEMORY[0x1E6972240], &v50, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v19)
  {
    goto LABEL_54;
  }

  v20 = v19;
  v21 = FigIFFPictureCollectionWriterCreateWithByteStream();
  if (v21)
  {
    v48 = v21;
  }

  else
  {
    v56 = 0;
    valuePtr = 0u;
    *(&v55 + 1) = 0;
    *&v55 = _imageRecordReleaseCallback;
    v22 = OUTLINED_FUNCTION_9_0();
    Mutable = CFArrayCreateMutable(v22, v23, v24);
    *(v7 + 5) = Mutable;
    if (Mutable && (v56 = 0, valuePtr = 0u, v55 = MEMORY[0x1E695D720], v26 = OUTLINED_FUNCTION_9_0(), v29 = CFArrayCreateMutable(v26, v27, v28), (*(v7 + 6) = v29) != 0) && (v30 = OUTLINED_FUNCTION_9_0(), v33 = CFArrayCreateMutable(v30, v31, v32), (*(v7 + 25) = v33) != 0) && (v34 = OUTLINED_FUNCTION_9_0(), v37 = CFArrayCreateMutable(v34, v35, v36), (*(v7 + 26) = v37) != 0) && (v38 = OUTLINED_FUNCTION_9_0(), v40 = CFArrayCreateMutable(v38, v39, 0), (*(v7 + 27) = v40) != 0) && (v41 = OUTLINED_FUNCTION_9_0(), v43 = CFSetCreateMutable(v41, v42, 0), (*(v7 + 13) = v43) != 0))
    {
      *(v7 + 24) = 1835623985;
      CFSetAddValue(v43, 0x6D696631);
      *(v7 + 16) = 0;
      v7[34] = 0;
      v7[152] = 0;
      if (v12)
      {
        v44 = CFRetain(v12);
      }

      else
      {
        v44 = 0;
      }

      *(v7 + 17) = v44;
      *(v7 + 1) = FigSimpleMutexCreate();
      if (a1)
      {
        v45 = CFRetain(a1);
      }

      else
      {
        v45 = 0;
      }

      *v7 = v45;
      v46 = v52;
      *(v7 + 2) = v51;
      v51 = 0;
      v52 = 0;
      v47 = cf;
      cf = 0;
      *(v7 + 20) = v47;
      *(v7 + 21) = v46;
      if (v7[176])
      {
        if (v47)
        {
          v47 = CFRetain(v47);
          v46 = *(v7 + 21);
        }

        *(v7 + 14) = v47;
        if (v46)
        {
          v46 = CFRetain(v46);
        }

        *(v7 + 15) = v46;
      }

      v48 = 0;
      *(v7 + 9) = -1;
      *(v7 + 112) = 0;
      *(v7 + 30) = 0;
      v7[248] = 1;
      *a3 = v7;
      v7 = 0;
    }

    else
    {
      v48 = 4294950305;
    }
  }

  CFRelease(v20);
LABEL_46:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  CMPhotoHEIFFileWriterDispose(v7);
  return v48;
}

uint64_t CMPhotoHEIFFileWriterCloseAndCopyBacking(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = OUTLINED_FUNCTION_14_11();
  if (v8)
  {
    return v8;
  }

  if (!a4 && !*(v4 + 64))
  {
LABEL_75:
    v9 = 0;
    goto LABEL_73;
  }

  context = v4;
  if (!FigCFDictionaryGetCount())
  {
LABEL_7:
    cf = 0;
    p_cf = &cf;
    v49 = 0x2000000000;
    v50 = 0;
    v10 = *(v4 + 88);
    if (v10 && CFArrayGetCount(v10) >= 1)
    {
      context = MEMORY[0x1E69E9820];
      v37 = *"";
      v38 = ___writePendingReferencesIfNeeded_block_invoke;
      v39 = &unk_1E77A2580;
      v40 = &cf;
      v41 = v4;
      FigCFArrayApplyBlock();
    }

    v9 = *(p_cf + 6);
    _Block_object_dispose(&cf, 8);
    if (v9)
    {
      goto LABEL_73;
    }

    cf = 0;
    p_cf = &cf;
    v49 = 0x2000000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v46 = 0;
    context = MEMORY[0x1E69E9820];
    v37 = *"";
    v38 = ___addBackwardsCompatibleStereoGroupsIfNeeded_block_invoke;
    v39 = &unk_1E77A25A8;
    v41 = &v43;
    v42 = v4;
    v40 = &cf;
    FigCFDictionaryApplyBlock();
    if (*(v44 + 24))
    {
      OUTLINED_FUNCTION_22_3();
    }

    v9 = *(p_cf + 6);
    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&cf, 8);
    if (v9)
    {
      goto LABEL_73;
    }

    IsFinal = _ensureBackingIsFinal(v4);
    if (IsFinal)
    {
      goto LABEL_59;
    }

    if (!*(v4 + 24))
    {
      goto LABEL_62;
    }

    context = 0;
    cf = 0;
    v43 = 0;
    v12 = *v4;
    v13 = *(v4 + 48);
    if (v13 && (v14 = CFArrayGetCount(v13), v14 >= 1))
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 48), i);
        appended = _appendTrackReferenceIfValid(ValueAtIndex[12], *ValueAtIndex, v12, &context);
        if (!appended)
        {
          appended = _appendTrackReferenceIfValid(ValueAtIndex[24], *ValueAtIndex, v12, &cf);
          if (!appended)
          {
            appended = _appendTrackReferenceIfValid(ValueAtIndex[36], *ValueAtIndex, v12, &v43);
            if (!appended)
            {
              continue;
            }
          }
        }

        v9 = appended;
        v19 = context;
        goto LABEL_39;
      }

      v19 = context;
      v20 = cf;
      v9 = v43;
      if (!context)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = 0;
      v20 = 0;
      v19 = 0;
LABEL_26:
      if (!v20 && !v9)
      {
LABEL_41:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v43)
        {
          CFRelease(v43);
        }

        if (v9)
        {
          goto LABEL_73;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          goto LABEL_72;
        }

        v25 = OUTLINED_FUNCTION_7_1();
        IsFinal = v26(v25);
        if (!IsFinal)
        {
          for (j = 0; ; ++j)
          {
            Count = *(v4 + 48);
            if (Count)
            {
              Count = CFArrayGetCount(Count);
            }

            if (j >= Count)
            {
              break;
            }

            v29 = CFArrayGetValueAtIndex(*(v4 + 48), j);
            IsFinal = _updateSampleDescriptionExtensions(v4, *v29);
            if (IsFinal)
            {
              goto LABEL_59;
            }

            if (v29[7] >= 1)
            {
              IsFinal = _updateSampleDescriptionExtensions(v4, *(v29 + 12));
              if (IsFinal)
              {
                goto LABEL_59;
              }
            }

            if (v29[13] >= 1)
            {
              IsFinal = _updateSampleDescriptionExtensions(v4, *(v29 + 24));
              if (IsFinal)
              {
                goto LABEL_59;
              }
            }
          }

          if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            goto LABEL_72;
          }

          v30 = OUTLINED_FUNCTION_7_1();
          IsFinal = v31(v30);
          if (!IsFinal)
          {
LABEL_62:
            if (*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              v32 = OUTLINED_FUNCTION_7_1();
              IsFinal = v33(v32);
              if (!IsFinal)
              {
                if (a3)
                {
                  *a3 = 0;
                }

                if (a2)
                {
                  *a2 = *(v4 + 128);
                }

                if (a4)
                {
                  v34 = *(v4 + 120);
                  if (v34)
                  {
                    v34 = CFRetain(v34);
                  }

                  v9 = 0;
                  *a4 = v34;
                  goto LABEL_73;
                }

                goto LABEL_75;
              }

              goto LABEL_59;
            }

LABEL_72:
            v9 = 4294954514;
            goto LABEL_73;
          }
        }

LABEL_59:
        v9 = IsFinal;
        goto LABEL_73;
      }
    }

    Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v22 = Mutable;
      if (v19)
      {
        CFDictionaryAddValue(Mutable, @"thmb", v19);
      }

      if (v20)
      {
        CFDictionaryAddValue(v22, @"auxl", v20);
      }

      if (v9)
      {
        CFDictionaryAddValue(v22, @"cdsc", v9);
      }

      FigBaseObject = FigFormatWriterGetFigBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        v9 = v24(FigBaseObject, *MEMORY[0x1E6971C70], v22);
      }

      else
      {
        v9 = 4294954514;
      }

      CFRelease(v22);
    }

    else
    {
      v9 = 4294950305;
    }

LABEL_39:
    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_41;
  }

  v37 = 0;
  CFDictionaryApplyFunction(*(v4 + 80), _pendingGroupPropertiesApplier, &context);
  v9 = v37;
  if (!v37)
  {
    OUTLINED_FUNCTION_22_3();
    goto LABEL_7;
  }

LABEL_73:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t _ensureBackingIsFinal(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 200);
    if (!v2 || CFArrayGetCount(v2) < 1)
    {
      break;
    }

    Sample = _reorderingBufferDequeueFirstSample(a1);
    if (Sample)
    {
      return Sample;
    }
  }

  if (*(a1 + 152))
  {
    return 0;
  }

  if (*(a1 + 176))
  {
    *&v120 = 0;
    v134 = 0;
    if (*(a1 + 128) == 4)
    {
      v4 = 4294950304;
LABEL_25:
      if (v134)
      {
        CFRelease(v134);
      }

      return v4;
    }

    appended = _createByteStreamAndBacking(*a1, &unk_1A5ABB698, &v120, &v134);
    v7 = v120;
    if (!appended)
    {
      v8 = *(a1 + 16);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v9)
      {
        v4 = 4294954514;
        goto LABEL_23;
      }

      appended = v9(v8, v7, 0);
      if (!appended)
      {
        v133 = 0;
        v4 = v134;
        DataLength = CMBlockBufferGetDataLength(v134);
        OUTLINED_FUNCTION_44();
        appended = CMByteStreamAppendBlockBuffer();
        if (!appended)
        {
          if (v133 == DataLength)
          {
            v11 = *(a1 + 16);
            if (v11)
            {
              CFRelease(v11);
              *(a1 + 16) = 0;
            }

            v12 = *(a1 + 168);
            if (v12)
            {
              CFRelease(v12);
              *(a1 + 168) = 0;
            }

            v13 = *(a1 + 160);
            if (v13)
            {
              CFRelease(v13);
              *(a1 + 160) = 0;
            }

            OUTLINED_FUNCTION_26_3();
          }

          else
          {
            v4 = 4294950190;
          }

          goto LABEL_23;
        }
      }
    }

    v4 = appended;
LABEL_23:
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_25;
  }

  v133 = 0;
  v130 = 0;
  cf = 0;
  v128 = 0;
  v129 = 0;
  v14 = (a1 + 128);
  v15 = *a1;
  v119 = *(a1 + 128);
  if (v119 == 4)
  {
    v16 = &unk_1A5ABB698;
  }

  else
  {
    v120 = *v14;
    v121 = *(a1 + 144);
    v16 = &v120;
  }

  v17 = _createByteStreamAndBacking(v15, v16, &v133, &cf);
  if (v17)
  {
    v4 = v17;
LABEL_142:
    Mutable = 0;
LABEL_143:
    if (v133)
    {
      CFRelease(v133);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_147;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  *(a1 + 248) &= *(a1 + 224);
  v18 = *(a1 + 48);
  if (v18 && CFArrayGetCount(v18) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), 0);
    if (ValueAtIndex[7])
    {
      v20 = 0;
    }

    else
    {
      v20 = ValueAtIndex[13] < 2;
    }

    v21 = v20;
    *(a1 + 247) = v21;
  }

  if (*(a1 + 225))
  {
    if (!*(a1 + 232))
    {
      Mutable = 0;
      v4 = 4294950306;
      goto LABEL_143;
    }

    Mutable = CFArrayCreateMutable(*a1, 0, 0);
    if (!Mutable)
    {
      goto LABEL_260;
    }

    CFSetApplyFunction(*(a1 + 232), _addNumberToArray, Mutable);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v24 = Count;
      v25 = 0;
      while (1)
      {
        v26 = CFArrayGetValueAtIndex(Mutable, v25);
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        v27 = v26;
        v28 = *(a1 + 40);
        if (v28)
        {
          v28 = CFArrayGetCount(v28);
        }

        if (v28 < v27)
        {
          break;
        }

        v29 = OUTLINED_FUNCTION_21_6();
        v30 = *(v29 + 16);
        if (v30)
        {
          v31 = CFArrayGetCount(v30);
          if (v31 >= 1)
          {
            v32 = v31;
            v33 = 0;
            do
            {
              v34 = CFArrayGetValueAtIndex(*(v29 + 16), v33);
              if ((v34 & 0x8000000000000000) != 0)
              {
                goto LABEL_188;
              }

              v35 = v34;
              v36 = *(a1 + 40);
              if (v36)
              {
                v36 = CFArrayGetCount(v36);
              }

              if (v36 < v35)
              {
                goto LABEL_188;
              }

              v37 = OUTLINED_FUNCTION_21_6();
              v38 = v37[2];
              if (HIDWORD(v38) || (v39 = v37[3], HIDWORD(v39)) || (v40 = *(v29 + 2), HIDWORD(v40)) || (v41 = *(v29 + 3), HIDWORD(v41)))
              {
                v4 = 4294950190;
                goto LABEL_141;
              }

              v42 = (v38 * v39);
              if (v42 << 32)
              {
                v43 = v40 * v41 / v42;
                LOBYTE(v120) = v43 < 0xC9;
                if (v43 >= 0xC9)
                {
                  v45 = _areSiblingThumbnailsMIAFCompliant(a1, v29, v42, &v120);
                  if (v45)
                  {
                    goto LABEL_258;
                  }

                  v44 = v120;
                }

                else
                {
                  v44 = 1;
                }

                *(a1 + 248) &= v44;
              }
            }

            while (v32 != ++v33);
          }
        }

        if (++v25 == v24)
        {
          goto LABEL_71;
        }
      }

LABEL_188:
      v4 = 4294950306;
      goto LABEL_141;
    }

LABEL_71:
    CFRelease(Mutable);
  }

  if (!*(a1 + 248))
  {
    goto LABEL_128;
  }

  CFSetAddValue(*(a1 + 104), 0x6D696166);
  if (*(a1 + 242))
  {
    CFSetAddValue(*(a1 + 104), 0x4D694842);
  }

  if (*(a1 + 243))
  {
    CFSetAddValue(*(a1 + 104), 0x4D694841);
  }

  if (*(a1 + 244))
  {
    CFSetAddValue(*(a1 + 104), 0x4D694845);
  }

  if (*(a1 + 245))
  {
    CFSetAddValue(*(a1 + 104), 0x4D694142);
  }

  if (*(a1 + 247))
  {
    v46 = *(a1 + 96);
    if (v46 == 1836279345 || v46 == 1635148659)
    {
      CFSetAddValue(*(a1 + 104), 0x4D69416E);
    }
  }

  v48 = CFArrayGetValueAtIndex(*(a1 + 40), *(a1 + 72));
  *&v120 = 0;
  v134 = 0;
  v49 = _createByteStreamAndBacking(*a1, &unk_1A5ABB698, &v120, &v134);
  if (v49)
  {
    v4 = v49;
    v54 = 0;
    v50 = 0;
    v51 = v120;
  }

  else
  {
    v50 = CFDictionaryCreate(*a1, MEMORY[0x1E69721B0], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v51 = v120;
    if (v50)
    {
      v52 = *(a1 + 16);
      v53 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v53)
      {
        v4 = v53(v52, v51, v50);
        if (v4)
        {
          v54 = 0;
        }

        else
        {
          v54 = CMBlockBufferGetDataLength(v134);
        }
      }

      else
      {
        v54 = 0;
        v4 = 4294954514;
      }
    }

    else
    {
      v54 = 0;
      v4 = 4294950305;
    }
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  if (v4)
  {
    goto LABEL_142;
  }

  v55 = *(a1 + 104);
  if (v55)
  {
    v54 += 4 * CFSetGetCount(v55);
  }

  if (*(a1 + 64) != 1)
  {
    v59 = *(a1 + 40);
    if (!v59)
    {
      goto LABEL_126;
    }

    v60 = CFArrayGetCount(v59);
    if (!v60)
    {
      goto LABEL_126;
    }

    v61 = v60;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 1;
    do
    {
      v66 = CFArrayGetValueAtIndex(*(a1 + 40), v62);
      v67 = v66[8];
      if (*(v66 + 1) == 1)
      {
        v54 += v67;
        if (v66[14] == *(a1 + 72))
        {
          break;
        }
      }

      else
      {
        v64 += v67;
        if (v67 > *(a1 + 184))
        {
          v63 = 1;
        }
      }

      v65 = ++v62 < v61;
    }

    while (v61 != v62);
    if (v63)
    {
      goto LABEL_126;
    }

    v68 = *(a1 + 184);
    if (v64 <= v68)
    {
      v68 = 0;
    }

    if ((v68 + v54) >> 10 > 0x7C || !v65)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  v56 = *(v48 + 8) + v54;
  v57 = *(v48 + 16);
  if (!v57 || !CFArrayGetCount(v57))
  {
    if (v56 >= 0x1F400)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  v58 = CFArrayGetValueAtIndex(*(v48 + 16), 0);
  if (*(CFArrayGetValueAtIndex(*(a1 + 40), v58) + 8) + v54 < 0x1F400 && v56 < *(a1 + 184))
  {
LABEL_125:
    *(a1 + 246) = 1;
  }

LABEL_126:
  if (*(a1 + 246))
  {
    CFSetAddValue(*(a1 + 104), 0x4D695072);
  }

LABEL_128:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  Mutable = FigCFNumberCreateUInt32();
  if (!Mutable)
  {
    goto LABEL_260;
  }

  CMBaseObject = FigPictureCollectionWriterGetCMBaseObject();
  v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v70)
  {
    goto LABEL_140;
  }

  v45 = v70(CMBaseObject, *MEMORY[0x1E6972260], Mutable);
  if (v45)
  {
LABEL_258:
    v4 = v45;
    goto LABEL_141;
  }

  CFRelease(Mutable);
  Mutable = FigCFNumberCreateUInt32();
  if (!Mutable)
  {
LABEL_260:
    v4 = 4294950305;
    goto LABEL_143;
  }

  v71 = FigPictureCollectionWriterGetCMBaseObject();
  v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v72)
  {
LABEL_140:
    v4 = 4294954514;
LABEL_141:
    CFRelease(Mutable);
    goto LABEL_142;
  }

  v45 = v72(v71, *MEMORY[0x1E6972268], Mutable);
  if (v45)
  {
    goto LABEL_258;
  }

  if (CFSetGetCount(*(a1 + 104)) <= 0)
  {
    CFRelease(Mutable);
    goto LABEL_193;
  }

  v73 = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
  if (!v73)
  {
    v4 = 4294950305;
    goto LABEL_141;
  }

  v74 = v73;
  CFSetApplyFunction(*(a1 + 104), _addValueToArray, v73);
  v75 = FigPictureCollectionWriterGetCMBaseObject();
  v76 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v76)
  {
    v4 = v76(v75, *MEMORY[0x1E6972258], v74);
  }

  else
  {
    v4 = 4294954514;
  }

  CFRelease(Mutable);
  CFRelease(v74);
  if (v4)
  {
    goto LABEL_142;
  }

LABEL_193:
  Mutable = CFDictionaryCreate(*a1, MEMORY[0x1E69721B0], MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_260;
  }

  v96 = *(a1 + 16);
  v97 = v133;
  v98 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v98)
  {
    goto LABEL_211;
  }

  v99 = v98(v96, v97, Mutable);
  if (v99)
  {
    goto LABEL_278;
  }

  v100 = *a1;
  v101 = FigPictureCollectionWriterGetCMBaseObject();
  v102 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v102)
  {
LABEL_211:
    v4 = 4294954514;
    goto LABEL_143;
  }

  v99 = v102(v101, *MEMORY[0x1E6972270], v100, &v128);
  if (v99)
  {
    goto LABEL_278;
  }

  v134 = 0;
  v127 = 0;
  FigCFArrayGetInt64AtIndex();
  FigCFArrayGetInt64AtIndex();
  v4 = 4294950190;
  if (v127 < 0 || (v134 & 0x8000000000000000) != 0)
  {
    goto LABEL_143;
  }

  if (v119 == 4)
  {
    v103 = cf;
    v104 = CMBlockBufferGetDataLength(cf);
    v105 = v127 + v104;
    v120 = *v14;
    if (*(a1 + 144) > v127 + v104)
    {
      v105 = *(a1 + 144);
    }

    v106 = *a1;
    v121 = v105;
    v99 = _createByteStreamAndBacking(v106, &v120, &v130, &v129);
    if (v99)
    {
      goto LABEL_278;
    }

    *&v120 = 0;
    v107 = v130;
    v99 = CMByteStreamAppendBlockBuffer();
    if (v99)
    {
      goto LABEL_278;
    }

    if (v120 != v104)
    {
      goto LABEL_277;
    }

    if (v97)
    {
      CFRelease(v97);
      v133 = 0;
    }

    if (v103)
    {
      CFRelease(v103);
    }

    v133 = v107;
    v130 = 0;
    cf = v129;
    v129 = 0;
  }

  else
  {
    v107 = v97;
  }

  *&v120 = 0;
  v99 = CMByteStreamAppendBlockBuffer();
  if (v99)
  {
LABEL_278:
    v4 = v99;
    goto LABEL_143;
  }

  if (v120 != v127)
  {
LABEL_277:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    v99 = FigSignalErrorAtGM();
    goto LABEL_278;
  }

  v112 = *(a1 + 16);
  if (v112)
  {
    CFRelease(v112);
    *(a1 + 16) = 0;
  }

  v113 = *(a1 + 168);
  if (v113)
  {
    CFRelease(v113);
    *(a1 + 168) = 0;
  }

  v114 = *(a1 + 160);
  if (v114)
  {
    CFRelease(v114);
    *(a1 + 160) = 0;
  }

  OUTLINED_FUNCTION_26_3();
  v133 = 0;
  v115 = cf;
  *(a1 + 112) = v107;
  *(a1 + 120) = v115;
  cf = 0;
LABEL_147:
  if (v130)
  {
    CFRelease(v130);
  }

  if (v129)
  {
    CFRelease(v129);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v128)
  {
    CFRelease(v128);
  }

  if (v4)
  {
    return v4;
  }

  v77 = *(a1 + 48);
  if (!v77 || CFArrayGetCount(v77) != 1)
  {
    return 0;
  }

  v78 = CFArrayGetValueAtIndex(*(a1 + 48), 0);
  if (v78[1] != 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    return FigSignalErrorAtGM();
  }

  v79 = v78;
  if (!v78[2])
  {
    return 0;
  }

  Sample = _createMovieWriterIfNeeded(a1);
  if (Sample)
  {
    return Sample;
  }

  v123 = 0;
  v124 = 0;
  v122 = 0;
  v80 = *(v79 + 24);
  v130 = 0;
  cf = 0;
  v128 = 0;
  v129 = 0;
  v81 = FigPictureCollectionCreateFromByteStream();
  if (v81)
  {
    goto LABEL_276;
  }

  v127 = 0;
  v82 = cf;
  v83 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v83)
  {
    goto LABEL_212;
  }

  v81 = v83(v82, 1, &v127);
  if (v81)
  {
    goto LABEL_276;
  }

  if (v127 <= 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    v81 = FigSignalErrorAtGM();
    goto LABEL_276;
  }

  v84 = cf;
  v85 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v85)
  {
    goto LABEL_212;
  }

  v81 = v85(v84, v80, &v130);
  if (v81)
  {
    goto LABEL_276;
  }

  _getSampleOffsetFromPictureReader();
  v126 = 0;
  v86 = *(*(OUTLINED_FUNCTION_37_2() + 16) + 16);
  if (!v86)
  {
    goto LABEL_212;
  }

  v81 = v86(v84, &v126);
  if (v81)
  {
    goto LABEL_276;
  }

  if (v126 >= 1)
  {
    v87 = *(*(OUTLINED_FUNCTION_37_2() + 16) + 24);
    if (!v87)
    {
      goto LABEL_212;
    }

    v81 = v87(v84, 0, &v129);
    if (v81)
    {
      goto LABEL_276;
    }

    _getSampleOffsetFromPictureReader();
  }

  v125 = 0;
  v88 = *(*(OUTLINED_FUNCTION_37_2() + 16) + 32);
  if (!v88)
  {
    goto LABEL_212;
  }

  v81 = v88(v84, &v125);
  if (v81)
  {
    goto LABEL_276;
  }

  if (v125 < 1)
  {
    goto LABEL_179;
  }

  v89 = *(*(OUTLINED_FUNCTION_37_2() + 16) + 40);
  if (!v89)
  {
LABEL_212:
    v108 = 0;
    v4 = 4294954514;
    goto LABEL_213;
  }

  v81 = v89(v84, 0, &v128);
  if (!v81)
  {
    _getSampleOffsetFromPictureReader();
LABEL_179:
    v90 = v130;
    *&v120 = 0;
    v133 = 0;
    v134 = 0;
    v132 = 0;
    v91 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v91)
    {
      v92 = v91(v90, &v120);
      if (v92)
      {
        goto LABEL_280;
      }

      if (v120 < 1)
      {
        v95 = 0;
        v4 = 0;
        goto LABEL_271;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v93 = OUTLINED_FUNCTION_7_1();
        v4 = v94(v93);
        v95 = 0;
        if (v4 || v120 < 1)
        {
          goto LABEL_271;
        }

        if (v134 == 1)
        {
          v4 = 0;
          v95 = *v133 + v132;
LABEL_271:
          free(v133);
          v108 = v95;
          goto LABEL_213;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_19();
        v92 = FigSignalErrorAtGM();
LABEL_280:
        v4 = v92;
        v95 = 0;
        goto LABEL_271;
      }
    }

    v95 = 0;
    v4 = 4294954514;
    goto LABEL_271;
  }

LABEL_276:
  v4 = v81;
  v108 = 0;
LABEL_213:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v130)
  {
    CFRelease(v130);
  }

  if (v129)
  {
    CFRelease(v129);
  }

  if (v128)
  {
    CFRelease(v128);
  }

  if (!v4)
  {
    if (!*v79)
    {
      if (!*(*(OUTLINED_FUNCTION_36_2() + 16) + 8))
      {
        return 4294954514;
      }

      v110 = OUTLINED_FUNCTION_25_4();
      Sample = v111(v110);
      if (Sample)
      {
        return Sample;
      }
    }

    if (*(v79 + 64) && !*(v79 + 48))
    {
      if (!*(*(OUTLINED_FUNCTION_36_2() + 16) + 8))
      {
        return 4294954514;
      }

      v116 = OUTLINED_FUNCTION_25_4();
      Sample = v117(v116);
      if (Sample)
      {
        return Sample;
      }
    }

    if (*(v79 + 112) && !*(v79 + 96))
    {
      v118 = *(*(OUTLINED_FUNCTION_36_2() + 16) + 8);
      if (!v118)
      {
        return 4294954514;
      }

      Sample = v118(v4, 1635088502, 0, v79 + 96);
      if (Sample)
      {
        return Sample;
      }
    }

    if (!*(v79 + 160) || *(v79 + 144))
    {
      goto LABEL_231;
    }

    v109 = *(*(OUTLINED_FUNCTION_36_2() + 16) + 8);
    if (v109)
    {
      Sample = v109(v4, 1835365473, 0, v79 + 144);
      if (!Sample)
      {
LABEL_231:
        Sample = _addFirstSampleReferenceToTrack(a1, v79, v124);
        if (Sample)
        {
          return Sample;
        }

        if (*(v79 + 64))
        {
          Sample = _addFirstSampleReferenceToTrack(a1, v79 + 48, v123);
          if (Sample)
          {
            return Sample;
          }
        }

        if (*(v79 + 112))
        {
          Sample = _addFirstSampleReferenceToTrack(a1, v79 + 96, v122);
          if (Sample)
          {
            return Sample;
          }
        }

        if (*(v79 + 160))
        {
          Sample = _addFirstSampleReferenceToTrack(a1, v79 + 144, v108);
          if (Sample)
          {
            return Sample;
          }
        }

        return 0;
      }

      return Sample;
    }

    return 4294954514;
  }

  return v4;
}

uint64_t CMPhotoHEIFFileWriterAddSequence(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  v5 = OUTLINED_FUNCTION_14_11();
  if (v5)
  {
    return v5;
  }

  if (*(v3 + 33) || *(v3 + 34) || *(v3 + 176))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v6 = FigSignalErrorAtGM();
  }

  else
  {
    v9 = 0;
    v6 = _dataBlobArrayNewEntry(*(v3 + 48), 0xC0uLL, &v9, a3);
    if (!v6)
    {
      v7 = v9;
      *v9 = 0;
      *(v7 + 2) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 9) = 0u;
      *(v7 + 14) = 0u;
      *(v7 + 18) = 0u;
      *(v7 + 21) = 0u;
      *(v7 + 26) = 0u;
      *(v7 + 30) = 0u;
      *(v7 + 33) = 0u;
      *(v7 + 38) = 0u;
      *(v7 + 42) = 0u;
      *(v7 + 23) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return v6;
}

void _addNewImageRecordForDeferredSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_106();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_15_11();
  v34 = v33;
  v36 = v35;
  a10 = 0;
  if (!_addNewImageRecord(v35, v33, v37, v38, v39, 0, v28, &a10))
  {
    v40 = a10;
    *a10 = 2;
    v40[10] = v32;
    v40[14] = v30;
    v40[15] = CMPhotoDictionaryCreateDeepCopy(*v36, 0, v24);
    if (v22)
    {
      v41 = CFRetain(v22);
    }

    else
    {
      v41 = 0;
    }

    v40[17] = v41;
    if (!v34)
    {
      ++*(v36 + 64);
    }

    OUTLINED_FUNCTION_34_0();
    if (v42)
    {
      OUTLINED_FUNCTION_0_6();
    }

    if (!_checkForMIAFConstraints(v36, v34, v24, v23, v22, *v28, v30))
    {
      OUTLINED_FUNCTION_34_0();
      if (v42)
      {
        OUTLINED_FUNCTION_0_6();
      }
    }
  }

  OUTLINED_FUNCTION_105();
}

void _addNewImageRecordForCollection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_106();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  a10 = 0;
  if (!_addNewImageRecord(v38, v36, v34, v32, v30, 0, v24, &a10))
  {
    v40 = a10;
    *a10 = 0;
    v40[18] = v27;
    *(v40 + 14) = v29;
    if (!v37)
    {
      ++*(v39 + 64);
    }

    OUTLINED_FUNCTION_34_0();
    if (v41)
    {
      OUTLINED_FUNCTION_44();
      kdebug_trace();
    }

    if (!_checkForMIAFConstraints(v39, v37, v35, v33, v31, *v25, v29))
    {
      OUTLINED_FUNCTION_34_0();
      if (v41)
      {
        OUTLINED_FUNCTION_44();
        kdebug_trace();
      }

      CMPhotoCFDictionaryGetBooleanIfPresent();
    }
  }

  OUTLINED_FUNCTION_105();
}

uint64_t CMPhotoHEIFFileWriterAddDerivedImageToCollection(uint64_t a1, CFMutableArrayRef a2, const void *a3, int a4, int32_t a5, int32_t a6, uint64_t a7, CGColorSpace *MutableCopy, __int128 a9, CGColorSpace *a10, CFArrayRef theArray, char a12, uint64_t a13)
{
  formatDescriptionOut[0] = 0;
  if (!a1)
  {
    return 4294950306;
  }

  Mutable = v13;
  if (a4 == 1)
  {
    if (!theArray || CFArrayGetCount(theArray) != 2)
    {
      goto LABEL_19;
    }

LABEL_9:
    v59 = a3;
    if (MutableCopy)
    {
      Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v64 = 0;
        value = 0;
        v63 = 0;
        CMPhotoGetTripletsForColorSpace(MutableCopy, 875704422, &value, &v64, &v63);
        v24 = v23;
        v25 = CGColorSpaceContainsFlexGTCInfo();
        if (v24 || (v25 & 1) != 0)
        {
          v28 = CGColorSpaceCopyICCData(MutableCopy);
          if (!v28)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_12();
            v31 = FigSignalErrorAtGM();
            goto LABEL_110;
          }

          v29 = v28;
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6960070], v28);
          CFRelease(v29);
        }

        else
        {
          if (value)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], value);
          }

          if (v64)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F30], v64);
          }

          if (v63)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F98], v63);
          }
        }

LABEL_33:
        v31 = CMVideoFormatDescriptionCreate(*a1, 0x64696D67u, a5, a6, Mutable, formatDescriptionOut);
        if (!v31)
        {
          v31 = FigSimpleMutexLock();
          if (!v31)
          {
            if (!*(a1 + 32))
            {
              HIDWORD(v62) = -1;
              if (!FigCFArrayGetInt32AtIndex())
              {
                goto LABEL_97;
              }

              ValueAtIndex = FigCFArrayGetValueAtIndex();
              if (!ValueAtIndex)
              {
                goto LABEL_97;
              }

              v33 = ValueAtIndex;
              v34 = *(ValueAtIndex + 48);
              if (v34)
              {
                Count = CFArrayGetCount(v34);
                v61 = 0;
                if (CMPhotoCFArrayGetSizeAtIndex(*(v33 + 48), 0, &v61))
                {
                  MutableCopy = FigCFDictionaryCreateMutableCopy();
                  if (MutableCopy)
                  {
                    HIDWORD(v60) = -1;
                    if (a4 != 1)
                    {
                      cmpweak_kFigPictureCollectionWriterOption_IdentityInputItemID();
                      v44 = FigCFDictionarySetInt64();
                      a2 = 0;
                      if (v44)
                      {
                        v27 = v44;
                        v26 = 0;
                        goto LABEL_78;
                      }

                      v45 = Mutable;
LABEL_60:
                      v26 = CFArrayCreateMutable(*a1, Count, MEMORY[0x1E695E9C0]);
                      if (v26)
                      {
                        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6972208], v26);
                        if (Count)
                        {
                          do
                          {
                            appended = FigCFArrayAppendInt64();
                            if (appended)
                            {
                              goto LABEL_96;
                            }
                          }

                          while (--Count);
                        }

                        LODWORD(v60) = 0;
                        v50 = *(a1 + 16);
                        v51 = formatDescriptionOut[0];
                        v52 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                        if (!v52)
                        {
                          v27 = 4294954514;
LABEL_77:
                          Mutable = v45;
LABEL_78:
                          FigSimpleMutexUnlock();
                          goto LABEL_85;
                        }

                        appended = v52(v50, 1684630887, v51, MutableCopy, &v60);
                        if (appended || (_addNewImageRecordForCollection(a1, 0, MutableCopy, 1684630887, formatDescriptionOut[0], SHIDWORD(v62), v60, a13, v58, v13, v59, v60, v61, v62, v63, v64, value, formatDescriptionOut[0], formatDescriptionOut[1], formatDescriptionOut[2], formatDescriptionOut[3], formatDescriptionOut[4]), appended))
                        {
LABEL_96:
                          v27 = appended;
                          goto LABEL_77;
                        }

                        if (!a12)
                        {
                          v55 = 0;
                          goto LABEL_80;
                        }

                        if (*(a1 + 88) || (v53 = FigCFArrayCreateMutableCopy(), (*(a1 + 88) = v53) != 0))
                        {
                          v54 = FigCFArrayCreateMutableCopy();
                          if (v54)
                          {
                            v55 = v54;
                            v56 = FigCFArrayAppendInt32();
                            if (v56 || (v56 = FigCFArrayAppendInt32(), v56) || HIDWORD(v60) != -1 && (v56 = FigCFArrayAppendInt32(), v56))
                            {
                              v27 = v56;
                              FigSimpleMutexUnlock();
LABEL_83:
                              CFRelease(v55);
LABEL_84:
                              Mutable = v45;
                              goto LABEL_85;
                            }

                            CFArrayAppendValue(*(a1 + 88), v55);
LABEL_80:
                            if (a4 == 1)
                            {
                              CFSetAddValue(*(a1 + 104), 0x746D6170);
                            }

                            FigSimpleMutexUnlock();
                            v27 = 0;
                            if (!v55)
                            {
                              goto LABEL_84;
                            }

                            goto LABEL_83;
                          }
                        }
                      }

                      v27 = 4294950305;
                      goto LABEL_77;
                    }

                    v36 = *a1;
                    v37 = CFArrayGetCount(theArray);
                    a2 = CFArrayCreateMutable(v36, v37, MEMORY[0x1E695E9C0]);
                    if (a2)
                    {
                      if (!FigCFArrayGetInt32AtIndex())
                      {
                        goto LABEL_98;
                      }

                      v38 = FigCFArrayGetValueAtIndex();
                      if (!v38)
                      {
                        goto LABEL_98;
                      }

                      v39 = v38;
                      v40 = FigCFArrayAppendInt64();
                      if (!v40)
                      {
                        v40 = FigCFArrayAppendInt64();
                        if (!v40)
                        {
                          v41 = *(v39 + 48);
                          if (v41)
                          {
                            v42 = CFArrayGetCount(v41);
                            v43 = *(v39 + 48);
                            if (Count <= v42)
                            {
                              if (v43)
                              {
                                Count = CFArrayGetCount(v43);
                                v43 = *(v39 + 48);
                              }

                              else
                              {
                                Count = 0;
                              }
                            }

                            value = 0;
                            if (!CMPhotoCFArrayGetSizeAtIndex(v43, 0, &value))
                            {
                              goto LABEL_98;
                            }

                            v46 = v61;
                            if (v61 <= value)
                            {
                              v46 = value;
                            }

                            v61 = v46;
                          }

                          if (v59)
                          {
                            v45 = Mutable;
                            v47 = cmpweak_kFigPictureCollectionWriterOption_TonemapMetadata();
                            CFDictionarySetValue(MutableCopy, v47, v59);
                            v48 = cmpweak_kFigPictureCollectionWriterOption_TonemapInputItemIDs();
                            CFDictionarySetValue(MutableCopy, v48, a2);
                            goto LABEL_60;
                          }

LABEL_98:
                          v26 = 0;
                          v27 = 4294950306;
                          goto LABEL_78;
                        }
                      }

                      v27 = v40;
LABEL_105:
                      v26 = 0;
                      goto LABEL_78;
                    }
                  }

                  else
                  {
                    a2 = 0;
                  }

                  v26 = 0;
                  v27 = 4294950305;
                  goto LABEL_78;
                }

LABEL_97:
                OUTLINED_FUNCTION_70();
                goto LABEL_98;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_12();
            v27 = FigSignalErrorAtGM();
            OUTLINED_FUNCTION_70();
            goto LABEL_105;
          }
        }

LABEL_110:
        v27 = v31;
        OUTLINED_FUNCTION_70();
        v26 = 0;
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_70();
      v26 = 0;
    }

    else
    {
      Mutable = *(&a9 + 1);
      MutableCopy = a10;
      if (a9 == 0 && !a10)
      {
        Mutable = 0;
        goto LABEL_33;
      }

      v58 = a7;
      v30 = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v26 = v30;
      if (v30)
      {
        if (a9)
        {
          CFDictionarySetValue(v30, *MEMORY[0x1E6965D88], a9);
        }

        if (*(&a9 + 1))
        {
          CFDictionarySetValue(v26, *MEMORY[0x1E6965F30], *(&a9 + 1));
        }

        Mutable = v26;
        if (a10)
        {
          CFDictionarySetValue(v26, *MEMORY[0x1E6965F98], a10);
        }

        goto LABEL_33;
      }

      OUTLINED_FUNCTION_16_6();
    }

    v27 = 4294950305;
    goto LABEL_85;
  }

  if (a4 != 2)
  {
    OUTLINED_FUNCTION_16_6();
    v26 = 0;
    v27 = 4294950300;
    goto LABEL_85;
  }

  if (theArray && CFArrayGetCount(theArray) == 1)
  {
    goto LABEL_9;
  }

LABEL_19:
  OUTLINED_FUNCTION_16_6();
  v26 = 0;
  v27 = 4294950306;
LABEL_85:
  if (formatDescriptionOut[0])
  {
    CFRelease(formatDescriptionOut[0]);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v27;
}

uint64_t CMPhotoHEIFFileWriterAddAuxiliaryReferenceToImage(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_31_1();
  v4 = OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    return v4;
  }

  if (*(v1 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v10 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  if (v3 < 0)
  {
    goto LABEL_20;
  }

  Count = *(v1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v3)
  {
    goto LABEL_20;
  }

  v6 = OUTLINED_FUNCTION_21_6();
  if (v6[1] != 2)
  {
    goto LABEL_21;
  }

  v7 = v6;
  if (*v6)
  {
    goto LABEL_21;
  }

  if (v2 < 0)
  {
    goto LABEL_20;
  }

  v8 = *(v1 + 40);
  if (v8)
  {
    v8 = CFArrayGetCount(v8);
  }

  if (v8 <= v2)
  {
LABEL_20:
    v11 = 4294950306;
    goto LABEL_18;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 40), v2);
  if (ValueAtIndex[1] || *ValueAtIndex)
  {
LABEL_21:
    v11 = 4294950302;
    goto LABEL_18;
  }

  v10 = _addItemReference(v1, ValueAtIndex[18], v7[18], 1635088492);
LABEL_17:
  v11 = v10;
LABEL_18:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t _addItemReference(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v9 = MutableCopy;
  appended = CMPhotoCFArrayAppendInt32(MutableCopy, a2);
  if (!appended)
  {
    v11 = *(a1 + 16);
    v12 = *(CMBaseObjectGetVTable() + 16);
    if (*v12 < 5uLL || (v13 = v12[17]) == 0)
    {
      v14 = 4294954514;
      goto LABEL_8;
    }

    appended = v13(v11, a3, v9, a4, 0);
  }

  v14 = appended;
LABEL_8:
  CFRelease(v9);
  return v14;
}

uint64_t CMPhotoHEIFFileWriterAddMetadataReferenceToImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  v6 = OUTLINED_FUNCTION_14_11();
  if (v6)
  {
    return v6;
  }

  if (*(v3 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v9 = FigSignalErrorAtGM();
  }

  else
  {
    if (a3 < 0)
    {
      goto LABEL_13;
    }

    Count = *(v3 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= a3)
    {
LABEL_13:
      v10 = 4294950306;
      goto LABEL_11;
    }

    v8 = OUTLINED_FUNCTION_35_2();
    if (*v8)
    {
      v10 = 4294950302;
      goto LABEL_11;
    }

    v9 = _addItemReference(v3, v8[18], a2, 1667527523);
  }

  v10 = v9;
LABEL_11:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t _addSampleBufferToCollection(uint64_t a1, uint64_t a2, const void *a3, void *value)
{
  if ((*(a2 + 4) | 2) == 2)
  {
    v8 = *(a2 + 72);
    CFArrayAppendValue(*(a1 + 200), value);
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *MEMORY[0x1E695E738];
    }

    CFArrayAppendValue(*(a1 + 208), v9);
    CFArrayAppendValue(*(a1 + 216), v8);
    *(a1 + 192) += CMSampleBufferGetTotalSampleSize(value);
    while (*(a1 + 192) > *(a1 + 184))
    {
      result = _reorderingBufferDequeueFirstSample(a1);
      if (result)
      {
        return result;
      }
    }

LABEL_11:
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(value);
    result = 0;
    *(a2 + 64) += TotalSampleSize;
    return result;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 72);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v13)
  {
    result = v13(v11, v12, a3, value);
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  return 4294954514;
}

uint64_t _createMovieWriterIfNeeded(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v3 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6971B30], *MEMORY[0x1E6971B60]);
  CFDictionarySetValue(v3, *MEMORY[0x1E6971BB8], *MEMORY[0x1E6971BC0]);
  v4 = FigMovieFormatWriterCreateWithByteStream();
  CFRelease(v3);
  return v4;
}

void CMPhotoHEIFFileWriterAddMetadataToImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_106();
  a22 = v23;
  a23 = v31;
  if (!v24)
  {
LABEL_45:
    OUTLINED_FUNCTION_105();
    return;
  }

  v32 = v24;
  if (!*(v24 + 32))
  {
    if (*(v24 + 16))
    {
      v33 = v30;
      v34 = v29;
      v35 = v28;
      v36 = v27;
      v37 = v26;
      v38 = v25;
      if (!FigSimpleMutexLock())
      {
        if ((v38 & 0x8000000000000000) == 0)
        {
          Count = *(v32 + 40);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (Count > v38)
          {
            v40 = OUTLINED_FUNCTION_35_2();
            v41 = v40;
            v42 = *(v40 + 1);
            if (!v42 || (v37 == 1 ? (v43 = v42 == 2) : (v43 = 0), v43))
            {
              if (*v40)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_1_19();
                FigSignalErrorAtGM();
              }

              else if (v40[18] || (MutableCopy = FigCFArrayCreateMutableCopy(), (v41[18] = MutableCopy) != 0))
              {
                a11 = 0;
                switch(v37)
                {
                  case 0:
                    v45 = *(v32 + 16);
                    v46 = *(v41 + 18);
                    v47 = *(CMBaseObjectGetVTable() + 16);
                    if (*v47 >= 8uLL)
                    {
                      v48 = v47[20];
                      if (v48)
                      {
                        if (!v48(v45, v46, v36, v35, v34, &a11))
                        {
                          goto LABEL_41;
                        }
                      }
                    }

                    break;
                  case 1:
                    v61 = *(v32 + 16);
                    v62 = *(v41 + 18);
                    v63 = *(CMBaseObjectGetVTable() + 16);
                    if (*v63 >= 8uLL)
                    {
                      v64 = v63[21];
                      if (v64)
                      {
                        if (!v64(v61, v62, v36, v34, &a11))
                        {
                          goto LABEL_41;
                        }
                      }
                    }

                    break;
                  case 2:
                    v52 = *(v32 + 16);
                    v53 = *(v41 + 18);
                    v54 = *(CMBaseObjectGetVTable() + 16);
                    if (*v54 >= 8uLL)
                    {
                      v55 = v54[22];
                      if (v55)
                      {
                        if (!v55(v52, v53, v36, &a11))
                        {
                          goto LABEL_41;
                        }
                      }
                    }

                    break;
                  case 3:
                    v56 = *(v32 + 16);
                    v57 = *(v41 + 18);
                    v58 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (v58)
                    {
                      if (!v58(v56, v57, *MEMORY[0x1E6972370], v36))
                      {
                        DeepCopy = CMPhotoDictionaryCreateDeepCopy(*v32, 0, v36);
                        if (DeepCopy)
                        {
                          v60 = DeepCopy;
                          CFArrayAppendValue(v41[18], DeepCopy);
                          CFRelease(v60);
                          goto LABEL_42;
                        }
                      }
                    }

                    break;
                  case 4:
                    CFDictionaryGetValue(v36, @"Data");
                    CFDictionaryGetValue(v36, @"URI");
                    CFDictionaryGetValue(v36, @"Name");
                    v49 = *(CMBaseObjectGetVTable() + 16);
                    if (*v49 >= 8uLL)
                    {
                      if (v49[23])
                      {
                        v50 = OUTLINED_FUNCTION_30_3();
                        if (!v51(v50))
                        {
LABEL_41:
                          if (!FigCFArrayAppendInt32())
                          {
LABEL_42:
                            if (v33)
                            {
                              *v33 = a11;
                            }
                          }
                        }
                      }
                    }

                    break;
                  default:
                    break;
                }
              }
            }
          }
        }

        FigSimpleMutexUnlock();
      }
    }

    goto LABEL_45;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_105();

  FigSignalErrorAtGM();
}

uint64_t CMPhotoHEIFFileWriterGetMetadataCount(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!*(a1 + 16))
  {
    return 4294950304;
  }

  OUTLINED_FUNCTION_32_1();
  v4 = FigSimpleMutexLock();
  if (v4)
  {
    return v4;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v2)
  {
LABEL_16:
    v8 = 4294950306;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_35_2();
    if (*v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 18);
      if (v7)
      {
        v7 = CFArrayGetCount(v7);
      }
    }

    v8 = 0;
    if (v1)
    {
      *v1 = v7;
    }
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t CMPhotoHEIFFileWriterAddGroup(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!*(a1 + 16))
  {
    return 4294950304;
  }

  v6 = FigSimpleMutexLock();
  if (v6)
  {
    return v6;
  }

  if (*(a1 + 32))
  {
    goto LABEL_25;
  }

  if (a2 == 1634497650)
  {
    v7 = MEMORY[0x1E6972278];
  }

  else
  {
    if (a2 != 1937007986)
    {
LABEL_25:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();
      v11 = FigSignalErrorAtGM();
      goto LABEL_26;
    }

    v7 = MEMORY[0x1E6972280];
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_25;
  }

  v9 = *(CMBaseObjectGetVTable() + 16);
  if (*v9 < 2uLL || !v9[12])
  {
    v17 = 4294954514;
LABEL_27:
    FigSimpleMutexUnlock();
    return v17;
  }

  OUTLINED_FUNCTION_44();
  v11 = v10();
  if (v11)
  {
LABEL_26:
    v17 = v11;
    goto LABEL_27;
  }

  if (!*(a1 + 56) && (Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 56) = Mutable) == 0) || (MutableCopy = FigCFDictionaryCreateMutableCopy()) == 0)
  {
    v17 = 4294950305;
    goto LABEL_27;
  }

  v14 = MutableCopy;
  v15 = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
  if (v15)
  {
    CFDictionarySetValue(v14, *MEMORY[0x1E69722A0], v15);
    CFDictionarySetValue(v14, *MEMORY[0x1E69722A8], v8);
    Int = CMPhotoCFNumberCreateInt(0);
    if (Int)
    {
      CFDictionarySetValue(*(a1 + 56), Int, v14);
      v17 = 0;
      if (a3)
      {
        *a3 = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    Int = 0;
  }

  v17 = 4294950305;
LABEL_20:
  FigSimpleMutexUnlock();
  CFRelease(v14);
  if (v15)
  {
    CFRelease(v15);
  }

  if (Int)
  {
    CFRelease(Int);
  }

  return v17;
}

uint64_t CMPhotoHEIFFileWriterAddGroupProperties(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_32_1();
  v4 = OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    return v4;
  }

  if (FigCFDictionaryGetCount() <= 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v8 = FigSignalErrorAtGM();
    goto LABEL_13;
  }

  if (!v1[10] && (Mutable = CFDictionaryCreateMutable(*v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v1[10] = Mutable) == 0) || (Int = CMPhotoCFNumberCreateInt(v3)) == 0)
  {
    v8 = 4294950305;
LABEL_13:
    FigSimpleMutexUnlock();
    return v8;
  }

  v7 = Int;
  CFDictionarySetValue(v1[10], Int, v2);
  FigSimpleMutexUnlock();
  CFRelease(v7);
  return 0;
}

uint64_t CMPhotoHEIFFileWriterAddImageToGroup(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!*(a1 + 16))
  {
    return 4294950304;
  }

  OUTLINED_FUNCTION_31_1();
  v4 = FigSimpleMutexLock();
  if (v4)
  {
    return v4;
  }

  if (*(a1 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v12 = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  if (v2 < 0)
  {
    goto LABEL_21;
  }

  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v2)
  {
LABEL_21:
    appended = 4294950306;
    goto LABEL_19;
  }

  v6 = OUTLINED_FUNCTION_21_6();
  if (v6[1])
  {
    appended = 4294950302;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *(a1 + 16);
  v9 = v6[18];
  v10 = *(CMBaseObjectGetVTable() + 16);
  if (*v10 < 2uLL || (v11 = v10[13]) == 0)
  {
    appended = 4294954514;
LABEL_19:
    FigSimpleMutexUnlock();
    return appended;
  }

  v12 = v11(v8, v9, v1, 0);
  if (v12)
  {
LABEL_26:
    appended = v12;
    goto LABEL_19;
  }

  Int = CMPhotoCFNumberCreateInt(v1);
  if (!Int)
  {
    appended = 4294950305;
    goto LABEL_19;
  }

  v14 = OUTLINED_FUNCTION_23_3(Int);
  if (v14 && (Value = CFDictionaryGetValue(v14, *MEMORY[0x1E69722A0])) != 0)
  {
    appended = CMPhotoCFArrayAppendInt32(Value, v7[18]);
  }

  else
  {
    appended = 4294950304;
  }

  FigSimpleMutexUnlock();
  CFRelease(v1);
  return appended;
}

uint64_t CMPhotoHEIFFileWriterAddGroupToGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!*(a1 + 16))
  {
    return 4294950304;
  }

  if (a2 == a3)
  {
    return 4294950306;
  }

  v7 = FigSimpleMutexLock();
  if (v7)
  {
    return v7;
  }

  if (*(a1 + 32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    appended = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  Int = CMPhotoCFNumberCreateInt(a3);
  if (!Int)
  {
    goto LABEL_20;
  }

  v9 = OUTLINED_FUNCTION_23_3(Int);
  if (!v9)
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v17 = FigSignalErrorAtGM();
LABEL_26:
    appended = v17;
    goto LABEL_17;
  }

  v10 = v9;
  CFRelease(v3);
  v11 = CMPhotoCFNumberCreateInt(a2);
  if (!v11)
  {
LABEL_20:
    appended = 4294950305;
LABEL_24:
    FigSimpleMutexUnlock();
    return appended;
  }

  if (!OUTLINED_FUNCTION_23_3(v11))
  {
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(v10, *MEMORY[0x1E69722A0]);
  if (!Value)
  {
    appended = 4294950304;
    goto LABEL_17;
  }

  v13 = Value;
  v14 = *(a1 + 16);
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (*v15 >= 7uLL)
  {
    v16 = v15[19];
    if (v16)
    {
      v17 = v16(v14, a2, a3, 0);
      if (!v17)
      {
        appended = CMPhotoCFArrayAppendInt32(v13, a2);
        if (!appended)
        {
          OUTLINED_FUNCTION_22_3();
        }

        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  appended = 4294954514;
LABEL_17:
  FigSimpleMutexUnlock();
  CFRelease(v3);
  return appended;
}

uint64_t CMPhotoHEIFFileWriterGetPropertiesForImage(uint64_t a1, uint64_t a2, _OWORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  v8 = OUTLINED_FUNCTION_14_11();
  if (v8)
  {
    return v8;
  }

  if (a2 < 0)
  {
    goto LABEL_13;
  }

  Count = *(v4 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_13:
    v11 = 4294950306;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_21_6();
    if (a3)
    {
      *a3 = v10[1];
    }

    v11 = 0;
    if (a4)
    {
      *a4 = *(v10 + 2);
    }
  }

  FigSimpleMutexUnlock();
  return v11;
}

uint64_t CMPhotoHEIFFileWriterGetPropertiesForSequence(uint64_t a1, CFIndex a2, int a3, _OWORD *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 4294950306;
  }

  v10 = OUTLINED_FUNCTION_14_11();
  if (v10)
  {
    return v10;
  }

  if (a2 < 0)
  {
    goto LABEL_21;
  }

  Count = *(v5 + 48);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_21:
    v13 = 4294950306;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 48), a2);
    switch(a3)
    {
      case 0:
LABEL_12:
        if (!*(ValueAtIndex + 7) || ValueAtIndex[2] == 0)
        {
          v13 = 4294950303;
        }

        else
        {
          if (a4)
          {
            *a4 = ValueAtIndex[2];
          }

          v13 = 0;
          if (a5)
          {
            *a5 = *(ValueAtIndex + 7);
          }
        }

        goto LABEL_19;
      case 2:
        ValueAtIndex += 6;
        goto LABEL_12;
      case 1:
        ValueAtIndex += 3;
        goto LABEL_12;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    v13 = FigSignalErrorAtGM();
  }

LABEL_19:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t CMPhotoHEIFFileWriterGetOrientationTransformsForImage(uint64_t a1, CFIndex a2, _BYTE *a3, _DWORD *a4, _BYTE *a5, _DWORD *a6)
{
  if (!a1)
  {
    return 4294950306;
  }

  v12 = OUTLINED_FUNCTION_14_11();
  if (v12)
  {
    return v12;
  }

  if (a2 < 0)
  {
    goto LABEL_17;
  }

  Count = *(v6 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_17:
    v15 = 4294950306;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 40), a2);
    if (a3)
    {
      *a3 = ValueAtIndex[32];
    }

    if (a4)
    {
      *a4 = *(ValueAtIndex + 9);
    }

    if (a5)
    {
      *a5 = ValueAtIndex[40];
    }

    v15 = 0;
    if (a6)
    {
      *a6 = *(ValueAtIndex + 11);
    }
  }

  FigSimpleMutexUnlock();
  return v15;
}

uint64_t CMPhotoHEIFFileWriterGetSequenceHandleForImage(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  v8 = OUTLINED_FUNCTION_14_11();
  if (v8)
  {
    return v8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    Count = *(v4 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count > a2)
    {
      v10 = OUTLINED_FUNCTION_21_6();
      if ((*v10 - 1) > 1)
      {
        v12 = 0;
        v11 = -1;
        if (!a3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v11 = v10[10];
        v12 = 1;
        if (!a3)
        {
LABEL_12:
          v13 = 0;
          if (a4)
          {
            *a4 = v11;
          }

          goto LABEL_14;
        }
      }

      *a3 = v12;
      goto LABEL_12;
    }
  }

  v13 = 4294950306;
LABEL_14:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t CMPhotoHEIFFileWriterGetTimeStampForImage(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_31_1();
  v4 = OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    return v4;
  }

  if (v3 < 0)
  {
    goto LABEL_11;
  }

  Count = *(v1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= v3)
  {
LABEL_11:
    v7 = 4294950306;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_21_6();
    v7 = 0;
    if (v2)
    {
      v8 = *(v6 + 88);
      *(v2 + 16) = *(v6 + 13);
      *v2 = v8;
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t CMPhotoHEIFFileWriterSetTimeStampForImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (*(a3 + 12) & 1) == 0)
  {
    return 4294950306;
  }

  v6 = OUTLINED_FUNCTION_14_11();
  if (v6)
  {
    return v6;
  }

  if (a2 < 0)
  {
    goto LABEL_12;
  }

  Count = *(v3 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a2)
  {
LABEL_12:
    v9 = 4294950306;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_2();
    v9 = 0;
    v10 = *(a3 + 16);
    *(v8 + 88) = *a3;
    *(v8 + 13) = v10;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t CMPhotoHEIFFileWriterCompareReservedImageHandleWithOptions(uint64_t a1, const __CFDictionary *a2, int a3, const opaqueCMFormatDescription *a4, CFIndex a5)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  if (CMPhotoHEIFFileWriterCompareReservedImageHandleWithOptions_onceToken != -1)
  {
    dispatch_once(&CMPhotoHEIFFileWriterCompareReservedImageHandleWithOptions_onceToken, &__block_literal_global_11);
  }

  if (FigSimpleMutexLock())
  {
    return 0;
  }

  CFArrayGetValueAtIndex(*(a1 + 40), a5);
  if (_createHEIFWriterImageHandleConfigurationKey(a2, a3, a4, &cf))
  {
    v10 = 0;
  }

  else
  {
    v10 = FigCFEqual();
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _createHEIFWriterImageHandleConfigurationKey(const __CFDictionary *a1, int a2, CMVideoFormatDescriptionRef videoDesc, __CFData **a4)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  CleanAperture = CMVideoFormatDescriptionGetCleanAperture(videoDesc, 1u);
  height = CleanAperture.size.height;
  width = CleanAperture.size.width;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  v11.f64[0] = width;
  v11.f64[1] = height;
  *bytes = a2;
  v25 = vcvtq_u64_f64(vrndaq_f64(v11));
  v26 = Dimensions;
  if (a1)
  {
    BYTE4(v29) = 0;
    LODWORD(v29) = FigCFDictionaryGetIntIfPresent();
    *(&v29 + 6) = -1;
    BYTE5(v29) = FigCFDictionaryGetIntIfPresent();
    BYTE10(v29) = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6972208]);
    FigCFArrayGetIntAtIndex();
    if (Value)
    {
      Count = CFArrayGetCount(Value);
    }

    else
    {
      Count = 0;
    }

    HIDWORD(v30) = Count;
  }

  if (videoDesc)
  {
    Extension = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965D88]);
    v15 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965F30]);
    v16 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965F98]);
    CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6960038]);
    BYTE11(v29) = FigCFEqual();
    HIDWORD(v29) = CVColorPrimariesGetIntegerCodePointForString(Extension);
    LODWORD(v30) = CMPhotoCVYCbCrMatrixGetIntegerCodePointForString(v16);
    DWORD1(v30) = CVTransferFunctionGetIntegerCodePointForString(v15);
    if (v30 == 2 && FigCFEqual())
    {
      LODWORD(v30) = 0;
    }

    v17 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E6965D70]);
    *&v27 = CMPhotoGetCropRectFromCLAPDict(v17, Dimensions.width);
    *(&v27 + 1) = v18;
    *&v28 = v19;
    *(&v28 + 1) = v20;
  }

  CFDataAppendBytes(v10, bytes, 92);
  if (a4)
  {
    result = 0;
    *a4 = v10;
  }

  else
  {
    CFRelease(v10);
    return 0;
  }

  return result;
}

BOOL CMPhotoHEIFFileWriterImageSequenceFirstFrameCompleted(uint64_t a1, int a2, CFIndex idx)
{
  result = 0;
  if (a1 && (idx & 0x8000000000000000) == 0)
  {
    Count = *(a1 + 48);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    return Count > idx && *(CFArrayGetValueAtIndex(*(a1 + 48), idx) + 1) > 1;
  }

  return result;
}

uint64_t _pendingGroupPropertiesApplier(uint64_t key, uint64_t a2, _DWORD *a3)
{
  if (!a3[2])
  {
    Value = CFDictionaryGetValue(*(*a3 + 56), key);
    if (Value && CFDictionaryGetValue(Value, *MEMORY[0x1E69722A0]))
    {
      UInt32 = FigCFNumberGetUInt32();
      v7 = *(*a3 + 16);
      v8 = *(CMBaseObjectGetVTable() + 16);
      if (*v8 >= 6uLL && (v9 = v8[18]) != 0)
      {
        key = v9(v7, UInt32, a2, 0);
      }

      else
      {
        key = 4294954514;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      key = FigSignalErrorAtGM();
    }

    a3[2] = key;
  }

  return key;
}

void ___writePendingReferencesIfNeeded_block_invoke()
{
  OUTLINED_FUNCTION_106();
  v1 = v0;
  v3 = v2;
  if (!FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || v1 && CFArrayGetCount(v1) >= 3 && !FigCFArrayGetInt32AtIndex())
  {
    v9 = (v3 + 32);
    v23 = -16992;
LABEL_35:
    *(*(*v9 + 8) + 24) = v23;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_28_4();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  if (!ValueAtIndex || (v5 = ValueAtIndex, OUTLINED_FUNCTION_28_4(), (v6 = FigCFArrayGetValueAtIndex()) == 0))
  {
    v9 = (v3 + 32);
LABEL_34:
    v23 = -16990;
    goto LABEL_35;
  }

  v7 = v6;
  v8 = 0;
  v9 = (v3 + 32);
  while (1)
  {
    Count = OUTLINED_FUNCTION_28_4();
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v8 >= Count)
    {
      break;
    }

    OUTLINED_FUNCTION_28_4();
    v11 = FigCFArrayGetValueAtIndex();
    if (!v11)
    {
      goto LABEL_34;
    }

    if (v8 != -1 && *(v11 + 4) == 2 && *(v11 + 112) == -1)
    {
      v12 = _addItemReference(*(v3 + 40), *(v7 + 72), *(v11 + 72), 1635088492);
      OUTLINED_FUNCTION_0_23(v12);
      if (v13)
      {
        goto LABEL_36;
      }
    }

    ++v8;
  }

  for (i = 0; ; ++i)
  {
    v15 = *(v5 + 144);
    if (v15)
    {
      v15 = CFArrayGetCount(v15);
    }

    if (i >= v15)
    {
      break;
    }

    v16 = FigCFArrayGetValueAtIndex();
    if (v16 && (v17 = CFGetTypeID(v16), v17 == CFNumberGetTypeID()))
    {
      SInt32 = FigCFNumberGetSInt32();
      *(*(*(v3 + 32) + 8) + 24) = _addItemReference(*(v3 + 40), *(v7 + 72), SInt32, 1667527523);
      v21 = *(v3 + 32);
    }

    else
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v18 = OUTLINED_FUNCTION_30_3();
        v20 = v19(v18);
      }

      else
      {
        v20 = -12782;
      }

      *(*(*v9 + 8) + 24) = v20;
      v21 = *v9;
    }

    if (*(*(v21 + 8) + 24))
    {
      break;
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_105();
}

void *___addBackwardsCompatibleStereoGroupsIfNeeded_block_invoke(void *result)
{
  if (!*(*(result[4] + 8) + 24))
  {
    v1 = result;
    FigCFDictionaryGetValue();
    result = FigCFEqual();
    if (result)
    {
      result = FigCFDictionaryGetValue();
      if (result)
      {
        result = CFArrayGetCount(result);
        if (result == 3)
        {
          UInt32 = FigCFNumberGetUInt32();
          v36 = 0;
          v3 = *(CMBaseObjectGetVTable() + 16);
          if (*v3 >= 2uLL && v3[12])
          {
            OUTLINED_FUNCTION_44();
            v5 = v4();
          }

          else
          {
            v5 = 4294954514;
          }

          result = OUTLINED_FUNCTION_0_23(v5);
          if (!v6)
          {
            v35 = 0;
            v7 = *(v1[6] + 16);
            v8 = *(CMBaseObjectGetVTable() + 16);
            if (*v8 >= 2uLL && (v9 = v8[12]) != 0)
            {
              v10 = v9(v7, *MEMORY[0x1E6972278], 0, &v35);
            }

            else
            {
              v10 = 4294954514;
            }

            result = OUTLINED_FUNCTION_0_23(v10);
            if (!v11)
            {
              OUTLINED_FUNCTION_9_0();
              result = FigCFArrayGetInt32AtIndex();
              if (result)
              {
                result = FigCFArrayGetInt32AtIndex();
                if (result)
                {
                  v12 = *(CMBaseObjectGetVTable() + 16);
                  if (*v12 >= 2uLL && v12[13])
                  {
                    v13 = OUTLINED_FUNCTION_27();
                    v15 = v14(v13);
                  }

                  else
                  {
                    v15 = 4294954514;
                  }

                  result = OUTLINED_FUNCTION_0_23(v15);
                  if (!v16)
                  {
                    v17 = *(CMBaseObjectGetVTable() + 16);
                    if (*v17 >= 2uLL && v17[13])
                    {
                      v18 = OUTLINED_FUNCTION_27();
                      v20 = v19(v18);
                    }

                    else
                    {
                      v20 = 4294954514;
                    }

                    result = OUTLINED_FUNCTION_0_23(v20);
                    if (!v21)
                    {
                      v22 = *(v1[6] + 16);
                      v23 = v35;
                      v24 = *(CMBaseObjectGetVTable() + 16);
                      if (*v24 >= 7uLL && (v25 = v24[19]) != 0)
                      {
                        v26 = v25(v22, UInt32, v23, 0);
                      }

                      else
                      {
                        v26 = 4294954514;
                      }

                      result = OUTLINED_FUNCTION_0_23(v26);
                      if (!v27)
                      {
                        v28 = *(v1[6] + 16);
                        v30 = v35;
                        v29 = v36;
                        v31 = *(CMBaseObjectGetVTable() + 16);
                        if (*v31 >= 7uLL && (v32 = v31[19]) != 0)
                        {
                          v33 = v32(v28, v29, v30, 0);
                        }

                        else
                        {
                          v33 = 4294954514;
                        }

                        result = OUTLINED_FUNCTION_0_23(v33);
                        if (!v34)
                        {
                          *(*(v1[5] + 8) + 24) = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        *(*(v1[4] + 8) + 24) = -16992;
      }
    }
  }

  return result;
}

uint64_t _reorderingBufferDequeueFirstSample(uint64_t a1)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 200), 0);
  v3 = CFArrayGetValueAtIndex(*(a1 + 216), 0);
  v4 = CFArrayGetValueAtIndex(*(a1 + 208), 0);
  if (v4 == *MEMORY[0x1E695E738])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 16);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v7)
  {
    return 4294954514;
  }

  result = v7(v6, v3, v5, ValueAtIndex);
  if (!result)
  {
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(ValueAtIndex);
    v10 = *(a1 + 200);
    *(a1 + 192) -= TotalSampleSize;
    CFArrayRemoveValueAtIndex(v10, 0);
    CFArrayRemoveValueAtIndex(*(a1 + 208), 0);
    CFArrayRemoveValueAtIndex(*(a1 + 216), 0);
    return 0;
  }

  return result;
}

uint64_t _areSiblingThumbnailsMIAFCompliant(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (*(a2 + 128) && (OUTLINED_FUNCTION_32_1(), v9 = CFArrayGetCount(v8), v9 >= 1))
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 128), v11);
      if (ValueAtIndex < 0)
      {
        return 4294950306;
      }

      v13 = ValueAtIndex;
      Count = *(a1 + 40);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count < v13)
      {
        return 4294950306;
      }

      v15 = CFArrayGetValueAtIndex(*(a1 + 40), v13);
      v16 = v15[3] * v15[2];
      if (v16 > v4 && v16 / v4 < 0xC9)
      {
        v17 = 1;
        goto LABEL_12;
      }

      if (v10 == ++v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v17 = 0;
LABEL_12:
    result = 0;
    if (a4)
    {
      *a4 = v17;
    }
  }

  return result;
}

uint64_t _addFirstSampleReferenceToTrack(CFAllocatorRef *a1, uint64_t a2, uint64_t a3)
{
  valuePtr = a3;
  CopyWithNoData = FigSampleBufferCreateCopyWithNoData();
  if (CopyWithNoData)
  {
    return CopyWithNoData;
  }

  v6 = CFNumberCreate(*a1, kCFNumberSInt64Type, &valuePtr);
  if (!v6)
  {
    return 4294950305;
  }

  v7 = v6;
  CMSetAttachment(0, *MEMORY[0x1E6960528], v6, 1u);
  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v8 = OUTLINED_FUNCTION_27();
    v10 = v9(v8);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        CFRelease(v11);
        v12 = 0;
        *(a2 + 16) = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v7);
  return v12;
}

void _getSampleOffsetFromPictureReader()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  dict = 0;
  v14 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    if (!v4(v1, &v18))
    {
      CMBaseObject = FigPictureTileCursorServiceGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        if (!v6(CMBaseObject, *MEMORY[0x1E69723D8], v3, &dict))
        {
          size.width = 0.0;
          size.height = 0.0;
          if (!CGSizeMakeWithDictionaryRepresentation(dict, &size) || (v7 = vmovn_s64(vmvnq_s8(vceqq_s64(vcvtq_u64_f64(vrndaq_f64(size)), vdupq_n_s64(1uLL)))), ((v7.i32[0] | v7.i32[1]) & 1) != 0))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
LABEL_21:
            FigSignalErrorAtGM();
            goto LABEL_13;
          }

          v8 = v18;
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v9)
          {
            if (!v9(v8, &v17))
            {
              v12 = 0;
              v10 = v17;
              v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v11)
              {
                if (!v11(v10, &v12, &v15, &v14, 0, 0))
                {
                  if (v12 == 1)
                  {
                    *v0 = *v15;
                    goto LABEL_13;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1();
                  goto LABEL_21;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_13:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (dict)
  {
    CFRelease(dict);
  }

  free(v15);
  free(v14);
}

uint64_t _appendTrackReferenceIfValid(int a1, int a2, CFAllocatorRef allocator, CFMutableArrayRef *a4)
{
  result = 0;
  if (a1 && a2)
  {
    if (*a4 || (Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]), (*a4 = Mutable) != 0))
    {
      result = FigCFArrayAppendInt32();
      if (!result)
      {

        return FigCFArrayAppendInt32();
      }
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

uint64_t _updateSampleDescriptionExtensions(uint64_t a1, uint64_t a2)
{
  cf = 0;
  theArray = 0;
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    v13 = 0;
    v10 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v7 = v6(v4, a2, *MEMORY[0x1E6971D20], v5, &theArray);
  if (v7)
  {
    goto LABEL_32;
  }

  if (!theArray || CFArrayGetCount(theArray) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), !CMFormatDescriptionGetExtensions(ValueAtIndex)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v7 = FigSignalErrorAtGM();
LABEL_32:
    v15 = v7;
    v13 = 0;
    v10 = 0;
    goto LABEL_37;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v10 = MutableCopy;
  if (MutableCopy)
  {
    v11 = *MEMORY[0x1E69600A0];
    if (CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69600A0]))
    {
      v12 = FigCFDictionaryCreateMutableCopy();
      v13 = v12;
      if (v12)
      {
        if (CFDictionaryContainsKey(v12, @"ccst"))
        {
          v14 = 0;
          v15 = 0;
          goto LABEL_13;
        }

        *bytes = 0;
        Mutable = CFDataCreateMutable(*a1, 0);
        if (Mutable)
        {
          v18 = Mutable;
          *v30 = 132;
          CFDataAppendBytes(Mutable, bytes, 4);
          CFDataAppendBytes(v18, v30, 4);
          CFDictionarySetValue(v13, @"ccst", v18);
          CFRelease(v18);
          goto LABEL_26;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
        v23 = FigSignalErrorAtGM();
        if (!v23)
        {
LABEL_26:
          CFDictionarySetValue(v10, v11, v13);
          CFDictionaryRemoveValue(v10, *MEMORY[0x1E69600D0]);
          CFDictionaryRemoveValue(v10, *MEMORY[0x1E69600C8]);
          v19 = *a1;
          MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
          width = CMVideoFormatDescriptionGetDimensions(ValueAtIndex).width;
          Dimensions = CMVideoFormatDescriptionGetDimensions(ValueAtIndex);
          v23 = CMVideoFormatDescriptionCreate(v19, MediaSubType, width, Dimensions.height, v10, &cf);
          if (!v23)
          {
            v24 = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
            v14 = v24;
            if (!v24)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_2_1();
              v27 = FigSignalErrorAtGM();
              goto LABEL_30;
            }

            CFArrayAppendValue(v24, cf);
            if (*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              v25 = OUTLINED_FUNCTION_27();
              v27 = v26(v25);
LABEL_30:
              v15 = v27;
              goto LABEL_13;
            }

LABEL_12:
            v15 = 4294954514;
            goto LABEL_13;
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
        v23 = FigSignalErrorAtGM();
      }

      v15 = v23;
      goto LABEL_37;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();
  v15 = FigSignalErrorAtGM();
  v13 = 0;
LABEL_37:
  v14 = 0;
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v15;
}

uint64_t _dataBlobArrayNewEntry(void *a1, size_t a2, void *a3, void *a4)
{
  v8 = CFGetAllocator(a1);
  v9 = MEMORY[0x1AC550000](v8, a2, 698487154, 0);
  if (!v9)
  {
    return 4294950305;
  }

  v10 = v9;
  bzero(v9, a2);
  CFArrayAppendValue(a1, v10);
  if (a4)
  {
    *a4 = CFArrayGetCount(a1) - 1;
  }

  result = 0;
  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t _addNewImageRecord(uint64_t a1, int a2, uint64_t a3, int a4, const opaqueCMFormatDescription *a5, int a6, void *a7, void *a8)
{
  v29 = 0;
  result = _dataBlobArrayNewEntry(*(a1 + 40), 0xA0uLL, &v29, a7);
  if (!result)
  {
    CleanAperture = CMVideoFormatDescriptionGetCleanAperture(a5, 1u);
    v16 = v29;
    *(v29 + 4) = a2;
    *(v16 + 8) = a4;
    height = CleanAperture.size.height;
    *(v16 + 16) = vcvtq_u64_f64(vrndaq_f64(CleanAperture.size));
    v18 = MEMORY[0x1E6960C70];
    *(v16 + 88) = *MEMORY[0x1E6960C70];
    *(v16 + 104) = *(v18 + 16);
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v20 = v29;
    *(v29 + 36) = 0;
    *(v20 + 48) = Value;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    v22 = v29;
    *(v29 + 44) = -1;
    *(v22 + 32) = IntIfPresent;
    v23 = FigCFDictionaryGetIntIfPresent();
    v24 = v29;
    *(v29 + 56) = 0;
    v24 += 56;
    *(v24 - 16) = v23;
    *(v24 + 8) = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      v25 = v29;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*a1, 0, 0);
      v25 = v29;
      *(v29 + 128) = Mutable;
      if (!Mutable)
      {
        return 4294950305;
      }
    }

    v27 = v25[56];
    *(a1 + 224) |= v27;
    if (v27)
    {
      *(a1 + 72) = *a7;
    }

    if (!a6)
    {
      if (v25[32])
      {
        v28 = 1;
      }

      else
      {
        v28 = v25[40] != 0;
      }

      *(a1 + 248) &= v28;
    }

    result = 0;
    *a8 = v25;
  }

  return result;
}

uint64_t _checkForMIAFConstraints(uint64_t a1, int a2, const __CFDictionary *a3, int a4, CMVideoFormatDescriptionRef videoDesc, uint64_t a6, const __CFString *a7)
{
  v81 = a6;
  idx = a7;
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  CleanAperture = CMVideoFormatDescriptionGetCleanAperture(videoDesc, 1u);
  x = CleanAperture.origin.x;
  y = CleanAperture.origin.y;
  width = CleanAperture.size.width;
  height = CleanAperture.size.height;
  HIBYTE(v87[0]) = 0;
  v83[0] = 0;
  v86 = 0;
  HIWORD(v85) = 0;
  BYTE5(v85) = 1;
  MediaSubType = CMFormatDescriptionGetMediaSubType(videoDesc);
  if (CVPixelFormatDescriptionGetDescriptionWithPixelFormatType())
  {
    LOBYTE(cf) = 0;
    BYTE4(v85) = 0;
    v18 = 1;
    if (((MediaSubType - 1278226488) > 0x30 || ((1 << (MediaSubType - 56)) & 0x1400000000001) == 0) && ((MediaSubType - 1278226736) > 6 || ((1 << (MediaSubType - 48)) & 0x45) == 0) && MediaSubType != 1717855600 && MediaSubType != 1751410032)
    {
      v18 = MediaSubType == 1751411059 || MediaSubType == 1717856627;
    }

    v31 = CMPhotoGetBitDepthForPixelFormat(MediaSubType) == 10;
    if (CMPhotoPixelFormatIsSubsampled(MediaSubType, &cf, &v85 + 4, v87 + 7, 0))
    {
      goto LABEL_123;
    }

    if (v18)
    {
      BYTE5(v85) = 0;
      goto LABEL_43;
    }

    if (!HIBYTE(v87[0]))
    {
      BYTE5(v85) = 3;
      goto LABEL_43;
    }

    if (cf && BYTE4(v85))
    {
      v32 = 1;
LABEL_42:
      BYTE5(v85) = v32;
      goto LABEL_43;
    }

    if (cf && !BYTE4(v85))
    {
      v32 = 2;
      goto LABEL_42;
    }
  }

  else
  {
    if (a4 == 1635148593)
    {
      Extension = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E69600A0]);
      if (!Extension)
      {
        goto LABEL_123;
      }

      Value = CFDictionaryGetValue(Extension, @"avcC");
      if (!Value)
      {
        goto LABEL_123;
      }

      v35 = Value;
      CFDataGetBytePtr(Value);
      CFDataGetLength(v35);
      SPSFromAVCC = FigH264Bridge_GetSPSFromAVCC();
      if (SPSFromAVCC)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_19_7(SPSFromAVCC, v37, v38, v39, v40, v41, v42, v43, v81, idx, v83[0]);
      if (FigH264Bridge_GetSPSChromaFormatAndBitDepths() || HIBYTE(v85) != BYTE6(v85))
      {
        goto LABEL_123;
      }

      goto LABEL_63;
    }

    if (a4 == 1752589105)
    {
      v21 = CMFormatDescriptionGetExtension(videoDesc, *MEMORY[0x1E69600A0]);
      if (!v21)
      {
        goto LABEL_123;
      }

      if (!CFDictionaryGetValue(v21, @"hvcC"))
      {
        goto LABEL_123;
      }

      HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
      if (HEVCParameterSetAtIndex)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_19_7(HEVCParameterSetAtIndex, v23, v24, v25, v26, v27, v28, v29, v81, idx, v83[0]);
      if (FigHEVCBridge_GetSPSChromaFormatAndBitDepths())
      {
        goto LABEL_123;
      }

      v30 = BYTE5(v85);
      if (HIBYTE(v85) != BYTE6(v85))
      {
        goto LABEL_123;
      }

      v31 = HIBYTE(v85) == 10;
      goto LABEL_46;
    }

    v31 = 0;
  }

LABEL_43:
  if (a4 != 1635148593)
  {
    if (a4 != 1752589105)
    {
      goto LABEL_61;
    }

    v30 = BYTE5(v85);
LABEL_46:
    v45 = v30 == 3 || v30 == 0;
    *(a1 + 244) |= v45;
    v46 = v30 == 1;
    v47 = v31 && v30 == 1;
    if (v31)
    {
      v46 = 0;
    }

    v48 = v30 == 2 || v47;
    *(a1 + 243) |= v48;
    *(a1 + 242) |= v46;
LABEL_61:
    if (!videoDesc)
    {
      goto LABEL_79;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a1 + 245) |= 1u;
  if (videoDesc)
  {
LABEL_64:
    Extensions = CMFormatDescriptionGetExtensions(videoDesc);
    CMPhotoCreateColorSpaceFromPixelBufferAttachments(Extensions, BYTE5(v85) == 0, &cf, 1, 0, v50, v51, v52, v81, idx, v83[0], v83[1], 0, v85, v86, v87[0], v87[1], v87[2], v87[3], v87[4], v87[5], v87[6]);
    if (!v53 && (cf || (v54 = FigCFDictionaryGetValue()) == 0 || (cf = CGColorSpaceCreateWithName(v54)) != 0))
    {
      BYTE4(v85) = 1;
      if (a3)
      {
        FigCFDictionaryGetBooleanIfPresent();
        v55 = BYTE4(v85) == 0;
      }

      else
      {
        v55 = 0;
      }

      if (a2)
      {
        v55 = 0;
      }

      if (a2 == 2 || cf || v55)
      {
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        *(a1 + 248) = 0;
      }

      goto LABEL_79;
    }

LABEL_123:
    v62 = ~LOBYTE(Dimensions.width) & ~LOBYTE(Dimensions.height);
    v57 = (a1 + 248);
    v56 = *(a1 + 248);
    v58 = (a1 + 224);
    goto LABEL_82;
  }

LABEL_79:
  v57 = (a1 + 248);
  v56 = *(a1 + 248);
  v58 = (a1 + 224);
  if (BYTE5(v85) - 3 < 0xFFFFFFFE)
  {
    v59 = v56 & 1;
    *v57 = v59;
    v60 = 1;
    LOBYTE(v61) = 1;
    goto LABEL_88;
  }

  v62 = ~LOBYTE(Dimensions.width) & ~LOBYTE(Dimensions.height);
LABEL_82:
  v63 = v62 & 1 & v56;
  if (x)
  {
    LOBYTE(v64) = 0;
  }

  else
  {
    v64 = ~width;
  }

  v59 = v64 & v63;
  *v57 = v59;
  v60 = 0;
  if (y)
  {
    LOBYTE(v61) = 0;
  }

  else
  {
    v61 = height ^ 1;
  }

LABEL_88:
  v65 = v61 & v59;
  if (Dimensions.height * Dimensions.width >= 128000001)
  {
    v65 = 0;
  }

  *v57 = v65;
  if (a2 != 1)
  {
    goto LABEL_97;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), idx);
  v67 = ValueAtIndex[2];
  if (HIDWORD(v67))
  {
    return 4294950190;
  }

  v68 = ValueAtIndex[3];
  if (HIDWORD(v68))
  {
    return 4294950190;
  }

  v69 = Dimensions.width * Dimensions.height;
  if (v69)
  {
    v70 = v68 * v67 / v69;
    LOBYTE(v83[0]) = v70 < 0xC9;
    if (v70 < 0xC9)
    {
      goto LABEL_95;
    }

    result = _areSiblingThumbnailsMIAFCompliant(a1, ValueAtIndex, v69, v83);
    if (result)
    {
      return result;
    }

    if (LOBYTE(v83[0]))
    {
LABEL_95:
      v71 = 0;
LABEL_96:
      *(a1 + 225) |= v71;
      goto LABEL_97;
    }

    Mutable = *(a1 + 232);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(*a1, 0, 0);
      *(a1 + 232) = Mutable;
      if (!Mutable)
      {
        return 4294950305;
      }
    }

    if (idx == idx)
    {
      CFSetAddValue(Mutable, idx);
      v71 = LOBYTE(v83[0]) == 0;
      goto LABEL_96;
    }

    return 4294950190;
  }

LABEL_97:
  if (a3)
  {
    LOBYTE(v86) = 1;
    FigCFDictionaryGetBooleanIfPresent();
    if (v86)
    {
      v72 = CFDictionaryGetValue(a3, *MEMORY[0x1E6972208]);
      v73 = *v57 & 1;
      if (!v72)
      {
        v73 = 0;
      }

      *v57 = v73;
      if (!a2 && !*v58)
      {
        *(a1 + 224) = 1;
        *(a1 + 72) = v81;
      }
    }

    *v83 = *MEMORY[0x1E695F060];
    if (FigCFDictionaryGetCGSizeIfPresent())
    {
      v74 = *v83 >= 64.0;
      if (*&v83[1] < 64.0)
      {
        v74 = 0;
      }

      v75 = v74 & *v57;
      if (v60)
      {
        v76 = 1;
      }

      else
      {
        v76 = ~*v83;
      }

      v77 = v75 & v76;
      if (v60)
      {
        v78 = 1;
      }

      else
      {
        v78 = ~*&v83[1];
      }

      *v57 = v77 & v78;
    }
  }

  return 0;
}

uint64_t _createByteStreamAndBacking_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_4(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_9(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_12(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void CMPhotoHEIFFileWriterAddCompressedMovie_cold_14()
{
  OUTLINED_FUNCTION_32_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  *v0 = FigSignalErrorAtGM();
  CFRelease(v1);
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_23(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_24(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie_cold_25(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t Slim_GetVersionFromPixelBufferInfo(uint64_t a1, int a2, char a3, int a4, int *a5)
{
  v25 = a2;
  UncompressedPixelFormatFromCompressedPixelFormat = a1;
  if (!CMPhotoPixelFormatIsAGXCompressed(a1))
  {
    goto LABEL_5;
  }

  if (a4 == 5)
  {
    UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
    if (CMPhotoPixelFormatIsAGXVersatile(a1))
    {
      result = CMPhotoGetBayerPatternFromRegroupBayerPattern(a2, &v25);
      if (result)
      {
        return result;
      }
    }

LABEL_5:
    if (UncompressedPixelFormatFromCompressedPixelFormat == 825306677)
    {
      v13 = 61;
      goto LABEL_144;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 825437747)
    {
      v13 = 9;
      goto LABEL_144;
    }

    OUTLINED_FUNCTION_2_21();
    if (v12)
    {
      v13 = 4;
      goto LABEL_144;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat == 2037741171)
    {
      v13 = 1;
      goto LABEL_144;
    }

    OUTLINED_FUNCTION_2_21();
    if (v12)
    {
      v13 = 76;
      goto LABEL_144;
    }

    OUTLINED_FUNCTION_2_21();
    if (v12)
    {
      v13 = 77;
    }

    else
    {
      switch(UncompressedPixelFormatFromCompressedPixelFormat)
      {
        case 875836518:
          v13 = 6;
          break;
        case 875836534:
          v13 = 5;
          break;
        case 1111970369:
          v13 = 82;
          break;
        default:
          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 15;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 18;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 17;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 16;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 22;
            break;
          }

          OUTLINED_FUNCTION_23();
          if (v12)
          {
            v13 = 8;
            break;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1380411457)
          {
            v13 = 75;
            break;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1647589490)
          {
            v13 = 21;
            break;
          }

          if (UncompressedPixelFormatFromCompressedPixelFormat == 1647719528)
          {
            if (v25 != 6)
            {
              if (v25 == 7)
              {
                v13 = 60;
                break;
              }

              return 4294951896;
            }

            v13 = 59;
          }

          else
          {
            if (UncompressedPixelFormatFromCompressedPixelFormat == 1650942776)
            {
              v13 = 45;
              break;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat == 1650943796)
            {
              v13 = 3;
              break;
            }

            if (UncompressedPixelFormatFromCompressedPixelFormat != 1651519798)
            {
              if (UncompressedPixelFormatFromCompressedPixelFormat == 1651847472)
              {
                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v20)
                  {
                    v17 = &unk_1A5ABB6D4;
                    goto LABEL_136;
                  }
                }
              }

              else if (UncompressedPixelFormatFromCompressedPixelFormat == 1651925816)
              {
                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v21)
                  {
                    v17 = &unk_1A5ABB6B0;
                    goto LABEL_136;
                  }
                }
              }

              else if (UncompressedPixelFormatFromCompressedPixelFormat == 1651926376)
              {
                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v16)
                  {
                    v17 = &unk_1A5ABB6F8;
LABEL_136:
                    v13 = v17[v15];
                    break;
                  }
                }
              }

              else
              {
                if (UncompressedPixelFormatFromCompressedPixelFormat != 1652056888)
                {
                  switch(UncompressedPixelFormatFromCompressedPixelFormat)
                  {
                    case 1717855600:
                      v13 = 80;
                      break;
                    case 1717856627:
                      v13 = 81;
                      break;
                    case 1734501176:
                      v13 = 48;
                      break;
                    case 1734505012:
                      v13 = 73;
                      break;
                    case 1735549492:
                      v13 = 72;
                      break;
                    case 1735549752:
                      v13 = 46;
                      break;
                    case 1751410032:
                      v13 = 78;
                      break;
                    case 1751411059:
                      v13 = 79;
                      break;
                    case 1751527984:
                      v13 = 74;
                      break;
                    case 1815162994:
                      v13 = 19;
                      break;
                    case 1815491698:
                      v13 = 20;
                      break;
                    case 1882468912:
                      v13 = 13;
                      break;
                    case 1885745712:
                      v13 = 14;
                      break;
                    case 1919378232:
                      v13 = 47;
                      break;
                    case 1919379252:
                      v13 = 10;
                      break;
                    case 1936077360:
                      v13 = 26;
                      break;
                    case 1936077362:
                      v13 = 91;
                      break;
                    case 1936077876:
                      v13 = 93;
                      break;
                    case 1937125936:
                      v13 = 25;
                      break;
                    case 1937125938:
                      v13 = 92;
                      break;
                    case 1937126452:
                      v13 = 94;
                      break;
                    case 1952854576:
                      v13 = 24;
                      break;
                    case 1952854578:
                      v13 = 87;
                      break;
                    case 1952855092:
                      v13 = 89;
                      break;
                    case 1953903152:
                      v13 = 23;
                      break;
                    case 1953903154:
                      v13 = 88;
                      break;
                    case 1953903668:
                      v13 = 90;
                      break;
                    case 2016686640:
                      v13 = 11;
                      break;
                    case 2016686642:
                      v13 = 84;
                      break;
                    case 2016687156:
                      v13 = 86;
                      break;
                    case 2019963440:
                      v13 = 12;
                      break;
                    case 2019963442:
                      v13 = 83;
                      break;
                    case 2019963956:
                      v13 = 85;
                      break;
                    case 2037741158:
                      v13 = 7;
                      break;
                    default:
                      OUTLINED_FUNCTION_2_21();
                      if (!v12)
                      {
                        OUTLINED_FUNCTION_4_16();
                        return FigSignalErrorAtGM();
                      }

                      v13 = 2;
                      break;
                  }

                  break;
                }

                OUTLINED_FUNCTION_3_20();
                if (!v14)
                {
                  OUTLINED_FUNCTION_1_20();
                  if (v18)
                  {
                    v17 = &unk_1A5ABB71C;
                    goto LABEL_136;
                  }
                }
              }

              return 4294951896;
            }

            if ((a3 & 1) == 0)
            {
              if (v25 < 9)
              {
                OUTLINED_FUNCTION_1_20();
                if (v19)
                {
                  v17 = &unk_1A5ABB740;
                  goto LABEL_136;
                }
              }

              return 4294951896;
            }

            if (v25 >= 5)
            {
              return 4294951896;
            }

            v13 = v25 + 62;
          }

          break;
      }
    }

LABEL_144:
    IsAGXCompressed = CMPhotoPixelFormatIsAGXCompressed(a1);
    if (!a5)
    {
      return 0;
    }

    v23 = IsAGXCompressed;
    result = 0;
    if (v23)
    {
      v24 = v13 | (a4 << 16) | 0x100000;
    }

    else
    {
      v24 = v13 | (a4 << 16);
    }

    *a5 = v24;
    return result;
  }

  OUTLINED_FUNCTION_4_16();

  return FigSignalErrorAtGM();
}

uint64_t Slim_GetPixelBufferInfoFromVersion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_4_16();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t Slim_GetPixelBufferInfoFromVersion_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_4_16();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerGetContainerFormat(uint64_t a1, _DWORD *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 544);
    }
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerGetImageCount(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a2)
  {
    return CMPhotoQualityControllerNeedsImageAnalysis();
  }

  result = 0;
  *a2 = *(a1 + 592);
  return result;
}

uint64_t CMPhotoDecompressionContainerGetAlternatesCountForIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42();
  CMPhotoDecompressionContainerExternalToInternalIndex(v7, v8, v9, v10, v11, v12, v13);
  v5 = v14;
  if (!v14)
  {
    *a4 = 1;
  }

  return v5;
}

uint64_t CMPhotoDecompressionContainerGetPrimaryItemIndex(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 576);
    }
  }

  return result;
}

void CMPhotoDecompressionContainerCopyFormatDescriptionForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (*(v13 + 40))
        {
          v14 = OUTLINED_FUNCTION_2_22();
          v15(v14);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 376))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetOriginalPixelFormatForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 384))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyImageIsRGBForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 400))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyImageJPEGEncodingModeForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 408))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v1, v2, v3, v4, v5, v6, v7);
    if (!v8)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v9 + 72))
      {
        v10 = OUTLINED_FUNCTION_2_22();
        v11(v10);
      }
    }
  }
}

void CMPhotoDecompressionContainerGetThumbnailGeometryForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v4, v5, v6, v7, v8, v9, v10);
    if (!v11 && (v3 || v2 || v1))
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v12 + 424))
      {
        v13 = OUTLINED_FUNCTION_6_15();
        v14(v13);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyThumbnailBitDepthForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 432))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetThumbnailEncodedPixelFormatForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 440))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCreateThumbnailImageForIndex(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v12, v13, v14, v15, v16, v17, v18);
  if (v19)
  {
    goto LABEL_10;
  }

  if (a3 < 0)
  {
    v22 = 4294950306;
  }

  else if (a6)
  {
    if (a4 && CFDictionaryContainsKey(a4, @"DryRun"))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      v19 = FigSignalErrorAtGM();
      goto LABEL_10;
    }

    v19 = _createModifiedDecodeOptionsIfNeeded(a1, a2, a3, a4, a5, &cf);
    if (v19)
    {
LABEL_10:
      v22 = v19;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_15_12();
    v21 = *(v20 + 88);
    if (v21)
    {
      v19 = v21(a1, v24, a3, cf, a5, a6);
      goto LABEL_10;
    }

    v22 = 4294950302;
  }

  else
  {
    v22 = 0;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

void CMPhotoDecompressionContainerCopyThumbnailFormatDescriptionForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v7, v8, v9, v10, v11, v12, v13);
    if (!v14 && (v5 & 0x8000000000000000) == 0 && a5)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v15 + 416))
      {
        v16 = OUTLINED_FUNCTION_2_22();
        v17(v16);
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyThumbnailSampleBufferForIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  v5 = 4294950306;
  if (a1 && (a3 & 0x8000000000000000) == 0)
  {
    if (a5)
    {
      v7 = CMPhotoDecompressionContainerCreateTileIteratorForThumbnailImageIndexWithOptions(a1, a2, a3, a4, &cf);
      v8 = cf;
      if (!v7)
      {
        v7 = _copySampleBufferFromIterator(cf, a5);
      }

      v5 = v7;
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t CMPhotoDecompressionContainerCreateTileIteratorForThumbnailImageIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    return v15;
  }

  v16 = OUTLINED_FUNCTION_34_1();
  CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions(v16);
  if (v15)
  {
    return v15;
  }

  if (v24 <= a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    return FigSignalErrorAtGM();
  }

  v17 = _allocateTileIterator(a1, &v25);
  v18 = v25;
  if (v17)
  {
    v22 = v17;
    goto LABEL_16;
  }

  v25[3] = 0;
  v18[5] = a3;
  OUTLINED_FUNCTION_23_4();
  if (!*(v19 + 240))
  {
    v22 = 4294950302;
LABEL_10:
    CFRelease(v18);
    return v22;
  }

  v20 = OUTLINED_FUNCTION_17();
  v22 = v21(v20);
  v18 = v25;
  if (v22)
  {
LABEL_16:
    if (!v18)
    {
      return v22;
    }

    goto LABEL_10;
  }

  *a5 = v25;
  return v22;
}

void CMPhotoDecompressionContainerGetAuxiliaryImageGeometryForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_33_2();
    v2 = v1;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
    if (!v10 && (v2 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_39_1();
      if (*(v11 + 144))
      {
        OUTLINED_FUNCTION_31_2();
        v12();
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageBitDepthForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 456))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetAuxiliaryEncodedPixelFormatForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 464))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetAuxiliaryImageTypeForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9 && (v1 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v10 + 152))
      {
        v11 = OUTLINED_FUNCTION_6_15();
        v12(v11);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageCGColorSpaceForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      if (a5)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v14 + 200))
        {
          v15 = OUTLINED_FUNCTION_2_22();
          v16(v15);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    if (v2 && v1)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
      if (!v10)
      {
        OUTLINED_FUNCTION_31_2();
        CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(v11, v12, v13, v14, v15, v16, v17);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageSubTypeDataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    v5 = v4;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (!v13 && (v3 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_15_12();
      v15 = *(v14 + 160);
      if (v15)
      {
        v15(v5, v16, v3, v2, 0, v1);
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9 && (v1 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_15_12();
      if (*(v10 + 168))
      {
        v11 = OUTLINED_FUNCTION_5_17();
        v12(v11);
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryFormatInfoForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9 && (v1 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v10 + 176))
      {
        v11 = OUTLINED_FUNCTION_2_22();
        v12(v11);
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageFormatDescriptionForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
    if (!v10 && (v2 & 0x8000000000000000) == 0 && v1)
    {
      OUTLINED_FUNCTION_15_12();
      if (*(v11 + 184))
      {
        v12 = OUTLINED_FUNCTION_5_17();
        v13(v12);
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyAuxiliaryImageSampleBufferForIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  v5 = 4294950306;
  if (a1 && (a3 & 0x8000000000000000) == 0)
  {
    if (a5)
    {
      v7 = CMPhotoDecompressionContainerCreateTileIteratorForAuxiliaryImageIndexWithOptions(a1, a2, a3, a4, &cf);
      v8 = cf;
      if (!v7)
      {
        v7 = _copySampleBufferFromIterator(cf, a5);
      }

      v5 = v7;
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t CMPhotoDecompressionContainerCreateTileIteratorForAuxiliaryImageIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    return v15;
  }

  v16 = OUTLINED_FUNCTION_34_1();
  CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions(v16, v17, v18, v19);
  if (v15)
  {
    return v15;
  }

  if (v27 <= a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    return FigSignalErrorAtGM();
  }

  v20 = _allocateTileIterator(a1, &v28);
  v21 = v28;
  if (v20)
  {
    v25 = v20;
    goto LABEL_16;
  }

  v28[3] = 0;
  v21[4] = a3;
  OUTLINED_FUNCTION_23_4();
  if (!*(v22 + 240))
  {
    v25 = 4294950302;
LABEL_10:
    CFRelease(v21);
    return v25;
  }

  v23 = OUTLINED_FUNCTION_17();
  v25 = v24(v23);
  v21 = v28;
  if (v25)
  {
LABEL_16:
    if (!v21)
    {
      return v25;
    }

    goto LABEL_10;
  }

  *a5 = v28;
  return v25;
}

void CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v7, v8, v9, v10, v11, v12, v13);
    if (!v14 && (v6 & 0x8000000000000000) == 0 && v4 != 4 && v2)
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v15 + 192))
      {
        OUTLINED_FUNCTION_20_6();
        v16();
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

uint64_t CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
    if (v13 || (OUTLINED_FUNCTION_20_6(), CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex(v14), v13))
    {
      v19 = v13;
      goto LABEL_11;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      CMPhotoCreateAuxiliaryDataDictionaryFromPixelbuffer();
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696D218], 0);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696D220], 0);
        OUTLINED_FUNCTION_20_6();
        CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions(v17);
        if (!v18)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D228], 0);
LABEL_10:
          v19 = 0;
          *v5 = Mutable;
LABEL_11:
          Mutable = 0;
          goto LABEL_12;
        }

        v19 = v18;
        OUTLINED_FUNCTION_67_0();
        if (v20)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v19 = 4294950305;
    }
  }

  else
  {
    Mutable = 0;
    v19 = 4294950306;
  }

LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v19;
}

void CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v4, v5, v6, v7, v8, v9, v10);
      if (!v11)
      {
        OUTLINED_FUNCTION_13_12();
        if (*(v12 + 208))
        {
          v13 = OUTLINED_FUNCTION_2_22();
          v14(v13);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCreateOutputBufferAttributesForThumbnailIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a5)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
      if (!v12)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v13 + 216))
        {
          v14 = OUTLINED_FUNCTION_5_17();
          v15(v14);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerCreateOutputBufferAttributesForAuxiliaryImageIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a5)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
      if (!v12)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v13 + 224))
        {
          v14 = OUTLINED_FUNCTION_5_17();
          v15(v14);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyXMPForIndexWithOptions(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, CFStringRef *a6)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    return v16;
  }

  if (!a6)
  {
    return 0;
  }

  CFGetAllocator(a1);
  OUTLINED_FUNCTION_39_1();
  if (!*(v18 + 272))
  {
    return 4294950302;
  }

  v19 = v17;
  OUTLINED_FUNCTION_20_6();
  v16 = v20();
  if (v16)
  {
    return v16;
  }

  if (!a4)
  {
    v24 = 0;
    *a6 = 0;
    return v24;
  }

  if (a4 != 1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(0);
  Length = CFDataGetLength(0);
  v23 = CFStringCreateWithBytes(v19, BytePtr, Length, 0x8000100u, 0);
  if (!v23)
  {
    return 4294950305;
  }

  v24 = 0;
  *a6 = v23;
  return v24;
}

void CMPhotoDecompressionContainerGetDebugMetadataCountForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v13 + 280))
      {
        v14 = OUTLINED_FUNCTION_2_22();
        v15(v14);
      }

      else if (a4)
      {
        *a4 = 0;
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyDebugMetadataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v10 + 288))
        {
          v11 = OUTLINED_FUNCTION_5_17();
          v12(v11);
        }
      }
    }
  }
}

void CMPhotoDecompressionContainerGetCustomMetadataCountForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v13 + 296))
      {
        v14 = OUTLINED_FUNCTION_2_22();
        v15(v14);
      }

      else if (a4)
      {
        *a4 = 0;
      }
    }
  }
}

void CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v10 + 304))
        {
          v11 = OUTLINED_FUNCTION_5_17();
          v12(v11);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyGroupsDescriptionArray(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a2)
  {
    return CMPhotoQualityControllerNeedsImageAnalysis();
  }

  v2 = *(*(a1 + 32) + 328);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 4294950302;
  }
}

void CMPhotoDecompressionContainerCopyCGColorSpaceForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v2, v3, v4, v5, v6, v7, v8);
    if (!v9)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_23_4();
        if (*(v10 + 472))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCopyImagePropertiesForInternalIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  cf = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  if (!a1)
  {
    goto LABEL_109;
  }

  if (!a6)
  {
    v15 = 0;
    goto LABEL_40;
  }

  v10 = CFGetAllocator(a1);
  if (a3 != -1)
  {
    v75 = 0;
    OUTLINED_FUNCTION_15_12();
    if (!*(v11 + 256))
    {
      goto LABEL_39;
    }

    v12 = OUTLINED_FUNCTION_21_5();
    v13(v12);
    OUTLINED_FUNCTION_67_0();
    if (!v25)
    {
      v15 = v14;
      if (v14)
      {
        goto LABEL_40;
      }

      if (CFDataGetLength(v88) < v75)
      {
        fig_log_get_emitter();
        v24 = FigSignalErrorAtGM();
        goto LABEL_104;
      }

      v16 = OUTLINED_FUNCTION_17();
      Mutable = CFDataCreateMutable(v16, v17);
      CFDataAppendBytes(Mutable, "Exif", 6);
      BytePtr = CFDataGetBytePtr(v88);
      Length = CFDataGetLength(v88);
      CFDataAppendBytes(Mutable, &BytePtr[v75], Length - v75);
      v88 = Mutable;
    }
  }

  if (a4 != -1)
  {
    OUTLINED_FUNCTION_15_12();
    if (!*(v21 + 272))
    {
      goto LABEL_39;
    }

    v22 = OUTLINED_FUNCTION_21_5();
    v24 = v23(v22);
    if (v24)
    {
      v25 = v24 == -16993;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      goto LABEL_104;
    }
  }

  v26 = a1 + 32;
  if (*(*(a1 + 32) + 480))
  {
    v27 = OUTLINED_FUNCTION_21_5();
    v28(v27);
    OUTLINED_FUNCTION_19_8();
    if (v29 && v24 != 0)
    {
      goto LABEL_104;
    }
  }

  if (*(*v26 + 288))
  {
    v31 = OUTLINED_FUNCTION_21_5();
    v32(v31);
    OUTLINED_FUNCTION_19_8();
    if (v29 && v24 != 0)
    {
      goto LABEL_104;
    }
  }

  v73 = 0;
  v74 = 0;
  v72 = 0;
  if (!*(*v26 + 56))
  {
    goto LABEL_39;
  }

  v34 = OUTLINED_FUNCTION_21_5();
  v24 = v35(v34);
  if (v24)
  {
    goto LABEL_104;
  }

  v71 = 0;
  if (*(*v26 + 64))
  {
    v36 = OUTLINED_FUNCTION_21_5();
    if (!v37(v36) && !CMPhotoCFArrayGetSizeAtIndex(v82, 0, &v71))
    {
      v15 = 4294950304;
      goto LABEL_40;
    }
  }

  v70[0] = v74;
  v70[1] = v73;
  v24 = CMPhotoCreateImagePropertiesFromData(v10, v70, &v71, v88, v87, v86, 0, 0, &v80);
  if (v24)
  {
    goto LABEL_104;
  }

  if (!*(*v26 + 472))
  {
LABEL_39:
    v15 = 4294950302;
    goto LABEL_40;
  }

  v38 = OUTLINED_FUNCTION_21_5();
  v39(v38);
  OUTLINED_FUNCTION_67_0();
  if (v25)
  {
    cf = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!cf)
    {
      v15 = 4294950305;
      goto LABEL_42;
    }
  }

  else
  {
    v15 = v40;
    if (v40)
    {
      goto LABEL_40;
    }
  }

  v42 = CGColorSpaceCopyICCProfileASCIIDescriptionString();
  if (v42)
  {
    v43 = v42;
    CFDictionarySetValue(v80, *MEMORY[0x1E696DEF0], v42);
    CFRelease(v43);
  }

  if (v85)
  {
    CFDictionarySetValue(v80, @"iOS_Debug", v85);
  }

  v44 = *(a1 + 544);
  if (v44 == 3)
  {
    if (*(*v26 + 320))
    {
      v58 = OUTLINED_FUNCTION_21_5();
      v59(v58);
      OUTLINED_FUNCTION_19_8();
      if (v29)
      {
        v15 = v60;
        if (v60)
        {
          goto LABEL_40;
        }
      }
    }

    v61 = v83;
    if (v83)
    {
      v62 = v80;
      if (v80)
      {
        v63 = CFGetAllocator(v80);
        v24 = CMPhotoMergeDictionaryEntries(v63, v62, v61, 1u);
        if (v24)
        {
          goto LABEL_104;
        }

        goto LABEL_89;
      }

      goto LABEL_109;
    }

LABEL_89:
    if (CFDictionaryGetValue(v80, *MEMORY[0x1E696DF28]))
    {
      v24 = _createMutableTIFFProperties(v10, v80, &v79);
      if (v24)
      {
        goto LABEL_104;
      }

      v64 = v79;
    }

    else
    {
      v64 = 0;
    }

    v75 = v72;
    v65 = *MEMORY[0x1E696DE78];
    IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
    v67 = MEMORY[0x1E696DF58];
    if (!IntIfPresent && v64)
    {
      CMPhotoCFDictionaryGetIntIfPresent();
    }

    v24 = CMPhotoCFDictionarySetInt(v80, v65, v72);
    if (v24)
    {
      goto LABEL_104;
    }

    if (v64)
    {
      v24 = CMPhotoCFDictionarySetInt(v64, *v67, v72);
      if (v24)
      {
        goto LABEL_104;
      }
    }

    if (!*(*v26 + 336) || (v68 = OUTLINED_FUNCTION_21_5(), v69(v68)))
    {
LABEL_105:
      v15 = 0;
      *a6 = v80;
      v80 = 0;
      goto LABEL_40;
    }

    if (!v78)
    {
      v76 = v73;
      v77 = v74;
    }

    if (v64)
    {
LABEL_102:
      v24 = CMPhotoCFDictionarySetInt64(v64, *MEMORY[0x1E696DF78], v77);
      if (v24)
      {
        goto LABEL_104;
      }

      v24 = CMPhotoCFDictionarySetInt64(v64, *MEMORY[0x1E696DF70], v76);
      if (v24)
      {
        goto LABEL_104;
      }

      goto LABEL_105;
    }

    v24 = _createMutableTIFFProperties(v10, v80, &v79);
    if (!v24)
    {
      v64 = v79;
      goto LABEL_102;
    }

LABEL_104:
    v15 = v24;
    goto LABEL_40;
  }

  if (v44)
  {
    goto LABEL_89;
  }

  if (*(*v26 + 312))
  {
    v45 = OUTLINED_FUNCTION_21_5();
    v46(v45);
    OUTLINED_FUNCTION_19_8();
    if (v29)
    {
      v15 = v47;
      if (v47)
      {
        goto LABEL_40;
      }
    }
  }

  v48 = v84;
  if (!v84)
  {
    goto LABEL_89;
  }

  v49 = v80;
  if (!v80)
  {
LABEL_109:
    v15 = 4294950306;
    goto LABEL_40;
  }

  v50 = OUTLINED_FUNCTION_17();
  v54 = CFDictionaryCreateMutable(v50, v51, v52, v53);
  if (v54)
  {
    v55 = v54;
    Value = CFDictionaryGetValue(v48, @"CameraModel");
    if (Value)
    {
      CFDictionarySetValue(v55, @"CameraModel", Value);
    }

    v57 = CFDictionaryGetValue(v48, @"CameraExtrinsics");
    if (v57)
    {
      CFDictionarySetValue(v55, @"CameraExtrinsics", v57);
    }

    if (CFDictionaryGetCount(v55) >= 1)
    {
      CFDictionarySetValue(v49, *MEMORY[0x1E696DD40], v55);
    }

    CFRelease(v55);
    goto LABEL_89;
  }

  v15 = 4294950305;
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_42:
  if (v82)
  {
    CFRelease(v82);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  return v15;
}

uint64_t _createMutableTIFFProperties(int a1, CFDictionaryRef theDict, void *a3)
{
  v5 = *MEMORY[0x1E696DF28];
  CFDictionaryGetValue(theDict, *MEMORY[0x1E696DF28]);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v7 = MutableCopy;
  CFDictionarySetValue(theDict, v5, MutableCopy);
  result = 0;
  *a3 = v7;
  return result;
}

void CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    v2 = v1;
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v3, v4, v5, v6, v7, v8, v9);
    if (!v10)
    {
      if (v2)
      {
        v11 = OUTLINED_FUNCTION_6_15();
        CMPhotoDecompressionContainerCopyImagePropertiesForInternalIndex(v11, v12, v13, v14, v15, v16);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

uint64_t CMPhotoDecompressionContainerDecodeThumbnailForIndexAsyncF(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_40_2();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v11, v12, v13, v14, v15, v16, v17);
  if (v18)
  {
    goto LABEL_10;
  }

  v19 = 4294950306;
  if ((v6 & 0x8000000000000000) == 0 && v1)
  {
    if (v4 && CFDictionaryContainsKey(v4, @"DryRun"))
    {
      fig_log_get_emitter();
      v18 = FigSignalErrorAtGM();
      goto LABEL_10;
    }

    v18 = _createModifiedDecodeOptionsIfNeeded(v10, v8, v6, v4, v2, &cf);
    if (v18)
    {
LABEL_10:
      v19 = v18;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_39_1();
    if (*(v20 + 104))
    {
      OUTLINED_FUNCTION_41_2();
      v18 = v21();
      goto LABEL_10;
    }

    v19 = 4294950302;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}