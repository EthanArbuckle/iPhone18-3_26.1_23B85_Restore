UInt8 *___compressAllTiles_block_invoke_3(UInt8 *result)
{
  if (!*(*(result + 4) + 8))
  {
    v1 = result;
    Length = CFDataGetLength(*(result + 5));
    v3 = *(v1 + 5);
    BytePtr = CFDataGetBytePtr(**(v1 + 4));
    v5 = CFDataGetLength(**(v1 + 4));
    CFDataAppendBytes(v3, BytePtr, v5);
    v6 = **(v1 + 4);
    if (v6)
    {
      CFRelease(v6);
      **(v1 + 4) = 0;
    }

    v7 = CFDataGetLength(*(v1 + 5));
    result = CFDataGetMutableBytePtr(*(v1 + 5));
    v8 = bswap32(Length);
    if (v1[60])
    {
      v9 = v8;
    }

    else
    {
      v9 = Length;
    }

    *&result[4 * *(v1 + 13) + *(v1 + 12)] = v9;
    v10 = v7 - Length;
    v11 = bswap32(v7 - Length);
    if (v1[60])
    {
      v10 = v11;
    }

    *&result[4 * *(v1 + 13) + *(v1 + 14)] = v10;
  }

  return result;
}

uint64_t _jxlOutputCallback_cold_1_0()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _jxlOutputCallback_cold_2_0()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoDecompressionContainerJFIFTranscode(void *a1, const __CFDictionary *a2, const __CFNumber *a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v9 = CMPhotoDecompressionContainerCopyTranslatedOptionsForAlternates(a1, a3, a2, 1, &cf);
  if (v9)
  {
    goto LABEL_7;
  }

  v13 = -1;
  CMPhotoDecompressionContainerExternalToInternalIndex(a1, a3, -1, cf, &v13, 0, 0);
  if (v9)
  {
    goto LABEL_7;
  }

  if (a4 < 0)
  {
    v11 = 4294950306;
  }

  else
  {
    v10 = *(a1[4] + 232);
    if (v10)
    {
      v9 = v10(a1, cf, v13, a4, a5);
LABEL_7:
      v11 = v9;
      goto LABEL_9;
    }

    v11 = 4294950302;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t CMPhotoDecompressionContainerFlexibleTranscode(const void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (a3 > 1)
  {
    return 4294950302;
  }

  if (!a5)
  {
    return 4294950306;
  }

  v51[0] = 0;
  allocator = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  v49 = a3;
  v62 = 0;
  ImageCountWithOptions = CMPhotoDecompressionContainerGetImageCountWithOptions(a1, 0, &v62);
  if (ImageCountWithOptions)
  {
    v26 = ImageCountWithOptions;
    v12 = 0;
  }

  else
  {
    v12 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (v12)
    {
      if (v62 < 1)
      {
LABEL_18:
        v25 = v10;
        if (!CMPhotoDecompressionContainerCopyGroupsDescriptionArray(a1, v51))
        {
          FigCFDictionarySetValue();
        }

        FigCFDictionarySetValue();
        v26 = 0;
        goto LABEL_21;
      }

      v13 = 0;
      while (1)
      {
        v61 = 0;
        v14 = OUTLINED_FUNCTION_6_19();
        AlternatesCountForIndex = CMPhotoDecompressionContainerGetAlternatesCountForIndex(v14, v15, 0, v16);
        if (AlternatesCountForIndex)
        {
          break;
        }

        v18 = OUTLINED_FUNCTION_0_29();
        AlternatesCountForIndex = _createTranscodePayload(v18, v19, v20, v21, -1, -1, v22);
        if (AlternatesCountForIndex)
        {
          break;
        }

        CFArrayAppendValue(v12, cf);
        if (cf)
        {
          CFRelease(cf);
        }

        v23 = OUTLINED_FUNCTION_6_19();
        AlternatesCountForIndex = _populateTranscodeDescriptionForMainImage(v23, v24, -1);
        if (AlternatesCountForIndex)
        {
          break;
        }

        if (++v13 >= v62)
        {
          goto LABEL_18;
        }
      }

      v26 = AlternatesCountForIndex;
    }

    else
    {
      v26 = 4294950305;
    }
  }

  CFRelease(v10);
  v25 = 0;
  if (v12)
  {
LABEL_21:
    CFRelease(v12);
  }

  if (v51[0])
  {
    CFRelease(v51[0]);
  }

  if (!v26)
  {
    if (a4)
    {
      v27 = OUTLINED_FUNCTION_27();
      v29 = v28(v27);
      if (v29)
      {
        v26 = v29;
        if (!v25)
        {
          return v26;
        }

        goto LABEL_52;
      }
    }

    v30 = &v62;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2000000000;
    v65 = 0;
    v61 = 0;
    if (v25)
    {
      v31 = CFGetTypeID(v25);
      if (v31 == CFDictionaryGetTypeID())
      {
        v32 = CFGetAllocator(a1);
        v33 = CMPhotoCompressionSessionCreate(v32, 0, &v61);
        if (OUTLINED_FUNCTION_2_27(v33))
        {
          v35 = 0;
          goto LABEL_45;
        }

        v34 = CFDictionaryCreateMutable(v32, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v35 = v34;
        if (!v34)
        {
          v30 = v63;
          v48 = -16991;
          goto LABEL_69;
        }

        CMPhotoCFDictionarySetSize(v34, @"ContainerFormat", a3);
        if (OUTLINED_FUNCTION_2_27(v36))
        {
          goto LABEL_45;
        }

        CMPhotoCFDictionarySetSize(v35, @"BackingType", 1);
        if (OUTLINED_FUNCTION_2_27(v37))
        {
          goto LABEL_45;
        }

        v38 = CMPhotoCompressionSessionOpenEmptyContainer(v61, v35);
        if (OUTLINED_FUNCTION_2_27(v38))
        {
          goto LABEL_45;
        }

        Value = CFDictionaryGetValue(v25, @"MainImageList");
        if (Value)
        {
          v40 = CFGetTypeID(Value);
          if (v40 == CFArrayGetTypeID())
          {
            if (CFDictionaryContainsKey(v25, @"GroupsDescriptionList"))
            {
              v41 = *MEMORY[0x1E695E480];
              v42 = CFDictionaryGetValue(v25, @"GroupsDescriptionList");
              MutableCopy = CFArrayCreateMutableCopy(v41, 0, v42);
            }

            else
            {
              MutableCopy = 0;
            }

            cf = MEMORY[0x1E69E9820];
            v53 = *"";
            v54 = ___writeTranscodeDescriptionToData_block_invoke;
            v55 = &unk_1E77A3150;
            v56 = &v62;
            v57 = a1;
            v60 = v49;
            v58 = v61;
            v59 = MutableCopy;
            FigCFArrayApplyBlock();
            OUTLINED_FUNCTION_7_19();
            if (!v44)
            {
              if (MutableCopy)
              {
                v51[0] = MEMORY[0x1E69E9820];
                v51[1] = *"";
                v51[2] = ___writeTranscodeDescriptionToData_block_invoke_2;
                v51[3] = &unk_1E77A3178;
                v51[4] = &v62;
                v51[5] = v61;
                FigCFArrayApplyBlock();
                OUTLINED_FUNCTION_7_19();
                if (v45)
                {
                  goto LABEL_44;
                }
              }

              v46 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(v61);
              OUTLINED_FUNCTION_2_27(v46);
            }

            if (!MutableCopy)
            {
LABEL_45:
              if (v61)
              {
                CFRelease(v61);
              }

              if (v35)
              {
                CFRelease(v35);
              }

              v26 = *(v63 + 6);
              _Block_object_dispose(&v62, 8);
              if (!v26)
              {
                *a5 = 0;
              }

              goto LABEL_51;
            }

LABEL_44:
            CFRelease(MutableCopy);
            goto LABEL_45;
          }
        }

        v30 = v63;
LABEL_66:
        v48 = -16990;
LABEL_69:
        *(v30 + 6) = v48;
        goto LABEL_45;
      }

      v30 = v63;
    }

    v35 = 0;
    goto LABEL_66;
  }

LABEL_51:
  if (v25)
  {
LABEL_52:
    CFRelease(v25);
  }

  return v26;
}

uint64_t _createTranscodePayload(const void *a1, CFAllocatorRef allocator, int a3, uint64_t a4, uint64_t a5, uint64_t a6, CFMutableDictionaryRef *a7)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v15 = Mutable;
  v16 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  FigCFDictionarySetValue();
  CFRelease(v17);
  v18 = CMPhotoCFDictionarySetInt(v15, @"EntryType", 1);
  if (v18)
  {
    goto LABEL_21;
  }

  CMPhotoCFDictionarySetSize(v17, @"MainIndex", a4);
  if (v18)
  {
    goto LABEL_21;
  }

  if (a5 != -1)
  {
    CMPhotoCFDictionarySetSize(v17, @"AlternateIndex", a5);
    if (v18)
    {
      goto LABEL_21;
    }
  }

  if (a6 != -1)
  {
    CMPhotoCFDictionarySetSize(v17, @"SubIndex", a6);
    if (v18)
    {
      goto LABEL_21;
    }
  }

  CMPhotoCFDictionarySetInt(v17, @"Type", a3);
  if (a3 != 3)
  {
    goto LABEL_14;
  }

  v19 = CFGetAllocator(a1);
  v20 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v20)
  {
LABEL_22:
    v23 = 4294950305;
    goto LABEL_16;
  }

  v21 = v20;
  v18 = FigCFDictionarySetCFIndex();
  if (v18)
  {
LABEL_21:
    v23 = v18;
    goto LABEL_16;
  }

  CMPhotoDecompressionContainerCopyAuxiliaryImageTypeURNForIndexWithOptions(a1, a4, a6, v21, &cf);
  v23 = v22;
  CFRelease(v21);
  if (!v23)
  {
    FigCFDictionarySetValue();
LABEL_14:
    v23 = 0;
    if (a7)
    {
      *a7 = v15;
      v15 = 0;
    }
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v23;
}

uint64_t _createTranscodePayloadArray(const void *a1, CFAllocatorRef allocator, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __CFArray **a7)
{
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v15 = Mutable;
  if (a4 >= 1)
  {
    v16 = 0;
    while (1)
    {
      value = 0;
      TranscodePayload = _createTranscodePayload(a1, allocator, a3, a5, a6, v16, &value);
      if (TranscodePayload)
      {
        break;
      }

      CFArrayAppendValue(v15, value);
      if (value)
      {
        CFRelease(value);
      }

      if (a4 == ++v16)
      {
        goto LABEL_8;
      }
    }

    v18 = TranscodePayload;
    goto LABEL_11;
  }

LABEL_8:
  v18 = 0;
  if (!a7)
  {
LABEL_11:
    CFRelease(v15);
    return v18;
  }

  *a7 = v15;
  return v18;
}

uint64_t _writeMainImageToDestination(const void *a1, uint64_t a2, int a3, const void *a4, void *a5)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  BufferFromImageDescriptionEntry = _createBufferFromImageDescriptionEntry(a1, a4, a3, 0, 1, &v34, &v32, 0, 0, 0);
  if (OUTLINED_FUNCTION_2_27(BufferFromImageDescriptionEntry))
  {
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a4, @"EncodeOptions");
  v8 = CFGetAllocator(a1);
  v9 = CMPhotoMergeDictionaryEntries(v8, v32, Value, 1u);
  if (OUTLINED_FUNCTION_2_27(v9))
  {
    goto LABEL_24;
  }

  v10 = CFDictionaryGetValue(a4, @"HEIFItemPropertiesList");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 != CFArrayGetTypeID() || CFArrayGetCount(v11) != 1)
    {
      goto LABEL_31;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
    EncodeOptionsWithHEIFItemProperties = _createEncodeOptionsWithHEIFItemProperties(a1, ValueAtIndex, v32);
    if (OUTLINED_FUNCTION_2_27(EncodeOptionsWithHEIFItemProperties))
    {
      goto LABEL_24;
    }

    v32 = v33;
    v33 = 0;
  }

  v15 = CMPhotoCompressionSessionAddImage(a2);
  if (OUTLINED_FUNCTION_2_27(v15))
  {
    goto LABEL_24;
  }

  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  FigCFDictionarySetInt();
  v16 = CFDictionaryGetValue(a4, @"ThumbnailImageList");
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 != CFArrayGetTypeID())
    {
      goto LABEL_31;
    }

    FigCFArrayApplyBlock();
    OUTLINED_FUNCTION_7_19();
    if (v18)
    {
      goto LABEL_24;
    }
  }

  v19 = CFDictionaryGetValue(a4, @"AuxiliaryImageList");
  if (v19)
  {
    v20 = CFGetTypeID(v19);
    if (v20 == CFArrayGetTypeID())
    {
      FigCFArrayApplyBlock();
      OUTLINED_FUNCTION_7_19();
      if (v21)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_31:
    *(v36 + 6) = -16990;
    goto LABEL_24;
  }

LABEL_17:
  v22 = &off_1F1916AD0;
  v23 = 4;
  while (1)
  {
    v24 = CFDictionaryGetValue(a4, *(v22 - 2));
    if (v24)
    {
      v25 = CFGetTypeID(v24);
      if (v25 != CFArrayGetTypeID())
      {
        goto LABEL_31;
      }

      FigCFArrayApplyBlock();
      OUTLINED_FUNCTION_7_19();
      if (v26)
      {
        break;
      }
    }

    v22 += 3;
    if (!--v23)
    {
      if (a5)
      {
        *a5 = -1;
      }

      break;
    }
  }

LABEL_24:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v27 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  return v27;
}

uint64_t _writePictureHandleToGroup(uint64_t result, uint64_t a2)
{
  valuePtr = a2;
  if (result)
  {
    if (CFArrayGetCount(result) == 1)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex && (v3 = CFGetTypeID(ValueAtIndex), v3 == CFDictionaryGetTypeID()))
      {
        CMPhotoCFDictionaryGetIntIfPresent();
        return 0;
      }

      else
      {
        return 4294950306;
      }
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

uint64_t _createBufferFromImageDescriptionEntry(const void *a1, CFTypeRef cf, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v17 = 0;
  cfa = 0;
  v16 = 0;
  if (!cf || (v11 = CFGetTypeID(cf), v11 != CFDictionaryGetTypeID()))
  {
    MutableCopy = 0;
LABEL_6:
    v13 = 4294950306;
    goto LABEL_7;
  }

  CFGetAllocator(a1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v15 = 0;
    if (CMPhotoCFDictionaryGetIntIfPresent())
    {
      FigCFDictionaryGetValue();
    }

    goto LABEL_6;
  }

  v13 = 4294950305;
LABEL_7:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v13;
}

uint64_t _createEncodeOptionsWithHEIFItemProperties(int a1, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (!a3 || (v5 = CFGetTypeID(a3), v5 == CFDictionaryGetTypeID()))
      {
        if (CMPhotoCFDictionaryGetIntIfPresent())
        {
          FigCFDictionaryGetValue();
        }
      }
    }
  }

  return 4294950306;
}

uint64_t ___writeMainImageToDestination_block_invoke_3_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ___writeMainImageToDestination_block_invoke_3_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGDecodeSessionCreateCVPixelBufferFromData(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return 4294951220;
    }

    else
    {

      return fjds_createPixelBufferFromJPEGData(a1, 0, a2, a3, a4, 0);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM();
  }
}

uint64_t fjds_createPixelBufferFromJPEGData(uint64_t a1, uint64_t a2, const __CFData *AllocSize, uint64_t a4, uint64_t a5, int a6)
{
  v12 = v7;
  IntValue_0 = &v109;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  v109 = 0u;
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v99 = 0;
  dsema = 0;
  v101 = 0;
  length = 0;
  v98 = 0;
  v95 = 0;
  pixelBuffer = 0;
  if (fjds_getRequestStatus(a1, a2))
  {
    OUTLINED_FUNCTION_3_25();
    v25 = 0;
    OUTLINED_FUNCTION_6_20();
    goto LABEL_174;
  }

  if (a4)
  {
    FourCCValue = _getFourCCValue(a4);
    if (FourCCValue != 875704422 && FourCCValue != 875704438 && FourCCValue != 1111970369 && FourCCValue != 1278555701)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_11();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_3_25();
      v25 = 0;
LABEL_24:
      OUTLINED_FUNCTION_6_20();
LABEL_25:
      LOBYTE(a4) = 1;
LABEL_119:
      LOBYTE(a5) = 1;
LABEL_120:
      IntValue_0 = &v109;
      goto LABEL_149;
    }

    v6 = FourCCValue;
    v86 = a6;
    IntValue_0 = _getIntValue_0(a4, @"OutputBytesPerRowAlignment");
    LODWORD(cf) = OUTLINED_FUNCTION_7_20(IntValue_0, @"ApplyTransform");
    v20 = _getIntValue_0(a4, @"MaxPixelSize");
    v21 = v20;
    v85 = a5;
    if (v20)
    {
      v20 = OUTLINED_FUNCTION_7_20(v20, @"RelaxMaxPixelSize");
      v12 = v20;
    }

    else
    {
      v12 = 0;
    }

    v23 = OUTLINED_FUNCTION_7_20(v20, @"AllowNonExactOutputDimensions");
    v87 = v23 == 0;
    v88 = OUTLINED_FUNCTION_7_20(v23, @"ForceHighSpeedDecode");
    v92 = _getIntValue_0(a4, @"KTraceArg");
    Value = CFDictionaryGetValue(a4, @"SourceIOSurface");
    v25 = Value;
    buffer = Value;
    if (Value)
    {
      AllocSize = CFGetTypeID(Value);
      if (AllocSize != IOSurfaceGetTypeID())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_11();
        FigSignalErrorAtGM();
        OUTLINED_FUNCTION_3_25();
        goto LABEL_24;
      }

      AllocSize = IOSurfaceGetAllocSize(v25);
      CMPhotoCFDictionaryGetSizeIfPresent(a4, @"SourceIOSurfaceSize", &length);
      if (length)
      {
        if (length > AllocSize)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_11();
          FigSignalErrorAtGM();
          OUTLINED_FUNCTION_3_25();
          OUTLINED_FUNCTION_6_20();
          OUTLINED_FUNCTION_5_20();
          goto LABEL_149;
        }
      }

      else
      {
        length = AllocSize;
      }

      a5 = v6;
      v25 = buffer;
      if (IOSurfaceLock(buffer, 1u, 0))
      {
        OUTLINED_FUNCTION_3_25();
        OUTLINED_FUNCTION_6_20();
        LOBYTE(a5) = 1;
        IntValue_0 = &v109;
        LOBYTE(a4) = 1;
        goto LABEL_149;
      }

      v26 = *MEMORY[0x1E695E480];
      BaseAddress = IOSurfaceGetBaseAddress(buffer);
      v28 = CFDataCreateWithBytesNoCopy(v26, BaseAddress, length, *MEMORY[0x1E695E498]);
      v90 = 1;
      if (!v28)
      {
        LODWORD(AllocSize) = 0;
        cf = 0;
        v6 = 4294951225;
        OUTLINED_FUNCTION_5_20();
        v12 = 1;
        goto LABEL_149;
      }

      v25 = v28;
      AllocSize = v28;
    }

    else
    {
      a5 = v6;
      v90 = 0;
    }

    v89 = IntValue_0;
    v29 = CFDictionaryGetValue(a4, @"ProvidedPixelBuffer");
    if (v29)
    {
      v30 = v29;
      TypeID = CVPixelBufferGetTypeID();
      if (TypeID == CFGetTypeID(v30))
      {
        pixelBuffer = CFRetain(v30);
      }
    }

    v6 = a5;
    v22 = cf;
  }

  else
  {
    v86 = a6;
    v85 = a5;
    v92 = 0;
    buffer = 0;
    v25 = 0;
    v90 = 0;
    v88 = 0;
    v22 = 0;
    v12 = 0;
    v21 = 0;
    v89 = 0;
    v87 = 1;
    v6 = 875704422;
  }

  v32 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  v33 = JPEGParseJPEGInfo(AllocSize, &v109, 1, *(a1 + 180) != 0);
  if (*v32 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_4();
  }

  cf = v25;
  if (v33)
  {
    IntValue_0 = &v109;
    v25 = buffer;
    v12 = v90;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_3_25();
LABEL_174:
    LOBYTE(a4) = 1;
    goto LABEL_147;
  }

  if (BYTE4(v112))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
LABEL_177:
    RequestStatus = FigSignalErrorAtGM();
    goto LABEL_178;
  }

  v34 = 1;
  v94 = 1;
  if (JPEGParseExifOrientation(AllocSize, &v94))
  {
    v94 = 1;
  }

  else
  {
    v34 = v94;
  }

  JPEGCalculateOutputDimensions(v109, DWORD1(v109), v21, v12, v22, v34, &v107, &v105, &v103, &v102, 0);
  if (v102)
  {
    v35 = 1;
  }

  else
  {
    v35 = v107 != v105 || v108 != v106;
  }

  v37 = 875704422;
  v38 = JPEGDeviceInterface_supportsDecodeSize(v109, DWORD1(v109), v110, v107, v108);
  if (!v38)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    goto LABEL_177;
  }

  v39 = v38;
  if (v6 == 1111970369)
  {
    v40 = v6;
    v41 = v110;
    v42 = JPEGDeviceInterface_supportsAppleInterchangeFormats();
    if (v42)
    {
      v43 = 1111970369;
    }

    else
    {
      v43 = 875704422;
    }

    if (v42 != 0 && v35)
    {
      if (v41 == 2)
      {
        v44 = 875836518;
      }

      else
      {
        v44 = 875704422;
      }

      if (v41 == 1)
      {
        v37 = 2037741158;
      }

      else
      {
        v37 = v44;
      }
    }

    else
    {
      v37 = v43;
    }

    v6 = v40;
  }

  v84 = v6;
  v45 = v6 != v37 || v35;
  if (pixelBuffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v47 = PixelFormatType == v37 ? v39 : -16990;
    v6 = (v6 != v37) | v35 ? 4294950194 : v47;
    if (v45 || PixelFormatType != v37)
    {
      goto LABEL_73;
    }
  }

  if (v89)
  {
    v48 = 4;
    v49 = CMPhotoLeastCommonMultiple(4, v89);
    if (v45)
    {
      v50 = v49;
    }

    else
    {
      v48 = v49;
      v50 = 0;
    }

    v83 = v50;
    v51 = MEMORY[0x1E695FF58];
  }

  else
  {
    v51 = MEMORY[0x1E695FF58];
    if (v45)
    {
      v83 = 0;
      v48 = 4;
    }

    else
    {
      v48 = CMPhotoLeastCommonMultiple(4, 16);
      v83 = 0;
    }
  }

  RequestStatus = fjds_getRequestStatus(a1, a2);
  if (RequestStatus)
  {
LABEL_178:
    v6 = RequestStatus;
LABEL_73:
    LODWORD(AllocSize) = 0;
    LOBYTE(a4) = 1;
    LOBYTE(a5) = 1;
LABEL_95:
    IntValue_0 = &v109;
    v25 = buffer;
    v12 = v90;
    goto LABEL_149;
  }

  dispatch_semaphore_wait(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  if (buffer && (BYTE5(v112) & 1) != 0)
  {
    v98 = CFRetain(buffer);
  }

  else
  {
    v53 = CFDataGetLength(AllocSize);
    v54 = 2;
    if (BYTE5(v112))
    {
      v54 = 0;
    }

    v55 = v54 + v53;
    if (*v51 == 1)
    {
      OUTLINED_FUNCTION_1_25();
      OUTLINED_FUNCTION_4();
    }

    v56 = *(a1 + 200);
    LOBYTE(a5) = 1;
    if (v56 == @"SurfacePoolOneShot")
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }

    if (CMPhotoSurfacePoolCreateMemorySurface(v56, v55, v57, &v98))
    {
      OUTLINED_FUNCTION_3_25();
      LOBYTE(a4) = 0;
      goto LABEL_95;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_1_25();
      OUTLINED_FUNCTION_4();
    }

    IOSurfaceLock(v98, 0, 0);
    v58 = IOSurfaceGetBaseAddress(v98);
    BytePtr = CFDataGetBytePtr(AllocSize);
    v60 = CFDataGetLength(AllocSize);
    memcpy(v58, BytePtr, v60);
    if ((BYTE5(v112) & 1) == 0)
    {
      *&v58[v55 - 2] = -9729;
    }

    IOSurfaceUnlock(v98, 0, 0);
    v51 = MEMORY[0x1E695FF58];
  }

  if (*v51 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_4();
  }

  if (pixelBuffer)
  {
    v6 = 0;
  }

  else
  {
    v61 = v107;
    v62 = v108;
    v63 = DWORD2(v109);
    v64 = HIDWORD(v109);
    v65 = *(a1 + 200);
    if (v65 == @"SurfacePoolOneShot")
    {
      if (v48 <= 1)
      {
        v48 = 1;
      }

      v63 = CMPhotoLeastCommonMultiple(DWORD2(v109), v48);
      v65 = *(a1 + 200);
    }

    v6 = CMPhotoSurfacePoolCreatePixelBuffer(v65, v37, v61, v62, v87, v63, v64, 0, v48, 0, &pixelBuffer);
    v51 = MEMORY[0x1E695FF58];
  }

  v25 = buffer;
  v12 = v90;
  if (*v51 == 1)
  {
    OUTLINED_FUNCTION_1_25();
    OUTLINED_FUNCTION_4();
  }

  if (v6)
  {
    goto LABEL_180;
  }

  v66 = fjds_getRequestStatus(a1, a2);
  if (v66)
  {
    v6 = v66;
    goto LABEL_180;
  }

  dispatch_semaphore_wait(*(a1 + 152), 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock((a1 + 144));
  if (CFArrayGetCount(*(a1 + 136)) <= 0)
  {
    os_unfair_lock_unlock((a1 + 144));
    dispatch_semaphore_signal(*(a1 + 152));
    LODWORD(AllocSize) = 0;
    LOBYTE(a4) = 0;
    v6 = 4294951226;
    goto LABEL_119;
  }

  LODWORD(AllocSize) = CFArrayGetValueAtIndex(*(a1 + 136), 0);
  CFArrayRemoveValueAtIndex(*(a1 + 136), 0);
  os_unfair_lock_unlock((a1 + 144));
  if (!v86)
  {
    v68 = v98;
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    v70 = JPEGDecompressSurface(AllocSize, 0, v68, 0, IOSurface, &v109, v88 != 0, v92, v107, v108, 0, 0);
    if (!v70)
    {
      fjds_enqueueDriverConnection(a1, AllocSize);
      goto LABEL_127;
    }

    goto LABEL_184;
  }

  LODWORD(v101) = v92;
  os_unfair_lock_lock((a1 + 176));
  v67 = *(a1 + 168);
  if (v67)
  {
    a4 = *v67;
    *(a1 + 168) = v67[1];
    free(v67);
  }

  else
  {
    a4 = dispatch_semaphore_create(0);
  }

  os_unfair_lock_unlock((a1 + 176));
  dsema = a4;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    v6 = FigSignalErrorAtGM();
    goto LABEL_119;
  }

  v71 = v98;
  v72 = CVPixelBufferGetIOSurface(pixelBuffer);
  *(&v82 + 1) = &v99;
  *&v82 = _asyncDecodeCompleteCallback;
  v70 = JPEGDecompressSurfaceAsync(AllocSize, v71, v72, &v109, v88 != 0, v92, v107, v108, v82, 0);
  if (v70)
  {
LABEL_184:
    v6 = v70;
    goto LABEL_185;
  }

  fjds_enqueueDriverConnection(a1, AllocSize);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v73 = dsema;
  os_unfair_lock_lock((a1 + 176));
  v74 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  v75 = *(a1 + 168);
  *v74 = v73;
  v74[1] = v75;
  *(a1 + 168) = v74;
  os_unfair_lock_unlock((a1 + 176));
  v6 = v99;
  if (v99)
  {
LABEL_180:
    LODWORD(AllocSize) = 0;
LABEL_185:
    LOBYTE(a4) = 0;
    goto LABEL_119;
  }

LABEL_127:
  v76 = v98;
  if (v98 != buffer)
  {
    IOSurfaceDecrementUseCount(v98);
    v76 = v98;
  }

  if (v76)
  {
    CFRelease(v76);
    v98 = 0;
  }

  dispatch_semaphore_signal(*(a1 + 80));
  CMPhotoAddDefault601709MatrixToBufferIfAllowed(pixelBuffer, 1, 0);
  v77 = fjds_getRequestStatus(a1, a2);
  v6 = v77;
  if (v45)
  {
    if (!v77)
    {
      dispatch_semaphore_wait(*(a1 + 88), 0xFFFFFFFFFFFFFFFFLL);
      if (v102)
      {
        v78 = v94;
      }

      else
      {
        v78 = 1;
      }

      LOBYTE(a4) = 1;
      if (CMPhotoScaleAndRotateSessionTransformForSize(*(a1 + 208), pixelBuffer, 1, v78, v84, 0, 0, v87, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v103, v104, v83, v88, &v95))
      {
        OUTLINED_FUNCTION_3_25();
        LOBYTE(a5) = 0;
        goto LABEL_120;
      }

      IntValue_0 = &v109;
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
        pixelBuffer = 0;
      }

      dispatch_semaphore_signal(*(a1 + 88));
      if (fjds_getRequestStatus(a1, a2))
      {
        OUTLINED_FUNCTION_3_25();
        goto LABEL_147;
      }

      v79 = v95;
      *v85 = v95;
      v95 = 0;
      goto LABEL_143;
    }

LABEL_186:
    LODWORD(AllocSize) = 0;
    goto LABEL_25;
  }

  if (v77)
  {
    goto LABEL_186;
  }

  v79 = pixelBuffer;
  *v85 = pixelBuffer;
  pixelBuffer = 0;
  IntValue_0 = &v109;
LABEL_143:
  LODWORD(AllocSize) = 0;
  LOBYTE(a4) = 1;
  if (*(a1 + 180) && *(&v111 + 4) && v79)
  {
    CVBufferSetAttachment(v79, *MEMORY[0x1E6965CE8], *(&v111 + 4), kCVAttachmentMode_ShouldPropagate);
    LODWORD(AllocSize) = 0;
    v6 = 0;
LABEL_147:
    LOBYTE(a5) = 1;
    goto LABEL_149;
  }

  LOBYTE(a5) = 1;
  v6 = 0;
LABEL_149:
  v80 = *(IntValue_0 + 36);
  if (v80)
  {
    CFRelease(v80);
  }

  if (AllocSize)
  {
    fjds_enqueueDriverConnection(a1, AllocSize);
  }

  if (v98 && v98 != v25)
  {
    IOSurfaceDecrementUseCount(v98);
  }

  if (v25 && v12)
  {
    IOSurfaceUnlock(v25, 1u, 0);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((a4 & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 80));
  }

  if ((a5 & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 88));
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  return v6;
}

uint64_t CMPhotoJPEGDecodeSessionCreateCGImageFromData(_BYTE *a1, const __CFData *a2, const __CFDictionary *a3, CGImageRef *a4)
{
  pixelBuffer = 0;
  v14 = 1;
  if (a1)
  {
    if (a1[16])
    {
      return 4294951220;
    }

    v8 = unpackCGImageRequestOptions(a3, &v14);
    if (v8)
    {
      return v8;
    }

    PixelBufferFromJPEGData = fjds_createPixelBufferFromJPEGData(a1, 0, a2, a3, &pixelBuffer, 0);
    if (PixelBufferFromJPEGData)
    {
      CGImageWithPixelBuffer = PixelBufferFromJPEGData;
      v11 = pixelBuffer;
      if (!pixelBuffer)
      {
        return CGImageWithPixelBuffer;
      }
    }

    else
    {
      v10 = CFGetAllocator(a1);
      v11 = pixelBuffer;
      CGImageWithPixelBuffer = CMPhotoCreateCGImageWithPixelBuffer(v10, pixelBuffer, v14, a4);
      if (!v11)
      {
        return CGImageWithPixelBuffer;
      }
    }

    CFRelease(v11);
    return CGImageWithPixelBuffer;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoJPEGDecodeSessionCancelRequest(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return 4294951220;
    }

    os_unfair_lock_lock((a1 + 40));
    if (CFSetContainsValue(*(a1 + 32), a2))
    {
      CFSetRemoveValue(*(a1 + 32), a2);
      v4 = 0;
    }

    else
    {
      v4 = 4294951223;
    }

    os_unfair_lock_unlock((a1 + 40));
    return v4;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t CMPhotoJPEGDecodeSessionDiscardCachedBuffers(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return 4294951220;
    }

    else
    {
      CMPhotoSurfacePoolFlushCaches(*(a1 + 200), 0);
      CMPhotoScaleAndRotateSessionDiscardCaches(*(a1 + 208), v2);
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void CMPhotoJPEGDecodeSessionCreate_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t unpackCGImageRequestOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

void CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_cold_2(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  global_queue = dispatch_get_global_queue(0, 0);
  *a1 = MEMORY[0x1E69E9820];
  a1[1] = *"";
  a1[2] = __CMPhotoJPEGDecodeSessionDecodeDataToCVPixelBufferAsynchronously_block_invoke_2;
  a1[3] = &unk_1E77A32F8;
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = 0;
  *(a1 + 14) = a4;
  dispatch_async(global_queue, a1);
}

uint64_t JPEGCompressionPluginClass_create(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10600400847F242uLL);
    v5 = v4;
    if (v4)
    {
      *v4 = 0;
      if (!a2 || (CMPhotoCFDictionaryGetBooleanIfPresent(), FigCFDictionaryGetIntIfPresent(), CMPhotoCFDictionaryGetBooleanIfPresent(), CMPhotoCFDictionaryGetBooleanIfPresent(), *(v5 + 1) = CFDictionaryCreateCopy(*a1, a2), v6 = *v5, !v6))
      {
        if (CMPhotoUnifiedJPEGEncoderIsHardwareAvailable())
        {
          v6 = 2;
        }

        else
        {
          v6 = 1;
        }

        *v5 = v6;
      }

      *v5 = CMPhotoGetEncodeAccelerationModeOverride(v6);
      if (*(v5 + 4) || (v7 = dispatch_queue_create("com.apple.coremedia.jpeg-encoder", MEMORY[0x1E69E96A8]), (*(v5 + 2) = v7) != 0))
      {
        v8 = CMPhotoUnifiedJPEGEncoderCreate(*a1, *(a1 + 16), *(a1 + 8), 0, v5 + 3);
        if (!v8)
        {
          *(a1 + 152) = v5;
          v5 = 0;
        }
      }

      else
      {
        v8 = FigSignalErrorAtGM();
      }
    }

    else
    {
      v8 = 4294950305;
    }
  }

  else
  {
    v5 = 0;
    v8 = 4294950306;
  }

  PluginInstance_Dispose_0(v5);
  return v8;
}

uint64_t JPEGCompressionPluginClass_encode(uint64_t a1, CFTypeRef cf, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 4294950306;
  }

  v8 = *(a1 + 152);
  if (!v8)
  {
    return 4294950195;
  }

  if (!cf)
  {
    return 4294950306;
  }

  v38 = 0;
  v37 = 0;
  if (a6)
  {
    CMPhotoCFDictionaryGetSizeIfPresent(a6, @"BitDepth", &v38);
    CMPhotoCFDictionaryGetInt32IfPresent();
  }

  if (*(v8 + 4))
  {
    v26[0] = 0;
    v27 = a1;
    v21 = CFRetain(cf);
    v22 = a4[1];
    v29 = *a4;
    v30 = v22;
    v23 = a5[1];
    v31 = *a5;
    v28 = v21;
    v32 = v23;
    v33 = v38;
    v34 = v37;
    v35 = a7;
    v36 = 0;
    _dispatch_encode(v26);
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A0040BC83C01EuLL);
    if (!v13)
    {
      return 4294950305;
    }

    v14 = v13;
    v15 = CFRetain(cf);
    v16 = *a4;
    v25 = a4[1];
    v17 = *a5;
    v24 = a5[1];
    v18 = v38;
    v19 = v37;
    *v14 = 1;
    *(v14 + 1) = a1;
    *(v14 + 2) = v15;
    *(v14 + 24) = v16;
    *(v14 + 40) = v25;
    *(v14 + 56) = v17;
    *(v14 + 72) = v24;
    *(v14 + 11) = v18;
    *(v14 + 24) = v19;
    *(v14 + 13) = a7;
    *(v14 + 14) = 0;
    dispatch_async_f(*(v8 + 16), v14, _dispatch_encode);
  }

  return 0;
}

uint64_t JPEGCompressionPluginClass_completeEncodes(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(a1 + 152);
  if (!v1)
  {
    return 4294950195;
  }

  if (!*(v1 + 4))
  {
    dispatch_barrier_sync_f(*(v1 + 16), 0, _dispatch_empty_1);
  }

  return 0;
}

void _dispatch_encode(_BYTE *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v7 = *(a1 + 7);
  DictionaryRepresentation = *(a1 + 8);
  v31 = *(a1 + 10);
  pixelBuffer = *(a1 + 2);
  v8 = *(a1 + 11);
  v9 = *(a1 + 24);
  v30 = *(a1 + 13);
  if (*a1)
  {
    free(a1);
  }

  v10 = *(v1 + 152);
  v40 = 0;
  cf = 0;
  v11 = MEMORY[0x1E695E480];
  if (*(v10 + 1) || v8 || (MutableCopy = 0, v9))
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      FigSignalErrorAtGM();
      v22 = 0;
      OUTLINED_FUNCTION_0_30();
      Mutable = 0;
      v23 = pixelBuffer;
      v24 = v30;
      goto LABEL_37;
    }

    if (v8)
    {
      CMPhotoCFDictionarySetSize(MutableCopy, @"BitDepth", v8);
    }

    if (v9)
    {
      CMPhotoCFDictionarySetInt32(MutableCopy, @"Subsampling", v9);
    }

    v11 = MEMORY[0x1E695E480];
  }

  v34 = v1;
  v9 = (v35 + v7);
  v12 = v4 + v2;
  v13 = v31;
  v14 = v31 + DictionaryRepresentation;
  v3 += v5;
  if (v35 + v7 <= v12 && v14 <= v3)
  {
    v20 = 0;
    v29 = 0;
    v9 = 0;
    Mutable = 0;
    v23 = pixelBuffer;
    v22 = MutableCopy;
    v24 = v30;
LABEL_36:
    v25 = *(v10 + 3);
    v26 = *v10;
    v36.i64[0] = v7;
    v36.i64[1] = DictionaryRepresentation;
    v37 = v35;
    v38 = v13;
    v27 = CMPhotoUnifiedJPEGEncoderEncode(v25, v22, v23, 0, &v36, 1, v26, v10);
    v28 = v40;
    DictionaryRepresentation = v20;
    v1 = v34;
    v3 = v29;
    goto LABEL_37;
  }

  v16 = v11;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (CMPhotoSurfacePoolCreatePixelBuffer(*(v34 + 8), PixelFormatType, v35, v31, 0, 0, 0, 0, 0, 0, &cf))
  {
    OUTLINED_FUNCTION_0_30();
    Mutable = 0;
LABEL_58:
    v22 = MutableCopy;
    v1 = v34;
    v24 = v30;
    v23 = pixelBuffer;
    goto LABEL_37;
  }

  if (v14 <= v3)
  {
    v3 = v31;
  }

  else
  {
    v3 -= DictionaryRepresentation;
  }

  if (v9 <= v12)
  {
    v18 = v35;
  }

  else
  {
    v18 = v12 - v7;
  }

  Mutable = CFDictionaryCreateMutable(*v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_0_30();
    v27 = 4294950305;
    goto LABEL_58;
  }

  v41.origin.x = v7;
  v41.origin.y = DictionaryRepresentation;
  v41.size.width = v18;
  v41.size.height = v3;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v41);
  v24 = v30;
  v1 = v34;
  if (DictionaryRepresentation)
  {
    CFDictionarySetValue(Mutable, @"SourceCropRectDictionary", DictionaryRepresentation);
  }

  v3 = CMPhotoColorTripletCreateDictionaryRepresentation(0, 1);
  v23 = pixelBuffer;
  if (v3)
  {
    CFDictionarySetValue(Mutable, @"DestinationColorTripletDictionary", v3);
  }

  v42.origin.x = OUTLINED_FUNCTION_1_26();
  v9 = CGRectCreateDictionaryRepresentation(v42);
  v22 = MutableCopy;
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"DestinationCropRectDictionary", v9);
  }

  v19 = CMPhotoScaleAndRotateSessionTransformImage(*(v34 + 16), pixelBuffer, Mutable, &cf);
  if (!v19)
  {
    OUTLINED_FUNCTION_1_26();
    v19 = VTFillPixelBufferBorderWithBlack();
    if (!v19)
    {
      v29 = v3;
      v20 = DictionaryRepresentation;
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
      }

      DictionaryRepresentation = 0;
      v7 = 0;
      v23 = cf;
      cf = 0;
      v13 = v31;
      goto LABEL_36;
    }
  }

  v27 = v19;
  v28 = 0;
LABEL_37:
  (*(v1 + 136))(v1, v27, v28, *(v1 + 144), v24);
  if (v40)
  {
    CFRelease(v40);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v22)
  {
    CFRelease(v22);
  }
}

uint64_t CMPhotoCreateImageSurfaceWrappingPixelBuffer(__CVBuffer *a1, _BYTE *a2, __IOSurface **a3)
{
  v3 = 4294950306;
  if (a1)
  {
    if (a2)
    {
      v5 = a3;
      if (a3)
      {
        allocator = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          return 4294950305;
        }

        v8 = Mutable;
        v39 = *a2;
        if (!*a2)
        {
          v9 = CVPixelBufferLockBaseAddress(a1, 1uLL);
          if (v9)
          {
            v3 = v9;
LABEL_23:
            CFRelease(v8);
            return v3;
          }

          *a2 = 1;
        }

        PixelBufferSize = CMPhotoGetPixelBufferSize(a1);
        v12 = v11;
        PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        FigCFDictionarySetInt64();
        v50 = BaseAddress;
        if ((*MEMORY[0x1E69E9AB8] & BaseAddress) != 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_0();
          v3 = FigSignalErrorAtGM();
          v17 = 0;
          v21 = 0;
        }

        else
        {
          v15 = vcvtad_u64_f64(v12);
          CMPhotoCFDictionarySetInt(v8, *MEMORY[0x1E696CE60], 0);
          CMPhotoCFDictionarySetSize(v8, *MEMORY[0x1E696D130], vcvtad_u64_f64(PixelBufferSize));
          CMPhotoCFDictionarySetSize(v8, *MEMORY[0x1E696CF58], v15);
          CMPhotoCFDictionarySetInt32(v8, *MEMORY[0x1E696CFC0], PixelFormatType);
          BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
          if (CVPixelBufferIsPlanar(a1))
          {
            if (CVPixelBufferGetPlaneCount(a1) != 2)
            {
              v17 = 0;
              v21 = 0;
              v3 = 4294950301;
              goto LABEL_29;
            }

            DataSize = CVPixelBufferGetDataSize(a1);
            v17 = CFArrayCreateMutable(allocator, 2, MEMORY[0x1E695E9C0]);
            if (v17)
            {
              v48 = BytesPerPixelForPixelFormat;
              v40 = v5;
              theDict = v8;
              v18 = 0;
              v47 = *MEMORY[0x1E696D0C8];
              v46 = *MEMORY[0x1E696D090];
              v45 = *MEMORY[0x1E696CFE0];
              v44 = *MEMORY[0x1E696CFE8];
              v43 = *MEMORY[0x1E696D0B0];
              v42 = *MEMORY[0x1E696D0B8];
              v19 = 1;
              while (1)
              {
                v20 = v19;
                v21 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v21)
                {
                  break;
                }

                CFArrayAppendValue(v17, v21);
                v22 = OUTLINED_FUNCTION_11_16();
                WidthOfPlane = CVPixelBufferGetWidthOfPlane(v22, v23);
                v25 = OUTLINED_FUNCTION_11_16();
                HeightOfPlane = CVPixelBufferGetHeightOfPlane(v25, v26);
                v28 = OUTLINED_FUNCTION_11_16();
                BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v28, v29);
                v31 = OUTLINED_FUNCTION_11_16();
                BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v31, v32);
                v34 = (BaseAddressOfPlane - v50);
                if (BaseAddressOfPlane < v50)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_14();
                  v3 = FigSignalErrorAtGM();
                  goto LABEL_27;
                }

                if (&v34[BytesPerRowOfPlane * HeightOfPlane] > DataSize)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_14();
                  v3 = FigSignalErrorAtGM();
                  v8 = theDict;
                  goto LABEL_29;
                }

                CMPhotoCFDictionarySetSize(v21, v47, WidthOfPlane);
                CMPhotoCFDictionarySetSize(v21, v46, HeightOfPlane);
                CMPhotoCFDictionarySetSize(v21, v45, v48 << v18);
                CMPhotoCFDictionarySetSize(v21, v44, BytesPerRowOfPlane);
                CMPhotoCFDictionarySetSize(v21, v43, v34);
                CMPhotoCFDictionarySetSize(v21, v42, BytesPerRowOfPlane * HeightOfPlane);
                CFRelease(v21);
                v19 = 0;
                v18 = 1;
                if ((v20 & 1) == 0)
                {
                  v8 = theDict;
                  CFDictionarySetValue(theDict, *MEMORY[0x1E696D0A8], v17);
                  v5 = v40;
                  goto LABEL_19;
                }
              }

              v3 = 4294950305;
LABEL_27:
              v8 = theDict;
              goto LABEL_29;
            }
          }

          else
          {
            BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
            CMPhotoCFDictionarySetInt(v8, *MEMORY[0x1E696CFA8], 0);
            CMPhotoCFDictionarySetSize(v8, *MEMORY[0x1E696CE58], BytesPerRow);
            CMPhotoCFDictionarySetSize(v8, *MEMORY[0x1E696CE50], BytesPerPixelForPixelFormat);
            CMPhotoCFDictionarySetSize(v8, *MEMORY[0x1E696CE30], BytesPerRow * v15);
            v17 = 0;
LABEL_19:
            v36 = IOSurfaceCreate(v8);
            if (v36)
            {
              v37 = v36;
              IOSurfaceSetValue(v36, *MEMORY[0x1E696CF98], @"CMPhoto Wrapped Image");
              v3 = 0;
              *v5 = v37;
LABEL_21:
              if (v17)
              {
                CFRelease(v17);
              }

              goto LABEL_23;
            }
          }

          v21 = 0;
          v3 = 4294950305;
        }

LABEL_29:
        if (!v39)
        {
          CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        goto LABEL_21;
      }
    }
  }

  return v3;
}

OpaqueCMBlockBuffer *CMPhotoCreateSampleBufferWrappingIOSurface(const __CFAllocator *a1, __IOSurface *a2, unint64_t a3, size_t a4, char a5, IOSurfaceLockOptions a6)
{
  v6 = a3;
  target = 0;
  sampleSizeArray = a4;
  result = CMPhotoCreateBlockBufferWrappingIOSurface(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v10 = result;
    if (CMSampleBufferCreate(a1, result, 1u, 0, 0, 0, 1, 0, 0, 1, &sampleSizeArray, &target))
    {
      if (target)
      {
        CFRelease(target);
        target = 0;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionarySetValue(Mutable, @"IOSurface", a2);
        CMPhotoCFDictionarySetInt(v12, @"IOSurfaceDataOffset", v6);
        CMPhotoCFDictionarySetInt(v12, @"IOSurfaceDataSize", sampleSizeArray);
        CMSetAttachments(target, v12, 1u);
        CMPropagateAttachments(target, v10);
        CFRelease(v12);
      }
    }

    CFRelease(v10);
    return target;
  }

  return result;
}

uint64_t CMPhotoCreateBlockBufferWrappingIOSurface_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateBlockBufferWrappingIOSurface_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VideoQualityControllerClass_create_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFTypeRef cf)
{
  if (cf)
  {
    v10 = CFGetTypeID(cf);
    if (v10 != CFDictionaryGetTypeID())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_0();
      v20 = FigSignalErrorAtGM();
      goto LABEL_31;
    }
  }

  pthread_once(&_checkFigNoteTraceOnce_onceToken_5, _registerFigNoteTrace_5);
  v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x106004071E7DF65uLL);
  v12 = v11;
  if (!v11)
  {
    v20 = 4294950305;
    goto LABEL_32;
  }

  *v11 = a3;
  v11[1] = a4;
  v11[2] = -1;
  *(v11 + 6) = -1082130432;
  *(v11 + 40) = 1;
  *(v11 + 28) = 1;
  *(v11 + 8) = a2;
  *(v11 + 9) = 1;
  if (cf)
  {
    v13 = OUTLINED_FUNCTION_1_27();
    if (CFDictionaryContainsKey(v13, v14))
    {
      OUTLINED_FUNCTION_1_27();
      if (!CMPhotoCFDictionaryGetFloatIfPresent())
      {
        goto LABEL_35;
      }

      if (-1.0 < 0.0 || -1.0 > 1.0)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_0_31(-1.0);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_1_27();
      if (CFDictionaryContainsKey(v16, v17))
      {
        OUTLINED_FUNCTION_1_27();
        CMPhotoCFDictionaryGetIntIfPresent();
        goto LABEL_35;
      }
    }

    if (a2 != 1635148593)
    {
      if (a2 != 1752589105 || !CMPhotoReuseCompressionSessionForDifferentQuantizationMatrixPresetDisabled())
      {
LABEL_24:
        CMPhotoCFDictionaryGetBooleanIfPresent();
        if (*(v12 + 4) != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      *(a1 + 32) = *(v12 + 9);
LABEL_23:
      FigCFDictionaryGetInt32IfPresent();
      goto LABEL_24;
    }

    if (!CFDictionaryContainsKey(cf, @"EntropyMode"))
    {
LABEL_22:
      *(a1 + 33) = 3;
      goto LABEL_23;
    }

    CFDictionaryGetValue(cf, @"EntropyMode");
    if (FigCFEqual() || FigCFEqual())
    {
      *(a1 + 32) = FigCFEqual();
      goto LABEL_22;
    }

LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    v20 = FigSignalErrorAtGM();
    goto LABEL_32;
  }

LABEL_25:
  if (*(v12 + 6) == -1.0)
  {
    HEIFQualityDefault = CMPhotoGetHEIFQualityDefault(*(a1 + 40), *(a1 + 48));
    OUTLINED_FUNCTION_0_31(HEIFQualityDefault);
  }

  if (!cf)
  {
    v19 = 0;
    goto LABEL_30;
  }

LABEL_28:
  v19 = CFRetain(cf);
LABEL_30:
  v20 = 0;
  v12[6] = v19;
  *(a1 + 56) = v12;
LABEL_31:
  v12 = 0;
LABEL_32:
  QualityController_dispose(v12);
  return v20;
}

uint64_t VideoQualityControllerClass_setSessionProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionBuildSequenceReadersAndCopyDescription(const void *a1, uint64_t a2, __CFArray **a3)
{
  v6 = a1;
  v7 = CFGetAllocator(a1);
  v152 = 0;
  v153 = 0;
  v159 = 0;
  v160[0] = 0;
  Mutable = CFArrayCreateMutable(v7, 0, 0);
  v119 = a3;
  v135 = v6;
  if (Mutable)
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      hasTrackReferenceOfType = v10(FigBaseObject, *MEMORY[0x1E6971AC0], v7, &v153);
      if (hasTrackReferenceOfType)
      {
LABEL_107:
        ReferenceSequenceReaders = hasTrackReferenceOfType;
LABEL_108:
        FigBaseObject = 0;
      }

      else
      {
        HIDWORD(v151) = 0;
        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
        {
          v12 = 0;
          OUTLINED_FUNCTION_9_20();
          while (1)
          {
            if (!v13)
            {
              goto LABEL_42;
            }

            v14 = v13(a2, v12, 1885954932, 0, &v151 + 4);
            if (v14)
            {
              goto LABEL_42;
            }

            WORD1(v151) = 0;
            v22 = OUTLINED_FUNCTION_7_22(v14, v15, v16, v17, v18, v19, v20, v21, v117, v118, v119, v120, v125, v130, v135, v136, v141, key, v151, v152, v153);
            hasTrackReferenceOfType = _hasTrackReferenceOfType(v22, @"thmb", v23, &v151 + 3);
            if (hasTrackReferenceOfType)
            {
              goto LABEL_107;
            }

            v31 = OUTLINED_FUNCTION_7_22(hasTrackReferenceOfType, v24, v25, v26, v27, v28, v29, v30, v117, v118, v119, v121, v126, v131, v135, v137, v142, keya, v151, v152, v153);
            hasTrackReferenceOfType = _hasTrackReferenceOfType(v31, @"auxl", v32, &v151 + 2);
            if (hasTrackReferenceOfType)
            {
              goto LABEL_107;
            }

            if (!(BYTE3(v151) | BYTE2(v151)))
            {
              break;
            }

LABEL_11:
            v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            ++v12;
            if (!v13)
            {
              goto LABEL_42;
            }
          }

          v40 = OUTLINED_FUNCTION_7_22(hasTrackReferenceOfType, v33, v34, v35, v36, v37, v38, v39, v117, v118, v119, v120, v125, v130, v135, v136, v141, key, v151, v152, v153);
          v42 = _copyTrackReferencesOfType(v40, @"thmb", v41, v160);
          if (v42)
          {
            OUTLINED_FUNCTION_4_22();
            if (!v50)
            {
              goto LABEL_108;
            }
          }

          v51 = OUTLINED_FUNCTION_7_22(v42, v43, v44, v45, v46, v47, v48, v49, v117, v118, v119, v122, v127, v132, v135, v138, v143, keyb, v151, v152, v153);
          v53 = _copyTrackReferencesOfType(v51, @"auxl", v52, &v159);
          if (v53)
          {
            OUTLINED_FUNCTION_4_22();
            if (!v50)
            {
              goto LABEL_108;
            }
          }

          v61 = OUTLINED_FUNCTION_7_22(v53, v54, v55, v56, v57, v58, v59, v60, v117, v118, v119, v123, v128, v133, v135, v139, v144, keyc, v151, v152, v153);
          if (_copyTrackReferencesOfType(v61, @"cdsc", v62, &v152))
          {
            OUTLINED_FUNCTION_4_22();
            if (!v50)
            {
              goto LABEL_108;
            }
          }

          v63 = HIDWORD(v151);
          v64 = FigBaseObject;
          v65 = v159;
          v66 = v160[0];
          cf[0] = 0;
          v67 = malloc_type_calloc(1uLL, 0x18uLL, v64);
          if (!v67)
          {
            FigBaseObject = 0;
            ReferenceSequenceReaders = 4294950305;
LABEL_112:
            v6 = v135;
            goto LABEL_43;
          }

          v68 = v67;
          v69 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v69)
          {
            SequenceReader_0 = v69(a2, v63, cf, 0);
            if (SequenceReader_0 || (SequenceReader_0 = _createSequenceReader_0(v7, a2, cf[0], v68), SequenceReader_0) || (SequenceReader_0 = _createReferenceSequenceReaders(v7, a2, v66, 1885954932, v68 + 1), SequenceReader_0))
            {
              ReferenceSequenceReaders = SequenceReader_0;
            }

            else
            {
              ReferenceSequenceReaders = _createReferenceSequenceReaders(v7, a2, v65, 1635088502, v68 + 2);
              if (!ReferenceSequenceReaders)
              {
                FigBaseObject = v68;
                v68 = 0;
                goto LABEL_31;
              }
            }

            FigBaseObject = 0;
          }

          else
          {
            FigBaseObject = 0;
            ReferenceSequenceReaders = 4294954514;
          }

LABEL_31:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          _destroySequenceGroupReader(v68);
          if (ReferenceSequenceReaders)
          {
            goto LABEL_112;
          }

          CFArrayAppendValue(Mutable, FigBaseObject);
          v6 = v135;
          if (v160[0])
          {
            CFRelease(v160[0]);
            v160[0] = 0;
          }

          OUTLINED_FUNCTION_9_20();
          if (v71)
          {
            CFRelease(v71);
            v159 = 0;
          }

          if (v152)
          {
            CFRelease(v152);
            v152 = 0;
          }

          goto LABEL_11;
        }

LABEL_42:
        FigBaseObject = 0;
        ReferenceSequenceReaders = 0;
        *(v6 + 144) = Mutable;
        Mutable = 0;
      }
    }

    else
    {
      FigBaseObject = 0;
      ReferenceSequenceReaders = 4294954514;
    }
  }

  else
  {
    FigBaseObject = 0;
    ReferenceSequenceReaders = 4294950305;
  }

LABEL_43:
  if (v153)
  {
    CFRelease(v153);
  }

  _destroySequenceGroupReader(FigBaseObject);
  CMPhotoCompressionSessionDestroySequenceGroupReaders(Mutable);
  if (!ReferenceSequenceReaders)
  {
    v72 = CFArrayCreateMutable(*(v6 + 96), 0, MEMORY[0x1E695E9C0]);
    if (v72)
    {
      v73 = v72;
      v74 = 0;
      v145 = @"Auxiliary";
      keyd = @"ThumbnailImage";
      v124 = @"ImageList";
      v129 = @"SequenceHandle";
      v75 = MEMORY[0x1E6960C70];
      v134 = *&v72;
      while (1)
      {
        Count = *(v6 + 144);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v74 >= Count)
        {
          break;
        }

        v77 = *(v6 + 96);
        v159 = 0;
        v160[0] = 0;
        v78 = *(v6 + 144);
        if (!v78)
        {
          ReferenceSequenceReaders = 4294950304;
          goto LABEL_105;
        }

        if (CFArrayGetCount(v78) <= v74)
        {
          v114 = 0;
          ReferenceSequenceReaders = 4294950304;
          v73 = *&v134;
          goto LABEL_82;
        }

        v140 = *&v74;
        ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 144), v74);
        v80 = CFArrayCreateMutable(v77, 0, MEMORY[0x1E695E9C0]);
        if (!v80)
        {
          v114 = 0;
          ReferenceSequenceReaders = 4294950305;
          v73 = *&v134;
          v74 = *&v140;
          goto LABEL_82;
        }

        v81 = v80;
        v82 = *ValueAtIndex;
        v83 = _moveCursorToPosition(*ValueAtIndex, 0);
        if (v83)
        {
          ReferenceSequenceReaders = v83;
          v114 = 0;
          goto LABEL_94;
        }

        v84 = 0;
        do
        {
          v85 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v85)
          {
            v114 = 0;
            ReferenceSequenceReaders = 4294950305;
LABEL_94:
            v86 = v81;
            v73 = *&v134;
            v6 = v135;
            goto LABEL_95;
          }

          v86 = v85;
          v158 = *(v75 + 16);
          *cf = *v75;
          v87 = *(v82 + 16);
          v88 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v88)
          {
            goto LABEL_79;
          }

          ReferenceSequencesDescription = v88(v87, cf);
          if (ReferenceSequencesDescription)
          {
LABEL_92:
            ReferenceSequenceReaders = ReferenceSequencesDescription;
            goto LABEL_80;
          }

          if ((*(v82 + 32) & 0x8000000000000000) != 0)
          {
            fig_log_get_emitter();
            ReferenceSequencesDescription = FigSignalErrorAtGM();
            if (ReferenceSequencesDescription)
            {
              goto LABEL_92;
            }

            v93 = 1;
          }

          else
          {
            v153 = 0;
            v90 = *(v82 + 16);
            v91 = *(*(CMBaseObjectGetVTable() + 16) + 176);
            if (!v91)
            {
LABEL_79:
              ReferenceSequenceReaders = 4294954514;
LABEL_80:
              v73 = *&v134;
              v6 = v135;
              v74 = *&v140;
              CFRelease(v81);
              v114 = 0;
              goto LABEL_81;
            }

            ReferenceSequencesDescription = v91(v90, 1, &v153);
            if (ReferenceSequencesDescription)
            {
              goto LABEL_92;
            }

            v92 = v153;
            *(v82 + 32) += v153;
            v93 = v92 == 1;
          }

          FigCFDictionarySetInt();
          OUTLINED_FUNCTION_6_22(v94, v95, v96, v97, v98, v99, v100, v101, *&v117, *&v118, *&v119, *&v124, *&v129, v134, *&v135, v140, *&v145, *&keyd, *&v151, *&v152, *&v153, v154, v155, v156, *cf);
          ReferenceSequencesDescription = _createReferenceSequencesDescription(v77, v102, v103, v160);
          if (ReferenceSequencesDescription)
          {
            goto LABEL_92;
          }

          if (v160[0] && CFArrayGetCount(v160[0]) >= 1)
          {
            CFDictionaryAddValue(v86, keyd, v160[0]);
          }

          OUTLINED_FUNCTION_6_22(v104, v105, v106, v107, v108, v109, v110, v111, *&v117, *&v118, *&v119, *&v124, *&v129, v134, *&v135, v140, *&v145, *&keyd, *&v151, *&v152, *&v153, v154, v155, v156, *cf);
          ReferenceSequencesDescription = _createReferenceSequencesDescription(v77, v112, v113, &v159);
          if (ReferenceSequencesDescription)
          {
            goto LABEL_92;
          }

          if (v159 && CFArrayGetCount(v159) >= 1)
          {
            CFDictionaryAddValue(v86, v145, v159);
          }

          CFArrayAppendValue(v81, v86);
          CFRelease(v86);
          if (v160[0])
          {
            CFRelease(v160[0]);
            v160[0] = 0;
          }

          if (v159)
          {
            CFRelease(v159);
            v159 = 0;
          }

          ++v84;
        }

        while (v93);
        v115 = CFDictionaryCreateMutable(v77, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v114 = v115;
        v73 = *&v134;
        v6 = v135;
        if (v115)
        {
          v74 = *&v140;
          FigCFDictionarySetInt64();
          CFDictionaryAddValue(v114, v124, v81);
          ReferenceSequenceReaders = 0;
          v86 = v81;
          goto LABEL_81;
        }

        ReferenceSequenceReaders = 4294950305;
        v86 = v81;
LABEL_95:
        v74 = *&v140;
LABEL_81:
        CFRelease(v86);
LABEL_82:
        if (v160[0])
        {
          CFRelease(v160[0]);
        }

        if (v159)
        {
          CFRelease(v159);
        }

        if (ReferenceSequenceReaders)
        {
          if (v114)
          {
            CFRelease(v114);
          }

          v73 = *&v134;
          goto LABEL_105;
        }

        CFArrayAppendValue(v73, v114);
        if (v114)
        {
          CFRelease(v114);
        }

        ++v74;
      }

      if (v119 && CFArrayGetCount(v73) >= 1)
      {
        ReferenceSequenceReaders = 0;
        *v119 = v73;
        return ReferenceSequenceReaders;
      }

      ReferenceSequenceReaders = 0;
LABEL_105:
      CFRelease(v73);
    }

    else
    {
      return 4294950305;
    }
  }

  return ReferenceSequenceReaders;
}

size_t _compressThumbnail_1(uint64_t a1, int a2, CFDictionaryRef theDict, opaqueCMSampleBuffer *a4)
{
  v12[0] = 0;
  v12[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a4, theDict, v12);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  OUTLINED_FUNCTION_10_19();
  if (v9)
  {
    kdebug_trace();
  }

  v10 = _compressX(a1, theDict, a4, 1, a2, 0, 0, -1, MEMORY[0x1E6960C70], 0);
  OUTLINED_FUNCTION_10_19();
  if (v9)
  {
    kdebug_trace();
  }

  return v10;
}

size_t _compressAuxImage_3(uint64_t a1, int a2, int a3, int a4, CFDictionaryRef theDict, opaqueCMSampleBuffer *a6, uint64_t a7)
{
  v17[0] = 0;
  v17[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a6, theDict, v17);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  SourceDimensions = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = _compressX(a1, theDict, a6, 2, a2, a3, 1, -1, MEMORY[0x1E6960C70], a7);
  if (*v14 == 1)
  {
    kdebug_trace();
  }

  return v15;
}

uint64_t _startImageSequence(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 104))
  {
    v4 = (a1 + 48);
    if (!*(a1 + 48) && !*(a1 + 56))
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_42();
        kdebug_trace();
      }

      Mutable = CFDictionaryCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        return 4294950305;
      }

      v8 = Mutable;
      v9 = CMPhotoCFDictionarySetInt(Mutable, @"MaxSimultaneousCompressionSessions", 3);
      if (!v9)
      {
        v9 = CMPhotoCFDictionarySetInt64(v8, @"IdleTimeoutMilliseconds", 0);
        if (!v9)
        {
          v9 = CMPhotoCodecSessionPoolCreate(*(a1 + 96), v8, v4);
          if (!v9)
          {
            v10 = CFDictionaryCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9D8], 0);
            *(a1 + 56) = v10;
            if (!v10)
            {
              v11 = 4294950305;
              goto LABEL_13;
            }

            v9 = CMPhotoHEIFFileWriterAddSequence(*(a1 + 88), a2, a3);
          }
        }
      }

      v11 = v9;
LABEL_13:
      CFRelease(v8);
      return v11;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _copyTrackReferencesOfType(const __CFDictionary *a1, const void *a2, int a3, const __CFArray **a4)
{
  if (!a1)
  {
    return 4294950303;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 4294950303;
  }

  v7 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 4294950303;
  }

  v9 = Count;
  if (Count)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();

    return FigSignalErrorAtGM();
  }

  if (Count == 1)
  {
    return 4294950303;
  }

  Mutable = 0;
  v11 = *MEMORY[0x1E695E480];
  v12 = 1;
  v13 = MEMORY[0x1E695E9C0];
  while (1)
  {
    if (!FigCFArrayGetInt32AtIndex())
    {
      v15 = 4294950304;
      if (!Mutable)
      {
        return v15;
      }

      goto LABEL_20;
    }

    if (!a3)
    {
      break;
    }

LABEL_12:
    v12 += 2;
    if (v12 >= v9)
    {
      if (!Mutable)
      {
        return 4294950303;
      }

      if (CFArrayGetCount(Mutable) < 1)
      {
        v15 = 4294950303;
      }

      else
      {
        v15 = 0;
        if (a4)
        {
          *a4 = Mutable;
          return v15;
        }
      }

LABEL_20:
      CFRelease(Mutable);
      return v15;
    }
  }

  if (Mutable || (Mutable = CFArrayCreateMutable(v11, 0, v13)) != 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v12 ^ 1);
    CFArrayAppendValue(Mutable, ValueAtIndex);
    goto LABEL_12;
  }

  return 4294950305;
}

uint64_t _createSequenceReader_0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x10200400824DF26uLL);
  if (!v6)
  {
    return 4294950305;
  }

  v7 = v6;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  v9 = (v7 + 8);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10(a3, v7 + 8);
  if (v11)
  {
    goto LABEL_26;
  }

  v12 = *(v7 + 1);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v13)
  {
LABEL_14:
    v16 = 4294954514;
    goto LABEL_15;
  }

  v11 = v13(v12, v7 + 16);
  if (v11 || (*(v7 + 4) = 0, OUTLINED_FUNCTION_42(), v11 = FigSampleGeneratorCreateForFormatReaderUsingByteStreams(), v11))
  {
LABEL_26:
    v16 = v11;
    goto LABEL_15;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14(a3, v7 + 44, v7 + 40);
  v16 = v15;
  if (a4 && !v15)
  {
    *a4 = v7;
    return v16;
  }

LABEL_15:
  if (*v9)
  {
    CFRelease(*v9);
  }

  v17 = *(v7 + 2);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(v7 + 3);
  if (v18)
  {
    CFRelease(v18);
  }

  if (*v7)
  {
    CFRelease(*v7);
  }

  free(v7);
  return v16;
}

uint64_t _createReferenceSequenceReaders(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3, int a4, CFMutableArrayRef *a5)
{
  cf = 0;
  Mutable = CFArrayCreateMutable(a1, 0, 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v11 = Mutable;
  v12 = 0;
  if (!a3)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(a3); v12 < i; i = 0)
  {
    v21 = 0;
    if (!FigCFArrayGetInt32AtIndex())
    {
      v17 = 4294950304;
      goto LABEL_17;
    }

    v20 = 0;
    v14 = v21;
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v15)
    {
      v17 = 4294954514;
LABEL_17:
      CFRelease(v11);
      goto LABEL_20;
    }

    v16 = v15(a2, v14, &cf, &v20);
    if (v16)
    {
      goto LABEL_25;
    }

    if (v20 == a4)
    {
      value = 0;
      v16 = _createSequenceReader_0(a1, a2, cf, &value);
      if (v16)
      {
LABEL_25:
        v17 = v16;
        goto LABEL_17;
      }

      CFArrayAppendValue(v11, value);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    ++v12;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  v17 = 0;
  if (!a5)
  {
    goto LABEL_17;
  }

  *a5 = v11;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t _moveCursorToPresentationTime(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v51 = 0uLL;
  v52 = 0;
  v5 = *(a1 + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(v5, &v51);
  if (result)
  {
    return result;
  }

  v15 = OUTLINED_FUNCTION_2_29(result, v8, v9, v10, v11, v12, v13, v14, v48.value, *&v48.timescale, v48.epoch, v49, v50.value, *&v50.timescale, v50.epoch, v51);
  result = OUTLINED_FUNCTION_8_19(v16, v17, v18, v19, v20, v21, v22, v23, v15, v48.value, *&v48.timescale, v48.epoch, v49, v24, v50.value, *&v50.timescale, v50.epoch, v51);
  if (!result)
  {
LABEL_13:
    v37 = OUTLINED_FUNCTION_2_29(result, v25, v26, v27, v28, v29, v30, v31, v48.value, *&v48.timescale, v48.epoch, v49, v50.value, *&v50.timescale, v50.epoch, v51);
    v47 = OUTLINED_FUNCTION_8_19(v38, v39, v40, v41, v42, v43, v44, v45, v37, v48.value, *&v48.timescale, v48.epoch, v49, v46, v50.value, *&v50.timescale, v50.epoch, v51);
    result = 0;
    *a3 = v47 == 0;
    return result;
  }

  v32 = *(a1 + 16);
  *&v48.value = OUTLINED_FUNCTION_2_29(result, v25, v26, v27, v28, v29, v30, v31, v48.value, *&v48.timescale, v48.epoch, v49, v50.value, *&v50.timescale, v50.epoch, v51);
  v48.epoch = v52;
  CMTimeSubtract(&v50, &lhs, &v48);
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v33)
  {
    return 4294954514;
  }

  lhs = v50;
  result = v33(v32, &lhs);
  if (result)
  {
    v34 = result == -12840;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = *(a1 + 16);
    v36 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v36)
    {
      result = v36(v35, &v51);
      if (result)
      {
        return result;
      }

      *(a1 + 32) = -1;
      goto LABEL_13;
    }

    return 4294954514;
  }

  return result;
}

size_t _compressX(uint64_t a1, CFDictionaryRef theDict, void *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  cf = 0;
  if (!*(a1 + 104))
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"DryRun");
      if ((a3 == 0) != (Value != 0))
      {
        return 4294950306;
      }

      v38 = Value;
      v36 = v10;
      v14 = CFDictionaryGetValue(theDict, @"Tiling");
      LODWORD(v40) = 0;
      Int32IfPresent = CMPhotoCFDictionaryGetInt32IfPresent();
      if (v14)
      {
        v37 = a10;
        v22 = CFGetTypeID(v14);
        if (v22 != CFBooleanGetTypeID() || (Int32IfPresent = CFBooleanGetValue(v14), Int32IfPresent))
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }
      }

      if (v38)
      {
        return OUTLINED_FUNCTION_3_27(Int32IfPresent, v16, v17, v18, v38, v19, v20, v21, v34, v35, v10, v37, v38, a3, v40, v41);
      }
    }

    v25 = CMPhotoCreatePixelBufferFromImage(*(a1 + 96), a3, &cf);
    v32 = cf;
    if (v25)
    {
      v24 = v25;
      if (!cf)
      {
        return v24;
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_3_27(v25, v26, v27, v28, cf, v29, v30, v31, v34, v35, v36, v37, v38, a3, v40, v41);
      v32 = cf;
      if (!cf)
      {
        return v24;
      }
    }

    CFRelease(v32);
    return v24;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

size_t ___compressMainWithAuxiliaryAsync_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"IncludeAlphaAuxiliaryImageWithOptions");
  if (CFDictionaryGetCount(Value) <= 0)
  {
    goto LABEL_22;
  }

  v3 = FigCFDictionaryGetValue();
  if (CFDictionaryContainsKey(Value, @"IncludeAlphaAuxiliaryImageWithOptions") || (v3 != 0) != (*(a1 + 48) == 0))
  {
    goto LABEL_22;
  }

  if (!v3)
  {
    v5 = *(a1 + 56);
    if (*(v5 + 16) || !*(v5 + 72))
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v4 = CFGetTypeID(v3);
  if (v4 != CMFormatDescriptionGetTypeID())
  {
LABEL_22:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    result = FigSignalErrorAtGM();
    goto LABEL_18;
  }

  if (*(*(a1 + 56) + 16))
  {
LABEL_21:
    result = 4294950195;
    goto LABEL_18;
  }

LABEL_10:
  OUTLINED_FUNCTION_10_19();
  if (v6)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  FigSemaphoreWaitRelative();
  OUTLINED_FUNCTION_10_19();
  if (v6)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  v8 = *(*(a1 + 64) + 144);
  if (v8 < 0)
  {
    goto LABEL_22;
  }

  result = _compressAuxImage_3(*(a1 + 56), v8, 3, v7, Value, *(a1 + 48), 0);
LABEL_18:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddSequenceDescriptionToWriter_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _moveCursorToPosition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addReferenceSequencesDescriptionToWriter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addReferenceSequencesDescriptionToWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addReferenceSequencesDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addImageToSequence_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _hasTrackReferenceOfType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodePixelBufferForIndex_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSuggestedPaddingForOptions(CFDictionaryRef theDict, unint64_t *a2, unint64_t *a3, double a4, double a5)
{
  if (!(a2 | a3))
  {
    return 0;
  }

  v42 = 0;
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = a4;
  v46 = a5;
  if (!theDict)
  {
    v15 = 0.0;
    v16 = 1;
    v17 = a5;
    v18 = a4;
    v19 = 0.0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(theDict, @"SourceCropRect");
  if (Value)
  {
    memset(&rect, 0, sizeof(rect));
    v11 = CGRectMakeWithDictionaryRepresentation(Value, &rect);
    v12.f64[0] = a5;
    v13 = a4;
    if (v11)
    {
      v12.f64[0] = rect.origin.x;
      result = CMPhotoApplyCropRectToRect(&v44, v12, rect.origin.y, rect.size.width, rect.size.height);
      if (result)
      {
        return result;
      }

      v13 = v45;
      v12.f64[0] = v46;
    }
  }

  else
  {
    v12.f64[0] = a5;
    v13 = a4;
  }

  result = CMPhotoGetTilingOption(theDict, vcvtad_u64_f64(v13), vcvtad_u64_f64(v12.f64[0]), 0, 0, &v42, &v42 + 1, &v43, 0);
  if (!result)
  {
    v15 = v44.f64[1];
    v19 = v44.f64[0];
    v18 = v45;
    v17 = v46;
    v16 = v42 == 0;
LABEL_11:
    v20 = round(v19);
    v21 = round(v15);
    v22 = round(v18);
    v23 = round(v17);
    if (v16)
    {
      v43 = kCMPhotoTilingDefaultTileSize;
      v24 = fmax(v22, v23);
      if (v24 <= 6144.0 || v22 * v23 <= 67108864.0)
      {
        v26 = 1024.0;
      }

      else
      {
        v43 = kCMPhotoTilingDefaultTileSizeAboveMaxPictureSize;
        v26 = 2048.0;
      }

      BYTE1(v42) = v24 >= v26;
    }

    v27 = v20;
    v28 = v21;
    if (v20 & 0x7F | v21 & 0x3F)
    {
      v36 = 0;
      v37 = 0;
      if (!a2)
      {
LABEL_31:
        result = 0;
        if (a3)
        {
          *a3 = v36;
        }

        return result;
      }
    }

    else
    {
      v29 = round(a4);
      v30 = round(a5);
      v31 = v22;
      v32 = v23;
      if (BYTE1(v42))
      {
        v33 = (v31 + v43 - 1) / v43;
        v34 = v32 + *(&v43 + 1) - 1;
        v32 = *(&v43 + 1);
        v31 = v43;
        v35 = v34 / *(&v43 + 1);
      }

      else
      {
        v33 = 1;
        v35 = 1;
      }

      v38 = v28 + v35 * v32;
      v39 = (v27 + v33 * v31) - v29;
      if (v39 < 0.0)
      {
        v39 = 0.0;
      }

      v37 = v39;
      v40 = v38 - v30;
      if (v40 < 0.0)
      {
        v40 = 0.0;
      }

      v36 = v40;
      if (!a2)
      {
        goto LABEL_31;
      }
    }

    *a2 = v37;
    goto LABEL_31;
  }

  return result;
}

uint64_t CMPhotoCompressionCreateContainerFromImageExt(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3 || !a1 || theDict && CFDictionaryContainsKey(theDict, @"DryRun"))
  {
    OUTLINED_FUNCTION_2();
    v14 = FigSignalErrorAtGM();
    v10 = 0;
  }

  else
  {
    CompressionSession = CMPhotoOneShotSessionPoolGetCompressionSession();
    v10 = CompressionSession;
    if (CompressionSession)
    {
      v11 = CMPhotoCompressionSessionOpenEmptyContainer(CompressionSession, a1);
      if (!v11)
      {
        v11 = CMPhotoCompressionSessionAddImage(v10);
        if (!v11 && (!a5 || (v11 = CMPhotoCompressionSessionAddThumbnail(v10)) == 0) && (!a6 || (v11 = CMPhotoCompressionSessionAddMetadataFromImageProperties(v10, 0, 0, a6)) == 0))
        {
          v11 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(v10);
        }
      }

      v12 = v11;
      v13 = CMPhotoCompressionSessionCloseContainer(v10);
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }
    }

    else
    {
      v14 = 4294950195;
    }
  }

  CMPhotoOneShotSessionPoolRecycleSession(v10);
  return v14;
}

uint64_t CMPhotoCompressionCreateDataContainerFromImage(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2)
  {
    if (a6)
    {
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        return 4294950305;
      }

      v13 = Mutable;
      v14 = CMPhotoCFDictionarySetInt(Mutable, @"ContainerFormat", a5);
      if (v14 || (v14 = CMPhotoCFDictionarySetInt(v13, @"BackingType", 1), v14))
      {
        ContainerFromImageExt = v14;
      }

      else
      {
        if (!a3)
        {
          v16 = 0;
          v17 = 0;
          goto LABEL_9;
        }

        MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, a1);
        if (MutableCopy)
        {
          v16 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, @"Tiling");
          CMPhotoCFDictionaryGetBooleanIfPresent();
          CFDictionaryRemoveValue(v16, @"ImageOrientation");
          CMPhotoCFDictionarySetInt(v16, @"MaxPixelSize", a3);
          v17 = a2;
LABEL_9:
          ContainerFromImageExt = CMPhotoCompressionCreateContainerFromImageExt(v13, a1, a2, v16, v17, a4);
          CFRelease(v13);
          if (!v16)
          {
            return ContainerFromImageExt;
          }

          v19 = v16;
LABEL_11:
          CFRelease(v19);
          return ContainerFromImageExt;
        }

        ContainerFromImageExt = 4294950305;
      }

      v19 = v13;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_2();
  }

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionWriteFileContainerFromImage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionWriteFileContainerFromImage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void CMPhotoCreateMPOFromJFIFData(uint64_t a1, int a2, CFDataRef theData, CFDataRef *a4, uint64_t a5, char a6)
{
  if (a1 && theData && a5 && a4 && (v11 = CFDataGetBytePtr(theData), v12 = &v11[CFDataGetLength(theData)], __PAIR64__(*(v12 - 1), *(v12 - 2)) == 0xD9000000FFLL))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v14 = Mutable;
      if (!_storeStreamLengths(a1, Mutable))
      {
        OUTLINED_FUNCTION_4_23();
        v58 = a1;
        v59 = theData;
        v56 = a5 + 1;
        v60 = 16 * (a5 + 1) + 58;
        v61 = a4;
        v65 = 0;
        v62 = a5;
        v63 = _writeInitialMPHeaderSegment;
        v64 = 0;
        v66 = a2;
        *(&v66 + 1) = 0;
        BYTE5(v66) = a6;
        v15 = OUTLINED_FUNCTION_15_13();
        v18 = malloc_type_calloc(v15, v16, v17);
        v19 = v18;
        if (!v18 || (v18[5] = _mpoScannerCallback, v18[6] = &v58, v18[7] = 0, v18[8] = 0, v20 = CFDataGetBytePtr(theData), v21 = CFDataGetLength(theData), CMPhotoJFIFScannerRun(v19, v20, v21), v22))
        {
LABEL_40:
          if (v19)
          {
            free(v19);
          }
        }

        else
        {
          free(v19);
          v23 = v64;
          v24 = v65;
          if (!_storeStreamLengths(a1, v14))
          {
            v54 = v24;
            v55 = v23;
            v25 = a4;
            v26 = a5;
            do
            {
              v27 = *v25;
              if (a2)
              {
                Length = CFDataGetLength(*v25);
                v58 = 0;
                CFDataGetBytePtr(v27);
                if (CMByteStreamAppend())
                {
                  goto LABEL_37;
                }

                if (v58 != Length)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v58 = a1;
                v59 = v27;
                v60 = 0;
                v61 = a4;
                v66 = 0x100000000;
                v62 = a5;
                v64 = 0;
                v65 = 0;
                v63 = 0;
                OUTLINED_FUNCTION_15_13();
                OUTLINED_FUNCTION_4_23();
                v32 = malloc_type_calloc(v29, v30, v31);
                v19 = v32;
                if (!v32)
                {
                  goto LABEL_40;
                }

                v32[5] = _mpoScannerCallback;
                v32[6] = &v58;
                v32[7] = 0;
                v32[8] = 0;
                BytePtr = CFDataGetBytePtr(v27);
                v34 = CFDataGetLength(v27);
                CMPhotoJFIFScannerRun(v19, BytePtr, v34);
                if (v35)
                {
                  goto LABEL_40;
                }

                free(v19);
              }

              if (_storeStreamLengths(a1, v14))
              {
                goto LABEL_37;
              }

              v25 += 2;
              --v26;
            }

            while (v26);
            v58 = 0;
            if (CFArrayGetCount(v14) == a5 + 2)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
              Size = CMPhotoCFNumberGetSize(ValueAtIndex);
              if ((Size & 0x8000000000000000) != 0)
              {
LABEL_15:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_12();
                FigSignalErrorAtGM();
                goto LABEL_37;
              }

              if (a5 != -1)
              {
                v38 = Size;
                v39 = 0;
                v40 = Size + v54 + 4;
                v41 = (Size + v55);
                while (1)
                {
                  v42 = v39 + 1;
                  v43 = CFArrayGetValueAtIndex(v14, v39 + 1);
                  v44 = CMPhotoCFNumberGetSize(v43);
                  v45 = v44 - v38;
                  if (v44 <= v38 || v45 >= 0x7FFFFFFF)
                  {
                    goto LABEL_15;
                  }

                  v46 = v44;
                  v68 = bswap32(v45);
                  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                  {
                    break;
                  }

                  v47 = OUTLINED_FUNCTION_17_11();
                  if (v48(v47))
                  {
                    break;
                  }

                  if (v58 != 4)
                  {
                    goto LABEL_15;
                  }

                  v49 = v38 - v41;
                  if (!v39)
                  {
                    v49 = 0;
                  }

                  if (v49 >= 0x7FFFFFFF)
                  {
                    goto LABEL_15;
                  }

                  v67 = bswap32(v49);
                  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                  {
                    v50 = v40 + 4;
                    v51 = OUTLINED_FUNCTION_17_11();
                    if (!v52(v51))
                    {
                      if (v58 != 4)
                      {
                        goto LABEL_15;
                      }

                      v40 = v50 + 12;
                      v38 = v46;
                      ++v39;
                      if (v56 != v42)
                      {
                        continue;
                      }
                    }
                  }

                  break;
                }
              }
            }
          }
        }
      }

LABEL_37:
      CFRelease(v14);
    }

    OUTLINED_FUNCTION_20_8();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_20_8();

    FigSignalErrorAtGM();
  }
}

uint64_t CMPhotoJFIFScannerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 | a3)
  {
    if (a5)
    {
      OUTLINED_FUNCTION_4_23();
      v10 = OUTLINED_FUNCTION_15_13();
      v13 = malloc_type_calloc(v10, v11, v12);
      if (v13)
      {
        v14 = v13;
        result = 0;
        v14[5] = a1;
        v14[6] = a2;
        v14[7] = a3;
        v14[8] = a4;
        *a5 = v14;
      }

      else
      {
        return 4294950305;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

void _mpoScannerCallback()
{
  OUTLINED_FUNCTION_21_8();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (!*(v1 + 68) && (v0 - 226) <= 0xFFFFFFFD && *(v1 + 67))
  {
    MEMORY[0x1EEE9AC00]();
    (v2[5])(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v2[3], v2[4], v2 + 6, v2 + 7);
    if (CMByteStreamAppend())
    {
      goto LABEL_32;
    }

    if (v13 != v2[2])
    {
      goto LABEL_35;
    }

    *(v2 + 68) = 1;
    if (*(v2 + 69))
    {
      v9 = *v2;
      v18 = 0;
      v15 = -7425;
      v16 = 0;
      v17 = 34;
      if (!v9)
      {
        goto LABEL_32;
      }

      v14 = 0;
      if (CMByteStreamAppend() || v14 != 4 || CMByteStreamAppend() || v14 != 28 || CMByteStreamAppend() || v14 != 4)
      {
        goto LABEL_32;
      }
    }
  }

  BytePtr = CFDataGetBytePtr(v2[1]);
  if (v5 == 226 && v4 >= 6uLL && !strcmp(&BytePtr[v7 + 4], "MPF"))
  {
    if (*(v2 + 64))
    {
      goto LABEL_32;
    }

LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigSignalErrorAtGM();
    goto LABEL_32;
  }

  v11 = &BytePtr[v7];
  if (CMByteStreamAppend())
  {
    goto LABEL_32;
  }

  if (v13 != v4 + 2)
  {
    goto LABEL_35;
  }

  switch(v5)
  {
    case 216:
      *(v2 + 67) = 1;
      break;
    case 218:
      if (!*(v2 + 68))
      {
        goto LABEL_35;
      }

      v12 = CFDataGetLength(v2[1]) - (v7 + v4 + 2);
      if (!CMByteStreamAppend() && v13 != v12)
      {
        goto LABEL_35;
      }

      break;
    case 224:
      if (v4 >= 0x10 && !strcmp(v11 + 4, "JFIF"))
      {
        *(v2 + 65) = 1;
      }

      break;
    case 225:
      if (v4 >= 0x10uLL && !memcmp(v11 + 4, "Exif", 6uLL))
      {
        *(v2 + 66) = 1;
      }

      break;
    default:
      break;
  }

LABEL_32:
  OUTLINED_FUNCTION_22_5();
}

void CMPhotoJFIFScannerRun(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (!a1 || !a2 || *a1)
  {
    goto LABEL_95;
  }

  v5 = a3;
  if (!a3)
  {
    goto LABEL_94;
  }

  v37 = ~a2;
  LODWORD(v6) = -17105;
  v7 = 3;
  v8 = 208;
  v9 = a2;
  v10 = a3;
LABEL_6:
  while (2)
  {
    switch(*(a1 + 4))
    {
      case 0:
        if (*v9 != 255)
        {
          goto LABEL_96;
        }

        --v10;
        ++v9;
        *(a1 + 4) = 1;
        if (!v10)
        {
          goto LABEL_94;
        }

        continue;
      case 1:
        v19 = *v9++;
        v18 = v19;
        --v10;
        if (v19 == 216)
        {
          *(a1 + 24) = -40;
          if (*(a1 + 40))
          {
            v20 = OUTLINED_FUNCTION_8_20();
            v17 = v21(v20);
            v8 = 208;
            if (v17 == v6)
            {
              goto LABEL_94;
            }

            if (v17)
            {
              goto LABEL_97;
            }
          }

LABEL_29:
          *(a1 + 4) = 0;
          if (!v10)
          {
            goto LABEL_94;
          }
        }

        else
        {
          *(a1 + 24) = v18;
          *(a1 + 4) = 2;
          *(a1 + 28) = v18 == 218;
          if (!v10)
          {
            goto LABEL_94;
          }
        }

        continue;
      case 2:
        v14 = *v9++;
        *(a1 + 26) = v14 << 8;
        --v10;
        *(a1 + 4) = v7;
        if (!v10)
        {
          goto LABEL_94;
        }

        continue;
      case 3:
        v15 = *(a1 + 26) | *v9;
        *(a1 + 26) = v15;
        if (v15 >= 2u)
        {
          *(a1 + 26) = v15 - 2;
          ++v9;
          v16 = *(a1 + 40);
          if (v16)
          {
            v17 = v16(a1, v9 - a2 + *(a1 + 16) - 4, *(a1 + 24), v15, *(a1 + 48));
            v8 = 208;
            if (v17 == v6)
            {
              goto LABEL_94;
            }

            if (v17)
            {
              goto LABEL_97;
            }
          }

          --v10;
          *(a1 + 4) = 4;
          if (!v10)
          {
            goto LABEL_94;
          }

          continue;
        }

LABEL_96:
        v17 = -17102;
LABEL_97:
        *a1 = v17;
LABEL_95:
        OUTLINED_FUNCTION_105();
        return;
      case 4:
        v11 = *(a1 + 26);
        if (v10 >= v11)
        {
          v12 = *(a1 + 26);
        }

        else
        {
          v12 = v10;
        }

        v10 -= v12;
        v9 += v12;
        v13 = v11 - v12;
        *(a1 + 26) = v13;
        if (v13)
        {
          goto LABEL_89;
        }

        if (!*(a1 + 28))
        {
          goto LABEL_29;
        }

        *(a1 + 32) = v9 - a2 + *(a1 + 16);
        *(a1 + 4) = 5;
        if (!v10)
        {
          goto LABEL_94;
        }

        continue;
      case 5:
        if (!*(a1 + 56))
        {
          if (v10 < 2)
          {
            v10 = 1;
            goto LABEL_88;
          }

          v30 = v9;
LABEL_72:
          v9 = &v30[v10];
          if (v30[v10 - 2] == 255 && *(v9 - 1) == 217)
          {
            goto LABEL_74;
          }

          if (*v30 == 255)
          {
            v34 = v30[1];
            if (v34 == 218)
            {
              *(a1 + 4) = 0;
              v9 = v30;
              if (v10)
              {
                continue;
              }

              goto LABEL_94;
            }

            if (v34 == 217)
            {
              v9 = v30 + 2;
              v10 -= 2;
              goto LABEL_83;
            }
          }

          v9 = v30;
          goto LABEL_88;
        }

        v22 = 0;
        v7 = *(a1 + 8);
        v23 = v7;
LABEL_33:
        v6 = 0;
        v24 = 1;
        while (v23 == 1)
        {
          v25 = v9[v6];
          if (v25 == (*(a1 + 12) | v8))
          {
            v17 = (*(a1 + 56))(a1, &v9[v37 + v6 + *(a1 + 16)], &v9[v37 + v6 + *(a1 + 16) - *(a1 + 32)]);
            if (v17)
            {
              goto LABEL_97;
            }

            v7 = 0;
            v28 = &v9[v6];
            *(a1 + 12) = (*(a1 + 12) + 1) & 7;
            goto LABEL_50;
          }

          if (v25 != 217)
          {
            v28 = &v9[v6];
            if (v25 == 218)
            {
              v7 = 2;
            }

            else
            {
              v7 = 0;
            }

LABEL_51:
            *(a1 + 8) = v7;
            v23 = v7;
LABEL_52:
            v29 = v9 - v28 + v10;
            v10 = v29 - 1;
            if (v29)
            {
              v9 = v28 + 1;
            }

            else
            {
              v9 = v28;
            }

            if (v29 < 2)
            {
              OUTLINED_FUNCTION_13_16();
              if (!v22)
              {
                goto LABEL_94;
              }

LABEL_74:
              v10 = 0;
              goto LABEL_83;
            }

            goto LABEL_33;
          }

          *(a1 + 12) = 2;
          ++v6;
          --v24;
          v23 = 1;
          v22 = 1;
          if (v10 + v24 < 2)
          {
            v10 = 0;
            v9 += v6;
            OUTLINED_FUNCTION_13_16();
LABEL_83:
            if (*(a1 + 40))
            {
              v35 = OUTLINED_FUNCTION_8_20();
              v17 = v36(v35);
              v8 = 208;
              if (v17)
              {
                goto LABEL_97;
              }
            }

            *(a1 + 4) = 6;
            if (!v10)
            {
              goto LABEL_94;
            }

            goto LABEL_6;
          }
        }

        if (v23 != 2)
        {
          if (v23)
          {
            v28 = &v9[v6];
            if (!&v9[v6])
            {
              v26 = v5;
              v27 = 0;
              goto LABEL_63;
            }

            goto LABEL_52;
          }

          v26 = v5;
          v27 = &v9[v6];
          v28 = memchr(&v9[v6], 255, v10 - v6);
          if (!v28)
          {
            goto LABEL_63;
          }

          v7 = 1;
          v5 = v26;
LABEL_50:
          v8 = 208;
          goto LABEL_51;
        }

        v26 = v5;
        v27 = &v9[v6];
LABEL_63:
        v10 -= v6;
        if (v7 == 2)
        {
          v31 = v10;
        }

        else
        {
          v31 = 0;
        }

        if (v7 == 2)
        {
          v32 = 0;
        }

        else
        {
          v32 = v10;
        }

        v9 = &v27[v32];
        if (!v22 && v31 > 1)
        {
          v5 = v26;
          OUTLINED_FUNCTION_13_16();
          goto LABEL_72;
        }

        v5 = v26;
        OUTLINED_FUNCTION_13_16();
        if (v22)
        {
          v10 = v33;
          goto LABEL_83;
        }

        if (v33)
        {
LABEL_88:
          --v10;
          ++v9;
LABEL_89:
          if (v10)
          {
            continue;
          }
        }

LABEL_94:
        *a1 = 0;
        *(a1 + 16) += v5;
        goto LABEL_95;
      case 6:
        goto LABEL_94;
      default:
        goto LABEL_89;
    }
  }
}

uint64_t CMPhotoCreateDataFromJFIFSampleBufferAndInjectAppMarkers(const __CFAllocator *a1, CMSampleBufferRef sbuf, uint64_t a3, const __CFData **a4, char *a5, CFDataRef *a6)
{
  if (!a4)
  {

    return CMPhotoDataCreateFromSampleBuffer(a1, sbuf, 1, a6);
  }

  result = 4294950306;
  if (!a5 || !sbuf || !a6)
  {
    return result;
  }

  if (a3 >= 1)
  {
    v13 = 0;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    while (1)
    {
      v17 = *v14++;
      if ((v17 & 0xF0) != 0xE0)
      {
        return 4294950306;
      }

      v18 = *v15++;
      v13 += CFDataGetLength(v18);
      if (!--v16)
      {
        goto LABEL_14;
      }
    }
  }

  v13 = 0;
LABEL_14:
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (!DataBuffer)
  {
    return 4294950306;
  }

  v20 = DataBuffer;
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v22 = v13 + 4 * a3;
  Mutable = CFDataCreateMutable(a1, v22 + DataLength);
  if (!Mutable)
  {
    return 4294950305;
  }

  v24 = Mutable;
  CFDataSetLength(Mutable, v22 + DataLength);
  v35[0] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v36 = 0;
  v37 = 0u;
  v38 = 0u;
  MutableBytePtr = CFDataGetMutableBytePtr(v24);
  OUTLINED_FUNCTION_4_23();
  v25 = OUTLINED_FUNCTION_15_13();
  v28 = malloc_type_calloc(v25, v26, v27);
  if (!v28)
  {
    CFRelease(v24);
    return 4294950305;
  }

  v29 = v28;
  v28[5] = _appInjectionScannerCallback;
  v28[6] = v35;
  v28[7] = 0;
  v28[8] = 0;
  *a6 = v24;
  if (DataLength)
  {
    v30 = 0;
    do
    {
      v34 = 0;
      if (CMBlockBufferGetDataPointer(v20, v30, &v38, 0, &v34))
      {
        break;
      }

      v31 = v37;
      *(&v38 + 1) = v34;
      *(&v37 + 1) = v37;
      v30 = v37;
      if (!v36)
      {
        CMPhotoJFIFScannerRun(v29, v34, v38);
        if (v33)
        {
          break;
        }

        v31 = *(&v37 + 1);
        v30 = v37;
      }

      v32 = v38 - (v30 - v31);
      if (v38 != v30 - v31)
      {
        memcpy(MutableBytePtr, (*(&v38 + 1) + v30 - v31), v38 - (v30 - v31));
        v30 = v37 + v32;
        *&v37 = v37 + v32;
        MutableBytePtr += v32;
      }
    }

    while (v30 < DataLength);
  }

  free(v29);
  return 0;
}

void CMPhotoJFIFCreateStrippedBufferFromByteStream(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, unint64_t *a7, CMBlockBufferRef *a8)
{
  v28 = 0;
  blockBufferOut = 0;
  v16 = CFGetAllocator(a1);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = a2;
  if (!CMBlockBufferCreateEmpty(v16, a4 + 1, 0, &blockBufferOut))
  {
    v23[1] = MEMORY[0x1E69E9820];
    v23[2] = *"";
    v23[3] = __CMPhotoJFIFCreateStrippedBufferFromByteStream_block_invoke;
    v23[4] = &unk_1E77A34C0;
    v23[5] = &v24;
    v23[6] = a1;
    v23[7] = blockBufferOut;
    v17 = OUTLINED_FUNCTION_20_0();
    if (!CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v17, v18, a4, a5, a6, a7, v19))
    {
      v20 = v25[3];
      v21 = a2 + a3 - v20;
      if (v21 < 1)
      {
LABEL_8:
        *a8 = blockBufferOut;
        blockBufferOut = 0;
        goto LABEL_9;
      }

      v23[0] = 0;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v22 && !v22(a1, v21, v20, &v28, v23))
      {
        if (v23[0] == v21)
        {
          if (!CMBlockBufferAppendBufferReference(blockBufferOut, v28, 0, 0, 0))
          {
            goto LABEL_8;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_12();
          FigSignalErrorAtGM();
        }
      }
    }
  }

LABEL_9:
  if (v28)
  {
    CFRelease(v28);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  _Block_object_dispose(&v24, 8);
  OUTLINED_FUNCTION_20_8();
}

void CMPhotoCompressedAuxImageStorageCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, char a22, int a23, uint64_t a24, uint64_t a25, int a26, void *a27)
{
  OUTLINED_FUNCTION_21_8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = malloc_type_malloc(0x58uLL, 0x1060040031647FEuLL);
  if (v43)
  {
    v44 = v43;
    if (v42)
    {
      v45 = CFRetain(v42);
    }

    else
    {
      v45 = 0;
    }

    *v44 = v45;
    v44[8] = v40;
    v44[9] = v32;
    *(v44 + 3) = v30;
    if (v38)
    {
      v46 = CFRetain(v38);
    }

    else
    {
      v46 = 0;
    }

    *(v44 + 2) = v46;
    if (v36)
    {
      v47 = CFRetain(v36);
    }

    else
    {
      v47 = 0;
    }

    *(v44 + 3) = v47;
    if (v34)
    {
      v48 = CFRetain(v34);
    }

    else
    {
      v48 = 0;
    }

    *(v44 + 4) = v48;
    if (v28)
    {
      v49 = CFRetain(v28);
    }

    else
    {
      v49 = 0;
    }

    *(v44 + 5) = v49;
    if (a21)
    {
      v50 = CFRetain(a21);
    }

    else
    {
      v50 = 0;
    }

    *(v44 + 6) = v50;
    v44[56] = a22;
    *(v44 + 15) = a23;
    *(v44 + 8) = a24;
    *(v44 + 9) = a25;
    *(v44 + 20) = a26;
    *a27 = v44;
  }

  OUTLINED_FUNCTION_22_5();
}

void CMPhotoFilterCompressedAuxImageStorageArray(CFArrayRef theArray, const __CFArray *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_105();

    FigSignalErrorAtGM();
  }

  else
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        while (1)
        {
          if (cf)
          {
            v7 = CFArrayGetCount(cf);
            if (v7 >= 1)
            {
              break;
            }
          }

LABEL_14:
          v11 = OUTLINED_FUNCTION_20_0();
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
          CMPhotoCompressedAuxImageStorageDestroy(ValueAtIndex);
          v14 = OUTLINED_FUNCTION_20_0();
          CFArrayRemoveValueAtIndex(v14, v15);
LABEL_15:
          if (v6-- <= 1)
          {
            goto LABEL_17;
          }
        }

        v8 = v7 + 1;
        while (1)
        {
          v9 = CFArrayGetValueAtIndex(cf, v8 - 2);
          if (!v9)
          {
            break;
          }

          v10 = CFGetTypeID(v9);
          if (v10 != CFDictionaryGetTypeID())
          {
            break;
          }

          if (!CMPhotoCFDictionaryGetIntIfPresent())
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            FigSignalErrorAtGM();
            break;
          }

          if (v6 == 1)
          {
            goto LABEL_15;
          }

          if (--v8 < 2)
          {
            goto LABEL_14;
          }
        }
      }
    }

LABEL_17:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t CMPhotoJFIFUtilitiesMergeImageComponents(const __CFAllocator *a1, const void *a2, uint64_t a3, const __CFAllocator *a4, CFArrayRef theArray, CFTypeRef a6, uint64_t a7)
{
  v8 = v7;
  v68[1] = *MEMORY[0x1E69E9840];
  v64 = 0;
  if (!theArray || (Count = CFArrayGetCount(theArray)) == 0)
  {
    v23 = CMPhotoByteStreamWriteStreamCreate(a1, 0, a2);
    if (v23)
    {
      v20 = v23;
      if (a6)
      {
        a6 = CFRetain(a6);
      }

      v16 = 0;
      v18 = 0;
      v22 = 1;
      goto LABEL_11;
    }

    return 4294950305;
  }

  v16 = Count;
  Mutable = CFDataCreateMutable(a1, 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v18 = Mutable;
  v19 = CMPhotoMutableDataWriteStreamCreate(a1, Mutable);
  if (!v19)
  {
    a6 = 0;
    a7 = 4294950305;
    goto LABEL_71;
  }

  v20 = v19;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  a6 = MutableCopy;
  if (!MutableCopy)
  {
LABEL_77:
    a7 = 4294950305;
    goto LABEL_70;
  }

  CFDictionaryAddValue(MutableCopy, @"kCGImageWriteExtendedAPP0", *MEMORY[0x1E695E4D0]);
  v22 = 0;
LABEL_11:
  if (!CFWriteStreamOpen(v20) || !CGImageWriteEXIFJPEGWithMetadata())
  {
    fig_log_get_emitter();
    a7 = FigSignalErrorAtGM();
    goto LABEL_70;
  }

  CFWriteStreamClose(v20);
  if (v22)
  {
    a7 = 0;
    goto LABEL_70;
  }

  v54 = malloc_type_calloc(v16, 0x10uLL, 0x1060040ADAFC7CAuLL);
  if (!v54)
  {
    goto LABEL_77;
  }

  v50 = a2;
  v51 = v20;
  v52 = a6;
  v53 = v18;
  if (v16 < 1)
  {
    v58 = 0;
    v56 = 0;
LABEL_48:
    v18 = v53;
    v47 = v54;
    CMPhotoCreateMPOFromJFIFData(v50, v58, v53, v54, v16, v56);
    OUTLINED_FUNCTION_12_18();
    v20 = v51;
    a6 = v52;
    goto LABEL_57;
  }

  v24 = 0;
  v56 = 0;
  v58 = 0;
  a3 = 29;
  v25 = theArray;
  v26 = v54 + 1;
  v57 = v16;
  a4 = a1;
  while (1)
  {
    v63 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v25, v24);
    v28 = ValueAtIndex;
    if (*(ValueAtIndex + 9))
    {
      if (CMPhotoDataCreateFromSampleBuffer(a4, *ValueAtIndex, *(ValueAtIndex + 8) == 0, &v63))
      {
        goto LABEL_46;
      }

      v58 = 1;
      goto LABEL_41;
    }

    v66 = 0;
    v67 = 0;
    v68[0] = 0;
    v62 = 0;
    v61 = 0;
    if (CMPhotoAuxiliaryImageMetadataCreateXMPData(a4, ValueAtIndex[2], ValueAtIndex[4], *(ValueAtIndex + 3), ValueAtIndex[3], &v64))
    {
LABEL_46:
      OUTLINED_FUNCTION_12_18();
      goto LABEL_56;
    }

    Length = CFDataGetLength(v64);
    v30 = CFDataCreateMutable(a4, Length + 29);
    a4 = v30;
    if (!v30)
    {
      v8 = 0;
      a3 = 0;
      goto LABEL_54;
    }

    CFDataAppendBytes(v30, "http://ns.adobe.com/xap/1.0/", 29);
    BytePtr = CFDataGetBytePtr(v64);
    v32 = CFDataGetLength(v64);
    CFDataAppendBytes(a4, BytePtr, v32);
    v66 = a4;
    LOBYTE(v61) = -31;
    v33 = v28[6];
    if (v33)
    {
      break;
    }

    v59 = 0;
    v37 = &v67;
    v38 = 1;
LABEL_28:
    a7 = v28[5];
    if (a7)
    {
      v39 = v25;
      v40 = CFDataGetLength(v28[5]);
      if ((v40 - 65519) < 0xFFFFFFFFFFFF0001)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_12();
        v46 = FigSignalErrorAtGM();
        v8 = 0;
        if (v46)
        {
          a7 = v46;
LABEL_52:
          v16 = v57;
          a3 = v59;
          goto LABEL_56;
        }
      }

      else
      {
        v41 = v40;
        v42 = CFGetAllocator(a7);
        v43 = CFDataCreateMutable(v42, 0);
        v8 = v43;
        if (!v43)
        {
          a7 = 4294950305;
          goto LABEL_52;
        }

        CFDataAppendBytes(v43, "ICC_PROFILE", 12);
        *bytes = 257;
        CFDataAppendBytes(v8, bytes, 2);
        v44 = CFDataGetBytePtr(a7);
        CFDataAppendBytes(v8, v44, v41);
      }

      v25 = v39;
      *v37 = v8;
      *(&v61 + v38++) = -30;
    }

    else
    {
      v8 = 0;
    }

    v45 = CMPhotoCreateDataFromJFIFSampleBufferAndInjectAppMarkers(a1, *v28, v38, &v66, &v61, &v63);
    v16 = v57;
    a3 = v59;
    if (v45)
    {
      a7 = v45;
      goto LABEL_56;
    }

    if (v64)
    {
      CFRelease(v64);
      v64 = 0;
    }

    CFRelease(a4);
    a4 = a1;
    if (v8)
    {
      CFRelease(v8);
    }

    if (v59)
    {
      CFRelease(v59);
    }

    a3 = 29;
LABEL_41:
    *(v26 - 1) = v63;
    *v26 = 0;
    v26 += 4;
    if (v16 == ++v24)
    {
      goto LABEL_48;
    }
  }

  v34 = CFGetAllocator(v28[6]);
  v35 = CFDataCreateMutable(v34, 0);
  a3 = v35;
  if (v35)
  {
    CFDataAppendBytes(v35, "urn:iso:std:iso:ts:21496:-1", 28);
    v36 = CMPhotoWriteFlexRangeBinaryMetadata(v33, a3);
    if (v36)
    {
      a7 = v36;
      CFRelease(a3);
      v8 = 0;
      a3 = 0;
      goto LABEL_56;
    }

    v59 = a3;
    v67 = a3;
    HIBYTE(v61) = -30;
    v56 = 1;
    v37 = v68;
    v38 = 2;
    goto LABEL_28;
  }

  v8 = 0;
LABEL_54:
  a7 = 4294950305;
LABEL_56:
  a6 = v52;
  v18 = v53;
  v20 = v51;
  v47 = v54;
LABEL_57:
  if (v16 >= 1)
  {
    v48 = v47;
    do
    {
      if (*v48)
      {
        CFRelease(*v48);
        *v48 = 0;
      }

      v48 += 2;
      --v16;
    }

    while (v16);
  }

  free(v47);
  if (v64)
  {
    CFRelease(v64);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (a3)
  {
    CFRelease(a3);
  }

LABEL_70:
  CFRelease(v20);
  if (v18)
  {
LABEL_71:
    CFRelease(v18);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return a7;
}

uint64_t CMPhotoCopyDebugMetadataFromJFIFByteStream(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _OWORD *a5, CFDataRef *a6)
{
  v15 = 0;
  v14 = 0uLL;
  theData = 0;
  v9 = _copyChunkedHeadersFromJFIFByteStream(a1, a2, a3, 227, "iOS_Debug", 12, 2, &v15, &v14, &theData);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    if (!theData)
    {
      v11 = 0;
      goto LABEL_13;
    }

    BytePtr = CFDataGetBytePtr(theData);
    v11 = malloc_type_malloc(0xCuLL, 0xC84AF006uLL);
    memcpy(v11, BytePtr, 0xCuLL);
    if (strncmp(v11, "iOSCustom", 0xCuLL))
    {
      if (a4)
      {
        *a4 = v15;
      }

      if (a5)
      {
        *a5 = v14;
      }

      if (a6)
      {
        *a6 = theData;
        theData = 0;
        goto LABEL_13;
      }
    }
  }

  if (theData)
  {
    CFRelease(theData);
  }

LABEL_13:
  free(v11);
  return v9;
}

uint64_t CMPhotoGetXMPLocationFromJFIFByteStream()
{
  OUTLINED_FUNCTION_11_17();
  v4 = v3;
  v28 = *MEMORY[0x1E69E9840];
  v27 = xmmword_1E77A3580;
  v26[0] = 29;
  v26[1] = 35;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v21 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2800000000;
  v18 = 0;
  v19 = 0;
  v14 = -7711;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = *"";
  v13[2] = __CMPhotoGetXMPLocationFromJFIFByteStream_block_invoke;
  v13[3] = &unk_1E77A3598;
  v13[4] = &v15;
  v13[5] = &v22;
  v13[6] = v20;
  v13[7] = v5;
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v6, v7, 2, &v14, &v27, v26, v13);
  if (!MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
    if (v4)
    {
      *v4 = *(v23 + 24);
    }

    if (v2)
    {
      OUTLINED_FUNCTION_18_7();
      *v2 = v9;
    }

    if (v1)
    {
      if (*(v23 + 24))
      {
        v10 = v16[3] + 29;
      }

      else
      {
        v10 = 0;
      }

      *v1 = v10;
    }

    if (v0)
    {
      if (*(v23 + 24))
      {
        v11 = v16[4] - 29;
      }

      else
      {
        v11 = 0;
      }

      *v0 = v11;
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
  return MarkersWithSignaturesInJFIFByteStreamWithHandler;
}

uint64_t CMPhotoCopyExtendedXMPPayloadsFromJFIFByteStream(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 35;
  v19 = "http://ns.adobe.com/xmp/extension/";
  v3 = &v14;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v4 = 4294950306;
  if (a1 && a3)
  {
    v13 = -31;
    OUTLINED_FUNCTION_6_23();
    v12[1] = *"";
    v12[2] = __CMPhotoCopyExtendedXMPPayloadsFromJFIFByteStream_block_invoke;
    v12[3] = &unk_1E77A35C0;
    v12[4] = &v14;
    v12[5] = v6;
    v12[6] = a3;
    MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v6, v7, 1, &v13, &v19, &v18, v12);
    v3 = v15;
    if (MarkersWithSignaturesInJFIFByteStreamWithHandler)
    {
      v4 = MarkersWithSignaturesInJFIFByteStreamWithHandler;
    }

    else
    {
      v9 = v15[3];
      if (v9 && CFArrayGetCount(v9) > 0)
      {
        v4 = 0;
        v3 = v15;
        *a3 = v15[3];
        v3[3] = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v4 = FigSignalErrorAtGM();
        v3 = v15;
      }
    }
  }

  v10 = v3[3];
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v14, 8);
  return v4;
}

uint64_t CMPhotoGetDQTLocationFromJFIFByteStream(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2800000000;
  v21 = 0;
  v22 = 0;
  OUTLINED_FUNCTION_5_22();
  v16[1] = *"";
  v16[2] = __CMPhotoGetDQTLocationFromJFIFByteStream_block_invoke;
  v16[3] = &unk_1E77A35E8;
  v16[4] = v9;
  v16[5] = v8;
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v10, v11, 1, &v17, 0, 0, v16);
  if (!MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
    if (a3)
    {
      *a3 = *(v24 + 24);
    }

    if (a4)
    {
      if (*(v24 + 24))
      {
        v13 = v19[3];
      }

      else
      {
        v13 = 0;
      }

      *a4 = v13;
    }

    if (a5)
    {
      if (*(v24 + 24))
      {
        v14 = v19[4];
      }

      else
      {
        v14 = 0;
      }

      *a5 = v14;
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v23, 8);
  return MarkersWithSignaturesInJFIFByteStreamWithHandler;
}

uint64_t CMPhotoCopyIPTCFromJFIFByteStream(const __CFAllocator *a1, uint64_t a2, uint64_t a3, _BYTE *a4, __CFData **a5)
{
  v33 = 14;
  v34 = "Photoshop 3.0";
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2000000000;
  v32 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2800000000;
  v29 = 0;
  v30 = 0;
  v8 = OUTLINED_FUNCTION_10_20(a1, a2);
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v8, v9, v10, v11, v12, v13, v14);
  if (MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
    v24 = MarkersWithSignaturesInJFIFByteStreamWithHandler;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_18_7();
  if (v16)
  {
    v17 = v27[4];
    Mutable = CFDataCreateMutable(a1, 0);
    if (!Mutable)
    {
      v24 = 4294950305;
      goto LABEL_14;
    }

    v19 = Mutable;
    if (v17 - 14 < 0)
    {
      v24 = 4294950190;
    }

    else
    {
      CFDataSetLength(Mutable, v17 - 14);
      CFDataGetMutableBytePtr(v19);
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v20 = OUTLINED_FUNCTION_20_0();
        v22 = v21(v20);
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          if (v17 == 14)
          {
            if (!a4)
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }

          v24 = 4294950194;
        }
      }

      else
      {
        v24 = 4294954514;
      }
    }

LABEL_13:
    CFRelease(v19);
    goto LABEL_14;
  }

  v19 = 0;
  if (a4)
  {
LABEL_9:
    OUTLINED_FUNCTION_18_7();
    *a4 = v23;
  }

LABEL_10:
  v24 = 0;
  if (!a5)
  {
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *a5 = v19;
LABEL_14:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v31, 8);
  return v24;
}

uint64_t CMPhotoJFIFCopyCustomMetadataFromCFData(const __CFData *a1, CFTypeRef *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (!a1)
  {
    return 4294950306;
  }

  v5 = BytePtr;
  Length = CFDataGetLength(a1);
  if (Length < 8)
  {
    return 4294950194;
  }

  v7 = Length;
  v8 = *v5;
  v9 = *v5 + 8;
  if (v9 > Length)
  {
    return 4294950194;
  }

  v10 = CFStringCreateWithBytes(0, v5 + 8, *v5, 0x8000100u, 1u);
  if (!v10)
  {
    return 4294950305;
  }

  v11 = v10;
  v12 = v8 + 16;
  if (v8 + 16 > v7 || (v13 = *&v5[v9], v14 = v13 + v12, v13 + v12 > v7))
  {
    v24 = 4294950194;
LABEL_26:
    v21 = v11;
LABEL_18:
    CFRelease(v21);
    return v24;
  }

  v15 = CFStringCreateWithBytes(0, &v5[v12], v13, 0x8000100u, 1u);
  if (!v15)
  {
    v24 = 4294950305;
    goto LABEL_26;
  }

  v16 = v15;
  v17 = v14 + 8;
  if (v14 + 8 > v7 || *&v5[v14] + v17 > v7)
  {
    v21 = 0;
    v23 = 0;
    v24 = 4294950194;
  }

  else
  {
    v18 = CFDataGetLength(a1) - v17;
    v19 = *MEMORY[0x1E695E480];
    v20 = CFDataGetBytePtr(a1);
    v21 = CFDataCreateWithBytesNoCopy(v19, &v20[v17], v18, *MEMORY[0x1E695E498]);
    Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v23 = Mutable;
    if (Mutable)
    {
      if (v21)
      {
        CFDictionarySetValue(Mutable, @"Data", v21);
      }

      CFDictionarySetValue(v23, @"URI", v11);
      CFDictionarySetValue(v23, @"Name", v16);
      v24 = 0;
      if (a2)
      {
        *a2 = CFRetain(v23);
      }
    }

    else
    {
      v24 = 4294950305;
    }
  }

  CFRelease(v11);
  CFRelease(v16);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v21)
  {
    goto LABEL_18;
  }

  return v24;
}

BOOL _appInjectionScannerCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t __CMPhotoJFIFCreateStrippedBufferFromByteStream_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SlimEncodeFrame(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v92 = *MEMORY[0x1E69E9840];
  v7 = *v1;
  if (*v1 < 0x10u)
  {
    return 4294951896;
  }

  v8 = v1;
  v9 = *(v1 + 4);
  if (v9 < 0x10)
  {
    return 4294951896;
  }

  v10 = *(v1 + 32);
  v11 = v10 == 825437747 || v10 == 846624121;
  v12 = v11 || v10 == 875704422;
  v13 = v12 || v10 == 875704438;
  v14 = v13 || v10 == 875836518;
  v15 = v14 || v10 == 875836534;
  v16 = v15 || v10 == 1278226536;
  v17 = v16 || v10 == 1278226742;
  v18 = v17 || v10 == 1650943796;
  v19 = v18 || v10 == 2037741171;
  if (!v19 && v10 != 2037741158)
  {
    return 4294951896;
  }

  v21 = v2;
  v22 = *(v1 + 64);
  v23 = *(v1 + 88);
  if (v10 != 825437747)
  {
    v24 = 2 * v9 * v7;
    if (v10 == 2037741171)
    {
      *v23 = *v22;
      v28 = (v23 + 4);
      if (v24 >= 5)
      {
        v51 = 0;
        v30 = 0;
        v52 = v24 - 4;
        v53 = v22 + 4;
        v33 = -32;
        do
        {
          v54 = &luma + 2 * (v53[v51] - v53[v51 - 2]);
          v55 = *v54;
          v56 = v33 + v55;
          if (v33 + v55 < 0)
          {
            v58 = (v30 << v55) | v54[1];
          }

          else
          {
            v57 = v30 << -v33;
            v58 = v54[1];
            *v28++ = (v58 >> v56) | v57;
            v56 -= 32;
          }

          v59 = &chroma + 2 * (v53[v51 + 1] - v53[v51 - 3]);
          v60 = *v59;
          v33 = v56 + v60;
          if (v56 + v60 < 0)
          {
            v30 = (v58 << v60) | v59[1];
          }

          else
          {
            v61 = v58 << -v56;
            v30 = v59[1];
            *v28++ = (v30 >> v33) | v61;
            v33 -= 32;
          }

          v51 += 2;
        }

        while (v51 < v52);
        goto LABEL_77;
      }

LABEL_79:
      v47 = v28 - v23;
      goto LABEL_154;
    }

    if (v10 == 875704422 || v10 == 875704438 || v10 == 875836518 || v10 == 875836534)
    {
      v42 = pack_420v_luma_arm(*(v1 + 64), *(v1 + 88));
      v43 = v42;
      v44 = v23 + 4 * (v42 >> 2);
      if ((v42 & 3) != 0)
      {
        v45 = v42 >> 2;
        bzero((v23 + (v42 & 3 | (4 * v45))), 4 - (v42 & 3u));
        *(v23 + 4 * v45) = bswap32(*(v23 + 4 * v45));
        v44 += 4;
        v43 = (v43 + 3) & 0xFFFFFFFC;
      }

      if ((*(v8 + 32) | 0x10) == 0x34323076)
      {
        v46 = (*v8 * *(v8 + 4)) >> 1;
      }

      else
      {
        v46 = (2 * *(v8 + 4) * *v8);
      }

      v47 = pack_420v_chroma_arm(*(v8 + 72), v44, v46, &chroma) + v43;
      v48 = v47 & 3;
      if ((v47 & 3) == 0)
      {
        goto LABEL_154;
      }

      v49 = v47 >> 2;
      v50 = v47 >> 2;
      goto LABEL_82;
    }

    if (v10 != 1278226742)
    {
      if (v10 != 1650943796)
      {
        if (v10 != 2037741158)
        {
          if (v10 == 846624121)
          {
            *v23 = v22[1] | (((v22[2] << 16) | (v22[3] << 8) | *v22) << 8);
            v28 = (v23 + 4);
            if (v24 >= 5)
            {
              v29 = 0;
              v30 = 0;
              v31 = v24 - 4;
              v32 = v22 + 5;
              v33 = -32;
              do
              {
                v34 = &luma + 2 * (*v32 - *(v32 - 2));
                v35 = *v34;
                v36 = v33 + v35;
                if (v33 + v35 < 0)
                {
                  v38 = (v30 << v35) | v34[1];
                }

                else
                {
                  v37 = v30 << -v33;
                  v38 = v34[1];
                  *v28++ = (v38 >> v36) | v37;
                  v36 -= 32;
                }

                v39 = &chroma + 2 * (*(v32 - 1) - *(v32 - 5));
                v40 = *v39;
                v33 = v36 + v40;
                if (v36 + v40 < 0)
                {
                  v30 = (v38 << v40) | v39[1];
                }

                else
                {
                  v41 = v38 << -v36;
                  v30 = v39[1];
                  *v28++ = (v30 >> v33) | v41;
                  v33 -= 32;
                }

                v32 += 2;
                v29 += 2;
              }

              while (v29 < v31);
LABEL_77:
              if (v33 >= -31)
              {
                *v28 = v30 << -v33;
                LODWORD(v28) = v28 + 4;
              }

              goto LABEL_79;
            }

            goto LABEL_79;
          }

          if (v10 != 1278226536)
          {
LABEL_85:
            v47 = 0;
            goto LABEL_154;
          }
        }

        goto LABEL_84;
      }

      v62 = pack_bgg4_arm(v3, v4, v5, v6);
      v47 = v62;
      v48 = v62 & 3;
      if ((v62 & 3) == 0)
      {
        goto LABEL_154;
      }

      v49 = v62 >> 2;
      v50 = v62 >> 2;
LABEL_82:
      bzero((v23 + (v48 | (4 * v50))), (4 - v48));
      *(v23 + 4 * v49) = bswap32(*(v23 + 4 * v49));
      v47 = (v47 + 3) & 0xFFFFFFFC;
      goto LABEL_154;
    }
  }

LABEL_84:
  v63 = (v7 + 15) & 0xFFFFFFF0;
  v64 = *(v1 + 8);
  v65 = (v64 >> 1) - v63;
  if (v64 >> 1 < v63)
  {
    goto LABEL_85;
  }

  v66 = v64 * v9;
  if (*(v1 + 144))
  {
    v67 = *(v1 + 136);
    if (v67)
    {
      v47 = EncodeFrameThreads(v67, *(v8 + 64), v66, *(v8 + 88), v63, (v64 >> 1) - v63);
      goto LABEL_154;
    }

    return 4294951896;
  }

  v69 = v66 & 0xFFFFFFFE;
  v70 = v23 + 4;
  bzero(v91, 0x1FFFEuLL);
  if (v66 >= 2)
  {
    v71 = v66 & 0xFFFFFFFE;
    v72 = v22;
    do
    {
      v73 = *v72++;
      v91[v73] = 1;
      v71 -= 2;
    }

    while (v71);
  }

  v74 = 0;
  v75 = 0;
  do
  {
    if (v91[v74] == 1)
    {
      v91[v74] = v75++;
      *v70 = v74;
      v70 += 2;
    }

    ++v74;
  }

  while (v74 != 0xFFFF);
  *v23 = 23043;
  *(v23 + 2) = v75;
  v76 = v91[*v22];
  *v70 = (v76 >> 12) | 0xF0;
  *(v70 + 1) = v76 >> 4;
  v77 = (v70 + 2);
  v78 = 16 * v76;
  if (v69 == 2)
  {
LABEL_152:
    *v77 = v78 + 13;
    LODWORD(v77) = v77 + 1;
    goto LABEL_153;
  }

  v79 = 0;
  v80 = v22 + 2;
  v81 = 1;
  v82 = 1;
  do
  {
    v83 = v91[*v80];
    v84 = v83 - v76;
    v85 = (v83 - v76);
    if (v85 >= 0)
    {
      v86 = (v83 - v76);
    }

    else
    {
      v86 = -v85;
    }

    v87 = 16 * v79;
    if (v86 > 6)
    {
      if (!v79)
      {
        if (v82)
        {
          goto LABEL_126;
        }

        goto LABEL_130;
      }

      if (v79 == 1)
      {
        if (v82)
        {
          *v77++ = v78 + 6;
LABEL_130:
          if ((v84 + 64) > 0x7Fu)
          {
            v79 = 0;
            *v77 = (v83 >> 12) | 0xF0;
            v77[1] = v83 >> 4;
            v77 += 2;
            v78 = 16 * v83;
LABEL_140:
            v82 = 1;
            goto LABEL_141;
          }

          v79 = 0;
          *v77++ = ((v84 + 192) >> 4) - 16;
LABEL_139:
          v78 = 16 * v84;
          goto LABEL_140;
        }

        v78 = 96;
      }

      else
      {
        if (!v82)
        {
          *v77++ = v79 - 33;
          goto LABEL_130;
        }

        *v77 = v78 + 14;
        v78 = v87 - 16;
        ++v77;
      }

LABEL_126:
      v78 += 15;
      *v77 = v78;
      v82 = 0;
      v79 = 0;
      if ((v84 + 64) > 0x7Fu)
      {
        *(v77 + 1) = __rev16(v83);
        v77 += 3;
      }

      else
      {
        v77[1] = v84 - 64;
        v77 += 2;
      }

      goto LABEL_141;
    }

    if (v83 != v76)
    {
      if (!v79)
      {
        v84 += 6;
        if (v82)
        {
          goto LABEL_135;
        }

        goto LABEL_138;
      }

      if (v79 == 1)
      {
        if (v82)
        {
          v89 = v78 + 6;
LABEL_137:
          *v77++ = v89;
          v84 += 6;
LABEL_138:
          v79 = 0;
          goto LABEL_139;
        }

        v78 = 96;
      }

      else
      {
        if (!v82)
        {
          v89 = v79 - 33;
          goto LABEL_137;
        }

        *v77++ = v78 + 14;
        v78 = v87 - 16;
      }

      v84 += 6;
LABEL_135:
      v82 = 0;
      v79 = 0;
      v78 += v84;
      *v77++ = v78;
      goto LABEL_141;
    }

    if (++v79 == 16)
    {
      v79 = 0;
      v88 = v78 + 14;
      if (v82)
      {
        v78 = -16;
      }

      else
      {
        v88 = -17;
      }

      *v77++ = v88;
    }

LABEL_141:
    if (v81 + 1 == v63)
    {
      v90 = v65;
    }

    else
    {
      v90 = 0;
    }

    v80 += 2 * v90 + 2;
    if (v81 + 1 == v63)
    {
      v81 = 0;
    }

    else
    {
      ++v81;
    }

    v76 = v83;
  }

  while (v80 != &v22[v69]);
  if (!v79)
  {
    if (!v82)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  if (v82)
  {
    *v77 = v78 + 14;
    LOBYTE(v78) = 16 * v79 - 16;
    ++v77;
    goto LABEL_152;
  }

  *v77 = v79 - 33;
  LODWORD(v77) = v77 + 1;
LABEL_153:
  v47 = v77 - v23;
LABEL_154:
  result = 0;
  if (v21)
  {
    *v21 = v47;
  }

  return result;
}

uint64_t CMPhotoCFDictionarySetInt16(uint64_t a1, uint64_t a2, __int16 a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr))
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

uint64_t CMPhotoCFDictionarySetDouble(uint64_t a1, uint64_t a2, double a3)
{
  valuePtr = a3;
  result = 4294950306;
  if (a1 && a2)
  {
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr))
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

uint64_t CMPhotoCFDictionaryGetLongIfPresent()
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
            CFNumberGetValue(numberb, kCFNumberLongType, v5);
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

uint64_t CMPhotoCFDictionaryGetFloatIfPresent()
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
            CFNumberGetValue(numberb, kCFNumberFloatType, v5);
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

uint64_t CMPhotoCFArrayAppendInt32(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 4294950305;
  }

  OUTLINED_FUNCTION_4_24(v3);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoCFArrayAppendFloat(uint64_t a1, float a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (!v3)
  {
    return 4294950305;
  }

  OUTLINED_FUNCTION_4_24(v3);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoCFArrayAppendDouble(uint64_t a1, double a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (!v3)
  {
    return 4294950305;
  }

  OUTLINED_FUNCTION_4_24(v3);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoCFArraySetCFIndexAtIndex(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 4294950306;
  }

  if (!CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr))
  {
    return 4294950305;
  }

  v3 = OUTLINED_FUNCTION_0_32();
  CFArraySetValueAtIndex(v3, v4, v5);
  CFRelease(v2);
  return 0;
}

uint64_t CMPhotoDataCreateFromSource(const __CFAllocator *a1, const __CFData *a2, size_t a3, size_t a4, void *a5, char *a6)
{
  v37 = 0;
  version = a4;
  v36 = 0;
  v34 = 0;
  cf = 0;
  if (!a2)
  {
    v21 = 4294950306;
    goto LABEL_52;
  }

  if (a5)
  {
    DataLength = a4;
    v10 = a2;
    switch(CMPhotoGetStorageType(a2))
    {
      case 1u:
        if (!DataLength)
        {
          if ((a3 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          DataLength = CFDataGetLength(v10) - a3;
          version = DataLength;
        }

        if (DataLength + a3 > CFDataGetLength(v10))
        {
          goto LABEL_36;
        }

        if (!a3 && DataLength == CFDataGetLength(v10))
        {
          v12 = 0;
          v37 = CFRetain(v10);
          goto LABEL_42;
        }

        if ((DataLength & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        BytePtr = CFDataGetBytePtr(v10);
        v37 = CFDataCreate(a1, &BytePtr[a3], DataLength);
        v12 = 0;
        if (v37)
        {
          v36 = 1;
          goto LABEL_42;
        }

        v10 = 0;
        goto LABEL_68;
      case 2u:
        dataPointerOut = 0;
        lengthAtOffsetOut = 0;
        if (!DataLength)
        {
          DataLength = CMBlockBufferGetDataLength(v10);
          version = DataLength;
        }

        if ((a3 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (CMBlockBufferIsRangeContiguous(v10, a3, DataLength))
        {
          goto LABEL_29;
        }

        v25 = OUTLINED_FUNCTION_20_0();
        Contiguous = CMBlockBufferCreateContiguous(v25, v26, a1, 0, a3, DataLength, 2u, v27);
        if (Contiguous)
        {
          goto LABEL_37;
        }

        a3 = 0;
        v10 = cf;
        v36 = 1;
LABEL_29:
        Contiguous = CMBlockBufferGetDataPointer(v10, a3, &lengthAtOffsetOut, 0, &dataPointerOut);
        if (Contiguous)
        {
          goto LABEL_37;
        }

        if (v10)
        {
          v10 = CFRetain(v10);
        }

        v31.version = 0;
        v31.info = v10;
        memset(&v31.retain, 0, 24);
        v31.allocate = _cfTypeDeallocator_allocate_0;
        v31.reallocate = 0;
        v31.deallocate = _cfTypeDeallocator_deallocate_0;
        v31.preferredSize = 0;
        v12 = CFAllocatorCreate(0, &v31);
        if (!v12)
        {
          goto LABEL_68;
        }

        if ((DataLength & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        v37 = CFDataCreateWithBytesNoCopy(a1, dataPointerOut, DataLength, v12);
        if (v37)
        {
          goto LABEL_42;
        }

LABEL_68:
        v21 = 4294950305;
        break;
      case 3u:
        OUTLINED_FUNCTION_20_0();
        Contiguous = CMByteStreamCreateForFileURL();
        if (Contiguous)
        {
          goto LABEL_37;
        }

        v15 = v34;
        v19 = &v36;
        v17 = a1;
        v18 = a3;
        v16 = DataLength;
        goto LABEL_17;
      case 4u:
        if ((a3 & 0x8000000000000000) != 0)
        {
LABEL_63:
          v12 = 0;
          v10 = 0;
LABEL_64:
          v21 = 4294950190;
          break;
        }

        v22 = OUTLINED_FUNCTION_20_0();
        DataWrappingIOSurface = CMPhotoCreateDataWrappingIOSurface(v22, v23, a3, DataLength);
        v12 = 0;
        v37 = DataWrappingIOSurface;
        if (DataWrappingIOSurface)
        {
          goto LABEL_42;
        }

        v21 = 4294950305;
        goto LABEL_22;
      case 5u:
        if (DataLength)
        {
          goto LABEL_12;
        }

        v31.version = 0;
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v30)
        {
          v21 = 4294954514;
          goto LABEL_38;
        }

        Contiguous = v30(v10, 0, &v31);
        if (Contiguous)
        {
          goto LABEL_37;
        }

        DataLength = v31.version;
        if (v31.version < 0)
        {
LABEL_65:
          v21 = 4294950190;
          goto LABEL_38;
        }

        version = v31.version;
LABEL_12:
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v13)
        {
          Contiguous = v13(v10, DataLength, a3, &cf, &version);
          if (!Contiguous)
          {
            v36 = 1;
            v15 = cf;
            v16 = version;
            v17 = a1;
            v18 = 0;
            v19 = 0;
LABEL_17:
            v20 = CMPhotoDataCreateFromSource(v17, v15, v18, v16, &v37, v19);
            v12 = 0;
            if (v20)
            {
              v21 = v20;
LABEL_22:
              v10 = 0;
            }

            else
            {
LABEL_42:
              *a5 = v37;
              v37 = 0;
              v21 = 0;
              v10 = 0;
              if (a6)
              {
                *a6 = v36;
              }
            }

            break;
          }

LABEL_37:
          v21 = Contiguous;
          goto LABEL_38;
        }

        v12 = 0;
        v10 = 0;
        v21 = 4294954514;
        break;
      default:
LABEL_36:
        Contiguous = FigSignalErrorAtGM();
        goto LABEL_37;
    }
  }

  else
  {
    v21 = 0;
LABEL_38:
    v12 = 0;
    v10 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_52:
  if (v37)
  {
    CFRelease(v37);
  }

  return v21;
}

void _mergeDictionaryEntries(const void *a1, CFTypeRef cf, uint64_t a3)
{
  if (*a3)
  {
    return;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {
    v7 = CFDictionaryContainsKey(*(a3 + 16), a1);
    v8 = *(a3 + 16);
    if (v7)
    {
      Value = CFDictionaryGetValue(v8, a1);
      v10 = CFGetTypeID(Value);
      if (v10 == CFDictionaryGetTypeID())
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*(a3 + 8), 0, Value);
        CFDictionarySetValue(*(a3 + 16), a1, MutableCopy);
        v12 = 0u;
        v13 = 0u;
        LODWORD(v12) = *a3;
        *(&v12 + 1) = *(a3 + 8);
        *&v13 = MutableCopy;
        BYTE8(v13) = *(a3 + 24);
        CFDictionaryApplyFunction(cf, _mergeDictionaryEntries, &v12);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
        *a3 = -17102;
      }

      return;
    }

    goto LABEL_12;
  }

  v8 = *(a3 + 16);
  if (!*(a3 + 24))
  {
LABEL_12:

    CFDictionaryAddValue(v8, a1, cf);
    return;
  }

  CFDictionarySetValue(v8, a1, cf);
}

uint64_t CMPhotoPropertyListCopyWithMutableContainers(const __CFAllocator *a1, const void *a2, CFMutableArrayRef *a3)
{
  value = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFDictionaryGetTypeID())
  {
    v11 = CFGetTypeID(a2);
    if (v11 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a2);
      Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v9 = Mutable;
        if (CFArrayGetCount(a2) >= 1)
        {
          for (i = 0; i < CFArrayGetCount(a2); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
            v16 = ValueAtIndex;
            if (ValueAtIndex && ((v17 = CFGetTypeID(ValueAtIndex), v17 == CFDictionaryGetTypeID()) || (v18 = CFGetTypeID(v16), v18 == CFArrayGetTypeID())))
            {
              v19 = OUTLINED_FUNCTION_20_0();
              v22 = CMPhotoPropertyListCopyWithMutableContainers(v19, v20, v21);
              if (v22)
              {
                v10 = v22;
                CFRelease(v9);
                return v10;
              }

              CFArrayAppendValue(v9, value);
            }

            else
            {
              CFArrayAppendValue(v9, v16);
            }
          }
        }

        v10 = 0;
        goto LABEL_20;
      }

      return 4294950305;
    }

    return 0;
  }

  v7 = FigCFDictionaryGetCount();
  v8 = CFDictionaryCreateMutable(a1, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v8)
  {
    return 4294950305;
  }

  v9 = v8;
  v24[1] = a1;
  v25 = 0;
  v24[0] = v8;
  CFDictionaryApplyFunction(a2, _transferDictionaryValue, v24);
  v10 = v25;
  if (!v25)
  {
LABEL_20:
    *a3 = v9;
    return v10;
  }

  CFRelease(v9);
  return v10;
}

void _transferDictionaryValue(void *key, CFTypeRef cf, uint64_t a3)
{
  value = 0;
  if (*(a3 + 16))
  {
    return;
  }

  if (cf && ((v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()) || (v7 = CFGetTypeID(cf), v7 == CFArrayGetTypeID())))
  {
    v9 = CMPhotoPropertyListCopyWithMutableContainers(*(a3 + 8), cf, &value);
    if (!v9)
    {
      v10 = *a3;
      v8 = value;
      CFDictionarySetValue(v10, key, value);
      if (!v8)
      {
        return;
      }

      goto LABEL_7;
    }

    if (!*(a3 + 16))
    {
      *(a3 + 16) = v9;
    }
  }

  else
  {
    CFDictionarySetValue(*a3, key, cf);
  }

  v8 = value;
  if (!value)
  {
    return;
  }

LABEL_7:

  CFRelease(v8);
}

uint64_t CMPhotoComputeMSEForPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, unint64_t a3, uint64_t a4, int a5, double *a6, CVPixelBufferRef *a7)
{
  pixelBufferOut = 0;
  v13 = *MEMORY[0x1E695E480];
  v14 = OUTLINED_FUNCTION_6_24();
  cf = OUTLINED_FUNCTION_6_24();
  CFDictionaryAddValue(v14, *MEMORY[0x1E69660D8], cf);
  pixelBuffer = a2;
  if (CMPhotoPixelBufferHasCLAP(a1) || CMPhotoPixelBufferHasCLAP(a2) || a3 && (a5 >= 1 ? (v15 = a5 > a3) : (v15 = 1), v15))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM();
    v34 = 0;
    goto LABEL_140;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    goto LABEL_136;
  }

  v143 = a5;
  v17 = CVPixelBufferGetPixelFormatType(a2);
  v146 = 0;
  v147 = 0;
  v18 = OUTLINED_FUNCTION_37();
  CMPhotoGetPixelBufferCLAP(v18, v19, 0, v20, v21);
  v144 = 0;
  v145 = 0;
  CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v144, &v145);
  v22 = v146 == v144 && v147 == v145;
  if (!v22)
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
LABEL_136:
    v34 = FigSignalErrorAtGM();
LABEL_140:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    goto LABEL_122;
  }

  v138 = v14;
  v139 = a6;
  v135 = a7;
  allocator = v13;
  if (!a3)
  {
    v24 = 0;
    v25 = 0;
LABEL_27:
    v30 = 0;
    goto LABEL_28;
  }

  v23 = v147 - (a3 - 1);
  if (v23)
  {
    v26 = 0;
    v24 = 0;
    do
    {
      ++v24;
      v26 += v143;
    }

    while (v23 > v26);
  }

  else
  {
    v24 = 0;
  }

  v27 = v146 - (a3 - 1);
  if (v27)
  {
    v28 = 0;
    v25 = 0;
    do
    {
      ++v25;
      v28 += v143;
    }

    while (v27 > v28);
  }

  else
  {
    v25 = 0;
  }

  v29 = v25 * v24;
  if (!v29)
  {
    goto LABEL_27;
  }

  v30 = malloc_type_calloc(v29, 8uLL, 0x100004000313F17uLL);
  if (!v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    v34 = 4294950305;
LABEL_121:
    v14 = v138;
    a6 = v139;
    goto LABEL_122;
  }

LABEL_28:
  v137 = a3;
  v35 = CMPhotoPixelFormatContainsYCbCr(v17);
  v36 = CMPhotoPixelFormatContainsRGB(v17);
  v37 = CMPhotoPixelFormatContainsGrayScale(v17);
  v38 = CVPixelBufferGetPixelFormatType(a2);
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v38);
  v40 = CVPixelBufferGetPixelFormatType(a2);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v40);
  v41 = OUTLINED_FUNCTION_37();
  v43 = CVPixelBufferLockBaseAddress(v41, v42);
  v33 = 0.0;
  if (v43)
  {
    v34 = v43;
    v31 = 0;
    v32 = 0;
    goto LABEL_121;
  }

  v44 = CVPixelBufferLockBaseAddress(a2, 0);
  if (v44)
  {
    v34 = v44;
    v31 = 0;
    goto LABEL_118;
  }

  if (v37)
  {
    if (v17 - 1278226736 <= 6 && ((1 << (v17 - 48)) & 0x45) != 0)
    {
      v45 = 16 - BitDepthForPixelFormat;
      v46 = v137;
      goto LABEL_47;
    }

    v46 = v137;
    if (v17 == 1278226488)
    {
      v45 = 0;
LABEL_47:
      v50 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
      BaseAddress = CVPixelBufferGetBaseAddress(a2);
      v52 = CVPixelBufferGetBytesPerRow(a1) / BytesPerPixelForPixelFormat;
      v53 = CVPixelBufferGetBaseAddress(a1);
      v54 = calc_ssd(BaseAddress, v50, v53, v52, BitDepthForPixelFormat, v144, v145, v46, v143, 1u, v45, v30, v25);
      v33 = v54 / (v144 * v145);
      if (v24)
      {
        v55 = 0;
        v56 = v46 * v46;
        v57 = v25;
        do
        {
          v58 = v57;
          v59 = v55;
          if (v25)
          {
            do
            {
              v30[v59] = v30[v59] / v56;
              ++v59;
              --v58;
            }

            while (v58);
          }

          OUTLINED_FUNCTION_2_31();
        }

        while (!v22);
      }

      goto LABEL_104;
    }

LABEL_62:
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM();
LABEL_119:
    v34 = 0;
    goto LABEL_120;
  }

  if (!v35)
  {
    if (v36)
    {
      if (v17 != 1111970369 && v17 != 1815491698 && v17 != 1380401729)
      {
        goto LABEL_62;
      }

      v62 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
      v64 = CVPixelBufferGetBytesPerRow(a1) / BytesPerPixelForPixelFormat;
      v65 = CVPixelBufferGetBaseAddress(a1);
      v66 = v62;
      v67 = v65;
      v68 = 4 * v66;
      v69 = 4 * v64;
      v70 = 0.0;
      if (v145)
      {
        v71 = 0;
        v72 = 0;
        v73 = 4 * v144;
        do
        {
          if (v73)
          {
            for (i = 0; i < v73; i += 4)
            {
              if (BitDepthForPixelFormat < 9)
              {
                v75 = BaseAddressOfPlane[v68 * v71 + i];
                v76 = v65[v69 * v71 + i];
              }

              else
              {
                v75 = *&BaseAddressOfPlane[2 * v68 * v71 + 2 * i];
                v76 = *&v65[2 * v69 * v71 + 2 * i];
              }

              v72 += (v75 - v76) * (v75 - v76);
            }
          }

          ++v71;
        }

        while (v71 != v145);
        v70 = v72;
      }

      v77 = 1;
      if (BitDepthForPixelFormat <= 8)
      {
        v78 = 2;
      }

      else
      {
        v77 = 2;
        v78 = 4;
      }

      v79 = calc_ssd(&BaseAddressOfPlane[v77], v66, &v65[v77], v64, BitDepthForPixelFormat, v144, v145, v137, v143, 4u, 0, v30, v25);
      if (v145)
      {
        v80 = 0;
        v81 = 0;
        v82 = &BaseAddressOfPlane[v78];
        v83 = &v67[v78];
        v84 = 4 * v144;
        do
        {
          if (v84)
          {
            for (j = 0; j < v84; j += 4)
            {
              if (BitDepthForPixelFormat < 9)
              {
                v86 = v82[v68 * v80 + j];
                v87 = v83[v69 * v80 + j];
              }

              else
              {
                v86 = *&v82[2 * v68 * v80 + 2 * j];
                v87 = *&v83[2 * v69 * v80 + 2 * j];
              }

              v81 += (v86 - v87) * (v86 - v87);
            }
          }

          ++v80;
        }

        while (v80 != v145);
        v33 = v81;
      }

      v88 = v144 * v145;
      v89 = v70 / v88;
      v90 = v79 / v88;
      v91 = v33 / v88;
      v46 = v137;
      if (v24)
      {
        OUTLINED_FUNCTION_3_30();
        do
        {
          if (v25)
          {
            do
            {
              OUTLINED_FUNCTION_5_23(v89, v90, v91, v92);
            }

            while (!v22);
          }

          OUTLINED_FUNCTION_2_31();
        }

        while (!v22);
      }

      v33 = (v89 + v90 + v91) / 3.0;
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_2();
    v34 = FigSignalErrorAtGM();
    v31 = 1;
LABEL_118:
    v32 = 1;
    goto LABEL_121;
  }

  if (v17 == 875704422 || v17 == 875704438)
  {
    v49 = 0;
  }

  else
  {
    if (v17 != 2019963440 && v17 != 2016686640)
    {
      goto LABEL_62;
    }

    v49 = 6;
  }

  v133 = v144 >> 1;
  v134 = v145 >> 1;
  v130 = CVPixelBufferGetBytesPerRowOfPlane(a2, 0) / BytesPerPixelForPixelFormat;
  v93 = 2 * BytesPerPixelForPixelFormat;
  v132 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL) / v93;
  v127 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v129 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  v94 = OUTLINED_FUNCTION_37();
  v96 = CVPixelBufferGetBytesPerRowOfPlane(v94, v95) / BytesPerPixelForPixelFormat;
  v126 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL) / v93;
  v97 = OUTLINED_FUNCTION_37();
  v99 = CVPixelBufferGetBaseAddressOfPlane(v97, v98);
  v100 = a1;
  v101 = v99;
  v102 = CVPixelBufferGetBaseAddressOfPlane(v100, 1uLL);
  v131 = calc_ssd(v127, v130, v101, v96, BitDepthForPixelFormat, v144, v145, v137, v143, 1u, v49, v30, v25);
  v128 = calc_ssd(v129, v132, v102, v126, BitDepthForPixelFormat, v133, v134, v137, v143, 2u, v49, 0, 0);
  v103 = calc_ssd(v129 + BytesPerPixelForPixelFormat, v132, v102 + BytesPerPixelForPixelFormat, v126, BitDepthForPixelFormat, v133, v134, v137, v143, 2u, v49, 0, 0);
  v104 = v144 * v145;
  v105 = v131 / v104;
  v106 = v103 / v104;
  v46 = v137;
  v107 = v128 / v104;
  if (v24)
  {
    OUTLINED_FUNCTION_3_30();
    do
    {
      if (v25)
      {
        do
        {
          OUTLINED_FUNCTION_5_23(v105, v106, v107, v108);
        }

        while (!v22);
      }

      OUTLINED_FUNCTION_2_31();
    }

    while (!v22);
  }

  v33 = (v107 + v106 + v105 * 6.0) * 0.125;
LABEL_104:
  if (!v46)
  {
    goto LABEL_119;
  }

  v34 = CVPixelBufferCreate(allocator, v25, v24, 0x72673366u, 0, &pixelBufferOut);
  v109 = pixelBufferOut;
  if (!v34)
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
    v111 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
    v112 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
    v113 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 2uLL);
    if (v24)
    {
      v114 = 0;
      v115 = 0;
      v116 = 4 * (BytesPerRowOfPlane >> 2);
      do
      {
        v117 = v25;
        v118 = v111;
        v119 = v112;
        v120 = v113;
        v121 = v114;
        if (v25)
        {
          do
          {
            v122 = v30[v121];
            *v118++ = v122;
            *v119++ = v122;
            *v120++ = v122;
            ++v121;
            --v117;
          }

          while (v117);
        }

        ++v115;
        v114 += v25;
        v113 = (v113 + v116);
        v112 = (v112 + v116);
        v111 = (v111 + v116);
      }

      while (v115 != v24);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v109 = pixelBufferOut;
    if (v135)
    {
      v34 = 0;
      *v135 = pixelBufferOut;
      pixelBufferOut = 0;
LABEL_120:
      v31 = 1;
      v32 = 1;
      goto LABEL_121;
    }

    v34 = 0;
  }

  v14 = v138;
  a6 = v139;
  if (v109)
  {
    CFRelease(v109);
  }

  v31 = 1;
  v32 = 1;
LABEL_122:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  free(v30);
  if (a6)
  {
    *a6 = v33;
  }

  if (v32)
  {
    v123 = OUTLINED_FUNCTION_37();
    CVPixelBufferUnlockBaseAddress(v123, v124);
  }

  if (v31)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  return v34;
}

const __CFDictionary *_decodeAuxiliaryImageForIndexAsync_1(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0)
  {
    v16 = *(a1 + 80);
    if (a3 < 0)
    {
LABEL_9:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_0();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    v16 = 0;
    if (a3 < 0)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= a3)
  {
    goto LABEL_9;
  }

  result = CMPhotoDecompressionContainerCheckForbiddenAuxOptions(theDict, 3);
  if (!result)
  {
    return _queueAsyncImageDecode_0(a1, 2, a2, a3, theDict, a5, a6, a7, a8);
  }

  return result;
}

uint64_t _getAuxiliaryImageGeometryForIndex_3(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, _DWORD *a7, uint64_t a8)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = OUTLINED_FUNCTION_2_32(a1, 0, a3, a4, a5, a6, a7, a8, v12, v13);
    if (!result)
    {
      if (a5)
      {
        *a5 = *v14;
      }

      if (a6)
      {
        *a6 = v14[1];
      }

      result = 0;
      if (a7)
      {
        *a7 = 1;
      }
    }
  }

  return result;
}

uint64_t _getAuxiliaryImageTypeForIndex_3(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = OUTLINED_FUNCTION_2_32(a1, 0, a3, a4, a5, a6, a7, a8, v11, v12);
    if (!result)
    {
      if (a5)
      {
        *a5 = *(v13 + 20);
      }

      result = 0;
      if (a6)
      {
        *a6 = *(v13 + 24);
      }
    }
  }

  return result;
}

uint64_t _copyAuxiliaryColorSpaceForIndex_1(uint64_t a1, uint64_t a2, unint64_t a3, CGColorSpaceRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = OUTLINED_FUNCTION_2_32(a1, 0, a3, a4, a5, a6, a7, a8, v13, v14);
    if (a4 && !result)
    {
      v10 = *(v15 + 80);
      if (v10 && (v11 = CGColorSpaceCreateWithICCData(v10)) != 0)
      {
        v12 = v11;
        result = 0;
        *a4 = v12;
      }

      else
      {
        return 4294950303;
      }
    }
  }

  return result;
}

uint64_t _createOutputBufferAttributesForImageIndex_3(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 1;
  cf = 0;
  ImageGeometryForIndex = DicomGetImageGeometryForIndex(*(a1 + 112), 0, a2, &v15, &v16, &v14);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  ImageGeometryForIndex = DicomGetPhotometricInterpretationForIndex(*(a1 + 112), 0, a2, 0, &v13);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  ImageBitDepthForIndex = DicomGetImageBitDepthForIndex(*(a1 + 112), 0, a2, &cf);
  v10 = cf;
  if (!ImageBitDepthForIndex)
  {
    FigCFArrayGetIntAtIndex();
    ImageBitDepthForIndex = _createOutputBufferAttributesForImageGeometry_0(a1, a3, v15, v16, a4);
    v10 = cf;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return ImageBitDepthForIndex;
}

uint64_t _createOutputBufferAttributesForAuxiliaryIndex_2(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v11 = 0;
    result = _getAuxiliaryImageStorageForIndex_0(a1, a3, &v11);
    if (!result)
    {
      v9 = *v11;
      v10 = v11[1];

      return _createOutputBufferAttributesForImageGeometry_0(a1, a4, v9, v10, a5);
    }
  }

  return result;
}

uint64_t _copyDebugMetadataForIndex_1(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 96);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  result = 4294950303;
  if ((a3 & 0x8000000000000000) == 0 && Count > a3)
  {
    if (a5)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v11 = CFRetain(ValueAtIndex);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *a5 = v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _copyCustomMetadataForIndex_1(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 104);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  result = 4294950303;
  if ((a3 & 0x8000000000000000) == 0 && Count > a3)
  {
    if (a5)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v11 = CFRetain(ValueAtIndex);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *a5 = v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _copyDICOMItemPropertiesForIndex(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    return 0;
  }

  v5 = DicomCopyImageProperties(*(a1 + 112), a3, a2, &cf);
  if (v5)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v5;
}

uint64_t _copyImageIsRGBForIndex_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 0;
  }

  result = DicomGetPhotometricInterpretationForIndex(*(a1 + 112), 0, a2, &v5, 0);
  if (!result)
  {
    if ((v5 - 1) > 0xC)
    {
      return 4294950303;
    }

    else
    {
      result = 0;
      *a3 = byte_1A5ABC82C[v5 - 1];
    }
  }

  return result;
}

uint64_t _copyColorSpaceForIndex_3(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v7 = 0;
  if (!a3)
  {
    return 0;
  }

  v4 = DicomCopyColorSpaceAndICCProfile(*(a1 + 112), 0, a2, &v7, &cf);
  if (v4)
  {
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    *a3 = v7;
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t _createImageForIndexInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5);
  v34 = 0;
  cf = 0;
  v33 = 0;
  if (a4 && OUTLINED_FUNCTION_5_24())
  {
    goto LABEL_18;
  }

  ImageGeometryForIndex = DicomGetImageGeometryForIndex(*(v5 + 112), 0, v6, &v33, &v34, 0);
  if (ImageGeometryForIndex || (ImageGeometryForIndex = CMPhotoDecompressionContainerParseOptions(v5, a3, v33, v34, v36), ImageGeometryForIndex) || (ImageGeometryForIndex = OUTLINED_FUNCTION_6_25(ImageGeometryForIndex, v10, v11, v12, v13, v14, v15, v16, v29, v31, SWORD2(v31), SBYTE6(v31), SHIBYTE(v31)), ImageGeometryForIndex))
  {
LABEL_20:
    v27 = ImageGeometryForIndex;
    goto LABEL_15;
  }

  if (!HIBYTE(v32))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    ImageGeometryForIndex = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  ImageGeometryForIndex = _verifyOptions(v36, &v33);
  if (ImageGeometryForIndex)
  {
    goto LABEL_20;
  }

  v17 = OUTLINED_FUNCTION_8_21();
  ImageGeometryForIndex = DicomDecodeImageForIndex(v17, v18, a3, v6, v19, &cf);
  if (ImageGeometryForIndex)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    LODWORD(ImageGeometryForIndex) = OUTLINED_FUNCTION_5_24();
    if (ImageGeometryForIndex)
    {
LABEL_18:
      v27 = 4294950191;
      goto LABEL_15;
    }
  }

  v26 = OUTLINED_FUNCTION_12_19(ImageGeometryForIndex, cf, v20, v21, v22, v23, v24, v25, v30, v32, v33, v34, cf, v36[0]);
  v27 = v26;
  if (a4 && !v26)
  {
    if (!OUTLINED_FUNCTION_5_24())
    {
      v27 = 0;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

uint64_t _verifyOptions(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 88);
      if (result)
      {
        OUTLINED_FUNCTION_31();
        CMPhotoGetPixelBufferCLAP(v5, v6, v7, v8, v9);
        if (*a2 || a2[1])
        {
          goto LABEL_11;
        }

        if (*(a1 + 105))
        {
          result = CVPixelBufferGetIOSurface(*(a1 + 88));
          if (result)
          {
LABEL_11:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            return FigSignalErrorAtGM();
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _createFinalOutputForBuffer(uint64_t *a1, CVPixelBufferRef pixelBuffer, uint64_t a3, int a4, CGImageRef *a5)
{
  DictionaryRepresentation = 0;
  v30 = 0;
  cf = 0;
  v7 = 4294950306;
  if (!a1)
  {
    PixelFormatType = 0;
    goto LABEL_27;
  }

  v8 = pixelBuffer;
  PixelFormatType = 0;
  if (!pixelBuffer)
  {
    goto LABEL_27;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v29 = 0;
  CMPhotoGetPixelBufferCLAPAsRect(v8);
  v27 = vcvtad_u64_f64(v13);
  v28 = vcvtad_u64_f64(v14);
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v27, v28, *(a3 + 56), v27, v28, *(a3 + 64), *(a3 + 70), &v27, &v29, 0);
  v15 = *(a3 + 8);
  if (v15)
  {
    v15 = PixelFormatType != *(a3 + 4);
  }

  if ((v29 || *(a3 + 88) != 0) | v15)
  {
    if (CMPhotoPixelFormatContainsRGB(PixelFormatType) && !CMPhotoPixelFormatContainsRGB(*(a3 + 4)))
    {
      v16 = 0;
      v22 = *(a3 + 4);
      if (((v22 - 1278226488) > 0x30 || ((1 << (v22 - 56)) & 0x1400000000001) == 0) && ((v22 - 1278226736) > 6 || ((1 << (v22 - 48)) & 0x45) == 0))
      {
        v23 = v22 == 1717855600 || v22 == 1717856627;
        v24 = v23 || v22 == 1751410032;
        if (!v24 && v22 != 1751411059)
        {
          v16 = 1;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, *(a3 + 1), *(a3 + 66), *(a3 + 67), *(a3 + 68));
    PixelFormatType = ScaleAndRotateOptionsWithHWIfNeeded;
    if (!ScaleAndRotateOptionsWithHWIfNeeded)
    {
      DictionaryRepresentation = 0;
      v7 = 4294950305;
      goto LABEL_27;
    }

    if (*(a3 + 3))
    {
      CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", *(a3 + 3));
    }

    CMPhotoCFDictionarySetBoolean(PixelFormatType, @"DestinationBackedByIOSurface", *(a3 + 105) == 0);
    CMPhotoCFDictionarySetInt(PixelFormatType, @"SourceExifOrientation", 1);
    CMPhotoCFDictionarySetInt(PixelFormatType, @"DestinationPixelFormat", *(a3 + 4));
    CMPhotoCFDictionarySetBoolean(PixelFormatType, @"ExactDimensions", 1);
    if (v29)
    {
      CMPhotoCFDictionarySetSize(PixelFormatType, @"DestinationMaxSideLength", *(a3 + 56));
      CMPhotoCFDictionarySetBoolean(PixelFormatType, @"AllowMaxPixelScaleUpscale", *(a3 + 64));
    }

    if (v16)
    {
      DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(0, 1);
      if (DictionaryRepresentation)
      {
        CFDictionarySetValue(PixelFormatType, @"DestinationColorTripletDictionary", DictionaryRepresentation);
      }
    }

    else
    {
      DictionaryRepresentation = 0;
    }

    WrappedPixelBufferForType = CMPhotoDecompressionSessionCopyScaler(a1[2], &cf);
    if (WrappedPixelBufferForType)
    {
      goto LABEL_26;
    }

    v19 = *(a3 + 88);
    if (v19)
    {
      v30 = CFRetain(v19);
    }

    WrappedPixelBufferForType = CMPhotoScaleAndRotateSessionTransformImage(cf, v8, PixelFormatType, &v30);
    if (WrappedPixelBufferForType)
    {
      goto LABEL_26;
    }

    v8 = v30;
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
  }

  if (a5)
  {
    v20 = CFGetAllocator(a1);
    WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v20, v8, *(a3 + 104), a4, a5);
LABEL_26:
    v7 = WrappedPixelBufferForType;
    goto LABEL_27;
  }

  v7 = 0;
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  if (PixelFormatType)
  {
    CFRelease(PixelFormatType);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (a1)
  {
    v26 = 0;
    if (!CMPhotoDecompressionSessionCopySurfacePool(a1[2], &v26))
    {
      CMPhotoSurfacePoolMarkCachesVolatile(v26, 0);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  return v7;
}

uint64_t _createAuxiliaryImageForIndexInternal(uint64_t a1, uint64_t a2, unint64_t a3, const __CFDictionary *a4, uint64_t a5)
{
  v42 = 0;
  v43 = 0;
  bzero(v38, 0x98uLL);
  v36 = 0;
  v37 = 0;
  if (a5 && OUTLINED_FUNCTION_5_24())
  {
    goto LABEL_34;
  }

  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
LABEL_37:
    AuxiliaryImageStorageForIndex_0 = FigSignalErrorAtGM();
    goto LABEL_38;
  }

  v35 = 0;
  AuxiliaryImageStorageForIndex_0 = _getAuxiliaryImageStorageForIndex_0(a1, a3, &v35);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_38;
  }

  AuxiliaryImageStorageForIndex_0 = _getAuxiliaryImageGeometryForIndex_3(a1, 0, a3, v11, &v36, &v37, 0, v12);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_38;
  }

  AuxiliaryImageStorageForIndex_0 = CMPhotoDecompressionContainerParseOptions(a1, a4, v36, v37, v38);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_38;
  }

  if (!v40 && *(v35 + 24))
  {
    v39 = *(v35 + 24);
  }

  AuxiliaryImageStorageForIndex_0 = OUTLINED_FUNCTION_6_25(AuxiliaryImageStorageForIndex_0, v13, v14, v15, v16, v17, v18, v19, v33, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_38;
  }

  if (!HIBYTE(v34))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    goto LABEL_37;
  }

  AuxiliaryImageStorageForIndex_0 = _verifyOptions(v38, &v36);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_38;
  }

  AuxiliaryImageStorageForIndex_0 = CMPhotoDecompressionContainerCheckForbiddenAuxOptions(a4, 3);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_38;
  }

  v20 = OUTLINED_FUNCTION_8_21();
  AuxiliaryImageStorageForIndex_0 = DicomDecodeAuxiliaryImageForIndex(v20, v21, a4, a3, v22, &v43);
  if (AuxiliaryImageStorageForIndex_0)
  {
    goto LABEL_38;
  }

  if (a5 && OUTLINED_FUNCTION_5_24())
  {
    goto LABEL_34;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v43);
  if (PixelFormatType == v39)
  {
    goto LABEL_23;
  }

  AuxiliaryImageStorageForIndex_0 = CMPhotoDecompressionSessionCopySurfacePool(*(a1 + 16), &v42);
  if (AuxiliaryImageStorageForIndex_0 || (v33 = 0, AuxiliaryImageStorageForIndex_0 = CMPhotoCreateFractionalPixelBuffer(v43, v42, v39, v41, *(v35 + 48), &v33), AuxiliaryImageStorageForIndex_0))
  {
LABEL_38:
    v31 = AuxiliaryImageStorageForIndex_0;
    goto LABEL_29;
  }

  PixelFormatType = v43;
  if (v43)
  {
    CFRelease(v43);
  }

  v43 = v33;
LABEL_23:
  if (a5)
  {
    PixelFormatType = OUTLINED_FUNCTION_5_24();
    if (PixelFormatType)
    {
LABEL_34:
      v31 = 4294950191;
      goto LABEL_29;
    }
  }

  v30 = OUTLINED_FUNCTION_12_19(PixelFormatType, v43, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38[0]);
  v31 = v30;
  if (a5 && !v30)
  {
    if (!OUTLINED_FUNCTION_5_24())
    {
      v31 = 0;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_29:
  if (v43)
  {
    CFRelease(v43);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v31;
}

uint64_t _createOutputBufferAttributesForImageGeometry_0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, CFMutableDictionaryRef *a5)
{
  OUTLINED_FUNCTION_11_18(a1, a2, a3, a4, a5);
  v17 = a3;
  v18 = a4;
  if (!a5)
  {
    return 0;
  }

  v10 = CMPhotoDecompressionContainerParseOptions(v5, v6, a3, a4, v19);
  if (v10)
  {
    return v10;
  }

  CMPhotoPixelBufferConstrainSizeToMaxSideLength(a3, a4, v20, a3, a4, v21, v22, &v17, 0, 0);
  Mutable = CFDictionaryCreateMutable(*(v5 + 40), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v12 = Mutable;
  CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E6966208], v17);
  if (v13 || (CMPhotoCFDictionarySetSize(v12, *MEMORY[0x1E69660B8], v18), v13))
  {
    v15 = v13;
    goto LABEL_10;
  }

  CMPhotoCFDictionarySetSize(v12, *MEMORY[0x1E6966020], 16);
  v15 = v14;
  if (v14)
  {
LABEL_10:
    CFRelease(v12);
    return v15;
  }

  *a5 = v12;
  return v15;
}

uint64_t _copyAuxiliaryImageTypeInfoForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyAuxiliaryImageMetadataForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionSessionSetSurfacePool(os_unfair_lock_s *a1, const void *a2)
{
  OUTLINED_FUNCTION_1_29(a1);
  v4 = *(v2 + 272);
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  *(v2 + 272) = v5;
  v6 = *(v2 + 280);
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = CFGetAllocator(v2);
  v8 = CMPhotoScaleAndRotateSessionCreate(v7, 0, (v2 + 280));
  if (!v8)
  {
    v6 = *(v2 + 280);
LABEL_9:
    v8 = CMPhotoScaleAndRotateSessionSetSurfacePool(v6, a2);
  }

  v9 = v8;
  os_unfair_lock_unlock((v2 + 16));
  return v9;
}

uint64_t CMPhotoDecompressionSessionCopySequenceCodecPool(os_unfair_lock_s *a1, void *a2)
{
  v3 = 4294950306;
  if (!a1 || !a2)
  {
    return v3;
  }

  OUTLINED_FUNCTION_1_29(a1);
  v5 = *(v2 + 296);
  if (v5)
  {
    v6 = 0;
LABEL_10:
    v11 = CFRetain(v5);
    goto LABEL_11;
  }

  v7 = CFGetAllocator(v2);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  v9 = CMPhotoCFDictionarySetInt(Mutable, @"MaxSimultaneousDecompressionSessions", 3);
  if (v9 || (v9 = CMPhotoCFDictionarySetInt64(v6, @"IdleTimeoutMilliseconds", 0), v9) || (v10 = CFGetAllocator(v2), v9 = CMPhotoCodecSessionPoolCreate(v10, v6, (v2 + 296)), v9))
  {
LABEL_16:
    v3 = v9;
    os_unfair_lock_unlock((v2 + 16));
    if (!v6)
    {
      return v3;
    }

    goto LABEL_12;
  }

  v5 = *(v2 + 296);
  if (v5)
  {
    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:
  os_unfair_lock_unlock((v2 + 16));
  v3 = 0;
  *a2 = v11;
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v3;
}

uint64_t CMPhotoDecompressionSessionReserveRequestID(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = atomic_fetch_add_explicit((a1 + 24), 1uLL, memory_order_relaxed) + 1;
    }
  }

  return result;
}

uint64_t CMPhotoDecompressionSessionReleaseHardwareResources(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  result = CMPhotoCodecSessionPoolFlush(*(a1 + 288), 2);
  if (!result)
  {
    result = *(a1 + 296);
    if (result)
    {

      return CMPhotoCodecSessionPoolFlush(result, 2);
    }
  }

  return result;
}

CFMutableStringRef CMPhotoDecompressionSession_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v5 = Mutable;
  if (Mutable)
  {
    OUTLINED_FUNCTION_0_34(Mutable, v4, @"<CMPhotoDecompressionSession %p> {\n");
    os_unfair_lock_lock((a1 + 16));
    Default = *(a1 + 288);
    if ((Default || (Default = CMPhotoCodecSessionPoolGetDefault()) != 0) && (v7 = CFCopyDescription(Default)) != 0 && ((v9 = v7, OUTLINED_FUNCTION_0_34(v7, v8, @"\tCodecPool: {\n%@\n}\n"), CFRelease(v9), (v10 = *(a1 + 272)) != 0) || (v10 = CMPhotoSurfacePoolGetDefault()) != 0) && (v11 = CFCopyDescription(v10)) != 0)
    {
      v13 = v11;
      OUTLINED_FUNCTION_0_34(v11, v12, @"\tSurfacePool: {\n%@\n}\n");
      os_unfair_lock_unlock((a1 + 16));
      OUTLINED_FUNCTION_0_34(v14, v15, @"}");
      CFRelease(v13);
    }

    else
    {
      os_unfair_lock_unlock((a1 + 16));
    }
  }

  return v5;
}

uint64_t CMPhotoDecompressionSessionCreateAsyncRequest_cold_1()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoDecompressionSessionCreateAsyncRequest_cold_2()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoGetCropPreOrientation(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 4294950306;
  }

  if (a4 == 1)
  {
    goto LABEL_19;
  }

  result = OUTLINED_FUNCTION_5_25(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28);
  if (result)
  {
    return result;
  }

  v13 = *a3;
  v14 = a3[1];
  v25 = v14;
  v26 = v13;
  v15 = a3[2];
  v16 = a3[3];
  if (v27)
  {
    if (v27 != 1)
    {
      goto LABEL_9;
    }

    v17 = &v26;
    v18 = a3[2];
    v19 = a1;
  }

  else
  {
    v17 = &v25;
    v13 = v14;
    v18 = a3[3];
    v19 = a2;
  }

  *v17 = v19 - (v18 + v13);
  v14 = v25;
  v13 = v26;
LABEL_9:
  v20 = v28 % 360;
  if (v28 % 360 == 270)
  {
    v13 = a1 - (v15 + v13);
    v21 = v14;
    goto LABEL_15;
  }

  if (v20 == 180)
  {
    v21 = a1 - (v15 + v13);
    v13 = a2 - (v16 + v14);
LABEL_17:
    v22 = v15;
    v15 = v16;
    goto LABEL_18;
  }

  if (v20 != 90)
  {
    v21 = v13;
    v13 = v14;
    goto LABEL_17;
  }

  v21 = a2 - (v16 + v14);
LABEL_15:
  v22 = v16;
LABEL_18:
  *a3 = v21;
  a3[1] = v13;
  a3[2] = v22;
  a3[3] = v15;
LABEL_19:
  result = 0;
  v23 = *(a3 + 1);
  *a5 = *a3;
  a5[1] = v23;
  return result;
}

uint64_t CMPhotoGetCropPostOrientation(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 4294950306;
  }

  if (a4 == 1)
  {
    goto LABEL_22;
  }

  v10 = a2;
  v11 = a1;
  result = OUTLINED_FUNCTION_5_25(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28);
  if (result)
  {
    return result;
  }

  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v16 = a3[3];
  v17 = (360 - v28) % 360;
  if (v17 == 270)
  {
    v13 = v11 - (v13 + v15);
    v18 = a3[1];
    goto LABEL_10;
  }

  if (v17 == 180)
  {
    v18 = v11 - (v13 + v15);
    v13 = v10 - (v14 + v16);
LABEL_12:
    v19 = a3[2];
    v15 = a3[3];
    goto LABEL_13;
  }

  if (v17 != 90)
  {
    v18 = *a3;
    v13 = a3[1];
    goto LABEL_12;
  }

  v18 = v10 - (v14 + v16);
LABEL_10:
  v19 = a3[3];
LABEL_13:
  if (v28 == 270 || v28 == 90)
  {
    v20 = v11;
    v11 = v10;
    v10 = v20;
  }

  v25 = v13;
  v26 = v18;
  if (!v27)
  {
    v21 = &v25;
    v18 = v13;
    v22 = v15;
    v11 = v10;
    goto LABEL_20;
  }

  if (v27 == 1)
  {
    v21 = &v26;
    v22 = v19;
LABEL_20:
    *v21 = v11 - v22 - v18;
    v13 = v25;
    v18 = v26;
  }

  *a3 = v18;
  a3[1] = v13;
  a3[2] = v19;
  a3[3] = v15;
LABEL_22:
  result = 0;
  v23 = *(a3 + 1);
  *a5 = *a3;
  a5[1] = v23;
  return result;
}

uint64_t CMPhotoTranslateAndScalePreOrientationCrop(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, char a9)
{
  if (!a8)
  {
    return 4294950306;
  }

  v10 = a7;
  v54 = 0u;
  v55 = 0u;
  v52 = 0uLL;
  v53.i64[0] = a1;
  v53.i64[1] = a2;
  result = CMPhotoGetCropPostOrientation(a1, a2, v52.i64, a4, &v54, a6, a7, a8);
  if (!result)
  {
    v47 = v55;
    v52 = 0uLL;
    v53.i64[0] = a5;
    v53.i64[1] = a6;
    result = CMPhotoGetCropPostOrientation(a5, a6, v52.i64, v10, &v54, v18, v19, v20);
    if (!result)
    {
      v46 = v55;
      v24 = *(a3 + 16);
      v50 = *a3;
      v51 = v24;
      v25 = *(a3 + 16);
      v52 = *a3;
      v53 = v25;
      result = CMPhotoGetCropPostOrientation(a1, a2, v52.i64, a4, &v50, v21, v22, v23);
      if (!result)
      {
        v29 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v46)), vcvt_f32_f64(vcvtq_f64_u64(v47)));
        v30 = vcvtq_f64_f32(v29);
        v31 = v50;
        v32 = v51;
        v34 = v29.f32[1] == 1.0 && v29.f32[0] == 1.0;
        if (a9)
        {
          if (!v34)
          {
            __asm { FMOV            V3.2D, #0.5 }

            v31 = vcvtq_n_u64_f64(vrndaq_f64(vmulq_f64(vmulq_f64(v30, vcvtq_f64_u64(v50)), _Q3)), 1uLL);
            v32 = vcvtq_n_u64_f64(vrndaq_f64(vmulq_f64(vmulq_f64(v30, vcvtq_f64_u64(v51)), _Q3)), 1uLL);
          }
        }

        else if (!v34)
        {
          v31 = vcvtq_u64_f64(vrndaq_f64(vmulq_f64(v30, vcvtq_f64_u64(v50))));
          v32 = vcvtq_u64_f64(vrndaq_f64(vmulq_f64(v30, vcvtq_f64_u64(v51))));
        }

        v39 = vaddq_s64(v31, v32);
        v40 = vbslq_s8(vcgtq_u64(v46, v39), v39, v46);
        v41 = vmovn_s64(vcgtq_u64(v40, v31));
        v42 = vsubq_s64(v40, v31);
        if (v41.i8[0] & v41.i8[4])
        {
          v43 = -1;
        }

        else
        {
          v43 = 0;
        }

        v44 = vdupq_n_s64(v43);
        v48 = 0u;
        v49 = 0u;
        v52 = vandq_s8(v31, v44);
        v53 = vandq_s8(v42, v44);
        result = CMPhotoGetCropPreOrientation(v46.i64[0], v46.i64[1], v52.i64, v10, &v48, v26, v27, v28);
        if (!result)
        {
          v45 = v49;
          *a8 = v48;
          a8[1] = v45;
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoPictureReaderCopyByteStreamForFirstTile(uint64_t a1, void *a2, void *a3)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  cf = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

  ContiguousBufferFromChunks = v6(a1, &v23);
  if (!ContiguousBufferFromChunks)
  {
    v8 = v23;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v9)
    {
      goto LABEL_11;
    }

    ContiguousBufferFromChunks = v9(v8, &v22);
    if (!ContiguousBufferFromChunks)
    {
      v10 = v22;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v11)
      {
        ContiguousBufferFromChunks = v11(v10, &v21, &v20, &v19, &cf, 0);
        if (!ContiguousBufferFromChunks)
        {
          if (v21 == 1 && cf)
          {
            v12 = CFRetain(cf);
            v13 = *v20;
LABEL_10:
            v14 = 0;
            *a2 = v12;
            v17 = 0;
            *a3 = v13;
            goto LABEL_12;
          }

          ContiguousBufferFromChunks = _createContiguousBufferFromChunks(*MEMORY[0x1E695E480], v21, v20, v19, cf, 1, 0, 0, 0, &v16);
          if (!ContiguousBufferFromChunks)
          {
            ContiguousBufferFromChunks = FigByteStreamCreateWithCFData();
            if (!ContiguousBufferFromChunks)
            {
              v13 = 0;
              v12 = v17;
              goto LABEL_10;
            }
          }
        }

        goto LABEL_26;
      }

LABEL_11:
      v14 = 4294954514;
      goto LABEL_12;
    }
  }

LABEL_26:
  v14 = ContiguousBufferFromChunks;
LABEL_12:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  free(v20);
  free(v19);
  return v14;
}

uint64_t CMPhotoPictureReaderCopyImageBitDepthForJPEG(uint64_t a1, CFMutableArrayRef *a2)
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v5 = Mutable;
  appended = CMPhotoPictureReaderCopyByteStreamForFirstTile(a1, &v14, &v13);
  v7 = v14;
  if (!appended)
  {
    OUTLINED_FUNCTION_4_25();
    if (!appended)
    {
      v8 = 0;
      v9 = v15;
      while (1)
      {
        appended = FigCFArrayAppendInt();
        if (appended)
        {
          break;
        }

        if (v9 == 6 || v8++ > 1)
        {
          v11 = 0;
          if (!a2)
          {
            goto LABEL_15;
          }

          *a2 = v5;
          if (v7)
          {
            goto LABEL_16;
          }

          return v11;
        }
      }
    }
  }

  v11 = appended;
LABEL_15:
  CFRelease(v5);
  if (v7)
  {
LABEL_16:
    CFRelease(v7);
  }

  return v11;
}

uint64_t CMPhotoPictureReaderGetYUVPixelFormatForJPEG(uint64_t a1, int *a2)
{
  cf = 0;
  v8 = 0;
  if (!a2)
  {
    return 0;
  }

  if (a1)
  {
    YUVPixelFormatForParameters = CMPhotoPictureReaderCopyByteStreamForFirstTile(a1, &cf, &v8);
    v4 = cf;
    if (!YUVPixelFormatForParameters)
    {
      OUTLINED_FUNCTION_4_25();
      if (!YUVPixelFormatForParameters)
      {
        YUVPixelFormatForParameters = CMPhotoGetYUVPixelFormatForParameters(0, 0, 1, 0, 0, 0, 1, a2);
      }
    }

    v5 = YUVPixelFormatForParameters;
    if (v4)
    {
      CFRelease(v4);
    }

    return v5;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(const void *a1, void *a2, uint64x2_t *a3, _DWORD *a4)
{
  v76 = 0;
  v77[0] = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0;
  v71 = 0;
  v69 = 0uLL;
  v68 = 1;
  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(a1, 0, &v74, &v70);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_45;
  }

  v9 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = *MEMORY[0x1E6972368];
  ImageGeometryFromPictureReader = v11(FigBaseObject, *MEMORY[0x1E6972368], v9, &v76);
  if (ImageGeometryFromPictureReader)
  {
    v13 = ImageGeometryFromPictureReader == -12783;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    goto LABEL_45;
  }

  if (v76)
  {
    Int = CMPhotoCFNumberGetInt(v76);
    if (Int % 90)
    {
      goto LABEL_99;
    }

    v15 = Int;
    if (v76)
    {
      CFRelease(v76);
      v76 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = CFGetAllocator(a1);
  v17 = FigPictureReaderGetFigBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
LABEL_36:
    v32 = 0;
    v21 = 4294954514;
    goto LABEL_37;
  }

  v19 = *MEMORY[0x1E6972338];
  v20 = v18(v17, *MEMORY[0x1E6972338], v16, &v76);
  if (v20)
  {
    v21 = v20;
    if (v20 != -12783)
    {
      goto LABEL_46;
    }
  }

  if (!v76)
  {
    v23 = -1;
    goto LABEL_21;
  }

  v22 = CMPhotoCFNumberGetInt(v76);
  if (v22 > 1)
  {
LABEL_99:
    v32 = 0;
LABEL_100:
    v21 = 4294950195;
    goto LABEL_37;
  }

  v23 = v22;
  if (v76)
  {
    CFRelease(v76);
    v76 = 0;
  }

LABEL_21:
  v24 = CFGetAllocator(a1);
  v25 = FigPictureReaderGetFigBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    goto LABEL_36;
  }

  ImageGeometryFromPictureReader = v26(v25, *MEMORY[0x1E69722C8], v24, v77);
  if (ImageGeometryFromPictureReader)
  {
LABEL_45:
    v21 = ImageGeometryFromPictureReader;
LABEL_46:
    v32 = 0;
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(v77[0], *MEMORY[0x1E69722E0]);
  if (!Value || (v28 = Value, v29 = CFGetTypeID(Value), v29 != CFArrayGetTypeID()) || CFArrayGetCount(v28) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(v28, 0)) == 0 || (v31 = CFRetain(ValueAtIndex)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    ImageGeometryFromPictureReader = FigSignalErrorAtGM();
    goto LABEL_45;
  }

  v32 = v31;
  v33 = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v31, 0, 0, &v69);
  if (v33)
  {
LABEL_103:
    v21 = v33;
    goto LABEL_37;
  }

  v73 = v69;
  v34 = CFDictionaryGetValue(v77[0], *MEMORY[0x1E69722D8]);
  if (!v34)
  {
    v43 = 0;
    v45 = -1;
    v46 = v73.i64[0];
LABEL_58:
    if (v46 != v70)
    {
      goto LABEL_100;
    }

    v48 = v73.i64[1];
    if (v73.i64[1] != v71)
    {
      goto LABEL_100;
    }

    goto LABEL_60;
  }

  v35 = v34;
  v65 = v23;
  v36 = CFGetTypeID(v34);
  if (v36 != CFDictionaryGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    v33 = FigSignalErrorAtGM();
    goto LABEL_103;
  }

  v37 = CFDictionaryGetValue(v35, *MEMORY[0x1E6965D70]);
  if (v37)
  {
    v38.f64[0] = CMPhotoGetCropRectFromCLAPDict(v37, v69.u64[0]);
    v38.f64[1] = v39;
    v41.f64[1] = v40;
    v72 = vcvtq_u64_f64(vrndaq_f64(v38));
    v73 = vcvtq_u64_f64(vrndaq_f64(v41));
  }

  v42 = CFDictionaryGetValue(v35, v12);
  v23 = v65;
  if (v42)
  {
    v43 = CMPhotoCFNumberGetInt(v42);
    if (v43 % 90)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v43 = 0;
  }

  v47 = CFDictionaryGetValue(v35, v19);
  if (v47)
  {
    v45 = CMPhotoCFNumberGetInt(v47);
    if (v45 > 1)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v45 = -1;
  }

  v48 = v73.i64[0];
  if (!(v43 % 180))
  {
    v46 = v73.i64[0];
    goto LABEL_58;
  }

  if (v73.i64[0] != v71)
  {
    goto LABEL_100;
  }

  v46 = v73.i64[1];
  if (v73.i64[1] != v70)
  {
    goto LABEL_100;
  }

LABEL_60:
  v49 = *(&v74 + 1);
  v51 = v74;
  v67 = v51 >> 64;
  v50 = v51;
  *&v66[0] = v74;
  v53 = *(&v75 + 1);
  v52 = v75;
  if (v45 == 1)
  {
    v54 = v66;
    v55 = v75;
    v56 = v46;
  }

  else
  {
    if (v45)
    {
      goto LABEL_65;
    }

    v54 = &v67;
    v50 = *(&v74 + 1);
    v55 = *(&v75 + 1);
    v56 = v48;
  }

  *v54 = v56 - (v55 + v50);
  v50 = *&v66[0];
  v49 = v67;
LABEL_65:
  v57 = v43 % 360;
  if (v43 % 360 == 270)
  {
    v50 = v46 - (v52 + v50);
    v58 = v49;
    goto LABEL_71;
  }

  if (v57 == 180)
  {
    v58 = v46 - (v52 + v50);
    v50 = v48 - (v53 + v49);
LABEL_73:
    v59 = v52;
    v52 = v53;
    goto LABEL_74;
  }

  if (v57 != 90)
  {
    v58 = v50;
    v50 = v49;
    goto LABEL_73;
  }

  v58 = v48 - (v53 + v49);
LABEL_71:
  v59 = v53;
LABEL_74:
  *&v74 = v58;
  *(&v74 + 1) = v50;
  *&v75 = v59;
  *(&v75 + 1) = v52;
  if (v45 != -1 && (v15 == 270 || v15 == 90))
  {
    if (v15 < 0xB4)
    {
      v60 = 180;
    }

    else
    {
      v60 = -180;
    }

    v15 += v60;
  }

  v66[0] = v74;
  v66[1] = v75;
  v33 = CMPhotoApplyCropCMPhotoRectToRect(&v72, v66);
  if (v33)
  {
    goto LABEL_103;
  }

  v61 = (v15 + v43) % 360;
  if (v23 == v45)
  {
    goto LABEL_91;
  }

  if (v23 == -1)
  {
    v62 = v45;
  }

  else
  {
    v62 = v23;
  }

  if (v23 != -1 && v45 != -1)
  {
    v61 = (v61 + 180) % 360;
LABEL_91:
    v62 = -1;
  }

  v33 = CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(v61, v62, &v68);
  if (v33)
  {
    goto LABEL_103;
  }

  if (a2)
  {
    *a2 = v32;
    v32 = 0;
  }

  if (a3)
  {
    v64 = v73;
    *a3 = v72;
    a3[1] = v64;
  }

  v21 = 0;
  if (a4)
  {
    *a4 = v68;
  }

LABEL_37:
  if (v77[0])
  {
    CFRelease(v77[0]);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v21;
}

uint64_t CMPhotoPictureReaderCopyBaseReader(uint64_t a1, int a2, void *a3)
{
  v26 = 0;
  theDict = 0;
  v24 = 0;
  cf = 0;
  if (a2 != 1735551332)
  {
    if (a2 != 1768187246 && a2 != 1953325424 && a2 != 1768912492)
    {
      ValueAtIndex = 0;
      if (!a3)
      {
LABEL_27:
        v21 = 0;
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(FigBaseObject, *MEMORY[0x1E69722C8], *MEMORY[0x1E695E480], &theDict);
      if (!v10)
      {
        Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69722E0]);
        if (!Value)
        {
          goto LABEL_42;
        }

        v12 = Value;
        v13 = CFGetTypeID(Value);
        if (v13 != CFArrayGetTypeID())
        {
          goto LABEL_42;
        }

        Count = CFArrayGetCount(v12);
        if (a2 == 1768187246)
        {
          if (Count != 1)
          {
LABEL_42:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_19();
            v10 = FigSignalErrorAtGM();
            goto LABEL_43;
          }
        }

        else if (Count <= 0)
        {
          goto LABEL_42;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        v26 = ValueAtIndex;
        if (!a3)
        {
          goto LABEL_27;
        }

LABEL_32:
        v21 = 0;
        *a3 = ValueAtIndex;
        v26 = 0;
        goto LABEL_33;
      }

LABEL_43:
      v21 = v10;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
    goto LABEL_25;
  }

  v10 = v15(a1, &cf);
  if (v10)
  {
    goto LABEL_43;
  }

  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
    goto LABEL_25;
  }

  v10 = v17(v16, &v24);
  if (v10)
  {
    goto LABEL_43;
  }

  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
LABEL_25:
    v21 = 4294954514;
    goto LABEL_33;
  }

  v20 = v19(CMBaseObject, *MEMORY[0x1E69723A0], *MEMORY[0x1E695E480], &v26);
  v21 = v20;
  if (a3 && !v20)
  {
    ValueAtIndex = v26;
    goto LABEL_32;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v21;
}

uint64_t CMPhotoPictureReaderCopyFormatDescriptorFromReader(uint64_t a1, uint64_t a2, int a3, CMFormatDescriptionRef *a4)
{
  cf = 0;
  v22 = 0;
  desc = 0;
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9(FigBaseObject, *MEMORY[0x1E69722F8], a2, &desc);
  if (v10)
  {
    goto LABEL_26;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (!a3 || MediaSubType != 1735551332)
  {
    if (!a4)
    {
      v18 = 0;
      goto LABEL_16;
    }

LABEL_24:
    v18 = 0;
    *a4 = desc;
    desc = 0;
    goto LABEL_16;
  }

  if (desc)
  {
    CFRelease(desc);
    desc = 0;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
LABEL_15:
    v18 = 4294954514;
    goto LABEL_16;
  }

  v10 = v12(a1, &v22);
  if (v10)
  {
LABEL_26:
    v18 = v10;
    goto LABEL_16;
  }

  v13 = v22;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    goto LABEL_15;
  }

  v10 = v14(v13, &cf);
  if (v10)
  {
    goto LABEL_26;
  }

  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16(CMBaseObject, *MEMORY[0x1E6972398], a2, &desc);
  v18 = v17;
  if (a4 && !v17)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (desc)
  {
    CFRelease(desc);
  }

  return v18;
}

uint64_t _readBytesFromChunks(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (*(a1 + 32) == 0)
  {
    v8 = **(a1 + 16);
    *(a1 + 40) = v8;
  }

  v9 = *(a1 + 48);
  if (v9 >= v8)
  {
    *(a1 + 32) = ++v7;
    if (v7 >= *a1)
    {
      return 4294950194;
    }

    v9 = 0;
    v8 = *(*(a1 + 16) + 8 * v7);
    *(a1 + 40) = v8;
    *(a1 + 48) = 0;
  }

  v10 = v8 - v9;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  v17 = 0;
  v12 = *(a1 + 24);
  v13 = *(*(a1 + 8) + 8 * v7);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    return 4294954514;
  }

  result = v14(v12, v11, v13 + v9, a3, &v17);
  if (!result)
  {
    v16 = v17;
    *(a1 + 48) = vaddq_s64(*(a1 + 48), vdupq_n_s64(v17));
    result = 0;
    if (a4)
    {
      *a4 = v16;
    }
  }

  return result;
}

uint64_t _processCompressedData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t byteStreamWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v12 = 0;
  v9 = v8;
  do
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v10)
    {
      return 4294954514;
    }

    result = v10(a1, a3, v9, a2 + v9 - v8, &v12);
    if (result)
    {
      return result;
    }

    v9 += v12;
    a3 -= v12;
  }

  while (v12 && a3);
  if (a3)
  {
    return 4294954516;
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t CMPhotoJPEGAddMPDataToJPEG(__IOSurface *a1, CFIndex a2, IOSurfaceRef *a3, uint64_t *a4, signed int a5, __CFDictionary **a6, CFIndex *a7)
{
  v11 = a2 + 16 * a5 + 74;
  if (a5 >= 1)
  {
    v12 = a3;
    v13 = a4;
    v14 = a5;
    do
    {
      if ((IOSurfaceGetPixelFormat(*v12) & 0xFFFFFFEF) == 0x34323066)
      {
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(*v12, 0);
        v16 = v11 + IOSurfaceGetHeightOfPlane(*v12, 0) * BytesPerRowOfPlane;
        v17 = IOSurfaceGetBytesPerRowOfPlane(*v12, 1uLL);
        v11 = v16 + IOSurfaceGetHeightOfPlane(*v12, 1uLL) * v17;
      }

      else
      {
        v11 += *v13;
      }

      ++v13;
      ++v12;
      --v14;
    }

    while (v14);
  }

  JPEGSurface = createJPEGSurface(v11);
  if (JPEGSurface)
  {
    WritableWithIOSurface = FigByteStreamCreateWritableWithIOSurface();
    if (WritableWithIOSurface)
    {
      v20 = WritableWithIOSurface;
    }

    else
    {
      v20 = CMPhotoJPEGWriteMPFWithJPEG(a1, a2, a3, a4, a5, 0);
      if (!v20)
      {
        *a6 = JPEGSurface;
        *a7 = v11;
        JPEGSurface = 0;
      }
    }
  }

  else
  {
    v20 = 4294954510;
  }

  if (JPEGSurface)
  {
    CFRelease(JPEGSurface);
  }

  return v20;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _openContainerWithModificationCallback(uint64_t a1, const __CFDictionary *a2, uint64_t a3, void *a4, CFMutableDictionaryRef *a5, uint64_t (*a6)(CFDictionaryRef, uint64_t), uint64_t a7)
{
  v53[4] = *MEMORY[0x1E69E9840];
  theDict = 0;
  v51 = 0;
  v12 = _parseContainer(a1, a2, a3, a4);
  if (v12)
  {
    return v12;
  }

  _handleStripping(a1, a2);
  v13 = _createDescriptionFromSession(a1, &v51);
  if (v13)
  {
    DescriptionFromSession = v13;
    v15 = v51;
    goto LABEL_58;
  }

  v14 = CFGetAllocator(a1);
  v15 = v51;
  v16 = CMPhotoPropertyListCopyWithMutableContainers(v14, v51, &theDict);
  if (v16 || (v16 = a6(theDict, a7), v16))
  {
LABEL_66:
    DescriptionFromSession = v16;
    goto LABEL_58;
  }

  if (!CMPhotoCompressionSessionCheckForIllegalModification(v15, theDict))
  {
    fig_log_get_emitter();
    v16 = FigSignalErrorAtGM();
    goto LABEL_66;
  }

  v53[0] = @"EXIFMetadata";
  v53[1] = @"XMPMetadata";
  v53[2] = @"DebugMetadata";
  v53[3] = @"CustomMetadata";
  v52[0] = a1 + 328;
  v52[1] = a1 + 336;
  v52[2] = a1 + 344;
  v52[3] = a1 + 352;
  Value = CFDictionaryGetValue(theDict, @"ImageList");
  if (!Value || (v18 = Value, CFArrayGetCount(Value) != 1) || (ValueAtIndex = CFArrayGetValueAtIndex(v18, 0)) == 0 || (v20 = ValueAtIndex, v21 = CFGetTypeID(ValueAtIndex), v21 != CFDictionaryGetTypeID()))
  {
    DescriptionFromSession = 4294950306;
    goto LABEL_58;
  }

  v49 = a5;
  v22 = 0;
  v23 = 1;
  while (2)
  {
    v24 = v22;
    while (1)
    {
      v25 = v52[v24];
      v26 = *v25;
      v27 = CFDictionaryGetValue(v20, v53[v24]);
      if (v27)
      {
        break;
      }

      if (v26)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (++v24 == 4)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 != CFArrayGetTypeID())
    {
      v35 = v49;
      goto LABEL_53;
    }

    if (!v26 || CFArrayGetCount(v28))
    {
      if (CFArrayGetCount(v28) >= 1)
      {
        v30 = OUTLINED_FUNCTION_37();
        v32 = CFArrayGetValueAtIndex(v30, v31);
        if (!FigCFEqual())
        {
          *(a1 + 376) = 1;
          if (*v25)
          {
            CFRelease(*v25);
          }

          if (v32)
          {
            v33 = CFRetain(v32);
          }

          else
          {
LABEL_28:
            v33 = 0;
          }

          goto LABEL_29;
        }
      }

      goto LABEL_20;
    }

LABEL_22:
    *(a1 + 376) = 1;
    v33 = *v25;
    if (*v25)
    {
      CFRelease(v33);
      goto LABEL_28;
    }

LABEL_29:
    v23 = 0;
    *v25 = v33;
    v22 = v24 + 1;
    if (v24 != 3)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v34 = *(a1 + 328) || *(a1 + 336) || *(a1 + 344) || *(a1 + 352) != 0;
  *(a1 + 320) = v34;
LABEL_37:
  v35 = v49;
  if (!*(a1 + 280))
  {
    goto LABEL_43;
  }

  v36 = CFDictionaryGetValue(v20, @"ThumbnailImage");
  if (!v36)
  {
LABEL_41:
    *(a1 + 376) = 1;
    v39 = *(a1 + 280);
    if (v39)
    {
      CFRelease(v39);
      *(a1 + 280) = 0;
    }

    goto LABEL_43;
  }

  v37 = v36;
  v38 = CFGetTypeID(v36);
  if (v38 == CFArrayGetTypeID())
  {
    if (!CFArrayGetCount(v37))
    {
      goto LABEL_41;
    }

LABEL_43:
    v40 = *(a1 + 312);
    if (v40 && CFArrayGetCount(v40) >= 1)
    {
      v41 = CFDictionaryGetValue(v20, @"Auxiliary");
      CMPhotoFilterCompressedAuxImageStorageArray(*(a1 + 312), v41);
      if (v16)
      {
        goto LABEL_66;
      }

      v42 = *(a1 + 312);
      if (v42)
      {
        if (!CFArrayGetCount(v42))
        {
          v43 = *(a1 + 312);
          if (v43)
          {
            CFRelease(v43);
            *(a1 + 312) = 0;
          }
        }
      }
    }

    goto LABEL_54;
  }

LABEL_53:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_14();
  v16 = FigSignalErrorAtGM();
  if (v16)
  {
    goto LABEL_66;
  }

LABEL_54:
  v45 = OUTLINED_FUNCTION_27();
  v47 = _handleRewrite(v45, v46);
  DescriptionFromSession = v47;
  if (v35)
  {
    if (!v47)
    {
      v53[0] = 0;
      DescriptionFromSession = _createDescriptionFromSession(a1, v53);
      if (!DescriptionFromSession)
      {
        *v35 = v53[0];
      }
    }
  }

LABEL_58:
  if (v15)
  {
    CFRelease(v15);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return DescriptionFromSession;
}

uint64_t _closeContainerAndCopyBacking(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_54_0();
  v8 = v7;
  v9 = CFGetAllocator(v7);
  DataLength = 0;
  OUTLINED_FUNCTION_7_0();
  if (v10)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (!(a4 | *(v8 + 264)))
  {
LABEL_104:
    v19 = 0;
    goto LABEL_105;
  }

  if (!*(v8 + 376) && !*(v8 + 280))
  {
    v20 = *(v8 + 312);
    if ((!v20 || !CFArrayGetCount(v20)) && !*(v8 + 320) && !*(v8 + 288))
    {
      if (*(v8 + 304))
      {
        v21 = (v8 + 248);
        if (!*(v8 + 248))
        {
          v11 = *(v8 + 240);
          if (v11 != 4)
          {
            if (v11 == 2)
            {
              DataBuffer = CMSampleBufferGetDataBuffer(*(v8 + 264));
              if (DataBuffer)
              {
                v53 = DataBuffer;
                DataLength = CMBlockBufferGetDataLength(DataBuffer);
                *v21 = CFRetain(v53);
                goto LABEL_98;
              }

              v19 = 4294950304;
              goto LABEL_105;
            }

            if (v11 == 1)
            {
              v22 = OUTLINED_FUNCTION_14_16();
              WritableWithCFMutableData = CMPhotoDataCreateFromSampleBuffer(v22, v23, v24, (v8 + 248));
              if (!WritableWithCFMutableData)
              {
                DataLength = CFDataGetLength(*v21);
                goto LABEL_98;
              }

LABEL_23:
              v19 = WritableWithCFMutableData;
              goto LABEL_105;
            }

            goto LABEL_8;
          }

          theData = 0;
          WritableWithCFMutableData = CMPhotoSampleBufferCopyIOSurfaceBacking(*(v8 + 264), (v8 + 248), &theData, &DataLength);
          if (WritableWithCFMutableData)
          {
            goto LABEL_23;
          }

          if (*v21)
          {
LABEL_98:
            if (v5)
            {
              *v5 = *(v8 + 240);
            }

            if (v4)
            {
              *v4 = DataLength;
            }

            if (a4)
            {
              v19 = 0;
              *a4 = *(v8 + 248);
              *(v8 + 248) = 0;
              goto LABEL_105;
            }

            goto LABEL_104;
          }
        }
      }
    }
  }

  v11 = *(v8 + 240);
LABEL_8:
  switch(v11)
  {
    case 1:
      if (!*(v8 + 248))
      {
        Mutable = CFDataCreateMutable(v9, 0);
        *(v8 + 248) = Mutable;
        if (!Mutable)
        {
          v19 = 4294950305;
          goto LABEL_105;
        }
      }

      WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
      if (WritableWithCFMutableData)
      {
        goto LABEL_23;
      }

LABEL_58:
      cf = 0;
      theData = 0;
      v58 = 0;
      if (*(v8 + 376))
      {
        v36 = OUTLINED_FUNCTION_14_16();
      }

      else
      {
        v37 = *(v8 + 264);
        v38 = *(v8 + 304) == 0;
        p_theData = &theData;
        v36 = v9;
      }

      v19 = CMPhotoDataCreateFromSampleBuffer(v36, v37, v38, p_theData);
      if (v19)
      {
        MutableCopy = 0;
        goto LABEL_89;
      }

      if (*(v8 + 376) || *(v8 + 280) || *(v8 + 320) || *(v8 + 288) || (v47 = *(v8 + 312)) != 0 && CFArrayGetCount(v47))
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          v19 = 4294950305;
          goto LABEL_89;
        }

        v41 = *(v8 + 280);
        if (v41)
        {
          ImagePropertiesFromData = CMPhotoDataCreateFromSampleBuffer(v9, v41, *(v8 + 305) == 0, &cf);
          if (ImagePropertiesFromData)
          {
LABEL_80:
            v19 = ImagePropertiesFromData;
            goto LABEL_89;
          }
        }

        v43 = *(v8 + 288);
        if (v43)
        {
          CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D320], v43);
        }

        v44 = *(v8 + 352);
        if (v44)
        {
          CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696DD60], v44);
        }

        v45 = *(v8 + 344);
        if (v45)
        {
          CFDictionarySetValue(MutableCopy, @"iOS_Debug", v45);
        }

        if (*(v8 + 328) == 0)
        {
          v46 = 0;
        }

        else
        {
          ImagePropertiesFromData = CMPhotoCreateImagePropertiesFromData(v9, 0, 0, *(v8 + 328), *(v8 + 336), 0, *(v8 + 288), &v58, 0);
          if (ImagePropertiesFromData)
          {
            goto LABEL_80;
          }

          v46 = v58;
        }

        ImagePropertiesFromData = CMPhotoJFIFUtilitiesMergeImageComponents(v9, 0, theData, cf, *(v8 + 312), MutableCopy, v46);
        if (ImagePropertiesFromData)
        {
          goto LABEL_80;
        }
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        ImagePropertiesFromData = CMByteStreamWrite(0, Length, BytePtr);
        MutableCopy = 0;
        if (ImagePropertiesFromData)
        {
          goto LABEL_80;
        }
      }

      v57 = 0;
      v50 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v50)
      {
        v19 = 4294954514;
        goto LABEL_89;
      }

      ImagePropertiesFromData = v50(0, 0, &v57);
      if (ImagePropertiesFromData)
      {
        goto LABEL_80;
      }

      if ((v57 & 0x8000000000000000) != 0)
      {
        v19 = 4294950190;
      }

      else
      {
        v19 = 0;
        DataLength = v57;
      }

LABEL_89:
      if (theData)
      {
        CFRelease(theData);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      if (!v19)
      {
        goto LABEL_98;
      }

LABEL_105:
      _releaseAllContainerResources(v8);
      OUTLINED_FUNCTION_7_0();
      if (v10)
      {
        OUTLINED_FUNCTION_6();
        kdebug_trace();
      }

      return v19;
    case 2:
      if (!*(v8 + 248))
      {
        v16 = OUTLINED_FUNCTION_14_16();
        WritableWithCFMutableData = CMBlockBufferCreateEmpty(v16, v17, v18, (v8 + 248));
        if (WritableWithCFMutableData)
        {
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_14_16();
      WritableWithCFMutableData = CMByteStreamCreateWritableForBlockBuffer();
      if (WritableWithCFMutableData)
      {
        goto LABEL_23;
      }

      goto LABEL_58;
    case 3:
      WritableWithCFMutableData = CMByteStreamCreateForFileURL();
      if (WritableWithCFMutableData)
      {
        goto LABEL_23;
      }

      goto LABEL_58;
    case 4:
      if (*(v8 + 248))
      {
        goto LABEL_57;
      }

      v14 = *(v8 + 264);
      if (v14)
      {
        v15 = CMSampleBufferGetSampleSize(v14, 0) + 0x10000;
      }

      else
      {
        v15 = 0x10000;
      }

      v55 = v15;
      v25 = *(v8 + 280);
      if (v25)
      {
        SampleSize = CMSampleBufferGetSampleSize(v25, 0);
      }

      else
      {
        SampleSize = 0;
      }

      v26 = 0;
      v27 = 0;
      while (1)
      {
        Count = *(v8 + 312);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v26 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 312), v26);
        v27 += CMSampleBufferGetSampleSize(*ValueAtIndex, 0);
        ++v26;
      }

      v30 = *(v8 + 288);
      if (v30)
      {
        v31 = CFDataGetLength(v30);
      }

      else
      {
        v31 = 0;
      }

      v32 = *(v8 + 344);
      if (v32)
      {
        v33 = CFDataGetLength(v32);
      }

      else
      {
        v33 = 0;
      }

      v34 = *(v8 + 352);
      if (v34)
      {
        v34 = CFDataGetLength(v34);
      }

      if (*(v8 + 256) <= v34 + v33 + v55 + SampleSize + v27 + v31)
      {
        v35 = v34 + v33 + v55 + SampleSize + v27 + v31;
      }

      else
      {
        v35 = *(v8 + 256);
      }

      WritableWithCFMutableData = CMPhotoSurfacePoolCreateMemorySurface(@"SurfacePoolOneShot", v35, 1, (v8 + 248));
      if (!WritableWithCFMutableData)
      {
        IOSurfaceDecrementUseCount(*(v8 + 248));
LABEL_57:
        WritableWithCFMutableData = FigByteStreamCreateWritableWithIOSurface();
        if (!WritableWithCFMutableData)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_23;
    default:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      WritableWithCFMutableData = FigSignalErrorAtGM();
      goto LABEL_23;
  }
}

uint64_t _addExif (uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef a4)
{
  v8 = CFGetAllocator(a1);
  if (a4)
  {
    a4 = CFRetain(a4);
  }

  if (a2 || !*(a1 + 264) || *(a1 + 328))
  {
    goto LABEL_27;
  }

  v17 = 0;
  Length = CFDataGetLength(a4);
  if (!a3 || !CMPhotoCFDictionaryGetInt32IfPresent())
  {
    v10 = CMPhotoExifDetectTIFFHeaderOffset(a4, &v17, &v17 + 1);
    if (v10)
    {
LABEL_29:
      v15 = v10;
      goto LABEL_20;
    }

    if (v17)
    {
      goto LABEL_12;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
LABEL_28:
    v10 = FigSignalErrorAtGM();
    goto LABEL_29;
  }

  if (Length <= HIDWORD(v17))
  {
LABEL_27:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    goto LABEL_28;
  }

  LOBYTE(v17) = 1;
LABEL_12:
  BytePtr = CFDataGetBytePtr(a4);
  if (!memcmp(BytePtr, "Exif", 6uLL))
  {
    if (!a4)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v14 = CFRetain(a4);
LABEL_19:
    v15 = 0;
    *(a1 + 328) = v14;
    *(a1 + 320) = 1;
    goto LABEL_20;
  }

  Mutable = CFDataCreateMutable(v8, 0);
  if (Mutable)
  {
    v13 = Mutable;
    CFDataAppendBytes(Mutable, "Exif", 6);
    CFDataAppendBytes(v13, &BytePtr[HIDWORD(v17)], Length - HIDWORD(v17));
    if (a4)
    {
      CFRelease(a4);
    }

    a4 = v13;
    goto LABEL_18;
  }

  v15 = 4294950305;
LABEL_20:
  if (a4)
  {
    CFRelease(a4);
  }

  return v15;
}

uint64_t _addAuxImageMetadata(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  OUTLINED_FUNCTION_54_0();
  v8 = v7;
  Count = *(v7 + 312);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if ((v5 & 0x8000000000000000) == 0 && Count > v5)
  {
    if (!v4)
    {
      return 4294950306;
    }

    v10 = CFGetTypeID(v4);
    if (v10 != CGImageMetadataGetTypeID())
    {
      return 4294950306;
    }

    if (!a4)
    {
      v12 = 0;
      goto LABEL_15;
    }

    Value = FigCFDictionaryGetValue();
    v12 = Value;
    if (!Value)
    {
LABEL_11:
      v14 = FigCFDictionaryGetValue();
      a4 = v14;
      if (v14)
      {
        v15 = CFGetTypeID(v14);
        if (v15 != CFDictionaryGetTypeID())
        {
          v16 = 4294950306;
LABEL_30:
          if (v12)
          {
            CFRelease(v12);
          }

          return v16;
        }
      }

LABEL_15:
      ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 312), v5);
      if (ValueAtIndex)
      {
        v18 = ValueAtIndex;
        if (!ValueAtIndex[2])
        {
          ValueAtIndex[2] = CFRetain(v4);
          v19 = v18[6];
          if (v19)
          {
            CFRelease(v19);
            v18[6] = 0;
          }

          if (a4)
          {
            v20 = CFRetain(a4);
          }

          else
          {
            v20 = 0;
          }

          v18[6] = v20;
          v21 = v18[5];
          if (v21)
          {
            CFRelease(v21);
          }

          v16 = 0;
          v18[5] = v12;
          return v16;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v16 = FigSignalErrorAtGM();
      }

      else
      {
        v16 = 4294950304;
      }

      goto LABEL_30;
    }

    v13 = CFGetTypeID(Value);
    if (v13 != CGColorSpaceGetTypeID())
    {
      return 4294950306;
    }

    v12 = CGColorSpaceCopyICCData(v12);
    if (v12)
    {
      goto LABEL_11;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _addTmapImageOneShot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, int a7, const CGImageMetadata *a8, uint64_t *a9)
{
  v30 = 0;
  v31 = -1;
  if (a2 || !a5 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
LABEL_36:
    v22 = FigSignalErrorAtGM();
    v19 = 0;
    MutableCopy = 0;
    goto LABEL_18;
  }

  ColorSpaceFromTriplets = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  CFValueIfPresent = CMPhotoCFDictionaryGetCFValueIfPresent();
  v13 = CMPhotoCFDictionaryGetCFValueIfPresent();
  v14 = CMPhotoCFDictionaryGetCFValueIfPresent();
  v15 = CMPhotoCFDictionaryGetCFValueIfPresent();
  if (CFValueIfPresent || !v13 || !v14 || !v15 || (ColorSpaceFromTriplets = CMPhotoCreateColorSpaceFromTriplets(v28, v27, v26, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_14();
    goto LABEL_36;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v19 = 0;
    goto LABEL_33;
  }

  memset(v25, 0, sizeof(v25));
  v17 = CMPhotoParseFlexRangeMetadataDictionary(a6, v25);
  if (v17 || (v18 = CGColorSpaceUsesITUR_2100TF(ColorSpaceFromTriplets), v17 = CMPhotoCreateXMPMetadataFromMetadata(v25, !v18, &v30), v17))
  {
    v22 = v17;
    v19 = 0;
    goto LABEL_18;
  }

  if (a7)
  {
    v19 = CGImageMetadataCreateMutableCopy(v30);
    if (v19)
    {
      v20 = CMPhotoAddMeteorPlusGainMapMetadata(a8, v19);
      if (v20)
      {
        v22 = v20;
        goto LABEL_18;
      }

      if (v30)
      {
        CFRelease(v30);
      }

      v30 = v19;
      goto LABEL_15;
    }

LABEL_33:
    v22 = 4294950305;
    goto LABEL_18;
  }

LABEL_15:
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CMPhotoCompressionSessionAddAuxiliaryImage(a1);
  v22 = v21;
  v19 = 0;
  if (a9 && !v21)
  {
    v19 = 0;
    *a9 = v31;
  }

LABEL_18:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v22;
}

uint64_t _parseContainer(uint64_t a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  AllocSize = 0;
  v81 = 0;
  v8 = CFGetAllocator(a1);
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v76 = 0;
  cf = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

  v9 = CFGetTypeID(a4);
  if (v9 == IOSurfaceGetTypeID() && !CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BackingIOSurfaceSourceSize", &AllocSize))
  {
    AllocSize = IOSurfaceGetAllocSize(a4);
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  if (!AllocSize)
  {
LABEL_6:
    v83[0] = 0;
    if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v13 = 4294954514;
      goto LABEL_66;
    }

    v10 = OUTLINED_FUNCTION_17();
    ExifLocationFromJFIFByteStream = v11(v10);
    if (ExifLocationFromJFIFByteStream)
    {
      goto LABEL_84;
    }

    if ((v83[0] & 0x8000000000000000) != 0)
    {
      v13 = 4294950190;
      goto LABEL_66;
    }

    AllocSize = v83[0];
  }

  ExifLocationFromJFIFByteStream = _newContainer(a1, a2);
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_17();
  CMPhotoCopyImageCountAndRangesFromJFIFByteStream();
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  *(a1 + 384) = AllocSize;
  v14 = OUTLINED_FUNCTION_27();
  ExifLocationFromJFIFByteStream = CMPhotoSampleBufferCreateFromSource(v14, v15, 0, v16, v17, v18);
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  if (v81 >= 2)
  {
    v19 = *MEMORY[0x1E695E498];
    v20 = 16;
    for (i = 1; i < v81; ++i)
    {
      if (v79)
      {
        CFRelease(v79);
        v79 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v72 = 0;
      v22 = OUTLINED_FUNCTION_27();
      ExifLocationFromJFIFByteStream = CMPhotoSampleBufferCreateFromSource(v22, v23, v24, v25, v26, v27);
      if (ExifLocationFromJFIFByteStream)
      {
        goto LABEL_84;
      }

      LODWORD(sampleSizeArray.isa) = 0;
      if (!CMPhotoJFIFUtilitiesCreateAuxiliaryPropertiesFromStream(v8, a3, *&v80[v20], &sampleSizeArray, 0, &cf, 0))
      {
        goto LABEL_35;
      }

      v83[0] = 0;
      OUTLINED_FUNCTION_6();
      CMPhotoGetImageInformationFromJFIFByteStream();
      if (v28)
      {
        v13 = v28;
      }

      else if (v83[0])
      {
        CFRelease(v83[0]);
        v83[0] = 0;
        LODWORD(sampleSizeArray.isa) = 4;
        cf = CFStringCreateWithCStringNoCopy(v8, "urn:iso:std:iso:ts:21496:-1", 0x8000100u, v19);
        if (cf)
        {
          v13 = 0;
        }

        else
        {
          v13 = 4294950305;
        }

        if (!v13)
        {
LABEL_34:
          if (v13)
          {
            goto LABEL_66;
          }

LABEL_35:
          ExifLocationFromJFIFByteStream = _saveAuxImage(a1 + 240, v79, v72, 1, LODWORD(sampleSizeArray.isa), 0, cf, 0, 0, 0, 0, 0, 0, 0, 0);
          if (ExifLocationFromJFIFByteStream)
          {
            goto LABEL_84;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v13 = 4294950300;
      }

      if (!v73)
      {
        goto LABEL_34;
      }

      *(a1 + 376) = 1;
LABEL_36:
      v20 += 16;
    }
  }

  v71 = 0;
  memset(&sampleSizeArray.info, 0, 24);
  OUTLINED_FUNCTION_17();
  ExifLocationFromJFIFByteStream = CMPhotoGetExifLocationFromJFIFByteStream();
  if (ExifLocationFromJFIFByteStream)
  {
    goto LABEL_84;
  }

  if (!v71)
  {
    goto LABEL_49;
  }

  v72 = 0;
  v83[0] = 0;
  sampleSizeArray.isa = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(*(a1 + 264));
  if (DataBuffer)
  {
    ExifLocationFromJFIFByteStream = CMPhotoParseExifFromTIFF(DataBuffer, sampleSizeArray.info, sampleSizeArray.data, 0, 0, &v72, v83, &sampleSizeArray, (a1 + 368));
    if (!ExifLocationFromJFIFByteStream)
    {
      if (v72)
      {
        v30 = OUTLINED_FUNCTION_27();
        ExifLocationFromJFIFByteStream = CMBlockBufferCreateWithBufferReference(v30, v31, v32, v33, 0, v34);
        if (ExifLocationFromJFIFByteStream)
        {
          goto LABEL_84;
        }

        ExifLocationFromJFIFByteStream = CMSampleBufferCreate(v8, v78, 1u, 0, 0, 0, 1, 0, 0, 1, &sampleSizeArray, (a1 + 280));
        if (ExifLocationFromJFIFByteStream)
        {
          goto LABEL_84;
        }

        *(a1 + 305) = *(a1 + 304);
      }

      v35 = OUTLINED_FUNCTION_27();
      ExifLocationFromJFIFByteStream = CMPhotoDataCreateFromSource(v35, v36, v37, v38, v39, 0);
      if (!ExifLocationFromJFIFByteStream)
      {
        v40 = v76;
        if (v76)
        {
          v40 = CFRetain(v76);
        }

        *(a1 + 328) = v40;
        *(a1 + 320) = 1;
LABEL_49:
        OUTLINED_FUNCTION_17();
        ExifLocationFromJFIFByteStream = CMPhotoGetXMPLocationFromJFIFByteStream();
        if (!ExifLocationFromJFIFByteStream)
        {
          OUTLINED_FUNCTION_9_22();
          ExifLocationFromJFIFByteStream = CMPhotoCopyDebugMetadataFromJFIFByteStream(v41, v42, v43, v44, v45, v46);
          if (!ExifLocationFromJFIFByteStream)
          {
            *(a1 + 320) = *(a1 + 320);
            OUTLINED_FUNCTION_9_22();
            ExifLocationFromJFIFByteStream = CMPhotoCopyCustomMetadataFromJFIFByteStream(v47, v48, v49, v50, v51, v52);
            if (!ExifLocationFromJFIFByteStream)
            {
              *(a1 + 320) = *(a1 + 320);
              OUTLINED_FUNCTION_6();
              ExifLocationFromJFIFByteStream = CMPhotoCopyICCProfileFromJFIFByteStream(v53, v54, v55, v56, v57, v58);
              if (!ExifLocationFromJFIFByteStream)
              {
                v83[0] = 0;
                v59 = *(a1 + 288);
                if (v59)
                {
                  v60 = CGColorSpaceCreateWithICCData(v59);
                  v61 = v60;
                  if (v60 && CGColorSpaceGetModel(v60) < kCGColorSpaceModelCMYK)
                  {
                    goto LABEL_64;
                  }

                  v62 = *(a1 + 288);
                  if (v62)
                  {
                    CFRelease(v62);
                    *(a1 + 288) = 0;
                  }

                  if (!v61)
                  {
                    goto LABEL_64;
                  }

                  CFRelease(v61);
                }

                else if (*(a1 + 368))
                {
                  if (!CGImageCreateColorSpaceFromExifOrData())
                  {
                    v64 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                    if (v64)
                    {
                      v65 = v64;
                      v66 = CGColorSpaceEqualToColorSpace();
                      v67 = v83[0];
                      if ((v66 & 1) == 0)
                      {
                        *(a1 + 288) = CGColorSpaceCopyICCData(v83[0]);
                        v67 = v83[0];
                      }

                      *(a1 + 296) = v67;
                      v83[0] = 0;
                      CFRelease(v65);
                    }

                    else
                    {
                      v68 = CGColorSpaceCopyICCData(v83[0]);
                      v69 = v83[0];
                      *(a1 + 288) = v68;
                      *(a1 + 296) = v69;
                    }

                    goto LABEL_65;
                  }

                  v61 = v83[0];
LABEL_64:
                  *(a1 + 296) = v61;
LABEL_65:
                  v13 = 0;
                  goto LABEL_66;
                }

                v61 = 0;
                goto LABEL_64;
              }
            }
          }
        }
      }
    }

LABEL_84:
    v13 = ExifLocationFromJFIFByteStream;
    goto LABEL_66;
  }

  v13 = 4294950304;
LABEL_66:
  free(v80);
  if (v79)
  {
    CFRelease(v79);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t _createDescriptionFromSession(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v6 = Mutable;
  v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_74;
  }

  v8 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = v8;
  if (!v8)
  {
LABEL_74:
    v16 = 0;
    goto LABEL_75;
  }

  allocator = v4;
  v10 = CMPhotoCFDictionarySetInt(v8, @"ImageHandle", 0);
  if (v10 || (v10 = CMPhotoCFDictionarySetInt64(v9, @"ItemID", 1), v10) || (v10 = CMPhotoCFDictionarySetInt(v9, @"CodecType", 1785750887), v10))
  {
    v51 = v10;
    v16 = 0;
    cf = 0;
LABEL_71:
    v22 = 0;
    v31 = 0;
    goto LABEL_67;
  }

  v11 = *(a1 + 296);
  if (v11)
  {
    CFDictionarySetValue(v9, @"ColorSpace", v11);
  }

  v12 = v4;
  if (!*(a1 + 280))
  {
    v22 = 0;
    v16 = 0;
    v25 = 2;
    goto LABEL_19;
  }

  v13 = OUTLINED_FUNCTION_37();
  v16 = CFArrayCreateMutable(v13, v14, v15);
  if (!v16)
  {
LABEL_75:
    cf = 0;
LABEL_76:
    v22 = 0;
LABEL_77:
    v31 = 0;
    goto LABEL_78;
  }

  v17 = OUTLINED_FUNCTION_37();
  v21 = CFDictionaryCreateMutable(v17, v18, v19, v20);
  v22 = v21;
  if (!v21)
  {
    cf = 0;
    goto LABEL_77;
  }

  v23 = CMPhotoCFDictionarySetInt(v21, @"ImageHandle", 0);
  if (v23 || (v23 = CMPhotoCFDictionarySetInt64(v9, @"ItemID", 2), v23) || (v23 = CMPhotoCFDictionarySetInt(v22, @"CodecType", 1785750887), v23))
  {
    v51 = v23;
    cf = v22;
    goto LABEL_71;
  }

  v24 = *(a1 + 296);
  if (v24)
  {
    CFDictionarySetValue(v22, @"ColorSpace", v24);
  }

  CFArrayAppendValue(v16, v22);
  CFDictionarySetValue(v9, @"ThumbnailImage", v16);
  v25 = 3;
  v12 = allocator;
LABEL_19:
  v26 = *(a1 + 312);
  cf = v22;
  if (v26 && CFArrayGetCount(v26) >= 1)
  {
    v27 = OUTLINED_FUNCTION_37();
    v30 = CFArrayCreateMutable(v27, v28, v29);
    if (v30)
    {
      v53 = a2;
      v54 = v16;
      v31 = v30;
      v55 = v7;
      v22 = 0;
      v32 = 0;
      v33 = MEMORY[0x1E695E9D8];
      v34 = MEMORY[0x1E695E9E8];
      while (1)
      {
        Count = *(a1 + 312);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v32 >= Count)
        {
          CFDictionarySetValue(v9, @"Auxiliary", v31);
          v7 = v55;
          a2 = v53;
          v16 = v54;
          goto LABEL_35;
        }

        if (v22)
        {
          CFRelease(v22);
        }

        v36 = OUTLINED_FUNCTION_37();
        v38 = CFDictionaryCreateMutable(v36, v37, v33, v34);
        v22 = v38;
        if (!v38)
        {
          v51 = 4294950305;
          goto LABEL_66;
        }

        v39 = CMPhotoCFDictionarySetInt(v38, @"ImageHandle", v32);
        if (v39 || (v39 = CMPhotoCFDictionarySetInt64(v9, @"ItemID", v25), v39))
        {
          v51 = v39;
          goto LABEL_66;
        }

        v40 = *(CFArrayGetValueAtIndex(*(a1 + 312), v32) + 3);
        if (!v40)
        {
          break;
        }

        CFDictionarySetValue(v22, @"AuxiliaryImageType", v40);
        CFArrayAppendValue(v31, v22);
        ++v32;
        ++v25;
        v12 = allocator;
      }

      v51 = 4294950194;
LABEL_66:
      v7 = v55;
      v16 = v54;
LABEL_67:
      CFRelease(v6);
      if (!v7)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    goto LABEL_76;
  }

  v31 = 0;
  v22 = 0;
LABEL_35:
  if (*(a1 + 328))
  {
    v41 = CFArrayCreate(v12, (a1 + 328), 1, MEMORY[0x1E695E9C0]);
    if (!v41)
    {
      goto LABEL_78;
    }

    v42 = v41;
    OUTLINED_FUNCTION_18_8();
    CFRelease(v42);
  }

  if (*(a1 + 336))
  {
    v43 = CFArrayCreate(v12, (a1 + 336), 1, MEMORY[0x1E695E9C0]);
    if (!v43)
    {
      goto LABEL_78;
    }

    v44 = v43;
    OUTLINED_FUNCTION_18_8();
    CFRelease(v44);
  }

  if (*(a1 + 344))
  {
    v45 = CFArrayCreate(v12, (a1 + 344), 1, MEMORY[0x1E695E9C0]);
    if (!v45)
    {
      goto LABEL_78;
    }

    v46 = v45;
    OUTLINED_FUNCTION_18_8();
    CFRelease(v46);
  }

  v47 = *(a1 + 352);
  if (!v47)
  {
    goto LABEL_49;
  }

  values = 0;
  v48 = CMPhotoJFIFCopyCustomMetadataFromCFData(v47, &values);
  if (v48)
  {
    v51 = v48;
    goto LABEL_67;
  }

  v49 = CFArrayCreate(allocator, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v49)
  {
LABEL_78:
    v51 = 4294950305;
    goto LABEL_67;
  }

  v50 = v49;
  OUTLINED_FUNCTION_18_8();
  CFRelease(v50);
  if (values)
  {
    CFRelease(values);
  }

LABEL_49:
  CFArrayAppendValue(v7, v9);
  CFDictionaryAddValue(v6, @"ImageList", v7);
  v51 = CMPhotoCFDictionarySetInt(v6, @"PrimaryImageHandle", 0);
  if (v51)
  {
    goto LABEL_67;
  }

  *a2 = v6;
LABEL_51:
  CFRelease(v7);
LABEL_52:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v51;
}

uint64_t _saveAuxImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, uint64_t a13, uint64_t a14, int a15)
{
  value[0] = 0;
  if (*(a1 + 72) || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0), (*(a1 + 72) = Mutable) != 0))
  {
    LODWORD(v29) = a15;
    HIDWORD(v28) = a12;
    LOBYTE(v28) = a11;
    CMPhotoCompressedAuxImageStorageCreate(a2, a3, a6, a7, a8, a4, a5, a9, a10, v28, a13, a14, v29, value, v30, value[0], value[1], value[2], value[3], value[4], value[5], v32, v33, v34, v35, vars0, vars8);
    v25 = v24;
    v26 = value[0];
    if (!v24)
    {
      CFArrayAppendValue(*(a1 + 72), value[0]);
      v26 = 0;
      value[0] = 0;
    }
  }

  else
  {
    v26 = 0;
    v25 = 4294950305;
  }

  CMPhotoCompressedAuxImageStorageDestroy(v26);
  return v25;
}

uint64_t _compressImageInternal_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 264))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_54_0();
    v14 = 0;
    v13[0] = 0;
    v13[1] = 0;
    SourceDimensions = CMPhotoGetSourceDimensions(v4, v6, v13);
    if (SourceDimensions)
    {
      return SourceDimensions;
    }

    v8 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    OUTLINED_FUNCTION_13_17();
    _encodeSource();
    v10 = v9;
    if (*v8 == 1)
    {
      OUTLINED_FUNCTION_9_22();
      kdebug_trace();
    }

    if (a4 && !v10)
    {
      if (v14)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      *a4 = v11;
    }

    return v10;
  }
}

void _encodeSource()
{
  OUTLINED_FUNCTION_106();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  if (!v0)
  {
    if (!v1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!CFDictionaryContainsKey(v0, @"IncludeThumbnailWithOptions"))
  {
    Value = CFDictionaryGetValue(v5, @"DryRun");
    if (CMPhotoCFDictionaryGetInt32IfPresent())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      FigSignalErrorAtGM();
LABEL_13:
      OUTLINED_FUNCTION_105();
      return;
    }

    if ((v4 == 0) != (Value != 0))
    {
      goto LABEL_13;
    }

    if (Value)
    {
      v7 = 1;
      v8 = OUTLINED_FUNCTION_11_19();
      if (_encodeImageForIndex(v8, v9, v10, v11, v12, 1, Value))
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_10:
    v13 = OUTLINED_FUNCTION_11_19();
    v18 = _encodeImageForIndex(v13, v14, v15, v16, v17, 0, v4);
    v7 = 0;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v3)
    {
      *v3 = v7;
    }

    goto LABEL_13;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_105();

  FigSignalErrorAtGM();
}

uint64_t _compressThumbnailInternal(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  if (theDict && CFDictionaryContainsKey(theDict, @"DryRun"))
  {
    v5 = 1;
LABEL_11:
    v7 = OUTLINED_FUNCTION_27();
    SourceDimensions = CMPhotoGetSourceDimensions(v7, v8, v9);
    if (SourceDimensions)
    {
      return SourceDimensions;
    }

    v11 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    OUTLINED_FUNCTION_13_17();
    _encodeSource();
    v13 = v12;
    if (*v11 == 1)
    {
      kdebug_trace();
    }

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v5;
    }

    if ((v14 & 1) == 0)
    {
      if (CMSampleBufferGetTotalSampleSize(*(a1 + 280)) < 0x10000)
      {
        return 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_19();
        v13 = FigSignalErrorAtGM();
        v15 = *(a1 + 280);
        if (v15)
        {
          CFRelease(v15);
          *(a1 + 280) = 0;
        }
      }
    }

    return v13;
  }

  if (!a2 && *(a1 + 264) && !*(a1 + 280))
  {
    v5 = 0;
    goto LABEL_11;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM();
}

void _compressAuxImageInternal()
{
  OUTLINED_FUNCTION_106();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v0 && CFDictionaryContainsKey(v0, @"DryRun"))
  {
    v9 = 0;
  }

  else
  {
    if (v6 || !*(v8 + 264))
    {
      goto LABEL_26;
    }

    v9 = 1;
  }

  if (v4 <= 5 && ((1 << v4) & 0x36) != 0)
  {
    v10 = OUTLINED_FUNCTION_27();
    if (CMPhotoGetSourceDimensions(v10, v11, v12))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_7_0();
    if (v13)
    {
      kdebug_trace();
    }

    _encodeSource();
    v15 = v14;
    OUTLINED_FUNCTION_7_0();
    if (v13)
    {
      kdebug_trace();
    }

    if (v15)
    {
      goto LABEL_25;
    }

    if (v9)
    {
      v16 = *(v8 + 312);
      if (!v16)
      {
        goto LABEL_25;
      }

      Count = CFArrayGetCount(v16);
      if (Count < 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      Count = 0;
    }

    if (v2)
    {
      *v2 = Count - 1;
    }

LABEL_25:
    OUTLINED_FUNCTION_105();
    return;
  }

LABEL_26:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_105();

  FigSignalErrorAtGM();
}

uint64_t _newContainer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _newContainer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addXMP_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addXMP_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addDebugMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addDebugMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeImageForIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _openContainerWithModificationCallback_0(const void *a1, const __CFDictionary *a2, __CFArray *a3, uint64_t a4, __CFDictionary **a5, uint64_t (*a6)(CFTypeRef, uint64_t), uint64_t a7)
{
  v89[4] = *MEMORY[0x1E69E9840];
  v13 = CFGetAllocator(a1);
  v67 = 0;
  cf = 0;
  v14 = _newContainer_0(a1, a2);
  if (v14)
  {
    return v14;
  }

  ContainerAndCopyDescription = _readContainerAndCopyDescription(a1, a3, &cf);
  if (ContainerAndCopyDescription)
  {
    goto LABEL_69;
  }

  ContainerAndCopyDescription = CMPhotoPropertyListCopyWithMutableContainers(v13, cf, &v67);
  if (ContainerAndCopyDescription)
  {
    goto LABEL_69;
  }

  ContainerAndCopyDescription = a6(v67, a7);
  if (ContainerAndCopyDescription)
  {
    goto LABEL_69;
  }

  v64 = a5;
  Value = CFDictionaryGetValue(cf, @"ImageList");
  v63 = a1;
  if (Value && (v17 = Value, v18 = CFGetTypeID(Value), v18 == CFArrayGetTypeID()) && (v19 = OUTLINED_FUNCTION_18_9(), (v21 = CFDictionaryGetValue(v19, v20)) != 0) && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(v22) >= 1)
    {
      v24 = 0;
      theArray = v22;
      while (1)
      {
        LODWORD(v72) = 0;
        LODWORD(v85) = 0;
        LODWORD(v89[0]) = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v22, v24);
        if (!CMPhotoCFDictionaryGetIntIfPresent())
        {
          goto LABEL_38;
        }

        CFArrayGetValueAtIndex(v17, v24);
        if (!CMPhotoCFDictionaryGetIntIfPresent())
        {
          goto LABEL_38;
        }

        CMPhotoCFDictionaryGetInt32IfPresent();
        if (v85 != v72)
        {
          if (CFArrayGetCount(v17) >= 1)
          {
            v33 = 0;
            do
            {
              CFArrayGetValueAtIndex(v17, v33);
              if (!CMPhotoCFDictionaryGetIntIfPresent())
              {
                break;
              }

              if (v85 == v72)
              {
                goto LABEL_14;
              }

              ++v33;
            }

            while (v33 < CFArrayGetCount(v17));
          }

          goto LABEL_38;
        }

LABEL_14:
        LODWORD(v82) = -1;
        v84 = -1;
        IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
        v27 = CMPhotoCFDictionaryGetIntIfPresent();
        v28 = v82;
        v29 = v84;
        v30 = IntIfPresent != v27 && IntIfPresent != 0;
        v31 = CFDictionaryGetValue(ValueAtIndex, @"ThumbnailImage");
        v32 = CFDictionaryGetValue(ValueAtIndex, @"Auxiliary");
        if (v30 || v28 != v29)
        {
          break;
        }

        if (LODWORD(v89[0]) != 1953325424)
        {
          v71 = 0;
          v83 = v84;
          ContainerAndCopyDescription = _checkOrientationForImages(v31, v84, v27, &v71 + 1, &v71, &v83);
          if (ContainerAndCopyDescription)
          {
            goto LABEL_69;
          }

          v70 = 0;
          v69 = v84;
          ContainerAndCopyDescription = _checkOrientationForImages(v32, v84, v27, &v70 + 1, &v70, &v69);
          if (ContainerAndCopyDescription)
          {
            goto LABEL_69;
          }

          if (v71 || v70)
          {
            v40 = &v83;
            if (!HIBYTE(v71))
            {
              v40 = &v69;
            }

            v35 = *v40;
            v34 = (HIBYTE(v71) | HIBYTE(v70)) != 0;
            v39 = (v71 | v70) != 0;
            v36 = ValueAtIndex;
            v37 = v31;
            v38 = v32;
LABEL_36:
            ContainerAndCopyDescription = _updateOrRemoveOrientationForImages(v36, v37, v38, v35, v34, v39);
            if (ContainerAndCopyDescription)
            {
              goto LABEL_69;
            }
          }
        }

        ++v24;
        v22 = theArray;
        if (v24 >= CFArrayGetCount(theArray))
        {
          goto LABEL_39;
        }
      }

      v34 = v28 != v29;
      v35 = v84;
      v36 = 0;
      v37 = v31;
      v38 = v32;
      v39 = v30;
      goto LABEL_36;
    }
  }

  else
  {
LABEL_38:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    v41 = FigSignalErrorAtGM();
    if (v41)
    {
      goto LABEL_70;
    }
  }

LABEL_39:
  v43 = v67;
  v42 = cf;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2000000000;
  v88 = 0;
  v44 = CFDictionaryGetValue(v67, @"GroupList");
  if (v44)
  {
    v45 = v44;
    if (CFArrayGetCount(v44) >= 1)
    {
      v46 = CFDictionaryGetValue(v42, @"ImageList");
      v47 = CFDictionaryGetValue(v43, @"ImageList");
      if (v46)
      {
        v48 = v47;
        v49 = CFGetTypeID(v46);
        if (v49 == CFArrayGetTypeID())
        {
          if (v48)
          {
            v50 = CFGetTypeID(v48);
            if (v50 == CFArrayGetTypeID())
            {
              if (CFArrayGetCount(v45) < 1)
              {
                goto LABEL_66;
              }

              v51 = 0;
              v52 = *MEMORY[0x1E695E738];
              v62 = v45;
              while (1)
              {
                v66 = v51;
                v53 = FigCFArrayGetValueAtIndex();
                if (!v53)
                {
                  break;
                }

                v54 = CFGetTypeID(v53);
                if (v54 != CFDictionaryGetTypeID())
                {
                  break;
                }

                v84 = 0;
                if (!CMPhotoCFDictionaryGetInt32IfPresent())
                {
                  break;
                }

                if (v84 == 1634497650)
                {
                  v55 = FigCFDictionaryGetValue();
                  if (v55)
                  {
                    v56 = v55;
                    if (CFArrayGetCount(v55) >= 2)
                    {
                      v57 = 0;
                      v89[0] = @"EXIFMetadata";
                      v89[1] = @"XMPMetadata";
                      v89[2] = @"DebugMetadata";
                      v89[3] = @"CustomMetadata";
                      while (1)
                      {
                        v58 = v89[v57];
                        if (CFArrayGetCount(v56) >= 1)
                        {
                          break;
                        }

LABEL_61:
                        if (++v57 == 4)
                        {
                          v45 = v62;
                          goto LABEL_63;
                        }
                      }

                      v59 = 0;
                      while (1)
                      {
                        v83 = -1;
                        FigCFArrayGetValueAtIndex();
                        if (!CMPhotoCFDictionaryGetInt32IfPresent())
                        {
                          break;
                        }

                        v82 = v52;
                        hasMetadataChangedForImageHandle = _hasMetadataChangedForImageHandle(v46, v48, v83, v58, &v82);
                        *(v86 + 6) = hasMetadataChangedForImageHandle;
                        if (hasMetadataChangedForImageHandle)
                        {
                          goto LABEL_66;
                        }

                        if (v82 != v52)
                        {
                          v72 = MEMORY[0x1E69E9820];
                          v73 = *"";
                          v74 = ___propagateMetadataChange_block_invoke;
                          v75 = &unk_1E77A3BB0;
                          v81 = v83;
                          v76 = &v85;
                          v77 = v46;
                          v78 = v48;
                          v79 = v58;
                          v80 = v82;
                          FigCFArrayApplyBlock();
                          if (*(v86 + 6))
                          {
                            goto LABEL_66;
                          }
                        }

                        if (CFArrayGetCount(v56) <= ++v59)
                        {
                          goto LABEL_61;
                        }
                      }

                      *(v86 + 6) = -16990;
                      goto LABEL_66;
                    }
                  }
                }

LABEL_63:
                v51 = v66 + 1;
                if (v66 + 1 >= CFArrayGetCount(v45))
                {
                  goto LABEL_66;
                }
              }
            }
          }
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      *(v86 + 6) = FigSignalErrorAtGM();
    }
  }

LABEL_66:
  v41 = *(v86 + 6);
  _Block_object_dispose(&v85, 8);
  if (!v41)
  {
    if (CMPhotoCompressionSessionCheckForIllegalModification(cf, v67))
    {
      ContainerAndCopyDescription = _initContainerFromDescription(v63, v67, v64);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      ContainerAndCopyDescription = FigSignalErrorAtGM();
    }

LABEL_69:
    v41 = ContainerAndCopyDescription;
  }

LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  return v41;
}

uint64_t _closeContainerAndCopyBacking_0(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  v9 = _finishAsyncEncoding(a1);
  if (!v9)
  {
    v9 = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
    if (!v9)
    {
      v9 = CMPhotoHEIFFileWriterCloseAndCopyBacking(*(a1 + 88), a2, a3, a4);
    }
  }

  v10 = v9;
  *(a1 + 104) = 0;
  CMPhotoHEIFFileWriterDispose(*(a1 + 88));
  *(a1 + 88) = 0;
  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  return v10;
}

uint64_t _addCompressedImage(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex *a4)
{
  result = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_10_22();
    return _addCompressedX(v6, v7, v8, v9, v10, v11, v12, v13, 0, a4);
  }

  return result;
}

uint64_t _addCompressedThumbnail(uint64_t a1)
{
  result = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_10_22();
    return _addCompressedX(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
  }

  return result;
}

uint64_t _addCompressedAux(uint64_t a1, void *a2, int a3, char *a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7, const void *a8)
{
  result = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (!result)
  {
    return _addCompressedX(a1, a7, a8, 2, a2, a3, a4, a5, a6, 0);
  }

  return result;
}

uint64_t _addCompressedMovie(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (v6)
  {
    return v6;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFURLGetTypeID())
    {
      v13 = 0;
      cf = 0;
      if (*(a1 + 104))
      {
        fig_log_get_emitter();
        v8 = FigSignalErrorAtGM();
      }

      else
      {
        v8 = CMByteStreamCreateForFileURL();
        if (!v8)
        {
          Mutable = CFDictionaryCreateMutable(*(a1 + 96), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            if (CMPhotoHEIFUtilitiesByteStreamHasMoovAtom())
            {
              FigCFDictionarySetValue();
              v10 = MEMORY[0x1AC5519C0](cf, Mutable, *(a1 + 96), 0, &v13, 0, 0);
              if (!v10)
              {
                v10 = CMPhotoHEIFFileWriterAddCompressedMovie(*(a1 + 88), a2, v13);
              }

              v11 = v10;
            }

            else
            {
              v11 = 4294950194;
            }
          }

          else
          {
            v11 = 4294950305;
          }

          goto LABEL_11;
        }
      }

      v11 = v8;
      Mutable = 0;
LABEL_11:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return v11;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _addMetadataFromImageProperties_1(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v7 = CFGetAllocator(a1);
  v32 = 0;
  cf = 0;
  HIDWORD(v31) = 1;
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  if (*(a1 + 104))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    PropertiesForImage = FigSignalErrorAtGM();
LABEL_40:
    v21 = PropertiesForImage;
    v11 = 0;
    goto LABEL_25;
  }

  v30 = 0uLL;
  PropertiesForImage = CMPhotoHEIFFileWriterGetPropertiesForImage(*(a1 + 88), a2, &v30, 0);
  if (PropertiesForImage)
  {
    goto LABEL_40;
  }

  PropertiesForImage = CMPhotoImagePropertiesCreateDataRepresentation(v7, v30, *(&v30 + 1));
  if (PropertiesForImage)
  {
    goto LABEL_40;
  }

  Value = CFDictionaryGetValue(a4, @"iOS_Debug");
  if (Value)
  {
    v11 = CFRetain(Value);
  }

  else
  {
    v11 = 0;
  }

  if (CMPhotoCFDictionaryGetIntIfPresent())
  {
    v12 = 0;
  }

  else if (CFDictionaryGetValue(a4, *MEMORY[0x1E696DF28]))
  {
    v12 = CMPhotoCFDictionaryGetIntIfPresent() == 0;
  }

  else
  {
    v12 = 1;
  }

  HIDWORD(v29) = 0;
  BYTE3(v29) = 0;
  v28 = -1;
  HIBYTE(v27) = 0;
  OrientationTransformsForImage = CMPhotoHEIFFileWriterGetOrientationTransformsForImage(*(a1 + 88), a2, &v29 + 3, &v29 + 1, &v27 + 3, &v28);
  if (OrientationTransformsForImage)
  {
    goto LABEL_23;
  }

  if (!v12 && BYTE3(v29) | HIBYTE(v27))
  {
    HIDWORD(v26) = 1;
    OrientationTransformsForImage = CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(SHIDWORD(v29), v28, &v26 + 1);
    if (OrientationTransformsForImage)
    {
LABEL_23:
      v21 = OrientationTransformsForImage;
      goto LABEL_25;
    }

    if (HIDWORD(v26) != HIDWORD(v31))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_0();
      OrientationTransformsForImage = FigSignalErrorAtGM();
      goto LABEL_23;
    }
  }

  if (cf)
  {
    v23 = OUTLINED_FUNCTION_18_9();
    OrientationTransformsForImage = _addExifInternal(v23);
    if (OrientationTransformsForImage)
    {
      goto LABEL_23;
    }
  }

  if (v32)
  {
    v24 = OUTLINED_FUNCTION_18_9();
    v21 = _addXMP_0(v24, v25, 0);
    if (!v21 && v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v11)
    {
LABEL_22:
      v14 = OUTLINED_FUNCTION_18_9();
      _addDebugMetadata_0(v14, v15, v16, v11, v17, v18, v19, v20, v26, v27, v28, v29, v30, *(&v30 + 1), v31, v32, cf, v34, v35, v36, v37, v38, v39);
      goto LABEL_23;
    }

    v21 = 0;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (*v8 == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  return v21;
}

void _addTmapImageOneShot_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9)
{
  if (a5 && a6)
  {
    CFValueIfPresent = CMPhotoCFDictionaryGetCFValueIfPresent();
    v12 = CMPhotoCFDictionaryGetCFValueIfPresent();
    v13 = CMPhotoCFDictionaryGetCFValueIfPresent();
    v14 = CMPhotoCFDictionaryGetCFValueIfPresent();
    if (!CFValueIfPresent && (!v12 || !v13 || !v14))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_16();
      FigSignalErrorAtGM();
      goto LABEL_30;
    }

    v15 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      goto LABEL_30;
    }

    v17 = MutableCopy;
    if (a7)
    {
      FigCFDictionarySetValue();
      CMPhotoCompressionSessionAddAuxiliaryImage(a1);
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      FigCFDictionarySetBoolean();
      if (!CMPhotoCompressionSessionAddImage(a1))
      {
LABEL_10:
        Mutable = CFDictionaryCreateMutable(v15, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v20 = Mutable;
          v21 = CFDictionaryCreateMutable(v15, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v21)
          {
            v22 = v21;
            FigCFDictionarySetInt();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (CFValueIfPresent)
            {
              CGColorSpaceUsesITUR_2100TF(0);
            }

            else
            {
              if (!FigCFEqual())
              {
                FigCFEqual();
              }

              FigCFDictionarySetBoolean();
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
            }

            FigCFDictionarySetValue();
            FigCFDictionarySetInt();
            v23 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            if (v23)
            {
              v24 = v23;
              FigCFArrayAppendInt32();
              FigCFArrayAppendInt32();
              if (!CMPhotoCompressionSessionAddImage(a1))
              {
                v25 = OUTLINED_FUNCTION_17();
                if (!CMPhotoCompressionSessionAddGroup(v25, v26, 1634497650))
                {
                  v27 = OUTLINED_FUNCTION_17();
                  if (!CMPhotoCompressionSessionAddImageHandleToGroup(v27))
                  {
                    v28 = OUTLINED_FUNCTION_17();
                    v29 = CMPhotoCompressionSessionAddImageHandleToGroup(v28);
                    if (a9)
                    {
                      if (!v29)
                      {
                        *a9 = -1;
                      }
                    }
                  }
                }
              }

              CFRelease(v24);
            }

            CFRelease(v22);
          }

          CFRelease(v20);
        }
      }
    }

    CFRelease(v17);
LABEL_30:
    OUTLINED_FUNCTION_33_3();
    return;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_33_3();

  FigSignalErrorAtGM();
}

uint64_t _readContainerAndCopyDescription(uint64_t a1, CFMutableArrayRef a2, __CFDictionary **a3)
{
  v6 = a1;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v7 = *MEMORY[0x1E695E4C0];
  v92 = 0;
  v93 = v7;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  Mutable = CFArrayCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_11_20();
    v28 = 4294950305;
    goto LABEL_30;
  }

  v9 = FigPictureCollectionCreateFromByteStream();
  if (v9)
  {
    v28 = v9;
    OUTLINED_FUNCTION_11_20();
    goto LABEL_30;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    OUTLINED_FUNCTION_11_20();
    v28 = 4294954514;
    goto LABEL_30;
  }

  v87 = Mutable;
  v11 = v10(v92, 1, &v96);
  if (v11)
  {
    goto LABEL_157;
  }

  if (v96 < 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v11 = FigSignalErrorAtGM();
LABEL_157:
    v28 = v11;
    OUTLINED_FUNCTION_11_20();
    goto LABEL_150;
  }

  v84 = a3;
  v12 = 0;
  Int = 0;
  v13 = 0;
  v14 = *MEMORY[0x1E6972318];
  v15 = MEMORY[0x1E695E9D8];
  v16 = MEMORY[0x1E695E9E8];
  do
  {
    if (v91)
    {
      CFRelease(v91);
      v91 = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v93)
    {
      CFRelease(v93);
      v93 = 0;
    }

    v17 = CFDictionaryCreateMutable(*(v6 + 96), 0, v15, v16);
    if (!v17)
    {
      v3 = 0;
      a2 = 0;
      v28 = 4294950305;
LABEL_150:
      Mutable = v87;
      goto LABEL_30;
    }

    v13 = v17;
    v18 = v92;
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = v19(v18, v12, &v91, 0);
    if (v20)
    {
      goto LABEL_152;
    }

    v20 = _copyPictureReaderToImageDescription(v6 + 88, v91, 0, v12, v13);
    if (v20)
    {
      goto LABEL_152;
    }

    v21 = *(v6 + 96);
    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v23)
    {
LABEL_27:
      v3 = 0;
      a2 = 0;
      v28 = 4294954514;
      goto LABEL_28;
    }

    v20 = v23(FigBaseObject, v14, v21, &v93);
    if (v20)
    {
      goto LABEL_152;
    }

    if (FigCFEqual())
    {
      if (Int)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_16();
        v20 = FigSignalErrorAtGM();
LABEL_152:
        v28 = v20;
        v3 = 0;
        goto LABEL_153;
      }

      Int = CMPhotoCFNumberCreateInt(v12);
    }

    CFArrayAppendValue(v87, v13);
    ++v12;
  }

  while (v12 < v96);
  *(v6 + 112) = 1;
  *(v6 + 120) = v92;
  v92 = 0;
  v24 = *(v6 + 96);
  CMBaseObject = FigPictureCollectionGetCMBaseObject();
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    v3 = 0;
    Mutable = v87;
    v27 = v84;
LABEL_54:
    v30 = *(v6 + 96);
    v31 = FigPictureCollectionGetCMBaseObject();
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v32 || v32(v31, *MEMORY[0x1E6972188], v30, &v94) || !v94 || CFArrayGetCount(v94) < 1)
    {
      a2 = 0;
LABEL_57:
      v33 = CFDictionaryCreateMutable(*(v6 + 96), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v33)
      {
        v34 = v33;
        CFDictionaryAddValue(v33, @"PrimaryImageHandle", Int);
        CFDictionaryAddValue(v34, @"ImageList", Mutable);
        if (v95)
        {
          CFDictionaryAddValue(v34, @"SequenceList", v95);
        }

        if (a2)
        {
          CFDictionaryAddValue(v34, @"GroupList", a2);
        }

        *(v6 + 128) = v89;
        v89 = 0;
        if (v27)
        {
          v28 = 0;
          *v27 = v34;
        }

        else
        {
          CFRelease(v34);
          v28 = 0;
        }
      }

      else
      {
        v28 = 4294950305;
      }

      goto LABEL_29;
    }

    v73 = v3;
    v36 = CFArrayCreateMutable(*(v6 + 96), 0, MEMORY[0x1E695E9C0]);
    a2 = v36;
    if (!v36)
    {
LABEL_158:
      v28 = 4294950305;
LABEL_159:
      Mutable = v87;
      v3 = v73;
      goto LABEL_29;
    }

    v37 = 0;
    key = *MEMORY[0x1E69722A8];
    v38 = *MEMORY[0x1E6972290];
    v78 = *MEMORY[0x1E69722A0];
    v76 = *MEMORY[0x1E6973978];
    v75 = *MEMORY[0x1E6973990];
    v74 = *MEMORY[0x1E6973980];
    v77 = v36;
    while (1)
    {
      Count = v94;
      if (v94)
      {
        Count = CFArrayGetCount(v94);
      }

      if (v37 >= Count)
      {
        Mutable = v87;
        v27 = v84;
        v3 = v73;
        goto LABEL_57;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v94, v37);
      v83 = *(v6 + 120);
      v41 = v94;
      v86 = *(v6 + 96);
      v82 = CFDictionaryCreateMutable(v86, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v82)
      {
        goto LABEL_158;
      }

      CFDictionaryGetValue(ValueAtIndex, key);
      if (FigCFEqual())
      {
        v42 = 1937007986;
      }

      else
      {
        if (!FigCFEqual())
        {
          goto LABEL_144;
        }

        v42 = 1634497650;
      }

      v99 = 0;
      if (!CMPhotoCFDictionaryGetInt32IfPresent())
      {
        goto LABEL_144;
      }

      v81 = v37;
      Value = CFDictionaryGetValue(ValueAtIndex, v78);
      if (!Value)
      {
        v47 = 0;
        v46 = 0;
        v28 = 4294950304;
LABEL_146:
        v37 = v81;
        v61 = v82;
        goto LABEL_129;
      }

      v44 = Value;
      v45 = CFArrayGetCount(Value);
      if (v45 < 1)
      {
        a2 = v77;
        v37 = v81;
LABEL_144:
        v61 = v82;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_16();
        v28 = FigSignalErrorAtGM();
        v47 = 0;
        v46 = 0;
        goto LABEL_129;
      }

      v80 = v42;
      v85 = v45;
      v46 = CFArrayCreateMutable(v86, v45, MEMORY[0x1E695E9C0]);
      v47 = 0;
      if (!v46)
      {
        v28 = 4294950305;
        a2 = v77;
        goto LABEL_146;
      }

      v48 = 0;
      do
      {
        if (v48)
        {
          CFRelease(v48);
        }

        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          v47 = 0;
          v28 = 4294950305;
          a2 = v77;
          v37 = v81;
          v61 = v82;
          goto LABEL_129;
        }

        v48 = MutableCopy;
        v50 = CFArrayGetValueAtIndex(v44, v47);
        if (!v50)
        {
          v47 = 0;
          v28 = 4294950194;
          a2 = v77;
          v37 = v81;
          v61 = v82;
          goto LABEL_128;
        }

        v51 = v50;
        v52 = v6;
        v53 = v46;
        v54 = CFGetTypeID(v50);
        if (v54 == CFNumberGetTypeID())
        {
          CFDictionarySetValue(v48, @"ImageHandle", v51);
        }

        else
        {
          v55 = CFGetTypeID(v51);
          if (v55 != CFDictionaryGetTypeID())
          {
            v47 = 0;
            v28 = 4294950194;
LABEL_127:
            v37 = v81;
            v61 = v82;
            v46 = v53;
            v6 = v52;
            a2 = v77;
            goto LABEL_128;
          }

          CFDictionaryGetValue(v51, v38);
          v56 = 0;
          if (v41)
          {
LABEL_95:
            v57 = CFArrayGetCount(v41);
            goto LABEL_97;
          }

          while (1)
          {
            v57 = 0;
LABEL_97:
            if (v56 >= v57)
            {
              break;
            }

            v58 = FigCFArrayGetValueAtIndex();
            CFDictionaryGetValue(v58, v38);
            if (FigCFEqual())
            {
              goto LABEL_102;
            }

            ++v56;
            if (v41)
            {
              goto LABEL_95;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_16();
          v59 = FigSignalErrorAtGM();
          v56 = 0;
          if (v59)
          {
            v28 = v59;
            v47 = 0;
            goto LABEL_127;
          }

LABEL_102:
          CMPhotoCFDictionarySetSize(v48, @"GroupHandle", v56);
        }

        v46 = v53;
        CFArrayAppendValue(v53, v48);
        v47 = (v47 + 1);
        v6 = v52;
      }

      while (v47 != v85);
      v60 = FigCFDictionaryGetValue();
      a2 = v77;
      v37 = v81;
      v61 = v82;
      if (v60)
      {
        v62 = v60;
        if (CFDictionaryGetValue(v60, v76))
        {
          v63 = OUTLINED_FUNCTION_31_3();
          CFDictionaryAddValue(v63, @"DisparityAdjustment", v64);
        }

        if (CFDictionaryGetValue(v62, v75))
        {
          v65 = OUTLINED_FUNCTION_31_3();
          CFDictionaryAddValue(v65, @"StereoAggressors", v66);
        }

        if (CFDictionaryGetValue(v62, v74))
        {
          v67 = OUTLINED_FUNCTION_31_3();
          CFDictionaryAddValue(v67, @"MonoImageLocation", v68);
        }
      }

      values = 0;
      v69 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v69)
      {
        v47 = 0;
        v28 = 4294954514;
        goto LABEL_128;
      }

      v70 = v69(v83, 1, &values);
      if (v70)
      {
        break;
      }

      LODWORD(v71) = values;
      if (values < 1)
      {
LABEL_120:
        v70 = CMPhotoCFDictionarySetInt32(v82, @"GroupType", v80);
        if (v70)
        {
          break;
        }

        v70 = CMPhotoCFDictionarySetInt32(v82, @"GroupHandle", v81);
        if (v70)
        {
          break;
        }

        v28 = CMPhotoCFDictionarySetInt32(v82, @"GroupSortOrder", v71);
        if (!v28)
        {
          CFDictionarySetValue(v82, @"ImageList", v46);
          v47 = v82;
          v61 = 0;
          goto LABEL_128;
        }
      }

      else
      {
        v71 = 0;
        while (1)
        {
          v97 = 0;
          v72 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v72)
          {
            break;
          }

          v70 = v72(v83, v71, 0, &v97);
          if (v70)
          {
            goto LABEL_147;
          }

          if (v99 < v97)
          {
            goto LABEL_120;
          }

          if (++v71 >= values)
          {
            LODWORD(v71) = values;
            goto LABEL_120;
          }
        }

        v28 = 4294954514;
      }

LABEL_137:
      v47 = 0;
LABEL_128:
      CFRelease(v48);
      if (!v61)
      {
        goto LABEL_130;
      }

LABEL_129:
      CFRelease(v61);
LABEL_130:
      if (v46)
      {
        CFRelease(v46);
      }

      if (v28)
      {
        goto LABEL_159;
      }

      CFArrayAppendValue(a2, v47);
      if (v47)
      {
        CFRelease(v47);
      }

      ++v37;
    }

LABEL_147:
    v28 = v70;
    goto LABEL_137;
  }

  Mutable = v87;
  v27 = v84;
  if (v26(CMBaseObject, *MEMORY[0x1E69721A8], v24, &v90) || !CFBooleanGetValue(v90))
  {
    v3 = 0;
    goto LABEL_54;
  }

  values = @"video/mp4";
  v3 = CFDictionaryCreate(*(v6 + 96), MEMORY[0x1E6971AD8], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    v28 = 4294950305;
    goto LABEL_153;
  }

  v35 = MEMORY[0x1AC5519C0](a2, v3, *(v6 + 96), 0, &v89, 0, 0);
  if (!v35)
  {
    v35 = CMPhotoCompressionSessionBuildSequenceReadersAndCopyDescription(v6, v89, &v95);
    if (!v35)
    {
      goto LABEL_54;
    }
  }

  v28 = v35;
LABEL_153:
  a2 = 0;
LABEL_28:
  Mutable = v87;
LABEL_29:
  CFRelease(v13);
LABEL_30:
  if (v95)
  {
    CFRelease(v95);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (Int)
  {
    CFRelease(Int);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v28;
}

uint64_t _initContainerFromDescription(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  v6 = CFGetAllocator(a1);
  v56 = 0;
  v57 = 0;
  v55 = 0;
  theArray = 0;
  key_4 = 0;
  Mutable = CFDictionaryCreateMutable(v6, 0, 0, 0);
  if (!Mutable)
  {
    v10 = 0;
LABEL_68:
    v39 = 4294950305;
    goto LABEL_46;
  }

  v8 = OUTLINED_FUNCTION_53();
  v10 = CFDictionaryCreateMutable(v8, v9, 0, 0);
  if (!v10)
  {
    goto LABEL_68;
  }

  v11 = OUTLINED_FUNCTION_53();
  cf = CFDictionaryCreateMutable(v11, v12, 0, 0);
  if (!cf)
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_53();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v39 = 4294950305;
    CFRelease(cf);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_53();
  v48 = FigCFArrayCreateMutableCopy();
  if (!v48)
  {
LABEL_78:
    v39 = 4294950305;
    goto LABEL_45;
  }

  if (!FigCFDictionaryGetIntIfPresent())
  {
    fig_log_get_emitter();
LABEL_74:
    v17 = FigSignalErrorAtGM();
    goto LABEL_75;
  }

  v13 = OUTLINED_FUNCTION_26_4();
  v15 = CFDictionaryGetValue(v13, v14);
  if (!v15)
  {
    v39 = 4294950305;
LABEL_66:
    CFRelease(v48);
    goto LABEL_45;
  }

  v16 = v15;
  v17 = CMPhotoPropertyListCopyWithMutableContainers(v6, v15, &theArray);
  if (v17 || (v18 = OUTLINED_FUNCTION_26_4(), CFDictionaryGetValue(v18, v19)) && (v20 = OUTLINED_FUNCTION_26_4(), (v22 = CFDictionaryGetValue(v20, v21)) != 0) && (v23 = v22, CFArrayGetCount(v22) >= 1) && (v17 = CMPhotoPropertyListCopyWithMutableContainers(v6, v23, &v57), v17))
  {
LABEL_75:
    v39 = v17;
    goto LABEL_66;
  }

  theDict = a2;
  Count = CFArrayGetCount(v16);
  if (Count < 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    goto LABEL_74;
  }

  v25 = Count;
  v46 = a3;
  v26 = 0;
  v27 = 0;
  do
  {
    v17 = _addGroupsForCurrentPosition();
    if (v17)
    {
      goto LABEL_75;
    }

    key = -1;
    value = -1;
    ValueAtIndex = CFArrayGetValueAtIndex(v16, v26);
    if (!ValueAtIndex)
    {
      v39 = 4294950304;
      goto LABEL_66;
    }

    v29 = ValueAtIndex;
    v30 = v10;
    v31 = Mutable;
    v32 = CFGetTypeID(ValueAtIndex);
    if (v32 != CFDictionaryGetTypeID() || !CFArrayGetValueAtIndex(theArray, v26))
    {
      v39 = 4294950304;
LABEL_65:
      Mutable = v31;
      v10 = v30;
      goto LABEL_66;
    }

    if (!CMPhotoCFDictionaryGetIntIfPresent())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      v33 = FigSignalErrorAtGM();
LABEL_64:
      v39 = v33;
      goto LABEL_65;
    }

    if (key_4 == key)
    {
      v27 = 1;
    }

    v33 = _copyImageDescriptionToWriter((a1 + 88), v29, 0, 0, key, key_4 == key, cf, MutableCopy, v48, &value);
    if (v33)
    {
      goto LABEL_64;
    }

    v33 = FigCFDictionarySetInt();
    if (v33)
    {
      goto LABEL_64;
    }

    Mutable = v31;
    CFDictionaryAddValue(v31, key, value);
    ++v26;
    v10 = v30;
  }

  while (v25 != v26);
  if (!v27)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    goto LABEL_74;
  }

  v17 = _addGroupsForCurrentPosition();
  if (v17)
  {
    goto LABEL_75;
  }

  *(a1 + 152) = Mutable;
  *(a1 + 160) = v30;
  *(a1 + 168) = v48;
  if (v57)
  {
    v37 = _addGenericListToWriter(a1 + 88, _addGroupDescriptionToWriter, v57, &v56);
    if (v37)
    {
LABEL_60:
      v39 = v37;
LABEL_43:
      Mutable = 0;
LABEL_44:
      v10 = 0;
      goto LABEL_45;
    }
  }

  v34 = CFDictionaryGetValue(theDict, @"SequenceList");
  if (!v34)
  {
    v40 = v46;
    if (!v46)
    {
      v39 = 0;
      goto LABEL_43;
    }

LABEL_35:
    v41 = OUTLINED_FUNCTION_53();
    v10 = CFDictionaryCreateMutable(v41, v42, v43, v44);
    if (v10)
    {
      CFDictionaryGetValue(*(a1 + 152), key_4);
      OUTLINED_FUNCTION_31_3();
      v39 = FigCFDictionarySetInt();
      CFDictionarySetValue(v10, @"ImageList", theArray);
      if (v55)
      {
        CFDictionarySetValue(v10, @"SequenceList", v55);
      }

      if (v56)
      {
        CFDictionarySetValue(v10, @"GroupList", v56);
      }

      Mutable = 0;
      *v40 = v10;
      goto LABEL_44;
    }

    Mutable = 0;
    goto LABEL_78;
  }

  v35 = v34;
  v36 = CFGetTypeID(v34);
  if (v36 == CFArrayGetTypeID())
  {
    v37 = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
    if (v37)
    {
      goto LABEL_60;
    }

    v38 = _addGenericListToWriter(a1 + 88, CMPhotoCompressionSessionAddSequenceDescriptionToWriter, v35, &v55);
    v39 = v38;
    Mutable = 0;
    v40 = v46;
    if (!v46)
    {
      v10 = 0;
      goto LABEL_45;
    }

    v10 = 0;
    if (v38)
    {
      goto LABEL_45;
    }

    goto LABEL_35;
  }

  Mutable = 0;
  v10 = 0;
  v39 = 4294950306;
LABEL_45:
  CFRelease(cf);
  CFRelease(MutableCopy);
LABEL_46:
  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v39;
}

uint64_t _copyPictureReaderToImageDescription(uint64_t a1, const void *a2, int a3, int a4, __CFDictionary *a5)
{
  v101 = 0;
  v102 = 0;
  v99 = 0;
  number = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  FigPictureReaderGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_115;
  }

  v10 = OUTLINED_FUNCTION_29_4();
  v12 = v11(v10);
  if (v12)
  {
    goto LABEL_112;
  }

  HIDWORD(v93) = 0;
  v13 = CFNumberGetValue(number, kCFNumberSInt32Type, &v93 + 4);
  if (!v13)
  {
    Mutable = 0;
    v59 = 0;
    v20 = 4294950194;
    goto LABEL_116;
  }

  if (HIDWORD(v93) == 1953325424 || HIDWORD(v93) == 1768187246)
  {
    cf[0] = 0;
    FigPictureReaderGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v15 = OUTLINED_FUNCTION_29_4();
      v17 = v16(v15);
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v18 = *MEMORY[0x1E69722D8];
        v19 = FigCFDictionaryGetValue();
        if (v19)
        {
          CFDictionarySetValue(a5, v18, v19);
        }

        v20 = 0;
      }
    }

    else
    {
      v20 = 4294954514;
    }

    v13 = cf[0];
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v20)
    {
      goto LABEL_113;
    }
  }

  OUTLINED_FUNCTION_24_2(v13, *MEMORY[0x1E6972310], @"ItemID");
  OUTLINED_FUNCTION_24_2(v21, @"CodecType", @"CodecType");
  cf[0] = 0;
  value[0] = 0;
  v110[0] = 0;
  v22 = CFGetAllocator(a2);
  FigPictureReaderGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v24 = MEMORY[0x1E6972360];
  if (*(*(VTable + 8) + 48))
  {
    v25 = OUTLINED_FUNCTION_29_4();
    if (!v26(v25))
    {
      Extensions = CMFormatDescriptionGetExtensions(cf[0]);
      if (cf[0])
      {
        v28 = Extensions;
        FigBaseObject = FigPictureReaderGetFigBaseObject();
        v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v33 && !v33(FigBaseObject, *v24, v22, v110))
        {
          v34 = CFArrayGetCount(v110[0]) == 1;
        }

        else
        {
          v34 = a3 == 2;
        }

        CMPhotoCreateColorSpaceFromPixelBufferAttachments(v28, v34, value, 1, 1, v30, v31, v32, v89, v91, v93, v94, v95, v96, v97, v98, v99, number, v101, v102, value[0], value[1]);
        if (!v35)
        {
          if (value[0])
          {
            CFDictionarySetValue(a5, @"ColorSpace", value[0]);
          }
        }
      }
    }
  }

  if (v110[0])
  {
    CFRelease(v110[0]);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (value[0])
  {
    CFRelease(value[0]);
  }

  v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v36)
  {
    goto LABEL_115;
  }

  v12 = v36(a2, &v102);
  if (v12)
  {
    goto LABEL_112;
  }

  FigPictureTileCursorServiceGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_115;
  }

  v37 = OUTLINED_FUNCTION_29_4();
  v12 = v38(v37);
  if (v12)
  {
LABEL_112:
    v20 = v12;
LABEL_113:
    Mutable = 0;
    goto LABEL_114;
  }

  if (!v101)
  {
    Mutable = 0;
    v59 = 0;
    v20 = 4294950304;
    goto LABEL_116;
  }

  CFDictionarySetValue(a5, @"TileDimensions", v101);
  LODWORD(cf[0]) = 1;
  LOBYTE(value[0]) = 0;
  v39 = OUTLINED_FUNCTION_25_6();
  HEIFOrientation = CMPhotoPictureReaderGetHEIFOrientation(v39, v40, v41);
  v20 = HEIFOrientation;
  if (!HEIFOrientation && LOBYTE(value[0]))
  {
    HEIFOrientation = CMPhotoCFDictionarySetInt(a5, @"Orientation", cf[0]);
    v20 = HEIFOrientation;
  }

  if (v20)
  {
    goto LABEL_113;
  }

  OUTLINED_FUNCTION_24_2(HEIFOrientation, *v24, @"PixelInformation");
  if (a3)
  {
    if (a3 != 2)
    {
      v44 = 0;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_24_2(v43, *MEMORY[0x1E69722B8], @"AuxiliaryImageType");
    OUTLINED_FUNCTION_24_2(v68, *MEMORY[0x1E69722B0], @"AuxiliaryImageSubType");
    goto LABEL_110;
  }

  v46 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v46)
  {
LABEL_115:
    Mutable = 0;
    v59 = 0;
    v20 = 4294954514;
    goto LABEL_116;
  }

  v12 = v46(a2, &v99);
  if (v12)
  {
    goto LABEL_112;
  }

  v47 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v47)
  {
    goto LABEL_115;
  }

  v12 = v47(a2, &v98);
  if (v12)
  {
    goto LABEL_112;
  }

  v48 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v48)
  {
    goto LABEL_115;
  }

  v12 = v48(a2, &v97);
  if (v12)
  {
    goto LABEL_112;
  }

  v49 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v49)
  {
    goto LABEL_115;
  }

  v12 = v49(a2, &v95);
  if (v12)
  {
    goto LABEL_112;
  }

  v50 = *(CMBaseObjectGetVTable() + 16);
  if (*v50 < 2uLL)
  {
    goto LABEL_115;
  }

  v51 = v50[13];
  if (!v51)
  {
    goto LABEL_115;
  }

  v12 = v51(a2, &v94);
  if (v12)
  {
    goto LABEL_112;
  }

LABEL_110:
  v69 = a3 == 2;
  v70 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v70)
  {
    goto LABEL_115;
  }

  v12 = v70(a2, &v96);
  v44 = v69;
  if (v12)
  {
    goto LABEL_112;
  }

LABEL_45:
  if (*(a1 + 49))
  {
    Mutable = 0;
    goto LABEL_81;
  }

  LODWORD(v93) = v44;
  Mutable = CFArrayCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v59 = 0;
    goto LABEL_181;
  }

  if (v99 >= 1)
  {
    v52 = 0;
    v53 = MEMORY[0x1E695E9D8];
    v54 = MEMORY[0x1E695E9E8];
    do
    {
      cf[0] = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v55 = OUTLINED_FUNCTION_25_6();
        v57 = v56(v55, v52);
        if (v57)
        {
          v20 = v57;
          v58 = 0;
        }

        else
        {
          v58 = CFDictionaryCreateMutable(*(a1 + 8), 0, v53, v54);
          if (v58)
          {
            v20 = _copyPictureReaderToImageDescription(a1, cf[0], 1, v52, v58);
            if (!v20)
            {
              CFArrayAppendValue(Mutable, v58);
            }
          }

          else
          {
            v20 = 4294950305;
          }
        }
      }

      else
      {
        v58 = 0;
        v20 = 4294954514;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      ++v52;
    }

    while (v52 < v99);
    if (v20)
    {
LABEL_114:
      v59 = 0;
      goto LABEL_116;
    }
  }

  if (CFArrayGetCount(Mutable) >= 1)
  {
    CFDictionarySetValue(a5, @"ThumbnailImage", Mutable);
  }

  v44 = v93;
LABEL_81:
  if (*(a1 + 50))
  {
    v59 = 0;
    goto LABEL_104;
  }

  LODWORD(v93) = v44;
  v59 = CFArrayCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9C0]);
  if (!v59)
  {
LABEL_181:
    v20 = 4294950305;
    goto LABEL_116;
  }

  if (v98 >= 1)
  {
    v60 = 0;
    v61 = MEMORY[0x1E695E9E8];
    do
    {
      cf[0] = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v62 = OUTLINED_FUNCTION_25_6();
        v64 = v63(v62, v60);
        if (v64)
        {
          v20 = v64;
          v65 = 0;
        }

        else
        {
          v65 = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], v61);
          if (v65)
          {
            v20 = _copyPictureReaderToImageDescription(a1, cf[0], 2, v60, v65);
            if (!v20)
            {
              CFArrayAppendValue(v59, v65);
            }
          }

          else
          {
            v20 = 4294950305;
          }
        }
      }

      else
      {
        v65 = 0;
        v20 = 4294954514;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v65)
      {
        CFRelease(v65);
      }

      ++v60;
    }

    while (v60 < v98);
    if (v20)
    {
      goto LABEL_116;
    }
  }

  if (CFArrayGetCount(v59) >= 1)
  {
    CFDictionarySetValue(a5, @"Auxiliary", v59);
  }

  v44 = v93;
LABEL_104:
  if (*(a1 + 48))
  {
    v66 = 0;
LABEL_106:
    if ((v44 | v66) != 1 || (_copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v96, 1, a5), !v67))
    {
      v67 = CMPhotoCFDictionarySetInt(a5, @"ImageHandle", a4);
    }

    goto LABEL_108;
  }

  LODWORD(v93) = v44;
  _copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v97, 0, a5);
  if (v67 || (_copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v95, 2, a5), v67) || (_copyMetadataTypeFromReaderToDictionary(a2, *(a1 + 8), v94, 4, a5), v67))
  {
LABEL_108:
    v20 = v67;
    goto LABEL_116;
  }

  v72 = *(a1 + 8);
  v109 = 0;
  v110[0] = 0;
  v107 = 0;
  v108 = 0;
  v73 = FigPictureReaderGetFigBaseObject();
  v74 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v74)
  {
    v20 = 4294954514;
LABEL_136:
    v90 = 0;
    v92 = 0;
LABEL_137:
    v76 = 0;
    v77 = 0;
    goto LABEL_161;
  }

  v75 = v74(v73, *MEMORY[0x1E6972370], 0, v110);
  if (v75 == -12783)
  {
    v90 = 0;
    v92 = 0;
LABEL_158:
    v76 = 0;
    goto LABEL_159;
  }

  v20 = v75;
  if (v75)
  {
    goto LABEL_136;
  }

  *cf = 0u;
  v106 = 0u;
  v78 = OUTLINED_FUNCTION_25_6();
  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v78, 0, v79, 0);
  if (ImageGeometryFromPictureReader || (v104 = 1, ImageGeometryFromPictureReader = CMPhotoPictureReaderGetHEIFOrientation(a2, 0, &v104), ImageGeometryFromPictureReader))
  {
    v20 = ImageGeometryFromPictureReader;
    goto LABEL_136;
  }

  v81 = FigCFDictionaryGetValue();
  if (!v81 || (v92 = CFRetain(v81)) == 0)
  {
    v92 = 0;
    v76 = 0;
    goto LABEL_150;
  }

  v76 = CFDictionaryCreateMutable(v72, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v76)
  {
    v90 = 0;
    v77 = 0;
LABEL_185:
    v20 = 4294950305;
    goto LABEL_161;
  }

  *value = v106;
  IntrinsicsMatrixFromFigIntrinsicsDict = CMPhotoFlipSizeIfNeeded(v104, v106, *(&v106 + 1), value);
  if (IntrinsicsMatrixFromFigIntrinsicsDict || (IntrinsicsMatrixFromFigIntrinsicsDict = CMPhotoCreateIntrinsicsMatrixFromFigIntrinsicsDict(v72, v92, v106, *(&v106 + 1), value[0], value[1], 0, &v109), IntrinsicsMatrixFromFigIntrinsicsDict))
  {
    v20 = IntrinsicsMatrixFromFigIntrinsicsDict;
    v90 = v76;
    goto LABEL_137;
  }

  CFDictionarySetValue(v76, @"Intrinsics_Matrix", v109);
  CFDictionarySetValue(v76, @"Intrinsics_Storage", v92);
  v83 = cmpweak_kFigCameraIntrinsics_OfficialBox();
  v84 = CFDictionaryGetValue(v92, v83);
  if (v84)
  {
    CFDictionarySetValue(v76, @"Intrinsics_OfficialBox", v84);
  }

  CFDictionaryAddValue(a5, @"Intrinsics", v76);
LABEL_150:
  v90 = v76;
  v85 = FigCFDictionaryGetValue();
  if (!v85)
  {
    goto LABEL_158;
  }

  v76 = CFRetain(v85);
  if (!v76)
  {
LABEL_159:
    v77 = 0;
LABEL_160:
    v20 = 0;
    goto LABEL_161;
  }

  v77 = CFDictionaryCreateMutable(v72, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v77)
  {
    goto LABEL_185;
  }

  v86 = _createPositionAndRotationFromFigExtrinsics(v72, v76, &v108, &v107, 0, 0);
  if (!v86)
  {
    CFDictionarySetValue(v77, @"Extrinsics_Position", v108);
    CFDictionarySetValue(v77, @"Extrinsics_Rotation", v107);
    CFDictionarySetValue(v77, @"Extrinsics_Storage", v76);
    v87 = cmpweak_kFigCameraExtrinsics_OfficialBox();
    v88 = CFDictionaryGetValue(v76, v87);
    if (v88)
    {
      CFDictionarySetValue(v77, @"Extrinsics_OfficialBox", v88);
    }

    CFDictionaryAddValue(a5, @"Extrinsics", v77);
    goto LABEL_160;
  }

  v20 = v86;
LABEL_161:
  if (v109)
  {
    CFRelease(v109);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v110[0])
  {
    CFRelease(v110[0]);
  }

  if (!v20)
  {
    v66 = *(a1 + 48) == 0;
    v44 = v93;
    goto LABEL_106;
  }

LABEL_116:
  if (number)
  {
    CFRelease(number);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  return v20;
}

void _copyPropertyFromReaderToDictionary(const void *a1, uint64_t a2, const void *a3, __CFDictionary *a4)
{
  value = 0;
  v7 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(FigBaseObject, a2, v7, &value);
    v11 = value;
    if (!v10)
    {
      if (!value)
      {
        return;
      }

      CFDictionarySetValue(a4, a3, value);
      v11 = value;
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void _copyMetadataTypeFromReaderToDictionary(int a1, CFAllocatorRef allocator, uint64_t a3, int a4, __CFDictionary *a5)
{
  v29 = 0;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a3 < 1)
    {
LABEL_30:
      switch(a4)
      {
        case 0:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_EXIFMetadata;
            goto LABEL_40;
          }

          break;
        case 1:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_XMPMetadata;
            goto LABEL_40;
          }

          break;
        case 2:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_DebugMetadata;
            goto LABEL_40;
          }

          break;
        case 4:
          if (CFArrayGetCount(Mutable) >= 1)
          {
            v28 = &kCMPhotoCompressionContainerDescription_CustomMetadata;
LABEL_40:
            CFDictionarySetValue(a5, *v28, Mutable);
          }

          break;
        default:
          break;
      }
    }

    else
    {
      v10 = 0;
      while (2)
      {
        switch(a4)
        {
          case 0:
            v11 = *(CMBaseObjectGetVTable() + 16);
            if (*v11 >= 3uLL && v11[15])
            {
              v12 = OUTLINED_FUNCTION_16_7();
              v14 = v13(v12);
              goto LABEL_20;
            }

            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v19 = OUTLINED_FUNCTION_16_7();
              v14 = v20(v19);
              goto LABEL_20;
            }

            break;
          case 1:
            v15 = *(CMBaseObjectGetVTable() + 16);
            if (*v15 >= 3uLL && v15[16])
            {
              goto LABEL_12;
            }

            if (*(*(CMBaseObjectGetVTable() + 16) + 72))
            {
              goto LABEL_19;
            }

            break;
          case 2:
            if (*(*(CMBaseObjectGetVTable() + 16) + 88))
            {
LABEL_19:
              OUTLINED_FUNCTION_6_26();
              v21 = OUTLINED_FUNCTION_13_18();
              v14 = v22(v21);
              goto LABEL_20;
            }

            break;
          case 4:
            v18 = *(CMBaseObjectGetVTable() + 16);
            if (*v18 >= 2uLL && v18[14])
            {
LABEL_12:
              OUTLINED_FUNCTION_6_26();
              v16 = OUTLINED_FUNCTION_13_18();
              v14 = v17(v16);
LABEL_20:
              if (!v14)
              {
                goto LABEL_21;
              }
            }

            break;
          default:
LABEL_21:
            if (CMPhotoPictureReaderCreateContiguousDataFromChunks(allocator, 0, 0, 0, 0, 0, 0, 0, &v29) || !v29)
            {
              break;
            }

            if (a4 != 4)
            {
              CFArrayAppendValue(Mutable, v29);
LABEL_27:
              if (v29)
              {
                CFRelease(v29);
                v29 = 0;
              }

              if (a3 != ++v10)
              {
                continue;
              }

              goto LABEL_30;
            }

            v23 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v23)
            {
              v24 = v23;
              CFArrayAppendValue(Mutable, v23);
              CFRelease(v24);
              v25 = OUTLINED_FUNCTION_26_4();
              CFDictionarySetValue(v25, v26, v27);
              goto LABEL_27;
            }

            break;
        }

        break;
      }
    }
  }

  free(0);
  free(0);
  if (v29)
  {
    CFRelease(v29);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_33_3();
}

uint64_t _addGenericListToWriter(uint64_t a1, uint64_t (*a2)(uint64_t, CFIndex, const void *, void **), const __CFArray *a3, __CFArray **a4)
{
  value = 0;
  Mutable = CFArrayCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v9 = Mutable;
  v10 = 0;
  if (!a3)
  {
    goto LABEL_4;
  }

LABEL_3:
  for (i = CFArrayGetCount(a3); v10 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v10);
    v13 = a2(a1, v10, ValueAtIndex, &value);
    if (v13)
    {
      v14 = v13;
      goto LABEL_13;
    }

    CFArrayAppendValue(v9, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    ++v10;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_4:
    ;
  }

  v14 = 0;
  if (a4)
  {
    *a4 = v9;
    v9 = 0;
  }

LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v14;
}

void ___addGroupsForCurrentPosition_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return;
  }

  v24 = 0;
  if (!CMPhotoCFDictionaryGetLongIfPresent())
  {
    goto LABEL_31;
  }

  if (v24 > *(a1 + 40))
  {
    v4 = *(a1 + 48);
    if (v4 == 0xFFFFFFFFLL || v24 <= v4)
    {
      key = 0;
      if (CMPhotoCFDictionaryGetLongIfPresent())
      {
        v22 = 0;
        if (CMPhotoCFDictionaryGetInt32IfPresent())
        {
          v6 = CFDictionaryGetValue(a2, @"ImageList");
          if (v6)
          {
            v7 = v6;
            v8 = CFGetTypeID(v6);
            if (v8 == CFArrayGetTypeID() && CFArrayGetCount(v7) > 0)
            {
              value = 0;
              v9 = CMPhotoHEIFFileWriterAddGroup(**(a1 + 56), v22, &value);
              OUTLINED_FUNCTION_0_23(v9);
              if (v10)
              {
                return;
              }

              v11 = CMPhotoCFDictionarySetSize(a2, @"GroupID", value);
              OUTLINED_FUNCTION_0_23(v11);
              if (v12)
              {
                return;
              }

              v13 = CFDictionaryGetValue(a2, @"DisparityAdjustment");
              v14 = CFDictionaryGetValue(a2, @"StereoAggressors");
              v15 = CFDictionaryGetValue(a2, @"MonoImageLocation");
              v16 = v15;
              if (v13 || v14 || v15)
              {
                Mutable = CFDictionaryCreateMutable(*(*(a1 + 56) + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!Mutable)
                {
                  *(*(*(a1 + 32) + 8) + 24) = -16991;
                  return;
                }

                v17 = Mutable;
                if (v13)
                {
                  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6973978], v13);
                }

                if (v14)
                {
                  CFDictionaryAddValue(v17, *MEMORY[0x1E6973990], v14);
                }

                if (v16)
                {
                  CFDictionaryAddValue(v17, *MEMORY[0x1E6973980], v16);
                }

                v19 = CMPhotoHEIFFileWriterAddGroupProperties(**(a1 + 56));
                OUTLINED_FUNCTION_0_23(v19);
                if (v20)
                {
LABEL_29:
                  CFRelease(v17);
                  return;
                }
              }

              else
              {
                v17 = 0;
              }

              CFDictionaryAddValue(*(a1 + 64), key, value);
              if (!v17)
              {
                return;
              }

              goto LABEL_29;
            }
          }
        }
      }

LABEL_31:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM();
    }
  }
}

uint64_t _createItemPropertiesFromIntrinsicsAndExtrinsics(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __CFDictionary **a7)
{
  if (!a7 || !(a5 | a6))
  {
    return 4294950306;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v13 = Mutable;
  v36 = a2;
  v37 = a3;
  v14 = CMPhotoFlipSizeIfNeeded(a4, a2, a3, &v36);
  if (v14)
  {
    goto LABEL_32;
  }

  v35 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  Value = FigCFDictionaryGetValue();
  v16 = FigCFDictionaryGetValue();
  v17 = v16;
  if (v16 && Value)
  {
    cf = 0;
    if (CMPhotoCreateIntrinsicsMatrixFromFigIntrinsicsDict(a1, v16, a2, a3, v36, v37, 0, &cf))
    {
      goto LABEL_15;
    }

    v18 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v18)
    {
LABEL_15:
      cf = 0;
      CMPhotoCreateFigIntrinsicsDictFromIntrinsicsMatrix(a1, Value, a2, a3, a4, v35, &cf);
      if (!v14)
      {
        CFDictionarySetValue(v13, *MEMORY[0x1E6973970], cf);
        CFRelease(cf);
        goto LABEL_17;
      }

LABEL_32:
      FigExtrinsicsDictFromExtrinsics = v14;
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  if (v16)
  {
LABEL_13:
    CFDictionarySetValue(v13, *MEMORY[0x1E6973970], v17);
    goto LABEL_17;
  }

  if (Value)
  {
    goto LABEL_15;
  }

LABEL_17:
  FigCFDictionaryGetBooleanIfPresent();
  v19 = FigCFDictionaryGetValue();
  v20 = FigCFDictionaryGetValue();
  v21 = FigCFDictionaryGetValue();
  if (v21)
  {
    v22 = v21;
    if (!(v19 | v20))
    {
      goto LABEL_24;
    }

    cf = 0;
    v23 = OUTLINED_FUNCTION_27();
    PositionAndRotationFromFigExtrinsics = _createPositionAndRotationFromFigExtrinsics(v23, v24, v25, v26, v27, v28);
    if (PositionAndRotationFromFigExtrinsics)
    {
      FigExtrinsicsDictFromExtrinsics = PositionAndRotationFromFigExtrinsics;
      goto LABEL_26;
    }

    v31 = FigCFEqual() != 0;
    v32 = v31 & (FigCFEqual() != 0);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v32)
    {
LABEL_24:
      CFDictionarySetValue(v13, *MEMORY[0x1E6973968], v22);
      FigExtrinsicsDictFromExtrinsics = 0;
      goto LABEL_29;
    }
  }

  FigExtrinsicsDictFromExtrinsics = 0;
LABEL_26:
  if (v19 | v20)
  {
    cf = 0;
    FigExtrinsicsDictFromExtrinsics = CMPhotoCreateFigExtrinsicsDictFromExtrinsics(a1, v19, v20, 0, 0, &cf);
    if (!FigExtrinsicsDictFromExtrinsics)
    {
      CFDictionarySetValue(v13, *MEMORY[0x1E6973968], cf);
      CFRelease(cf);
      goto LABEL_29;
    }

LABEL_33:
    CFRelease(v13);
    return FigExtrinsicsDictFromExtrinsics;
  }

LABEL_29:
  *a7 = v13;
  return FigExtrinsicsDictFromExtrinsics;
}

uint64_t _updateOrRemoveOrientationForImages(__CFDictionary *a1, CFArrayRef theArray, const __CFArray *a3, int a4, int a5, int a6)
{
  if (a6)
  {
    if (a1)
    {
      CFDictionaryRemoveValue(a1, @"Orientation");
    }

    result = _removeOrientation(theArray);
    if (!result)
    {

      return _removeOrientation(a3);
    }
  }

  else if (a5)
  {
    if (a1)
    {
      CMPhotoCFDictionarySetInt(a1, @"Orientation", a4);
    }

    result = _updateOrientation(theArray, a4);
    if (!result)
    {

      return _updateOrientation(a3, a4);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t _hasMetadataChangedForImageHandle(const __CFArray *a1, const __CFArray *a2, int a3, const void *a4, void *a5)
{
  v13 = 0;
  theDict = 0;
  result = _getImageWithHandleFromDescriptionList(a1, a3, &theDict);
  if (!result)
  {
    result = _getImageWithHandleFromDescriptionList(a2, a3, &v13);
    if (!result)
    {
      CFDictionaryGetValue(theDict, a4);
      Value = CFDictionaryGetValue(v13, a4);
      v11 = FigCFEqual();
      result = 0;
      if (v11)
      {
        v12 = *MEMORY[0x1E695E738];
      }

      else
      {
        v12 = Value;
      }

      *a5 = v12;
    }
  }

  return result;
}

uint64_t _getImageWithHandleFromDescriptionList(CFArrayRef theArray, int a2, void *a3)
{
  v6 = 0;
  while (1)
  {
    v7 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v6 >= v7)
    {
      break;
    }

    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (!ValueAtIndex)
    {
      return 4294950306;
    }

    v9 = ValueAtIndex;
    v10 = CFGetTypeID(ValueAtIndex);
    if (v10 != CFDictionaryGetTypeID() || !CMPhotoCFDictionaryGetIntIfPresent())
    {
      return 4294950306;
    }

    ++v6;
    if (a2 == -1)
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
LABEL_12:
  if (v9)
  {
    result = 0;
    if (a3)
    {
      *a3 = v9;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    return FigSignalErrorAtGM();
  }

  return result;
}

const void *_finishAsyncEncoding(void *a1)
{
  v2 = CMPhotoCompressionSessionDisposeCompressionPluginsForSequenceAsyncEncoding(a1);
  if (!v2)
  {
    v3 = a1[24];
    if (v3)
    {
      if (a1[25])
      {
        if (a1[26])
        {
          v4 = 0;
          do
          {
            FigSemaphoreWaitRelative();
            ++v4;
          }

          while (v4 < a1[26]);
          v3 = a1[24];
        }

        a1[26] = 0;
      }

      dispatch_barrier_sync(v3, &__block_literal_global_22);
    }
  }

  return v2;
}

uint64_t _compressMainImage(uint64_t a1, const __CFDictionary *a2, opaqueCMSampleBuffer *a3, int a4, uint64_t *a5, uint64_t a6)
{
  v19[0] = 0;
  v19[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a3, a2, v19);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  SourceDimensions = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v12 = 0;
  v13 = MEMORY[0x1E695FF58];
  if (!a3 || !a4)
  {
    goto LABEL_8;
  }

  v12 = a3 + rand();
  OUTLINED_FUNCTION_9_1();
  if (v14)
  {
    kdebug_trace();
LABEL_8:
    if (*v13 == 1)
    {
      kdebug_trace();
    }
  }

  v15 = OUTLINED_FUNCTION_18_9();
  v17 = _compressX_0(v15, v16, a3, 0, 0, 0, 0, 1, a4, v12, a5, a6);
  OUTLINED_FUNCTION_9_1();
  if (v14)
  {
    kdebug_trace();
  }

  return v17;
}

uint64_t _compressX_0(uint64_t a1, CFDictionaryRef theDict, const __CFArray *a3, int a4, int a5, int a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  cf = 0;
  if (!*(a1 + 104))
  {
    if (theDict)
    {
      if (a4 == 1)
      {
        Value = CFDictionaryGetValue(theDict, @"Tiling");
        v80[0] = 0;
        CMPhotoCFDictionaryGetInt32IfPresent();
        if (Value)
        {
          v17 = CFGetTypeID(Value);
          if (v17 != CFBooleanGetTypeID() || CFBooleanGetValue(Value))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_16();
            return FigSignalErrorAtGM();
          }
        }
      }

      v18 = CFDictionaryGetValue(theDict, @"DryRun");
      if ((a3 != 0) != (v18 == 0))
      {
        return 4294950306;
      }

      v19 = v18;
      v20 = OUTLINED_FUNCTION_27();
      v22 = CFDictionaryGetValue(v20, v21);
      v29 = v22 ? 0 : v19;
      if (v19 && v22)
      {
        return 4294950306;
      }

      if (v29)
      {
        return OUTLINED_FUNCTION_12_21(v22, v23, v24, v25, v29, v26, v27, v28, v62, v64, v65, v66, v67, v68, v69, v12, v70, a6, a7, v73, a8, a11);
      }

      if (v22)
      {
        v85 = 0;
        v86 = -1;
        v83 = 0;
        v84 = 0;
        v82 = 0;
        bzero(v80, 0x168uLL);
        v30 = OUTLINED_FUNCTION_18_9();
        PropertiesForImage = CMPhotoCompressionSessionParseOptions(v30, v31, 0, 0, v32, v33, v34, v35, v36);
        if (PropertiesForImage)
        {
          return PropertiesForImage;
        }

        v38 = OUTLINED_FUNCTION_27();
        v40 = CFDictionaryGetValue(v38, v39);
        if (!v40)
        {
          return 4294950306;
        }

        v41 = v40;
        v79 = 0;
        if (!CMPhotoCFDictionaryGetInt32IfPresent())
        {
          return 4294950306;
        }

        v42 = CFDictionaryGetValue(v41, @"Metadata");
        if (a3)
        {
          v43 = v42;
          if (CFArrayGetCount(a3) > 0)
          {
            v78 = -1;
            OUTLINED_FUNCTION_17();
            if (FigCFArrayGetInt32AtIndex())
            {
              CMPhotoCFDictionaryGetSizeIfPresent(theDict, @"BitDepth", &v85);
              v44 = CFDictionaryGetValue(theDict, @"ColorSpace");
              v45 = v44;
              if (!v44 || (v46 = CFGetTypeID(v44), v46 == CGColorSpaceGetTypeID()))
              {
                FigCFDictionaryGetValueIfPresent();
                FigCFDictionaryGetValueIfPresent();
                FigCFDictionaryGetValueIfPresent();
                v77 = 0uLL;
                PropertiesForImage = CMPhotoHEIFFileWriterGetPropertiesForImage(*(a1 + 88), v78, &v77, 0);
                if (!PropertiesForImage)
                {
                  v76 = 0;
                  PropertiesForImage = CMPhotoHEIFFileWriterGetOrientationTransformsForImage(*(a1 + 88), v78, 0, &v76, 0, 0);
                  if (!PropertiesForImage)
                  {
                    if (v76 == 270 || v76 == 90)
                    {
                      v77 = vextq_s8(v77, v77, 8uLL);
                    }

                    Mutable = CFDictionaryCreateMutable(*(a1 + 96), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (!Mutable)
                    {
                      return 4294950305;
                    }

                    v48 = Mutable;
                    v49 = CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E6972218], v80[39]);
                    if (v49 || v81 != -1 && (v49 = CMPhotoCFDictionarySetInt(v48, *MEMORY[0x1E69721E0], v81), v49))
                    {
                      v51 = v49;
                    }

                    else
                    {
                      *&v63 = v84;
                      *(&v63 + 1) = v83;
                      v50 = CMPhotoHEIFFileWriterAddDerivedImageToCollection(*(a1 + 88), v48, v43, v79, v77.i32[0], v77.i32[2], v85, v45, v63, v82, a3, v79 == 1, &v86);
                      v51 = v50;
                      if (a11)
                      {
                        if (!v50)
                        {
                          *a11 = v86;
                        }
                      }
                    }

                    v52 = v48;
                    goto LABEL_39;
                  }
                }

                return PropertiesForImage;
              }
            }

            return 4294950306;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_16();
        return FigSignalErrorAtGM();
      }
    }

    v53 = CMPhotoCreatePixelBufferFromImage(*(a1 + 96), a3, &cf);
    v60 = cf;
    if (v53)
    {
      v51 = v53;
      if (!cf)
      {
        return v51;
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_12_21(v53, v54, v55, v56, cf, v57, v58, v59, v62, v64, v65, v66, v67, v68, v69, v12, v70, a6, a7, v73, a8, a11);
      v60 = cf;
      if (!cf)
      {
        return v51;
      }
    }

    v52 = v60;
LABEL_39:
    CFRelease(v52);
    return v51;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_0();

  return FigSignalErrorAtGM();
}

uint64_t _encodePixelBufferForIndex_0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t BooleanIfPresent, void *a5, int a6, uint64_t a7, int a8, char a9, uint64_t a10, void *a11, uint64_t a12)
{
  HIDWORD(v249) = a8;
  v270 = a3;
  LODWORD(v17) = v12;
  v350 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_7_25();
  }

  allocator = CFGetAllocator(a1);
  v19 = CFGetTypeID(a5);
  TypeID = CMFormatDescriptionGetTypeID();
  formatDescriptionOut = 0;
  v348 = 0;
  LODWORD(v273) = v19 == TypeID;
  v345 = 0;
  v346 = 0;
  v343 = 0;
  Mutable = 0;
  v341 = 0;
  v342 = 0;
  v337 = 0;
  v338 = &v337;
  v339 = 0x2000000000;
  v340 = 0;
  v333 = 0;
  v334 = &v333;
  v335 = 0x2000000000;
  v336 = 0;
  if (_allowHEIFAsynchronousEncodeOverride_onceToken != -1)
  {
    dispatch_once(&_allowHEIFAsynchronousEncodeOverride_onceToken, &__block_literal_global_21_0);
  }

  v274 = (a1 + 88);
  v332 = 0;
  v330 = 0u;
  v331 = 0u;
  v329 = -1;
  v328 = 0;
  v327 = 0uLL;
  v326 = 0;
  v322 = 0;
  v323 = &v322;
  v324 = 0x18000000000;
  bzero(&v325, 0x168uLL);
  if (BooleanIfPresent)
  {
    v21 = CFRetain(BooleanIfPresent);
  }

  else
  {
    v21 = 0;
  }

  v264 = a10;
  v253 = a7;
  if (v19 == TypeID)
  {
    HIDWORD(v241) = CMFormatDescriptionGetMediaSubType(a5);
    v321 = 0;
    BooleanIfPresent = CMPhotoCFDictionaryGetBooleanIfPresent();
    CleanAperture = CMVideoFormatDescriptionGetCleanAperture(a5, 1u);
    if (a2 == 1 && BooleanIfPresent)
    {
      *v306 = 320;
      pixelBuffer[0] = 0uLL;
      CMPhotoPixelBufferConstrainSizeToMaxSideLength(vcvtad_u64_f64(CleanAperture.size.width), vcvtad_u64_f64(CleanAperture.size.height), 0x140uLL, 0, 0, 0, 1, pixelBuffer, 0, 0);
      v330 = 0uLL;
      v331 = vcvtq_f64_u64(pixelBuffer[0]);
      UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(HIDWORD(v241));
    }

    else
    {
      *&v330 = CleanAperture.origin.x;
      *(&v330 + 1) = *&CleanAperture.origin.y;
      UncompressedPixelFormatFromCompressedPixelFormat = HIDWORD(v241);
      v331.f64[0] = CleanAperture.size.width;
      v331.f64[1] = CleanAperture.size.height;
    }
  }

  else
  {
    v338[3] = a5;
    UncompressedPixelFormatFromCompressedPixelFormat = CVPixelBufferGetPixelFormatType(a5);
    v23 = OUTLINED_FUNCTION_22_6();
    a5 = 0;
    *&v330 = CMPhotoGetPixelBufferCLAPAsRect(v23);
    *(&v330 + 1) = v24;
    v331.f64[0] = v25;
    v331.f64[1] = v26;
    HIDWORD(v241) = UncompressedPixelFormatFromCompressedPixelFormat;
  }

  v332 = UncompressedPixelFormatFromCompressedPixelFormat;
  v27 = OUTLINED_FUNCTION_22_6();
  CVPixelBufferRetain(v27);
  if (!CMPhotoCompressionSessionFormatIsSupportedForImageType(UncompressedPixelFormatFromCompressedPixelFormat, a2, a6))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    FigSignalErrorAtGM();
    goto LABEL_296;
  }

  v28 = OUTLINED_FUNCTION_30_4();
  if (CMPhotoCompressionSessionParseOptions(a1, v21, a2, 0, v29 + 24, v28, v30, v31, v32))
  {
LABEL_296:
    OUTLINED_FUNCTION_14_17();
    HIDWORD(v265) = 0;
LABEL_297:
    OUTLINED_FUNCTION_20_9();
    goto LABEL_333;
  }

  theDict = v21;
  OUTLINED_FUNCTION_23_5(v323);
  v33 = OUTLINED_FUNCTION_30_4();
  if (CMPhotoCompressionSessionVerifyOptions(pixelBuffer, a2, v273, UncompressedPixelFormatFromCompressedPixelFormat, v33, v34, v35, v36) || CMPhotoCompressionSessionHandleOrientationAndTransform(a1, (v323 + 3), v273, &v326, &v330, UncompressedPixelFormatFromCompressedPixelFormat, v338 + 3, v37))
  {
    OUTLINED_FUNCTION_14_17();
    HIDWORD(v265) = 0;
    OUTLINED_FUNCTION_20_9();
LABEL_311:
    v21 = theDict;
    goto LABEL_333;
  }

  if (*(v323 + 279))
  {
    v38 = 1;
  }

  else
  {
    v38 = *(v323 + 280) != 0;
  }

  HIDWORD(v265) = v38;
  if (!*(v323 + 24) && v19 != TypeID && CMPhotoCompressionSessionGetDerivedCodecForImage(v274, a2, -1, v270, *(v323 + 7), UncompressedPixelFormatFromCompressedPixelFormat, v323 + 7))
  {
    OUTLINED_FUNCTION_14_17();
    goto LABEL_297;
  }

  HIDWORD(v273) = a6;
  v237 = v12;
  v269 = TypeID;
  if (a2 == 2)
  {
    BooleanIfPresent = v323;
    if (!*(v323 + 32))
    {
      v39 = v323[40];
      if (v39 && !*(v323 + 24))
      {
        *(v323 + 7) = 1785750887;
      }

      v40 = UncompressedPixelFormatFromCompressedPixelFormat == 1278226742 || UncompressedPixelFormatFromCompressedPixelFormat == 1278226736;
      if (v40)
      {
        if (!v39 && *(BooleanIfPresent + 28) != 1785750887)
        {
          goto LABEL_45;
        }
      }

      else if (!v39)
      {
        goto LABEL_45;
      }

      v41 = *(BooleanIfPresent + 40);
      if (v41)
      {
        CFRelease(v41);
        *(BooleanIfPresent + 40) = 0;
      }

      Int = CMPhotoCFNumberCreateInt(5);
      *(BooleanIfPresent + 40) = Int;
      if (Int)
      {
        *(BooleanIfPresent + 32) = 1;
        LODWORD(v17) = v21;
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (MutableCopy)
        {
          BooleanIfPresent = MutableCopy;
          CMPhotoCFDictionarySetInt(MutableCopy, @"QualityControllerType", 5);
          if (v21)
          {
            CFRelease(v21);
          }

          theDict = BooleanIfPresent;
        }
      }
    }
  }

LABEL_45:
  if (CMPhotoGetDestinationPixelFormatFromOptions(theDict, *(v323 + 7), UncompressedPixelFormatFromCompressedPixelFormat, &v332) || CMPhotoCompressionSessionCreatePluginOptions((v323 + 3), allocator, *(a1 + 64), *(a1 + 65), 0, a2, v332, &v348))
  {
    goto LABEL_310;
  }

  v266 = v19;
  if (a2 != 2)
  {
    v45 = 0;
    goto LABEL_144;
  }

  v306[0] = 0;
  if (FigCFDictionaryGetIntIfPresent())
  {
    v44 = v306[0] == 5;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  if (v323[40] && (v45 & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    BooleanIfPresent = FigSignalErrorAtGM();
    goto LABEL_326;
  }

  if (v19 != TypeID)
  {
    v57 = *(v323 + 7);
    if (v57 != 1936484717)
    {
      pixelBuffer[0].i64[0] = 0;
      BitDepth = CMPhotoCompressionSessionGetBitDepth(v332, v57, v45);
      if (!BitDepth)
      {
        goto LABEL_324;
      }

      v61 = BitDepth;
      v62 = v323;
      v63 = *(v323 + 7);
      v64 = BitDepth == 16;
      v65 = v332 == 1278226736;
      if (v332 != 1278226736)
      {
        v64 = 0;
      }

      if (v63 != 1752589105)
      {
        v65 = 0;
      }

      if (v332 == 1278226742)
      {
        v66 = v45;
      }

      else
      {
        v66 = 0;
      }

      v67 = a6 == 5 || v65;
      v68 = v64 | v66;
      if (v63 != 1785750887)
      {
        v68 = 0;
      }

      v69 = v68 | v67;
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1751527984)
      {
        LODWORD(v17) = 1;
      }

      else
      {
        LODWORD(v17) = v69;
      }

      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_7_25();
        v62 = v323;
      }

      BooleanIfPresent = CMPhotoCreateCompressionCompatiblePixelBufferWithAuxType(v338[3], *(a1 + 24), a6, v61, *(v62 + 320), v17, pixelBuffer, &Mutable);
      if (*MEMORY[0x1E695FF58] == 1)
      {
        OUTLINED_FUNCTION_17_12();
        OUTLINED_FUNCTION_7_25();
      }

      if (BooleanIfPresent)
      {
        goto LABEL_326;
      }

      v70 = OUTLINED_FUNCTION_22_6();
      if (v70)
      {
        CFRelease(v70);
        v71 = v338;
      }

      v72 = pixelBuffer[0].i64[0];
      v71[3] = pixelBuffer[0].i64[0];
      PixelFormatType = CVPixelBufferGetPixelFormatType(v72);
      UncompressedPixelFormatFromCompressedPixelFormat = PixelFormatType;
      if (*(v323 + 7) != 1785750887)
      {
        v332 = PixelFormatType;
      }

LABEL_125:
      if (a6 != 4)
      {
        v76 = CMPhotoCompressionSessionCreateAuxTypeProperties(a6, Mutable, v338[3], &v346, &v345);
        if (!v76)
        {
          goto LABEL_144;
        }

        BooleanIfPresent = v76;
        goto LABEL_326;
      }

      if (!theDict)
      {
        goto LABEL_329;
      }

      Value = CFDictionaryGetValue(theDict, @"AuxiliaryImageCustomTypeURN");
      if (Value)
      {
        v75 = Value;
        v17 = CFGetTypeID(Value);
        if (v17 == CFStringGetTypeID())
        {
          goto LABEL_143;
        }
      }

LABEL_324:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      v58 = FigSignalErrorAtGM();
LABEL_325:
      BooleanIfPresent = v58;
      goto LABEL_326;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v58 = FigCFDictionarySetInt();
      if (v58)
      {
        goto LABEL_325;
      }

      v58 = FigCFDictionarySetInt();
      if (v58)
      {
        goto LABEL_325;
      }

      v59 = OUTLINED_FUNCTION_22_6();
      UncompressedPixelFormatFromCompressedPixelFormat = CVPixelBufferGetPixelFormatType(v59);
      v332 = UncompressedPixelFormatFromCompressedPixelFormat;
      goto LABEL_125;
    }

    BooleanIfPresent = 4294950305;
LABEL_326:
    v21 = theDict;
LABEL_327:
    v257 = 0;
    UncompressedPixelFormatFromCompressedPixelFormat = 0;
    v263 = 0;
    goto LABEL_328;
  }

  if ((UncompressedPixelFormatFromCompressedPixelFormat - 1278226488) <= 0x30 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 56)) & 0x1400000000001) != 0 || (UncompressedPixelFormatFromCompressedPixelFormat - 1278226736) <= 6 && ((1 << (UncompressedPixelFormatFromCompressedPixelFormat - 48)) & 0x45) != 0 || (UncompressedPixelFormatFromCompressedPixelFormat != 825306677 ? (v46 = UncompressedPixelFormatFromCompressedPixelFormat == 825437747) : (v46 = 1), !v46 ? (v47 = UncompressedPixelFormatFromCompressedPixelFormat == 1380410945) : (v47 = 1), !v47 ? (v48 = UncompressedPixelFormatFromCompressedPixelFormat == 1380411457) : (v48 = 1), !v48 ? (v49 = UncompressedPixelFormatFromCompressedPixelFormat == 1647719528) : (v49 = 1), !v49 ? (v50 = UncompressedPixelFormatFromCompressedPixelFormat == 1651926376) : (v50 = 1), !v50 ? (v51 = UncompressedPixelFormatFromCompressedPixelFormat == 1717855600) : (v51 = 1), !v51 ? (v52 = UncompressedPixelFormatFromCompressedPixelFormat == 1717856627) : (v52 = 1), !v52 ? (v53 = UncompressedPixelFormatFromCompressedPixelFormat == 1751410032) : (v53 = 1), !v53 ? (v54 = UncompressedPixelFormatFromCompressedPixelFormat == 1751411059) : (v54 = 1), !v54 ? (v55 = UncompressedPixelFormatFromCompressedPixelFormat == 1932996149) : (v55 = 1), !v55 ? (v56 = UncompressedPixelFormatFromCompressedPixelFormat == 1751527984) : (v56 = 1), v56))
  {
    if (v45)
    {
      UncompressedPixelFormatFromCompressedPixelFormat = 1278226742;
    }

    else
    {
      UncompressedPixelFormatFromCompressedPixelFormat = 1278226488;
    }

    v332 = UncompressedPixelFormatFromCompressedPixelFormat;
  }

  if (a6 == 4)
  {
    if (theDict)
    {
      v77 = CFDictionaryGetValue(theDict, @"AuxiliaryImageCustomTypeURN");
      if (v77)
      {
        v75 = v77;
        v17 = CFGetTypeID(v77);
        if (v17 == CFStringGetTypeID())
        {
LABEL_143:
          v346 = CFRetain(v75);
          goto LABEL_144;
        }
      }

      goto LABEL_324;
    }

LABEL_329:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    BooleanIfPresent = FigSignalErrorAtGM();
    v21 = 0;
    goto LABEL_327;
  }

LABEL_144:
  pixelBuffer[0].i32[0] = v332;
  BooleanIfPresent = CMPhotoEncoderSupportsPixelFormat(v332, *(v323 + 7), *(v323 + 65), *(v323 + 277), pixelBuffer);
  if (!pixelBuffer[0].i32[0])
  {
    BooleanIfPresent = 1734;
LABEL_309:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigSignalErrorAtGM();
LABEL_310:
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_20_9();
    goto LABEL_311;
  }

  v78 = v332;
  if (v332 == pixelBuffer[0].i32[0])
  {
    v78 = pixelBuffer[0].i32[0];
  }

  else if (*(v323 + 7) == 1936484717 && *(v323 + 65) == 5)
  {
    CMPhotoPixelFormatIsAGXCompressed(pixelBuffer[0].i32[0]);
    v78 = v332;
  }

  if (BooleanIfPresent)
  {
    LODWORD(v17) = UncompressedPixelFormatFromCompressedPixelFormat != v78;
  }

  else
  {
    LODWORD(v17) = 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat != v78 && !BooleanIfPresent)
  {
    BooleanIfPresent = 1759;
    goto LABEL_309;
  }

  v332 = pixelBuffer[0].i32[0];
  if (CMPhotoCompressionSessionDetermineEncodeDimensionsAndTiling(v274, a2, v270, theDict, a6, *(v323 + 25), *(v323 + 26), *(v323 + 27), *(v323 + 28), v346, *(v323 + 96), *(v323 + 97), 0, v273, *(v323 + 7), pixelBuffer[0].i32[0], v323 + 23, &v327, (v323 + 13), &v328))
  {
    goto LABEL_310;
  }

  v318 = *MEMORY[0x1E695F060];
  v319 = v318;
  pixelBuffer[0].i64[0] = 0;
  v80 = *(v323 + 7);
  v40 = v80 == 1785750887;
  v81 = v80 != 1785750887;
  v82 = v40 ? UncompressedPixelFormatFromCompressedPixelFormat : v332;
  if (CMPhotoCompressionSessionCreatePixelBufferForEncoding(a1, v338[3], v328, v81 & v17, v273, (v323 + 3), v82, v79, v327, *(&v327 + 1), &v319, &v318, v348, pixelBuffer))
  {
    goto LABEL_310;
  }

  v83 = OUTLINED_FUNCTION_22_6();
  if (v83)
  {
    CFRelease(v83);
    v84 = v338;
  }

  v84[3] = pixelBuffer[0].i64[0];
  if (v348)
  {
    if (*(v323 + 32))
    {
      CFDictionaryGetValue(v348, @"QualityControllerType");
      v17 = @"QualityControllerParameters";
      BooleanIfPresent = CFDictionaryGetValue(v348, @"QualityControllerParameters");
      if (CMPhotoQualityControllerNeedsImageAnalysis())
      {
        pixelBuffer[0].i64[0] = 0;
        if (!CMPhotoAnalyzeImageAndCreateUpdatedQualityParameters(allocator, v338[3], BooleanIfPresent, pixelBuffer, *(v323 + 25), *(v323 + 26), *(v323 + 27), *(v323 + 28)))
        {
          if (pixelBuffer[0].i64[0])
          {
            CFDictionarySetValue(v348, @"QualityControllerParameters", pixelBuffer[0].i64[0]);
            if (pixelBuffer[0].i64[0])
            {
              CFRelease(pixelBuffer[0].i64[0]);
            }
          }

          goto LABEL_169;
        }

        goto LABEL_310;
      }
    }
  }

LABEL_169:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_7_25();
  }

  v316 = 0;
  v315 = 0;
  v85 = *(v323 + 7);
  v86 = v332;
  if (v85 == 1785750887)
  {
    v86 = UncompressedPixelFormatFromCompressedPixelFormat;
  }

  HIDWORD(v259) = v86;
  v87 = *(MEMORY[0x1E6960C70] + 4);
  v17 = *MEMORY[0x1E6960C70] << 24;
  *v349 = *(MEMORY[0x1E6960C70] + 5);
  *&v349[15] = *(MEMORY[0x1E6960C70] + 20);
  v317 = v327;
  HIDWORD(v261) = *(v323 + 380);
  LODWORD(v262) = v85;
  v260 = v323[21] * v323[20];
  if (v260 == 1 && v85 == 1936484717)
  {
    CMPhotoCFDictionarySetBoolean(v348, @"SyncEncode", 1);
  }

  v258 = v17 | (v87 << 56);
  LODWORD(v249) = v45;
  if (v19 == TypeID)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(a5);
    if (v326)
    {
      LODWORD(v17) = v331.f64[0];
    }

    else
    {
      LODWORD(v17) = Dimensions.width;
    }

    if (v326)
    {
      height = v331.f64[1];
    }

    else
    {
      height = Dimensions.height;
    }

    Extensions = CMFormatDescriptionGetExtensions(a5);
    v92 = FigCFDictionaryCreateMutableCopy();
    if (!v92)
    {
      v257 = 0;
      UncompressedPixelFormatFromCompressedPixelFormat = 0;
      OUTLINED_FUNCTION_20_9();
      BooleanIfPresent = 4294950305;
LABEL_315:
      v21 = theDict;
      goto LABEL_333;
    }

    v93 = v92;
    MediaSubType = CMFormatDescriptionGetMediaSubType(a5);
    v95 = CMPhotoModifyColorExtensionsForCompression(MediaSubType, Extensions, v93, *(v323 + 58), *(v323 + 15), a2 == 2, v341);
    v257 = v93;
    if (!v95)
    {
      v96 = *MEMORY[0x1E695E480];
      v97 = CMFormatDescriptionGetMediaSubType(a5);
      v95 = CMVideoFormatDescriptionCreate(v96, v97, v17, height, v93, &formatDescriptionOut);
      if (!v95)
      {
        v98 = a2 == 0;
        if (!a2)
        {
          v352 = CMVideoFormatDescriptionGetCleanAperture(formatDescriptionOut, 1u);
          v99 = v352.size.height;
          *(a1 + 176) = vcvtq_u64_f64(vrndaq_f64(v352.size));
        }

        if (*(v323 + 58))
        {
          v100 = v19;
          v101 = TypeID;
          v102 = 0;
          UncompressedPixelFormatFromCompressedPixelFormat = 0;
          LODWORD(v245) = a9 == 0;
        }

        else
        {
          v112 = a5;
          v100 = v19;
          v113 = CMFormatDescriptionGetExtensions(v112);
          v101 = TypeID;
          if (v113)
          {
            v102 = CFRetain(v113);
          }

          else
          {
            v102 = 0;
          }

          UncompressedPixelFormatFromCompressedPixelFormat = 0;
          LODWORD(v245) = a9 == 0;
        }

        goto LABEL_207;
      }
    }

    BooleanIfPresent = v95;
LABEL_314:
    UncompressedPixelFormatFromCompressedPixelFormat = 0;
    OUTLINED_FUNCTION_20_9();
    goto LABEL_315;
  }

  FormatDescriptionForHEIFWriter = CMPhotoCreateFormatDescriptionForHEIFWriter();
  if (FormatDescriptionForHEIFWriter)
  {
    BooleanIfPresent = FormatDescriptionForHEIFWriter;
    v257 = 0;
    goto LABEL_314;
  }

  LODWORD(v17) = 1;
  UncompressedPixelFormatFromCompressedPixelFormat = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040F6617ADFuLL);
  if (!UncompressedPixelFormatFromCompressedPixelFormat)
  {
    v257 = 0;
    v263 = 0;
    BooleanIfPresent = 4294950305;
    goto LABEL_311;
  }

  v98 = a2 == 0;
  if (*(v323 + 58))
  {
    Plugin = 0;
  }

  else
  {
    Plugin = CMFormatDescriptionGetExtensions(formatDescriptionOut);
    if (Plugin)
    {
      Plugin = CFRetain(Plugin);
    }
  }

  if (a9)
  {
    v263 = Plugin;
    v257 = 0;
    LODWORD(v245) = 0;
    if (!a2)
    {
LABEL_219:
      HIDWORD(v262) = 1;
      goto LABEL_222;
    }

    v21 = theDict;
    goto LABEL_220;
  }

  LODWORD(v245) = 1;
  v100 = v19;
  v101 = TypeID;
  v257 = 0;
  v102 = Plugin;
LABEL_207:
  v114 = v348;
  v115 = v334;
  OUTLINED_FUNCTION_23_5(v323);
  v306[0] = HIDWORD(v259);
  v306[1] = v262;
  LOBYTE(v306[2]) = 0;
  *(&v306[2] + 1) = v258;
  *(&v306[4] + 1) = *v349;
  *&v306[9] = 0;
  v306[8] = *&v349[15];
  v306[11] = a2;
  v307 = v317;
  v308 = HIDWORD(v273);
  v309 = 0;
  v310 = v260;
  v311 = v273;
  v312 = BYTE4(v261);
  v313 = 0;
  v314 = 0;
  v263 = v102;
  Plugin = _createPlugin(allocator, a1, pixelBuffer, v114, v306, UncompressedPixelFormatFromCompressedPixelFormat, v102, v115 + 3);
  v21 = theDict;
  if (Plugin)
  {
    BooleanIfPresent = Plugin;
    LODWORD(v17) = 1;
    TypeID = v101;
    v19 = v100;
    goto LABEL_333;
  }

  TypeID = v101;
  v19 = v100;
  v116 = v100 == TypeID && v98;
  if (v116 && !*(v323 + 340) && (*(v323 + 279) || *(v323 + 280)))
  {
    *(a1 + 232) = 0;
    Plugin = FigSemaphoreSignal();
    HIDWORD(v265) = 0;
  }

  if (v100 == TypeID && !*(v323 + 340))
  {
    BooleanIfPresent = 0;
    goto LABEL_328;
  }

  if (v98)
  {
    goto LABEL_219;
  }

LABEL_220:
  v117 = OUTLINED_FUNCTION_27_5(Plugin, v104, v105, v106, v107, v108, v109, v110, v188, v193, v201, v207, v212, v217, &v341, v226, v232, v12, v241, v245, v249, v253, v257, v258, v259, v260, v261, v262, v263, a10, v265, v266, v267, v269, v270, v272, v273, v274);
  OrientationTransformsForImage = CMPhotoHEIFFileWriterGetOrientationTransformsForImage(v117, v270, v323 + 176, v323 + 45, 0, v323 + 46);
  if (OrientationTransformsForImage)
  {
    BooleanIfPresent = OrientationTransformsForImage;
LABEL_328:
    LODWORD(v17) = 1;
    goto LABEL_333;
  }

  HIDWORD(v262) = 0;
LABEL_222:
  v268 = UncompressedPixelFormatFromCompressedPixelFormat;
  HIDWORD(v245) = a2;
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_7_25();
  }

  v119 = *(v323 + 7);
  v21 = *(v323 + 99);
  v120 = v323[43];
  TypeID = *(v323 + 340);
  v19 = *(v323 + 15) == 3;
  v121 = *(v323 + 306);
  *v306 = *(v323 + 11);
  v306[4] = *(v323 + 48);
  memcpy(pixelBuffer, v323 + 13, 0x48uLL);
  v122 = CMPhotoCompressionSessionAddHEIFItemIfNeeded(a1, a2, v119, formatDescriptionOut, v270, v345, v346, v249, v306, v21, v120, TypeID, -1, v332, pixelBuffer, 0, v19, v121, &v329);
  if (v122)
  {
    BooleanIfPresent = v122;
    LODWORD(v17) = 1;
    OUTLINED_FUNCTION_19_10();
    goto LABEL_283;
  }

  *v271 = v318;
  v123 = v323;
  if (v323[29] || v323[30] || v323[31])
  {
    CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    OUTLINED_FUNCTION_19_10();
    if (!v124)
    {
LABEL_318:
      LODWORD(v17) = 1;
      BooleanIfPresent = 4294950305;
      goto LABEL_283;
    }

    v130 = v124;
    v131 = *(v123 + 232);
    if (v131)
    {
      v132 = vcvtq_u64_f64(vrndaq_f64(*v271));
      pixelBuffer[0].i64[0] = 0;
      CMPhotoCreateFigIntrinsicsDictFromIntrinsicsMatrix(allocator, v131, v132.u64[0], v132.u64[1], *(v123 + 188), *(v123 + 257), pixelBuffer);
      if (FigExtrinsicsDictFromExtrinsics)
      {
        goto LABEL_294;
      }

      CFDictionarySetValue(v130, *MEMORY[0x1E6973970], pixelBuffer[0].i64[0]);
      v124 = pixelBuffer[0].i64[0];
      if (pixelBuffer[0].i64[0])
      {
        CFRelease(pixelBuffer[0].i64[0]);
      }
    }

    v134 = *(v123 + 240);
    v135 = *(v123 + 248);
    if (*(v123 + 240) == 0)
    {
      goto LABEL_238;
    }

    pixelBuffer[0].i64[0] = 0;
    FigExtrinsicsDictFromExtrinsics = CMPhotoCreateFigExtrinsicsDictFromExtrinsics(allocator, v134, v135, *(v123 + 256), *(v123 + 257), pixelBuffer);
    if (!FigExtrinsicsDictFromExtrinsics)
    {
      CFDictionarySetValue(v130, *MEMORY[0x1E6973968], pixelBuffer[0].i64[0]);
      v124 = pixelBuffer[0].i64[0];
      if (pixelBuffer[0].i64[0])
      {
        CFRelease(pixelBuffer[0].i64[0]);
      }

LABEL_238:
      OUTLINED_FUNCTION_27_5(v124, v134, v135, v125, v126, v127, v128, v129, v189, v194, v202, v208, v213, v218, v222, v227, v233, v237, v241, v245, v249, v253, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, UncompressedPixelFormatFromCompressedPixelFormat, v269, v271[0], v271[1], v273, v274);
      OUTLINED_FUNCTION_10_22();
      CMPhotoHEIFFileWriterAddMetadataToImage(v136, v137, v138, v139, v140, v141, v142, v143, v190, v195, v198, v203, v209, v214, v219, v223, v228, v234, v238, v242, v246, v250, v254);
      BooleanIfPresent = v144;
      CFRelease(v130);
      if (!BooleanIfPresent)
      {
        v123 = v323;
        goto LABEL_240;
      }

LABEL_302:
      LODWORD(v17) = 1;
      goto LABEL_283;
    }

LABEL_294:
    BooleanIfPresent = FigExtrinsicsDictFromExtrinsics;
    CFRelease(v130);
    goto LABEL_302;
  }

  OUTLINED_FUNCTION_19_10();
LABEL_240:
  if (*(v123 + 279))
  {
    if (!HIDWORD(v262))
    {
      goto LABEL_243;
    }

    goto LABEL_242;
  }

  v166 = BYTE4(v262);
  if (!*(v123 + 280))
  {
    v166 = 0;
  }

  if (v166)
  {
LABEL_242:
    *(a1 + 232) = v329;
    FigSemaphoreSignal();
    HIDWORD(v265) = 0;
  }

LABEL_243:
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_7_25();
  }

  if (*(v323 + 340))
  {
    BooleanIfPresent = 0;
    goto LABEL_302;
  }

  if (v245)
  {
    v145 = v334[3];
    v146 = v329;
    v147 = v338[3];
    v148 = v332;
    v149 = v348;
    OUTLINED_FUNCTION_23_5(v323);
    v229 = v149;
    v204 = v147;
    v19 = v266;
    v150 = v146;
    v151 = HIDWORD(v273);
    v152 = v253;
    v153 = _encodeTiles(a1, v145, a2, v150, pixelBuffer, SHIDWORD(v273), v253, HIDWORD(v249), v327, *(&v327 + 1), v204, v268, v148, 0, v264, v263, v229, a12);
    if (v153)
    {
      goto LABEL_303;
    }

    goto LABEL_262;
  }

  os_unfair_lock_lock((a1 + 216));
  v152 = v253;
  if (!*(a1 + 192))
  {
    TargetingPThreadRootQueueWithPriority = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority();
    *(a1 + 192) = TargetingPThreadRootQueueWithPriority;
    if (!TargetingPThreadRootQueueWithPriority)
    {
      goto LABEL_317;
    }
  }

  v155 = _allowHEIFAsynchronousCompleteEncodeTilesOverride();
  v156 = *(a1 + 200);
  if (v156 || !v155)
  {
    goto LABEL_256;
  }

  v156 = FigSemaphoreCreate();
  *(a1 + 200) = v156;
  if (!*(a1 + 192))
  {
LABEL_317:
    os_unfair_lock_unlock((a1 + 216));
    goto LABEL_318;
  }

  *(a1 + 208) = 0;
LABEL_256:
  if (v156)
  {
    ++*(a1 + 208);
  }

  os_unfair_lock_unlock((a1 + 216));
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    kdebug_trace();
  }

  v157 = *(a1 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = *"";
  block[2] = ___encodePixelBufferForIndex_block_invoke;
  block[3] = &unk_1E77A3C40;
  block[8] = a1;
  block[9] = allocator;
  block[10] = v348;
  v279 = HIDWORD(v259);
  v280 = v262;
  v281 = 0;
  v282 = v258;
  *v283 = *v349;
  *&v283[15] = *&v349[15];
  v284 = 0;
  v286 = v317;
  v285 = a2;
  v151 = HIDWORD(v273);
  v287 = HIDWORD(v273);
  v288 = 0;
  v289 = v260;
  v290 = v273;
  v291 = BYTE4(v261);
  v292 = v315;
  v293 = v316;
  v294 = v268;
  v295 = v263;
  v296 = v327;
  v297 = v21;
  v298 = v329;
  v302 = a2;
  v303 = HIDWORD(v273);
  v305 = BYTE4(v249);
  block[6] = &v333;
  block[7] = &v337;
  v304 = v332;
  v299 = v253;
  v300 = v264;
  block[4] = a12;
  block[5] = &v322;
  v301 = v274;
  dispatch_async(v157, block);
LABEL_262:
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_4();
  }

  if (a2 == 2 && v152 | Mutable)
  {
    v153 = CMPhotoAuxiliaryImageMetadataCreateXMPData(*(a1 + 96), v152, Mutable, v151, 0, &v343);
    if (v153)
    {
      goto LABEL_303;
    }

    v164 = v323[8];
    v165 = v343;
    UncompressedPixelFormatFromCompressedPixelFormat = v268;
    if (v164)
    {
      pixelBuffer[0].i64[0] = 0;
      v153 = CMPhotoCompressDataWithContentEncoding(*(a1 + 96), v343, v164, pixelBuffer);
      if (v153)
      {
        BooleanIfPresent = v153;
        if (v153 != -17106)
        {
LABEL_332:
          LODWORD(v17) = 0;
          goto LABEL_333;
        }

        v164 = 0;
        v165 = v343;
      }

      else
      {
        v153 = v343;
        if (v343)
        {
          CFRelease(v343);
        }

        v165 = pixelBuffer[0].i64[0];
        v343 = pixelBuffer[0].i64[0];
      }
    }

    v167 = OUTLINED_FUNCTION_27_5(v153, v158, v159, v160, v165, v161, v162, v163, v189, v194, v202, v208, v213, v218, v222, v227, v233, v237, v241, v245, v249, v253, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v268, v269, v271[0], v271[1], v273, v274);
    CMPhotoHEIFFileWriterAddMetadataToImage(v167, 0, v329, 1, v168, 0, v164, 0, v191, v196, v199, v205, v210, v215, v220, v224, v230, v235, v239, v243, v247, v251, v255);
    if (v153)
    {
LABEL_303:
      BooleanIfPresent = v153;
      goto LABEL_282;
    }
  }

  if (v19 == TypeID)
  {
    BooleanIfPresent = 0;
LABEL_282:
    LODWORD(v17) = 0;
LABEL_283:
    UncompressedPixelFormatFromCompressedPixelFormat = v268;
    goto LABEL_333;
  }

  UncompressedPixelFormatFromCompressedPixelFormat = v268;
  if (!HIDWORD(v262) || *(v323 + 7) != 1936484717)
  {
LABEL_331:
    BooleanIfPresent = 0;
    goto LABEL_332;
  }

  if (Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigSignalErrorAtGM();
    goto LABEL_331;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v169 = FigCFDictionarySetInt();
    if (!v169)
    {
      v169 = FigCFDictionarySetInt();
      if (!v169)
      {
        v169 = CMPhotoCreateMainImageXMPDataFromFormatInfo(*(a1 + 96), Mutable, &v342);
        if (!v169)
        {
          OUTLINED_FUNCTION_27_5(v169, v170, v171, v172, v173, v174, v175, v176, v189, v194, v202, v208, v213, v218, v222, v227, v233, v237, v241, v245, v249, v253, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v268, v269, v271[0], v271[1], v273, v274);
          OUTLINED_FUNCTION_10_22();
          CMPhotoHEIFFileWriterAddMetadataToImage(v177, v178, v179, v180, v181, v182, v183, v184, v192, v197, v200, v206, v211, v216, v221, v225, v231, v236, v240, v244, v248, v252, v256);
        }
      }
    }

    BooleanIfPresent = v169;
    goto LABEL_332;
  }

  LODWORD(v17) = 0;
  BooleanIfPresent = 4294950305;
LABEL_333:
  OUTLINED_FUNCTION_9_1();
  if (v40)
  {
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_4();
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat)
  {
    if (*(v323 + 352))
    {
      v185 = *(UncompressedPixelFormatFromCompressedPixelFormat + 64);
      if (v185)
      {
        _Block_release(v185);
      }
    }
  }

  if (a11 && !BooleanIfPresent)
  {
    *a11 = v329;
  }

  v186 = v19 == TypeID || BooleanIfPresent == -15474;
  if (!v186 && BooleanIfPresent)
  {
    *(a1 + 104) = 1;
  }

  if (HIDWORD(v265))
  {
    FigSemaphoreSignal();
  }

  if (v17)
  {
    _freeVariablesUsedAcrossAsyncEncodingMethods(a1, v334[3], v338[3], UncompressedPixelFormatFromCompressedPixelFormat, 0, a2, v263, v348, v264);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v343)
  {
    CFRelease(v343);
  }

  if (v342)
  {
    CFRelease(v342);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v346)
  {
    CFRelease(v346);
  }

  if (v345)
  {
    CFRelease(v345);
  }

  if (v341)
  {
    CFRelease(v341);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v257)
  {
    CFRelease(v257);
  }

  _Block_object_dispose(&v322, 8);
  _Block_object_dispose(&v333, 8);
  _Block_object_dispose(&v337, 8);
  return BooleanIfPresent;
}

uint64_t _waitForTileEncodingToComplete(uint64_t a1, CFTypeRef *a2, const void *a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12)
{
  v19 = CMPhotoCompressionPluginCompleteEncodes(a2);
  if (v19)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  if (a7[12])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_16();
    v19 = FigSignalErrorAtGM();
LABEL_11:
    v20 = v19;
    goto LABEL_6;
  }

  v20 = 0;
LABEL_6:
  if (a8 && a12)
  {
    (*(a12 + 16))(a12, v20, a5, a6, 0);
  }

  _freeVariablesUsedAcrossAsyncEncodingMethods(a1, a2, a3, a7, a4, a5, a10, a11, a9);
  return v20;
}

uint64_t _compressThumbnailInternal_0(uint64_t a1, int a2, CFDictionaryRef theDict, opaqueCMSampleBuffer *a4, int a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a4, theDict, v18);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v13 = 0;
  v14 = MEMORY[0x1E695FF58];
  if (!a4 || !a5)
  {
    goto LABEL_7;
  }

  v13 = a4 + rand();
  OUTLINED_FUNCTION_9_1();
  if (v15)
  {
    kdebug_trace();
LABEL_7:
    if (*v14 == 1)
    {
      kdebug_trace();
    }
  }

  v16 = _compressX_0(a1, theDict, a4, 1, a2, 0, 0, 0, a5, v13, 0, a6);
  OUTLINED_FUNCTION_9_1();
  if (v15)
  {
    kdebug_trace();
  }

  return v16;
}

uint64_t _compressAuxImageInternal_0(uint64_t a1, int a2, int a3, uint64_t a4, CFDictionaryRef theDict, opaqueCMSampleBuffer *a6, int a7, uint64_t *a8, uint64_t a9)
{
  v21[0] = 0;
  v21[1] = 0;
  SourceDimensions = CMPhotoGetSourceDimensions(a6, theDict, v21);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  SourceDimensions = CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(a1);
  if (SourceDimensions)
  {
    return SourceDimensions;
  }

  v18 = 0;
  if (!a6 || !a7)
  {
    goto LABEL_7;
  }

  v18 = a6 + rand();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
LABEL_7:
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  v19 = _compressX_0(a1, theDict, a6, 2, a2, a3, a4, 1, a7, v18, a8, a9);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v19;
}

uint64_t _addDebugMetadata_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addCustomMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addGroupProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addImageToGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addGroupToGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void _copyImageDescriptionToWriter_cold_7(const void **a1, CFMutableArrayRef theArray, int *a3)
{
  CFArrayAppendValue(theArray, *a1);
  CMPhotoCFArrayAppendInt32(theArray, *a3);
  v5 = OUTLINED_FUNCTION_18_9();
  CFArrayAppendValue(v5, v6);
}

uint64_t _copyImageDescriptionToWriter_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyImageDescriptionToWriter_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addGroupDescriptionToWriter_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _checkOrientationForImages_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _removeOrientation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _updateOrientation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _compressImageInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _compressImageInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ___compressMainWithThumbAsync_block_invoke_cold_5(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t _addCompressedX_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addCompressedX_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _openContainerWithModificationCallback_1(uint64_t a1, const __CFDictionary *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t (*a6)(CFDictionaryRef, uint64_t), uint64_t a7)
{
  theDict = 0;
  cf = 0;
  v10 = _openContainer_6(a1, a2, a3, a4);
  if (!v10)
  {
    v11 = CFGetAllocator(a1);
    v10 = CMPhotoPropertyListCopyWithMutableContainers(v11, cf, &theDict);
    if (!v10)
    {
      v10 = a6(theDict, a7);
      if (!v10)
      {
        if (CMPhotoCompressionSessionCheckForIllegalModification(cf, theDict))
        {
          Value = CFDictionaryGetValue(theDict, @"ImageList");
          v13 = 0;
          if (Value)
          {
            goto LABEL_10;
          }

LABEL_11:
          for (i = 0; v13 < i; i = CFArrayGetCount(Value))
          {
            FigCFArrayGetValueAtIndex();
            LODWORD(v58) = 1;
            if (FigCFDictionaryGetIntIfPresent() && v58 != 1)
            {
              goto LABEL_77;
            }

            ++v13;
            if (!Value)
            {
              goto LABEL_11;
            }

LABEL_10:
            ;
          }

          v65 = 0;
          v66 = &v65;
          v67 = 0x2000000000;
          v68 = 0;
          v15 = CFDictionaryGetValue(theDict, @"ImageList");
          if (!v15 || (v16 = v15, !CFArrayGetCount(v15)))
          {
            v28 = *(a1 + 472);
            if (v28)
            {
              CFRelease(v28);
              *(a1 + 472) = 0;
            }

            v29 = *(a1 + 480);
            if (v29)
            {
              CFRelease(v29);
              *(a1 + 480) = 0;
            }

            v30 = *(a1 + 440);
            if (v30)
            {
              CFRelease(v30);
              *(a1 + 440) = 0;
            }

            v31 = *(a1 + 464);
            if (v31)
            {
              CFRelease(v31);
              *(a1 + 464) = 0;
            }

            v32 = *(a1 + 456);
            if (v32)
            {
              CFRelease(v32);
              *(a1 + 456) = 0;
            }

            goto LABEL_69;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
          if (!ValueAtIndex)
          {
            goto LABEL_79;
          }

          v18 = ValueAtIndex;
          v19 = CFGetTypeID(ValueAtIndex);
          if (v19 != CFDictionaryGetTypeID())
          {
            goto LABEL_79;
          }

          v20 = FigCFDictionaryGetValue();
          v21 = *(a1 + 472);
          if (v21)
          {
            CFRelease(v21);
            *(a1 + 472) = 0;
          }

          if (v20)
          {
            v22 = CFGetTypeID(v20);
            if (v22 != CFDictionaryGetTypeID())
            {
              goto LABEL_79;
            }

            *(a1 + 472) = CFRetain(v20);
          }

          v23 = FigCFDictionaryGetValue();
          v24 = FigCFDictionaryGetValue();
          if (v23 && CFArrayGetCount(v23) > 0 || v24 && CFArrayGetCount(v24) >= 1)
          {
            CFGetAllocator(a1);
            MutableCopy = FigCFArrayCreateMutableCopy();
            if (!MutableCopy)
            {
              v54 = v66;
              v55 = -16991;
              goto LABEL_80;
            }

            v26 = MutableCopy;
            v58 = MEMORY[0x1E69E9820];
            v59 = *"";
            v60 = ___applyModifiedDescriptionToSession_block_invoke;
            v61 = &unk_1E77A3CF0;
            v62 = &v65;
            v63 = a1;
            v64 = MutableCopy;
            FigCFArrayApplyBlock();
            if (*(v66 + 6))
            {
              CFRelease(v26);
              goto LABEL_69;
            }

            v27 = *(a1 + 480);
            if (v27)
            {
              CFRelease(v27);
            }

            *(a1 + 480) = v26;
          }

          else
          {
            v33 = *(a1 + 480);
            if (v33)
            {
              CFRelease(v33);
              *(a1 + 480) = 0;
            }
          }

          v34 = FigCFDictionaryGetValue();
          v35 = *(a1 + 440);
          if (v35)
          {
            CFRelease(v35);
            *(a1 + 440) = 0;
          }

          if (!v34 || (v36 = CFGetTypeID(v34), v36 == CGColorSpaceGetTypeID()) && (v37 = CGColorSpaceCopyICCData(v34), (*(a1 + 440) = v37) != 0))
          {
            CFGetAllocator(a1);
            if (*(a1 + 464))
            {
              v38 = FigCFArrayCreateMutableCopy();
              if (!v38)
              {
                v51 = -16991;
                goto LABEL_68;
              }

              v39 = v38;
              if (!CFArrayGetCount(v16))
              {
LABEL_57:
                *(v66 + 6) = 0;
                v45 = *(a1 + 464);
                if (v45)
                {
                  CFRelease(v45);
                }

                *(a1 + 464) = v39;
                v46 = *(a1 + 448);
                if (v46)
                {
                  if (CFArrayGetCount(v46) >= 1)
                  {
                    v47 = CFDictionaryGetValue(v18, @"Auxiliary");
                    CMPhotoFilterCompressedAuxImageStorageArray(*(a1 + 448), v47);
                    *(v66 + 6) = v48;
                    if (!v48)
                    {
                      v49 = *(a1 + 448);
                      if (v49)
                      {
                        if (!CFArrayGetCount(v49))
                        {
                          v50 = *(a1 + 448);
                          if (v50)
                          {
                            CFRelease(v50);
                            *(a1 + 448) = 0;
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_69;
              }

              v40 = 0;
              while (1)
              {
                v41 = FigCFArrayGetValueAtIndex();
                if (!v41)
                {
                  break;
                }

                v42 = v41;
                v43 = CFGetTypeID(v41);
                if (v43 != CFDictionaryGetTypeID())
                {
                  break;
                }

                v69 = 0;
                if (!CMPhotoCFDictionaryGetSizeIfPresent(v42, @"ImageHandle", &v69))
                {
                  break;
                }

                v44 = FigCFArrayGetValueAtIndex();
                if (!v44)
                {
                  break;
                }

                CFArrayAppendValue(v39, v44);
                if (++v40 >= CFArrayGetCount(v16))
                {
                  goto LABEL_57;
                }
              }

              CFRelease(v39);
            }

            v51 = -16990;
LABEL_68:
            *(v66 + 6) = v51;
LABEL_69:
            v52 = *(v66 + 6);
            _Block_object_dispose(&v65, 8);
            goto LABEL_70;
          }

LABEL_79:
          v54 = v66;
          v55 = -16990;
LABEL_80:
          *(v54 + 6) = v55;
          goto LABEL_69;
        }

LABEL_77:
        fig_log_get_emitter();
        v10 = FigSignalErrorAtGM();
      }
    }
  }

  v52 = v10;
LABEL_70:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v52)
  {
    _releaseAllContainerResources_0(a1);
  }

  return v52;
}

uint64_t _closeContainerAndCopyBacking_1(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v8 = CFGetAllocator(a1);
  v40 = 0;
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  if (*(a1 + 416) || (v10 = *(a1 + 464)) != 0 && CFArrayGetCount(v10) >= 1)
  {
    switch(*(a1 + 392))
    {
      case 1:
        if (!*(a1 + 400))
        {
          Mutable = CFDataCreateMutable(v8, 0);
          *(a1 + 400) = Mutable;
          if (!Mutable)
          {
            goto LABEL_65;
          }
        }

        WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
        if (!WritableWithCFMutableData)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      case 2:
        if (!*(a1 + 400))
        {
          WritableWithCFMutableData = CMBlockBufferCreateEmpty(v8, 0, 0, (a1 + 400));
          if (WritableWithCFMutableData)
          {
            goto LABEL_48;
          }
        }

        WritableWithCFMutableData = CMByteStreamCreateWritableForBlockBuffer();
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 3:
        WritableWithCFMutableData = CMByteStreamCreateForFileURL();
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 4:
        if (*(a1 + 400))
        {
          goto LABEL_46;
        }

        v13 = *(a1 + 416);
        if (v13)
        {
          Length = CFDataGetLength(v13);
        }

        else
        {
          v16 = 0;
          Length = 0;
          while (1)
          {
            Count = *(a1 + 464);
            if (Count)
            {
              Count = CFArrayGetCount(Count);
            }

            if (v16 >= Count)
            {
              break;
            }

            ValueAtIndex = FigCFArrayGetValueAtIndex();
            if (!ValueAtIndex)
            {
              goto LABEL_65;
            }

            Length += CFDataGetLength(ValueAtIndex);
            ++v16;
          }
        }

        if (!Length)
        {
LABEL_65:
          v30 = 4294950305;
          goto LABEL_60;
        }

        v15 = *(a1 + 440);
        if (v15)
        {
          v34 = CFDataGetLength(v15);
        }

        else
        {
          v34 = 0;
        }

        v19 = 0;
        for (i = 0; ; ++i)
        {
          v21 = *(a1 + 448);
          if (v21)
          {
            v21 = CFArrayGetCount(v21);
          }

          if (i >= v21)
          {
            break;
          }

          v22 = CFArrayGetValueAtIndex(*(a1 + 448), i);
          v19 += CMSampleBufferGetSampleSize(*v22, 0);
          v23 = v22[5];
          if (v23)
          {
            v19 += CFDataGetLength(v23);
          }

          if (v22[2])
          {
            v19 += 0x10000;
          }
        }

        v39 = 0;
        v24 = DicomEstimateImagePropertiesSize(*(a1 + 472), &v39);
        if (v24)
        {
          v30 = v24;
          goto LABEL_60;
        }

        v35 = 0;
        v36 = &v35;
        v37 = 0x2000000000;
        v38 = 0;
        FigCFArrayApplyBlock();
        v25 = v36[3];
        v26 = Length + v34 + v19;
        if (*(a1 + 408) <= &v39[0x2000] + v26 + v25)
        {
          v27 = &v39[0x2000] + v26 + v25;
        }

        else
        {
          v27 = *(a1 + 408);
        }

        MemorySurface = CMPhotoSurfacePoolCreateMemorySurface(@"SurfacePoolOneShot", v27, 1, (a1 + 400));
        if (MemorySurface)
        {
          v30 = MemorySurface;
          _Block_object_dispose(&v35, 8);
          goto LABEL_60;
        }

        IOSurfaceDecrementUseCount(*(a1 + 400));
        _Block_object_dispose(&v35, 8);
LABEL_46:
        WritableWithCFMutableData = FigByteStreamCreateWritableWithIOSurface();
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

LABEL_47:
        v29 = v40;
        WritableWithCFMutableData = DicomMergeImageComponents(v8, v40, *(a1 + 416), *(a1 + 464), *(a1 + 456), *(a1 + 424), *(a1 + 432), *(a1 + 440), *(a1 + 472), *(a1 + 480), *(a1 + 448));
        if (WritableWithCFMutableData)
        {
LABEL_48:
          v30 = WritableWithCFMutableData;
          goto LABEL_60;
        }

        v35 = 0;
        v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v31)
        {
          v30 = 4294954514;
          goto LABEL_60;
        }

        WritableWithCFMutableData = v31(v29, 0, &v35);
        if (WritableWithCFMutableData)
        {
          goto LABEL_48;
        }

        v32 = v35;
        if (v35 < 0)
        {
          v30 = 4294950190;
          goto LABEL_60;
        }

        if (a2)
        {
          *a2 = *(a1 + 392);
        }

        if (a3)
        {
          *a3 = v32;
        }

        if (a4)
        {
          v30 = 0;
          *a4 = *(a1 + 400);
          *(a1 + 400) = 0;
          goto LABEL_60;
        }

        break;
      default:
        fig_log_get_emitter();
        WritableWithCFMutableData = FigSignalErrorAtGM();
        goto LABEL_48;
    }
  }

  v30 = 0;
LABEL_60:
  _releaseAllContainerResources_0(a1);
  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  if (v40)
  {
    CFRelease(v40);
  }

  return v30;
}

uint64_t _compressImage_1(uint64_t a1, const __CFDictionary *a2, opaqueCMSampleBuffer *a3, uint64_t *a4)
{
  if (*(a1 + 416) || *(a1 + 464))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v14 = 0;
    v13[0] = 0;
    v13[1] = 0;
    SourceDimensions = CMPhotoGetSourceDimensions(a3, a2, v13);
    if (SourceDimensions)
    {
      return SourceDimensions;
    }

    v9 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v10 = _encodeSource_0(a1, 0, 0, 0, a2, a3, &v14);
    if (*v9 == 1)
    {
      kdebug_trace();
    }

    if (a4 && !v10)
    {
      if (v14)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      *a4 = v11;
    }

    return v10;
  }
}

uint64_t _addDebugMetadata_1(void *cf, uint64_t a2, uint64_t a3, const void *a4)
{
  if (cf[52])
  {
    v6 = 1;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = cf[58] != 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    CFGetAllocator(cf);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      return 4294950305;
    }

    v8 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"Data", a4);
    CFDictionarySetValue(v8, @"URI", @"tag:apple.com,2025:dicom:debug_metadata");
    v10 = _addCustomMetadata_1(cf, 0, v9, v8);
    CFRelease(v8);
    return v10;
  }

LABEL_8:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();

  return FigSignalErrorAtGM();
}

uint64_t _addCustomMetadata_1(void *cf, uint64_t a2, int a3, void *value)
{
  if (cf[52])
  {
    v6 = 1;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = cf[58] != 0;
    if (a2)
    {
LABEL_9:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();

      return FigSignalErrorAtGM();
    }
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  MutableCopy = cf[60];
  if (!MutableCopy)
  {
    CFGetAllocator(cf);
    MutableCopy = FigCFArrayCreateMutableCopy();
    cf[60] = MutableCopy;
    if (!MutableCopy)
    {
      return 4294950305;
    }
  }

  CFArrayAppendValue(MutableCopy, value);
  return 0;
}

uint64_t _addAuxImageMetadata_1(uint64_t a1, CFIndex a2, CFTypeRef cf, CFDataRef a4)
{
  Count = *(a1 + 448);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if ((a2 & 0x8000000000000000) == 0 && Count > a2)
  {
    if (!cf)
    {
      return 4294950306;
    }

    v9 = CFGetTypeID(cf);
    if (v9 != CGImageMetadataGetTypeID())
    {
      return 4294950306;
    }

    if (!a4 || (Value = FigCFDictionaryGetValue(), (a4 = Value) == 0))
    {
LABEL_11:
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 448), a2);
      if (ValueAtIndex)
      {
        v13 = ValueAtIndex;
        if (!ValueAtIndex[2])
        {
          ValueAtIndex[2] = CFRetain(cf);
          v14 = v13[5];
          if (v14)
          {
            CFRelease(v14);
          }

          v15 = 0;
          v13[5] = a4;
          return v15;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v15 = FigSignalErrorAtGM();
      }

      else
      {
        v15 = 4294950304;
      }

      if (a4)
      {
        CFRelease(a4);
      }

      return v15;
    }

    v11 = CFGetTypeID(Value);
    if (v11 != CGColorSpaceGetTypeID())
    {
      return 4294950306;
    }

    a4 = CGColorSpaceCopyICCData(a4);
    if (a4)
    {
      goto LABEL_11;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _compressImageAsync_1(uint64_t a1, const __CFDictionary *a2, opaqueCMSampleBuffer *a3, void *a4, uint64_t a5)
{
  v10 = -1;
  v7 = _compressImage_1(a1, a2, a3, &v10);
  v8 = v7;
  if (a4 && !v7)
  {
    *a4 = v10;
  }

  if (a5 && !v7)
  {
    (*(a5 + 16))(a5, 0, 0, v10, 0);
  }

  return v8;
}

uint64_t _createImageDescription(const __CFAllocator *a1, int a2, uint64_t a3, const void *a4, CFMutableDictionaryRef *a5)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  v11 = CMPhotoCFDictionarySetInt(Mutable, @"ImageHandle", a2);
  if (v11 || (v11 = CMPhotoCFDictionarySetInt64(v10, @"ItemID", a3), v11))
  {
    v12 = v11;
    CFRelease(v10);
  }

  else
  {
    if (a4)
    {
      CFDictionarySetValue(v10, @"AuxiliaryImageType", a4);
    }

    v12 = 0;
    *a5 = v10;
  }

  return v12;
}

uint64_t _encodeSource_0(uint64_t a1, int a2, int a3, uint64_t a4, CFDictionaryRef theDict, const opaqueCMFormatDescription *a6, _BYTE *a7)
{
  v8 = a6;
  v9 = theDict;
  if (!theDict)
  {
    if (a6)
    {
      v15 = 0;
      goto LABEL_8;
    }

    return 4294950306;
  }

  Value = CFDictionaryGetValue(theDict, @"DryRun");
  if ((v8 == 0) != (Value != 0))
  {
    return 4294950306;
  }

  v15 = Value != 0;
  if (Value)
  {
    v8 = Value;
  }

LABEL_8:
  v16 = CFGetAllocator(a1);
  v58 = 0;
  v59[0] = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  if ((a2 | 2) == 2)
  {
    v17 = v16;
    if (v9)
    {
      LODWORD(v51.f64[0]) = 0;
      if (CMPhotoCFDictionaryGetInt32IfPresent())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
LABEL_85:
        InputForJPEGCompression = FigSignalErrorAtGM();
        goto LABEL_86;
      }
    }

    v45 = a4;
    v18 = *(MEMORY[0x1E695F050] + 16);
    v51 = *MEMORY[0x1E695F050];
    v52 = v18;
    InputForJPEGCompression = CMPhotoCompressionSessionCreateInputForJPEGCompression(a1, v9, v15, a2, v8, &v51, v59);
    if (InputForJPEGCompression)
    {
LABEL_86:
      v27 = InputForJPEGCompression;
      goto LABEL_31;
    }

    if (!v15)
    {
      HIBYTE(v50) = 0;
      CMPhotoCFDictionaryGetBooleanIfPresent();
      if (a2 == 2)
      {
        v20 = a7;
        v21 = CMPhotoCompressionSessionCreateEncodeOptionsAndBufferForJPEGAuxImage(a1, v9, a3, 1, &v58, v59, &v57, &v56, &v53);
        if (v21)
        {
LABEL_83:
          v27 = v21;
          goto LABEL_84;
        }

        v9 = v58;
        HIBYTE(v50) = 1;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(v59[0]);
      LODWORD(v50) = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
      if ((v50 - 7) <= 0xFFFFFFF9)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        goto LABEL_85;
      }

      HIDWORD(v44) = a3;
      v20 = a7;
      if (v9)
      {
        HIBYTE(v49) = 0;
        CMPhotoCFDictionaryGetBooleanIfPresent();
        CMPhotoCFDictionaryGetBooleanIfPresent();
        if (CMPhotoCFDictionaryGetInt32IfPresent() && (v50 - 7) <= 0xFFFFFFF9 || (LODWORD(space[0]) = 0, CMPhotoCFDictionaryGetInt32IfPresent()) && (a2 != 2 ? (v23 = LODWORD(space[0]) == 8) : (v23 = 1), !v23))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9();
          v21 = FigSignalErrorAtGM();
          goto LABEL_83;
        }

        v24 = FigCFDictionaryGetValue();
        v25 = v24;
        if (v24)
        {
          v26 = CFGetTypeID(v24);
          if (v26 != CGColorSpaceGetTypeID())
          {
            v27 = 4294950306;
LABEL_84:
            a7 = v20;
            goto LABEL_31;
          }
        }
      }

      else
      {
        v25 = 0;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        v27 = 4294950305;
        goto LABEL_84;
      }

      v30 = MutableCopy;
      ColorSpaceFromPixelBuffer = CMPhotoCFDictionarySetInt(MutableCopy, @"Subsampling", v50);
      if (!ColorSpaceFromPixelBuffer)
      {
        if (HIBYTE(v50))
        {
          if (a2 != 2)
          {
            v28 = 0;
            goto LABEL_46;
          }

          v28 = CGColorSpaceCopyICCData(v25);
LABEL_42:
          if (!v25 && v28)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_9();
            v32 = FigSignalErrorAtGM();
LABEL_75:
            v27 = v32;
LABEL_77:
            a7 = v20;
LABEL_57:
            CMPhotoUnifiedJPEGEncoderDestroy(v55);
            CFRelease(v30);
            goto LABEL_58;
          }

LABEL_46:
          v32 = CMPhotoUnifiedJPEGEncoderCreate(v17, *(a1 + 32), *(a1 + 24), *(a1 + 492), &v55);
          if (!v32)
          {
            *space = vcvtq_u64_f64(vrndaq_f64(v51));
            v48 = vcvtq_u64_f64(vrndaq_f64(v52));
            v33 = CMPhotoUnifiedJPEGEncoderEncode(v55, v30, v59[0], 0, space, 1, 0, a1);
            a7 = v20;
            if (v33)
            {
              v27 = v33;
            }

            else if (a2)
            {
              if (a2 == 2)
              {
                if (*(a1 + 448) || (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0), (*(a1 + 448) = Mutable) != 0))
                {
                  v35 = CVPixelBufferGetPixelFormatType(v59[0]);
                  v46 = vcvtq_u64_f64(vrndaq_f64(v52));
                  CMPhotoGetUsedBitDepthForPixelFormat(v35);
                  space[0] = 0;
                  LODWORD(v43) = v50;
                  OUTLINED_FUNCTION_5_26();
                  CMPhotoCompressedAuxImageStorageCreate(v36, v37, v45, v38, v39, 0, HIDWORD(v44), v28, &v54, v42, v46.i64[0], v46.i64[1], v43, space, v44, v45, v46.i64[0], v46.i64[1], space[0], space[1], v48.i64[0], v48.i8[8], v48.i32[3], v49, v50, SLODWORD(v51.f64[0]), *&v51.f64[1]);
                  v27 = v40;
                  if (!v40)
                  {
                    CFArrayAppendValue(*(a1 + 448), space[0]);
                  }
                }

                else
                {
                  v27 = 4294950305;
                }
              }

              else
              {
                v27 = 4294950306;
              }
            }

            else
            {
              v27 = CMPhotoDataCreateFromSampleBuffer(v17, v54, 0, (a1 + 416));
              if (!v27)
              {
                *(a1 + 424) = vmovn_s64(vcvtq_s64_f64(v52));
                *(a1 + 440) = v28;
                *(a1 + 432) = v50;
                v28 = 0;
              }
            }

            goto LABEL_57;
          }

          goto LABEL_75;
        }

        space[0] = 0;
        ColorSpaceFromPixelBuffer = CMPhotoCreateColorSpaceFromPixelBuffer(v59[0], space, 1, 1);
        if (!ColorSpaceFromPixelBuffer)
        {
          v28 = CGColorSpaceCopyICCData(space[0]);
          if (space[0])
          {
            CFRelease(space[0]);
          }

          if (a2 != 2)
          {
            goto LABEL_46;
          }

          goto LABEL_42;
        }
      }

      v27 = ColorSpaceFromPixelBuffer;
      v28 = 0;
      goto LABEL_77;
    }

    v27 = 0;
  }

  else
  {
    v27 = 4294950306;
  }

LABEL_31:
  CMPhotoUnifiedJPEGEncoderDestroy(0);
  v28 = 0;
LABEL_58:
  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v59[0])
  {
    CFRelease(v59[0]);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  CMPhotoSurfacePoolMarkCachesVolatile(*(a1 + 24), 0);
  if (a7 && !v27)
  {
    *a7 = v15;
  }

  return v27;
}

uint64_t _compressAuxImageInternal_1(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, CFDictionaryRef theDict, opaqueCMSampleBuffer *a6, void *a7)
{
  if (theDict)
  {
    v14 = CFDictionaryContainsKey(theDict, @"DryRun") == 0;
  }

  else
  {
    v14 = 1;
  }

  if (a1[52])
  {
    v15 = 1;
  }

  else
  {
    v15 = a1[58] != 0;
  }

  if ((!v14 || a2 == 0 && v15) && a3 <= 5 && ((1 << a3) & 0x36) != 0)
  {
    v22[0] = 0;
    v22[1] = 0;
    SourceDimensions = CMPhotoGetSourceDimensions(a6, theDict, v22);
    if (!SourceDimensions)
    {
      v17 = MEMORY[0x1E695FF58];
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v18 = _encodeSource_0(a1, 2, a3, a4, theDict, a6, 0);
      if (*v17 == 1)
      {
        kdebug_trace();
      }

      if (v18)
      {
        return v18;
      }

      if (v14)
      {
        v19 = a1[56];
        if (!v19)
        {
          return 4294950304;
        }

        Count = CFArrayGetCount(v19);
        if (Count < 1)
        {
          return 4294950304;
        }
      }

      else
      {
        Count = 0;
      }

      v18 = 0;
      if (a7)
      {
        *a7 = Count - 1;
      }

      return v18;
    }

    return SourceDimensions;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _newContainer_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _newContainer_cold_2_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_1_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_2_0(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addMetadataFromImageProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __CMPhotoIsTileDecoderAvailable_block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  cf = 0;
  v2 = *MEMORY[0x1E695E480];
  keys[0] = *MEMORY[0x1E69841F8];
  values = *MEMORY[0x1E695E4D0];
  v3 = CFDictionaryCreate(v2, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (v1 == 1635135537 || v1 == 1752589105 || v1 == 1635148593)
  {
    if (!FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom())
    {
LABEL_6:
      v5 = VTTileDecompressionSessionCreate() == 0;
      goto LABEL_7;
    }
  }

  else if (!CMVideoFormatDescriptionCreate(v2, v1, 1024, 1024, 0, &cf))
  {
    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:
  sTileDecodersAvailable_0 = v5;
}

uint64_t CMPhotoEncoderSupportsPixelFormat(uint64_t a1, int a2, int a3, int a4, _DWORD *a5)
{
  v46 = a1;
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1635135537)
  {
    if (a1 == 875704422 || a1 == 875704438 || a1 == 875704934 || a1 == 875704950 || a1 == 875836518 || a1 == 875836534 || a1 == 1278226488 || a1 == 1278226736 || a1 == 1278226738 || a1 == 1952854576 || a1 == 1952854578 || a1 == 1952855092 || a1 == 1953903152 || a1 == 1953903154 || a1 == 1953903668 || a1 == 2016686640 || a1 == 2016686642 || a1 == 2016687156 || a1 == 2019963440 || a1 == 2019963442 || a1 == 2019963956)
    {
      goto LABEL_90;
    }

    v7 = 1;
    DefaultImageSubsamplingForEncodeFromPixelFormat = CMPhotoGetDefaultImageSubsamplingForEncodeFromPixelFormat(a1, 1635135537, 1);
    IsFullRange = CMPhotoPixelFormatIsFullRange(a1);
    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(a1);
    if (BitDepthForPixelFormat <= 8)
    {
      v42 = 8;
    }

    else
    {
      v42 = 10;
    }

    if (BitDepthForPixelFormat <= 0xA)
    {
      v43 = v42;
    }

    else
    {
      v43 = 12;
    }

    if (CMPhotoGetYUVPixelFormatForParameters(DefaultImageSubsamplingForEncodeFromPixelFormat, v43, IsFullRange, 0, 0, 0, 0, &v46))
    {
      return v7;
    }
  }

  else
  {
    if (a2 != 1936484717)
    {
      if (a2 == 1752589105)
      {
        if (!CMPhotoIsPixelFormatSupportedByHEVC(a1, a4))
        {
          v11 = CMPhotoGetBitDepthForPixelFormat(a1);
          if ((a1 - 1278226488) <= 0x30 && ((1 << (a1 - 56)) & 0x1400000000001) != 0 || (a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0 || (a1 != 1717855600 ? (v12 = a1 == 1717856627) : (v12 = 1), !v12 ? (v13 = a1 == 1751410032) : (v13 = 1), !v13 ? (v14 = a1 == 1751411059) : (v14 = 1), v14 || CMPhotoPixelFormatIsRAW(a1) || CMPhotoPixelFormatIsRAWVersatile(a1)))
          {
            v8 = 1278226488;
            v16 = 1278226736;
            v15 = v11 > 8;
          }

          else
          {
            v15 = v11 > 8;
            v8 = 875704422;
            v16 = 2019963440;
          }

          if (v15)
          {
            v8 = v16;
          }

          v7 = 0;
          goto LABEL_101;
        }
      }

      else if (a2 == 1635148593 && !CMPhotoIsPixelFormatSupportedByAVC(a1))
      {
        v7 = 0;
        v8 = 875704422;
LABEL_101:
        v46 = v8;
        goto LABEL_91;
      }

LABEL_90:
      v7 = 1;
      goto LABEL_91;
    }

    if (CMPhotoIsPixelFormatSupportedBySLIM(a1, a3))
    {
      goto LABEL_90;
    }

    v46 = 0;
    if (a3 == 5)
    {
      OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken);
      v7 = &unk_1ED6FA000;
      if (sDeviceType < 0x11)
      {
LABEL_11:
        v10 = 1;
        goto LABEL_121;
      }

      switch(a1)
      {
        case 0x62703136:
          v10 = 0;
          v38 = 643970675;
          break;
        case 0x62766338:
          v10 = 0;
          v38 = 645161784;
          break;
        case 0x62766568:
          v10 = 0;
          v38 = 643970664;
          break;
        case 0x68646973:
          v10 = 0;
          v38 = 644375667;
          break;
        case 0x62786338:
          v10 = 0;
          v38 = 645423928;
          break;
        default:
          goto LABEL_11;
      }

      v46 = v38;
LABEL_121:
      OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken);
      if (sDeviceType < 0xA)
      {
        goto LABEL_122;
      }

      if (a1 == 1751411059)
      {
        if (!v10)
        {
          goto LABEL_122;
        }
      }

      else if (a1 != 1278226536)
      {
        if (a1 == 1278226742)
        {
          OUTLINED_FUNCTION_1_30();
          v8 = v45 + 206;
          goto LABEL_101;
        }

        if (a1 != 1751410032)
        {
          if (a1 == 1278226488)
          {
            OUTLINED_FUNCTION_1_30();
            v8 = v44 - 48;
            goto LABEL_101;
          }

          goto LABEL_122;
        }
      }

      OUTLINED_FUNCTION_1_30();
      goto LABEL_101;
    }
  }

LABEL_122:
  v7 = 0;
LABEL_91:
  if (a5)
  {
    *a5 = v46;
  }

  return v7;
}

void CMPhotoValidateMobileGestaltQuery_cold_1(_BYTE *a1)
{
  v2 = MGCopyAnswer();
  v3 = FigCFEqual();
  v4 = MGCopyAnswer();
  v5 = FigCFEqual();
  if (v3 || (OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken), sDeviceType <= 5))
  {
    if (v5)
    {
      LOBYTE(v6) = 1;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_35(&_getDeviceType_onceToken);
      v6 = sDeviceType <= 4;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    CFRelease(v2);
    goto LABEL_8;
  }

  LOBYTE(v6) = 0;
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = v6;
}

uint64_t _createDNGInternal(const __CFDictionary *a1, const __CFData *a2, const __CFDictionary *a3, const __CFData *a4, __CVBuffer *a5, const __CFArray *a6, int a7, uint64_t a8, void *a9)
{
  HIDWORD(v598) = a7;
  v584 = a2;
  keys[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_66_0();
  bzero(&__src, 0x878uLL);
  v618 = 0;
  *v616 = 0u;
  *v617 = 0u;
  *v615 = 0u;
  v614 = 0xFFFF0000FFFFLL;
  FigKTraceInit();
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  v15 = 4294950746;
  if (!a1)
  {
    goto LABEL_13;
  }

  v16 = a9;
  if (!a9)
  {
    goto LABEL_13;
  }

  if ((a4 == 0) != (a5 != 0))
  {
    goto LABEL_188;
  }

  if (HIDWORD(v598))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
    v18 = PixelFormatType == 1751527984 || PixelFormatType == 1815491698;
    if (!v18)
    {
      fig_log_get_emitter();
      v19 = FigSignalErrorAtGM();
LABEL_12:
      v15 = v19;
      goto LABEL_13;
    }
  }

  *a9 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  v15 = _dngInfoInit(&__src, a4, a5, a1, a6, SHIDWORD(v598), a3, v584);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v28 = *MEMORY[0x1E695E480];
  v617[1] = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!v617[1] || (v539 = a8, LOBYTE(v618) = 1, LODWORD(v616[0]) = 0, LODWORD(v617[0]) = 20, OUTLINED_FUNCTION_83_1(), (v616[1] = malloc_type_malloc(0x50uLL, v29)) == 0))
  {
LABEL_186:
    v15 = 4294950745;
    goto LABEL_13;
  }

  memset(v615, 0, sizeof(v615));
  LODWORD(v30) = v658;
  CFDataAppendBytes(v617[1], byte_1ED6FA2D0, 8);
  CFDataAppendBytes(v617[1], &byte_1ED6FA2D0[8], 8);
  v19 = _cmphotoDNGWriterIFDBegin(v615, 4);
  if (v19)
  {
    goto LABEL_12;
  }

  if (v584)
  {
    v30 = (v30 + 1);
  }

  else
  {
    v30 = v30;
  }

  if (v632)
  {
    _ifdAddTagS(v615, 270, v632);
  }

  _ifdAddTagS(v615, 271, v621);
  _ifdAddTagS(v615, 272, v622);
  OUTLINED_FUNCTION_6_27(v628);
  OUTLINED_FUNCTION_41_3(v31, 274, v32, v33, v34);
  _ifdAddTagS(v615, 305, v623);
  _ifdAddTagS(v615, 306, cf);
  if (v624)
  {
    _ifdAddTagS(v615, 315, v624);
  }

  if (v30 < 1)
  {
    HIDWORD(v570) = 0xFFFF;
  }

  else
  {
    v35 = _ifdAddTag4(v615, 330, 4, v30, 0);
    HIDWORD(v570) = v35;
  }

  v42 = v625;
  if (v625)
  {
    _ifdAddTagS(v615, 33432, v625);
  }

  if (v654)
  {
    LODWORD(keys[0]) = 0;
    v43 = OUTLINED_FUNCTION_18_10(v35, v36, v42, v37, v38, v39, v40, v41, v468, v482, v496, v510, v524, a8, v554, v570, v584, v598, v613, v614, v615[0]);
    v35 = OUTLINED_FUNCTION_42_3(v43, 34665, v44, v45, v46);
    v47 = v35;
  }

  else
  {
    v47 = 0xFFFF;
  }

  if (v653)
  {
    LODWORD(keys[0]) = 0;
    v48 = OUTLINED_FUNCTION_18_10(v35, v36, v42, v37, v38, v39, v40, v41, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v52 = OUTLINED_FUNCTION_42_3(v48, 34853, v49, v50, v51);
  }

  else
  {
    v52 = 0xFFFF;
  }

  _ifdAddTag4(v615, 50706, 1, 4uLL, &__src);
  _ifdAddTag4(v615, 50707, 1, 4uLL, v620);
  _ifdAddTagS(v615, 50708, v627);
  v55 = OUTLINED_FUNCTION_93_0(v615, 50721, v53, v54, v638);
  if (v640)
  {
    v55 = OUTLINED_FUNCTION_93_0(v615, 50722, v57, v58, v639);
  }

  if (v645)
  {
    v63 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v55 = OUTLINED_FUNCTION_93_0(v63, 50723, v65, v66, (v64 + 572));
  }

  if (v646)
  {
    v67 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v55 = OUTLINED_FUNCTION_93_0(v67, 50724, v69, v70, (v68 + 648));
  }

  if (v643)
  {
    v71 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v73 = (v72 + 444);
    v74 = -14808;
    v75 = 3;
  }

  else
  {
    v71 = OUTLINED_FUNCTION_38_2(v55, v56, v57, v58, v59, v60, v61, v62, v468, v482, v496, v510, v524, v539, v554, v570, v584, v598, v613, v614, v615[0]);
    v73 = (v76 + 496);
    v74 = -14807;
    v75 = 2;
  }

  v77 = _ifdAddTag4(v71, v74, 5, v75, v73);
  if (v644)
  {
    v85 = OUTLINED_FUNCTION_38_2(v77, v78, v79, v80, v81, v82, v83, v84, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    v77 = _ifdAddTag4(v85, 50727, 5, 3uLL, (v86 + 516));
  }

  if (v641)
  {
    v77 = _ifdAddTag4(v615, 50730, 10, 1uLL, &v641);
  }

  if (v642[0])
  {
    v77 = OUTLINED_FUNCTION_71_1(v615, 50731, v79, v80, v642);
  }

  if (v642[2])
  {
    v87 = OUTLINED_FUNCTION_38_2(v77, v78, v79, v80, v81, v82, v83, v84, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    OUTLINED_FUNCTION_71_1(v87, 50732, v89, v90, (v88 + 436));
  }

  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    _ifdAddTag4(v615, 50740, 1, Length, BytePtr);
  }

  OUTLINED_FUNCTION_6_27(v633);
  v97 = OUTLINED_FUNCTION_41_3(v93, 50778, v94, v95, v96);
  if (v635)
  {
    OUTLINED_FUNCTION_6_27(v634);
    v97 = OUTLINED_FUNCTION_41_3(v105, 50779, v106, v107, v108);
  }

  if (v636)
  {
    v109 = OUTLINED_FUNCTION_38_2(v97, v98, v99, v100, v101, v102, v103, v104, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    _ifdAddTagIlluminant(v109, 52533, (v110 + 232));
  }

  if (v637)
  {
    v111 = OUTLINED_FUNCTION_38_2(v97, v98, v99, v100, v101, v102, v103, v104, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    _ifdAddTagIlluminant(v111, 52534, (v112 + 252));
  }

  if (v648)
  {
    _ifdAddTagS(v615, 50931, v648);
  }

  if (v649)
  {
    _ifdAddTagS(v615, 50932, v649);
  }

  v113 = __n[0];
  if (__n[0] >= 1)
  {
    _ifdAddTag4(v615, 50940, 11, __n[0], *&__n[1]);
  }

  if (v650)
  {
    _ifdAddTagS(v615, 50934, v650);
  }

  v114 = v651;
  if (v651)
  {
    _ifdAddTagS(v615, 50936, v651);
  }

  if (v662 != -1)
  {
    OUTLINED_FUNCTION_6_27(v662);
    OUTLINED_FUNCTION_42_3(v115, 50941, v116, v117, v118);
  }

  v119 = OUTLINED_FUNCTION_71_1(v615, 50935, v114, v113, v647);
  if (v585)
  {
    LODWORD(keys[0]) = 1;
    v127 = OUTLINED_FUNCTION_18_10(v119, v120, v121, v122, v123, v124, v125, v126, v469, v483, v497, v511, v525, v540, v555, v571, v585, v599, v613, v614, v615[0]);
    OUTLINED_FUNCTION_42_3(v127, 254, v128, v129, v130);
    OUTLINED_FUNCTION_6_27(v655);
    OUTLINED_FUNCTION_42_3(v131, 256, v132, v133, v134);
    OUTLINED_FUNCTION_6_27(v656);
    OUTLINED_FUNCTION_42_3(v135, 257, v136, v137, v138);
    OUTLINED_FUNCTION_94_1(v615, 258, v139, v140, _addJPEGPreviewTags_bps888);
    OUTLINED_FUNCTION_6_27(v657);
    OUTLINED_FUNCTION_40_3(v141, v142, v143, v144, v145);
    if (v657 == 52546)
    {
      v146 = 2;
    }

    else
    {
      v146 = 6;
    }

    OUTLINED_FUNCTION_6_27(v146);
    v152 = OUTLINED_FUNCTION_39_2(v147, v148, v149, v150, v151);
    LODWORD(keys[0]) = 0;
    v160 = OUTLINED_FUNCTION_18_10(v152, v153, v154, v155, v156, v157, v158, v159, v470, v484, v498, v512, v526, v541, v556, v572, v586, v600, v613, v614, v615[0]);
    HIDWORD(v513) = OUTLINED_FUNCTION_42_3(v160, 273, v161, v162, v163);
    OUTLINED_FUNCTION_6_27(3);
    OUTLINED_FUNCTION_41_3(v164, 277, v165, v166, v167);
    OUTLINED_FUNCTION_6_27(v656);
    OUTLINED_FUNCTION_42_3(v168, 278, v169, v170, v171);
    v172 = CFDataGetLength(v587);
    LODWORD(keys[0]) = v172;
    v180 = OUTLINED_FUNCTION_18_10(v172, v173, v174, v175, v176, v177, v178, v179, v471, v485, v499, v513, v527, v542, v557, v573, v587, v601, v613, v614, v615[0]);
    OUTLINED_FUNCTION_42_3(v180, 279, v181, v182, v183);
  }

  else
  {
    OUTLINED_FUNCTION_92_1(v119, v120, v121, v122, v123, v124, v125, v126, v469, v483, v497, v511, v525, v540, v555, v571, 0, v599, v613, v614, SHIDWORD(v614), v615[0], *&v615[8], v616[0], v616[1], v617[0], v617[1], v618, __src);
    HIDWORD(v514) = 0xFFFF;
  }

  v184 = _cmphotoDNGWriterIFDEnd(v615);
  if (v184)
  {
    goto LABEL_172;
  }

  v528 = a4;
  if (v652)
  {
    v613 = 0;
    if (v654)
    {
      v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, v47, &v613 + 1);
      if (v184)
      {
        goto LABEL_172;
      }
    }

    if (v653)
    {
      v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, v52, &v613);
      if (v184)
      {
LABEL_172:
        v15 = v184;
        OUTLINED_FUNCTION_66_0();
        goto LABEL_13;
      }

      v192 = v613;
    }

    else
    {
      v192 = 0;
    }

    OUTLINED_FUNCTION_66_0();
    v193 = HIDWORD(v613);
    keys[0] = *MEMORY[0x1E696D378];
    values = *MEMORY[0x1E695E4C0];
    v194 = CFDictionaryCreate(v28, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v194)
    {
      v195 = v194;
      EXIFDataFromProperties = CGImageCreateEXIFDataFromProperties();
      if (EXIFDataFromProperties)
      {
        v197 = EXIFDataFromProperties;
        v198 = CFDataGetBytePtr(EXIFDataFromProperties);
        v500 = (v198 + 6);
        v199 = CMPhotoDNGRead16(v198 + 3, 0);
        if (v199 != 19789 && v199 != 18761)
        {
          goto LABEL_129;
        }

        v201 = v199 == 19789;
        if (v618 == v201)
        {
          if (CMPhotoDNGRead16(v198 + 4, v201) != 42)
          {
LABEL_129:
            v15 = 4294950743;
            goto LABEL_130;
          }

          v202 = CMPhotoDNGRead32((v198 + 10), v201);
          if (!v202)
          {
LABEL_128:
            v15 = 0;
            goto LABEL_130;
          }

          v203 = v202;
          HIDWORD(v486) = v193;
          v15 = CMPhotoDNGRead16((v500 + v202), v201);
          if (!v15)
          {
            goto LABEL_130;
          }

          LODWORD(v486) = v192;
          v558 = a9;
          v204 = 0;
          v205 = 0;
          v206 = &v198[v203 + 16];
          do
          {
            v207 = CMPhotoDNGRead16(v206 - 4, v201);
            if (v207 == 34853)
            {
              v205 = CMPhotoDNGRead32(v206, v201);
            }

            else if (v207 == 34665)
            {
              v204 = CMPhotoDNGRead32(v206, v201);
            }

            v206 += 3;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
          OUTLINED_FUNCTION_66_0();
          if (!v204)
          {
            v16 = a9;
            if (!v205)
            {
              goto LABEL_128;
            }

LABEL_184:
            v15 = _cmphotoDNGWriterIFDInsert(v615, v500, v205, v486);
            goto LABEL_130;
          }

          v15 = _cmphotoDNGWriterIFDInsert(v615, v500, v204, SHIDWORD(v486));
          if (!v15)
          {
            v16 = a9;
            if (!v205)
            {
              goto LABEL_130;
            }

            goto LABEL_184;
          }

          v16 = a9;
        }

        else
        {
          v15 = 4294950739;
        }

LABEL_130:
        CFRelease(v197);
        CFRelease(v195);
        if (v15)
        {
          goto LABEL_13;
        }

        goto LABEL_131;
      }

      CFRelease(v195);
LABEL_188:
      v15 = 4294950739;
      goto LABEL_13;
    }

    goto LABEL_186;
  }

LABEL_131:
  if (v588)
  {
    LODWORD(keys[0]) = 0;
    v208 = OUTLINED_FUNCTION_84_1(v184, v185, v186, v187, v188, v189, v190, v191, v472, v486, v500, v514, v528, v543, v558, v574, v588, v602, v613, v614, v615[0]);
    v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v208, HIDWORD(v575), v209);
    if (v184)
    {
      goto LABEL_172;
    }

    v184 = _cmphotoDNGWriterIFDBegin(v615, keys[0]);
    if (v184)
    {
      goto LABEL_172;
    }

    OUTLINED_FUNCTION_92_1(v184, v210, v211, v212, v213, v214, v215, v216, v473, v487, v501, v515, v529, v544, v559, v575, v589, v603, v613, v614, SHIDWORD(v614), v615[0], *&v615[8], v616[0], v616[1], v617[0], v617[1], v618, __src);
    v184 = _cmphotoDNGWriterIFDEnd(v615);
    if (v184)
    {
      goto LABEL_172;
    }
  }

  v560 = v16;
  if (v658 >= 1)
  {
    v217 = 0;
    v218 = 0;
    v219 = 0;
    v220 = 4 * (v588 != 0);
    while (1)
    {
      v221 = v659;
      LODWORD(values) = 0;
      v184 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, HIDWORD(v574), &values);
      if (v184)
      {
        goto LABEL_172;
      }

      v184 = _cmphotoDNGWriterIFDBegin(v615, v220 + values);
      if (v184)
      {
        goto LABEL_172;
      }

      v229 = &v221[v217];
      if ((*&v221[v217 + 28] - 1) > 1)
      {
        OUTLINED_FUNCTION_6_27(65540);
        OUTLINED_FUNCTION_42_3(v249, 254, v250, v251, v252);
        OUTLINED_FUNCTION_6_27(*(v229 + 8));
        OUTLINED_FUNCTION_42_3(v253, 256, v254, v255, v256);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        v261 = OUTLINED_FUNCTION_42_3(v257, 257, v258, v259, v260);
        LODWORD(keys[0]) = 8;
        v269 = OUTLINED_FUNCTION_18_10(v261, v262, v263, v264, v265, v266, v267, v268, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v269, 258, v270, v271, v272);
        OUTLINED_FUNCTION_75_1();
        if (!v18 & v247)
        {
          v274 = 0;
        }

        else
        {
          v274 = dword_1A5ABCB58[v273];
        }

        OUTLINED_FUNCTION_6_27(v274);
        OUTLINED_FUNCTION_40_3(v368, v369, v370, v371, v372);
        OUTLINED_FUNCTION_6_27(52527);
        v378 = OUTLINED_FUNCTION_39_2(v373, v374, v375, v376, v377);
        LODWORD(keys[0]) = 0;
        v386 = OUTLINED_FUNCTION_18_10(v378, v379, v380, v381, v382, v383, v384, v385, v475, v489, v503, v517, v531, v546, v562, v577, v591, v605, v613, v614, v615[0]);
        v390 = OUTLINED_FUNCTION_42_3(v386, 273, v387, v388, v389);
        *(v229 + 15) = v390;
        LODWORD(keys[0]) = 1;
        v398 = OUTLINED_FUNCTION_18_10(v390, v391, v392, v393, v394, v395, v396, v397, v480, v494, v508, v522, v536, v551, v567, v582, v596, v610, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v398, 277, v399, v400, v401);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        OUTLINED_FUNCTION_42_3(v402, 278, v403, v404, v405);
        v406 = &v221[v217];
        v407 = CFDataGetLength(*&v221[v217]);
        LODWORD(keys[0]) = v407;
        v415 = OUTLINED_FUNCTION_18_10(v407, v408, v409, v410, v411, v412, v413, v414, v481, v495, v509, v523, v537, v552, v568, v583, v597, v611, v613, v614, v615[0]);
        OUTLINED_FUNCTION_42_3(v415, 279, v416, v417, v418);
        v419 = *&v221[v217 + 8];
        if (v419)
        {
          CFDataGetLength(v419);
          v420 = CFDataGetBytePtr(*(v406 + 1));
          OUTLINED_FUNCTION_67_1(v420, v421, v422, v423, v424, v425, v426, v427, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
        }

        _ifdAddTagS(v615, 52526, *(v406 + 2));
      }

      else
      {
        LODWORD(keys[0]) = 8;
        v230 = OUTLINED_FUNCTION_18_10(v184, v222, v223, v224, v225, v226, v227, v228, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
        OUTLINED_FUNCTION_42_3(v230, 254, v231, v232, v233);
        OUTLINED_FUNCTION_6_27(*(v229 + 8));
        OUTLINED_FUNCTION_42_3(v234, 256, v235, v236, v237);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        OUTLINED_FUNCTION_42_3(v238, 257, v239, v240, v241);
        OUTLINED_FUNCTION_6_27(*(v229 + 10));
        OUTLINED_FUNCTION_41_3(v242, 258, v243, v244, v245);
        OUTLINED_FUNCTION_75_1();
        if (!v18 & v247)
        {
          v248 = 0;
        }

        else
        {
          v248 = dword_1A5ABCB58[v246];
        }

        OUTLINED_FUNCTION_6_27(v248);
        OUTLINED_FUNCTION_40_3(v275, v276, v277, v278, v279);
        OUTLINED_FUNCTION_6_27(51177);
        v285 = OUTLINED_FUNCTION_39_2(v280, v281, v282, v283, v284);
        LODWORD(keys[0]) = 0;
        v293 = OUTLINED_FUNCTION_18_10(v285, v286, v287, v288, v289, v290, v291, v292, v474, v488, v502, v516, v530, v545, v561, v576, v590, v604, v613, v614, v615[0]);
        v297 = OUTLINED_FUNCTION_42_3(v293, 273, v294, v295, v296);
        *(v229 + 15) = v297;
        LODWORD(keys[0]) = 1;
        v305 = OUTLINED_FUNCTION_18_10(v297, v298, v299, v300, v301, v302, v303, v304, v476, v490, v504, v518, v532, v547, v563, v578, v592, v606, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v305, 277, v306, v307, v308);
        OUTLINED_FUNCTION_6_27(*(v229 + 9));
        OUTLINED_FUNCTION_42_3(v309, 278, v310, v311, v312);
        v313 = &v221[v217];
        v314 = CFDataGetLength(*&v221[v217]);
        LODWORD(keys[0]) = v314;
        v322 = OUTLINED_FUNCTION_18_10(v314, v315, v316, v317, v318, v319, v320, v321, v477, v491, v505, v519, v533, v548, v564, v579, v593, v607, v613, v614, v615[0]);
        OUTLINED_FUNCTION_42_3(v322, 279, v323, v324, v325);
        v326 = *&v221[v217 + 8];
        if (v326)
        {
          CFDataGetLength(v326);
          v327 = CFDataGetBytePtr(*(v313 + 1));
          OUTLINED_FUNCTION_67_1(v327, v328, v329, v330, v331, v332, v333, v334, v478, v492, v506, v520, v534, v549, v565, v580, v594, v608, v613, v614, v615[0]);
        }

        v335 = *(v229 + 7) == 1 ? 2 : 1;
        OUTLINED_FUNCTION_6_27(v335);
        OUTLINED_FUNCTION_41_3(v336, 51177, v337, v338, v339);
        OUTLINED_FUNCTION_71_1(v615, 51178, v340, v341, v313 + 22);
        v344 = OUTLINED_FUNCTION_71_1(v615, 51179, v342, v343, v313 + 26);
        LODWORD(keys[0]) = 1;
        v352 = OUTLINED_FUNCTION_18_10(v344, v345, v346, v347, v348, v349, v350, v351, v478, v492, v506, v520, v534, v549, v565, v580, v594, v608, v613, v614, v615[0]);
        v356 = OUTLINED_FUNCTION_41_3(v352, 51180, v353, v354, v355);
        LODWORD(keys[0]) = 1;
        v364 = OUTLINED_FUNCTION_18_10(v356, v357, v358, v359, v360, v361, v362, v363, v479, v493, v507, v521, v535, v550, v566, v581, v595, v609, v613, v614, v615[0]);
        OUTLINED_FUNCTION_41_3(v364, 51181, v365, v366, v367);
      }

      v428 = CFDataGetLength(*&v221[v217]);
      v184 = _cmphotoDNGWriterIFDEnd(v615);
      if (v184)
      {
        goto LABEL_172;
      }

      v219 += v428;
      ++v218;
      v220 += 4;
      v217 += 64;
      if (v218 >= v658)
      {
        goto LABEL_159;
      }
    }
  }

  v219 = 0;
LABEL_159:
  OUTLINED_FUNCTION_66_0();
  if (v588)
  {
    LODWORD(keys[0]) = 0;
    v438 = OUTLINED_FUNCTION_84_1(v429, v430, v431, v432, v433, v434, v435, v436, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
    v19 = _cmphotoDNGWriterIFDGetTagDataOffset(v438, HIDWORD(v514), v439);
    if (v19)
    {
      goto LABEL_12;
    }

    MutableBytePtr = CFDataGetMutableBytePtr(v617[1]);
    v441 = LODWORD(keys[0]);
    v442 = CFDataGetLength(v617[1]);
    CMPhotoDNGWrite32(&MutableBytePtr[v441], v442, v618);
    v443 = v617[1];
    v444 = CFDataGetBytePtr(v588);
    v445 = CFDataGetLength(v588);
    CFDataAppendBytes(v443, v444, v445);
    v446 = v617[1];
    v447 = CFDataGetLength(v617[1]);
    CFDataAppendBytes(v446, zero, -v447 & 3);
    v437 = v658;
  }

  if (v437 >= 1)
  {
    v448 = 0;
    v449 = 0;
    do
    {
      LODWORD(keys[0]) = 0;
      v450 = OUTLINED_FUNCTION_84_1(v429, *(v659 + v448 + 60), v431, v432, v433, v434, v435, v436, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
      v19 = _cmphotoDNGWriterIFDGetTagDataOffset(v450, v451, v452);
      if (v19)
      {
        goto LABEL_12;
      }

      v453 = CFDataGetMutableBytePtr(v617[1]);
      v454 = LODWORD(keys[0]);
      v455 = CFDataGetLength(v617[1]);
      CMPhotoDNGWrite32(&v453[v454], v455, v618);
      v456 = *(v659 + v448);
      v457 = v617[1];
      v458 = CFDataGetBytePtr(v456);
      v459 = CFDataGetLength(v456);
      CFDataAppendBytes(v457, v458, v459);
      CFDataGetLength(v617[1]);
      v460 = OUTLINED_FUNCTION_48_1();
      CFDataAppendBytes(v460, v461, v462);
      ++v449;
      v448 += 64;
    }

    while (v449 < v658);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    v429 = kdebug_trace();
  }

  v463 = v614;
  LODWORD(keys[0]) = 0;
  LODWORD(values) = 0;
  v464 = OUTLINED_FUNCTION_84_1(v429, HIDWORD(v614), v431, v432, v433, v434, v435, v436, v472, v486, v500, v514, v528, v543, v560, v574, v588, v602, v613, v614, v615[0]);
  v467 = _cmphotoDNGWriterIFDGetTagDataOffset(v464, v465, v466);
  if (!v467)
  {
    v467 = _cmphotoDNGWriterIFDGetTagDataOffset(v615, v463, &values);
    if (!v467)
    {
      if (v538)
      {
        v467 = CMPhotoDNGWriteCompressedRaw(&__src, v538, v617[1], keys[0], values, v618);
      }

      else if (v612)
      {
        v467 = CMPhotoDNGCompressLinearDNG(&__src, a5, v617[1], LODWORD(keys[0]), values, v618);
      }

      else
      {
        v467 = CMPhotoDNGCompressRaw(&__src, a5, v617[1], keys[0], values, v618, v629, v630);
      }
    }
  }

  v15 = v467;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
  }

  if (!v15)
  {
    *v569 = CFRetain(v617[1]);
    v15 = 0;
    if (v553)
    {
      *v553 = v219;
    }
  }

LABEL_13:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v652)
  {
    CFRelease(v652);
  }

  if (v658 >= 1)
  {
    v20 = 0;
    for (i = 0; i < v658; ++i)
    {
      v22 = v659;
      v23 = *(v659 + v20 + 16);
      if (v23)
      {
        CFRelease(v23);
        v22 = v659;
      }

      v24 = *&v22[v20];
      if (v24)
      {
        CFRelease(v24);
        v22 = v659;
      }

      v25 = *&v22[v20 + 8];
      if (v25)
      {
        CFRelease(v25);
      }

      v20 += 64;
    }
  }

  free(v659);
  _cmphotoDNGWriterReleaseTagStorage(v615);
  if (v617[1])
  {
    CFRelease(v617[1]);
    v617[1] = 0;
  }

  v26 = v616[1];
  if (v616[1])
  {
    v616[1] = 0;
    free(v26);
  }

  free(v660);
  free(*&__n[1]);
  return v15;
}

uint64_t CMPhotoDNGCreateDNGFromRAWPixelBufferAndAuxiliaryImage(uint64_t a1, __CVBuffer *a2, uint64_t a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v12 = OUTLINED_FUNCTION_96();
    Mutable = CFDictionaryCreateMutable(v12, v13, v14, v15);
    if (!Mutable)
    {
      return 4294950745;
    }

    v17 = Mutable;
    DNGInternal = 4294950746;
    if (a5 && a6)
    {
      CFDictionarySetValue(Mutable, @"AuxPixelBuffer", a4);
      CFDictionarySetValue(v17, @"AuxMetadata", a5);
      CFDictionarySetValue(v17, @"AuxImageType", a6);
      if (a7)
      {
        CFDictionarySetValue(v17, @"AuxOptions", a7);
      }

      v29[0] = v17;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v19 = OUTLINED_FUNCTION_87_1();
      DNGInternal = _createDNGInternal(v19, v20, v21, 0, a2, v22, 0, 0, v28);
    }

    CFRelease(v17);
    return DNGInternal;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_87_1();
    return _createDNGInternal(v24, v25, v26, v27, a2, 0, 0, 0, v28);
  }
}

uint64_t CMPhotoDNGCreateCompressedDataFromRAWPixelBuffer(__CVBuffer *a1, uint64_t a2, __CFData **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  bzero(v21, 0x878uLL);
  FigKTraceInit();
  if (!a3)
  {
    return 4294950746;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950745;
  }

  v6 = Mutable;
  FigCFDictionaryGetBooleanIfPresent();
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v21[25] = Width;
  v21[26] = Height;
  v23 = 2;
  v22 = 0x3FFF00000840;
  _tileDescriptionInitialize(v21);
  *bytes = 0x163726177;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v16 = Width;
  v17 = Height;
  v18 = v24;
  v9 = v25;
  v19 = v25;
  v20 = 1;
  CFDataAppendBytes(v6, bytes, 36);
  Length = CFDataGetLength(v6);
  v9 *= 4;
  CFDataIncreaseLength(v6, v9);
  v11 = CFDataGetLength(v6);
  CFDataIncreaseLength(v6, v9);
  v12 = CMPhotoDNGCompressRaw(v21, a1, v6, Length, v11, v20, v22, WORD2(v22));
  if (v12)
  {
    CFRelease(v6);
  }

  else
  {
    *a3 = v6;
  }

  return v12;
}

uint64_t _createCVPixelBufferFromDNGData(CFDataRef theData, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, size_t a6, uint64_t a7, int a8, int a9, CVPixelBufferRef *a10)
{
  v70[4] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (!theData)
  {
    return 4294950739;
  }

  v17 = a3;
  v18 = a2;
  if (a5 | a4)
  {
    v19 = 4294950741;
    if (!a4 || !a5)
    {
      goto LABEL_38;
    }

    v18 = CMPhotoAlignValue(a2, a4);
    v17 = CMPhotoAlignValue(a3, a5);
  }

  if (!a6)
  {
    a6 = CMPhotoGetBytesPerPixelForPixelFormat(a7) * v18;
    if (!a6)
    {
      v19 = 4294950741;
      goto LABEL_38;
    }
  }

  if (a7 == 1751527984 || a7 == 875704422)
  {
    v19 = 4294950739;
    if (!v18)
    {
      goto LABEL_38;
    }

    if (!v17)
    {
      goto LABEL_38;
    }

    v21 = (CFDataGetLength(theData) * 0.666666667);
    if (a6 * v17 != v21)
    {
      goto LABEL_38;
    }

    v22 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    v23 = *MEMORY[0x1E69660D8];
    v70[0] = MEMORY[0x1E695E0F8];
    v24 = *MEMORY[0x1E6966130];
    v69[0] = v23;
    v69[1] = v24;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a7];
    v26 = *MEMORY[0x1E6965F30];
    v27 = *MEMORY[0x1E6965F60];
    v70[1] = v25;
    v70[2] = v27;
    v28 = *MEMORY[0x1E6965CE8];
    v69[2] = v26;
    v69[3] = v28;
    v70[3] = v22;
    pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:4];
    v68[0] = a2;
    v68[1] = a2 >> 1;
    v67[0] = a3;
    v67[1] = a3 >> 1;
    v66[0] = a6;
    v66[1] = a6;
    planeBaseAddress[0] = CFDataGetBytePtr(theData);
    planeBaseAddress[1] = &CFDataGetBytePtr(theData)[v21];
    CFRetain(theData);
    v19 = CVPixelBufferCreateWithPlanarBytes(*MEMORY[0x1E695E480], a2, a3, a7, 0, 0, 2uLL, planeBaseAddress, v68, v67, v66, _pixelBufferPlanarReleaseCallback, theData, pixelBufferAttributes, &pixelBufferOut);
    if (v22)
    {
      CFRelease(v22);
    }

    if (v19)
    {
      goto LABEL_38;
    }
  }

  else if (a7)
  {
    v19 = 4294950739;
    if (!v18 || !v17)
    {
      goto LABEL_38;
    }

    if (CFDataGetLength(theData) != a6 * v17)
    {
      v19 = 4294950743;
      goto LABEL_38;
    }

    v51 = MEMORY[0x1E695E480];
    if (a7 != 1815491698)
    {
      goto LABEL_55;
    }

    v52 = objc_autoreleasePoolPush();
    v63[0] = *MEMORY[0x1E696CEB8];
    v64[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFDataGetBytePtr(theData)];
    v63[1] = *MEMORY[0x1E696CE30];
    v64[1] = [MEMORY[0x1E696AD98] numberWithLong:CFDataGetLength(theData)];
    v63[2] = *MEMORY[0x1E696CE58];
    v64[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a6];
    v63[3] = *MEMORY[0x1E696D130];
    v64[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
    v63[4] = *MEMORY[0x1E696CF58];
    v64[4] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    v63[5] = *MEMORY[0x1E696CFC0];
    v53 = [MEMORY[0x1E696AD98] numberWithInt:1815491698];
    v63[6] = *MEMORY[0x1E696CE50];
    v64[5] = v53;
    v64[6] = &unk_1F194A2B8;
    v54 = IOSurfaceCreate([MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:7]);
    objc_setAssociatedObject(v54, _createCVPixelBufferFromDNGData, theData, 1);
    v19 = CVPixelBufferCreateWithIOSurface(*v51, v54, 0, &pixelBufferOut);
    objc_autoreleasePoolPop(v52);
    if (v19)
    {
      goto LABEL_38;
    }

    if (!pixelBufferOut)
    {
LABEL_55:
      CFRetain(theData);
      v56 = *v51;
      BytePtr = CFDataGetBytePtr(theData);
      v58 = CVPixelBufferCreateWithBytes(v56, a2, a3, a7, BytePtr, a6, _pixelBufferReleaseCallback, theData, 0, &pixelBufferOut);
      if (v58 || a8 && (v58 = CMPhotoPixelBufferSetVersatileBayerPattern(pixelBufferOut, a8), v58))
      {
        v19 = v58;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = [(objc_class *)off_1ED6FA2C0() imageWithData:theData];
    if (!v39)
    {
      v19 = 2;
      goto LABEL_31;
    }

    v40 = v39;
    v41 = *MEMORY[0x1E695E480];
    [v39 extent];
    v43 = v42;
    [v40 extent];
    v45 = CVPixelBufferCreate(v41, v43, v44, 0x6C363472u, 0, &pixelBufferOut);
    if (v45)
    {
      v19 = v45;
      goto LABEL_31;
    }

    v46 = objc_alloc(off_1ED6FA2B0[0]());
    v47 = [v46 initWithPixelBuffer:pixelBufferOut];
    [v47 setAlphaMode:2];
    [v47 setColorSpace:{objc_msgSend(v40, "colorSpace")}];
    v68[0] = 0;
    v48 = [off_1ED6FA2B8[0]() context];
    if (!v48)
    {
      v19 = 4294950745;
      goto LABEL_31;
    }

    v49 = [v48 startTaskToRender:v40 toDestination:v47 error:v68];
    v50 = v68[0];
    if (!v49 || v68[0] || ([v49 waitUntilCompletedAndReturnError:v68], (v50 = v68[0]) != 0))
    {
      NSLog(&stru_1F191A040.isa, v50);
      v19 = 4294950739;
LABEL_31:
      objc_autoreleasePoolPop(v38);
      goto LABEL_38;
    }

    objc_autoreleasePoolPop(v38);
  }

  if (!a9 || a9 == a7)
  {
    v19 = 0;
    *a10 = pixelBufferOut;
    return v19;
  }

  v68[0] = 0;
  OUTLINED_FUNCTION_82_0();
  v19 = CMPhotoScaleAndRotateSessionTransformForSize(0, v30, 1, 1, v31, 0, 0, 1, v32, v33, v34, v35, v36, v37, planeWidth, v60, planeBytesPerRow);
  if (!v19)
  {
    *a10 = v68[0];
  }

LABEL_38:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v19;
}

uint64_t CMPhotoDNGCompressorCreate(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  result = 4294950746;
  if (a2 <= 1 && a4)
  {
    pthread_once(&CMPhotoDNGCompressorGetTypeID_onceToken, RegisterCMPhotoDNGCompressor);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      *(Instance + 16) = a2;
      *(Instance + 96) = 0;
      v9 = OUTLINED_FUNCTION_17();
      Mutable = CFArrayCreateMutable(v9, v10, v11);
      v8[9] = Mutable;
      if (Mutable)
      {
        v13 = OUTLINED_FUNCTION_17();
        v16 = CFArrayCreateMutable(v13, v14, v15);
        v8[10] = v16;
        if (v16)
        {
          result = 0;
          v8[8] = 0;
          v8[11] = 0;
          *a4 = v8;
          return result;
        }
      }

      CFRelease(v8);
    }

    return 4294950745;
  }

  return result;
}

uint64_t CMPhotoDNGCompressorSetMainImage(void *a1, const void *a2, CFTypeRef cf, const void *a4)
{
  result = 4294950746;
  if (a2 && a1 && cf)
  {
    v9 = a1[3];
    if (v9)
    {
      CFRelease(v9);
      a1[3] = 0;
    }

    v10 = a1[4];
    if (v10)
    {
      CFRelease(v10);
      a1[4] = 0;
    }

    v11 = a1[6];
    if (v11)
    {
      CFRelease(v11);
      a1[6] = 0;
    }

    a1[3] = CFRetain(cf);
    a1[4] = CFRetain(a2);
    if (a4)
    {
      v12 = CFRetain(a4);
    }

    else
    {
      v12 = 0;
    }

    result = 0;
    a1[6] = v12;
  }

  return result;
}

uint64_t CMPhotoDNGCompressorSetCompressedPreviewImage(uint64_t a1, void *cf, CFDictionaryRef theDict)
{
  v12 = 0;
  if (!a1)
  {
    return 4294950746;
  }

  if (theDict)
  {
    if (CFDictionaryGetValue(theDict, @"SourceCropRect") || CFDictionaryGetValue(theDict, @"PreviewImageMaxPixelSize"))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();

      return FigSignalErrorAtGM();
    }

    FigCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetSizeIfPresent(theDict, @"CompressedSurfaceSize", &v12);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 96) = 0;
  }

  if (!cf)
  {
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFDataGetTypeID())
  {
    *(a1 + 56) = CFRetain(cf);
    return 0;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == IOSurfaceGetTypeID())
  {
    DataWrappingIOSurface = CMPhotoCreateDataWrappingIOSurface(*MEMORY[0x1E695E480], cf, 0, v12);
    *(a1 + 56) = DataWrappingIOSurface;
    if (DataWrappingIOSurface)
    {
      return 0;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM();
}

uint64_t CMPhotoDNGCompressorSetPreviewImage(uint64_t a1, CVPixelBufferRef pixelBuffer, const __CFDictionary *a3)
{
  cf = 0;
  v3 = 4294950746;
  if (!a1 || !pixelBuffer)
  {
    return v3;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v8 = PixelFormatType;
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(PixelFormatType);
  if (UncompressedPixelFormatFromCompressedPixelFormat == 875704422 || UncompressedPixelFormatFromCompressedPixelFormat == 1111970369)
  {
    v11 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F30], 0);
    if (FigCFEqual())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_0();
      v3 = FigSignalErrorAtGM();
      v12 = 0;
      goto LABEL_24;
    }

    if (v8 == 875704422)
    {
      v12 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F98], 0);
      if (!FigCFEqual())
      {
LABEL_17:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_5_0();
        v3 = FigSignalErrorAtGM();
LABEL_24:
        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        return v3;
      }
    }

    else
    {
      v12 = 0;
    }

    if (!CMPhotoCFDictionaryGetIntIfPresent())
    {
      JPEGFromPixelBuffer = _createJPEGFromPixelBuffer(pixelBuffer, a3, 0);
      v3 = JPEGFromPixelBuffer;
      if (!JPEGFromPixelBuffer)
      {
        v14 = *(a1 + 56);
        if (v14)
        {
          CFRelease(v14);
          *(a1 + 56) = 0;
        }

        v15 = *(a1 + 96);
        if (v15)
        {
          CFRelease(v15);
          *(a1 + 96) = 0;
        }

        v3 = 0;
        *(a1 + 56) = cf;
        cf = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_0();

  return FigSignalErrorAtGM();
}

uint64_t _createJPEGFromPixelBuffer(__CVBuffer *a1, const __CFDictionary *a2, int a3)
{
  v6 = OUTLINED_FUNCTION_9_0();
  v9 = CMPhotoCompressionSessionCreate(v6, v7, v8);
  if (v9)
  {
    return v9;
  }

  v10 = OUTLINED_FUNCTION_9_0();
  Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
  if (!Mutable)
  {
    return 4294950745;
  }

  v15 = Mutable;
  v16 = FigCFDictionarySetInt();
  if (v16 || (v16 = FigCFDictionarySetInt(), v16) || (v16 = CMPhotoCompressionSessionOpenEmptyContainer(0, v15), v16))
  {
    v28 = v16;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_9_0();
    v21 = CFDictionaryCreateMutable(v17, v18, v19, v20);
    if (v21)
    {
      v22 = v21;
      v23 = FigCFDictionarySetInt();
      if (!v23)
      {
        if (a3)
        {
          goto LABEL_13;
        }

        CVPixelBufferGetPixelFormatType(a1);
        OUTLINED_FUNCTION_53_1();
        if (v24)
        {
          CFDictionarySetValue(v22, @"PreferSoftwareCodec", *MEMORY[0x1E695E4D0]);
        }

        v23 = FigCFDictionarySetInt();
        if (!v23)
        {
LABEL_13:
          v23 = FigCFDictionarySetInt();
          if (!v23)
          {
            if (a2)
            {
              Value = CFDictionaryGetValue(a2, @"SourceCropRect");
              if (Value)
              {
                CFDictionarySetValue(v22, @"SourceCropRect", Value);
              }

              v26 = CFDictionaryGetValue(a2, @"PreviewImageMaxPixelSize");
              if (v26)
              {
                CFDictionarySetValue(v22, @"MaxPixelSize", v26);
              }
            }

            v23 = CMPhotoCompressionSessionAddImage(0);
            if (!v23)
            {
              v23 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(0);
              if (!v23)
              {
                fig_log_get_emitter();
                v23 = FigSignalErrorAtGM();
              }
            }
          }
        }
      }

      v28 = v23;
      CFRelease(v22);
    }

    else
    {
      v28 = 4294950745;
    }
  }

  CFRelease(v15);
  return v28;
}

uint64_t _createJPEGXLFromPixelBuffer(__CVBuffer *a1, uint64_t a2, CFDataRef *a3)
{
  CMPhotoGetPixelBufferSize(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = OUTLINED_FUNCTION_96();
  Mutable = CFDataCreateMutable(v8, v9);
  v29 = 2;
  v30 = 2;
  v28 = 1.0;
  cf = 0;
  if (a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    v11 = v28 < 0.0 || v28 > 1.0;
    if (v11 || (FigCFDictionaryGetIntIfPresent(), (v30 - 10) <= 0xFFFFFFF6))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();
      v12 = FigSignalErrorAtGM();
LABEL_20:
      v22 = v12;
      goto LABEL_14;
    }

    FigCFDictionaryGetIntIfPresent();
  }

  v12 = CMPhotoCreateColorSpaceFromPixelBuffer(a1, &cf, 1, 1);
  if (v12)
  {
    goto LABEL_20;
  }

  v13 = OUTLINED_FUNCTION_17();
  v12 = CVPixelBufferLockBaseAddress(v13, v14);
  if (v12)
  {
    goto LABEL_20;
  }

  CVPixelBufferGetBaseAddress(a1);
  v26 = cf;
  v15 = OUTLINED_FUNCTION_78_1();
  v21 = CMPhotoDNGJPEGXLCompressData(v15, v16, PixelFormatType, v17, BytesPerRow, v20, v18, v19, 0, v26, Mutable);
  v22 = v21;
  if (a3 && !v21)
  {
    *a3 = CFDataCreateCopy(*MEMORY[0x1E695E480], Mutable);
  }

  v23 = OUTLINED_FUNCTION_17();
  CVPixelBufferUnlockBaseAddress(v23, v24);
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

uint64_t CMPhotoDNGCompressorSetPreviewImageFromRAW(uint64_t a1, uint64_t a2, __CVBuffer *a3, const __CFDictionary *a4)
{
  v4 = 0;
  v39 = 0;
  v5 = 4294950746;
  if (!a1 || !a2)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_23;
  }

  PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(a3);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != 1751527984 && PixelFormatType != 1815491698)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v5 = FigSignalErrorAtGM();
    v4 = 0;
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  v4 = CVBufferCopyAttachment(a3, *MEMORY[0x1E6965F30], 0);
  if (!FigCFEqual())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v5 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = [off_1ED6FA2A8[0]() filterWithCVPixelBuffer:a3 properties:a2 options:0];
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v29 = FigSignalErrorAtGM();
    goto LABEL_34;
  }

  v22 = [v21 outputImage];
  if (!v22)
  {
    v8 = 0;
LABEL_36:
    v5 = 4294950745;
    goto LABEL_21;
  }

  v23 = v22;
  if (CMPhotoPixelBufferHasCLAP(a3))
  {
    CGAffineTransformMakeScale(&v37, 1.0, -1.0);
    [v23 extent];
    CGAffineTransformTranslate(&v38, &v37, 0.0, -v24);
    v40.origin.x = PixelBufferCLAPAsRect;
    v40.origin.y = v13;
    v40.size.width = v15;
    v40.size.height = v17;
    v41 = CGRectApplyAffineTransform(v40, &v38);
    v25 = [v23 imageByCroppingToRect:{v41.origin.x, v41.origin.y, v41.size.width, v41.size.height}];
    [v25 extent];
    v27 = -v26;
    [v25 extent];
    CGAffineTransformMakeTranslation(&v38, v27, -v28);
    v23 = [v25 imageByApplyingTransform:&v38];
  }

  v29 = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", 875704422, v15, v17, 1, 0, 0, 0, 0, 0, &v39);
  if (v29)
  {
LABEL_34:
    v5 = v29;
    v8 = 0;
LABEL_21:
    objc_autoreleasePoolPop(v20);
    goto LABEL_23;
  }

  CMPhotoAddDefault601709MatrixToBufferIfAllowed(v39, 1, 0);
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v8)
  {
    goto LABEL_36;
  }

  v30 = objc_alloc(off_1ED6FA2B0[0]());
  v31 = [v30 initWithPixelBuffer:v39];
  if (!v31)
  {
    goto LABEL_36;
  }

  v32 = v31;
  [v31 setAlphaMode:2];
  [v32 setColorSpace:v8];
  v33 = [off_1ED6FA2B8[0]() context];
  if (!v33)
  {
    goto LABEL_36;
  }

  v36 = 0;
  v34 = [v33 startTaskToRender:v23 toDestination:v32 error:&v36];
  v5 = 4294950739;
  if (!v34)
  {
    goto LABEL_21;
  }

  if (v36)
  {
    goto LABEL_21;
  }

  [v34 waitUntilCompletedAndReturnError:&v36];
  if (v36)
  {
    goto LABEL_21;
  }

  objc_autoreleasePoolPop(v20);
  v5 = CMPhotoDNGCompressorSetPreviewImage(a1, v39, a4);
LABEL_23:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t CMPhotoDNGCompressorAddAuxiliaryImage(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  result = 4294950746;
  if (a1 && a2 && a3 && a4)
  {
    v11 = OUTLINED_FUNCTION_96();
    Mutable = CFDictionaryCreateMutable(v11, v12, v13, v14);
    if (Mutable)
    {
      v16 = Mutable;
      CFDictionarySetValue(Mutable, @"AuxPixelBuffer", a2);
      CFDictionarySetValue(v16, @"AuxMetadata", a3);
      CFDictionarySetValue(v16, @"AuxImageType", a4);
      if (a5)
      {
        CFDictionarySetValue(v16, @"AuxOptions", a5);
        FigCFDictionaryGetBooleanIfPresent();
      }

      CFArrayAppendValue(*(a1 + 72), v16);
      CFRelease(v16);
      return 0;
    }

    else
    {
      return 4294950745;
    }
  }

  return result;
}

uint64_t CMPhotoDNGCompressorFinalizeAndCreateData(uint64_t a1, CFTypeRef *a2)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v2 = 4294950746;
  if (!a1)
  {
    return v2;
  }

  v3 = a2;
  if (!a2)
  {
    return v2;
  }

  v4 = a1;
  if (!*(a1 + 24))
  {
    goto LABEL_60;
  }

  v5 = *(a1 + 80);
  if ((!v5 || CFArrayGetCount(v5) <= 0) && !*(v4 + 96))
  {
    v22 = *(v4 + 56);
    if (!v22)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  v6 = *(v4 + 56);
  if (!v6)
  {
LABEL_60:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v7 = *(v4 + 96);
  v8 = *(v4 + 80);
  cf = 0;
  theData = 0;
  v35 = @"BackingType";
  v36[0] = &unk_1F194A2D0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    Count = 0;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  if (!Count)
  {
    v12 = 0;
    v2 = 0;
    goto LABEL_56;
  }

LABEL_13:
  v10 = CFGetAllocator(v6);
  v11 = CMPhotoCompressionSessionCreate(v10, 0, &cf);
  if (v11)
  {
    goto LABEL_35;
  }

  if (v7)
  {
    value[1] = MEMORY[0x1E69E9820];
    value[2] = 3221225472;
    value[3] = ___addAuxiliaryImagesToJPEGData_block_invoke;
    value[4] = &__block_descriptor_40_e25_i16__0____CFDictionary__8l;
    value[5] = v7;
    v11 = CMPhotoCompressionSessionOpenExistingContainerForModification(cf, v9, v6);
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_35:
    v2 = v11;
    v12 = 0;
    goto LABEL_56;
  }

  v11 = CMPhotoCompressionSessionOpenExistingContainer();
  if (v11)
  {
    goto LABEL_35;
  }

LABEL_16:
  v27 = v4;
  v28 = v3;
  if (!Count)
  {
    v12 = 0;
LABEL_37:
    v2 = CMPhotoCompressionSessionCloseContainerAndCopyBacking(cf);
    if (v2)
    {
      goto LABEL_55;
    }

    v22 = theData;
    theData = 0;
    v4 = v27;
    v3 = v28;
    if (!v12)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v12 = 0;
  v13 = 0;
  v14 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    if (v12)
    {
      CFRelease(v12);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
    CFDictionaryGetValue(ValueAtIndex, @"AuxPixelBuffer");
    v16 = OUTLINED_FUNCTION_34_2();
    CFDictionaryGetValue(v16, @"AuxMetadata");
    v17 = CFDictionaryGetValue(ValueAtIndex, @"AuxImageType");
    v18 = CFDictionaryGetValue(ValueAtIndex, @"AuxOptions");
    if (v18)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, v18);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v12 = MutableCopy;
    if (!MutableCopy)
    {
      v2 = 4294950745;
      goto LABEL_55;
    }

    CFDictionarySetValue(MutableCopy, @"PreferSoftwareCodec", v14);
    value[0] = 0;
    v31 = 0;
    v38.length = CFStringGetLength(@"kCGImageAuxiliaryDataType");
    v38.location = 0;
    if (CFStringCompareWithOptions(v17, @"kCGImageAuxiliaryDataType", v38, 0) == kCFCompareEqualTo)
    {
      break;
    }

    CMPhotoAuxiliaryImageTypeAndFinalURNFromURN = CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(v17, value);
    v31 = CMPhotoAuxiliaryImageTypeAndFinalURNFromURN;
    if (!CMPhotoAuxiliaryImageTypeAndFinalURNFromURN)
    {
      goto LABEL_53;
    }

LABEL_28:
    if (CMPhotoAuxiliaryImageTypeAndFinalURNFromURN == 4 && value[0])
    {
      CFDictionarySetValue(v12, @"AuxiliaryImageCustomTypeURN", value[0]);
    }

    CMPhotoCompressionSessionAddAuxiliaryImage(cf);
    if (v21)
    {
      goto LABEL_54;
    }

    if (Count == ++v13)
    {
      goto LABEL_37;
    }
  }

  CMPhotoGetCMPhotoAuxiliaryImageTypeFromCGImageAuxiliaryDataType(v17, value, &v31);
  CMPhotoAuxiliaryImageTypeAndFinalURNFromURN = v31;
  if (v31)
  {
    goto LABEL_28;
  }

LABEL_53:
  fig_log_get_emitter();
  v21 = FigSignalErrorAtGM();
LABEL_54:
  v2 = v21;
LABEL_55:
  v4 = v27;
  v3 = v28;
LABEL_56:
  if (theData)
  {
    CFRelease(theData);
  }

  v22 = 0;
  if (v12)
  {
LABEL_39:
    CFRelease(v12);
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    v25 = v30;
  }

  else
  {
    v23 = *(v4 + 56);
    if (v23)
    {
      CFRelease(v23);
    }

    *(v4 + 56) = v22;
    if (!v22)
    {
LABEL_46:
      v24 = 0;
      goto LABEL_49;
    }

LABEL_48:
    *(v4 + 64) = CFDataGetLength(v22);
    v24 = *(v4 + 56);
LABEL_49:
    v2 = _createDNGInternal(*(v4 + 32), v24, *(v4 + 48), 0, *(v4 + 24), *(v4 + 72), *(v4 + 16) == 1, v4 + 88, &v30);
    v25 = v30;
    if (!v2)
    {
      *v3 = v30;
      return v2;
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v2;
}

uint64_t CMPhotoDNGCompressorFinalizeAndCreateSurface(uint64_t a1, uint64_t a2, uint64_t a3, IOSurfaceRef *a4, CFIndex *a5)
{
  buffer = 0;
  theData = 0;
  v5 = 4294950746;
  if (a1 && a4 && a5)
  {
    Data = CMPhotoDNGCompressorFinalizeAndCreateData(a1, &theData);
    if (Data || (Length = CFDataGetLength(theData), Data = CMPhotoSurfacePoolCreateMemorySurface(a2, Length, 1, &buffer), Data) || (Data = IOSurfaceLock(buffer, 0, 0), Data))
    {
      v5 = Data;
    }

    else
    {
      BaseAddress = IOSurfaceGetBaseAddress(buffer);
      BytePtr = CFDataGetBytePtr(theData);
      memcpy(BaseAddress, BytePtr, Length);
      IOSurfaceUnlock(buffer, 0, 0);
      v5 = 0;
      *a4 = buffer;
      buffer = 0;
      *a5 = Length;
    }
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (buffer)
  {
    CFRelease(buffer);
  }

  return v5;
}

uint64_t CMPhotoDNGCompressorGetFinalizedSize(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = 4294950746;
  if (a1 && a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a1 + 64);
      *a4 = *(a1 + 88);
    }
  }

  return result;
}

uint64_t _dngUnpackInternal(int a1, int a2, CFDataRef *a3, uint64_t a4, _DWORD *a5, uint64_t a6, CVPixelBufferRef *a7, uint64_t a8, __CFArray **a9)
{
  v457 = a6;
  v460 = a8;
  v484 = a7;
  v451 = a5;
  v478 = a4;
  v466 = a3;
  OUTLINED_FUNCTION_65_1();
  v571 = *MEMORY[0x1E69E9840];
  v555 = 0;
  v556 = 0;
  bzero(v565, 0x400uLL);
  v554 = 0u;
  v552 = 0u;
  v553 = 0u;
  v551 = 0u;
  *v549 = 0;
  *v550 = 0;
  *v548 = 0;
  v547 = 17;
  v546 = 0;
  v544 = 0;
  v545 = 0;
  v543 = 0;
  HIDWORD(v542) = 0;
  v541 = 0;
  HIBYTE(v540) = 0;
  LODWORD(v540) = 0;
  HIWORD(v539) = 0;
  FigKTraceInit();
  if (!v9)
  {
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_21_9();
    MutableCopy = 0;
    v464 = 0;
    v465 = 0;
    v463 = 0;
    CVPixelBufferFromDNGData = 4294950746;
    goto LABEL_614;
  }

  OUTLINED_FUNCTION_9_1();
  if (v60)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (v10)
  {
    FigCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetSizeIfPresent(v10, @"CompressedSurfaceSize", &v541);
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v14 = v541;
  }

  else
  {
    v14 = 0;
  }

  allocator = *MEMORY[0x1E695E480];
  v15 = CMPhotoDataCreateFromSource(*MEMORY[0x1E695E480], v9, 0, v14, &v555, 0);
  if (v15 || (v15 = _cmphotoDNGReaderInit(&v553, v555), v15))
  {
    CVPixelBufferFromDNGData = v15;
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_21_9();
    MutableCopy = 0;
    v464 = 0;
    v465 = 0;
    v463 = 0;
    goto LABEL_614;
  }

  v16 = MEMORY[0x1E696DF28];
  keys[0] = *MEMORY[0x1E696E118];
  keys[1] = @"kCGImageSourceShouldUseRawDataForFullSize";
  v17 = *MEMORY[0x1E695E4D0];
  *&values = @"com.adobe.raw-image";
  *(&values + 1) = v17;
  v18 = CFDictionaryCreate(allocator, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v465 = v18;
  if (!v18)
  {
    MutableCopy = 0;
    v463 = 0;
    v464 = 0;
    CVPixelBufferFromDNGData = 0;
    goto LABEL_695;
  }

  v19 = v18;
  v20 = CGImageSourceCreateWithData(v555, v18);
  if (!v20)
  {
    MutableCopy = 0;
    v463 = 0;
    v464 = 0;
    CVPixelBufferFromDNGData = 4294950743;
    goto LABEL_695;
  }

  v463 = v20;
  v21 = CGImageSourceCopyPropertiesAtIndex(v20, 0, v19);
  v11 = allocator;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v464 = v21;
  if (!MutableCopy || (CFDictionaryGetValue(v21, *v16), (v23 = FigCFDictionaryCreateMutableCopy()) == 0))
  {
    CVPixelBufferFromDNGData = 4294950745;
LABEL_695:
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_21_9();
    goto LABEL_614;
  }

  v24 = v23;
  v25 = OUTLINED_FUNCTION_9_0();
  Mutable = CFDictionaryCreateMutable(v25, v26, v27, v28);
  v469 = v24;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_3_31();
    v11 = 0;
LABEL_686:
    cf = 0;
    goto LABEL_691;
  }

  v29 = OUTLINED_FUNCTION_9_0();
  v11 = CFDictionaryCreateMutable(v29, v30, v31, v32);
  if (!v11)
  {
    OUTLINED_FUNCTION_3_31();
    goto LABEL_686;
  }

  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D808], Mutable);
  CFDictionarySetValue(MutableCopy, *v16, v24);
  keys[0] = 0;
  v33 = _copyStringTag(&v553, 270);
  v487 = MutableCopy;
  cf = v11;
  if (v33)
  {
    CFDictionarySetValue(v24, *MEMORY[0x1E696DF40], v33);
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    v34 = 2;
    if (CStringPtrAndBufferToFree)
    {
      if (!strcmp(CStringPtrAndBufferToFree, "Internal"))
      {
        v34 = 4;
      }

      else
      {
        v34 = 2;
      }
    }
  }

  else
  {
    v34 = 2;
  }

  _copyStringTagToDict(&v553, 271, *MEMORY[0x1E696DF48], v24);
  _copyStringTagToDict(&v553, 272, *MEMORY[0x1E696DF50], v24);
  _copyIntegerTagToDict(&v553, 274);
  _copyStringTagToDict(&v553, 305, *MEMORY[0x1E696DF68], v24);
  _copyStringTagToDict(&v553, 306, *MEMORY[0x1E696DF20], v24);
  _copyStringTagToDict(&v553, 315, *MEMORY[0x1E696DF08], v24);
  _copyStringTagToDict(&v553, 33432, *MEMORY[0x1E696DF18], v24);
  _copyVersionToDictAsString(&v553);
  _copyVersionToDictAsString(&v553);
  _copyStringTagToDict(&v553, 50708, *MEMORY[0x1E696D858], Mutable);
  FloatArrayFromRationals = _createFloatArrayFromRationals(&v553, 50721, 9);
  v37 = _createFloatArrayFromRationals(&v553, 50722, 9);
  v38 = _createFloatArrayFromRationals(&v553, 50723, 9);
  v39 = _createFloatArrayFromRationals(&v553, 50724, 9);
  if (FloatArrayFromRationals)
  {
    v46 = OUTLINED_FUNCTION_76_0();
    CFDictionarySetValue(v46, v47, v48);
    if (!v37)
    {
LABEL_24:
      if (!v38)
      {
        goto LABEL_25;
      }

      goto LABEL_39;
    }
  }

  else if (!v37)
  {
    goto LABEL_24;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7E8], v37);
  if (!v38)
  {
LABEL_25:
    if (!v39)
    {
      goto LABEL_26;
    }

    goto LABEL_40;
  }

LABEL_39:
  CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7C8], v38);
  if (!v39)
  {
LABEL_26:
    if (!v38)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

LABEL_40:
  CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7D0], v39);
  if (!v38)
  {
LABEL_27:
    if (!v39)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  CFRelease(v38);
  if (!v39)
  {
LABEL_28:
    if (!FloatArrayFromRationals)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

LABEL_42:
  CFRelease(v39);
  if (!FloatArrayFromRationals)
  {
LABEL_29:
    if (!v37)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_43:
  CFRelease(FloatArrayFromRationals);
  if (v37)
  {
LABEL_30:
    CFRelease(v37);
  }

LABEL_31:
  if (WORD4(v554))
  {
    v40 = 0;
    v41 = v554;
    while (1)
    {
      v42 = CMPhotoDNGRead16(v41, BYTE10(v554));
      if (v42 == 50778)
      {
        break;
      }

      v41 += 6;
      if (++v40 >= WORD4(v554))
      {
        v43 = 0;
        v44 = 0;
        v45 = 1;
        if (!WORD4(v554))
        {
          goto LABEL_64;
        }

        goto LABEL_46;
      }
    }

    Tag = _readTag(v41, BYTE10(v554));
    v44 = v50;
    v43 = WORD1(Tag);
    v45 = HIDWORD(Tag) != 1;
    if (!WORD4(v554))
    {
      goto LABEL_64;
    }

LABEL_46:
    v51 = 0;
    v52 = v554;
    while (1)
    {
      v53 = OUTLINED_FUNCTION_62_1();
      if (CMPhotoDNGRead16(v53, v54) == 50779)
      {
        break;
      }

      v52 += 12;
      if (++v51 >= WORD4(v554))
      {
        goto LABEL_64;
      }
    }

    v55 = OUTLINED_FUNCTION_62_1();
    v57 = _readTag(v55, v56);
    if (v42 == 50778)
    {
      v59 = HIDWORD(v57) != 1 || v45;
      if (!v59 && v43 <= 0xD)
      {
        v60 = v43 == 8 || v43 == 3;
        if (v60 && WORD1(v57) <= 0xDu && (WORD1(v57) == 8 || WORD1(v57) == 3))
        {
          LOWORD(values) = v44;
          LOWORD(valuePtr) = v58;
          v297 = CFNumberCreate(allocator, kCFNumberShortType, &values);
          v298 = CFNumberCreate(allocator, kCFNumberShortType, &valuePtr);
          v299 = OUTLINED_FUNCTION_76_0();
          CFDictionarySetValue(v299, v300, v301);
          CFDictionarySetValue(Mutable, *MEMORY[0x1E696D7C0], v298);
          if (v297)
          {
            CFRelease(v297);
          }

          if (v298)
          {
            CFRelease(v298);
          }
        }
      }
    }
  }

LABEL_64:
  v62 = _createFloatArrayFromRationals(&v553, 50728, 3);
  if (v62)
  {
    v65 = v62;
    v64 = &v553;
  }

  else
  {
    v63 = _createFloatArrayFromRationals(&v553, 50729, 2);
    v64 = &v553;
    if (!v63)
    {
      goto LABEL_69;
    }

    v65 = v63;
  }

  v66 = OUTLINED_FUNCTION_76_0();
  CFDictionarySetValue(v66, v67, v68);
  CFRelease(v65);
LABEL_69:
  _copyRationalTagToDict(&v553, 50730);
  _copyRationalTagToDict(&v553, 50731);
  _copyRationalTagToDict(&v553, 50732);
  _copyDNGDataTagToDict(&v553);
  _copyStringTagToDict(&v553, 50931, *MEMORY[0x1E696D7D8], Mutable);
  _copyStringTagToDict(&v553, 50932, *MEMORY[0x1E696D838], Mutable);
  if (WORD4(v554))
  {
    v69 = 0;
    v70 = *MEMORY[0x1E696D850];
    v71 = v554;
    while (1)
    {
      v72 = OUTLINED_FUNCTION_62_1();
      if (CMPhotoDNGRead16(v72, v73) == 50940)
      {
        break;
      }

      v71 += 12;
      if (++v69 >= WORD4(v554))
      {
        goto LABEL_84;
      }
    }

    v74 = OUTLINED_FUNCTION_62_1();
    v76 = _readTag(v74, v75);
    v78 = HIDWORD(v76);
    if (HIDWORD(v76) * tiffDataTypeToSize[WORD1(v76)] <= 4)
    {
      v79 = v71 + 8;
    }

    else
    {
      v79 = v553 + v77;
    }

    if ((v76 & 0xFFFF0000) == 0xB0000)
    {
      v80 = CFArrayCreateMutable(allocator, v78, MEMORY[0x1E695E9C0]);
      if (v80)
      {
        v81 = v80;
        if (v78)
        {
          while (1)
          {
            v82 = OUTLINED_FUNCTION_62_1();
            v84 = CMPhotoDNGReadFloat(v82, v83);
            if (CMPhotoCFArrayAppendFloat(v81, v84))
            {
              break;
            }

            v79 += 4;
            LODWORD(v78) = v78 - 1;
            if (!v78)
            {
              goto LABEL_82;
            }
          }
        }

        else
        {
LABEL_82:
          CFDictionarySetValue(Mutable, v70, v81);
        }

        CFRelease(v81);
      }
    }
  }

LABEL_84:
  _copyIntegerTagToDict(&v553, 51110);
  _copyStringTagToDict(&v553, 50936, *MEMORY[0x1E696D848], Mutable);
  _copyRationalTagToDict(&v553, 50935);
  _copyDoublesToDictAsArray(&v553);
  if (v33)
  {
    CFRelease(v33);
  }

  free(keys[0]);
  MutableCopy = v487;
  v488 = Mutable;
  v12 = cf;
  if (!WORD4(v554))
  {
    HIDWORD(v454) = 0;
    v498 = 0;
    goto LABEL_323;
  }

  while (1)
  {
    v85 = OUTLINED_FUNCTION_50_0();
    if (CMPhotoDNGRead16(v85, v86) == 254)
    {
      break;
    }

    OUTLINED_FUNCTION_29_5();
    if (!WORD4(v554))
    {
      goto LABEL_99;
    }
  }

  v87 = OUTLINED_FUNCTION_50_0();
  _readTag(v87, v88);
  if (v89 == 1)
  {
    v403 = _readPreviewTags(&v553, &v556);
    v90 = 0;
    if (!v403)
    {
      v91 = 1;
      goto LABEL_96;
    }

    CVPixelBufferFromDNGData = v403;
    LODWORD(v498) = 0;
    OUTLINED_FUNCTION_5_27();
LABEL_708:
    theArray = 0;
    v11 = 0;
    goto LABEL_614;
  }

  if (v89)
  {
    v90 = 0;
    v91 = 0;
    goto LABEL_96;
  }

  v401 = CMPhotoPixelFormatContainsAlpha(SHIDWORD(v542));
  v402 = _readRawImageTags(&v553, cf, v34, v401, &v550[1], v550, &v549[1], v549, &v548[1], v548, &v547, &v546, &v545 + 1, &v545, &v544, &v543);
  if (v402)
  {
    CVPixelBufferFromDNGData = v402;
    OUTLINED_FUNCTION_5_27();
    LODWORD(v498) = 0;
    goto LABEL_708;
  }

  v91 = 0;
  v551 = v553;
  v552 = v554;
  v90 = 1;
LABEL_96:
  v92 = v90;
  if (!WORD4(v554))
  {
LABEL_99:
    HIDWORD(v454) = 0;
    v498 = 0;
    goto LABEL_323;
  }

  while (1)
  {
    v93 = OUTLINED_FUNCTION_50_0();
    if (CMPhotoDNGRead16(v93, v94) == 330)
    {
      break;
    }

    OUTLINED_FUNCTION_29_5();
    if (!WORD4(v554))
    {
      goto LABEL_99;
    }
  }

  v95 = OUTLINED_FUNCTION_50_0();
  v97 = _readTag(v95, v96);
  v99 = HIDWORD(v97);
  if (SHIDWORD(v97) < 1)
  {
    HIDWORD(v454) = 0;
    v498 = 0;
    Mutable = v488;
LABEL_323:
    v473 = a9;
    v249 = [v12 allKeys];
    if (v249)
    {
      v11 = CFRetain(v249);
    }

    else
    {
      v11 = 0;
    }

    v256 = 0;
    if (v11)
    {
      goto LABEL_329;
    }

LABEL_330:
    for (i = 0; v256 < i; i = CFArrayGetCount(v11))
    {
      OUTLINED_FUNCTION_48_1();
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      OUTLINED_FUNCTION_48_1();
      FigCFArrayGetValueAtIndex();
      v258 = FigCFDictionaryGetValue();
      CFDictionaryAddValue(Mutable, ValueAtIndex, v258);
      ++v256;
      if (!v11)
      {
        goto LABEL_330;
      }

LABEL_329:
      ;
    }

    v523 = v544;
    cf = v12;
    if (!v544 || (v522 = v543) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_11();
      CVPixelBufferFromDNGData = FigSignalErrorAtGM();
      v477 = 0;
      goto LABEL_688;
    }

    v517 = v11;
    if (!v484)
    {
      v477 = 0;
      goto LABEL_456;
    }

    OUTLINED_FUNCTION_9_1();
    if (v60)
    {
      OUTLINED_FUNCTION_30_5();
      OUTLINED_FUNCTION_6();
      kdebug_trace();
      v522 = v543;
      v523 = v544;
    }

    LODWORD(v448) = v546;
    v260 = v550[1];
    v261 = v550[0];
    v537 = v549[0];
    value = v549[1];
    v262 = v548[1];
    keys[0] = &v551;
    HIDWORD(v511) = v545;
    HIDWORD(v448) = v547;
    HIDWORD(v505) = HIDWORD(v545);
    if (v545 == 32803)
    {
      if (HIDWORD(v545) != 1 && HIDWORD(v545) != 52546 && HIDWORD(v545) != 7)
      {
LABEL_435:
        v477 = 0;
        CVPixelBufferFromDNGData = 4294950744;
        goto LABEL_452;
      }

      if (v547 - 17 <= 0x33 && ((1 << (v547 - 17)) & 0x8000000020001) != 0)
      {
        if (v548[1])
        {
          goto LABEL_366;
        }

        goto LABEL_692;
      }
    }

    else
    {
      if (HIDWORD(v545) != 1 && HIDWORD(v545) != 7 && HIDWORD(v545) != 52546 && HIDWORD(v545) != 34892)
      {
        goto LABEL_435;
      }

      if (v547 == 17)
      {
        if (v548[1])
        {
          CMPhotoPixelFormatContainsAlpha(v548[1]);
LABEL_366:
          LODWORD(v505) = v262;
          v443 = CMPhotoAlignValue(v260, value);
          v268 = CMPhotoGetBytesPerPixelForPixelFormat(v262) * v443;
          v269 = CMPhotoAlignValue(v261, v537);
          v270 = v269 * v268;
          v278 = OUTLINED_FUNCTION_79_1(v269, v271, v272, v273, v274, v275, v276, v277, v404, v408, v412, v416, v420, v424, v428, v432, v436, v443, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, a9, v474, v477, v478, v481, v484, v487, v488, v12, v268, v495, v498, v499, v502, v505, v508, v511, v11, v522, v523, allocator);
          v280 = CFDataCreateMutable(v278, v279);
          v502 = v270;
          CFDataSetLength(v280, v270);
          v477 = v280;
          MutableBytePtr = CFDataGetMutableBytePtr(v280);
          v281 = HIDWORD(v448);
          MutableCopy = v487;
          if (v261 >= 1)
          {
            v531 = 0;
            theArraya = v260;
            v282 = 0;
            HIDWORD(v499) = HIDWORD(v505) == 52546;
            v474 = 2 * v260;
            v436 = v261;
            while (v260 < 1)
            {
LABEL_428:
              v531 += v537;
              if (v531 >= v261)
              {
                goto LABEL_429;
              }
            }

            v283 = 0;
            v495 = v531 * v440;
            v481 = v531 * v260;
            v284 = v282;
            if (v282 <= v448)
            {
              v282 = v448;
            }

            v508 = v282;
            v12 = HIDWORD(v505);
            while (1)
            {
              v285 = CMPhotoDNGRead32(&v523[v284], *(keys[0] + 26));
              v286 = CMPhotoDNGRead32((v522 + 4 * v284), *(keys[0] + 26));
              if (v284 == v508 || (v287 = v286, v286 + v285 > *(keys[0] + 2)))
              {
                CVPixelBufferFromDNGData = 4294950743;
                goto LABEL_449;
              }

              if (HIDWORD(v511) != 32803)
              {
                break;
              }

              if (v12 == 1)
              {
                OUTLINED_FUNCTION_9_1();
                if (v60)
                {
                  OUTLINED_FUNCTION_6();
                  kdebug_trace();
                }

                if (v537 >= 1)
                {
                  OUTLINED_FUNCTION_77_1();
                  do
                  {
                    if (value)
                    {
                      OUTLINED_FUNCTION_33_4();
                      do
                      {
                        *v64 = CMPhotoDNGRead16(v287, *(keys[0] + 26)) << v34;
                        v64 = (v64 + 2);
                        ++v287;
                        Mutable = (Mutable - 1);
                      }

                      while (Mutable);
                    }

                    ++v12;
                  }

                  while (v12 != v537);
                }

LABEL_425:
                OUTLINED_FUNCTION_9_1();
                v64 = &v553;
                Mutable = v488;
                v260 = theArraya;
                v12 = HIDWORD(v505);
                if (v60)
                {
                  OUTLINED_FUNCTION_30_5();
                  OUTLINED_FUNCTION_6();
                  kdebug_trace();
                }

                goto LABEL_403;
              }

              if (v12 == 52546 || v12 == 7)
              {
                v289 = *keys[0];
                OUTLINED_FUNCTION_9_1();
                if (v60)
                {
                  OUTLINED_FUNCTION_30_5();
                  OUTLINED_FUNCTION_6();
                  kdebug_trace();
                }

                CVPixelBufferFromDNGData = CMPhotoDNGDecompressRawTile(v289 + v285, v287, value, v537, &MutableBytePtr[2 * v283 + 2 * v481], v502 - 2 * (v283 + v481), v474, v34, SBYTE4(v499));
                OUTLINED_FUNCTION_9_1();
                if (v60)
                {
                  OUTLINED_FUNCTION_30_5();
                  OUTLINED_FUNCTION_42();
                  kdebug_trace();
                }

                goto LABEL_402;
              }

LABEL_403:
              v283 += value;
              ++v284;
              if (v283 >= v260)
              {
                v282 = v284;
                MutableCopy = v487;
                v11 = v517;
                v261 = v436;
                v281 = HIDWORD(v448);
                goto LABEL_428;
              }
            }

            if (v12 == 52546 || v12 == 7 || v12 == 34892)
            {
              BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v505);
              v293 = *keys[0];
              OUTLINED_FUNCTION_9_1();
              if (v60)
              {
                OUTLINED_FUNCTION_30_5();
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }

              CVPixelBufferFromDNGData = CMPhotoDNGDecompressLinearRawTile(v293 + v285, v287, &MutableBytePtr[BytesPerPixelForPixelFormat * (v283 + v495)], v502 - BytesPerPixelForPixelFormat * (v283 + v495), v492, v505, value, v537, SBYTE4(v499));
              OUTLINED_FUNCTION_9_1();
              if (v60)
              {
                OUTLINED_FUNCTION_30_5();
                OUTLINED_FUNCTION_42();
                kdebug_trace();
              }

              v260 = theArraya;
LABEL_402:
              v12 = HIDWORD(v505);
              if (CVPixelBufferFromDNGData)
              {
                goto LABEL_449;
              }

              goto LABEL_403;
            }

            if (v12 != 1)
            {
              CVPixelBufferFromDNGData = 4294950744;
              goto LABEL_449;
            }

            OUTLINED_FUNCTION_9_1();
            if (v60)
            {
              OUTLINED_FUNCTION_6();
              kdebug_trace();
            }

            if (v537 >= 1)
            {
              OUTLINED_FUNCTION_77_1();
              do
              {
                if (value)
                {
                  OUTLINED_FUNCTION_33_4();
                  do
                  {
                    *v64 = CMPhotoDNGRead16(v287, *(keys[0] + 26));
                    v64 = (v64 + 2);
                    ++v287;
                    Mutable = (Mutable - 1);
                  }

                  while (Mutable);
                }

                ++v12;
              }

              while (v12 != v537);
            }

            goto LABEL_425;
          }

LABEL_429:
          if (v281 == 68 || v281 == 34)
          {
            *&values = 0;
            v294 = CMPhotoGetBytesPerPixelForPixelFormat(v505);
            v295 = CMPhotoInterleaveCFAData(v260, v261, v294, v492, v281, v477, &values);
            if (v295)
            {
              CVPixelBufferFromDNGData = v295;
LABEL_449:
              if (v477)
              {
                CFRelease(v477);
              }

              v477 = 0;
              MutableCopy = v487;
              v11 = v517;
            }

            else
            {
              if (v477)
              {
                CFRelease(v477);
              }

              CVPixelBufferFromDNGData = 0;
              v477 = values;
            }
          }

          else
          {
            CVPixelBufferFromDNGData = 0;
          }

LABEL_452:
          OUTLINED_FUNCTION_9_1();
          if (v60)
          {
            OUTLINED_FUNCTION_30_5();
            OUTLINED_FUNCTION_42();
            i = kdebug_trace();
          }

          if (!CVPixelBufferFromDNGData)
          {
LABEL_456:
            if (WORD4(v554))
            {
              v12 = 50727;
              while (1)
              {
                v302 = OUTLINED_FUNCTION_50_0();
                if (CMPhotoDNGRead16(v302, v303) == 50727)
                {
                  break;
                }

                OUTLINED_FUNCTION_29_5();
                if (!WORD4(v554))
                {
                  goto LABEL_474;
                }
              }

              v304 = OUTLINED_FUNCTION_50_0();
              v306 = _readTag(v304, v305);
              v308 = HIDWORD(v306);
              if ((v306 & 0xFFFF0000) != 0x50000 || v308 != 3)
              {
                goto LABEL_655;
              }

              v310 = v553 + v307;
              *keys = *v310;
              *&v568 = *(v310 + 16);
              if (BYTE10(v552) == 1)
              {
                for (j = 0; j != 3; ++j)
                {
                  keys[j] = vrev32_s8(keys[j]);
                }
              }

              v312 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
              v313 = 0;
              do
              {
                v314 = keys[v313];
                v315 = 0.0;
                if (HIDWORD(v314))
                {
                  v315 = OUTLINED_FUNCTION_56_1(v314);
                }

                [v312 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v315)}];
                ++v313;
              }

              while (v308 != v313);
              i = [(__CFDictionary *)Mutable setValue:v312 forKey:*MEMORY[0x1E696D770]];
              MutableCopy = v487;
            }

LABEL_474:
            if (!WORD4(v552))
            {
LABEL_478:
              v12 = 0;
              goto LABEL_508;
            }

            v316 = 0;
            v317 = v552;
            v12 = 50712;
            while (1)
            {
              i = CMPhotoDNGRead16(v317, BYTE10(v552));
              if (i == 50712)
              {
                break;
              }

              v317 += 6;
              if (++v316 >= WORD4(v552))
              {
                goto LABEL_478;
              }
            }

            v318 = _readTag(v317, BYTE10(v552));
            v320 = HIDWORD(v318);
            if (HIDWORD(v318) * tiffDataTypeToSize[WORD1(v318)] <= 4)
            {
              v321 = v317 + 4;
            }

            else
            {
              v321 = (v551 + v319);
            }

            v322 = v548[1] == 1647589490 || v548[1] == 1815491698;
            if (!v322 || (v318 & 0xFFFF0000) != 0x30000)
            {
LABEL_655:
              OUTLINED_FUNCTION_10_23();
              theArray = 0;
              CVPixelBufferFromDNGData = 4294950739;
LABEL_656:
              v11 = v517;
              goto LABEL_614;
            }

            v12 = 2 * v320;
            v323 = malloc_type_malloc(2 * v320, 0x1000040BDFB0063uLL);
            if (v323)
            {
              v523 = v323;
              memmove(v323, v321, 2 * v320);
              if (v320 && (BYTE10(v552) & 1) != 0)
              {
                v324 = v523;
                v325 = v320;
                do
                {
                  *v324 = bswap32(*v324) >> 16;
                  v324 = (v324 + 2);
                  --v325;
                }

                while (v325);
              }

              if (HIBYTE(v540))
              {
                v326 = [MEMORY[0x1E695DF70] arrayWithCapacity:v320];
                if (v320)
                {
                  v327 = v320;
                  v328 = v523;
                  do
                  {
                    v329 = *v328;
                    v328 = (v328 + 2);
                    [v326 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v329)}];
                    --v327;
                  }

                  while (v327);
                }

                [OUTLINED_FUNCTION_76_0() setValue:? forKey:?];
                MutableCopy = v487;
              }

              v12 = v523;
              if (v484)
              {
                CFDataGetMutableBytePtr(v477);
                if (v549[0] * v549[1] * v546)
                {
                  do
                  {
                    OUTLINED_FUNCTION_55_1();
                    *(v330 - 4) = v331;
                    OUTLINED_FUNCTION_55_1();
                    *(v332 - 2) = v333;
                    OUTLINED_FUNCTION_55_1();
                    *v334 = v335;
                  }

                  while (v336 != 1);
                }
              }

              v337 = CFArrayCreateMutable(allocator, 3, MEMORY[0x1E695E9C0]);
              if (v337)
              {
                v338 = v337;
                v339 = 3;
                do
                {
                  appended = FigCFArrayAppendInt32();
                  if (appended)
                  {
                    CVPixelBufferFromDNGData = appended;
                    OUTLINED_FUNCTION_23_6();
                    theArray = 0;
                    goto LABEL_656;
                  }

                  --v339;
                }

                while (v339);
                v341 = CFDictionaryGetValue(Mutable, @"BitsPerSample");
                if (v341)
                {
                  CFDictionarySetValue(Mutable, @"OriginalBitsPerSample", v341);
                }

                CFDictionaryRemoveValue(Mutable, @"BitsPerSample");
                CFDictionarySetValue(Mutable, @"BitsPerSample", v338);
                CFRelease(v338);
LABEL_508:
                v11 = v517;
                v523 = v12;
                if (!v473 || !v498)
                {
                  v12 = 0;
                  if (v478)
                  {
                    value = 0;
                    v346 = 0;
                    theArray = 0;
                    if (v498 >= 1)
                    {
                      v346 = 0;
                      v387 = v498;
                      v388 = v565;
                      do
                      {
                        if (*v388)
                        {
                          v346 += CFDataGetLength(*v388);
                        }

                        v388 += 8;
                        --v387;
                      }

                      while (v387);
                      OUTLINED_FUNCTION_23_6();
                      theArray = 0;
                    }
                  }

                  else
                  {
                    value = 0;
                    v346 = 0;
                    theArray = 0;
                  }

                  goto LABEL_595;
                }

                v342 = OUTLINED_FUNCTION_79_1(i, v250, MEMORY[0x1E695E9C0], v251, v252, v253, v254, v255, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v473, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v517, v522, v12, allocator);
                v345 = CFArrayCreateMutable(v342, v343, v344);
                if (v345)
                {
                  theArray = v345;
                  if (v498 >= 1)
                  {
                    v346 = 0;
                    value = 0;
                    v12 = 0;
                    v347 = v565;
                    v348 = v498;
                    v349 = *MEMORY[0x1E695F050];
                    v350 = *(MEMORY[0x1E695F050] + 8);
                    v351 = *(MEMORY[0x1E695F050] + 16);
                    v352 = *(MEMORY[0x1E695F050] + 24);
                    v353 = *MEMORY[0x1E695F060];
                    v354 = *(MEMORY[0x1E695F060] + 8);
                    v355 = v565;
                    while (1)
                    {
                      if (*v355)
                      {
                        v346 += CFDataGetLength(*v355);
                      }

                      OUTLINED_FUNCTION_9_1();
                      if (v60)
                      {
                        OUTLINED_FUNCTION_30_5();
                        OUTLINED_FUNCTION_6();
                        kdebug_trace();
                      }

                      v560 = 0;
                      v561 = 0;
                      v558 = 0;
                      v559 = 0;
                      v557 = 0;
                      v356 = *(v355 + 1);
                      if (v356)
                      {
                        v357 = CMPhotoAuxiliaryImageMetadataCreateFromXMPData(allocatorc, v356, &v557, &v560, 0, &v559);
                        if (v357)
                        {
                          v367 = v357;
                          v368 = 0;
                          v11 = v518;
                          goto LABEL_552;
                        }
                      }

                      v358 = *v355;
                      keys[0] = 0;
                      valuePtr = 0;
                      *&values = 0;
                      v359 = CMPhotoDecompressionSessionCreate(allocatorc, 0, &values);
                      if (v359)
                      {
                        v367 = v359;
                        v368 = 0;
                        v361 = 0;
                        v11 = v518;
                      }

                      else
                      {
                        v360 = CFDictionaryCreateMutable(allocatorc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        v361 = v360;
                        v11 = v518;
                        if (v360)
                        {
                          Container = CMPhotoCFDictionarySetInt(v360, @"OutputPixelFormat", 1278226488);
                          if (Container || (Container = CMPhotoCFDictionarySetInt(v361, @"AccelerationMode", 1), Container) || (Container = CMPhotoDecompressionSessionCreateContainer(values, 0, v358, 0, &valuePtr), Container))
                          {
                            v367 = Container;
LABEL_577:
                            v368 = 0;
                            goto LABEL_527;
                          }

                          CMPhotoDecompressionContainerCreateImageForIndex(valuePtr, 0, v361, 2, keys, v363, v364, v365, v407, v411, v415, v419, v423, v427, v431, v435, v439, v444);
                          v367 = v366;
                          v368 = keys[0];
                          if (!v366)
                          {
                            keys[0] = 0;
                            goto LABEL_527;
                          }

                          if (keys[0])
                          {
                            CFRelease(keys[0]);
                            goto LABEL_577;
                          }
                        }

                        else
                        {
                          v368 = 0;
                          v367 = 4294950745;
                        }
                      }

LABEL_527:
                      if (values)
                      {
                        CFRelease(values);
                      }

                      if (valuePtr)
                      {
                        CFRelease(valuePtr);
                      }

                      if (v361)
                      {
                        CFRelease(v361);
                      }

                      if (!v367)
                      {
                        if (v559)
                        {
                          LODWORD(keys[0]) = 0;
                          LODWORD(values) = 0;
                          if (!FigCFDictionaryGetFloatIfPresent() || !FigCFDictionaryGetFloatIfPresent())
                          {
                            goto LABEL_584;
                          }

                          v369 = *(v355 + 44);
                          v370 = 0.0;
                          if (HIDWORD(v369))
                          {
                            v370 = OUTLINED_FUNCTION_56_1(v369);
                          }

                          if (vabdd_f64(v370, *&values) >= 0.00000999999975)
                          {
                            goto LABEL_584;
                          }

                          v371 = *(v355 + 52);
                          v372 = 0.0;
                          if (HIDWORD(v371))
                          {
                            v372 = OUTLINED_FUNCTION_56_1(v371);
                          }

                          if (vabdd_f64(v372, *keys) < 0.00000999999975 && (LODWORD(valuePtr) = 0, FigCFDictionaryGetIntIfPresent()))
                          {
                            v373 = OUTLINED_FUNCTION_17();
                            FractionalPixelBuffer = CMPhotoCreateFractionalPixelBuffer(v373, v374, v375, 0, v376, v377);
                            if (!FractionalPixelBuffer)
                            {
                              v12 = v561;
LABEL_551:
                              v367 = 0;
                              value = v560;
                              v560 = 0;
                              v561 = 0;
                              goto LABEL_552;
                            }
                          }

                          else
                          {
LABEL_584:
                            fig_log_get_emitter();
                            OUTLINED_FUNCTION_11();
                            FractionalPixelBuffer = FigSignalErrorAtGM();
                          }
                        }

                        else
                        {
                          CVPixelBufferGetPixelFormatType(v368);
                          OUTLINED_FUNCTION_53_1();
                          if (v60)
                          {
                            v12 = v368;
                            v368 = 0;
                            goto LABEL_551;
                          }

                          OUTLINED_FUNCTION_82_0();
                          FractionalPixelBuffer = CMPhotoScaleAndRotateSessionTransformForSize(0, v368, 1, 1, 1278226488, 0, 0, 1, v349, v350, v351, v352, v353, v354, v407, v411, v415);
                          if (!FractionalPixelBuffer)
                          {
                            v12 = v558;
                            v558 = 0;
                            goto LABEL_551;
                          }
                        }

                        v367 = FractionalPixelBuffer;
                      }

LABEL_552:
                      if (v559)
                      {
                        CFRelease(v559);
                      }

                      if (v561)
                      {
                        CFRelease(v561);
                      }

                      if (v560)
                      {
                        CFRelease(v560);
                      }

                      if (v368)
                      {
                        CFRelease(v368);
                      }

                      if (v558)
                      {
                        CFRelease(v558);
                      }

                      OUTLINED_FUNCTION_9_1();
                      if (v60)
                      {
                        OUTLINED_FUNCTION_30_5();
                        OUTLINED_FUNCTION_42();
                        kdebug_trace();
                      }

                      if (v367)
                      {
                        CVPixelBufferFromDNGData = v367;
                        goto LABEL_681;
                      }

                      CGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType = CMPhotoGetCGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType(*(v355 + 7));
                      if (CGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType)
                      {
                        v380 = CGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType;
                        v381 = OUTLINED_FUNCTION_96();
                        v383 = CFDictionaryCreateMutable(v381, v382, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!v383)
                        {
                          CVPixelBufferFromDNGData = 4294950745;
                          goto LABEL_681;
                        }

                        v384 = v383;
                        CFDictionarySetValue(v383, @"AuxPixelBuffer", v12);
                        if (v12)
                        {
                          CFRelease(v12);
                        }

                        v12 = value;
                        CFDictionarySetValue(v384, @"AuxMetadata", value);
                        if (value)
                        {
                          CFRelease(value);
                        }

                        CFDictionarySetValue(v384, @"AuxImageType", v380);
                        CFArrayAppendValue(theArray, v384);
                        CFRelease(v384);
                        OUTLINED_FUNCTION_23_6();
                      }

                      else
                      {
                        v385 = *(v355 + 2);
                        SystemEncoding = CFStringGetSystemEncoding();
                        CFStringGetCStringPtr(v385, SystemEncoding);
                      }

                      v355 += 64;
                      v347 += 64;
                      if (!--v348)
                      {
                        MutableCopy = v487;
                        Mutable = v488;
                        goto LABEL_595;
                      }
                    }
                  }

                  OUTLINED_FUNCTION_23_6();
                  v346 = 0;
LABEL_595:
                  FigCFDictionarySetInt();
                  FigCFDictionarySetInt();
                  FigCFDictionarySetInt();
                  if (v546 > 1)
                  {
                    FigCFDictionarySetInt();
                    FigCFDictionarySetInt();
                  }

                  if (v451)
                  {
                    *v451 = v545 == 34892;
                  }

                  v389 = v478;
                  v391 = v457;
                  v390 = v460;
                  if (v484 && (OUTLINED_FUNCTION_91_1(), (v392 & 1) != 0))
                  {
                    OUTLINED_FUNCTION_9_1();
                    if (v60)
                    {
                      OUTLINED_FUNCTION_30_5();
                      OUTLINED_FUNCTION_6();
                      kdebug_trace();
                    }

                    CVPixelBufferFromDNGData = _createCVPixelBufferFromDNGData(v477, v550[1], v550[0], v549[1], v549[0], 0, v548[1], v548[0], SHIDWORD(v542), v484);
                    OUTLINED_FUNCTION_9_1();
                    if (v60)
                    {
                      OUTLINED_FUNCTION_30_5();
                      OUTLINED_FUNCTION_42();
                      kdebug_trace();
                    }

                    if (CVPixelBufferFromDNGData)
                    {
                      goto LABEL_614;
                    }

                    CVBufferSetAttachment(*v484, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
                    keys[0] = 0;
                    CMPhotoCFDictionaryGetCFValueIfPresent();
                    if (keys[0])
                    {
                      LODWORD(values) = 0;
                      LODWORD(valuePtr) = 0;
                      LODWORD(v561) = v550[0];
                      LODWORD(v560) = v550[1];
                      if (!FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || v561 <= values || !FigCFArrayGetInt32AtIndex() || v560 <= valuePtr)
                      {
                        CVPixelBufferFromDNGData = 4294950740;
                        goto LABEL_614;
                      }

                      CMPhotoSetPixelBufferCLAP(*v484, valuePtr, values, v560 - valuePtr, v561 - values, 1, 1);
                    }

                    v389 = v478;
                    v390 = v460;
                    if (v457)
                    {
                      goto LABEL_602;
                    }
                  }

                  else if (v391)
                  {
LABEL_602:
                    OUTLINED_FUNCTION_91_1();
                    if (v394)
                    {
                      *v393 = MutableCopy;
                      MutableCopy = 0;
                    }
                  }

                  if (v390)
                  {
                    *v390 = v556;
                    v556 = 0;
                  }

                  if (v473)
                  {
                    *v473 = theArray;
                    theArray = 0;
                  }

                  if (v466)
                  {
                    Length = v556;
                    if (v556)
                    {
                      Length = CFDataGetLength(v556);
                    }

                    *v466 = Length;
                    v389 = v478;
                  }

                  CVPixelBufferFromDNGData = 0;
                  if (v389)
                  {
                    *v389 = v346;
                  }

                  goto LABEL_614;
                }

                OUTLINED_FUNCTION_23_6();
                theArray = 0;
LABEL_691:
                CVPixelBufferFromDNGData = 4294950745;
                goto LABEL_614;
              }

              OUTLINED_FUNCTION_23_6();
            }

            else
            {
              OUTLINED_FUNCTION_10_23();
            }

            theArray = 0;
            CVPixelBufferFromDNGData = 4294950745;
            goto LABEL_656;
          }

LABEL_688:
          OUTLINED_FUNCTION_10_23();
          theArray = 0;
          goto LABEL_614;
        }

LABEL_692:
        v477 = 0;
        CVPixelBufferFromDNGData = 4294950746;
        goto LABEL_452;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_11();
    CVPixelBufferFromDNGData = FigSignalErrorAtGM();
    v477 = 0;
    goto LABEL_452;
  }

  v100 = v98;
  v101 = 0;
  v102 = 0;
  LODWORD(value) = 0;
  v103 = v98;
  while (1)
  {
    v498 = v102;
    v12 = v100;
    if (v99 != 1)
    {
      v12 = CMPhotoDNGRead32((v553 + v103 + 4 * v101), BYTE10(v554));
    }

    values = 0u;
    v564 = 0u;
    v104 = _cmphotoDNGReaderInit(&values, v555);
    if (v104)
    {
      goto LABEL_705;
    }

    v104 = _cmphotoDNGReaderOpenIFD(&values, v12);
    if (v104)
    {
      goto LABEL_705;
    }

    if (!WORD4(v564))
    {
      goto LABEL_146;
    }

    OUTLINED_FUNCTION_25_7();
    while (1)
    {
      v105 = OUTLINED_FUNCTION_17_13();
      if (CMPhotoDNGRead16(v105, v106) == 254)
      {
        break;
      }

      OUTLINED_FUNCTION_1_31();
      if (v107)
      {
        goto LABEL_146;
      }
    }

    v108 = OUTLINED_FUNCTION_17_13();
    _readTag(v108, v109);
    if (!v110)
    {
      break;
    }

    v102 = v498;
    switch(v110)
    {
      case 0x10004:
        if (v498 >= 16)
        {
          goto LABEL_704;
        }

        if (!WORD4(v564))
        {
          goto LABEL_225;
        }

        v12 = 0;
        OUTLINED_FUNCTION_72_1();
        while (1)
        {
          v117 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v117, v118) == 254)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_225;
          }
        }

        v144 = OUTLINED_FUNCTION_17_13();
        _readTag(v144, v145);
        if (v146 != 65540 || !WORD4(v564))
        {
          goto LABEL_225;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v147 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v147, v148) == 259)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_186;
          }
        }

        v168 = OUTLINED_FUNCTION_17_13();
        _readTag(v168, v169);
        if (v170 != 7)
        {
          v149 = WORD4(v564);
LABEL_186:
          if (!v149)
          {
            goto LABEL_225;
          }

          OUTLINED_FUNCTION_25_7();
          while (1)
          {
            v171 = OUTLINED_FUNCTION_17_13();
            if (CMPhotoDNGRead16(v171, v172) == 259)
            {
              break;
            }

            OUTLINED_FUNCTION_1_31();
            if (v107)
            {
              goto LABEL_196;
            }
          }

          v174 = OUTLINED_FUNCTION_17_13();
          _readTag(v174, v175);
          if (v176 != 34892)
          {
            v173 = WORD4(v564);
LABEL_196:
            if (!v173)
            {
              goto LABEL_225;
            }

            OUTLINED_FUNCTION_25_7();
            while (1)
            {
              v177 = OUTLINED_FUNCTION_17_13();
              if (CMPhotoDNGRead16(v177, v178) == 259)
              {
                break;
              }

              OUTLINED_FUNCTION_1_31();
              if (v107)
              {
                goto LABEL_225;
              }
            }

            v185 = OUTLINED_FUNCTION_17_13();
            _readTag(v185, v186);
            if (v187 != 52546)
            {
              goto LABEL_225;
            }
          }
        }

        if (!WORD4(v564))
        {
          goto LABEL_225;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v188 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v188, v189) == 277)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_225;
          }
        }

        v190 = OUTLINED_FUNCTION_17_13();
        _readTag(v190, v191);
        if (v192 != 1 || !WORD4(v564))
        {
          goto LABEL_225;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v193 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v193, v194) == 258)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_225;
          }
        }

        v202 = OUTLINED_FUNCTION_17_13();
        _readTag(v202, v203);
        if (v204 != 8)
        {
          goto LABEL_225;
        }

        if (!WORD4(v564))
        {
LABEL_241:
          v12 = 0;
          goto LABEL_253;
        }

        OUTLINED_FUNCTION_25_7();
        while (1)
        {
          v205 = OUTLINED_FUNCTION_17_13();
          if (CMPhotoDNGRead16(v205, v206) == 700)
          {
            break;
          }

          OUTLINED_FUNCTION_1_31();
          if (v107)
          {
            goto LABEL_241;
          }
        }

        v213 = OUTLINED_FUNCTION_17_13();
        v215 = _readTag(v213, v214);
        if ((v215 & 0xFFFF0000) != 0x10000)
        {
LABEL_225:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_11();
          CVPixelBufferFromDNGData = FigSignalErrorAtGM();
          goto LABEL_226;
        }

        v12 = OUTLINED_FUNCTION_68_1(v216, HIDWORD(v215), values, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
        if (!v12)
        {
          goto LABEL_703;
        }

LABEL_253:
        v217 = _copyStringTag(&values, 52526);
        if (!v217)
        {
          v217 = _copyStringTag(&values, 51182);
        }

        v534 = v217;
        if (WORD4(v564))
        {
          theArray = v12;
          OUTLINED_FUNCTION_25_7();
          while (1)
          {
            v218 = OUTLINED_FUNCTION_17_13();
            if (CMPhotoDNGRead16(v218, v219) == 273)
            {
              break;
            }

            OUTLINED_FUNCTION_1_31();
            if (v107)
            {
              goto LABEL_272;
            }
          }

          v220 = OUTLINED_FUNCTION_17_13();
          v223 = _readTag(v220, v221) >> 32 != 1 || v222 == 0;
          if (!v223 && WORD4(v564))
          {
            v224 = v222;
            while (1)
            {
              v225 = OUTLINED_FUNCTION_17_13();
              if (CMPhotoDNGRead16(v225, v226) == 279)
              {
                break;
              }

              OUTLINED_FUNCTION_1_31();
              if (v107)
              {
                goto LABEL_271;
              }
            }

            v233 = OUTLINED_FUNCTION_17_13();
            _readTag(v233, v234);
            if (v235 >= 5 && v235 + v224 <= DWORD2(values))
            {
              v236 = CFDataCreate(allocator, (values + v224), v235);
              if (v236)
              {
                *v536 = v236;
                *(v536 + 8) = v12;
                *(v536 + 16) = v534;
                *(v536 + 24) = 0x400000000;
                *(v536 + 32) = 0u;
                *(v536 + 48) = 0u;
                v64 = &v553;
                goto LABEL_290;
              }

              CVPixelBufferFromDNGData = 4294950745;
              v64 = &v553;
              if (!v12)
              {
LABEL_274:
                if (v534)
                {
                  CFRelease(v534);
                }

LABEL_226:
                v196 = v498;
                if (CVPixelBufferFromDNGData)
                {
                  goto LABEL_706;
                }

                goto LABEL_291;
              }

LABEL_273:
              CFRelease(v12);
              goto LABEL_274;
            }
          }

LABEL_271:
          v64 = &v553;
        }

LABEL_272:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_11();
        CVPixelBufferFromDNGData = FigSignalErrorAtGM();
        if (!v12)
        {
          goto LABEL_274;
        }

        goto LABEL_273;
      case 8:
        if (v498 >= 16)
        {
          goto LABEL_704;
        }

        v570 = 0u;
        v569 = 0u;
        v568 = 0u;
        *keys = 0u;
        if (WORD4(v564))
        {
          OUTLINED_FUNCTION_72_1();
          while (1)
          {
            v119 = OUTLINED_FUNCTION_17_13();
            if (CMPhotoDNGRead16(v119, v120) == 254)
            {
              break;
            }

            OUTLINED_FUNCTION_1_31();
            if (v107)
            {
              v12 = 0;
              goto LABEL_157;
            }
          }

          v150 = OUTLINED_FUNCTION_17_13();
          _readTag(v150, v151);
          v121 = WORD4(v564);
          v12 = v152 == 8;
LABEL_157:
          if (v121)
          {
            v153 = 0;
            v154 = v564;
            while (1)
            {
              v155 = OUTLINED_FUNCTION_17_13();
              if (CMPhotoDNGRead16(v155, v156) == 259)
              {
                break;
              }

              v154 += 12;
              if (++v153 >= WORD4(v564))
              {
                v157 = 0;
                goto LABEL_164;
              }
            }

            v158 = OUTLINED_FUNCTION_17_13();
            _readTag(v158, v159);
LABEL_164:
            v64 = &v553;
          }

          else
          {
            v157 = 0;
          }

          if (v12)
          {
            v160 = v157 == 7 || v157 == 52546;
            if (v160 && WORD4(v564))
            {
              OUTLINED_FUNCTION_25_7();
              while (1)
              {
                v161 = OUTLINED_FUNCTION_17_13();
                if (CMPhotoDNGRead16(v161, v162) == 277)
                {
                  break;
                }

                OUTLINED_FUNCTION_1_31();
                if (v107)
                {
                  goto LABEL_284;
                }
              }

              v163 = OUTLINED_FUNCTION_17_13();
              _readTag(v163, v164);
              if (v165 == 1)
              {
                if (WORD4(v564))
                {
                  OUTLINED_FUNCTION_25_7();
                  while (1)
                  {
                    v166 = OUTLINED_FUNCTION_17_13();
                    if (CMPhotoDNGRead16(v166, v167) == 51177)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_1_31();
                    if (v107)
                    {
                      goto LABEL_284;
                    }
                  }

                  v179 = OUTLINED_FUNCTION_17_13();
                  _readTag(v179, v180);
                  if ((v181 - 3) > 0xFFFFFFFD)
                  {
                    v182 = v181 == 1 ? 2 : 1;
                    HIDWORD(v568) = v182;
                    if (WORD4(v564))
                    {
                      OUTLINED_FUNCTION_25_7();
                      while (1)
                      {
                        v183 = OUTLINED_FUNCTION_17_13();
                        if (CMPhotoDNGRead16(v183, v184) == 51180)
                        {
                          break;
                        }

                        OUTLINED_FUNCTION_1_31();
                        if (v107)
                        {
                          goto LABEL_284;
                        }
                      }

                      v197 = OUTLINED_FUNCTION_17_13();
                      _readTag(v197, v198);
                      if (v199 == 1)
                      {
                        if (WORD4(v564))
                        {
                          OUTLINED_FUNCTION_25_7();
                          while (1)
                          {
                            v200 = OUTLINED_FUNCTION_17_13();
                            if (CMPhotoDNGRead16(v200, v201) == 51181)
                            {
                              break;
                            }

                            OUTLINED_FUNCTION_1_31();
                            if (v107)
                            {
                              goto LABEL_284;
                            }
                          }

                          v207 = OUTLINED_FUNCTION_17_13();
                          _readTag(v207, v208);
                          if (v209 == 1)
                          {
                            if (!_getTagRational(&values, 51178, (&v569 + 12)) || !_getTagRational(&values, 51179, (&v570 + 4)))
                            {
                              goto LABEL_305;
                            }

                            v64 = &v553;
                            if (WORD4(v564))
                            {
                              OUTLINED_FUNCTION_25_7();
                              while (1)
                              {
                                v210 = OUTLINED_FUNCTION_17_13();
                                if (CMPhotoDNGRead16(v210, v211) == 700)
                                {
                                  break;
                                }

                                OUTLINED_FUNCTION_1_31();
                                if (v107)
                                {
                                  goto LABEL_279;
                                }
                              }

                              v227 = OUTLINED_FUNCTION_17_13();
                              v229 = _readTag(v227, v228);
                              if ((v229 & 0xFFFF0000) != 0x10000)
                              {
                                goto LABEL_305;
                              }

                              v12 = &v553;
                              keys[1] = OUTLINED_FUNCTION_68_1(v230, HIDWORD(v229), values, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
                              if (!keys[1])
                              {
                                CVPixelBufferFromDNGData = 4294950745;
                                v64 = &v553;
                                goto LABEL_287;
                              }

                              v212 = WORD4(v564);
LABEL_279:
                              v64 = &v553;
                              if (v212)
                              {
                                OUTLINED_FUNCTION_25_7();
                                while (1)
                                {
                                  v231 = OUTLINED_FUNCTION_17_13();
                                  if (CMPhotoDNGRead16(v231, v232) == 273)
                                  {
                                    break;
                                  }

                                  OUTLINED_FUNCTION_1_31();
                                  if (v107)
                                  {
                                    goto LABEL_284;
                                  }
                                }

                                v237 = OUTLINED_FUNCTION_17_13();
                                v239 = _readTag(v237, v238);
                                v534 = v240;
                                if (HIDWORD(v239) == 1 && v240 != 0)
                                {
                                  if (WORD4(v564))
                                  {
                                    OUTLINED_FUNCTION_25_7();
                                    while (1)
                                    {
                                      v242 = OUTLINED_FUNCTION_17_13();
                                      if (CMPhotoDNGRead16(v242, v243) == 279)
                                      {
                                        break;
                                      }

                                      OUTLINED_FUNCTION_1_31();
                                      if (v107)
                                      {
                                        goto LABEL_305;
                                      }
                                    }

                                    v244 = OUTLINED_FUNCTION_17_13();
                                    _readTag(v244, v245);
                                    if (v246 > 4 && v246 + v534 <= DWORD2(values))
                                    {
                                      keys[0] = CFDataCreate(allocator, (values + v534), v246);
                                      if (keys[0])
                                      {
                                        CVPixelBufferFromDNGData = 0;
                                        v64 = &v553;
                                        v247 = v568;
                                        *v536 = *keys;
                                        *(v536 + 16) = v247;
                                        v248 = v570;
                                        *(v536 + 32) = v569;
                                        *(v536 + 48) = v248;
                                        keys[1] = 0;
                                        keys[0] = 0;
                                        goto LABEL_285;
                                      }

                                      CVPixelBufferFromDNGData = 4294950745;
LABEL_306:
                                      v64 = &v553;
LABEL_285:
                                      if (keys[1])
                                      {
                                        CFRelease(keys[1]);
                                      }

LABEL_287:
                                      if (keys[0])
                                      {
                                        CFRelease(keys[0]);
                                      }

                                      if (CVPixelBufferFromDNGData)
                                      {
                                        goto LABEL_706;
                                      }

LABEL_290:
                                      v196 = v498;
LABEL_291:
                                      v102 = (v196 + 1);
                                      goto LABEL_147;
                                    }
                                  }

LABEL_305:
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_11();
                                  CVPixelBufferFromDNGData = FigSignalErrorAtGM();
                                  goto LABEL_306;
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
            }
          }
        }

LABEL_284:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_11();
        CVPixelBufferFromDNGData = FigSignalErrorAtGM();
        goto LABEL_285;
      case 1:
        if (v91 == v540)
        {
          v104 = _readPreviewTags(&values, &v556);
          v102 = v498;
          if (v104)
          {
            goto LABEL_705;
          }
        }

        ++v91;
        goto LABEL_147;
    }

    if (v110 == 16 && BYTE6(v539))
    {
      v133 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      v134 = OUTLINED_FUNCTION_79_1(v133, v110, v111, v112, v113, v114, v115, v116, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
      if (!CFDictionaryCreateMutable(v134, v135, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
      {
        goto LABEL_702;
      }

      v136 = CMPhotoPixelFormatContainsAlpha(SHIDWORD(v542));
      v104 = OUTLINED_FUNCTION_22_7(v136, v137, v138, v139, v140, v141, v142, v143, v406, v410, v414, v418, v422, v426, v430, v434, v438, v442, v447, v450, v453, v456, v459, v462, v463, v464, v465, v468, v469, v472, v476, v477, v480, v483, v486, v487, v488, cfb, v494, v497, v498, v501, v504, v507, v510, v513, v516, v521, v523, allocatorb, v528, v529, v530, theArray, v534, v536, value, v539, v540, v541, v542, v543, v544);
      if (v104)
      {
        goto LABEL_705;
      }

      v551 = values;
      v552 = v564;
      LODWORD(value) = 1;
LABEL_145:
      v92 = 1;
LABEL_146:
      v102 = v498;
    }

LABEL_147:
    if (++v101 == v99)
    {
      v498 = v102;
      HIDWORD(v454) = value != 0;
      MutableCopy = v487;
      Mutable = v488;
      v12 = cf;
      goto LABEL_323;
    }
  }

  if (!v92)
  {
    v122 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    v123 = OUTLINED_FUNCTION_79_1(v122, v110, v111, v112, v113, v114, v115, v116, v404, v408, v412, v416, v420, v424, v428, v432, v436, v440, v445, v448, v451, v454, v457, v460, v463, v464, v465, v466, v469, v470, v474, v477, v478, v481, v484, v487, v488, cf, v492, v495, v498, v499, v502, v505, v508, v511, v514, v519, v523, allocator);
    if (!CFDictionaryCreateMutable(v123, v124, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
    {
LABEL_702:
      cf = 0;
LABEL_703:
      CVPixelBufferFromDNGData = 4294950745;
      goto LABEL_706;
    }

    v125 = CMPhotoPixelFormatContainsAlpha(SHIDWORD(v542));
    v104 = OUTLINED_FUNCTION_22_7(v125, v126, v127, v128, v129, v130, v131, v132, v405, v409, v413, v417, v421, v425, v429, v433, v437, v441, v446, v449, v452, v455, v458, v461, v463, v464, v465, v467, v469, v471, v475, v477, v479, v482, v485, v487, v488, cfa, v493, v496, v498, v500, v503, v506, v509, v512, v515, v520, v523, allocatora, v528, v529, v530, theArray, v534, v536, value, v539, v540, v541, v542, v543, v544);
    if (v104)
    {
      goto LABEL_705;
    }

    v551 = values;
    v552 = v564;
    goto LABEL_145;
  }

LABEL_704:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_11();
  v104 = FigSignalErrorAtGM();
LABEL_705:
  CVPixelBufferFromDNGData = v104;
LABEL_706:
  OUTLINED_FUNCTION_5_27();
  theArray = 0;
  v11 = 0;
LABEL_681:
  MutableCopy = v487;
  Mutable = v488;
LABEL_614:
  OUTLINED_FUNCTION_9_1();
  if (v60)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  free(v523);
  if (v555)
  {
    CFRelease(v555);
  }

  if (v477)
  {
    CFRelease(v477);
  }

  if (v556)
  {
    CFRelease(v556);
  }

  if (v463)
  {
    CFRelease(v463);
  }

  if (v465)
  {
    CFRelease(v465);
  }

  if (v464)
  {
    CFRelease(v464);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v469)
  {
    CFRelease(v469);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v498 >= 1)
  {
    v396 = v498;
    v397 = &v566;
    do
    {
      v398 = *(v397 - 2);
      if (v398)
      {
        CFRelease(v398);
      }

      v399 = *(v397 - 1);
      if (v399)
      {
        CFRelease(v399);
      }

      if (*v397)
      {
        CFRelease(*v397);
      }

      v397 += 8;
      --v396;
    }

    while (v396);
  }

  return CVPixelBufferFromDNGData;
}

uint64_t CMPhotoDNGCompressorReplaceMainImageOptions(uint64_t a1)
{
  if (!a1)
  {
    return 4294950746;
  }

  OUTLINED_FUNCTION_65_1();
  v4 = *(v3 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(v1 + 48) = 0;
  }

  if (v2)
  {
    v5 = CFRetain(v2);
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  *(v1 + 48) = v5;
  return result;
}

uint64_t CMPhotoDNGCompressorReplaceMainImageProperties(CFTypeRef cf, const __CFDictionary *a2)
{
  result = 4294950746;
  if (cf && a2)
  {
    v5 = *(cf + 4);
    if (v5)
    {
      CFRelease(v5);
      *(cf + 4) = 0;
    }

    if (*(cf + 5))
    {
      v6 = CFGetAllocator(cf);
      MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
      if (!MutableCopy)
      {
        return 4294950745;
      }

      v8 = MutableCopy;
      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D808], *(cf + 5));
    }

    else
    {
      v8 = CFRetain(a2);
    }

    result = 0;
    *(cf + 4) = v8;
  }

  return result;
}

uint64_t CMPhotoDNGCompressorRemoveAuxiliaryImages(CFMutableArrayRef *cf)
{
  if (!cf)
  {
    return 4294950746;
  }

  if (!cf[7])
  {
LABEL_6:
    CFArrayRemoveAllValues(cf[10]);
    CFArrayRemoveAllValues(cf[9]);
    return 0;
  }

  v2 = cf[12];
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
    goto LABEL_6;
  }

  v3 = CFGetAllocator(cf);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  cf[12] = Mutable;
  if (Mutable)
  {
    goto LABEL_6;
  }

  return 4294950745;
}

CFMutableStringRef CMPhotoDNGCompressorClass_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (Mutable)
  {
    v4 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v4, v5, v6, a1);
    v28 = *(a1 + 24);
    v7 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v7, v8, v9, v28);
    v29 = *(a1 + 48);
    v10 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v10, v11, v12, v29);
    v13 = *(a1 + 56);
    if (v13)
    {
      Length = CFDataGetLength(*(a1 + 56));
    }

    else
    {
      Length = 0;
    }

    v32 = Length;
    v15 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v15, v16, v17, v13, v32);
    v30 = *(a1 + 72);
    v18 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v18, v19, v20, v30);
    v31 = *(a1 + 80);
    v21 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v21, v22, v23, v31);
    v24 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v24, v25, v26);
  }

  return Mutable;
}

uint64_t _dngInfoInit(_DWORD *a1, const __CFData *a2, __CVBuffer *a3, const __CFDictionary *a4, const __CFArray *a5, int a6, const __CFDictionary *a7, uint64_t a8)
{
  v410 = 0;
  v411 = 0;
  v409 = 0.0;
  v408 = 0;
  v407 = 0;
  *(a1 + 8) = a6;
  v405 = 1.0;
  v406 = 0;
  v403 = 2;
  v404 = 2;
  v402 = 0;
  v401 = a6;
  v400 = a6;
  v398.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(a3);
  v398.f64[1] = v15;
  v399.f64[0] = v16;
  v399.f64[1] = v17;
  if (CMPhotoGetCPUCount() > 7)
  {
    CPUCount = 8;
  }

  else
  {
    CPUCount = CMPhotoGetCPUCount();
  }

  a1[8] = CPUCount;
  v19 = MEMORY[0x1E695F058];
  if (a7)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    if (v405 < 0.0 || v405 > 1.0)
    {
      goto LABEL_20;
    }

    FigCFDictionaryGetIntIfPresent();
    if ((v404 - 10) <= 0xFFFFFFF6)
    {
      goto LABEL_20;
    }

    FigCFDictionaryGetIntIfPresent();
    if (v403 < 0)
    {
      goto LABEL_20;
    }

    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetFloatIfPresent();
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    v22 = v407 != 1786276963 || IntIfPresent == 0;
    v23 = v22 ? 7 : 52546;
    v393 = v23;
    FigCFDictionaryGetIntIfPresent();
    if (a1[8] >= 0x100u)
    {
      goto LABEL_20;
    }

    Value = CFDictionaryGetValue(a7, @"SourceCropRect");
    if (Value)
    {
      if (a2)
      {
LABEL_20:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
LABEL_38:
        HIDWORD(v411) = FigSignalErrorAtGM();
        return HIDWORD(v411);
      }

      v27 = *(v19 + 16);
      rect.origin = *v19;
      rect.size = v27;
      if (CGRectMakeWithDictionaryRepresentation(Value, &rect))
      {
        v28.f64[0] = rect.origin.x;
        HIDWORD(v411) = CMPhotoApplyCropRectToRect(&v398, v28, rect.origin.y, rect.size.width, rect.size.height);
        if (HIDWORD(v411))
        {
          return HIDWORD(v411);
        }
      }
    }

    v29 = CFDictionaryGetValue(a7, @"Tiling");
    v391 = a8;
    if (v29)
    {
      v30 = v29;
      v31 = CFGetTypeID(v29);
      if (v31 != CFDictionaryGetTypeID())
      {
        goto LABEL_37;
      }

      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      v25 = 0;
      v26 = 0;
      if (CGSizeMakeWithDictionaryRepresentation(v30, &rect))
      {
        v25 = vcvtad_u64_f64(rect.origin.x);
        v32 = 7;
        if (!*(a1 + 8))
        {
          v32 = 15;
        }

        if ((v32 & v25) != 0)
        {
          goto LABEL_37;
        }

        v33 = 7;
        if (!*(a1 + 8))
        {
          v33 = 3;
        }

        v26 = vcvtad_u64_f64(rect.origin.y);
        if ((v33 & v26) != 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }
  }

  else
  {
    v391 = a8;
    v25 = 0;
    v26 = 0;
    v393 = 7;
  }

  v34 = v406;
  a1[3] = v406;
  switch(v34)
  {
    case 0:
      a1[3] = 3;
      break;
    case 1:
    case 3:
    case 5:
      break;
    case 2:
      if (!*(a1 + 8))
      {
        goto LABEL_37;
      }

      break;
    default:
      goto LABEL_37;
  }

  *(a1 + 4) = v405;
  v35 = v403;
  a1[5] = v404;
  a1[6] = v35;
  *(a1 + 28) = v401;
  *(a1 + 29) = v400;
  *(a1 + 30) = v408;
  a1[9] = HIDWORD(v407);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  VersatileBayerPattern = CMPhotoPixelBufferGetVersatileBayerPattern(a3);
  if (a2)
  {
    BytePtr = CFDataGetBytePtr(a2);
    *(a1 + 25) = *(BytePtr + 12);
    PixelFormatType = *(BytePtr + 2);
  }

  else
  {
    *(a1 + 25) = vmovn_s64(vcvtq_s64_f64(v399));
    if (CMPhotoPixelFormatIsRAWVersatile(PixelFormatType) && (VersatileBayerPattern > 8 || ((1 << VersatileBayerPattern) & 0x12F) == 0))
    {
LABEL_37:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      goto LABEL_38;
    }
  }

  if (a6)
  {
    v39 = 0;
  }

  else
  {
    v39 = VersatileBayerPattern == 5 || VersatileBayerPattern == 8;
  }

  key = PixelFormatType;
  if (*(a1 + 8) || a1[3] != 5)
  {
    v41 = 17;
  }

  else if (v39)
  {
    v41 = 68;
  }

  else
  {
    v41 = 34;
  }

  *(a1 + 1712) = v41;
  v42 = *MEMORY[0x1E696D808];
  TypeID = CFDictionaryGetTypeID();
  v44 = CFDictionaryGetValue(a4, v42);
  if (!v44)
  {
    goto LABEL_321;
  }

  v45 = v44;
  if (CFGetTypeID(v44) != TypeID)
  {
    goto LABEL_321;
  }

  v387 = VersatileBayerPattern;
  v46 = *MEMORY[0x1E696DF28];
  v47 = CFDictionaryGetTypeID();
  v48 = CFDictionaryGetValue(a4, v46);
  if (!v48)
  {
    goto LABEL_321;
  }

  v49 = v48;
  if (CFGetTypeID(v48) != v47)
  {
    goto LABEL_321;
  }

  *(&v385 + 1) = v25;
  v386 = v49;
  v384 = a3;
  *&v385 = v26;
  v50 = FigCFDictionaryGetValue();
  v51 = 0;
  v52 = 0;
  v53 = 0;
  theString2 = *MEMORY[0x1E696D260];
  v389 = *MEMORY[0x1E696D258];
  if (a5)
  {
    goto LABEL_70;
  }

LABEL_71:
  for (i = 0; v53 < i; i = CFArrayGetCount(a5))
  {
    if (CFArrayGetValueAtIndex(a5, v53))
    {
      v54 = FigCFDictionaryGetValue();
      if (v54)
      {
        v55 = v54;
        if (CFStringCompare(v54, theString2, 0))
        {
          v56 = CFStringCompare(v55, v389, 0);
          v51 |= v56 == kCFCompareEqualTo;
          v52 |= v56 != kCFCompareEqualTo;
        }

        else
        {
          v51 = 1;
        }
      }
    }

    ++v53;
    if (!a5)
    {
      goto LABEL_71;
    }

LABEL_70:
    ;
  }

  v396 = 0;
  theString = 0;
  HIDWORD(v411) = _getDNGVersionInternal(a4, v406, a6 == 0, v51 & 1, v52 & 1, *(a1 + 1712), &theString, &v396);
  if (!HIDWORD(v411))
  {
    v58 = theString;
    if (v50)
    {
      if (CFStringCompare(v50, theString, 0x40uLL) == kCFCompareLessThan)
      {
        v58 = theString;
      }

      else
      {
        v58 = v50;
      }
    }

    HIDWORD(v411) = _setVersionArrayFromVersionString(v58, a1);
    if (!HIDWORD(v411))
    {
      HIDWORD(v411) = _setVersionArrayFromVersionString(v396, (a1 + 1));
      if (!HIDWORD(v411))
      {
        v59 = *MEMORY[0x1E696DF48];
        v60 = CFStringGetTypeID();
        v61 = OUTLINED_FUNCTION_48_1();
        v63 = CFDictionaryGetValue(v61, v62);
        if (!v63 || (v59 = v63, CFGetTypeID(v63) != v60))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 5) = v59;
        v64 = *MEMORY[0x1E696DF50];
        v65 = CFStringGetTypeID();
        v66 = OUTLINED_FUNCTION_48_1();
        v68 = CFDictionaryGetValue(v66, v67);
        if (!v68 || (v64 = v68, CFGetTypeID(v68) != v65))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 6) = v64;
        v69 = *MEMORY[0x1E696DF68];
        v70 = CFStringGetTypeID();
        v71 = OUTLINED_FUNCTION_48_1();
        v73 = CFDictionaryGetValue(v71, v72);
        if (!v73 || (v69 = v73, CFGetTypeID(v73) != v70))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 7) = v69;
        v74 = CFDictionaryGetValue(v386, *MEMORY[0x1E696DF20]);
        if (!v74)
        {
          goto LABEL_321;
        }

        v75 = v74;
        if (!FigCFDictionaryGetIntIfPresent() && !FigCFDictionaryGetIntIfPresent())
        {
          a1[24] = 1;
        }

        v76 = *MEMORY[0x1E696D858];
        CFStringGetTypeID();
        v77 = OUTLINED_FUNCTION_34_2();
        v78 = CFDictionaryGetValue(v77, v76);
        if (!v78 || (v76 = v78, CFGetTypeID(v78) != v70))
        {
          OUTLINED_FUNCTION_36_4();
        }

        *(a1 + 11) = v76;
        v79 = CFDictionaryGetValue(v45, *MEMORY[0x1E696D7B0]);
        if (!v79)
        {
          goto LABEL_321;
        }

        v80 = v79;
        v81 = CFGetTypeID(v79);
        if (v81 == CFArrayGetTypeID())
        {
          OUTLINED_FUNCTION_5();
          FigCFArrayGetInt32AtIndex();
        }

        else
        {
          v82 = CFGetTypeID(v80);
          if (v82 != CFNumberGetTypeID())
          {
            goto LABEL_321;
          }

          CFNumberGetValue(v80, kCFNumberIntType, a1 + 32);
        }

        if (*(a1 + 8))
        {
          v83 = CFDictionaryGetValue(v45, *MEMORY[0x1E696D7F0]);
          if (v83)
          {
            v84 = v83;
            v85 = CFGetTypeID(v83);
            if (v85 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v84, kCFNumberIntType, a1 + 36);
            }
          }
        }

        v86 = CFDictionaryGetValue(v45, *MEMORY[0x1E696D878]);
        if (!v86)
        {
          goto LABEL_321;
        }

        v87 = v86;
        v88 = CFGetTypeID(v86);
        if (v88 == CFArrayGetTypeID())
        {
          OUTLINED_FUNCTION_5();
          FigCFArrayGetInt32AtIndex();
        }

        else
        {
          v89 = CFGetTypeID(v87);
          if (v89 != CFNumberGetTypeID())
          {
            goto LABEL_321;
          }

          CFNumberGetValue(v87, kCFNumberIntType, a1 + 33);
        }

        if (v387 == 5 || v387 == 8)
        {
          v378 = 0;
          v366 = &unk_1F194A468;
        }

        else
        {
          CFArrayGetTypeID();
          v256 = OUTLINED_FUNCTION_27_6();
          if (v256 && (v366 = v256, CFGetTypeID(v256) == v87))
          {
            v378 = 0;
          }

          else
          {
            CFArrayGetTypeID();
            v283 = OUTLINED_FUNCTION_27_6();
            if (v283 && CFGetTypeID(v283) == v87)
            {
              v366 = 0;
              v378 = 1;
            }

            else
            {
              v366 = 0;
              v378 = 1;
              HIDWORD(v411) = 1;
            }
          }
        }

        CFArrayGetTypeID();
        v91 = OUTLINED_FUNCTION_27_6();
        if (!v91 || (v92 = v91, CFGetTypeID(v91) != v87))
        {
          v92 = 0;
        }

        CFNumberGetTypeID();
        v93 = OUTLINED_FUNCTION_27_6();
        if (!v93 || (v94 = v93, CFGetTypeID(v93) != v87))
        {
          v94 = 0;
          HIDWORD(v411) = 1;
        }

        CFNumberGetTypeID();
        v95 = OUTLINED_FUNCTION_27_6();
        if (!v95 || (v96 = v95, CFGetTypeID(v95) != v87))
        {
          v96 = 0;
        }

        v97 = CFArrayGetTypeID();
        v98 = CFDictionaryGetValue(v45, @"IlluminantData1");
        if (!v98 || (v99 = v98, CFGetTypeID(v98) != v97))
        {
          v99 = 0;
        }

        v370 = v99;
        v100 = CFArrayGetTypeID();
        v101 = CFDictionaryGetValue(v45, @"IlluminantData2");
        if (!v101 || (v102 = v101, CFGetTypeID(v101) != v100))
        {
          v102 = 0;
        }

        CFArrayGetTypeID();
        v103 = OUTLINED_FUNCTION_27_6();
        if (!v103 || (v104 = v103, CFGetTypeID(v103) != v100))
        {
          v104 = 0;
          HIDWORD(v411) = 1;
        }

        v377 = v104;
        CFArrayGetTypeID();
        v105 = OUTLINED_FUNCTION_27_6();
        if (!v105 || (v106 = v105, CFGetTypeID(v105) != v100))
        {
          v106 = 0;
        }

        v376 = v106;
        if (!HIDWORD(v411))
        {
          CFArrayGetTypeID();
          v107 = OUTLINED_FUNCTION_27_6();
          if (!v107 || (v108 = v107, CFGetTypeID(v107) != v100))
          {
            v108 = 0;
          }

          v375 = v108;
          v368 = v102;
          CFArrayGetTypeID();
          v109 = OUTLINED_FUNCTION_27_6();
          if (!v109 || (v110 = v109, CFGetTypeID(v109) != v100))
          {
            v110 = 0;
          }

          v111 = *MEMORY[0x1E696D7D8];
          CFStringGetTypeID();
          v112 = OUTLINED_FUNCTION_34_2();
          v113 = CFDictionaryGetValue(v112, v111);
          if (!v113 || (v114 = v113, CFGetTypeID(v113) != v102))
          {
            v114 = 0;
          }

          *(a1 + 92) = v114;
          v115 = *MEMORY[0x1E696D838];
          CFStringGetTypeID();
          v116 = OUTLINED_FUNCTION_34_2();
          v117 = CFDictionaryGetValue(v116, v115);
          if (!v117 || (v118 = v117, CFGetTypeID(v117) != v102))
          {
            v118 = 0;
          }

          *(a1 + 93) = v118;
          v119 = *MEMORY[0x1E696D848];
          CFStringGetTypeID();
          v120 = OUTLINED_FUNCTION_34_2();
          v121 = CFDictionaryGetValue(v120, v119);
          if (!v121 || (v122 = v121, CFGetTypeID(v121) != v102))
          {
            v122 = 0;
          }

          *(a1 + 95) = v122;
          v123 = *MEMORY[0x1E696D780];
          CFStringGetTypeID();
          v124 = OUTLINED_FUNCTION_34_2();
          v125 = CFDictionaryGetValue(v124, v123);
          if (!v125 || (v126 = v125, CFGetTypeID(v125) != v102))
          {
            v126 = 0;
          }

          *(a1 + 94) = v126;
          v127 = *MEMORY[0x1E696D840];
          CFNumberGetTypeID();
          v128 = OUTLINED_FUNCTION_34_2();
          v129 = CFDictionaryGetValue(v128, v127);
          if (v129 && (v130 = v129, CFGetTypeID(v129) == v102))
          {
            CFNumberGetValue(v130, kCFNumberShortType, a1 + 538);
          }

          else
          {
            a1[538] = -1;
          }

          v374 = v110;
          v131 = *MEMORY[0x1E696D830];
          CFDataGetTypeID();
          v132 = OUTLINED_FUNCTION_34_2();
          v133 = CFDictionaryGetValue(v132, v131);
          if (!v133 || (v134 = v133, CFGetTypeID(v133) != v102))
          {
            v134 = 0;
          }

          *(a1 + 26) = v134;
          CFArrayGetTypeID();
          v135 = OUTLINED_FUNCTION_27_6();
          if (!v135 || (v136 = v135, CFGetTypeID(v135) != v134))
          {
            v136 = 0;
          }

          v382 = v136;
          v137 = CFArrayGetTypeID();
          v138 = CFDictionaryGetValue(v45, @"WarpRectilinear2");
          if (!v138 || (v139 = v138, CFGetTypeID(v138) != v137))
          {
            v139 = 0;
          }

          v140 = *MEMORY[0x1E696D868];
          CFArrayGetTypeID();
          v141 = OUTLINED_FUNCTION_34_2();
          v142 = CFDictionaryGetValue(v141, v140);
          if (!v142 || (v143 = v142, CFGetTypeID(v142) != v137))
          {
            v143 = 0;
          }

          v383 = v143;
          v144 = *MEMORY[0x1E696D810];
          CFArrayGetTypeID();
          v145 = OUTLINED_FUNCTION_34_2();
          v146 = CFDictionaryGetValue(v145, v144);
          if (!v146 || (v147 = v146, CFGetTypeID(v146) != v137))
          {
            v147 = 0;
          }

          v380 = v147;
          v381 = v92;
          v148 = *MEMORY[0x1E696D820];
          CFArrayGetTypeID();
          v149 = OUTLINED_FUNCTION_34_2();
          v150 = CFDictionaryGetValue(v149, v148);
          if (!v150 || (v151 = v150, CFGetTypeID(v150) != v137))
          {
            v151 = 0;
          }

          v379 = v151;
          v369 = v96;
          v152 = CFArrayGetTypeID();
          v153 = OUTLINED_FUNCTION_46_1();
          if (!v153 || (v154 = v153, CFGetTypeID(v153) != v152))
          {
            v154 = 0;
          }

          FigCFDictionaryGetFloatIfPresent();
          FigCFDictionaryGetFloatIfPresent();
          FigCFDictionaryGetFloatIfPresent();
          v409 = INFINITY;
          FigCFDictionaryGetFloatIfPresent();
          if (fabsf(v409) != INFINITY && (v409 < 0.0 || v409 > 1.0))
          {
            goto LABEL_320;
          }

          v156 = CFArrayGetTypeID();
          v157 = OUTLINED_FUNCTION_46_1();
          if (!v157 || (v158 = v157, CFGetTypeID(v157) != v156))
          {
            v158 = 0;
          }

          v372 = v158;
          v159 = CFArrayGetTypeID();
          v160 = OUTLINED_FUNCTION_46_1();
          if (!v160 || (v161 = v160, CFGetTypeID(v160) != v159))
          {
            v161 = 0;
          }

          v371 = v161;
          number = v94;
          v373 = v75;
          v162 = CFArrayGetTypeID();
          v163 = OUTLINED_FUNCTION_46_1();
          if (!v163 || (v164 = v163, CFGetTypeID(v163) != v162))
          {
            v164 = 0;
          }

          v165 = CFStringGetTypeID();
          v166 = OUTLINED_FUNCTION_78_1();
          v168 = CFDictionaryGetValue(v166, v167);
          if (!v168 || (v169 = v168, CFGetTypeID(v168) != v165))
          {
            v169 = 0;
          }

          v365 = v164;
          *(a1 + 8) = v169;
          v170 = CFStringGetTypeID();
          v171 = OUTLINED_FUNCTION_78_1();
          v173 = CFDictionaryGetValue(v171, v172);
          if (!v173 || (v174 = v173, CFGetTypeID(v173) != v170))
          {
            v174 = 0;
          }

          *(a1 + 9) = v174;
          v175 = CFStringGetTypeID();
          v176 = OUTLINED_FUNCTION_78_1();
          v178 = CFDictionaryGetValue(v176, v177);
          if (!v178 || (v179 = v178, CFGetTypeID(v178) != v175))
          {
            v179 = 0;
          }

          *(a1 + 27) = v179;
          v180 = v383;
          if (v382)
          {
            HIDWORD(v411) = _unpackArrayOfDoubles(v382, 0x14u, a1 + 824, a1 + 246);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            v284 = a1[246];
            v285 = v284 == 8 || v284 == 20;
            v180 = v383;
            if (!v285)
            {
              goto LABEL_334;
            }
          }

          if (v139)
          {
            Count = CFArrayGetCount(v139);
            if (Count != 60 && Count != 22)
            {
              goto LABEL_334;
            }

            v183 = 0;
            v184 = (Count - 1);
            v185 = a1 + 248;
            do
            {
              if (!FigCFArrayGetDoubleAtIndex())
              {
                goto LABEL_334;
              }

              ++v183;
              v185 += 2;
            }

            while (v184 != v183);
            a1[368] = v184;
            if (!FigCFArrayGetInt32AtIndex())
            {
              goto LABEL_334;
            }
          }

          if (v154)
          {
            a1[535] = CFArrayGetCount(v154);
            OUTLINED_FUNCTION_83_1();
            v188 = malloc_type_malloc(v186, v187);
            *(a1 + 268) = v188;
            v189 = a1[535];
            v190 = CFGetTypeID(v154);
            if (v190 != CFArrayGetTypeID() || CFArrayGetCount(v154) != v189)
            {
              goto LABEL_334;
            }

            if (v189 >= 1)
            {
              for (j = 0; j != v189; ++j)
              {
                FigCFArrayGetFloatAtIndex();
                v188 += 4;
              }
            }

            HIDWORD(v411) = 0;
          }

          if (v180)
          {
            HIDWORD(v411) = _unpackArrayOfDoubles(v180, 0xEu, a1 + 1480, a1 + 398);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            if ((a1[398] & 0xFFFFFFF7) != 6)
            {
              goto LABEL_334;
            }
          }

          if (v380)
          {
            HIDWORD(v411) = _unpackArrayOfDoubles(v380, 7u, a1 + 1600, a1 + 414);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            if (a1[414] != 7)
            {
              goto LABEL_334;
            }
          }

          if (v379)
          {
            HIDWORD(v411) = _unpackArrayOfDoubles(v379, 6u, a1 + 768, a1 + 204);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            if ((a1[204] & 0xFFFFFFFB) != 2)
            {
              goto LABEL_334;
            }
          }

          v192 = CFDictionaryGetTypeID();
          v193 = CFDictionaryGetValue(v45, @"ProfileGainTableMap");
          if (v193 && (v194 = v193, CFGetTypeID(v193) == v192))
          {
            v195 = CFNumberGetTypeID();
            v196 = CFDictionaryGetValue(v194, @"MapPointsV");
            if (!v196)
            {
              goto LABEL_324;
            }

            v197 = v196;
            if (CFGetTypeID(v196) != v195)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            CFNumberGetValue(v197, kCFNumberIntType, a1 + 490);
            v198 = CFNumberGetTypeID();
            v199 = CFDictionaryGetValue(v194, @"MapPointsH");
            if (!v199)
            {
              goto LABEL_324;
            }

            v200 = v199;
            if (CFGetTypeID(v199) != v198)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            CFNumberGetValue(v200, kCFNumberIntType, a1 + 491);
            v201 = CFNumberGetTypeID();
            v202 = CFDictionaryGetValue(v194, @"MapSpacingV");
            if (!v202)
            {
              goto LABEL_324;
            }

            v203 = CFGetTypeID(v202);
            if (v203 != v201)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            OUTLINED_FUNCTION_70_1(v203, v204, a1 + 492);
            v205 = CFNumberGetTypeID();
            v206 = CFDictionaryGetValue(v194, @"MapSpacingH");
            if (!v206)
            {
              goto LABEL_324;
            }

            v207 = CFGetTypeID(v206);
            if (v207 != v205)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            OUTLINED_FUNCTION_70_1(v207, v208, a1 + 494);
            v209 = CFNumberGetTypeID();
            v210 = CFDictionaryGetValue(v194, @"MapOriginV");
            if (!v210)
            {
              goto LABEL_324;
            }

            v211 = CFGetTypeID(v210);
            if (v211 != v209)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            OUTLINED_FUNCTION_70_1(v211, v212, a1 + 496);
            v213 = CFNumberGetTypeID();
            v214 = CFDictionaryGetValue(v194, @"MapOriginH");
            if (!v214)
            {
              goto LABEL_324;
            }

            v215 = CFGetTypeID(v214);
            if (v215 != v213)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            OUTLINED_FUNCTION_70_1(v215, v216, a1 + 498);
            v217 = CFNumberGetTypeID();
            v218 = CFDictionaryGetValue(v194, @"MapPointsN");
            if (!v218)
            {
              goto LABEL_324;
            }

            v219 = v218;
            if (CFGetTypeID(v218) != v217)
            {
              goto LABEL_324;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            CFNumberGetValue(v219, kCFNumberIntType, a1 + 500);
            v220 = CFArrayGetTypeID();
            v221 = CFDictionaryGetValue(v194, @"MapInputWeights");
            if (!v221 || (v222 = v221, CFGetTypeID(v221) != v220))
            {
LABEL_324:
              v281 = 1;
              goto LABEL_322;
            }

            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            if (CFArrayGetCount(v222) >= 1)
            {
              v223 = 0;
              v224 = a1 + 501;
              while (FigCFArrayGetFloatAtIndex())
              {
                ++v223;
                ++v224;
                if (CFArrayGetCount(v222) <= v223)
                {
                  goto LABEL_257;
                }
              }

              return HIDWORD(v411);
            }

LABEL_257:
            v225 = CFDataGetTypeID();
            *(a1 + 254) = OUTLINED_FUNCTION_47_1(v225, @"GainValues", v225);
            *(a1 + 2024) = 0;
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }
          }

          else
          {
            LODWORD(rect.origin.x) = 0;
            v226 = CFDataGetTypeID();
            *(a1 + 254) = _readDictType(v45, @"ProfileGainTableMapPacked", v226, &rect);
            *(a1 + 2024) = LODWORD(rect.origin.x) == 0;
          }

          v227 = CFDictionaryGetTypeID();
          v228 = CFDictionaryGetValue(v45, @"GainMap");
          if (v228)
          {
            if (CFGetTypeID(v228) == v227)
            {
              v229 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v229, @"top", v229);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[510] = FigCFNumberGetSInt32();
              v230 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v230, @"bottom", v230);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[512] = FigCFNumberGetSInt32();
              v231 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v231, @"left", v231);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[511] = FigCFNumberGetSInt32();
              v232 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v232, @"right", v232);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[513] = FigCFNumberGetSInt32();
              v233 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v233, @"plane", v233);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[514] = FigCFNumberGetSInt32();
              v234 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v234, @"planes", v234);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[515] = FigCFNumberGetSInt32();
              v235 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v235, @"rowPitch", v235);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[516] = FigCFNumberGetSInt32();
              v236 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v236, @"colPitch", v236);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[517] = FigCFNumberGetSInt32();
              v237 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v237, @"mapsPointsV", v237);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[518] = FigCFNumberGetSInt32();
              v238 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v238, @"mapsPointsH", v238);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[519] = FigCFNumberGetSInt32();
              v239 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v239, @"mapsSpacingV", v239);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              FigCFNumberGetFloat64();
              *(a1 + 260) = v240;
              v241 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v241, @"mapsSpacingH", v241);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              FigCFNumberGetFloat64();
              *(a1 + 261) = v242;
              v243 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v243, @"mapOriginV", v243);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              FigCFNumberGetFloat64();
              *(a1 + 262) = v244;
              v245 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v245, @"mapOriginH", v245);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              FigCFNumberGetFloat64();
              *(a1 + 263) = v246;
              v247 = CFNumberGetTypeID();
              OUTLINED_FUNCTION_47_1(v247, @"mapPlanes", v247);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              a1[528] = FigCFNumberGetSInt32();
              v248 = CFDataGetTypeID();
              *(a1 + 265) = OUTLINED_FUNCTION_47_1(v248, @"gainData", v248);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }
            }
          }

          if (fabsf(v409) == INFINITY)
          {
            *(a1 + 181) = 0;
          }

          else
          {
            OUTLINED_FUNCTION_15_14();
            do
            {
              OUTLINED_FUNCTION_88_1();
              if (!v22 & v254)
              {
                v255 = 0;
              }

              else
              {
                v255 = v253 < v251;
              }
            }

            while (v255);
            a1[181] = llroundf(v250 * v252);
            a1[182] = v249;
          }

          OUTLINED_FUNCTION_15_14();
          do
          {
            OUTLINED_FUNCTION_86_1();
            if (!v22 & v254)
            {
              v262 = 0;
            }

            else
            {
              v262 = v261 < v259;
            }
          }

          while (v262);
          a1[105] = llroundf(v258 * v260);
          a1[106] = v257;
          OUTLINED_FUNCTION_15_14();
          do
          {
            OUTLINED_FUNCTION_86_1();
            if (!v22 & v254)
            {
              v268 = 0;
            }

            else
            {
              v268 = v267 < v265;
            }
          }

          while (v268);
          a1[107] = llroundf(v264 * v266);
          a1[108] = v263;
          OUTLINED_FUNCTION_15_14();
          do
          {
            OUTLINED_FUNCTION_88_1();
            if (!v22 & v254)
            {
              v275 = 0;
            }

            else
            {
              v275 = v274 < v272;
            }
          }

          while (v275);
          a1[109] = llroundf(v271 * v273);
          a1[110] = v270;
          if ((v378 & 1) == 0)
          {
            HIDWORD(v411) = _floatArrayToRational(v366, (a1 + 111), 3);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            LODWORD(rect.origin.x) = 0;
            HIDWORD(v411) = _unpackArrayOfDoubles(v366, 3u, a1 + 472, &rect);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            if (LODWORD(rect.origin.x) != 3)
            {
              goto LABEL_320;
            }

            *(a1 + 512) = 1;
LABEL_307:
            if (v381)
            {
              HIDWORD(v411) = _floatArrayToRational(v381, (a1 + 129), 3);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              LODWORD(rect.origin.x) = 0;
              HIDWORD(v411) = _unpackArrayOfDoubles(v381, 3u, a1 + 544, &rect);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              if (LODWORD(rect.origin.x) != 3)
              {
                goto LABEL_320;
              }

              *(a1 + 568) = 1;
            }

            HIDWORD(v411) = _floatArrayToRational(v377, (a1 + 68), 9);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            if (v376)
            {
              HIDWORD(v411) = _floatArrayToRational(v376, (a1 + 86), 9);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              *(a1 + 416) = 1;
            }

            if (v375)
            {
              HIDWORD(v411) = _floatArrayToRational(v375, (a1 + 143), 9);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              *(a1 + 644) = 1;
              if (!*(a1 + 92))
              {
                *(a1 + 92) = *(a1 + 5);
              }

              if (!*(a1 + 93))
              {
                *(a1 + 93) = *(a1 + 5);
              }

              if (v374)
              {
                HIDWORD(v411) = _floatArrayToRational(v374, (a1 + 162), 9);
                if (HIDWORD(v411))
                {
                  return HIDWORD(v411);
                }

                *(a1 + 720) = 1;
              }
            }

            else if (v374)
            {
LABEL_320:
              v281 = -16550;
LABEL_322:
              HIDWORD(v411) = v281;
              return HIDWORD(v411);
            }

            CFNumberGetValue(number, kCFNumberShortType, a1 + 56);
            if (v369)
            {
              CFNumberGetValue(v369, kCFNumberShortType, a1 + 226);
              *(a1 + 228) = 1;
            }

            v276 = v391;
            v277 = v387;
            v278 = v372;
            v279 = v373;
            v280 = v371;
            if (v370)
            {
              HIDWORD(v411) = _floatArrayToRational(v370, (a1 + 58), 2);
              if (HIDWORD(v411))
              {
                return HIDWORD(v411);
              }

              *(a1 + 248) = 1;
              v277 = v387;
              v278 = v372;
              v279 = v373;
              v280 = v371;
              if (v368)
              {
                HIDWORD(v411) = _floatArrayToRational(v368, (a1 + 63), 2);
                if (HIDWORD(v411))
                {
                  return HIDWORD(v411);
                }

                *(a1 + 268) = 1;
                v276 = v391;
                v277 = v387;
                v278 = v372;
                v279 = v373;
                v280 = v371;
                if (!v372)
                {
LABEL_365:
                  if (!v280)
                  {
                    goto LABEL_366;
                  }

                  goto LABEL_542;
                }

LABEL_540:
                HIDWORD(v411) = _readInt32Array(v278, 4, (a1 + 41));
                if (HIDWORD(v411))
                {
                  goto LABEL_546;
                }

                *(a1 + 180) = 1;
                if (!v280)
                {
LABEL_366:
                  if (!v365)
                  {
                    goto LABEL_367;
                  }

                  HIDWORD(v411) = _readInt32Array(v365, 2, (a1 + 49));
                  if (!HIDWORD(v411))
                  {
                    *(a1 + 204) = 1;
LABEL_367:
                    v286 = CFGetTypeID(v279);
                    v287 = CFDateGetTypeID();
                    v288 = MEMORY[0x1E695E480];
                    if (v286 == v287)
                    {
                      v289 = *MEMORY[0x1E695E480];
                      v290 = CFDateFormatterCreate(*MEMORY[0x1E695E480], 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
                      CFDateFormatterSetFormat(v290, @"yyyy:MM:dd HH:mm:ss");
                      *(a1 + 10) = CFDateFormatterCreateStringWithDate(v289, v290, v279);
                      if (v290)
                      {
                        CFRelease(v290);
                      }
                    }

                    else
                    {
                      v291 = CFGetTypeID(v279);
                      if (v291 != CFStringGetTypeID())
                      {
                        goto LABEL_334;
                      }

                      *(a1 + 10) = CFRetain(v279);
                    }

                    v292 = *(a1 + 26);
                    if (v292)
                    {
                      v293 = CFDataGetBytePtr(v292);
                      Length = CFDataGetLength(*(a1 + 26));
                      if (!memchr(v293, 0, Length))
                      {
                        goto LABEL_334;
                      }
                    }

                    if (v276)
                    {
                      *(a1 + 215) = v276;
                      a1[434] = v393;
                      HIDWORD(v411) = _parseOutWidthAndHeightFromJpeg(a1);
                      if (HIDWORD(v411))
                      {
                        goto LABEL_334;
                      }
                    }

                    *(a1 + 7) = vcvtq_u64_f64(v398);
                    if (*(a1 + 8))
                    {
                      UsedBitDepthForPixelFormat = CMPhotoGetUsedBitDepthForPixelFormat(key);
                      a1[34] = UsedBitDepthForPixelFormat;
                      if (!UsedBitDepthForPixelFormat)
                      {
                        goto LABEL_544;
                      }

                      v296 = a1[3];
                      if (v296 != 2)
                      {
                        v299 = a1[33];
                        if (key == 1751527984 && (34 - __clz(v299)) < UsedBitDepthForPixelFormat)
                        {
                          v299 = ~(-1 << UsedBitDepthForPixelFormat);
                          a1[33] = v299;
                        }

                        v300 = a1[32];
                        a1[37] = v299;
                        a1[38] = v300;
                        a1[39] = UsedBitDepthForPixelFormat;
                        if (v296 == 5 || v296 == 3)
                        {
                          LODWORD(rect.origin.x) = 16;
                          v302 = CFArrayGetTypeID();
                          if (_readDictType(v45, @"BitsPerSample", v302, 0))
                          {
                            FigCFArrayGetInt32AtIndex();
                          }

                          if (SLODWORD(rect.origin.x) >= a1[34])
                          {
                            x_low = a1[34];
                          }

                          else
                          {
                            x_low = LODWORD(rect.origin.x);
                          }

                          a1[34] = x_low;
                          if (x_low >= CMPhotoDNGDefaultBitDepth())
                          {
                            v304 = CMPhotoDNGDefaultBitDepth();
                          }

                          else
                          {
                            v304 = a1[34];
                          }

                          a1[39] = v304;
                          v305 = v402;
                          if (v402)
                          {
                            a1[39] = v402;
                            if (!*(a1 + 28))
                            {
                              a1[37] = ~(-1 << v305);
                            }
                          }

                          if (!a1[34])
                          {
                            goto LABEL_544;
                          }
                        }

LABEL_404:
                        if ((a1[25] & 1) == 0 && (a1[26] & 1) == 0)
                        {
                          v306 = a1 + 420;
                          if (*(a1 + 8))
                          {
                            *v306 = 0;
                            *(a1 + 211) = 0;
                            a1[424] = 0;
                            v307 = HIDWORD(v411);
                          }

                          else
                          {
                            v307 = _cfaPatternFromPixelFormat(key, v277, v306, a1 + 424);
                            HIDWORD(v411) = v307;
                          }

                          if (v307)
                          {
                            return HIDWORD(v411);
                          }

                          v308 = _copyFilteredImageProperties(a4);
                          *(a1 + 208) = v308;
                          if (v308)
                          {
                            v309 = (a1 + 416);
                            HIDWORD(v411) = CMPhotoUpdateImageProperties(a1 + 208, 0, 0, v399.f64[0], v399.f64[1]);
                            if (HIDWORD(v411))
                            {
                              return HIDWORD(v411);
                            }

                            if (*v309)
                            {
                              *(a1 + 1672) = CFDictionaryContainsKey(*v309, *MEMORY[0x1E696DBF0]);
                              if (CFDictionaryContainsKey(*(a1 + 208), *MEMORY[0x1E696D9B0]))
                              {
                                v310 = 1;
                              }

                              else
                              {
                                v310 = CFDictionaryContainsKey(*v309, *MEMORY[0x1E696DE30]) != 0;
                              }

                              *(a1 + 1673) = v310;
                            }
                          }

                          a1[435] = 0;
                          *(a1 + 218) = 0;
                          if (a5)
                          {
                            if (CFArrayGetCount(a5) >= 1)
                            {
                              v311 = CFArrayGetCount(a5);
                              a1[435] = v311;
                              v312 = malloc_type_calloc(v311, 0x40uLL, 0x1060040C5BCF64AuLL);
                              *(a1 + 218) = v312;
                              if (!v312)
                              {
                                goto LABEL_544;
                              }
                            }

                            if (a1[435] >= 1)
                            {
                              v313 = 0;
                              *v388 = *v288;
                              v314 = *MEMORY[0x1E695FF58];
                              while (1)
                              {
                                if (v314 == 1)
                                {
                                  OUTLINED_FUNCTION_6();
                                  kdebug_trace();
                                }

                                v414 = 0;
                                v415 = 0;
                                ValueAtIndex = CFArrayGetValueAtIndex(a5, v313);
                                v316 = CFDictionaryGetValue(ValueAtIndex, @"AuxPixelBuffer");
                                v394 = v313;
                                if (!v316)
                                {
                                  fig_log_get_emitter();
                                  OUTLINED_FUNCTION_2_35();
                                  v329 = FigSignalErrorAtGM();
LABEL_508:
                                  XMPData = v329;
LABEL_511:
                                  v355 = MEMORY[0x1E695FF58];
                                  goto LABEL_481;
                                }

                                v317 = CFDictionaryGetValue(ValueAtIndex, @"AuxImageType");
                                if (!v317)
                                {
                                  goto LABEL_509;
                                }

                                v318 = v317;
                                v319 = CFDictionaryGetValue(ValueAtIndex, @"AuxMetadata");
                                if (!v319)
                                {
                                  goto LABEL_509;
                                }

                                v320 = v319;
                                v321 = CFDictionaryGetValue(ValueAtIndex, @"AuxOptions");
                                v322 = *(a1 + 218) + (v313 << 6);
                                *(v322 + 60) = 0xFFFF;
                                *(v322 + 40) = 8;
                                *(v322 + 24) = a1[3];
                                v323 = OUTLINED_FUNCTION_5();
                                CompressionCompatiblePixelBuffer = CMPhotoCreateCompressionCompatiblePixelBuffer(v323, v324, 8u, 0, 0, v325, v326);
                                if (CompressionCompatiblePixelBuffer)
                                {
                                  goto LABEL_510;
                                }

                                if (FigCFEqual() || FigCFEqual())
                                {
                                  if (!OUTLINED_FUNCTION_69_1() || !CMPhotoCFDictionaryGetFloatIfPresent())
                                  {
LABEL_502:
                                    v316 = 0;
                                    XMPData = -16557;
                                    goto LABEL_511;
                                  }

                                  if (*&rect.origin.x < 0.0)
                                  {
                                    *&v412.origin.x = *&v412.origin.x - *&rect.origin.x;
                                    LODWORD(rect.origin.x) = 0;
                                    MutableCopy = FigCFDictionaryCreateMutableCopy();
                                    v316 = MutableCopy;
                                    if (!MutableCopy)
                                    {
                                      XMPData = -16551;
                                      goto LABEL_511;
                                    }

                                    CFDictionaryRemoveValue(MutableCopy, @"FloatMinValue");
                                    CFDictionaryRemoveValue(v316, @"FloatMaxValue");
                                    v329 = FigCFDictionarySetFloat();
                                    if (v329)
                                    {
                                      goto LABEL_508;
                                    }

                                    v329 = FigCFDictionarySetFloat();
                                    if (v329)
                                    {
                                      goto LABEL_508;
                                    }

                                    if (v415)
                                    {
                                      CFRelease(v415);
                                    }

                                    v415 = v316;
                                  }
                                }

                                *(v322 + 32) = CVPixelBufferGetWidth(v414);
                                *(v322 + 36) = CVPixelBufferGetHeight(v414);
                                CVPixelBufferGetPixelFormatType(v414);
                                OUTLINED_FUNCTION_53_1();
                                if (!v22)
                                {
                                  goto LABEL_509;
                                }

                                if (FigCFEqual())
                                {
                                  break;
                                }

                                if (FigCFEqual())
                                {
                                  v330 = 1;
                                  goto LABEL_445;
                                }

                                if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
                                {
                                  v416.length = CFStringGetLength(@"kCGImageAuxiliaryDataType");
                                  v416.location = 0;
                                  if (CFStringCompareWithOptions(v318, @"kCGImageAuxiliaryDataType", v416, 0))
                                  {
                                    rect.origin.x = 0.0;
                                    CMPhotoAuxiliaryImageTypeAndFinalURNFromURN = CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(v318, &rect);
                                    *(v322 + 28) = CMPhotoAuxiliaryImageTypeAndFinalURNFromURN;
                                    if (!CMPhotoAuxiliaryImageTypeAndFinalURNFromURN)
                                    {
                                      goto LABEL_509;
                                    }

                                    x = rect.origin.x;
                                    if (!*&rect.origin.x)
                                    {
LABEL_505:
                                      v341 = 0;
                                      *(v322 + 16) = x;
                                      if (v321)
                                      {
                                        goto LABEL_459;
                                      }

                                      goto LABEL_506;
                                    }
                                  }

                                  else
                                  {
                                    rect.origin.x = 0.0;
                                    CMPhotoGetCMPhotoAuxiliaryImageTypeFromCGImageAuxiliaryDataType(v318, &rect, (v322 + 28));
                                    x = rect.origin.x;
                                    if (!*&rect.origin.x)
                                    {
                                      goto LABEL_509;
                                    }
                                  }

                                  x = COERCE_DOUBLE(CFRetain(*&x));
                                  goto LABEL_505;
                                }

                                v356 = CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(v318, 0);
                                *(v322 + 28) = v356;
                                if (!v356)
                                {
                                  goto LABEL_509;
                                }

LABEL_446:
                                if (!OUTLINED_FUNCTION_69_1() || !CMPhotoCFDictionaryGetFloatIfPresent())
                                {
                                  goto LABEL_502;
                                }

                                OUTLINED_FUNCTION_15_14();
                                do
                                {
                                  OUTLINED_FUNCTION_57_1();
                                  if (!v22 & v254)
                                  {
                                    v335 = 0;
                                  }

                                  else
                                  {
                                    v335 = v334 < 1073700000.0;
                                  }
                                }

                                while (v335);
                                *(v322 + 44) = llroundf(v332 * v333);
                                *(v322 + 48) = v331;
                                OUTLINED_FUNCTION_15_14();
                                do
                                {
                                  OUTLINED_FUNCTION_57_1();
                                  if (!v22 & v254)
                                  {
                                    v340 = 0;
                                  }

                                  else
                                  {
                                    v340 = v339 < 1073700000.0;
                                  }
                                }

                                while (v340);
                                *(v322 + 52) = llroundf(v337 * v338);
                                *(v322 + 56) = v336;
                                v341 = 1;
                                if (v321)
                                {
LABEL_459:
                                  v342 = CFDictionaryGetValue(v321, @"SourceCropRect");
                                  if (v342)
                                  {
                                    v343 = v342;
                                    rect.origin.x = CMPhotoGetPixelBufferCLAPAsRect(v414);
                                    rect.origin.y = v344;
                                    rect.size.width = v345;
                                    rect.size.height = v346;
                                    v347 = *(MEMORY[0x1E695F058] + 16);
                                    v412.origin = *MEMORY[0x1E695F058];
                                    v412.size = v347;
                                    if (CGRectMakeWithDictionaryRepresentation(v343, &v412))
                                    {
                                      v348.f64[0] = v412.origin.x;
                                      CompressionCompatiblePixelBuffer = CMPhotoApplyCropRectToRect(&rect, v348, v412.origin.y, v412.size.width, v412.size.height);
                                      if (CompressionCompatiblePixelBuffer)
                                      {
                                        goto LABEL_510;
                                      }

                                      *(v322 + 32) = vmovn_s64(vcvtq_u64_f64(vrndaq_f64(rect.size)));
                                    }
                                  }

                                  v349 = (v322 + 24);
                                  CMPhotoCFDictionaryGetIntIfPresent();
                                  LODWORD(rect.origin.x) = 0;
                                  if (FigCFDictionaryGetFloatIfPresent())
                                  {
                                    if (*&rect.origin.x < 0.0 || *&rect.origin.x > 1.0)
                                    {
LABEL_509:
                                      fig_log_get_emitter();
                                      OUTLINED_FUNCTION_2_35();
                                      CompressionCompatiblePixelBuffer = FigSignalErrorAtGM();
LABEL_510:
                                      XMPData = CompressionCompatiblePixelBuffer;
                                      v316 = 0;
                                      goto LABEL_511;
                                    }

                                    v341 = *&rect.origin.x == 1.0;
                                  }

                                  goto LABEL_469;
                                }

LABEL_506:
                                v349 = (v322 + 24);
LABEL_469:
                                v351 = *v349;
                                if ((*v349 - 2) < 2)
                                {
                                  goto LABEL_472;
                                }

                                if (v351 == 5)
                                {
                                  JPEGXLFromPixelBuffer = _createJPEGXLFromPixelBuffer(v414, v321, v322);
                                  goto LABEL_478;
                                }

                                if (!v351)
                                {
LABEL_472:
                                  if (v341)
                                  {
                                    v352 = 3;
                                  }

                                  else
                                  {
                                    v352 = 2;
                                  }

                                  *v349 = v352;
                                }

                                JPEGXLFromPixelBuffer = _createJPEGFromPixelBuffer(v414, v321, v341);
LABEL_478:
                                XMPData = JPEGXLFromPixelBuffer;
                                v355 = MEMORY[0x1E695FF58];
                                if (!JPEGXLFromPixelBuffer)
                                {
                                  XMPData = CMPhotoAuxiliaryImageMetadataCreateXMPData(v388[0], v320, v415, *(v322 + 28), *(v322 + 16), (v322 + 8));
                                }

                                v316 = 0;
LABEL_481:
                                if (v414)
                                {
                                  CFRelease(v414);
                                }

                                if (v415)
                                {
                                  CFRelease(v415);
                                }

                                if (v316)
                                {
                                  CFRelease(v316);
                                }

                                HIDWORD(v411) = XMPData;
                                v314 = *v355;
                                if (*v355 == 1)
                                {
                                  OUTLINED_FUNCTION_42();
                                  kdebug_trace();
                                  XMPData = HIDWORD(v411);
                                  v314 = *v355;
                                }

                                if (XMPData)
                                {
                                  return HIDWORD(v411);
                                }

                                v313 = v394 + 1;
                                if (v394 + 1 >= a1[435])
                                {
                                  goto LABEL_515;
                                }
                              }

                              v330 = 2;
LABEL_445:
                              *(v322 + 28) = v330;
                              goto LABEL_446;
                            }
                          }

LABEL_515:
                          v359 = v385;
                          if (v385 == 0)
                          {
                            _tileDescriptionInitialize(a1);
                            v363 = a1[427];
                            v359 = a1[426];
                            v362 = a1[425];
                            v360 = a1[25];
                            v361 = a1[26];
                          }

                          else
                          {
                            v360 = a1[25];
                            v361 = a1[26];
                            if (v360 >= SDWORD2(v385))
                            {
                              v362 = DWORD2(v385);
                            }

                            else
                            {
                              v362 = a1[25];
                            }

                            a1[425] = v362;
                            if (v361 < v385)
                            {
                              v359 = v361;
                            }

                            a1[426] = v359;
                            v363 = (v361 + v359 - 1) / v359 * ((v360 + v362 - 1) / v362);
                            a1[427] = v363;
                          }

                          if (v359 * v363 * v362 >= v360 * v361)
                          {
                            HIDWORD(v411) = _prepareAnalogBalance(a1);
                            if (!HIDWORD(v411) && *(a1 + 8) && *(a1 + 28))
                            {
                              v364 = MEMORY[0x1E695FF58];
                              if (*MEMORY[0x1E695FF58] == 1)
                              {
                                OUTLINED_FUNCTION_6();
                                kdebug_trace();
                              }

                              HIDWORD(v411) = _applyLossyJPEGPerceptualCurve(a1, v384);
                              if (*v364 == 1)
                              {
                                OUTLINED_FUNCTION_42();
                                kdebug_trace();
                              }
                            }

                            return HIDWORD(v411);
                          }

LABEL_544:
                          fig_log_get_emitter();
                          OUTLINED_FUNCTION_2_35();
                          goto LABEL_38;
                        }

LABEL_334:
                        v281 = -16556;
                        goto LABEL_322;
                      }

                      a1[39] = 8;
                      v297 = 255;
                    }

                    else
                    {
                      a1[34] = 16;
                      a1[39] = 16;
                      if (HIBYTE(v408))
                      {
                        v298 = 4;
                      }

                      else
                      {
                        v298 = 2;
                      }

                      a1[419] = v298;
                      v297 = vrev64_s32(vshl_s32(*(a1 + 32), vneg_s32(vdup_n_s32(v298))));
                    }

                    *(a1 + 37) = v297;
                    goto LABEL_404;
                  }

LABEL_546:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0();
                  FigSignalErrorAtGM();
                  return HIDWORD(v411);
                }

LABEL_542:
                HIDWORD(v411) = _readInt32Array(v280, 2, (a1 + 46));
                if (HIDWORD(v411))
                {
                  goto LABEL_546;
                }

                *(a1 + 192) = 1;
                goto LABEL_366;
              }
            }

            else if (v368)
            {
              goto LABEL_320;
            }

            if (!v278)
            {
              goto LABEL_365;
            }

            goto LABEL_540;
          }

          if (v269)
          {
            HIDWORD(v411) = _floatArrayToRational(v269, (a1 + 124), 2);
            if (HIDWORD(v411))
            {
              return HIDWORD(v411);
            }

            goto LABEL_307;
          }
        }

LABEL_321:
        v281 = -16555;
        goto LABEL_322;
      }
    }
  }

  return HIDWORD(v411);
}

void _addRawImageTags(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_65_1();
  v146 = *MEMORY[0x1E69E9840];
  cf = 0;
  v139 = 0;
  v140 = 0;
  *bytes = 0;
  OUTLINED_FUNCTION_42_3(v8, 254, v9, v10, bytes);
  v11 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v11, 256, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v15, 257, v16, v17, v18);
  if (*(v5 + 8))
  {
    *bytes = *(v5 + 156);
    *&bytes[2] = *bytes;
    *&bytes[4] = *bytes;
    OUTLINED_FUNCTION_94_1(v4, 258, v19, v20, bytes);
    OUTLINED_FUNCTION_75_1();
    if (!v84 & v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = dword_1A5ABCB58[v24];
    }

    LODWORD(v137) = v26;
    OUTLINED_FUNCTION_40_3(v4, v21, v22, v23, &v137);
    LODWORD(v137) = 34892;
    OUTLINED_FUNCTION_39_2(v4, v27, v28, v29, &v137);
    LODWORD(v137) = 3;
    v42 = &v137;
  }

  else
  {
    *bytes = 16;
    OUTLINED_FUNCTION_41_3(v4, 258, v19, v20, bytes);
    OUTLINED_FUNCTION_75_1();
    v30 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_40_3(v30, v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_39_2(v35, v36, v37, v38, v39);
    *bytes = 1;
    v42 = bytes;
  }

  OUTLINED_FUNCTION_41_3(v4, 277, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_41_3(v43, 284, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v47, 322, v48, v49, v50);
  v51 = OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_42_3(v51, 323, v52, v53, v54);
  if (*(v5 + 1712) && *(v5 + 1712) != 17)
  {
    v55 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_41_3(v55, 50975, v56, v57, v58);
    v59 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_41_3(v59, 52547, v60, v61, v62);
  }

  *a3 = _ifdAddTag4(v4, 324, 4, *(v5 + 1708), 0);
  *a4 = _ifdAddTag4(v4, 325, 4, *(v5 + 1708), 0);
  if (*(v5 + 8))
  {
    *bytes = *(v5 + 152);
    *&bytes[2] = *bytes;
    *&bytes[4] = *bytes;
    LOWORD(v137) = *(v5 + 148);
    WORD1(v137) = v137;
    WORD2(v137) = v137;
    OUTLINED_FUNCTION_94_1(v4, 50714, v63, v64, bytes);
    OUTLINED_FUNCTION_94_1(v4, 50717, v65, v66, &v137);
    if (*(v5 + 144) != 1)
    {
      goto LABEL_15;
    }

    HIDWORD(v141) = 1;
    v67 = &v141 + 2;
    v68 = v4;
    v69 = -14426;
    v70 = 4;
  }

  else
  {
    _ifdAddTag4(v4, 50713, 3, 2uLL, _addRawImageTags_blackLevelRepeatDim);
    v71 = OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_41_3(v71, 50714, v72, v73, v74);
    v68 = OUTLINED_FUNCTION_13_19();
    v69 = -14819;
    v70 = 3;
  }

  _ifdAddTag4(v68, v69, v70, 1uLL, v67);
LABEL_15:
  if (!*(v5 + 8))
  {
    if (*(v5 + 1696) == 4)
    {
      v75 = &_addRawImageTags_CFARepeatPatternDim;
    }

    else
    {
      v75 = &_addRawImageTags_CFARepeatPatternDimQuadra;
    }

    _ifdAddTag4(v4, 33421, 3, 2uLL, v75);
    _ifdAddTag4(v4, 33422, 1, *(v5 + 1696), (v5 + 1680));
    _ifdAddTag4(v4, 50710, 1, 3uLL, _addRawImageTags_CFAPlaneColor);
    if (*(v5 + 180))
    {
      _ifdAddTag4(v4, 50829, 4, 4uLL, (v5 + 164));
    }

    if (*(v5 + 192))
    {
      _ifdAddTag4(v4, 50719, 4, 2uLL, (v5 + 184));
    }

    if (*(v5 + 204))
    {
      _ifdAddTag4(v4, 50720, 4, 2uLL, (v5 + 196));
    }
  }

  v76 = *(v5 + 2128);
  if (v76)
  {
    _ifdAddTag4(v4, 50712, 3, *(v5 + 2136), v76);
  }

  if (*(v5 + 12) == 2)
  {
    if (_cmphotoDNGOPCodeWriterOpen(&cf))
    {
      goto LABEL_64;
    }

    if (*(v5 + 1956) >= 1)
    {
      v115 = 0;
      v116 = 1752;
      while (!_cmphotoDNGOPCodeWriterStartOPCode(&cf, 8u, 0))
      {
        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 0))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 0))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 104)))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 100)))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, v115))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 1u))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 1u))
        {
          break;
        }

        if (_cmphotoDNGOPCodeWriterWrite32(&cf, 1u))
        {
          break;
        }

        v117 = v5 + 4 * v115;
        if (_cmphotoDNGOPCodeWriterWrite32(&cf, *(v117 + 1944) - 1))
        {
          break;
        }

        v144 = 0u;
        v145 = 0u;
        *bytes = 0u;
        v143 = 0u;
        v118 = *(v117 + 1944);
        if (v118 >= 1)
        {
          memcpy(bytes, (v5 + v116), 8 * v118);
        }

        if (_cmphotoDNGOPCodeWriterWriteDoubles(&cf, bytes, v118) || _cmphotoDNGOPCodeWriterEndOPCode(&cf))
        {
          break;
        }

        ++v115;
        v116 += 64;
        if (v115 >= *(v5 + 1956))
        {
          goto LABEL_123;
        }
      }

      goto LABEL_64;
    }

LABEL_123:
    *bytes = 0;
    _cmphotoDNGOPCodeWriterCloseAndCopyData(&cf, bytes);
    if (*bytes)
    {
      Length = CFDataGetLength(*bytes);
      CFDataGetBytePtr(*bytes);
      v120 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v120, 51009, 7, Length, v121);
      if (*bytes)
      {
        CFRelease(*bytes);
      }
    }
  }

  v77 = *(v5 + 984);
  if (v77 == 20)
  {
    v78 = 3;
  }

  else
  {
    v78 = v77 == 8;
  }

  v79 = *(v5 + 1472);
  v80 = v77 == 8 || v77 == 20;
  if (v79 == 59)
  {
    v81 = 3;
  }

  else
  {
    v81 = v79 == 21;
  }

  v82 = *(v5 + 1592);
  if (v82 == 14)
  {
    v83 = 3;
  }

  else
  {
    v83 = v82 == 6;
  }

  if ((v80 & 1) != 0 || (v79 != 59 ? (v84 = v79 == 21) : (v84 = 1), !v84 ? (v85 = v82 == 14) : (v85 = 1), !v85 ? (v86 = v82 == 6) : (v86 = 1), v86 || *(v5 + 1656) || *(v5 + 2120)))
  {
    if (_cmphotoDNGOPCodeWriterOpen(&cf))
    {
      goto LABEL_64;
    }

    v101 = v79 == 59 || v79 == 21;
    if (v101 && _cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 0xEu, v81, v5 + 992, *(v5 + 1472), v80, *(v5 + 1476)))
    {
      goto LABEL_64;
    }

    v102 = v77 == 20 || v77 == 8;
    if (v102 && _cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 1u, v78, v5 + 824, *(v5 + 984), 0, 0))
    {
      goto LABEL_64;
    }

    if ((v82 | 8) == 0xE && _cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 2u, v83, v5 + 1480, *(v5 + 1592), 0, 0))
    {
      goto LABEL_64;
    }

    v103 = *(v5 + 1656);
    if (v103)
    {
      if (_cmphotoDNGOPCodeWriterWriteStandardOPCode(&cf, 3u, 0, v5 + 1600, v103, 0, 0))
      {
        goto LABEL_64;
      }
    }

    v104 = *(v5 + 2120);
    if (v104)
    {
      v105 = *(v5 + 2072);
      v106 = *(v5 + 2076);
      v107 = *(v5 + 2112);
      v108 = CFGetTypeID(v104);
      if (v108 != CFDataGetTypeID())
      {
        goto LABEL_64;
      }

      v109 = (v106 * v105 * v107);
      if (CFDataGetLength(*(v5 + 2120)) != 4 * v109 || _cmphotoDNGOPCodeWriterStartOPCode(&cf, 9u, 0) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2040)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2044)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2048)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2052)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2056)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2060)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2064)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2068)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2072)) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2076)) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2080, 1u) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2088, 1u) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2096, 1u) || _cmphotoDNGOPCodeWriterWriteDoubles(&cf, v5 + 2104, 1u) || _cmphotoDNGOPCodeWriterWrite32(&cf, *(v5 + 2112)))
      {
        goto LABEL_64;
      }

      BytePtr = CFDataGetBytePtr(*(v5 + 2120));
      if (v109)
      {
        v111 = BytePtr;
        v112 = cf;
        v114 = HIDWORD(v139);
        v113 = v140;
        do
        {
          if (v114)
          {
            *bytes = bswap32(*v111);
            CFDataAppendBytes(v112, bytes, 4);
            v113 += 4;
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_1();
            if (FigSignalErrorAtGM())
            {
              goto LABEL_64;
            }
          }

          ++v111;
          --v109;
        }

        while (v109);
        LODWORD(v140) = v113;
      }

      if (_cmphotoDNGOPCodeWriterEndOPCode(&cf))
      {
        goto LABEL_64;
      }
    }

    *bytes = 0;
    _cmphotoDNGOPCodeWriterCloseAndCopyData(&cf, bytes);
    if (*bytes)
    {
      v122 = CFDataGetLength(*bytes);
      CFDataGetBytePtr(*bytes);
      v123 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v123, 51022, 7, v122, v124);
      if (*bytes)
      {
        CFRelease(*bytes);
      }
    }
  }

  v87 = *(v5 + 2032);
  if (v87)
  {
    if (*(v5 + 2024))
    {
      v88 = CFDataGetLength(v87);
      CFDataGetBytePtr(*(v5 + 2032));
      v89 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v89, 52525, 7, v88, v90);
    }

    else
    {
      v91 = (*(v5 + 1964) * *(v5 + 1960) * *(v5 + 2000));
      v92 = (4 * v91);
      if (CFDataGetLength(v87) != v92)
      {
        goto LABEL_64;
      }

      Mutable = CFDataCreateMutable(0, (v92 + 64));
      *bytes = bswap32(*(v5 + 1960));
      CFDataAppendBytes(Mutable, bytes, 4);
      OUTLINED_FUNCTION_14_18(*(v5 + 1964), v125, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1968), v126, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1976), v127, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1984), v128, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_24_3(*(v5 + 1992), v129, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2000), v130, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2004), v131, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2008), v132, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2012), v133, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2016), v134, v137, cf, v139, v140, v141, *bytes);
      OUTLINED_FUNCTION_14_18(*(v5 + 2020), v135, v137, cf, v139, v140, v141, *bytes);
      v94 = CFDataGetBytePtr(*(v5 + 2032));
      if (v91)
      {
        v95 = v94;
        do
        {
          v96 = *v95++;
          OUTLINED_FUNCTION_14_18(v96, v136, v137, cf, v139, v140, v141, *bytes);
          --v91;
        }

        while (v91);
      }

      v97 = CFDataGetLength(Mutable);
      CFDataGetBytePtr(Mutable);
      v98 = OUTLINED_FUNCTION_73_1();
      _ifdAddTag4(v98, 52525, 7, v97, v99);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  v100 = *(v5 + 816);
  if (v100 >= 1)
  {
    _ifdAddTag4(v4, 51041, 12, v100, (v5 + 768));
  }

LABEL_64:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _setVersionArrayFromVersionString(CFStringRef theString, uint64_t a2)
{
  if (!theString)
  {
    return 4294950741;
  }

  if (!a2)
  {
    return 4294950746;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @".");
  v4 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings)
  {
    CFAutorelease(ArrayBySeparatingStrings);
  }

  if (CFArrayGetCount(v4) == 4)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      IntValue = CFStringGetIntValue(ValueAtIndex);
      if (IntValue > 9)
      {
        break;
      }

      *(a2 + v5++) = IntValue;
      if (v5 == 4)
      {
        return 0;
      }
    }
  }

  return 4294950741;
}

uint64_t _unpackArrayOfDoubles(const __CFArray *a1, unsigned int a2, char *a3, _DWORD *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count <= a2)
  {
    v9 = Count;
    if (!Count)
    {
LABEL_8:
      result = 0;
      *a4 = v9;
      return result;
    }

    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      v12 = CFGetTypeID(ValueAtIndex);
      if (v12 != CFNumberGetTypeID() || !CFNumberIsFloatType(ValueAtIndex) || !CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, a3))
      {
        break;
      }

      ++v10;
      a3 += 8;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  return 4294950740;
}

uint64_t _floatArrayToRational(const __CFArray *a1, uint64_t a2, int a3)
{
  v21 = 0;
  if (!a1)
  {
    return 4294950740;
  }

  Count = CFArrayGetCount(a1);
  if (Count != a3)
  {
    return 4294950740;
  }

  if (a3 >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      IsFloatType = CFNumberIsFloatType(ValueAtIndex);
      if (!IsFloatType || !OUTLINED_FUNCTION_70_1(IsFloatType, v11, &v21))
      {
        break;
      }

      OUTLINED_FUNCTION_15_14();
      do
      {
        OUTLINED_FUNCTION_57_1();
        if (!v17 & v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v15 < 1073700000.0;
        }
      }

      while (v18);
      v19 = (a2 + 8 * v8);
      *v19 = llroundf(v13 * v14);
      v19[1] = v12;
      if (++v8 == v7)
      {
        return 0;
      }
    }

    return 4294950740;
  }

  return 0;
}

uint64_t _readInt32Array(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFArrayGetTypeID())
  {
    return 4294950740;
  }

  v7 = a1 ? CFArrayGetCount(a1) : 0;
  if (v7 != a2)
  {
    return 4294950740;
  }

  if (a2 >= 1)
  {
    v8 = 0;
    do
    {
      FigCFArrayGetInt32AtIndex();
      ++v8;
      a3 += 4;
    }

    while (a2 != v8);
  }

  return 0;
}

uint64_t _parseOutWidthAndHeightFromJpeg(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v2 = CGImageSourceCreateWithData(*(a1 + 1720), 0);
  if (!v2)
  {
    return 4294950745;
  }

  v3 = v2;
  v4 = *MEMORY[0x1E696E0A8];
  values = *MEMORY[0x1E695E4C0];
  keys[0] = v4;
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v5)
  {
    v10 = 4294950745;
    v9 = v3;
LABEL_6:
    CFRelease(v9);
    return v10;
  }

  v6 = v5;
  v7 = OUTLINED_FUNCTION_5();
  v9 = CGImageSourceCopyPropertiesAtIndex(v7, v8, v6);
  if (v9)
  {
    *(a1 + 1728) = 0;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    v10 = 0;
  }

  else
  {
    v10 = 4294950745;
  }

  CFRelease(v3);
  CFRelease(v6);
  if (v9)
  {
    goto LABEL_6;
  }

  return v10;
}

CFTypeRef _copyFilteredImageProperties(const __CFDictionary *a1)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E696D9B0];
  v2 = *MEMORY[0x1E696DBF0];
  v35[0] = *MEMORY[0x1E696D9B0];
  v35[1] = v2;
  v35[2] = *MEMORY[0x1E696DE30];
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = *MEMORY[0x1E695E480];
  v5 = OUTLINED_FUNCTION_53();
  Mutable = CFDictionaryCreateMutable(v5, v6, v7, v8);
  if (!Mutable)
  {
    return 0;
  }

  theDict = Mutable;
  v10 = 0;
  key = *MEMORY[0x1E696DB48];
  v32 = v1;
  v29 = v3;
  do
  {
    v11 = v35[v10];
    Value = CFDictionaryGetValue(v3, v11);
    if (Value)
    {
      v13 = Value;
      v14 = CFGetTypeID(Value);
      if (v14 == CFDictionaryGetTypeID() && CFDictionaryGetCount(v13) >= 1)
      {
        if (CFStringCompare(v11, v1, 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = CFDictionaryContainsKey(v13, key) == 0;
        }

        v16 = FigCFEqual();
        v17 = v16;
        if (v16)
        {
          v18 = &sExifTagBlackList;
        }

        else
        {
          v18 = 0;
        }

        if (v16 || v15)
        {
          v20 = OUTLINED_FUNCTION_53();
          MutableCopy = CFDictionaryCreateMutableCopy(v20, v21, v13);
          if (v15)
          {
            v34 = 1;
            v33 = 131074;
            v23 = CFArrayCreateMutable(v4, 3, MEMORY[0x1E695E9C0]);
            for (i = 0; i != 6; i += 2)
            {
              v25 = CFNumberCreate(v4, kCFNumberShortType, &v33 + i);
              CFArrayAppendValue(v23, v25);
              if (v25)
              {
                CFRelease(v25);
              }
            }

            CFDictionaryAddValue(MutableCopy, key, v23);
            if (v23)
            {
              CFRelease(v23);
            }

            v3 = v29;
          }

          if (v17)
          {
            for (j = 0; j != 32; j += 8)
            {
              CFDictionaryRemoveValue(MutableCopy, **&v18[j]);
            }
          }

          v19 = CFRetain(MutableCopy);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }
        }

        else
        {
          v19 = CFRetain(v13);
        }

        v1 = v32;
        if (v19)
        {
          if (CFDictionaryGetCount(v19) >= 1)
          {
            CFDictionaryAddValue(theDict, v11, v19);
          }

          CFRelease(v19);
        }
      }
    }

    ++v10;
  }

  while (v10 != 3);
  if (CFDictionaryGetCount(theDict) < 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = CFRetain(theDict);
  }

  CFRelease(theDict);
  return v27;
}

uint64_t _prepareAnalogBalance(uint64_t a1)
{
  v18[3] = *MEMORY[0x1E69E9840];
  *(a1 + 2156) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 2160) = _D0;
  if (!*(a1 + 512))
  {
    return 0;
  }

  v7 = (a1 + 472);
  v8 = (a1 + 2156);
  if (!*(a1 + 29) || *(a1 + 568))
  {
    if (*(a1 + 30))
    {
      result = 0;
      *v8 = vcvt_f32_f64(*v7);
      v10 = *(a1 + 488);
      *(a1 + 2164) = v10;
      return result;
    }

    return 0;
  }

  __asm { FMOV            V1.2D, #1.0 }

  v12 = vdivq_f64(_Q1, *v7);
  v13 = 1.0 / *(a1 + 488);
  if (!*(a1 + 30))
  {
    *v8 = vcvt_f32_f64(v12);
    v14 = v13;
    *(a1 + 2164) = v14;
  }

  v16 = v12.f64[1];
  v18[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v12.f64[0]];
  v18[1] = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v18[2] = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  result = _floatArrayToRational(v15, a1 + 516, 3);
  if (!result)
  {
    v17 = 0;
    result = _unpackArrayOfDoubles(v15, 3u, (a1 + 544), &v17);
    if (!result)
    {
      if (v17 == 3)
      {
        *(a1 + 568) = 1;
        result = _floatArrayToRational(&unk_1F194A480, a1 + 444, 3);
        if (!result)
        {
          result = _unpackArrayOfDoubles(&unk_1F194A480, 3u, v7, &v17);
          if (!result)
          {
            if (v17 == 3)
            {
              return 0;
            }

            else
            {
              return 4294950746;
            }
          }
        }
      }

      else
      {
        return 4294950746;
      }
    }
  }

  return result;
}

uint64_t _cmphotoDNGOPCodeWriterOpen(__CFData **a1)
{
  a1[1] = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  *a1 = Mutable;
  if (!Mutable)
  {
    return 4294950745;
  }

  CFDataSetLength(Mutable, 4);
  return 0;
}

uint64_t _cmphotoDNGOPCodeWriterWriteDoubles(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 12))
  {
    if (a3)
    {
      OUTLINED_FUNCTION_65_1();
      Length = CFDataGetLength(*v6);
      v8 = 8 * a3;
      v9 = a3;
      CFDataIncreaseLength(*v3, 8 * a3);
      v10 = &CFDataGetMutableBytePtr(*v3)[Length];
      do
      {
        v11 = *v4++;
        CMPhotoDNGWriteDouble(v10++, 1, v11);
        --v9;
      }

      while (v9);
      *(v3 + 16) += v8;
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();

    return FigSignalErrorAtGM();
  }
}

uint64_t _cmphotoDNGOPCodeWriterWriteStandardOPCode(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  result = _cmphotoDNGOPCodeWriterStartOPCode(a1, a2, a6);
  if (!result)
  {
    if (!a3 || (result = _cmphotoDNGOPCodeWriterWrite32(a1, a3), !result))
    {
      result = _cmphotoDNGOPCodeWriterWriteDoubles(a1, a4, a5);
      if (!result)
      {
        if (a2 != 14 || (result = _cmphotoDNGOPCodeWriterWrite32(a1, a7), !result))
        {

          return _cmphotoDNGOPCodeWriterEndOPCode(a1);
        }
      }
    }
  }

  return result;
}

uint64_t _cmphotoDNGWriterIFDInsert(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    return 4294950745;
  }

  theData = Mutable;
  CFDataAppendBytes(*(a1 + 40), zero, 2);
  v9 = &CFDataGetMutableBytePtr(*(a1 + 40))[a4];
  Length = CFDataGetLength(*(a1 + 40));
  CMPhotoDNGWrite32(v9, Length, *(a1 + 48));
  v33 = a2;
  v11 = (a2 + a3);
  v12 = CMPhotoDNGRead16(v11, *(a1 + 48));
  v13 = CFDataGetLength(*(a1 + 40));
  *bytes = v12;
  if (*(a1 + 48) == 1)
  {
    *bytes = __rev16(v12);
  }

  CFDataAppendBytes(*(a1 + 40), bytes, 2);
  if (v12)
  {
    v14 = (v11 + 1);
    v32 = 12 * v12 + v13 + 6;
    v35 = a1;
    do
    {
      Tag = _readTag(v14, *(a1 + 48));
      v17 = Tag;
      v18 = v16;
      v19 = HIDWORD(Tag);
      v20 = WORD1(Tag);
      v21 = HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)];
      if (v21 >= 5)
      {
        v22 = v16;
        v18 = v32 + CFDataGetLength(theData);
        CFDataAppendBytes(theData, (v33 + v22), v21);
        if (v21)
        {
          bytes[0] = 0;
          CFDataAppendBytes(theData, bytes, 1);
        }
      }

      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v37 = v18;
      v39 = 0;
      *v38 = 0;
      CMPhotoDNGWrite16(v38, v17, v24);
      CMPhotoDNGWrite16(&v38[2], v20, v24);
      CMPhotoDNGWrite32(&v38[4], v19, v24);
      if (v21 <= 4 && ((0x2A10uLL >> v20) & 1) == 0)
      {
        if ((0xC6uLL >> v20))
        {
          __memcpy_chk();
        }

        else if (HIWORD(v17) == 8 || HIWORD(v17) == 3)
        {
          CMPhotoDNGWrite16(&v39, v18, v24);
          if (v19 == 2)
          {
            CMPhotoDNGWrite16(&v39 + 1, SHIWORD(v18), v24);
          }
        }
      }

      else
      {
        CMPhotoDNGWrite32(&v39, v18, v24);
      }

      CFDataAppendBytes(v23, v38, 12);
      v14 += 12;
      --v12;
      a1 = v35;
    }

    while (v12);
  }

  *bytes = 0;
  CFDataAppendBytes(*(a1 + 40), bytes, 4);
  v27 = CFDataGetLength(theData);
  if (v27)
  {
    v28 = v27;
    v29 = *(a1 + 40);
    BytePtr = CFDataGetBytePtr(theData);
    CFDataAppendBytes(v29, BytePtr, v28);
    CFDataAppendBytes(*(a1 + 40), zero, -v28 & 3);
  }

  CFRelease(theData);
  return 0;
}

uint64_t ___addAuxiliaryImagesToJPEGData_block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294950739;
  }

  v3 = [a2 objectForKeyedSubscript:@"ImageList"];
  if (v3)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"Auxiliary"];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 count];
        if (v7 < 1)
        {
          return 0;
        }

        v8 = (v7 & 0x7FFFFFFF) + 1;
        while (1)
        {
          v9 = [objc_msgSend(v6 objectAtIndexedSubscript:{v8 - 2), "objectForKeyedSubscript:", @"ImageHandle"}];
          if (!v9)
          {
            break;
          }

          if (([*(a1 + 32) containsObject:v9] & 1) == 0)
          {
            [v6 removeObjectAtIndex:v8 - 2];
          }

          if (--v8 <= 1)
          {
            return 0;
          }
        }
      }
    }
  }

  return 4294950739;
}

uint64_t _cmphotoDNGReaderInit(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294950746;
  }

  OUTLINED_FUNCTION_65_1();
  *v4 = 0u;
  v4[1] = 0u;
  *v2 = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v3);
  *(v2 + 8) = Length;
  if (Length < 9)
  {
    return 4294950743;
  }

  v7 = *v2;
  if (**v2 == _MergedGlobals_2)
  {
    v9 = 0;
  }

  else
  {
    if (*v7 != dword_1ED6FA2A4)
    {
      return 4294950743;
    }

    v9 = 1;
  }

  *(v2 + 26) = v9;
  v10 = CMPhotoDNGRead32(v7 + 1, v9);

  return _cmphotoDNGReaderOpenIFD(v2, v10);
}

uint64_t _readPreviewTags(uint64_t a1, CFDataRef *a2)
{
  if (*(a1 + 24))
  {
    while (1)
    {
      v4 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v4, v5) == 277)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v8 = 0;
        if (v6)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    v9 = OUTLINED_FUNCTION_37_4();
    _readTag(v9, v10);
    v8 = v11 == 3;
    if (!*(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_8:
    while (1)
    {
      v12 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v12, v13) == 254)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v15 = 0;
        if (v14)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    v16 = OUTLINED_FUNCTION_37_4();
    _readTag(v16, v17);
    v15 = v18 == 1;
    if (!*(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_14:
    while (1)
    {
      v19 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v19, v20) == 273)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v22 = 0;
        LODWORD(v23) = 0;
        if (v21)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v27 = OUTLINED_FUNCTION_37_4();
    v23 = _readTag(v27, v28) >> 32;
    v22 = v29;
    if (!*(a1 + 24))
    {
      goto LABEL_18;
    }

LABEL_22:
    while (1)
    {
      v30 = OUTLINED_FUNCTION_37_4();
      if (CMPhotoDNGRead16(v30, v31) == 279)
      {
        break;
      }

      OUTLINED_FUNCTION_20_10();
      if (v7)
      {
        v33 = 0;
        LODWORD(v34) = 0;
        if (!v32)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    v35 = OUTLINED_FUNCTION_37_4();
    v34 = _readTag(v35, v36) >> 32;
    v33 = v37;
    if (!*(a1 + 24))
    {
      goto LABEL_33;
    }

LABEL_28:
    v38 = 0;
    v39 = *(a1 + 16);
    while (CMPhotoDNGRead16(v39, *(a1 + 26)) != 259)
    {
      v39 += 6;
      if (++v38 >= *(a1 + 24))
      {
        goto LABEL_33;
      }
    }

    _readTag(v39, *(a1 + 26));
LABEL_33:
    v24 = 0;
    if (v23 && v34)
    {
      v41 = v23 == 1 && v34 == 1;
      if (!v41 || !v15 || !v8)
      {
        return 4294950743;
      }

      v24 = CFDataCreate(*MEMORY[0x1E695E480], (*a1 + v22), v33);
      if (v24)
      {
        goto LABEL_19;
      }

      return 4294950745;
    }
  }

  else
  {
LABEL_18:
    v24 = 0;
  }

LABEL_19:
  v25 = 0;
  *a2 = v24;
  return v25;
}

uint64_t _readRawImageTags(unint64_t a1, __CFDictionary *a2, uint64_t a3, int a4, int *a5, int *a6, int *a7, int *a8, _DWORD *a9, _DWORD *a10, _BYTE *a11, int *a12, _DWORD *a13, _DWORD *a14, void *a15, uint64_t *a16)
{
  if (!a1)
  {
    return 4294950746;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_12;
  }

  LODWORD(v17) = a4;
  while (1)
  {
    v19 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v19, v20) == 254)
    {
      break;
    }

    OUTLINED_FUNCTION_54_1();
    if (!v21)
    {
      goto LABEL_12;
    }
  }

  v22 = OUTLINED_FUNCTION_16_8();
  _readTag(v22, v23);
  if ((v24 | 0x10) != 0x10)
  {
    return 4294950738;
  }

  v25 = v24 != 16;
  if (!*(a1 + 24))
  {
LABEL_12:
    *a14 = 0;
    return 4294950738;
  }

  v26 = *(a1 + 16);
  while (1)
  {
    v27 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v27, v28) == 262)
    {
      break;
    }

    OUTLINED_FUNCTION_54_1();
    if (!v29)
    {
      goto LABEL_12;
    }
  }

  v31 = OUTLINED_FUNCTION_16_8();
  _readTag(v31, v32);
  *a14 = v33;
  v34 = v33 == 34892 || v33 == 32803;
  if (!v34)
  {
    return 4294950738;
  }

  v35 = MEMORY[0x1E696D7B0];
  v36 = MEMORY[0x1E696D878];
  if (v33 == 34892)
  {
    if (!*(a1 + 24))
    {
      return 4294950743;
    }

    v253 = a15;
    v39 = 0;
    v40 = *(a1 + 16);
    while (1)
    {
      v41 = OUTLINED_FUNCTION_16_8();
      if (CMPhotoDNGRead16(v41, v42) == 258)
      {
        break;
      }

      v40 += 12;
      ++v39;
      result = 4294950743;
      if (v39 >= *(a1 + 24))
      {
        return result;
      }
    }

    v48 = OUTLINED_FUNCTION_16_8();
    _readTag(v48, v49);
    OUTLINED_FUNCTION_74_1();
    if (v52 * tiffDataTypeToSize[v51] < 5)
    {
      v53 = (v40 + 8);
    }

    else
    {
      v53 = (*a1 + v50);
    }

    v54 = CMPhotoDNGRead16(v53, *(a1 + 26));
    if (v17)
    {
      v55 = 1815491698;
    }

    else
    {
      v55 = 1647589490;
    }

    if (v54 == 8)
    {
      v26 = 1111970369;
    }

    else
    {
      v26 = v55;
    }

    if (!_copyShortsToDictAsArray(a1, 258, @"BitsPerSample", a2))
    {
      return 4294950743;
    }

    if (!_copyShortsOrLongOrRationalToDictAsArray(a1, *v35, a2) && v25)
    {
      return 4294950743;
    }

    if (!_copyShortsToDictAsArray(a1, 50717, *v36, a2) && v25)
    {
      return 4294950743;
    }

    HIDWORD(v251) = v26;
    v252 = a16;
    _copyIntegerTagToDict(a1, 51110);
    _copyStringTagToDict(a1, 50936, *MEMORY[0x1E696D848], a2);
    _copyRationalTagToDict(a1, 50935);
    LODWORD(v251) = 0;
    goto LABEL_59;
  }

  if (v33 != 32803)
  {
    v252 = a16;
    v253 = a15;
    v251 = 0;
    goto LABEL_59;
  }

  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  v253 = a15;
  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v37 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v37, v38) == 258)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v43 = OUTLINED_FUNCTION_16_8();
  _readTag(v43, v44);
  if (v45 != 16 || !*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v46 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v46, v47) == 277)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v60 = OUTLINED_FUNCTION_16_8();
  _readTag(v60, v61);
  if (v62 != 1 || !*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v63 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v63, v64) == 284)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v116 = OUTLINED_FUNCTION_16_8();
  _readTag(v116, v117);
  if (v118 != 1 || !*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  while (1)
  {
    v119 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v119, v120) == 33422)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v136 = OUTLINED_FUNCTION_16_8();
  _readTag(v136, v137);
  OUTLINED_FUNCTION_74_1();
  if (v140 * tiffDataTypeToSize[v141] < 5)
  {
    v142 = (v26 + 8);
  }

  else
  {
    v142 = (*a1 + v139);
  }

  v154 = v140 == 16 || v140 == 4;
  if (!v154 || (v138 & 0xFFFF0000) != 0x10000)
  {
    return 4294950743;
  }

  v155 = v140 == 16 || v140 == 4;
  result = 4294950743;
  if (!v155 || !v142)
  {
    return result;
  }

  if (v140 == 4)
  {
    if (*v142 == 65794)
    {
      v233 = 1650943796;
    }

    else if (*v142 == 33620224)
    {
      v233 = 1919379252;
    }

    else
    {
      HIDWORD(v251) = 1734505012;
      if (*v142 != 16908289)
      {
        if (*v142 != 16777729)
        {
          return result;
        }

        LODWORD(v251) = 0;
        goto LABEL_317;
      }

      v233 = 1735549492;
    }

    LODWORD(v251) = 0;
    HIDWORD(v251) = v233;
  }

  else
  {
    if (v140 != 16)
    {
      return result;
    }

    HIDWORD(v251) = 1651519798;
    if (!memcmp(v142, &kCFAPatternQuadBGGR, 0x10uLL))
    {
      v156 = 5;
    }

    else if (!memcmp(v142, &kCFAPatternQuadRGGB, 0x10uLL))
    {
      v156 = 8;
    }

    else
    {
      if (memcmp(v142, &kCFAPatternQuadGRBG, 0x10uLL))
      {
        return 4294950743;
      }

      v156 = 6;
    }

    LODWORD(v251) = v156;
  }

LABEL_317:
  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_63_1();
  LODWORD(v17) = 50714;
  while (1)
  {
    v234 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v234, v235) == 50714)
    {
      break;
    }

    result = OUTLINED_FUNCTION_9_23();
    if (v179)
    {
      return result;
    }
  }

  v252 = a16;
  v236 = OUTLINED_FUNCTION_16_8();
  Tag = _readTag(v236, v237);
  if (WORD1(Tag) == 5)
  {
    if (!_copyShortsOrLongOrRationalToDictAsArray(a1, *v35, a2))
    {
      return 4294950743;
    }
  }

  else
  {
    if (WORD1(Tag) - 5 < 0xFFFFFFFE || (Tag & 0xFFFFFFFF00000000) != 0x100000000)
    {
      return 4294950743;
    }

    FigCFDictionarySetInt();
  }

  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  v26 = *(a1 + 16);
  while (1)
  {
    v240 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v240, v241) == 50717)
    {
      break;
    }

    OUTLINED_FUNCTION_54_1();
    result = 4294950743;
    if (!v242)
    {
      return result;
    }
  }

  v243 = OUTLINED_FUNCTION_16_8();
  v245 = _readTag(v243, v244);
  if (HIDWORD(v245) != 1 || WORD1(v245) - 5 < 0xFFFFFFFE)
  {
    return 4294950743;
  }

  FigCFDictionarySetInt();
LABEL_59:
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_32_2();
    while (1)
    {
      v58 = OUTLINED_FUNCTION_16_8();
      if (CMPhotoDNGRead16(v58, v59) == 51022)
      {
        break;
      }

      OUTLINED_FUNCTION_4_26();
      if (v179)
      {
        goto LABEL_77;
      }
    }

    v65 = OUTLINED_FUNCTION_16_8();
    _readTag(v65, v66);
    OUTLINED_FUNCTION_74_1();
    if (v69 * tiffDataTypeToSize[v68] < 5)
    {
      v70 = (v26 + 8);
    }

    else
    {
      v70 = (*a1 + v67);
    }

    v71 = CMPhotoDNGRead32(v70, 1);
    if (v71)
    {
      v94 = v71;
      v95 = 0;
      v96 = v70 + 1;
      v259 = *MEMORY[0x1E696D810];
      v256 = *MEMORY[0x1E696D868];
      v254 = *MEMORY[0x1E696D870];
      v97 = *MEMORY[0x1E695E480];
      while (2)
      {
        LODWORD(v36) = CMPhotoDNGRead32(v96, 1);
        v98 = CMPhotoDNGRead32(v96 + 3, 1);
        v99 = v98;
        v17 = v96 + 4;
        switch(v36)
        {
          case 1:
            v100 = OUTLINED_FUNCTION_52_1();
            v102 = 6 * CMPhotoDNGRead32(v100, v101) + 2;
            OUTLINED_FUNCTION_90_1();
            if (v34)
            {
              v17 = v96 + 5;
              v103 = v254;
              goto LABEL_111;
            }

            break;
          case 2:
            v106 = OUTLINED_FUNCTION_52_1();
            v102 = (4 * CMPhotoDNGRead32(v106, v107)) | 2;
            OUTLINED_FUNCTION_90_1();
            if (v34)
            {
              v17 = v96 + 5;
              v103 = v256;
              goto LABEL_111;
            }

            break;
          case 3:
            if (v98 == 56)
            {
              v102 = 7;
              v103 = v259;
              goto LABEL_111;
            }

            break;
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            break;
          case 9:
            v164 = OUTLINED_FUNCTION_52_1();
            v247 = CMPhotoDNGRead32(v164, v165);
            v248 = CMPhotoDNGRead32(v96 + 5, 1);
            v249 = CMPhotoDNGRead32(v96 + 6, 1);
            v250 = CMPhotoDNGRead32(v96 + 7, 1);
            v255 = CMPhotoDNGRead32(v96 + 8, 1);
            v258 = CMPhotoDNGRead32(v96 + 9, 1);
            v261 = CMPhotoDNGRead32(v96 + 10, 1);
            v263 = CMPhotoDNGRead32(v96 + 11, 1);
            v166 = CMPhotoDNGRead32(v96 + 12, 1);
            LODWORD(v17) = CMPhotoDNGRead32(v96 + 13, 1);
            v167 = CMPhotoDNGReadDouble(v96 + 7, 1);
            v168 = CMPhotoDNGReadDouble(v96 + 8, 1);
            v169 = CMPhotoDNGReadDouble(v96 + 9, 1);
            v170 = CMPhotoDNGReadDouble(v96 + 10, 1);
            v171 = CMPhotoDNGRead32(v96 + 22, 1);
            LODWORD(v36) = v17 * v166 * v171;
            v172 = 4 * v36;
            if (v172 + 76 == v99)
            {
              v173 = v171;
              Mutable = CFDataCreateMutable(0, v172);
              if (Mutable)
              {
                v175 = Mutable;
                if (v36)
                {
                  v176 = v96 + 23;
                  do
                  {
                    *bytes = CMPhotoDNGReadFloat(v176++, 1);
                    CFDataAppendBytes(v175, bytes, 4);
                    LODWORD(v36) = v36 - 1;
                  }

                  while (v36);
                }

                v177 = CFDictionaryCreateMutable(v97, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CMPhotoCFDictionarySetInt32(v177, @"top", v247);
                CMPhotoCFDictionarySetInt32(v177, @"left", v248);
                CMPhotoCFDictionarySetInt32(v177, @"bottom", v249);
                CMPhotoCFDictionarySetInt32(v177, @"right", v250);
                CMPhotoCFDictionarySetInt32(v177, @"plane", v255);
                CMPhotoCFDictionarySetInt32(v177, @"planes", v258);
                CMPhotoCFDictionarySetInt32(v177, @"rowPitch", v261);
                CMPhotoCFDictionarySetInt32(v177, @"colPitch", v263);
                CMPhotoCFDictionarySetInt32(v177, @"mapsPointsV", v166);
                CMPhotoCFDictionarySetInt32(v177, @"mapsPointsH", v17);
                CMPhotoCFDictionarySetDouble(v177, @"mapsSpacingV", v167);
                CMPhotoCFDictionarySetDouble(v177, @"mapsSpacingH", v168);
                CMPhotoCFDictionarySetDouble(v177, @"mapOriginV", v169);
                CMPhotoCFDictionarySetDouble(v177, @"mapOriginH", v170);
                CMPhotoCFDictionarySetInt32(v177, @"mapPlanes", v173);
                CFDictionarySetValue(v177, @"gainData", v175);
                CFDictionarySetValue(a2, @"GainMap", v177);
                CFRelease(v175);
                if (v177)
                {
                  CFRelease(v177);
                }
              }
            }

            break;
          default:
            if (v36 == 14)
            {
              v104 = OUTLINED_FUNCTION_52_1();
              v102 = 19 * CMPhotoDNGRead32(v104, v105) + 2;
              if (8 * v102 + 8 == v99)
              {
                v17 = v96 + 5;
                v103 = @"WarpRectilinear2";
LABEL_111:
                if (v102 && v103)
                {
                  v108 = v36 == 14 ? v102 + 1 : v102;
                  v109 = CFArrayCreateMutable(v97, v108, MEMORY[0x1E695E9C0]);
                  if (v109)
                  {
                    do
                    {
                      v110 = OUTLINED_FUNCTION_52_1();
                      v112 = CMPhotoDNGReadDouble(v110, v111);
                      v17 += 2;
                      CMPhotoCFArrayAppendDouble(v109, v112);
                      --v102;
                    }

                    while (v102);
                    if (v36 == 14)
                    {
                      v113 = OUTLINED_FUNCTION_52_1();
                      v115 = CMPhotoDNGRead32(v113, v114);
                      ++v17;
                      CMPhotoCFArrayAppendInt32(v109, v115);
                    }

                    CFDictionarySetValue(a2, v103, v109);
                    CFRelease(v109);
                    ++v95;
                    v96 = v17;
                    if (v95 != v94)
                    {
                      continue;
                    }
                  }
                }
              }
            }

            break;
        }

        break;
      }
    }
  }

LABEL_77:
  _copyDoublesToDictAsArray(a1);
  _copyLongsToDictAsArray(a1, 50829, *MEMORY[0x1E696D768], a2);
  _copyLongsToDictAsArray(a1, 50720, *MEMORY[0x1E696D800], a2);
  _copyLongsToDictAsArray(a1, 50719, *MEMORY[0x1E696D7F8], a2);
  if (!*(a1 + 24))
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_32_2();
  while (1)
  {
    v72 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v72, v73) == 256)
    {
      break;
    }

    OUTLINED_FUNCTION_4_26();
    if (v179)
    {
      v75 = 0;
      goto LABEL_84;
    }
  }

  v76 = OUTLINED_FUNCTION_16_8();
  _readTag(v76, v77);
  v75 = v78;
  v74 = *(a1 + 24);
LABEL_84:
  if (!v74)
  {
    return 4294950743;
  }

  OUTLINED_FUNCTION_32_2();
  while (1)
  {
    v79 = OUTLINED_FUNCTION_16_8();
    if (CMPhotoDNGRead16(v79, v80) == 257)
    {
      break;
    }

    OUTLINED_FUNCTION_29_5();
    result = 4294950743;
    if (v36 >= *(a1 + 24))
    {
      return result;
    }
  }

  v81 = OUTLINED_FUNCTION_16_8();
  _readTag(v81, v82);
  v84 = v83;
  v85 = v75 < 1 || v83 < 1;
  if (v85 || !*(a1 + 24))
  {
    return 4294950743;
  }

  v86 = 0;
  v87 = *(a1 + 16);
  while (1)
  {
    v88 = OUTLINED_FUNCTION_49_0();
    v90 = CMPhotoDNGRead16(v88, v89);
    if (v90 == 324)
    {
      break;
    }

    v87 += 12;
    ++v86;
    v91 = *(a1 + 24);
    if (v86 >= v91)
    {
      v92 = 0;
      LODWORD(v17) = 0;
      v93 = 0;
      goto LABEL_133;
    }
  }

  v121 = OUTLINED_FUNCTION_49_0();
  v92 = _readTag(v121, v122) >> 16;
  OUTLINED_FUNCTION_80_1();
  if (v179)
  {
    v93 = *a1 + v123;
  }

  else
  {
    v93 = v87 + 8;
  }

  v91 = *(a1 + 24);
LABEL_133:
  if (!v91)
  {
    return 4294950743;
  }

  v260 = v93;
  v262 = v84;
  v124 = 0;
  v125 = *(a1 + 16);
  while (1)
  {
    v126 = OUTLINED_FUNCTION_49_0();
    if (CMPhotoDNGRead16(v126, v127) == 325)
    {
      break;
    }

    v125 += 12;
    ++v124;
    v128 = *(a1 + 24);
    if (v124 >= v128)
    {
      v129 = 0;
      LODWORD(v130) = 0;
      v131 = 0;
LABEL_156:
      if (!v128)
      {
        return 4294950743;
      }

      v257 = v129;
      OUTLINED_FUNCTION_32_2();
      while (1)
      {
        v147 = OUTLINED_FUNCTION_16_8();
        v149 = CMPhotoDNGRead16(v147, v148);
        if (v149 == 273)
        {
          break;
        }

        OUTLINED_FUNCTION_4_26();
        if (v179)
        {
          goto LABEL_185;
        }
      }

      v151 = OUTLINED_FUNCTION_16_8();
      v92 = _readTag(v151, v152) >> 16;
      OUTLINED_FUNCTION_80_1();
      v157 = v179 ? *a1 + v153 : v90 + 8;
      v260 = v157;
      v150 = *(a1 + 24);
LABEL_185:
      if (v150)
      {
        OUTLINED_FUNCTION_32_2();
        while (1)
        {
          v158 = OUTLINED_FUNCTION_16_8();
          if (CMPhotoDNGRead16(v158, v159) == 279)
          {
            break;
          }

          OUTLINED_FUNCTION_4_26();
          if (v179)
          {
            v150 = 0;
            goto LABEL_202;
          }
        }

        v160 = OUTLINED_FUNCTION_16_8();
        v162 = _readTag(v160, v161);
        v131 = WORD1(v162);
        v130 = HIDWORD(v162);
        OUTLINED_FUNCTION_85_1();
        if (v179)
        {
          v178 = *a1 + v163;
        }

        else
        {
          v178 = v90 + 8;
        }

        v257 = v178;
        v150 = 1;
      }

LABEL_202:
      v179 = v149 == 273 && v92 - 5 >= 0xFFFFFFFE;
      if (!v179)
      {
        return 4294950743;
      }

      if ((v131 - 3) >= 2)
      {
        v150 = 0;
      }

      result = 4294950743;
      if (v17 == v130)
      {
        v146 = v252;
        if (v150)
        {
          if (v17 == 1)
          {
            if (*(a1 + 24))
            {
              OUTLINED_FUNCTION_32_2();
              while (1)
              {
                v180 = OUTLINED_FUNCTION_16_8();
                if (CMPhotoDNGRead16(v180, v181) == 278)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_26();
                if (v179)
                {
                  goto LABEL_217;
                }
              }

              v183 = OUTLINED_FUNCTION_16_8();
              _readTag(v183, v184);
            }

            else
            {
LABEL_217:
              v182 = 0;
            }

            if (v182 == v262)
            {
              v143 = 1;
              goto LABEL_221;
            }
          }

          return 4294950738;
        }
      }

      return result;
    }
  }

  v132 = OUTLINED_FUNCTION_49_0();
  v134 = _readTag(v132, v133);
  v131 = WORD1(v134);
  v130 = HIDWORD(v134);
  OUTLINED_FUNCTION_85_1();
  if (v179)
  {
    v129 = *a1 + v135;
  }

  else
  {
    v129 = v125 + 8;
  }

  v143 = v17;
  if (v90 != 324)
  {
    v128 = *(a1 + 24);
    goto LABEL_156;
  }

  if (v17 != v130 || v92 != 4 || (v131 - 3) > 1)
  {
    return 4294950743;
  }

  result = 4294950743;
  v146 = v252;
  if (v260)
  {
    v257 = v129;
    if (v129)
    {
LABEL_221:
      _copyDNGDataTagToDict(a1);
      v185 = *(a1 + 24);
      if (*(a1 + 24))
      {
        OUTLINED_FUNCTION_32_2();
        v186 = a13;
        while (1)
        {
          v187 = OUTLINED_FUNCTION_16_8();
          if (CMPhotoDNGRead16(v187, v188) == 50975)
          {
            break;
          }

          OUTLINED_FUNCTION_4_26();
          if (v179)
          {
            goto LABEL_236;
          }
        }

        v191 = OUTLINED_FUNCTION_16_8();
        _readTag(v191, v192);
        v185 = *(a1 + 24);
        if ((v193 & 0xFFFFFFFE) != 0)
        {
          if (*(a1 + 24))
          {
            OUTLINED_FUNCTION_32_2();
            while (1)
            {
              v194 = OUTLINED_FUNCTION_16_8();
              if (CMPhotoDNGRead16(v194, v195) == 50975)
              {
                break;
              }

              OUTLINED_FUNCTION_4_26();
              if (v179)
              {
                v190 = 0;
                if (v185)
                {
                  goto LABEL_237;
                }

                goto LABEL_256;
              }
            }

            v203 = OUTLINED_FUNCTION_16_8();
            _readTag(v203, v204);
            v190 = 16 * v205;
            v185 = *(a1 + 24);
            if (*(a1 + 24))
            {
              goto LABEL_237;
            }
          }

          else
          {
            v190 = 0;
          }

          goto LABEL_256;
        }

LABEL_236:
        v190 = 16;
        if (v185)
        {
LABEL_237:
          OUTLINED_FUNCTION_32_2();
          while (1)
          {
            v196 = OUTLINED_FUNCTION_16_8();
            if (CMPhotoDNGRead16(v196, v197) == 52547)
            {
              break;
            }

            OUTLINED_FUNCTION_4_26();
            if (v179)
            {
              goto LABEL_256;
            }
          }

          v198 = OUTLINED_FUNCTION_16_8();
          _readTag(v198, v199);
          v185 = *(a1 + 24);
          if ((v200 & 0xFFFFFFFE) != 0)
          {
            if (*(a1 + 24))
            {
              OUTLINED_FUNCTION_32_2();
              while (1)
              {
                v201 = OUTLINED_FUNCTION_16_8();
                if (CMPhotoDNGRead16(v201, v202) == 52547)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_26();
                if (v179)
                {
                  goto LABEL_248;
                }
              }

              v230 = OUTLINED_FUNCTION_16_8();
              _readTag(v230, v231);
              v189 = v232;
              v185 = *(a1 + 24);
            }

            else
            {
LABEL_248:
              v189 = 0;
            }

LABEL_257:
            if (v143 < 2)
            {
              v209 = v75;
              v210 = v262;
              if (!v185)
              {
LABEL_286:
                v218 = 0;
LABEL_287:
                if (a5)
                {
                  *a5 = v75;
                }

                if (a6)
                {
                  *a6 = v262;
                }

                if (a7)
                {
                  *a7 = v209;
                }

                if (a8)
                {
                  *a8 = v210;
                }

                if (a9)
                {
                  *a9 = HIDWORD(v251);
                }

                if (a10)
                {
                  *a10 = v251;
                }

                if (a11)
                {
                  *a11 = v189 | v190;
                }

                if (a12)
                {
                  *a12 = v143;
                }

                if (v186)
                {
                  *v186 = v218;
                }

                if (v253)
                {
                  *v253 = v260;
                }

                result = 0;
                if (v146)
                {
                  *v146 = v257;
                }

                return result;
              }
            }

            else
            {
              if (!v185)
              {
                return 4294950741;
              }

              OUTLINED_FUNCTION_32_2();
              while (1)
              {
                v206 = OUTLINED_FUNCTION_16_8();
                if (CMPhotoDNGRead16(v206, v207) == 322)
                {
                  break;
                }

                OUTLINED_FUNCTION_4_26();
                if (v179)
                {
                  v209 = 0;
                  goto LABEL_272;
                }
              }

              v219 = OUTLINED_FUNCTION_16_8();
              _readTag(v219, v220);
              v209 = v221;
              v208 = *(a1 + 24);
LABEL_272:
              if (!v208)
              {
                return 4294950741;
              }

              v222 = 0;
              v223 = *(a1 + 16);
              while (1)
              {
                v224 = OUTLINED_FUNCTION_49_0();
                if (CMPhotoDNGRead16(v224, v225) == 323)
                {
                  break;
                }

                v223 += 12;
                ++v222;
                result = 4294950741;
                if (v222 >= *(a1 + 24))
                {
                  return result;
                }
              }

              v226 = OUTLINED_FUNCTION_49_0();
              _readTag(v226, v227);
              result = 4294950741;
              if (!v209)
              {
                return result;
              }

              v210 = v228;
              if (!v228)
              {
                return result;
              }

              if (v209 > v75 || v228 > v262)
              {
                return 4294950743;
              }

              if (!*(a1 + 24))
              {
                goto LABEL_286;
              }
            }

            v264 = v210;
            v211 = v209;
            v212 = v146;
            v213 = v190;
            v214 = v143;
            v215 = v186;
            v216 = 0;
            v217 = *(a1 + 16);
            while (CMPhotoDNGRead16(v217, *(a1 + 26)) != 259)
            {
              v217 += 6;
              if (++v216 >= *(a1 + 24))
              {
                v218 = 0;
                goto LABEL_270;
              }
            }

            _readTag(v217, *(a1 + 26));
LABEL_270:
            v186 = v215;
            v143 = v214;
            v190 = v213;
            v146 = v212;
            v209 = v211;
            v210 = v264;
            goto LABEL_287;
          }
        }

LABEL_256:
        v189 = 1;
        goto LABEL_257;
      }

      v189 = 1;
      v190 = 16;
      v186 = a13;
      goto LABEL_257;
    }
  }

  return result;
}

uint64_t _cmphotoDNGReaderOpenIFD(uint64_t a1, unsigned int a2)
{
  if (a2 < 8)
  {
    return 4294950743;
  }

  v4 = *(a1 + 8);
  v5 = v4 - a2;
  if (v4 <= a2)
  {
    return 4294950743;
  }

  if (v5 < 6)
  {
    return 4294950743;
  }

  v6 = CMPhotoDNGRead16((*a1 + a2), *(a1 + 26));
  if (v5 < 12 * v6 + 6)
  {
    return 4294950743;
  }

  v7 = v6;
  result = 0;
  *(a1 + 24) = v7;
  *(a1 + 16) = *a1 + a2 + 2;
  return result;
}

void _copyVersionToDictAsString(uint64_t a1)
{
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_51_1();
    while (1)
    {
      v4 = OUTLINED_FUNCTION_81_1();
      if (CMPhotoDNGRead16(v4, v5) == v3)
      {
        break;
      }

      v2 += 12;
      OUTLINED_FUNCTION_58_1();
      if (v6)
      {
        return;
      }
    }

    v7 = OUTLINED_FUNCTION_81_1();
    _readTag(v7, v8);
    OUTLINED_FUNCTION_74_1();
    if (v11 * tiffDataTypeToSize[v12] < 5)
    {
      v13 = (v2 + 8);
    }

    else
    {
      v13 = (*v1 + v10);
    }

    if ((v9 & 0xFFFF0000) == 0x10000 && v11 == 4)
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      if (Mutable)
      {
        v16 = Mutable;
        v33 = CMPhotoDNGRead8(v13);
        v17 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v17, v18, @"%d", v33);
        v19 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v19, v20, @".", 0);
        v34 = CMPhotoDNGRead8(v13 + 1);
        v21 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v21, v22, @"%d", v34);
        v23 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v23, v24, @".", 0);
        v35 = CMPhotoDNGRead8(v13 + 2);
        v25 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v25, v26, @"%d", v35);
        v27 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v27, v28, @".", 0);
        v36 = CMPhotoDNGRead8(v13 + 3);
        v29 = OUTLINED_FUNCTION_53();
        CFStringAppendFormat(v29, v30, @"%d", v36);
        v31 = OUTLINED_FUNCTION_10_1();
        CFDictionarySetValue(v31, v32, v16);

        CFRelease(v16);
      }
    }
  }
}

uint64_t _copyRationalTagToDict(uint64_t a1, int a2)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  for (i = *(a1 + 16); ; i += 12)
  {
    v5 = OUTLINED_FUNCTION_43_0();
    if (CMPhotoDNGRead16(v5, v6) == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_58_1();
    if (v7)
    {
      return 0;
    }
  }

  v8 = OUTLINED_FUNCTION_43_0();
  Tag = _readTag(v8, v9);
  v11 = WORD1(Tag);
  v12 = HIDWORD(Tag);
  OUTLINED_FUNCTION_85_1();
  v14 = v7 ? *a1 + v13 : i + 8;
  v15 = v11 == 10 || v11 == 5;
  if (!v15 || !v12)
  {
    return 0;
  }

  if (v12 == 1)
  {
    v16 = OUTLINED_FUNCTION_43_0();
    CMPhotoDNGReadRational(v16, v17);
    OUTLINED_FUNCTION_10_1();
    FigCFDictionarySetDouble();
    return 1;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v12, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v19 = Mutable;
  if (v12)
  {
    while (1)
    {
      v20 = OUTLINED_FUNCTION_43_0();
      CMPhotoDNGReadRational(v20, v21);
      if (FigCFArrayAppendDouble())
      {
        break;
      }

      v14 += 8;
      LODWORD(v12) = v12 - 1;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v25 = 0;
  }

  else
  {
LABEL_22:
    v22 = OUTLINED_FUNCTION_10_1();
    CFDictionarySetValue(v22, v23, v19);
    v25 = 1;
  }

  CFRelease(v19);
  return v25;
}

void _copyDNGDataTagToDict(uint64_t a1)
{
  if (*(a1 + 24))
  {
    OUTLINED_FUNCTION_51_1();
    while (1)
    {
      v4 = OUTLINED_FUNCTION_81_1();
      if (CMPhotoDNGRead16(v4, v5) == v3)
      {
        break;
      }

      v2 += 12;
      OUTLINED_FUNCTION_58_1();
      if (v6)
      {
        return;
      }
    }

    v7 = OUTLINED_FUNCTION_81_1();
    Tag = _readTag(v7, v8);
    v11 = HIDWORD(Tag);
    if (HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)] < 5)
    {
      v12 = (v2 + 8);
    }

    else
    {
      v12 = (*v1 + v10);
    }

    if (v11)
    {
      v13 = CFDataCreate(*MEMORY[0x1E695E480], v12, v11);
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_10_1();
        CFDictionarySetValue(v15, v16, v14);

        CFRelease(v14);
      }
    }
  }
}

void _copyDoublesToDictAsArray(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    for (i = *(a1 + 16); ; i += 12)
    {
      v4 = OUTLINED_FUNCTION_43_0();
      if (CMPhotoDNGRead16(v4, v5) == 51041)
      {
        break;
      }

      if (++v2 >= *(a1 + 24))
      {
        return;
      }
    }

    v6 = OUTLINED_FUNCTION_43_0();
    v8 = _readTag(v6, v7) >> 32;
    OUTLINED_FUNCTION_85_1();
    if (v11)
    {
      v12 = *a1 + v10;
    }

    else
    {
      v12 = i + 8;
    }

    if ((v9 & 0xFFFF0000) == 0xC0000)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v8, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v14 = Mutable;
        if (v8)
        {
          while (1)
          {
            v15 = OUTLINED_FUNCTION_43_0();
            v17 = CMPhotoDNGReadDouble(v15, v16);
            if (CMPhotoCFArrayAppendDouble(v14, v17))
            {
              break;
            }

            v12 += 8;
            LODWORD(v8) = v8 - 1;
            if (!v8)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v18 = OUTLINED_FUNCTION_10_1();
          CFDictionarySetValue(v18, v19, v14);
        }

        CFRelease(v14);
      }
    }
  }
}

uint64_t CMPhotoDNGCompressorCreateFromSourceDNGWithModificationHandler_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t _cmphotoDNGWriterIFDEnd_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGWriterIFDGetTagDataOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _applyLossyJPEGPerceptualCurve_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _applyLossyJPEGPerceptualCurve_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGOPCodeWriterStartOPCode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGOPCodeWriterWrite32_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _cmphotoDNGOPCodeWriterEndOPCode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DicomEstimateImagePropertiesSize(objc_object *a1, objc_object **a2)
{
  if (a1)
  {
    a1 = _estimateObjectSize(a1);
  }

  if (a2)
  {
    *a2 = a1;
  }

  return 0;
}

void DicomMergeImageComponents_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t CreateThreadContext(int a1, uint64_t a2, int *a3)
{
  if (a1 <= 8)
  {
    *a3 = a1;
    a3[1] = 4 * a2 * HIDWORD(a2) / a1;
    operator new[]();
  }

  return 4294951896;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CMVideoFormatDescriptionGetCleanAperture(CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft)
{
  MEMORY[0x1EEDBBE38](videoDesc, originIsAtTopLeft);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E10]();
}

{
  return MEMORY[0x1EEE63E18]();
}

{
  return MEMORY[0x1EEE63E20]();
}

{
  return MEMORY[0x1EEE63E28]();
}

{
  return MEMORY[0x1EEE63E38]();
}

{
  return MEMORY[0x1EEE63E40]();
}

{
  return MEMORY[0x1EEE63E48]();
}

{
  return MEMORY[0x1EEE63E50]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA8]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63EF8]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x1EEE644C8](retstr, __val);
}

{
  return MEMORY[0x1EEE644D8](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}