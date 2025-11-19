uint64_t _compressAuxImage(const __CFAllocator *a1, uint64_t a2, __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, CFTypeRef *, const __CFDictionary **, char *, CFTypeRef *, __CVBuffer **, CFTypeRef *, CFTypeRef *), uint64_t a7, __CFData *a8)
{
  v50 = 0;
  v51[0] = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v45 = 0;
  value = 0;
  v43 = 0;
  cf = 0;
  v42 = 0;
  HIDWORD(v41) = 0;
  v13 = a6(a4, a7, v51, &v50, &v41 + 4, &v48, &v49, &cf, &v43);
  if (v13)
  {
    v31 = v13;
LABEL_47:
    CMPhotoCompressedAuxImageStorageDestroy(0);
    goto LABEL_24;
  }

  if (HIDWORD(v41) == 3)
  {
    v31 = 0;
    goto LABEL_47;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v49);
  if (v50 && CFDictionaryContainsKey(v50, @"IntInvalidValue"))
  {
    v15 = 1;
    goto LABEL_14;
  }

  v15 = 1;
  if (PixelFormatType <= 1278226735)
  {
    if (PixelFormatType == 825306677)
    {
      goto LABEL_14;
    }

    v16 = 825437747;
  }

  else
  {
    if (PixelFormatType == 1278226736 || PixelFormatType == 1278226742)
    {
      goto LABEL_14;
    }

    v16 = 1932996149;
  }

  if (PixelFormatType != v16)
  {
    v15 = 0;
  }

LABEL_14:
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v31 = 4294950305;
    goto LABEL_47;
  }

  v18 = Mutable;
  v19 = CMPhotoQualityControllerCopyDefaultControllerForAuxiliaryImage(1785750887, v15, &value, &v45);
  if (v19)
  {
    goto LABEL_43;
  }

  if (value)
  {
    CFDictionarySetValue(v18, @"QualityControllerType", value);
  }

  if (v45)
  {
    CFDictionarySetValue(v18, @"QualityControllerParameters", v45);
  }

  CMPhotoCFDictionarySetInt32(v18, @"Subsampling", 6);
  v39 = 0u;
  v40 = 0u;
  v19 = CMPhotoUnifiedJPEGEncoderEncode(a2, v18, v49, a5, &v39, 1, 1, a8);
  if (v19)
  {
LABEL_43:
    v31 = v19;
    v32 = 0;
  }

  else
  {
    theArraya = a3;
    v20 = v47;
    v21 = v48;
    v23 = v50;
    v22 = v51[0];
    v24 = HIDWORD(v41);
    v25 = v43;
    v26 = cf;
    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
    CMPhotoGetPixelBufferCLAPAsRect(v49);
    LODWORD(v35) = 6;
    HIDWORD(v34) = BitDepthForPixelFormat;
    LOBYTE(v34) = v15;
    CMPhotoCompressedAuxImageStorageCreate(v20, 1, v22, v21, v23, 0, v24, v26, v25, v34, vcvtad_u64_f64(v28), vcvtad_u64_f64(v29), v35, &v42, v36, theArraya, v39.i64[0], v39.i64[1], v40, *(&v40 + 1), v41, v42, SHIDWORD(v42), v43, cf, v45, value);
    v31 = v30;
    v32 = v42;
    if (!v30)
    {
      CFArrayAppendValue(theArray, v42);
      v32 = 0;
      v42 = 0;
    }
  }

  CMPhotoCompressedAuxImageStorageDestroy(v32);
  CFRelease(v18);
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v51[0])
  {
    CFRelease(v51[0]);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v31;
}

uint64_t _applejpeg_write(UInt8 *bytes, int a2, uint64_t a3)
{
  CFDataAppendBytes(*(a3 + 8), bytes, a2);
  *a3 += a2;
  return 0;
}

uint64_t CMPhotoByteStreamReadAndCreateData(uint64_t a1, unint64_t a2, uint64_t a3, CFDataRef *a4, CFIndex *a5)
{
  if (a4)
  {
    v21 = 0;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v10)
    {
      return 4294954514;
    }

    v22 = 0;
    v11 = v10(a1, a3, &v21);
    if (v11)
    {
      return v11;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      return 4294950190;
    }

    if (v21 >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = v21;
    }

    v13 = *MEMORY[0x1E695E480];
    v14 = MEMORY[0x1AC550000](*MEMORY[0x1E695E480], v12, 1909800069, 0);
    if (!v14)
    {
      return 4294950305;
    }

    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v16)
    {
      v17 = v16(a1, v12, a3, v15, &v22);
      if (v17)
      {
        v19 = v17;
      }

      else if (v22 == v12)
      {
        v18 = CFDataCreateWithBytesNoCopy(v13, v15, v12, v13);
        if (v18)
        {
          *a4 = v18;
          goto LABEL_16;
        }

        v19 = 4294950305;
      }

      else
      {
        v19 = 4294950194;
      }
    }

    else
    {
      v19 = 4294954514;
    }

    CFAllocatorDeallocate(v13, v15);
    return v19;
  }

  v12 = 0;
LABEL_16:
  v19 = 0;
  if (a5)
  {
    *a5 = v12;
  }

  return v19;
}

uint64_t CMPhotoUnifiedJPEGEncoderGetAROTSegmentSize(uint64_t a1)
{
  if (a1)
  {
    return 4 * a1 + 14;
  }

  else
  {
    return 0;
  }
}

uint64_t _scannerCallbackMarker(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  if ((a3 - 192) < 4)
  {
    v6 = *(a5 + 16);
    if (*(a5 + 16) != 0)
    {
      if (a4 > 8)
      {
        sourceBytes[0] = bswap32(*(a5 + 24)) >> 16;
        sourceBytes[1] = bswap32(v6) >> 16;
        if (*a5)
        {
          return CMBlockBufferReplaceDataBytes(sourceBytes, *a5, a2 + 5, 4uLL);
        }

        return 4294950304;
      }

      _scannerCallbackMarker_cold_1(&v14);
      return v14;
    }

    return 0;
  }

  if (a3 == 217)
  {
    result = 0;
    *(a5 + 56) = a2;
    return result;
  }

  if (a3 != 218)
  {
    return 0;
  }

  v8 = a2 + a4 + 2;
  *(a5 + 48) = v8;
  if (!*(a5 + 12))
  {
    goto LABEL_14;
  }

  v9 = *(a5 + 64);
  if (v9)
  {
    *(v9 + 4 * (*(a5 + 72))++) = *(a5 + 32);
    *(a5 + 32) += 2;
    v8 = *(a5 + 48);
  }

  v10 = v8 - 2;
  *(a5 + 48) = v8 - 2;
  v13[0] = -1;
  v11 = *(a5 + 10);
  v13[1] = v11 | 0xD0;
  *(a5 + 10) = (v11 + 1) & 7;
  if (!*a5)
  {
    return 4294950304;
  }

  result = CMBlockBufferReplaceDataBytes(v13, *a5, v10, 2uLL);
  if (!result)
  {
LABEL_14:
    if (!*(a5 + 8) && !*(a5 + 11))
    {
      return 4294950191;
    }

    return 0;
  }

  return result;
}

uint64_t _scannerCallbackRestartMarker(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 64);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(a5 + 72);
  if (*(a5 + 40) > v6)
  {
    *(v5 + 4 * v6) = *(a5 + 32) + a3;
    ++*(a5 + 72);
LABEL_4:
    if (!*(a5 + 9))
    {
      return 0;
    }

    v7 = *(a5 + 10);
    sourceBytes = v7 | 0xD0;
    *(a5 + 10) = (v7 + 1) & 7;
    if (*a5)
    {
      return CMBlockBufferReplaceDataBytes(&sourceBytes, *a5, a2 + 1, 1uLL);
    }

    else
    {
      return 4294950304;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t __CMPhotoUnifiedJPEGEncoderWriteAROTTableToPtr_block_invoke(void *a1, size_t __n, void *__src)
{
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 24);
  v5 = v4 + __n;
  if (v4 + __n > a1[5])
  {
    return 4294950304;
  }

  v8 = (a1[6] + v4);
  if (v8 != __src)
  {
    memcpy(v8, __src, __n);
    v3 = *(a1[4] + 8);
    v5 = *(v3 + 24) + __n;
  }

  result = 0;
  *(v3 + 24) = v5;
  return result;
}

uint64_t CMPhotoUnifiedJPEGEncoderEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64x2_t *a5, uint64_t a6, uint64_t a7, __CFData *a8)
{
  v8 = a5[1];
  v10[0] = *a5;
  v10[1] = v8;
  return _encodeBuffer(a1, a2, a3, a4, v10, a6, a7, a8, v10[0], 0, 0, CMPhotoRectZero_0, a8);
}

uint64_t _encodeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64x2_t a9, unint64_t *a10, uint64_t a11, CMSampleBufferRef *a12, __CFData *a13)
{
  v13 = MEMORY[0x1EEE9AC00]();
  v190 = v19;
  sbuf = 0;
  v221 = 0;
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v214 = 0;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  *v200 = 0u;
  v201 = 0u;
  if ((a12 == 0) != (a13 != 0))
  {
    _encodeBuffer_cold_12();
    Capabilities = 0;
    goto LABEL_460;
  }

  v20 = v18;
  v21 = v17;
  v22 = v14;
  v198 = v13;
  pixelBuffer = v15;
  v191 = v16;
  v23 = a11;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    v23 = a11;
  }

  v24 = v21[1];
  v196 = *v21;
  v26 = v21[2];
  v25 = v21[3];
  v27 = *a10;
  v28 = a10[1];
  v29 = a10[2];
  v30 = a10[3];
  *&v202 = v23;
  LOWORD(v201) = 257;
  DWORD2(v202) = -1;
  HIDWORD(v201) = v20;
  v200[0] = 5;
  *(&v201 + 4) = 0x10000000101;
  *&v200[2] = 8;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  CMPhotoGetDestinationPixelFormatFromOptionsJPEG(v22, PixelFormatType, &v200[2], v200, 0);
  if (v22)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetSizeIfPresent(v22, @"BitDepth", &v200[2]);
  }

  v32 = v196;
  if (v27 | v28 || v29 | v30)
  {
    if (v196 | v24 || v26 | v25)
    {
      if (v26 != v29 || (v29 = v26, v45 = v25 == v30, v30 = v25, !v45))
      {
        _encodeBuffer_cold_5(&v239);
LABEL_157:
        Capabilities = v239;
        v61 = v191;
        v63 = v198;
        v62 = pixelBuffer;
        goto LABEL_107;
      }
    }

    else
    {
      CMPhotoGetPixelBufferCLAPAsRect(pixelBuffer);
      if (v29 != vcvtad_u64_f64(v34) || v30 != vcvtad_u64_f64(v33))
      {
        _encodeBuffer_cold_1(&v239);
        goto LABEL_157;
      }

      v32 = v196;
    }

    v35 = 0;
    v36 = v30 + v28;
    if (a9.i64[0] >= v29 + v27)
    {
      v37 = v29 + v27;
    }

    else
    {
      v37 = a9.i64[0];
    }

    if (a9.i64[1] >= v36)
    {
      v38 = v30 + v28;
    }

    else
    {
      v38 = a9.u64[1];
    }

    v39 = v37 - v27;
    if (v37 <= v27)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = v38 > v28;
      v44 = v38 - v28;
      if (v43)
      {
        v35 = v44;
        v40 = v39;
        v41 = v28;
        v42 = v27;
      }
    }

    if (v27 != v42 || v28 != v41 || v29 != v40 || v30 != v35)
    {
      _encodeBuffer_cold_4(&v239);
      goto LABEL_157;
    }

    LOBYTE(v201) = (v27 | v28) == 0;
    v45 = v29 + v27 == a9.i64[0] && v36 == a9.i64[1];
    v46 = v45;
    BYTE1(v201) = v46;
    if (v27 | v28)
    {
      v48 = v200[0] == 5 || v200[0] == 2;
      v49 = v48;
      v50 = 7;
      if (v48)
      {
        v50 = 15;
      }

      if ((v50 & v28) != 0)
      {
        _encodeBuffer_cold_2(&v239);
        goto LABEL_157;
      }

      v47 = 0;
      v45 = v49 == 0;
      v51 = 3;
      if (!v45)
      {
        v51 = 4;
      }

      DWORD2(v202) = (v28 >> v51) - 1;
    }

    else
    {
      v47 = v46 ^ 1;
    }

    BYTE3(v201) = v47;
  }

  if (v32 | v24 || v26 | v25)
  {
    *&v205 = v32;
    *(&v205 + 1) = v24;
    v206.i64[0] = v26;
    v206.i64[1] = v25;
    v52 = v32;
    v53.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(pixelBuffer);
    v53.f64[1] = v54;
    v56.f64[1] = v55;
    v203 = vcvtq_u64_f64(vrndaq_f64(v53));
    v204 = vcvtq_u64_f64(vrndaq_f64(v56));
    v239 = v52;
    v240 = v24;
    v241.i64[0] = v26;
    v241.i64[1] = v25;
    CMPhotoApplyCropCMPhotoRectToRect(&v203, &v239);
  }

  else
  {
    v57.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(pixelBuffer);
    v57.f64[1] = v60;
    v203 = vcvtq_u64_f64(vrndaq_f64(v57));
    v204.i64[0] = vcvtad_u64_f64(v58);
    v204.i64[1] = vcvtad_u64_f64(v59);
    v205 = 0uLL;
    v206 = v204;
  }

  v61 = v191;
  if (*&a9 == 0)
  {
    v207 = v204;
  }

  else
  {
    v207 = a9;
  }

  v63 = v198;
  v62 = pixelBuffer;
  LODWORD(lengthAtOffsetOut[0]) = 4;
  if (!v22 || !CMPhotoCFDictionaryGetIntIfPresent())
  {
    if (v207.i64[1] * v207.i64[0] < 0xF42400uLL)
    {
      v66 = 5;
    }

    else
    {
      v66 = 0;
    }

    Int = CMPhotoCFNumberCreateInt(v66);
    goto LABEL_67;
  }

  Value = CFDictionaryGetValue(v22, @"QualityControllerParameters");
  if (Value)
  {
    Int = CFRetain(Value);
LABEL_67:
    v67 = Int;
    goto LABEL_68;
  }

  v67 = 0;
LABEL_68:
  v68 = CMPhotoJPEGQualityControllerParse(*v198, v206.i64[0], v206.i64[1], v200[0], *&v200[2], lengthAtOffsetOut[0], v67, v190, &v208);
  if (v68)
  {
    Capabilities = v68;
    goto LABEL_105;
  }

  v69 = BYTE4(v210);
  v70 = v190;
  if (BYTE4(v210))
  {
    if (v190 == 2)
    {
      _encodeBuffer_cold_3(&v239);
      Capabilities = v239;
      goto LABEL_105;
    }

    v70 = 1;
  }

  if (v201)
  {
    v71 = *(v198 + 64);
    if (v71)
    {
      *(v198 + 64) = 0;
      free(v71);
      v69 = BYTE4(v210);
    }

    *(v198 + 64) = 0;
    *(v198 + 32) = 0u;
    *(v198 + 48) = 0u;
    v73 = v207.i64[1] * v207.i64[0] > 0x2DC6BFuLL && v69 == 0;
    *(v198 + 32) = v73;
    if (v70 == 1)
    {
      Capabilities = 0;
    }

    else
    {
      LOBYTE(v239) = 0;
      _isHWAvailableHelper(&v239, 0);
      LOBYTE(v227) = 0;
      if (v239)
      {
        Capabilities = CMPhotoParavirtualizedGuestJPEGHardwareGetCapabilities(0, 0, 0, 0, &v227, 0);
        if (Capabilities)
        {
          v75 = 0;
        }

        else
        {
          v75 = v227;
        }
      }

      else
      {
        v75 = JPEGDeviceInterface_supportsRSTLogging();
        Capabilities = 0;
      }

      v73 = *(v198 + 32) & v75;
      *(v198 + 32) = v73;
    }

    if (v73)
    {
      v76 = v200[0] == 5 || v200[0] == 2;
      v77 = -8;
      if (v76)
      {
        v77 = -16;
      }

      v78 = 8;
      if (v76)
      {
        v78 = 16;
      }

      v79 = 3;
      if (v76)
      {
        v79 = 4;
      }

      v80 = (v78 + v207.i64[1] + (v77 | -v207.i64[1])) >> v79;
      *(v198 + 56) = v80 - 1;
      if (v80 == 1)
      {
        Capabilities = 4294950304;
        goto LABEL_105;
      }

      v81 = malloc_type_calloc(v80 - 1, 4uLL, 0x100004052888210uLL);
      *(v198 + 64) = v81;
      if (!v81)
      {
        Capabilities = 4294950305;
        goto LABEL_105;
      }
    }
  }

  else
  {
    Capabilities = 0;
  }

  if (v191 || v70 == 1)
  {
    BYTE2(v201) = 0;
  }

  else if (v70)
  {
    BYTE2(v201) = 1;
  }

  else
  {
    BYTE2(v201) = _isHWAvailableHelper(0, 0);
  }

LABEL_105:
  if (v67)
  {
    CFRelease(v67);
  }

LABEL_107:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (Capabilities)
  {
    goto LABEL_460;
  }

  if (v20 == 1 && v211)
  {
    _encodeBuffer_cold_11(&v239);
    goto LABEL_482;
  }

  CVPixelBufferGetPixelFormatType(v62);
  CMPhotoGetPixelBufferSize(v62);
  if (!BYTE2(v201))
  {
    goto LABEL_390;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v234 = 0;
  dataPointerOut = 0;
  v269[0] = 0;
  v233 = 0;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  if (!_isHWAvailableHelper(&v225, &v224))
  {
    _encodeBuffer_cold_9(&v239);
    v82 = 0;
LABEL_480:
    v186 = 0;
    cf = 0;
    v185 = 0;
    Capabilities = v239;
    goto LABEL_343;
  }

  if (*&v200[2] != 8 && (!JPEGDeviceInterface_supports12bitsFormat() || *&v200[2] != 12))
  {
    fig_log_get_emitter();
    Capabilities = FigSignalErrorAtGM();
    v82 = 0;
    v186 = 0;
    cf = 0;
    v185 = 0;
    goto LABEL_343;
  }

  v82 = 0;
  v189 = *(v63 + 24);
  if (!v189 && !v225)
  {
    v82 = JPEGDeviceInterface_openDriverConnection();
    v189 = v82;
    if (!v82)
    {
      _encodeBuffer_cold_6(&v239);
      goto LABEL_480;
    }
  }

  v195 = v203.u64[1];
  v197 = v203.i64[0];
  v193 = v204.u64[1];
  v194 = v204.i64[0];
  v83 = CVPixelBufferGetPixelFormatType(v62);
  v223 = 0;
  IsNon601YCbCr = CMPhotoPixelBufferIsNon601YCbCr(v62, &v223);
  v85 = v200[0];
  v86 = *&v200[2];
  if (*&v200[2] == 12)
  {
    if (!JPEGDeviceInterface_supports12bitsFormat())
    {
      goto LABEL_237;
    }

    if (v83 > 1882468913)
    {
      if (v83 <= 2016686639)
      {
        if (v83 > 1952854575)
        {
          if (v83 > 1953903151)
          {
            if (v83 == 1953903152)
            {
              goto LABEL_216;
            }

            if (v83 != 1953903154)
            {
              v93 = 1953903668;
              goto LABEL_204;
            }
          }

          else
          {
            if (v83 == 1952854576)
            {
              goto LABEL_216;
            }

            if (v83 != 1952854578)
            {
              v93 = 1952855092;
              goto LABEL_204;
            }
          }

          goto LABEL_226;
        }

        if (v83 <= 1885745711)
        {
          if (v83 == 1882468914)
          {
            goto LABEL_226;
          }

          v90 = 1882469428;
        }

        else
        {
          if (v83 == 1885745712)
          {
            goto LABEL_216;
          }

          if (v83 == 1885745714)
          {
            goto LABEL_226;
          }

          v90 = 1885746228;
        }
      }

      else
      {
        if (v83 > 2088265263)
        {
          if (v83 <= 2088269359)
          {
            if (v83 == 2088265264)
            {
              goto LABEL_216;
            }

            if (v83 != 2088265266)
            {
              v93 = 2088265268;
              goto LABEL_204;
            }

            goto LABEL_226;
          }

          if (v83 == 2088269364)
          {
            goto LABEL_205;
          }

          if (v83 == 2088269362)
          {
            goto LABEL_226;
          }

          v96 = 2088269360;
LABEL_215:
          if (v83 != v96)
          {
            goto LABEL_237;
          }

          goto LABEL_216;
        }

        if (v83 > 2019963439)
        {
          if (v83 == 2019963440)
          {
            goto LABEL_216;
          }

          if (v83 == 2019963442)
          {
            goto LABEL_226;
          }

          v90 = 2019963956;
        }

        else
        {
          if (v83 == 2016686640)
          {
            goto LABEL_216;
          }

          if (v83 == 2016686642)
          {
            goto LABEL_226;
          }

          v90 = 2016687156;
        }
      }

      if (v83 == v90)
      {
        v95 = v85 == 1 || v85 == 6;
        goto LABEL_227;
      }

      goto LABEL_237;
    }

    if (v83 > 762869295)
    {
      if (v83 <= 796423727)
      {
        if (v83 <= 796419631)
        {
          if (v83 != 762869296)
          {
            if (v83 != 762869298)
            {
              v89 = 30260;
LABEL_196:
              v93 = v89 | 0x2D780000;
              goto LABEL_204;
            }

            goto LABEL_226;
          }

LABEL_216:
          v95 = v85 == 5;
          goto LABEL_227;
        }

        if (v83 == 796419632)
        {
          goto LABEL_216;
        }

        if (v83 != 796419634)
        {
          v94 = 26164;
          goto LABEL_203;
        }

        goto LABEL_226;
      }

      if (v83 <= 1278226735)
      {
        if (v83 == 796423728)
        {
          goto LABEL_216;
        }

        if (v83 != 796423730)
        {
          v94 = 30260;
LABEL_203:
          v93 = v94 | 0x2F780000;
LABEL_204:
          if (v83 == v93)
          {
LABEL_205:
            v95 = v85 == 1;
            goto LABEL_227;
          }

LABEL_237:
          v86 = *&v200[2];
          goto LABEL_238;
        }

LABEL_226:
        v95 = v85 == 3;
LABEL_227:
        v88 = v95;
        goto LABEL_230;
      }

      if (v83 != 1278226736 && v83 != 1278226738)
      {
        v96 = 1882468912;
        goto LABEL_215;
      }

LABEL_219:
      v95 = v85 == 6;
      goto LABEL_227;
    }

    if (v83 <= 645428783)
    {
      if (v83 <= 645424687)
      {
        if (v83 != 642527536 && v83 != 642527538)
        {
          goto LABEL_237;
        }

        goto LABEL_219;
      }

      if (v83 == 645424688)
      {
        goto LABEL_216;
      }

      if (v83 == 645424690)
      {
        goto LABEL_226;
      }

      v92 = 26164;
    }

    else
    {
      if (v83 > 762865199)
      {
        if (v83 != 762865200)
        {
          if (v83 != 762865202)
          {
            v89 = 26164;
            goto LABEL_196;
          }

          goto LABEL_226;
        }

        goto LABEL_216;
      }

      if (v83 == 645428784)
      {
        goto LABEL_216;
      }

      if (v83 == 645428786)
      {
        goto LABEL_226;
      }

      v92 = 30260;
    }

    v93 = v92 | 0x26780000;
    goto LABEL_204;
  }

  if (*&v200[2] == 8)
  {
    UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(v83);
    v88 = 1;
    if (UncompressedPixelFormatFromCompressedPixelFormat > 1111970368)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 1380401728)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 1380401729)
        {
          goto LABEL_230;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat != 2037741171 && UncompressedPixelFormatFromCompressedPixelFormat != 2037741158)
        {
          goto LABEL_237;
        }

        goto LABEL_147;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 1111970369)
      {
        goto LABEL_230;
      }

      v91 = 1278226488;
    }

    else
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat > 875704421)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 875704422)
        {
          v88 = v85 - 5 < 2;
          goto LABEL_230;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat != 875704934)
        {
          if (UncompressedPixelFormatFromCompressedPixelFormat != 875836518)
          {
            goto LABEL_237;
          }

LABEL_230:
          if (v88 && (v197 & 1) == 0 && (v195 & 1) == 0 && !IsNon601YCbCr)
          {
            IOSurface = CVPixelBufferGetIOSurface(v62);
            if (IOSurface)
            {
              v269[0] = CFRetain(IOSurface);
              v63 = v198;
              if (v269[0])
              {
                v185 = 0;
                v186 = 0;
                cf = 0;
                goto LABEL_273;
              }
            }

            else
            {
              v269[0] = 0;
              v63 = v198;
            }

            ImageSurfaceWrappingPixelBuffer = CMPhotoCreateImageSurfaceWrappingPixelBuffer(v62, &v225 + 1, v269);
            cf = 0;
            if (!v269[0])
            {
              Capabilities = ImageSurfaceWrappingPixelBuffer;
              v185 = 0;
              v186 = 0;
              goto LABEL_343;
            }

            v185 = 0;
            v186 = 0;
            goto LABEL_273;
          }

          goto LABEL_237;
        }

LABEL_147:
        if (v85 > 6)
        {
          goto LABEL_237;
        }

        v88 = 1;
        if (((1 << v85) & 0x68) == 0)
        {
          goto LABEL_237;
        }

        goto LABEL_230;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat == 32)
      {
        goto LABEL_230;
      }

      v91 = 642527288;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != v91 || v85 != 6)
    {
      goto LABEL_237;
    }

    v88 = JPEGDeviceInterface_supports12bitsFormat() != 0;
    goto LABEL_230;
  }

LABEL_238:
  if (v86 == 8 || !JPEGDeviceInterface_supports12bitsFormat())
  {
    if (v200[0] <= 2)
    {
      v63 = v198;
      if (v200[0] == 1)
      {
        v101 = 875836518;
        goto LABEL_263;
      }
    }

    else
    {
      v63 = v198;
      if ((v200[0] - 3) < 2)
      {
        v101 = 875704934;
        goto LABEL_263;
      }

      if (v200[0] == 6)
      {
        if (JPEGDeviceInterface_supports12bitsFormat())
        {
          v101 = 1278226488;
        }

        else
        {
          v101 = 875704422;
        }

        goto LABEL_263;
      }
    }

    v101 = 875704422;
    goto LABEL_263;
  }

  v63 = v198;
  if (*&v200[2] != 12)
  {
    v101 = 0;
    goto LABEL_263;
  }

  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v83);
  v99 = v200[0] - 1;
  if (BitDepthForPixelFormat > 0xA)
  {
    if (v99 < 6)
    {
      v100 = &unk_1A5ABB9F8;
      goto LABEL_260;
    }

    v101 = 1952854576;
  }

  else
  {
    if (v99 < 6)
    {
      v100 = &unk_1A5ABB9E0;
LABEL_260:
      v101 = v100[v99];
      goto LABEL_263;
    }

    v101 = 2019963440;
  }

LABEL_263:
  if (!BYTE5(v201))
  {
    _encodeBuffer_cold_8(&v239);
    goto LABEL_480;
  }

  ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, 1, BYTE6(v201), BYTE7(v201), BYTE8(v201));
  if (ScaleAndRotateOptionsWithHWIfNeeded)
  {
    v104 = ScaleAndRotateOptionsWithHWIfNeeded;
    CMPhotoCFDictionarySetInt(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationPixelFormat", v101);
    CMPhotoCFDictionarySetBoolean(v104, @"ExactDimensions", 0);
    CMPhotoCFDictionarySetSize(v104, @"RowAlignment", 64);
    v270.origin.x = v205;
    v270.origin.y = *(&v205 + 1);
    v270.size.width = v206.u64[0];
    v270.size.height = v206.u64[1];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v270);
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(v104, @"SourceCropRectDictionary", DictionaryRepresentation);
    }

    v186 = DictionaryRepresentation;
    v106 = CMPhotoColorTripletCreateDictionaryRepresentation(0, 1);
    if (v106)
    {
      CFDictionarySetValue(v104, @"DestinationColorTripletDictionary", v106);
    }

    v185 = v106;
    cf = v104;
    MemorySurface = CMPhotoScaleAndRotateSessionTransformImage(*(v63 + 16), v62, v104, &v226);
    if (MemorySurface)
    {
LABEL_468:
      Capabilities = MemorySurface;
      goto LABEL_343;
    }

    v108 = CVPixelBufferGetIOSurface(v226);
    if (v108)
    {
      v269[0] = CFRetain(v108);
      if (v269[0])
      {
        PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(v226);
        v195 = vcvtad_u64_f64(v110);
        v197 = vcvtad_u64_f64(PixelBufferCLAPAsRect);
        v193 = vcvtad_u64_f64(v112);
        v194 = vcvtad_u64_f64(v111);
LABEL_273:
        v113 = (*(&v210 + 1) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (v113 <= 0x8000)
        {
          v113 = 0x8000;
        }

        if (v211)
        {
          v114 = v211;
        }

        else
        {
          v114 = v113;
        }

        if (BYTE10(v201))
        {
          v115 = (v63 + 8);
        }

        else
        {
          v115 = &kFigPhotoSurfacePoolOneShot;
        }

        v188 = *v115;
        MemorySurface = CMPhotoSurfacePoolCreateMemorySurface(*v115, v114, 1, &dataPointerOut);
        if (!MemorySurface)
        {
          if ((v200[0] - 1) > 5)
          {
            v192 = 0;
          }

          else
          {
            v192 = dword_1A5ABBA10[v200[0] - 1];
          }

          IOSurfaceBindAccel();
          IOSurfaceLock(v269[0], 5u, 0);
          IOSurfaceUnlock(v269[0], 5u, 0);
          v116 = 1;
          while (1)
          {
            v117 = BYTE4(v201) != 0;
            if (BYTE4(v201))
            {
              v118 = 17;
            }

            else
            {
              v118 = 16;
            }

            if (BYTE9(v201))
            {
              v117 = v118;
            }

            v119 = !*(v63 + 32) || v201 == 0;
            v120 = !v119 && BYTE1(v201) != 0;
            v121 = v117 | 8;
            v122 = dataPointerOut;
            v123 = v269[0];
            v124 = v202;
            v126 = *(&v212 + 1);
            v125 = v213;
            if (v225)
            {
              v127 = CMPhotoParavirtualizedGuestJPEGHardwareEncode(v269[0], dataPointerOut, v202, v194, v193, v197, v195, v192, v121, v120, *(&v212 + 1), v213, v224);
              v63 = v198;
              v62 = pixelBuffer;
            }

            else
            {
              bzero(&v240, 0xD98uLL);
              bzero(lengthAtOffsetOut, 0xDA0uLL);
              LODWORD(v247) = v124;
              LODWORD(v239) = IOSurfaceGetID(v123);
              HIDWORD(v239) = IOSurfaceGetAllocSize(v123);
              v241.i32[1] = v194;
              v243 = __PAIR64__(v192, v195);
              v242 = __PAIR64__(v197, v121);
              v241.i64[1] = v193;
              v249 = 1;
              v250 = v120;
              v128 = v126[2];
              v129 = v126[3];
              v130 = v126[1];
              v251 = *v126;
              v254 = v129;
              v253 = v128;
              v252 = v130;
              v131 = v126[6];
              v132 = v126[7];
              v133 = v126[5];
              v255 = v126[4];
              v258 = v132;
              v257 = v131;
              v256 = v133;
              v134 = v125[3];
              v136 = *v125;
              v135 = v125[1];
              v261 = v125[2];
              v262 = v134;
              v259 = v136;
              v260 = v135;
              v137 = v125[7];
              v139 = v125[4];
              v138 = v125[5];
              v265 = v125[6];
              v266 = v137;
              v263 = v139;
              v264 = v138;
              PixelFormat = IOSurfaceGetPixelFormat(v123);
              if (CMPhotoPixelFormatContainsYCbCr(PixelFormat))
              {
                v267 = CMPhotoPixelFormatIsFullRange(PixelFormat) == 0;
              }

              LODWORD(v240) = IOSurfaceGetID(v122);
              HIDWORD(v240) = IOSurfaceGetAllocSize(v122);
              v63 = v198;
              v62 = pixelBuffer;
              if (*MEMORY[0x1E695FF58] == 1)
              {
                kdebug_trace();
              }

              v127 = JPEGDeviceInterface_encodeJPEG2024(v189, &v239, lengthAtOffsetOut);
              if (*MEMORY[0x1E695FF58] == 1)
              {
                kdebug_trace();
              }

              if (!v127)
              {
                v234 = v236;
              }
            }

            if (v127 != -536870168)
            {
              break;
            }

            if (HIDWORD(v201))
            {
              if (HIDWORD(v201) == 2)
              {
                goto LABEL_337;
              }

              if (v211)
              {
                v151 = 0;
                Capabilities = 4294950306;
                goto LABEL_339;
              }

              AllocSize = IOSurfaceGetAllocSize(dataPointerOut);
              v142 = 2;
              if (*&v200[2] > 8uLL)
              {
                v142 = 3;
              }

              v143 = *MEMORY[0x1E69E9AC8] - 1;
              v144 = -*MEMORY[0x1E69E9AC8];
              v145 = (v143 + v206.i64[1] * v206.i64[0] * v142) & v144;
              if (v145 <= 0x8000)
              {
                v145 = 0x8000;
              }

              if (v145 >= (3 * AllocSize) >> 1)
              {
                v145 = (3 * AllocSize) >> 1;
              }

              v146 = (v145 + v143) & v144;
              if (v146 <= 0x8000)
              {
                v147 = 0x8000;
              }

              else
              {
                v147 = v146;
              }

              if (v147 <= AllocSize)
              {
                _encodeBuffer_cold_7(&v239);
                v151 = 0;
                Capabilities = v239;
                goto LABEL_339;
              }

              IOSurfaceDecrementUseCount(dataPointerOut);
              if (dataPointerOut)
              {
                CFRelease(dataPointerOut);
                dataPointerOut = 0;
              }

              v148 = CMPhotoSurfacePoolCreateMemorySurface(v188, v147, 1, &dataPointerOut);
              if (v148)
              {
LABEL_338:
                Capabilities = v148;
                v151 = 0;
                goto LABEL_339;
              }
            }

            else
            {
              v148 = CMPhotoJPEGQualityControllerDecrementQuality(&v208, &v227);
              if (v148)
              {
                goto LABEL_338;
              }

              CMPhotoJPEGQualitySettingsReleaseStorage(&v208);
              v212 = v231;
              v213 = v232;
              v214 = v233;
              v208 = v227;
              v209 = v228;
              v210 = v229;
              v211 = v230;
              v227 = 0u;
              v228 = 0u;
              v229 = 0u;
              v230 = 0u;
              v231 = 0u;
              v232 = 0u;
              v233 = 0;
            }

            if (++v116 == 11)
            {
              v116 = 10;
              goto LABEL_330;
            }
          }

          if (v127)
          {
LABEL_337:
            v151 = 0;
            Capabilities = 4294950302;
LABEL_339:
            v82 = v82;
            goto LABEL_340;
          }

LABEL_330:
          v82 = v82;
          if (v234)
          {
            SampleBufferWrappingIOSurface = CMPhotoCreateSampleBufferWrappingIOSurface(*v63, dataPointerOut, 0, v234, SBYTE10(v201), 1u);
            if (SampleBufferWrappingIOSurface)
            {
              v150 = SampleBufferWrappingIOSurface;
              _attachSizeHintIfNeeded(v200, v234, SampleBufferWrappingIOSurface);
              v151 = IOSurfaceGetAllocSize(dataPointerOut);
              if (dataPointerOut)
              {
                CFRelease(dataPointerOut);
                dataPointerOut = 0;
              }

              Capabilities = 0;
              *(v63 + 73) = 1;
              sbuf = v150;
            }

            else
            {
              v151 = 0;
              Capabilities = 4294950305;
            }
          }

          else
          {
            v151 = 0;
            Capabilities = 4294950304;
          }

LABEL_340:
          if (BYTE11(v201))
          {
            v239 = MEMORY[0x1E69E9820];
            v240 = *"";
            v241.i64[0] = ___encodeHW_block_invoke;
            v241.i64[1] = &__block_descriptor_tmp_16_0;
            v242 = v200;
            v243 = v197;
            v244 = v195;
            v245 = v194;
            v246 = v193;
            v247 = v151;
            v248 = v116;
            v249 = v234;
            analytics_send_event_lazy();
          }

          v61 = v191;
          goto LABEL_343;
        }

        goto LABEL_468;
      }
    }

    else
    {
      v269[0] = 0;
    }
  }

  else
  {
    v186 = 0;
    cf = 0;
    v185 = 0;
  }

  Capabilities = 4294950305;
LABEL_343:
  if (HIBYTE(v225))
  {
    CVPixelBufferUnlockBaseAddress(v62, 1uLL);
    HIBYTE(v225) = 0;
  }

  CMPhotoJPEGQualitySettingsReleaseStorage(&v227);
  JPEGDeviceInterface_closeDriverConnection(v82);
  if (v269[0])
  {
    CFRelease(v269[0]);
  }

  if (v226)
  {
    CFRelease(v226);
  }

  if (dataPointerOut)
  {
    IOSurfaceDecrementUseCount(dataPointerOut);
    if (dataPointerOut)
    {
      CFRelease(dataPointerOut);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v186)
  {
    CFRelease(v186);
  }

  if (v185)
  {
    CFRelease(v185);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a13 && !Capabilities)
  {
    v152 = sbuf;
    DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
    if (!DataBuffer)
    {
      Capabilities = 4294950304;
      if (!v152)
      {
        goto LABEL_462;
      }

      goto LABEL_461;
    }

    v154 = DataBuffer;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    *&v227 = 0;
    DataLength = CMBlockBufferGetDataLength(v154);
    if (DWORD2(v202) + 8 <= 0)
    {
      v156 = -(-(DWORD2(v202) + 8) & 7);
    }

    else
    {
      LOBYTE(v156) = (BYTE8(v202) + 8) & 7;
    }

    if (v201)
    {
      ++DWORD2(v202);
      if (!BYTE3(v201) && BYTE1(v201) && v156 == 7)
      {
        Capabilities = CMByteStreamAppendBlockBuffer();
        v62 = pixelBuffer;
LABEL_386:
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        if (Capabilities)
        {
          goto LABEL_460;
        }

LABEL_389:
        if (BYTE2(v201))
        {
          goto LABEL_411;
        }

        goto LABEL_390;
      }
    }

    v269[0] = 0;
    v157 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v157)
    {
      v158 = v157(a13, 0, v269);
      if (!v158)
      {
        v159 = v201;
        if (v201)
        {
          v160 = 1;
        }

        else
        {
          v160 = v156 == 7;
        }

        v161 = !v160;
        v241 = 0uLL;
        v240 = 0;
        v239 = v154;
        v162 = !v160 || *(v63 + 32) != 0;
        LOBYTE(v240) = v162;
        BYTE1(v240) = v161;
        BYTE2(v240) = v156;
        BYTE3(v240) = BYTE1(v201) == 0;
        BYTE4(v240) = v201 == 0;
        if (BYTE3(v201))
        {
          v241 = v207;
        }

        else
        {
          v241 = 0uLL;
        }

        v62 = pixelBuffer;
        v168 = *(v63 + 56);
        v242 = (v269[0] - *(v63 + 48));
        v243 = v168;
        v245 = 0;
        v244 = 0;
        v246 = *(v63 + 64);
        v247 = SDWORD2(v202);
        if (BYTE1(v201))
        {
          v169 = 0;
          v245 = DataLength;
          if (BYTE3(v201))
          {
            goto LABEL_433;
          }
        }

        else
        {
          lengthAtOffsetOut[0] = 0;
          dataPointerOut = 0;
          DataPointer = CMBlockBufferGetDataPointer(v154, DataLength - 2, lengthAtOffsetOut, 0, &dataPointerOut);
          v169 = 1;
          if (!DataPointer && lengthAtOffsetOut[0] >= 2)
          {
            if (*dataPointerOut == 255 && dataPointerOut[1] == 217)
            {
              v169 = 0;
              v245 = DataLength - 2;
              BYTE3(v240) = 0;
            }

            else
            {
              v169 = 1;
            }
          }

          v159 = v201;
          if (BYTE3(v201))
          {
            goto LABEL_433;
          }
        }

        if (v159)
        {
          if (((v169 | v162) & 1) == 0)
          {
            goto LABEL_443;
          }

          if (!v169)
          {
            v171 = 0;
            goto LABEL_434;
          }
        }

LABEL_433:
        v171 = _scannerCallbackMarker;
LABEL_434:
        if (v162)
        {
          v172 = _scannerCallbackRestartMarker;
        }

        else
        {
          v172 = 0;
        }

        v173 = CMPhotoJFIFScannerCreate(v171, &v239, v172, &v239, &v227);
        if (v173)
        {
          goto LABEL_463;
        }

        if (DataLength)
        {
          v174 = 0;
          v175 = DataLength;
          do
          {
            lengthAtOffsetOut[0] = 0;
            dataPointerOut = 0;
            v173 = CMBlockBufferGetDataPointer(v154, v174, &dataPointerOut, 0, lengthAtOffsetOut);
            if (v173)
            {
              goto LABEL_463;
            }

            CMPhotoJFIFScannerRun(v227, lengthAtOffsetOut[0], dataPointerOut);
            if (v173)
            {
              goto LABEL_463;
            }

            v174 += dataPointerOut;
            v175 -= dataPointerOut;
          }

          while (v175);
        }

LABEL_443:
        if (!*(v63 + 32) || !v201)
        {
LABEL_445:
          Capabilities = CMByteStreamAppendBlockBuffer();
          if (!Capabilities && *(v63 + 32) && BYTE1(v201))
          {
            dataPointerOut = 0;
            v176 = *(v63 + 40);
            v177 = *(v63 + 56);
            v178 = *(v63 + 64);
            v179 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v179)
            {
              v180 = v179(a13, 4 * v177, v176, v178, &dataPointerOut);
              if (dataPointerOut == (4 * v177))
              {
                v181 = 0;
              }

              else
              {
                v181 = -16992;
              }

              if (v180)
              {
                Capabilities = v180;
              }

              else
              {
                Capabilities = v181;
              }
            }

            else
            {
              Capabilities = 4294954514;
            }
          }

          goto LABEL_385;
        }

        *(v63 + 48) = v244;
        dataPointerOut = 0;
        v182 = *(v63 + 56);
        v183 = *(v63 + 64);
        lengthAtOffsetOut[0] = MEMORY[0x1E69E9820];
        lengthAtOffsetOut[1] = *"";
        v236 = ___postProcessStripToStream_block_invoke;
        v237 = &__block_descriptor_tmp_17_0;
        v238 = a13;
        v173 = _writeRestartMarkerSegmentWithHandler(1, 1, v182, v183, (v63 + 40), &dataPointerOut, lengthAtOffsetOut);
        if (!v173)
        {
          *(v63 + 48) = &dataPointerOut[*(v63 + 48) - 2];
          goto LABEL_445;
        }

LABEL_463:
        Capabilities = v173;
        goto LABEL_385;
      }

      Capabilities = v158;
    }

    else
    {
      Capabilities = 4294954514;
    }

    v62 = pixelBuffer;
LABEL_385:
    CMPhotoJFIFScannerDispose(v227);
    goto LABEL_386;
  }

  if (v190 || !Capabilities)
  {
    goto LABEL_389;
  }

  BYTE2(v201) = 0;
LABEL_390:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  Capabilities = _encodeSW(v63, v62, v200, v61, &sbuf, a13);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (Capabilities)
  {
    goto LABEL_460;
  }

  v163 = sbuf;
  if (sbuf)
  {
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(sbuf);
    Capabilities = 0;
    if (v211)
    {
      v165 = TotalSampleSize;
      if (TotalSampleSize > v211)
      {
        if (!v20)
        {
          while (1)
          {
            if (v163)
            {
              CFRelease(v163);
              sbuf = 0;
            }

            v166 = CMPhotoJPEGQualityControllerDecrementByteBudgetQualityGivenSize(&v208, v165, 1, &v215);
            if (v166)
            {
              break;
            }

            CMPhotoJPEGQualitySettingsReleaseStorage(&v208);
            v212 = v219;
            v213 = v220;
            v214 = v221;
            v208 = v215;
            v209 = v216;
            v210 = v217;
            v211 = v218;
            v215 = 0u;
            v216 = 0u;
            v217 = 0u;
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v221 = 0;
            DWORD2(v202) = -1;
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            Capabilities = _encodeSW(v63, v62, v200, v61, &sbuf, a13);
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            if (Capabilities)
            {
              goto LABEL_460;
            }

            v163 = sbuf;
            v167 = CMSampleBufferGetTotalSampleSize(sbuf);
            if (v211)
            {
              v165 = v167;
              if (v167 > v211)
              {
                continue;
              }
            }

            goto LABEL_411;
          }

          Capabilities = v166;
          goto LABEL_460;
        }

        _encodeBuffer_cold_10(&v239);
LABEL_482:
        Capabilities = v239;
        goto LABEL_460;
      }
    }
  }

  else
  {
    Capabilities = 0;
  }

LABEL_411:
  if (a12)
  {
    *a12 = sbuf;
    goto LABEL_462;
  }

LABEL_460:
  v152 = sbuf;
  if (sbuf)
  {
LABEL_461:
    CFRelease(v152);
  }

LABEL_462:
  CMPhotoJPEGQualitySettingsReleaseStorage(&v208);
  CMPhotoJPEGQualitySettingsReleaseStorage(&v215);
  return Capabilities;
}

uint64_t CMPhotoUnifiedJPEGEncoderEncodeStripToStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64x2_t *a9, __CFData *a10)
{
  if (!a6 || *a9 == 0 && *&a9[1] == 0)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v10 = a5[1];
    v14[0] = *a5;
    v14[1] = v10;
    v11 = a9[1];
    v13[0] = *a9;
    v13[1] = v11;
    return _encodeBuffer(a1, a2, a3, a4, v14, 1, a6, a8, v13[0], a7, a8, v13, a10);
  }
}

uint64_t CMPhotoUnifiedJPEGEncoderDidUseHW(uint64_t result)
{
  if (result)
  {
    return *(result + 73);
  }

  return result;
}

uint64_t _isHWAvailableHelper(_BYTE *a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = *"";
  block[2] = ___isHWAvailableHelper_block_invoke_0;
  block[3] = &__block_descriptor_tmp_6_0;
  block[4] = a2;
  if (_isHWAvailableHelper_onceToken != -1)
  {
    dispatch_once(&_isHWAvailableHelper_onceToken, block);
    if (!a1)
    {
      return _isHWAvailableHelper_sHWAvailable_0;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = _isHWAvailableHelper_sIsParavirtualized;
  }

  return _isHWAvailableHelper_sHWAvailable_0;
}

uint64_t _encodeSW(uint64_t a1, __CVBuffer *a2, uint64_t a3, int a4, CFTypeRef *a5, __CFData *a6)
{
  v103 = *MEMORY[0x1E69E9840];
  v95 = 0;
  cf = 0;
  if (a6 && *(a3 + 176))
  {
    _encodeSW_cold_2(bytes);
    v14 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    goto LABEL_128;
  }

  v94 = 0;
  if (!a6)
  {
    Mutable = CFDataCreateMutable(*a1, 0);
    v16 = Mutable;
    if (!Mutable)
    {
      v14 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_130;
    }

    v15 = 0;
    v17 = Mutable;
LABEL_13:
    v92[1] = v17;
    v92[0] = a6 != 0;
    v93 = v15;
    v85 = 0;
    v86 = _applejpeg_write_0;
    v87 = 0;
    v88 = 0;
    v89 = v92;
    v90 = 0;
    v91 = 0;
    if (applejpeg_encode_create())
    {
      v73 = a4;
      v69 = a6;
      v75 = v16;
      v24 = a2;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      v84 = PixelFormatType;
      v26 = *(a3 + 8);
      v27 = *a3;
      UncompressedUnpackedPixelFormatFromCompressedPackedPixelFormat = CMPhotoGetUncompressedUnpackedPixelFormatFromCompressedPackedPixelFormat(PixelFormatType);
      v29 = UncompressedUnpackedPixelFormatFromCompressedPackedPixelFormat;
      LODWORD(v30) = CMPhotoGetFullRangeForPixelFormat(UncompressedUnpackedPixelFormatFromCompressedPackedPixelFormat);
      if (v30)
      {
        v30 = v30;
      }

      else
      {
        v30 = v29;
      }

      v84 = v30;
      v68 = a5;
      *bytes = 0;
      if (CMPhotoGetBitDepthForPixelFormat(v30) != v26 || CMPhotoPixelFormatToAppleJPEGFormat(v84, bytes))
      {
        if (v27 == 1)
        {
          v31 = 3;
        }

        else
        {
          v31 = v27;
        }

        CMPhotoGetYUVPixelFormatForParameters(v31, v26, 1, 0, 0, 0, 1, &v84);
      }

      v33 = *(a3 + 48);
      v32 = *(a3 + 56);
      v19 = *(a3 + 64);
      v34 = *(a3 + 72);
      v83 = 0;
      IsNon601YCbCr = CMPhotoPixelBufferIsNon601YCbCr(v24, &v83);
      if (v84 == PixelFormatType && !IsNon601YCbCr)
      {
        v71 = 0;
        v74 = 0;
        v36 = 0;
        goto LABEL_38;
      }

      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v16 = v75;
      if (*(a3 + 21))
      {
        ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, 1, *(a3 + 22), *(a3 + 23), *(a3 + 24));
        v19 = ScaleAndRotateOptionsWithHWIfNeeded;
        if (ScaleAndRotateOptionsWithHWIfNeeded)
        {
          CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"DestinationBackedByIOSurface", v73 == 0);
          CMPhotoCFDictionarySetInt(v19, @"DestinationPixelFormat", v84);
          CMPhotoCFDictionarySetBoolean(v19, @"ExactDimensions", 0);
          CMPhotoCFDictionarySetSize(v19, @"RowAlignment", 64);
          v105.origin.x = *(a3 + 80);
          v105.origin.y = *(a3 + 88);
          v105.size.width = *(a3 + 96);
          v105.size.height = *(a3 + 104);
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v105);
          if (DictionaryRepresentation)
          {
            CFDictionarySetValue(v19, @"SourceCropRectDictionary", DictionaryRepresentation);
          }

          v74 = DictionaryRepresentation;
          v14 = CMPhotoColorTripletCreateDictionaryRepresentation(0, 1);
          if (v14)
          {
            CFDictionarySetValue(v19, @"DestinationColorTripletDictionary", v14);
          }

          v20 = CMPhotoScaleAndRotateSessionTransformImage(*(a1 + 16), v24, v19, &v95);
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          if (v20)
          {
LABEL_124:
            v18 = v74;
            goto LABEL_9;
          }

          v71 = v14;
          v36 = v19;
          v24 = v95;
          v33 = vcvtad_u64_f64(CMPhotoGetPixelBufferCLAPAsRect(v95));
          v32 = vcvtad_u64_f64(v39);
          LODWORD(v19) = vcvtad_u64_f64(v40);
          LODWORD(v34) = vcvtad_u64_f64(v41);
LABEL_38:
          v42 = CVPixelBufferLockBaseAddress(v24, 1uLL);
          if (!v42)
          {
            v81 = 0u;
            memset(v82, 0, sizeof(v82));
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            memset(v77, 0, sizeof(v77));
            v102 = 0uLL;
            v101 = 0uLL;
            pixelBuffer = v24;
            PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v24, v33, v32, v77, &v101, &v102, 0);
            if (PixelBufferDataPointers || (memset(&v77[3], 0, 72), v79 = 0uLL, v77[1] = v19, v77[2] = v34, v78 = v102, PixelBufferDataPointers = CMPhotoPixelFormatToAppleJPEGFormat(v84, &v77[3]), PixelBufferDataPointers))
            {
              v20 = PixelBufferDataPointers;
              v22 = 0;
              v21 = 0;
              v16 = v75;
            }

            else
            {
              *&v100[52] = *&v77[13];
              *&v100[68] = *&v77[17];
              *&v100[84] = v78;
              *&v100[100] = v79;
              *&v100[4] = *&v77[1];
              *&v100[20] = *&v77[5];
              *&v100[36] = *&v77[9];
              v80 = v101;
              *(v82 + 4) = *v100;
              *(&v82[2] + 4) = *&v100[16];
              *(&v82[4] + 4) = *&v100[32];
              *(&v82[12] + 4) = *&v100[96];
              *(&v82[10] + 4) = *&v100[80];
              *(&v82[8] + 4) = *&v100[64];
              v81 = 0uLL;
              LODWORD(v82[0]) = v77[0];
              HIDWORD(v82[14]) = HIDWORD(v79);
              *(&v82[6] + 4) = *&v100[48];
              v16 = v75;
              v19 = v36;
              if (*(a3 + 164))
              {
                v14 = v71;
                CMPhotoGetBitDepthForPixelFormat(v84);
                v52 = applejpeg_encode_set_option_type_lossless();
                if (v52)
                {
                  v20 = CMPhotoAppleJPEGErrorToCMPhotoError(v52);
                  v22 = 0;
                  goto LABEL_90;
                }

                v22 = 0;
LABEL_57:
                restarted = applejpeg_encode_set_option_restart_markers();
                if (!restarted)
                {
                  restarted = applejpeg_encode_set_option_num_threads();
                  if (!restarted)
                  {
                    if (!*(a3 + 16))
                    {
                      bytes[0] = -1;
                      v67 = *(a3 + 40);
                      v65 = -v67 < 0;
                      v66 = -v67 & 7;
                      LOBYTE(v67) = v67 & 7;
                      if (!v65)
                      {
                        v67 = -v66;
                      }

                      bytes[1] = v67 | 0xD0;
                      if (_applejpeg_write_0(bytes, 2, v92))
                      {
                        v21 = 0;
                        v20 = 4294950304;
                        goto LABEL_98;
                      }

                      if (*(a1 + 32))
                      {
                        *(*(a1 + 64) + 4 * *(a3 + 40)) = v93 - *(a1 + 48) - 2;
                      }
                    }

                    ++*(a3 + 40);
                    if (!*(a1 + 32))
                    {
                      goto LABEL_70;
                    }

                    restarted = applejpeg_encode_set_option_record_rst_offsets();
                    if (!restarted || *(a3 + 16) && (*(a1 + 32) = 0, (restarted = applejpeg_encode_set_option_record_rst_offsets()) == 0))
                    {
                      if (*(a3 + 16) && *(a1 + 32))
                      {
                        v54 = CFDataCreateMutable(*a1, 0);
                        v21 = v54;
                        if (!v54)
                        {
LABEL_83:
                          v20 = 4294950305;
                          goto LABEL_98;
                        }

                        v55 = *(a1 + 56);
                        v56 = *(a1 + 64);
                        v76[0] = MEMORY[0x1E69E9820];
                        v76[1] = *"";
                        v76[2] = ___encodeSW_block_invoke;
                        v76[3] = &__block_descriptor_tmp_18;
                        v76[4] = v54;
                        v57 = _writeRestartMarkerSegmentWithHandler(0, 0, v55, v56, (a1 + 40), 0, v76);
                        if (v57)
                        {
                          goto LABEL_88;
                        }

                        *bytes = 0;
                        CFDataGetLength(v21);
                        CFDataGetBytePtr(v21);
                        inserted = applejpeg_encode_set_option_insert_segment();
                        if (inserted)
                        {
                          goto LABEL_87;
                        }

                        *(a1 + 40) = *bytes + 14;
LABEL_71:
                        inserted = applejpeg_encode_set_option_strip_encode();
                        if (!inserted)
                        {
                          inserted = applejpeg_encode_commit_options_for_file();
                          if (!inserted)
                          {
                            if (*(a3 + 16))
                            {
                              inserted = applejpeg_encode_image_all_with_bitstream_offset();
                              if (!inserted)
                              {
                                goto LABEL_75;
                              }
                            }

                            else
                            {
                              inserted = applejpeg_encode_image_all();
                              if (!inserted)
                              {
LABEL_75:
                                if (*MEMORY[0x1E695FF58] == 1)
                                {
                                  kdebug_trace();
                                }

                                if (*(a3 + 17) && *(a1 + 32))
                                {
                                  v59 = *(a1 + 56);
                                  v60 = 4 * v59;
                                  if (v69)
                                  {
                                    *bytes = 0;
                                    v61 = *(a1 + 40);
                                    v72 = *(a1 + 64);
                                    v62 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                                    if (!v62)
                                    {
                                      v20 = 4294954514;
                                      goto LABEL_98;
                                    }

                                    v57 = v62(v69, v60, v61, v72, bytes);
                                    if (!v57)
                                    {
                                      if (*bytes != v60)
                                      {
                                        goto LABEL_83;
                                      }

                                      goto LABEL_95;
                                    }

LABEL_88:
                                    v20 = v57;
                                    goto LABEL_98;
                                  }

                                  v104.location = *(a1 + 40);
                                  v104.length = 4 * v59;
                                  CFDataReplaceBytes(v75, v104, *(a1 + 64), 4 * v59);
                                }

                                else if (v69)
                                {
                                  goto LABEL_95;
                                }

                                Length = CFDataGetLength(v75);
                                v57 = CMPhotoSampleBufferCreateFromSource(*a1, v75, 0, Length, &cf, 0);
                                if (v57)
                                {
                                  goto LABEL_88;
                                }

                                _attachSizeHintIfNeeded(a3, Length, cf);
LABEL_95:
                                if (*MEMORY[0x1E695FF58] == 1)
                                {
                                  kdebug_trace();
                                }

                                v20 = 0;
                                *(a1 + 73) = 0;
                                *v68 = cf;
                                cf = 0;
LABEL_98:
                                v18 = v74;
                                applejpeg_encode_destroy();
                                CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
                                if (!v16)
                                {
                                  goto LABEL_100;
                                }

                                goto LABEL_99;
                              }
                            }
                          }
                        }

LABEL_87:
                        v57 = CMPhotoAppleJPEGErrorToCMPhotoError(inserted);
                        goto LABEL_88;
                      }

LABEL_70:
                      v21 = 0;
                      goto LABEL_71;
                    }
                  }
                }

                v20 = CMPhotoAppleJPEGErrorToCMPhotoError(restarted);
LABEL_90:
                v21 = 0;
                goto LABEL_98;
              }

              v44 = applejpeg_encode_set_option_type_baseline();
              if (v44)
              {
                v20 = CMPhotoAppleJPEGErrorToCMPhotoError(v44);
                v22 = 0;
LABEL_134:
                v21 = 0;
                goto LABEL_135;
              }

              v45 = *(a3 + 208);
              v46 = *(a3 + 216);
              if (v45 == v46)
              {
                v47 = 128;
              }

              else
              {
                v47 = 192;
              }

              v48 = malloc_type_malloc(v47, 0x4950D41uLL);
              v22 = v48;
              if (v48)
              {
                v49 = 0;
                *bytes = v48;
                v98 = v48 + 64;
                v99 = v48 + 64;
                do
                {
                  *(*bytes + v49) = *(*(a3 + 200) + 2 * v49);
                  v98[v49] = *(*(a3 + 208) + 2 * v49);
                  ++v49;
                }

                while (v49 != 64);
                if (v45 != v46)
                {
                  v50 = 0;
                  v99 = v48 + 128;
                  do
                  {
                    v99[v50] = *(*(a3 + 216) + 2 * v50);
                    ++v50;
                  }

                  while (v50 != 64);
                }

                v51 = applejpeg_encode_set_option_q_tables();
                v19 = v36;
                if (!v51)
                {
                  v14 = v71;
                  goto LABEL_57;
                }

                v20 = CMPhotoAppleJPEGErrorToCMPhotoError(v51);
                goto LABEL_134;
              }

              v21 = 0;
              v20 = 4294950305;
            }

            v19 = v36;
LABEL_135:
            v14 = v71;
            goto LABEL_98;
          }

          v20 = v42;
          v16 = v75;
          v19 = v36;
          v14 = v71;
          goto LABEL_124;
        }

        v14 = 0;
        v18 = 0;
        goto LABEL_130;
      }

      _encodeSW_cold_1(bytes);
      v14 = 0;
      v18 = 0;
      v19 = 0;
LABEL_128:
      v20 = *bytes;
      goto LABEL_9;
    }

    v14 = 0;
    v18 = 0;
    v19 = 0;
LABEL_130:
    v20 = 4294950305;
    goto LABEL_9;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12)
  {
    v14 = 0;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v20 = 4294954514;
    goto LABEL_9;
  }

  v13 = v12(a6, 0, &v94);
  if (!v13)
  {
    v14 = 0;
    v15 = v94;
    if (v94 < 0)
    {
      v20 = 4294950190;
      v18 = 0;
      v19 = 0;
      v16 = 0;
      goto LABEL_9;
    }

    v16 = 0;
    v17 = a6;
    goto LABEL_13;
  }

  v20 = v13;
  v14 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
LABEL_9:
  applejpeg_encode_destroy();
  v21 = 0;
  v22 = 0;
  if (v16)
  {
LABEL_99:
    CFRelease(v16);
  }

LABEL_100:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  free(v22);
  return v20;
}

void _attachSizeHintIfNeeded(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 176))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v7 = Mutable;
      CMPhotoCFDictionarySetFloat(Mutable, @"ByteBudgetHint_Quality", *(a1 + 184));
      CMPhotoCFDictionarySetSize(v7, @"ByteBudgetHint_Size", a2);
      CMSetAttachment(a3, @"ByteBudgetHint", v7, 1u);
      DataBuffer = CMSampleBufferGetDataBuffer(a3);
      CMPropagateAttachments(a3, DataBuffer);

      CFRelease(v7);
    }
  }
}

xpc_object_t ___encodeHW_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 160) == 4)
  {
    valuePtr = 0;
    v3 = *(v2 + 192);
    if (v3)
    {
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr >= 6)
      {
        v4 = 6;
      }

      else
      {
        v4 = valuePtr;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = *(v2 + 184);
    v6 = v5;
    v7 = *(v2 + 144) == 1;
    v8 = 8;
    if (v7)
    {
      v8 = 12;
    }

    if (v5 >= 0.75)
    {
      ++v8;
    }

    if (v6 >= 0.9944)
    {
      ++v8;
    }

    if (v6 < 0.9)
    {
      v4 = v8;
    }

    else
    {
      v4 = v8 + 1;
    }
  }

  if (*(a1 + 64) * *(a1 + 56) >= 0x2E83001uLL)
  {
    v9 = 48771073;
  }

  else
  {
    v9 = *(a1 + 64) * *(a1 + 56);
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "compressionIterations", *(a1 + 80));
  xpc_dictionary_set_uint64(empty, "initialQualityEnum", v4);
  xpc_dictionary_set_double(empty, "finalQuality", *(*(a1 + 32) + 184));
  xpc_dictionary_set_uint64(empty, "numPixels", v9);
  xpc_dictionary_set_uint64(empty, "surfaceSize", *(a1 + 72));
  LODWORD(v11) = *(a1 + 84);
  xpc_dictionary_set_double(empty, "fillRatio", v11 / *(a1 + 72));
  xpc_dictionary_set_uint64(empty, "encodedSize", *(a1 + 84));
  return empty;
}

uint64_t ___postProcessStripToStream_block_invoke(uint64_t a1, uint64_t a2)
{
  LODWORD(result) = CMByteStreamAppend();
  if (a2)
  {
    return 4294950304;
  }

  else
  {
    return result;
  }
}

uint64_t SlimXEncodeF32Row(unsigned int **a1, int a2)
{
  v2 = a1[10][8];
  if (v2 != 1278226534 && v2 != 1717856627 && v2 != 1717855600)
  {
    return 4294951896;
  }

  v5 = *a1;
  v6 = **a1;
  v7 = *(a1 + 24);
  v8 = v7 - 32;
  *(a1 + 24) = v7 - 32;
  if (v7 <= 31)
  {
    v10 = a1[11] + (v6 >> (32 - v7));
    a1[11] = v10;
    v11 = a1[2];
    if (a1[3] - v11 <= 7)
    {
LABEL_62:
      longjmp(a1 + 29, -15400);
    }

    *v11 = bswap64(v10);
    a1[2] += 2;
    v12 = *(a1 + 24);
    v8 = v12 + 64;
    *(a1 + 24) = v12 + 64;
    v9 = v6 << v12;
  }

  else
  {
    v9 = a1[11] + (v6 << v8);
  }

  a1[11] = v9;
  if (*(a1 + 25) > 1u)
  {
    v13 = (v5 + 4);
    v14 = 1;
    v15 = 16;
    do
    {
      v16 = (*(v13 - 1) ^ *v13);
      v17 = __clz(v16);
      v18 = 32 - v17;
      v19 = 32 - v17 - v15;
      if ((32 - v17) <= v15)
      {
        v23 = v8 - 3;
        *(a1 + 24) = v8 - 3;
        if (v8 <= 2)
        {
          v24 = a1[2];
          if (a1[3] - v24 <= 7)
          {
            goto LABEL_62;
          }

          v25 = bswap64(v9);
          v9 = 0;
          *v24 = v25;
          a1[2] += 2;
          v23 = *(a1 + 24) + 64;
        }

        v8 = v23 - v15;
        *(a1 + 24) = v23 - v15;
        if (v23 - v15 < 0)
        {
          v28 = v9 + (v16 >> (v15 - v23));
          a1[11] = v28;
          v29 = a1[2];
          if (a1[3] - v29 <= 7)
          {
            goto LABEL_62;
          }

          *v29 = bswap64(v28);
          a1[2] += 2;
          v30 = *(a1 + 24);
          v8 = v30 + 64;
          *(a1 + 24) = v30 + 64;
          v9 = v16 << v30;
        }

        else
        {
          v9 += v16 << v8;
        }

        a1[11] = v9;
        if (v15-- == 0)
        {
          v15 = 0;
        }
      }

      else if (v18 <= v15 + 6)
      {
        v26 = v8 - 3;
        *(a1 + 24) = v8 - 3;
        if (v8 < 3)
        {
          v33 = v9 + (v19 >> (3 - v8));
          a1[11] = v33;
          v34 = a1[2];
          if (a1[3] - v34 <= 7)
          {
            goto LABEL_62;
          }

          *v34 = bswap64(v33);
          a1[2] += 2;
          v35 = *(a1 + 24);
          v26 = v35 + 64;
          v27 = v19 << v35;
        }

        else
        {
          v27 = v9 + (v19 << v26);
        }

        v36 = v17 + v26;
        v37 = (0x80000000 >> v17) ^ v16;
        *(a1 + 24) = v17 + v26 - 31;
        if ((v17 + v26 - 31) < 0)
        {
          v38 = v27 + (v37 >> (31 - (v17 + v26)));
          a1[11] = v38;
          v39 = a1[2];
          if (a1[3] - v39 <= 7)
          {
            goto LABEL_62;
          }

          *v39 = bswap64(v38);
          a1[2] += 2;
          v40 = *(a1 + 24);
          v8 = v40 + 64;
          *(a1 + 24) = v40 + 64;
          v9 = v37 << v40;
          a1[11] = v9;
        }

        else
        {
          v9 = v27 + (v37 << (v36 - 31));
          a1[11] = v9;
          v8 = v36 - 31;
        }
      }

      else
      {
        v20 = v15 + 10;
        v21 = v8 - 4;
        *(a1 + 24) = v8 - 4;
        if (v18 <= v15 + 10)
        {
          if (v8 < 4)
          {
            v45 = v9 + (0xEuLL >> (4 - v8));
            a1[11] = v45;
            v46 = a1[2];
            if (a1[3] - v46 <= 7)
            {
              goto LABEL_62;
            }

            *v46 = bswap64(v45);
            a1[2] += 2;
            v47 = *(a1 + 24);
            v21 = v47 + 64;
            v32 = 14 << v47;
          }

          else
          {
            v32 = v9 + (14 << v21);
          }

          v8 = v21 - v20;
          *(a1 + 24) = v21 - v20;
          if (v21 - v20 < 0)
          {
            v51 = v32 + (v16 >> (v20 - v21));
            a1[11] = v51;
            v52 = a1[2];
            if (a1[3] - v52 <= 7)
            {
              goto LABEL_62;
            }

            *v52 = bswap64(v51);
            a1[2] += 2;
            v53 = *(a1 + 24);
            v8 = v53 + 64;
            *(a1 + 24) = v53 + 64;
            v9 = v16 << v53;
          }

          else
          {
            v9 = v32 + (v16 << v8);
          }

          a1[11] = v9;
          if (v15 < 24)
          {
            ++v15;
          }
        }

        else
        {
          if (v8 < 4)
          {
            v41 = v9 + (0xFuLL >> (4 - v8));
            a1[11] = v41;
            v42 = a1[2];
            if (a1[3] - v42 <= 7)
            {
              goto LABEL_62;
            }

            *v42 = bswap64(v41);
            a1[2] += 2;
            v43 = *(a1 + 24);
            v21 = v43 + 64;
            *(a1 + 24) = v43 + 64;
            v22 = 15 << v43;
          }

          else
          {
            v22 = v9 + (15 << v21);
          }

          v44 = *v13;
          v8 = v21 - 32;
          *(a1 + 24) = v21 - 32;
          if (v21 < 32)
          {
            v48 = v22 + (v44 >> (32 - v21));
            a1[11] = v48;
            v49 = a1[2];
            if (a1[3] - v49 <= 7)
            {
              goto LABEL_62;
            }

            *v49 = bswap64(v48);
            a1[2] += 2;
            v50 = *(a1 + 24);
            v8 = v50 + 64;
            *(a1 + 24) = v50 + 64;
            v9 = v44 << v50;
          }

          else
          {
            v9 = v22 + (v44 << v8);
          }

          a1[11] = v9;
          ++v15;
        }
      }

      ++v13;
      ++v14;
    }

    while (v14 < *(a1 + 25));
  }

  v56 = 0;
  if (a2 && v8 <= 63)
  {
    do
    {
      v54 = a1[2];
      if (a1[3] == v54)
      {
        goto LABEL_62;
      }

      a1[2] = (v54 + 1);
      *v54 = HIBYTE(v9);
      v9 = a1[11] << 8;
      a1[11] = v9;
      v55 = *(a1 + 24);
      *(a1 + 24) = v55 + 8;
    }

    while (v55 < 56);
    return 0;
  }

  return v56;
}

uint64_t SlimXDecodeF32Row(uint64_t a1)
{
  v1 = *(*(a1 + 80) + 32);
  if (v1 != 1278226534 && v1 != 1717856627 && v1 != 1717855600)
  {
    return 4294951896;
  }

  v4 = *a1;
  v5 = *(a1 + 96);
  if (v5 <= 32)
  {
    v13 = *(a1 + 88);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = v8 - v9;
    v11 = 32;
    v12 = 4294967288;
    while (v10 < 5)
    {
      if (v9 == v8)
      {
LABEL_90:
        longjmp((a1 + 116), -15400);
      }

      *(a1 + 96) = v5 + v12;
      *(a1 + 16) = v9 + 1;
      v7 -= 8;
      v13 = (*v9 << (v5 + v7)) + *(a1 + 88);
      v11 += 8;
      v6 += 8;
      *(a1 + 88) = v13;
      v12 -= 8;
      --v10;
      v9 = (v9 + 1);
      if (v5 + v7 + 8 <= 40)
      {
        LODWORD(v5) = v5 - v6;
        goto LABEL_17;
      }
    }

    LODWORD(v5) = v5 - v11;
    *(a1 + 96) = v5;
    v15 = *v9;
    *(a1 + 16) = v9 + 1;
    v13 = (bswap32(v15) << v5) + *(a1 + 88);
  }

LABEL_17:
  v16 = v13 << 32;
  *(a1 + 88) = v13 << 32;
  *(a1 + 96) = v5 + 32;
  *v4 = HIDWORD(v13);
  if (*(a1 + 100) > 1u)
  {
    v17 = 16;
    v18 = 1;
    do
    {
      v19 = v4;
      v20 = *(a1 + 96);
      if (v20 >= 62)
      {
        v21 = 0;
        v22 = 0;
        v24 = *(a1 + 16);
        v23 = *(a1 + 24);
        v25 = v23 - v24;
        v26 = 4294967288;
        v27 = 32;
        while (v25 < 5)
        {
          if (v24 == v23)
          {
            goto LABEL_90;
          }

          *(a1 + 96) = v20 + v26;
          *(a1 + 16) = v24 + 1;
          v22 -= 8;
          v16 += *v24 << (v20 + v22);
          v27 += 8;
          *(a1 + 88) = v16;
          v21 += 8;
          v26 -= 8;
          --v25;
          v24 = (v24 + 1);
          if (v20 + v22 + 8 <= 69)
          {
            LODWORD(v20) = v20 - v21;
            goto LABEL_26;
          }
        }

        LODWORD(v20) = v20 - v27;
        *(a1 + 96) = v20;
        v28 = *v24;
        *(a1 + 16) = v24 + 1;
        v16 += bswap32(v28) << v20;
      }

LABEL_26:
      v4 = v19 + 1;
      v29 = v16 >> 61;
      v30 = 8 * v16;
      *(a1 + 88) = v30;
      v31 = v20 + 3;
      *(a1 + 96) = v20 + 3;
      if (v29)
      {
        if (v29 == 7)
        {
          if (v20 >= 61)
          {
            v40 = *(a1 + 16);
            v39 = *(a1 + 24);
            v31 = v20 - 29;
            v41 = (v20 - 5);
            v42 = v39 - v40;
            do
            {
              if (v31 + 32 >= 33 && v42 >= 5)
              {
                *(a1 + 96) = v31;
                v55 = *v40;
                *(a1 + 16) = v40 + 1;
                v30 += bswap32(v55) << v31;
                goto LABEL_61;
              }

              if (v40 == v39)
              {
                goto LABEL_90;
              }

              *(a1 + 96) = v31 + 24;
              *(a1 + 16) = v40 + 1;
              v30 += *v40 << v41;
              v31 -= 8;
              *(a1 + 88) = v30;
              v41 -= 8;
              --v42;
              v40 = (v40 + 1);
            }

            while (v31 + 40 > 71);
            v31 += 32;
          }

LABEL_61:
          v56 = 2 * v30;
          *(a1 + 88) = 2 * v30;
          v57 = v31 + 1;
          *(a1 + 96) = v31 + 1;
          if ((v30 & 0x8000000000000000) != 0)
          {
            if (v31 >= 32)
            {
              v66 = *(a1 + 16);
              v67 = *(a1 + 24);
              v57 = v31 - 31;
              v68 = (v31 - 7);
              v69 = v67 - v66;
              do
              {
                if (v57 + 32 >= 33 && v69 >= 5)
                {
                  *(a1 + 96) = v57;
                  v75 = *v66;
                  *(a1 + 16) = v66 + 1;
                  v56 += bswap32(v75) << v57;
                  goto LABEL_85;
                }

                if (v66 == v67)
                {
                  goto LABEL_90;
                }

                *(a1 + 96) = v57 + 24;
                *(a1 + 16) = v66 + 1;
                v56 += *v66 << v68;
                v57 -= 8;
                *(a1 + 88) = v56;
                v68 -= 8;
                --v69;
                v66 = (v66 + 1);
              }

              while (v57 + 40 > 40);
              v57 += 32;
            }

LABEL_85:
            v74 = HIDWORD(v56);
            v16 = v56 << 32;
            *(a1 + 88) = v56 << 32;
            *(a1 + 96) = v57 + 32;
          }

          else
          {
            v58 = *v19;
            v59 = v17 + 10;
            v60 = 63 - v31;
            if (63 - v31 < v17 + 10)
            {
              v61 = *(a1 + 16);
              v62 = *(a1 + 24);
              v63 = v61 + 4;
              v64 = v62 - v61;
              v57 = v31 - 31;
              do
              {
                if (v57 + 32 >= 33 && v64 >= 5)
                {
                  *(a1 + 96) = v57;
                  v73 = bswap32(*(v63 - 4));
                  *(a1 + 16) = v63;
                  v56 += v73 << v57;
                  goto LABEL_84;
                }

                if (v63 - 4 == v62)
                {
                  goto LABEL_90;
                }

                *(a1 + 96) = v57 + 24;
                *(a1 + 16) = v63 - 3;
                v56 += *(v63 - 4) << (v57 + 24);
                *(a1 + 88) = v56;
                ++v63;
                --v64;
                v57 -= 8;
                v60 += 8;
              }

              while (v60 < v59);
              v57 += 32;
            }

LABEL_84:
            v16 = v56 << v59;
            *(a1 + 88) = v56 << v59;
            *(a1 + 96) = v57 + v59;
            LODWORD(v74) = v58 ^ (v56 >> (54 - v17));
          }

          *v4 = v74;
          if (v17 < 24)
          {
            ++v17;
          }
        }

        else
        {
          v44 = v17 + v29;
          v45 = v17 + v29 - 1;
          v46 = *v19;
          v47 = 61 - v20;
          if (61 - v20 < v45)
          {
            v48 = *(a1 + 16);
            v49 = *(a1 + 24);
            v50 = v48 + 4;
            v51 = v49 - v48;
            v31 = v20 - 29;
            do
            {
              if (v31 + 32 >= 33 && v51 >= 5)
              {
                *(a1 + 96) = v31;
                v71 = bswap32(*(v50 - 4));
                *(a1 + 16) = v50;
                v30 += v71 << v31;
                goto LABEL_82;
              }

              if (v50 - 4 == v49)
              {
                goto LABEL_90;
              }

              *(a1 + 96) = v31 + 24;
              *(a1 + 16) = v50 - 3;
              v30 += *(v50 - 4) << (v31 + 24);
              *(a1 + 88) = v30;
              ++v50;
              --v51;
              v31 -= 8;
              v47 += 8;
            }

            while (v47 < v45);
            v31 += 32;
          }

LABEL_82:
          v72 = v30 >> (65 - v44);
          v16 = v30 << v45;
          *(a1 + 88) = v16;
          *(a1 + 96) = v31 + v45;
          *v4 = ((1 << v45) + v72) ^ v46;
        }
      }

      else
      {
        v32 = *v19;
        v33 = 61 - v20;
        if (61 - v20 < v17)
        {
          v34 = *(a1 + 16);
          v35 = *(a1 + 24);
          v36 = v34 + 4;
          v37 = v35 - v34;
          v31 = v20 - 29;
          do
          {
            if (v31 + 32 >= 33 && v37 >= 5)
            {
              *(a1 + 96) = v31;
              v53 = bswap32(*(v36 - 4));
              *(a1 + 16) = v36;
              v30 += v53 << v31;
              goto LABEL_58;
            }

            if (v36 - 4 == v35)
            {
              goto LABEL_90;
            }

            *(a1 + 96) = v31 + 24;
            *(a1 + 16) = v36 - 3;
            v30 += *(v36 - 4) << (v31 + 24);
            *(a1 + 88) = v30;
            ++v36;
            --v37;
            v31 -= 8;
            v33 += 8;
          }

          while (v33 < v17);
          v31 += 32;
        }

LABEL_58:
        v54 = v30 >> -v17;
        v16 = v30 << v17;
        *(a1 + 88) = v16;
        *(a1 + 96) = v31 + v17;
        *v4 = v32 ^ v54;
        v17 -= v17 > 0;
      }

      ++v18;
    }

    while (v18 < *(a1 + 100));
  }

  return 0;
}

void VideoQualityControllerClass_dispose_0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    free(v1);
  }
}

void CMPhotoVideoQualityControllerDispose(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      v3 = v2[1];
      if (v3)
      {
        v3(a1);
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t CMPhotoVideoQualityControllerSetSessionProperties(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoVideoQualityControllerSetTileProperties(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoVideoQualityControllerAnalyzeTile(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 32);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

__n128 CMPhotoVideoQualityControllerGetPoolingKey@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  *(a2 + 13) = *(a1 + 29);
  return result;
}

uint64_t CMPhotoGetHEVCNALULocationAndSizeFromType(uint64_t a1, unint64_t a2, int a3, void *a4, unint64_t *a5)
{
  v5 = a3 != 80;
  if (a3 == 78)
  {
    v5 = 0;
  }

  if (a3 == 2)
  {
    v5 = 0;
  }

  v6 = 0;
  if (a2)
  {
    v7 = 0;
    v8 = (a1 + 1);
    v9 = -1;
    v10 = 1;
    for (i = a2; i; --i)
    {
      v12 = *(v8 - 1) | (v9 << 8);
      v6 += v7 & 1;
      if ((v12 & 0xFFFFFF) == 1)
      {
        if (v10 >= a2)
        {

          return FigSignalErrorAtGM();
        }

        v13 = v9 << 8;
        v14 = *v8 & 0x7E;
        v16 = v14 == 38 || v14 == 40;
        v18 = v14 == 78 || v14 == 80;
        v19 = a3 == 2 && v18;
        v20 = a3 != 1 && v19;
        if (a3 != 1)
        {
          v16 = v19;
        }

        if ((v7 & 1) != 0 && !v20)
        {
          if (v6 <= 3)
          {
            CMPhotoGetHEVCNALULocationAndSizeFromType_cold_1(&v23);
            return v23;
          }

          v22 = -4;
          if (HIBYTE(v13))
          {
            v22 = -3;
          }

          v6 += v22;
          break;
        }

        if (!((v14 != a3) & ~v16 | v7 & 1))
        {
          v6 = 0;
          *a4 = v8;
          v7 = 1;
        }
      }

      ++v8;
      ++v10;
      v9 = v12;
    }
  }

  if (v6)
  {
    v5 = 0;
  }

  if (v5)
  {
    CMPhotoGetHEVCNALULocationAndSizeFromType_cold_2(&v24);
    return v24;
  }

  else
  {
    result = 0;
    *a5 = v6;
  }

  return result;
}

uint64_t CMPhotoAsyncDispatcherGetTypeID()
{
  if (_MergedGlobals_9 != -1)
  {
    CMPhotoAsyncDispatcherGetTypeID_cold_1();
  }

  return qword_1ED6FA688;
}

uint64_t __CMPhotoAsyncDispatcherGetTypeID_block_invoke()
{
  FigKTraceInit();
  sCMPhotoAsyncDispatcherClass = 0;
  unk_1EB1EC870 = "CMPhotoDNGCompressor";
  qword_1EB1EC878 = _dispatcherClass_Init;
  unk_1EB1EC880 = 0;
  qword_1EB1EC890 = 0;
  unk_1EB1EC898 = 0;
  qword_1EB1EC888 = _dispatcherClass_Finalize;
  qword_1EB1EC8A0 = _dispatcherClass_CopyFormattingDesc;
  qword_1EB1EC8A8 = _dispatcherClass_CopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  qword_1ED6FA688 = result;
  return result;
}

double _dispatcherClass_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void _dispatcherClass_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 72);
}

uint64_t CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletionAndTimeout(uint64_t a1, uint64_t a2, uint64_t a3, dispatch_time_t a4)
{
  v4 = 0;
  v5 = 4294950306;
  if (a1 && a2 && a3)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletionAndTimeout_cold_1(&block);
      v4 = 0;
      goto LABEL_16;
    }

    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = v9 >= v11;
    v13 = v9 - v11;
    if (!v12)
    {
      goto LABEL_11;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = 0;
    v15 = *(a1 + 56);
    block = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = ___waitForIndexToComplete_block_invoke;
    v31 = &unk_1E77A2E98;
    v32 = &v22;
    v33 = a1;
    v34 = v13;
    dispatch_sync(v15, &block);
    v16 = v23[5];
    if (!v16)
    {
      _Block_object_dispose(&v22, 8);
      goto LABEL_11;
    }

    v17 = dispatch_block_wait(v16, a4);

    _Block_object_dispose(&v22, 8);
    if (!v17)
    {
LABEL_11:
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletionAndTimeout_block_invoke;
      v21[3] = &unk_1E77A2E70;
      v21[6] = v9 % v10;
      v21[7] = a1;
      v21[8] = v9;
      v21[4] = a2;
      v21[5] = a3;
      v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v21);
      if (v4)
      {
        ++*(a1 + 32);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v9 % v10);
        v19 = *(a1 + 56);
        block = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = ___addRunningJob_block_invoke;
        v31 = &unk_1E77A2EC0;
        v33 = a1;
        v34 = v9;
        v32 = v4;
        dispatch_sync(v19, &block);
        dispatch_async(ValueAtIndex, v4);
        v5 = 0;
        goto LABEL_13;
      }

      CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletionAndTimeout_cold_2(&block);
LABEL_16:
      v5 = block;
      goto LABEL_13;
    }

    v4 = 0;
    v5 = 4294950189;
  }

LABEL_13:

  return v5;
}

void sub_1A59BA910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CMPhotoAsyncDispatcherDispatchBlockWithOrderedCompletionAndTimeout_block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[5];
  v5 = *(v2 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___addToFunnel_block_invoke;
  block[3] = &unk_1E77A2EC0;
  block[5] = v3;
  block[6] = v2;
  block[4] = v4;
  dispatch_sync(v5, block);
}

id ___waitForIndexToComplete_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 40) = [*(a1[5] + 72) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", a1[6])}];
  v2 = *(*(a1[4] + 8) + 40);

  return v2;
}

uint64_t ___addToFunnel_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[6] + 80);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v2];
  v5 = a1[4];
  if (v2 == v3)
  {
    (*(v5 + 16))(a1[4]);
    [*(a1[6] + 72) removeObjectForKey:v4];
    ++*(a1[6] + 80);
    v6 = MEMORY[0x1E696AD98];
    while (1)
    {
      v7 = [v6 numberWithUnsignedLong:?];
      result = [*(a1[6] + 64) objectForKeyedSubscript:v7];
      if (!result)
      {
        break;
      }

      (*([*(a1[6] + 64) objectForKeyedSubscript:v7] + 16))();
      [*(a1[6] + 64) removeObjectForKey:v7];
      [*(a1[6] + 72) removeObjectForKey:v7];
      v6 = MEMORY[0x1E696AD98];
      ++*(a1[6] + 80);
    }
  }

  else
  {
    v9 = *(a1[6] + 64);

    return [v9 setObject:v5 forKeyedSubscript:v4];
  }

  return result;
}

uint64_t ___addRunningJob_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = *(a1[5] + 72);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1[6]];

  return [v2 setObject:v1 forKeyedSubscript:v3];
}

uint64_t CMPhotoJPEGCreateJPEGFromSbuf(opaqueCMSampleBuffer *a1, const __CFDictionary *a2, void *a3, IOSurfaceRef *a4, _DWORD *a5)
{
  if ((sCMPhotoJPEGEncoderTraceInitialized & 1) == 0)
  {
    sCMPhotoJPEGEncoderTraceInitialized = 1;
  }

  if (!a1)
  {
    CMPhotoJPEGCreateJPEGFromSbuf_cold_4(&v11);
    return v11;
  }

  if (!a4)
  {
    CMPhotoJPEGCreateJPEGFromSbuf_cold_3(&v11);
    return v11;
  }

  if (!a5)
  {
    CMPhotoJPEGCreateJPEGFromSbuf_cold_2(&v11);
    return v11;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (!ImageBuffer)
  {
    CMPhotoJPEGCreateJPEGFromSbuf_cold_1(&v11);
    return v11;
  }

  return _createJPEGFromCVPixelBuffer(0, ImageBuffer, a2, a3, 0, a4, a5);
}

uint64_t _createJPEGFromCVPixelBuffer(unsigned int a1, __CVBuffer *a2, const __CFDictionary *a3, void *a4, uint64_t *a5, IOSurfaceRef *a6, _DWORD *a7)
{
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v186 = 0u;
  v185 = 0;
  memset(v184, 0, sizeof(v184));
  v183 = 0u;
  buffer = 0;
  cf = 0;
  v12 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v12;
  if ((sCMPhotoJPEGEncoderTraceInitialized & 1) == 0)
  {
    sCMPhotoJPEGEncoderTraceInitialized = 1;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!a2)
  {
    _createJPEGFromCVPixelBuffer_cold_17(&v196);
LABEL_452:
    LODWORD(a7) = 0;
LABEL_454:
    x_low = LODWORD(v196.origin.x);
    goto LABEL_431;
  }

  if (!a6)
  {
    _createJPEGFromCVPixelBuffer_cold_16(&v196);
    goto LABEL_452;
  }

  if (!a7)
  {
    _createJPEGFromCVPixelBuffer_cold_15(&v196);
    goto LABEL_454;
  }

  BoolValue = _getBoolValue(a3, @"JPEGSoftwareEncode", 0);
  v172 = a7;
  if (a3 && (Value = CFDictionaryGetValue(a3, @"JPEGSoftwareEncode")) != 0)
  {
    v14 = CFGetTypeID(Value);
    v15 = v14 != CFBooleanGetTypeID();
  }

  else
  {
    v15 = 1;
  }

  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v17 = PixelFormatType;
  v18 = 4;
  if (PixelFormatType <= 1278226735)
  {
    if ((PixelFormatType - 1278226488) <= 0x30 && ((1 << (PixelFormatType - 56)) & 0x1400000000001) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0) && PixelFormatType != 1717855600 && PixelFormatType != 1751410032)
  {
LABEL_20:
    v19 = PixelFormatType == 1717856627 || PixelFormatType == 1751411059;
    if (v19)
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }
  }

LABEL_26:
  v20 = 400;
  pixelBuffer = a2;
  if (PixelFormatType <= 1278226735)
  {
    if ((PixelFormatType - 1278226488) <= 0x30 && ((1 << (PixelFormatType - 56)) & 0x1400000000001) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0) && PixelFormatType != 1717855600 && PixelFormatType != 1751410032)
  {
LABEL_34:
    if (PixelFormatType == 1717856627 || PixelFormatType == 1751411059)
    {
      v20 = 400;
    }

    else
    {
      v20 = 420;
    }
  }

LABEL_40:
  v22 = 327689;
  theDict = a3;
  v169 = v15;
  v173 = 0;
  if (!a3)
  {
    v176 = v18;
    BytePtr = 0;
    v179 = 0;
    v29 = 0;
    v30 = -1;
    v162 = 1;
    v163 = 0;
    v164 = 1;
    v31 = 1;
    v158 = 0;
    v159 = @"SurfacePoolOneShot";
    IntValue = -1;
    goto LABEL_99;
  }

  v175 = v20;
  v23 = _getBoolValue(a3, @"JPEGHighSpeedEncode", 1);
  v24 = CFDictionaryGetValue(a3, @"JPEGSurfacePool");
  if (v24)
  {
    v25 = v24;
    v26 = CFGetTypeID(v24);
    v27 = 1;
    if (v26 != CMPhotoSurfacePoolGetTypeID() && v25 != @"SurfacePoolOneShot")
    {
      _createJPEGFromCVPixelBuffer_cold_1(&v196);
LABEL_480:
      LODWORD(a7) = 0;
      x_low = LODWORD(v196.origin.x);
      goto LABEL_431;
    }
  }

  else
  {
    v27 = 0;
    v25 = @"SurfacePoolOneShot";
  }

  v159 = v25;
  v32 = CFDictionaryGetValue(a3, @"JPEGScaleAndRotateSession");
  if (v32)
  {
    v33 = v32;
    v34 = CFGetTypeID(v32);
    v173 = v33;
    if (v34 != CMPhotoScaleAndRotateSessionGetTypeID())
    {
      _createJPEGFromCVPixelBuffer_cold_2(&v196);
      goto LABEL_480;
    }
  }

  v35 = CFDictionaryGetValue(a3, @"JPEGProvidedSurface");
  v29 = v35;
  if (v35)
  {
    v36 = CFGetTypeID(v35);
    if (v36 != IOSurfaceGetTypeID())
    {
      _createJPEGFromCVPixelBuffer_cold_3(&v196);
      goto LABEL_480;
    }
  }

  LODWORD(v158) = v27;
  v37 = a4;
  v38 = CFDictionaryGetValue(a3, @"JPEGCustomLumaQuantTable");
  v39 = v38;
  v164 = v23;
  if (v38 && (v40 = CFGetTypeID(v38), v40 == CFDataGetTypeID()))
  {
    if (CFDataGetLength(v39) != 64)
    {
      _createJPEGFromCVPixelBuffer_cold_4(&v196);
      goto LABEL_480;
    }

    BytePtr = CFDataGetBytePtr(v39);
  }

  else
  {
    BytePtr = 0;
  }

  v41 = CFDictionaryGetValue(a3, @"JPEGCustomChromaQuantTable");
  if (!v41 || (v42 = v41, v43 = CFGetTypeID(v41), v19 = v43 == CFDataGetTypeID(), a3 = theDict, !v19))
  {
    if (!BytePtr)
    {
      if (v39)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

LABEL_455:
    _createJPEGFromCVPixelBuffer_cold_6(&v196);
    goto LABEL_480;
  }

  if (CFDataGetLength(v42) != 64)
  {
    _createJPEGFromCVPixelBuffer_cold_5(&v196);
    goto LABEL_480;
  }

  if ((BytePtr != 0) != (CFDataGetBytePtr(v42) != 0))
  {
    goto LABEL_455;
  }

  if (v39)
  {
    goto LABEL_78;
  }

LABEL_65:
  v44 = a6;
  v45 = v29;
  v46 = _getBoolValue(a3, @"JPEGAppleQuality", 1);
  if (v46)
  {
    v47 = 327689;
  }

  else
  {
    v47 = 5;
  }

  FloatValue = _getFloatValue(a3, *MEMORY[0x1E696D338], -1.0);
  if (FloatValue < 0.0)
  {
    v22 = v47;
    v29 = v45;
    a6 = v44;
    goto LABEL_78;
  }

  v49 = FloatValue;
  if (v49 < 0.05)
  {
    v50 = 0;
    v51 = 0;
    v29 = v45;
LABEL_74:
    a6 = v44;
    goto LABEL_75;
  }

  v29 = v45;
  if (v49 < 0.26)
  {
    v50 = 1;
    v51 = 1;
    goto LABEL_74;
  }

  a6 = v44;
  if (v49 >= 0.31)
  {
    if (v49 >= 0.6)
    {
      if (v49 >= 0.76)
      {
        if (v49 >= 0.83)
        {
          if (v49 >= 0.99)
          {
            v51 = 6;
          }

          else
          {
            v51 = 5;
          }

          if (v49 >= 0.99)
          {
            v50 = 6;
          }

          else
          {
            v50 = 327689;
          }

          goto LABEL_75;
        }

        v50 = 262153;
      }

      else
      {
        v50 = 4;
      }

      v51 = 4;
    }

    else
    {
      v50 = 3;
      v51 = 3;
    }
  }

  else
  {
    v50 = 2;
    v51 = 2;
  }

LABEL_75:
  if (v46)
  {
    v22 = v50;
  }

  else
  {
    v22 = v51;
  }

LABEL_78:
  IntValue = _getIntValue(a3, @"JPEGPhotoQuality", 0xFFFFFFFFLL);
  v52 = CFDictionaryGetValue(a3, @"JPEGSourceCropRect");
  if (v52 && CGRectMakeWithDictionaryRepresentation(v52, &rect))
  {
    v53 = vrndaq_f64(rect.origin);
    v54 = vrndaq_f64(rect.size);
    rect.origin = v53;
    rect.size = v54;
    y = v53.y;
    v56 = v54.height;
    if (CGRectIsEmpty(*&v53.x))
    {
      _createJPEGFromCVPixelBuffer_cold_8(&v196);
      goto LABEL_480;
    }

    v57 = CVPixelBufferGetWidth(pixelBuffer);
    v200.size.height = CVPixelBufferGetHeight(pixelBuffer);
    v59 = rect.size.width;
    v58 = rect.size.height;
    v200.origin.x = 0.0;
    v200.origin.y = 0.0;
    v200.size.width = v57;
    v201 = CGRectIntersection(rect, v200);
    if (!CGRectEqualToRect(rect, v201))
    {
      _createJPEGFromCVPixelBuffer_cold_7(&v196);
      goto LABEL_480;
    }

    Height = v58;
    Width = v59;
    v179 = 1;
  }

  else
  {
    v179 = 0;
  }

  a4 = v37;
  v60 = _getIntValue(a3, @"JPEGSubsampling", v175);
  if (v60 > 421)
  {
    if (v60 == 444)
    {
      v61 = 2;
      goto LABEL_94;
    }

    if (v60 == 422)
    {
      v61 = 1;
      goto LABEL_94;
    }

LABEL_91:
    v176 = 0;
    goto LABEL_95;
  }

  if (v60 == 400)
  {
    v61 = 4;
    goto LABEL_94;
  }

  if (v60 != 411)
  {
    goto LABEL_91;
  }

  v61 = 3;
LABEL_94:
  v176 = v61;
LABEL_95:
  v169 = _getBoolValue(a3, @"JPEGSoftwareFallback", v169);
  v31 = _getBoolValue(a3, @"JPEGAllowHardwareEvenCrop", 1);
  HIDWORD(v158) = _getBoolValue(a3, @"JPEGUse601YCbCrMatrix", 0);
  v162 = _getBoolValue(a3, @"JPEGIncreaseRoundingPoint", 1);
  v163 = _getBoolValue(a3, @"JPEGEnableCompressedSurfacePooling", 0);
  v62 = _getIntValue(a3, @"JPEGDestinationSurfaceSize", 0xFFFFFFFFLL);
  v30 = v62;
  if (v62 != -1)
  {
    v63 = BoolValue;
    v64 = v172;
    if (v62 <= 0)
    {
      _createJPEGFromCVPixelBuffer_cold_9(&v196);
      goto LABEL_480;
    }

    if (BoolValue)
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

LABEL_99:
  v63 = BoolValue;
  v64 = v172;
  if (BoolValue)
  {
LABEL_98:
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 1;
    v69 = 1;
    goto LABEL_138;
  }

LABEL_100:
  v156 = v29;
  if (v17 > 875704933)
  {
    if (v17 > 1380401728)
    {
      if (v17 > 2037741170)
      {
        if (v17 == 2084070960)
        {
          goto LABEL_134;
        }

        v71 = 30323;
      }

      else
      {
        if (v17 == 1380401729)
        {
          goto LABEL_116;
        }

        v71 = 30310;
      }

      if (v17 != (v71 | 0x79750000))
      {
        goto LABEL_132;
      }

      v73 = JPEGDeviceInterface_supportsAppleInterchangeFormats();
      if ((Width & 1) != 0 && v73 == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_135;
    }

    if (v17 == 875704934 || v17 == 875836518)
    {
LABEL_116:
      if (!JPEGDeviceInterface_supportsAppleInterchangeFormats())
      {
        goto LABEL_132;
      }

      goto LABEL_135;
    }

    v72 = 1111970369;
LABEL_115:
    if (v17 != v72)
    {
      goto LABEL_132;
    }

    goto LABEL_116;
  }

  if (v17 <= 641230387)
  {
    if (v17 == 32)
    {
      goto LABEL_116;
    }

    if (v17 == 641230384)
    {
      goto LABEL_134;
    }

    v72 = 641230386;
    goto LABEL_115;
  }

  if (v17 > 792225327)
  {
    if (v17 == 792225328)
    {
      goto LABEL_134;
    }

    v70 = 875704422;
    goto LABEL_120;
  }

  if (v17 == 641230388)
  {
    goto LABEL_116;
  }

  v70 = 758670896;
LABEL_120:
  if (v17 != v70)
  {
    goto LABEL_132;
  }

LABEL_134:
  if (!JPEGDeviceInterface_supportsAppleInterchangeFormats() && Width & 1 | Height & 1)
  {
LABEL_132:
    if (JPEGDeviceInterface_supportsAppleInterchangeFormats())
    {
      v76 = 1;
    }

    else
    {
      if (JPEGDeviceInterface_supportsAppleInterchangeFormats())
      {
        v94 = 1;
      }

      else
      {
        v94 = v31 == 0;
      }

      v76 = !v94;
    }

    v77 = 3758097095;
    v65 = 875704422;
    if (v17 > 875704933)
    {
      if (v17 > 1111970368)
      {
        if (v17 <= 1380401728)
        {
          if (v17 != 1111970369)
          {
            LODWORD(a7) = 0;
            if (v17 != 1278226488)
            {
              goto LABEL_340;
            }

            v68 = 0;
            goto LABEL_338;
          }

          goto LABEL_318;
        }

        if (v17 != 1380401729)
        {
          if (v17 != 2084075056)
          {
            v95 = 1999843442;
            goto LABEL_300;
          }

          goto LABEL_308;
        }

LABEL_318:
        if (v176)
        {
          if (v176 != 2)
          {
            if (v176 != 1 || !(((Width & 1) == 0) | v76 & 1))
            {
              goto LABEL_339;
            }

            v68 = 0;
            v65 = 2037741158;
            goto LABEL_328;
          }

          if (v17 == 1999843442)
          {
            v114 = JPEGDeviceInterface_supportsAppleInterchangeFormats();
            v63 = BoolValue;
            if (!v114)
            {
              LODWORD(a7) = 0;
              v77 = 3758097095;
              goto LABEL_340;
            }

            v68 = 0;
            v66 = 1;
            v65 = 875836518;
            v67 = 1;
            v69 = 1;
            goto LABEL_137;
          }

LABEL_339:
          LODWORD(a7) = 0;
          goto LABEL_340;
        }

        if ((((Width | Height) & 1) == 0) | v76 & 1)
        {
LABEL_327:
          v68 = 0;
LABEL_328:
          v66 = 1;
          v67 = 1;
LABEL_332:
          v69 = 1;
          goto LABEL_136;
        }

        if (Width)
        {
          goto LABEL_339;
        }

        LODWORD(a7) = 0;
        if ((Height & 1) == 0)
        {
          goto LABEL_340;
        }

        v68 = 0;
        v65 = 2037741158;
LABEL_338:
        v66 = 1;
        v67 = 1;
        v69 = 1;
        goto LABEL_136;
      }

      if (v17 <= 875836517)
      {
        if (v17 != 875704934 && v17 != 875704950)
        {
          goto LABEL_339;
        }

        goto LABEL_302;
      }

      if (v17 == 875836518)
      {
        goto LABEL_318;
      }

      v95 = 875836534;
      goto LABEL_300;
    }

    if (v17 > 758674991)
    {
      if (v17 > 846624120)
      {
        if (v17 == 846624121)
        {
          if (v176 >= 2)
          {
            LODWORD(a7) = 0;
            goto LABEL_340;
          }

          v68 = 0;
          v65 = 2037741171;
          goto LABEL_338;
        }

        v96 = 875704438;
      }

      else
      {
        if (v17 == 758674992)
        {
LABEL_308:
          if (v176)
          {
            goto LABEL_339;
          }

          v112 = (Width & 1 | Height & 1) == 0;
LABEL_310:
          v113 = v112;
          if (((v113 | v76) & 1) == 0)
          {
            goto LABEL_339;
          }

          goto LABEL_327;
        }

        v96 = 792229424;
      }
    }

    else
    {
      if (v17 > 641234481)
      {
        if (v17 == 641234482)
        {
LABEL_302:
          v65 = 2037741158;
          v67 = v176;
          if (v176 == 1)
          {
            v68 = 0;
            v66 = 1;
            goto LABEL_332;
          }

          if (v176)
          {
            goto LABEL_339;
          }

          v112 = (Width & 1) == 0;
          goto LABEL_310;
        }

        v95 = 641234484;
LABEL_300:
        if (v17 != v95)
        {
          goto LABEL_339;
        }

        goto LABEL_318;
      }

      if (v17 == 32)
      {
        goto LABEL_318;
      }

      v96 = 641234480;
    }

    if (v17 != v96)
    {
      goto LABEL_339;
    }

    goto LABEL_308;
  }

LABEL_135:
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v69 = 0;
  v68 = 1;
LABEL_136:
  v63 = BoolValue;
LABEL_137:
  v29 = v156;
LABEL_138:
  if (v67 | v63)
  {
    v77 = 0;
    goto LABEL_163;
  }

  v78 = 2;
  if (v17 <= 875836517)
  {
    if (v17 <= 641230387)
    {
      if (v17 == 32)
      {
        goto LABEL_157;
      }

      v79 = 641230386;
    }

    else
    {
      if (v17 == 641230388)
      {
        goto LABEL_157;
      }

      if (v17 == 846820726)
      {
        goto LABEL_156;
      }

      v79 = 875704934;
    }

LABEL_155:
    if (v17 != v79)
    {
      goto LABEL_219;
    }

LABEL_156:
    v78 = 1;
    goto LABEL_157;
  }

  if (v17 > 1380401728)
  {
    if (v17 == 1380401729)
    {
      goto LABEL_157;
    }

    if (v17 == 2037741171)
    {
      goto LABEL_156;
    }

    v79 = 2037741158;
    goto LABEL_155;
  }

  if (v17 != 875836518 && v17 != 1111970369)
  {
    if (v17 == 1278226488)
    {
      v78 = 4;
      goto LABEL_157;
    }

LABEL_219:
    v78 = 0;
  }

LABEL_157:
  if (v176 <= v78 || v176 == 4)
  {
    v77 = 0;
  }

  else
  {
    v77 = 3758097095;
  }

LABEL_163:
  if (v63 | v77)
  {
    LODWORD(a7) = 0;
LABEL_170:
    v64 = v172;
    goto LABEL_290;
  }

  if (!a4)
  {
    v69 = 0;
  }

  if ((v66 | v69) != 1)
  {
    v157 = 0;
    v84 = pixelBuffer;
    goto LABEL_181;
  }

  v81 = v65;
  if (v179)
  {
    v82 = rect.size.width;
    v83 = rect.size.height;
  }

  else
  {
    CMPhotoGetPixelBufferCLAPAsRect(pixelBuffer);
    v83 = v85;
  }

  v86 = v82;
  if (a4 && CVPixelBufferGetWidth(a4) == v86 && CVPixelBufferGetHeight(a4) == v83 && CVPixelBufferGetIOSurface(a4))
  {
    v157 = 0;
    cf = a4;
  }

  else
  {
    v157 = 1;
    if (CMPhotoSurfacePoolCreatePixelBuffer(v159, v81, v86, v83, 1, 0, 0, 0, 0, 0, &cf))
    {
      LODWORD(a7) = 0;
      v77 = 3758097084;
      goto LABEL_475;
    }
  }

  if (CMPhotoScaleAndRotateSessionTransformForMaxSideLength(v173, pixelBuffer, 1u, 1u, v81, HIDWORD(v158) != 0, 0, 0, 0, 0, 0, 1u, &cf))
  {
    v77 = 3758097084;
    LODWORD(a7) = v157;
LABEL_475:
    v64 = v172;
    goto LABEL_340;
  }

  v179 = 0;
  v84 = cf;
LABEL_181:
  IOSurface = CVPixelBufferGetIOSurface(v84);
  if (v29)
  {
    if (!v163)
    {
      buffer = CFRetain(v29);
      goto LABEL_242;
    }

    _createJPEGFromCVPixelBuffer_cold_10(&v196);
    x_low = LODWORD(v196.origin.x);
LABEL_482:
    LODWORD(a7) = v157;
    goto LABEL_431;
  }

  if (v30 < 1)
  {
    v89 = 2 * Height * Width;
    if (BytePtr)
    {
      if (*BytePtr == 1)
      {
        v90 = 0;
        do
        {
          v91 = v90;
          if (v90 == 63)
          {
            break;
          }

          v92 = BytePtr[++v90];
        }

        while (v92 == 1);
        v93 = v91 > 0x3E;
      }

      else
      {
        v93 = 0;
      }

      if (v176 == 2)
      {
        v93 = 1;
      }

      if (!v93)
      {
        v89 = (3 * Height * Width) >> 1;
      }
    }

    else
    {
      if (v22 == 9)
      {
        v97 = HIWORD(v22);
      }

      else
      {
        v97 = v22;
      }

      if (v97 != 6)
      {
        v89 /= 3uLL;
      }
    }

    v98 = (v89 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    if (v98 <= 0x8000)
    {
      v88 = 0x8000;
    }

    else
    {
      v88 = v98;
    }
  }

  else
  {
    v88 = v30;
  }

  if (!v163)
  {
    v100 = CMPhotoSurfacePoolCreateMemorySurface(@"SurfacePoolOneShot", v88, 2, &buffer);
    if (!v100)
    {
      IOSurfaceDecrementUseCount(buffer);
      goto LABEL_242;
    }

    goto LABEL_481;
  }

  if (v158)
  {
    v99 = v159;
  }

  else
  {
    v99 = 0;
  }

  v100 = CMPhotoSurfacePoolCreateMemorySurface(v99, v88, 2, &buffer);
  if (v100)
  {
LABEL_481:
    x_low = v100;
    goto LABEL_482;
  }

LABEL_242:
  v174 = a1;
  if (!a1)
  {
    v174 = JPEGDeviceInterface_openDriverConnection();
    if (!v174)
    {
      _createJPEGFromCVPixelBuffer_cold_11(&v196);
      v77 = LODWORD(v196.origin.x);
      v63 = BoolValue;
      LODWORD(a7) = v157;
      goto LABEL_170;
    }
  }

  if (v68)
  {
    IOSurfaceBindAccel();
  }

  v101 = v29;
  v160 = a6;
  v102 = 1;
  if ((IntValue & 0x80000000) == 0 && !BytePtr)
  {
    if (IntValue > 943009906)
    {
      if (IntValue == 943009907)
      {
        v102 = 0;
        BytePtr = &unk_1A5ABBB44;
        goto LABEL_262;
      }

      if (IntValue != 959459438)
      {
        if (IntValue == 959459443)
        {
          v102 = 0;
          BytePtr = &unk_1A5ABBB84;
          goto LABEL_262;
        }

        goto LABEL_259;
      }

      v102 = 0;
      BytePtr = &unk_1A5ABBBC4;
    }

    else
    {
      if (IntValue == 926232686)
      {
        v102 = 0;
        BytePtr = &sAppleQualityQMArray_Luma;
        goto LABEL_262;
      }

      if (IntValue != 942682222)
      {
        if (IntValue == 942814579)
        {
          v102 = 0;
          BytePtr = &unk_1A5ABBB04;
          goto LABEL_262;
        }

LABEL_259:
        BytePtr = 0;
        goto LABEL_262;
      }

      v102 = 0;
      BytePtr = &unk_1A5ABBAC4;
    }
  }

LABEL_262:
  if (BytePtr)
  {
    v103 = v102 ^ 1;
  }

  else
  {
    v103 = 1;
  }

  if (v164)
  {
    v104 = 17;
  }

  else
  {
    v104 = 16;
  }

  if (v162)
  {
    v105 = v104;
  }

  else
  {
    v105 = v164 != 0;
  }

  while (1)
  {
    LODWORD(v186) = IOSurfaceGetID(IOSurface);
    DWORD2(v186) = IOSurfaceGetID(buffer);
    DWORD1(v186) = IOSurfaceGetAllocSize(IOSurface);
    HIDWORD(v186) = IOSurfaceGetAllocSize(buffer);
    *(&v187 + 4) = __PAIR64__(Height, Width);
    if (v179)
    {
      *(&v188 + 4) = vmovn_s64(vcvtq_u64_f64(rect.origin));
    }

    HIDWORD(v187) = v22;
    LODWORD(v188) = v105;
    HIDWORD(v191) = 1;
    HIDWORD(v188) = v176;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v77 = JPEGDeviceInterface_encodeJPEG();
    if (*MEMORY[0x1E695FF58] == 1)
    {
      v106 = v22;
      v107 = v77;
      kdebug_trace();
      v77 = v107;
      v22 = v106;
    }

    v108 = v77 == -536870168 ? v103 : 0;
    if (v101 || !v108)
    {
      break;
    }

    if (v22 == 9)
    {
      v22 = 4;
    }

    else
    {
      --v22;
    }

    if (!v22)
    {
      v77 = 3758097128;
      break;
    }
  }

  v64 = v172;
  a6 = v160;
  LODWORD(a7) = v157;
  if (!a1)
  {
    v109 = v77;
    JPEGDeviceInterface_closeDriverConnection(v174);
    v77 = v109;
  }

  v63 = BoolValue;
LABEL_290:
  if (v63 | v77)
  {
LABEL_340:
    if (!v169 && !BoolValue)
    {
      x_low = v77;
      *a6 = 0;
      *v64 = 0;
      goto LABEL_431;
    }

    if (a7 && cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v198 = 0;
    v197 = 0;
    v115 = *(MEMORY[0x1E695F050] + 16);
    v196.origin = *MEMORY[0x1E695F050];
    v196.size = v115;
    if (!theDict)
    {
      v120 = 0;
      v119 = 5;
      v117 = 0.85;
      goto LABEL_379;
    }

    v116 = *MEMORY[0x1E696D338];
    if (CFDictionaryGetValue(theDict, *MEMORY[0x1E696D338]))
    {
      v117 = _getFloatValue(theDict, v116, 0.85);
      v118 = v117;
      if (v117 >= 0.05)
      {
        if (v118 >= 0.26)
        {
          if (v118 >= 0.31)
          {
            if (v118 >= 0.6)
            {
              v119 = 4;
              if (v118 >= 0.76 && v118 >= 0.83)
              {
                if (v118 >= 0.99)
                {
                  v119 = 6;
                }

                else
                {
                  v119 = 5;
                }
              }
            }

            else
            {
              v119 = 3;
            }
          }

          else
          {
            v119 = 2;
          }
        }

        else
        {
          v119 = 1;
        }
      }

      else
      {
        v119 = 0;
      }
    }

    else
    {
      v119 = 5;
      v117 = 0.85;
    }

    v121 = _getIntValue(theDict, @"JPEGSubsampling", 420);
    if (v121 > 421)
    {
      if (v121 != 444)
      {
        if (v121 == 422)
        {
          v120 = 1;
          goto LABEL_377;
        }

        goto LABEL_374;
      }

      v120 = 2;
    }

    else
    {
      if (v121 != 400)
      {
        if (v121 == 411)
        {
          v120 = 3;
          goto LABEL_377;
        }

LABEL_374:
        v120 = 0;
        goto LABEL_377;
      }

      v120 = 4;
    }

LABEL_377:
    v122 = CFDictionaryGetValue(theDict, @"JPEGSourceCropRect");
    if (v122)
    {
      CGRectMakeWithDictionaryRepresentation(v122, &v196);
    }

LABEL_379:
    v123 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v124 = v123;
    v161 = a6;
    if (v123 == 1111970369 || v123 == 24)
    {
      v125 = CVPixelBufferRetain(pixelBuffer);
      v126 = 0;
      v198 = v125;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v126 = Mutable;
      if (!Mutable)
      {
        v140 = 0;
        v132 = 0;
        v137 = 0;
        v141 = 0;
        v148 = 0;
        v151 = 0;
        x_low = 4294950305;
        goto LABEL_410;
      }

      CMPhotoCFDictionarySetInt(Mutable, @"DestinationPixelFormat", 1111970369);
      v128 = CMPhotoScaleAndRotateSessionTransformImage(0, pixelBuffer, v126, &v198);
      if (v128)
      {
        x_low = v128;
        v140 = 0;
        goto LABEL_487;
      }

      v125 = v198;
    }

    v129 = CVPixelBufferGetWidth(v125);
    v130 = CVPixelBufferGetHeight(v198);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v198);
    v132 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v132)
    {
      v133 = v119;
      CVPixelBufferLockBaseAddress(v198, 1uLL);
      v134 = v198;
      BaseAddress = CVPixelBufferGetBaseAddress(v198);
      DataSize = CVPixelBufferGetDataSize(v198);
      v137 = CGDataProviderCreateWithData(v134, BaseAddress, DataSize, _unlockAndReleasePixelBuffer);
      if (v137)
      {
        v198 = 0;
        if (v124 == 24)
        {
          v138 = 0;
        }

        else
        {
          v138 = 8198;
        }

        if (v124 == 24)
        {
          v139 = 24;
        }

        else
        {
          v139 = 32;
        }

        v140 = CGImageCreate(v129, v130, 8uLL, v139, BytesPerRow, v132, v138, v137, 0, 0, kCGRenderingIntentDefault);
        if (v140)
        {
          CGDataProviderRelease(v137);
          CFRelease(v132);
          if (CGRectIsNull(v196))
          {
LABEL_397:
            v142 = CVPixelBufferGetWidth(pixelBuffer);
            v143 = 2 * v142 * CVPixelBufferGetHeight(pixelBuffer);
            if (v133 != 6)
            {
              v143 /= 3uLL;
            }

            v144 = (*MEMORY[0x1E69E9AC8] + v143 - 1) & -*MEMORY[0x1E69E9AC8];
            if (v144 <= 0x8000)
            {
              v145 = 0x8000;
            }

            else
            {
              v145 = v144;
            }

            v146 = CMPhotoSurfacePoolCreateMemorySurface(@"SurfacePoolOneShot", v145, 2, &v197);
            if (!v146)
            {
              IOSurfaceDecrementUseCount(v197);
              info = v197;
              v194 = 0;
              AllocSize = IOSurfaceGetAllocSize(v197);
              cbks = xmmword_1F1916530;
              v147 = CGDataConsumerCreate(&info, &cbks);
              v141 = v147;
              if (v147)
              {
                v148 = CGImageDestinationCreateWithDataConsumer(v147, @"public.jpeg", 1uLL, 0);
                if (v148)
                {
                  v149 = *MEMORY[0x1E695E480];
                  v150 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v151 = v150;
                  if (v150)
                  {
                    CFDictionaryAddValue(v150, *MEMORY[0x1E696D370], *MEMORY[0x1E695E4C0]);
                    v152 = *MEMORY[0x1E696D338];
                    *valuePtr = v117;
                    v153 = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
                    CFDictionarySetValue(v151, v152, v153);
                    CFRelease(v153);
                    LODWORD(v152) = dword_1A5ABBD84[v120];
                    LODWORD(v153) = dword_1A5ABBD98[v120];
                    v154 = CFDictionaryCreateMutable(v149, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionaryAddValue(v151, *MEMORY[0x1E696DE20], v154);
                    CMPhotoCFDictionarySetInt(v154, *MEMORY[0x1E696DE10], v152);
                    CMPhotoCFDictionarySetInt(v154, *MEMORY[0x1E696DE18], v153);
                    if (v154)
                    {
                      CFRelease(v154);
                    }

                    CGImageDestinationAddImage(v148, v140, v151);
                    if (CGImageDestinationFinalize(v148))
                    {
                      x_low = 0;
                      v132 = 0;
                      v137 = 0;
                      *v161 = v197;
                      v197 = 0;
                      *v172 = v194;
                    }

                    else
                    {
                      _createJPEGFromCVPixelBuffer_cold_13(valuePtr);
                      v132 = 0;
                      v137 = 0;
                      x_low = valuePtr[0];
                    }

                    goto LABEL_410;
                  }

                  v132 = 0;
                  v137 = 0;
                  goto LABEL_470;
                }

                v132 = 0;
                v137 = 0;
LABEL_469:
                v151 = 0;
LABEL_470:
                x_low = 4294954510;
LABEL_410:
                if (v198)
                {
                  CFRelease(v198);
                }

                if (v197)
                {
                  CFRelease(v197);
                }

                if (v140)
                {
                  CFRelease(v140);
                }

                if (v132)
                {
                  CFRelease(v132);
                }

                if (v137)
                {
                  CFRelease(v137);
                }

                if (v141)
                {
                  CFRelease(v141);
                }

                if (v148)
                {
                  CFRelease(v148);
                }

                if (v151)
                {
                  CFRelease(v151);
                }

                if (v126)
                {
                  CFRelease(v126);
                }

                if (*MEMORY[0x1E695FF58] == 1)
                {
                  kdebug_trace();
                }

                LODWORD(a7) = 0;
                goto LABEL_431;
              }

              v132 = 0;
              v137 = 0;
LABEL_467:
              v148 = 0;
              goto LABEL_469;
            }

            x_low = v146;
LABEL_487:
            v132 = 0;
            v137 = 0;
            v141 = 0;
            v148 = 0;
            v151 = 0;
            goto LABEL_410;
          }

          v141 = CGImageCreateWithImageInRect(v140, v196);
          if (v141)
          {
            CFRelease(v140);
            v140 = v141;
            goto LABEL_397;
          }

          _createJPEGFromCVPixelBuffer_cold_12(&info);
          v132 = 0;
          v137 = 0;
        }

        else
        {
          _createJPEGFromCVPixelBuffer_cold_14(&info);
          v141 = 0;
        }

        v148 = 0;
        v151 = 0;
        x_low = info;
        goto LABEL_410;
      }

      CVPixelBufferUnlockBaseAddress(v198, 1uLL);
      v140 = 0;
    }

    else
    {
      v140 = 0;
      v137 = 0;
    }

    v141 = 0;
    goto LABEL_467;
  }

  *a6 = buffer;
  buffer = 0;
  *v64 = v184[0];
  if (!a5)
  {
    x_low = 0;
    goto LABEL_433;
  }

  v110 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v110)
  {
    _createJPEGFromCVPixelBuffer_cold_18(v22, v110, v184, a5);
  }

  x_low = 0;
LABEL_431:
  if (buffer)
  {
    CFRelease(buffer);
  }

LABEL_433:
  if (a7 && cf)
  {
    CFRelease(cf);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return x_low;
}

__CFArray *CMPhotoJPEGCreateJPEGNativePixelFormatArray()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  _appendPixelFormatValue(Mutable, 875704422);
  if (JPEGDeviceInterface_supportsAppleInterchangeFormats())
  {
    _appendPixelFormatValue(Mutable, 1111970369);
    _appendPixelFormatValue(Mutable, 1380401729);
    _appendPixelFormatValue(Mutable, 32);
    _appendPixelFormatValue(Mutable, 875836518);
    _appendPixelFormatValue(Mutable, 875704934);
  }

  _appendPixelFormatValue(Mutable, 2037741158);
  return Mutable;
}

void _appendPixelFormatValue(__CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(a1, v3);
  CFRelease(v3);
}

__CFArray *CMPhotoJPEGCreateJPEGNativeSubsamplingArray()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  _appendIntValue(Mutable, 0);
  _appendIntValue(Mutable, 1);
  if (JPEGDeviceInterface_supportsAppleInterchangeFormats())
  {
    _appendIntValue(Mutable, 2);
    _appendIntValue(Mutable, 4);
  }

  return Mutable;
}

void _appendIntValue(__CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(a1, v3);
  CFRelease(v3);
}

uint64_t _getBoolValue(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFBooleanGetTypeID())
  {
    return a3;
  }

  return CFBooleanGetValue(v5);
}

float _getFloatValue(const __CFDictionary *a1, const void *a2, float a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr);
      return valuePtr;
    }
  }

  return v3;
}

uint64_t _getIntValue(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }
  }

  return v3;
}

void _unlockAndReleasePixelBuffer(__CVBuffer *a1)
{
  if (a1)
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);

    CVPixelBufferRelease(a1);
  }
}

size_t _putBytes(uint64_t a1, const void *a2, size_t a3)
{
  BaseAddress = IOSurfaceGetBaseAddress(*a1);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 + a3 > v8)
  {
    a3 = v8 - v7;
  }

  if (a3)
  {
    memcpy(&BaseAddress[v7], a2, a3);
    *(a1 + 8) += a3;
  }

  return a3;
}

uint64_t CMPhotoGetPreferredHEIFTileSizeForImageSize(unint64_t a1, unint64_t a2, int a3)
{
  v3 = a2 > 0x1800 || a1 > 0x1800;
  v4 = a1 * a2;
  if (v3 && v4 > 0x4000000)
  {
    return 1024;
  }

  if (a3 == 1882468912 || a3 == 1885745712)
  {
    v8 = 768;
  }

  else
  {
    v8 = 512;
  }

  v9 = a2 > 0xC00 || a1 > 0xC00;
  if (v9 && v4 >= 0x1000001)
  {
    v8 = _calculateTileLengthForImageLengthBasedOnRestrictions(a1, 0x80uLL, 0x400uLL);
    _calculateTileLengthForImageLengthBasedOnRestrictions(a2, 0x40uLL, 0x400uLL);
  }

  return v8;
}

uint64_t CMPhotoGetPreferredDNGTileSizeForImageSize(unint64_t a1, unint64_t a2, int a3)
{
  v3 = a2 > 0x1800 || a1 > 0x1800;
  v4 = a1 * a2;
  if (!v3 || v4 < 0x4000001)
  {
    v7 = a2 > 0xC00 || a1 > 0xC00;
    if (v7 && v4 >= 0x1000001)
    {
      if (a3 == 5)
      {
        v8 = _calculateTileLengthForImageLengthBasedOnRestrictions(a1, 8uLL, 0x800uLL);
        v9 = a2;
        v10 = 2048;
LABEL_22:
        _calculateTileLengthForImageLengthBasedOnRestrictions(v9, 8uLL, v10);
        return v8;
      }
    }

    else if (a3 != 5)
    {
      v8 = _calculateTileLengthForImageLengthBasedOnRestrictions(a1, 8uLL, 0x200uLL);
      v9 = a2;
      v10 = 512;
      goto LABEL_22;
    }

    v8 = _calculateTileLengthForImageLengthBasedOnRestrictions(a1, 8uLL, 0x400uLL);
    v9 = a2;
    v10 = 1024;
    goto LABEL_22;
  }

  if (a3 == 5)
  {
    return 2048;
  }

  else
  {
    return 1024;
  }
}

uint64_t CMPhotoSetDefaultTilingOptionForCodec(int a1, unint64_t a2, unint64_t a3, int a4, uint64_t *a5)
{
  PreferredHEIFTileSizeForImageSize = a2;
  if (a1 != 1936484717)
  {
    PreferredHEIFTileSizeForImageSize = CMPhotoGetPreferredHEIFTileSizeForImageSize(a2, a3, a4);
    a3 = v7;
  }

  if (a5)
  {
    *a5 = PreferredHEIFTileSizeForImageSize;
    a5[1] = a3;
  }

  return 0;
}

uint64_t CMPhotoGetTilingOption(const __CFDictionary *a1, unint64_t a2, unint64_t a3, int a4, int a5, _BYTE *a6, char *a7, unint64_t *a8, void *a9)
{
  Value = CFDictionaryGetValue(a1, @"Tiling");
  v17 = CFDictionaryGetValue(a1, @"CustomMinimumSourceAlignment");
  if (a5 == 1936484717)
  {
    PreferredHEIFTileSizeForImageSize = a2;
    v19 = a3;
    if (Value)
    {
      goto LABEL_3;
    }

LABEL_12:
    v22 = 0;
    *a6 = 0;
    if (!a8)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  PreferredHEIFTileSizeForImageSize = CMPhotoGetPreferredHEIFTileSizeForImageSize(a2, a3, a4);
  v19 = v25;
  if (!Value)
  {
    goto LABEL_12;
  }

LABEL_3:
  v36 = a6;
  v20 = CFGetTypeID(Value);
  if (v20 == CFBooleanGetTypeID())
  {
    v21 = CFBooleanGetValue(Value);
    if (v21)
    {
      v22 = 0;
      if (a3 >= 2 * v19 || a2 >= 2 * PreferredHEIFTileSizeForImageSize)
      {
        v24 = v21;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0;
    }

LABEL_27:
    v27 = v36;
    goto LABEL_28;
  }

  v26 = CFGetTypeID(Value);
  if (v26 == CFDictionaryGetTypeID())
  {
    size.width = 0.0;
    size.height = 0.0;
    if (CGSizeMakeWithDictionaryRepresentation(Value, &size))
    {
      v27 = v36;
      if (a5 == 1936484717)
      {
LABEL_17:
        fig_log_get_emitter();
        return FigSignalErrorAtGM();
      }

      v31 = xmmword_1A5ABBDB0;
      point = xmmword_1A5ABBDB0;
      PreferredHEIFTileSizeForImageSize = vcvtad_u64_f64(size.width);
      v19 = vcvtad_u64_f64(size.height);
      if (a2 == PreferredHEIFTileSizeForImageSize && a3 == v19)
      {
        v24 = 0;
      }

      else
      {
        if (v17)
        {
          v33 = CFGetTypeID(v17);
          if (v33 == CFDictionaryGetTypeID())
          {
            CGPointMakeWithDictionaryRepresentation(v17, &point);
            x = point.x;
            y = point.y;
          }

          else
          {
            x = 128.0;
            y = 64.0;
          }

          v27 = v36;
          v31 = xmmword_1A5ABBDB0;
        }

        else
        {
          x = 128.0;
          y = 64.0;
        }

        if (x <= 0.0 || y <= 0.0)
        {
          point = v31;
          x = 128.0;
          y = 64.0;
        }

        if (a2 != PreferredHEIFTileSizeForImageSize && (PreferredHEIFTileSizeForImageSize < 0x80 || PreferredHEIFTileSizeForImageSize % x) || a3 != v19 && (v19 < 0x40 || v19 % y))
        {
          goto LABEL_17;
        }

        v24 = 1;
      }

      v22 = 0;
LABEL_28:
      *v27 = 1;
      *a7 = v24;
      if (!a8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v22 = 0;
    *v36 = 0;
    if (!a8)
    {
LABEL_30:
      result = 0;
      if (a9)
      {
        *a9 = 0;
        a9[1] = v22;
      }

      return result;
    }

LABEL_29:
    *a8 = PreferredHEIFTileSizeForImageSize;
    a8[1] = v19;
    goto LABEL_30;
  }

  v28 = CFGetTypeID(Value);
  if (v28 == CFNumberGetTypeID() && a5 == 1936484717)
  {
    LODWORD(size.width) = 0;
    if (CFNumberGetValue(Value, kCFNumberIntType, &size))
    {
      if (SLODWORD(size.width) < 2)
      {
        v22 = 0;
        v24 = 0;
      }

      else
      {
        if (LODWORD(size.width) >= 4)
        {
          width_low = 4;
        }

        else
        {
          width_low = LODWORD(size.width);
        }

        v19 = ((a3 + width_low - 1) / width_low + 7) & 0xFFFFFFFFFFFFFFF8;
        v22 = a3 % v19;
        v24 = 1;
      }

      goto LABEL_27;
    }

    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoGetTwoPassCropRects(uint64_t a1, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  if ((*a2 & 1) == 0)
  {
    v15 = (v12 & 1) == 0 && (a2[2] & 1) == 0;
    if (v15 && (a2[3] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v11)
  {
    v22 = 1;
  }

  else
  {
    v22 = v13 & (v13 + v11 != a3);
  }

  if (v12)
  {
    v23 = 1;
    goto LABEL_22;
  }

  v23 = v14 & (v14 + v12 != a4);
  if ((v22 | v23) != 1)
  {
LABEL_10:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  v32 = 0;
  result = CMPhotoPixelFormatIsSubsampled(a1, &v32 + 1, &v32, 0, 0);
  if (result)
  {
    return result;
  }

  if (HIBYTE(v32))
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v31 = 698;
LABEL_45:
    _extractRGBComponentAndCopyIntoMonochromeBuffer_cold_1(v31, &v33);
    return v33;
  }

  if (v32)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    v31 = 699;
    goto LABEL_45;
  }

  v26 = a2[1];
  v18 = a2[2];
  v17 = a2[3];
  v11 = *a2 & 0xFFFFFFFFFFFFFFFELL;
  v27 = v18 + *a2 + ((v18 + *a2) | 0xFFFFFFFFFFFFFFFELL) + 2;
  if (v27 >= a3)
  {
    v27 = a3;
  }

  if (v22)
  {
    v28 = v27;
  }

  else
  {
    v11 = *a2;
    v28 = v18 + *a2;
  }

  v12 = v26 & 0xFFFFFFFFFFFFFFFELL;
  v29 = v17 + v26 + ((v17 + v26) | 0xFFFFFFFFFFFFFFFELL) + 2;
  if (v29 >= a4)
  {
    v29 = a4;
  }

  if (v23)
  {
    v30 = v29;
  }

  else
  {
    v12 = a2[1];
    v30 = v17 + v26;
  }

  v20 = *a2 - v11;
  v19 = v26 - v12;
  v13 = v28 - v11;
  v14 = v30 - v12;
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_11:
  *a5 = v11;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
LABEL_12:
  result = 0;
  if (a6)
  {
    *a6 = v20;
    a6[1] = v19;
    a6[2] = v18;
    a6[3] = v17;
  }

  return result;
}

uint64_t _calculateTileLengthForImageLengthBasedOnRestrictions(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = (a1 >> 3) / a2 * a2;
  if (v3 > a3)
  {
    return a3;
  }

  v4 = 512;
  v5 = 1024;
  do
  {
    v6 = v3 - a2;
    if (v3 <= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = v3;
    }

    while (v7 <= a3)
    {
      v8 = (v7 + a1 / v7 * v7 - a1) % v7;
      v9 = v8 > v5;
      if (v8 < v5)
      {
        v5 = (v7 + a1 / v7 * v7 - a1) % v7;
      }

      if (!v9)
      {
        v4 = v7;
      }

      v7 += a2;
    }

    if (v5 <= (3 * v4) >> 2)
    {
      break;
    }

    v3 -= a2;
    a3 = v4;
  }

  while (v6 >= 0x200);
  return v4;
}

uint64_t AppleDicomAddDICOMPropertiesToDataSet(void *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __AppleDicomAddDICOMPropertiesToDataSet_block_invoke;
  v3[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
  v3[4] = a2;
  [a1 enumerateKeysAndObjectsUsingBlock:v3];
  return 0;
}

void __AppleDicomAddDICOMPropertiesToDataSet_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = *(a1 + 32);
  if (isKindOfClass)
  {
    _addKeyValueToDataSet(v9, v5, v6);
  }

  v11[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  _addKeyValueToDataSet(v9, v5, v10);
}

void _addKeyValueToDataSet(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  std::string::basic_string[abi:ne200100]<0>(&v6, [v4 cStringUsingEncoding:4]);
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,std::string &,0>();
}

void sub_1A59BDF2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = *(v35 - 104);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(v35 - 88);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A59BDBF0);
}

void sub_1A59BE09C(_Unwind_Exception *a1)
{
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  _Unwind_Resume(a1);
}

BOOL AppleDicomElementHasApplePrivateOwner(vega::dicom::File **a1)
{
  v1 = vega::dicom::File::data_set(*a1);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2 && (vega::dictionary::Page::private_owner(v2, &v8), v9))
  {
    v4 = std::__shared_weak_count::lock(v9);
    if (v4)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }

    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (v5)
    {
      EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(v5);
      v5 = std::string::compare(EncodeAccelerationModeOverride, "Apple Extension") == 0;
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5;
}

void sub_1A59BE51C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

id AppleDicomGetDicomPropertiesFromImageProperties(void *a1, void *a2)
{
  v103[16] = *MEMORY[0x1E69E9840];
  v58 = a1;
  v53 = [v58 objectForKeyedSubscript:*MEMORY[0x1E696D4A8]];
  v78 = [MEMORY[0x1E695DF90] dictionary];
  v2 = *MEMORY[0x1E696D6A8];
  v102[0] = *MEMORY[0x1E696D6E8];
  v102[1] = v2;
  v103[0] = MEMORY[0x1E695E118];
  v103[1] = MEMORY[0x1E695E118];
  v3 = *MEMORY[0x1E696D6C0];
  v102[2] = *MEMORY[0x1E696D6B0];
  v102[3] = v3;
  v103[2] = MEMORY[0x1E695E118];
  v103[3] = MEMORY[0x1E695E118];
  v4 = *MEMORY[0x1E696D6D8];
  v102[4] = *MEMORY[0x1E696D6F8];
  v102[5] = v4;
  v103[4] = MEMORY[0x1E695E118];
  v103[5] = MEMORY[0x1E695E118];
  v5 = *MEMORY[0x1E696D478];
  v102[6] = *MEMORY[0x1E696D470];
  v102[7] = v5;
  v103[6] = MEMORY[0x1E695E118];
  v103[7] = MEMORY[0x1E695E118];
  v6 = *MEMORY[0x1E696D6D0];
  v102[8] = *MEMORY[0x1E696D628];
  v102[9] = v6;
  v103[8] = MEMORY[0x1E695E118];
  v103[9] = MEMORY[0x1E695E118];
  v7 = *MEMORY[0x1E696D630];
  v102[10] = *MEMORY[0x1E696D678];
  v102[11] = v7;
  v103[10] = MEMORY[0x1E695E118];
  v103[11] = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E696D6E0];
  v102[12] = *MEMORY[0x1E696D488];
  v102[13] = v8;
  v103[12] = MEMORY[0x1E695E118];
  v103[13] = MEMORY[0x1E695E118];
  v9 = *MEMORY[0x1E696D6C8];
  v102[14] = *MEMORY[0x1E696D490];
  v102[15] = v9;
  v103[14] = MEMORY[0x1E695E118];
  v103[15] = MEMORY[0x1E695E118];
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:16];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v53;
  v10 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v10)
  {
    v11 = *v92;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v92 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v91 + 1) + 8 * i);
        v14 = [v62 objectForKeyedSubscript:v13];
        v15 = [v14 BOOLValue];

        if ((v15 & 1) == 0)
        {
          v16 = [obj objectForKeyedSubscript:v13];
          [v78 setObject:v16 forKeyedSubscript:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v10);
  }

  v77 = _getDicomToImagePropertiesMap();
  __p = 0;
  if (CMPhotoPropertyListCopyWithMutableContainers(0, v58, &__p))
  {
    v17 = v78;
    v78 = MEMORY[0x1E695E0F8];
    goto LABEL_56;
  }

  v60 = __p;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v56 = [v58 allKeys];
  v59 = [v56 countByEnumeratingWithState:&v87 objects:v100 count:16];
  if (v59)
  {
    v57 = *v88;
    v55 = *MEMORY[0x1E696DE30];
    v73 = *MEMORY[0x1E696D998];
    v70 = *MEMORY[0x1E696DBA8];
    v69 = *MEMORY[0x1E696D9F0];
    v68 = *MEMORY[0x1E696D4F0];
    v67 = *MEMORY[0x1E696D510];
    v66 = *MEMORY[0x1E696D500];
    v65 = *MEMORY[0x1E696D4F8];
    v64 = *MEMORY[0x1E696D508];
    v72 = *MEMORY[0x1E696DAA0];
    v71 = *MEMORY[0x1E696DB28];
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v88 != v57)
        {
          objc_enumerationMutation(v56);
        }

        v18 = *(*(&v87 + 1) + 8 * j);
        v75 = [v58 objectForKeyedSubscript:v18];
        if (v75)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v18 isEqual:v55])
            {
              v19 = v75;
              _ZNSt3__115allocate_sharedB8ne200100INS_19basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
            }

            v76 = [v60 objectForKeyedSubscript:v18];
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v74 = [v77 objectForKeyedSubscript:v18];
            v20 = [v74 countByEnumeratingWithState:&v83 objects:v99 count:16];
            if (v20)
            {
              v21 = *v84;
              do
              {
                v22 = 0;
                do
                {
                  if (*v84 != v21)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v23 = *(*(&v83 + 1) + 8 * v22);
                  v24 = [v77 objectForKeyedSubscript:v18];
                  v25 = [v24 objectForKeyedSubscript:v23];

                  v26 = [v78 objectForKeyedSubscript:v25];
                  v27 = v26 == 0;

                  if (!v27)
                  {
                    goto LABEL_27;
                  }

                  v28 = [v75 objectForKeyedSubscript:v23];
                  v29 = v28 == 0;

                  if (!v29)
                  {
                    if ([v23 isEqual:v73])
                    {
                      v30 = [v75 objectForKeyedSubscript:v23];
                      v31 = [v75 objectForKeyedSubscript:v72];
                      v32 = [v75 objectForKeyedSubscript:v71];
                      v33 = _getDICOMDateTimeFromExifDateTime(v30, v31, v32);
                      [v78 setObject:v33 forKeyedSubscript:v25];

                      v98[0] = v23;
                      v98[1] = v72;
                      v98[2] = v71;
                      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:3];
                      [v76 removeObjectsForKeys:v34];
                    }

                    else
                    {
                      if ([v23 isEqual:v70])
                      {
                        v35 = [v75 objectForKeyedSubscript:v23];
                        v36 = _getDICOMDateTimeFromExifDateTime(v35, 0, 0);
                        [v78 setObject:v36 forKeyedSubscript:v25];

LABEL_39:
LABEL_27:
                        [v76 removeObjectForKey:v23];
                        goto LABEL_28;
                      }

                      if (![v23 isEqual:v69])
                      {
                        v35 = [v75 objectForKeyedSubscript:v23];
                        [v78 setObject:v35 forKeyedSubscript:v25];
                        goto LABEL_39;
                      }

                      v37 = [v75 objectForKeyedSubscript:v23];
                      v38 = [v37 unsignedIntValue];

                      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v38 & 1];
                      [v78 setObject:v39 forKeyedSubscript:v68];

                      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v38 >> 1) & 3];
                      [v78 setObject:v40 forKeyedSubscript:v67];

                      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v38 >> 3) & 3];
                      [v78 setObject:v41 forKeyedSubscript:v66];

                      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v38 >> 5) & 1];
                      [v78 setObject:v42 forKeyedSubscript:v65];

                      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v38 >> 6) & 1];
                      [v78 setObject:v43 forKeyedSubscript:v64];

                      v97[0] = v23;
                      v97[1] = v68;
                      v97[2] = v67;
                      v97[3] = v66;
                      v97[4] = v65;
                      v97[5] = v64;
                      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:6];
                      [v76 removeObjectsForKeys:v34];
                    }
                  }

LABEL_28:

                  ++v22;
                }

                while (v20 != v22);
                v44 = [v74 countByEnumeratingWithState:&v83 objects:v99 count:16];
                v20 = v44;
              }

              while (v44);
            }
          }
        }
      }

      v59 = [v56 countByEnumeratingWithState:&v87 objects:v100 count:16];
    }

    while (v59);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v45 = [v58 allKeys];
  v46 = [v45 countByEnumeratingWithState:&v79 objects:v96 count:16];
  if (v46)
  {
    v47 = *v80;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v80 != v47)
        {
          objc_enumerationMutation(v45);
        }

        v49 = *(*(&v79 + 1) + 8 * k);
        v50 = [v60 objectForKeyedSubscript:v49];
        if (v50)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![v50 count])
          {
            [v60 removeObjectForKey:v49];
          }
        }
      }

      v46 = [v45 countByEnumeratingWithState:&v79 objects:v96 count:16];
    }

    while (v46);
  }

  v51 = v60;
  v17 = v60;
  *a2 = v60;
LABEL_56:

  return v78;
}

id _getDicomToImagePropertiesMap(void)
{
  v114[3] = *MEMORY[0x1E69E9840];
  v113[0] = *MEMORY[0x1E696D9B0];
  v0 = *MEMORY[0x1E696D4D8];
  v1 = *MEMORY[0x1E696D9E8];
  v111[0] = *MEMORY[0x1E696D9E0];
  v111[1] = v1;
  v2 = *MEMORY[0x1E696D4E0];
  v112[0] = v0;
  v112[1] = v2;
  v3 = *MEMORY[0x1E696D500];
  v4 = *MEMORY[0x1E696D9D8];
  v111[2] = *MEMORY[0x1E696D9F0];
  v111[3] = v4;
  v5 = *MEMORY[0x1E696D4D0];
  v112[2] = v3;
  v112[3] = v5;
  v6 = *MEMORY[0x1E696D638];
  v7 = *MEMORY[0x1E696DA30];
  v111[4] = *MEMORY[0x1E696DA40];
  v111[5] = v7;
  v8 = *MEMORY[0x1E696D640];
  v112[4] = v6;
  v112[5] = v8;
  v9 = *MEMORY[0x1E696D648];
  v10 = *MEMORY[0x1E696DB48];
  v111[6] = *MEMORY[0x1E696DA38];
  v111[7] = v10;
  v11 = *MEMORY[0x1E696D4B8];
  v112[6] = v9;
  v112[7] = v11;
  v12 = *MEMORY[0x1E696D728];
  v13 = *MEMORY[0x1E696D8A8];
  v111[8] = *MEMORY[0x1E696DAE8];
  v111[9] = v13;
  v14 = *MEMORY[0x1E696D468];
  v112[8] = v12;
  v112[9] = v14;
  v15 = *MEMORY[0x1E696D480];
  v16 = *MEMORY[0x1E696D9C8];
  v111[10] = *MEMORY[0x1E696D960];
  v111[11] = v16;
  v17 = *MEMORY[0x1E696D4C0];
  v112[10] = v15;
  v112[11] = v17;
  v18 = *MEMORY[0x1E696D698];
  v19 = *MEMORY[0x1E696DB08];
  v111[12] = *MEMORY[0x1E696DA78];
  v111[13] = v19;
  v20 = *MEMORY[0x1E696D748];
  v112[12] = v18;
  v112[13] = v20;
  v21 = *MEMORY[0x1E696D6A0];
  v22 = *MEMORY[0x1E696DA68];
  v111[14] = *MEMORY[0x1E696DA80];
  v111[15] = v22;
  v23 = *MEMORY[0x1E696D670];
  v112[14] = v21;
  v112[15] = v23;
  v24 = *MEMORY[0x1E696D518];
  v25 = *MEMORY[0x1E696DAF8];
  v111[16] = *MEMORY[0x1E696DA18];
  v111[17] = v25;
  v26 = *MEMORY[0x1E696D740];
  v112[16] = v24;
  v112[17] = v26;
  v27 = *MEMORY[0x1E696D680];
  v28 = *MEMORY[0x1E696D9F8];
  v111[18] = *MEMORY[0x1E696DA70];
  v111[19] = v28;
  v29 = *MEMORY[0x1E696D4E8];
  v112[18] = v27;
  v112[19] = v29;
  v30 = *MEMORY[0x1E696D758];
  v31 = *MEMORY[0x1E696DAD8];
  v111[20] = *MEMORY[0x1E696DB10];
  v111[21] = v31;
  v32 = *MEMORY[0x1E696D710];
  v112[20] = v30;
  v112[21] = v32;
  v33 = *MEMORY[0x1E696D4C8];
  v34 = *MEMORY[0x1E696DB50];
  v111[22] = *MEMORY[0x1E696D9D0];
  v111[23] = v34;
  v35 = *MEMORY[0x1E696D760];
  v112[22] = v33;
  v112[23] = v35;
  v36 = *MEMORY[0x1E696D4B0];
  v37 = *MEMORY[0x1E696DA08];
  v111[24] = *MEMORY[0x1E696D9C0];
  v111[25] = v37;
  v38 = *MEMORY[0x1E696D520];
  v112[24] = v36;
  v112[25] = v38;
  v39 = *MEMORY[0x1E696D708];
  v40 = *MEMORY[0x1E696DA20];
  v111[26] = *MEMORY[0x1E696DAC8];
  v111[27] = v40;
  v41 = *MEMORY[0x1E696D620];
  v112[26] = v39;
  v112[27] = v41;
  v42 = *MEMORY[0x1E696D498];
  v43 = *MEMORY[0x1E696DAC0];
  v111[28] = *MEMORY[0x1E696D980];
  v111[29] = v43;
  v44 = *MEMORY[0x1E696D700];
  v112[28] = v42;
  v112[29] = v44;
  v45 = *MEMORY[0x1E696D720];
  v46 = *MEMORY[0x1E696D9A8];
  v111[30] = *MEMORY[0x1E696DAE0];
  v111[31] = v46;
  v47 = *MEMORY[0x1E696D4A0];
  v112[30] = v45;
  v112[31] = v47;
  v48 = *MEMORY[0x1E696D750];
  v49 = *MEMORY[0x1E696DA50];
  v111[32] = *MEMORY[0x1E696DB00];
  v111[33] = v49;
  v50 = *MEMORY[0x1E696D658];
  v112[32] = v48;
  v112[33] = v50;
  v51 = *MEMORY[0x1E696D660];
  v52 = *MEMORY[0x1E696DA60];
  v111[34] = *MEMORY[0x1E696DA58];
  v111[35] = v52;
  v53 = *MEMORY[0x1E696D668];
  v112[34] = v51;
  v112[35] = v53;
  v111[36] = *MEMORY[0x1E696D998];
  v112[36] = *MEMORY[0x1E696D458];
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:37];
  v114[0] = v54;
  v113[1] = *MEMORY[0x1E696DBF0];
  v55 = *MEMORY[0x1E696D618];
  v56 = *MEMORY[0x1E696DC20];
  v109[0] = *MEMORY[0x1E696DC88];
  v109[1] = v56;
  v57 = *MEMORY[0x1E696D5B0];
  v110[0] = v55;
  v110[1] = v57;
  v58 = *MEMORY[0x1E696D5A8];
  v59 = *MEMORY[0x1E696DC30];
  v109[2] = *MEMORY[0x1E696DC18];
  v109[3] = v59;
  v60 = *MEMORY[0x1E696D5C0];
  v110[2] = v58;
  v110[3] = v60;
  v61 = *MEMORY[0x1E696D5B8];
  v62 = *MEMORY[0x1E696DB90];
  v109[4] = *MEMORY[0x1E696DC28];
  v109[5] = v62;
  v63 = *MEMORY[0x1E696D530];
  v110[4] = v61;
  v110[5] = v63;
  v64 = *MEMORY[0x1E696D528];
  v65 = *MEMORY[0x1E696DC70];
  v109[6] = *MEMORY[0x1E696DB88];
  v109[7] = v65;
  v66 = *MEMORY[0x1E696D600];
  v110[6] = v64;
  v110[7] = v66;
  v67 = *MEMORY[0x1E696D5E0];
  v68 = *MEMORY[0x1E696DC68];
  v109[8] = *MEMORY[0x1E696DC50];
  v109[9] = v68;
  v69 = *MEMORY[0x1E696D5F8];
  v110[8] = v67;
  v110[9] = v69;
  v70 = *MEMORY[0x1E696D5D0];
  v71 = *MEMORY[0x1E696DBA0];
  v109[10] = *MEMORY[0x1E696DC40];
  v109[11] = v71;
  v72 = *MEMORY[0x1E696D540];
  v110[10] = v70;
  v110[11] = v72;
  v73 = *MEMORY[0x1E696D5F0];
  v74 = *MEMORY[0x1E696DC58];
  v109[12] = *MEMORY[0x1E696DC60];
  v109[13] = v74;
  v75 = *MEMORY[0x1E696D5E8];
  v110[12] = v73;
  v110[13] = v75;
  v76 = *MEMORY[0x1E696D610];
  v77 = *MEMORY[0x1E696DC78];
  v109[14] = *MEMORY[0x1E696DC80];
  v109[15] = v77;
  v78 = *MEMORY[0x1E696D608];
  v110[14] = v76;
  v110[15] = v78;
  v79 = *MEMORY[0x1E696D5A0];
  v80 = *MEMORY[0x1E696DC08];
  v109[16] = *MEMORY[0x1E696DC10];
  v109[17] = v80;
  v81 = *MEMORY[0x1E696D598];
  v110[16] = v79;
  v110[17] = v81;
  v82 = *MEMORY[0x1E696D5C8];
  v83 = *MEMORY[0x1E696DBD8];
  v109[18] = *MEMORY[0x1E696DC38];
  v109[19] = v83;
  v84 = *MEMORY[0x1E696D578];
  v110[18] = v82;
  v110[19] = v84;
  v85 = *MEMORY[0x1E696D570];
  v86 = *MEMORY[0x1E696DBE8];
  v109[20] = *MEMORY[0x1E696DBD0];
  v109[21] = v86;
  v87 = *MEMORY[0x1E696D588];
  v110[20] = v85;
  v110[21] = v87;
  v88 = *MEMORY[0x1E696D580];
  v89 = *MEMORY[0x1E696DBB8];
  v109[22] = *MEMORY[0x1E696DBE0];
  v109[23] = v89;
  v90 = *MEMORY[0x1E696D558];
  v110[22] = v88;
  v110[23] = v90;
  v91 = *MEMORY[0x1E696D550];
  v92 = *MEMORY[0x1E696DBC8];
  v109[24] = *MEMORY[0x1E696DBB0];
  v109[25] = v92;
  v93 = *MEMORY[0x1E696D568];
  v110[24] = v91;
  v110[25] = v93;
  v94 = *MEMORY[0x1E696D560];
  v95 = *MEMORY[0x1E696DC48];
  v109[26] = *MEMORY[0x1E696DBC0];
  v109[27] = v95;
  v96 = *MEMORY[0x1E696D5D8];
  v110[26] = v94;
  v110[27] = v96;
  v97 = *MEMORY[0x1E696D538];
  v98 = *MEMORY[0x1E696DBA8];
  v109[28] = *MEMORY[0x1E696DB98];
  v109[29] = v98;
  v99 = *MEMORY[0x1E696D548];
  v110[28] = v97;
  v110[29] = v99;
  v109[30] = *MEMORY[0x1E696DBF8];
  v110[30] = *MEMORY[0x1E696D590];
  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:31];
  v114[1] = v100;
  v113[2] = *MEMORY[0x1E696DF28];
  v101 = *MEMORY[0x1E696D730];
  v102 = *MEMORY[0x1E696DF50];
  v107[0] = *MEMORY[0x1E696DF68];
  v107[1] = v102;
  v103 = *MEMORY[0x1E696D690];
  v108[0] = v101;
  v108[1] = v103;
  v107[2] = *MEMORY[0x1E696DF48];
  v108[2] = *MEMORY[0x1E696D688];
  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];
  v114[2] = v104;
  v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:3];

  return v105;
}

id _getDICOMDateTimeFromExifDateTime(NSString *a1, NSString *a2, NSString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [(NSString *)v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F191F100];

  v9 = [v8 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F191F100];

  if (!v7)
  {
    v11 = v9;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [v9 stringByAppendingFormat:@".%@", v7];

  v11 = v10;
  if (v6)
  {
LABEL_5:
    v12 = [(NSString *)v6 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F191F100];
    v13 = [v11 stringByAppendingString:v12];

    v11 = v13;
  }

LABEL_6:

  return v11;
}

id AppleDicomGetDICOMPropertiesFromDataSet(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *MEMORY[0x1E696D6C8];
  v25[0] = *MEMORY[0x1E696D630];
  v25[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  vega::dicom::DataSet::iterator::iterator(&v22, *(*a1 + 40));
  for (i = v22.__r_.__value_.__r.__words[0]; ; vega::dicom::DataSet::iterator::operator++(&i))
  {
    vega::dicom::DataSet::iterator::iterator(&v22, *a1 + 48);
    v23 = v22.__r_.__value_.__r.__words[0];
    if (!vega::dicom::DataSet::iterator::operator!=(&i, &v23))
    {
      break;
    }

    v5 = vega::dicom::DataSet::iterator::operator*(&i);
    v7 = *v5;
    v6 = *(v5 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vega::dicom::DataElement::lazy_load(v7);
    v9 = *(v7 + 30);
    v8 = *(v7 + 31);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v9)
    {
      LODWORD(v23) = *vega::dictionary::Page::name(v7);
      if ((vega::Tag::is_private(&v23) & 1) == 0)
      {
        v10 = vega::dicom::File::data_set(v7);
        v11 = *v10;
        v12 = *(v10 + 8);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          v13 = vega::dictionary::Page::name(v11);
          if (*(v13 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v22, *v13, *(v13 + 8));
          }

          else
          {
            v14 = *v13;
            v22.__r_.__value_.__r.__words[2] = *(v13 + 16);
            *&v22.__r_.__value_.__l.__data_ = v14;
          }

          if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v22;
          }

          else
          {
            v15 = v22.__r_.__value_.__r.__words[0];
          }

          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v15, v20}];
          v17 = [v4 containsObject:v16];
          if ((v17 & 1) == 0)
          {
            vega::dicom::DataElement::lazy_load(v7);
            v18 = *(v7 + 31);
            v20 = *(v7 + 30);
            v21 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            _manipulatorToImageProperties(&v20, v16, v2);
            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }
          }

          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
            if (v17)
            {
LABEL_25:
              if (!v12)
              {
                goto LABEL_27;
              }

LABEL_26:
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
              goto LABEL_27;
            }
          }

          else if (v17)
          {
            goto LABEL_25;
          }
        }

        if (v12)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return v2;
}

void _manipulatorToImageProperties(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    goto LABEL_101;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_41;
  }

  if (v9)
  {
    v10 = v9;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v9[1];
    if (v12 != v9[2])
    {
      do
      {
        v13 = v12;
        if (*(v12 + 23) < 0)
        {
          v13 = *v12;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
        if (v14)
        {
          [v7 addObject:v14];
        }

        v12 += 3;
      }

      while (v12 != v10[2]);
    }

    goto LABEL_21;
  }

  if (v15)
  {
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v15 + 8;
    if (v15[31] < 0)
    {
      v16 = *v16;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 unpaddedString];
      [v7 addObject:v19];
    }

    goto LABEL_21;
  }

  if (v21)
  {
    v22 = v21;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v21[1];
    if (v23 != v21[2])
    {
      do
      {
        v24 = [MEMORY[0x1E696AD98] numberWithInt:*v23];
        [v7 addObject:v24];

        ++v23;
      }

      while (v23 != v22[2]);
    }

    goto LABEL_21;
  }

  if (v25)
  {
    v26 = v25;
    v11 = a1[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = v25[1];
    if (v27 != v25[2])
    {
      do
      {
        v28 = [MEMORY[0x1E696AD98] numberWithDouble:vega::DecimalString::operator double(v27)];
        [v7 addObject:v28];

        v27 += 8;
      }

      while (v27 != v26[2]);
    }

    goto LABEL_21;
  }

  if (!v29)
  {
LABEL_41:
    std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SignedShortManipulator,vega::manipulators::ValueManipulator>(a1, &v72);
    if (v72)
    {
      for (i = *(v72 + 8); i != *(v72 + 16); ++i)
      {
        v34 = [MEMORY[0x1E696AD98] numberWithShort:*i];
        [v7 addObject:v34];
      }
    }

    else
    {
      std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::UnsignedLongManipulator,vega::manipulators::ValueManipulator>(a1, &v70);
      if (v70)
      {
        for (j = *(v70 + 8); j != *(v70 + 16); ++j)
        {
          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*j];
          [v7 addObject:v36];
        }
      }

      else
      {
        std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SignedLongManipulator,vega::manipulators::ValueManipulator>(a1, &v68);
        if (v68)
        {
          for (k = *(v68 + 8); k != *(v68 + 16); ++k)
          {
            v38 = [MEMORY[0x1E696AD98] numberWithInt:*k];
            [v7 addObject:v38];
          }
        }

        else
        {
          std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::UnsignedVeryLongManipulator,vega::manipulators::ValueManipulator>(a1, &v66);
          if (v66)
          {
            for (m = *(v66 + 8); m != *(v66 + 16); ++m)
            {
              v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*m];
              [v7 addObject:v40];
            }
          }

          else
          {
            std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::SignedVeryLongManipulator,vega::manipulators::ValueManipulator>(a1, &v64);
            if (v64)
            {
              for (n = *(v64 + 8); n != *(v64 + 16); ++n)
              {
                v42 = [MEMORY[0x1E696AD98] numberWithLongLong:*n];
                [v7 addObject:v42];
              }
            }

            else
            {
              std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FloatingPointManipulator,vega::manipulators::ValueManipulator>(a1, &v62);
              if (v62)
              {
                for (ii = *(v62 + 8); ii != *(v62 + 16); ++ii)
                {
                  LODWORD(v43) = *ii;
                  v45 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
                  [v7 addObject:v45];
                }
              }

              else
              {
                std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FloatingPointDoubleManipulator,vega::manipulators::ValueManipulator>(a1, &v60);
                if (v60)
                {
                  for (jj = *(v60 + 8); jj != *(v60 + 16); ++jj)
                  {
                    v47 = [MEMORY[0x1E696AD98] numberWithDouble:*jj];
                    [v7 addObject:v47];
                  }
                }

                else
                {
                  std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::OtherByteManipulator,vega::manipulators::ValueManipulator>(a1, &v58);
                  if (v58)
                  {
                    (*(*v58 + 16))(&__p);
                    v48 = MEMORY[0x1E695DEF0];
                    v49 = vega::dicom::RawValue::data(__p);
                    v50 = [v48 dataWithBytes:v49 length:vega::dicom::RawValue::size(__p)];
                    [v7 addObject:v50];

                    if (v56)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
                    }
                  }

                  else
                  {
                    v51 = MEMORY[0x1E696AEC0];
                    (*(**a1 + 24))(&__p);
                    if (v57 >= 0)
                    {
                      p_p = &__p;
                    }

                    else
                    {
                      p_p = __p;
                    }

                    v53 = [v51 stringWithUTF8String:p_p];
                    if (v57 < 0)
                    {
                      operator delete(__p);
                    }

                    if (v53)
                    {
                      [v7 addObject:v53];
                    }
                  }

                  if (v59)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
                  }
                }

                if (v61)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v61);
                }
              }

              if (v63)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v63);
              }
            }

            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v65);
            }
          }

          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v67);
          }
        }

        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }
      }

      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      }
    }

    v20 = v73;
    if (!v73)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v30 = v29;
  v11 = a1[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = v29[1];
  if (v31 != v29[2])
  {
    do
    {
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*v31];
      [v7 addObject:v32];

      ++v31;
    }

    while (v31 != v30[2]);
  }

LABEL_21:
  if (v11)
  {
    v20 = v11;
LABEL_95:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_96:
  if ([v7 count] < 2)
  {
    if ([v7 count] == 1)
    {
      v54 = [v7 objectAtIndexedSubscript:0];
      [v6 setObject:v54 forKeyedSubscript:v5];
    }
  }

  else
  {
    [v6 setObject:v7 forKeyedSubscript:v5];
  }

LABEL_101:
}

void sub_1A59C0AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  v33 = *(v31 - 88);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v31 - 72);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

NSMutableDictionary *AppleDicomGetImagePropertiesFromDicomProperties(void *a1)
{
  v122 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v63 = _getDicomToImagePropertiesMap();
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v63;
  v2 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
  if (v2)
  {
    v87 = *v109;
    do
    {
      v89 = v2;
      for (i = 0; i != v89; i = (i + 1))
      {
        if (*v109 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v108 + 1) + 8 * i);
        v5 = [obj objectForKeyedSubscript:v4];
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v104 objects:v120 count:16];
        if (v7)
        {
          v8 = *v105;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v105 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v104 + 1) + 8 * j);
              v11 = [v6 objectForKeyedSubscript:v10];
              v119[0] = v4;
              v119[1] = v10;
              v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
              [v1 setObject:v12 forKeyedSubscript:v11];
            }

            v7 = [v6 countByEnumeratingWithState:&v104 objects:v120 count:16];
          }

          while (v7);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v108 objects:v121 count:16];
    }

    while (v2);
  }

  v79 = *MEMORY[0x1E696D510];
  v80 = *MEMORY[0x1E696D4F0];
  v118[0] = *MEMORY[0x1E696D4F0];
  v118[1] = v79;
  v13 = *MEMORY[0x1E696D4F8];
  v84 = *MEMORY[0x1E696D500];
  v118[2] = *MEMORY[0x1E696D500];
  v78 = v13;
  v118[3] = v13;
  v77 = *MEMORY[0x1E696D508];
  v118[4] = *MEMORY[0x1E696D508];
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:5];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v64 = [MEMORY[0x1E695DF90] dictionary];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v88 = v65;
  v82 = [v88 countByEnumeratingWithState:&v100 objects:v117 count:16];
  if (v82)
  {
    v81 = *v101;
    v76 = *MEMORY[0x1E696D458];
    v74 = *MEMORY[0x1E696D548];
    v72 = *MEMORY[0x1E696D4B8];
    v69 = *MEMORY[0x1E696D638];
    v67 = *MEMORY[0x1E696D680];
    v15 = *MEMORY[0x1E696D9B0];
    v68 = *MEMORY[0x1E696DB48];
    v73 = *MEMORY[0x1E696D998];
    v70 = *MEMORY[0x1E696DAA0];
    v71 = *MEMORY[0x1E696DB28];
    v75 = *MEMORY[0x1E696D9F0];
    do
    {
      v85 = 0;
      do
      {
        if (*v101 != v81)
        {
          objc_enumerationMutation(v88);
        }

        v16 = *(*(&v100 + 1) + 8 * v85);
        v90 = [v88 objectForKeyedSubscript:v16];
        v86 = [v1 objectForKeyedSubscript:v16];
        if ([v16 isEqual:v84])
        {
          v17 = [v88 objectForKeyedSubscript:v80];
          v18 = [v17 intValue];

          v19 = [v88 objectForKeyedSubscript:v79];
          LODWORD(v17) = [v19 intValue];

          v20 = [v88 objectForKeyedSubscript:v84];
          v21 = [v20 intValue];

          v22 = [v88 objectForKeyedSubscript:v78];
          LODWORD(v20) = [v22 intValue];

          v23 = [v88 objectForKeyedSubscript:v77];
          v24 = [v23 intValue];

          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18 | (2 * v17) | (8 * v21) | (32 * v20) | (2 * v24)];
          _addKeyToSubdict(v14, v15, v75, v25);
          goto LABEL_41;
        }

        if ([v16 isEqual:v76])
        {
          v90 = v90;
          v26 = [MEMORY[0x1E695DF90] dictionary];
          v27 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([^+.-]+)(\\.\\d{1 options:6})?([+-]\\d{4})?" error:{0, 0}];
          v28 = [v27 firstMatchInString:v90 options:0 range:{0, -[objc_object length](v90, "length")}];
          v29 = v28;
          if (v28 && [v28 numberOfRanges] == 4 && objc_msgSend(v29, "rangeAtIndex:", 1) != 0x7FFFFFFFFFFFFFFFLL)
          {
            v30 = MEMORY[0x1E696AEC0];
            v31 = [v29 rangeAtIndex:1];
            v33 = [(objc_object *)v90 substringWithRange:v31, v32];
            v34 = v33;
            v35 = [v30 stringWithFormat:@"%-14s", objc_msgSend(v33, "UTF8String")];

            v36 = _getStringWithSeparatorsInserted(v35, &unk_1F194A3F0);
            [v26 setObject:v36 forKeyedSubscript:v73];

            if ([v29 rangeAtIndex:2] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v37 = [v29 rangeAtIndex:2];
              v39 = [(objc_object *)v90 substringWithRange:v37 + 1, v38 - 1];
              [v26 setObject:v39 forKeyedSubscript:v71];
            }

            if ([v29 rangeAtIndex:3] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v40 = [v29 rangeAtIndex:3];
              v42 = [(objc_object *)v90 substringWithRange:v40, v41];
              v43 = _getStringWithSeparatorsInserted(v42, &unk_1F194A420);
              [v26 setObject:v43 forKeyedSubscript:v70];
            }
          }

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v44 = v26;
          v45 = [(objc_object *)v44 countByEnumeratingWithState:&v96 objects:v116 count:16];
          if (v45)
          {
            v46 = *v97;
            do
            {
              for (k = 0; k != v45; ++k)
              {
                if (*v97 != v46)
                {
                  objc_enumerationMutation(v44);
                }

                v48 = *(*(&v96 + 1) + 8 * k);
                v49 = [(objc_object *)v44 objectForKeyedSubscript:v48];
                _addKeyToSubdict(v14, v15, v48, v49);
              }

              v45 = [(objc_object *)v44 countByEnumeratingWithState:&v96 objects:v116 count:16];
            }

            while (v45);
          }

          v25 = v44;
          goto LABEL_40;
        }

        if ([v16 isEqual:v74])
        {
          v50 = [(objc_object *)v90 stringByPaddingToLength:8 withString:@" " startingAtIndex:0];

          v51 = _getStringWithSeparatorsInserted(v50, &unk_1F194A360);

          v25 = [v86 objectAtIndexedSubscript:0];
          v44 = [v86 objectAtIndexedSubscript:1];
          _addKeyToSubdict(v14, &v25->isa, &v44->isa, v51);
          v90 = v51;
          goto LABEL_40;
        }

        if ([v16 isEqual:v72])
        {
          v25 = [MEMORY[0x1E695DF70] array];
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v52 = [(objc_object *)v90 componentsSeparatedByString:@"\"];
          v53 = [v52 countByEnumeratingWithState:&v92 objects:v115 count:16];
          if (v53)
          {
            v54 = *v93;
            do
            {
              for (m = 0; m != v53; ++m)
              {
                if (*v93 != v54)
                {
                  objc_enumerationMutation(v52);
                }

                v56 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(*(&v92 + 1) + 8 * m), "intValue")}];
                [(objc_object *)v25 addObject:v56];
              }

              v53 = [v52 countByEnumeratingWithState:&v92 objects:v115 count:16];
            }

            while (v53);
          }

          _addKeyToSubdict(v14, v15, v68, v25);
          goto LABEL_41;
        }

        if ([v16 isEqual:v69])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v114 = v90;
            v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];

            v90 = v57;
          }

LABEL_60:
          v25 = [v86 objectAtIndexedSubscript:0];
          v44 = [v86 objectAtIndexedSubscript:1];
          _addKeyToSubdict(v14, &v25->isa, &v44->isa, v90);
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        if ([v16 isEqual:v67])
        {
          v91 = v90;
          v58 = v91;
          v59 = [(objc_object *)v91 bytes];
          v60 = [(objc_object *)v91 length];
          v112 = v59;
          v113 = v60;
          std::allocate_shared[abi:ne200100]<imemstream,std::allocator<imemstream>,std::span<char,18446744073709551615ul> &,0>();
        }

        if (v86)
        {
          goto LABEL_60;
        }

        if (([v66 containsObject:v16] & 1) == 0)
        {
          [v64 setObject:v90 forKeyedSubscript:v16];
        }

LABEL_42:

        ++v85;
      }

      while (v85 != v82);
      v61 = [v88 countByEnumeratingWithState:&v100 objects:v117 count:16];
      v82 = v61;
    }

    while (v61);
  }

  [(NSMutableDictionary *)v14 setObject:v64 forKeyedSubscript:*MEMORY[0x1E696D4A8]];

  return v14;
}

void _addKeyToSubdict(NSMutableDictionary *a1, NSString *a2, NSString *a3, objc_object *a4)
{
  v13 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v7];

  if (!v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:v7];
  }

  v12 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v7];
  [v12 setObject:v9 forKeyedSubscript:v8];
}

void sub_1A59C1CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id _getStringWithSeparatorsInserted(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v16 = a2;
  v4 = [MEMORY[0x1E696AD60] string];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v16;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v19;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v8);
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = [v10 objectAtIndexedSubscript:1];
        v6 = [v12 intValue];

        v13 = [v3 substringWithRange:{v9, v6 - v9}];
        [v4 appendFormat:@"%@%@", v13, v11];

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
    v5 = v6;
  }

  v14 = [v3 substringWithRange:{v5, objc_msgSend(v3, "length") - v5}];
  [v4 appendString:v14];

  return v4;
}

void AppleDicomAddMetadataPayloadsToDataSet(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  a1;
  v3 = *(a2 + 8);
  v6[0] = *a2;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  v4 = _registerApplePrivateGroup(v6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v10 = 24933;
  v11 = v4 | 5;
  std::string::basic_string[abi:ne200100]<0>(&__p, "SQ");
  if (v9 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  LOWORD(v7) = *p_p;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag,vega::VR,std::shared_ptr<vega::dicom::DataSet> &,0>();
}

void sub_1A59C24CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  _Unwind_Resume(a1);
}

uint64_t _registerApplePrivateGroup(vega::dicom::DataSet **a1)
{
  for (i = 16; ; i += 16)
  {
    v4 = *a1;
    LOWORD(v16.__r_.__value_.__l.__data_) = 24933;
    *&v16.__r_.__value_.__s.__data_[2] = i;
    vega::dicom::DataSet::data_element(v4, &v16, &v17);
    v5 = v17;
    if (!v17)
    {
      v9 = *a1;
      LOWORD(v16.__r_.__value_.__l.__data_) = 24933;
      *&v16.__r_.__value_.__s.__data_[2] = i;
      vega::dicom::DataSet::new_element<vega::dictionary::PrivateElement>(v9);
    }

    vega::dicom::DataElement::lazy_load(v17);
    v7 = *(v5 + 30);
    v6 = *(v5 + 31);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      (*(*v7 + 24))(&v16, v7);
      if (!std::string::compare(&v16, "Apple Extension"))
      {
        v8 = 1;
      }

      else
      {
        (*(*v7 + 24))(&v15, v7);
        v8 = std::string::compare(&v15, "Apple Extension ") == 0;
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v8)
      {
        v1 = i << 8;
      }

      v10 = !v8;
      if (v6)
      {
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    else
    {
      v10 = 1;
      if (v6)
      {
        goto LABEL_18;
      }
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = i;
    if (v11 > 0x80)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v14, "Could not register private group");
      std::runtime_error::runtime_error(exception, &v14);
      exception->__vftable = &unk_1F1917110;
    }
  }

  return v1;
}

void sub_1A59C28B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

void _addSingleStringToDataSet(void *a1, __int16 a2)
{
  v8 = 24933;
  v9 = a2;
  if ([a1 lengthOfBytesUsingEncoding:4] <= 0x3E8)
  {
    v2 = "ST";
  }

  else
  {
    v2 = "LT";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v2);
  if (v5 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v6 = *v3;
  v7 = *(v3 + 1);
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag,vega::VR,0>();
}

void sub_1A59C2B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v22 = *(v20 - 48);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

id AppleDicomGetMetadataPayloadsFromDataSet(vega::dicom::DataSet **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v51 = 0xFFFFFF00056165;
  vega::dicom::DataSet::data_element(*a1, &v51, &v49);
  if (v49)
  {
    v3 = v50;
    v48[0] = v49;
    v48[1] = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasApplePrivateOwner = AppleDicomElementHasApplePrivateOwner(v48);
    v5 = HasApplePrivateOwner;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (!v5)
      {
        goto LABEL_51;
      }
    }

    else if (!HasApplePrivateOwner)
    {
      goto LABEL_51;
    }

    v46 = 0xFFFFFF00076165;
    v47 = 0xFFFFFF00066165;
    v45 = 0xFFFFFF00086165;
    v6 = vega::dicom::DataElement::data_sets(v49);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    std::vector<std::shared_ptr<vega::dicom::DataSet>>::__init_with_size[abi:ne200100]<std::shared_ptr<vega::dicom::DataSet>*,std::shared_ptr<vega::dicom::DataSet>*>(&v42, *v6, v6[1], (v6[1] - *v6) >> 4);
    v7 = v42;
    if (v42 == v43)
    {
LABEL_50:
      v40 = &v42;
      std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&v40);
      goto LABEL_51;
    }

    while (1)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      vega::dicom::DataSet::data_element(*v7, &v47, &v40);
      vega::dicom::DataSet::data_element(*v7, &v46, &v38);
      vega::dicom::DataSet::data_element(*v7, &v45, &v36);
      if (v40)
      {
        v9 = v41;
        v35[0] = v40;
        v35[1] = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = AppleDicomElementHasApplePrivateOwner(v35);
        v11 = v10;
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          if (!v11)
          {
            goto LABEL_43;
          }
        }

        else if (!v10)
        {
          goto LABEL_43;
        }

        v12 = v40;
        vega::dicom::DataElement::lazy_load(v40);
        v13 = *(v12 + 31);
        v33 = *(v12 + 30);
        v34 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        _manipulatorToImageProperties(&v33, @"URI", v8);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (!v36)
        {
          goto LABEL_43;
        }

        v14 = v37;
        v32[0] = v36;
        v32[1] = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = AppleDicomElementHasApplePrivateOwner(v32);
        v16 = v15;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          if (!v16)
          {
            goto LABEL_43;
          }

LABEL_27:
          v17 = v36;
          vega::dicom::DataElement::lazy_load(v36);
          v18 = *(v17 + 31);
          v30 = *(v17 + 30);
          v31 = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          _manipulatorToImageProperties(&v30, @"Data", v8);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          if (v38)
          {
            v19 = v39;
            v29[0] = v38;
            v29[1] = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = AppleDicomElementHasApplePrivateOwner(v29);
            v21 = v20;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              if (!v21)
              {
                goto LABEL_42;
              }

LABEL_38:
              v22 = v38;
              vega::dicom::DataElement::lazy_load(v38);
              v23 = *(v22 + 31);
              v27 = *(v22 + 30);
              v28 = v23;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              _manipulatorToImageProperties(&v27, @"Name", v8);
              if (v28)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v28);
              }

              goto LABEL_42;
            }

            if (v20)
            {
              goto LABEL_38;
            }
          }

LABEL_42:
          [v2 addObject:{v8, v27}];
          goto LABEL_43;
        }

        if (v15)
        {
          goto LABEL_27;
        }
      }

LABEL_43:
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      v7 += 2;
      if (v7 == v43)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if ([v2 count])
  {
    v24 = v2;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v25;
}

void sub_1A59C2F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24, void **a25, std::__shared_weak_count *a26, char a27)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  a25 = &a27;
  std::vector<std::shared_ptr<vega::dicom::DataSet>>::__destroy_vector::operator()[abi:ne200100](&a25);
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

uint64_t AppleDicomAddAuxiliaryImageToDataSet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11)
{
  v24 = a8;
  v22 = a9;
  v23 = a10;
  v15 = a11;
  v16 = *a1;
  if (*a1 && a3 && a4 && (a6 == 6 || a6 == 3) && v24 && v15)
  {
    v30[0] = 0xFFFFFF00096165;
    vega::dicom::DataSet::data_element(v16, v30, &v28);
    if (v28)
    {
      v17 = v29;
      v27[0] = v28;
      v27[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
      }

      HasApplePrivateOwner = AppleDicomElementHasApplePrivateOwner(v27);
      v19 = HasApplePrivateOwner;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        if (!v19)
        {
LABEL_20:
          std::allocate_shared[abi:ne200100]<vega::dicom::DataSet,std::allocator<vega::dicom::DataSet>,std::shared_ptr<vega::dicom::DataElement> &,0>();
        }
      }

      else if (!HasApplePrivateOwner)
      {
        goto LABEL_20;
      }
    }

    v20 = *(a1 + 8);
    v26[0] = *a1;
    v26[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    _registerApplePrivateGroup(v26);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    std::string::basic_string[abi:ne200100]<0>(&v25, "SQ");
    std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag,vega::VR,std::shared_ptr<vega::dicom::DataSet> &,0>();
  }

  return 4294947636;
}

void sub_1A59C39A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, std::__shared_weak_count *a49)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v52 = *(v50 - 192);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  v53 = *(v50 - 168);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v54 = *(v50 - 120);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  _Unwind_Resume(a1);
}

void _appendValueToManipulator<std::shared_ptr<vega::manipulators::ValueManipulator>>(const void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_216;
  }

  if (v5)
  {
    v6 = v5;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = v3;
    std::string::basic_string[abi:ne200100]<0>(&__p, [v8 objCType]);
    if (v102 < 0)
    {
      if (v101 == 1)
      {
        v13 = *__p;
        if (v13 > 0x62)
        {
          switch(v13)
          {
            case 'c':
              goto LABEL_85;
            case 'i':
LABEL_78:
              v20 = [v8 intValue];
              goto LABEL_86;
            case 's':
LABEL_52:
              v20 = [v8 shortValue];
LABEL_86:
              v22 = v20;
              goto LABEL_130;
          }
        }

        else
        {
          switch(v13)
          {
            case 'C':
              goto LABEL_83;
            case 'I':
LABEL_42:
              v18 = [v8 unsignedIntValue];
LABEL_84:
              v22 = v18;
              goto LABEL_130;
            case 'S':
LABEL_74:
              v18 = [v8 unsignedShortValue];
              goto LABEL_84;
          }
        }
      }

      if (v101 == 1 && *__p == 108)
      {
        goto LABEL_55;
      }

      if (v101 == 1 && *__p == 76)
      {
LABEL_75:
        v27 = [v8 unsignedLongValue];
LABEL_125:
        v22 = v27;
        goto LABEL_130;
      }

      if (v101 != 1)
      {
        goto LABEL_121;
      }

      if (*__p == 113)
      {
LABEL_60:
        v21 = [v8 longLongValue];
        goto LABEL_61;
      }

      if (v102 < 0)
      {
LABEL_121:
        if (v101 == 1)
        {
          v9 = *__p;
          goto LABEL_123;
        }
      }
    }

    else if (v102 == 1)
    {
      v9 = __p;
      if (__p > 0x62u)
      {
        if (__p > 0x6Bu)
        {
          if (__p != 108)
          {
            if (__p != 113)
            {
              if (__p != 115)
              {
LABEL_123:
                if (v9 == 81)
                {
                  v27 = [v8 unsignedLongLongValue];
                  goto LABEL_125;
                }

                goto LABEL_126;
              }

              goto LABEL_52;
            }

            goto LABEL_60;
          }

LABEL_55:
          v21 = [v8 longValue];
LABEL_61:
          v22 = v21;
          goto LABEL_130;
        }

        if (__p != 99)
        {
          if (__p != 105)
          {
            goto LABEL_123;
          }

          goto LABEL_78;
        }

LABEL_85:
        v20 = [v8 charValue];
        goto LABEL_86;
      }

      if (__p <= 0x4Bu)
      {
        if (__p != 67)
        {
          if (__p != 73)
          {
            goto LABEL_123;
          }

          goto LABEL_42;
        }

LABEL_83:
        v18 = [v8 unsignedCharValue];
        goto LABEL_84;
      }

      if (__p != 76)
      {
        if (__p != 83)
        {
          goto LABEL_123;
        }

        goto LABEL_74;
      }

      goto LABEL_75;
    }

LABEL_126:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
    {
      [v8 floatValue];
      v22 = v38;
    }

    else
    {
      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
      {
        v40 = 0;
        v22 = 0.0;
LABEL_131:
        if (v102 < 0)
        {
          operator delete(__p);
        }

        if (v40)
        {
          v42 = v6[2];
          v41 = v6[3];
          if (v42 < v41)
          {
            *v42 = v22;
            v43 = v42 + 1;
LABEL_177:
            v6[2] = v43;
            goto LABEL_178;
          }

          v44 = v6[1];
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 2;
          v47 = v46 + 1;
          if ((v46 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v48 = v41 - v44;
          if (v48 >> 1 > v47)
          {
            v47 = v48 >> 1;
          }

          v49 = v48 >= 0x7FFFFFFFFFFFFFFCLL;
          v50 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v49)
          {
            v50 = v47;
          }

          if (v50)
          {
            std::allocator<int>::allocate_at_least[abi:ne200100]((v6 + 1), v50);
          }

          v51 = (v42 - v44) >> 2;
          v52 = (4 * v46);
          v53 = (4 * v46 - 4 * v51);
          *v52 = v22;
          v43 = v52 + 1;
          goto LABEL_175;
        }

        goto LABEL_178;
      }

      [v8 doubleValue];
      v22 = v39;
    }

LABEL_130:
    v40 = 1;
    goto LABEL_131;
  }

  if (!v10)
  {
    if (v14)
    {
      v15 = v14;
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v3;
      std::string::basic_string[abi:ne200100]<0>(&__p, [v16 objCType]);
      if (v102 < 0)
      {
        if (v101 == 1)
        {
          v28 = *__p;
          if (v28 > 0x62)
          {
            switch(v28)
            {
              case 'c':
LABEL_228:
                v69 = [v16 charValue];
                goto LABEL_231;
              case 'i':
LABEL_229:
                v69 = [v16 intValue];
                goto LABEL_231;
              case 's':
                goto LABEL_209;
            }
          }

          else
          {
            switch(v28)
            {
              case 'C':
                goto LABEL_227;
              case 'I':
                goto LABEL_230;
              case 'S':
LABEL_190:
                v69 = [v16 unsignedShortValue];
LABEL_231:
                LOWORD(v72) = v69;
                goto LABEL_232;
            }
          }
        }

        if (v101 == 1 && *__p == 108)
        {
          goto LABEL_210;
        }

        if (v101 == 1)
        {
          v17 = *__p;
          goto LABEL_198;
        }
      }

      else if (v102 == 1)
      {
        v17 = __p;
        if (__p > 0x62u)
        {
          if (__p <= 0x6Bu)
          {
            if (__p != 99)
            {
              if (__p != 105)
              {
LABEL_198:
                if (v17 == 76)
                {
                  v70 = [v16 unsignedLongValue];
LABEL_204:
                  v71 = 1;
                  LOWORD(v72) = v70;
LABEL_233:
                  if (v102 < 0)
                  {
                    operator delete(__p);
                  }

                  if (v71)
                  {
                    v77 = v15[2];
                    v76 = v15[3];
                    if (v77 >= v76)
                    {
                      v79 = v15[1];
                      v80 = v77 - v79;
                      v81 = (v77 - v79) >> 1;
                      if (v81 <= -2)
                      {
                        std::vector<int>::__throw_length_error[abi:ne200100]();
                      }

                      v82 = v76 - v79;
                      if (v82 <= v81 + 1)
                      {
                        v83 = v81 + 1;
                      }

                      else
                      {
                        v83 = v82;
                      }

                      v49 = v82 >= 0x7FFFFFFFFFFFFFFELL;
                      v84 = 0x7FFFFFFFFFFFFFFFLL;
                      if (!v49)
                      {
                        v84 = v83;
                      }

                      if (v84)
                      {
                        std::allocator<unsigned short>::allocate_at_least[abi:ne200100]((v15 + 1), v84);
                      }

                      v85 = (v77 - v79) >> 1;
                      v86 = (2 * v81);
                      v87 = (2 * v81 - 2 * v85);
                      *v86 = v72;
                      v78 = v86 + 1;
                      memcpy(v87, v79, v80);
                      v88 = v15[1];
                      v15[1] = v87;
                      v15[2] = v78;
                      v15[3] = 0;
                      if (v88)
                      {
                        operator delete(v88);
                      }
                    }

                    else
                    {
                      *v77 = v72;
                      v78 = v77 + 2;
                    }

                    v15[2] = v78;
                  }

                  goto LABEL_178;
                }

                goto LABEL_200;
              }

              goto LABEL_229;
            }

            goto LABEL_228;
          }

          if (__p != 108)
          {
            if (__p != 115)
            {
              goto LABEL_198;
            }

LABEL_209:
            v69 = [v16 shortValue];
            goto LABEL_231;
          }

LABEL_210:
          LOWORD(v72) = [v16 longValue];
          goto LABEL_232;
        }

        if (__p != 67)
        {
          if (__p != 73)
          {
            if (__p != 83)
            {
              goto LABEL_198;
            }

            goto LABEL_190;
          }

LABEL_230:
          v69 = [v16 unsignedIntValue];
          goto LABEL_231;
        }

LABEL_227:
        v69 = [v16 unsignedCharValue];
        goto LABEL_231;
      }

LABEL_200:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "q"))
      {
        v70 = [v16 longLongValue];
        goto LABEL_204;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Q"))
      {
        v70 = [v16 unsignedLongLongValue];
        goto LABEL_204;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
      {
        [v16 floatValue];
        v72 = v73;
      }

      else
      {
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
        {
          LOWORD(v72) = 0;
          v71 = 0;
          goto LABEL_233;
        }

        [v16 doubleValue];
        v72 = v89;
      }

LABEL_232:
      v71 = 1;
      goto LABEL_233;
    }

    if (v23)
    {
      v24 = v23;
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOWORD(v98) = 0;
      v25 = v3;
      std::string::basic_string[abi:ne200100]<0>(&__p, [v25 objCType]);
      if (v102 < 0)
      {
        if (v101 == 1)
        {
          v67 = *__p;
          if (v67 > 0x62)
          {
            switch(v67)
            {
              case 'c':
                goto LABEL_285;
              case 'i':
LABEL_287:
                LOWORD(v68) = [v25 intValue];
                goto LABEL_275;
              case 's':
LABEL_264:
                LOWORD(v68) = [v25 shortValue];
                goto LABEL_275;
            }
          }

          else
          {
            switch(v67)
            {
              case 'C':
                goto LABEL_284;
              case 'I':
                goto LABEL_286;
              case 'S':
                goto LABEL_185;
            }
          }
        }

        if (v101 == 1)
        {
          v26 = *__p;
          goto LABEL_267;
        }
      }

      else if (v102 == 1)
      {
        v26 = __p;
        if (__p <= 0x62u)
        {
          if (__p != 67)
          {
            if (__p != 73)
            {
              if (__p != 83)
              {
                goto LABEL_267;
              }

LABEL_185:
              LOWORD(v68) = [v25 unsignedShortValue];
              goto LABEL_275;
            }

LABEL_286:
            LOWORD(v68) = [v25 unsignedIntValue];
            goto LABEL_275;
          }

LABEL_284:
          LOWORD(v68) = [v25 unsignedCharValue];
          goto LABEL_275;
        }

        if (__p != 115)
        {
          if (__p != 105)
          {
            if (__p != 99)
            {
LABEL_267:
              if (v26 == 108)
              {
                LOWORD(v68) = [v25 longValue];
                goto LABEL_275;
              }

              goto LABEL_269;
            }

LABEL_285:
            LOWORD(v68) = [v25 charValue];
            goto LABEL_275;
          }

          goto LABEL_287;
        }

        goto LABEL_264;
      }

LABEL_269:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "L"))
      {
        LOWORD(v68) = [v25 unsignedLongValue];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "q"))
      {
        LOWORD(v68) = [v25 longLongValue];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Q"))
      {
        LOWORD(v68) = [v25 unsignedLongLongValue];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
      {
        [v25 floatValue];
        v68 = v92;
      }

      else
      {
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
        {
          v91 = 0;
          goto LABEL_276;
        }

        [v25 doubleValue];
        v68 = v93;
      }

LABEL_275:
      LOWORD(v98) = v68;
      v91 = 1;
LABEL_276:
      if (v102 < 0)
      {
        operator delete(__p);
      }

      if (v91)
      {
        std::vector<unsigned short>::push_back[abi:ne200100](v24 + 1, &v98);
      }

      goto LABEL_178;
    }

    if (v34)
    {
      v35 = v34;
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v98) = 0;
      v36 = v3;
      std::string::basic_string[abi:ne200100]<0>(&__p, [v36 objCType]);
      if (v102 < 0)
      {
        if (v101 == 1)
        {
          v37 = *__p;
          if (v37 > 0x62)
          {
            if (v37 == 99)
            {
              goto LABEL_291;
            }

            if (v37 == 105)
            {
LABEL_290:
              v90 = [v36 intValue];
              goto LABEL_305;
            }

            if (v37 != 115)
            {
              goto LABEL_293;
            }

LABEL_260:
            v90 = [v36 shortValue];
            goto LABEL_305;
          }

LABEL_280:
          if (v37 == 67)
          {
            v90 = [v36 unsignedCharValue];
            goto LABEL_305;
          }

          if (v37 == 83)
          {
            v90 = [v36 unsignedShortValue];
            goto LABEL_305;
          }

          goto LABEL_293;
        }
      }

      else if (v102 == 1)
      {
        v37 = __p;
        if (__p > 0x62u)
        {
          if (__p != 115)
          {
            if (__p != 105)
            {
              if (__p != 99)
              {
LABEL_293:
                if (v37 == 73)
                {
                  v90 = [v36 unsignedIntValue];
                  goto LABEL_305;
                }

                goto LABEL_295;
              }

LABEL_291:
              v90 = [v36 charValue];
              goto LABEL_305;
            }

            goto LABEL_290;
          }

          goto LABEL_260;
        }

        goto LABEL_280;
      }

LABEL_295:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "l"))
      {
        v90 = [v36 longValue];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "L"))
      {
        v90 = [v36 unsignedLongValue];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "q"))
      {
        v90 = [v36 longLongValue];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Q"))
      {
        v90 = [v36 unsignedLongLongValue];
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
      {
        [v36 floatValue];
        v90 = v95;
      }

      else
      {
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
        {
          v94 = 0;
          goto LABEL_306;
        }

        [v36 doubleValue];
        v90 = v96;
      }

LABEL_305:
      LODWORD(v98) = v90;
      v94 = 1;
LABEL_306:
      if (v102 < 0)
      {
        operator delete(__p);
      }

      if (v94)
      {
        std::vector<int>::emplace_back<int const&>(v35 + 1, &v98);
      }

      goto LABEL_178;
    }

    if (v74)
    {
      v75 = v74;
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(__p) = 0;
      if (!_unbridgeNumericValue<unsigned int>(v3, &__p))
      {
        std::vector<int>::emplace_back<int const&>(v75 + 1, &__p);
      }

      goto LABEL_178;
    }

LABEL_216:
    std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FixedSizeElementManipulator<long long>,vega::manipulators::ValueManipulator>(a1, &__p);
    if (__p)
    {
      v98 = 0;
      if (!_unbridgeNumericValue<long long>(v3, &v98))
      {
        std::vector<long long>::emplace_back<long long const&>(__p + 1, &v98);
      }
    }

    else
    {
      std::dynamic_pointer_cast[abi:ne200100]<vega::manipulators::FixedSizeElementManipulator<unsigned long long>,vega::manipulators::ValueManipulator>(a1, &v98);
      if (v98)
      {
        v97 = 0;
        if (!_unbridgeNumericValue<unsigned long long>(v3, &v97))
        {
          std::vector<long long>::emplace_back<long long const&>((v98 + 8), &v97);
        }
      }

      if (v99)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v99);
      }
    }

    v66 = v101;
    if (v101)
    {
      goto LABEL_225;
    }

    goto LABEL_226;
  }

  v6 = v10;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v3;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v11 objCType]);
  if ((v102 & 0x80000000) == 0)
  {
    if (v102 != 1)
    {
      goto LABEL_104;
    }

    p_p = &__p;
    if (__p <= 0x62u)
    {
      if (__p <= 0x4Bu)
      {
        if (__p != 67)
        {
          if (__p != 73)
          {
            goto LABEL_102;
          }

          goto LABEL_157;
        }

        goto LABEL_155;
      }

      if (__p != 76)
      {
        if (__p != 83)
        {
          goto LABEL_102;
        }

        goto LABEL_147;
      }

LABEL_153:
      v30 = [v11 unsignedLongValue];
      goto LABEL_154;
    }

    if (__p <= 0x6Bu)
    {
      if (__p != 99)
      {
        if (__p != 105)
        {
          goto LABEL_102;
        }

        goto LABEL_159;
      }

      goto LABEL_156;
    }

    if (__p != 108)
    {
      if (__p != 115)
      {
        goto LABEL_102;
      }

      goto LABEL_150;
    }

    goto LABEL_151;
  }

  if (v101 == 1)
  {
    v19 = *__p;
    if (v19 > 0x62)
    {
      switch(v19)
      {
        case 'c':
LABEL_156:
          v55 = [v11 charValue];
          goto LABEL_160;
        case 'i':
LABEL_159:
          v55 = [v11 intValue];
          goto LABEL_160;
        case 's':
LABEL_150:
          v55 = [v11 shortValue];
LABEL_160:
          v32 = v55;
          goto LABEL_161;
      }
    }

    else
    {
      switch(v19)
      {
        case 'C':
LABEL_155:
          v54 = [v11 unsignedCharValue];
          goto LABEL_158;
        case 'I':
LABEL_157:
          v54 = [v11 unsignedIntValue];
          goto LABEL_158;
        case 'S':
LABEL_147:
          v54 = [v11 unsignedShortValue];
LABEL_158:
          v32 = v54;
          goto LABEL_161;
      }
    }
  }

  if (v101 == 1 && *__p == 108)
  {
LABEL_151:
    v29 = [v11 longValue];
    goto LABEL_152;
  }

  if (v101 == 1 && *__p == 76)
  {
    goto LABEL_153;
  }

  if (v101 != 1)
  {
    goto LABEL_104;
  }

  p_p = __p;
LABEL_102:
  if (*p_p == 113)
  {
    v29 = [v11 longLongValue];
LABEL_152:
    v32 = v29;
    goto LABEL_161;
  }

LABEL_104:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "Q"))
  {
    v30 = [v11 unsignedLongLongValue];
LABEL_154:
    v32 = v30;
    goto LABEL_161;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "f"))
  {
    [v11 floatValue];
    v32 = v31;
LABEL_161:
    v56 = 1;
    goto LABEL_162;
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "d"))
  {
    [v11 doubleValue];
    v32 = v33;
    goto LABEL_161;
  }

  v56 = 0;
  v32 = 0.0;
LABEL_162:
  if (v102 < 0)
  {
    operator delete(__p);
  }

  if (v56)
  {
    v58 = v6[2];
    v57 = v6[3];
    if (v58 < v57)
    {
      *v58 = v32;
      v43 = (v58 + 1);
      goto LABEL_177;
    }

    v44 = v6[1];
    v45 = v58 - v44;
    v59 = (v58 - v44) >> 3;
    v60 = v59 + 1;
    if ((v59 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v61 = v57 - v44;
    if (v61 >> 2 > v60)
    {
      v60 = v61 >> 2;
    }

    v49 = v61 >= 0x7FFFFFFFFFFFFFF8;
    v62 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v49)
    {
      v62 = v60;
    }

    if (v62)
    {
      std::allocator<vega::DecimalString>::allocate_at_least[abi:ne200100]((v6 + 1), v62);
    }

    v63 = (v58 - v44) >> 3;
    v64 = (8 * v59);
    v53 = (8 * v59 - 8 * v63);
    *v64 = v32;
    v43 = (v64 + 1);
LABEL_175:
    memcpy(v53, v44, v45);
    v65 = v6[1];
    v6[1] = v53;
    v6[2] = v43;
    v6[3] = 0;
    if (v65)
    {
      operator delete(v65);
    }

    goto LABEL_177;
  }

LABEL_178:
  if (v7)
  {
    v66 = v7;
LABEL_225:
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

LABEL_226:
}