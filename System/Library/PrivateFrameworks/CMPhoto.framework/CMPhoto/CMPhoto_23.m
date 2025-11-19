void CMPhotoDecompressionContainerDecodeAuxiliaryImageForIndexAsyncF(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_40_2();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v8, v9, v10, v11, v12, v13, v14);
    if (!v15 && (v5 & 0x8000000000000000) == 0 && v1)
    {
      if (v3 && CFDictionaryContainsKey(v3, @"DryRun"))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
      }

      else if (*(*(v7 + 32) + 112))
      {
        OUTLINED_FUNCTION_41_2();
        v16();
      }
    }
  }
}

uint64_t CMPhotoDecompressionContainerCancelAsyncRequest(uint64_t a1, uint64_t a2)
{
  v2 = 4294950306;
  if (a1 && a2)
  {
    v3 = *(*(a1 + 32) + 120);
    if (v3)
    {
      return v3();
    }

    v2 = 4294950302;
  }

  return OUTLINED_FUNCTION_36_3(v2);
}

uint64_t CMPhotoDecompressionContainerCreateSequenceContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4294950306;
  if (a1 && a4)
  {
    v5 = *(*(a1 + 32) + 368);
    if (v5)
    {
      return v5();
    }

    v4 = 4294950302;
  }

  return OUTLINED_FUNCTION_36_3(v4);
}

uint64_t CMPhotoDecompressionContainerGetSequenceCount(uint64_t a1, uint64_t a2)
{
  v2 = 4294950306;
  if (a1 && a2)
  {
    v3 = *(*(a1 + 32) + 360);
    if (v3)
    {
      return v3();
    }

    v2 = 4294950302;
  }

  return OUTLINED_FUNCTION_36_3(v2);
}

uint64_t CMPhotoDecompressionContainerGetVideoAndAudioCount(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  v3 = *(*(a1 + 32) + 496);
  if (v3)
  {
    return v3();
  }

  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

void CMPhotoDecompressionContainerCreateAlphaDecodeOptionsForInternalIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_38_1();
  a18 = v19;
  a19 = v25;
  a11 = v22;
  if (v20)
  {
    v26 = v24;
    v27 = v23;
    if (!v22)
    {
      if (CMPhotoDecompressionContainerGetDefaultFormatWhenDecodingAlphaForInternalIndex(v20, v21, &a11))
      {
        goto LABEL_33;
      }

      v22 = a11;
    }

    if (v22 == 843264056 || v22 == 843264310 || v22 == 1111970369 || v22 == 1279340600 || v22 == 1279340854 || v22 == 1815491698 || v22 == 1380411457)
    {
      OUTLINED_FUNCTION_19_5();
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v35 = MutableCopy;
        OUTLINED_FUNCTION_19_5();
        v36 = FigCFDictionaryCreateMutableCopy();
        if (!v36)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_72();
        FigCFDictionarySetInt();
        FigCFDictionarySetInt();
        CFDictionaryRemoveValue(v36, @"UseProvidedPixelBuffer");
        if (v27)
        {
          *v27 = v35;
          v35 = 0;
        }

        if (v26)
        {
          *v26 = v36;
          v36 = 0;
        }

        if (v35)
        {
LABEL_30:
          CFRelease(v35);
        }

        if (v36)
        {
          CFRelease(v36);
        }
      }
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_37_3();
}

uint64_t CMPhotoDecompressionContainerGetDefaultFormatWhenDecodingAlphaForInternalIndex(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a3)
  {
    return 4294950306;
  }

  v4 = *(*(a1 + 32) + 64);
  if (v4)
  {
    v5 = v4();
    result = 0;
    if (!v5)
    {
      FigCFArrayGetInt32AtIndex();
      result = 0;
    }

    *a3 = 1111970369;
  }

  else
  {
    result = 0;
    *a3 = 1111970369;
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerValidateSourceCropRect(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_9_16();
  v5 = v4;
  v7 = v6;
  v8 = CFGetTypeID(v6);
  TypeID = CFDictionaryGetTypeID();
  result = 4294950306;
  if (v1 && v8 == TypeID)
  {
    v11 = *(MEMORY[0x1E695F050] + 16);
    v19.origin = *MEMORY[0x1E695F050];
    v19.size = v11;
    if (!CGRectMakeWithDictionaryRepresentation(v7, &v19))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();
      return FigSignalErrorAtGM();
    }

    v12 = vcvtq_u64_f64(vrndaq_f64(v19.origin));
    v13 = vcvtq_u64_f64(vrndaq_f64(v19.size));
    v14 = v5 | v3;
    if (v5 | v3)
    {
      v15.i64[0] = v5;
      v15.i64[1] = v3;
      v16 = vsubq_s64(v15, v12);
      v17 = vandq_s8(v16, vcgtzq_s64(v16));
      v13 = vbslq_s8(vcgtq_u64(v17, v13), v13, v17);
      result = 4294950306;
      if (!v13.i64[0] || !v13.i64[1])
      {
        return result;
      }

      v14 = v5 == v13.i64[0] && v3 == v13.i64[1];
    }

    if (v2)
    {
      *v2 = v14;
    }

    result = 0;
    *v1 = v12;
    v1[1] = v13;
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerPredictTranscodedSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Mutable = a1;
  desc[0] = 0;
  *a4 = 0;
  CMPhotoDecompressionContainerCopyFormatDescriptionForIndexWithOptions(a1, a3, 0, desc);
  if (v7)
  {
    goto LABEL_35;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc[0]);
  v47 = 1785750887;
  FigCFDictionaryGetIntIfPresent();
  if (a3)
  {
    goto LABEL_23;
  }

  v45 = 0;
  v46 = 0;
  v44 = 0;
  if (!Mutable)
  {
    DQTLocationFromJFIFByteStream = -16990;
    goto LABEL_28;
  }

  if (*(Mutable + 74) < 1)
  {
LABEL_23:
    Mutable = 0;
LABEL_24:
    DQTLocationFromJFIFByteStream = 0;
    goto LABEL_28;
  }

  v9 = OUTLINED_FUNCTION_17();
  CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v9);
  if (v7)
  {
LABEL_35:
    DQTLocationFromJFIFByteStream = v7;
LABEL_36:
    Mutable = 0;
    goto LABEL_28;
  }

  if (MediaSubType != 1785750887)
  {
    Mutable = 0;
LABEL_26:
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    goto LABEL_24;
  }

  v10 = *(Mutable + 8);
  v43 = 0;
  length = 0;
  v42 = 0;
  DQTLocationFromJFIFByteStream = CMPhotoGetDQTLocationFromJFIFByteStream(v10, 0, &v43, &v42, &length);
  if (DQTLocationFromJFIFByteStream || !v43)
  {
    goto LABEL_36;
  }

  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, length);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v40 = 0;
  v13 = length;
  v14 = v42;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v15)
  {
    v16 = v15(v10, v13, v14, MutableBytePtr, &v40);
    if (!v16)
    {
      v17 = v40 >= 0x41 && v40 == length;
      if (!v17 || *MutableBytePtr > 0xFu)
      {
        goto LABEL_24;
      }

      v18 = 0;
      v19 = 0.0;
      do
      {
        v20 = *&MutableBytePtr[v18 * 16 + 1];
        v21 = xmmword_1A5ABB7B8[v18];
        v22 = vmull_u8(*v21.i8, *v20.i8);
        v23 = vmovl_u16(*v22.i8);
        v24 = vmovl_high_u16(v22);
        v25 = vmull_high_u8(v21, v20);
        v26 = vmovl_u16(*v25.i8);
        v27 = vmovl_high_u16(v25);
        v28.i64[0] = v27.u32[2];
        v28.i64[1] = v27.u32[3];
        v29 = vcvtq_f64_u64(v28);
        v28.i64[0] = v27.u32[0];
        v28.i64[1] = v27.u32[1];
        v30 = vcvtq_f64_u64(v28);
        v28.i64[0] = v26.u32[2];
        v28.i64[1] = v26.u32[3];
        v31 = vcvtq_f64_u64(v28);
        v28.i64[0] = v26.u32[0];
        v28.i64[1] = v26.u32[1];
        v32 = vcvtq_f64_u64(v28);
        v28.i64[0] = v24.u32[2];
        v28.i64[1] = v24.u32[3];
        v33 = vcvtq_f64_u64(v28);
        v28.i64[0] = v24.u32[0];
        v28.i64[1] = v24.u32[1];
        v34 = vcvtq_f64_u64(v28);
        v28.i64[0] = v23.u32[2];
        v28.i64[1] = v23.u32[3];
        v35 = vcvtq_f64_u64(v28);
        v28.i64[0] = v23.u32[0];
        v28.i64[1] = v23.u32[1];
        v36 = vcvtq_f64_u64(v28);
        v19 = v19 + v36.f64[0] + v36.f64[1] + v35.f64[0] + v35.f64[1] + v34.f64[0] + v34.f64[1] + v33.f64[0] + v33.f64[1] + v32.f64[0] + v32.f64[1] + v31.f64[0] + v31.f64[1] + v30.f64[0] + v30.f64[1] + v29.f64[0] + v29.f64[1];
        ++v18;
      }

      while (v18 != 4);
      v37 = v19 / 29656.8;
      if (v19 / 29656.8 < 2.0 && v37 > 0.0606060606)
      {
        pow((2.0 / v37 + -1.0) * 0.03125, 0.33333333);
      }

      goto LABEL_26;
    }

    DQTLocationFromJFIFByteStream = v16;
  }

  else
  {
    DQTLocationFromJFIFByteStream = -12782;
  }

LABEL_28:
  v38 = *a4;
  if (desc[0])
  {
    CFRelease(desc[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v38)
  {
    return DQTLocationFromJFIFByteStream;
  }

  else
  {
    return 4294950306;
  }
}

uint64_t CMPhotoDecompressionContainerCreateCorrectedAV1FormatDescription(const opaqueCMFormatDescription *a1, uint64_t a2, int a3, CMVideoFormatDescriptionRef *a4)
{
  v56 = 1;
  v54 = 0;
  v55 = 0;
  formatDescriptionOut = 0;
  v53 = 0;
  cf = 0;
  if (!a4)
  {
    v39 = 0;
    MutableCopy = 0;
    goto LABEL_49;
  }

  if (a2)
  {
    Extensions = CMFormatDescriptionGetExtensions(a1);
    v9 = Extensions;
    v10 = MEMORY[0x1E6960038];
    v11 = MEMORY[0x1E6965F30];
    if (Extensions)
    {
      v12 = MEMORY[0x1E6965D88];
      v13 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965D88]);
      v14 = CFDictionaryGetValue(v9, *v11);
      v15 = CMPhotoGetMatrixFromPixelBufferAttachments(v9) != 0;
      v16 = CFDictionaryGetValue(v9, *v10) != 0;
      v17 = CFDictionaryGetValue(v9, *MEMORY[0x1E6965CE8]);
      v18 = v17 | v13;
      v19 = (v17 | v14) != 0;
      v20 = v18 != 0;
      if (a3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = MEMORY[0x1E6965D88];
      v15 = 0;
      v16 = 0;
      v19 = 0;
      v20 = 0;
      if (a3)
      {
        goto LABEL_13;
      }
    }

    if (v20 && v19 && v15 && v16)
    {
      if (a1)
      {
        v21 = CFRetain(a1);
      }

      else
      {
        v21 = 0;
      }

      v39 = 0;
      MutableCopy = 0;
      *a4 = v21;
LABEL_45:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_47;
    }

LABEL_13:
    InfoFromFormatDescription = (*(a2 + 16))(a2, &cf);
    if (InfoFromFormatDescription || (OUTLINED_FUNCTION_42_2(), v47 = v24, v48 = v23, OUTLINED_FUNCTION_21(), InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(v25, v26, v27, v28, v29, v30, v31, 0, 0, v47, v48, v49), InfoFromFormatDescription))
    {
      v39 = InfoFromFormatDescription;
      MutableCopy = 0;
      goto LABEL_45;
    }

    CFGetAllocator(a1);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      goto LABEL_61;
    }

    if (a3)
    {
      v33 = OUTLINED_FUNCTION_72();
      v35 = CFDictionaryGetValue(v33, v34);
      if (v35)
      {
        CFGetAllocator(a1);
        v36 = FigCFDictionaryCreateMutableCopy();
        if (v36)
        {
          v35 = v36;
          value = 0;
          if (!CMPhotoCreateAV1CodecConfigFromSampleBuffer(cf, &value))
          {
            CFDictionarySetValue(v35, @"av1C", value);
            if (value)
            {
              CFRelease(value);
            }

            v37 = OUTLINED_FUNCTION_72();
            CFDictionarySetValue(v37, v38, v35);
          }

          goto LABEL_26;
        }

LABEL_61:
        v39 = 4294950305;
        goto LABEL_45;
      }
    }

    else
    {
      v35 = 0;
    }

LABEL_26:
    if (!v20 && v55)
    {
      CFDictionarySetValue(MutableCopy, *v12, v55);
    }

    if (!v19 && v54)
    {
      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6965F30], v54);
    }

    if (v53)
    {
      v40 = v15;
    }

    else
    {
      v40 = 1;
    }

    if ((v40 & 1) == 0)
    {
      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6965F98], v53);
    }

    if (!v16)
    {
      v41 = MEMORY[0x1E695E4D0];
      if (!v56)
      {
        v41 = MEMORY[0x1E695E4C0];
      }

      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6960038], *v41);
    }

    v42 = CFGetAllocator(a1);
    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    width = CMVideoFormatDescriptionGetDimensions(a1).width;
    Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
    v39 = CMVideoFormatDescriptionCreate(v42, MediaSubType, width, Dimensions.height, MutableCopy, &formatDescriptionOut);
    if (!v39)
    {
      *a4 = formatDescriptionOut;
      formatDescriptionOut = 0;
    }

    if (v35)
    {
      CFRelease(v35);
    }

    goto LABEL_45;
  }

  MutableCopy = 0;
  v39 = 4294950306;
LABEL_47:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

LABEL_49:
  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v39;
}

uint64_t CMPhotoDecompressionContainerCreateCorrespondingDecodeOptionsForInternalIndexAuxImage(void *a1, uint64_t a2, uint64_t a3, int a4, _OWORD *a5, int a6, char a7, int a8, __CFDictionary **a9)
{
  v45[0] = 0;
  v9 = 4294950306;
  if (!a1 || !a9)
  {
    return v9;
  }

  v43 = 0;
  v44 = 0;
  v42 = 1;
  v40 = 0;
  v41 = 0;
  v39 = 1;
  v11 = a1 + 4;
  v12 = *(a1[4] + 56);
  if (!v12)
  {
    goto LABEL_20;
  }

  v18 = v12(a1, a2, 0, &v43, &v44, &v42);
  if (v18)
  {
LABEL_40:
    v9 = v18;
    goto LABEL_21;
  }

  v19 = *(*v11 + 144);
  if (!v19)
  {
LABEL_20:
    v9 = 4294950302;
    goto LABEL_21;
  }

  v18 = v19(a1, a2, a3, 0, &v40, &v41, &v39);
  if (v18)
  {
    goto LABEL_40;
  }

  if (v42 != v39)
  {
    fig_log_get_emitter();
    v18 = FigSignalErrorAtGM();
    goto LABEL_40;
  }

  if (!(a6 | a4 | a8))
  {
    v22 = 0;
LABEL_38:
    v9 = 0;
    *a9 = v22;
    goto LABEL_21;
  }

  v20 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v22 = Mutable;
    v23 = MEMORY[0x1E695E4D0];
    if (a8)
    {
      CFDictionaryAddValue(Mutable, @"RestrictedDecoding", *MEMORY[0x1E695E4D0]);
    }

    v24 = a7;
    v25 = a5;
    if ((v40 | v41))
    {
      v26 = *(*v11 + 456);
      if (!v26)
      {
        v9 = 4294950302;
        goto LABEL_26;
      }

      YUVPixelFormatForParameters = v26(a1, a2, a3, v45);
      if (YUVPixelFormatForParameters)
      {
        goto LABEL_42;
      }

      v28 = v45[0];
      if (v45[0])
      {
        if (CFArrayGetCount(v45[0]) == 1)
        {
          v29 = 6;
        }

        else
        {
          v29 = 1;
        }

        v28 = v45[0];
      }

      else
      {
        v29 = 1;
      }

      *&v37 = 0;
      if (!CMPhotoCFArrayGetSizeAtIndex(v28, 0, &v37))
      {
        v9 = 4294950194;
        goto LABEL_26;
      }

      LODWORD(v36[0]) = 0;
      YUVPixelFormatForParameters = CMPhotoGetYUVPixelFormatForParameters(v29, v37, 1, 0, 0, 0, 1, v36);
      if (YUVPixelFormatForParameters || (YUVPixelFormatForParameters = CMPhotoCFDictionarySetInt32(v22, @"OutputPixelFormat", v36[0]), YUVPixelFormatForParameters))
      {
LABEL_42:
        v9 = YUVPixelFormatForParameters;
        goto LABEL_26;
      }

      v24 = a7;
      v25 = a5;
    }

    if (a6)
    {
      CFDictionarySetValue(v22, @"ApplyTransform", *v23);
      v25 = a5;
      v24 = a7;
    }

    if (!a4)
    {
      goto LABEL_38;
    }

    v37 = 0u;
    v38 = 0u;
    v31 = v25[1];
    v36[0] = *v25;
    v36[1] = v31;
    YUVPixelFormatForParameters = CMPhotoTranslateAndScalePreOrientationCrop(v43, v44, v36, 1, v40, v41, 1, &v37, v24);
    if (!YUVPixelFormatForParameters)
    {
      v46.origin.x = v37;
      v46.origin.y = *(&v37 + 1);
      v46.size.width = v38;
      v46.size.height = *(&v38 + 1);
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v46);
      if (DictionaryRepresentation)
      {
        v33 = DictionaryRepresentation;
        CFDictionaryAddValue(v22, @"SourceCropRect", DictionaryRepresentation);
        CFRelease(v33);
        goto LABEL_38;
      }

      v9 = 4294950305;
LABEL_26:
      CFRelease(v22);
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  v9 = 4294950305;
LABEL_21:
  if (v45[0])
  {
    CFRelease(v45[0]);
  }

  return v9;
}

void CMPhotoDecompressionContainerAddMeteorHeadroomToDescriptionForInternalIndex(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v35 = 0;
  cf = 0;
  v33 = 0;
  v34 = 0;
  theDict = 0;
  v7 = a1 + 4;
  v8 = *(a1[4] + 168);
  if (!v8 || v8(a1, a2, a3, 0, &cf))
  {
    v9 = 0;
    goto LABEL_4;
  }

  v18 = CFGetAllocator(a1);
  if (CMPhotoMetadataCreateCFNumberFormatter(v18, kCFNumberFormatterNoStyle, &v35))
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v19 = CGImageMetadataCopyTags(cf);
  v9 = v19;
  if (!v19)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  Count = CFArrayGetCount(v19);
  if (Count < 1)
  {
LABEL_4:
    v10 = 0;
    v11 = 0;
    goto LABEL_5;
  }

  v21 = Count;
  v28 = v5;
  v29 = a4;
  v22 = 0;
  v23 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v22);
    v25 = CGImageMetadataTagCopyNamespace(ValueAtIndex);
    if (v25)
    {
      break;
    }

LABEL_45:
    v23 = ++v22 < v21;
    if (v21 == v22)
    {
      v10 = 0;
      v11 = 0;
      a4 = v29;
      goto LABEL_50;
    }
  }

  v10 = v25;
  v11 = CGImageMetadataTagCopyName(ValueAtIndex);
  if (!v11)
  {
    goto LABEL_17;
  }

  if (!FigCFEqual())
  {
    goto LABEL_43;
  }

  if (CMPhotoCopyMetadataTagValue(ValueAtIndex, v35, 0, &v34))
  {
    goto LABEL_17;
  }

  if (!FigCFEqual())
  {
LABEL_43:
    CFRelease(v10);
    CFRelease(v11);
    if (v34)
    {
      CFRelease(v34);
      v34 = 0;
    }

    goto LABEL_45;
  }

  if (!v34)
  {
    goto LABEL_17;
  }

  v26 = CFGetTypeID(v34);
  a4 = v29;
  if (v26 != CFNumberGetTypeID())
  {
    goto LABEL_17;
  }

  Double = CMPhotoCFNumberGetDouble(v34);
  if (CMPhotoCFDictionarySetFloat(v29, @"MeteorHeadroomFromProperties", Double))
  {
    goto LABEL_17;
  }

LABEL_50:
  if (v23)
  {
    goto LABEL_17;
  }

  v5 = v28;
LABEL_5:
  v31 = 0;
  v12 = *(*v7 + 344);
  if (v12)
  {
    if (!v12(a1, v5, 0, &v31))
    {
      if (v31)
      {
        if (*(*v7 + 256))
        {
          OUTLINED_FUNCTION_42();
          if (!v13())
          {
            if (v33)
            {
              OUTLINED_FUNCTION_21();
              if (!CGImageCreateMetadataFromData())
              {
                if (theDict)
                {
                  v14 = *MEMORY[0x1E696DE30];
                  if (CFDictionaryContainsKey(theDict, *MEMORY[0x1E696DE30]))
                  {
                    Value = CFDictionaryGetValue(theDict, v14);
                    v30 = 0.0;
                    CMPhotoHeadroomFromMeteorPlusMetadataMakerNote(Value, &v30);
                    OUTLINED_FUNCTION_67_0();
                    if (!v17 && !v16)
                    {
                      CMPhotoCFDictionarySetFloat(a4, @"MeteorHeadroomFromMakerNote", v30);
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

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t CMPhotoDecompressionContainerCreateMeteorConstituentsForInternalIndex(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, __CFDictionary **a6)
{
  v6 = a4;
  v45 = 0;
  v46 = 0;
  value = 0;
  theDict = 0;
  cf = 0;
  v42 = 0;
  if (!a4)
  {
    MutableCopy = 0;
    v33 = 4294950306;
    goto LABEL_36;
  }

  v9 = a4[21];
  v10 = *(v6 + 71);
  v11 = *(v6 + 105);
  v12 = *(v6 + 40);
  v40[0] = *(v6 + 24);
  v40[1] = v12;
  CorrespondingDecodeOptionsForInternalIndexAuxImage = CMPhotoDecompressionContainerCreateCorrespondingDecodeOptionsForInternalIndexAuxImage(a1, a2, a3, v9, v40, v10, 1, v11, &v46);
  if (CorrespondingDecodeOptionsForInternalIndexAuxImage)
  {
    goto LABEL_52;
  }

  v14 = a1 + 4;
  if (*(a1[4] + 192))
  {
    v15 = OUTLINED_FUNCTION_21_7();
    CorrespondingDecodeOptionsForInternalIndexAuxImage = v16(v15);
    if (!CorrespondingDecodeOptionsForInternalIndexAuxImage)
    {
      CFGetAllocator(a1);
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        v6 = 0;
        goto LABEL_54;
      }

      FigCFDictionarySetValue();
      LODWORD(v40[0]) = 1;
      if (!*(*v14 + 56) || (OUTLINED_FUNCTION_19_5(), OUTLINED_FUNCTION_42(), v18()) || (v19 = FigCFDictionarySetInt(), !v19))
      {
        if (*(v6 + 12))
        {
          FigCFDictionarySetValue();
        }

        FigCFDictionarySetValue();
        LODWORD(v40[0]) = 1;
        if (!*(*v14 + 144) || (OUTLINED_FUNCTION_21_7(), OUTLINED_FUNCTION_42(), v20()) || (v19 = FigCFDictionarySetInt(), !v19))
        {
          OUTLINED_FUNCTION_19_5();
          OUTLINED_FUNCTION_42();
          if (CMPhotoDecompressionContainerCopyImagePropertiesForInternalIndex(v21, v22, v23, v24, v25, v26) || !theDict || (v34 = *MEMORY[0x1E696DE30], !CFDictionaryContainsKey(theDict, *MEMORY[0x1E696DE30])))
          {
            v6 = 0;
LABEL_16:
            if (*(*v14 + 168))
            {
              v27 = OUTLINED_FUNCTION_21_7();
              if (!v28(v27))
              {
                v29 = value;
                if (value)
                {
                  if (!*(*v14 + 160))
                  {
                    v33 = 4294950302;
                    goto LABEL_28;
                  }

                  v30 = OUTLINED_FUNCTION_21_7();
                  v32 = v31(v30);
                  if (v32)
                  {
LABEL_21:
                    v33 = v32;
                    v29 = value;
LABEL_28:
                    CFDictionarySetValue(MutableCopy, @"MeteorXMPMetadata", v29);
                    goto LABEL_32;
                  }

                  v37 = FigCFEqual();
                  v38 = value;
                  if (v37)
                  {
                    v32 = _modifyAuxiliaryImageMetadataIfSamsung(value, &v42);
                    if (v32)
                    {
                      goto LABEL_21;
                    }

                    v38 = v42;
                  }

                  CFDictionarySetValue(MutableCopy, @"MeteorXMPMetadata", v38);
                }
              }
            }

            v33 = 0;
            *a6 = MutableCopy;
            MutableCopy = 0;
            goto LABEL_32;
          }

          v35 = FigCFDictionaryGetValue();
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v6 = Mutable;
          if (Mutable)
          {
            CFDictionaryAddValue(Mutable, v34, v35);
            CFDictionarySetValue(MutableCopy, @"MeteorMakerNote", v6);
            goto LABEL_16;
          }

LABEL_54:
          v33 = 4294950305;
          goto LABEL_32;
        }
      }

      v33 = v19;
LABEL_56:
      v6 = 0;
      goto LABEL_32;
    }

LABEL_52:
    v33 = CorrespondingDecodeOptionsForInternalIndexAuxImage;
    MutableCopy = 0;
    goto LABEL_56;
  }

  MutableCopy = 0;
  v6 = 0;
  v33 = 4294950302;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

LABEL_36:
  if (value)
  {
    CFRelease(value);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v33;
}

uint64_t _modifyAuxiliaryImageMetadataIfSamsung(const CGImageMetadata *a1, void *a2)
{
  v8 = 0;
  v9 = 0;
  FlexRangeMetadata = 4294950306;
  memset(__src, 0, sizeof(__src));
  if (a1 && a2)
  {
    v4 = CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata(a1, 0, __src);
    if (v4 || (memcpy(v6, __src, sizeof(v6)), v4 = CMPhotoCreateFlexRangeMetadataDictionaryFromParsedMetadata(v6, &v9), v4))
    {
      FlexRangeMetadata = v4;
    }

    else
    {
      FlexRangeMetadata = CGImageCreateFlexRangeMetadata();
      if (!FlexRangeMetadata)
      {
        *a2 = v8;
        v8 = 0;
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return FlexRangeMetadata;
}

uint64_t CMPhotoDecompressionContainerDecodeImageForIndexAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerDecodeThumbnailForIndexAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerDecodeAuxiliaryImageForIndexAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerInitColorController_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerInitColorController_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerCheckForbiddenAuxOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void ___getAllowListFromEntitlement_block_invoke_cold_1(__SecTask *a1)
{
  v2 = SecTaskCopyValueForEntitlement(a1, @"com.apple.private.cmphoto.decodeallowlist", 0);
  v3 = _sanityCheckAllowOptionsValue(v2);
  if (!v2 || v3)
  {
    if (!v2)
    {
      goto LABEL_6;
    }

    CFRelease(v2);
    v2 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  qword_1ED6FA660 = v2;
LABEL_6:

  CFRelease(a1);
}

uint64_t VTDecompressionPluginClass_create()
{
  OUTLINED_FUNCTION_3_22();
  keys[2] = *MEMORY[0x1E69E9840];
  DecodeHighSpeedDefault = CMPhotoGetDecodeHighSpeedDefault();
  v27 = 0;
  v26 = 0;
  v5 = 4294950306;
  v25 = 1;
  if (!v1 || !v2 || !v0)
  {
    return v5;
  }

  v6 = OUTLINED_FUNCTION_1_22();
  if (!v6)
  {
    return 4294950305;
  }

  v7 = v6;
  v29 = 0;
  v30 = 0;
  v6[41] = 0;
  v6[24] = v4;
  if (v3 && (CMPhotoCFDictionaryGetBooleanIfPresent(), CMPhotoCFDictionaryGetBooleanIfPresent(), CMPhotoCFDictionaryGetBooleanIfPresent(), CMPhotoCFDictionaryGetBooleanIfPresent(), CMPhotoCFDictionaryGetBooleanIfPresent(), CMPhotoCFDictionaryGetInt32IfPresent(), HIBYTE(v27)))
  {
    v8 = 0;
    LOBYTE(v27) = 0;
  }

  else
  {
    v8 = 1;
    if (v27)
    {
      v9 = MEMORY[0x1E6984210];
      goto LABEL_11;
    }
  }

  v9 = MEMORY[0x1E6984200];
LABEL_11:
  v10 = *MEMORY[0x1E69841F8];
  keys[0] = *v9;
  keys[1] = v10;
  v11 = *MEMORY[0x1E695E4C0];
  v12 = *MEMORY[0x1E695E4D0];
  if (v8)
  {
    v13 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v13 = *MEMORY[0x1E695E4C0];
  }

  values[0] = v13;
  values[1] = v12;
  v14 = CFDictionaryCreate(*v1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v14)
  {
    OUTLINED_FUNCTION_0_25();
    VTDecompressionPluginClass_dispose(v24);
    return 4294950305;
  }

  v15 = v14;
  v29 = VTDecompressionPluginClass_VideoToolbox_callback;
  v30 = v1;
  v16 = *(v1 + 80);
  if (!v16 && ((OUTLINED_FUNCTION_2_23(), !v19) ? (v19 = v18 == 1902212657) : (v19 = 1), v19))
  {
    v17 = VTDecompressionSessionCreateWithOptions();
    if (v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v17 = CMPhotoCodecSessionPoolCreateDecompressionSession(*(v1 + 24), 0, v16, v2, v15, VTDecompressionPluginClass_VideoToolbox_callback, v1, v7 + 1, &v25);
    if (v17)
    {
      goto LABEL_33;
    }
  }

  if (DecodeHighSpeedDefault)
  {
    v20 = v12;
  }

  else
  {
    v20 = v11;
  }

  v17 = VTSessionSetProperty(*(v7 + 1), *MEMORY[0x1E69839A0], v20);
  if (!v17)
  {
    if (v7[24] || v7[25] || (v21 = FigDispatchQueueCreateWithPriority(), (*(v7 + 4) = v21) != 0))
    {
      *(v1 + 64) = v7;
      CFRelease(v15);
      return 0;
    }

    v5 = 4294950305;
    goto LABEL_34;
  }

LABEL_33:
  v5 = v17;
LABEL_34:
  CFRelease(v15);
  OUTLINED_FUNCTION_0_25();
  VTDecompressionPluginClass_dispose(v23);
  if ((v5 | 2) == 0x44E)
  {
    return 4294951826;
  }

  return v5;
}

uint64_t VTTileDecompressionPluginClass_decode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _addReferencesToItemInfo(__CFDictionary *a1, const __CFDictionary *a2, int a3, const void *a4, _BYTE *a5)
{
  value = 0;
  *a5 = 1;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v11 = Mutable;
  if (a2 && CFDictionaryGetValueIfPresent(a2, a4, &value))
  {
    for (i = -1; ; ++i)
    {
      Count = value;
      if (value)
      {
        Count = CFArrayGetCount(value);
      }

      if (i + 1 >= Count)
      {
        break;
      }

      FigCFArrayGetInt32AtIndex();
      if (!a3)
      {
        if (((i + 1) & 1) == 0)
        {
          *a5 = 0;
          goto LABEL_13;
        }

        FigCFArrayGetInt32AtIndex();
        FigCFArrayAppendInt32();
      }
    }
  }

  CFDictionarySetValue(a1, a4, v11);
LABEL_13:
  CFRelease(v11);
  return 0;
}

void _createThumbnailImageForIndex_1(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 112))
  {
    OUTLINED_FUNCTION_7_17();
    if (!v4 || (v11[0] = @"DryRun", v11[1] = @"UseProvidedPixelBuffer", !_checkForUnsupportedKeys(v1, v11)))
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        Count = *(v2 + 88);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (Count > v3)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 88), v3);
          v7 = OUTLINED_FUNCTION_12_16(ValueAtIndex);
          if (!v7)
          {
            OUTLINED_FUNCTION_8_16(v7, v8, v9, 0);
          }
        }
      }
    }

    OUTLINED_FUNCTION_13_13();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_13_13();

    FigSignalErrorAtGM();
  }
}

uint64_t _getAuxiliaryImageGeometryForIndex_2(uint64_t a1, int a2, CFIndex idx, uint64_t a4, void *a5, void *a6, _DWORD *a7)
{
  if (idx < 0)
  {
    return 4294950306;
  }

  Count = *(a1 + 96);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 4294950306;
  }

  v13 = *(CFArrayGetValueAtIndex(*(a1 + 96), idx) + 1);
  if (!v13)
  {
    return 4294950306;
  }

  return _getReferenceSequenceGeometry(v13, a5, a6, a7);
}

uint64_t _copyAuxiliaryImageFormatDescriptionForIndex_0(uint64_t a1, int a2, CFIndex idx, uint64_t a4, void *a5)
{
  theArray = 0;
  if (!a5)
  {
    return 0;
  }

  if (idx < 0)
  {
    return 4294950306;
  }

  Count = *(a1 + 96);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx || !*(CFArrayGetValueAtIndex(*(a1 + 96), idx) + 1))
  {
    return 4294950306;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    return 4294954514;
  }

  v11 = v10(FigBaseObject, *MEMORY[0x1E6973A40], *MEMORY[0x1E695E480], &theArray);
  v19 = OUTLINED_FUNCTION_104(v11, v12, v13, v14, v15, v16, v17, v18, v23, theArray);
  if (!FigBaseObject)
  {
    v20 = CFArrayGetCount(v19);
    v19 = theArray;
    if (v20 != 1)
    {
      FigBaseObject = 4294950194;
      if (!theArray)
      {
        return FigBaseObject;
      }

      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    FigBaseObject = 0;
    *a5 = ValueAtIndex;
    v19 = theArray;
  }

  if (v19)
  {
LABEL_14:
    CFRelease(v19);
  }

  return FigBaseObject;
}

void _createAuxiliaryImageForIndex_2(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 112))
  {
    OUTLINED_FUNCTION_7_17();
    if (!v4 || (v11[0] = @"DryRun", v11[1] = @"UseProvidedPixelBuffer", !_checkForUnsupportedKeys(v1, v11)))
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        Count = *(v2 + 96);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (Count > v3)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 96), v3);
          v7 = OUTLINED_FUNCTION_12_16(ValueAtIndex);
          if (!v7)
          {
            OUTLINED_FUNCTION_8_16(v7, v8, v9, 0);
          }
        }
      }
    }

    OUTLINED_FUNCTION_13_13();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_13_13();

    FigSignalErrorAtGM();
  }
}

uint64_t _createOutputBufferAttributesForImageIndex_2(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  videoDesc = 0;
  OutputBufferAttributesForFormatDescription = _copyFormatDescriptionForTrackReader(*(*(a1 + 80) + 8), &videoDesc);
  if (!OutputBufferAttributesForFormatDescription)
  {
    OutputBufferAttributesForFormatDescription = _createOutputBufferAttributesForFormatDescription(a1, videoDesc, a3, a4);
  }

  v16 = OUTLINED_FUNCTION_104(OutputBufferAttributesForFormatDescription, v9, v10, v11, v12, v13, v14, v15, v18, videoDesc);
  if (v16)
  {
    CFRelease(v16);
  }

  return v4;
}

uint64_t _createOutputBufferAttributesForThumbnailIndex_1()
{
  OUTLINED_FUNCTION_18_5();
  OutputBufferAttributesForFormatDescription = _copyThumbnailFormatDescriptionForIndex_0(v1, v2, v3, &cf);
  if (!OutputBufferAttributesForFormatDescription)
  {
    v5 = OUTLINED_FUNCTION_11_15();
    OutputBufferAttributesForFormatDescription = _createOutputBufferAttributesForFormatDescription(v5, v6, v7, v0);
  }

  v8 = OutputBufferAttributesForFormatDescription;
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t _createOutputBufferAttributesForAuxiliaryIndex_1()
{
  OUTLINED_FUNCTION_18_5();
  OutputBufferAttributesForFormatDescription = _copyAuxiliaryImageFormatDescriptionForIndex_0(v1, v2, v3, v4, &cf);
  if (!OutputBufferAttributesForFormatDescription)
  {
    v6 = OUTLINED_FUNCTION_11_15();
    OutputBufferAttributesForFormatDescription = _createOutputBufferAttributesForFormatDescription(v6, v7, v8, v0);
  }

  v9 = OutputBufferAttributesForFormatDescription;
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t _copyImageIsRGBForIndex_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6();
  v10 = _copySequenceReaderColor(v4, v5, v6, v7, v8, v9, 0, 0);
  if (!v10)
  {
    *a3 = FigCFEqual();
  }

  return v10;
}

uint64_t _copyThumbnailFormatDescriptionForIndex_0(uint64_t a1, int a2, CFIndex idx, void *a4)
{
  theArray = 0;
  if (!a4)
  {
    return 0;
  }

  if (idx < 0)
  {
    return 4294950306;
  }

  Count = *(a1 + 88);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx || !*(CFArrayGetValueAtIndex(*(a1 + 88), idx) + 1))
  {
    return 4294950306;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(FigBaseObject, *MEMORY[0x1E6973A40], *MEMORY[0x1E695E480], &theArray);
  v18 = OUTLINED_FUNCTION_104(v10, v11, v12, v13, v14, v15, v16, v17, v22, theArray);
  if (!FigBaseObject)
  {
    v19 = CFArrayGetCount(v18);
    v18 = theArray;
    if (v19 != 1)
    {
      FigBaseObject = 4294950194;
      if (!theArray)
      {
        return FigBaseObject;
      }

      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    FigBaseObject = 0;
    *a4 = ValueAtIndex;
    v18 = theArray;
  }

  if (v18)
  {
LABEL_14:
    CFRelease(v18);
  }

  return FigBaseObject;
}

uint64_t _getThumbnailGeometryForIndex_1(uint64_t a1, int a2, CFIndex idx, void *a4, void *a5, _DWORD *a6)
{
  if (idx < 0)
  {
    return 4294950306;
  }

  Count = *(a1 + 88);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 4294950306;
  }

  v12 = *(CFArrayGetValueAtIndex(*(a1 + 88), idx) + 1);
  if (!v12)
  {
    return 4294950306;
  }

  return _getReferenceSequenceGeometry(v12, a4, a5, a6);
}

uint64_t _copyThumbnailBitDepthForIndex_1(uint64_t a1, int a2, CFIndex a3, uint64_t a4)
{
  desc = 0;
  cf = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = _copyThumbnailFormatDescriptionForIndex_0(a1, a2, a3, &desc);
  if (v4)
  {
    v13 = v4;
  }

  else if (CMFormatDescriptionGetExtensions(desc))
  {
    v5 = CMPhotoCopyImageBitDepthFromFormatDescription(desc, &cf);
    v13 = v5;
    if (!v5)
    {
      OUTLINED_FUNCTION_9_17(v5, v6, v7, v8, v9, v10, v11, v12, desc, cf);
    }
  }

  else
  {
    v13 = 4294950303;
  }

  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t _copyAuxiliaryImageBitDepthForIndex_1(uint64_t a1, int a2, CFIndex a3, uint64_t a4)
{
  desc = 0;
  cf = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = _copyAuxiliaryImageFormatDescriptionForIndex_0(a1, a2, a3, a4, &desc);
  if (v4)
  {
    v13 = v4;
  }

  else if (CMFormatDescriptionGetExtensions(desc))
  {
    v5 = CMPhotoCopyImageBitDepthFromFormatDescription(desc, &cf);
    v13 = v5;
    if (!v5)
    {
      OUTLINED_FUNCTION_9_17(v5, v6, v7, v8, v9, v10, v11, v12, desc, cf);
    }
  }

  else
  {
    v13 = 4294950303;
  }

  if (desc)
  {
    CFRelease(desc);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t _copyColorSpaceForIndex_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42();
  return _copySequenceReaderColor(v3, v4, v5, v6, v7, 0, 0, 0);
}

uint64_t _getLoopCount(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 49))
      {
LABEL_4:
        result = 0;
        *a2 = *(a1 + 56);
        return result;
      }

      return 4294950303;
    }

    *(a1 + 56) = 0;
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 80) + 8);
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    if (v6)
    {
      FigBaseObject = FigTrackReaderGetFigBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        if (!v8(FigBaseObject, *MEMORY[0x1E69739F8], 0, &v31))
        {
          v9 = cmpweak_kFigTrackProperty_HasEditListBox();
          v10 = FigTrackReaderGetFigBaseObject();
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v11)
          {
            if (!v11(v10, v9, 0, &v28))
            {
              if (FigCFEqual())
              {
                v12 = v31;
                v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v13)
                {
                  *&v26[0].start.value = *MEMORY[0x1E6960C80];
                  v26[0].start.epoch = *(MEMORY[0x1E6960C80] + 16);
                  if (!v13(v12, v26, &v30))
                  {
                    v14 = cmpweak_kFigEditCursorProperty_RepeatsEdits();
                    v15 = FigEditCursorGetFigBaseObject();
                    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v16)
                    {
                      if (!v16(v15, v14, 0, &v29))
                      {
                        v17 = cmpweak_kFigTrackProperty_EditedDuration();
                        v18 = FigTrackReaderGetFigBaseObject();
                        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                        if (v19)
                        {
                          if (!v19(v18, v17, v5, &v32))
                          {
                            memset(&v27, 0, sizeof(v27));
                            CMTimeMakeFromDictionary(&v27, v32);
                            if (v27.flags)
                            {
                              if (FigCFEqual())
                              {
                                v20 = 1;
LABEL_22:
                                *(a1 + 56) = v20;
                                v21 = 1;
                                goto LABEL_29;
                              }

                              if ((~v27.flags & 0x11) == 0)
                              {
                                v20 = 0;
                                goto LABEL_22;
                              }

                              memset(v26, 0, sizeof(v26));
                              v22 = v30;
                              v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                              if (v23)
                              {
                                if (!v23(v22, v26))
                                {
                                  range1 = v26[0];
                                  v24 = v26[1];
                                  if (CMTimeRangeEqual(&range1, &v24))
                                  {
                                    memset(&range1, 0, 24);
                                    v24.start = v26[1].duration;
                                    CMTimeConvertScale(&range1.start, &v24.start, v27.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                                    v20 = 0;
                                    if (!((v27.value / range1.start.value) >> 32))
                                    {
                                      v20 = vcvtpd_s64_f64(v27.value / range1.start.value);
                                    }

                                    goto LABEL_22;
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
        }
      }

      v21 = 0;
    }

    else
    {
      fig_log_get_emitter();
      v21 = FigSignalErrorAtGM() == 0;
    }

LABEL_29:
    if (v28)
    {
      CFRelease(v28);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    *(a1 + 48) = 1;
    *(a1 + 49) = v21;
    if (v21)
    {
      goto LABEL_4;
    }

    return 4294950303;
  }

  return 0;
}

uint64_t _createSequenceReader(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v21 = 0;
  cf = 0;
  if (a2 < 1)
  {
    v10 = 0;
    v18 = 4294950306;
    goto LABEL_20;
  }

  v10 = malloc_type_calloc(1uLL, 0x78uLL, 0x106004017483417uLL);
  if (!v10)
  {
    v18 = 4294950305;
    goto LABEL_20;
  }

  v11 = FigSimpleMutexCreate();
  v10[4] = v11;
  if (!v11)
  {
    v18 = 4294950305;
    goto LABEL_18;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12(a1, a2, v10 + 1, &v21);
  if (!v13)
  {
    if (a3 == 1635088502 && a4 && v21 == 1885954932)
    {
      v21 = 1635088502;
    }

    else if (v21 != a3)
    {
      v18 = 4294950306;
      goto LABEL_18;
    }

    v14 = v10[1];
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v15)
    {
      goto LABEL_17;
    }

    v13 = v15(v14, &cf);
    if (!v13)
    {
      v16 = cf;
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v17)
      {
        v13 = v17(v16, v10 + 2);
        if (!v13)
        {
          *v10 = v21;
          v10[3] = 0;
          v10[5] = 0;
          *(v10 + 12) = a2;
          *(v10 + 52) = 0;
          *(v10 + 60) = 0;
          v18 = 0;
          if (a5)
          {
            *a5 = v10;
            v10 = 0;
          }

          goto LABEL_18;
        }

        goto LABEL_25;
      }

LABEL_17:
      v18 = 4294954514;
      goto LABEL_18;
    }
  }

LABEL_25:
  v18 = v13;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_20:
  _releaseSequenceReader(v10);
  return v18;
}

uint64_t _copyReferenceSequenceReaders(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3, int a4, int a5, __CFArray **a6)
{
  Mutable = CFArrayCreateMutable(a1, 0, 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v12 = Mutable;
  if (CFArrayGetCount(a3) >= 1)
  {
    v13 = 0;
    while (1)
    {
      value = 0;
      if (!FigCFArrayGetInt32AtIndex())
      {
        v15 = 4294950306;
        goto LABEL_11;
      }

      v14 = _createSequenceReader(a2, 0, a4, a5, &value);
      if (v14)
      {
        break;
      }

      CFArrayAppendValue(v12, value);
      if (++v13 >= CFArrayGetCount(a3))
      {
        goto LABEL_7;
      }
    }

    v15 = v14;
    goto LABEL_11;
  }

LABEL_7:
  v15 = 0;
  if (!a6)
  {
LABEL_11:
    CFRelease(v12);
    return v15;
  }

  *a6 = v12;
  return v15;
}

uint64_t _getImageGeometryFromTrackReader(CFTypeRef cf, uint64x2_t *a2)
{
  size.height = 0.0;
  dict = 0;
  size.width = 0.0;
  if (!a2 || !cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
LABEL_32:
    v7 = FigSignalErrorAtGM();
    goto LABEL_33;
  }

  v4 = CFGetAllocator(cf);
  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6(FigBaseObject, *MEMORY[0x1E69739E8], v4, &dict);
  if (v7)
  {
LABEL_33:
    v12 = v7;
    goto LABEL_16;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(dict, &size) || size.width <= 0.0 || size.height <= 0.0)
  {
    goto LABEL_31;
  }

  if (dict)
  {
    CFRelease(dict);
    dict = 0;
  }

  v8 = CFGetAllocator(cf);
  v9 = FigTrackReaderGetFigBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
LABEL_15:
    v12 = 4294954514;
    goto LABEL_16;
  }

  v11 = v10(v9, *MEMORY[0x1E69739D0], v8, &dict);
  if (!v11 || (v12 = v11, v11 == -12783))
  {
    width = size.width;
    if (dict)
    {
      v14.f64[0] = CMPhotoGetCropRectFromCLAPDict(dict, size.width);
      width = size.width;
    }

    else
    {
      height = size.height;
      v14.f64[0] = 0.0;
      v15 = 0.0;
      v16.f64[0] = size.width;
    }

    if (v14.f64[0] >= 0.0 && v14.f64[0] + v16.f64[0] <= width && v15 >= 0.0 && v15 + height <= size.height)
    {
      v12 = 0;
      v14.f64[1] = v15;
      v16.f64[1] = height;
      *a2 = vcvtq_u64_f64(vrndaq_f64(v14));
      a2[1] = vcvtq_u64_f64(vrndaq_f64(v16));
      goto LABEL_16;
    }

LABEL_31:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    goto LABEL_32;
  }

LABEL_16:
  if (dict)
  {
    CFRelease(dict);
  }

  return v12;
}

uint64_t _moveSampleCursorToIndexAndCreateSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = FigSimpleMutexLock();
  if (v5)
  {
    return v5;
  }

  SampleBufferFromSampleCursor = _moveCursorToPosition_0(*(a3 + 16), (a3 + 24), a2);
  if (!SampleBufferFromSampleCursor)
  {
    v7 = OUTLINED_FUNCTION_11_15();
    SampleBufferFromSampleCursor = _createSampleBufferFromSampleCursor(v7, v8, v9);
  }

  v10 = SampleBufferFromSampleCursor;
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t _decodePixelBufferForImageIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, CGImageRef *a8)
{
  v143 = a8;
  HIDWORD(v142) = a7;
  v149 = a1;
  OUTLINED_FUNCTION_6_16();
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v170 = 0u;
  *v171 = 0u;
  v169 = 0u;
  v168 = 0;
  OUTLINED_FUNCTION_4_18();
  if (v111)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
    OUTLINED_FUNCTION_4_18();
    if (v111)
    {
      OUTLINED_FUNCTION_6();
      kdebug_trace();
    }
  }

  bzero(v155, 0x98uLL);
  if (*(a5 + 61))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_4_18();
  if (v111)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  v180 = 0;
  v181.i64[0] = 0;
  value.i64[0] = 0;
  *&v175[0] = 0;
  *(a5 + 61) = 1;
  ImageCountForSequence = _getImageCountForSequence(a5, &v180);
  if (ImageCountForSequence)
  {
    goto LABEL_279;
  }

  v12 = *(a5 + 8);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v13)
  {
    goto LABEL_41;
  }

  ImageCountForSequence = v13(v12, &v181);
  if (ImageCountForSequence)
  {
    goto LABEL_279;
  }

  v14 = v181.i64[0];
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v15)
  {
    goto LABEL_41;
  }

  ImageCountForSequence = v15(v14, &value);
  if (ImageCountForSequence)
  {
    goto LABEL_279;
  }

  v179 = -1;
  v16 = value.i64[0];
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v17)
  {
    goto LABEL_41;
  }

  ImageCountForSequence = v17(v16, -1, &v179);
  if (ImageCountForSequence)
  {
LABEL_279:
    v32 = ImageCountForSequence;
    goto LABEL_42;
  }

  if (v179)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_0();
    ImageCountForSequence = FigSignalErrorAtGM();
    goto LABEL_279;
  }

  v18 = value.i64[0];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v19)
  {
    ImageCountForSequence = v19(v18, v175);
    if (!ImageCountForSequence)
    {
      if (v180 < 2)
      {
LABEL_156:
        v32 = 0;
        *(a5 + 62) = 1;
      }

      else
      {
        v20 = 0;
        while (1)
        {
          v21 = value.i64[0];
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (!v22)
          {
LABEL_157:
            v32 = 4294954514;
            goto LABEL_42;
          }

          v23 = v22(v21, 1, &v179);
          if (v23)
          {
            break;
          }

          if (v179 != 1)
          {
LABEL_277:
            v32 = 4294950194;
            goto LABEL_42;
          }

          v24 = *&v175[0];
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 176);
          if (!v25)
          {
            goto LABEL_157;
          }

          v23 = v25(v24, 1, &v179);
          if (v23)
          {
            break;
          }

          if (v179 != 1)
          {
            goto LABEL_277;
          }

          v26 = value.i64[0];
          v27 = *&v175[0];
          v28 = *(CMBaseObjectGetVTable() + 16);
          if (v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if (v27 && (v30 = *(CMBaseObjectGetVTable() + 16)) != 0)
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }

          if (v29 == v31 && *(v29 + 32) && (*(v31 + 32))(v26, v27))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_6_0();
            v32 = FigSignalErrorAtGM();
            goto LABEL_42;
          }

          if (++v20 >= v180 - 1)
          {
            goto LABEL_156;
          }
        }

        v32 = v23;
      }

      goto LABEL_42;
    }

    goto LABEL_279;
  }

LABEL_41:
  v32 = 4294954514;
LABEL_42:
  if (v181.i64[0])
  {
    CFRelease(v181.i64[0]);
  }

  if (value.i64[0])
  {
    CFRelease(value.i64[0]);
  }

  if (*&v175[0])
  {
    CFRelease(*&v175[0]);
  }

  if (v32)
  {
    goto LABEL_221;
  }

  OUTLINED_FUNCTION_4_18();
  if (v111)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

LABEL_52:
  if (!*(a5 + 62))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_0();
    ImageGeometryFromTrackReader = FigSignalErrorAtGM();
    goto LABEL_250;
  }

  v33 = *(a5 + 8);
  v181 = 0u;
  v182 = 0u;
  ImageGeometryFromTrackReader = _getImageGeometryFromTrackReader(v33, &v181);
  if (ImageGeometryFromTrackReader)
  {
    goto LABEL_250;
  }

  ImageGeometryFromTrackReader = CMPhotoDecompressionContainerParseOptions(a2, a6, v182, *(&v182 + 1), v155);
  if (ImageGeometryFromTrackReader)
  {
    goto LABEL_250;
  }

  if (!v157)
  {
    v156 = 0;
    goto LABEL_60;
  }

  if (CMPhotoHEIFUtilitiesSupportsOutputPixelFormat(v156))
  {
LABEL_60:
    if (!v158)
    {
      v159 = v181;
      v160 = v182;
      goto LABEL_64;
    }

    value = v181;
    v177 = v182;
    v175[0] = v159;
    v175[1] = v160;
    ImageGeometryFromTrackReader = CMPhotoApplyCropCMPhotoRectToRect(&value, v175);
    if (!ImageGeometryFromTrackReader)
    {
      v159 = value;
      v160 = v177;
LABEL_64:
      OUTLINED_FUNCTION_42();
      CMPhotoPixelBufferConstrainSizeToMaxSideLength(v35, v36, v37, v38, v39, v40, 0, v41, 0, 0);
      goto LABEL_65;
    }

LABEL_250:
    v32 = ImageGeometryFromTrackReader;
    goto LABEL_221;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_0();
  ImageGeometryFromTrackReader = FigSignalErrorAtGM();
  if (ImageGeometryFromTrackReader)
  {
    goto LABEL_250;
  }

LABEL_65:
  ImageGeometryFromTrackReader = CMPhotoDecompressionSessionCopyScaler(*(a2 + 16), &v174);
  if (ImageGeometryFromTrackReader)
  {
    goto LABEL_250;
  }

  ImageGeometryFromTrackReader = CMPhotoDecompressionSessionCopySurfacePool(*(a2 + 16), &v173);
  if (ImageGeometryFromTrackReader)
  {
    goto LABEL_250;
  }

  v43 = v173;
  v42 = v174;
  value.i64[0] = 0;
  *&v175[0] = 0;
  v180 = 0;
  v181.i64[0] = 0;
  v44 = _copyFormatDescriptionForTrackReader(*(a5 + 8), &v181);
  if (v44)
  {
    MediaSubType = 0;
  }

  else
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(v181.i64[0]);
  }

  if (v181.i64[0])
  {
    CFRelease(v181.i64[0]);
  }

  v46 = MEMORY[0x1E695E4D0];
  if (v44)
  {
    MutableCopy = 0;
    v32 = 4294950194;
LABEL_255:
    v53 = a3;
    goto LABEL_259;
  }

  v181.i8[0] = 0;
  IsCodecAllowed = CMPhotoDecompressionContainerIsCodecAllowed(a2, MediaSubType, v181.i8);
  if (IsCodecAllowed)
  {
LABEL_254:
    v32 = IsCodecAllowed;
    MutableCopy = 0;
    goto LABEL_255;
  }

  if (!v181.i8[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_0();
    IsCodecAllowed = FigSignalErrorAtGM();
    goto LABEL_254;
  }

  IsCodecAllowed = _copyFormatDescriptionForTrackReader(*(a5 + 8), &value);
  if (IsCodecAllowed)
  {
    goto LABEL_254;
  }

  IsCodecAllowed = _copySequenceReaderColor(*(a2 + 40), a5, &v169 + 1, &v170, &v170 + 1, v171, &v171[1], &v171[1] + 1);
  if (IsCodecAllowed)
  {
    goto LABEL_254;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v32 = 4294950305;
    goto LABEL_255;
  }

  v49 = OUTLINED_FUNCTION_17_9();
  CFDictionarySetValue(v49, v50, v51);
  v52 = v164;
  v53 = a3;
  if (v164 == 1)
  {
    v54 = OUTLINED_FUNCTION_17_9();
    CFDictionarySetValue(v54, v55, v56);
    v52 = v164;
  }

  if (v52 == 2)
  {
    v57 = OUTLINED_FUNCTION_17_9();
    CFDictionarySetValue(v57, v58, v59);
  }

  if (v156 && CMPhotoPixelFormatIsPackedYUV(v156))
  {
    v60 = OUTLINED_FUNCTION_17_9();
    CFDictionaryAddValue(v60, v61, v62);
  }

  CFDictionarySetValue(MutableCopy, @"SyncDecode", *MEMORY[0x1E695E4C0]);
  v63 = CMPhotoDecompressionSessionCopySequenceCodecPool(*(a2 + 16), &v180);
  if (v63)
  {
    v32 = v63;
  }

  else
  {
    v32 = CMPhotoDecompressionPluginCreate(*(a2 + 40), v43, v42, v180, MediaSubType, *(a2 + 16), value.i64[0], 0, *(a5 + 48) + ((*(a2 + 504) + *(a5 + 48) + (*(a2 + 504) + *(a5 + 48)) * (*(a2 + 504) + *(a5 + 48))) >> 1), MutableCopy, _decoder_plugin_callback_simple, &v169, v175);
    if (!v32)
    {
      v153 = *&v175[0];
      *&v175[0] = 0;
      OUTLINED_FUNCTION_6_16();
      goto LABEL_87;
    }
  }

  OUTLINED_FUNCTION_6_16();
LABEL_259:
  if (*(&v169 + 1))
  {
    CFRelease(*(&v169 + 1));
    *(&v169 + 1) = 0;
  }

  if (v170)
  {
    CFRelease(v170);
    *&v170 = 0;
  }

  if (*(&v170 + 1))
  {
    CFRelease(*(&v170 + 1));
    *(&v170 + 1) = 0;
  }

  if (v171[0])
  {
    CFRelease(v171[0]);
    v171[0] = 0;
  }

  if (*&v175[0])
  {
    CFRelease(*&v175[0]);
  }

  v153 = 0;
LABEL_87:
  if (v180)
  {
    CFRelease(v180);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (value.i64[0])
  {
    CFRelease(value.i64[0]);
  }

  if (v32)
  {
    goto LABEL_247;
  }

  v64 = CMPhotoDecompressionPluginCopyAttachments(v153);
  if (v64)
  {
    goto LABEL_244;
  }

  CMPhotoCFDictionaryGetInt64IfPresent();
  if (!v53)
  {
    v69 = 0;
    v70 = 0;
    *(a5 + 60) = 1;
    v71 = -1;
LABEL_163:
    OUTLINED_FUNCTION_4_18();
    if (v111)
    {
      OUTLINED_FUNCTION_6();
      kdebug_trace();
      OUTLINED_FUNCTION_4_18();
      if (v111)
      {
        OUTLINED_FUNCTION_6();
        kdebug_trace();
      }
    }

    goto LABEL_168;
  }

  OUTLINED_FUNCTION_4_18();
  if (v111)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  *(a5 + 60) = 0;
  v181.i64[0] = 0;
  if (!*(a5 + 52))
  {
    *(a5 + 52) = 1;
    *(a5 + 56) = -1;
    v32 = _copyFormatDescriptionForTrackReader(*(a5 + 8), &v181);
    if (v32)
    {
      goto LABEL_112;
    }

    Extension = CMFormatDescriptionGetExtension(v181.i64[0], *MEMORY[0x1E69600A0]);
    if (Extension)
    {
      v66 = CFDictionaryGetValue(Extension, @"ccst");
      if (!v66)
      {
        goto LABEL_112;
      }

      ValueAtIndex = v66;
      v68 = CFGetTypeID(v66);
      if (v68 == CFArrayGetTypeID())
      {
        ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        if (!ValueAtIndex)
        {
LABEL_112:
          if (v181.i64[0])
          {
            CFRelease(v181.i64[0]);
          }

          if (v32)
          {
            goto LABEL_247;
          }

          goto LABEL_115;
        }
      }

      else
      {
        v74 = CFGetTypeID(ValueAtIndex);
        if (v74 != CFDataGetTypeID())
        {
          goto LABEL_112;
        }
      }

      if (CFDataGetLength(ValueAtIndex) != 8)
      {
        goto LABEL_112;
      }

      v75 = bswap32(*(CFDataGetBytePtr(ValueAtIndex) + 1));
      v72 = v75 >> 31;
      v73 = (v75 >> 26) & 0xF;
    }

    else
    {
      LOBYTE(v72) = 0;
      v73 = -1;
    }

    *(a5 + 53) = v72;
    *(a5 + 56) = v73;
    goto LABEL_112;
  }

LABEL_115:
  v179 = 0;
  if (*(a5 + 40))
  {
    goto LABEL_159;
  }

  appended = _getImageCountForSequence(a5, &v179);
  if (appended)
  {
LABEL_245:
    v32 = appended;
LABEL_246:
    OUTLINED_FUNCTION_6_16();
    goto LABEL_247;
  }

  v152 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(a5 + 40) = Mutable;
  if (!Mutable)
  {
    v32 = 4294950305;
    goto LABEL_246;
  }

  if (v179 >= 1)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v151 = *MEMORY[0x1E69736F8];
    v146 = *MEMORY[0x1E6960450];
    key = *MEMORY[0x1E6960400];
    v145 = *MEMORY[0x1E6960458];
    v150 = *v46;
    while (1)
    {
      v181.i64[0] = 0;
      appended = FigSimpleMutexLock();
      if (appended)
      {
        goto LABEL_245;
      }

      v81 = _moveCursorToPosition_0(*(a5 + 16), (a5 + 24), v78);
      if (v81)
      {
        break;
      }

      FigBaseObject = FigSampleCursorGetFigBaseObject();
      v83 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v83)
      {
        v32 = 4294954514;
LABEL_131:
        FigSimpleMutexUnlock();
        v84 = 0;
        v88 = 0;
        v87 = -1;
        goto LABEL_132;
      }

      v81 = v83(FigBaseObject, v151, v152, &v181);
      if (v81)
      {
        break;
      }

      v81 = FigSimpleMutexUnlock();
      if (v81)
      {
        break;
      }

      value.i64[0] = 0;
      *&v175[0] = 0;
      v180 = 0;
      if (v181.i64[0])
      {
        CFDictionaryGetValueIfPresent(v181.i64[0], key, &value);
        CFDictionaryGetValueIfPresent(v181.i64[0], v146, v175);
        CFDictionaryGetValueIfPresent(v181.i64[0], v145, &v180);
      }

      v84 = FigCFEqual() == 0;
      v85 = value.i64[0];
      if (value.i64[0] && (v86 = CFGetTypeID(value.i64[0]), v86 == CFBooleanGetTypeID()))
      {
        v87 = CMPhotoCFBooleanGetValue(v85) != 0;
      }

      else
      {
        v87 = -1;
      }

      v32 = *&v175[0];
      if (*&v175[0])
      {
        v91 = CFGetTypeID(*&v175[0]);
        if (v91 == CFBooleanGetTypeID())
        {
          v92 = CMPhotoCFBooleanGetValue(v32);
          v32 = 0;
          v88 = v92 != 0;
        }

        else
        {
          v88 = 0;
          v32 = 0;
        }
      }

      else
      {
        v88 = 0;
      }

LABEL_132:
      if (v181.i64[0])
      {
        CFRelease(v181.i64[0]);
      }

      if (v32)
      {
        goto LABEL_246;
      }

      if (v78 == 0 && !v84)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_0();
        appended = FigSignalErrorAtGM();
        if (appended)
        {
          goto LABEL_245;
        }

        goto LABEL_159;
      }

      v89 = v78;
      v90 = v78;
      if (!v84)
      {
        if (!*(a5 + 53) || *(a5 + 56) != 1)
        {
          goto LABEL_143;
        }

        if (v87 == 1)
        {
          v89 = v80;
          v90 = v79;
          goto LABEL_144;
        }

        if (!v87)
        {
          v89 = v80;
          v90 = v79;
          if (v88)
          {
            v32 = 4294950194;
            goto LABEL_246;
          }
        }

        else
        {
LABEL_143:
          v89 = v80;
          v90 = v79;
        }
      }

LABEL_144:
      appended = FigCFArrayAppendInt64();
      if (appended)
      {
        goto LABEL_245;
      }

      ++v78;
      v79 = v90;
      v80 = v89;
      if (v78 >= v179)
      {
        goto LABEL_159;
      }
    }

    v32 = v81;
    goto LABEL_131;
  }

LABEL_159:
  v178 = 0;
  v53 = a3;
  FigCFArrayGetInt64AtIndex();
  OUTLINED_FUNCTION_6_16();
  if (!v93)
  {
    v32 = 4294950194;
LABEL_247:
    if (v153)
    {
      CMPhotoDecompressionPluginDispose(v153);
    }

    goto LABEL_221;
  }

  v69 = HIDWORD(v178);
  v71 = v178;
  v70 = v178 != a3;
  OUTLINED_FUNCTION_4_18();
  if (v111)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
    goto LABEL_163;
  }

LABEL_168:
  if (v70)
  {
    if (v71 < 0)
    {
      if (v69 < v53)
      {
        do
        {
          v64 = _decodeReferencePixelBuffer(v149, v153, v69, a5);
          if (v64)
          {
            goto LABEL_244;
          }
        }

        while (v53 != ++v69);
      }

      *(a5 + 60) = 1;
    }

    else
    {
      v64 = _decodeReferencePixelBuffer(v149, v153, v71, a5);
      if (v64)
      {
        goto LABEL_244;
      }
    }
  }

  v64 = CMPhotoDecompressionPluginDecode(v153);
  if (v64)
  {
LABEL_244:
    v32 = v64;
    goto LABEL_247;
  }

  Size = CMPhotoCFNumberCreateSize(v53);
  if (!Size)
  {
    v32 = 4294950305;
    goto LABEL_247;
  }

  v95 = Size;
  v96 = OUTLINED_FUNCTION_20_1();
  v32 = CMPhotoDecompressionPluginSetAttachment(v96);
  CFRelease(v95);
  if (v32)
  {
    goto LABEL_247;
  }

  CMPhotoDecompressionPluginDispose(v153);
  OUTLINED_FUNCTION_4_18();
  if (v111)
  {
    OUTLINED_FUNCTION_42();
    kdebug_trace();
    OUTLINED_FUNCTION_4_18();
    if (v111)
    {
      OUTLINED_FUNCTION_6();
      kdebug_trace();
    }
  }

  v32 = v169;
  if (!v169)
  {
    v154 = v174;
    v97 = v168;
    v98 = *(&v169 + 1);
    v100 = *(&v170 + 1);
    v99 = v170;
    v101 = v171[0];
    v102 = v171[1];
    v103 = HIDWORD(v171[1]);
    value.i64[0] = 0;
    CMPhotoRemoveColorInformationGuessedBy(v168);
    CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v98, v99, v100, v101, v97);
    CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(v102, v103, v97);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v97);
    v105 = PixelFormatType;
    if (v157)
    {
      DictionaryRepresentation = v156;
    }

    else
    {
      DictionaryRepresentation = PixelFormatType;
    }

    v107 = CMPhotoPixelBufferHasUnhandledIdentityMatrix(v97);
    v108 = v160;
    v109 = cf;
    v181 = v159;
    v182 = v160;
    v110 = CMPhotoPixelBufferMemcpySupportedForBuffer(v97, &v181, 0, 0);
    if (!v109 && DictionaryRepresentation == v105 && !v107)
    {
      v111 = !v108 && *(&v108 + 1) == 0;
      if (v111 && (v110 & 1) != 0)
      {
        if (v167)
        {
          CMPhotoCreateCVPixelBufferNotBackedByIOSurface(*MEMORY[0x1E695E480], v105, v160, SDWORD2(v160), 0, 0, 0, 0, &value, v136, v137, pixelBufferOut, v139, v140, v141, v142, v143, a4, v145, v146, key, a3, v149, v150, v151);
        }

        else
        {
          OUTLINED_FUNCTION_14_13();
          PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(v117, v118, v119, v120, v121, v122, v123, v124, 0, 0, &value);
        }

        v32 = PixelBuffer;
        OUTLINED_FUNCTION_6_16();
        if (!v125)
        {
          v181 = v159;
          v182 = v160;
          OUTLINED_FUNCTION_14_13();
          CMPhotoPixelBufferCopyCropRectToOffset(v126, v127, v128, v129, v130, v131, v132, v133);
          if (!v134)
          {
            CMPhotoPropagateColorPropertiesFromSourceBuffer(v97, value.i64[0]);
            OUTLINED_FUNCTION_19_9();
            v115 = 0;
LABEL_210:
            if (!v143)
            {
              v32 = 0;
              goto LABEL_213;
            }

            WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v149, value.i64[0], v166, SHIDWORD(v142), v143);
LABEL_212:
            v32 = WrappedPixelBufferForType;
LABEL_213:
            if (value.i64[0])
            {
              CFRelease(value.i64[0]);
            }

            if (v115)
            {
              CFRelease(v115);
            }

            if (DictionaryRepresentation)
            {
              CFRelease(DictionaryRepresentation);
            }

            if (v105)
            {
              CFRelease(v105);
            }

            goto LABEL_221;
          }

          v32 = v134;
        }

        OUTLINED_FUNCTION_19_9();
        v115 = 0;
        goto LABEL_213;
      }
    }

    if (cf)
    {
      CFRetain(cf);
    }

    OUTLINED_FUNCTION_6_16();
    value.i64[0] = v113;
    ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, v155[1], v161, v162, v163);
    v115 = ScaleAndRotateOptionsWithHWIfNeeded;
    if (!ScaleAndRotateOptionsWithHWIfNeeded)
    {
      OUTLINED_FUNCTION_19_9();
      v32 = 4294950305;
      goto LABEL_213;
    }

    CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationBackedByIOSurface", v167 == 0);
    CMPhotoCFDictionarySetInt(v115, @"DestinationPixelFormat", DictionaryRepresentation);
    CMPhotoCFDictionarySetBoolean(v115, @"ExactDimensions", 1);
    v183.width = 0;
    v183.height = 0;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v183);
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(v115, @"DestinationSizeDictionary", DictionaryRepresentation);
    }

    v184.origin.x = v159.u64[0];
    v184.origin.y = v159.u64[1];
    v184.size.width = v160;
    v184.size.height = *(&v160 + 1);
    v105 = CGRectCreateDictionaryRepresentation(v184);
    if (v105)
    {
      CFDictionarySetValue(v115, @"SourceCropRectDictionary", v105);
    }

    WrappedPixelBufferForType = CMPhotoScaleAndRotateSessionTransformImage(v154, v97, v115, &value);
    if (WrappedPixelBufferForType)
    {
      goto LABEL_212;
    }

    goto LABEL_210;
  }

LABEL_221:
  if (*(&v169 + 1))
  {
    CFRelease(*(&v169 + 1));
  }

  if (v170)
  {
    CFRelease(v170);
  }

  if (*(&v170 + 1))
  {
    CFRelease(*(&v170 + 1));
  }

  if (v171[0])
  {
    CFRelease(v171[0]);
  }

  if (v168)
  {
    CFRelease(v168);
  }

  if (v174)
  {
    CFRelease(v174);
  }

  if (v173)
  {
    CFRelease(v173);
  }

  if (v172)
  {
    CFRelease(v172);
  }

  OUTLINED_FUNCTION_4_18();
  if (v111)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
    OUTLINED_FUNCTION_4_18();
    if (v111)
    {
      OUTLINED_FUNCTION_6();
      kdebug_trace();
    }
  }

  return v32;
}

uint64_t _moveCursorToPosition_0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v10 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = a3 - v6;
  result = v7(a1, v8, &v10);
  if (!result)
  {
    if (v10 == v8)
    {
      result = 0;
      *a2 = a3;
    }

    else
    {
      return 4294950194;
    }
  }

  return result;
}

uint64_t _createSampleBufferFromSampleCursor(uint64_t a1, uint64_t a2, CMSampleBufferRef *a3)
{
  v33 = 0;
  v34 = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  sbuf = 0;
  cf = 0;
  theDict = 0;
  v29 = 0;
  v26 = 0;
  sampleSizeArray = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5(a2, &v29, &sampleSizeArray, &v33, 0);
  if (v6)
  {
    goto LABEL_34;
  }

  if (!v33)
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    goto LABEL_34;
  }

  FigBaseObject = FigSampleCursorGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_21:
    v24 = 4294954514;
    goto LABEL_22;
  }

  v6 = v8(FigBaseObject, *MEMORY[0x1E69736F8], *MEMORY[0x1E695E480], &theDict);
  if (v6)
  {
LABEL_34:
    v24 = v6;
    goto LABEL_22;
  }

  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v9)
  {
    goto LABEL_21;
  }

  v6 = v9(a2, &sampleTimingArray.presentationTimeStamp);
  if (v6)
  {
    goto LABEL_34;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v10)
  {
    goto LABEL_21;
  }

  v6 = v10(a2, &sampleTimingArray);
  if (v6)
  {
    goto LABEL_34;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v11)
  {
    goto LABEL_21;
  }

  v6 = v11(a2, &v34);
  if (v6)
  {
    goto LABEL_34;
  }

  v12 = v33;
  v13 = sampleSizeArray;
  v14 = v29;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    goto LABEL_21;
  }

  v6 = v15(v12, v13, v14, &cf, &v26);
  if (v6)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_42();
  v6 = CMSampleBufferCreate(v16, v17, v18, v19, v20, v21, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sbuf);
  if (v6)
  {
    goto LABEL_34;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex && theDict)
    {
      CFDictionaryApplyFunction(theDict, _appendAttributesToDictionary, ValueAtIndex);
    }

    v24 = 0;
    if (a3)
    {
      *a3 = sbuf;
      sbuf = 0;
    }
  }

  else
  {
    v24 = 4294950194;
  }

LABEL_22:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return v24;
}

uint64_t _decodeReferencePixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  SampleBuffer = _moveSampleCursorToIndexAndCreateSampleBuffer(a1, a3, a4);
  if (!SampleBuffer)
  {
    SampleBuffer = CMPhotoDecompressionPluginDecode(a2);
  }

  v14 = OUTLINED_FUNCTION_104(SampleBuffer, v7, v8, v9, v10, v11, v12, v13, v16, 0);
  if (v14)
  {
    CFRelease(v14);
  }

  return v4;
}

uint64_t _copySequenceReaderColor(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, _DWORD *a7, _DWORD *a8)
{
  desc = 0;
  if (!a2)
  {
    return 4294950306;
  }

  if (*(a2 + 64))
  {
    goto LABEL_17;
  }

  v16 = _copyFormatDescriptionForTrackReader(*(a2 + 8), &desc);
  if (!v16)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
    v18 = desc;
    if (MediaSubType == 1635135537)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = *"";
      v26[2] = ___copySequenceReaderColor_block_invoke;
      v26[3] = &__block_descriptor_tmp_27_0;
      v26[4] = a1;
      v26[5] = a2;
      v28 = 0;
      v16 = CMPhotoDecompressionContainerCreateCorrectedAV1FormatDescription(desc, v26, 0, &v28);
      if (v16)
      {
        goto LABEL_40;
      }

      if (desc)
      {
        CFRelease(desc);
      }

      v18 = v28;
      desc = v28;
    }

    v19 = *a2 == 1635088502;
    v28 = 0;
    if (CMPhotoCopyImageBitDepthFromFormatDescription(v18, &v28) != -12783)
    {
      if (!v28)
      {
        v19 = 0;
        goto LABEL_15;
      }

      v19 = CFArrayGetCount(v28) == 1;
    }

    if (v28)
    {
      CFRelease(v28);
    }

LABEL_15:
    v16 = CMPhotoDecompressionContainerCopyColorInfoFromFormatDescription(desc, 0, 0, v19, 1, 0, (a2 + 72), (a2 + 80), (a2 + 88), (a2 + 96), (a2 + 112), (a2 + 116), 0);
    if (!v16)
    {
      *(a2 + 64) = 1;
LABEL_17:
      if (a3)
      {
        v20 = *(a2 + 72);
        if (v20)
        {
          v20 = CFRetain(v20);
        }

        *a3 = v20;
      }

      if (a4)
      {
        v21 = *(a2 + 80);
        if (v21)
        {
          v21 = CFRetain(v21);
        }

        *a4 = v21;
      }

      if (a5)
      {
        v22 = *(a2 + 88);
        if (v22)
        {
          v22 = CFRetain(v22);
        }

        *a5 = v22;
      }

      if (a6)
      {
        v23 = *(a2 + 96);
        if (v23)
        {
          v23 = CFRetain(v23);
        }

        *a6 = v23;
      }

      if (a7)
      {
        *a7 = *(a2 + 112);
      }

      v24 = 0;
      if (a8)
      {
        *a8 = *(a2 + 116);
      }

      goto LABEL_37;
    }
  }

LABEL_40:
  v24 = v16;
LABEL_37:
  if (desc)
  {
    CFRelease(desc);
  }

  return v24;
}

uint64_t _getReferenceSequenceGeometry(const void *a1, void *a2, void *a3, _DWORD *a4)
{
  v8 = 0u;
  v9 = 0u;
  result = _getImageGeometryFromTrackReader(a1, &v8);
  if (!result)
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (a2)
    {
      *a2 = v9;
    }

    if (a3)
    {
      *a3 = *(&v9 + 1);
    }
  }

  return result;
}

uint64_t _getAuxiliaryTypeInfoForIndex(uint64_t a1, CFIndex idx, _DWORD *a3, const __CFString **a4)
{
  desc = 0;
  Count = *(a1 + 96);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    fig_log_get_emitter();
    v10 = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), idx);
  v10 = _copyFormatDescriptionForTrackReader(ValueAtIndex[1], &desc);
  if (v10)
  {
LABEL_24:
    v15 = v10;
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  Extensions = CMFormatDescriptionGetExtensions(desc);
  if (!Extensions || (value = 0, LODWORD(Extensions) = CFDictionaryGetValueIfPresent(Extensions, *MEMORY[0x1E69600A0], &value), !Extensions) || (data = 0, LODWORD(Extensions) = CFDictionaryGetValueIfPresent(value, @"auxi", &data), !Extensions))
  {
    v12 = 0;
    if (!a3)
    {
LABEL_15:
      v15 = 0;
      if (!a4)
      {
        goto LABEL_18;
      }

      *a4 = v12;
      goto LABEL_17;
    }

LABEL_14:
    *a3 = Extensions;
    goto LABEL_15;
  }

  v12 = CFStringCreateFromExternalRepresentation(*MEMORY[0x1E695E488], data, 0x8000100u);
  if (v12)
  {
    v13 = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    *v13 = 49;
    v20.location = CFStringGetLength(v12) - 1;
    v20.length = 1;
    CFStringGetCharacters(v12, v20, v13);
    if (!*v13)
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v12);
      v21.location = CFStringGetLength(v12) - 1;
      v21.length = 1;
      CFStringDelete(MutableCopy, v21);
      CFRelease(v12);
      v12 = MutableCopy;
    }

    free(v13);
    LODWORD(Extensions) = CMPhotoGetAuxiliaryImageTypeFromURN();
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  fig_log_get_emitter();
  v15 = FigSignalErrorAtGM();
LABEL_18:
  if (desc)
  {
    CFRelease(desc);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v15;
}

uint64_t _createOutputBufferAttributesForFormatDescription(_BYTE *a1, CMVideoFormatDescriptionRef videoDesc, uint64_t a3, CFMutableDictionaryRef *a4)
{
  if (!videoDesc)
  {
    return 4294950306;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  v23 = 0;
  v24 = 0;
  bzero(v22, 0x98uLL);
  v8 = CMPhotoDecompressionContainerParseOptions(a1, a3, Dimensions.width, *&Dimensions >> 32, v22);
  if (v8)
  {
    return v8;
  }

  OUTLINED_FUNCTION_42();
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v9, v10, v11, v12, v13, v14, 0, v15, 0, 0);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v17 = Mutable;
  CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E6966208], v23);
  if (v18 || (CMPhotoCFDictionarySetSize(v17, *MEMORY[0x1E69660B8], v24), v18))
  {
    v20 = v18;
LABEL_10:
    CFRelease(v17);
    return v20;
  }

  CMPhotoCFDictionarySetSize(v17, *MEMORY[0x1E6966020], 16);
  v20 = v19;
  if (!a4 || v19)
  {
    goto LABEL_10;
  }

  *a4 = v17;
  return v20;
}

uint64_t _createDescriptionOfFrameForIndex(uint64_t a1, CFMutableArrayRef a2, uint64_t a3, const __CFAllocator *a4, __CFArray *a5, CFMutableDictionaryRef *a6, __CFDictionary **a7)
{
  v88 = 0;
  v89 = 0;
  v86 = 0;
  cf = 0;
  v84 = 0;
  v85 = 0;
  value = 0;
  v13 = OUTLINED_FUNCTION_53();
  Mutable = CFDictionaryCreateMutable(v13, v14, v15, v16);
  if (!Mutable)
  {
    v32 = 4294950305;
    goto LABEL_111;
  }

  v18 = Mutable;
  v92 = 0;
  memset(&v93, 0, sizeof(v93));
  *&v82 = 0;
  v81 = 0uLL;
  v19 = FigSimpleMutexLock();
  if (v19)
  {
    v32 = v19;
    goto LABEL_23;
  }

  v22 = _moveCursorToPosition_0(*(a2 + 2), a2 + 3, a3);
  if (v22)
  {
    goto LABEL_144;
  }

  v23 = *(a2 + 2);
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v24)
  {
    goto LABEL_21;
  }

  v22 = v24(v23, &v93);
  if (v22)
  {
LABEL_144:
    v32 = v22;
    goto LABEL_22;
  }

  v25 = *(a2 + 2);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v26)
  {
LABEL_21:
    v32 = 4294954514;
LABEL_22:
    FigSimpleMutexUnlock();
LABEL_23:
    v31 = 0;
    v30 = 0;
    goto LABEL_24;
  }

  v22 = v26(v25, &v81);
  if (v22)
  {
    goto LABEL_144;
  }

  FigBaseObject = FigSampleCursorGetFigBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = *MEMORY[0x1E695E480];
  v22 = v28(FigBaseObject, *MEMORY[0x1E69736F8], *MEMORY[0x1E695E480], &v92);
  if (v22)
  {
    goto LABEL_144;
  }

  v22 = FigSimpleMutexUnlock();
  if (v22)
  {
    goto LABEL_144;
  }

  *&time.value = v81;
  time.epoch = v82;
  v30 = CMTimeCopyAsDictionary(&time, v29);
  if (v30)
  {
    CFDictionarySetValue(v18, @"SequenceSampleDuration", v30);
  }

  time = v93;
  v31 = CMTimeCopyAsDictionary(&time, v29);
  if (v31)
  {
    CFDictionarySetValue(v18, @"SequenceSamplePTS", v31);
  }

  if (v92)
  {
    LOBYTE(time.value) = 0;
    if (CMPhotoCFDictionaryGetBooleanIfPresent())
    {
      CMPhotoCFDictionarySetBoolean(v18, @"SequenceSampleDependsOnOthers", LOBYTE(time.value));
    }

    v90 = 0;
    if (CMPhotoCFDictionaryGetBooleanIfPresent())
    {
      CMPhotoCFDictionarySetBoolean(v18, @"SequenceSampleIsDependedOnByOthers", v90);
    }

    v32 = 0;
LABEL_24:
    if (v92)
    {
      CFRelease(v92);
    }

    if (v30)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v32 = 0;
  if (v30)
  {
LABEL_27:
    CFRelease(v30);
  }

LABEL_28:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    v33 = 0;
    goto LABEL_41;
  }

  if (a3)
  {
    v33 = 0;
    goto LABEL_33;
  }

  v34 = OUTLINED_FUNCTION_53();
  v33 = CFDictionaryCreateMutable(v34, v35, v36, v37);
  if (!v33)
  {
    OUTLINED_FUNCTION_22_4();
    v32 = 4294950305;
    goto LABEL_100;
  }

  v81 = 0u;
  v82 = 0u;
  ImageGeometryFromTrackReader = _getImageGeometryFromTrackReader(*(a2 + 1), &v81);
  if (ImageGeometryFromTrackReader)
  {
    goto LABEL_136;
  }

  v31 = v33;
  v94.width = v82;
  v94.height = *(&v82 + 1);
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v94);
  if (!DictionaryRepresentation)
  {
    v32 = 4294950305;
    goto LABEL_151;
  }

  v40 = DictionaryRepresentation;
  v41 = OUTLINED_FUNCTION_20_1();
  CFDictionarySetValue(v41, v42, v43);
  CFRelease(v40);
  v44 = _copyFormatDescriptionForTrackReader(*(a2 + 1), &v84);
  if (v44)
  {
    goto LABEL_148;
  }

  v93.value = 0;
  v45 = CMPhotoCopyImageBitDepthFromFormatDescription(v84, &v93);
  if (v45 != -12783)
  {
    v32 = v45;
    v33 = v31;
    if (v45)
    {
LABEL_41:
      OUTLINED_FUNCTION_22_4();
LABEL_100:
      CFRelease(v18);
      goto LABEL_101;
    }

    CFDictionarySetValue(v31, @"BitDepth", v93.value);
    if (v93.value)
    {
      CFRelease(v93.value);
    }
  }

  OUTLINED_FUNCTION_42();
  v44 = _copySequenceReaderColor(v65, v66, v67, v68, v69, 0, 0, 0);
  if (v44)
  {
LABEL_148:
    v32 = v44;
LABEL_151:
    v33 = v31;
    goto LABEL_41;
  }

  v70 = CGColorSpaceCopyName(v85);
  if (v70)
  {
    v71 = v70;
    v72 = OUTLINED_FUNCTION_20_1();
    CFDictionarySetValue(v72, v73, v74);
    v75 = v71;
    v33 = v31;
    CFRelease(v75);
  }

  else
  {
    v33 = v31;
    if (v85)
    {
      CFDictionarySetValue(v31, @"ColorSpace", v85);
    }
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(v84);
  ImageGeometryFromTrackReader = CMPhotoCFDictionarySetInt32(v33, @"CodecType", MediaSubType);
  if (ImageGeometryFromTrackReader)
  {
LABEL_136:
    v32 = ImageGeometryFromTrackReader;
    goto LABEL_41;
  }

LABEL_33:
  if (a5)
  {
    a2 = 0;
    OUTLINED_FUNCTION_20_7();
    a5 = 0;
LABEL_95:
    if (a7)
    {
      *a7 = v18;
      v18 = 0;
    }

    v32 = 0;
    if (a6)
    {
      *a6 = v33;
      v33 = 0;
    }

    goto LABEL_99;
  }

  v81.i64[0] = 0;
  ThumbnailCountForIndex_1 = _getThumbnailCountForIndex_1(a1, v20, v21, v81.i64);
  if (ThumbnailCountForIndex_1)
  {
    v32 = ThumbnailCountForIndex_1;
    a2 = 0;
    a5 = 0;
LABEL_143:
    OUTLINED_FUNCTION_20_7();
    goto LABEL_99;
  }

  v78 = v33;
  v48 = v81.i64[0];
  if (v81.i64[0] >= 1)
  {
    v49 = 0;
    a5 = 0;
    a2 = 0;
    v31 = MEMORY[0x1E695E9C0];
    while (1)
    {
      if (!a5)
      {
        v50 = OUTLINED_FUNCTION_11_15();
        a5 = CFArrayCreateMutable(v50, v51, v52);
        if (!a5)
        {
LABEL_140:
          v32 = 4294950305;
          goto LABEL_142;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v49);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v86)
      {
        CFRelease(v86);
        v86 = 0;
      }

      v53 = _createDescriptionOfFrameForIndex(a1, ValueAtIndex, a3, a4, 1, &v86, &cf);
      if (v53)
      {
        break;
      }

      if (cf)
      {
        CFArrayAppendValue(a5, cf);
      }

      if (!a3)
      {
        v54 = v86;
        if (v86)
        {
          if (!a2)
          {
            v55 = OUTLINED_FUNCTION_11_15();
            a2 = CFArrayCreateMutable(v55, v56, v57);
            if (!a2)
            {
              goto LABEL_140;
            }

            v54 = v86;
          }

          CFArrayAppendValue(a2, v54);
        }
      }

      ++v49;
      v48 = v81.i64[0];
      if (v49 >= v81.i64[0])
      {
        goto LABEL_63;
      }
    }

    v32 = v53;
LABEL_142:
    v33 = v78;
    goto LABEL_143;
  }

  a2 = 0;
  a5 = 0;
LABEL_63:
  v93.value = 0;
  AuxiliaryImageCountForIndex_0 = _getAuxiliaryImageCountForIndex_0(a1, v48, v47, &v93.value);
  if (AuxiliaryImageCountForIndex_0)
  {
    v32 = AuxiliaryImageCountForIndex_0;
    OUTLINED_FUNCTION_20_7();
    v33 = v78;
    goto LABEL_99;
  }

  theDict = v18;
  v59 = v93.value;
  if (v93.value < 1)
  {
    OUTLINED_FUNCTION_20_7();
LABEL_87:
    v18 = theDict;
    if (a5)
    {
      CFDictionarySetValue(theDict, @"ThumbnailImages", a5);
    }

    if (ValueAtIndex)
    {
      CFDictionarySetValue(theDict, @"AuxiliaryImages", ValueAtIndex);
    }

    if (a2)
    {
      CFDictionarySetValue(v78, @"ThumbnailImages", a2);
    }

    v33 = v78;
    if (v31)
    {
      CFDictionarySetValue(v78, @"AuxiliaryImages", v31);
    }

    goto LABEL_95;
  }

  v60 = 0;
  v31 = 0;
  ValueAtIndex = 0;
  v61 = MEMORY[0x1E695E9C0];
  while (1)
  {
    LODWORD(time.value) = 0;
    if (!ValueAtIndex)
    {
      ValueAtIndex = CFArrayCreateMutable(a4, v59, v61);
      if (!ValueAtIndex)
      {
        break;
      }
    }

    v62 = CFArrayGetValueAtIndex(*(a1 + 96), v60);
    if (v89)
    {
      CFRelease(v89);
      v89 = 0;
    }

    if (v88)
    {
      CFRelease(v88);
      v88 = 0;
    }

    AuxiliaryTypeInfoForIndex = _createDescriptionOfFrameForIndex(a1, v62, a3, a4, 2, &v88, &v89);
    if (AuxiliaryTypeInfoForIndex)
    {
LABEL_137:
      v32 = AuxiliaryTypeInfoForIndex;
      goto LABEL_139;
    }

    if (v89)
    {
      CFArrayAppendValue(ValueAtIndex, v89);
    }

    if (!a3 && v88)
    {
      if (!v31)
      {
        v31 = CFArrayCreateMutable(a4, v93.value, v61);
        if (!v31)
        {
          break;
        }
      }

      AuxiliaryTypeInfoForIndex = _getAuxiliaryTypeInfoForIndex(a1, v60, &time, &value);
      if (AuxiliaryTypeInfoForIndex)
      {
        goto LABEL_137;
      }

      AuxiliaryTypeInfoForIndex = CMPhotoCFDictionarySetInt(v88, @"AuxiliaryType", time.value);
      if (AuxiliaryTypeInfoForIndex)
      {
        goto LABEL_137;
      }

      if (value)
      {
        CFDictionarySetValue(v88, @"AuxiliaryTypeURN", value);
      }

      CFArrayAppendValue(v31, v88);
    }

    ++v60;
    v59 = v93.value;
    if (v60 >= v93.value)
    {
      goto LABEL_87;
    }
  }

  v32 = 4294950305;
LABEL_139:
  v18 = theDict;
  v33 = v78;
LABEL_99:
  if (v18)
  {
    goto LABEL_100;
  }

LABEL_101:
  if (v33)
  {
    CFRelease(v33);
  }

  if (a5)
  {
    CFRelease(a5);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v31)
  {
    CFRelease(v31);
  }

LABEL_111:
  if (v89)
  {
    CFRelease(v89);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v32;
}

uint64_t _getThumbnailCountForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getAuxiliaryImageCountForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _initTileIteratorForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyFormatDescriptionForTrackReader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _checkForUnsupportedKeys_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDecompressionPluginSetAttachment(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 40) + 64);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionPluginCopyAttachments(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 40) + 72);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoComputePSNRHVSForPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, unsigned int a4, double *a5, CVPixelBufferRef *a6)
{
  pixelBufferOut = 0;
  v11 = *MEMORY[0x1E695E480];
  v12 = OUTLINED_FUNCTION_6_17();
  v13 = OUTLINED_FUNCTION_6_17();
  CFDictionaryAddValue(v12, *MEMORY[0x1E69660D8], v13);
  pixelBuffer = a2;
  v131 = a1;
  if (CMPhotoPixelBufferHasCLAP(a1) || CMPhotoPixelBufferHasCLAP(a2) || !a4)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM();
    v113 = 0;
LABEL_102:
    v26 = 0;
    v45 = 0;
    v112 = 0;
    v27 = 0.0;
    goto LABEL_88;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_2();
    goto LABEL_101;
  }

  v15 = CVPixelBufferGetPixelFormatType(a2);
  v132 = 0;
  v133 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v132, &v133);
  v16 = OUTLINED_FUNCTION_7_1();
  CMPhotoGetPixelBufferCLAP(v16, v17, 0, v18, v19);
  if (v132)
  {
    v20 = 0;
  }

  else
  {
    v20 = v133 == 0;
  }

  if (!v20)
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_2();
LABEL_101:
    v113 = FigSignalErrorAtGM();
    goto LABEL_102;
  }

  allocator = v11;
  v123 = a6;
  v21 = v132 / a4;
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v124 = a4;
  v23 = v133 / a4;
  if (v23 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  v25 = malloc_type_calloc((v24 * v22), 8uLL, 0x100004000313F17uLL);
  v26 = v25;
  v27 = 0.0;
  if (!v25)
  {
    v45 = 0;
    v112 = 0;
    v113 = 4294950305;
    goto LABEL_88;
  }

  v126 = v13;
  v127 = v12;
  v128 = a5;
  v28 = 0;
  do
  {
    v29 = 0;
    do
    {
      v25[v28 * v22 + v29++] = 0.0;
    }

    while (v29 < v21);
    ++v28;
  }

  while (v23 > v28);
  height = v24;
  v30 = CMPhotoPixelFormatContainsYCbCr(v15);
  v31 = CMPhotoPixelFormatContainsRGB(v15);
  v32 = CMPhotoPixelFormatContainsGrayScale(v15);
  v33 = CVPixelBufferGetPixelFormatType(a2);
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v33);
  v34 = CVPixelBufferGetPixelFormatType(a2);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v34);
  v36 = CVPixelBufferLockBaseAddress(v131, 0);
  if (v36)
  {
    v113 = v36;
    v45 = 0;
    v112 = 0;
    goto LABEL_87;
  }

  v37 = OUTLINED_FUNCTION_7_1();
  v39 = CVPixelBufferLockBaseAddress(v37, v38);
  if (v39)
  {
    v113 = v39;
    v45 = 0;
    goto LABEL_86;
  }

  if (v32)
  {
    if (v15 - 1278226736 <= 6 && ((1 << (v15 - 48)) & 0x45) != 0)
    {
      v40 = 16 - BitDepthForPixelFormat;
      goto LABEL_40;
    }

    if (v15 == 1278226488)
    {
      v40 = 0;
LABEL_40:
      v43 = CVPixelBufferLockBaseAddress(v131, 0);
      if (!v43)
      {
        v44 = CVPixelBufferLockBaseAddress(a2, 0);
        v45 = 1;
        if (!v44)
        {
          v46 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
          BaseAddress = CVPixelBufferGetBaseAddress(a2);
          v48 = CVPixelBufferGetBytesPerRow(v131) / BytesPerPixelForPixelFormat;
          v49 = CVPixelBufferGetBaseAddress(v131);
          v50 = calc_psnrhvs(BaseAddress, v46, v49, v48, BitDepthForPixelFormat, 0, 0, v124, 1, v40, &_MergedGlobals_0, v26, v22);
          v51 = log10(v50);
          v52 = 0;
          do
          {
            do
            {
              v53 = log10(v26[v52 * v22]);
              OUTLINED_FUNCTION_3_23(v53 * -10.0);
            }

            while (!v54);
            ++v52;
          }

          while (v23 > v52);
          v27 = v51 * -10.0;
          goto LABEL_72;
        }

        v113 = v44;
        goto LABEL_86;
      }

      goto LABEL_84;
    }

LABEL_55:
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM();
    v113 = 0;
LABEL_85:
    v45 = 1;
LABEL_86:
    v112 = 1;
LABEL_87:
    v12 = v127;
    a5 = v128;
    v13 = v126;
    goto LABEL_88;
  }

  if (v30)
  {
    if (v15 == 875704422 || v15 == 875704438)
    {
      v121 = 0;
    }

    else
    {
      if (v15 != 2019963440 && v15 != 2016686640)
      {
        goto LABEL_55;
      }

      v121 = 6;
    }

    v75 = OUTLINED_FUNCTION_7_1();
    v118 = CVPixelBufferGetBytesPerRowOfPlane(v75, v76) / BytesPerPixelForPixelFormat;
    v77 = OUTLINED_FUNCTION_12_1();
    v79 = 2 * BytesPerPixelForPixelFormat;
    v119 = CVPixelBufferGetBytesPerRowOfPlane(v77, v78) / v79;
    v80 = OUTLINED_FUNCTION_7_1();
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v80, v81);
    v82 = OUTLINED_FUNCTION_12_1();
    v116 = CVPixelBufferGetBaseAddressOfPlane(v82, v83);
    v84 = OUTLINED_FUNCTION_7_1();
    v86 = CVPixelBufferGetBytesPerRowOfPlane(v84, v85) / BytesPerPixelForPixelFormat;
    v87 = OUTLINED_FUNCTION_12_1();
    v115 = CVPixelBufferGetBytesPerRowOfPlane(v87, v88) / v79;
    v89 = OUTLINED_FUNCTION_7_1();
    v91 = CVPixelBufferGetBaseAddressOfPlane(v89, v90);
    v92 = OUTLINED_FUNCTION_12_1();
    v94 = CVPixelBufferGetBaseAddressOfPlane(v92, v93);
    v95 = calc_psnrhvs(BaseAddressOfPlane, v118, v91, v86, BitDepthForPixelFormat, 0, 0, v124, 1, v121, &_MergedGlobals_0, v26, v22);
    v96 = calc_psnrhvs(v116, v119, v94, v115, BitDepthForPixelFormat, 0, 0, v124, 2, v121, &unk_1ED6F9E68, 0, 0);
    v97 = calc_psnrhvs(v116 + BytesPerPixelForPixelFormat, v119, v94 + BytesPerPixelForPixelFormat, v115, BitDepthForPixelFormat, 0, 0, v124, 2, v121, &unk_1ED6FA068, 0, 0);
    log10(v95);
    log10(v97);
    log10(v96);
    v98 = 0;
    do
    {
      do
      {
        v99 = log10(v26[v98 * v22]);
        OUTLINED_FUNCTION_3_23(v99 * -10.0);
      }

      while (!v54);
      ++v98;
    }

    while (v23 > v98);
    v100 = OUTLINED_FUNCTION_4_19();
    v73 = v102 + v101 * 8.0 + v100;
    v74 = 10.0;
  }

  else
  {
    if (!v31)
    {
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_2();
      v43 = FigSignalErrorAtGM();
LABEL_84:
      v113 = v43;
      goto LABEL_85;
    }

    if (v15 != 1111970369 && v15 != 1815491698 && v15 != 1380401729)
    {
      goto LABEL_55;
    }

    v57 = BytesPerPixelForPixelFormat;
    v58 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
    v59 = OUTLINED_FUNCTION_7_1();
    v61 = CVPixelBufferGetBaseAddressOfPlane(v59, v60);
    v120 = CVPixelBufferGetBytesPerRow(v131) / v57;
    v62 = CVPixelBufferGetBaseAddress(v131);
    v63 = calc_psnrhvs(v61, v58, v62, v120, BitDepthForPixelFormat, 0, 0, v124, 4, 0, &_MergedGlobals_0, 0, v22);
    v64 = 1;
    if (BitDepthForPixelFormat <= 8)
    {
      v65 = 2;
    }

    else
    {
      v64 = 2;
      v65 = 4;
    }

    v66 = calc_psnrhvs(v61 + v64, v58, v62 + v64, v120, BitDepthForPixelFormat, 0, 0, v124, 4, 0, &_MergedGlobals_0, v26, v22);
    v67 = calc_psnrhvs(v61 + v65, v58, v62 + v65, v120, BitDepthForPixelFormat, 0, 0, v124, 4, 0, &_MergedGlobals_0, 0, v22);
    log10(v63);
    log10(v66);
    log10(v67);
    v68 = 0;
    do
    {
      do
      {
        v69 = log10(v26[v68 * v22]);
        OUTLINED_FUNCTION_3_23(v69 * -10.0);
      }

      while (!v54);
      ++v68;
    }

    while (v23 > v68);
    v70 = OUTLINED_FUNCTION_4_19();
    v73 = v71 + v72 + v70;
    v74 = 3.0;
  }

  v27 = v73 / v74;
LABEL_72:
  v13 = v126;
  v12 = v127;
  v113 = CVPixelBufferCreate(allocator, v22, height, 0x72673366u, 0, &pixelBufferOut);
  v103 = pixelBufferOut;
  if (!v113)
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
    v105 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
    v106 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
    v107 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 2uLL);
    v108 = 0;
    v109 = BytesPerRowOfPlane & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v110 = 0;
      do
      {
        v111 = v26[(v22 * v108 + v110)];
        v105[v110] = v111;
        v106[v110] = v111;
        v107[v110++] = v111;
      }

      while (v110 < v21);
      ++v108;
      v107 = (v107 + v109);
      v106 = (v106 + v109);
      v105 = (v105 + v109);
    }

    while (v108 < v23);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v103 = pixelBufferOut;
    if (v123)
    {
      v113 = 0;
      *v123 = pixelBufferOut;
      pixelBufferOut = 0;
      v45 = 1;
      v112 = 1;
      a5 = v128;
      goto LABEL_88;
    }

    v113 = 0;
  }

  a5 = v128;
  if (v103)
  {
    CFRelease(v103);
  }

  v45 = 1;
  v112 = 1;
LABEL_88:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  free(v26);
  if (a5)
  {
    *a5 = v27;
  }

  if (v112)
  {
    CVPixelBufferUnlockBaseAddress(v131, 0);
  }

  if (v45)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  return v113;
}

uint64_t CMPhotoJFIFTranscodeStrips(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, const void *a7, int a8, unsigned __int8 a9, char a10, uint64_t (*a11)(uint64_t, void **), uint64_t a12, unsigned __int8 a13, uint64_t (*a14)(uint64_t, CFTypeRef *), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, const void *a21, const void *a22, uint64_t a23, const __CFData **a24)
{
  values[1] = *MEMORY[0x1E69E9840];
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  *theDict = 0u;
  *v134 = 0u;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  *cf = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  *v124 = 0u;
  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  if (!a2 || !a3 || !a11 || a16 && !a17)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_27();
    WritableWithCFMutableData = FigSignalErrorAtGM();
    goto LABEL_150;
  }

  v114 = a16;
  v115 = a17;
  WritableWithCFMutableData = _addColorSpaceToPropertiesIfNeeded(a1, a19, a20, &v122);
  if (WritableWithCFMutableData)
  {
    goto LABEL_150;
  }

  *(&v140 + 1) = 16;
  LOBYTE(v140) = 1;
  theDict[1] = 0;
  *&v137 = 0;
  *(&v137 + 1) = a2;
  *&v138 = a3;
  *(&v138 + 1) = a2;
  *&v139 = a3;
  *(&v139 + 1) = a3;
  v134[0] = CFDataCreateMutable(a1, 0);
  if (!v134[0])
  {
    goto LABEL_146;
  }

  WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
  if (WritableWithCFMutableData)
  {
    goto LABEL_150;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  theDict[0] = Mutable;
  if (!Mutable)
  {
LABEL_146:
    v88 = 0;
LABEL_147:
    v89 = 0;
    v75 = 0;
    goto LABEL_148;
  }

  CMPhotoCFDictionarySetInt(Mutable, @"QualityControllerType", a6);
  if (a7)
  {
    CFDictionarySetValue(theDict[0], @"QualityControllerParameters", a7);
  }

  v119 = a22;
  v117 = a21;
  DWORD2(v135) = 1;
  if (!a8 && CMPhotoUnifiedJPEGEncoderIsHardwareAvailable())
  {
    DWORD2(v135) = 2;
  }

  WritableWithCFMutableData = CMPhotoUnifiedJPEGEncoderCreate(a1, a22, a21, 0, &v135);
  if (WritableWithCFMutableData)
  {
LABEL_150:
    v52 = WritableWithCFMutableData;
LABEL_151:
    v88 = 0;
    goto LABEL_152;
  }

  v109 = @"QualityControllerType";
  HIDWORD(v108) = a5;
  v111 = a18;
  v106 = a15;
  v113 = a14;
  v110 = a24;
  v107 = a23;
  HIDWORD(v112) = a13;
  HIDWORD(v118) = a9 == 0;
  v40 = *MEMORY[0x1E695F050];
  v41 = *(MEMORY[0x1E695F050] + 8);
  v116 = &v124[1];
  v42 = *(MEMORY[0x1E695F050] + 16);
  v43 = *(MEMORY[0x1E695F050] + 24);
  v44 = *MEMORY[0x1E695F060];
  v45 = *(MEMORY[0x1E695F060] + 8);
  v46 = *(&v139 + 1);
  while (v46)
  {
    if (!v138)
    {
      goto LABEL_42;
    }

    keys[0] = 0;
    values[0] = 0;
    if (cf[1])
    {
      CFRelease(cf[1]);
      cf[1] = 0;
    }

    v47 = a11(a12, keys);
    if (v47)
    {
      v52 = v47;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_27();
      FigSignalErrorAtGM();
      goto LABEL_69;
    }

    v48 = keys[0];
    if (!keys[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_27();
      v50 = FigSignalErrorAtGM();
LABEL_68:
      v52 = v50;
LABEL_69:
      v55 = 0;
      goto LABEL_30;
    }

    if (a10)
    {
      IsITUR_2100TF = CMPhotoPixelBufferIsITUR_2100TF(keys[0]);
      v48 = keys[0];
      if (IsITUR_2100TF)
      {
        v50 = CMPhotoScaleAndRotateSessionTransformForSize(v119, keys[0], HIDWORD(v118), 1, 875704422, 0x100000002, 1u, 0, v40, v41, v42, v43, v44, v45, 0, 1u, values);
        if (v50)
        {
          goto LABEL_68;
        }

        if (keys[0])
        {
          CFRelease(keys[0]);
        }

        v48 = values[0];
        keys[0] = values[0];
        values[0] = 0;
      }
    }

    v51.n128_f64[0] = CMPhotoGetPixelBufferCLAPAsRect(v48);
    v52 = 0;
    LOBYTE(cf[0]) = 1;
    v130 = 0uLL;
    *(&v131 + 1) = vcvtad_u64_f64(v54);
    v132 = *(&v131 + 1);
    v55 = keys[0];
    *&v131 = vcvtad_u64_f64(v53);
    cf[1] = keys[0];
    keys[0] = 0;
    *&v137 = v137 + *(&v131 + 1);
    *&v138 = v138 - *(&v131 + 1);
    BYTE1(v140) = v138 == 0;
LABEL_30:
    if (values[0])
    {
      CFRelease(values[0]);
    }

    WritableWithCFMutableData = keys[0];
    if (keys[0])
    {
      CFRelease(keys[0]);
    }

    if (v52)
    {
      goto LABEL_151;
    }

    if (a20)
    {
      v56 = *(a20 + 16);
      if (v56)
      {
        WritableWithCFMutableData = v56(v55, v137, 0, *(a20 + 24), v51);
      }
    }

    while (LOBYTE(v124[0]) && LOBYTE(cf[0]))
    {
      v57 = OUTLINED_FUNCTION_2_24(WritableWithCFMutableData, v33, v34, v35, v36, v37, v38, v39, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124[0], v124[1], v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128, cf[0], cf[1], v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134[0]);
      _transcodeCopyStripIntoOverflowAndEncodeIfNecessary(v57, a9, v58, v124);
      if (WritableWithCFMutableData)
      {
        goto LABEL_150;
      }
    }

LABEL_42:
    if (BYTE1(v140) || (v59 = *(&v131 + 1), !(*(&v131 + 1) % *(&v140 + 1))))
    {
      if (LOBYTE(v124[0]) && (BYTE1(v140) || !v127))
      {
        WritableWithCFMutableData = _transcodeEncodeStrip(v134, a9, v124);
        if (WritableWithCFMutableData)
        {
          goto LABEL_150;
        }
      }

      if (LOBYTE(cf[0]))
      {
        v64 = OUTLINED_FUNCTION_2_24(WritableWithCFMutableData, v33, v34, v35, v36, v37, v38, v39, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124[0], v124[1], v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128, cf[0], cf[1], v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134[0]);
        WritableWithCFMutableData = _transcodeEncodeStrip(v64, a9, v65);
        if (WritableWithCFMutableData)
        {
          goto LABEL_150;
        }
      }
    }

    else
    {
      if (!v124[1])
      {
        if (!cf[1])
        {
          v88 = 0;
          v89 = 0;
          v75 = 0;
          v52 = 4294950306;
          goto LABEL_100;
        }

        PixelFormatType = CVPixelBufferGetPixelFormatType(cf[1]);
        WritableWithCFMutableData = CMPhotoSurfacePoolCreatePixelBuffer(v117, PixelFormatType, *(&v138 + 1), *(&v140 + 1), 1, 0, 0, 0, 0, 0, v116);
        if (WritableWithCFMutableData)
        {
          goto LABEL_150;
        }

        v125 = 0uLL;
        v126 = *(&v138 + 1);
        v127 = *(&v140 + 1);
      }

      v61 = v59 & 0xFFFFFFFFFFFFFFF0;
      *(&v131 + 1) = v59 & 0xFFFFFFFFFFFFFFF0;
      if ((v59 & 0xFFFFFFFFFFFFFFF0) != 0)
      {
        v66 = OUTLINED_FUNCTION_2_24(WritableWithCFMutableData, v33, v34, v35, v36, v37, v38, v39, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124[0], v124[1], v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128, cf[0], cf[1], v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134[0]);
        WritableWithCFMutableData = _transcodeEncodeStrip(v66, a9, v67);
        if (WritableWithCFMutableData)
        {
          goto LABEL_150;
        }

        v61 = *(&v131 + 1);
      }

      *(&v131 + 1) = v61 + (v59 & 0xF);
      LOBYTE(cf[0]) = (v59 & 0xF) != 0;
      while (LOBYTE(cf[0]))
      {
        v62 = OUTLINED_FUNCTION_2_24(WritableWithCFMutableData, v33, v34, v35, v36, v37, v38, v39, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124[0], v124[1], v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128, cf[0], cf[1], v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134[0]);
        _transcodeCopyStripIntoOverflowAndEncodeIfNecessary(v62, a9, v63, v124);
        if (WritableWithCFMutableData)
        {
          goto LABEL_150;
        }
      }
    }

    v46 = *(&v139 + 1);
    if (BYTE1(v140) && *(&v139 + 1))
    {
      v88 = 0;
      v89 = 0;
      goto LABEL_143;
    }
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
    cf[1] = 0;
  }

  if (v124[1])
  {
    CFRelease(v124[1]);
    v124[1] = 0;
  }

  if (!HIDWORD(v112) && !v113)
  {
    v88 = 0;
    goto LABEL_85;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v88 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_147;
  }

  CMPhotoCFDictionarySetInt(MutableCopy, v109, 3);
  keys[0] = @"QualityValue";
  values[0] = 0;
  values[0] = CMPhotoCFNumberCreateFloat(0.75);
  v69 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values[0])
  {
    CFRelease(values[0]);
  }

  CFDictionarySetValue(v88, @"QualityControllerParameters", v69);
  if (v69)
  {
    CFRelease(v69);
  }

  if (HIDWORD(v112))
  {
    *keys = 0u;
    CMPhotoPixelBufferConstrainSizeToMaxSideLength(*(&v138 + 1), v139, 0xA0uLL, 0, 0, 0, 1, keys, 0, 0);
    Value = CFDictionaryGetValue(v88, @"QualityControllerParameters");
    v71 = CMPhotoJFIFTranscodeFromJFIF(a1, *(&v138 + 1), v139, CMPhotoRectZero, 1, keys[0], keys[1], HIDWORD(v108), 3, Value, 0, 0, 0, 0, 0, v134[1], 0, 0, v117, v119, v107, 0, a9, 1, &v123);
    if (!v71)
    {
      if (v123)
      {
        goto LABEL_85;
      }

LABEL_155:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_27();
      v71 = FigSignalErrorAtGM();
    }

LABEL_156:
    v52 = v71;
LABEL_152:
    v89 = 0;
    v75 = 0;
    goto LABEL_100;
  }

  if (v113)
  {
    v71 = v113(v106, &v141);
    if (v71)
    {
      goto LABEL_156;
    }

    v84 = v141;
    if (!v141)
    {
      goto LABEL_155;
    }

    if (a20)
    {
      v85 = *(a20 + 16);
      if (v85)
      {
        v85(v141, 0, 1, *(a20 + 24));
        v84 = v141;
      }
    }

    *keys = 0u;
    v143 = 0u;
    v71 = CMPhotoUnifiedJPEGEncoderEncode(v135, v88, v84, a9, keys, 1, DWORD2(v135), v134);
    v73 = v114;
    v72 = v115;
    v74 = v111;
    if (v71)
    {
      goto LABEL_156;
    }

    DataBuffer = CMSampleBufferGetDataBuffer(v121);
    v89 = DataBuffer;
    if (!DataBuffer)
    {
LABEL_143:
      v75 = 0;
      v52 = 4294950304;
      goto LABEL_100;
    }

    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    v71 = CMPhotoDataCreateFromSource(a1, v89, 0, DataLength, &v123, 0);
    if (v71)
    {
      goto LABEL_156;
    }
  }

  else
  {
LABEL_85:
    v73 = v114;
    v72 = v115;
    v74 = v111;
  }

  if (!v73)
  {
    v75 = 0;
    goto LABEL_94;
  }

  v75 = CFArrayCreateMutable(a1, v73, 0);
  if (!v75)
  {
    v89 = 0;
LABEL_148:
    v52 = 4294950305;
    goto LABEL_100;
  }

  if (v73 >= 1)
  {
    v76 = 0;
    while (1)
    {
      v77 = _compressAuxImage(a1, v135, v75, v76, a9, v72, v74, v134);
      if (v77)
      {
        break;
      }

      if (v73 == ++v76)
      {
        goto LABEL_94;
      }
    }

    v52 = v77;
    goto LABEL_99;
  }

LABEL_94:
  v89 = CFDataCreateMutable(a1, 0);
  if (!v89)
  {
    goto LABEL_148;
  }

  v78 = FigByteStreamCreateWritableWithCFMutableData();
  if (v78)
  {
    v52 = v78;
    goto LABEL_100;
  }

  v79 = CMPhotoJFIFUtilitiesMergeImageComponents(a1, v120, v134[0], v123, v75, v122, 0);
  v52 = v79;
  if (v110 && !v79)
  {
    *v110 = v89;
LABEL_99:
    v89 = 0;
  }

LABEL_100:
  v80 = 0;
  if (v75)
  {
    goto LABEL_103;
  }

LABEL_104:
  for (i = 0; v80 < i; i = CFArrayGetCount(v75))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v75, v80);
    CMPhotoCompressedAuxImageStorageDestroy(ValueAtIndex);
    ++v80;
    if (!v75)
    {
      goto LABEL_104;
    }

LABEL_103:
    ;
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (v141)
  {
    CFRelease(v141);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  CMPhotoUnifiedJPEGEncoderDestroy(v135);
  if (theDict[0])
  {
    CFRelease(theDict[0]);
  }

  if (v134[0])
  {
    CFRelease(v134[0]);
  }

  if (v134[1])
  {
    CFRelease(v134[1]);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (v124[1])
  {
    CFRelease(v124[1]);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  return v52;
}

void _transcodeCopyStripIntoOverflowAndEncodeIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 40);
  if (v4)
  {
    v10 = (a4 + 16);
    v9 = *(a4 + 16);
    v11 = *(a4 + 40);
    if (v4 >= *(a4 + 48))
    {
      v12 = *(a4 + 48);
    }

    else
    {
      v12 = *(a3 + 40);
    }

    v13 = *(a3 + 32);
    v14 = *(a3 + 8);
    v15 = *(a4 + 8);
    v16 = v10[1];
    v20 = *(a3 + 16);
    v21 = v13;
    v22 = v12;
    CMPhotoPixelBufferCopyCropRectToOffset(v14, 1, &v20, v15, 1, v9, v11 + v16, 0);
    if (!v17)
    {
      *a4 = 1;
      *(a3 + 24) += v12;
      v18 = *(a3 + 40) - v12;
      *(a3 + 40) = v18;
      *a3 = v18 != 0;
      v19 = *(a4 + 48) - v12;
      *(a4 + 40) += v12;
      *(a4 + 48) = v19;
      if (!v19 && !_transcodeEncodeStrip(a1, a2, a4))
      {
        *v10 = 0;
        v10[1] = 0;
        *(a4 + 40) = 0;
        *(a4 + 48) = *(a1 + 104);
        *a4 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    FigSignalErrorAtGM();
  }
}

uint64_t _transcodeEncodeStrip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 72);
  v8 = v6 - *(a1 + 88);
  v9 = *(a3 + 40);
  v10 = *(a1 + 32);
  v11 = *(a3 + 8);
  v12 = *(a1 + 24);
  v13 = *(a1 + 16);
  v14 = *(a3 + 32);
  v20[0] = *(a3 + 16);
  v20[1] = v14;
  v17.i64[0] = 0;
  v17.i64[1] = v8;
  v18 = v7;
  v19 = v9;
  result = CMPhotoUnifiedJPEGEncoderEncodeStripToStream(v13, v10, v11, a2, v20, v12, v7, v6, &v17, a1);
  if (!result)
  {
    v16 = *(a3 + 40);
    *(a1 + 88) -= v16;
    *(a3 + 24) += v16;
    *(a3 + 40) = 0;
    *a3 = 0;
    *(a1 + 96) = 0;
  }

  return result;
}

uint64_t _applejpeg_read(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  if (v8(v7, a2, v6, a1, &v10))
  {
    return 0;
  }

  result = v10;
  *a3 += v10;
  return result;
}

void _applejpeg_converter_callback(uint64_t *a1, char **a2, char **a3)
{
  v3 = *a1;
  cf = 0;
  if (*(a2 + 12) == 4 && *(a3 + 12) == 4)
  {
    v5 = *(a2 + 10);
    if (v5 == *(a3 + 10))
    {
      v6 = *(a2 + 11);
      if (v6 == *(a3 + 11))
      {
        v8 = v6;
        if (a2[15])
        {
          v9 = a2[15];
        }

        else
        {
          v9 = 4 * v5;
        }

        if (a3[15])
        {
          v10 = a3[15];
        }

        else
        {
          v10 = 4 * v5;
        }

        v11 = *a3;
        if (v6)
        {
          v15 = v3;
          v12 = *a2;
          do
          {
            memcpy(v11, v12, 4 * v5);
            v12 += v9;
            v11 += v10;
            --v6;
          }

          while (v6);
          v11 = *a3;
          v3 = v15;
        }

        v13 = CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], v5, v8, 0x42475241u, v11, v10, 0, 0, 0, &cf);
        v14 = cf;
        if (!v13)
        {
          (*(v3 + 16))(cf, a1[1], 0, *(v3 + 24));
          a1[1] += v8;
          v14 = cf;
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }
}

uint64_t _addColorSpaceToPropertiesIfNeeded_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJFIFTranscodeFromJFIF_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJFIFTranscodeFromJFIF_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoByteStreamCreateFromSource_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoByteStreamCreateFromSource_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoByteStreamCreateFromSource_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoUnifiedJPEGEncoderWriteAROTTableToPtr(unint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v17 = 0;
  v5 = 4294950306;
  if (a1)
  {
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        if (4 * a3 + 14 <= a4 && a5 && (a5 + a4 <= a2 || &a2[a1] < a5))
        {
          v16[0] = 0;
          v16[1] = 1;
          memset(&v16[2], 0, 24);
          v16[5] = a3;
          v16[6] = 0;
          v16[7] = 0;
          v16[8] = a5 + 14;
          v16[9] = 0;
          v12 = CMPhotoJFIFScannerCreate(_scannerCallbackMarker, v16, _scannerCallbackRestartMarker, v16, &v17);
          if (v12 || (CMPhotoJFIFScannerRun(v17, a2, a1), v12))
          {
            v5 = v12;
          }

          else
          {
            v15[0] = 0;
            v15[1] = v15;
            v15[2] = 0x2000000000;
            v15[3] = 0;
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = *"";
            v14[2] = __CMPhotoUnifiedJPEGEncoderWriteAROTTableToPtr_block_invoke;
            v14[3] = &unk_1E77A2DA0;
            v14[4] = v15;
            v14[5] = a4;
            v14[6] = a5;
            v5 = _writeRestartMarkerSegmentWithHandler(0, 0, v7, a5 + 14, 0, 0, v14);
            _Block_object_dispose(v15, 8);
          }
        }
      }
    }
  }

  CMPhotoJFIFScannerDispose(v17);
  return v5;
}

uint64_t _writeRestartMarkerSegmentWithHandler(int a1, int a2, unsigned int a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v12 = a2 != 0;
  v24 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v13 = 4 * a3;
  v17 = -352331521;
  v18 = (4 * a3 + 12) >> 8;
  v19 = (4 * a3 + 12) & 0xFD | (2 * (a2 != 0));
  v20 = 1414484545;
  v21 = 0;
  v22 = BYTE1(a3);
  v23 = a3;
  if (a1)
  {
    v14 = 16;
  }

  else
  {
    v14 = 14;
  }

  result = (*(a7 + 16))(a7, v14, &v17 | (2 * (a1 == 0)));
  if (!result)
  {
    result = (*(a7 + 16))(a7, v13, a4);
    if (!result)
    {
      if (!a2 || (result = (*(a7 + 16))(a7, (2 * v12), &v16), !result))
      {
        if (a5)
        {
          *a5 = v14;
        }

        result = 0;
        if (a6)
        {
          *a6 = v13 + v14 + (2 * v12);
        }
      }
    }
  }

  return result;
}

uint64_t CMPhotoGetDestinationPixelFormatFromOptionsJPEG(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int *a5)
{
  v34 = 5;
  v35 = 8;
  v33 = 0;
  result = 4294950306;
  if (!a2 || !(a3 | a4 | a5))
  {
    return result;
  }

  if (a1)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
  }

  if (CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1278226488 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1278226736 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1278226738 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1278226742 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1278226536 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1278226534 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1751410032 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1717855600 || CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) == 1751411059 || (CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a2) != 1717856627 ? (v11 = a2 == 825306677) : (v11 = 1), !v11 ? (v12 = a2 == 1932996149) : (v12 = 1), !v12 ? (v13 = a2 == 825437747) : (v13 = 1), v13))
  {
    v34 = 6;
  }

  if (a1)
  {
    v14 = CMPhotoCFDictionaryGetInt32IfPresent() == 0;
    v15 = CMPhotoCFDictionaryGetInt32IfPresent() == 0;
  }

  else
  {
    v14 = 1;
    v15 = 1;
  }

  if ((CMPhotoPixelFormatIsRAW(a2) || CMPhotoPixelFormatIsRAWVersatile(a2)) && CMPhotoGetBitDepthForPixelFormat(a2) != v35)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    return FigSignalErrorAtGM();
  }

  IsPackedYUV = CMPhotoPixelFormatIsPackedYUV(a2);
  PixelFormatCompressionType = CMPhotoGetPixelFormatCompressionType(a2);
  v32 = a2 == 1278226534 || a2 == 1278226536 || a2 == 1380410945 || a2 == 1380411457 || a2 == 1647719528 || a2 == 1651926376 || a2 == 1717855600 || a2 == 1717856627 || a2 == 1751410032 || a2 == 1751411059 || a2 == 1751527984;
  if (CMPhotoGetYUVPixelFormatForParameters(v34, v35, 1, IsPackedYUV, PixelFormatCompressionType, v32, 1, &v33))
  {
LABEL_72:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    return FigSignalErrorAtGM();
  }

  if (v14)
  {
    if (v15)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v28 = v35;
    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v33);
    v30 = BitDepthForPixelFormat == v28;
    if (BitDepthForPixelFormat != v28 || v15)
    {
      goto LABEL_71;
    }
  }

  v31 = v34;
  v30 = v31 == CMPhotoGetChromaSubsamplingFromPixelFormat(v33);
LABEL_71:
  if (!v30)
  {
    goto LABEL_72;
  }

LABEL_73:
  if (a3)
  {
    *a3 = v35;
  }

  if (a4)
  {
    *a4 = v34;
  }

  result = 0;
  if (a5)
  {
    *a5 = v33;
  }

  return result;
}

uint64_t CMPhotoUnifiedJPEGEncoderCreate(const void *a1, const void *a2, const void *a3, int a4, void *a5)
{
  if (!a5)
  {
    return 4294950306;
  }

  v10 = MEMORY[0x1AC550000](a1, 80, 0x10E0040BB52102CLL, 0);
  if (!v10)
  {
    return 4294950305;
  }

  v11 = v10;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  if (a1)
  {
    v12 = CFRetain(a1);
  }

  else
  {
    v12 = 0;
  }

  *v11 = v12;
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(v11 + 2) = v13;
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  result = 0;
  *(v11 + 1) = v14;
  *(v11 + 6) = a4;
  *a5 = v11;
  return result;
}

void CMPhotoUnifiedJPEGEncoderDestroy(void *a1)
{
  if (a1)
  {
    v3 = *a1;
    v2 = *(a1 + 1);
    if (v2)
    {
      CFRelease(v2);
    }

    v4 = *(a1 + 2);
    if (v4)
    {
      CFRelease(v4);
    }

    free(*(a1 + 8));
    CFAllocatorDeallocate(v3, a1);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t _applejpeg_write_0(UInt8 *bytes, CFIndex length, uint64_t a3)
{
  v4 = length;
  if (length < 1)
  {
    goto LABEL_6;
  }

  if (*a3 != 1)
  {
    if (!*a3)
    {
      CFDataAppendBytes(*(a3 + 8), bytes, length);
    }

    goto LABEL_6;
  }

  if (!CMByteStreamAppend())
  {
LABEL_6:
    result = 0;
    *(a3 + 16) += v4;
    return result;
  }

  return 1;
}

uint64_t _scannerCallbackMarker_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeBuffer_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _encodeSW_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _encodeSW_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VideoQualityControllerClass_create_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v7)
  {
    return 4294950305;
  }

  v8 = v7;
  result = 0;
  *v8 = a3;
  v8[1] = a4;
  *(a1 + 56) = v8;
  return result;
}

uint64_t CMPhotoVideoQualityControllerCreate(const void *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10, void *a11)
{
  v19 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040DF40DE8BuLL);
  v20 = v19;
  if (!v19)
  {
    v24 = 4294950305;
    goto LABEL_24;
  }

  if (a9 != 1635135537)
  {
    if (a9 != 1936484717)
    {
      if (a9 != 1752589105)
      {
        goto LABEL_23;
      }

      if (a3 >= 2)
      {
        if (a3 == 6)
        {
          v21 = (v19 + 8);
          v22 = CMPhotoVideoQualityController_Lossless;
          goto LABEL_17;
        }

        if (a3 != 3)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_16;
    }

    if (a3 != 3)
    {
      if (a3 == 10)
      {
        v21 = (v19 + 8);
        v22 = &CMPhotoVideoQualityController_ByteBudget;
        goto LABEL_17;
      }

      if (a3 != 9)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

LABEL_16:
    v21 = (v19 + 8);
    v22 = &CMPhotoVideoQualityController_StillImageAdaptiveFirmware;
    goto LABEL_17;
  }

  if (a3 == 3)
  {
    goto LABEL_16;
  }

  if (a3 != 9)
  {
LABEL_23:
    OUTLINED_FUNCTION_4_0();
    v24 = FigSignalErrorAtGM();
    goto LABEL_24;
  }

LABEL_15:
  v21 = (v19 + 8);
  v22 = &CMPhotoVideoQualityController_Dummy;
LABEL_17:
  *v21 = v22;
  if (a1)
  {
    v23 = CFRetain(a1);
    v22 = *(v20 + 1);
  }

  else
  {
    v23 = 0;
  }

  *v20 = v23;
  *(v20 + 4) = a9;
  *(v20 + 5) = a3;
  *(v20 + 6) = a2;
  v20[37] = a10;
  *(v20 + 5) = a6;
  *(v20 + 6) = a7;
  v24 = (*v22)(v20, a9, a4, a5, a8);
  if (!v24)
  {
    *a11 = v20;
    v20 = 0;
  }

LABEL_24:
  CMPhotoVideoQualityControllerDispose(v20);
  return v24;
}

uint64_t CMPhotoGetHEVCNALULocationAndSizeFromType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetHEVCNALULocationAndSizeFromType_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoAsyncDispatcherCreate(const __CFAllocator *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (_MergedGlobals_9 == -1)
  {
    if (!a5)
    {
      return 4294950306;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_16);
    if (!a5)
    {
      return 4294950306;
    }
  }

  if (a2 - 17 <= 0xFFFFFFFFFFFFFFEFLL || a3 - 1 < a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();

    return FigSignalErrorAtGM();
  }

  if (a4)
  {
    return 4294950306;
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v11 = Instance;
    *(Instance + 24) = a2;
    Mutable = CFArrayCreateMutable(a1, a2, MEMORY[0x1E695E9C0]);
    *(v11 + 16) = Mutable;
    if (Mutable)
    {
      while (1)
      {
        v13 = dispatch_queue_create("CMPhotoAsyncDispatcherQueue", 0);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        CFArrayAppendValue(*(v11 + 16), v13);
        CFRelease(v14);
        if (!--a2)
        {
          if (!a3 || (*(v11 + 40) = 1, *(v11 + 48) = a3, v15 = dispatch_queue_create("CMPhotoAsyncDispatcherFunnelQueue", 0), (*(v11 + 56) = v15) != 0) && (v16 = [MEMORY[0x1E695DF90] dictionary], (*(v11 + 64) = v16) != 0) && (v17 = objc_msgSend(MEMORY[0x1E695DF90], "dictionary"), (*(v11 + 72) = v17) != 0))
          {
            result = 0;
            *a5 = v11;
            return result;
          }

          break;
        }
      }
    }

    CFRelease(v11);
  }

  return 4294950305;
}

uint64_t CMPhotoAsyncDispatcherDispatchBlock(uint64_t a1, uint64_t a2)
{
  v2 = 4294950306;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (*(a1 + 40) != 1)
  {
    v4 = *(a1 + 32);
    *(a1 + 32) = v4 + 1;
    v5 = v4 % *(a1 + 24);
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v5);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CMPhotoAsyncDispatcherDispatchBlock_block_invoke;
    v8[3] = &unk_1E77A2E48;
    v8[4] = a2;
    v8[5] = v5;
    dispatch_async(ValueAtIndex, v8);
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM();
}

const __CFArray *CMPhotoAsyncDispatcherWaitForCompletion(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  result = *(a1 + 16);
  if (result)
  {
    for (i = 0; CFArrayGetCount(result) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
      dispatch_barrier_sync(ValueAtIndex, &__block_literal_global_9);
      result = *(a1 + 16);
      if (!result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletionAndTimeout_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletionAndTimeout_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGCreateJPEGFromIOSurface(IOSurfaceRef buffer, const __CFDictionary *a2, IOSurfaceRef *a3, _DWORD *a4)
{
  result = CMPhotoCreatePixelBufferWithSurface(*MEMORY[0x1E695E480], buffer, 0);
  if (!result)
  {
    return _createJPEGFromCVPixelBuffer(0, 0, a2, 0, 0, a3, a4);
  }

  return result;
}

uint64_t _createJPEGSbufFromBuffer(uint64_t a1, void *a2, const __CFDictionary *a3, void *a4, opaqueCMSampleBuffer **a5)
{
  if (a3)
  {
    BoolValue = _getBoolValue(a3, @"JPEGEnableCompressedSurfacePooling", 0);
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    BoolValue = 0;
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  if (!a5)
  {
    goto LABEL_13;
  }

  v10 = CFGetTypeID(a2);
  if (v10 == CMSampleBufferGetTypeID())
  {
    if (CMSampleBufferGetImageBuffer(a2))
    {
      v11 = OUTLINED_FUNCTION_3_24();
      goto LABEL_9;
    }

LABEL_13:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    return FigSignalErrorAtGM();
  }

  v16 = CFGetTypeID(a2);
  if (v16 != CVPixelBufferGetTypeID())
  {
    goto LABEL_13;
  }

  v11 = OUTLINED_FUNCTION_3_24();
  v12 = a2;
LABEL_9:
  JPEGFromCVPixelBuffer = _createJPEGFromCVPixelBuffer(v11, v12, a3, a4, v13, v14, v15);
  if (JPEGFromCVPixelBuffer)
  {
    return JPEGFromCVPixelBuffer;
  }

  SampleBufferWrappingIOSurface = CMPhotoCreateSampleBufferWrappingIOSurface(*MEMORY[0x1E695E480], 0, 0, 0, BoolValue, 1u);
  if (!SampleBufferWrappingIOSurface)
  {
    return 4294950305;
  }

  v19 = SampleBufferWrappingIOSurface;
  CMSetAttachment(SampleBufferWrappingIOSurface, @"ByteBudgetHint", 0, 1u);
  DataBuffer = CMSampleBufferGetDataBuffer(v19);
  CMPropagateAttachments(v19, DataBuffer);
  v21 = 0;
  *a5 = v19;
  return v21;
}

uint64_t CMPhotoJPEGCreateJPEGFromSbuf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGCreateJPEGFromSbuf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGCreateJPEGFromSbuf_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGCreateJPEGFromSbuf_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_25();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_25();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_25();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_25();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_25();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_25();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createJPEGFromCVPixelBuffer_cold_18(int a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v7 = 0.025;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v7 = 0.15;
      break;
    case 2:
      v7 = 0.27;
      break;
    case 3:
      v7 = 0.31;
      break;
    case 4:
      v7 = 0.6;
      break;
    case 5:
      goto LABEL_5;
    case 6:
      v7 = 1.0;
      break;
    default:
      if (a1 == 262153)
      {
        v7 = 0.8;
      }

      else
      {
LABEL_5:
        v7 = 0.86;
      }

      break;
  }

  CMPhotoCFDictionarySetFloat(a2, @"ByteBudgetHint_Quality", v7);
  result = CMPhotoCFDictionarySetInt32(a2, @"ByteBudgetHint_Size", *a3);
  *a4 = a2;
  return result;
}

uint64_t CMPhotoGetDestinationPixelFormatFromOptions(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v58 = 0;
  HIBYTE(v57) = 0;
  result = 4294950306;
  if (a3 && a4)
  {
    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(a3);
    ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(a3);
    IsFullRange = CMPhotoPixelFormatIsFullRange(a3);
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (a2 == 1936484717)
    {
      CMPhotoCFDictionaryGetInt32IfPresent();
      if (CMPhotoCFDictionaryGetInt32IfPresent())
      {
        v12 = v58 == ChromaSubsamplingFromPixelFormat;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        goto LABEL_11;
      }

      HIDWORD(v58) = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a3);
    }

    else
    {
      if (a2 == 1785750887)
      {
        result = CMPhotoGetDestinationPixelFormatFromOptionsJPEG(a1, a3, 0, 0, &v58 + 1);
        if (result)
        {
          return result;
        }

        goto LABEL_38;
      }

      Int32IfPresent = CMPhotoCFDictionaryGetInt32IfPresent();
      v14 = CMPhotoCFDictionaryGetInt32IfPresent();
      if (CMPhotoPixelFormatIsRAW(a3) || CMPhotoPixelFormatIsRAWVersatile(a3) || (a3 != 825306677 ? (v15 = a3 == 825437747) : (v15 = 1), !v15 ? (v16 = a3 == 1717855600) : (v16 = 1), !v16 ? (v17 = a3 == 1717856627) : (v17 = 1), !v17 ? (v18 = a3 == 1751410032) : (v18 = 1), !v18 ? (v19 = a3 == 1932996149) : (v19 = 1), !v19 ? (v20 = a3 == 1751411059) : (v20 = 1), v20))
      {
        if (v14 && v58 != ChromaSubsamplingFromPixelFormat)
        {
          goto LABEL_11;
        }

        HIDWORD(v58) = a3;
      }

      else
      {
        if (v14)
        {
          if (!CMPhotoSubsamplingIsSupportedForCodec(v58, a2, 0))
          {
LABEL_11:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            return FigSignalErrorAtGM();
          }
        }

        else
        {
          LODWORD(v58) = CMPhotoGetDefaultImageSubsamplingForEncodeFromPixelFormat(a3, a2, 0);
        }

        IsPackedYUV = CMPhotoPixelFormatIsPackedYUV(a3);
        if (a2 == 1635148593)
        {
          v22 = 0;
        }

        else
        {
          v22 = IsPackedYUV;
        }

        PixelFormatCompressionType = CMPhotoGetPixelFormatCompressionType(a3);
        if (a2 == 1635148593)
        {
          v24 = 0;
        }

        else
        {
          v24 = PixelFormatCompressionType;
        }

        if (Int32IfPresent)
        {
          v55 = a3 == 1278226534 || a3 == 1278226536 || a3 == 1380410945 || a3 == 1380411457 || a3 == 1647719528 || a3 == 1651926376 || a3 == 1751527984;
          YUVPixelFormatForParameters = CMPhotoGetYUVPixelFormatForParameters(v58, BitDepthForPixelFormat, IsFullRange, v22, v24, v55, 1, &v58 + 1);
          if (YUVPixelFormatForParameters || !OUTLINED_FUNCTION_1_24(YUVPixelFormatForParameters, v32, v33, v34, v35, v36, v37, v38, BitDepthForPixelFormat, v57, SBYTE2(v57), 0, v58, HIDWORD(v58)))
          {
            goto LABEL_100;
          }
        }

        else
        {
          v56 = BitDepthForPixelFormat;
          if (BitDepthForPixelFormat < 8)
          {
LABEL_100:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            return FigSignalErrorAtGM();
          }

          while (1)
          {
            v39 = a3 == 1278226534 || a3 == 1278226536;
            v40 = v39 || a3 == 1380410945;
            v41 = v40 || a3 == 1380411457;
            v42 = v41 || a3 == 1647719528;
            v43 = v42 || a3 == 1651926376;
            v44 = v43 || a3 == 1751527984;
            v45 = v44;
            v46 = CMPhotoGetYUVPixelFormatForParameters(v58, BitDepthForPixelFormat, IsFullRange, v22, v24, v45, 0, &v58 + 1);
            if (!v46)
            {
              if (OUTLINED_FUNCTION_1_24(v46, v47, v48, v49, v50, v51, v52, v53, v56, v57, SBYTE2(v57), HIBYTE(v57), v58, HIDWORD(v58)))
              {
                break;
              }
            }

            v54 = v56;
            BitDepthForPixelFormat = --v56;
            if (v54 <= 8)
            {
              goto LABEL_100;
            }
          }
        }
      }
    }

LABEL_38:
    result = 0;
    *a4 = HIDWORD(v58);
  }

  return result;
}

void _addKeyValueToDataSet()
{
  if (__cxa_guard_acquire(&qword_1ED6FA6B0))
  {
    _MergedGlobals_10 = 22101;
    __cxa_guard_release(&qword_1ED6FA6B0);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED6FA6C0))
  {
    word_1ED6FA694 = 19541;
    __cxa_guard_release(&qword_1ED6FA6C0);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED6FA6C8))
  {
    word_1ED6FA696 = 22099;
    __cxa_guard_release(&qword_1ED6FA6C8);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED6FA6D0))
  {
    word_1ED6FA698 = 21331;
    __cxa_guard_release(&qword_1ED6FA6D0);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED6FA6D8))
  {
    word_1ED6FA69A = 19539;
    __cxa_guard_release(&qword_1ED6FA6D8);
  }
}

void AppleDicomAddAuxiliaryImageToDataSet_cold_1(uint64_t a1, void **a2, void *a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *a3 = v6;
    operator delete(v6);
  }
}

void vega::manipulators::LongTextManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA708))
  {
    word_1ED6FA6A6 = 21580;

    __cxa_guard_release(&qword_1ED6FA708);
  }
}

void vega::manipulators::ShortTextManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(qword_1ED6FA710))
  {
    word_1ED6FA6A8 = 21587;

    __cxa_guard_release(qword_1ED6FA710);
  }
}

uint64_t CMPhotoDeInterleaveCFAData(CVPixelBufferRef pixelBuffer, int a2, CVPixelBufferRef *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  v3 = 4294950746;
  if (!pixelBuffer || !a3)
  {
    return v3;
  }

  if (a2 == 34 || a2 == 68)
  {
    if (CVPixelBufferGetPlaneCount(pixelBuffer) > 1)
    {
      goto LABEL_47;
    }

    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
    v11 = CFGetAllocator(pixelBuffer);
    v12 = CVPixelBufferCreate(v11, Width, Height, PixelFormatType, 0, &pixelBufferOut);
    if (!v12)
    {
      v13 = OUTLINED_FUNCTION_22();
      v12 = CVPixelBufferLockBaseAddress(v13, v14);
      if (!v12)
      {
        v15 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
        if (v15)
        {
          v3 = v15;
        }

        else
        {
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
          v17 = CVPixelBufferGetBaseAddress(pixelBufferOut);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v19 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
          v20 = 0;
          memset(v46, 0, 32);
          if (a2 == 34)
          {
            v21 = 2;
          }

          else
          {
            v21 = 4;
          }

          memset(&v46[2], 0, 64);
          if (a2 == 34)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (a2 == 34)
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }

          memset(&v46[6], 0, 32);
          do
          {
            v24 = 0;
            v25 = v46 + (v20 << v23);
            v26 = v21;
            do
            {
              *v25++ = &v17[((Height * v20) >> v22) * v19 + (v24 >> v22) * BytesPerPixelForPixelFormat];
              v24 += Width;
              --v26;
            }

            while (v26);
            ++v20;
          }

          while (v20 != v21);
          if (Height)
          {
            v27 = 0;
            v28 = (v21 - 1);
            do
            {
              v29 = v46 + ((v27 & v28) << v22);
              v30 = (v27 >> v22) * v19;
              v31 = (*v29 + v30);
              v32 = (v29[1] + v30);
              if (a2 == 34)
              {
                if (BytesPerPixelForPixelFormat == 1)
                {
                  if (Width)
                  {
                    for (i = 0; i < Width; i += 2)
                    {
                      *v31++ = BaseAddress[i];
                      *v32++ = BaseAddress[i + 1];
                    }
                  }
                }

                else if (Width)
                {
                  for (j = 0; j < Width; j += 2)
                  {
                    v39 = &BaseAddress[2 * j];
                    *&v31[j] = *v39;
                    *&v32[j] = v39[1];
                  }
                }
              }

              else
              {
                v34 = v29[3];
                v35 = (v29[2] + v30);
                v36 = (v34 + v30);
                if (BytesPerPixelForPixelFormat == 1)
                {
                  if (Width)
                  {
                    for (k = 0; k < Width; k += 4)
                    {
                      *v31++ = BaseAddress[k];
                      *v32++ = BaseAddress[k + 1];
                      *v35 = BaseAddress[k + 2];
                      v35 = (v35 + 1);
                      *v36 = BaseAddress[k + 3];
                      v36 = (v36 + 1);
                    }
                  }
                }

                else if (Width)
                {
                  for (m = 0; m < Width; m += 4)
                  {
                    v41 = &BaseAddress[2 * m];
                    *v31 = *v41;
                    v31 += 2;
                    *v32 = v41[1];
                    v32 += 2;
                    *v35++ = v41[2];
                    *v36++ = v41[3];
                  }
                }
              }

              ++v27;
              BaseAddress += BytesPerRow;
            }

            while (v27 != Height);
          }

          CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
          v3 = 0;
          *a3 = pixelBufferOut;
          pixelBufferOut = 0;
        }

        v42 = OUTLINED_FUNCTION_22();
        CVPixelBufferUnlockBaseAddress(v42, v43);
        goto LABEL_47;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
  }

  v3 = v12;
LABEL_47:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v3;
}

uint64_t CMPhotoInterleaveCFAData(int a1, int a2, uint64_t a3, uint64_t a4, int a5, CFDataRef theData, __CFData **a7)
{
  v57 = *MEMORY[0x1E69E9840];
  Length = CFDataGetLength(theData);
  result = 4294950746;
  if (a7 && Length >= a2 * a4 && (a3 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (a5 == 34 || a5 == 68)
    {
      if (a5 == 34 || !((a2 % 3) | (a1 % 3)))
      {
        v16 = CFGetAllocator(theData);
        v17 = CFDataGetLength(theData);
        Mutable = CFDataCreateMutable(v16, v17);
        if (Mutable)
        {
          v19 = Mutable;
          v20 = CFDataGetLength(theData);
          CFDataSetLength(v19, v20);
          BytePtr = CFDataGetBytePtr(theData);
          MutableBytePtr = CFDataGetMutableBytePtr(v19);
          v23 = 0;
          memset(v56, 0, 32);
          if (a5 == 34)
          {
            v24 = 2;
          }

          else
          {
            v24 = 4;
          }

          memset(&v56[2], 0, 64);
          if (a5 == 34)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          memset(&v56[6], 0, 32);
          do
          {
            v26 = 0;
            for (i = 0; i != v24; ++i)
            {
              *(v56 + (v23 << v25) + i) = &BytePtr[v23 * a2 / v24 * a4 + v26 / v24 * a3];
              v26 += a1;
            }

            ++v23;
          }

          while (v23 != v24);
          if (a2)
          {
            v28 = 0;
            v29 = (v24 - 1);
            v30 = 1;
            if (a5 != 34)
            {
              v30 = 2;
            }

            do
            {
              v31 = (v28 & v29) << v30;
              v32 = v56 + (v31 & 0xFFFFFFFE);
              v33 = (v28 >> v30) * a4;
              v34 = (*v32 + v33);
              v35 = (v32[1] + v33);
              if (a5 == 34)
              {
                if (a3 == 1)
                {
                  if (a1 >= 1)
                  {
                    v36 = 0;
                    do
                    {
                      v37 = *v34++;
                      v38 = &MutableBytePtr[v36];
                      *v38 = v37;
                      v39 = *v35++;
                      v38[1] = v39;
                      v36 += 2;
                    }

                    while (v36 < a1);
                  }
                }

                else if (a1 >= 1)
                {
                  v48 = 0;
                  do
                  {
                    v49 = &MutableBytePtr[2 * v48];
                    *v49 = *&v34[v48];
                    *(v49 + 1) = *&v35[v48];
                    v48 += 2;
                  }

                  while (v48 < a1);
                }
              }

              else
              {
                v40 = (*(v56 + ((v31 + 2) & 0xFFFFFFFE)) + v33);
                v41 = (*(v56 + (v31 + 3)) + v33);
                if (a3 == 1)
                {
                  if (a1 >= 1)
                  {
                    v42 = 0;
                    do
                    {
                      v43 = *v34++;
                      v44 = &MutableBytePtr[v42];
                      *v44 = v43;
                      v45 = *v35++;
                      v44[1] = v45;
                      v46 = *v40++;
                      v44[2] = v46;
                      v47 = *v41++;
                      v44[3] = v47;
                      v42 += 4;
                    }

                    while (v42 < a1);
                  }
                }

                else if (a1 >= 1)
                {
                  v50 = 0;
                  do
                  {
                    v51 = &MutableBytePtr[2 * v50];
                    v52 = *v34;
                    v34 += 2;
                    *v51 = v52;
                    v53 = *v35;
                    v35 += 2;
                    *(v51 + 1) = v53;
                    v54 = *v40;
                    v40 += 2;
                    *(v51 + 2) = v54;
                    v55 = *v41;
                    v41 += 2;
                    *(v51 + 3) = v55;
                    v50 += 4;
                  }

                  while (v50 < a1);
                }
              }

              ++v28;
              MutableBytePtr += a4;
            }

            while (v28 != a2);
          }

          result = 0;
          *a7 = v19;
        }

        else
        {
          return 4294950745;
        }
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t CMPhotoDNGJPEGXLCompressData(unint64_t a1, unint64_t a2, int a3, char *a4, uint64_t a5, float a6, uint64_t a7, int a8, int a9, CGColorSpace *a10, const __CFData *a11)
{
  v84 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  bzero(v76, 0xCCuLL);
  v68 = 0;
  OUTLINED_FUNCTION_5_19();
  if (!v25 && a9 || (a6 >= 0.0 ? (v23 = a6 > 1.0) : (v23 = 1), v23))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
LABEL_125:
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_14_14();
    goto LABEL_121;
  }

  OUTLINED_FUNCTION_18_6(v20, v21, v22, &v68);
  if (!v68)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_4_20();
  v25 = v25 || a3 == 1278226488;
  if (v25 || a3 == 1815361650 || a3 == 1815491698)
  {
    if (!a11)
    {
      OUTLINED_FUNCTION_14_14();
      v31 = 4294950746;
      goto LABEL_121;
    }

LABEL_20:
    v65 = v24;
    if (!JxlEncoderCreate())
    {
      OUTLINED_FUNCTION_14_14();
      goto LABEL_127;
    }

    if (a8 >= 2)
    {
      if (!JxlThreadParallelRunnerCreate())
      {
        OUTLINED_FUNCTION_14_14();
        v31 = 4294950305;
        goto LABEL_121;
      }

      if (JxlEncoderSetParallelRunner())
      {
        goto LABEL_118;
      }
    }

    if (!JxlEncoderFrameSettingsCreate())
    {
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_4_20();
    if (v25)
    {
      v29 = 0;
      v66 = 3;
LABEL_40:
      v32 = 8;
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_13_14();
    if (a3 != v28)
    {
      OUTLINED_FUNCTION_5_19();
      if (v25)
      {
        v66 = 1;
        v29 = 1;
        goto LABEL_37;
      }

      if (a3 != 1815361650)
      {
        if (a3 != 1278226488)
        {
          v67 = 0;
          v29 = 0;
          v66 = 0;
LABEL_42:
          JxlEncoderInitBasicInfo();
          v11 = 0;
          v31 = 4294950302;
          if (HIDWORD(a1) || HIDWORD(a2))
          {
            goto LABEL_121;
          }

          v77 = a1;
          v78 = a2;
          v82 = a1;
          v83 = a2;
          v79 = v67;
          v81 = v66;
          if (a10)
          {
            if (a6 == 1.0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            *&v69 = v29 | 0x100000000;
            DWORD2(v70) = 9;
            LODWORD(v74) = 8;
            LODWORD(v75) = 0;
            if (a6 == 1.0)
            {
LABEL_48:
              v80 = 1;
              goto LABEL_50;
            }
          }

          v80 = 0;
LABEL_50:
          if (!JxlEncoderSetBasicInfo())
          {
            if (a10)
            {
              v33 = CGColorSpaceCopyICCData(a10);
              v11 = v33;
              if (!v33)
              {
                v31 = 4294950306;
                goto LABEL_121;
              }

              CFDataGetBytePtr(v33);
              CFDataGetLength(v11);
              v34 = JxlEncoderSetICCProfile();
              CFRelease(v11);
              if (v34)
              {
                goto LABEL_118;
              }

              goto LABEL_56;
            }

            if (!JxlEncoderSetColorEncoding())
            {
LABEL_56:
              if (a6 == 1.0)
              {
                if (JxlEncoderSetFrameLossless())
                {
                  goto LABEL_118;
                }
              }

              else if (JxlEncoderSetFrameDistance() || JxlEncoderFrameSettingsSetOption() || JxlEncoderFrameSettingsSetOption())
              {
                goto LABEL_118;
              }

              if (JxlEncoderFrameSettingsSetOption())
              {
LABEL_118:
                v11 = 0;
                v31 = 4294950304;
                goto LABEL_121;
              }

              v35 = v66 * v67;
              v36 = v35 >> 3;
              if (!is_mul_ok(v36, a1 * a2))
              {
                fig_log_get_emitter();
                v31 = FigSignalErrorAtGM();
                v11 = 0;
                goto LABEL_121;
              }

              if (a3 != 1111970369 && a3 != 1278226488 && a3 != 1815491698 && a3 != 1278226742)
              {
                v11 = 0;
                if (a1 * v36 != a5)
                {
                  goto LABEL_117;
                }

LABEL_111:
                if (!JxlEncoderAddImageFrame())
                {
                  JxlEncoderCloseInput();
                  Length = CFDataGetLength(a11);
                  v60 = Length + 0x4000;
                  v61 = Length;
                  while (1)
                  {
                    CFDataSetLength(a11, v60);
                    CFDataGetMutableBytePtr(a11);
                    v62 = JxlEncoderProcessOutput();
                    if (v62 != 2)
                    {
                      break;
                    }

                    v61 += 0x4000;
                    Length = v61 - (v60 - Length);
                    v60 += 0x4000;
                  }

                  if (!v62)
                  {
                    CFDataSetLength(a11, Length);
LABEL_117:
                    v31 = v65;
                    goto LABEL_121;
                  }
                }

LABEL_120:
                v31 = 4294950739;
                goto LABEL_121;
              }

              v11 = malloc_type_malloc(v36 * a1 * a2, 0x256D8D82uLL);
              if (v11)
              {
                OUTLINED_FUNCTION_4_20();
                if (v25)
                {
                  if (a2)
                  {
                    v53 = 0;
                    do
                    {
                      if (a1)
                      {
                        OUTLINED_FUNCTION_6_18();
                        v56 = v11 + v55 * a1;
                        v57 = a1;
                        do
                        {
                          *v56 = *v54;
                          v56[1] = v54[1];
                          v56[2] = v54[2];
                          v56 += 3;
                          v54 += 4;
                          --v57;
                        }

                        while (v57);
                      }

                      ++v53;
                    }

                    while (v53 != a2);
                  }
                }

                else if (a3 == 1278226488 || a3 == 1278226742)
                {
                  if (a9)
                  {
                    if (a3 != 1278226742)
                    {
                      v31 = 4294950738;
                      goto LABEL_121;
                    }

                    if (a2)
                    {
                      v41 = 0;
                      do
                      {
                        if (a1)
                        {
                          OUTLINED_FUNCTION_6_18();
                          v44 = (v11 + v43 * a1);
                          v45 = a1;
                          do
                          {
                            v46 = *v42++;
                            *v44++ = v46 >> a9;
                            --v45;
                          }

                          while (v45);
                        }

                        ++v41;
                      }

                      while (v41 != a2);
                    }
                  }

                  else if (a2)
                  {
                    v58 = 0;
                    do
                    {
                      memcpy(v11 + (v58 >> 3) * a1, a4, (a1 * v67) >> 3);
                      a4 += a5;
                      v58 += v35;
                      --a2;
                    }

                    while (a2);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_13_14();
                  if (a3 == v47 && a2)
                  {
                    v48 = 0;
                    do
                    {
                      if (a1)
                      {
                        OUTLINED_FUNCTION_6_18();
                        v51 = (v11 + v50 * a1);
                        v52 = a1;
                        do
                        {
                          *v51 = *v49;
                          v51[1] = v49[1];
                          v51[2] = v49[2];
                          v51 += 3;
                          v49 += 4;
                          --v52;
                        }

                        while (v52);
                      }

                      ++v48;
                    }

                    while (v48 != a2);
                  }
                }

                goto LABEL_111;
              }

LABEL_127:
              v31 = 4294950745;
              goto LABEL_121;
            }
          }

LABEL_119:
          v11 = 0;
          goto LABEL_120;
        }

        v66 = 1;
        v29 = 1;
        goto LABEL_40;
      }
    }

    v29 = 0;
    v66 = 3;
LABEL_37:
    v32 = 16;
LABEL_41:
    v67 = v32;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_5_19();
  v11 = 0;
  if (v30 && a11)
  {
    goto LABEL_20;
  }

LABEL_121:
  v63 = v31;
  free(v11);
  JxlThreadParallelRunnerDestroy();
  JxlEncoderDestroy();
  return v63;
}

uint64_t CMPhotoDNGCompressLinearDNG(_DWORD *a1, __CVBuffer *a2, const __CFData *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  pthread_once(&_checkFigNoteTraceOnce_onceToken_4, _registerFigNoteTrace_4);
  if (!a2)
  {
    return 4294950746;
  }

  a1[427] = 0;
  v12 = (a1[425] + a1[25] + ~((a1[25] - 1) % a1[425])) / a1[425];
  v13 = v12;
  v14 = (a1[426] + a1[26] + ~((a1[26] - 1) % a1[426])) / a1[426];
  v15 = v14;
  v16 = v14 * v12;
  if (CMPhotoGetCPUCount() > 7)
  {
    CPUCount = 8;
  }

  else
  {
    CPUCount = CMPhotoGetCPUCount();
  }

  v18 = a1[8];
  if (CPUCount < v18)
  {
    v18 = CPUCount;
  }

  if (v18 >= v16)
  {
    v18 = v16;
  }

  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4();
  }

  v21 = _compressAllTiles(a1, v13, v15, v19, a2, a3, a4, a5, a6);
  if (*v20 == 1)
  {
    OUTLINED_FUNCTION_7_18();
  }

  return v21;
}

uint64_t _compressAllTiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CVBuffer *a5, const __CFData *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v78 = a7;
  v79 = a8;
  v86 = a5;
  v108[3] = *MEMORY[0x1E69E9840];
  v89 = a2;
  v90 = a4;
  v73 = a2 * a3;
  v74 = a3;
  if (a4 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = a4;
  }

  v12 = a4;
  v13 = 8 * a4;
  MEMORY[0x1EEE9AC00]();
  v14 = (v13 + 15) & 0xFFFFFFFF0;
  v15 = (&v71 - v14);
  if (v13 >= 0x200)
  {
    v16 = 512;
  }

  else
  {
    v16 = v13;
  }

  bzero(&v71 - v14, v16);
  MEMORY[0x1EEE9AC00]();
  v17 = (&v71 - v14);
  bzero(v17, v16);
  v88 = v11;
  MEMORY[0x1EEE9AC00]();
  v19 = &v71 - v18;
  v106 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(v86);
  MEMORY[0x1EEE9AC00]();
  v21 = (&v71 - 8 * v20);
  bzero(v21, v22);
  bzero(v15, v13);
  bzero(v17, v13);
  v87 = v19;
  bzero(v19, 8 * v11);
  if (v90 >= 2 && (v23 = CMPhotoAsyncDispatcherCreate(*MEMORY[0x1E695E480], v12, 16, 0, &v106), v23))
  {
    v54 = v23;
  }

  else
  {
    v24 = *(a1 + 12);
    v72 = v12;
    v84 = v17;
    if (v24 == 5)
    {
      if (*(a1 + 28))
      {
        v25 = 0;
      }

      else
      {
        v25 = *(a1 + 156) == *(a1 + 136);
      }

      v27 = !v25 || PixelFormatType == 1751527984;
      v91 = v27;
      if (_compressAllTiles_onceToken != -1)
      {
        dispatch_once(&_compressAllTiles_onceToken, &__block_literal_global_18);
      }

      v28 = 1815361650;
    }

    else
    {
      if (*(a1 + 28))
      {
        v29 = 1;
      }

      else
      {
        v29 = PixelFormatType == 1751527984;
      }

      v30 = v29;
      v91 = v30;
      if (v24 == 2)
      {
        v28 = 1111970369;
      }

      else
      {
        v28 = 1815491698;
      }
    }

    LODWORD(v83) = v28;
    OUTLINED_FUNCTION_9_18();
    if (v31 == v32)
    {
      v12 = v72;
      v33 = v72;
      v34 = v15;
      do
      {
        if (v91)
        {
          PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", v83, *(a1 + 1700), *(a1 + 1704), 1, 0, 0, 0, 0, 0, v34);
          if (PixelBuffer)
          {
            v54 = PixelBuffer;
            v91 = 1;
            goto LABEL_73;
          }
        }

        ++v34;
        --v33;
      }

      while (v33);
      if (v91)
      {
        v37 = v87;
        v36 = v88;
        do
        {
          v38 = objc_alloc(_MergedGlobals_1[0]());
          v107[0] = off_1ED6FA270[0]();
          v108[0] = [MEMORY[0x1E695DFB0] null];
          v107[1] = off_1ED6FA278[0]();
          v108[1] = MEMORY[0x1E695E110];
          v107[2] = off_1ED6FA280[0]();
          v108[2] = @"linearizationTable and shift signal encode";
          *v37++ = [v38 initWithOptions:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v108, v107, 3)}];
          --v36;
        }

        while (v36);
      }
    }

    if (v74)
    {
      v39 = 0;
      v81 = a9;
      v80 = v99;
      v75 = v79;
      v76 = v78;
      v77 = v93;
      do
      {
        if (v89)
        {
          v40 = 0;
          v83 = MEMORY[0x1E69E9820];
          v82 = ___compressAllTiles_block_invoke_2;
          do
          {
            v41 = *(a1 + 1700);
            v42 = v40 * v41 + *(a1 + 112);
            v43 = *(a1 + 1704);
            v44 = v39 * v43 + *(a1 + 120);
            v45 = *(a1 + 1708);
            v46 = v45;
            *(a1 + 1708) = v45 + 1;
            v47 = &v21[8 * v45];
            v48 = *(a1 + 104) - v39 * v43;
            v49 = *(a1 + 100) - v40 * v41;
            v51 = v48 < v43 || v49 < v41;
            if (v51)
            {
              v52 = 0;
            }

            else
            {
              v52 = v42;
            }

            v98[0] = v83;
            if (v51)
            {
              v53 = 0;
            }

            else
            {
              v53 = v44;
            }

            v98[1] = 3221225472;
            v99[0] = v82;
            v99[1] = &__block_descriptor_170_e8_v16__0Q8l;
            v104 = v51;
            v99[2] = v84;
            v99[3] = &v21[8 * v45];
            v100 = PixelFormatType;
            v101 = 0;
            v99[4] = a1;
            v99[5] = v86;
            v99[6] = v42;
            v99[7] = v44;
            v99[8] = v48;
            v99[9] = v49;
            v105 = v91;
            v99[10] = a6;
            v99[11] = v87;
            v102 = v90;
            v103 = v88;
            v99[12] = v15;
            v99[13] = v52;
            v99[14] = v53;
            v99[15] = v41;
            v99[16] = v43;
            if (v90 < 2)
            {
              Length = CFDataGetLength(a6);
              (v99[0])(v98, 0);
              if (*(v47 + 2))
              {
                goto LABEL_71;
              }

              v56 = CFDataGetLength(a6);
              MutableBytePtr = CFDataGetMutableBytePtr(a6);
              v58 = &MutableBytePtr[v76];
              if (v81)
              {
                *&v58[4 * v46] = bswap32(Length);
                v59 = bswap32(v56 - Length);
              }

              else
              {
                *&v58[4 * v46] = Length;
                v59 = v56 - Length;
              }

              *&MutableBytePtr[4 * v46 + v75] = v59;
            }

            else
            {
              v92[0] = MEMORY[0x1E69E9820];
              v92[1] = 3221225472;
              v93[0] = ___compressAllTiles_block_invoke_3;
              v93[1] = &__block_descriptor_61_e5_v8__0l;
              v93[2] = &v21[8 * v45];
              v93[3] = a6;
              v94 = v78;
              v95 = v45;
              v97 = v81;
              v96 = v79;
              if (*MEMORY[0x1E695FF58] == 1)
              {
                OUTLINED_FUNCTION_4();
              }

              v54 = CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletion(v106, v98, v92);
              if (*MEMORY[0x1E695FF58] == 1)
              {
                OUTLINED_FUNCTION_7_18();
              }

              if (v54)
              {
                goto LABEL_72;
              }
            }

            ++v40;
          }

          while (v89 != v40);
        }

        ++v39;
      }

      while (v39 != v74);
    }

    if (v90 < 2)
    {
LABEL_71:
      v54 = 0;
    }

    else
    {
      v54 = CMPhotoAsyncDispatcherWaitForCompletion(v106);
    }

LABEL_72:
    v12 = v72;
LABEL_73:
    v17 = v84;
  }

  v60 = v73;
  v62 = v87;
  v61 = v88;
  if (v73)
  {
    v63 = (v21 + 1);
    v64 = v73;
    while (1)
    {
      v66 = *v63;
      v63 += 16;
      v65 = v66;
      if (v66)
      {
        break;
      }

      if (!--v64)
      {
        goto LABEL_78;
      }
    }

    v54 = v65;
  }

  else
  {
LABEL_78:
    OUTLINED_FUNCTION_9_18();
    v67 = v31 != v32;
    if (!v67 && (v91 & 1) != 0)
    {
      do
      {
        v68 = *v62++;

        --v61;
      }

      while (v61);
    }
  }

  if (v106)
  {
    CFRelease(v106);
  }

  for (; v60; --v60)
  {
    if (*v21)
    {
      CFRelease(*v21);
      *v21 = 0;
    }

    v21 += 8;
  }

  OUTLINED_FUNCTION_9_18();
  if (v31 == v32)
  {
    v69 = v12;
    do
    {
      if (*v15)
      {
        CFRelease(*v15);
      }

      ++v15;
      --v69;
    }

    while (v69);
    OUTLINED_FUNCTION_9_18();
    if (v31 == v32)
    {
      do
      {
        if (*v17)
        {
          CFRelease(*v17);
        }

        ++v17;
        --v12;
      }

      while (v12);
    }
  }

  return v54;
}

uint64_t CMPhotoDNGCompressRaw(_DWORD *a1, __CVBuffer *a2, const __CFData *a3, int a4, size_t a5, int a6, unsigned int a7, unsigned int a8)
{
  HIDWORD(v209) = a6;
  v230 = a5;
  LODWORD(v224) = a4;
  v256 = 0;
  v257 = 0;
  *length = 0u;
  v253 = 0u;
  v255 = 0u;
  v254 = 0u;
  v250 = 0u;
  v251 = 0u;
  v249 = 0u;
  LODWORD(length[1]) = 2 * a1[425] * a1[426];
  length[0] = malloc_type_malloc(SLODWORD(length[1]), 0xBAB889FEuLL);
  v10 = a1[26];
  DWORD1(v255) = a1[25];
  DWORD1(v253) = v10;
  *(&v253 + 1) = 0x40000000ALL;
  v245 = a1;
  DWORD2(v251) = a1[419];
  v248 = malloc_type_malloc(0x7FFCuLL, 0x100004052888210uLL);
  v241 = v248 + 16380;
  for (i = -4095; i != 4096; ++i)
  {
    v12 = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    v15 = 0;
    if (i >= 0)
    {
      v16 = i;
    }

    else
    {
      v16 = -i;
    }

    v17 = 32 - __clz(v16);
    v18 = v17;
    if (i)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    do
    {
      if (v12 >= v14)
      {
        v20 = &g_huff_n[v15];
        do
        {
          v21 = *v20++;
          v14 = v21 + v14;
          v13 *= 2;
          ++v15;
        }

        while (v12 >= v14);
      }

      if (v15 >= 16)
      {
        printf("ERROR NO HUFFCODE %d %d\n", i, v19);
      }

      if (v19 == g_huff_v[v12])
      {
        break;
      }

      ++v12;
      ++v13;
    }

    while (v12 != 16);
    v22 = (i - 1) & ~(-1 << v18);
    if (i < 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = v19;
    }

    if (i >= 0)
    {
      v22 = i;
    }

    *&v241[4 * i] = (v15 + v19) | (((v13 << v23) + v22) << 8);
  }

  v24 = a2;
  if (CVPixelBufferGetPixelFormatType(a2) != 1651926376)
  {
    v41 = 0;
    v43 = a1;
    goto LABEL_41;
  }

  pixelBufferOut[0] = 0;
  if (!a2 || CVPixelBufferGetPixelFormatType(a2) != 1651926376 || CVPixelBufferLockBaseAddress(a2, 1uLL))
  {
    v41 = 0;
    goto LABEL_138;
  }

  PixelBufferSize = CMPhotoGetPixelBufferSize(a2);
  v27 = v26;
  v28 = CFGetAllocator(a2);
  if (CVPixelBufferCreate(v28, PixelBufferSize, v27, 0x62703136u, 0, pixelBufferOut) || CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0))
  {
    v41 = 0;
    v42 = 0;
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a2);
    v30 = CVPixelBufferGetBaseAddress(pixelBufferOut[0]);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
    v32 = CVPixelBufferGetBytesPerRow(pixelBufferOut[0]);
    if (v27 > 0.0)
    {
      v33 = 0;
      do
      {
        if (PixelBufferSize > 0.0)
        {
          v34 = 0;
          do
          {
            _H4 = *&BaseAddress[2 * v34];
            __asm { FCVT            S4, H4 }

            v40 = roundf(a7 + (_S4 * (a8 - a7)));
            if (v40 >= a8)
            {
              v40 = a8;
            }

            *&v30[2 * v34++] = fmax(v40, 0.0);
          }

          while (PixelBufferSize > v34);
        }

        ++v33;
        v30 += v32 & 0xFFFFFFFFFFFFFFFELL;
        BaseAddress += BytesPerRow & 0xFFFFFFFFFFFFFFFELL;
      }

      while (v27 > v33);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut[0], 0);
    v41 = pixelBufferOut[0];
    pixelBufferOut[0] = 0;
    v42 = 1;
  }

  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (pixelBufferOut[0])
  {
    CFRelease(pixelBufferOut[0]);
  }

  v24 = v41;
  v43 = v245;
  if (v42)
  {
LABEL_41:
    v196 = v41;
    v44 = *(v43 + 1712);
    if (v44 == 68 || v44 == 34)
    {
      v45 = HIDWORD(v209);
      if (CMPhotoDeInterleaveCFAData(v24, v44, &v256))
      {
        goto LABEL_137;
      }

      v24 = v256;
    }

    else
    {
      v45 = HIDWORD(v209);
    }

    CVPixelBufferLockBaseAddress(v24, 1uLL);
    v218 = CVPixelBufferGetBaseAddress(v24);
    v46 = CVPixelBufferGetBytesPerRow(v24);
    LODWORD(v47) = 2 * DWORD1(v255);
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v47;
    }

    v242 = v47;
    pixelBuffera = v24;
    LODWORD(pixelFormatType) = CVPixelBufferGetPixelFormatType(v24);
    BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(pixelFormatType);
    v48 = v245;
    v49 = *(v245 + 1700);
    v50 = DWORD1(v255);
    v51 = *(v245 + 1704);
    v52 = DWORD1(v253) - 1;
    *(v245 + 1708) = 0;
    _CF = __CFADD__(v52, v51);
    v53 = v52 + v51;
    if (!_CF)
    {
      HIDWORD(pixelFormatType) = 0;
      HIDWORD(v227) = (v50 + v49 - 1) / v49;
      v212 = BytesPerPixelForPixelFormat;
      allocator = *MEMORY[0x1E695E480];
      v221 = v230;
      v224 = v224;
      HIDWORD(v203) = v53 / v51;
      while (!HIDWORD(v227))
      {
LABEL_135:
        if (HIDWORD(v203) <= ++HIDWORD(pixelFormatType))
        {
          goto LABEL_136;
        }
      }

      v54 = 0;
      while (1)
      {
        v55 = *(v48 + 1700);
        v56 = *(v48 + 120);
        v57 = *(v48 + 112) + v55 * v54;
        v58 = *(v48 + 1704);
        v59 = DWORD1(v253) - v58 * HIDWORD(pixelFormatType);
        v60 = v56 + v58 * HIDWORD(pixelFormatType);
        v61 = DWORD1(v255) - v55 * v54;
        if (pixelFormatType != 1650943796 && pixelFormatType != 1651519798 && pixelFormatType != 1734505012 && pixelFormatType != 1919379252 && pixelFormatType != 1735549492)
        {
          if (v61 < v55)
          {
            v55 = DWORD1(v255) - v55 * v54;
          }

          HIDWORD(v250) = v55;
          if (v59 >= v58)
          {
            v185 = v58;
          }

          else
          {
            v185 = DWORD1(v253) - v58 * HIDWORD(pixelFormatType);
          }

          LODWORD(v255) = v185;
          *(&v254 + 1) = &v218[2 * v57 + v60 * DWORD2(v255)];
          goto LABEL_86;
        }

        if (v59 < v58 || v61 < v55)
        {
          break;
        }

        DWORD2(v255) = v242;
        *(&v254 + 1) = &v218[v60 * v242 + v57 * v212];
LABEL_85:
        HIDWORD(v250) = v55;
        LODWORD(v255) = v58;
LABEL_86:
        *&v250 = 0;
        HIDWORD(length[1]) = 0;
        DWORD2(v250) = 64;
        v78 = CFDataGetLength(a3);
        v79 = *(v245 + 12);
        if (v79 == 1)
        {
          v176 = v255;
          if (v255 >= 1)
          {
            v177 = 0;
            v178 = HIDWORD(v250);
            do
            {
              if (v178 >= 1)
              {
                v179 = 0;
                v180 = *(&v254 + 1) + (DWORD2(v255) * v177);
                do
                {
                  LOWORD(pixelBufferOut[0]) = __rev16((*(v180 + 2 * v179) >> SBYTE8(v251)) & 0xFFF);
                  CFDataAppendBytes(a3, pixelBufferOut, 2);
                  v178 = HIDWORD(v250);
                  ++v179;
                }

                while (v179 < SHIDWORD(v250));
                v176 = v255;
              }

              ++v177;
            }

            while (v177 < v176);
          }
        }

        else if (v79 == 5)
        {
          if (CMPhotoDNGJPEGXLCompressData(*(v245 + 1700), *(v245 + 1704), 1278226742, *(&v254 + 1), DWORD2(v255), *(v245 + 16), *(v245 + 20), *(v245 + 24), *(v245 + 1676), 0, a3))
          {
            goto LABEL_137;
          }
        }

        else
        {
          v80 = v54;
          v81 = BYTE8(v251);
          OUTLINED_FUNCTION_0_28();
          *(v82 + v83) = -1;
          OUTLINED_FUNCTION_0_28();
          *(v84 + v85) = -40;
          OUTLINED_FUNCTION_0_28();
          *(v86 + v87) = -1;
          OUTLINED_FUNCTION_0_28();
          *(v88 + v89) = -61;
          OUTLINED_FUNCTION_0_28();
          *(v90 + v91) = 0;
          OUTLINED_FUNCTION_0_28();
          *(v92 + v93) = 14;
          OUTLINED_FUNCTION_0_28();
          *(v94 + v95) = 12;
          LOBYTE(v94) = v255;
          v96 = SHIDWORD(length[1]);
          ++HIDWORD(length[1]);
          *(length[0] + v96) = BYTE1(v255);
          OUTLINED_FUNCTION_2_26(v94, v187, v190, v193, v196, pixelBuffera, v203, allocator, v209, v212, v215, v218, v221, v224, v227, v230, pixelFormatType, BytesPerPixelForPixelFormat, v242, v245, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, *(&v251 + 1), length[0], length[1], SHIDWORD(length[1]));
          v97 = SHIDWORD(v250) / 2;
          v98 = SHIDWORD(length[1]);
          ++HIDWORD(length[1]);
          *(length[0] + v98) = (SHIDWORD(v250) / 2) >> 8;
          OUTLINED_FUNCTION_2_26(v97, v188, v191, v194, v197, pixelBufferb, v204, allocatora, v210, v213, v216, v219, v222, v225, v228, v231, pixelFormatTypea, v239, v243, v246, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, *(&v251 + 1), length[0], length[1], SHIDWORD(length[1]));
          OUTLINED_FUNCTION_0_28();
          *(v99 + v100) = 2;
          OUTLINED_FUNCTION_0_28();
          *(v101 + v102) = 0;
          OUTLINED_FUNCTION_0_28();
          *(v103 + v104) = 17;
          OUTLINED_FUNCTION_0_28();
          *(v105 + v106) = 0;
          OUTLINED_FUNCTION_0_28();
          *(v107 + v108) = 1;
          OUTLINED_FUNCTION_0_28();
          *(v109 + v110) = v111;
          OUTLINED_FUNCTION_0_28();
          *(v112 + v113) = 0;
          _encodeWriteHuffTable(&v248, 0);
          _encodeWriteHuffTable(&v248, 1);
          OUTLINED_FUNCTION_0_28();
          *(v114 + v115) = -1;
          OUTLINED_FUNCTION_0_28();
          *(v116 + v117) = -38;
          OUTLINED_FUNCTION_0_28();
          *(v118 + v119) = 0;
          OUTLINED_FUNCTION_0_28();
          *(v120 + v121) = 10;
          OUTLINED_FUNCTION_0_28();
          *(v122 + v123) = 2;
          OUTLINED_FUNCTION_0_28();
          *(v124 + v125) = 0;
          OUTLINED_FUNCTION_0_28();
          *(v126 + v127) = 0;
          OUTLINED_FUNCTION_0_28();
          *(v128 + v129) = 1;
          OUTLINED_FUNCTION_0_28();
          *(v130 + v131) = 16;
          OUTLINED_FUNCTION_0_28();
          *(v132 + v133) = 1;
          OUTLINED_FUNCTION_0_28();
          *(v134 + v135) = 0;
          OUTLINED_FUNCTION_0_28();
          *(v136 + v137) = 0;
          CFDataAppendBytes(a3, length[0], SHIDWORD(length[1]));
          HIDWORD(length[1]) = 0;
          if (v255 >= 1)
          {
            v147 = 0;
            v148 = 0;
            do
            {
              v149 = (DWORD2(v255) * v148);
              v150 = *(&v254 + 1) + v149;
              if (v148)
              {
                v151 = DWORD2(v255) >> 1;
                v152 = (*(v150 - 2 * v151) >> v81) & 0xFFF;
                v153 = (*(v150 + 2 * (1 - v151)) >> v81) & 0xFFF;
              }

              else
              {
                v153 = 2048;
                v152 = 2048;
              }

              *&v251 = __PAIR64__(v153, v152);
              v154 = HIDWORD(v250);
              if ((BYTE12(v250) & 7) == 0 && DWORD2(v251) == 2)
              {
                *&v249 = *(&v254 + 1) + v149;
                *(&v249 + 1) = length[0] + v147;
                v138 = CMPhotoDNGCompressLineASM(&v248, v146);
                v154 = HIDWORD(v250);
                v147 = DWORD2(v249) - LODWORD(length[0]);
                HIDWORD(length[1]) = DWORD2(v249) - LODWORD(length[0]);
              }

              else if (SHIDWORD(v250) >= 1)
              {
                v156 = 0;
                v157 = *(&v254 + 1) + v149;
                do
                {
                  v158 = (v157 + 2 * v156);
                  LODWORD(v251) = (*v158 >> v81) & 0xFFF;
                  v159 = OUTLINED_FUNCTION_17_10(v138, v139, v140, v141, v142, v143, v144, v145, v187, v190, v193, v196, pixelBuffera, v203, allocator, v209, v212, v215, v218, v221, v224, v227, v230, pixelFormatType, BytesPerPixelForPixelFormat, v242, v245, v248);
                  DWORD1(v251) = (v158[1] >> v81) & 0xFFF;
                  v138 = OUTLINED_FUNCTION_17_10(v159, v160, v161, v162, v163, v164, v165, v166, v189, v192, v195, v198, pixelBufferc, v205, allocatorb, v211, v214, v217, v220, v223, v226, v229, v232, pixelFormatTypeb, v240, v244, v247, v248);
                  v154 = HIDWORD(v250);
                  v156 += 2;
                }

                while (v156 < SHIDWORD(v250));
                v147 = HIDWORD(length[1]);
              }

              if (LODWORD(length[1]) - v147 < 4 * v154)
              {
                CFDataAppendBytes(a3, length[0], v147);
                v147 = 0;
                HIDWORD(length[1]) = 0;
              }

              ++v148;
            }

            while (v148 < v255);
          }

          while ((BYTE8(v250) & 7) != 0)
          {
            _encodeWriteSymbol(&v248, 0x101u);
          }

          v54 = v80;
          if (SDWORD2(v250) <= 63)
          {
            HIBYTE(v167) = BYTE7(v250);
            do
            {
              OUTLINED_FUNCTION_2_26(SHIBYTE(v167), v187, v190, v193, v196, pixelBuffera, v203, allocator, v209, v212, v215, v218, v221, v224, v227, v230, pixelFormatType, BytesPerPixelForPixelFormat, v242, v245, v248, v249, *(&v249 + 1), v250, *(&v250 + 1), v251, *(&v251 + 1), length[0], length[1], SHIDWORD(length[1]));
              if (v168 == 255)
              {
                OUTLINED_FUNCTION_0_28();
                *(v169 + v170) = 0;
              }

              v167 = v250 << 8;
              *&v250 = v250 << 8;
              v171 = DWORD2(v250);
              DWORD2(v250) += 8;
            }

            while (v171 < 56);
          }

          OUTLINED_FUNCTION_0_28();
          *(v172 + v173) = -1;
          OUTLINED_FUNCTION_0_28();
          *(v174 + v175) = -39;
          CFDataAppendBytes(a3, length[0], SHIDWORD(length[1]));
          HIDWORD(length[1]) = 0;
        }

        v181 = CFDataGetLength(a3);
        MutableBytePtr = CFDataGetMutableBytePtr(a3);
        v48 = v245;
        v183 = bswap32(v78);
        if (!v45)
        {
          v183 = v78;
        }

        *&MutableBytePtr[4 * *(v245 + 1708) + v224] = v183;
        v184 = bswap32(v181 - v78);
        if (!v45)
        {
          v184 = v181 - v78;
        }

        *&MutableBytePtr[4 * (*(v245 + 1708))++ + v221] = v184;
        if (++v54 == HIDWORD(v227))
        {
          goto LABEL_135;
        }
      }

      v67 = v257;
      if (!v257)
      {
        if (CVPixelBufferCreate(allocator, v55, v58, pixelFormatType, 0, &v257))
        {
          goto LABEL_137;
        }

        v67 = v257;
      }

      HIDWORD(v215) = v54;
      v230 = CVPixelBufferGetBytesPerRow(v67);
      CVPixelBufferLockBaseAddress(v257, 0);
      v68 = CVPixelBufferGetBaseAddress(v257);
      v69 = v245;
      if (v61 >= *(v245 + 1700))
      {
        v70 = *(v245 + 1700);
      }

      else
      {
        v70 = v61;
      }

      if (*(v245 + 1704) < 1)
      {
LABEL_84:
        v77 = v69;
        CVPixelBufferUnlockBaseAddress(v257, 0);
        *(&v254 + 1) = v68;
        DWORD2(v255) = v230;
        v55 = *(v77 + 1700);
        v58 = *(v77 + 1704);
        v45 = HIDWORD(v209);
        goto LABEL_85;
      }

      v71 = v57;
      v72 = 0;
      v73 = v230 / BytesPerPixelForPixelFormat;
      v74 = &v218[v212 * v71 + v242 * (v56 + HIDWORD(pixelFormatType) * v58)];
      while (v72 < v59)
      {
        v75 = (*(v69 + 1700) - v70) * BytesPerPixelForPixelFormat;
        memcpy(&v68[2 * v73 * v72], v74, (v70 * BytesPerPixelForPixelFormat));
        if (v75)
        {
          v76 = v73 * v72 + v70;
LABEL_82:
          bzero(&v68[2 * v76], v75);
        }

        ++v72;
        v69 = v245;
        v74 += v242;
        if (v72 >= *(v245 + 1704))
        {
          goto LABEL_84;
        }
      }

      v75 = *(v69 + 1700) * BytesPerPixelForPixelFormat;
      v76 = v73 * v72;
      goto LABEL_82;
    }

LABEL_136:
    CVPixelBufferUnlockBaseAddress(pixelBuffera, 1uLL);
LABEL_137:
    v41 = v196;
  }

LABEL_138:
  free(v248);
  free(length[0]);
  if (v257)
  {
    CFRelease(v257);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v256)
  {
    CFRelease(v256);
  }

  return 0;
}

uint64_t _jpegXLDecompress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v7 = OUTLINED_FUNCTION_18_6(a1, a2, a3, &v13);
  if (!v13)
  {
    goto LABEL_29;
  }

  if (a6 == 1278226742 || a6 == 1815491698 || a6 == 1647589490)
  {
    v11 = v7;
    if (CMPhotoIsMatchedJxlDecodeAPI())
    {
      if (!JxlDecoderCreate())
      {
        return 4294950745;
      }

      if (JxlDecoderSubscribeEvents())
      {
        v11 = 4294950739;
        goto LABEL_27;
      }

      if (JxlDecoderSetInput())
      {
        goto LABEL_25;
      }

      if (JxlDecoderProcessInput() != 64)
      {
        goto LABEL_25;
      }

      bzero(v14, 0xCCuLL);
      if (JxlDecoderGetBasicInfo() || JxlDecoderProcessInput() != 256 || !JxlDecoderGetColorAsEncodedProfile() && JxlDecoderSetPreferredColorProfile())
      {
        goto LABEL_25;
      }

      if (a6 != 1278226742 && (OUTLINED_FUNCTION_13_14(), a6 != v10) && a6 != 1647589490 || JxlDecoderImageOutBufferSize() || JxlDecoderSetImageOutCallback())
      {
        v11 = 4294950746;
        goto LABEL_27;
      }

      if (JxlDecoderProcessInput() != 4096)
      {
LABEL_25:
        v11 = 4294950743;
      }

LABEL_27:
      JxlDecoderDestroy();
      return v11;
    }

LABEL_29:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    return FigSignalErrorAtGM();
  }

  return 4294950746;
}

uint64_t CMPhotoDetectDNGHeaderFromBytestream(uint64_t a1, char *a2, BOOL *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(a1, 512, 0, &v18, &v17);
  if (!result)
  {
    if (v17 < 0xB)
    {
      return 4294950300;
    }

    if (v18 == 77 && v19 == 77 && !v20 && v21 == 42)
    {
      LODWORD(v10) = bswap32(v22);
    }

    else
    {
      v11 = 0;
      v10 = 0;
      if (v18 != 73 || v19 != 73 || v20 != 42)
      {
        v12 = 0;
        goto LABEL_38;
      }

      v12 = 0;
      if (v21)
      {
        goto LABEL_38;
      }

      LODWORD(v10) = v22;
    }

    result = 0;
    if (v10 >= 8)
    {
      v10 = v10;
      if ((v10 & 1) == 0)
      {
        if (v17 > v10 + 2 && (v18 != 77 ? (v13 = v10) : (v13 = v10 + 1), v18 == 77 ? (v14 = v10) : (v14 = v10 + 1), v15 = *(&v18 + v13) | (*(&v18 + v14) << 8), (v17 - v10 - 2) / 0xC >= v15))
        {
          if (v15)
          {
            v16 = &v18 + v10 + 3;
            do
            {
              if (v18 == 77)
              {
                if (*(v16 - 1) == 198 && *v16 == 18)
                {
                  v11 = 1;
                  goto LABEL_47;
                }
              }

              else if (*v16 == 198 && *(v16 - 1) == 18)
              {
                v11 = 0;
LABEL_47:
                v12 = 1;
LABEL_38:
                if (a2)
                {
                  *a2 = v12;
                }

                if (a3)
                {
                  *a3 = v11;
                }

                result = 0;
                if (a4)
                {
                  *a4 = v10;
                }

                return result;
              }

              LODWORD(v15) = v15 - 1;
              v16 += 12;
            }

            while (v15);
          }

          v12 = 0;
        }

        else
        {
          v12 = 1;
        }

        v11 = v18 == 77;
        goto LABEL_38;
      }
    }
  }

  return result;
}

void ___compressAllTiles_block_invoke_2(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v193 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E480];
  if (!*(a1 + 168))
  {
    goto LABEL_48;
  }

  v5 = (*(a1 + 32) + 8 * a2);
  v6 = *v5;
  if (!*v5)
  {
    *(*(a1 + 40) + 8) = CVPixelBufferCreate(*MEMORY[0x1E695E480], *(*(a1 + 48) + 1700), *(*(a1 + 48) + 1704), *(a1 + 152), 0, v5);
    if (*(v3 + 156))
    {
      return;
    }

    v6 = *(*(v3 + 32) + 8 * v2);
  }

  v7 = *(v3 + 88);
  v171 = *(v3 + 80);
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v10 = *(v8 + 1700);
  v11 = *(v8 + 1704);
  v12 = *(v3 + 72);
  v165 = *(v3 + 64);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v9);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
  if (v10 < v7)
  {
    v7 = v10;
  }

  v14 = OUTLINED_FUNCTION_14_0();
  v16 = CVPixelBufferLockBaseAddress(v14, v15);
  if (v16)
  {
    *(*(v3 + 40) + 8) = v16;
    return;
  }

  v162 = v10;
  v17 = CVPixelBufferLockBaseAddress(v9, 1uLL);
  if (v17)
  {
    v32 = v17;
    goto LABEL_45;
  }

  v18 = PixelFormatType == 1111970369 || PixelFormatType == 1815491698;
  if (v18)
  {
    v160 = v12;
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v6);
    v21 = CVPixelBufferGetBaseAddress(v9);
    v22 = CVPixelBufferGetBytesPerRow(v9);
    if (v11 < 1)
    {
      v32 = 0;
      goto LABEL_44;
    }

    v158 = v2;
    pixelBuffer = v9;
    v23 = v7;
    v24 = 0;
    v25 = 0;
    v26 = v22;
    v27 = BytesPerPixelForPixelFormat * v23;
    v28 = BytesPerPixelForPixelFormat * (v162 - v23);
    v29 = &v21[v160 * v22 + BytesPerPixelForPixelFormat * v165];
    while (1)
    {
      v30 = &BaseAddress[v24];
      if (v25 >= v171)
      {
        break;
      }

      memcpy(v30, v29, v27);
      if (v28)
      {
        v30 = &BaseAddress[v27 + v24];
        v31 = v28;
LABEL_20:
        bzero(v30, v31);
      }

      ++v25;
      v24 += BytesPerRow;
      v29 += v26;
      if (v11 == v25)
      {
        goto LABEL_22;
      }
    }

    v31 = v162 * BytesPerPixelForPixelFormat;
    goto LABEL_20;
  }

  if (PixelFormatType != 1751527984)
  {
    v32 = -16558;
    goto LABEL_44;
  }

  v157 = v7;
  v161 = v12;
  v33 = OUTLINED_FUNCTION_14_0();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v33, v34);
  v156 = CVPixelBufferGetBaseAddressOfPlane(v6, 1uLL);
  v36 = OUTLINED_FUNCTION_14_0();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v36, v37);
  v39 = OUTLINED_FUNCTION_14_0();
  LODWORD(v168) = CVPixelBufferGetBytesPerRowOfPlane(v39, v40);
  v41 = v9;
  v42 = CVPixelBufferGetBaseAddressOfPlane(v9, 0);
  v43 = OUTLINED_FUNCTION_22();
  v155 = CVPixelBufferGetBaseAddressOfPlane(v43, v44);
  v45 = CVPixelBufferGetBytesPerRowOfPlane(v41, 0);
  pixelBuffer = v41;
  v46 = OUTLINED_FUNCTION_22();
  v48 = CVPixelBufferGetBytesPerRowOfPlane(v46, v47);
  if (v11 < 1)
  {
    v32 = 0;
    goto LABEL_23;
  }

  v154 = v48;
  v158 = v2;
  v49 = 0;
  v50 = 0;
  v51 = v45;
  v52 = BytesPerPixelForPixelFormat * v157;
  v53 = BytesPerPixelForPixelFormat * (v162 - v157);
  v166 = BytesPerPixelForPixelFormat * v165;
  v54 = &v42[v166 + v161 * v51];
  do
  {
    v55 = &BaseAddressOfPlane[v49];
    if (v50 >= v171)
    {
      v56 = v162 * BytesPerPixelForPixelFormat;
    }

    else
    {
      memcpy(v55, v54, v52);
      if (!v53)
      {
        goto LABEL_32;
      }

      v55 = &BaseAddressOfPlane[v52 + v49];
      v56 = BytesPerPixelForPixelFormat * (v162 - v157);
    }

    bzero(v55, v56);
LABEL_32:
    ++v50;
    v49 += BytesPerRowOfPlane;
    v54 += v51;
  }

  while (v11 != v50);
  if (v11 != 1)
  {
    v57 = 0;
    v58 = 0;
    v59 = &v155[v166 + (v161 >> 1) * v154];
    while (1)
    {
      v60 = &v156[v57];
      if (v171 >> 1 <= v58)
      {
        break;
      }

      memcpy(v60, v59, v52);
      if (v53)
      {
        v60 = &v156[v52 + v57];
        v61 = BytesPerPixelForPixelFormat * (v162 - v157);
LABEL_39:
        bzero(v60, v61);
      }

      ++v58;
      v57 += LODWORD(v168);
      v59 += v154;
      if (v11 >> 1 == v58)
      {
        goto LABEL_22;
      }
    }

    v61 = v162 * BytesPerPixelForPixelFormat;
    goto LABEL_39;
  }

LABEL_22:
  v32 = 0;
  v3 = a1;
  v2 = v158;
  v4 = MEMORY[0x1E695E480];
LABEL_23:
  v9 = pixelBuffer;
LABEL_44:
  CVPixelBufferUnlockBaseAddress(v9, 0);
LABEL_45:
  v62 = OUTLINED_FUNCTION_14_0();
  CVPixelBufferUnlockBaseAddress(v62, v63);
  *(*(v3 + 40) + 8) = v32;
  if (v32)
  {
    return;
  }

  if (*(v3 + 168))
  {
    v64 = 0;
    v65 = 0;
    v66 = (*(v3 + 32) + 8 * v2);
    goto LABEL_49;
  }

LABEL_48:
  v66 = (v3 + 56);
  v65 = *(v3 + 64);
  v64 = *(v3 + 72);
LABEL_49:
  v67 = *v66;
  if (*(v3 + 160) < 2)
  {
    Mutable = *(v3 + 96);
  }

  else
  {
    Mutable = CFDataCreateMutable(*v4, 0);
    **(v3 + 40) = Mutable;
    v69 = *(v3 + 40);
    if (!*v69)
    {
      *(v69 + 8) = -16551;
      return;
    }
  }

  v170 = Mutable;
  v70 = MEMORY[0x1E695FF58];
  if (!*(v3 + 169))
  {
LABEL_86:
    v104 = CVPixelBufferLockBaseAddress(v67, 1uLL);
    v105 = *(v3 + 40);
    *(v105 + 8) = v104;
    if (v104)
    {
      return;
    }

    PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v67, v65, v64, (v105 + 12), v105 + 16, v105 + 32, v105 + 48);
    *(*(v3 + 40) + 8) = PixelBufferDataPointers;
    if (PixelBufferDataPointers)
    {
      goto LABEL_157;
    }

    OUTLINED_FUNCTION_9_1();
    if (v18)
    {
      OUTLINED_FUNCTION_4();
    }

    v107 = *(v3 + 48);
    v173 = v67;
    v108 = CVPixelBufferGetPixelFormatType(v67);
    v109 = v3;
    v110 = *(v3 + 40);
    v111 = *(v110 + 12);
    v112 = (v110 + 32);
    v114 = *(v109 + 136);
    v113 = *(v109 + 144);
    v115 = *(v107 + 12);
    if ((v115 - 2) >= 2)
    {
      if (v115 != 1)
      {
        if (v115 != 5)
        {
          v116 = -16552;
LABEL_95:
          v117 = a1;
          v67 = v173;
          goto LABEL_154;
        }

        v118 = CMPhotoDNGJPEGXLCompressData(v114, v113, v108, *(v110 + 16), *(v110 + 32), *(v107 + 16), *(v107 + 20), *(v107 + 24), *(v107 + 1676), 0, v170);
LABEL_160:
        v116 = v118;
        goto LABEL_95;
      }

      if (v111 != 1 || !*(v110 + 16))
      {
        v116 = -16550;
        goto LABEL_95;
      }

      v67 = v173;
      if (*v112)
      {
        if (v108 == 24)
        {
          v2 = 0;
          LODWORD(v168) = 0;
          v129 = 1;
          v70 = 2;
          v130 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_13_14();
          if (v127 == v128)
          {
            OUTLINED_FUNCTION_12_17();
            v130 = 4;
          }

          else
          {
            if (v127 != 1647589490)
            {
              if (v127 == 1111970369)
              {
                v70 = 0;
                LODWORD(v168) = 0;
                v129 = 1;
                v2 = 2;
                v130 = 4;
                goto LABEL_138;
              }

              goto LABEL_133;
            }

            OUTLINED_FUNCTION_12_17();
            v130 = 3;
          }

          v129 = 2;
        }

LABEL_138:
        Length = CFDataGetLength(v170);
        CFDataIncreaseLength(v170, 3 * v114 * v113 * v129);
        v141 = *(v110 + 16);
        MutableBytePtr = CFDataGetMutableBytePtr(v170);
        if (LODWORD(v168))
        {
          if (v113)
          {
            v143 = 0;
            v144 = &MutableBytePtr[Length];
            v145 = *v112;
            v67 = v173;
            do
            {
              v146 = v141;
              v147 = v114;
              if (v114)
              {
                do
                {
                  *v144 = bswap32(*(v146 + 2 * v2)) >> 16;
                  *(v144 + 1) = bswap32(*(v146 + 2)) >> 16;
                  v148 = v144 + 6;
                  *(v144 + 2) = bswap32(*(v146 + 2 * v70)) >> 16;
                  v146 += 2 * v130;
                  v144 += 6;
                  --v147;
                }

                while (v147);
                v144 = v148;
              }

              v141 += v145;
              ++v143;
            }

            while (v143 != v113);
LABEL_152:
            v116 = 0;
            v117 = a1;
            goto LABEL_154;
          }
        }

        else if (v113)
        {
          v149 = 0;
          v150 = &MutableBytePtr[Length];
          v67 = v173;
          do
          {
            v151 = v141;
            v152 = v114;
            if (v114)
            {
              do
              {
                *v150 = *(v151 + v2);
                v150[1] = *(v151 + 1);
                v153 = v150 + 3;
                v150[2] = *(v151 + v70);
                v151 += v130;
                v150 += 3;
                --v152;
              }

              while (v152);
              v150 = v153;
            }

            v141 += *v112;
            ++v149;
          }

          while (v149 != v113);
          goto LABEL_152;
        }

        v116 = 0;
        v117 = a1;
        v67 = v173;
LABEL_154:
        *(*(v117 + 40) + 8) = v116;
        OUTLINED_FUNCTION_9_1();
        if (v18)
        {
          OUTLINED_FUNCTION_7_18();
        }

LABEL_157:
        CVPixelBufferUnlockBaseAddress(v67, 1uLL);
        return;
      }

LABEL_133:
      v116 = -16550;
LABEL_131:
      v117 = a1;
      goto LABEL_154;
    }

    LODWORD(v180) = 0;
    v118 = CMPhotoPixelFormatToAppleJPEGFormat(v108, &v180);
    if (v118)
    {
      goto LABEL_160;
    }

    v119 = *(v107 + 12);
    v120 = v180;
    v121 = *(v107 + 156);
    v191 = 0u;
    v192 = 0u;
    v189.a = 0.0;
    *&v189.b = _aj_write;
    v189.c = 0.0;
    v189.d = 0.0;
    *&v189.tx = v170;
    v189.ty = 0.0;
    v190 = 0;
    bzero(&v187, 0x98uLL);
    if (v119 != 3 && (v122 = CMPhotoJPEGQualityControllerCopyQTablesForQuality(v121, &v191, *(v107 + 16))) != 0)
    {
      v116 = v122;
      v126 = 0;
    }

    else
    {
      LODWORD(v187.tx) = v111;
      *&v187.ty = __PAIR64__(v113, v114);
      v188 = v120;
      if (v111)
      {
        v123 = v111;
        v124 = &v187;
        do
        {
          *&v124[2].d = *v112;
          v124->a = *(v112 - 2);
          v124 = (v124 + 8);
          ++v112;
          --v123;
        }

        while (v123);
      }

      if (applejpeg_encode_create())
      {
        v67 = v173;
        if (v119 == 3)
        {
          OUTLINED_FUNCTION_10_17();
          v125 = applejpeg_encode_set_option_type_lossless();
          v126 = 0;
          if (v125)
          {
            v116 = v125;
            goto LABEL_128;
          }
        }

        else
        {
          OUTLINED_FUNCTION_10_17();
          v131 = applejpeg_encode_set_option_type_baseline();
          if (v131)
          {
            v116 = v131;
            v126 = 0;
            goto LABEL_128;
          }

          v132 = *(&v191 + 1);
          v133 = v192;
          if (*(&v191 + 1) == v192)
          {
            v134 = 128;
          }

          else
          {
            v134 = 192;
          }

          v135 = malloc_type_malloc(v134, 0xDFFF18EDuLL);
          v126 = v135;
          if (!v135)
          {
            v116 = -16991;
            v67 = v173;
            goto LABEL_128;
          }

          v136 = 0;
          v184 = v135;
          v185 = v135 + 2;
          v186 = v135 + 2;
          do
          {
            v137 = v135 + v136;
            *v137 = *(v191 + 2 * v136);
            v137[64] = *(*(&v191 + 1) + 2 * v136++);
          }

          while (v136 != 64);
          if (v132 != v133)
          {
            v138 = 0;
            v186 = v135 + 4;
            do
            {
              *(&v135[4].isa + v138) = *(v192 + 2 * v138);
              ++v138;
            }

            while (v138 != 64);
          }

          v139 = applejpeg_encode_set_option_q_tables();
          v67 = v173;
          if (v139)
          {
            goto LABEL_127;
          }
        }

        v139 = applejpeg_encode_commit_options_for_file();
        if (!v139)
        {
          v184 = 0;
          v139 = applejpeg_encode_image_all();
        }

LABEL_127:
        v116 = v139;
LABEL_128:
        applejpeg_encode_destroy();
        if (*(&v192 + 1))
        {
          free(*(&v192 + 1));
        }

        free(v126);
        goto LABEL_131;
      }

      fig_log_get_emitter();
      v116 = FigSignalErrorAtGM();
      v126 = 0;
    }

    v67 = v173;
    goto LABEL_128;
  }

  v71 = *(*(v3 + 104) + 8 * (v2 % *(v3 + 164)));
  v67 = *(*(v3 + 112) + 8 * v2);
  OUTLINED_FUNCTION_9_1();
  if (v18)
  {
    OUTLINED_FUNCTION_4();
  }

  if (*(v3 + 168))
  {
    v72 = (*(v3 + 32) + 8 * v2);
  }

  else
  {
    v72 = (v3 + 56);
  }

  v73 = *(v3 + 48);
  v74 = -16557;
  if (v71 && v67)
  {
    v75 = *v72;
    v2 = objc_autoreleasePoolPush();
    v76 = off_1ED6FA288[0]();
    v182 = off_1ED6FA290[0]();
    v183 = [MEMORY[0x1E695DFB0] null];
    v77 = -[objc_class imageWithCVPixelBuffer:options:](v76, "imageWithCVPixelBuffer:options:", v75, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1]);
    if (v77)
    {
      v78 = v77;
      v194.origin.x = OUTLINED_FUNCTION_22_0();
      if (!CGRectIsNull(v194))
      {
        CGAffineTransformMakeScale(&v189, 1.0, -1.0);
        [v78 extent];
        CGAffineTransformTranslate(&v187, &v189, 0.0, -v79);
        v195.origin.x = OUTLINED_FUNCTION_22_0();
        v196 = CGRectApplyAffineTransform(v195, v80);
        v81 = [v78 imageByCroppingToRect:{v196.origin.x, v196.origin.y, v196.size.width, v196.size.height}];
        [v81 extent];
        v83 = -v82;
        [v81 extent];
        CGAffineTransformMakeTranslation(&v187, v83, -v84);
        v78 = [v81 imageByApplyingTransform:&v187];
      }

      *&v189.a = @"inputRVector";
      *&v187.a = [(objc_class *)off_1ED6FA298() vectorWithX:*(v73 + 2156) Y:0.0 Z:0.0 W:0.0];
      *&v189.b = @"inputGVector";
      *&v187.b = [(objc_class *)off_1ED6FA298() vectorWithX:0.0 Y:*(v73 + 2160) Z:0.0 W:0.0];
      *&v189.c = @"inputBVector";
      *&v187.c = [(objc_class *)off_1ED6FA298() vectorWithX:0.0 Y:0.0 Z:*(v73 + 2164) W:0.0];
      v85 = [v78 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v187, &v189, 3)}];
      if (*(v73 + 28) && (*(v73 + 12) == 2 || *(v73 + 2128)))
      {
        v181 = 0.0;
        v180 = 0;
        v179 = 0.0;
        v178 = 0;
        v177 = 0.0;
        v176 = 0;
        v175 = 0.0;
        v174 = 0;
        if (*(v73 + 1956) < 1)
        {
          v172 = 0.0;
          v168 = 0.0;
          v164 = 0.0;
          v167 = 0.0;
          v101 = 0.0;
          v100 = 0.0;
          v99 = 0.0;
          v98 = 0.0;
          v97 = 0.0;
          v96 = 0.0;
          v95 = 0.0;
          v94 = 0.0;
        }

        else
        {
          v87 = 0;
          v88 = 1752;
          do
          {
            v89 = *(v73 + v88);
            *(&v180 + v87) = v89;
            v90 = *(v73 + v88 + 8);
            *(&v178 + v87) = v90;
            v91 = *(v73 + v88 + 24);
            v92 = *(v73 + v88 + 16);
            *(&v176 + v87) = v92;
            v93 = v91;
            *(&v174 + v87) = v93;
            *(v73 + 4 * v87++ + 1944) = 4;
            v88 += 64;
          }

          while (v87 < *(v73 + 1956));
          v94 = *&v180;
          v95 = *&v178;
          v96 = *&v176;
          v97 = *&v174;
          v98 = *(&v180 + 1);
          v99 = *(&v178 + 1);
          v100 = *(&v176 + 1);
          v101 = *(&v174 + 1);
          v164 = v181;
          v167 = v179;
          v168 = v177;
          v172 = v175;
        }

        v184 = @"inputRedCoefficients";
        *&v191 = [(objc_class *)off_1ED6FA298() vectorWithX:v94 Y:v95 Z:v96 W:v97];
        v185 = @"inputGreenCoefficients";
        *(&v191 + 1) = [(objc_class *)off_1ED6FA298() vectorWithX:v98 Y:v99 Z:v100 W:v101];
        v186 = @"inputBlueCoefficients";
        *&v192 = [(objc_class *)off_1ED6FA298() vectorWithX:v164 Y:v167 Z:v168 W:v172];
        v85 = [v85 imageByApplyingFilter:@"CIColorPolynomialInverse" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v191, &v184, 3)}];
      }

      if (*(v73 + 12) == 5)
      {
        v102 = (*(v73 + 156) - *(v73 + 136));
        if (!*(v73 + 28))
        {
          v103 = *(v73 + 36);
          if (v103 != 0.0)
          {
            v86 = log2(v103) + v102;
            v102 = v86;
          }
        }

        v178 = @"inputEV";
        *&v86 = v102;
        v180 = [MEMORY[0x1E696AD98] numberWithFloat:v86];
        v85 = [v85 imageByApplyingFilter:@"CIExposureAdjust" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v180, &v178, 1)}];
      }

      [v85 extent];
      [v71 render:v85 toCVPixelBuffer:v67 bounds:0 colorSpace:?];
      v74 = 0;
    }

    else
    {
      v74 = -16552;
    }

    objc_autoreleasePoolPop(v2);
  }

  *(*(v3 + 40) + 8) = v74;
  v70 = MEMORY[0x1E695FF58];
  OUTLINED_FUNCTION_9_1();
  if (v18)
  {
    OUTLINED_FUNCTION_7_18();
    v74 = *(*(v3 + 40) + 8);
  }

  if (!v74)
  {
    v64 = 0;
    v65 = 0;
    goto LABEL_86;
  }
}