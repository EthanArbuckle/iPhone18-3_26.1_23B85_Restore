uint64_t _copyFormatDescriptionForIndex_3(uint64_t *a1, uint64_t a2, uint64_t a3, CMVideoFormatDescriptionRef *a4)
{
  formatDescriptionOut = 0;
  v7 = CFGetAllocator(a1);
  v12 = 0;
  *width = 0;
  v11 = 0;
  ImageGeometryForIndex = DicomGetImageGeometryForIndex(a1[14], 0, a2, width, &v12, 0);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  ImageGeometryForIndex = DicomCopyCodecForIndex(a1[14], 0, a2, &v11, 0);
  if (ImageGeometryForIndex)
  {
    return ImageGeometryForIndex;
  }

  v9 = CMVideoFormatDescriptionCreate(v7, v11, width[0], v12, 0, &formatDescriptionOut);
  if (v9)
  {
    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }
  }

  else
  {
    *a4 = formatDescriptionOut;
  }

  return v9;
}

uint64_t ___copyChunkedHeadersFromJFIFByteStream_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  if (a8 < v8 + 2 * v9)
  {
    return 4294950194;
  }

  v13 = *(a1 + 96);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    return 4294954514;
  }

  v37 = 0;
  result = v14(v13, 2 * v9, v8 + a7, v38, &v37);
  if (result)
  {
    return result;
  }

  v16 = *(a1 + 88);
  if (v37 != 2 * v16)
  {
    return 4294950194;
  }

  v17 = v37 + *(a1 + 80);
  if (v16 == 1)
  {
    v18 = LOBYTE(v38[0]);
    v19 = HIBYTE(v38[0]);
  }

  else
  {
    v18 = bswap32(v38[0]) >> 16;
    v19 = bswap32(v38[1]) >> 16;
  }

  v20 = v17 + a7;
  v21 = *(*(a1 + 32) + 8);
  v22 = *(v21 + 24);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18 == 1;
  }

  if (v23 && v19 != 0)
  {
    *(v21 + 24) = v19;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = v20;
    v22 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (v22 <= 0 || v22 != v19 || *(*(*(a1 + 40) + 8) + 24) != v18)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    return FigSignalErrorAtGM();
  }

  v25 = OUTLINED_FUNCTION_9_21();
  if (!v25)
  {
    *(*(*(a1 + 56) + 8) + 24) = CFDataCreateMutable(*(a1 + 104), 0);
    v25 = OUTLINED_FUNCTION_9_21();
    if (!v25)
    {
      return 4294950305;
    }
  }

  v26 = a8 - v17;
  v27 = *(*(*(a1 + 64) + 8) + 24) + a8 - v17;
  if (v27 < 0)
  {
    return 4294950190;
  }

  CFDataSetLength(v25, v27);
  v28 = OUTLINED_FUNCTION_9_21();
  MutableBytePtr = CFDataGetMutableBytePtr(v28);
  v30 = *(*(a1 + 64) + 8);
  v31 = *(v30 + 24);
  *(v30 + 24) = v31 + v26;
  v32 = *(a1 + 96);
  v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v33)
  {
    return 4294954514;
  }

  result = v33(v32, v26, v20, &MutableBytePtr[v31], &v37);
  if (!result)
  {
    if (v37 == v26)
    {
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 24);
      if (v35 != *(*(*(a1 + 32) + 8) + 24))
      {
        result = 0;
        *(v34 + 24) = v35 + 1;
        return result;
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
      v36 = *(*(*(a1 + 64) + 8) + 24);
      if ((v36 & 0x8000000000000000) == 0)
      {
        *(*(*(a1 + 48) + 8) + 32) = v36;
        return 4294950191;
      }

      return 4294950190;
    }

    return 4294950194;
  }

  return result;
}

double OUTLINED_FUNCTION_20_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23)
{
  a22 = 0;
  *&a23 = 0;
  *(&a23 + 5) = 0;
  v25 = *(v23 - 104);

  *&result = CMPhotoVideoQualityControllerGetPoolingKey(v25, &a22).n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_20_3()
{
  v5 = v1;
  v6 = v2;
  v7 = v4;
  v8 = v3;

  return CGRectIsNull(*&v5);
}

uint64_t __CMPhotoCopyImageCountAndRangesFromJFIFByteStream_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1[4] + 8) + 24) = 1;
  *(*(a1[5] + 8) + 24) = a7;
  *(*(a1[6] + 8) + 24) = a8;
  return 4294950191;
}

uint64_t CMPhotoJFIFUtilitiesCreateAuxiliaryPropertiesFromStream(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const __CFString *a4, CGImageMetadata **a5, void *a6, const __CFDictionary **a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  lengthAtOffsetOut = 0;
  theBuffer = 0;
  dataPointerOut = 0;
  v28 = "http://ns.adobe.com/xap/1.0/";
  v12 = OUTLINED_FUNCTION_10_20(a1, a2);
  MarkersWithSignaturesInJFIFByteStream = CMPhotoFindMarkersWithSignaturesInJFIFByteStream(v12, v13, v14, v15, v16, v17, v18);
  if (MarkersWithSignaturesInJFIFByteStream)
  {
    v21 = MarkersWithSignaturesInJFIFByteStream;
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 4294950305;
    if (!CMCreateContiguousBlockBufferFromStream())
    {
      v20 = 0;
      v21 = 4294950194;
      if (!CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut) && lengthAtOffsetOut == v27)
      {
        v20 = CFDataCreateWithBytesNoCopy(a1, dataPointerOut, lengthAtOffsetOut, *MEMORY[0x1E695E498]);
        if (v20)
        {
          v21 = CMPhotoAuxiliaryImageMetadataCreateFromXMPData(a1, v20, a4, a5, a6, a7);
        }

        else
        {
          v21 = 4294950305;
        }
      }
    }
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v21;
}

uint64_t CMPhotoFindMarkersWithSignaturesInJFIFByteStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (!a7)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_11_17();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v11 >= 1)
  {
    bzero(a7, 16 * v11);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = *"";
  v20[2] = __CMPhotoFindMarkersWithSignaturesInJFIFByteStream_block_invoke;
  v20[3] = &unk_1E77A3498;
  v20[4] = &v21;
  v20[5] = a7;
  MarkersWithSignaturesInJFIFByteStreamWithHandler = CMPhotoFindMarkersWithSignaturesInJFIFByteStreamWithHandler(v16, v14, v12, v9, v8, v7, v20);
  if (MarkersWithSignaturesInJFIFByteStreamWithHandler)
  {
    v18 = MarkersWithSignaturesInJFIFByteStreamWithHandler;
  }

  else if (*(v22 + 24))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4294950303;
  }

  _Block_object_dispose(&v21, 8);
  return v18;
}

uint64_t __CMPhotoFindMarkersWithSignaturesInJFIFByteStream_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (*(a1 + 40) + 16 * a3);
  if (*v8 == 0)
  {
    *v8 = a7;
    v8[1] = a8;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 0;
}

uint64_t CMPhotoAuxiliaryImageMetadataCreateFromXMPData(const __CFAllocator *a1, const __CFData *a2, CFStringRef a3, CGImageMetadata **a4, void *a5, const __CFDictionary **a6)
{
  v9 = a2;
  v48 = 0;
  if (!a2)
  {
    v21 = 0;
    v47 = 0;
    v26 = 0;
    v31 = 0;
    v37 = 4294950306;
    goto LABEL_85;
  }

  v10 = v8;
  v12 = CMPhotoMetadataCreateCFNumberFormatter(a1, kCFNumberFormatterNoStyle, &v48);
  if (v12)
  {
    v37 = v12;
    v21 = 0;
    v47 = 0;
    v9 = 0;
    v26 = 0;
    v31 = 0;
    goto LABEL_85;
  }

  BytePtr = CFDataGetBytePtr(v9);
  v14 = MEMORY[0x1E695E480];
  if (!BytePtr)
  {
    goto LABEL_15;
  }

  v15 = BytePtr;
  Length = CFDataGetLength(v9);
  if (strncmp(v15, "<x:xmpmeta", 0xAuLL))
  {
    goto LABEL_15;
  }

  v16 = 0;
  while (1)
  {
    v7 = &v15[v16];
    if (!strncmp(&v15[v16 + 10], " xmlns", 6uLL))
    {
      break;
    }

    v17 = v16 + 18;
    v18 = v16++ > 3;
    v18 = v18 || v17 > Length;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  if (v16)
  {
    Mutable = CFDataCreateMutable(*v14, 0);
    CFDataAppendBytes(Mutable, v15, 10);
    CFDataAppendBytes(Mutable, v7 + 10, Length - v16 - 10);
  }

  else
  {
LABEL_15:
    Mutable = CFRetain(v9);
  }

  v20 = CGImageMetadataCreateFromXMPData(Mutable);
  v21 = v20;
  if (!v20 || (v22 = CGImageMetadataCopyTags(v20)) == 0)
  {
    v31 = 0;
    v26 = 0;
    v45 = 0;
    v47 = 0;
    OUTLINED_FUNCTION_2_13();
    v37 = 4294950194;
    goto LABEL_75;
  }

  v23 = v22;
  v39 = a3;
  v42 = Mutable;
  Count = CFArrayGetCount(v22);
  v25 = *v14;
  v26 = CFDictionaryCreateMutable(*v14, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v45 = v23;
  if (!v26 || (MutableCopy = CGImageMetadataCreateMutableCopy(v21)) == 0)
  {
    v31 = 0;
    v47 = 0;
    OUTLINED_FUNCTION_2_13();
    v37 = 4294950305;
    Mutable = v42;
    goto LABEL_75;
  }

  v46 = MutableCopy;
  theDict = v26;
  if (Count < 1)
  {
    v47 = 0;
LABEL_48:
    v31 = v46;
    if (a5 && !v47)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_3();
      v37 = FigSignalErrorAtGM();
      v47 = 0;
      OUTLINED_FUNCTION_2_13();
      Mutable = v42;
      v26 = theDict;
      goto LABEL_75;
    }

    Mutable = v42;
    v26 = theDict;
    if (!v47)
    {
LABEL_68:
      if (a6)
      {
        v34 = CFDictionaryGetCount(theDict);
        v35 = a4;
        if (v34 >= 1)
        {
          *a6 = theDict;
          v26 = 0;
        }

        if (!a4)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v35 = a4;
        if (!a4)
        {
LABEL_73:
          OUTLINED_FUNCTION_2_13();
          v37 = 0;
          if (v39)
          {
            LODWORD(v39->isa) = v36;
          }

          goto LABEL_75;
        }
      }

      *v35 = v46;
      v31 = 0;
      goto LABEL_73;
    }

    if (CFStringCompare(v47, @"disparity", 0))
    {
      if (CFStringCompare(v47, @"depth", 0))
      {
        if (CFStringCompare(v47, @"alpha", 0))
        {
          if (CFStringCompare(v47, @"portraiteffectsmatte", 0))
          {
            URNFromAuxiliaryImageType = 0;
            goto LABEL_62;
          }

          v32 = 5;
        }

        else
        {
          v32 = 3;
        }
      }

      else
      {
        v32 = 2;
      }
    }

    else
    {
      v32 = 1;
    }

    URNFromAuxiliaryImageType = CMPhotoCreateURNFromAuxiliaryImageType(v32);
LABEL_62:
    if (a5)
    {
      if (!URNFromAuxiliaryImageType)
      {
        URNFromAuxiliaryImageType = CFRetain(v47);
      }

      *a5 = URNFromAuxiliaryImageType;
    }

    else if (URNFromAuxiliaryImageType)
    {
      CFRelease(URNFromAuxiliaryImageType);
    }

    goto LABEL_68;
  }

  v28 = 0;
  v47 = 0;
  while (1)
  {
    Length = CFArrayGetValueAtIndex(v23, v28);
    v29 = CGImageMetadataTagCopyNamespace(Length);
    if (v29)
    {
      break;
    }

LABEL_44:
    if (Count == ++v28)
    {
      goto LABEL_48;
    }
  }

  a3 = v29;
  v10 = CGImageMetadataTagCopyName(Length);
  if (!v10)
  {
    goto LABEL_100;
  }

  if (FigCFEqual())
  {
    v30 = OUTLINED_FUNCTION_30_1();
    if (v30)
    {
      goto LABEL_101;
    }

    if (FigCFEqual() || FigCFEqual())
    {
LABEL_100:
      v7 = 0;
      Length = 0;
      v37 = 4294950194;
      goto LABEL_104;
    }

    CFDictionaryAddValue(theDict, v10, 0);
  }

  else
  {
    if (!FigCFEqual())
    {
      if (!v47)
      {
        if (FigCFEqual())
        {
          v47 = CFRetain(a3);
        }

        else
        {
          v47 = 0;
        }
      }

      goto LABEL_43;
    }

    v30 = OUTLINED_FUNCTION_30_1();
    if (v30)
    {
LABEL_101:
      v37 = v30;
      v7 = 0;
      Length = 0;
      goto LABEL_104;
    }

    if (FigCFEqual())
    {
      goto LABEL_100;
    }
  }

  v7 = CGImageMetadataTagCopyPrefix(Length);
  Length = CFStringCreateWithFormat(v25, 0, @"%@:%@", v7, v10);
  if (!Length)
  {
    v37 = 4294950305;
    goto LABEL_104;
  }

  if (CGImageMetadataRemoveTagWithPath(v46, 0, Length))
  {
    if (v7)
    {
      CFRelease(v7);
    }

    CFRelease(Length);
    v23 = v45;
LABEL_43:
    CFRelease(a3);
    CFRelease(v10);
    goto LABEL_44;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_3();
  v37 = FigSignalErrorAtGM();
LABEL_104:
  Mutable = v42;
  v26 = theDict;
  v31 = v46;
LABEL_75:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (Length)
  {
    CFRelease(Length);
  }

  v9 = v45;
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_85:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  return v37;
}

uint64_t CMPhotoMetadataCreateCFNumberFormatter(const __CFAllocator *a1, CFNumberFormatterStyle a2, CFNumberFormatterRef *a3)
{
  if (!a3)
  {
    return 0;
  }

  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(a1, @"en_US");
  if (!CanonicalLocaleIdentifierFromString)
  {
    return 4294950305;
  }

  v7 = CanonicalLocaleIdentifierFromString;
  v8 = CFLocaleCreate(a1, CanonicalLocaleIdentifierFromString);
  if (v8)
  {
    v9 = v8;
    v10 = CFNumberFormatterCreate(a1, v8, a2);
    if (v10)
    {
      v11 = 0;
      *a3 = v10;
    }

    else
    {
      v11 = 4294950305;
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 4294950305;
  }

  CFRelease(v7);
  return v11;
}

uint64_t OUTLINED_FUNCTION_30_1()
{
  v3 = *(v1 - 96);

  return CMPhotoCopyMetadataTagValue(v0, v3, 0, (v1 - 104));
}

uint64_t CMPhotoCopyMetadataTagValue(CGImageMetadataTag *a1, __CFNumberFormatter *a2, CFStringRef *a3, __CFArray **a4)
{
  v44 = 0;
  v8 = CGImageMetadataTagCopyValue(a1);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_62;
  }

  v10 = CFGetTypeID(v8);
  if (v10 != CFDictionaryGetTypeID())
  {
    v14 = CFGetTypeID(v9);
    if (v14 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v9);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        v30 = 4294950305;
        goto LABEL_56;
      }

      v17 = Mutable;
      if (Count >= 1)
      {
        v18 = 0;
        while (1)
        {
          value.location = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v18);
          v20 = CMPhotoCopyMetadataTagValue(ValueAtIndex, a2, 0, &value);
          if (v20)
          {
            break;
          }

          CFArrayAppendValue(v17, value.location);
          if (value.location)
          {
            CFRelease(value.location);
          }

          if (Count == ++v18)
          {
            goto LABEL_13;
          }
        }

        v30 = v20;
        v37 = v17;
        goto LABEL_54;
      }

      goto LABEL_37;
    }

    v21 = CFGetTypeID(v9);
    if (v21 == CFStringGetTypeID())
    {
      if (a2)
      {
        Length = CFStringGetLength(v9);
        value.location = 0;
        value.length = Length;
        v23 = CFNumberFormatterCreateNumberFromString(*MEMORY[0x1E695E480], a2, v9, &value, 0);
        v17 = v23;
        if ((value.location || value.length != Length) && v23)
        {
          CFRelease(v23);
          v17 = 0;
        }
      }

      else
      {
        CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
        __endptr = 0;
        value.location = 0;
        v41 = strtod(CStringPtrAndBufferToFree, &value);
        v40 = strtol(CStringPtrAndBufferToFree, &__endptr, 0);
        v32 = &CStringPtrAndBufferToFree[strlen(CStringPtrAndBufferToFree)];
        if (v32 == value.location || (v17 = 0, v32 == __endptr))
        {
          if (__endptr >= value.location)
          {
            v33 = &v40;
            v34 = kCFNumberLongType;
          }

          else
          {
            v33 = &v41;
            v34 = kCFNumberDoubleType;
          }

          v17 = CFNumberCreate(0, v34, v33);
        }
      }

      if (v17)
      {
LABEL_37:
        v12 = 0;
        goto LABEL_38;
      }

      if (CFStringCompare(v9, @"True", 1uLL))
      {
        if (CFStringCompare(v9, @"False", 1uLL))
        {
          v35 = 0;
          v12 = 0;
          v17 = v9;
          if (a4)
          {
LABEL_39:
            v29 = 0;
            *a4 = v17;
            if (a3)
            {
              goto LABEL_40;
            }

            goto LABEL_46;
          }

LABEL_45:
          v29 = v17;
          if (a3)
          {
LABEL_40:
            v36 = CGImageMetadataTagCopyName(a1);
            v17 = 0;
            if (v36)
            {
              v30 = 0;
              *a3 = v36;
            }

            else
            {
              v30 = 4294950194;
            }

            goto LABEL_47;
          }

LABEL_46:
          v17 = 0;
          v30 = 0;
LABEL_47:
          v9 = v35;
          goto LABEL_48;
        }

        v39 = MEMORY[0x1E695E4C0];
      }

      else
      {
        v39 = MEMORY[0x1E695E4D0];
      }

      if (*v39)
      {
        v17 = CFRetain(*v39);
LABEL_13:
        v12 = 0;
LABEL_28:
        if (!v17)
        {
          v29 = 0;
          v30 = 4294950194;
          goto LABEL_48;
        }

        goto LABEL_38;
      }
    }

LABEL_62:
    free(v44);
    v30 = 4294950194;
    if (!v9)
    {
      return v30;
    }

    goto LABEL_56;
  }

  v11 = FigCFDictionaryCopyArrayOfKeys();
  v12 = v11;
  if (v11)
  {
    v13 = CFArrayGetCount(v11);
  }

  else
  {
    v13 = 0;
  }

  v17 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v17)
  {
    v29 = 0;
    v30 = 4294950305;
    goto LABEL_48;
  }

  if (v13 < 1)
  {
LABEL_38:
    v35 = v9;
    if (a4)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  v24 = 0;
  while (1)
  {
    value.location = 0;
    v25 = CFArrayGetValueAtIndex(v12, v24);
    v26 = CFDictionaryGetValue(v9, v25);
    v27 = CMPhotoCopyMetadataTagValue(v26, a2, 0, &value);
    if (v27)
    {
      break;
    }

    v28 = CFArrayGetValueAtIndex(v12, v24);
    CFDictionaryAddValue(v17, v28, value.location);
    if (value.location)
    {
      CFRelease(value.location);
    }

    if (v13 == ++v24)
    {
      goto LABEL_28;
    }
  }

  v30 = v27;
  v29 = 0;
LABEL_48:
  free(v44);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v29)
  {
    v37 = v29;
LABEL_54:
    CFRelease(v37);
  }

  if (v9)
  {
LABEL_56:
    CFRelease(v9);
  }

  return v30;
}

BOOL ___parseAuxImage_block_invoke(uint64_t a1, int a2, CGImageMetadataTagRef tag)
{
  v4 = CGImageMetadataTagCopyNamespace(tag);
  v5 = FigCFEqual();
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5 == 0;
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, a2, 3, 3uLL, a5);
}

uint64_t CMPhotoDecompressionContainerCheckHDROutputMode(__CVBuffer *a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  v2 = a2 - 2;
  if (a2 < 2)
  {
    return 0;
  }

  if (CMPhotoPixelBufferIsHLG(a1))
  {
    if (v2 < 4)
    {
      v5 = &unk_1A5ABB810;
      return v5[v2];
    }
  }

  else if (CMPhotoPixelBufferIsPQ(a1))
  {
    if (v2 < 4)
    {
      v5 = &unk_1A5ABB820;
      return v5[v2];
    }
  }

  else if (CMPhotoPixelBufferIsLinear(a1) || CMPhotoPixelBufferIsExtendedLinear(a1))
  {
    if (v2 < 4)
    {
      v5 = &unk_1A5ABB7F8;
      return v5[v2];
    }
  }

  else if (v2 <= 3)
  {
    v5 = &unk_1A5ABB830;
    return v5[v2];
  }

  return 4294950306;
}

uint64_t CMPhotoCreateWrappedPixelBufferForType(int a1, CVPixelBufferRef pixelBuffer, uint64_t a3, int a4, CGImageRef *a5)
{
  if (!a5)
  {
    return 0;
  }

  v6 = pixelBuffer;
  v7 = 4294950306;
  switch(a4)
  {
    case 0:
      return v7;
    case 1:
      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      if (IOSurface)
      {
        v6 = IOSurface;
        IOSurfaceIncrementUseCount(IOSurface);
LABEL_6:
        v9 = CFRetain(v6);
LABEL_7:
        v7 = 0;
        *a5 = v9;
      }

      else
      {
        v7 = 4294950304;
      }

      break;
    case 2:
      if (pixelBuffer)
      {
        goto LABEL_6;
      }

      v9 = 0;
      goto LABEL_7;
    case 3:
      v10 = OUTLINED_FUNCTION_68();
      v13 = CMVideoFormatDescriptionCreateForImageBuffer(v10, v11, v12);
      if (v13)
      {
        return v13;
      }

      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_42();
      v7 = CMSampleBufferCreateForImageBuffer(v14, v15, v16, v17, v18, v19, v20, v21);
      if (!v7)
      {
        *a5 = 0;
        return v13;
      }

      return v7;
    case 4:
      v23 = OUTLINED_FUNCTION_68();

      return CMPhotoCreateCGImageWithPixelBuffer(v23, v24, v25, a5);
    default:
      return 4294950302;
  }

  return v7;
}

void _releaseAuxImageStorage(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
      a1[4] = 0;
    }

    v3 = a1[6];
    if (v3)
    {
      CFRelease(v3);
      a1[6] = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      CFRelease(v4);
      a1[5] = 0;
    }

    v5 = a1[10];
    if (v5)
    {
      CFRelease(v5);
      a1[10] = 0;
    }

    v6 = a1[11];
    if (v6)
    {
      CFRelease(v6);
      a1[11] = 0;
    }

    v7 = a1[12];
    if (v7)
    {
      CFRelease(v7);
      a1[12] = 0;
    }
  }
}

double CMPhotoGetCropRectFromCLAPDict(const __CFDictionary *a1, double a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_28;
  }

  v5 = *MEMORY[0x1E6960110];
  if (!CFDictionaryContainsKey(a1, *MEMORY[0x1E6960110]) || (v6 = *MEMORY[0x1E69600F8], !CFDictionaryContainsKey(a1, *MEMORY[0x1E69600F8])) || (v7 = *MEMORY[0x1E6960100], !CFDictionaryContainsKey(a1, *MEMORY[0x1E6960100])) || (v8 = *MEMORY[0x1E6960108], !CFDictionaryContainsKey(a1, *MEMORY[0x1E6960108])))
  {
    CMPhotoCFDictionaryGetDoubleIfPresent();
    CMPhotoCFDictionaryGetDoubleIfPresent();
    CMPhotoCFDictionaryGetDoubleIfPresent();
    CMPhotoCFDictionaryGetDoubleIfPresent();
    v21 = 0.0;
    v3 = a2;
    return round(v21 + (a2 - v3) * 0.5);
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFArrayGetTypeID()) || CFArrayGetCount(v10) != 2 || !FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || (v12 = CFDictionaryGetValue(a1, v6)) == 0 || (v13 = v12, v14 = CFGetTypeID(v12), v14 != CFArrayGetTypeID()) || CFArrayGetCount(v13) != 2 || !FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || (v15 = CFDictionaryGetValue(a1, v7)) == 0 || (v16 = v15, v17 = CFGetTypeID(v15), v17 != CFArrayGetTypeID()) || CFArrayGetCount(v16) != 2 || !FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex() || (v18 = CFDictionaryGetValue(a1, v8)) == 0 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFArrayGetTypeID()) || CFArrayGetCount(v19) != 2 || !FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex())
  {
LABEL_28:
    v21 = 0.0;
    return round(v21 + (a2 - v3) * 0.5);
  }

  v3 = 0 / 1;
  v21 = v3;
  return round(v21 + (a2 - v3) * 0.5);
}

uint64_t _getImageGeometryForIndex(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v12 = a2;
  if (!a4 && !a5 && !a6)
  {
    return 0;
  }

  result = _checkImageIndex(a1 + 40, &v12, 0);
  if (!result)
  {
    result = _parseImageSizeAndTypeIfNeeded();
    if (!result)
    {
      v11 = *(a1 + 120);
      if (a4)
      {
        *a4 = *(a1 + 112);
      }

      if (a5)
      {
        *a5 = v11;
      }

      if (!a6)
      {
        return 0;
      }

      result = _parseExifIfNeeded(a1 + 40, 0);
      if (!result)
      {
        *a6 = *(a1 + 312);
      }
    }
  }

  return result;
}

uint64_t _getImageGeometryForIndex_0(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  if (!a4 && !a5 && !a6)
  {
    return 0;
  }

  if (!a2)
  {
    if (a4)
    {
      *a4 = a1[22];
    }

    if (a5)
    {
      *a5 = a1[23];
    }

    if (a6)
    {
      *a6 = a1[33];
    }

    return 0;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _getImageGeometryForIndex_1()
{
  OUTLINED_FUNCTION_52_0();
  v3 = v2;
  v5 = v4;
  cf = 0;
  v15 = 0;
  v16 = 1;
  v13 = 0u;
  v14 = 0u;
  if (!v2 && !v1 && !v0)
  {
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v11 = 4294954514;
    goto LABEL_21;
  }

  v6 = OUTLINED_FUNCTION_60_0();
  ItemTypeFromReader = v7(v6);
  if (ItemTypeFromReader)
  {
    goto LABEL_25;
  }

  ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(cf, &v15);
  if (ItemTypeFromReader)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_28_3();
  if (!v10)
  {
    ItemTypeFromReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v9, *(v5 + 28), &v13, 0);
    if (ItemTypeFromReader)
    {
      goto LABEL_25;
    }

    if (v0)
    {
      ItemTypeFromReader = _getImageOrientation(v5, cf, 0, &v16);
      if (ItemTypeFromReader)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_14;
  }

  ItemTypeFromReader = CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(v9, 0, &v13, &v16);
  if (!ItemTypeFromReader)
  {
LABEL_14:
    if (v3)
    {
      *v3 = v14;
    }

    if (v1)
    {
      *v1 = *(&v14 + 1);
    }

    if (v0)
    {
      v11 = 0;
      *v0 = v16;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_25:
  v11 = ItemTypeFromReader;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t _getImageGeometryForIndex_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  if (!a4 && !a5 && !a6)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  result = _getImageGeometryFromTrackReader(*(*(a1 + 80) + 8), &v10);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    *a5 = *(&v11 + 1);
  }

  if (!a6)
  {
    return 0;
  }

  result = 0;
  *a6 = 1;
  return result;
}

uint64_t _getImageGeometryForIndex_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  if (a4 || a5 || a6)
  {
    return DicomGetImageGeometryForIndex(*(a1 + 112), 0, a2, a4, a5, a6);
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_119(uint64_t a1, const void *a2)
{
  v5 = *v3;

  CFDictionaryAddValue(v2, a2, v5);
}

uint64_t CMPhotoPictureReaderGetImageGeometryFromPictureReader(const void *a1, int a2, unint64_t a3, unint64_t a4)
{
  size.height = 0.0;
  dict = 0;
  size.width = 0.0;
  if (!(a3 | a4))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
LABEL_36:
    v11 = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  v8 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10(FigBaseObject, *MEMORY[0x1E6972358], v8, &dict);
  if (v11)
  {
LABEL_37:
    v16 = v11;
    goto LABEL_15;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(dict, &size) || size.width <= 0.0 || size.height <= 0.0)
  {
    goto LABEL_35;
  }

  if (dict)
  {
    CFRelease(dict);
    dict = 0;
  }

  v12 = CFGetAllocator(a1);
  v13 = FigPictureReaderGetFigBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
LABEL_14:
    v16 = 4294954514;
    goto LABEL_15;
  }

  v15 = v14(v13, *MEMORY[0x1E6965D70], v12, &dict);
  if (v15)
  {
    v16 = v15;
    if (v15 != -12783)
    {
      goto LABEL_15;
    }
  }

  width = size.width;
  if (dict)
  {
    v21.f64[0] = CMPhotoGetCropRectFromCLAPDict(dict, size.width);
    width = size.width;
    height = size.height;
  }

  else
  {
    height = size.height;
    v21.f64[0] = 0.0;
    v18 = 0.0;
    v19 = size.width;
    v20 = size.height;
  }

  if (v21.f64[0] < 0.0 || v19 <= 0.0 || v18 < 0.0 || v20 <= 0.0)
  {
    goto LABEL_35;
  }

  v24 = v21.f64[0] + v19;
  v25 = v18 + v20;
  if (a2)
  {
    if (v24 > width)
    {
      v19 = width - v21.f64[0];
    }

    if (v25 > height)
    {
      v20 = height - v18;
    }

    goto LABEL_30;
  }

  if (v24 > width || v25 > height)
  {
LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    goto LABEL_36;
  }

LABEL_30:
  if (a3)
  {
    v21.f64[1] = v18;
    *a3 = vcvtq_u64_f64(vrndaq_f64(v21));
    *(a3 + 16) = vcvtad_u64_f64(v19);
    *(a3 + 24) = vcvtad_u64_f64(v20);
  }

  v16 = 0;
  if (a4)
  {
    *a4 = vcvtad_u64_f64(width);
    *(a4 + 8) = vcvtad_u64_f64(height);
  }

LABEL_15:
  if (dict)
  {
    CFRelease(dict);
  }

  return v16;
}

uint64_t CMPhotoPictureReaderCopyImageBitDepth(const void *a1, CFTypeRef *a2)
{
  cf = 0;
  v21 = 0;
  v19 = 0;
  v18 = 0;
  v22 = 0;
  v4 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(FigBaseObject, *MEMORY[0x1E6972360], v4, &v22);
    if (!v7)
    {
      v21 = v22;
      v8 = v22 == 0;
      goto LABEL_6;
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v7 == -12783)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  v8 = 1;
  if (v7 != -16993)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_19:
  FourCCPropertyFromReader = _getFourCCPropertyFromReader(a1, *MEMORY[0x1E6972320], &v18);
  if (FourCCPropertyFromReader)
  {
    goto LABEL_42;
  }

  if (v18 != 1735551332 && v18 != 1768187246 && v18 != 1953325424 && v18 != 1768912492)
  {
    goto LABEL_30;
  }

  FourCCPropertyFromReader = CMPhotoPictureReaderCopyBaseReader(a1, v18, &v19);
  if (FourCCPropertyFromReader)
  {
    goto LABEL_42;
  }

  FourCCPropertyFromReader = CMPhotoPictureReaderCopyImageBitDepth(v19, &v21);
  if (FourCCPropertyFromReader)
  {
    goto LABEL_42;
  }

  if (!v21)
  {
LABEL_30:
    v14 = CFGetAllocator(a1);
    v15 = FigPictureReaderGetFigBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v16)
    {
      v7 = 4294954514;
      goto LABEL_9;
    }

    FourCCPropertyFromReader = v16(v15, *MEMORY[0x1E69722F8], v14, &cf);
    if (!FourCCPropertyFromReader)
    {
      if (CMFormatDescriptionGetMediaSubType(cf) == 1785750887)
      {
        v17 = CMPhotoPictureReaderCopyImageBitDepthForJPEG(a1, &v21);
      }

      else
      {
        v17 = CMPhotoCopyImageBitDepthFromFormatDescription(cf, &v21);
      }

      v7 = v17;
      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_42:
    v7 = FourCCPropertyFromReader;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_7:
  if (a2)
  {
    *a2 = v21;
    v21 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v7;
}

uint64_t _getImageOrientation(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_54_0();
  v8 = v7;
  v23 = 0;
  v22 = 1;
  result = CMPhotoPictureReaderGetHEIFOrientation(v5, &v23, &v22);
  if (!result)
  {
    if ((_checkForInterestingBrands(v8) || !v8[163]) && (_checkForInterestingBrands(v8) || !v8[164]))
    {
      LODWORD(v29) = 0;
      result = CMPhotoPictureReaderGetItemTypeFromReader(v5, &v29);
      if (result)
      {
        return result;
      }

      OUTLINED_FUNCTION_7_13();
      if (!v10)
      {
        if (!v8[165])
        {
          v29 = 0;
          cmpweak_kFigPictureCollectionProperty_SourceSpecifiesOrientation();
          FigPictureCollectionGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v11 = OUTLINED_FUNCTION_89_0();
            if (!v12(v11))
            {
              v8[166] = CMPhotoCFBooleanGetValue(v29);
            }
          }

          v8[165] = 1;
        }

        if (!v8[166])
        {
          v13 = v23;
          if (v4 && !v23)
          {
            LODWORD(v29) = 0;
            result = CMPhotoPictureReaderGetHEIFOrientation(v4, &v23, &v29);
            if (result)
            {
              return result;
            }

            v13 = v23;
          }

          if (!v13)
          {
            if (!v4)
            {
              v4 = v5;
            }

            v14 = CFGetAllocator(v4);
            v30 = 0;
            v28 = 0;
            v29 = 0;
            theBuffer = 0;
            v27 = 0;
            v24 = 0;
            cf = 0;
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (v15 && !v15(v4, &v24) && v24 >= 1)
            {
              for (i = 0; i < v24; ++i)
              {
                if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
                {
                  break;
                }

                v17 = OUTLINED_FUNCTION_72();
                if (v18(v17) || !cf || CMPhotoPictureReaderCreateContiguousBlockBufferFromChunks(v14, v29, v28, v27, cf, 0, 0, &theBuffer))
                {
                  break;
                }

                DataLength = CMBlockBufferGetDataLength(theBuffer);
                if (DataLength < v30)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_19();
                  FigSignalErrorAtGM();
                  break;
                }

                if (CMPhotoParseExifOrientationFromTIFF(theBuffer, v30, DataLength - v30, &v22))
                {
                  v23 = 1;
                  break;
                }

                v20 = v28;
                if (v28)
                {
                  v28 = 0;
                  free(v20);
                }

                v21 = v27;
                if (v27)
                {
                  v27 = 0;
                  free(v21);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (theBuffer)
                {
                  CFRelease(theBuffer);
                  theBuffer = 0;
                }
              }
            }

            free(v28);
            free(v27);
            if (cf)
            {
              CFRelease(cf);
            }

            if (theBuffer)
            {
              CFRelease(theBuffer);
            }
          }
        }
      }
    }

    result = 0;
    *a4 = v22;
  }

  return result;
}

uint64_t _getPrimaryIndex(uint64_t a1, void *a2)
{
  if (a2 && *(a1 + 48))
  {
    cf = 0;
    v3 = *(a1 + 40);
    CMBaseObject = FigPictureCollectionGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(CMBaseObject, *MEMORY[0x1E6972190], v3, &cf);
      v7 = cf;
      if (v6)
      {
        Int32 = 0;
      }

      else
      {
        Int32 = CMPhotoCFNumberGetInt32(cf);
        v7 = cf;
      }

      *a2 = Int32;
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  return 0;
}

uint64_t CMPhotoDecompressionContainerGetImageCountWithOptions(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a3)
  {
    return CMPhotoQualityControllerNeedsImageAnalysis();
  }

  result = 0;
  *a3 = *(a1 + 592);
  return result;
}

uint64_t _checkForInterestingBrands(uint64_t a1)
{
  theArray = 0;
  if (*(a1 + 162))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  CMBaseObject = FigPictureCollectionGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, *MEMORY[0x1E6972178], v3, &theArray);
    if (v6)
    {
      v1 = v6;
    }

    else
    {
      for (i = 0; ; ++i)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (i >= Count)
        {
          break;
        }

        FigCFArrayGetInt32AtIndex();
      }

      v1 = 0;
      *(a1 + 162) = 1;
    }
  }

  else
  {
    v1 = 4294954514;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_67_1(__int16 *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{

  return _ifdAddTag4(&a21, 700, 1, v21, __src);
}

uint64_t CMPhotoCopyTripletsFromVUIInsideFormatDescription(const opaqueCMFormatDescription *a1, void *a2, void *a3, void *a4)
{
  if (!a1)
  {
    v10 = 0;
    goto LABEL_7;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  v8 = Extension;
  if (!Extension)
  {
    v10 = 0;
LABEL_9:
    StringForIntegerCodePoint = 0;
    v14 = 0;
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(Extension, @"hvcC");
  v10 = CFDictionaryGetValue(v8, @"avcC");
  CFDictionaryGetValue(v8, @"slmC");
  if (Value)
  {
    HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
    if (!HEVCParameterSetAtIndex)
    {
      SPS_VUI_NCLC = FigHEVCBridge_GetSPS_VUI_NCLC();
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  CFDataGetBytePtr(v10);
  CFDataGetLength(v10);
  HEVCParameterSetAtIndex = FigH264Bridge_GetSPSFromAVCC();
  if (!HEVCParameterSetAtIndex)
  {
    SPS_VUI_NCLC = FigH264Bridge_GetSPS_VUI_NCLC();
LABEL_15:
    v14 = SPS_VUI_NCLC;
    if (!SPS_VUI_NCLC)
    {
      StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(0);
      v8 = CVTransferFunctionGetStringForIntegerCodePoint(0);
      v10 = CMPhotoCVYCbCrMatrixGetStringForIntegerCodePoint(0);
      if (!a2)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  v14 = HEVCParameterSetAtIndex;
LABEL_16:
  v10 = 0;
  v8 = 0;
  StringForIntegerCodePoint = 0;
  if (!a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (StringForIntegerCodePoint)
  {
    v15 = CFRetain(StringForIntegerCodePoint);
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
LABEL_21:
  if (a3)
  {
    if (v8)
    {
      v16 = CFRetain(v8);
    }

    else
    {
      v16 = 0;
    }

    *a3 = v16;
  }

  if (a4)
  {
    if (v10)
    {
      v17 = CFRetain(v10);
    }

    else
    {
      v17 = 0;
    }

    *a4 = v17;
  }

  return v14;
}

uint64_t RegisterCMPhotoCodecSessionPool()
{
  sCMPhotoCodecSessionPoolClass = 0;
  unk_1ED6FA500 = "CMPhotoCodecSessionPool";
  qword_1ED6FA508 = CMPhotoCodecSessionPoolClass_Init;
  unk_1ED6FA510 = 0;
  qword_1ED6FA520 = 0;
  unk_1ED6FA528 = 0;
  qword_1ED6FA518 = CMPhotoCodecSessionPoolClass_Finalize;
  qword_1ED6FA530 = CMPhotoCodecSessionPoolClass_CopyFormattingDesc;
  qword_1ED6FA538 = CMPhotoCodecSessionPool_CopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sCMPhotoCodecSessionPoolTypeID = result;
  return result;
}

double CMPhotoCodecSessionPoolClass_Init(_OWORD *a1)
{
  result = 0.0;
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

uint64_t _getScaledEvenCropRect@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 == a4 && a3 == a5)
  {
    v6 = *(result + 16);
    *a6 = *result;
    *(a6 + 16) = v6;
  }

  else
  {
    v7 = (a4 << 16) / a2;
    v8 = *(result + 8);
    v9 = *(result + 24) + v8;
    v10 = (a5 << 16) / a3;
    v11 = ((*result * v7 + 0x10000) >> 16) & 0xFFFFFFFFFFFELL;
    v12 = ((v8 * v10 + 0x10000) >> 16) & 0xFFFFFFFFFFFELL;
    v13 = (((*(result + 16) + *result) * v7 + 0x10000) >> 16) & 0xFFFFFFFFFFFELL;
    v14 = ((v9 * v10 + 0x10000) >> 16) & 0xFFFFFFFFFFFELL;
    *a6 = v11;
    *(a6 + 8) = v12;
    v15 = v13 - v11;
    *(a6 + 16) = v15;
    *(a6 + 24) = v14 - v12;
    if (!v15)
    {
      *(a6 + 16) = 2;
    }

    if (v14 == v12)
    {
      *(a6 + 24) = 2;
    }
  }

  return result;
}

uint64_t CMPhotoCodecSessionPoolCreate(const void *a1, uint64_t a2, uint64_t *a3)
{
  pthread_once(&CMPhotoCodecSessionPoolGetTypeID_onceToken, RegisterCMPhotoCodecSessionPool);
  if (!a3)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294950305;
  }

  v7 = Instance;
  v8 = 10000000000;
  if (a2)
  {
    v25[5] = 0;
    v9 = CMPhotoCFDictionaryGetInt64IfPresent() != 0;
    if (v9)
    {
      v8 = -1;
    }

    if (CMPhotoCFDictionaryGetInt64IfPresent())
    {
      v10 = -1;
    }

    else
    {
      v10 = 8;
    }

    if (CMPhotoCFDictionaryGetInt64IfPresent())
    {
      v11 = -1;
    }

    else
    {
      v11 = 16;
    }
  }

  else
  {
    v9 = 0;
    v11 = 16;
    v10 = 8;
  }

  v12 = FigSimpleMutexCreate();
  *(v7 + 24) = v12;
  if (!v12)
  {
    goto LABEL_27;
  }

  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  v13 = CodecSessionPool_Init(a1, (v7 + 48));
  if (v13 || (v13 = CodecSessionPool_Init(a1, (v7 + 88)), v13))
  {
    v23 = v13;
    goto LABEL_29;
  }

  v14 = dispatch_semaphore_create(0);
  *(v7 + 168) = v14;
  if (!v14 || (v15 = dispatch_queue_create("com.apple.coremedia.photo.codecsessionpool-eventqueue", 0), (*(v7 + 144) = v15) == 0) || (v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v15), (*(v7 + 136) = v16) == 0))
  {
LABEL_27:
    v23 = 4294950305;
LABEL_29:
    CFRelease(v7);
    return v23;
  }

  dispatch_set_context(v16, v7);
  dispatch_source_set_event_handler_f(*(v7 + 136), CMPhotoCodecSessionPool_CleanupTimerHandler);
  dispatch_source_set_cancel_handler_f(*(v7 + 136), CMPhotoCodecSessionPool_CleanupTimerCanceled);
  if (v8 == -1)
  {
    v19 = -1;
    v20 = -1;
    v21 = 0;
  }

  else
  {
    v17 = +[CMPhotoProcessMonitor isForegroundApp];
    v18 = v17 | +[CMPhotoProcessMonitor isCameraCaptured];
    if ((v9 | (v18 | +[CMPhotoProcessMonitor isDeferredMediad])))
    {
      v19 = v8;
    }

    else
    {
      v19 = 1000000000;
    }

    *(v7 + 176) = +[CMPhotoProcessMonitor getShared];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __CMPhotoCodecSessionPoolCreate_block_invoke;
    v25[3] = &__block_descriptor_40_e5_v8__0l;
    v25[4] = v7;
    *(v7 + 184) = [v25 copy];
    v20 = 0;
    v21 = v19;
  }

  v22 = dispatch_time(v20, v21);
  dispatch_source_set_timer(*(v7 + 136), v22, v19, v19 >> 3);
  v23 = 0;
  *(v7 + 128) = 1;
  *(v7 + 152) = v19;
  *a3 = v7;
  return v23;
}

uint64_t CodecSessionPool_Init(CFTypeRef cf, void *a2)
{
  if (cf)
  {
    cf = CFRetain(cf);
  }

  *a2 = cf;
  v3 = OUTLINED_FUNCTION_17();
  Mutable = CFArrayCreateMutable(v3, v4, v5);
  a2[1] = Mutable;
  if (!Mutable)
  {
    return 4294950305;
  }

  v7 = OUTLINED_FUNCTION_17();
  v11 = CFDictionaryCreateMutable(v7, v8, v9, v10);
  a2[2] = v11;
  if (!v11)
  {
    return 4294950305;
  }

  v12 = OUTLINED_FUNCTION_17();
  v15 = CFDictionaryCreateMutable(v12, v13, v14, 0);
  a2[3] = v15;
  if (!v15)
  {
    return 4294950305;
  }

  v16 = OUTLINED_FUNCTION_17();
  v18 = CFArrayCreateMutable(v16, v17, 0);
  a2[4] = v18;
  if (v18)
  {
    return 0;
  }

  else
  {
    return 4294950305;
  }
}

__SecTask *_currentProcessIsOfIdentifier(uint64_t a1)
{
  result = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (result)
  {
    v3 = result;
    v4 = SecTaskCopySigningIdentifier(result, 0);
    v5 = [(__CFString *)v4 isEqualToString:a1];

    CFRelease(v3);
    return v5;
  }

  return result;
}

uint64_t CMPhotoIsTileDecoderAvailable(int a1)
{
  switch(a1)
  {
    case 1635135537:
      if (CMPhotoIsTileDecoderAvailable_onceTokenAV1 != -1)
      {
        CMPhotoIsTileDecoderAvailable_cold_1();
      }

      return sTileDecodersAvailable_2;
    case 1752589105:
      if (CMPhotoIsTileDecoderAvailable_onceTokenHEVC != -1)
      {
        CMPhotoIsTileDecoderAvailable_cold_2();
      }

      return sTileDecodersAvailable_1;
    case 1635148593:
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __CMPhotoIsTileDecoderAvailable_block_invoke;
      block[3] = &__block_descriptor_36_e5_v8__0l;
      v3 = 1635148593;
      if (CMPhotoIsTileDecoderAvailable_onceTokenAVC != -1)
      {
        dispatch_once(&CMPhotoIsTileDecoderAvailable_onceTokenAVC, block);
      }

      return sTileDecodersAvailable_0;
    default:
      return 0;
  }
}

uint64_t VTTileDecompressionPluginClass_create()
{
  OUTLINED_FUNCTION_3_22();
  keys[2] = *MEMORY[0x1E69E9840];
  CMPhotoGetDecodeHighSpeedDefault();
  v5 = 4294950306;
  if (!v1 || !v2 || !v0)
  {
    return v5;
  }

  if (*(v1 + 72) == 1936484717)
  {
    return 4294950298;
  }

  v6 = OUTLINED_FUNCTION_1_22();
  if (!v6)
  {
    return 4294950305;
  }

  v7 = v6;
  v6[41] = 0;
  v6[24] = v4;
  *(v6 + 2) = CFRetain(v2);
  if (v3)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetInt32IfPresent();
  }

  v8 = *MEMORY[0x1E69841F8];
  keys[0] = *MEMORY[0x1E6984200];
  keys[1] = v8;
  values[0] = *MEMORY[0x1E695E4D0];
  values[1] = values[0];
  v9 = CFDictionaryCreate(*v1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    OUTLINED_FUNCTION_0_25();
    VTTileDecompressionPluginClass_dispose(v18);
    return 4294950305;
  }

  v10 = v9;
  v11 = *(v1 + 80);
  if (!v11 && ((OUTLINED_FUNCTION_2_23(), !v16) ? (v16 = v15 == 1902212657) : (v16 = 1), v16))
  {
    DecompressionSession = VTTileDecompressionSessionCreate();
    if (!DecompressionSession)
    {
LABEL_11:
      if (v7[24] || v7[25] || (v13 = FigDispatchQueueCreateWithPriority(), (*(v7 + 4) = v13) != 0))
      {
        v7[40] = 1;
        *(v1 + 64) = v7;
        CFRelease(v10);
        return 0;
      }

      v5 = 4294950305;
      goto LABEL_23;
    }
  }

  else
  {
    DecompressionSession = CMPhotoCodecSessionPoolCreateDecompressionSession(*(v1 + 24), 1u, v11, v2, v10, VTTileDecompressionPluginClass_VideoToolbox_callback, v1, v7 + 1, 0);
    if (!DecompressionSession)
    {
      goto LABEL_11;
    }
  }

  v5 = DecompressionSession;
LABEL_23:
  CFRelease(v10);
  OUTLINED_FUNCTION_0_25();
  VTTileDecompressionPluginClass_dispose(v17);
  if ((v5 | 2) == 0x44E)
  {
    return 4294951826;
  }

  return v5;
}

void _once_setDefaultPool()
{
  cf = 0;
  v0 = CMPhotoCodecSessionPoolCreate(*MEMORY[0x1E695E480], 0, &cf);
  v1 = cf;
  if (v0 || (v2 = 0, atomic_compare_exchange_strong_explicit(&defaultPool, &v2, cf, memory_order_relaxed, memory_order_relaxed), v2))
  {
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

void *OUTLINED_FUNCTION_11_4()
{

  return malloc_type_malloc(0x50uLL, 0x10A00405052DA9CuLL);
}

uint64_t OUTLINED_FUNCTION_11_6(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

void OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  bzero(va, 0x98uLL);
}

uint64_t CMPhotoSupportsHEVCHWDecode()
{
  v0 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (CMPhotoSupportsHEVCHWDecode_onceToken != -1)
  {
    CMPhotoSupportsHEVCHWDecode_cold_1();
  }

  if (*v0 == 1)
  {
    kdebug_trace();
  }

  return CMPhotoSupportsHEVCHWDecode_supported;
}

uint64_t FigPictureReaderGetThumbnailCount(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigPictureReaderGetAuxiliaryImageCount(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

void _copyColorInfoForImageTypeWithIndex(uint64_t a1, int a2, uint64_t a3, uint64_t a4, __CFDictionary *a5)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  cf = 0;
  if (!a5)
  {
    goto LABEL_19;
  }

  if (a2 == 2)
  {
    if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      goto LABEL_19;
    }

    v8 = OUTLINED_FUNCTION_60_0();
    if (v9(v8))
    {
      goto LABEL_19;
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      goto LABEL_19;
    }

    v10 = OUTLINED_FUNCTION_19_5();
    if (v11(v10))
    {
      goto LABEL_19;
    }
  }

  else if (a2 || !*(*(CMBaseObjectGetVTable() + 16) + 16) || (v6 = OUTLINED_FUNCTION_113(), v7(v6)))
  {
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_10_15();
  _copyColorInfoForItem(v12, v13, v14, v15, v16, v17, v18, v19, &cf, &v30, 0, 0, 0);
  if (v33)
  {
    v20 = CGColorSpaceCopyName(v33);
    if (v20)
    {
      v21 = v20;
      v22 = OUTLINED_FUNCTION_111();
      CFDictionarySetValue(v22, v23, v24);
      CFRelease(v21);
    }

    else if (v33)
    {
      CFDictionarySetValue(a5, @"ColorSpace", v33);
    }
  }

  if (!v32 && !cf && !v30)
  {
    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v25 = Mutable;
  if (Mutable)
  {
    if (v32)
    {
      CFDictionarySetValue(Mutable, @"ColorPrimaries", v32);
    }

    if (cf)
    {
      CFDictionarySetValue(v25, @"TransferFunction", cf);
    }

    if (v30)
    {
      CFDictionarySetValue(v25, @"YCbCrMatrix", v30);
    }

    v27 = OUTLINED_FUNCTION_111();
    CFDictionarySetValue(v27, v28, v29);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    FigSignalErrorAtGM();
  }

LABEL_20:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

uint64_t _verifyPixelInformationFromPictureReader(const void *a1, CFIndex *a2)
{
  theArray = 0;
  v3 = CFGetAllocator(a1);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v8 = 4294954514;
    goto LABEL_9;
  }

  v6 = v5(FigBaseObject, *MEMORY[0x1E6972360], v3, &theArray);
  if (v6 == -12783)
  {
    Count = 0;
  }

  else
  {
    v8 = v6;
    if (v6)
    {
      goto LABEL_9;
    }

    Count = CFArrayGetCount(theArray);
    if ((Count & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      _verifyPixelInformationFromPictureReader_cold_1(&v11);
      v8 = v11;
      goto LABEL_9;
    }
  }

  v8 = 0;
  if (a2)
  {
    *a2 = Count;
  }

LABEL_9:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v8;
}

const __CFDictionary *CMPhotoGetMatrixFromPixelBufferAttachments(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E6965F98]);
    if (FigCFEqual())
    {
      return *MEMORY[0x1E6965FC8];
    }

    else
    {
      return Value;
    }
  }

  return result;
}

CFStringRef CMPhotoCVYCbCrMatrixGetStringForIntegerCodePoint(int a1)
{
  if (a1 == 5)
  {
    v1 = MEMORY[0x1E6965FC8];
    return *v1;
  }

  if (!a1)
  {
    v1 = MEMORY[0x1E6965FE0];
    return *v1;
  }

  return CVYCbCrMatrixGetStringForIntegerCodePoint(a1);
}

void CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    v4 = v3;
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12 && (v2 || v1 || v4))
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v13 + 56))
      {
        v14 = OUTLINED_FUNCTION_6_15();
        v15(v14);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

uint64_t CMPhotoDecompressionContainerDetectSourceIsMIAF(uint64_t a1)
{
  if (a1)
  {
    v1 = *(*(a1 + 32) + 448);
    if (v1)
    {
      v2 = v1();
      LOBYTE(v1) = 0;
      if (v2)
      {
        LOBYTE(v1) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t _getSequenceCount(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t _getSequenceCount_0(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t _getSequenceCount_1(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t _getSequenceCount_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69();
  if (*(v4 + 120) || (result = OUTLINED_FUNCTION_116(), !result))
  {
    v6 = *(v3 + 128);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
    }

    else
    {
      Count = 0;
    }

    result = 0;
    *v2 = Count;
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerHEICS_GetSequenceInfoFromSource(const void *a1, CFMutableArrayRef *a2)
{
  cf = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = OUTLINED_FUNCTION_53();
  Mutable = CFArrayCreateMutable(v5, v6, v7);
  if (!Mutable)
  {
    return 4294950305;
  }

  v9 = Mutable;
  v29 = 0;
  if (!a1)
  {
    goto LABEL_16;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v10)
  {
    v11 = v10(a1, &v29);
    if (v11)
    {
LABEL_27:
      v25 = v11;
      goto LABEL_19;
    }

    FigBaseObject = FigFormatReaderGetFigBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(FigBaseObject, *MEMORY[0x1E6971AC0], v4, &cf);
    }

    if (v29 >= 1)
    {
      v14 = 0;
      do
      {
        v27 = 0;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v15)
        {
          goto LABEL_18;
        }

        v11 = v15(a1, v14, 0, &v27 + 4, &v27);
        if (v11)
        {
          goto LABEL_27;
        }

        if (HIDWORD(v27) == 1885954932)
        {
          v16 = OUTLINED_FUNCTION_53();
          v18 = CFDictionaryCreateMutable(v16, v17, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!v18)
          {
            v25 = 4294950305;
            goto LABEL_19;
          }

          v19 = v18;
          FigCFDictionarySetInt();
          CFDictionarySetValue(v19, @"FormatReader", a1);
          v20 = OUTLINED_FUNCTION_5_18();
          v24 = _addReferencesToItemInfo(v20, v21, v22, @"thmb", v23);
          if (v24)
          {
            v25 = v24;
            CFRelease(v19);
            goto LABEL_19;
          }

          CFRelease(v19);
        }
      }

      while (++v14 < v29);
    }

LABEL_16:
    v25 = 0;
    if (a2)
    {
      *a2 = v9;
      v9 = 0;
    }

    goto LABEL_19;
  }

LABEL_18:
  v25 = 4294954514;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v25;
}

uint64_t CMPhotoDecompressionContainerGetPrimaryItemIndexWithOptions(uint64_t a1, uint64_t a2, void *a3)
{
  result = 4294950306;
  if (a1)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a1 + 576);
    }
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerDecodeImageForIndexAsyncF(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_33_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v10, v11, v12, v13, v14, v15, v16);
  if (v17)
  {
    goto LABEL_9;
  }

  if (v1)
  {
    if (v5 && CFDictionaryContainsKey(v5, @"DryRun"))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3();
      v17 = FigSignalErrorAtGM();
      goto LABEL_9;
    }

    v17 = _createModifiedDecodeOptionsIfNeeded(v9, v7, -1, v5, v3, &cf);
    if (v17)
    {
LABEL_9:
      v20 = v17;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_28_5();
    if (*(v18 + 96))
    {
      OUTLINED_FUNCTION_31_2();
      v17 = v19();
      goto LABEL_9;
    }

    v20 = 4294950302;
  }

  else
  {
    v20 = 4294950306;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

uint64_t OUTLINED_FUNCTION_93_0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, a2, 10, 9uLL, a5);
}

uint64_t OUTLINED_FUNCTION_77(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, char a11, uint64_t a12, char a13)
{

  return CMPhotoGetPixelBufferDataPointers(v13, a2, a3, &a10, &a13, &a11, 0);
}

uint64_t OUTLINED_FUNCTION_77_0(__CVBuffer *a1, double a2, double a3, double a4, double a5)
{

  return CMPhotoSetPixelBufferCLAPFromRect(a1, 1, 1, a2, a3, a4, a5);
}

void CMPhotoDecompressionContainerCreateBitDepthArray(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int valuePtr, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_38_1();
  a18 = v19;
  a19 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  valuePtr = v27;
  Mutable = CFArrayCreateMutable(v25, 0, MEMORY[0x1E695E9C0]);
  v29 = CFNumberCreate(v26, kCFNumberIntType, &valuePtr);
  v30 = v29;
  if (Mutable && v29)
  {
    v31 = 0;
    do
    {
      CFArrayAppendValue(Mutable, v30);
    }

    while (v24 != 6 && v31++ < 2);
    *v22 = Mutable;
    Mutable = 0;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  OUTLINED_FUNCTION_37_3();
}

void *OUTLINED_FUNCTION_80_0(uint64_t a1)
{
  v2 = 4 * a1;

  return malloc_type_malloc(v2, 0x100004052888210uLL);
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  *(v5 - 216) = v0;
  *(v5 - 208) = v4;
  *(v5 - 200) = v3;
  *(v5 - 192) = v1;
  return v2;
}

void *OUTLINED_FUNCTION_10_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v29 = v26 / a26;
  if (v29 <= 1)
  {
    v29 = 1;
  }

  if (v27 / a26 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v27 / a26;
  }

  return malloc_type_malloc(8 * v29 * v30, 0x100004000313F17uLL);
}

BOOL OUTLINED_FUNCTION_10_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, unsigned __int8 a14)
{
  a10 = 0;
  v17 = a14;

  return _getAuxiliaryImageStorageForIndex(v15 + 40, v17, v14, &a10);
}

BOOL OUTLINED_FUNCTION_10_12()
{
  v3 = *(v1 + 16);

  return CMPhotoDecompressionSessionAsyncRequestCancelled(v3, v0);
}

void CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (*(v13 + 64))
        {
          v14 = OUTLINED_FUNCTION_2_22();
          v15(v14);
        }
      }
    }
  }
}

uint64_t _copyImageBitDepthForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v22 = a2;
  if (!a4)
  {
    return 0;
  }

  HIBYTE(v20) = 0;
  v6 = OUTLINED_FUNCTION_8_8(a1);
  v8 = _checkImageIndex(v6, v7, &v20 + 3);
  if (v8)
  {
    return v8;
  }

  v8 = _parseImageSizeAndTypeIfNeeded();
  if (v8)
  {
    return v8;
  }

  if (*(a1 + 136) <= 10)
  {
    v13 = 10;
  }

  else
  {
    v13 = *(a1 + 136);
  }

  if (HIBYTE(v20))
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a1 + 136);
  }

  CMPhotoDecompressionContainerCreateBitDepthArray(*(a1 + 40), *(a1 + 128), v14, &cf, v9, v10, v11, v12, v18, v19, v20, cf, v22, v23, v24, v25, v26, vars0, vars8);
  v16 = v15;
  if (v15)
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

  return v16;
}

uint64_t _copyImageBitDepthForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableArrayRef *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!a2)
  {
    Mutable = CFArrayCreateMutable(*(a1 + 40), 4, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v7 = Mutable;
    if (*(a1 + 136))
    {
      v8 = 0;
      while (1)
      {
        appended = CMPhotoCFArrayAppendInt32(v7, *(a1 + 96));
        if (appended)
        {
          break;
        }

        if (++v8 >= *(a1 + 136))
        {
          goto LABEL_8;
        }
      }

      v10 = appended;
      CFRelease(v7);
    }

    else
    {
LABEL_8:
      v10 = 0;
      *a4 = v7;
    }

    return v10;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_1();

  return FigSignalErrorAtGM();
}

uint64_t _copyImageBitDepthForIndex_2(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v6 = OUTLINED_FUNCTION_73_0();
  v8 = v7(v6);
  v16 = OUTLINED_FUNCTION_104(v8, v9, v10, v11, v12, v13, v14, v15, v26, 0);
  if (!a2)
  {
    v17 = CMPhotoPictureReaderCopyImageBitDepth(v16, a4);
    v16 = OUTLINED_FUNCTION_104(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return a2;
}

uint64_t _copyImageBitDepthForIndex_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  desc = 0;
  cf = 0;
  if (!a4)
  {
    return 0;
  }

  v4 = _copyFormatDescriptionForTrackReader(*(*(a1 + 80) + 8), &desc);
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

uint64_t _queueAsyncImageDecode(uint64_t a1, int a2, uint64_t SizeIfPresent, const void *a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v31 = 0;
  *v30 = 0;
  if (!a4)
  {
    v18 = 0;
    goto LABEL_8;
  }

  DeepCopy = CMPhotoDictionaryCreateDeepCopy(*(a1 + 40), 0, a4);
  if (!DeepCopy)
  {
    return 4294950305;
  }

  v18 = DeepCopy;
  a7 = a8;
  a8 = a5;
  LOBYTE(a5) = SizeIfPresent;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  SizeIfPresent = CMPhotoCFDictionaryGetSizeIfPresent(a4, @"ReservedRequestID", v30);
  CMPhotoCFDictionaryGetIntIfPresent();
  if (!SizeIfPresent)
  {
    OUTLINED_FUNCTION_22_1();
LABEL_8:
    v19 = CMPhotoDecompressionSessionReserveRequestID(*(a1 + 16), v30);
    if (v19)
    {
      v25 = v19;
      v26 = 0;
      goto LABEL_20;
    }

LABEL_9:
    ShouldUseHWForOperation = CMPhotoUnifiedJPEGDecoderShouldUseHWForOperation(*(a1 + 96), a2 == 2);
    AsyncRequest = CMPhotoDecompressionSessionCreateAsyncRequest(0x58uLL, *v30, v31 != 0, a1, 0, ShouldUseHWForOperation, a8, a9, a6);
    if (AsyncRequest)
    {
      v22 = AsyncRequest;
      v23 = *(a1 + 64);
      if (v23)
      {
        v23 = CFRetain(v23);
      }

      *(v22 + 6) = v23;
      *(v22 + 72) = a5;
      v22[14] = a2;
      *(v22 + 8) = SizeIfPresent;
      if (v18)
      {
        v24 = CFRetain(v18);
      }

      else
      {
        v24 = 0;
      }

      *(v22 + 10) = v24;
      if (a7)
      {
        *a7 = *v30;
      }

      v25 = CMPhotoDecompressionSessionEnqueueAsynchronousRequest(*(a1 + 16), v22);
      if (v25)
      {
        v26 = v22;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v25 = 4294950305;
    }

LABEL_20:
    if (!v18)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*v30)
  {
    OUTLINED_FUNCTION_22_1();
    goto LABEL_9;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_14_1();
  v25 = FigSignalErrorAtGM();
  v26 = 0;
LABEL_21:
  CFRelease(v18);
LABEL_22:
  if (v26)
  {
    v27 = v26[6];
    if (v27)
    {
      CFRelease(v27);
      v26[6] = 0;
    }

    v28 = v26[10];
    if (v28)
    {
      CFRelease(v28);
      v26[10] = 0;
    }

    CMPhotoDecompressionSessionFreeAsyncRequest(v26);
  }

  return v25;
}

uint64_t _queueAsyncImageDecode_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const void *a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v35 = 0;
  *v34 = 0;
  if (!a5)
  {
    v18 = 0;
LABEL_8:
    v23 = CMPhotoDecompressionSessionReserveRequestID(*(a1 + 16), v34);
    if (v23)
    {
      v28 = v23;
      v29 = 0;
      goto LABEL_21;
    }

    v22 = *v34;
LABEL_10:
    AsyncRequest = CMPhotoDecompressionSessionCreateAsyncRequest(0x58uLL, v22, v35 != 0, a1, 0, 0, a8, a9, a6);
    if (AsyncRequest)
    {
      v25 = AsyncRequest;
      v26 = *(a1 + 64);
      if (v26)
      {
        v26 = CFRetain(v26);
      }

      *(v25 + 6) = v26;
      v25[14] = a2;
      *(v25 + 8) = a3;
      *(v25 + 9) = a4;
      if (v18)
      {
        v27 = CFRetain(v18);
      }

      else
      {
        v27 = 0;
      }

      *(v25 + 10) = v27;
      if (a7)
      {
        *a7 = *v34;
      }

      v28 = CMPhotoDecompressionSessionEnqueueAsynchronousRequest(*(a1 + 16), v25);
      if (v28)
      {
        v29 = v25;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
      v28 = 4294950305;
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  DeepCopy = CMPhotoDictionaryCreateDeepCopy(*(a1 + 40), 0, a5);
  if (!DeepCopy)
  {
    return 4294950305;
  }

  v18 = DeepCopy;
  v33 = a2;
  v19 = a3;
  v20 = a4;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  SizeIfPresent = CMPhotoCFDictionaryGetSizeIfPresent(a5, @"ReservedRequestID", v34);
  CMPhotoCFDictionaryGetIntIfPresent();
  if (!SizeIfPresent)
  {
    a4 = v20;
    a3 = v19;
    a2 = v33;
    goto LABEL_8;
  }

  v22 = *v34;
  if (*v34)
  {
    a4 = v20;
    a3 = v19;
    a2 = v33;
    goto LABEL_10;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
  v29 = 0;
LABEL_22:
  CFRelease(v18);
LABEL_23:
  if (v29)
  {
    v30 = v29[6];
    if (v30)
    {
      CFRelease(v30);
      v29[6] = 0;
    }

    v31 = v29[10];
    if (v31)
    {
      CFRelease(v31);
      v29[10] = 0;
    }

    CMPhotoDecompressionSessionFreeAsyncRequest(v29);
  }

  return v28;
}

uint64_t _decodeImageForIndexAsync(uint64_t a1, uint64_t a2, const void *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    _decodeImageForIndexAsync_cold_1(v25);
    return v25[0];
  }

  v26 = 0;
  *v25 = 0;
  v24 = 0;
  if (a3)
  {
    DeepCopy = CMPhotoDictionaryCreateDeepCopy(*(a1 + 40), 0, a3);
    if (!DeepCopy)
    {
      return 4294950305;
    }

    v14 = DeepCopy;
    LOBYTE(v27) = 0;
    if (CMPhotoCFDictionaryGetBooleanIfPresent())
    {
      v24 = v27;
    }

    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    SizeIfPresent = CMPhotoCFDictionaryGetSizeIfPresent(a3, @"ReservedRequestID", v25);
    CMPhotoCFDictionaryGetIntIfPresent();
    if (SizeIfPresent)
    {
      v16 = *v25;
      if (!*v25)
      {
        _decodeImageForIndexAsync_cold_2(&v27);
        v17 = 0;
        v18 = v27;
        goto LABEL_24;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = CMPhotoDecompressionSessionReserveRequestID(*(a1 + 16), v25);
  if (v19)
  {
    v18 = v19;
    v17 = 0;
    goto LABEL_21;
  }

  v16 = *v25;
LABEL_12:
  AsyncRequest = CMPhotoDecompressionSessionCreateAsyncRequest(0x40uLL, v16, v26 != 0, a1, v24, 0, a6, a7, a4);
  if (AsyncRequest)
  {
    v21 = AsyncRequest;
    AsyncRequest[12] = 0;
    if (v14)
    {
      v22 = CFRetain(v14);
    }

    else
    {
      v22 = 0;
    }

    v21[7] = v22;
    if (a5)
    {
      *a5 = *v25;
    }

    v18 = CMPhotoDecompressionSessionEnqueueAsynchronousRequest(*(a1 + 16), v21);
    if (v18)
    {
      v17 = v21;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 4294950305;
  }

LABEL_21:
  if (v14)
  {
LABEL_24:
    CFRelease(v14);
    if (!v17)
    {
      return v18;
    }

LABEL_26:
    _decodeImageForIndexAsync_cold_3(v17);
    return v18;
  }

  if (v17)
  {
    goto LABEL_26;
  }

  return v18;
}

uint64_t _decodeImageForIndexAsync_1(uint64_t a1, unint64_t a2, const void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  result = OUTLINED_FUNCTION_2_10(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, v17, SWORD2(v17), SBYTE6(v17), SHIBYTE(v17), v19);
  if (!result)
  {
    return _queueAsyncImageDecode(a1, 0, 0, a3, v18, v11, a5, a6, a7);
  }

  return result;
}

uint64_t _decodeImageForIndexAsync_2(uint64_t a1, uint64_t a2, const void *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  result = DicomGetImageCount(*(a1 + 112), 0, &v15);
  if (!result)
  {
    if (a2 < 0 || v15 <= a2)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19();
      return FigSignalErrorAtGM();
    }

    else
    {
      return _queueAsyncImageDecode_0(a1, 0, a2, -1, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

__CFDictionary *CMPhotoDictionaryCreateDeepCopy(const __CFAllocator *a1, int a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  DeepCopy = CFPropertyListCreateDeepCopy(a1, a3, 2uLL);
  if (!DeepCopy)
  {
    Count = CFDictionaryGetCount(a3);
    DeepCopy = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (DeepCopy)
    {
      v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v8)
      {
        v9 = v8;
        v10 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        if (v10)
        {
          v11 = v10;
          CFDictionaryGetKeysAndValues(a3, v9, v10);
          if (Count >= 1)
          {
            v12 = v11;
            v13 = v9;
            while (1)
            {
              v14 = CFGetTypeID(*v12);
              if (v14 == CFDictionaryGetTypeID())
              {
                break;
              }

              v15 = CFGetTypeID(*v12);
              if (v15 != CFArrayGetTypeID())
              {
                v16 = CFGetTypeID(*v12);
                if (v16 == CFStringGetTypeID() || (v17 = CFGetTypeID(*v12), v17 == CFNumberGetTypeID()) || (v18 = CFGetTypeID(*v12), v18 == CFBooleanGetTypeID()) || !a2)
                {
                  CFDictionarySetValue(DeepCopy, *v13, *v12);
                }

                goto LABEL_15;
              }

              v21 = OUTLINED_FUNCTION_10_1();
              v20 = CMPhotoArrayCreateDeepCopy(v21, v22, v23);
              if (v20)
              {
                goto LABEL_20;
              }

LABEL_15:
              ++v13;
              ++v12;
              if (!--Count)
              {
                goto LABEL_21;
              }
            }

            v19 = OUTLINED_FUNCTION_10_1();
            v20 = CMPhotoDictionaryCreateDeepCopy(v19);
            if (!v20)
            {
              goto LABEL_15;
            }

LABEL_20:
            v24 = v20;
            CFDictionaryAddValue(DeepCopy, *v13, v20);
            CFRelease(v24);
            goto LABEL_15;
          }

LABEL_21:
          free(v9);
        }

        else
        {
          v11 = v9;
        }

        free(v11);
      }
    }
  }

  return DeepCopy;
}

_DWORD *CMPhotoDecompressionSessionCreateAsyncRequest(size_t size, uint64_t a2, int a3, const void *a4, char a5, char a6, uint64_t a7, uint64_t a8, int a9)
{
  if (size <= 0x2F)
  {
    CMPhotoDecompressionSessionCreateAsyncRequest_cold_2();
    return 0;
  }

  else
  {
    v16 = malloc_type_calloc(1uLL, size, 0x3F4D3658uLL);
    v17 = v16;
    if (v16)
    {
      *v16 = a2;
      v16[2] = a3;
      if (a4)
      {
        v18 = CFRetain(a4);
      }

      else
      {
        v18 = 0;
      }

      *(v17 + 2) = v18;
      *(v17 + 3) = a7;
      *(v17 + 4) = a8;
      v17[10] = a9;
      *(v17 + 12) = a5;
      *(v17 + 13) = a6;
    }

    else
    {
      CMPhotoDecompressionSessionCreateAsyncRequest_cold_1();
    }
  }

  return v17;
}

uint64_t CMPhotoDecompressionSessionEnqueueAsynchronousRequest(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  if (!*a2)
  {
    return result;
  }

  v5 = a2[2];
  if (!*(*(v5 + 32) + 128))
  {
    return result;
  }

  v17 = 0;
  if (*(a2 + 12))
  {
    v6 = a1 + 192;
  }

  else
  {
    if (*(a2 + 13))
    {
      v7 = *(v5 + 544);
      v8 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = *"";
      block[2] = ___getHWQueueForFormat_block_invoke;
      block[3] = &__block_descriptor_tmp_43;
      v19 = v7;
      block[4] = a1;
      block[5] = &v17;
      dispatch_sync(v8, block);
      v6 = v17;
      goto LABEL_10;
    }

    v6 = a1 + 144;
  }

  v17 = v6;
LABEL_10:
  v9 = dispatch_semaphore_wait(*(v6 + 24), 0);
  os_unfair_lock_lock((a1 + 16));
  v20.length = CFArrayGetCount(*(v17 + 32));
  v20.location = 0;
  v10 = CFArrayBSearchValues(*(v17 + 32), v20, a2, _compareAsyncDecodeRequests, 0);
  CFArrayInsertValueAtIndex(*(v17 + 32), v10, a2);
  CFSetAddValue(*(a1 + 32), *a2);
  os_unfair_lock_unlock((a1 + 16));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = *"";
  v12 = __CMPhotoDecompressionSessionEnqueueAsynchronousRequest_block_invoke;
  v13 = &__block_descriptor_tmp_17_1;
  v16 = v9 != 0;
  v14 = v17;
  v15 = a1;
  CFRetain(a1);
  if (v9)
  {
    dispatch_async(*(v17 + 16), v11);
  }

  else
  {
    v12(v11);
  }

  return 0;
}

void ___getHWQueueForFormat_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    if (*(v3 + 56))
    {
      **(a1 + 40) = v3 + 48;
      return;
    }
  }

  else if (!v2)
  {
    v4 = *(a1 + 40);
    if (*(v3 + 104))
    {
      *v4 = v3 + 96;
      return;
    }

    *v4 = v3 + 144;
    v5 = 96;
    goto LABEL_9;
  }

  **(a1 + 40) = v3 + 144;
  v5 = 48;
LABEL_9:
  v6 = *(a1 + 32);
  if (!*(v6 + v5))
  {
    v7 = *(v6 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = *"";
    v9[2] = ___getHWQueueForFormat_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_42;
    v10 = v2;
    v9[4] = v6;
    dispatch_async(v7, v9);
    v8 = *(a1 + 32);
    if (*(a1 + 48))
    {
      *(v8 + 48) = 1;
    }

    else
    {
      *(v8 + 96) = 1;
    }
  }
}

void __CMPhotoDecompressionSessionEnqueueAsynchronousRequest_block_invoke(int8x16_t *a1)
{
  if (a1[3].i8[0])
  {
    dispatch_semaphore_wait(*(a1[2].i64[0] + 24), 0xFFFFFFFFFFFFFFFFLL);
  }

  os_unfair_lock_lock((a1[2].i64[1] + 16));
  if (CFArrayGetCount(*(a1[2].i64[0] + 32)) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1[2].i64[0] + 32), 0);
    CFArrayRemoveValueAtIndex(*(a1[2].i64[0] + 32), 0);
  }

  os_unfair_lock_unlock((a1[2].i64[1] + 16));
  block[0] = MEMORY[0x1E69E9820];
  v3 = vextq_s8(a1[2], a1[2], 8uLL);
  v4 = *(a1[2].i64[0] + 8);
  block[1] = *"";
  block[2] = __CMPhotoDecompressionSessionEnqueueAsynchronousRequest_block_invoke_2;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = ValueAtIndex;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t ___getHWQueueForFormat_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    result = CMPhotoUnifiedJPEGDecoderHardwareAvailable();
    if (!result)
    {
      return result;
    }

    v3 = CMPhotoUnifiedJPEGDecoderNumHardwareCores();
    NumberOfScalerCores = FigGetNumberOfScalerCores();
    v5 = NumberOfScalerCores + 2 * v3 + ((NumberOfScalerCores + 1) >> 1);
    v6 = CFGetAllocator(*(a1 + 32));
    v7 = "com.apple.CMPhoto.jfifhw.feederQueue";
    v8 = "com.apple.CMPhoto.jfifhw.workerQueue";
    v9 = *(a1 + 32) + 48;
    v10 = v5;
    v11 = 1;
  }

  else
  {
    result = CMPhotoSupportsHEVCHWDecode();
    if (!result)
    {
      return result;
    }

    v6 = CFGetAllocator(*(a1 + 32));
    v7 = "com.apple.CMPhoto.heifhw.feederQueue";
    v8 = "com.apple.CMPhoto.heifhw.workerQueue";
    v9 = *(a1 + 32) + 96;
    v10 = 2;
    v11 = 2;
  }

  return _createAsyncQueueElements(v6, v9, v7, v8, v10, v11);
}

uint64_t _runAsyncDecodeRequest(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v5 = _decodeImage(*(a1 + 40), *(a2 + 16), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 80), *(a2 + 72), *a2, *(a2 + 40), 1, &cf);
  if (v5)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
    cf = 0;
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 48) = 0;
  }

  v7 = *(a2 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 80) = 0;
  }

  return v5;
}

uint64_t _runAsyncDecodeRequest_0(const void *a1, uint64_t a2, void *a3)
{
  v35 = 0;
  v33 = 0;
  cf = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (!*(a2 + 56) || *(a2 + 72) == -1)
  {
    v6 = *(a2 + 88);
    v7 = *(a2 + 48);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v8)
    {
      goto LABEL_24;
    }

    AuxiliaryImageForIndex_1 = v8(v6, v7, &cf, 0);
    if (AuxiliaryImageForIndex_1)
    {
      goto LABEL_52;
    }

    v12 = cf;
    v13 = *(a2 + 64);
    if (v13 == -1)
    {
      v16 = 0;
LABEL_14:
      if (*(a2 + 72) != -1)
      {
        CMPhotoDecompressionContainerCreateAlphaDecodeOptionsForInternalIndex(a1, *(a2 + 48), *(a2 + 96), *(a2 + 80), &v30, &v29, v10, v11, v25, v26, 2, v28, v29, v30, v31, v32, v33, cf, v35);
        if (!AuxiliaryImageForIndex_1)
        {
          AuxiliaryImageForIndex_1 = _createAuxiliaryImageForIndex_1(a1, *(a2 + 48), *(a2 + 72), v29, 2, &v31);
          if (!AuxiliaryImageForIndex_1)
          {
            _decodeImage_1(a1, v12, 0, *(a2 + 48), v30, *a2, 2, 0, &v32);
            if (!AuxiliaryImageForIndex_1)
            {
              if (_copyAuxiliaryImageTypeInfo(a1, *(a2 + 48), *(a2 + 72), v18, 0, &v28) || !v28 || (_readAlphaInfoSEIPayload(), v19 = v27, v27 == 2))
              {
                v19 = 0;
              }

              CMPhotoCFDictionaryGetBooleanIfPresent();
              CMPhotoCFDictionaryGetBooleanIfPresent();
              if (!CMPhotoCreateImageFromAlphaAndMainBuffer(v32, v31, v19, 0, 0, *(a2 + 40), &v35))
              {
                goto LABEL_23;
              }

              v20 = CFGetAllocator(a1);
              AuxiliaryImageForIndex_1 = CMPhotoCreateWrappedPixelBufferForType(v20, v32, 0, *(a2 + 40), &v35);
              if (!AuxiliaryImageForIndex_1)
              {
                goto LABEL_23;
              }
            }
          }
        }

        goto LABEL_52;
      }

      v24 = *(a2 + 48);
      if (*(a2 + 56) == 2)
      {
        AuxiliaryImageForIndex_1 = _decodeAuxiliaryImage(a1, v12, v16, v24, *(a2 + 64), *(a2 + 96), *a2, *(a2 + 40), &v35);
        if (AuxiliaryImageForIndex_1)
        {
          goto LABEL_52;
        }

LABEL_23:
        v17 = 0;
        *a3 = v35;
        v35 = 0;
        goto LABEL_27;
      }

      _decodeImage_1(a1, v12, v16, v24, *(a2 + 96), *a2, *(a2 + 40), 0, &v35);
      if (!AuxiliaryImageForIndex_1)
      {
        goto LABEL_23;
      }

LABEL_52:
      v17 = AuxiliaryImageForIndex_1;
      goto LABEL_25;
    }

    v14 = *(a2 + 56);
    if (v14 == 1)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v15)
      {
LABEL_12:
        v17 = v15(v12, v13, &v33);
        if (v17)
        {
          goto LABEL_25;
        }

        v12 = v33;
        v16 = cf;
        goto LABEL_14;
      }

LABEL_24:
      v17 = 4294954514;
      goto LABEL_25;
    }

    if (v14)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  v17 = 4294950302;
LABEL_25:
  if (v35)
  {
    CFRelease(v35);
  }

LABEL_27:
  v21 = *(a2 + 96);
  if (v21)
  {
    CFRelease(v21);
    *(a2 + 96) = 0;
  }

  v22 = *(a2 + 88);
  if (v22)
  {
    CFRelease(v22);
    *(a2 + 88) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v33)
  {
    CFRelease(v33);
    v33 = 0;
  }

  if (v32)
  {
    CFRelease(v32);
    v32 = 0;
  }

  if (v31)
  {
    CFRelease(v31);
    v31 = 0;
  }

  if (v30)
  {
    CFRelease(v30);
    v30 = 0;
  }

  if (v29)
  {
    CFRelease(v29);
    v29 = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v17;
}

uint64_t _runAsyncDecodeRequest_1(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 56);
  if (v5 == 2)
  {
    AuxiliaryImageForIndexInternal = _createAuxiliaryImageForIndexInternal(a1, *(a2 + 64), *(a2 + 72), *(a2 + 80), *a2);
  }

  else
  {
    if (v5)
    {
      v6 = 4294950306;
      goto LABEL_4;
    }

    AuxiliaryImageForIndexInternal = _createImageForIndexInternal(a1, *(a2 + 64), *(a2 + 80), *a2, *(a2 + 40));
  }

  v6 = AuxiliaryImageForIndexInternal;
  if (!AuxiliaryImageForIndexInternal)
  {
    *a3 = 0;
  }

LABEL_4:
  v7 = *(a2 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 48) = 0;
  }

  v8 = *(a2 + 80);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 80) = 0;
  }

  return v6;
}

uint64_t _runAsyncDecodeRequest_2(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (*(a2 + 48))
  {
    v5 = 4294950302;
  }

  else
  {
    v5 = _decodeImage_0(a1, 0, *(a2 + 56), *a2, *(a2 + 40), 1, &cf);
    if (v5)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a3 = cf;
      cf = 0;
    }
  }

  v6 = *(a2 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 56) = 0;
  }

  return v5;
}

CFTypeID ___isCodecAllowedByDictionary_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  result = FigCFEqual();
  if (a3)
  {
    if (result)
    {
      v6 = CFGetTypeID(a3);
      result = CFArrayGetTypeID();
      if (v6 == result)
      {
        if (*(a1 + 52))
        {
          if (!CFArrayGetCount(a3))
          {
            *(*(*(a1 + 32) + 8) + 24) = 0;
          }
        }

        result = CFArrayGetCount(a3);
        if (result)
        {
          v7 = 0;
          while (1)
          {
            result = FigCFArrayGetInt32AtIndex();
            if (!*(a1 + 48))
            {
              break;
            }

            ++v7;
            result = CFArrayGetCount(a3);
            if (v7 >= result)
            {
              return result;
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = *(a1 + 52) == 0;
        }
      }
    }
  }

  return result;
}

BOOL CMPhotoUnifiedJPEGDecoderFileSupportedByHardware(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6FA638 != -1)
  {
    CMPhotoUnifiedJPEGDecoderFileSupportedByHardware_cold_1();
  }

  return _isHWAvailableHelper_sHWAvailable && (*(a1 + 48) == 4 || *(a1 + 32) <= 0xC800000uLL) && _createHWDecoderIfNeeded(a1, a2) == 0;
}

BOOL CMPhotoDecompressionSessionAsyncRequestCancelled(uint64_t a1, _BOOL8 a2)
{
  v2 = a2;
  if (a2)
  {
    os_unfair_lock_lock((a1 + 16));
    v2 = CFSetContainsValue(*(a1 + 32), v2) == 0;
    os_unfair_lock_unlock((a1 + 16));
  }

  return v2;
}

uint64_t _getSubImageCountForIndex(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v13 = 0;
  cf = 0;
  if (!*(*(OUTLINED_FUNCTION_118() + 16) + 16))
  {
    goto LABEL_10;
  }

  v6 = OUTLINED_FUNCTION_21_5();
  v8 = v7(v6);
  v9 = v8;
  if (!a4 || v8)
  {
    goto LABEL_11;
  }

  v10 = *(CMBaseObjectGetVTable() + 16);
  if (!a3)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_10:
    v9 = 4294954514;
    goto LABEL_11;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = v11(cf, &v13);
  if (!v9)
  {
    *a4 = v13;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

BOOL CMPhotoHEIFUtilitiesSupportsOutputPixelFormat(int a1)
{
  result = 1;
  if (a1 > 1734501175)
  {
    if (a1 <= 1936077359)
    {
      if (a1 <= 1882468911)
      {
        if (a1 <= 1751410031)
        {
          if (a1 > 1735549491)
          {
            if (a1 == 1735549492)
            {
              return result;
            }

            v4 = 1735549752;
          }

          else
          {
            if (a1 == 1734501176)
            {
              return result;
            }

            v4 = 1734505012;
          }
        }

        else if (a1 <= 1751527983)
        {
          if (a1 == 1751410032)
          {
            return result;
          }

          v4 = 1751411059;
        }

        else
        {
          if (a1 == 1751527984 || a1 == 1815162994)
          {
            return result;
          }

          v4 = 1815491698;
        }

        goto LABEL_107;
      }

      if (a1 <= 1885745713)
      {
        if (a1 <= 1882469427)
        {
          if (a1 == 1882468912)
          {
            return result;
          }

          v4 = 1882468914;
          goto LABEL_107;
        }

        if (a1 == 1882469428)
        {
          return result;
        }

        v7 = 12848;
      }

      else
      {
        if (a1 > 1919378231)
        {
          if (a1 == 1919378232 || a1 == 1919379252)
          {
            return result;
          }

          v4 = 1932996149;
          goto LABEL_107;
        }

        if (a1 == 1885745714)
        {
          return result;
        }

        v7 = 13364;
      }

      v4 = v7 | 0x70660000;
      goto LABEL_107;
    }

    if (a1 <= 1953903151)
    {
      if (a1 <= 1937125937)
      {
        if (a1 <= 1936077875)
        {
          if (a1 == 1936077360)
          {
            return result;
          }

          v4 = 1936077362;
          goto LABEL_107;
        }

        if (a1 == 1936077876)
        {
          return result;
        }

        v6 = 12848;
      }

      else
      {
        if (a1 > 1952854575)
        {
          if (a1 == 1952854576 || a1 == 1952854578)
          {
            return result;
          }

          v4 = 1952855092;
          goto LABEL_107;
        }

        if (a1 == 1937125938)
        {
          return result;
        }

        v6 = 13364;
      }

      v4 = v6 | 0x73760000;
      goto LABEL_107;
    }

    if (a1 <= 2016686641)
    {
      if (a1 <= 1953903667)
      {
        if (a1 == 1953903152)
        {
          return result;
        }

        v4 = 1953903154;
        goto LABEL_107;
      }

      if (a1 == 1953903668)
      {
        return result;
      }

      v8 = 12848;
    }

    else
    {
      if (a1 > 2019963439)
      {
        if (a1 == 2019963440 || a1 == 2019963442)
        {
          return result;
        }

        v4 = 2019963956;
        goto LABEL_107;
      }

      if (a1 == 2016686642)
      {
        return result;
      }

      v8 = 13364;
    }

    v4 = v8 | 0x78340000;
    goto LABEL_107;
  }

  if (a1 > 1278555700)
  {
    if (a1 > 1650942775)
    {
      if (a1 <= 1651925815)
      {
        if (a1 > 1651519797)
        {
          if (a1 == 1651519798)
          {
            return result;
          }

          v4 = 1651847472;
        }

        else
        {
          if (a1 == 1650942776)
          {
            return result;
          }

          v4 = 1650943796;
        }
      }

      else if (a1 <= 1652056887)
      {
        if (a1 == 1651925816)
        {
          return result;
        }

        v4 = 1651926376;
      }

      else
      {
        if (a1 == 1652056888 || a1 == 1717855600)
        {
          return result;
        }

        v4 = 1717856627;
      }

      goto LABEL_107;
    }

    if (a1 <= 1380410944)
    {
      if (a1 <= 1279340853)
      {
        if (a1 == 1278555701)
        {
          return result;
        }

        v4 = 1279340600;
        goto LABEL_107;
      }

      if (a1 == 1279340854)
      {
        return result;
      }

      v5 = 16961;
    }

    else
    {
      if (a1 > 1647392368)
      {
        if (a1 == 1647392369 || a1 == 1647589490)
        {
          return result;
        }

        v4 = 1647719528;
        goto LABEL_107;
      }

      if (a1 == 1380410945)
      {
        return result;
      }

      v5 = 26689;
    }

    v4 = v5 | 0x52470000;
    goto LABEL_107;
  }

  if (a1 > 875836517)
  {
    if (a1 > 1278226487)
    {
      if ((a1 - 1278226488) <= 0x30 && ((1 << (a1 - 56)) & 0x1400000000001) != 0 || (a1 - 1278226736) <= 6 && ((1 << (a1 - 48)) & 0x45) != 0)
      {
        return result;
      }

      return CMPhotoPixelFormatIsAGXCompressed(a1) && CMPhotoSupportsAGXCompressedFormat() || CMPhotoPixelFormatIsLossyCompressed(a1) && CMPhotoSupportsLossyCompressedFormat();
    }

    if (a1 == 875836518 || a1 == 875836534)
    {
      return result;
    }

    v4 = 1111970369;
  }

  else if (a1 <= 843264309)
  {
    if (a1 > 825437746)
    {
      if (a1 == 825437747)
      {
        return result;
      }

      v4 = 843264056;
    }

    else
    {
      if (a1 == 16)
      {
        return result;
      }

      v4 = 825306677;
    }
  }

  else
  {
    if (a1 <= 875704437)
    {
      if (a1 == 843264310)
      {
        return result;
      }

      v3 = 12390;
    }

    else
    {
      if (a1 == 875704438 || a1 == 875704934)
      {
        return result;
      }

      v3 = 12918;
    }

    v4 = v3 | 0x34320000;
  }

LABEL_107:
  if (a1 == v4)
  {
    return result;
  }

  return CMPhotoPixelFormatIsAGXCompressed(a1) && CMPhotoSupportsAGXCompressedFormat() || CMPhotoPixelFormatIsLossyCompressed(a1) && CMPhotoSupportsLossyCompressedFormat();
}

void CMPhotoDecompressionContainerGetExifCountForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v13 + 344))
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

uint64_t _getVideoAndAudioCount(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!(a2 | a3))
  {
    return 0;
  }

  if (!*(a1 + 136))
  {
    *(a1 + 144) = 0;
    *(a1 + 136) = 1;
    *(a1 + 152) = 0;
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v7)
      {
        return 4294954514;
      }

      v14 = 0;
      result = v7(v6, &v14);
      if (result)
      {
        return result;
      }

      if (v14 >= 1)
      {
        v9 = 0;
        while (1)
        {
          v13 = 0;
          v10 = *(a1 + 56);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v11)
          {
            return 4294954514;
          }

          result = v11(v10, v9, 0, &v13, 0);
          if (result)
          {
            return result;
          }

          v12 = (a1 + 144);
          if (v13 == 1986618469)
          {
            goto LABEL_13;
          }

          if (v13 == 1936684398)
          {
            break;
          }

LABEL_14:
          if (++v9 >= v14)
          {
            goto LABEL_15;
          }
        }

        v12 = (a1 + 152);
LABEL_13:
        ++*v12;
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  if (a2)
  {
    *a2 = *(a1 + 144);
  }

  result = 0;
  if (a3)
  {
    *a3 = *(a1 + 152);
  }

  return result;
}

void CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (*(v13 + 312))
        {
          v14 = OUTLINED_FUNCTION_2_22();
          v15(v14);
        }
      }
    }
  }
}

uint64_t _copyHEIFItemPropertiesForIndex(void *a1, uint64_t a2, uint64_t a3, __CFDictionary **a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = 0;
  theDict = 0;
  if (!a4)
  {
    return 0;
  }

  v6 = _copyMetadataForIndex(a1, 3, a2, -1, 0, &theDict);
  if (v6)
  {
    RotationMatrixFromQuaternionArray = v6;
LABEL_39:
    Mutable = 0;
    goto LABEL_40;
  }

  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_49;
  }

  v39 = 0uLL;
  v38 = 1;
  OUTLINED_FUNCTION_72();
  ImageGeometryForIndex_1 = _getImageGeometryForIndex_1();
  if (ImageGeometryForIndex_1 || (v37 = v39, ImageGeometryForIndex_1 = CMPhotoFlipSizeIfNeeded(v38, v39, *(&v39 + 1), &v37), ImageGeometryForIndex_1) || (v36 = 1, (v11 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6973970])) != 0) && (v12 = v11, v13 = CFGetAllocator(a1), ImageGeometryForIndex_1 = CMPhotoCreateIntrinsicsMatrixFromFigIntrinsicsDict(v13, v12, v39, *(&v39 + 1), v37, *(&v37 + 1), &v36, &v40), ImageGeometryForIndex_1))
  {
    RotationMatrixFromQuaternionArray = ImageGeometryForIndex_1;
    goto LABEL_40;
  }

  if (!v40)
  {
    goto LABEL_15;
  }

  v14 = CFGetAllocator(a1);
  v15 = v40;
  if (v40)
  {
    v16 = v36;
    v17 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(v17, @"Intrinsics", v15);
      v19 = kCMPhotoCameraModelType_GenericPinhole;
      if (v16)
      {
        v19 = kCMPhotoCameraModelType_SimplifiedPinhole;
      }

      CFDictionarySetValue(v18, @"ModelType", *v19);
      CFDictionarySetValue(Mutable, @"CameraModel", v18);
      CFRelease(v18);
LABEL_15:
      v45 = 0;
      v44 = 0;
      v20 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6973968]);
      if (v20)
      {
        v21 = v20;
        v22 = CFDictionaryGetValue(v20, *MEMORY[0x1E69717B0]);
        if (!v22 || CFArrayGetCount(v22) != 3)
        {
LABEL_23:
          RotationMatrixFromQuaternionArray = 4294950304;
          goto LABEL_40;
        }

        v23 = 0;
        v24 = &v44;
        do
        {
          if (!FigCFArrayGetInt32AtIndex())
          {
            goto LABEL_23;
          }

          ++v23;
          v24 = (v24 + 4);
        }

        while (v23 != 3);
        v25 = CFDictionaryGetValue(v21, *MEMORY[0x1E69717C0]);
        if (v25)
        {
          v26 = v25;
          v27 = 1;
        }

        else
        {
          v26 = CFDictionaryGetValue(v21, *MEMORY[0x1E69717B8]);
          v27 = 0;
        }

        OUTLINED_FUNCTION_4_5();
        CMPhotoCFDictionaryGetIntIfPresent();
        v28 = CFGetAllocator(a1);
        value = 0;
        cf = 0;
        v29 = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v30 = v29;
        if (!v29)
        {
          RotationMatrixFromQuaternionArray = 4294950305;
          goto LABEL_32;
        }

        ExtrinsicsPositionArrayFromExtrinsicsValues = CMPhotoCFDictionarySetInt32(v29, @"CoordinateSystemID", 0);
        if (ExtrinsicsPositionArrayFromExtrinsicsValues || (ExtrinsicsPositionArrayFromExtrinsicsValues = CMPhotoCreateExtrinsicsPositionArrayFromExtrinsicsValues(v28, v44, SHIDWORD(v44), v45, &value), ExtrinsicsPositionArrayFromExtrinsicsValues))
        {
          RotationMatrixFromQuaternionArray = ExtrinsicsPositionArrayFromExtrinsicsValues;
        }

        else
        {
          RotationMatrixFromQuaternionArray = CMPhotoCreateRotationMatrixFromQuaternionArray(v28, v26, v27, &cf);
          if (!RotationMatrixFromQuaternionArray)
          {
            CFDictionarySetValue(v30, @"Position", value);
            CFDictionarySetValue(v30, @"Rotation", cf);
            goto LABEL_30;
          }
        }

        CFRelease(v30);
        v30 = 0;
LABEL_30:
        if (value)
        {
          CFRelease(value);
        }

LABEL_32:
        if (cf)
        {
          CFRelease(cf);
        }

        if (!RotationMatrixFromQuaternionArray)
        {
          v32 = OUTLINED_FUNCTION_111();
          CFDictionarySetValue(v32, v33, v34);
          if (v30)
          {
            CFRelease(v30);
          }

          goto LABEL_37;
        }

        goto LABEL_40;
      }

LABEL_37:
      if (CFDictionaryGetCount(Mutable) >= 1)
      {
        RotationMatrixFromQuaternionArray = 0;
        *a4 = Mutable;
        goto LABEL_39;
      }

      RotationMatrixFromQuaternionArray = 4294950303;
LABEL_40:
      if (v40)
      {
        CFRelease(v40);
      }

      goto LABEL_42;
    }

LABEL_49:
    RotationMatrixFromQuaternionArray = 4294950305;
    goto LABEL_40;
  }

  RotationMatrixFromQuaternionArray = 4294950306;
LABEL_42:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return RotationMatrixFromQuaternionArray;
}

uint64_t _copyMetadataForIndex(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFData **a6)
{
  CFGetAllocator(a1);
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  cf = 0;
  v58 = 0;
  v59 = 0;
  v11 = a1[6];
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v12)
  {
    MetadataCountForIndex = v12(v11, a3, &v66, 0);
    if (MetadataCountForIndex || (MetadataCountForIndex = _getMetadataCountForIndex(a1, a2, a3, &v59), MetadataCountForIndex))
    {
LABEL_55:
      v25 = MetadataCountForIndex;
    }

    else if (v59 <= a4)
    {
      v25 = 4294950303;
    }

    else
    {
      switch(a2)
      {
        case 0:
          v14 = *(CMBaseObjectGetVTable() + 16);
          if (*v14 >= 3uLL && v14[15])
          {
            v15 = OUTLINED_FUNCTION_19_5();
            v16(v15);
            goto LABEL_27;
          }

          if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            goto LABEL_42;
          }

          v28 = OUTLINED_FUNCTION_19_5();
          v29(v28);
          goto LABEL_27;
        case 1:
          v17 = *(CMBaseObjectGetVTable() + 16);
          if (*v17 >= 3uLL && v17[16])
          {
            OUTLINED_FUNCTION_9_15();
            v18 = OUTLINED_FUNCTION_19_5();
            v19(v18);
          }

          else
          {
            if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
            {
              goto LABEL_42;
            }

LABEL_26:
            OUTLINED_FUNCTION_9_15();
            v30 = OUTLINED_FUNCTION_19_5();
            v31(v30);
          }

LABEL_27:
          OUTLINED_FUNCTION_35_1();
          if (v24)
          {
            v25 = 4294950303;
          }

          else
          {
            v25 = v32;
          }

          if (a2 == 3 || v25)
          {
            break;
          }

          if (a2 != 4)
          {
            OUTLINED_FUNCTION_81_0();
            MetadataCountForIndex = OUTLINED_FUNCTION_78_0(v49, v50, v51, v52, v53, v54, v55, v56, a6);
            goto LABEL_55;
          }

LABEL_33:
          v33 = OUTLINED_FUNCTION_17();
          Mutable = CFDictionaryCreateMutable(v33, v34, v35, v36);
          if (Mutable)
          {
            v38 = Mutable;
            value = 0;
            OUTLINED_FUNCTION_81_0();
            v47 = OUTLINED_FUNCTION_78_0(v39, v40, v41, v42, v43, v44, v45, v46, &value);
            if (v47)
            {
              v25 = v47;
              CFRelease(v38);
            }

            else
            {
              CFDictionarySetValue(v38, @"Data", value);
              if (value)
              {
                CFRelease(value);
              }

              if (cf)
              {
                CFDictionarySetValue(v38, @"URI", cf);
              }

              if (v60)
              {
                CFDictionarySetValue(v38, @"Name", v60);
              }

              v25 = 0;
              *a6 = v38;
            }
          }

          else
          {
            v25 = 4294950305;
          }

          break;
        case 2:
          if (!*(*(CMBaseObjectGetVTable() + 16) + 88))
          {
            goto LABEL_42;
          }

          goto LABEL_26;
        case 4:
          v20 = *(CMBaseObjectGetVTable() + 16);
          if (*v20 < 2uLL || !v20[14])
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_9_15();
          v21 = OUTLINED_FUNCTION_19_5();
          v22(v21);
          OUTLINED_FUNCTION_35_1();
          if (v24)
          {
            v25 = 4294950303;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            break;
          }

          goto LABEL_33;
        default:
          FigBaseObject = FigPictureReaderGetFigBaseObject();
          v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v27)
          {
            goto LABEL_42;
          }

          v27(FigBaseObject, *MEMORY[0x1E6972370], 0, a6);
          goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_42:
    v25 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  free(v63);
  free(v62);
  return v25;
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return CMBaseObjectGetVTable();
}

uint64_t _getMetadataCountForIndex(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (!*(*(OUTLINED_FUNCTION_118() + 16) + 16))
  {
    return 4294954514;
  }

  v7 = OUTLINED_FUNCTION_4_5();
  v9 = v8(v7, a3);
  if (v9)
  {
    return v9;
  }

  switch(a2)
  {
    case 0:
      if (!*(*(OUTLINED_FUNCTION_117() + 16) + 48))
      {
        return 4294954514;
      }

      goto LABEL_9;
    case 1:
      if (!*(*(OUTLINED_FUNCTION_117() + 16) + 64))
      {
        return 4294954514;
      }

      goto LABEL_9;
    case 2:
      if (!*(*(OUTLINED_FUNCTION_117() + 16) + 80))
      {
        return 4294954514;
      }

LABEL_9:
      v10 = OUTLINED_FUNCTION_98_0();
      v12 = v11(v10);
      goto LABEL_13;
    case 4:
      v13 = *(OUTLINED_FUNCTION_117() + 16);
      if (*v13 < 2uLL || !v13[13])
      {
        return 4294954514;
      }

      v14 = OUTLINED_FUNCTION_98_0();
      v12 = v15(v14);
LABEL_13:
      v16 = v12;
      if (!a4)
      {
        return v16;
      }

      goto LABEL_18;
    default:
      v16 = 0;
      if (a4)
      {
LABEL_18:
        if (!v16)
        {
          *a4 = 0;
        }
      }

      break;
  }

  return v16;
}

unint64_t _convertAndScalePixelBuffer(__CVBuffer *a1, __CVBuffer *a2, int a3, CFTypeRef a4, int a5, uint64_t a6, OpaqueVTPixelTransferSession *a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, double a15, double a16, double PixelBufferCLAPAsRect, double a18, double a19, double a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned int a25, const void **a26)
{
  LODWORD(v200) = a5;
  v29 = a2;
  pixelTransferSessionOut[4] = *MEMORY[0x1E69E9840];
  v191 = *a26;
  buffer = 0;
  v209 = v191;
  propertyValue = 0;
  cf = 0;
  v204 = -1;
  v205 = 0;
  if (!a2)
  {
    a7 = 0;
    v25 = 0;
LABEL_248:
    a4 = 0;
    v24 = 4294950306;
    goto LABEL_249;
  }

  v31 = *MEMORY[0x1E695F060];
  v32 = *(MEMORY[0x1E695F060] + 8);
  if (a12 == *MEMORY[0x1E695F060] && a13 == v32)
  {
    a7 = 0;
    v25 = 0;
    v29 = 0;
    goto LABEL_248;
  }

  LODWORD(v37) = a3;
  OUTLINED_FUNCTION_4_4();
  v193 = v38;
  v194 = v39;
  LODWORD(v192) = v40;
  v42 = CMPhotoPixelBufferConvertYCbCrIdentityMatrixToRGB(*(a1 + 2), v41, v29, &cf);
  if (v42)
  {
    v24 = v42;
    if (v42 == -16997)
    {
      goto LABEL_9;
    }

    a7 = 0;
    v25 = 0;
    v29 = 0;
    a4 = 0;
LABEL_249:
    LODWORD(v37) = 1;
    v202 = 1;
    v163 = v191;
    goto LABEL_206;
  }

  v29 = cf;
LABEL_9:
  v186 = *&v32;
  v187 = v31;
  v211.origin.x = OUTLINED_FUNCTION_0_5();
  if (CGRectIsNull(v211))
  {
    CMPhotoGetPixelBufferCLAPAsRect(v29);
    v28 = v47;
    v27 = v48;
  }

  v212.origin.x = OUTLINED_FUNCTION_0_5();
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v212);
  if (v209 && OUTLINED_FUNCTION_20_3())
  {
    PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(v209);
    a18 = v49;
    a19 = v50;
    a20 = v51;
  }

  if (CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(a4, &v205, &v204))
  {
    goto LABEL_69;
  }

  v202 = v26;
  v189 = a26;
  HIDWORD(v192) = a24;
  LODWORD(v197) = a23;
  LODWORD(v195) = a22;
  v190 = a21;
  HIDWORD(v195) = CVPixelBufferGetPixelFormatType(v29);
  if (v205)
  {
    v52 = 0;
  }

  else
  {
    v52 = v204 == -1;
  }

  v53 = v52;
  if (v52)
  {
    goto LABEL_23;
  }

  IOSurface = CVPixelBufferGetIOSurface(v29);
  if (v37)
  {
    v66 = IOSurface == 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = !v66;
  if (!a7)
  {
    v68 = *&v193 / v28;
    v69 = *&v194 / v27;
    if (v28 > 4092.0 || v27 > 4092.0)
    {
      v70 = 0.25;
      v71 = HIDWORD(v195) != v200 || v68 < 0.25;
    }

    else
    {
      v70 = 0.25;
      v71 = v68 < 0.25;
    }

    if (!v71 && v69 >= v70)
    {
      if (a23)
      {
        v67 = 0;
      }

      if ((v67 & 1) != 0 || (v68 == 1.0 ? (v102 = v69 == 1.0) : (v102 = 0), v102 ? (v103 = HIDWORD(v195) == v200) : (v103 = 0), v103))
      {
        a4 = 0;
        v25 = 0;
        v202 = 1;
        v104 = 1;
        goto LABEL_140;
      }
    }
  }

  a4 = vcvtad_u64_f64(*&v193);
  v25 = vcvtad_u64_f64(*&v194);
  OUTLINED_FUNCTION_17_1();
  v24 = 2 * v88;
  if (v37)
  {
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_6_4();
    if (CMPhotoSurfacePoolCreatePixelBuffer(v89, v90, a4, v25, v91, v24, v24, v92, v180, v181, v182))
    {
      goto LABEL_69;
    }

LABEL_23:
    v54 = v37;
    destinationBuffer = 0;
    v55 = buffer;
    v37 = MEMORY[0x1E6965D70];
    if (buffer)
    {
      HIDWORD(v185) = v53;
LABEL_25:
      destinationBuffer = v55;
      v56 = *v37;
      propertyValue = CVBufferCopyAttachment(v55, *v37, 0);
LABEL_26:
      a4 = CVBufferCopyAttachment(destinationBuffer, v56, 0);
      v57 = propertyValue;
      IsAGXCompressed = CMPhotoPixelFormatIsAGXCompressed(SHIDWORD(v195));
      IsFullRange = CMPhotoPixelFormatIsFullRange(HIDWORD(v195));
      v63 = v200 != 875836518 && v200 != 1111970369 && v57 == 0 && (IsFullRange | IsAGXCompressed) == 0;
      pixelTransferSessionOut[0] = 0;
      dispatch_semaphore_wait(*(a1 + 4), 0xFFFFFFFFFFFFFFFFLL);
      LODWORD(v37) = v54;
      v202 = v63;
      if (v63)
      {
        os_unfair_lock_lock(a1 + 6);
        if (CFArrayGetCount(*(a1 + 5)) <= 0)
        {
          os_unfair_lock_unlock(a1 + 6);
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 5), 0);
          if (ValueAtIndex)
          {
            v25 = CFRetain(ValueAtIndex);
          }

          else
          {
            v25 = 0;
          }

          pixelTransferSessionOut[0] = v25;
          CFArrayRemoveValueAtIndex(*(a1 + 5), 0);
          os_unfair_lock_unlock(a1 + 6);
          if (v25)
          {
LABEL_103:
            v108 = VTSessionSetProperty(v25, *MEMORY[0x1E6983DB8], propertyValue);
            if (!v108)
            {
              v109 = (a6 - 1) > 2 ? 0 : **(&unk_1E77A1BC0 + (a6 - 1));
              v110 = a7;
              v111 = (HIDWORD(a6) - 1) > 3 ? 0 : **(&unk_1E77A1BD8 + (HIDWORD(a6) - 1));
              v112 = (v110 - 1) > 2 ? 0 : **(&unk_1E77A1BF8 + (v110 - 1));
              v108 = VTSessionSetProperty(v25, *MEMORY[0x1E6983DC0], v109);
              if (!v108)
              {
                v108 = VTSessionSetProperty(v25, *MEMORY[0x1E6983DD8], v111);
                if (!v108)
                {
                  v108 = VTSessionSetProperty(v25, *MEMORY[0x1E6983DE0], v112);
                  if (!v108)
                  {
                    v108 = VTSessionSetProperty(v25, *MEMORY[0x1E6983E40], DictionaryRepresentation);
                    if (!v108)
                    {
                      CMPhotoAddChromaLocationToPixelBufferAccordingToFormat(a25, a25, destinationBuffer);
                      LOBYTE(pixelTransferSessionOut[0]) = 0;
                      if (CMPhotoPixelFormatIsAGXVersatile(SHIDWORD(v195)))
                      {
                        v113 = 1;
                      }

                      else
                      {
                        v113 = CMPhotoPixelFormatIsAGXVersatile(v200) != 0;
                      }

                      v114 = CMPhotoVTPixelTransferSetHWAndSWAndGPUProperties(v25, v195, v197, v113, SHIDWORD(v192), v37, pixelTransferSessionOut);
                      if (v114)
                      {
                        v24 = v114;
                        goto LABEL_251;
                      }

                      v115 = v202;
                      if (LOBYTE(pixelTransferSessionOut[0]))
                      {
                        v115 = 0;
                      }

                      v202 = v115;
                      v116 = VTPixelTransferSessionTransferImage(v25, v29, destinationBuffer);
                      if (v116 == -12905)
                      {
                        PixelFormatType = CVPixelBufferGetPixelFormatType(destinationBuffer);
                        v24 = CMPhotoVTPixelTransferWorkaround(v29, PixelFormatType, 0, 1, v37, v195, v197, SHIDWORD(v192), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&v187, *&v186, &destinationBuffer);
                        v202 = 0;
                      }

                      else
                      {
                        v24 = v116;
                      }

                      if (v24)
                      {
                        goto LABEL_251;
                      }

                      v118 = a4;
                      _removeYCbCrMatrixFromBufferIfNeeded(destinationBuffer);
                      if (CMPhotoPixelBufferContainsYCbCr(destinationBuffer))
                      {
                        if (!v112)
                        {
                          v119 = *MEMORY[0x1E6965F98];
                          v120 = CVBufferCopyAttachment(v29, *MEMORY[0x1E6965F98], 0);
                          if (v120)
                          {
                            v121 = v120;
                            CVBufferSetAttachment(destinationBuffer, v119, v120, kCVAttachmentMode_ShouldPropagate);
                            CFRelease(v121);
                          }
                        }
                      }

                      if (!v111)
                      {
                        v122 = *MEMORY[0x1E6965F30];
                        v123 = CVBufferCopyAttachment(v29, *MEMORY[0x1E6965F30], 0);
                        if (v123)
                        {
                          v124 = v123;
                          CVBufferSetAttachment(destinationBuffer, v122, v123, kCVAttachmentMode_ShouldPropagate);
                          CFRelease(v124);
                        }
                      }

                      a4 = v118;
                      if (v118)
                      {
                        CVBufferSetAttachment(destinationBuffer, v56, v118, kCVAttachmentMode_ShouldPropagate);
                      }

                      else
                      {
                        CMPhotoRemovePixelBufferCLAP(destinationBuffer);
                      }

                      if ((v185 & 0x100000000) != 0)
                      {
                        a7 = 0;
                        LODWORD(v37) = 1;
                        goto LABEL_204;
                      }

                      v104 = 0;
LABEL_140:
                      if (OUTLINED_FUNCTION_20_3())
                      {
                        if (v205 == 90)
                        {
                          a20 = *&v193;
                          a19 = *&v194;
                        }

                        else
                        {
                          a20 = *&v194;
                          if (v205 == 270)
                          {
                            a19 = *&v194;
                            a20 = *&v193;
                          }

                          else
                          {
                            a19 = *&v193;
                          }
                        }
                      }

                      pixelTransferSessionOut[0] = 0;
                      dispatch_semaphore_wait(*(a1 + 7), 0xFFFFFFFFFFFFFFFFLL);
                      v125 = *(a1 + 8);
                      os_unfair_lock_lock(a1 + 12);
                      if (CFArrayGetCount(v125) <= 0)
                      {
                        os_unfair_lock_unlock(a1 + 12);
                      }

                      else
                      {
                        v126 = CFArrayGetValueAtIndex(v125, 0);
                        if (v126)
                        {
                          a7 = CFRetain(v126);
                        }

                        else
                        {
                          a7 = 0;
                        }

                        pixelTransferSessionOut[0] = a7;
                        CFArrayRemoveValueAtIndex(v125, 0);
                        os_unfair_lock_unlock(a1 + 12);
                        if (a7)
                        {
                          goto LABEL_154;
                        }
                      }

                      v127 = VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], pixelTransferSessionOut);
                      if (!v127)
                      {
                        a7 = pixelTransferSessionOut[0];
LABEL_154:
                        v128 = *MEMORY[0x1E6983FF8];
                        pixelTransferSessionOut[0] = *MEMORY[0x1E6983FE8];
                        pixelTransferSessionOut[1] = v128;
                        v129 = *MEMORY[0x1E6984000];
                        pixelTransferSessionOut[2] = *MEMORY[0x1E6983FF0];
                        pixelTransferSessionOut[3] = v129;
                        v130 = VTSessionSetProperty(a7, *MEMORY[0x1E6983D98], pixelTransferSessionOut[v205 % 360 / 90]);
                        if (!v130)
                        {
                          HIDWORD(v195) = v104;
                          v131 = *MEMORY[0x1E695E4D0];
                          v132 = *MEMORY[0x1E695E4C0];
                          v133 = (v204 ? *MEMORY[0x1E695E4C0] : *MEMORY[0x1E695E4D0]);
                          v130 = VTSessionSetProperty(a7, *MEMORY[0x1E6983D80], v133);
                          if (!v130)
                          {
                            v134 = v204 == 1 ? v131 : v132;
                            v130 = VTSessionSetProperty(a7, *MEMORY[0x1E6983D78], v134);
                            if (!v130)
                            {
                              v135 = v197 || v195 == 0;
                              v136 = v135 ? v132 : v131;
                              v130 = VTSessionSetProperty(a7, *MEMORY[0x1E6983D68], v136);
                              if (!v130)
                              {
                                v188 = a4;
                                if (_MergedGlobals_5 != -1)
                                {
                                  dispatch_once(&_MergedGlobals_5, &__block_literal_global_75);
                                }

                                v137 = v37 == 0;
                                v138 = v137 | v197;
                                LODWORD(v185) = v37;
                                if (v138)
                                {
                                  v139 = VTSessionSetProperty(a7, *MEMORY[0x1E6983D60], v132);
                                  if (v139)
                                  {
                                    v24 = v139;
                                    LODWORD(v37) = 1;
                                    goto LABEL_259;
                                  }

                                  LODWORD(v37) = 0;
                                }

                                else
                                {
                                  LODWORD(v37) = 1;
                                }

                                if (qword_1ED6FA628 != -1)
                                {
                                  dispatch_once(&qword_1ED6FA628, &__block_literal_global_81);
                                }

                                v140 = v137 | HIDWORD(v192);
                                if (v140)
                                {
                                  PixelBuffer = VTSessionSetProperty(a7, *MEMORY[0x1E6983D58], v132);
                                  if (PixelBuffer)
                                  {
LABEL_257:
                                    v24 = PixelBuffer;
LABEL_259:
                                    a4 = v188;
                                    goto LABEL_205;
                                  }

                                  LODWORD(v37) = 0;
                                }

                                if (!v209)
                                {
                                  v142 = vcvtad_u64_f64(a19);
                                  v143 = vcvtad_u64_f64(a20);
                                  OUTLINED_FUNCTION_17_1();
                                  v149 = 2 * v148;
                                  if (v185)
                                  {
                                    OUTLINED_FUNCTION_13_3();
                                    OUTLINED_FUNCTION_6_4();
                                    PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(v150, v151, v142, v143, v152, v149, v149, v153, v180, v181, v182);
                                    if (PixelBuffer)
                                    {
                                      goto LABEL_257;
                                    }
                                  }

                                  else
                                  {
                                    v154 = v142;
                                    v155 = v143;
                                    if (!v144)
                                    {
                                      v198 = CMPhotoAlignValue(v142, 2uLL);
                                      v156 = CMPhotoAlignValue(v143, 2uLL);
                                      v154 = v198;
                                      v155 = v156;
                                    }

                                    OUTLINED_FUNCTION_19_1(*MEMORY[0x1E695E480], v200, v154, v155, v144, v145, v146, v147, &v209, v181, v182, pixelBufferOut, v185, v186, v188, v189, v190, v191, v192, v193, v194, v195, DictionaryRepresentation, v154, v155);
                                    if (PixelBuffer)
                                    {
                                      goto LABEL_257;
                                    }

                                    if (v199 != v142 || *v201 != v143)
                                    {
                                      OUTLINED_FUNCTION_31();
                                      OUTLINED_FUNCTION_16_1(v158, v159, v160, v142, v143);
                                    }
                                  }
                                }

                                if ((v195 & 0x100000000) != 0)
                                {
                                  OUTLINED_FUNCTION_0_5();
                                  v24 = OUTLINED_FUNCTION_21_1();
                                  a4 = v188;
                                  if (v24 == -12914)
                                  {
                                    v24 = CMPhotoVTPixelRotationWorkaround(v29, v205, v204, v185, v195, v138, v140, &v209);
                                    LODWORD(v37) = 0;
                                  }

                                  if (v24)
                                  {
                                    goto LABEL_205;
                                  }
                                }

                                else
                                {
                                  CMPhotoGetPixelBufferCLAPAsRect(buffer);
                                  v161 = OUTLINED_FUNCTION_21_1();
                                  a4 = v188;
                                  if (v161)
                                  {
                                    v24 = v161;
                                    goto LABEL_205;
                                  }
                                }

                                _removeYCbCrMatrixFromBufferIfNeeded(v209);
                                if (HIDWORD(v195))
                                {
                                  v162 = v29;
                                }

                                else
                                {
                                  v162 = buffer;
                                }

                                CMPhotoPropagateColorPropertiesFromSourceBuffer(v162, v209);
LABEL_204:
                                v24 = 0;
                                *v189 = v209;
                                v209 = 0;
                                goto LABEL_205;
                              }
                            }
                          }
                        }

                        v24 = v130;
LABEL_252:
                        LODWORD(v37) = 1;
                        goto LABEL_205;
                      }

                      v24 = v127;
                      dispatch_semaphore_signal(*(a1 + 7));
                      if (pixelTransferSessionOut[0])
                      {
                        CFRelease(pixelTransferSessionOut[0]);
                      }

LABEL_251:
                      a7 = 0;
                      goto LABEL_252;
                    }
                  }
                }
              }
            }

            v24 = v108;
            goto LABEL_244;
          }
        }
      }

      v105 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], pixelTransferSessionOut);
      if (!v105)
      {
        if (qword_1ED6FA628 != -1)
        {
          dispatch_once(&qword_1ED6FA628, &__block_literal_global_81);
        }

        if (_MergedGlobals_5 != -1)
        {
          dispatch_once(&_MergedGlobals_5, &__block_literal_global_75);
        }

        v106 = *MEMORY[0x1E695E4C0];
        if (v54)
        {
          v107 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v107 = *MEMORY[0x1E695E4C0];
        }

        VTSessionSetProperty(pixelTransferSessionOut[0], *MEMORY[0x1E6983DF8], v107);
        if (!v54)
        {
          VTSessionSetProperty(pixelTransferSessionOut[0], *MEMORY[0x1E6983DF0], v106);
        }

        VTSessionSetProperty(pixelTransferSessionOut[0], *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
        VTSessionSetProperty(pixelTransferSessionOut[0], *MEMORY[0x1E6983E58], v106);
        v25 = pixelTransferSessionOut[0];
        goto LABEL_103;
      }

      v24 = v105;
      dispatch_semaphore_signal(*(a1 + 4));
      if (pixelTransferSessionOut[0])
      {
        CFRelease(pixelTransferSessionOut[0]);
      }

      v25 = 0;
LABEL_244:
      v163 = v191;
      v29 = DictionaryRepresentation;
      a7 = 0;
      LODWORD(v37) = 1;
      goto LABEL_206;
    }

    if (v209)
    {
      v202 = LODWORD(v28);
      pixelBufferOut = *&v27;
      destinationBuffer = v209;
      v72 = PixelBufferCLAPAsRect;
      PixelBufferSize = CMPhotoGetPixelBufferSize(v209);
      v74 = a19;
      v75 = a18;
      v77 = v76;
      v78 = CFGetAllocator(a1);
      v79 = v77;
      v80 = v75;
      a19 = v74;
      if (CMPhotoCreatePixelBufferCLAPDictionaryFromRect(v78, &propertyValue, PixelBufferSize, v79, v72, v80, v74, a20))
      {
LABEL_69:
        OUTLINED_FUNCTION_8_4();
LABEL_205:
        v163 = v191;
        v29 = DictionaryRepresentation;
        goto LABEL_206;
      }

      HIDWORD(v185) = v53;
      v56 = *v37;
      goto LABEL_26;
    }

    v81 = vcvtad_u64_f64(*&v193);
    v82 = vcvtad_u64_f64(*&v194);
    HIDWORD(v185) = v53;
    if (CMPhotoPixelFormatIsAGXVersatile(v200))
    {
      if ((v81 | v82))
      {
        fig_log_get_emitter();
        v173 = FigSignalErrorAtGM();
        goto LABEL_264;
      }

      v81 >>= 1;
      v82 >>= 1;
    }

    else if (CMPhotoPixelFormatIsAGXVersatile(SHIDWORD(v195)))
    {
      v81 *= 2;
      v82 *= 2;
    }

    OUTLINED_FUNCTION_17_1();
    v168 = 2 * v167;
    if (v54)
    {
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_6_4();
      v173 = CMPhotoSurfacePoolCreatePixelBuffer(v169, v170, v81, v82, v171, v168, v168, v172, v180, v181, v182);
      if (v173)
      {
        goto LABEL_264;
      }
    }

    else
    {
      v174 = v81;
      v175 = v82;
      if (!v166)
      {
        v174 = CMPhotoAlignValue(v81, 2uLL);
        v175 = CMPhotoAlignValue(v82, 2uLL);
      }

      CMPhotoCreateCVPixelBufferNotBackedByIOSurface(*MEMORY[0x1E695E480], v200, v174, v175, v168, v168, v190, 0, &v209, v181, v182, v175, v185, v186, v187, v189, v190, v191, v192, v193, v194, v195, DictionaryRepresentation, v197, v200);
      if (v173)
      {
        goto LABEL_264;
      }

      if (v174 != v81 || pixelBufferOut != v82)
      {
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_16_1(v177, v178, v179, v81, v82);
      }
    }

    v173 = CMPhotoPropagateBayerPatternIfNeeded(v29, v209);
    if (!v173)
    {
      v55 = v209;
      goto LABEL_25;
    }

LABEL_264:
    v24 = v173;
    v25 = 0;
    a4 = 0;
    v202 = 1;
    goto LABEL_244;
  }

  pixelBufferOuta = a1;
  v93 = a6;
  v94 = a7;
  a7 = v53;
  v95 = a4;
  v96 = v25;
  if (!v84)
  {
    v95 = CMPhotoAlignValue(a4, 2uLL);
    v96 = CMPhotoAlignValue(v25, 2uLL);
  }

  OUTLINED_FUNCTION_19_1(*MEMORY[0x1E695E480], v200, v95, v96, v84, v85, v86, v87, &buffer, v181, v182, pixelBufferOuta, v185, v186, v187, a26, a21, v191, v192, v193, v194, v195, DictionaryRepresentation, v197, v200);
  if (!v97)
  {
    v98 = v95 == a4 && v96 == v25;
    LODWORD(v53) = a7;
    a7 = v94;
    a6 = v93;
    a1 = pixelBufferOut;
    if (!v98)
    {
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_16_1(v99, v100, v101, a4, v25);
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_8_4();
  v163 = v191;
  v29 = DictionaryRepresentation;
  a1 = pixelBufferOut;
LABEL_206:
  if (cf)
  {
    CFRelease(cf);
  }

  if (buffer)
  {
    CFRelease(buffer);
  }

  if (propertyValue)
  {
    CFRelease(propertyValue);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (!v163 && v209)
  {
    CFRelease(v209);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (a7)
  {
    if (v37)
    {
      v164 = *(a1 + 8);
      os_unfair_lock_lock(a1 + 12);
      CFArrayInsertValueAtIndex(v164, 0, a7);
      os_unfair_lock_unlock(a1 + 12);
    }

    dispatch_semaphore_signal(*(a1 + 7));
    CFRelease(a7);
  }

  if (v25)
  {
    if (v202)
    {
      os_unfair_lock_lock(a1 + 6);
      CFArrayInsertValueAtIndex(*(a1 + 5), 0, v25);
      os_unfair_lock_unlock(a1 + 6);
    }

    dispatch_semaphore_signal(*(a1 + 4));
    CFRelease(v25);
  }

  return v24;
}

uint64_t CMPhotoVTPixelTransferSetHWAndSWAndGPUProperties(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, _BYTE *a7)
{
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_4_4();
  v18 = v16;
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17 == 0;
  }

  v21 = *MEMORY[0x1E695E4D0];
  v22 = *MEMORY[0x1E695E4C0];
  if (v20)
  {
    v23 = *MEMORY[0x1E695E4C0];
  }

  else
  {
    v23 = *MEMORY[0x1E695E4D0];
  }

  result = VTSessionSetProperty(v16, *MEMORY[0x1E6983E00], v23);
  if (!result)
  {
    if (_MergedGlobals_5 != -1)
    {
      dispatch_once(&_MergedGlobals_5, &__block_literal_global_75);
    }

    if (v10 >= v9)
    {
      v25 = v9;
    }

    else
    {
      v25 = v10;
    }

    v26 = v25 < 16.0;
    if (v8 >= v7)
    {
      v27 = v7;
    }

    else
    {
      v27 = v8;
    }

    if (v27 < 4.0)
    {
      v26 = 1;
    }

    v20 = a6 == 0;
    v28 = a6 == 0;
    if (v20)
    {
      v26 = 1;
    }

    v29 = v26 | a3;
    if (v29)
    {
      result = VTSessionSetProperty(v18, *MEMORY[0x1E6983DF8], v22);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (qword_1ED6FA620 != -1)
      {
        dispatch_once(&qword_1ED6FA620, &__block_literal_global_78);
      }

      if (a4)
      {
        v30 = v22;
      }

      else
      {
        v30 = v21;
      }

      v31 = cmpweak_kVTPixelTransferPropertyKey_UseOptimalMSRCoefficients();
      VTSessionSetProperty(v18, v31, v30);
    }

    if (qword_1ED6FA628 != -1)
    {
      dispatch_once(&qword_1ED6FA628, &__block_literal_global_81);
    }

    v32 = v28 | a5;
    if (v32)
    {
      result = VTSessionSetProperty(v18, *MEMORY[0x1E6983DF0], v22);
      if (!a7 || result)
      {
        return result;
      }
    }

    else if (!a7)
    {
      return 0;
    }

    result = 0;
    *a7 = v29 | v32;
  }

  return result;
}

uint64_t CodecSessionPool_GetIdleSessionSlots(CFAllocatorRef *a1, const void *a2, int a3, CFMutableArrayRef *a4)
{
  Value = CFDictionaryGetValue(a1[2], a2);
  v9 = Value;
  if (!a3 || Value)
  {
    goto LABEL_5;
  }

  Mutable = CFArrayCreateMutable(*a1, 0, 0);
  if (Mutable)
  {
    v9 = Mutable;
    CFDictionarySetValue(a1[2], a2, Mutable);
    CFRelease(v9);
LABEL_5:
    result = 0;
    *a4 = v9;
    return result;
  }

  return 4294950305;
}

uint64_t _createSampleBufferFromPictureReader(CFTypeRef cf, const void *a2, void *a3, BOOL *a4)
{
  if (cf)
  {
    v8 = CFGetAllocator(cf);
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0uLL;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v10 = 4294950306;
  v47 = 0;
  if (cf && a3)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v11)
    {
      v12 = v11(cf, &v49, &v48, &v47, &v53, 0);
      if (v12)
      {
        goto LABEL_78;
      }

      if (a2)
      {
        v13 = CFRetain(a2);
        v52 = v13;
        if (CMFormatDescriptionGetMediaSubType(v13) != 1635135537)
        {
          goto LABEL_16;
        }

LABEL_10:
        v12 = _copyMultilayerProperties(v8, cf, &v51 + 1, &v51, &v50, a4);
        if (v12)
        {
          goto LABEL_78;
        }

        if (*(&v51 + 1) && CMPhotoCFNumberGetInt32(*(&v51 + 1)) == 0xFFFF)
        {
          v14 = v50 != 0;
          if (*(&v51 + 1))
          {
            CFRelease(*(&v51 + 1));
            *(&v51 + 1) = 0;
          }
        }

        else
        {
LABEL_16:
          v14 = 0;
        }

        v46 = 0;
        v12 = CMPhotoPictureReaderCreateContiguousBlockBufferFromChunks(v8, v49, v48, v47, v53, v14, &v46, &v54);
        if (v12)
        {
          goto LABEL_78;
        }

        sampleSizeArray = CMBlockBufferGetDataLength(v54);
        if (v50)
        {
          v15 = v46 == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (!v15)
        {
          v17 = v49;
          if (v49 >= 1)
          {
            v18 = 0;
            v19 = v47;
            while (1)
            {
              v21 = *v19++;
              v20 = v21;
              if (__CFADD__(v18, v21))
              {
                break;
              }

              v18 = (v18 + v20);
              if (!--v17)
              {
                goto LABEL_35;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_1();
            v12 = FigSignalErrorAtGM();
            goto LABEL_78;
          }

          v18 = 0;
LABEL_35:
          v24 = 0;
          v25 = 0;
          do
          {
            v9 = v24;
            Count = v50;
            if (v50)
            {
              Count = CFArrayGetCount(v50);
            }

            if (v25 >= Count)
            {
              break;
            }

            LODWORD(blockBufferOut) = 0;
            FigCFArrayGetInt32AtIndex();
            v24 = v18;
            ++v25;
          }

          while (v18 <= v46);
          if (!v9)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_2_1();
            v41 = FigSignalErrorAtGM();
LABEL_81:
            v10 = v41;
            goto LABEL_60;
          }

          blockBufferOut = 0;
          v12 = CMBlockBufferCreateWithBufferReference(v8, v54, 0, v9, 0, &blockBufferOut);
          if (v12)
          {
LABEL_78:
            v10 = v12;
            v9 = 0;
            goto LABEL_60;
          }

          if (v54)
          {
            CFRelease(v54);
          }

          v54 = blockBufferOut;
          sampleSizeArray = v9;
        }

        memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
        CMTimeMake(&sampleTimingArray.duration, 1, 1);
        sampleTimingArray.presentationTimeStamp = **&MEMORY[0x1E6960CC0];
        sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_84_0();
        v12 = CMSampleBufferCreate(v27, v28, v29, v30, v31, v32, v33, v34, &sampleTimingArray, 1, &sampleSizeArray, &v55);
        if (!v12)
        {
          if (v51 == 0)
          {
            v35 = v16;
          }

          else
          {
            v35 = 1;
          }

          if (v35 != 1)
          {
            v9 = 0;
            goto LABEL_59;
          }

          v36 = OUTLINED_FUNCTION_17();
          Mutable = CFDictionaryCreateMutable(v36, v37, v38, v39);
          v9 = Mutable;
          if (!Mutable)
          {
            v10 = 4294950305;
            goto LABEL_60;
          }

          if (*(&v51 + 1))
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6972328], *(&v51 + 1));
          }

          if (v51)
          {
            CFDictionarySetValue(v9, *MEMORY[0x1E6972340], v51);
          }

          if (!v16 || (v41 = CMPhotoCFDictionarySetInt32(v9, 0x1F191BA80, 1), !v41))
          {
            CMSetAttachments(v55, v9, 1u);
LABEL_59:
            v10 = 0;
            *a3 = v55;
            v55 = 0;
            goto LABEL_60;
          }

          goto LABEL_81;
        }

        goto LABEL_78;
      }

      FigBaseObject = FigPictureReaderGetFigBaseObject();
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v23)
      {
        v12 = v23(FigBaseObject, *MEMORY[0x1E69722F8], v8, &v52);
        if (v12)
        {
          goto LABEL_78;
        }

        v13 = v52;
        goto LABEL_10;
      }
    }

    v9 = 0;
    v10 = 4294954514;
  }

LABEL_60:
  free(v48);
  free(v47);
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

  if (v52)
  {
    CFRelease(v52);
  }

  if (*(&v51 + 1))
  {
    CFRelease(*(&v51 + 1));
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t _getTileGeometryFromPictureTileCursorService(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_54_0();
  v8 = CFGetAllocator(v7);
  dict = 0;
  v9 = 0uLL;
  size = 0;
  if (v5 | a4)
  {
    CMBaseObject = FigPictureTileCursorServiceGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
      goto LABEL_19;
    }

    v12 = v11(CMBaseObject, *MEMORY[0x1E69723D8], v8, &dict);
    if (v12)
    {
      goto LABEL_30;
    }

    if (!CGSizeMakeWithDictionaryRepresentation(dict, &size))
    {
LABEL_29:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19();
      v12 = FigSignalErrorAtGM();
      goto LABEL_30;
    }

    *&v9 = OUTLINED_FUNCTION_91_0(size);
    if (dict)
    {
      v19 = v9;
      CFRelease(dict);
      v9 = v19;
      dict = 0;
    }
  }

  if (v4 | a4)
  {
    v20 = v9;
    v13 = FigPictureTileCursorServiceGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v12 = v14(v13, *MEMORY[0x1E69723D0], v8, &dict);
      if (!v12)
      {
        if (CGSizeMakeWithDictionaryRepresentation(dict, &size))
        {
          v15 = vcvtad_u64_f64(size.width);
          if (v15)
          {
            v16 = vcvtad_u64_f64(size.height);
            if (v16)
            {
              if (!(v15 >> 16) && v16 < 0x10000)
              {
                if (dict)
                {
                  CFRelease(dict);
                  dict = 0;
                }

                v9 = v20;
                if (!v5)
                {
                  goto LABEL_22;
                }

                goto LABEL_21;
              }
            }
          }
        }

        goto LABEL_29;
      }

LABEL_30:
      v17 = v12;
      goto LABEL_26;
    }

LABEL_19:
    v17 = 4294954514;
    goto LABEL_26;
  }

  v16 = 0;
  v15 = 0;
  if (v5)
  {
LABEL_21:
    *v5 = v9;
  }

LABEL_22:
  if (v4)
  {
    *v4 = v15;
    v4[1] = v16;
  }

  v17 = 0;
  if (a4)
  {
    *a4 = v15 * v9;
    *(a4 + 8) = v16 * *(&v9 + 1);
  }

LABEL_26:
  if (dict)
  {
    CFRelease(dict);
  }

  return v17;
}

uint64_t CMPhotoCodecSessionPoolCreateDecompressionSession(CFTypeRef cf, UInt8 a2, uint64_t a3, const opaqueCMFormatDescription *a4, const void *a5, uint64_t a6, uint64_t a7, void *a8, _BYTE *a9)
{
  if (cf)
  {
    v16 = cf;
    supportedPropertyDictionaryOut = 0;
    session = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_9(&CMPhotoCodecSessionPoolGetDefault_onceToken);
    v16 = defaultPool;
    supportedPropertyDictionaryOut = 0;
    session = 0;
    if (!defaultPool)
    {
      MutableCopy = 0;
      v18 = 4294950305;
      goto LABEL_54;
    }
  }

  if (!a8)
  {
    MutableCopy = 0;
LABEL_51:
    v18 = 0;
    goto LABEL_52;
  }

  MutableCopy = 0;
  v18 = 4294950306;
  if (a4)
  {
    v58 = a6;
    v59 = a7;
    if (a6)
    {
      v19 = CFGetAllocator(v16);
      bytes = a2;
      *v64 = a3;
      MediaSubType = CMFormatDescriptionGetMediaSubType(a4);
      Extension = CMFormatDescriptionGetExtension(a4, *MEMORY[0x1E69600A0]);
      if (!Extension)
      {
        goto LABEL_34;
      }

      switch(MediaSubType)
      {
        case 0x61763031u:
          Value = CFDictionaryGetValue(Extension, @"av1C");
          if (!Value)
          {
            goto LABEL_34;
          }

          break;
        case 0x68766331u:
          Value = CFDictionaryGetValue(Extension, @"hvcC");
          if (!Value)
          {
            goto LABEL_34;
          }

          break;
        case 0x61766331u:
          Value = CFDictionaryGetValue(Extension, @"avcC");
          if (!Value)
          {
            goto LABEL_34;
          }

          break;
        default:
          goto LABEL_34;
      }

      v23 = Value;
      v24 = CFGetTypeID(Value);
      if (v24 == CFDataGetTypeID())
      {
        MutableCopy = CFDataCreateMutableCopy(v19, 0, v23);
        if (!MutableCopy)
        {
          goto LABEL_60;
        }

        goto LABEL_27;
      }

      v25 = CFGetTypeID(v23);
      if (v25 == CFArrayGetTypeID())
      {
        Mutable = CFDataCreateMutable(v19, 0);
        if (!Mutable)
        {
LABEL_60:
          MutableCopy = 0;
          v18 = 4294950305;
          goto LABEL_52;
        }

        MutableCopy = Mutable;
        if (CFArrayGetCount(v23) >= 1)
        {
          v57 = a8;
          v27 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v23, v27);
            if (!ValueAtIndex)
            {
              break;
            }

            v29 = ValueAtIndex;
            v30 = CFGetTypeID(ValueAtIndex);
            if (v30 != CFDataGetTypeID())
            {
              break;
            }

            BytePtr = CFDataGetBytePtr(v29);
            Length = CFDataGetLength(v29);
            CFDataAppendBytes(MutableCopy, BytePtr, Length);
            if (++v27 >= CFArrayGetCount(v23))
            {
              a8 = v57;
              goto LABEL_27;
            }
          }

          v18 = 4294950194;
          a8 = v57;
          goto LABEL_47;
        }

LABEL_27:
        if (!a5)
        {
          v34 = 0;
          goto LABEL_30;
        }

        Data = CFPropertyListCreateData(v19, a5, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        if (Data)
        {
          v34 = Data;
          v35 = CFDataGetBytePtr(Data);
          v36 = CFDataGetLength(v34);
          CFDataAppendBytes(MutableCopy, v35, v36);
LABEL_30:
          CFDataAppendBytes(MutableCopy, &bytes, 1);
          if (CMFormatDescriptionGetExtension(a4, *MEMORY[0x1E6965D70]))
          {
            CleanAperture = CMVideoFormatDescriptionGetCleanAperture(a4, 1u);
            y = CleanAperture.origin.y;
            height = CleanAperture.size.height;
            *v62 = vcvtq_u64_f64(vrndaq_f64(CleanAperture.origin));
            v63 = vcvtq_u64_f64(vrndaq_f64(CleanAperture.size));
            CFDataAppendBytes(MutableCopy, v62, 32);
          }

          CFDataAppendBytes(MutableCopy, v64, 8);
          if (v34)
          {
            CFRelease(v34);
          }

          goto LABEL_36;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_0();
        v18 = FigSignalErrorAtGM();
LABEL_47:
        CFRelease(MutableCopy);
LABEL_35:
        MutableCopy = 0;
        if (v18)
        {
          goto LABEL_52;
        }

LABEL_36:
        v39 = OUTLINED_FUNCTION_6_6();
        v45 = CMPhotoCodecSessionPool_CreateSession(v39, v40, v41, v58, v59, v42, v43, v44, v55);
        if (!v45)
        {
          v46 = session;
          v47 = VTSessionCopySupportedPropertyDictionary(session, &supportedPropertyDictionaryOut);
          if (v47 == -12900 || !v47)
          {
LABEL_39:
            *a8 = v46;
            session = 0;
            if (a9)
            {
              v18 = 0;
              *a9 = 0;
              goto LABEL_52;
            }

            goto LABEL_51;
          }

          v45 = CMPhotoCodecSessionPoolRecycleSession(v16, v46, 1);
          if (!v45)
          {
            v45 = CMPhotoCodecSessionPoolFlush(v16, 3);
            if (!v45)
            {
              v48 = OUTLINED_FUNCTION_6_6();
              v45 = CMPhotoCodecSessionPool_CreateSession(v48, v49, v50, v58, v59, v51, v52, v53, v56);
              if (!v45)
              {
                v46 = session;
                goto LABEL_39;
              }
            }
          }
        }

        v18 = v45;
        goto LABEL_52;
      }

LABEL_34:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      v18 = FigSignalErrorAtGM();
      goto LABEL_35;
    }
  }

LABEL_52:
  if (supportedPropertyDictionaryOut)
  {
    CFRelease(supportedPropertyDictionaryOut);
  }

LABEL_54:
  if (session)
  {
    CFRelease(session);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v18;
}

uint64_t _getItemProperties(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, _OWORD *a7, int *a8)
{
  v14 = a2;
  v42 = 0;
  cf = 0;
  v41 = 0;
  v39 = 0;
  ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(a2, &v39);
  if (ItemTypeFromReader)
  {
    goto LABEL_38;
  }

  v38 = 1;
  v36 = 0u;
  v37 = 0u;
  OUTLINED_FUNCTION_7_13();
  if (v17)
  {
    v35 = 0;
    v34 = 0;
    v18 = v14;
    if (a4)
    {
      if (FigCFDictionaryGetValue())
      {
        CMPhotoCFDictionaryGetIntIfPresent();
        CMPhotoCFDictionaryGetBooleanIfPresent();
      }

      v18 = v14;
    }

    v25 = OUTLINED_FUNCTION_74_0();
    ItemTypeFromReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v25, v26, v27, v28);
    if (ItemTypeFromReader)
    {
      goto LABEL_38;
    }

    v23 = a1;
    v24 = v18;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_28_3();
  if (!v17)
  {
    v19 = OUTLINED_FUNCTION_74_0();
    ItemTypeFromReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v19, v20, v21, v22);
    if (ItemTypeFromReader)
    {
      goto LABEL_38;
    }

    v23 = a1;
    v24 = v14;
LABEL_16:
    ItemTypeFromReader = _getImageOrientation(v23, v24, a3, &v38);
    if (!ItemTypeFromReader)
    {
      goto LABEL_17;
    }

LABEL_38:
    v31 = ItemTypeFromReader;
    goto LABEL_31;
  }

  ItemTypeFromReader = CMPhotoPictureReaderCopyBaseReaderAndPropertiesForDerivedPicture(v14, &v42, &v36, &v38);
  if (ItemTypeFromReader)
  {
    goto LABEL_38;
  }

  ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(v42, &v39);
  if (ItemTypeFromReader)
  {
    goto LABEL_38;
  }

  v14 = v42;
LABEL_17:
  v33 = v37;
  OUTLINED_FUNCTION_24_1();
  if (v17)
  {
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v29)
    {
      v31 = 4294954514;
      goto LABEL_31;
    }

    ItemTypeFromReader = v29(v14, &v41);
    if (ItemTypeFromReader)
    {
      goto LABEL_38;
    }

    ItemTypeFromReader = _getTileGeometryFromPictureTileCursorService(v41, 0, &v33, 0);
    if (ItemTypeFromReader)
    {
      goto LABEL_38;
    }
  }

  if (a5)
  {
    *a5 = v39;
  }

  if (a6)
  {
    v30 = v37;
    *a6 = v36;
    *(a6 + 16) = v30;
  }

  if (a7)
  {
    *a7 = v33;
  }

  v31 = 0;
  if (a8)
  {
    *a8 = v38;
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v31;
}

uint64_t CMPhotoDecompressionContainerCopySampleBufferForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a4)
  {
    return 0;
  }

  TileIteratorForIndexWithOptions = CMPhotoDecompressionContainerCreateTileIteratorForIndexWithOptions(a1);
  if (!TileIteratorForIndexWithOptions)
  {
    return _copySampleBufferFromIterator(0, a4);
  }

  return TileIteratorForIndexWithOptions;
}

uint64_t _callback_CreateDecompressionSession(uint64_t a1, const __CFAllocator **a2)
{
  v3 = *a2;
  v2 = a2[1];
  CMVideoFormatDescriptionGetCleanAperture(v2, 1u);
  Mutable = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v5 = Mutable;
  CMFormatDescriptionGetMediaSubType(v2);
  OUTLINED_FUNCTION_7_0();
  if (v7)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v8 = VTTileDecompressionSessionCreate();
    OUTLINED_FUNCTION_7_0();
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v6)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v8 = VTDecompressionSessionCreateWithOptions();
    OUTLINED_FUNCTION_7_0();
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  kdebug_trace();
LABEL_15:
  CFRelease(v5);
  return v8;
}

CGImageRef OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const CGFloat *a9, BOOL a10, CGColorRenderingIntent a11)
{

  return CGImageCreate(v13, v16, a3, v17, v15, v12, v11, v14, a9, a10, a11);
}

uint64_t _getEncoderNativePixelFormatForIndex(void *a1, uint64_t a2, int *a3)
{
  cf = 0;
  sbuf = 0;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  if (!a3)
  {
    return 0;
  }

  if (!a1[6])
  {
LABEL_14:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    v5 = FigSignalErrorAtGM();
  }

  else
  {
    v10 = -1;
    v5 = CMPhotoDecompressionContainerInternalToExternalIndexAndCopyAlternateOptions(a1, a2, &v10, 0, &cf);
    if (!v5)
    {
      NativePixelFormatFromFormatDescription = CMPhotoDecompressionContainerCopySampleBufferForIndexWithOptions(a1, v10, cf, &sbuf);
      v7 = sbuf;
      if (!NativePixelFormatFromFormatDescription)
      {
        FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
        NativePixelFormatFromFormatDescription = CMPhotoDecompressionUtilityGetNativePixelFormatFromFormatDescription(FormatDescription, sbuf, a3);
        v7 = sbuf;
      }

      if (v7)
      {
        CFRelease(v7);
      }

      goto LABEL_9;
    }
  }

  NativePixelFormatFromFormatDescription = v5;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return NativePixelFormatFromFormatDescription;
}

uint64_t CMPhotoDecompressionUtilityGetNativePixelFormatFromFormatDescription(const opaqueCMFormatDescription *a1, opaqueCMSampleBuffer *a2, int *a3)
{
  v19 = 0;
  v18 = 0;
  v17 = 1;
  v3 = 4294950306;
  if (!a1 || !a3)
  {
    return v3;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaSubType == 1953325424 || MediaSubType == 1768912492)
  {
    return 0;
  }

  v9 = MediaSubType;
  if (a2 && MediaSubType == 1635135537)
  {
    v16 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = *"";
    v15[2] = __CMPhotoDecompressionUtilityGetNativePixelFormatFromFormatDescription_block_invoke;
    v15[3] = &__block_descriptor_tmp_15;
    v15[4] = a2;
    v3 = CMPhotoDecompressionContainerCreateCorrectedAV1FormatDescription(a1, v15, 0, &v16);
    if (v3)
    {
      return v3;
    }

    v10 = v16;
  }

  else
  {
    v11 = CFRetain(a1);
    v10 = v11;
    if (v9 == 1936484717)
    {
      LODWORD(v16) = 0;
      SlimPixelFormatAndFlavorFromFormatDescription = CMPhotoGetSlimPixelFormatAndFlavorFromFormatDescription(v11, a3, &v16);
      if (!SlimPixelFormatAndFlavorFromFormatDescription)
      {
        if (v16 == 5 && !CMPhotoIsPixelFormatSupportedBySLIM(*a3, 5))
        {
          v3 = 4294950298;
          if (!v10)
          {
            return v3;
          }
        }

        else
        {
          v3 = 0;
          if (!v10)
          {
            return v3;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  SlimPixelFormatAndFlavorFromFormatDescription = CMPhotoGetInfoFromFormatDescription(v10, a2, 0, 0, &v17, &v18, &v19 + 1, &v19, 0, 0, 0, 0);
  if (!SlimPixelFormatAndFlavorFromFormatDescription)
  {
    if (v18 == 6 || v19 == HIBYTE(v19))
    {
      SlimPixelFormatAndFlavorFromFormatDescription = CMPhotoGetYUVPixelFormatForParameters(v18, HIBYTE(v19), v17, 0, 0, 0, 1, a3);
    }

    else
    {
      fig_log_get_emitter();
      SlimPixelFormatAndFlavorFromFormatDescription = FigSignalErrorAtGM();
    }
  }

LABEL_24:
  v3 = SlimPixelFormatAndFlavorFromFormatDescription;
  if (v10)
  {
LABEL_25:
    CFRelease(v10);
  }

  return v3;
}

uint64_t CMPhotoDecompressionSessionGetPictureCollectionCodecPool(uint64_t a1, void *a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 288);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16)
{

  _setVUITripletsIfMatching(v18, v16, v19, a15, a16, v17);
}

uint64_t _getExifCountForIndex(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray **a4)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (a4)
    {
      Count = *(a1 + 320);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      *a4 = Count;
    }

    return 0;
  }
}

uint64_t _getExifCountForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void _getExifCountForIndex_2(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

void CMPhotoDecompressionContainerGetXMPCountForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v5, v6, v7, v8, v9, v10, v11);
    if (!v12)
    {
      OUTLINED_FUNCTION_13_12();
      if (*(v13 + 264))
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

uint64_t _getXMPCountForIndex(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray **a4)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (a4)
    {
      Count = *(a1 + 328);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      *a4 = Count;
    }

    return 0;
  }
}

uint64_t _getXMPCountForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

void _getXMPCountForIndex_2(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_1_10(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    v9 = _parseXMPIfNeeded();
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

uint64_t CMPhotoDecompressionContainerCreateTileIteratorForIndexWithOptions(uint64_t a1)
{
  v19 = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_25_5();
  v3 = v2;
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_21();
  CMPhotoDecompressionContainerExternalToInternalIndex(v4, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    return v11;
  }

  v12 = _allocateTileIterator(v3, &v19);
  v13 = v19;
  if (v12)
  {
    v16 = v12;
    goto LABEL_13;
  }

  v19[3] = v18;
  OUTLINED_FUNCTION_13_12();
  v15 = *(v14 + 240);
  if (!v15)
  {
    v16 = 4294950302;
LABEL_8:
    CFRelease(v13);
    return v16;
  }

  v16 = v15(v3, 0);
  v13 = v19;
  if (v16)
  {
LABEL_13:
    if (!v13)
    {
      return v16;
    }

    goto LABEL_8;
  }

  *v1 = v19;
  return v16;
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return _os_log_send_and_compose_impl();
}

void *OUTLINED_FUNCTION_7_12()
{

  return malloc_type_calloc(1uLL, 0x30uLL, 0x10200401705F15EuLL);
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t a1, const void *a2)
{

  return _getBoolValue_0(v2, a2, 0);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_7_21(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_7_25()
{

  return kdebug_trace();
}

uint64_t _allocateTileIterator(CFTypeRef cf, void *a2)
{
  result = 4294950306;
  if (cf && a2)
  {
    CFGetAllocator(cf);
    pthread_once(&CMPhotoDecompressionTileIteratorGetTypeID_onceToken, RegisterCMPhotoDecompressionTileIterator);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      v7 = CFRetain(cf);
      result = 0;
      v6[2] = v7;
      v6[3] = -1;
      v6[4] = -1;
      v6[5] = -1;
      *a2 = v6;
    }

    else
    {
      return 4294950305;
    }
  }

  return result;
}

double CMPhotoDecompressionTileIteratorClass_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _initTileIteratorForIndex(void *a1, uint64_t a2, uint64_t *a3)
{
  v20 = 0;
  v5 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (!v5)
  {
    _initTileIteratorForIndex_cold_1(&v21);
    v17 = v21;
    goto LABEL_19;
  }

  v6 = a3[5];
  if (v6 == -1)
  {
    v10 = a3[4];
    if (v10 == -1)
    {
      ValueAtIndex = a1[10];
      goto LABEL_13;
    }

    Count = a1[12];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v10 <= Count)
    {
      v8 = a1[12];
      v9 = a3[4];
      goto LABEL_12;
    }

LABEL_28:
    v17 = 4294950306;
    goto LABEL_19;
  }

  v7 = a1[11];
  if (v7)
  {
    v7 = CFArrayGetCount(v7);
  }

  if (v6 > v7)
  {
    goto LABEL_28;
  }

  v8 = a1[11];
  v9 = a3[5];
LABEL_12:
  ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
LABEL_13:
  v13 = FigSimpleMutexLock();
  if (v13)
  {
    v17 = v13;
    goto LABEL_19;
  }

  v14 = _moveCursorToPosition_0(ValueAtIndex[2], ValueAtIndex + 3, a3[3]);
  if (v14)
  {
    goto LABEL_27;
  }

  v15 = ValueAtIndex[2];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v17 = 4294954514;
    goto LABEL_21;
  }

  v14 = v16(v15, &v20);
  if (v14)
  {
LABEL_27:
    v17 = v14;
  }

  else
  {
    v17 = FigSimpleMutexUnlock();
    if (!v17)
    {
      *v5 = v20;
      a3[6] = &_initTileIteratorForIndex_vtable_0;
      a3[7] = v5;
      v5 = 0;
LABEL_19:
      free(v5);
      return v17;
    }
  }

LABEL_21:
  FigSimpleMutexUnlock();
  v18 = v20;
  free(v5);
  if (v18)
  {
    CFRelease(v18);
  }

  return v17;
}

uint64_t _initTileIteratorForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CMPhotoSoftwareJFIFTileIteratorCreate();
  if (!result)
  {
    *(a3 + 48) = &CMPhotoSoftwareJFIFTileIteratorVTable;
  }

  return result;
}

uint64_t _initTileIteratorForIndex_1(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = 0;
  cf = 0;
  v22 = 0;
  v4 = *(a1 + 48);
  v5 = a3[3];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    goto LABEL_25;
  }

  ItemTypeFromReader = v6(v4, v5, &cf, 0);
  if (ItemTypeFromReader)
  {
    goto LABEL_33;
  }

  if (a3[5] != -1)
  {
    v21 = 0;
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v8 = OUTLINED_FUNCTION_73_0();
      ItemTypeFromReader = v9(v8);
      if (ItemTypeFromReader)
      {
        goto LABEL_33;
      }

LABEL_10:
      if (cf)
      {
        CFRelease(cf);
      }

      v11 = v21;
      cf = v21;
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v10 = a3[4];
  v11 = cf;
  if (v10 != -1)
  {
    v21 = 0;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v12)
    {
      ItemTypeFromReader = v12(v11, v10, &v21);
      if (ItemTypeFromReader)
      {
        goto LABEL_33;
      }

      goto LABEL_10;
    }

LABEL_25:
    v18 = 4294954514;
    goto LABEL_26;
  }

LABEL_13:
  v20 = 0;
  ItemTypeFromReader = CMPhotoPictureReaderGetItemTypeFromReader(v11, &v20);
  if (ItemTypeFromReader)
  {
    goto LABEL_33;
  }

  v13 = cf;
  if (v20 != 1768187246)
  {
    goto LABEL_19;
  }

  v21 = 0;
  ItemTypeFromReader = CMPhotoPictureReaderCopyBaseReader(cf, 1768187246, &v21);
  if (ItemTypeFromReader)
  {
LABEL_33:
    v18 = ItemTypeFromReader;
    goto LABEL_26;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v13 = v21;
  cf = v21;
LABEL_19:
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    goto LABEL_25;
  }

  ItemTypeFromReader = v14(v13, &v23);
  if (ItemTypeFromReader)
  {
    goto LABEL_33;
  }

  v15 = v23;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    goto LABEL_25;
  }

  ItemTypeFromReader = v16(v15, &v22);
  if (ItemTypeFromReader)
  {
    goto LABEL_33;
  }

  v17 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v17)
  {
    v18 = 0;
    *v17 = v22;
    v22 = 0;
    a3[6] = &_initTileIteratorForIndex_vtable;
    a3[7] = v17;
  }

  else
  {
    v18 = 4294950305;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v18;
}

uint64_t CMPhotoDecompressionTileIteratorReset(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = **(a1 + 48);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

uint64_t _copySampleBufferFromIterator(uint64_t a1, uint64_t a2)
{
  result = 4294950306;
  if (a1)
  {
    if (a2)
    {
      v4 = OUTLINED_FUNCTION_17();
      result = CMPhotoDecompressionTileIteratorReset(v4);
      if (!result)
      {

        return CMPhotoDecompressionTileIteratorCopyTileSampleBuffer(a1);
      }
    }
  }

  return result;
}

uint64_t TileIterator_reset(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = *(a1 + 56);
  if (theDict && CFDictionaryContainsKey(theDict, @"TileSize"))
  {
    TileIterator_reset_cold_1(&v6);
    return v6;
  }

  else
  {
    v3 = *v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {

      return v4(v3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t CMPhotoDecompressionTileIteratorCopyTileSampleBuffer(uint64_t a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_1_0();
  }

  v1 = *(*(a1 + 48) + 32);
  if (v1)
  {
    return v1();
  }

  else
  {
    return OUTLINED_FUNCTION_0_13();
  }
}

void CMPhotoDecompressionTileIteratorClass_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2[4] + 248);
  if (!v3 || (v3(), (v2 = *(a1 + 16)) != 0))
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t _finalizeTileIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    CFRelease(v3);
    v4 = *(a2 + 56);
    if (v4)
    {
      *(a2 + 56) = 0;
      free(v4);
    }
  }

  *(a2 + 48) = 0;
  return 0;
}

uint64_t _finalizeTileIterator_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    if (!*v3 || (CFRelease(*v3), *v3 = 0, (v3 = *(a2 + 56)) != 0))
    {
      *(a2 + 56) = 0;
      free(v3);
    }
  }

  *(a2 + 48) = 0;
  return 0;
}

uint64_t _finalizeTileIterator_1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    if (!*v3 || (CFRelease(*v3), *v3 = 0, (v3 = *(a2 + 56)) != 0))
    {
      *(a2 + 56) = 0;
      free(v3);
    }
  }

  *(a2 + 48) = 0;
  return 0;
}

void _destroyAuxMetadataCache(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 64) = 0;
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 56) = 0;
    }

    *(a1 + 32) = 0;
  }
}

uint64_t _createContiguousBufferFromChunks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, __CFData **a10)
{
  v10 = MEMORY[0x1EEE9AC00]();
  v65 = v17;
  dataPointerOut[512] = *MEMORY[0x1E69E9840];
  v18 = 4294950306;
  if (!v13)
  {
    return v18;
  }

  if (!a10)
  {
    return v18;
  }

  v19 = v14;
  if ((v14 - 3) < 0xFFFFFFFE)
  {
    return v18;
  }

  v20 = v16;
  v21 = v15;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  v25 = v10;
  if ((v14 == 1 || !v16) && (!v15 || !v16))
  {
    if (v11 >= 1)
    {
      v26 = 0;
      v27 = v12;
      v28 = v11;
      while (1)
      {
        v30 = *v27;
        v27 = (v27 + 8);
        v29 = v30;
        if (__CFADD__(v26, v30))
        {
          goto LABEL_105;
        }

        v26 += v29;
        if (!--v28)
        {
          goto LABEL_14;
        }
      }
    }

    v26 = 0;
LABEL_14:
    v66 = 0;
    v31 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v31)
    {
      v32 = v31(v22, 0, &v66);
      if (!v32)
      {
        if (v26 <= v66 || (v26 = v66, v21))
        {
          if (v19 == 1)
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              return 4294950190;
            }

            if (v20)
            {
              v36 = 0;
            }

            else
            {
              v36 = v26;
            }

            Mutable = CFDataCreateMutable(v25, v36);
            if (Mutable)
            {
              v38 = Mutable;
              CFDataSetLength(Mutable, v26);
              theData = v38;
              MutableBytePtr = CFDataGetMutableBytePtr(v38);
              goto LABEL_31;
            }
          }

          else if (v19 == 2)
          {
            dataPointerOut[0] = 0;
            theBuffer[0] = 0;
            v18 = CMBlockBufferCreateWithMemoryBlock(v25, 0, v26, v25, 0, 0, v26, 1u, theBuffer);
            theData = theBuffer[0];
            if (v18)
            {
              goto LABEL_103;
            }

            DataPointer = CMBlockBufferGetDataPointer(theBuffer[0], 0, 0, 0, dataPointerOut);
            if (DataPointer)
            {
              goto LABEL_102;
            }

            MutableBytePtr = dataPointerOut[0];
LABEL_31:
            if (!MutableBytePtr)
            {
              v18 = 4294950305;
LABEL_103:
              v50 = theData;
              if (!theData)
              {
                return v18;
              }

LABEL_104:
              CFRelease(v50);
              return v18;
            }

            if (v20)
            {
              v39 = FigCFEqual();
              if (v39)
              {
                v40 = COMPRESSION_BROTLI;
                goto LABEL_60;
              }

              if (FigCFEqual())
              {
                v40 = COMPRESSION_ZLIB;
LABEL_60:
                v72 = 0u;
                v71 = 0u;
                if (v24 < 1)
                {
                  v18 = 4294950194;
                }

                else
                {
                  theBuffer[0] = v24;
                  theBuffer[1] = v65;
                  theBuffer[2] = v23;
                  theBuffer[3] = v22;
                  memset(&stream, 0, sizeof(stream));
                  v49 = compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, v40);
                  if (!v49)
                  {
                    v50 = theData;
                    CFDataSetLength(theData, llroundf(v26 * 4.0));
                    stream.dst_ptr = CFDataGetMutableBytePtr(theData);
                    stream.dst_size = CFDataGetLength(theData);
                    if (v39)
                    {
                      v51 = 0;
                    }

                    else
                    {
                      while (1)
                      {
                        v51 = *(&v72 + 1);
                        if (*(&v72 + 1) >= 2uLL)
                        {
                          break;
                        }

                        BytesFromChunks = _readBytesFromChunks(theBuffer, 2 - *(&v72 + 1), &v73[2] + *(&v72 + 1), 0);
                        if (BytesFromChunks)
                        {
LABEL_98:
                          v18 = BytesFromChunks;
                          goto LABEL_99;
                        }
                      }
                    }

                    v52 = 4 * (v39 == 0);
                    v68 = 0;
                    v53 = v26 - v52;
                    while (v53 > v51)
                    {
                      if (!stream.src_size)
                      {
                        v67 = 0;
                        if (v53 - v51 >= 0x1000)
                        {
                          v55 = 4096;
                        }

                        else
                        {
                          v55 = v53 - v51;
                        }

                        BytesFromChunks = _readBytesFromChunks(theBuffer, v55, dataPointerOut, &v67);
                        if (BytesFromChunks)
                        {
                          goto LABEL_98;
                        }

                        stream.src_ptr = dataPointerOut;
                        stream.src_size = v67;
                        v51 = *(&v72 + 1);
                      }

                      BytesFromChunks = _processCompressedData(&stream, theData, v51 >= v53, &v68);
                      if (BytesFromChunks)
                      {
                        goto LABEL_98;
                      }
                    }

                    if (!v39)
                    {
                      v62 = 0;
                      while (v52 > v62)
                      {
                        v67 = 0;
                        BytesFromChunks = _readBytesFromChunks(theBuffer, v52 - v62, v73 + v62, &v67);
                        v62 += v67;
                        if (BytesFromChunks)
                        {
                          goto LABEL_98;
                        }
                      }
                    }

                    v56 = v68;
                    v57 = a9;
                    while (!v56)
                    {
                      BytesFromChunks = _processCompressedData(&stream, theData, 1, &v68);
                      if (BytesFromChunks)
                      {
                        goto LABEL_98;
                      }

                      v56 = v68;
                      if (!v68 && stream.dst_size)
                      {
                        v18 = 4294950194;
                        goto LABEL_99;
                      }
                    }

                    if (stream.dst_size)
                    {
                      Length = CFDataGetLength(theData);
                      CFDataSetLength(theData, Length - stream.dst_size);
                    }

                    v63 = a10;
                    if (v39 || (BytePtr = CFDataGetBytePtr(theData), v60 = CFDataGetLength(theData), v61 = adler32(1uLL, BytePtr, v60), bswap32(*v73) == v61))
                    {
                      compression_stream_destroy(&stream);
                      v41 = 0;
                      if (!a9)
                      {
                        goto LABEL_94;
                      }

                      goto LABEL_93;
                    }

                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_2();
                    v18 = FigSignalErrorAtGM();
                    compression_stream_destroy(&stream);
                    if (v18)
                    {
                      goto LABEL_103;
                    }

                    goto LABEL_54;
                  }

                  v18 = v49;
                }

                v50 = theData;
LABEL_99:
                compression_stream_destroy(&stream);
                if (!v50)
                {
                  return v18;
                }

                goto LABEL_104;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_2();
              DataPointer = FigSignalErrorAtGM();
            }

            else
            {
              v63 = a10;
              if (v24 < 1)
              {
LABEL_54:
                v41 = 0;
LABEL_91:
                v57 = a9;
LABEL_92:
                v50 = theData;
                if (!v57)
                {
LABEL_94:
                  v18 = 0;
                  *v63 = v50;
                  return v18;
                }

LABEL_93:
                *v57 = v41;
                goto LABEL_94;
              }

              v41 = 0;
              while (1)
              {
                v43 = *v23;
                v23 = (v23 + 8);
                v42 = v43;
                dataPointerOut[0] = 0;
                if (v43 >= v26 - v41)
                {
                  v44 = (v26 - v41);
                }

                else
                {
                  v44 = v42;
                }

                v45 = *v65;
                v65 = (v65 + 8);
                v46 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v46)
                {
                  v18 = v46(v22, v44, v45, MutableBytePtr, dataPointerOut);
                }

                else
                {
                  v18 = 4294954514;
                }

                v41 += dataPointerOut[0];
                v48 = v42 != dataPointerOut[0] || v18 == -12873;
                if (v21 && v48)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_2();
                  FigSignalErrorAtGM();
                  goto LABEL_91;
                }

                if (v18)
                {
                  goto LABEL_103;
                }

                if (v42 != dataPointerOut[0])
                {
                  break;
                }

                MutableBytePtr = &v42[MutableBytePtr];
                if (!--v24)
                {
                  goto LABEL_54;
                }
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_2();
              DataPointer = FigSignalErrorAtGM();
              v57 = a9;
              if (!DataPointer)
              {
                v41 = 0;
                goto LABEL_92;
              }
            }

LABEL_102:
            v18 = DataPointer;
            goto LABEL_103;
          }

          return 4294950305;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        return FigSignalErrorAtGM();
      }

      return v32;
    }

    return 4294954514;
  }

LABEL_105:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoPixelBufferConvertYCbCrIdentityMatrixToRGB(uint64_t a1, int a2, CVPixelBufferRef pixelBuffer, void *a4)
{
  v138 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  cf = 0;
  CMPhotoGetPixelBufferSize(pixelBuffer);
  if (!a4)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_64();
  *a4 = 0;
  if (!CMPhotoPixelBufferHasUnhandledIdentityMatrix(pixelBuffer))
  {
    a1 = 4294950299;
    goto LABEL_55;
  }

  if (PixelFormatType == 875836518 || (PixelFormatType != 1936077876 ? (v11 = PixelFormatType == 1952855092) : (v11 = 1), v11 || PixelFormatType == 2019963956 || PixelFormatType))
  {
    if (a2)
    {
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_10_4();
      v19 = CMPhotoSurfacePoolCreatePixelBuffer(v12, v13, v14, v15, v16, v17, v18, 0, v114, v118, v122);
      if (!v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_21();
      CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v97, v98, v99, v100, v101, v102, v103, 0, &cf, v118, v122, v126, cf, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
      if (!v19)
      {
LABEL_16:
        v20 = OUTLINED_FUNCTION_22();
        v19 = CVPixelBufferLockBaseAddress(v20, v21);
        if (!v19)
        {
          v29 = OUTLINED_FUNCTION_41(v19, v22, v23, v24, v25, v26, v27, v28, v115, v119, v123, v126, cf);
          v31 = CVPixelBufferLockBaseAddress(v29, v30);
          if (v31)
          {
            a1 = v31;
          }

          else
          {
            OUTLINED_FUNCTION_99();
            v32 = OUTLINED_FUNCTION_5();
            v37 = OUTLINED_FUNCTION_63(v32, v33, 0, v34, v35, v36);
            if (v37 || (OUTLINED_FUNCTION_31(), v37 = OUTLINED_FUNCTION_63(v38, v39, v40, v41, v42, v43), v37))
            {
              a1 = v37;
              v104 = OUTLINED_FUNCTION_22();
              v106 = CVPixelBufferUnlockBaseAddress(v104, v105);
              v94 = OUTLINED_FUNCTION_41(v106, v107, v108, v109, v110, v111, v112, v113, v116, v120, v124, v127, cf);
              goto LABEL_54;
            }

            if (PixelFormatType == 2019963956)
            {
              if (v5 > 0.0)
              {
                v71 = 0;
                do
                {
                  if (v4 > 0.0)
                  {
                    v72 = 0;
                    v73 = (v137 + v135 * v71);
                    v74 = v136 + v134 * v71;
                    v75 = v132 + v130 * v71;
                    do
                    {
                      *(v75 + 4 * v72) = (16 * *(v74 + 2 * v72)) & 0xFFC00 | (((v73[1] >> 6) & 0x3FF) << 20) | (*v73 >> 6) | 0xC0000000;
                      ++v72;
                      v73 += 2;
                    }

                    while (v4 > v72);
                  }

                  OUTLINED_FUNCTION_28(v71);
                }

                while (!(v60 ^ v61 | v11));
              }
            }

            else if (PixelFormatType == 1936077876 || PixelFormatType == 1952855092)
            {
              if (v5 > 0.0)
              {
                v45 = 0;
                v46 = v136;
                v47 = v137;
                v48 = v134;
                v49 = v135;
                v50 = v132;
                v51 = -1;
                v52 = v130;
                do
                {
                  if (v4 > 0.0)
                  {
                    v53 = (v50 + v52 * v45);
                    v54 = (v47 + v49 * v45);
                    v55 = 1;
                    v56 = (v46 + v48 * v45);
                    do
                    {
                      v57 = *v56++;
                      v58 = *v54;
                      *v53 = v54[1];
                      v53[1] = v57;
                      v53[2] = v58;
                      v53[3] = v51;
                      v59 = v55++;
                      v54 += 2;
                      v53 += 4;
                    }

                    while (v4 > v59);
                  }

                  OUTLINED_FUNCTION_28(v45);
                }

                while (!(v60 ^ v61 | v11));
              }
            }

            else if (PixelFormatType == 875836518 && v5 > 0.0)
            {
              v62 = 0;
              v63 = -1;
              do
              {
                if (v4 > 0.0)
                {
                  v64 = (v132 + v130 * v62);
                  v65 = (v137 + v135 * v62);
                  v66 = (v136 + v134 * v62);
                  v67 = 1;
                  do
                  {
                    v68 = *v66++;
                    v69 = v65[1];
                    *v64 = *v65;
                    v64[1] = v68;
                    v64[2] = v69;
                    v64[3] = v63;
                    v70 = v67++;
                    v65 += 2;
                    v64 += 4;
                  }

                  while (v4 > v70);
                }

                OUTLINED_FUNCTION_28(v62);
              }

              while (!(v60 ^ v61 | v11));
            }

            CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(cf, 1, 2);
            CMPhotoPropagateColorPropertiesFromSourceBuffer(pixelBuffer, cf);
            v76 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965D70], 0);
            if (v76)
            {
              OUTLINED_FUNCTION_74(v76, v77, v78, v79, v80, v81, v82, v83, v116, v120, v124, v127, cf);
              CFRelease(a1);
            }

            v84 = OUTLINED_FUNCTION_41(v76, v77, v78, v79, v80, v81, v82, v83, v116, v120, v124, v127, cf);
            v86 = CVPixelBufferUnlockBaseAddress(v84, v85);
            OUTLINED_FUNCTION_97(v86, v87, v88, v89, v90, v91, v92, v93, v117, v121, v125, v128, cf);
          }

          v94 = OUTLINED_FUNCTION_22();
LABEL_54:
          CVPixelBufferUnlockBaseAddress(v94, v95);
          goto LABEL_55;
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3();
    v19 = FigSignalErrorAtGM();
  }

  a1 = v19;
LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

uint64_t CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(int a1, _DWORD *a2, int *a3)
{
  v3 = a1 - 2;
  if ((a1 - 2) > 6)
  {
    v4 = 0;
    v5 = -1;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = dword_1A5ABAA80[v3];
  v5 = dword_1A5ABAA9C[v3];
  if (a2)
  {
LABEL_5:
    *a2 = v4;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v5;
  }

  return 0;
}

__CFString *cmpweak_kVTPixelTransferPropertyKey_UseOptimalMSRCoefficients()
{
  if (MEMORY[0x1E6983E48])
  {
    return *MEMORY[0x1E6983E48];
  }

  else
  {
    return @"UseOptimalMSRCoefficients";
  }
}

uint64_t OUTLINED_FUNCTION_42_1(__CVBuffer *a1, double a2, double a3, double a4, double a5)
{
  v6 = *&a4;
  v7 = *&a5;

  return CMPhotoSetPixelBufferCLAPFromRect(a1, 1, 1, a2, a3, v6, v7);
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, a2, 4, 1uLL, a5);
}

void CMPhotoDecompressionContainerCopyExifForIndexWithOptions(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_38_1();
    v3 = v2;
    OUTLINED_FUNCTION_14_12();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_21();
    CMPhotoDecompressionContainerExternalToInternalIndex(v4, v5, v6, v7, v8, v9, v10);
    if (!v11 && v1 | v3)
    {
      OUTLINED_FUNCTION_28_5();
      if (*(v12 + 256))
      {
        v13 = OUTLINED_FUNCTION_6_15();
        v14(v13);
      }
    }

    OUTLINED_FUNCTION_37_3();
  }
}

uint64_t _copyExifForIndex_1(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _DWORD *a5, CFTypeRef *a6)
{
  cf[0] = 0;
  cf[1] = a2;
  v9 = OUTLINED_FUNCTION_4_8(a1, a2);
  if (v9)
  {
    return v9;
  }

  v9 = _parseExifIfNeeded(a1 + 40, 0);
  if (v9)
  {
    return v9;
  }

  if (!*(a1 + 289))
  {
    return 4294950303;
  }

  if (!a6)
  {
    goto LABEL_7;
  }

  Data = CMPhotoByteStreamReadAndCreateData(*(a1 + 64), *(a1 + 304), *(a1 + 296), cf, 0);
  if (!Data)
  {
    *a6 = cf[0];
LABEL_7:
    Data = 0;
    if (a5)
    {
      *a5 = 6;
    }

    return Data;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return Data;
}

uint64_t _copyExifForIndex_2(uint64_t a1, uint64_t a2, CFIndex idx, uint64_t a4, _DWORD *a5, void *a6)
{
  if (a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    Count = *(a1 + 320);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= idx)
    {
      return 4294950303;
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      if (a6)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 320), idx);
        if (ValueAtIndex)
        {
          v12 = CFRetain(ValueAtIndex);
        }

        else
        {
          v12 = 0;
        }

        result = 0;
        *a6 = v12;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5)
{

  return _ifdAddTag4(a1, 259, 3, 1uLL, a5);
}

uint64_t CMPhotoPixelFormatIsAGXVersatile(int a1)
{
  result = 1;
  if (a1 > 645161783)
  {
    if (a1 == 645161784)
    {
      return result;
    }

    v3 = 645423928;
  }

  else
  {
    if (a1 == 643970664)
    {
      return result;
    }

    v3 = 643970675;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t CMPhotoPropagateBayerPatternIfNeeded(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  result = CMPhotoPixelFormatIsVersatile(PixelFormatType);
  if (result)
  {
    result = CMPhotoPixelFormatIsVersatile(v5);
    if (result)
    {
      v14 = -1;
      VersatileBayerPattern = CMPhotoPixelBufferGetVersatileBayerPattern(a1);
      if (VersatileBayerPattern > 0xC)
      {
        return 4294950303;
      }

      v8 = VersatileBayerPattern;
      if (!CMPhotoPixelFormatIsRAWVersatile(PixelFormatType))
      {
LABEL_14:
        if (!CMPhotoPixelFormatIsRAWVersatile(v5))
        {
          goto LABEL_25;
        }

        if (PixelFormatType > 645161783)
        {
          if (PixelFormatType != 645423928)
          {
            v12 = 645161784;
LABEL_20:
            if (PixelFormatType != v12)
            {
              goto LABEL_25;
            }
          }
        }

        else if (PixelFormatType != 643970664)
        {
          v12 = 643970675;
          goto LABEL_20;
        }

        v13 = v8 - 7;
        if (v8 - 7 > 5 || ((0x3Du >> v13) & 1) == 0)
        {
          return 4294950303;
        }

        v8 = dword_1A5ABB4B8[v13];
LABEL_25:
        v14 = v8;
        return CMPhotoPixelBufferSetVersatileBayerPattern(a2, v8);
      }

      if (v5 > 645161783)
      {
        if (v5 != 645423928)
        {
          v9 = 645161784;
LABEL_11:
          if (v5 == v9)
          {
            goto LABEL_12;
          }

          goto LABEL_14;
        }
      }

      else if (v5 != 643970664)
      {
        v9 = 643970675;
        goto LABEL_11;
      }

LABEL_12:
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      result = CMPhotoGetRegroupBayerPatternFromBayerPattern(Width, Height, v8, &v14);
      if (result)
      {
        return result;
      }

      v8 = v14;
      return CMPhotoPixelBufferSetVersatileBayerPattern(a2, v8);
    }
  }

  return result;
}

uint64_t CMPhotoPixelFormatIsVersatile(int a1)
{
  if (CMPhotoPixelFormatIsRAWVersatile(a1))
  {
    return 1;
  }

  result = 1;
  if (a1 > 645161783)
  {
    if (a1 == 645161784)
    {
      return result;
    }

    v3 = 645423928;
  }

  else
  {
    if (a1 == 643970664)
    {
      return result;
    }

    v3 = 643970675;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

void _removeYCbCrMatrixFromBufferIfNeeded(__CVBuffer *a1)
{
  v2 = CMPhotoPixelBufferContainsRGB(a1);
  if (v2 | CMPhotoPixelBufferContainsGrayscale(a1))
  {
    v3 = *MEMORY[0x1E6965F98];

    CVBufferRemoveAttachment(a1, v3);
  }
}

const __CFBoolean *CMPhotoPixelBufferContainsRGB(uint64_t a1)
{
  PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(a1);

  return CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
}

const __CFBoolean *CMPhotoPixelBufferContainsGrayscale(uint64_t a1)
{
  PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(a1);

  return CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
}

const __CFBoolean *CMPhotoPixelBufferContainsYCbCr(uint64_t a1)
{
  PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(a1);

  return CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
}

uint64_t CMPhotoRemovePixelBufferCLAP(__CVBuffer *a1)
{
  if (a1)
  {
    CVBufferRemoveAttachment(a1, *MEMORY[0x1E6965D70]);
  }

  return 0;
}

void CMPhotoDecompressionContainerCopyAuxiliaryImageTypeURNForIndexWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a5)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_21();
      CMPhotoDecompressionContainerExternalToInternalIndex(v6, v7, v8, v9, v10, v11, v12);
      if (!v13 && (a3 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_15_12();
        if (*(v14 + 160))
        {
          v15 = OUTLINED_FUNCTION_5_17();
          v16(v15);
        }
      }
    }
  }
}

uint64_t _copyAuxiliaryImageTypeInfoForIndex(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    _copyAuxiliaryImageTypeInfoForIndex_cold_1(&v10);
    return v10;
  }

  else
  {
    v9 = 0;
    result = _getAuxiliaryImageStorageForIndex_0(a1, a3, &v9);
    if (a5 && !result)
    {
      v7 = *(v9 + 40);
      if (v7)
      {
        v8 = CFRetain(v7);
      }

      else
      {
        v8 = 0;
      }

      result = 0;
      *a5 = v8;
    }
  }

  return result;
}

uint64_t _copyAuxiliaryImageTypeInfoForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_1();
  result = OUTLINED_FUNCTION_2_10(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29), v31);
  if (!result)
  {
    result = OUTLINED_FUNCTION_10_9(result, v15, v16, v17, v18, v19, v20, v21, v25, v27, v30, SWORD2(v30), SBYTE6(v30), HIBYTE(v30));
    if (!result)
    {
      v22 = *(v28 + 40);
      if (v22)
      {
        if (a5)
        {
          v23 = CFRetain(v22);
          return OUTLINED_FUNCTION_23_1(v23);
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

uint64_t _copyAuxiliaryImageTypeInfoForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString **a5, void *a6)
{
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();

    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
    result = _getAuxiliaryImageCountForIndex_3(v9, v10, v11, v12);
    if (!result)
    {
      if (a3 < 0 || v15 <= a3)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_1();
        return FigSignalErrorAtGM();
      }

      else
      {
        if (a5)
        {
          v14 = @"urn:mpeg:hevc:2015:auxid:1";
          if (@"urn:mpeg:hevc:2015:auxid:1")
          {
            v14 = CFRetain(@"urn:mpeg:hevc:2015:auxid:1");
          }

          *a5 = v14;
        }

        result = 0;
        if (a6)
        {
          *a6 = 0;
        }
      }
    }
  }

  return result;
}

uint64_t _getAuxiliaryImageStorageForIndex(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a1 && *(a1 + 112))
  {
    if (!a4)
    {
      return 4294950306;
    }

    if (a3 == -128)
    {
      if (!a2 || !*(a1 + 113))
      {
        return 4294950304;
      }

      v4 = 0;
      v5 = a1 + 120;
      goto LABEL_18;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        v6 = *(a1 + 224);
        if (v6 != -1 && v6 <= a3)
        {
          ++a3;
        }
      }

      if (a3 >= *(a1 + 232))
      {
        return 4294950303;
      }

      v8 = *(a1 + 240);
      if (v8)
      {
        v4 = 0;
        v5 = v8 + 104 * a3;
LABEL_18:
        *a4 = v5;
        return v4;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

uint64_t _getAuxiliaryImageStorageForIndex_0(uint64_t a1, unint64_t a2, void *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 80) <= a2)
    {
      return 4294950303;
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      result = 0;
      *a3 = v3 + 104 * a2;
      return result;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();

  return FigSignalErrorAtGM();
}

void CMPhotoAddColorInformationToPixelBufferAccordingToFormat(CFTypeRef value, const void *a2, const void *a3, const void *a4, CVBufferRef buffer)
{
  if (buffer)
  {
    if (value)
    {
      CVBufferSetAttachment(buffer, *MEMORY[0x1E6965CE8], value, kCVAttachmentMode_ShouldPropagate);
    }

    PixelBufferDescriptionKey = _getPixelBufferDescriptionKey(buffer);
    v10 = CMPhotoCFBooleanGetValue(PixelBufferDescriptionKey);
    v11 = _getPixelBufferDescriptionKey(buffer);
    v12 = CMPhotoCFBooleanGetValue(v11);
    if (CMPhotoPixelBufferIsITUR_2100TF(buffer))
    {
      if (a2 && !v12)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965D88], a2, kCVAttachmentMode_ShouldPropagate);
      }

      if (a3)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F30], a3, kCVAttachmentMode_ShouldPropagate);
      }
    }

    if (a4)
    {
      if (!v10 && v12 == 0)
      {
        v14 = *MEMORY[0x1E6965F98];

        CVBufferSetAttachment(buffer, v14, a4, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }
}

uint64_t CMPhotoSetPixelBufferCLAPFromRect(__CVBuffer *a1, int a2, int a3, double a4, double a5, double a6, double a7)
{
  value = 0;
  if (!a1)
  {
    goto LABEL_11;
  }

  CMPhotoGetPixelBufferCLAPAsRect(a1);
  OUTLINED_FUNCTION_82();
  v15 = a4 + v14;
  v17 = a5 + v16;
  if (a2)
  {
    a4 = v15;
    a5 = v17;
  }

  OUTLINED_FUNCTION_80();
  if (CGRectContainsRect(v26, v28))
  {
    OUTLINED_FUNCTION_80();
    if (CGRectEqualToRect(v27, v29))
    {
      return 0;
    }

    v18 = CFGetAllocator(a1);
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    PixelBufferCLAPDictionaryFromRect = CMPhotoCreatePixelBufferCLAPDictionaryFromRect(v18, &value, Width, Height, a4, a5, a6, a7);
    v22 = value;
    if (!PixelBufferCLAPDictionaryFromRect)
    {
      CVBufferSetAttachment(a1, *MEMORY[0x1E6965D70], value, (a3 != 0));
      v22 = value;
    }

    if (v22)
    {
      CFRelease(v22);
    }

    return PixelBufferCLAPDictionaryFromRect;
  }

  else
  {
LABEL_11:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();

    return FigSignalErrorAtGM();
  }
}

uint64_t HEIFItemDecoderWaitForFinishAndReturnStatus(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 157))
  {
    os_unfair_lock_lock((a1 + 14576));
    *(a1 + 216) = 1;
    Count = CFSetGetCount(*(a1 + 14600));
    v9 = *(a1 + 14608);
    os_unfair_lock_unlock((a1 + 14576));
    if (*(a1 + 212) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(a1 + 224);
        v12 = dispatch_time(0, 10000000000);
        if (dispatch_semaphore_wait(v11, v12))
        {
          if (FigDebugIsInternalBuild())
          {
            _logHang(**(a1 + 8), 0, v9, Count, *(a1 + 14580), a2, a3, a4);
          }

          dispatch_semaphore_wait(*(a1 + 224), 0xFFFFFFFFFFFFFFFFLL);
        }

        ++v10;
        v13 = *(a1 + 212);
      }

      while (v10 < v13);
      if (v13 >= 1)
      {
        v14 = 0;
        do
        {
          dispatch_semaphore_signal(*(a1 + 224));
          ++v14;
        }

        while (v14 < *(a1 + 212));
      }
    }

    if (Count)
    {
      v15 = *(a1 + 232);
      v16 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v15, v16))
      {
        if (FigDebugIsInternalBuild())
        {
          _logHang(**(a1 + 8), 1, v9, Count, *(a1 + 14580), a2, a3, a4);
        }

        dispatch_semaphore_wait(*(a1 + 232), 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  return *(a1 + 14580);
}