uint64_t _performTileCopy(uint64_t a1, __CVBuffer *a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6, int a7, int a8, CFTypeRef *a9)
{
  v16 = *(a1 + 152);
  cf = 0;
  Mutable = CFDictionaryCreateMutable(*a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v18 = Mutable;
  v19 = a3;
  if (a7)
  {
    v19 = a5[2] + *a5 - *a6;
  }

  v20 = a4;
  if (a8)
  {
    v20 = a5[3] + a5[1] - a6[1];
  }

  v21 = *(v16 + 96);
  if (v21)
  {
    v22 = CMPhotoAlignValue(v21 + a3, *(v16 + 80));
    v23 = *(v16 + 96);
    v24 = v18;
    if (v23)
    {
      CMPhotoCFDictionarySetSize(v18, *MEMORY[0x1E6966090], v23);
    }
  }

  else
  {
    v22 = *(v16 + 80);
    v24 = Mutable;
  }

  v25 = v19;
  v26 = *(v16 + 104);
  if (v26)
  {
    CMPhotoCFDictionarySetSize(v24, *MEMORY[0x1E6966078], v26);
  }

  CMPhotoCFDictionarySetSize(v24, *MEMORY[0x1E6966020], v22);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v28 = *(a1 + 8);
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(PixelFormatType);
  PixelBufferWithAttributes = CMPhotoSurfacePoolCreatePixelBufferWithAttributes(v28, UncompressedPixelFormatFromCompressedPixelFormat, a3, a4, v24, &cf);
  if (PixelBufferWithAttributes)
  {
    goto LABEL_73;
  }

  v32 = *a6;
  v31 = a6[1];
  v33 = CVPixelBufferGetPixelFormatType(a2);
  if ((v33 - 1278226736 <= 6 && ((1 << (v33 - 48)) & 0x45) != 0 || (v33 != 875704422 ? (v34 = v33 == 875704438) : (v34 = 1), !v34 ? (v35 = v33 == 1111970369) : (v35 = 1), !v35 ? (v36 = v33 == 1278226488) : (v36 = 1), !v36 ? (v37 = v33 == 1380401729) : (v37 = 1), !v37 ? (v38 = v33 == 1751527984) : (v38 = 1), !v38 ? (v39 = v33 == 1936077360) : (v39 = 1), !v39 ? (v40 = v33 == 1937125936) : (v40 = 1), !v40 ? (v41 = v33 == 1952854576) : (v41 = 1), !v41 ? (v42 = v33 == 1953903152) : (v42 = 1), !v42 ? (v43 = v33 == 2019963440) : (v43 = 1), !v43 ? (v44 = v33 == 2016686640) : (v44 = 1), v44)) && (v59 = v32, v60 = v31, v61 = v25, v62 = v20, OUTLINED_FUNCTION_10_0(), CMPhotoPixelBufferMemcpySupportedForBuffer(v45, v46, v47, v48)))
  {
    v49 = *(v16 + 120);
    if (v49 != a2)
    {
      if (v49)
      {
        if (!*(v16 + 128) || (CVPixelBufferUnlockBaseAddress(v49, 1uLL), *(v16 + 128) = 0, (v49 = *(v16 + 120)) != 0))
        {
          CFRelease(v49);
          *(v16 + 120) = 0;
        }
      }

      if (a2)
      {
        v50 = CFRetain(a2);
      }

      else
      {
        v50 = 0;
      }

      *(v16 + 120) = v50;
      PixelBufferWithAttributes = CVPixelBufferLockBaseAddress(v50, 1uLL);
      if (PixelBufferWithAttributes)
      {
        goto LABEL_73;
      }

      *(v16 + 128) = 1;
    }

    v59 = v32;
    v60 = v31;
    v61 = v25;
    v62 = v20;
    CMPhotoPixelBufferCopyCropRectToOffset(a2, 0, &v59, cf, 1, 0, 0, 0);
    if (!PixelBufferWithAttributes)
    {
      goto LABEL_67;
    }
  }

  else
  {
    PixelBufferWithAttributes = CMPhotoSetPixelBufferCLAP(cf, 0, 0, v25, v20, 0, 1);
    if (!PixelBufferWithAttributes)
    {
      v51 = v25;
      v52 = *(a1 + 16);
      v53 = CVPixelBufferGetPixelFormatType(cf);
      PixelBufferWithAttributes = CMPhotoScaleAndRotateSessionTransformForSize(v52, a2, 1, 1, v53, 0, 0, 1, v32, v31, v51, v20, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *(v16 + 80), 1u, &cf);
      if (!PixelBufferWithAttributes)
      {
        PixelBufferWithAttributes = CMPhotoRemovePixelBufferCLAP(cf);
        if (!PixelBufferWithAttributes)
        {
LABEL_67:
          CMPhotoPropagateColorPropertiesFromSourceBuffer(a2, cf);
          CMPhotoPropagateChromaLocationFromSourceBuffer(a2, cf);
          v54 = VTFillPixelBufferBorderWithBlack();
          v55 = v54;
          if (a9 && !v54)
          {
            *a9 = cf;
            cf = 0;
          }

          goto LABEL_70;
        }
      }
    }
  }

LABEL_73:
  v55 = PixelBufferWithAttributes;
LABEL_70:
  CFRelease(v24);
  if (cf)
  {
    CFRelease(cf);
  }

  return v55;
}

uint64_t VTTileCompressionPluginClass_encode_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DicomGetImageCount(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a1)
  {
    return 4294947636;
  }

  if (!a3)
  {
    return 0;
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    v4 = **(v3 + 8);
  }

  else
  {
    v4 = 1;
  }

  result = 0;
  *a3 = v4;
  return result;
}

uint64_t DicomGetImageGeometryForIndex(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  if (!a1)
  {
    return 4294947636;
  }

  v6 = *(a1 + 136);
  v7 = **(*(v6 + 112) + 8);
  if (a4)
  {
    *a4 = **(*(v6 + 96) + 8);
  }

  if (a5)
  {
    *a5 = v7;
  }

  result = 0;
  if (a6)
  {
    *a6 = 1;
  }

  return result;
}

uint64_t DicomGetPhotometricInterpretationForIndex(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v11 = 0;
  if (!a1)
  {
    return 4294947636;
  }

  v7 = *(a1 + 144);
  v10[0] = *(a1 + 136);
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PhotometricInterpretationFromImageDetails = _getPhotometricInterpretationFromImageDetails(v10, &v11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!PhotometricInterpretationFromImageDetails)
  {
    if (a4)
    {
      *a4 = v11;
    }

    if (a5)
    {
      return _getSubsamplingFromPhotometricInterpretation(v11, a5);
    }

    else
    {
      return 0;
    }
  }

  return PhotometricInterpretationFromImageDetails;
}

void sub_1A5A36B6C(void *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A5A36B4CLL);
}

uint64_t DicomCopyCodecForIndex(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5)
{
  if (!a1)
  {
    return 4294947636;
  }

  v5 = *(a1 + 136);
  if (*(v5 + 88) != 1 || *(v5 + 72) == *(v5 + 64))
  {
    return 4294947634;
  }

  if (*(v5 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(v5 + 16), *(v5 + 24));
  }

  else
  {
    v16 = *(v5 + 16);
  }

  if (*(v5 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v5 + 40), *(v5 + 48));
  }

  else
  {
    __p = *(v5 + 40);
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = vega::dicom::SOPClass::uid(&v16);
  EncodeAccelerationModeOverride = CMPhotoGetEncodeAccelerationModeOverride(v9);
  if (*(EncodeAccelerationModeOverride + 23) >= 0)
  {
    v11 = EncodeAccelerationModeOverride;
  }

  else
  {
    v11 = *EncodeAccelerationModeOverride;
  }

  v12 = [v8 stringWithCString:v11 encoding:{4, *&v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__r.__words[2]}];
  v13 = v12;
  if (v12)
  {
    if (!a4 || (CodecFromTransferSyntaxString = _getCodecFromTransferSyntaxString(v12, a4), !CodecFromTransferSyntaxString))
    {
      CodecFromTransferSyntaxString = 0;
      if (a5)
      {
        *a5 = v13;
      }
    }
  }

  else
  {
    CodecFromTransferSyntaxString = 4294947634;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return CodecFromTransferSyntaxString;
}

void sub_1A5A36CE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A5A36CB4);
}

uint64_t DicomGetAuxiliaryImageCount(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return 4294947636;
  }

  if (!a3)
  {
    return 0;
  }

  result = 0;
  *a3 = (*(a1 + 272) - *(a1 + 264)) >> 4;
  return result;
}

uint64_t DicomDecoderCopyUnpackedAuxiliaryImage(uint64_t a1, uint64_t a2, CFDataRef *a3)
{
  if (!a1)
  {
    return 4294947636;
  }

  if (!a3)
  {
    return 4294947635;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(a1 + 264);
    if (a2 < (*(a1 + 272) - v5) >> 4)
    {
      v6 = (v5 + 16 * a2);
      v7 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v7 + 88) != 1 || (v10 = v7 + 64, v9 = *(v7 + 64), *(v10 + 8) == v9))
      {
        v12 = 4294947634;
        if (!v8)
        {
          return v12;
        }
      }

      else
      {
        __p = 0;
        v15 = 0;
        v16 = 0;
        std::vector<vega::Byte>::__init_with_size[abi:ne200100]<vega::Byte*,vega::Byte*>(&__p, *v9, v9[1], v9[1] - *v9);
        v11 = CFDataCreate(*(a1 + 8), __p, v15 - __p);
        if (v11)
        {
          v12 = 0;
          *a3 = v11;
        }

        else
        {
          v12 = 4294947635;
        }

        if (__p)
        {
          v15 = __p;
          operator delete(__p);
        }

        if (!v8)
        {
          return v12;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      return v12;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

void sub_1A5A36EE8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1A5A36E24);
}

uint64_t DicomDecodeAuxiliaryImageForIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DicomDecodeAuxiliaryImageForIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vega::manipulators::IntegerStringManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5C0))
  {
    _MergedGlobals_4 = 21321;

    __cxa_guard_release(&qword_1ED6FA5C0);
  }
}

void vega::Json::value_from_json<int>()
{
  __assert_rtn("value_from_json", "json.h", 70, "c == ''");
}

{
  __assert_rtn("value_from_json", "json.h", 73, "c == ''");
}

void vega::manipulators::UnsignedShortManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5C8))
  {
    word_1ED6FA5AA = 21333;

    __cxa_guard_release(&qword_1ED6FA5C8);
  }
}

void vega::manipulators::CodeStringManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5D0))
  {
    word_1ED6FA5AC = 21315;

    __cxa_guard_release(&qword_1ED6FA5D0);
  }
}

void vega::manipulators::DateManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5D8))
  {
    word_1ED6FA5AE = 16708;

    __cxa_guard_release(&qword_1ED6FA5D8);
  }
}

void vega::manipulators::TimeManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5E0))
  {
    word_1ED6FA5B0 = 19796;

    __cxa_guard_release(&qword_1ED6FA5E0);
  }
}

void vega::manipulators::PersonNameManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5E8))
  {
    word_1ED6FA5B2 = 20048;

    __cxa_guard_release(&qword_1ED6FA5E8);
  }
}

void vega::manipulators::LongStringManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5F0))
  {
    word_1ED6FA5B4 = 20300;

    __cxa_guard_release(&qword_1ED6FA5F0);
  }
}

void vega::manipulators::OtherByteManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA5F8))
  {
    word_1ED6FA5B6 = 16975;

    __cxa_guard_release(&qword_1ED6FA5F8);
  }
}

void vega::manipulators::SignedShortManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA600))
  {
    word_1ED6FA5B8 = 21331;

    __cxa_guard_release(&qword_1ED6FA600);
  }
}

void vega::manipulators::DecimalStringManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA608))
  {
    word_1ED6FA5BA = 21316;

    __cxa_guard_release(&qword_1ED6FA608);
  }
}

void vega::manipulators::OtherWordManipulator::is_valid_for ()
{
  if (__cxa_guard_acquire(&qword_1ED6FA610))
  {
    word_1ED6FA5BC = 22351;

    __cxa_guard_release(&qword_1ED6FA610);
  }
}

uint64_t _validateMainAndAuxTags(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _renderToPixelBuffer(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = JPEGDeviceInterface_openDriverConnection();
  if (!v2)
  {
    v11 = -16994;
    goto LABEL_11;
  }

  v3 = v2;
  Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v11 = -16991;
    goto LABEL_10;
  }

  v5 = Mutable;
  v6 = JPEGDeviceInterface_numberOfJPEGCores();
  v7 = JPEGDeviceInterface_supportsAppleInterchangeFormats();
  v8 = JPEGDeviceInterface_supportsMissingEOI();
  v9 = JPEGDeviceInterface_supportsRSTLogging();
  v10 = CMPhotoCFDictionarySetInt32(v5, @"Version", 1);
  if (v10 || (v10 = CMPhotoCFDictionarySetInt32(v5, @"NumberOfCores", v6)) != 0 || (v10 = CMPhotoCFDictionarySetBoolean(v5, @"SupportsInterchangeFormats", v7)) != 0 || (v10 = CMPhotoCFDictionarySetBoolean(v5, @"SupportsMissingEOI", v8)) != 0 || (v10 = CMPhotoCFDictionarySetBoolean(v5, @"SupportsRSTLogging", v9)) != 0)
  {
    v11 = v10;
    goto LABEL_13;
  }

  v11 = CMPhotoCFDictionarySetBoolean(v5, @"Supports16BitQuantizationTables", 1);
  if (v11)
  {
LABEL_13:
    JPEGDeviceInterface_closeDriverConnection(v3);
    CFRelease(v5);
    goto LABEL_11;
  }

  CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_sCapabilities = v5;
LABEL_10:
  JPEGDeviceInterface_closeDriverConnection(v3);
LABEL_11:
  CMPhotoParavirtualizedHostJPEGHardwareCopyCapabilities_err = v11;
}

uint64_t CMPhotoParavirtualizedGuestJPEGHardwareGetCapabilities(_DWORD *a1, _DWORD *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  v12 = VTParavirtualizedJPEGSessionCreate();
  if (v12)
  {
    return v12;
  }

  v12 = VTParavirtualizedJPEGSessionCopyCapabilities();
  if (v12)
  {
    return v12;
  }

  if (!CMPhotoCFDictionaryGetInt32IfPresent())
  {
    return 4294950302;
  }

  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 1;
    CMPhotoCFDictionaryGetInt32IfPresent();
  }

  if (a3)
  {
    *a3 = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  if (a4)
  {
    *a4 = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  if (a5)
  {
    *a5 = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  if (a6)
  {
    *a6 = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t CMPhotoParavirtualizedHostJPEGHardwareEncode(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  bzero(inputStruct, 0xDA0uLL);
  bzero(outputStruct, 0xDA0uLL);
  v9 = 0;
  v10 = 4294950306;
  if (!v8 || !v7 || !v5)
  {
    goto LABEL_20;
  }

  v11 = CFGetTypeID(v5);
  if (v11 != CFDictionaryGetTypeID())
  {
    v9 = 0;
    goto LABEL_20;
  }

  v9 = JPEGDeviceInterface_openDriverConnection();
  if (!v9)
  {
    fig_log_get_emitter();
    QuantizationValuesFromData = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  inputStruct[21] = 1;
  inputStruct[7] = 0;
  inputStruct[18] = 0;
  inputStruct[0] = IOSurfaceGetID(v8);
  inputStruct[1] = IOSurfaceGetAllocSize(v8);
  inputStruct[2] = IOSurfaceGetID(v7);
  inputStruct[3] = IOSurfaceGetAllocSize(v7);
  if (!CMPhotoCFDictionaryGetInt32IfPresent() || !CMPhotoCFDictionaryGetInt32IfPresent() || !CMPhotoCFDictionaryGetInt32IfPresent() || !CMPhotoCFDictionaryGetInt32IfPresent() || !CMPhotoCFDictionaryGetInt32IfPresent() || (inputStruct[11] = 0, !CMPhotoCFDictionaryGetInt32IfPresent()) || !CMPhotoCFDictionaryGetInt32IfPresent())
  {
    v10 = 4294950306;
    goto LABEL_20;
  }

  if (inputStruct[22] && !JPEGDeviceInterface_supportsRSTLogging())
  {
    v10 = 4294950302;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(v5, @"LumaQuant");
  QuantizationValuesFromData = _extractQuantizationValuesFromData(Value, v20);
  if (QuantizationValuesFromData || (v14 = CFDictionaryGetValue(v5, @"ChromaQuant"), QuantizationValuesFromData = _extractQuantizationValuesFromData(v14, v21), QuantizationValuesFromData))
  {
LABEL_24:
    v10 = QuantizationValuesFromData;
    goto LABEL_20;
  }

  v15 = JPEGDeviceInterface_encodeJPEG2024(v9, inputStruct, outputStruct);
  v10 = v15;
  if (v3 && !v15)
  {
    *v3 = v18;
  }

LABEL_20:
  JPEGDeviceInterface_closeDriverConnection(v9);
  return v10;
}

uint64_t _extractQuantizationValuesFromData(const void *a1, UInt8 *a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFDataGetTypeID())
  {
    if (CFDataGetLength(a1) == 64)
    {
      BytePtr = CFDataGetBytePtr(a1);
      for (i = 0; i != 64; ++i)
      {
        *&a2[2 * i] = BytePtr[i];
      }

      return 0;
    }

    if (CFDataGetLength(a1) == 128)
    {
      v8.location = 0;
      v8.length = 128;
      CFDataGetBytes(a1, v8, a2);
      return 0;
    }
  }

  return 4294950306;
}

uint64_t CMPhotoParavirtualizedGuestJPEGHardwareEncode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned __int8 a10, const UInt8 *a11, const UInt8 *a12, char a13)
{
  v57 = *MEMORY[0x1E69E9840];
  cf = 0;
  v18 = VTParavirtualizedJPEGSessionCreate();
  if (v18)
  {
    v45 = v18;
    v25 = 0;
    v24 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v20 = Mutable;
      v21 = CMPhotoCFDictionarySetInt32(Mutable, @"PixelsX", a4);
      if (v21 || (v21 = CMPhotoCFDictionarySetInt32(v20, @"PixelsY", a5), v21) || (v21 = CMPhotoCFDictionarySetInt32(v20, @"XOffset", a6), v21) || (v21 = CMPhotoCFDictionarySetInt32(v20, @"YOffset", a7), v21) || (v21 = CMPhotoCFDictionarySetInt32(v20, @"Subsampling", a8), v21) || (v21 = CMPhotoCFDictionarySetInt32(v20, @"Flags", a9), v21) || (CMPhotoCFDictionarySetSize(v20, @"RecordRSTOffsets", a10), v21))
      {
        v45 = v21;
        v25 = 0;
        v24 = 0;
        goto LABEL_21;
      }

      v22 = a11;
      v23 = a12;
      if (a13)
      {
        v24 = CFDataCreate(0, a11, 128);
        if (!v24)
        {
          v25 = 0;
LABEL_34:
          v45 = 4294950305;
          goto LABEL_21;
        }

        v25 = CFDataCreate(0, a12, 128);
        if (!v25)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }

      v26 = 0;
      v27 = 0uLL;
      v55 = 0u;
      v56 = 0u;
      *bytes = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = 0uLL;
      *v49 = 0u;
      v50 = 0u;
      do
      {
        v30 = *v22;
        v29 = v22[1];
        v22 += 2;
        *&bytes[v26] = vuzp1q_s8(v30, v29);
        v31 = vorrq_s8(v30, v27);
        v32 = vorrq_s8(v29, v28);
        v34 = *v23;
        v33 = v23[1];
        v23 += 2;
        *&v49[v26] = vuzp1q_s8(v34, v33);
        v28 = vorrq_s8(v32, v33);
        v27 = vorrq_s8(v31, v34);
        v26 += 16;
      }

      while (v26 != 64);
      v35 = vorrq_s8(v27, v28);
      *v35.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      if ((v35.i16[0] | v35.i16[2] | ((v35.i32[0] | v35.i32[1]) >> 16)) >= 0x100)
      {
        fig_log_get_emitter();
        v45 = FigSignalErrorAtGM();
        v24 = 0;
      }

      else
      {
        v24 = CFDataCreate(0, bytes, 64);
        if (v24)
        {
          v36 = CFDataCreate(0, v49, 64);
          if (v36)
          {
            v25 = v36;
LABEL_20:
            CFDictionarySetValue(v20, @"LumaQuant", v24);
            CFDictionarySetValue(v20, @"ChromaQuant", v25);
            OUTLINED_FUNCTION_0_4(v37, v38, v39, v40, v41, v42, v43, v44, v47, 0);
            v45 = VTParavirtualizedJPEGSessionEncodeImage();
LABEL_21:
            CFRelease(v20);
            goto LABEL_22;
          }
        }

        v45 = 4294950305;
      }

      v25 = 0;
      goto LABEL_21;
    }

    v25 = 0;
    v24 = 0;
    v45 = 4294950305;
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v45;
}

uint64_t CMPhotoParavirtualizedHostJPEGHardwareDecode(__IOSurface *a1, uint64_t a2, CFTypeRef cf)
{
  v31 = 0;
  v3 = 4294950306;
  if (a1 && a2 && cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID())
    {
      v30 = 0;
      CMPhotoCFDictionaryGetSizeIfPresent(cf, @"InputSize", &v30);
      v29 = 0;
      if (CMPhotoCFDictionaryGetInt32IfPresent())
      {
        v28 = 0;
        if (CMPhotoCFDictionaryGetInt32IfPresent())
        {
          v27 = 0;
          if (CMPhotoCFDictionaryGetInt32IfPresent())
          {
            v26 = 0;
            if (CMPhotoCFDictionaryGetInt32IfPresent())
            {
              v25 = 0;
              if (CMPhotoCFDictionaryGetInt32IfPresent())
              {
                v24 = 0;
                if (CMPhotoCFDictionaryGetInt32IfPresent())
                {
                  v23 = 0;
                  if (CMPhotoCFDictionaryGetSizeIfPresent(cf, @"DecodeWidth", &v23))
                  {
                    v22 = 0;
                    if (CMPhotoCFDictionaryGetSizeIfPresent(cf, @"DecodeHeight", &v22))
                    {
                      v20 = 0u;
                      v21 = 0u;
                      Value = CFDictionaryGetValue(cf, @"CropRect");
                      v9 = Value;
                      if (!Value)
                      {
LABEL_16:
                        AllocSize = IOSurfaceGetAllocSize(a1);
                        v12 = CMPhotoSurfacePoolCreateMemorySurface(0, AllocSize, 0, &v31);
                        if (v12)
                        {
LABEL_22:
                          v3 = v12;
                          goto LABEL_23;
                        }

                        IOSurfaceLock(a1, 5u, 0);
                        IOSurfaceUnlock(a1, 5u, 0);
                        IOSurfaceLock(a1, 1u, 0);
                        IOSurfaceLock(v31, 0, 0);
                        BaseAddress = IOSurfaceGetBaseAddress(a1);
                        if (BaseAddress)
                        {
                          v14 = BaseAddress;
                          v15 = IOSurfaceGetBaseAddress(v31);
                          if (v15)
                          {
                            memcpy(v15, v14, AllocSize);
                            IOSurfaceUnlock(v31, 0, 0);
                            IOSurfaceUnlock(a1, 1u, 0);
                            v16 = &v20;
                            if (!v9)
                            {
                              v16 = 0;
                            }

                            v12 = JPEGDecompressSurfaceHelper(0, v31, v30, a2, v29, v28, v27, v26, v25, v24, 0, v18, v23, SHIDWORD(v23), v22, v16->i64, 0, 0);
                            goto LABEL_22;
                          }
                        }

                        goto LABEL_26;
                      }

                      v10 = *(MEMORY[0x1E695F050] + 16);
                      rect.origin = *MEMORY[0x1E695F050];
                      rect.size = v10;
                      if (CGRectMakeWithDictionaryRepresentation(Value, &rect))
                      {
                        v20 = vcvtq_u64_f64(vrndaq_f64(rect.origin));
                        v21 = vcvtq_u64_f64(vrndaq_f64(rect.size));
                        goto LABEL_16;
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

LABEL_26:
    v3 = 4294950306;
  }

LABEL_23:
  if (v31)
  {
    CFRelease(v31);
  }

  return v3;
}

uint64_t CMPhotoParavirtualizedGuestJPEGHardwareDecode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11, unint64_t *a12)
{
  cf = 0;
  v18 = VTParavirtualizedJPEGSessionCreate();
  if (v18)
  {
    v31 = v18;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v20 = Mutable;
      if (!a2 || (v21 = CMPhotoCFDictionarySetSize(Mutable, @"InputSize", a2), !v21))
      {
        v21 = CMPhotoCFDictionarySetInt32(v20, @"Width", a4);
        if (!v21)
        {
          v21 = CMPhotoCFDictionarySetInt32(v20, @"Height", a5);
          if (!v21)
          {
            v21 = CMPhotoCFDictionarySetInt32(v20, @"Subsampling", a6);
            if (!v21)
            {
              v21 = CMPhotoCFDictionarySetInt32(v20, @"MCUsHor", a7);
              if (!v21)
              {
                v21 = CMPhotoCFDictionarySetInt32(v20, @"MCUsVer", a8);
                if (!v21)
                {
                  v21 = CMPhotoCFDictionarySetInt32(v20, @"Flags", a9);
                  if (!v21)
                  {
                    v21 = CMPhotoCFDictionarySetSize(v20, @"DecodeWidth", a10);
                    if (!v21)
                    {
                      v21 = CMPhotoCFDictionarySetSize(v20, @"DecodeHeight", a11);
                      if (!v21)
                      {
                        if (a12)
                        {
                          v35.origin.x = *a12;
                          v35.origin.y = a12[1];
                          v35.size.width = a12[2];
                          v35.size.height = a12[3];
                          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v35);
                          if (!DictionaryRepresentation)
                          {
                            v31 = 4294950305;
                            goto LABEL_18;
                          }

                          v30 = DictionaryRepresentation;
                          CFDictionarySetValue(v20, @"CropRect", DictionaryRepresentation);
                          CFRelease(v30);
                        }

                        OUTLINED_FUNCTION_0_4(v21, v22, v23, v24, v25, v26, v27, v28, v33, 0);
                        v21 = VTParavirtualizedJPEGSessionDecodeImage();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v31 = v21;
LABEL_18:
      CFRelease(v20);
      goto LABEL_19;
    }

    v31 = 4294950305;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v31;
}

uint64_t CMPhotoGetSourceDimensions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetSourceDimensions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void CMPhotoGetTripletsForColorSpace(CGColorSpace *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  IsFullRange = CMPhotoPixelFormatIsFullRange(a2);
  v11 = 0;
  if (((a2 - 1278226488) > 0x30 || ((1 << (a2 - 56)) & 0x1400000000001) == 0) && ((a2 - 1278226736) > 6 || ((1 << (a2 - 48)) & 0x45) == 0))
  {
    v13 = a2 != 1751411059 && a2 != 1717856627;
    v11 = a2 != 1717855600 && a2 != 1751410032 && v13;
  }

  if (CMPhotoPixelFormatContainsRGB(a2))
  {
    v11 = 0;
  }

  if (!a1)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_66;
  }

  if (!a3 && !a4 && !a5)
  {
    return;
  }

  if (!CGColorSpaceGetName(a1))
  {
    goto LABEL_65;
  }

  if (FigCFEqual())
  {
    v15 = MEMORY[0x1E6965DB8];
LABEL_28:
    v20 = *v15;
LABEL_29:
    OUTLINED_FUNCTION_2_5();
    if (!v11)
    {
      goto LABEL_66;
    }

    v16 = MEMORY[0x1E6965FC8];
    if (!IsFullRange)
    {
      v16 = MEMORY[0x1E6965FD0];
    }

    goto LABEL_32;
  }

  if (FigCFEqual())
  {
    v15 = MEMORY[0x1E6965DD0];
    goto LABEL_28;
  }

  if (FigCFEqual())
  {
    v20 = *MEMORY[0x1E6965DB8];
LABEL_35:
    OUTLINED_FUNCTION_2_5();
    if (!v11)
    {
      goto LABEL_66;
    }

    v16 = MEMORY[0x1E6965FD0];
    goto LABEL_32;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v17 = MEMORY[0x1E6965DB8];
LABEL_40:
    v20 = *v17;
    goto LABEL_29;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v17 = MEMORY[0x1E6965DD0];
    goto LABEL_40;
  }

  if (!FigCFEqual() && !FigCFEqual())
  {
    if (FigCFEqual())
    {
      goto LABEL_53;
    }

    if (FigCFEqual())
    {
      v20 = *MEMORY[0x1E6965DB8];
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
      v20 = *MEMORY[0x1E6965DD0];
      goto LABEL_29;
    }

    if (FigCFEqual())
    {
      v20 = *MEMORY[0x1E6965DD0];
      goto LABEL_29;
    }

    if (FigCFEqual())
    {
      v20 = *MEMORY[0x1E6965DB0];
      goto LABEL_47;
    }

    if (FigCFEqual())
    {
      v20 = *MEMORY[0x1E6965DB0];
      goto LABEL_47;
    }

    if (FigCFEqual())
    {
LABEL_53:
      OUTLINED_FUNCTION_2_5();
      goto LABEL_66;
    }

LABEL_65:
    CMPhotoGetTripletsForColorSpaceUsingColorSync(a1, a2, &v20, &v19, &v18);
    goto LABEL_66;
  }

  v20 = *MEMORY[0x1E6965DB0];
LABEL_47:
  OUTLINED_FUNCTION_2_5();
  if (!v11)
  {
    goto LABEL_66;
  }

  v16 = MEMORY[0x1E6965FB0];
LABEL_32:
  v18 = *v16;
LABEL_66:
  if (a3)
  {
    *a3 = v20;
  }

  if (a4)
  {
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v18;
  }
}

uint64_t CMPhotoCreateAllowedTransferArrayForColorSpace(CGColorSpace *a1, __CFArray **a2)
{
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v7 = FigSignalErrorAtGM();
    if (!a2)
    {
      return v7;
    }

    goto LABEL_27;
  }

  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v7 = FigSignalErrorAtGM();
LABEL_27:
    *a2 = 0;
    return v7;
  }

  v5 = Mutable;
  if (CGColorSpaceGetName(a1))
  {
    if (FigCFEqual() || FigCFEqual())
    {
      CFArrayAppendValue(v5, *MEMORY[0x1E6965F88]);
LABEL_8:
      v6 = MEMORY[0x1E6965F50];
LABEL_9:
      CFArrayAppendValue(v5, *v6);
      v7 = 0;
      goto LABEL_10;
    }

    if (FigCFEqual())
    {
      goto LABEL_8;
    }

    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
    {
      v6 = MEMORY[0x1E6965F60];
      goto LABEL_9;
    }

    if (FigCFEqual())
    {
LABEL_30:
      v6 = MEMORY[0x1E6965F70];
      goto LABEL_9;
    }

    if (FigCFEqual())
    {
      goto LABEL_32;
    }

    if (FigCFEqual())
    {
      goto LABEL_30;
    }

    if (FigCFEqual())
    {
LABEL_32:
      v6 = MEMORY[0x1E6965F48];
      goto LABEL_9;
    }

    if (FigCFEqual())
    {
      v6 = MEMORY[0x1E6965F88];
      goto LABEL_9;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v7 = FigSignalErrorAtGM();
  }

  else
  {
    v7 = 4294950303;
  }

LABEL_10:
  if (CFArrayGetCount(v5))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
    CFRelease(v5);
  }

  return v7;
}

uint64_t CMPhotoAddValueToCGMutableImageMetadata(CGImageMetadata *a1, CFTypeRef value, CFStringRef xmlns, CFStringRef prefix, CFStringRef name)
{
  if (!value)
  {
    return 4294950306;
  }

  v8 = CGImageMetadataTagCreate(xmlns, prefix, name, kCGImageMetadataTypeDefault, value);
  if (!v8)
  {
    return 4294950306;
  }

  v9 = v8;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, prefix);
  CFArrayAppendValue(Mutable, name);
  v12 = CFStringCreateByCombiningStrings(v10, Mutable, @":");
  if (CGImageMetadataSetTagWithPath(a1, 0, v12, v9))
  {
    v13 = 0;
  }

  else
  {
    v13 = 4294950306;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFRelease(v9);
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t CMPhotoAddMeteorPlusGainMapMetadata(const CGImageMetadata *a1, CGMutableImageMetadataRef metadata)
{
  cf = 0;
  v21 = 0;
  if (!CGImageMetadataRegisterNamespaceForPrefix(metadata, @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", 0))
  {
    v17 = 4294950304;
    goto LABEL_28;
  }

  CFNumberFormatter = CMPhotoMetadataCreateCFNumberFormatter(*MEMORY[0x1E695E480], kCFNumberFormatterNoStyle, &v21);
  if (CFNumberFormatter)
  {
    v17 = CFNumberFormatter;
    goto LABEL_28;
  }

  v4 = CGImageMetadataCopyTags(a1);
  if (!v4)
  {
    v17 = 4294950194;
    goto LABEL_28;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    v17 = 0;
    goto LABEL_27;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
    v10 = CGImageMetadataTagCopyNamespace(ValueAtIndex);
    if (v10)
    {
      break;
    }

LABEL_14:
    if (v7 == ++v8)
    {
      v11 = 0;
      v12 = 0;
      v17 = 0;
      goto LABEL_20;
    }
  }

  v11 = v10;
  v12 = CGImageMetadataTagCopyName(ValueAtIndex);
  if (v12)
  {
    if (!FigCFEqual())
    {
      goto LABEL_12;
    }

    v13 = CMPhotoCopyMetadataTagValue(ValueAtIndex, v21, 0, &cf);
    if (v13)
    {
      goto LABEL_19;
    }

    if (FigCFEqual())
    {
      v14 = metadata;
      v15 = cf;
      v16 = @"HDRGainMapHeadroom";
    }

    else
    {
      if (!FigCFEqual())
      {
LABEL_12:
        CFRelease(v11);
        CFRelease(v12);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        goto LABEL_14;
      }

      v14 = metadata;
      v15 = cf;
      v16 = @"HDRGainMapVersion";
    }

    v13 = CMPhotoAddValueToCGMutableImageMetadata(v14, v15, @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMap", v16);
    if (v13)
    {
LABEL_19:
      v17 = v13;
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v17 = 4294950194;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_27:
  CFRelease(v5);
LABEL_28:
  if (v21)
  {
    CFRelease(v21);
  }

  return v17;
}

uint64_t CMPhotoCreatePixelBufferFromCGImage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelBufferFromCGImage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelBufferFromCGImage_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCreatePixelBufferFromCGImage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelBufferFromCGImage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelBufferFromCGImage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelBufferFromCGImage_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetCGImageAuxiliaryDataTypeFromCMPhotoAuxiliaryImageType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

unint64_t _scaleAndRotateSessionTransformForSizeWithOptions(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t a19)
{
  if (!a19)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_4_4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v47 = v29;
  v48 = v30;
  v49 = v31;
  if (!v32)
  {
    OUTLINED_FUNCTION_3_5(&CMPhotoScaleAndRotateSessionGetDefault_onceToken);
  }

  if (a5 == *MEMORY[0x1E695F060] && a6 == *(MEMORY[0x1E695F060] + 8))
  {
    v50.origin.x = OUTLINED_FUNCTION_0_5();
    if (CGRectIsNull(v50))
    {
      CMPhotoGetPixelBufferCLAPAsRect(v24);
      a5 = v34;
      a6 = v35;
    }

    else
    {
      a5 = v20;
      a6 = v19;
    }
  }

  v46 = *(MEMORY[0x1E695F050] + 24);
  v45 = *(MEMORY[0x1E695F050] + 8);
  v44 = *MEMORY[0x1E695F050];
  v36 = OUTLINED_FUNCTION_0_5();
  return _convertAndScalePixelBufferOddSafe(v37, v38, 0, v36, v40, v41, v42, a5, a6, v28, v47, v48, v49, v39, v44, v45, *(&v45 + 1), v46, v26, a15, a16, a17, a18, -1, a19);
}

unint64_t CMPhotoScaleAndRotateSessionTransformForMaxSideLength(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  OUTLINED_FUNCTION_4_4();
  v15 = v14;
  if (CGRectIsNull(v35))
  {
    CMPhotoGetPixelBufferCLAPAsRect(v15);
  }

  OUTLINED_FUNCTION_42();
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v16, v17, v18, v19, v20, a8, a10, v21, 0, 0);
  v22 = OUTLINED_FUNCTION_0_5();
  return _scaleAndRotateSessionTransformForSizeWithOptions(v22, v26, v27, v28, v29, v30, v23, v24, a3, a4, a5, 0, v25, a9, a11, a12, 0, 0, a13);
}

unint64_t CMPhotoScaleAndRotateSessionTransformIntoCanvas(double a1, double a2, double a3, double a4, double PixelBufferCLAPAsRect, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __CVBuffer *a13, uint64_t a14, unsigned __int8 a15)
{
  OUTLINED_FUNCTION_4_4();
  v40 = v23;
  v39 = 0;
  if (!v24)
  {
    OUTLINED_FUNCTION_3_5(&CMPhotoScaleAndRotateSessionGetDefault_onceToken);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a13);
  v41.origin.x = PixelBufferCLAPAsRect;
  v41.origin.y = a6;
  v41.size.width = a7;
  v41.size.height = a8;
  if (CGRectIsNull(v41))
  {
    PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(a13);
    a6 = v26;
    a7 = v27;
    a8 = v28;
  }

  result = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(a12, &v39, 0);
  if (!result)
  {
    v30 = OUTLINED_FUNCTION_0_5();
    return _convertAndScalePixelBufferOddSafe(v31, v32, 0, v30, v34, v35, v36, v37, v38, a11, a12, PixelFormatType, 0, v33, *&PixelBufferCLAPAsRect, *&a6, *&a7, *&a8, 1u, 0, a15, 0, 0, -1, &v40);
  }

  return result;
}

uint64_t CMPhotoScaleAndRotateSessionBakeInCLAPIfNeeded(uint64_t a1, uint64_t a2, CVPixelBufferRef *a3)
{
  v15 = 0;
  v14 = 0;
  if (!a3)
  {
    return 4294950306;
  }

  v5 = *a3;
  if (!*a3)
  {
    return 4294950306;
  }

  if (a2)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    v5 = *a3;
  }

  if (!CMPhotoPixelBufferHasCLAP(v5))
  {
    return 0;
  }

  v13 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a3);
  DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(*a3, PixelFormatType);
  v11 = v10;
  v12 = CVPixelBufferGetIOSurface(*a3) != 0;
  v6 = _scaleAndRotateSessionTransformForSizeWithOptions(*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), a1, *a3, v12, 1, PixelFormatType, DefaultTripletsForTransfer, v11, 1, 0, 0, HIBYTE(v15), v14, &v13);
  if (!v6)
  {
    if (*a3)
    {
      CFRelease(*a3);
    }

    *a3 = v13;
  }

  return v6;
}

uint64_t JPEGDecompressionPluginClass_create(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  v4 = 0;
  v5 = 4294950306;
  if (a1 && a4)
  {
    v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040DC7B7DF3uLL);
    v4 = v9;
    if (v9)
    {
      if (a3)
      {
        *v9 = CFRetain(a3);
        v4[5] = 0;
        CMPhotoCFDictionaryGetBooleanIfPresent();
        CMPhotoCFDictionaryGetBooleanIfPresent();
        CMPhotoCFDictionaryGetBooleanIfPresent();
      }

      else
      {
        *v9 = 0;
        v9[5] = 0;
      }

      if (*(v4 + 16) || (v10 = dispatch_queue_create("com.apple.coremedia.jpeg-decoder", 0), (*(v4 + 3) = v10) != 0))
      {
        if (a2)
        {
          v11 = CFRetain(a2);
        }

        else
        {
          v11 = 0;
        }

        v5 = 0;
        *(v4 + 1) = v11;
        *(a1 + 64) = v4;
        v4 = 0;
      }

      else
      {
        v5 = FigSignalErrorAtGM();
      }
    }

    else
    {
      v5 = 4294950305;
    }
  }

  PluginInstance_Dispose(v4);
  return v5;
}

uint64_t JPEGDecompressionPluginClass_decode(uint64_t a1, const __CFDictionary *a2, opaqueCMSampleBuffer *a3, uint64_t a4)
{
  blockBufferOut = 0;
  if (!a1)
  {
    return 4294950306;
  }

  v5 = *(a1 + 64);
  if (!v5)
  {
    v31 = 4294950195;
    goto LABEL_24;
  }

  if (!a3)
  {
    v31 = 4294950306;
    goto LABEL_24;
  }

  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v45 = 0;
  DecodeHighSpeedDefault = CMPhotoGetDecodeHighSpeedDefault();
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  if (!DataBuffer)
  {
    v31 = 4294950194;
    goto LABEL_24;
  }

  v10 = DataBuffer;
  Extension = CMFormatDescriptionGetExtension(*(v5 + 8), *MEMORY[0x1E69600A0]);
  if (Extension)
  {
    Value = CFDictionaryGetValue(Extension, @"jpgC");
    if (Value)
    {
      v13 = Value;
      Length = CFDataGetLength(Value);
      if (Length)
      {
        v15 = Length;
        v16 = *a1;
        BytePtr = CFDataGetBytePtr(v13);
        appended = CMBlockBufferCreateWithMemoryBlock(v16, BytePtr, v15, *MEMORY[0x1E695E498], 0, 0, v15, 0, &blockBufferOut);
        if (appended)
        {
          goto LABEL_37;
        }

        appended = CMBlockBufferAppendBufferReference(blockBufferOut, v10, 0, 0, 0);
        if (appended)
        {
          goto LABEL_37;
        }

        v10 = blockBufferOut;
      }
    }
  }

  if (!a2)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v19 = CFDictionaryGetValue(a2, @"SourceCropRect");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 != CFDictionaryGetTypeID() || !CMPhotoRectMakeWithDictionaryRepresentation(v20, &v47))
    {
      appended = FigSignalErrorAtGM();
LABEL_37:
      v31 = appended;
      goto LABEL_24;
    }
  }

  FigCFDictionaryGetIntIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  v22 = v45;
LABEL_17:
  if (*(v5 + 16))
  {
    v34[0] = 0;
    v35 = a1;
    if (v10)
    {
      v33 = CFRetain(v10);
      v22 = v45;
    }

    else
    {
      v33 = 0;
    }

    v36 = v33;
    v37 = v47;
    v38 = v48;
    v39 = v46;
    v40 = v22;
    v41 = *(v5 + 20);
    v42 = DecodeHighSpeedDefault;
    v43 = a4;
    _dispatch_decode(v34);
    goto LABEL_23;
  }

  v23 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00404598759DuLL);
  if (v23)
  {
    v24 = v23;
    if (v10)
    {
      v25 = CFRetain(v10);
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v5 + 20);
    v27 = v48;
    *(v24 + 24) = v47;
    v28 = v46;
    v29 = v45;
    v30 = DecodeHighSpeedDefault;
    *v24 = 1;
    *(v24 + 1) = a1;
    *(v24 + 2) = v25;
    *(v24 + 40) = v27;
    *(v24 + 14) = v28;
    v24[60] = v29;
    *(v24 + 16) = v26;
    v24[68] = v30;
    *(v24 + 9) = a4;
    dispatch_async_f(*(v5 + 24), v24, _dispatch_decode);
LABEL_23:
    v31 = 0;
    goto LABEL_24;
  }

  v31 = 4294950305;
LABEL_24:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v31;
}

void _dispatch_decode(char *a1)
{
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v33 = 0;
  v5 = *(a1 + 40);
  v31 = *(a1 + 24);
  v32 = v5;
  v6 = *(a1 + 14);
  v7 = *(a1 + 9);
  v8 = a1[60];
  v9 = *(a1 + 16);
  v22 = a1[68];
  if (*a1)
  {
    free(a1);
  }

  v10 = *(v4 + 64);
  v30 = 0;
  cf = 0;
  v11 = CMPhotoByteStreamCreateFromSource(v3, 0, 0, 0, &v33, 0);
  if (v11)
  {
    goto LABEL_19;
  }

  v28 = 0;
  v12 = v33;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v13)
  {
    YUVPixelFormatForParameters = v13(v12, 0, &v28);
    if (!YUVPixelFormatForParameters)
    {
      v15 = v28;
      if (v28 < 0)
      {
        v21 = 4294950190;
        goto LABEL_21;
      }

      v26 = 0;
      v27 = 0;
      v25 = 0;
      CMPhotoGetImageInformationFromJFIFByteStream();
      if (!YUVPixelFormatForParameters)
      {
        v24 = 0;
        YUVPixelFormatForParameters = CMPhotoGetYUVPixelFormatForParameters(SHIDWORD(v25), v25, 1, 0, 0, 0, 1, &v24);
        if (!YUVPixelFormatForParameters)
        {
          YUVPixelFormatForParameters = CMPhotoUnifiedJPEGDecoderCreate(*(v4 + 32), *v4, v26, v27, v33, 0, v15, v3, 2, &v30);
          if (!YUVPixelFormatForParameters)
          {
            v16 = *(v10 + 8);
            v2 = MEMORY[0x1E695FF58];
            if (!v16 || (Dimensions = CMVideoFormatDescriptionGetDimensions(v16), v26 == Dimensions) && v27 == Dimensions >> 32)
            {
              if (v6)
              {
                v18 = v6;
              }

              else
              {
                v18 = v24;
              }

              v19 = *(v4 + 8);
              v20 = *(v4 + 16);
              v23[0] = v31;
              v23[1] = v32;
              v11 = CMPhotoUnifiedJPEGDecoderDecode(v30, v19, v20, v9, v18, v8, v23, 0, v22, a1, 0, 0, 0, 0, &cf);
            }

            else
            {
              v11 = FigSignalErrorAtGM();
            }

LABEL_19:
            v21 = v11;
            goto LABEL_22;
          }
        }
      }
    }

    v21 = YUVPixelFormatForParameters;
  }

  else
  {
    v21 = 4294954514;
  }

LABEL_21:
  v2 = MEMORY[0x1E695FF58];
LABEL_22:
  CMPhotoUnifiedJPEGDecoderDestroy(v30);
  (*(v4 + 48))(v4, v21, cf, *(v4 + 56), v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (*v2 == 1)
  {
    OUTLINED_FUNCTION_0_6();
  }
}

uint64_t CMPhotoCreateSDRAndGainMapFromImage(void *a1, uint64_t a2, void *a3, CVPixelBufferRef *a4, CFMutableDictionaryRef *a5)
{
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = @"SurfacePoolOneShot";
  v58 = 0;
  v56 = 3;
  v57 = -1.0;
  v55 = 1;
  PixelBufferAttributesForHDRTarget = 4294950306;
  if (!a1 || !a3 || !a4)
  {
    Mutable = 0;
    v9 = 0;
    v10 = 0;
    v51 = 0;
    cf = 0;
    v11 = 0;
    goto LABEL_71;
  }

  Mutable = 0;
  v9 = 0;
  v10 = 0;
  v51 = 0;
  cf = 0;
  v11 = 0;
  if (!a5)
  {
    goto LABEL_71;
  }

  v13 = *MEMORY[0x1E695E480];
  PixelBufferFromImage = CMPhotoCreatePixelBufferFromImage(*MEMORY[0x1E695E480], a1, &v70);
  if (PixelBufferFromImage)
  {
    goto LABEL_68;
  }

  if (!CMPhotoPixelBufferIsHLG(v70) && !CMPhotoPixelBufferIsPQ(v70))
  {
    fig_log_get_emitter();
    PixelBufferFromImage = FigSignalErrorAtGM();
LABEL_68:
    PixelBufferAttributesForHDRTarget = PixelBufferFromImage;
LABEL_69:
    Mutable = 0;
    v9 = 0;
    v10 = 0;
    v51 = 0;
    cf = 0;
    goto LABEL_70;
  }

  if (a2)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetValueIfPresent();
  }

  CMPhotoGetPixelBufferCLAP(v70, 0, 0, &v64, &v65);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v70);
  if (PixelFormatType != 2019963440 && PixelFormatType != 2016686640)
  {
    goto LABEL_69;
  }

  v17 = MEMORY[0x1E6965CE8];
  if (CMPhotoPixelBufferHasSRGBPrimaries(v70))
  {
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v19 = MEMORY[0x1E695F190];
  }

  else
  {
    v20 = CMPhotoPixelBufferHas2020Primaries(v70);
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    v19 = MEMORY[0x1E695F178];
    if (!v20)
    {
      v19 = MEMORY[0x1E695F0C8];
    }
  }

  cf = v18;
  v48 = CGColorSpaceCreateWithName(*v19);
  ImageHeadroomWithCI = CMPhotoCreateColorSpaceFromPixelBuffer(v70, &v66, 1, 1);
  if (ImageHeadroomWithCI || v57 == -1.0 && (ImageHeadroomWithCI = CMPhotoFindImageHeadroomWithCI(v70, &v57, 0.125), ImageHeadroomWithCI))
  {
    PixelBufferAttributesForHDRTarget = ImageHeadroomWithCI;
    Mutable = 0;
    v10 = 0;
    v51 = 0;
    goto LABEL_55;
  }

  v23 = OUTLINED_FUNCTION_3_6(ImageHeadroomWithCI, v22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = v23;
  if (!v23)
  {
    goto LABEL_61;
  }

  if (!v58)
  {
    v26 = OUTLINED_FUNCTION_3_6(v23, v24, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v26)
    {
      v25 = v26;
      FigCFDictionarySetBoolean();
      FigCFDictionarySetBoolean();
      FigCFDictionarySetBoolean();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt();
      FigCFDictionarySetValue();
      goto LABEL_27;
    }

LABEL_61:
    Mutable = 0;
    v51 = 0;
    v11 = 0;
    PixelBufferAttributesForHDRTarget = 4294950305;
    goto LABEL_56;
  }

  v25 = 0;
LABEL_27:
  v51 = v25;
  if (v57 >= 0.0)
  {
    FigCFDictionarySetFloat();
  }

  v27 = FigCFDictionarySetInt();
  allocator = v13;
  Mutable = OUTLINED_FUNCTION_3_6(v27, v28, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_58;
  }

  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  v47 = *MEMORY[0x1E6965FC8];
  FigCFDictionarySetValue();
  v29 = *v17;
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  PixelBufferAttributesForHDRTarget = CGImageCreatePixelBufferAttributesForHDRTarget();
  CFRelease(Mutable);
  if (PixelBufferAttributesForHDRTarget)
  {
LABEL_102:
    Mutable = 0;
    v11 = 0;
    goto LABEL_59;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
LABEL_58:
    v11 = 0;
    PixelBufferAttributesForHDRTarget = 4294950305;
LABEL_59:
    v9 = v48;
    goto LABEL_71;
  }

  FigCFDictionarySetInt64();
  FigCFDictionarySetInt64();
  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (v25)
  {
    FigCFDictionarySetValue();
  }

  PixelBufferAttributesForHDRTarget = CGImageCreatePixelBufferAttributesForHDRTarget();
  CFRelease(Mutable);
  if (PixelBufferAttributesForHDRTarget)
  {
    goto LABEL_102;
  }

  v30 = v60;
  v31 = v61;
  v32 = v59;
  *&__src[0] = 0;
  __dst[0] = 0;
  v71 = 0;
  if (!FigCFDictionaryGetInt64IfPresent() || !FigCFDictionaryGetInt64IfPresent() || !FigCFDictionaryGetInt32IfPresent())
  {
    goto LABEL_53;
  }

  v37 = OUTLINED_FUNCTION_2_6(v32, v71, *&__src[0], __dst[0], v33, v34, v35, v36, 0, v31, &v68);
  if (v37)
  {
    PixelBufferAttributesForHDRTarget = v37;
    goto LABEL_54;
  }

  if (!FigCFDictionaryGetInt64IfPresent() || !FigCFDictionaryGetInt64IfPresent())
  {
LABEL_53:
    PixelBufferAttributesForHDRTarget = 4294950303;
LABEL_54:
    Mutable = 0;
LABEL_55:
    v11 = 0;
LABEL_56:
    v9 = v48;
    goto LABEL_71;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    PixelBufferAttributesForHDRTarget = 4294950303;
    goto LABEL_54;
  }

  v42 = OUTLINED_FUNCTION_2_6(v32, v71, *&__src[0], __dst[0], v38, v39, v40, v41, 0, v30, &v67);
  if (v42)
  {
    PixelBufferAttributesForHDRTarget = v42;
    goto LABEL_54;
  }

  CVBufferSetAttachment(v68, v29, cf, kCVAttachmentMode_ShouldPropagate);
  CMPhotoAddMatrixToBufferIfAllowed(v68, v47);
  CVPixelBufferGetPixelFormatType(v68);
  FigCFDictionarySetInt();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (v58)
  {
    Mutable = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    CVBufferSetAttachment(v67, v29, Mutable, kCVAttachmentMode_ShouldPropagate);
  }

  else
  {
    Mutable = 0;
  }

  v9 = v48;
  v43 = CGImageConvertHDRGainMap();
  if (v43)
  {
    PixelBufferAttributesForHDRTarget = v43;
  }

  else
  {
    v11 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v11)
    {
      PixelBufferAttributesForHDRTarget = 4294950305;
      goto LABEL_71;
    }

    FigCFDictionarySetFloat();
    if (!v58)
    {
      memset(__src, 0, sizeof(__src));
      v44 = CMPhotoParseFlexRangeMetadataFromAuxiliaryXMPMetadata(v63, 0, __src);
      if (v44 || (memcpy(__dst, __src, sizeof(__dst)), v44 = CMPhotoCreateFlexRangeMetadataDictionaryFromParsedMetadata(__dst, &v62), v44))
      {
        PixelBufferAttributesForHDRTarget = v44;
        goto LABEL_71;
      }

      FigCFDictionarySetValue();
    }

    FigCFDictionarySetValue();
    PixelBufferAttributesForHDRTarget = 0;
    v45 = v67;
    *a3 = v68;
    v67 = 0;
    v68 = 0;
    *a4 = v45;
    *a5 = v11;
  }

LABEL_70:
  v11 = 0;
LABEL_71:
  if (v63)
  {
    CFRelease(v63);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  return PixelBufferAttributesForHDRTarget;
}

uint64_t CMPhotoCalculateBrightnessParametersFromImage(void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  cf = 0;
  v3 = 4294950306;
  HIDWORD(v37) = 203;
  if (a1 && a3)
  {
    if (a2)
    {
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetFloatIfPresent();
      FigCFDictionaryGetIntIfPresent();
    }

    FALLWithCI = CMPhotoCreatePixelBufferFromImage(*MEMORY[0x1E695E480], a1, &cf);
    if (!FALLWithCI)
    {
      v8 = OUTLINED_FUNCTION_3_6(FALLWithCI, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v17 = OUTLINED_FUNCTION_1_6(v9, v10, v11, v12, v13, v14, v15, v16, v35, v37, 1.0);
      FALLWithCI = CMPhotoFindFALLWithCI(v18, v19, v17);
      if (!FALLWithCI)
      {
        OUTLINED_FUNCTION_0_7();
        FigCFDictionarySetInt32();
        if (!v41)
        {
          goto LABEL_12;
        }

        v28 = OUTLINED_FUNCTION_1_6(v20, v21, v22, v23, v24, v25, v26, v27, v36, v38, v39);
        FALLWithCI = CMPhotoFindAPLWithCI(v29, v30, v28);
        if (!FALLWithCI)
        {
          OUTLINED_FUNCTION_0_7();
          FigCFDictionarySetInt32();
LABEL_12:
          if (!v40)
          {
LABEL_15:
            v3 = 0;
            *a3 = v8;
            goto LABEL_16;
          }

          v31 = OUTLINED_FUNCTION_1_6(v20, v21, v22, v23, v24, v25, v26, v27, v36, v38, v39);
          FALLWithCI = CMPhotoFindImageHeadroomWithCI(v32, v33, v31);
          if (!FALLWithCI)
          {
            FigCFDictionarySetInt32();
            goto LABEL_15;
          }
        }
      }
    }

    v3 = FALLWithCI;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t CMPhotoSurfacePoolHandleBackgroundNotification(uint64_t a1)
{
  result = FigSimpleMutexLock();
  if (!result)
  {
    SurfacePool_PerformFullClean(a1);

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMPhotoSurfacePoolFlushCaches(uint64_t result, int a2)
{
  v3 = result;
  if (!result)
  {
    result = OUTLINED_FUNCTION_0_8(&CMPhotoSurfacePoolGetDefault_onceToken);
    v3 = defaultSurfacePool;
  }

  if (v3 != @"SurfacePoolOneShot")
  {
    result = FigSimpleMutexLock();
    if (!result)
    {
      v4 = a2 == 0;
      Pool_DropBuffers(&v3->length, v4);
      Pool_DropBuffers(&v3[5].info, v4);
      if (!v3[4].data && !v3[9].isa)
      {
        isa = v3[11].isa;
        if (isa)
        {
          [isa unregisterBackgroundNotificationForContext:v3];
          [v3[11].isa releaseAssertionForContext:v3];
        }
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t CMPhotoSurfacePoolGetStats(__CFString *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_8(&CMPhotoSurfacePoolGetDefault_onceToken);
    v5 = defaultSurfacePool;
  }

  if (v5 == @"SurfacePoolOneShot")
  {
    return 4294950303;
  }

  result = FigSimpleMutexLock();
  if (!result)
  {
    if (a3)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      Pool_TallySubPoolStats(&v5->length, a3);
    }

    if (a2)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      Pool_TallySubPoolStats(&v5[5].info, a2);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

__CFString *CMPhotoSurfacePoolClass_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<CMPhotoSurfacePool %p> {\n", a1);
    Pool_AppendDebugDesc(v4, (a1 + 3));
    Pool_AppendDebugDesc(v4, (a1 + 21));
    CFStringAppendFormat(v4, 0, @"  Shallow cleanup count:   %d\n  Full cleanup count:      %d\n", a1[50], a1[51]);
    CFStringAppendFormat(v4, 0, @"}");
  }

  return v4;
}

void _computeMinimumBlockPSNRForPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, double *a29)
{
  OUTLINED_FUNCTION_41_0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  HIDWORD(v393) = v38;
  LODWORD(v394) = v37;
  v397 = v39;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = a29;
  pixelBuffer = v59;
  PixelFormatType = CVPixelBufferGetPixelFormatType(v59);
  v405 = v49;
  CVPixelBufferGetPixelFormatType(v49);
  v61 = 1;
  HIDWORD(v398) = PixelFormatType;
  if (PixelFormatType - 1278226488 <= 0x30)
  {
    OUTLINED_FUNCTION_26();
    if (!_ZF)
    {
      goto LABEL_166;
    }
  }

  if (PixelFormatType - 1278226736 <= 6)
  {
    OUTLINED_FUNCTION_10();
    if (!_ZF)
    {
      goto LABEL_166;
    }
  }

  OUTLINED_FUNCTION_28_0();
  _ZF = PixelFormatType == v63 || PixelFormatType == 825437747;
  if (_ZF)
  {
    goto LABEL_166;
  }

  if (PixelFormatType != 875704422 && PixelFormatType != 875704438 && PixelFormatType != 875704934 && PixelFormatType != 875704950 && PixelFormatType != 875836518 && PixelFormatType != 875836534)
  {
    if (PixelFormatType == 1094862674 || PixelFormatType == 1095911234 || PixelFormatType == 1111970369 || PixelFormatType == 1278555701 || PixelFormatType == 1380401729 || PixelFormatType == 1380410945 || PixelFormatType == 1380411457 || PixelFormatType == 1647589490 || PixelFormatType == 1647719528 || PixelFormatType == 1650942776 || PixelFormatType == 1650943796 || PixelFormatType == 1651519798 || PixelFormatType == 1651847472 || PixelFormatType == 1651925816 || PixelFormatType == 1651926376 || PixelFormatType == 1652056888 || PixelFormatType == 1717855600 || PixelFormatType == 1717856627 || PixelFormatType == 1734501176 || PixelFormatType == 1734505012 || PixelFormatType == 1735549492 || PixelFormatType == 1735549752 || PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
    {
      goto LABEL_166;
    }

    if (PixelFormatType != 1751527984)
    {
      if (PixelFormatType == 1815162994 || PixelFormatType == 1815491698 || PixelFormatType == 1919378232 || PixelFormatType == 1919379252 || PixelFormatType == 1919381560 || PixelFormatType == 1932996149)
      {
        goto LABEL_166;
      }

      if (PixelFormatType != 1936077360 && PixelFormatType != 1936077362 && PixelFormatType != 1936077876 && PixelFormatType != 1937125936 && PixelFormatType != 1937125938 && PixelFormatType != 1937126452 && PixelFormatType != 1952854576 && PixelFormatType != 1952854578 && PixelFormatType != 1952855092 && PixelFormatType != 1953903152 && PixelFormatType != 1953903154 && PixelFormatType != 1953903668 && PixelFormatType != 2016686640 && PixelFormatType != 2016686642 && PixelFormatType != 2016687156 && PixelFormatType != 2019963440 && PixelFormatType != 2019963956 && PixelFormatType != 2019963442)
      {
        v383 = 0;
LABEL_545:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
        FigSignalErrorAtGM();
        OUTLINED_FUNCTION_36_0();
        v115 = 0.0;
        OUTLINED_FUNCTION_23_0();
LABEL_546:
        v382 = 0;
        goto LABEL_530;
      }
    }
  }

  if (v394)
  {
    v61 = 1;
  }

  else
  {
    v61 = 3;
  }

LABEL_166:
  if (PixelFormatType != v62)
  {
    v383 = 0;
    goto LABEL_545;
  }

  if (v36)
  {
    v383 = 0;
    goto LABEL_545;
  }

  v417 = v41;
  v115 = 0.0;
  if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    v383 = 0;
    LODWORD(v389) = 0;
    OUTLINED_FUNCTION_36_0();
    goto LABEL_546;
  }

  v388 = a29;
  v383 = 1;
  if (CVPixelBufferLockBaseAddress(v405, 1uLL))
  {
    LODWORD(v389) = 0;
    OUTLINED_FUNCTION_36_0();
    v382 = 0;
    goto LABEL_530;
  }

  v387 = v30;
  v429 = 0u;
  v430 = 0u;
  _computeCropRectForPixelBuffer(pixelBuffer, &v429, v57, v55, v53, v51);
  v427 = 0u;
  v428 = 0u;
  _computeCropRectForPixelBuffer(v405, &v427, v47, v45, v43, v417);
  v116 = v430;
  if (v430 != v428 || *(&v430 + 1) != *(&v428 + 1))
  {
    OUTLINED_FUNCTION_36_0();
LABEL_556:
    v383 = 1;
    v382 = 0;
    LODWORD(v389) = 1;
    goto LABEL_530;
  }

  if (v430 == 0)
  {
    v383 = 1;
    goto LABEL_545;
  }

  v118 = *(&v430 + 1) / v36;
  if (*(&v430 + 1) / v36 <= 1)
  {
    v118 = 1;
  }

  v119 = v430 / v36;
  if (v430 / v36 <= 1)
  {
    v119 = 1;
  }

  v409 = v36;
  v410 = v119;
  v392 = v118;
  v391 = v118 * v119;
  v120 = v118 * v119 * v61;
  if (v32)
  {
    if (v34 != 8 * v120)
    {
      v383 = 1;
      goto LABEL_545;
    }

    v61 = 0;
  }

  else
  {
    v121 = v120;
    v122 = malloc_type_calloc(v120, 8uLL, 0x100004000313F17uLL);
    v120 = v121;
    v32 = v122;
    v61 = v122;
    if (!v122)
    {
      v400 = 0;
      goto LABEL_556;
    }
  }

  v385 = v120;
  BitDepthForPixelFormat = malloc_type_calloc(v120, 8uLL, 0x100004000313F17uLL);
  v389 = 1;
  v400 = BitDepthForPixelFormat;
  if (!BitDepthForPixelFormat)
  {
    v400 = 0;
    v383 = 1;
    v382 = 0;
    goto LABEL_530;
  }

  v386 = v61;
  v416 = 0;
  v131 = 0;
  v404 = v429.i64[0] + v116;
  v403 = v429.i64[1] + *(&v116 + 1);
  v401 = v410 - 1;
  v402 = v392 - 1;
  v132 = HIDWORD(v398);
  HIDWORD(v396) = HIDWORD(v398) == 1380410945;
  v390 = 2 * v391;
  v395 = (HIDWORD(v398) - 1278226488);
  HIDWORD(v394) = HIDWORD(v398) - 1278226736;
  v399 = v32;
  v133 = BitDepthForPixelFormat;
  do
  {
    v134 = 0;
    v407 = v131 * v410;
    v408 = v131 * v409;
    v406 = v131;
    do
    {
      v135 = v429.i64[0] + v134 * v409;
      v136 = v429.i64[1] + v408;
      v137 = v427.i64[0] + v134 * v409;
      v138 = v427.i64[1] + v408;
      if (v131 == v402)
      {
        v139 = v403 - v136;
      }

      else
      {
        v139 = v409;
      }

      if (v134 == v401)
      {
        v140 = v404 - v135;
      }

      else
      {
        v140 = v409;
      }

      v141 = v134 + v407;
      v142 = v132 == 1094862674 || v132 == 1095911234;
      v414 = v140;
      v415 = v134 + v407;
      v418 = v134;
      if (!v142)
      {
        if (v132 == 1111970369 || v132 == 1380401729 || v132 == 1815491698 || v132 == 1380411457 || v132 == 1647589490)
        {
          v131 = v429.i64[0] + v134 * v409;
          goto LABEL_215;
        }

        if (v132 == 1647719528)
        {
          v267 = CVPixelBufferGetPixelFormatType(pixelBuffer);
          BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v267);
          BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v267);
          v150 = -16995;
          v269 = 0.0;
          v47 = 0.0;
          if (!BytesPerPixelForPixelFormat)
          {
            goto LABEL_371;
          }

          v266 = v418;
          if (BitDepthForPixelFormat)
          {
            BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
            v271 = CVPixelBufferGetBytesPerRow(v405);
            BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
            v273 = CVPixelBufferGetBaseAddress(v405);
            if (v139 >= 2)
            {
              v295 = 0;
              v296 = v139 >> 1;
              v297 = 2 * v414;
              v298 = v273 + 2 * BytesPerPixelForPixelFormat * v137 + v271 * (v138 >> 1);
              v299 = BaseAddress + 2 * BytesPerPixelForPixelFormat * v135 + BytesPerRow * (v136 >> 1);
              v300 = 0.0;
              v301 = 0.0;
              v302 = 0.0;
              v32 = v399;
              v132 = HIDWORD(v398);
              do
              {
                if (v297)
                {
                  v303 = 0;
                  v304 = 2 * v414;
                  do
                  {
                    _H1 = *(v299 + 2 * v303) - *(v298 + 2 * v303);
                    __asm { FCVT            D1, H1 }

                    v307 = _D1 * _D1;
                    if (!v295 || (v304 != 1 ? (v308 = (v139 >> 1) - 1 == v295) : (v308 = 1), v308 || !v303))
                    {
                      v302 = v302 + v307;
                      v301 = v301 + 1.0;
                    }

                    v300 = v300 + v307;
                    ++v303;
                    --v304;
                  }

                  while (v304);
                }

                v299 += BytesPerRow;
                v298 += v271;
                ++v295;
              }

              while (v295 != v296);
              if (v300 == 0.0)
              {
                OUTLINED_FUNCTION_18_1();
              }

              else
              {
                v351 = log10(v300 / (v296 * v297));
                v47 = OUTLINED_FUNCTION_9_8(v351) + 0.0;
              }

              v131 = v406;
              v266 = v418;
              if (v302 == 0.0)
              {
                OUTLINED_FUNCTION_30_0();
                v269 = v352;
              }

              else
              {
                v353 = log10(v302 / v301);
                v269 = OUTLINED_FUNCTION_9_8(v353) + 0.0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_30_0();
              v269 = v274;
              v47 = v274;
              v32 = v399;
              v132 = HIDWORD(v398);
              v131 = v406;
LABEL_371:
              v266 = v418;
            }
          }

          v32[v415] = v47;
          v133 = v400;
          v400[v415] = v269;
          goto LABEL_405;
        }

        if (v132 != 1380410945)
        {
          v275 = v139;
          v276 = &v32[v141];
          v277 = &v133[v141];
          if (!v394)
          {
            if (v395 > 0x30 || (OUTLINED_FUNCTION_26(), _ZF))
            {
              if (HIDWORD(v394) > 6 || ((1 << SBYTE4(v394)) & 0x45) == 0)
              {
                v278 = v132 == 1717855600 || v132 == 1717856627;
                v279 = v278 || v132 == 1751410032;
                if (!v279 && v132 != 1751411059)
                {
                  BitDepthForPixelFormat = CMPhotoPixelFormatIsBayer14Bits(v132);
                  if (!BitDepthForPixelFormat)
                  {
                    OUTLINED_FUNCTION_28_0();
                    v282 = v132 == v281 || v132 == 825437747;
                    if (!v282 && v132 != 1932996149)
                    {
                      BitDepthForPixelFormat = CMPhotoPixelFormatIsRAWVersatile(v132);
                      if (!BitDepthForPixelFormat)
                      {
                        BitDepthForPixelFormat = CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(v132);
                        if (!BitDepthForPixelFormat)
                        {
                          if (v132 == 1278555701)
                          {
                            v423 = v135;
                            v424 = v136;
                            v284 = OUTLINED_FUNCTION_2_8(BitDepthForPixelFormat, v124, v125, v126, v127, v128, v129, v130, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, pixelBuffer);
                            _computePSNRForL565(v284, v285, v405, v286, v276);
LABEL_425:
                            v131 = v406;
                            v266 = v418;
                            goto LABEL_406;
                          }

                          if (v132 == 1815162994)
                          {
                            v423 = v135;
                            v424 = v136;
                            v358 = OUTLINED_FUNCTION_2_8(BitDepthForPixelFormat, v124, v125, v126, v127, v128, v129, v130, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, pixelBuffer);
                            _computePSNRForl10r(v358, v359, v405, v360, v276, v277);
LABEL_423:
                            v294 = BitDepthForPixelFormat | v416;
                          }

                          else
                          {
                            v423 = v135;
                            v424 = v136;
                            v365 = OUTLINED_FUNCTION_2_8(BitDepthForPixelFormat, v124, v125, v126, v127, v128, v129, v130, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, pixelBuffer);
                            v366 = v277;
                            v367 = v275;
                            _computePSNRForPlane(v365, v368, v405, v369, 0, v276, v366);
                            v413 = v370;
                            OUTLINED_FUNCTION_25_0();
                            v425 = v414;
                            v426 = v275;
                            v419 = v137;
                            v420 = v138;
                            v421 = v414;
                            v422 = v275;
                            _computePSNRForPlane(pixelBuffer, &v423, v405, &v419, 1u, v373, (v372 + 8 * v371));
                            v375 = v374;
                            OUTLINED_FUNCTION_25_0();
                            v425 = v414;
                            v426 = v367;
                            v419 = v137;
                            v420 = v138;
                            v421 = v414;
                            v422 = v367;
                            v32 = v399;
                            v133 = v400;
                            _computePSNRForPlane(pixelBuffer, &v423, v405, &v419, 2u, v378, (v377 + 8 * v376));
                            v132 = HIDWORD(v398);
                            v294 = v413 | v375 | BitDepthForPixelFormat | v416;
                          }

                          v416 = v294;
                          goto LABEL_425;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v423 = v135;
          v424 = v136;
          v291 = OUTLINED_FUNCTION_2_8(BitDepthForPixelFormat, v124, v125, v126, v127, v128, v129, v130, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, pixelBuffer);
          _computePSNRForPlane(v291, v292, v405, v293, HIDWORD(v393), v276, v277);
          goto LABEL_423;
        }
      }

      v131 = v429.i64[0] + v134 * v409;
LABEL_215:
      v147 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v148 = CMPhotoGetBytesPerPixelForPixelFormat(v147);
      v412 = v147;
      v149 = CMPhotoGetBitDepthForPixelFormat(v147);
      CVPixelBufferGetBytesPerRow(pixelBuffer);
      CVPixelBufferGetBytesPerRow(v405);
      CVPixelBufferGetBaseAddress(pixelBuffer);
      BitDepthForPixelFormat = CVPixelBufferGetBaseAddress(v405);
      v150 = -16995;
      v151 = 0.0;
      if (!v148)
      {
        v47 = 0.0;
        v32 = v399;
LABEL_516:
        v132 = HIDWORD(v398);
        v133 = v400;
        goto LABEL_402;
      }

      v32 = v399;
      if (!v149)
      {
        v47 = 0.0;
        goto LABEL_516;
      }

      if (v149 != 32)
      {
        if (v149 == 16)
        {
          v180 = v412 == 1278226536 || v412 == 1380411457 || v412 == 1647719528 || v412 == 1651926376 || v412 == 1751410032 || v412 == 1751411059 || v412 == 1751527984;
          v132 = HIDWORD(v398);
          v133 = v400;
          if (v180)
          {
            if (v139)
            {
              OUTLINED_FUNCTION_15_3();
              OUTLINED_FUNCTION_39_0();
              OUTLINED_FUNCTION_4_6();
              do
              {
                if (v152)
                {
                  OUTLINED_FUNCTION_37_0();
                  v192 = v191;
                  do
                  {
                    v193 = v189 * v183;
                    v194 = 2 * v189 * v183;
                    if (v185)
                    {
                      v195 = *(v181 + v194 + 4);
                      v196 = *(v181 + v194 + 2);
                      _H3 = *(v181 + 2 * v193);
                      if (v195 <= v196)
                      {
                        _H4 = *(v181 + v194 + 2);
                      }

                      else
                      {
                        _H4 = *(v181 + v194 + 4);
                      }

                      if (_H4 <= _H3)
                      {
                        __asm { FCVT            S4, H3 }
                      }

                      else
                      {
                        __asm { FCVT            S4, H4 }
                      }

                      if (v190 <= _S4)
                      {
                        v190 = _S4;
                      }

                      _H5 = *(v182 + v194 + 4);
                      _H1 = v195 - _H5;
                      __asm { FCVT            D1, H1 }

                      v210 = *(v182 + v194 + 2);
                      v211 = _D1 * _D1;
                      _H2 = v196 - v210;
                      __asm { FCVT            D2, H2 }

                      v214 = _D2 * _D2;
                      _H4 = *(v182 + 2 * v193);
                    }

                    else
                    {
                      if (!v186)
                      {
                        goto LABEL_400;
                      }

                      v203 = *(v181 + (v194 | 2));
                      v204 = *(v181 + (v194 | 4));
                      _H3 = *(v181 + (v194 | 6));
                      if (v203 <= v204)
                      {
                        _H4 = *(v181 + (v194 | 4));
                      }

                      else
                      {
                        _H4 = *(v181 + (v194 | 2));
                      }

                      if (_H4 <= _H3)
                      {
                        __asm { FCVT            S4, H3 }
                      }

                      else
                      {
                        __asm { FCVT            S4, H4 }
                      }

                      if (v190 <= _S4)
                      {
                        v190 = _S4;
                      }

                      _H5 = *(v182 + (v194 | 2));
                      _H1 = v203 - _H5;
                      __asm { FCVT            D1, H1 }

                      v210 = *(v182 + (v194 | 4));
                      v211 = _D1 * _D1;
                      _H2 = v204 - v210;
                      __asm { FCVT            D2, H2 }

                      v214 = _D2 * _D2;
                      _H4 = *(v182 + (v194 | 6));
                    }

                    _H3 = _H3 - _H4;
                    __asm { FCVT            D3, H3 }

                    v222 = _D3 * _D3;
                    if (_H5 <= v210)
                    {
                      _H5 = v210;
                    }

                    if (_H5 <= _H4)
                    {
                      __asm { FCVT            S4, H4 }
                    }

                    else
                    {
                      __asm { FCVT            S4, H5 }
                    }

                    if (v190 <= _S4)
                    {
                      v190 = _S4;
                    }

                    v224 = v211 + v214 + v222;
                    if (!v184 || (v192 != 1 ? (v225 = v187 == v184) : (v225 = 1), v225 || !v188))
                    {
                      v51 = v51 + v224;
                      v53 = v53 + 3.0;
                    }

                    v47 = v47 + v224;
                    ++v189;
                    --v188;
                    --v192;
                  }

                  while (v192);
                }

                OUTLINED_FUNCTION_8_6();
              }

              while (!_ZF);
              v174 = v226;
              goto LABEL_301;
            }
          }

          else if (v139)
          {
            OUTLINED_FUNCTION_15_3();
            OUTLINED_FUNCTION_39_0();
            OUTLINED_FUNCTION_4_6();
            do
            {
              if (v152)
              {
                OUTLINED_FUNCTION_37_0();
                v319 = v318;
                do
                {
                  v320 = v317 * v311;
                  v321 = 2 * v317 * v311;
                  if (v313)
                  {
                    v322 = (*(v309 + v321 + 4) - *(v310 + v321 + 4));
                    v323 = v322 * v322;
                    v324 = *(v309 + v321 + 2) - *(v310 + v321 + 2);
                    v325 = v324 * v324;
                  }

                  else
                  {
                    if (!v314)
                    {
                      goto LABEL_400;
                    }

                    v326 = (*(v309 + (v321 | 2)) - *(v310 + (v321 | 2)));
                    v323 = v326 * v326;
                    v327 = *(v309 + (v321 | 4)) - *(v310 + (v321 | 4));
                    v325 = v327 * v327;
                    v320 |= 3uLL;
                  }

                  v328 = *(v309 + 2 * v320) - *(v310 + 2 * v320);
                  v329 = v323 + v325 + v328 * v328;
                  if (!v312 || (v319 != 1 ? (v330 = v315 == v312) : (v330 = 1), v330 || !v316))
                  {
                    v51 = v51 + v329;
                    v53 = v53 + 3.0;
                  }

                  v47 = v47 + v329;
                  ++v317;
                  --v316;
                  --v319;
                }

                while (v319);
              }

              OUTLINED_FUNCTION_8_6();
            }

            while (!_ZF);
            goto LABEL_238;
          }

          v265 = 0.0;
          OUTLINED_FUNCTION_4_6();
          goto LABEL_460;
        }

        v132 = HIDWORD(v398);
        v133 = v400;
        if (v149 == 8)
        {
          if (v139)
          {
            OUTLINED_FUNCTION_15_3();
            OUTLINED_FUNCTION_39_0();
            OUTLINED_FUNCTION_4_6();
            do
            {
              if (v152)
              {
                OUTLINED_FUNCTION_37_0();
                v163 = v162;
                do
                {
                  v164 = v161 * v155;
                  if (v157)
                  {
                    v165 = (*(v153 + v164 + 2) - *(v154 + v164 + 2));
                    v166 = v165 * v165;
                    v167 = *(v153 + v164 + 1) - *(v154 + v164 + 1);
                    v168 = v167 * v167;
                  }

                  else
                  {
                    if (!v158)
                    {
                      goto LABEL_400;
                    }

                    v169 = (*(v153 + (v164 | 1)) - *(v154 + (v164 | 1)));
                    v166 = v169 * v169;
                    v170 = *(v153 + (v164 | 2)) - *(v154 + (v164 | 2));
                    v168 = v170 * v170;
                    v164 |= 3uLL;
                  }

                  v171 = *(v153 + v164) - *(v154 + v164);
                  v172 = v166 + v168 + v171 * v171;
                  if (!v156 || (v163 != 1 ? (v173 = v159 == v156) : (v173 = 1), v173 || !v160))
                  {
                    v51 = v51 + v172;
                    v53 = v53 + 3.0;
                  }

                  v47 = v47 + v172;
                  ++v161;
                  --v160;
                  --v163;
                }

                while (v163);
              }

              OUTLINED_FUNCTION_8_6();
            }

            while (!_ZF);
LABEL_238:
            v174 = 0.0;
LABEL_301:
            v227 = 0.0;
            goto LABEL_361;
          }

          OUTLINED_FUNCTION_30_0();
          v151 = v287;
          v47 = v287;
        }

        else
        {
LABEL_365:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_8();
          BitDepthForPixelFormat = FigSignalErrorAtGM();
          v150 = 0;
          v47 = 0.0;
        }

LABEL_402:
        v131 = v406;
LABEL_403:
        v266 = v418;
        goto LABEL_404;
      }

      v230 = v412 == 1278226534 || v412 == 1380410945 || v412 == 1717856627 || v412 == 1717855600;
      v132 = HIDWORD(v398);
      v133 = v400;
      if (!v230)
      {
        goto LABEL_365;
      }

      if (!v139)
      {
        v265 = 0.0;
        v47 = 0.0;
        v227 = 0.0;
        v53 = 0.0;
        v51 = 0.0;
        v131 = v406;
LABEL_409:
        if (v412 == 1278226534 || v412 == 1380410945 || v412 == 1717856627 || v412 == 1717855600)
        {
          v266 = v418;
          if (v47 == 0.0)
          {
            OUTLINED_FUNCTION_18_1();
          }

          else
          {
            v342 = log10(v227);
            v343 = log10(v47 / v265);
            v344 = OUTLINED_FUNCTION_3_7(v343);
            v47 = v344 + v342 * v345;
          }

          if (v51 != 0.0)
          {
            v341 = v227;
            goto LABEL_489;
          }
        }

        else
        {
          v266 = v418;
          if (v47 == 0.0)
          {
            OUTLINED_FUNCTION_18_1();
          }

          else
          {
            v354 = log10(v47 / v265);
            v47 = OUTLINED_FUNCTION_9_8(v354) + 192.659197;
          }

          if (v51 != 0.0)
          {
            v355 = log10(v51 / v53);
            v356 = OUTLINED_FUNCTION_9_8(v355);
            v357 = 192.659197;
            goto LABEL_512;
          }
        }

LABEL_487:
        OUTLINED_FUNCTION_30_0();
        v151 = v346;
        goto LABEL_404;
      }

      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_4_6();
      v152 = v414;
      do
      {
        if (v152)
        {
          OUTLINED_FUNCTION_37_0();
          for (i = v241; i; --i)
          {
            v243 = v239 * v233;
            v244 = 4 * v239 * v233;
            if (v235)
            {
              v245 = v244 + 4;
              v246 = *(v231 + v245);
              v247 = *(v232 + v245);
              v248 = vcvtq_f64_f32(vsub_f32(v246, v247));
              v249 = vmulq_f64(v248, v248);
              v250 = vextq_s8(v249, v249, 8uLL);
              v251 = *(v231 + 4 * v243);
              v252 = *(v232 + 4 * v243);
              v253 = (v251 - v252) * (v251 - v252);
              if (v246.f32[1] > v246.f32[0])
              {
                v246.i32[0] = HIDWORD(*(v231 + v245));
              }

              if (v240 <= v251)
              {
                v254 = *(v231 + 4 * v243);
              }

              else
              {
                v254 = v240;
              }

              if (v240 <= v246.f32[0])
              {
                v240 = v246.f32[0];
              }

              if (v246.f32[0] > v251)
              {
                v255 = v240;
              }

              else
              {
                v255 = v254;
              }

              LODWORD(v240) = HIDWORD(*(v232 + v245));
              if (v247.f32[1] <= v247.f32[0])
              {
                LODWORD(v240) = *(v232 + v245);
              }
            }

            else
            {
              if (!v236)
              {
LABEL_400:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_1_8();
                BitDepthForPixelFormat = FigSignalErrorAtGM();
                v150 = 0;
                v151 = 0.0;
                v47 = 0.0;
                goto LABEL_403;
              }

              v256 = *(v231 + (v244 | 4));
              v257 = *(v232 + (v244 | 4));
              v258 = vcvtq_f64_f32(vsub_f32(v256, v257));
              v250 = vmulq_f64(v258, v258);
              v259 = v244 | 0xC;
              v260 = *(v231 + v259);
              v252 = *(v232 + v259);
              v253 = (v260 - v252) * (v260 - v252);
              if (v256.f32[0] <= v256.f32[1])
              {
                v256.f32[0] = v256.f32[1];
              }

              if (v240 <= v260)
              {
                v261 = *(v231 + v259);
              }

              else
              {
                v261 = v240;
              }

              if (v240 <= v256.f32[0])
              {
                v240 = v256.f32[0];
              }

              if (v256.f32[0] > v260)
              {
                v255 = v240;
              }

              else
              {
                v255 = v261;
              }

              v240 = v257.f32[1];
              if (v257.f32[0] > v257.f32[1])
              {
                v240 = v257.f32[0];
              }
            }

            if (v240 <= v252)
            {
              if (v255 > v252)
              {
LABEL_348:
                v240 = v255;
                goto LABEL_350;
              }

              v240 = v252;
            }

            else if (v255 > v240)
            {
              goto LABEL_348;
            }

LABEL_350:
            v262 = vaddvq_f64(v250) + v253;
            if (!v234 || (i != 1 ? (v263 = v237 == v234) : (v263 = 1), v263 || !v238))
            {
              v51 = v51 + v262;
              v53 = v53 + 3.0;
            }

            v47 = v47 + v262;
            ++v239;
            --v238;
          }
        }

        OUTLINED_FUNCTION_8_6();
      }

      while (!_ZF);
      v227 = v264;
      v174 = 0.0;
LABEL_361:
      v265 = (3 * v152 * v139);
      if (v149 == 32)
      {
        goto LABEL_409;
      }

      if (v149 == 16)
      {
        v151 = v174;
LABEL_460:
        if (v412 != 1278226536 && v412 != 1380411457 && v412 != 1647719528 && v412 != 1651926376 && v412 != 1751410032 && v412 != 1751527984 && v412 != 1751411059)
        {
          v266 = v418;
          if (v47 == 0.0)
          {
            OUTLINED_FUNCTION_18_1();
          }

          else
          {
            v361 = log10(v47 / v265);
            v47 = OUTLINED_FUNCTION_9_8(v361) + 96.3294661;
          }

          if (v51 != 0.0)
          {
            v362 = log10(v51 / v53);
            v356 = OUTLINED_FUNCTION_9_8(v362);
            v357 = 96.3294661;
            goto LABEL_512;
          }

          goto LABEL_487;
        }

        v266 = v418;
        if (v47 == 0.0)
        {
          OUTLINED_FUNCTION_18_1();
        }

        else
        {
          v337 = log10(v151);
          v338 = log10(v47 / v265);
          v339 = OUTLINED_FUNCTION_3_7(v338);
          v47 = v339 + v337 * v340;
        }

        if (v51 != 0.0)
        {
          v341 = v151;
LABEL_489:
          v347 = log10(v341);
          v348 = log10(v51 / v53);
          v349 = OUTLINED_FUNCTION_3_7(v348);
          v151 = v349 + v347 * v350;
          goto LABEL_404;
        }

        goto LABEL_487;
      }

      v266 = v418;
      if (v47 == 0.0)
      {
        OUTLINED_FUNCTION_18_1();
      }

      else
      {
        v363 = log10(v47 / v265);
        v47 = OUTLINED_FUNCTION_9_8(v363) + 48.1308036;
      }

      if (v51 == 0.0)
      {
        goto LABEL_487;
      }

      v364 = log10(v51 / v53);
      v356 = OUTLINED_FUNCTION_9_8(v364);
      v357 = 48.1308036;
LABEL_512:
      v151 = v356 + v357;
LABEL_404:
      v32[v415] = v47;
      v133[v415] = v151;
LABEL_405:
      v416 |= v150;
LABEL_406:
      v134 = v266 + 1;
    }

    while (v134 != v410);
    ++v131;
  }

  while (v131 != v392);
  v30 = v387;
  v58 = v388;
  if (v416)
  {
    v115 = 0.0;
    v383 = 1;
    OUTLINED_FUNCTION_23_0();
    v382 = 0;
    v61 = v386;
  }

  else
  {
    v61 = v386;
    if (v391)
    {
      v379 = 0;
      v380 = v385;
      if (v385 <= 1)
      {
        v380 = 1;
      }

      v381 = INFINITY;
      v115 = INFINITY;
      do
      {
        if (v381 >= v32[v379])
        {
          v381 = v32[v379];
        }

        if (v115 >= v400[v379])
        {
          v115 = v400[v379];
        }

        ++v379;
      }

      while (v380 != v379);
      v383 = 1;
      OUTLINED_FUNCTION_23_0();
    }

    else
    {
      v383 = 1;
      v115 = INFINITY;
      OUTLINED_FUNCTION_23_0();
      v382 = 0x7FF0000000000000;
    }
  }

LABEL_530:
  if (v30)
  {
    *v30 = v382;
  }

  if (v58)
  {
    *v58 = v115;
  }

  if (v383)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  if (v389)
  {
    CVPixelBufferUnlockBaseAddress(v405, 1uLL);
  }

  free(v61);
  free(v400);
  OUTLINED_FUNCTION_40_0();
}

void CMPhotoComputePSNRForFloatingPointPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, int a3, double a4, double a5, double a6, double a7, float a8)
{
  v105 = 0;
  pixelBuffer = 0;
  v104 = a1;
  CVPixelBufferGetPixelFormatType(a1);
  OUTLINED_FUNCTION_28_0();
  v12 = v10 == v11 || v10 == 825437747;
  v24 = v12 || v10 == 1278226534 || v10 == 1278226536 || v10 == 1380410945 || v10 == 1380411457 || v10 == 1647719528 || v10 == 1651926376 || v10 == 1717855600 || v10 == 1717856627 || v10 == 1751410032 || v10 == 1751411059 || v10 == 1751527984 || v10 == 1932996149;
  if (!v24 || ((v25 = v10, v102 = a2, PixelFormatType = CVPixelBufferGetPixelFormatType(a2), PixelFormatType != 1278226534) ? (v27 = PixelFormatType == 1278226536) : (v27 = 1), !v27 ? (v28 = PixelFormatType == 1380410945) : (v28 = 1), !v28 ? (v29 = PixelFormatType == 1380411457) : (v29 = 1), !v29 ? (v30 = PixelFormatType == 1647719528) : (v30 = 1), !v30 ? (v31 = PixelFormatType == 1651926376) : (v31 = 1), !v31 ? (v32 = PixelFormatType == 1717855600) : (v32 = 1), !v32 ? (v33 = PixelFormatType == 1717856627) : (v33 = 1), !v33 ? (v34 = PixelFormatType == 1751410032) : (v34 = 1), !v34 ? (v35 = PixelFormatType == 1751411059) : (v35 = 1), !v35 ? (v36 = PixelFormatType == 1751527984) : (v36 = 1), !v36 ? (v37 = PixelFormatType == 825306677) : (v37 = 1), !v37 ? (v38 = PixelFormatType == 825437747) : (v38 = 1), !v38 ? (v39 = PixelFormatType == 1932996149) : (v39 = 1), !v39))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_14();
LABEL_175:
    FigSignalErrorAtGM();
    goto LABEL_170;
  }

  v40 = PixelFormatType;
  if (v25 == 1278226536 || v25 == 1380411457 || v25 == 1647719528 || v25 == 1651926376 || v25 == 1751410032 || v25 == 1751527984 || v25 == 1751411059)
  {
    if (CMPhotoCreateFullPrecisionPixelBufferFromHalfPrecisionSource(v104, 0, a3, 0x7FFF, 2143289344, &pixelBuffer))
    {
      goto LABEL_170;
    }

    v104 = pixelBuffer;
    v25 = CVPixelBufferGetPixelFormatType(pixelBuffer);
  }

  if (v40 == 1278226536 || v40 == 1380411457 || v40 == 1647719528 || v40 == 1651926376 || v40 == 1751410032 || v40 == 1751527984 || v40 == 1751411059)
  {
    v99 = v104;
    if (CMPhotoCreateFullPrecisionPixelBufferFromHalfPrecisionSource(v102, 0, a3, 0x7FFF, 2143289344, &v105))
    {
      goto LABEL_170;
    }

    v98 = v105;
    v40 = CVPixelBufferGetPixelFormatType(v105);
  }

  else
  {
    v98 = v102;
    v99 = v104;
  }

  if (v25 != v40)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_14();
    goto LABEL_175;
  }

  if (!CVPixelBufferLockBaseAddress(v99, 1uLL))
  {
    v53 = OUTLINED_FUNCTION_22();
    if (CVPixelBufferLockBaseAddress(v53, v54))
    {
      CVPixelBufferUnlockBaseAddress(v99, 1uLL);
      goto LABEL_170;
    }

    v111.origin.x = OUTLINED_FUNCTION_16_2();
    if (CGRectIsNull(v111))
    {
      OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
    }

    OUTLINED_FUNCTION_28_0();
    if (v25 == v59 || v25 == 1932996149 || v25 == 825437747)
    {
      v109 = 0uLL;
      v110 = 0uLL;
      _computeCropRectForPixelBuffer(v99, &v109, v55, v56, v57, v58);
      v107 = 0u;
      v108 = 0u;
      v62 = OUTLINED_FUNCTION_16_2();
      _computeCropRectForPixelBuffer(v63, v64, v62, v65, v66, v67);
      v68 = v110;
      if (v110 != v108 || *(&v110 + 1) != *(&v108 + 1))
      {
        goto LABEL_169;
      }

      BaseAddress = CVPixelBufferGetBaseAddress(v99);
      v71 = CVPixelBufferGetBaseAddress(v98);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v99);
      v73 = CVPixelBufferGetBytesPerRow(v98);
      if (!*(&v68 + 1))
      {
        goto LABEL_169;
      }

      v74 = 0;
      v75 = v71 + 2 * v107 + *(&v107 + 1) * v73;
      v76 = BaseAddress + 2 * v109.i64[0] + v109.i64[1] * BytesPerRow;
      do
      {
        if (v68)
        {
          v77 = 0;
          do
          {
            v78 = *(v76 + 2 * v77) - *(v75 + 2 * v77);
            v74 += (v78 * v78);
            ++v77;
          }

          while (v68 != v77);
        }

        OUTLINED_FUNCTION_35_0();
      }

      while (!v12);
      if (!v74)
      {
        goto LABEL_169;
      }

      log10(a8);
      v79 = v74 / (*(&v68 + 1) * v68);
    }

    else
    {
      v109 = 0uLL;
      v110 = 0uLL;
      _computeCropRectForPixelBuffer(v99, &v109, v55, v56, v57, v58);
      v107 = 0u;
      v108 = 0u;
      v80 = OUTLINED_FUNCTION_16_2();
      _computeCropRectForPixelBuffer(v81, v82, v80, v83, v84, v85);
      v86 = v110;
      if (v110 != v108 || *(&v110 + 1) != *(&v108 + 1))
      {
        goto LABEL_169;
      }

      v88 = CVPixelBufferGetBaseAddress(v99);
      v89 = CVPixelBufferGetBaseAddress(v98);
      v90 = CVPixelBufferGetBytesPerRow(v99);
      v91 = CVPixelBufferGetBytesPerRow(v98);
      if (!*(&v86 + 1))
      {
        goto LABEL_169;
      }

      v92 = 0;
      v93 = v89 + 4 * v107 + *(&v107 + 1) * v91;
      v94 = v88 + 4 * v109.i64[0] + v109.i64[1] * v90;
      v95 = 0.0;
      do
      {
        if (v86)
        {
          v96 = 0;
          do
          {
            v95 = v95 + (*(v94 + 4 * v96) - *(v93 + 4 * v96)) * (*(v94 + 4 * v96) - *(v93 + 4 * v96));
            ++v92;
            ++v96;
          }

          while (v86 != v96);
        }

        OUTLINED_FUNCTION_35_0();
      }

      while (!v12);
      if (v95 <= 0.0)
      {
        goto LABEL_169;
      }

      log10(a8);
      v79 = v95 / v92;
    }

    v97 = log10(v79);
    OUTLINED_FUNCTION_3_7(v97);
LABEL_169:
    CVPixelBufferUnlockBaseAddress(v99, 1uLL);
    v100 = OUTLINED_FUNCTION_22();
    CVPixelBufferUnlockBaseAddress(v100, v101);
  }

LABEL_170:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v105)
  {
    CFRelease(v105);
  }
}

void CMPhotoComputeSSIMForPixelBuffer()
{
  OUTLINED_FUNCTION_41_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_4_4();
  v15 = v14;
  v17 = v16;
  v96 = *MEMORY[0x1E69E9840];
  v95 = 0.0;
  v94 = 0u;
  memset(v93, 0, sizeof(v93));
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2000000000;
  v90[3] = v93;
  PixelFormatType = CVPixelBufferGetPixelFormatType(v16);
  if (PixelFormatType - 1278226736 <= 6)
  {
    OUTLINED_FUNCTION_10();
    if (!_ZF)
    {
LABEL_43:
      v11 = 1;
      goto LABEL_44;
    }
  }

  _ZF = PixelFormatType == 875704422 || PixelFormatType == 875704438;
  if (!_ZF && PixelFormatType != 1111970369 && PixelFormatType != 2019963440 && PixelFormatType != 1380410945 && PixelFormatType != 1380411457 && PixelFormatType != 1751527984 && PixelFormatType != 1815491698 && PixelFormatType != 1936077360 && PixelFormatType != 1937125936 && PixelFormatType != 1952854576 && PixelFormatType != 1953903152 && PixelFormatType != 2016686640)
  {
    if (PixelFormatType != 1278226488)
    {
      fig_log_get_emitter();
      v31 = FigSignalErrorAtGM() == 0;
      if (!v9)
      {
        goto LABEL_84;
      }

      goto LABEL_81;
    }

    goto LABEL_43;
  }

LABEL_44:
  if (CVPixelBufferLockBaseAddress(v17, 1uLL))
  {
    goto LABEL_97;
  }

  if (CVPixelBufferLockBaseAddress(v15, 1uLL))
  {
    CVPixelBufferUnlockBaseAddress(v17, 1uLL);
LABEL_97:
    v31 = 0;
    if (!v9)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  v32 = v13 != 0;
  if (v13 && CVPixelBufferLockBaseAddress(v13, 0))
  {
    v32 = 0;
  }

  else
  {
    v97.origin.x = v3;
    v97.origin.y = v2;
    v97.size.width = v1;
    v97.size.height = v0;
    IsNull = CGRectIsNull(v97);
    v34 = 0;
    v35 = MEMORY[0x1E695F050];
    v36 = 0;
    v37 = v1;
    v38 = v0;
    if (IsNull)
    {
      v34 = *MEMORY[0x1E695F050];
      v36 = *(MEMORY[0x1E695F050] + 8);
      v37 = *(MEMORY[0x1E695F050] + 16);
      v38 = *(MEMORY[0x1E695F050] + 24);
    }

    if (v11)
    {
      v39 = OUTLINED_FUNCTION_12_6();
      _computeSSIMForPlane(v40, v41, 0, 0, v42, v39, v43, v44, v45, v46, v47, v48, v0);
LABEL_77:
      v31 = 1;
      goto LABEL_78;
    }

    if (PixelFormatType == 1111970369 || PixelFormatType == 1380410945 || PixelFormatType == 1815491698 || PixelFormatType == 1380411457)
    {
      v91 = 0;
      v92 = 0;
      v52 = OUTLINED_FUNCTION_12_6();
      if (!_createMonochromeBufferFromRGB(v53, v54, v55, v56, v52, v57, v58, v59, v60, v61, v62, v0) && !CVPixelBufferLockBaseAddress(v92, 0))
      {
        if (CVPixelBufferLockBaseAddress(v91, 0))
        {
          v75 = &v92;
        }

        else
        {
          v63 = 0;
          v64 = *v35;
          v65 = v35[1];
          v66 = v93;
          v67 = v35[2];
          v68 = v35[3];
          do
          {
            if (_extractRGBComponentAndCopyIntoMonochromeBuffer(v17, v15, v92, v91, v63))
            {
              break;
            }

            v69 = OUTLINED_FUNCTION_22_0();
            _computeSSIMForPlane(v70, v71, 0, 0, v66, v69, v72, v73, v74, v64, v65, v67, v68);
            ++v63;
            v66 = (v66 + 24);
          }

          while (v63 != 3);
          CVPixelBufferUnlockBaseAddress(v92, 0);
          v75 = &v91;
        }

        CVPixelBufferUnlockBaseAddress(*v75, 0);
      }

      if (v92)
      {
        CFRelease(v92);
      }

      if (v91)
      {
        CFRelease(v91);
      }

      __asm { FMOV            V1.2D, #3.0 }

      v93[0] = vdivq_f64(vaddq_f64(vaddq_f64(v93[0], *(&v93[1] + 8)), v94), _Q1);
      v80 = (v93[1].f64[0] + v93[2].f64[1] + v95) / 3.0;
      goto LABEL_76;
    }

    v84 = CMPhotoComputeSSIMForPixelBuffer_queue;
    if (CMPhotoComputeSSIMForPixelBuffer_queue || (v84 = dispatch_queue_create("com.apple.coremedia.psnr", MEMORY[0x1E69E96A8]), (CMPhotoComputeSSIMForPixelBuffer_queue = v84) != 0))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = *"";
      block[2] = __CMPhotoComputeSSIMForPixelBuffer_block_invoke;
      block[3] = &unk_1E77A1E30;
      block[6] = v34;
      block[7] = v36;
      *&block[8] = v37;
      *&block[9] = v38;
      block[10] = v15;
      *&block[11] = v3;
      *&block[12] = v2;
      *&block[13] = v1;
      *&block[14] = v0;
      block[15] = v13;
      block[4] = v90;
      block[5] = v17;
      dispatch_async(v84, block);
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = *"";
      v88[2] = __CMPhotoComputeSSIMForPixelBuffer_block_invoke_2;
      v88[3] = &unk_1E77A1E58;
      v88[6] = v34;
      v88[7] = v36;
      *&v88[8] = v37;
      *&v88[9] = v38;
      v88[10] = v15;
      *&v88[11] = v3;
      *&v88[12] = v2;
      *&v88[13] = v1;
      *&v88[14] = v0;
      v88[15] = v13;
      v88[4] = v90;
      v88[5] = v17;
      dispatch_async(CMPhotoComputeSSIMForPixelBuffer_queue, v88);
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = *"";
      v87[2] = __CMPhotoComputeSSIMForPixelBuffer_block_invoke_3;
      v87[3] = &unk_1E77A1E80;
      v87[6] = v34;
      v87[7] = v36;
      *&v87[8] = v37;
      *&v87[9] = v38;
      v87[10] = v15;
      *&v87[11] = v3;
      *&v87[12] = v2;
      *&v87[13] = v1;
      *&v87[14] = v0;
      v87[15] = v13;
      v87[4] = v90;
      v87[5] = v17;
      dispatch_async(CMPhotoComputeSSIMForPixelBuffer_queue, v87);
      dispatch_barrier_sync(CMPhotoComputeSSIMForPixelBuffer_queue, &__block_literal_global_2);
      __asm
      {
        FMOV            V2.2D, #6.0
        FMOV            V1.2D, #0.125
      }

      v93[0] = vmulq_f64(vaddq_f64(vmlaq_f64(*(&v93[1] + 8), _Q2, v93[0]), v94), _Q1);
      v80 = (v93[2].f64[1] + v93[1].f64[0] * 6.0 + v95) * 0.125;
LABEL_76:
      v93[1].f64[0] = v80;
      goto LABEL_77;
    }
  }

  v31 = 0;
LABEL_78:
  CVPixelBufferUnlockBaseAddress(v17, 1uLL);
  CVPixelBufferUnlockBaseAddress(v15, 1uLL);
  if (v32)
  {
    CVPixelBufferUnlockBaseAddress(v13, 0);
  }

  if (v9)
  {
LABEL_81:
    v81 = v93[0].f64[0];
    if (!v31)
    {
      v81 = 0.0;
    }

    *v9 = v81;
  }

LABEL_84:
  if (v7)
  {
    v82 = v93[0].f64[1];
    if (!v31)
    {
      v82 = 0.0;
    }

    *v7 = v82;
  }

  if (v5)
  {
    v83 = v93[1].f64[0];
    if (!v31)
    {
      v83 = 0.0;
    }

    *v5 = v83;
  }

  _Block_object_dispose(v90, 8);
  OUTLINED_FUNCTION_40_0();
}

void CMPhotoComputeSSIMForPixelBufferBlockBased(__CVBuffer *a1, __CVBuffer *a2, unsigned int a3, unint64_t a4, size_t a5, void *a6)
{
  v10 = a1;
  v80 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (CVPixelBufferGetPixelFormatType(a2) == PixelFormatType && (PixelFormatType != 875704422 ? (v12 = PixelFormatType == 875704438) : (v12 = 1), !v12 ? (v13 = PixelFormatType == 1111970369) : (v13 = 1), !v13 ? (v14 = PixelFormatType == 1380410945) : (v14 = 1), !v14 ? (v15 = PixelFormatType == 1380411457) : (v15 = 1), !v15 ? (v16 = PixelFormatType == 1815491698) : (v16 = 1), v16 && a6 && (v17 = log2(a4), exp2(ceil(v17)) == a4)))
  {
    v18 = OUTLINED_FUNCTION_22();
    if (!CVPixelBufferLockBaseAddress(v18, v19))
    {
      if (CVPixelBufferLockBaseAddress(a2, 1uLL))
      {
        v50 = v10;
      }

      else
      {
        v73 = 0;
        v74 = 0;
        CMPhotoGetPixelBufferCLAP(v10, 0, 0, &v74, &v73);
        v71 = 0;
        v72 = 0;
        CMPhotoGetPixelBufferCLAP(a2, 0, 0, &v72, &v71);
        v20 = v74;
        if (v74 == v72 && (v21 = v73, v73 == v71) && (v22 = v74 / a4, v23 = v73 / a4, a5 >= 8 * v74 / a4 * (v73 / a4)))
        {
          v26 = PixelFormatType == 1111970369 || PixelFormatType == 1380410945 || PixelFormatType == 1380411457 || PixelFormatType == 1815491698;
          v69 = v10;
          if (v26)
          {
            bzero(a6, a5);
            v77 = 0.0;
            v78 = 0;
            v79 = 0;
            v75 = 0;
            pixelBuffer = 0;
            v27 = OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
            if (!_createMonochromeBufferFromRGB(v10, a2, &pixelBuffer, &v75, v27, v28, v29, v30, v27, v28, v29, v30) && !CVPixelBufferLockBaseAddress(pixelBuffer, 0))
            {
              if (CVPixelBufferLockBaseAddress(v75, 0))
              {
                p_pixelBuffer = &pixelBuffer;
              }

              else
              {
                v31 = 0;
                v66 = v21;
                v68 = a2;
                do
                {
                  if (_extractRGBComponentAndCopyIntoMonochromeBuffer(v10, a2, pixelBuffer, v75, v31))
                  {
                    break;
                  }

                  if (v21 >= a4)
                  {
                    v32 = 0;
                    do
                    {
                      if (v20 >= a4)
                      {
                        v33 = 0;
                        v34 = 0;
                        v35 = v20 / a4;
                        do
                        {
                          OUTLINED_FUNCTION_32_0();
                          _computeSSIMForPlane(v36, v37, v38, 0, v39, v40, v41, v42, v43, v44, v45, v46, a4);
                          *(a6 + v32 * v22 + v34) = *(a6 + v32 * v22 + v34) + v77 / 3.0;
                          ++v34;
                          v33 += a4;
                          --v35;
                        }

                        while (v35);
                      }

                      ++v32;
                    }

                    while (v32 != v23);
                  }

                  ++v31;
                  a2 = v68;
                  v10 = v69;
                  v21 = v66;
                }

                while (v31 != 3);
                CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
                p_pixelBuffer = &v75;
              }

              CVPixelBufferUnlockBaseAddress(*p_pixelBuffer, 0);
            }

            if (pixelBuffer)
            {
              CFRelease(pixelBuffer);
            }

            if (v75)
            {
              CFRelease(v75);
            }
          }

          else if (v73 >= a4)
          {
            v65 = a3;
            v67 = 0;
            do
            {
              if (v20 >= a4)
              {
                v51 = 0;
                v52 = 0;
                do
                {
                  OUTLINED_FUNCTION_32_0();
                  _computeSSIMForPlane(v53, v54, v55, v65, v56, v57, v58, v59, v60, v61, v62, v63, a4);
                  *(a6 + v67 * v22 + v52++) = v77;
                  v51 += a4;
                }

                while (v22 > v52);
              }

              ++v67;
            }

            while (v23 > v67);
          }
        }

        else
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
        }

        v48 = OUTLINED_FUNCTION_22();
        CVPixelBufferUnlockBaseAddress(v48, v49);
        v50 = a2;
      }

      CVPixelBufferUnlockBaseAddress(v50, 1uLL);
    }

    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_42_0();

    FigSignalErrorAtGM();
  }
}

uint64_t CMPhotoCompare(void *a1, void *a2, int a3, size_t a4, double *a5, CGImageRef *a6, __CFDictionary *a7)
{
  v227 = *MEMORY[0x1E69E9840];
  v223 = 0x800000008;
  HIDWORD(v222) = 2;
  v220 = 0x10000000000000;
  v221 = 0x7FEFFFFFFFFFFFFFLL;
  v218 = 0;
  pixelBuffer = 0;
  v216 = 0;
  v217 = 0;
  HIDWORD(v215) = 0;
  WORD1(v215) = 0;
  value = 0;
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    goto LABEL_56;
  }

  if (a4)
  {
    CMPhotoCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  PixelBufferFromCMPhotoImageType = _getPixelBufferFromCMPhotoImageType(a1, &pixelBuffer);
  if (PixelBufferFromCMPhotoImageType)
  {
    goto LABEL_71;
  }

  PixelBufferFromCMPhotoImageType = _getPixelBufferFromCMPhotoImageType(a2, &v218);
  if (PixelBufferFromCMPhotoImageType)
  {
    goto LABEL_71;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (Width != CVPixelBufferGetWidth(v218) || Height != CVPixelBufferGetHeight(v218) || (v18 = CVPixelBufferGetPixelFormatType(v218), PixelFormatType != v18) || a6 && (Width >= Height ? (v29 = Height) : (v29 = Width), SHIDWORD(v223) >= 2 ? (v30 = v29 > HIDWORD(v223)) : (v30 = 0), !v30))
  {
LABEL_55:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
LABEL_56:
    PixelBufferFromCMPhotoImageType = FigSignalErrorAtGM();
LABEL_71:
    v89 = PixelBufferFromCMPhotoImageType;
    v90 = 0;
    v91 = 0;
    goto LABEL_128;
  }

  switch(a3)
  {
    case 1:
      v224 = 0;
      v133 = v218;
      v228.origin.x = OUTLINED_FUNCTION_22_0();
      CGRectIsNull(v228);
      OUTLINED_FUNCTION_21();
      _computeMinimumBlockPSNRForPixelBuffer(v134, v135, v136, v137, v138, v139, v140, a5, &v224, v171, v179, v187, v195, v202, v208, value, v215, v216, v217, v218, pixelBuffer, v220, v221, v222, v223, v224, v225, v226, v227);
      if (v141)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v141 = FigSignalErrorAtGM();
LABEL_154:
        v89 = v141;
        v91 = 0;
        goto LABEL_157;
      }

      if (a7)
      {
        v141 = CMPhotoCFDictionarySetDouble(a7, @"Edges", *&v224);
        if (v141)
        {
          goto LABEL_154;
        }
      }

      if (!a6)
      {
        goto LABEL_107;
      }

      v91 = OUTLINED_FUNCTION_10_7(v141, v142, v143, v144, v145, v146, v147, v148, v169, v177, v185, v193, v200, v206, v212, value, v215, v216, v217, v218, pixelBuffer, v220, v221, v222, v223, SHIDWORD(v223));
      bzero(v91, v133);
      if (!v91 || (v157 = OUTLINED_FUNCTION_20_4(v149, v150, v151, v152, v153, v154, v155, v156, v170, v178, v186, v194, v201, v207, v213, value, v215, v216, v217, v218, pixelBuffer), CMPhotoComputePSNRForPixelBufferBlockBased(v157)))
      {
LABEL_155:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        v158 = FigSignalErrorAtGM();
        goto LABEL_156;
      }

      OUTLINED_FUNCTION_17_2();
      v132 = 1;
LABEL_102:
      v158 = _copyAndNormalizeArrayToPixelBuffer(v129, v130, v132, v131, PixelFormatType, Width, Height, v199, v168, v176, v184, v192);
      if (!v158)
      {
        if (!a7 || (v158 = CMPhotoCFDictionarySetDouble(a7, @"Min", *&v221), !v158) && (v158 = CMPhotoCFDictionarySetDouble(a7, @"Max", *&v220), !v158))
        {
LABEL_108:
          if (a3 != 8)
          {
            if (BYTE3(v215))
            {
              v158 = CMPhotoApplyMagmaMap(v217, v217);
              if (v158)
              {
                goto LABEL_156;
              }
            }
          }

          if (a6 && (v159 = HIDWORD(v215)) != 0)
          {
            if (v159 == CVPixelBufferGetPixelFormatType(v217))
            {
              v90 = 0;
            }

            else
            {
              v224 = 0;
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v90 = Mutable;
              if (!Mutable)
              {
                v89 = 4294950305;
                goto LABEL_128;
              }

              CMPhotoCFDictionarySetInt(Mutable, @"DestinationPixelFormat", SHIDWORD(v215));
              CGImageWithPixelBuffer = CMPhotoScaleAndRotateSessionTransformImage(0, v217, v90, &v224);
              if (CGImageWithPixelBuffer)
              {
LABEL_127:
                v89 = CGImageWithPixelBuffer;
                goto LABEL_128;
              }

              if (v217)
              {
                CFRelease(v217);
              }

              v217 = v224;
            }
          }

          else
          {
            v90 = 0;
            if (!a6)
            {
              v89 = 0;
              goto LABEL_128;
            }
          }

          if (HIDWORD(v222) == 4)
          {
            CGImageWithPixelBuffer = CMPhotoCreateCGImageWithPixelBuffer(*MEMORY[0x1E695E480], v217, 1, a6);
          }

          else
          {
            if (HIDWORD(v222) == 2)
            {
              v89 = 0;
              *a6 = v217;
              v217 = 0;
              goto LABEL_128;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_1();
            CGImageWithPixelBuffer = FigSignalErrorAtGM();
          }

          goto LABEL_127;
        }
      }

LABEL_156:
      v89 = v158;
LABEL_157:
      v90 = 0;
LABEL_128:
      if (value)
      {
        CFRelease(value);
      }

      if (v91)
      {
        free(v91);
      }

      if (v216)
      {
        CFRelease(v216);
      }

      if (v217)
      {
        CFRelease(v217);
      }

      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
      }

      if (v218)
      {
        CFRelease(v218);
      }

      if (v90)
      {
        CFRelease(v90);
      }

      return v89;
    case 2:
      OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
      OUTLINED_FUNCTION_21();
      CMPhotoComputeSSIMForPixelBuffer();
      if (!a6)
      {
        goto LABEL_107;
      }

      v91 = OUTLINED_FUNCTION_10_7(v106, v107, v108, v109, v110, v111, v112, v113, v163, v171, v179, v187, v195, v202, v208, value, v215, v216, v217, v218, pixelBuffer, v220, v221, v222, v223, SHIDWORD(v223));
      bzero(v91, a4);
      if (!v91)
      {
        goto LABEL_155;
      }

      v122 = OUTLINED_FUNCTION_20_4(v114, v115, v116, v117, v118, v119, v120, v121, v167, v175, v183, v191, v198, v205, v211, value, v215, v216, v217, v218, pixelBuffer);
      CMPhotoComputeSSIMForPixelBufferBlockBased(v122, v123, v124, v125, v126, v127);
      if (v128)
      {
        goto LABEL_155;
      }

      OUTLINED_FUNCTION_17_2();
      v132 = 2;
      goto LABEL_102;
    case 5:
      v31 = OUTLINED_FUNCTION_21_2(v18, v19, v20, v21, v22, v23, v24, v25, v163, v171, v179, v187, v195, v202, v208, value, v215, v216, v217, v218, pixelBuffer);
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35;
      }

      if (CMPhotoComputeWPSNRForPixelBuffer(v31, v32, v33, 0, v34, a5, v37, 0, 0))
      {
        goto LABEL_55;
      }

      if (!a6)
      {
        goto LABEL_107;
      }

      CVPixelBufferGetPixelFormatType(v216);
      OUTLINED_FUNCTION_19_2();
      if (!v36)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_29_0();
      if (v46 == v47)
      {
        OUTLINED_FUNCTION_7_5();
        do
        {
          OUTLINED_FUNCTION_13_5();
        }

        while (v52 != v48);
        OUTLINED_FUNCTION_12_0(v49, v50, v51, vdupq_n_s32(v48), xmmword_1A5AAD040);
      }

      if (Width - v45 < 1)
      {
        v104 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_7_5();
        do
        {
          OUTLINED_FUNCTION_13_5();
        }

        while (v103 != v99);
        v104 = COERCE_UNSIGNED_INT(OUTLINED_FUNCTION_12_0(v100, v101, v102, vdupq_n_s32(v99), xmmword_1A5AAD040));
      }

      v81 = OUTLINED_FUNCTION_5_7(v38, v39, v40, v41, v42, v43, v44, v104, v164, v172, v180, v188, v196, v203, v209, value, v215, v216);
      v85 = 5;
      goto LABEL_86;
    case 6:
      if (a6)
      {
        v72 = &v216;
      }

      else
      {
        v72 = 0;
      }

      if (CMPhotoComputePSNRHVSForPixelBuffer(pixelBuffer, v218, 0, HIDWORD(v223), a5, v72))
      {
        goto LABEL_50;
      }

      if (!a6)
      {
        goto LABEL_107;
      }

      CVPixelBufferGetPixelFormatType(v216);
      OUTLINED_FUNCTION_19_2();
      if (!v36)
      {
LABEL_50:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        goto LABEL_56;
      }

      if (Width / SHIDWORD(v223) <= 1)
      {
        v80 = 1;
      }

      else
      {
        v80 = Width / SHIDWORD(v223);
      }

      v81 = OUTLINED_FUNCTION_5_7(v73, v74, v75, v76, v77, v78, v79, v80, v163, v171, v179, v187, v195, v202, v208, value, v215, v216);
      v85 = 6;
LABEL_86:
      PixelBufferFromCMPhotoImageType = _copyAndNormalizePixelBufferToPixelBuffer(v81, v82, v85, v83, PixelFormatType, Width, Height, v84, v166, v174, v182, v190);
      if (PixelBufferFromCMPhotoImageType)
      {
        goto LABEL_71;
      }

      if (!a7)
      {
        goto LABEL_107;
      }

      PixelBufferFromCMPhotoImageType = CMPhotoCFDictionarySetDouble(a7, @"Min", *&v221);
      if (PixelBufferFromCMPhotoImageType)
      {
        goto LABEL_71;
      }

      v105 = CMPhotoCFDictionarySetDouble(a7, @"Max", *&v220);
      v90 = 0;
      if (!v105)
      {
        v91 = 0;
        goto LABEL_108;
      }

      v89 = v105;
      v91 = 0;
      goto LABEL_128;
    case 7:
      v53 = OUTLINED_FUNCTION_21_2(v18, v19, v20, v21, v22, v23, v24, v25, v163, v171, v179, v187, v195, v202, v208, value, v215, v216, v217, v218, pixelBuffer);
      if (v36)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57;
      }

      if (CMPhotoComputeMSEForPixelBuffer(v53, v54, v55, 0, v56, a5, v58))
      {
        goto LABEL_55;
      }

      if (!a6)
      {
        goto LABEL_107;
      }

      CVPixelBufferGetPixelFormatType(v216);
      OUTLINED_FUNCTION_19_2();
      if (!v36)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_29_0();
      if (v46 == v47)
      {
        OUTLINED_FUNCTION_7_5();
        do
        {
          OUTLINED_FUNCTION_13_5();
        }

        while (v71 != v67);
        OUTLINED_FUNCTION_12_0(v68, v69, v70, vdupq_n_s32(v67), xmmword_1A5AAD040);
      }

      if (Width - v66 < 1)
      {
        v98 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_7_5();
        do
        {
          OUTLINED_FUNCTION_13_5();
        }

        while (v97 != v93);
        v98 = COERCE_UNSIGNED_INT(OUTLINED_FUNCTION_12_0(v94, v95, v96, vdupq_n_s32(v93), xmmword_1A5AAD040));
      }

      v81 = OUTLINED_FUNCTION_5_7(v59, v60, v61, v62, v63, v64, v65, v98, v165, v173, v181, v189, v197, v204, v210, value, v215, v216);
      v85 = 7;
      goto LABEL_86;
    case 8:
      if (a4)
      {
        CMPhotoCFDictionaryGetFloatIfPresent();
        CMPhotoCFDictionaryGetFloatIfPresent();
        CMPhotoCFDictionaryGetFloatIfPresent();
        CMPhotoCFDictionaryGetIntIfPresent();
        v26.n128_u32[0] = 0;
        v27.n128_u32[0] = 0;
        v28.n128_u32[0] = 0;
      }

      else
      {
        v28.n128_u64[0] = 0;
        v27.n128_u64[0] = 0;
        v26.n128_u64[0] = 0;
      }

      v224 = 0;
      v225 = 0;
      LODWORD(v226) = 0;
      if (a6)
      {
        v86 = &v216;
      }

      else
      {
        v86 = 0;
      }

      if (CMPhotoComputeFLIPForPixelBufferWithPooling(pixelBuffer, v218, BYTE3(v215), v86, &v224, 0, &value, v26, v27, v28))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1();
        goto LABEL_56;
      }

      if (a5)
      {
        *a5 = *&v225;
      }

      if (a7)
      {
        v87 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9C0]);
        for (i = 0; i != 20; i += 4)
        {
          FigCFArrayAppendDouble();
        }

        CFDictionaryAddValue(a7, @"FlipWeightedPercentiles", v87);
        if (v87)
        {
          CFRelease(v87);
        }

        PixelBufferFromCMPhotoImageType = CMPhotoCFDictionarySetDouble(a7, @"Min", *&v224);
        if (PixelBufferFromCMPhotoImageType)
        {
          goto LABEL_71;
        }

        PixelBufferFromCMPhotoImageType = CMPhotoCFDictionarySetDouble(a7, @"Max", *&v226);
        if (PixelBufferFromCMPhotoImageType)
        {
          goto LABEL_71;
        }
      }

      if (a6)
      {
        v92 = v216;
        v216 = 0;
        v217 = v92;
      }

LABEL_107:
      v91 = 0;
      goto LABEL_108;
    default:
      goto LABEL_55;
  }
}

uint64_t _copyAndNormalizePixelBufferToPixelBuffer(__CVBuffer *a1, CVPixelBufferRef *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, double *a11, double *a12)
{
  if (a1 && a2)
  {
    CMPhotoGetBitDepthForPixelFormat(a5);
    if ((a3 - 1) > 6)
    {
      v18 = 2.22507386e-308;
    }

    else
    {
      v18 = dbl_1A5AB0898[a3 - 1];
    }

    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(a5);
    MaxSNRThatMakesSense = _findMaxSNRThatMakesSense(a3, BitDepthForPixelFormat);
    OUTLINED_FUNCTION_21();
    result = CMPhotoSurfacePoolCreatePixelBuffer(v21, v22, v23, v24, v25, v26, v27, 1, 64, 0, a2);
    if (result)
    {
      return result;
    }

    v62 = a3;
    v63 = a7;
    v64 = a8;
    v29 = OUTLINED_FUNCTION_7_1();
    CVPixelBufferLockBaseAddress(v29, v30);
    CVPixelBufferLockBaseAddress(*a2, 0);
    v31 = OUTLINED_FUNCTION_7_1();
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v31, v32);
    v33 = OUTLINED_FUNCTION_7_1();
    v67 = CVPixelBufferGetBytesPerRowOfPlane(v33, v34) >> 2;
    v35 = CVPixelBufferGetBaseAddressOfPlane(*a2, 0);
    v36 = CVPixelBufferGetBaseAddressOfPlane(*a2, 1uLL);
    v37 = CVPixelBufferGetBaseAddressOfPlane(*a2, 2uLL);
    v65 = a2;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
    if (CVPixelBufferGetHeight(a1))
    {
      v38 = 0;
      v39 = BaseAddressOfPlane;
      do
      {
        if (CVPixelBufferGetWidth(a1))
        {
          v40 = 0;
          do
          {
            v41 = *&v39[4 * v40];
            v42 = *a12;
            if (*a12 < v41)
            {
              v42 = *&v39[4 * v40];
            }

            *a12 = v42;
            if (*a11 <= v41)
            {
              v41 = *a11;
            }

            *a11 = v41;
            ++v40;
          }

          while (CVPixelBufferGetWidth(a1) > v40);
        }

        ++v38;
        v39 += 4 * v67;
      }

      while (CVPixelBufferGetHeight(a1) > v38);
    }

    if (!a4)
    {
      v44 = v64;
      v48 = v65;
      v45 = v63;
      v46 = a9;
LABEL_28:
      if (v45)
      {
        v50 = 0;
        v51 = 4 * (BytesPerRowOfPlane >> 2);
        do
        {
          if (v50 / a10 >= v46)
          {
            v52 = v46 - 1;
          }

          else
          {
            v52 = v50 / a10;
          }

          if (a6)
          {
            v53 = 0;
            v54 = &BaseAddressOfPlane[4 * v52 * v67];
            do
            {
              v55 = v53 / a10;
              if (v53 / a10 >= v44)
              {
                v55 = v44 - 1;
              }

              v56 = *&v54[4 * v55];
              if (v18 >= v56)
              {
                v56 = v18;
              }

              if (MaxSNRThatMakesSense <= v56)
              {
                v56 = MaxSNRThatMakesSense;
              }

              v57 = (v56 - v18) / (MaxSNRThatMakesSense - v18);
              v58 = 1.0 - v57;
              v35[v53] = v58;
              v36[v53] = v58;
              v37[v53++] = v58;
            }

            while (a6 != v53);
          }

          ++v50;
          v37 = (v37 + v51);
          v36 = (v36 + v51);
          v35 = (v35 + v51);
        }

        while (v50 != v45);
      }

      v59 = OUTLINED_FUNCTION_7_1();
      CVPixelBufferUnlockBaseAddress(v59, v60);
      CVPixelBufferUnlockBaseAddress(*v48, 0);
      return 0;
    }

    v43 = *a11;
    v45 = v63;
    v44 = v64;
    v46 = a9;
    if (v62 == 7)
    {
      v49 = 4.0;
    }

    else
    {
      if (v62 != 2)
      {
        v47 = fmax(v43, 10.0);
        if (v62 == 1)
        {
          v18 = v47;
        }

        else
        {
          v18 = *a11;
        }

        goto LABEL_27;
      }

      v49 = 0.1;
    }

    v18 = fmax(v43, v49);
LABEL_27:
    v48 = v65;
    MaxSNRThatMakesSense = _limitMaxSNR(v62, *a12);
    goto LABEL_28;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

__CFDictionary *CMPhotoCompareCopySupportedMetricList()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = 0;
    while (1)
    {
      v2 = dword_1A5AB0880[v1];
      Int = CMPhotoCFNumberCreateInt(v2);
      v4 = CMPhotoCompareMethodToStringCopy(v2);
      v5 = v4;
      if (Int)
      {
        if (v4)
        {
          break;
        }
      }

      if (Int)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (v5)
      {
        CFRelease(v5);
      }

      if (++v1 == 6)
      {
        return Mutable;
      }
    }

    CFDictionarySetValue(Mutable, Int, v4);
LABEL_7:
    CFRelease(Int);
    goto LABEL_8;
  }

  return Mutable;
}

void _computePSNRForPlane(__CVBuffer *a1, unint64_t *a2, __CVBuffer *a3, unint64_t *a4, unsigned int a5, double *a6, double *a7)
{
  v8 = a6;
  v9 = 0.0;
  if (a5 > 2)
  {
    v25 = 0.0;
    if (a6)
    {
      goto LABEL_87;
    }
  }

  else
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
    IsBayer14Bits = CMPhotoPixelFormatIsBayer14Bits(PixelFormatType);
    v19 = 16 - BitDepthForPixelFormat;
    v73 = BitDepthForPixelFormat;
    if (BitDepthForPixelFormat <= 8)
    {
      v19 = 0;
    }

    if (IsBayer14Bits)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = PixelFormatType == 1651847472;
    }

    if (_ZF)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    v22 = a5 != 0;
    v71 = a5 == 2;
    v74 = 0;
    if (CMPhotoPixelFormatIsSubsampled(PixelFormatType, &v74, &v74 + 1, 0, 0) || !BytesPerPixelForPixelFormat || !v73)
    {
LABEL_19:
      v25 = 0.0;
      v8 = a6;
      if (!a6)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    if (a5)
    {
      if (v74)
      {
        v23 = *a2;
        if ((*a2 | *a4))
        {
          goto LABEL_19;
        }

        a2[2] = (a2[2] + 1) >> 1;
        *a2 = v23 >> 1;
        *a4 = (*a4 + 1) >> 1;
      }

      if (HIBYTE(v74))
      {
        v24 = a2[1];
        if ((v24 | a4[1]))
        {
          goto LABEL_19;
        }

        a2[3] = (a2[3] + 1) >> 1;
        a2[1] = v24 >> 1;
        a4[1] = (a4[1] + 1) >> 1;
      }
    }

    v70 = a7;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a5 != 0);
    v27 = CVPixelBufferGetBytesPerRowOfPlane(a3, v22);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v22);
    v29 = CVPixelBufferGetBaseAddressOfPlane(a3, v22);
    v30 = a2[3];
    if (v30)
    {
      v31 = 0;
      v32 = &v29[((*a4 << v22) + v71) * BytesPerPixelForPixelFormat + a4[1] * v27];
      v33 = &BaseAddressOfPlane[((*a2 << v22) + v71) * BytesPerPixelForPixelFormat + a2[1] * BytesPerRowOfPlane];
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      while (!a2[2])
      {
LABEL_56:
        v33 += BytesPerRowOfPlane;
        v32 += v27;
        if (++v31 == v30)
        {
          goto LABEL_59;
        }
      }

      v37 = 0;
      v38 = a2[2];
      while (1)
      {
        v39 = v37 << v22;
        if (BytesPerPixelForPixelFormat == 1)
        {
          break;
        }

        if (PixelFormatType != 1278226536 && PixelFormatType != 1380411457 && PixelFormatType != 1647719528 && PixelFormatType != 1651926376 && PixelFormatType != 1751410032 && PixelFormatType != 1751527984 && PixelFormatType != 1751411059)
        {
          v40 = *&v33[2 * v39] >> v21;
          v41 = *&v32[2 * v39] >> v21;
          goto LABEL_28;
        }

        _H1 = *&v33[2 * v39] - *&v32[2 * v39];
        __asm { FCVT            D1, H1 }

LABEL_50:
        v53 = _D1 * _D1;
        if (!v31 || v30 - 1 == v31 || !v37 || v38 == 1)
        {
          v36 = v36 + v53;
          v35 = v35 + 1.0;
        }

        v34 = v34 + v53;
        ++v37;
        if (!--v38)
        {
          goto LABEL_56;
        }
      }

      v40 = v33[v39];
      v41 = v32[v39];
LABEL_28:
      _D1 = (v40 - v41);
      goto LABEL_50;
    }

    v36 = 0.0;
    v35 = 0.0;
    v34 = 0.0;
LABEL_59:
    if (PixelFormatType == 1278226536 || PixelFormatType == 1380411457 || PixelFormatType == 1647719528 || PixelFormatType == 1651926376 || PixelFormatType == 1751410032 || PixelFormatType == 1751411059 || PixelFormatType == 1751527984)
    {
      v60 = 1.0;
    }

    else
    {
      v60 = ~(-1 << v73);
    }

    a7 = v70;
    v8 = a6;
    if (v34 == 0.0)
    {
      v25 = INFINITY;
    }

    else
    {
      v61 = (a2[2] * v30);
      v62 = log10(v60);
      v63 = log10(v34 / v61);
      v64 = OUTLINED_FUNCTION_3_7(v63);
      v25 = v64 + v62 * v65;
    }

    if (v36 != 0.0)
    {
      v66 = log10(v60);
      v67 = log10(v36 / v35);
      v68 = OUTLINED_FUNCTION_3_7(v67);
      v9 = v68 + v66 * v69;
      if (!a6)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    v9 = INFINITY;
    if (a6)
    {
LABEL_87:
      *v8 = v25;
    }
  }

LABEL_88:
  if (a7)
  {
    *a7 = v9;
  }
}

void _computePSNRForl10r(__CVBuffer *a1, void *a2, __CVBuffer *a3, void *a4, double *a5, double *a6)
{
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(PixelFormatType);
  v17 = 0.0;
  v18 = 0.0;
  if (!BytesPerPixelForPixelFormat || !BitDepthForPixelFormat)
  {
LABEL_21:
    if (!a5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v20 = CVPixelBufferGetBytesPerRow(a3);
  v21 = a2[3];
  if (!v21)
  {
    v17 = INFINITY;
    v18 = INFINITY;
    if (!a5)
    {
      goto LABEL_23;
    }

LABEL_22:
    *a5 = v18;
    goto LABEL_23;
  }

  v22 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  do
  {
    if (a2[2])
    {
      v26 = 0;
      v27 = a2[2];
      do
      {
        v28 = *&BaseAddress[4 * v26 + *a2 * BytesPerPixelForPixelFormat + a2[1] * BytesPerRow];
        v29 = *&v13[4 * v26 + *a4 * BytesPerPixelForPixelFormat + a4[1] * v20];
        v30 = vsub_s32(vand_s8(vshl_u32(vdup_n_s32(v28), 0xFFFFFFF6FFFFFFECLL), 0x300000003), vand_s8(vshl_u32(vdup_n_s32(v29), 0xFFFFFFF6FFFFFFECLL), 0x300000003));
        v31.i64[0] = v30.i32[0];
        v31.i64[1] = v30.i32[1];
        v32 = vcvtq_f64_s64(v31);
        v33 = ((v28 & 0x3FF) - (v29 & 0x3FF)) * ((v28 & 0x3FF) - (v29 & 0x3FF)) + vaddvq_f64(vmulq_f64(v32, v32));
        if (!v22 || v21 - 1 == v22 || !v26 || v27 == 1)
        {
          v25 = v25 + v33;
          v24 = v24 + 3.0;
        }

        v23 = v23 + v33;
        ++v26;
        --v27;
      }

      while (v27);
    }

    ++v22;
  }

  while (v22 != v21);
  if (v23 == 0.0)
  {
    v18 = INFINITY;
  }

  else
  {
    v34 = (a2[2] * v21) * 3.0;
    v35 = log10(~(-1 << BitDepthForPixelFormat));
    v36 = log10(v23 / v34);
    v37 = OUTLINED_FUNCTION_3_7(v36);
    v18 = v37 + v35 * v38;
  }

  if (v25 == 0.0)
  {
    v17 = INFINITY;
    goto LABEL_21;
  }

  v39 = log10(~(-1 << BitDepthForPixelFormat));
  v40 = log10(v25 / v24);
  v41 = OUTLINED_FUNCTION_3_7(v40);
  v17 = v41 + v39 * v42;
  if (a5)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (a6)
  {
    *a6 = v17;
  }
}

uint64_t CMPhotoComputePSNRForPixelBufferBlockBased_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoComputePSNRForPixelBufferBlockBased_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoComputePSNRForPixelBufferBlockBased_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getPixelBufferFromCMPhotoImageType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getPixelBufferFromCMPhotoImageType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyAndNormalizeArrayToPixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _copyAndNormalizeArrayToPixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _createMonochromeBufferFromRGB_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a3 = result;
  return result;
}

uint64_t _createMonochromeBufferFromRGB_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _extractRGBComponentAndCopyIntoMonochromeBuffer_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t _vtTransferHelperForWorkaround(uint64_t a1, int a2, int a3, int a4, __CVBuffer *a5, __CVBuffer *a6)
{
  pixelTransferSessionOut = 0;
  if (!a5 || !a6)
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
LABEL_15:
    v16 = v12;
    v13 = 0;
    goto LABEL_9;
  }

  v12 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
  if (v12)
  {
    goto LABEL_15;
  }

  v12 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
  if (v12)
  {
    goto LABEL_15;
  }

  v13 = CVBufferCopyAttachment(a6, *MEMORY[0x1E6965D70], 0);
  v14 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DB8], v13);
  if (!v14)
  {
    v15 = pixelTransferSessionOut;
    CMPhotoGetPixelBufferSize(a5);
    CMPhotoGetPixelBufferSize(a6);
    v14 = CMPhotoVTPixelTransferSetHWAndSWAndGPUProperties(v15, a1, a2, 0, a3, a4, 0);
    if (!v14)
    {
      v14 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a5, a6);
    }
  }

  v16 = v14;
LABEL_9:
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v16;
}

uint64_t _convert8bitsRAWTo8BitsReadableFormat(uint64_t a1, int a2, int a3, CVPixelBufferRef pixelBuffer, __CVBuffer *a5, int a6)
{
  v32 = 0;
  pixelBuffera = 0;
  __n = 0;
  if (!pixelBuffer || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    goto LABEL_33;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v13 = CVPixelBufferGetPixelFormatType(a5);
  CMPhotoGetPixelBufferCLAP(pixelBuffer, 0, 0, &__n, &v32);
  v18 = PixelFormatType == 1650942776 || PixelFormatType == 1651925816 || PixelFormatType == 1652056888 || PixelFormatType == 1734501176 || PixelFormatType == 1735549752 || PixelFormatType == 1919378232;
  if (!v18 || (v13 != 875704422 ? (v19 = v13 == 1278226488) : (v19 = 1), !v19 ? (v20 = v13 == 1111970369) : (v20 = 1), !v20))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
LABEL_33:
    PixelBufferHelper = FigSignalErrorAtGM();
    goto LABEL_34;
  }

  PixelBufferHelper = _vtWorkaroundCreatePixelBufferHelper(a6, 1278226488, __n, v32, 64, &pixelBuffera);
  if (!PixelBufferHelper)
  {
    v30 = a6;
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    CVPixelBufferLockBaseAddress(pixelBuffera, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    v24 = CVPixelBufferGetBytesPerRow(pixelBuffera);
    v25 = CVPixelBufferGetBaseAddress(pixelBuffera);
    if (v32)
    {
      v26 = v25;
      for (i = 0; i < v32; ++i)
      {
        memcpy(v26, BaseAddress, __n);
        v26 += v24;
        BaseAddress += BytesPerRow;
      }
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CVPixelBufferUnlockBaseAddress(pixelBuffera, 0);
    PixelBufferHelper = _vtTransferHelperForWorkaround(a1, a2, a3, v30, pixelBuffera, a5);
  }

LABEL_34:
  v28 = PixelBufferHelper;
  if (pixelBuffera)
  {
    CFRelease(pixelBuffera);
  }

  return v28;
}

uint64_t _directPixelBufferCopy(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  result = 4294950306;
  if (a1 && a2)
  {
    if (a3 && a4)
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_17();
      CVPixelBufferLockBaseAddress(v13, v14);
      v15 = OUTLINED_FUNCTION_5();
      CVPixelBufferLockBaseAddress(v15, v16);
      if (CVPixelBufferIsPlanar(a1))
      {
        v17 = OUTLINED_FUNCTION_17();
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v17, v18);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a1);
      }

      v20 = BytesPerRowOfPlane;
      if (CVPixelBufferIsPlanar(a1))
      {
        v21 = OUTLINED_FUNCTION_17();
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v21, v22);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a1);
      }

      v24 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(a2))
      {
        v25 = OUTLINED_FUNCTION_5();
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(v25, v26);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
      }

      v28 = BytesPerRow;
      if (CVPixelBufferIsPlanar(a2))
      {
        v29 = OUTLINED_FUNCTION_5();
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(v29, v30);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a2);
      }

      v32 = BaseAddress;
      if (a3)
      {
        if (a6)
        {
          v33 = 0;
          do
          {
            if (a5)
            {
              v34 = &BaseAddress[v33 * v28];
              v35 = a5;
              v36 = &v24[v33 * v20];
              do
              {
                v37 = *v36;
                v36 += 2;
                *v34 = v37 << a3;
                v34 += 2;
                --v35;
              }

              while (v35);
            }

            ++v33;
          }

          while (v33 != a6);
        }
      }

      else if (a4)
      {
        if (a6)
        {
          v38 = 0;
          do
          {
            if (a5)
            {
              v39 = &BaseAddress[v38 * v28];
              v40 = a5;
              v41 = &v24[v38 * v20];
              do
              {
                v42 = *v41;
                v41 += 2;
                *v39 = v42 & a4;
                v39 += 2;
                --v40;
              }

              while (v40);
            }

            ++v38;
          }

          while (v38 != a6);
        }
      }

      else
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
        BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
        if (a6)
        {
          v45 = BytesPerPixelForPixelFormat * a5;
          do
          {
            memcpy(v32, v24, v45);
            v24 += v20;
            v32 += v28;
            --a6;
          }

          while (a6);
        }
      }

      v46 = OUTLINED_FUNCTION_17();
      CVPixelBufferUnlockBaseAddress(v46, v47);
      v48 = OUTLINED_FUNCTION_5();
      CVPixelBufferUnlockBaseAddress(v48, v49);
      CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t _directPixelBufferCopyForMonochrome16(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, uint64_t a3, uint64_t a4)
{
  result = 4294950306;
  if (pixelBuffer && a2)
  {
    if ((CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226488 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226736 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226738 || CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226742) && (CVPixelBufferGetPixelFormatType(a2) == 1278226488 || CVPixelBufferGetPixelFormatType(a2) == 1278226736 || CVPixelBufferGetPixelFormatType(a2) == 1278226738 || CVPixelBufferGetPixelFormatType(a2) == 1278226742) && ((v9 = CVPixelBufferGetPixelFormatType(pixelBuffer), BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v9), v11 = CVPixelBufferGetPixelFormatType(a2), v12 = CMPhotoGetBitDepthForPixelFormat(v11), BitDepthForPixelFormat >= 9) ? (v13 = v12 >= 9) : (v13 = 0), v13))
    {
      v14 = v12;
      v15 = OUTLINED_FUNCTION_17();
      CVPixelBufferLockBaseAddress(v15, v16);
      v17 = OUTLINED_FUNCTION_5();
      CVPixelBufferLockBaseAddress(v17, v18);
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        v19 = OUTLINED_FUNCTION_17();
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v19, v20);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
      }

      v22 = BytesPerRowOfPlane;
      if (CVPixelBufferIsPlanar(pixelBuffer))
      {
        v23 = OUTLINED_FUNCTION_17();
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v23, v24);
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddress(pixelBuffer);
      }

      v26 = BaseAddressOfPlane;
      if (CVPixelBufferIsPlanar(a2))
      {
        v27 = OUTLINED_FUNCTION_5();
        BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(v27, v28);
      }

      else
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
      }

      v30 = BytesPerRow;
      v54 = v14;
      v31 = 16 - v14;
      if (CVPixelBufferIsPlanar(a2))
      {
        v32 = OUTLINED_FUNCTION_5();
        BaseAddress = CVPixelBufferGetBaseAddressOfPlane(v32, v33);
      }

      else
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a2);
      }

      v35 = BaseAddress;
      v36 = -1 << v31;
      if (v54 <= BitDepthForPixelFormat)
      {
        if (v54 >= BitDepthForPixelFormat)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
          BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
          if (a4)
          {
            v49 = BytesPerPixelForPixelFormat * a3;
            do
            {
              memcpy(v35, v26, v49);
              v26 += v22;
              v35 += v30;
              --a4;
            }

            while (a4);
          }
        }

        else if (a4)
        {
          v42 = 0;
          do
          {
            if (a3)
            {
              v43 = &BaseAddress[v42 * v30];
              v44 = a3;
              v45 = &v26[v42 * v22];
              do
              {
                v46 = *v45;
                v45 += 2;
                *v43 = v46 & v36;
                v43 += 2;
                --v44;
              }

              while (v44);
            }

            ++v42;
          }

          while (v42 != a4);
        }
      }

      else if (a4)
      {
        v37 = 0;
        do
        {
          if (a3)
          {
            v38 = &BaseAddress[v37 * v30];
            v39 = a3;
            v40 = &v26[v37 * v22];
            do
            {
              v41 = *v40;
              v40 += 2;
              *v38 = ((((~(-1 << (v54 - BitDepthForPixelFormat)) << (16 - (v54 - BitDepthForPixelFormat))) & (-1 << (16 - BitDepthForPixelFormat)) & v41) >> BitDepthForPixelFormat) | (-1 << (16 - BitDepthForPixelFormat)) & v41) & v36;
              v38 += 2;
              --v39;
            }

            while (v39);
          }

          ++v37;
        }

        while (v37 != a4);
      }

      v50 = OUTLINED_FUNCTION_17();
      CVPixelBufferUnlockBaseAddress(v50, v51);
      v52 = OUTLINED_FUNCTION_5();
      CVPixelBufferUnlockBaseAddress(v52, v53);
      CMPhotoRemoveAndPropagateColorPropertiesFromSourceBuffer(pixelBuffer, a2);
      return 0;
    }

    else
    {
      return 4294950306;
    }
  }

  return result;
}

uint64_t _convertBGRAandRGBA(__CVBuffer *a1, __CVBuffer *a2)
{
  v2 = 4294950306;
  if (a1 && a2)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v6 = CVPixelBufferGetPixelFormatType(a2);
    v7 = PixelFormatType == 1380401729 || PixelFormatType == 1111970369;
    if (v7 && (v6 != 1380401729 ? (v8 = v6 == 1111970369) : (v8 = 1), v8 && PixelFormatType != v6 && ((v9 = vcvtad_u64_f64(CMPhotoGetPixelBufferSize(a1)), v11 = vcvtad_u64_f64(v10), PixelBufferSize = CMPhotoGetPixelBufferSize(a2), v14 = vcvtad_u64_f64(v13), v9 == vcvtad_u64_f64(PixelBufferSize)) ? (v15 = v11 == v14) : (v15 = 0), v15)))
    {
      v16 = OUTLINED_FUNCTION_17();
      CVPixelBufferLockBaseAddress(v16, v17);
      v18 = OUTLINED_FUNCTION_5();
      CVPixelBufferLockBaseAddress(v18, v19);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      src.data = CVPixelBufferGetBaseAddress(a1);
      src.height = v11;
      src.width = v9;
      src.rowBytes = BytesPerRow;
      dest.data = CVPixelBufferGetBaseAddress(a2);
      dest.height = v11;
      dest.width = v9;
      dest.rowBytes = CVPixelBufferGetBytesPerRow(a2);
      *permuteMap = 50331906;
      v2 = 0;
      if (vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0))
      {
        v2 = 4294950304;
      }

      v21 = OUTLINED_FUNCTION_17();
      CVPixelBufferUnlockBaseAddress(v21, v22);
      v23 = OUTLINED_FUNCTION_5();
      CVPixelBufferUnlockBaseAddress(v23, v24);
    }

    else
    {
      return 4294950306;
    }
  }

  return v2;
}

uint64_t _convertBGRAToL565(__CVBuffer *a1, __CVBuffer *a2)
{
  v2 = 4294950306;
  if (a1 && a2 && CVPixelBufferGetPixelFormatType(a1) == 1111970369 && CVPixelBufferGetPixelFormatType(a2) == 1278555701)
  {
    v5 = vcvtad_u64_f64(CMPhotoGetPixelBufferSize(a1));
    v7 = vcvtad_u64_f64(v6);
    PixelBufferSize = CMPhotoGetPixelBufferSize(a2);
    v10 = vcvtad_u64_f64(v9);
    if (v5 == vcvtad_u64_f64(PixelBufferSize) && v7 == v10)
    {
      v12 = OUTLINED_FUNCTION_17();
      CVPixelBufferLockBaseAddress(v12, v13);
      v14 = OUTLINED_FUNCTION_5();
      CVPixelBufferLockBaseAddress(v14, v15);
      v16 = OUTLINED_FUNCTION_17();
      PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v16, v17, 0, 0, v18, v19, 0);
      if (PixelBufferDataPointers || (v21 = OUTLINED_FUNCTION_5(), PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v21, v22, 0, 0, v23, v24, 0), PixelBufferDataPointers))
      {
        v2 = PixelBufferDataPointers;
      }

      else
      {
        if (v7)
        {
          for (i = 0; i != v7; ++i)
          {
            if (v5)
            {
              v26 = 0;
              v27 = 0;
              v28 = v5;
              do
              {
                v29 = *v27++;
                v30 = ((v29 & 0xFC) + 4) >> 3;
                v31 = (((v29 >> 8) & 0xFE) + 2) >> 2;
                v32 = ((HIWORD(v29) & 0xFC) + 4) >> 3;
                if (v30 >= 0x1F)
                {
                  LOBYTE(v30) = 31;
                }

                if (v31 >= 0x3F)
                {
                  LOWORD(v31) = 63;
                }

                if (v32 >= 0x1F)
                {
                  LOWORD(v32) = 31;
                }

                *v26 = v30 | (32 * v31);
                v26[1] = ((v32 << 11) | (32 * v31)) >> 8;
                v26 += 2;
                --v28;
              }

              while (v28);
            }
          }
        }

        v2 = 0;
      }

      v33 = OUTLINED_FUNCTION_17();
      CVPixelBufferUnlockBaseAddress(v33, v34);
      v35 = OUTLINED_FUNCTION_5();
      CVPixelBufferUnlockBaseAddress(v35, v36);
    }
  }

  return v2;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_14(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_16(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_17(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_18(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_19(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_20(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_21(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_22(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_23(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_24(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_25(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_26(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_27(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_28(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_29(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_30(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_31(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_32(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_33(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_34(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_35(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_36(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_37(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_38(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_39(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_40(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_41(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_42(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_43(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_44(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_45(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_46(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_47(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_48(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelTransferWorkaround_cold_49(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _pixelBufferCopyForMonochromeAndMonochromeWithAlpha_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _pixelBufferCopyForMonochromeAndMonochromeWithAlpha_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _pixelBufferCopyForMonochromeAndMonochromeWithAlpha_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoVTPixelRotationWorkaround_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCodecSessionPool_CleanupTimerHandler(uint64_t a1)
{
  result = FigSimpleMutexLock();
  if (!result)
  {
    if (*(a1 + 152) == -1)
    {
      return FigSimpleMutexUnlock();
    }

    v9 = OUTLINED_FUNCTION_12_5();
    CodecSessionPool_PurgeSessionsWithCriteria((a1 + 48), _callback_CodecSessionPool_PurgeStaleSessions_CriteriaIsStale, &v9, 0);
    v9 = OUTLINED_FUNCTION_12_5();
    CodecSessionPool_PurgeSessionsWithCriteria((a1 + 88), _callback_CodecSessionPool_PurgeStaleSessions_CriteriaIsStale, &v9, 0);
    v3 = *(a1 + 56);
    if (v3 && CFArrayGetCount(v3))
    {
      v4 = 0;
    }

    else
    {
      v5 = *(a1 + 96);
      if (v5)
      {
        v4 = CFArrayGetCount(v5) == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    if (!*(a1 + 128))
    {
      v6 = 1;
      if (*(a1 + 16) != 0 || !v4)
      {
        goto LABEL_15;
      }

      dispatch_suspend(*(a1 + 136));
      *(a1 + 128) = 1;
    }

    v6 = 0;
LABEL_15:
    v7 = *(a1 + 176);
    if (v7 != 0 && v4)
    {
      [v7 unregisterBackgroundNotificationForContext:a1];
      [*(a1 + 176) releaseAssertionForContext:a1];
    }

    else
    {
      v8 = v6 ^ 1;
      if (!v7)
      {
        v8 = 1;
      }

      if ((v8 & 1) == 0)
      {
        [*(a1 + 176) takeAssertionUntilTime:OUTLINED_FUNCTION_14_4() forContext:a1];
        [*(a1 + 176) registerBackgroundNotificationHandlerForContext:a1 handler:*(a1 + 184)];
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t CMPhotoCodecSessionPoolFlush(uint64_t a1, char a2)
{
  v3 = a1;
  if (!a1)
  {
    OUTLINED_FUNCTION_1_9(&CMPhotoCodecSessionPoolGetDefault_onceToken);
    v3 = defaultPool;
    if (!defaultPool)
    {
      return 4294950305;
    }
  }

  v4 = FigSimpleMutexLock();
  if (v4)
  {
    return v4;
  }

  if ((a2 & 1) == 0)
  {
    if ((a2 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_9();
    v5 = CodecSessionPool_PurgeSessionsWithCriteria((v3 + 88), v9, 0, 0);
    if (!v5)
    {
      CodecSessionPool_MarkAllSessionsForNonReuse(v3 + 88);
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_9();
  v8 = CodecSessionPool_PurgeSessionsWithCriteria((v3 + 48), v7, 0, 0);
  if (v8)
  {
    v5 = v8;
    goto LABEL_7;
  }

  CodecSessionPool_MarkAllSessionsForNonReuse(v3 + 48);
  if ((a2 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = 0;
LABEL_7:
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t CodecSessionPool_MarkAllSessionsForNonReuse(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 8));
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
      result = CFDictionaryGetValue(*(a1 + 24), ValueAtIndex);
      if (result)
      {
        *(result + 49) = 1;
      }
    }
  }

  return result;
}

uint64_t CMPhotoCodecSessionPoolCreateEncoderSpecification(const __CFAllocator *a1, int a2, unsigned int a3, __CFDictionary **a4, CFMutableDictionaryRef *a5)
{
  Mutable = CFDictionaryCreateMutable(a1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v11 = Mutable;
  v12 = CFDictionaryCreateMutable(a1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v12)
  {
    v13 = *MEMORY[0x1E695E4D0];
    if (a2 == 1635135537 && a3 <= 1)
    {
      CFDictionarySetValue(v11, *MEMORY[0x1E6984268], *MEMORY[0x1E695E4D0]);
    }

    if (a3 == 2 || a3 == 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(v11, *MEMORY[0x1E6984270], v16);
    if (a3 == 2)
    {
      CFDictionarySetValue(v11, *MEMORY[0x1E6984288], v13);
    }

    if (a4)
    {
      *a4 = v11;
      v11 = 0;
    }

    if (a5)
    {
      *a5 = v12;
      v12 = 0;
    }

    v17 = 0;
    v18 = 0;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = 4294950305;
  }

  CFRelease(v11);
  v18 = v17;
LABEL_22:
  if (v12)
  {
    CFRelease(v12);
  }

  return v18;
}

uint64_t CMPhotoCodecSessionPoolCreateCompressionSession(CFTypeRef cf, uint64_t a2, int a3, int a4, int a5, char a6, char a7, char a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, _BYTE *a18)
{
  if (cf)
  {
    v25 = cf;
    supportedPropertyDictionaryOut = 0;
    session = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_9(&CMPhotoCodecSessionPoolGetDefault_onceToken);
    v25 = defaultPool;
    supportedPropertyDictionaryOut = 0;
    session = 0;
    if (!defaultPool)
    {
      v27 = 0;
      v39 = 4294950305;
      goto LABEL_23;
    }
  }

  if (!a15)
  {
    v27 = 0;
    v39 = 4294950306;
    goto LABEL_21;
  }

  if (!a17)
  {
    v27 = 0;
LABEL_20:
    v39 = 0;
    goto LABEL_21;
  }

  v26 = CFGetAllocator(v25);
  *bytes = *a2;
  *&bytes[13] = *(a2 + 13);
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  v60 = a9;
  v61 = a10;
  v62 = a11;
  v63 = a12;
  v64 = a13;
  v65 = a14;
  v27 = CFDataCreate(v26, bytes, 69);
  if (v27)
  {
    OUTLINED_FUNCTION_8_7();
    v36 = OUTLINED_FUNCTION_15_4(v28, v29, v30, v31, v32, v33, v34, v35, v49);
    if (!v36)
    {
      v37 = session;
      v38 = VTSessionCopySupportedPropertyDictionary(session, &supportedPropertyDictionaryOut);
      if (v38 == -12900 || !v38)
      {
LABEL_10:
        *a17 = v37;
        session = 0;
        if (a18)
        {
          v39 = 0;
          *a18 = 0;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v36 = CMPhotoCodecSessionPoolRecycleSession(v25, v37, 1);
      if (!v36)
      {
        v36 = CMPhotoCodecSessionPoolFlush(v25, 3);
        if (!v36)
        {
          OUTLINED_FUNCTION_8_7();
          v36 = OUTLINED_FUNCTION_15_4(v40, v41, v42, v43, v44, v45, v46, v47, v50);
          if (!v36)
          {
            v37 = session;
            goto LABEL_10;
          }
        }
      }
    }

    v39 = v36;
    goto LABEL_21;
  }

  v39 = 4294950305;
LABEL_21:
  if (supportedPropertyDictionaryOut)
  {
    CFRelease(supportedPropertyDictionaryOut);
  }

LABEL_23:
  if (session)
  {
    CFRelease(session);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v39;
}

uint64_t _callback_CreateCompressionSession(uint64_t a1, uint64_t a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  cf = 0;
  v2 = *a2;
  v3 = *(a2 + 32);
  EncoderSpecification = CMPhotoCodecSessionPoolCreateEncoderSpecification(*a2, *(a2 + 8), *(a2 + 36), &cf, &v13);
  if (EncoderSpecification)
  {
    v11 = EncoderSpecification;
  }

  else
  {
    valuePtr = v3;
    v5 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      v7 = *MEMORY[0x1E6966130];
      values = v5;
      keys[0] = v7;
      v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(v6);
      if (v8)
      {
        OUTLINED_FUNCTION_7_0();
        if (v10)
        {
          if (v9)
          {
            OUTLINED_FUNCTION_0_6();
          }

          v11 = VTTileCompressionSessionCreate();
          OUTLINED_FUNCTION_7_0();
          if (!v9)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v9)
          {
            OUTLINED_FUNCTION_0_6();
          }

          v11 = VTCompressionSessionCreateWithOptions();
          OUTLINED_FUNCTION_7_0();
          if (!v9)
          {
            goto LABEL_17;
          }
        }

        kdebug_trace();
LABEL_17:
        CFRelease(v8);
        goto LABEL_18;
      }
    }

    v11 = 4294950305;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v11;
}

uint64_t CMPhotoCodecSessionPoolCheckIfCompressionSessionReusable(CFDictionaryRef *a1, const void *a2, uint64_t a3, int a4, int a5, int a6, char a7, char a8, char a9, int a10, char a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, _BYTE *a16)
{
  v16 = 4294950306;
  if (a1 && a2)
  {
    v24 = CFGetAllocator(a1);
    *bytes = *a3;
    *&bytes[13] = *(a3 + 13);
    v33 = a4;
    v34 = a5;
    v35 = a6;
    v36 = a7;
    v37 = a8;
    v38 = a9;
    v39 = a10;
    v40 = a11;
    v41 = a12;
    v42 = a13;
    v43 = a14;
    v44 = a15;
    v25 = CFDataCreate(v24, bytes, 69);
    if (v25)
    {
      v26 = v25;
      v27 = FigSimpleMutexLock();
      if (v27)
      {
        v16 = v27;
      }

      else
      {
        Value = CFDictionaryGetValue(a1[9], a2);
        if (Value && Value[4])
        {
          v29 = FigCFEqual();
          FigSimpleMutexUnlock();
          v16 = 0;
          if (a16)
          {
            *a16 = v29;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_14();
          v16 = FigSignalErrorAtGM();
          FigSimpleMutexUnlock();
        }
      }

      CFRelease(v26);
    }

    else
    {
      return 4294950305;
    }
  }

  return v16;
}

uint64_t CMPhotoCodecSessionPoolSetDecompressionSessionAttachment(CFDictionaryRef *a1, const void *a2, const void *a3, const void *a4)
{
  if (!a3)
  {
    return 4294950306;
  }

  result = FigSimpleMutexLock();
  if (!result)
  {
    Value = CFDictionaryGetValue(a1[14], a2);
    if (Value)
    {
      v10 = Value;
      MutableCopyWithCFTypeCallbacks = Value[5];
      if (MutableCopyWithCFTypeCallbacks || (CFGetAllocator(a1), MutableCopyWithCFTypeCallbacks = FigCFDictionaryCreateMutableCopyWithCFTypeCallbacks(), (v10[5] = MutableCopyWithCFTypeCallbacks) != 0))
      {
        if (a4)
        {
          CFDictionarySetValue(MutableCopyWithCFTypeCallbacks, a3, a4);
        }

        else
        {
          CFDictionaryRemoveValue(MutableCopyWithCFTypeCallbacks, a3);
        }

        FigSimpleMutexUnlock();
        return 0;
      }

      else
      {
        return 4294950305;
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

uint64_t CMPhotoCodecSessionPoolCopyDecompressionSessionAttachments(CFDictionaryRef *a1, const void *a2, CFDictionaryRef *a3)
{
  if (!a3)
  {
    return 0;
  }

  result = FigSimpleMutexLock();
  if (!result)
  {
    Value = CFDictionaryGetValue(a1[14], a2);
    if (Value)
    {
      v8 = Value;
      if (Value[5])
      {
        v9 = CFGetAllocator(a1);
        Copy = CFDictionaryCreateCopy(v9, v8[5]);
      }

      else
      {
        Copy = 0;
      }

      FigSimpleMutexUnlock();
      result = 0;
      *a3 = Copy;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  return result;
}

CFMutableStringRef CMPhotoCodecSessionPool_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (Mutable)
  {
    v4 = OUTLINED_FUNCTION_5();
    CFStringAppendFormat(v4, v5, v6, a1);
    if (!FigSimpleMutexLock())
    {
      Count = CFArrayGetCount(*(a1 + 96));
      context = 0;
      CFDictionaryApplyFunction(*(a1 + 104), CodecSessionPool_GetIdleSessionCountApplier, &context);
      v8 = context;
      v27 = CFArrayGetCount(*(a1 + 120));
      v9 = OUTLINED_FUNCTION_5();
      CFStringAppendFormat(v9, v10, v11, Count, v8, v27);
      v12 = CFArrayGetCount(*(a1 + 56));
      context = 0;
      CFDictionaryApplyFunction(*(a1 + 64), CodecSessionPool_GetIdleSessionCountApplier, &context);
      v13 = context;
      v28 = CFArrayGetCount(*(a1 + 80));
      v14 = OUTLINED_FUNCTION_5();
      CFStringAppendFormat(v14, v15, v16, v12, v13, v28);
      v17 = OUTLINED_FUNCTION_12_5();
      v29 = *(a1 + 152);
      v26 = *(a1 + 32);
      v25 = *(a1 + 16);
      v30 = (v17 - *(a1 + 160)) / 1000000000.0 * 1000.0;
      v18 = OUTLINED_FUNCTION_5();
      CFStringAppendFormat(v18, v19, v20, v25, v26, v29, *&v30);
      FigSimpleMutexUnlock();
      v21 = OUTLINED_FUNCTION_5();
      CFStringAppendFormat(v21, v22, v23);
    }
  }

  return Mutable;
}

void CodecSessionPool_Destroy(CFTypeRef *a1)
{
  if (a1)
  {
    v7.length = CFArrayGetCount(a1[4]);
    v7.location = 0;
    CFArrayApplyFunction(a1[4], v7, CodecSessionPool_DestroyApplier_NotifyAndDestroyWaitingClients, a1);
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
      a1[4] = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      v8.length = CFArrayGetCount(v3);
      v8.location = 0;
      CFArrayApplyFunction(a1[1], v8, CodecSessionPool_DestroyApplier_DestroyGateway, a1);
      v4 = a1[1];
      if (v4)
      {
        CFRelease(v4);
        a1[1] = 0;
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v5 = a1[2];
    if (v5)
    {
      CFRelease(v5);
      a1[2] = 0;
    }

    v6 = a1[3];
    if (v6)
    {
      CFRelease(v6);
      a1[3] = 0;
    }
  }
}

uint64_t CodecSessionPool_PurgeSessionsWithCriteria(CFAllocatorRef *a1, unsigned int (*a2)(const void *, const void *, uint64_t), uint64_t a3, int a4)
{
  Count = CFArrayGetCount(a1[1]);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  Mutable = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v11 = Mutable;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[1], v13);
      Value = CFDictionaryGetValue(a1[3], ValueAtIndex);
      if (a2(ValueAtIndex, Value, a3) && v14)
      {
        CodecSessionPool_DestroyGatewayForSession(a1, ValueAtIndex);
        ++v12;
        if (a4)
        {
          v14 = 0;
        }
      }

      else
      {
        CFArrayAppendValue(v11, ValueAtIndex);
      }

      ++v13;
    }

    while (v9 != v13);
    v17 = a1[1];
    if (v17)
    {
      CFRelease(v17);
    }

    a1[1] = v11;
    if (v12 >= CFArrayGetCount(a1[4]))
    {
      v12 = CFArrayGetCount(a1[4]);
    }

    if (v12 >= 1)
    {
      do
      {
        v18 = CFArrayGetValueAtIndex(a1[4], 0);
        dispatch_semaphore_signal(v18[1]);
        CodecSessionPool_DequeueWaitingClient(a1, v18);
        --v12;
      }

      while (v12);
    }

    return 0;
  }

  return 4294950305;
}

uint64_t VTTileCompressionOutputCallback_Gateway_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_8(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_10_8(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_11_6(v8))
  {
    OUTLINED_FUNCTION_4_7("VTTileCompressionOutputCallback_Gateway");
    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_17_3();
  }

  return OUTLINED_FUNCTION_3_8();
}

uint64_t VTCompressionOutputCallback_Gateway_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_8(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_10_8(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_11_6(v8))
  {
    OUTLINED_FUNCTION_4_7("VTCompressionOutputCallback_Gateway");
    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_17_3();
  }

  return OUTLINED_FUNCTION_3_8();
}

uint64_t VTDecompressionOutputCallback_Gateway_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_8(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_10_8(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_11_6(v8))
  {
    OUTLINED_FUNCTION_4_7("VTDecompressionOutputCallback_Gateway");
    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_17_3();
  }

  return OUTLINED_FUNCTION_3_8();
}

uint64_t VTTileDecompressionOutputCallback_Gateway_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_8(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_10_8(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_11_6(v8))
  {
    OUTLINED_FUNCTION_4_7("VTTileDecompressionOutputCallback_Gateway");
    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_17_3();
  }

  return OUTLINED_FUNCTION_3_8();
}

uint64_t CMPhotoFindImageHeadroomWithCI(void *a1, _DWORD *a2, float a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  space = 0;
  cf = 0;
  memset(v27, 0, sizeof(v27));
  v7 = 4294950306;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v8 = CMPhotoCreatePixelBufferFromImage(*MEMORY[0x1E695E480], a1, &cf);
  if (v8)
  {
    goto LABEL_17;
  }

  v9 = [_MergedGlobals() contextWithOptions:MEMORY[0x1E695E0F8]];
  if (!v9 || (v10 = v9, (v11 = [off_1ED6F9C30() imageWithCVPixelBuffer:cf]) == 0))
  {
    ExtendedLinearized = 0;
LABEL_19:
    v7 = 4294950305;
    goto LABEL_10;
  }

  v12 = v11;
  v8 = CMPhotoCreateColorSpaceFromPixelBuffer(cf, &space, 0, 0);
  if (v8)
  {
LABEL_17:
    v7 = v8;
    ExtendedLinearized = 0;
    goto LABEL_10;
  }

  ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(space);
  v14 = [v12 imageByColorMatchingWorkingSpaceToColorSpace:ExtendedLinearized];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14;
  v16 = objc_alloc(off_1ED6F9C38());
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = [v16 initWithBitmapData:v27 width:1 height:1 bytesPerRow:32 format:off_1ED6F9C40[0]()];
  v18 = v17;
  [v17 setColorSpace:{objc_msgSend(v10, "workingColorSpace")}];
  v19 = off_1ED6F9C48[0]();
  [v15 extent];
  v20 = [(objc_class *)v19 vectorWithCGRect:?];
  v21 = _downScaleWithCI([v15 imageByApplyingFilter:@"CIMaximumComponent"], a3, a3);
  v25 = off_1ED6F9C50[0]();
  v26 = v20;
  [v10 startTaskToRender:objc_msgSend(v21 toDestination:"imageByApplyingFilter:withInputParameters:" error:{@"CIAreaMaximum", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v26, &v25, 1)), v17, 0}];
  v7 = 0;
  *a2 = v27[0];
LABEL_10:
  if (space)
  {
    CFRelease(space);
  }

  if (ExtendedLinearized)
  {
    CFRelease(ExtendedLinearized);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

uint64_t _findAverageBrightnessWithCI(void *a1, int a2, _DWORD *a3, float a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  cf = 0;
  memset(v32, 0, sizeof(v32));
  v9 = 4294950306;
  if (a1 && a3)
  {
    v10 = CMPhotoCreatePixelBufferFromImage(*MEMORY[0x1E695E480], a1, &cf);
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v11 = [_MergedGlobals() contextWithOptions:MEMORY[0x1E695E0F8]];
      if (v11 && (v12 = v11, (v13 = [(objc_class *)off_1ED6F9C30() imageWithCVPixelBuffer:cf]) != 0))
      {
        v14 = v13;
        v15 = MEMORY[0x1E695F100];
        if (a2)
        {
          v15 = MEMORY[0x1E695F178];
        }

        v16 = CGColorSpaceCreateWithName(*v15);
        v17 = [v14 imageByColorMatchingWorkingSpaceToColorSpace:v16];
        if (v17)
        {
          v18 = _downScaleWithCI(v17, a4, a4);
          if (v18)
          {
            v19 = [v18 imageByApplyingFilter:@"CIMaximumComponent"];
            if (v19)
            {
              v20 = v19;
              v21 = off_1ED6F9C48[0]();
              [v20 extent];
              v22 = [(objc_class *)v21 vectorWithCGRect:?];
              v30 = off_1ED6F9C50[0]();
              v31 = v22;
              v23 = [v20 imageByApplyingFilter:@"CIAreaAverage" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v31, &v30, 1)}];
              if (v23)
              {
                v24 = v23;
                v25 = objc_alloc(off_1ED6F9C38());
                if (v25)
                {
                  v26 = [v25 initWithBitmapData:v32 width:1 height:1 bytesPerRow:32 format:off_1ED6F9C40[0]()];
                  v27 = v26;
                  [v26 setColorSpace:{objc_msgSend(v12, "workingColorSpace")}];
                  [v12 startTaskToRender:v24 fromRect:v26 toDestination:0 atPoint:0.0 error:{0.0, 1.0, 1.0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
                  v9 = 0;
                  *a3 = v32[0];
                  if (!v16)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_14;
                }
              }
            }
          }
        }

        v9 = 4294950305;
        if (v16)
        {
LABEL_14:
          CFRelease(v16);
        }
      }

      else
      {
        v9 = 4294950305;
      }
    }
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

uint64_t CMPhotoTransferWithCI(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 4294950306;
  if (a1 && a2)
  {
    v6 = [_MergedGlobals() contextWithOptions:MEMORY[0x1E695E0F8]];
    if (v6 && (v7 = v6, (v8 = [off_1ED6F9C30() imageWithCVPixelBuffer:a1]) != 0))
    {
      [v7 render:v8 toCVPixelBuffer:a2];
      v5 = 0;
    }

    else
    {
      v5 = 4294950305;
    }
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t CMPhotoFindImageValueWithCI(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  pixelBuffer = 0;
  v9 = 4294950306;
  if (!a1 || !a4)
  {
    goto LABEL_28;
  }

  PixelBufferFromImage = CMPhotoCreatePixelBufferFromImage(*MEMORY[0x1E695E480], a1, &pixelBuffer);
  if (PixelBufferFromImage)
  {
    v9 = PixelBufferFromImage;
    v21 = 0;
    goto LABEL_24;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v12 = _MergedGlobals();
  v35 = off_1ED6F9C58[0]();
  v36[0] = [MEMORY[0x1E695DFB0] null];
  v13 = -[objc_class contextWithOptions:](v12, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1]);
  if (!v13 || (v14 = v13, (v15 = [(objc_class *)off_1ED6F9C30() imageWithCVPixelBuffer:pixelBuffer]) == 0))
  {
    v21 = 0;
    goto LABEL_30;
  }

  if (a2 <= 2)
  {
    v16 = v15;
    v17 = off_1E77A1F40[a2];
    if (a3 && CMPhotoPixelFormatContainsYCbCr(PixelFormatType))
    {
      v18 = CVBufferCopyAttachments(pixelBuffer, kCVAttachmentMode_ShouldPropagate);
      if (v18)
      {
        v19 = v18;
        CMPhotoGetMatrixFromPixelBufferAttachments(v18);
        if (FigCFEqual())
        {
          v20 = 709;
        }

        else if (FigCFEqual())
        {
          v20 = 2020;
        }

        else if (FigCFEqual())
        {
          v20 = 240;
        }

        else
        {
          v20 = 601;
        }

        CFRelease(v19);
      }

      else
      {
        v20 = 601;
      }

      v21 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965CE8], 0);
      IsFullRange = CMPhotoPixelFormatIsFullRange(PixelFormatType);
      v16 = [-[objc_class imageYCC444:matrix:fullRange:precision:colorSpace:](off_1ED6F9C30() imageYCC444:v16 matrix:v20 fullRange:IsFullRange != 0 precision:0 colorSpace:{v21), "imageByInsertingIntermediate:", 0}];
    }

    else
    {
      v21 = 0;
    }

    v23 = off_1ED6F9C48[0]();
    [v16 extent];
    v38 = CGRectInset(v37, -1.0, -1.0);
    v24 = [(objc_class *)v23 vectorWithCGRect:v38.origin.x, v38.origin.y, v38.size.width, v38.size.height];
    v33 = @"inputExtent";
    v34 = v24;
    v25 = [v16 imageByApplyingFilter:v17 withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
    if (v25)
    {
      v26 = v25;
      [v25 extent];
      [v14 render:v26 toBitmap:a4 rowBytes:16 bounds:off_1ED6F9C60() format:0 colorSpace:{v27, v28, v29, v30}];
      v9 = 0;
      goto LABEL_24;
    }

LABEL_30:
    v9 = 4294950305;
    goto LABEL_24;
  }

  v21 = 0;
  v9 = 4294950306;
LABEL_24:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_28:
  objc_autoreleasePoolPop(v8);
  return v9;
}

uint64_t CMPhotoScalingUtilitiesScaleBuffer_U8(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, double a9, double a10, double a11, double a12, _BYTE *a13)
{
  v78 = *MEMORY[0x1E69E9840];
  bzero(&v74, 0x218uLL);
  bzero(v72, 0x218uLL);
  v68 = 0;
  v66 = a2;
  v23 = 4294950306;
  if (a2 - 5 < 0xFFFFFFFC)
  {
    goto LABEL_34;
  }

  if (!a1)
  {
    goto LABEL_34;
  }

  v65 = a13;
  if (!a13)
  {
    goto LABEL_34;
  }

  v68 = 0;
  if (!a3)
  {
    goto LABEL_34;
  }

  if (!a4)
  {
    goto LABEL_34;
  }

  v68 = 0;
  if (!a6 || !a7)
  {
    goto LABEL_34;
  }

  v24 = a3 * v66;
  if (v24 > a5 || a6 * v66 > a8)
  {
LABEL_40:
    v68 = 0;
    goto LABEL_34;
  }

  v26 = CMPhotoScalingUtilitiesInitializeFilter(a3, a6, v72);
  if (v26 || (v26 = CMPhotoScalingUtilitiesInitializeFilter(a4, a7, &v74), v26))
  {
    v23 = v26;
    goto LABEL_40;
  }

  v27 = malloc_type_calloc(v24 * a7, 4uLL, 0x100004052888210uLL);
  v68 = v27;
  if (v27)
  {
    v62 = a3;
    v63 = a6;
    v64 = a8;
    v28 = 0;
    v29 = a9 * 0.5 + a12 + -0.5;
    v30 = a4 - 1;
    v67 = &v76;
    for (i = a7; i != v28; v51 = i)
    {
      v71 = &v62;
      v31 = v75;
      v32 = v74;
      v70 = llround((v29 + a9 * v28) * v75);
      v33 = v70 / v75;
      MEMORY[0x1EEE9AC00](v27);
      v35 = &v62 - ((v34 + 15) & 0xFFFFFFFF0);
      if (v34 >= 0x200)
      {
        v36 = 512;
      }

      else
      {
        v36 = v34;
      }

      bzero(&v62 - ((v34 + 15) & 0xFFFFFFFF0), v36);
      v38 = v74;
      if (v74 >= 1)
      {
        v39 = v33 + v32 / -2 + 1;
        v40 = v74;
        v41 = v35;
        do
        {
          v42 = v39 & ~(v39 >> 31);
          if (v42 >= v30)
          {
            v42 = v30;
          }

          *v41++ = a1 + v42 * a5;
          ++v39;
          --v40;
        }

        while (v40);
      }

      if (v24)
      {
        v43 = 0;
        v44 = v67[(v31 & ((v70 - v33 * v31) >> 31)) + v70 - v33 * v31];
        v45 = &v68[4 * v28 * v24];
        do
        {
          v46 = 0.0;
          if (v38)
          {
            v47 = v35;
            v48 = v44;
            v49 = v38;
            do
            {
              v50 = *v47++;
              LOBYTE(v37) = *(v50 + v43);
              v37 = LODWORD(v37);
              LODWORD(v50) = *v48++;
              v46 = v46 + (v37 * *&v50);
              --v49;
            }

            while (v49);
          }

          *v45++ = v46;
          ++v43;
        }

        while (v43 != v24);
      }

      ++v28;
    }

    v52 = 4 * v24;
    v53 = v68;
    v55 = v63;
    v54 = v64;
    v56 = v62;
    v57 = v66;
    v58 = v65;
    do
    {
      CMPhotoConvolveRowHorizontally_F_to_U8(v72, v57, v56, v53, v55, v58);
      v53 += v52;
      v58 += v54;
      --v51;
    }

    while (v51);
    v23 = 0;
  }

  else
  {
    v68 = 0;
    v23 = 4294950305;
  }

LABEL_34:
  v59 = v77;
  if (v77)
  {
    v77 = 0;
    free(v59);
  }

  v60 = v73;
  if (v73)
  {
    v73 = 0;
    free(v60);
  }

  free(v68);
  return v23;
}

uint64_t CMPhotoScalingUtilitiesInitializeFilter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294950306;
  }

  v4 = a2 / a1;
  v5 = 1.0 / v4;
  v6 = 133 - (LODWORD(v5) >> 23);
  if (v6 >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = v6;
  }

  v8 = 3.0;
  v9 = 1.0 / v4 * 3.0;
  if (v4 >= 1.0)
  {
    v9 = 3.0;
  }

  v10 = fmin(v9 * 2.0 + 0.5, 64.0);
  v32 = (1 << v7);
  *a3 = v10;
  *(a3 + 4) = 1 << v7;
  *(a3 + 8) = v7;
  *(a3 + 12) = ~(-1 << v7);
  v11 = malloc_type_malloc(4 * (v10 << v7), 0x100004052888210uLL);
  *(a3 + 528) = v11;
  if (!v11)
  {
    return 4294950305;
  }

  v31 = &v31;
  v12 = 0;
  v13 = 0;
  *&v14 = 0x3FF0000000000000 - (v7 << 52);
  v15 = fmin(v4, 1.0);
  v16 = v15;
  v33 = 3.14159265;
  do
  {
    v17 = *(a3 + 528);
    *(a3 + 16 + 8 * v13) = v17 + 4 * v13 * v10;
    if (v10 >= 1)
    {
      v18 = 0;
      v19 = 0.0;
      do
      {
        v20 = (1.0 - (v10 / 2) + v18 + -v13 * v14) * v16;
        v21 = 0.0;
        if (fabs(v20) < v8)
        {
          v21 = 1.0;
          if (v20 != 0.0)
          {
            v22 = v33;
            v23 = v20 * v33;
            v24 = v14;
            v25 = v16;
            v34 = sin(v20 * v33) / v23;
            v26 = sin(v20 / 3.0 * v22);
            v16 = v25;
            v14 = v24;
            v21 = v34 * (v26 / (v20 / 3.0 * v22));
            v8 = 3.0;
          }
        }

        v27 = v21;
        *(v17 + v12 + 4 * v18) = v27;
        v19 = v21 + v19;
        ++v18;
      }

      while (v10 != v18);
      v28 = v10;
      do
      {
        v29 = *(v17 + v12) / v19;
        *(v17 + v12) = v29;
        v17 += 4;
        --v28;
      }

      while (v28);
    }

    ++v13;
    v12 += 4 * v10;
  }

  while (v13 != v32);
  return 0;
}

uint64_t CMPhotoScalingUtilitiesLinear2XUpscaleBuffer_U8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a2 - 5 < 0xFFFFFFFC || a1 == 0 || a9 == 0)
  {
    return 4294950306;
  }

  v11 = 4294950306;
  if (!a3 || !a4)
  {
    return v11;
  }

  if (a6 != 2 * a3 || a7 != 2 * a4)
  {
    return 4294950306;
  }

  v13 = a2;
  if (a3 * a2 > a5 || a6 * a2 > a8)
  {
    return 4294950306;
  }

  if (a7)
  {
    v15 = 0;
    v16 = a4 - 1;
    v17 = a3 - 1;
    do
    {
      if ((v15 >> 1) >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v15 >> 1;
      }

      if (v15)
      {
        v19 = 1;
      }

      else
      {
        v19 = -1;
      }

      if (a6)
      {
        v20 = 0;
        v21 = a5 * (v18 & ~(v18 >> 31));
        v22 = a9 + v15 * a8;
        v23 = v19 + (v15 >> 1);
        if (v23 >= v16)
        {
          v23 = v16;
        }

        v24 = a1 + a5 * (v23 & ~(v23 >> 31));
        v25 = a1 + v21;
        do
        {
          v26 = 0;
          v27 = v20 >> 1;
          if ((v20 >> 1) >= v17)
          {
            v28 = v17;
          }

          else
          {
            v28 = v20 >> 1;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = v24 + v13 * v29;
          v31 = v25 + v13 * v29;
          if (v20)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = v27 - 1;
          }

          if (v32 >= v17)
          {
            v32 = v17;
          }

          v33 = v32 & ~(v32 >> 31);
          v34 = v24 + v13 * v33;
          v35 = v25 + v13 * v33;
          do
          {
            *(v22 + v26) = (9 * *(v31 + v26) + *(v34 + v26) + 3 * (*(v30 + v26) + *(v35 + v26)) + 8) >> 4;
            ++v26;
          }

          while (v13 != v26);
          ++v20;
          v22 += v26;
        }

        while (v20 != a6);
      }

      ++v15;
    }

    while (v15 != a7);
  }

  return 0;
}

uint64_t CMPhotoScalingUtilitiesNearest2XUpscaleBuffer_U8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a2 - 5 < 0xFFFFFFFC || a1 == 0 || a9 == 0)
  {
    return 4294950306;
  }

  v11 = 4294950306;
  if (!a3 || !a4 || !a6 || !a7)
  {
    return v11;
  }

  if (a3 * a2 > a5 || a6 * a2 > a8)
  {
    return 4294950306;
  }

  for (i = 0; i != a7; ++i)
  {
    v14 = 0;
    v15 = i >> 1;
    if ((i >> 1) >= a4 - 1)
    {
      v15 = a4 - 1;
    }

    v16 = v15 & ~(v15 >> 31);
    v17 = (a9 + i * a8);
    v18 = a1 + a5 * v16;
    do
    {
      v19 = v14 >> 1;
      if ((v14 >> 1) >= a3 - 1)
      {
        v19 = a3 - 1;
      }

      v20 = (v18 + a2 * (v19 & ~(v19 >> 31)));
      v21 = a2;
      do
      {
        v22 = *v20++;
        *v17++ = v22;
        --v21;
      }

      while (v21);
      ++v14;
    }

    while (v14 != a6);
  }

  return 0;
}

uint64_t CMPhotoScalingUtilitiesNearest2XDownscaleBuffer_U8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a2 - 5 < 0xFFFFFFFC || a1 == 0 || a9 == 0)
  {
    return 4294950306;
  }

  v11 = 4294950306;
  if (!a3 || !a4 || !a6 || !a7)
  {
    return v11;
  }

  v12 = a2;
  if (a3 * a2 > a5 || a6 * a2 > a8)
  {
    return 4294950306;
  }

  v14 = 0;
  v15 = 0;
  v16 = a3 - 1;
  do
  {
    v17 = 0;
    v18 = 0;
    if (v14 >= a4 - 1)
    {
      v19 = a4 - 1;
    }

    else
    {
      v19 = v14;
    }

    v20 = v19 & ~(v19 >> 31);
    v21 = (a9 + v15 * a8);
    v22 = a1 + a5 * v20;
    do
    {
      if (v17 >= v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = v17;
      }

      v24 = (v22 + v12 * (v23 & ~(v23 >> 31)));
      v25 = v12;
      do
      {
        v26 = *v24++;
        *v21++ = v26;
        --v25;
      }

      while (v25);
      ++v18;
      v17 += 2;
    }

    while (v18 != a6);
    ++v15;
    v14 += 2;
  }

  while (v15 != a7);
  return 0;
}

uint64_t VideoQualityControllerClass_create_0(uint64_t a1, int a2, int a3, int a4, const __CFDictionary *cf)
{
  if (cf && (v9 = CFGetTypeID(cf), v9 == CFDictionaryGetTypeID()))
  {
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040F7F8B94BuLL);
    if (!v10)
    {
      return 4294950305;
    }

    v11 = v10;
    *v10 = a2;
    v10[1] = 0;
    if (CFDictionaryContainsKey(cf, @"ByteBudget") && CMPhotoCFDictionaryGetInt64IfPresent())
    {
      v12 = 0;
      v11[1] = 0;
      *(a1 + 56) = v11;
    }

    else
    {
      v12 = FigSignalErrorAtGM();
      free(v11);
    }

    return v12;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t VideoQualityControllerClass_setSessionProperties_1(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 4294950194;
  }

  if ((*(v1 + 8) & 0x8000000000000000) == 0)
  {
    FigCFDictionarySetInt64();
  }

  return 0;
}

BOOL CMPhotoDecompressionDetectContainerFormat(const void *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  v9 = -1;
  v5 = OUTLINED_FUNCTION_2_9(a1, a2, a3, a4, &cf);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = CMPhotoImageContainerFormatDetectFromBytestream(cf, 1, &v9);
    v7 = v6;
    if (a2 && !v6)
    {
      *a2 = v9;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7 == 0;
}

uint64_t CMPhotoDecompressionDetectContainerFormatAndCodec(const void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v15 = 0;
  cf = 0;
  v14 = 0;
  v12 = -1;
  v13 = -1;
  BrandsFromByteStream = OUTLINED_FUNCTION_2_9(a1, a2, a3, a4, &cf);
  if (BrandsFromByteStream)
  {
    goto LABEL_28;
  }

  BrandsFromByteStream = CMPhotoImageContainerFormatDetectFromBytestream(cf, 1, &v13);
  if (BrandsFromByteStream)
  {
    goto LABEL_28;
  }

  if (v13 == 2)
  {
    v7 = 1786276963;
    goto LABEL_7;
  }

  if (v13 != 1)
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    BrandsFromByteStream = FigPictureCollectionCreateBrandsFromByteStream();
    if (!BrandsFromByteStream)
    {
      Int32 = CMPhotoCFNumberGetInt32(v15);
      if (_getCodecForBrand(Int32, &v12))
      {
        goto LABEL_8;
      }

      v11 = 0;
      while (v14 && CFArrayGetCount(v14) > v11)
      {
        FigCFArrayGetInt32AtIndex();
        ++v11;
        if (_getCodecForBrand(0, &v12))
        {
          goto LABEL_8;
        }
      }

      BrandsFromByteStream = FigSignalErrorAtGM();
    }

LABEL_28:
    v8 = BrandsFromByteStream;
    goto LABEL_12;
  }

  v7 = 1785750887;
LABEL_7:
  v12 = v7;
LABEL_8:
  if (a2)
  {
    *a2 = v13;
  }

  v8 = 0;
  if (a3)
  {
    *a3 = v12;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v8;
}

uint64_t CMPhotoDecompressionGetImageCount(uint64_t a1, void *a2)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_2();
    v10 = FigSignalErrorAtGM();
LABEL_10:
    DecompressionSession = 0;
    goto LABEL_7;
  }

  if (!a2)
  {
    v10 = 0;
    goto LABEL_10;
  }

  DecompressionSession = CMPhotoOneShotSessionPoolGetDecompressionSession();
  if (DecompressionSession)
  {
    v4 = OUTLINED_FUNCTION_0_10();
    ImageCountWithOptions = OUTLINED_FUNCTION_3_9(v4, v5, v6, v7, v8);
    if (!ImageCountWithOptions)
    {
      ImageCountWithOptions = CMPhotoDecompressionContainerGetImageCountWithOptions(0, 0, a2);
    }

    v10 = ImageCountWithOptions;
  }

  else
  {
    v10 = 4294950195;
  }

LABEL_7:
  CMPhotoOneShotSessionPoolRecycleSession(DecompressionSession);
  return v10;
}

uint64_t CMPhotoDecompressionDetectSourceIsMIAF(uint64_t a1)
{
  IsMIAF = a1;
  if (a1)
  {
    DecompressionSession = CMPhotoOneShotSessionPoolGetDecompressionSession();
    if (!DecompressionSession || (v3 = OUTLINED_FUNCTION_0_10(), OUTLINED_FUNCTION_3_9(v3, v4, v5, v6, v7)))
    {
      IsMIAF = 0;
    }

    else
    {
      IsMIAF = CMPhotoDecompressionContainerDetectSourceIsMIAF(0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM();
    DecompressionSession = 0;
  }

  CMPhotoOneShotSessionPoolRecycleSession(DecompressionSession);
  return IsMIAF;
}

uint64_t CMPhotoDecompressionGetImageGeometryForIndex(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_2();
    v11 = FigSignalErrorAtGM();
LABEL_12:
    DecompressionSession = 0;
    goto LABEL_9;
  }

  if (!a3 && !a4 && !a5)
  {
    v11 = 0;
    goto LABEL_12;
  }

  DecompressionSession = CMPhotoOneShotSessionPoolGetDecompressionSession();
  if (DecompressionSession)
  {
    v7 = OUTLINED_FUNCTION_0_10();
    Container = CMPhotoDecompressionSessionCreateContainer(v7, v8, a1, 0, v9);
    if (!Container)
    {
      CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(0);
    }

    v11 = Container;
  }

  else
  {
    v11 = 4294950195;
  }

LABEL_9:
  CMPhotoOneShotSessionPoolRecycleSession(DecompressionSession);
  return v11;
}

uint64_t CMPhotoDecompressionCreateCGImageForIndex(uint64_t a1, int a2, int a3, uint64_t a4)
{
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_2();
    v17 = FigSignalErrorAtGM();
LABEL_12:
    DecompressionSession = 0;
    goto LABEL_7;
  }

  v4 = a4;
  if (!a4)
  {
    v17 = 0;
    goto LABEL_12;
  }

  DecompressionSession = CMPhotoOneShotSessionPoolGetDecompressionSession();
  if (DecompressionSession)
  {
    v8 = OUTLINED_FUNCTION_0_10();
    v13 = OUTLINED_FUNCTION_3_9(v8, v9, v10, v11, v12);
    if (!v13)
    {
      CMPhotoDecompressionContainerCreateImageForIndex(0, a2, a3, 4, v4, v14, v15, v16, v19, 0, v21, v22, v23, v24, v25, v26, vars0, vars8);
    }

    v17 = v13;
  }

  else
  {
    v17 = 4294950195;
  }

LABEL_7:
  CMPhotoOneShotSessionPoolRecycleSession(DecompressionSession);
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t CMPhotoDecompressionCreateCVPixelBufferForIndex(uint64_t a1, int a2, const __CFDictionary *a3, uint64_t a4)
{
  cf[0] = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_2();
    v15 = FigSignalErrorAtGM();
LABEL_12:
    v10 = 0;
    goto LABEL_7;
  }

  v4 = a4;
  if (!a4)
  {
    v15 = 0;
    goto LABEL_12;
  }

  DecompressionSession = CMPhotoOneShotSessionPoolGetDecompressionSession();
  v10 = DecompressionSession;
  if (DecompressionSession)
  {
    v11 = OUTLINED_FUNCTION_3_9(DecompressionSession, a3, v8, v9, cf);
    if (!v11)
    {
      CMPhotoDecompressionContainerCreateImageForIndex(cf[0], a2, a3, 2, v4, v12, v13, v14, v17, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]);
    }

    v15 = v11;
  }

  else
  {
    v15 = 4294950195;
  }

LABEL_7:
  CMPhotoOneShotSessionPoolRecycleSession(v10);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v15;
}

uint64_t CMPhotoDecompressionCreateCVPixelBufferForThumbnailIndexAndImageIndex(void *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5)
{
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_2();
    v13 = FigSignalErrorAtGM();
LABEL_12:
    v11 = 0;
    goto LABEL_7;
  }

  if (!a5)
  {
    v13 = 0;
    goto LABEL_12;
  }

  DecompressionSession = CMPhotoOneShotSessionPoolGetDecompressionSession();
  v11 = DecompressionSession;
  if (DecompressionSession)
  {
    Container = CMPhotoDecompressionSessionCreateContainer(DecompressionSession, a4, a1, 0, &cf);
    if (!Container)
    {
      Container = CMPhotoDecompressionContainerCreateThumbnailImageForIndex(cf, a2, a3, a4, 2, a5);
    }

    v13 = Container;
  }

  else
  {
    v13 = 4294950195;
  }

LABEL_7:
  CMPhotoOneShotSessionPoolRecycleSession(v11);
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t CMPhotoDecompressionDecodeIntoRGBSurfaceForIndex(void *a1, int a2, const __CFDictionary *a3, IOSurfaceRef buffer)
{
  value = 0;
  cf = 0;
  if (!a1 || !buffer || ((PixelFormat = IOSurfaceGetPixelFormat(buffer), PixelFormat != 1111970369) ? (v9 = PixelFormat == 1380401729) : (v9 = 1), !v9))
  {
    OUTLINED_FUNCTION_2();
    v21 = FigSignalErrorAtGM();
    DecompressionSession = 0;
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  DecompressionSession = CMPhotoOneShotSessionPoolGetDecompressionSession();
  if (DecompressionSession)
  {
    v10 = OUTLINED_FUNCTION_0_10();
    Container = CMPhotoDecompressionSessionCreateContainer(v10, v11, a1, 0, v12);
    if (Container || (v14 = CFGetAllocator(buffer), Container = CMPhotoCreatePixelBufferWithSurface(v14, buffer, 0), Container))
    {
      v21 = Container;
      goto LABEL_13;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
    v16 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, @"UseProvidedPixelBuffer", value);
      CMPhotoDecompressionContainerCreateImageForIndex(cf, a2, v16, 2, &value, v17, v18, v19, value, cf, v26, v27, v28, v29, v30, v31, vars0, vars8);
      v21 = v20;
    }

    else
    {
      v21 = 4294950305;
    }
  }

  else
  {
    v16 = 0;
    v21 = 4294950195;
  }

LABEL_14:
  CMPhotoOneShotSessionPoolRecycleSession(DecompressionSession);
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v21;
}

void _getThumbnailCountForIndex_3(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_1_10(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13))
  {
    v10 = _parseExifIfNeeded(v8 + 40, 0);
    if (a4)
    {
      if (!v10)
      {
        OUTLINED_FUNCTION_15_5();
        *a4 = v11;
      }
    }
  }
}

uint64_t _createThumbnailImageForIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5, CFTypeRef *a6)
{
  cf[0] = 0;
  cf[1] = a2;
  v11 = OUTLINED_FUNCTION_8_8(a1);
  v13 = _checkImageIndex(v11, v12, 0);
  if (v13)
  {
    return v13;
  }

  v13 = _parseExifIfNeeded(a1 + 40, 0);
  if (v13)
  {
    return v13;
  }

  if (*(a1 + 320) && !a3)
  {
    v14 = _decodeImage(*(a1 + 40), a1, *(a1 + 64), 1, 0, a4, 0, 0, a5, 0, cf);
    if (v14)
    {
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    else
    {
      *a6 = cf[0];
    }

    return v14;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void _decodeThumbnailForIndexAsync_0(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  if (OUTLINED_FUNCTION_3_10(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17))
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    _queueAsyncImageDecode(a1, 1, 0, a4, 0, v11, a6, a7, a8);
LABEL_4:
    OUTLINED_FUNCTION_27_1();
    return;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_27_1();

  FigSignalErrorAtGM();
}

void _decodeAuxiliaryImageForIndexAsync(uint64_t a1, unint64_t a2, unint64_t a3, const void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v11 = a5;
  if (OUTLINED_FUNCTION_3_10(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17))
  {
LABEL_7:
    OUTLINED_FUNCTION_27_1();
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (!CMPhotoDecompressionContainerCheckForbiddenAuxOptions(a4, 1) && !_parseMPOIfNeeded(a1 + 40) && *(a1 + 272) > a3)
    {
      _queueAsyncImageDecode(a1, 2, a3, a4, 0, v11, a6, a7, a8);
    }

    goto LABEL_7;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_27_1();

  FigSignalErrorAtGM();
}

uint64_t _getAuxiliaryImageGeometryForIndex_0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, _DWORD *a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_2_10(a1, a2, a3, a4, a5, a6, a7, a8, v21, v22, v24, SWORD2(v24), SBYTE6(v24), SHIBYTE(v24), v25);
  if (!result)
  {
    v13 = OUTLINED_FUNCTION_24_0();
    result = _getAuxiliaryImageStorageForIndex(v13, v14, a3, v15);
    if (!result)
    {
      OUTLINED_FUNCTION_42();
      result = _getImageGeometryForIndex(v16, v17, v18, v19, v20, a7);
      if (!result)
      {
        if (a5)
        {
          *a5 = *v23;
        }

        result = 0;
        if (a6)
        {
          *a6 = v23[1];
        }
      }
    }
  }

  return result;
}

uint64_t _getAuxiliaryImageTypeForIndex_0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_2_10(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, v18, SWORD2(v18), SBYTE6(v18), SHIBYTE(v18), v19);
  if (!result)
  {
    v12 = OUTLINED_FUNCTION_24_0();
    result = _getAuxiliaryImageStorageForIndex(v12, v13, a3, v14);
    if (!result)
    {
      if (a5)
      {
        *a5 = *(v17 + 20);
      }

      result = 0;
      if (a6)
      {
        *a6 = *(v17 + 24);
      }
    }
  }

  return result;
}

uint64_t _copyAuxiliaryImageMetadataForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_1();
  result = OUTLINED_FUNCTION_2_10(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29), v31);
  if (!result)
  {
    result = OUTLINED_FUNCTION_10_9(result, v15, v16, v17, v18, v19, v20, v21, v25, v27, v30, SWORD2(v30), SBYTE6(v30), HIBYTE(v30));
    if (a5)
    {
      if (!result)
      {
        v22 = *(v28 + 32);
        if (v22)
        {
          v23 = CFRetain(v22);
        }

        else
        {
          v23 = 0;
        }

        return OUTLINED_FUNCTION_23_1(v23);
      }
    }
  }

  return result;
}

uint64_t _createAuxiliaryImageForIndex_0(uint64_t a1, unint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  result = OUTLINED_FUNCTION_2_10(a1, a2, a3, a4, a5, a6, a7, a8, v14, v16, v17, SWORD2(v17), SBYTE6(v17), SHIBYTE(v17), v19);
  if (!result)
  {
    result = CMPhotoDecompressionContainerCheckForbiddenAuxOptions(a4, 1);
    if (!result)
    {
      BYTE4(v15) = 0;
      LODWORD(v15) = v9;
      return _decodeImage(*(a1 + 40), a1, *(a1 + 64), 2, a3, a4, v18, 0, v15, a6);
    }
  }

  return result;
}

uint64_t _copyAuxiliaryColorSpaceForIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25_1();
  result = OUTLINED_FUNCTION_2_10(v5, v6, v7, v8, v9, v10, v11, v12, v23, v25, v28, SWORD2(v28), SBYTE6(v28), SHIBYTE(v28), v30);
  if (!result)
  {
    result = OUTLINED_FUNCTION_10_9(result, v14, v15, v16, v17, v18, v19, v20, v24, v26, v29, SWORD2(v29), SBYTE6(v29), HIBYTE(v29));
    if (a4)
    {
      if (!result)
      {
        v21 = *(v27 + 80);
        if (v21 && (v22 = CGColorSpaceCreateWithICCData(v21)) != 0)
        {
          return OUTLINED_FUNCTION_23_1(v22);
        }

        else
        {
          return 4294950303;
        }
      }
    }
  }

  return result;
}

uint64_t _createOutputBufferAttributesForImageIndex_1(uint64_t a1, unint64_t a2, uint64_t a3, CFDictionaryRef *a4)
{
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 1;
  cf = 0;
  ImageGeometryForIndex = _getImageGeometryForIndex(a1, a2, a3, &v16, &v17, &v15);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  ImageGeometryForIndex = _copyImageSubsamplingForIndex(a1, a2, &v14);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  OutputBufferAttributesForImageGeometry = _copyImageBitDepthForIndex_0(a1, a2, v9, &cf);
  v11 = cf;
  if (!OutputBufferAttributesForImageGeometry)
  {
    FigCFArrayGetIntAtIndex();
    OutputBufferAttributesForImageGeometry = _createOutputBufferAttributesForImageGeometry(a1, 0, v16, v17, v14, 0, *(a1 + 133), a3, a4);
    v11 = cf;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return OutputBufferAttributesForImageGeometry;
}

uint64_t _createOutputBufferAttributesForThumbnailIndex()
{
  OUTLINED_FUNCTION_7_7();
  result = _getThumbnailGeometryForIndex_0(v5, v6, v7, &v20, (v4 + 8), &v19);
  if (!result)
  {
    v21 = v3;
    result = _checkImageIndex(v1 + 40, &v21, 0);
    if (!result)
    {
      if (v2)
      {
        fig_log_get_emitter();
        result = FigSignalErrorAtGM();
        if (result)
        {
          return result;
        }

        v9 = 0;
      }

      else
      {
        result = _parseExifIfNeeded(v1 + 40, 0);
        if (result)
        {
          return result;
        }

        if (!*(v1 + 320))
        {
          return 4294950303;
        }

        v9 = *(v1 + 344);
      }

      v10 = OUTLINED_FUNCTION_20_5();
      result = _copyThumbnailBitDepthForIndex_0(v10, v11, v12, v13);
      if (!result)
      {
        FigCFArrayGetIntAtIndex();
        v14 = OUTLINED_FUNCTION_18_2();
        return _createOutputBufferAttributesForImageGeometry(v14, 1, v15, v16, v9, v17, 0, v0, v18);
      }
    }
  }

  return result;
}

uint64_t _createOutputBufferAttributesForAuxiliaryIndex()
{
  OUTLINED_FUNCTION_7_7();
  AuxiliaryImageGeometryForIndex_0 = _getAuxiliaryImageGeometryForIndex_0(v5, v6, v7, v8, &v26, (v4 + 8), &v25, v9);
  if (AuxiliaryImageGeometryForIndex_0)
  {
    return AuxiliaryImageGeometryForIndex_0;
  }

  v29 = v3;
  v28 = 0;
  AuxiliaryImageGeometryForIndex_0 = _checkImageIndex(v1 + 40, &v29, &v28);
  if (AuxiliaryImageGeometryForIndex_0)
  {
    return AuxiliaryImageGeometryForIndex_0;
  }

  AuxiliaryImageGeometryForIndex_0 = _parseMPOIfNeeded(v1 + 40);
  if (AuxiliaryImageGeometryForIndex_0)
  {
    return AuxiliaryImageGeometryForIndex_0;
  }

  v27 = 0;
  AuxiliaryImageGeometryForIndex_0 = _getAuxiliaryImageStorageForIndex(v1 + 40, v28, v2, &v27);
  if (AuxiliaryImageGeometryForIndex_0)
  {
    return AuxiliaryImageGeometryForIndex_0;
  }

  v11 = *(v27 + 16);
  v12 = OUTLINED_FUNCTION_20_5();
  OutputBufferAttributesForImageGeometry = _copyAuxiliaryImageBitDepthForIndex_0(v12, v13, v14, v15);
  v17 = cf;
  if (!OutputBufferAttributesForImageGeometry)
  {
    FigCFArrayGetIntAtIndex();
    v18 = OUTLINED_FUNCTION_18_2();
    OutputBufferAttributesForImageGeometry = _createOutputBufferAttributesForImageGeometry(v18, 2, v19, v20, v11, v21, 0, v0, v23);
    v17 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return OutputBufferAttributesForImageGeometry;
}

uint64_t _transcodeToJFIF_0(uint64_t a1, const __CFDictionary *a2, unint64_t a3, uint64_t a4, CFMutableDataRef *a5)
{
  v119[0] = a3;
  v8 = CFGetAllocator(a1);
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v115 = 1;
  memset(v114, 0, 32);
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 1;
  v108 = 1;
  v107 = 1;
  v106 = 875704422;
  v105 = 0;
  v104 = 0;
  v102 = 0;
  Int = 0;
  v101 = 0;
  IsCodecAllowed = CMPhotoDecompressionContainerIsCodecAllowed(a1, 1785750887, &v101);
  if (IsCodecAllowed)
  {
    goto LABEL_103;
  }

  if (!v101)
  {
    goto LABEL_100;
  }

  IsCodecAllowed = _checkImageIndex(a1 + 40, v119, 0);
  if (IsCodecAllowed)
  {
    goto LABEL_103;
  }

  v119[0] = 0;
  if (!a5)
  {
    v56 = 0;
    v34 = 0;
    goto LABEL_105;
  }

  IsCodecAllowed = CMPhotoDecompressionSessionGetPictureCollectionCodecPool(*(a1 + 16), &v113);
  if (IsCodecAllowed)
  {
    goto LABEL_103;
  }

  IsCodecAllowed = CMPhotoDecompressionSessionCopyScaler(*(a1 + 16), &v112);
  if (IsCodecAllowed)
  {
    goto LABEL_103;
  }

  IsCodecAllowed = CMPhotoDecompressionSessionCopySurfacePool(*(a1 + 16), &v111);
  if (IsCodecAllowed)
  {
    goto LABEL_103;
  }

  v100 = 0uLL;
  v10 = OUTLINED_FUNCTION_9_0();
  IsCodecAllowed = _getImageGeometryForIndex(v10, v11, v12, v13, v14, 0);
  if (IsCodecAllowed)
  {
    goto LABEL_103;
  }

  if (a2)
  {
    CMPhotoCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    Value = CFDictionaryGetValue(a2, @"PreserveAndModifyGainMap");
    if (!Value || (v16 = CFGetTypeID(Value), v16 == CFDictionaryGetTypeID()))
    {
      CMPhotoCFDictionaryGetBooleanIfPresent();
      if (!CMPhotoCFDictionaryGetSizeIfPresent(a2, @"MaxPixelSize", &v105))
      {
LABEL_15:
        CMPhotoCFDictionaryGetBooleanIfPresent();
        HIBYTE(v110) = CMPhotoGetEvenScalingModeDefault(0, HIBYTE(v110));
        CMPhotoCFDictionaryGetBooleanIfPresent();
        if (CMPhotoCFDictionaryGetIntIfPresent())
        {
          LOBYTE(v102) = 1;
        }

        v17 = CFDictionaryGetValue(a2, @"QualityControllerParameters");
        if (v17)
        {
          v17 = CFRetain(v17);
        }

        Int = v17;
        v18 = CFDictionaryGetValue(a2, @"ReplacementImageProperties");
        v19 = v18;
        if (v18 && (v20 = CFGetTypeID(v18), v20 != CFDictionaryGetTypeID()) || (v21 = CFDictionaryGetValue(a2, @"ColorConverter"), (v22 = v21) != 0) && (v23 = CFGetTypeID(v21), v23 != CFDictionaryGetTypeID()))
        {
          v56 = 0;
          v34 = 4294950306;
          goto LABEL_105;
        }

        v24 = CFDictionaryGetValue(a2, @"SourceCropRect");
        if (!v24)
        {
          v90 = a5;
          allocator = v8;
LABEL_35:
          v92 = 0.0;
          v35 = 0.0;
          v36 = 0.0;
          v37 = 0.0;
LABEL_36:
          CMPhotoCFDictionaryGetBooleanIfPresent();
          goto LABEL_37;
        }

        v25 = *(MEMORY[0x1E695F050] + 16);
        rect.origin = *MEMORY[0x1E695F050];
        rect.size = v25;
        if (CGRectMakeWithDictionaryRepresentation(v24, &rect))
        {
          v26 = vcvtq_u64_f64(vrndaq_f64(rect.origin));
          v27 = vcvtq_u64_f64(vrndaq_f64(rect.size));
          v28 = vaddq_s64(v27, v26);
          v29 = vbslq_s8(vcgtq_u64(v28, v100), v100, v28);
          v30 = vmovn_s64(vcgtq_u64(v29, v26));
          if (v30.i8[0] & v30.i8[4])
          {
            v31 = -1;
          }

          else
          {
            v31 = 0;
          }

          v32 = vdupq_n_s64(v31);
          v33 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(v26, v32), v26)));
          if ((v33.i32[0] | v33.i32[1]) & 1) != 0 || (v90 = a5, allocator = v8, v38 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(vsubq_s64(v29, v26), v32), v27))), ((v38.i32[0] | v38.i32[1])))
          {
            v34 = 4294950306;
LABEL_104:
            v56 = 0;
            goto LABEL_105;
          }

          v37 = *v27.i64;
          v39 = vmovn_s64(vmvnq_s8(vceqq_s64(v100, v27)));
          v36 = *&v27.i64[1];
          v92 = *&v26.i64[1];
          v35 = *v26.i64;
          if (v39.i8[0] & 1) != 0 || (v39.i8[4])
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        fig_log_get_emitter();
LABEL_102:
        IsCodecAllowed = FigSignalErrorAtGM();
        goto LABEL_103;
      }

      if (v105)
      {
        CMPhotoCFDictionaryGetBooleanIfPresent();
        CMPhotoCFDictionaryGetBooleanIfPresent();
        goto LABEL_15;
      }
    }

LABEL_100:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_14_1();
    goto LABEL_102;
  }

  v90 = a5;
  allocator = v8;
  v92 = 0.0;
  v35 = 0.0;
  v22 = 0;
  v19 = 0;
  v36 = 0.0;
  v37 = 0.0;
LABEL_37:
  v98 = 0;
  v97 = -1;
  v40 = OUTLINED_FUNCTION_9_0();
  IsCodecAllowed = CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForInternalIndexWithOptions(v40, v41, 0, 4, v42, v43, v44);
  if (IsCodecAllowed)
  {
    goto LABEL_103;
  }

  if (v19)
  {
    v116 = CFRetain(v19);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_42();
    IsCodecAllowed = CMPhotoDecompressionContainerCopyImagePropertiesForInternalIndex(v45, v46, v47, v48, v49, v50);
    if (IsCodecAllowed)
    {
      goto LABEL_103;
    }
  }

  v51 = OUTLINED_FUNCTION_9_0();
  v54 = _copyColorSpaceForIndex(v51, v52, v53);
  if (v54)
  {
    v34 = v54;
    if (v54 != -16993)
    {
      goto LABEL_104;
    }
  }

  v55 = v118;
  if (!v118)
  {
    IsCodecAllowed = _parseICCProfileIfNeeded(a1 + 40);
    if (IsCodecAllowed)
    {
      goto LABEL_103;
    }

    v55 = v118;
  }

  IsCodecAllowed = CMPhotoDecompressionContainerInitColorController(v114, v22, v55, *(a1 + 472));
  if (IsCodecAllowed)
  {
LABEL_103:
    v34 = IsCodecAllowed;
    goto LABEL_104;
  }

  if (!v102)
  {
    if (Int)
    {
      CFRelease(Int);
      Int = 0;
    }

    HIDWORD(v102) = 4;
    Int = CMPhotoCFNumberCreateInt(2);
  }

  if (!CMPhotoCFDictionaryGetIntIfPresent())
  {
    CFDictionaryGetValue(v116, *MEMORY[0x1E696DF28]);
    CMPhotoCFDictionaryGetIntIfPresent();
  }

  if (!v107 && v116)
  {
    CFRelease(v116);
    v116 = 0;
  }

  if (v109)
  {
    if (!*(a1 + 320) || *&v35 | *&v92 || *&v37 | *&v36)
    {
      v56 = 0;
      v57 = 1;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v56 = Mutable;
      if (!Mutable)
      {
        v34 = 4294950305;
        goto LABEL_105;
      }

      CMPhotoCFDictionarySetSize(Mutable, @"MaxPixelSize", 160);
      CMPhotoCFDictionarySetBoolean(v56, @"ApplyTransform", HIBYTE(v109));
      if (a2 && v22 && CFDictionaryContainsKey(a2, @"OutputPixelFormat"))
      {
        v59 = CFDictionaryGetValue(a2, @"OutputPixelFormat");
        CFDictionarySetValue(v56, @"OutputPixelFormat", v59);
      }

      v60 = OUTLINED_FUNCTION_9_0();
      ThumbnailImageForIndex = CMPhotoDecompressionContainerCreateThumbnailImageForIndex(v60, v61, 0, v56, 2, v62);
      if (ThumbnailImageForIndex)
      {
LABEL_98:
        v34 = ThumbnailImageForIndex;
        goto LABEL_105;
      }

      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
    v56 = 0;
  }

  v96 = v100;
  if (*&v35 | *&v92 || *&v37 | *&v36)
  {
    *v96.i64 = v37;
    *&v96.i64[1] = v36;
    rect.origin.x = v35;
    rect.origin.y = v92;
    rect.size.width = v37;
    rect.size.height = v36;
    ThumbnailImageForIndex = CMPhotoGetTwoPassCropRects(v106, &rect, v100.u64[0], v100.u64[1], 0, 0);
    if (ThumbnailImageForIndex)
    {
      goto LABEL_98;
    }
  }

  v64 = v105;
  if (v105 && v104)
  {
    v65 = v96.i64[0];
    if (v96.i64[0] <= v96.i64[1])
    {
      v66 = v96.u64[1];
    }

    else
    {
      v66 = v96.i64[0];
    }

    if (v96.i64[0] >= v96.i64[1])
    {
      v65 = v96.u64[1];
    }

    v64 = 2 * ((vcvtps_s32_f32((v66 / v65) * v105) - 1) / 2) + 2;
    v105 = v64;
  }

  if (v64)
  {
    v67 = v96.i64[0] <= v96.i64[1] ? v96.i64[1] : v96.i64[0];
    if (v64 < v67 || HIBYTE(v104))
    {
      OUTLINED_FUNCTION_42();
      CMPhotoPixelBufferConstrainSizeToMaxSideLength(v68, v69, v70, v71, v72, v73, v74, v75, 0, 0);
    }
  }

  if (v116)
  {
    v76 = OUTLINED_FUNCTION_14_5(*v96.i64);
    ThumbnailImageForIndex = CMPhotoUpdateImageProperties(&v116, v77, 0, v76, v78);
    if (ThumbnailImageForIndex)
    {
      goto LABEL_98;
    }
  }

  v95 = 0;
  if (v108)
  {
    v81 = OUTLINED_FUNCTION_9_0();
    ThumbnailImageForIndex = _getAuxiliaryImageCountForIndex_2(v81, v82, v83, v84, v85, v86, v87, v88);
    if (ThumbnailImageForIndex)
    {
      goto LABEL_98;
    }
  }

  v93[0] = a1;
  v93[1] = 0;
  v93[2] = v97;
  v94 = 0;
  BYTE1(v94) = v110;
  if (HIBYTE(v109))
  {
    v79 = v115;
  }

  else
  {
    v79 = 1;
  }

  v80 = *(a1 + 64);
  rect.origin.x = v35;
  rect.origin.y = v92;
  rect.size.width = v37;
  rect.size.height = v36;
  v34 = CMPhotoJFIFTranscodeFromJFIF(allocator, v100.i64[0], v100.i64[1], &rect, v79, v96.u64[0], v96.i64[1], v106, SHIDWORD(v102), Int, v57, v117, v95, _transcodeAuxiliaryImageCallback, v93, v80, v116, v114, v111, v112, v113, 0, v110, 0, v90);
LABEL_105:
  if (v118)
  {
    CFRelease(v118);
  }

  if (v117)
  {
    CFRelease(v117);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (Int)
  {
    CFRelease(Int);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  return v34;
}