void _getDebugMetadataCountForIndex_1(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_1_10(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    v9 = _parseDebugMetadataIfNeeded();
    if (a4)
    {
      if (!v9)
      {
        OUTLINED_FUNCTION_15_5();
        *a4 = v10;
      }
    }
  }
}

uint64_t _copyDebugMetadataForIndex_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_10(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  if (!result)
  {
    result = _parseDebugMetadataIfNeeded();
    if (!result)
    {
      if (*(v8 + 401))
      {
        if (a5)
        {
          v11 = *(v8 + 424);
          if (v11)
          {
            v12 = CFRetain(v11);
          }

          else
          {
            v12 = 0;
          }

          return OUTLINED_FUNCTION_23_1(v12);
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 4294950303;
      }
    }
  }

  return result;
}

void _getCustomMetadataCountForIndex_1(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_1_10(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    v9 = _parseCustomMetadataIfNeeded();
    if (a4)
    {
      if (!v9)
      {
        OUTLINED_FUNCTION_15_5();
        *a4 = v10;
      }
    }
  }
}

uint64_t _copyCustomMetadataForIndex_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_10(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!result)
  {
    result = _parseCustomMetadataIfNeeded();
    if (!result)
    {
      if (*(v8 + 433))
      {
        v11 = *(v8 + 456);

        return CMPhotoJFIFCopyCustomMetadataFromCFData(v11, a5);
      }

      else
      {
        return 4294950303;
      }
    }
  }

  return result;
}

uint64_t _copyImageIsRGBForIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_3();
  result = OUTLINED_FUNCTION_4_8(v5, v6);
  if (!result)
  {
    result = _parseImageSizeAndTypeIfNeeded();
    if (!result)
    {
      *v3 = *(v4 + 132);
    }
  }

  return result;
}

uint64_t _copyImageJPEGEncodingModeForIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_3();
  result = OUTLINED_FUNCTION_4_8(v5, v6);
  if (!result)
  {
    result = _parseImageSizeAndTypeIfNeeded();
    if (!result)
    {
      if (((*(v4 + 133) + 64) & 0xFC) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = (*(v4 + 133) + 64) + 1;
      }

      *v3 = v8;
    }
  }

  return result;
}

uint64_t _getThumbnailGeometryForIndex_0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v19 = a2;
  if (!a4 && !a5 && !a6)
  {
    return 0;
  }

  result = _checkImageIndex(a1 + 40, &v19, 0);
  if (result)
  {
    return result;
  }

  if (a3)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    result = _parseExifIfNeeded(a1 + 40, 0);
    if (!result)
    {
      if (!*(a1 + 320))
      {
        return 4294950306;
      }

      v13 = *(a1 + 328);
      v12 = *(a1 + 336);
      OUTLINED_FUNCTION_42();
      result = _getImageGeometryForIndex(v14, v15, v16, v17, v18, a6);
      if (!result)
      {
        if (a4)
        {
          *a4 = v13;
        }

        if (a5)
        {
          result = 0;
          *a5 = v12;
          return result;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _copyThumbnailBitDepthForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v16 = a2;
  if (!a4)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_4_8(a1, a2);
  if (v7)
  {
    return v7;
  }

  if (!a3)
  {
    v7 = _parseExifIfNeeded(a1 + 40, 0);
    if (!v7)
    {
      if (!*(a1 + 320))
      {
        return 4294950303;
      }

      CMPhotoDecompressionContainerCreateBitDepthArray(*(a1 + 40), *(a1 + 344), *(a1 + 368), &cf, v8, v9, v10, v11, cf, v16, SHIDWORD(v16), v17, v18, v19, v20, v21, v22, vars0, vars8);
      v13 = v12;
      if (v12)
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

      return v13;
    }

    return v7;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _copyAuxiliaryImageBitDepthForIndex_0(uint64_t a1, uint64_t a2, unint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v21 = a2;
  HIBYTE(v19) = 0;
  if (!a4)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_8_8(a1);
  AuxiliaryImageStorageForIndex = _checkImageIndex(v7, v8, &v19 + 3);
  if (AuxiliaryImageStorageForIndex)
  {
    return AuxiliaryImageStorageForIndex;
  }

  AuxiliaryImageStorageForIndex = _parseMPOIfNeeded(a1 + 40);
  if (AuxiliaryImageStorageForIndex)
  {
    return AuxiliaryImageStorageForIndex;
  }

  v17 = 0;
  AuxiliaryImageStorageForIndex = _getAuxiliaryImageStorageForIndex(a1 + 40, HIBYTE(v19), a3, &v17);
  if (AuxiliaryImageStorageForIndex)
  {
    return AuxiliaryImageStorageForIndex;
  }

  CMPhotoDecompressionContainerCreateBitDepthArray(*(a1 + 40), *(v17 + 16), *(v17 + 76), &cf, v10, v11, v12, v13, v17, v18, v19, cf, v21, v22, v23, v24, v25, vars0, vars8);
  v15 = v14;
  if (v14)
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

  return v15;
}

uint64_t _copyColorSpaceForIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_1();
  v13 = 0;
  v6 = OUTLINED_FUNCTION_8_8(v5);
  result = _checkImageIndex(v6, v7, &v13);
  if (!result)
  {
    result = _parseICCProfileIfNeeded(v4 + 40);
    if (!result)
    {
      if (!v13)
      {
        if (!*(v4 + 465))
        {
          return 4294950303;
        }

        v9 = CGColorSpaceCreateWithICCData(*(v4 + 472));
        if (v9)
        {
          goto LABEL_7;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        return FigSignalErrorAtGM();
      }

      v12 = 0;
      result = _getAuxiliaryImageStorageForIndex(v4 + 40, v13, 0xFFFFFFFFFFFFFF80, &v12);
      if (!result)
      {
        v10 = *(v12 + 80);
        if (v10)
        {
          v9 = CGColorSpaceCreateWithICCData(v10);
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v12 + 88);
          if (!v11)
          {
LABEL_19:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            return FigSignalErrorAtGM();
          }

          v9 = CFRetain(v11);
        }

LABEL_7:
        result = 0;
        *v3 = v9;
      }
    }
  }

  return result;
}

uint64_t _copyIPTCForIndex()
{
  OUTLINED_FUNCTION_21_3();
  v8 = v2;
  v4 = _checkImageIndex(v3 + 40, &v8, 0);
  if (v4)
  {
    return v4;
  }

  cf = 0;
  v4 = FigSimpleMutexLock();
  if (v4)
  {
    return v4;
  }

  if (*(v1 + 480))
  {
    v5 = 0;
  }

  else
  {
    *(v1 + 480) = 1;
    v5 = CMPhotoCopyIPTCFromJFIFByteStream(*(v1 + 40), *(v1 + 64), 0, (v1 + 481), &cf);
    if (!v5)
    {
      *(v1 + 488) = cf;
      cf = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v5)
  {
    if (*(v1 + 481))
    {
      if (v0)
      {
        v6 = *(v1 + 488);
        if (v6)
        {
          v6 = CFRetain(v6);
        }

        v5 = 0;
        *v0 = v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4294950303;
    }
  }

  return v5;
}

uint64_t _createOutputBufferAttributesForImageGeometry(uint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5, int a6, char a7, uint64_t a8, CFDictionaryRef *a9)
{
  __dst[19] = *MEMORY[0x1E69E9840];
  cf = 0;
  bzero(__src, 0x98uLL);
  v17 = _parseOptionsForJPEGDecoding(a1, a8, a3, a4, a2, a7, __src);
  if (v17 || (v17 = CMPhotoDecompressionSessionCopySurfacePool(*(a1 + 16), &cf), v17) || (v30 = 0u, v18 = cf, memcpy(__dst, __src, 0x98uLL), v19 = OUTLINED_FUNCTION_19_4(), v17 = _determineDecodeStrategy(v19, v20, v21, a3, a4, a5, a6, v18, 0, 0, &v30, 0, 0), v17))
  {
    v26 = v17;
  }

  else
  {
    v22 = *MEMORY[0x1E69660B8];
    __dst[0] = *MEMORY[0x1E6966208];
    __dst[1] = v22;
    __dst[2] = *MEMORY[0x1E6966020];
    values[0] = CMPhotoCFNumberCreateSize(v30.i64[0]);
    values[1] = CMPhotoCFNumberCreateSize(v30.i64[1]);
    Size = CMPhotoCFNumberCreateSize(16);
    v24 = 0;
    values[2] = Size;
    while (values[v24])
    {
      if (++v24 == 3)
      {
        v25 = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *a9 = v25;
        if (v25)
        {
          v26 = 0;
          goto LABEL_9;
        }

        break;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    v26 = FigSignalErrorAtGM();
LABEL_9:
    for (i = 0; i != 3; ++i)
    {
      v28 = values[i];
      if (v28)
      {
        CFRelease(v28);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t _transcodeAuxiliaryImageCallback(uint64_t a1, uint64_t a2, void *a3, void *a4, _DWORD *a5, void *a6, void *a7, CFDataRef *a8, void *a9)
{
  v16 = *a2;
  v17 = CFGetAllocator(*a2);
  if (*(a2 + 24))
  {
    if (a1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      return FigSignalErrorAtGM();
    }

    a1 = *(a2 + 16);
  }

  v18 = OUTLINED_FUNCTION_6_7();
  AuxiliaryImageTypeForIndex_0 = _getAuxiliaryImageTypeForIndex_0(v18, v19, v20, v21, v22, v23, v24, v25);
  if (AuxiliaryImageTypeForIndex_0)
  {
    return AuxiliaryImageTypeForIndex_0;
  }

  v27 = OUTLINED_FUNCTION_6_7();
  v32 = _copyAuxiliaryImageMetadataForIndex_0(v27, v28, v29, v30, v31);
  if (!v32 || (v33 = v32, v32 == -16993))
  {
    Mutable = CFDictionaryCreateMutable(v17, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v35 = Mutable;
    v36 = FigCFDictionarySetInt();
    if (v36)
    {
      v33 = v36;
LABEL_22:
      CFRelease(v35);
      return v33;
    }

    if (*(a2 + 25) && (AuxiliaryImageForIndex_0 = FigCFDictionarySetInt(), AuxiliaryImageForIndex_0) || (v38 = OUTLINED_FUNCTION_6_7(), AuxiliaryImageForIndex_0 = _createAuxiliaryImageForIndex_0(v38, v39, v40, v35, 2, v41, v42, v43), AuxiliaryImageForIndex_0))
    {
      v33 = AuxiliaryImageForIndex_0;
      goto LABEL_22;
    }

    if (a6)
    {
      v46 = OUTLINED_FUNCTION_6_7();
      _copyAuxiliaryImageTypeInfoForIndex_0(v46, v47, v48, v49, v50);
      if (!a8)
      {
        goto LABEL_15;
      }
    }

    else if (!a8)
    {
LABEL_15:
      if (a9)
      {
        v44 = *(v16[35] + 104 * a1 + 96);
        if (v44)
        {
          v44 = CFRetain(v44);
        }

        *a9 = v44;
      }

      *a7 = 0;
      *a3 = 0;
      *a4 = 0;
      if (a6)
      {
        *a6 = 0;
      }

      v33 = 0;
      *a5 = 0;
      goto LABEL_22;
    }

    v51 = OUTLINED_FUNCTION_6_7();
    if (!_copyAuxiliaryColorSpaceForIndex(v51, v52, v53, v54))
    {
      *a8 = CGColorSpaceCopyICCData(0);
    }

    goto LABEL_15;
  }

  return v33;
}

uint64_t _parseXMPIfNeeded()
{
  v1 = OUTLINED_FUNCTION_29_1();
  if (v1)
  {
    return v1;
  }

  if (*(v0 + 336))
  {
    XMPLocationFromJFIFByteStream = 0;
  }

  else
  {
    *(v0 + 336) = 1;
    XMPLocationFromJFIFByteStream = CMPhotoGetXMPLocationFromJFIFByteStream();
    if (!XMPLocationFromJFIFByteStream)
    {
      *(v0 + 337) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return XMPLocationFromJFIFByteStream;
}

uint64_t _parseDebugMetadataIfNeeded()
{
  v1 = OUTLINED_FUNCTION_29_1();
  if (v1)
  {
    return v1;
  }

  if (*(v0 + 360))
  {
    v2 = 0;
  }

  else
  {
    *(v0 + 360) = 1;
    v3 = OUTLINED_FUNCTION_16_3();
    v2 = CMPhotoCopyDebugMetadataFromJFIFByteStream(v3, v4, 0, (v0 + 361), (v0 + 368), (v0 + 384));
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t _parseCustomMetadataIfNeeded()
{
  v1 = OUTLINED_FUNCTION_29_1();
  if (v1)
  {
    return v1;
  }

  if (*(v0 + 392))
  {
    v2 = 0;
  }

  else
  {
    *(v0 + 392) = 1;
    v3 = OUTLINED_FUNCTION_16_3();
    v2 = CMPhotoCopyCustomMetadataFromJFIFByteStream(v3, v4, 0, (v0 + 393), (v0 + 400), (v0 + 416));
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t _createMainImageDescription(uint64_t a1, unint64_t a2, __CFDictionary **a3)
{
  v206 = 0;
  v207 = a2;
  v4 = a1 + 40;
  v3 = *(a1 + 40);
  v204 = 0;
  v205 = 0;
  value = 0;
  v203 = 0;
  v201 = 0;
  if (!a3)
  {
    v34 = 0;
    Mutable = 0;
    v31 = 4294950306;
    goto LABEL_145;
  }

  v8 = OUTLINED_FUNCTION_19_4();
  Mutable = CFDictionaryCreateMutable(v8, v9, v10, v11);
  if (!Mutable)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 4294950305;
    goto LABEL_139;
  }

  if (a2 != -1 || (v13 = OUTLINED_FUNCTION_53(), CMPhotoDecompressionContainerExternalToInternalIndex(v13, v14, -1, 0, v15, 0, 0), !v16))
  {
    *&__src[0] = 0;
    if (*(a1 + 272))
    {
      *&__src[0] = *(*(a1 + 280) + 56);
    }

    else
    {
      if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v39 = 0;
        v31 = 4294954514;
LABEL_45:
        v34 = 0;
LABEL_46:
        v33 = 0;
        v32 = 0;
        goto LABEL_137;
      }

      v35 = OUTLINED_FUNCTION_9_0();
      ImageGeometryForIndex = v36(v35);
      if (ImageGeometryForIndex)
      {
        goto LABEL_165;
      }
    }

    ImageGeometryForIndex = CMPhotoCFDictionarySetInt64(Mutable, @"DataOffset", 0);
    if (ImageGeometryForIndex)
    {
      goto LABEL_165;
    }

    if ((*&__src[0] & 0x8000000000000000) != 0)
    {
      v39 = 0;
      v31 = 4294950190;
      goto LABEL_45;
    }

    ImageGeometryForIndex = CMPhotoCFDictionarySetSize(Mutable, @"DataLength", *&__src[0]);
    if (ImageGeometryForIndex)
    {
      goto LABEL_165;
    }

    v212.width = OUTLINED_FUNCTION_14_5(*(a1 + 112));
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v212);
    if (DictionaryRepresentation)
    {
      v19 = DictionaryRepresentation;
      v199 = @"Dimensions";
      CFDictionarySetValue(Mutable, @"Dimensions", DictionaryRepresentation);
      CFRelease(v19);
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_42();
      ImageGeometryForIndex = _getImageGeometryForIndex(v20, v21, v22, v23, v24, v25);
      if (ImageGeometryForIndex)
      {
        goto LABEL_165;
      }

      v198 = @"Orientation";
      ImageGeometryForIndex = FigCFDictionarySetInt();
      if (ImageGeometryForIndex)
      {
        goto LABEL_165;
      }

      v197 = @"ItemID";
      ImageGeometryForIndex = CMPhotoCFDictionarySetInt64(Mutable, @"ItemID", 1);
      if (ImageGeometryForIndex)
      {
        goto LABEL_165;
      }

      CMPhotoDecompressionContainerCreateBitDepthArray(v3, *(a1 + 128), *(a1 + 136), &value, v26, v27, v28, v29, v124, v130, SHIDWORD(v130), v137, v144, v151, v158, v165, v170, v177, v184);
      if (ImageGeometryForIndex)
      {
        goto LABEL_165;
      }

      key = @"BitDepth";
      CFDictionarySetValue(Mutable, @"BitDepth", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (a2 != -1)
      {
        if (v207)
        {
          v30 = 1953325424;
        }

        else
        {
          v30 = 1785750887;
        }

        v193 = @"CodecType";
        ImageGeometryForIndex = CMPhotoCFDictionarySetInt32(Mutable, @"CodecType", v30);
        if (!ImageGeometryForIndex)
        {
          v16 = FigCFDictionarySetCFIndex();
          if (v16)
          {
            goto LABEL_23;
          }

          goto LABEL_47;
        }

LABEL_165:
        v31 = ImageGeometryForIndex;
        v39 = 0;
        goto LABEL_45;
      }

      v193 = @"CodecType";
      ImageGeometryForIndex = CMPhotoCFDictionarySetInt32(Mutable, @"CodecType", 1785750887);
      if (ImageGeometryForIndex)
      {
        goto LABEL_165;
      }

      v37 = *(a1 + 153);
      v38 = *(a1 + 153) ? 2 : 1;
      ImageGeometryForIndex = FigCFDictionarySetInt();
      if (ImageGeometryForIndex)
      {
        goto LABEL_165;
      }

      if (!v37)
      {
LABEL_47:
        v39 = 0;
        goto LABEL_41;
      }

      v39 = CFArrayCreateMutable(v3, v38, MEMORY[0x1E695E9C0]);
      if (v39)
      {
        cf[0] = 0;
        MainImageDescription = _createMainImageDescription(a1, 1, cf);
        if (MainImageDescription)
        {
          goto LABEL_163;
        }

        CFArrayAppendValue(v39, cf[0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }

        v41 = OUTLINED_FUNCTION_53();
        MainImageDescription = _createMainImageDescription(v41, v42, v43);
        if (MainImageDescription)
        {
          goto LABEL_163;
        }

        CFArrayAppendValue(v39, cf[0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }

        CFDictionarySetValue(Mutable, @"AlternateImages", v39);
LABEL_41:
        cf[0] = 0;
        v31 = kCMPhotoDecompressionContainerDescription_ColorSpace;
        if (!_copyColorSpaceForIndex(a1, v207, cf))
        {
          v49 = CGColorSpaceCopyName(cf[0]);
          if (v49)
          {
            v50 = v49;
            CFDictionarySetValue(Mutable, @"NamedColorSpace", v49);
            CFRelease(v50);
          }

          else
          {
            CFDictionarySetValue(Mutable, @"ColorSpace", cf[0]);
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        HIDWORD(v190) = v207 == 1;
        if (v207 != 1)
        {
          goto LABEL_70;
        }

        v210 = 0;
        v211 = 0;
        if (*(a1 + 153))
        {
          AuxiliaryImageStorageForIndex = _getAuxiliaryImageStorageForIndex(v4, 1, 0xFFFFFFFFFFFFFF80, &v210);
          if (AuxiliaryImageStorageForIndex || (AuxiliaryImageStorageForIndex = FigCFDictionarySetInt(), AuxiliaryImageStorageForIndex) || (AuxiliaryImageStorageForIndex = CMPhotoCFDictionarySetInt32(Mutable, @"DerivationGainMapPixelFormat", *(v210 + 24)), AuxiliaryImageStorageForIndex) || (ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(*(v210 + 24)), AuxiliaryImageStorageForIndex = CMPhotoCFDictionarySetInt32(Mutable, @"DerivationGainMapChromaFormat", ChromaSubsamplingFromPixelFormat), AuxiliaryImageStorageForIndex))
          {
LABEL_177:
            v31 = AuxiliaryImageStorageForIndex;
            goto LABEL_67;
          }

          v213.width = OUTLINED_FUNCTION_14_5(*v210);
          v53 = CGSizeCreateDictionaryRepresentation(v213);
          if (v53)
          {
            v54 = v53;
            CFDictionarySetValue(Mutable, @"DerivationGainMapDimension", v53);
            CFRelease(v54);
            v55 = *(v210 + 96);
            if (v55)
            {
              v56 = CFRetain(v55);
              v211 = v56;
LABEL_66:
              CFDictionarySetValue(Mutable, @"DerivationDetails", v56);
              v31 = 0;
              goto LABEL_67;
            }

            memset(__src, 0, sizeof(__src));
            if (ChromaSubsamplingFromPixelFormat == 6)
            {
              v57 = 1;
            }

            else
            {
              v57 = 3;
            }

            AuxiliaryImageStorageForIndex = CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata(*(v210 + 32), v57, __src);
            if (!AuxiliaryImageStorageForIndex)
            {
              memcpy(cf, __src, sizeof(cf));
              AuxiliaryImageStorageForIndex = CMPhotoCreateFlexRangeMetadataDictionaryFromParsedMetadata(cf, &v211);
              if (!AuxiliaryImageStorageForIndex)
              {
                v56 = v211;
                goto LABEL_66;
              }
            }

            goto LABEL_177;
          }

          v31 = 4294950305;
        }

        else
        {
          v31 = 4294950304;
        }

LABEL_67:
        if (v211)
        {
          CFRelease(v211);
        }

        if (v31)
        {
          goto LABEL_45;
        }

LABEL_70:
        if (*(a1 + 289) && (MainImageDescription = _createMetadataDescriptionArray(v3, *(a1 + 296), *(a1 + 304), &v206), MainImageDescription) || *(a1 + 377) && (MainImageDescription = _createMetadataDescriptionArray(v3, *(a1 + 384), *(a1 + 392), &v205), MainImageDescription) || *(a1 + 401) && (MainImageDescription = _createMetadataDescriptionArray(v3, *(a1 + 408), *(a1 + 416), &v204), MainImageDescription))
        {
LABEL_163:
          v31 = MainImageDescription;
          goto LABEL_45;
        }

        if (*(a1 + 433))
        {
          v34 = CFArrayCreateMutable(v3, 1, MEMORY[0x1E695E9C0]);
          if (!v34)
          {
            v33 = 0;
            v32 = 0;
            goto LABEL_173;
          }

          v63 = _copyCustomMetadataForIndex_0(a1, v207, v58, v59, &v203, v60, v61, v62);
          if (v63)
          {
            v31 = v63;
            goto LABEL_46;
          }

          CFArrayAppendValue(v34, v203);
        }

        else
        {
          v34 = 0;
        }

        v185 = v4;
        if (!*(a1 + 320))
        {
          v32 = 0;
          v91 = 2;
LABEL_91:
          capacity = 0;
          AuxiliaryImageCountForIndex_2 = _getAuxiliaryImageCountForIndex_2(a1, v207, v44, &capacity, v45, v46, v47, v48);
          if (!AuxiliaryImageCountForIndex_2)
          {
            v162 = a3;
            v169 = v39;
            if (capacity < 1)
            {
              v33 = 0;
LABEL_122:
              if (v206)
              {
                CFDictionarySetValue(Mutable, @"ExifPayloads", v206);
              }

              v39 = v169;
              if (v205)
              {
                CFDictionarySetValue(Mutable, @"XMPPayloads", v205);
              }

              if (v204)
              {
                CFDictionarySetValue(Mutable, @"DebugPayloads", v204);
              }

              if (v34)
              {
                CFDictionarySetValue(Mutable, @"CustomMetadataPayloads", v34);
              }

              if (v32)
              {
                CFDictionarySetValue(Mutable, @"ThumbnailImages", v32);
                CFArrayGetCount(v32);
              }

              v122 = FigCFDictionarySetInt();
              if (v122)
              {
                v31 = v122;
              }

              else
              {
                if (v33)
                {
                  CFDictionarySetValue(Mutable, @"AuxiliaryImages", v33);
                  CFArrayGetCount(v33);
                }

                v31 = FigCFDictionarySetInt();
                if (!v31)
                {
                  *v162 = Mutable;
                  Mutable = 0;
                }
              }
            }

            else
            {
              v92 = 0;
              v33 = 0;
              v181 = @"AuxiliaryType";
              v174 = @"AuxiliaryNativePixelFormat";
              v155 = @"AuxiliaryTypeURN";
              v148 = @"urn:com:apple:photo:2020:aux:hdrgainmap";
              v141 = @"NamedColorSpace";
              v134 = @"ColorSpace";
              while (1)
              {
                *&__src[0] = 0;
                v93 = _getAuxiliaryImageStorageForIndex(v185, SHIDWORD(v190), v92, __src);
                if (v93)
                {
LABEL_166:
                  v31 = v93;
                  goto LABEL_169;
                }

                if (!v33)
                {
                  v33 = CFArrayCreateMutable(v3, capacity, MEMORY[0x1E695E9C0]);
                  if (!v33)
                  {
                    break;
                  }
                }

                v94 = OUTLINED_FUNCTION_19_4();
                v96 = CFDictionaryCreateMutable(v94, v95, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v96)
                {
                  break;
                }

                v97 = v96;
                CFArrayAppendValue(v33, v96);
                CFRelease(v97);
                v93 = CMPhotoCFDictionarySetInt64(v97, @"DataOffset", *(*&__src[0] + 56));
                if (v93)
                {
                  goto LABEL_166;
                }

                v93 = CMPhotoCFDictionarySetSize(v97, @"DataLength", *(*&__src[0] + 64));
                if (v93)
                {
                  goto LABEL_166;
                }

                v215.width = OUTLINED_FUNCTION_14_5(**&__src[0]);
                v98 = CGSizeCreateDictionaryRepresentation(v215);
                if (!v98)
                {
                  break;
                }

                OUTLINED_FUNCTION_28_1(v98, v99, v100, v101, v102, v103, v104, v105, v125, v134, v141, v148, v155, v162, v169, v174, v181, v185, v190, v193, key, v197, v198, v199);
                CFRelease(v31);
                v93 = FigCFDictionarySetInt();
                if (v93)
                {
                  goto LABEL_166;
                }

                v93 = CMPhotoCFDictionarySetInt64(v97, v197, v91);
                if (v93)
                {
                  goto LABEL_166;
                }

                v93 = CMPhotoCFDictionarySetInt(v97, v182, *(*&__src[0] + 20));
                if (v93)
                {
                  goto LABEL_166;
                }

                v93 = CMPhotoCFDictionarySetInt32(v97, v175, *(*&__src[0] + 24));
                if (v93)
                {
                  goto LABEL_166;
                }

                v110 = *(*&__src[0] + 40);
                if (v110)
                {
                  CFDictionarySetValue(v97, v156, v110);
                  if (*(*&__src[0] + 20) == 4)
                  {
                    if (FigCFEqual())
                    {
                      v111 = OUTLINED_FUNCTION_53();
                      CMPhotoDecompressionContainerAddMeteorHeadroomToDescriptionForInternalIndex(v111, v112, v92, v97);
                    }
                  }
                }

                CMPhotoDecompressionContainerCreateBitDepthArray(v3, *(*&__src[0] + 16), *(*&__src[0] + 76), &value, v106, v107, v108, v109, v128, v135, SHIDWORD(v135), v142, v149, v156, v163, v169, v175, v182, v188);
                if (v93)
                {
                  goto LABEL_166;
                }

                CFDictionarySetValue(v97, key, value);
                v120 = value;
                if (value)
                {
                  CFRelease(value);
                  value = 0;
                }

                v93 = OUTLINED_FUNCTION_26_0(v120, v113, v114, v115, v116, v117, v118, v119, v129, v136, v143, v150, v157, v164, v169, v176, v183, v189, v192, v195);
                if (v93)
                {
                  goto LABEL_166;
                }

                cf[0] = 0;
                if (!_copyAuxiliaryColorSpaceForIndex(a1, v207, v92, cf))
                {
                  v121 = CGColorSpaceCopyName(cf[0]);
                  if (v121)
                  {
                    v31 = v121;
                    CFDictionarySetValue(v97, v141, v121);
                    CFRelease(v31);
                  }

                  else
                  {
                    CFDictionarySetValue(v97, v134, cf[0]);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }
                }

                ++v92;
                ++v91;
                if (v92 >= capacity)
                {
                  goto LABEL_122;
                }
              }

              v31 = 4294950305;
LABEL_169:
              v39 = v169;
            }

            goto LABEL_137;
          }

          goto LABEL_167;
        }

        v32 = CFArrayCreateMutable(v3, 1, MEMORY[0x1E695E9C0]);
        if (v32)
        {
          v64 = OUTLINED_FUNCTION_19_4();
          v68 = CFDictionaryCreateMutable(v64, v65, v66, v67);
          if (v68)
          {
            v69 = v68;
            CFArrayAppendValue(v32, v68);
            CFRelease(v69);
            AuxiliaryImageCountForIndex_2 = CMPhotoCFDictionarySetInt64(v69, @"DataOffset", *(a1 + 352) + *(a1 + 296));
            if (AuxiliaryImageCountForIndex_2)
            {
              goto LABEL_167;
            }

            AuxiliaryImageCountForIndex_2 = CMPhotoCFDictionarySetSize(v69, @"DataLength", *(a1 + 360));
            if (AuxiliaryImageCountForIndex_2)
            {
              goto LABEL_167;
            }

            v214.width = OUTLINED_FUNCTION_14_5(*(a1 + 328));
            v71 = CGSizeCreateDictionaryRepresentation(v214);
            if (v71)
            {
              OUTLINED_FUNCTION_28_1(v71, v72, v73, v74, v75, v76, v77, v78, v125, v131, v138, v145, v152, v159, v166, v171, v178, v4, v190, @"CodecType", @"BitDepth", @"ItemID", @"Orientation", @"Dimensions");
              CFRelease(v31);
              AuxiliaryImageCountForIndex_2 = FigCFDictionarySetInt();
              if (!AuxiliaryImageCountForIndex_2)
              {
                AuxiliaryImageCountForIndex_2 = CMPhotoCFDictionarySetInt64(v69, v197, 2);
                if (!AuxiliaryImageCountForIndex_2)
                {
                  CMPhotoDecompressionContainerCreateBitDepthArray(v3, *(a1 + 344), *(a1 + 368), &value, v79, v80, v81, v82, v126, v132, SHIDWORD(v132), v139, v146, v153, v160, v167, v172, v179, v186);
                  if (!AuxiliaryImageCountForIndex_2)
                  {
                    CFDictionarySetValue(v69, key, value);
                    v90 = value;
                    if (value)
                    {
                      CFRelease(value);
                      value = 0;
                    }

                    AuxiliaryImageCountForIndex_2 = OUTLINED_FUNCTION_26_0(v90, v83, v84, v85, v86, v87, v88, v89, v127, v133, v140, v147, v154, v161, v168, v173, v180, v187, v191, v194);
                    if (!AuxiliaryImageCountForIndex_2)
                    {
                      v91 = 3;
                      goto LABEL_91;
                    }
                  }
                }
              }

LABEL_167:
              v31 = AuxiliaryImageCountForIndex_2;
              v33 = 0;
              goto LABEL_137;
            }
          }
        }

        v33 = 0;
LABEL_173:
        v31 = 4294950305;
LABEL_137:
        if (v39)
        {
          CFRelease(v39);
        }

        goto LABEL_139;
      }
    }

    else
    {
      v39 = 0;
    }

    v31 = 4294950305;
    goto LABEL_45;
  }

LABEL_23:
  v31 = v16;
  v32 = 0;
  v33 = 0;
  v34 = 0;
LABEL_139:
  if (value)
  {
    CFRelease(value);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

LABEL_145:
  if (v206)
  {
    CFRelease(v206);
  }

  if (v205)
  {
    CFRelease(v205);
  }

  if (v204)
  {
    CFRelease(v204);
  }

  if (v203)
  {
    CFRelease(v203);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v31;
}

uint64_t _createMetadataDescriptionArray(const __CFAllocator *a1, uint64_t a2, uint64_t a3, __CFArray **a4)
{
  Mutable = CFArrayCreateMutable(a1, 1, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v9 = Mutable;
  v10 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    v13 = 4294950305;
    goto LABEL_10;
  }

  v11 = v10;
  CFArrayAppendValue(v9, v10);
  CFRelease(v11);
  v12 = CMPhotoCFDictionarySetInt64(v11, @"DataOffset", a2);
  if (v12)
  {
    v13 = v12;
    goto LABEL_10;
  }

  v13 = CMPhotoCFDictionarySetSize(v11, @"DataLength", a3);
  if (v13)
  {
LABEL_10:
    CFRelease(v9);
    return v13;
  }

  *a4 = v9;
  return v13;
}

uint64_t _checkImageIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _checkImageIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _decodeImage_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t _decodeImage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _decodeImage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL _decodeImage_cold_4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  FigCFDictionarySetValue();
  v4 = 1;
  *a3 = 1;
  OUTLINED_FUNCTION_42();
  if (!_getImageGeometryForIndex(v5, v6, v7, v8, v9, a3))
  {
    return FigCFDictionarySetInt() == 0;
  }

  return v4;
}

uint64_t _decodeImage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoDataCreateFromSampleBuffer(const __CFAllocator *a1, CMSampleBufferRef sbuf, int a3, CFDataRef *a4)
{
  v4 = 0;
  v5 = 4294950306;
  if (!sbuf || !a4)
  {
    goto LABEL_23;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (!DataBuffer)
  {
    v4 = 0;
    v5 = 4294950194;
    goto LABEL_23;
  }

  v10 = DataBuffer;
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  if (a3 || (v19 = OUTLINED_FUNCTION_53(), !CMBlockBufferIsRangeContiguous(v19, v20, DataLength)))
  {
    v12 = malloc_type_malloc(DataLength, 0x9E1B1881uLL);
    v4 = v12;
    if (!v12)
    {
      goto LABEL_25;
    }

    if (DataLength)
    {
      v13 = 0;
      v14 = DataLength;
      v15 = v12;
      while (1)
      {
        lengthAtOffsetOut.version = 0;
        dataPointerOut = 0;
        DataPointer = CMBlockBufferGetDataPointer(v10, v13, &lengthAtOffsetOut, 0, &dataPointerOut);
        if (DataPointer)
        {
          break;
        }

        if (v14 >= lengthAtOffsetOut.version)
        {
          version = lengthAtOffsetOut.version;
        }

        else
        {
          version = v14;
        }

        lengthAtOffsetOut.version = version;
        memcpy(v15, dataPointerOut, version);
        v13 += version;
        v15 += version;
        v14 -= version;
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      v5 = DataPointer;
      goto LABEL_23;
    }

LABEL_13:
    v18 = CFDataCreateWithBytesNoCopy(a1, v4, DataLength, *MEMORY[0x1E695E480]);
    if (!v18)
    {
LABEL_25:
      v5 = 4294950305;
      goto LABEL_23;
    }

    v4 = 0;
  }

  else
  {
    v29 = 0;
    dataPointerOut = 0;
    v21 = OUTLINED_FUNCTION_53();
    v25 = CMBlockBufferGetDataPointer(v21, v22, v23, 0, v24);
    if (v25)
    {
      v5 = v25;
      goto LABEL_22;
    }

    if (v29 != DataLength)
    {
      v5 = 4294950194;
      goto LABEL_22;
    }

    v26 = CFRetain(v10);
    lengthAtOffsetOut.version = 0;
    lengthAtOffsetOut.info = v26;
    memset(&lengthAtOffsetOut.retain, 0, 24);
    lengthAtOffsetOut.allocate = _cfTypeDeallocator_allocate;
    lengthAtOffsetOut.reallocate = 0;
    lengthAtOffsetOut.deallocate = _cfTypeDeallocator_deallocate;
    lengthAtOffsetOut.preferredSize = 0;
    v4 = CFAllocatorCreate(0, &lengthAtOffsetOut);
    if (!v4 || (v18 = CFDataCreateWithBytesNoCopy(a1, dataPointerOut, v29, v4)) == 0)
    {
      if (v26)
      {
        CFRelease(v26);
      }

      v5 = 4294950305;
      if (v4)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }
  }

  v5 = 0;
  *a4 = v18;
  if (v4)
  {
LABEL_21:
    CFRelease(v4);
LABEL_22:
    v4 = 0;
  }

LABEL_23:
  free(v4);
  return v5;
}

uint64_t CMPhotoCreateAV1CodecConfigFromSampleBuffer(opaqueCMSampleBuffer *a1, CFMutableDataRef *a2)
{
  Mutable = CFDataCreateMutable(0, 4);
  if (!Mutable)
  {
    return 4294950305;
  }

  v5 = Mutable;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v6 = CMPhotoReadAV1SequenceHeaderInfoFromSampleBuffer(a1, &v13);
  if (v6)
  {
LABEL_8:
    v8 = v6;
    CFRelease(v5);
    return v8;
  }

  if (HIDWORD(v16))
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  CFDataSetLength(v5, 4);
  MutableBytePtr = CFDataGetMutableBytePtr(v5);
  v8 = 0;
  *MutableBytePtr = -127;
  MutableBytePtr[1] = BYTE4(v14) | (32 * v14);
  v9 = (BYTE12(v14) << 6) | (BYTE8(v14) << 7);
  MutableBytePtr[2] = v9;
  v10 = (32 * v15) | (16 * BYTE4(v15)) | v9;
  MutableBytePtr[2] = v10;
  v11 = (8 * BYTE8(v15)) | (4 * BYTE12(v15)) | v10;
  MutableBytePtr[2] = v11;
  MutableBytePtr[2] = v11 | v16;
  MutableBytePtr[3] = 16 * BYTE4(v16);
  *a2 = v5;
  return v8;
}

uint64_t CMPhotoReadAV1SequenceHeaderInfoFromSampleBuffer(opaqueCMSampleBuffer *a1, _DWORD *a2)
{
  AV1SequenceHeaderInfo = 4294950306;
  if (a1 && a2)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a1);
    if (DataBuffer)
    {
      v5 = DataBuffer;
      OUTLINED_FUNCTION_1_11();
      DataPointer = CMBlockBufferGetDataPointer(v6, v7, v8, v9, v10);
      if (DataPointer)
      {
        return DataPointer;
      }

      else
      {
        v12 = *MEMORY[0x1E695E480];
        if (CMBlockBufferGetDataLength(v5) > 0x1F)
        {
          DataLength = 32;
        }

        else
        {
          DataLength = CMBlockBufferGetDataLength(v5);
        }

        v14 = CFDataCreateWithBytesNoCopy(v12, 0, DataLength, *MEMORY[0x1E695E498]);
        AV1SequenceHeaderInfo = CMPhotoReadAV1SequenceHeaderInfo(v14, a2);
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

    else
    {
      return 4294950303;
    }
  }

  return AV1SequenceHeaderInfo;
}

uint64_t CMPhotoReadAV1SequenceHeaderInfo(uint64_t a1, _DWORD *a2)
{
  v380 = 0;
  memset(v379, 0, sizeof(v379));
  v377 = 0;
  v378 = 0;
  HIDWORD(v376) = 0;
  v374 = 0;
  v375 = 0;
  if (a2)
  {
    *&v3 = 0x200000002;
    *(&v3 + 1) = 0x200000002;
    *a2 = v3;
    v4 = a2 + 3;
    Bits = FigByteStreamCreateWithCFData();
    if (Bits)
    {
      goto LABEL_132;
    }

    CMPhotoBitStreamReadInit(v379, v380, 0);
    for (i = &v378 + 4; ; i = &v385 + 4)
    {
      Bits = CMPhotoBitStreamReadBits(v379, 1uLL, i);
      if (Bits)
      {
        goto LABEL_132;
      }

      Bits = CMPhotoBitStreamReadBits(v379, 4uLL, &v378);
      if (Bits)
      {
        goto LABEL_132;
      }

      if (v378 != 2)
      {
        break;
      }

      v385 = 0;
      v384 = 0;
      v382 = 0;
      v383 = 0;
      v381 = 0;
      Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v385);
      if (Bits)
      {
        goto LABEL_132;
      }

      Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v384);
      if (Bits)
      {
        goto LABEL_132;
      }

      v14 = OUTLINED_FUNCTION_11_7(Bits, v7, v8, v9, v10, v11, v12, v13, v342, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v14, 1uLL, v15);
      if (Bits)
      {
        goto LABEL_132;
      }

      if (v385)
      {
        v23 = OUTLINED_FUNCTION_11_7(Bits, v16, v17, v18, v19, v20, v21, v22, v342, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v23, 3uLL, v24);
        if (Bits)
        {
          goto LABEL_132;
        }

        v32 = OUTLINED_FUNCTION_11_7(Bits, v25, v26, v27, v28, v29, v30, v31, v343, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v32, 2uLL, v33);
        if (Bits)
        {
          goto LABEL_132;
        }

        v41 = OUTLINED_FUNCTION_11_7(Bits, v34, v35, v36, v37, v38, v39, v40, v344, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v41, 3uLL, v42);
        if (Bits)
        {
          goto LABEL_132;
        }
      }

      if (v384)
      {
        Bits = CMPhotoBitStreamRead_leb128();
        if (Bits)
        {
          goto LABEL_132;
        }
      }

      Bits = CMPhotoBitStreamReadGetBitsRead(v379, &v383);
      if (Bits)
      {
        goto LABEL_132;
      }

      if ((v383 & 7) != 0)
      {
        goto LABEL_157;
      }
    }

    if (v378 != 1)
    {
      goto LABEL_157;
    }

    Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v377 + 1);
    if (Bits)
    {
      goto LABEL_132;
    }

    Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v377);
    if (Bits)
    {
      goto LABEL_132;
    }

    v50 = OUTLINED_FUNCTION_0_11(Bits, v43, v44, v45, v46, v47, v48, v49, v342, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v50, 1uLL, v51);
    if (Bits)
    {
      goto LABEL_132;
    }

    if (HIDWORD(v377))
    {
      v59 = OUTLINED_FUNCTION_0_11(Bits, v52, v53, v54, v55, v56, v57, v58, v345, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v59, 3uLL, v60);
      if (Bits)
      {
        goto LABEL_132;
      }

      v68 = OUTLINED_FUNCTION_0_11(Bits, v61, v62, v63, v64, v65, v66, v67, v346, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v68, 2uLL, v69);
      if (Bits)
      {
        goto LABEL_132;
      }

      v77 = OUTLINED_FUNCTION_0_11(Bits, v70, v71, v72, v73, v74, v75, v76, v347, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v77, 3uLL, v78);
      if (Bits)
      {
        goto LABEL_132;
      }
    }

    if (v377)
    {
      Bits = CMPhotoBitStreamRead_leb128();
      if (Bits)
      {
        goto LABEL_132;
      }
    }

    Bits = CMPhotoBitStreamReadGetBitsRead(v379, &v374);
    if (Bits)
    {
      goto LABEL_132;
    }

    if ((v374 & 7) != 0)
    {
      goto LABEL_157;
    }

    HIDWORD(v373) = 0;
    Bits = CMPhotoBitStreamReadBits(v379, 3uLL, a2 + 4);
    if (Bits)
    {
      goto LABEL_132;
    }

    if (a2[4] > 2u)
    {
LABEL_157:
      v334 = 4294950194;
      goto LABEL_133;
    }

    v86 = OUTLINED_FUNCTION_0_11(Bits, v79, v80, v81, v82, v83, v84, v85, v345, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v86, 1uLL, v87);
    if (Bits || (Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v373 + 1), Bits))
    {
LABEL_132:
      v334 = Bits;
      goto LABEL_133;
    }

    LODWORD(v373) = 0;
    v372 = 0;
    HIDWORD(v371) = 0;
    if (!HIDWORD(v373))
    {
      Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v373);
      if (Bits)
      {
        goto LABEL_132;
      }

      if (v373)
      {
        LODWORD(v383) = 0;
        v95 = OUTLINED_FUNCTION_0_11(Bits, v88, v89, v90, v91, v92, v93, v94, v348, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v95, 0x20uLL, v96);
        if (Bits)
        {
          goto LABEL_132;
        }

        v104 = OUTLINED_FUNCTION_0_11(Bits, v97, v98, v99, v100, v101, v102, v103, v349, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v104, 0x20uLL, v105);
        if (Bits)
        {
          goto LABEL_132;
        }

        Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v383);
        if (Bits)
        {
          goto LABEL_132;
        }

        if (v383)
        {
          Bits = CMPhotoBitStreamReadUVLC();
          if (Bits)
          {
            goto LABEL_132;
          }
        }

        Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v372 + 1);
        if (Bits)
        {
          goto LABEL_132;
        }

        if (HIDWORD(v372))
        {
          Bits = CMPhotoBitStreamReadBits(v379, 5uLL, &v371 + 1);
          if (Bits)
          {
            goto LABEL_132;
          }

          v113 = OUTLINED_FUNCTION_0_11(Bits, v106, v107, v108, v109, v110, v111, v112, v348, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
          Bits = CMPhotoBitStreamReadBits(v113, 0x20uLL, v114);
          if (Bits)
          {
            goto LABEL_132;
          }

          v122 = OUTLINED_FUNCTION_0_11(Bits, v115, v116, v117, v118, v119, v120, v121, v350, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
          Bits = CMPhotoBitStreamReadBits(v122, 5uLL, v123);
          if (Bits)
          {
            goto LABEL_132;
          }

          v131 = OUTLINED_FUNCTION_0_11(Bits, v124, v125, v126, v127, v128, v129, v130, v351, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
          Bits = CMPhotoBitStreamReadBits(v131, 5uLL, v132);
          if (Bits)
          {
            goto LABEL_132;
          }
        }
      }

      else
      {
        HIDWORD(v372) = 0;
      }

      Bits = CMPhotoBitStreamReadBits(v379, 1uLL, a2 + 13);
      if (!Bits)
      {
        Bits = CMPhotoBitStreamReadBits(v379, 5uLL, &v372);
        if (!Bits)
        {
          v140 = -1;
          while (1)
          {
            LODWORD(v383) = 0;
            v141 = OUTLINED_FUNCTION_0_11(Bits, v133, v134, v135, v136, v137, v138, v139, v348, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
            Bits = CMPhotoBitStreamReadBits(v141, 0xCuLL, v142);
            if (Bits)
            {
              break;
            }

            Bits = CMPhotoBitStreamReadBits(v379, 5uLL, &v383);
            if (Bits)
            {
              break;
            }

            v143 = v383;
            if (v140 == -1)
            {
              a2[5] = v383;
            }

            if (v143 >= 8)
            {
              v144 = OUTLINED_FUNCTION_0_11(Bits, v133, v134, v135, v136, v137, v138, v139, v348, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
              Bits = CMPhotoBitStreamReadBits(v144, 1uLL, v145);
              if (Bits)
              {
                goto LABEL_132;
              }

              if (v140 == -1)
              {
                a2[6] = HIDWORD(v376);
              }
            }

            if (HIDWORD(v372))
            {
              Bits = OUTLINED_FUNCTION_2_11(Bits, v133, v134, v135, v136, v137, v138, v139, v348, v368, v369, v370);
              if (Bits)
              {
                break;
              }

              if (v382)
              {
                v146 = OUTLINED_FUNCTION_0_11(Bits, (HIDWORD(v371) + 1), v134, v135, v136, v137, v138, v139, v348, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
                Bits = CMPhotoBitStreamReadBits(v146, v147, v148);
                if (Bits)
                {
                  break;
                }

                v155 = OUTLINED_FUNCTION_0_11(Bits, (HIDWORD(v371) + 1), v149, v150, v151, v152, v153, v154, v352, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
                Bits = CMPhotoBitStreamReadBits(v155, v156, v157);
                if (Bits)
                {
                  break;
                }

                v165 = OUTLINED_FUNCTION_0_11(Bits, v158, v159, v160, v161, v162, v163, v164, v353, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
                Bits = CMPhotoBitStreamReadBits(v165, 1uLL, v166);
                if (Bits)
                {
                  break;
                }
              }
            }

            if (a2[13])
            {
              Bits = OUTLINED_FUNCTION_2_11(Bits, v133, v134, v135, v136, v137, v138, v139, v348, v368, v369, v370);
              if (Bits)
              {
                break;
              }

              if (v382)
              {
                v167 = OUTLINED_FUNCTION_0_11(Bits, v133, v134, v135, v136, v137, v138, v139, v348, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
                Bits = CMPhotoBitStreamReadBits(v167, 4uLL, v168);
                if (Bits)
                {
                  break;
                }
              }
            }

            if (++v140 >= v372)
            {
              goto LABEL_75;
            }
          }
        }
      }

      goto LABEL_132;
    }

    v372 = 0;
    a2[13] = 0;
    a2[6] = 0;
    Bits = CMPhotoBitStreamReadBits(v379, 5uLL, a2 + 5);
    if (Bits)
    {
      goto LABEL_132;
    }

LABEL_75:
    HIDWORD(v370) = 0;
    LODWORD(v371) = 0;
    Bits = CMPhotoBitStreamReadBits(v379, 4uLL, &v371);
    if (Bits)
    {
      goto LABEL_132;
    }

    Bits = CMPhotoBitStreamReadBits(v379, 4uLL, &v370 + 1);
    if (Bits)
    {
      goto LABEL_132;
    }

    v175 = OUTLINED_FUNCTION_0_11(Bits, (v371 + 1), v169, v170, v171, v172, v173, v174, v348, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v175, v176, v177);
    if (Bits)
    {
      goto LABEL_132;
    }

    v184 = OUTLINED_FUNCTION_0_11(Bits, (HIDWORD(v370) + 1), v178, v179, v180, v181, v182, v183, v354, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v184, v185, v186);
    if (Bits)
    {
      goto LABEL_132;
    }

    LODWORD(v370) = 0;
    if (!HIDWORD(v373))
    {
      Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v370);
      if (Bits)
      {
        goto LABEL_132;
      }

      if (v370)
      {
        v194 = OUTLINED_FUNCTION_0_11(Bits, v187, v188, v189, v190, v191, v192, v193, v355, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v194, 4uLL, v195);
        if (Bits)
        {
          goto LABEL_132;
        }

        v203 = OUTLINED_FUNCTION_0_11(Bits, v196, v197, v198, v199, v200, v201, v202, v356, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v203, 3uLL, v204);
        if (Bits)
        {
          goto LABEL_132;
        }
      }
    }

    v205 = OUTLINED_FUNCTION_0_11(Bits, v187, v188, v189, v190, v191, v192, v193, v355, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v205, 1uLL, v206);
    if (Bits)
    {
      goto LABEL_132;
    }

    v214 = OUTLINED_FUNCTION_0_11(Bits, v207, v208, v209, v210, v211, v212, v213, v357, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v214, 1uLL, v215);
    if (Bits)
    {
      goto LABEL_132;
    }

    v223 = OUTLINED_FUNCTION_0_11(Bits, v216, v217, v218, v219, v220, v221, v222, v358, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v223, 1uLL, v224);
    if (Bits)
    {
      goto LABEL_132;
    }

    v369 = 0;
    if (HIDWORD(v373))
    {
      LODWORD(v369) = 2;
      goto LABEL_107;
    }

    v232 = OUTLINED_FUNCTION_0_11(Bits, v225, v226, v227, v228, v229, v230, v231, v359, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v232, 1uLL, v233);
    if (Bits)
    {
      goto LABEL_132;
    }

    v241 = OUTLINED_FUNCTION_0_11(Bits, v234, v235, v236, v237, v238, v239, v240, v360, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v241, 1uLL, v242);
    if (Bits)
    {
      goto LABEL_132;
    }

    v250 = OUTLINED_FUNCTION_0_11(Bits, v243, v244, v245, v246, v247, v248, v249, v361, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v250, 1uLL, v251);
    if (Bits)
    {
      goto LABEL_132;
    }

    v259 = OUTLINED_FUNCTION_0_11(Bits, v252, v253, v254, v255, v256, v257, v258, v362, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v259, 1uLL, v260);
    if (Bits)
    {
      goto LABEL_132;
    }

    Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v369 + 1);
    if (Bits)
    {
      goto LABEL_132;
    }

    if (HIDWORD(v369))
    {
      v268 = OUTLINED_FUNCTION_0_11(Bits, v261, v262, v263, v264, v265, v266, v267, v359, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v268, 1uLL, v269);
      if (Bits)
      {
        goto LABEL_132;
      }

      v277 = OUTLINED_FUNCTION_0_11(Bits, v270, v271, v272, v273, v274, v275, v276, v363, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v277, 1uLL, v278);
      if (Bits)
      {
        goto LABEL_132;
      }
    }

    LODWORD(v383) = 0;
    Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v383);
    if (Bits)
    {
      goto LABEL_132;
    }

    if (v383)
    {
      LODWORD(v369) = 2;
    }

    else
    {
      Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v369);
      if (Bits)
      {
        goto LABEL_132;
      }

      if (!v369)
      {
        goto LABEL_105;
      }
    }

    Bits = OUTLINED_FUNCTION_2_11(Bits, v225, v226, v227, v228, v229, v230, v231, v359, v368, v369, v370);
    if (Bits)
    {
      goto LABEL_132;
    }

    if (!v382)
    {
      v279 = OUTLINED_FUNCTION_0_11(Bits, v225, v226, v227, v228, v229, v230, v231, v359, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v279, 1uLL, v280);
      if (Bits)
      {
        goto LABEL_132;
      }
    }

LABEL_105:
    if (HIDWORD(v369))
    {
      v281 = OUTLINED_FUNCTION_0_11(Bits, v225, v226, v227, v228, v229, v230, v231, v359, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v281, 3uLL, v282);
      if (Bits)
      {
        goto LABEL_132;
      }
    }

LABEL_107:
    v283 = OUTLINED_FUNCTION_0_11(Bits, v225, v226, v227, v228, v229, v230, v231, v359, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v283, 1uLL, v284);
    if (Bits)
    {
      goto LABEL_132;
    }

    v292 = OUTLINED_FUNCTION_0_11(Bits, v285, v286, v287, v288, v289, v290, v291, v364, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v292, 1uLL, v293);
    if (Bits)
    {
      goto LABEL_132;
    }

    v301 = OUTLINED_FUNCTION_0_11(Bits, v294, v295, v296, v297, v298, v299, v300, v365, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v301, 1uLL, v302);
    if (Bits)
    {
      goto LABEL_132;
    }

    Bits = CMPhotoBitStreamReadBits(v379, 1uLL, a2 + 7);
    if (Bits)
    {
      goto LABEL_132;
    }

    a2[8] = 0;
    v310 = a2[4];
    if (v310 == 2)
    {
      if (!a2[7])
      {
        v313 = 0;
        goto LABEL_119;
      }

      v311 = OUTLINED_FUNCTION_12_7(Bits, v303, v304, v305, v306, v307, v308, v309, v366, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v311, v312, a2 + 8);
      if (Bits)
      {
        goto LABEL_132;
      }

      v313 = a2[8] != 0;
      v310 = a2[4];
    }

    else
    {
      v313 = 0;
    }

    if (v310 == 1)
    {
      a2[9] = 0;
      goto LABEL_120;
    }

LABEL_119:
    Bits = CMPhotoBitStreamReadBits(v379, 1uLL, a2 + 9);
    if (Bits)
    {
      goto LABEL_132;
    }

LABEL_120:
    HIDWORD(v368) = 0;
    Bits = CMPhotoBitStreamReadBits(v379, 1uLL, &v368 + 1);
    if (Bits)
    {
      goto LABEL_132;
    }

    if (HIDWORD(v368))
    {
      Bits = CMPhotoBitStreamReadBits(v379, 8uLL, a2 + 1);
      if (Bits)
      {
        goto LABEL_132;
      }

      Bits = CMPhotoBitStreamReadBits(v379, 8uLL, a2 + 2);
      if (Bits)
      {
        goto LABEL_132;
      }

      Bits = CMPhotoBitStreamReadBits(v379, 8uLL, v4);
      if (Bits)
      {
        goto LABEL_132;
      }
    }

    else
    {
      *(a2 + 1) = 0x200000002;
      *v4 = 2;
    }

    a2[12] = 0;
    if (a2[9])
    {
      v321 = OUTLINED_FUNCTION_12_7(Bits, v314, v315, v316, v317, v318, v319, v320, v366, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
      Bits = CMPhotoBitStreamReadBits(v321, v322, a2);
      if (Bits)
      {
        goto LABEL_132;
      }

      *(a2 + 5) = 0x100000001;
      goto LABEL_130;
    }

    if (a2[1] == 1 && a2[2] == 13 && !*v4)
    {
      *a2 = 1;
      *(a2 + 5) = 0;
      goto LABEL_130;
    }

    v336 = OUTLINED_FUNCTION_12_7(Bits, v314, v315, v316, v317, v318, v319, v320, v366, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
    Bits = CMPhotoBitStreamReadBits(v336, v337, a2);
    if (Bits)
    {
      goto LABEL_132;
    }

    v338 = a2[4];
    if (v338)
    {
      if (v338 == 1)
      {
        *(a2 + 5) = 0;
        goto LABEL_130;
      }

      if (v313)
      {
        Bits = CMPhotoBitStreamReadBits(v379, 1uLL, a2 + 10);
        if (Bits)
        {
          goto LABEL_132;
        }

        if (!a2[10])
        {
          a2[11] = 0;
          goto LABEL_130;
        }

        Bits = CMPhotoBitStreamReadBits(v379, 1uLL, a2 + 11);
        if (Bits)
        {
          goto LABEL_132;
        }

        if (!a2[10])
        {
          goto LABEL_130;
        }

LABEL_152:
        if (a2[11])
        {
          v340 = OUTLINED_FUNCTION_12_7(Bits, v314, v315, v316, v317, v318, v319, v320, v366, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
          Bits = CMPhotoBitStreamReadBits(v340, v341, a2 + 12);
          if (Bits)
          {
            goto LABEL_132;
          }
        }

LABEL_130:
        v323 = OUTLINED_FUNCTION_0_11(Bits, v314, v315, v316, v317, v318, v319, v320, v366, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
        Bits = CMPhotoBitStreamReadBits(v323, 1uLL, v324);
        if (!Bits)
        {
          v332 = OUTLINED_FUNCTION_0_11(Bits, v325, v326, v327, v328, v329, v330, v331, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379[0]);
          Bits = CMPhotoBitStreamReadBits(v332, 1uLL, v333);
        }

        goto LABEL_132;
      }

      v339 = 0;
    }

    else
    {
      v339 = 1;
    }

    a2[10] = 1;
    a2[11] = v339;
    goto LABEL_152;
  }

  v334 = 4294950306;
LABEL_133:
  if (v380)
  {
    CFRelease(v380);
  }

  return v334;
}

uint64_t CMPhotoCopyImageBitDepthFromFormatDescription(const opaqueCMFormatDescription *a1, CFMutableArrayRef *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v5 = Mutable;
  v6 = OUTLINED_FUNCTION_53();
  InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(v6, v7, 0, 0, 0, v8, v9, v10, 0, 0, 0, 0);
  if (InfoFromFormatDescription || (CMFormatDescriptionGetMediaSubType(a1), InfoFromFormatDescription = FigCFArrayAppendInt(), InfoFromFormatDescription))
  {
    v12 = InfoFromFormatDescription;
LABEL_8:
    CFRelease(v5);
    return v12;
  }

  v12 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

  *a2 = v5;
  return v12;
}

uint64_t CMPhotoSampleBufferCreateFromSource_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoSampleBufferCreateFromSource_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionCreate(const __CFAllocator *a1, const __CFDictionary *a2, void *a3)
{
  v27 = -1;
  if (!a3)
  {
    return 4294950306;
  }

  v3 = a3;
  FigKTraceInit();
  pthread_once(&CMPhotoCompressionSessionGetTypeID_onceToken, RegisterCMPhotoCompressionSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294950305;
  }

  v7 = Instance;
  *(Instance + 24) = 0;
  v8 = (Instance + 24);
  *(Instance + 32) = 0;
  v9 = (Instance + 32);
  *(Instance + 40) = 0;
  v10 = (Instance + 40);
  *(Instance + 64) = 0;
  v11 = (Instance + 64);
  *(Instance + 488) = 0;
  *(Instance + 492) = 0;
  *(Instance + 48) = 0;
  *(Instance + 56) = 0;
  LODWORD(keys) = 0;
  getpid();
  v7[65] = proc_can_use_foreground_hw() == 1;
  if (a2)
  {
    v25 = v3;
    Value = CFDictionaryGetValue(a2, @"SurfacePool");
    if (Value)
    {
      v13 = Value;
      v14 = CFGetTypeID(Value);
      if (v14 == CMPhotoSurfacePoolGetTypeID() || v13 == @"SurfacePoolOneShot")
      {
        *v8 = CFRetain(v13);
      }
    }

    v16 = CFDictionaryGetValue(a2, @"Scaler");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CMPhotoScaleAndRotateSessionGetTypeID())
      {
        *v9 = CFRetain(v17);
      }
    }

    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (*v11)
    {
      CMPhotoCFDictionaryGetInt64IfPresent();
    }

    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    a2 = 0;
    v3 = v25;
    if (*v11)
    {
      if (v27 != -1)
      {
        Mutable = CFDictionaryCreateMutable(a1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        a2 = Mutable;
        if (!Mutable)
        {
          v21 = 0;
LABEL_36:
          v23 = 4294950305;
          goto LABEL_38;
        }

        v20 = CMPhotoCFDictionarySetInt64(Mutable, @"IdleTimeoutMilliseconds", v27);
        if (v20 || (v20 = CMPhotoCodecSessionPoolCreate(a1, a2, v10), v20))
        {
          v23 = v20;
          v21 = 0;
          goto LABEL_38;
        }
      }
    }
  }

  if (!*v8)
  {
LABEL_24:
    v21 = 0;
    goto LABEL_27;
  }

  if (*v9)
  {
    CMPhotoScaleAndRotateSessionGetSurfacePool(*v9);
    FigCFEqual();
    goto LABEL_24;
  }

  keys = @"SurfacePool";
  v21 = CFDictionaryCreate(a1, &keys, v8, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v21)
  {
    goto LABEL_36;
  }

  v22 = CMPhotoScaleAndRotateSessionCreate(a1, v21, v9);
  if (!v22)
  {
LABEL_27:
    v23 = 0;
    *v3 = v7;
    if (!a2)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = v22;
LABEL_38:
  CFRelease(v7);
  if (a2)
  {
LABEL_28:
    CFRelease(a2);
  }

LABEL_29:
  if (v21)
  {
    CFRelease(v21);
  }

  return v23;
}

uint64_t CMPhotoCompressionSessionOpenEmptyContainer(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16))
  {
    return 4294950195;
  }

  if (!*(a1 + 72) || (result = CMPhotoCompressionSessionCloseContainer(a1), !result))
  {
    v4 = CMPhotoCompressionSessionVTableHEIF;
    *(a1 + 80) = CMPhotoCompressionSessionVTableHEIF;
    if (a2)
    {
      if (CMPhotoCFDictionaryGetIntIfPresent())
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
        return FigSignalErrorAtGM();
      }

      v4 = *(a1 + 80);
    }

    if (v4)
    {
      if (!*v4)
      {
        return 4294950302;
      }

      result = (*v4)(a1, a2);
      if (!result)
      {
        *(a1 + 72) = 1;
      }

      return result;
    }

    return 4294950195;
  }

  return result;
}

uint64_t CMPhotoCompressionSessionCloseContainer(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    return 4294950195;
  }

  v1 = *(a1 + 80);
  *(a1 + 72) = 0;
  if (!v1)
  {
    return 4294950195;
  }

  v2 = *(v1 + 24);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 4294950302;
  }
}

uint64_t CMPhotoCompressionSessionOpenExistingContainer()
{
  OUTLINED_FUNCTION_6_9();
  v4 = v3;
  cf = 0;
  v7 = _copyByteStreamAndSetVTableFromExistingContainer(v3, v5, v6, &cf, 0);
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v8 = *(v4 + 80);
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v10 = v9(v4, v2, cf, v1, v0);
        if (!v10)
        {
          *(v4 + 72) = 1;
        }
      }

      else
      {
        v10 = 4294950302;
      }
    }

    else
    {
      v10 = 4294950195;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _copyByteStreamAndSetVTableFromExistingContainer(uint64_t a1, uint64_t a2, CFTypeRef cf, CFTypeRef *a4, int *a5)
{
  v20 = 0;
  cfa = 0;
  v19 = 0;
  if (!a1)
  {
    goto LABEL_28;
  }

  if (*(a1 + 16))
  {
    v17 = 4294950195;
    goto LABEL_23;
  }

  if (!cf)
  {
LABEL_28:
    v17 = 4294950306;
    goto LABEL_23;
  }

  if (*(a1 + 72))
  {
    v13 = CMPhotoCompressionSessionCloseContainer(a1);
    if (v13)
    {
      goto LABEL_30;
    }
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFURLGetTypeID())
  {
    CMPhotoCFDictionaryGetIntIfPresent();
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v11 = CFGetTypeID(cf);
  if (v11 != IOSurfaceGetTypeID())
  {
    goto LABEL_9;
  }

  CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BackingIOSurfaceSourceSize", &v20);
  v12 = v20;
LABEL_10:
  v13 = CMPhotoByteStreamCreateFromSource(cf, v12, 0, 0, &cfa, 0);
  if (v13 || (v13 = CMPhotoImageContainerFormatDetectFromBytestream(cfa, 1, &v19), v13))
  {
LABEL_30:
    v17 = v13;
    goto LABEL_23;
  }

  v14 = v19;
  switch(v19)
  {
    case 3:
      v15 = (a1 + 80);
      v16 = CMPhotoCompressionSessionVTableDICOM;
      goto LABEL_18;
    case 1:
      v15 = (a1 + 80);
      v16 = CMPhotoCompressionSessionVTableJFIF;
      goto LABEL_18;
    case 0:
      v15 = (a1 + 80);
      v16 = CMPhotoCompressionSessionVTableHEIF;
LABEL_18:
      *v15 = v16;
      break;
  }

  if (a4)
  {
    *a4 = cfa;
    cfa = 0;
  }

  v17 = 0;
  if (a5)
  {
    *a5 = v14;
  }

LABEL_23:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v17;
}

uint64_t CMPhotoCompressionSessionOpenExistingContainerForModificationF(uint64_t a1, uint64_t a2, const void *a3)
{
  v10 = 0;
  cf = 0;
  v4 = _copyByteStreamAndSetVTableFromExistingContainer(a1, a2, a3, &cf, &v10);
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      if (*(v5 + 16))
      {
        OUTLINED_FUNCTION_11_8();
        v7 = v6();
        if (!v7)
        {
          *(a1 + 72) = 1;
        }
      }

      else
      {
        v7 = 4294950302;
      }
    }

    else
    {
      v7 = 4294950195;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t CMPhotoCompressionSessionCloseContainerAndCopyBacking(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16))
  {
    return 4294950195;
  }

  if (!*(a1 + 72))
  {
    return 4294950195;
  }

  v1 = *(a1 + 80);
  *(a1 + 72) = 0;
  if (!v1)
  {
    return 4294950195;
  }

  v2 = *(v1 + 32);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 4294950302;
  }
}

uint64_t CMPhotoCompressionSessionAddImage(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_7_8();
  result = _verifyMainImageOptions(v2, v3, v4);
  if (!result)
  {
    if (*(v1 + 72))
    {
      v6 = *(v1 + 80);
      if (!v6)
      {
        return 4294950195;
      }

      if (*(v6 + 48))
      {
        v7 = OUTLINED_FUNCTION_1_12();

        return v8(v7);
      }

      return 4294950302;
    }

    if (!off_1ED6F9A50[0])
    {
      return 4294950302;
    }

    v9 = OUTLINED_FUNCTION_1_12();

    return v10(v9);
  }

  return result;
}

uint64_t CMPhotoCompressionSessionAddImageAsync(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_6_9();
  v2 = v1;
  result = _verifyMainImageOptions(v1, v3, v4);
  if (!result)
  {
    if (*(v2 + 72))
    {
      v6 = *(v2 + 80);
      if (!v6)
      {
        return 4294950195;
      }

      if (*(v6 + 216))
      {
        v7 = OUTLINED_FUNCTION_5_10();

        return v8(v7);
      }

      return 4294950302;
    }

    if (!off_1ED6F9AF8)
    {
      return 4294950302;
    }

    v9 = OUTLINED_FUNCTION_5_10();

    return v10(v9);
  }

  return result;
}

uint64_t CMPhotoCompressionSessionAddCompressedImage(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    Value = CFDictionaryGetValue(v2, @"DryRun");
    if (!v1 || Value)
    {
LABEL_17:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();

      return FigSignalErrorAtGM();
    }
  }

  else if (!v1)
  {
    goto LABEL_17;
  }

  if (*(v3 + 16))
  {
    return 4294950195;
  }

  if (!*(v3 + 72))
  {
    return 4294950195;
  }

  v6 = *(v3 + 80);
  if (!v6)
  {
    return 4294950195;
  }

  if (!*(v6 + 72))
  {
    return 4294950302;
  }

  v7 = OUTLINED_FUNCTION_1_12();

  return v8(v7);
}

uint64_t CMPhotoCompressionSessionAddCompressedThumbnail(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_7_8();
  if (v4)
  {
    Value = CFDictionaryGetValue(v2, @"DryRun");
    if (!v1 || Value)
    {
LABEL_17:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7();

      return FigSignalErrorAtGM();
    }
  }

  else if (!v1)
  {
    goto LABEL_17;
  }

  if (*(v3 + 16))
  {
    return 4294950195;
  }

  if (!*(v3 + 72))
  {
    return 4294950195;
  }

  v6 = *(v3 + 80);
  if (!v6)
  {
    return 4294950195;
  }

  if (!*(v6 + 80))
  {
    return 4294950302;
  }

  v7 = OUTLINED_FUNCTION_1_12();

  return v8(v7);
}

void CMPhotoCompressionSessionAddCompressedAuxiliaryImage(uint64_t a1, int a2, int a3, int a4, int a5, int a6, CFDictionaryRef theDict, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"DryRun");
    if ((a8 != 0) == (Value == 0))
    {
      if (Value)
      {
        v14 = CFGetTypeID(Value);
        if (v14 != CMFormatDescriptionGetTypeID())
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_12();
          goto LABEL_22;
        }

        if (*(a1 + 16))
        {
LABEL_30:
          OUTLINED_FUNCTION_105();
          return;
        }

        goto LABEL_11;
      }

LABEL_9:
      if (*(a1 + 16) || !*(a1 + 72))
      {
        goto LABEL_30;
      }

LABEL_11:
      if ((a3 - 1) < 5 && (a3 == 4 || !theDict || !CFDictionaryContainsKey(theDict, @"AuxiliaryImageCustomTypeURN")))
      {
        if (*(a1 + 72))
        {
          v15 = *(a1 + 80);
          if (v15 && *(v15 + 88))
          {
            OUTLINED_FUNCTION_2_12();
            OUTLINED_FUNCTION_105();

            __asm { BRAA            X9, X16 }
          }
        }

        else if (off_1ED6F9A78[0])
        {
          OUTLINED_FUNCTION_2_12();
          OUTLINED_FUNCTION_105();

          __asm { BRAA            X8, X16 }
        }

        goto LABEL_30;
      }
    }
  }

  else if (a8)
  {
    goto LABEL_9;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_14_1();
LABEL_22:
  OUTLINED_FUNCTION_105();

  FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionAddCompressedMovie(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 72))
  {
    v3 = *(a1 + 80);
    if (!v3)
    {
      return 4294950195;
    }

    v4 = *(v3 + 96);
    if (v4)
    {
      return v4();
    }
  }

  else if (off_1ED6F9A80[0])
  {
    return (off_1ED6F9A80[0])(a1, a2, a3);
  }

  return 4294950302;
}

uint64_t CMPhotoCompressionSessionAddThumbnail(uint64_t a1)
{
  if (!a1)
  {
    v8 = 4294950306;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_6_9();
  v4 = _verifyThumbnailOptions(a1, v2, v3);
  if (v4)
  {
    goto LABEL_10;
  }

  if (!*(a1 + 72))
  {
    if (off_1ED6F9A58)
    {
      v9 = OUTLINED_FUNCTION_13_7();
      v4 = v10(v9);
      goto LABEL_10;
    }

LABEL_11:
    v8 = 4294950302;
    goto LABEL_12;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    if (*(v5 + 56))
    {
      v6 = OUTLINED_FUNCTION_13_7();
      v4 = v7(v6);
LABEL_10:
      v8 = v4;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = 4294950195;
LABEL_12:
  _cleanupSequenceContainerIfNeeded(v8, a1);
  return v8;
}

uint64_t CMPhotoCompressionSessionAddThumbnailAsync(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_6_9();
  v2 = v1;
  result = _verifyThumbnailOptions(v1, v3, v4);
  if (!result)
  {
    if (*(v2 + 72))
    {
      v6 = *(v2 + 80);
      if (!v6)
      {
        return 4294950195;
      }

      if (*(v6 + 232))
      {
        v7 = OUTLINED_FUNCTION_5_10();

        return v8(v7);
      }

      return 4294950302;
    }

    if (!off_1ED6F9B08)
    {
      return 4294950302;
    }

    v9 = OUTLINED_FUNCTION_5_10();

    return v10(v9);
  }

  return result;
}

void CMPhotoCompressionSessionAddAuxiliaryImage(uint64_t a1)
{
  if (!a1)
  {
    v8 = 4294950306;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_9_10();
  v5 = _verifyAuxiliaryOptions(a1, v2, v3, v4);
  if (v5)
  {
    goto LABEL_10;
  }

  if (!*(a1 + 72))
  {
    if (off_1ED6F9A60)
    {
      OUTLINED_FUNCTION_2_12();
      OUTLINED_FUNCTION_11_8();
      v5 = v9();
      goto LABEL_10;
    }

LABEL_11:
    v8 = 4294950302;
    goto LABEL_12;
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    if (*(v6 + 64))
    {
      OUTLINED_FUNCTION_2_12();
      OUTLINED_FUNCTION_11_8();
      v5 = v7();
LABEL_10:
      v8 = v5;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = 4294950195;
LABEL_12:
  _cleanupSequenceContainerIfNeeded(v8, a1);
  OUTLINED_FUNCTION_15_6();
}

uint64_t _verifyAuxiliaryOptions(uint64_t a1, int a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (!theDict)
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, @"DryRun");
  if ((a4 != 0) != (Value == 0))
  {
    goto LABEL_14;
  }

  if (!Value)
  {
LABEL_8:
    if (*(a1 + 16) || !*(a1 + 72))
    {
      return 4294950195;
    }

    goto LABEL_10;
  }

  v9 = CFGetTypeID(Value);
  if (v9 == CMFormatDescriptionGetTypeID())
  {
    if (*(a1 + 16))
    {
      return 4294950195;
    }

LABEL_10:
    if ((a2 - 1) < 5)
    {
      result = 0;
      if (a2 == 4)
      {
        return result;
      }

      if (!theDict)
      {
        return result;
      }

      result = CFDictionaryContainsKey(theDict, @"AuxiliaryImageCustomTypeURN");
      if (!result)
      {
        return result;
      }
    }
  }

LABEL_14:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionAddAuxiliaryImageMetadata(uint64_t a1, int a2, int a3, int a4, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (cf && (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();

    return FigSignalErrorAtGM();
  }

  else if (!*(a1 + 16) && *(a1 + 72) && (v7 = *(a1 + 80)) != 0)
  {
    if (*(v7 + 144))
    {
      v8 = OUTLINED_FUNCTION_1_12();

      return v9(v8);
    }

    else
    {
      return 4294950302;
    }
  }

  else
  {
    return 4294950195;
  }
}

void CMPhotoCompressionSessionAddAuxiliaryImageAsync(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_10();
    v2 = v1;
    if (!_verifyAuxiliaryOptions(v1, v3, v4, v5))
    {
      if (*(v2 + 72))
      {
        v6 = *(v2 + 80);
        if (v6 && *(v6 + 224))
        {
          OUTLINED_FUNCTION_2_12();
          OUTLINED_FUNCTION_11_8();
          OUTLINED_FUNCTION_15_6();

          __asm { BRAA            X9, X16 }
        }
      }

      else if (off_1ED6F9B00)
      {
        OUTLINED_FUNCTION_2_12();
        OUTLINED_FUNCTION_11_8();
        OUTLINED_FUNCTION_15_6();

        __asm { BRAA            X8, X16 }
      }
    }
  }

  OUTLINED_FUNCTION_15_6();
}

void CMPhotoCompressionSessionAddAuxiliaryImageFromDictionaryRepresentation(uint64_t a1, int a2, int a3, int a4, CFDictionaryRef theDict)
{
  cf = 0;
  if (!a1 || !theDict)
  {
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E696D228]);
  if (!Value || (v8 = CFGetTypeID(Value), v8 == CGImageMetadataGetTypeID()))
  {
    PixelbufferFromAuxiliaryDataDictionary = CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary(theDict, 0, &cf);
    v10 = cf;
    if (PixelbufferFromAuxiliaryDataDictionary)
    {
      if (!cf)
      {
        goto LABEL_8;
      }
    }

    else
    {
      CMPhotoCompressionSessionAddAuxiliaryImage(a1);
      v10 = cf;
      if (!cf)
      {
LABEL_8:
        OUTLINED_FUNCTION_105();
        return;
      }
    }

    CFRelease(v10);
    goto LABEL_8;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_105();

  FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionAddExif (uint64_t a1, int a2, int a3, CFDataRef theData)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16) || !*(a1 + 72))
  {
    return 4294950195;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    if (CFDataGetBytePtr(theData))
    {
      if (Length > 4)
      {
        v7 = *(a1 + 80);
        if (v7)
        {
          if (!*(v7 + 104))
          {
            return 4294950302;
          }

          v8 = OUTLINED_FUNCTION_1_12();

          return v9(v8);
        }

        return 4294950195;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_7();

  return FigSignalErrorAtGM();
}

void CMPhotoCompressionSessionAddXMP(_BYTE *cf, uint64_t a2, uint64_t a3, const __CFString *a4)
{
  if (!cf || cf[16] || !cf[72])
  {
    goto LABEL_23;
  }

  if (a4)
  {
    v6 = CFGetAllocator(cf);
    v7 = CFGetTypeID(a4);
    if (v7 == CFDataGetTypeID())
    {
      ExternalRepresentation = CFRetain(a4);
      goto LABEL_9;
    }

    if (v7 == CFStringGetTypeID())
    {
      ExternalRepresentation = CFStringCreateExternalRepresentation(v6, a4, 0x8000100u, 0);
      if (ExternalRepresentation)
      {
LABEL_9:
        Length = CFDataGetLength(ExternalRepresentation);
        if (CFDataGetBytePtr(ExternalRepresentation) && Length)
        {
          v10 = *(cf + 10);
          if (v10)
          {
            if (*(v10 + 112))
            {
              v11 = OUTLINED_FUNCTION_5_10();
              v12(v11);
              goto LABEL_14;
            }

            if (!ExternalRepresentation)
            {
LABEL_23:
              OUTLINED_FUNCTION_15_6();
              return;
            }
          }

          else if (!ExternalRepresentation)
          {
            goto LABEL_23;
          }

LABEL_22:
          CFRelease(ExternalRepresentation);
          goto LABEL_23;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        FigSignalErrorAtGM();
LABEL_14:
        if (!ExternalRepresentation)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15_6();

  FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionAddDebugMetadata(uint64_t a1, int a2, int a3, CFDataRef theData)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16) || !*(a1 + 72))
  {
    return 4294950195;
  }

  if (theData)
  {
    Length = CFDataGetLength(theData);
    if (CFDataGetBytePtr(theData))
    {
      if (Length)
      {
        v7 = *(a1 + 80);
        if (v7)
        {
          if (!*(v7 + 120))
          {
            return 4294950302;
          }

          v8 = OUTLINED_FUNCTION_1_12();

          return v9(v8);
        }

        return 4294950195;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_7();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionAddCustomMetadata(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef cf)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16) || !*(a1 + 72))
  {
    return 4294950195;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFDictionaryGetTypeID() && CFDictionaryGetCount(cf) > 1)
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = *(v9 + 128);
        if (!v10)
        {
          return 4294950302;
        }

        return v10(a1, a2, a3, cf);
      }

      return 4294950195;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionAddMetadataFromImageProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16) || !*(a1 + 72))
  {
    return 4294950195;
  }

  if (a4)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      v6 = *(v5 + 136);
      if (!v6)
      {
        return 4294950302;
      }

      return v6();
    }

    return 4294950195;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionStartImageSequence(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      if (*(a1 + 72))
      {
        *(a1 + 80) = &CMPhotoCompressionSessionVTableHEICS;
        if (&CMPhotoCompressionSessionVTableHEICS)
        {
          if (off_1EE6EF950)
          {
            (off_1EE6EF950)(a1, a2, a3);
          }
        }
      }
    }
  }

  return OUTLINED_FUNCTION_14_6();
}

uint64_t CMPhotoCompressionSessionAddImageToSequence(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && !*(a1 + 16) && *(a1 + 72))
  {
    if (a4)
    {
      Value = FigCFDictionaryGetValue();
      if ((a5 != 0) != (Value == 0))
      {
        goto LABEL_15;
      }

      if (Value)
      {
        v13 = CFGetTypeID(Value);
        if (v13 != CMFormatDescriptionGetTypeID())
        {
          goto LABEL_15;
        }
      }
    }

    else if (!a5)
    {
LABEL_15:
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return OUTLINED_FUNCTION_14_6();
    }

    v14 = *(a1 + 80);
    if (v14)
    {
      v15 = *(v14 + 160);
      if (v15)
      {
        v17 = *a3;
        v18 = *(a3 + 2);
        v15(a1, a2, &v17, a4, a5, a6);
      }
    }
  }

  return OUTLINED_FUNCTION_14_6();
}

uint64_t CMPhotoCompressionSessionEndImageSequence(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      if (*(a1 + 72))
      {
        v2 = (a1 + 80);
        v1 = *(a1 + 80);
        if (v1)
        {
          v3 = *(v1 + 168);
          if (v3)
          {
            if (!v3(a1))
            {
              *v2 = CMPhotoCompressionSessionVTableHEIF;
            }
          }
        }
      }
    }
  }

  return OUTLINED_FUNCTION_14_6();
}

uint64_t CMPhotoCompressionSessionReleaseHardwareResources(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  result = CMPhotoCodecSessionPoolFlush(*(a1 + 40), 1);
  if (!result)
  {
    result = *(a1 + 48);
    if (result)
    {

      return CMPhotoCodecSessionPoolFlush(result, 1);
    }
  }

  return result;
}

uint64_t CMPhotoCompressionSessionFlushCachedBuffers(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16))
  {
    return 4294950195;
  }

  CMPhotoScaleAndRotateSessionDiscardCaches(*(a1 + 32), a2);
  v5 = CMPhotoUsePurgeableIOSurfaces();
  v6 = *(a1 + 24);
  if (a3 || !v5)
  {
    CMPhotoSurfacePoolFlushCaches(v6, a3);
  }

  else
  {
    CMPhotoSurfacePoolMarkCachesVolatile(v6, 1);
  }

  result = *(a1 + 492);
  if (result)
  {
    JPEGDeviceInterface_closeDriverConnection(result);
    result = 0;
    *(a1 + 492) = 0;
  }

  return result;
}

uint64_t CMPhotoCompressionSessionInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (*(a1 + 16))
  {
    return 0;
  }

  CMPhotoCompressionSessionCloseContainer(a1);
  if (off_1ED6F9A48[0])
  {
    (off_1ED6F9A48[0])(a1);
  }

  if (off_1ED6F9958[0])
  {
    (off_1ED6F9958[0])(a1);
  }

  result = 0;
  *(a1 + 16) = 1;
  return result;
}

const __CFArray *CMPhotoCompressionSessionCheckForIllegalModification(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  value = 0;
  v14 = 0;
  v16[0] = @"CodecType";
  v16[1] = @"TileDimensions";
  v16[2] = @"PixelInformation";
  v16[3] = @"ColorSpace";
  result = CFDictionaryGetValue(a1, @"ImageList");
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 != CFArrayGetTypeID())
    {
      goto LABEL_21;
    }

    result = CFDictionaryGetValue(a2, @"ImageList");
    if (result)
    {
      v6 = result;
      v7 = CFGetTypeID(result);
      if (v7 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v6) < 1)
        {
LABEL_17:
          LOBYTE(result) = 1;
          return result;
        }

        v8 = 0;
LABEL_7:
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
        if (!CMPhotoCFDictionaryGetIntIfPresent())
        {
          goto LABEL_16;
        }

        v10 = CFArrayGetValueAtIndex(v4, v8);
        if (!CMPhotoCFDictionaryGetIntIfPresent())
        {
          goto LABEL_16;
        }

        if (v10)
        {
          v11 = 0;
          while (1)
          {
            v12 = v16[v11];
            ValueIfPresent = CFDictionaryGetValueIfPresent(v10, v12, &value);
            if (ValueIfPresent != CFDictionaryGetValueIfPresent(ValueAtIndex, v12, &v14) || !FigCFEqual())
            {
              break;
            }

            if (++v11 == 4)
            {
              if (++v8 < CFArrayGetCount(v6))
              {
                goto LABEL_7;
              }

              goto LABEL_17;
            }
          }

LABEL_16:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_12();
          LOBYTE(result) = FigSignalErrorAtGM();
          return result;
        }
      }

LABEL_21:
      LOBYTE(result) = 0;
    }
  }

  return result;
}

uint64_t CMPhotoCompressionSessionCreateInputForJPEGCompression(void *a1, const __CFDictionary *a2, int a3, int a4, CMVideoFormatDescriptionRef videoDesc, uint64_t a6, CVPixelBufferRef *a7)
{
  pixelBuffer = 0;
  v13 = *(MEMORY[0x1E695F050] + 16);
  v57 = *MEMORY[0x1E695F050];
  v58 = v13;
  if (a3)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
    height = Dimensions.height;
    v57 = 0;
    v58.width = Dimensions.width;
    goto LABEL_18;
  }

  ImageType = CMPhotoGetImageType(videoDesc);
  if (ImageType == 1)
  {
    v18 = CFGetAllocator(a1);
    PixelBufferWithSurface = CMPhotoCreatePixelBufferWithSurface(v18, videoDesc, 0);
    if (PixelBufferWithSurface)
    {
      goto LABEL_13;
    }

    ImageBuffer = pixelBuffer;
    goto LABEL_16;
  }

  if (ImageType != 3)
  {
    if (ImageType != 2)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
      PixelBufferWithSurface = FigSignalErrorAtGM();
      goto LABEL_13;
    }

    if (!videoDesc)
    {
      ImageBuffer = 0;
      goto LABEL_15;
    }

    ImageBuffer = videoDesc;
    goto LABEL_9;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(videoDesc);
  if (ImageBuffer)
  {
LABEL_9:
    ImageBuffer = CFRetain(ImageBuffer);
  }

LABEL_15:
  pixelBuffer = ImageBuffer;
LABEL_16:
  if (!ImageBuffer)
  {
LABEL_89:
    v20 = 4294950306;
    goto LABEL_86;
  }

  v57.x = CMPhotoGetPixelBufferCLAPAsRect(ImageBuffer);
  v57.y = v21;
  v58.width = v22;
LABEL_18:
  v58.height = height;
  if (!a2)
  {
LABEL_82:
    if (a7)
    {
      *a7 = pixelBuffer;
      pixelBuffer = 0;
    }

    v20 = 0;
    if (a6)
    {
      v53 = v58;
      *a6 = v57;
      *(a6 + 16) = v53;
    }

    goto LABEL_86;
  }

  Value = CFDictionaryGetValue(a2, @"SourceCropRect");
  if (Value)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(Value, &rect))
    {
      v24.f64[0] = rect.origin.x;
      PixelBufferWithSurface = CMPhotoApplyCropRectToRect(&v57, v24, rect.origin.y, rect.size.width, rect.size.height);
      if (PixelBufferWithSurface)
      {
LABEL_13:
        v20 = PixelBufferWithSurface;
        goto LABEL_86;
      }
    }
  }

  if (a3)
  {
    goto LABEL_82;
  }

  v25 = a1[4];
  v26 = pixelBuffer;
  rect.origin.x = 0.0;
  if (!pixelBuffer)
  {
    goto LABEL_89;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v68 = 0;
  v66 = 1;
  v67 = 1;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
  v66 = v67;
  if (IntIfPresent)
  {
    v29 = CMPhotoCFDictionaryGetIntIfPresent();
    if (v68)
    {
      if (v29)
      {
        goto LABEL_29;
      }
    }

    else if (!v29 && v67 != 1)
    {
      goto LABEL_29;
    }
  }

  else if (v68)
  {
LABEL_29:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v20 = FigSignalErrorAtGM();
    x = 0.0;
    DictionaryRepresentation = 0;
    ScaleAndRotateOptionsWithHWIfNeeded = 0;
    goto LABEL_72;
  }

  v33 = 1;
  v65 = 1;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  v64 = 0;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  v63 = 0;
  v62 = 0;
  EvenScalingModeDefault = 1;
  CMPhotoCFDictionaryGetIntIfPresent();
  v34 = v63;
  v55 = v25;
  if (v63)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    EvenScalingModeDefault = CMPhotoGetEvenScalingModeDefault(1, EvenScalingModeDefault);
    v34 = v63;
    v33 = v62 == 0;
  }

  v36 = v66;
  v35 = v67;
  v38 = v67 != 1 && v68 != 0;
  if (v67 != v66 && v38)
  {
    x = 0.0;
    DictionaryRepresentation = 0;
    ScaleAndRotateOptionsWithHWIfNeeded = 0;
    v20 = 4294950306;
    goto LABEL_72;
  }

  if (v58.width <= v58.height)
  {
    width = v58.height;
  }

  else
  {
    width = v58.width;
  }

  v40 = v34 < width;
  if (!v33)
  {
    v40 = v34 != width;
  }

  if (v34 <= 0)
  {
    v40 = 0;
  }

  if (v67 == v66 && !v40 && !v38)
  {
    ScaleAndRotateOptionsWithHWIfNeeded = 0;
    DictionaryRepresentation = 0;
LABEL_71:
    x = COERCE_DOUBLE(CFRetain(v26));
    v20 = 0;
    goto LABEL_72;
  }

  v41 = vcvtad_u64_f64(v58.width);
  v42 = vcvtad_u64_f64(v58.height);
  if (v41 <= v42)
  {
    v41 = v42;
  }

  if (v41 < v34 && v33)
  {
    goto LABEL_29;
  }

  ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, v65, HIBYTE(v64), 0, v64);
  if (!ScaleAndRotateOptionsWithHWIfNeeded)
  {
    x = 0.0;
    DictionaryRepresentation = 0;
    v20 = 4294950305;
    goto LABEL_72;
  }

  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(PixelFormatType);
  CMPhotoCFDictionarySetInt(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationPixelFormat", UncompressedPixelFormatFromCompressedPixelFormat);
  v45 = v67;
  v60 = v67;
  v46 = v35 == v36 || v38;
  if (v46)
  {
    v47 = v55;
LABEL_66:
    CMPhotoCFDictionarySetInt(ScaleAndRotateOptionsWithHWIfNeeded, @"SourceExifOrientation", v45);
    CMPhotoCFDictionarySetSize(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationMaxSideLength", v63);
    CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"ExactDimensions", 0);
    CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationEvenDimensions", EvenScalingModeDefault);
    CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"AllowMaxPixelScaleUpscale", v62);
    v69.origin = v57;
    v69.size = v58;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v69);
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(ScaleAndRotateOptionsWithHWIfNeeded, @"SourceCropRectDictionary", DictionaryRepresentation);
    }

    v49 = CMPhotoScaleAndRotateSessionTransformImage(v47, v26, ScaleAndRotateOptionsWithHWIfNeeded, &rect);
    if (!v49)
    {
      v57.x = CMPhotoGetPixelBufferCLAPAsRect(*&rect.origin.x);
      v57.y = v50;
      v58.width = v51;
      v58.height = v52;
      x = rect.origin.x;
      if (*&rect.origin.x)
      {
        v20 = 0;
        rect.origin.x = 0.0;
LABEL_75:
        CFRelease(ScaleAndRotateOptionsWithHWIfNeeded);
        goto LABEL_76;
      }

      goto LABEL_71;
    }

    v20 = v49;
    goto LABEL_96;
  }

  TransferRotationFromInputOrientationAndDesiredOrientation = CMPhotoGetTransferRotationFromInputOrientationAndDesiredOrientation(v67, v66, &v60);
  v47 = v55;
  if (!TransferRotationFromInputOrientationAndDesiredOrientation)
  {
    v45 = v60;
    goto LABEL_66;
  }

  v20 = TransferRotationFromInputOrientationAndDesiredOrientation;
  DictionaryRepresentation = 0;
LABEL_96:
  x = 0.0;
LABEL_72:
  if (*&rect.origin.x)
  {
    CFRelease(*&rect.origin.x);
  }

  if (ScaleAndRotateOptionsWithHWIfNeeded)
  {
    goto LABEL_75;
  }

LABEL_76:
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (!v20)
  {
    if (pixelBuffer)
    {
      CFRelease(pixelBuffer);
    }

    pixelBuffer = *&x;
    goto LABEL_82;
  }

LABEL_86:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v20;
}

void CMPhotoCompressionSessionClass_Finalize(void *a1)
{
  CMPhotoCompressionSessionInvalidate(a1);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CMPhotoCodecSessionPoolFlush(v4, 1);
    v4 = a1[5];
  }

  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }
}

uint64_t _verifyMainImageOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _verifyMainImageOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _verifyThumbnailOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _verifyThumbnailOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddGroupProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddGroupProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddImageHandleToGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddImageHandleToGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddGroupHandleToGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddGroupHandleToGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddTmapImageOneShot_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionAddTmapImageOneShot_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoBitStreamWriteBits(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 8);
  v7 = 64 - v6;
  if (64 - v6 < a3)
  {
    result = CMPhotoBitStreamWriteFlushBytes(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 8);
    v7 = 64 - v6;
  }

  v9 = v7 >= a3;
  v10 = v7 - a3;
  if (!v9)
  {
    return 4294950304;
  }

  result = 0;
  *a1 |= a2 << v10;
  *(a1 + 8) = v6 + a3;
  return result;
}

uint64_t CMPhotoBitStreamWriteExpGolomb(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 1;
  v3 = -1;
  v4 = v2;
  do
  {
    v3 += 2;
    v5 = v4 > 1;
    v4 >>= 1;
  }

  while (v5);
  return CMPhotoBitStreamWriteBits(a1, v2, v3);
}

uint64_t CMPhotoBitStreamWriteFlush(uint64_t a1)
{
  v2 = -*(a1 + 8) & 7;
  if (!v2 || (result = CMPhotoBitStreamWriteBits(a1, (1 << (v2 - 1)), v2), !result))
  {

    return CMPhotoBitStreamWriteFlushBytes(a1);
  }

  return result;
}

uint64_t CMPhotoBitStreamReadBytes(void *a1, uint64_t a2, unsigned int *a3)
{
  v11 = 0;
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(v7, a2, v6, a3, &v11);
  if (!result)
  {
    v10 = v11;
    a1[5] += v11;
    a1[2] += 8 * v10;
    if (a2 == 2)
    {
      result = 0;
      *a3 = bswap32(*a3) >> 16;
    }

    else
    {
      result = 0;
      if (a2 == 4)
      {
        *a3 = bswap32(*a3);
      }
    }
  }

  return result;
}

uint64_t CMPhotoBitStreamReadVariableLengthEntry()
{
  OUTLINED_FUNCTION_69();
  v9 = 0;
  v8 = 0;
  v3 = *(v2 + 40);
  while (1)
  {
    v4 = v1[4];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v5)
    {
      break;
    }

    result = v5(v4, 1, v3, &v9, &v8);
    if (result)
    {
      return result;
    }

    v7 = v8;
    v3 = v1[5] + v8;
    v1[5] = v3;
    v1[2] += 8 * v7;
    LODWORD(v7) = v9;
    *v0 += v9;
    if (v7 != 255)
    {
      return 0;
    }
  }

  return 4294954514;
}

uint64_t CMPhotoBitStreamReadBits(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 > 0x20)
  {
    return 4294950190;
  }

  v28[7] = v3;
  v28[8] = v4;
  *(a1 + 16) += a2;
  v8 = *(a1 + 4);
  if (v8 > 0x17 || v8 >= a2)
  {
    if (a2)
    {
LABEL_29:
      result = 0;
      *a3 = *a1 >> -a2;
      v25 = *(a1 + 4) - a2;
      *a1 <<= a2;
      *(a1 + 4) = v25;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a1 + 40);
    while (1)
    {
      v28[0] = 0;
      v27 = 0;
      v12 = *(a1 + 32);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v13)
      {
        return 4294954514;
      }

      result = v13(v12, 1, v11, &v27, v28);
      if (result)
      {
        return result;
      }

      v14 = v27;
      if (*(a1 + 24))
      {
        v15 = *(a1 + 8);
        if (v15 == 2 && v27 == 3)
        {
          v26 = 0;
          v18 = *(a1 + 32);
          v17 = *(a1 + 40);
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v19)
          {
            return 4294954514;
          }

          result = v19(v18, 1, v17, &v27, &v26);
          if (result)
          {
            return result;
          }

          v15 = 0;
          *(a1 + 40) += v26;
          v14 = v27;
        }

        if (v14)
        {
          v20 = 0;
        }

        else
        {
          v20 = v15 + 1;
        }

        *(a1 + 8) = v20;
      }

      v11 = *(a1 + 40) + v28[0];
      *(a1 + 40) = v11;
      v21 = *(a1 + 4);
      v22 = (v14 << (24 - v21)) | *a1;
      v23 = (v21 + 8);
      *a1 = v22;
      *(a1 + 4) = v23;
      if (v23 > 0x17 || v23 >= a2)
      {
        goto LABEL_29;
      }
    }
  }

  return result;
}

uint64_t CMPhotoBitStreamReadUVLC()
{
  OUTLINED_FUNCTION_69();
  v5 = 0;
  result = CMPhotoBitStreamReadBits(v2, 1uLL, &v5);
  if (!result)
  {
    v4 = 0;
    while (!v5)
    {
      ++v4;
      v5 = 0;
      result = CMPhotoBitStreamReadBits(v1, 1uLL, &v5);
      if (result)
      {
        return result;
      }
    }

    v6 = 0;
    if (v4 >= 0x20)
    {
      v6 = -1;
    }

    result = CMPhotoBitStreamReadBits(v1, v4, &v6);
    if (!result)
    {
      *v0 = v6 + ~(-1 << v4);
    }
  }

  return result;
}

uint64_t CMPhotoBitStreamRead_leb128()
{
  OUTLINED_FUNCTION_69();
  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = v3;
    v7 = 0;
    result = CMPhotoBitStreamReadBits(v1, 8uLL, &v7);
    if (result)
    {
      break;
    }

    v3 = v4 | ((v7 & 0x7F) << v2);
    if ((v7 & 0x80) != 0)
    {
      v6 = v2 == 49;
      v2 += 7;
      if (!v6)
      {
        continue;
      }
    }

    if (HIDWORD(v4))
    {
      result = 4294950194;
    }

    else
    {
      result = 0;
    }

    *v0 = v3;
    return result;
  }

  return result;
}

uint64_t CMPhotoBitStreamWriteFlushBytes_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t CMPhotoCacheCreate(const __CFAllocator *a1, CFIndex a2, void *a3)
{
  result = 4294950306;
  if (a2 >= 1 && a3)
  {
    pthread_once(&CMPhotoCacheGetTypeID_onceToken, RegisterCMPhotoCache);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      v9 = FigSimpleMutexCreate();
      v8[2] = v9;
      if (v9)
      {
        v8[5] = 0;
        v8[6] = v8 + 5;
        Mutable = CFDictionaryCreateMutable(a1, a2, MEMORY[0x1E695E9D8], 0);
        v8[4] = Mutable;
        if (Mutable)
        {
          result = 0;
          v8[3] = a2;
          *a3 = v8;
          return result;
        }
      }

      CFRelease(v8);
    }

    return 4294950305;
  }

  return result;
}

uint64_t CMPhotoCacheAddItemForKey(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  result = FigSimpleMutexLock();
  if (result)
  {
    return result;
  }

  Count = CFDictionaryGetCount(*(a1 + 32));
  v8 = OUTLINED_FUNCTION_0_12();
  v10 = CFDictionaryContainsKey(v8, v9);
  if (Count == *(a1 + 24) && v10 == 0)
  {
    v18 = *(a1 + 40);
    CFDictionaryRemoveValue(*(a1 + 32), *v18);
    v19 = *(v18 + 8);
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = (v20 + 24);
    if (!v20)
    {
      v22 = (a1 + 48);
    }

    *v22 = v21;
    *v21 = v20;
    free(v18);
  }

  else if (v10)
  {
    v12 = OUTLINED_FUNCTION_0_12();
    Value = CFDictionaryGetValue(v12, v13);
    v15 = Value[2];
    v16 = Value[3];
    v17 = (a1 + 48);
    if (v15)
    {
      v17 = (v15 + 24);
    }

    *v17 = v16;
    *v16 = v15;
    goto LABEL_21;
  }

  v23 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040F8A157B5uLL);
  if (!v23)
  {
    return 4294950305;
  }

  Value = v23;
  *v23 = a2;
  if (a3)
  {
    v24 = CFRetain(a3);
  }

  else
  {
    v24 = 0;
  }

  Value[1] = v24;
  v25 = OUTLINED_FUNCTION_0_12();
  CFDictionarySetValue(v25, v26, Value);
LABEL_21:
  Value[2] = 0;
  v27 = *(a1 + 48);
  Value[3] = v27;
  *v27 = Value;
  *(a1 + 48) = Value + 2;

  return FigSimpleMutexUnlock();
}

uint64_t CMPhotoCacheGetItemForKey(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (FigSimpleMutexLock())
    {
      return 0;
    }

    else
    {
      v2 = OUTLINED_FUNCTION_0_12();
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v5 = Value[1];
        v6 = Value + 2;
        v7 = Value[2];
        v8 = Value[3];
        v9 = (v1 + 48);
        if (v7)
        {
          v9 = (v7 + 24);
        }

        *v9 = v8;
        *v8 = v7;
        *v6 = 0;
        v10 = *(v1 + 48);
        Value[3] = v10;
        *v10 = Value;
        *(v1 + 48) = v6;
      }

      else
      {
        v5 = 0;
      }

      if (FigSimpleMutexUnlock())
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t CMPhotoCacheRemoveAllItems(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  result = FigSimpleMutexLock();
  if (!result)
  {
    CFDictionaryRemoveAllValues(*(a1 + 32));
    v3 = *(a1 + 40);
    if (v3)
    {
      do
      {
        v4 = v3[1];
        v5 = v3[2];
        v6 = v5;
        if (v4)
        {
          CFRelease(v4);
          v6 = v3[2];
        }

        v7 = v3[3];
        v8 = v6 + 3;
        if (!v6)
        {
          v8 = (a1 + 48);
        }

        *v8 = v7;
        *v7 = v6;
        free(v3);
        v3 = v5;
      }

      while (v5);
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void CMPhotoCacheClass_Finalize(uint64_t a1)
{
  CMPhotoCacheRemoveAllItems(a1);
  FigSimpleMutexDestroy();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t CMPhotoCreateIntegerPixelBufferFromFullPrecisionSource(__CVBuffer *a1, const void *a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7, uint64_t a8, __CVBuffer **a9, void *a10)
{
  v10 = 0;
  pixelBuffer = 0;
  v11 = 4294950306;
  if (!a1)
  {
    goto LABEL_132;
  }

  LODWORD(v12) = a9;
  if (!a9)
  {
    goto LABEL_132;
  }

  v17 = a1;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v19 = PixelFormatType == 1278226534 || PixelFormatType == 1380410945;
  if (!v19 && PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
  {
    v10 = 0;
    v11 = 4294950301;
    goto LABEL_132;
  }

  v80 = a2;
  Width = CVPixelBufferGetWidth(v17);
  Height = CVPixelBufferGetHeight(v17);
  v24 = CVPixelBufferLockBaseAddress(v17, 1uLL);
  if (v24)
  {
    v11 = v24;
    v10 = 0;
    goto LABEL_132;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(v17);
  BaseAddress = CVPixelBufferGetBaseAddress(v17);
  v84 = dispatch_queue_create("com.apple.coremedia.auximage", MEMORY[0x1E69E96A8]);
  if (v84)
  {
    OUTLINED_FUNCTION_71();
    v28 = v27 + 248;
    if (a4 <= 8)
    {
      v28 = v27;
    }

    v29 = v27 + 254;
    if (a4 <= 0xA)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    v12 = *a9;
    v83 = v17;
    if (!*a9)
    {
      v82 = 1;
LABEL_25:
      v86 = v30;
      v81 = (v30 - 1278226736) & 0xFFFFFF0C;
      v31 = v81 == 0;
      v32 = malloc_type_calloc(1uLL, 0x50uLL, 0x10100403B4AD1A7uLL);
      v10 = v32;
      if (!v32)
      {
        OUTLINED_FUNCTION_25_2();
        v11 = 4294950305;
        goto LABEL_139;
      }

      *(v32 + 2) = Height;
      if (Height)
      {
        v33 = 1.1755e-38;
        v34 = 3.4028e38;
        v35 = BaseAddress;
        do
        {
          if (Width)
          {
            for (i = 0; i != Width; ++i)
            {
              v37 = v35[i];
              if (a6)
              {
                v38 = LODWORD(v35[i]) == a7;
              }

              else
              {
                v38 = 0;
              }

              v39 = v38;
              if (v33 > v37)
              {
                v40 = 1;
              }

              else
              {
                v40 = v39;
              }

              if (!v40)
              {
                v33 = v35[i];
              }

              if (v34 < v37)
              {
                v39 = 1;
              }

              if (!v39)
              {
                v34 = v35[i];
              }
            }
          }

          OUTLINED_FUNCTION_15_7();
        }

        while (!v19);
      }

      else
      {
        v34 = 3.4028e38;
        v33 = 1.1755e-38;
      }

      *(v10 + 17) = v34;
      *(v10 + 18) = v33;
      *(v10 + 13) = a7;
      v10[48] = a6;
      *(v10 + 3) = Width;
      *(v10 + 4) = BytesPerRow;
      *v10 = BaseAddress;
      v41 = a5;
      v10[76] = a5;
      if (a6)
      {
        v42 = -2;
      }

      else
      {
        v42 = -1;
      }

      v10[77] = v31;
      if (!v12)
      {
        OUTLINED_FUNCTION_5_11();
        v47 = OUTLINED_FUNCTION_3_11(v80, v86, Width, Height, v43, v44, v45, v46, v77, v78, v79);
        if (v47)
        {
LABEL_135:
          v11 = v47;
          OUTLINED_FUNCTION_25_2();
LABEL_139:
          v17 = v83;
LABEL_140:
          v74 = v84;
          v75 = v82;
          goto LABEL_122;
        }

        v12 = pixelBuffer;
      }

      v47 = CVPixelBufferLockBaseAddress(v12, 0);
      if (!v47)
      {
        v48 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v49 = CVPixelBufferGetBaseAddress(pixelBuffer);
        *(v10 + 17) = fminf(v34, 3.4028e38);
        *(v10 + 18) = fmaxf(v33, 1.1755e-38);
        *(v10 + 1) = v49;
        *(v10 + 5) = v48;
        *(v10 + 14) = (v42 + (1 << a4) + 1);
        *(v10 + 15) = (v42 + (1 << a4));
        *(v10 + 16) = v86;
        v10[76] = a5;
        v10[77] = v31;
        v50 = *v10;
        OUTLINED_FUNCTION_71();
        if (v51 == v52)
        {
          v53 = *(v10 + 2);
          if (a5)
          {
            v17 = v83;
            if (v53)
            {
              v54 = *(v10 + 3);
              do
              {
                if (v54)
                {
                  v55 = 0;
                  do
                  {
                    if (!v10[48] || *(v10 + 13) != *(v50 + 4 * v55))
                    {
                      OUTLINED_FUNCTION_6_10();
                    }

                    OUTLINED_FUNCTION_21_4(v55);
                  }

                  while (!v56);
                }

                OUTLINED_FUNCTION_11_9();
              }

              while (!v56);
            }
          }

          else
          {
            v17 = v83;
            if (v53)
            {
              v58 = *(v10 + 3);
              do
              {
                if (v58)
                {
                  v59 = 0;
                  do
                  {
                    v60 = *(v50 + 4 * v59);
                    if (!v10[48] || *(v10 + 13) != LODWORD(v60))
                    {
                      OUTLINED_FUNCTION_8_9(v60);
                    }

                    OUTLINED_FUNCTION_21_4(v59);
                  }

                  while (!v56);
                }

                OUTLINED_FUNCTION_11_9();
              }

              while (!v56);
            }
          }
        }

        else
        {
          if (v81)
          {
            v57 = 0;
          }

          else
          {
            v57 = 16 - CMPhotoGetBitDepthForPixelFormat(v86);
            v41 = v10[76];
          }

          v17 = v83;
          v61 = *(v10 + 2);
          if (v41)
          {
            if (v61)
            {
              v62 = *(v10 + 3);
              do
              {
                if (v62)
                {
                  v63 = 0;
                  v64 = v10[48];
                  do
                  {
                    if (v64 && *(v10 + 13) == *(v50 + 4 * v63))
                    {
                      v65 = *(v10 + 14);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_6_10();
                      v65 = llroundf(v66);
                    }

                    v49[v63++] = v65 << v57;
                  }

                  while (v62 != v63);
                }

                OUTLINED_FUNCTION_17_5();
              }

              while (!v19);
            }
          }

          else if (v61)
          {
            v67 = *(v10 + 3);
            do
            {
              if (v67)
              {
                v68 = 0;
                v69 = v10[48];
                do
                {
                  v70 = *(v50 + 4 * v68);
                  if (v69 && *(v10 + 13) == LODWORD(v70))
                  {
                    v71 = *(v10 + 14);
                  }

                  else
                  {
                    v71 = llroundf(OUTLINED_FUNCTION_8_9(v70));
                  }

                  v49[v68++] = v71 << v57;
                }

                while (v67 != v68);
              }

              OUTLINED_FUNCTION_17_5();
            }

            while (!v19);
          }
        }

        Height = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Height)
        {
          v72 = FigCFDictionarySetFloat();
          if (!v72)
          {
            v72 = FigCFDictionarySetFloat();
            if (!v72)
            {
              v72 = FigCFDictionarySetInt16();
              if (!v72)
              {
                v72 = FigCFDictionarySetInt16();
                if (!v72)
                {
                  if (!a6 || (v72 = FigCFDictionarySetInt16(), !v72) && (v72 = FigCFDictionarySetInt32(), !v72))
                  {
                    v72 = FigCFDictionarySetInt();
                    if (!v72)
                    {
                      v73 = FigCFDictionarySetInt();
                      v74 = v84;
                      v75 = v82;
                      if (v73)
                      {
                        v11 = v73;
                        LODWORD(v12) = 1;
                      }

                      else
                      {
                        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
                        CMPhotoPropagateColorPropertiesFromSourceBuffer(v17, pixelBuffer);
                        *a9 = pixelBuffer;
                        pixelBuffer = 0;
                        LODWORD(v12) = 0;
                        v11 = 0;
                        if (a10)
                        {
                          *a10 = Height;
                          Height = 0;
                        }
                      }

                      goto LABEL_122;
                    }
                  }
                }
              }
            }
          }

          v11 = v72;
        }

        else
        {
          v11 = 4294950305;
        }

        LODWORD(v12) = 1;
        goto LABEL_140;
      }

      goto LABEL_135;
    }

    pixelBuffer = *a9;
    if (_isPixelBufferValid(v12, v30, Width, Height))
    {
      v82 = 0;
      goto LABEL_25;
    }

    v10 = 0;
    v75 = 0;
    OUTLINED_FUNCTION_25_2();
    v11 = 4294950306;
  }

  else
  {
    v10 = 0;
    OUTLINED_FUNCTION_25_2();
    v11 = 4294950194;
    v75 = 1;
  }

  v74 = v84;
LABEL_122:
  CVPixelBufferUnlockBaseAddress(v17, 1uLL);
  if (v12 && pixelBuffer)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  if (v75 && pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (Height)
  {
    CFRelease(Height);
  }

  if (v74)
  {
    dispatch_release(v74);
  }

LABEL_132:
  free(v10);
  return v11;
}

size_t CMPhotoCreateCompressionCompatiblePixelBufferWithAuxType(CVPixelBufferRef pixelBuffer, const void *a2, int a3, unsigned int a4, const __CFNumber *a5, int a6, CFTypeRef *a7, void *a8)
{
  v114 = 0;
  v112 = 0;
  cf = 0;
  Width = 4294950306;
  v9 = 1;
  if (!pixelBuffer)
  {
    goto LABEL_192;
  }

  v10 = a7;
  if (!a7 || (a4 - 17) < 0xF7u || !a8)
  {
    goto LABEL_192;
  }

  v16 = *a7;
  if (*a7)
  {
    cf = *a7;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v18 = 1278226736;
    if (a4 <= 8)
    {
      v18 = 1278226488;
    }

    if (a4 <= 0xA)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1278226742;
    }

    v9 = 0;
    if (!_isPixelBufferValid(v16, v19, Width, Height))
    {
      goto LABEL_81;
    }
  }

  else
  {
    v9 = 1;
  }

  v111 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v21 = PixelFormatType;
  v107 = a8;
  pixelBuffera = pixelBuffer;
  if (a5)
  {
    v22 = PixelFormatType == 825306677 || PixelFormatType == 825437747;
    if (v22)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_23();
    if (!v22)
    {
      OUTLINED_FUNCTION_23();
      if (v22)
      {
        goto LABEL_36;
      }

      if (v21 != 1380410945 && v21 != 1717855600 && v21 != 1717856627)
      {
        if (v21 != 1751410032 && v21 != 1932996149 && v21 != 1751411059)
        {
          v94 = 0;
LABEL_38:
          v27 = 1;
          goto LABEL_42;
        }

LABEL_36:
        LOWORD(valuePtr) = 0;
        if (!CFNumberGetValue(a5, kCFNumberSInt16Type, &valuePtr))
        {
          goto LABEL_81;
        }

        v94 = valuePtr;
        v111 = valuePtr;
        goto LABEL_38;
      }
    }

    if (!CFNumberGetValue(a5, kCFNumberSInt32Type, &v111))
    {
      goto LABEL_81;
    }

    v27 = 1;
    v94 = v111;
  }

  else
  {
    v94 = 0;
    v27 = 0;
  }

LABEL_42:
  OUTLINED_FUNCTION_23();
  if (v22 || v21 == 1751411059 || v21 == 1751410032)
  {
    v31 = 2143289344;
    AlphaFromMainBuffer = CMPhotoCreateFullPrecisionPixelBufferFromHalfPrecisionSource(pixelBuffera, a2, v27, v94, 2143289344, &v114);
    if (AlphaFromMainBuffer)
    {
      goto LABEL_204;
    }

    pixelBuffera = v114;
    v32 = CVPixelBufferGetPixelFormatType(v114);
    v111 = 2143289344;
  }

  else
  {
    v31 = v94;
    v32 = v21;
  }

  if (v32 == 825306677 || v32 == 825437747 || v32 == 1932996149)
  {
    valuePtr = 0;
    if (pixelBuffera)
    {
      v35 = CVPixelBufferGetWidth(pixelBuffera);
      v36 = CVPixelBufferGetHeight(pixelBuffera);
      OUTLINED_FUNCTION_71();
      v38 = v37 + 248;
      if (a4 <= 8)
      {
        v38 = v37;
      }

      v39 = v37 + 254;
      v106 = a4;
      BytesPerRow = a4 <= 0xA ? v38 : v39;
      v41 = cf;
      if (!cf || (valuePtr = cf, _isPixelBufferValid(cf, BytesPerRow, v35, v36)))
      {
        if (a4 == 16)
        {
          v105 = v41;
          v42 = pixelBuffera;
          v43 = CVPixelBufferGetPixelFormatType(pixelBuffera);
          *v117 = 0;
          v116 = 0;
          FixedPointDescriptionFromPixelFormat = CMPhotoGetFixedPointDescriptionFromPixelFormat(v43, &v117[1], v117, &v116);
          if (FixedPointDescriptionFromPixelFormat)
          {
            Width = FixedPointDescriptionFromPixelFormat;
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              BytesPerRow = Mutable;
              v46 = FigCFDictionarySetInt();
              if (!v46)
              {
                v46 = FigCFDictionarySetInt();
                if (!v46)
                {
                  v46 = FigCFDictionarySetInt();
                  if (!v46)
                  {
                    OUTLINED_FUNCTION_20_1();
                    v46 = FigCFDictionarySetInt();
                    if (!v46)
                    {
                      OUTLINED_FUNCTION_20_1();
                      v46 = FigCFDictionarySetInt();
                      if (!v46)
                      {
                        if (!a5 || (OUTLINED_FUNCTION_20_1(), v46 = FigCFDictionarySetInt16(), !v46) && (OUTLINED_FUNCTION_20_1(), v46 = FigCFDictionarySetInt16(), !v46))
                        {
                          if (!valuePtr)
                          {
                            v104 = v10;
                            v47 = CFRetain(pixelBuffera);
                            v48 = 0;
                            valuePtr = v47;
                            v49 = a6;
LABEL_170:
                            CMPhotoPropagateColorPropertiesFromSourceBuffer(v42, v47);
                            LODWORD(v41) = 0;
                            Width = 0;
                            v112 = BytesPerRow;
                            cf = valuePtr;
                            valuePtr = 0;
                            BytesPerRow = 0;
LABEL_171:
                            if (v48)
                            {
                              CVPixelBufferUnlockBaseAddress(v42, 1uLL);
                            }

                            if (valuePtr)
                            {
                              v91 = v41;
                            }

                            else
                            {
                              v91 = 0;
                            }

                            if (v91 == 1)
                            {
                              CVPixelBufferUnlockBaseAddress(valuePtr, 0);
                            }

                            v10 = v104;
                            v41 = v105;
LABEL_179:
                            if (!v41 && valuePtr)
                            {
                              CFRelease(valuePtr);
                            }

                            if (BytesPerRow)
                            {
                              CFRelease(BytesPerRow);
                            }

                            if (Width)
                            {
                              goto LABEL_192;
                            }

                            goto LABEL_185;
                          }

                          Width = 4294950302;
LABEL_200:
                          v49 = a6;
                          goto LABEL_179;
                        }
                      }
                    }
                  }
                }
              }

              Width = v46;
              CFRelease(BytesPerRow);
            }

            else
            {
              Width = 4294950305;
            }
          }

          v49 = a6;
          BytesPerRow = 0;
          goto LABEL_179;
        }

        v50 = CVPixelBufferGetPixelFormatType(pixelBuffera);
        if (v50 != 825306677 && v50 != 1932996149 && v50 != 825437747)
        {
          BytesPerRow = 0;
          Width = 4294950301;
          v42 = pixelBuffera;
          goto LABEL_200;
        }

        v117[1] = 0;
        LOBYTE(v117[0]) = 0;
        v104 = v10;
        v105 = v41;
        if (!CMPhotoGetFixedPointDescriptionFromPixelFormat(v50, &v117[1], 0, v117))
        {
          if (!LOBYTE(v117[0]))
          {
            v103 = BytesPerRow;
            if (CVPixelBufferLockBaseAddress(pixelBuffera, 1uLL))
            {
              OUTLINED_FUNCTION_4_10();
              v48 = 0;
              v42 = pixelBuffera;
LABEL_222:
              v49 = a6;
              goto LABEL_171;
            }

            v102 = v9;
            BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffera);
            BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffera);
            v41 = BaseAddress;
            v54 = 0;
            if (v36)
            {
              v55 = -1;
              v56 = BaseAddress;
              do
              {
                if (v35)
                {
                  for (i = 0; i != v35; ++i)
                  {
                    v58 = v56[i];
                    v59 = v54;
                    if (v54 <= v58)
                    {
                      v59 = v56[i];
                    }

                    if (v55 >= v58)
                    {
                      v60 = v56[i];
                    }

                    else
                    {
                      v60 = v55;
                    }

                    if (a5 == 0 || v56[i] != v31)
                    {
                      v54 = v59;
                      v55 = v60;
                    }
                  }
                }

                OUTLINED_FUNCTION_15_7();
              }

              while (!v22);
            }

            else
            {
              v55 = -1;
            }

            if (a5)
            {
              v67 = -2;
            }

            else
            {
              v67 = -1;
            }

            v101 = v67;
            v68 = valuePtr;
            if (!valuePtr)
            {
              OUTLINED_FUNCTION_5_11();
              v48 = 1;
              if (OUTLINED_FUNCTION_3_11(a2, v103, v35, v36, v69, v70, v71, v72, v96, v97, v98))
              {
                OUTLINED_FUNCTION_4_10();
LABEL_221:
                v9 = v102;
                v42 = pixelBuffera;
                goto LABEL_222;
              }

              v68 = valuePtr;
            }

            if (CVPixelBufferLockBaseAddress(v68, 0))
            {
              OUTLINED_FUNCTION_4_10();
            }

            else
            {
              v100 = v54 - v55;
              CVPixelBufferGetBytesPerRow(valuePtr);
              CVPixelBufferGetBaseAddress(valuePtr);
              OUTLINED_FUNCTION_71();
              if (v81 == v82)
              {
                if (v36)
                {
                  OUTLINED_FUNCTION_7_9(v73, v74, v75, v76, v77, v78, v79, v80, v96, v97, v98, v99, v100);
                  do
                  {
                    if (v35)
                    {
                      for (j = 0; j != v35; ++j)
                      {
                        if (!a5 || (v85 = v101 + (1 << v106) + 1, v41[j] != v31))
                        {
                          OUTLINED_FUNCTION_10_11();
                        }

                        *(v83 + j) = v85;
                      }
                    }

                    v41 = (v41 + BytesPerRow);
                    OUTLINED_FUNCTION_15_7();
                  }

                  while (!v22);
                }
              }

              else if (v36)
              {
                OUTLINED_FUNCTION_7_9(v73, v74, v75, v76, v77, v78, v79, v80, v96, v97, v98, v99, v100);
                do
                {
                  if (v35)
                  {
                    for (k = 0; k != v35; ++k)
                    {
                      if (!a5 || (v88 = v101 + (1 << v106) + 1, v41[k] != v31))
                      {
                        OUTLINED_FUNCTION_10_11();
                      }

                      *(v86 + 2 * k) = v88;
                    }
                  }

                  v41 = (v41 + BytesPerRow);
                  OUTLINED_FUNCTION_15_7();
                }

                while (!v22);
              }

              BytesPerRow = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              LODWORD(v41) = 1;
              if (BytesPerRow)
              {
                v89 = OUTLINED_FUNCTION_12_8();
                v42 = pixelBuffera;
                if (!v89)
                {
                  v89 = OUTLINED_FUNCTION_12_8();
                  if (!v89)
                  {
                    v89 = FigCFDictionarySetInt16();
                    if (!v89)
                    {
                      v89 = FigCFDictionarySetInt16();
                      if (!v89)
                      {
                        if (!a5 || (v89 = FigCFDictionarySetInt16(), !v89) && (v89 = FigCFDictionarySetInt16(), !v89))
                        {
                          v89 = FigCFDictionarySetInt();
                          if (!v89)
                          {
                            v90 = FigCFDictionarySetInt();
                            v9 = v102;
                            v49 = a6;
                            if (v90)
                            {
                              Width = v90;
                              v48 = 1;
                              goto LABEL_171;
                            }

                            CVPixelBufferUnlockBaseAddress(valuePtr, 0);
                            v48 = 1;
                            v47 = valuePtr;
                            goto LABEL_170;
                          }
                        }
                      }
                    }
                  }
                }

                Width = v89;
                v48 = 1;
                v9 = v102;
LABEL_216:
                v49 = a6;
                goto LABEL_171;
              }

              Width = 4294950305;
            }

            v48 = 1;
            goto LABEL_221;
          }

          fig_log_get_emitter();
          FigSignalErrorAtGM();
        }

        OUTLINED_FUNCTION_4_10();
        v48 = 0;
        v42 = pixelBuffera;
        goto LABEL_216;
      }
    }

LABEL_81:
    Width = 4294950306;
    goto LABEL_192;
  }

  if (v32 != 1278226534 && v32 != 1380410945 && v32 != 1717856627 && v32 != 1717855600)
  {
    v49 = a6;
    if (a3 == 3 && (v64 = vdupq_n_s32(v32), vaddvq_s16(vandq_s8(vuzp1q_s16(vceqq_s32(v64, xmmword_1A5AB4DC0), vceqq_s32(v64, xmmword_1A5AB4DB0)), xmmword_1A5AB4DD0))))
    {
      v42 = pixelBuffera;
      AlphaFromMainBuffer = CMPhotoCreateAlphaFromMainBuffer(pixelBuffera, 0, &cf);
      if (AlphaFromMainBuffer)
      {
        goto LABEL_204;
      }
    }

    else
    {
      v65 = a3 == 4 && v32 == 1751527984;
      v42 = pixelBuffera;
      if (v65)
      {
        AlphaFromMainBuffer = CMPhotoScaleAndRotateSessionTransformForSize(0, pixelBuffera, 1, 1, 2019963440, 0, 0, 1, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), 0, 1u, &cf);
        if (AlphaFromMainBuffer)
        {
          goto LABEL_204;
        }
      }

      else
      {
        if (cf)
        {
          Width = 4294950302;
          goto LABEL_192;
        }

        if (pixelBuffera)
        {
          v66 = CFRetain(pixelBuffera);
        }

        else
        {
          v66 = 0;
        }

        cf = v66;
      }
    }

    goto LABEL_185;
  }

  v95 = v21;
  v42 = pixelBuffera;
  AlphaFromMainBuffer = CMPhotoCreateIntegerPixelBufferFromFullPrecisionSource(pixelBuffera, a2, v95, a4, 0, v27, v31, v94, &cf, &v112);
  v49 = a6;
  if (AlphaFromMainBuffer)
  {
LABEL_204:
    Width = AlphaFromMainBuffer;
    goto LABEL_192;
  }

LABEL_185:
  v92 = v112;
  if (!v49 || v112)
  {
    goto LABEL_191;
  }

  v112 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v112)
  {
    CVPixelBufferGetPixelFormatType(v42);
    AlphaFromMainBuffer = FigCFDictionarySetInt();
    if (AlphaFromMainBuffer)
    {
      goto LABEL_204;
    }

    CVPixelBufferGetPixelFormatType(cf);
    AlphaFromMainBuffer = FigCFDictionarySetInt();
    if (AlphaFromMainBuffer)
    {
      goto LABEL_204;
    }

    v92 = v112;
LABEL_191:
    Width = 0;
    *v10 = cf;
    v112 = 0;
    cf = 0;
    *v107 = v92;
    goto LABEL_192;
  }

  Width = 4294950305;
LABEL_192:
  if (v114)
  {
    CFRelease(v114);
  }

  if (v9 && cf)
  {
    CFRelease(cf);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  return Width;
}

uint64_t CMPhotoCreateFractionalPixelBuffer(__CVBuffer *a1, uint64_t a2, uint64_t a3, int a4, const __CFDictionary *a5, void *a6)
{
  v6 = 0;
  v181 = 0;
  cf = 0;
  v7 = 4294950306;
  if (!a1)
  {
    goto LABEL_57;
  }

  if (!a5)
  {
    goto LABEL_57;
  }

  v9 = a6;
  if (!a6)
  {
    goto LABEL_57;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v15 = PixelFormatType == 875704422 || PixelFormatType == 1278226488;
  if (!v15 && PixelFormatType != 1278226736 && PixelFormatType != 2019963440 && PixelFormatType != 1278226742)
  {
    v6 = 0;
    v7 = 4294950301;
    goto LABEL_57;
  }

  v19 = PixelFormatType;
  v173 = a2;
  Width = 0x1F1919B60;
  v21 = CFDictionaryContainsKey(a5, @"IntInvalidValue");
  if (v21)
  {
    v21 = CFDictionaryContainsKey(a5, @"NativeInvalidValue");
    v29 = v21 != 0;
  }

  else
  {
    v29 = 0;
  }

  if ((a3 - 1278226736) <= 6)
  {
    OUTLINED_FUNCTION_10();
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  switch(a3)
  {
    case 0x31312E35:
    case 0x31332E33:
      goto LABEL_49;
    case 0x4C303038:
    case 0x68663230:
      goto LABEL_45;
    case 0x73372E35:
LABEL_49:
      pixelBuffer = 0;
      LODWORD(v184) = 0;
      if (a3 != 825306677 && a3 != 1932996149 && a3 != 825437747)
      {
        goto LABEL_56;
      }

      FixedPointDescriptionFromPixelFormat = OUTLINED_FUNCTION_13_8(v21, v22, v23, v24, v25, v26, v27, v28, v139, v146, v153, v160, v165, v169, v173, v9, v181, cf, v183, v184, 0, 0, 0, 0);
      if (FixedPointDescriptionFromPixelFormat)
      {
        goto LABEL_43;
      }

      v41 = v185;
      v42 = HIWORD(v184);
      if (v29 && (!FigCFDictionaryGetInt16IfPresent() || !FigCFDictionaryGetInt16IfPresent()))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_14_1();
        v7 = FigSignalErrorAtGM();
        Width = 0;
        v9 = v177;
        goto LABEL_102;
      }

      HIDWORD(v170) = WORD2(v184);
      if (CVPixelBufferGetPixelFormatType(a1) != 1278226488)
      {
        v7 = 4294950301;
        goto LABEL_56;
      }

      HIDWORD(v183) = 0;
      BYTE3(v183) = 0;
      FixedPointDescriptionFromPixelFormat = CMPhotoGetFixedPointDescriptionFromPixelFormat(a3, &v183 + 1, 0, &v183 + 3);
      v9 = v177;
      if (FixedPointDescriptionFromPixelFormat)
      {
LABEL_43:
        v7 = FixedPointDescriptionFromPixelFormat;
LABEL_56:
        v6 = 0;
        goto LABEL_57;
      }

      LODWORD(v170) = v42;
      if (BYTE3(v183))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_14_1();
        v7 = FigSignalErrorAtGM();
        Width = 0;
        goto LABEL_102;
      }

      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v44 = OUTLINED_FUNCTION_20();
      FixedPointDescriptionFromPixelFormat = CVPixelBufferLockBaseAddress(v44, v45);
      if (FixedPointDescriptionFromPixelFormat)
      {
        goto LABEL_43;
      }

      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      if (a4)
      {
        OUTLINED_FUNCTION_29_2(*MEMORY[0x1E695E480], a3, Width, Height, v47, v48, v49, v50, &pixelBuffer, v147, v154, v161, v166, v170, v174, v177, v181, cf, v183, v184, v185, pixelBuffer, v187, v188, v189);
      }

      else
      {
        OUTLINED_FUNCTION_5_11();
        v52 = OUTLINED_FUNCTION_3_11(v174, a3, Width, Height, v65, v66, v67, v68, v140, v147, v154);
      }

      v7 = v52;
      if (!v52)
      {
        v69 = OUTLINED_FUNCTION_16_4(v52, v53, v54, v55, v56, v57, v58, v59, v141, v148, v155, v161, v166, v170, v174, v177, v181, cf, v183, v184, v185, pixelBuffer);
        v71 = CVPixelBufferLockBaseAddress(v69, v70);
        if (!v71)
        {
          v72 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v73 = CVPixelBufferGetBaseAddress(pixelBuffer);
          if (Height)
          {
            for (i = 0; i != Height; ++i)
            {
              if (Width)
              {
                v82 = 0;
                v83 = *&v185;
                v84 = (1 << SBYTE4(v183));
                do
                {
                  v85 = BaseAddress[v82];
                  if (v29 && v85 == BYTE2(v184))
                  {
                    v86 = v184;
                  }

                  else
                  {
                    v86 = llroundf((v83 + ((v85 - WORD2(v184)) * ((*(&v41 + 1) - *&v41) / (v172 - WORD2(v172))))) * v84);
                  }

                  *&v73[2 * v82++] = v86;
                }

                while (Width != v82);
              }

              BaseAddress += BytesPerRow;
              v73 += v72;
            }
          }

          v87 = OUTLINED_FUNCTION_16_4(v73, v74, v75, v76, v77, v78, v79, v80, v143, v150, v157, v163, v168, v172, v176, v179, v181, cf, v183, v184, v185, pixelBuffer);
          CVPixelBufferUnlockBaseAddress(v87, v88);
          CMPhotoPropagateColorPropertiesFromSourceBuffer(a1, pixelBuffer);
          OUTLINED_FUNCTION_27_2();
          goto LABEL_100;
        }

        v7 = v71;
      }

      Width = 0;
LABEL_100:
      v89 = OUTLINED_FUNCTION_20();
      CVPixelBufferUnlockBaseAddress(v89, v90);
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
      }

LABEL_102:
      v6 = 0;
      if (!v7)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
  }

  MatchingFullPrecisionPixelFormat = a3;
  if (a3 == 1278226534)
  {
    goto LABEL_75;
  }

  if (a3 == 1278226536)
  {
    goto LABEL_74;
  }

  v33 = a3 == 1717855600 || a3 == 1717856627;
  MatchingFullPrecisionPixelFormat = a3;
  if (v33)
  {
LABEL_75:
    HIDWORD(v169) = MatchingFullPrecisionPixelFormat;
    pixelBuffer = 0;
    BytesPerRowOfPlane = a4 == 0;
    v61 = OUTLINED_FUNCTION_13_8(MatchingFullPrecisionPixelFormat, v22, v23, v24, v25, v26, v27, v28, v139, v146, v153, v160, v165, v169, v173, v9, v181, cf, v183, v184, 0, 0, 0, 0);
    HIDWORD(v167) = BytesPerRowOfPlane;
    if (!v61)
    {
      v7 = HIWORD(v184);
      LODWORD(v171) = WORD2(v184);
      if (!v29 || FigCFDictionaryGetInt16IfPresent() && FigCFDictionaryGetInt32IfPresent())
      {
        Width = CVPixelBufferGetPixelFormatType(a1);
        if (Width == 875704422)
        {
          LODWORD(v167) = HIWORD(v184);
          v91 = OUTLINED_FUNCTION_17();
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v91, v92);
          v93 = OUTLINED_FUNCTION_17();
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v93, v94);
          v9 = v178;
        }

        else
        {
          OUTLINED_FUNCTION_23();
          v62 = v15 || Width == 1278226488;
          v9 = v178;
          if (!v62)
          {
            Width = 0;
            BytesPerRowOfPlane = 0;
            v7 = 4294950301;
LABEL_150:
            if (pixelBuffer)
            {
              CFRelease(pixelBuffer);
            }

            if (v7)
            {
              goto LABEL_56;
            }

            if (HIDWORD(v171) == a3)
            {
              v6 = 0;
              goto LABEL_48;
            }

            FixedPointDescriptionFromPixelFormat = CMPhotoCreateHalfPrecisionPixelBufferFromFullPrecisionSource(Width, v175, SHIDWORD(v167), v29, BytesPerRowOfPlane, BytesPerRowOfPlane, &cf);
            if (!FixedPointDescriptionFromPixelFormat)
            {
              if (v181)
              {
                CFRelease(v181);
              }

              v6 = 0;
              Width = cf;
              v181 = cf;
              cf = 0;
              goto LABEL_48;
            }

            goto LABEL_43;
          }

          LODWORD(v167) = HIWORD(v184);
          WidthOfPlane = CVPixelBufferGetWidth(a1);
          HeightOfPlane = CVPixelBufferGetHeight(a1);
        }

        v95 = OUTLINED_FUNCTION_20();
        if (CVPixelBufferLockBaseAddress(v95, v96))
        {
          OUTLINED_FUNCTION_9_11();
        }

        else
        {
          HIDWORD(v162) = Width;
          if (((Width - 1278226488) > 0x30 || ((1 << (Width - 56)) & 0x1400000000001) == 0) && ((Width - 1278226736) > 6 || (OUTLINED_FUNCTION_10(), v15)))
          {
            v97 = OUTLINED_FUNCTION_17();
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v97, v98);
            v99 = OUTLINED_FUNCTION_17();
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v99, v100);
          }

          else
          {
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a1);
            BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a1);
          }

          Width = BaseAddressOfPlane;
          if (a4)
          {
            OUTLINED_FUNCTION_29_2(*MEMORY[0x1E695E480], SHIDWORD(v171), WidthOfPlane, HeightOfPlane, v102, v103, v104, v105, &pixelBuffer, v149, v156, v162, v167, v171, v175, v178, v181, cf, v183, v184, v185, pixelBuffer, v187, v188, v189);
          }

          else
          {
            OUTLINED_FUNCTION_5_11();
            v106 = OUTLINED_FUNCTION_3_11(v175, HIDWORD(v171), WidthOfPlane, HeightOfPlane, v114, v115, v116, v117, v142, v149, v156);
          }

          v7 = v106;
          if (v106)
          {
            Width = 0;
            BytesPerRowOfPlane = 0;
          }

          else
          {
            v118 = OUTLINED_FUNCTION_16_4(v106, v107, v108, v109, v110, v111, v112, v113, v144, v151, v158, v162, v167, v171, v175, v178, v181, cf, v183, v184, v185, pixelBuffer);
            if (CVPixelBufferLockBaseAddress(v118, v119))
            {
              OUTLINED_FUNCTION_9_11();
              v9 = v180;
            }

            else
            {
              CVPixelBufferGetBytesPerRow(pixelBuffer);
              v120 = CVPixelBufferGetBaseAddress(pixelBuffer);
              if (HIDWORD(v164) == 875704422 || HIDWORD(v164) == 1278226488)
              {
                v9 = v180;
                if (HeightOfPlane)
                {
                  v129 = BYTE2(v184);
                  do
                  {
                    if (WidthOfPlane)
                    {
                      for (j = 0; j != WidthOfPlane; ++j)
                      {
                        if (v29 && *(Width + j) == v129)
                        {
                          v131 = HIDWORD(v183);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_28_2();
                        }

                        *(v120 + 4 * j) = v131;
                      }
                    }

                    v120 = OUTLINED_FUNCTION_26_1(v120);
                  }

                  while (!v15);
                }
              }

              else
              {
                v9 = v180;
                if (HeightOfPlane)
                {
                  v132 = WORD1(v184);
                  do
                  {
                    if (WidthOfPlane)
                    {
                      for (k = 0; k != WidthOfPlane; ++k)
                      {
                        if (v29 && *(Width + 2 * k) == v132)
                        {
                          v134 = HIDWORD(v183);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_28_2();
                        }

                        *(v120 + 4 * k) = v134;
                      }
                    }

                    v120 = OUTLINED_FUNCTION_26_1(v120);
                  }

                  while (!v15);
                }
              }

              v135 = OUTLINED_FUNCTION_16_4(v120, v121, v122, v123, v124, v125, v126, v127, v145, v152, v159, v164, v167, v171, v175, v180, v181, cf, v183, v184, v185, pixelBuffer);
              CVPixelBufferUnlockBaseAddress(v135, v136);
              CMPhotoPropagateColorPropertiesFromSourceBuffer(a1, pixelBuffer);
              OUTLINED_FUNCTION_27_2();
              if (v29)
              {
                BytesPerRowOfPlane = HIDWORD(v183);
              }

              else
              {
                BytesPerRowOfPlane = 0;
              }
            }
          }

          v137 = OUTLINED_FUNCTION_20();
          CVPixelBufferUnlockBaseAddress(v137, v138);
        }

        goto LABEL_150;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_14_1();
      FigSignalErrorAtGM();
    }

    OUTLINED_FUNCTION_9_11();
    v9 = v178;
    goto LABEL_150;
  }

  if (a3 == 1751411059 || a3 == 1751410032)
  {
LABEL_74:
    MatchingFullPrecisionPixelFormat = CMPhotoGetMatchingFullPrecisionPixelFormat(a3);
    goto LABEL_75;
  }

  if (v19 != CMPhotoGetUncompressedUnpackedPixelFormatFromCompressedPackedPixelFormat(a3))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_14_1();
    FixedPointDescriptionFromPixelFormat = FigSignalErrorAtGM();
    goto LABEL_43;
  }

LABEL_45:
  ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, 1, a4, 0, a4);
  v6 = ScaleAndRotateOptionsWithHWIfNeeded;
  if (ScaleAndRotateOptionsWithHWIfNeeded)
  {
    CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationBackedByIOSurface", a4 == 0);
    CMPhotoCFDictionarySetInt(v6, @"DestinationPixelFormat", a3);
    v37 = CMPhotoScaleAndRotateSessionTransformImage(0, a1, v6, &v181);
    if (!v37)
    {
      Width = v181;
LABEL_48:
      CMPhotoPropagateColorPropertiesFromSourceBuffer(a1, Width);
      v7 = 0;
      *v9 = v181;
      v181 = 0;
      goto LABEL_57;
    }

    v7 = v37;
  }

  else
  {
    v7 = 4294950305;
  }

LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t CMPhotoAuxiliaryImageMetadataCreateXMPData(int a1, CGImageMetadataRef metadata, const __CFDictionary *a3, int a4, __CFString *a5, CFDataRef *a6)
{
  err = 0;
  if (!a6)
  {
    return 0;
  }

  if (!metadata)
  {
    Mutable = CGImageMetadataCreateMutable();
    if (Mutable)
    {
      goto LABEL_4;
    }

    return 4294950305;
  }

  Mutable = CGImageMetadataCreateMutableCopy(metadata);
  if (!Mutable)
  {
    return 4294950305;
  }

LABEL_4:
  v11 = Mutable;
  if (CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/pixeldatainfo/1.0/", @"apdi", &err))
  {
    if (!a3 || CFDictionaryGetCount(a3) < 1 || (context[0] = v11, context[1] = 0x1F191D000, context[2] = 0x1F191D020, v22 = 0, CFDictionaryApplyFunction(a3, _addMetadataApplierFunction, context), v12 = v22, !v22))
    {
      v13 = @"disparity";
      switch(a4)
      {
        case 1:
          goto LABEL_18;
        case 2:
          v13 = @"depth";
          goto LABEL_18;
        case 3:
          v13 = @"alpha";
          goto LABEL_18;
        case 4:
          v13 = a5;
          if (!a5)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        case 5:
          v14 = CMPhotoAddValueToCGImageMetadata(v11, @"depth", @"AuxiliaryImageType", @"http://ns.apple.com/pixeldatainfo/1.0/", @"apdi");
          if (v14)
          {
            goto LABEL_31;
          }

          v15 = @"AuxiliaryImageSubType";
          v13 = @"portraiteffectsmatte";
          break;
        default:
          v13 = @"unknown";
LABEL_18:
          v15 = @"AuxiliaryImageType";
          break;
      }

      v14 = CMPhotoAddValueToCGImageMetadata(v11, v13, v15, @"http://ns.apple.com/pixeldatainfo/1.0/", @"apdi");
      if (v14)
      {
LABEL_31:
        v12 = v14;
      }

      else
      {
LABEL_20:
        XMPData = CGImageMetadataCreateXMPData(v11, 0);
        if (XMPData)
        {
          v12 = 0;
          *a6 = XMPData;
        }

        else
        {
          v17 = CGImageMetadataCopyTags(v11);
          if (v17 && (v18 = v17, Count = CFArrayGetCount(v17), CFRelease(v18), Count))
          {
            v12 = 4294950305;
          }

          else
          {
            v12 = 4294950303;
          }
        }
      }
    }
  }

  else
  {
    v12 = 4294950304;
  }

  CFRelease(v11);
  if (err)
  {
    CFRelease(err);
  }

  return v12;
}

uint64_t _extractInformationAboutTheData(uint64_t a1, float *a2, float *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  result = 4294950306;
  if (a1 && a2 && a3 && a4 && a5)
  {
    if (FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetInt16IfPresent() && FigCFDictionaryGetInt16IfPresent() && *a2 >= *a3 && *a4 > *a5)
    {
      return 0;
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

uint64_t CMPhotoCreateDeltaPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateDeltaPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateDeltaPixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateDeltaPixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateDeltaPixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateDeltaPixelBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateDeltaPixelBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoApplyDeltaPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoApplyDeltaPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoApplyDeltaPixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoApplyDeltaPixelBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoApplyDeltaPixelBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getAuxiliaryImageGeometryForIndex_1(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, _DWORD *a7)
{
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
    result = _getAuxiliaryImageCountForIndex_3(v12, v13, v14, v15);
    if (!result)
    {
      if (a3 < 0 || v17 <= a3)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        return FigSignalErrorAtGM();
      }

      else
      {
        if (a5)
        {
          *a5 = a1[22];
        }

        if (a6)
        {
          *a6 = a1[23];
        }

        result = 0;
        if (a7)
        {
          *a7 = a1[33];
        }
      }
    }
  }

  return result;
}

uint64_t _getAuxiliaryImageTypeForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int *a6)
{
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (!(a5 | a6))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_12();
    result = _getAuxiliaryImageCountForIndex_3(v10, 0, v11, v12);
    if (result)
    {
      return result;
    }

    if (a3 < 0 || v15 <= a3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      return FigSignalErrorAtGM();
    }

    if (a5)
    {
      *a5 = 3;
    }

    if (a6)
    {
      result = 0;
      if (*(a1 + 144) <= 8u)
      {
        v14 = 1278226488;
      }

      else
      {
        v14 = 1278226742;
      }

      *a6 = v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _copyAuxiliaryImageMetadataForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
    result = _getAuxiliaryImageCountForIndex_3(v4, v5, v6, v7);
    if (!result)
    {
      if (a3 < 0 || v9 <= a3)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        return FigSignalErrorAtGM();
      }

      else
      {
        return 4294950303;
      }
    }
  }

  return result;
}

uint64_t _copyXMPForIndex_2(uint64_t a1, uint64_t a2, CFIndex idx, uint64_t a4, void *a5)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    Count = *(a1 + 328);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= idx)
    {
      return 4294950303;
    }

    else if (a5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 328), idx);
      if (ValueAtIndex)
      {
        v10 = CFRetain(ValueAtIndex);
      }

      else
      {
        v10 = 0;
      }

      result = 0;
      *a5 = v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _copyImageIsRGBForIndex_0(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a2)
  {
    *a3 = *(a1 + 136) == 3;
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _copyColorSpaceForIndex_0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (a3)
  {
    v4 = *(a1 + 288);
    if (v4)
    {
      v5 = CFRetain(v4);
      result = 0;
      *a3 = v5;
    }

    else
    {
      return 4294950303;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t _createPreparedJXLDecoder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a5)
  {
    goto LABEL_18;
  }

  v9 = JxlDecoderCreate();
  if (!v9)
  {
    goto LABEL_19;
  }

  if (!a6)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v10 = JxlThreadParallelRunnerCreate();
  if (!v10)
  {
LABEL_19:
    v11 = 4294950305;
    goto LABEL_16;
  }

  if (JxlDecoderSetParallelRunner())
  {
    v11 = 4294950304;
    goto LABEL_16;
  }

LABEL_8:
  if (JxlDecoderSetKeepOrientation())
  {
    goto LABEL_17;
  }

  if (JxlDecoderSetUnpremultiplyAlpha())
  {
    goto LABEL_17;
  }

  if (JxlDecoderSetDecompressBoxes())
  {
    goto LABEL_17;
  }

  CFDataGetBytePtr(*(a1 + 72));
  CFDataGetLength(*(a1 + 72));
  if (JxlDecoderSetInput())
  {
    goto LABEL_17;
  }

  if (JxlDecoderSubscribeEvents())
  {
LABEL_18:
    v11 = 4294950306;
    goto LABEL_16;
  }

  v12 = JxlDecoderProcessInput();
  if (v12 == 2)
  {
LABEL_17:
    v11 = 4294950194;
    goto LABEL_16;
  }

  v11 = v12;
  *a5 = v9;
  if (a6)
  {
    *a6 = v10;
  }

LABEL_16:
  JxlThreadParallelRunnerDestroy();
  JxlDecoderDestroy();
  return v11;
}

uint64_t _configureJXLColor(const __CFAllocator *a1, uint64_t a2, int a3, unint64_t a4, CFStringRef *a5, __CFData **a6)
{
  if (CMPhotoIsMatchedJxlDecodeAPI())
  {
    OUTLINED_FUNCTION_5_12();
    if (JxlDecoderGetColorAsEncodedProfile())
    {
      if (!a3)
      {
        OUTLINED_FUNCTION_5_12();
        if (!JxlDecoderGetColorAsEncodedProfile())
        {
          transferFunctionCodePoint = 13;
          JxlDecoderSetPreferredColorProfile();
        }
      }
    }

    else if (JxlDecoderSetPreferredColorProfile())
    {
      return 4294950194;
    }

    if (!(a4 | a5) || JxlDecoderGetColorAsEncodedProfile())
    {
      v11 = 0;
      StringForIntegerCodePoint = 0;
      goto LABEL_10;
    }

    v11 = 0;
    if (v18 == 1)
    {
      goto LABEL_32;
    }

    StringForIntegerCodePoint = 0;
    if (v18)
    {
      goto LABEL_10;
    }

    switch(v19)
    {
      case 11:
        v16 = MEMORY[0x1E6965DD0];
        break;
      case 9:
        v16 = MEMORY[0x1E6965DB0];
        break;
      case 1:
        v16 = MEMORY[0x1E6965DB8];
        break;
      default:
        v11 = 0;
        goto LABEL_32;
    }

    v11 = *v16;
LABEL_32:
    StringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint(transferFunctionCodePoint);
LABEL_10:
    if (a6)
    {
      if (JxlDecoderGetICCProfileSize())
      {
        v14 = 0;
      }

      else
      {
        Mutable = CFDataCreateMutable(a1, 0);
        v14 = Mutable;
        if (!Mutable)
        {
          v15 = 4294950305;
          goto LABEL_39;
        }

        CFDataSetLength(Mutable, 0);
        CFDataGetMutableBytePtr(v14);
        if (!JxlDecoderGetColorAsICCProfile())
        {
          if (!a4)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      v15 = 4294950194;
      goto LABEL_39;
    }

    v14 = 0;
    if (!a4)
    {
LABEL_16:
      if (a5)
      {
        *a5 = StringForIntegerCodePoint;
      }

      v15 = 0;
      if (a6)
      {
        *a6 = v14;
        return v15;
      }

LABEL_39:
      if (v14)
      {
        CFRelease(v14);
      }

      return v15;
    }

LABEL_15:
    *a4 = v11;
    goto LABEL_16;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t _createMetadataDescriptionArray_0(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFArrayRef theArray, __CFArray **a5)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v12 = Mutable;
  v20 = a5;
  v13 = 0;
  v14 = 0;
  if (!theArray)
  {
    goto LABEL_7;
  }

LABEL_6:
  for (i = CFArrayGetCount(theArray); ; i = 0)
  {
    if (v14 >= i)
    {
      v18 = 0;
      *v20 = v12;
      if (!v13)
      {
        return v18;
      }

      goto LABEL_17;
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v16 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = v16;
    if (!v16)
    {
      break;
    }

    v17 = CMPhotoCFDictionarySetInt64(v16, @"DataOffset", a2);
    if (v17 || (v17 = CMPhotoCFDictionarySetSize(v13, @"DataLength", a3), v17))
    {
      v18 = v17;
      goto LABEL_21;
    }

    CFArrayAppendValue(v12, v13);
    ++v14;
    if (theArray)
    {
      goto LABEL_6;
    }

LABEL_7:
    ;
  }

  v18 = 4294950305;
LABEL_21:
  CFRelease(v12);
  if (v13)
  {
LABEL_17:
    CFRelease(v13);
  }

  return v18;
}

uint64_t _copyFormatDescriptionForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _decodeImageForIndexAsync_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _decodeImageForIndexAsync_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void _decodeImageForIndexAsync_cold_3(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
    a1[7] = 0;
  }

  CMPhotoDecompressionSessionFreeAsyncRequest(a1);
}

uint64_t _jxlOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _jxlOutputCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t SlimDecompressionPluginClass_create(uint64_t a1, const opaqueCMFormatDescription *a2, uint64_t a3, uint64_t a4)
{
  pthread_once(&_checkFigNoteTraceOnce_onceToken_0, _registerFigNoteTrace_0);
  v21 = 0;
  v8 = 4294950306;
  if (!a1 || !a2 || !a4)
  {
    return v8;
  }

  if (*(a1 + 72) == 1936484717)
  {
    v9 = malloc_type_calloc(1uLL, 0x40uLL, 0x10600402F076322uLL);
    if (!v9)
    {
      return 4294950305;
    }

    v10 = v9;
    if (a3)
    {
      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
    }

    if (*(v10 + 8) || (TargetingPThreadRootQueueWithPriority = FigDispatchQueueCreateTargetingPThreadRootQueueWithPriority(), (v10[2] = TargetingPThreadRootQueueWithPriority) != 0))
    {
      v12 = 3;
      while (1)
      {
        Session = SlimVideoDecoder_CreateSession(*a1, &v10[v12]);
        if (Session)
        {
          break;
        }

        Session = SlimVideoDecoder_StartSessionInternal(v10[v12], a2);
        if (Session)
        {
          break;
        }

        if (++v12 == 7)
        {
          *(a1 + 76) = SlimVideoDecoder_GetSlimCodecFlavor(v10[3]);
          *(v10 + 14) = 0;
          IsSlimX = SlimVideoDecoder_SessionIsSlimX(v10[3]);
          IsSlimYzip = SlimVideoDecoder_SessionIsSlimYzip(v10[3]);
          IsSlimHrlc = SlimVideoDecoder_SessionIsSlimHrlc(v10[3]);
          IsSlimIntc = SlimVideoDecoder_SessionIsSlimIntc(v10[3]);
          IsSlimUncompressed = SlimVideoDecoder_SessionIsSlimUncompressed(v10[3]);
          if (IsSlimX || IsSlimYzip || IsSlimHrlc || IsSlimIntc || IsSlimUncompressed)
          {
            v8 = 0;
            *(a1 + 64) = v10;
            return v8;
          }

          fig_log_get_emitter();
          Session = FigSignalErrorAtGM();
          break;
        }
      }

      v8 = Session;
    }

    else
    {
      v8 = 4294950305;
    }

    v20[5] = 0u;
    memset(v20, 0, 64);
    v20[4] = v10;
    SlimDecompressionPluginClass_dispose(v20);
    return v8;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t SlimDecompressionPluginClass_decode(uint64_t a1, CFDictionaryRef theDict, opaqueCMSampleBuffer *a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CanvasPixelBuffer");
    v10 = CFDictionaryGetValue(theDict, @"CanvasOrigin");
    if (v10)
    {
      theDict = CFDictionaryCreateCopy(*a1, v10);
    }

    else
    {
      theDict = 0;
    }
  }

  else
  {
    Value = 0;
  }

  if (*(v8 + 8))
  {
    v11 = SlimVideoDecoder_DecodeFrameInternal(*(v8 + 8 * *(v8 + 56) + 24), a3, Value, theDict, SlimDecompressionPluginClass_callback, a1, a4);
    if (v11)
    {
      v12 = v11;
      if (!theDict)
      {
        return v12;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x30uLL, 0xE004023F974B1uLL);
    if (!v13)
    {
      v12 = 4294950305;
      if (!theDict)
      {
        return v12;
      }

      goto LABEL_22;
    }

    v14 = v13;
    v15 = *(v8 + 8 * *(v8 + 56) + 24);
    if (a3)
    {
      a3 = CFRetain(a3);
    }

    if (Value)
    {
      Value = CFRetain(Value);
    }

    if (theDict)
    {
      v16 = CFRetain(theDict);
    }

    else
    {
      v16 = 0;
    }

    *v14 = a1;
    v14[1] = v15;
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = Value;
    v14[5] = v16;
    dispatch_async_f(*(v8 + 16), v14, _dispatch_decodeAsync);
  }

  v12 = 0;
  *(v8 + 56) = (*(v8 + 56) + 1) % 4;
  if (theDict)
  {
LABEL_22:
    CFRelease(theDict);
  }

  return v12;
}

uint64_t SlimDecompressionPluginClass_getDecoderRestrictionsOverlay(uint64_t a1, const opaqueCMFormatDescription *a2, uint64_t a3)
{
  cf = 0;
  DecoderRestrictions = SlimDecompressionPluginClass_getDecoderRestrictions(a1, a3);
  if (DecoderRestrictions)
  {
    return DecoderRestrictions;
  }

  v5 = SlimVideoDecoder_CopyDecoderRestrictionsFromFormatDescript(a2, &cf);
  v6 = cf;
  if (!v5 && cf)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
    v6 = cf;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t CMPhotoDecompressionTileIteratorStepAndReportPosition(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 48) + 8);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionTileIteratorMoveToPosition(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 48) + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionTileIteratorGetTileSourceRect(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 48) + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionTileIteratorGetTileItemType(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 48) + 40);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionTileIteratorDecodeTileAsyncF(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 48) + 48);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionTileIteratorDecodeTileAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (a1)
  {
    v11 = *(*(a1 + 48) + 48);
    if (v11)
    {
      v12 = v11(a1, a2, a3, a4, _callback_CompletionHandlerWrapper, v9);
      if (!v10)
      {
        return v12;
      }
    }

    else
    {
      v12 = 4294950302;
      if (!v9)
      {
        return v12;
      }
    }
  }

  else
  {
    v12 = 4294950306;
    if (!v9)
    {
      return v12;
    }
  }

  if (v12)
  {
    _Block_release(v10);
  }

  return v12;
}

uint64_t CMPhotoDecompressionTileIteratorCancelAsyncRequest(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 48) + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t JPEGParseExifOrientation(const void *a1, _DWORD *a2)
{
  v12 = 0;
  cf = 0;
  v10 = 1;
  ExifLocationFromJFIFByteStream = CMPhotoByteStreamCreateFromSource(a1, 0, 0, 0, &v12, 0);
  if (ExifLocationFromJFIFByteStream || (v9 = 0, v7 = 0, v8 = 0, v6 = 0, ExifLocationFromJFIFByteStream = CMPhotoGetExifLocationFromJFIFByteStream(), ExifLocationFromJFIFByteStream))
  {
    v4 = ExifLocationFromJFIFByteStream;
  }

  else
  {
    v4 = 0;
    *a2 = 1;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v4;
}

uint64_t _modifyInPlace_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _modifyInPlace_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

IOSurfaceRef CMPhotoJPEGCreateJPEGOutputIOSurface(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if ((sCMPhotoJPEGDecoderTraceInitialized & 1) == 0)
  {
    sCMPhotoJPEGDecoderTraceInitialized = 1;
  }

  v5 = 0;
  v6 = 0;
  if (!CMPhotoSurfacePoolCreateImageSurface(@"SurfacePoolOneShot", 875704422, a1, a2, 1, a3, a4, 1, 0, 0, 1u, &v5, &v6))
  {
    IOSurfaceDecrementUseCount(v5);
  }

  return v5;
}

uint64_t CMPhotoJPEGCreateCGImageFromJPEG(const __CFData *a1, const __CFDictionary *a2, CGImageRef *a3)
{
  cf = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if ((sCMPhotoJPEGDecoderTraceInitialized & 1) == 0)
  {
    sCMPhotoJPEGDecoderTraceInitialized = 1;
  }

  if (jpegService())
  {
    if (a2)
    {
      IntValue = getIntValue(a2, @"JPEGCacheInputSurface", 0);
      v7 = getIntValue(a2, @"JPEGBackCGImageWithIOSurface", 0);
      v8 = IntValue != 0;
      v9 = getIntValue(a2, @"JPEGHighSpeedDecode", 0) != 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 1;
    }

    v27 = 0;
    v28 = 0;
    if (JPEGDeviceInterface_supportsAppleInterchangeFormats() && !_needsTransformAfterDecode(a1, a2) && (ModifiedOptionsWithPixelFormat = _createModifiedOptionsWithPixelFormat(a2, 1111970369)) != 0)
    {
      v18 = ModifiedOptionsWithPixelFormat;
      v19 = OUTLINED_FUNCTION_0_15();
      PixelBufferFromJPEG = _createPixelBufferFromJPEG(v19, v18, v8, v9, v20, v21, 0, v22);
      if (!PixelBufferFromJPEG)
      {
        v30 = CFRetain(cf);
        PixelBufferFromJPEG = CMPhotoCreateCGImageWithPixelBuffer(*MEMORY[0x1E695E480], v30, v7, a3);
      }

      v15 = PixelBufferFromJPEG;
      CFRelease(v18);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_0_15();
      CGImageWithPixelBuffer = _createPixelBufferFromJPEG(v10, a2, v8, v9, v11, v12, 0, v13);
      if (!CGImageWithPixelBuffer)
      {
        calculateOutputDimensions(v27, v28, a2, 1, 0, &v25, &v24);
        CGImageWithPixelBuffer = scaleAndConvertPixelBuffer(cf, v25, v26, 1111970369, v24, 0, &v30);
        if (!CGImageWithPixelBuffer)
        {
          CGImageWithPixelBuffer = CMPhotoCreateCGImageWithPixelBuffer(*MEMORY[0x1E695E480], v30, v7, a3);
        }
      }

      v15 = CGImageWithPixelBuffer;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v15;
}

BOOL _needsTransformAfterDecode(const __CFData *a1, const __CFDictionary *a2)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (!a2)
  {
    return 0;
  }

  IntValue = getIntValue(a2, *MEMORY[0x1E696E100], 0);
  if (!(IntValue | getIntValue(a2, *MEMORY[0x1E696E000], 0)))
  {
    return 0;
  }

  memset(v14, 0, sizeof(v14));
  v9 = 0;
  v10 = 0;
  JPEGParseJPEGInfo(a1, v14, 0, 0);
  v5 = 1;
  v8 = 1;
  JPEGParseExifOrientation(a1, &v8);
  calculateOutputDimensions(LODWORD(v14[0]), DWORD1(v14[0]), a2, v8, &v9, &v12, &v11);
  if (!v11)
  {
    return v9 != v12 || v10 != v13;
  }

  return v5;
}

uint64_t CMPhotoJPEGDecodeJPEGIntoSurface(const __CFData *a1, const __CFDictionary *a2, __IOSurface *a3)
{
  cf = 0;
  v32 = 0;
  v28 = 1;
  if ((sCMPhotoJPEGDecoderTraceInitialized & 1) == 0)
  {
    sCMPhotoJPEGDecoderTraceInitialized = 1;
  }

  if (jpegService())
  {
    if (a3 && ((PixelFormat = IOSurfaceGetPixelFormat(a3), PixelFormat != 875704422) ? (v7 = PixelFormat == 1111970369) : (v7 = 1), !v7 ? (v8 = PixelFormat == 1999843442) : (v8 = 1), !v8 ? (v9 = PixelFormat == 1380401729) : (v9 = 1), v9))
    {
      v10 = PixelFormat;
      v29 = 0;
      v30 = 0;
      if (!JPEGDeviceInterface_supportsAppleInterchangeFormats() || (v20 = _needsTransformAfterDecode(a1, a2), v10 == 1999843442) || v20)
      {
        v11 = OUTLINED_FUNCTION_1_14();
        PixelBufferFromJPEG = _createPixelBufferFromJPEG(v11, a2, 0, 1, v12, v13, 0, v14);
        if (!PixelBufferFromJPEG)
        {
          Width = IOSurfaceGetWidth(a3);
          Height = IOSurfaceGetHeight(a3);
          v27 = 0;
          calculateOutputDimensions(v29, v30, a2, v28, 0, 0, &v27);
          PixelBufferFromJPEG = CMPhotoCreatePixelBufferWithSurface(*MEMORY[0x1E695E480], a3, 0);
          if (!PixelBufferFromJPEG)
          {
            PixelBufferFromJPEG = scaleAndConvertPixelBuffer(v32, Width, Height, v10, v27, 0, &cf);
          }
        }

        v18 = PixelBufferFromJPEG;
      }

      else
      {
        ModifiedOptionsWithPixelFormat = _createModifiedOptionsWithPixelFormat(a2, v10);
        if (ModifiedOptionsWithPixelFormat)
        {
          v22 = ModifiedOptionsWithPixelFormat;
          v23 = OUTLINED_FUNCTION_1_14();
          v18 = _createPixelBufferFromJPEG(v23, v22, 0, 1, v24, v25, a3, v26);
          CFRelease(v22);
        }

        else
        {
          v18 = 4294954510;
        }
      }
    }

    else
    {
      v18 = 4294954516;
    }
  }

  else
  {
    v18 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v18;
}

uint64_t CMPhotoJPEGCreateCGImageFromIOSurface(__IOSurface *a1, int a2, CGImageRef *a3)
{
  if ((sCMPhotoJPEGDecoderTraceInitialized & 1) == 0)
  {
    sCMPhotoJPEGDecoderTraceInitialized = 1;
  }

  if (a1)
  {
    return CMPhotoCreateCGImageWithSurface(*MEMORY[0x1E695E480], a1, a2, a3);
  }

  else
  {
    return 4294954516;
  }
}

uint64_t _createPixelBufferFromJPEG_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createPixelBufferFromJPEG_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetTransferRotationFromInputOrientationAndDesiredOrientation(int a1, int a2, _DWORD *a3)
{
  result = 4294950306;
  if (a3)
  {
    if ((a1 - 9) >= 0xFFFFFFF8 && (a2 - 9) >= 0xFFFFFFF8)
    {
      v7 = dword_1A5ABA930[8 * (a1 - 1) + a2 - 1];
      if (v7 == -1)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();

        return FigSignalErrorAtGM();
      }

      else
      {
        result = 0;
        *a3 = v7;
      }
    }
  }

  return result;
}

uint64_t CMPhotoUpdateImageProperties(CFDictionaryRef *a1, int a2, int a3, double a4, double a5)
{
  if (!a1)
  {
    return 4294950306;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 4294950306;
  }

  v11 = MEMORY[0x1E695F060];
  if (!(a3 | a2) && a4 == *MEMORY[0x1E695F060] && a5 == *(MEMORY[0x1E695F060] + 8))
  {
    return 0;
  }

  v13 = *MEMORY[0x1E696DF28];
  Value = CFDictionaryGetValue(*a1, *MEMORY[0x1E696DF28]);
  v15 = CFGetAllocator(v6);
  MutableCopy = CFDictionaryCreateMutableCopy(v15, 0, v6);
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v17 = MutableCopy;
  if (Value)
  {
    OUTLINED_FUNCTION_11_10();
    Value = CFDictionaryCreateMutableCopy(v18, v19, v20);
    if (!Value)
    {
      v22 = 4294950305;
LABEL_31:
      CFRelease(v17);
      if (!Value)
      {
        return v22;
      }

      goto LABEL_24;
    }

    CFDictionarySetValue(v17, v13, Value);
  }

  if (a2)
  {
    CFDictionaryRemoveValue(v17, *MEMORY[0x1E696DE78]);
    if (!Value)
    {
      goto LABEL_18;
    }

    CFDictionaryRemoveValue(Value, *MEMORY[0x1E696DF58]);
  }

  if (a3 && Value)
  {
    CFDictionaryRemoveValue(Value, *MEMORY[0x1E696DF78]);
    CFDictionaryRemoveValue(Value, *MEMORY[0x1E696DF70]);
  }

LABEL_18:
  if (a4 != *v11 || a5 != v11[1])
  {
    updated = _updateImagePropertiesWithGivenDimensions(a4, a5);
    if (updated)
    {
      v22 = updated;
      goto LABEL_31;
    }
  }

  CFRelease(v6);
  v22 = 0;
  *a1 = v17;
  if (Value)
  {
LABEL_24:
    CFRelease(Value);
  }

  return v22;
}

uint64_t _updateImagePropertiesWithGivenDimensions(double a1, double a2)
{
  v4 = a1;
  result = FigCFDictionarySetInt32();
  if (!result)
  {
    result = FigCFDictionarySetInt32();
    if (!result)
    {
      v6 = OUTLINED_FUNCTION_7_10();
      result = CFDictionaryGetValue(v6, v7);
      if (result)
      {
        v8 = result;
        v9 = *MEMORY[0x1E696DAA8];
        CMPhotoCFDictionaryGetInt32IfPresent();
        v10 = *MEMORY[0x1E696DAB0];
        CMPhotoCFDictionaryGetInt32IfPresent();
        if (a1 != 0 || a2 != 0)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
          if (!MutableCopy)
          {
            return 4294950305;
          }

          v12 = MutableCopy;
          CMPhotoCFDictionarySetInt32(MutableCopy, v9, v4);
          CMPhotoCFDictionarySetInt32(v12, v10, a2);
          v13 = OUTLINED_FUNCTION_7_10();
          CFDictionarySetValue(v13, v14, v12);
          CFRelease(v12);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t CMPhotoCreateImagePropertiesFromData(CFAllocatorRef allocator, double *a2, void *a3, uint64_t a4, const __CFData *a5, uint64_t a6, const void *a7, CGMutableImageMetadataRef *a8, uint64_t a9)
{
  v36 = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v31 = 0;
  Mutable = 0;
  if (a8 | a9)
  {
    v15 = allocator;
    if (a5)
    {
      allocator = _createDataWithPrefix(allocator, "http://ns.adobe.com/xap/1.0/", 0x1D, a5, cf);
      if (allocator)
      {
        goto LABEL_38;
      }

      if (!a6)
      {
        LODWORD(keys[1]) = 0;
        keys[0] = 0x4044D494238;
        v26 = CFDataCreate(0, keys, 12);
        if (!v26)
        {
          v25 = 4294950305;
          goto LABEL_39;
        }

        v29 = v26;
        v25 = OUTLINED_FUNCTION_15_8(v26, "Photoshop 3.0", v27, v28);
        CFRelease(v29);
        if (v25)
        {
          goto LABEL_39;
        }

        goto LABEL_4;
      }
    }

    else if (!a6)
    {
LABEL_4:
      if (!a7 && !a4 && !cf[0])
      {
        if (a9 && (Mutable = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0 || a8 && (v31 = CGImageMetadataCreateMutable()) == 0)
        {
          MutableCopy = 0;
LABEL_51:
          v25 = 4294950305;
          goto LABEL_40;
        }

        goto LABEL_13;
      }

      allocator = CGImageCreateMetadataFromData();
      if (!allocator)
      {
LABEL_13:
        if (a9)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (!MutableCopy)
          {
            goto LABEL_51;
          }

          if (a2 && (updated = _updateImagePropertiesWithGivenDimensions(*a2, a2[1]), updated) || a3 && (updated = CMPhotoCFDictionarySetSize(MutableCopy, *MEMORY[0x1E696D890], *a3), updated))
          {
            v25 = updated;
            goto LABEL_40;
          }

          if (a7)
          {
            CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D320], a7);
          }

          *keys = 0u;
          v35 = 0u;
          v18 = *MEMORY[0x1E696DD98];
          cf[1] = *MEMORY[0x1E696DD88];
          cf[2] = v18;
          v19 = *MEMORY[0x1E696DDE0];
          cf[3] = *MEMORY[0x1E696DDA0];
          cf[4] = v19;
          v20 = *MEMORY[0x1E696DD90];
          Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E696DD90]);
          if (Value)
          {
            v22 = Value;
            if (CFDictionaryGetCount(Value) == 4)
            {
              CFDictionaryGetKeysAndValues(v22, keys, 0);
              for (i = 0; i != 4; ++i)
              {
                v24 = 0;
                while (!FigCFEqual())
                {
                  v24 += 8;
                  if (v24 == 32)
                  {
                    goto LABEL_29;
                  }
                }
              }

              CFDictionaryRemoveValue(MutableCopy, v20);
            }
          }

LABEL_29:
          *a9 = MutableCopy;
        }

        v25 = 0;
        if (a8)
        {
          MutableCopy = 0;
          *a8 = v31;
          v31 = 0;
          goto LABEL_40;
        }

LABEL_39:
        MutableCopy = 0;
        goto LABEL_40;
      }

LABEL_38:
      v25 = allocator;
      goto LABEL_39;
    }

    allocator = OUTLINED_FUNCTION_15_8(allocator, "Photoshop 3.0", a3, a4, 0);
    if (allocator)
    {
      goto LABEL_38;
    }

    goto LABEL_4;
  }

  MutableCopy = 0;
  v25 = 4294950306;
LABEL_40:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v25;
}

uint64_t _createDataWithPrefix(const __CFAllocator *a1, const UInt8 *a2, const UInt8 *a3, const __CFData *a4, __CFData **a5)
{
  Mutable = CFDataCreateMutable(a1, 0);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  CFDataAppendBytes(Mutable, a2, a3);
  CFDataGetBytePtr(a4);
  v11 = OUTLINED_FUNCTION_12_9();
  Length = CFDataGetLength(v11);
  CFDataAppendBytes(v10, a3, Length);
  result = 0;
  *a5 = v10;
  return result;
}

uint64_t CMPhotoImagePropertiesCreateDataRepresentation(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v6 = Mutable;
  CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E696DAA8], a2);
  if (!DataFromMetadata)
  {
    CMPhotoCFDictionarySetSize(v6, *MEMORY[0x1E696DAB0], a3);
    if (!DataFromMetadata)
    {
      DataFromMetadata = CGImageCreateDataFromMetadata();
    }
  }

  v8 = DataFromMetadata;
  CFRelease(v6);
  return v8;
}

BOOL CMPhotoParseExifOrientationFromTIFF(OpaqueCMBlockBuffer *a1, size_t a2, unint64_t a3, int *a4)
{
  v7 = 0;
  v4 = CMPhotoParseExifFromTIFF(a1, a2, a3, &v7, a4, 0, 0, 0, 0);
  return v7 && v4 == 0;
}

void CMPhotoCreateFigIntrinsicsDictFromIntrinsicsMatrix(const __CFAllocator *a1, CFTypeRef cf, unint64_t a3, unint64_t a4, int a5, int a6, __CFDictionary **a7)
{
  if (!a7)
  {
LABEL_44:
    OUTLINED_FUNCTION_14_7();
    return;
  }

  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFArrayGetTypeID() && CFArrayGetCount(cf) == 9)
    {
      v39 = 0.0;
      v40 = 0.0;
      if (FigCFArrayGetDoubleAtIndex() && FigCFArrayGetDoubleAtIndex())
      {
        if (v40 <= 0.0 || v39 <= 0.0)
        {
LABEL_46:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_19();
          FigSignalErrorAtGM();
        }

        else
        {
          v38 = 0.0;
          if (FigCFArrayGetDoubleAtIndex())
          {
            v15 = 0;
            while (1)
            {
              v37 = 0.0;
              if (!FigCFArrayGetDoubleAtIndex())
              {
                break;
              }

              if (v37 != 0.0)
              {
                goto LABEL_46;
              }

              v15 += 4;
              if (v15 == 12)
              {
                if (FigCFArrayGetDoubleAtIndex())
                {
                  if (FigCFArrayGetDoubleAtIndex())
                  {
                    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (Mutable)
                    {
                      v17 = Mutable;
                      if (a6)
                      {
                        LODWORD(v37) = 0;
                        CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(a5, &v37, 0);
                        if (LODWORD(v37) == 270 || LODWORD(v37) == 90)
                        {
                          v18 = a4;
                          a4 = a3;
                          a3 = v18;
                        }

                        v19 = cmpweak_kFigCameraIntrinsics_OfficialBox();
                        CMPhotoCFDictionarySetBoolean(v17, v19, 1);
                      }

                      v20 = v40 / a3;
                      v21 = v39 / a4;
                      v22 = 0.0 / a3;
                      v23 = 0.0 / a4;
                      v24 = fabs(v20);
                      v25 = fabs(v21);
                      if (v24 <= v25)
                      {
                        v24 = v25;
                      }

                      v26 = fabs(v22);
                      v27 = fabs(v23);
                      if (v26 <= v27)
                      {
                        v26 = v27;
                      }

                      if (v24 <= v26)
                      {
                        v24 = v26;
                      }

                      if (v24 == 0.0)
                      {
                        LOBYTE(v28) = 0;
                      }

                      else
                      {
                        v28 = __clz(fabs(ceil(v24))) - 1;
                      }

                      v29 = CMPhotoCFDictionarySetInt(v17, *MEMORY[0x1E69717D8], v28);
                      if (v29 || (v30 = (1 << v28), v31 = OUTLINED_FUNCTION_9_13(v20 * v30, v29, *MEMORY[0x1E69717E0]), v31) || (v32 = OUTLINED_FUNCTION_9_13(v22 * v30, v31, *MEMORY[0x1E69717F8]), v32) || (v33 = OUTLINED_FUNCTION_9_13(v23 * v30, v32, *MEMORY[0x1E6971800]), v33) || (v38 != 0.0 || vabdd_f64(v39, v40) > 0.000001) && ((v34 = OUTLINED_FUNCTION_9_13(v21 * v30, v33, *MEMORY[0x1E69717E8]), v34) || (v38 == 0.0 ? (LOBYTE(v35) = 0) : (v35 = __clz(fabs(ceil(v38))) - 1), OUTLINED_FUNCTION_9_13(v38 * (1 << v35), v34, *MEMORY[0x1E6971810]) || CMPhotoCFDictionarySetInt(v17, *MEMORY[0x1E6971808], v35))))
                      {
                        CFRelease(v17);
                      }

                      else
                      {
                        *a7 = v17;
                      }
                    }
                  }
                }

                goto LABEL_44;
              }
            }
          }
        }
      }

      goto LABEL_44;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14_7();

  FigSignalErrorAtGM();
}

uint64_t CMPhotoCreateFigExtrinsicsDictFromExtrinsics(const __CFAllocator *a1, unint64_t a2, unint64_t a3, int a4, int a5, CFMutableDictionaryRef *a6)
{
  cf = 0;
  if (!a6)
  {
    return 0;
  }

  if (a2 | a3)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E69717C8], 0);
      if (v14)
      {
        v25 = v14;
        v15 = 0;
        goto LABEL_36;
      }

      v15 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      if (!v15)
      {
        v25 = 4294950305;
        goto LABEL_36;
      }

      v27 = a6;
      if (a2)
      {
        v16 = CFGetTypeID(a2);
        if (v16 == CFArrayGetTypeID() && CFArrayGetCount(a2) == 3)
        {
          v17 = a5;
          v18 = 0;
          while (FigCFArrayGetDoubleAtIndex())
          {
            v19 = round(0.0 * 1000000.0);
            if (v19 < -2147483650.0 || v19 > 2147483650.0)
            {
              goto LABEL_34;
            }

            appended = CMPhotoCFArrayAppendInt32(v15, v19);
            if (appended)
            {
              goto LABEL_35;
            }

            if (++v18 == 3)
            {
              goto LABEL_19;
            }
          }

          v25 = 4294950306;
LABEL_36:
          CFRelease(v13);
          if (v15)
          {
LABEL_25:
            CFRelease(v15);
          }

          goto LABEL_26;
        }

LABEL_34:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_14();
        appended = FigSignalErrorAtGM();
LABEL_35:
        v25 = appended;
        goto LABEL_36;
      }

      v17 = a5;
      v21 = 3;
      do
      {
        appended = CMPhotoCFArrayAppendInt32(v15, 0);
        if (appended)
        {
          goto LABEL_35;
        }

        --v21;
      }

      while (v21);
LABEL_19:
      CFDictionarySetValue(v13, *MEMORY[0x1E69717B0], v15);
      if (a3)
      {
        if (CMPhotoCreateFigExtrinsicsDictFromExtrinsics_onceToken != -1)
        {
          dispatch_once(&CMPhotoCreateFigExtrinsicsDictFromExtrinsics_onceToken, &__block_literal_global_6);
        }

        appended = CMPhotoCreateQuaternionArrayFromRotationMatrix(a1, a3, 1, &cf);
        if (appended)
        {
          goto LABEL_35;
        }

        CFDictionarySetValue(v13, *MEMORY[0x1E69717C0], cf);
      }

      v22 = MEMORY[0x1E695E4D0];
      if (a4)
      {
        v23 = cmpweak_kFigCameraExtrinsics_WriteAllFields();
        CFDictionarySetValue(v13, v23, *v22);
      }

      if (v17)
      {
        v24 = cmpweak_kFigCameraExtrinsics_OfficialBox();
        CFDictionarySetValue(v13, v24, *v22);
      }

      v25 = 0;
      *v27 = v13;
      goto LABEL_25;
    }

    v25 = 4294950305;
  }

  else
  {
    v25 = 4294950306;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

uint64_t CMPhotoCreateQuaternionArrayFromRotationMatrix(const __CFAllocator *a1, CFTypeRef cf, int a3, CFMutableArrayRef *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFArrayGetTypeID()) && CFArrayGetCount(cf) == 9)
  {
    Mutable = CFArrayCreateMutable(a1, 3, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v10 = Mutable;
    v11 = 0;
    v12 = &v55;
    while (2)
    {
      v13 = 0;
      v14 = v12;
      do
      {
        if (!FigCFArrayGetDoubleAtIndex())
        {
          v19 = 4294950306;
          goto LABEL_14;
        }

        v13 += 3;
        ++v14;
      }

      while (v13 != 9);
      ++v11;
      v12 += 3;
      if (v11 != 3)
      {
        continue;
      }

      break;
    }

    memset(v54, 0, sizeof(v54));
    if (v62 >= 0.0)
    {
      if (v55 >= -v58)
      {
        v17 = v62 + v55 + 1.0 + v58;
        v15 = v59 - v61;
        v54[0].f64[0] = v59 - v61;
        v21.f64[0] = v60;
        v21.f64[1] = v56;
        v16 = vsubq_f64(v21, v57);
        *(v54 + 8) = v16;
        v54[1].f64[1] = v17;
        v18 = v17;
      }

      else
      {
        v18 = v62 + 1.0 - v55 - v58;
        v15 = v60 + v57.f64[0];
        v16.f64[0] = v59 + v61;
        v54[0].f64[0] = v60 + v57.f64[0];
        v54[0].f64[1] = v59 + v61;
        v17 = v56 - v57.f64[1];
        v54[1].f64[0] = v18;
        v54[1].f64[1] = v56 - v57.f64[1];
      }
    }

    else if (v55 <= v58)
    {
      v16.f64[0] = 1.0 - v55 + v58 - v62;
      v15 = v56 + v57.f64[1];
      v17 = v60 - v57.f64[0];
      v54[0].f64[0] = v56 + v57.f64[1];
      v54[0].f64[1] = v16.f64[0];
      v54[1].f64[0] = v59 + v61;
      v54[1].f64[1] = v60 - v57.f64[0];
      v18 = v16.f64[0];
    }

    else
    {
      v15 = v55 + 1.0 - v58 - v62;
      v16.f64[0] = v56 + v57.f64[1];
      v17 = v59 - v61;
      v54[0].f64[0] = v15;
      v54[0].f64[1] = v56 + v57.f64[1];
      v54[1].f64[0] = v60 + v57.f64[0];
      v54[1].f64[1] = v59 - v61;
      v18 = v15;
    }

    if (v17 < 0.0)
    {
      v54[0] = vnegq_f64(v54[0]);
      v54[1] = vnegq_f64(v54[1]);
      v16.f64[0] = v54[0].f64[1];
      v15 = v54[0].f64[0];
    }

    v22 = fabs(v15);
    v23 = fabs(v16.f64[0]);
    v24 = v22 > v23 && v22 > fabs(v54[1].f64[0]) && v22 > fabs(v54[1].f64[1]);
    v50[0] = v24;
    if (v23 <= v22)
    {
      v28 = 0;
      v26 = v54[1].f64[1];
      v25 = fabs(v54[1].f64[0]);
    }

    else
    {
      v25 = fabs(v54[1].f64[0]);
      v26 = v54[1].f64[1];
      v27 = v23 > fabs(v54[1].f64[1]);
      v28 = v23 > v25 && v27;
    }

    v29 = 0;
    v50[1] = v28;
    v30 = v25 > v22;
    if (v25 <= v23)
    {
      v30 = 0;
    }

    v31 = fabs(v26);
    if (v25 <= v31)
    {
      v30 = 0;
    }

    v50[2] = v30;
    v32 = v31 > v22;
    if (v31 <= v23)
    {
      v32 = 0;
    }

    if (v31 <= v25)
    {
      v32 = 0;
    }

    v50[3] = v32;
    if (a3)
    {
      v33 = 30;
    }

    else
    {
      v33 = 14;
    }

    v34 = 0.5 / sqrt(v18) * (1 << v33);
    v53[0] = 0;
    v53[1] = 0;
    v51 = 0u;
    v52 = 0u;
    do
    {
      v35 = v34 * v54[0].f64[v29];
      v36 = llround(v35);
      if (v50[v29])
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      *(v53 + v29) = v37;
      *(&v51 + v29++) = v37 * v37;
    }

    while (v29 != 4);
    v38 = 1 << (2 * v33);
    v39 = v38 - v52 - (v51 + *(&v51 + 1));
    if ((v39 & 0x8000000000000000) == 0)
    {
      v40 = 1 << (v33 + 7);
      if (v39 - *(&v52 + 1) >= -v40 && v39 - *(&v52 + 1) <= v40)
      {
        goto LABEL_58;
      }
    }

    v42 = 0;
    v43 = sqrt(v51 / v38 + *(&v51 + 1) / v38 + v52 / v38 + *(&v52 + 1) / v38);
    v44 = v38;
    do
    {
      v45 = llround(v34 * v54[0].f64[v42] / v43);
      *(v53 + v42) = v45;
      v44 -= v45 * v45;
      ++v42;
    }

    while (v42 != 3);
    if ((v44 & 0x8000000000000000) == 0)
    {
      goto LABEL_58;
    }

    for (i = 0; i != 3; ++i)
    {
      v47 = v34 * v54[0].f64[i] / v43;
      *(v53 + i) = v47;
      v38 -= (v47 * v47);
    }

    if (v38 < 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      appended = FigSignalErrorAtGM();
    }

    else
    {
LABEL_58:
      v48 = 0;
      while (1)
      {
        appended = FigCFArrayAppendInt32();
        if (appended)
        {
          break;
        }

        v48 += 4;
        if (v48 == 12)
        {
          v19 = 0;
          *a4 = v10;
          return v19;
        }
      }
    }

    v19 = appended;
LABEL_14:
    CFRelease(v10);
    return v19;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t CMPhotoCreateExtrinsicsPositionArrayFromExtrinsicsValues(const __CFAllocator *a1, int a2, int a3, int a4, CFMutableArrayRef *a5)
{
  if (!a5)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, 3, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v10 = Mutable;
  appended = CMPhotoCFArrayAppendDouble(Mutable, a2 / 1000000.0);
  if (appended || (appended = CMPhotoCFArrayAppendDouble(v10, a3 / 1000000.0), appended))
  {
    v12 = appended;
    goto LABEL_9;
  }

  v12 = CMPhotoCFArrayAppendDouble(v10, a4 / 1000000.0);
  if (v12)
  {
LABEL_9:
    CFRelease(v10);
    return v12;
  }

  *a5 = v10;
  return v12;
}

uint64_t CMPhotoCreateIntrinsicsMatrixFromFigIntrinsicsDict(const __CFAllocator *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, unint64_t a8)
{
  if (!(a7 | a8))
  {
    return 0;
  }

  if (!cf)
  {
    return 4294950306;
  }

  v10 = CFGetTypeID(cf);
  if (v10 != CFDictionaryGetTypeID())
  {
    return 4294950306;
  }

  Mutable = CFArrayCreateMutable(a1, 3, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v12 = Mutable;
  if (!FigCFDictionaryGetIntIfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent())
  {
    goto LABEL_34;
  }

  cmpweak_kFigCameraIntrinsics_OfficialBox();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  v13 = 1;
  if (FigCFDictionaryGetInt32IfPresent())
  {
    if (FigCFDictionaryGetInt32IfPresent())
    {
      v14 = 0 / 1uLL;
      goto LABEL_13;
    }

LABEL_34:
    v19 = 4294950306;
    goto LABEL_31;
  }

  v14 = 0.0;
LABEL_13:
  v15 = 1uLL;
  v16 = 0 / 1uLL;
  if (FigCFDictionaryGetInt32IfPresent())
  {
    v17 = 0 / v15;
    if (v17 != v16)
    {
      v13 = 0;
    }
  }

  else
  {
    v17 = 0 / 1uLL;
  }

  appended = CMPhotoCFArrayAppendDouble(v12, v16);
  if (appended || (appended = CMPhotoCFArrayAppendDouble(v12, v14), appended) || (appended = CMPhotoCFArrayAppendDouble(v12, 0 / v15), appended) || (appended = OUTLINED_FUNCTION_8_11(), appended) || (appended = CMPhotoCFArrayAppendDouble(v12, v17), appended) || (appended = CMPhotoCFArrayAppendDouble(v12, 0 / v15), appended) || (appended = OUTLINED_FUNCTION_8_11(), appended) || (appended = OUTLINED_FUNCTION_8_11(), appended) || (appended = CMPhotoCFArrayAppendDouble(v12, 1.0), appended))
  {
    v19 = appended;
    goto LABEL_31;
  }

  if (a7)
  {
    *a7 = v13;
  }

  if (!a8)
  {
    v19 = 0;
LABEL_31:
    CFRelease(v12);
    return v19;
  }

  v19 = 0;
  *a8 = v12;
  return v19;
}

uint64_t CMPhotoCreateRotationMatrixFromQuaternionArray(const __CFAllocator *a1, const void *a2, int a3, __CFArray **a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, 9, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v9 = Mutable;
  if (a2)
  {
    v10 = CFGetTypeID(a2);
    if (v10 == CFArrayGetTypeID() && CFArrayGetCount(a2) == 3)
    {
      v11 = 0;
      v22 = 0;
      valuePtr = 0;
      p_valuePtr = &valuePtr;
      while (FigCFArrayGetInt32AtIndex())
      {
        ++v11;
        p_valuePtr = (p_valuePtr + 4);
        if (v11 == 3)
        {
          v13 = 16384.0;
          if (a3)
          {
            v13 = 1073741820.0;
          }

          if (valuePtr / v13 * (valuePtr / v13) + SHIDWORD(valuePtr) / v13 * (SHIDWORD(valuePtr) / v13) + v22 / v13 * (v22 / v13) <= 1.00001)
          {
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            FigCFArrayAppendDouble();
            v14 = 0;
            *a4 = v9;
            return v14;
          }

          break;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_1();
    }

    v14 = FigSignalErrorAtGM();
    v15 = 0;
  }

  else
  {
    valuePtr = 0;
    v15 = CFNumberCreate(a1, kCFNumberDoubleType, &valuePtr);
    if (v15 && (valuePtr = 0x3FF0000000000000, (v16 = CFNumberCreate(a1, kCFNumberDoubleType, &valuePtr)) != 0))
    {
      v17 = v16;
      for (i = 0; i != 9; ++i)
      {
        if ((i & 3) != 0)
        {
          v19 = v15;
        }

        else
        {
          v19 = v17;
        }

        CFArrayAppendValue(v9, v19);
      }

      v14 = 0;
      *a4 = v9;
      v9 = v17;
    }

    else
    {
      v14 = 4294950305;
    }
  }

  CFRelease(v9);
  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t CMPhotoCompressDataWithContentEncoding(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, __CFData **a4)
{
  result = 4294950306;
  if (!theData || !a3 || !a4)
  {
    return result;
  }

  Length = CFDataGetLength(theData);
  v9 = FigCFEqual();
  if (v9)
  {
    Length += 6;
    v10 = COMPRESSION_ZLIB;
    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    v10 = COMPRESSION_BROTLI;
LABEL_8:
    Mutable = CFDataCreateMutable(a1, Length);
    if (!Mutable)
    {
      return 4294950305;
    }

    v12 = Mutable;
    CFDataSetLength(Mutable, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v12);
    v14 = MutableBytePtr;
    if (v9)
    {
      *MutableBytePtr = -25480;
      v14 = MutableBytePtr + 2;
      BytePtr = CFDataGetBytePtr(theData);
      v16 = CFDataGetLength(theData);
      v17 = adler32(1uLL, BytePtr, v16);
      Length -= 6;
    }

    else
    {
      v17 = 0;
    }

    v18 = CFDataGetBytePtr(theData);
    v19 = CFDataGetLength(theData);
    v20 = compression_encode_buffer(v14, Length, v18, v19, 0, v10);
    if (v20)
    {
      v21 = v20;
      if (v9)
      {
        *&v14[v20] = bswap32(v17);
        v21 = v20 + 6;
      }

      CFDataSetLength(v12, v21);
      result = 0;
      *a4 = v12;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19();
      v22 = FigSignalErrorAtGM();
      CFRelease(v12);
      return v22;
    }

    return result;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCreateMdcvDictionary(const __CFData *a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    if (CFDataGetLength(a1) != 24)
    {
      return 4294950194;
    }

    BytePtr = CFDataGetBytePtr(a1);
    Mutable = CFDictionaryCreateMutable(a2, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v9 = Mutable;
    OUTLINED_FUNCTION_2_15();
    v13 = CMPhotoCFDictionarySetInt32(v10, v11, v12);
    if (v13 || (OUTLINED_FUNCTION_2_15(), v13 = CMPhotoCFDictionarySetInt32(v9, v14, v15), v13) || (OUTLINED_FUNCTION_2_15(), v13 = CMPhotoCFDictionarySetInt32(v9, v16, v17), v13) || (OUTLINED_FUNCTION_2_15(), v13 = CMPhotoCFDictionarySetInt32(v9, v18, v19), v13) || (OUTLINED_FUNCTION_2_15(), v13 = CMPhotoCFDictionarySetInt32(v9, v20, v21), v13) || (OUTLINED_FUNCTION_2_15(), v13 = CMPhotoCFDictionarySetInt32(v9, v22, v23), v13) || (OUTLINED_FUNCTION_2_15(), v13 = CMPhotoCFDictionarySetInt32(v9, v24, v25), v13) || (OUTLINED_FUNCTION_2_15(), v13 = CMPhotoCFDictionarySetInt32(v9, v26, v27), v13) || (v13 = CMPhotoCFDictionarySetInt32(v9, @"MaxDisplayMasteringLuminance", bswap32(*(BytePtr + 4))), v13))
    {
      v3 = v13;
    }

    else
    {
      v3 = CMPhotoCFDictionarySetInt32(v9, @"MinDisplayMasteringLuminance", bswap32(*(BytePtr + 5)));
      if (!v3)
      {
        *a3 = v9;
        return v3;
      }
    }

    CFRelease(v9);
  }

  return v3;
}

uint64_t CMPhotoCreateCclvDictionary(const __CFData *a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    if (CFDataGetLength(a1) < 2)
    {
      return 4294950194;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v8 = (((*BytePtr << 26 >> 31) & 0x18) + ((*BytePtr >> 1) & 4) + ((*BytePtr >> 2) & 4) + (*BytePtr & 4)) | 1u;
    if (CFDataGetLength(a1) != v8)
    {
      return 4294950194;
    }

    Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v10 = Mutable;
    if ((*BytePtr & 0x20) != 0)
    {
      v12 = OUTLINED_FUNCTION_4_11(@"ContentPrimariesXG", *(BytePtr + 1));
      if (v12)
      {
        goto LABEL_23;
      }

      v12 = OUTLINED_FUNCTION_4_11(@"ContentPrimariesYG", *(BytePtr + 5));
      if (v12)
      {
        goto LABEL_23;
      }

      v12 = OUTLINED_FUNCTION_4_11(@"ContentPrimariesXB", *(BytePtr + 9));
      if (v12)
      {
        goto LABEL_23;
      }

      v12 = OUTLINED_FUNCTION_4_11(@"ContentPrimariesYB", *(BytePtr + 13));
      if (v12)
      {
        goto LABEL_23;
      }

      v12 = OUTLINED_FUNCTION_4_11(@"ContentPrimariesXR", *(BytePtr + 17));
      if (v12)
      {
        goto LABEL_23;
      }

      v12 = OUTLINED_FUNCTION_4_11(@"ContentPrimariesYR", *(BytePtr + 21));
      if (v12)
      {
        goto LABEL_23;
      }

      v11 = 6;
      if (!*BytePtr)
      {
LABEL_21:
        v3 = 0;
        *a3 = v10;
        return v3;
      }
    }

    else
    {
      v11 = 0;
      if (!*BytePtr)
      {
        goto LABEL_21;
      }
    }

    v13 = BytePtr + 1;
    v12 = OUTLINED_FUNCTION_4_11(@"ContentMinLuminanceValue", *&BytePtr[4 * v11 + 1]);
    if (!v12)
    {
      if (!*BytePtr)
      {
        goto LABEL_21;
      }

      v12 = OUTLINED_FUNCTION_4_11(@"ContentMaxLuminanceValue", *&v13[4 * (v11 | 1)]);
      if (!v12)
      {
        if (!*BytePtr)
        {
          goto LABEL_21;
        }

        v12 = OUTLINED_FUNCTION_4_11(@"ContentAvgLuminanceValue", *&v13[4 * v11 + 8]);
        if (!v12)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_23:
    v3 = v12;
    CFRelease(v10);
  }

  return v3;
}