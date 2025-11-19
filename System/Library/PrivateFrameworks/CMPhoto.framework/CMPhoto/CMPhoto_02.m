uint64_t CMPhotoDecompressionContainerCopyColorInfoFromFormatDescription(const opaqueCMFormatDescription *a1, int a2, int a3, int a4, int a5, int a6, CFTypeRef *a7, CFTypeRef *a8, CFTypeRef *a9, CFTypeRef *a10, _DWORD *a11, _DWORD *a12, char *a13)
{
  v55[0] = 0;
  v53 = 0;
  cf = 0;
  v52 = 0;
  v51 = -1;
  HIBYTE(v49) = a5 == 0;
  OUTLINED_FUNCTION_42_2();
  v42 = v20;
  v44 = v19;
  *&v39 = &v51 + 4;
  *(&v39 + 1) = &v51;
  OUTLINED_FUNCTION_21();
  InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(v21, v22, v23, v24, v25, v26, v27, 0, v39, v42, v44, v46);
  if (InfoFromFormatDescription)
  {
    goto LABEL_45;
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  CMPhotoCreateColorSpaceFromPixelBufferAttachments(Extensions, a4, v55, 1, 1, v30, v31, v32, v40, v41, v43, v45, v47, v48, v49, v51, v52, v53, cf, v55[0], v55[1], v55[2]);
  if (InfoFromFormatDescription)
  {
    goto LABEL_45;
  }

  if (a4)
  {
    v33 = 0;
  }

  else
  {
    v33 = v52 == 0;
  }

  v34 = !v33;
  if (!a3 || (v34 & 1) != 0)
  {
    if (v50)
    {
      v34 = 1;
    }

    v35 = 0;
    if ((v34 & 1) == 0)
    {
      v52 = CFRetain(*MEMORY[0x1E6965FD0]);
    }
  }

  else
  {
    v52 = CFRetain(*MEMORY[0x1E6965FC8]);
    v35 = 1;
  }

  v36 = v55[0];
  if (!(a6 | a4) && !v55[0])
  {
    v36 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v55[0] = v36;
  }

  if (v36 && CGColorSpaceGetModel(v36) >= kCGColorSpaceModelCMYK)
  {
    fig_log_get_emitter();
    InfoFromFormatDescription = FigSignalErrorAtGM();
LABEL_45:
    v37 = InfoFromFormatDescription;
    goto LABEL_35;
  }

  if (a7)
  {
    *a7 = v55[0];
    v55[0] = 0;
  }

  if (a8)
  {
    *a8 = cf;
    cf = 0;
  }

  if (a9)
  {
    *a9 = v53;
    v53 = 0;
  }

  if (a10)
  {
    *a10 = v52;
    v52 = 0;
  }

  if (a11)
  {
    *a11 = HIDWORD(v51);
  }

  if (a12)
  {
    *a12 = v51;
  }

  v37 = 0;
  if (a13)
  {
    *a13 = v35;
  }

LABEL_35:
  if (v55[0])
  {
    CFRelease(v55[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v37;
}

uint64_t _copyColorInfoForItem(_BYTE *a1, const void *a2, const void *a3, int a4, CMVideoFormatDescriptionRef *a5, int a6, CFTypeRef *a7, CFTypeRef *a8, CFTypeRef *a9, CFTypeRef *a10, int *a11, int *a12, _BYTE *a13)
{
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  cf = 0;
  v68 = 0;
  v66 = -1;
  v67 = -1;
  v65 = 0;
  v64 = 0;
  v20 = CFGetAllocator(a1);
  ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(a2, &v64);
  if (ItemTypeFromReader)
  {
    goto LABEL_96;
  }

  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
LABEL_51:
    v38 = 4294954514;
    goto LABEL_52;
  }

  ItemTypeFromReader = v23(FigBaseObject, *MEMORY[0x1E69722F8], v20, &v74);
  if (ItemTypeFromReader)
  {
    goto LABEL_96;
  }

  v24 = v74;
  v76[0] = 0;
  ItemTypeFromReader = _verifyPixelInformationFromPictureReader(a2, v76);
  if (ItemTypeFromReader)
  {
    goto LABEL_96;
  }

  v25 = v76[0];
  if (a3 && !v76[0])
  {
    ItemTypeFromReader = _verifyPixelInformationFromPictureReader(a3, v76);
    if (ItemTypeFromReader)
    {
      goto LABEL_96;
    }

    v25 = v76[0];
  }

  if (v25)
  {
    v26 = v25 == 1;
  }

  else
  {
    v27 = a4;
    if (a4)
    {
      goto LABEL_15;
    }

    if (!v24)
    {
      v27 = 0;
      goto LABEL_15;
    }

    v75 = 0;
    OUTLINED_FUNCTION_14_9();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_31_0();
    if (CMPhotoGetInfoFromFormatDescription(v44, v45, v46, v47, v48, v49, v50, v51, v57, v58, v59, v60))
    {
      v26 = 0;
    }

    else
    {
      v26 = v75 == 6;
    }
  }

  v27 = v26;
LABEL_15:
  if (v64 == 1635135537)
  {
    v76[0] = 0;
    if (a4)
    {
      v28 = a1[28] == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = *"";
    v63[2] = ___copyColorInfoForItem_block_invoke;
    v63[3] = &__block_descriptor_tmp_15;
    v63[4] = a2;
    v63[5] = v74;
    ItemTypeFromReader = CMPhotoDecompressionContainerCreateCorrectedAV1FormatDescription(v74, v63, v29, v76);
    if (ItemTypeFromReader)
    {
      goto LABEL_96;
    }

    if (v74)
    {
      CFRelease(v74);
    }

    v74 = v76[0];
  }

  if (_checkForInterestingBrands(a1))
  {
    v30 = 0;
  }

  else
  {
    v30 = a1[163];
  }

  v62 = 0;
  ItemTypeFromReader = CMPhotoDecompressionContainerCopyColorInfoFromFormatDescription(v74, a1[28], v30, v27, 0, a6, &v65, &cf, &v69, &v68, &v67, &v66, &v62);
  if (ItemTypeFromReader)
  {
    goto LABEL_96;
  }

  if (v65)
  {
    v31 = 1;
  }

  else
  {
    if (cf)
    {
      v32 = v69 == 0;
    }

    else
    {
      v32 = 1;
    }

    v31 = !v32;
  }

  if (v31 && v68 && !v62)
  {
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_28_3();
  if (v26)
  {
    OUTLINED_FUNCTION_10_0();
    ItemTypeFromReader = CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(v40, v41, v42, v43);
    if (!ItemTypeFromReader)
    {
      goto LABEL_70;
    }

LABEL_96:
    v38 = ItemTypeFromReader;
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_24_1();
  if (!v26)
  {
    goto LABEL_70;
  }

  v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v33)
  {
    goto LABEL_51;
  }

  ItemTypeFromReader = v33(a2, &v72);
  if (ItemTypeFromReader)
  {
    goto LABEL_96;
  }

  v34 = v72;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v35)
  {
    goto LABEL_51;
  }

  ItemTypeFromReader = v35(v34, &v71);
  if (ItemTypeFromReader)
  {
    goto LABEL_96;
  }

  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v37)
  {
    goto LABEL_51;
  }

  ItemTypeFromReader = v37(CMBaseObject, *MEMORY[0x1E69723A0], v20, &v73);
  if (ItemTypeFromReader)
  {
    goto LABEL_96;
  }

LABEL_70:
  if (v73)
  {
    if (v62 && v68)
    {
      CFRelease(v68);
      v68 = 0;
    }

    OUTLINED_FUNCTION_26_2();
    ItemTypeFromReader = _copyColorInfoForItem(v52, v53, v54, v55, v56);
    if (ItemTypeFromReader)
    {
      goto LABEL_96;
    }
  }

LABEL_71:
  if (a5)
  {
    *a5 = v74;
    v74 = 0;
  }

  if (a7)
  {
    *a7 = v65;
    v65 = 0;
  }

  if (a8)
  {
    *a8 = cf;
    cf = 0;
  }

  if (a9)
  {
    *a9 = v69;
    v69 = 0;
  }

  if (a10)
  {
    *a10 = v68;
    v68 = 0;
  }

  if (a11)
  {
    *a11 = v67;
  }

  if (a12)
  {
    *a12 = v66;
  }

  v38 = 0;
  if (a13)
  {
    *a13 = v62;
  }

LABEL_52:
  if (v74)
  {
    CFRelease(v74);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  return v38;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return CMPhotoCreateColorSpaceFromPixelBuffer(v9, &a9, 1, 0);
}

const void *OUTLINED_FUNCTION_47_1(uint64_t a1, const void *a2, uint64_t a3)
{

  return _readDictType(v3, a2, a3, (v4 - 196));
}

CFMutableDictionaryRef OUTLINED_FUNCTION_13()
{

  return CFDictionaryCreateMutable(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  a27 = 0;

  return CMPhotoGetSlimPixelFormatAndFlavorFromFormatDescription(v27, &a27, 0);
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned __int16 a21, unsigned __int16 a22, int a23, int a24)
{

  return _extractInformationAboutTheData(v24, &a24, &a23, &a22, &a21);
}

uint64_t OUTLINED_FUNCTION_13_11@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    v6 = v1;
  }

  else
  {
    v6 = &v1[4 * v4];
  }

  return _extractFloatValuesFromAuxMetaTagValue(v2, v3, v6);
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return CMPhotoAlignValue((v0 + 4) | 7, v1);
}

void _asyncCanvasDecodeFinished(uint64_t a1, const void *a2, int a3, int a4)
{
  os_unfair_lock_lock((a1 + 14576));
  if (a3)
  {
    *(a1 + 14580) = a3;
  }

  v8 = !CFSetContainsValue(*(a1 + 14600), a2) || (CFSetRemoveValue(*(a1 + 14600), a2), CFArrayAppendValue(*(a1 + 14584), a2), CFSetGetCount(*(a1 + 14600))) || *(a1 + 216) == 0;
  CFSetGetCount(*(a1 + 14600));
  os_unfair_lock_unlock((a1 + 14576));
  if (a4)
  {
    if (v8)
    {
      return;
    }
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 224));
    if (v8)
    {
      return;
    }
  }

  v9 = *(a1 + 232);

  dispatch_semaphore_signal(v9);
}

void _canvasItemDecodeCallback(int a1, int a2, CVBufferRef buffer, uint64_t a4, char *a5)
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    if (*v9 == 1)
    {
      kdebug_trace();
    }
  }

  if (*(a4 + 14580) | a2)
  {
    goto LABEL_11;
  }

  v10 = *(a4 + 8);
  if (*v10 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(v10[1] + 16), *v10))
  {
    a2 = -17105;
    goto LABEL_11;
  }

  if (!*(a4 + 156))
  {
    CMPhotoRemoveColorInformationGuessedBy(buffer);
    CMPhotoRemoveChromaInformationFromBuffer(buffer);
  }

  if (*(a4 + 158))
  {
    goto LABEL_10;
  }

  if (!a5[48] && (v13 = CMPhotoSetPixelBufferCLAPFromRect(buffer, 1, 1, *(a4 + 176), *(a4 + 184), *(a4 + 192), *(a4 + 200))) != 0 || ((v14 = *(a5 + 9), v15 = *(a5 + 10), *(a5 + 56) != 0) || v14 | v15) && (v13 = CMPhotoSetPixelBufferCLAPFromRect(buffer, 1, 1, *(a5 + 7), *(a5 + 8), v14, v15)) != 0)
  {
    a2 = v13;
    goto LABEL_11;
  }

  CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(a4 + 48), *(a4 + 56), *(a4 + 64), *(a4 + 72), buffer);
  CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(a4 + 80), *(a4 + 84), buffer);
  if (!*(a5 + 26))
  {
    if (buffer)
    {
      v16 = CFRetain(buffer);
    }

    else
    {
      v16 = 0;
    }

    *(a5 + 26) = v16;
  }

  v17 = *(a4 + 16);
  if (*(v17 + 72) != 1936484717 || *(v17 + 76) != 5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = *"";
    block[2] = ___canvasItemDecodeCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_16;
    block[4] = a5;
    block[5] = a4;
    block[6] = a5;
    block[7] = buffer;
    v34 = 0;
    v35 = 1;
    v18 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    os_unfair_lock_lock((a4 + 14576));
    CFArrayAppendValue(*(a4 + 14592), v18);
    dispatch_async(*(a5 + 5), v18);
    os_unfair_lock_unlock((a4 + 14576));
    dispatch_semaphore_signal(*(a4 + 224));
    goto LABEL_29;
  }

  if (*v9 == 1)
  {
    kdebug_trace();
  }

  v19 = *(a4 + 8);
  v20 = *(v19 + 32);
  v21 = *(v19 + 49);
  v22 = *(v19 + 50);
  v23 = *(v19 + 51);
  v24 = *(v19 + 52);
  v25 = *(v19 + 48);
  v26 = *(v19 + 88);
  LODWORD(v19) = *(a5 + 46);
  v27 = *a5;
  v28 = *(a5 + 10);
  v37[6] = *(a5 + 9);
  v37[7] = v28;
  v38 = *(a5 + 22);
  v29 = *(a5 + 6);
  v37[2] = *(a5 + 5);
  v37[3] = v29;
  v30 = *(a5 + 8);
  v37[4] = *(a5 + 7);
  v37[5] = v30;
  v31 = *(a5 + 4);
  v37[0] = *(a5 + 3);
  v37[1] = v31;
  v32 = *(a5 + 24);
  v36[0] = *(a5 + 8);
  v36[1] = v32;
  a2 = _transferToCanvas(v20, v21, v22, v23, v24, v25, v26, buffer, v37, v19, v36, v27, 0, 0);
  if (!a2 && *v9 == 1)
  {
    kdebug_trace();
LABEL_10:
    a2 = 0;
  }

LABEL_11:
  v11 = *(a5 + 26);
  if (v11)
  {
    CFRelease(v11);
    *(a5 + 26) = 0;
  }

  v12 = *(a5 + 27);
  if (v12)
  {
    CFRelease(v12);
    *(a5 + 27) = 0;
  }

  _asyncCanvasDecodeFinished(a4, a5, a2, 0);
LABEL_29:
  if (*v9 == 1)
  {
    kdebug_trace();
  }
}

uint64_t VTTileDecompressionOutputCallback_Gateway(uint64_t a1)
{
  if (!a1)
  {
    return VTTileDecompressionOutputCallback_Gateway_cold_1();
  }

  if (*a1 == 1 && (v1 = *(a1 + 16)) != 0)
  {
    v2 = *(a1 + 8);

    return v1(v2);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t _decodeItem(_BOOL8 *a1, void *a2, unint64_t DefaultTripletsForTransfer, uint64_t a4, unsigned __int8 *a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v10 = a9;
  v1354 = *MEMORY[0x1E69E9840];
  v1312 = 0;
  pixelBuffer = 0;
  if ((a7 != 0) != (a9 == 0))
  {
    return 4294950306;
  }

  v12 = a7;
  v17 = a1;
  if (*a1 && CMPhotoDecompressionSessionAsyncRequestCancelled(*(a1[1] + 16), *a1))
  {
    goto LABEL_1078;
  }

  *size = 0;
  LODWORD(v1338[0]) = 0;
  LODWORD(__src[0]) = 0;
  DictionaryRepresentation = CFGetAllocator(a2);
  v1297 = a2;
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    OutputFromConstituents = 4294954514;
    goto LABEL_9;
  }

  v19(FigBaseObject, *MEMORY[0x1E6965EF8], DictionaryRepresentation, size);
  OUTLINED_FUNCTION_35_1();
  if (v30)
  {
    OutputFromConstituents = 0;
LABEL_9:
    v22 = v1297;
    goto LABEL_10;
  }

  OutputFromConstituents = v20;
  v22 = v1297;
  if (!v20)
  {
    if (CMPhotoCFDictionaryGetInt32IfPresent() && CMPhotoCFDictionaryGetInt32IfPresent())
    {
      OutputFromConstituents = 0;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_19();
      OutputFromConstituents = FigSignalErrorAtGM();
    }
  }

LABEL_10:
  if (*size)
  {
    CFRelease(*size);
  }

  if (OutputFromConstituents)
  {
    goto LABEL_1070;
  }

  ItemTypeFromReader = _verifyPixelInformationFromPictureReader(v22, 0);
  if (ItemTypeFromReader || (ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(v22, &v1312), ItemTypeFromReader))
  {
    OutputFromConstituents = ItemTypeFromReader;
    goto LABEL_1070;
  }

  OutputFromConstituents = &v1342;
  DictionaryRepresentation = v1338;
  v1310 = 1;
  OUTLINED_FUNCTION_28_3();
  v1293 = v12;
  if (v30)
  {
    v72 = v17;
    v10 = *v17;
    v17 = *(v17 + 8);
    memcpy(__src, (v72 + 16), 0x50uLL);
    a6 = *a5;
    DefaultTripletsForTransfer = *(a5 + 1);
    v73 = *(a5 + 2);
    v74 = a5;
    v75 = *(a5 + 3);
    v76 = *(v74 + 4);
    v77 = *(v74 + 56);
    __dst[0] = *(v74 + 40);
    __dst[1] = v77;
    v78 = *(v74 + 88);
    __dst[2] = *(v74 + 72);
    __dst[3] = v78;
    v1280 = *(v74 + 26);
    DictionaryRepresentation = v74[112];
    v1283 = v74[114];
    v1266 = v74;
    v79 = v22;
    v80 = *(v74 + 15);
    cf[0] = 0;
    *&v1342 = 0;
    *&v1351 = 0;
    *&v1328 = 0;
    *&v1323 = 0;
    *&v1346 = 0;
    LODWORD(v1344) = -1;
    LODWORD(v1331) = -1;
    memset(v1340, 0, 32);
    v81 = CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(v79, cf, v1340, &v1310);
    if (!v81)
    {
      if (!(DefaultTripletsForTransfer | v73))
      {
        if (!(v75 | v76) || (v75 == *&v1340[16] ? (v82 = v76 == *&v1340[24]) : (v82 = 0), v82))
        {
          if (a6)
          {
            memset(v1340, 0, 32);
          }

          goto LABEL_72;
        }
      }

      if (a6)
      {
        *v1340 = DefaultTripletsForTransfer;
        *&v1340[8] = v73;
        *&v1340[16] = v75;
        *&v1340[24] = v76;
        goto LABEL_72;
      }

      *size = DefaultTripletsForTransfer;
      *&size[8] = v73;
      *&size[16] = v75;
      *&size[24] = v76;
      v81 = CMPhotoApplyCropCMPhotoRectToRect(v1340, size);
      if (!v81)
      {
LABEL_72:
        *(v1348 + 5) = *v1340;
        BYTE4(v1348[0]) = 0;
        LODWORD(v1348[0]) = 0;
        size[119] = 0;
        *&size[115] = 0;
        *&size[129] = 0;
        *&size[132] = 0;
        *(&v1348[2] + 5) = *&v1340[16];
        *&size[88] = __dst[3];
        v1338[0] = v10;
        v1338[1] = v17;
        memcpy(&v1338[2], __src, 0x50uLL);
        *&size[3] = *v1348;
        *size = 1;
        size[2] = 0;
        *&size[19] = *&v1348[2];
        *&size[32] = *&v1340[24];
        memset(&size[40], 0, 48);
        *&size[104] = v1280;
        *&size[112] = DictionaryRepresentation;
        size[114] = v1283;
        *&size[120] = v80;
        size[128] = 0;
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_31_0();
        v83 = (_decodeItem)();
        a5 = v1266;
        if (!v83)
        {
          CMPhotoRemoveColorPropertiesFromBuffer(v1342);
          OUTLINED_FUNCTION_26_2();
          OutputFromConstituents = _copyColorInfoForItem(v84, v85, v86, v87, v88, v89, v90, v91, &v1323, &v1346, &v1344, &v1331, 0);
          OUTLINED_FUNCTION_69_0();
          if (!v92)
          {
            CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v1351, v1328, v1323, v1346, v1342);
            CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(v1344, v1331, v1342);
            pixelBuffer = v1342;
            *&v1342 = 0;
          }

LABEL_75:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v1342)
          {
            CFRelease(v1342);
          }

          if (v1351)
          {
            CFRelease(v1351);
          }

          if (v1328)
          {
            CFRelease(v1328);
          }

          if (v1323)
          {
            CFRelease(v1323);
          }

          v93 = v1346;
          if (v1346)
          {
            goto LABEL_362;
          }

          goto LABEL_363;
        }

        OutputFromConstituents = v83;
LABEL_551:
        OUTLINED_FUNCTION_69_0();
        goto LABEL_75;
      }
    }

    OutputFromConstituents = v81;
    a5 = v1266;
    goto LABEL_551;
  }

  if (v24 == 1768912492)
  {
    v1263 = *(v17 + 16);
    v1274 = *(v17 + 24);
    v1277 = *v17;
    v1344 = *(v17 + 32);
    v1345 = *(v17 + 48);
    v1281 = *(v17 + 49);
    v94 = *(v17 + 66);
    v1342 = *(v17 + 50);
    v1343[0] = v94;
    *(v1343 + 14) = *(v17 + 80);
    HIDWORD(v1184) = *a5;
    LODWORD(theArray) = a5[1];
    OUTLINED_FUNCTION_96_0();
    v95 = *(a5 + 1);
    v96 = *(a5 + 2);
    OutputFromConstituents = *(a5 + 3);
    v1198 = *(a5 + 4);
    v97 = *(a5 + 40);
    v98 = *(a5 + 88);
    *&v1340[32] = *(a5 + 72);
    v1341 = v98;
    v99 = *(a5 + 56);
    *v1340 = v97;
    *&v1340[16] = v99;
    *&v97 = *(a5 + 13);
    v1114 = v97;
    LODWORD(v1171) = a5[112];
    LODWORD(v1101) = a5[113];
    LODWORD(v1256) = a5[114];
    v1307 = a5[119];
    v1306 = *(a5 + 115);
    v1249 = *(a5 + 15);
    v1087 = *(a5 + 16);
    v1316 = 0;
    v1291 = v100;
    DefaultTripletsForTransfer = CFGetAllocator(v100);
    DictionaryRepresentation = FigPictureReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      OUTLINED_FUNCTION_86_0();
      goto LABEL_1028;
    }

    v982 = OutputFromConstituents;
    *&v996 = v96;
    *(&v996 + 1) = v95;
    v101 = OUTLINED_FUNCTION_75_0();
    if (v102(v101))
    {
      OUTLINED_FUNCTION_47_0();
      goto LABEL_1028;
    }

    DictionaryRepresentation = v1338;
    memset(__dst, 0, 64);
    v103 = v1316;
    v1338[0] = 0;
    *&__src[0] = 0;
    v1348[0] = 0;
    v1270 = CFGetAllocator(v1316);
    CFDictionaryGetValue(v103, *MEMORY[0x1E69722E8]);
    v104 = FigCFEqual();
    OutputFromConstituents = MEMORY[0x1E69722E0];
    v1286 = v17;
    if (v104)
    {
      v105 = CFDictionaryGetValue(v103, *MEMORY[0x1E69722D8]);
      if (!v105)
      {
LABEL_582:
        v210 = 1;
        goto LABEL_327;
      }

      v106 = v105;
      *size = *MEMORY[0x1E695F060];
      v971 = *MEMORY[0x1E6972358];
      if (FigCFDictionaryGetCGSizeIfPresent())
      {
        *&v107 = OUTLINED_FUNCTION_91_0(*size);
        v1042 = v107;
        if (!v107 || (v1031 = *(&v107 + 1)) == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_19();
          FigSignalErrorAtGM();
          v105 = 0;
          v210 = 1;
          goto LABEL_326;
        }

        *v1066 = v107;
        v108 = CFDictionaryGetValue(v106, *MEMORY[0x1E6972350]);
        if (v108)
        {
          v22 = v108;
          Count = CFArrayGetCount(v108);
          v110 = OUTLINED_FUNCTION_80_0(Count);
          v1146 = v110;
          if (!Count)
          {
LABEL_101:
            v113 = CFDictionaryGetValue(v103, *OutputFromConstituents);
            if (!v113)
            {
              v210 = 1;
              goto LABEL_603;
            }

            v103 = v113;
            v114 = CFArrayGetCount(v113);
            if (Count != 2 * v114)
            {
LABEL_601:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_19();
              FigSignalErrorAtGM();
              goto LABEL_602;
            }

            v115 = v114;
            v105 = v1146;
            v116 = *v1066;
            if (!v115)
            {
              v151 = 0;
              v152 = 0;
              v149 = 0;
              v150 = 0;
              v148 = 0;
              v147 = 0;
              goto LABEL_325;
            }

            v22 = 0;
            v1211 = 0;
            v950 = 0;
            v961 = 0;
            v117 = 0;
            LODWORD(v1019) = 0;
            OutputFromConstituents = 0;
            v890 = 0;
            v920 = 0;
            v930 = 0;
            v940 = 0;
            v1235 = *MEMORY[0x1E69722B8];
            v900 = (v1031 - 1);
            v910 = (v1042 - 1);
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v103, v117);
              if (!ValueAtIndex)
              {
                goto LABEL_601;
              }

              v119 = ValueAtIndex;
              cf[0] = 0;
              v120 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (!v120 || v120(v119, cf))
              {
                goto LABEL_602;
              }

              if (cf[0] >= 1)
              {
                v121 = 0;
                while (1)
                {
                  if (*&__src[0])
                  {
                    CFRelease(*&__src[0]);
                    *&__src[0] = 0;
                  }

                  if (v1348[0])
                  {
                    CFRelease(v1348[0]);
                    v1348[0] = 0;
                  }

                  v122 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                  if (!v122)
                  {
                    break;
                  }

                  if (v122(v119, v121, __src))
                  {
                    break;
                  }

                  v96 = FigPictureReaderGetFigBaseObject();
                  v123 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (!v123 || v123(v96, v1235, v1270, v1348) || CMPhotoGetAuxiliaryImageTypeFromURN() == 3)
                  {
                    break;
                  }

                  if (++v121 >= cf[0])
                  {
                    goto LABEL_120;
                  }
                }

                v210 = 1;
                v17 = v1286;
                OUTLINED_FUNCTION_45_0();
                v211 = v1291;
                DictionaryRepresentation = v1338;
                goto LABEL_604;
              }

LABEL_120:
              if (v1338[0])
              {
                CFRelease(v1338[0]);
                v1338[0] = 0;
              }

              v124 = FigPictureReaderGetFigBaseObject();
              v125 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              DictionaryRepresentation = v1338;
              if (!v125 || v125(v124, v971, v1270, v1338))
              {
                goto LABEL_602;
              }

              if (!CGSizeMakeWithDictionaryRepresentation(v1338[0], size))
              {
                goto LABEL_601;
              }

              v126 = vcvtad_u64_f64(*size);
              if (!v126)
              {
                goto LABEL_601;
              }

              v127 = vcvtad_u64_f64(*&size[8]);
              if (!v127)
              {
                goto LABEL_601;
              }

              if (v117)
              {
                v128 = v22 - 1;
                v116 = *v1066;
                if (OutputFromConstituents >= v22 - 1 || (OUTLINED_FUNCTION_90_0(), v129 == v130))
                {
                  if (OutputFromConstituents == v128 && !v1019)
                  {
                    v133 = v961 >= v126 && v930 <= v126 && v950 == v127;
                    v940 = v126;
                    if (!v133)
                    {
                      goto LABEL_602;
                    }

                    goto LABEL_174;
                  }

                  if (!OutputFromConstituents)
                  {
                    OUTLINED_FUNCTION_90_0();
                    if (v30)
                    {
                      v140 = v961 == v126 && v950 >= v127;
                      v141 = !v140 || v890 > v127;
                      v920 = v127;
                      if (v141)
                      {
                        goto LABEL_602;
                      }

                      goto LABEL_174;
                    }
                  }

                  if (OutputFromConstituents == v128)
                  {
                    v131 = v940;
                    if (v1019 != v1211 - 1)
                    {
                      goto LABEL_166;
                    }
                  }

                  else
                  {
                    v131 = v961;
                  }

                  v142 = v131 == v126;
                  v143 = v920;
LABEL_169:
                  if (!v142 || v143 != v127)
                  {
                    goto LABEL_602;
                  }

                  goto LABEL_174;
                }

                v131 = v961;
LABEL_166:
                v142 = v131 == v126;
                v143 = v950;
                goto LABEL_169;
              }

              v22 = ((v910 + v126) / v126);
              v1211 = ((v900 + v127) / v127);
              v116 = *v1066;
              if (v115 != v1211 * v22)
              {
                goto LABEL_602;
              }

              if (((v900 + v127) / v127))
              {
                break;
              }

LABEL_151:
              v930 = v1042 - (v22 - 1) * v126;
              v940 = v126;
              v890 = (v1031 - (v1211 - 1) * v127);
              v920 = v127;
              v950 = v127;
              v961 = v126;
LABEL_174:
              v145 = OutputFromConstituents + 1 == v22;
              if (OutputFromConstituents + 1 == v22)
              {
                OutputFromConstituents = 0;
              }

              else
              {
                OutputFromConstituents = (OutputFromConstituents + 1);
              }

              v146 = v1019;
              if (v145)
              {
                v146 = v1019 + 1;
              }

              LODWORD(v1019) = v146;
              if (++v117 == v115)
              {
                v147 = v22;
                v148 = v1211;
                v105 = v1146;
                v149 = v950;
                v150 = v961;
                v151 = v940;
                v152 = v920;
LABEL_325:
                v210 = 0;
                *&__dst[0] = v147;
                *(&__dst[0] + 1) = v148;
                *&__dst[1] = v150;
                *(&__dst[1] + 1) = v149;
                *&__dst[2] = v151;
                *(&__dst[2] + 1) = v152;
                __dst[3] = v116;
                v17 = v1286;
LABEL_326:
                v22 = v1297;
LABEL_327:
                OutputFromConstituents = &v1342;
                v211 = v1291;
                goto LABEL_605;
              }
            }

            v134 = 0;
            v135 = 0;
            v136 = 0;
            while (!((v910 + v126) / v126))
            {
LABEL_150:
              v136 += v127;
              if (++v134 >= v1211)
              {
                goto LABEL_151;
              }
            }

            v137 = 0;
            v138 = (v1146 + 4 + 4 * v135);
            v139 = -v126;
            while (1)
            {
              v139 += v126;
              if (v139 != *(v138 - 1) || *v138 != v136)
              {
                break;
              }

              v135 += 2;
              v138 += 2;
              if (++v137 >= v22)
              {
                goto LABEL_150;
              }
            }

LABEL_602:
            v210 = 1;
            v17 = v1286;
LABEL_603:
            OUTLINED_FUNCTION_45_0();
            v211 = v1291;
LABEL_604:
            v105 = v1146;
LABEL_605:
            free(v105);
            if (v1338[0])
            {
              CFRelease(v1338[0]);
            }

            if (*&__src[0])
            {
              CFRelease(*&__src[0]);
            }

            if (v1348[0])
            {
              CFRelease(v1348[0]);
            }

            v1296 = a6;
            if (v210)
            {
              LODWORD(v1235) = 0;
LABEL_613:
              DefaultTripletsForTransfer = v1316;
              *(OutputFromConstituents + 80) = *(OutputFromConstituents + 48);
              v1347 = v1345;
              v355 = *(OutputFromConstituents + 16);
              *(OutputFromConstituents + 176) = *OutputFromConstituents;
              *(OutputFromConstituents + 192) = v355;
              *(OutputFromConstituents + 206) = *(OutputFromConstituents + 30);
              OUTLINED_FUNCTION_49();
              v1178 = CFGetAllocator(v211);
              *&v356 = OUTLINED_FUNCTION_51_0();
              *(v357 + 48) = v356;
              *(v357 + 64) = v356;
              v1331 = 0uLL;
              if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v22, v211[28], &v1351, &v1331) || OUTLINED_FUNCTION_115())
              {
                OUTLINED_FUNCTION_101_0();
                v10 = a9;
                LOBYTE(v22) = v1235;
              }

              else
              {
                v358 = CFDictionaryGetValue(DefaultTripletsForTransfer, *MEMORY[0x1E69722D8]);
                DictionaryRepresentation = v358;
                v10 = a9;
                LOBYTE(v22) = v1235;
                if (v358)
                {
                  v359 = CFDictionaryGetValue(v358, *MEMORY[0x1E6972358]);
                  if (!v359 || (value = 0uLL, !CMPhotoSizeMakeWithDictionaryRepresentation(v359, &value)) || (value.i64[0] == v1331 ? (v360 = value.i64[1] == *(&v1331 + 1)) : (v360 = 0), !v360))
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    FigSignalErrorAtGM();
                    OUTLINED_FUNCTION_101_0();
                    goto LABEL_1011;
                  }

                  v361 = CFDictionaryGetValue(DictionaryRepresentation, *MEMORY[0x1E6972348]);
                  if (v361 && (v1270 = CFRetain(v361)) != 0)
                  {
                    v362 = CFDictionaryGetValue(DictionaryRepresentation, *MEMORY[0x1E6972350]);
                    if (v362)
                    {
                      v363 = v17;
                      v364 = CFArrayGetCount(v362);
                      if (v364)
                      {
                        v365 = v364;
                        v17 = OUTLINED_FUNCTION_80_0(v364);
                        v366 = 0;
                        DictionaryRepresentation = v17;
                        while (FigCFArrayGetInt32AtIndex())
                        {
                          ++v366;
                          v17 += 4;
                          if (v365 == v366)
                          {
                            goto LABEL_935;
                          }
                        }
                      }

                      else
                      {
                        DictionaryRepresentation = 0;
                      }
                    }

                    else
                    {
                      v363 = v17;
                      DictionaryRepresentation = 0;
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    OutputFromConstituents = FigSignalErrorAtGM();
                    CFRelease(v1270);
                    v10 = a9;
                    v17 = v363;
                    LOBYTE(v22) = v1235;
                    v367 = DictionaryRepresentation;
                  }

                  else
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    OutputFromConstituents = FigSignalErrorAtGM();
                    v367 = 0;
                  }

                  free(v367);
                  v1270 = 0;
                  DictionaryRepresentation = 0;
                  v96 = 0;
                  if (OutputFromConstituents)
                  {
                    goto LABEL_1011;
                  }

LABEL_935:
                  v508 = v1331;
                  v1338[0] = 0;
                  v1348[0] = 0;
                  cf[0] = 0;
                  *&v1328 = 0;
                  LODWORD(v1322) = -1;
                  LODWORD(v1321[0]) = -1;
                  *&v1323 = 0;
                  *&v1327 = 0;
                  v509 = _copyColorInfoForItem(v1291, v1297, 0, 0, &v1327, 0, v1338, v1348, cf, &v1328, &v1322, v1321, 0);
                  if (v509)
                  {
                    OutputFromConstituents = v509;
                    goto LABEL_1094;
                  }

                  *&v510 = OUTLINED_FUNCTION_51_0();
                  *(v511 + 96) = v510;
                  *(v511 + 112) = v510;
                  OUTLINED_FUNCTION_55_0();
                  v514 = _createPixelBuffer(v512, v513, v1281, 1111970369, v508, *(&v508 + 1), v508, *(&v508 + 1), v653, v667, v683, v699);
                  v515 = v1323;
                  if (v514)
                  {
                    OutputFromConstituents = v514;
                    if (v1323)
                    {
                      goto LABEL_1093;
                    }

                    v96 = 0;
                  }

                  else if (v1323)
                  {
                    v516 = DictionaryRepresentation;
                    v517 = OUTLINED_FUNCTION_5_2();
                    v519 = CVPixelBufferLockBaseAddress(v517, v518);
                    if (v519)
                    {
                      OutputFromConstituents = v519;
                    }

                    else
                    {
                      BytesPerRow = CVPixelBufferGetBytesPerRow(v515);
                      CVPixelBufferGetHeight(v515);
                      v521 = OUTLINED_FUNCTION_106_0();
                      Width = CVPixelBufferGetWidth(v521);
                      BaseAddress = CVPixelBufferGetBaseAddress(v515);
                      v524 = CGBitmapContextCreate(BaseAddress, Width, v17, 8uLL, BytesPerRow, v1338[0], 0x2006u);
                      if (v524)
                      {
                        v17 = v524;
                        CGContextSetFillColorWithColor(v524, v1270);
                        v1356.size.width = v508;
                        v1356.size.height = *(&v508 + 1);
                        v1356.origin.x = 0.0;
                        v1356.origin.y = 0.0;
                        CGContextFillRect(v17, v1356);
                        CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v1338[0], v1348[0], cf[0], v1328, v515);
                        CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(v1322, v1321[0], v515);
                        CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(v1327, v515);
                        OutputFromConstituents = 0;
                        *&v1323 = 0;
                        DictionaryRepresentation = v516;
                        v96 = v17;
                        goto LABEL_941;
                      }

                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_19();
                      OutputFromConstituents = FigSignalErrorAtGM();
                      v642 = OUTLINED_FUNCTION_5_2();
                      CVPixelBufferUnlockBaseAddress(v642, v643);
                    }

                    DictionaryRepresentation = v516;
LABEL_1093:
                    CFRelease(v515);
LABEL_1094:
                    v96 = 0;
                    v515 = 0;
                  }

                  else
                  {
                    v96 = 0;
                    OutputFromConstituents = 4294950305;
                  }

LABEL_941:
                  if (v1327)
                  {
                    CFRelease(v1327);
                  }

                  if (v1338[0])
                  {
                    CFRelease(v1338[0]);
                  }

                  if (v1348[0])
                  {
                    CFRelease(v1348[0]);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  if (v1328)
                  {
                    CFRelease(v1328);
                  }

                  if (!OutputFromConstituents)
                  {
                    LODWORD(v1146) = CVPixelBufferGetPixelFormatType(v515);
                    v525 = CFDictionaryGetValue(DefaultTripletsForTransfer, *MEMORY[0x1E69722E0]);
                    if (v525)
                    {
                      memset(v1348, 0, 37);
                      v1325 = 0;
                      v1326 = 0;
                      LODWORD(BOOLean) = 0;
                      *(&BOOLean + 3) = 0;
                      v1328 = 0u;
                      v1329 = 0u;
                      v1327 = 0uLL;
                      memset(cf, 0, 37);
                      v1320 = 0;
                      v1319 = 0;
                      *(v1318 + 3) = 0;
                      v1318[0] = 0;
                      DefaultTripletsForTransfer = cf;
                      v1323 = 0u;
                      v1324 = 0u;
                      v1322 = 0uLL;
                      v1321[0] = 0;
                      v1321[1] = 0;
                      theArrayc = v525;
                      v1061 = CFArrayGetCount(v525);
                      if (v1061)
                      {
                        v526 = 0;
                        a6 = size;
                        *&v1114 = &size[3];
                        v17 = *MEMORY[0x1E69722B8];
                        LODWORD(v1101) = v1281 == 0;
                        v1066[0] = DictionaryRepresentation;
                        v1094 = v96;
                        while (1)
                        {
                          if (v1337)
                          {
                            CFRelease(v1337);
                            v1337 = 0;
                          }

                          if (v1333)
                          {
                            CFRelease(v1333);
                            v1333 = 0;
                          }

                          if (v1336)
                          {
                            CFRelease(v1336);
                            v1336 = 0;
                          }

                          if (v1332)
                          {
                            CFRelease(v1332);
                            v1332 = 0;
                          }

                          v527 = (DictionaryRepresentation + 8 * v526);
                          v528 = *v527;
                          *v1219 = v1331;
                          v529 = CFArrayGetValueAtIndex(theArrayc, v526);
                          if (!v529)
                          {
                            break;
                          }

                          v537 = v529;
                          *&v1338[4] = v1346;
                          *(&v1338[6] + 2) = __src[0];
                          *(&v1338[8] + 2) = __src[1];
                          *&v1338[10] = *(&__src[1] + 14);
                          v538 = *&v1348[2];
                          *v1114 = *v1348;
                          *(v1114 + 16) = v538;
                          *&size[40] = v1328;
                          *&size[56] = v1329;
                          OUTLINED_FUNCTION_25_3(v529, v530, v531, v532, v533, v534, v535, v536, v653, v667, v683, v699, v713, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v982, v996, *(&v996 + 1), v1019, v1031, v1042, v1061, v1066[0], v1066[1], v1094, v1101, v1114, *(&v1114 + 1), v1136, v1146, theArrayc, v1178, v1184, v1198, v1219[0], v1219[1], v1235, v1249, v1256);
                          *(v540 + 48) = v539;
                          BYTE1(v1338[6]) = v1281;
                          OUTLINED_FUNCTION_23_2();
                          *(v541 + 29) = *(&v1348[3] + 5);
                          *&size[72] = vsubw_s32(v1220, v528);
                          *&size[88] = v542;
                          *&size[104] = v1154;
                          *&size[112] = 0;
                          OUTLINED_FUNCTION_107_0(v543, v544, v545, v546, v547, v548, v549, v550, v654, v668, v684, v700, v714, v724, v735, v746, v756, v766, v776, v786, v796, v806, v816, v826, v836, v846, v856, v866, objectf, v886, v896, v906, v916, v926, v936, v946, v957, v967, v977, v990, v1003, v1015, v1027, v1038, v1050, v1062, v1073, v1082, v1095, v1107, v1122, v1132, v1142, v1154, theArrayi, v1180, v1190, v1205, v1220.i64[0], v1220.i64[1], v1242, v1252, v1258);
                          size[119] = v1326;
                          *&size[115] = v1325;
                          OUTLINED_FUNCTION_56_0(v551, v552, v553, v554, v555, v556, v557, v558, v655, v669, v685, v701, v715, v725, v736, v747, v757, v767, v777, v787, v797, v807, v817, v827, v837, v847, v857, v867, objectg, v887, v897, v907, v917, v927, v937, v947, v958, v968, v978, v991, v1004, v1016, v1028, v1039, v1051, v1063, v1074, v1083, v1096, v1108, v1123, v1133, v1143, v1155, theArrayj, v1181, v1191, v1206, v1221, v1231, v1243, v1253);
                          *&size[132] = *(&BOOLean + 3);
                          *&size[129] = BOOLean;
                          OUTLINED_FUNCTION_17_6();
                          OUTLINED_FUNCTION_31_0();
                          WrappedPixelBufferForType = _decodeItem(v559, v560, v561, v562, v563, v564, v565, v566);
                          if (WrappedPixelBufferForType)
                          {
                            goto LABEL_1098;
                          }

                          v568 = v1178;
                          WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v1178, v1337, v1101, 4, &v1333);
                          if (WrappedPixelBufferForType)
                          {
                            goto LABEL_1098;
                          }

                          v1317 = 0;
                          v569 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                          if (!v569)
                          {
LABEL_991:
                            OutputFromConstituents = 4294954514;
                            goto LABEL_992;
                          }

                          WrappedPixelBufferForType = v569(v537, &v1317);
                          if (WrappedPixelBufferForType)
                          {
                            goto LABEL_1098;
                          }

                          if (v1317 >= 1)
                          {
                            DefaultTripletsForTransfer = 0;
                            while (1)
                            {
                              if (v1335)
                              {
                                CFRelease(v1335);
                                v1335 = 0;
                              }

                              if (v1334)
                              {
                                CFRelease(v1334);
                                v1334 = 0;
                              }

                              v570 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                              if (!v570)
                              {
                                goto LABEL_991;
                              }

                              WrappedPixelBufferForType = v570(v537, DefaultTripletsForTransfer, &v1335);
                              if (WrappedPixelBufferForType)
                              {
                                goto LABEL_1098;
                              }

                              v571 = FigPictureReaderGetFigBaseObject();
                              v572 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                              if (!v572)
                              {
                                goto LABEL_991;
                              }

                              WrappedPixelBufferForType = v572(v571, v17, v1178, &v1334);
                              if (WrappedPixelBufferForType)
                              {
                                goto LABEL_1098;
                              }

                              AuxiliaryImageTypeFromURN = CMPhotoGetAuxiliaryImageTypeFromURN();
                              if (AuxiliaryImageTypeFromURN == 3)
                              {
                                break;
                              }

                              if (++DefaultTripletsForTransfer >= v1317)
                              {
                                goto LABEL_980;
                              }
                            }

                            *&v1338[4] = v1346;
                            *(&v1338[6] + 2) = __src[0];
                            *(&v1338[8] + 2) = __src[1];
                            *&v1338[10] = *(&__src[1] + 14);
                            v582 = *&cf[2];
                            *v1114 = *cf;
                            *(v1114 + 16) = v582;
                            *&size[40] = v1323;
                            *&size[56] = v1324;
                            *&size[72] = v1322;
                            OUTLINED_FUNCTION_25_3(AuxiliaryImageTypeFromURN, v1335, v574, v575, v576, v577, v578, v579, v653, v667, v683, v699, v713, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v982, v996, *(&v996 + 1), v1019, v1031, v1042, v1061, v1066[0], v1066[1], v1094, v1101, v1114, *(&v1114 + 1), v1136, v1146, theArrayc, v1178, v1184, v1198, v1222, v1232, v1235, v1249, v1256);
                            *(v584 + 48) = v583;
                            BYTE1(v1338[6]) = v1281;
                            OUTLINED_FUNCTION_23_2();
                            *(v586 + 29) = *(v585 + 29);
                            *&size[88] = v587;
                            *&size[104] = 1278226488;
                            *&size[112] = 1;
                            OUTLINED_FUNCTION_107_0(v588, v589, v590, v591, v592, v593, v594, v595, v656, v670, v686, v702, v716, v726, v737, v748, v758, v768, v778, v788, v798, v808, v818, v828, v838, v848, v858, v868, objecth, v888, v898, v908, v918, v928, v938, v948, v959, v969, v979, v992, v1005, v1017, v1029, v1040, v1052, v1064, v1075, v1084, v1097, v1109, v1124, v1134, v1144, v1156, theArrayk, v1182, v1192, v1207, v1223, v1233, v1244, v1254, v1259);
                            size[119] = v1320;
                            *&size[115] = v1319;
                            OUTLINED_FUNCTION_56_0(v596, v597, v598, v599, v600, v601, v602, v603, v657, v671, v687, v703, v717, v727, v738, v749, v759, v769, v779, v789, v799, v809, v819, v829, v839, v849, v859, v869, objecti, v889, v899, v909, v919, v929, v939, v949, v960, v970, v980, v993, v1006, v1018, v1030, v1041, v1053, v1065, v1076, v1085, v1098, v1110, v1125, v1135, v1145, v1157, theArrayl, v1183, v1193, v1208, v1224, v1234, v1245, v1255);
                            *&size[132] = *(v604 + 35);
                            *&size[129] = v1318[0];
                            OUTLINED_FUNCTION_17_6();
                            OUTLINED_FUNCTION_10_0();
                            OUTLINED_FUNCTION_31_0();
                            WrappedPixelBufferForType = _decodeItem(v605, v606, v607, v608, v609, v610, v611, v612);
                            if (WrappedPixelBufferForType)
                            {
                              goto LABEL_1098;
                            }

                            WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v568, v1336, v1101, 4, &v1332);
                            if (WrappedPixelBufferForType)
                            {
                              goto LABEL_1098;
                            }
                          }

LABEL_980:
                          DefaultTripletsForTransfer = v1333;
                          if (v1332)
                          {
                            v580 = CGImageCreateWithMask(v1333, v1332);
                            v96 = v1094;
                            if (!v580)
                            {
                              break;
                            }

                            DefaultTripletsForTransfer = v580;
                            if (v1333)
                            {
                              CFRelease(v1333);
                            }

                            v1333 = DefaultTripletsForTransfer;
                          }

                          else
                          {
                            v96 = v1094;
                          }

                          v581 = CGImageGetWidth(DefaultTripletsForTransfer);
                          v1357.size.height = CGImageGetHeight(v1333);
                          v1357.origin.x = v527->i32[0];
                          DictionaryRepresentation = v1066[0];
                          v1357.origin.y = (*(&v1331 + 1) - *(v1066[0] + 4 * ((2 * v526) | 1))) - v1357.size.height;
                          v1357.size.width = v581;
                          CGContextDrawImage(v96, v1357, v1333);
                          ++v526;
                          DefaultTripletsForTransfer = cf;
                          if (v526 == v1061)
                          {
                            goto LABEL_995;
                          }
                        }

                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_19();
                        WrappedPixelBufferForType = FigSignalErrorAtGM();
LABEL_1098:
                        OutputFromConstituents = WrappedPixelBufferForType;
LABEL_992:
                        OUTLINED_FUNCTION_41_1();
                        LOBYTE(v22) = v1235;
                        DictionaryRepresentation = v1066[0];
                        v96 = v1094;
LABEL_993:
                        if (v515)
                        {
                          v613 = OUTLINED_FUNCTION_5_2();
                          CVPixelBufferUnlockBaseAddress(v613, v614);
                          CFRelease(v515);
                        }

LABEL_1010:
                        v10 = a9;
                        goto LABEL_1011;
                      }

LABEL_995:
                      CGContextFlush(v96);
                      if (v96)
                      {
                        CFRelease(v96);
                      }

                      v615 = OUTLINED_FUNCTION_5_2();
                      CVPixelBufferUnlockBaseAddress(v615, v616);
                      OUTLINED_FUNCTION_41_1();
                      LOBYTE(v22) = v1235;
                      if (HIDWORD(v1184))
                      {
                        v1351 = 0uLL;
                        *v1352 = v1331;
                      }

                      if (v996 == 0 && (!(v982 | v1198) || (v982 == *v1352 ? (v618 = v1198 == *&v1352[8]) : (v618 = 0), v618)) || (*size = *(&v996 + 1), *&size[8] = v996, *&size[16] = v982, *&size[24] = v1198, v617 = CMPhotoApplyCropCMPhotoRectToRect(&v1351, size), !v617))
                      {
                        v619 = OUTLINED_FUNCTION_14_5(*&v1351);
                        OutputFromConstituents = OUTLINED_FUNCTION_77_0(v515, v619, v620, *v1352, *&v1352[8]);
                        if (!OutputFromConstituents)
                        {
                          v96 = 0;
                          pixelBuffer = v515;
                          goto LABEL_1010;
                        }
                      }

                      else
                      {
                        OutputFromConstituents = v617;
                      }

                      v96 = 0;
                      goto LABEL_993;
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_19();
                    OutputFromConstituents = FigSignalErrorAtGM();
                  }

                  OUTLINED_FUNCTION_41_1();
                  LOBYTE(v22) = v1235;
                  goto LABEL_993;
                }

                v1270 = 0;
                v96 = 0;
                OutputFromConstituents = 4294950304;
              }

LABEL_1011:
              if (v1337)
              {
                CFRelease(v1337);
              }

              if (v1336)
              {
                CFRelease(v1336);
              }

              if (v96)
              {
                CFRelease(v96);
              }

              if (v1270)
              {
                CFRelease(v1270);
              }

              if (v1335)
              {
                CFRelease(v1335);
              }

              if (v1334)
              {
                CFRelease(v1334);
              }

              if (v1333)
              {
                CFRelease(v1333);
              }

              if (v1332)
              {
                CFRelease(v1332);
              }

              free(DictionaryRepresentation);
              goto LABEL_1028;
            }

            DefaultTripletsForTransfer = v1316;
            *&__src[0] = v1277;
            *(&__src[0] + 1) = v211;
            *&__src[1] = v1263;
            *(&__src[1] + 1) = v1274;
            *(OutputFromConstituents + 208) = *(OutputFromConstituents + 48);
            LOBYTE(__src[3]) = v1345;
            BYTE1(__src[3]) = v1281;
            v368 = *(OutputFromConstituents + 16);
            *(OutputFromConstituents + 226) = *OutputFromConstituents;
            *(OutputFromConstituents + 242) = v368;
            *(OutputFromConstituents + 256) = *(OutputFromConstituents + 30);
            LODWORD(v1335) = v1308;
            WORD2(v1335) = v1309;
            v369 = *&v1340[16];
            *(OutputFromConstituents + 112) = *v1340;
            *(OutputFromConstituents + 128) = v369;
            v370 = v1341;
            *(OutputFromConstituents + 144) = *&v1340[32];
            *(OutputFromConstituents + 160) = v370;
            LODWORD(v1333) = v1306;
            BYTE4(v1333) = v1307;
            *&v1327 = 0;
            *&v1322 = 0;
            if (v1277)
            {
              v371 = v1277;
            }

            else
            {
              v371 = v211;
            }

            v850 = v371;
            v1321[0] = 0;
            if (OUTLINED_FUNCTION_115())
            {
              OUTLINED_FUNCTION_92_0();
              goto LABEL_902;
            }

            v372 = __dst[0];
            v96 = *(&__dst[1] + 1);
            v1146 = *&__dst[1];
            v930 = *(&__dst[2] + 1);
            v971 = *&__dst[2];
            *(OutputFromConstituents + 80) = __dst[3];
            v1328 = 0u;
            v1329 = 0u;
            if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v22, *(*(&__src[0] + 1) + 28), &v1328, 0))
            {
              goto LABEL_1101;
            }

            v860 = v372;
            v373 = v372 - 1;
            DictionaryRepresentation = *(&v372 + 1) - 1;
            if (HIDWORD(v1184))
            {
              v1328 = 0uLL;
              *&v1329 = v971 + v1146 * v373;
              *(&v1329 + 1) = v930 + v96 * DictionaryRepresentation;
            }

            object = *(&v372 + 1);
            if (v996 != 0 || v982 | v1198 && (v982 == v1329 ? (v374 = v1198 == *(&v1329 + 1)) : (v374 = 0), !v374))
            {
              *size = *(&v996 + 1);
              *&size[8] = v996;
              *&size[16] = v982;
              *&size[24] = v1198;
              if (CMPhotoApplyCropCMPhotoRectToRect(&v1328, size))
              {
LABEL_1101:
                OUTLINED_FUNCTION_92_0();
LABEL_1105:
                a6 = v1296;
                goto LABEL_902;
              }
            }

            v375 = v1328 / v1146;
            v1270 = *(&v1328 + 1) / v96;
            *&v1328 = v1328 % v1146;
            *(&v1328 + 1) %= v96;
            *&v1346 = v1329 + v1328;
            *(&v1346 + 1) = *(&v1329 + 1) + *(&v1328 + 1);
            v1031 = *(&v1329 + 1) + *(&v1328 + 1);
            v1042 = v1329 + v1328;
            v950 = v1329 + v1328 + v1146 + ~((v1329 + v1328 - 1) % v1146);
            *&v1331 = v1146;
            *(&v1331 + 1) = v96;
            v376 = v950 / v1146 * v1146;
            v1019 = *(&v1329 + 1) + *(&v1328 + 1) + v96 + ~((*(&v1329 + 1) + *(&v1328 + 1) - 1) % v96);
            v1059 = v1019 / v96;
            v1066[0] = v950 / v1146;
            v377 = v1019 / v96 * v96;
            *&v1323 = v376;
            *(&v1323 + 1) = v377;
            v1235 = v375;
            if (v950 / v1146 + v375 == v372)
            {
              v376 = v376 - v1146 + v971;
              *&v1323 = v376;
            }

            if (v1059 + v1270 == *(&v372 + 1))
            {
              v377 = v377 - v96 + v930;
              *(&v1323 + 1) = v377;
            }

            if (v375 == v373)
            {
              *&v1331 = v971;
            }

            v830 = v377;
            a6 = v1293;
            if (v1270 == DictionaryRepresentation)
            {
              *(&v1331 + 1) = v930;
            }

            v378 = CFDictionaryGetValue(DefaultTripletsForTransfer, *MEMORY[0x1E69722E0]);
            if (!v378)
            {
              LODWORD(v1235) = 0;
              LODWORD(v103) = 0;
              goto LABEL_1105;
            }

            v1337 = 0;
            v1217 = v378;
            if (_getLayerReaderAtPosition(v378, v1235, v1270, __dst, &v1337))
            {
              goto LABEL_1101;
            }

            DefaultTripletsForTransfer = v1337;
            DictionaryRepresentation = *(&__src[0] + 1);
            OUTLINED_FUNCTION_88_0();
            value.i32[0] = -1;
            LODWORD(v1336) = -1;
            LOBYTE(v1334) = 0;
            OUTLINED_FUNCTION_26_2();
            v387 = _copyColorInfoForItem(v379, v380, v381, v382, v383, v384, v385, v386, cf, &v1351, value.i32, &v1336, &v1334);
            if (v387)
            {
              LODWORD(v103) = v387;
              v507 = *size;
              if (*size)
              {
LABEL_919:
                CFRelease(v507);
              }

LABEL_920:
              v880 = 0;
              v890 = 0;
              v900 = 0;
              v910 = 0;
              v390 = -1;
              HIDWORD(v840) = -1;
            }

            else
            {
              v388 = v1351;
              if (v1334 && v1351)
              {
                CFRelease(v1351);
                v388 = 0;
                *&v1351 = 0;
              }

              v389 = *size;
              if (*size && v1338[0] && cf[0] && v388)
              {
                v890 = v1338[0];
                v900 = cf[0];
                v910 = v388;
                goto LABEL_667;
              }

              v495 = cf;
              if (cf[0])
              {
                v495 = 0;
              }

              v496 = &v1351;
              if (v388)
              {
                v496 = 0;
              }

              p_value = &value;
              if (value.i32[0] != -1)
              {
                p_value = 0;
              }

              v498 = &v1336;
              if (v1336 != -1)
              {
                v498 = 0;
              }

              v698 = v498;
              v666 = v496;
              v682 = p_value;
              v652 = v495;
              OUTLINED_FUNCTION_21_5();
              OUTLINED_FUNCTION_26_2();
              LODWORD(v103) = _copyColorInfoForItem(v499, v500, v501, v502, v503, v504, v505, v506, v652, v666, v682, v698, 0);
              v507 = *size;
              if (v103)
              {
                if (*size)
                {
                  goto LABEL_919;
                }

                goto LABEL_920;
              }

              v890 = v1338[0];
              v900 = cf[0];
              v910 = v1351;
              v389 = *size;
LABEL_667:
              v880 = v389;
              LODWORD(v103) = 0;
              OUTLINED_FUNCTION_88_0();
              HIDWORD(v840) = value.i32[0];
              v390 = v1336;
            }

            LODWORD(v840) = v390;
            if (v1338[0])
            {
              CFRelease(v1338[0]);
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            if (v1351)
            {
              CFRelease(v1351);
            }

            if (!v103)
            {
              LODWORD(v1332) = 0;
              ImageCodecTypeFromReader = CMPhotoPictureReaderGetImageCodecTypeFromReader(v1337, &v1332);
              if (!ImageCodecTypeFromReader)
              {
                if (v1332 == 1936484717 && (v1066[0] != 1 || v1059 > 4))
                {
                  LODWORD(v1235) = 0;
                  LODWORD(v103) = -16999;
                  goto LABEL_696;
                }

                v393 = ((v996 % v96) | (*(&v996 + 1) % v1146)) == 0;
                if (theArray)
                {
                  v394 = v1310 == 1;
                }

                else
                {
                  v394 = 1;
                }

                v395 = !v394 || v1293 == 0;
                v396 = !v395;
                if (v395)
                {
                  v393 = 0;
                }

                LODWORD(v920) = v393;
                if (v393 && (!*v1293 || *(v1293 + 8) != 0 || *(v1293 + 24) != 0 || !*(v1293 + 40)))
                {
                  LODWORD(v1235) = 0;
                  LODWORD(v103) = -16992;
                  goto LABEL_696;
                }

                HIDWORD(v770) = v396;
                cf[0] = 0;
                *&v1351 = 0;
                memset(size, 0, 24);
                memset(v1338, 0, 24);
                v397 = CFGetAllocator(v1217);
                v940 = v96;
                v800 = v376;
                if (v96 > v1019)
                {
                  LODWORD(v961) = 1;
                  goto LABEL_738;
                }

                DefaultTripletsForTransfer = v397;
                v398 = 0;
                LODWORD(v961) = 0;
                DictionaryRepresentation = *MEMORY[0x1E69722F8];
                while (1)
                {
                  OUTLINED_FUNCTION_59_0();
                  if (v30 || !v140)
                  {
                    break;
                  }

LABEL_704:
                  if (++v398 == v1059)
                  {
                    LODWORD(v961) = 1;
                    goto LABEL_737;
                  }
                }

                v399 = 0;
                while (2)
                {
                  value.i64[0] = 0;
                  if (_getLayerReaderAtPosition(v1217, v399 + v1235, v398 + v1270, __dst, &value))
                  {
                    goto LABEL_737;
                  }

                  LODWORD(v1336) = 0;
                  if (CMPhotoPictureReaderGetItemTypeFromReader(value.i64[0], &v1336))
                  {
                    goto LABEL_737;
                  }

                  OUTLINED_FUNCTION_24_1();
                  v401 = v30 || v400 == 1768187246;
                  if (v401 || v400 == 1768912492)
                  {
                    goto LABEL_737;
                  }

                  if (!(v399 | v398))
                  {
                    FigPictureReaderGetFigBaseObject();
                    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
                    {
                      goto LABEL_736;
                    }

                    v409 = OUTLINED_FUNCTION_108();
                    if (v410(v409))
                    {
                      goto LABEL_736;
                    }

                    v96 = v940;
                    if (v1336 == 1936484717 && _getDecoderReusableInfoForOverlay())
                    {
                      goto LABEL_737;
                    }

                    goto LABEL_726;
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                    cf[0] = 0;
                  }

                  FigPictureReaderGetFigBaseObject();
                  if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v403 = OUTLINED_FUNCTION_108(), v404(v403)))
                  {
LABEL_736:
                    v96 = v940;
                    goto LABEL_737;
                  }

                  v96 = v940;
                  if (v1336 != 1936484717)
                  {
                    OUTLINED_FUNCTION_10_0();
                    LODWORD(v961) = CMFormatDescriptionEqualIgnoringExtensionKeys(v405, v406, v407, v408);
                    if (!v961)
                    {
                      goto LABEL_1102;
                    }

LABEL_726:
                    if (v1066[0] == ++v399)
                    {
                      goto LABEL_704;
                    }

                    continue;
                  }

                  break;
                }

                if (_getDecoderReusableInfoForOverlay())
                {
                  goto LABEL_737;
                }

                v411 = v1338[0];
                if (LODWORD(v1338[0]) == *size)
                {
                  v412 = FigCFEqual();
                  LODWORD(v961) = 0;
                  if (v411 != 1936484717)
                  {
                    goto LABEL_1122;
                  }

                  v376 = v800;
                  if (!v412)
                  {
                    goto LABEL_737;
                  }

                  if (LODWORD(v1338[2]) != *&size[16])
                  {
LABEL_1102:
                    LODWORD(v961) = 0;
                    goto LABEL_737;
                  }

                  LODWORD(v961) = 1;
                  goto LABEL_726;
                }

                LODWORD(v961) = 0;
LABEL_1122:
                v376 = v800;
LABEL_737:
                v17 = v1286;
                a6 = v1293;
                v22 = v1297;
LABEL_738:
                if (cf[0])
                {
                  CFRelease(cf[0]);
                }

                if (v1351)
                {
                  CFRelease(v1351);
                }

                if (*&size[8])
                {
                  CFRelease(*&size[8]);
                }

                if (v1338[1])
                {
                  CFRelease(v1338[1]);
                }

                if (v1332 != 1936484717 || v961)
                {
                  if (v961)
                  {
                    v414 = v1146 != v971 && v1066[0] == v372;
                    LODWORD(v971) = v414;
                    v416 = v96 != v930 && v1059 == *(&v372 + 1);
                    HIDWORD(v820) = v416;
                  }

                  else
                  {
                    HIDWORD(v820) = 0;
                    LODWORD(v971) = 0;
                  }

                  if (v96 > v1019)
                  {
                    DefaultTripletsForTransfer = 0;
                    goto LABEL_799;
                  }

                  v417 = 0;
                  v418 = *MEMORY[0x1E6965D70];
                  v930 = *MEMORY[0x1E6972368];
                  object = *MEMORY[0x1E6972338];
                  while (1)
                  {
                    OUTLINED_FUNCTION_59_0();
                    if (v30 || !v140)
                    {
                      break;
                    }

LABEL_794:
                    if (++v417 == v1059)
                    {
                      DefaultTripletsForTransfer = 0;
                      goto LABEL_797;
                    }
                  }

                  v419 = 0;
                  v420 = v950 / v1146;
                  while (1)
                  {
                    OutputFromConstituents = v17;
                    cf[0] = 0;
                    if (_getLayerReaderAtPosition(v1217, v419 + v1235, v417 + v1270, __dst, cf))
                    {
                      DefaultTripletsForTransfer = 1;
                      a6 = v1293;
                      OUTLINED_FUNCTION_45_0();
                      goto LABEL_798;
                    }

                    v421 = cf[0];
                    *size = 0;
                    v1338[0] = 0;
                    CFGetAllocator(cf[0]);
                    OUTLINED_FUNCTION_106_0();
                    v422 = FigPictureReaderGetFigBaseObject();
                    v423 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (!v423)
                    {
                      break;
                    }

                    v423(v422, v418, v17, size);
                    OUTLINED_FUNCTION_35_1();
                    if (!v30)
                    {
                      break;
                    }

                    CFGetAllocator(v421);
                    OUTLINED_FUNCTION_106_0();
                    v424 = FigPictureReaderGetFigBaseObject();
                    v425 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v425)
                    {
                      v426 = v425(v424, v930, v17, v1338);
                      v427 = v1338[0];
                      if (!v426)
                      {
                        if (CMPhotoCFNumberGetInt(v1338[0]))
                        {
                          break;
                        }

                        v427 = v1338[0];
                      }

                      if (v427)
                      {
                        CFRelease(v427);
                        v1338[0] = 0;
                      }
                    }

                    CFGetAllocator(v421);
                    OUTLINED_FUNCTION_106_0();
                    v428 = FigPictureReaderGetFigBaseObject();
                    v429 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v429)
                    {
                      if (!v429(v428, object, v17, v1338) && CMPhotoCFNumberGetInt32(v1338[0]) != -1)
                      {
                        break;
                      }
                    }

                    LODWORD(v1351) = 0;
                    if (CMPhotoPictureReaderGetItemTypeFromReader(v421, &v1351))
                    {
                      v430 = 1;
                    }

                    else
                    {
                      v430 = v1351 == 1768187246;
                    }

                    v431 = !v430;
LABEL_788:
                    v22 = v1297;
                    if (*size)
                    {
                      CFRelease(*size);
                    }

                    OutputFromConstituents = &v1342;
                    if (v1338[0])
                    {
                      CFRelease(v1338[0]);
                    }

                    if ((v431 & 1) == 0)
                    {
                      DefaultTripletsForTransfer = 1;
LABEL_797:
                      a6 = v1293;
LABEL_798:
                      v96 = v940;
                      v376 = v800;
LABEL_799:
                      if (v1328 % v1146)
                      {
                        DictionaryRepresentation = 1;
                      }

                      else
                      {
                        DictionaryRepresentation = *(&v1328 + 1) % v96 != 0;
                      }

                      if (v1329 + v1328 == v376 && *(&v1329 + 1) + *(&v1328 + 1) == v830)
                      {
                        v433 = 0;
                      }

                      else if (v1329 % v1146)
                      {
                        v433 = 1;
                      }

                      else
                      {
                        v433 = *(&v1329 + 1) % v96 != 0;
                      }

                      if (v920)
                      {
                        dispatch_retain(*(a6 + 40));
                        v434 = *(a6 + 40);
                      }

                      else
                      {
                        v434 = dispatch_queue_create("com.apple.cmphoto.canvasTransferQueue", 0);
                      }

                      if (v434)
                      {
                        LODWORD(v103) = 822280225;
                        BYTE4(v1351) = 0;
                        LODWORD(v1351) = 0;
                        LODWORD(v1334) = 0;
                        BYTE4(v1334) = 0;
                        LODWORD(v1336) = 0;
                        *(&v1336 + 3) = 0;
                        *&v437 = OUTLINED_FUNCTION_51_0();
                        *(v438 + 53) = v437;
                        *(v438 + 69) = v437;
                        value = 0uLL;
                        object = v435;
                        if (v96 > v1019)
                        {
                          v439 = 0;
LABEL_816:
                          dispatch_barrier_sync(v435, &__block_literal_global_29);
                          v440 = *MEMORY[0x1E695FF58];
                          a6 = v1296;
                          if (v439 && v440 == 1)
                          {
                            OUTLINED_FUNCTION_6();
                            kdebug_trace();
                            v440 = *MEMORY[0x1E695FF58];
                          }

                          if (v440 == 1)
                          {
                            OUTLINED_FUNCTION_6();
                            kdebug_trace();
                          }

                          if (v1327)
                          {
                            v441 = OUTLINED_FUNCTION_14_5(*&v1328);
                            OUTLINED_FUNCTION_42_1(v442, v441, v443, *&v1329, *(&v1329 + 1));
                            OUTLINED_FUNCTION_94_0();
                            v446 = v920;
                            if (!v30)
                            {
                              v446 = 1;
                            }

                            if (v446)
                            {
                              LODWORD(v103) = v444;
                              LODWORD(v1235) = v445 & HIDWORD(v770);
                            }

                            else
                            {
                              LODWORD(v1235) = 0;
                              LODWORD(v103) = 0;
                              pixelBuffer = v1327;
                              *&v1327 = 0;
                            }
                          }

                          else
                          {
                            LODWORD(v1235) = 0;
                            LODWORD(v103) = -16991;
                          }

                          goto LABEL_893;
                        }

                        v96 = 0;
                        HIDWORD(v790) = DefaultTripletsForTransfer | (DictionaryRepresentation | v433) & 1;
                        v1019 = v1066[0] - 1;
                        v860 = v1059 - 1;
                        LODWORD(v820) = v971 | HIDWORD(v820);
                        v810 = *v436;
                        v760 = &size[3];
                        v447 = v1114;
                        if (!v1114)
                        {
                          v447 = 875704422;
                        }

                        HIDWORD(v750) = v447;
                        v780 = &size[2];
                        while (1)
                        {
                          OUTLINED_FUNCTION_59_0();
                          if (v30 || !v140)
                          {
                            break;
                          }

LABEL_831:
                          if (++v96 >= v1059)
                          {
                            if (v1322)
                            {
                              if (HEIFItemDecoderWaitForFinishAndReturnStatus(v1322, &v1346, &v1331, &v1331))
                              {
                                OUTLINED_FUNCTION_92_0();
                                OUTLINED_FUNCTION_41_1();
                                OUTLINED_FUNCTION_45_0();
                                goto LABEL_893;
                              }

                              v439 = 1;
                              v17 = v1286;
                              OUTLINED_FUNCTION_45_0();
                            }

                            else
                            {
                              v439 = 0;
                              v17 = v1286;
                            }

                            v435 = object;
                            goto LABEL_816;
                          }
                        }

                        OUTLINED_FUNCTION_70();
                        v17 = 0;
                        v930 = v96 * v940;
                        v448 = HIDWORD(v820);
                        if (v96 != v860)
                        {
                          v448 = 0;
                        }

                        LODWORD(v770) = v448;
                        while (2)
                        {
                          v449 = v1322;
                          if (v1322)
                          {
                            LODWORD(v103) = *(v1322 + 14580);
                            if (v103)
                            {
                              goto LABEL_888;
                            }
                          }

                          LayerReaderAtPosition = _getLayerReaderAtPosition(v1217, v17 + v1235, v96 + v1270, __dst, &v1337);
                          if (LayerReaderAtPosition)
                          {
                            goto LABEL_887;
                          }

                          if (v1019 == v17)
                          {
                            a6 = v971;
                          }

                          else
                          {
                            a6 = 0;
                          }

                          if (!v1327)
                          {
                            if (v920)
                            {
                              LayerReaderAtPosition = *v1293;
                              if (*v1293)
                              {
                                LayerReaderAtPosition = CFRetain(LayerReaderAtPosition);
                              }

                              *&v1327 = LayerReaderAtPosition;
                              if (!v961 || v449)
                              {
                                goto LABEL_855;
                              }

LABEL_851:
                              v1338[0] = 0;
                              if (v820)
                              {
                                LayerReaderAtPosition = _getLayerReaderAtPosition(v1217, v1019 + v1235, v860 + v1270, __dst, v1338);
                                if (LayerReaderAtPosition)
                                {
                                  goto LABEL_887;
                                }

                                v456 = v1338[0];
                              }

                              else
                              {
                                v456 = 0;
                              }

                              v457 = *(OutputFromConstituents + 128);
                              *&size[40] = *(OutputFromConstituents + 112);
                              *&size[56] = v457;
                              v458 = *(OutputFromConstituents + 160);
                              *&size[72] = *(OutputFromConstituents + 144);
                              v459 = v1337;
                              size[0] = BYTE4(v1184);
                              size[1] = theArray;
                              *v780 = v1335;
                              *(v780 + 2) = WORD2(v1335);
                              *&size[8] = *(&v996 + 1);
                              *&size[16] = v996;
                              *&size[24] = v982;
                              *&size[32] = v1198;
                              *&size[88] = v458;
                              *&size[104] = v1114;
                              size[112] = v1171;
                              size[113] = v1101;
                              OUTLINED_FUNCTION_107_0(LayerReaderAtPosition, v451, v459, v456, v452, v453, v454, v455, v650, v664, v680, v696, v711, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v982, v996, *(&v996 + 1), v1019, v1031, v1042, v1059, v1066[0], v1066[1], v1087, v1101, v1114, *(&v1114 + 1), v1136, v1146, theArray, v1171, v1184, v1198, v1217, v1225, v1235, v1249, v1256);
                              *(v460 + 119) = BYTE4(v1333);
                              *(v460 + 115) = v1333;
                              *&size[120] = v1249;
                              *&size[128] = v1087;
                              LODWORD(LayerReaderAtPosition) = HEIFItemDecoderCreate(__src, v22, v461, v462, size, BYTE4(v790) ^ 1u, v1066[0], v1059, &v1346, &v1323, &v1331, &v1322, &v1327);
                              if (LayerReaderAtPosition)
                              {
LABEL_887:
                                LODWORD(v103) = LayerReaderAtPosition;
LABEL_888:
                                LODWORD(v1235) = 0;
LABEL_889:
                                OUTLINED_FUNCTION_41_1();
                                goto LABEL_893;
                              }
                            }

                            else
                            {
                              if (v961 && !v449)
                              {
                                goto LABEL_851;
                              }

                              *size = 0;
                              *&size[8] = 0;
                              *&size[16] = v1042;
                              *&size[24] = v1031;
                              OUTLINED_FUNCTION_55_0();
                              LODWORD(LayerReaderAtPosition) = _createPixelBuffer(v491, v850, v492, SHIDWORD(v750), v493, v494, v800, v830, v650, v664, v680, v696);
                              if (LayerReaderAtPosition)
                              {
                                goto LABEL_887;
                              }
                            }

LABEL_855:
                            if (*MEMORY[0x1E695FF58] == 1)
                            {
                              OUTLINED_FUNCTION_22_2();
                              OUTLINED_FUNCTION_6();
                              kdebug_trace();
                              if (v1322)
                              {
                                if (*MEMORY[0x1E695FF58] == 1)
                                {
                                  OUTLINED_FUNCTION_6();
                                  kdebug_trace();
                                }
                              }
                            }

                            if (!v1327)
                            {
                              LODWORD(v1235) = 0;
                              LODWORD(v103) = -16991;
                              goto LABEL_889;
                            }

                            CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v880, v890, v900, v910, v1327);
                            CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(HIDWORD(v840), v840, v1327);
                            v103 = CFGetAllocator(*(&__src[0] + 1));
                            v463 = FigPictureReaderGetFigBaseObject();
                            v464 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                            if (!v464)
                            {
                              LODWORD(v1235) = 0;
                              LODWORD(v103) = -12782;
                              goto LABEL_892;
                            }

                            if (v464(v463, v810, v103, v1321))
                            {
                              OUTLINED_FUNCTION_92_0();
LABEL_892:
                              OUTLINED_FUNCTION_41_1();
                              v22 = v1297;
LABEL_893:
                              HEIFItemDecoderRelease(v1322);
                              dispatch_release(object);
LABEL_894:
                              if (v880)
                              {
                                CFRelease(v880);
                              }

                              if (v890)
                              {
                                CFRelease(v890);
                              }

                              if (v900)
                              {
                                CFRelease(v900);
                              }

                              if (v910)
                              {
                                CFRelease(v910);
                              }

LABEL_902:
                              if (v1327)
                              {
                                CFRelease(v1327);
                              }

                              if (v1321[0])
                              {
                                CFRelease(v1321[0]);
                              }

                              if (v103)
                              {
                                v211 = v1291;
                                goto LABEL_613;
                              }

                              OutputFromConstituents = 0;
                              v10 = a9;
                              LOBYTE(v22) = v1235;
LABEL_1028:
                              v209 = v1316;
                              if (!v1316)
                              {
                                goto LABEL_1030;
                              }

LABEL_1029:
                              CFRelease(v209);
                              goto LABEL_1030;
                            }

                            CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(v1321[0], v1327);
                            v1031 = *(&v1346 + 1);
                            v1042 = v1346;
                            v22 = v1297;
                          }

                          if (DictionaryRepresentation != v1042 && v1031 != v930)
                          {
                            LODWORD(v750) = (a6 | v770) & 1;
                            LODWORD(v103) = a5;
                            v466 = v940;
                            if (v940 >= v1031 - v930)
                            {
                              v466 = (v1031 - v930);
                            }

                            a6 = v1042 + DefaultTripletsForTransfer;
                            v467 = v1146;
                            if (v1146 >= v1042 + DefaultTripletsForTransfer)
                            {
                              v467 = (v1042 + DefaultTripletsForTransfer);
                            }

                            v468 = v1331 == v467 && *(&v1331 + 1) == v466;
                            v469 = v468 ? 0 : v467;
                            v470 = v468 ? 0 : v466;
                            cf[0] = v1327;
                            cf[1] = DictionaryRepresentation;
                            cf[2] = v930;
                            cf[3] = v467;
                            cf[4] = v466;
                            cf[5] = object;
                            v733 = v1337;
                            v744 = v1322;
                            memcpy(v1338, __src, sizeof(v1338));
                            OUTLINED_FUNCTION_23_2();
                            v471 = *v1352;
                            *v760 = v1351;
                            *(v760 + 1) = v471;
                            *(v760 + 29) = *&v1352[13];
                            *&size[40] = 0;
                            *&size[48] = 0;
                            *&size[56] = v469;
                            *&size[64] = v470;
                            v22 = v1297;
                            *&size[72] = v1042 + DefaultTripletsForTransfer;
                            *&size[80] = v1031 - v930;
                            *&size[88] = value;
                            *&size[104] = 0;
                            size[112] = v1171;
                            size[113] = v750;
                            OUTLINED_FUNCTION_107_0(v472, v473, v474, v475, v476, v477, v478, v479, v650, v664, v680, v696, v711, v718, v733, v744, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v982, v996, *(&v996 + 1), v1019, v1031, v1042, v1059, v1066[0], v1066[1], v1087, v1101, v1114, *(&v1114 + 1), v1136, v1146, theArray, v1171, v1184, v1198, v1217, v1225, v1235, v1249, v1256);
                            *(v480 + 115) = v1334;
                            *(v480 + 119) = BYTE4(v1334);
                            OUTLINED_FUNCTION_56_0(v481, v482, v483, v484, v485, v486, v487, v488, v651, v665, v681, v697, v712, v723, v734, v745, v755, v765, v775, v785, v795, v805, v815, v825, v835, v845, v855, v865, objecte, v885, v895, v905, v915, v925, v935, v945, v956, v966, v976, v989, v1002, v1014, v1026, v1037, v1049, v1060, v1072, v1081, v1093, v1106, v1121, v1131, v1141, v1153, theArrayh, v1179, v1189, v1204, v1218, v1230, v1241, v1251);
                            *(v489 + 129) = v1336;
                            *(v489 + 132) = *(v490 + 243);
                            v650 = 0;
                            LODWORD(LayerReaderAtPosition) = _decodeItem(v1338, v728, v1297, v739, size, 0, cf, 0);
                            if (LayerReaderAtPosition)
                            {
                              goto LABEL_887;
                            }
                          }

                          ++v17;
                          DictionaryRepresentation += v1146;
                          DefaultTripletsForTransfer -= v1146;
                          if (v17 >= v1066[0])
                          {
                            goto LABEL_831;
                          }

                          continue;
                        }
                      }

                      LODWORD(v1235) = 0;
                      LODWORD(v103) = -16991;
LABEL_696:
                      a6 = v1296;
                      goto LABEL_894;
                    }

                    ++v419;
                    if (!--v420)
                    {
                      goto LABEL_794;
                    }
                  }

                  v431 = 0;
                  goto LABEL_788;
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_19();
                ImageCodecTypeFromReader = FigSignalErrorAtGM();
              }

              LODWORD(v103) = ImageCodecTypeFromReader;
            }

            LODWORD(v1235) = 0;
            goto LABEL_696;
          }

          v111 = v17;
          v96 = 0;
          v112 = v110;
          do
          {
            OUTLINED_FUNCTION_89_0();
            if (!FigCFArrayGetInt32AtIndex())
            {
              goto LABEL_585;
            }

            ++v96;
            v112 += 4;
          }

          while (Count != v96);
          v17 = v111;
        }

        else
        {
          v111 = v17;
          v1146 = 0;
LABEL_585:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_19();
          v354 = FigSignalErrorAtGM();
          free(v1146);
          v17 = v111;
          if (v354)
          {
            v210 = 1;
            OUTLINED_FUNCTION_45_0();
            v211 = v1291;
            DictionaryRepresentation = v1338;
            goto LABEL_605;
          }

          Count = 0;
          v1146 = 0;
        }

        DictionaryRepresentation = v1338;
        goto LABEL_101;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_19();
    FigSignalErrorAtGM();
    v105 = 0;
    goto LABEL_582;
  }

  OUTLINED_FUNCTION_7_13();
  if (v30)
  {
    v42 = a6;
    a6 = a9;
    v1294 = v42;
    DictionaryRepresentation = *(v17 + 68);
    LODWORD(v1197) = *(v17 + 69);
    v43 = *(v17 + 70);
    v1290 = *(v17 + 56);
    if (v1290 == 6)
    {
      DefaultTripletsForTransfer = a8;
    }

    else
    {
      DefaultTripletsForTransfer = 0;
    }

    v44 = v17;
    v17 = *v17;
    v45 = *(v44 + 8);
    v1262 = *(v44 + 24);
    v1279 = *(v44 + 32);
    v995 = *(v44 + 40);
    v1008 = *(v44 + 16);
    LODWORD(v1113) = *(v44 + 48);
    v1269 = *(v44 + 49);
    LODWORD(v1101) = *(v44 + 50);
    LODWORD(v1086) = *(v44 + 51);
    LODWORD(v1066[0]) = *(v44 + 52);
    LOWORD(v1336) = *(v44 + 53);
    BYTE2(v1336) = *(v44 + 55);
    v46 = *(v44 + 60);
    LODWORD(v1256) = *(v44 + 61);
    LODWORD(v1248) = *(v44 + 62);
    LODWORD(v1235) = *(v44 + 63);
    v47 = *(v44 + 64);
    LODWORD(v1031) = *(v44 + 68);
    v1210 = *(v44 + 72);
    v1273 = *(v44 + 80);
    v1285 = v44;
    v1020 = *(v44 + 88);
    HIDWORD(v1184) = a5[1];
    v48 = a5[2];
    v49 = *(a5 + 19);
    *v1348 = *(a5 + 3);
    *&v1348[2] = v49;
    *(&v1348[3] + 5) = *(a5 + 4);
    LODWORD(v1054) = a5[114];
    v1043 = *(a5 + 15);
    v50 = CFGetAllocator(v45);
    *&v1351 = 0;
    v1276 = v45;
    if (v17)
    {
      v51 = v17;
    }

    else
    {
      v51 = v45;
    }

    *&v1328 = 0;
    *&v1323 = 0;
    *&v1346 = 0;
    *&v1344 = 0;
    *&v1331 = 0;
    value.i64[0] = 0;
    *&v1327 = 0;
    *&v1322 = 0;
    if (v46)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_19();
      OutputFromConstituents = FigSignalErrorAtGM();
      OUTLINED_FUNCTION_40_1();
      v17 = v1285;
      v10 = a9;
      a6 = v1294;
LABEL_340:
      if (v1351)
      {
        CFRelease(v1351);
      }

LABEL_342:
      if (v1328)
      {
        CFRelease(v1328);
      }

      if (v1323)
      {
        CFRelease(v1323);
      }

      if (v1346)
      {
        CFRelease(v1346);
      }

      if (v1344)
      {
        CFRelease(v1344);
      }

      if (v1331)
      {
        CFRelease(v1331);
      }

      if (DefaultTripletsForTransfer)
      {
        CFRelease(DefaultTripletsForTransfer);
      }

      if (value.i64[0])
      {
        CFRelease(value.i64[0]);
      }

      if (v1327)
      {
        CFRelease(v1327);
      }

      if (v1322)
      {
        CFRelease(v1322);
      }

      if (DictionaryRepresentation)
      {
        v93 = DictionaryRepresentation;
LABEL_362:
        CFRelease(v93);
      }

LABEL_363:
      if (OutputFromConstituents)
      {
        goto LABEL_1070;
      }

      LOBYTE(v22) = 0;
LABEL_1031:
      if (!*v17 || !CMPhotoDecompressionSessionAsyncRequestCancelled(*(*(v17 + 8) + 16), *v17))
      {
        DictionaryRepresentation = v1310;
        if (a5[1])
        {
          v621 = v1310 == 1;
        }

        else
        {
          v621 = 1;
        }

        v622 = !v621;
        v623 = 1;
        if (v621)
        {
          v623 = v1310;
          DictionaryRepresentation = 1;
          if (!a6)
          {
            goto LABEL_1044;
          }
        }

        else
        {
          v1310 = 1;
          if (!a6)
          {
LABEL_1044:
            v624 = pixelBuffer;
            if (!pixelBuffer)
            {
              return 0;
            }

            if (!v10)
            {
              if ((v22 & 1) == 0)
              {
                *size = 0;
                *&size[8] = size;
                *&size[16] = 0x2000000000;
                *&size[24] = 0;
                PixelFormatType = CVPixelBufferGetPixelFormatType(*v1293);
                DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(v624, PixelFormatType);
                v639 = v638;
                v640 = *(v1293 + 40);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = *"";
                block[2] = ___decodeItem_block_invoke;
                block[3] = &unk_1E77A2368;
                block[4] = size;
                OUTLINED_FUNCTION_120(v1300);
                v1300[12] = pixelBuffer;
                memcpy(v1301, a5, sizeof(v1301));
                v1303 = DictionaryRepresentation;
                v1302 = v1293;
                v1304 = DefaultTripletsForTransfer;
                v1305 = v639;
                dispatch_sync(v640, block);
                OutputFromConstituents = *(*&size[8] + 24);
                _Block_object_dispose(size, 8);
                goto LABEL_1070;
              }

              OutputFromConstituents = 0;
              OUTLINED_FUNCTION_70();
              goto LABEL_1072;
            }

            DefaultTripletsForTransfer = *(a5 + 26);
            if (!DefaultTripletsForTransfer)
            {
              DefaultTripletsForTransfer = CVPixelBufferGetPixelFormatType(pixelBuffer);
              *(a5 + 26) = DefaultTripletsForTransfer;
              v624 = pixelBuffer;
            }

            if (DefaultTripletsForTransfer == CVPixelBufferGetPixelFormatType(v624))
            {
              v625 = v622;
            }

            else
            {
              v625 = 1;
            }

            if (v625 == 1)
            {
              ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, *(v17 + 48), *(v17 + 50), *(v17 + 51), *(v17 + 52));
              DefaultTripletsForTransfer = ScaleAndRotateOptionsWithHWIfNeeded;
              if (!ScaleAndRotateOptionsWithHWIfNeeded)
              {
                DictionaryRepresentation = 0;
                OutputFromConstituents = 4294950305;
                goto LABEL_1071;
              }

              if (a5[114])
              {
                CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", a5[114]);
              }

              memcpy(size, a5, sizeof(size));
              v627 = _fillEdgesIfNeeded(pixelBuffer, size, DictionaryRepresentation);
              if (v627)
              {
                OutputFromConstituents = v627;
                DictionaryRepresentation = 0;
                goto LABEL_1071;
              }

              v628 = CMPhotoCreateDefaultTripletsForTransfer(pixelBuffer, *(a5 + 26));
              v630 = v629;
              CMPhotoCFDictionarySetBoolean(DefaultTripletsForTransfer, @"DestinationBackedByIOSurface", *(v17 + 49) == 0);
              CMPhotoCFDictionarySetInt(DefaultTripletsForTransfer, @"SourceExifOrientation", DictionaryRepresentation);
              CMPhotoCFDictionarySetInt(DefaultTripletsForTransfer, @"DestinationPixelFormat", *(a5 + 26));
              CMPhotoCFDictionarySetBoolean(DefaultTripletsForTransfer, @"ExactDimensions", 1);
              DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(v628, v630);
              if (DictionaryRepresentation)
              {
                CFDictionarySetValue(DefaultTripletsForTransfer, @"DestinationColorTripletDictionary", DictionaryRepresentation);
              }

              *size = 0;
              v631 = CMPhotoScaleAndRotateSessionTransformImage(*(v17 + 32), pixelBuffer, DefaultTripletsForTransfer, size);
              if (v631)
              {
                goto LABEL_1080;
              }

              if (pixelBuffer)
              {
                CFRelease(pixelBuffer);
              }

              pixelBuffer = *size;
            }

            else
            {
              OUTLINED_FUNCTION_40_1();
            }

            if (*(a5 + 40) == 0 && *(a5 + 56) == 0 || (v632 = OUTLINED_FUNCTION_27_0(*(a5 + 5)), v631 = OUTLINED_FUNCTION_77_0(v633, v632, v634, v635, v636), !v631))
            {
              OutputFromConstituents = 0;
              *v10 = pixelBuffer;
              pixelBuffer = 0;
              goto LABEL_1073;
            }

LABEL_1080:
            OutputFromConstituents = v631;
            goto LABEL_1071;
          }
        }

        *a6 = v623;
        goto LABEL_1044;
      }

LABEL_1078:
      OUTLINED_FUNCTION_40_1();
      OutputFromConstituents = 4294950191;
      goto LABEL_1071;
    }

    v1172 = v51;
    v1342 = 0uLL;
    memset(__src, 0, 80);
    HEIFOrientation = _copyFlexRangeDetails(v50, v1297, &v1342, __src, &v1344, 0, &v1323, &v1346);
    v10 = a9;
    if (HEIFOrientation || (LODWORD(v1321[0]) = 1, LODWORD(v1337) = 1, HEIFOrientation = CMPhotoPictureReaderGetHEIFOrientation(v1346, 0, &v1337), HEIFOrientation) || (HEIFOrientation = CMPhotoPictureReaderGetHEIFOrientation(v1323, 0, v1321), HEIFOrientation) || (*&v53 = OUTLINED_FUNCTION_51_0(), *(v54 + 96) = v53, *(v54 + 112) = v53, HEIFOrientation = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1346, 0, size, 0), HEIFOrientation) || (v55 = *&size[16], a6 = *&size[24], HEIFOrientation = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1323, 0, size, 0), HEIFOrientation))
    {
      OutputFromConstituents = HEIFOrientation;
    }

    else
    {
      theArraya = DefaultTripletsForTransfer;
      v10 = *&size[16];
      DefaultTripletsForTransfer = *&size[24];
      *v1338 = *size;
      *&v1338[2] = *&size[16];
      v56 = OUTLINED_FUNCTION_99_0();
      CropPostOrientation = CMPhotoGetCropPostOrientation(v56, v57, v58, v59, v60, v61, v62, v63);
      if (!CropPostOrientation)
      {
        v68 = *&size[16];
        v69 = *&size[24];
        if (v1342 != *&size[16] || *(&v1342 + 1) != *&size[24])
        {
          goto LABEL_558;
        }

        v1147 = a6;
        memset(v1340, 0, 32);
        if (v48)
        {
          *size = *(v1348 + 5);
          *&size[16] = *(&v1348[2] + 5);
          CropPreOrientation = CMPhotoGetCropPreOrientation(v68, v69, size, v1321[0], v1340, v65, v66, v67);
          if (CropPreOrientation)
          {
            goto LABEL_382;
          }
        }

        a6 = v1290;
        if (v43)
        {
          v1310 = v1321[0];
        }

        else
        {
          HIDWORD(v1184) = 1;
        }

        if (DictionaryRepresentation)
        {
          if (v1290 != 6)
          {
LABEL_558:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_19();
            CropPreOrientation = FigSignalErrorAtGM();
            goto LABEL_382;
          }
        }

        else
        {
          OUTLINED_FUNCTION_38_0();
          *(__dst + 5) = *v1340;
          *(&__dst[1] + 5) = *&v1340[16];
          v1338[0] = v17;
          OUTLINED_FUNCTION_68_0(v1276, v644, v658, v672, v688, v704, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v981, v995, v1008, v1020, v1031, v1043, v1054, v1066[0], v1066[1], v1086, v1101, v1113, v1126, v1136, v1147, theArraya, v1172, v1184, v1197, v1210, v1225, v1235, v1248, v1256, v1260, v1262);
          v1338[4] = v1279;
          OUTLINED_FUNCTION_12_12(v243, v244, v245, v246, v247, v248, v249, v250, v645, v659, v675, v691, v707, v719, v729, v740, v751, v761, v771, v781, v791, v801, v811, v821, v831, v841, v851, v861, objecta, v881, v891, v901, v911, v921, v931, v941, v951, v962, v972, v984, v997, v1009, v1021, v1032, v1044, v1055, v1067, v1077, v1088, v1099, v1102, v1111, v1115, v1127, v1137, v1148, theArrayd, v1173, v1185, v1200, v1213, v1226, v1237);
          LODWORD(v1338[7]) = v1290;
          OUTLINED_FUNCTION_5_14(v251, v252, v253, v254, v255, v256, v257, v258, v646, v660, v676, v692, v708, v720, v730, v741, v752, v762, v772, v782, v792, v802, v812, v822, v832, v842, v852, v862, objectb, v882, v892, v902, v912, v922, v932, v942, v952, v963, v973, v985, v998, v1010, v1022, v1033, v1045, v1056, v1068, v1078, v1089, v1103, v1116, v1128, v1138, v1149, theArraye, v1174, v1186, v1195, v1201, v1214, v1227, v1238, v1246);
          size[128] = 0;
          OUTLINED_FUNCTION_17_6();
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_31_0();
          CropPreOrientation = _decodeItem(v259, v260, v261, v262, v263, v264, v265, v266);
          if (CropPreOrientation)
          {
LABEL_382:
            OutputFromConstituents = CropPreOrientation;
            OUTLINED_FUNCTION_40_1();
LABEL_383:
            v10 = a9;
LABEL_384:
            OUTLINED_FUNCTION_41_1();
            goto LABEL_340;
          }
        }

        v190 = v1290 - 3 < 3;
        if (*(__src + 2) == 0.0)
        {
          v190 = v1290 == 2;
        }

        if (v190)
        {
          OUTLINED_FUNCTION_70();
          OutputFromConstituents = 0;
          pixelBuffer = v1351;
          *&v1351 = 0;
          OUTLINED_FUNCTION_69_0();
          goto LABEL_342;
        }

        a6 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          OUTLINED_FUNCTION_40_1();
          OutputFromConstituents = 4294950305;
          goto LABEL_383;
        }

        v192 = Mutable;
        if (DictionaryRepresentation)
        {
          v983 = 0;
          a6 = v1294;
        }

        else
        {
          v212 = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, v1113, v1101, v1086, v1066[0]);
          if (!v212)
          {
            OUTLINED_FUNCTION_70();
            OutputFromConstituents = 4294950305;
            OUTLINED_FUNCTION_69_0();
            goto LABEL_339;
          }

          v983 = v212;
          if (CMPhotoScaleAndRotateSessionBakeInCLAPIfNeeded(v1279, v212, &v1351))
          {
            OUTLINED_FUNCTION_46_0();
            v17 = v1285;
            v10 = a9;
            goto LABEL_1100;
          }

          FigCFDictionarySetValue();
          a6 = v1294;
          if (FigCFDictionarySetInt())
          {
            goto LABEL_572;
          }
        }

        FigCFDictionarySetValue();
        *&v213 = OUTLINED_FUNCTION_51_0();
        *v214 = v213;
        v214[1] = v213;
        if (*v1340 == 0 && *&v1340[16] == 0)
        {
          goto LABEL_310;
        }

        *size = *v1340;
        *&size[16] = *&v1340[16];
        v215 = OUTLINED_FUNCTION_99_0();
        if (!CMPhotoTranslateAndScalePreOrientationCrop(v215, v216, v217, v218, v55, v1147, v219, v220, 0))
        {
          DefaultTripletsForTransfer = 0;
          OutputFromConstituents = 4294950306;
          if (cf[2] && cf[3])
          {
LABEL_310:
            if (v1197)
            {
              v17 = v1285;
              v10 = a9;
              if (v1290 != 6)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_19();
                FigSignalErrorAtGM();
                goto LABEL_579;
              }

              goto LABEL_312;
            }

            OUTLINED_FUNCTION_38_0();
            v268 = v267[1];
            *(__dst + 5) = *v267;
            *(&__dst[1] + 5) = v268;
            v1338[0] = v17;
            DefaultTripletsForTransfer = v1279;
            OUTLINED_FUNCTION_68_0(v1276, v644, v658, v672, v688, v704, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v983, v995, v1008, v1020, v1031, v1043, v1054, v1066[0], v1066[1], v1086, v1101, v1113, v1126, v1136, v1147, theArraya, v1172, v1184, v1197, v1210, v1225, v1235, v1248, v1256, v1260, v1262);
            v1338[4] = v1279;
            OUTLINED_FUNCTION_12_12(v269, v270, v271, v272, v273, v274, v275, v276, v647, v661, v677, v693, v709, v721, v731, v742, v753, v763, v773, v783, v793, v803, v813, v823, v833, v843, v853, v863, objectc, v883, v893, v903, v913, v923, v933, v943, v953, v964, v974, v986, v999, v1011, v1023, v1034, v1046, v1057, v1069, v1079, v1090, v1100, v1104, v1112, v1117, v1129, v1139, v1150, theArrayf, v1175, v1187, v1202, v1215, v1228, v1239);
            LODWORD(v1338[7]) = v1290;
            OUTLINED_FUNCTION_5_14(v277, v278, v279, v280, v281, v282, v283, v284, v648, v662, v678, v694, v710, v722, v732, v743, v754, v764, v774, v784, v794, v804, v814, v824, v834, v844, v854, v864, objectd, v884, v894, v904, v914, v924, v934, v944, v954, v965, v975, v987, v1000, v1012, v1024, v1035, v1047, v1058, v1070, v1080, v1091, v1105, v1118, v1130, v1140, v1151, theArrayg, v1176, v1188, v1196, v1203, v1216, v1229, v1240, v1247);
            size[128] = 1;
            OUTLINED_FUNCTION_17_6();
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_31_0();
            v10 = a9;
            if (!_decodeItem(v285, v286, v287, v288, v289, v290, v291, v292))
            {
              v17 = v1285;
              if (CMPhotoScaleAndRotateSessionBakeInCLAPIfNeeded(v1279, v983, &v1328))
              {
                goto LABEL_579;
              }

              FigCFDictionarySetValue();
LABEL_312:
              if (!FigCFDictionarySetInt())
              {
                OUTLINED_FUNCTION_10_15();
                if (!_copyColorInfoForItem(v221, v222, v223, v224, v225, v226, v227, v228, &v1327, &v1322, 0, 0, 0))
                {
                  if (v1273)
                  {
                    FigCFDictionarySetValue();
                    if (v1322)
                    {
                      v229 = OUTLINED_FUNCTION_53();
                      DefaultTripletsForTransfer = CFDictionaryCreateMutable(v229, v230, v231, v232);
                      if (DefaultTripletsForTransfer)
                      {
                        v233 = v1322;
LABEL_335:
                        CFDictionarySetValue(DefaultTripletsForTransfer, @"YCbCrMatrix", v233);
LABEL_336:
                        CFDictionarySetValue(v192, @"NclxColor", DefaultTripletsForTransfer);
                        goto LABEL_337;
                      }

LABEL_1099:
                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_19();
                      OutputFromConstituents = FigSignalErrorAtGM();
                      goto LABEL_1100;
                    }
                  }

                  else
                  {
                    if (v1331)
                    {
                      FigCFDictionarySetValue();
                    }

                    if (value.i64[0] || v1327 || v1322)
                    {
                      v234 = OUTLINED_FUNCTION_53();
                      v238 = CFDictionaryCreateMutable(v234, v235, v236, v237);
                      DefaultTripletsForTransfer = v238;
                      if (v238)
                      {
                        if (value.i64[0])
                        {
                          CFDictionarySetValue(v238, @"ColorPrimaries", value.i64[0]);
                        }

                        if (v1327)
                        {
                          CFDictionarySetValue(DefaultTripletsForTransfer, @"TransferFunction", v1327);
                        }

                        v233 = v1322;
                        if (!v1322)
                        {
                          goto LABEL_336;
                        }

                        goto LABEL_335;
                      }

                      goto LABEL_1099;
                    }
                  }

                  DefaultTripletsForTransfer = 0;
LABEL_337:
                  a6 = v1294;
                  OutputFromConstituents = CMPhotoGainMapCreateOutputFromConstituents(v1279, v1262, v1269, v1273, v1172, v192, v1290, 0, v47, v1256, v1248, v1235, v1210, &pixelBuffer, theArraya);
LABEL_338:
                  DictionaryRepresentation = v983;
LABEL_339:
                  CFRelease(v192);
                  goto LABEL_340;
                }

                OUTLINED_FUNCTION_46_0();
LABEL_1100:
                a6 = v1294;
                goto LABEL_338;
              }

LABEL_579:
              OUTLINED_FUNCTION_46_0();
              goto LABEL_338;
            }

            OUTLINED_FUNCTION_46_0();
LABEL_391:
            v17 = v1285;
            goto LABEL_338;
          }

LABEL_573:
          v10 = a9;
          goto LABEL_391;
        }

LABEL_572:
        OUTLINED_FUNCTION_46_0();
        goto LABEL_573;
      }

      OutputFromConstituents = CropPostOrientation;
      v10 = a9;
    }

    OUTLINED_FUNCTION_40_1();
    goto LABEL_384;
  }

  OUTLINED_FUNCTION_24_1();
  if (!v30)
  {
    OUTLINED_FUNCTION_120(__src);
    LODWORD(v1268) = *a5;
    LODWORD(v1346) = *(a5 + 1);
    *(&v1346 + 3) = *(a5 + 1);
    v1288 = *(a5 + 2);
    v1272 = *(a5 + 24);
    v1278 = *(a5 + 1);
    memcpy(__dst, a5 + 40, 0x49uLL);
    LODWORD(v22) = a5[113];
    *v1340 = *(a5 + 114);
    *&v1340[14] = *(a5 + 16);
    OUTLINED_FUNCTION_120(v1338);
    *&v1351 = 0;
    *&v1328 = 0;
    v25 = *(&__src[0] + 1);
    if (*&__src[0])
    {
      v1261 = *&__src[0];
      if (CMPhotoDecompressionSessionAsyncRequestCancelled(*(*(&__src[0] + 1) + 16), *&__src[0]))
      {
        DefaultTripletsForTransfer = 0;
        OutputFromConstituents = 4294950191;
        goto LABEL_554;
      }

      v25 = *(&__src[0] + 1);
    }

    else
    {
      v1261 = *(&__src[0] + 1);
    }

    if (!_getImageOrientation(v25, v1297, DefaultTripletsForTransfer, &v1310))
    {
      if (a4)
      {
        DictionaryRepresentation = 0;
        v39 = a4;
        goto LABEL_39;
      }

      if (v12)
      {
        *size = 0;
        *&size[8] = 0;
        PixelBufferSize = CMPhotoGetPixelBufferSize(*v12);
        v28 = v27;
        if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1297, *(*(&__src[0] + 1) + 28), 0, size))
        {
          goto LABEL_544;
        }

        v29 = vcvtad_u64_f64(v28);
        v30 = *size == vcvtad_u64_f64(PixelBufferSize) && *&size[8] == v29;
        DictionaryRepresentation = v30;
      }

      else
      {
        DictionaryRepresentation = 0;
      }

      size[0] = v1268;
      OutputFromConstituents = cf;
      *&size[1] = v1346;
      OUTLINED_FUNCTION_33_0(*(&v1346 + 3), v644, v658, v672, v688, v704, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v981, v994, v1007, v1019, v1031, v1042, v1054, v1066[0], v1066[1], v1086, v1101, v1113, v1126, v1136, v1146, theArray, v1171, v1184, v1197, v1209, v1225, v1235, v1248, v1256, v1260, v1261, v1265, v1268, v1272, *(&v1272 + 1), v1278);
      size[113] = v22;
      *&size[114] = *v1340;
      *&size[128] = *&v1340[14];
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_84_0();
      if (!HEIFItemDecoderCreate(v31, v32, v33, v34, v35, v36, v37, v38, 0, 0, v673, v689, v705))
      {
        DictionaryRepresentation = v1328;
        OUTLINED_FUNCTION_109();
        if (v30)
        {
          OUTLINED_FUNCTION_22_2();
          OUTLINED_FUNCTION_6();
          kdebug_trace();
          OUTLINED_FUNCTION_109();
          if (v30)
          {
            OUTLINED_FUNCTION_6();
            kdebug_trace();
          }
        }

        v39 = DictionaryRepresentation;
LABEL_39:
        LOBYTE(v1344) = 0;
        if (v22)
        {
          v41 = v1297;
          v40 = 0;
        }

        else
        {
          v40 = *(v39 + 24);
          v41 = v1297;
        }

        v153 = _createSampleBufferFromPictureReader(v41, v40, &v1351, &v1344);
        if (!v153)
        {
          if (!v1344 || *(v39 + 88))
          {
            DictionaryRepresentation = v1338;
LABEL_195:
            if (v12)
            {
              v1295 = a6;
              v1298 = v1310;
              LODWORD(v1323) = v1346;
              *(&v1323 + 3) = *(&v1346 + 3);
              memcpy(size, __dst, 0x49uLL);
              *v1348 = *v1340;
              *(&v1348[1] + 6) = *&v1340[14];
              cf[0] = 0;
              *&v1342 = 0;
              if (*&__src[0])
              {
                v162 = __src[0];
              }

              else
              {
                v162 = DWORD2(__src[0]);
              }

              OUTLINED_FUNCTION_103_0();
              if (v30)
              {
                OUTLINED_FUNCTION_22_2();
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }

              dispatch_semaphore_wait(*(v39 + 224), 0xFFFFFFFFFFFFFFFFLL);
              OUTLINED_FUNCTION_103_0();
              if (v30)
              {
                OUTLINED_FUNCTION_22_2();
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }

              os_unfair_lock_lock((v39 + 14576));
              v163 = CFArrayGetCount(*(v39 + 14584));
              v164 = CFArrayGetCount(*(v39 + 14592));
              if (v163 || v164 < 1)
              {
LABEL_210:
                os_unfair_lock_unlock((v39 + 14576));
              }

              else
              {
                while (1)
                {
                  v165 = CFArrayGetValueAtIndex(*(v39 + 14592), 0);
                  CFArrayRemoveValueAtIndex(*(v39 + 14592), 0);
                  CFSetGetCount(*(v39 + 14600));
                  os_unfair_lock_unlock((v39 + 14576));
                  if (!v165)
                  {
                    break;
                  }

                  dispatch_block_wait(v165, 0xFFFFFFFFFFFFFFFFLL);
                  _Block_release(v165);
                  os_unfair_lock_lock((v39 + 14576));
                  v166 = CFArrayGetCount(*(v39 + 14584));
                  v167 = CFArrayGetCount(*(v39 + 14592));
                  if (v166 || v167 <= 0)
                  {
                    goto LABEL_210;
                  }
                }
              }

              v168 = v17;
              os_unfair_lock_lock((v39 + 14576));
              v169 = CFArrayGetCount(*(v39 + 14584)) - 1;
              DictionaryRepresentation = CFArrayGetValueAtIndex(*(v39 + 14584), v169);
              CFArrayRemoveValueAtIndex(*(v39 + 14584), v169);
              CFSetAddValue(*(v39 + 14600), DictionaryRepresentation);
              CFSetGetCount(*(v39 + 14600));
              v170 = *(v39 + 14608) + 1;
              *(v39 + 14608) = v170;
              *(DictionaryRepresentation + 200) = v170;
              os_unfair_lock_unlock((v39 + 14576));
              if (*MEMORY[0x1E695FF58] == 1)
              {
                OUTLINED_FUNCTION_22_2();
                OUTLINED_FUNCTION_42();
                kdebug_trace();
              }

              if (*(v39 + 156))
              {
                if (!*(v39 + 158))
                {
                  OUTLINED_FUNCTION_83_0();
                  BufferAndOptionsForTileDecoding = _createBufferAndOptionsForTileDecoding(v171, v162, v172, v173, v174, v175, v39 + 92, v176, &v1342, cf, v672, v688, v704, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880);
                  if (BufferAndOptionsForTileDecoding)
                  {
                    OutputFromConstituents = BufferAndOptionsForTileDecoding;
                    v178 = 0;
                    goto LABEL_277;
                  }

                  v178 = 0;
                  v179 = v1342;
                  goto LABEL_270;
                }
              }

              else if (!*(v39 + 158))
              {
                v179 = 0;
                v178 = 0;
                goto LABEL_270;
              }

              v193 = CFGetAllocator(*(&__src[0] + 1));
              v194 = CFDictionaryCreateMutable(v193, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              cf[0] = v194;
              if (v194)
              {
                v195 = v194;
                v1355.origin.x = OUTLINED_FUNCTION_14_5(*(v1293 + 8));
                v1355.size.width = *(v1293 + 24);
                v1355.size.height = *(v1293 + 32);
                v178 = CGRectCreateDictionaryRepresentation(v1355);
                if (v178)
                {
                  CFDictionaryAddValue(v195, @"CanvasPixelBuffer", *v1293);
                  CFDictionaryAddValue(v195, @"CanvasOrigin", v178);
                  if (*v1293)
                  {
                    v179 = CFRetain(*v1293);
                  }

                  else
                  {
                    v179 = 0;
                  }

                  *&v1342 = v179;
LABEL_270:
                  v196 = *v1293;
                  v197 = *(v1293 + 32);
                  *(DictionaryRepresentation + 16) = *(v1293 + 16);
                  *(DictionaryRepresentation + 32) = v197;
                  *DictionaryRepresentation = v196;
                  *(DictionaryRepresentation + 48) = v1268;
                  *(DictionaryRepresentation + 49) = v1323;
                  *(DictionaryRepresentation + 52) = *(&v1323 + 3);
                  *(DictionaryRepresentation + 56) = v1278;
                  *(DictionaryRepresentation + 64) = v1288;
                  *(DictionaryRepresentation + 72) = v1272;
                  memcpy((DictionaryRepresentation + 88), size, 0x49uLL);
                  *(DictionaryRepresentation + 161) = v22;
                  *(DictionaryRepresentation + 162) = *v1348;
                  *(DictionaryRepresentation + 176) = *(&v1348[1] + 6);
                  *(DictionaryRepresentation + 184) = v1298;
                  *(DictionaryRepresentation + 192) = *&__src[0];
                  if (v179)
                  {
                    v198 = CFRetain(v179);
                  }

                  else
                  {
                    v198 = 0;
                  }

                  *(DictionaryRepresentation + 208) = v198;
                  if (cf[0])
                  {
                    v199 = CFRetain(cf[0]);
                  }

                  else
                  {
                    v199 = 0;
                  }

                  *(DictionaryRepresentation + 216) = v199;
                  OutputFromConstituents = CMPhotoDecompressionPluginDecode(*(v39 + 16));
                  if (!OutputFromConstituents)
                  {
                    v17 = v168;
                    goto LABEL_282;
                  }

LABEL_277:
                  v17 = v168;
                  v200 = OUTLINED_FUNCTION_108();
                  _asyncCanvasDecodeFinished(v200, v201, OutputFromConstituents, 0);
                  v202 = *(DictionaryRepresentation + 208);
                  if (v202)
                  {
                    CFRelease(v202);
                    *(DictionaryRepresentation + 208) = 0;
                  }

                  v203 = *(DictionaryRepresentation + 216);
                  if (v203)
                  {
                    CFRelease(v203);
                    *(DictionaryRepresentation + 216) = 0;
                  }

LABEL_282:
                  if (v1342)
                  {
                    CFRelease(v1342);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  if (v178)
                  {
                    CFRelease(v178);
                  }

                  v12 = v1293;
                  a6 = v1295;
                  if (!OutputFromConstituents)
                  {
                    goto LABEL_289;
                  }

                  goto LABEL_546;
                }
              }

              else
              {
                v178 = 0;
              }

              OutputFromConstituents = 4294950305;
              goto LABEL_277;
            }

            v1348[0] = 0;
            cf[0] = 0;
            *&v180 = OUTLINED_FUNCTION_51_0();
            *(v181 + 96) = v180;
            *(v181 + 112) = v180;
            if (*(v39 + 156))
            {
              OUTLINED_FUNCTION_83_0();
              v186 = _createBufferAndOptionsForTileDecoding(v293, v294, v295, v296, v297, v298, v39 + 92, v299, cf, v1348, v672, v688, v704, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880);
              if (v186)
              {
                goto LABEL_596;
              }
            }

            else
            {
              v182 = *(v39 + 152);
              if (v182 == 825306677 || v182 == 1932996149 || v182 == 825437747)
              {
                v185 = CFGetAllocator(*(&__src[0] + 1));
                v1348[0] = CFDictionaryCreateMutable(v185, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v1348[0])
                {
                  goto LABEL_580;
                }

                v186 = FigCFDictionarySetInt();
                if (v186)
                {
                  goto LABEL_596;
                }
              }
            }

            *&size[24] = *&__src[0];
            if (*(v39 + 208) || (*&size[8] = dispatch_semaphore_create(0)) != 0)
            {
              v186 = CMPhotoDecompressionPluginDecode(*(v39 + 16));
              if (!v186)
              {
                if (!*(v39 + 208))
                {
                  dispatch_semaphore_wait(*&size[8], 0xFFFFFFFFFFFFFFFFLL);
                }

                OutputFromConstituents = *&size[16];
                if (*&size[16])
                {
                  goto LABEL_597;
                }

                DefaultTripletsForTransfer = *size;
                if (*size != cf[0] && *(v39 + 156))
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_19();
                  v186 = FigSignalErrorAtGM();
                }

                else
                {
                  if (v1268)
                  {
LABEL_239:
                    OutputFromConstituents = 0;
                    *size = 0;
                    goto LABEL_240;
                  }

                  v187 = OUTLINED_FUNCTION_14_5(*(v39 + 176));
                  v186 = OUTLINED_FUNCTION_77_0(DefaultTripletsForTransfer, v187, v188, *(v39 + 192), *(v39 + 200));
                  if (!v186)
                  {
                    DefaultTripletsForTransfer = *size;
                    goto LABEL_239;
                  }
                }
              }

LABEL_596:
              OutputFromConstituents = v186;
LABEL_597:
              DefaultTripletsForTransfer = 0;
LABEL_240:
              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (v1348[0])
              {
                CFRelease(v1348[0]);
              }

              if (*size)
              {
                CFRelease(*size);
              }

              if (*&size[8])
              {
                dispatch_release(*&size[8]);
              }

              if (!OutputFromConstituents)
              {
                if (!(v1278 | v1288) && v1272 == 0 || (v189 = OUTLINED_FUNCTION_77_0(DefaultTripletsForTransfer, v1278, v1288, v1272, *(&v1272 + 1)), !v189))
                {
                  pixelBuffer = DefaultTripletsForTransfer;
LABEL_289:
                  OutputFromConstituents = 0;
                  LOBYTE(v22) = v12 != 0;
LABEL_290:
                  DefaultTripletsForTransfer = 0;
                  v204 = OutputFromConstituents != 0;
                  goto LABEL_291;
                }

                OutputFromConstituents = v189;
              }

              goto LABEL_547;
            }

LABEL_580:
            DefaultTripletsForTransfer = 0;
            OutputFromConstituents = 4294950305;
            goto LABEL_240;
          }

          if (DictionaryRepresentation)
          {
            HEIFItemDecoderRelease(DictionaryRepresentation);
            *&v1328 = 0;
          }

          HIDWORD(v1338[5]) = 1;
          size[0] = v1268;
          *&size[1] = v1346;
          OUTLINED_FUNCTION_33_0(*(&v1346 + 3), v644, v658, v672, v688, v704, v718, v728, v739, v750, v760, v770, v780, v790, v800, v810, v820, v830, v840, v850, v860, object, v880, v890, v900, v910, v920, v930, v940, v950, v961, v971, v981, v994, v1007, v1019, v1031, v1042, v1054, v1066[0], v1066[1], v1086, v1101, v1113, v1126, v1136, v1146, theArray, v1171, v1184, v1197, v1209, v1225, v1235, v1248, v1256, v1260, v1261, v1265, v1268, v1272, *(&v1272 + 1), v1278);
          size[113] = v22;
          *&size[114] = *v1340;
          DictionaryRepresentation = v1338;
          *&size[128] = *&v1340[14];
          OUTLINED_FUNCTION_43();
          OUTLINED_FUNCTION_84_0();
          v153 = HEIFItemDecoderCreate(v154, v155, v156, v157, v158, v159, v160, v161, 0, 0, v674, v690, v706);
          if (!v153)
          {
            v39 = v1328;
            goto LABEL_195;
          }
        }

        OutputFromConstituents = v153;
LABEL_546:
        DefaultTripletsForTransfer = 0;
LABEL_547:
        v347 = a4;
LABEL_555:
        LOBYTE(v22) = 0;
        if (v347)
        {
          *(v347 + 14580) = OutputFromConstituents;
        }

        v204 = 1;
LABEL_291:
        if (v1328)
        {
          OUTLINED_FUNCTION_10_0();
          DictionaryRepresentation = HEIFItemDecoderWaitForFinishAndReturnStatus(v205, v206, v207, v208);
          HEIFItemDecoderRelease(v1328);
          OutputFromConstituents = v204 ? OutputFromConstituents : DictionaryRepresentation;
          if (*MEMORY[0x1E695FF58] == 1)
          {
            OUTLINED_FUNCTION_22_2();
            OUTLINED_FUNCTION_42();
            kdebug_trace();
          }
        }

        if (DefaultTripletsForTransfer)
        {
          CFRelease(DefaultTripletsForTransfer);
        }

        v209 = v1351;
        if (!v1351)
        {
          goto LABEL_1030;
        }

        goto LABEL_1029;
      }

LABEL_544:
      OUTLINED_FUNCTION_47_0();
      goto LABEL_290;
    }

    OUTLINED_FUNCTION_46_0();
LABEL_554:
    v347 = a4;
    goto LABEL_555;
  }

  OUTLINED_FUNCTION_120(__src);
  LODWORD(v22) = *a5;
  DefaultTripletsForTransfer = a5[1];
  OUTLINED_FUNCTION_96_0();
  v239 = *(a5 + 1);
  v10 = *(a5 + 2);
  v240 = *(a5 + 4);
  v1292 = *(a5 + 3);
  v241 = *(a5 + 56);
  *v1348 = *(a5 + 40);
  *&v1348[2] = v241;
  *&v1348[4] = *(a5 + 72);
  *(&v1275 + 1) = *(a5 + 11);
  v1282 = v240;
  *&v1275 = *(a5 + 12);
  v1257 = *(a5 + 13);
  v1271 = a5[112];
  v1212 = a5[113];
  v1250 = a5[114];
  v1320 = a5[119];
  v1319 = *(a5 + 115);
  *v1236 = *(a5 + 15);
  v1199 = *(a5 + 16);
  *&v1322 = 0;
  v1321[0] = 0;
  OUTLINED_FUNCTION_49();
  v1317 = 0;
  v1306 = -1;
  v1315 = -1;
  v1316 = 0;
  BOOLean = 0;
  if (*&__src[0])
  {
    DictionaryRepresentation = *&__src[0];
  }

  else
  {
    DictionaryRepresentation = *(&__src[0] + 1);
  }

  v1313 = 0;
  v1264 = CFGetAllocator(*(&__src[0] + 1));
  if (_getImageOrientation(*(&__src[0] + 1), v1297, 0, &v1310))
  {
    goto LABEL_1096;
  }

  v242 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v242)
  {
    goto LABEL_447;
  }

  if (v242(v1297, v1321))
  {
    goto LABEL_1096;
  }

  v1328 = 0uLL;
  v1323 = 0uLL;
  v1346 = 0uLL;
  v1344 = 0uLL;
  memset(cf, 0, 32);
  if (CMPhotoPictureReaderGetImageGeometryFromPictureReader(v1297, *(*(&__src[0] + 1) + 28), cf, &v1344) || _getTileGeometryFromPictureTileCursorService(v1321[0], &v1328, &v1323, &v1346) || CMPhotoPictureReaderGetImageCodecTypeFromReader(v1297, &v1313))
  {
    goto LABEL_1096;
  }

  if (v22)
  {
    cf[1] = 0;
    cf[0] = 0;
    *&cf[2] = v1346;
  }

  v1194 = DefaultTripletsForTransfer;
  if (v239 | v10 || v1292 | v1282 && (v1292 == cf[2] ? (v300 = v1282 == cf[3]) : (v300 = 0), !v300))
  {
    *size = v239;
    *&size[8] = v10;
    *&size[16] = v1292;
    *&size[24] = v1282;
    if (CMPhotoApplyCropCMPhotoRectToRect(cf, size))
    {
      goto LABEL_378;
    }
  }

  OutputFromConstituents = *(&v1323 + 1);
  DefaultTripletsForTransfer = v1323;
  v301 = cf[0] / v1323 * v1323;
  v302 = cf[1] / *(&v1323 + 1) * *(&v1323 + 1);
  cf[0] = (cf[0] % v1323);
  cf[1] = (cf[1] % *(&v1323 + 1));
  *&v1344 = cf[2] + cf[0];
  *(&v1344 + 1) = cf[3] + cf[1];
  v303 = (cf[2] + cf[0] + v1323 + ~((cf[2] + cf[0] - 1) % v1323)) / v1323;
  v304 = (cf[3] + cf[1] + *(&v1323 + 1) + ~((cf[3] + cf[1] - 1) % *(&v1323 + 1))) / *(&v1323 + 1);
  *&v1328 = v303;
  *(&v1328 + 1) = v304;
  if (v1313 == 1936484717 && (v304 > 4 || v303 != 1))
  {
    LOBYTE(v22) = 0;
    OutputFromConstituents = 4294950297;
    goto LABEL_450;
  }

  *&v1346 = v303 * v1323;
  *(&v1346 + 1) = v304 * *(&v1323 + 1);
  if (v12)
  {
    v306 = ((v10 % *(&v1323 + 1)) | (v239 % v1323)) == 0;
  }

  else
  {
    v306 = 0;
  }

  v307 = v306;
  if (v1194)
  {
    v308 = v1310 == 1;
  }

  else
  {
    v308 = 1;
  }

  if (v308)
  {
    v309 = v307;
  }

  else
  {
    v309 = 0;
  }

  if (v309 == 1 && (!*v12 || *(v12 + 8) != 0 || *(v12 + 24) != 0 || !*(v12 + 40)))
  {
    LOBYTE(v22) = 0;
    OutputFromConstituents = 4294950304;
    goto LABEL_450;
  }

  v1092 = v22;
  v22 = v1338;
  v1287 = v17;
  DictionaryRepresentation = *(&v1275 + 1);
  v310 = v1275;
  v1152 = v309;
  theArrayb = v302;
  *v1177 = v301;
  if (v1275 == 0 || (v1323 == *(&v1275 + 1) ? (v311 = *(&v1323 + 1) == v1275) : (v311 = 0), v311))
  {
    v1331 = v1323;
    v1119 = 1;
    v310 = *(&v1323 + 1);
    DictionaryRepresentation = v1323;
  }

  else
  {
    v1119 = 0;
    *&v1331 = *(&v1275 + 1);
    *(&v1331 + 1) = v1275;
  }

  v1071 = DictionaryRepresentation * v303;
  value.i64[0] = DictionaryRepresentation * v303;
  value.i64[1] = v310 * v304;
  *size = 0;
  *&size[8] = 0;
  *&size[16] = cf[2] + cf[0];
  *&size[24] = cf[3] + cf[1];
  OUTLINED_FUNCTION_79_0(&v1342);
  v1327 = v1343[0];
  v1351 = 0u;
  *v1352 = 0u;
  *size = *cf;
  *&size[16] = *&cf[2];
  OUTLINED_FUNCTION_79_0(&v1351);
  if (_copyColorInfoForItem(*(&__src[0] + 1), v1297, 0, v1271, &v1316, 0, &v1334, &v1333, &v1332, &v1317, &v1306, &v1315, 0))
  {
    OUTLINED_FUNCTION_47_0();
    v17 = v1287;
    v10 = a9;
    goto LABEL_451;
  }

  DefaultTripletsForTransfer = FigPictureReaderGetFigBaseObject();
  v312 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v17 = v1287;
  if (!v312)
  {
    OUTLINED_FUNCTION_86_0();
    goto LABEL_450;
  }

  if (v312(DefaultTripletsForTransfer, *MEMORY[0x1E6972308], v1264, &BOOLean))
  {
LABEL_378:
    OUTLINED_FUNCTION_47_0();
LABEL_450:
    v10 = a9;
    goto LABEL_451;
  }

  v313 = CFBooleanGetValue(BOOLean);
  LODWORD(v22) = v313;
  DefaultTripletsForTransfer = &BOOLean;
  if (v1313 == 1936484717 && !v313)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_19();
    OutputFromConstituents = FigSignalErrorAtGM();
    goto LABEL_450;
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
    BOOLean = 0;
  }

  DictionaryRepresentation = FigPictureReaderGetFigBaseObject();
  v314 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v314)
  {
LABEL_447:
    OUTLINED_FUNCTION_86_0();
LABEL_448:
    v10 = a9;
    goto LABEL_451;
  }

  if (v314(DictionaryRepresentation, *MEMORY[0x1E6972300], v1264, &BOOLean))
  {
LABEL_1096:
    OUTLINED_FUNCTION_47_0();
    goto LABEL_448;
  }

  if (CFBooleanGetValue(BOOLean))
  {
    OutputFromConstituents = 0;
  }

  else
  {
    OutputFromConstituents = v1119;
  }

  if (v1152)
  {
    dispatch_retain(*(v12 + 40));
    v315 = *(v12 + 40);
  }

  else
  {
    v315 = dispatch_queue_create("com.apple.cmphoto.canvasTransferQueue", 0);
  }

  if (!v315)
  {
    LOBYTE(v22) = 0;
    OutputFromConstituents = 4294950305;
    goto LABEL_448;
  }

  DictionaryRepresentation = v1321[0];
  v316 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v316)
  {
    LOBYTE(v22) = 0;
    v346 = 0;
    OutputFromConstituents = 4294954514;
LABEL_542:
    v10 = a9;
    goto LABEL_593;
  }

  v988 = OutputFromConstituents;
  if (v316(DictionaryRepresentation, &v1337))
  {
    OUTLINED_FUNCTION_47_0();
    v346 = 0;
    goto LABEL_542;
  }

  v1025 = v22;
  v1013 = v315;
  memset(v1340, 0, 37);
  v1325 = 0;
  v1326 = 0;
  v1318[0] = 0;
  *(v1318 + 3) = 0;
  v317 = *(&v1328 + 1);
  v1267 = a5;
  if (!*(&v1328 + 1))
  {
    goto LABEL_561;
  }

  v1001 = 0;
  v22 = 0;
  v318 = 0;
  v319 = v1257;
  if (!v1257)
  {
    v319 = 875704422;
  }

  v955 = v319;
  v1120 = v1327;
  v1036 = *MEMORY[0x1E69723A0];
  v1048 = *(&v1327 + 1);
  v320 = v1328;
  do
  {
    if (v320)
    {
      DefaultTripletsForTransfer = 0;
      v1284 = v318;
      while (1)
      {
        if (v1336)
        {
          CFRelease(v1336);
          v1336 = 0;
        }

        if (v22)
        {
          OutputFromConstituents = *(v22 + 14580);
          if (OutputFromConstituents)
          {
            goto LABEL_1118;
          }
        }

        v321 = v1323;
        DictionaryRepresentation = v1337;
        v322 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v322)
        {
          goto LABEL_559;
        }

        a6 = v321 * DefaultTripletsForTransfer;
        v17 = *(&v321 + 1) * v1284;
        v318 = v1284;
        v323 = v322(DictionaryRepresentation, *v1177 + v321 * DefaultTripletsForTransfer, theArrayb + *(&v321 + 1) * v1284);
        if (v323)
        {
          goto LABEL_1117;
        }

        DictionaryRepresentation = FigPictureTileCursorGetCMBaseObject();
        v324 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v324)
        {
LABEL_559:
          OUTLINED_FUNCTION_86_0();
          goto LABEL_592;
        }

        v323 = v324(DictionaryRepresentation, v1036, v1264, &v1336);
        if (v323)
        {
          goto LABEL_1117;
        }

        if (!v1322)
        {
          break;
        }

LABEL_507:
        v326 = *(&v1331 + 1) * v1284;
        v327 = v1120 - v1331 * DefaultTripletsForTransfer;
        if (v1331 >= v327)
        {
          v328 = v1120 - v1331 * DefaultTripletsForTransfer;
        }

        else
        {
          v328 = v1331;
        }

        if (*(&v1331 + 1) >= (v1048 - v326))
        {
          v329 = v1048 - v326;
        }

        else
        {
          v329 = *(&v1331 + 1);
        }

        if (v328 && v329)
        {
          v330 = v1344 - a6;
          v331 = *(&v1344 + 1) - v17;
          v332 = v1331 > v327 || *(&v1331 + 1) > (v1048 - v326);
          v333 = v332;
          a6 = v333 ? v329 : 0;
          v17 = v333 ? v328 : 0;
          *&__dst[0] = v1322;
          *(&__dst[0] + 1) = v1331 * DefaultTripletsForTransfer;
          *&__dst[1] = *(&v1331 + 1) * v1284;
          *(&__dst[1] + 1) = v328;
          *&__dst[2] = v329;
          *(&__dst[2] + 1) = v1013;
          DictionaryRepresentation = v1336;
          memcpy(v1338, __src, sizeof(v1338));
          OUTLINED_FUNCTION_23_2();
          *&size[3] = *v1340;
          *&size[19] = *&v1340[16];
          *&size[32] = *&v1340[29];
          *&size[40] = 0;
          *&size[48] = 0;
          *&size[56] = v17;
          *&size[64] = a6;
          *&size[72] = v330;
          *&size[80] = v331;
          v318 = v1284;
          *&size[88] = *(&v1275 + 1);
          *&size[96] = v1275;
          *&size[112] = v1271;
          size[114] = v1250;
          *&size[115] = v1325;
          size[119] = v1326;
          *&size[120] = *v1236;
          size[128] = 0;
          *&size[129] = v1318[0];
          *&size[132] = *(v1318 + 3);
          v649 = 0;
          OUTLINED_FUNCTION_44();
          v22 = v1001;
          v323 = _decodeItem(v334, v335, v336, v1001, v337, 0, v338, 0);
          if (v323)
          {
            goto LABEL_1117;
          }
        }

        ++DefaultTripletsForTransfer;
        v320 = v1328;
        if (DefaultTripletsForTransfer >= v1328)
        {
          v317 = *(&v1328 + 1);
          goto LABEL_537;
        }
      }

      if (v1152)
      {
        v325 = *v1293;
        if (*v1293)
        {
          v325 = CFRetain(v325);
        }

        *&v1322 = v325;
        if (!v1025 || v22)
        {
LABEL_499:
          OUTLINED_FUNCTION_103_0();
          if (v30)
          {
            OUTLINED_FUNCTION_22_2();
            OUTLINED_FUNCTION_6();
            kdebug_trace();
            v22 = v1335;
            if (v1335)
            {
              OUTLINED_FUNCTION_103_0();
              if (v30)
              {
                OUTLINED_FUNCTION_6();
                kdebug_trace();
              }
            }
          }

          else
          {
            v22 = v1335;
          }

          if (!v1322)
          {
            goto LABEL_1123;
          }

          CMPhotoAddColorInformationToPixelBufferAccordingToFormat(v1334, v1333, v1332, v1317, v1322);
          CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(v1306, v1315, v1322);
          CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(v1316, v1322);
          v1001 = v22;
          goto LABEL_507;
        }
      }

      else if (!v1025 || v22)
      {
        *size = 0;
        *&size[8] = 0;
        *&size[16] = v1120;
        *&size[24] = v1048;
        OUTLINED_FUNCTION_55_0();
        v323 = _createPixelBuffer(v339, v340, v341, v955, v342, v343, v1071, v344, v649, v663, v679, v695);
        if (v323)
        {
          goto LABEL_1117;
        }

        goto LABEL_499;
      }

      *&size[40] = *v1348;
      size[0] = v1092;
      size[1] = v1194;
      *&size[2] = v1308;
      *&size[6] = v1309;
      *&size[8] = v239;
      *&size[16] = v10;
      *&size[24] = v1292;
      *&size[32] = v1282;
      *&size[56] = *&v1348[2];
      *&size[72] = *&v1348[4];
      *&size[88] = *(&v1275 + 1);
      *&size[96] = v1275;
      *&size[104] = v1257;
      size[112] = v1271;
      size[113] = v1212;
      size[114] = v1250;
      size[119] = v1320;
      *&size[115] = v1319;
      *&size[120] = *v1236;
      *&size[128] = v1199;
      v323 = HEIFItemDecoderCreate(__src, v1297, v1336, 0, size, v988, v1328, *(&v1328 + 1), &v1327, &value, &v1331, &v1335, &v1322);
      if (v323)
      {
        goto LABEL_1117;
      }

      goto LABEL_499;
    }

LABEL_537:
    ++v318;
  }

  while (v318 < v317);
  if (!v1001)
  {
LABEL_561:
    v345 = 0;
LABEL_562:
    dispatch_barrier_sync(v1013, &__block_literal_global_13);
    v348 = *MEMORY[0x1E695FF58];
    if (v345 && v348 == 1)
    {
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_6();
      kdebug_trace();
      v348 = *MEMORY[0x1E695FF58];
    }

    if (v348 == 1)
    {
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_6();
      kdebug_trace();
    }

    if (v1322)
    {
      v349 = OUTLINED_FUNCTION_14_5(*&v1351);
      v352 = OUTLINED_FUNCTION_42_1(v350, v349, v351, *v1352, *&v1352[8]);
      LOBYTE(v22) = v352 == 0;
      v353 = v1152;
      if (v352)
      {
        v353 = 1;
      }

      if (v353)
      {
        OutputFromConstituents = v352;
      }

      else
      {
        LOBYTE(v22) = 0;
        OutputFromConstituents = 0;
        pixelBuffer = v1322;
        *&v1322 = 0;
      }
    }

    else
    {
LABEL_1123:
      LOBYTE(v22) = 0;
      OutputFromConstituents = 4294950305;
    }

    goto LABEL_592;
  }

  v323 = HEIFItemDecoderWaitForFinishAndReturnStatus(v1001, &v1344, &v1323, &v1331);
  if (!v323)
  {
    v345 = 1;
    goto LABEL_562;
  }

LABEL_1117:
  OutputFromConstituents = v323;
LABEL_1118:
  LOBYTE(v22) = 0;
LABEL_592:
  a5 = v1267;
  OUTLINED_FUNCTION_69_0();
  v315 = v1013;
  v346 = v1335;
LABEL_593:
  HEIFItemDecoderRelease(v346);
  dispatch_release(v315);
LABEL_451:
  if (v1316)
  {
    CFRelease(v1316);
  }

  if (v1334)
  {
    CFRelease(v1334);
  }

  if (v1333)
  {
    CFRelease(v1333);
  }

  if (v1332)
  {
    CFRelease(v1332);
  }

  if (v1317)
  {
    CFRelease(v1317);
  }

  if (v1321[0])
  {
    CFRelease(v1321[0]);
  }

  if (v1337)
  {
    CFRelease(v1337);
  }

  if (v1322)
  {
    CFRelease(v1322);
  }

  if (v1336)
  {
    CFRelease(v1336);
  }

  v209 = BOOLean;
  if (BOOLean)
  {
    goto LABEL_1029;
  }

LABEL_1030:
  if (!OutputFromConstituents)
  {
    goto LABEL_1031;
  }

LABEL_1070:
  OUTLINED_FUNCTION_40_1();
LABEL_1071:
  v624 = pixelBuffer;
  if (pixelBuffer)
  {
LABEL_1072:
    CFRelease(v624);
  }

LABEL_1073:
  if (DefaultTripletsForTransfer)
  {
    CFRelease(DefaultTripletsForTransfer);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return OutputFromConstituents;
}

void _applyDecodeStrategy()
{
  OUTLINED_FUNCTION_122();
  v111 = v0;
  v112 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v1;
  v15 = v14;
  v110 = *MEMORY[0x1E69E9840];
  v104 = 0;
  v105 = 0;
  v16 = *(v1 + 88);
  if (*(v1 + 105))
  {
    if (v16)
    {
      DictionaryRepresentation = v2;
      if (CVPixelBufferGetIOSurface(*(v1 + 88)))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        goto LABEL_83;
      }
    }
  }

  HIDWORD(v74) = v8;
  v75 = v12;
  v18 = 1;
  if (!*(v13 + 309))
  {
    v18 = *(v13 + 308) != 0;
  }

  v103 = 1;
  v106 = 0;
  v107 = 0;
  LODWORD(v73) = *(v13 + 306);
  HIDWORD(v73) = *(v13 + 305);
  LODWORD(v74) = *(v13 + 21);
  v108 = *(v13 + 24);
  v109 = *(v13 + 40);
  cf = v16;
  if (*(v13 + 304))
  {
    v102 = *(v13 + 16);
  }

  else
  {
    v102 = 0uLL;
  }

  v12 = *(v13 + 31);
  DictionaryRepresentation = *(v13 + 3);
  v19 = *(v13 + 14);
  HIDWORD(v71) = v18;
  if (v16 == 0 || v18 || *(v13 + 307))
  {
    v57 = memcpy(__dst, v15, sizeof(__dst));
    OUTLINED_FUNCTION_11_12(v57, v58, v59, v60, v61, v62, v63, v64, v66, v67, v68, v71, v73, v74, v75, v10, v16, v82[0], v82[1], v82[2], v82[3], v82[4], v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v102);
    BYTE2(v98) = DictionaryRepresentation;
    HIBYTE(v98) = 0;
    *(v65 + 115) = 0;
    v99 = v19;
    v100 = 0;
    if (!_decodeItem(__dst, v77, v79, 0, &v84, &v103, 0, v6, &v105))
    {
      goto LABEL_13;
    }

LABEL_83:
    OUTLINED_FUNCTION_29_3();
    goto LABEL_64;
  }

  v20 = v6;
  v21 = *(v13 + 3);
  v69 = v4;
  DictionaryRepresentation = cf;
  v105 = CFRetain(cf);
  v22 = dispatch_queue_create("bufferQueue", 0);
  if (!v22)
  {
    OUTLINED_FUNCTION_29_3();
    goto LABEL_64;
  }

  v23 = v22;
  v83 = v22;
  v24 = memcpy(__dst, v15, sizeof(__dst));
  OUTLINED_FUNCTION_11_12(v24, v25, v26, v27, v28, v29, v30, v31, v66, v67, v69, v71, v73, v74, v75, v10, cf, cf, 0, 0, 0, 0, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v102);
  DictionaryRepresentation = v21;
  BYTE2(v98) = v21;
  HIBYTE(v98) = 0;
  *(v32 + 115) = 0;
  v99 = v19;
  v100 = 0;
  v33 = _decodeItem(__dst, v76, v78, 0, &v84, &v103, v82, v20, 0);
  dispatch_barrier_sync(v23, &__block_literal_global_9);
  dispatch_release(v23);
  v4 = v70;
  if (v33)
  {
    goto LABEL_83;
  }

LABEL_13:
  if (*(v13 + 307))
  {
    v34 = OUTLINED_FUNCTION_14_5(*(v13 + 34));
    if (OUTLINED_FUNCTION_42_1(v35, v34, v36, *(v13 + 36), *(v13 + 37)))
    {
      goto LABEL_83;
    }
  }

  v37 = CMPhotoPixelBufferHasCLAP(v105) && *(v13 + 317) == 0;
  v12 = CMPhotoPixelBufferHasUnhandledIdentityMatrix(v105);
  if (*v15)
  {
    if (CMPhotoDecompressionSessionAsyncRequestCancelled(*(v15[1] + 16), *v15))
    {
      goto LABEL_83;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v105);
  v39 = PixelFormatType;
  v40 = *(v15 + 22);
  if (v40)
  {
    v41 = v40 == PixelFormatType;
  }

  else
  {
    v41 = 1;
  }

  v42 = v41;
  v43 = *(v13 + 8);
  if (*(v13 + 8))
  {
    v43 = *(v13 + 1) == PixelFormatType;
  }

  if (((v42 | v43) & 1) == 0)
  {
    FullRangeForPixelFormat = CMPhotoGetFullRangeForPixelFormat(PixelFormatType);
    v45 = *(v15 + 22);
    if ((FullRangeForPixelFormat == v45 || CMPhotoGetFullRangeForPixelFormat(v45) == v39) && !CMPhotoCreateOtherRangePixelBufferWithBacking(v105))
    {
      if (v105)
      {
        CFRelease(v105);
      }

      v46 = v104;
      v104 = 0;
      v105 = v46;
    }
  }

  if (cfa)
  {
    v47 = cfa == v105;
  }

  else
  {
    v47 = 1;
  }

  v48 = !v47;
  if (((v37 | v72) & 1) == 0 && (v48 & 1) == 0 && !v12 && !*(v13 + 78))
  {
    OUTLINED_FUNCTION_29_3();
LABEL_63:
    *v4 = v56;
    v105 = 0;
    goto LABEL_64;
  }

  ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, *(v15 + 48), *(v15 + 50), *(v15 + 51), *(v15 + 52));
  v12 = ScaleAndRotateOptionsWithHWIfNeeded;
  if (ScaleAndRotateOptionsWithHWIfNeeded)
  {
    if (DictionaryRepresentation)
    {
      CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", DictionaryRepresentation);
    }

    if (!*(v13 + 308))
    {
      v103 = 1;
    }

    v50 = v105;
    v51 = CVPixelBufferGetPixelFormatType(v105);
    DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(v50, v51);
    v54 = v53;
    CMPhotoCFDictionarySetBoolean(v12, @"DestinationBackedByIOSurface", *(v15 + 49) == 0);
    CMPhotoCFDictionarySetInt(v12, @"SourceExifOrientation", v103);
    v55 = *(v13 + 78);
    if (!v55)
    {
      v55 = CVPixelBufferGetPixelFormatType(v105);
    }

    CMPhotoCFDictionarySetInt(v12, @"DestinationPixelFormat", v55);
    CMPhotoCFDictionarySetBoolean(v12, @"ExactDimensions", 1);
    DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(DefaultTripletsForTransfer, v54);
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(v12, @"DestinationColorTripletDictionary", DictionaryRepresentation);
    }

    v113.width = OUTLINED_FUNCTION_14_5(*(v13 + 26));
    v13 = CGSizeCreateDictionaryRepresentation(v113);
    if (v13)
    {
      CFDictionarySetValue(v12, @"DestinationSizeDictionary", v13);
    }

    v84 = cfa;
    if (!CMPhotoScaleAndRotateSessionTransformImage(v15[4], v105, v12, &v84))
    {
      if (cfa && v84)
      {
        CFRetain(v84);
      }

      if (v105)
      {
        CFRelease(v105);
      }

      v56 = v84;
      goto LABEL_63;
    }
  }

  else
  {
    v13 = 0;
    DictionaryRepresentation = 0;
  }

LABEL_64:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_121();
}

uint64_t CMPhotoCodecSessionPool_CreateSession(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, void **), uint64_t a7, void **a8, _BYTE *a9)
{
  v45 = 0;
  key = 0;
  v14 = 88;
  if (!a2)
  {
    v14 = 48;
  }

  v15 = (a1 + v14);
  v16 = 40;
  if (!a2)
  {
    v16 = 32;
  }

  v17 = *(a1 + v16);
  v44 = v17;
  do
  {
    if (*(a1 + 16))
    {
      v26 = 4294950195;
      goto LABEL_65;
    }

    v18 = FigSimpleMutexLock();
    if (v18)
    {
      v26 = v18;
      goto LABEL_65;
    }

    Value = CFDictionaryGetValue(v15[2], a3);
    if (Value && CFArrayGetCount(Value))
    {
      v20 = OUTLINED_FUNCTION_5();
      ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      key = ValueAtIndex;
      v23 = OUTLINED_FUNCTION_5();
      CFArrayRemoveValueAtIndex(v23, v24);
      v25 = CFDictionaryGetValue(v15[3], key);
      if (!v25)
      {
        v26 = 4294950195;
        goto LABEL_43;
      }

      if (a2)
      {
        goto LABEL_14;
      }

LABEL_55:
      CFDataGetBytePtr(a3);
      goto LABEL_14;
    }

    Count = CFArrayGetCount(v15[1]);
    if (Count >= v17)
    {
      OUTLINED_FUNCTION_0_9();
      CodecSessionPool_PurgeSessionsWithCriteria(v15, v41, 0, 1);
      Count = CFArrayGetCount(v15[1]);
    }

    if (Count >= v17)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_43;
    }

    v28 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E204024717DD0uLL);
    v25 = v28;
    if (!v28)
    {
      v26 = 4294950305;
      goto LABEL_43;
    }

    *v28 = a2;
    if (a3)
    {
      v29 = CFRetain(a3);
    }

    else
    {
      v29 = 0;
    }

    v25[4] = v29;
    v25[5] = 0;
    *(v25 + 49) = 0;
    v26 = a6(v25, a7, &key);
    v30 = 10;
    if (!a2)
    {
LABEL_23:
      if (v26 != -12915)
      {
        goto LABEL_30;
      }

      if (Count >= 1 && v30 >= 2)
      {
        goto LABEL_40;
      }

      v26 = 4294954381;
LABEL_42:
      v17 = v44;
      goto LABEL_43;
    }

LABEL_30:
    while (1)
    {
      v32 = a2 == 1 && v26 == -12913;
      v33 = !v32 || Count < 1;
      if (v33 || v30 <= 1)
      {
        break;
      }

LABEL_40:
      --v30;
      OUTLINED_FUNCTION_0_9();
      CodecSessionPool_PurgeSessionsWithCriteria(v15, v35, 0, 1);
      v26 = a6(v25, a7, &key);
      Count = CFArrayGetCount(v15[1]);
      if (!a2)
      {
        goto LABEL_23;
      }
    }

    if (v26)
    {
      goto LABEL_42;
    }

    v39 = key;
    v25[3] = key;
    CFDictionarySetValue(v15[3], v39, v25);
    CFArrayGetCount(v15[1]);
    CFArrayAppendValue(v15[1], v39);
    v40 = v45;
    if (key)
    {
      v40 = 1;
    }

    v45 = v40;
    v17 = v44;
    if (!a2)
    {
      goto LABEL_55;
    }

LABEL_14:
    v26 = 0;
    v25[1] = a5;
    v25[2] = a4;
    *(v25 + 48) = 0;
    v25 = 0;
LABEL_43:
    CodecGateway_Destroy(v25);
    if (v26 || key)
    {
      FigSimpleMutexUnlock();
      if (v26)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v36 = malloc_type_calloc(1uLL, 0x10uLL, 0xE00402B90B96AuLL);
      if (!v36 || (v37 = dispatch_semaphore_create(0), (*(v36 + 1) = v37) == 0))
      {
        WaitingClient_Destroy(v36);
        FigSimpleMutexUnlock();
        v26 = 4294950305;
        goto LABEL_65;
      }

      if (a3)
      {
        v38 = CFRetain(a3);
      }

      else
      {
        v38 = 0;
      }

      *v36 = v38;
      WaitingClient_Destroy(0);
      CFArrayAppendValue(v15[4], v36);
      FigSimpleMutexUnlock();
      dispatch_semaphore_wait(*(v36 + 1), 0xFFFFFFFFFFFFFFFFLL);
      WaitingClient_Destroy(v36);
    }
  }

  while (!key);
  *a8 = key;
  key = 0;
  v26 = 0;
  if (a9)
  {
    *a9 = v45;
  }

LABEL_65:
  WaitingClient_Destroy(0);
  if (key)
  {
    CFRelease(key);
  }

  return v26;
}

void OUTLINED_FUNCTION_38_0()
{
  LOBYTE(STACK[0x4E4]) = 0;
  LODWORD(STACK[0x4E0]) = 0;
  *(v0 - 137) = 0;
  LODWORD(STACK[0x753]) = 0;
  LODWORD(STACK[0x761]) = 0;
  *(v0 - 124) = 0;
}

uint64_t CMPhotoDecompressionPluginCreate(const void *a1, const void *a2, const void *a3, const void *a4, int a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  IsTileDecoderAvailable = CMPhotoIsTileDecoderAvailable(a5);
  v20 = 0;
  v21 = 4294950306;
  if (!a11 || !a13)
  {
    goto LABEL_36;
  }

  v22 = IsTileDecoderAvailable;
  if (a10)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  v23 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E0040E64C4356uLL);
  v20 = v23;
  if (!v23)
  {
    v21 = 4294950305;
    goto LABEL_36;
  }

  switch(a5)
  {
    case 1635135537:
    case 1635148593:
      goto LABEL_13;
    case 1936484717:
      v26 = CMPhotoDecompressionPluginClassSlim;
      goto LABEL_18;
    case 1785750887:
      v26 = CMPhotoDecompressionPluginClassJPEG;
LABEL_18:
      v25 = v26;
      goto LABEL_19;
  }

  if (a5 != 1752589105)
  {
    v21 = 4294950298;
    goto LABEL_36;
  }

LABEL_13:
  if (v22)
  {
    v25 = CMPhotoDecompressionPluginClassVideoToolbox_Tile;
  }

  else
  {
    v25 = CMPhotoDecompressionPluginClassVideoToolbox;
  }

LABEL_19:
  v23[5] = v25;
  v23[6] = a11;
  if (a1)
  {
    v27 = CFRetain(a1);
  }

  else
  {
    v27 = 0;
  }

  *v20 = v27;
  if (a2)
  {
    v28 = CFRetain(a2);
  }

  else
  {
    v28 = 0;
  }

  v20[1] = v28;
  if (a3)
  {
    v29 = CFRetain(a3);
  }

  else
  {
    v29 = 0;
  }

  v20[2] = v29;
  if (a4)
  {
    v30 = CFRetain(a4);
  }

  else
  {
    v30 = 0;
  }

  v20[3] = v30;
  if (a6)
  {
    v31 = CFRetain(a6);
  }

  else
  {
    v31 = 0;
  }

  v20[4] = v31;
  v20[7] = a12;
  *(v20 + 18) = a5;
  *(v20 + 19) = 1;
  v20[10] = a9;
  v20[11] = a8;
  v21 = (*v20[5])(v20, a7, a10, a11);
  if (!v21)
  {
    *a13 = v20;
    v20 = 0;
  }

LABEL_36:
  CMPhotoDecompressionPluginDispose(v20);
  return v21;
}

uint64_t HEIFItemDecoderCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, char a6, unint64_t a7, unint64_t a8, __int128 *a9, size_t *a10, uint64_t *a11, void *a12, __CVBuffer **a13)
{
  v19 = CFGetAllocator(*(a1 + 8));
  v149 = 0;
  v150 = 0;
  v148[0] = 0;
  v148[1] = 0;
  v147 = 0;
  v136 = *(a5 + 112);
  v140 = *(a5 + 104);
  v146 = 0;
  if (*(a1 + 49))
  {
    v20 = 2;
  }

  else
  {
    v20 = 4;
  }

  v132 = v20;
  if (*(a1 + 49))
  {
    v21 = 2;
  }

  else
  {
    v21 = 64;
  }

  v22 = malloc_type_calloc(1uLL, 0x3918uLL, 0x10600407F32F884uLL);
  if (!v22)
  {
    Mutable = 0;
    goto LABEL_162;
  }

  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
LABEL_162:
    v78 = 4294950305;
    goto LABEL_152;
  }

  *(v22 + 1) = a1;
  v24 = a3;
  value_4 = a6;
  if (a3)
  {
    v24 = CFRetain(a3);
  }

  *(v22 + 5) = v24;
  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v24, *(*(a1 + 8) + 28), (v22 + 176), (v22 + 160));
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_168;
  }

  ImageGeometryFromPictureReader = _copyColorInfoForItem(*(a1 + 8), *(v22 + 5), 0, v136, v22 + 3, *(a5 + 128), v22 + 6, v22 + 7, v22 + 8, v22 + 9, v22 + 20, v22 + 21, 0);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_168;
  }

  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageCodecTypeFromReader(*(v22 + 5), &v147);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_168;
  }

  v145 = 0;
  ImageGeometryFromPictureReader = CMPhotoDecompressionContainerIsCodecAllowed(*(a1 + 8), v147, &v145);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_168;
  }

  if (!v145 || v147 == 1936484717 && (v26 = FigCFArrayContainsInt(), IsInternalBuild = FigDebugIsInternalBuild(), !CMPhotoAllowExperimentalCodecsOverride(IsInternalBuild | v26)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_16();
LABEL_167:
    ImageGeometryFromPictureReader = FigSignalErrorAtGM();
    goto LABEL_168;
  }

  if (!a2)
  {
    a2 = *(v22 + 5);
  }

  value = v21;
  if (!CMPhotoPictureReaderCopyImageBitDepth(a2, &v146) && v146)
  {
    CFDictionaryAddValue(Mutable, @"PixelInformation", v146);
  }

  v144 = 0;
  v28 = v147;
  if (v147 == 1635135537)
  {
    OUTLINED_FUNCTION_6();
    ImageGeometryFromPictureReader = _copyMultilayerProperties(v29, v30, v31, v32, v33, v34);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_168;
    }

    v28 = v147;
  }

  v35 = *(a1 + 44);
  v36 = v35 == 1;
  if (!v35)
  {
    v36 |= *(a1 + 40) | v144;
    if (v28 == 1635135537)
    {
      v36 |= (*&CMVideoFormatDescriptionGetDimensions(*(v22 + 3)) & 0x100000001) != 0;
    }
  }

  OUTLINED_FUNCTION_58_0();
  v138 = a5;
  if (v42)
  {
    v143 = 0;
    v141[0] = 0;
    v151 = 0;
    if (CMPhotoPictureReaderCopyByteStreamForFirstTile(a3, v141, &v151))
    {
      v39 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_31_0();
      CMPhotoGetImageInformationFromJFIFByteStream();
      v39 = v38 == 0;
    }

    v37 = v141[0];
    if (v141[0])
    {
      CFRelease(v141[0]);
    }

    if (v39)
    {
      v36 |= (v143 & 0xFE) == 194;
    }

    else
    {
      v36 = 1;
    }
  }

  v40 = MEMORY[0x1E695E4D0];
  if (v36)
  {
    OUTLINED_FUNCTION_119(v37, @"PreferSoftwareCodec");
  }

  if (*(a1 + 44) == 2)
  {
    OUTLINED_FUNCTION_119(v37, @"RequireHardwareCodec");
  }

  IsPackedYUV = CMPhotoPixelFormatIsPackedYUV(v140);
  if (IsPackedYUV)
  {
    OUTLINED_FUNCTION_119(IsPackedYUV, @"AllowPackedBuffers");
  }

  if (*(a1 + 53) || v147 == 1635148593)
  {
    OUTLINED_FUNCTION_119(IsPackedYUV, @"UseVTDecompression");
  }

  v22[208] = 0;
  v135 = a8;
  v42 = a7 == 1 && a8 == 1;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_85_0();
    CMPhotoCFDictionarySetBoolean(v43, v44, v45);
    v22[208] = 1;
  }

  CMPhotoCFDictionarySetInt32(Mutable, @"ThreadPriority", *(v138 + 108));
  v22[157] = a13 != 0;
  if (a13)
  {
    v46 = _canvasItemDecodeCallback;
  }

  else
  {
    v46 = _oneShotItemDecodeCallback;
  }

  OUTLINED_FUNCTION_48_0();
  v47 = (v22 + 16);
  ImageGeometryFromPictureReader = CMPhotoDecompressionPluginCreate(v19, v48, v49, v50, v51, v52, v53, v54, 0, Mutable, v46, v22, v22 + 2);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_168;
  }

  if (a4)
  {
    ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(a4, *(*(a1 + 8) + 28), 0, v148);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_168;
    }

    v55 = CFGetAllocator(a4);
    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v57)
    {
      v78 = 4294954514;
      goto LABEL_152;
    }

    ImageGeometryFromPictureReader = v57(FigBaseObject, *MEMORY[0x1E69722F8], v55, &v149);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_168;
    }
  }

  ImageGeometryFromPictureReader = CMPhotoDecompressionPluginGetDecoderRestrictions(*(v22 + 2), v149, (v22 + 92));
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_168;
  }

  v58 = CMPhotoDecompressionPluginSupportsNativeTiling(*(v22 + 2));
  v22[156] = v58;
  v59 = *(v22 + 21);
  if (v59 < *(v22 + 35) || (v60 = *(v22 + 20), v60 < *(v22 + 34)) || v59 > *(v22 + 37) || v60 > *(v22 + 36))
  {
    if (v36 || *(a1 + 44))
    {
      if (v58)
      {
LABEL_166:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_16();
        goto LABEL_167;
      }

      v76 = v140;
      goto LABEL_89;
    }

    LOBYTE(v151) = 0;
    v141[0] = 0;
    CMPhotoDecompressionPluginDispose(*v47);
    *v47 = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    OUTLINED_FUNCTION_64_0();
    CMPhotoCFDictionaryGetCFValueIfPresent();
    CFRelease(Mutable);
    v61 = CFDictionaryCreateMutable(v19, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Mutable = v61;
    if (!v61)
    {
      goto LABEL_162;
    }

    v62 = *v40;
    CFDictionaryAddValue(v61, @"PreferSoftwareCodec", v62);
    if (v151)
    {
      CFDictionaryAddValue(Mutable, @"UseVTDecompression", v62);
    }

    if (v141[0])
    {
      v63 = OUTLINED_FUNCTION_64_0();
      CFDictionaryAddValue(v63, v64, v65);
    }

    if (v22[208])
    {
      v66 = OUTLINED_FUNCTION_85_0();
      CMPhotoCFDictionarySetBoolean(v66, v67, v68);
    }

    OUTLINED_FUNCTION_48_0();
    ImageGeometryFromPictureReader = CMPhotoDecompressionPluginCreate(v19, v69, v70, v71, v72, v73, v74, v75, 0, Mutable, v46, v22, v22 + 2);
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_168;
    }

    ImageGeometryFromPictureReader = CMPhotoDecompressionPluginGetDecoderRestrictions(*v47, v149, (v22 + 92));
    if (ImageGeometryFromPictureReader)
    {
      goto LABEL_168;
    }

    v58 = v22[156];
  }

  v76 = v140;
  if (v58)
  {
    ImageGeometryFromPictureReader = CMPhotoDecompressionPluginCopyPixelBufferAttributes(*(v22 + 2));
    if (!ImageGeometryFromPictureReader)
    {
      OUTLINED_FUNCTION_58_0();
      if (v42)
      {
        v77 = CMPhotoDecompressionContainerJFIF_pixelFormatToAppleJPEGFormat(v140, 0, 0);
        if (v136 || v140 && !v77)
        {
          *(v22 + 38) = v140;
        }
      }

      goto LABEL_95;
    }

LABEL_168:
    v78 = ImageGeometryFromPictureReader;
    goto LABEL_152;
  }

LABEL_89:
  if (v76)
  {
    *(v22 + 38) = v76;
  }

  else
  {
    OUTLINED_FUNCTION_58_0();
    if (!v42 || CMPhotoPictureReaderGetYUVPixelFormatForJPEG(a3, v22 + 38))
    {
      *(v22 + 38) = 875704422;
    }
  }

LABEL_95:
  if (v22[157])
  {
    v79 = (v22[156] & value_4);
    if (*a13)
    {
      PixelBufferSize = CMPhotoGetPixelBufferSize(*a13);
      if (a11)
      {
        v82 = vcvtad_u64_f64(v81);
        if (*a11 > vcvtad_u64_f64(PixelBufferSize) || a11[1] > v82)
        {
          v79 = 0;
        }
      }

      v78 = a13;
      CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(v22 + 6), *(v22 + 7), *(v22 + 8), *(v22 + 9), *a13);
      CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(v22 + 20), *(v22 + 21), *a13);
      CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(*(v22 + 3), *a13);
      OUTLINED_FUNCTION_37_1();
      v90 = 0;
      v91 = _canDecodeTilesOrLayersIntoCanvas(v84, v85, v86, v87, v88, a7, v135, v89, v126, v128, v130) & v79;
    }

    else
    {
      v94 = *a1;
      if (!*a1)
      {
        v94 = *(a1 + 8);
      }

      v95 = *(a1 + 24);
      v96 = *(a1 + 49);
      if (!v76)
      {
        v76 = *(v22 + 38);
      }

      v97 = 0;
      v141[0] = 0;
      v141[1] = 0;
      v142 = *a9;
      if (v79)
      {
        v98 = (v22 + 92);
      }

      else
      {
        v98 = 0;
      }

      if (v79)
      {
        v97 = *(v22 + 4);
      }

      ImageGeometryFromPictureReader = _createPixelBuffer(v95, v94, v96, v76, *a11, a11[1], *a10, a10[1], v141, v98, v97, &v150);
      if (ImageGeometryFromPictureReader)
      {
        goto LABEL_168;
      }

      v90 = v150;
      CMPhotoAddColorInformationToPixelBufferAccordingToFormat(*(v22 + 6), *(v22 + 7), *(v22 + 8), *(v22 + 9), v150);
      CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(*(v22 + 20), *(v22 + 21), v90);
      CMPhotoAddHDRMetadataToPixelBufferFromFormatDescription(*(v22 + 3), v90);
      OUTLINED_FUNCTION_37_1();
      v91 = _canDecodeTilesOrLayersIntoCanvas(v90, v99, v100, v101, v102, a7, v135, v103, v127, v129, v131) & v79;
      v78 = a13;
    }

    v22[158] = v91;
    v92 = value;
    if (v147 != 1936484717 || *(v22 + 38) != *(v138 + 104) || *(v138 + 8) != 0 || *(v138 + 24) != 0)
    {
      if (!v91)
      {
        if (*(v138 + 114))
        {
          v92 = 2;
        }

        else
        {
          if (qword_1ED6FA648 != -1)
          {
            dispatch_once(&qword_1ED6FA648, &__block_literal_global_19);
          }

          if (qword_1ED6FA650 != -1)
          {
            dispatch_once(&qword_1ED6FA650, &__block_literal_global_22);
          }

          if (_MergedGlobals_7)
          {
            v93 = MEMORY[0x1AC553730]();
          }

          else
          {
            v93 = 0;
          }

          v104 = *(v22 + 20);
          v105 = *(v22 + 21);
          BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(*(v22 + 38));
          if (!v93)
          {
            goto LABEL_137;
          }

          v107 = a7 * v135;
          if (a7 * v135 >= v132)
          {
            v107 = v132;
          }

          if (v104 * v107 * v105 * BytesPerPixelForPixelFormat > v93 >> 2)
          {
            v92 = 2;
          }

          else
          {
LABEL_137:
            v92 = v132;
          }

          v78 = a13;
        }
      }

LABEL_140:
      *(v22 + 53) = v92;
      *(v22 + 3644) = 0;
      v108 = v92;
      v109 = dispatch_semaphore_create(v92);
      *(v22 + 28) = v109;
      if (v109)
      {
        v110 = dispatch_semaphore_create(0);
        *(v22 + 29) = v110;
        if (v110)
        {
          OUTLINED_FUNCTION_44();
          v114 = CFArrayCreateMutable(v111, v112, v113);
          *(v22 + 1823) = v114;
          if (v114)
          {
            v115 = OUTLINED_FUNCTION_5_2();
            v117 = CFArrayCreateMutable(v115, v116, 0);
            *(v22 + 1824) = v117;
            if (v117)
            {
              OUTLINED_FUNCTION_44();
              v121 = CFSetCreateMutable(v118, v119, v120);
              *(v22 + 1825) = v121;
              if (v121)
              {
                v122 = v22 + 240;
                do
                {
                  CFArrayAppendValue(*(v22 + 1823), v122);
                  v122 += 224;
                  --v108;
                }

                while (v108);
                goto LABEL_147;
              }
            }
          }
        }
      }

      goto LABEL_162;
    }

    if (v91)
    {
      goto LABEL_140;
    }

    goto LABEL_166;
  }

  v90 = 0;
  v78 = a13;
LABEL_147:
  CMPhotoDecompressionPluginIsHardwareSession(*(v22 + 2));
  OUTLINED_FUNCTION_94_0();
  v22[88] = v123;
  *v22 = 1;
  *a12 = v22;
  if (v78)
  {
    v22 = 0;
    if (*v78)
    {
      v78 = 0;
    }

    else
    {
      v124 = v78;
      v78 = 0;
      *v124 = v90;
      v150 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_152:
  if (v146)
  {
    CFRelease(v146);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v150)
  {
    CFRelease(v150);
  }

  HEIFItemDecoderRelease(v22);
  if (v149)
  {
    CFRelease(v149);
  }

  return v78;
}

unint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{

  return CMPhotoScaleAndRotateSessionTransformForSize(a1, a2, 1, 1, 1919365990, 0, 0, 1, a3, a4, a5, a6, a7, v17, a14, a15, a16);
}

void OUTLINED_FUNCTION_8_3(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v9 = (*v9 | a1) != 0;

  bzero(&a9, 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return CMPhotoCFArrayAppendDouble(v0, 0.0);
}

void OUTLINED_FUNCTION_8_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v31 - 120) = 0;
  *(v31 - 128) = 0;

  bzero(&a31, 0xE0uLL);
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v8 + 40);

  return _decodePixelBufferForImageIndex(v11, v8, v7, a4, v9, v6, v5, v4);
}

uint64_t OUTLINED_FUNCTION_8_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time2, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 time2a, uint64_t time2_16, uint64_t a16, uint64_t a17, uint64_t a18)
{
  time2a = a9;
  time2_16 = a18;

  return CMTimeCompare((v18 - 64), &time2a);
}

uint64_t CMPhotoPixelFormatIsPackedYUV(int a1)
{
  result = 1;
  if (a1 > 1885745711)
  {
    if (a1 != 1885745712 && a1 != 1885745714)
    {
      v3 = 1885746228;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 1882468912 && a1 != 1882468914)
  {
    v3 = 1882469428;
    goto LABEL_8;
  }

  return result;
}

void CodecGateway_Destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void WaitingClient_Destroy(const void **a1)
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
      dispatch_release(v3);
    }

    free(a1);
  }
}

void CMPhotoDecompressionPluginDispose(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      v2[1](a1);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

uint64_t CMPhotoDecompressionPluginCopyPixelBufferAttributes(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 40) + 24);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t CMPhotoDecompressionPluginGetDecoderRestrictions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    v4 = *(a1 + 40);
    if (a2)
    {
      v5 = *(v4 + 48);
      if (v5)
      {
        return v5();
      }
    }

    v5 = *(v4 + 40);
    if (v5)
    {
      return v5();
    }

    v3 = 0;
    *(a3 + 56) = 0x7FFFFFFF;
    *(a3 + 16) = xmmword_1A5ABB8E0;
    *(a3 + 32) = xmmword_1A5ABB8F0;
    *(a3 + 48) = 0x7FFFFFFF00000001;
    *a3 = 0x1000000010;
  }

  return v3;
}

uint64_t VTDecompressionPluginClass_getDecoderRestrictions(uint64_t a1, uint64_t a2)
{
  propertyValueOut = 0;
  result = 4294950306;
  if (a1 && a2)
  {
    *a2 = 0x1000000040;
    if (*(a1 + 72) == 1752589105)
    {
      v5 = 64;
    }

    else
    {
      v5 = 16;
    }

    *(a2 + 48) = v5;
    *(a2 + 16) = 0x7FFFFFFF;
    *(a2 + 32) = 0x7FFFFFFF0003FFC0;
    *(a2 + 24) = 262080;
    *(a2 + 40) = 262080;
    v6 = *(a1 + 64);
    *(a2 + 52) = 0x7FFFFFFF0003FFC0;
    *(a2 + 20) = v5;
    *(a2 + 28) = v5;
    *(a2 + 44) = v5;
    if (!VTSessionCopyProperty(*(v6 + 8), *MEMORY[0x1E69839D8], *MEMORY[0x1E695E480], &propertyValueOut))
    {
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      if (CMPhotoDecompressionPluginCopyPixelBufferAttributes(a1))
      {
        BytesPerPixelForPixelFormat = 1;
      }

      else if (CMPhotoPixelFormatIsPackedYUV(0))
      {
        BytesPerPixelForPixelFormat = 1;
      }

      else
      {
        BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(0);
      }

      IsPackedYUV = CMPhotoPixelFormatIsPackedYUV(0);
      v9 = 64;
      if (!IsPackedYUV && 0x40 / BytesPerPixelForPixelFormat >= 0x40)
      {
        v9 = 0x40 / BytesPerPixelForPixelFormat;
      }

      *a2 = v9;
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      CMPhotoCFDictionaryGetInt32IfPresent();
      v10 = *(a2 + 16);
      *(a2 + 52) = *(a2 + 24);
      *(a2 + 56) = v10;
      v11.i32[0] = *(a2 + 28);
      v11.i32[1] = *(a2 + 20);
      *(a2 + 44) = vmin_s32(*(a2 + 44), v11);
    }

    result = propertyValueOut;
    if (propertyValueOut)
    {
      CFRelease(propertyValueOut);
      return 0;
    }
  }

  return result;
}

uint64_t VTDecompressionPluginClass_copyPixelBufferAttributes(uint64_t a1, _DWORD *a2, __CFDictionary **a3)
{
  v6 = *(a1 + 64);
  propertyValueOut = 0;
  pool = 0;
  valuePtr = 0;
  v7 = *MEMORY[0x1E695E480];
  InfoFromFormatDescription = VTSessionCopyProperty(*(v6 + 8), *MEMORY[0x1E6983910], *MEMORY[0x1E695E480], &propertyValueOut);
  if (InfoFromFormatDescription)
  {
    v9 = InfoFromFormatDescription == -12900;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = propertyValueOut;
  if (!propertyValueOut)
  {
    if (!VTSessionCopyProperty(*(v6 + 8), *MEMORY[0x1E6983978], v7, &pool))
    {
      PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
      if (PixelBufferAttributes)
      {
        v10 = CFRetain(PixelBufferAttributes);
        propertyValueOut = v10;
        if (v10)
        {
          goto LABEL_7;
        }

        v16 = 0;
      }

      else
      {
        v16 = 0;
        propertyValueOut = 0;
      }

      v18 = -16994;
      goto LABEL_41;
    }

    v10 = propertyValueOut;
    if (propertyValueOut)
    {
      goto LABEL_7;
    }

    if (CMPhotoDecompressionUtilityGetNativePixelFormatFromFormatDescription(*(v6 + 16), 0, &valuePtr))
    {
      LOBYTE(v23) = 1;
      InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(*(v6 + 16), 0, 0, 0, &v23, 0, 0, 0, 0, 0, 0, 0);
      if (InfoFromFormatDescription)
      {
LABEL_27:
        v18 = InfoFromFormatDescription;
        v16 = 0;
        goto LABEL_39;
      }

      v16 = 0;
      if (v23)
      {
        v17 = 875704422;
      }

      else
      {
        v17 = 875704438;
      }

      valuePtr = v17;
      if (!a3)
      {
LABEL_37:
        v18 = 0;
        if (a2)
        {
          *a2 = valuePtr;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v16 = 0;
      if (!a3)
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    *a3 = v16;
    v16 = 0;
    goto LABEL_37;
  }

LABEL_7:
  v11 = *MEMORY[0x1E6966130];
  Value = CFDictionaryGetValue(v10, *MEMORY[0x1E6966130]);
  if (!Value)
  {
    goto LABEL_52;
  }

  ValueAtIndex = Value;
  v14 = CFGetTypeID(Value);
  if (v14 == CFArrayGetTypeID())
  {
    v23 = 0;
    if (CFArrayGetCount(ValueAtIndex) < 1)
    {
      goto LABEL_52;
    }

    if (CFArrayGetCount(ValueAtIndex) >= 1)
    {
      v15 = 0;
      while (!FigCFArrayGetInt32AtIndex() || !CMPhotoIsDecoderOutputPixelFormatAccepted(v23) || CMPhotoPixelFormatIsPackedYUV(v23) && !*(v6 + 41))
      {
        if (++v15 >= CFArrayGetCount(ValueAtIndex))
        {
          goto LABEL_32;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, v15);
    }
  }

LABEL_32:
  v20 = CFGetTypeID(ValueAtIndex);
  if (v20 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*a1, 0, propertyValueOut);
      v16 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, v11);
        CFDictionaryRemoveValue(v16, *MEMORY[0x1E69660B8]);
        CFDictionaryRemoveValue(v16, *MEMORY[0x1E6966208]);
        if (!a3)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      goto LABEL_53;
    }

LABEL_52:
    v16 = 0;
LABEL_53:
    v18 = -16994;
    goto LABEL_39;
  }

  v16 = 0;
  v18 = -16995;
LABEL_39:
  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

LABEL_41:
  if (pool)
  {
    CFRelease(pool);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if ((v18 | 2) == 0x44E)
  {
    return 4294951826;
  }

  else
  {
    return v18;
  }
}

uint64_t CMPhotoIsDecoderOutputPixelFormatAccepted(int a1)
{
  result = 1;
  if (a1 > 1885745711)
  {
    if (a1 <= 2016686641)
    {
      if (a1 > 1949577775)
      {
        if (a1 == 1949577776 || a1 == 1952854576)
        {
          return result;
        }

        v3 = 2016686640;
      }

      else
      {
        if (a1 == 1885745712 || a1 == 1885745714)
        {
          return result;
        }

        v3 = 1885746228;
      }
    }

    else
    {
      if (a1 <= 2019963441)
      {
        if (a1 == 2016686642 || a1 == 2016687156)
        {
          return result;
        }

        v4 = 12848;
      }

      else
      {
        if (a1 > 2037741157)
        {
          if (a1 == 2037741158)
          {
            return result;
          }

          v3 = 2037741171;
          goto LABEL_35;
        }

        if (a1 == 2019963442)
        {
          return result;
        }

        v4 = 13364;
      }

      v3 = v4 | 0x78660000;
    }

LABEL_35:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 <= 1278226487)
  {
    if (a1 > 875704949)
    {
      if (a1 == 875704950 || a1 == 875836518)
      {
        return result;
      }

      v3 = 875836534;
    }

    else
    {
      if (a1 == 875704422 || a1 == 875704438)
      {
        return result;
      }

      v3 = 875704934;
    }

    goto LABEL_35;
  }

  if (a1 > 1882468911)
  {
    if (a1 == 1882468912 || a1 == 1882468914)
    {
      return result;
    }

    v3 = 1882469428;
    goto LABEL_35;
  }

  if ((a1 - 1278226736) > 6 || ((1 << (a1 - 48)) & 0x45) == 0)
  {
    v3 = 1278226488;
    goto LABEL_35;
  }

  return result;
}

uint64_t CMPhotoDecompressionPluginSupportsNativeTiling(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 16)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t VTDecompressionPluginClass_supportsNativeTiling(uint64_t result)
{
  if (result)
  {
    return *(*(result + 64) + 40);
  }

  return result;
}

uint64_t CMPhotoPixelBufferAttributesGetExtendedPixels(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E6966088], &v14);
  CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E6966090], &v13);
  CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E69660A0], &v12);
  result = CMPhotoCFDictionaryGetSizeIfPresent(a1, *MEMORY[0x1E6966078], &v11);
  if (a2)
  {
    *a2 = v14;
  }

  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return result;
}

uint64_t CMPhotoPixelBufferAttributesGetExtendedPixelsStruct(uint64_t result, void *a2)
{
  if (a2)
  {
    return CMPhotoPixelBufferAttributesGetExtendedPixels(result, a2, a2 + 1, a2 + 2, a2 + 3);
  }

  return result;
}

uint64_t _createPixelBuffer(__CVBuffer *a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, size_t a7, size_t a8, unint64_t *a9, int *a10, const __CFDictionary *a11, void *a12)
{
  v63 = 0;
  *v60 = 0u;
  v61 = 0u;
  v18 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (*a9 == 0 && *(a9 + 1) == 0)
  {
    *a9 = 0;
    a9[1] = 0;
    a9[2] = a7;
    a9[3] = a8;
  }

  HIWORD(v59) = 0;
  CMPhotoPixelBufferAttributesGetExtendedPixelsStruct(a11, v60);
  v54 = a2;
  if (v60[0] || v61)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    IsSubsampled = FigSignalErrorAtGM();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_42();
  IsSubsampled = CMPhotoPixelFormatIsSubsampled(v19, v20, v21, v22, v23);
  if (IsSubsampled)
  {
LABEL_43:
    v35 = IsSubsampled;
    goto LABEL_44;
  }

  v55 = __PAIR64__(a4, a3);
  pixelBufferOut = a1;
  v29 = v60[1] + a5;
  v30 = *(&v61 + 1) + a6;
  if (a10)
  {
    v31 = *a10;
    v58 = 0;
    CMPhotoCFDictionaryGetSizeIfPresent(a11, *MEMORY[0x1E6966020], &v58);
    if (v58)
    {
      v31 = CMPhotoLeastCommonMultiple(v31, v58);
    }

    OUTLINED_FUNCTION_87_0();
    if (v32 <= a10[7])
    {
      v29 = a10[7];
    }

    else
    {
      v29 = v32;
    }

    OUTLINED_FUNCTION_87_0();
    if (v33 <= a10[5])
    {
      v30 = a10[5];
    }

    else
    {
      v30 = v33;
    }
  }

  else
  {
    v31 = 0;
  }

  if (!*a9 && !a9[1])
  {
    v39 = a9[2];
    v40 = a9[3];
    v41 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v37 = MutableCopy;
    if (MutableCopy)
    {
      v43 = CMPhotoCFDictionarySetSize(MutableCopy, *MEMORY[0x1E6966090], v29 + ~((v39 - 1) % v29));
      if (!v43)
      {
        v43 = CMPhotoCFDictionarySetSize(v37, *MEMORY[0x1E6966078], v30 + ~((v40 - 1) % v30));
        if (!v43)
        {
          v48 = a9[2];
          v49 = a9[3];
          if (v55)
          {
            CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v41, SHIDWORD(v55), v48, v49, v29, v30, v31, v37, &v63, v51, v52, pixelBufferOut, v54, v55, a7, a8, v58, v59, v60[0], v60[1], v61, *(&v61 + 1), v62, v63, v64);
          }

          else
          {
            v50 = OUTLINED_FUNCTION_114(pixelBufferOut, HIDWORD(v55), v48, v49, v44, v45, v46, v47, v31, v37, &v63);
          }

          v35 = v50;
          v18 = MEMORY[0x1E695FF58];
          if (!v50)
          {
            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }

      v35 = v43;
    }

    else
    {
      v35 = 4294950305;
    }

    v18 = MEMORY[0x1E695FF58];
    goto LABEL_27;
  }

  if (v55)
  {
    CMPhotoCreateCVPixelBufferNotBackedByIOSurface(*MEMORY[0x1E695E480], a4, a7, a8, v29, v30, v31, a11, &v63, v51, v52, a1, a2, v55, a7, a8, v58, v59, v60[0], v60[1], v61, *(&v61 + 1), v62, v63, v64);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_114(a1, HIDWORD(v55), a7, a8, v25, v26, v27, v28, v31, a11, &v63);
  }

  v35 = v34;
  v18 = MEMORY[0x1E695FF58];
  if (v34)
  {
LABEL_44:
    v37 = 0;
    goto LABEL_27;
  }

  v36 = CMPhotoSetPixelBufferCLAP(v63, *a9, a9[1], a9[2], a9[3], 0, 1);
  v37 = 0;
  if (!v36)
  {
LABEL_26:
    v35 = 0;
    *a12 = v63;
    v63 = 0;
    goto LABEL_27;
  }

  v35 = v36;
LABEL_27:
  if (*v18 == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  return v35;
}

uint64_t CMPhotoPixelFormatIsSubsampled(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!DescriptionWithPixelFormatType)
  {
    return 4294950305;
  }

  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
  if (Value)
  {
    v11 = Value;
    Count = CFArrayGetCount(Value);
    v13 = Count;
    if (Count)
    {
      v18 = a5;
      v14 = 0;
      v15 = Count - 1;
      do
      {
        CFArrayGetValueAtIndex(v11, v14);
        FigCFDictionaryGetIntIfPresent();
        FigCFDictionaryGetIntIfPresent();
      }

      while (v15 != v14++);
      a5 = v18;
    }

    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 1;
    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  *a2 = 0;
LABEL_10:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  result = 0;
  if (a5)
  {
    *a5 = v13;
  }

  return result;
}

uint64_t VTTileDecompressionPluginClass_VideoToolbox_callback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8)
{
  v13 = a1[8];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ((a8 & 2) != 0)
  {
    v14 = -17104;
  }

  else
  {
    v14 = a7;
  }

  if (v14)
  {
    *v13 = 1;
    if ((v14 | 2) == 0x44E)
    {
      v15 = 4294951826;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = a1[6];
  v17 = a1[7];

  return v16(a1, v15, a5, v17, a2);
}

uint64_t CMPhotoPictureReaderGetHEIFOrientation(const void *a1, _BYTE *a2, int *a3)
{
  number = 0;
  v20 = -1;
  valuePtr = 0;
  v6 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8(FigBaseObject, *MEMORY[0x1E6972368], v6, &number);
  if (v9 == -12783)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    if (v9)
    {
      goto LABEL_12;
    }

    CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    v10 = 1;
  }

  if (number)
  {
    CFRelease(number);
    number = 0;
  }

  v12 = CFGetAllocator(a1);
  v13 = FigPictureReaderGetFigBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
LABEL_11:
    v11 = 4294954514;
    goto LABEL_12;
  }

  v15 = v14(v13, *MEMORY[0x1E6972338], v12, &number);
  if (v15 == -12783)
  {
    v16 = 0;
    v17 = -1;
  }

  else
  {
    v11 = v15;
    if (v15)
    {
      goto LABEL_12;
    }

    CFNumberGetValue(number, kCFNumberIntType, &v20);
    v16 = 1;
    v17 = v20;
  }

  v19 = CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(valuePtr, v17, a3);
  v11 = v19;
  if (a2 && !v19)
  {
    *a2 = v10 | v16;
  }

LABEL_12:
  if (number)
  {
    CFRelease(number);
  }

  return v11;
}

uint64_t CMPhotoExifOrientationFromHEIFRotationCCWAndMirroring(int a1, int a2, int *a3)
{
  if (!a1 && a2 == -1)
  {
    v3 = 1;
LABEL_9:
    if (a3)
    {
      *a3 = v3;
    }

    return 0;
  }

  if (!a1 && a2 == 1 || a1 == 180 && !a2)
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (a1 == 180 && a2 == -1)
  {
    v3 = 3;
    goto LABEL_9;
  }

  v6 = a1 == 180 && a2 == 1;
  v3 = 4;
  if (!(a2 | a1) || v6)
  {
    goto LABEL_9;
  }

  if (a1 == 90 && !a2 || a1 == 270 && a2 == 1)
  {
    v3 = 5;
    goto LABEL_9;
  }

  if (a1 == 270 && a2 == -1)
  {
    v3 = 6;
    goto LABEL_9;
  }

  v8 = a1 == 270 && a2 == 0;
  v9 = a2 == 1 && a1 == 90;
  v3 = 7;
  if (v9 || v8)
  {
    goto LABEL_9;
  }

  if (a1 == 90 && a2 == -1)
  {
    v3 = 8;
    goto LABEL_9;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

CGColorSpaceRef CMPhotoCreateColorSpaceFromTriplets(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = FigCFEqual();
  if (FigCFEqual() && FigCFEqual() || FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F0B8];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F198];
  }

  else if (v6 && (FigCFEqual() || FigCFEqual()))
  {
    v7 = MEMORY[0x1E695F1C0];
  }

  else if ((FigCFEqual() || FigCFEqual()) && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F150];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F1A8];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F190];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F188];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F0C8];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F0C0];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F178];
  }

  else if (FigCFEqual() && FigCFEqual())
  {
    v7 = MEMORY[0x1E695F170];
  }

  else if (FigCFEqual())
  {
    v7 = MEMORY[0x1E695F1A0];
    if (!a4)
    {
      v7 = MEMORY[0x1E695F1B0];
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    v10 = a1 && v6 == 0;
    v11 = !v10;
    if (!a4 || !v11)
    {
      return 0;
    }

    v7 = MEMORY[0x1E695F128];
  }

  v8 = *v7;

  return CGColorSpaceCreateWithName(v8);
}

uint64_t CMPhotoCreateClliDictionary(const __CFData *a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    if (CFDataGetLength(a1) != 4)
    {
      return 4294950194;
    }

    CFDataGetBytePtr(a1);
    Mutable = CFDictionaryCreateMutable(a2, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v8 = Mutable;
    OUTLINED_FUNCTION_2_15();
    v12 = CMPhotoCFDictionarySetInt32(v9, v10, v11);
    if (v12)
    {
      v3 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_2_15();
      v3 = CMPhotoCFDictionarySetInt32(v8, v13, v14);
      if (!v3)
      {
        *a3 = v8;
        return v3;
      }
    }

    CFRelease(v8);
  }

  return v3;
}

uint64_t RegisterCMPhotoDecompressionTileIterator()
{
  sCMPhotoDecompressionTileIteratorClass = 0;
  unk_1ED6FA460 = "CMPhotoDecompressionTileIterator";
  qword_1ED6FA468 = CMPhotoDecompressionTileIteratorClass_Init;
  unk_1ED6FA470 = 0;
  qword_1ED6FA480 = 0;
  unk_1ED6FA488 = 0;
  qword_1ED6FA478 = CMPhotoDecompressionTileIteratorClass_Finalize;
  qword_1ED6FA490 = CMPhotoDecompressionTileIteratorClass_CopyFormattingDesc;
  unk_1ED6FA498 = 0;
  result = _CFRuntimeRegisterClass();
  sCMPhotoDecompressionTileIteratorTypeID = result;
  return result;
}

void CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions(uint64_t a1)
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
        if (*(v10 + 392))
        {
          v11 = OUTLINED_FUNCTION_12_15();
          v12(v11);
        }
      }
    }
  }
}

uint64_t _copyImageSubsamplingForIndex(uint64_t a1, uint64_t a2, uint64_t a3)
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
      *v3 = *(v4 + 128);
    }
  }

  return result;
}

uint64_t _copyImageSubsamplingForIndex_0(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a2)
  {
    if (*(a1 + 136) == 3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 6;
    }

    *a3 = v4;
    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _copyImageSubsamplingForIndex_1(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  v26 = 0;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_14;
  }

  InfoFromFormatDescription = _copyFormatDescriptionForIndex_0(a1, a2, a3, &v25);
  if (!InfoFromFormatDescription)
  {
    if (CMFormatDescriptionGetMediaSubType(v25) != 1735551332)
    {
LABEL_11:
      OUTLINED_FUNCTION_14_9();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_31_0();
      InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22, v23, v24);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_36_1();
    InfoFromFormatDescription = CMPhotoDecompressionContainerInternalToExternalIndexAndCopyAlternateOptions(v5, v6, v7, v8, v9);
    if (!InfoFromFormatDescription)
    {
      InfoFromFormatDescription = CMPhotoDecompressionContainerCopySampleBufferForIndexWithOptions(a1, -1, 0, &v26);
      if (!InfoFromFormatDescription)
      {
        if (v25)
        {
          CFRelease(v25);
          v25 = 0;
        }

        FormatDescription = CMSampleBufferGetFormatDescription(v26);
        if (FormatDescription)
        {
          FormatDescription = CFRetain(FormatDescription);
        }

        v25 = FormatDescription;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v19 = InfoFromFormatDescription;
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_14:
  if (v26)
  {
    CFRelease(v26);
  }

  return v19;
}

uint64_t _copyImageSubsamplingForIndex_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    return DicomGetPhotometricInterpretationForIndex(*(a1 + 112), 0, a2, 0, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_116()
{
  *(v0 + 120) = 1;
  v2 = *(v0 + 56);

  return CMPhotoDecompressionContainerHEICS_GetSequenceInfoFromSource(v2, (v0 + 128));
}

uint64_t TileIterator_copyTileSampleBuffer(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = CFGetAllocator(a1);
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (!a2)
  {
    v19 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7(CMBaseObject, *MEMORY[0x1E6972398], v5, &v29);
  if (v8)
  {
LABEL_20:
    v19 = v8;
    goto LABEL_10;
  }

  v9 = *v3;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
LABEL_9:
    v19 = 4294954514;
    goto LABEL_10;
  }

  v8 = v10(v9, &v26, &v25, &v24, &v23, 0);
  if (v8)
  {
    goto LABEL_20;
  }

  v8 = CMPhotoPictureReaderCreateContiguousBlockBufferFromChunks(v5, v26, v25, v24, v23, 0, 0, &v27);
  if (v8)
  {
    goto LABEL_20;
  }

  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  CMTimeMake(&sampleTimingArray.duration, 1, 1);
  sampleTimingArray.presentationTimeStamp = **&MEMORY[0x1E6960CC0];
  sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
  sampleSizeArray = CMBlockBufferGetDataLength(v27);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_84_0();
  v19 = CMSampleBufferCreate(v11, v12, v13, v14, v15, v16, v17, v18, &sampleTimingArray, 1, &sampleSizeArray, &v28);
  if (!v19)
  {
    *a2 = v28;
    v28 = 0;
  }

LABEL_10:
  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  free(v25);
  free(v24);
  if (v23)
  {
    CFRelease(v23);
  }

  return v19;
}

void __CMPhotoSupportsHEVCHWDecode_block_invoke()
{
  v0 = MGCopyAnswer();
  CMPhotoSupportsHEVCHWDecode_supported = FigCFEqual();
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t _getFourCCPropertyFromReader(const void *a1, uint64_t a2, void *a3)
{
  number = 0;
  if (!a3)
  {
    return 0;
  }

  v5 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(FigBaseObject, a2, v5, &number);
    if (v8)
    {
      v9 = v8;
    }

    else if (CFNumberGetValue(number, kCFNumberSInt32Type, a3))
    {
      v9 = 0;
    }

    else
    {
      v9 = 4294950194;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v9;
}

uint64_t _getImageCount_cold_1()
{
  OUTLINED_FUNCTION_71_0();
  v7 = 0;
  v3 = *(v2 + 48);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    result = v4(v3, 1, &v7);
    if (!result)
    {
      v6 = v7;
LABEL_7:
      result = 0;
      *v1 = v6;
    }
  }

  else
  {
    result = 4294954514;
  }

  *v0 = result;
  return result;
}

uint64_t CMPhotoDecompressionContainerCreateDictionaryDescription(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a2)
  {
    return CMPhotoQualityControllerNeedsImageAnalysis();
  }

  v2 = *(*(a1 + 32) + 352);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 4294950302;
  }
}

uint64_t _createDescription(uint64_t a1, CFDictionaryRef *a2)
{
  keys[4] = *MEMORY[0x1E69E9840];
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  cf = 0;
  v6 = _parseImageSizeAndTypeIfNeeded();
  if (v6)
  {
    return v6;
  }

  MainImageDescription = _parseICCProfileIfNeeded(v5);
  if (MainImageDescription || (MainImageDescription = _parseExifIfNeeded(v5, 0), MainImageDescription) || (MainImageDescription = _parseXMPIfNeeded(), MainImageDescription) || (MainImageDescription = _parseDebugMetadataIfNeeded(), MainImageDescription) || (MainImageDescription = _parseCustomMetadataIfNeeded(), MainImageDescription) || (MainImageDescription = _parseMPOIfNeeded(v5), MainImageDescription) || (MainImageDescription = _createMainImageDescription(a1, 0xFFFFFFFFFFFFFFFFLL, &cf), MainImageDescription))
  {
    v14 = MainImageDescription;
    v12 = 0;
    Int = 0;
    goto LABEL_14;
  }

  v8 = CFArrayCreate(v4, &cf, 1, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    v12 = 0;
    Int = 0;
    v14 = 4294950305;
    goto LABEL_14;
  }

  v9 = v8;
  Int = CMPhotoCFNumberCreateInt(0);
  if (!Int)
  {
    v12 = 0;
    goto LABEL_25;
  }

  Count = CFArrayGetCount(v9);
  v12 = CMPhotoCFNumberCreateInt(Count);
  keys[0] = @"MainImages";
  keys[1] = @"MainImageCount";
  keys[2] = @"PrimaryImageIndex";
  keys[3] = @"ImageSequenceCount";
  values[0] = v9;
  values[1] = v12;
  values[2] = Int;
  values[3] = Int;
  v13 = CFDictionaryCreate(v4, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v13)
  {
LABEL_25:
    v14 = 4294950305;
    goto LABEL_13;
  }

  v14 = 0;
  *a2 = v13;
LABEL_13:
  CFRelease(v9);
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Int)
  {
    CFRelease(Int);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v14;
}

uint64_t _createDescription_0(uint64_t a1, __CFDictionary **a2)
{
  v2 = *(a1 + 40);
  theDict = 0;
  values = 0;
  v60 = 0;
  cf = 0;
  value = 0;
  if (!a2)
  {
    v46 = 0;
    v39 = 0;
    v48 = 0;
    goto LABEL_55;
  }

  v5 = OUTLINED_FUNCTION_17();
  Mutable = CFDictionaryCreateMutable(v5, v6, v7, v8);
  v10 = Mutable;
  values = Mutable;
  if (!Mutable)
  {
    v46 = 0;
    goto LABEL_76;
  }

  v11 = *(a1 + 496);
  MetadataDescriptionArray_0 = CMPhotoCFDictionarySetInt64(Mutable, @"DataOffset", 0);
  if (!MetadataDescriptionArray_0)
  {
    MetadataDescriptionArray_0 = CMPhotoCFDictionarySetSize(v10, @"DataLength", v11);
    if (!MetadataDescriptionArray_0)
    {
      LODWORD(v13) = *(a1 + 88);
      LODWORD(v14) = *(a1 + 92);
      v64.width = v13;
      v64.height = v14;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v64);
      if (!DictionaryRepresentation)
      {
LABEL_73:
        v46 = 0;
        v10 = 0;
LABEL_76:
        v39 = 0;
        goto LABEL_79;
      }

      v16 = DictionaryRepresentation;
      CFDictionarySetValue(v10, @"Dimensions", DictionaryRepresentation);
      CFRelease(v16);
      MetadataDescriptionArray_0 = _copyImageBitDepthForIndex_1(a1, 0, v17, &value);
      if (!MetadataDescriptionArray_0)
      {
        CFDictionarySetValue(v10, @"BitDepth", value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        v18 = *(a1 + 288);
        if (v18)
        {
          v19 = CGColorSpaceCopyName(v18);
          if (v19)
          {
            v20 = v19;
            CFDictionarySetValue(v10, @"NamedColorSpace", v19);
            CFRelease(v20);
          }

          else
          {
            CFDictionarySetValue(v10, @"ColorSpace", *(a1 + 288));
          }
        }

        if (!*(a1 + 304) && !*(a1 + 312))
        {
          goto LABEL_21;
        }

        v21 = OUTLINED_FUNCTION_17();
        v25 = CFDictionaryCreateMutable(v21, v22, v23, v24);
        if (v25)
        {
          v26 = v25;
          v27 = *(a1 + 304);
          if (v27)
          {
            CFDictionarySetValue(v25, @"ColorPrimaries", v27);
          }

          v28 = *(a1 + 312);
          if (v28)
          {
            CFDictionarySetValue(v26, @"TransferFunction", v28);
          }

          CFDictionarySetValue(v10, @"NclxColor", v26);
          CFRelease(v26);
LABEL_21:
          MetadataDescriptionArray_0 = CMPhotoCFDictionarySetInt32(v10, @"CodecType", 1786276963);
          if (MetadataDescriptionArray_0)
          {
            goto LABEL_71;
          }

          MetadataDescriptionArray_0 = CMPhotoCFDictionarySetInt64(v10, @"ItemID", 1);
          if (MetadataDescriptionArray_0)
          {
            goto LABEL_71;
          }

          v29 = *(a1 + 320);
          if (v29)
          {
            if (CFArrayGetCount(v29) >= 1)
            {
              v50 = OUTLINED_FUNCTION_17();
              MetadataDescriptionArray_0 = _createMetadataDescriptionArray_0(v50, v51, v11, v52, v53);
              if (MetadataDescriptionArray_0)
              {
                goto LABEL_71;
              }
            }
          }

          v30 = *(a1 + 328);
          if (v30)
          {
            if (CFArrayGetCount(v30) >= 1)
            {
              v54 = OUTLINED_FUNCTION_17();
              MetadataDescriptionArray_0 = _createMetadataDescriptionArray_0(v54, v55, v11, v56, v57);
              if (MetadataDescriptionArray_0)
              {
                goto LABEL_71;
              }
            }
          }

          if (!*(a1 + 144) || (v31 = OUTLINED_FUNCTION_17(), v35 = CFDictionaryCreateMutable(v31, v32, v33, v34), (theDict = v35) == 0) || CMPhotoCFDictionarySetInt64(v35, @"DataOffset", 0) || CMPhotoCFDictionarySetSize(theDict, @"DataLength", v11) || (v58 = 0, _getAuxiliaryImageTypeForIndex_1(a1, 0, 0, v36, &v58 + 4, &v58)) || CMPhotoCFDictionarySetInt(theDict, @"AuxiliaryType", SHIDWORD(v58)) || CMPhotoCFDictionarySetInt32(theDict, @"AuxiliaryNativePixelFormat", v58) || CMPhotoCFDictionarySetInt(theDict, @"AlphaPremultiplication", 0))
          {
            v39 = 0;
          }

          else
          {
            LODWORD(v37) = *(a1 + 88);
            LODWORD(v38) = *(a1 + 92);
            v65.width = v37;
            v65.height = v38;
            v39 = CGSizeCreateDictionaryRepresentation(v65);
            if (v39)
            {
              CFDictionarySetValue(theDict, @"Dimensions", v39);
              CFRelease(v39);
              v39 = CFArrayCreate(v2, &theDict, 1, MEMORY[0x1E695E9C0]);
            }
          }

          if (cf)
          {
            CFDictionarySetValue(v10, @"ExifPayloads", cf);
          }

          if (v60)
          {
            CFDictionarySetValue(v10, @"XMPPayloads", v60);
          }

          if (v39)
          {
            CFDictionarySetValue(v10, @"AuxiliaryImages", v39);
            CFArrayGetCount(v39);
          }

          v40 = FigCFDictionarySetInt();
          if (v40)
          {
            v48 = v40;
            v46 = 0;
            v10 = 0;
            goto LABEL_51;
          }

          v10 = CFArrayCreate(v2, &values, 1, MEMORY[0x1E695E9C0]);
          if (v10)
          {
            v41 = OUTLINED_FUNCTION_17();
            v45 = CFDictionaryCreateMutable(v41, v42, v43, v44);
            v46 = v45;
            if (v45)
            {
              CFDictionarySetValue(v45, @"MainImages", v10);
              CFArrayGetCount(v10);
              v47 = FigCFDictionarySetInt();
              if (v47 || (v47 = CMPhotoCFDictionarySetSize(v46, @"PrimaryImageIndex", 0), v47))
              {
                v48 = v47;
              }

              else
              {
                v48 = CMPhotoCFDictionarySetSize(v46, @"ImageSequenceCount", 0);
                if (!v48)
                {
                  *a2 = v46;
                  v46 = 0;
                }
              }

              goto LABEL_51;
            }
          }

          else
          {
            v46 = 0;
          }

LABEL_79:
          v48 = 4294950305;
          goto LABEL_51;
        }

        goto LABEL_73;
      }
    }
  }

LABEL_71:
  v48 = MetadataDescriptionArray_0;
  v46 = 0;
  v10 = 0;
  v39 = 0;
LABEL_51:
  if (value)
  {
    CFRelease(value);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  return v48;
}

uint64_t _createDescription_1(const void *a1, __CFDictionary **a2)
{
  v4 = CFGetAllocator(a1);
  OUTLINED_FUNCTION_27_3();
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = OUTLINED_FUNCTION_53();
    ImageCountWithOptions = CMPhotoDecompressionContainerGetImageCountWithOptions(v8, v9, v10);
    if (ImageCountWithOptions || (ImageCountWithOptions = FigCFDictionarySetInt(), ImageCountWithOptions))
    {
      v19 = ImageCountWithOptions;
      goto LABEL_13;
    }

    v12 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    if (!v12)
    {
      v19 = 4294950305;
      goto LABEL_13;
    }

    v13 = v12;
    IsMIAF = CMPhotoDecompressionContainerDetectSourceIsMIAF(a1);
    SequenceCount_2 = CMPhotoCFDictionarySetBoolean(v7, @"SourceIsMIAF", IsMIAF);
    if (SequenceCount_2 || (v16 = OUTLINED_FUNCTION_110(), CFDictionarySetValue(v16, v17, v18), SequenceCount_2 = _getSequenceCount_2(a1, &v23), SequenceCount_2) || (SequenceCount_2 = FigCFDictionarySetInt(), SequenceCount_2) || (SequenceCount_2 = _getVideoAndAudioCount(a1, &v22, &v21), SequenceCount_2) || (SequenceCount_2 = FigCFDictionarySetInt(), SequenceCount_2))
    {
      v19 = SequenceCount_2;
    }

    else
    {
      v19 = FigCFDictionarySetInt();
      if (!v19)
      {
        *a2 = v7;
        v7 = v13;
LABEL_13:
        CFRelease(v7);
        goto LABEL_14;
      }
    }

    CFRelease(v13);
    goto LABEL_13;
  }

  v19 = 4294950305;
LABEL_14:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t _createDescription_2(uint64_t *a1, CFMutableDictionaryRef *a2)
{
  v6 = CFGetAllocator(a1);
  v24 = 0;
  cf = 0;
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v8 = Mutable;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    v2 = 0;
    v3 = 0;
LABEL_44:
    v20 = 4294950305;
LABEL_45:
    CFRelease(v8);
    if (!v9)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  capacity = 0;
  ImageCountForSequence = _getImageCountForSequence(a1[10], &capacity);
  if (ImageCountForSequence || (v22 = 0, LoopCount = _getLoopCount(a1, &v22), !LoopCount) && (ImageCountForSequence = CMPhotoCFDictionarySetSize(v8, @"LoopCount", v22), ImageCountForSequence))
  {
    v20 = ImageCountForSequence;
    v2 = 0;
    v3 = 0;
    goto LABEL_45;
  }

  v12 = capacity;
  if (capacity >= 1)
  {
    v13 = 0;
    v2 = 0;
    v3 = 0;
    v14 = MEMORY[0x1E695E9C0];
    while (1)
    {
      if (!v3)
      {
        v3 = CFArrayCreateMutable(v6, v12, v14);
        if (!v3)
        {
          goto LABEL_44;
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v24)
      {
        CFRelease(v24);
        v24 = 0;
      }

      DescriptionOfFrameForIndex = _createDescriptionOfFrameForIndex(a1, a1[10], v13, v6, 0, &v24, &cf);
      if (DescriptionOfFrameForIndex)
      {
        v20 = DescriptionOfFrameForIndex;
        goto LABEL_45;
      }

      if (cf)
      {
        CFArrayAppendValue(v3, cf);
      }

      if (!v13)
      {
        v16 = v24;
        if (v24)
        {
          if (!v2)
          {
            v2 = CFArrayCreateMutable(v6, 0, v14);
            if (!v2)
            {
              goto LABEL_44;
            }

            v16 = v24;
          }

          CFArrayAppendValue(v2, v16);
        }
      }

      ++v13;
      v12 = capacity;
      if (v13 >= capacity)
      {
        CFDictionarySetValue(v8, @"MainImages", v3);
        if (v2)
        {
          CFDictionarySetValue(v9, @"MainImages", v2);
          v17 = OUTLINED_FUNCTION_20_1();
          CFDictionarySetValue(v17, v18, v19);
        }

        v20 = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        goto LABEL_45;
      }
    }
  }

  OUTLINED_FUNCTION_19_9();
  v20 = LoopCount;
  if (!a2)
  {
    goto LABEL_45;
  }

LABEL_29:
  *a2 = v8;
LABEL_30:
  CFRelease(v9);
LABEL_31:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v20;
}

uint64_t _createDescription_3(void *a1, void *a2)
{
  v3 = a1[5];
  v98 = 0;
  v99 = 0;
  v97 = 0;
  if (!a2)
  {
    return 0;
  }

  Value = a2;
  v95 = a1[62];
  LODWORD(v101[0]) = 0;
  ImageCount = DicomGetImageCount(a1[14], 0, v101);
  if (ImageCount)
  {
    v82 = ImageCount;
    OUTLINED_FUNCTION_10_21();
    Mutable = 0;
    goto LABEL_107;
  }

  v7 = SLODWORD(v101[0]);
  Mutable = CFArrayCreateMutable(v3, SLODWORD(v101[0]), MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_10_21();
    Value = 0;
    v82 = 4294950305;
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_31();
  v13 = DicomCopyCodecForIndex(v9, v10, v11, v12, 0);
  if (v13 || (v13 = _copyColorSpaceForIndex_3(a1, 0, &v97), v13))
  {
    v82 = v13;
    OUTLINED_FUNCTION_10_21();
LABEL_107:
    Value = 0;
    goto LABEL_83;
  }

  v14 = CGColorSpaceCopyName(v97);
  v96 = a1;
  v87 = a1[10];
  v15 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = v15;
  if (!v15)
  {
    OUTLINED_FUNCTION_7_24();
    v82 = 4294950305;
    goto LABEL_81;
  }

  v16 = CMPhotoCFDictionarySetInt64(v15, @"DataOffset", 0);
  if (v16 || (v16 = CMPhotoCFDictionarySetSize(v2, @"DataLength", v95), v16))
  {
    v82 = v16;
    OUTLINED_FUNCTION_7_24();
    goto LABEL_81;
  }

  v85 = Value;
  cf = v14;
  Value = CFDictionaryGetValue(v2, @"DataOffset");
  v17 = CFDictionaryGetValue(v2, @"DataLength");
  OUTLINED_FUNCTION_31();
  ImageGeometryForIndex = DicomGetImageGeometryForIndex(v18, v19, v20, v21, v22, 0);
  if (ImageGeometryForIndex)
  {
    goto LABEL_102;
  }

  v102.width = v98;
  v102.height = v99;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v102);
  if (!DictionaryRepresentation)
  {
    OUTLINED_FUNCTION_7_24();
LABEL_99:
    v82 = 4294950305;
    goto LABEL_101;
  }

  v25 = DictionaryRepresentation;
  CFDictionarySetValue(v2, @"Dimensions", DictionaryRepresentation);
  CFRelease(v25);
  v101[0] = 0;
  OUTLINED_FUNCTION_31();
  ImageGeometryForIndex = DicomGetImageBitDepthForIndex(v26, v27, v28, v29);
  if (ImageGeometryForIndex)
  {
    goto LABEL_102;
  }

  CFDictionarySetValue(v2, @"BitDepth", v101[0]);
  if (v101[0])
  {
    CFRelease(v101[0]);
    v101[0] = 0;
  }

  ImageGeometryForIndex = CMPhotoCFDictionarySetInt32(v2, @"CodecType", 0);
  if (ImageGeometryForIndex)
  {
LABEL_102:
    v82 = ImageGeometryForIndex;
LABEL_97:
    OUTLINED_FUNCTION_7_24();
LABEL_101:
    v14 = cf;
    goto LABEL_81;
  }

  v30 = kCMPhotoDecompressionContainerDescription_NamedColorSpace;
  v31 = cf;
  if (cf)
  {
    goto LABEL_18;
  }

  v31 = v97;
  if (v97)
  {
    v30 = kCMPhotoDecompressionContainerDescription_ColorSpace;
LABEL_18:
    CFDictionarySetValue(v2, *v30, v31);
  }

  v88 = v7;
  v90 = Mutable;
  v32 = v96[12];
  if (v32)
  {
    Count = CFArrayGetCount(v32);
    if (Count >= 1)
    {
      v34 = Count;
      MutableCopy = FigCFArrayCreateMutableCopy();
      if (MutableCopy)
      {
        v36 = MutableCopy;
        CFDictionarySetValue(v2, @"DebugPayloads", MutableCopy);
        CFRelease(v36);
        while (1)
        {
          v37 = FigCFDictionaryCreateMutableCopy();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          CFArrayAppendValue(v36, v37);
          CFRelease(v38);
          CFDictionarySetValue(v38, @"DataOffset", Value);
          CFDictionarySetValue(v38, @"DataLength", v17);
          if (!--v34)
          {
            goto LABEL_25;
          }
        }
      }

      v82 = 4294950305;
      Mutable = v90;
      goto LABEL_97;
    }
  }

LABEL_25:
  v94 = v3;
  theDict = v2;
  v39 = v96[13];
  if (v39)
  {
    v40 = CFArrayGetCount(v39);
    if (v40 >= 1)
    {
      v41 = v40;
      v42 = FigCFArrayCreateMutableCopy();
      if (v42)
      {
        v43 = v42;
        CFDictionarySetValue(v2, @"CustomMetadataPayloads", v42);
        CFRelease(v43);
        v44 = 0;
        v3 = @"URI";
        while (1)
        {
          v45 = FigCFDictionaryCreateMutableCopy();
          if (!v45)
          {
            break;
          }

          v46 = v45;
          CFArrayAppendValue(v43, v45);
          CFRelease(v46);
          FigCFArrayGetValueAtIndex();
          CFDictionarySetValue(v46, @"DataOffset", Value);
          CFDictionarySetValue(v46, @"DataLength", v17);
          v47 = FigCFDictionaryGetValue();
          if (v47)
          {
            CFDictionarySetValue(v46, @"URI", v47);
          }

          v48 = FigCFDictionaryGetValue();
          if (v48)
          {
            CFDictionarySetValue(v46, @"Name", v48);
          }

          if (v41 == ++v44)
          {
            goto LABEL_35;
          }
        }
      }

      v82 = 4294950305;
      Mutable = v90;
      goto LABEL_97;
    }
  }

LABEL_35:
  v49 = v88;
  if (v88 < 1)
  {
    v3 = 0;
    Mutable = v90;
    v52 = v94;
LABEL_74:
    v81 = CFDictionaryCreateMutable(v52, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Value = v81;
    if (v81)
    {
      CFDictionarySetValue(v81, @"MainImages", Mutable);
      v82 = CMPhotoCFDictionarySetSize(Value, @"PrimaryImageIndex", 0);
      v14 = cf;
      if (!v82)
      {
        *v85 = Value;
LABEL_80:
        Value = 0;
      }

      goto LABEL_81;
    }

    goto LABEL_99;
  }

  v50 = 0;
  v3 = 0;
  v51 = 0;
  v89 = @"AuxiliaryImages";
  Mutable = v90;
  v52 = v94;
  v53 = v87;
  while (1)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    v54 = FigCFDictionaryCreateMutableCopy();
    v3 = v54;
    if (!v54)
    {
      Value = 0;
      goto LABEL_99;
    }

    v55 = CMPhotoCFDictionarySetInt64(v54, @"ItemID", v51);
    if (v55)
    {
      v82 = v55;
      Value = 0;
      goto LABEL_101;
    }

    ++v51;
    if (!v50 && v53 >= 1)
    {
      break;
    }

LABEL_71:
    CFArrayAppendValue(Mutable, v3);
    if (++v50 == v49)
    {
      goto LABEL_74;
    }
  }

  v93 = 0;
  v56 = v96[10];
  v57 = CFGetAllocator(v96);
  if (v56 < 1)
  {
    CFDictionarySetValue(v3, v89, 0);
LABEL_70:
    v50 = v93;
    goto LABEL_71;
  }

  v58 = v57;
  v92 = v3;
  v59 = 0;
  v60 = 0;
  v61 = 76;
  v62 = v96;
  while (1)
  {
    v63 = v62[11];
    if (!v59)
    {
      v59 = CFArrayCreateMutable(v58, v56, MEMORY[0x1E695E9C0]);
      if (!v59)
      {
        break;
      }
    }

    v64 = FigCFDictionaryCreateMutableCopy();
    if (!v64)
    {
      goto LABEL_78;
    }

    v65 = v64;
    CFArrayAppendValue(v59, v64);
    CFRelease(v65);
    v66 = CMPhotoCFDictionarySetInt64(v65, @"DataOffset", 0);
    if (v66 || (v66 = CMPhotoCFDictionarySetSize(v65, @"DataLength", v95), v66))
    {
LABEL_77:
      v82 = v66;
LABEL_79:
      Mutable = v90;
      v2 = theDict;
      v14 = cf;
      v3 = v92;
      CFRelease(v59);
      goto LABEL_80;
    }

    v103.width = *(v63 + v61 - 76);
    v103.height = *(v63 + v61 - 68);
    v67 = CGSizeCreateDictionaryRepresentation(v103);
    if (!v67)
    {
LABEL_78:
      v82 = 4294950305;
      goto LABEL_79;
    }

    v68 = v67;
    CFDictionarySetValue(v65, @"Dimensions", v67);
    CFRelease(v68);
    v66 = FigCFDictionarySetInt();
    if (v66)
    {
      goto LABEL_77;
    }

    v66 = CMPhotoCFDictionarySetInt64(v65, @"ItemID", v51);
    if (v66)
    {
      goto LABEL_77;
    }

    v66 = CMPhotoCFDictionarySetInt(v65, @"AuxiliaryType", *(v63 + v61 - 56));
    if (v66)
    {
      goto LABEL_77;
    }

    v66 = CMPhotoCFDictionarySetInt32(v65, @"AuxiliaryNativePixelFormat", *(v63 + v61 - 52));
    if (v66)
    {
      goto LABEL_77;
    }

    v73 = (v63 + v61);
    v74 = *(v73 - 9);
    if (v74)
    {
      CFDictionarySetValue(v65, @"AuxiliaryTypeURN", v74);
    }

    v101[0] = 0;
    CMPhotoDecompressionContainerCreateBitDepthArray(v58, *(v73 - 15), *v73, v101, v69, v70, v71, v72, v84, v85, SHIDWORD(v85), cf, v87, v88, v89, v90, theDict, v92, v93);
    v62 = v96;
    if (v66)
    {
      goto LABEL_77;
    }

    CFDictionarySetValue(v65, @"BitDepth", v101[0]);
    if (v101[0])
    {
      CFRelease(v101[0]);
      v101[0] = 0;
    }

    v66 = CMPhotoCFDictionarySetInt32(v65, @"CodecType", 1785750887);
    if (v66)
    {
      goto LABEL_77;
    }

    v100 = 0;
    if (!_copyAuxiliaryColorSpaceForIndex_1(v96, 0, v60, &v100, v75, v76, v77, v78))
    {
      v79 = CGColorSpaceCopyName(v100);
      if (v79)
      {
        v80 = v79;
        CFDictionarySetValue(v65, @"NamedColorSpace", v79);
        CFRelease(v80);
      }

      else
      {
        CFDictionarySetValue(v65, @"ColorSpace", v100);
      }

      if (v100)
      {
        CFRelease(v100);
      }
    }

    ++v60;
    v61 += 104;
    ++v51;
    if (v56 == v60)
    {
      v3 = v92;
      CFDictionarySetValue(v92, v89, v59);
      CFRelease(v59);
      Mutable = v90;
      v2 = theDict;
      v52 = v94;
      v53 = v87;
      v49 = v88;
      goto LABEL_70;
    }
  }

  Value = 0;
  v82 = 4294950305;
  Mutable = v90;
  v2 = theDict;
  v14 = cf;
  v3 = v92;
LABEL_81:
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_83:
  if (v97)
  {
    CFRelease(v97);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  return v82;
}

void _createMetadataDictionaryArrayForReader(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  switch(a3)
  {
    case 0:
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v4 = OUTLINED_FUNCTION_102_0();
        if (!v5(v4))
        {
          goto LABEL_14;
        }
      }

      break;
    case 1:
      if (*(*(CMBaseObjectGetVTable() + 16) + 64))
      {
        v8 = OUTLINED_FUNCTION_102_0();
        if (!v9(v8))
        {
          goto LABEL_14;
        }
      }

      break;
    case 2:
      if (*(*(CMBaseObjectGetVTable() + 16) + 80))
      {
        v6 = OUTLINED_FUNCTION_102_0();
        if (!v7(v6))
        {
          goto LABEL_14;
        }
      }

      break;
    case 4:
      v10 = *(CMBaseObjectGetVTable() + 16);
      if (*v10 >= 2uLL)
      {
        if (v10[13])
        {
          v11 = OUTLINED_FUNCTION_102_0();
          if (!v12(v11))
          {
            goto LABEL_14;
          }
        }
      }

      break;
    default:
LABEL_14:
      *a4 = 0;
      break;
  }
}

unint64_t ___sanityCheckAllowOptionsValue_block_invoke(unint64_t result, uint64_t a2, const void *a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v4 = result;
    result = CMPhotoGetContainerFormatFromFormatString(a2, 0);
    if (!result)
    {
      if (a3)
      {
        v5 = CFGetTypeID(a3);
        if (v5 == CFArrayGetTypeID())
        {
          result = CFArrayGetCount(a3);
          if (!result)
          {
            return result;
          }

          v6 = 0;
          while (FigCFArrayGetInt32AtIndex())
          {
            ++v6;
            result = CFArrayGetCount(a3);
            if (v6 >= result)
            {
              return result;
            }
          }
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_19();
      result = FigSignalErrorAtGM();
      *(*(*(v4 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t CMPhotoGetContainerFormatFromFormatString(uint64_t a1, int *a2)
{
  if (FigCFEqual())
  {
    v3 = 0;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v3 = 1;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v3 = 2;
    if (!a2)
    {
      return 0;
    }

LABEL_9:
    *a2 = v3;
    return 0;
  }

  if (FigCFEqual())
  {
    v3 = 3;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  return FigSignalErrorAtGM();
}

int64_t ___isContainerAllowedByDictionary_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v8 = -1;
  result = CMPhotoGetContainerFormatFromFormatString(a2, &v8);
  if (!result)
  {
    if (a3)
    {
      if (v8 == *(a1 + 40))
      {
        v6 = CFGetTypeID(a3);
        result = CFArrayGetTypeID();
        if (v6 == result)
        {
          if (*(a1 + 44))
          {
            result = CFArrayGetCount(a3);
            v7 = result > 0;
          }

          else
          {
            v7 = 1;
          }

          *(*(*(a1 + 32) + 8) + 24) = v7;
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return CMPhotoCFDictionarySetInt32(v20, a20, 1785750887);
}

uint64_t CMPhotoGetYUVPixelFormatForParameters(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, int *a8)
{
  v8 = 1111573574;
  v9 = 1111573574;
  switch(a1)
  {
    case 1:
      switch(a2)
      {
        case 8:
          OUTLINED_FUNCTION_60();
          v14 = v13 | 0x26380004;
          v15 = 641234482;
          goto LABEL_54;
        case 10:
          if (a3)
          {
            v9 = 1885746228;
          }

          else
          {
            v9 = 1882469428;
          }

          if (a3)
          {
            v31 = 2019963956;
          }

          else
          {
            v31 = 2016687156;
          }

          if (a3)
          {
            v32 = 645424692;
          }

          else
          {
            v32 = 645428788;
          }

          if (a5 == 2)
          {
            v31 = v32;
          }

          if ((a5 - 3) >= 3)
          {
            v33 = v31;
          }

          else
          {
            v33 = 1111573574;
          }

          if (!a4)
          {
            v9 = v33;
          }

          goto LABEL_103;
        case 12:
          OUTLINED_FUNCTION_94();
          OUTLINED_FUNCTION_60();
          v14 = v28 | 0x26740004;
          v15 = 645166642;
          goto LABEL_54;
        case 16:
          OUTLINED_FUNCTION_94();
          OUTLINED_FUNCTION_60();
          v14 = v34 | 0x26730004;
          v15 = 645101106;
LABEL_54:
          v17 = v15 + 2;
          goto LABEL_55;
        default:
          goto LABEL_103;
      }

    case 2:
    case 5:
      switch(a2)
      {
        case 8:
          switch(a5)
          {
            case 2:
              v9 = 641230384;
              goto LABEL_99;
            case 3:
              v9 = 2084070960;
              goto LABEL_99;
            case 4:
              v9 = 792225328;
              goto LABEL_99;
            case 5:
              v9 = 758670896;
              goto LABEL_99;
            default:
              v9 = 875704422;
              v30 = 875704438;
              break;
          }

          goto LABEL_100;
        case 10:
          if (!a4)
          {
            switch(a5)
            {
              case 2:
                v9 = 645424688;
                goto LABEL_99;
              case 3:
                v9 = 2088265264;
                goto LABEL_99;
              case 4:
                v9 = 796419632;
                goto LABEL_99;
              case 5:
                v9 = 762865200;
                goto LABEL_99;
              default:
                v9 = 2016686640;
                goto LABEL_19;
            }
          }

          v9 = 1882468912;
LABEL_19:
          v20 = v9 + 3276800;
          v21 = a3 == 0;
          goto LABEL_51;
        case 12:
          switch(a5)
          {
            case 2:
              v9 = 645162544;
              goto LABEL_99;
            case 3:
              v9 = 2088003120;
              v42 = 2088003122;
              goto LABEL_81;
            case 4:
              v9 = 796157488;
              v42 = 796157490;
              goto LABEL_81;
            case 5:
              v9 = 762603056;
              v42 = 762603058;
LABEL_81:
              v30 = v42 + 4094;
              break;
            default:
              v9 = 1952854576;
              v30 = 1953903152;
              break;
          }

          goto LABEL_100;
        case 16:
          OUTLINED_FUNCTION_94();
          v12 = v23 | 0x68660000;
          if (v10)
          {
            v24 = 1936077360;
          }

          else
          {
            v24 = 1937125936;
          }

          if (!v22)
          {
            v12 = v24;
          }

          v14 = 645097008;
          v17 = 645101104;
LABEL_55:
          v16 = v10 == 0;
          goto LABEL_56;
        default:
          goto LABEL_103;
      }

    case 3:
      switch(a2)
      {
        case 8:
          v11 = a5 - 3;
          v16 = a3 == 0;
          if (a3)
          {
            v12 = 875704934;
          }

          else
          {
            v12 = 875704950;
          }

          v14 = 641230386;
          v17 = 641234482;
          goto LABEL_56;
        case 10:
          if (!a4)
          {
            switch(a5)
            {
              case 2:
                OUTLINED_FUNCTION_36();
                v30 = 645428786;
                goto LABEL_101;
              case 3:
                OUTLINED_FUNCTION_36();
                v30 = 2088269362;
                goto LABEL_101;
              case 4:
                OUTLINED_FUNCTION_36();
                v30 = 796423730;
                goto LABEL_101;
              case 5:
                OUTLINED_FUNCTION_36();
                v30 = 762869298;
                goto LABEL_101;
              default:
                OUTLINED_FUNCTION_36();
                v20 = 2019963442;
                goto LABEL_51;
            }
          }

          OUTLINED_FUNCTION_36();
          v20 = 1885745714;
LABEL_51:
          if (!v21)
          {
            v9 = v20;
          }

          break;
        case 12:
          switch(a5)
          {
            case 2:
              OUTLINED_FUNCTION_36();
              v30 = 645166642;
              break;
            case 3:
              v9 = 2088003122;
              goto LABEL_99;
            case 4:
              v9 = 796157490;
              goto LABEL_99;
            case 5:
              v9 = 762603058;
LABEL_99:
              v30 = v9 | 0x1000;
LABEL_100:
              v29 = a3 == 0;
              break;
            default:
              OUTLINED_FUNCTION_36();
              v30 = 1953903154;
              break;
          }

LABEL_101:
          if (v29)
          {
            v9 = v30;
          }

          break;
        case 16:
          OUTLINED_FUNCTION_94();
          v12 = v36 | 0x73660002;
          if (!v35)
          {
            v12 = 1937125938;
          }

          v14 = 645097010;
          v16 = v35 == 0;
          v17 = 645101106;
LABEL_56:
          if (v16)
          {
            v14 = v17;
          }

          if (a5 == 2)
          {
            v12 = v14;
          }

          if (v11 >= 3)
          {
            v9 = v12;
          }

          else
          {
            v9 = v8;
          }

          break;
        default:
          goto LABEL_103;
      }

      break;
    case 6:
      switch(a2)
      {
        case 8:
          v18 = a5 - 2;
          if ((a5 - 2) < 4)
          {
            v19 = "80L&80L|80L/80L-21L&FDABFDABFDAB01L&FDABFDABFDAB61L&FDABFDABFDAB";
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_71();
          break;
        case 9:
        case 11:
        case 13:
        case 14:
        case 15:
          goto LABEL_103;
        case 10:
          v18 = a5 - 2;
          if ((a5 - 2) < 4)
          {
            v19 = "01L&FDABFDABFDAB61L&FDABFDABFDAB";
            goto LABEL_72;
          }

          OUTLINED_FUNCTION_71();
          v9 = v41 + 248;
          break;
        case 12:
          v18 = a5 - 2;
          if ((a5 - 2) >= 4)
          {
            OUTLINED_FUNCTION_71();
            v9 = v40 + 250;
          }

          else
          {
            v19 = "21L&FDABFDABFDAB01L&FDABFDABFDAB61L&FDABFDABFDAB";
LABEL_72:
            v9 = *&v19[4 * v18];
          }

          break;
        case 16:
          OUTLINED_FUNCTION_71();
          if (v39)
          {
            v9 = v38 + 48;
          }

          else if ((v37 - 2) >= 4)
          {
            v9 = v38 + 254;
          }

          else
          {
            v9 = *&a80l80l80l80l21[4 * (v37 - 2) + 48];
          }

          break;
        default:
          OUTLINED_FUNCTION_71();
          v9 = v26 + 46;
          if (!v27)
          {
            v9 = v8;
          }

          if (v25 != 32)
          {
            v9 = v8;
          }

          break;
      }

      break;
    default:
      break;
  }

LABEL_103:
  if (a7)
  {
    if (v9 == v8)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();

      return FigSignalErrorAtGM();
    }
  }

  else if (v9 == v8)
  {
    return 4294950302;
  }

  result = 0;
  if (a8)
  {
    *a8 = v9;
  }

  return result;
}

uint64_t _copyFormatDescriptionForIndex(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  keys[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (a2)
  {
    _copyFormatDescriptionForIndex_cold_1(keys);
    return LODWORD(keys[0]);
  }

  if (*(a1 + 296))
  {
    v6 = *MEMORY[0x1E6960070];
    values = *(a1 + 296);
    keys[0] = v6;
    v7 = CFDictionaryCreate(*(a1 + 40), keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v7)
    {
      return 4294950305;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = CMVideoFormatDescriptionCreate(*(a1 + 40), 0x6A786C63u, *(a1 + 88), *(a1 + 92), v7, &cf);
  if (v8)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t _copyFormatDescriptionForIndex_0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  cf = 0;
  v16 = 0;
  if (!a4)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
LABEL_7:
    v13 = 4294954514;
    goto LABEL_8;
  }

  v9 = v8(v7, a2, &cf, 0);
  if (!v9)
  {
    v10 = CFGetAllocator(a1);
    FigBaseObject = FigPictureReaderGetFigBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v13 = v12(FigBaseObject, *MEMORY[0x1E69722F8], v10, &v16);
      if (!v13)
      {
        *a4 = v16;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = v9;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t _copyFormatDescriptionForIndex_2(uint64_t a1, unint64_t a2, uint64_t a3, CMVideoFormatDescriptionRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_17_4(a1, a2, a3, a4, a5, a6, a7, a8, v22, SWORD2(v22), SBYTE6(v22), SHIBYTE(v22), v24);
  if (v10)
  {
    return v10;
  }

  cf = 0;
  formatDescriptionOut = 0;
  v11 = CFGetAllocator(a1);
  v12 = _parseImageSizeAndTypeIfNeeded();
  if (!v12)
  {
    v13 = _parseICCProfileIfNeeded(a1 + 40);
    if (v13)
    {
      v17 = v13;
      v15 = 0;
      goto LABEL_14;
    }

    if (!*(a1 + 465))
    {
      v15 = 0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_53();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v15 = MutableCopy;
    if (MutableCopy)
    {
      if (!v23)
      {
        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6960070], *(a1 + 472));
        goto LABEL_9;
      }

      v19 = _copyColorSpaceForIndex(a1, 1, &cf);
      if (v19)
      {
        v17 = v19;
LABEL_14:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_16;
      }

      v20 = CGColorSpaceCopyICCData(cf);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v15, *MEMORY[0x1E6960070], v20);
        CFRelease(v21);
LABEL_9:
        if (v23)
        {
          v16 = 1953325424;
        }

        else
        {
          v16 = 1785750887;
        }

        v17 = CMVideoFormatDescriptionCreate(v11, v16, *(a1 + 112), *(a1 + 120), v15, &formatDescriptionOut);
        if (!v17)
        {
          *a4 = formatDescriptionOut;
          formatDescriptionOut = 0;
        }

        goto LABEL_14;
      }
    }

    v17 = 4294950305;
    goto LABEL_14;
  }

  v17 = v12;
  v15 = 0;
LABEL_16:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v17;
}