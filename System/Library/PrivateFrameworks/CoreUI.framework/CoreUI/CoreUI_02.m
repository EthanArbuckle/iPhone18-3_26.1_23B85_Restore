CFDataRef CUIUncompressHEVCInfoData(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    v9 = a4;
    if (a4 == 1095911234 || a4 == 1195456544)
    {
      result = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, (a1 + 8), *(a1 + 4), kCFAllocatorNull);
      if (!result)
      {
        return result;
      }

      v12 = result;
      v13 = CGImageSourceCreateWithData(result, 0);
      if (v13)
      {
        v20 = v13;
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
        if (ImageAtIndex)
        {
          v28 = ImageAtIndex;
          Width = CGImageGetWidth(ImageAtIndex);
          Height = CGImageGetHeight(v28);
          BytesPerRow = CGImageGetBytesPerRow(v28);
          BitsPerComponent = CGImageGetBitsPerComponent(v28);
          BitsPerPixel = CGImageGetBitsPerPixel(v28);
          ColorSpace = CGImageGetColorSpace(v28);
          v61 = ColorSpace;
          if (v9 == 1195456544 || CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelMonochrome)
          {
            v32 = Height;
            v36 = malloc_type_malloc(BytesPerRow * Height, 0xC3DD1445uLL);
            BitmapInfo = CGImageGetBitmapInfo(v28);
            __CFSetLastAllocationEventName();
            v35 = v36;
            v33 = 1;
            if (!v35)
            {
              v58 = 0;
              goto LABEL_34;
            }
          }

          else
          {
            v32 = Height;
            v33 = 0;
            BitmapInfo = 8196;
            BytesPerRow = a3;
            v35 = a2;
          }

          v58 = v35;
          srcs.data = v35;
          srcs.height = v32;
          srcs.width = Width;
          srcs.rowBytes = BytesPerRow;
          srcFormat.bitsPerComponent = BitsPerComponent;
          srcFormat.bitsPerPixel = BitsPerPixel;
          srcFormat.colorSpace = v61;
          srcFormat.bitmapInfo = BitmapInfo;
          memset(&srcFormat.version, 0, 20);
          if (MEMORY[0x193AC74A0](&srcs, &srcFormat, 0, v28, 768))
          {
            _CUILog(4, "CoreUI: Failed to get buffer from HEVC CGImage.", v37, v38, v39, v40, v41, v42, v57);
            goto LABEL_34;
          }

          if (v33)
          {
            if (v9 != 1195456544 && CGColorSpaceGetModel(v61))
            {
              CUIUncompressHEVCInfoData_cold_1();
            }

            error = 0;
            *&destFormat.bitsPerComponent = 0x1000000008;
            destFormat.colorSpace = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
            destFormat.bitmapInfo = 4100;
            memset(&destFormat.version, 0, 20);
            dests.data = a2;
            dests.height = v32;
            dests.width = Width;
            dests.rowBytes = a3;
            v43 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0x110u, &error);
            if (!v43 || error)
            {
              _CUILog(4, "CoreUI: Failed to create image format converter (at %s:%lu)", v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/CoreUI/CoreTheme/ImageUtils/CUIHEVCCompression.m");
              goto LABEL_33;
            }

            v50 = v43;
            error = vImageConvert_AnyToAny(v43, &srcs, &dests, 0, 0x110u);
            vImageConverter_Release(v50);
            if (error)
            {
              _CUILog(4, "CoreUI: Failed to convert to destination image format (at %s:%lu)", v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/CoreUI/CoreTheme/ImageUtils/CUIHEVCCompression.m");
LABEL_33:
              v33 = 1;
LABEL_34:
              CFRelease(v28);
              CFRelease(v20);
              CFRelease(v12);
              if (v33)
              {
                free(v58);
              }

              return 0;
            }

            CFRelease(v28);
            CFRelease(v20);
            CFRelease(v12);
            free(v58);
          }

          else
          {
            CFRelease(v28);
            CFRelease(v20);
            CFRelease(v12);
          }

          return 1;
        }

        _CUILog(4, "CoreUI: Failed to instantiate CGImage from HEVC data.", v22, v23, v24, v25, v26, v27, v57);
        CFRelease(v20);
      }

      else
      {
        _CUILog(4, "CoreUI: Failed to instantiate CGSourceRef from HEVC data.", v14, v15, v16, v17, v18, v19, v57);
      }

      CFRelease(v12);
    }

    else
    {
      _CUILog(4, "CoreUI: Unsupported pixel format: %u (at %s:%lu).", a3, a4, a5, a6, a7, a8, a4);
    }
  }

  else
  {
    _CUILog(4, "CoreUI: Invalid input to %s.", a3, a4, a5, a6, a7, a8, "Boolean CUIUncompressHEVCInfoData(const u_int8_t *, u_int8_t *, size_t, u_int32_t)");
  }

  return 0;
}

unsigned __int16 *CUIFillRenditionKeyForCARKeyArray(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    CUIFillRenditionKeyForCARKeyArray_cold_1();
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = CUIRenditionKeySetValueForAttribute(v6, *(a3 + 12 + 4 * v7), *(a2 + 2 * v7), (v5 + 1));
      ++v7;
      v5 = *(a3 + 8);
    }

    while (v5 > v7);
  }

  return result;
}

uint64_t CUIRenditionKeyIndexForAttribute(unsigned __int16 *a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  if (!a1[1] && v3 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = a1 + 3;
  while (v3 != a2)
  {
    v7 = *v6;
    v3 = *(v6 - 1);
    result = (result + 1);
    v6 += 2;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3 == 0;
    }

    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CUIRenditionKeyFormatRemoveAttribute(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = 0;
    v4 = result + 12;
    while (*(v4 + 4 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    if (v3 + 1 < v2)
    {
      do
      {
        *(v4 + 4 * v3) = *(result + 16 + 4 * v3);
        ++v3;
      }

      while (v2 - 1 != v3);
    }

    *(result + 8) = v2 - 1;
  }

  return result;
}

void CUIRenditionKeyStandardize(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  memset(v14, 0, 92);
  v6 = *(a3 + 8);
  if (v6 - 23 > 0xFFFFFFE7)
  {
    v7 = v14;
  }

  else
  {
    v7 = malloc_type_calloc(v6 + 3, 4uLL, 0x100004052888210uLL);
    v6 = *(a3 + 8);
  }

  v8 = v7;
  if (v6)
  {
    v9 = v6;
    v10 = (a3 + 12);
    v8 = v7;
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = CUIRenditionKeyValueForAttribute(a2, v12);
      if (v13)
      {
        *v8 = v11;
        *(v8 + 1) = v13;
        v8 += 4;
      }

      --v9;
    }

    while (v9);
  }

  *v8 = 0;
  CUIRenditionKeyCopy(a1, v7, (*(a3 + 8) + 1));
  if (v7 != v14)
  {
    free(v7);
  }
}

uint64_t CUICompareRenditionKey(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (!v4)
  {
    return 0;
  }

  v7 = (a3 + 12);
  while (1)
  {
    v8 = *v7;
    v7 += 2;
    v9 = CUIRenditionKeyValueForAttribute(a1, v8);
    v10 = CUIRenditionKeyValueForAttribute(a2, v8);
    v11 = v9 > v10 ? 1 : v3;
    v3 = v9 < v10 ? -1 : v11;
    if (v9 != v10)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t CUIMinScaleForTargetPlatform(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

double CUIPointSizeForDimensionForVectorGlyph(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a1 == 4)
    {
      return 17.0;
    }

    v2 = &__VectorGlyphDimension2ToPointSizeTableEmbedded;
    if (a1 == 5)
    {
      v2 = &__VectorGlyphDimension2ToPointSizeTableEmbedded;
    }
  }

  else
  {
    v2 = &__VectorGlyphDimension2ToPointSizeTableForMac;
  }

  return v2[a2];
}

uint64_t CUIMaxDimensionForVectorGlyph(uint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t CUIPreferredVectorGlyphConfigurationsForPlatform(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < 6)
  {
    return *(&off_1E724A168 + a1);
  }

  _CUILog(4, "CoreUI: CUIPreferredVectorGlyphConfigurationsForPlatform() called with an unknown platform '%d'", a3, a4, a5, a6, a7, a8, a1);
  return 0;
}

const char *CUICGBlendModeFromLSRDescription(void *a1)
{
  result = [a1 UTF8String];
  if (result)
  {
    v2 = result;
    v3 = off_1E7249EB8;
    v4 = 28;
    while (strcasecmp(*v3, v2))
    {
      v3 += 3;
      if (!--v4)
      {
        return 0;
      }
    }

    return *(v3 - 2);
  }

  return result;
}

__CFString *CUIBlendModeLSRDescriptionFromCGBlendMode(int a1)
{
  v1 = off_1E7249EB8;
  v2 = 28;
  while (*(v1 - 1) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return @"normal";
    }
  }

  return [NSString stringWithUTF8String:*v1];
}

__CFString *CUIBlendModeDescriptionFromCGBlendMode(int a1)
{
  if (a1)
  {
    v1 = &qword_1E7249EC8;
    v2 = 28;
    while (--v2)
    {
      v3 = v1 + 3;
      v4 = *v1;
      v1 += 3;
      if (v4 == a1)
      {
        v5 = *(v3 - 1);
        return [NSString stringWithUTF8String:v5];
      }
    }

    return @"Normal";
  }

  else
  {
    v5 = "Normal";
    return [NSString stringWithUTF8String:v5];
  }
}

const char *CUIThemeAttributeNameToString(int a1)
{
  if ((a1 - 1) > 0x1B)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1E724A198[a1 - 1];
  }
}

id CUIKeyFormatToArrayString(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      [v2 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", CUIThemeAttributeNameToString(*(a1 + 12 + 4 * v3++)))}];
    }

    while (*(a1 + 8) > v3);
  }

  return v2;
}

void CUISetThemeCleanupQueue(void *a1)
{
  v2 = a1;
  os_unfair_lock_lock(&__themeCleanupQueueLock);
  v3 = __themeCleanupQueue;
  __themeCleanupQueue = a1;
  os_unfair_lock_unlock(&__themeCleanupQueueLock);
}

id CUIGetThemeCleanupQueue()
{
  os_unfair_lock_lock(&__themeCleanupQueueLock);
  v0 = __themeCleanupQueue;
  os_unfair_lock_unlock(&__themeCleanupQueueLock);
  v1 = &_dispatch_main_q;
  if (v0)
  {
    v1 = v0;
  }

  v2 = v1;

  return v2;
}

uint64_t CreateFileOptionalLogging(char *a1, int a2, int a3)
{
  if (a2 && a2 != 1538)
  {
    if (a3)
    {
      fwrite("Error: Only GENERIC_READ or CREATE_ALWAYS supported at this time\n", 0x41uLL, 1uLL, __stderrp);
    }

    return 0xFFFFFFFFLL;
  }

  v5 = 511;
  if (a2 != 1538)
  {
    v5 = 0;
  }

  result = open(a1, a2, v5);
  if ((result & 0x80000000) != 0)
  {
    if (a3)
    {
      v7 = __stderrp;
      v8 = __error();
      v9 = strerror(*v8);
      fprintf(v7, "Failed to open file: %s [%s]\n", a1, v9);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t CloseHandle(int a1)
{
  if ((close(a1) & 0x80000000) == 0)
  {
    return 1;
  }

  v2 = __stderrp;
  v3 = __error();
  v4 = strerror(*v3);
  fprintf(v2, "Failed to close File Stream [%s]\n", v4);
  return 0;
}

uint64_t ReadFile(int a1, void *a2, size_t a3, _DWORD *a4)
{
  v5 = read(a1, a2, a3);
  if (v5 < 0)
  {
    v7 = __stderrp;
    v8 = __error();
    v9 = strerror(*v8);
    fprintf(v7, "Error while reading file: [%s]\n", v9);
    return 0;
  }

  else
  {
    *a4 = v5;
    return 1;
  }
}

unint64_t SetFilePointer(int a1, off_t a2, unint64_t *a3, int a4)
{
  if (a3)
  {
    result = lseek(a1, a2 | (*a3 << 32), a4);
    if ((result & 0x8000000000000000) == 0)
    {
      *a3 = HIDWORD(result);
      return result;
    }
  }

  else
  {
    result = lseek(a1, a2, a4);
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }
  }

  v6 = __stderrp;
  v7 = __error();
  v8 = strerror(*v7);
  fprintf(v6, "Error while seeking: [%s]\n", v8);
  return 0;
}

uint64_t File::BufferedWrite(File *this, const void *__buf, int64_t __nbyte)
{
  v6 = *(this + 2);
  if ((v6 + __nbyte) > 2048)
  {
    if (v6)
    {
      write(*(this + 515), this + 12, v6);
      *(this + 2) = 0;
    }

    if (__nbyte > 2048)
    {
      __nbyte += write(*(this + 515), __buf, __nbyte);
      return __nbyte;
    }

    v7 = this + 12;
  }

  else
  {
    v7 = this + v6 + 12;
  }

  memcpy(v7, __buf, __nbyte);
  *(this + 2) += __nbyte;
  return __nbyte;
}

uint64_t File::AppendUTF16StringCore(File *this, unsigned __int16 *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(this + 258);
  v7 = a3;
  while (1)
  {
    v9 = *a2++;
    v8 = v9;
    v10 = bswap32(v9) >> 16;
    if (v6 != 1)
    {
      v8 = v10;
    }

    __buf = v8;
    v11 = File::BufferedWrite(this, &__buf, 2);
    if (v11 == -1)
    {
      break;
    }

    v5 += v11;
    if (!--v7)
    {
      return v5;
    }
  }

  return -1;
}

uint64_t File::AppendZerosCore(File *this, size_t size)
{
  if (!size)
  {
    return 0;
  }

  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  bzero(v4, size);
  v6 = File::BufferedWrite(this, v5, size);
  free(v5);
  return v6;
}

void File::File(File *this, int a2, uint64_t a3)
{
  *this = &unk_1F00D3CD0;
  *(this + 2) = 0;
  *(this + 515) = a2;
  *(this + 258) = a3;
}

void File::HandleWriteOperationResults(File *this, uint64_t a2)
{
  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(1uLL);
  }
}

void File::AppendCString(File *this, char *__s)
{
  v4 = strlen(__s);
  v5 = File::BufferedWrite(this, __s, v4);

  File::HandleWriteOperationResults(v5, v5);
}

uint64_t File::AppendAsPString(uint64_t a1, char *__s, int a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x100)
  {
    exception = __cxa_allocate_exception(1uLL);
  }

  v7 = v6;
  (*(*a1 + 64))(a1, v6);
  result = (*(*a1 + 48))(a1, __s, v7);
  if (a3 == 2)
  {
    goto LABEL_11;
  }

  if (a3 != 4)
  {
    return result;
  }

  if (((v7 + 1) & 3u) > 1)
  {
    if (((v7 + 1) & 3) != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (((v7 + 1) & 3) == 0)
    {
      return result;
    }

    (*(*a1 + 64))(a1, 0);
  }

  (*(*a1 + 64))(a1, 0);
LABEL_11:
  v9 = *(*a1 + 64);

  return v9(a1, 0);
}

void File::AppendUTF16String(File *this, unsigned __int16 *a2, unsigned int a3)
{
  appended = File::AppendUTF16StringCore(this, a2, a3);

  File::HandleWriteOperationResults(appended, appended);
}

void File::AppendBytes(File *this, void *a2, int64_t a3)
{
  v3 = File::BufferedWrite(this, a2, a3);

  File::HandleWriteOperationResults(v3, v3);
}

void File::AppendZeros(File *this, size_t a2)
{
  appended = File::AppendZerosCore(this, a2);

  File::HandleWriteOperationResults(appended, appended);
}

void File::AppendUInt8(File *this, char a2)
{
  __buf = a2;
  v2 = File::BufferedWrite(this, &__buf, 1);
  File::HandleWriteOperationResults(v2, v2);
}

void File::AppendUInt16(File *this, __int16 a2)
{
  __buf = a2;
  if (*(this + 258) != 1)
  {
    __buf = __rev16(a2);
  }

  v2 = File::BufferedWrite(this, &__buf, 2);
  File::HandleWriteOperationResults(v2, v2);
}

void File::AppendUInt32(File *this, unsigned int a2)
{
  __buf = a2;
  if (*(this + 258) != 1)
  {
    __buf = bswap32(a2);
  }

  v2 = File::BufferedWrite(this, &__buf, 4);
  File::HandleWriteOperationResults(v2, v2);
}

void File::AppendFloat64(File *this, double a2)
{
  __buf = *&a2;
  if (*(this + 258) != 1)
  {
    __buf = bswap64(*&a2);
  }

  v2 = File::BufferedWrite(this, &__buf, 8);
  File::HandleWriteOperationResults(v2, v2);
}

size_t ByteCounter::AppendAsPString(uint64_t a1, char *__s, int a3)
{
  result = strlen(__s);
  if (result >= 0x100)
  {
    exception = __cxa_allocate_exception(1uLL);
  }

  v6 = result + *(a1 + 2072) + 1;
  *(a1 + 2072) = v6;
  if (a3 == 2)
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  if (a3 != 4)
  {
    return result;
  }

  if (((result + 1) & 3u) > 1)
  {
    if (((result + 1) & 3) != 3)
    {
      v7 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (((result + 1) & 3) == 0)
  {
    return result;
  }

  v7 = 3;
LABEL_9:
  *(a1 + 2072) = v6 + v7;
  return result;
}

void File::~File(File *this)
{
  File::~File(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D3CD0;
  v2 = *(this + 515);
  if (v2)
  {
    v3 = *(this + 2);
    if (v3)
    {
      write(v2, this + 12, v3);
      *(this + 2) = 0;
    }
  }
}

void ByteCounter::~ByteCounter(ByteCounter *this)
{
  File::~File(this);

  JUMPOUT(0x193AC64C0);
}

size_t ByteCounter::AppendCString(ByteCounter *this, char *__s)
{
  result = strlen(__s);
  *(this + 259) += result;
  return result;
}

__CFData *CUIImageCompressedWithJPEGandLZFSE(CGImageRef image, _DWORD *a2, __int16 *a3, size_t *a4, double a5)
{
  v9 = image;
  v10 = a5 > 1.0 || a5 <= 0.0;
  if (a2)
  {
    *a2 = 1095911234;
  }

  if (a3)
  {
    *a3 = 1;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (BitsPerComponent < 9)
  {
    goto LABEL_20;
  }

  ColorSpace = CGImageGetColorSpace(v9);
  if (CGColorSpaceGetModel(ColorSpace))
  {
    v13 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    if (a2)
    {
      *a2 = 1095911234;
    }

    if (a3)
    {
      v14 = 3;
LABEL_18:
      *a3 = v14;
    }
  }

  else
  {
    v13 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
    if (a2)
    {
      *a2 = 1195456544;
    }

    if (a3)
    {
      v14 = 2;
      goto LABEL_18;
    }
  }

  v9 = CUIConvertDeepImageTo8(v9, v13);
  CFRelease(v13);
  if (!v9)
  {
    return 0;
  }

LABEL_20:
  AlphaInfo = CGImageGetAlphaInfo(v9);
  BitmapInfo = CGImageGetBitmapInfo(v9);
  Width = CGImageGetWidth(v9);
  *bytes = 0;
  length = 0;
  v55 = 0;
  if (AlphaInfo > kCGImageAlphaNoneSkipFirst)
  {
    _CUILog(4, "CoreUI: need to do something here", v17, v18, v19, v20, v21, v22, v48.data);
    v24 = 0;
LABEL_31:
    v25 = 32;
    v26 = 1;
    AlphaInfo = kCGImageAlphaNoneSkipLast;
    goto LABEL_32;
  }

  if (((1 << AlphaInfo) & 0x2A) != 0)
  {
    if ((BitmapInfo & 0x7000) == 0x2000)
    {
      v24 = 0;
    }

    else
    {
      v24 = 3;
    }

    goto LABEL_31;
  }

  if (((1 << AlphaInfo) & 0x54) != 0)
  {
    if ((BitmapInfo & 0x7000) == 0x2000)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    v25 = 32;
    v26 = 1;
    AlphaInfo = kCGImageAlphaNoneSkipFirst;
  }

  else
  {
    v26 = 0;
    v24 = AlphaInfo;
    v25 = 24;
  }

LABEL_32:
  memset(&src, 0, sizeof(src));
  memset(&v48, 0, sizeof(v48));
  LODWORD(space[0]) = 8;
  HIDWORD(space[0]) = v25;
  space[1] = CGImageGetColorSpace(v9);
  v27 = CGImageGetAlphaInfo(v9);
  v28 = CGImageGetBitmapInfo(v9);
  v29 = v28 | v27;
  v50 = v28 | v27;
  RenderingIntent = CGImageGetRenderingIntent(v9);
  v30 = MEMORY[0x193AC74A0](&src, space, 0, v9, 256);
  if (BitsPerComponent >= 9)
  {
    CGImageRelease(v9);
  }

  if (v30)
  {
    return 0;
  }

  LODWORD(v50) = v50 & ~(v29 & 0x1F) | AlphaInfo;
  v33 = MEMORY[0x193AC7550](&src, space, 0, 0, 0, 0);
  if (!v33)
  {
    return 0;
  }

  v34 = v33;
  if (a4)
  {
    *a4 = CGImageGetBytesPerRow(v33);
  }

  v35 = a5;
  v36 = CGImageGetColorSpace(v34);
  if (v36 != space[1])
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v34, space[1]);
    CGImageRelease(v34);
    v34 = CopyWithColorSpace;
  }

  space[1] = 0;
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v58[0] = kCGImageMetadataShouldExcludeXMP;
  v58[1] = @"kCGImageMetadataShouldExcludeGPS";
  v59[0] = &unk_1F00F7C28;
  v59[1] = &unk_1F00F7C28;
  v39 = CGImageDestinationCreateWithData(Mutable, @"public.jpeg", 1uLL, [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2, v48.data, v48.height, *&v48.width, space[0]]);
  v56[0] = kCGImageDestinationLossyCompressionQuality;
  LODWORD(v40) = *"fff?";
  if (!v10)
  {
    *&v40 = v35;
  }

  v57[0] = [NSNumber numberWithFloat:v40];
  v57[1] = &unk_1F00F7C28;
  v56[1] = @"kCGImageDestinationChromaSubSamplingX";
  v56[2] = @"kCGImageDestinationChromaSubSamplingY";
  v57[2] = &unk_1F00F7C28;
  CGImageDestinationAddImage(v39, v34, [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3]);
  CGImageDestinationFinalize(v39);
  CFRelease(v34);
  *bytes = 0;
  v41 = CFDataGetLength(Mutable);
  HIDWORD(length) = Width;
  v55 = v41;
  v42 = Width;
  v43 = malloc_type_malloc(src.height * Width, 0x2E0F525AuLL);
  __CFSetLastAllocationEventName();
  v44 = 0;
  LODWORD(length) = 0;
  if (!v26)
  {
    goto LABEL_50;
  }

  v48.height = src.height;
  v48.width = src.width;
  v48.rowBytes = src.width;
  v48.data = malloc_type_malloc(src.width * src.height, 0x7F9564AuLL);
  __CFSetLastAllocationEventName();
  if (!vImageExtractChannel_ARGB8888(&src, &v48, v24, 0x100u))
  {
    v44 = compression_encode_buffer(v43, src.height * v42, v48.data, v48.rowBytes * v48.height, 0, COMPRESSION_LZFSE);
    LODWORD(length) = v44;
    free(v48.data);
    if (!v44)
    {
      goto LABEL_47;
    }

LABEL_50:
    v31 = CFDataCreateMutable(kCFAllocatorDefault, v41 + v44 + 20);
    CFDataAppendBytes(v31, bytes, 20);
    CFDataAppendBytes(v31, v43, length);
    BytePtr = CFDataGetBytePtr(Mutable);
    v46 = CFDataGetLength(Mutable);
    CFDataAppendBytes(v31, BytePtr, v46);
    goto LABEL_51;
  }

  free(v48.data);
LABEL_47:
  v31 = 0;
LABEL_51:
  free(src.data);
  free(v43);
  CFRelease(v39);
  CFRelease(Mutable);
  if (v31)
  {
    v47 = CFDataGetLength(v31);
    if (v47 > (src.height * HIDWORD(length)))
    {
      CFRelease(v31);
      return 0;
    }
  }

  return v31;
}

BOOL CUIUncompressJPEGandLZFSEInfoData(const UInt8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1))
  {
    _CUILog(4, "CoreUI: not expecting to a JPEG-LZFSE image with a chunk count != 0", a3, a4, a5, a6, a7, a8, v46);
    return 0;
  }

  else
  {
    v9 = a6;
    v10 = a5;
    v11 = a4;
    v15 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, &a1[*(a1 + 2) + 20], *(a1 + 4), kCFAllocatorNull);
    v16 = CGImageSourceCreateWithData(v15, 0);
    if (v16)
    {
      v17 = v16;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
      v8 = ImageAtIndex;
      if (ImageAtIndex)
      {
        v80 = 0;
        v81 = &v80;
        v82 = 0x2020000000;
        v83 = 0;
        v74 = 0;
        v75 = &v74;
        v76 = 0x4010000000;
        v77 = "";
        v78 = 0u;
        v79 = 0u;
        v64 = 0;
        v65 = &v64;
        v66 = 0x4810000000;
        v67 = "";
        v70 = 0;
        v73 = 0u;
        memset(&newSrc, 0, sizeof(newSrc));
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 0;
        v68 = v11;
        v69 = v10;
        v71 = v9;
        v72 = 0;
        *&v73 = 0;
        ColorSpace = CGImageGetColorSpace(ImageAtIndex);
        v26 = v65;
        v65[5] = ColorSpace;
        *(v26 + 16) = 0;
        v27 = v75;
        v75[1].rowBytes = a3;
        v27[1].data = a2;
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = __CUIUncompressJPEGandLZFSEInfoData_block_invoke;
        v50[3] = &unk_1E724A280;
        v50[4] = &v80;
        v50[5] = &v74;
        v50[6] = &v64;
        v50[7] = v8;
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = __CUIUncompressJPEGandLZFSEInfoData_block_invoke_2;
        v48[3] = &unk_1E724A2A8;
        v49 = v9;
        v48[4] = &v51;
        v48[5] = &v55;
        v48[8] = v8;
        v48[9] = a1;
        v48[6] = &v59;
        v48[7] = a1;
        v28 = objc_alloc_init(NSMutableArray);
        [v28 addObject:v50];
        [v28 addObject:v48];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __CUIUncompressJPEGandLZFSEInfoData_block_invoke_3;
        block[3] = &unk_1E724A2D0;
        block[4] = v28;
        dispatch_apply([v28 count], 0, block);

        if (!v60[3] || v81[3])
        {
          _CUILog(4, "CoreUI: Couldn't decompress the alpha channel or decode JPEG of a JPEG-LZFSE image %zu:%zd", v29, v30, v31, v32, v33, v34, v60[3]);
        }

        else
        {
          newSrc.data = v56[3];
          newSrc.height = CGImageGetHeight(v8);
          Width = CGImageGetWidth(v8);
          v36 = *(a1 + 3);
          newSrc.width = Width;
          newSrc.rowBytes = v36;
          v37 = vImageOverwriteChannels_ARGB8888(&newSrc, v75 + 1, v75 + 1, *(v52 + 24), 0x10u);
          v81[3] = v37;
          if (v37)
          {
            _CUILog(4, "CoreUI: Couldn't clip to alpha of a JPEG-LZFSE image %zd", v38, v39, v40, v41, v42, v43, v37);
          }

          else
          {
            v44 = vImageClipToAlpha_RGBA8888(v75 + 1, v75 + 1, 0x10u);
            v81[3] = v44;
          }
        }

        free(v56[3]);
        CFRelease(v8);
        if (v60[3])
        {
          v8 = v81[3] == 0;
        }

        else
        {
          v8 = 0;
        }

        _Block_object_dispose(&v51, 8);
        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v64, 8);
        _Block_object_dispose(&v74, 8);
        _Block_object_dispose(&v80, 8);
      }

      else
      {
        _CUILog(4, "CoreUI: Couldn't get the jpeg CGImageFrom from the data of a JPEG-LZFSE image", v19, v20, v21, v22, v23, v24, v46);
      }

      CFRelease(v17);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v15);
  }

  return v8;
}

void sub_18DF7798C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v52 - 208), 8);
  _Block_object_dispose((v52 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __CUIUncompressJPEGandLZFSEInfoData_block_invoke(void *a1)
{
  result = MEMORY[0x193AC74A0](*(a1[5] + 8) + 32, *(a1[6] + 8) + 32, 0, a1[7], 768);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void __CUIUncompressJPEGandLZFSEInfoData_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 80);
  if ((v10 & 0x1Fu) <= 6)
  {
    v12 = 1 << (v10 & 0x1F);
    if ((v12 & 0x2A) != 0)
    {
      v16 = v10 & 0x7000;
      v14 = *(*(a1 + 32) + 8);
      if (v16 == 0x2000)
      {
LABEL_5:
        v15 = 8;
LABEL_8:
        *(v14 + 24) = v15;
        v17 = *(a1 + 56);
        Height = CGImageGetHeight(*(a1 + 64));
        *(*(*(a1 + 40) + 8) + 24) = malloc_type_malloc(Height * *(*(a1 + 72) + 12), 0xD631887FuLL);
        __CFSetLastAllocationEventName();
        v19 = *(*(*(a1 + 40) + 8) + 24);
        v20 = CGImageGetHeight(*(a1 + 64));
        *(*(*(a1 + 48) + 8) + 24) = compression_decode_buffer(v19, v20 * *(*(a1 + 72) + 12), (v17 + 20), *(*(a1 + 72) + 8), 0, COMPRESSION_LZFSE);
        return;
      }
    }

    else
    {
      if ((v12 & 0x54) == 0)
      {
        return;
      }

      v13 = v10 & 0x7000;
      v14 = *(*(a1 + 32) + 8);
      if (v13 != 0x2000)
      {
        goto LABEL_5;
      }
    }

    v15 = 1;
    goto LABEL_8;
  }

  _CUILog(4, "CoreUI: not expecting to get an AlphaOnly image don't know how to handle this", a3, a4, a5, a6, a7, a8, a9);
}

uint64_t __CUIUncompressJPEGandLZFSEInfoData_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *([*(a1 + 32) objectAtIndex:a2] + 2);

  return v2();
}

void _CUISetPattern(CGContext *a1, CGPattern *a2)
{
  if (a2)
  {
    components = 1.0;
    Pattern = CGColorSpaceCreatePattern(0);
    CGContextSetFillColorSpace(a1, Pattern);
    CGContextSetFillPattern(a1, a2, &components);
    CGContextSetStrokeColorSpace(a1, Pattern);
    CGContextSetStrokePattern(a1, a2, &components);
    CGColorSpaceRelease(Pattern);
  }
}

void drawPatternBitmap(CGImageRef image, CGContextRef c)
{
  v2.origin.x = 0.0;
  v2.origin.y = 0.0;
  v2.size.width = 1.0;
  v2.size.height = 1.0;
  CGContextDrawImage(c, v2, image);
}

__CFData *__CUIImageCompressedWithDeepmap2(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v21 = a3;
  v22 = a4;
  v20 = 0;
  Buffer = vImageDeepmap2EncodeCreateBuffer();
  if (!Buffer)
  {
    v14 = "CoreUI: vImageDeepmap2EncodeCreateBuffer() returned 0.";
LABEL_7:
    _CUILog(4, v14, v6, v7, v8, v9, v10, v11, v16);
    return 0;
  }

  v12 = Buffer;
  __CUIImageCompressedWithDeepmap2_cold_1();
  if ((v21 - 1) >= 4)
  {
    v16 = v21;
    v14 = "CoreUI: vImageDeepmap2EncodeCreateBuffer() returned unrecognized compression method: %lu [%s]";
    goto LABEL_7;
  }

  *bytes = 1;
  v18 = a2;
  v19 = v12;
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, v12 + 16);
  CFDataAppendBytes(Mutable, bytes, 16);
  CFDataAppendBytes(Mutable, v20, v12);
  free(v20);
  return Mutable;
}

id CUIImageCompressedWithDeepmap2(unsigned int *a1, void *a2, uint64_t a3, _DWORD *a4, __int16 *a5, uint64_t *a6, _DWORD *a7, uint64_t a8)
{
  if (!*a2 || !a2[3] || !a2[2] || !a2[1])
  {
    _CUILog(4, "CoreUI: invalid input image buffer in %s", a3, a4, a5, a6, a7, a8, "NSArray<NSData *> *CUIImageCompressedWithDeepmap2(vImage_CGImageFormat, vImage_Buffer, u_int32_t, u_int32_t *, short *, size_t *, u_int32_t *)");
    return 0;
  }

  if (*a1 != 8 && *a1 != 16)
  {
    _CUILog(4, "CoreUI: unsupported bpc for Deepmap 2.0 compression: %d [%s].", a3, a4, a5, a6, a7, a8, *a1);
    return 0;
  }

  if (!*(a1 + 1))
  {
    _CUILog(4, "CoreUI: Missing image color space to perform Deemap 2.0 compression [%s].", a3, a4, a5, a6, a7, a8, "NSArray<NSData *> *CUIImageCompressedWithDeepmap2(vImage_CGImageFormat, vImage_Buffer, u_int32_t, u_int32_t *, short *, size_t *, u_int32_t *)");
    return 0;
  }

  if (a3 > 1195456543)
  {
    if (a3 == 1195456544)
    {
      v11 = 2;
      v10 = 2;
      goto LABEL_23;
    }

    if (a3 == 1380401751)
    {
      v10 = 20;
      v11 = 4;
      goto LABEL_23;
    }

LABEL_20:
    _CUILog(4, "CoreUI: Unrecognized input pixel format: %d [%s]", a3, a4, a5, a6, a7, a8, a3);
    return 0;
  }

  if (a3 == 1095911234)
  {
    v10 = 4;
    v11 = 1;
    goto LABEL_23;
  }

  if (a3 != 1195454774)
  {
    goto LABEL_20;
  }

  v10 = 18;
  v11 = 6;
LABEL_23:
  *a4 = a3;
  *a5 = v11;
  *a6 = CGBitmapGetAlignedBytesPerRow();
  v12 = objc_alloc_init(NSMutableArray);
  v15 = a2[1];
  v14 = a2[2];
  if (v15 * v14 < 0x100000)
  {
    v17 = *(a2 + 1);
    v31 = *a2;
    v32 = v17;
    v18 = __CUIImageCompressedWithDeepmap2(&v31, v10, 0x100000000, 10);
    if (v18)
    {
      v25 = v18;
      [v12 addObject:v18];
      CFRelease(v25);
      *a7 = a2[1];
      return v12;
    }
  }

  else
  {
    if (v14 <= 0x100000)
    {
      v16 = 0x100000 / v14;
    }

    else
    {
      v16 = 1;
    }

    if (!v15)
    {
LABEL_36:
      *a7 = v16;
      return v12;
    }

    v26 = *a2;
    while (1)
    {
      v27 = v15 >= v16 ? v16 : v15;
      *a2 = v26;
      a2[1] = v27;
      v28 = *(a2 + 1);
      v31 = *a2;
      v32 = v28;
      v29 = __CUIImageCompressedWithDeepmap2(&v31, v10, 0x100000000, 10);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      [v12 addObject:v29];
      CFRelease(v30);
      v26 += a2[3] * v27;
      v15 -= v27;
      if (!v15)
      {
        goto LABEL_36;
      }
    }
  }

  _CUILog(4, "CoreUI: Deepmap 2.0 compressed failed in %s [%s:%lu]", v19, v20, v21, v22, v23, v24, "NSArray<NSData *> *CUIImageCompressedWithDeepmap2(vImage_CGImageFormat, vImage_Buffer, u_int32_t, u_int32_t *, short *, size_t *, u_int32_t *)");

  return 0;
}

uint64_t __CUIUncompressDeepmap2ImageData_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *([*(a1 + 32) objectAtIndex:a2] + 2);

  return v2();
}

uint64_t _CUIColorSpaceGetGenericRGB()
{
  if (_CUIColorSpaceGetGenericRGB___once != -1)
  {
    _CUIColorSpaceGetGenericRGB_cold_1();
  }

  return _CUIColorSpaceGetGenericRGB_sGenericRGBColorSpace;
}

uint64_t _CUIColorSpaceGetExtendedRangeSRGB()
{
  if (_CUIColorSpaceGetExtendedRangeSRGB___once != -1)
  {
    _CUIColorSpaceGetExtendedRangeSRGB_cold_1();
  }

  return _CUIColorSpaceGetExtendedRangeSRGB_sExtendedRangeSRGBColorSpace;
}

uint64_t _CUIColorSpaceGetExtendedGray()
{
  if (_CUIColorSpaceGetExtendedGray___once != -1)
  {
    _CUIColorSpaceGetExtendedGray_cold_1();
  }

  return _CUIColorSpaceGetExtendedGray_sExtendedGrayColorSpace;
}

uint64_t _CUIColorSpaceGetExtendedLinearSRGB()
{
  if (_CUIColorSpaceGetExtendedLinearSRGB___once != -1)
  {
    _CUIColorSpaceGetExtendedLinearSRGB_cold_1();
  }

  return _CUIColorSpaceGetExtendedLinearSRGB_sExtendedLinearSRGBColorSpace;
}

uint64_t _CUIColorSpaceGetGenericLab()
{
  if (_CUIColorSpaceGetGenericLab___once != -1)
  {
    _CUIColorSpaceGetGenericLab_cold_1();
  }

  return _CUIColorSpaceGetGenericLab_sGenericLabColorSpace;
}

uint64_t __sliceSort(void *a1, void *a2)
{
  [a1 rectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [a2 rectValue];
  v12 = v6 + v10;
  v15 = v13 + v14;
  v16 = v4 + v8;
  v18 = v11 + v17;
  v19 = -1;
  if (v6 < v13)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (v16 > v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  if (v16 != v18)
  {
    v20 = v21;
  }

  if (v4 >= v11)
  {
    v22 = 1;
  }

  else
  {
    v22 = -1;
  }

  if (v4 != v11)
  {
    v20 = v22;
  }

  if (v12 < v15)
  {
    v19 = 1;
  }

  if (v12 == v15)
  {
    return v20;
  }

  else
  {
    return v19;
  }
}

id OUTLINED_FUNCTION_20_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_23(char *buffer)
{

  return CFStringGetFileSystemRepresentation(v1, buffer, v2);
}

char *CUIConvertCompressionTypeToString(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E724A498[a1];
  }
}

const char *CUIConvertPixelFormatToString(int a1)
{
  if (a1 > 1246774598)
  {
    if (a1 <= 1380401716)
    {
      if (a1 == 1246774599)
      {
        return "JPEG";
      }

      if (a1 == 1346651680)
      {
        return "PDF";
      }
    }

    else
    {
      switch(a1)
      {
        case 1380401717:
          return "RGB5";
        case 1398163232:
          return "SVG";
        case 1380401751:
          return "RGBW";
      }
    }
  }

  else if (a1 <= 1195454773)
  {
    if (a1 == 1095911234)
    {
      return "ARGB";
    }

    if (a1 == 1145132097)
    {
      return "DATA";
    }
  }

  else
  {
    switch(a1)
    {
      case 1195454774:
        return "GA16";
      case 1195456544:
        return "GA8";
      case 1212500294:
        return "HEIF";
    }
  }

  return "(Unknown)";
}

uint64_t CUILogHandle()
{
  if (__onceToken != -1)
  {
    CUILogHandle_cold_1();
  }

  return __handle;
}

void sub_18DF7BE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initMDLMaterial()
{
  __NSGetFrameworkReference();
  result = objc_getClass("MDLMaterial");
  classMDLMaterial = result;
  if (!result)
  {
    initMDLMaterial_cold_1();
  }

  getMDLMaterialClass[0] = MDLMaterialFunction;
  return result;
}

void __NSGetFrameworkReference()
{
  os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock);
  v0 = [__NSGetFrameworkReference_table objectForKey:@"ModelIO"];
  os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock);
  if (!v0)
  {
    v1 = __NSLoadFramework(@"ModelIO");
    if (v1)
    {
      v2 = v1;
      os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock);
      v3 = __NSGetFrameworkReference_table;
      if (!__NSGetFrameworkReference_table)
      {
        v3 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:2 capacity:0];
        __NSGetFrameworkReference_table = v3;
      }

      if (![v3 objectForKey:@"ModelIO"])
      {
        [__NSGetFrameworkReference_table setObject:v2 forKey:@"ModelIO"];
      }

      os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock);
    }
  }
}

const char *__NSLoadFramework(void *a1)
{
  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  if (a1)
  {
    result = [a1 UTF8String];
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = "AppKit";
  }

  v3 = v8;
  v4 = "/System/Library/Frameworks/";
  while (1)
  {
    if (snprintf(__str, 0x400uLL, "%s%s.framework/%s", v4, v2, v2) <= 1023)
    {
      result = dlopen(__str, 2);
      if (result)
      {
        break;
      }
    }

    v5 = *v3++;
    v4 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

Class initMDLTexture()
{
  __NSGetFrameworkReference();
  result = objc_getClass("MDLTexture");
  classMDLTexture = result;
  if (!result)
  {
    initMDLTexture_cold_1();
  }

  getMDLTextureClass[0] = MDLTextureFunction;
  return result;
}

Class initMDLTextureSampler()
{
  __NSGetFrameworkReference();
  result = objc_getClass("MDLTextureSampler");
  classMDLTextureSampler = result;
  if (!result)
  {
    initMDLTextureSampler_cold_1();
  }

  getMDLTextureSamplerClass[0] = MDLTextureSamplerFunction;
  return result;
}

Class initMDLMaterialProperty()
{
  __NSGetFrameworkReference();
  result = objc_getClass("MDLMaterialProperty");
  classMDLMaterialProperty = result;
  if (!result)
  {
    initMDLMaterialProperty_cold_1();
  }

  getMDLMaterialPropertyClass[0] = MDLMaterialPropertyFunction;
  return result;
}

Class initMDLSubmesh()
{
  __NSGetFrameworkReference();
  result = objc_getClass("MDLSubmesh");
  classMDLSubmesh = result;
  if (!result)
  {
    initMDLSubmesh_cold_1();
  }

  getMDLSubmeshClass[0] = MDLSubmeshFunction;
  return result;
}

BOOL CUIExpandATECompressedDataIntoBuffer(uint64_t a1, int a2, void *a3, uint64_t a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if (*a1)
  {
    v13 = malloc_default_zone();
    v14 = malloc_type_zone_memalign(v13, 0x40uLL, *(a1 + 8), 0x44BCE2C9uLL);
    __CFSetLastAllocationEventName();
    if (!compression_decode_buffer(v14, *(a1 + 8), (a1 + 12), *(a1 + 4), 0, COMPRESSION_LZFSE))
    {
      goto LABEL_41;
    }

    goto LABEL_6;
  }

  v15 = (a1 + 12);
  if (((a1 + 12) & 0x3F) != 0)
  {
    v16 = malloc_default_zone();
    v14 = malloc_type_zone_memalign(v16, 0x40uLL, *(a1 + 8), 0x2F31DC04uLL);
    __CFSetLastAllocationEventName();
    memcpy(v14, (a1 + 12), *(a1 + 8));
LABEL_6:
    v15 = v14;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  v17 = at_texel_format_bgra8_unorm;
  if (v9 > 1195456543)
  {
    if (v9 == 1380401751)
    {
      goto LABEL_16;
    }

    v18 = 14368;
  }

  else
  {
    if (v9 == 1095911234)
    {
      goto LABEL_16;
    }

    v18 = 12598;
  }

  if (v9 != (v18 | 0x47410000))
  {
    _CUILog(4, "CoreUI: %s got a pixelFormat that it doesn't understand", a3, a4, a5, a6, a7, a8, "_Bool CUIExpandATECompressedDataIntoBuffer(const u_int8_t *, _Bool, u_int8_t *, enum CSIPixelFormat, size_t)");
    if (!v14)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (a2)
  {
    v17 = at_texel_format_l8_unorm;
  }

  else
  {
    v17 = at_texel_format_la8_unorm;
  }

LABEL_16:
  memset(&src, 0, sizeof(src));
  *&dest.validSize.z = 0;
  v19 = *v15;
  v20 = v15[1];
  if (v19 != 65)
  {
    if (v19 == 19 && v20 == 171 && v15[2] == 161 && v15[3] == 92)
    {
      v21 = (16 * (v15[4] & 0xF)) | v15[5];
      if (v21 > 135)
      {
        if (v21 > 167)
        {
          v22 = 13;
          v28 = 14;
          if (v21 != 204)
          {
            v28 = 0;
          }

          if (v21 != 202)
          {
            v22 = v28;
          }

          v24 = 11;
          v29 = 12;
          if (v21 != 170)
          {
            v29 = 0;
          }

          if (v21 != 168)
          {
            v24 = v29;
          }

          v26 = v21 <= 201;
          goto LABEL_53;
        }

        v33 = 8;
        v34 = 9;
        v37 = 10;
        if (v21 != 166)
        {
          v37 = 0;
        }

        if (v21 != 165)
        {
          v34 = v37;
        }

        v36 = v21 == 136;
      }

      else
      {
        if (v21 > 100)
        {
          v22 = 6;
          v23 = 7;
          if (v21 != 134)
          {
            v23 = 0;
          }

          if (v21 != 133)
          {
            v22 = v23;
          }

          v24 = 4;
          v25 = 5;
          if (v21 != 102)
          {
            v25 = 0;
          }

          if (v21 != 101)
          {
            v24 = v25;
          }

          v26 = v21 <= 132;
LABEL_53:
          if (v26)
          {
            v30 = v24;
          }

          else
          {
            v30 = v22;
          }

          v31 = 0;
LABEL_72:
          v32 = v15;
          goto LABEL_73;
        }

        v33 = 1;
        v34 = 2;
        v35 = 3;
        if (v21 != 85)
        {
          v35 = 0;
        }

        if (v21 != 84)
        {
          v34 = v35;
        }

        v36 = v21 == 68;
      }

      if (v36)
      {
        v30 = v33;
      }

      else
      {
        v30 = v34;
      }

      v31 = 0;
      goto LABEL_72;
    }

LABEL_40:
    _CUILog(4, "CoreUI: %s got data that is not ASTC or DXTC encoded %c%c%c%c", a3, a4, a5, a6, a7, a8, "_Bool CUIExpandATECompressedDataIntoBuffer(const u_int8_t *, _Bool, u_int8_t *, enum CSIPixelFormat, size_t)");
LABEL_41:
    free(v14);
    return 0;
  }

  if (v20 != 84 || v15[2] != 69 || v15[3] != 67 || v15[6])
  {
    goto LABEL_40;
  }

  v32 = 0;
  v30 = *(v15 + 13) | (v15[15] << 16);
  v31 = v15;
LABEL_73:
  v38 = *(v15 + 7) | (v15[9] << 16);
  v39 = *(v15 + 5) | (v15[12] << 16);
  if (a2)
  {
    v40 = at_alpha_not_premultiplied;
    v41 = at_alpha_not_premultiplied;
  }

  else
  {
    v40 = at_alpha_premultiplied;
    v41 = at_alpha_premultiplied;
  }

  v42 = at_encoder_create(v17, v40, v30, v41, 0);
  dest.texels = a3;
  *&dest.validSize.x = __PAIR64__(v39, v38);
  dest.validSize.z = 1;
  dest.rowBytes = a5;
  dest.sliceBytes = 0;
  *&v52.x = __PAIR64__(v39, v38);
  v52.z = 1;
  block_counts = at_encoder_get_block_counts(v42, v52);
  v44 = block_counts;
  v45 = HIDWORD(block_counts);
  v46 = at_encoder_get_block_size(v42) * block_counts;
  block_size = at_encoder_get_block_size(v42);
  if (v32)
  {
    v48 = v32;
  }

  else
  {
    v48 = v31;
  }

  src.blocks = v48 + 16;
  src.rowBytes = v46;
  src.sliceBytes = v45 * v44 * block_size;
  v49 = at_encoder_decompress_texels(v42, &src, &dest, at_flags_default);
  if (v14)
  {
    free(v14);
  }

  return v49 >= at_error_success;
}

void CUIUpdatePixelFormatForATECompressedData(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (*a1 <= 1195456543)
  {
    if (v8 != 1095911234)
    {
      if (v8 != 1195454774)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8 == 1195456544)
  {
LABEL_8:
    v9 = 1195456544;
    goto LABEL_9;
  }

  if (v8 == 1380401751)
  {
LABEL_7:
    v9 = 1095911234;
LABEL_9:
    *a1 = v9;
    return;
  }

LABEL_10:
  _CUILog(4, "CoreUI: %s got a pixelFormat that it doesn't understand", a3, a4, a5, a6, a7, a8, "void CUIUpdatePixelFormatForATECompressedData(enum CSIPixelFormat *)");
}

uint64_t __ATEBlockFormatToGLInternalFormat(at_block_format_t blockFormat, _DWORD *a2, int *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (blockFormat > at_block_format_bc4s)
  {
    if (blockFormat <= at_block_format_bc5s)
    {
      *a4 = 2;
      if (blockFormat == at_block_format_bc5)
      {
        v10 = 36285;
      }

      else
      {
        v10 = 36286;
      }

      goto LABEL_22;
    }

    switch(blockFormat)
    {
      case at_block_format_bc6:
        *a4 = 16;
        v10 = 36494;
        goto LABEL_22;
      case at_block_format_bc6u:
        *a4 = 16;
        v10 = 36495;
        goto LABEL_22;
      case at_block_format_bc7:
        *a4 = 16;
        v10 = 36492;
LABEL_22:
        *a3 = v10;
        goto LABEL_23;
    }

LABEL_24:
    _CUILog(4, "CoreUI: %s got a blockFormat doesn't understand", a3, a4, a5, a6, a7, a8, "void __ATEBlockFormatToGLInternalFormat(at_block_format_t, uint32_t *, uint32_t *, uint32_t *)");
    goto LABEL_23;
  }

  if (blockFormat > at_block_format_bc2)
  {
    if (blockFormat == at_block_format_bc3)
    {
      *a4 = 16;
      v10 = 33779;
    }

    else if (blockFormat == at_block_format_bc4)
    {
      *a4 = 16;
      v10 = 36283;
    }

    else
    {
      *a4 = 2;
      v10 = 36284;
    }

    goto LABEL_22;
  }

  if (blockFormat != at_block_format_bc1)
  {
    if (blockFormat == at_block_format_bc2)
    {
      *a4 = 16;
      v10 = 33778;
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  *a3 = 33777;
  *a4 = 8;
LABEL_23:
  result = at_block_format_to_MTLPixelFormat(blockFormat);
  *a2 = result;
  return result;
}

uint64_t __CUISubtypeFromIndex(uint64_t a1, unsigned int a2)
{
  if (a1 == -1)
  {
    if (a2 >= 0x20)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return dword_18E0213B8[a2];
    }
  }

  else if (a2)
  {
    if (a1 > 3)
    {
      if (a1 == 5)
      {
        if (a2 == 1)
        {
          return 3648;
        }

        goto LABEL_35;
      }

      if (a1 == 4)
      {
        v2 = a2 - 8;
        if (a2 - 8 < 0x18 && ((0xF18063u >> v2) & 1) != 0)
        {
          v3 = &unk_18E021438;
          return v3[v2];
        }

LABEL_35:
        __CUISubtypeFromIndex_cold_1(a1);
      }

LABEL_18:
      if (a1 <= 2 && a2 < 0x20 && ((0x713FFEFFu >> (a2 - 1)) & 1) != 0)
      {
        return dword_18E0214A4[a2 - 1];
      }

      goto LABEL_35;
    }

    if (a1)
    {
      if (a1 == 3)
      {
        v2 = a2 - 5;
        if (a2 - 5 < 3)
        {
          v3 = &unk_18E021498;
          return v3[v2];
        }

        goto LABEL_35;
      }

      goto LABEL_18;
    }

    v4 = 1864;
    if (a2 <= 26)
    {
      if (a2 == 1)
      {
        return v4;
      }

      if (a2 == 26)
      {
        return 1964;
      }

      goto LABEL_35;
    }

    if (a2 == 27)
    {
      return 2234;
    }

    if (a2 == 31)
    {
      return 1665;
    }

    if (a2 != 32)
    {
      goto LABEL_35;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t CUIParseDeploymentTarget(char *a1, int a2)
{
  if ("any")
  {
    v4 = &gThemeDeploymentTargets;
    if (!strcasecmp(a1, "any"))
    {
      return *v4;
    }

    while (1)
    {
      v5 = *(v4 + 5);
      if (!v5)
      {
        break;
      }

      v4 += 6;
      if (!strcasecmp(a1, v5))
      {
        return *v4;
      }
    }
  }

  v7 = [[NSString alloc] initWithUTF8String:a1];
  v8 = [v7 componentsSeparatedByString:@"."];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(v8 objectAtIndexedSubscript:{0), "intValue"}];
    if (v10 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = [objc_msgSend(v8 objectAtIndexedSubscript:{1), "intValue"}];
    }
  }

  else
  {
    v12 = 0;
    v11 = 0x7FFFFFFF;
  }

  if (a2 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2;
  }

  if (v13 <= 4)
  {
    if ((v13 - 1) < 4)
    {
      goto LABEL_16;
    }

LABEL_58:
    fprintf(__stderrp, "assuming --deployment-target %s == --deployment-target any\n", a1);
    return 0;
  }

  if (v13 == 8)
  {
    if (v11 <= 1)
    {
      v14 = v12 < 1;
LABEL_37:
      v15 = 9;
      goto LABEL_40;
    }

    if (v11 == 2)
    {
      return 11;
    }

    goto LABEL_56;
  }

  if (v13 != 7)
  {
    if (v13 != 5)
    {
      goto LABEL_58;
    }

    if (v11 < 3)
    {
      return 0;
    }

    if (v11 == 3)
    {
      return 1;
    }

    if (v11 < 5)
    {
      return 2;
    }

    if (v11 == 5)
    {
      goto LABEL_39;
    }

    if (v11 < 7)
    {
      return 5;
    }

    if (v11 == 7)
    {
      return 6;
    }

    if (v11 < 9)
    {
      return 7;
    }

    if (v11 == 9)
    {
      return 8;
    }

    if (v11 <= 0xA)
    {
      goto LABEL_54;
    }

    if (v11 == 11)
    {
      return 11;
    }

LABEL_56:
    if (v11 < 0x1B)
    {
      return 12;
    }

    goto LABEL_58;
  }

LABEL_16:
  if (v11 < 10)
  {
    return 0;
  }

  if (v11 == 10)
  {
    return 1;
  }

  if (v11 < 0xC)
  {
    return 2;
  }

  if (v11 != 12)
  {
    if (v11 < 0xE)
    {
      return 5;
    }

    if (v11 == 14)
    {
      return 6;
    }

    if (v11 < 0x10)
    {
      return 7;
    }

    if (v11 == 16)
    {
      return 8;
    }

    if (v11 <= 0x11)
    {
LABEL_54:
      v14 = v12 < 4;
      goto LABEL_37;
    }

    if (v11 != 18)
    {
      goto LABEL_56;
    }

    return 11;
  }

LABEL_39:
  v14 = v12 < 2;
  v15 = 3;
LABEL_40:
  if (v14)
  {
    return v15;
  }

  else
  {
    return v15 + 1;
  }
}

uint64_t CUIWatchSubTypeFallbackOrder(uint64_t result, void *a2)
{
  if (result > 445)
  {
    if (result <= 495)
    {
      if (result == 446)
      {
        v3 = 430;
LABEL_21:
        [a2 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v3)}];
LABEL_22:
        [a2 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 340)}];
        goto LABEL_23;
      }

      if (result != 484)
      {
        return result;
      }
    }

    else
    {
      if (result != 496)
      {
        if (result == 514)
        {
          [a2 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 502)}];
        }

        else if (result != 502)
        {
          return result;
        }
      }

      [a2 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 484)}];
    }

    v3 = 390;
    goto LABEL_21;
  }

  if (result > 389)
  {
    if (result != 390 && result != 430)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (result != 340)
  {
    if (result != 384)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_23:
  [a2 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 384)}];
LABEL_24:
  v4 = [NSNumber numberWithInteger:320];

  return [a2 addObject:v4];
}

id NSStringToUTF16LEBytes(NSString *a1, unsigned int *a2)
{
  v3 = [(NSString *)a1 dataUsingEncoding:2483028224];
  *a2 = [(NSData *)v3 length]>> 1;

  return [(NSData *)v3 bytes];
}

CPSDString *NewCPSDStringFromNSString(NSString *a1)
{
  v1 = [(NSString *)a1 dataUsingEncoding:2483028224];
  v2 = [(NSData *)v1 length]>> 1;
  v3 = [(NSData *)v1 bytes];
  v4 = operator new();
  CPSDString::CPSDString(v4, v3, v2);
  return v4;
}

void CPSDString::CPSDString(CPSDString *this, const unsigned __int16 *a2, unsigned int a3)
{
  *(this + 1) = 0;
  CPSDString::AllocateCharData(this, 1);
  **(this + 1) = 0;
  CPSDString::Init(this, a2, a3, 1);
}

void sub_18DF88C84(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C80BDFB0063);
    *(v1 + 8) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_18DF88D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18DF892F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF892A0);
}

void sub_18DF8963C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF8964CLL);
}

void sub_18DF89800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF89810);
}

void sub_18DF8A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF8A9ACLL);
}

void sub_18DF8AC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF8AC58);
}

void sub_18DF8AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF8AF58);
}

void sub_18DF8B100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF8B110);
}

void sub_18DF8B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF8B27CLL);
}

void sub_18DF8CE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF8CE48);
}

void *CPSDString::Init(void **this, const unsigned __int16 *a2, unsigned int a3, int a4)
{
  if (a3)
  {
    v7 = a2[a3 - 1] == 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    CPSDString::AllocateCharData(this, a3 + 1);
    result = memcpy(this[1], a2, (2 * *this - 2));
    *(this[1] + a3) = 0;
    return result;
  }

LABEL_7:
  CPSDString::AllocateCharData(this, a3);
  v9 = this[1];
  v10 = (2 * *this);

  return memcpy(v9, a2, v10);
}

uint64_t CPSDString::AllocateCharData(CPSDString *this, int a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    MEMORY[0x193AC64A0](v4, 0x1000C80BDFB0063);
    *(this + 1) = 0;
  }

  *this = a2;
  result = operator new[]();
  *(this + 1) = result;
  return result;
}

void sub_18DF8F7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t encodeRadiosity(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v10 = a1 - 0x10000;
  result = 0xFFFFFFFFLL;
  if (v10 < 0xFFFFFFFFFFFF0001)
  {
    return result;
  }

  if ((a2 - 0x10000) < 0xFFFFFFFFFFFF0001)
  {
    return result;
  }

  v12 = 4 * a1;
  if (4 * a1 > a3)
  {
    return result;
  }

  v13 = a4;
  if (a9 == 20.0)
  {
    v51 = a5;
    v52 = a6;
    v55 = a3;
    v14 = 4;
    v15 = 1060696910;
    v16 = -0.3324;
    v17 = 0.4574;
  }

  else
  {
    if (a9 != 40.0)
    {
      _CUILog(4, "Invalid sigma=%.2f\n", a3, a4, a5, a6, a7, a8, COERCE__INT64(a9));
      return 0xFFFFFFFFLL;
    }

    v51 = a5;
    v52 = a6;
    v55 = a3;
    v14 = 5;
    v15 = 1060748727;
    v16 = -0.16248;
    v17 = 0.22498;
  }

  v18 = (1 << v14);
  v19 = (a1 + v18 - 1) >> v14;
  v20 = (a2 + v18 - 1) >> v14;
  v21 = 4 * v19 * v20;
  v22 = 8 * v19 * v20 + 12;
  v49 = v19;
  v23 = malloc_type_malloc(16 * a1, 0x100004052888210uLL);
  v50 = v20;
  v24 = malloc_type_calloc(v20 * v12, 4uLL, 0x100004052888210uLL);
  v48 = v21;
  v53 = malloc_type_calloc(v21, 4uLL, 0x100004052888210uLL);
  v25 = malloc_type_malloc(v22, 0x100004077774924uLL);
  v26 = v24;
  if (!v23 || !v24 || (v53 ? (v27 = v25 == 0) : (v27 = 1), v27))
  {
    free(v24);
    free(v53);
    free(v23);
    free(v25);
    return 0xFFFFFFFFLL;
  }

  v28 = v18 >> 2;
  v29 = v14;
  v54 = v26;
  v47 = v22;
  bzero(v25, v22);
  v30 = 0;
  *v25 = a1;
  v25[1] = a2;
  v25[2] = v18;
  *(v25 + 2) = v15;
  v31 = v18 - 1;
  v32 = 3 * (v18 >> 2);
  do
  {
    if ((v31 & v30) >= v32 || (v31 & v30) < v28)
    {
      v34 = v16;
    }

    else
    {
      v34 = v17;
    }

    v59[0] = v34;
    src.data = v13;
    src.height = 1;
    src.width = 4 * a1;
    src.rowBytes = 4 * a1;
    dest.data = v23;
    dest.height = 1;
    dest.width = 4 * a1;
    dest.rowBytes = 4 * a1;
    vImageConvert_Planar8toPlanarF(&src, &dest, 255.0, 0.0, 0);
    MEMORY[0x193AC7420](v23, 1, v59, &v54[4 * (v30 >> v29) * v12], 1, &v54[4 * (v30 >> v29) * v12], 1, 4 * a1);
    ++v30;
    v13 += v55;
  }

  while (a2 != v30);
  v35 = v25 + 6;
  if (v50)
  {
    v36 = 0;
    v37 = v54;
    v38 = v53;
    do
    {
      if (a1)
      {
        v39 = 0;
        v40 = v37;
        do
        {
          v41 = 0;
          if ((v31 & v39) >= v32 || (v31 & v39) < v28)
          {
            v43 = v16;
          }

          else
          {
            v43 = v17;
          }

          do
          {
            *&v38[16 * (v39 >> v29) + v41] = *&v38[16 * (v39 >> v29) + v41] + (v43 * *&v40[v41]);
            v41 += 4;
          }

          while (v41 != 16);
          ++v39;
          v40 += 16;
        }

        while (v39 != a1);
      }

      ++v36;
      v38 += 16 * v49;
      v37 += 16 * a1;
    }

    while (v36 != v50);
    if (v49)
    {
      v44 = v48;
      if (v48 <= 1)
      {
        v44 = 1;
      }

      v45 = v53;
      do
      {
        v46 = *v45++;
        *v35++ = vcvts_n_s32_f32(v46, 6uLL);
        --v44;
      }

      while (v44);
    }
  }

  free(v54);
  free(v53);
  free(v23);
  result = 0;
  *v51 = v25;
  *v52 = v47;
  return result;
}

uint64_t decodeRadiosity(unsigned __int16 *a1, unint64_t a2, uint64_t a3, char *a4)
{
  if (a2 < 0xC)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1[2];
  v8 = -1;
  do
  {
    ++v8;
  }

  while (1 << v8 < v7);
  v9 = *a1;
  v10 = (v7 - 1 + v9) >> v8;
  v65 = a1[1];
  v11 = (v7 - 1 + v65) >> v8;
  v12 = malloc_type_calloc(3 * v7, 4uLL, 0x100004052888210uLL);
  v13 = 4 * v9;
  v68 = malloc_type_calloc(v11 * v13, 4uLL, 0x100004052888210uLL);
  v69 = v11;
  v14 = 4 * v10 * v11;
  v15 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  v16 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
  v63 = v15;
  if (v68)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17 || v12 == 0;
  v66 = v16;
  v19 = v18 || v16 == 0;
  v20 = v19;
  v62 = v20;
  if (!v19)
  {
    if (v7)
    {
      v21 = 0;
      v22 = vcvtd_n_f64_u32(v7, 1uLL);
      v23 = v12 + 2;
      do
      {
        v24 = (v21 + 0.5 - v22) / v22;
        v25 = v24 * (v24 * -2.0);
        v26 = *(a1 + 2);
        v27 = (v25 + v24 * (v24 * 3.0) * v24 + v24 * -5.0 + 4.0) * 0.125 + (v24 + v24 * v24 + -(v24 * v24) * v24 + -1.0) * 0.5 * v26;
        v28 = v24 * v24 * 0.5 + (1.0 - v24 * v24) * v26;
        *(v23 - 2) = v27;
        *(v23 - 1) = v28;
        *&v24 = (v25 + v24 * (v24 * -3.0) * v24 + v24 * 5.0 + 4.0) * 0.125 + (v24 * v24 + v24 * v24 * v24 - v24 + -1.0) * 0.5 * v26;
        *v23 = *&v24;
        v23 += 3;
        ++v21;
      }

      while (v7 != v21);
    }

    if (v14)
    {
      v29 = (a1 + 6);
      v30 = v15;
      do
      {
        v31 = *v29++;
        *v30++ = vcvts_n_f32_s32(v31, 6uLL);
        --v14;
      }

      while (v14);
    }

    v32 = 16 * v9;
    v33 = v68;
    if (v69)
    {
      v34 = 0;
      v35 = v15;
      v36 = v15 - 16;
      v37 = 16 * v10;
      v38 = v15 + 16;
      do
      {
        if (v9)
        {
          v39 = 0;
          v40 = v33;
          do
          {
            v41 = v39 >> v8;
            v42 = 3 * ((v7 - 1) & v39);
            if (v39 >> v8)
            {
              v43 = 0;
              v44 = v12[v42];
              do
              {
                *&v40[v43] = *&v40[v43] + (v44 * *&v36[16 * v41 + v43]);
                v43 += 4;
              }

              while (v43 != 16);
            }

            v45 = 0;
            v46 = &v12[v42];
            v47 = v46[1];
            do
            {
              *&v40[v45] = *&v40[v45] + (v47 * *&v35[16 * v41 + v45]);
              v45 += 4;
            }

            while (v45 != 16);
            if (v41 + 1 < v10)
            {
              v48 = 0;
              v49 = v46[2];
              v50 = &v38[16 * v41];
              do
              {
                *&v40[v48] = *&v40[v48] + (v49 * *&v50[v48]);
                v48 += 4;
              }

              while (v48 != 16);
            }

            ++v39;
            v40 += 16;
          }

          while (v39 != v9);
        }

        ++v34;
        v36 += v37;
        v33 += v32;
        v35 += v37;
        v38 += v37;
      }

      while (v34 != v69);
    }

    if (v65)
    {
      v51 = 0;
      v64 = v7 - 1;
      do
      {
        v52 = v66;
        bzero(v66, v32);
        v53 = v51 >> v8;
        v54 = 3 * (v64 & v51);
        if (v51 >> v8)
        {
          v70 = v12[v54];
          MEMORY[0x193AC7420](&v68[4 * (v53 - 1) * v13], 1, &v70, v66, 1, v66, 1, 4 * v9);
        }

        v55 = &v12[v54];
        v70 = *(v55 + 1);
        MEMORY[0x193AC7420](&v68[4 * v53 * v13], 1, &v70, v66, 1, v66, 1, 4 * v9);
        if (v53 + 1 < v69)
        {
          v70 = *(v55 + 2);
          MEMORY[0x193AC7420](&v68[4 * (v53 + 1) * v13], 1, &v70, v66, 1, v66, 1, 4 * v9);
        }

        v56 = 4 * v9;
        v57 = a4;
        if (v9)
        {
          do
          {
            v58 = *v52++;
            v59 = (v58 + 0.5);
            if (v59 >= 0xFF)
            {
              v60 = -1;
            }

            else
            {
              v60 = v59;
            }

            if (v59 >= 0)
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            *v57++ = v61;
            --v56;
          }

          while (v56);
        }

        ++v51;
        a4 += a3;
        v32 = 16 * v9;
      }

      while (v51 != v65);
    }
  }

  free(v12);
  free(v68);
  free(v63);
  free(v66);
  return (v62 << 31 >> 31);
}

uint64_t CUIConvertToTXRPixelFormat(uint64_t a1)
{
  result = 0;
  if (a1 <= 109)
  {
    if (a1 <= 59)
    {
      if (a1 == 55)
      {
        v3 = 55;
      }

      else
      {
        v3 = 0;
      }

      if (a1 == 32)
      {
        v3 = 32;
      }

      if (a1 == 31)
      {
        v3 = 31;
      }

      if (a1 == 30)
      {
        v8 = 30;
      }

      else
      {
        v8 = 0;
      }

      if (a1 == 25)
      {
        v8 = 25;
      }

      if (a1 == 22)
      {
        v8 = 22;
      }

      if (a1 <= 30)
      {
        v3 = v8;
      }

      if (a1 == 20)
      {
        v5 = 20;
      }

      else
      {
        v5 = 0;
      }

      if (a1 == 12)
      {
        v5 = 12;
      }

      if (a1 == 11)
      {
        v5 = 11;
      }

      if (a1 == 10)
      {
        v9 = 10;
      }

      else
      {
        v9 = 0;
      }

      if (a1 == 1)
      {
        v9 = 1;
      }

      if (a1 <= 10)
      {
        v5 = v9;
      }

      v7 = a1 <= 21;
    }

    else
    {
      if (a1 == 105)
      {
        v3 = 105;
      }

      else
      {
        v3 = 0;
      }

      if (a1 == 93)
      {
        v3 = 93;
      }

      if (a1 == 92)
      {
        v3 = 92;
      }

      if (a1 == 90)
      {
        v4 = 90;
      }

      else
      {
        v4 = 0;
      }

      if (a1 == 81)
      {
        v4 = 81;
      }

      if (a1 == 80)
      {
        v4 = 80;
      }

      if (a1 <= 91)
      {
        v3 = v4;
      }

      if (a1 == 72)
      {
        v5 = 72;
      }

      else
      {
        v5 = 0;
      }

      if (a1 == 71)
      {
        v5 = 71;
      }

      if (a1 == 70)
      {
        v5 = 70;
      }

      if (a1 == 65)
      {
        v6 = 65;
      }

      else
      {
        v6 = 0;
      }

      if (a1 == 62)
      {
        v6 = 62;
      }

      if (a1 == 60)
      {
        v6 = 60;
      }

      if (a1 <= 69)
      {
        v5 = v6;
      }

      v7 = a1 <= 79;
    }

LABEL_95:
    if (v7)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  if (a1 > 151)
  {
    if (a1 == 555)
    {
      v3 = 555;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 553)
    {
      v3 = 553;
    }

    if (a1 == 212)
    {
      v10 = 212;
    }

    else
    {
      v10 = 0;
    }

    if (a1 == 204)
    {
      v10 = 204;
    }

    if (a1 <= 552)
    {
      v3 = v10;
    }

    if (a1 == 194)
    {
      v5 = 194;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 186)
    {
      v5 = 186;
    }

    if (a1 == 153)
    {
      v11 = 153;
    }

    else
    {
      v11 = 0;
    }

    if (a1 == 152)
    {
      v11 = 152;
    }

    if (a1 <= 185)
    {
      v5 = v11;
    }

    v7 = a1 <= 203;
    goto LABEL_95;
  }

  switch(a1)
  {
    case 110:
    case 112:
    case 115:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

CFDataRef CUIConvertImageToPixelFormat(CGImage *a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, float64_t a7, float64_t a8)
{
  v13 = CUIConvertToTXRPixelFormat(a5);
  v14 = objc_alloc_init(TXRDefaultBufferAllocator);
  v49 = 0;
  v15 = objc_alloc_init(TXROptions);
  v16 = v15;
  v17 = 16;
  if (a2)
  {
    v17 = 64;
  }

  [v15 setOriginOperation:v17 | a3];
  if (a4 == 2)
  {
    [v16 setColorSpaceHandling:0];
    v18 = 1;
    [v16 setMultiplyAlpha:1];
  }

  else if (a4 == 1)
  {
    [v16 setColorSpaceHandling:0];
    v18 = 1;
  }

  else
  {
    if (!a4)
    {
      [v16 setColorSpaceHandling:3];
    }

    v18 = 0;
  }

  v19 = [[TXRImageIndependent alloc] initWithCGImage:a1 bufferAllocator:v14 options:v16 error:&v49];

  if (!v19)
  {
    _CUILog(4, "CoreUI: %s got error '%@' converting image", v20, v21, v22, v23, v24, v25, "CFDataRef CUIConvertImageToPixelFormat(CGImageRef, BOOL, int32_t, _CUIThemeTextureInterpretation, CGSize, _CUIThemeTexturePixelFormat, size_t *)");
LABEL_21:
    v44 = 0;
    goto LABEL_22;
  }

  Width = CGImageGetWidth(a1);
  v27.f64[0] = a7;
  if (a7 != Width || (Height = CGImageGetHeight(a1), v27.f64[0] = a7, a8 != Height))
  {
    v27.f64[1] = a8;
    v48 = COERCE_DOUBLE(vmovn_s64(vcvtq_u64_f64(v27)));
    v35 = [TXRDataScaler newImageFromSourceImage:v19 scaledDimensions:v14 bufferAllocattor:1 filter:&v49 error:?];
    if (v35)
    {
      v36 = [[TXRImageIndependent alloc] initWithImage:v35 dimensions:objc_msgSend(v19 pixelFormat:"pixelFormat"), v48];
      v37 = [TXRDataConverter newImageFromSourceImage:v36 newPixelFormat:v13 bufferAllocator:v14 gammaDegamma:v18 error:&v49];
    }

    else
    {
      _CUILog(4, "CoreUI: %s got error '%@' scaling image", v29, v30, v31, v32, v33, v34, "CFDataRef CUIConvertImageToPixelFormat(CGImageRef, BOOL, int32_t, _CUIThemeTextureInterpretation, CGSize, _CUIThemeTexturePixelFormat, size_t *)");
      v37 = 0;
    }

    if (v37)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v37 = [TXRDataConverter newImageFromSourceImage:v19 newPixelFormat:v13 bufferAllocator:v14 gammaDegamma:v18 error:&v49, Height, a7, a8];
  if (!v37)
  {
LABEL_20:
    _CUILog(4, "CoreUI: %s got error '%@' converting scaled image", v38, v39, v40, v41, v42, v43, "CFDataRef CUIConvertImageToPixelFormat(CGImageRef, BOOL, int32_t, _CUIThemeTextureInterpretation, CGSize, _CUIThemeTexturePixelFormat, size_t *)");
    goto LABEL_21;
  }

LABEL_18:
  *a6 = [v37 bytesPerRow];
  v44 = CFDataCreate(kCFAllocatorDefault, [objc_msgSend(objc_msgSend(v37 "buffer")], objc_msgSend(v37, "bytesPerImage"));

LABEL_22:
  return v44;
}

uint64_t CUIGetFormatForFeatureSetAndPixelFormat(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  if (!*a2)
  {
    v10 = 3001;
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v11 = 3001;
    if (v9 > 3)
    {
      v11 = 3002;
    }

    if (v9 <= 5)
    {
      v10 = v11;
    }

    else
    {
      v10 = 3003;
    }

    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if ((v9 - 2) <= 9)
  {
    v10 = qword_18E021570[v9 - 2];
    if (!a5)
    {
      goto LABEL_16;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_17;
  }

  v10 = 1001;
  if (a5)
  {
    goto LABEL_14;
  }

LABEL_16:
  v12 = objc_alloc_init(TXROptions);
  [v12 setColorSpaceHandling:3];
LABEL_17:
  v13 = [TXRDataConverter newPixelFormatSetForCGImage:a4 displayGamut:a3 == 1 options:v12];

  if (v9)
  {
    v14 = a1 & 0xFFFFFFFFFFFFFFFDLL;
    while (1)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
LABEL_21:
        v18 = 0;
        while (1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          +[TXRPixelFormatInfo isASTC:](TXRPixelFormatInfo, "isASTC:", [v19 unsignedIntegerValue]);
          [v19 unsignedIntegerValue];
          if (MTLGPUFamilySupportsSamplingFromPixelFormat())
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v16)
            {
              goto LABEL_21;
            }

            goto LABEL_29;
          }
        }

        v20 = [v19 unsignedIntegerValue];
        if (v20)
        {
          goto LABEL_42;
        }
      }

LABEL_29:
      if (v10 == 1000)
      {
        break;
      }

      if (v14)
      {
        if ((v10 - 1003) > 8)
        {
          v21 = 1;
        }

        else
        {
          v21 = qword_18E0215C0[v10 - 1003];
        }
      }

      else
      {
        v21 = 4;
        if (v10 != 3003)
        {
          v21 = 1;
        }

        if (v10 == 3002)
        {
          v21 = 2;
        }
      }

      *a2 = v21;
      --v10;
    }

    *a2 = 0;
  }

  v20 = [objc_msgSend(v13 "lastObject")];
LABEL_42:
  v22 = v20;

  return CUIConvertFromTXRPixelFormat(v22);
}

void CPSDFile::CPSDFile(CPSDFile *this)
{
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 32) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 44) = 0;
  *this = &unk_1F00D3FE0;
  *(this + 14) = &unk_1F00D4030;
  *(this + 16) = 0;
  *(this + 134) = 0;
  *(this + 38) = 0;
  *(this + 18) = 0;
  *(this + 20) = &unk_1F00D4070;
  *(this + 44) = 0;
  *(this + 23) = 0;
  *(this + 24) = &unk_1F00D40B0;
  *(this + 52) = 0;
  *(this + 27) = 0;
  CPSDLayerAndMaskInfo::CPSDLayerAndMaskInfo((this + 224));
  *(this + 392) = 0;
  *(this + 1) = this;
  *(this + 21) = this;
  *(this + 29) = this;
  *(this + 32) = this;
}

void CPSDImageResources::~CPSDImageResources(CPSDImageResources *this)
{
  *this = &unk_1F00D40B0;
  v1 = *(this + 3);
  if (v1)
  {
    do
    {
      v2 = v1[37];
      (*(*v1 + 8))(v1);
      v1 = v2;
    }

    while (v2);
  }
}

{
  *this = &unk_1F00D40B0;
  v1 = *(this + 3);
  if (v1)
  {
    do
    {
      v2 = v1[37];
      (*(*v1 + 8))(v1);
      v1 = v2;
    }

    while (v2);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDColorModeData::~CPSDColorModeData(CPSDColorModeData *this)
{
  *this = &unk_1F00D4070;
  v1 = *(this + 3);
  if (v1)
  {
    free(v1);
  }
}

{
  *this = &unk_1F00D4070;
  v1 = *(this + 3);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDImageLoad::~CPSDImageLoad(void **this)
{
  *this = &unk_1F00D42F0;
  CPSDImageLoad::DeAllocateChannelBuffers(this);
  v2 = this[12];
  if (v2)
  {
    free(v2);
    this[12] = 0;
    this[8] = 0;
  }

  free(this[2]);
  this[2] = 0;
}

void CPSDFile::~CPSDFile(CPSDFile *this)
{
  *this = &unk_1F00D3FE0;
  CPSDLayerAndMaskInfo::~CPSDLayerAndMaskInfo((this + 224));
  *(this + 24) = &unk_1F00D40B0;
  v2 = *(this + 27);
  if (v2)
  {
    do
    {
      v3 = v2[37];
      (*(*v2 + 8))(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(this + 20) = &unk_1F00D4070;
  v4 = *(this + 23);
  if (v4)
  {
    free(v4);
  }

  CPSDImageLoad::~CPSDImageLoad(this);
}

{
  CPSDFile::~CPSDFile(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDLayerAndMaskInfo::SetFileObject(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  *(result + 32) = a2;
  return result;
}

void *CPSDFile::Init(CPSDFile *this, int a2, int a3, const unsigned __int8 *a4, size_t size)
{
  *(this + 32) = 943870035;
  *(this + 66) = 1;
  *(this + 36) = a3;
  *(this + 37) = a2;
  *(this + 70) = 3;
  *(this + 38) = 196616;
  CPSDImageResources::AddICCData((this + 192), a4, size);

  return CPSDFile::InitCompositeData(this);
}

CPSDBaseComponent *CPSDImageResources::AddICCData(CPSDBaseComponent *this, const unsigned __int8 *a2, size_t size)
{
  if (a2 && size)
  {
    v5 = this;
    v7 = (this + 24);
    v6 = *(this + 3);
    if (v6)
    {
      while (*(v6 + 20) != 1039)
      {
        v6 = *(v6 + 296);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v6 = operator new();
      *v6 = &unk_1F00D40F0;
      *(v6 + 280) = 0;
      *(v6 + 22) = 0;
      *(v6 + 288) = 0;
      *(v6 + 296) = 0;
      *(v6 + 16) = 943868237;
      *(v6 + 20) = 1039;
      v8 = operator new();
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = v6;
      *(v8 + 48) = 0;
      *v8 = &unk_1F00D4D40;
      *(v6 + 288) = v8;
      v9 = *v7;
      if (*v7)
      {
        do
        {
          v10 = v9;
          v9 = *(v9 + 296);
        }

        while (v9);
        v7 = (v10 + 296);
      }

      *v7 = v6;
    }

    v11 = *(v6 + 288);
    if (!v11)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      CStdException::CStdException(exception, 3238789123);
    }

    CPSDICCProfileResourceItem::AddICCData(v11, a2, size);

    return CPSDImageResources::UpdateResourceSize(v5, v11);
  }

  return this;
}

void *CPSDFile::InitCompositeData(CPSDFile *this)
{
  (*(*this + 48))(this, *(this + 37), *(this + 36), *(this + 70), *(this + 76), *(this + 77), *(this + 23));
  v2 = *(this + 6);
  v3 = *(this + 37) * *(this + 70) * *(this + 36) * (*(this + 76) >> 3);
  *(this + 6) = v3;
  result = *(this + 2);
  if (!result || v2 != v3)
  {
    result = malloc_type_realloc(result, v3, 0x100004077774924uLL);
    *(this + 2) = result;
  }

  *(this + 392) = 1;
  return result;
}

CPSDBaseComponent *CPSDFile::AddExtraAlphaChannel(CPSDFile *this, unsigned __int8 *a2, unsigned int a3, const CPSDString *a4)
{
  if ((*(this + 70) + 1) > 0x38u || (v8 = *(this + 392), ++*(this + 70), CPSDFile::InitCompositeData(this), v9 = *(this + 37) * (*(this + 70) - 1) * *(this + 36) * (*(this + 76) >> 3), *(this + 6) - v9 < a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    CStdException::CStdException(exception, 3238789123);
  }

  memcpy((*(this + 2) + v9), a2, a3);
  result = CPSDImageResources::AddExtraChannelName((this + 192), a4);
  *(this + 392) = v8;
  return result;
}

CPSDBaseComponent *CPSDImageResources::AddExtraChannelName(CPSDImageResources *this, const CPSDString *a2)
{
  v5 = (this + 24);
  v4 = *(this + 3);
  if (v4)
  {
    while (*(v4 + 20) != 1045)
    {
      v4 = *(v4 + 296);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = operator new();
    *v4 = &unk_1F00D40F0;
    *(v4 + 280) = 0;
    *(v4 + 22) = 0;
    *(v4 + 288) = 0;
    *(v4 + 296) = 0;
    *(v4 + 16) = 943868237;
    *(v4 + 20) = 1045;
    v6 = operator new();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = v4;
    *(v6 + 48) = 0;
    *v6 = &unk_1F00D4F40;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v4 + 288) = v6;
    v7 = *v5;
    if (*v5)
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 296);
      }

      while (v7);
      v5 = (v8 + 296);
    }

    *v5 = v4;
  }

  v9 = *(v4 + 288);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    CStdException::CStdException(exception, 3238789123);
  }

  std::vector<CPSDString>::push_back[abi:ne200100](v9 + 6, a2);

  return CPSDImageResources::UpdateResourceSize(this, v9);
}

void CPSDFile::AddLayerCore(CPSDFile *this, CPSDLayerRecord *a2, const UniChar **a3, char a4, int a5)
{
  *(a2 + 16) = 943868237;
  *(a2 + 17) = a5;
  *(a2 + 72) = a4;
  *(a2 + 74) = 8;
  CPSDLayerBlendingRanges::Init((a2 + 144), 4u);
  CPSDString::CopyStringValue(a3, a2 + 200, 0x100u);
  LODWORD(a3) = CPSDBaseComponent::ComputeSize((a2 + 456));
  *(a2 + 118) = a3;
  File::File(v12, 0, 0);
  v12[0] = &unk_1F00D3D60;
  v13 = 0;
  CPSDLayerMaskData::Save((a2 + 80), v12);
  CPSDLayerBlendingRanges::Save((a2 + 144), v12);
  ByteCounter::AppendAsPString(v12, a2 + 200, 4);
  *(a2 + 19) = v13 + a3;
  v8 = *(this + 35);
  if (v8 >= *(this + 36))
  {
    v9 = std::vector<CPSDLayerRecord>::__emplace_back_slow_path<CPSDLayerRecord>(this + 272, a2);
  }

  else
  {
    CPSDLayerRecord::CPSDLayerRecord(*(this + 35), a2);
    v9 = v8 + 488;
    *(this + 35) = v8 + 488;
  }

  *(this + 35) = v9;
  ++*(this + 134);
  v10 = CPSDBaseComponent::ComputeSize((this + 248));
  v11 = (v10 & 1) + v10;
  *(this + 66) = v11;
  *(this + 60) = v11 + 4;
  *(this + 392) = 1;
  File::~File(v12);
}

void sub_18DF91880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  File::~File(va);
  _Unwind_Resume(a1);
}

void *CPSDLayerBlendingRanges::Init(CPSDLayerBlendingRanges *this, unsigned int a2)
{
  v4 = (this + 32);
  v5 = *(this + 4);
  *(this + 20) = 0xFFFF0000FFFFLL;
  v6 = *(this + 5);
  if (v6 != v5)
  {
    v7 = v6 - 3;
    v8 = v6 - 3;
    v9 = v6 - 3;
    do
    {
      v10 = *v9;
      v9 -= 3;
      (*v10)(v8);
      v7 -= 3;
      v11 = v8 == v5;
      v8 = v9;
    }

    while (!v11);
  }

  *(this + 5) = v5;
  v12 = a2;
  result = std::vector<CPSDChannelBlendingInfo>::resize(v4, a2);
  if (a2)
  {
    v14 = (*v4 + 16);
    do
    {
      *v14 = 0xFFFF0000FFFFLL;
      v14 += 3;
      --v12;
    }

    while (v12);
  }

  *(this + 4) = 8 * a2 + 8;
  return result;
}

void CPSDString::CopyStringValue(const UniChar **this, char *a2, unsigned int a3)
{
  v5 = CFStringCreateWithCharactersNoCopy(kCFAllocatorDefault, this[1], *this, kCFAllocatorNull);
  SystemEncoding = CFStringGetSystemEncoding();
  CFStringGetCString(v5, a2, a3, SystemEncoding);

  CFRelease(v5);
}

uint64_t CPSDBaseComponent::ComputeSize(CPSDBaseComponent *this)
{
  File::File(v4, 0, 0);
  v4[0] = &unk_1F00D3D60;
  v5 = 0;
  (*(*this + 24))(this, v4);
  v2 = v5;
  File::~File(v4);
  return v2;
}

void sub_18DF91ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  File::~File(va);
  _Unwind_Resume(a1);
}

uint64_t CPSDLayerMaskData::Save(CPSDLayerMaskData *this, File *a2)
{
  result = (*(*a2 + 80))(a2, *(this + 4));
  if (*(this + 4))
  {
    (*(*a2 + 80))(a2, *(this + 5));
    (*(*a2 + 80))(a2, *(this + 6));
    (*(*a2 + 80))(a2, *(this + 7));
    (*(*a2 + 80))(a2, *(this + 8));
    (*(*a2 + 64))(a2, *(this + 36));
    (*(*a2 + 64))(a2, *(this + 37));
    v5 = *a2;
    if (*(this + 4) == 20)
    {
      v6 = *(this + 19);
      v7 = *(v5 + 72);

      return v7(a2, v6);
    }

    else
    {
      (*(v5 + 64))(a2, *(this + 57));
      (*(*a2 + 64))(a2, *(this + 56));
      (*(*a2 + 80))(a2, *(this + 10));
      (*(*a2 + 80))(a2, *(this + 11));
      (*(*a2 + 80))(a2, *(this + 12));
      v8 = *(this + 13);
      v9 = *(*a2 + 80);

      return v9(a2, v8);
    }
  }

  return result;
}

uint64_t CPSDLayerBlendingRanges::Save(CPSDLayerBlendingRanges *this, File *a2)
{
  result = (*(*a2 + 80))(a2, *(this + 4));
  if (*(this + 4) >= 8u)
  {
    (*(*a2 + 80))(a2, *(this + 5));
    result = (*(*a2 + 80))(a2, *(this + 6));
    v5 = *(this + 4) - 8;
    if (v5 >= 8)
    {
      v6 = v5 >> 3;
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - *(this + 4)) >> 3) == v6)
      {
        v7 = 0;
        if (v6 <= 1)
        {
          v6 = 1;
        }

        v8 = 24 * v6;
        do
        {
          result = (*(*(*(this + 4) + v7) + 24))(*(this + 4) + v7, a2);
          v7 += 24;
        }

        while (v8 != v7);
      }
    }
  }

  return result;
}

void CPSDFile::AddLayer(CPSDFile *this, unsigned __int8 **a2, int a3, const UniChar **a4, char a5, int a6)
{
  v12 = *(this + 134);
  CPSDLayerRecord::CPSDLayerRecord(v19);
  v19[2] = 0;
  v19[3] = *(this + 36);
  v20 = 4;
  std::vector<CPSDChannelLengthInfo>::resize(v21, 4uLL);
  std::vector<CPSDLayerChannelGroup *>::resize(this + 37, ((*(this + 38) - *(this + 37)) >> 3) + 1);
  v13 = operator new();
  CPSDLayerChannelGroup::CPSDLayerChannelGroup(v13, v19);
  CPSDLayerChannelGroup::Init(v13, a2, a3);
  v14 = 0;
  v15 = 0;
  *(*(this + 37) + 8 * v12) = v13;
  do
  {
    v16 = v21[0];
    v17 = CPSDLayerChannelGroup::ComputeSizeForChannel(v13, v15);
    v18 = v16 + v14;
    *(v18 + 16) = v15 - 1;
    *(v18 + 20) = v17;
    ++v15;
    v14 += 24;
  }

  while (v15 != 4);
  CPSDFile::AddLayerCore(this, v19, a4, a5, a6);
  CPSDLayerRecord::~CPSDLayerRecord(v19);
}

void sub_18DF9206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x193AC64C0](v9, 0x10A1C401A1F3E30);
  CPSDLayerRecord::~CPSDLayerRecord(&a9);
  _Unwind_Resume(a1);
}

void *std::vector<CPSDChannelLengthInfo>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<CPSDChannelLengthInfo>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 24 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 24;
      v9 = (v3 - 24);
      v10 = (v3 - 24);
      do
      {
        v11 = *v10;
        v10 -= 3;
        result = (*v11)(v9);
        v8 -= 24;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

void std::vector<CPSDLayerChannelGroup *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<CPSDLayerChannelGroup *>::__append(a1, a2 - v2);
  }
}

uint64_t CPSDLayerChannelGroup::Init(uint64_t this, unsigned __int8 **a2, int a3)
{
  if (*(this + 24) != 4)
  {
    CPSDLayerChannelGroup::Init();
  }

  v3 = 0;
  v4 = (*(this + 32) + 48);
  do
  {
    v5 = a2[v3];
    *(v4 - 12) = 0;
    *v4 = a3;
    *(v4 - 1) = v5;
    v4 += 14;
    ++v3;
  }

  while (v3 != 4);
  return this;
}

uint64_t CPSDLayerChannelGroup::ComputeSizeForChannel(CPSDLayerChannelGroup *this, unsigned int a2)
{
  if (*(this + 6) <= a2)
  {
    CPSDLayerChannelGroup::ComputeSizeForChannel();
  }

  v3 = (*(this + 4) + 56 * a2);

  return CPSDBaseComponent::ComputeSize(v3);
}

void CPSDFile::AddLayer(uint64_t a1, uint64_t a2, const UniChar **a3, char a4, int a5)
{
  v32 = *(a1 + 268);
  CPSDLayerRecord::CPSDLayerRecord(v35);
  v36 = 0;
  v37 = *(a1 + 36);
  v38 = 4;
  std::vector<CPSDChannelLengthInfo>::resize(v39, 4uLL);
  std::vector<CPSDLayerChannelGroup *>::resize((a1 + 296), ((*(a1 + 304) - *(a1 + 296)) >> 3) + 1);
  v10 = operator new();
  v30 = a3;
  v31 = a5;
  CPSDLayerChannelGroup::CPSDLayerChannelGroup(v10, v35);
  v11 = 0;
  v12 = (*(a1 + 144) * *(a1 + 148));
  *v33 = 0u;
  v34 = 0u;
  do
  {
    v13 = malloc_type_malloc(v12, 0x50E60088uLL);
    v33[v11] = v13;
    if (v11 == 2)
    {
      v14 = (a2 + 64);
    }

    else
    {
      v14 = (a2 + 72);
    }

    if (v11)
    {
      v15 = (a2 + 56);
    }

    else
    {
      v15 = (a2 + 80);
    }

    if (v11 <= 1)
    {
      v14 = v15;
    }

    v16 = *v14;
    memset(v13, llroundf(v16), v12);
    ++v11;
  }

  while (v11 != 4);
  CPSDLayerChannelGroup::Init(v10, v33, v12);
  v17 = 0;
  v18 = 0;
  *(*(a1 + 296) + 8 * v32) = v10;
  do
  {
    v19 = v39[0];
    v20 = CPSDLayerChannelGroup::ComputeSizeForChannel(v10, v18);
    v21 = v19 + v17;
    *(v21 + 16) = v18 - 1;
    *(v21 + 20) = v20;
    ++v18;
    v17 += 24;
  }

  while (v18 != 4);
  v22 = operator new();
  CPSDActionDescriptor::CPSDActionDescriptor(v22);
  *v22 = &unk_1F00D4B60;
  *(v22 + 15) = 0;
  CPSDObjectEffectsLayerInfo::InitWithGradient(v22, a2);
  CPSDAdditionalLayerInfoItem::SizeUpItem(v22);
  v23 = &v40;
  v24 = v40;
  v25 = &v40;
  if (v40)
  {
    do
    {
      v26 = v24;
      v24 = *(v24 + 48);
    }

    while (v24);
    v25 = (v26 + 48);
  }

  *v25 = v22;
  v27 = operator new();
  *(v27 + 16) = 0;
  *(v27 + 40) = 0u;
  *(v27 + 24) = 0u;
  *v27 = &unk_1F00D5478;
  *(v27 + 40) = 0x694F70613842494DLL;
  *(v27 + 56) = 0;
  CPSDAdditionalLayerInfoItem::SizeUpItem(v27);
  v28 = v40;
  if (v40)
  {
    do
    {
      v29 = v28;
      v28 = *(v28 + 48);
    }

    while (v28);
    v23 = (v29 + 48);
  }

  *v23 = v27;
  CPSDFile::AddLayerCore(a1, v35, v30, a4, v31);
  CPSDLayerRecord::~CPSDLayerRecord(v35);
}

void sub_18DF92510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  MEMORY[0x193AC64C0](v10, 0x10B1C4032540B95);
  CPSDLayerRecord::~CPSDLayerRecord(va);
  _Unwind_Resume(a1);
}

void CPSDObjectEffectsLayerInfo::InitWithGradient(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0x6C6678323842494DLL;
  *(a1 + 120) = 0x1000000000;
  *(a1 + 84) = 1853189228;
  v4 = operator new();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *v4 = &unk_1F00D4678;
  *(v4 + 56) = 592474723;
  *(v4 + 64) = 0x4059000000000000;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v10, 1399024672, v4);
  CPSDActionDescriptor::AdoptItem(a1, v10);
  v5 = operator new();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *v5 = &unk_1F00D4630;
  *(v5 + 56) = 1;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v9, "masterFXSwitch", v5);
  v6 = CPSDActionDescriptor::AdoptItem(a1, v9);
  GradientOverlayObject = CPSDObjectEffectsLayerInfo::MakeGradientOverlayObject(v6, a2);
  CPSDActionKeyedItem::CPSDActionKeyedItem(v8, 1198671468, GradientOverlayObject);
  CPSDActionDescriptor::AdoptItem(a1, v8);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v8);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v9);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v10);
}

void sub_18DF926F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va1);
  CPSDActionKeyedItem::~CPSDActionKeyedItem((v2 - 120));
  _Unwind_Resume(a1);
}

uint64_t CPSDAdditionalLayerInfoItem::SizeUpItem(CPSDAdditionalLayerInfoItem *this)
{
  v2 = CPSDBaseComponent::ComputeSize(this);
  v3 = v2 & 3;
  if ((v2 & 3) != 0)
  {
    v4 = 4 - v3;
    v6 = *(this + 3);
    v5 = *(this + 4);
    v7 = v6 + 4 - v3;
    *(this + 3) = v7;
    v8 = malloc_type_realloc(v5, v7, 0x100004077774924uLL);
    *(this + 4) = v8;
    bzero(&v8[v6], v4);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  *(this + 4) = v2 + v4 - 12;
  return (v2 + v4 - 12);
}

void CPSDFile::AddSectionDivider(CPSDFile *this, int a2, const UniChar **a3, char a4, int a5)
{
  v10 = *(this + 134);
  CPSDLayerRecord::CPSDLayerRecord(v23);
  v24 = 4;
  std::vector<CPSDChannelLengthInfo>::resize(v25, 4uLL);
  std::vector<CPSDLayerChannelGroup *>::resize(this + 37, ((*(this + 38) - *(this + 37)) >> 3) + 1);
  v11 = operator new();
  CPSDLayerChannelGroup::CPSDLayerChannelGroup(v11, v23);
  memset(v22, 0, sizeof(v22));
  CPSDLayerChannelGroup::Init(v11, v22, 0);
  v12 = 0;
  v13 = 0;
  *(*(this + 37) + 8 * v10) = v11;
  do
  {
    v14 = v25[0];
    v15 = CPSDLayerChannelGroup::ComputeSizeForChannel(v11, v13);
    v16 = v14 + v12;
    *(v16 + 16) = v13 - 1;
    *(v16 + 20) = v15;
    ++v13;
    v12 += 24;
  }

  while (v13 != 4);
  v17 = operator new();
  v18 = v17;
  *(v17 + 16) = 0;
  *(v17 + 40) = 0u;
  *(v17 + 24) = 0u;
  *v17 = &unk_1F00D5420;
  *(v17 + 60) = 0;
  *(v17 + 64) = 0;
  *(v17 + 40) = 0x6C7363743842494DLL;
  *(v17 + 56) = a2;
  if ((a2 - 1) <= 1)
  {
    *(v17 + 16) = 12;
    *(v17 + 60) = 943868237;
    *(v17 + 64) = a5;
  }

  CPSDAdditionalLayerInfoItem::SizeUpItem(v17);
  v19 = v26;
  if (v26)
  {
    do
    {
      v20 = v19;
      v19 = *(v19 + 48);
    }

    while (v19);
    v21 = (v20 + 48);
  }

  else
  {
    v21 = &v26;
  }

  *v21 = v18;
  CPSDFile::AddLayerCore(this, v23, a3, a4, 1852797549);
  CPSDLayerRecord::~CPSDLayerRecord(v23);
}

void sub_18DF929DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CPSDLayerRecord::~CPSDLayerRecord(va);
  _Unwind_Resume(a1);
}

_WORD *CPSDFile::AddLayerGroupStart(CPSDFile *this)
{
  v4 = 0;
  CPSDString::AllocateCharData(&v3, 1);
  *v4 = 0;
  CPSDFile::AddSectionDivider(this, 3, &v3, 255, 1885434739);
  result = v4;
  if (v4)
  {
    return MEMORY[0x193AC64A0](v4, 0x1000C80BDFB0063);
  }

  return result;
}

void sub_18DF92A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x193AC64A0](a10, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

CPSDBaseComponent *CPSDImageResources::AddOrUpdateSlices(CPSDImageResources *this, int32x4_t *a2, int a3, int a4, int a5)
{
  v11 = (this + 24);
  v10 = *(this + 3);
  if (v10)
  {
    while (*(v10 + 20) != 1050)
    {
      v10 = *(v10 + 296);
      if (!v10)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v10 = operator new();
    *v10 = &unk_1F00D40F0;
    *(v10 + 280) = 0;
    *(v10 + 22) = 0;
    *(v10 + 288) = 0;
    *(v10 + 296) = 0;
    *(v10 + 16) = 943868237;
    *(v10 + 20) = 1050;
    v12 = operator new();
    CPSDSlicesResourceItem::CPSDSlicesResourceItem(v12, v10, 0);
    *(v10 + 288) = v12;
    v13 = *v11;
    if (*v11)
    {
      do
      {
        v14 = v13;
        v13 = *(v13 + 296);
      }

      while (v13);
      v11 = (v14 + 296);
    }

    *v11 = v10;
  }

  v15 = *(v10 + 288);
  if (!v15)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    CStdException::CStdException(exception, 3238789123);
  }

  CPSDSlicesResourceItem::AddOrUpdateSlices(v15, a2, a3, a4, a5);

  return CPSDImageResources::UpdateResourceSize(this, v15);
}

CPSDBaseComponent *CPSDImageResources::UpdateSliceNameAtIndex(CPSDImageResources *this, const unsigned __int16 *a2, int a3, unsigned int a4)
{
  v8 = CPSDImageResources::LookupResourceWithResID(this, 1050);
  CPSDSlicesResourceItem::UpdateSliceNameAtIndex(v8, a2, a3, a4);

  return CPSDImageResources::UpdateResourceSize(this, v8);
}

size_t CPSDFile::Dump(CPSDFile *this, __sFILE *__stream)
{
  fwrite("{ PSDFile: \n", 0xCuLL, 1uLL, __stream);
  fprintf(__stream, "Header: { %dx%d %d bps, %d channels, mode = %d }\n", *(this + 36), *(this + 37), *(this + 76), *(this + 70), *(this + 77));
  if (*(this + 44))
  {
    fprintf(__stream, "{ ColorModeData:       [ %d ] bytes }\n", *(this + 44));
  }

  v4 = *(this + 27);
  if (v4)
  {
    (*(*v4 + 40))(v4, __stream);
  }

  CPSDLayerAndMaskInfo::Dump((this + 224), __stream);

  return fwrite("}\n", 2uLL, 1uLL, __stream);
}

uint64_t CPSDColorModeData::Dump(uint64_t this, __sFILE *a2)
{
  if (*(this + 16))
  {
    return fprintf(a2, "{ ColorModeData:       [ %d ] bytes }\n", *(this + 16));
  }

  return this;
}

uint64_t CPSDImageResources::Dump(CPSDImageResources *this, __sFILE *a2)
{
  result = *(this + 3);
  if (result)
  {
    return (*(*result + 40))(result, a2);
  }

  return result;
}

uint64_t CPSDLayerAndMaskInfo::Dump(CPSDLayerAndMaskInfo *this, __sFILE *a2)
{
  fprintf(a2, "{ LayerAndMaskInfo: [%d bytes]\n", *(this + 4));
  CPSDLayerInfo::Dump((this + 24), a2);

  return fputc(125, a2);
}

uint64_t CPSDFile::Load(CPSDFile *this, uint64_t a2)
{
  if (!CPSDHeader::Load((this + 112), a2) || !CPSDColorModeData::Load((this + 160), a2) || !CPSDImageResources::Load((this + 192), a2) || !CPSDLayerAndMaskInfo::Load((this + 224), a2))
  {
    return 0;
  }

  (*(*this + 48))(this, *(this + 37), *(this + 36), *(this + 70), *(this + 76), *(this + 77), *(this + 23));

  return CPSDFile::LoadImageData(this, a2, 0);
}

uint64_t CPSDHeader::Load(CPSDHeader *this, int a2)
{
  v13 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v13);
  v4 = *(this + 4);
  *(this + 4) = bswap32(v4);
  if (v4 != 1397768760)
  {
    goto LABEL_9;
  }

  CPSDBaseComponent::ReadFile(a2, this + 20, 2uLL, &v13);
  v5 = *(this + 10);
  *(this + 10) = __rev16(v5);
  if (v5 != 256)
  {
    goto LABEL_9;
  }

  CPSDBaseComponent::ReadFile(a2, this + 22, 6uLL, &v13);
  CPSDBaseComponent::ReadFile(a2, this + 28, 2uLL, &v13);
  v6 = bswap32(*(this + 14)) >> 16;
  *(this + 14) = v6;
  if ((v6 - 25) < 0xFFE8u)
  {
    goto LABEL_9;
  }

  CPSDBaseComponent::ReadFile(a2, this + 32, 4uLL, &v13);
  v7 = bswap32(*(this + 8));
  *(this + 8) = v7;
  if (v7 - 30001 < 0xFFFF8AD0)
  {
    goto LABEL_9;
  }

  CPSDBaseComponent::ReadFile(a2, this + 36, 4uLL, &v13);
  v8 = bswap32(*(this + 9));
  *(this + 9) = v8;
  if (v8 - 30001 < 0xFFFF8AD0)
  {
    goto LABEL_9;
  }

  CPSDBaseComponent::ReadFile(a2, this + 40, 2uLL, &v13);
  LOBYTE(v9) = 0;
  v10 = bswap32(*(this + 20)) >> 16;
  *(this + 20) = v10;
  if (v10 <= 0x10 && ((1 << v10) & 0x10102) != 0)
  {
    CPSDBaseComponent::ReadFile(a2, this + 42, 2uLL, &v13);
    v11 = bswap32(*(this + 21)) >> 16;
    *(this + 21) = v11;
    if (v11 > 9)
    {
LABEL_9:
      LOBYTE(v9) = 0;
      return v9;
    }

    if (v11 > 6)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      return (0x101010100uLL >> (8 * v11));
    }
  }

  return v9;
}

uint64_t CPSDColorModeData::Load(CPSDColorModeData *this, int a2)
{
  v12 = 0;
  v4 = *(*(this + 1) + 154);
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v12);
  v5 = *(this + 4);
  v6 = bswap32(v5);
  *(this + 4) = v6;
  if (!v5)
  {
    return 1;
  }

  if (v4 != 2 || v5 != 196608)
  {
    return SetFilePointer(a2, v6, 0, 1) != -1;
  }

  v7 = *(this + 3);
  if (v7)
  {
    free(v7);
    v8 = *(this + 4);
  }

  else
  {
    v8 = 768;
  }

  result = malloc_type_malloc(v8, 0x100004077774924uLL);
  *(this + 3) = result;
  if (result)
  {
    v10 = *(this + 4);
    if (v10)
    {
      v11 = 0;
      do
      {
        CPSDBaseComponent::ReadFile(a2, (*(this + 3) + v11), v10, &v12);
        v11 += v12;
        v10 -= v12;
      }

      while (v10);
    }

    return 1;
  }

  return result;
}

BOOL CPSDImageResources::Load(CPSDImageResources *this, uint64_t a2)
{
  v14 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v14);
  v4 = *(this + 4);
  *(this + 4) = bswap32(v4);
  if (!v4)
  {
    return 1;
  }

  v5 = SetFilePointer(a2, 0, 0, 1);
  v6 = *(this + 4);
  if (v6 >= 2)
  {
    v7 = (this + 24);
    do
    {
      v8 = operator new();
      *v8 = &unk_1F00D40F0;
      *(v8 + 16) = 0;
      *(v8 + 20) = 0;
      *(v8 + 280) = 0;
      *(v8 + 22) = 0;
      *(v8 + 288) = 0;
      *(v8 + 296) = 0;
      v14 = 0;
      if (!CPSDImageResourceBlock::Load(v8, a2, &v14))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        CStdException::CStdException(exception, 3238395925);
      }

      v9 = *v7;
      v10 = (this + 24);
      if (*v7)
      {
        do
        {
          v11 = v9;
          v9 = *(v9 + 296);
        }

        while (v9);
        v10 = (v11 + 296);
      }

      v6 -= v14;
      *v10 = v8;
    }

    while (v6 > 1);
  }

  return !v6 || SetFilePointer(a2, (*(this + 4) + v5), 0, 0) != -1;
}

uint64_t CPSDLayerAndMaskInfo::Load(CPSDLayerAndMaskInfo *this, uint64_t a2)
{
  v14 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v14);
  *(this + 4) = bswap32(*(this + 4));
  v4 = 1;
  v5 = SetFilePointer(a2, 0, 0, 1);
  if (*(this + 4))
  {
    v6 = v5;
    if (!CPSDLayerInfo::Load((this + 24), a2))
    {
      return 0;
    }

    v7 = SetFilePointer(a2, 0, 0, 1);
    v8 = *(this + 4);
    if (v8 < v7 - v6)
    {
      return 0;
    }

    CPSDGlobalLayerMaskInfo::Load((this + 96), a2, v8 - (v7 - v6));
    v9 = SetFilePointer(a2, 0, 0, 1) - v6;
    v10 = *(this + 4);
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11)
    {
      return 0;
    }

    if (v12)
    {
      *(this + 38) = v12;
      if (!CPSDAdditionalLayerInfo::Load((this + 136), a2))
      {
        return 0;
      }

      v9 = *(this + 4);
    }

    SetFilePointer(a2, v9 + v6, 0, 0);
  }

  return v4;
}

uint64_t CPSDFile::LoadImageData(CPSDFile *this, int a2, int a3)
{
  if (!*(this + 32))
  {
    return 0;
  }

  v14 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 88, 2uLL, &v14);
  *(this + 44) = bswap32(*(this + 44)) >> 16;
  v6 = *(this + 28);
  if (!a3 || (result = 0, v6 <= 8))
  {
    v8 = *(this + 10) * v6;
    if ((v8 & 7) != 0)
    {
      v9 = (v8 >> 3) + 1;
    }

    else
    {
      v9 = v8 >> 3;
    }

    v10 = SetFilePointer(a2, 0, 0, 1);
    v11 = SetFilePointer(a2, 0, 0, 2) - v10;
    *(this + 3) = v11;
    v12 = *(this + 2);
    if (v12)
    {
      free(v12);
      v11 = *(this + 6);
    }

    v13 = malloc_type_malloc(v11, 0x100004077774924uLL);
    *(this + 2) = v13;
    if (!v13)
    {
      CPSDFile::LoadImageData();
    }

    SetFilePointer(a2, v10, 0, 0);
    CPSDBaseComponent::ReadFile(a2, *(this + 2), *(this + 6), &v14);
    CPSDImageLoad::AllocateChannelBuffers(this, v9);
    if (a3)
    {
      CPSDImageLoad::FillLayerImageChannelBuffers(this, v9);
    }

    else
    {
      CPSDImageLoad::FillCompositeImageChannelBuffers(this, v9);
    }

    CPSDImageLoad::CreatePlanarBitmap(this);
    CPSDImageLoad::DeAllocateChannelBuffers(this);
    SetFilePointer(a2, *(this + 7) + v10, 0, 0);
    return 1;
  }

  return result;
}

uint64_t CPSDFile::Save(CPSDFile *this, int a2)
{
  File::File(v4, a2, 2);
  (*(*this + 24))(this, v4);
  File::~File(v4);
  return 1;
}

uint64_t CPSDFile::Save(void **this, File *a2)
{
  CPSDHeader::Save((this + 14), a2);
  CPSDColorModeData::Save((this + 20), a2);
  CPSDImageResources::Save((this + 24), a2);
  CPSDLayerAndMaskInfo::Save((this + 28), a2);

  return CPSDFile::SaveImageData(this, a2);
}

uint64_t CPSDHeader::Save(CPSDHeader *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  (*(*a2 + 72))(a2, *(this + 10));
  (*(*a2 + 48))(a2, this + 22, 6);
  (*(*a2 + 72))(a2, *(this + 14));
  (*(*a2 + 80))(a2, *(this + 8));
  (*(*a2 + 80))(a2, *(this + 9));
  (*(*a2 + 72))(a2, *(this + 20));
  v4 = *(this + 21);
  v5 = *(*a2 + 72);

  return v5(a2, v4);
}

uint64_t CPSDColorModeData::Save(CPSDColorModeData *this, File *a2)
{
  result = (*(*a2 + 80))(a2, *(this + 4));
  if (*(this + 3) && *(this + 4))
  {
    v5 = *(*a2 + 48);

    return v5(a2);
  }

  return result;
}

uint64_t CPSDImageResources::Save(CPSDImageResources *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  v4 = (*(*a2 + 16))(a2);
  for (i = *(this + 3); i; i = i[37])
  {
    (*(*i + 24))(i, a2);
  }

  result = (*(*a2 + 16))(a2);
  v7 = *(this + 4);
  if (v7 > result - v4)
  {
    v8 = *(*a2 + 56);

    return v8(a2, v7 - (result - v4));
  }

  return result;
}

uint64_t CPSDLayerAndMaskInfo::Save(CPSDLayerAndMaskInfo *this, File *a2)
{
  result = (*(*a2 + 80))(a2, *(this + 4));
  if (*(this + 4))
  {
    CPSDLayerInfo::Save((this + 24), a2);
    result = CPSDGlobalLayerMaskInfo::Save((this + 96), a2);
    for (i = *(this + 20); i; i = *(i + 6))
    {
      result = CPSDResourceItem::SaveItem(i, a2);
    }
  }

  return result;
}

uint64_t CPSDFile::SaveImageData(void **this, File *a2)
{
  CPSDFile::CompositeImageData(this);
  (*(*a2 + 72))(a2, *(this + 44));
  v4 = this[2];
  v5 = *(this + 6);
  v6 = *(*a2 + 48);

  return v6(a2, v4, v5);
}

uint64_t CPSDFile::LoadLayers(CPSDFile *this, uint64_t a2)
{
  if (!CPSDHeader::Load((this + 112), a2) || !CPSDColorModeData::Load((this + 160), a2) || !CPSDImageResources::Load((this + 192), a2))
  {
    return 0;
  }

  return CPSDLayerAndMaskInfo::Load((this + 224), a2);
}

uint64_t CPSDLayerAndMaskInfo::LoadLayer(CPSDLayerAndMaskInfo *this, uint64_t a2)
{
  v6 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v6);
  *(this + 4) = bswap32(*(this + 4));
  v4 = 1;
  SetFilePointer(a2, 0, 0, 1);
  if (*(this + 4))
  {
    return CPSDLayerInfo::LoadLayer((this + 24), a2);
  }

  return v4;
}

uint64_t CPSDFile::GetImageInfo(CPSDFile *this, int a2, unsigned int *a3, unsigned int *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7)
{
  v14 = SetFilePointer(a2, 0, 0, 1);
  SetFilePointer(a2, 0, 0, 0);
  result = CPSDHeader::Load((this + 112), a2);
  if (result)
  {
    if (a7)
    {
      *a7 = *(this + 70);
    }

    if (a3)
    {
      *a3 = *(this + 36);
    }

    if (a4)
    {
      *a4 = *(this + 37);
    }

    if (a6)
    {
      *a6 = *(this + 77);
    }

    if (a5)
    {
      *a5 = *(this + 76);
    }

    SetFilePointer(a2, v14, 0, 0);
    return 1;
  }

  return result;
}

BOOL CPSDFile::IsTaggedWithICCProfile(CPSDFile *this)
{
  v1 = *(this + 27);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 27);
  while (*(v2 + 20) != 1039)
  {
    v2 = *(v2 + 296);
    if (!v2)
    {
      return 0;
    }
  }

  while (*(v1 + 20) != 1041)
  {
    v1 = *(v1 + 296);
    if (!v1)
    {
      return 1;
    }
  }

  v3 = CPSDImageResources::LookupResourceWithResID((this + 192), 1041);
  return !(*(*v3 + 48))(v3);
}

uint64_t CPSDImageResources::LookupResourceWithResID(CPSDImageResources *this, int a2)
{
  v2 = *(this + 3);
  if (!v2)
  {
LABEL_4:
    fprintf(__stderrp, "CPSDImageResources::LookupResourceWithResID() failed to locate resource with resID=%d\n", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    CStdException::CStdException(exception, 3238395925);
  }

  while (*(v2 + 20) != a2)
  {
    v2 = *(v2 + 296);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  return *(v2 + 288);
}

uint64_t CPSDFile::GetGlobalLightAngle(CPSDFile *this)
{
  v1 = *(this + 27);
  if (!v1)
  {
    return 120;
  }

  while (*(v1 + 20) != 1037)
  {
    v1 = *(v1 + 296);
    if (!v1)
    {
      return 120;
    }
  }

  v3 = *(*CPSDImageResources::LookupResourceWithResID((this + 192), 1037) + 48);

  return v3();
}

uint64_t CPSDFile::GetGlobalLightAltitude(CPSDFile *this)
{
  v1 = *(this + 27);
  if (!v1)
  {
    return 30;
  }

  while (*(v1 + 20) != 1049)
  {
    v1 = *(v1 + 296);
    if (!v1)
    {
      return 30;
    }
  }

  v3 = *(*CPSDImageResources::LookupResourceWithResID((this + 192), 1049) + 48);

  return v3();
}

uint64_t CPSDFile::GetLayerBounds(uint64_t a1, unsigned int a2, int32x4_t *a3)
{
  if (*(a1 + 268) <= a2)
  {
    return 0;
  }

  *a3 = vrev64q_s32(*(*(a1 + 272) + 488 * a2 + 16));
  return 1;
}

uint64_t CPSDFile::LookupSliceWithNumber(CPSDFile *this, unsigned int a2)
{
  v3 = CPSDImageResources::LookupResourceWithResID((this + 192), 1050);
  v4 = *(v3 + 88) - 1;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  return *(*(v3 + 104) + 8 * v4);
}

uint64_t CPSDFile::GetSliceCount(CPSDFile *this)
{
  v1 = *(this + 27);
  if (!v1)
  {
    return 0;
  }

  while (*(v1 + 20) != 1050)
  {
    v1 = *(v1 + 296);
    if (!v1)
    {
      return 0;
    }
  }

  return *(CPSDImageResources::LookupResourceWithResID((this + 192), 1050) + 88);
}

uint64_t CPSDFile::GetLayerIsSectionDivider(CPSDFile *this, unsigned int a2, BOOL *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  return 1;
}

uint64_t CPSDFile::GetLayerSectionDividerType(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (FirstItemOfTypeID)
  {
    v5 = *(FirstItemOfTypeID + 14);
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return 1;
}

uint64_t CPSDFile::GetLayerIsVisible(CPSDFile *this, unsigned int a2, BOOL *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  v3 = *(*(this + 34) + 488 * a2 + 74);
  result = 1;
  *a3 = ((v3 >> 1) & 1) == 0;
  return result;
}

uint64_t CPSDFile::GetLayerOpacity(CPSDFile *this, unsigned int a2, unsigned __int8 *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  *a3 = *(*(this + 34) + 488 * a2 + 72);
  return 1;
}

uint64_t CPSDFile::GetLayerGradientStyle(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    *a3 = CPSDGradientDescriptor::GetStyle(result);
    return 1;
  }

  return result;
}

uint64_t CPSDGradientDescriptor::GetStyle(CPSDGradientDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return CPSDOSTypeEnumerated::GetEnum(0);
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1417244773)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return CPSDOSTypeEnumerated::GetEnum(0);
    }
  }

  return CPSDOSTypeEnumerated::GetEnum(*(v3 + 80));
}

uint64_t CPSDFile::GetLayerGradientAngle(CPSDFile *this, unsigned int a2, double *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    v6 = 0;
    if (v5)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(result + 96) + 88 * v7;
        if (*(v8 + 60) == 1097754476)
        {
          break;
        }

        if (v5 <= ++v7)
        {
          goto LABEL_11;
        }
      }

      v9 = *(v8 + 80);
      if (v9)
      {
        v6 = *(v9 + 64);
      }
    }

LABEL_11:
    *a3 = v6;
    return 1;
  }

  return result;
}

uint64_t CPSDFile::GetLayerGradientSmoothing(CPSDFile *this, unsigned int a2, double *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    *a3 = CPSDGradientDescriptor::GetSmoothness(result);
    return 1;
  }

  return result;
}

double CPSDGradientDescriptor::GetSmoothness(CPSDGradientDescriptor *this)
{
  v1 = *(this + 22);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this + 12) + 88 * v2;
      if (*(v3 + 60) == 1198678372)
      {
        break;
      }

      if (v1 <= ++v2)
      {
        goto LABEL_5;
      }
    }

    v4 = *(v3 + 80);
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  v5 = *(v4 + 88);
  if (!v5)
  {
    return 1.0;
  }

  v6 = 0;
  v7 = *(v4 + 96);
  while (1)
  {
    v8 = v7 + 88 * v6;
    if (*(v8 + 60) == 1231975538)
    {
      break;
    }

    if (v5 <= ++v6)
    {
      return 1.0;
    }
  }

  v9 = *(v8 + 80);
  if (v9)
  {
    return round(*(v9 + 56) * 0.000244140625);
  }

  else
  {
    return 1.0;
  }
}

uint64_t CPSDFile::GetLayerGradientColorStopCount(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (v5)
    {
      v5 = *(result + 120);
    }

    *a3 = v5;
    return 1;
  }

  return result;
}

uint64_t CPSDFile::GetLayerGradientColorStopAtIndex(CPSDFile *this, unsigned int a2, unsigned __int16 a3, double *a4, double *a5, double *a6)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (!FirstItemOfTypeID)
  {
    return 0;
  }

  return CPSDGradientDescriptor::GetColorStopAtIndex(FirstItemOfTypeID, a3, a4, a5, a6);
}

uint64_t CPSDGradientDescriptor::GetColorStopAtIndex(CPSDGradientDescriptor *this, unsigned int a2, double *a3, double *a4, double *a5)
{
  result = 0;
  if (a3 && a4 && a5)
  {
    v7 = *(this + 12);
    if (*(v7 + 60) != 1198678372)
    {
      v8 = 0;
      do
      {
        ++v8;
      }

      while (*(v7 + 88 * v8 + 60) != 1198678372);
      v7 += 88 * v8;
    }

    v9 = *(*(v7 + 80) + 96);
    if (*(v9 + 60) != 1131180659)
    {
      v10 = 0;
      do
      {
        ++v10;
      }

      while (*(v9 + 88 * v10 + 60) != 1131180659);
      v9 += 88 * v10;
    }

    v11 = *(*(*(v9 + 80) + 64) + 8 * a2);
    v12 = *(v11 + 96);
    if (*(v12 + 60) != 1131180576)
    {
      v13 = 0;
      do
      {
        ++v13;
      }

      while (*(v12 + 88 * v13 + 60) != 1131180576);
      v12 += 88 * v13;
    }

    v14 = 0;
    v15 = *(v11 + 88);
    v16 = *(v12 + 80);
    v17 = *(v16 + 88);
    v18 = *(v16 + 96);
    while (1)
    {
      v19 = v18 + 88 * v14;
      if (*(v19 + 60) == 1382293536)
      {
        break;
      }

      if (v17 <= ++v14)
      {
        v20 = 0;
        goto LABEL_21;
      }
    }

    v20 = *(v19 + 80);
LABEL_21:
    v21 = 0;
    while (1)
    {
      v22 = v18 + 88 * v21;
      if (*(v22 + 60) == 1198681632)
      {
        break;
      }

      if (v17 <= ++v21)
      {
        v23 = 0;
        goto LABEL_26;
      }
    }

    v23 = *(v22 + 80);
LABEL_26:
    if (*(v18 + 60) != 1114382368)
    {
      v24 = 0;
      do
      {
        ++v24;
      }

      while (*(v18 + 88 * v24 + 60) != 1114382368);
      v18 += 88 * v24;
    }

    v25 = 0;
    v26 = *(v23 + 56);
    v27 = *(*(v18 + 80) + 56);
    *a3 = *(v20 + 56);
    *(a3 + 1) = v26;
    *(a3 + 2) = v27;
    a3[3] = 1.0;
    v28 = *(v11 + 96);
    while (1)
    {
      v29 = v28 + 88 * v25;
      if (*(v29 + 60) == 1281586286)
      {
        break;
      }

      if (v15 <= ++v25)
      {
        v30 = 0;
        goto LABEL_35;
      }
    }

    v30 = *(v29 + 80);
LABEL_35:
    if (*(v28 + 60) != 1298428014)
    {
      v31 = 0;
      do
      {
        ++v31;
      }

      while (*(v28 + 88 * v31 + 60) != 1298428014);
      v28 += 88 * v31;
    }

    v32 = *(v28 + 80);
    v33 = round(vcvtd_n_f64_u32(*(v30 + 56), 0xCuLL) * 100.0) / 100.0;
    *a4 = v33;
    LODWORD(v33) = *(v32 + 56);
    *a5 = *&v33 / 100.0;
    return 1;
  }

  return result;
}

uint64_t CPSDFile::GetLayerGradientOpacityStopCount(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (v5)
    {
      v5 = *(result + 124);
    }

    *a3 = v5;
    return 1;
  }

  return result;
}

uint64_t CPSDFile::GetLayerGradientOpacityStopAtIndex(CPSDFile *this, unsigned int a2, unsigned __int16 a3, double *a4, double *a5, double *a6)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (!FirstItemOfTypeID)
  {
    return 0;
  }

  return CPSDGradientDescriptor::GetOpacityStopAtIndex(FirstItemOfTypeID, a3, a4, a5, a6);
}

uint64_t CPSDGradientDescriptor::GetOpacityStopAtIndex(CPSDGradientDescriptor *this, unsigned int a2, double *a3, double *a4, double *a5)
{
  result = 0;
  if (a3 && a4 && a5)
  {
    v7 = *(this + 12);
    if (*(v7 + 60) != 1198678372)
    {
      v8 = 0;
      do
      {
        ++v8;
      }

      while (*(v7 + 88 * v8 + 60) != 1198678372);
      v7 += 88 * v8;
    }

    v9 = *(*(v7 + 80) + 96);
    if (*(v9 + 60) != 1416785523)
    {
      v10 = 0;
      do
      {
        ++v10;
      }

      while (*(v9 + 88 * v10 + 60) != 1416785523);
      v9 += 88 * v10;
    }

    v11 = *(*(*(v9 + 80) + 64) + 8 * a2);
    v12 = *(v11 + 96);
    v13 = *(v12 + 60);
    v14 = v12;
    if (v13 != 1332765556)
    {
      v15 = 0;
      do
      {
        v14 = v12 + 88 * ++v15;
      }

      while (*(v14 + 60) != 1332765556);
    }

    v16 = 0;
    v17 = *(v11 + 88);
    *a3 = round(*(*(v14 + 80) + 64));
    while (1)
    {
      v18 = v12 + 88 * v16;
      if (*(v18 + 60) == 1281586286)
      {
        break;
      }

      if (v17 <= ++v16)
      {
        v19 = 0;
        goto LABEL_20;
      }
    }

    v19 = *(v18 + 80);
LABEL_20:
    if (v13 != 1298428014)
    {
      v20 = 0;
      do
      {
        ++v20;
      }

      while (*(v12 + 88 * v20 + 60) != 1298428014);
      v12 += 88 * v20;
    }

    v21 = *(v12 + 80);
    v22 = round(vcvtd_n_f64_u32(*(v19 + 56), 0xCuLL) * 100.0) / 100.0;
    *a4 = v22;
    LODWORD(v22) = *(v21 + 56);
    *a5 = *&v22 / 100.0;
    return 1;
  }

  return result;
}

uint64_t CPSDFile::GetLayerGradientBlendMode(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    *a3 = CPSDGradientDescriptor::GetBlendMode(result);
    return 1;
  }

  return result;
}

uint64_t CPSDGradientDescriptor::GetBlendMode(CPSDGradientDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1114402381)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return CPSDOSTypeEnumerated::GetEnum(v4);
  }

  else
  {
    return 0;
  }
}

uint64_t CPSDFile::GetLayerGradientIsReversed(CPSDFile *this, unsigned int a2, unsigned __int8 *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    LODWORD(v5) = *(result + 88);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(result + 96) + 88 * v6;
        if (*(v7 + 60) == 1383494259)
        {
          break;
        }

        if (v5 <= ++v6)
        {
          LOBYTE(v5) = 0;
          goto LABEL_11;
        }
      }

      v5 = *(v7 + 80);
      if (v5)
      {
        LOBYTE(v5) = *(v5 + 56);
      }
    }

LABEL_11:
    *a3 = v5;
    return 1;
  }

  return result;
}

uint64_t CPSDFile::GetLayerGradientIsDithered(CPSDFile *this, unsigned int a2, unsigned __int8 *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    LODWORD(v5) = *(result + 88);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(result + 96) + 88 * v6;
        if (*(v7 + 60) == 1148479602)
        {
          break;
        }

        if (v5 <= ++v6)
        {
          LOBYTE(v5) = 0;
          goto LABEL_11;
        }
      }

      v5 = *(v7 + 80);
      if (v5)
      {
        LOBYTE(v5) = *(v5 + 56);
      }
    }

LABEL_11:
    *a3 = v5;
    return 1;
  }

  return result;
}

uint64_t CPSDFile::GetLayerEffectGradientStyle(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(result + 96) + 88 * v6;
        if (*(v7 + 60) == 1198671468)
        {
          break;
        }

        if (v5 <= ++v6)
        {
          return 0;
        }
      }

      result = *(v7 + 80);
      if (result)
      {
        *a3 = CPSDGradientDescriptor::GetStyle(result);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDObjectEffectsLayerInfo::GetEffect(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(a1 + 96) + 88 * v3;
    if (*(v4 + 60) == a2)
    {
      break;
    }

    if (v2 <= ++v3)
    {
      return 0;
    }
  }

  return *(v4 + 80);
}

uint64_t CPSDFile::GetLayerEffectGradientAngle(CPSDFile *this, unsigned int a2, double *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (!v5)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      v7 = *(result + 96) + 88 * v6;
      if (*(v7 + 60) == 1198671468)
      {
        break;
      }

      if (v5 <= ++v6)
      {
        return 0;
      }
    }

    v8 = *(v7 + 80);
    if (v8)
    {
      v9 = *(v8 + 88);
      v10 = 0;
      if (v9)
      {
        v11 = 0;
        v12 = *(v8 + 96);
        while (1)
        {
          v13 = v12 + 88 * v11;
          if (*(v13 + 60) == 1097754476)
          {
            break;
          }

          if (v9 <= ++v11)
          {
            goto LABEL_19;
          }
        }

        v14 = *(v13 + 80);
        if (v14)
        {
          v10 = *(v14 + 64);
        }
      }

LABEL_19:
      *a3 = v10;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDFile::GetLayerEffectGradientSmoothing(CPSDFile *this, unsigned int a2, double *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(result + 96) + 88 * v6;
        if (*(v7 + 60) == 1198671468)
        {
          break;
        }

        if (v5 <= ++v6)
        {
          return 0;
        }
      }

      result = *(v7 + 80);
      if (result)
      {
        *a3 = CPSDGradientDescriptor::GetSmoothness(result);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDFile::GetLayerEffectGradientColorStopCount(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (!v5)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      v7 = *(result + 96) + 88 * v6;
      if (*(v7 + 60) == 1198671468)
      {
        break;
      }

      if (v5 <= ++v6)
      {
        return 0;
      }
    }

    v8 = *(v7 + 80);
    if (v8)
    {
      if (*(v8 + 88))
      {
        v9 = *(v8 + 120);
      }

      else
      {
        v9 = 0;
      }

      *a3 = v9;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDFile::GetLayerEffectGradientColorStopAtIndex(CPSDFile *this, unsigned int a2, unsigned __int16 a3, double *a4, double *a5, double *a6)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (!FirstItemOfTypeID)
  {
    return 0;
  }

  v11 = *(FirstItemOfTypeID + 22);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  while (1)
  {
    v13 = FirstItemOfTypeID[12] + 88 * v12;
    if (*(v13 + 60) == 1198671468)
    {
      break;
    }

    if (v11 <= ++v12)
    {
      return 0;
    }
  }

  v14 = *(v13 + 80);
  if (!v14)
  {
    return 0;
  }

  return CPSDGradientDescriptor::GetColorStopAtIndex(v14, a3, a4, a5, a6);
}

uint64_t CPSDFile::GetLayerEffectGradientOpacityStopCount(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (!v5)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      v7 = *(result + 96) + 88 * v6;
      if (*(v7 + 60) == 1198671468)
      {
        break;
      }

      if (v5 <= ++v6)
      {
        return 0;
      }
    }

    v8 = *(v7 + 80);
    if (v8)
    {
      if (*(v8 + 88))
      {
        v9 = *(v8 + 124);
      }

      else
      {
        v9 = 0;
      }

      *a3 = v9;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDFile::GetLayerEffectGradientOpacityStopAtIndex(CPSDFile *this, unsigned int a2, unsigned __int16 a3, double *a4, double *a5, double *a6)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (!FirstItemOfTypeID)
  {
    return 0;
  }

  v11 = *(FirstItemOfTypeID + 22);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  while (1)
  {
    v13 = FirstItemOfTypeID[12] + 88 * v12;
    if (*(v13 + 60) == 1198671468)
    {
      break;
    }

    if (v11 <= ++v12)
    {
      return 0;
    }
  }

  v14 = *(v13 + 80);
  if (!v14)
  {
    return 0;
  }

  return CPSDGradientDescriptor::GetOpacityStopAtIndex(v14, a3, a4, a5, a6);
}

uint64_t CPSDFile::GetLayerEffectGradientIsReversed(CPSDFile *this, unsigned int a2, unsigned __int8 *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    v5 = *(result + 88);
    if (!v5)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      v7 = *(result + 96) + 88 * v6;
      if (*(v7 + 60) == 1198671468)
      {
        break;
      }

      if (v5 <= ++v6)
      {
        return 0;
      }
    }

    v8 = *(v7 + 80);
    if (v8)
    {
      LODWORD(v9) = *(v8 + 88);
      if (v9)
      {
        v10 = 0;
        v11 = *(v8 + 96);
        while (1)
        {
          v12 = v11 + 88 * v10;
          if (*(v12 + 60) == 1383494259)
          {
            break;
          }

          if (v9 <= ++v10)
          {
            LOBYTE(v9) = 0;
            goto LABEL_19;
          }
        }

        v9 = *(v12 + 80);
        if (v9)
        {
          LOBYTE(v9) = *(v9 + 56);
        }
      }

LABEL_19:
      *a3 = v9;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDFile::GetLayerEffectGradientBlendMode(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    *a3 = CPSDObjectEffectsLayerInfo::GetBlendModeForEffect(result, 1198671468);
    return 1;
  }

  return result;
}

uint64_t CPSDObjectEffectsLayerInfo::GetBlendModeForEffect(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(a1 + 96) + 88 * v3;
    if (*(v4 + 60) == a2)
    {
      break;
    }

    if (v2 <= ++v3)
    {
      return 0;
    }
  }

  v5 = *(v4 + 80);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return CPSDOSTypeEnumerated::GetEnum(0);
  }

  v7 = 0;
  v8 = *(v5 + 96);
  while (1)
  {
    v9 = v8 + 88 * v7;
    if (*(v9 + 60) == 1298407456)
    {
      break;
    }

    if (v6 <= ++v7)
    {
      return CPSDOSTypeEnumerated::GetEnum(0);
    }
  }

  return CPSDOSTypeEnumerated::GetEnum(*(v9 + 80));
}

uint64_t CPSDFile::GetLayerEffectOpacity(CPSDFile *this, unsigned int a2, double *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (result)
  {
    *a3 = CPSDObjectEffectsLayerInfo::GetOpacityForEffect(result, 1198671468);
    return 1;
  }

  return result;
}

double CPSDObjectEffectsLayerInfo::GetOpacityForEffect(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  result = 0.0;
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 96) + 88 * v4;
      if (*(v5 + 60) == a2)
      {
        break;
      }

      if (v2 <= ++v4)
      {
        return result;
      }
    }

    v6 = *(v5 + 80);
    if (v6)
    {
      v7 = *(v6 + 96);
      if (*(v7 + 60) != 1332765556)
      {
        v8 = 0;
        do
        {
          ++v8;
        }

        while (*(v7 + 88 * v8 + 60) != 1332765556);
        v7 += 88 * v8;
      }

      return *(*(v7 + 80) + 64);
    }
  }

  return result;
}

uint64_t CPSDFile::GetLayerFillOpacity(CPSDFile *this, unsigned int a2, unsigned __int8 *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  if (FirstItemOfTypeID)
  {
    v5 = *(FirstItemOfTypeID + 56);
  }

  else
  {
    v5 = -1;
  }

  *a3 = v5;
  return 1;
}

uint64_t CPSDFile::GetLayerBlendMode(CPSDFile *this, unsigned int a2, unsigned int *a3)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  *a3 = *(*(this + 34) + 488 * a2 + 68);
  return 1;
}

uint64_t CPSDFile::GetLayerRecord(CPSDFile *this, unsigned int a2)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 34) + 488 * a2;
  }
}

uint64_t CPSDFile::GetIndexOfFirstLayerNamed(CPSDFile *this, const UniChar **a2, int a3, int a4)
{
  v4 = *(this + 134);
  v5 = v4 - 1;
  v6 = a3 & ~(a3 >> 31);
  if (a4 >= 0)
  {
    v5 = a4;
  }

  if (v5 >= v6)
  {
    v7 = a3 & ~(a3 >> 31);
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= v4 || v8 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 >= v6)
  {
    v12 = a3 & ~(a3 >> 31);
  }

  else
  {
    v12 = v5;
  }

  v13 = 488 * v12;
  while (1)
  {
    CPSDLayerRecord::GetLayerName((*(this + 34) + v13), __s1, 0x100u);
    CPSDString::CopyStringValue(a2, __s2, 0x100u);
    if (!strcmp(__s1, __s2))
    {
      break;
    }

    v13 += 488;
    v15 = __OFSUB__(v12, v8);
    v14 = v12 - v8 < 0;
    ++v12;
    if (v14 == v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v12;
}

size_t CPSDLayerRecord::GetLayerName(CPSDLayerRecord *this, char *a2, unsigned int a3)
{
  result = strlen(this + 200);
  if (a3)
  {
    *a2 = 0;
  }

  if (result)
  {
    if (result <= a3)
    {
      strlcpy(a2, this + 200, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDFile::GetLayerIndexOfParentGroup(CPSDFile *this, int a2)
{
  LODWORD(v2) = a2;
  v4 = 0;
  while (1)
  {
    v5 = v2 + 1;
    v6 = *(this + 134);
    if (v2 + 1 >= v6)
    {
      break;
    }

    if (v5 < v6)
    {
      if (FirstItemOfTypeID)
      {
        v4 = *(FirstItemOfTypeID + 14);
        if (v4 == 3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    v2 = (v2 + 1);
    if ((v4 - 1) <= 1)
    {
      return v2;
    }
  }

  return 0xFFFFFFFFLL;
}

void *CPSDFile::GetRangeOfChildLayers(void *this, unsigned int a2, int *a3, int *a4)
{
  v6 = -1;
  *a3 = -1;
  *a4 = -1;
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v7 = this;
  if (*(this + 134) <= a2)
  {
    v6 = -1;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  v10 = a2 - 1;
  v11 = a2;
  v12 = 488 * a2 + 456;
  while (1)
  {
    if (v11 < *(v7 + 134))
    {
      if (!this)
      {
        v9 = 0;
        goto LABEL_10;
      }

      v9 = *(this + 14);
    }

    if (v9 == 3)
    {
      v13 = 1;
      goto LABEL_13;
    }

LABEL_10:
    v13 = (v9 - 1) >= 2 ? 0 : -1;
LABEL_13:
    v8 += v13;
    if (!v8)
    {
      break;
    }

    *a3 = v10;
    *a4 = v11;
    v14 = v11 - 1;
    v12 -= 488;
    if (v11-- <= 0)
    {
      v6 = v14 + 1;
      goto LABEL_19;
    }
  }

  v6 = *a4;
LABEL_19:
  v16 = *a3;
  if (v6 < *a3)
  {
    *a3 = v6;
    *a4 = v16;
  }

  return this;
}

void *CPSDFile::GetLayerEffectsInfo(CPSDFile *this, unsigned int a2)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  else
  {
  }
}

void *CPSDFile::GetColorFillInfo(CPSDFile *this, unsigned int a2)
{
  if (*(this + 134) <= a2)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t CPSDFile::GetXMPMetadataString(CPSDFile *this, char **a2, unsigned int *a3)
{
  v5 = CPSDImageResources::LookupResourceWithResID((this + 192), 1060);

  return CPSDXMPResourceItem::GetXMPString(v5, a2, a3);
}

uint64_t CPSDXMPResourceItem::GetXMPString(const char **this, char **a2, unsigned int *a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    v7 = strnstr(this[6], "<x:xapmeta", *(this + 4));
    v8 = strnstr(this[6], "</x:xapmeta>", *(this + 4));
    if (!v7)
    {
      v7 = strnstr(this[6], "<x:xmpmeta", *(this + 4));
      v8 = strnstr(this[6], "</x:xmpmeta>", *(this + 4));
    }

    v3 = 1;
    if (v7 && v8)
    {
      v9 = strchr(v8, 10);
      v10 = v9 - v7 + 1;
      v11 = malloc_type_malloc(v9 - v7 + 2, 0x100004077774924uLL);
      *a2 = v11;
      memcpy(v11, v7, v10);
      (*a2)[v10 + 1] = 48;
      *a3 = v10;
      return 1;
    }
  }

  return v3;
}

void CPSDFile::GetCompositeImage(CPSDFile *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    *(this + 12) = 0;
    if (CPSDFile::IsTaggedWithICCProfile(this))
    {
      v3 = CPSDImageResources::LookupResourceWithResID((this + 192), 1039);
      v4 = (*(*v3 + 56))(v3);
      v5 = (*(*v3 + 48))(v3);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = operator new();
    CPSDCompositeImage::CPSDCompositeImage(v6, (this + 112), v1, *(this + 104), v5, v4);
  }
}

uint64_t CPSDBaseComponent::ReadFile(int a1, char *a2, size_t a3, _DWORD *a4)
{
  if (a3)
  {
    v5 = a3;
    v8 = 0;
    do
    {
      LODWORD(result) = ReadFile(a1, a2, v5, a4);
      if (!result || (v10 = *a4, !v10))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        CStdException::CStdException(exception, 3238395925);
      }

      v8 += v10;
      a2 += v10;
      v5 -= v10;
    }

    while (v5);
  }

  else
  {
    v8 = 0;
    LOBYTE(result) = 1;
  }

  *a4 = v8;
  return result;
}

uint64_t CPSDImageResourceBlock::Load(CPSDImageResourceBlock *this, uint64_t a2, unsigned int *a3)
{
  v13 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v13);
  *a3 += v13;
  v6 = bswap32(*(this + 4));
  *(this + 4) = v6;
  if (v6 != 943868237 && v6 != 1298486113)
  {
    fprintf(__stderrp, "CPSDImageResourceBlock::Load(): encountered unrecognized image resource block of type 0x%x\n", v6);
    return 0;
  }

  CPSDBaseComponent::ReadFile(a2, this + 20, 2uLL, &v13);
  *a3 += v13;
  *(this + 10) = bswap32(*(this + 10)) >> 16;
  LoadPascalStringAsCString(a2, a3, this + 22, 2);
  v8 = (this + 280);
  CPSDBaseComponent::ReadFile(a2, this + 280, 4uLL, &v13);
  *a3 += v13;
  v9 = bswap32(*(this + 70));
  *(this + 70) = v9;
  if (!CPSDImageResourceBlock::CreateResourceItem(this, a2, v9))
  {
    return 0;
  }

  *a3 += *v8;
  if ((*v8 & 1) == 0)
  {
    return 1;
  }

  v12 = 0;
  v10 = 1;
  CPSDBaseComponent::ReadFile(a2, &v12, 1uLL, &v13);
  *a3 += v13;
  return v10;
}

CPSDBaseComponent *CPSDImageResources::UpdateResourceSize(CPSDBaseComponent *result, CPSDBaseComponent *this)
{
  if (this)
  {
    v3 = *(this + 5);
    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      CStdException::CStdException(exception, 3238789123);
    }

    v4 = result;
    v5 = CPSDBaseComponent::ComputeSize(this);
    *(this + 4) = v5;
    *(v3 + 280) = v5;
    result = CPSDBaseComponent::ComputeSize(v4);
    *(v4 + 4) = result - 4;
  }

  return result;
}

void *CPSDICCProfileResourceItem::AddICCData(CPSDICCProfileResourceItem *this, const unsigned __int8 *a2, size_t size)
{
  v6 = *(this + 6);
  if (v6)
  {
    free(v6);
  }

  result = malloc_type_malloc(size, 0x100004077774924uLL);
  *(this + 6) = result;
  if (result)
  {
    result = memcpy(result, a2, size);
    *(this + 4) = size;
  }

  return result;
}

uint64_t CPSDSlicesResourceItem::AddOrUpdateSlices(CPSDSlicesResourceItem *this, int32x4_t *a2, int a3, int a4, int a5)
{
  *(this + 6) = 6;
  *(this + 14) = 0;
  *(this + 15) = a5;
  *(this + 16) = a4;
  if (*(this + 22))
  {
    v8 = *(this + 12);
    if (v8)
    {
      v9 = v8 - 16;
      v10 = *(v8 - 8);
      if (v10)
      {
        v11 = (v8 + 176 * v10 - 176);
        v12 = -176 * v10;
        do
        {
          CPSDSliceResource::~CPSDSliceResource(v11);
          v11 = (v13 - 176);
          v12 += 176;
        }

        while (v12);
      }

      MEMORY[0x193AC64A0](v9, 0x10B1C808814FAA7);
    }
  }

  v14 = (a3 + 1);
  *(this + 22) = v14;
  if (a3 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    CStdException::CStdException(exception, 3238789123);
  }

  v15 = operator new[]();
  v16 = 0;
  *v15 = 176;
  *(v15 + 8) = v14;
  do
  {
    CPSDSliceResource::CPSDSliceResource((v15 + v16 + 16));
    v16 += 176;
  }

  while (176 * v14 != v16);
  *(this + 12) = v15 + 16;
  if (a3)
  {
    v17 = 0;
    v18 = (v15 + 244);
    do
    {
      *v18 = vrev64q_s32(a2[v17]);
      v18[-1].i32[3] = 1;
      v18[-2].i32[1] = 2;
      *(&v18[-3].u64[1] + 4) = vdup_n_s32(v17++ + 2);
      v18 += 11;
    }

    while (a3 - 1 >= v17);
  }

  *(v15 + 68) = vrev64q_s32(*(this + 52));

  return CPSDSlicesResourceItem::SortSlices(this);
}

void *CPSDSlicesResourceItem::UpdateSliceNameAtIndex(CPSDSlicesResourceItem *this, const unsigned __int16 *a2, int a3, unsigned int a4)
{
  if (*(this + 22) <= a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    CStdException::CStdException(exception, 3238789123);
  }

  v5 = *(*(this + 13) + 8 * a4);
  CPSDString::AllocateCharData((v5 + 32), a3);
  v6 = *(v5 + 40);
  v7 = (2 * *(v5 + 32));

  return memcpy(v6, a2, v7);
}

void CPSDImageResourceBlock::~CPSDImageResourceBlock(CPSDImageResourceBlock *this)
{
  *this = &unk_1F00D40F0;
  v1 = *(this + 36);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F00D40F0;
  v1 = *(this + 36);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDImageResourceBlock::Dump(CPSDImageResourceBlock *this, __sFILE *a2)
{
  (*(**(this + 36) + 40))(*(this + 36));
  result = *(this + 37);
  if (result)
  {
    v4 = *(*result + 40);

    return v4();
  }

  return result;
}

unint64_t LoadPascalStringAsCString(int a1, _DWORD *a2, char *a3, int a4)
{
  v13 = 0;
  v12 = 0;
  result = CPSDBaseComponent::ReadFile(a1, &v13, 1uLL, &v12);
  *a2 += v12;
  if (v13)
  {
    result = CPSDBaseComponent::ReadFile(a1, a3, v13, &v12);
    *a2 += v12;
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  a3[v9] = 0;
  if (a4 == 2)
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (a4 != 4)
  {
    return result;
  }

  v10 = (v9 + 1) & 3;
  if (v10 > 1)
  {
    if (v10 != 3)
    {
      v11 = 2;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!v10)
  {
    return result;
  }

  v11 = 3;
LABEL_11:
  result = SetFilePointer(a1, v11, 0, 1);
  *a2 += v11;
  return result;
}

uint64_t CPSDImageResourceBlock::CreateResourceItem(CPSDImageResourceBlock *this, uint64_t a2, int a3)
{
  v6 = *(this + 10);
  if (v6 <= 0x414)
  {
    switch(v6)
    {
      case 0x40Du:
        v7 = operator new();
        v8 = v7;
        *(v7 + 16) = a3;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = this;
        *v7 = &unk_1F00D4E08;
        v9 = 120;
        goto LABEL_14;
      case 0x40Fu:
        v10 = operator new();
        v8 = v10;
        *(v10 + 16) = a3;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
        *(v10 + 40) = this;
        v11 = &unk_1F00D4D40;
        goto LABEL_19;
      case 0x411u:
        v8 = operator new();
        *(v8 + 16) = a3;
        *(v8 + 24) = 0;
        *(v8 + 32) = 0;
        *(v8 + 40) = this;
        *v8 = &unk_1F00D4DA8;
        *(v8 + 48) = 1;
        goto LABEL_20;
    }
  }

  else if (*(this + 10) > 0x419u)
  {
    if (v6 == 1050)
    {
      v8 = operator new();
      CPSDSlicesResourceItem::CPSDSlicesResourceItem(v8, this, a3);
      goto LABEL_20;
    }

    if (v6 == 1060)
    {
      v8 = operator new();
      CPSDXMPResourceItem::CPSDXMPResourceItem(v8, this, a3);
      goto LABEL_20;
    }
  }

  else
  {
    if (v6 == 1045)
    {
      v8 = operator new();
      *(v8 + 16) = a3;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = this;
      *(v8 + 48) = 0;
      *v8 = &unk_1F00D4F40;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      goto LABEL_20;
    }

    if (v6 == 1049)
    {
      v7 = operator new();
      v8 = v7;
      *(v7 + 16) = a3;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = this;
      *v7 = &unk_1F00D4E68;
      v9 = 30;
LABEL_14:
      *(v7 + 48) = v9;
      goto LABEL_20;
    }
  }

  v10 = operator new();
  v8 = v10;
  *(v10 + 16) = a3;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = this;
  v11 = &unk_1F00D4CD0;
LABEL_19:
  *v10 = v11;
  *(v10 + 48) = 0;
LABEL_20:
  *(this + 36) = v8;

  return CPSDResourceItem::LoadItem(v8, a2);
}

CPSDResourceItem *CPSDImageResourceBlock::Save(CPSDImageResourceBlock *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  (*(*a2 + 72))(a2, *(this + 10));
  (*(*a2 + 32))(a2, this + 22, 2);
  (*(*a2 + 80))(a2, *(this + 70));
  result = *(this + 36);
  if (result)
  {
    result = CPSDResourceItem::SaveItem(result, a2);
  }

  if (*(this + 280))
  {
    v5 = *(*a2 + 64);

    return v5(a2, 0);
  }

  return result;
}

uint64_t CPSDResourceItem::SaveItem(CPSDResourceItem *this, File *a2)
{
  result = (*(*this + 24))(this);
  if (*(this + 4))
  {
    v5 = *(*a2 + 48);

    return v5(a2);
  }

  return result;
}

uint64_t CPSDResourceItem::LoadItem(CPSDResourceItem *this, uint64_t a2)
{
  v4 = SetFilePointer(a2, 0, 0, 1);
  result = (*(*this + 16))(this, a2);
  if (result)
  {
    v6 = SetFilePointer(a2, 0, 0, 1) - v4;

    return CPSDResourceItem::LoadUnparsedData(this, a2, v6);
  }

  return result;
}

BOOL CPSDResourceItem::LoadUnparsedData(CPSDResourceItem *this, int a2, unsigned int a3)
{
  v4 = *(this + 4);
  if (v4 >= a3)
  {
    *(this + 3) = v4 - a3;
    if (v4 == a3)
    {
      return 1;
    }

    else
    {
      if (*(this + 4))
      {
        MEMORY[0x193AC64A0](*(this + 4), 0x1000C8077774924);
      }

      v7 = operator new[]();
      *(this + 4) = v7;
      v8 = 0;
      CPSDBaseComponent::ReadFile(a2, v7, *(this + 3), &v8);
      return *(this + 3) == v8;
    }
  }

  else
  {
    *(this + 3) = 0;
    puts("Error: Attempting to load more data than exists");
    return 0;
  }
}

uint64_t CPSDXMPResourceItem::Load(char **this, int a2)
{
  v4 = 0;
  CPSDBaseComponent::ReadFile(a2, this[6], *(this + 4), &v4);
  result = 0;
  if (v4 == *(this + 4))
  {
    this[6][v4] = 0;
    return 1;
  }

  return result;
}

uint64_t CPSDXMPResourceItem::Save(uint64_t this, File *a2)
{
  v2 = *(this + 48);
  if (v2)
  {
    return (*(*a2 + 48))(a2, v2, *(this + 16));
  }

  return this;
}

BOOL CPSDDummyResourceItem::Load(CPSDDummyResourceItem *this, int a2)
{
  v6 = 0;
  v4 = malloc_type_malloc(*(this + 4), 0x100004077774924uLL);
  *(this + 6) = v4;
  CPSDBaseComponent::ReadFile(a2, v4, *(this + 4), &v6);
  return v6 == *(this + 4);
}

uint64_t CPSDDummyResourceItem::Save(uint64_t this, File *a2)
{
  v2 = *(this + 48);
  if (v2)
  {
    return (*(*a2 + 48))(a2, v2, *(this + 16));
  }

  return this;
}

BOOL CPSDICCProfileResourceItem::Load(CPSDICCProfileResourceItem *this, int a2)
{
  v6 = 0;
  v4 = malloc_type_malloc(*(this + 4), 0x100004077774924uLL);
  *(this + 6) = v4;
  CPSDBaseComponent::ReadFile(a2, v4, *(this + 4), &v6);
  return v6 == *(this + 4);
}

uint64_t CPSDICCProfileResourceItem::Save(uint64_t this, File *a2)
{
  v2 = *(this + 48);
  if (v2)
  {
    return (*(*a2 + 48))(a2, v2, *(this + 16));
  }

  return this;
}

uint64_t CPSDICCUntaggedResourceItem::Dump(CPSDICCUntaggedResourceItem *this, __sFILE *a2)
{
  if (*(this + 48))
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  return fprintf(a2, "{ Untagged: %s }\n", v2);
}

BOOL CPSDICCUntaggedResourceItem::Load(CPSDICCUntaggedResourceItem *this, int a2)
{
  v3 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 48, 1uLL, &v3);
  return v3 == 1;
}

uint64_t CPSDUnicodeChannelNames::Load(CPSDUnicodeChannelNames *this, int a2)
{
  v9 = 0;
  if (*(this + 4))
  {
    v4 = 0;
    do
    {
      v8 = 0;
      CPSDString::AllocateCharData(&v7, 1);
      *v8 = 0;
      CPSDString::Load(&v7, a2, &v9);
      std::vector<CPSDString>::push_back[abi:ne200100](this + 6, &v7);
      v5 = v9;
      if (v8)
      {
        MEMORY[0x193AC64A0](v8, 0x1000C80BDFB0063);
      }

      v4 += v5;
    }

    while (v4 < *(this + 4));
  }

  return 1;
}

void sub_18DF9714C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x193AC64A0](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPSDString::Load(char **this, int a2, unsigned int *a3)
{
  v13 = 0;
  CPSDBaseComponent::ReadFile(a2, &v13, 4uLL, &v13 + 1);
  *a3 += HIDWORD(v13);
  v6 = v13;
  v7 = bswap32(v13);
  LODWORD(v13) = v7;
  if (v6)
  {
    if (v7 > 0xFF)
    {
      return 0;
    }

    CPSDString::AllocateCharData(this, v7);
    CPSDBaseComponent::ReadFile(a2, this[1], (2 * *this), &v13 + 1);
    v10 = HIDWORD(v13);
    *a3 += HIDWORD(v13);
    if (v10 >= 2)
    {
      v11 = v10 >> 1;
      v12 = this[1];
      do
      {
        *v12 = bswap32(*v12) >> 16;
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v9 = this[1];
    if (v9)
    {
      MEMORY[0x193AC64A0](v9, 0x1000C80BDFB0063);
      this[1] = 0;
    }

    *this = 0;
  }

  return 1;
}

uint64_t std::vector<CPSDString>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<CPSDString>::__emplace_back_slow_path<CPSDString const&>(a1, a2);
  }

  else
  {
    std::vector<CPSDString>::__construct_one_at_end[abi:ne200100]<CPSDString const&>(a1, a2);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t CPSDUnicodeChannelNames::Save(uint64_t this, File *a2)
{
  v2 = *(this + 56) - *(this + 48);
  if (v2)
  {
    v4 = this;
    v5 = 0;
    v6 = v2 >> 4;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v8 = (*(v4 + 48) + v5);
      (*(*a2 + 80))(a2, *v8);
      this = (*(*a2 + 40))(a2, *(v8 + 1), *v8);
      v5 += 16;
      --v7;
    }

    while (v7);
  }

  return this;
}

BOOL CPSDGlobalAngleResourceItem::Load(CPSDGlobalAngleResourceItem *this, int a2)
{
  v4 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 48, 4uLL, &v4);
  *(this + 12) = bswap32(*(this + 12));
  return v4 == 4;
}

BOOL CPSDGlobalAltitudeResourceItem::Load(CPSDGlobalAltitudeResourceItem *this, int a2)
{
  v4 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 48, 4uLL, &v4);
  *(this + 12) = bswap32(*(this + 12));
  return v4 == 4;
}

void CPSDSlicesResourceItem::~CPSDSlicesResourceItem(CPSDSlicesResourceItem *this)
{
  *this = &unk_1F00D4130;
  if (*(this + 12) < 7u)
  {
    if (*(this + 22))
    {
      v3 = *(this + 12);
      if (v3)
      {
        v4 = v3 - 16;
        v5 = *(v3 - 8);
        if (v5)
        {
          v6 = (v3 + 176 * v5 - 176);
          v7 = -176 * v5;
          do
          {
            CPSDSliceResource::~CPSDSliceResource(v6);
            v6 = (v8 - 176);
            v7 += 176;
          }

          while (v7);
        }

        MEMORY[0x193AC64A0](v4, 0x10B1C808814FAA7);
      }

      v9 = *(this + 13);
      if (v9)
      {
        MEMORY[0x193AC64A0](v9, 0x20C8093837F09);
      }
    }
  }

  else
  {
    v2 = *(this + 14);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v10 = *(this + 10);
  if (v10)
  {
    MEMORY[0x193AC64A0](v10, 0x1000C80BDFB0063);
    *(this + 10) = 0;
  }

  *this = &unk_1F00D5720;
  v11 = *(this + 4);
  if (v11)
  {
    MEMORY[0x193AC64A0](v11, 0x1000C8077774924);
  }
}

{
  CPSDSlicesResourceItem::~CPSDSlicesResourceItem(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDSlicesResourceItem::Dump(CPSDSlicesResourceItem *this, __sFILE *a2)
{
  if (*(this + 12) < 7u)
  {
    result = fprintf(a2, "{ SLICES:   1051\t[%d Slices] bounds={%d,%d,%d,%d} [%d] bytes }\n", *(this + 22), *(this + 14), *(this + 13), *(this + 16), *(this + 15), *(this + 4));
    if (*(this + 22))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        fprintf(a2, "[%d]\t", v7);
        result = (*(*(*(this + 12) + v6) + 40))(*(this + 12) + v6, a2);
        ++v7;
        v6 += 176;
      }

      while (v7 < *(this + 22));
    }
  }

  else
  {
    fprintf(a2, "{ SLICES:   1051\t v%d ActionDescriptor [%d] bytes }\n", *(this + 12), *(this + 4));
    v4 = *(**(this + 14) + 56);

    return v4();
  }

  return result;
}

uint64_t CPSDSlicesResourceItem::Load(CPSDSlicesResourceItem *this, uint64_t a2)
{
  v17 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 48, 4uLL, &v17);
  v16 = v17;
  v4 = bswap32(*(this + 12));
  *(this + 12) = v4;
  if (v4 < 7)
  {
    CPSDBaseComponent::ReadFile(a2, this + 52, 0x10uLL, &v17);
    v16 += v17;
    *(this + 52) = vrev32q_s8(*(this + 52));
    CPSDString::Load(this + 9, a2, &v16);
    CPSDBaseComponent::ReadFile(a2, this + 88, 4uLL, &v17);
    v16 += v17;
    v9 = *(this + 22);
    v10 = bswap32(v9);
    *(this + 22) = v10;
    if (!v9)
    {
      return CPSDSlicesResourceItem::SortSlices(this);
    }

    v11 = operator new[]();
    v12 = 0;
    *v11 = 176;
    v11[1] = v10;
    do
    {
      CPSDSliceResource::CPSDSliceResource(&v11[v12 + 2]);
      v12 += 22;
    }

    while (22 * v10 != v12);
    *(this + 12) = v11 + 2;
    if (*(this + 22))
    {
      v13 = 0;
      v14 = 0;
      while (1)
      {
        result = (*(*(*(this + 12) + v13) + 48))(*(this + 12) + v13, a2, &v16);
        if (!result)
        {
          break;
        }

        ++v14;
        v13 += 176;
        if (v14 >= *(this + 22))
        {
          return CPSDSlicesResourceItem::SortSlices(this);
        }
      }
    }

    else
    {
      return CPSDSlicesResourceItem::SortSlices(this);
    }
  }

  else
  {
    v15 = 0;
    CPSDBaseComponent::ReadFile(a2, &v15, 4uLL, &v16);
    v16 += v17;
    v5 = v15;
    v6 = bswap32(v15);
    v15 = v6;
    if (v5 == 0x10000000)
    {
      v7 = operator new();
      CPSDActionDescriptor::CPSDActionDescriptor(v7);
      *(this + 14) = v7;
      *(this + 22) = 0;
      return (*(*v7 + 16))(v7, a2);
    }

    else
    {
      fprintf(__stderrp, "CPSDSlicesResourceItem::Load(): unexpected descriptor version (%d) encountered.\n", v6);
      return 0;
    }
  }

  return result;
}

uint64_t CPSDSlicesResourceItem::SortSlices(CPSDSlicesResourceItem *this)
{
  if (!*(this + 22))
  {
    return 0;
  }

  if (!*(this + 12))
  {
    return 0;
  }

  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x20C8093837F09);
  }

  v3 = operator new[]();
  *(this + 13) = v3;
  v4 = *(this + 22);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*(this + 13) + 8 * i) = *(this + 12) + 176 * i;
    }

    v3 = *(this + 13);
  }

  else
  {
    v4 = 0;
  }

  qsort(v3, v4, 8uLL, slice_cmp_fn);
  return 1;
}

uint64_t CPSDSlicesResourceItem::Save(CPSDSlicesResourceItem *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 12));
  PSDRect::Save((this + 52), a2);
  (*(*a2 + 80))(a2, *(this + 18));
  (*(*a2 + 40))(a2, *(this + 10), *(this + 18));
  result = (*(*a2 + 80))(a2, *(this + 22));
  if (*(this + 22))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      result = (*(*(*(this + 12) + v5) + 24))(*(this + 12) + v5, a2);
      ++v6;
      v5 += 176;
    }

    while (v6 < *(this + 22));
  }

  return result;
}

uint64_t PSDRect::Save(PSDRect *this, File *a2)
{
  (*(*a2 + 80))(a2, *this);
  (*(*a2 + 80))(a2, *(this + 1));
  (*(*a2 + 80))(a2, *(this + 2));
  v4 = *(this + 3);
  v5 = *(*a2 + 80);

  return v5(a2, v4);
}

uint64_t slice_cmp_fn(const void *a1, const void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 56);
  v5 = *(*a2 + 56);
  v6 = v4 >= v5;
  if (v4 == v5 && (v7 = v2[13], v8 = v3[13], v6 = v7 >= v8, v7 == v8))
  {
    v9 = v2[15];
    v10 = v3[15];
    v6 = v9 >= v10;
    if (v9 == v10)
    {
      v6 = v2[16] >= v3[16];
    }

    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (v6)
  {
    return -v11;
  }

  else
  {
    return v11;
  }
}

uint64_t CPSDSliceResource::Load(CPSDSliceResource *this, int a2, unsigned int *a3)
{
  v8 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 0xCuLL, &v8);
  *a3 += v8;
  *(this + 2) = vrev32_s8(*(this + 16));
  v6 = *(this + 6);
  *(this + 6) = bswap32(v6);
  if (v6 == 0x1000000)
  {
    CPSDBaseComponent::ReadFile(a2, this + 28, 4uLL, &v8);
    *(this + 7) = bswap32(*(this + 7));
  }

  CPSDString::Load(this + 4, a2, a3);
  CPSDBaseComponent::ReadFile(a2, this + 48, 0x14uLL, &v8);
  *a3 += v8;
  *(this + 3) = vrev32q_s8(*(this + 3));
  *(this + 16) = bswap32(*(this + 16));
  CPSDString::Load(this + 9, a2, a3);
  CPSDString::Load(this + 11, a2, a3);
  CPSDString::Load(this + 13, a2, a3);
  CPSDString::Load(this + 15, a2, a3);
  CPSDBaseComponent::ReadFile(a2, this + 136, 1uLL, &v8);
  *a3 += v8;
  CPSDString::Load(this + 18, a2, a3);
  CPSDBaseComponent::ReadFile(a2, this + 160, 8uLL, &v8);
  *a3 += v8;
  *(this + 20) = vrev32_s8(*(this + 160));
  CPSDBaseComponent::ReadFile(a2, this + 168, 1uLL, &v8);
  *a3 += v8;
  CPSDBaseComponent::ReadFile(a2, this + 169, 1uLL, &v8);
  *a3 += v8;
  CPSDBaseComponent::ReadFile(a2, this + 170, 1uLL, &v8);
  *a3 += v8;
  CPSDBaseComponent::ReadFile(a2, this + 171, 1uLL, &v8);
  *a3 += v8;
  return 1;
}

uint64_t CPSDSliceResource::Save(CPSDSliceResource *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  (*(*a2 + 80))(a2, *(this + 5));
  (*(*a2 + 80))(a2, *(this + 6));
  if (*(this + 6) == 1)
  {
    (*(*a2 + 80))(a2, *(this + 7));
  }

  (*(*a2 + 80))(a2, *(this + 8));
  (*(*a2 + 40))(a2, *(this + 5), *(this + 8));
  (*(*a2 + 80))(a2, *(this + 12));
  (*(*a2 + 80))(a2, *(this + 13));
  (*(*a2 + 80))(a2, *(this + 14));
  (*(*a2 + 80))(a2, *(this + 15));
  (*(*a2 + 80))(a2, *(this + 16));
  (*(*a2 + 80))(a2, *(this + 18));
  (*(*a2 + 40))(a2, *(this + 10), *(this + 18));
  (*(*a2 + 80))(a2, *(this + 22));
  (*(*a2 + 40))(a2, *(this + 12), *(this + 22));
  (*(*a2 + 80))(a2, *(this + 26));
  (*(*a2 + 40))(a2, *(this + 14), *(this + 26));
  (*(*a2 + 80))(a2, *(this + 30));
  (*(*a2 + 40))(a2, *(this + 16), *(this + 30));
  (*(*a2 + 64))(a2, *(this + 136));
  (*(*a2 + 80))(a2, *(this + 36));
  (*(*a2 + 40))(a2, *(this + 19), *(this + 36));
  (*(*a2 + 80))(a2, *(this + 40));
  (*(*a2 + 80))(a2, *(this + 41));
  (*(*a2 + 64))(a2, *(this + 168));
  (*(*a2 + 64))(a2, *(this + 169));
  (*(*a2 + 64))(a2, *(this + 170));
  v4 = *(this + 171);
  v5 = *(*a2 + 64);

  return v5(a2, v4);
}

uint64_t CPSDSliceResource::Dump(CPSDSliceResource *this, __sFILE *a2)
{
  v5 = *(this + 8);
  v4 = (this + 32);
  if (v5)
  {
    CPSDString::CopyStringValue(v4, v7, 0x100u);
  }

  return fprintf(a2, " |  {%d,%d,%d,%d} \t[ %s ]\ttype=%d \thoriz=%d, vert=%d\t|\n", *(this + 13), *(this + 14), *(this + 15), *(this + 16), v7, *(this + 12), *(this + 40), *(this + 41));
}

void CPSDPathsResourceItem::~CPSDPathsResourceItem(CPSDPathsResourceItem *this)
{
  *this = &unk_1F00D4170;
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x20C8093837F09);
  }

  v3 = *(this + 3);
  if (v3)
  {
    do
    {
      v4 = v3[3];
      (*(*v3 + 8))(v3);
      v3 = v4;
    }

    while (v4);
  }
}

{
  CPSDPathsResourceItem::~CPSDPathsResourceItem(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDPathsResourceItem::Load(CPSDPathsResourceItem *this, uint64_t a2)
{
  v2 = *(this + 4);
  if (v2 / 26.0 >= 1.0)
  {
    v6 = 0;
    v7 = (this + 24);
    do
    {
      v18 = 0;
      v17 = 0;
      CPSDBaseComponent::ReadFile(a2, &v17, 2uLL, &v18);
      v8 = bswap32(v17) >> 16;
      v17 = v8;
      v9 = v18;
      if (v8 <= 3)
      {
        if ((v8 - 1) < 2)
        {
LABEL_16:
          v14 = operator new();
          v10 = v14;
          *(v14 + 16) = v17;
          *(v14 + 24) = 0;
          v12 = &unk_1F00D5048;
LABEL_17:
          *v14 = v12;
          goto LABEL_18;
        }

        if (v8)
        {
          v13 = v8 == 3;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
LABEL_29:
          exception = __cxa_allocate_exception(0x10uLL);
          CStdException::CStdException(exception, 3238395925);
        }

        v10 = operator new();
        *(v10 + 16) = v17;
        *(v10 + 24) = 0;
        *(v10 + 32) = 0;
        v12 = &unk_1F00D4FF0;
        *v10 = &unk_1F00D4FF0;
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        ++*(this + 16);
      }

      else
      {
        if (v8 > 6)
        {
          if (v8 == 7)
          {
            v14 = operator new();
            v10 = v14;
            *(v14 + 16) = v17;
            *(v14 + 24) = 0;
            v12 = &unk_1F00D50A0;
          }

          else
          {
            if (v8 != 8)
            {
              goto LABEL_29;
            }

            v14 = operator new();
            v10 = v14;
            *(v14 + 16) = v17;
            *(v14 + 24) = 0;
            v12 = &unk_1F00D50F8;
          }

          goto LABEL_17;
        }

        if ((v8 - 4) < 2)
        {
          goto LABEL_16;
        }

        if (v8 != 6)
        {
          goto LABEL_29;
        }

        v10 = operator new();
        v11 = v17;
        v12 = &unk_1F00D4F98;
        *v10 = &unk_1F00D4F98;
        *(v10 + 16) = v11;
        *(v10 + 24) = 0;
      }

LABEL_18:
      if (!v12[2](v10, a2))
      {
        goto LABEL_29;
      }

      v15 = v7;
      if (!*v7)
      {
        goto LABEL_22;
      }

      if (v6)
      {
        v15 = (v6 + 24);
LABEL_22:
        *v15 = v10;
      }

      v2 = v2 - v9 - 24;
      v6 = v10;
    }

    while (v2 / 26.0 >= 1.0);
  }

  return 1;
}

uint64_t CPSDPathsResourceItem::Save(uint64_t this, File *a2)
{
  for (i = *(this + 24); i; i = i[3])
  {
    this = (*(*i + 24))(i, a2);
  }

  return this;
}

uint64_t CPSDPathsResourceItem::GenerateSubpathResources(CPSDPathsResourceItem *this)
{
  *(this + 5) = operator new[]();
  v2 = *(this + 3);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v2 + 16);
      if (v5 <= 5)
      {
        if (((1 << v5) & 0x36) == 0)
        {
          v6 = operator new();
          *(*(this + 5) + 8 * v3) = v6;
          *v6 = &unk_1F00D5150;
          if (*(v2 + 16))
          {
            v7 = *(v2 + 16) == 3;
          }

          else
          {
            v7 = 1;
          }

          v8 = v7;
          v9 = *(*(this + 5) + 8 * v3);
          *(v9 + 16) = v8;
          *(v9 + 18) = *(v2 + 32);
          v10 = operator new[]();
          v4 = 0;
          *(*(*(this + 5) + 8 * v3) + 24) = v10;
          goto LABEL_18;
        }

        *(*(*(*(this + 5) + 8 * v3) + 24) + 8 * v4++) = v2;
      }

      if (v4)
      {
        if (*(*(*(this + 5) + 8 * v3) + 18) == v4)
        {
          ++v3;
        }
      }

      else
      {
        v4 = 0;
      }

LABEL_18:
      v2 = *(v2 + 24);
    }

    while (v2);
  }

  return 1;
}

uint64_t CPSDPathsResourceItem::GetSubpath(CPSDPathsResourceItem *this, unsigned int a2)
{
  if (!*(this + 5))
  {
    CPSDPathsResourceItem::GenerateSubpathResources(this);
  }

  if (*(this + 16) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 5) + 8 * a2);
  }
}

uint64_t CPSDPathsResourceItem::Dump(CPSDPathsResourceItem *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ PathsResourceItem:\n", v6);
  fprintf(a2, "%s\tFillStartsWithAllPixels:\n", v7);
  fprintf(a2, "%s\tSubpaths[%d]\n", v7, *(this + 16));
  if (*(this + 16))
  {
    v9 = 0;
    do
    {
      fprintf(a2, "%s\t===== Subpath %d =====\n", v7, v9);
      if (!*(this + 5))
      {
        CPSDPathsResourceItem::GenerateSubpathResources(this);
      }

      v10 = *(this + 16);
      if (v9 < v10)
      {
        v11 = *(*(this + 5) + 8 * v9);
        if (v11)
        {
          (*(*v11 + 48))(v11, a2, a3 + 2);
          v10 = *(this + 16);
        }
      }

      ++v9;
    }

    while (v9 < v10);
  }

  return fprintf(a2, "%s} // End of PathsResourceItem\n", v7);
}

uint64_t CPSDPathResource::Dump(CPSDPathResource *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ Bezier Path:\n", v6);
  fprintf(a2, "%s\tKnots[%d]:\n", v7, *(this + 9));
  if (*(this + 9))
  {
    v9 = 0;
    do
    {
      fprintf(a2, "%s\t[%d]: ", v7, v9);
      v10 = *(*(this + 3) + 8 * v9);
      (*(*v10 + 40))(v10, a2);
      ++v9;
    }

    while (v9 < *(this + 9));
  }

  return fprintf(a2, "%s} // End Bezier Path\n", v7);
}

uint64_t CPSDPathResource::GetBezierKnot(uint64_t a1, unsigned int a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  v5 = *(*(a1 + 24) + 8 * a2);
  *a4 = v5[2];
  *a3 = v5[3];
  *a5 = v5[4];
  return 1;
}

uint64_t CPSDPathDataRecord::Load(CPSDPathDataRecord *this, int a2)
{
  v3 = SetFilePointer(a2, 0, 0, 1);
  SetFilePointer(a2, (v3 + 24), 0, 0);
  return 1;
}

uint64_t CPSDPathDataRecord::Save(CPSDPathDataRecord *this, File *a2)
{
  result = (*(*a2 + 72))(a2, *(this + 8));
  if (*(this + 8) == 6)
  {
    v5 = *(*a2 + 56);

    return v5(a2, 24);
  }

  return result;
}

uint64_t CPSDSubpathLengthRecord::Load(CPSDSubpathLengthRecord *this, int a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 32, 2uLL, &v5);
  *(this + 16) = bswap32(*(this + 16)) >> 16;
  CPSDBaseComponent::ReadFile(a2, this + 34, 0x16uLL, &v5);
  return 1;
}

uint64_t CPSDSubpathLengthRecord::Save(CPSDSubpathLengthRecord *this, File *a2)
{
  CPSDPathDataRecord::Save(this, a2);
  (*(*a2 + 72))(a2, *(this + 16));
  v4 = *(*a2 + 48);

  return v4(a2, this + 34, 22);
}

uint64_t CPSDBezierKnotRecord::Load(CPSDBezierKnotRecord *this, int a2)
{
  v8 = 0;
  v7 = 0;
  v3 = (this + 40);
  v4 = 3;
  do
  {
    CPSDBaseComponent::ReadFile(a2, &v7, 4uLL, &v8 + 1);
    CPSDBaseComponent::ReadFile(a2, &v8, 4uLL, &v8 + 1);
    v7 = bswap32(v7);
    LODWORD(v8) = bswap32(v8);
    v5 = vcvtd_n_f64_u32(v7, 0x18uLL);
    *(v3 - 1) = vcvtd_n_f64_u32(v8, 0x18uLL);
    *v3 = v5;
    v3 += 2;
    --v4;
  }

  while (v4);
  return 1;
}

uint64_t CPSDBezierKnotRecord::Save(CPSDBezierKnotRecord *this, File *a2)
{
  CPSDPathDataRecord::Save(this, a2);
  v5 = (this + 40);
  v6 = 3;
  do
  {
    LODWORD(v4) = vcvtd_n_u64_f64(*v5, 0x18uLL);
    (*(*a2 + 80))(a2, v4);
    LODWORD(v7) = vcvtd_n_u64_f64(*(v5 - 1), 0x18uLL);
    result = (*(*a2 + 80))(a2, v7);
    v5 += 2;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t CPSDBezierKnotRecord::Dump(CPSDBezierKnotRecord *this, __sFILE *a2)
{
  v2 = *(this + 8);
  v3 = v2 == 4 || v2 == 1;
  v4 = "YES";
  if (!v3)
  {
    v4 = "NO";
  }

  return fprintf(a2, "Anchor: (%f, %f)\tCtrlPt1: (%f, %f)\tCtrlPt2:(%f,%f), <isLinked: %s >\n", *(this + 6), *(this + 7), *(this + 4), *(this + 5), *(this + 8), *(this + 9), v4);
}

uint64_t CPSDClipboardRecord::Load(CPSDClipboardRecord *this, int a2)
{
  v9 = 0;
  v8 = 0;
  v6 = 0;
  v7 = 0;
  CPSDBaseComponent::ReadFile(a2, &v8, 4uLL, &v9);
  v8 = bswap32(v8);
  *(this + 4) = vcvtd_n_f64_u32(v8, 0x18uLL);
  CPSDBaseComponent::ReadFile(a2, &v7 + 4, 4uLL, &v9);
  HIDWORD(v7) = bswap32(HIDWORD(v7));
  *(this + 5) = vcvtd_n_f64_u32(HIDWORD(v7), 0x18uLL);
  CPSDBaseComponent::ReadFile(a2, &v7, 4uLL, &v9);
  LODWORD(v7) = bswap32(v7);
  *(this + 6) = vcvtd_n_f64_u32(v7, 0x18uLL);
  CPSDBaseComponent::ReadFile(a2, &v6 + 4, 4uLL, &v9);
  HIDWORD(v6) = bswap32(HIDWORD(v6));
  *(this + 7) = vcvtd_n_f64_u32(HIDWORD(v6), 0x18uLL);
  CPSDBaseComponent::ReadFile(a2, &v6, 4uLL, &v9);
  LODWORD(v6) = bswap32(v6);
  *(this + 8) = vcvtd_n_f64_u32(v6, 0x18uLL);
  v4 = SetFilePointer(a2, 0, 0, 1);
  SetFilePointer(a2, (v4 + 2), 0, 0);
  return 1;
}

uint64_t CPSDClipboardRecord::Save(CPSDClipboardRecord *this, File *a2)
{
  CPSDPathDataRecord::Save(this, a2);
  LODWORD(v4) = vcvtd_n_u64_f64(*(this + 4), 0x18uLL);
  (*(*a2 + 80))(a2, v4);
  LODWORD(v5) = vcvtd_n_u64_f64(*(this + 5), 0x18uLL);
  (*(*a2 + 80))(a2, v5);
  LODWORD(v6) = vcvtd_n_u64_f64(*(this + 6), 0x18uLL);
  (*(*a2 + 80))(a2, v6);
  LODWORD(v7) = vcvtd_n_u64_f64(*(this + 7), 0x18uLL);
  (*(*a2 + 80))(a2, v7);
  LODWORD(v8) = vcvtd_n_u64_f64(*(this + 8), 0x18uLL);
  (*(*a2 + 80))(a2, v8);
  v9 = *(*a2 + 56);

  return v9(a2, 4);
}

uint64_t CPSDInitialFillRecord::Load(CPSDInitialFillRecord *this, int a2)
{
  v8 = 0;
  v7 = 0;
  CPSDBaseComponent::ReadFile(a2, &v7, 2uLL, &v8);
  v4 = v7;
  v7 = __rev16(v7);
  *(this + 32) = v4 == 256;
  v5 = SetFilePointer(a2, 0, 0, 1);
  SetFilePointer(a2, (v5 + 22), 0, 0);
  return 1;
}

uint64_t CPSDInitialFillRecord::Save(CPSDInitialFillRecord *this, File *a2)
{
  CPSDPathDataRecord::Save(this, a2);
  (*(*a2 + 72))(a2, *(this + 32) != 0);
  v4 = *(*a2 + 56);

  return v4(a2, 22);
}

uint64_t CPSDAdditionalLayerInfo::Load(CPSDAdditionalLayerInfo *this, uint64_t a2)
{
  v4 = SetFilePointer(a2, 0, 0, 1);
  v5 = *(this + 4);
  if ((v5 - 1) < 0xB)
  {
    return 0;
  }

  v6 = v4;
  v8 = (this + 24);
  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v5)
  {
    v9 = v5 + v6;
    do
    {
      v23 = 0;
      v24 = 0;
      CPSDBaseComponent::ReadFile(a2, &v24, 4uLL, &v24 + 1);
      LODWORD(v24) = bswap32(v24);
      CPSDBaseComponent::ReadFile(a2, &v23 + 4, 4uLL, &v24 + 1);
      HIDWORD(v23) = bswap32(HIDWORD(v23));
      CPSDBaseComponent::ReadFile(a2, &v23, 4uLL, &v24 + 1);
      LODWORD(v23) = bswap32(v23);
      if (SHIDWORD(v23) <= 1818654769)
      {
        if (HIDWORD(v23) == 1197753964)
        {
          v10 = operator new();
          CPSDActionDescriptor::CPSDActionDescriptor(v10);
          *(v10 + 120) = 0;
          *v10 = &unk_1F00D4AC0;
          *(v10 + 128) = 0;
          goto LABEL_23;
        }

        if (HIDWORD(v23) != 1399800687)
        {
          if (HIDWORD(v23) == 1766813793)
          {
            v10 = operator new();
            *(v10 + 16) = 0;
            *(v10 + 24) = 0u;
            *(v10 + 40) = 0u;
            *v10 = &unk_1F00D5478;
            *(v10 + 56) = -1;
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        v10 = operator new();
        CPSDActionDescriptor::CPSDActionDescriptor(v10);
        *v10 = &unk_1F00D4B10;
        *(v10 + 120) = 0;
      }

      else if (SHIDWORD(v23) > 1819635304)
      {
        if (HIDWORD(v23) != 1986884459)
        {
          if (HIDWORD(v23) == 1819635305)
          {
            v10 = operator new();
            *(v10 + 16) = 0;
            *(v10 + 24) = 0u;
            *(v10 + 40) = 0u;
            *v10 = &unk_1F00D4BB0;
            *(v10 + 56) = 0;
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        v10 = operator new();
        *(v10 + 16) = 0;
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0u;
        *v10 = &unk_1F00D4528;
        *(v10 + 56) = &unk_1F00D4170;
        *(v10 + 80) = 0;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v10 + 104) = 0;
      }

      else
      {
        if (HIDWORD(v23) != 1818654770)
        {
          if (HIDWORD(v23) == 1819501428)
          {
            v10 = operator new();
            *(v10 + 16) = 0;
            *(v10 + 24) = 0u;
            *(v10 + 40) = 0u;
            *v10 = &unk_1F00D5420;
            *(v10 + 56) = 0;
            *(v10 + 64) = 0;
            goto LABEL_23;
          }

LABEL_19:
          v10 = operator new();
          *(v10 + 16) = 0;
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          *v10 = &unk_1F00D51B0;
          *(v10 + 40) = 0;
          *(v10 + 48) = 0;
          goto LABEL_23;
        }

        v10 = operator new();
        CPSDActionDescriptor::CPSDActionDescriptor(v10);
        *v10 = &unk_1F00D4B60;
        *(v10 + 120) = 0;
      }

LABEL_23:
      v11 = HIDWORD(v23);
      *(v10 + 16) = v23;
      *(v10 + 40) = v24;
      *(v10 + 44) = v11;
      CPSDResourceItem::LoadItem(v10, a2);
      v12 = *v8;
      v13 = (this + 24);
      if (*v8)
      {
        do
        {
          v14 = v12;
          v12 = *(v12 + 48);
        }

        while (v12);
        v13 = (v14 + 48);
      }

      *v13 = v10;
      v15 = SetFilePointer(a2, 0, 0, 1);
      if (v15 > v9)
      {
        _CUILog(1, "Additional Layer Info Size is Recorded Incorrectly in File: recorded size = %d, bytes read = %d.\n", v16, v17, v18, v19, v20, v21, *(this + 4));
        return 0;
      }

      if ((v23 & 3) != 0)
      {
        v15 = SetFilePointer(a2, 4 - (v23 & 3), 0, 1);
      }
    }

    while (v9 != v15);
  }

  SetFilePointer(a2, (*(this + 4) + v6), 0, 0);
  return 1;
}

uint64_t CPSDAdditionalLayerInfo::Save(uint64_t this, File *a2)
{
  for (i = *(this + 24); i; i = *(i + 6))
  {
    this = CPSDResourceItem::SaveItem(i, a2);
  }

  return this;
}

void *CPSDAdditionalLayerInfo::GetFirstItemOfTypeID(CPSDAdditionalLayerInfo *this, const std::type_info *a2)
{
  for (i = *(this + 3); i; i = i[6])
  {
    if (std::type_info::operator==[abi:ne200100](*(*i - 8), a2))
    {
      break;
    }
  }

  return i;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t CPSDAdditionalLayerInfoItem::Save(CPSDAdditionalLayerInfoItem *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 10));
  (*(*a2 + 80))(a2, *(this + 11));
  v4 = *(this + 4);
  v5 = *(*a2 + 80);

  return v5(a2, v4);
}

void CPSDLayerAndMaskInfo::CPSDLayerAndMaskInfo(CPSDLayerAndMaskInfo *this)
{
  *this = &unk_1F00D41B8;
  *(this + 4) = 0;
  *(this + 3) = &unk_1F00D4260;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = &unk_1F00D4BF8;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 33) = 0;
  bzero(this + 118, 8uLL);
  *(this + 17) = &unk_1F00D51F0;
  *(this + 38) = 0;
  *(this + 20) = 0;
}

uint64_t CPSDLayerAndMaskInfo::SkipPast(CPSDLayerAndMaskInfo *this, uint64_t a2)
{
  v9 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v9);
  *(this + 4) = bswap32(*(this + 4));
  v4 = SetFilePointer(a2, 0, 0, 1);
  v5 = *(this + 4);
  if (v5)
  {
    v6 = v4;
    v7 = *(this + 4);
    if (*(v7 + 152) < 9u)
    {
      CPSDLayerInfo::LoadLayerInfo((this + 24), a2);
      v5 = *(this + 4);
    }

    else if (*(v7 + 154) < *(v7 + 140))
    {
      *(v7 + 104) = 1;
    }

    SetFilePointer(a2, (v5 + v6), 0, 0);
  }

  return 1;
}

uint64_t CPSDLayerInfo::Load(CPSDLayerInfo *this, uint64_t a2)
{
  result = CPSDLayerInfo::LoadLayerInfo(this, a2);
  if (result)
  {
    std::vector<CPSDLayerChannelGroup *>::resize(this + 6, *(this + 10));
    v5 = 0;
    v6 = 0;
    v7 = *(this + 10);
    *(this + 10) = 0;
    do
    {
      v8 = v6;
      if (v7 == v6)
      {
        break;
      }

      v9 = operator new();
      CPSDLayerChannelGroup::CPSDLayerChannelGroup(v9, (*(this + 3) + v5));
      *(*(this + 6) + 8 * v8) = v9;
      v6 = v8 + 1;
      *(this + 10) = v8 + 1;
      v10 = *(*(this + 6) + 8 * v8);
      v5 += 488;
    }

    while ((*(*v10 + 16))(v10, a2));
    return v8 >= v7;
  }

  return result;
}

uint64_t CPSDGlobalLayerMaskInfo::Load(CPSDGlobalLayerMaskInfo *this, int a2, unsigned int a3)
{
  v6 = SetFilePointer(a2, 0, 0, 1);
  v17 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v17);
  v7 = *(this + 4);
  *(this + 4) = bswap32(v7);
  if (v7)
  {
    CPSDBaseComponent::ReadFile(a2, this + 20, 2uLL, &v17);
    *(this + 10) = bswap32(*(this + 10)) >> 16;
    CPSDBaseComponent::ReadFile(a2, this + 22, 8uLL, &v17);
    *(this + 22) = vrev16_s8(*(this + 22));
    CPSDBaseComponent::ReadFile(a2, this + 30, 2uLL, &v17);
    *(this + 15) = bswap32(*(this + 15)) >> 16;
    CPSDBaseComponent::ReadFile(a2, this + 32, 1uLL, &v17);
  }

  v8 = SetFilePointer(a2, 0, 0, 1) - v6;
  v16 = 0;
  do
  {
    v15 = -1;
    CPSDBaseComponent::ReadFile(a2, &v15, 1uLL, &v16);
    v9 = v16;
    v10 = *(this + 9) + v16;
    *(this + 9) = v10;
    v11 = v8 + v10;
  }

  while (v9 == 1 && v11 < a3 && v15 == 0);
  if (v9 == 1)
  {
    SetFilePointer(a2, -1, 0, 1);
    --*(this + 9);
  }

  return 1;
}

uint64_t CPSDLayerInfo::Save(CPSDLayerInfo *this, File *a2)
{
  result = CPSDLayerInfo::SaveLayerInfo(this, a2);
  v5 = *(this + 10);
  if (v5 == (*(this + 7) - *(this + 6)) >> 3 && v5 != 0)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 6) + 8 * v7);
      result = (*(*v8 + 24))(v8, a2);
      ++v7;
    }

    while (v7 < *(this + 10));
  }

  return result;
}

uint64_t CPSDGlobalLayerMaskInfo::Save(CPSDGlobalLayerMaskInfo *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  if (*(this + 4))
  {
    (*(*a2 + 72))(a2, *(this + 10));
    (*(*a2 + 72))(a2, *(this + 11));
    (*(*a2 + 72))(a2, *(this + 12));
    (*(*a2 + 72))(a2, *(this + 13));
    (*(*a2 + 72))(a2, *(this + 14));
    (*(*a2 + 72))(a2, *(this + 15));
    (*(*a2 + 64))(a2, *(this + 32));
  }

  v4 = *(this + 9);
  v5 = *(*a2 + 56);

  return v5(a2, v4);
}

uint64_t CPSDLayerInfo::LoadLayer(CPSDLayerInfo *this, uint64_t a2)
{
  v4 = SetFilePointer(a2, 0, 0, 1);
  if (!CPSDLayerInfo::LoadLayerInfo(this, a2))
  {
    return 0;
  }

  v5 = 1;
  v6 = SetFilePointer(a2, 0, 0, 1);
  v7 = (*(this + 4) + v4);
  if (v6 != v7)
  {
    SetFilePointer(a2, v7, 0, 0);
  }

  return v5;
}

uint64_t CPSDLayerInfo::Dump(CPSDLayerInfo *this, __sFILE *a2)
{
  result = fprintf(a2, "{ LayerInfo: %d layers [%d bytes]\n", *(this + 10), *(this + 4));
  if (*(this + 10))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CPSDLayerRecord::GetLayerName((*(this + 3) + v5), v9, 0x100u);
      {
        v7 = "Group";
      }

      else
      {
        v7 = "Layer";
      }

      fprintf(a2, "\n  ================ %s: [ %s ] ==================\n", v7, v9);
      (*(*(*(this + 3) + v5) + 40))(*(this + 3) + v5, a2);
      v8 = *(*(this + 6) + 8 * v6);
      result = (*(*v8 + 40))(v8, a2);
      ++v6;
      v5 += 488;
    }

    while (v6 < *(this + 10));
  }

  return result;
}

void CPSDChannelData::~CPSDChannelData(CPSDChannelData *this)
{
  *this = &unk_1F00D4208;
  if (*(this + 12))
  {
    v2 = *(this + 4);
    if (v2)
    {
      MEMORY[0x193AC64A0](v2, 0x1000C80BDFB0063);
    }
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
  }
}

{
  CPSDChannelData::~CPSDChannelData(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDChannelData::UnpackImageInPosition(CPSDChannelData *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  v12 = a10;
  v14 = *(this + 4);
  v13 = *(this + 5);
  v15 = *(this + 5);
  if (v15 >= a8)
  {
    v16 = a8;
  }

  else
  {
    v16 = *(this + 5);
  }

  if (v15 >= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = *(this + 5);
  }

  if (a10 >= a4)
  {
    v12 = a4;
  }

  if (v15)
  {
    v18 = (*(this + 12) / v15);
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
    if (!v17)
    {
      goto LABEL_17;
    }
  }

  do
  {
    if (*(this + 12))
    {
      v20 = *v14++;
      v19 = v20;
    }

    else
    {
      v19 = v18;
    }

    v13 += v19;
    --v17;
  }

  while (v17);
LABEL_17:
  *(this + 52) = 1;
  if (v16)
  {
    v21 = a3;
    if (v12)
    {
      v22 = v12 * a3;
    }

    else
    {
      v22 = 0;
    }

    v23 = &a2[a9 + v22];
    if (a3 >= a7)
    {
      v24 = a7;
    }

    else
    {
      v24 = a3;
    }

    do
    {
      if (*(this + 12))
      {
        v25 = *v14++;
        v18 = v25;
      }

      CPSDChannelData::UnpackRowBits(this, v13, v18, v23, v24, a5);
      v13 += v18;
      v23 += v21;
      --v16;
    }

    while (v16);
  }

  return 1;
}

uint64_t CPSDChannelData::UnpackRowBits(CPSDChannelData *this, const unsigned __int8 *a2, int a3, unsigned __int8 *__b, size_t __n, int a6)
{
  v6 = __n;
  v7 = __b;
  v8 = a2;
  if (*(this + 12))
  {
    v10 = a3;
    if (a3 && __n)
    {
      v11 = 0;
      v26 = a6;
      do
      {
        v13 = v8 + 1;
        v12 = *v8;
        if (v12 < 0)
        {
          if (v12 == -128)
          {
            --v10;
            ++v8;
            continue;
          }

          v14 = 1 - v12;
          v20 = v8[1];
          if (1 - v12 >= v6)
          {
            v21 = v6;
          }

          else
          {
            v21 = 1 - v12;
          }

          v22 = v14 + v11 - a6;
          v23 = v22 & ~(v22 >> 31);
          if (v21 >= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v21;
          }

          if (v22 >= 1)
          {
            memset(v7, v8[1], v24);
            a6 = v26;
          }

          if (*(this + 52) && v20)
          {
            *(this + 52) = 0;
          }

          v8 += 2;
          v10 -= 2;
          LODWORD(v19) = v24;
          v7 += v24;
        }

        else
        {
          v14 = v12 + 1;
          v15 = a6 - v11;
          if (v12 + 1 < v6)
          {
            v16 = v12 + 1;
          }

          else
          {
            v16 = v6;
          }

          v17 = v14 - v15;
          v18 = v17 & ~(v17 >> 31);
          if (v16 >= v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = v16;
          }

          if (v17 >= 1)
          {
            memcpy(v7, &v13[(v15 & ~(v15 >> 31))], v19);
            a6 = v26;
          }

          v8 = &v13[v14];
          v10 = v10 - 1 - v14;
          v7 += v19;
          if (*(this + 52))
          {
            *(this + 52) = 0;
          }
        }

        v6 -= v19;
        v11 += v14;
      }

      while (v10 && v6);
    }
  }

  else
  {
    memcpy(__b, &a2[a6], __n);
    if (*(this + 52))
    {
      *(this + 52) = 0;
    }
  }

  return 1;
}

BOOL CPSDChannelData::Load(CPSDChannelData *this, uint64_t a2, int a3, int a4)
{
  v14 = 0;
  *(this + 4) = a3;
  *(this + 5) = a4;
  CPSDBaseComponent::ReadFile(a2, this + 24, 2uLL, &v14);
  v6 = v14;
  v7 = bswap32(*(this + 12)) >> 16;
  *(this + 12) = v7;
  if (v7)
  {
    if (v7 != 1)
    {
      printf("Error - Unhandled compression type.  We currently handle 'Run Length Encoding' and 'no compression' only.");
      return 0;
    }

    v8 = operator new[]();
    *(this + 4) = v8;
    CPSDBaseComponent::ReadFile(a2, v8, (2 * *(this + 5)), &v14);
    v6 += v14;
    v9 = *(this + 5);
    if (v9)
    {
      LODWORD(v10) = 0;
      v11 = *(this + 4);
      do
      {
        v12 = bswap32(*v11);
        *v11++ = HIWORD(v12);
        v10 = v10 + HIWORD(v12);
        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = (*(this + 4) - 2);
  }

  (*(*this + 56))(this, a2, v10);
  return v10 + v6 == *(this + 4);
}

uint64_t CPSDChannelData::Save(CPSDChannelData *this, File *a2)
{
  (*(*a2 + 72))(a2, *(this + 12));
  if (*(this + 12) && *(this + 5))
  {
    v4 = 0;
    do
    {
      (*(*a2 + 72))(a2, *(*(this + 4) + 2 * v4++));
    }

    while (v4 < *(this + 5));
  }

  v5 = *(*this + 64);

  return v5(this, a2);
}

uint64_t CPSDChannelData::LoadChannelData(uint64_t this, int a2, int a3)
{
  v3 = this;
  *(this + 48) = a3;
  if (a3)
  {
    v6 = 0;
    v5 = operator new[]();
    *(v3 + 40) = v5;
    this = CPSDBaseComponent::ReadFile(a2, v5, *(v3 + 48), &v6);
    if (v6 != *(v3 + 48))
    {
      CPSDChannelData::LoadChannelData();
    }
  }

  else
  {
    *(this + 40) = 0;
  }

  return this;
}

uint64_t CPSDChannelData::SaveChannelData(uint64_t this, File *a2)
{
  if (*(this + 48))
  {
    return (*(*a2 + 48))(a2, *(this + 40));
  }

  return this;
}

BOOL CPSDLayerChannelGroup::Load(CPSDLayerChannelGroup *this, uint64_t a2)
{
  if (!*(this + 6))
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(this + 2);
    v8 = *(v7 + 40) + v4;
    v9 = *(v8 + 16);
    if (v9 == 65533)
    {
      v10 = *(v7 + 128);
      v11 = *(v7 + 120);
    }

    else if (v9 == 65534)
    {
      v10 = *(v7 + 108);
      v11 = *(v7 + 100);
    }

    else
    {
      v10 = *(v7 + 24);
      v11 = *(v7 + 16);
    }

    v12 = (*(*(*(this + 4) + v5) + 48))(*(this + 4) + v5, a2, *(v8 + 20), (v10 - v11));
    result = v12 != 0;
    if (!v12)
    {
      break;
    }

    ++v6;
    v5 += 56;
    v4 += 24;
  }

  while (v6 < *(this + 6));
  return result;
}

uint64_t CPSDLayerChannelGroup::Save(uint64_t this, File *a2)
{
  if (*(this + 24))
  {
    v3 = this;
    v4 = 0;
    v5 = 0;
    do
    {
      this = (*(*(*(v3 + 32) + v4) + 24))(*(v3 + 32) + v4, a2);
      ++v5;
      v4 += 56;
    }

    while (v5 < *(v3 + 24));
  }

  return this;
}

void CPSDLayerInfo::~CPSDLayerInfo(CPSDLayerInfo *this)
{
  *this = &unk_1F00D4260;
  v4 = this + 48;
  v2 = *(this + 6);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = *(this + 6);
        v3 = *(this + 7);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v7 = (this + 24);
  std::vector<CPSDLayerRecord>::__destroy_vector::operator()[abi:ne200100](&v7);
}

{
  CPSDLayerInfo::~CPSDLayerInfo(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDLayerInfo::LoadLayerInfo(CPSDLayerInfo *this, uint64_t a2)
{
  v6 = *(this + 3);
  v4 = *(this + 4);
  v5 = (this + 24);
  if (v4 != v6)
  {
    v7 = v4 - 61;
    v8 = v4 - 61;
    do
    {
      (**v8)(v8);
      v7 -= 61;
      v9 = v8 == v6;
      v8 -= 61;
    }

    while (!v9);
  }

  v18 = 0;
  *(this + 4) = v6;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v18);
  v10 = *(this + 4);
  *(this + 4) = bswap32(v10);
  if (!v10)
  {
    return 1;
  }

  v17 = 0;
  CPSDBaseComponent::ReadFile(a2, &v17, 2uLL, &v18);
  v11 = v17;
  v12 = bswap32(v17) >> 16;
  v17 = __rev16(v17);
  if (v12 < 0)
  {
    v12 = -v12;
    *(this + 10) = v12;
    v13 = (this + 20);
    *(*(this + 1) + 104) = 1;
  }

  else
  {
    *(this + 10) = v12;
    v13 = (this + 20);
    if (!v11)
    {
      return 1;
    }
  }

  std::vector<CPSDLayerRecord>::resize(v5, v12);
  if (!*v13)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    (*(*(*(this + 3) + v14) + 32))(*(this + 3) + v14, *(this + 1));
    result = (*(*(*(this + 3) + v14) + 16))(*(this + 3) + v14, a2);
    if (!result)
    {
      break;
    }

    ++v15;
    v14 += 488;
    if (v15 >= *v13)
    {
      return 1;
    }
  }

  return result;
}

CPSDLayerRecord *std::vector<CPSDLayerRecord>::resize(CPSDLayerRecord *result, unint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  v4 = 0x4FBCDA3AC10C9715 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<CPSDLayerRecord>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 488 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 488;
      v9 = (v3 - 488);
      do
      {
        result = (**v9)(v9);
        v8 -= 488;
        v10 = v9 == v7;
        v9 -= 61;
      }

      while (!v10);
    }

    *(v2 + 1) = v7;
  }

  return result;
}

uint64_t CPSDLayerInfo::SaveLayerInfo(CPSDLayerInfo *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  if (*(*(this + 1) + 104))
  {
    v4 = -*(this + 10);
  }

  else
  {
    LOWORD(v4) = *(this + 10);
  }

  result = (*(*a2 + 72))(a2, v4);
  v6 = *(this + 10);
  if (0x4FBCDA3AC10C9715 * ((*(this + 4) - *(this + 3)) >> 3) == v6 && v6 != 0)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      result = (*(*(*(this + 3) + v8) + 24))(*(this + 3) + v8, a2);
      ++v9;
      v8 += 488;
    }

    while (v9 < *(this + 10));
  }

  return result;
}

void CPSDLayerInfo::CreateImageAtLayer(CPSDLayerInfo *this, unsigned int a2)
{
  if (*(this + 10) >= a2)
  {
    if (CPSDFile::IsTaggedWithICCProfile(*(this + 1)))
    {
      v4 = CPSDImageResources::LookupResourceWithResID((*(this + 1) + 192), 1039);
      v5 = (*(*v4 + 56))(v4);
      v6 = (*(*v4 + 48))(v4);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = operator new();
    CPSDLayerImage::CPSDLayerImage(v7, (*(this + 3) + 488 * a2), *(*(this + 6) + 8 * a2), *(*(this + 1) + 154), *(*(this + 1) + 152), v6, v5);
  }
}