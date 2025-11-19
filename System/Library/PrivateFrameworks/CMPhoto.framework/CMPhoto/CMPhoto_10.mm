uint64_t SlimCompressionPluginClass_completeEncodes(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (!*(v1 + 72))
  {
    dispatch_barrier_sync(*(v1 + 80), &__block_literal_global_21);
  }

  return 0;
}

void _slimEncoderSessionSetOneProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  SlimVideoEncoder_SetPropertyInternal(*(a3 + 8), a1, a2);
  if (!*a3)
  {
    *a3 = v4;
  }
}

uint64_t SlimCompressionPluginClass_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v8 = *(a1 + 136);
  v9 = *(a1 + 144);

  return v8(a1, a3, a4, v9, a2);
}

CFTypeRef _copySession(unsigned int a1)
{
  cf = 0;
  pthread_once(&_createGlobalPoolIfNeeded_onceToken, _once_createGlobalPoolIfNeeded);
  if (!globalPool || !*globalPool)
  {
    goto LABEL_11;
  }

  v2 = FigSimpleMutexLock();
  if (v2)
  {
    goto LABEL_14;
  }

  if (CFArrayGetCount(*(globalPool + 8 * a1 + 16)) < 1)
  {
    v4 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(globalPool + 8 * a1 + 16), 0);
    v4 = ValueAtIndex ? CFRetain(ValueAtIndex) : 0;
    cf = v4;
    CFArrayRemoveValueAtIndex(*(globalPool + 8 * a1 + 16), 0);
  }

  FigSimpleMutexUnlock();
  if (!v4)
  {
LABEL_11:
    v5 = *MEMORY[0x1E695E480];
    if (a1)
    {
      v2 = CMPhotoDecompressionSessionCreate(v5, 0, &cf);
    }

    else
    {
      v2 = CMPhotoCompressionSessionCreate(v5, 0, &cf);
    }

LABEL_14:
    v4 = cf;
    if (v2)
    {
      v6 = cf == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      CFRelease(cf);
      return 0;
    }
  }

  return v4;
}

CFIndex _performCleanupByType(uint64_t a1, unsigned int a2)
{
  v4 = dispatch_time(0, 0);
  v5 = *(a1 + 8 * a2 + 16);
  Count = CFArrayGetCount(v5);
  if (Count >= 1)
  {
    v7 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v7 - 2);
      CMPhotoCFDictionaryGetInt64IfPresent();
      if (v4)
      {
        CFDictionaryRemoveValue(*(a1 + 32), ValueAtIndex);
        CFArrayRemoveValueAtIndex(v5, v7 - 2);
      }

      --v7;
    }

    while (v7 > 1);
  }

  return CFArrayGetCount(v5);
}

uint64_t _createByteStreamAndBacking(CFAllocatorRef structureAllocator, uint64_t a2, CFTypeRef *a3, void *a4)
{
  blockBufferOut = 0;
  cf = 0;
  buffer = 0;
  v6 = *a2;
  if (*a2 > 2)
  {
    if (v6 == 4)
    {
      v13 = *(a2 + 16);
      if (v13)
      {
        WritableWithIOSurface = CMPhotoSurfacePoolCreateMemorySurface(@"SurfacePoolOneShot", v13, 1, &buffer);
        if (!WritableWithIOSurface)
        {
          IOSurfaceDecrementUseCount(buffer);
          WritableWithIOSurface = FigByteStreamCreateWritableWithIOSurface();
          if (!WritableWithIOSurface)
          {
            Mutable = buffer;
            buffer = 0;
            goto LABEL_21;
          }
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_29;
      }

      if (*(a2 + 8))
      {
        WritableWithIOSurface = CMByteStreamCreateForFileURL();
        if (!WritableWithIOSurface)
        {
          v10 = *(a2 + 8);
          if (v10)
          {
            Mutable = CFRetain(v10);
          }

          else
          {
            Mutable = 0;
          }

          goto LABEL_21;
        }

LABEL_32:
        v12 = WritableWithIOSurface;
        Mutable = 0;
        goto LABEL_30;
      }
    }

    Mutable = 0;
    v12 = 4294950306;
    goto LABEL_30;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      WritableWithIOSurface = CMBlockBufferCreateEmpty(structureAllocator, 0, 0, &blockBufferOut);
      if (!WritableWithIOSurface)
      {
        WritableWithIOSurface = CMByteStreamCreateWritableForBlockBuffer();
        if (!WritableWithIOSurface)
        {
          Mutable = blockBufferOut;
          blockBufferOut = 0;
LABEL_21:
          v12 = 0;
          *a3 = cf;
          cf = 0;
          *a4 = Mutable;
          Mutable = 0;
          goto LABEL_22;
        }
      }

      goto LABEL_32;
    }

LABEL_29:
    _createByteStreamAndBacking_cold_1(&v18);
    Mutable = 0;
    v12 = v18;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(structureAllocator, 0);
  if (Mutable)
  {
    WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
    if (!WritableWithCFMutableData)
    {
      goto LABEL_21;
    }

    v12 = WritableWithCFMutableData;
  }

  else
  {
    v12 = 4294950305;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_22:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (buffer)
  {
    CFRelease(buffer);
  }

  return v12;
}

void _imageRecordReleaseCallback(CFAllocatorRef allocator, void *ptr)
{
  v4 = ptr[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[15];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = ptr[16];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = ptr[18];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = ptr[17];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = ptr[19];
  if (v9)
  {
    CFRelease(v9);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

void CMPhotoHEIFFileWriterDispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[6];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[5];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[7];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[10];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a1[11];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[13];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = a1[29];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = a1[27];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = a1[25];
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = a1[26];
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = a1[20];
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = a1[21];
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = a1[17];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = a1[14];
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = a1[15];
    if (v19)
    {
      CFRelease(v19);
    }

    FigSimpleMutexDestroy();

    free(a1);
  }
}

uint64_t CMPhotoHEIFFileWriterAddSampleBufferToImage(uint64_t a1, const void *a2, CFIndex a3, opaqueCMSampleBuffer *a4)
{
  if (!a1)
  {
    return 4294950306;
  }

  if (!a4)
  {
    return 4294950194;
  }

  v8 = FigSimpleMutexLock();
  if (v8)
  {
    return v8;
  }

  if (a3 < 0)
  {
    goto LABEL_118;
  }

  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= a3)
  {
LABEL_118:
    value_low = 4294950306;
    goto LABEL_116;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), a3);
  v11 = ValueAtIndex[2];
  FormatDescription = CMSampleBufferGetFormatDescription(a4);
  v13 = *ValueAtIndex;
  if (*(a1 + 32))
  {
    goto LABEL_48;
  }

  v14 = v13 - 3;
  if (a3)
  {
    v15 = *(ValueAtIndex + 56) == 0;
  }

  else
  {
    v15 = 0;
  }

  v17 = v15 && v14 < 0xFFFFFFFE;
  LOBYTE(time1.value) = 8;
  if (v11 > 1752589104)
  {
    if (v11 != 1785750887)
    {
      LODWORD(v18) = 1835623985;
      if (v11 == 1752589105)
      {
        InfoFromFormatDescription = CMPhotoGetInfoFromFormatDescription(FormatDescription, 0, 0, 0, 0, 0, &time1, 0, 0, 0, 0, 0);
        if (InfoFromFormatDescription)
        {
          goto LABEL_114;
        }

        if (LOBYTE(time1.value) <= 8u)
        {
          v18 = 1751476579;
        }

        else
        {
          v18 = 1751476600;
        }

        if (v14 >= 0xFFFFFFFE)
        {
          v22 = 1751479907;
        }

        else
        {
          v22 = v18;
        }

        CFSetAddValue(*(a1 + 104), v22);
      }

      goto LABEL_41;
    }

    v19 = *(a1 + 104);
    v18 = 1785750887;
    v20 = 1785751411;
    goto LABEL_37;
  }

  if (v11 == 1635135537)
  {
    if (v14 >= 0xFFFFFFFE)
    {
      v23 = 1635150195;
    }

    else
    {
      v23 = 1635150182;
    }

    CFSetAddValue(*(a1 + 104), v23);
    LODWORD(v18) = 1635150182;
    goto LABEL_41;
  }

  LODWORD(v18) = 1835623985;
  if (v11 == 1635148593)
  {
    v18 = 1635148649;
    v19 = *(a1 + 104);
    v20 = 1635148659;
LABEL_37:
    if (v14 >= 0xFFFFFFFE)
    {
      v24 = v20;
    }

    else
    {
      v24 = v18;
    }

    CFSetAddValue(v19, v24);
  }

LABEL_41:
  CFSetAddValue(*(a1 + 104), 0x6D696631);
  if (v14 >= 0xFFFFFFFE)
  {
    CFSetAddValue(*(a1 + 104), 0x6D736631);
    CFSetAddValue(*(a1 + 104), 0x69736F38);
    CFSetAddValue(*(a1 + 104), 0x68656963);
  }

  if ((v17 & 1) == 0)
  {
    v25 = 1836279345;
    if (v14 < 0xFFFFFFFE)
    {
      v25 = v18;
    }

    *(a1 + 96) = v25;
  }

  v13 = *ValueAtIndex;
LABEL_48:
  if (v13 == 2)
  {
    if (!*(a1 + 16))
    {
      value_low = 4294950304;
      goto LABEL_116;
    }

    LODWORD(time2.value) = 0;
    v26 = CFArrayGetValueAtIndex(*(a1 + 48), *(ValueAtIndex + 10));
    if (!ValueAtIndex[1])
    {
      goto LABEL_54;
    }

    v27 = CFArrayGetValueAtIndex(*(a1 + 40), *(ValueAtIndex + 14));
    v28 = ValueAtIndex[1];
    switch(v28)
    {
      case 2u:
        v34 = *(a1 + 16);
        v35 = v27[18];
        v36 = *(ValueAtIndex + 17);
        v37 = *(ValueAtIndex + 15);
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v38)
        {
          value_low = v38(v34, v35, v11, v36, v37, &time2);
        }

        else
        {
          value_low = 4294954514;
        }

        v26 += 12;
        break;
      case 1u:
        v39 = *(a1 + 16);
        v40 = v27[18];
        v41 = *(ValueAtIndex + 17);
        v42 = *(ValueAtIndex + 15);
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v43)
        {
          value_low = v43(v39, v40, v11, v41, v42, &time2);
        }

        else
        {
          value_low = 4294954514;
        }

        v26 += 6;
        break;
      case 0u:
LABEL_54:
        v29 = *(a1 + 16);
        v30 = *(ValueAtIndex + 17);
        v31 = *(ValueAtIndex + 15);
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v32)
        {
          goto LABEL_115;
        }

        value_low = v32(v29, v11, v30, v31, &time2);
        break;
      default:
        CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_1(&time1);
LABEL_107:
        value_low = LODWORD(time1.value);
        goto LABEL_116;
    }

    if (value_low)
    {
      goto LABEL_116;
    }

    ValueAtIndex[18] = time2.value;
    v26[2] = CFRetain(a4);
    *(v26 + 6) = time2.value;
    goto LABEL_73;
  }

  if (!v13)
  {
LABEL_73:
    InfoFromFormatDescription = _addSampleBufferToCollection(a1, ValueAtIndex, a2, a4);
    if (InfoFromFormatDescription)
    {
      goto LABEL_114;
    }

LABEL_74:
    memset(&v73, 0, sizeof(v73));
    CMSampleBufferGetPresentationTimeStamp(&v73, a4);
    if (ValueAtIndex[1] || (ValueAtIndex[25] & 1) == 0 || (time1 = v73, time2 = *(ValueAtIndex + 22), !CMTimeCompare(&time1, &time2)))
    {
      value_low = 0;
      *(ValueAtIndex + 22) = v73;
      goto LABEL_116;
    }

    CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_4(&time1);
    goto LABEL_107;
  }

  v44 = CFArrayGetValueAtIndex(*(a1 + 48), *(ValueAtIndex + 10));
  InfoFromFormatDescription = _ensureBackingIsFinal(a1);
  if (InfoFromFormatDescription || (InfoFromFormatDescription = _createMovieWriterIfNeeded(a1), InfoFromFormatDescription))
  {
LABEL_114:
    value_low = InfoFromFormatDescription;
    goto LABEL_116;
  }

  v45 = 1885954932;
  v46 = ValueAtIndex[1];
  v47 = v44;
  if (v46)
  {
    if (v46 == 2)
    {
      v45 = 1635088502;
      v47 = v44 + 24;
    }

    else
    {
      if (v46 != 1)
      {
        CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_5(&time1);
        goto LABEL_107;
      }

      v47 = v44 + 12;
    }
  }

  v48 = *v47;
  if (v48)
  {
LABEL_80:
    v49 = *(a1 + 24);
    v50 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v50)
    {
      goto LABEL_115;
    }

    InfoFromFormatDescription = v50(v49, v48, a4);
    if (!InfoFromFormatDescription)
    {
      goto LABEL_74;
    }

    goto LABEL_114;
  }

  if (*(a1 + 33))
  {
    CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_2(&time1);
    goto LABEL_107;
  }

  if (*v44 || (v51 = v44 + 12, v44[12]) || (v52 = v44 + 24, v44[24]) || v44[36])
  {
    CMPhotoHEIFFileWriterAddSampleBufferToImage_cold_3(&time1);
    goto LABEL_107;
  }

  v53 = *(a1 + 24);
  v54 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v54)
  {
    goto LABEL_115;
  }

  InfoFromFormatDescription = v54(v53, v45, 0, v47);
  if (InfoFromFormatDescription)
  {
    goto LABEL_114;
  }

  v55 = 0;
  v70 = *MEMORY[0x1E6971D40];
  v69 = *MEMORY[0x1E695E4C0];
  while (1)
  {
    if (v55 == ValueAtIndex[1])
    {
      goto LABEL_104;
    }

    if (v55)
    {
      break;
    }

    if (!*v44)
    {
      v60 = *(a1 + 24);
      v61 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v61)
      {
        goto LABEL_115;
      }

      InfoFromFormatDescription = v61(v60, 1885954932, 0, v44);
      if (InfoFromFormatDescription)
      {
        goto LABEL_114;
      }

      v58 = *(a1 + 24);
      v59 = *v44;
LABEL_102:
      v62 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v62)
      {
        goto LABEL_115;
      }

      InfoFromFormatDescription = v62(v58, v59, v70, v69);
      if (InfoFromFormatDescription)
      {
        goto LABEL_114;
      }
    }

LABEL_104:
    if (++v55 == 3)
    {
      goto LABEL_105;
    }
  }

  if (v55 == 1)
  {
    if (!*v51)
    {
      v56 = *(a1 + 24);
      v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v57)
      {
        goto LABEL_115;
      }

      InfoFromFormatDescription = v57(v56, 1885954932, 0, v44 + 12);
      if (InfoFromFormatDescription)
      {
        goto LABEL_114;
      }

      v58 = *(a1 + 24);
      v59 = *v51;
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  if (*v52)
  {
    goto LABEL_105;
  }

  v63 = *(a1 + 24);
  v64 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v64)
  {
    InfoFromFormatDescription = v64(v63, 1635088502, 0, v52);
    if (InfoFromFormatDescription)
    {
      goto LABEL_114;
    }

    v65 = *(a1 + 24);
    v66 = *v52;
    v67 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v67)
    {
      InfoFromFormatDescription = v67(v65, v66, v70, v69);
      if (InfoFromFormatDescription)
      {
        goto LABEL_114;
      }

LABEL_105:
      v48 = *v47;
      goto LABEL_80;
    }
  }

LABEL_115:
  value_low = 4294954514;
LABEL_116:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t CMPhotoHEIFFileWriterAddCompressedMovie(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v235 = *MEMORY[0x1E69E9840];
  value_low = 4294950306;
  if (!a1 || !a3)
  {
    goto LABEL_254;
  }

  v5 = a1;
  v6 = FigSimpleMutexLock();
  if (v6)
  {
    value_low = v6;
LABEL_254:
    _trackRelease(0);
    return value_low;
  }

  capacity = 0;
  if (*(v5 + 24) || *(v5 + 34))
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_1(&v215);
LABEL_257:
    value_low = LODWORD(v215.value);
    _trackRelease(0);
    goto LABEL_150;
  }

  if (CFArrayGetCount(*(v5 + 48)))
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_2(&v215);
    goto LABEL_257;
  }

  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040E72D6CFBuLL);
  if (!v7)
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_25(&v215);
    goto LABEL_257;
  }

  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9)
  {
    Mutable = 0;
LABEL_139:
    value_low = 4294954514;
    goto LABEL_140;
  }

  IsFinal = v9(a3, &capacity);
  if (IsFinal)
  {
    goto LABEL_258;
  }

  if (capacity <= 0)
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_24(&v215);
    Mutable = 0;
    goto LABEL_265;
  }

  IsFinal = _ensureBackingIsFinal(v5);
  if (IsFinal)
  {
    goto LABEL_258;
  }

  IsFinal = _createMovieWriterIfNeeded(v5);
  if (IsFinal)
  {
    goto LABEL_258;
  }

  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, 0);
  *(v8 + 2) = Mutable;
  if (!Mutable)
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_23(&v215);
    goto LABEL_265;
  }

  v173 = v8;
  if (capacity >= 1)
  {
    v13 = 0;
    v14 = *MEMORY[0x1E6971E00];
    while (1)
    {
      Mutable = malloc_type_calloc(1uLL, 0x90uLL, 0x102004016B32722uLL);
      if (!Mutable)
      {
        CMPhotoHEIFFileWriterAddCompressedMovie_cold_22(&v215);
LABEL_265:
        value_low = LODWORD(v215.value);
        goto LABEL_140;
      }

      v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v15)
      {
        goto LABEL_139;
      }

      v16 = v15(a3, v13, Mutable + 3, Mutable + 1, Mutable + 12);
      if (v16)
      {
        goto LABEL_260;
      }

      *Mutable = v8;
      v17 = *(Mutable + 3);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v18)
      {
        goto LABEL_139;
      }

      v16 = v18(v17, Mutable + 4);
      if (v16 || (v16 = FigSampleGeneratorCreateForFormatReaderUsingByteStreams(), v16))
      {
LABEL_260:
        value_low = v16;
        goto LABEL_140;
      }

      v19 = *(Mutable + 4);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v20)
      {
        goto LABEL_139;
      }

      v21 = v20(v19, Mutable + 6);
      if (v21)
      {
        goto LABEL_275;
      }

      v22 = *(v5 + 24);
      v23 = *(Mutable + 2);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v24)
      {
        break;
      }

      v21 = v24(v22, v23, 0, Mutable + 2);
      if (v21)
      {
        goto LABEL_275;
      }

      v25 = *(v5 + 24);
      v26 = *(Mutable + 4);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v27)
      {
        break;
      }

      v21 = v27(v25, v26, v14, v11, Mutable + 7);
      if (v21)
      {
LABEL_275:
        value_low = v21;
        goto LABEL_164;
      }

      v28 = dispatch_queue_create("com.apple.coremedia.CMPhoto.videoTrackWriter", 0);
      *(Mutable + 9) = v28;
      v8 = v173;
      if (!v28)
      {
        CMPhotoHEIFFileWriterAddCompressedMovie_cold_21(&v215);
        goto LABEL_265;
      }

      CFArrayAppendValue(*(v173 + 2), Mutable);
      if (++v13 >= capacity)
      {
        Mutable = *(v173 + 2);
        goto LABEL_31;
      }
    }

    value_low = 4294954514;
LABEL_164:
    v8 = v173;
    goto LABEL_140;
  }

LABEL_31:
  v29 = 0;
  v198 = *MEMORY[0x1E6971D80];
  v199 = *MEMORY[0x1E6973AF0];
  v194 = *MEMORY[0x1E6971CE8];
  v196 = *MEMORY[0x1E6973A08];
  v191 = *MEMORY[0x1E6971D60];
  v192 = *MEMORY[0x1E6973A78];
  v189 = *MEMORY[0x1E6971D08];
  v190 = *MEMORY[0x1E6973A38];
  v187 = *MEMORY[0x1E6971E28];
  v188 = *MEMORY[0x1E6973B18];
  v185 = *MEMORY[0x1E6971E18];
  v186 = *MEMORY[0x1E6973AA8];
  v183 = *MEMORY[0x1E6971E08];
  v184 = *MEMORY[0x1E69739E8];
  v181 = *MEMORY[0x1E6971CC8];
  v182 = *MEMORY[0x1E69739D0];
  v179 = *MEMORY[0x1E6971DD0];
  v180 = *MEMORY[0x1E6973AD0];
  v177 = *MEMORY[0x1E6971CF8];
  v178 = *MEMORY[0x1E6973A18];
  v175 = *MEMORY[0x1E69738D8];
  v176 = *MEMORY[0x1E6973A88];
  v171 = *MEMORY[0x1E6973AB8];
  v162 = *MEMORY[0x1E6971D88];
  v170 = *MEMORY[0x1E69739F8];
  key = *MEMORY[0x1E6971C90];
  v165 = *MEMORY[0x1E6971CB8];
  v166 = *MEMORY[0x1E6971C88];
  v164 = *MEMORY[0x1E6971CA0];
  v160 = *MEMORY[0x1E6971CD8];
  v168 = *MEMORY[0x1E6971DC8];
  v169 = *MEMORY[0x1E6971DB8];
  v163 = *MEMORY[0x1E6971DA8];
  v161 = *MEMORY[0x1E6971D50];
  v30 = *(v5 + 24);
  v172 = v5;
  v174 = Mutable;
  while (1)
  {
    v31 = Mutable ? CFArrayGetCount(Mutable) : 0;
    if (v29 >= v31)
    {
      break;
    }

    v32 = 0;
    v33 = *(CFArrayGetValueAtIndex(Mutable, v29) + 4);
    v215.value = v199;
    *&v215.timescale = v198;
    v215.epoch = v196;
    v216 = v194;
    v217 = v192;
    v218 = v191;
    v219 = v190;
    v220 = v189;
    v221 = v188;
    v222 = v187;
    v223 = v186;
    v224 = v185;
    v225 = v184;
    v226 = v183;
    v227 = v182;
    v228 = v181;
    v229 = v180;
    v230 = v179;
    v231 = v178;
    v232 = v177;
    v233 = v176;
    v234 = v175;
    cf[0] = 0;
    while (1)
    {
      v34 = *(&v215.value + v32);
      FigBaseObject = FigTrackReaderGetFigBaseObject();
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v36)
      {
        v36(FigBaseObject, v34, v11, cf);
      }

      v37 = cf[0];
      if (!cf[0])
      {
        goto LABEL_44;
      }

      v38 = *(&v215.timescale + v32);
      v39 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v39)
      {
        value_low = 4294954514;
        goto LABEL_47;
      }

      v40 = v39(v30, v33, v38, v37);
      if (v40)
      {
        break;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

LABEL_44:
      v32 += 16;
      if (v32 == 176)
      {
        value_low = 0;
        goto LABEL_47;
      }
    }

    value_low = v40;
LABEL_47:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (value_low)
    {
      goto LABEL_152;
    }

    cf[0] = 0;
    v41 = FigTrackReaderGetFigBaseObject();
    v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v42)
    {
      v42(v41, v171, v11, cf);
      if (cf[0])
      {
        Count = CFArrayGetCount(cf[0]);
        if (Count < 1)
        {
          value_low = 0;
        }

        else
        {
          v44 = Count;
          v45 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
          if (v45)
          {
            v46 = v45;
            for (i = 0; i != v44; ++i)
            {
              values = CFArrayGetValueAtIndex(cf[0], i);
              v48 = CFDictionaryCreate(v11, MEMORY[0x1E6971AE8], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!v48)
              {
                CMPhotoHEIFFileWriterAddCompressedMovie_cold_12(&values, dictionaryRepresentation);
                value_low = LODWORD(dictionaryRepresentation[0]);
                goto LABEL_61;
              }

              v49 = v48;
              CFArrayAppendValue(v46, v48);
              CFRelease(v49);
            }

            v50 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v50)
            {
              v5 = v172;
              value_low = v50(v30, v33, v162, v46);
              goto LABEL_62;
            }

            value_low = 4294954514;
LABEL_61:
            v5 = v172;
LABEL_62:
            CFRelease(v46);
          }

          else
          {
            CMPhotoHEIFFileWriterAddCompressedMovie_cold_13(dictionaryRepresentation);
            value_low = LODWORD(dictionaryRepresentation[0]);
          }
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (value_low)
        {
LABEL_152:
          Mutable = 0;
          goto LABEL_164;
        }
      }
    }

    v213.value = 0;
    ValueAtIndex = 0;
    v51 = FigTrackReaderGetFigBaseObject();
    v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v52)
    {
LABEL_71:
      value_low = 4294954514;
      goto LABEL_72;
    }

    v53 = v52(v51, v170, v11, &v213);
    if (v53)
    {
      value_low = v53;
    }

    else
    {
      value = v213.value;
      v55 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v55)
      {
        goto LABEL_71;
      }

      *cf = *MEMORY[0x1E6960CC0];
      *&v207 = *(MEMORY[0x1E6960CC0] + 16);
      v56 = v55(value, cf, &ValueAtIndex);
      if (v56 == -12521)
      {
        value_low = 0;
        goto LABEL_72;
      }

      value_low = v56;
      if (!v56)
      {
        v72 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
        if (v72)
        {
          v73 = v72;
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          *cf = 0u;
          v207 = 0u;
          v74 = ValueAtIndex;
          for (j = *(*(CMBaseObjectGetVTable() + 16) + 24); j; j = *(*(CMBaseObjectGetVTable() + 16) + 24))
          {
            v76 = j(v74, cf);
            if (v76)
            {
LABEL_115:
              value_low = v76;
              goto LABEL_117;
            }

            *&v203[16] = v208;
            v204 = v209;
            *v205 = v210;
            *&v205[16] = v211;
            *dictionaryRepresentation = *cf;
            *v203 = v207;
            v77 = CFDictionaryCreateMutable(v11, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v77)
            {
              v78 = v77;
              *&time.value = *dictionaryRepresentation;
              time.epoch = *v203;
              v79 = CMTimeCopyAsDictionary(&time, v11);
              if (v79)
              {
                v80 = v79;
                CFDictionaryAddValue(v78, key, v79);
                CFRelease(v80);
                time = *&v203[8];
                v81 = CMTimeCopyAsDictionary(&time, v11);
                if (v81)
                {
                  v82 = v81;
                  CFDictionaryAddValue(v78, v166, v81);
                  CFRelease(v82);
                  *&time.value = v204;
                  time.epoch = *v205;
                  v83 = CMTimeCopyAsDictionary(&time, v11);
                  if (v83)
                  {
                    v84 = v83;
                    CFDictionaryAddValue(v78, v165, v83);
                    CFRelease(v84);
                    time = *&v205[8];
                    v85 = CMTimeCopyAsDictionary(&time, v11);
                    if (v85)
                    {
                      v86 = v85;
                      CFDictionaryAddValue(v78, v164, v85);
                      CFRelease(v86);
                      CFArrayAppendValue(v73, v78);
                      CFRelease(v78);
                      goto LABEL_104;
                    }
                  }
                }
              }

              CMPhotoHEIFFileWriterAddCompressedMovie_cold_14();
            }

            else
            {
              CMPhotoHEIFFileWriterAddCompressedMovie_cold_15(&time);
            }

            value_low = LODWORD(time.value);
            if (LODWORD(time.value))
            {
              goto LABEL_117;
            }

            CFArrayAppendValue(v73, 0);
LABEL_104:
            v87 = ValueAtIndex;
            v88 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v88)
            {
              break;
            }

            v89 = v88(v87, 1);
            if (v89 == -12520)
            {
              v90 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (!v90)
              {
                break;
              }

              v76 = v90(v30, v33, v160, v73);
              goto LABEL_115;
            }

            value_low = v89;
            if (v89)
            {
              goto LABEL_117;
            }

            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            *cf = 0u;
            v207 = 0u;
            v74 = ValueAtIndex;
          }

          value_low = 4294954514;
LABEL_117:
          CFRelease(v73);
        }

        else
        {
          CMPhotoHEIFFileWriterAddCompressedMovie_cold_16(cf);
          value_low = LODWORD(cf[0]);
        }
      }
    }

LABEL_72:
    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
    }

    if (v213.value)
    {
      CFRelease(v213.value);
    }

    if (value_low)
    {
      goto LABEL_152;
    }

    CMTimeMake(cf, 1, 1);
    v57 = CMTimeCopyAsDictionary(cf, v11);
    if (!v57)
    {
      CMPhotoHEIFFileWriterAddCompressedMovie_cold_20(cf);
      value_low = LODWORD(cf[0]);
      Mutable = v174;
      goto LABEL_123;
    }

    v58 = v57;
    v59 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v59)
    {
      v60 = v59(v30, v33, v169, v58);
      if (v60)
      {
        value_low = v60;
      }

      else
      {
        SInt32 = FigCFNumberCreateSInt32();
        if (SInt32)
        {
          v62 = SInt32;
          v63 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v63)
          {
            v64 = v63(v30, v33, v168, v62);
            if (v64)
            {
              value_low = v64;
            }

            else
            {
              v65 = FigCFNumberCreateSInt32();
              if (v65)
              {
                v66 = v65;
                v67 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v67)
                {
                  v68 = v67(v30, v33, v163, v66);
                  if (v68)
                  {
                    value_low = v68;
                  }

                  else
                  {
                    *cf = *MEMORY[0x1E6960CC0];
                    *&v207 = *(MEMORY[0x1E6960CC0] + 16);
                    v69 = CMTimeCopyAsDictionary(cf, v11);
                    if (v69)
                    {
                      v70 = v69;
                      v71 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                      if (v71)
                      {
                        value_low = v71(v30, v33, v161, v70);
                      }

                      else
                      {
                        value_low = 4294954514;
                      }

                      CFRelease(v70);
                    }

                    else
                    {
                      CMPhotoHEIFFileWriterAddCompressedMovie_cold_17(cf);
                      value_low = LODWORD(cf[0]);
                    }
                  }
                }

                else
                {
                  value_low = 4294954514;
                }

                Mutable = v174;
                CFRelease(v66);
                goto LABEL_121;
              }

              CMPhotoHEIFFileWriterAddCompressedMovie_cold_18(cf);
              value_low = LODWORD(cf[0]);
            }
          }

          else
          {
            value_low = 4294954514;
          }

          Mutable = v174;
LABEL_121:
          CFRelease(v62);
          v5 = v172;
          goto LABEL_122;
        }

        CMPhotoHEIFFileWriterAddCompressedMovie_cold_19(cf);
        value_low = LODWORD(cf[0]);
      }

      v5 = v172;
    }

    else
    {
      value_low = 4294954514;
    }

    Mutable = v174;
LABEL_122:
    CFRelease(v58);
LABEL_123:
    ++v29;
    if (value_low)
    {
      goto LABEL_152;
    }
  }

  v97 = 0;
  v8 = v173;
  v98 = *(v173 + 2);
  v99 = *MEMORY[0x1E6971C30];
  v215.value = *MEMORY[0x1E6971AB8];
  *&v215.timescale = v99;
  v100 = *MEMORY[0x1E6971C28];
  v215.epoch = *MEMORY[0x1E6971A78];
  v216 = v100;
  v101 = *MEMORY[0x1E6971C50];
  v217 = *MEMORY[0x1E6971A98];
  v218 = v101;
  v102 = *MEMORY[0x1E6973850];
  v219 = *MEMORY[0x1E6971A88];
  v220 = v102;
  cf[0] = 0;
  while (1)
  {
    v103 = *(&v215.value + v97);
    v104 = FigFormatReaderGetFigBaseObject();
    v105 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v105)
    {
      v105(v104, v103, v11, cf);
    }

    v106 = cf[0];
    if (!cf[0])
    {
      goto LABEL_161;
    }

    v107 = *(&v215.timescale + v97);
    v108 = FigFormatWriterGetFigBaseObject();
    v109 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v109)
    {
      value_low = 4294954514;
      goto LABEL_166;
    }

    v110 = v109(v108, v107, v106);
    if (v110)
    {
      break;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
      cf[0] = 0;
    }

LABEL_161:
    v97 += 16;
    if (v97 == 64)
    {
      value_low = 0;
      goto LABEL_166;
    }
  }

  value_low = v110;
LABEL_166:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (value_low)
  {
    goto LABEL_247;
  }

  cf[0] = 0;
  v111 = FigFormatReaderGetFigBaseObject();
  v112 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v112)
  {
    goto LABEL_212;
  }

  v112(v111, *MEMORY[0x1E6971AC0], v11, cf);
  v113 = cf[0];
  if (!cf[0])
  {
    goto LABEL_212;
  }

  v114 = FigCFDictionaryGetCount();
  if (!v114)
  {
    v128 = 0;
    value_low = 0;
    v117 = 0;
LABEL_194:
    v116 = 0;
    goto LABEL_201;
  }

  v115 = v114;
  v116 = CFDictionaryCreateMutable(v11, v114, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v116)
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_8(dictionaryRepresentation);
    v128 = 0;
    v117 = 0;
LABEL_274:
    v114 = 0;
    value_low = LODWORD(dictionaryRepresentation[0]);
    goto LABEL_201;
  }

  v117 = malloc_type_calloc(v115, 8uLL, 0x6004044C4A2DFuLL);
  if (!v117)
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_7(dictionaryRepresentation);
LABEL_273:
    v128 = 0;
    goto LABEL_274;
  }

  v118 = malloc_type_calloc(v115, 8uLL, 0x6004044C4A2DFuLL);
  if (!v118)
  {
    CMPhotoHEIFFileWriterAddCompressedMovie_cold_6(dictionaryRepresentation);
    goto LABEL_273;
  }

  v119 = v118;
  CFDictionaryGetKeysAndValues(v113, v117, v118);
  if (v115 < 1)
  {
    v114 = v119;
    value_low = 0;
    v128 = v116;
    goto LABEL_194;
  }

  v120 = 0;
  v195 = v117;
  v197 = v116;
  v193 = v119;
  while (1)
  {
    v121 = v117[v120];
    if (!v119[v120])
    {
      v124 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      if (!v124)
      {
LABEL_267:
        CMPhotoHEIFFileWriterAddCompressedMovie_cold_5(dictionaryRepresentation);
        v128 = 0;
        v114 = v119;
        value_low = LODWORD(dictionaryRepresentation[0]);
        v5 = v172;
        v8 = v173;
        goto LABEL_201;
      }

      goto LABEL_189;
    }

    v122 = CFArrayGetCount(v119[v120]);
    if (v122)
    {
      CMPhotoHEIFFileWriterAddCompressedMovie_cold_3(dictionaryRepresentation);
      v128 = 0;
      v114 = v119;
      value_low = LODWORD(dictionaryRepresentation[0]);
      goto LABEL_191;
    }

    v123 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    if (!v123)
    {
      goto LABEL_267;
    }

    v124 = v123;
    if (v122 >= 1)
    {
      break;
    }

LABEL_189:
    CFDictionaryAddValue(v116, v121, v124);
    CFRelease(v124);
    if (++v120 == v115)
    {
      v114 = v119;
      value_low = 0;
      v128 = v116;
      v116 = 0;
LABEL_191:
      v5 = v172;
      v8 = v173;
      goto LABEL_201;
    }
  }

  v125 = 0;
  while (1)
  {
    LODWORD(time.value) = 0;
    LODWORD(v213.value) = 0;
    FigCFArrayGetInt32AtIndex();
    v126 = v125 + 1;
    FigCFArrayGetInt32AtIndex();
    if (!_getDestinationTrackIDFromSourceTrackID(time.value, v98))
    {
      v117 = v195;
      v116 = v197;
      v129 = 2311;
      goto LABEL_199;
    }

    if (!_getDestinationTrackIDFromSourceTrackID(v213.value, v98))
    {
      break;
    }

    appended = FigCFArrayAppendInt32();
    if (appended || (appended = FigCFArrayAppendInt32(), appended))
    {
      value_low = appended;
      v5 = v172;
      v8 = v173;
      v117 = v195;
      v116 = v197;
      goto LABEL_200;
    }

    v125 += 2;
    if (v126 + 1 >= v122)
    {
      v117 = v195;
      v116 = v197;
      v119 = v193;
      goto LABEL_189;
    }
  }

  v129 = 2314;
  v117 = v195;
  v116 = v197;
LABEL_199:
  CMPhotoHEIFFileWriterAddCompressedMovie_cold_4(v129, dictionaryRepresentation);
  value_low = LODWORD(dictionaryRepresentation[0]);
  v5 = v172;
  v8 = v173;
LABEL_200:
  CFRelease(v124);
  v128 = 0;
  v114 = v193;
LABEL_201:
  free(v114);
  free(v117);
  if (v116)
  {
    CFRelease(v116);
  }

  if (!value_low)
  {
    v130 = FigFormatWriterGetFigBaseObject();
    v131 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v131)
    {
      value_low = v131(v130, *MEMORY[0x1E6971C70], v128);
    }

    else
    {
      value_low = 4294954514;
    }
  }

  if (v128)
  {
    CFRelease(v128);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (!value_low)
  {
LABEL_212:
    cf[0] = 0;
    v132 = FigFormatReaderGetFigBaseObject();
    v133 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v133)
    {
      goto LABEL_228;
    }

    v133(v132, *MEMORY[0x1E6971A60], v11, cf);
    if (!cf[0])
    {
      goto LABEL_228;
    }

    v134 = CFArrayGetCount(cf[0]);
    if (v134 < 1)
    {
      value_low = 0;
    }

    else
    {
      v135 = v134;
      v136 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      if (v136)
      {
        v137 = v136;
        v138 = 0;
        v139 = MEMORY[0x1E6971AE8];
        v140 = MEMORY[0x1E695E9D8];
        v141 = MEMORY[0x1E695E9E8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf[0], v138);
          v142 = CFDictionaryCreate(v11, v139, &ValueAtIndex, 1, v140, v141);
          if (!v142)
          {
            CMPhotoHEIFFileWriterAddCompressedMovie_cold_9(&ValueAtIndex, dictionaryRepresentation);
            value_low = LODWORD(dictionaryRepresentation[0]);
            goto LABEL_223;
          }

          v143 = v142;
          CFArrayAppendValue(v137, v142);
          CFRelease(v143);
          ++v138;
        }

        while (v135 != v138);
        v144 = FigFormatWriterGetFigBaseObject();
        v145 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v145)
        {
          v8 = v173;
          value_low = v145(v144, *MEMORY[0x1E6971BF8], v137);
          goto LABEL_224;
        }

        value_low = 4294954514;
LABEL_223:
        v8 = v173;
LABEL_224:
        CFRelease(v137);
      }

      else
      {
        CMPhotoHEIFFileWriterAddCompressedMovie_cold_10(dictionaryRepresentation);
        value_low = LODWORD(dictionaryRepresentation[0]);
        v8 = v173;
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!value_low)
    {
LABEL_228:
      CMNotificationCenterGetDefaultLocalCenter();
      IsFinal = CMNotificationCenterAddListener();
      if (!IsFinal)
      {
        v146 = dispatch_group_create();
        *(v8 + 3) = v146;
        if (v146)
        {
          v147 = *(v5 + 24);
          if (v147)
          {
            v147 = CFRetain(v147);
          }

          v148 = 0;
          *(v8 + 1) = v147;
          v149 = *MEMORY[0x1E6971BF0];
          v150 = MEMORY[0x1E6960C70];
          while (1)
          {
            v151 = *(v173 + 2);
            if (v151)
            {
              v151 = CFArrayGetCount(v151);
            }

            if (v148 >= v151)
            {
              break;
            }

            v152 = CFArrayGetValueAtIndex(*(v173 + 2), v148);
            dispatch_group_enter(*(v173 + 3));
            *(v152 + 104) = 1;
            v215 = *v150;
            dictionaryRepresentation[0] = 0;
            v153 = FigFormatWriterGetFigBaseObject();
            v154 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v154)
            {
              value_low = 4294954514;
              goto LABEL_245;
            }

            value_low = v154(v153, v149, v11, dictionaryRepresentation);
            v155 = dictionaryRepresentation[0];
            if (!value_low)
            {
              CMTimeMakeFromDictionary(&v215, dictionaryRepresentation[0]);
              v155 = dictionaryRepresentation[0];
            }

            if (v155)
            {
              CFRelease(v155);
            }

            if (value_low)
            {
              goto LABEL_245;
            }

            cf[0] = 0;
            cf[1] = 0;
            *&v207 = 0;
            CMTimeMake(dictionaryRepresentation, 1, 2);
            time = v215;
            CMTimeAdd(cf, &time, dictionaryRepresentation);
            CMTimeMake(&time, 1, 1);
            *&v213.value = *cf;
            v213.epoch = v207;
            CMTimeAdd(dictionaryRepresentation, &v213, &time);
            *(v152 + 5) = *dictionaryRepresentation;
            *(v152 + 12) = *v203;
            v156 = *(v152 + 7);
            *dictionaryRepresentation = *cf;
            *v203 = v207;
            v157 = CMBufferQueueInstallTrigger(v156, _lowWaterLevelTriggerFunction, v152, 1, dictionaryRepresentation, v152 + 8);
            ++v148;
            if (v157)
            {
              value_low = v157;
LABEL_245:
              v8 = v173;
              goto LABEL_246;
            }
          }

          v8 = v173;
          dispatch_group_wait(*(v173 + 3), 0xFFFFFFFFFFFFFFFFLL);
          value_low = *v173;
          if (!value_low)
          {
            v158 = *(v5 + 24);
            v159 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v159)
            {
              value_low = v159(v158, 0);
              if (!value_low)
              {
                *(v5 + 34) = 1;
              }
            }

            else
            {
              value_low = 4294954514;
            }
          }
        }

        else
        {
          CMPhotoHEIFFileWriterAddCompressedMovie_cold_11(&v215);
          value_low = LODWORD(v215.value);
        }

LABEL_246:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        goto LABEL_247;
      }

LABEL_258:
      value_low = IsFinal;
    }
  }

LABEL_247:
  Mutable = 0;
LABEL_140:
  _trackRelease(Mutable);
  v91 = *(v8 + 1);
  if (v91)
  {
    CFRelease(v91);
  }

  v92 = *(v8 + 2);
  if (v92)
  {
    if (CFArrayGetCount(*(v8 + 2)) >= 1)
    {
      v93 = 0;
      do
      {
        v94 = CFArrayGetValueAtIndex(v92, v93);
        _trackRelease(v94);
        ++v93;
      }

      while (v93 < CFArrayGetCount(v92));
    }

    CFRelease(v92);
  }

  v95 = *(v8 + 3);
  if (v95)
  {
    dispatch_release(v95);
  }

  free(v8);
LABEL_150:
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t _formatWriterNotificationErrorCallback(uint64_t a1, uint64_t a2)
{
  result = FigCFDictionaryGetInt32IfPresent();
  if (result)
  {
    if (!*a2)
    {
      *a2 = 0;
      result = CFArrayGetCount(*(a2 + 16));
      if (result >= 1)
      {
        for (i = 0; i < result; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), i);
          dispatch_async_f(ValueAtIndex[9], ValueAtIndex, _readWriteSamplesUntilSampleBufferQueueIsFull);
          result = CFArrayGetCount(*(a2 + 16));
        }
      }
    }
  }

  return result;
}

void _trackRelease(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 4);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 5);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 6);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 7);
    if (v6)
    {
      CMBufferQueueRemoveTrigger(v6, *(a1 + 8));
      v7 = *(a1 + 7);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = *(a1 + 9);
    if (v8)
    {
      dispatch_release(v8);
    }

    free(a1);
  }
}

void _addValueToArray(uint64_t a1, __CFArray *a2)
{
  UInt32 = FigCFNumberCreateUInt32();
  if (UInt32)
  {
    v4 = UInt32;
    CFArrayAppendValue(a2, UInt32);

    CFRelease(v4);
  }
}

void _addNumberToArray(void *value, CFMutableArrayRef theArray)
{
  if (theArray)
  {
    CFArrayAppendValue(theArray, value);
  }
}

uint64_t _getDestinationTrackIDFromSourceTrackID(int a1, CFArrayRef theArray)
{
  v4 = 0;
  while (1)
  {
    v5 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v4 >= v5)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4++);
    if (ValueAtIndex[3] == a1)
    {
      return ValueAtIndex[4];
    }
  }

  return 0;
}

void _readWriteSamplesUntilSampleBufferQueueIsFull(uint64_t *a1)
{
  v2 = *a1;
  if (**a1)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v7 = MEMORY[0x1E6960C70];
    do
    {
      v8 = CMBufferQueueContainsEndOfData(a1[7]);
      v4 = v8 == 0;
      if (v8)
      {
        break;
      }

      memset(&v26, 0, sizeof(v26));
      CMBufferQueueGetDuration(&v26, a1[7]);
      time1 = *(a1 + 10);
      time2 = v26;
      v9 = CMTimeCompare(&time1, &time2);
      v10 = v9 > 0;
      if (v9 < 1)
      {
        goto LABEL_39;
      }

      time1 = *v7;
      time2.value = 0;
      v27 = 0;
      v11 = a1[6];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v12 || v12(v11, &time1))
      {
        goto LABEL_31;
      }

      if (*(a1 + 2) == 1936684398)
      {
        v13 = time1.timescale / time1.value <= 1 ? 1 : time1.timescale / time1.value;
      }

      else
      {
        v13 = 1;
      }

      v14 = a1[5];
      v15 = a1[6];
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v16)
      {
        goto LABEL_31;
      }

      if (v16(v14, v15, v13, v13, 1, 0, 2, 0, 0, 0, 0, &time2))
      {
        goto LABEL_31;
      }

      v17 = *(*a1 + 8);
      v18 = *(a1 + 4);
      value = time2.value;
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v20 || v20(v17, v18, value))
      {
        goto LABEL_31;
      }

      NumSamples = CMSampleBufferGetNumSamples(time2.value);
      if (time2.value)
      {
        CFRelease(time2.value);
        time2.value = 0;
      }

      v22 = a1[6];
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v23 || v23(v22, NumSamples, &v27))
      {
LABEL_31:
        v24 = 0;
      }

      else
      {
        v3 = v27 != NumSamples;
        v24 = 1;
      }

      if (time2.value)
      {
        CFRelease(time2.value);
      }

      if (!v24 || v3 && CMBufferQueueMarkEndOfData(a1[7]))
      {
LABEL_39:
        v4 = v10;
        break;
      }
    }

    while (!*v2);
  }

  v5 = v3 || v4;
  if (*(a1 + 104))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    dispatch_group_leave(*(v2 + 24));
    *(a1 + 104) = 0;
  }
}

const void *OUTLINED_FUNCTION_35_2()
{
  v3 = *(v0 + 40);

  return CFArrayGetValueAtIndex(v3, v1);
}

BOOL CMPhotoRectMakeWithDictionaryRepresentation(const __CFDictionary *a1, uint64x2_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  memset(&v5, 0, sizeof(v5));
  result = CGRectMakeWithDictionaryRepresentation(a1, &v5);
  if (result)
  {
    v4 = vcvtq_u64_f64(vrndaq_f64(v5.size));
    *a2 = vcvtq_u64_f64(vrndaq_f64(v5.origin));
    a2[1] = v4;
    return 1;
  }

  return result;
}

BOOL CMPhotoSizeMakeWithDictionaryRepresentation(const __CFDictionary *a1, uint64x2_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0uLL;
  result = CGSizeMakeWithDictionaryRepresentation(a1, &v4);
  if (result)
  {
    *a2 = vcvtq_u64_f64(vrndaq_f64(v4));
    return 1;
  }

  return result;
}

uint64_t Slim_GetPixelBufferInfoFromVersion(unsigned int a1, int *a2, _DWORD *a3, int *a4, char *a5, int *a6)
{
  if (a1 - 100 <= 0xFFFFFF9C)
  {
    Slim_GetPixelBufferInfoFromVersion_cold_2(&v26);
    return v26;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 2037741171;
    switch(a1)
    {
      case 1:
        goto LABEL_118;
      case 2:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v15 = 875704422;
        goto LABEL_46;
      case 3:
        v11 = 0;
        v13 = 0;
        v19 = 1650942776;
        goto LABEL_63;
      case 4:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 875704422;
        goto LABEL_118;
      case 5:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v15 = 875836518;
LABEL_46:
        v14 = v15 | 0x10u;
        goto LABEL_118;
      case 6:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 875836518;
        goto LABEL_118;
      case 7:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 2037741158;
        goto LABEL_118;
      case 8:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1278226742;
        goto LABEL_118;
      case 9:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 825437747;
        goto LABEL_118;
      case 10:
        v11 = 0;
        v13 = 0;
        v19 = 1919378232;
LABEL_63:
        v14 = (v19 + 1020);
        goto LABEL_106;
      case 11:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 2016686640;
        goto LABEL_118;
      case 12:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v20 = 2016686640;
        goto LABEL_86;
      case 13:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1882468912;
        goto LABEL_118;
      case 14:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v20 = 1882468912;
LABEL_86:
        v14 = (v20 + 3276800);
        goto LABEL_118;
      case 15:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1278226488;
        goto LABEL_118;
      case 16:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1278226736;
        goto LABEL_118;
      case 17:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1278226536;
        goto LABEL_118;
      case 18:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1278226534;
        goto LABEL_118;
      case 19:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1815162994;
        goto LABEL_118;
      case 20:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1815491698;
        goto LABEL_118;
      case 21:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1647589490;
        goto LABEL_118;
      case 22:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1278226738;
        goto LABEL_118;
      case 23:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v21 = 1952854576;
        goto LABEL_79;
      case 24:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1952854576;
        goto LABEL_118;
      case 25:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v21 = 1936077360;
LABEL_79:
        v14 = v21 | 0x100000u;
        goto LABEL_118;
      case 26:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1936077360;
        goto LABEL_118;
      case 27:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_81;
      case 28:
        v12 = 0;
        v13 = 0;
        v11 = 1;
        goto LABEL_81;
      case 29:
        v12 = 0;
        v13 = 0;
        v11 = 2;
        goto LABEL_81;
      case 30:
        v12 = 0;
        v13 = 0;
        v11 = 3;
        goto LABEL_81;
      case 31:
        v12 = 0;
        v13 = 1;
        v11 = 4;
        goto LABEL_81;
      case 32:
        v12 = 0;
        v13 = 0;
        v11 = 5;
        goto LABEL_81;
      case 33:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_117;
      case 34:
        v12 = 0;
        v13 = 0;
        v11 = 1;
        goto LABEL_117;
      case 35:
        v12 = 0;
        v13 = 0;
        v11 = 2;
        goto LABEL_117;
      case 36:
        v12 = 0;
        v13 = 0;
        v11 = 3;
        goto LABEL_117;
      case 37:
        v12 = 0;
        v13 = 1;
        v11 = 4;
        goto LABEL_117;
      case 38:
        v12 = 0;
        v13 = 0;
        v11 = 5;
        goto LABEL_117;
      case 39:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1651926376;
        goto LABEL_118;
      case 40:
        v12 = 0;
        v13 = 0;
        v14 = 1651926376;
        goto LABEL_28;
      case 41:
        v12 = 0;
        v13 = 0;
        v14 = 1651926376;
        goto LABEL_51;
      case 42:
        v12 = 0;
        v13 = 0;
        v14 = 1651926376;
        goto LABEL_110;
      case 43:
        v12 = 0;
        v14 = 1651926376;
        goto LABEL_100;
      case 44:
        v12 = 0;
        v13 = 0;
        v14 = 1651926376;
        goto LABEL_25;
      case 45:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1650942776;
        goto LABEL_118;
      case 46:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1735549752;
        goto LABEL_118;
      case 47:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1919378232;
        goto LABEL_118;
      case 48:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1734501176;
        goto LABEL_118;
      case 49:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1652056888;
        goto LABEL_118;
      case 50:
        v12 = 0;
        v13 = 0;
        v14 = 1652056888;
LABEL_28:
        v11 = 1;
        goto LABEL_118;
      case 51:
        v12 = 0;
        v13 = 0;
        v14 = 1652056888;
LABEL_51:
        v11 = 2;
        goto LABEL_118;
      case 52:
        v12 = 0;
        v13 = 0;
        v14 = 1652056888;
LABEL_110:
        v11 = 3;
        goto LABEL_118;
      case 53:
        v12 = 0;
        v14 = 1652056888;
LABEL_100:
        v13 = 1;
        v11 = 4;
        goto LABEL_118;
      case 54:
        v12 = 0;
        v13 = 0;
        v14 = 1652056888;
LABEL_25:
        v11 = 5;
        goto LABEL_118;
      case 59:
        v12 = 0;
        v13 = 0;
        v11 = 6;
        goto LABEL_89;
      case 60:
        v12 = 0;
        v13 = 0;
        v11 = 7;
LABEL_89:
        v14 = 1647719528;
        goto LABEL_118;
      case 61:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 825306677;
        goto LABEL_118;
      case 62:
        v11 = 0;
        v12 = 0;
        v13 = 1;
        goto LABEL_112;
      case 63:
        v12 = 0;
        v11 = 1;
        v14 = 1651519798;
        v13 = 1;
        goto LABEL_118;
      case 64:
        v12 = 0;
        v13 = 1;
        goto LABEL_41;
      case 65:
        v12 = 0;
        v13 = 1;
        goto LABEL_104;
      case 66:
        v12 = 0;
        v13 = 1;
        v11 = 4;
        goto LABEL_112;
      case 67:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_112;
      case 68:
        v12 = 0;
        v13 = 0;
        v11 = 1;
        goto LABEL_112;
      case 69:
        v12 = 0;
        v13 = 0;
LABEL_41:
        v11 = 2;
        goto LABEL_112;
      case 70:
        v12 = 0;
        v13 = 0;
LABEL_104:
        v11 = 3;
        goto LABEL_112;
      case 71:
        v12 = 0;
        v13 = 0;
        v11 = 5;
        goto LABEL_112;
      case 72:
        v11 = 0;
        v13 = 0;
        v12 = 1;
        v14 = 1735549492;
        goto LABEL_118;
      case 73:
        v11 = 0;
        v13 = 0;
        v14 = 1734505012;
LABEL_106:
        v12 = 1;
        goto LABEL_118;
      case 74:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1751527984;
        goto LABEL_118;
      case 75:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1380411457;
        goto LABEL_118;
      case 76:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 875704934;
        goto LABEL_118;
      case 77:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 875704950;
        goto LABEL_118;
      case 78:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1751410032;
        goto LABEL_118;
      case 79:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v22 = 1751410032;
        goto LABEL_115;
      case 80:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1717855600;
        goto LABEL_118;
      case 81:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v22 = 1717855600;
LABEL_115:
        v14 = (v22 + 1027);
        goto LABEL_118;
      case 82:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1111970369;
        goto LABEL_118;
      case 83:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 2019963442;
        goto LABEL_118;
      case 84:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v17 = 2016686640;
        goto LABEL_108;
      case 85:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v16 = 2019963442;
        goto LABEL_84;
      case 86:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v18 = 2016686640;
        goto LABEL_30;
      case 87:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v17 = 1952854576;
        goto LABEL_108;
      case 88:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1953903154;
        goto LABEL_118;
      case 89:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v18 = 1952854576;
        goto LABEL_30;
      case 90:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v16 = 1953903154;
        goto LABEL_84;
      case 91:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v17 = 1936077360;
LABEL_108:
        v14 = v17 | 2u;
        goto LABEL_118;
      case 92:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 1937125938;
        goto LABEL_118;
      case 93:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v18 = 1936077360;
LABEL_30:
        v14 = (v18 + 516);
        goto LABEL_118;
      case 94:
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v16 = 1937125938;
LABEL_84:
        v14 = (v16 + 514);
        goto LABEL_118;
      case 95:
        v12 = 0;
        v13 = 0;
        v11 = 8;
LABEL_81:
        v14 = 1651925816;
        goto LABEL_118;
      case 96:
        v12 = 0;
        v13 = 0;
        v11 = 8;
LABEL_117:
        v14 = 1651847472;
        goto LABEL_118;
      case 97:
        v12 = 0;
        v13 = 0;
        v14 = 1651926376;
        goto LABEL_10;
      case 98:
        v12 = 0;
        v13 = 0;
        v14 = 1652056888;
LABEL_10:
        v11 = 8;
        goto LABEL_118;
      case 99:
        v12 = 0;
        v13 = 0;
        v11 = 8;
LABEL_112:
        v14 = 1651519798;
LABEL_118:
        v23 = HIWORD(a1) & 0xF;
        if ((a1 & 0x100000) == 0)
        {
          goto LABEL_121;
        }

        if (v23 == 5)
        {
          LODWORD(v14) = CMPhotoGetAGXCompressedPixelFormatFromPixelFormat(v14);
LABEL_121:
          if (a2)
          {
            *a2 = v23;
          }

          if (a3)
          {
            *a3 = v14;
          }

          if (a6)
          {
            *a6 = v13;
          }

          if (a4)
          {
            *a4 = v11;
          }

          result = 0;
          if (a5)
          {
            *a5 = v12;
          }
        }

        else
        {
          Slim_GetPixelBufferInfoFromVersion_cold_1(&v25);
          result = v25;
        }

        break;
      default:

        return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t Slim_GetEquivalentBlockSizeVersion(unsigned int a1)
{
  v1 = (a1 - 62);
  if (v1 >= 5)
  {
    v2 = a1;
  }

  else
  {
    v2 = v1 + 67;
  }

  return v2 | a1 & 0xF0000;
}

void *link_AggregateDictionary()
{
  result = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 4);
  if (result)
  {
    v1 = result;
    _ADClientAddValueForScalarKey = dlsym(result, "ADClientAddValueForScalarKey");
    result = dlsym(v1, "ADClientPushValueForDistributionKey");
    _ADClientPushValueForDistributionKey = result;
  }

  return result;
}

uint64_t CMPhotoDecompressionContainerGetLoopCount(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(*(a1 + 32) + 488);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294950302;
  }
}

uint64_t CMPhotoDecompressionContainerCopyStereoMetadataForIndex()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t CMPhotoDecompressionContainerDecodeImageForIndexAsync(uint64_t a1, int a2, CFDictionaryRef theDict, int a4, int a5, void *aBlock)
{
  if (theDict && CFDictionaryContainsKey(theDict, @"DryRun"))
  {
    CMPhotoDecompressionContainerDecodeImageForIndexAsync_cold_1(&v10);
    v8 = v10;
    if (!aBlock)
    {
      return v8;
    }
  }

  else
  {
    aBlock = _Block_copy(aBlock);
    v8 = CMPhotoDecompressionContainerDecodeImageForIndexAsyncF(a1);
    if (!aBlock)
    {
      return v8;
    }
  }

  if (v8)
  {
    _Block_release(aBlock);
  }

  return v8;
}

void _callback_CompletionHandlerWrapper_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void, void, void, void))
{
  a6[2](a6, a1, a2, a3, a4, a5);

  _Block_release(a6);
}

uint64_t CMPhotoDecompressionContainerDecodeThumbnailForIndexAsync(uint64_t a1, int a2, int a3, CFDictionaryRef theDict, int a5, int a6, void *aBlock)
{
  if (theDict && CFDictionaryContainsKey(theDict, @"DryRun"))
  {
    CMPhotoDecompressionContainerDecodeThumbnailForIndexAsync_cold_1(&v11);
    v9 = v11;
    if (!aBlock)
    {
      return v9;
    }
  }

  else
  {
    aBlock = _Block_copy(aBlock);
    v9 = CMPhotoDecompressionContainerDecodeThumbnailForIndexAsyncF(a1);
    if (!aBlock)
    {
      return v9;
    }
  }

  if (v9)
  {
    _Block_release(aBlock);
  }

  return v9;
}

uint64_t CMPhotoDecompressionContainerDecodeAuxiliaryImageForIndexAsync(uint64_t a1, int a2, int a3, CFDictionaryRef theDict, int a5, int a6, void *aBlock)
{
  if (theDict && CFDictionaryContainsKey(theDict, @"DryRun"))
  {
    CMPhotoDecompressionContainerDecodeAuxiliaryImageForIndexAsync_cold_1(&v12);
    v10 = v12;
    if (!aBlock)
    {
      return v10;
    }
  }

  else
  {
    aBlock = _Block_copy(aBlock);
    CMPhotoDecompressionContainerDecodeAuxiliaryImageForIndexAsyncF(a1);
    v10 = v9;
    if (!aBlock)
    {
      return v10;
    }
  }

  if (v10)
  {
    _Block_release(aBlock);
  }

  return v10;
}

uint64_t CMPhotoDecompressionContainerInitColorController(void *a1, const __CFDictionary *a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  v11 = 0;
  value = 0;
  if (!CMPhotoCFDictionaryGetLongIfPresent())
  {
    if (CFDictionaryGetValueIfPresent(a2, @"ColorConverterCGColorSpace", &value))
    {
      if (value == *MEMORY[0x1E695E738])
      {
        a3 = 0;
        a4 = 0;
      }

      else
      {
        if (!value || (v8 = CFGetTypeID(value), v8 != CGColorSpaceGetTypeID()))
        {
          CMPhotoDecompressionContainerInitColorController_cold_2(&v13);
          return v13;
        }

        a4 = 0;
        a3 = value;
      }
    }

LABEL_11:
    result = 0;
    *a1 = a3;
    a1[1] = a4;
    a1[2] = 0;
    a1[3] = 0;
    return result;
  }

  v10 = 0;
  CMPhotoCFDictionaryGetIntIfPresent();
  CMPhotoDecompressionContainerInitColorController_cold_1(&v10, &v13);
  return v13;
}

uint64_t CMPhotoShouldDecodeAlphaAutomatically(CFDictionaryRef theDict, int a2, int *a3)
{
  PixelFormatType = 1111970369;
  if (!theDict)
  {
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(theDict, @"UseProvidedPixelBuffer");
  if (!Value)
  {
    IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
    PixelFormatType = 1111970369;
    v8 = 1111970369;
    if (IntIfPresent)
    {
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(Value);
  v8 = PixelFormatType;
LABEL_6:
  *a3 = v8;
  v10 = 1;
  if (PixelFormatType != 1111970369 && PixelFormatType != 1380411457 && PixelFormatType != 1815491698)
  {
    if (a2 != 6)
    {
      return 0;
    }

    if (PixelFormatType > 1279340599)
    {
      if (PixelFormatType == 1279340600)
      {
        return v10;
      }

      v11 = 1279340854;
    }

    else
    {
      if (PixelFormatType == 843264056)
      {
        return v10;
      }

      v11 = 843264310;
    }

    if (PixelFormatType != v11)
    {
      return 0;
    }
  }

  return v10;
}

const __CFDictionary *CMPhotoDecompressionContainerCheckForbiddenAuxOptions(const __CFDictionary *theDict, int a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    v2 = theDict;
    v3 = 0;
    v6[0] = @"BackCGImageWithIOSurface";
    v6[1] = @"UseProvidedPixelBuffer";
    v6[2] = @"DryRun";
    v6[3] = @"TiledDownsampling";
    if (a2)
    {
      v4 = 4;
    }

    else
    {
      v4 = 3;
    }

    while (!CFDictionaryContainsKey(v2, v6[v3]))
    {
      if (v4 == ++v3)
      {
        return 0;
      }
    }

    CMPhotoDecompressionContainerCheckForbiddenAuxOptions_cold_1(&v5);
    return v5;
  }

  return theDict;
}

uint64_t _indexMapComparator()
{
  Value = FigCFDictionaryGetValue();
  v1 = FigCFDictionaryGetValue();
  if (Value < v1)
  {
    return -1;
  }

  else
  {
    return Value > v1;
  }
}

uint64_t jpegService()
{
  result = _jpegService;
  if (!_jpegService)
  {
    pthread_once(&jpegService_once, _initializeService);
    return _jpegService;
  }

  return result;
}

uint64_t JPEGDeviceInterface_decodeJPEG(mach_port_t connection, void *inputStruct, void *outputStruct)
{
  outputStructCnt = 88;
  v6 = MEMORY[0x1E695FF58];
  v7 = connection;
  if (connection || (v7 = _openService()) != 0)
  {
    if (*v6 == 1)
    {
      kdebug_trace();
    }

    v8 = IOConnectCallStructMethod(v7, 1u, inputStruct, 0x58uLL, outputStruct, &outputStructCnt);
  }

  else
  {
    v8 = 3758097101;
  }

  if (!*(inputStruct + 6) && *v6 == 1)
  {
    kdebug_trace();
  }

  if (!connection && v7)
  {
    _closeService(v7);
  }

  return v8;
}

uint64_t JPEGDeviceInterface_encodeJPEG()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  outputStructCnt = 88;
  v10 = v7[21] && (pthread_once(&JPEGDeviceInterface_supportsRSTLogging_once, _checkSupportsRSTLogging), _supportsRSTLogging) && (v8[6] * v8[5]) > 0x2DC6C0;
  if (v6)
  {
    v11 = v4 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = v9;
  if (!v9)
  {
    v13 = _openService();
    if (!v13)
    {
      return 3758097101;
    }
  }

  if ((v12 | v10))
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v62, 0, sizeof(v62));
    v14 = *(v8 + 3);
    v58 = *(v8 + 2);
    v59 = v14;
    v60 = *(v8 + 4);
    v15 = *(v8 + 10);
    v63 = 0;
    v61 = v15;
    v16 = *(v8 + 1);
    v57[0] = *v8;
    v57[1] = v16;
    if (v12)
    {
      v17 = v6[1];
      *(v62 + 4) = *v6;
      *(&v62[1] + 4) = v17;
      v18 = v6[3];
      *(&v62[2] + 4) = v6[2];
      *(&v62[3] + 4) = v18;
      v19 = v4[1];
      *(&v62[4] + 4) = *v4;
      *(&v62[5] + 4) = v19;
      v20 = v4[3];
      *(&v62[6] + 4) = v4[2];
      *(&v62[7] + 4) = v20;
      LODWORD(v58) = v58 | 8;
    }

    LODWORD(v62[0]) = v10;
    outputStructCnt = 4096;
    v21 = IOConnectCallStructMethod(v13, 4u, v57, 0x1000uLL, &v25, &outputStructCnt);
    v22 = v28;
    v2[2] = v27;
    v2[3] = v22;
    v2[4] = v29;
    *(v2 + 10) = v30;
    v23 = v26;
    *v2 = v25;
    v2[1] = v23;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v21 = IOConnectCallStructMethod(v13, 3u, v8, 0x58uLL, v2, &outputStructCnt);
    if (!v9)
    {
LABEL_19:
      _closeService(v13);
    }
  }

  return v21;
}

uint64_t _openService()
{
  if (_jpegSema)
  {
    FigSemaphoreWaitRelative();
  }

  else
  {
    pthread_mutex_lock(&_jpegLock);
  }

  v0 = _openDriverConnection();
  if (!v0)
  {
    if (_jpegSema)
    {
      FigSemaphoreSignal();
    }

    else
    {
      pthread_mutex_unlock(&_jpegLock);
    }
  }

  return v0;
}

uint64_t _closeService(io_connect_t a1)
{
  if (a1)
  {
    IOServiceClose(a1);
    v1 = vars8;
  }

  if (_jpegSema)
  {

    return FigSemaphoreSignal();
  }

  else
  {

    return pthread_mutex_unlock(&_jpegLock);
  }
}

const __CFBoolean *_checkSupportsMissingEOI()
{
  result = _checkUInt32DriverProperty(@"AppleJPEGSupportsMissingEOI", _supportsMissingEOI);
  _supportsMissingEOI = result;
  return result;
}

const __CFBoolean *_checkSupports12BitsFormat()
{
  result = _checkUInt32DriverProperty(@"AppleJPEGSupports12BitsFormat", _supports12BitsFormat);
  _supports12BitsFormat = result;
  return result;
}

void VTDecompressionPluginClass_dispose(uint64_t a1)
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
        if (v2[24] && VTDecompressionSessionWaitForAsynchronousFrames(v5))
        {
          VTDecompressionSessionInvalidate(*(v2 + 1));
          *v2 = 1;
        }

        if (!*(a1 + 80) && ((v6 = *(a1 + 72), v6 == 1635135537) || v6 == 1902212657))
        {
          VTDecompressionSessionInvalidate(*(v2 + 1));
        }

        else
        {
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

uint64_t VTDecompressionPluginClass_decode(uint64_t a1, int a2, CMSampleBufferRef sampleBuffer, void *sourceFrameRefCon)
{
  v7 = *(a1 + 64);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (*(v7 + 25))
  {
    v8 = 0;
    goto LABEL_7;
  }

  if (!*(v7 + 24))
  {
    v10 = malloc_type_calloc(1uLL, 0x20uLL, 0xA0040A3F8AD00uLL);
    if (!v10)
    {
      *v7 = 1;
      return 4294950305;
    }

    v11 = v10;
    v12 = *(v7 + 8);
    if (v12)
    {
      v13 = CFRetain(v12);
      if (sampleBuffer)
      {
LABEL_13:
        v14 = CFRetain(sampleBuffer);
LABEL_16:
        *v11 = a1;
        v11[1] = v13;
        v11[2] = v14;
        v11[3] = sourceFrameRefCon;
        dispatch_async_f(*(v7 + 32), v11, _dispatch_decodeTileAsync);
        return 0;
      }
    }

    else
    {
      v13 = 0;
      if (sampleBuffer)
      {
        goto LABEL_13;
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  v8 = 1;
LABEL_7:
  result = VTDecompressionSessionDecodeFrame(*(v7 + 8), sampleBuffer, v8, sourceFrameRefCon, 0);
  if (result)
  {
    *v7 = 1;
    if ((result | 2) == 0x44E)
    {
      return 4294951826;
    }
  }

  return result;
}

uint64_t VTDecompressionPluginClass_setAttachment(uint64_t a1, const void *a2, const void *a3)
{
  if (!*(a1 + 80) && ((v4 = *(a1 + 72), v4 != 1635135537) ? (v5 = v4 == 1902212657) : (v5 = 1), v5))
  {
    return 0;
  }

  else
  {
    return CMPhotoCodecSessionPoolSetDecompressionSessionAttachment(*(a1 + 24), *(*(a1 + 64) + 8), a2, a3);
  }
}

uint64_t VTDecompressionPluginClass_copyAttachments(uint64_t a1, CFDictionaryRef *a2)
{
  if (!*(a1 + 80) && ((v3 = *(a1 + 72), v3 != 1635135537) ? (v4 = v3 == 1902212657) : (v4 = 1), v4))
  {
    return 0;
  }

  else
  {
    return CMPhotoCodecSessionPoolCopyDecompressionSessionAttachments(*(a1 + 24), *(*(a1 + 64) + 8), a2);
  }
}

uint64_t VTDecompressionPluginClass_VideoToolbox_callback(void *a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5)
{
  v10 = a1[8];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ((a4 & 2) != 0)
  {
    v11 = -17104;
  }

  else
  {
    v11 = a3;
  }

  if (v11)
  {
    *v10 = 1;
    if ((v11 | 2) == 0x44E)
    {
      v12 = 4294951826;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[6];
  v14 = a1[7];

  return v13(a1, v12, a5, v14, a2);
}

void _dispatch_decodeTileAsync(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(*a1 + 64);
  v4 = a1[2];
  v5 = a1[3];
  free(a1);
  v6 = VTDecompressionSessionDecodeFrame(v1, v4, 0, v5, 0);
  if (v6)
  {
    (*(v2 + 48))(v2, v6, 0, *(v2 + 56), v5);
    *v3 = 1;
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

void _dispatch_tileDecodeTileAsync(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[6];
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v8 = VTTileDecompressionSessionDecodeTile();
  if (*v7 == 1)
  {
    kdebug_trace();
  }

  if (v8)
  {
    (*(v3 + 48))(v3, v8, 0, *(v3 + 56), v6);
  }

  free(a1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t _getThumbnailCountForIndex_1(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*(a1 + 112))
  {
    Count = CFArrayGetCount(*(a1 + 88));
    result = 0;
    *a4 = Count;
  }

  else
  {
    _getThumbnailCountForIndex_cold_1(&v7);
    return v7;
  }

  return result;
}

void _releaseSequenceReader(void *a1)
{
  if (a1)
  {
    FigSimpleMutexDestroy();
    a1[4] = 0;
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
      a1[2] = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
      a1[1] = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      CFRelease(v4);
      a1[5] = 0;
    }

    v5 = a1[9];
    if (v5)
    {
      CFRelease(v5);
      a1[9] = 0;
    }

    v6 = a1[10];
    if (v6)
    {
      CFRelease(v6);
      a1[10] = 0;
    }

    v7 = a1[11];
    if (v7)
    {
      CFRelease(v7);
      a1[11] = 0;
    }

    v8 = a1[12];
    if (v8)
    {
      CFRelease(v8);
      a1[12] = 0;
    }

    v9 = a1[13];
    if (v9)
    {
      CFRelease(v9);
    }

    free(a1);
  }
}

CFNumberRef _getImageCountForSequence(uint64_t a1, void *a2)
{
  number = 0;
  if (!a2)
  {
    return 0;
  }

  v7 = 0;
  v3 = CFGetAllocator(*(a1 + 8));
  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, *MEMORY[0x1E6973B08], v3, &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &v7);
      result = number;
      *a2 = v7;
      if (!result)
      {
        return result;
      }

      CFRelease(result);
      return 0;
    }
  }

  return 4294950194;
}

uint64_t _copyFormatDescriptionForTrackReader(uint64_t a1, void *a2)
{
  theArray = 0;
  if (!a2)
  {
    return 0;
  }

  if (!a1)
  {
    _copyFormatDescriptionForTrackReader_cold_1(&v11);
    return v11;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(FigBaseObject, *MEMORY[0x1E6973A40], *MEMORY[0x1E695E480], &theArray);
  v6 = theArray;
  if (!v5)
  {
    Count = CFArrayGetCount(theArray);
    v6 = theArray;
    if (Count != 1)
    {
      v5 = 4294950194;
      if (!theArray)
      {
        return v5;
      }

      goto LABEL_10;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    v5 = 0;
    *a2 = ValueAtIndex;
    v6 = theArray;
  }

  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

  return v5;
}

uint64_t _checkForUnsupportedKeys(const __CFDictionary *a1, const void **a2)
{
  result = CFDictionaryContainsKey(a1, *a2);
  if (result)
  {
    _checkForUnsupportedKeys_cold_1(&v3);
    return v3;
  }

  return result;
}

void _appendAttributesToDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (theDict)
  {
    CFDictionarySetValue(theDict, key, value);
  }
}

void _decoder_plugin_callback_simple(int a1, int a2, CFTypeRef cf, _DWORD *a4, void *a5)
{
  *a4 = a2;
  if (!a2 && a5)
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *a5 = v6;
  }
}

uint64_t __CMPhotoDecompressionUtilityGetNativePixelFormatFromFormatDescription_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

uint64_t CMPhotoReleaseHardwareResources()
{
  CMPhotoSurfacePoolFlushCaches(0, 1);
  CMPhotoScaleAndRotateSessionDiscardCaches(0, v0);

  return CMPhotoCodecSessionPoolFlush(0, 3);
}

double calc_psnrhvs(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, int a13)
{
  v104 = a1;
  v105 = a3;
  v13 = 0;
  v130 = *MEMORY[0x1E69E9840];
  v14 = v127;
  v15 = vdupq_n_s64(0x3FD8DE6818051F1BuLL);
  v16 = a11;
  do
  {
    for (i = 0; i != 64; i += 16)
    {
      v18 = vmulq_f64(*(v16 + i), v15);
      *&v14[i] = vmulq_f64(v18, v18);
    }

    ++v13;
    v16 += 64;
    v14 += 64;
  }

  while (v13 != 8);
  v19 = ~(-1 << a5);
  if (a7 <= 7)
  {
    v21 = v19 * v19;
    v93 = NAN;
  }

  else
  {
    v103 = 0;
    v20 = 0;
    v21 = v19 * v19;
    v22 = a9 * a2;
    v23 = a9 * a4;
    v109 = a9 * a8;
    v113 = (a6 - 7) * a9;
    v99 = a8;
    v100 = 0;
    v24 = a8 * v22;
    v96 = a8 * v23;
    v108 = 2 * v109;
    v25 = 2 * v23;
    v97 = v24;
    v98 = a7 - 7;
    v95 = 2 * v24;
    v26 = 2 * v22;
    v27 = vdupq_n_s64(0x3FB0000000000000uLL);
    v28 = vdupq_n_s64(0x3FF1111120000000uLL);
    v101 = a1;
    v102 = a3;
    v29 = 0.0;
    v30 = 0.0;
    v112 = a5;
    v110 = v23;
    v111 = v22;
    v106 = v28;
    v107 = v27;
    do
    {
      if (v113 >= 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = v104;
        v34 = v105;
        v35 = v101;
        v36 = v102;
        do
        {
          v118 = v32;
          v119 = v31;
          v120 = v20;
          v37 = 0;
          v38 = 0;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          memset(v125, 0, sizeof(v125));
          v39 = 0.0;
          v116 = v34;
          v117 = v33;
          v40 = v33;
          v41 = v34;
          v114 = v35;
          v115 = v36;
          v42 = v36;
          v43 = v35;
          v44 = 0.0;
          memset(v126, 0, sizeof(v126));
          do
          {
            v45 = 0;
            v46 = 0;
            v47 = 8;
            v48 = v37;
            do
            {
              if (a5 < 9)
              {
                v49 = *(v43 + v45);
                v129[v48] = v49;
                v51 = *(v42 + v45);
                v50 = v48;
              }

              else
              {
                v49 = *(v40 + 2 * v45) >> a10;
                v50 = v46 + 8 * v38;
                v129[v48] = v49;
                v51 = *(v41 + 2 * v45) >> a10;
              }

              v128[v50] = v51;
              v52 = v49;
              v53 = (v46 >> 1) & 2 | (v38 >> 2);
              *(v126 + v53) = *(v126 + v53) + v52;
              *(v125 + v53) = *(v125 + v53) + v51;
              v44 = v44 + v52;
              v39 = v39 + v51;
              ++v46;
              v45 += a9;
              ++v48;
              --v47;
            }

            while (v47);
            ++v38;
            v43 += v22;
            v42 += v23;
            v41 += v25;
            v40 += v26;
            v37 += 8;
          }

          while (v38 != 8);
          v54 = 0;
          v55 = v44 * 0.015625;
          do
          {
            v126[v54] = vmulq_f64(v126[v54], v27);
            v125[v54] = vmulq_f64(v125[v54], v27);
            ++v54;
          }

          while (v54 != 2);
          v56 = 0;
          v57 = 0;
          v58 = v39 * 0.015625;
          v59 = 0.0;
          v60 = 0.0;
          do
          {
            v61 = -8;
            v62 = v56;
            do
            {
              v63 = ((v61 + 8) >> 1) & 2 | (v57 >> 2);
              v64 = *(v129 + v62);
              v60 = v60 + (v64 - v55) * (v64 - v55);
              v65 = *(v128 + v62);
              v59 = v59 + (v65 - v58) * (v65 - v58);
              v66 = v64 - *(v126 + v63);
              *(&v123 + v63) = *(&v123 + v63) + v66 * v66;
              v67 = v65 - *(v125 + v63);
              *(&v121 + v63) = *(&v121 + v63) + v67 * v67;
              v62 += 4;
            }

            while (!__CFADD__(v61++, 1));
            ++v57;
            v56 += 32;
          }

          while (v57 != 8);
          v69 = 0;
          v70 = v60 * 1.01587307;
          do
          {
            *(&v123 + v69) = vmulq_f64(*(&v123 + v69), v28);
            *(&v121 + v69) = vmulq_f64(*(&v121 + v69), v28);
            v69 += 16;
          }

          while (v69 != 32);
          if (v70 > 0.0)
          {
            v70 = (*&v123 + *(&v123 + 1) + *&v124 + *(&v124 + 1)) / v70;
          }

          v71 = v59 * 1.01587307;
          if (v59 * 1.01587307 > 0.0)
          {
            v71 = (*&v121 + *(&v121 + 1) + *&v122 + *(&v122 + 1)) / v71;
          }

          v72 = v129;
          od_bin_fdct8x8(v129, v129);
          v73 = v128;
          od_bin_fdct8x8(v128, v128);
          v74 = 0;
          v75 = 0.0;
          v76 = v127;
          v77 = 0.0;
          v26 = 2 * v111;
          v25 = 2 * v110;
          v27 = v107;
          do
          {
            for (j = v74 == 0; j != 8; ++j)
            {
              v79 = *&v76[8 * j];
              v77 = v77 + v72[j] * v72[j] * v79;
              v75 = v75 + v73[j] * v73[j] * v79;
            }

            ++v74;
            v76 += 64;
            v73 += 8;
            v72 += 8;
          }

          while (v74 != 8);
          v80 = 0;
          v81 = sqrt(v70 * v77) * 0.03125;
          v82 = sqrt(v71 * v75) * 0.03125;
          if (v82 <= v81)
          {
            v82 = v81;
          }

          v83 = v127;
          v84 = v128;
          v85 = v129;
          v86 = a11;
          a5 = v112;
          v23 = v110;
          v22 = v111;
          v28 = v106;
          do
          {
            for (k = 0; k != 8; ++k)
            {
              v88 = v85[k] - v84[k];
              if (v88 < 0)
              {
                v88 = v84[k] - v85[k];
              }

              v89 = v88;
              if (k | v80)
              {
                v90 = v82 / *&v83[8 * k];
                if (v90 <= v89)
                {
                  v89 = v89 - v90;
                }

                else
                {
                  v89 = 0.0;
                }
              }

              v91 = v89 * *(v86 + 8 * k);
              v29 = v29 + v91 * v91;
              v30 = v30 + v91 * v91;
            }

            ++v80;
            v83 += 64;
            v86 += 64;
            v84 += 8;
            v85 += 8;
          }

          while (v80 != 8);
          if (a12)
          {
            v30 = v30 * 0.015625 / v21;
            v92 = v119;
            *(a12 + 8 * v103 * a13 + 8 * v119) = v30;
          }

          else
          {
            v92 = v119;
          }

          v20 = v120 + 64;
          v31 = v92 + 1;
          v32 = v118 + v109;
          v35 = v114 + v109;
          v36 = v115 + v109;
          v34 = v116 + v108;
          v33 = v117 + v108;
        }

        while (v118 + v109 < v113);
      }

      v100 += v99;
      v101 += v97;
      v102 += v96;
      ++v103;
      v105 += 2 * v96;
      v104 += v95;
    }

    while (v100 < v98);
    v93 = v29 / v20;
  }

  return v93 / v21;
}

_DWORD *od_bin_fdct8x8(_DWORD *a1, _DWORD *a2)
{
  v4 = 0;
  v8 = *MEMORY[0x1E69E9840];
  do
  {
    od_bin_fdct8(&v7[v4], a2);
    v4 += 32;
    ++a2;
  }

  while (v4 != 256);
  for (i = 0; i != 32; i += 4)
  {
    result = od_bin_fdct8(a1, &v7[i]);
    a1 += 8;
  }

  return result;
}

_DWORD *od_bin_fdct8(_DWORD *result, _DWORD *a2)
{
  v2 = a2[16];
  v3 = a2[32];
  v4 = a2[48];
  v5 = *a2 - a2[56];
  v6 = v4 + a2[8];
  v7 = v4 - v6 / 2;
  v8 = v2 - a2[40];
  v9 = v3 + a2[24];
  v10 = v3 - v9 / 2;
  v11 = *a2 - v5 / 2 + v9 / 2;
  v12 = v6 / 2 - v2 + v8 / 2;
  v13 = v12 - v6;
  v14 = v11 - ((13573 * v13 + 0x4000) >> 15);
  v15 = v13 + ((11585 * v14 + 0x2000) >> 14);
  v16 = v11 - (v9 + ((21895 * v12 + 0x4000) >> 15));
  v17 = v12 + ((15137 * v16 + 0x2000) >> 14);
  v18 = v8 + ((19195 * v7 + 0x4000) >> 15);
  v19 = v7 + ((11585 * v18 + 0x2000) >> 14);
  v20 = 7489 * v19 + 4096;
  v21 = v10 + v19 / 2;
  v22 = v19 - v21;
  v23 = v5 / 2 - v18 + (v20 >> 13);
  v24 = v21 + ((3227 * (v5 - v23) + 0x4000) >> 15);
  v25 = v5 - v23 - ((6393 * v24 + 0x4000) >> 15);
  v26 = v22 + ((2485 * v23 + 4096) >> 13);
  v27 = v23 - ((18205 * v26 + 0x4000) >> 15);
  *result = v14 - ((13573 * v15 + 0x4000) >> 15);
  result[1] = v25;
  result[2] = v17;
  result[3] = v27;
  result[4] = v15;
  result[5] = v26 + ((2485 * v27 + 4096) >> 13);
  result[6] = v16 - ((21895 * v17 + 0x4000) >> 15);
  result[7] = v24 + ((3227 * v25 + 0x4000) >> 15);
  return result;
}

uint64_t _NSStringFromCGRect(double a1, double a2, double a3, double a4)
{
  v7 = MEMORY[0x1E696AEC0];
  if (floor(a1) == a1)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a1];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", *&a1];
  }

  v9 = v8;
  if (floor(a2) == a2)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", *&a2];
  }

  v11 = v10;
  if (floor(a3) == a3)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", *&a3];
  }

  v13 = v12;
  if (floor(a4) == a4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a4];
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", *&a4];
  }

  return [v7 stringWithFormat:@"(%@ %@; %@ %@)", v9, v11, v13, v14];
}

void sub_1A59AD0D4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

void __CMPhotoDispatchAsync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

dispatch_queue_t ___getDeferredDeallocQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.tiledlayer.deferreddeallocqueue", 0);
  _gDeferredDeallocQueue = result;
  return result;
}

void __CMPhotoDispatchSync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t SlimXEncodeBlocks_C(uint64_t a1)
{
  v490 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 12);
  v5 = *(a1 + 36);
  v6 = *(a1 + 32);
  v7 = predictionPattern_0[v6];
  v8 = *(a1 + 80);
  v9 = *(v8 + 128);
  if (v9 && *(v8 + 88) + v9 - v2 < 160)
  {
    return 4294951888;
  }

  switch(v6)
  {
    case 0:
      for (i = 0; i != 8; ++i)
      {
        v484.i16[i] = v3->u8[i];
      }

      for (j = 0; j != 8; ++j)
      {
        v487.i16[j] = v3->u8[j + 8];
      }

      v131 = 0;
      v132 = &v3->i8[v4];
      do
      {
        v485[0].i16[v131] = v132[v131];
        ++v131;
      }

      while (v131 != 8);
      v133 = 0;
      v134 = v132 + 8;
      do
      {
        v488[0].i16[v133] = v134[v133];
        ++v133;
      }

      while (v133 != 8);
      v135 = 0;
      v136 = &v3->i8[2 * v4];
      do
      {
        v485[1].i16[v135] = v136[v135];
        ++v135;
      }

      while (v135 != 8);
      v137 = 0;
      v138 = v136 + 8;
      do
      {
        v488[1].i16[v137] = v138[v137];
        ++v137;
      }

      while (v137 != 8);
      v139 = 0;
      v140 = &v3->i8[3 * v4];
      do
      {
        v486.i16[v139] = v140[v139];
        ++v139;
      }

      while (v139 != 8);
      v141 = 0;
      v142 = v140 + 8;
      do
      {
        v489.i16[v141] = v142[v141];
        ++v141;
      }

      while (v141 != 8);
      goto LABEL_107;
    case 1:
      for (k = 0; k != 8; ++k)
      {
        v484.i16[k] = v3->u8[k];
      }

      for (m = 0; m != 8; ++m)
      {
        v487.i16[m] = v3->u8[m + 8];
      }

      v149 = 0;
      v150 = &v3->i8[v4];
      do
      {
        v485[0].i16[v149] = v150[v149];
        ++v149;
      }

      while (v149 != 8);
      v151 = 0;
      v152 = v150 + 8;
      do
      {
        v488[0].i16[v151] = v152[v151];
        ++v151;
      }

      while (v151 != 8);
      v153 = 0;
      v154 = &v3->i8[2 * v4];
      do
      {
        v485[1].i16[v153] = v154[v153];
        ++v153;
      }

      while (v153 != 8);
      v155 = 0;
      v156 = v154 + 8;
      do
      {
        v488[1].i16[v155] = v156[v155];
        ++v155;
      }

      while (v155 != 8);
      v157 = 0;
      v158 = &v3->i8[3 * v4];
      do
      {
        v486.i16[v157] = v158[v157];
        ++v157;
      }

      while (v157 != 8);
      v159 = 0;
      v160 = v158 + 8;
      do
      {
        v489.i16[v159] = v160[v159];
        ++v159;
      }

      while (v159 != 8);
      goto LABEL_162;
    case 2:
      for (n = 0; n != 8; ++n)
      {
        v484.i16[n] = v3->u8[n];
      }

      for (ii = 0; ii != 8; ++ii)
      {
        v485[1].i16[ii] = v3->u8[v4 + ii];
      }

      for (jj = 0; jj != 8; ++jj)
      {
        v485[0].i16[jj] = v3->u8[2 * v4 + jj];
      }

      for (kk = 0; kk != 8; ++kk)
      {
        v486.i16[kk] = v3->u8[3 * v4 + kk];
      }

      for (mm = 0; mm != 8; ++mm)
      {
        v487.i16[mm] = v3->u8[4 * v4 + mm];
      }

      for (nn = 0; nn != 8; ++nn)
      {
        v488[1].i16[nn] = v3->u8[5 * v4 + nn];
      }

      for (i1 = 0; i1 != 8; ++i1)
      {
        v488[0].i16[i1] = v3->u8[6 * v4 + i1];
      }

      for (i2 = 0; i2 != 8; ++i2)
      {
        v489.i16[i2] = v3->u8[7 * v4 + i2];
      }

      goto LABEL_71;
    case 3:
      for (i3 = 0; i3 != 8; ++i3)
      {
        v484.i16[i3] = v3->u8[i3];
      }

      for (i4 = 0; i4 != 8; ++i4)
      {
        v485[0].i16[i4] = v3->u8[v4 + i4];
      }

      for (i5 = 0; i5 != 8; ++i5)
      {
        v485[1].i16[i5] = v3->u8[2 * v4 + i5];
      }

      for (i6 = 0; i6 != 8; ++i6)
      {
        v486.i16[i6] = v3->u8[3 * v4 + i6];
      }

      for (i7 = 0; i7 != 8; ++i7)
      {
        v487.i16[i7] = v3->u8[4 * v4 + i7];
      }

      for (i8 = 0; i8 != 8; ++i8)
      {
        v488[0].i16[i8] = v3->u8[5 * v4 + i8];
      }

      for (i9 = 0; i9 != 8; ++i9)
      {
        v488[1].i16[i9] = v3->u8[6 * v4 + i9];
      }

      for (i10 = 0; i10 != 8; ++i10)
      {
        v489.i16[i10] = v3->u8[7 * v4 + i10];
      }

      goto LABEL_88;
    case 4:
      for (i11 = 0; i11 != 8; ++i11)
      {
        v484.i16[i11] = v3->u8[i11];
      }

      for (i12 = 0; i12 != 8; ++i12)
      {
        v487.i16[i12] = v3->u8[i12 + 8];
      }

      v29 = 0;
      v30 = &v3->i8[v4];
      do
      {
        v485[0].i16[v29] = v30[v29];
        ++v29;
      }

      while (v29 != 8);
      v31 = 0;
      v32 = v30 + 8;
      do
      {
        v488[0].i16[v31] = v32[v31];
        ++v31;
      }

      while (v31 != 8);
      v33 = 0;
      v34 = &v3->i8[2 * v4];
      do
      {
        v485[1].i16[v33] = v34[v33];
        ++v33;
      }

      while (v33 != 8);
      v35 = 0;
      v36 = v34 + 8;
      do
      {
        v488[1].i16[v35] = v36[v35];
        ++v35;
      }

      while (v35 != 8);
      v37 = 0;
      v38 = &v3->i8[3 * v4];
      do
      {
        v486.i16[v37] = v38[v37];
        ++v37;
      }

      while (v37 != 8);
      v39 = 0;
      v40 = v38 + 8;
      do
      {
        v489.i16[v39] = v40[v39];
        ++v39;
      }

      while (v39 != 8);
      v41 = v484.i16[1];
      v484.i16[1] = v485[1].i16[0];
      v485[1].i16[0] = v41;
      v42 = v484.i16[3];
      v484.i16[3] = v485[1].i16[2];
      v43 = v484.i16[5];
      v484.i16[5] = v485[1].i16[4];
      v485[1].i16[4] = v43;
      v44 = v484.i16[7];
      v484.i16[7] = v485[1].i16[6];
      v45 = v485[0].i16[1];
      v485[0].i16[1] = v486.i16[0];
      v486.i16[0] = v45;
      v46 = v485[0].i16[3];
      v485[0].i16[3] = v486.i16[2];
      v47 = v485[0].i16[5];
      v485[0].i16[5] = v486.i16[4];
      v486.i16[4] = v47;
      v48 = v485[0].i16[7];
      v485[0].i16[7] = v486.i16[6];
      v49 = v487.i16[1];
      v487.i16[1] = v488[1].i16[0];
      v50 = v487.i16[3];
      v487.i16[3] = v488[1].i16[2];
      v488[1].i16[2] = v50;
      v51 = v487.i16[5];
      v487.i16[5] = v488[1].i16[4];
      v52 = v487.i16[7];
      v487.i16[7] = v488[1].i16[6];
      v488[1].i16[6] = v52;
      v53 = v488[0].i16[1];
      v488[0].i16[1] = v489.i16[0];
      v54 = v488[0].i16[3];
      v488[0].i16[3] = v489.i16[2];
      v489.i16[2] = v54;
      v55 = v488[0].i16[5];
      v488[0].i16[5] = v489.i16[4];
      v56 = v488[0].i16[7];
      v488[0].i16[7] = v489.i16[6];
      v489.i16[6] = v56;
      v485[1].i16[2] = v49;
      v488[1].i16[0] = v42;
      v57 = v485[1].i16[3];
      v485[1].i16[3] = v488[1].i16[1];
      v488[1].i16[1] = v57;
      v485[1].i16[6] = v51;
      v488[1].i16[4] = v44;
      v58 = v485[1].i16[7];
      v485[1].i16[7] = v488[1].i16[5];
      v488[1].i16[5] = v58;
      v486.i16[2] = v53;
      v489.i16[0] = v46;
      v59 = v486.i16[3];
      v486.i16[3] = v489.i16[1];
      v489.i16[1] = v59;
      v486.i16[6] = v55;
      v489.i16[4] = v48;
      v60 = v486.i16[7];
      v486.i16[7] = v489.i16[5];
      v489.i16[5] = v60;
      goto LABEL_164;
    case 5:
      for (i13 = 0; i13 != 8; ++i13)
      {
        v484.i16[i13] = v3->u8[i13];
      }

      v162 = &v3->u8[8];
      for (i14 = 32; i14 != 40; ++i14)
      {
        v164 = *v162++;
        v484.i16[i14] = v164;
      }

      v165 = 8;
      v166 = &v3->u8[v4];
      do
      {
        v167 = *v166++;
        v484.i16[v165++] = v167;
      }

      while (v165 != 16);
      v168 = &v3->u8[v4 + 8];
      for (i15 = 40; i15 != 48; ++i15)
      {
        v170 = *v168++;
        v484.i16[i15] = v170;
      }

      v171 = 16;
      v172 = (v3 + 2 * v4);
      do
      {
        v173 = v172->u8[0];
        v172 = (v172 + 1);
        v484.i16[v171++] = v173;
      }

      while (v171 != 24);
      v174 = &v3->u8[2 * v4 + 8];
      for (i16 = 48; i16 != 56; ++i16)
      {
        v176 = *v174++;
        v484.i16[i16] = v176;
      }

      v177 = 24;
      v178 = (v3 + 3 * v4);
      do
      {
        v179 = v178->u8[0];
        v178 = (v178 + 1);
        v484.i16[v177++] = v179;
      }

      while (v177 != 32);
      v180 = &v3->u8[3 * v4 + 8];
      for (i17 = 56; i17 != 64; ++i17)
      {
        v182 = *v180++;
        v484.i16[i17] = v182;
      }

      v183 = v485[1].i16[1];
      v485[1].i16[1] = v484.i16[0];
      v484.i16[0] = v183;
      v184 = v484.i16[2];
      v484.i16[2] = v485[1].i16[3];
      v185 = v485[1].i16[5];
      v485[1].i16[5] = v484.i16[4];
      v484.i16[4] = v185;
      v186 = v484.i16[6];
      v484.i16[6] = v485[1].i16[7];
      v187 = v486.i16[1];
      v486.i16[1] = v485[0].i16[0];
      v485[0].i16[0] = v187;
      v188 = v485[0].i16[2];
      v485[0].i16[2] = v486.i16[3];
      v189 = v486.i16[5];
      v486.i16[5] = v485[0].i16[4];
      v485[0].i16[4] = v189;
      v190 = v485[0].i16[6];
      v485[0].i16[6] = v486.i16[7];
      v191 = v487.i16[0];
      v487.i16[0] = v488[1].i16[1];
      v192 = v488[1].i16[3];
      v488[1].i16[3] = v487.i16[2];
      v487.i16[2] = v192;
      v193 = v487.i16[4];
      v487.i16[4] = v488[1].i16[5];
      v194 = v488[1].i16[7];
      v488[1].i16[7] = v487.i16[6];
      v487.i16[6] = v194;
      v195 = v488[0].i16[0];
      v488[0].i16[0] = v489.i16[1];
      v196 = v489.i16[3];
      v489.i16[3] = v488[0].i16[2];
      v488[0].i16[2] = v196;
      v197 = v488[0].i16[4];
      v488[0].i16[4] = v489.i16[5];
      v198 = v489.i16[7];
      v489.i16[7] = v488[0].i16[6];
      v488[0].i16[6] = v198;
      v199 = v485[1].i16[2];
      v485[1].i16[2] = v488[1].i16[0];
      v488[1].i16[0] = v199;
      v485[1].i16[3] = v191;
      v488[1].i16[1] = v184;
      v200 = v485[1].i16[6];
      v485[1].i16[6] = v488[1].i16[4];
      v488[1].i16[4] = v200;
      v485[1].i16[7] = v193;
      v488[1].i16[5] = v186;
      v201 = v486.i16[2];
      v486.i16[2] = v489.i16[0];
      v489.i16[0] = v201;
      v486.i16[3] = v195;
      v489.i16[1] = v188;
      v202 = v486.i16[6];
      v486.i16[6] = v489.i16[4];
      v489.i16[4] = v202;
      v486.i16[7] = v197;
      v489.i16[5] = v190;
      goto LABEL_164;
    case 6:
      for (i18 = 0; i18 != 8; ++i18)
      {
        v484.i16[i18] = v3->u8[i18];
      }

      v204 = &v3->u8[8];
      for (i19 = 32; i19 != 40; ++i19)
      {
        v206 = *v204++;
        v484.i16[i19] = v206;
      }

      v207 = 8;
      v208 = &v3->u8[v4];
      do
      {
        v209 = *v208++;
        v484.i16[v207++] = v209;
      }

      while (v207 != 16);
      v210 = &v3->u8[v4 + 8];
      for (i20 = 40; i20 != 48; ++i20)
      {
        v212 = *v210++;
        v484.i16[i20] = v212;
      }

      v213 = 16;
      v214 = (v3 + 2 * v4);
      do
      {
        v215 = v214->u8[0];
        v214 = (v214 + 1);
        v484.i16[v213++] = v215;
      }

      while (v213 != 24);
      v216 = &v3->u8[2 * v4 + 8];
      for (i21 = 48; i21 != 56; ++i21)
      {
        v218 = *v216++;
        v484.i16[i21] = v218;
      }

      v219 = 24;
      v220 = (v3 + 3 * v4);
      do
      {
        v221 = v220->u8[0];
        v220 = (v220 + 1);
        v484.i16[v219++] = v221;
      }

      while (v219 != 32);
      v222 = &v3->u8[3 * v4 + 8];
      for (i22 = 56; i22 != 64; ++i22)
      {
        v224 = *v222++;
        v484.i16[i22] = v224;
      }

      goto LABEL_158;
    case 7:
      vectorload_4x16_packed10(v3, *(a1 + 8), v4, &v484);
      goto LABEL_107;
    case 8:
      vectorload_4x16_packed10(v3, *(a1 + 8), v4, &v484);
      goto LABEL_162;
    case 9:
      v61 = &v487;
      v62 = 8;
      v63 = v3;
      do
      {
        v64 = v63->i32[0];
        v63 = (v63 + 4);
        v61[-4].i16[0] = v64 & 0x3FF;
        v61[-2].i16[0] = (v64 >> 10) & 0x3FF;
        v61->i16[0] = (v64 >> 20) & 0x3FF;
        v61[2].i16[0] = v64 >> 30;
        if (v62 == 5)
        {
          v63 = (v3 + v4);
        }

        v61 = (v61 + 2);
        --v62;
      }

      while (v62);
      v65 = (v3 + 2 * v4);
      v66 = v488;
      v67 = 8;
      do
      {
        v68 = *v65++;
        v66[-4].i16[0] = v68 & 0x3FF;
        v66[-2].i16[0] = (v68 >> 10) & 0x3FF;
        v66->i16[0] = (v68 >> 20) & 0x3FF;
        v66[2].i16[0] = v68 >> 30;
        if (v67 == 5)
        {
          v65 = (v3 + 3 * v4);
        }

        v66 = (v66 + 2);
        --v67;
      }

      while (v67);
      goto LABEL_164;
    case 10:
    case 15:
    case 24:
      v11 = v3[1];
      v484 = *v3;
      v487 = v11;
      v485[0] = *(v3 + v4);
      v488[0] = *(&v3[1] + v4);
      v12 = (v3 + 2 * v4);
      v485[1] = *v12;
      v488[1] = v12[1];
      v13 = (v3 + 3 * v4);
      v486 = *v13;
      v489 = v13[1];
      if (v6 == 15)
      {
        v484 = vbslq_s8(vcltzq_s16(v484), vmvnq_s8(v484), (*&v484 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[0] = vbslq_s8(vcltzq_s16(v485[0]), vmvnq_s8(v485[0]), (*v485 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[1] = vbslq_s8(vcltzq_s16(v485[1]), vmvnq_s8(v485[1]), (*&v485[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v486 = vbslq_s8(vcltzq_s16(v486), vmvnq_s8(v486), (*&v486 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v487 = vbslq_s8(vcltzq_s16(v487), vmvnq_s8(v487), (*&v487 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[0] = vbslq_s8(vcltzq_s16(v488[0]), vmvnq_s8(v488[0]), (*v488 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[1] = vbslq_s8(vcltzq_s16(v488[1]), vmvnq_s8(v488[1]), (*&v488[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v489 = vbslq_s8(vcltzq_s16(v489), vmvnq_s8(v489), (*&v489 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      }

      if (*(a1 + 40))
      {
        v14.i64[0] = 0xF000F000F000FLL;
        v14.i64[1] = 0xF000F000F000FLL;
        v15 = vandq_s8(vorrq_s8(v489, vorrq_s8(vorrq_s8(v488[1], vorrq_s8(v488[0], v487)), vorrq_s8(vorrq_s8(v486, v485[1]), vorrq_s8(v485[0], v484)))), v14);
        v15.i16[0] = vmaxvq_u16(v15);
        if (v15.i32[0])
        {
          return 4294951887;
        }
      }

      if (v5)
      {
        v26 = vnegq_s32(vdupq_n_s32(v5));
        v484 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v484.i8), v26), vshlq_u32(vmovl_high_u16(v484), v26));
        v485[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[0].i8), v26), vshlq_u32(vmovl_high_u16(v485[0]), v26));
        v485[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[1].i8), v26), vshlq_u32(vmovl_high_u16(v485[1]), v26));
        v486 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v486.i8), v26), vshlq_u32(vmovl_high_u16(v486), v26));
        v487 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v487.i8), v26), vshlq_u32(vmovl_high_u16(v487), v26));
        v488[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[0].i8), v26), vshlq_u32(vmovl_high_u16(v488[0]), v26));
        v488[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[1].i8), v26), vshlq_u32(vmovl_high_u16(v488[1]), v26));
        v489 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v489.i8), v26), vshlq_u32(vmovl_high_u16(v489), v26));
      }

LABEL_107:
      v143.i64[0] = v486.i64[0];
      v143.i64[1] = v484.i64[1];
      v144 = v485[0].i64[1];
      v484.i64[1] = v485[1].i64[0];
      *(v485 + 8) = v143;
      v145 = v487.i64[1];
      v146 = v488[0].i64[1];
      v486.i64[0] = v144;
      v487.i64[1] = v488[1].i64[0];
      v143.i64[0] = v489.i64[0];
      v143.i64[1] = v145;
      *(v488 + 8) = v143;
      v489.i64[0] = v146;
LABEL_164:
      v265 = a1 + 42;
      if (v6 >= 17)
      {
        if (*(a1 + 108))
        {
          v266 = *(a1 + 112);
          if (v266)
          {
            v267 = vdupq_n_s32(v266);
            v268 = vdupq_n_s32(v266 - 1);
            v269 = vmovl_u16(*v484.i8);
            v270 = vmovl_high_u16(v484);
            v271.i64[0] = 0x2000000020;
            v271.i64[1] = 0x2000000020;
            v272 = vbicq_s8(vsubq_s32(v271, vclzq_s32(v270)), vceqzq_s32(v270));
            v273 = vbicq_s8(vsubq_s32(v271, vclzq_s32(v269)), vceqzq_s32(v269));
            v274 = vmovn_s32(vcgtq_s32(v273, v267));
            v275 = vsubq_s32(v272, v267);
            v276 = vsubq_s32(v273, v267);
            v277 = vnegq_s32(v267);
            v278 = vsubq_s16(v484, vuzp1q_s16(vshlq_u32(v269, v277), vshlq_u32(v270, v277)));
            v269.i64[0] = -1;
            v269.i64[1] = -1;
            v279.i64[0] = 0x100000001;
            v279.i64[1] = 0x100000001;
            v280 = vaddq_s16(v278, vuzp1q_s16(vshlq_u32(v279, vaddq_s32(v276, v269)), vshlq_u32(v279, vaddq_s32(v275, v269))));
            v281 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v280.i8), vnegq_s32(v276)), vshlq_u32(v276, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v280), vnegq_s32(v275)), vshlq_u32(v275, v268)));
            if (vuzp1_s8(v274, *v267.i8).u8[0])
            {
              v484.i16[0] = v281.i16[0];
            }

            if (vuzp1_s8(v274, *&v267).i8[1])
            {
              v484.i16[1] = v281.i16[1];
              v484.i32[1] = v281.i32[1];
            }

            v282 = vmovn_s32(vcgtq_s32(v272, v267));
            if (vuzp1_s8(*&v267, v282).i32[1])
            {
              v484.i16[4] = v281.i16[4];
            }

            if (vuzp1_s8(*&v267, v282).i8[5])
            {
              *(&v484 | 0xA) = v281.i16[5];
            }

            if (vuzp1_s8(*&v267, v282).i8[6])
            {
              *(&v484 | 0xC) = v281.i16[6];
              *(&v484 | 0xE) = v281.i16[7];
            }

            v283 = vmovl_u16(*v485[0].i8);
            v284 = vmovl_high_u16(v485[0]);
            v285.i64[0] = 0x2000000020;
            v285.i64[1] = 0x2000000020;
            v286 = vbicq_s8(vsubq_s32(v285, vclzq_s32(v284)), vceqzq_s32(v284));
            v287 = vbicq_s8(vsubq_s32(v285, vclzq_s32(v283)), vceqzq_s32(v283));
            v288 = vmovn_s32(vcgtq_s32(v287, v267));
            v289 = vsubq_s32(v286, v267);
            v290 = vsubq_s32(v287, v267);
            v291 = vsubq_s16(v485[0], vuzp1q_s16(vshlq_u32(v283, v277), vshlq_u32(v284, v277)));
            v283.i64[0] = -1;
            v283.i64[1] = -1;
            v292 = vaddq_s16(v291, vuzp1q_s16(vshlq_u32(v279, vaddq_s32(v290, v283)), vshlq_u32(v279, vaddq_s32(v289, v283))));
            v293 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v292.i8), vnegq_s32(v290)), vshlq_u32(v290, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v292), vnegq_s32(v289)), vshlq_u32(v289, v268)));
            if (vuzp1_s8(v288, *v267.i8).u8[0])
            {
              v485[0].i16[0] = v293.i16[0];
            }

            if (vuzp1_s8(v288, *&v267).i8[1])
            {
              v485[0].i16[1] = v293.i16[1];
              v485[0].i32[1] = v293.i32[1];
            }

            v294 = vmovn_s32(vcgtq_s32(v286, v267));
            if (vuzp1_s8(*&v267, v294).i32[1])
            {
              v485[0].i16[4] = v293.i16[4];
            }

            if (vuzp1_s8(*&v267, v294).i8[5])
            {
              v485[0].i16[5] = v293.i16[5];
            }

            if (vuzp1_s8(*&v267, v294).i8[6])
            {
              v485[0].i32[3] = v293.i32[3];
            }

            v295 = vmovl_u16(*v485[1].i8);
            v296 = vmovl_high_u16(v485[1]);
            v297.i64[0] = 0x2000000020;
            v297.i64[1] = 0x2000000020;
            v298 = vbicq_s8(vsubq_s32(v297, vclzq_s32(v296)), vceqzq_s32(v296));
            v299 = vbicq_s8(vsubq_s32(v297, vclzq_s32(v295)), vceqzq_s32(v295));
            v300 = vmovn_s32(vcgtq_s32(v299, v267));
            v301 = vsubq_s32(v298, v267);
            v302 = vsubq_s32(v299, v267);
            v303 = vsubq_s16(v485[1], vuzp1q_s16(vshlq_u32(v295, v277), vshlq_u32(v296, v277)));
            v295.i64[0] = -1;
            v295.i64[1] = -1;
            v304 = vaddq_s16(v303, vuzp1q_s16(vshlq_u32(v279, vaddq_s32(v302, v295)), vshlq_u32(v279, vaddq_s32(v301, v295))));
            v305 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v304.i8), vnegq_s32(v302)), vshlq_u32(v302, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v304), vnegq_s32(v301)), vshlq_u32(v301, v268)));
            if (vuzp1_s8(v300, *v267.i8).u8[0])
            {
              v485[1].i16[0] = v305.i16[0];
            }

            if (vuzp1_s8(v300, *&v267).i8[1])
            {
              v485[1].i16[1] = v305.i16[1];
              v485[1].i32[1] = v305.i32[1];
            }

            v306 = vmovn_s32(vcgtq_s32(v298, v267));
            if (vuzp1_s8(*&v267, v306).i32[1])
            {
              v485[1].i16[4] = v305.i16[4];
            }

            if (vuzp1_s8(*&v267, v306).i8[5])
            {
              v485[1].i16[5] = v305.i16[5];
            }

            if (vuzp1_s8(*&v267, v306).i8[6])
            {
              v485[1].i32[3] = v305.i32[3];
            }

            v307 = vmovl_u16(*v486.i8);
            v308 = vmovl_high_u16(v486);
            v309.i64[0] = 0x2000000020;
            v309.i64[1] = 0x2000000020;
            v310 = vbicq_s8(vsubq_s32(v309, vclzq_s32(v308)), vceqzq_s32(v308));
            v311 = vbicq_s8(vsubq_s32(v309, vclzq_s32(v307)), vceqzq_s32(v307));
            v312 = vmovn_s32(vcgtq_s32(v311, v267));
            v313 = vsubq_s32(v310, v267);
            v314 = vsubq_s32(v311, v267);
            v315 = vsubq_s16(v486, vuzp1q_s16(vshlq_u32(v307, v277), vshlq_u32(v308, v277)));
            v307.i64[0] = -1;
            v307.i64[1] = -1;
            v316 = vaddq_s16(v315, vuzp1q_s16(vshlq_u32(v279, vaddq_s32(v314, v307)), vshlq_u32(v279, vaddq_s32(v313, v307))));
            v317 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v316.i8), vnegq_s32(v314)), vshlq_u32(v314, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v316), vnegq_s32(v313)), vshlq_u32(v313, v268)));
            if (vuzp1_s8(v312, *v267.i8).u8[0])
            {
              v486.i16[0] = v317.i16[0];
            }

            if (vuzp1_s8(v312, *&v267).i8[1])
            {
              v486.i16[1] = v317.i16[1];
              v486.i32[1] = v317.i32[1];
            }

            v318 = vmovn_s32(vcgtq_s32(v310, v267));
            if (vuzp1_s8(*&v267, v318).i32[1])
            {
              v486.i16[4] = v317.i16[4];
            }

            if (vuzp1_s8(*&v267, v318).i8[5])
            {
              v486.i16[5] = v317.i16[5];
            }

            if (vuzp1_s8(*&v267, v318).i8[6])
            {
              v486.i32[3] = v317.i32[3];
            }

            v319 = vmovl_u16(*v487.i8);
            v320 = vmovl_high_u16(v487);
            v321.i64[0] = 0x2000000020;
            v321.i64[1] = 0x2000000020;
            v322 = vbicq_s8(vsubq_s32(v321, vclzq_s32(v320)), vceqzq_s32(v320));
            v323 = vbicq_s8(vsubq_s32(v321, vclzq_s32(v319)), vceqzq_s32(v319));
            v324 = vmovn_s32(vcgtq_s32(v323, v267));
            v325 = vsubq_s32(v322, v267);
            v326 = vsubq_s32(v323, v267);
            v327 = vsubq_s16(v487, vuzp1q_s16(vshlq_u32(v319, v277), vshlq_u32(v320, v277)));
            v319.i64[0] = -1;
            v319.i64[1] = -1;
            v328 = vaddq_s16(v327, vuzp1q_s16(vshlq_u32(v279, vaddq_s32(v326, v319)), vshlq_u32(v279, vaddq_s32(v325, v319))));
            v329 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v328.i8), vnegq_s32(v326)), vshlq_u32(v326, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v328), vnegq_s32(v325)), vshlq_u32(v325, v268)));
            if (vuzp1_s8(v324, *v267.i8).u8[0])
            {
              v487.i16[0] = v329.i16[0];
            }

            if (vuzp1_s8(v324, *&v267).i8[1])
            {
              v487.i16[1] = v329.i16[1];
              v487.i32[1] = v329.i32[1];
            }

            v330 = vmovn_s32(vcgtq_s32(v322, v267));
            if (vuzp1_s8(*&v267, v330).i32[1])
            {
              v487.i16[4] = v329.i16[4];
            }

            if (vuzp1_s8(*&v267, v330).i8[5])
            {
              v487.i16[5] = v329.i16[5];
            }

            if (vuzp1_s8(*&v267, v330).i8[6])
            {
              v487.i32[3] = v329.i32[3];
            }

            v331 = vmovl_u16(*v488[0].i8);
            v332 = vmovl_high_u16(v488[0]);
            v333.i64[0] = 0x2000000020;
            v333.i64[1] = 0x2000000020;
            v334 = vbicq_s8(vsubq_s32(v333, vclzq_s32(v332)), vceqzq_s32(v332));
            v335 = vbicq_s8(vsubq_s32(v333, vclzq_s32(v331)), vceqzq_s32(v331));
            v336 = vmovn_s32(vcgtq_s32(v335, v267));
            v337 = vsubq_s32(v334, v267);
            v338 = vsubq_s32(v335, v267);
            v339 = vsubq_s16(v488[0], vuzp1q_s16(vshlq_u32(v331, v277), vshlq_u32(v332, v277)));
            v331.i64[0] = -1;
            v331.i64[1] = -1;
            v340 = vaddq_s16(v339, vuzp1q_s16(vshlq_u32(v279, vaddq_s32(v338, v331)), vshlq_u32(v279, vaddq_s32(v337, v331))));
            v341 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v340.i8), vnegq_s32(v338)), vshlq_u32(v338, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v340), vnegq_s32(v337)), vshlq_u32(v337, v268)));
            if (vuzp1_s8(v336, *v267.i8).u8[0])
            {
              v488[0].i16[0] = v341.i16[0];
            }

            if (vuzp1_s8(v336, *&v267).i8[1])
            {
              v488[0].i16[1] = v341.i16[1];
              v488[0].i32[1] = v341.i32[1];
            }

            v342 = vmovn_s32(vcgtq_s32(v334, v267));
            if (vuzp1_s8(*&v267, v342).i32[1])
            {
              v488[0].i16[4] = v341.i16[4];
            }

            if (vuzp1_s8(*&v267, v342).i8[5])
            {
              v488[0].i16[5] = v341.i16[5];
            }

            if (vuzp1_s8(*&v267, v342).i8[6])
            {
              v488[0].i32[3] = v341.i32[3];
            }

            v343 = vmovl_u16(*v488[1].i8);
            v344 = vmovl_high_u16(v488[1]);
            v345.i64[0] = 0x2000000020;
            v345.i64[1] = 0x2000000020;
            v346 = vbicq_s8(vsubq_s32(v345, vclzq_s32(v344)), vceqzq_s32(v344));
            v347 = vbicq_s8(vsubq_s32(v345, vclzq_s32(v343)), vceqzq_s32(v343));
            v348 = vmovn_s32(vcgtq_s32(v347, v267));
            v349 = vsubq_s32(v346, v267);
            v350 = vsubq_s32(v347, v267);
            v351 = vsubq_s16(v488[1], vuzp1q_s16(vshlq_u32(v343, v277), vshlq_u32(v344, v277)));
            v343.i64[0] = -1;
            v343.i64[1] = -1;
            v352 = vaddq_s16(v351, vuzp1q_s16(vshlq_u32(v279, vaddq_s32(v350, v343)), vshlq_u32(v279, vaddq_s32(v349, v343))));
            v353 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vnegq_s32(v350)), vshlq_u32(v350, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v352), vnegq_s32(v349)), vshlq_u32(v349, v268)));
            if (vuzp1_s8(v348, *v267.i8).u8[0])
            {
              v488[1].i16[0] = v353.i16[0];
            }

            if (vuzp1_s8(v348, *&v267).i8[1])
            {
              v488[1].i16[1] = v353.i16[1];
              v488[1].i32[1] = v353.i32[1];
            }

            v354 = vmovn_s32(vcgtq_s32(v346, v267));
            if (vuzp1_s8(*&v267, v354).i32[1])
            {
              v488[1].i16[4] = v353.i16[4];
            }

            if (vuzp1_s8(*&v267, v354).i8[5])
            {
              v488[1].i16[5] = v353.i16[5];
            }

            if (vuzp1_s8(*&v267, v354).i8[6])
            {
              v488[1].i32[3] = v353.i32[3];
            }

            v355 = vmovl_u16(*v489.i8);
            v356 = vmovl_high_u16(v489);
            v357.i64[0] = 0x2000000020;
            v357.i64[1] = 0x2000000020;
            v358 = vbicq_s8(vsubq_s32(v357, vclzq_s32(v356)), vceqzq_s32(v356));
            v359 = vbicq_s8(vsubq_s32(v357, vclzq_s32(v355)), vceqzq_s32(v355));
            v360 = vmovn_s32(vcgtq_s32(v359, v267));
            v361 = vsubq_s32(v358, v267);
            v362 = vsubq_s32(v359, v267);
            v363 = vsubq_s16(v489, vuzp1q_s16(vshlq_u32(v355, v277), vshlq_u32(v356, v277)));
            v364.i64[0] = -1;
            v364.i64[1] = -1;
            v356.i64[0] = 0x100000001;
            v356.i64[1] = 0x100000001;
            v365 = vaddq_s16(v363, vuzp1q_s16(vshlq_u32(v356, vaddq_s32(v362, v364)), vshlq_u32(v356, vaddq_s32(v361, v364))));
            v366 = vuzp1q_s16(vaddq_s32(vshlq_u32(vmovl_u16(*v365.i8), vnegq_s32(v362)), vshlq_u32(v362, v268)), vaddq_s32(vshlq_u32(vmovl_high_u16(v365), vnegq_s32(v361)), vshlq_u32(v361, v268)));
            if (vuzp1_s8(v360, *v267.i8).u8[0])
            {
              v489.i16[0] = v366.i16[0];
            }

            if (vuzp1_s8(v360, *&v267).i8[1])
            {
              v489.i16[1] = v366.i16[1];
              v489.i32[1] = v366.i32[1];
            }

            v367 = vmovn_s32(vcgtq_s32(v358, v267));
            if (vuzp1_s8(v367, v367).i32[1])
            {
              v489.i16[4] = v366.i16[4];
            }

            if (vuzp1_s8(v367, v367).i8[5])
            {
              v489.i16[5] = v366.i16[5];
            }

            if (vuzp1_s8(v367, v367).i8[6])
            {
              v489.i32[3] = v366.i32[3];
            }
          }
        }
      }

      v368 = vminq_u16(v484, v485[0]);
      v368.i16[0] = vminvq_u16(v368);
      v369 = vmaxq_u16(v484, v485[0]);
      v369.i16[0] = vmaxvq_u16(v369);
      v370 = (v265 + ((v7 >> 9) & 0x7FFFF8));
      v371 = v369.i32[0] - v368.u16[0];
      v372 = __clz(v371);
      *(a1 + 44) = 32 - v372 - *v370;
      *(a1 + 42) = 32 - v372;
      v373 = 1 << -v372;
      v374 = v370[2];
      if (v374 > v368.u16[0] || (v373 + v374) <= v369.i32[0])
      {
        v376 = (v368.i32[0] - ((v373 - v371) >> 1)) & ~((v368.i32[0] - ((v373 - v371) >> 1)) >> 31);
        v377 = v376 - v374;
        LOWORD(v374) = v376;
      }

      else
      {
        v377 = 0;
      }

      *(a1 + 48) = v377;
      *(a1 + 46) = v374;
      v378 = vminq_u16(v485[1], v486);
      v378.i16[0] = vminvq_u16(v378);
      v379 = vmaxq_u16(v485[1], v486);
      v379.i16[0] = vmaxvq_u16(v379);
      v380 = (v265 + 8 * ((v7 >> 8) & 0xF));
      v381 = v379.i32[0] - v378.u16[0];
      v382 = __clz(v381);
      *(a1 + 52) = 32 - v382 - *v380;
      *(a1 + 50) = 32 - v382;
      v383 = 1 << -v382;
      v384 = v380[2];
      if (v384 > v378.u16[0] || (v383 + v384) <= v379.i32[0])
      {
        v386 = (v378.i32[0] - ((v383 - v381) >> 1)) & ~((v378.i32[0] - ((v383 - v381) >> 1)) >> 31);
        v385 = v386 - v384;
      }

      else
      {
        v385 = 0;
        LOWORD(v386) = v380[2];
      }

      *(a1 + 56) = v385;
      *(a1 + 54) = v386;
      v387 = vminq_u16(v487, v488[0]);
      v387.i16[0] = vminvq_u16(v387);
      v388 = vmaxq_u16(v487, v488[0]);
      v388.i16[0] = vmaxvq_u16(v388);
      v389 = (v265 + 8 * (v7 >> 4));
      v390 = v388.i32[0] - v387.u16[0];
      v391 = __clz(v390);
      *(a1 + 60) = 32 - v391 - *v389;
      *(a1 + 58) = 32 - v391;
      v392 = 1 << -v391;
      v393 = v389[2];
      if (v393 > v387.u16[0] || (v392 + v393) <= v388.i32[0])
      {
        v395 = (v387.i32[0] - ((v392 - v390) >> 1)) & ~((v387.i32[0] - ((v392 - v390) >> 1)) >> 31);
        v394 = v395 - v393;
      }

      else
      {
        v394 = 0;
        LOWORD(v395) = v393;
      }

      *(a1 + 64) = v394;
      *(a1 + 62) = v395;
      if (v6 == 19)
      {
        v396 = *(a1 + 72);
      }

      else
      {
        v397 = vminq_u16(v488[1], v489);
        v397.i16[0] = vminvq_u16(v397);
        v398 = vmaxq_u16(v488[1], v489);
        v398.i16[0] = vmaxvq_u16(v398);
        v399 = (v265 + 8 * (v7 & 0xF));
        v400 = v398.i32[0] - v397.u16[0];
        v401 = __clz(v400);
        *(a1 + 68) = 32 - v401 - *v399;
        *(a1 + 66) = 32 - v401;
        v402 = 1 << -v401;
        v403 = v399[2];
        if (v403 > v397.u16[0] || (v402 + v403) <= v398.i32[0])
        {
          v404 = (v397.i32[0] - ((v402 - v400) >> 1)) & ~((v397.i32[0] - ((v402 - v400) >> 1)) >> 31);
          v396 = v404 - v403;
        }

        else
        {
          v396 = 0;
          LOWORD(v404) = v403;
        }

        *(a1 + 72) = v396;
        *(a1 + 70) = v404;
      }

      v405 = 0;
      v406 = 0;
      v407 = 0;
      v408 = 0;
      v421 = v377 == 0;
      v409 = v377 != 0;
      if (v421)
      {
        v410 = 2;
      }

      else
      {
        v410 = 3;
      }

      if (v385)
      {
        v409 = v410;
      }

      if (v394)
      {
        v409 |= 4u;
      }

      if (v396)
      {
        v409 |= 8u;
      }

      v411 = (a1 + 44);
      break;
    case 11:
    case 16:
    case 25:
      v16 = v3[1];
      v484 = *v3;
      v487 = v16;
      v485[0] = *(v3 + v4);
      v488[0] = *(&v3[1] + v4);
      v17 = (v3 + 2 * v4);
      v485[1] = *v17;
      v488[1] = v17[1];
      v18 = (v3 + 3 * v4);
      v486 = *v18;
      v489 = v18[1];
      if (v6 == 15)
      {
        v484 = vbslq_s8(vcltzq_s16(v484), vmvnq_s8(v484), (*&v484 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[0] = vbslq_s8(vcltzq_s16(v485[0]), vmvnq_s8(v485[0]), (*v485 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[1] = vbslq_s8(vcltzq_s16(v485[1]), vmvnq_s8(v485[1]), (*&v485[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v486 = vbslq_s8(vcltzq_s16(v486), vmvnq_s8(v486), (*&v486 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v487 = vbslq_s8(vcltzq_s16(v487), vmvnq_s8(v487), (*&v487 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[0] = vbslq_s8(vcltzq_s16(v488[0]), vmvnq_s8(v488[0]), (*v488 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[1] = vbslq_s8(vcltzq_s16(v488[1]), vmvnq_s8(v488[1]), (*&v488[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v489 = vbslq_s8(vcltzq_s16(v489), vmvnq_s8(v489), (*&v489 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      }

      if (v5)
      {
        v19 = vnegq_s32(vdupq_n_s32(v5));
        v484 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v484.i8), v19), vshlq_u32(vmovl_high_u16(v484), v19));
        v485[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[0].i8), v19), vshlq_u32(vmovl_high_u16(v485[0]), v19));
        v485[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[1].i8), v19), vshlq_u32(vmovl_high_u16(v485[1]), v19));
        v486 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v486.i8), v19), vshlq_u32(vmovl_high_u16(v486), v19));
        v487 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v487.i8), v19), vshlq_u32(vmovl_high_u16(v487), v19));
        v488[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[0].i8), v19), vshlq_u32(vmovl_high_u16(v488[0]), v19));
        v488[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[1].i8), v19), vshlq_u32(vmovl_high_u16(v488[1]), v19));
        v489 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v489.i8), v19), vshlq_u32(vmovl_high_u16(v489), v19));
      }

LABEL_162:
      v249 = v484.i16[1];
      v484.i16[1] = v485[1].i16[0];
      v485[1].i16[0] = v249;
      v250 = v484.i16[3];
      v484.i16[3] = v485[1].i16[2];
      v485[1].i16[2] = v250;
      v251 = v484.i16[5];
      v484.i16[5] = v485[1].i16[4];
      v485[1].i16[4] = v251;
      v252 = v484.i16[7];
      v484.i16[7] = v485[1].i16[6];
      v485[1].i16[6] = v252;
      v253 = v485[0].i16[1];
      v485[0].i16[1] = v486.i16[0];
      v486.i16[0] = v253;
      v254 = v485[0].i16[3];
      v485[0].i16[3] = v486.i16[2];
      v486.i16[2] = v254;
      v255 = v485[0].i16[5];
      v485[0].i16[5] = v486.i16[4];
      v486.i16[4] = v255;
      v256 = v485[0].i16[7];
      v485[0].i16[7] = v486.i16[6];
      v486.i16[6] = v256;
      v257 = v487.i16[1];
      v487.i16[1] = v488[1].i16[0];
      v488[1].i16[0] = v257;
      v258 = v487.i16[3];
      v487.i16[3] = v488[1].i16[2];
      v488[1].i16[2] = v258;
      v259 = v487.i16[5];
      v487.i16[5] = v488[1].i16[4];
      v488[1].i16[4] = v259;
      v260 = v487.i16[7];
      v487.i16[7] = v488[1].i16[6];
      v488[1].i16[6] = v260;
      v261 = v488[0].i16[1];
      v488[0].i16[1] = v489.i16[0];
      v489.i16[0] = v261;
      v262 = v488[0].i16[3];
      v488[0].i16[3] = v489.i16[2];
      v489.i16[2] = v262;
      v263 = v488[0].i16[5];
      v488[0].i16[5] = v489.i16[4];
      v489.i16[4] = v263;
      goto LABEL_163;
    case 12:
    case 18:
      v21 = v3[1];
      v484 = *v3;
      v487 = v21;
      v485[0] = *(v3 + v4);
      v488[0] = *(&v3[1] + v4);
      v22 = (v3 + 2 * v4);
      v485[1] = *v22;
      v488[1] = v22[1];
      v23 = (v3 + 3 * v4);
      v486 = *v23;
      v489 = v23[1];
      if (v6 != 12)
      {
        goto LABEL_158;
      }

      v24 = vbslq_s8(vcltzq_s16(v484), vmvnq_s8(v484), (*&v484 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      v25 = vbslq_s8(vcltzq_s16(v485[0]), vmvnq_s8(v485[0]), (*v485 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      goto LABEL_51;
    case 13:
    case 20:
      v484 = *v3;
      v485[1] = *(v3 + v4);
      v485[0] = *(v3 + 2 * v4);
      v486 = *(v3 + 3 * v4);
      v487 = *(v3 + 4 * v4);
      v488[1] = *(v3 + 5 * v4);
      v488[0] = *(v3 + 6 * v4);
      v489 = *(v3 + 8 * v4 - v4);
      if (v6 == 13)
      {
        v484 = vbslq_s8(vcltzq_s16(v484), vmvnq_s8(v484), (*&v484 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[0] = vbslq_s8(vcltzq_s16(v485[0]), vmvnq_s8(v485[0]), (*v485 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[1] = vbslq_s8(vcltzq_s16(v485[1]), vmvnq_s8(v485[1]), (*&v485[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v486 = vbslq_s8(vcltzq_s16(v486), vmvnq_s8(v486), (*&v486 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v487 = vbslq_s8(vcltzq_s16(v487), vmvnq_s8(v487), (*&v487 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[0] = vbslq_s8(vcltzq_s16(v488[0]), vmvnq_s8(v488[0]), (*v488 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[1] = vbslq_s8(vcltzq_s16(v488[1]), vmvnq_s8(v488[1]), (*&v488[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v489 = vbslq_s8(vcltzq_s16(v489), vmvnq_s8(v489), (*&v489 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      }

      goto LABEL_53;
    case 14:
    case 22:
      v484 = *v3;
      v485[0] = *(v3 + v4);
      v485[1] = *(v3 + 2 * v4);
      v486 = *(v3 + 3 * v4);
      v487 = *(v3 + 4 * v4);
      v488[0] = *(v3 + 5 * v4);
      v488[1] = *(v3 + 6 * v4);
      v489 = *(v3 + 8 * v4 - v4);
      if (v6 == 14)
      {
        v484 = vbslq_s8(vcltzq_s16(v484), vmvnq_s8(v484), (*&v484 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[0] = vbslq_s8(vcltzq_s16(v485[0]), vmvnq_s8(v485[0]), (*v485 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v485[1] = vbslq_s8(vcltzq_s16(v485[1]), vmvnq_s8(v485[1]), (*&v485[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v486 = vbslq_s8(vcltzq_s16(v486), vmvnq_s8(v486), (*&v486 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v487 = vbslq_s8(vcltzq_s16(v487), vmvnq_s8(v487), (*&v487 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[0] = vbslq_s8(vcltzq_s16(v488[0]), vmvnq_s8(v488[0]), (*v488 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v488[1] = vbslq_s8(vcltzq_s16(v488[1]), vmvnq_s8(v488[1]), (*&v488[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
        v489 = vbslq_s8(vcltzq_s16(v489), vmvnq_s8(v489), (*&v489 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      }

      if (v5)
      {
        v20 = vnegq_s32(vdupq_n_s32(v5));
        v484 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v484.i8), v20), vshlq_u32(vmovl_high_u16(v484), v20));
        v485[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[0].i8), v20), vshlq_u32(vmovl_high_u16(v485[0]), v20));
        v485[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[1].i8), v20), vshlq_u32(vmovl_high_u16(v485[1]), v20));
        v486 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v486.i8), v20), vshlq_u32(vmovl_high_u16(v486), v20));
        v487 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v487.i8), v20), vshlq_u32(vmovl_high_u16(v487), v20));
        v488[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[0].i8), v20), vshlq_u32(vmovl_high_u16(v488[0]), v20));
        v488[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[1].i8), v20), vshlq_u32(vmovl_high_u16(v488[1]), v20));
        v489 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v489.i8), v20), vshlq_u32(vmovl_high_u16(v489), v20));
      }

LABEL_88:
      v112 = v484.i16[2];
      v113 = v484.i16[3];
      v114 = v484.i32[3];
      v484.i32[1] = v487.i32[0];
      v484.i32[3] = v487.i32[2];
      v487.i32[2] = v114;
      v115 = v485[0].i16[2];
      LOWORD(v114) = v485[0].i16[3];
      v485[0].i32[1] = v488[0].i32[0];
      v116 = v485[0].i16[6];
      v485[0].i16[6] = v488[0].i16[4];
      v488[0].i16[4] = v116;
      v117 = v485[0].i16[7];
      v485[0].i16[7] = v488[0].i16[5];
      v488[0].i16[5] = v117;
      v118 = v485[1].i16[2];
      v485[1].i16[2] = v488[1].i16[0];
      v488[1].i16[0] = v118;
      v119 = v485[1].i16[3];
      v485[1].i16[3] = v488[1].i16[1];
      v488[1].i16[1] = v119;
      v120 = v488[1].i16[4];
      v488[1].i16[4] = v485[1].i16[6];
      v121 = v488[1].i16[5];
      v488[1].i16[5] = v485[1].i16[7];
      v122 = v486.i16[2];
      v486.i16[2] = v489.i16[0];
      v489.i16[0] = v122;
      v123 = v486.i16[3];
      v486.i16[3] = v489.i16[1];
      v489.i16[1] = v123;
      v124 = v489.i16[4];
      v489.i16[4] = v486.i16[6];
      v99 = v489.i16[5];
      v489.i16[5] = v486.i16[7];
      v125 = v485[1].i16[4];
      v485[1].i16[4] = v112;
      v487.i16[0] = v125;
      v126 = v485[1].i16[5];
      v485[1].i16[5] = v113;
      v487.i16[1] = v126;
      v485[1].i32[3] = v487.i32[1];
      v487.i16[2] = v120;
      v487.i16[3] = v121;
      v127 = v486.i16[4];
      v486.i16[4] = v115;
      v488[0].i16[0] = v127;
      v128 = v486.i16[5];
      v486.i16[5] = v114;
      v488[0].i16[1] = v128;
      v486.i16[6] = v488[0].i16[2];
      v488[0].i16[2] = v124;
      goto LABEL_89;
    case 17:
      v484 = *v3;
      v487 = *(v3 + v4);
      v485[0] = *(v3 + 2 * v4);
      v488[0] = *(v3 + 3 * v4);
      v485[1] = *(v3 + 4 * v4);
      v488[1] = *(v3 + 5 * v4);
      v486 = *(v3 + 6 * v4);
      v489 = *(v3 + 8 * v4 - v4);
      if (v5)
      {
        v451 = vnegq_s32(vdupq_n_s32(v5));
        v484 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v484.i8), v451), vshlq_u32(vmovl_high_u16(v484), v451));
        v485[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[0].i8), v451), vshlq_u32(vmovl_high_u16(v485[0]), v451));
        v485[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[1].i8), v451), vshlq_u32(vmovl_high_u16(v485[1]), v451));
        v486 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v486.i8), v451), vshlq_u32(vmovl_high_u16(v486), v451));
        v487 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v487.i8), v451), vshlq_u32(vmovl_high_u16(v487), v451));
        v488[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[0].i8), v451), vshlq_u32(vmovl_high_u16(v488[0]), v451));
        v488[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[1].i8), v451), vshlq_u32(vmovl_high_u16(v488[1]), v451));
        v489 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v489.i8), v451), vshlq_u32(vmovl_high_u16(v489), v451));
      }

      v452 = v485[1].i16[1];
      v485[1].i16[1] = v484.i16[0];
      v484.i16[0] = v452;
      v453 = v485[1].i16[3];
      v485[1].i16[3] = v484.i16[2];
      v454 = v485[1].i16[5];
      v485[1].i16[5] = v484.i16[4];
      v484.i16[4] = v454;
      v455 = v485[1].i16[7];
      v485[1].i16[7] = v484.i16[6];
      v456 = v486.i16[1];
      v486.i16[1] = v485[0].i16[0];
      v485[0].i16[0] = v456;
      v457 = v486.i16[3];
      v486.i16[3] = v485[0].i16[2];
      v458 = v486.i16[5];
      v486.i16[5] = v485[0].i16[4];
      v485[0].i16[4] = v458;
      v459 = v486.i16[7];
      v486.i16[7] = v485[0].i16[6];
      v460 = v488[1].i16[0];
      v488[1].i16[0] = v487.i16[1];
      v461 = v487.i16[3];
      v487.i16[3] = v488[1].i16[2];
      v488[1].i16[2] = v461;
      v462 = v488[1].i16[4];
      v488[1].i16[4] = v487.i16[5];
      v463 = v487.i16[7];
      v487.i16[7] = v488[1].i16[6];
      v488[1].i16[6] = v463;
      v464 = v489.i16[0];
      v489.i16[0] = v488[0].i16[1];
      v465 = v488[0].i16[3];
      v488[0].i16[3] = v489.i16[2];
      v489.i16[2] = v465;
      v466 = v489.i16[4];
      v489.i16[4] = v488[0].i16[5];
      v467 = v488[0].i16[7];
      v488[0].i16[7] = v489.i16[6];
      v489.i16[6] = v467;
      v484.i16[2] = v487.i16[0];
      v487.i16[0] = v453;
      v468 = v484.i16[3];
      v484.i16[3] = v460;
      v487.i16[1] = v468;
      v484.i16[6] = v487.i16[4];
      v487.i16[4] = v455;
      v469 = v484.i16[7];
      v484.i16[7] = v462;
      v487.i16[5] = v469;
      v485[0].i16[2] = v488[0].i16[0];
      v488[0].i16[0] = v457;
      v470 = v485[0].i16[3];
      v485[0].i16[3] = v464;
      v488[0].i16[1] = v470;
      v485[0].i16[6] = v488[0].i16[4];
      v488[0].i16[4] = v459;
      v471 = v485[0].i16[7];
      v485[0].i16[7] = v466;
      v488[0].i16[5] = v471;
      goto LABEL_164;
    case 19:
      v472 = 0;
      v473 = 0;
      v489 = 0u;
      v487 = 0u;
      memset(v488, 0, sizeof(v488));
      v486 = 0u;
      v474 = 1;
      v484 = 0u;
      memset(v485, 0, sizeof(v485));
      do
      {
        v475 = 0;
        v476 = v474;
        v477 = 2 * v472;
        v478 = 16 * v472;
        do
        {
          v479 = 0;
          v480 = v478;
          do
          {
            if (!(v475 & 3 | v479))
            {
              v473 = (v3->i16 + ((v477 + (v475 >> 2)) * v4));
            }

            v481 = *v473++;
            *(v484.i16 + v480) = v481;
            ++v479;
            v480 += 32;
          }

          while (v479 != 3);
          ++v475;
          v478 += 2;
        }

        while (v475 != 8);
        v474 = 0;
        v472 = 1;
      }

      while ((v476 & 1) != 0);
      if (v5)
      {
        v482 = vnegq_s32(vdupq_n_s32(v5));
        v484 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v484.i8), v482), vshlq_u32(vmovl_high_u16(v484), v482));
        v485[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[0].i8), v482), vshlq_u32(vmovl_high_u16(v485[0]), v482));
        v485[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[1].i8), v482), vshlq_u32(vmovl_high_u16(v485[1]), v482));
        v486 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v486.i8), v482), vshlq_u32(vmovl_high_u16(v486), v482));
        v487 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v487.i8), v482), vshlq_u32(vmovl_high_u16(v487), v482));
        v488[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[0].i8), v482), vshlq_u32(vmovl_high_u16(v488[0]), v482));
      }

      goto LABEL_164;
    case 21:
      v72 = v3[1];
      v484 = *v3;
      v487 = v72;
      v485[1] = *(v3 + v4);
      v488[1] = *(&v3[1] + v4);
      v73 = (v3 + 2 * v4);
      v485[0] = *v73;
      v488[0] = v73[1];
      v74 = (v3 + 3 * v4);
      v486 = *v74;
      v489 = v74[1];
LABEL_53:
      if (v5)
      {
        v75 = vnegq_s32(vdupq_n_s32(v5));
        v484 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v484.i8), v75), vshlq_u32(vmovl_high_u16(v484), v75));
        v485[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[0].i8), v75), vshlq_u32(vmovl_high_u16(v485[0]), v75));
        v485[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[1].i8), v75), vshlq_u32(vmovl_high_u16(v485[1]), v75));
        v486 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v486.i8), v75), vshlq_u32(vmovl_high_u16(v486), v75));
        v487 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v487.i8), v75), vshlq_u32(vmovl_high_u16(v487), v75));
        v488[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[0].i8), v75), vshlq_u32(vmovl_high_u16(v488[0]), v75));
        v488[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[1].i8), v75), vshlq_u32(vmovl_high_u16(v488[1]), v75));
        v489 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v489.i8), v75), vshlq_u32(vmovl_high_u16(v489), v75));
      }

LABEL_71:
      v84 = v484.i16[1];
      v484.i16[1] = v487.i16[0];
      v85 = v484.i16[3];
      v484.i16[3] = v487.i16[2];
      v86 = v484.i16[5];
      v484.i16[5] = v487.i16[4];
      v487.i16[4] = v86;
      v87 = v484.i16[7];
      v484.i16[7] = v487.i16[6];
      v487.i16[6] = v87;
      v88 = v485[0].i16[1];
      v485[0].i16[1] = v488[0].i16[0];
      v89 = v485[0].i16[3];
      v485[0].i16[3] = v488[0].i16[2];
      v90 = v485[0].i16[5];
      v485[0].i16[5] = v488[0].i16[4];
      v488[0].i16[4] = v90;
      v91 = v485[0].i16[7];
      v485[0].i16[7] = v488[0].i16[6];
      v488[0].i16[6] = v91;
      v92 = v485[1].i16[1];
      v485[1].i16[1] = v488[1].i16[0];
      v488[1].i16[0] = v92;
      v93 = v485[1].i16[3];
      v485[1].i16[3] = v488[1].i16[2];
      v488[1].i16[2] = v93;
      v94 = v488[1].i16[4];
      v488[1].i16[4] = v485[1].i16[5];
      v95 = v488[1].i16[6];
      v488[1].i16[6] = v485[1].i16[7];
      v96 = v486.i16[1];
      v486.i16[1] = v489.i16[0];
      v489.i16[0] = v96;
      v97 = v486.i16[3];
      v486.i16[3] = v489.i16[2];
      v489.i16[2] = v97;
      v98 = v489.i16[4];
      v489.i16[4] = v486.i16[5];
      v99 = v489.i16[6];
      v489.i16[6] = v486.i16[7];
      v100 = v485[1].i16[4];
      v485[1].i16[4] = v84;
      v487.i16[0] = v100;
      v485[1].i16[5] = v487.i16[1];
      v487.i16[1] = v94;
      v101 = v485[1].i16[6];
      v485[1].i16[6] = v85;
      v487.i16[2] = v101;
      v485[1].i16[7] = v487.i16[3];
      v487.i16[3] = v95;
      v102 = v486.i16[4];
      v486.i16[4] = v88;
      v488[0].i16[0] = v102;
      v486.i16[5] = v488[0].i16[1];
      v488[0].i16[1] = v98;
      v103 = v486.i16[6];
      v486.i16[6] = v89;
      v488[0].i16[2] = v103;
LABEL_89:
      v486.i16[7] = v488[0].i16[3];
      v488[0].i16[3] = v99;
      goto LABEL_164;
    case 23:
      v69 = v3[1];
      v484 = *v3;
      v487 = v69;
      v485[0] = *(v3 + v4);
      v488[0] = *(&v3[1] + v4);
      v70 = (v3 + 2 * v4);
      v485[1] = *v70;
      v488[1] = v70[1];
      v71 = (v3 + 3 * v4);
      v486 = *v71;
      v489 = v71[1];
      v24 = vbslq_s8(vcltzq_s16(v484), vmvnq_s8(v484), (*&v484 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      v25 = vbslq_s8(vcltzq_s16(v485[0]), vmvnq_s8(v485[0]), (*v485 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
LABEL_51:
      v484 = v24;
      v485[0] = v25;
      v485[1] = vbslq_s8(vcltzq_s16(v485[1]), vmvnq_s8(v485[1]), (*&v485[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      v486 = vbslq_s8(vcltzq_s16(v486), vmvnq_s8(v486), (*&v486 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      v487 = vbslq_s8(vcltzq_s16(v487), vmvnq_s8(v487), (*&v487 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      v488[0] = vbslq_s8(vcltzq_s16(v488[0]), vmvnq_s8(v488[0]), (*v488 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      v488[1] = vbslq_s8(vcltzq_s16(v488[1]), vmvnq_s8(v488[1]), (*&v488[1] | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
      v489 = vbslq_s8(vcltzq_s16(v489), vmvnq_s8(v489), (*&v489 | __PAIR128__(0x8000800080008000, 0x8000800080008000)));
LABEL_158:
      if (v5)
      {
        v225 = vnegq_s32(vdupq_n_s32(v5));
        v484 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v484.i8), v225), vshlq_u32(vmovl_high_u16(v484), v225));
        v485[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[0].i8), v225), vshlq_u32(vmovl_high_u16(v485[0]), v225));
        v485[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v485[1].i8), v225), vshlq_u32(vmovl_high_u16(v485[1]), v225));
        v486 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v486.i8), v225), vshlq_u32(vmovl_high_u16(v486), v225));
        v487 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v487.i8), v225), vshlq_u32(vmovl_high_u16(v487), v225));
        v488[0] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[0].i8), v225), vshlq_u32(vmovl_high_u16(v488[0]), v225));
        v488[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v488[1].i8), v225), vshlq_u32(vmovl_high_u16(v488[1]), v225));
        v489 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v489.i8), v225), vshlq_u32(vmovl_high_u16(v489), v225));
      }

      v226 = v484.i16[2];
      v484.i16[2] = v487.i16[0];
      v487.i16[0] = v226;
      v227 = v484.i16[3];
      v228 = v484.i16[6];
      v484.i16[6] = v487.i16[4];
      v487.i16[4] = v228;
      v229 = v484.i16[7];
      v230 = v485[0].i16[2];
      v485[0].i16[2] = v488[0].i16[0];
      v488[0].i16[0] = v230;
      v231 = v485[0].i16[3];
      v232 = v485[0].i16[6];
      v485[0].i16[6] = v488[0].i16[4];
      v488[0].i16[4] = v232;
      v233 = v485[0].i16[7];
      v234 = v485[1].i16[2];
      v235 = v485[1].i16[3];
      v485[1].i16[3] = v488[1].i16[1];
      v488[1].i16[1] = v235;
      v236 = v485[1].i16[6];
      v237 = v485[1].i16[7];
      v485[1].i16[7] = v488[1].i16[5];
      v488[1].i16[5] = v237;
      v238 = v486.i16[2];
      v239 = v486.i16[3];
      v486.i16[3] = v489.i16[1];
      v489.i16[1] = v239;
      v240 = v486.i16[6];
      v241 = v486.i16[7];
      v486.i16[7] = v489.i16[5];
      v489.i16[5] = v241;
      v242 = v484.i16[1];
      v484.i16[1] = v485[1].i16[0];
      v485[1].i16[0] = v242;
      v484.i16[3] = v488[1].i16[0];
      v485[1].i16[2] = v487.i16[1];
      v243 = v484.i16[5];
      v484.i16[5] = v485[1].i16[4];
      v485[1].i16[4] = v243;
      v484.i16[7] = v488[1].i16[4];
      v485[1].i16[6] = v487.i16[5];
      v244 = v485[0].i16[1];
      v485[0].i16[1] = v486.i16[0];
      v486.i16[0] = v244;
      v485[0].i16[3] = v489.i16[0];
      v486.i16[2] = v488[0].i16[1];
      v245 = v485[0].i16[5];
      v485[0].i16[5] = v486.i16[4];
      v486.i16[4] = v245;
      v485[0].i16[7] = v489.i16[4];
      v486.i16[6] = v488[0].i16[5];
      v487.i16[1] = v234;
      v488[1].i16[0] = v227;
      v246 = v487.i16[3];
      v487.i16[3] = v488[1].i16[2];
      v488[1].i16[2] = v246;
      v487.i16[5] = v236;
      v488[1].i16[4] = v229;
      v247 = v487.i16[7];
      v487.i16[7] = v488[1].i16[6];
      v488[1].i16[6] = v247;
      v488[0].i16[1] = v238;
      v489.i16[0] = v231;
      v248 = v488[0].i16[3];
      v488[0].i16[3] = v489.i16[2];
      v489.i16[2] = v248;
      v488[0].i16[5] = v240;
      v489.i16[4] = v233;
LABEL_163:
      v264 = v488[0].i16[7];
      v488[0].i16[7] = v489.i16[6];
      v489.i16[6] = v264;
      goto LABEL_164;
    default:
      return 4294951891;
  }

  do
  {
    v413 = *v411;
    v411 += 4;
    v412 = v413;
    if ((v413 + 2) >= 5u)
    {
      if (v371 >> 15)
      {
        v10 = 4294951894;
        if (v372 != 16)
        {
          return v10;
        }
      }

      else
      {
        if (!(v381 >> 15))
        {
          if (!(v390 >> 15))
          {
            v415 = *(a1 + 66);
            if (v415 <= 0xF)
            {
              *v2 = v409 + 64;
              v2[1] = *(a1 + 42) + 16 * *(a1 + 50);
              v419 = (v2 + 3);
              v2[2] = *(a1 + 58) + 16 * *(a1 + 66);
              goto LABEL_303;
            }

            goto LABEL_293;
          }

          if (HIWORD(v390))
          {
            return 4294951894;
          }

LABEL_292:
          v415 = *(a1 + 66);
LABEL_293:
          if (v415 <= 0x10)
          {
            *v2 = v409 + 80;
            v416 = *(a1 + 42) + (*(a1 + 50) << 6);
            v417 = v416 + (*(a1 + 58) << 12);
            v418 = v417 + (*(a1 + 66) << 18);
            v2[1] = v416;
            v2[2] = BYTE1(v417);
            v419 = (v2 + 4);
            v2[3] = BYTE2(v418);
            goto LABEL_303;
          }

          return 4294951894;
        }

        v10 = 4294951894;
      }

      if (HIWORD(v381) || HIWORD(v390))
      {
        return v10;
      }

      goto LABEL_292;
    }

    if (v412)
    {
      v406 = v405;
      ++v408;
    }

    v407 = 5 * v407 + v412 + 2;
    ++v405;
  }

  while (v405 != 4);
  if (v408 == 1)
  {
    v420 = *(v265 + 8 * v406 + 2);
    v421 = v420 == 0xFFFF || v420 == 1;
    if (!v421)
    {
      goto LABEL_302;
    }

    v414 = (((v420 >> 11) & 0x10 | (32 * v406)) ^ 0x80) + v409;
LABEL_301:
    *v2 = v414;
    v419 = (v2 + 1);
  }

  else
  {
    if (!v408)
    {
      LOBYTE(v414) = v409 + 48;
      goto LABEL_301;
    }

LABEL_302:
    *v2 = ((v407 >> 4) & 0xF0) + v409;
    v419 = (v2 + 2);
    v2[1] = v407;
  }

LABEL_303:
  v422 = (a1 + 46);
  v423 = 4;
  while (2)
  {
    if (v409)
    {
      if (v6 <= 5)
      {
        LOWORD(v424) = *v422;
        goto LABEL_312;
      }

      v425 = v422[1];
      if (v425 >= 0)
      {
        v424 = v422[1];
      }

      else
      {
        v424 = -v425;
      }

      v426 = (v425 >> 9) & 0x40;
      if (v424 > 0x3F)
      {
        if ((v424 & 0xC000) != 0)
        {
          v429 = *v422;
          *v419 = 0;
          v428 = (v419 + 2);
          *(v419 + 1) = v429;
          v424 = v429 >> 8;
          v427 = 3;
        }

        else
        {
          *v419 = v424 & 0x3F | v426 | 0x80;
          v428 = (v419 + 1);
          LOWORD(v424) = v424 >> 6;
          v427 = 2;
        }
      }

      else
      {
        LOBYTE(v424) = v426 | v424;
LABEL_312:
        v427 = 1;
        v428 = v419;
      }

      v419 = (v419 + v427);
      *v428 = v424;
    }

    v409 >>= 1;
    v422 += 4;
    if (--v423)
    {
      continue;
    }

    break;
  }

  if (!v419)
  {
    return 4294951894;
  }

  v430 = (a1 + 46);
  v431 = vld1q_dup_s16(v430);
  v484 = vsubq_s16(v484, v431);
  v485[0] = vsubq_s16(v485[0], v431);
  v432 = (a1 + 54);
  v433 = vld1q_dup_s16(v432);
  v485[1] = vsubq_s16(v485[1], v433);
  v486 = vsubq_s16(v486, v433);
  v434 = (a1 + 62);
  v435 = vld1q_dup_s16(v434);
  v487 = vsubq_s16(v487, v435);
  v488[0] = vsubq_s16(v488[0], v435);
  if (v6 == 19 || (v442 = (a1 + 70), v443 = vld1q_dup_s16(v442), v488[1] = vsubq_s16(v488[1], v443), v489 = vsubq_s16(v489, v443), v6 > 16) || !*(a1 + 108))
  {
    v436 = vectorWritePacked(v419, &v484, *(a1 + 42));
    v437 = vectorWritePacked(v436, v485, *(a1 + 42));
    v438 = vectorWritePacked(v437, v485[1].i64, *(a1 + 50));
    v439 = vectorWritePacked(v438, &v486, *(a1 + 50));
    v440 = vectorWritePacked(v439, &v487, *(a1 + 58));
    v419 = vectorWritePacked(v440, v488, *(a1 + 58));
    if (v6 != 19)
    {
      v441 = vectorWritePacked(v419, v488[1].i64, *(a1 + 66));
      v419 = vectorWritePacked(v441, &v489, *(a1 + 66));
    }
  }

  else
  {
    v444 = 0;
    v445 = v485;
    do
    {
      v446 = *(v265 + v444);
      v447 = *(a1 + 108) * v446;
      v483 = vnegq_s32(vdupq_n_s32(v447 / 8));
      *v445[-2].i8 = vuzp1q_s16(vshlq_u32(vmovl_u16(v445[-2]), v483), vshlq_u32(vmovl_high_u16(*v445[-2].i8), v483));
      v448 = v446 - v447 / 8;
      v449 = vectorWritePacked(v419, &v445[-2], v448);
      *v445->i8 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v445), v483), vshlq_u32(vmovl_high_u16(*v445->i8), v483));
      v419 = vectorWritePacked(v449, v445, v448);
      v445 += 4;
      v444 += 8;
    }

    while (v444 != 32);
  }

  v10 = 0;
  *(a1 + 16) = v419;
  return v10;
}

unsigned int *vectorload_4x16_packed10(unsigned int *a1, int a2, int a3, _WORD *a4)
{
  vectorload_1x16_packed10(a1, a2, a4, a4 + 32);
  vectorload_1x16_packed10((a1 + a3), a2, a4 + 8, a4 + 40);
  vectorload_1x16_packed10((a1 + 2 * a3), a2, a4 + 16, a4 + 48);

  return vectorload_1x16_packed10((a1 + 3 * a3), a2, a4 + 24, a4 + 56);
}

double SlimXDecodeBlocks_C(uint64_t a1)
{
  v1 = a1;
  v596 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 108);
  if (v2 >= 8)
  {
    goto LABEL_411;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v4 >= v3)
  {
    goto LABEL_411;
  }

  v582 = &v593.i8[6];
  v581 = (v593.i64 + 2);
  v580 = &v592.i8[12];
  v579 = &v592.i64[1];
  v586 = &v591[10];
  v578 = &v591[6];
  v585 = (&v590 | 0xA);
  v577 = &v591[2];
  v576 = &v591[28];
  v575 = &v591[24];
  v574 = &v590.i16[3];
  v573 = (v590.i64 + 2);
  v5 = *(a1 + 32);
  v6 = predictionPattern_0[v5];
  v7 = (v4 + 2);
  v587 = *(a1 + 36);
  v8 = *a1;
  v9 = *(a1 + 12);
  v10 = a1 + 42;
  while (1)
  {
    v11 = v7 - 1;
    *(a1 + 16) = v7 - 1;
    v12 = *(v7 - 2);
    v13 = v12 & 0xF;
    v14 = v12 >> 4;
    if (v12 >> 4 != 6)
    {
      break;
    }

    if (v13 < 8)
    {
      v15 = 10 - v13;
      if ((v12 & 0xF) == 0)
      {
        v15 = 0;
      }

      *(a1 + 108) = v13;
      *(a1 + 112) = v15;
      ++v7;
      v2 = v12 & 0xF;
      if (v11 != v3)
      {
        continue;
      }
    }

    goto LABEL_411;
  }

  if (v12 >> 4 <= 2)
  {
    if (v14 < 3)
    {
      if (v11 >= v3)
      {
        goto LABEL_411;
      }

      *(a1 + 16) = v7;
      v21 = *(v7 - 1) | (v14 << 8);
      v22 = v21;
      v23 = v21 % 5u;
      *(v1 + 68) = v21 % 5u;
      v24 = (v21 / 5u) % 5u;
      *(v1 + 60) = v24;
      v25 = ((((v21 - ((18351 * v22) >> 16)) >> 1) + ((18351 * v22) >> 16)) >> 4) % 5u;
      *(v1 + 52) = v25;
      v26 = (((v21 - ((1573 * v22) >> 16)) >> 1) + ((1573 * v22) >> 16)) >> 6;
      if (v22 >= 0x271)
      {
        LOWORD(v26) = v26 - 5;
      }

      *(v1 + 44) = v26;
      goto LABEL_30;
    }
  }

  else
  {
    if (v12 >> 4 <= 4)
    {
      if (v14 == 3)
      {
        v17 = *(v10 + ((v6 >> 9) & 0x7FFFF8));
        *(a1 + 42) = v17;
        LOWORD(v18) = *(v10 + 8 * ((v6 >> 8) & 0xF));
        *(a1 + 50) = v18;
        LOWORD(v20) = *(v10 + 8 * (v6 >> 4));
        *(a1 + 58) = v20;
        LOWORD(a1) = *(v10 + 8 * (v6 & 0xF));
      }

      else
      {
        if (v11 >= v3)
        {
          goto LABEL_411;
        }

        *(a1 + 16) = v7;
        v16 = *(v7 - 1);
        v17 = v16 & 0xF;
        *(a1 + 42) = v17;
        v18 = v16 >> 4;
        *(a1 + 50) = v16 >> 4;
        if (v7 >= v3)
        {
          goto LABEL_411;
        }

        v11 = v7 + 1;
        *(a1 + 16) = v7 + 1;
        v19 = *v7;
        LOWORD(v20) = v19 & 0xF;
        *(a1 + 58) = v20;
        LODWORD(a1) = v19 >> 4;
      }

      *(v1 + 66) = a1;
      v7 = v11;
      goto LABEL_31;
    }

    if (v14 == 5)
    {
      if (v11 >= v3)
      {
        goto LABEL_411;
      }

      *(a1 + 16) = v7;
      if (v7 >= v3)
      {
        goto LABEL_411;
      }

      v27 = *(v7 - 1);
      *(a1 + 16) = v7 + 1;
      if ((v7 + 1) >= v3)
      {
        goto LABEL_411;
      }

      v28 = *v7;
      v29 = v7 + 2;
      *(a1 + 16) = v7 + 2;
      v30 = v7[1];
      v31 = (v28 << 8) | (v30 << 16);
      v17 = v27 & 0x3F;
      v32 = v27 & 0xFFFF00FF | (v28 << 8);
      *(v1 + 42) = v17;
      v18 = (v32 >> 6) & 0x3F;
      *(v1 + 50) = (v32 >> 6) & 0x3F;
      v20 = (v31 >> 12) & 0x3F;
      *(v1 + 58) = (v31 >> 12) & 0x3F;
      LODWORD(a1) = v30 >> 2;
      *(v1 + 66) = v30 >> 2;
      v7 = v29;
      goto LABEL_31;
    }

    if (v14 == 7)
    {
      goto LABEL_411;
    }
  }

  *(a1 + 68) = 2;
  *(a1 + 60) = 2;
  *(a1 + 52) = 2;
  *(a1 + 44) = 2;
  *(v10 + 8 * ((v12 >> 5) & 3) + 2) = (2 * ((v12 & 0x10) != 0)) ^ 3;
  LOWORD(v26) = *(a1 + 44);
  v25 = *(a1 + 52);
  v24 = *(a1 + 60);
  v23 = *(a1 + 68);
  --v7;
LABEL_30:
  v17 = v26 + *(v10 + ((v6 >> 9) & 0x7FFFF8)) - 2;
  *(v1 + 42) = v17;
  LOWORD(v18) = v25 + *(v10 + 8 * ((v6 >> 8) & 0xF)) - 2;
  *(v1 + 50) = v18;
  LOWORD(v20) = v24 + *(v10 + 8 * (v6 >> 4)) - 2;
  *(v1 + 58) = v20;
  LOWORD(a1) = v23 + *(v10 + 8 * (v6 & 0xF)) - 2;
  *(v1 + 66) = a1;
LABEL_31:
  if (v5 >= 6)
  {
    v33 = 16;
  }

  else
  {
    v33 = 8;
  }

  if (v33 < v17 || v33 < v18 || v33 < v20 || v33 < a1)
  {
    goto LABEL_411;
  }

  v34 = 12;
  for (i = 46; i != 78; i += 8)
  {
    if ((v13 & 1) == 0)
    {
      LOWORD(v36) = 0;
LABEL_41:
      *(v1 + i) = *(v10 + 8 * ((v6 >> v34) & 3) + 4) + v36;
      v37 = v7;
      goto LABEL_53;
    }

    if (v7 >= v3)
    {
      goto LABEL_411;
    }

    v37 = v7 + 1;
    *(v1 + 16) = v7 + 1;
    v36 = *v7;
    if (v5 > 5)
    {
      if (*v7)
      {
        if ((v36 & 0x80) != 0)
        {
          if (v37 >= v3)
          {
            goto LABEL_411;
          }

          v39 = v7 + 2;
          *(v1 + 16) = v7 + 2;
          v40 = v36 & 0x3F | (v7[1] << 6);
          if ((v36 & 0x40) != 0)
          {
            v36 = -v40;
          }

          else
          {
            LOWORD(v36) = v40;
          }

          v7 = v39;
        }

        else
        {
          if (v36 >= 0x40)
          {
            v36 = -(v36 & 0x3F);
          }

          ++v7;
        }

        goto LABEL_41;
      }

      if (v37 >= v3)
      {
        goto LABEL_411;
      }

      *(v1 + 16) = v7 + 2;
      v38 = v7[1];
      *(v1 + i) = v38;
      if ((v7 + 2) >= v3)
      {
        goto LABEL_411;
      }

      v37 = v7 + 3;
      *(v1 + 16) = v7 + 3;
      *(v1 + i) = v38 | (v7[2] << 8);
    }

    else
    {
      *(v1 + i) = v36;
    }

LABEL_53:
    v13 >>= 1;
    v34 -= 4;
    v7 = v37;
  }

  v567 = &v594[24];
  v568 = &v594[28];
  v583 = &v593.i8[10];
  v584 = &v594[10];
  v569 = &v594[2];
  v570 = &v594[6];
  v571 = &v595.i64[1];
  v572 = &v595.i8[12];
  if (v5 <= 0x10 && v2)
  {
    v41 = &v590;
    for (j = 42; j != 74; j += 8)
    {
      v43 = *(v1 + j);
      v44 = *(v1 + 108) * v43 + 7;
      v45 = *(v1 + 108) * v43 / 8;
      v46 = v43 - v45;
      vectorReadPacked(v1, v41, v43 - v45);
      v47 = vdupq_n_s32(v45);
      v48 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v41), v47), vshlq_u32(vmovl_high_u16(*v41->i8), v47));
      if (v44 >= 0xF)
      {
        v49 = 1 << (v45 - 1);
      }

      else
      {
        v49 = 0;
      }

      v588 = vdupq_n_s16(v49);
      v589 = v47;
      *v41->i8 = vaddq_s16(v588, v48);
      vectorReadPacked(v1, &v41[2], v46);
      *v41[2].i8 = vaddq_s16(v588, vuzp1q_s16(vshlq_u32(vmovl_u16(v41[2]), v589), vshlq_u32(vmovl_high_u16(*v41[2].i8), v589)));
      v41 += 4;
    }
  }

  else
  {
    vectorReadPacked(v1, &v590, v17);
    vectorReadPacked(v1, v591, *(v1 + 42));
    vectorReadPacked(v1, &v591[16], *(v1 + 50));
    vectorReadPacked(v1, &v592, *(v1 + 50));
    vectorReadPacked(v1, &v593, *(v1 + 58));
    vectorReadPacked(v1, v594, *(v1 + 58));
    if (*(v1 + 32) != 19)
    {
      vectorReadPacked(v1, &v594[16], *(v1 + 66));
      vectorReadPacked(v1, &v595, *(v1 + 66));
    }
  }

  v50 = (v1 + 46);
  v51 = vld1q_dup_s16(v50);
  v52 = (v1 + 54);
  v53 = vld1q_dup_s16(v52);
  v590 = vaddq_s16(v590, v51);
  *v591 = vaddq_s16(*v591, v51);
  *&v591[16] = vaddq_s16(*&v591[16], v53);
  v592 = vaddq_s16(v592, v53);
  v54 = (v1 + 62);
  v55 = vld1q_dup_s16(v54);
  v56 = vaddq_s16(v593, v55);
  v57 = vaddq_s16(*v594, v55);
  v593 = v56;
  *v594 = v57;
  v58 = *(v1 + 32);
  if (v58 == 19)
  {
    if (!*(v1 + 108))
    {
LABEL_72:
      if (v587)
      {
        v59 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v59), vshlq_u32(vmovl_high_u16(v590), v59));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v59), vshlq_u32(vmovl_high_u16(*v591), v59));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v59), vshlq_u32(vmovl_high_u16(*&v591[16]), v59));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v59), vshlq_u32(vmovl_high_u16(v592), v59));
        v60 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v59), vshlq_u32(vmovl_high_u16(v593), v59));
        v57 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v59), vshlq_u32(vmovl_high_u16(*v594), v59));
        v593 = v60;
        *v594 = v57;
      }

      v61 = 0;
      v62 = 0;
      v63 = 1;
      do
      {
        v64 = 0;
        v65 = v63;
        v66 = 2 * v61;
        v67 = &v590 + v61;
        do
        {
          v68 = 0;
          v69 = v67;
          do
          {
            if (!(v64 & 3 | v68))
            {
              v62 = (v8->i16 + ((v66 + (v64 >> 2)) * v9));
            }

            v70 = v69->i16[0];
            v69 += 2;
            *v62++ = v70;
            ++v68;
          }

          while (v68 != 3);
          ++v64;
          v67 = (v67 + 2);
        }

        while (v64 != 8);
        v63 = 0;
        v61 = 1;
      }

      while ((v65 & 1) != 0);
      return *v57.i64;
    }

LABEL_112:
    v79 = *(v1 + 112);
    if (v79)
    {
      v80 = 1 << (v79 - 1);
      v81 = vdupq_n_s16(v80 - 1);
      v82 = vdupq_n_s16(v80);
      v83 = v590;
      v84 = vnegq_s32(vdupq_n_s32(v79 - 1));
      v85 = vshlq_u32(vmovl_u16(*v590.i8), v84);
      v86.i64[0] = 0x100000001;
      v86.i64[1] = 0x100000001;
      v87 = vmovn_s32(vcgtq_u32(v85, v86));
      v88 = vaddq_s16(vandq_s8(v590, v81), v82);
      v89.i64[0] = -1;
      v89.i64[1] = -1;
      v90 = vshlq_u32(vmovl_u16(*v88.i8), vaddq_s32(v85, v89));
      if (vuzp1_s8(v87, *v84.i8).u8[0])
      {
        v590.i16[0] = (v90.u16[0] >> v79) + v90.i16[0];
      }

      v91 = vmovl_high_u16(v83);
      if (vuzp1_s8(v87, *&v84).i8[1])
      {
        v590.i16[1] = (v90.u16[2] >> v79) + v90.i16[2];
      }

      v92 = vshlq_u32(v91, v84);
      v93.i64[0] = 0x100000001;
      v93.i64[1] = 0x100000001;
      v94 = vmovn_s32(vcgtq_u32(v85, v93));
      if (vuzp1_s8(v94, *&v84).i8[2])
      {
        v590.i16[2] = (v90.u16[4] >> v79) + v90.i16[4];
      }

      v95 = vaddq_s32(v92, v89);
      v96 = vmovl_high_u16(v88);
      if (vuzp1_s8(v94, *&v84).i8[3])
      {
        v590.i16[3] = (v90.u16[6] >> v79) + v90.i16[6];
      }

      v97 = vshlq_u32(v96, v95);
      v98.i64[0] = 0x100000001;
      v98.i64[1] = 0x100000001;
      v99 = vmovn_s32(vcgtq_u32(v92, v98));
      if (vuzp1_s8(*&v84, v99).i32[1])
      {
        v590.i16[4] = (v97.u16[0] >> v79) + v97.i16[0];
      }

      if (vuzp1_s8(*&v84, v99).i8[5])
      {
        v590.i16[5] = (v97.u16[2] >> v79) + v97.i16[2];
      }

      v100.i64[0] = 0x100000001;
      v100.i64[1] = 0x100000001;
      if (vuzp1_s8(*&v84, vmovn_s32(vcgtq_u32(*&v92, v100))).i8[6])
      {
        v590.i16[6] = (v97.u16[4] >> v79) + v97.i16[4];
        v590.i16[7] = (v97.u16[6] >> v79) + v97.i16[6];
      }

      v101 = *v591;
      v102 = vshlq_u32(vmovl_u16(*v591), v84);
      v103.i64[0] = 0x100000001;
      v103.i64[1] = 0x100000001;
      v104 = vmovn_s32(vcgtq_u32(v102, v103));
      v105 = vaddq_s16(vandq_s8(*v591, v81), v82);
      v106.i64[0] = -1;
      v106.i64[1] = -1;
      v107 = vshlq_u32(vmovl_u16(*v105.i8), vaddq_s32(v102, v106));
      if (vuzp1_s8(v104, *v84.i8).u8[0])
      {
        *v591 = (v107.u16[0] >> v79) + v107.i16[0];
      }

      v108 = vmovl_high_u16(v101);
      if (vuzp1_s8(v104, *&v84).i8[1])
      {
        *&v591[2] = (v107.u16[2] >> v79) + v107.i16[2];
      }

      v109 = vshlq_u32(v108, v84);
      v110.i64[0] = 0x100000001;
      v110.i64[1] = 0x100000001;
      v111 = vmovn_s32(vcgtq_u32(v102, v110));
      if (vuzp1_s8(v111, *&v84).i8[2])
      {
        *&v591[4] = (v107.u16[4] >> v79) + v107.i16[4];
      }

      v112 = vaddq_s32(v109, v106);
      v113 = vmovl_high_u16(v105);
      if (vuzp1_s8(v111, *&v84).i8[3])
      {
        *&v591[6] = (v107.u16[6] >> v79) + v107.i16[6];
      }

      v114 = vshlq_u32(v113, v112);
      v115.i64[0] = 0x100000001;
      v115.i64[1] = 0x100000001;
      v116 = vmovn_s32(vcgtq_u32(v109, v115));
      if (vuzp1_s8(*&v84, v116).i32[1])
      {
        *&v591[8] = (v114.u16[0] >> v79) + v114.i16[0];
      }

      if (vuzp1_s8(*&v84, v116).i8[5])
      {
        *&v591[10] = (v114.u16[2] >> v79) + v114.i16[2];
      }

      v117.i64[0] = 0x100000001;
      v117.i64[1] = 0x100000001;
      if (vuzp1_s8(*&v84, vmovn_s32(vcgtq_u32(*&v109, v117))).i8[6])
      {
        *&v591[12] = (v114.u16[4] >> v79) + v114.i16[4];
        *&v591[14] = (v114.u16[6] >> v79) + v114.i16[6];
      }

      v118 = *&v591[16];
      v119 = vshlq_u32(vmovl_u16(*&v591[16]), v84);
      v120.i64[0] = 0x100000001;
      v120.i64[1] = 0x100000001;
      v121 = vmovn_s32(vcgtq_u32(v119, v120));
      v122 = vaddq_s16(vandq_s8(*&v591[16], v81), v82);
      v123.i64[0] = -1;
      v123.i64[1] = -1;
      v124 = vshlq_u32(vmovl_u16(*v122.i8), vaddq_s32(v119, v123));
      if (vuzp1_s8(v121, *v84.i8).u8[0])
      {
        *&v591[16] = (v124.u16[0] >> v79) + v124.i16[0];
      }

      v125 = vmovl_high_u16(v118);
      if (vuzp1_s8(v121, *&v84).i8[1])
      {
        *&v591[18] = (v124.u16[2] >> v79) + v124.i16[2];
      }

      v126 = vshlq_u32(v125, v84);
      v127.i64[0] = 0x100000001;
      v127.i64[1] = 0x100000001;
      v128 = vmovn_s32(vcgtq_u32(v119, v127));
      if (vuzp1_s8(v128, *&v84).i8[2])
      {
        *&v591[20] = (v124.u16[4] >> v79) + v124.i16[4];
      }

      v129 = vaddq_s32(v126, v123);
      v130 = vmovl_high_u16(v122);
      if (vuzp1_s8(v128, *&v84).i8[3])
      {
        *&v591[22] = (v124.u16[6] >> v79) + v124.i16[6];
      }

      v131 = vshlq_u32(v130, v129);
      v132.i64[0] = 0x100000001;
      v132.i64[1] = 0x100000001;
      v133 = vmovn_s32(vcgtq_u32(v126, v132));
      if (vuzp1_s8(*&v84, v133).i32[1])
      {
        *&v591[24] = (v131.u16[0] >> v79) + v131.i16[0];
      }

      if (vuzp1_s8(*&v84, v133).i8[5])
      {
        *&v591[26] = (v131.u16[2] >> v79) + v131.i16[2];
      }

      v134.i64[0] = 0x100000001;
      v134.i64[1] = 0x100000001;
      if (vuzp1_s8(*&v84, vmovn_s32(vcgtq_u32(*&v126, v134))).i8[6])
      {
        *&v591[28] = (v131.u16[4] >> v79) + v131.i16[4];
        *&v591[30] = (v131.u16[6] >> v79) + v131.i16[6];
      }

      v135 = v592;
      v136 = vshlq_u32(vmovl_u16(*v592.i8), v84);
      v137.i64[0] = 0x100000001;
      v137.i64[1] = 0x100000001;
      v138 = vmovn_s32(vcgtq_u32(v136, v137));
      v139 = vaddq_s16(vandq_s8(v592, v81), v82);
      v140.i64[0] = -1;
      v140.i64[1] = -1;
      v141 = vshlq_u32(vmovl_u16(*v139.i8), vaddq_s32(v136, v140));
      if (vuzp1_s8(v138, *v84.i8).u8[0])
      {
        v592.i16[0] = (v141.u16[0] >> v79) + v141.i16[0];
      }

      v142 = vmovl_high_u16(v135);
      if (vuzp1_s8(v138, *&v84).i8[1])
      {
        v592.i16[1] = (v141.u16[2] >> v79) + v141.i16[2];
      }

      v143 = vshlq_u32(v142, v84);
      v144.i64[0] = 0x100000001;
      v144.i64[1] = 0x100000001;
      v145 = vmovn_s32(vcgtq_u32(v136, v144));
      if (vuzp1_s8(v145, *&v84).i8[2])
      {
        v592.i16[2] = (v141.u16[4] >> v79) + v141.i16[4];
      }

      v146 = vaddq_s32(v143, v140);
      v147 = vmovl_high_u16(v139);
      if (vuzp1_s8(v145, *&v84).i8[3])
      {
        v592.i16[3] = (v141.u16[6] >> v79) + v141.i16[6];
      }

      v148 = vshlq_u32(v147, v146);
      v149.i64[0] = 0x100000001;
      v149.i64[1] = 0x100000001;
      v150 = vmovn_s32(vcgtq_u32(v143, v149));
      if (vuzp1_s8(*&v84, v150).i32[1])
      {
        v592.i16[4] = (v148.u16[0] >> v79) + v148.i16[0];
      }

      if (vuzp1_s8(*&v84, v150).i8[5])
      {
        v592.i16[5] = (v148.u16[2] >> v79) + v148.i16[2];
      }

      v151.i64[0] = 0x100000001;
      v151.i64[1] = 0x100000001;
      if (vuzp1_s8(*&v84, vmovn_s32(vcgtq_u32(*&v143, v151))).i8[6])
      {
        v592.i16[6] = (v148.u16[4] >> v79) + v148.i16[4];
        v592.i16[7] = (v148.u16[6] >> v79) + v148.i16[6];
      }

      v152 = v593;
      v153 = vshlq_u32(vmovl_u16(*v593.i8), v84);
      v154.i64[0] = 0x100000001;
      v154.i64[1] = 0x100000001;
      v155 = vmovn_s32(vcgtq_u32(v153, v154));
      v156 = vaddq_s16(vandq_s8(v593, v81), v82);
      v157.i64[0] = -1;
      v157.i64[1] = -1;
      v158 = vshlq_u32(vmovl_u16(*v156.i8), vaddq_s32(v153, v157));
      if (vuzp1_s8(v155, *v84.i8).u8[0])
      {
        v593.i16[0] = (v158.u16[0] >> v79) + v158.i16[0];
      }

      v159 = vmovl_high_u16(v152);
      if (vuzp1_s8(v155, *&v84).i8[1])
      {
        v593.i16[1] = (v158.u16[2] >> v79) + v158.i16[2];
      }

      v160 = vshlq_u32(v159, v84);
      v161.i64[0] = 0x100000001;
      v161.i64[1] = 0x100000001;
      v162 = vmovn_s32(vcgtq_u32(v153, v161));
      if (vuzp1_s8(v162, *&v84).i8[2])
      {
        v593.i16[2] = (v158.u16[4] >> v79) + v158.i16[4];
      }

      v163 = vaddq_s32(v160, v157);
      v164 = vmovl_high_u16(v156);
      if (vuzp1_s8(v162, *&v84).i8[3])
      {
        v593.i16[3] = (v158.u16[6] >> v79) + v158.i16[6];
      }

      v165 = vshlq_u32(v164, v163);
      v166.i64[0] = 0x100000001;
      v166.i64[1] = 0x100000001;
      v167 = vmovn_s32(vcgtq_u32(v160, v166));
      if (vuzp1_s8(*&v84, v167).i32[1])
      {
        v593.i16[4] = (v165.u16[0] >> v79) + v165.i16[0];
      }

      if (vuzp1_s8(*&v84, v167).i8[5])
      {
        v593.i16[5] = (v165.u16[2] >> v79) + v165.i16[2];
      }

      v168.i64[0] = 0x100000001;
      v168.i64[1] = 0x100000001;
      if (vuzp1_s8(*&v84, vmovn_s32(vcgtq_u32(*&v160, v168))).i8[6])
      {
        v593.i16[6] = (v165.u16[4] >> v79) + v165.i16[4];
        v593.i16[7] = (v165.u16[6] >> v79) + v165.i16[6];
      }

      v169 = *v594;
      v170 = vshlq_u32(vmovl_u16(*v594), v84);
      v171.i64[0] = 0x100000001;
      v171.i64[1] = 0x100000001;
      v172 = vmovn_s32(vcgtq_u32(v170, v171));
      v173 = vaddq_s16(vandq_s8(*v594, v81), v82);
      v174.i64[0] = -1;
      v174.i64[1] = -1;
      v175 = vshlq_u32(vmovl_u16(*v173.i8), vaddq_s32(v170, v174));
      if (vuzp1_s8(v172, *v84.i8).u8[0])
      {
        *v594 = (v175.u16[0] >> v79) + v175.i16[0];
      }

      v176 = vmovl_high_u16(v169);
      if (vuzp1_s8(v172, *&v84).i8[1])
      {
        *&v594[2] = (v175.u16[2] >> v79) + v175.i16[2];
      }

      v177 = vshlq_u32(v176, v84);
      v178.i64[0] = 0x100000001;
      v178.i64[1] = 0x100000001;
      v179 = vmovn_s32(vcgtq_u32(v170, v178));
      if (vuzp1_s8(v179, *&v84).i8[2])
      {
        *&v594[4] = (v175.u16[4] >> v79) + v175.i16[4];
      }

      v180 = vaddq_s32(v177, v174);
      v181 = vmovl_high_u16(v173);
      if (vuzp1_s8(v179, *&v84).i8[3])
      {
        *&v594[6] = (v175.u16[6] >> v79) + v175.i16[6];
      }

      v182 = vshlq_u32(v181, v180);
      v183.i64[0] = 0x100000001;
      v183.i64[1] = 0x100000001;
      v184 = vmovn_s32(vcgtq_u32(v177, v183));
      if (vuzp1_s8(*&v84, v184).i32[1])
      {
        *&v594[8] = (v182.u16[0] >> v79) + v182.i16[0];
      }

      if (vuzp1_s8(*&v84, v184).i8[5])
      {
        *&v594[10] = (v182.u16[2] >> v79) + v182.i16[2];
      }

      v185.i64[0] = 0x100000001;
      v185.i64[1] = 0x100000001;
      if (vuzp1_s8(*&v84, vmovn_s32(vcgtq_u32(*&v177, v185))).i8[6])
      {
        *&v594[12] = (v182.u16[4] >> v79) + v182.i16[4];
        *&v594[14] = (v182.u16[6] >> v79) + v182.i16[6];
      }

      v186 = *&v594[16];
      v187 = vshlq_u32(vmovl_u16(*&v594[16]), v84);
      v188.i64[0] = 0x100000001;
      v188.i64[1] = 0x100000001;
      v189 = vmovn_s32(vcgtq_u32(v187, v188));
      v190 = vaddq_s16(vandq_s8(*&v594[16], v81), v82);
      v191.i64[0] = -1;
      v191.i64[1] = -1;
      v192 = vshlq_u32(vmovl_u16(*v190.i8), vaddq_s32(v187, v191));
      if (vuzp1_s8(v189, *v84.i8).u8[0])
      {
        *&v594[16] = (v192.u16[0] >> v79) + v192.i16[0];
      }

      v193 = vmovl_high_u16(v186);
      if (vuzp1_s8(v189, *&v84).i8[1])
      {
        *&v594[18] = (v192.u16[2] >> v79) + v192.i16[2];
      }

      v194 = vshlq_u32(v193, v84);
      v195.i64[0] = 0x100000001;
      v195.i64[1] = 0x100000001;
      v196 = vmovn_s32(vcgtq_u32(v187, v195));
      if (vuzp1_s8(v196, *&v84).i8[2])
      {
        *&v594[20] = (v192.u16[4] >> v79) + v192.i16[4];
      }

      v197 = vaddq_s32(v194, v191);
      v198 = vmovl_high_u16(v190);
      if (vuzp1_s8(v196, *&v84).i8[3])
      {
        *&v594[22] = (v192.u16[6] >> v79) + v192.i16[6];
      }

      v199 = vshlq_u32(v198, v197);
      v200.i64[0] = 0x100000001;
      v200.i64[1] = 0x100000001;
      v201 = vmovn_s32(vcgtq_u32(v194, v200));
      if (vuzp1_s8(*&v84, v201).i32[1])
      {
        *&v594[24] = (v199.u16[0] >> v79) + v199.i16[0];
      }

      if (vuzp1_s8(*&v84, v201).i8[5])
      {
        *&v594[26] = (v199.u16[2] >> v79) + v199.i16[2];
      }

      v202.i64[0] = 0x100000001;
      v202.i64[1] = 0x100000001;
      if (vuzp1_s8(*&v84, vmovn_s32(vcgtq_u32(*&v194, v202))).i8[6])
      {
        *&v594[28] = (v199.u16[4] >> v79) + v199.i16[4];
        *&v594[30] = (v199.u16[6] >> v79) + v199.i16[6];
      }

      v203 = v595;
      v204 = vshlq_u32(vmovl_u16(*v595.i8), v84);
      v205.i64[0] = 0x100000001;
      v205.i64[1] = 0x100000001;
      v206 = vmovn_s32(vcgtq_u32(v204, v205));
      v207 = vaddq_s16(vandq_s8(v595, v81), v82);
      v208.i64[0] = -1;
      v208.i64[1] = -1;
      v209 = vshlq_u32(vmovl_u16(*v207.i8), vaddq_s32(v204, v208));
      if (vuzp1_s8(v206, *v84.i8).u8[0])
      {
        v595.i16[0] = (v209.u16[0] >> v79) + v209.i16[0];
      }

      v210 = vmovl_high_u16(v203);
      if (vuzp1_s8(v206, *&v84).i8[1])
      {
        v595.i16[1] = (v209.u16[2] >> v79) + v209.i16[2];
      }

      v211 = vshlq_u32(v210, v84);
      v212.i64[0] = 0x100000001;
      v212.i64[1] = 0x100000001;
      v213 = vmovn_s32(vcgtq_u32(v204, v212));
      if (vuzp1_s8(v213, *&v211).i8[2])
      {
        v595.i16[2] = (v209.u16[4] >> v79) + v209.i16[4];
      }

      v214 = vaddq_s32(v211, v208);
      v215 = vmovl_high_u16(v207);
      if (vuzp1_s8(v213, *&v211).i8[3])
      {
        v595.i16[3] = (v209.u16[6] >> v79) + v209.i16[6];
      }

      v216 = vshlq_u32(v215, v214);
      v217.i64[0] = 0x100000001;
      v217.i64[1] = 0x100000001;
      v218 = vmovn_s32(vcgtq_u32(v211, v217));
      if (vuzp1_s8(*&v211, v218).i32[1])
      {
        v595.i16[4] = (v216.u16[0] >> v79) + v216.i16[0];
      }

      if (vuzp1_s8(*&v211, v218).i8[5])
      {
        v595.i16[5] = (v216.u16[2] >> v79) + v216.i16[2];
      }

      v219.i64[0] = 0x100000001;
      v219.i64[1] = 0x100000001;
      v220 = vmovn_s32(vcgtq_u32(v211, v219));
      if (vuzp1_s8(v220, v220).i8[6])
      {
        v595.i16[6] = (v216.u16[4] >> v79) + v216.i16[4];
      }

      *v57.i8 = vuzp1_s8(v220, v220);
      if (v57.i8[7])
      {
        v595.i16[7] = (v216.u16[6] >> v79) + v216.i16[6];
      }
    }
  }

  else
  {
    v71 = (v1 + 70);
    v72 = vld1q_dup_s16(v71);
    v73 = vaddq_s16(*&v594[16], v72);
    v57 = vaddq_s16(v595, v72);
    *&v594[16] = v73;
    v595 = v57;
    if (*(v1 + 108))
    {
      if (v58 > 0x10)
      {
        goto LABEL_112;
      }

      if (v58 >= 0xC || v58 == 6)
      {
        v75 = -1;
      }

      else
      {
        v75 = 1023;
      }

      if (v58 < 6)
      {
        v75 = 255;
      }

      v57 = vdupq_n_s16(v75);
      v76 = &v590.i64[1];
      v77 = 8;
      do
      {
        v78 = vmovn_s16(vcgtq_u16(*(v76 - 1), v57));
        if (v78.i8[0])
        {
          *(v76 - 4) = v75;
        }

        if (v78.i8[1])
        {
          *(v76 - 3) = v75;
        }

        if (v78.i8[2])
        {
          *(v76 - 2) = v75;
        }

        if (v78.i8[3])
        {
          *(v76 - 1) = v75;
        }

        if (v78.i8[4])
        {
          *v76 = v75;
        }

        if (v78.i8[5])
        {
          *(v76 + 1) = v75;
        }

        if (v78.i8[6])
        {
          *(v76 + 2) = v75;
        }

        if (v78.i8[7])
        {
          *(v76 + 3) = v75;
        }

        v76 += 2;
        --v77;
      }

      while (v77);
    }
  }

  v221 = v591;
  v222 = &v591[16];
  v223 = &v592;
  v224 = &v593;
  v225 = v594;
  v227 = &v591[20];
  v226 = &v592.i8[4];
  v229 = &v594[20];
  v228 = &v595.i8[4];
  switch(v58)
  {
    case 0u:
    case 7u:
      v227 = &v591[18];
      v573 = &v590.i64[1];
      v574 = (&v590 | 0xA);
      v575 = &v591[20];
      v576 = &v591[22];
      v577 = &v591[8];
      v578 = &v591[10];
      v226 = &v592.i8[2];
      v585 = (&v590 | 0xC);
      v586 = &v591[12];
      v579 = (v592.i64 + 4);
      v580 = &v592.i8[6];
      v229 = &v594[18];
      v581 = &v593.i64[1];
      v582 = &v593.i8[10];
      v583 = &v593.i8[12];
      v567 = &v594[20];
      v568 = &v594[22];
      v569 = &v594[8];
      v570 = &v594[10];
      v228 = &v595.i8[2];
      v584 = &v594[12];
      v571 = (v595.i64 + 4);
      v572 = &v595.i8[6];
      goto LABEL_295;
    case 1u:
    case 8u:
    case 0xBu:
    case 0x10u:
    case 0x19u:
LABEL_295:
      v325 = *v573;
      *v573 = *&v591[16];
      *&v591[16] = v325;
      v326 = *v574;
      *v574 = *v227;
      *v227 = v326;
      v327 = *v585;
      *v585 = *v575;
      *v575 = v327;
      v328 = v590.i16[7];
      v590.i16[7] = *v576;
      *v576 = v328;
      v329 = *v577;
      *v577 = v592.i16[0];
      v592.i16[0] = v329;
      v330 = *v578;
      *v578 = *v226;
      *v226 = v330;
      v331 = *v586;
      *v586 = *v579;
      *v579 = v331;
      v332 = *&v591[14];
      *&v591[14] = *v580;
      *v580 = v332;
      v333 = *v581;
      *v581 = *&v594[16];
      *&v594[16] = v333;
      v334 = *v582;
      *v582 = *v229;
      *v229 = v334;
      v335 = *v583;
      *v583 = *v567;
      *v567 = v335;
      v336 = v593.i16[7];
      v593.i16[7] = *v568;
      *v568 = v336;
      v337 = *v569;
      *v569 = v595.i16[0];
      v595.i16[0] = v337;
      v338 = *v570;
      *v570 = *v228;
      *v228 = v338;
      v339 = *v584;
      *v584 = *v571;
      *v571 = v339;
      v340 = *&v594[14];
      *&v594[14] = *v572;
      *v572 = v340;
      if (v587)
      {
        v341 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v341), vshlq_u32(vmovl_high_u16(v590), v341));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v341), vshlq_u32(vmovl_high_u16(*v591), v341));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v341), vshlq_u32(vmovl_high_u16(*&v591[16]), v341));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v341), vshlq_u32(vmovl_high_u16(v592), v341));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v341), vshlq_u32(vmovl_high_u16(v593), v341));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v341), vshlq_u32(vmovl_high_u16(*v594), v341));
        v342 = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v341), vshlq_u32(vmovl_high_u16(*&v594[16]), v341));
        v57 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v341), vshlq_u32(vmovl_high_u16(v595), v341));
        *&v594[16] = v342;
        v595 = v57;
      }

      v343 = &v594[16];
      v344 = &v595;
      if (v58 == 15)
      {
        v57 = vbslq_s8(vcltzq_s16(v590), (*&v590 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v590));
        v590 = v57;
        *v591 = vbslq_s8(vcltzq_s16(*v591), (*v591 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v591));
        *&v591[16] = vbslq_s8(vcltzq_s16(*&v591[16]), (*&v591[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v591[16]));
        v592 = vbslq_s8(vcltzq_s16(v592), (*&v592 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v592));
        v593 = vbslq_s8(vcltzq_s16(v593), (*&v593 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v593));
        *v594 = vbslq_s8(vcltzq_s16(*v594), (*v594 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v594));
        *&v594[16] = vbslq_s8(vcltzq_s16(*&v594[16]), (*&v594[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v594[16]));
        v595 = vbslq_s8(vcltzq_s16(v595), (*&v595 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v595));
      }

      if (v58 <= 5)
      {
        v345 = 0;
        v346 = 0;
        v347 = &v590;
        do
        {
          v8->i8[v345] = v347->i8[0];
          v346 |= v347->u8[1];
          ++v345;
          v347 = (v347 + 2);
        }

        while (v345 != 8);
        if (!v346)
        {
          v348 = 0;
          do
          {
            v8->i8[v348 + 8] = v224->i8[0];
            v346 |= v224->u8[1];
            ++v348;
            v224 = (v224 + 2);
          }

          while (v348 != 8);
          if (!v346)
          {
            v349 = 0;
            v350 = 0;
            v351 = &v8->i8[v9];
            do
            {
              v351[v349] = *v221;
              v350 |= v221[1];
              ++v349;
              v221 += 2;
            }

            while (v349 != 8);
            if (!v350)
            {
              v352 = 0;
              v353 = v351 + 8;
              do
              {
                v353[v352] = *v225;
                v350 |= *(v225 + 1);
                ++v352;
                ++v225;
              }

              while (v352 != 8);
              if (!v350)
              {
                v354 = 0;
                v355 = &v8->i8[2 * v9];
                do
                {
                  v355[v354] = *v222;
                  v350 |= v222[1];
                  ++v354;
                  v222 += 2;
                }

                while (v354 != 8);
                if (!v350)
                {
                  v356 = 0;
                  v357 = v355 + 8;
                  do
                  {
                    v357[v356] = *v343;
                    v350 |= v343[1];
                    ++v356;
                    v343 += 2;
                  }

                  while (v356 != 8);
                  if (!v350)
                  {
                    v358 = 0;
                    v359 = &v8->i8[3 * v9];
                    do
                    {
                      v359[v358] = v223->i8[0];
                      v350 |= v223->u8[1];
                      ++v358;
                      v223 = (v223 + 2);
                    }

                    while (v358 != 8);
                    if (!v350)
                    {
                      v360 = 0;
                      v361 = v359 + 8;
                      do
                      {
                        v361[v360] = v344->i8[0];
                        v350 |= v344->u8[1];
                        ++v360;
                        v344 = (v344 + 2);
                      }

                      while (v360 != 8);
                      if (!v350)
                      {
                        return *v57.i64;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_411:
        longjmp((v1 + 116), -15407);
      }

      if (v58 - 7 > 1)
      {
LABEL_327:
        *v8 = v590;
        v8[1] = v593;
        v363 = &v8->i8[v9];
        *v363 = *v591;
        *(v363 + 1) = *v594;
        v364 = &v8->i8[2 * v9];
        *v364 = *&v591[16];
        *(v364 + 1) = *&v594[16];
        v365 = (v8 + 3 * v9);
        *v365 = v592;
        v57.i64[0] = v595.i64[0];
        v365[1] = v595;
      }

      else
      {
        v362 = *(v1 + 8);
        vectorstore_1x16_packed10(v8->i32, v362, &v590, &v593);
        vectorstore_1x16_packed10((v8->i32 + v9), v362, v591, v594);
        vectorstore_1x16_packed10((v8->i32 + 2 * v9), v362, &v591[16], &v594[16]);
        vectorstore_1x16_packed10((v8->i32 + 3 * v9), v362, &v592, &v595);
      }

      return *v57.i64;
    case 2u:
    case 0xDu:
    case 0x14u:
      v230 = *&v591[24];
      v231 = v593.i16[1];
      *&v591[24] = v593.i16[0];
      v232 = *&v591[28];
      v593.i16[1] = *&v591[26];
      *&v591[28] = v593.i16[2];
      v233 = v593.i16[3];
      v593.i16[3] = *&v591[30];
      v234 = v592.i16[4];
      v235 = *&v594[2];
      v592.i16[4] = *v594;
      *&v594[2] = v592.i16[5];
      v236 = v592.i16[6];
      v592.i16[6] = *&v594[4];
      v237 = *&v594[6];
      *&v594[6] = v592.i16[7];
      v238 = v590.i16[1];
      v590.i16[1] = v230;
      v593.i16[0] = v238;
      v239 = v590.i16[3];
      v590.i16[3] = v232;
      v593.i16[2] = v239;
      v240 = v590.i16[5];
      v590.i16[5] = v593.i16[4];
      v593.i16[4] = v240;
      v241 = v590.i16[7];
      v590.i16[7] = v593.i16[6];
      v593.i16[6] = v241;
      v242 = *&v591[2];
      *&v591[2] = v234;
      *v594 = v242;
      v243 = *&v591[6];
      *&v591[6] = v236;
      *&v594[4] = v243;
      v244 = *&v591[10];
      *&v591[10] = *&v594[8];
      *&v594[8] = v244;
      v245 = *&v591[14];
      *&v591[14] = *&v594[12];
      *&v594[12] = v245;
      v246 = *&v591[18];
      *&v591[18] = *&v594[16];
      *&v594[16] = v246;
      v247 = *&v591[22];
      *&v591[22] = *&v594[20];
      *&v594[20] = v247;
      *&v591[26] = *&v594[24];
      *&v594[24] = v231;
      *&v591[30] = *&v594[28];
      *&v594[28] = v233;
      v248 = v592.i16[1];
      v592.i16[1] = v595.i16[0];
      v595.i16[0] = v248;
      v249 = v592.i16[3];
      v592.i16[3] = v595.i16[2];
      v595.i16[2] = v249;
      v592.i16[5] = v595.i16[4];
      v595.i16[4] = v235;
      v592.i16[7] = v595.i16[6];
      v595.i16[6] = v237;
      if (v587)
      {
        v250 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v250), vshlq_u32(vmovl_high_u16(v590), v250));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v250), vshlq_u32(vmovl_high_u16(*v591), v250));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v250), vshlq_u32(vmovl_high_u16(*&v591[16]), v250));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v250), vshlq_u32(vmovl_high_u16(v592), v250));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v250), vshlq_u32(vmovl_high_u16(v593), v250));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v250), vshlq_u32(vmovl_high_u16(*v594), v250));
        v251 = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v250), vshlq_u32(vmovl_high_u16(*&v594[16]), v250));
        v57 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v250), vshlq_u32(vmovl_high_u16(v595), v250));
        *&v594[16] = v251;
        v595 = v57;
      }

      v252 = &v594[16];
      v253 = &v595;
      if (v58 == 13)
      {
        v590 = vbslq_s8(vcltzq_s16(v590), (*&v590 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v590));
        *v591 = vbslq_s8(vcltzq_s16(*v591), (*v591 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v591));
        *&v591[16] = vbslq_s8(vcltzq_s16(*&v591[16]), (*&v591[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v591[16]));
        v592 = vbslq_s8(vcltzq_s16(v592), (*&v592 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v592));
        v593 = vbslq_s8(vcltzq_s16(v593), (*&v593 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v593));
        *v594 = vbslq_s8(vcltzq_s16(*v594), (*v594 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v594));
        *&v594[16] = vbslq_s8(vcltzq_s16(*&v594[16]), (*&v594[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v594[16]));
        v595 = vbslq_s8(vcltzq_s16(v595), (*&v595 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v595));
      }

      else if (v58 == 2)
      {
        v254 = 0;
        v255 = 0;
        v256 = &v590;
        do
        {
          v8->i8[v254] = v256->i8[0];
          v255 |= v256->u8[1];
          ++v254;
          v256 = (v256 + 2);
        }

        while (v254 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v257 = 0;
        do
        {
          v8->i8[v9 + v257] = *v222;
          v255 |= v222[1];
          ++v257;
          v222 += 2;
        }

        while (v257 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v258 = 0;
        do
        {
          v8->i8[2 * v9 + v258] = *v221;
          v255 |= v221[1];
          ++v258;
          v221 += 2;
        }

        while (v258 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v259 = 0;
        do
        {
          v8->i8[3 * v9 + v259] = v223->i8[0];
          v255 |= v223->u8[1];
          ++v259;
          v223 = (v223 + 2);
        }

        while (v259 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v260 = 0;
        do
        {
          v8->i8[4 * v9 + v260] = v224->i8[0];
          v255 |= v224->u8[1];
          ++v260;
          v224 = (v224 + 2);
        }

        while (v260 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v261 = 0;
        do
        {
          v8->i8[5 * v9 + v261] = *v252;
          v255 |= v252[1];
          ++v261;
          v252 += 2;
        }

        while (v261 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v262 = 0;
        do
        {
          v8->i8[6 * v9 + v262] = *v225;
          v255 |= *(v225 + 1);
          ++v262;
          ++v225;
        }

        while (v262 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v263 = 0;
        do
        {
          v8->i8[7 * v9 + v263] = v253->i8[0];
          v255 |= v253->u8[1];
          ++v263;
          v253 = (v253 + 2);
        }

        while (v263 != 8);
LABEL_287:
        if (!v255)
        {
          return *v57.i64;
        }

        goto LABEL_411;
      }

      *v8 = v590;
      *(v8 + v9) = *&v591[16];
      *(v8 + 2 * v9) = *v591;
      *(v8 + 3 * v9) = v592;
      *(v8 + 4 * v9) = v593;
      *(v8 + 5 * v9) = *&v594[16];
      v455 = 6 * v9;
      v57 = *v594;
      break;
    case 3u:
    case 0xEu:
    case 0x16u:
      v269 = *&v591[24];
      *&v591[24] = v593.i32[0];
      v270 = v593.i16[2];
      v271 = v593.i16[3];
      v593.i32[1] = *&v591[28];
      v272 = v592.i16[4];
      v273 = v592.i16[5];
      v592.i32[2] = *v594;
      v274 = *&v594[4];
      *&v594[4] = v592.i16[6];
      v275 = *&v594[6];
      *&v594[6] = v592.i16[7];
      v276 = v590.i16[3];
      v593.i16[0] = v590.i16[2];
      v590.i32[1] = v269;
      v593.i16[1] = v276;
      v277 = v590.i16[6];
      v590.i16[6] = v593.i16[4];
      v593.i16[4] = v277;
      v278 = v590.i16[7];
      v590.i16[7] = v593.i16[5];
      v593.i16[5] = v278;
      v279 = *&v591[4];
      *&v591[4] = v272;
      *v594 = v279;
      v280 = *&v591[6];
      *&v591[6] = v273;
      *&v594[2] = v280;
      v281 = *&v591[12];
      *&v591[12] = *&v594[8];
      *&v594[8] = v281;
      v282 = *&v591[14];
      *&v591[14] = *&v594[10];
      *&v594[10] = v282;
      v283 = *&v591[20];
      *&v591[20] = *&v594[16];
      *&v594[16] = v283;
      v284 = *&v591[22];
      *&v591[22] = *&v594[18];
      *&v594[18] = v284;
      *&v591[28] = *&v594[24];
      *&v594[24] = v270;
      *&v594[26] = v271;
      v285 = v592.i16[2];
      v592.i16[2] = v595.i16[0];
      v595.i16[0] = v285;
      v286 = v592.i16[3];
      v592.i16[3] = v595.i16[1];
      v595.i16[1] = v286;
      v592.i32[3] = v595.i32[2];
      v595.i16[4] = v274;
      v595.i16[5] = v275;
      if (v587)
      {
        v287 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v287), vshlq_u32(vmovl_high_u16(v590), v287));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v287), vshlq_u32(vmovl_high_u16(*v591), v287));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v287), vshlq_u32(vmovl_high_u16(*&v591[16]), v287));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v287), vshlq_u32(vmovl_high_u16(v592), v287));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v287), vshlq_u32(vmovl_high_u16(v593), v287));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v287), vshlq_u32(vmovl_high_u16(*v594), v287));
        v288 = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v287), vshlq_u32(vmovl_high_u16(*&v594[16]), v287));
        v57 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v287), vshlq_u32(vmovl_high_u16(v595), v287));
        *&v594[16] = v288;
        v595 = v57;
      }

      v289 = &v594[16];
      v290 = &v595;
      if (v58 == 14)
      {
        v590 = vbslq_s8(vcltzq_s16(v590), (*&v590 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v590));
        *v591 = vbslq_s8(vcltzq_s16(*v591), (*v591 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v591));
        *&v591[16] = vbslq_s8(vcltzq_s16(*&v591[16]), (*&v591[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v591[16]));
        v592 = vbslq_s8(vcltzq_s16(v592), (*&v592 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v592));
        v593 = vbslq_s8(vcltzq_s16(v593), (*&v593 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v593));
        *v594 = vbslq_s8(vcltzq_s16(*v594), (*v594 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v594));
        *&v594[16] = vbslq_s8(vcltzq_s16(*&v594[16]), (*&v594[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v594[16]));
        v595 = vbslq_s8(vcltzq_s16(v595), (*&v595 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v595));
      }

      else if (v58 == 3)
      {
        v291 = 0;
        v255 = 0;
        v292 = &v590;
        do
        {
          v8->i8[v291] = v292->i8[0];
          v255 |= v292->u8[1];
          ++v291;
          v292 = (v292 + 2);
        }

        while (v291 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v293 = 0;
        do
        {
          v8->i8[v9 + v293] = *v221;
          v255 |= v221[1];
          ++v293;
          v221 += 2;
        }

        while (v293 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v294 = 0;
        do
        {
          v8->i8[2 * v9 + v294] = *v222;
          v255 |= v222[1];
          ++v294;
          v222 += 2;
        }

        while (v294 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v295 = 0;
        do
        {
          v8->i8[3 * v9 + v295] = v223->i8[0];
          v255 |= v223->u8[1];
          ++v295;
          v223 = (v223 + 2);
        }

        while (v295 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v296 = 0;
        do
        {
          v8->i8[4 * v9 + v296] = v224->i8[0];
          v255 |= v224->u8[1];
          ++v296;
          v224 = (v224 + 2);
        }

        while (v296 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v297 = 0;
        do
        {
          v8->i8[5 * v9 + v297] = *v225;
          v255 |= *(v225 + 1);
          ++v297;
          ++v225;
        }

        while (v297 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v298 = 0;
        do
        {
          v8->i8[6 * v9 + v298] = *v289;
          v255 |= v289[1];
          ++v298;
          v289 += 2;
        }

        while (v298 != 8);
        if (v255)
        {
          goto LABEL_411;
        }

        v299 = 0;
        do
        {
          v8->i8[7 * v9 + v299] = v290->i8[0];
          v255 |= v290->u8[1];
          ++v299;
          v290 = (v290 + 2);
        }

        while (v299 != 8);
        goto LABEL_287;
      }

      *v8 = v590;
      *(v8 + v9) = *v591;
      *(v8 + 2 * v9) = *&v591[16];
      *(v8 + 3 * v9) = v592;
      *(v8 + 4 * v9) = v593;
      *(v8 + 5 * v9) = *v594;
      v455 = 6 * v9;
      v57 = *&v594[16];
      break;
    case 4u:
      v412 = 0;
      v413 = 0;
      v414 = *&v591[20];
      v415 = &v590;
      v416 = &v594[16];
      v417 = *&v591[22];
      *&v591[22] = *&v594[18];
      *&v594[18] = v417;
      v418 = *&v591[28];
      v419 = *&v591[30];
      *&v591[30] = *&v594[26];
      *&v594[26] = v419;
      v420 = &v595;
      v421 = v592.i16[2];
      v422 = v592.i16[3];
      v592.i16[3] = v595.i16[1];
      v595.i16[1] = v422;
      v423 = v592.i16[7];
      v592.i16[7] = v595.i16[5];
      v595.i16[5] = v423;
      v424 = v590.i16[1];
      v590.i16[1] = *&v591[16];
      v425 = v592.i16[6];
      *&v591[16] = v424;
      v426 = v590.i16[3];
      v590.i16[3] = *&v594[16];
      *&v591[20] = v426;
      v427 = v590.i16[5];
      v590.i16[5] = *&v591[24];
      *&v591[24] = v427;
      v428 = v590.i16[7];
      v590.i16[7] = *&v594[24];
      *&v591[28] = v428;
      v429 = *&v591[2];
      *&v591[2] = v592.i16[0];
      v592.i16[0] = v429;
      v430 = *&v591[6];
      *&v591[6] = v595.i16[0];
      v592.i16[2] = v430;
      v431 = *&v591[10];
      *&v591[10] = v592.i16[4];
      v592.i16[4] = v431;
      v432 = *&v591[14];
      *&v591[14] = v595.i16[4];
      v592.i16[6] = v432;
      v433 = v593.i16[1];
      v593.i16[1] = v414;
      *&v594[16] = v433;
      v434 = v593.i16[3];
      v593.i16[3] = *&v594[20];
      *&v594[20] = v434;
      v435 = v593.i16[5];
      v593.i16[5] = v418;
      *&v594[24] = v435;
      v436 = v593.i16[7];
      v593.i16[7] = *&v594[28];
      *&v594[28] = v436;
      v437 = *&v594[2];
      *&v594[2] = v421;
      v595.i16[0] = v437;
      v438 = *&v594[6];
      *&v594[6] = v595.i16[2];
      v595.i16[2] = v438;
      v439 = *&v594[10];
      *&v594[10] = v425;
      v595.i16[4] = v439;
      v440 = *&v594[14];
      *&v594[14] = v595.i16[6];
      v595.i16[6] = v440;
      do
      {
        v8->i8[v412] = v415->i8[0];
        v413 |= v415->u8[1];
        ++v412;
        v415 = (v415 + 2);
      }

      while (v412 != 8);
      if (v413)
      {
        goto LABEL_411;
      }

      v441 = 0;
      do
      {
        v8->i8[v441 + 8] = v224->i8[0];
        v413 |= v224->u8[1];
        ++v441;
        v224 = (v224 + 2);
      }

      while (v441 != 8);
      if (v413)
      {
        goto LABEL_411;
      }

      v442 = 0;
      v443 = 0;
      v444 = &v8->i8[v9];
      do
      {
        v444[v442] = *v221;
        v443 |= v221[1];
        ++v442;
        v221 += 2;
      }

      while (v442 != 8);
      if (v443)
      {
        goto LABEL_411;
      }

      v445 = 0;
      v446 = v444 + 8;
      do
      {
        v446[v445] = *v225;
        v443 |= *(v225 + 1);
        ++v445;
        ++v225;
      }

      while (v445 != 8);
      if (v443)
      {
        goto LABEL_411;
      }

      v447 = 0;
      v448 = &v8->i8[2 * v9];
      do
      {
        v448[v447] = *v222;
        v443 |= v222[1];
        ++v447;
        v222 += 2;
      }

      while (v447 != 8);
      if (v443)
      {
        goto LABEL_411;
      }

      v449 = 0;
      v450 = v448 + 8;
      do
      {
        v450[v449] = *v416;
        v443 |= v416[1];
        ++v449;
        v416 += 2;
      }

      while (v449 != 8);
      if (v443)
      {
        goto LABEL_411;
      }

      v451 = 0;
      v408 = 0;
      v452 = &v8->i8[3 * v9];
      do
      {
        v452[v451] = v223->i8[0];
        v408 |= v223->u8[1];
        ++v451;
        v223 = (v223 + 2);
      }

      while (v451 != 8);
      if (v408)
      {
        goto LABEL_411;
      }

      v453 = 0;
      v454 = v452 + 8;
      do
      {
        v454[v453] = v420->i8[0];
        v408 |= v420->u8[1];
        ++v453;
        v420 = (v420 + 2);
      }

      while (v453 != 8);
      goto LABEL_410;
    case 5u:
      v506 = 0;
      v507 = 0;
      v508 = *&v591[20];
      v509 = &v590;
      v510 = &v594[16];
      *&v591[20] = *&v594[16];
      *&v594[16] = v508;
      v511 = *&v591[22];
      v512 = *&v591[28];
      *&v591[28] = *&v594[24];
      *&v594[24] = v512;
      v513 = *&v591[30];
      v514 = &v595;
      v515 = v592.i16[2];
      v592.i16[2] = v595.i16[0];
      v595.i16[0] = v515;
      v516 = v592.i16[3];
      v517 = v592.i16[6];
      v592.i16[6] = v595.i16[4];
      v595.i16[4] = v517;
      v518 = *&v591[18];
      *&v591[18] = v590.i16[0];
      v519 = v592.i16[7];
      v590.i16[0] = v518;
      *&v591[22] = v590.i16[2];
      v590.i16[2] = *&v594[18];
      v520 = *&v591[26];
      *&v591[26] = v590.i16[4];
      v590.i16[4] = v520;
      *&v591[30] = v590.i16[6];
      v590.i16[6] = *&v594[26];
      v521 = v592.i16[1];
      v592.i16[1] = *v591;
      *v591 = v521;
      v592.i16[3] = *&v591[4];
      *&v591[4] = v595.i16[1];
      v522 = v592.i16[5];
      v592.i16[5] = *&v591[8];
      *&v591[8] = v522;
      v592.i16[7] = *&v591[12];
      *&v591[12] = v595.i16[5];
      *&v594[18] = v593.i16[0];
      v593.i16[0] = v511;
      v523 = *&v594[22];
      *&v594[22] = v593.i16[2];
      v593.i16[2] = v523;
      *&v594[26] = v593.i16[4];
      v593.i16[4] = v513;
      v524 = *&v594[30];
      *&v594[30] = v593.i16[6];
      v593.i16[6] = v524;
      v595.i16[1] = *v594;
      *v594 = v516;
      v525 = v595.i16[3];
      v595.i16[3] = *&v594[4];
      *&v594[4] = v525;
      v595.i16[5] = *&v594[8];
      *&v594[8] = v519;
      v526 = v595.i16[7];
      v595.i16[7] = *&v594[12];
      *&v594[12] = v526;
      do
      {
        v8->i8[v506] = v509->i8[0];
        v507 |= v509->u8[1];
        ++v506;
        v509 = (v509 + 2);
      }

      while (v506 != 8);
      if (v507)
      {
        goto LABEL_411;
      }

      v527 = 0;
      do
      {
        v8->i8[v527 + 8] = v224->i8[0];
        v507 |= v224->u8[1];
        ++v527;
        v224 = (v224 + 2);
      }

      while (v527 != 8);
      if (v507)
      {
        goto LABEL_411;
      }

      v528 = 0;
      v529 = 0;
      v530 = &v8->i8[v9];
      do
      {
        v530[v528] = *v221;
        v529 |= v221[1];
        ++v528;
        v221 += 2;
      }

      while (v528 != 8);
      if (v529)
      {
        goto LABEL_411;
      }

      v531 = 0;
      v532 = v530 + 8;
      do
      {
        v532[v531] = *v225;
        v529 |= *(v225 + 1);
        ++v531;
        ++v225;
      }

      while (v531 != 8);
      if (v529)
      {
        goto LABEL_411;
      }

      v533 = 0;
      v534 = &v8->i8[2 * v9];
      do
      {
        v534[v533] = *v222;
        v529 |= v222[1];
        ++v533;
        v222 += 2;
      }

      while (v533 != 8);
      if (v529)
      {
        goto LABEL_411;
      }

      v535 = 0;
      v536 = v534 + 8;
      do
      {
        v536[v535] = *v510;
        v529 |= v510[1];
        ++v535;
        v510 += 2;
      }

      while (v535 != 8);
      if (v529)
      {
        goto LABEL_411;
      }

      v537 = 0;
      v408 = 0;
      v538 = &v8->i8[3 * v9];
      do
      {
        v538[v537] = v223->i8[0];
        v408 |= v223->u8[1];
        ++v537;
        v223 = (v223 + 2);
      }

      while (v537 != 8);
      if (v408)
      {
        goto LABEL_411;
      }

      v539 = 0;
      v540 = v538 + 8;
      do
      {
        v540[v539] = v514->i8[0];
        v408 |= v514->u8[1];
        ++v539;
        v514 = (v514 + 2);
      }

      while (v539 != 8);
      goto LABEL_410;
    case 6u:
      v366 = v590.i16[1];
      v590.i16[1] = *&v591[16];
      *&v591[16] = v366;
      v367 = v590.i16[3];
      v368 = v590.i16[5];
      v590.i16[5] = *&v591[24];
      *&v591[24] = v368;
      v369 = v590.i16[7];
      v370 = *&v591[2];
      *&v591[2] = v592.i16[0];
      v592.i16[0] = v370;
      v371 = *&v591[6];
      v372 = *&v591[10];
      *&v591[10] = v592.i16[4];
      v592.i16[4] = v372;
      v373 = *&v591[14];
      v374 = &v594[16];
      v375 = v593.i16[1];
      v376 = v593.i16[3];
      v593.i16[3] = *&v594[20];
      *&v594[20] = v376;
      v377 = v593.i16[5];
      v378 = v593.i16[7];
      v593.i16[7] = *&v594[28];
      *&v594[28] = v378;
      v379 = &v595;
      v380 = *&v594[2];
      v381 = *&v594[6];
      *&v594[6] = v595.i16[2];
      v595.i16[2] = v381;
      v382 = *&v594[10];
      v383 = *&v594[14];
      *&v594[14] = v595.i16[6];
      v595.i16[6] = v383;
      v384 = v590.i16[2];
      v590.i16[2] = v593.i16[0];
      v593.i16[0] = v384;
      v590.i16[3] = *&v594[16];
      v593.i16[1] = *&v591[20];
      v385 = v590.i16[6];
      v590.i16[6] = v593.i16[4];
      v593.i16[4] = v385;
      v590.i16[7] = *&v594[24];
      v593.i16[5] = *&v591[28];
      v386 = *&v591[4];
      *&v591[4] = *v594;
      *v594 = v386;
      *&v591[6] = v595.i16[0];
      *&v594[2] = v592.i16[2];
      v387 = *&v591[12];
      *&v591[12] = *&v594[8];
      *&v594[8] = v387;
      *&v591[14] = v595.i16[4];
      *&v594[10] = v592.i16[6];
      *&v591[20] = v375;
      *&v594[16] = v367;
      v388 = *&v591[22];
      *&v591[22] = *&v594[18];
      *&v594[18] = v388;
      *&v591[28] = v377;
      *&v594[24] = v369;
      v389 = *&v591[30];
      *&v591[30] = *&v594[26];
      *&v594[26] = v389;
      v592.i16[2] = v380;
      v595.i16[0] = v371;
      v390 = v592.i16[3];
      v592.i16[3] = v595.i16[1];
      v595.i16[1] = v390;
      v592.i16[6] = v382;
      v595.i16[4] = v373;
      v391 = v592.i16[7];
      v592.i16[7] = v595.i16[5];
      v595.i16[5] = v391;
      if (v587)
      {
        v392 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v392), vshlq_u32(vmovl_high_u16(v590), v392));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v392), vshlq_u32(vmovl_high_u16(*v591), v392));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v392), vshlq_u32(vmovl_high_u16(*&v591[16]), v392));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v392), vshlq_u32(vmovl_high_u16(v592), v392));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v392), vshlq_u32(vmovl_high_u16(v593), v392));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v392), vshlq_u32(vmovl_high_u16(*v594), v392));
        v393 = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v392), vshlq_u32(vmovl_high_u16(*&v594[16]), v392));
        v57 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v392), vshlq_u32(vmovl_high_u16(v595), v392));
        *&v594[16] = v393;
        v595 = v57;
      }

      v394 = 0;
      v395 = 0;
      v396 = &v590;
      do
      {
        v8->i8[v394] = v396->i8[0];
        v395 |= v396->u8[1];
        ++v394;
        v396 = (v396 + 2);
      }

      while (v394 != 8);
      if (v395)
      {
        goto LABEL_411;
      }

      v397 = 0;
      do
      {
        v8->i8[v397 + 8] = v224->i8[0];
        v395 |= v224->u8[1];
        ++v397;
        v224 = (v224 + 2);
      }

      while (v397 != 8);
      if (v395)
      {
        goto LABEL_411;
      }

      v398 = 0;
      v399 = 0;
      v400 = &v8->i8[v9];
      do
      {
        v400[v398] = *v221;
        v399 |= v221[1];
        ++v398;
        v221 += 2;
      }

      while (v398 != 8);
      if (v399)
      {
        goto LABEL_411;
      }

      v401 = 0;
      v402 = v400 + 8;
      do
      {
        v402[v401] = *v225;
        v399 |= *(v225 + 1);
        ++v401;
        ++v225;
      }

      while (v401 != 8);
      if (v399)
      {
        goto LABEL_411;
      }

      v403 = 0;
      v404 = &v8->i8[2 * v9];
      do
      {
        v404[v403] = *v222;
        v399 |= v222[1];
        ++v403;
        v222 += 2;
      }

      while (v403 != 8);
      if (v399)
      {
        goto LABEL_411;
      }

      v405 = 0;
      v406 = v404 + 8;
      do
      {
        v406[v405] = *v374;
        v399 |= v374[1];
        ++v405;
        v374 += 2;
      }

      while (v405 != 8);
      if (v399)
      {
        goto LABEL_411;
      }

      v407 = 0;
      v408 = 0;
      v409 = &v8->i8[3 * v9];
      do
      {
        v409[v407] = v223->i8[0];
        v408 |= v223->u8[1];
        ++v407;
        v223 = (v223 + 2);
      }

      while (v407 != 8);
      if (v408)
      {
        goto LABEL_411;
      }

      v410 = 0;
      v411 = v409 + 8;
      do
      {
        v411[v410] = v379->i8[0];
        v408 |= v379->u8[1];
        ++v410;
        v379 = (v379 + 2);
      }

      while (v410 != 8);
LABEL_410:
      if (v408)
      {
        goto LABEL_411;
      }

      return *v57.i64;
    case 9u:
      v541 = 8;
      v542 = v8;
      do
      {
        v542->i32[0] = (v224->u16[0] << 20) + (v224[2].u16[0] << 30) + (v224[-2].u16[0] << 10) + v224[-4].u16[0];
        v542 = (v542 + 4);
        if (v541 == 5)
        {
          v542 = (v8 + v9);
        }

        v224 = (v224 + 2);
        --v541;
      }

      while (v541);
      v543 = (v8->i32 + 2 * v9);
      v544 = 8;
      do
      {
        *v543++ = (*v225 << 20) + (v225[16] << 30) + (*(v225 - 16) << 10) + *(v225 - 32);
        if (v544 == 5)
        {
          v543 = (v8->i32 + 3 * v9);
        }

        ++v225;
        --v544;
      }

      while (v544);
      return *v57.i64;
    case 0xAu:
    case 0xFu:
    case 0x18u:
      *&v264 = v592.i64[0];
      *(&v264 + 1) = v590.i64[1];
      v265 = *&v591[8];
      v590.i64[1] = *&v591[16];
      *&v591[8] = v264;
      v266 = v593.i64[1];
      v267 = *&v594[8];
      v592.i64[0] = v265;
      v593.i64[1] = *&v594[16];
      *&v264 = v595.i64[0];
      *(&v264 + 1) = v266;
      *&v594[8] = v264;
      v595.i64[0] = v267;
      if (v587)
      {
        v268 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v268), vshlq_u32(vmovl_high_u16(v590), v268));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v268), vshlq_u32(vmovl_high_u16(*v591), v268));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v268), vshlq_u32(vmovl_high_u16(*&v591[16]), v268));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v268), vshlq_u32(vmovl_high_u16(v592), v268));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v268), vshlq_u32(vmovl_high_u16(v593), v268));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v268), vshlq_u32(vmovl_high_u16(*v594), v268));
        *&v594[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v268), vshlq_u32(vmovl_high_u16(*&v594[16]), v268));
        v595 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v268), vshlq_u32(vmovl_high_u16(v595), v268));
      }

      if (v58 == 15)
      {
        v590 = vbslq_s8(vcltzq_s16(v590), (*&v590 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v590));
        *v591 = vbslq_s8(vcltzq_s16(*v591), (*v591 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v591));
        *&v591[16] = vbslq_s8(vcltzq_s16(*&v591[16]), (*&v591[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v591[16]));
        v592 = vbslq_s8(vcltzq_s16(v592), (*&v592 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v592));
        v593 = vbslq_s8(vcltzq_s16(v593), (*&v593 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v593));
        *v594 = vbslq_s8(vcltzq_s16(*v594), (*v594 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v594));
        *&v594[16] = vbslq_s8(vcltzq_s16(*&v594[16]), (*&v594[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v594[16]));
        v595 = vbslq_s8(vcltzq_s16(v595), (*&v595 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v595));
      }

      goto LABEL_327;
    case 0xCu:
    case 0x12u:
      v300 = v590.i16[1];
      v590.i16[1] = *&v591[16];
      *&v591[16] = v300;
      v301 = v590.i16[3];
      v302 = v590.i16[5];
      v590.i16[5] = *&v591[24];
      *&v591[24] = v302;
      v303 = v590.i16[7];
      v304 = *&v591[2];
      *&v591[2] = v592.i16[0];
      v592.i16[0] = v304;
      v305 = *&v591[6];
      v306 = *&v591[10];
      *&v591[10] = v592.i16[4];
      v592.i16[4] = v306;
      v307 = *&v591[14];
      v308 = v593.i16[1];
      v309 = v593.i16[3];
      v593.i16[3] = *&v594[20];
      *&v594[20] = v309;
      v310 = v593.i16[5];
      v311 = v593.i16[7];
      v593.i16[7] = *&v594[28];
      *&v594[28] = v311;
      v312 = *&v594[2];
      v313 = *&v594[6];
      *&v594[6] = v595.i16[2];
      v595.i16[2] = v313;
      v314 = *&v594[10];
      v315 = *&v594[14];
      *&v594[14] = v595.i16[6];
      v595.i16[6] = v315;
      v316 = v590.i16[2];
      v590.i16[2] = v593.i16[0];
      v593.i16[0] = v316;
      v590.i16[3] = *&v594[16];
      v593.i16[1] = *&v591[20];
      v317 = v590.i16[6];
      v590.i16[6] = v593.i16[4];
      v593.i16[4] = v317;
      v590.i16[7] = *&v594[24];
      v593.i16[5] = *&v591[28];
      v318 = *&v591[4];
      *&v591[4] = *v594;
      *v594 = v318;
      *&v591[6] = v595.i16[0];
      *&v594[2] = v592.i16[2];
      v319 = *&v591[12];
      *&v591[12] = *&v594[8];
      *&v594[8] = v319;
      *&v591[14] = v595.i16[4];
      *&v594[10] = v592.i16[6];
      *&v591[20] = v308;
      *&v594[16] = v301;
      v320 = *&v591[22];
      *&v591[22] = *&v594[18];
      *&v594[18] = v320;
      *&v591[28] = v310;
      *&v594[24] = v303;
      v321 = *&v591[30];
      *&v591[30] = *&v594[26];
      *&v594[26] = v321;
      v592.i16[2] = v312;
      v595.i16[0] = v305;
      v322 = v592.i16[3];
      v592.i16[3] = v595.i16[1];
      v595.i16[1] = v322;
      v592.i16[6] = v314;
      v595.i16[4] = v307;
      v323 = v592.i16[7];
      v592.i16[7] = v595.i16[5];
      v595.i16[5] = v323;
      if (v587)
      {
        v324 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v324), vshlq_u32(vmovl_high_u16(v590), v324));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v324), vshlq_u32(vmovl_high_u16(*v591), v324));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v324), vshlq_u32(vmovl_high_u16(*&v591[16]), v324));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v324), vshlq_u32(vmovl_high_u16(v592), v324));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v324), vshlq_u32(vmovl_high_u16(v593), v324));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v324), vshlq_u32(vmovl_high_u16(*v594), v324));
        *&v594[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v324), vshlq_u32(vmovl_high_u16(*&v594[16]), v324));
        v595 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v324), vshlq_u32(vmovl_high_u16(v595), v324));
      }

      if (v58 == 12)
      {
        v590 = vbslq_s8(vcltzq_s16(v590), (*&v590 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v590));
        *v591 = vbslq_s8(vcltzq_s16(*v591), (*v591 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v591));
        *&v591[16] = vbslq_s8(vcltzq_s16(*&v591[16]), (*&v591[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v591[16]));
        v592 = vbslq_s8(vcltzq_s16(v592), (*&v592 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v592));
        v593 = vbslq_s8(vcltzq_s16(v593), (*&v593 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v593));
        *v594 = vbslq_s8(vcltzq_s16(*v594), (*v594 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v594));
        *&v594[16] = vbslq_s8(vcltzq_s16(*&v594[16]), (*&v594[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v594[16]));
        v595 = vbslq_s8(vcltzq_s16(v595), (*&v595 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v595));
      }

      goto LABEL_327;
    case 0x11u:
      v545 = v593.i16[0];
      v546 = v590.i16[3];
      v593.i16[0] = v590.i16[2];
      v590.i16[3] = v593.i16[1];
      v547 = v593.i16[4];
      v593.i16[4] = v590.i16[6];
      v548 = v590.i16[7];
      v590.i16[7] = v593.i16[5];
      v549 = *v594;
      *v594 = *&v591[4];
      v550 = *&v591[6];
      *&v591[6] = *&v594[2];
      v551 = *&v594[8];
      *&v594[8] = *&v591[12];
      v552 = *&v591[14];
      *&v591[14] = *&v594[10];
      v553 = *&v591[18];
      *&v591[18] = v590.i16[0];
      v590.i16[0] = v553;
      v554 = *&v591[22];
      *&v591[22] = v545;
      v590.i16[2] = v554;
      v555 = *&v591[26];
      *&v591[26] = v590.i16[4];
      v590.i16[4] = v555;
      v556 = *&v591[30];
      *&v591[30] = v547;
      v590.i16[6] = v556;
      v557 = v592.i16[1];
      v592.i16[1] = *v591;
      *v591 = v557;
      v558 = v592.i16[3];
      v592.i16[3] = v549;
      *&v591[4] = v558;
      v559 = v592.i16[5];
      v592.i16[5] = *&v591[8];
      *&v591[8] = v559;
      v560 = v592.i16[7];
      v592.i16[7] = v551;
      *&v591[12] = v560;
      v593.i16[1] = *&v594[16];
      *&v594[16] = v546;
      v561 = v593.i16[3];
      v593.i16[3] = *&v594[20];
      *&v594[20] = v561;
      v593.i16[5] = *&v594[24];
      *&v594[24] = v548;
      v562 = v593.i16[7];
      v593.i16[7] = *&v594[28];
      *&v594[28] = v562;
      *&v594[2] = v595.i16[0];
      v595.i16[0] = v550;
      v563 = *&v594[6];
      *&v594[6] = v595.i16[2];
      v595.i16[2] = v563;
      *&v594[10] = v595.i16[4];
      v595.i16[4] = v552;
      v564 = *&v594[14];
      *&v594[14] = v595.i16[6];
      v595.i16[6] = v564;
      if (v587)
      {
        v565 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v565), vshlq_u32(vmovl_high_u16(v590), v565));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v565), vshlq_u32(vmovl_high_u16(*v591), v565));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v565), vshlq_u32(vmovl_high_u16(*&v591[16]), v565));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v565), vshlq_u32(vmovl_high_u16(v592), v565));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v565), vshlq_u32(vmovl_high_u16(v593), v565));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v565), vshlq_u32(vmovl_high_u16(*v594), v565));
        *&v594[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v565), vshlq_u32(vmovl_high_u16(*&v594[16]), v565));
        v595 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v565), vshlq_u32(vmovl_high_u16(v595), v565));
      }

      *v8 = v590;
      *(v8 + v9) = v593;
      *(v8 + 2 * v9) = *v591;
      *(v8 + 3 * v9) = *v594;
      *(v8 + 4 * v9) = *&v591[16];
      *(v8 + 5 * v9) = *&v594[16];
      *(v8 + 6 * v9) = v592;
      v57.i64[0] = v595.i64[0];
      *(v8 + 8 * v9 - v9) = v595;
      return *v57.i64;
    case 0x13u:
      goto LABEL_72;
    case 0x15u:
      v483 = *&v591[24];
      v484 = v593.i16[1];
      *&v591[24] = v593.i16[0];
      v485 = *&v591[28];
      v593.i16[1] = *&v591[26];
      *&v591[28] = v593.i16[2];
      v486 = v593.i16[3];
      v593.i16[3] = *&v591[30];
      v487 = v592.i16[4];
      v488 = *&v594[2];
      v592.i16[4] = *v594;
      *&v594[2] = v592.i16[5];
      v489 = v592.i16[6];
      v592.i16[6] = *&v594[4];
      v490 = *&v594[6];
      *&v594[6] = v592.i16[7];
      v491 = v590.i16[1];
      v590.i16[1] = v483;
      v593.i16[0] = v491;
      v492 = v590.i16[3];
      v590.i16[3] = v485;
      v593.i16[2] = v492;
      v493 = v590.i16[5];
      v590.i16[5] = v593.i16[4];
      v593.i16[4] = v493;
      v494 = v590.i16[7];
      v590.i16[7] = v593.i16[6];
      v593.i16[6] = v494;
      v495 = *&v591[2];
      *&v591[2] = v487;
      *v594 = v495;
      v496 = *&v591[6];
      *&v591[6] = v489;
      *&v594[4] = v496;
      v497 = *&v591[10];
      *&v591[10] = *&v594[8];
      *&v594[8] = v497;
      v498 = *&v591[14];
      *&v591[14] = *&v594[12];
      *&v594[12] = v498;
      v499 = *&v591[18];
      *&v591[18] = *&v594[16];
      *&v594[16] = v499;
      v500 = *&v591[22];
      *&v591[22] = *&v594[20];
      *&v594[20] = v500;
      *&v591[26] = *&v594[24];
      *&v594[24] = v484;
      *&v591[30] = *&v594[28];
      *&v594[28] = v486;
      v501 = v592.i16[1];
      v592.i16[1] = v595.i16[0];
      v595.i16[0] = v501;
      v502 = v592.i16[3];
      v592.i16[3] = v595.i16[2];
      v595.i16[2] = v502;
      v592.i16[5] = v595.i16[4];
      v595.i16[4] = v488;
      v592.i16[7] = v595.i16[6];
      v595.i16[6] = v490;
      if (v587)
      {
        v503 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v503), vshlq_u32(vmovl_high_u16(v590), v503));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v503), vshlq_u32(vmovl_high_u16(*v591), v503));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v503), vshlq_u32(vmovl_high_u16(*&v591[16]), v503));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v503), vshlq_u32(vmovl_high_u16(v592), v503));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v503), vshlq_u32(vmovl_high_u16(v593), v503));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v503), vshlq_u32(vmovl_high_u16(*v594), v503));
        *&v594[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v503), vshlq_u32(vmovl_high_u16(*&v594[16]), v503));
        v595 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v503), vshlq_u32(vmovl_high_u16(v595), v503));
      }

      *v8 = v590;
      v8[1] = v593;
      v504 = &v8->i8[v9];
      *v504 = *&v591[16];
      *(v504 + 1) = *&v594[16];
      v482 = &v8->i8[2 * v9];
      *v482 = *v591;
      v57 = *v594;
      goto LABEL_386;
    case 0x17u:
      v456 = v590.i16[1];
      v590.i16[1] = *&v591[16];
      *&v591[16] = v456;
      v457 = v590.i16[3];
      v458 = v590.i16[5];
      v590.i16[5] = *&v591[24];
      *&v591[24] = v458;
      v459 = v590.i16[7];
      v460 = *&v591[2];
      *&v591[2] = v592.i16[0];
      v592.i16[0] = v460;
      v461 = *&v591[6];
      v462 = *&v591[10];
      *&v591[10] = v592.i16[4];
      v592.i16[4] = v462;
      v463 = *&v591[14];
      v464 = v593.i16[1];
      v465 = v593.i16[3];
      v593.i16[3] = *&v594[20];
      *&v594[20] = v465;
      v466 = v593.i16[5];
      v467 = v593.i16[7];
      v593.i16[7] = *&v594[28];
      *&v594[28] = v467;
      v468 = *&v594[2];
      v469 = *&v594[6];
      *&v594[6] = v595.i16[2];
      v595.i16[2] = v469;
      v470 = *&v594[10];
      v471 = *&v594[14];
      *&v594[14] = v595.i16[6];
      v595.i16[6] = v471;
      v472 = v590.i16[2];
      v590.i16[2] = v593.i16[0];
      v593.i16[0] = v472;
      v590.i16[3] = *&v594[16];
      v593.i16[1] = *&v591[20];
      v473 = v590.i16[6];
      v590.i16[6] = v593.i16[4];
      v593.i16[4] = v473;
      v590.i16[7] = *&v594[24];
      v593.i16[5] = *&v591[28];
      v474 = *&v591[4];
      *&v591[4] = *v594;
      *v594 = v474;
      *&v591[6] = v595.i16[0];
      *&v594[2] = v592.i16[2];
      v475 = *&v591[12];
      *&v591[12] = *&v594[8];
      *&v594[8] = v475;
      *&v591[14] = v595.i16[4];
      *&v594[10] = v592.i16[6];
      *&v591[20] = v464;
      *&v594[16] = v457;
      v476 = *&v591[22];
      *&v591[22] = *&v594[18];
      *&v594[18] = v476;
      *&v591[28] = v466;
      *&v594[24] = v459;
      v477 = *&v591[30];
      *&v591[30] = *&v594[26];
      *&v594[26] = v477;
      v592.i16[2] = v468;
      v595.i16[0] = v461;
      v478 = v592.i16[3];
      v592.i16[3] = v595.i16[1];
      v595.i16[1] = v478;
      v592.i16[6] = v470;
      v595.i16[4] = v463;
      v479 = v592.i16[7];
      v592.i16[7] = v595.i16[5];
      v595.i16[5] = v479;
      if (v587)
      {
        v480 = vdupq_n_s32(v587);
        v590 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v590.i8), v480), vshlq_u32(vmovl_high_u16(v590), v480));
        *v591 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v591), v480), vshlq_u32(vmovl_high_u16(*v591), v480));
        *&v591[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v591[16]), v480), vshlq_u32(vmovl_high_u16(*&v591[16]), v480));
        v592 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v592.i8), v480), vshlq_u32(vmovl_high_u16(v592), v480));
        v593 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v593.i8), v480), vshlq_u32(vmovl_high_u16(v593), v480));
        *v594 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v594), v480), vshlq_u32(vmovl_high_u16(*v594), v480));
        *&v594[16] = vuzp1q_s16(vshlq_u32(vmovl_u16(*&v594[16]), v480), vshlq_u32(vmovl_high_u16(*&v594[16]), v480));
        v595 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v595.i8), v480), vshlq_u32(vmovl_high_u16(v595), v480));
      }

      v590 = vbslq_s8(vcltzq_s16(v590), (*&v590 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v590));
      *v591 = vbslq_s8(vcltzq_s16(*v591), (*v591 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v591));
      *&v591[16] = vbslq_s8(vcltzq_s16(*&v591[16]), (*&v591[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v591[16]));
      v592 = vbslq_s8(vcltzq_s16(v592), (*&v592 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v592));
      v593 = vbslq_s8(vcltzq_s16(v593), (*&v593 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v593));
      *v594 = vbslq_s8(vcltzq_s16(*v594), (*v594 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*v594));
      *&v594[16] = vbslq_s8(vcltzq_s16(*&v594[16]), (*&v594[16] & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(*&v594[16]));
      v595 = vbslq_s8(vcltzq_s16(v595), (*&v595 & __PAIR128__(0x7FFF7FFF7FFF7FFFLL, 0x7FFF7FFF7FFF7FFFLL)), vmvnq_s8(v595));
      *v8 = v590;
      v8[1] = v593;
      v481 = &v8->i8[v9];
      *v481 = *v591;
      *(v481 + 1) = *v594;
      v482 = &v8->i8[2 * v9];
      *v482 = *&v591[16];
      v57 = *&v594[16];
LABEL_386:
      *(v482 + 1) = v57;
      v505 = (v8 + 3 * v9);
      *v505 = v592;
      v57.i64[0] = v595.i64[0];
      v505[1] = v595;
      return *v57.i64;
    default:
      longjmp((v1 + 116), -15405);
  }

  *(v8 + v455) = v57;
  v57.i64[0] = v595.i64[0];
  *(v8 + 8 * v9 - v9) = v595;
  return *v57.i64;
}

uint64_t vectorReadPacked(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x10 || (v3 = *(result + 16), *(result + 24) - v3 < a3))
  {
    longjmp((result + 116), -15407);
  }

  if (a3 < 5)
  {
    v4 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *v3++;
    v4 = v5;
    v6 = 32;
  }

  for (i = 0; i != 8; ++i)
  {
    while (v6 < a3)
    {
      v8 = *v3;
      v3 = (v3 + 1);
      v4 += v8 << v6;
      v6 += 8;
    }

    *(a2 + 2 * i) = v4 & ~(-1 << a3);
    v4 >>= a3;
    v6 -= a3;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t SlimHrlcEncode_C(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x5048uLL, 0x1030040F2A0CDD9uLL);
  if (!v4)
  {
    return 4294951895;
  }

  v5 = v4;
  v4[2565] = *(a1 + 64);
  *(v4 + 10264) = *(a1 + 8356);
  *(v4 + 10265) = *(a2 + 12);
  v6 = *(a1 + 4);
  *(v4 + 10266) = *a1;
  *(v4 + 10267) = v6;
  SlimHrlcGetSize_C(v4);
  v7 = *(a2 + 16);
  if (v5[2568] > *(a2 + 24) - v7)
  {
    return 4294951895;
  }

  v10 = 0;
  v8 = SlimHrlcEncodeRun_C(v5, v7, *(a1 + 56), &v10);
  *(a2 + 16) = v10;
  free(v5);
  return v8;
}

uint64_t _addColorSpaceToPropertiesIfNeeded(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    goto LABEL_12;
  }

  if (!*a3)
  {
    v10 = *(a3 + 8);
    if (v10)
    {
      v11 = CFRetain(v10);
      v7 = 0;
      if (v11)
      {
        v8 = v11;
        goto LABEL_10;
      }

LABEL_13:
      if (a2)
      {
        v13 = CFRetain(a2);
      }

      else
      {
        v13 = 0;
      }

      v8 = 0;
LABEL_17:
      v9 = 0;
      *a4 = v13;
      if (!v7)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v7 || (CGColorSpaceEqualToColorSpace() & 1) != 0)
  {
    goto LABEL_13;
  }

  v8 = CGColorSpaceCopyICCData(*a3);
  if (!v8)
  {
    _addColorSpaceToPropertiesIfNeeded_cold_1(&v15);
    v9 = v15;
LABEL_18:
    CFRelease(v7);
    goto LABEL_19;
  }

LABEL_10:
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v13 = MutableCopy;
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E696D320], v8);
    goto LABEL_17;
  }

  v9 = 4294950305;
  if (v7)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

uint64_t CMPhotoJFIFTranscodeFromJFIF(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, unint64_t a6, uint64_t a7, unsigned int a8, int a9, const void *a10, char a11, uint64_t a12, CFIndex a13, uint64_t (*a14)(uint64_t, uint64_t, CFTypeRef *, const __CFDictionary **, char *, CFTypeRef *, __CVBuffer **, CFTypeRef *, CFTypeRef *), uint64_t a15, void *a16, const void *a17, __CVBuffer *a18, const void *a19, const void *a20, uint64_t a21, char a22, unsigned __int8 a23, char a24, CFMutableDataRef *a25)
{
  v187 = *MEMORY[0x1E69E9840];
  sbuf = 0;
  v137 = 0;
  v134 = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  theBuffer = 0;
  if (a24)
  {
    v30 = 0;
    v31 = 4294950306;
    if (a5 != 1 || a13 || a11 || a12)
    {
      v32 = 0;
      Mutable = 0;
      goto LABEL_214;
    }

    v32 = 0;
    Mutable = 0;
    if (a17)
    {
      goto LABEL_214;
    }
  }

  v34 = _addColorSpaceToPropertiesIfNeeded(a1, a17, a18, &v133);
  if (v34)
  {
    goto LABEL_142;
  }

  v35 = a3 == a7 && a2 == a6;
  if (v35 || !a22)
  {
    v42 = *a4;
    v126 = a4[1];
    v43 = a4[2];
    v44 = a4[3];
    LODWORD(v130) = 0;
    pixelBuffer = 0;
    v146 = 0;
    *&v153 = 0;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    keys = 0u;
    v148 = 0u;
    Mutable = CFDataCreateMutable(a1, 0);
    if (!Mutable)
    {
      v31 = 4294950305;
      goto LABEL_144;
    }

    v144 = 0;
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v45)
    {
      v31 = 4294954514;
      goto LABEL_41;
    }

    v46 = v45(a16, 0, &v144);
    if (v46)
    {
      v31 = v46;
      goto LABEL_41;
    }

    v143[0] = 0;
    v143[1] = a16;
    v180 = _applejpeg_read;
    v181 = 0;
    v182 = _applejpeg_skip;
    v183 = _applejpeg_rewind;
    v184 = v143;
    v185 = 0;
    v186 = v144;
    cf[0] = 0;
    cf[1] = Mutable;
    __src = 0;
    v174 = _applejpeg_write;
    v175 = 0;
    v176 = 0;
    v177 = cf;
    v178 = 0;
    v179 = 0;
    v31 = 4294950305;
    if (!applejpeg_recode_open_file())
    {
LABEL_41:
      applejpeg_recode_close();
      CFRelease(Mutable);
      Mutable = 0;
      goto LABEL_145;
    }

    v124 = v44;
    applejpeg_recode_clear_options();
    v47 = 0;
    if ((a5 - 5) >= 4)
    {
      v48 = a7;
    }

    else
    {
      v48 = a6;
    }

    v49 = 1;
    if (v48 < 0x21)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      if (a6 * a7 >= 0x2DC6C0)
      {
        v53 = v48 + 15;
        if (v53 >= 0x10)
        {
          v115 = (v53 >> 4) - 1;
          v116 = v43;
          AROTSegmentSize = CMPhotoUnifiedJPEGEncoderGetAROTSegmentSize(v115);
          v80 = AROTSegmentSize + 2;
          v122 = AROTSegmentSize;
          v81 = AROTSegmentSize - 2;
          v118 = (AROTSegmentSize - 2) >> 8;
          CFDataSetLength(Mutable, AROTSegmentSize + 2);
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          v120 = v80;
          bzero(MutableBytePtr, v80);
          *MutableBytePtr = -352331521;
          MutableBytePtr[4] = v118;
          MutableBytePtr[5] = v81;
          v83 = applejpeg_recode_set_option_skip_app0();
          if (v83)
          {
            goto LABEL_131;
          }

          v83 = applejpeg_recode_set_option_jpeg_format();
          v43 = v116;
          if (v83)
          {
            goto LABEL_131;
          }

          v49 = 0;
          v52 = 2;
          v47 = v115;
          v51 = v120;
          v50 = v122;
        }

        else
        {
          v47 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
        }
      }
    }

    v117 = v52;
    v119 = v49;
    v121 = v51;
    v123 = v50;
    v83 = applejpeg_recode_set_option_hw_accelerated_resize();
    if (!v83)
    {
      v83 = applejpeg_recode_set_option_aspect();
      if (!v83)
      {
        v83 = applejpeg_recode_set_option_outsize();
        if (!v83)
        {
          if ((v42 | v126 || v43 | v124) && (v84 = applejpeg_recode_set_option_crop()) != 0)
          {
            v83 = CMPhotoAppleJPEGErrorToCMPhotoError(v84);
          }

          else
          {
            v83 = CMPhotoJPEGQualityControllerParse(a1, a6, a7, 0, 8, a9, a10, 1, &keys);
            if (!v83)
            {
              v85 = 0;
              v171 = 0u;
              v172 = 0u;
              *values = 0u;
              v170 = 0u;
              v165 = 0u;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              __dst = 0u;
              v162 = 0u;
              v163 = 0u;
              v164 = 0u;
              v86 = *(&v151 + 1);
              v87 = v152;
              do
              {
                *(values + v85) = *(v86 + 2 * v85);
                *(&v165 + v85) = *(v87 + 2 * v85);
                *(&__dst + v85) = *(*(&v87 + 1) + 2 * v85);
                ++v85;
              }

              while (v85 != 64);
              v157 = values;
              v158 = &v165;
              p_dst = &__dst;
              v160 = 0;
              v83 = applejpeg_recode_set_option_quantization_tables();
              if (!v83)
              {
                if (a5 == 1 || (v83 = applejpeg_recode_set_option_orientation(), !v83))
                {
                  if (!a18 || !*(a18 + 2) || (pixelBuffer = a18, v146 = 0, dataPointerOut = 1, v141[0] = &pixelBuffer, v141[1] = _applejpeg_converter_callback, v83 = applejpeg_recode_set_option_converter(), !v83))
                  {
                    dataPointerOut = 0;
                    v83 = applejpeg_recode_all_file();
                    if (!v83)
                    {
                      applejpeg_recode_close();
                      if (v119)
                      {
                        v31 = 0;
LABEL_144:
                        applejpeg_recode_close();
LABEL_145:
                        CMPhotoJPEGQualitySettingsReleaseStorage(&keys);
                        if (!v31)
                        {
                          goto LABEL_146;
                        }

LABEL_111:
                        v30 = 0;
                        v32 = 0;
                        goto LABEL_214;
                      }

                      v88 = CFDataGetMutableBytePtr(Mutable);
                      Length = CFDataGetLength(Mutable);
                      v31 = CMPhotoUnifiedJPEGEncoderWriteAROTTableToPtr(Length - v121, &v88[v121], v47, v123, &v88[v117]);
                      if (!v31)
                      {
                        goto LABEL_144;
                      }

                      goto LABEL_41;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_131:
    v31 = v83;
    goto LABEL_41;
  }

  v130 = 0;
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v36)
  {
    v31 = 4294954514;
LABEL_39:
    v30 = 0;
    v32 = 0;
    Mutable = 0;
    goto LABEL_214;
  }

  v34 = v36(a16, 0, &v130);
  if (v34)
  {
LABEL_142:
    v31 = v34;
    goto LABEL_39;
  }

  if (v130 < 0)
  {
    v31 = 4294950190;
    goto LABEL_39;
  }

  Mutable = 0;
  v31 = 4294950305;
  if (CMCreateContiguousBlockBufferFromStream() || v130)
  {
    goto LABEL_111;
  }

  v143[0] = 0;
  cf[0] = 0;
  v144 = 0;
  if (a18 && *(a18 + 2))
  {
    CMPhotoJFIFTranscodeFromJFIF_cold_1(&keys);
    v31 = keys.u32[0];
    goto LABEL_212;
  }

  dataPointerOut = 0;
  v141[0] = 0;
  if (CMBlockBufferGetDataPointer(theBuffer, 0, v141, 0, &dataPointerOut))
  {
    v31 = 4294950194;
LABEL_212:
    CMPhotoUnifiedJPEGEncoderDestroy(0);
    Mutable = 0;
    v74 = 0;
    goto LABEL_104;
  }

  *&v171 = 0;
  *values = 0u;
  v170 = 0u;
  v156 = 0;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  keys = 0u;
  pixelBuffer = 0;
  v139 = 0;
  if (!applejpeg_decode_create())
  {
LABEL_141:
    v67 = 0;
    v66 = 0;
    goto LABEL_68;
  }

  image_info = applejpeg_decode_open_mem();
  if (image_info || (image_info = applejpeg_decode_get_image_info(), image_info))
  {
LABEL_140:
    v31 = image_info;
    goto LABEL_141;
  }

  chroma_subsampling = applejpeg_decode_get_chroma_subsampling();
  if (chroma_subsampling >= 2)
  {
    v39 = a7;
    if (chroma_subsampling == 4)
    {
      v125 = 1;
      v41 = 1;
      v40 = 1278226488;
      goto LABEL_45;
    }

LABEL_44:
    v125 = 2;
    v41 = 2;
    v40 = 875704422;
    goto LABEL_45;
  }

  v39 = a7;
  if ((a5 - 9) > 0xFFFFFFFB)
  {
    goto LABEL_44;
  }

  v40 = 875704934;
  v41 = 1;
  v125 = 2;
LABEL_45:
  v54 = 0;
  do
  {
    v55 = v54++;
  }

  while (a6 <= SLODWORD(values[1]) >> v54 && v55 <= 2 && v39 <= SHIDWORD(values[1]) >> v54);
  image_info = applejpeg_decode_set_option_outsize();
  if (image_info)
  {
    goto LABEL_140;
  }

  image_info = applejpeg_decode_set_option_outformat();
  if (image_info)
  {
    goto LABEL_140;
  }

  image_info = applejpeg_decode_set_option_multithread();
  if (image_info)
  {
    goto LABEL_140;
  }

  image_info = applejpeg_decode_set_option_orientation();
  if (image_info)
  {
    goto LABEL_140;
  }

  image_info = applejpeg_decode_get_output_dimensions();
  if (image_info)
  {
    goto LABEL_140;
  }

  image_info = CMPhotoSurfacePoolCreatePixelBuffer(0, v40, SHIDWORD(v139), v139, 1, v125, v41, 0, 2, 0, &pixelBuffer);
  if (image_info)
  {
    goto LABEL_140;
  }

  image_info = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  if (image_info)
  {
    goto LABEL_140;
  }

  v138 = 0;
  v180 = 0;
  v181 = 0;
  __src = 0;
  v174 = 0;
  v158 = 0;
  v157 = 0;
  PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(pixelBuffer, 0, 0, &v138, &v180, &__src, &v157);
  if (PixelBufferDataPointers)
  {
    goto LABEL_191;
  }

  v59 = v138;
  if (v138 - 3 < 0xFFFFFFFE)
  {
    v67 = 0;
    v31 = 4294950301;
    goto LABEL_209;
  }

  v165 = 0u;
  v166 = 0u;
  __dst = 0u;
  v162 = 0u;
  memcpy(&__dst, &__src, 8 * v138);
  v60 = &v165 + 1;
  v61 = &v157;
  v62 = &v180;
  do
  {
    v64 = *v62++;
    v63 = v64;
    v65 = *v61++;
    *(v60 - 1) = v63;
    *v60 = v65;
    v60 += 2;
    --v59;
  }

  while (v59);
  PixelBufferDataPointers = applejpeg_decode_set_option_stride();
  if (PixelBufferDataPointers)
  {
LABEL_191:
    v31 = PixelBufferDataPointers;
  }

  else
  {
    v31 = applejpeg_decode_image_all();
    if (!v31)
    {
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      v66 = 0;
      v67 = pixelBuffer;
      pixelBuffer = 0;
      goto LABEL_68;
    }
  }

  v67 = 0;
LABEL_209:
  v66 = 1;
LABEL_68:
  applejpeg_decode_destroy();
  v68 = pixelBuffer;
  if (v66)
  {
    v69 = a10;
    if (pixelBuffer)
    {
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      v68 = pixelBuffer;
    }

    if (v68)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v69 = a10;
    if (pixelBuffer)
    {
LABEL_72:
      CFRelease(v68);
    }
  }

  if (v31)
  {
LABEL_194:
    Mutable = 0;
    v74 = 0;
    goto LABEL_102;
  }

  if ((a5 - 5) >= 4)
  {
    v70 = a7;
  }

  else
  {
    v70 = a6;
  }

  if ((a5 - 5) >= 4)
  {
    v71 = a6;
  }

  else
  {
    v71 = a7;
  }

  if (CVPixelBufferGetWidth(v67) != v71 || CVPixelBufferGetHeight(v67) != v70)
  {
    keys.i64[0] = 0;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v67);
    v73 = CMPhotoScaleAndRotateSessionTransformForSize(0, v67, a23 == 0, 1, PixelFormatType, 0, 0, 1, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v71, v70, 2, 1u, &keys);
    if (v73)
    {
LABEL_193:
      v31 = v73;
      goto LABEL_194;
    }

    if (v67)
    {
      CFRelease(v67);
    }

    v67 = keys.i64[0];
  }

  v73 = CMPhotoUnifiedJPEGEncoderCreate(0, 0, 0, 0, v143);
  if (v73)
  {
    goto LABEL_193;
  }

  v74 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v74)
  {
    v75 = CVPixelBufferGetPixelFormatType(v67);
    if (v75 == 1278226488)
    {
      v76 = 6;
    }

    else
    {
      v76 = 5;
    }

    if (v75 == 875704934)
    {
      v77 = 3;
    }

    else
    {
      v77 = v76;
    }

    CMPhotoCFDictionarySetInt32(v74, @"Subsampling", v77);
    if (a9)
    {
      FigCFDictionarySetInt();
    }

    if (v69)
    {
      CFDictionarySetValue(v74, @"QualityControllerParameters", v69);
    }

    keys = 0u;
    v148 = 0u;
    v78 = CMPhotoUnifiedJPEGEncoderEncode(v143[0], v74, v67, a23, &keys, 1, 0, 0);
    if (v78)
    {
      v31 = v78;
      goto LABEL_100;
    }

    v31 = CMPhotoDataCreateFromSampleBuffer(a1, v144, 0, cf);
    if (v31)
    {
LABEL_100:
      Mutable = 0;
      goto LABEL_102;
    }

    Mutable = cf[0];
    cf[0] = 0;
  }

  else
  {
    Mutable = 0;
    v31 = 4294950305;
  }

LABEL_102:
  CMPhotoUnifiedJPEGEncoderDestroy(v143[0]);
  if (v67)
  {
    CFRelease(v67);
  }

LABEL_104:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v144)
  {
    CFRelease(v144);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v31)
  {
    goto LABEL_111;
  }

LABEL_146:
  if (!a11 && !a12)
  {
    v32 = 0;
    goto LABEL_168;
  }

  v90 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = v90;
  if (!v90)
  {
LABEL_190:
    v30 = 0;
    v31 = 4294950305;
    goto LABEL_214;
  }

  CMPhotoCFDictionarySetInt(v90, @"QualityControllerType", 3);
  keys.i64[0] = @"QualityValue";
  values[0] = 0;
  values[0] = CMPhotoCFNumberCreateFloat(0.75);
  v91 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values[0])
  {
    CFRelease(values[0]);
  }

  CFDictionarySetValue(v32, @"QualityControllerParameters", v91);
  if (v91)
  {
    CFRelease(v91);
  }

  if (!a11)
  {
    if (!a12)
    {
      goto LABEL_168;
    }

    CropPostOrientation = CMPhotoUnifiedJPEGEncoderCreate(a1, a20, a19, 0, &v137);
    if (!CropPostOrientation)
    {
      if (a18)
      {
        v98 = *(a18 + 2);
        if (v98)
        {
          v98(a12, 0, 1, *(a18 + 3));
        }
      }

      keys = 0u;
      v148 = 0u;
      CropPostOrientation = CMPhotoUnifiedJPEGEncoderEncode(v137, v32, a12, a23, &keys, 1, 1, 0);
      if (!CropPostOrientation)
      {
        DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
        if (!DataBuffer)
        {
          v30 = 0;
          v31 = 4294950304;
LABEL_214:
          CMPhotoUnifiedJPEGEncoderDestroy(v137);
          if (!v32)
          {
            goto LABEL_216;
          }

          goto LABEL_215;
        }

        v100 = DataBuffer;
        DataLength = CMBlockBufferGetDataLength(DataBuffer);
        CropPostOrientation = CMPhotoDataCreateFromSource(a1, v100, 0, DataLength, &v134, 0);
        if (!CropPostOrientation)
        {
          goto LABEL_168;
        }
      }
    }

LABEL_188:
    v31 = CropPostOrientation;
    goto LABEL_189;
  }

  keys = 0uLL;
  *&v148 = a6;
  *(&v148 + 1) = a7;
  *values = 0u;
  v170 = v148;
  CropPostOrientation = CMPhotoGetCropPostOrientation(a6, a7, values, a5, &keys, v92, v93, v94);
  if (CropPostOrientation)
  {
    goto LABEL_188;
  }

  values[1] = 0;
  values[0] = 0;
  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v148, *(&v148 + 1), 0xA0uLL, 0, 0, 0, 1, values, 0, 0);
  v96 = CFDataGetLength(Mutable);
  CropPostOrientation = CMPhotoByteStreamCreateFromSource(Mutable, v96, 0, 0, &v135, 0);
  if (CropPostOrientation)
  {
    goto LABEL_188;
  }

  Value = CFDictionaryGetValue(v32, @"QualityControllerParameters");
  BYTE2(v114) = 1;
  BYTE1(v114) = a23;
  LOBYTE(v114) = 0;
  LOBYTE(v113) = 0;
  CropPostOrientation = CMPhotoJFIFTranscodeFromJFIF(a1, v148, *(&v148 + 1), &CMPhotoRectZero, 1, values[0], values[1], a8, 3, Value, v113, 0, 0, 0, 0, v135, 0, 0, a19, a20, a21, v114, &v134);
  if (CropPostOrientation)
  {
    goto LABEL_188;
  }

  if (!v134)
  {
    CMPhotoJFIFTranscodeFromJFIF_cold_2(&v165);
    v31 = v165;
LABEL_189:
    v30 = 0;
    goto LABEL_214;
  }

LABEL_168:
  if (!a13)
  {
    v103 = 0;
LABEL_178:
    if (a24)
    {
      v30 = 0;
      if (!a25)
      {
        v31 = 0;
        goto LABEL_198;
      }

      v106 = Mutable;
      Mutable = 0;
LABEL_185:
      v30 = 0;
      v31 = 0;
      *a25 = v106;
      goto LABEL_198;
    }

    v107 = CFDataCreateMutable(a1, 0);
    if (!v107)
    {
      v30 = 0;
      v31 = 4294950305;
      goto LABEL_198;
    }

    v106 = v107;
    WritableWithCFMutableData = FigByteStreamCreateWritableWithCFMutableData();
    if (WritableWithCFMutableData)
    {
      v31 = WritableWithCFMutableData;
    }

    else
    {
      v109 = CMPhotoJFIFUtilitiesMergeImageComponents(a1, v132, Mutable, v134, v103, v133, 0);
      v31 = v109;
      if (a25 && !v109)
      {
        goto LABEL_185;
      }
    }

    v30 = v106;
    goto LABEL_198;
  }

  if (!v137)
  {
    CropPostOrientation = CMPhotoUnifiedJPEGEncoderCreate(a1, a20, a19, 0, &v137);
    if (CropPostOrientation)
    {
      goto LABEL_188;
    }
  }

  v102 = CFArrayCreateMutable(a1, a13, 0);
  if (!v102)
  {
    goto LABEL_190;
  }

  v103 = v102;
  if (a13 < 1)
  {
    goto LABEL_178;
  }

  v104 = 0;
  while (1)
  {
    v105 = _compressAuxImage(a1, v137, v103, v104, a23, a14, a15, 0);
    if (v105)
    {
      break;
    }

    if (a13 == ++v104)
    {
      goto LABEL_178;
    }
  }

  v31 = v105;
  v30 = 0;
LABEL_198:
  if (!v103)
  {
    goto LABEL_214;
  }

  if (CFArrayGetCount(v103) >= 1)
  {
    v110 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v103, v110);
      CMPhotoCompressedAuxImageStorageDestroy(ValueAtIndex);
      ++v110;
    }

    while (v110 < CFArrayGetCount(v103));
  }

  CMPhotoUnifiedJPEGEncoderDestroy(v137);
  CFRelease(v103);
  if (v32)
  {
LABEL_215:
    CFRelease(v32);
  }

LABEL_216:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  if (v133)
  {
    CFRelease(v133);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v132)
  {
    CFRelease(v132);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v31;
}