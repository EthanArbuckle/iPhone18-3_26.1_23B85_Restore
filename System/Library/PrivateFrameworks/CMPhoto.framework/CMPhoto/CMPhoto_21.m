uint64_t CMPhotoCreateAmveDictionary(const __CFData *a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  v3 = 4294950306;
  if (a1 && a3)
  {
    if (CFDataGetLength(a1) != 8)
    {
      return 4294950194;
    }

    BytePtr = CFDataGetBytePtr(a1);
    Mutable = CFDictionaryCreateMutable(a2, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294950305;
    }

    v9 = Mutable;
    v10 = CMPhotoCFDictionarySetInt32(Mutable, @"AmbientIlluminance", bswap32(*BytePtr));
    if (v10 || (OUTLINED_FUNCTION_2_15(), v10 = CMPhotoCFDictionarySetInt32(v9, v11, v12), v10))
    {
      v3 = v10;
    }

    else
    {
      OUTLINED_FUNCTION_2_15();
      v3 = CMPhotoCFDictionarySetInt32(v9, v13, v14);
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

__CFArray *CMPhotoArrayCreateDeepCopy(const __CFAllocator *a1, int a2, const __CFArray *a3)
{
  if (!a3)
  {
    return 0;
  }

  Count = CFArrayGetCount(a3);
  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_11_10();
      CFArrayGetValues(v9, v24, v8);
      if (Count >= 1)
      {
        v10 = v8;
        while (1)
        {
          v11 = CFGetTypeID(*v10);
          if (v11 == CFDictionaryGetTypeID())
          {
            break;
          }

          v12 = CFGetTypeID(*v10);
          if (v12 == CFArrayGetTypeID())
          {
            v21 = OUTLINED_FUNCTION_10_1();
            DeepCopy = CMPhotoArrayCreateDeepCopy(v21);
            if (DeepCopy)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v13 = CFGetTypeID(*v10);
            TypeID = CFStringGetTypeID();
            v15 = *v10;
            if (v13 != TypeID)
            {
              v16 = CFGetTypeID(*v10);
              v17 = CFNumberGetTypeID();
              v15 = *v10;
              if (v16 != v17)
              {
                v18 = CFGetTypeID(*v10);
                if (v18 != CFBooleanGetTypeID() && a2)
                {
                  goto LABEL_14;
                }

                v15 = *v10;
              }
            }

            CFArrayAppendValue(Mutable, v15);
          }

LABEL_14:
          ++v10;
          if (!--Count)
          {
            goto LABEL_20;
          }
        }

        v19 = OUTLINED_FUNCTION_10_1();
        DeepCopy = CMPhotoDictionaryCreateDeepCopy(v19);
        if (!DeepCopy)
        {
          goto LABEL_14;
        }

LABEL_19:
        v22 = DeepCopy;
        CFArrayAppendValue(Mutable, DeepCopy);
        CFRelease(v22);
        goto LABEL_14;
      }

LABEL_20:
      free(v8);
    }
  }

  return Mutable;
}

uint64_t CMPhotoAddValueToCGImageMetadata(uint64_t a1, CFTypeRef value, CFStringRef name, CFStringRef xmlns, CFStringRef prefix)
{
  v5 = 4294950306;
  if (a1 && value && name && xmlns && prefix)
  {
    v8 = CGImageMetadataTagCreate(xmlns, prefix, name, kCGImageMetadataTypeDefault, value);
    if (v8)
    {
      v9 = v8;
      if (CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", prefix, name))
      {
        OUTLINED_FUNCTION_12_9();
        OUTLINED_FUNCTION_11_10();
        if (CGImageMetadataSetTagWithPath(v10, v11, v12, v9))
        {
          v5 = 0;
        }

        else
        {
          v5 = 4294950305;
        }

        CFRelease(prefix);
      }

      else
      {
        v5 = 4294950305;
      }

      CFRelease(v9);
    }

    else
    {
      return 4294950305;
    }
  }

  return v5;
}

uint64_t CMPhotoAddValueToCGImageMetadataArray(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef value, CFStringRef name, CFStringRef xmlns, CFStringRef prefix)
{
  v7 = 4294950306;
  if (a3 && a1 && value && name && xmlns && prefix)
  {
    v12 = CGImageMetadataTagCreate(xmlns, prefix, name, kCGImageMetadataTypeDefault, value);
    if (v12)
    {
      v13 = v12;
      if (CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@[%d].%@", prefix, a3, a2, name))
      {
        OUTLINED_FUNCTION_12_9();
        OUTLINED_FUNCTION_11_10();
        if (CGImageMetadataSetTagWithPath(v14, v15, v16, v13))
        {
          v7 = 0;
        }

        else
        {
          v7 = 4294950305;
        }

        CFRelease(prefix);
      }

      else
      {
        v7 = 4294950305;
      }

      CFRelease(v13);
    }

    else
    {
      return 4294950305;
    }
  }

  return v7;
}

uint64_t CMPhotoCreateMainImageXMPDataFromFormatInfo(uint64_t a1, uint64_t a2, CFDataRef *a3)
{
  v32 = 0;
  err = 0;
  v31 = 0;
  if (!a3)
  {
    return 0;
  }

  Mutable = CGImageMetadataCreateMutable();
  if (!Mutable)
  {
    return 4294950305;
  }

  v5 = Mutable;
  if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/pixeldatainfo/1.0/", @"apdi", &err))
  {
    v21 = 4294950304;
    goto LABEL_18;
  }

  if (FigCFDictionaryGetIntIfPresent())
  {
    v6 = CMPhotoFormatFourCharCodeString(HIDWORD(v32));
    v29 = v6;
    v30 = BYTE4(v6);
    v7 = CFStringCreateWithFormat(0, 0, @"%s", &v29);
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = OUTLINED_FUNCTION_7_10();
    v13 = CMPhotoAddValueToCGImageMetadata(v9, v10, @"NativeFormat", v11, v12);
    if (v13)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = 0;
  }

  if (FigCFDictionaryGetIntIfPresent())
  {
    if (v8)
    {
      CFRelease(v8);
    }

    v14 = CMPhotoFormatFourCharCodeString(v32);
    v27 = v14;
    v28 = BYTE4(v14);
    v15 = CFStringCreateWithFormat(0, 0, @"%s", &v27);
    if (v15)
    {
      v8 = v15;
      v16 = OUTLINED_FUNCTION_7_10();
      v13 = CMPhotoAddValueToCGImageMetadata(v16, v17, @"StoredFormat", v18, v19);
      if (v13)
      {
LABEL_24:
        v21 = v13;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_25:
    v21 = 4294950306;
    goto LABEL_18;
  }

LABEL_14:
  if (FigCFDictionaryGetIntIfPresent())
  {
    if (v8)
    {
      CFRelease(v8);
    }

    v8 = @"unknown";
    v23 = OUTLINED_FUNCTION_7_10();
    v13 = CMPhotoAddValueToCGImageMetadata(v23, v24, @"Codec", v25, v26);
    if (v13)
    {
      goto LABEL_24;
    }
  }

  XMPData = CGImageMetadataCreateXMPData(v5, 0);
  if (XMPData)
  {
    v21 = 0;
    *a3 = XMPData;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v21 = 4294950305;
  if (v8)
  {
LABEL_17:
    CFRelease(v8);
  }

LABEL_18:
  CFRelease(v5);
  if (err)
  {
    CFRelease(err);
  }

  return v21;
}

uint64_t CMPhotoCreateMainImageFormatInfoFromXMPData(const __CFAllocator *a1, const __CFData *a2, uint64_t *a3)
{
  v3 = 0;
  v38 = 0;
  v39 = 0;
  cf = 0;
  v37 = 0;
  v4 = 4294950306;
  if (!a2 || !a3)
  {
    goto LABEL_55;
  }

  CFNumberFormatter = CMPhotoMetadataCreateCFNumberFormatter(a1, kCFNumberFormatterNoStyle, &v37);
  if (CFNumberFormatter)
  {
    v4 = CFNumberFormatter;
    v3 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_49;
  }

  v33 = a3;
  v9 = CGImageMetadataCreateFromXMPData(a2);
  v10 = v9;
  if (!v9)
  {
    v3 = 0;
    v12 = 0;
LABEL_73:
    v4 = 4294950194;
    goto LABEL_49;
  }

  v11 = CGImageMetadataCopyTags(v9);
  v12 = v11;
  if (!v11)
  {
    v3 = 0;
    goto LABEL_73;
  }

  v34 = v10;
  Count = CFArrayGetCount(v11);
  if (Count >= 1)
  {
    v14 = Count;
    v32 = a1;
    v3 = 0;
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
      v17 = CGImageMetadataTagCopyNamespace(ValueAtIndex);
      if (v17)
      {
        break;
      }

LABEL_33:
      if (v14 == ++v15)
      {
        goto LABEL_36;
      }
    }

    v18 = v17;
    if (!FigCFEqual())
    {
      v20 = v18;
      goto LABEL_31;
    }

    v19 = CGImageMetadataTagCopyName(ValueAtIndex);
    if (!v19)
    {
      CFRelease(v18);
      v4 = 4294950194;
      goto LABEL_48;
    }

    v20 = v19;
    v21 = CMPhotoCopyMetadataTagValue(ValueAtIndex, v37, 0, &cf);
    if (v21)
    {
      goto LABEL_64;
    }

    if (FigCFEqual())
    {
      if (v39)
      {
        CFRelease(v39);
        v39 = 0;
      }

      v23 = cf;
      v24 = &v39;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          if (!cf || (v22 = CFGetTypeID(cf), v22 != CFStringGetTypeID()))
          {
            v4 = 4294950194;
            goto LABEL_66;
          }

          if (v3)
          {
            CFRelease(v3);
          }

          if (cf)
          {
            v3 = CFRetain(cf);
          }

          else
          {
            v3 = 0;
          }
        }

LABEL_30:
        CFRelease(v18);
LABEL_31:
        CFRelease(v20);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        goto LABEL_33;
      }

      if (v38)
      {
        CFRelease(v38);
        v38 = 0;
      }

      v23 = cf;
      v24 = &v38;
    }

    v21 = _findAndVerifyPixelFormatString(v32, v23, v24);
    if (v21)
    {
LABEL_64:
      v4 = v21;
LABEL_66:
      CFRelease(v18);
      v30 = v20;
      goto LABEL_46;
    }

    goto LABEL_30;
  }

  v3 = 0;
LABEL_36:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v26 = Mutable;
    if (v39)
    {
      if (!CFStringGetCString(v39, buffer, 5, 0x600u))
      {
        goto LABEL_68;
      }

      v27 = CMPhotoStringToFourCharCode(buffer);
      v28 = CMPhotoCFDictionarySetInt(v26, 0x1F1919BE0, v27);
      if (v28)
      {
LABEL_69:
        v4 = v28;
LABEL_45:
        v30 = v26;
LABEL_46:
        CFRelease(v30);
        goto LABEL_48;
      }
    }

    if (!v38)
    {
LABEL_43:
      if (!v3 || (v4 = CMPhotoCFDictionarySetInt(v26, 0x1F1919C40, 0), !v4))
      {
        v4 = 0;
        *v33 = v26;
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    if (CFStringGetCString(v38, buffer, 5, 0x600u))
    {
      v29 = CMPhotoStringToFourCharCode(buffer);
      v28 = CMPhotoCFDictionarySetInt(v26, 0x1F1919C20, v29);
      if (!v28)
      {
        goto LABEL_43;
      }

      goto LABEL_69;
    }

LABEL_68:
    v4 = 4294950194;
    goto LABEL_45;
  }

  v4 = 4294950305;
LABEL_48:
  v10 = v34;
LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_55:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t _findAndVerifyPixelFormatString(const __CFAllocator *a1, const void *a2, void *a3)
{
  formatter = 0;
  v3 = 4294950306;
  if (a2 && a3)
  {
    v3 = CMPhotoMetadataCreateCFNumberFormatter(a1, kCFNumberFormatterDecimalStyle, &formatter);
    if (!v3)
    {
      v6 = CFGetTypeID(a2);
      if (v6 == CFStringGetTypeID())
      {
        v3 = 0;
        *a3 = CFRetain(a2);
      }

      else
      {
        v7 = CFGetTypeID(a2);
        v3 = 4294950194;
        if (v7 == CFNumberGetTypeID())
        {
          *a3 = CFNumberFormatterCreateStringWithNumber(0, formatter, a2);
          v8 = FigCFEqual();
          if (v8 | FigCFEqual())
          {
            v3 = 0;
          }

          else
          {
            v3 = 4294950194;
          }
        }
      }
    }

    if (formatter)
    {
      CFRelease(formatter);
    }
  }

  return v3;
}

uint64_t CMPhotoGetSlimPixelFormatAndFlavorFromFormatDescription(const opaqueCMFormatDescription *a1, _DWORD *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (CMFormatDescriptionGetMediaSubType(a1) != 1936484717)
  {
    return 4294950303;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    return 4294950303;
  }

  Value = CFDictionaryGetValue(Extension, @"slmC");
  if (!Value)
  {
    return 4294950303;
  }

  CFDataGetLength(Value);
  v9 = OUTLINED_FUNCTION_12_9();
  BytePtr = CFDataGetBytePtr(v9);
  if (v3 < 4 || BytePtr == 0)
  {
    return 4294950303;
  }

  v12 = *BytePtr;
  v14 = 1;
  result = Slim_GetPixelBufferInfoFromVersion(v12, &v14, a2, 0, 0, 0);
  if (a3)
  {
    if (!result)
    {
      *a3 = v14;
    }
  }

  return result;
}

uint64_t CMPhotoExifDetectTIFFHeaderOffset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionGetDerivedCodecForImage(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, _DWORD *a7)
{
  v20 = a5;
  if (a3 < 0)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    result = CMPhotoHEIFFileWriterGetPropertiesForImage(*a1, a4, 0, &v20);
    goto LABEL_13;
  }

  switch(a2)
  {
    case 2:
      v13 = OUTLINED_FUNCTION_7_11();
      v16 = 2;
LABEL_11:
      result = CMPhotoHEIFFileWriterGetPropertiesForSequence(v13, v14, v16, 0, v15);
      if (result == -16993)
      {
        v17 = OUTLINED_FUNCTION_7_11();
        result = CMPhotoHEIFFileWriterGetPropertiesForSequence(v17, v18, 0, 0, v19);
      }

      goto LABEL_13;
    case 1:
      v13 = OUTLINED_FUNCTION_7_11();
      v16 = 1;
      goto LABEL_11;
    case 0:
      v9 = OUTLINED_FUNCTION_7_11();
      result = CMPhotoHEIFFileWriterGetPropertiesForSequence(v9, v10, 0, 0, v11);
      if (result == -16993)
      {
        v20 = a5;
LABEL_14:
        result = 0;
        *a7 = v20;
        return result;
      }

LABEL_13:
      if (result)
      {
        return result;
      }

      goto LABEL_14;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoCompressionSessionParseOptions(uint64_t a1, const __CFDictionary *a2, int a3, int a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *a5 = 0;
  *(a5 + 36) = 0;
  *(a5 + 40) = 0;
  *(a5 + 56) = 0;
  strcpy((a5 + 4), "1cvh");
  *(a5 + 48) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 31) = 0;
  *(a5 + 64) = 1;
  *(a5 + 68) = 0;
  *(a5 + 72) = 256;
  *(a5 + 80) = 0;
  *(a5 + 152) = 0;
  *(a5 + 156) = xmmword_1A5ABAAD0;
  v9 = (a5 + 156);
  *(a5 + 176) = a6;
  v10 = (a5 + 176);
  *(a5 + 184) = a7;
  *(a5 + 192) = a8;
  *(a5 + 200) = a9;
  *(a5 + 208) = 0;
  v11 = a5 + 208;
  *(a5 + 232) = 0;
  *(a5 + 236) = 0xFFFFFFFF00000001;
  *(a5 + 216) = 0;
  *(a5 + 224) = 0;
  *(a5 + 244) = 0xFFFFFFFFLL;
  *(a5 + 252) = 0;
  *(a5 + 254) = *(a1 + 139);
  *(a5 + 255) = 0;
  if (a4)
  {
    v12 = 30;
  }

  else
  {
    v12 = -1;
  }

  *(a5 + 284) = v12;
  *(a5 + 264) = 0;
  *(a5 + 272) = 0;
  *(a5 + 279) = 0;
  *(a5 + 288) = 1;
  *(a5 + 296) = 0;
  *(a5 + 304) = 0;
  *(a5 + 309) = 0;
  *(a5 + 320) = -1;
  *(a5 + 328) = 0;
  *(a5 + 356) = 0;
  if (!a2)
  {
    return 0;
  }

  v45 = (a5 + 236);
  v44 = (a5 + 244);
  v42 = (a5 + 68);
  v41 = (a5 + 4);
  *a5 = CMPhotoCFDictionaryGetInt32IfPresent();
  if (*(a5 + 4) == 1936484717)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    IsInternalBuild = FigDebugIsInternalBuild();
    v17 = CMPhotoAllowExperimentalCodecsOverride(IsInternalBuild);
    LOBYTE(rect.origin.x) = v17;
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetInt32IfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  CMPhotoCFDictionaryGetBooleanIfPresent();
  BooleanIfPresent = CMPhotoCFDictionaryGetBooleanIfPresent();
  IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
  *(a5 + 152) = IntIfPresent;
  *(a5 + 168) = *(a5 + 164);
  if (IntIfPresent && CMPhotoCFDictionaryGetIntIfPresent())
  {
    if (BooleanIfPresent)
    {
      goto LABEL_16;
    }

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  if ((*(v11 - 44) - 9) <= 0xFFFFFFF7)
  {
    goto LABEL_16;
  }

  v21 = *(v11 - 40);
  if ((v21 - 9) <= 0xFFFFFFF7)
  {
    goto LABEL_16;
  }

  if (*(a5 + 74))
  {
    v22 = (v11 + 76);
    if (!*(a5 + 152))
    {
LABEL_16:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_17();
      return FigSignalErrorAtGM();
    }
  }

  else
  {
    v22 = (v11 + 76);
    if (!*(a5 + 152))
    {
      goto LABEL_25;
    }
  }

  result = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(v21, v9, (v11 - 48));
  if (result)
  {
    return result;
  }

  if (v20)
  {
    if (BooleanIfPresent)
    {
      if (a3 && !*(v11 - 134))
      {
        goto LABEL_16;
      }
    }

    else if (a3)
    {
      goto LABEL_16;
    }
  }

LABEL_25:
  Value = CFDictionaryGetValue(a2, @"SourceCropRect");
  if (!Value || (memset(&rect, 0, sizeof(rect)), !CGRectMakeWithDictionaryRepresentation(Value, &rect)) || (v25.f64[0] = rect.origin.x, result = CMPhotoApplyCropRectToRect(v10, v25, rect.origin.y, rect.size.width, rect.size.height), !result))
  {
    v26 = CFDictionaryGetValue(a2, @"ExtrinsicsPosition");
    *(a5 + 216) = v26;
    if (!v26 || (v27 = CFGetTypeID(v26), v27 == CFArrayGetTypeID()) && (v28 = *(a5 + 216)) != 0 && CFArrayGetCount(v28) == 3)
    {
      v29 = CFDictionaryGetValue(a2, @"ExtrinsicsRotation");
      *(a5 + 224) = v29;
      if (!v29 || (v30 = CFGetTypeID(v29), v30 == CFArrayGetTypeID()) && (v31 = *(a5 + 224)) != 0 && CFArrayGetCount(v31) == 9)
      {
        if (*(a5 + 216) || *(a5 + 224))
        {
          CMPhotoCFDictionaryGetBooleanIfPresent();
        }

        v32 = CFDictionaryGetValue(a2, @"IntrinsicsMatrix");
        *v11 = v32;
        if (!v32 || (v33 = CFGetTypeID(v32), v33 == CFArrayGetTypeID()) && *v11 && CFArrayGetCount(*v11) == 9)
        {
          if (*(a5 + 216) || *(a5 + 224) || *v11)
          {
            CMPhotoCFDictionaryGetBooleanIfPresent();
          }

          CMPhotoCFDictionaryGetIntIfPresent();
          if (*v45 < 6)
          {
            CMPhotoCFDictionaryGetIntIfPresent();
            if ((*(v11 + 32) - 16) > 0xFFFFFFEE)
            {
              CMPhotoCFDictionaryGetIntIfPresent();
              if ((*v44 - 256) > 0xFFFFFEFE)
              {
                CMPhotoCFDictionaryGetBooleanIfPresent();
                CMPhotoCFDictionaryGetBooleanIfPresent();
                CMPhotoCFDictionaryGetBooleanIfPresent();
                CMPhotoCFDictionaryGetIntIfPresent();
                CMPhotoCFDictionaryGetBooleanIfPresent();
                *(v11 - 135) = CMPhotoGetEvenScalingModeDefault(1, *(v11 - 135));
                if (*v42)
                {
                  CMPhotoCFDictionaryGetBooleanIfPresent();
                }

                CMPhotoCFDictionaryGetIntIfPresent();
                if (!a4 || *v22 > 0)
                {
                  CMPhotoCFDictionaryGetBooleanIfPresent();
                  *(a5 + 65) = CMPhotoCFDictionaryGetBooleanIfPresent();
                  v34 = CFDictionaryGetValue(a2, @"AuxiliaryImagePreserveValue");
                  *(a5 + 296) = v34;
                  if (!v34 || (v35 = CFGetTypeID(v34), v35 == CFNumberGetTypeID()))
                  {
                    CMPhotoCFDictionaryGetBooleanIfPresent();
                    if (CMPhotoCFDictionaryGetBooleanIfPresent())
                    {
                      *(a5 + 36) = 1;
                    }

                    CMPhotoCFDictionaryGetBooleanIfPresent();
                    if (a3 != 2 || !CFDictionaryGetValue(a2, @"Subsampling") && !CFDictionaryGetValue(a2, @"BitDepth"))
                    {
                      CMPhotoCFDictionaryGetBooleanIfPresent();
                      CMPhotoCFDictionaryGetBooleanIfPresent();
                      *(a5 + 255) = CFDictionaryContainsKey(a2, @"IncludeThumbnailWithOptions");
                      v36 = CFDictionaryContainsKey(a2, @"IncludeAlphaAuxiliaryImageWithOptions");
                      *(a5 + 256) = v36;
                      if (!*(a5 + 255) || !v36)
                      {
                        CMPhotoCFDictionaryGetBooleanIfPresent();
                        v37 = CFDictionaryGetValue(a2, @"QualityControllerType");
                        *(a5 + 16) = v37;
                        *(a5 + 8) = v37 != 0;
                        *(a5 + 24) = CFDictionaryGetValue(a2, @"QualityControllerParameters");
                        *(a5 + 304) = CFDictionaryGetValue(a2, @"CustomMinimumSourceAlignment");
                        *(a5 + 264) = CFDictionaryGetValue(a2, @"UseCodecSessionPool");
                        *(a5 + 272) = CFDictionaryGetValue(a2, @"Priority");
                        *(a5 + 56) = CFDictionaryGetValue(a2, @"UsePixelsOutsideCrop");
                        *(a5 + 281) = FigCFDictionaryGetBooleanIfPresent();
                        v38 = CFDictionaryGetValue(a2, @"UseXMPContentEncoding");
                        *(a5 + 40) = v38;
                        if (v38)
                        {
                          v39 = CFGetTypeID(v38);
                          if (v39 != CFStringGetTypeID())
                          {
                            return 4294950306;
                          }
                        }

                        CMPhotoCFDictionaryGetBooleanIfPresent();
                        if (!CMPhotoCFDictionaryGetLongIfPresent() || (*(v11 + 112) & 0x8000000000000000) == 0)
                        {
                          rect.origin.x = 0.0;
                          ValueIfPresent = CFDictionaryGetValueIfPresent(a2, @"ReconstructionPixelBufferHandler", &rect);
                          if (!ValueIfPresent)
                          {
LABEL_71:
                            CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BitDepth", (a5 + 344));
                            CMPhotoCFDictionaryGetInt32IfPresent();
                            return 0;
                          }

                          *(a5 + 328) = ValueIfPresent;
                          if (*(a5 + 252) && *v41 == 1752589105)
                          {
                            *(a5 + 336) = _Block_copy(*&rect.origin.x);
                            goto LABEL_71;
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

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_17();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t CMPhotoCompressionSessionHandleOrientationAndTransform(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, uint64_t a5, uint64_t a6, __CVBuffer **a7, uint64_t a8)
{
  v8 = 4294950306;
  if (!a1 || !a2 || !a4 || !a5 || !a7)
  {
    return v8;
  }

  v13 = a6;
  v16 = *(a2 + 164);
  v17 = *(a2 + 168);
  v18 = v16 != v17 && *(a2 + 152) != 0;
  if (!*(a2 + 74) || !*(a2 + 152))
  {
    if (v18)
    {
      v40 = 1;
      goto LABEL_31;
    }

    return 0;
  }

  if (v16 != 1 && v18)
  {
    return v8;
  }

  if (v16 != 1)
  {
    LOBYTE(v18) = 1;
  }

  if (!v18)
  {
    return 0;
  }

  v40 = 1;
  if (v16 != 1)
  {
    v40 = v16;
    v20 = 1;
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (v16 != v17)
  {
    TransferRotationFromInputOrientationAndDesiredOrientation = CMPhotoGetTransferRotationFromInputOrientationAndDesiredOrientation(v16, v17, &v40);
    if (TransferRotationFromInputOrientationAndDesiredOrientation)
    {
      return TransferRotationFromInputOrientationAndDesiredOrientation;
    }
  }

  v20 = 0;
  if (a3)
  {
LABEL_34:
    v38 = 0u;
    v39 = 0u;
    v33 = vcvtq_u64_f64(vrndaq_f64(*(a5 + 16)));
    v37[0] = vcvtq_u64_f64(vrndaq_f64(*a5));
    v37[1] = v33;
    TransferRotationFromInputOrientationAndDesiredOrientation = CMPhotoGetCropPreOrientation(v33.i64[0], v33.i64[1], v37, v40, &v38, a6, a7, a8);
    if (!TransferRotationFromInputOrientationAndDesiredOrientation)
    {
      DictionaryRepresentation = 0;
      v22 = 0;
      v34 = vcvtq_f64_u64(v39);
      *(a2 + 176) = vcvtq_f64_u64(v38);
      *(a2 + 192) = v34;
      v35 = *(a2 + 192);
      *a5 = *(a2 + 176);
      *(a5 + 16) = v35;
      *a4 = 1;
      if (!v20)
      {
        goto LABEL_27;
      }

      goto LABEL_36;
    }

    return TransferRotationFromInputOrientationAndDesiredOrientation;
  }

LABEL_20:
  v21 = OUTLINED_FUNCTION_4_12();
  if (!v21)
  {
    return 4294950305;
  }

  v22 = v21;
  CMPhotoCFDictionarySetInt(v21, @"SourceExifOrientation", v40);
  CMPhotoCFDictionarySetInt(v22, @"DestinationPixelFormat", v13);
  CMPhotoCFDictionarySetBoolean(v22, @"ExactDimensions", *(a2 + 280));
  CMPhotoCFDictionarySetSize(v22, @"RowAlignment", 64);
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(a2 + 176));
  if (DictionaryRepresentation)
  {
    CFDictionarySetValue(v22, @"SourceCropRectDictionary", DictionaryRepresentation);
  }

  v38.i64[0] = 0;
  v24 = CMPhotoScaleAndRotateSessionTransformImage(*(a1 + 32), *a7, v22, &v38);
  if (v24)
  {
    goto LABEL_39;
  }

  if (*a7)
  {
    CFRelease(*a7);
  }

  v25 = v38.i64[0];
  *a7 = v38.i64[0];
  *a5 = CMPhotoGetPixelBufferCLAPAsRect(v25);
  *(a5 + 8) = v26;
  *(a5 + 16) = v27;
  *(a5 + 24) = v28;
  v29 = *(a5 + 16);
  *(a2 + 176) = *a5;
  *(a2 + 192) = v29;
  if (!v20)
  {
LABEL_27:
    v30 = *(a2 + 164);
    v31 = *(a2 + 168);
    if (v30 == v31)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a2 + 74) = 0;
  v31 = 1;
LABEL_37:
  *(a2 + 164) = v31;
  v30 = v31;
LABEL_38:
  v24 = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(v30, (a2 + 156), (a2 + 160));
LABEL_39:
  v8 = v24;
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v8;
}

uint64_t CMPhotoCompressionSessionDetermineEncodeDimensionsAndTiling(uint64_t a1, int a2, uint64_t a3, const __CFDictionary *a4, int a5, double a6, double a7, double a8, double a9, uint64_t a10, int a11, int a12, char a13, char a14, int a15, int a16, _DWORD *a17, unint64_t *a18, uint64_t a19, _BYTE *a20)
{
  v63 = 0uLL;
  v61 = a2 == 2 && a5 == 4 && FigCFEqual() != 0;
  v31 = vcvtad_u64_f64(a8);
  v32 = vcvtad_u64_f64(a9);
  *a20 = 0;
  v33 = *a17;
  if (v33 < 1)
  {
    goto LABEL_18;
  }

  if (v31 <= v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = v31;
  }

  v59 = v34 > v33;
  v35 = v34 != v33;
  v36 = v59;
  if (!a11)
  {
    v35 = v36;
  }

  *a20 = v35;
  if (v35)
  {
    CMPhotoPixelBufferConstrainSizeToMaxSideLength(v31, v32, *a17, 0, 0, a11, a12, a18, 0, 0);
  }

  else
  {
LABEL_18:
    *a18 = v31;
    a18[1] = v32;
  }

  v37 = a2 == 2 && a5 == 3;
  if (v37 && !a14)
  {
    result = CMPhotoHEIFFileWriterGetPropertiesForImage(*a1, a3, &v63, 0);
    if (result)
    {
      return result;
    }

    v40 = *(&v63 + 1);
    v39 = v63;
    v41 = a18[1];
    if (v63 != *a18 || *(&v63 + 1) != v41)
    {
      v43 = v63 - *a18;
      if (v43 < 0)
      {
        v43 = *a18 - v63;
      }

      v44 = DWORD2(v63) - v41;
      if (v44 < 0)
      {
        v44 = -v44;
      }

      v46 = v43 < 2 && v44 < 2;
      *a20 = v46;
      if (v46)
      {
        if (v39 <= v40)
        {
          LODWORD(v39) = v40;
        }

        *a17 = v39;
      }
    }
  }

  if (!a4 || (result = CMPhotoGetTilingOption(a4, *a18, a18[1], a16, a15, a19, (a19 + 1), (a19 + 24), (a19 + 40)), !result))
  {
    v47 = round(a6);
    v48 = round(a7);
    if (*a19)
    {
      v49 = *(a19 + 1);
      if (!*(a19 + 1))
      {
        goto LABEL_81;
      }

      goto LABEL_77;
    }

    if (v61)
    {
      if (v63 == 0)
      {
        if (!a14)
        {
          v50 = &v63;
          result = CMPhotoHEIFFileWriterGetPropertiesForImage(*a1, a3, &v63, 0);
          if (result)
          {
            return result;
          }

          goto LABEL_55;
        }

        v63 = *(a1 + 88);
      }

      v50 = &v63;
    }

    else
    {
      v50 = a18;
    }

LABEL_55:
    result = CMPhotoSetDefaultTilingOptionForCodec(a15, *v50, v50[1], a16, (a19 + 24));
    if (result)
    {
      return result;
    }

    v51 = *a18 >= 2 * *(a19 + 24) || a18[1] >= 2 * *(a19 + 32);
    if (a2 == 2)
    {
      v52 = !v51;
      if (a13)
      {
        v52 = 1;
      }

      if (v52)
      {
        v55 = 0;
      }

      else
      {
        v54 = *a18 == v63 && a18[1] == *(&v63 + 1);
        v55 = v54 || v61;
      }

      v49 = v55;
    }

    else
    {
      if (a2)
      {
LABEL_80:
        *(a19 + 1) = 0;
        goto LABEL_81;
      }

      if (a13)
      {
        v49 = 0;
      }

      else
      {
        v49 = v51;
      }
    }

    *(a19 + 1) = v49;
    if (!v49)
    {
LABEL_81:
      v49 = 0;
      *(a19 + 8) = v47;
      *(a19 + 16) = v48;
      *(a19 + 24) = *a18;
      v56 = 1;
LABEL_82:
      v57 = (*a18 + *(a19 + 24) - 1) / *(a19 + 24);
      v58 = (a18[1] + *(a19 + 32) - 1) / *(a19 + 32);
      *(a19 + 56) = v57;
      *(a19 + 64) = v58;
      if (a15 == 1936484717 && (v56 & 1) == 0)
      {
        v59 = v57 != 1 || v58 > 4;
        if (v59)
        {
          return 4294950297;
        }

        CMPhotoCFDictionaryGetIntIfPresent();
        v60 = *(a19 + 48);
        if (v60)
        {
          LOBYTE(v60) = v60 < *(a19 + 32);
        }

        *(a19 + 2) = v60;
        v49 = *(a19 + 1);
      }

      result = 0;
      if (a13)
      {
        if (v49)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_16();
          return FigSignalErrorAtGM();
        }
      }

      return result;
    }

LABEL_77:
    if (*(a19 + 24) < *a18 || *(a19 + 32) < a18[1])
    {
      v56 = 0;
      *(a19 + 8) = v47;
      *(a19 + 16) = v48;
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  return result;
}

uint64_t CMPhotoCompressionSessionCopyReaderTilesToWriter(uint64_t a1, const __CFAllocator *a2, uint64_t a3, CFIndex a4)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    goto LABEL_42;
  }

  v9 = v8(a1, &v48);
  if (v9)
  {
    goto LABEL_54;
  }

  CMBaseObject = FigPictureTileCursorServiceGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11)
  {
    goto LABEL_42;
  }

  v9 = v11(CMBaseObject, *MEMORY[0x1E69723D0], a2, &v46);
  if (v9)
  {
LABEL_54:
    v31 = v9;
    goto LABEL_43;
  }

  size.width = 0.0;
  size.height = 0.0;
  if (!CGSizeMakeWithDictionaryRepresentation(v46, &size) || (v12 = vcvtad_u64_f64(size.height)) == 0 || (v13 = vcvtad_u64_f64(size.width)) == 0)
  {
    fig_log_get_emitter();
    v9 = FigSignalErrorAtGM();
    goto LABEL_54;
  }

  v14 = v48;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
LABEL_42:
    v31 = 4294954514;
    goto LABEL_43;
  }

  v9 = v15(v14, &v47);
  if (v9)
  {
    goto LABEL_54;
  }

  v43 = 0;
  v44 = 0;
  v16 = v47;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v17)
  {
    goto LABEL_42;
  }

  v9 = v17(v16, &v43, &v44);
  if (v9)
  {
    goto LABEL_54;
  }

  v18 = *MEMORY[0x1E6972228];
  v19 = *MEMORY[0x1E695E480];
  v33 = *MEMORY[0x1E6972398];
  do
  {
    cf = 0;
    theBuffer = 0;
    formatDescription = 0;
    sampleBufferOut = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v43 /= v13;
    v44 /= v12;
    v51.x = v43;
    v51.y = v44;
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v51);
    v21 = DictionaryRepresentation;
    if (!DictionaryRepresentation)
    {
      v22 = 0;
LABEL_41:
      v30 = -16991;
      goto LABEL_26;
    }

    values = DictionaryRepresentation;
    keys[0] = v18;
    v22 = CFDictionaryCreate(v19, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v22)
    {
      goto LABEL_41;
    }

    v23 = FigPictureTileCursorGetCMBaseObject();
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v24)
    {
      v25 = v24(v23, v33, a2, &formatDescription);
      if (v25)
      {
        goto LABEL_24;
      }

      v26 = v47;
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v27)
      {
        v25 = v27(v26, &v36, &v38, &v37, &cf, 0);
        if (v25)
        {
          goto LABEL_24;
        }

        v25 = CMPhotoPictureReaderCreateContiguousBlockBufferFromChunks(a2, v36, v38, v37, cf, 0, 0, &theBuffer);
        if (v25)
        {
          goto LABEL_24;
        }

        memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
        CMTimeMake(&sampleTimingArray.duration, 1, 1);
        sampleTimingArray.presentationTimeStamp = **&MEMORY[0x1E6960CC0];
        sampleTimingArray.decodeTimeStamp = sampleTimingArray.presentationTimeStamp;
        sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
        v25 = CMSampleBufferCreate(a2, theBuffer, 1u, 0, 0, formatDescription, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sampleBufferOut);
        if (v25)
        {
          goto LABEL_24;
        }

        v25 = CMPhotoHEIFFileWriterAddSampleBufferToImage(a3, v22, a4, sampleBufferOut);
        if (v25)
        {
          goto LABEL_24;
        }

        v28 = v47;
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v29)
        {
          v25 = v29(v28, &v43, &v44);
LABEL_24:
          v30 = v25;
          goto LABEL_26;
        }
      }
    }

    v30 = -12782;
LABEL_26:
    free(v38);
    free(v37);
    if (v21)
    {
      CFRelease(v21);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    if (formatDescription)
    {
      CFRelease(formatDescription);
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  while (!v30);
  if (v30 == -17171)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

LABEL_43:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  return v31;
}

uint64_t CMPhotoCompressionSessionCopyMainAndAuxImageSamplesIfNeeded(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 0;
  }

  if (*(a1 + 113))
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    Count = *(a1 + 168);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      result = 0;
      *(a1 + 113) = 1;
      return result;
    }

    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (!ValueAtIndex)
    {
      break;
    }

    if (CFArrayGetCount(ValueAtIndex) != 2)
    {
      break;
    }

    v5 = FigCFArrayGetValueAtIndex();
    if (!FigCFArrayGetInt32AtIndex())
    {
      break;
    }

    result = CMPhotoCompressionSessionCopyReaderTilesToWriter(v5, *(a1 + 96), *(a1 + 88), 0);
    if (result)
    {
      goto LABEL_14;
    }
  }

  result = 4294950304;
LABEL_14:
  *(a1 + 104) = 1;
  return result;
}

uint64_t CMPhotoCompressionSessionCreatePluginOptions(uint64_t a1, CFAllocatorRef allocator, int a3, int a4, int a5, int a6, int a7, __CFDictionary **a8)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v16 = Mutable;
  v17 = MEMORY[0x1E695E4D0];
  if (a3)
  {
    v18 = OUTLINED_FUNCTION_10_13();
    CFDictionarySetValue(v18, v19, v20);
  }

  if (a4)
  {
    v21 = OUTLINED_FUNCTION_10_13();
    CFDictionarySetValue(v21, v22, v23);
  }

  CMPhotoCFDictionarySetInt32(v16, @"ThreadPriority", *(a1 + 312));
  v24 = *(a1 + 16);
  if (v24)
  {
    CFDictionarySetValue(v16, @"QualityControllerType", v24);
  }

  v25 = *(a1 + 24);
  if (v25)
  {
    CFDictionarySetValue(v16, @"QualityControllerParameters", v25);
  }

  v26 = *(a1 + 240);
  if (v26 != -1)
  {
    CMPhotoCFDictionarySetInt(v16, @"SlimXBitShift", v26);
  }

  v27 = *(a1 + 244);
  if (v27 != -1)
  {
    CMPhotoCFDictionarySetInt(v16, @"SlimHrlcRunLengthValue", v27);
  }

  CMPhotoCFDictionarySetInt(v16, @"SlimCodecFlavor", *(a1 + 236));
  if (*(a1 + 65))
  {
    OUTLINED_FUNCTION_14_8(@"AllowPixelTransfer", *(a1 + 64));
  }

  if (*(a1 + 252))
  {
    v28 = OUTLINED_FUNCTION_10_13();
    CFDictionarySetValue(v28, v29, v30);
  }

  if (*(a1 + 253))
  {
    v31 = OUTLINED_FUNCTION_10_13();
    CFDictionarySetValue(v31, v32, v33);
  }

  v34 = *(a1 + 304);
  if (v34)
  {
    CFDictionarySetValue(v16, @"CustomMinimumSourceAlignment", v34);
  }

  v35 = *(a1 + 264);
  if (v35)
  {
    CFDictionarySetValue(v16, @"UseCodecSessionPool", v35);
    if (a5)
    {
      FigCFEqual();
    }
  }

  v36 = *(a1 + 272);
  if (v36)
  {
    CFDictionarySetValue(v16, @"Priority", v36);
  }

  v37 = *(a1 + 56);
  if (v37)
  {
    CFDictionarySetValue(v16, @"UsePixelsOutsideCrop", v37);
  }

  if (*(a1 + 281))
  {
    OUTLINED_FUNCTION_14_8(@"UseVTCompression", *(a1 + 280));
  }

  if (a5)
  {
    if (!CFDictionaryContainsKey(v16, @"UseVTCompression"))
    {
      v38 = OUTLINED_FUNCTION_10_13();
      CFDictionarySetValue(v38, @"UseVTCompression", v39);
      *(a1 + 280) = 1;
    }

    if (!CFDictionaryContainsKey(v16, @"UseCodecSessionPool"))
    {
      v40 = *v17;
      CFDictionarySetValue(v16, @"UseCodecSessionPool", *v17);
      *(a1 + 264) = v40;
    }
  }

  if (a6 == 2 && !*(a1 + 8))
  {
    v41 = *(a1 + 296);
    v42 = v41 != 0;
    if (v41 && !*a1)
    {
      *(a1 + 4) = 1785750887;
    }

    if (a7 == 1278226736 || a7 == 1278226742)
    {
      v45 = *(a1 + 4);
      if (v41)
      {
        v44 = 1;
      }

      else
      {
        v44 = v45 == 1785750887;
      }

      v42 = v44;
    }

    else
    {
      v45 = *(a1 + 4);
    }

    cf = 0;
    value = 0;
    v46 = CMPhotoQualityControllerCopyDefaultControllerForAuxiliaryImage(v45, v42, &value, &cf);
    if (v46)
    {
      v47 = v46;
      CFRelease(v16);
      return v47;
    }

    CFDictionarySetValue(v16, @"QualityControllerType", value);
    if (cf)
    {
      CFDictionarySetValue(v16, @"QualityControllerParameters", cf);
    }

    if (value)
    {
      CFRelease(value);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v47 = 0;
  *a8 = v16;
  return v47;
}

uint64_t CMPhotoCompressionSessionCreateAuxTypeProperties(int a1, const __CFDictionary *a2, __CVBuffer *a3, CFTypeRef *a4, __CFData **a5)
{
  if (a4)
  {
    *a4 = CMPhotoCreateURNFromAuxiliaryImageType(a1);
  }

  if ((a1 - 1) >= 2)
  {
    if (a1 == 5)
    {
      return 0;
    }

    if (a1 != 3)
    {
      return 4294950304;
    }

    cf = 0;
    *bytes = 0u;
    v123 = 0u;
    v9 = CMPhotoPixelBufferGetAlphaMode(a3) == 1;
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v12 = OUTLINED_FUNCTION_15_9();
      if (!v12)
      {
        v13 = CMPhotoBitStreamWriteInit(bytes, cf, 0);
        v21 = OUTLINED_FUNCTION_8_12(v13, v14, v15, v16, v17, v18, v19, v20, v111, v116, bytes[0]);
        v12 = CMPhotoBitStreamWriteBits(v21, v22, 1u);
        if (!v12)
        {
          v12 = CMPhotoBitStreamWriteBits(bytes, v9, 3u);
          if (!v12)
          {
            v30 = OUTLINED_FUNCTION_8_12(v12, v23, v24, v25, v26, v27, v28, v29, v112, v117, bytes[0]);
            v12 = CMPhotoBitStreamWriteBits(v30, v31, 3u);
            if (!v12)
            {
              v39 = OUTLINED_FUNCTION_8_12(v12, v32, v33, v34, v35, v36, v37, v38, v113, v118, bytes[0]);
              v12 = CMPhotoBitStreamWriteBits(v39, v40, 8u);
              if (!v12)
              {
                v12 = CMPhotoBitStreamWriteBits(bytes, 255, 8u);
                if (!v12)
                {
                  v48 = OUTLINED_FUNCTION_8_12(v12, v41, v42, v43, v44, v45, v46, v47, v114, v119, bytes[0]);
                  v12 = CMPhotoBitStreamWriteBits(v48, v49, 1u);
                  if (!v12)
                  {
                    v57 = OUTLINED_FUNCTION_8_12(v12, v50, v51, v52, v53, v54, v55, v56, v115, v120, bytes[0]);
                    v12 = CMPhotoBitStreamWriteBits(v57, v58, 1u);
                    if (!v12)
                    {
                      v59 = CMPhotoBitStreamWriteFlush(bytes);
                      if (!v59)
                      {
                        v60 = -91;
                        v61 = Mutable;
                        Mutable = 0;
                        goto LABEL_41;
                      }

                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_56:
      v59 = v12;
LABEL_57:
      v61 = 0;
      v60 = 0;
      goto LABEL_41;
    }

    goto LABEL_59;
  }

  cf = 0;
  *bytes = 0u;
  v123 = 0u;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
LABEL_59:
    v61 = 0;
    v60 = 0;
    v59 = 4294950305;
    goto LABEL_41;
  }

  v12 = OUTLINED_FUNCTION_15_9();
  if (v12)
  {
    goto LABEL_56;
  }

  CMPhotoBitStreamWriteInit(bytes, cf, 0);
  if (a1 == 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  if (a2 && (v63 = CFDictionaryContainsKey(a2, @"FloatMaxValue"), !v63))
  {
    v92 = OUTLINED_FUNCTION_8_12(v63, v64, v65, v66, v67, v68, v69, v70, v111, 0, bytes[0]);
    CMPhotoBitStreamWriteBits(v92, v93, 4u);
    CMPhotoBitStreamWriteExpGolomb(bytes, v62);
  }

  else
  {
    if (!FigCFDictionaryGetFloatIfPresent() || (FloatIfPresent = FigCFDictionaryGetFloatIfPresent(), !FloatIfPresent))
    {
      v61 = 0;
      v60 = 0;
      v59 = 4294950304;
      goto LABEL_41;
    }

    if (a1 == 2)
    {
      v79 = 2;
      v80 = CMPhotoBitStreamWriteBits(bytes, 3, 2u);
      v88 = OUTLINED_FUNCTION_8_12(v80, v81, v82, v83, v84, v85, v86, v87, v111, 0, bytes[0]);
      CMPhotoBitStreamWriteBits(v88, v89, 2u);
    }

    else
    {
      v90 = OUTLINED_FUNCTION_8_12(FloatIfPresent, v72, v73, v74, v75, v76, v77, v78, v111, 0, bytes[0]);
      CMPhotoBitStreamWriteBits(v90, v91, 2u);
      CMPhotoBitStreamWriteBits(bytes, 3, 2u);
      CMPhotoBitStreamWriteExpGolomb(bytes, 1);
      v79 = 0;
    }

    CMPhotoBitStreamWriteExpGolomb(bytes, v79);
    _writeDepthRepInfoElement(bytes, *&v121);
    _writeDepthRepInfoElement(bytes, *(&v121 + 1));
  }

  v94 = CMPhotoBitStreamWriteFlush(bytes);
  if (v94)
  {
    v61 = 0;
  }

  else
  {
    v61 = Mutable;
  }

  if (v94)
  {
    v60 = 0;
  }

  else
  {
    v60 = -79;
  }

  if (v94)
  {
    v59 = v94;
  }

  else
  {
    Mutable = 0;
    v59 = 0;
  }

LABEL_41:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v59)
  {
    if (v61)
    {
      Length = CFDataGetLength(v61);
      v96 = CFDataCreateMutable(v10, 0);
      if (!v96)
      {
        v59 = 4294950305;
        goto LABEL_53;
      }

      v97 = v96;
      v98 = Length + Length / 0xFF;
      *bytes = bswap32(v98 + 8);
      CFDataAppendBytes(v96, bytes, 4);
      *bytes = bswap32(v98 + 4);
      v99 = OUTLINED_FUNCTION_13_10();
      CFDataAppendBytes(v99, v100, 4);
      *bytes = 334;
      v101 = OUTLINED_FUNCTION_13_10();
      CFDataAppendBytes(v101, v102, 2);
      bytes[0] = v60;
      v103 = OUTLINED_FUNCTION_13_10();
      CFDataAppendBytes(v103, v104, 1);
      bytes[0] = -1;
      if (Length >= 0xFF)
      {
        v105 = Length / 0xFF;
        do
        {
          v106 = OUTLINED_FUNCTION_13_10();
          CFDataAppendBytes(v106, v107, 1);
          --v105;
        }

        while (v105);
      }

      LOBYTE(cf) = Length + Length / 0xFF;
      CFDataAppendBytes(v97, &cf, 1);
      BytePtr = CFDataGetBytePtr(v61);
      v109 = CFDataGetLength(v61);
      CFDataAppendBytes(v97, BytePtr, v109);
      v59 = 0;
      *a5 = v97;
      goto LABEL_52;
    }

    return 4294950304;
  }

LABEL_52:
  if (v61)
  {
LABEL_53:
    CFRelease(v61);
  }

  return v59;
}

uint64_t CMPhotoCompressionSessionCreatePixelBufferForEncoding(uint64_t a1, void *a2, __CFDictionary *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, _OWORD *a12, __CFDictionary *a13, void *a14)
{
  v18 = a3;
  IsFullRange = v15;
  v22 = a9;
  v92 = 0;
  v93 = 0;
  v23 = a10;
  v24 = vcvtd_n_f64_u64(a9, 1uLL);
  cf = 0;
  v25 = vabdd_f64(floor(v24), v24) >= 0.000001 || vabdd_f64(floor(v23 * 0.5), v23 * 0.5) >= 0.000001;
  v26 = 0;
  v27 = a13;
  if (!a3 && v25)
  {
    v26 = *(a6 + 81) == 0;
  }

  v28 = a4 | a3;
  if (*(a6 + 82))
  {
    v29 = v28 == 0;
    v30 = !v26;
    if (!v29)
    {
      v30 = 0;
    }

    if (v30)
    {
      goto LABEL_11;
    }

    goto LABEL_107;
  }

  if (!v28)
  {
LABEL_11:
    OUTLINED_FUNCTION_3_12();
    v35 = 1;
LABEL_12:
    if (!v26)
    {
      *a11 = *(a6 + 192);
      *a12 = *(a6 + 192);
LABEL_49:
      if (a2)
      {
        v55 = CFRetain(a2);
      }

      else
      {
        v55 = 0;
      }

      v56 = 0;
      *a14 = v55;
      goto LABEL_53;
    }

    v36 = vcvtq_u64_f64(vrndaq_f64(*(a6 + 192)));
    v37 = vaddq_s64(vorrq_s8(v36, vdupq_n_s64(0xFFFFFFFFFFFFFFFELL)), vaddq_s64(v36, vdupq_n_s64(2uLL)));
    if (v32)
    {
      v38 = v37.u64[0];
      v39 = v37.u64[1];
LABEL_48:
      *a11 = v38;
      *(a11 + 8) = v39;
      *a12 = vcvtq_f64_u64(v36);
      *(a6 + 104) = v37;
      goto LABEL_49;
    }

    v84 = v36;
    v85 = v37;
    theDict = v33;
    if (!v35)
    {
LABEL_45:
      PaddedPixelBufferAndClearPadding = CMPhotoRemovePixelBufferCLAP(a2);
      if (!PaddedPixelBufferAndClearPadding)
      {
        v38 = v85.u64[0];
        v39 = v85.u64[1];
        PaddedPixelBufferAndClearPadding = CMPhotoSetPixelBufferCLAPFromRect(a2, 0, 1, 0.0, 0.0, v85.u64[0], v85.u64[1]);
        if (!PaddedPixelBufferAndClearPadding)
        {
          CFDictionarySetValue(theDict, @"UsePixelsOutsideCrop", *MEMORY[0x1E695E4D0]);
          v51.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(a2);
          OUTLINED_FUNCTION_9_14(v51, v52, v53, v54);
          v36 = v84;
          v37 = v85;
          goto LABEL_48;
        }
      }

LABEL_109:
      v56 = PaddedPixelBufferAndClearPadding;
      goto LABEL_53;
    }

    v81 = v31;
    v48 = v34;
    PaddedPixelBufferAndClearPadding = CMPhotoCompressionSessionCreatePaddedPixelBufferAndClearPadding(*(v31 + 24), v34, v36.u64[0], v36.u64[1], 2uLL, 2uLL, *(a6 + 280), &cf);
    if (PaddedPixelBufferAndClearPadding)
    {
      goto LABEL_109;
    }

    if (v18)
    {
      CFRelease(v18);
    }

    v50 = OUTLINED_FUNCTION_4_12();
    v18 = v50;
    if (v50)
    {
      CMPhotoCFDictionarySetInt(v50, @"DestinationPixelFormat", v48);
      CMPhotoCFDictionarySetBoolean(v18, @"ExactDimensions", *(a6 + 280));
      CMPhotoCFDictionarySetSize(v18, @"RowAlignment", 64);
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }

      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(a6 + 176));
      if (DictionaryRepresentation)
      {
        CFDictionarySetValue(v18, @"SourceCropRectDictionary", DictionaryRepresentation);
      }

      if (IsFullRange)
      {
        CFRelease(IsFullRange);
      }

      IsFullRange = CGSizeCreateDictionaryRepresentation(*(a6 + 192));
      if (IsFullRange)
      {
        CFDictionarySetValue(v18, @"DestinationSizeDictionary", IsFullRange);
      }

      PaddedPixelBufferAndClearPadding = CMPhotoScaleAndRotateSessionTransformImage(*(v81 + 32), a2, v18, &cf);
      if (PaddedPixelBufferAndClearPadding)
      {
        goto LABEL_109;
      }

      a2 = cf;
      goto LABEL_45;
    }

LABEL_112:
    v56 = 4294950305;
    goto LABEL_53;
  }

  if (!a3)
  {
    *(a6 + 68) = 0;
  }

  v40 = a9;
  if (!a4)
  {
    if (!a5)
    {
      v83 = 0;
      goto LABEL_72;
    }

LABEL_69:
    OUTLINED_FUNCTION_3_12();
    *(a6 + 176) = 0;
    *(a6 + 184) = 0;
    *(a6 + 192) = v40;
    *(a6 + 200) = v23;
    v35 = 1;
    *(a6 + 88) = 0;
    *(a6 + 96) = 0;
    goto LABEL_12;
  }

  if (!*(a6 + 64))
  {
LABEL_107:
    fig_log_get_emitter();
    v64 = FigSignalErrorAtGM();
LABEL_108:
    v56 = v64;
    OUTLINED_FUNCTION_3_12();
    goto LABEL_53;
  }

  if (a5)
  {
    goto LABEL_69;
  }

  if (*(a6 + 32))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_6();
      v42 = v41;
      v44 = v43;
      kdebug_trace();
      a7 = v44;
      a1 = v42;
    }

    v45 = a1;
    v46 = a7;
    YUVPixelBufferWithDithering = CMPhotoCreateYUVPixelBufferWithDithering(a2, *(a1 + 24), a7, &v93);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_6();
      kdebug_trace();
    }

    v83 = YUVPixelBufferWithDithering != 0;
    if (!YUVPixelBufferWithDithering)
    {
      a2 = v93;
    }

    v27 = a13;
    a1 = v45;
    a7 = v46;
    a5 = 0;
  }

  else
  {
    v83 = 1;
  }

LABEL_72:
  v86 = a5;
  theDicta = v27;
  v58 = a1;
  if (*(a6 + 81))
  {
    DictionaryRepresentation = *(a6 + 104);
    IsFullRange = *(a6 + 112);
  }

  else
  {
    v59 = a7;
    IsCompressed = CMPhotoPixelFormatIsCompressed(a7);
    a7 = v59;
    if (IsCompressed)
    {
      IsFullRange = 2;
    }

    else
    {
      IsFullRange = 16;
    }

    DictionaryRepresentation = IsFullRange;
  }

  v89 = 0;
  v90 = 0;
  v61 = a7;
  if (v18)
  {
    v62 = *(a6 + 73) != 0;
  }

  else
  {
    v62 = 0;
  }

  CMPhotoPixelBufferConstrainSizeToMaxSideLength(a9, a10, *(a6 + 68), 0, 0, *(a6 + 72), v62, &v89, 0, 0);
  v82 = *(a6 + 280) != 0;
  v63 = v61;
  if (!*(a6 + 280))
  {
    v64 = CMPhotoCompressionSessionCreatePaddedPixelBufferAndClearPadding(*(v58 + 24), v61, v89, v90, DictionaryRepresentation, IsFullRange, 0, &v92);
    if (v64)
    {
      goto LABEL_108;
    }

    CFDictionarySetValue(theDicta, @"UsePixelsOutsideCrop", *MEMORY[0x1E695E4D0]);
    v65 = v89;
    v66 = v90;
    v64 = CMPhotoPropagateBayerPatternIfNeeded(a2, v92);
    if (v64)
    {
      goto LABEL_108;
    }

    v40 = v65;
    v23 = v66;
    v63 = v61;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    v68 = v67;
    kdebug_trace();
    v63 = v68;
  }

  v69 = v63;
  DefaultTripletsForTransfer = CMPhotoCreateDefaultTripletsForTransfer(a2, v63);
  v22 = v71;
  IsFullRange = CMPhotoPixelFormatIsFullRange(v69);
  v72 = v69;
  DictionaryRepresentation = CMPhotoGetChromaSubsamplingFromPixelFormat(v69);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v74 = CMPhotoPixelFormatContainsRGB(PixelFormatType);
  v75 = !v83;
  if (v18)
  {
    v75 = 1;
  }

  if ((v75 & 1) == 0 && *(a6 + 33) && DictionaryRepresentation == 1 && IsFullRange && v74)
  {
    v56 = CMPhotoPixelBufferConvertRGBToYCbCrIdentityMatrix(*(v58 + 24), 1, a2, &v92);
    OUTLINED_FUNCTION_3_12();
  }

  else
  {
    v76 = OUTLINED_FUNCTION_4_12();
    v18 = v76;
    if (!v76)
    {
      v22 = 0;
      IsFullRange = 0;
      DictionaryRepresentation = 0;
      goto LABEL_112;
    }

    CMPhotoCFDictionarySetInt(v76, @"DestinationPixelFormat", v72);
    CMPhotoCFDictionarySetBoolean(v18, @"ExactDimensions", *(a6 + 280));
    CMPhotoCFDictionarySetSize(v18, @"RowAlignment", 64);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(a6 + 176));
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(v18, @"SourceCropRectDictionary", DictionaryRepresentation);
    }

    v94.width = v40;
    v94.height = v23;
    IsFullRange = CGSizeCreateDictionaryRepresentation(v94);
    if (IsFullRange)
    {
      CFDictionarySetValue(v18, @"DestinationSizeDictionary", IsFullRange);
    }

    v22 = CMPhotoColorTripletCreateDictionaryRepresentation(DefaultTripletsForTransfer, v22);
    if (v22)
    {
      CFDictionarySetValue(v18, @"DestinationColorTripletDictionary", v22);
    }

    v56 = CMPhotoScaleAndRotateSessionTransformImage(*(v58 + 32), a2, v18, &v92);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  if (!v56)
  {
    a2 = v92;
    v77.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(v92);
    OUTLINED_FUNCTION_9_14(v77, v78, v79, v80);
    v33 = theDicta;
    v31 = v58;
    v34 = v72;
    v32 = v86;
    v35 = v82;
    goto LABEL_12;
  }

LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (IsFullRange)
  {
    CFRelease(IsFullRange);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v56;
}

uint64_t CMPhotoCompressionSessionAddHEIFItemIfNeeded(void *a1, int a2, unsigned int a3, const opaqueCMFormatDescription *a4, uint64_t a5, const void *a6, const void *a7, int a8, uint64_t a9, char a10, CFIndex a11, unsigned __int8 a12, uint64_t a13, unsigned int a14, uint64_t a15, char a16, char a17, char a18, CFIndex *a19)
{
  v24 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v24, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v26 = Mutable;
  if (!*(a15 + 1))
  {
    v29 = 0;
    goto LABEL_9;
  }

  if (!*(a15 + 2))
  {
    v63.width = *(a15 + 24);
    v63.height = *(a15 + 32);
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v63);
    if (!DictionaryRepresentation)
    {
      v55 = 4294950305;
      goto LABEL_70;
    }

    v29 = DictionaryRepresentation;
    CFDictionarySetValue(v26, *MEMORY[0x1E6972220], DictionaryRepresentation);
LABEL_9:
    v60 = 0;
    goto LABEL_10;
  }

  if (!cmpweak_exists_kFigPictureCollectionWriterOption_OverlayItemCount())
  {
    v55 = 4294950297;
LABEL_70:
    v56 = v26;
LABEL_58:
    CFRelease(v56);
    return v55;
  }

  Int16 = CMPhotoCFNumberCreateInt16(*(a15 + 64) * *(a15 + 56));
  v28 = cmpweak_kFigPictureCollectionWriterOption_OverlayItemCount();
  v60 = Int16;
  CFDictionarySetValue(v26, v28, Int16);
  v29 = 0;
LABEL_10:
  v31 = MEMORY[0x1E695E4D0];
  if (!a2 && a10)
  {
    CFDictionarySetValue(v26, *MEMORY[0x1E6972210], *MEMORY[0x1E695E4D0]);
  }

  if (a18)
  {
    if (a10)
    {
LABEL_34:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_12();
      v32 = FigSignalErrorAtGM();
LABEL_60:
      v55 = v32;
      v39 = 0;
      goto LABEL_52;
    }

    CFDictionarySetValue(v26, *MEMORY[0x1E69721D0], *MEMORY[0x1E695E4C0]);
  }

  v32 = CMPhotoCFDictionarySetInt(v26, *MEMORY[0x1E6972218], *(a9 + 4));
  if (v32)
  {
    goto LABEL_60;
  }

  v33 = *(a9 + 8);
  if (v33 != -1)
  {
    v32 = CMPhotoCFDictionarySetInt(v26, *MEMORY[0x1E69721E0], v33);
    if (v32)
    {
      goto LABEL_60;
    }
  }

  if (a17)
  {
    CFDictionarySetValue(v26, *MEMORY[0x1E69721B8], *v31);
  }

  if (a7)
  {
    CFDictionarySetValue(v26, *MEMORY[0x1E69721C8], a7);
    if (a6)
    {
      CFDictionarySetValue(v26, *MEMORY[0x1E69721C0], a6);
    }
  }

  if (a8)
  {
    if (a14 != 1278226742)
    {
      if (a14 == 1278226736)
      {
        OUTLINED_FUNCTION_12_10();
        if (v34)
        {
          BitDepthForPixelFormat = 16;
        }

        else
        {
          BitDepthForPixelFormat = 10;
        }

        goto LABEL_36;
      }

LABEL_35:
      BitDepthForPixelFormat = 16;
LABEL_36:
      v37 = 1;
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_12_10();
    if (v34)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v36 = CMPhotoGetChromaSubsamplingFromPixelFormat(a14) & 0xFFFFFFFE;
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(a14);
  if (v36 == 6)
  {
    v37 = 1;
  }

  else
  {
    v37 = 3;
  }

LABEL_37:
  valuePtr = BitDepthForPixelFormat;
  v38 = *MEMORY[0x1E695E480];
  v39 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_12();
    goto LABEL_50;
  }

  v40 = CFNumberCreate(v38, kCFNumberCharType, &valuePtr);
  if (v40)
  {
    v41 = v40;
    do
    {
      CFArrayAppendValue(v39, v41);
      --v37;
    }

    while (v37);
    CFRelease(v41);
  }

  CFDictionaryAddValue(v26, *MEMORY[0x1E6972208], v39);
  CMPhotoCFDictionarySetBoolean(v26, @"ReserveImageHandle", a12);
  if (a2 == 2)
  {
    v49 = OUTLINED_FUNCTION_11_11();
    v42 = CMPhotoHEIFFileWriterAddAuxiliaryImageToImage(v49, v50, v51, v52, v53, v54);
    goto LABEL_51;
  }

  if (a2 == 1)
  {
    v43 = OUTLINED_FUNCTION_11_11();
    v42 = CMPhotoHEIFFileWriterAddThumbnailToImage(v43, v44, v45, v46, v47, v48);
    goto LABEL_51;
  }

  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_12();
LABEL_50:
    v42 = FigSignalErrorAtGM();
    goto LABEL_51;
  }

  if (a16)
  {
    v42 = CMPhotoHEIFFileWriterAddImageToSequence(a1[11], v26, 1, a13, a3, a4, a19);
LABEL_51:
    v55 = v42;
LABEL_52:
    v56 = v60;
    goto LABEL_53;
  }

  v58 = a1[11];
  if (a11 == -1)
  {
    v42 = CMPhotoHEIFFileWriterAddImageToCollection(v58, v26, a3, a4, a19);
    goto LABEL_51;
  }

  v56 = v60;
  if (CMPhotoHEIFFileWriterCompareReservedImageHandleWithOptions(v58, v26, a3, a4, a11))
  {
    v55 = 0;
    *a19 = a11;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_12();
    v55 = FigSignalErrorAtGM();
  }

LABEL_53:
  CFRelease(v26);
  if (v29)
  {
    CFRelease(v29);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v56)
  {
    goto LABEL_58;
  }

  return v55;
}

const void *CMPhotoCompressionSessionDisposeCompressionPluginsForSequenceAsyncEncoding(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _disposePluginFunction, 0);
    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 56) = 0;
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = CMPhotoCodecSessionPoolFlush(result, 1);
    if (!result)
    {
      result = *(a1 + 48);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(a1 + 48) = 0;
      }
    }
  }

  return result;
}

uint64_t CMPhotoCompressionSessionCreateEncodeOptionsAndBufferForJPEGAuxImage(const void **a1, CFDictionaryRef theDict, int a3, int a4, __CFDictionary **a5, CVPixelBufferRef *a6, void *a7, CFTypeRef *a8, _BYTE *a9)
{
  v59 = 0;
  if (!a6 || !*a6)
  {
    return 4294950306;
  }

  if (theDict)
  {
    v17 = CFDictionaryGetValue(theDict, @"AuxiliaryImagePreserveValue");
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      v20 = CFGetTypeID(v17);
      v36 = v20 == CFNumberGetTypeID();
      v18 = v19;
      if (!v36)
      {
        goto LABEL_6;
      }
    }

    v56 = v18;
    LODWORD(value) = 0;
    IntIfPresent = FigCFDictionaryGetIntIfPresent();
    v22 = 0;
    v23 = CFDictionaryGetValue(theDict, @"AuxiliaryImageCustomTypeURN");
    if (v23)
    {
      v54 = a3;
      v24 = v23;
      v25 = a4;
      v26 = a5;
      v27 = a7;
      v28 = a8;
      v29 = CFGetTypeID(v23);
      v36 = v29 == CFStringGetTypeID();
      v23 = v24;
      a3 = v54;
      a8 = v28;
      a7 = v27;
      a5 = v26;
      a4 = v25;
      v22 = 0;
      if (!v36)
      {
        v53 = 4294950306;
        goto LABEL_83;
      }
    }

    v30 = IntIfPresent == 0;
  }

  else
  {
    v56 = 0;
    v23 = 0;
    v22 = 0;
    v30 = 1;
  }

  if (a3 == 4 && !v23)
  {
LABEL_6:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_16();
    v53 = FigSignalErrorAtGM();
    goto LABEL_83;
  }

  v55 = v23;
  v31 = a1;
  CFGetAllocator(a1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v33 = MutableCopy;
    PixelFormatType = CVPixelBufferGetPixelFormatType(*a6);
    v35 = PixelFormatType;
    if (v30)
    {
      v36 = PixelFormatType == 1278226742 || PixelFormatType == 1278226736;
      v22 = v36 || v56 != 0;
      cf = 0;
      value = 0;
      v38 = CMPhotoQualityControllerCopyDefaultControllerForAuxiliaryImage(1785750887, v22, &value, &cf);
      if (v38)
      {
        goto LABEL_102;
      }

      CFDictionarySetValue(v33, @"QualityControllerType", value);
      if (cf)
      {
        CFDictionarySetValue(v33, @"QualityControllerParameters", cf);
      }

      if (value)
      {
        CFRelease(value);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (v56 && (v22 & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_16();
      v38 = FigSignalErrorAtGM();
    }

    else
    {
      if ((v35 - 1278226488 > 0x30 || ((1 << (v35 - 56)) & 0x1400000000001) == 0) && (v35 - 1278226736 > 6 || ((1 << (v35 - 48)) & 0x45) == 0))
      {
        v39 = v35 == 825306677 || v35 == 825437747;
        v40 = v39 || v35 == 1380410945;
        v41 = v40 || v35 == 1380411457;
        v42 = v41 || v35 == 1647719528;
        v43 = v42 || v35 == 1651926376;
        v44 = v43 || v35 == 1717855600;
        v45 = v44 || v35 == 1717856627;
        v46 = v45 || v35 == 1751410032;
        v47 = v46 || v35 == 1751411059;
        v48 = v47 || v35 == 1932996149;
        if (!v48 && v35 != 1751527984)
        {
          if (a4)
          {
            goto LABEL_71;
          }

          goto LABEL_96;
        }
      }

      value = 0;
      if (v22)
      {
        v52 = 16;
      }

      else
      {
        v52 = 8;
      }

      v38 = CMPhotoCreateCompressionCompatiblePixelBuffer(*a6, v31[3], v52, v56, 1, &value, &v59);
      if (!v38)
      {
        if (*a6)
        {
          CFRelease(*a6);
        }

        *a6 = value;
        if (a4)
        {
LABEL_71:
          if (!a5)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

LABEL_96:
        CMPhotoCFDictionarySetBoolean(v33, @"PoolCompressedSurfaces", 0);
        if (!a5)
        {
LABEL_73:
          v50 = v55;
          if (a7)
          {
            if (v55)
            {
              v50 = CFRetain(v55);
            }

            *a7 = v50;
          }

          if (a8)
          {
            *a8 = v59;
            v59 = 0;
          }

          if (a9)
          {
            *a9 = v22;
          }

          v53 = 0;
          if (!v33)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        }

LABEL_72:
        *a5 = v33;
        v33 = 0;
        goto LABEL_73;
      }
    }

LABEL_102:
    v53 = v38;
LABEL_82:
    CFRelease(v33);
    goto LABEL_83;
  }

  v53 = 4294950305;
LABEL_83:
  if (v59)
  {
    CFRelease(v59);
  }

  return v53;
}

uint64_t _writeDepthRepInfoElement(uint64_t a1, float a2)
{
  result = CMPhotoBitStreamWriteBits(a1, a2 < 0.0, 1u);
  if (!result)
  {
    v5 = fabsf(a2);
    if (v5 >= 9.3132e-10)
    {
      v7 = vcvtms_s32_f32(log2f(v5));
      v8 = ldexpf(1.0, v7);
      result = CMPhotoBitStreamWriteBits(a1, v7 + 31, 7u);
      if (result)
      {
        return result;
      }

      result = CMPhotoBitStreamWriteBits(a1, 15, 5u);
      if (result)
      {
        return result;
      }

      v9 = ((v5 / v8) + -1.0) * 65536.0;
      LODWORD(v6) = vcvtas_u32_f32(v9);
    }

    else
    {
      result = CMPhotoBitStreamWriteBits(a1, 0, 7u);
      if (result)
      {
        return result;
      }

      result = CMPhotoBitStreamWriteBits(a1, 15, 5u);
      if (result)
      {
        return result;
      }

      v6 = 0;
    }

    return CMPhotoBitStreamWriteBits(a1, v6, 0x10u);
  }

  return result;
}

uint64_t CMPhotoCompressionSessionVerifyOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionVerifyOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionVerifyOptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoCompressionSessionCreatePaddedPixelBufferAndClearPadding_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoJPEGEncodeSessionCreate(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 4294950306;
  }

  pthread_once(&CMPhotoJPEGEncodeSessionGetTypeID_sRegisterCMPhotoJPEGEncodeSessionOnce, fjes_register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294950305;
  }

  v6 = Instance;
  v7 = JPEGDeviceInterface_numberOfJPEGCores();
  *(v6 + 16) = v7;
  *(v6 + 32) = 0;
  *(v6 + 40) = dispatch_semaphore_create(v7);
  Mutable = CFArrayCreateMutable(a1, *(v6 + 16), 0);
  *(v6 + 24) = Mutable;
  if (!Mutable)
  {
    v11 = 4294950305;
LABEL_11:
    CFRelease(v6);
    return v11;
  }

  if (*(v6 + 16) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = JPEGDeviceInterface_openDriverConnection();
      if (!v10)
      {
        break;
      }

      CFArrayAppendValue(*(v6 + 24), v10);
      if (++v9 >= *(v6 + 16))
      {
        goto LABEL_8;
      }
    }

    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

LABEL_8:
  v11 = 0;
  *a3 = v6;
  return v11;
}

uint64_t CMPhotoJPEGEncodeSessionCreateJPEGSbufFromBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 4294950306;
  }

  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock((a1 + 32));
  v10 = *(a1 + 24);
  if (!v10 || CFArrayGetCount(v10) < 1)
  {
    JPEGSbufFromBuffer = 4294950306;
    goto LABEL_7;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 0);
  CFArrayRemoveValueAtIndex(*(a1 + 24), 0);
  os_unfair_lock_unlock((a1 + 32));
  JPEGSbufFromBuffer = CMPhotoJPEGCachedConnectionCreateJPEGSbufFromBuffer(ValueAtIndex, a2, a3, a4, a5);
  if (ValueAtIndex)
  {
    os_unfair_lock_lock((a1 + 32));
    CFArrayInsertValueAtIndex(*(a1 + 24), 0, ValueAtIndex);
LABEL_7:
    os_unfair_lock_unlock((a1 + 32));
    dispatch_semaphore_signal(*(a1 + 40));
  }

  return JPEGSbufFromBuffer;
}

uint64_t CMPhotoUnifiedJPEGDecoderCreateClone(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v21 = 0;
  v14 = CMPhotoUnifiedJPEGDecoderCreate(v5, v6, v9, v10, v7, v11, v12, v13, v8, &v21);
  v15 = v21;
  if (v14)
  {
    v19 = v14;
    goto LABEL_10;
  }

  SWDecoderIfNeeded = _createSWDecoderIfNeeded(v21, 0);
  if (SWDecoderIfNeeded)
  {
    v19 = SWDecoderIfNeeded;
    v15 = v21;
    goto LABEL_10;
  }

  if (*(a1 + 72))
  {
    v22 = 16;
    v23 = 1;
    ra_table_sz = applejpeg_decode_get_ra_table_sz();
    if (ra_table_sz < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = malloc_type_malloc(ra_table_sz, 0x9E904CE4uLL);
      if (!v17 || !applejpeg_decode_dump_ra_table() && !applejpeg_decode_set_ra_table())
      {
        goto LABEL_9;
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  else
  {
    v17 = 0;
  }

LABEL_9:
  free(v17);
  v15 = 0;
  v19 = 0;
  *a3 = v21;
  v21 = 0;
LABEL_10:
  CMPhotoUnifiedJPEGDecoderDestroy(v15);
  return v19;
}

uint64_t _createSWDecoderIfNeeded(uint64_t a1, int a2)
{
  dataPointerOut = 0;
  v30 = 0;
  if (*(a1 + 72))
  {
    DataWrappingIOSurface = 0;
    v17 = 0;
    goto LABEL_45;
  }

  v4 = *(a1 + 48);
  switch(v4)
  {
    case 1:
      DataWrappingIOSurface = *(a1 + 88);
      if (!DataWrappingIOSurface)
      {
        DataWrappingIOSurface = *(a1 + 40);
      }

LABEL_12:
      dataPointerOut = CFDataGetBytePtr(DataWrappingIOSurface);
      Length = CFDataGetLength(DataWrappingIOSurface);
      DataWrappingIOSurface = 0;
      v30 = Length;
      IsRangeContiguous = 1;
LABEL_13:
      v10 = _applejpeg_read_stream;
      goto LABEL_24;
    case 2:
      v6 = *(a1 + 40);
      DataWrappingIOSurface = OUTLINED_FUNCTION_7_12();
      if (!DataWrappingIOSurface)
      {
LABEL_55:
        v17 = 4294950305;
        goto LABEL_45;
      }

      if (v6)
      {
        v7 = CFRetain(v6);
      }

      else
      {
        v7 = 0;
      }

      *DataWrappingIOSurface = v7;
      DataLength = CMBlockBufferGetDataLength(v6);
      *(DataWrappingIOSurface + 5) = DataLength;
      IsRangeContiguous = CMBlockBufferIsRangeContiguous(*(a1 + 40), 0, DataLength);
      DataPointer = CMBlockBufferGetDataPointer(*(a1 + 40), 0, &v30, 0, &dataPointerOut);
      v10 = _applejpeg_read_bbuf;
      if (DataPointer)
      {
        v17 = DataPointer;
        goto LABEL_45;
      }

LABEL_24:
      v20 = v10;
      OUTLINED_FUNCTION_9_1();
      if (v21)
      {
        kdebug_trace();
      }

      v22 = applejpeg_decode_create();
      OUTLINED_FUNCTION_9_1();
      if (v21)
      {
        OUTLINED_FUNCTION_4();
      }

      applejpeg_decode_set_parse_option_use_first_sof();
      OUTLINED_FUNCTION_9_1();
      if (v21)
      {
        kdebug_trace();
      }

      if (IsRangeContiguous)
      {
        v23 = applejpeg_decode_open_mem();
      }

      else
      {
        v28[0] = v20;
        v28[1] = 0;
        v28[2] = _applejpeg_skip_0;
        v28[3] = _applejpeg_rewind_0;
        v28[4] = DataWrappingIOSurface;
        v28[5] = 0;
        v28[6] = *(DataWrappingIOSurface + 5);
        v23 = applejpeg_decode_open_file();
      }

      v24 = v23;
      OUTLINED_FUNCTION_9_1();
      if (v21)
      {
        kdebug_trace();
      }

      if (v24)
      {
        image_info = v24;
      }

      else
      {
        image_info = applejpeg_decode_get_image_info();
        if (!image_info)
        {
          *(a1 + 140) = applejpeg_decode_get_precision();
          *(a1 + 136) = applejpeg_decode_get_chroma_subsampling();
          if (a2)
          {
            applejpeg_decode_set_option_buildindex();
            applejpeg_decode_build_index();
          }

          v17 = 0;
          *(a1 + 72) = v22;
          *(a1 + 80) = DataWrappingIOSurface;
          goto LABEL_44;
        }
      }

      v17 = CMPhotoAppleJPEGErrorToCMPhotoError(image_info);
      goto LABEL_45;
    case 4:
      DataWrappingIOSurface = CMPhotoCreateDataWrappingIOSurface(*(a1 + 8), *(a1 + 40), 0, 0);
      *(a1 + 88) = DataWrappingIOSurface;
      if (!DataWrappingIOSurface)
      {
        goto LABEL_55;
      }

      goto LABEL_12;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a1 + 32);
  DataWrappingIOSurface = OUTLINED_FUNCTION_7_12();
  if (!DataWrappingIOSurface)
  {
    v17 = 4294950305;
    goto LABEL_21;
  }

  v28[0] = 0;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v14)
  {
    v17 = 4294954514;
    goto LABEL_21;
  }

  v15 = v14(v12, v11, v28);
  if (v15)
  {
    v17 = v15;
    goto LABEL_21;
  }

  v16 = v28[0];
  if (v11 | v13)
  {
    v16 = v13;
    if (v28[0] < v13)
    {
      v17 = 4294950194;
      goto LABEL_21;
    }

LABEL_48:
    if (v12)
    {
      v27 = CFRetain(v12);
    }

    else
    {
      v27 = 0;
    }

    *(DataWrappingIOSurface + 1) = v27;
    *(DataWrappingIOSurface + 2) = v11;
    *(DataWrappingIOSurface + 3) = v16;
    *(DataWrappingIOSurface + 5) = v16;
    InputWrapper_destroy(0);
    IsRangeContiguous = 0;
    goto LABEL_13;
  }

  if ((v28[0] & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  v17 = 4294950190;
LABEL_21:
  InputWrapper_destroy(DataWrappingIOSurface);
LABEL_44:
  DataWrappingIOSurface = 0;
LABEL_45:
  applejpeg_decode_destroy();
  InputWrapper_destroy(DataWrappingIOSurface);
  return v17;
}

uint64_t _applejpeg_read_bbuf(char *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294967294;
  }

  v4 = a2;
  v5 = a2;
  v6 = *(a3 + 32);
  if (*(a3 + 40) - v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(a3 + 40) - v6;
  }

  if (v7)
  {
    v11 = 0;
    dataPointerOut = 0;
    while (!CMBlockBufferGetDataPointer(*a3, v6, &v11, 0, &dataPointerOut) && v11)
    {
      if (v7 >= v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = v7;
      }

      memcpy(a1, dataPointerOut, v9);
      a1 += v9;
      v6 = *(a3 + 32) + v9;
      *(a3 + 32) = v6;
      v7 -= v9;
      if (!v7)
      {
        return v4;
      }
    }

    return 4294967294;
  }

  return v4;
}

uint64_t _applejpeg_read_stream(uint64_t a1, int a2, void *a3)
{
  if (!a3)
  {
    return 4294967294;
  }

  v4 = a3[4];
  if (a3[5] - v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3[5] - v4;
  }

  if (!v5)
  {
    return 4294967294;
  }

  v7 = a3[1];
  v8 = a3[2];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    return 4294967294;
  }

  v11 = 0;
  if (v9(v7, v5, v8 + v4, a1, &v11))
  {
    return 4294967294;
  }

  result = v11;
  if (!v11)
  {
    return 4294967294;
  }

  a3[4] += v11;
  return result;
}

uint64_t _applejpeg_skip_0(int a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a2 + 32) + a1;
  if (v2 >= *(a2 + 40))
  {
    fig_log_get_emitter();
    if (FigSignalErrorAtGM())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(a2 + 32) = v2;
  }

  return result;
}

uint64_t _applejpeg_rewind_0(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = 0;
  }

  return 0;
}

void __CMPhotoSupportsHEVCHWEncode_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6984270];
  values = *MEMORY[0x1E695E4D0];
  keys[0] = v0;
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    v2 = v1;
    CMPhotoSupportsHEVCHWEncode_hwSupported = VTSelectAndCreateVideoEncoderInstance() == 0;
    CFRelease(v2);
  }
}

uint64_t CMPhotoMutableDataWriteStreamCreate(uint64_t a1, uint64_t a2)
{
  memcpy(v4, &unk_1F1916250, sizeof(v4));
  if (a2)
  {
    return CFWriteStreamCreate();
  }

  else
  {
    return 0;
  }
}

uint64_t CMPhotoJPEGQualityControllerParse(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, CFTypeRef cf, int a8, void *a9)
{
  memset(__src, 0, sizeof(__src));
  v9 = (a5 & 0xFFFFFFFFFFFFFFFBLL) == 8 || a6 == 5;
  v10 = 4294950306;
  if (v9 && a9)
  {
    *&__src[32] = a6;
    *__src = a2;
    *&__src[8] = a3;
    *&__src[16] = a4;
    *&__src[24] = a5;
    if (cf)
    {
      v18 = CFRetain(cf);
    }

    else
    {
      v18 = 0;
    }

    *&__src[64] = v18;
    v10 = 4294950196;
    switch(a6)
    {
      case 2:
        if (!v18)
        {
          goto LABEL_83;
        }

        v19 = CFGetTypeID(v18);
        if (v19 == CFDataGetTypeID())
        {
          OUTLINED_FUNCTION_2_18();
          v21 = malloc_type_malloc(0x80uLL, v20);
          *&__src[96] = v21;
          if (v21)
          {
            v22 = v21;
            *&__src[80] = v21;
            *&__src[88] = v21;
            *&__src[72] = v21;
            v23 = v18;
            v24 = v22;
            goto LABEL_15;
          }

LABEL_96:
          v10 = 4294950305;
          break;
        }

        v50 = CFGetTypeID(v18);
        if (v50 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v18);
          if ((Count & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v52 = Count;
            OUTLINED_FUNCTION_2_18();
            v55 = malloc_type_malloc(v53, v54);
            *&__src[96] = v55;
            if (v55)
            {
              v22 = v55;
              v56 = v55 + 8;
              *&__src[72] = v55;
              *&__src[80] = v55 + 8;
              v57 = &v55[8 * (v52 == 3) + 8];
              *&__src[88] = v57;
              ValueAtIndex = CFArrayGetValueAtIndex(v18, 0);
              v25 = _copyQTableFromData(ValueAtIndex, v22);
              if (v25)
              {
                goto LABEL_71;
              }

              v59 = CFArrayGetValueAtIndex(v18, 1);
              v25 = _copyQTableFromData(v59, v56);
              if (v25)
              {
                goto LABEL_71;
              }

              if (v52 != 3)
              {
                goto LABEL_16;
              }

              v23 = CFArrayGetValueAtIndex(v18, 2);
              v24 = v57;
LABEL_15:
              v25 = _copyQTableFromData(v23, v24);
              if (v25)
              {
                goto LABEL_71;
              }

LABEL_16:
              v26 = 0;
              v27 = 0.8944;
              do
              {
                if (*(v22 + v26) != 1)
                {
                  goto LABEL_20;
                }

                v26 += 2;
              }

              while (v26 != 128);
              v27 = 0.9944;
LABEL_20:
              *&__src[56] = v27;
              v28 = 2 * a3 * a2;
              v29 = (3 * a3 * a2) >> 1;
              if (a5 != 8)
              {
                v29 = 2 * a3 * a2;
                v28 = 3 * a3 * a2;
              }

              v30 = v27;
              if (a4 != 1 && v30 < 0.9944)
              {
                v28 = v29;
              }

              *&__src[40] = v28;
              goto LABEL_47;
            }

            goto LABEL_96;
          }
        }

LABEL_83:
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_2();
        v25 = FigSignalErrorAtGM();
        if (v25)
        {
          goto LABEL_71;
        }

LABEL_84:
        memcpy(a9, __src, 0x68uLL);
        v10 = 0;
        OUTLINED_FUNCTION_3_14();
        break;
      case 3:
        if (!v18)
        {
          goto LABEL_89;
        }

        v40 = CFGetTypeID(v18);
        if (v40 != CFDictionaryGetTypeID())
        {
          goto LABEL_89;
        }

        LODWORD(valuePtr) = 0;
        if (!CMPhotoCFDictionaryGetFloatIfPresent())
        {
          goto LABEL_89;
        }

        v41 = _parseQualityParameters_QValue_float(__src, *&valuePtr);
        goto LABEL_74;
      case 4:
        if (v18 && (v32 = CFGetTypeID(v18), v32 == CFNumberGetTypeID()) && !CFNumberIsFloatType(v18))
        {
          LODWORD(valuePtr) = 0;
          if (CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr) && valuePtr < 6)
          {
            v33 = flt_1A5ABB3B8[valuePtr];
            *&__src[72] = *(&off_1E77A22F0 + valuePtr);
            *&__src[80] = *&__src[72] + 128;
            *&__src[88] = *&__src[72] + 128;
            *&__src[96] = 0;
            *&__src[56] = v33;
            v34 = 3 * a3 * a2;
            v35 = v34 >> 2;
            v36 = 2 * a3 * a2;
            if (a5 == 8)
            {
              v35 = v36 / 3;
              v37 = v34 >> 1;
            }

            else
            {
              v37 = 2 * a3 * a2;
            }

            if (a5 != 8)
            {
              v36 = 3 * a3 * a2;
            }

            v38 = v33;
            if (v38 > 0.9 || a4 == 1)
            {
              v35 = v37;
              if (v38 >= 0.9944)
              {
                v35 = v36;
              }
            }

            *&__src[40] = v35;
LABEL_47:
            __src[36] = 0;
            goto LABEL_84;
          }

          OUTLINED_FUNCTION_1_16();
          OUTLINED_FUNCTION_2();
        }

        else
        {
LABEL_89:
          OUTLINED_FUNCTION_1_16();
          OUTLINED_FUNCTION_2();
        }

        v41 = FigSignalErrorAtGM();
LABEL_74:
        v10 = v41;
        if (v41)
        {
          break;
        }

        goto LABEL_84;
      case 5:
        __src[36] = 1;
        *&__src[40] = 0;
        goto LABEL_84;
      case 10:
        v64 = 0.85;
        v62 = 0;
        valuePtr = 0;
        if (cf && (v42 = CFGetTypeID(cf), v42 == CFDictionaryGetTypeID()))
        {
          if (CMPhotoCFDictionaryGetSizeIfPresent(cf, @"ByteBudget", &v62))
          {
            Value = CFDictionaryGetValue(cf, @"ByteBudgetHint");
            if (!Value)
            {
              v48 = v62;
              v46 = 0.85;
LABEL_69:
              *&__src[48] = v48;
              goto LABEL_70;
            }

            v44 = Value;
            v45 = CFGetTypeID(Value);
            if (v45 == CFDictionaryGetTypeID() && CMPhotoCFDictionaryGetSizeIfPresent(v44, @"ByteBudgetHint_Size", &valuePtr) && CMPhotoCFDictionaryGetFloatIfPresent())
            {
              v46 = v64;
              if (v64 > 0.0 && v64 <= 1.0)
              {
                v48 = v62;
                if (v62 >= valuePtr)
                {
                  if (a8 == 2)
                  {
                    v49 = &_relativeSizeHW;
                  }

                  else
                  {
                    v49 = &_relativeSizeSW;
                  }

                  v46 = _estimateNewQuality(valuePtr, v62, v49, 0, v64);
                }

                goto LABEL_69;
              }
            }
          }

          OUTLINED_FUNCTION_1_16();
          OUTLINED_FUNCTION_2();
        }

        else
        {
          OUTLINED_FUNCTION_1_16();
          OUTLINED_FUNCTION_2();
        }

        v10 = FigSignalErrorAtGM();
        v46 = v64;
        *&__src[48] = v62;
        if (v10)
        {
          break;
        }

LABEL_70:
        v25 = _parseQualityParameters_QValue_float(__src, v46);
        if (!v25)
        {
          goto LABEL_84;
        }

LABEL_71:
        v10 = v25;
        break;
      default:
        break;
    }
  }

  CMPhotoJPEGQualitySettingsReleaseStorage(__src);
  return v10;
}

uint64_t _parseQualityParameters_QValue_float(uint64_t a1, float a2)
{
  result = _copyJPEGQTablesForQValue(*(a1 + 24), a1 + 72, a2);
  if (!result)
  {
    *(a1 + 56) = a2;
    v5 = *(a1 + 8) * *a1;
    if (*(a1 + 24) == 8)
    {
      v6 = 2 * v5;
      v7 = (3 * v5) >> 1;
      v8 = v6 / 3;
    }

    else
    {
      v6 = 3 * v5;
      v8 = (3 * v5) >> 2;
      v7 = 2 * v5;
    }

    if (a2 > 0.9 || *(a1 + 16) == 1)
    {
      if (a2 >= 0.9944)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }
    }

    *(a1 + 40) = v8;
    *(a1 + 36) = 0;
  }

  return result;
}

uint64_t CMPhotoJPEGQualityControllerDecrementQuality(float *__src, void *a2)
{
  v2 = 4294950306;
  memset(v11, 0, 104);
  if (__src && a2)
  {
    v5 = 0;
    while (_jpegQualityLevels[v5] <= __src[14])
    {
      if (++v5 == 20)
      {
        goto LABEL_8;
      }
    }

    if (!v5)
    {
      OUTLINED_FUNCTION_4_0();
      goto LABEL_13;
    }

LABEL_8:
    memcpy(v11, __src, 0x60uLL);
    *&v11[6] = 0;
    v6 = *(__src + 8);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *&v11[4] = v6;
    v7 = *(__src + 8);
    if (v7 > 0xA || ((1 << v7) & 0x418) == 0)
    {
      OUTLINED_FUNCTION_4_0();
LABEL_13:
      v2 = FigSignalErrorAtGM();
      goto LABEL_14;
    }

    v9 = v5 - 3;
    if (v5 == 20)
    {
      v9 = 19;
    }

    if (v9 >= 1)
    {
      v10 = 1.0;
      if (v9 <= 0x13)
      {
        v10 = (_jpegQualityLevels[v9 - 1] + _jpegQualityLevels[v9]) * 0.5;
      }
    }

    else
    {
      v10 = 0.01;
    }

    v2 = _parseQualityParameters_QValue_float(v11, v10);
    if (!v2)
    {
      memcpy(a2, v11, 0x68uLL);
      memset(v11, 0, 104);
    }
  }

LABEL_14:
  CMPhotoJPEGQualitySettingsReleaseStorage(v11);
  return v2;
}

uint64_t CMPhotoJPEGQualityControllerDecrementByteBudgetQualityGivenSize(void *__src, unint64_t a2, int a3, void *a4)
{
  v4 = 4294950306;
  memset(__dst, 0, 104);
  if (!__src || !a2 || !a4 || *(__src + 8) != 10)
  {
    goto LABEL_18;
  }

  v9 = 0;
  v10 = *(__src + 14);
  while (_jpegQualityLevels[v9] <= v10)
  {
    if (++v9 == 20)
    {
      goto LABEL_10;
    }
  }

  if (!(v9 * 8))
  {
    OUTLINED_FUNCTION_4_0();
LABEL_21:
    v4 = FigSignalErrorAtGM();
    goto LABEL_18;
  }

LABEL_10:
  memcpy(__dst, __src, 0x60uLL);
  *&__dst[6] = 0;
  v11 = *(__src + 8);
  if (v11)
  {
    v11 = CFRetain(v11);
    v10 = *(__src + 14);
  }

  *&__dst[4] = v11;
  if (a3 == 2)
  {
    v12 = &_relativeSizeHW;
  }

  else
  {
    v12 = &_relativeSizeSW;
  }

  v16 = 0;
  v13 = _estimateNewQuality(a2, *(__src + 6), v12, &v16, v10);
  if (!v16)
  {
    OUTLINED_FUNCTION_4_0();
    goto LABEL_21;
  }

  v14 = v13;
  v4 = _parseQualityParameters_QValue_float(__dst, v14);
  if (!v4)
  {
    memcpy(a4, __dst, 0x68uLL);
    OUTLINED_FUNCTION_3_14();
  }

LABEL_18:
  CMPhotoJPEGQualitySettingsReleaseStorage(__dst);
  return v4;
}

uint64_t _copyJPEGQTablesForQValue(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    OUTLINED_FUNCTION_2();

    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_2_18();
    v8 = malloc_type_malloc(0x100uLL, v7);
    *(a2 + 24) = v8;
    if (v8)
    {
      *(a2 + 8) = v8 + 128;
      *(a2 + 16) = v8 + 128;
      *a2 = v8;
      _copyQTableForQValue(a1, 0, v8, a3);
      _copyQTableForQValue(a1, 1u, *(a2 + 8), a3);
      return 0;
    }

    else
    {
      return 4294950305;
    }
  }
}

uint64_t _copyQTableFromData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getImageIdentifierForIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_71_0();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v3 = OUTLINED_FUNCTION_73_0();

  return v4(v3);
}

uint64_t _createThumbnailImageForIndex_0(uint64_t a1, int a2, int a3, CFDictionaryRef theDict, uint64_t a5, CFTypeRef *a6)
{
  v14 = 0;
  if (theDict && CFDictionaryContainsKey(theDict, @"UseProvidedPixelBuffer"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    return FigSignalErrorAtGM();
  }

  _copySubImageReaderForIndex();
  if (v10)
  {
    return v10;
  }

  _decodeImage_1(a1, 0, 0, -1, theDict, 0, a5, 0, &v14);
  v12 = v11;
  if (v11)
  {
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    *a6 = v14;
    v14 = 0;
  }

  return v12;
}

void _decodeAuxiliaryImageForIndexAsync_0()
{
  OUTLINED_FUNCTION_122();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (!CMPhotoDecompressionContainerCheckForbiddenAuxOptions(v8, 0))
  {
    _decodeImageAsync(v15, v13, v11, 2, v9, v7, v5, v3, v1);
  }

  OUTLINED_FUNCTION_121();
}

uint64_t _getAuxiliaryImageTypeForIndex_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 40);
  v32 = 0;
  cf = 0;
  v30 = 0;
  v31 = 0;
  AuxiliaryImageTypeFromURN = 0;
  if (!(a5 | a6))
  {
    SubImageEncodedPixelFormatForIndex = 0;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_42();
  v17 = _copyAuxiliaryImageMetadataFromCacheForIndex(v10, v11, v12, v13, v14, 0, v15, v16);
  SubImageEncodedPixelFormatForIndex = v17;
  if (!v17 || v17 == -16993)
  {
    if (!v7)
    {
LABEL_12:
      if (!v6 || (v26 = OUTLINED_FUNCTION_19_5(), SubImageEncodedPixelFormatForIndex = _getSubImageEncodedPixelFormatForIndex(v26, v27, v8, 2, v28), !SubImageEncodedPixelFormatForIndex))
      {
        if (v7)
        {
          *v7 = AuxiliaryImageTypeFromURN;
        }

        if (v6)
        {
          *v6 = 0;
        }
      }

      goto LABEL_18;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      OUTLINED_FUNCTION_36_1();
      v20 = v19();
      if (v20)
      {
        goto LABEL_30;
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        goto LABEL_17;
      }

      v21 = OUTLINED_FUNCTION_99_0();
      v20 = v22(v21);
      if (v20)
      {
LABEL_30:
        SubImageEncodedPixelFormatForIndex = v20;
        goto LABEL_18;
      }

      FigBaseObject = FigPictureReaderGetFigBaseObject();
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v24)
      {
        SubImageEncodedPixelFormatForIndex = v24(FigBaseObject, *MEMORY[0x1E69722B8], v9, &v30);
        if (SubImageEncodedPixelFormatForIndex)
        {
          goto LABEL_18;
        }

        AuxiliaryImageTypeFromURN = CMPhotoGetAuxiliaryImageTypeFromURN();
        goto LABEL_12;
      }
    }

LABEL_17:
    SubImageEncodedPixelFormatForIndex = 4294954514;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return SubImageEncodedPixelFormatForIndex;
}

uint64_t _copyAuxiliaryImageTypeInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(a5 | a6))
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_54_0();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v8 = OUTLINED_FUNCTION_19_5();
  v10 = v9(v8);
  if (v10)
  {
    return v10;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  v11 = OUTLINED_FUNCTION_21_5();
  v10 = v12(v11);
  if (v10)
  {
    return v10;
  }

  if (v7)
  {
    CFGetAllocator(0);
    FigPictureReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      return 4294954514;
    }

    v13 = OUTLINED_FUNCTION_75_0();
    v15 = v14(v13);
  }

  else
  {
    v15 = 0;
  }

  if (!v6 || v15)
  {
    goto LABEL_14;
  }

  v16 = CFGetAllocator(0);
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    return 4294954514;
  }

  v18(FigBaseObject, *MEMORY[0x1E69722B0], v16, v6);
LABEL_14:
  OUTLINED_FUNCTION_35_1();
  if (v20)
  {
    return 4294950303;
  }

  else
  {
    return v19;
  }
}

uint64_t _copyAuxiliaryImageMetadataForIndex_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_31_0();
  return _copyAuxiliaryImageMetadataFromCacheForIndex(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t _copyAuxiliaryFormatInfoForIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_42();
  return _copyAuxiliaryImageMetadataFromCacheForIndex(v4, v5, v6, v7, v8, 0, v9, 0);
}

uint64_t _createAuxiliaryImageForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5, CGImageRef *a6)
{
  OUTLINED_FUNCTION_54_0();
  v12 = v11;
  v14 = CMPhotoDecompressionContainerCheckForbiddenAuxOptions(v13, 0);
  if (v14)
  {
    return v14;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  OUTLINED_FUNCTION_36_1();
  v16 = v15();
  if (v16)
  {
    return v16;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  v17 = OUTLINED_FUNCTION_99_0();
  v19 = v18(v17);
  if (v19)
  {
    return v19;
  }

  else
  {
    return _decodeAuxiliaryImage(v12, 0, 0, v7, v6, a4, 0, a5, a6);
  }
}

uint64_t _copyAuxiliaryColorSpaceForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  if (!a4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54_0();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v5 = OUTLINED_FUNCTION_19_5();
  v7 = v6(v5);
  if (v7)
  {
    return v7;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    return 4294954514;
  }

  v8 = OUTLINED_FUNCTION_21_5();
  v7 = v9(v8);
  if (v7)
  {
    return v7;
  }

  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_26_2();
  _copyColorInfoForItem(v10, v11, v12, v13, v14, v15, a4, 0, v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_67_0();
  if (v17)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

uint64_t _createOutputBufferAttributesForThumbnailIndex_0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  _copySubImageReaderForIndex();
  if (!result)
  {
    return _createOutputBufferAttributesForReader(a1, 0, 0, 0, a4, a5);
  }

  return result;
}

uint64_t _createOutputBufferAttributesForAuxiliaryIndex_0(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v8 = OUTLINED_FUNCTION_60_0();
  v10 = v9(v8);
  if (!v10)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v11 = OUTLINED_FUNCTION_19_5();
      v10 = v12(v11);
      if (!v10)
      {
        return _createOutputBufferAttributesForReader(a1, 0, 0, 1, a4, a5);
      }

      return v10;
    }

    return 4294954514;
  }

  return v10;
}

uint64_t _getTileSizeForIndex_0()
{
  OUTLINED_FUNCTION_52_0();
  v3 = v2;
  v16 = 0;
  cf = 0;
  v14 = 0;
  v15 = 0;
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    v9 = 4294954514;
    goto LABEL_16;
  }

  v4 = OUTLINED_FUNCTION_19_5();
  TileGeometryFromPictureTileCursorService = v5(v4);
  if (TileGeometryFromPictureTileCursorService)
  {
    goto LABEL_21;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v8 = v7(cf, &v16);
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    if (v8 == -17161)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v12 = 0;
  v13 = 0;
  TileGeometryFromPictureTileCursorService = _getTileGeometryFromPictureTileCursorService(v16, &v12, &v14, 0);
  if (TileGeometryFromPictureTileCursorService)
  {
LABEL_21:
    v9 = TileGeometryFromPictureTileCursorService;
    goto LABEL_16;
  }

  v10 = (v13 * v12) > 1;
LABEL_9:
  if (v3)
  {
    *v3 = v10;
  }

  if (v1)
  {
    *v1 = v14;
  }

  if (v0)
  {
    *v0 = v15;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v9;
}

uint64_t _createSequenceContainer(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*(a1 + 120) || (result = OUTLINED_FUNCTION_116(), !result))
  {
    if (a3 < 0)
    {
      return 4294950306;
    }

    Count = *(a1 + 128);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= a3)
    {
      return 4294950306;
    }

    else
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v10 = MutableCopy;
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), a3);
        CFDictionarySetValue(v10, @"SequenceInfo", ValueAtIndex);
        OUTLINED_FUNCTION_72();
        if (!FigCFDictionaryGetValue() && *(a1 + 28))
        {
          v12 = OUTLINED_FUNCTION_113();
          CFDictionarySetValue(v12, v13, v14);
        }

        OUTLINED_FUNCTION_72();
        if (!FigCFDictionaryGetValue() && *(a1 + 608))
        {
          v15 = OUTLINED_FUNCTION_113();
          CFDictionarySetValue(v15, v16, v17);
        }

        OUTLINED_FUNCTION_72();
        if (!FigCFDictionaryGetValue())
        {
          if (*(a1 + 616))
          {
            v18 = OUTLINED_FUNCTION_113();
            CFDictionarySetValue(v18, v19, v20);
          }
        }

        v21 = CMPhotoDecompressionContainerCreate(*(a1 + 40), 0, v10, *(a1 + 16), 0, a4);
        CFRelease(v10);
        return v21;
      }

      else
      {
        return 4294950305;
      }
    }
  }

  return result;
}

uint64_t _getOriginalPixelFormatForIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_71_0();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_73_0();
  v6 = v5(v4);
  v14 = OUTLINED_FUNCTION_104(v6, v7, v8, v9, v10, v11, v12, v13, v18, 0);
  if (!v3)
  {
    _parseFormatInfoXMPMetadataForIndex();
    OUTLINED_FUNCTION_67_0();
    if (v16)
    {
      v3 = 0;
    }

    else
    {
      v3 = v15;
    }

    v14 = cf;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v3;
}

uint64_t _copyImageIsRGBForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  cf = 0;
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_71_0();
  v6 = *(*(OUTLINED_FUNCTION_118() + 16) + 16);
  if (v6)
  {
    v7 = v6(v5, v4, &v21, 0);
    if (v7)
    {
      v17 = v7;
    }

    else
    {
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_31_0();
      v16 = _copyColorInfoForItem(v8, v9, v10, v11, v12, v13, v14, v15, 0, &cf, 0, 0, 0);
      if (!v16 || (v17 = v16, OUTLINED_FUNCTION_67_0(), v18))
      {
        v17 = 0;
        *v3 = FigCFEqual();
      }
    }
  }

  else
  {
    v17 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v17;
}

uint64_t _copyColorSpaceForIndex_1(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!*(*(OUTLINED_FUNCTION_118() + 16) + 16))
  {
    return 4294954514;
  }

  v4 = OUTLINED_FUNCTION_21_5();
  v6 = v5(v4);
  if (v6)
  {
    return v6;
  }

  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_10_15();
  _copyColorInfoForItem(v7, v8, v9, v10, v11, v12, a3, 0, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_67_0();
  if (v14)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t _readAlphaInfoSEIPayload()
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  Bytes = FigByteStreamCreateWithCFData();
  if (Bytes || (CMPhotoBitStreamReadInit(v8, v9, 1), Bytes = CMPhotoBitStreamReadBytes(v8, 4, &v7 + 1), Bytes) || (Bytes = CMPhotoBitStreamReadBytes(v8, 4, &v7), Bytes) || (Bytes = CMPhotoBitStreamReadBytes(v8, 2, &v6), Bytes) || (v1 = (v6 >> 9) & 0x3F, v6 = (v6 >> 9) & 0x3F, v1 == 39) && (Bytes = CMPhotoBitStreamReadVariableLengthEntry(), Bytes))
  {
    v3 = Bytes;
  }

  else
  {
    v3 = 4294950194;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v3;
}

uint64_t _parseFormatInfoXMPMetadataForIndex()
{
  OUTLINED_FUNCTION_69();
  v19 = 0;
  v20 = 0;
  OUTLINED_FUNCTION_27_3();
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v1)
  {
    goto LABEL_14;
  }

  MainImageFormatInfoFromXMPData = v1(v0, &v15);
  if (MainImageFormatInfoFromXMPData)
  {
    goto LABEL_25;
  }

  if (!v15)
  {
LABEL_24:
    v11 = 4294950303;
    goto LABEL_15;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 >= 3uLL && v3[16])
  {
    OUTLINED_FUNCTION_95_0();
    v4 = OUTLINED_FUNCTION_17();
    v6 = v5(v4);
    goto LABEL_9;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
LABEL_14:
    v11 = 4294954514;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_95_0();
  v9 = OUTLINED_FUNCTION_17();
  v6 = v10(v9);
LABEL_9:
  v11 = v6;
  if (v6)
  {
    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E695E480];
  MainImageFormatInfoFromXMPData = OUTLINED_FUNCTION_78_0(v6, 0, v18, v17, v20, v7, v16, v8, &v19);
  if (!MainImageFormatInfoFromXMPData)
  {
    MainImageFormatInfoFromXMPData = CMPhotoCreateMainImageFormatInfoFromXMPData(v12, v19, &cf);
    if (!MainImageFormatInfoFromXMPData)
    {
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v11 = 0;
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

LABEL_25:
  v11 = MainImageFormatInfoFromXMPData;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  free(v18);
  free(v17);
  return v11;
}

uint64_t _fillEdgesIfNeeded(__CVBuffer *a1, uint64_t a2, int a3)
{
  if (*(a2 + 72) == 0)
  {
    return 0;
  }

  CMPhotoGetPixelBufferCLAPAsRect(a1);
  v19.i64[0] = vcvtad_u64_f64(v6);
  v19.i64[1] = vcvtad_u64_f64(v7);
  result = CMPhotoFlipSizeIfNeeded(a3, v19.i64[0], v19.i64[1], &v19);
  if (!result)
  {
    v12 = *(a2 + 72);
    v13 = vcgtq_u64(v19, v12);
    v14 = vmovn_s64(v13);
    if ((v14.i32[0] | v14.i32[1]))
    {
      v17 = 0uLL;
      v18 = vbslq_s8(v13, v12, v19);
      v15 = 0uLL;
      v16 = v18;
      result = CMPhotoGetCropPreOrientation(v19.i64[0], v19.i64[1], &v15, a3, &v17, v9, v10, v11);
      if (!result)
      {
        v15 = v17;
        v16 = v18;
        return CMPhotoPixelBufferFillOutsideCropRect(a1, 1, &v15);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _transferToCanvas(uint64_t a1, unsigned int a2, int a3, int a4, int a5, unsigned int a6, uint64_t a7, CVPixelBufferRef pixelBuffer, uint64_t a9, int a10, unint64_t *a11, __CVBuffer *a12, uint64_t a13, uint64_t a14)
{
  v14 = pixelBuffer;
  v16 = a12;
  v17 = a10;
  v70 = 0;
  v71 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v19 = CVPixelBufferGetPixelFormatType(v16);
  v20 = v19;
  DictionaryRepresentation = *(a9 + 1);
  v23 = a10 != 1 && DictionaryRepresentation != 0;
  size = *(a9 + 88) != 0;
  if (*(a9 + 40) == 0)
  {
    v24 = *(a9 + 56) != 0;
    if (!a7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = 1;
    if (!a7)
    {
      goto LABEL_19;
    }
  }

  v25 = PixelFormatType == a7 || v19 == PixelFormatType;
  if (!v25 && (CMPhotoGetFullRangeForPixelFormat(PixelFormatType) == a7 || CMPhotoGetFullRangeForPixelFormat(a7) == PixelFormatType) && !CMPhotoCreateOtherRangePixelBufferWithBacking(v14))
  {
    v14 = v70;
  }

LABEL_19:
  if (!DictionaryRepresentation)
  {
    v17 = 1;
  }

  v26 = OUTLINED_FUNCTION_64_0();
  v28 = CMPhotoPropagateBayerPatternIfNeeded(v26, v27);
  if (v28)
  {
    v56 = v28;
    OUTLINED_FUNCTION_30_2();
    v35 = 0;
    goto LABEL_71;
  }

  DictionaryRepresentation = a13;
  v29 = a14;
  v61 = a13;
  if (v20 != PixelFormatType && (v20 != 1815491698 ? (v30 = v20 == 1815162994) : (v30 = 1), v30))
  {
    v24 = a6;
    v31 = a5;
    if (_l64r_insertionWorkaroundEnabled_onceToken != -1)
    {
      dispatch_once(&_l64r_insertionWorkaroundEnabled_onceToken, &__block_literal_global_32);
    }

    v32 = 1;
    PixelFormatType = a2;
  }

  else
  {
    v32 = 0;
    v33 = v20 != PixelFormatType || v23;
    if (((v33 | size) & v24 & 1) == 0)
    {
      LODWORD(v24) = 0;
      v20 = 0;
      DictionaryRepresentation = 0;
      v35 = 0;
      LODWORD(PixelFormatType) = a2;
      goto LABEL_50;
    }

    v24 = a6;
    PixelFormatType = a2;
    v31 = a5;
  }

  ScaleAndRotateOptionsWithHWIfNeeded = CMPhotoCreateScaleAndRotateOptionsWithHWIfNeeded(0, v24, a3, a4, v31);
  v35 = ScaleAndRotateOptionsWithHWIfNeeded;
  if (!ScaleAndRotateOptionsWithHWIfNeeded)
  {
    OUTLINED_FUNCTION_30_2();
    goto LABEL_93;
  }

  if (*(a9 + 114))
  {
    CMPhotoCFDictionarySetBoolean(ScaleAndRotateOptionsWithHWIfNeeded, @"PreferLowMemory", *(a9 + 114));
  }

  v24 = v32;
  if (size)
  {
    *__dst = 0uLL;
    v36 = CMPhotoFlipSizeIfNeeded(v17, *(a9 + 88), *(a9 + 96), __dst);
    if (v36)
    {
LABEL_89:
      v56 = v36;
      OUTLINED_FUNCTION_30_2();
      goto LABEL_71;
    }

    v37 = vcvtq_f64_u64(*__dst);
  }

  else
  {
    v37 = *MEMORY[0x1E695F060];
  }

  sizea = v37;
  memcpy(__dst, a9, sizeof(__dst));
  v36 = _fillEdgesIfNeeded(v14, __dst, v17);
  if (v36)
  {
    goto LABEL_89;
  }

  CMPhotoCFDictionarySetBoolean(v35, @"DestinationBackedByIOSurface", PixelFormatType == 0);
  CMPhotoCFDictionarySetInt(v35, @"SourceExifOrientation", v17);
  CMPhotoCFDictionarySetInt(v35, @"DestinationPixelFormat", v20);
  DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(DictionaryRepresentation, v29);
  if (DictionaryRepresentation)
  {
    CFDictionarySetValue(v35, @"DestinationColorTripletDictionary", DictionaryRepresentation);
  }

  v20 = CGSizeCreateDictionaryRepresentation(sizea);
  if (v20)
  {
    CFDictionarySetValue(v35, @"DestinationSizeDictionary", v20);
  }

  v38 = CMPhotoScaleAndRotateSessionTransformImage(a1, v14, v35, &v71);
  if (v38)
  {
    goto LABEL_88;
  }

  v29 = 0;
  v17 = 1;
  v14 = v71;
LABEL_50:
  v67.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(v14);
  v67.f64[1] = v39;
  v68.width = v40;
  v68.height = v41;
  if (*(a9 + 40) != 0 || *(a9 + 56) != 0)
  {
    v42.f64[0] = OUTLINED_FUNCTION_27_0(*(a9 + 40));
    v38 = CMPhotoApplyCropRectToRect(&v67, v42, v43, v44, v45);
    if (v38)
    {
LABEL_88:
      v56 = v38;
      PixelFormatType = 0;
      v24 = 0;
      goto LABEL_71;
    }
  }

  v46 = a11[2];
  v47 = a11[3];
  if (*a11 == 0 && !(v46 | v47))
  {
    v48 = *MEMORY[0x1E695F050];
    v49 = *(MEMORY[0x1E695F050] + 8);
    v50 = *(MEMORY[0x1E695F050] + 16);
    v51 = *(MEMORY[0x1E695F050] + 24);
    if (!v24)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v48 = *a11;
    v49 = a11[1];
    v50 = v46;
    v51 = v47;
    if (!v24)
    {
      goto LABEL_59;
    }
  }

  *&v52 = OUTLINED_FUNCTION_91_0(v67);
  *__dst = v52;
  *&__dst[16] = vcvtq_u64_f64(vrndaq_f64(v53));
  CMPhotoPixelBufferCopyCropRectToOffset(v14, 1, __dst, a12, 1, vcvtad_u64_f64(v48), vcvtad_u64_f64(v49), 0);
  if (!v54)
  {
    PixelFormatType = 0;
    v24 = 0;
    v56 = 0;
    goto LABEL_71;
  }

LABEL_59:
  if (v35)
  {
    CFRelease(v35);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v35 = Mutable;
  if (!Mutable)
  {
    PixelFormatType = 0;
    v24 = 0;
LABEL_93:
    v56 = 4294950305;
    goto LABEL_71;
  }

  CMPhotoCFDictionarySetBoolean(Mutable, @"DestinationBackedByIOSurface", PixelFormatType == 0);
  CMPhotoCFDictionarySetBoolean(v35, @"HighSpeed", a6);
  CMPhotoCFDictionarySetInt(v35, @"SourceExifOrientation", v17);
  v72.origin = v67;
  v72.size = v68;
  PixelFormatType = CGRectCreateDictionaryRepresentation(v72);
  if (PixelFormatType)
  {
    CFDictionarySetValue(v35, @"SourceCropRectDictionary", PixelFormatType);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  DictionaryRepresentation = CMPhotoColorTripletCreateDictionaryRepresentation(v61, v29);
  if (DictionaryRepresentation)
  {
    CFDictionarySetValue(v35, @"DestinationColorTripletDictionary", DictionaryRepresentation);
  }

  v73.origin.x = v48;
  v73.origin.y = v49;
  v73.size.width = v50;
  v73.size.height = v51;
  v24 = CGRectCreateDictionaryRepresentation(v73);
  if (v24)
  {
    CFDictionarySetValue(v35, @"DestinationCropRectDictionary", v24);
  }

  v56 = CMPhotoScaleAndRotateSessionTransformImage(a1, v14, v35, &a12);
LABEL_71:
  if (v70)
  {
    CFRelease(v70);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (PixelFormatType)
  {
    CFRelease(PixelFormatType);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v56;
}

void ___canvasItemDecodeCallback_block_invoke(uint64_t a1)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();
    kdebug_trace();
  }

  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 8);
  v19 = *(v3 + 32);
  v17 = *(v3 + 50);
  v18 = *(v3 + 49);
  v4 = *(v3 + 51);
  v5 = *(v3 + 52);
  v6 = *(v3 + 48);
  v7 = *(v3 + 88);
  v8 = *(a1 + 56);
  v9 = *(v2 + 184);
  v10 = *v2;
  v11 = *(a1 + 64);
  memcpy(__dst, (v2 + 48), 0x88uLL);
  v12 = *(v2 + 24);
  v20[0] = *(v2 + 8);
  v20[1] = v12;
  v13 = _transferToCanvas(v19, v18, v17, v4, v5, v6, v7, v8, __dst, v9, v20, v10, 0, v11);
  v14 = *(a1 + 48);
  v15 = v14[26];
  if (v15)
  {
    CFRelease(v15);
    *(*(a1 + 48) + 208) = 0;
    v14 = *(a1 + 48);
  }

  v16 = v14[27];
  if (v16)
  {
    CFRelease(v16);
    *(*(a1 + 48) + 216) = 0;
    v14 = *(a1 + 48);
  }

  _asyncCanvasDecodeFinished(*(a1 + 40), v14, v13, *(a1 + 68));
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_6();

    kdebug_trace();
  }
}

uint64_t _getDecoderReusableInfoForOverlay()
{
  OUTLINED_FUNCTION_71_0();
  v3 = v2;
  *v0 = CMFormatDescriptionGetMediaSubType(v4);
  CFGetAllocator(v3);
  CMFormatDescriptionGetExtensions(v1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v6 = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965D70]);
  CFDictionaryRemoveValue(v6, *MEMORY[0x1E69600A0]);
  v7 = *(v0 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  *(v0 + 8) = v6;
  if (*v0 != 1936484717)
  {
    return 4294950298;
  }

  v10 = 0;
  VersionFromFormatDescription = SlimVideoDecoder_GetVersionFromFormatDescription(v1, &v10);
  if (!VersionFromFormatDescription)
  {
    *(v0 + 16) = Slim_GetEquivalentBlockSizeVersion(v10);
  }

  return VersionFromFormatDescription;
}

uint64_t _copyFlexRangeDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, void *a7, void *a8)
{
  OUTLINED_FUNCTION_61_0();
  v15 = v14;
  cf = 0;
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v31 = 4294954514;
    goto LABEL_29;
  }

  FlexRangeMetadataDictionary = v17(FigBaseObject, *MEMORY[0x1E69722C8], v15, &cf);
  if (FlexRangeMetadataDictionary)
  {
    goto LABEL_35;
  }

  Value = FigCFDictionaryGetValue();
  if (!Value || (v20 = Value, v21 = CFGetTypeID(Value), v21 != CFDictionaryGetTypeID()) || (v22 = FigCFDictionaryGetValue()) == 0 || (v23 = v22, v24 = CFGetTypeID(v22), v24 != CFArrayGetTypeID()) || CFArrayGetCount(v23) != 2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_16();
LABEL_34:
    FlexRangeMetadataDictionary = FigSignalErrorAtGM();
LABEL_35:
    v31 = FlexRangeMetadataDictionary;
    goto LABEL_29;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v23, 0);
  v26 = CFArrayGetValueAtIndex(v23, 1);
  if (!v10)
  {
    goto LABEL_11;
  }

  v34 = *MEMORY[0x1E695F060];
  if (!FigCFDictionaryGetCGSizeIfPresent())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_16();
    goto LABEL_34;
  }

  *&v27 = OUTLINED_FUNCTION_91_0(v34);
  *v10 = v27;
LABEL_11:
  if (v9)
  {
    v28 = OUTLINED_FUNCTION_89_0();
    FlexRangeMetadataDictionary = CMPhotoParseFlexRangeMetadataDictionary(v28, v29);
    if (FlexRangeMetadataDictionary)
    {
      goto LABEL_35;
    }
  }

  if (v8)
  {
    FlexRangeMetadataDictionary = CMPhotoCreateFlexRangeMetadataDictionary(v20, v8);
    if (FlexRangeMetadataDictionary)
    {
      goto LABEL_35;
    }
  }

  if (a6)
  {
    *a6 = CFRetain(v20);
  }

  if (a7)
  {
    if (ValueAtIndex)
    {
      v30 = CFRetain(ValueAtIndex);
    }

    else
    {
      v30 = 0;
    }

    *a7 = v30;
  }

  if (a8)
  {
    if (v26)
    {
      v32 = CFRetain(v26);
    }

    else
    {
      v32 = 0;
    }

    v31 = 0;
    *a8 = v32;
  }

  else
  {
    v31 = 0;
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  return v31;
}

void _copySubImageReaderForIndex()
{
  OUTLINED_FUNCTION_122();
  if (v5)
  {
    if (v2)
    {
      v6 = v3;
      if (((v4 | v3) & 0x8000000000000000) == 0)
      {
        if (!*(v2 + 48))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_52_0();
        v8 = v7;
        if (*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          v9 = OUTLINED_FUNCTION_4_5();
          if (!v10(v9, v6))
          {
            v11 = *(CMBaseObjectGetVTable() + 16);
            if (v8 == 1)
            {
              if (!*(v11 + 24))
              {
                goto LABEL_16;
              }

              v12 = OUTLINED_FUNCTION_21_5();
              if (v13(v12))
              {
                goto LABEL_16;
              }
            }

            else
            {
              if (!*(v11 + 40))
              {
                goto LABEL_16;
              }

              v14 = OUTLINED_FUNCTION_21_5();
              if (v15(v14))
              {
                goto LABEL_16;
              }
            }

            if (v1)
            {
              *v1 = 0;
            }

            *v0 = 0;
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_121();
}

uint64_t _decodeAuxiliaryImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, int a8, CGImageRef *a9)
{
  v17 = *(a1 + 40);
  v32 = 0;
  pixelBuffer = 0;
  v30 = 0;
  cf = 0;
  v29 = 0;
  if (a6)
  {
    v18 = CMPhotoCFDictionaryGetInt32IfPresent() == 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoRestrictedDecodingDisabled();
    OUTLINED_FUNCTION_94_0();
  }

  else
  {
    v18 = 1;
  }

  v19 = _copyAuxiliaryImageMetadataFromCacheForIndex(a1, a4, a5, a3, a2, &cf, &v30, &v29);
  v20 = v19;
  if (v19 && v19 != -16993)
  {
    MutableCopy = 0;
LABEL_11:
    v23 = 0;
    goto LABEL_23;
  }

  if (v19 || !FigCFDictionaryGetInt32IfPresent())
  {
    if (a6)
    {
      v23 = CFRetain(a6);
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_64_0();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v23 = 0;
    v20 = 4294950305;
    goto LABEL_23;
  }

  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  if (!v18)
  {
    CMPhotoGetUncompressedUnpackedPixelFormatFromCompressedPackedPixelFormat(0);
  }

  if (!Int32IfPresent)
  {
    v24 = FigCFDictionarySetInt();
    if (!v24)
    {
      v23 = MutableCopy;
      goto LABEL_20;
    }

    goto LABEL_40;
  }

  v24 = FigCFDictionarySetInt();
  if (v24)
  {
LABEL_40:
    v20 = v24;
    goto LABEL_11;
  }

  v23 = MutableCopy;
LABEL_20:
  v25 = OUTLINED_FUNCTION_97_0();
  _decodeImage_1(v25, a2, a3, -1, v23, a7, 2, 1, v28);
  if (!WrappedPixelBufferForType)
  {
    WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(v17, pixelBuffer, 0, a8, a9);
  }

  v20 = WrappedPixelBufferForType;
  MutableCopy = 0;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v20;
}

uint64_t _getSubImageGeometryForIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  OUTLINED_FUNCTION_52_0();
  v11 = v10;
  v18 = 0;
  cf = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 1;
  _copySubImageReaderForIndex();
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_16;
  }

  ImageGeometryFromPictureReader = CMPhotoPictureReaderGetImageGeometryFromPictureReader(v18, *(v11 + 28), &v16, 0);
  if (ImageGeometryFromPictureReader)
  {
    goto LABEL_16;
  }

  if (!a7)
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  ImageGeometryFromPictureReader = _getImageOrientation(v11, v18, cf, &v15);
  if (ImageGeometryFromPictureReader)
  {
LABEL_16:
    v13 = ImageGeometryFromPictureReader;
    goto LABEL_8;
  }

  *a7 = v15;
  if (v8)
  {
LABEL_5:
    *v8 = v17;
  }

LABEL_6:
  v13 = 0;
  if (v7)
  {
    *v7 = *(&v17 + 1);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v13;
}

uint64_t _createOutputBufferAttributesForReader(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, CFMutableDictionaryRef *a6)
{
  bzero(v23, 0x140uLL);
  OUTLINED_FUNCTION_64_0();
  _determineDecodeStrategy_1();
  if (v9)
  {
    return v9;
  }

  v10 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294950305;
  }

  v12 = Mutable;
  v13 = v26;
  v14 = CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E6966208], v26);
  if (v14)
  {
    goto LABEL_20;
  }

  v15 = v27;
  v14 = CMPhotoCFDictionarySetSize(v12, *MEMORY[0x1E69660B8], v27);
  if (v14)
  {
    goto LABEL_20;
  }

  v16 = v24 + v13 + ~((v13 - 1) % v24);
  v17 = v25 + v15 + ~((v15 - 1) % v25);
  if (v24 != v13 || v25 != v15)
  {
    goto LABEL_15;
  }

  v22 = 0;
  CMPhotoPictureReaderGetItemTypeFromReader(a2, &v22);
  if (v22 == 1752589105)
  {
    v19 = 16;
    goto LABEL_14;
  }

  if (v22 == 1635135537)
  {
    v19 = 128;
LABEL_14:
    v16 += v19 + (-v19 | -v16);
    v17 += (-v17 | 0xFFFFFFFFFFFFFFF0) + 16;
  }

LABEL_15:
  v14 = CMPhotoCFDictionarySetSize(v12, *MEMORY[0x1E6966090], v16 - v13);
  if (v14 || (v14 = CMPhotoCFDictionarySetSize(v12, *MEMORY[0x1E6966078], v17 - v15), v14))
  {
LABEL_20:
    v20 = v14;
    goto LABEL_21;
  }

  v20 = CMPhotoCFDictionarySetSize(v12, *MEMORY[0x1E6966020], 16);
  if (v20)
  {
LABEL_21:
    CFRelease(v12);
    return v20;
  }

  *a6 = v12;
  return v20;
}

uint64_t _transcodeAuxiliaryImageCallback_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, CFTypeRef a6, CFTypeRef *a7, int a8, void *a9)
{
  if (*(a2 + 16) <= a1)
  {
    return 4294950304;
  }

  OUTLINED_FUNCTION_61_0();
  v16 = v13;
  v17 = *v14;
  v18 = *(v14 + 24) + 32 * v13;
  v81 = v19;
  if (!*v18)
  {
    v36 = *(v14 + 8);
    v37 = *(v18 + 8);
    v38 = *(v14 + 40);
    v77 = *(v14 + 48);
    allocatora = *(v17 + 40);
    v75 = *(v14 + 32);
    v91 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    HIDWORD(v86) = 0;
    AuxiliaryImageTypeForIndex_2 = _getAuxiliaryImageTypeForIndex_2(v17, v36, v37, v15, &v86 + 4, 0);
    if (AuxiliaryImageTypeForIndex_2)
    {
      goto LABEL_50;
    }

    cfb = v36;
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_31_0();
    AuxiliaryImageTypeForIndex_2 = _copyAuxiliaryImageMetadataFromCacheForIndex(v40, v41, v42, v43, v44, v45, v46, v47);
    if (AuxiliaryImageTypeForIndex_2 && AuxiliaryImageTypeForIndex_2 != -16993)
    {
      goto LABEL_50;
    }

    if (HIDWORD(v86) == 4)
    {
      if (v38 == v16)
      {
        MutableCopyWithCFTypeCallbacks = 0;
        if (v75)
        {
          MutableCopyWithCFTypeCallbacks = FigCFDictionaryCreateMutableCopyWithCFTypeCallbacks();
          if (!MutableCopyWithCFTypeCallbacks)
          {
LABEL_89:
            v30 = 4294950305;
            goto LABEL_69;
          }
        }
      }

      else
      {
        MutableCopyWithCFTypeCallbacks = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_42();
      AuxiliaryImageTypeForIndex_2 = _copyAuxiliaryImageMetadataFromCacheForIndex(v50, v51, v52, v53, v54, 0, v55, 0);
      if (AuxiliaryImageTypeForIndex_2)
      {
        v56 = AuxiliaryImageTypeForIndex_2 == -16993;
      }

      else
      {
        v56 = 1;
      }

      if (!v56)
      {
LABEL_50:
        v30 = AuxiliaryImageTypeForIndex_2;
        goto LABEL_69;
      }

      Mutable = CFDictionaryCreateMutable(allocatora, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        goto LABEL_89;
      }

      MutableCopyWithCFTypeCallbacks = Mutable;
      LODWORD(space) = 0;
      if (!FigCFDictionaryGetInt32IfPresent())
      {
        LODWORD(space) = 1278226488;
      }

      v30 = FigCFDictionarySetInt();
      if (v30)
      {
        goto LABEL_68;
      }
    }

    if (v77)
    {
      v58 = FigCFDictionarySetInt();
      if (v58)
      {
        goto LABEL_90;
      }
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      OUTLINED_FUNCTION_36_1();
      v58 = v59();
      if (v58)
      {
        goto LABEL_90;
      }

      v60 = v91;
      v61 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v61)
      {
        v58 = v61(v60, v37, &v90);
        if (!v58)
        {
          v62 = OUTLINED_FUNCTION_97_0();
          _decodeImage_1(v62, v63, v64, -1, MutableCopyWithCFTypeCallbacks, 0, 2, 1, v70);
          if (!v58)
          {
            v65 = v88;
            *a7 = v89;
            v88 = 0;
            v89 = 0;
            *v11 = v65;
            *v10 = v87;
            v87 = 0;
            *v9 = HIDWORD(v86);
            if (a6)
            {
              v66 = CFGetAllocator(v90);
              FigBaseObject = FigPictureReaderGetFigBaseObject();
              v68 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v68)
              {
                v68(FigBaseObject, *MEMORY[0x1E69722B8], v66, a6);
              }
            }

            if (v81)
            {
              space = 0;
              if (!_copyAuxiliaryColorSpaceForIndex_0(v17, cfb, v37, &space))
              {
                CGColorSpaceGetName(space);
                if (FigCFEqual() || FigCFEqual())
                {
                  v69 = 0;
                }

                else
                {
                  v69 = CGColorSpaceCopyICCData(space);
                }

                *v81 = v69;
                if (space)
                {
                  CFRelease(space);
                }
              }
            }

            v30 = 0;
            if (!MutableCopyWithCFTypeCallbacks)
            {
LABEL_69:
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

              if (v88)
              {
                CFRelease(v88);
              }

              v34 = v87;
              if (v87)
              {
                goto LABEL_29;
              }

              return v30;
            }

LABEL_68:
            CFRelease(MutableCopyWithCFTypeCallbacks);
            goto LABEL_69;
          }
        }

LABEL_90:
        v30 = v58;
        if (!MutableCopyWithCFTypeCallbacks)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }
    }

    v30 = 4294954514;
    if (!MutableCopyWithCFTypeCallbacks)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (*(v14 + 32) && *(v14 + 40) != v13)
  {
    return 4294950304;
  }

  v20 = *(v14 + 48);
  v21 = *(v18 + 8);
  cf = *(v18 + 16);
  v22 = *(v18 + 24);
  v91 = 0;
  v90 = 0;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v24 = MutableCopy;
    if (v20)
    {
      CFDictionarySetValue(MutableCopy, @"RestrictedDecoding", *MEMORY[0x1E695E4D0]);
    }

    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_44();
    _decodeImage_1(v25, v26, v27, -1, v24, 0, 2, 1, v70);
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v29 = _parseAuxiliaryImageMetadataForIndex(v17, -1, -1, 0, v21, 0, &v90, 0, v71, allocator, v74, v76, cf, v81, a6, space, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
      v30 = v29;
      if (v29)
      {
        v31 = v29 == -16993;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        *a7 = v91;
        v91 = 0;
        *v11 = v90;
        v90 = 0;
        *v10 = 0;
        *v9 = 4;
        if (v84)
        {
          v32 = kCMPhotoAuxiliaryImageTypeURN_HDRGainMap;
          if (v29)
          {
            v32 = kCMPhotoAuxiliaryImageTypeURL_NonStandardizedJPEGFlexRangeNamespace;
          }

          *v84 = CFRetain(*v32);
        }

        if (v82 && v22)
        {
          *v82 = CGColorSpaceCopyICCData(v22);
        }

        if (a9)
        {
          v33 = cfa;
          if (cfa)
          {
            v33 = CFRetain(cfa);
          }

          v30 = 0;
          *a9 = v33;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    CFRelease(v24);
    if (v90)
    {
      CFRelease(v90);
    }
  }

  else
  {
    v30 = 4294950305;
  }

  v34 = v91;
  if (v91)
  {
LABEL_29:
    CFRelease(v34);
  }

  return v30;
}

void TileIterator_getTileSourceRect()
{
  OUTLINED_FUNCTION_122();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v8[7];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v11)
  {
    if (!v11(v10, v7, v5))
    {
      CFGetAllocator(v9);
      FigPictureTileCursorGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v12 = OUTLINED_FUNCTION_75_0();
        if (!v13(v12) && (!v3 || CMPhotoCFDictionaryGetSizeIfPresent(0, *MEMORY[0x1E69723C8], v3)))
        {
          if (v1)
          {
            CMPhotoCFDictionaryGetSizeIfPresent(0, *MEMORY[0x1E69723B0], v1);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_121();
}

uint64_t TileIterator_decodeTileAsync(uint64_t *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CFGetAllocator(a1);
  v31 = 0;
  cf = 0;
  v30 = 0;
  v10 = CFGetAllocator(a1);
  CMBaseObject = FigPictureTileCursorGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v13 = v12(CMBaseObject, *MEMORY[0x1E69723A8], v10, &cf);
    if (v13)
    {
      v21 = v13;
    }

    else if (CMPhotoCFDictionaryGetIntIfPresent() && CMPhotoCFDictionaryGetIntIfPresent() && CMPhotoCFDictionaryGetIntIfPresent() && (v14 = v30, CMPhotoCFDictionaryGetIntIfPresent()))
    {
      v15 = v30;
      v16 = OUTLINED_FUNCTION_5_2();
      if (a2)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v16, v17, a2);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v16, v17, v18, v19);
      }

      v22 = MutableCopy;
      v31 = MutableCopy;
      if (MutableCopy && (v33.size.width = v30, v33.size.height = v30, v33.origin.x = v30, v33.origin.y = v30, (DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v33)) != 0))
      {
        v24 = DictionaryRepresentation;
        CFDictionarySetValue(v22, @"SourceCropRect", DictionaryRepresentation);
        v29 = -1;
        v25 = CMPhotoDecompressionContainerInternalToExternalIndexAndCopyAlternateOptions(a1[2], a1[3], &v29, 0, &v31);
        if (v25)
        {
          v21 = v25;
        }

        else
        {
          v26 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00407034790EuLL);
          if (v26)
          {
            v27 = v26;
            *v26 = CFRetain(a1);
            v27[1] = v14;
            v27[2] = v15;
            *(v27 + 3) = a5;
            *(v27 + 4) = a6;
            v21 = CMPhotoDecompressionContainerDecodeImageForIndexAsyncF(a1[2]);
            if (v21)
            {
              if (*v27)
              {
                CFRelease(*v27);
              }

              free(v27);
            }
          }

          else
          {
            v21 = 4294950305;
          }
        }

        CFRelease(v24);
      }

      else
      {
        v21 = 4294950305;
      }
    }

    else
    {
      v21 = 4294950304;
    }
  }

  else
  {
    v21 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v21;
}

uint64_t _createDummyReaderDescription(const __CFAllocator *a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    v11.width = 0.0;
    v11.height = 0.0;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v11);
    if (DictionaryRepresentation)
    {
      v6 = DictionaryRepresentation;
      v7 = OUTLINED_FUNCTION_65_0();
      CFDictionarySetValue(v7, v8, v9);
      CFRelease(v6);
      result = 0;
      *a2 = v4;
      return result;
    }

    CFRelease(v4);
  }

  return 4294950305;
}

uint64_t _copySubImageBitDepthForIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a5)
  {
    return 0;
  }

  _copySubImageReaderForIndex();
  if (!v7)
  {
    v7 = CMPhotoPictureReaderCopyImageBitDepth(0, a5);
  }

  v15 = OUTLINED_FUNCTION_104(v7, v8, v9, v10, v11, v12, v13, v14, v17, 0);
  if (v15)
  {
    CFRelease(v15);
  }

  return v5;
}

uint64_t _getSubImageEncodedPixelFormatForIndex(void *a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  v18 = 0;
  sbuf = 0;
  v16 = 0;
  cf = 0;
  if (!a5)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if (a1[6])
  {
    v15 = -1;
    YUVPixelFormatForJPEG = CMPhotoDecompressionContainerInternalToExternalIndexAndCopyAlternateOptions(a1, a2, &v15, 0, &v18);
    if (!YUVPixelFormatForJPEG)
    {
      if (a4 == 1)
      {
        YUVPixelFormatForJPEG = CMPhotoDecompressionContainerCopyThumbnailSampleBufferForIndexWithOptions(a1, v15, a3, v18, &sbuf);
        if (YUVPixelFormatForJPEG)
        {
          goto LABEL_13;
        }

LABEL_8:
        FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
        MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
        if (a4 == 1 && MediaSubType == 1785750887)
        {
          OUTLINED_FUNCTION_21_5();
          _copySubImageReaderForIndex();
          if (!YUVPixelFormatForJPEG)
          {
            YUVPixelFormatForJPEG = CMPhotoPictureReaderGetYUVPixelFormatForJPEG(v16, a5);
          }
        }

        else
        {
          YUVPixelFormatForJPEG = CMPhotoDecompressionUtilityGetNativePixelFormatFromFormatDescription(FormatDescription, sbuf, a5);
        }

        goto LABEL_13;
      }

      YUVPixelFormatForJPEG = CMPhotoDecompressionContainerCopyAuxiliaryImageSampleBufferForIndexWithOptions(a1, v15, a3, v18, &sbuf);
      if (!YUVPixelFormatForJPEG)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    YUVPixelFormatForJPEG = FigSignalErrorAtGM();
  }

LABEL_13:
  v13 = YUVPixelFormatForJPEG;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

LABEL_17:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v13;
}

BOOL _transcodeToJFIF_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t _transcodeToJFIF_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _transcodeToJFIF_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _transcodeToJFIF_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _verifyPixelInformationFromPictureReader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getLayerReaderAtPosition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _getLayerReaderAtPosition_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _transcodeSourceCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _transcodeSourceCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _transcodeSourceCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t TileIterator_reset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoAnalyzeImageAndCreateUpdatedQualityParameters(const __CFAllocator *a1, __CVBuffer *a2, CFTypeRef cf, __CFDictionary **a4, double a5, double a6, double a7, double a8)
{
  if (!a2)
  {
    return 4294950194;
  }

  if (cf)
  {
    CFGetTypeID(cf);
    CFDictionaryGetTypeID();
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v17 = MutableCopy;
  OUTLINED_FUNCTION_1_17();
  v18 = OUTLINED_FUNCTION_53();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v18, v19);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v22 = PixelFormatType == 875704422 || PixelFormatType == 1278226488;
  if (!v22 && PixelFormatType != 875704438)
  {
    goto LABEL_33;
  }

  v80 = a1;
  theDict = v17;
  v24 = vcvtad_u64_f64(a5 + a7);
  v25 = vcvtad_u64_f64(a6 + a8);
  v26 = (v24 + 63) >> 6;
  v27 = (v25 + 63) >> 6;
  v28 = v26 * v27;
  v8 = malloc_type_calloc(85 * v26 * v27, 1uLL, v8);
  if (!v8)
  {
    goto LABEL_49;
  }

  v79 = 85 * v26 * v27;
  v29 = OUTLINED_FUNCTION_53();
  v31 = CVPixelBufferLockBaseAddress(v29, v30);
  if (v31)
  {
    goto LABEL_50;
  }

  v78 = a4;
  v32 = &v8[v28];
  v33 = &v8[4 * v28 + v28];
  v34 = &v33[16 * v28];
  v35 = OUTLINED_FUNCTION_53();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v35, v36);
  v38 = 0;
  v39 = 8 * v26;
  v40 = v34;
  do
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = &BaseAddressOfPlane[v42];
      do
      {
        for (i = 0; i != 8; ++i)
        {
          v48 = v46[i];
          v45 += v48;
          v44 += v48 * v48;
        }

        v46 += BytesPerRowOfPlane;
        ++v43;
      }

      while (v43 != 8);
      v49 = sqrt(v44 + (v45 * v45) * -0.015625);
      v50 = 8.0 / (v45 + 1.0) * v49;
      v51 = v50 + -0.05;
      v52 = (v51 * 48.0);
      if (v52 < 0.0)
      {
        v52 = 0.0;
      }

      v53 = v52;
      v54 = v53;
      if (v52 >= 12.0)
      {
        LOBYTE(v54) = 12;
      }

      *(v40 + v41) = v54;
      v42 += 8;
      v22 = v41++ == (v24 - 8) >> 3;
    }

    while (!v22);
    v40 += v39;
    BaseAddressOfPlane += 8 * BytesPerRowOfPlane;
    v38 += 8;
  }

  while (v25 - 8 >= v38);
  _convergeQPMapForLargerCUSize(v34, v39, 8 * v27, v33);
  _convergeQPMapForLargerCUSize(v33, 4 * v26, 4 * v27, v32);
  _convergeQPMapForLargerCUSize(v32, 2 * v26, 2 * v27, v8);
  v55 = OUTLINED_FUNCTION_53();
  v31 = CVPixelBufferUnlockBaseAddress(v55, v56);
  if (v31)
  {
LABEL_50:
    v60 = v31;
    goto LABEL_51;
  }

  v82.width = v26;
  v82.height = v27;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v82);
  if (!DictionaryRepresentation)
  {
LABEL_49:
    v60 = 4294950305;
LABEL_51:
    v17 = theDict;
    free(v8);
LABEL_52:
    CFRelease(v17);
    return v60;
  }

  v58 = DictionaryRepresentation;
  a1 = v80;
  v59 = CFDataCreate(v80, v8, v79);
  v17 = theDict;
  if (v59)
  {
    CFDictionarySetValue(theDict, @"QPMap", v59);
    CFDictionarySetValue(theDict, @"QPMapSize", v58);
    CFRelease(v59);
    v60 = 0;
  }

  else
  {
    v60 = 4294950305;
  }

  a4 = v78;
  CFRelease(v58);
  free(v8);
  OUTLINED_FUNCTION_1_17();
  if (!v59)
  {
    goto LABEL_52;
  }

LABEL_33:
  v61 = OUTLINED_FUNCTION_53();
  CVPixelBufferGetBytesPerRowOfPlane(v61, v62);
  v63 = CVPixelBufferGetPixelFormatType(a2);
  if (v63 == 875704422 || v63 == 1278226488 || v63 == 875704438)
  {
    v76 = malloc_type_calloc(0x3E8uLL, 1uLL, v8);
    if (!v76)
    {
      goto LABEL_54;
    }

    v66 = OUTLINED_FUNCTION_53();
    v68 = CVPixelBufferLockBaseAddress(v66, v67);
    if (v68 || (v69 = OUTLINED_FUNCTION_53(), CVPixelBufferGetBaseAddressOfPlane(v69, v70), *&v71 = 0x1010101010101010, *(&v71 + 1) = 0x1010101010101010, *v76 = v71, *(v76 + 1) = v71, *(v76 + 2) = v71, *(v76 + 3) = v71, *(v76 + 4) = v71, *(v76 + 5) = v71, *(v76 + 6) = unk_1A5ABB411, *(v76 + 7) = unk_1A5ABB421, *(v76 + 8) = unk_1A5ABB431, *(v76 + 9) = unk_1A5ABB441, *(v76 + 12) = unk_1A5ABB431, *(v76 + 13) = unk_1A5ABB441, *(v76 + 10) = unk_1A5ABB411, *(v76 + 11) = unk_1A5ABB421, *(v76 + 16) = unk_1A5ABB431, *(v76 + 17) = unk_1A5ABB441, *(v76 + 14) = unk_1A5ABB411, *(v76 + 15) = unk_1A5ABB421, *(v76 + 20) = unk_1A5ABB472, *(v76 + 21) = unk_1A5ABB482, *(v76 + 18) = unk_1A5ABB452, *(v76 + 19) = unk_1A5ABB462, *(v76 + 24) = unk_1A5ABB472, *(v76 + 25) = unk_1A5ABB482, *(v76 + 22) = unk_1A5ABB452, *(v76 + 23) = unk_1A5ABB462, *(v76 + 28) = unk_1A5ABB472, *(v76 + 29) = unk_1A5ABB482, *(v76 + 26) = unk_1A5ABB452, *(v76 + 27) = unk_1A5ABB462, OUTLINED_FUNCTION_3_15(v76 + 480), OUTLINED_FUNCTION_3_15(v76 + 545), OUTLINED_FUNCTION_3_15(v76 + 610), OUTLINED_FUNCTION_2_19(v76 + 675), OUTLINED_FUNCTION_2_19(v76 + 740), OUTLINED_FUNCTION_2_19(v76 + 805), OUTLINED_FUNCTION_3_15(v76 + 870), OUTLINED_FUNCTION_2_19(v76 + 935), v72 = OUTLINED_FUNCTION_53(), v68 = CVPixelBufferUnlockBaseAddress(v72, v73), v68))
    {
      v60 = v68;
      goto LABEL_46;
    }

    v74 = CFDataCreate(a1, v76, 1000);
    if (v74)
    {
      v75 = v74;
      CFDictionarySetValue(v17, @"QuantizationScalingLists", v74);
      CFRelease(v75);
      v60 = 0;
    }

    else
    {
LABEL_54:
      v60 = 4294950305;
    }
  }

  else
  {
    v60 = 0;
    v76 = 0;
  }

LABEL_46:
  free(v76);
  if (!a4 || v60)
  {
    goto LABEL_52;
  }

  *a4 = v17;
  return v60;
}

uint64_t CMPhotoGetSizeInfoForPixelFormat(uint64_t a1, double *a2, _BYTE *a3, _BYTE *a4, uint64_t *a5)
{
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(a1);
  v15 = 0;
  v14 = 0;
  result = CMPhotoPixelFormatIsSubsampled(a1, &v14, &v14 + 1, 0, &v15);
  if (result)
  {
    return result;
  }

  switch(v15)
  {
    case 3:
      if (!CMPhotoPixelFormatContainsRGB(a1))
      {
        return 4294950301;
      }

      v12 = (v15 * BytesPerPixelForPixelFormat);
      if (!a2)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (v14)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v12 = ((v13 << (HIBYTE(v14) != 0)) + 2) / (v13 << (HIBYTE(v14) != 0)) * BytesPerPixelForPixelFormat;
      if (!a2)
      {
        goto LABEL_12;
      }

      break;
    case 1:
      v12 = BytesPerPixelForPixelFormat;
      if (!a2)
      {
        goto LABEL_12;
      }

      break;
    default:
      return 4294950301;
  }

  *a2 = v12;
LABEL_12:
  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = HIBYTE(v14);
  }

  result = 0;
  if (a5)
  {
    *a5 = BytesPerPixelForPixelFormat;
  }

  return result;
}

uint64_t CMPhotoPixelBufferSetVersatileBayerPattern(__CVBuffer *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!v3)
  {
    return 4294950305;
  }

  v4 = v3;
  CVBufferSetAttachment(a1, *MEMORY[0x1E69661F8], v3, kCVAttachmentMode_ShouldNotPropagate);
  CFRelease(v4);
  return 0;
}

uint64_t CMPhotoPixelBufferGetVersatileBayerPattern(__CVBuffer *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = CVBufferCopyAttachment(a1, *MEMORY[0x1E69661F8], 0);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  SInt32 = FigCFNumberGetSInt32();
  CFRelease(v2);
  return SInt32;
}

uint64_t CMPhotoGetRegroupBayerPatternFromBayerPattern_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetRegroupBayerPatternFromBayerPattern_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoFixedPatternNoiseEncoderAnalyzeAndCreateContext2(__CVBuffer *a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x5048uLL, 0x1030040F2A0CDD9uLL);
  if (!v12)
  {
    return 4294950305;
  }

  v13 = v12;
  v14 = 4294950306;
  if (a2 > 0xFF || !a1 || !a3 || !a4)
  {
    goto LABEL_37;
  }

  if (CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    v14 = 4294950301;
LABEL_37:
    free(v13);
    return v14;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (!(Height * Width) || *(a4 + 36) != 1)
  {
    goto LABEL_37;
  }

  v27 = Width;
  v28 = a2;
  v29 = a6;
  v30 = a5;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v32 = v13;
  v19 = v13 + 10240;
  v20 = a4 + 36;
  do
  {
    if (*v20)
    {
      if (!*(v20 + 4) || !*(v20 + 6) || !*(v20 + 2) || *(v20 - 20) < *(v20 - 24) || *(v20 + 8) && !*(v20 + 12))
      {
        goto LABEL_33;
      }

      v21 = *(v20 + 20);
      if (!v21)
      {
        goto LABEL_33;
      }

      if (CVPixelBufferGetPixelFormatType(*(v20 + 20)) != 1278226488)
      {
        v14 = 4294950301;
        goto LABEL_36;
      }

      if (CVPixelBufferGetWidth(v21) > 0xFF || CVPixelBufferGetHeight(v21) > 0xFF)
      {
        goto LABEL_34;
      }

      v18 += 32;
      v16 += 4 * *(v20 + 8);
      v22 = CVPixelBufferGetWidth(v21);
      v17 += CVPixelBufferGetHeight(v21) * v22;
    }

    v20 += 64;
    --a3;
  }

  while (a3);
  if (!v17)
  {
LABEL_33:
    v14 = 4294950306;
LABEL_36:
    v13 = v32;
    goto LABEL_37;
  }

  v23 = v17 + v18;
  if (v23 + v16 + 92 > 0xFFFE)
  {
LABEL_34:
    v14 = 4294950190;
    goto LABEL_36;
  }

  v24 = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (v24)
  {
    v14 = v24;
    goto LABEL_36;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v32[2565] = CVPixelBufferGetBaseAddress(a1);
  v19[24] = v28;
  v19[25] = BytesPerRow;
  v19[26] = v27;
  v19[27] = Height;
  SlimHrlcGetSize_C(v32);
  if (v29)
  {
    *v29 = v23 + v16 + v32[2568] + 252;
  }

  if (v30)
  {
    *v30 = v32;
  }

  else
  {
    free(v32);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t CMPhotoFixedPatternNoiseEncoderRun2(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t a7, void *a8)
{
  v8 = 4294950306;
  if (a1 && pixelBuffer && a3 && a4 && a5 && a6)
  {
    if (*a5 == 6)
    {
      v14 = (a1 + 20480);
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      if (__PAIR64__(v14[27], v14[26]) == __PAIR64__(Height, Width) && *(a4 + 36) == 1)
      {
        v92 = a5;
        v86 = Height;
        v87 = Width;
        v88 = v14;
        v89 = pixelBuffer;
        v90 = a1;
        v85 = a8;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = a4 + 36;
        v22 = a3;
        do
        {
          if (*v21)
          {
            if (!*(v21 + 4) || !*(v21 + 6) || !*(v21 + 2) || *(v21 - 20) < *(v21 - 24) || *(v21 + 8) && !*(v21 + 12))
            {
              return 4294950306;
            }

            v23 = *(v21 + 20);
            if (!v23)
            {
              return 4294950306;
            }

            if (CVPixelBufferGetPixelFormatType(*(v21 + 20)) != 1278226488)
            {
              return 4294950301;
            }

            if (CVPixelBufferGetWidth(v23) > 0xFF || CVPixelBufferGetHeight(v23) > 0xFF)
            {
              return 4294950190;
            }

            ++v17;
            v18 += 32;
            v20 += 4 * *(v21 + 8);
            v24 = CVPixelBufferGetWidth(v23);
            v19 += CVPixelBufferGetHeight(v23) * v24;
          }

          v21 += 64;
          --v22;
        }

        while (v22);
        if (!v19)
        {
          return 4294950306;
        }

        v25 = v19 + v20;
        if (v25 + v18 + 92 > 0xFFFE || v25 + v18 + *(v90 + 20544) + 252 > a7)
        {
          return 4294950190;
        }

        v26 = 0;
        *a6 = 1111904334;
        *(a6 + 4) = *v92;
        v27.i64[0] = *(v92 + 20);
        v27.i32[2] = *(v92 + 7);
        v27.i32[3] = *(v92 + 12);
        v28 = vrndaq_f32(vmulq_f32(v27, xmmword_1A5ABB4F0));
        v29 = vuzp1q_s16(vcvtq_u32_f32(vrndaq_f32(vmulq_f32(*(v92 + 4), vdupq_n_s32(0x47800000u)))), vcvtq_u32_f32(v28));
        v29.i16[7] = vmovn_s32(vcvtq_s32_f32(v28)).i16[3];
        *(a6 + 14) = v29;
        v30 = vdupq_n_s32(0x42800000u);
        v31 = vmulq_f32(*(v92 + 56), v30);
        v32 = *(v92 + 10);
        *v30.f32 = vmul_f32(*(v92 + 72), *v30.f32);
        *(a6 + 30) = llroundf(*(v92 + 13) * 64.0);
        *v30.f32 = vrnda_f32(*v30.f32);
        v30.i64[1] = v32;
        *(a6 + 32) = vuzp1q_s16(vcvtq_s32_f32(vrndaq_f32(v31)), vcvtq_s32_f32(v30));
        *(a6 + 48) = vmovn_s32(vcvtq_s32_f32(*(v92 + 88)));
        v33 = *(v92 + 27);
        *(a6 + 56) = *(v92 + 26);
        *(a6 + 58) = v33;
        *(a6 + 60) = *(v92 + 4);
        v34 = *(v92 + 29);
        *(a6 + 68) = llroundf(*(v92 + 28) * 4.0);
        *(a6 + 70) = llroundf(v34 * 4.0);
        *(a6 + 72) = *(v92 + 60);
        v35 = *(v92 + 122);
        *(a6 + 82) = *(v92 + 65);
        *(a6 + 74) = v35;
        *(a6 + 84) = *(v92 + 132);
        *(a6 + 12) = v17;
        v36 = a6 + 92;
        v37 = a3;
        v38 = a4 + 28;
        __asm { FMOV            V0.4S, #16.0 }

        v93 = _Q0;
        do
        {
          v44 = *(v38 + 8);
          if (v44)
          {
            v45 = *(v38 - 24);
            v46 = v26 + 1;
            v47 = v36 + 32 * v26;
            *v47 = llroundf(*(v38 - 28) * 256.0);
            v48 = *(v38 + 28);
            *(v47 + 2) = llroundf(v45 * 256.0);
            *(v47 + 4) = llroundf(*(v38 - 20) * 256.0);
            *(v47 + 6) = v44;
            *(v47 + 8) = *(v38 + 12);
            *(v47 + 12) = *(v38 + 10);
            *(v47 + 13) = CVPixelBufferGetWidth(v48);
            v49 = CVPixelBufferGetHeight(v48);
            v50 = *(v38 + 16);
            *(v47 + 16) = 0;
            *(v47 + 20) = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(*(v38 - 16), v93))));
            v51 = *(v38 + 4);
            v52 = llroundf(*v38 * 16.0);
            *(v47 + 14) = v49;
            *(v47 + 15) = v50;
            *(v47 + 28) = v52;
            *(v47 + 30) = llroundf(v51 * 16.0);
            v26 = v46;
          }

          v38 += 64;
          --v37;
        }

        while (v37);
        v53 = 0;
        v54 = (v36 + 32 * v17);
        v55 = a3;
        v56 = (a4 + 48);
        do
        {
          if (*(v56 - 6))
          {
            v57 = v53 + 1;
            v58 = *(v56 - 2);
            if (*(v56 - 2))
            {
              *(v36 + 32 * v53 + 16) = v54 - a6;
              memcpy(v54, *v56, 4 * v58);
              v54 = (v54 + 4 * v58);
            }
          }

          else
          {
            v57 = v53;
          }

          v56 += 8;
          v53 = v57;
          --v55;
        }

        while (v55);
        v59 = 0;
        v60 = 0;
        v61 = a4;
        do
        {
          v62 = v61 + (v60 << 6);
          if (*(v62 + 36))
          {
            v63 = v59 + 1;
            v64 = *(v62 + 56);
            v65 = CVPixelBufferGetWidth(v64);
            v66 = CVPixelBufferGetHeight(v64);
            BytesPerRow = CVPixelBufferGetBytesPerRow(v64);
            if (v66 * v65)
            {
              v68 = BytesPerRow;
              *(v36 + 32 * v59 + 18) = v54 - a6;
              v69 = OUTLINED_FUNCTION_12_1();
              v71 = CVPixelBufferLockBaseAddress(v69, v70);
              if (v71)
              {
                return v71;
              }

              BaseAddress = CVPixelBufferGetBaseAddress(v64);
              if (v66)
              {
                v73 = BaseAddress;
                do
                {
                  memcpy(v54, v73, v65);
                  v73 += v68;
                  v54 = (v54 + v65);
                  --v66;
                }

                while (v66);
              }

              v74 = OUTLINED_FUNCTION_12_1();
              CVPixelBufferUnlockBaseAddress(v74, v75);
            }

            v61 = a4;
          }

          else
          {
            v63 = v59;
          }

          ++v60;
          v59 = v63;
        }

        while (v60 != a3);
        *(a6 + 6) = v54 - a6;
        *v54 = 196623;
        v76 = v88[27];
        *(v54 + 2) = v88[26];
        *(v54 + 3) = v76;
        v54[2] = 0x4C303038536C6D58;
        *(v54 + 12) = v87;
        *(v54 + 13) = v86;
        *(v54 + 14) = 0;
        *(v54 + 15) = v88[24];
        v77 = OUTLINED_FUNCTION_22();
        v71 = CVPixelBufferLockBaseAddress(v77, v78);
        if (v71)
        {
          return v71;
        }

        v79 = CVPixelBufferGetBytesPerRow(v89);
        v80 = CVPixelBufferGetBaseAddress(v89);
        if (v79 == v88[25] && *(v90 + 20520) == v80)
        {
          v96 = 0;
          v8 = SlimHrlcEncodeRun_C(v90, v54 + 32, a6 + a7 - (v54 + 4), &v96);
          v81 = v96 - a6;
          *(a6 + 8) = v96 - a6 - *(a6 + 6);
          if (v85)
          {
            *v85 = v81;
          }
        }

        else
        {
          v8 = 4294950306;
        }

        v82 = OUTLINED_FUNCTION_22();
        CVPixelBufferUnlockBaseAddress(v82, v83);
      }

      else
      {
        return 4294950306;
      }
    }

    else
    {
      return 4294950302;
    }
  }

  return v8;
}

uint64_t CMPhotoFixedPatternNoiseDecoderGetFpnImageDimensions2()
{
  OUTLINED_FUNCTION_12_13();
  if (!v2)
  {
    return 4294950194;
  }

  v12[3] = v0;
  v12[4] = v1;
  v12[0] = 0;
  OUTLINED_FUNCTION_11_13();
  v6 = v5;
  v8 = v7;
  switch(v9)
  {
    case 0:
      if (*(v3 + 5) != 3)
      {
        goto LABEL_5;
      }

      result = CheckFileV1P3(v3, v4, v12);
      if (!result)
      {
        goto LABEL_18;
      }

      break;
    case 1:
      result = CheckFileV1P3(v3, v4, v12);
      if (!result)
      {
        goto LABEL_18;
      }

      break;
    case 2:
      result = CheckFileV3(v3, v4, v12);
      if (!result)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      result = CheckFileV4(v3, v4, v12);
      if (!result)
      {
        goto LABEL_18;
      }

      break;
    case 4:
      result = CheckFileV5(v3, v4, v12);
      if (!result)
      {
        goto LABEL_18;
      }

      break;
    case 5:
      result = CheckFileV6(v3, v4, v12);
      if (!result)
      {
LABEL_18:
        v10 = v12[0];
        if (v12[0])
        {
          if (v8)
          {
            *v8 = *(v12[0] + 24);
          }

          result = 0;
          if (v6)
          {
            *v6 = *(v10 + 26);
          }
        }

        else
        {
          result = 4294950304;
        }
      }

      break;
    default:
LABEL_5:
      result = 4294950299;
      break;
  }

  return result;
}

uint64_t CMPhotoFixedPatternNoiseDecoderGetShadingThumbDimensions2()
{
  OUTLINED_FUNCTION_12_13();
  if (!v33)
  {
    return 4294950194;
  }

  v1 = v0;
  OUTLINED_FUNCTION_11_13();
  v4 = v3;
  v6 = v5;
  v7 = v2;
  switch(v8)
  {
    case 0:
      if (*(v1 + 5) != 3)
      {
        goto LABEL_8;
      }

      if (v2 != 1)
      {
        goto LABEL_38;
      }

      v9 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV1P3(v9, v10, v11);
      if (!result)
      {
        goto LABEL_20;
      }

      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_38;
      }

      v23 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV1P3(v23, v24, v25);
      if (!result)
      {
LABEL_20:
        v18 = 49;
        v19 = 48;
        goto LABEL_21;
      }

      break;
    case 2:
      if (v2 != 1)
      {
        goto LABEL_38;
      }

      v15 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV3(v15, v16, v17);
      if (!result)
      {
        v18 = 57;
        v19 = 56;
        goto LABEL_21;
      }

      break;
    case 3:
      if (v2 != 1)
      {
        goto LABEL_38;
      }

      v20 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV4(v20, v21, v22);
      if (!result)
      {
        goto LABEL_17;
      }

      break;
    case 4:
      if (v2 != 1)
      {
        goto LABEL_38;
      }

      v12 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV5(v12, v13, v14);
      if (!result)
      {
LABEL_17:
        v18 = 59;
        v19 = 58;
LABEL_21:
        v26 = *(v1 + v19);
        v27 = *(v1 + v18);
        goto LABEL_22;
      }

      break;
    case 5:
      v28 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV6(v28, v29, v30);
      if (!result)
      {
        v31 = *(v1 + 12);
        if (!*(v1 + 12))
        {
          goto LABEL_38;
        }

        v32 = (v1 + 106);
        v26 = 0xFFFF;
        v27 = 0xFFFF;
        do
        {
          if (*(v32 - 4) == v7)
          {
            v26 = *(v32 - 1);
            v27 = *v32;
          }

          v32 += 32;
          --v31;
        }

        while (v31);
        v33 = v26 == 0xFFFF || v27 == 0xFFFF;
        if (v33)
        {
LABEL_38:
          result = 4294950303;
        }

        else
        {
LABEL_22:
          if (v6)
          {
            *v6 = v26;
          }

          result = 0;
          if (v4)
          {
            *v4 = v27;
          }
        }
      }

      break;
    default:
LABEL_8:
      result = 4294950299;
      break;
  }

  return result;
}

uint64_t CMPhotoFixedPatternNoiseDecoderRun2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v134 = a5;
  v136 = a4;
  v164 = *MEMORY[0x1E69E9840];
  v157 = 0;
  OUTLINED_FUNCTION_12_13();
  if (!v13)
  {
    return 4294950194;
  }

  v14 = v12;
  v154 = 0u;
  memset(v155, 0, 30);
  v162 = 0;
  v163 = 0;
  OUTLINED_FUNCTION_11_13();
  v16 = v15;
  switch(v17)
  {
    case 0:
      if (*(v14 + 5) != 3)
      {
        return 4294950299;
      }

      v93 = OUTLINED_FUNCTION_1_18();
      v23 = CheckFileV1P3(v93, v94, v95);
      if (v23)
      {
        return v23;
      }

      goto LABEL_26;
    case 1:
      v20 = OUTLINED_FUNCTION_1_18();
      v23 = CheckFileV1P3(v20, v21, v22);
      if (v23)
      {
        return v23;
      }

LABEL_26:
      v96 = *(v14 + 4);
      OUTLINED_FUNCTION_5_15();
      v97 = *(v14 + 18);
      WORD4(v154) = v97;
      *(&v154 + 10) = *(v14 + 20);
      *&v155[6] = *(v14 + 24);
      *&v155[22] = *(v14 + 40);
      v11 = *(v14 + 52);
      v162 = 0;
      v163 = 0;
      bzero(v161, 0xE0uLL);
      v35 = 0;
      v98 = *(v14 + 64);
      v99 = llroundf(*(v14 + 60) * 16.0);
      LODWORD(v158) = __PAIR32__(WORD5(v154), v97);
      WORD2(v158) = WORD6(v154);
      *(&v158 + 6) = 276824065;
      WORD5(v158) = 3024;
      BYTE12(v158) = 2;
      v142 = v14;
      v6 = v96;
      *(&v158 + 13) = *(v14 + 48);
      HIBYTE(v158) = 0;
      LODWORD(v159) = 4456448;
      WORD2(v159) = v99;
      HIWORD(v159) = llroundf(v98 * 16.0);
      v160 = 0;
      goto LABEL_27;
    case 2:
      v24 = OUTLINED_FUNCTION_1_18();
      v23 = CheckFileV3(v24, v25, v26);
      if (v23)
      {
        return v23;
      }

      v6 = *(v14 + 4);
      OUTLINED_FUNCTION_5_15();
      *&v155[24] = *(v14 + 50);
      *&v155[28] = *(v14 + 54);
      v11 = *(v14 + 60);
      OUTLINED_FUNCTION_8_15(v27, v28, v29, v30, v31, v32, v33, v34, v130, pixelBuffer, v134, v136, v138, v141, v144, v146, *(v14 + 18), *(v14 + 26), 0, *(v14 + 18), *(v14 + 26), *(v14 + 34), *(v14 + 42), *&v155[24], v156, 0, v158, *(&v158 + 1), v159, *&v160, v161[0]);
      v35 = 0;
      LOWORD(v158) = v149;
      v5[1] = v152;
      v5[2] = v153;
      OUTLINED_FUNCTION_0_20();
      *(&v158 + 13) = *(v14 + 56);
      HIBYTE(v158) = 0;
      LODWORD(v159) = 4980736;
      v40 = v39;
      v142 = v14;
      v41.i64[0] = *(v14 + 68);
      v42 = (v38 + v40);
      v41.f32[2] = (v36 + v37);
      v41.f32[3] = v42;
      OUTLINED_FUNCTION_4_13(vmulq_f32(v41, xmmword_1A5ABB500));
LABEL_27:
      v9 = 5;
      v7 = 8000;
      v8 = 1000;
      goto LABEL_28;
    case 3:
      v69 = OUTLINED_FUNCTION_1_18();
      v23 = CheckFileV4(v69, v70, v71);
      if (v23)
      {
        return v23;
      }

      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_8_15(v72, v73, v74, v75, v76, v77, v78, v79, v130, pixelBuffer, v134, v136, v138, v141, v144, v146, v148, *(&v148 + 1), 0, 0, *v155, *&v155[8], 0, *&v155[24], v156, 0, v158, *(&v158 + 1), v159, *&v160, v161[0]);
      v35 = 0;
      *(v5 + 1) = *(&v147 + 2);
      OUTLINED_FUNCTION_0_20();
      *(&v158 + 13) = *(v14 + 58);
      LODWORD(v159) = 5505024;
      OUTLINED_FUNCTION_7_14(v80, v81, v82, v83, v84, v85, v86, v87, v131, pixelBuffera, v135, v137, v139, v143, v145, v147, v150);
      v65 = v88;
      v68 = v89 + v90;
      *v5 = v91;
      HIBYTE(v158) = 0;
      goto LABEL_24;
    case 4:
      v52 = OUTLINED_FUNCTION_1_18();
      v23 = CheckFileV5(v52, v53, v54);
      if (v23)
      {
        return v23;
      }

      OUTLINED_FUNCTION_2_20();
      v55 = *(v14 + 82);
      v163 = *(v14 + 90);
      v162 = v55;
      v35 = *(v14 + 92);
      bzero(v161, 0xE0uLL);
      LODWORD(v158) = v146;
      WORD2(v158) = WORD2(v146);
      OUTLINED_FUNCTION_0_20();
      *(&v158 + 13) = *(v14 + 58);
      HIBYTE(v158) = 0;
      OUTLINED_FUNCTION_7_14(v56, v57, v58, v59, v60, v61, v62, v63, v130, pixelBuffer, v134, v136, v138, v141, v144, v146, v148);
      v65 = v64;
      LODWORD(v159) = 6553600;
      v68 = v66 + v67;
LABEL_24:
      v142 = v14;
      v92.i64[0] = *(v14 + 68);
      v92.f32[2] = v65;
      v92.f32[3] = v68;
      OUTLINED_FUNCTION_4_13(vmulq_f32(v92, xmmword_1A5ABB500));
      goto LABEL_28;
    case 5:
      v43 = OUTLINED_FUNCTION_1_18();
      v23 = CheckFileV6(v43, v44, v45);
      if (v23)
      {
        return v23;
      }

      v6 = *(v14 + 4);
      v10 = *(v14 + 5);
      v154 = *(v14 + 14);
      *v155 = *(v14 + 30);
      *&v155[16] = *(v14 + 46);
      *&v155[24] = *(v14 + 54);
      *&v155[26] = *(v14 + 56);
      v11 = *(v14 + 60);
      v8 = *(v14 + 68);
      v7 = *(v14 + 70);
      v9 = *(v14 + 72);
      v46 = *(v14 + 74);
      v163 = *(v14 + 82);
      v162 = v46;
      v47 = *(v14 + 12);
      v48 = v14;
      if (v47 >= 8)
      {
        v49 = 8;
      }

      else
      {
        v49 = *(v14 + 12);
      }

      v142 = v48;
      v35 = *(v48 + 84);
      bzero(&v158, 0x100uLL);
      if (!v47)
      {
        return 4294950194;
      }

      v50 = 0;
      do
      {
        v51 = &v158 + v50;
        *v51 = *(v142 + v50 + 92);
        *(v51 + 2) = *(v142 + v50 + 100);
        *(v51 + 3) = *(v142 + v50 + 104);
        *(v51 + 1) = *(v142 + v50 + 108);
        v50 += 32;
      }

      while (32 * v49 != v50);
      if (WORD3(v158) != 1)
      {
        return 4294950194;
      }

LABEL_28:
      *v16 = v6;
      *(v16 + 4) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v154)), vdupq_n_s32(0x37800000u));
      *(v16 + 1) = v10;
      *(v16 + 20) = vcvts_n_f32_u32(WORD4(v154), 8uLL);
      *(v16 + 24) = vcvts_n_f32_u32(WORD5(v154), 8uLL);
      *(v16 + 28) = vcvts_n_f32_u32(WORD6(v154), 8uLL);
      v100 = vzip1_s32(v160, *&v155[6]);
      v100.i16[1] = v100.i16[0];
      *(v16 + 56) = vmulq_f32(vcvtq_f32_s32(vmovl_s16(v100)), xmmword_1A5ABB510);
      v101 = v160.i16[1];
      *(v16 + 72) = vcvts_n_f32_s32(*&v155[10], 6uLL);
      *(v16 + 76) = vcvts_n_f32_s32(*&v155[12], 6uLL);
      *(v16 + 80) = vcvtq_f32_s32(vmovl_s16(*&v155[14]));
      *(v16 + 96) = vcvtq_f32_s32(vmovl_s16(*&v155[22]));
      *(v16 + 32) = v11;
      v100.i32[0] = HIDWORD(v159);
      v100.i16[2] = v101;
      v100.i16[3] = v101;
      v151 = vdupq_n_s32(0x3D800000u);
      *(v16 + 40) = vmulq_f32(vcvtq_f32_s32(vmovl_s16(v100)), v151);
      *(v16 + 112) = vcvts_n_f32_u32(v8, 2uLL);
      *(v16 + 116) = vcvts_n_f32_u32(v7, 2uLL);
      *(v16 + 120) = v9;
      *(v16 + 122) = v162;
      *(v16 + 130) = v163;
      *(v16 + 132) = v35;
      if (!v136)
      {
        goto LABEL_46;
      }

      v102 = 0;
      break;
    default:
      return 4294950299;
  }

  while (2)
  {
    v103 = v134 + (v102 << 6);
    v104 = *(v103 + 36);
    if (*(v103 + 36))
    {
      v140 = v102;
      v105 = 0;
      *(v103 + 36) = 0;
      do
      {
        v106 = &v158 + 2 * v105;
        if (*(v106 + 3) == v104)
        {
          v107.i32[0] = *v106;
          v107.i16[2] = *(v106 + 2);
          v107.i16[3] = *(v106 + 10);
          v108 = vcvtq_f32_u32(vmovl_u16(v107));
          v108.i32[3] = vcvtq_f32_s32(vmovl_s16(v107)).i32[3];
          v109 = vmulq_f32(v108, xmmword_1A5ABB520);
          v110 = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*(v106 + 22))), v151);
          *v103 = v109;
          *(v103 + 16) = v110;
          *(v103 + 32) = vcvts_n_f32_s32(*(v106 + 15), 4uLL);
          *(v103 + 36) = v104;
          *(v103 + 38) = *(v106 + 12);
          *(v103 + 40) = *(v106 + 2);
          v111 = *(v106 + 15);
          *(v103 + 44) = v111;
          v112 = *(v103 + 48);
          if (v112 && *(v106 + 8))
          {
            memcpy(v112, (v142 + *(v106 + 8)), 4 * v111);
          }

          v113 = *(v103 + 56);
          if (v113)
          {
            v114 = *(v106 + 13);
            v115 = *(v106 + 14);
            if (CVPixelBufferGetWidth(*(v103 + 56)) != v114 || CVPixelBufferGetHeight(v113) != v115)
            {
              return 4294950306;
            }

            v116 = OUTLINED_FUNCTION_12_1();
            v23 = CVPixelBufferLockBaseAddress(v116, v117);
            if (v23)
            {
              return v23;
            }

            BytesPerRow = CVPixelBufferGetBytesPerRow(v113);
            BaseAddress = CVPixelBufferGetBaseAddress(v113);
            if (v115)
            {
              v120 = BaseAddress;
              v121 = (v142 + *(v106 + 9));
              do
              {
                memcpy(v120, v121, v114);
                v120 += BytesPerRow;
                v121 += v114;
                LODWORD(v115) = v115 - 1;
              }

              while (v115);
            }

            v122 = OUTLINED_FUNCTION_12_1();
            CVPixelBufferUnlockBaseAddress(v122, v123);
          }
        }

        ++v105;
      }

      while (v105 != 8);
      v102 = v140 + 1;
      if (v140 + 1 != v136)
      {
        continue;
      }

LABEL_46:
      if (*v157 != 196623)
      {
        return 4294950194;
      }

      if (*(v157 + 16) != 1399614808)
      {
        return 4294950194;
      }

      if (*(v157 + 20) != 1278226488)
      {
        return 4294950194;
      }

      v124 = *(v157 + 24);
      if (*(v157 + 8) != v124)
      {
        return 4294950194;
      }

      v125 = *(v157 + 26);
      if (*(v157 + 12) != v125)
      {
        return 4294950194;
      }

      if (CVPixelBufferGetWidth(pixelBuffer) == v124 && CVPixelBufferGetHeight(pixelBuffer) == v125)
      {
        v126 = OUTLINED_FUNCTION_22();
        v23 = CVPixelBufferLockBaseAddress(v126, v127);
        if (!v23)
        {
          CVPixelBufferGetBytesPerRow(pixelBuffer);
          CVPixelBufferGetBaseAddress(pixelBuffer);
          v18 = SlimHrlcDecodeRun_C();
          v128 = OUTLINED_FUNCTION_22();
          CVPixelBufferUnlockBaseAddress(v128, v129);
          return v18;
        }

        return v23;
      }
    }

    break;
  }

  return 4294950306;
}

uint64_t CMPhotoFixedPatternNoiseDecoderGetShadingThumbTypes2(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, _DWORD *a5)
{
  result = 4294950306;
  if (a3)
  {
    if (a4)
    {
      v8 = a5;
      if (a5)
      {
        if (*a1 == 1111904334)
        {
          switch(*(a1 + 4))
          {
            case 1:
              if (*(a1 + 5) != 3)
              {
                goto LABEL_7;
              }

              v29 = OUTLINED_FUNCTION_6_12();
              result = CheckFileV1P3(v29, v30, v31);
              if (!result)
              {
                goto LABEL_25;
              }

              break;
            case 2:
              v10 = OUTLINED_FUNCTION_6_12();
              result = CheckFileV1P3(v10, v11, v12);
              if (!result)
              {
                goto LABEL_25;
              }

              break;
            case 3:
              v13 = OUTLINED_FUNCTION_6_12();
              result = CheckFileV3(v13, v14, v15);
              if (!result)
              {
                goto LABEL_25;
              }

              break;
            case 4:
              v26 = OUTLINED_FUNCTION_6_12();
              result = CheckFileV4(v26, v27, v28);
              if (!result)
              {
                goto LABEL_25;
              }

              break;
            case 5:
              v23 = OUTLINED_FUNCTION_6_12();
              result = CheckFileV5(v23, v24, v25);
              if (!result)
              {
LABEL_25:
                *a4 = 1;
                bzero(v8, 4 * a3);
                result = 0;
                *v8 = 1;
              }

              break;
            case 6:
              v16 = OUTLINED_FUNCTION_6_12();
              result = CheckFileV6(v16, v17, v18);
              if (!result)
              {
                bzero(v8, 4 * a3);
                v19 = *(a1 + 12);
                if (v19 >= a3)
                {
                  v19 = a3;
                }

                if (v19)
                {
                  v20 = (a1 + 98);
                  v21 = v19;
                  do
                  {
                    v22 = *v20;
                    v20 += 16;
                    *v8++ = v22;
                    --v21;
                  }

                  while (v21);
                }

                result = 0;
                *a4 = v19;
              }

              break;
            default:
LABEL_7:
              result = 4294950299;
              break;
          }
        }

        else
        {
          return 4294950194;
        }
      }
    }
  }

  return result;
}

uint64_t CheckFileV1P3(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 49) * *(a1 + 48);
  v4 = v3 + 68;
  v5 = v3 + 100;
  if (*(a1 + 6) != v4 || v5 >= a2)
  {
    return 4294950194;
  }

  v7 = a1 + *(a1 + 49) * *(a1 + 48);
  if (*(v7 + 68) != 196623 || *(v7 + 84) != 1399614808 || *(v7 + 88) != 1278226488 || *(v7 + 76) != *(v7 + 92) || *(v7 + 80) != *(v7 + 94))
  {
    return 4294950194;
  }

  result = 0;
  if (a3)
  {
    *a3 = v7 + 68;
  }

  return result;
}

uint64_t CheckFileV3(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 57) * *(a1 + 56);
  v4 = v3 + 76;
  v5 = v3 + 108;
  if (*(a1 + 6) != v4 || v5 >= a2)
  {
    return 4294950194;
  }

  v7 = a1 + *(a1 + 57) * *(a1 + 56);
  if (*(v7 + 76) != 196623 || *(v7 + 92) != 1399614808 || *(v7 + 96) != 1278226488 || *(v7 + 84) != *(v7 + 100) || *(v7 + 88) != *(v7 + 102))
  {
    return 4294950194;
  }

  result = 0;
  if (a3)
  {
    *a3 = v7 + 76;
  }

  return result;
}

uint64_t CheckFileV4(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 59) * *(a1 + 58);
  v4 = v3 + 84;
  v5 = v3 + 116;
  if (*(a1 + 6) != v4 || v5 >= a2)
  {
    return 4294950194;
  }

  v7 = a1 + *(a1 + 59) * *(a1 + 58);
  if (*(v7 + 84) != 196623 || *(v7 + 100) != 1399614808 || *(v7 + 104) != 1278226488 || *(v7 + 92) != *(v7 + 108) || *(v7 + 96) != *(v7 + 110))
  {
    return 4294950194;
  }

  result = 0;
  if (a3)
  {
    *a3 = v7 + 84;
  }

  return result;
}

uint64_t CheckFileV5(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 59) * *(a1 + 58);
  v4 = v3 + 100;
  v5 = v3 + 132;
  if (*(a1 + 6) != v4 || v5 >= a2)
  {
    return 4294950194;
  }

  v7 = a1 + *(a1 + 59) * *(a1 + 58);
  if (*(v7 + 100) != 196623 || *(v7 + 116) != 1399614808 || *(v7 + 120) != 1278226488 || *(v7 + 108) != *(v7 + 124) || *(v7 + 112) != *(v7 + 126))
  {
    return 4294950194;
  }

  result = 0;
  if (a3)
  {
    *a3 = v7 + 100;
  }

  return result;
}

uint64_t CheckFileV6(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 12);
  v4 = a1 + 32 * v3 + 92;
  if (*(a1 + 12))
  {
    v5 = (a1 + 107);
    do
    {
      v4 += 4 * *v5 + *(v5 - 1) * *(v5 - 2);
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  v6 = 4294950194;
  if (v4 - a1 + 32 < a2 && *(a1 + 6) == (v4 - a1))
  {
    if (*v4 == 196623 && *(v4 + 16) == 1399614808 && *(v4 + 20) == 1278226488 && *(v4 + 8) == *(v4 + 24) && *(v4 + 12) == *(v4 + 26))
    {
      v6 = 0;
      if (a3)
      {
        *a3 = v4;
      }
    }

    else
    {
      return 4294950194;
    }
  }

  return v6;
}

uint64_t CMPhotoFixedPatternNoiseDecoderGetNCorrectionPairs2()
{
  OUTLINED_FUNCTION_12_13();
  if (!v1)
  {
    return 4294950194;
  }

  v2 = v0;
  OUTLINED_FUNCTION_11_13();
  v5 = v4;
  v6 = v3;
  switch(v7)
  {
    case 0:
      if (*(v2 + 5) != 3)
      {
        goto LABEL_8;
      }

      if (v3 != 1)
      {
        goto LABEL_31;
      }

      v8 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV1P3(v8, v9, v10);
      if (!result)
      {
        goto LABEL_20;
      }

      break;
    case 1:
      if (v3 != 1)
      {
        goto LABEL_31;
      }

      v20 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV1P3(v20, v21, v22);
      if (!result)
      {
        goto LABEL_20;
      }

      break;
    case 2:
      if (v3 != 1)
      {
        goto LABEL_31;
      }

      v14 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV3(v14, v15, v16);
      if (!result)
      {
        goto LABEL_20;
      }

      break;
    case 3:
      if (v3 != 1)
      {
        goto LABEL_31;
      }

      v17 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV4(v17, v18, v19);
      if (!result)
      {
        goto LABEL_20;
      }

      break;
    case 4:
      if (v3 != 1)
      {
        goto LABEL_31;
      }

      v11 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV5(v11, v12, v13);
      if (!result)
      {
LABEL_20:
        v23 = 0;
        goto LABEL_21;
      }

      break;
    case 5:
      v24 = OUTLINED_FUNCTION_3_16();
      result = CheckFileV6(v24, v25, v26);
      if (!result)
      {
        v27 = *(v2 + 12);
        if (!*(v2 + 12))
        {
          goto LABEL_31;
        }

        v28 = (v2 + 107);
        v23 = 0xFFFF;
        do
        {
          if (*(v28 - 9) == v6)
          {
            v23 = *v28;
          }

          v28 += 32;
          --v27;
        }

        while (v27);
        if (v23 != 0xFFFF)
        {
LABEL_21:
          result = 0;
          if (v5)
          {
            *v5 = v23;
          }
        }

        else
        {
LABEL_31:
          result = 4294950303;
        }
      }

      break;
    default:
LABEL_8:
      result = 4294950299;
      break;
  }

  return result;
}

uint64_t SlimVideoDecoder_CreateSession(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 4294951896;
  }

  pthread_once(&SlimVideoDecoderSessionGetTypeID_onceToken, RegisterSlimVideoDecoderSessionClass);
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

CFIndex _decodeFrame(uint64_t a1, CMSampleBufferRef sbuf, const __CFDictionary *a3, CVPixelBufferRef *a4)
{
  v5 = 0;
  pixelBufferOut = 0;
  blockBufferOut = 0;
  v118[1] = 0;
  v119 = 0;
  v118[0] = 0;
  pixelFormatType = 0;
  Code = 4294951896;
  error = 0;
  v7 = 0;
  if (!sbuf || !a4)
  {
    goto LABEL_241;
  }

  pixelBufferOut = *a4;
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  FigCFDictionaryGetInt32IfPresent();
  OUTLINED_FUNCTION_31();
  if (CMBlockBufferIsRangeContiguous(v13, v14, v15))
  {
    blockBufferOut = CFRetain(DataBuffer);
  }

  else
  {
    v16 = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, DataLength, 0, &blockBufferOut);
    if (v16)
    {
      goto LABEL_267;
    }
  }

  if (HIDWORD(DataLength))
  {
    v5 = 0;
    v7 = 0;
    Code = 4294954385;
    goto LABEL_241;
  }

  OUTLINED_FUNCTION_31();
  CMBlockBufferGetDataPointer(v17, v18, v19, v20, v21);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  if (!FormatDescription)
  {
    FormatDescription = *(a1 + 8);
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  if (*a1)
  {
    PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
    v16 = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBufferOut);
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_267:
    Code = v16;
    goto LABEL_213;
  }

  v59 = Dimensions >> 32;
  v60 = pixelFormatType;
  if (pixelBufferOut)
  {
    Width = CVPixelBufferGetWidth(pixelBufferOut);
    Height = CVPixelBufferGetHeight(pixelBufferOut);
    v113 = CVPixelBufferGetPixelFormatType(pixelBufferOut);
    v124 = 0;
    valuePtr = 0;
    if (a3 && CFDictionaryGetValueIfPresent(a3, @"Y", &valuePtr) && CFDictionaryGetValueIfPresent(a3, @"Height", &v124))
    {
      v123 = 0;
      v122 = 0;
      CFNumberGetValue(valuePtr, kCFNumberSInt32Type, &v123);
      CFNumberGetValue(v124, kCFNumberSInt32Type, &v122);
      v61 = Height >= v122 + v123;
      v59 = Dimensions >> 32;
    }

    else
    {
      v59 = Dimensions >> 32;
      v61 = Height == Dimensions >> 32;
    }

    v99 = v113 == pixelFormatType && Width == Dimensions;
    if (v99 && v61)
    {
      goto LABEL_12;
    }

    v60 = pixelFormatType;
  }

  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], Dimensions, v59, v60, *(a1 + 72), &pixelBufferOut))
  {
    Code = 0;
LABEL_213:
    v5 = 0;
    v7 = 0;
    goto LABEL_241;
  }

LABEL_12:
  if (!pixelBufferOut)
  {
    v5 = 0;
    v7 = 0;
    Code = 4294951894;
    goto LABEL_241;
  }

  *(*(a1 + 48) + 32) = CVPixelBufferGetPixelFormatType(pixelBufferOut);
  v16 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  if (v16)
  {
    goto LABEL_267;
  }

  value = 0;
  *(*(a1 + 48) + 64) = v119;
  *(*(a1 + 48) + 112) = 0;
  if (a3 && CFDictionaryGetValueIfPresent(a3, @"Y", &value))
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    *(*(a1 + 48) + 112) = valuePtr;
  }

  if (CVPixelBufferGetPlaneCount(pixelBufferOut) < 2)
  {
    PlaneCount = 1;
  }

  else
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBufferOut);
  }

  v26 = *(a1 + 48);
  *(v26 + 40) = PlaneCount;
  *(v26 + 48) = 1;
  if (CMPhotoPixelFormatContainsYCbCr(pixelFormatType))
  {
    *(*(a1 + 48) + 48) = 2;
    if (CMPhotoPixelFormatIs444(pixelFormatType) || CMPhotoPixelFormatIs422(pixelFormatType))
    {
      *(*(a1 + 48) + 48) = 1;
    }
  }

  v111 = FormatDescription;
  if (!CVPixelBufferIsPlanar(pixelBufferOut))
  {
    *(*(a1 + 48) + 88) = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v63 = *(a1 + 48);
    *(v63 + 8) = BytesPerRow;
    v64 = *(v63 + 112);
    if (!v64)
    {
      goto LABEL_193;
    }

    v65 = *(v63 + 32);
    if (((v65 - 1278226488) > 0x30 || ((1 << (v65 - 56)) & 0x1400000000001) == 0) && ((v65 - 1278226736) > 6 || ((1 << (v65 - 48)) & 0x45) == 0))
    {
      v66 = v65 == 825306677 || v65 == 825437747;
      v67 = v66 || v65 == 1111970369;
      v68 = v67 || v65 == 1380411457;
      if (!v68 && v65 != 1647589490)
      {
        if (v65 == 1647719528)
        {
          v88 = (v64 * BytesPerRow) >> 1;
          goto LABEL_192;
        }

        if (v65 != 1650942776 && v65 != 1650943796 && v65 != 1651519798 && v65 != 1651847472 && v65 != 1651925816 && v65 != 1651926376 && v65 != 1652056888 && v65 != 1717855600 && v65 != 1717856627 && v65 != 1734501176 && v65 != 1734505012 && v65 != 1735549492 && v65 != 1735549752 && v65 != 1751410032 && v65 != 1751411059 && v65 != 1815162994 && v65 != 1815491698 && v65 != 1919379252 && v65 != 1919378232)
        {
          fig_log_get_emitter();
          v110 = FigSignalErrorAtGM();
LABEL_261:
          Code = v110;
          v7 = 0;
          v5 = 0;
          v100 = 1;
          goto LABEL_238;
        }
      }
    }

    v88 = v64 * BytesPerRow;
LABEL_192:
    *(v63 + 88) += v88;
    goto LABEL_193;
  }

  if (*(*(a1 + 48) + 40))
  {
    for (i = 0; *(*(a1 + 48) + 40) > i; ++i)
    {
      *(*(a1 + 48) + 8 * i + 88) = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, i);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, i);
      v29 = *(a1 + 48);
      v29[i + 2] = BytesPerRowOfPlane;
      v30 = v29[28];
      if (v30)
      {
        v31 = v29[8];
        if (v31 != 875704422 && v31 != 875704438 && v31 != 875704934 && v31 != 875704950 && v31 != 875836518 && v31 != 875836534 && v31 != 1751527984 && v31 != 1882468912 && v31 != 1885745712 && v31 != 1936077360 && v31 != 1936077362 && v31 != 1936077876 && v31 != 1937125936 && v31 != 1937125938 && v31 != 1937126452 && v31 != 1952854576 && v31 != 1952854578 && v31 != 1952855092 && v31 != 1953903152 && v31 != 1953903154 && v31 != 1953903668 && v31 != 2016686640 && v31 != 2016686642 && v31 != 2016687156 && v31 != 2019963440 && v31 != 2019963956 && v31 != 2019963442)
        {
          v7 = 0;
          v5 = 0;
          Code = 4294951891;
          goto LABEL_260;
        }

        v58 = v29 + 22;
        if (i)
        {
          v58 += i;
          v30 /= v29[12];
        }

        *v58 += v30 * BytesPerRowOfPlane;
      }
    }
  }

LABEL_193:
  v89 = *(a1 + 48);
  if (*(v89 + 112))
  {
    v90 = MEMORY[0x1E695E480];
  }

  else
  {
    IsVersatile = CMPhotoPixelFormatIsVersatile(*(v89 + 32));
    v92 = *(a1 + 48);
    v90 = MEMORY[0x1E695E480];
    if (IsVersatile)
    {
      if ((LODWORD(valuePtr) = *(v92 + 8360), CMPhotoPixelFormatIsAGXVersatile(*(v92 + 32))) && (RegroupBayerPatternFromBayerPattern = CMPhotoGetRegroupBayerPatternFromBayerPattern(0, 0, *(*(a1 + 48) + 8360), &valuePtr), RegroupBayerPatternFromBayerPattern) || (RegroupBayerPatternFromBayerPattern = CMPhotoPixelBufferSetVersatileBayerPattern(pixelBufferOut, valuePtr), RegroupBayerPatternFromBayerPattern))
      {
LABEL_255:
        Code = RegroupBayerPatternFromBayerPattern;
        v7 = 0;
        v5 = 0;
LABEL_260:
        v100 = 1;
        goto LABEL_238;
      }
    }
  }

  OUTLINED_FUNCTION_31();
  CVPixelBufferGetExtendedPixels(v94, v95, v96, 0, v97);
  v98 = *(a1 + 48);
  *v98 = Dimensions;
  *(v98 + 56) = DataLength;
  if (*(v98 + 32) == 1651519798)
  {
    LODWORD(valuePtr) = 0;
    RegroupBayerPatternFromBayerPattern = _getVersionFromFormatDescription(v111, &valuePtr);
    if (RegroupBayerPatternFromBayerPattern)
    {
      goto LABEL_255;
    }

    OUTLINED_FUNCTION_31();
    RegroupBayerPatternFromBayerPattern = Slim_GetPixelBufferInfoFromVersion(v106, v107, v108, 0, 0, v109);
    if (RegroupBayerPatternFromBayerPattern)
    {
      goto LABEL_255;
    }
  }

  v118[0] = DataLength;
  switch(*(a1 + 60))
  {
    case 1:
      v110 = SlimXDecodeFrame(*(a1 + 48), v118);
      if (v110)
      {
        goto LABEL_261;
      }

      break;
    case 2:
      v110 = YZipDecodeFrame(*(a1 + 48));
      if (v110)
      {
        goto LABEL_261;
      }

      break;
    case 3:
      v110 = HrlcDecodeFrame(*(a1 + 48));
      if (v110)
      {
        goto LABEL_261;
      }

      break;
    case 4:
      v110 = UncompressedDecodeFrame(*(a1 + 48), pixelBufferOut, v118);
      if (v110)
      {
        goto LABEL_261;
      }

      break;
    case 5:
      v110 = IntcDecodeFrame(pixelBufferOut, *(a1 + 48), v118);
      if (v110)
      {
        goto LABEL_261;
      }

      break;
    default:
      v118[0] = SlimDecodeFrame(*(a1 + 48));
      break;
  }

  v100 = pixelBufferOut == 0;
  if (pixelBufferOut)
  {
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  }

  if (v118[0] + 4 < DataLength && (v101 = v119 + v118[0], *(v119 + v118[0]) == 109) && *(v101 + 1) == 101 && *(v101 + 2) == 116 && *(v101 + 3) == 97)
  {
    v102 = *v90;
    v7 = CFDataCreateWithBytesNoCopy(v102, (v101 + 4), DataLength - v118[0] - 4, *MEMORY[0x1E695E498]);
    if (v7)
    {
      v103 = CFPropertyListCreateWithData(v102, v7, 0, 0, &error);
      if (v103)
      {
        v5 = v103;
        if (*(a1 + 56))
        {
          v104 = @"RawImageMetadata";
        }

        else
        {
          v104 = @"MetadataDictionary";
        }

        CMSetAttachment(pixelBufferOut, v104, v103, 1u);
        goto LABEL_236;
      }

      if (error)
      {
        Code = CFErrorGetCode(error);
        v5 = 0;
        goto LABEL_237;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v5 = 0;
LABEL_236:
  Code = 0;
LABEL_237:
  *a4 = pixelBufferOut;
  pixelBufferOut = 0;
LABEL_238:
  if (v100 && pixelBufferOut)
  {
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  }

LABEL_241:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (*a4 != pixelBufferOut && pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return Code;
}

uint64_t SlimVideoDecoder_CopyDecoderRestrictionsInternal(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    v7 = 0;
    _getAlignmentRestrictionUtility(*(a1 + 80), *(*(a1 + 64) + 8364), &v7 + 1, &v7);
    FigCFDictionarySetInt();
    FigCFDictionarySetInt();
    if (a2)
    {
      *a2 = v5;
    }

    else
    {
      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t _getAlignmentRestrictionUtility(uint64_t result, char a2, int *a3, int *a4)
{
  if (a3 && a4)
  {
    v7 = result;
    result = CMPhotoPixelFormatContainsRGB(result);
    if (result)
    {
      v8 = 4;
      v9 = 4;
    }

    else
    {
      result = CMPhotoPixelFormatIsBayer14Bits(v7);
      if (result)
      {
        v8 = 8;
        v9 = 8;
      }

      else
      {
        result = CMPhotoPixelFormatIsRAWVersatile(v7);
        v8 = 8;
        if ((a2 & 1) != 0 || (v9 = 8, !result))
        {
          result = CMPhotoPixelFormatIsNonVersatileVersionOf_bvc8(v7);
          if (result)
          {
            v9 = 8;
          }

          else
          {
            v9 = 4;
          }

          if (result)
          {
            v8 = 8;
          }

          else
          {
            v8 = 16;
          }
        }
      }
    }

    *a3 = v8;
    *a4 = v9;
  }

  return result;
}

uint64_t SlimVideoDecoder_CopyDecoderRestrictionsFromFormatDescript(const opaqueCMFormatDescription *a1, CFMutableDictionaryRef *a2)
{
  v13 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  VersionFromFormatDescription = _getVersionFromFormatDescription(a1, &v13);
  if (VersionFromFormatDescription || (v11 = 0, v12 = 0, VersionFromFormatDescription = Slim_GetPixelBufferInfoFromVersion(v13, 0, &v12, 0, 0, &v11), VersionFromFormatDescription))
  {
    v7 = VersionFromFormatDescription;
    goto LABEL_7;
  }

  v9 = 0;
  v10 = 0;
  _getAlignmentRestrictionUtility(v12, v11, &v10, &v9);
  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  v7 = 0;
  if (!a2)
  {
LABEL_7:
    CFRelease(v5);
    return v7;
  }

  *a2 = v5;
  return v7;
}

uint64_t _getVersionFromFormatDescription(const opaqueCMFormatDescription *a1, _DWORD *a2)
{
  valuePtr = 0;
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (Extension && (Value = CFDictionaryGetValue(Extension, @"slmC")) != 0 && ((v6 = Value, Length = CFDataGetLength(Value), BytePtr = CFDataGetBytePtr(v6), Length >= 4) ? (v9 = BytePtr == 0) : (v9 = 1), !v9))
  {
    v11 = *BytePtr;
    valuePtr = v11;
    if (!v11)
    {
      return 4294951893;
    }
  }

  else
  {
    v10 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600D8]);
    if (!v10)
    {
      return 4294951893;
    }

    CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
    v11 = valuePtr;
    if (!valuePtr)
    {
      return 4294951893;
    }
  }

  if ((v11 & 0xFFFCu) >= 0x64)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = v11;
    }
  }

  return result;
}

uint64_t _startDecoderSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CMPhotoByteStreamWriteStreamCreate(uint64_t a1, uint64_t a2, const void *a3)
{
  memcpy(v8, &unk_1F1916360, sizeof(v8));
  if (!a3)
  {
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
  if (!v5 || (v6 = CFRetain(a3), *v5 = a2, v5[1] = v6, (result = CFWriteStreamCreate()) == 0))
  {
    free(v5);
    CFRelease(a3);
    return 0;
  }

  return result;
}

uint64_t CMPhotoFloatFromRationalArray(const void *a1, int a2, _DWORD *a3, _DWORD *a4, float *a5)
{
  if (!a1)
  {
    return 4294950306;
  }

  v10 = CFGetTypeID(a1);
  if (v10 != CFArrayGetTypeID() || CFArrayGetCount(a1) != 2 || !FigCFArrayGetInt32AtIndex() || !FigCFArrayGetInt32AtIndex())
  {
    return 4294950306;
  }

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
    v12 = 0 / 0;
    if (a2)
    {
      v12 = 0 / 0;
    }

    v13 = v12;
    *a5 = v13;
  }

  return result;
}

uint64_t CMPhotoParseFlexRangeMetadataDictionary(const void *a1, void *a2)
{
  memset(v42, 0, sizeof(v42));
  if (!a1)
  {
    return 4294950306;
  }

  v3 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  result = 4294950306;
  if (!a2 || v3 != TypeID)
  {
    return result;
  }

  cmpweak_kFigPictureProperty_TonemapBaseColorIsWorkingColor();
  if (!CMPhotoCFDictionaryGetBooleanIfPresent())
  {
    return 4294950306;
  }

  cmpweak_kFigPictureProperty_TonemapBaseHDRHeadroom();
  Value = FigCFDictionaryGetValue();
  result = OUTLINED_FUNCTION_14_10(Value, v7, v8, v9, v42 + 2);
  if (result)
  {
    return result;
  }

  cmpweak_kFigPictureProperty_TonemapAlternateHDRHeadroom();
  v10 = FigCFDictionaryGetValue();
  result = OUTLINED_FUNCTION_14_10(v10, v11, v12, v13, (v42 | 0xC));
  if (result)
  {
    return result;
  }

  cmpweak_kFigPictureProperty_TonemapChannelMetadata();
  v14 = FigCFDictionaryGetValue();
  if (!v14)
  {
    return 4294950306;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 != CFArrayGetTypeID())
  {
    return 4294950306;
  }

  LODWORD(v42[1]) = CFArrayGetCount(v15);
  if ((v42[1] & 0xFFFFFFFD) != 1)
  {
    return 4294950306;
  }

  v17 = 0;
  for (i = &v42[2] + 3; ; ++i)
  {
    CFArrayGetValueAtIndex(v15, v17);
    cmpweak_kFigTonemapChannel_BaseOffset();
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_4_14();
    result = CMPhotoFloatFromRationalArray(v19, v20, v21, v22, v23);
    if (result)
    {
      break;
    }

    cmpweak_kFigTonemapChannel_AlternateOffset();
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_4_14();
    result = CMPhotoFloatFromRationalArray(v24, v25, v26, v27, v28);
    if (result)
    {
      break;
    }

    cmpweak_kFigTonemapChannel_Gamma();
    v29 = OUTLINED_FUNCTION_17_7();
    result = OUTLINED_FUNCTION_14_10(v29, v30, v31, v32, i - 6);
    if (result)
    {
      break;
    }

    cmpweak_kFigTonemapChannel_GainMapMin();
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_4_14();
    result = CMPhotoFloatFromRationalArray(v33, v34, v35, v36, v37);
    if (result)
    {
      break;
    }

    cmpweak_kFigTonemapChannel_GainMapMax();
    OUTLINED_FUNCTION_17_7();
    OUTLINED_FUNCTION_4_14();
    result = CMPhotoFloatFromRationalArray(v38, v39, v40, v41, i);
    if (result)
    {
      break;
    }

    if (++v17 >= SLODWORD(v42[1]))
    {
      if (LODWORD(v42[1]) == 1)
      {
        *(&v42[3] + 12) = vdup_lane_s32(*(&v42[3] + 8), 0);
        *(&v42[4] + 1) = vdup_lane_s32(*(&v42[4] + 4), 0);
        *(&v42[1] + 1) = vdup_lane_s32(*(&v42[1] + 4), 0);
        *(&v42[2] + 4) = vdup_lane_s32(*&v42[2], 0);
        *&v42[3] = vdup_lane_s32(*(&v42[2] + 12), 0);
      }

      memcpy(a2, v42, 0x50uLL);
      return 0;
    }
  }

  return result;
}

uint64_t CMPhotoWriteFlexRangeBinaryMetadata(const void *a1, void *a2)
{
  if (!a1)
  {
    return 4294950306;
  }

  v4 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  result = 4294950306;
  if (a2 && v4 == TypeID)
  {
    v7 = CFGetTypeID(a2);
    if (v7 == CFDataGetTypeID() && (v22 = 0, cmpweak_kFigPictureProperty_TonemapBaseColorIsWorkingColor(), CMPhotoCFDictionaryGetBooleanIfPresent()) && (cmpweak_kFigPictureProperty_TonemapChannelMetadata(), (Value = FigCFDictionaryGetValue()) != 0) && (v9 = Value, v10 = CFGetTypeID(Value), v10 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v9), (Count & 0xFFFFFFFFFFFFFFFDLL) == 1))
    {
      v12 = Count;
      *bytes = 0;
      v21 = ((Count > 1) << 7) | ((v22 != 0) << 6);
      CFDataAppendBytes(a2, bytes, 5);
      result = _appendKeyAsBigEndianRational(a1, *MEMORY[0x1E6972388], a2);
      if (!result)
      {
        result = _appendKeyAsBigEndianRational(a1, *MEMORY[0x1E6972378], a2);
        if (!result)
        {
          v13 = 0;
          v14 = *MEMORY[0x1E69739B8];
          v15 = *MEMORY[0x1E69739B0];
          v16 = *MEMORY[0x1E69739C0];
          v17 = *MEMORY[0x1E69739A8];
          v18 = *MEMORY[0x1E69739A0];
          while (1)
          {
            ValueAtIndex = FigCFArrayGetValueAtIndex();
            result = _appendKeyAsBigEndianRational(ValueAtIndex, v14, a2);
            if (result)
            {
              break;
            }

            result = _appendKeyAsBigEndianRational(ValueAtIndex, v15, a2);
            if (result)
            {
              break;
            }

            result = _appendKeyAsBigEndianRational(ValueAtIndex, v16, a2);
            if (result)
            {
              break;
            }

            result = _appendKeyAsBigEndianRational(ValueAtIndex, v17, a2);
            if (result)
            {
              break;
            }

            result = _appendKeyAsBigEndianRational(ValueAtIndex, v18, a2);
            if (result)
            {
              break;
            }

            if (v12 == ++v13)
            {
              return 0;
            }
          }
        }
      }
    }

    else
    {
      return 4294950306;
    }
  }

  return result;
}

uint64_t _appendKeyAsBigEndianRational(const __CFDictionary *a1, const void *a2, __CFData *a3)
{
  *bytes = 0;
  Value = CFDictionaryGetValue(a1, a2);
  v5 = CMPhotoFloatFromRationalArray(Value, 1, bytes, &bytes[4], 0);
  if (!v5)
  {
    *bytes = vrev32_s8(*bytes);
    CFDataAppendBytes(a3, bytes, 8);
  }

  return v5;
}

uint64_t CMPhotoCreateFlexRangeMetadataDictionary(uint64_t a1, __CFDictionary **a2)
{
  result = 4294950306;
  if (a1 && a2)
  {
    allocator = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMPhotoCFDictionarySetInt(Mutable, @"TonemapVersion", 0);
    CMPhotoCFDictionarySetInt(Mutable, @"TonemapWriterVersion", 0);
    cmpweak_kFigPictureProperty_TonemapBaseColorIsWorkingColor();
    if (CMPhotoCFDictionaryGetBooleanIfPresent())
    {
      CMPhotoCFDictionarySetBoolean(Mutable, @"TonemapBaseColorIsWorkingColor", 0);
    }

    cmpweak_kFigPictureProperty_TonemapBaseHDRHeadroom();
    if (FigCFDictionaryGetValue())
    {
      FigCFDictionarySetValue();
    }

    cmpweak_kFigPictureProperty_TonemapAlternateHDRHeadroom();
    if (FigCFDictionaryGetValue())
    {
      FigCFDictionarySetValue();
    }

    cmpweak_kFigPictureProperty_TonemapChannelMetadata();
    Value = FigCFDictionaryGetValue();
    if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFArrayGetTypeID()))
    {
      v16 = a2;
      Count = CFArrayGetCount(v7);
      v10 = Count << 32;
      v11 = Count;
      v12 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
      if (v10)
      {
        v13 = 0;
        if (v11 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11;
        }

        do
        {
          CFArrayGetValueAtIndex(v7, v13);
          v15 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          cmpweak_kFigTonemapChannel_BaseOffset();
          if (OUTLINED_FUNCTION_16_5())
          {
            OUTLINED_FUNCTION_11_14();
            FigCFDictionarySetValue();
          }

          cmpweak_kFigTonemapChannel_AlternateOffset();
          if (OUTLINED_FUNCTION_16_5())
          {
            OUTLINED_FUNCTION_11_14();
            FigCFDictionarySetValue();
          }

          cmpweak_kFigTonemapChannel_Gamma();
          if (OUTLINED_FUNCTION_16_5())
          {
            OUTLINED_FUNCTION_11_14();
            FigCFDictionarySetValue();
          }

          cmpweak_kFigTonemapChannel_GainMapMin();
          if (OUTLINED_FUNCTION_16_5())
          {
            OUTLINED_FUNCTION_11_14();
            FigCFDictionarySetValue();
          }

          cmpweak_kFigTonemapChannel_GainMapMax();
          if (OUTLINED_FUNCTION_16_5())
          {
            OUTLINED_FUNCTION_11_14();
            FigCFDictionarySetValue();
          }

          CFArrayAppendValue(v12, v15);
          if (v15)
          {
            CFRelease(v15);
          }

          ++v13;
        }

        while (v14 != v13);
      }

      FigCFDictionarySetValue();
      if (v12)
      {
        CFRelease(v12);
      }

      result = 0;
      *v16 = Mutable;
    }

    else
    {
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 4294950306;
    }
  }

  return result;
}

uint64_t CMPhotoCreateFlexRangeMetadataDictionaryFromParsedMetadata(uint64_t a1, __CFDictionary **a2)
{
  if (!a2)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_96();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v5 = MutableCopy;
  SInt32 = FigCFNumberCreateSInt32();
  if (SInt32)
  {
    v7 = SInt32;
    FigCFDictionarySetInt32();
    FigCFDictionarySetBoolean();
    OUTLINED_FUNCTION_7_15();
    v11 = _setRationalForKey(v8, v9, v10);
    if (v11 || (OUTLINED_FUNCTION_7_15(), v11 = _setRationalForKey(v12, v13, v14), v11))
    {
      v37 = v11;
    }

    else
    {
      OUTLINED_FUNCTION_96();
      v15 = FigCFArrayCreateMutableCopy();
      if (v15)
      {
        v41 = a1;
        theArray = v15;
        v39 = a2;
        theDict = v5;
        if (*(a1 + 16) < 1)
        {
LABEL_16:
          v36 = theArray;
          CFDictionarySetValue(theDict, @"TonemapChannelMetadata", theArray);
          v37 = 0;
          *v39 = theDict;
          v5 = v7;
        }

        else
        {
          v16 = 0;
          v17 = a1 + 44;
          while (1)
          {
            OUTLINED_FUNCTION_96();
            v18 = FigCFDictionaryCreateMutableCopy();
            if (!v18)
            {
              break;
            }

            v19 = v18;
            CFArrayAppendValue(theArray, v18);
            CFRelease(v19);
            OUTLINED_FUNCTION_7_15();
            v23 = _setRationalForKey(v20, v21, v22);
            if (v23 || (OUTLINED_FUNCTION_7_15(), v23 = _setRationalForKey(v24, v25, v26), v23) || (OUTLINED_FUNCTION_7_15(), v23 = _setRationalForKey(v27, v28, v29), v23) || (OUTLINED_FUNCTION_7_15(), v23 = _setRationalForKey(v30, v31, v32), v23) || (OUTLINED_FUNCTION_7_15(), v23 = _setRationalForKey(v33, v34, v35), v23))
            {
              v37 = v23;
              goto LABEL_18;
            }

            ++v16;
            v17 += 4;
            if (v16 >= *(v41 + 16))
            {
              goto LABEL_16;
            }
          }

          v37 = 4294950305;
LABEL_18:
          CFRelease(v7);
          v5 = theDict;
          v36 = theArray;
        }

        goto LABEL_19;
      }

      v37 = 4294950305;
    }

    CFRelease(v7);
    v36 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 4294950305;
  }

LABEL_19:
  CFRelease(v5);
  if (v36)
  {
    CFRelease(v36);
  }

  return v37;
}

uint64_t _setRationalForKey(const void *a1, const void *a2, __CFDictionary *a3)
{
  OUTLINED_FUNCTION_96();
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v7 = MutableCopy;
  appended = FigCFArrayAppendInt();
  if (!appended)
  {
    CFArrayAppendValue(v7, a2);
    CFDictionarySetValue(a3, a1, v7);
  }

  CFRelease(v7);
  return appended;
}

uint64_t CMPhotoCreateFlexRangeMetadataDictionaryFromBinaryMetadata(const void *a1, int a2, __CFDictionary **a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  CFGetAllocator(a1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return 4294950305;
  }

  v7 = MutableCopy;
  *buffer = 0;
  v37 = 0;
  if (CFDataGetLength(a1) <= 3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
LABEL_44:
    v9 = FigSignalErrorAtGM();
    goto LABEL_45;
  }

  v39.location = 0;
  v39.length = 4;
  CFDataGetBytes(a1, v39, buffer);
  v37 = 4;
  v8 = *buffer;
  *buffer = __rev16(*buffer);
  *&buffer[2] = bswap32(*&buffer[2]) >> 16;
  if (v8)
  {
LABEL_43:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    goto LABEL_44;
  }

  v9 = FigCFDictionarySetUInt32();
  if (v9)
  {
    goto LABEL_45;
  }

  v9 = FigCFDictionarySetUInt32();
  if (v9)
  {
    goto LABEL_45;
  }

  if (!a2)
  {
    v36 = 0;
    if (CFDataGetLength(a1) != 4)
    {
      v40.location = 4;
      v40.length = 1;
      CFDataGetBytes(a1, v40, &v36);
      v37 = 5;
      v12 = v36;
      v9 = CMPhotoCFDictionarySetBoolean(v7, @"TonemapBaseColorIsWorkingColor", (v36 >> 6) & 1);
      if (!v9)
      {
        v9 = _extractAndSetRationalForKey(a1, 5, 0, @"TonemapBaseHDRHeadroom", v7, &v37);
        if (!v9)
        {
          v9 = _extractAndSetRationalForKey(a1, v37, 0, @"TonemapAlternateHDRHeadroom", v7, &v37);
          if (!v9)
          {
            CFGetAllocator(a1);
            v13 = FigCFArrayCreateMutableCopy();
            if (v13)
            {
              theArray = v13;
              v14 = 0;
              v11 = 0;
              while (1)
              {
                if (v11)
                {
                  CFRelease(v11);
                }

                CFGetAllocator(a1);
                v11 = FigCFDictionaryCreateMutableCopy();
                if (!v11)
                {
                  break;
                }

                v15 = OUTLINED_FUNCTION_3_17();
                v19 = _extractAndSetRationalForKey(v15, v16, v17, @"GainMapMin", v11, v18);
                if (v19 || (v20 = OUTLINED_FUNCTION_3_17(), v19 = _extractAndSetRationalForKey(v20, v21, v22, @"GainMapMax", v11, v23), v19) || (v19 = _extractAndSetRationalForKey(a1, v37, 0, @"Gamma", v11, &v37), v19) || (v24 = OUTLINED_FUNCTION_3_17(), v19 = _extractAndSetRationalForKey(v24, v25, v26, @"BaseOffset", v11, v27), v19) || (v28 = OUTLINED_FUNCTION_3_17(), v19 = _extractAndSetRationalForKey(v28, v29, v30, @"AlternateOffset", v11, v31), v19))
                {
                  v33 = v19;
                  goto LABEL_36;
                }

                CFArrayAppendValue(theArray, v11);
                if (v12 < 0 && v14++ < 2)
                {
                  continue;
                }

                v10 = theArray;
                CFDictionarySetValue(v7, @"TonemapChannelMetadata", theArray);
                goto LABEL_29;
              }

              v33 = 4294950305;
LABEL_36:
              v10 = theArray;
            }

            else
            {
              v11 = 0;
              v10 = 0;
              v33 = 4294950305;
            }

            goto LABEL_37;
          }
        }
      }

LABEL_45:
      v33 = v9;
      v11 = 0;
      v10 = 0;
      goto LABEL_37;
    }

    goto LABEL_43;
  }

  if (CFDataGetLength(a1) >= 5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_0();
    FigSignalErrorAtGM();
  }

  v10 = 0;
  v11 = 0;
LABEL_29:
  v33 = 0;
  if (a3)
  {
    *a3 = v7;
    if (!v10)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_37:
  CFRelease(v7);
  if (v10)
  {
LABEL_31:
    CFRelease(v10);
  }

LABEL_32:
  if (v11)
  {
    CFRelease(v11);
  }

  return v33;
}