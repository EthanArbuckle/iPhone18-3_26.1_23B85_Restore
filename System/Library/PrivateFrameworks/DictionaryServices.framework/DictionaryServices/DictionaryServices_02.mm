CFBundleRef CreateDictionaryBundleFromComponentURL(const __CFURL *a1)
{
  PathComponent = CFURLCopyLastPathComponent(a1);
  if (CFStringCompare(PathComponent, @"/", 0))
  {
    v3 = a1;
    while (1)
    {
      v4 = CFStringCompare(PathComponent, @"Contents", 0);
      CFRelease(PathComponent);
      v5 = CFURLCreateCopyDeletingLastPathComponent(0, v3);
      if (v4 == kCFCompareEqualTo)
      {
        break;
      }

      if (v3 != a1)
      {
        CFRelease(v3);
      }

      PathComponent = CFURLCopyLastPathComponent(v5);
      v3 = v5;
      if (CFStringCompare(PathComponent, @"/", 0) == kCFCompareEqualTo)
      {
        v6 = 0;
        v3 = v5;
        goto LABEL_10;
      }
    }

    v6 = CFBundleCreate(0, v5);
    PathComponent = v5;
  }

  else
  {
    v6 = 0;
    v3 = a1;
  }

LABEL_10:
  CFRelease(PathComponent);
  if (v3 != a1)
  {
    CFRelease(v3);
  }

  return v6;
}

DIR *DeleteDirectoryAtPath(const std::__fs::filesystem::path *a1)
{
  memset(&v10, 0, sizeof(v10));
  if (lstat(a1, &v10) < 0)
  {
    return 0;
  }

  if ((v10.st_mode & 0xF000) != 0x4000)
  {
    return !remove(a1, v2);
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = strlen(a1);
    v6 = malloc_type_malloc(v5 + 256, 0x100004077774924uLL);
    strlcpy(v6, a1, v5 + 256);
    v7 = strlen(a1);
    *&v6[v7] = 47;
    v8 = &v6[v7 + 1];
    while (1)
    {
      v9 = readdir(v4);
      if (!v9)
      {
        break;
      }

      if (v9->d_name[0] != 46 || v9->d_name[1] && (v9->d_name[1] != 46 || v9->d_name[2]))
      {
        strlcpy(v8, v9->d_name, 0x100uLL);
        if (!DeleteDirectoryAtPath(v6))
        {
          free(v6);
          closedir(v4);
          return 0;
        }
      }
    }

    free(v6);
    closedir(v4);
    return (rmdir(a1) >= 0);
  }

  return result;
}

DIR *DeleteDirectoryAtURL(const __CFURL *a1)
{
  FileSystemPath = CreateFileSystemPath(a1);
  v2 = DeleteDirectoryAtPath(FileSystemPath);
  free(FileSystemPath);
  return v2;
}

uint64_t (*GetPreConfiguredGetDataSizeFunction(int a1, uint64_t a2, int a3, void *a4))(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = _GetDataSize_8bit;
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v5 = a3 == 0;
        v6 = _GetDataSize_16bitBigEndian;
        v4 = _GetDataSize_16bitLittleEndian;
        break;
      case 4:
        v5 = a3 == 0;
        v6 = _GetDataSize_32bitBigEndian;
        v4 = _GetDataSize_32bitLittleEndian;
        break;
      case 8:
        v5 = a3 == 0;
        v6 = _GetDataSize_64bitBigEndian;
        v4 = _GetDataSize_64bitLittleEndian;
        break;
      default:
        return _GetDataSize_Invalid;
    }

    if (!v5)
    {
      return v6;
    }

    return v4;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return v4;
    }

    return _GetDataSize_Invalid;
  }

  v4 = _GetDataSize_FixedLength;
  if (a4)
  {
    *a4 = a2;
    return _GetDataSize_FixedLength;
  }

  return v4;
}

_DWORD *CreateSizeBytesEmbededData(const void *a1, size_t a2, unsigned int a3, int a4, size_t *a5)
{
  if (a3)
  {
    v10 = a2 + a3;
    v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
    memcpy(v11 + a3, a1, a2);
    *a5 = v10;
    EmbedSizeBytesToBuffer(v11, a2, a3, a4);
    return v11;
  }

  else
  {
    *a5 = a2;
  }

  return a1;
}

_DWORD *EmbedSizeBytesToBuffer(_DWORD *result, unint64_t a2, int a3, int a4)
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (a4)
      {
        *result = bswap32(a2);
      }

      else
      {
        *result = a2;
      }
    }

    else if (a3 == 8)
    {
      if (a4)
      {
        *result = bswap64(a2);
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (a3 == 1)
  {
    *result = a2;
  }

  else if (a3 == 2)
  {
    if (a4)
    {
      *result = bswap32(a2) >> 16;
    }

    else
    {
      *result = a2;
    }
  }

  return result;
}

void AppendFieldDataToData(__CFData *a1, const __CFString *cf, int a3, int a4, int a5)
{
  v10 = CFGetTypeID(cf);
  if (v10 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      if (a3 == 8)
      {
        valuePtr = 0.0;
        CFNumberGetValue(cf, kCFNumberFloat64Type, &valuePtr);
        v23 = valuePtr;
        v24 = bswap64(valuePtr);
        if (a5)
        {
          v23 = v24;
        }

        valuePtr = v23;
        v13 = a1;
        v14 = 8;
      }

      else
      {
        if (a3 != 4)
        {
          return;
        }

        LODWORD(valuePtr) = 0;
        CFNumberGetValue(cf, kCFNumberFloat32Type, &valuePtr);
        v11 = *&valuePtr;
        v12 = bswap32(*&valuePtr);
        if (a5)
        {
          v11 = v12;
        }

        *&valuePtr = v11;
        v13 = a1;
        v14 = 4;
      }

      CFDataAppendBytes(v13, &valuePtr, v14);
    }

    else
    {
      valuePtr = 0.0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
      AppendNumberToData(a1, *&valuePtr, a3, a5);
    }
  }

  else
  {
    v15 = CFGetTypeID(cf);
    if (v15 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(cf);
      v17 = 2 * Length;
      valuePtr = 0.0;
      if (!a4)
      {
        AppendNumberToData(a1, v17, a3, a5);
      }

      if (a5)
      {
        v18 = 268435712;
      }

      else
      {
        v18 = 335544576;
      }

      v19 = malloc_type_malloc(v17, 0x100004077774924uLL);
      v27.location = 0;
      v27.length = Length;
      CFStringGetBytes(cf, v27, v18, 0, 0, v19, v17, &valuePtr);
      CFDataAppendBytes(a1, v19, *&valuePtr);
      free(v19);
    }

    else
    {
      v20 = CFGetTypeID(cf);
      if (v20 == CFDataGetTypeID())
      {
        v21 = CFDataGetLength(cf);
        if (!a4)
        {
          AppendNumberToData(a1, v21, a3, a5);
        }

        BytePtr = CFDataGetBytePtr(cf);

        CFDataAppendBytes(a1, BytePtr, v21);
      }
    }
  }
}

void AppendNumberToData(__CFData *a1, unint64_t a2, int a3, int a4)
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v8 = bswap32(a2);
      if (!a4)
      {
        v8 = a2;
      }

      *bytes = v8;
      v5 = bytes;
      v6 = 4;
    }

    else
    {
      if (a3 != 8)
      {
        return;
      }

      v7 = bswap64(a2);
      if (!a4)
      {
        v7 = a2;
      }

      v9 = v7;
      v5 = &v9;
      v6 = 8;
    }
  }

  else if (a3 == 1)
  {
    v12 = a2;
    v5 = &v12;
    v6 = 1;
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v4 = bswap32(a2) >> 16;
    if (!a4)
    {
      LOWORD(v4) = a2;
    }

    v11 = v4;
    v5 = &v11;
    v6 = 2;
  }

  CFDataAppendBytes(a1, v5, v6);
}

void WriteLogFile(CFStringRef format, ...)
{
  va_start(va, format);
  v16 = *MEMORY[0x277D85DE8];
  v1 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (v1)
  {
    v2 = v1;
    v3 = CFDateFormatterCreate(0, 0, kCFDateFormatterShortStyle, kCFDateFormatterMediumStyle);
    Current = CFAbsoluteTimeGetCurrent();
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v3, Current);
    v6 = getpid();
    v7 = CFStringCreateWithFormat(0, 0, @"%@ [%d] %@\n", StringWithAbsoluteTime, v6, v2);
    CFRelease(v2);
    CFRelease(v3);
    CFRelease(StringWithAbsoluteTime);
    if (v7)
    {
      v8 = CFCopyHomeDirectoryURLForUser();
      v9 = CFURLCreateCopyAppendingPathComponent(0, v8, @"Library/Logs/IndexedSearchLog.txt", 0);
      v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
      CFStringGetCString(v10, buffer, 512, 0x8000100u);
      CFRelease(v8);
      CFRelease(v9);
      CFRelease(v10);
      v11 = open(buffer, 522, 438);
      if (v11 != -1)
      {
        v12 = v11;
        CFStringGetCString(v7, buffer, 512, 0x8000100u);
        v13 = strlen(buffer);
        write(v12, buffer, v13);
        close(v12);
      }

      CFRelease(v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void HeapAccessContext::HeapAccessContext(HeapAccessContext *this, IDXIndexInfo *a2)
{
  v4 = IDXAccessContext::IDXAccessContext(this, a2);
  *v4 = &unk_282F96470;
  *(v4 + 24) = 0;
  *(this + 32) = IDXIndexInfo::fixedDataSize(*(v4 + 8)) != 0;
  *(this + 33) = IDXIndexInfo::writable(*(this + 1));
  *(this + 34) = IDXIndexInfo::bigEndian(a2);
  v5 = IDXIndexInfo::dataSizeLength(a2);
  v6 = IDXIndexInfo::fixedDataSize(a2);
  v7 = IDXIndexInfo::bigEndian(a2);
  DataSizeFunction = GetPreConfiguredGetDataSizeFunction(v5, v6, v7, this + 17);
  *(this + 18) = 0;
  *(this + 16) = DataSizeFunction;
  v9 = IDXIndexInfo::optionalProperty(a2, @"HeapDataCompressionType");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberSInt16Type, this + 36);
  }

  v10 = *(this + 18);
  *(this + 35) = *(this + 18) != 0;
  *(this + 38) = v10 > 3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  if ((v10 & 0xFFFE) == 2)
  {
    *(this + 11) = *(this + 16);
    v11 = IDXIndexInfo::dataSizeLength(a2);
    v12 = GetPreConfiguredGetDataSizeFunction((v11 << (v11 < 4)), 0, *(this + 34), 0);
    v13 = 0x2000;
    if (*(this + 18) == 2)
    {
      v13 = 0x8000;
    }

    *(this + 8) = v13;
    *(this + 16) = v12;
    v14 = IDXIndexInfo::optionalProperty(a2, @"HeapDataCompressionBlockSize");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberCFIndexType, this + 64);
    }

    if (*(this + 18) == 2)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = 0xFFFFLL;
    }

    valuePtr = v15;
    v16 = IDXIndexInfo::optionalProperty(a2, @"HeapDataCompressionMaxBlockCount");
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberLongLongType, &valuePtr);
      v15 = valuePtr;
    }

    if (*(this + 18) == 2)
    {
      v17 = 64;
    }

    else
    {
      v17 = 32;
    }

    v18 = vcvtpd_s64_f64(log2(v15));
    v19 = v17 - v18;
    *(this + 12) = 0;
    v20 = v18 - 1;
    if (v18 < 1)
    {
      v30 = 0;
    }

    else
    {
      v21 = (v18 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v22 = xmmword_21E5D1B80;
      v23 = vdupq_n_s64(v20);
      v24 = 0uLL;
      v25 = vdupq_n_s64(1uLL);
      v26 = vdupq_n_s64(2uLL);
      do
      {
        v27 = v22;
        v28 = v24;
        v24 = vorrq_s8(v24, vshlq_u64(v25, v22));
        v22 = vaddq_s64(v22, v26);
        v21 -= 2;
      }

      while (v21);
      v29 = vbslq_s8(vcgtq_u64(v27, v23), v28, v24);
      *v29.i8 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
      *(this + 12) = v29.i64[0];
      v30 = v29.i64[0];
    }

    *(this + 14) = 0;
    if (v19 >= 1)
    {
      v31 = (v19 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v32 = xmmword_21E5D1B80;
      v33 = vdupq_n_s64(v19 - 1);
      v34 = 0uLL;
      v35 = vdupq_n_s64(1uLL);
      v36 = vdupq_n_s64(2uLL);
      do
      {
        v37 = v32;
        v38 = v34;
        v34 = vorrq_s8(v34, vshlq_u64(v35, v32));
        v32 = vaddq_s64(v32, v36);
        v31 -= 2;
      }

      while (v31);
      v39 = vbslq_s8(vcgtq_u64(v37, v33), v38, v34);
      *(this + 14) = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
    }

    *(this + 13) = v30 << v19;
    *(this + 120) = v19;
  }

  *(this + 121) = 0;
}

void HeapAccessContext::~HeapAccessContext(HeapAccessContext *this)
{
  *this = &unk_282F96470;
  v2 = *(this + 6);
  if (v2)
  {
    free(v2);
  }

  IDXAccessContext::~IDXAccessContext(this);
}

{
  HeapAccessContext::~HeapAccessContext(this);

  JUMPOUT(0x223D5E5E0);
}

uint64_t HeapAccessContext::getDataPtrByID(HeapAccessContext *this, unint64_t a2, uint64_t *a3)
{
  v4 = *(this + 18);
  if ((v4 & 0xFFFE) == 2)
  {
    a2 = (*(this + 13) & a2) >> *(this + 120);
  }

  v5 = *(this + 3);
  if (v4 == 3 || (*(this + 32) & 1) != 0)
  {
    v7 = *(v5 + 16) + (a2 - 1) * *(v5 + 36) + 8;
  }

  else
  {
    v6 = (*(v5 + 16) + a2);
    if (!*v6)
    {
      v9 = 0;
      v8 = 0;
      if (!a3)
      {
        return v9;
      }

      goto LABEL_9;
    }

    v7 = (v6 + 1);
  }

  v11 = 0;
  v8 = (*(this + 16))(*(this + 17), v7, &v11);
  v9 = v7 + v11;
  if (a3)
  {
LABEL_9:
    *a3 = v8;
  }

  return v9;
}

uint64_t HeapAccessContext::getDataByID(HeapAccessContext *this, uint64_t a2, int64_t a3, unsigned __int8 *a4)
{
  v6 = a2;
  sourceLen = 0;
  v8 = (*(*this + 48))(this, a2, &sourceLen);
  v19 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if ((*(this + 121) & 1) != 0 || *(this + 35) == 1)
  {
    v10 = (*(this + 16))(0, v8, &v19);
    v11 = sourceLen - v19;
    sourceLen = v11;
    v9 += v19;
  }

  else
  {
    v11 = sourceLen;
    v10 = sourceLen;
  }

  v12 = *(this + 18);
  if ((v12 & 0xFFFE) == 2)
  {
    if (v10 > *(this + 7))
    {
      v13 = *(this + 6);
      if (v13)
      {
        free(v13);
      }

      *(this + 6) = malloc_type_malloc(v10, 0x100004077774924uLL);
      *(this + 7) = v10;
    }

    if (v9 != *(this + 9))
    {
      destLen = v10;
      uncompress(*(this + 6), &destLen, v9, sourceLen);
      *(this + 9) = v9;
    }

    v14 = *(this + 6) + (v6 & *(this + 28));
    v15 = (*(this + 11))(0, v14, &v19);
    sourceLen = v15;
    v9 = (v14 + v19);
    if (*(this + 121) == 1)
    {
      v10 = (*(this + 11))(0, v9, &v19);
      v11 = sourceLen - v19;
      sourceLen = v11;
      v9 += v19;
    }

    else
    {
      v11 = v15;
      v10 = v15;
    }

    v12 = *(this + 18);
  }

  if (v12 == 1)
  {
    if (v10 <= a3)
    {
      destLen = a3;
      uncompress(a4, &destLen, v9, v11);
    }
  }

  else if (a4)
  {
    if (v10 <= a3 && v11 <= a3)
    {
      memcpy(a4, v9, v11);
    }
  }

  if (*(this + 121) == 1 && v10 <= a3)
  {
    free(v9);
  }

  if (!a4)
  {
LABEL_36:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      HeapAccessContext::getDataByID(&sourceLen, v10, a3);
    }

    return 0;
  }

  if (v10 > a3)
  {
    if (v10 >= 268435457)
    {
      goto LABEL_36;
    }
  }

  else if (sourceLen > a3 || v10 > 0x10000000)
  {
    goto LABEL_36;
  }

  return v10;
}

BOOL HeapAccessContext::addRecord(HeapAccessContext *this, const unsigned __int16 *a2, uint64_t a3, unsigned __int8 *a4, size_t a5, unint64_t *a6)
{
  __len = a5;
  if (*(this + 33) != 1)
  {
    return 0;
  }

  v77 = 0;
  v76 = 0;
  (*(this + 16))(*(this + 17), &v77, &v76);
  if ((*(this + 18) & 0xFFFE) != 2)
  {
    if (*(this + 35) == 1)
    {
      CompressedData = HeapAccessContext::createCompressedData(this, a4, __len, v76, *(this + 121), &__len);
    }

    else
    {
      if (*(this + 121))
      {
        v18 = 0;
        goto LABEL_30;
      }

      CompressedData = CreateSizeBytesEmbededData(a4, __len, v76, *(this + 34), &__len);
    }

    v18 = CompressedData;
LABEL_30:
    v30 = *(this + 3);
    v31 = __len;
    if (*(this + 32) != 1)
    {
      v20 = vsheap_add_record(*(this + 3), v18, __len);
      goto LABEL_98;
    }

    v32 = *(v30 + 36);
    if (__len)
    {
      if (v32)
      {
        if (__len != v32)
        {
          goto LABEL_66;
        }
      }

      else
      {
        *(v30 + 36) = __len;
        LODWORD(v32) = v31;
      }
    }

    else if (!v32)
    {
      goto LABEL_66;
    }

    v47 = *(v30 + 16);
    if (v47)
    {
      v48 = *(v30 + 24);
      if (v48 >= (*(v30 + 32) + v32))
      {
        goto LABEL_64;
      }

      v49 = v48 + (v32 << 10);
    }

    else
    {
      v49 = (v32 << 10) | 8u;
    }

    v50 = *(v30 + 8);
    v47 = (*v30)();
    if (!v47)
    {
LABEL_66:
      v20 = 0;
      goto LABEL_98;
    }

    *(v30 + 16) = v47;
    *(v30 + 24) = v49;
LABEL_64:
    v51 = *(v30 + 32);
    if (v51)
    {
      v52 = *(v30 + 36);
    }

    else
    {
      *(v30 + 32) = 8;
      *v47 = 8;
      v52 = *(v30 + 36);
      v47[1] = v52;
      v51 = *(v30 + 32);
    }

    v69 = *(v30 + 40);
    memcpy(v47 + v51, v18, v52);
    v70 = *(v30 + 32) + *(v30 + 36);
    *(v30 + 32) = v70;
    **(v30 + 16) = v70;
    ++*(v30 + 40);
    v20 = v69 + 1;
    goto LABEL_98;
  }

  v75 = 0;
  (*(this + 11))(0, &v77, &v75);
  v10 = 0;
  if ((*(this + 121) & 1) == 0)
  {
    v10 = CreateSizeBytesEmbededData(a4, __len, v75, *(this + 34), &__len);
  }

  v11 = *(this + 10);
  if (!v11)
  {
    goto LABEL_10;
  }

  v74 = 0;
  v12 = (*(*this + 48))(this, v11, &v74);
  v13 = (*(this + 16))(0, v12, &v76);
  v14 = v76;
  v74 -= v76;
  if (v13 >= *(this + 14))
  {
    goto LABEL_10;
  }

  v15 = v13;
  sourceLen = __len + v13;
  v16 = malloc_type_malloc(__len + v13, 0x100004077774924uLL);
  destLen = sourceLen;
  uncompress(v16, &destLen, (v12 + v14), v74);
  memmove(&v16[v15], v10, __len);
  v17 = HeapAccessContext::createCompressedData(this, v16, sourceLen, v76, 0, &sourceLen);
  v18 = v17;
  if (*(this + 18) != 2 && sourceLen > *(this + 8))
  {
    free(v17);
    free(v16);
LABEL_10:
    v18 = HeapAccessContext::createCompressedData(this, v10, __len, v76, 0, &__len);
    if (v10 != a4)
    {
      free(v10);
    }

    v15 = 0;
    goto LABEL_13;
  }

  if (v10 != a4)
  {
    free(v10);
  }

  __len = sourceLen;
  free(v16);
  v33 = *(this + 3);
  v34 = *(this + 10) >> *(this + 120);
  if (*(this + 18) == 2)
  {
    v35 = *(v33 + 36);
    if (v34 < v35)
    {
      v36 = *(v33 + 16);
      v37 = (v36 + v34);
      v38 = *(v36 + v34);
      if (v38)
      {
        if (v34 + v38 + 4 == v35)
        {
          v39 = v35 - v38 - 4;
          *(v33 + 36) = v39;
          *v36 = v39;
          if (*(v33 + 32) >= 1)
          {
            v40 = *(v33 + 48) - 1;
            *(v33 + 48) = v40;
            v36[5] = v40;
          }
        }

        else
        {
          *v37 = 0;
          if (v38 >= 4 && *(v33 + 32) >= 1)
          {
            v37[1] = v38;
            if (v38 >= 0x20 && v34 > *(v33 + 40))
            {
              v71 = *(v33 + 44);
              if (!v71 || v34 < v71)
              {
                *(v33 + 44) = v34;
                v36[4] = v34;
              }
            }
          }
        }
      }
    }
  }

  else if (*(v33 + 40) == v34)
  {
    *(v33 + 40) = v34 - 1;
    v53 = *(v33 + 32) - *(v33 + 36);
    *(v33 + 32) = v53;
    **(v33 + 16) = v53;
  }

LABEL_13:
  if (*(this + 18) == 2)
  {
    v19 = vsheap_add_record(*(this + 3), v18, __len) << *(this + 120);
    v20 = v19 + v15;
    if (__len >= *(this + 8))
    {
      v19 = 0;
    }

    *(this + 10) = v19;
    goto LABEL_98;
  }

  v23 = *(this + 8);
  v24 = __len / v23;
  if (__len % v23)
  {
    ++v24;
  }

  v25 = v24 * v23;
  v26 = malloc_type_calloc(1uLL, v24 * v23, 0x100004077774924uLL);
  memmove(v26, v18, __len);
  free(v18);
  v27 = *(this + 3);
  v28 = *(this + 8);
  v29 = *(v27 + 36);
  if (v28)
  {
    if (v29)
    {
      if (v28 != v29)
      {
        goto LABEL_74;
      }
    }

    else
    {
      *(v27 + 36) = v28;
      LODWORD(v29) = v28;
    }
  }

  else if (!v29)
  {
    goto LABEL_74;
  }

  v41 = *(v27 + 16);
  if (v41)
  {
    v42 = *(v27 + 24);
    if (v42 >= (*(v27 + 32) + v29))
    {
      goto LABEL_55;
    }

    v43 = v42 + (v29 << 10);
  }

  else
  {
    v43 = (v29 << 10) | 8u;
  }

  v44 = *(v27 + 8);
  v41 = (*v27)();
  if (!v41)
  {
LABEL_74:
    v20 = 0;
    v25 = 0;
    *(this + 10) = 0;
    goto LABEL_75;
  }

  *(v27 + 16) = v41;
  *(v27 + 24) = v43;
LABEL_55:
  v45 = *(v27 + 32);
  if (v45)
  {
    v46 = *(v27 + 36);
  }

  else
  {
    *(v27 + 32) = 8;
    *v41 = 8;
    v46 = *(v27 + 36);
    v41[1] = v46;
    v45 = *(v27 + 32);
  }

  v54 = *(v27 + 40);
  memcpy(v41 + v45, v26, v46);
  v55 = *(v27 + 32) + *(v27 + 36);
  *(v27 + 32) = v55;
  **(v27 + 16) = v55;
  ++*(v27 + 40);
  *(this + 10) = v54 + 1;
  if (v54 >= *(this + 12))
  {
    if (v54 != -1)
    {
      fprintf(*MEMORY[0x277D85DF8], "Failed to add a new data since record count exceeds limit (%lld) defined in the current compaction-type.\n", *(this + 12));
    }

    goto LABEL_74;
  }

  v56 = (v54 + 1) << *(this + 120);
  *(this + 10) = v56;
  v20 = v56 + v15;
LABEL_75:
  v57 = *(this + 8);
  v58 = v25 - v57;
  if (v25 != v57)
  {
    v59 = v26;
    do
    {
      v59 += v57;
      v60 = *(this + 3);
      v61 = *(v60 + 36);
      if (v57)
      {
        if (v61)
        {
          if (v57 != v61)
          {
            goto LABEL_94;
          }
        }

        else
        {
          *(v60 + 36) = v57;
          LODWORD(v61) = v57;
        }
      }

      else if (!v61)
      {
        goto LABEL_94;
      }

      v62 = *(v60 + 16);
      if (v62)
      {
        v63 = *(v60 + 24);
        if (v63 >= (*(v60 + 32) + v61))
        {
          goto LABEL_90;
        }

        v64 = v63 + (v61 << 10);
      }

      else
      {
        v64 = (v61 << 10) | 8u;
      }

      v65 = *(v60 + 8);
      v62 = (*v60)();
      if (v62)
      {
        *(v60 + 16) = v62;
        *(v60 + 24) = v64;
LABEL_90:
        v66 = *(v60 + 32);
        if (v66)
        {
          v67 = *(v60 + 36);
        }

        else
        {
          *(v60 + 32) = 8;
          *v62 = 8;
          v67 = *(v60 + 36);
          v62[1] = v67;
          v66 = *(v60 + 32);
        }

        memcpy(v62 + v66, v59, v67);
        v68 = *(v60 + 32) + *(v60 + 36);
        *(v60 + 32) = v68;
        **(v60 + 16) = v68;
        ++*(v60 + 40);
      }

LABEL_94:
      *(this + 10) = 0;
      v57 = *(this + 8);
      v58 -= v57;
    }

    while (v58);
  }

  v18 = v26;
LABEL_98:
  if ((*(this + 35) & 1) != 0 || (*(this + 121) & 1) != 0 || __len != a5)
  {
    free(v18);
  }

  if (a6)
  {
    *a6 = v20;
  }

  return v20 != 0;
}

Bytef *HeapAccessContext::createCompressedData(HeapAccessContext *this, const unsigned __int8 *a2, uLong sourceLen, unsigned int a4, int a5, uint64_t *a6)
{
  v12 = 2 * a4;
  v13 = a4;
  destLen = compressBound(sourceLen) + v12;
  v14 = malloc_type_malloc(destLen, 0x100004077774924uLL);
  compress2(&v14[2 * a4], &destLen, a2, sourceLen, 9);
  if (a5)
  {
    v15 = malloc_type_malloc(v12, 0x100004077774924uLL);
    free(v14);
    destLen = 0;
    v14 = v15;
  }

  EmbedSizeBytesToBuffer(&v14[v13], sourceLen, a4, *(this + 34));
  EmbedSizeBytesToBuffer(v14, destLen + v13, a4, *(this + 34));
  if (a6)
  {
    *a6 = destLen + v12;
  }

  return v14;
}

unint64_t vsheap_add_record(uint64_t a1, void *__src, size_t __n)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    if (__n + 4 + *(a1 + 36) <= v7)
    {
      goto LABEL_11;
    }

    v8 = (__n + 4) << 10;
    if (v8 >= __n + 262148)
    {
      v8 = __n + 262148;
    }

    v9 = v7 + v8;
  }

  else
  {
    v10 = (__n << 10) + 4096;
    if (v10 >= __n + 262148)
    {
      v10 = __n + 262148;
    }

    v9 = v10 + 32;
  }

  v11 = *(a1 + 8);
  v6 = (*a1)();
  if (!v6)
  {
    return 0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = v9;
LABEL_11:
  if (*(a1 + 36))
  {
    v12 = *(a1 + 44);
    if (v12)
    {
      v13 = *(a1 + 40);
      if (v12 < v13)
      {
        *(a1 + 44) = v13;
        v12 = v13;
      }

      v14 = 0;
      v15 = __n + 4;
      v16 = v12;
      while (1)
      {
        v17 = *(a1 + 36);
        if (v16 >= v17)
        {
LABEL_47:
          if (v14)
          {
            v6 = *(a1 + 16);
            *(v6 + 16) = *(a1 + 44);
          }

          else
          {
            *(a1 + 44) = 0;
            v6 = *(a1 + 16);
            *(v6 + 16) = 0;
          }

          break;
        }

        v18 = *(a1 + 16);
        while (1)
        {
          v19 = *(v18 + v16);
          if (!v19)
          {
            break;
          }

          v16 += v19 + 4;
          if (v16 >= v17)
          {
            goto LABEL_47;
          }
        }

        v20 = (v18 + v16);
        v21 = (v18 + v16 + 4);
        v22 = *v21;
        v23 = *v21;
        v24 = (v21 + v22);
        v25 = v18 + v17;
        if (v21 + v22 >= v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            if (*v24)
            {
              break;
            }

            v27 = v24[1];
            v24 = (v24 + v27 + 4);
            v23 += v27 + 4;
            ++v26;
          }

          while (v24 < v25);
          v22 = v23;
        }

        if (v22 != __n && __n + 8 >= v22)
        {
          v30 = 0;
          if (v14)
          {
            goto LABEL_41;
          }
        }

        else
        {
          *(a1 + 48) -= v26;
          *v20 = __n;
          memcpy(v21, __src, __n);
          if (v22 > __n)
          {
            v29 = (v20 + v15);
            v23 -= v15;
            *v29 = 0;
            v29[1] = v23;
            ++*(a1 + 48);
          }

          v30 = v16;
          if (v14)
          {
            goto LABEL_41;
          }
        }

        if (v23 <= 0x1F && v30 == 0)
        {
          v14 = 0;
          goto LABEL_42;
        }

        *(a1 + 44) = v16;
LABEL_41:
        v14 = 1;
LABEL_42:
        v32 = v23 + 4;
        if (v30)
        {
          v32 = 0;
        }

        v16 += v32;
        if (v30)
        {
          v41 = *(a1 + 16);
          v41[4] = *(a1 + 44);
          goto LABEL_53;
        }
      }
    }
  }

  else
  {
    *(a1 + 32) = 0x2000000001;
    *(a1 + 40) = 32;
    *v6 = 32;
    *(v6 + 8) = -*(a1 + 32);
    *(v6 + 12) = *(a1 + 40);
    *(v6 + 16) = *(a1 + 44);
    *(v6 + 20) = *(a1 + 48);
    *(v6 + 24) = -1;
  }

  v30 = *(a1 + 36);
  ++*(a1 + 48);
  *(v6 + v30) = __n;
  v33 = (*(a1 + 36) + 4);
  *(a1 + 36) = v33;
  memcpy((*(a1 + 16) + v33), __src, __n);
  v34 = *(a1 + 36) + __n;
  *(a1 + 36) = v34;
  v41 = *(a1 + 16);
  *v41 = v34;
LABEL_53:
  if (*(a1 + 32) >= 1)
  {
    v35 = *(a1 + 48);
    if (v35 >= 0x1389)
    {
      v36 = *(a1 + 40);
      v37 = 500;
      do
      {
        v38 = (v41 + v36);
        v39 = *v38;
        if (!*v38)
        {
          v39 = v38[1];
        }

        v36 += v39 + 4;
        *(a1 + 40) = v36;
        --v37;
      }

      while (v37);
      v41[3] = v36;
      v35 = 4501;
      *(a1 + 48) = 4501;
    }

    v41[5] = v35;
  }

  return v30;
}

uint64_t HeapAccessContext::deleteRecord(HeapAccessContext *this, const unsigned __int16 *a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5, unint64_t a6)
{
  if (*(this + 33) != 1 || (*(this + 18) & 0xFFFE) == 2)
  {
    return 0;
  }

  v7 = *(this + 3);
  if (*(this + 32) != 1)
  {
    v10 = *(v7 + 36);
    if (v10 > a6)
    {
      v11 = *(v7 + 16);
      v12 = (v11 + a6);
      v13 = *(v11 + a6);
      if (v13)
      {
        if (a6 + v13 + 4 == v10)
        {
          v14 = v10 - v13 - 4;
          *(v7 + 36) = v14;
          *v11 = v14;
          if (*(v7 + 32) >= 1)
          {
            v15 = *(v7 + 48) - 1;
            *(v7 + 48) = v15;
            v11[5] = v15;
          }
        }

        else
        {
          *v12 = 0;
          if (v13 >= 4 && *(v7 + 32) >= 1)
          {
            v12[1] = v13;
            if (v13 >= 0x20 && *(v7 + 40) < a6)
            {
              v18 = *(v7 + 44);
              if (!v18 || v18 > a6)
              {
                *(v7 + 44) = a6;
                v11[4] = a6;
              }
            }
          }
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = *(v7 + 40);
  if (v8 < a6)
  {
    return 0;
  }

  if (v8 == a6)
  {
    *(v7 + 40) = a6 - 1;
    v9 = *(v7 + 32) - *(v7 + 36);
    *(v7 + 32) = v9;
    **(v7 + 16) = v9;
  }

  return 1;
}

BOOL HeapAccessContext::buildWithRecords(HeapAccessContext *this, const __CFArray *a2, CFArrayRef theArray, unint64_t *a4)
{
  v5 = theArray;
  Count = CFArrayGetCount(theArray);
  v8 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
  v9 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
  if (*(this + 33) != 1)
  {
    return 0;
  }

  v10 = v9;
  v119 = a4;
  v120 = Count;
  if (*(this + 32) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    Length = CFDataGetLength(ValueAtIndex);
    v13 = Length;
    if (Count < 1)
    {
      v16 = *(this + 3);
      *(v16 + 36) = Length;
      v17 = (v16 + 36);
      if (!Count)
      {
        v18 = 1;
        goto LABEL_136;
      }
    }

    else
    {
      for (i = 0; i != Count; ++i)
      {
        v15 = CFArrayGetValueAtIndex(v5, i);
        v8[i] = CFDataGetBytePtr(v15);
      }

      v16 = *(this + 3);
      *(v16 + 36) = v13;
      v17 = (v16 + 36);
    }

    v58 = v8;
    v59 = v10;
    v60 = v10;
    v61 = v120;
    while (1)
    {
      v62 = *v17;
      if (*v17)
      {
        v63 = *v8;
        v64 = *(v16 + 16);
        if (v64)
        {
          v65 = *(v16 + 32);
          v66 = *(v16 + 24);
          if (v66 >= v65 + v62)
          {
            goto LABEL_70;
          }

          v67 = v66 + (v62 << 10);
        }

        else
        {
          v67 = (v62 << 10) | 8u;
        }

        v68 = *(v16 + 8);
        v64 = (*v16)();
        if (v64)
        {
          *(v16 + 16) = v64;
          *(v16 + 24) = v67;
          v65 = *(v16 + 32);
LABEL_70:
          if (v65)
          {
            v69 = *v17;
          }

          else
          {
            *(v16 + 32) = 8;
            *v64 = 8;
            v69 = *v17;
            v64[1] = v69;
            v65 = *(v16 + 32);
          }

          v71 = *(v16 + 40);
          memcpy(v64 + v65, v63, v69);
          v72 = *(v16 + 32) + *v17;
          *(v16 + 32) = v72;
          **(v16 + 16) = v72;
          ++*(v16 + 40);
          v70 = v71 + 1;
          goto LABEL_75;
        }
      }

      v70 = 0;
LABEL_75:
      *v60++ = v70;
      ++v8;
      if (!--v61)
      {
        v73 = 1;
        v18 = 1;
        v8 = v58;
        v10 = v59;
        a4 = v119;
        Count = v120;
        goto LABEL_130;
      }
    }
  }

  v116 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
  v125 = 0;
  v124 = 0;
  v123 = 0;
  (*(this + 16))(*(this + 17), &v124, &v123);
  if ((*(this + 18) & 0xFFFE) != 2)
  {
    if (Count < 1)
    {
      if (!Count)
      {
        v47 = 0;
        goto LABEL_115;
      }
    }

    else
    {
      for (j = 0; j != Count; ++j)
      {
        v50 = CFArrayGetValueAtIndex(v5, j);
        v51 = v50;
        if (*(this + 35) == 1)
        {
          BytePtr = CFDataGetBytePtr(v50);
          v53 = CFDataGetLength(v51);
          SizeBytesEmbededData = HeapAccessContext::createCompressedData(this, BytePtr, v53, v123, *(this + 121), &v125);
        }

        else
        {
          v55 = *(this + 121);
          v56 = CFDataGetBytePtr(v50);
          v57 = CFDataGetLength(v51);
          if (v55)
          {
            SizeBytesEmbededData = 0;
          }

          else
          {
            SizeBytesEmbededData = CreateSizeBytesEmbededData(v56, v57, v123, *(this + 34), &v125);
          }
        }

        v8[j] = SizeBytesEmbededData;
        v116[j] = v125;
      }
    }

    v74 = *(this + 3);
    v75 = v8;
    v76 = v116;
    v77 = v10;
    v78 = Count;
    do
    {
      v79 = *v76++;
      v80 = vsheap_add_record(v74, *v75, v79);
      *v77 = v80;
      if (!v80)
      {
        v47 = -1;
        goto LABEL_86;
      }

      ++v77;
      ++v75;
      --v78;
    }

    while (v78);
    v47 = 0;
LABEL_86:
    if (Count >= 1)
    {
      v81 = v8;
      v82 = Count;
      do
      {
        v83 = *v81++;
        free(v83);
        --v82;
      }

      while (v82);
    }

LABEL_115:
    v73 = 1;
    goto LABEL_129;
  }

  Mutable = CFDataCreateMutable(0, 0);
  v122 = 0;
  v121 = 0;
  (*(this + 11))(0, &v124, &v121);
  v117 = Count - 1;
  if (Count < 1)
  {
    CFRelease(Mutable);
    if (*(this + 18) != 2)
    {
      *(*(this + 3) + 36) = *(this + 8);
    }

    v47 = 0;
    a4 = v119;
    v73 = v119 == 0;
    goto LABEL_129;
  }

  v113 = v10;
  v114 = v8;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v118 = v5;
  do
  {
    v23 = 0;
    v115 = v22;
    v24 = v22;
    while (1)
    {
      v25 = CFArrayGetValueAtIndex(v5, v24);
      v26 = *(this + 121);
      v27 = CFDataGetBytePtr(v25);
      v28 = CFDataGetLength(v25);
      if (v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = CreateSizeBytesEmbededData(v27, v28, v121, *(this + 34), &v125);
      }

      if (v119)
      {
        v30 = v21 << *(this + 120);
        v119[v24] = v30 + CFDataGetLength(Mutable);
      }

      CFDataAppendBytes(Mutable, v29, v125);
      if (CFDataGetBytePtr(v25) != v29)
      {
        free(v29);
      }

      v31 = CFDataGetBytePtr(Mutable);
      v32 = CFDataGetLength(Mutable);
      v33 = HeapAccessContext::createCompressedData(this, v31, v32, v123, 0, &v122);
      v34 = v33;
      v35 = v122;
      v36 = *(this + 8);
      v5 = v118;
      if (v122 > v36 || v117 == v24)
      {
        break;
      }

      v20 = v122;
      if (v23)
      {
        free(v23);
        v20 = v122;
      }

      ++v24;
      v23 = v34;
      Count = v120;
      if (v24 >= v120)
      {
        v37 = 0;
        v22 = v115;
        goto LABEL_48;
      }
    }

    if (*(this + 18) == 2 || v122 <= v36 || !v23)
    {
      if (v23)
      {
        free(v23);
        v35 = v122;
      }

      v22 = v24 + 1;
      v20 = v35;
      v23 = v34;
    }

    else
    {
      free(v33);
      v22 = v24;
    }

    if (*(this + 18) == 2)
    {
      v37 = 0;
      v114[v21] = v34;
      v116[v21++] = v122;
    }

    else
    {
      if (v20 < 1)
      {
        v37 = 0;
      }

      else
      {
        v38 = v22;
        v39 = *(this + 8);
        v40 = v21 + 1;
        v41 = &v114[v21];
        v42 = v23;
        while (1)
        {
          v21 = v40;
          v43 = malloc_type_calloc(1uLL, v39, 0x100004077774924uLL);
          v44 = v43;
          v45 = v20 >= *(this + 8) ? *(this + 8) : v20;
          memmove(v43, v42, v45);
          *v41 = v44;
          if (v21 > *(this + 12))
          {
            break;
          }

          v39 = *(this + 8);
          v42 += v39;
          v40 = v21 + 1;
          ++v41;
          v46 = v20 <= v39;
          v20 -= v39;
          if (v46)
          {
            v37 = 0;
            goto LABEL_45;
          }
        }

        fprintf(*MEMORY[0x277D85DF8], "Record count exceeds limit (%lld).\n", *(this + 12));
        v37 = 1;
LABEL_45:
        v22 = v38;
      }

      free(v23);
    }

    Count = v120;
    CFDataSetLength(Mutable, 0);
LABEL_48:
    ;
  }

  while (v22 < Count && !v37);
  CFRelease(Mutable);
  if (v37)
  {
    v47 = -1;
    v48 = 1;
    goto LABEL_119;
  }

  v84 = *(this + 3);
  if (*(this + 18) == 2)
  {
    if (v21)
    {
      v86 = v113;
      v85 = v114;
      v87 = v116;
      v88 = v21;
      while (1)
      {
        v89 = *v87++;
        v90 = vsheap_add_record(v84, *v85, v89);
        *v86 = v90;
        v48 = v90 == 0;
        if (!v90)
        {
          break;
        }

        ++v86;
        ++v85;
        if (!--v88)
        {
          goto LABEL_113;
        }
      }

      v47 = -1;
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  *(v84 + 36) = *(this + 8);
  if (!v21)
  {
LABEL_116:
    v47 = 0;
    v48 = 0;
    v37 = 0;
    v8 = v114;
    a4 = v119;
    goto LABEL_122;
  }

  v92 = v113;
  v91 = v114;
  v93 = v21;
  do
  {
    v94 = *(v84 + 36);
    if (!v94)
    {
LABEL_108:
      v102 = 0;
      goto LABEL_111;
    }

    v95 = *v91;
    v96 = *(v84 + 16);
    if (v96)
    {
      v97 = *(v84 + 32);
      v98 = *(v84 + 24);
      if (v98 >= v97 + v94)
      {
        goto LABEL_106;
      }

      v99 = v98 + (v94 << 10);
    }

    else
    {
      v99 = (v94 << 10) | 8u;
    }

    v100 = *(v84 + 8);
    v96 = (*v84)();
    if (!v96)
    {
      goto LABEL_108;
    }

    *(v84 + 16) = v96;
    *(v84 + 24) = v99;
    v97 = *(v84 + 32);
LABEL_106:
    if (v97)
    {
      v101 = *(v84 + 36);
    }

    else
    {
      *(v84 + 32) = 8;
      *v96 = 8;
      v101 = *(v84 + 36);
      v96[1] = v101;
      v97 = *(v84 + 32);
    }

    v103 = *(v84 + 40);
    memcpy(v96 + v97, v95, v101);
    v104 = *(v84 + 32) + *(v84 + 36);
    *(v84 + 32) = v104;
    **(v84 + 16) = v104;
    ++*(v84 + 40);
    v102 = v103 + 1;
LABEL_111:
    *v92++ = v102;
    ++v91;
    --v93;
  }

  while (v93);
  v48 = 0;
LABEL_113:
  v47 = 0;
LABEL_118:
  Count = v120;
LABEL_119:
  v8 = v114;
  a4 = v119;
  if (v21 >= 1)
  {
    v105 = v114;
    do
    {
      v106 = *v105++;
      free(v106);
      --v21;
    }

    while (v21);
  }

LABEL_122:
  if (a4)
  {
    v73 = v48 | v37;
  }

  else
  {
    v73 = 1;
  }

  v10 = v113;
  if ((v73 & 1) == 0)
  {
    v107 = *(this + 120);
    v108 = a4;
    v109 = Count;
    do
    {
      *v108 = (*(this + 14) & *v108) + (v113[((*(this + 13) & *v108) >> v107)] << v107);
      ++v108;
      --v109;
    }

    while (v109);
    v73 = 0;
  }

LABEL_129:
  free(v116);
  v18 = v47 == 0;
LABEL_130:
  if (a4 && v73 && Count >= 1 && v18)
  {
    v110 = v10;
    do
    {
      v111 = *v110++;
      *a4++ = v111;
      --Count;
    }

    while (Count);
  }

LABEL_136:
  free(v10);
  free(v8);
  return v18;
}

uint64_t HeapAccessContext::compact(uint64_t this)
{
  if ((*(this + 32) & 1) != 0 || *(this + 36) == 3)
  {
    v1 = *(this + 24);
    v2 = *(v1 + 32);
    if (*(v1 + 24) > v2)
    {
      this = (*v1)(*(v1 + 16), *(v1 + 32), *(v1 + 8));
      if (this)
      {
        *(v1 + 16) = this;
        *(v1 + 24) = v2;
      }
    }
  }

  return this;
}

void HeapAccessContext::finalizeSubclass(HeapAccessContext *this, int a2)
{
  if (a2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = v3[2];
      free(v3);
      unmapIndexFile((v4 - 64), *(*(this + 5) + 16));
      free(**(this + 5));
      v5 = *(this + 5);

      free(v5);
    }
  }
}

uint64_t HeapAccessContext::supportDataPtr(HeapAccessContext *this)
{
  if (*(this + 35))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 121) ^ 1;
  }

  return v1 & 1;
}

uint64_t (**OUTLINED_FUNCTION_0(uint64_t (**result)(char *a1, uint64_t a2, const char **a3)))(char *a1, uint64_t a2, const char **a3)
{
  *result = myReallocator;
  result[1] = v1;
  result[2] = v3;
  result[3] = v2;
  return result;
}

void TrieAccessContext::TrieAccessContext(TrieAccessContext *this, IDXIndexInfo *a2)
{
  v4 = IDXAccessContext::IDXAccessContext(this, a2);
  *v4 = &unk_282F96508;
  *(v4 + 104) = 0;
  *(v4 + 136) = 0;
  *(v4 + 160) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 40) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  pthread_mutex_init((v4 + 184), 0);
  *(this + 72) = IDXIndexInfo::writable(a2);
  v5 = IDXIndexInfo::bigEndian(a2);
  *(this + 37) = 0;
  *(this + 73) = v5;
  v6 = IDXIndexInfo::optionalProperty(a2, @"TrieIndexCompressionType");
  if (v6)
  {
    CFNumberGetValue(v6, kCFNumberSInt16Type, this + 74);
  }

  v7 = IDXIndexInfo::dataSizeLength(a2);
  v8 = IDXIndexInfo::fixedDataSize(a2);
  v9 = IDXIndexInfo::bigEndian(a2);
  *(this + 21) = GetPreConfiguredGetDataSizeFunction(v7, v8, v9, this + 22);
}

void TrieAccessContext::~TrieAccessContext(TrieAccessContext *this)
{
  *this = &unk_282F96508;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x223D5E5B0](v2, 0x1000C80BDFB0063);
  }

  v3 = *(this + 17);
  if (v3)
  {
    MEMORY[0x223D5E5B0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x223D5E5B0](v4, 0x1000C8077774924);
  }

  pthread_mutex_destroy((this + 184));

  IDXAccessContext::~IDXAccessContext(this);
}

{
  TrieAccessContext::~TrieAccessContext(this);

  JUMPOUT(0x223D5E5E0);
}

uint64_t TrieAccessContext::setSearchCharacters(CFStringRef *this, const unsigned __int16 *__src, uint64_t a3, CFStringRef theString1)
{
  if (this[13] == theString1)
  {
    goto LABEL_14;
  }

  if (CFStringCompare(theString1, @"IDXExactMatch", 0))
  {
    if (CFStringCompare(theString1, @"IDXCommonPrefixMatch", 0))
    {
      if (CFStringCompare(theString1, @"IDXPrefixMatch", 0) == kCFCompareEqualTo)
      {
LABEL_12:
        v9 = 1;
        goto LABEL_13;
      }

      if (CFStringCompare(theString1, @"IDXWildcardMatch", 0))
      {
        if (CFStringCompare(theString1, @"IDXAllMatch", 0))
        {
          return 0;
        }

        __src = 0;
        a3 = 0;
        goto LABEL_12;
      }

      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  *(this + 28) = v9;
  this[13] = theString1;
LABEL_14:
  if (a3 > this[11])
  {
    this[11] = (a3 + 128);
    v10 = this[10];
    if (v10)
    {
      MEMORY[0x223D5E5B0](v10, 0x1000C80BDFB0063);
      v11 = this[11];
    }

    operator new[]();
  }

  this[12] = (2 * a3);
  if (__src && a3 >= 1)
  {
    v12 = this[10];
    if (*(this + 73))
    {
      do
      {
        v13 = *__src++;
        LOWORD(v12->isa) = bswap32(v13) >> 16;
        v12 = (v12 + 2);
        --a3;
      }

      while (a3);
    }

    else
    {
      memcpy(v12, __src, 2 * a3);
    }
  }

  *(this + 116) = 0;
  this[15] = 0;
  result = 1;
  this[20] = 0;
  return result;
}

uint64_t TrieAccessContext::supportDataPtr(TrieAccessContext *this)
{
  result = TrieAccessContext::keyDataHeapContext(this);
  if (result)
  {
    v2 = *(*result + 64);

    return v2();
  }

  return result;
}

uint64_t TrieAccessContext::keyDataHeapContext(TrieAccessContext *this)
{
  result = *(this + 5);
  if (!result)
  {
    pthread_mutex_lock((this + 184));
    if (!*(this + 5))
    {
      operator new();
    }

    pthread_mutex_unlock((this + 184));
    return *(this + 5);
  }

  return result;
}

uint64_t TrieAccessContext::getMatchDataCommon(uint64_t this, uint64_t a2, const unsigned __int8 **a3, uint64_t *a4, _BOOL4 a5, CFRange *a6, unsigned __int8 *a7, unsigned __int8 *a8, uint64_t *a9)
{
  v9 = a7;
  v10 = a6;
  v14 = this;
  v57[1] = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = a8;
  if (*(this + 96))
  {
    v15 = *(this + 80);
  }

  else
  {
    v15 = 0;
  }

  v16 = a9;
  v17 = *(this + 160);
  v53 = a3;
  if (v17)
  {
    this = TrieAccessContext::processHomographData(this, v17, 0, *(this + 144), *(this + 152), a2, a3, a4, a5, a6, a7, &v55, &v54);
    v18 = this;
    a2 -= this;
    v19 = v54;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  if (a2 >= 1 && !v19)
  {
    if (*(v14 + 116))
    {
      v19 = 0;
      goto LABEL_11;
    }

    v49 = a4;
    v50 = a5;
    *(v14 + 112);
    MEMORY[0x28223BE20](this);
    v23 = (&v49 - v22);
    v24 = 0;
    v25 = *(v14 + 112);
    v51 = v26;
    v52 = a9;
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        if (v25 == 3)
        {
          if (*(v14 + 74) == 1)
          {
            matched = btrie_wildcard_match_search(*(v14 + 24), v15, *(v14 + 96), 2u, *(v14 + 120), a2, v23, v21);
            goto LABEL_39;
          }

          if (!*(v14 + 74))
          {
            matched = trie_wildcard_match_search(*(v14 + 24), v15, *(v14 + 96), *(v14 + 73) ^ 1u, 2u, *(v14 + 120), a2, v23);
            goto LABEL_39;
          }

          goto LABEL_33;
        }

LABEL_49:
        v19 = 0;
        v38 = 0;
        do
        {
          v39 = v10;
          v40 = v9;
          if (v38 <= v24)
          {
            v41 = v24;
          }

          else
          {
            v41 = v38;
          }

          v42 = v38;
          do
          {
            if (v41 == v42)
            {
              v38 = v41;
              goto LABEL_65;
            }

            v38 = v42 + 1;
            HeapData = TrieAccessContext::getHeapData(v14, v23[v42], 0);
            v42 = v38;
          }

          while (!HeapData);
          if (*(v14 + 73) == 1)
          {
            v44 = bswap32(*HeapData);
          }

          else
          {
            v44 = *HeapData;
          }

          v9 = v40;
          v10 = v39;
          v45 = TrieAccessContext::processHomographData(v14, HeapData, 4, v44, 0, a2, &v53[v18], &v49[v18], v50, &v39[v18], v9, &v55, &v54);
          a2 -= v45;
          v18 += v45;
          v19 = v54;
          if (a2)
          {
            v46 = v54 < 1;
          }

          else
          {
            v46 = 0;
          }
        }

        while (v46);
LABEL_65:
        *(v14 + 116) &= v38 == v24;
        *(v14 + 120) += v38;
        v16 = v52;
        if (!v52)
        {
          goto LABEL_66;
        }

        goto LABEL_12;
      }

      v31 = *(v14 + 120);
      v23 = *(v14 + 136);
      if (v31)
      {
        v23 += v31;
        v24 = *(v14 + 128) - v31;
      }

      else
      {
        if (*(v14 + 74) == 1)
        {
          v36 = *(v14 + 24);
          v37 = *(v14 + 96);
          v57[0] = 0;
          __btrie_find_common_prefix(v36, *v36, v15, v37, v37, v57, v23, 0, v21, v15);
          v24 = v57[0];
        }

        else if (*(v14 + 74))
        {
          v24 = 0;
        }

        else
        {
          v24 = trie_common_prefix_search(*(v14 + 24), v15, *(v14 + 96), *(v14 + 96), *(v14 + 136), 0);
        }

        *(v14 + 128) = v24;
      }
    }

    else
    {
      if (v25)
      {
        if (v25 == 1)
        {
          if (*(v14 + 74) == 1)
          {
            v32 = *(v14 + 24);
            v33 = *(v14 + 96);
            v34 = *(v14 + 120);
            v56 = 0;
            v57[0] = v34;
            __btrie_find_prefix(v32, *v32, v15, v33, v57, a2, &v56, v23, v21);
            v24 = v56;
            goto LABEL_40;
          }

          if (!*(v14 + 74))
          {
            matched = trie_prefix_match_search(*(v14 + 24), v15, *(v14 + 96), *(v14 + 120), a2, v23);
LABEL_39:
            v24 = matched;
            goto LABEL_40;
          }

LABEL_33:
          v24 = 0;
LABEL_40:
          v35 = v24 < a2;
LABEL_48:
          *(v14 + 116) = v35;
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      v28 = *(v14 + 24);
      v29 = *(v14 + 96);
      if (*(v14 + 74) == 1)
      {
        v30 = btrie_exact_match_search(v28, v15, v29, v21);
      }

      else if (*(v14 + 74))
      {
        v30 = mtrie_exact_match_search(v28, v15, v29);
      }

      else
      {
        v30 = trie_exact_match_search(v28, v15, v29);
      }

      *v23 = v30;
      v24 = v30 > 0;
    }

    v35 = 1;
    goto LABEL_48;
  }

LABEL_11:
  if (!a9)
  {
    goto LABEL_66;
  }

LABEL_12:
  if (*(v14 + 116) == 1)
  {
    v20 = *(v14 + 160);
    if (!v20)
    {
      goto LABEL_16;
    }
  }

  if (!v18)
  {
    v20 = v19 + 16;
LABEL_16:
    *v16 = v20;
  }

LABEL_66:
  v47 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t TrieAccessContext::getMatchData(TrieAccessContext *this, uint64_t a2, uint64_t a3, CFRange *a4, CFRange **a5, uint64_t *a6)
{
  *a5 = a4;
  if (a6)
  {
    *a6 = a3;
  }

  if (!a2)
  {
    a2 = 1000;
  }

  return TrieAccessContext::getMatchDataCommon(this, a2, 0, 0, 1, a4, a4, a4 + a3, a6);
}

uint64_t TrieAccessContext::processHomographData(TrieAccessContext *this, const unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, const unsigned __int8 **a7, uint64_t *a8, BOOL a9, CFRange *a10, unsigned __int8 *a11, unsigned __int8 **a12, uint64_t *a13)
{
  v14 = a3;
  v15 = this;
  v16 = 0;
  v17 = &a2[a3];
  *(this + 20) = 0;
  v18 = a4;
  while (1)
  {
    v30 = 0;
    v19 = (*(v15 + 21))(*(v15 + 22), v17, &v30);
    v20 = v19;
    if (a9)
    {
      break;
    }

    a8[v16] = v19;
    v23 = v30;
    a7[v16++] = &v17[v30];
    v14 += v19 + v23;
    v17 = &a2[v14];
    ++a5;
    if (v16 == a6)
    {
      v16 = a6;
      goto LABEL_13;
    }

LABEL_7:
    if (a5 == v18)
    {
      return v16;
    }
  }

  v21 = &(*a12)[-v19];
  if (&a10[v16 + 1] > v21)
  {
    *a13 = v20;
    v17 = &a2[v14 + v30 + v20];
    ++a5;
    goto LABEL_12;
  }

  *a12 = v21;
  memmove(v21, &v17[v30], v20);
  v22 = &a10[v16];
  v22->location = *a12 - a11;
  v22->length = v20;
  v14 += v20 + v30;
  v17 = &a2[v14];
  ++a5;
  if (v16 + 1 != a6)
  {
    ++v16;
    v15 = this;
    goto LABEL_7;
  }

  v16 = a6;
LABEL_12:
  v15 = this;
LABEL_13:
  if (a5 < v18)
  {
    *(v15 + 19) = a5;
    *(v15 + 20) = v17;
    *(v15 + 18) = v18;
  }

  return v16;
}

uint64_t trie_exact_match_search(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a1 + 24) < 2uLL)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  if (a3)
  {
    v5 = 1;
    while (1)
    {
      v6 = *a2++;
      v7 = *(v4 + 8 * v5) + v6 + 1;
      if (*(v4 + 8 * v7 + 4) != v5)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = v7;
      if (!--a3)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = 1;
LABEL_10:
  v8 = (v4 + 8 * *(v4 + 8 * v7));
  result = 0xFFFFFFFFLL;
  if (v8[1] == v7)
  {
    v9 = *v8;
    if (v9 < 0)
    {
      return -v9;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t btrie_exact_match_search(uint64_t a1, unsigned __int8 *__s2, unsigned int a3, uint8x8_t a4)
{
  v6 = a1;
  while (1)
  {
    v7 = *v6;
    v8 = *v6 & 3;
    if ((v7 & 3) == 3)
    {
      v9 = (*(a1 + 8) + v7 - 3);
      if (!a3)
      {
        return *v9;
      }

      v6 = &v9[4 * *__s2 + 4];
      goto LABEL_13;
    }

    if (v8 != 2)
    {
      break;
    }

    v9 = (*(a1 + 8) + v7 - 2);
    if (!a3)
    {
      return *v9;
    }

    v10 = *__s2;
    v11 = (v9 + 4);
    v12 = v10 >> 5;
    v13 = *&v9[4 * (v10 >> 5) + 4];
    if (((v13 >> v10) & 1) == 0)
    {
      return 0;
    }

    if (v10 >= 0x20)
    {
      v14 = 0;
      do
      {
        v15 = *v11++;
        a4 = vcnt_s8(v15);
        a4.i16[0] = vaddlv_u8(a4);
        v14 += a4.i32[0];
        --v12;
      }

      while (v12);
    }

    else
    {
      v14 = 0;
    }

    a4.i32[0] = v13 & ~(-1 << (v10 & 0x1F));
    a4 = vcnt_s8(a4);
    a4.i16[0] = vaddlv_u8(a4);
    v6 = &v9[4 * (v14 + a4.i32[0]) + 40];
LABEL_13:
    --a3;
    ++__s2;
  }

  if (!v8)
  {
    return v8;
  }

  v16 = (*(a1 + 16) + v7 - 1);
  if (!a3)
  {
    v9 = (v16 + 1);
    return *v9;
  }

  v17 = *v16;
  if (v17 >= 5)
  {
    v18 = v16 + v17;
    v19 = (v16 + 2);
    while (1)
    {
      v22 = *v19;
      v20 = v19 + 1;
      v21 = v22;
      v23 = v22 - a3;
      v24 = v22 >= a3 ? a3 : v21;
      v25 = memcmp(v20, __s2, v24);
      v26 = v25 ? v25 : v23;
      if ((v26 & 0x80000000) == 0)
      {
        break;
      }

      v27 = &v20[v21];
      v19 = &v20[v21 + 4];
      if (v27 >= v18)
      {
        return 0;
      }
    }

    if (!v26)
    {
      v9 = &v20[v21];
      return *v9;
    }
  }

  return 0;
}

unint64_t trie_prefix_match_search(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = 0;
  v12 = a4;
  if (*(a1 + 24) < 2uLL)
  {
    return 0;
  }

  v7 = 1;
  if (a2 && a3)
  {
    v8 = *(a1 + 8);
    v9 = 1;
    do
    {
      v10 = *a2++;
      v7 = *(v8 + 8 * v9) + v10 + 1;
      if (*(v8 + 8 * v7 + 4) != v9)
      {
        return 0;
      }

      v9 = v7;
    }

    while (--a3);
  }

  __search_node_tree(a1, a5, &v12, &v11, a6, v7);
  return v11;
}

unint64_t trie_wildcard_match_search(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = 0;
  v11 = a6;
  v10 = 0;
  if (*(a1 + 24) >= 2uLL)
  {
    __wildcard_match_str(a1, a7, &v11, &v10, a8, 1, a2, a3, a4, a5);
    return v10;
  }

  return v8;
}

unint64_t btrie_wildcard_match_search(unsigned int *a1, _BYTE *a2, int a3, unsigned int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint8x8_t a8)
{
  v14 = a5;
  v11 = *a1;
  v13 = 0;
  __btrie_wildcard_match(a1, v11, &v13, a2, a3, a4, &v14, a6, a8, a7, 0, 0);
  return v13;
}

uint64_t trie_common_prefix_search(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 24) < 2uLL || a3 == 0)
  {
    return 0;
  }

  result = 0;
  v9 = 0;
  v10 = *(a1 + 8);
  v11 = 1;
  do
  {
    v12 = v11;
    v11 = *(v10 + 8 * v11) + *(a2 + v9) + 1;
    v13 = (v10 + 8 * v11);
    if (v13[1] != v12)
    {
      break;
    }

    v14 = (v10 + 8 * *v13);
    if (v14[1] == v11)
    {
      v15 = *v14;
      if (v15 < 0)
      {
        if (a4)
        {
          *(a5 + 4 * result) = -v15;
          if (a6)
          {
            *(a6 + 8 * result) = v9 + 1;
          }

          if (++result >= a4)
          {
            return result;
          }
        }

        else
        {
          ++result;
        }
      }
    }

    ++v9;
  }

  while (a3 != v9);
  return result;
}

uint64_t TrieAccessContext::getHeapData(TrieAccessContext *this, uint64_t a2, uint64_t *a3)
{
  result = TrieAccessContext::keyDataHeapContext(this);
  if (result)
  {
    v7 = result;
    if ((*(*result + 64))(result))
    {
      v8 = *(*v7 + 48);

      return v8(v7, a2, a3);
    }

    else
    {
      v9 = *(this + 6);
      if (!v9)
      {
        *(this + 7) = 0x8000;
        operator new[]();
      }

      v10 = (*(*v7 + 56))(v7, a2, *(this + 7), v9);
      if (v10 > *(this + 7))
      {
        v11 = *(this + 6);
        if (v11)
        {
          MEMORY[0x223D5E5B0](v11, 0x1000C8077774924);
        }

        *(this + 7) = v10;
        operator new[]();
      }

      if (a3)
      {
        *a3 = v10;
      }

      return *(this + 6);
    }
  }

  return result;
}

uint64_t TrieAccessContext::containsMatchData(uint64_t this, unsigned __int8 *a2, uint8x8_t a3)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 80);
  v4 = *(this + 96);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  v7 = this;
  v8 = *(this + 112);
  if (a2 && v8 == 2)
  {
    if (v4 < 2)
    {
      goto LABEL_27;
    }

    bzero(a2, v4 >> 1);
    v8 = *(v7 + 112);
  }

  this = 0;
  if (v8 <= 1)
  {
    if (!v8)
    {
      v23 = *(v7 + 24);
      if (*(v7 + 74) == 1)
      {
        v43 = *(v7 + 24);
        while (1)
        {
          v44 = *v43;
          switch(v44 & 3)
          {
            case 3:
              v45 = (v23[1] + (v44 - 3));
              if (!v4)
              {
                goto LABEL_84;
              }

              v43 = &v45[4 * *v3 + 4];
              break;
            case 2:
              v45 = (v23[1] + (v44 - 2));
              if (!v4)
              {
                goto LABEL_84;
              }

              v46 = *v3;
              v47 = (v45 + 4);
              v48 = v46 >> 5;
              v49 = *&v45[4 * (v46 >> 5) + 4];
              if (((v49 >> v46) & 1) == 0)
              {
                goto LABEL_6;
              }

              if (v46 >= 0x20)
              {
                v50 = 0;
                do
                {
                  v51 = *v47++;
                  a3 = vcnt_s8(v51);
                  a3.i16[0] = vaddlv_u8(a3);
                  v50 += a3.i32[0];
                  --v48;
                }

                while (v48);
              }

              else
              {
                v50 = 0;
              }

              a3.i32[0] = v49 & ~(-1 << (v46 & 0x1F));
              a3 = vcnt_s8(a3);
              a3.i16[0] = vaddlv_u8(a3);
              v43 = &v45[4 * (v50 + a3.i32[0]) + 40];
              break;
            case 0:
              goto LABEL_6;
            default:
              v52 = (v23[2] + (v44 - 1));
              if (!v4)
              {
                v45 = (v52 + 1);
LABEL_84:
                v42 = *v45 == 0;
                goto LABEL_85;
              }

              v53 = *v52;
              if (v53 >= 5)
              {
                v54 = v52 + v53;
                v55 = (v52 + 2);
                while (1)
                {
                  v58 = *v55;
                  v56 = v55 + 1;
                  v57 = v58;
                  v59 = v58 - v4;
                  v60 = v58 >= v4 ? v4 : v57;
                  v61 = memcmp(v56, v3, v60);
                  v62 = v61 ? v61 : v59;
                  if ((v62 & 0x80000000) == 0)
                  {
                    break;
                  }

                  this = 0;
                  v63 = &v56[v57];
                  v55 = &v56[v57 + 4];
                  if (v63 >= v54)
                  {
                    goto LABEL_88;
                  }
                }

                if (!v62)
                {
                  v45 = &v56[v57];
                  goto LABEL_84;
                }
              }

LABEL_6:
              this = 0;
              goto LABEL_88;
          }

          LODWORD(v4) = v4 - 1;
          ++v3;
        }
      }

      if (!*(v7 + 74))
      {
        if (v23[3] >= 2uLL)
        {
          v24 = v23[1];
          v25 = 1;
          while (1)
          {
            v26 = *v3++;
            v27 = (*(v24 + 8 * v25) + v26 + 1);
            if (*(v24 + 8 * v27 + 4) != v25)
            {
              break;
            }

            v25 = v27;
            if (!--v4)
            {
              v28 = (v24 + 8 * *(v24 + 8 * v27));
              if (v28[1] != v27)
              {
                goto LABEL_6;
              }

              this = *v28 >> 31;
              goto LABEL_88;
            }
          }
        }

        goto LABEL_6;
      }

      v42 = mtrie_exact_match_search(v23, v3, v4) == 0;
LABEL_85:
      this = !v42;
      goto LABEL_88;
    }

    if (v8 != 1)
    {
      goto LABEL_88;
    }

    if (*(v7 + 74) != 1)
    {
      if (!*(v7 + 74))
      {
        v9 = *(v7 + 24);
        v66 = 0;
        v67[0] = 0;
        if (*(v9 + 24) >= 2uLL)
        {
          v10 = *(v9 + 8);
          v11 = 1;
          while (1)
          {
            v12 = v11;
            v13 = *v3++;
            v11 = *(v10 + 8 * v11) + v13 + 1;
            if (*(v10 + 8 * v11 + 4) != v12)
            {
              break;
            }

            if (!--v4)
            {
              __search_node_tree(v9, 1uLL, v67, &v66, &v65 + 4, v11);
              goto LABEL_55;
            }
          }
        }
      }

      goto LABEL_6;
    }

    v40 = *(v7 + 24);
    v66 = 0;
    v67[0] = 0;
    __btrie_find_prefix(v40, *v40, v3, v4, v67, 1uLL, &v66, &v65 + 4, a3);
LABEL_55:
    v42 = v66 == 0;
    goto LABEL_85;
  }

  if (v8 != 2)
  {
    if (v8 != 3)
    {
      goto LABEL_88;
    }

    if (*(v7 + 74) == 1)
    {
      v41 = *(v7 + 24);
      v66 = 0;
      v67[0] = 0;
      __btrie_wildcard_match(v41, *v41, &v66, v3, v4, 2u, v67, 1uLL, a3, &v65 + 4, 0, 0);
    }

    else
    {
      if (*(v7 + 74))
      {
        goto LABEL_6;
      }

      v14 = *(v7 + 24);
      v15 = *(v7 + 73);
      v66 = 0;
      v67[0] = 0;
      if (*(v14 + 24) < 2uLL)
      {
        goto LABEL_6;
      }

      __wildcard_match_str(v14, 1uLL, v67, &v66, &v65 + 4, 1, v3, v4, v15 ^ 1, 2u);
    }

    goto LABEL_55;
  }

LABEL_27:
  v16 = MEMORY[0x28223BE20](this);
  MEMORY[0x28223BE20](v16);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v21 = v4;
  }

  else
  {
    v21 = 1;
  }

  if (*(v7 + 74) == 1)
  {
    v29 = *(v7 + 24);
    v67[0] = 0;
    __btrie_find_common_prefix(v29, *v29, v3, v4, v21, v67, v17, v20, v18, v3);
    v30 = v67[0];
  }

  else
  {
    if (*(v7 + 74) || (v22 = *(v7 + 24), *(v22 + 24) < 2uLL))
    {
      this = 0;
      goto LABEL_88;
    }

    v30 = 0;
    v32 = 0;
    v33 = *(v22 + 8);
    LODWORD(v34) = *(v33 + 8);
    v35 = 1;
    do
    {
      v36 = v35;
      v35 = v34 + v3[v32] + 1;
      v37 = (v33 + 8 * v35);
      if (v37[1] != v36)
      {
        break;
      }

      v34 = *v37;
      v38 = (v33 + 8 * v34);
      if (v38[1] == v35)
      {
        v39 = *v38;
        if (v39 < 0)
        {
          *(v17 + 4 * v30) = -v39;
          v20[v30++] = v32 + 1;
          if (v30 >= v21)
          {
            break;
          }
        }
      }

      ++v32;
    }

    while (v4 != v32);
  }

  for (this = v30 != 0; v30; --v30)
  {
    v31 = *v20++;
    a2[(v31 >> 1) - 1] = 1;
  }

LABEL_88:
  v64 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t TrieAccessContext::addRecord(TrieAccessContext *this, const unsigned __int16 *a2, uint64_t a3, const unsigned __int8 *a4, size_t a5, unint64_t *a6)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v41[0] = a5;
  result = TrieAccessContext::keyDataHeapContext(this);
  if (!result)
  {
    goto LABEL_5;
  }

  if (*(this + 72) != 1 || *(this + 37))
  {
    result = 0;
    goto LABEL_5;
  }

  v14 = result;
  v15 = 2 * a3;
  MEMORY[0x28223BE20](result);
  if (*(this + 73))
  {
    if (a3)
    {
      v16 = 0;
      do
      {
        *(&v33 + 2 * v16 - ((2 * a3 + 15) & 0xFFFFFFFFFFFFFFF0)) = bswap32(a2[v16]) >> 16;
        ++v16;
      }

      while (a3 != v16);
    }

    a2 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v40 = 0;
  v39 = 0;
  (*(this + 21))(*(this + 22), &v40, &v39);
  SizeBytesEmbededData = CreateSizeBytesEmbededData(a4, a5, v39, *(this + 73), v41);
  v38 = 0;
  v18 = *(this + 3);
  if (*(v18 + 24) < 2uLL)
  {
    goto LABEL_20;
  }

  v19 = *(v18 + 8);
  if (v15)
  {
    v20 = 1;
    v21 = a2;
    v22 = 2 * a3;
    while (1)
    {
      v23 = *v21;
      v21 = (v21 + 1);
      v24 = *(v19 + 8 * v20) + v23 + 1;
      if (*(v19 + 8 * v24 + 4) != v20)
      {
        break;
      }

      v20 = v24;
      if (!--v22)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    v27 = v41[0] + 4;
    v28 = malloc_type_malloc(v41[0] + 4, 0x100004077774924uLL);
    memcpy(v28 + 1, SizeBytesEmbededData, v41[0]);
    if (*(this + 73) == 1)
    {
      v29 = 0x1000000;
    }

    else
    {
      v29 = 1;
    }

    *v28 = v29;
    goto LABEL_24;
  }

  v24 = 1;
LABEL_18:
  v25 = (v19 + 8 * *(v19 + 8 * v24));
  if (v25[1] != v24)
  {
    goto LABEL_20;
  }

  v26 = *v25;
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  v31 = -v26;
  HeapData = TrieAccessContext::getHeapData(this, v31, &v38);
  if (!HeapData)
  {
    goto LABEL_20;
  }

  v34 = v38;
  v35 = v31;
  v27 = v41[0] + v38;
  v28 = malloc_type_malloc(v41[0] + v38, 0x100004077774924uLL);
  memcpy(v28, HeapData, v38);
  memcpy(v28 + v34, SizeBytesEmbededData, v41[0]);
  if (*(this + 73) == 1)
  {
    v32 = bswap32(bswap32(*HeapData) + 1);
  }

  else
  {
    v32 = *HeapData + 1;
  }

  *v28 = v32;
  (*(*v14 + 80))(v14, 0, 0, 0, 0, v35);
LABEL_24:
  if (v41[0] != a5)
  {
    free(SizeBytesEmbededData);
  }

  v37 = 0;
  v30 = (*(*v14 + 72))(v14, 0, 0, v28, v27, &v37);
  free(v28);
  if (v30)
  {
    result = trie_insert_key(*(this + 3), a2, v15, v37) == 0;
    if (a6)
    {
      *a6 = 0;
    }
  }

  else
  {
    result = 0;
  }

LABEL_5:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trie_insert_key(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 24);
  if (v8 <= 1 && __resize_array(a1, v8 | 0x2000))
  {
    goto LABEL_68;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    v10 = *a1;
    *v10 = 0x1074726965;
    *(v10 + 8) = 65793;
    *(*(a1 + 8) + 8) = 1;
    v9 = 1;
    *(a1 + 16) = 1;
  }

  v11 = 0;
  v12 = 1;
  while (1)
  {
    if (a3 == v11)
    {
      v13 = *(a1 + 8);
      if (v9 < v12)
      {
        v14 = 0;
        goto LABEL_18;
      }

      v14 = *(v13 + 8 * v12);
    }

    else
    {
      v15 = v9 >= v12 ? *(*(a1 + 8) + 8 * v12) + 1 : 1;
      v14 = v15 + *(a2 + v11);
    }

    if (v9 < v14)
    {
      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v13 = *(a1 + 8);
LABEL_18:
    if (*(v13 + 8 * v14 + 4) != v12)
    {
LABEL_22:
      v17 = -a4;
      while (1)
      {
        if (v11 == a3)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(a2 + v11) + 1;
        }

        v19 = *(a1 + 16);
        if (v19 < v12 || !*(*(a1 + 8) + 8 * v12))
        {
          v20 = 1;
          do
          {
            v21 = v20 + v18;
            v22 = v19 >= v20 + v18 && *(*(a1 + 8) + 8 * v21 + 4) != 0;
            v23 = v21 == 1 || v22;
            v20 += v23;
          }

          while ((v23 & 1) != 0);
          __write_base(a1, v12, v20);
          v19 = *(a1 + 16);
        }

        v24 = v19 >= v12 ? *(*(a1 + 8) + 8 * v12) : 0;
        v25 = (v24 + v18);
        v26 = v19 >= v25 && *(*(a1 + 8) + 8 * v25 + 4) != 0;
        if (v25 == 1 || v26)
        {
          break;
        }

        v27 = v12;
LABEL_58:
        v12 = v25;
        if (v19 < v25 || !*(*(a1 + 8) + 8 * v25 + 4))
        {
          __write_check(a1, v25, v27);
          if (!v18)
          {
            __write_base(a1, v25, v17);
          }
        }

        if (++v11 > a3)
        {
          goto LABEL_66;
        }
      }

      list = __get_list(a1, v12, v45);
      if (v25 == 1)
      {
        goto LABEL_47;
      }

      if (v19 >= v25)
      {
        v37 = *(*(a1 + 8) + 8 * v25 + 4);
        v38 = __get_list(a1, v37, v44);
        if (list + 1 >= v38)
        {
          v33 = v38;
          goto LABEL_53;
        }
      }

      else
      {
        v36 = __get_list(a1, 0, v44);
        if (list + 1 >= v36)
        {
          v33 = v36;
          v37 = 0;
LABEL_53:
          v29 = v44;
          v30 = a1;
          v31 = v12;
          v32 = v37;
          v34 = 0;
          v35 = 0;
          goto LABEL_54;
        }
      }

LABEL_47:
      v29 = v45;
      v30 = a1;
      v31 = v12;
      v32 = v12;
      v33 = list;
      v34 = v18;
      v35 = 1;
LABEL_54:
      v39 = __modify_array(v30, v31, v32, v29, v33, v34, v35);
      v27 = v39;
      v19 = *(a1 + 16);
      if (v19 >= v39)
      {
        v40 = *(*(a1 + 8) + 8 * v39);
      }

      else
      {
        v40 = 0;
      }

      v25 = (v40 + v18);
      goto LABEL_58;
    }

    v16 = *(*(a1 + 8) + 8 * v14);
    if (v16 < 0)
    {
      break;
    }

LABEL_20:
    ++v11;
    v12 = v14;
    if (v11 > a3)
    {
      goto LABEL_66;
    }
  }

  if (v16 + a4)
  {
    __write_base(a1, v14, -a4);
  }

LABEL_66:
  v41 = *(a1 + 16);
  *(*a1 + 12) = v41;
  if ((v41 - *(a1 + 24)) >= 0xFFFFFFFFFFFFFEFELL && __resize_array(a1, (v41 + 259)))
  {
LABEL_68:
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL TrieAccessContext::deleteRecord(TrieAccessContext *this, const unsigned __int16 *a2, uint64_t a3, const unsigned __int8 *a4, size_t a5)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v10 = TrieAccessContext::keyDataHeapContext(this);
  if (v10 && *(this + 72) == 1 && !*(this + 37))
  {
    v14 = v10;
    v15 = 2 * a3;
    MEMORY[0x28223BE20](v10);
    v16 = (&v39 - ((2 * a3 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (*(this + 73))
    {
      if (!a3)
      {
        v19 = (this + 24);
        v24 = *(this + 3);
        if (*(v24 + 24) >= 2uLL)
        {
          v20 = *(v24 + 8);
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        goto LABEL_5;
      }

      v17 = 0;
      do
      {
        v16[v17] = bswap32(a2[v17]) >> 16;
        ++v17;
      }

      while (a3 != v17);
    }

    else
    {
      v16 = a2;
    }

    v19 = (this + 24);
    v18 = *(this + 3);
    if (*(v18 + 24) >= 2uLL)
    {
      v20 = *(v18 + 8);
      if (v15)
      {
        v21 = 0;
        v22 = 1;
        while (1)
        {
          v23 = v22;
          v22 = *(v20 + 8 * v22) + *(v16 + v21) + 1;
          if (*(v20 + 8 * v22 + 4) != v23)
          {
            goto LABEL_23;
          }

          if (v15 == ++v21)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_20:
      v22 = 1;
LABEL_21:
      v25 = (v20 + 8 * *(v20 + 8 * v22));
      if (v25[1] != v22)
      {
        goto LABEL_23;
      }

      v26 = *v25;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v27 = -v26;
      v51[0] = 0;
      HeapData = TrieAccessContext::getHeapData(this, v27, v51);
      if (!HeapData)
      {
        goto LABEL_23;
      }

      v44 = a4;
      if (*(this + 73) == 1)
      {
        v28 = bswap32(*HeapData);
      }

      else
      {
        v28 = *HeapData;
      }

      v40 = v27;
      v41 = v19;
      v42 = v15;
      v43 = &v39;
      v45 = malloc_type_malloc(v51[0] + 8 * v28, 0x100004000313F17uLL);
      v29 = 0;
      if (v28)
      {
        v49 = 4;
        v30 = 4;
        do
        {
          v31 = HeapData + v30;
          LOBYTE(v50) = 0;
          v32 = (*(this + 21))(*(this + 22), HeapData + v30, &v50);
          v33 = v50;
          if (v32 != a5 || memcmp(v44, &v31[v50], a5))
          {
            v47 = v28;
            v48 = v29;
            v34 = a5;
            v35 = v49;
            memcpy(&v45[v49], v31, v32 + v33);
            v28 = v47;
            v49 = v32 + v33 + v35;
            a5 = v34;
            v29 = v48 + 1;
          }

          v30 += v32 + v33;
          --v28;
        }

        while (v28);
      }

      else
      {
        v49 = 4;
      }

      if (*(this + 73) == 1)
      {
        *v45 = bswap32(v29);
      }

      else
      {
        *v45 = v29;
      }

      v36 = v42;
      v37 = v41;
      (*(*v14 + 80))(v14, 0, 0, 0, 0, v40);
      if (v29 <= 0)
      {
        inserted = trie_delete_key(*v37, v16, v36);
      }

      else
      {
        v50 = 0;
        if (!(*(*v14 + 72))(v14, 0, 0, v45, v49, &v50))
        {
          v11 = 0;
          goto LABEL_45;
        }

        inserted = trie_insert_key(*v37, v16, v36, v50);
      }

      v11 = inserted == 0;
LABEL_45:
      free(v45);
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v11 = 0;
LABEL_5:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t trie_delete_key(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = 1;
  while (1)
  {
    if (a3 == v4)
    {
      v7 = *(a1 + 8);
      if (v5 < v6)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v8 = *(v7 + 8 * v6);
    }

    else
    {
      v9 = v5 >= v6 ? *(*(a1 + 8) + 8 * v6) + 1 : 1;
      v8 = v9 + *(a2 + v4);
    }

    if (v5 < v8)
    {
      if (v6)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_16;
    }

    v7 = *(a1 + 8);
LABEL_14:
    if (*(v7 + 8 * v8 + 4) != v6)
    {
      return 0xFFFFFFFFLL;
    }

    if ((*(*(a1 + 8) + 8 * v8) & 0x80000000) != 0)
    {
      break;
    }

LABEL_16:
    ++v4;
    v6 = v8;
    if (v4 > a3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  __write_base(a1, v8, 0);
  __write_check(a1, v8, 0);
  return 0;
}

uint64_t TrieAccessContext::buildWithRecords(TrieAccessContext *this, const __CFArray *a2, const __CFArray *a3, unint64_t *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v9[1034] = *MEMORY[0x277D85DE8];
  CFArrayGetCount(v5);
  result = TrieAccessContext::keyDataHeapContext(v4);
  if (result)
  {
    if (*(v4 + 72) == 1)
    {
      v9[0] = 0;
      v9[1] = 0;
      *(v4 + 73);
      v8 = 0;
      (*(v4 + 168))(*(v4 + 176), v9, &v8);
      operator new[]();
    }

    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sortingComparator(const void ***a1, const void ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = v2[1];
  v6 = **a2;
  v7 = v3[1];
  if (v5 >= v7)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = v2[1];
  }

  result = memcmp(v4, v6, v8);
  if (!result)
  {
    result = (v5 - v7);
    if (v5 == v7)
    {
      return (*(v2 + 6) - *(v3 + 6));
    }
  }

  return result;
}

void TrieAccessContext::addSeriesOfHomographData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a3 > 0)
  {
    v5 = a4;
    v6 = 4;
    v7 = (a5 + 8 * a2);
    v8 = a3;
    do
    {
      v9 = *v7++;
      v6 += v5 + CFDataGetLength(*(v9 + 16));
      --v8;
    }

    while (v8);
    operator new[]();
  }

  operator new[]();
}

uint64_t btrie_build(uint64_t a1, size_t a2, unsigned __int8 **a3, uint64_t *a4, _DWORD *a5)
{
  v68 = 1024;
  v51 = 0x10000;
  v54 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  v53 = 0;
  bzero(v54, 0x10000uLL);
  __n = 0;
  v57 = 0;
  v55 = 0x10000;
  v10 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  __src = v10;
  v58 = 0;
  bzero(v10, 0x10000uLL);
  v61 = 0;
  v62 = 0;
  v11 = *(a1 + 40);
  size = v11;
  v12 = *(a1 + 8);
  v65 = *(a1 + 56);
  v64 = (a1 + 48);
  ptr = v12;
  v63 = 1;
  bzero(v12, v11);
  v52 = xmmword_21E5D1CE0;
  v67 = 0x300000000;
  if (a2)
  {
    do
    {
      v14 = *a4++;
      v13 = v14;
      if ((v14 - 257) < 0xFFFFFFFFFFFFFF00)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = *a3++;
      v15 = v16;
      LODWORD(v16) = *a5++;
      __btrie_insert_fat(&v51, v67, v15, v13, v16);
      --a2;
    }

    while (a2);
    v17 = v52;
    v11 = size;
    v10 = __src;
    v18 = v57 & 0xFFFFFFFC;
    a2 = (v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v18 = 0;
    v17 = 1028;
  }

  v55 = v18 + *&v10[v18] + 4;
  __n = v55;
  v51 = v17;
  v19 = a2 + 24;
  if (a2 + 24 <= v11)
  {
LABEL_17:
    v61 = v19;
    v62 = a2;
    goto LABEL_18;
  }

  v50 = a2;
  v20 = *(&v65 + 1);
  v21 = ptr;
  v22 = v64;
  v23 = v65;
  v24 = size;
  while (1)
  {
    v25 = v24;
    v24 = 2 * v11;
    if (!v63)
    {
      break;
    }

    v26 = 2 * v11;
    if (!v23)
    {
      v21 = malloc_type_realloc(v21, v26, 0x100004077774924uLL);
      *v22 = 1;
      v28 = &v21[v11];
      goto LABEL_14;
    }

    v21 = v23(v21, v26, v20);
LABEL_15:
    v11 *= 2;
    if (v19 <= v24)
    {
      ptr = v21;
      size = v24;
      a2 = v50;
      goto LABEL_17;
    }
  }

  v27 = malloc_type_realloc(v21, 2 * v11, 0x100004077774924uLL);
  v21 = v27;
  if (v27)
  {
    v28 = &v27[v11];
LABEL_14:
    bzero(v28, v11);
    goto LABEL_15;
  }

  ptr = 0;
  size = v25;
  a2 = -1;
LABEL_18:
  v29 = __btrie_build_compact_trie(&v51, v67, &size, 1);
  v30 = size;
  v31 = v61;
  v32 = (v61 + 4095) & 0xFFFFFFFFFFFFF000;
  v33 = __n;
  v34 = v32 + __n;
  if (v32 + __n > size)
  {
    while (2)
    {
      v30 *= 2;
      if (v63)
      {
        if (v65)
        {
          ptr = (v65)(ptr, v30, *(&v65 + 1));
          goto LABEL_26;
        }

        v38 = malloc_type_realloc(ptr, v30, 0x100004077774924uLL);
        ptr = v38;
        v39 = size;
        *v64 = 1;
        v36 = v30 - v39;
        v37 = &v38[v39];
      }

      else
      {
        v35 = malloc_type_realloc(ptr, v30, 0x100004077774924uLL);
        ptr = v35;
        if (!v35)
        {
          v48 = 0xFFFFFFFFLL;
          goto LABEL_34;
        }

        v36 = v30 - size;
        v37 = &v35[size];
      }

      bzero(v37, v36);
LABEL_26:
      size = v30;
      if (v34 <= v30)
      {
        v62 = v32;
        v33 = __n;
        goto LABEL_29;
      }

      continue;
    }
  }

  v62 = (v61 + 4095) & 0xFFFFFFFFFFFFF000;
LABEL_29:
  v61 = v34;
  memcpy(ptr + v32, __src, v33);
  v40 = ptr;
  v41 = v65;
  v42 = ptr + a2;
  v43 = HIDWORD(v29) + 4 * v29;
  *v42 = 1;
  v42[1] = v43;
  v42[2] = v31;
  v42[3] = v32;
  v44 = v68;
  v45 = __n;
  v46 = v61;
  v42[4] = __n;
  v42[5] = v44;
  *a1 = v43;
  *(a1 + 24) = v45;
  *(a1 + 32) = v44;
  size = v46;
  if (v41)
  {
    v47 = v41();
  }

  else
  {
    v47 = malloc_type_realloc(v40, v46, 0x100004077774924uLL);
  }

  v48 = 0;
  ptr = v47;
  *(a1 + 8) = v47;
  *(a1 + 16) = &v47[v32];
LABEL_34:
  if (v54)
  {
    free(v54);
  }

  if (__src)
  {
    free(__src);
  }

  return v48;
}

void TrieAccessContext::createIndexInfoForHeapAccess(TrieAccessContext *this, IDXIndexInfo *a2)
{
  v3 = IDXIndexInfo::optionalProperty(this, @"TrieAuxiliaryDataOptions");
  if (v3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
    Mutable = MutableCopy;
    v6 = MutableCopy == 0;
    if (MutableCopy)
    {
      Value = CFDictionaryGetValue(MutableCopy, @"IDXIndexPath");
      if (Value || (Value = IDXIndexInfo::optionalProperty(this, @"TrieAuxiliaryDataFile")) != 0)
      {
        v8 = Value;
        v6 = 1;
        goto LABEL_12;
      }

LABEL_18:
      v25 = IDXIndexInfo::optionalProperty(this, @"TrieSubIndexPath");
      if (v25)
      {
        v8 = v25;
        v6 = 1;
        if (!Mutable)
        {
          goto LABEL_11;
        }

LABEL_12:
        CFDictionarySetValue(Mutable, @"IDXIndexAccessMethod", @"com.apple.HeapAccessMethod");
        v11 = IDXIndexInfo::relativePath(this);
        if (CFStringFind(v11, @"/", 0).location == -1)
        {
          v17 = CFRetain(v8);
        }

        else
        {
          v12 = IDXIndexInfo::relativePath(this);
          v13 = CFStringFind(v12, @"/", 4uLL).location + 1;
          v14 = IDXIndexInfo::relativePath(this);
          v15 = CFStringGetLength(v14) - v13;
          v16 = IDXIndexInfo::relativePath(this);
          v17 = CFStringCreateMutableCopy(0, 0, v16);
          v29.location = v13;
          v29.length = v15;
          CFStringDelete(v17, v29);
          CFStringAppend(v17, v8);
        }

        CFDictionarySetValue(Mutable, @"IDXIndexPath", v17);
        if (!v6)
        {
          CFRelease(v8);
        }

        CFDictionarySetValue(Mutable, @"IDXIndexSupportDataID", *MEMORY[0x277CBED28]);
        v18 = IDXIndexInfo::optionalProperty(this, @"IDXIndexWritable");
        CFDictionarySetValue(Mutable, @"IDXIndexWritable", v18);
        v19 = IDXIndexInfo::optionalProperty(this, @"IDXIndexBigEndian");
        CFDictionarySetValue(Mutable, @"IDXIndexBigEndian", v19);
        FieldForHeapAccess = TrieAccessContext::createFieldForHeapAccess(v20);
        CFDictionarySetValue(Mutable, @"IDXIndexDataFields", FieldForHeapAccess);
        CFRelease(FieldForHeapAccess);
        v22 = CFURLCopyFileSystemPath(*this, kCFURLPOSIXPathStyle);
        v23 = CFStringCreateMutableCopy(0, 0, v22);
        CFRelease(v22);
        v24 = IDXIndexInfo::relativePath(this);
        CFStringTrim(v23, v24);
        CFStringAppend(v23, v17);
        CFURLCreateWithFileSystemPath(0, v23, kCFURLPOSIXPathStyle, 0);
        CFRelease(v23);
        CFRelease(v17);
        operator new();
      }

      goto LABEL_22;
    }

    v9 = IDXIndexInfo::optionalProperty(this, @"TrieAuxiliaryDataFile");
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = IDXIndexInfo::optionalProperty(this, @"TrieAuxiliaryDataFile");
    if (!v9)
    {
      v10 = IDXIndexInfo::optionalProperty(this, @"TrieSubIndexPath");
      v6 = 1;
      if (v10)
      {
        v8 = v10;
        goto LABEL_11;
      }

      Mutable = 0;
LABEL_22:
      v26 = v6;
      v27 = CFURLCreateCopyDeletingPathExtension(0, *this);
      PathComponent = CFURLCopyLastPathComponent(v27);
      CFRelease(v27);
      v8 = CFStringCreateWithFormat(0, 0, @"%@_aux.data", PathComponent);
      CFRelease(PathComponent);
      v6 = 0;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_11:
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      goto LABEL_12;
    }
  }

  v8 = v9;
  v6 = 1;
  goto LABEL_11;
}

void TrieAccessContext::finalizeSubclass(TrieAccessContext *this, int a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    IDXAccessContext::finalize(v4);
    v5 = *(this + 5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 5) = 0;
  }

  if (a2)
  {
    v10 = 0;
    v6 = *(this + 3);
    if (*(this + 37) == 1)
    {
      v7 = v6[1];
      if (*(v6 + 12))
      {
LABEL_15:
        free(v7);
      }
    }

    else
    {
      if (*(this + 37))
      {
        v7 = mtrie_data(*(this + 3), &v10);
        mtrie_close(*(this + 3));
        goto LABEL_18;
      }

      v7 = *v6;
      if (*(v6 + 20))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        goto LABEL_15;
      }
    }

    free(v6);
LABEL_18:
    v10 = *(*(this + 8) + 16);
    unmapIndexFile(v7 - 64, v10);
    v9 = *(this + 4);
    if (v9)
    {
      IDXIndexInfo::~IDXIndexInfo(v9);
      MEMORY[0x223D5E5E0]();
    }

    free(**(this + 8));
    free(*(this + 8));
  }
}

CFDictionaryRef TrieAccessContext::createFieldForHeapAccess(TrieAccessContext *this)
{
  keys[2] = *MEMORY[0x277D85DE8];
  keys[0] = @"IDXDataFieldName";
  keys[1] = @"IDXDataSizeLength";
  valuePtr = 4;
  values = @"Packed Homograph";
  cf = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  v1 = MEMORY[0x277CBF138];
  v2 = MEMORY[0x277CBF150];
  v7 = CFDictionaryCreate(0, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(cf);
  v3 = CFArrayCreate(0, &v7, 1, MEMORY[0x277CBF128]);
  CFRelease(v7);
  keys[0] = @"IDXVariableDataFields";
  values = v3;
  v4 = CFDictionaryCreate(0, keys, &values, 1, v1, v2);
  CFRelease(v3);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __search_node_tree(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, unsigned int a6)
{
  v12 = *(a1 + 8);
  v13 = *(v12 + 8 * a6);
  v14 = (v12 + 8 * v13);
  if (v14[1] == a6)
  {
    v15 = *v14;
    if (v15 < 0)
    {
      if (*a3)
      {
        --*a3;
      }

      else if (a2)
      {
        v19 = *a4;
        v20 = *a4 + 1;
        *a4 = v20;
        *(a5 + 4 * v19) = -v15;
        if (v20 >= a2)
        {
          return 1;
        }
      }

      else
      {
        ++*a4;
      }
    }
  }

  v16 = (v13 + 1);
  v17 = 257;
  while (*(*(a1 + 8) + 8 * v16 + 4) != a6 || !__search_node_tree(a1, a2, a3, a4, a5, v16))
  {
    v16 = (v16 + 1);
    if (--v17 <= 1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __btrie_find_prefix(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, void *a5, unint64_t a6, unint64_t *a7, uint64_t a8, uint8x8_t a9)
{
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) == 2)
    {
      v28 = (*(a1 + 8) + (a2 - 2));
      if (!a4)
      {
        v41 = *v28;
        if (*v28)
        {
          if (*a5)
          {
            --*a5;
          }

          else
          {
            v59 = *a7;
            v60 = *a7 + 1;
            *a7 = v60;
            if (a6)
            {
              *(a8 + 4 * v59) = v41;
              if (v60 >= a6)
              {
                return 1;
              }
            }
          }
        }

        v42 = 0;
        v43 = (v28 + 1);
        v44 = v28 + 10;
        while (1)
        {
          v45 = v43[v42 >> 5];
          if ((v45 >> v42))
          {
            if (v42 >= 0x20)
            {
              v46 = 0;
              v47 = v42 >> 5;
              v48 = v43;
              do
              {
                v49 = *v48++;
                a9 = vcnt_s8(v49);
                a9.i16[0] = vaddlv_u8(a9);
                v46 += a9.i32[0];
                --v47;
              }

              while (v47);
            }

            else
            {
              v46 = 0;
            }

            a9.i32[0] = v45 & ~(-1 << (v42 & 0x1F));
            v50 = vcnt_s8(a9);
            v50.i16[0] = vaddlv_u8(v50);
            if (__btrie_find_prefix(a1, v44[v50.i32[0] + v46], a3, 0, a5, a6, a7, a8))
            {
              break;
            }
          }

          if (++v42 == 256)
          {
            return 0;
          }
        }

        return 1;
      }

      v29 = *a3;
      v30 = (v28 + 1);
      v31 = v29 >> 5;
      v32 = v28[(v29 >> 5) + 1];
      if (((v32 >> v29) & 1) == 0)
      {
        return 0;
      }

      v33 = v29 & 0x1F;
      v34 = v28 + 10;
      if (v29 >= 0x20)
      {
        v35 = 0;
        do
        {
          v54 = *v30++;
          a9 = vcnt_s8(v54);
          a9.i16[0] = vaddlv_u8(a9);
          v35 += a9.i32[0];
          --v31;
        }

        while (v31);
      }

      else
      {
        v35 = 0;
      }

      a9.i32[0] = v32 & ~(-1 << v33);
      v55 = vcnt_s8(a9);
      v55.i16[0] = vaddlv_u8(v55);
      v37 = v34[v55.i32[0] + v35];
      v38 = a4 - 1;
      v39 = a3 + 1;
    }

    else
    {
      v36 = (*(a1 + 8) + (a2 - 3));
      if (!a4)
      {
        v51 = *v36;
        if (*v36)
        {
          if (*a5)
          {
            --*a5;
          }

          else
          {
            v61 = *a7;
            v62 = *a7 + 1;
            *a7 = v62;
            if (a6)
            {
              *(a8 + 4 * v61) = v51;
              if (v62 >= a6)
              {
                return 1;
              }
            }
          }
        }

        v52 = 0;
        v53 = v36 + 1;
        while (!__btrie_find_prefix(a1, v53[v52], a3, 0, a5, a6, a7, a8))
        {
          if (++v52 == 256)
          {
            return 0;
          }
        }

        return 1;
      }

      v37 = v36[*a3 + 1];
      v38 = a4 - 1;
      v39 = a3 + 1;
    }

    if (__btrie_find_prefix(a1, v37, v39, v38, a5, a6, a7, a8))
    {
      return 1;
    }
  }

  else if ((a2 & 3) != 0)
  {
    v16 = (*(a1 + 16) + (a2 - 1));
    if (a4)
    {
      goto LABEL_4;
    }

    v40 = v16[1];
    if (!v40)
    {
      goto LABEL_4;
    }

    if (*a5)
    {
      --*a5;
      goto LABEL_4;
    }

    v57 = *a7;
    v58 = *a7 + 1;
    *a7 = v58;
    if (!a6 || (*(a8 + 4 * v57) = v40, v58 < a6))
    {
LABEL_4:
      v17 = *v16;
      if (v17 >= 5)
      {
        v18 = v16 + v17;
        v19 = (v16 + 2);
        do
        {
          v22 = *v19;
          v20 = v19 + 1;
          v21 = v22;
          if (v22 >= a4)
          {
            v23 = memcmp(v20, a3, a4);
            if (v23 > 0)
            {
              return 0;
            }

            if (!v23)
            {
              if (*a5)
              {
                --*a5;
              }

              else if (a6)
              {
                v24 = *&v20[v21];
                v25 = *a7;
                v26 = *a7 + 1;
                *a7 = v26;
                *(a8 + 4 * v25) = v24;
                if (v26 >= a6)
                {
                  return 1;
                }
              }

              else
              {
                ++*a7;
              }
            }
          }

          v27 = &v20[v21];
          v19 = &v20[v21 + 4];
        }

        while (v27 < v18);
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t __wildcard_match_str(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10)
{
  if (!a8)
  {
    v16 = *(a1 + 8);
    goto LABEL_32;
  }

  v12 = 0;
  v13 = a10;
  while (1)
  {
    if (a10 == 1)
    {
      v15 = *(a7 + v12);
      goto LABEL_12;
    }

    if (a10 == 2 && (v12 & 1) == 0)
    {
      v14 = *(a7 + v12);
      if (a9)
      {
        if (v14 == 63)
        {
          if (!*(a7 + v12 + 1))
          {
            goto LABEL_20;
          }
        }

        else if (v14 == 42 && !*(a7 + v12 + 1))
        {
LABEL_38:
          v28 = a8 - v13;
          v29 = a7 + v13;

          return __wildcard_asterisk(a1, a2, a3, a4, a5, a6, v29, v28, a9, a10);
        }

        goto LABEL_14;
      }

      if (!*(a7 + v12))
      {
        break;
      }
    }

LABEL_14:
    v16 = *(a1 + 8);
    v17 = *(v16 + 8 * a6) + *(a7 + v12) + 1;
    if (*(v16 + 8 * v17 + 4) != a6)
    {
      return 0;
    }

    ++v12;
    ++v13;
    a6 = v17;
    if (a8 == v12)
    {
      LODWORD(a6) = v17;
LABEL_32:
      v25 = (v16 + 8 * *(v16 + 8 * a6));
      if (v25[1] == a6)
      {
        v26 = *v25;
        if (v26 < 0)
        {
          if (*a3)
          {
            --*a3;
          }

          else if (a2)
          {
            v30 = *a4;
            v31 = *a4 + 1;
            *a4 = v31;
            *(a5 + 4 * v30) = -v26;
            if (v31 >= a2)
            {
              return 1;
            }
          }

          else
          {
            ++*a4;
          }
        }
      }

      return 0;
    }
  }

  v15 = *(a7 + v12 + 1);
LABEL_12:
  if (v15 == 42)
  {
    goto LABEL_38;
  }

  if (!(2 * (v15 == 63)))
  {
    goto LABEL_14;
  }

LABEL_20:
  v18 = *(*(a1 + 8) + 8 * a6);
  v19 = 256;
  while (1)
  {
    v20 = (*(a1 + 8) + 8 * ++v18);
    if (v20[1] == a6)
    {
      break;
    }

LABEL_29:
    v24 = v19-- != 0;
    if (v19 == 0 || !v24)
    {
      return 0;
    }
  }

  if (a10 != 2)
  {
    v21 = 1;
    if (__wildcard_match_str(a1))
    {
      return v21;
    }

    goto LABEL_29;
  }

  v22 = *v20 + 1;
  v23 = 257;
  while (*(*(a1 + 8) + 8 * v22 + 4) != v18 || !__wildcard_match_str(a1))
  {
    ++v22;
    if (--v23 <= 1)
    {
      goto LABEL_29;
    }
  }

  return 1;
}

uint64_t __wildcard_asterisk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10)
{
  if (!__wildcard_match_str(a1))
  {
    v27 = a5;
    v28 = a7;
    v29 = a8;
    LODWORD(v20) = *(*(a1 + 8) + 8 * a6);
    v21 = 256;
    while (1)
    {
      v20 = (v20 + 1);
      v22 = (*(a1 + 8) + 8 * v20);
      v23 = a6;
      if (v22[1] == a6)
      {
        if (a10 == 2)
        {
          v24 = (*v22 + 1);
          v25 = 257;
          while (*(*(a1 + 8) + 8 * v24 + 4) != v20 || !__wildcard_asterisk(a1, a2, a3, a4, v27, v24, v28, v29, a9 | 0x200000000))
          {
            v24 = (v24 + 1);
            if (--v25 <= 1)
            {
              goto LABEL_14;
            }
          }

          return 1;
        }

        if (a10 == 1)
        {
          v18 = 1;
          if (__wildcard_asterisk(a1, a2, a3, a4, v27, v20, v28, v29, a9 | 0x100000000))
          {
            return v18;
          }
        }
      }

LABEL_14:
      v26 = v21-- != 0;
      a6 = v23;
      if (v21 == 0 || !v26)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t __btrie_wildcard_match(uint64_t a1, uint64_t a2, unint64_t *a3, _BYTE *a4, int a5, unsigned int a6, void *a7, unint64_t a8, uint8x8_t a9, uint64_t a10, int a11, int a12)
{
  v15 = a10;
  v16 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v16 == 2)
    {
      v19 = (*(a1 + 8) + (a2 - 2));
      if (a5)
      {
        if (a5 == 1 || a6 != 2)
        {
          v20 = *a4;
          if (a6 == 1)
          {
LABEL_144:
            if (v20 != 42)
            {
              if (!(2 * (v20 == 63)))
              {
                goto LABEL_157;
              }

              return __btrie_wildcard_questionmark_search(a1, a2, a9, a3, &a4[a6], a5 - a6, a6);
            }

            return __btrie_wildcard_asterisk_search(a1, a2, a3, &a4[a6], a5 - a6, a6);
          }
        }

        else
        {
          if ((a5 & 1) == 0)
          {
            v20 = *a4;
            goto LABEL_144;
          }

          LOBYTE(v20) = *a4;
        }

LABEL_157:
        v72 = v19 + 1;
        v73 = v20 >> 5;
        v74 = v19[v73 + 1];
        if (((v74 >> v20) & 1) == 0)
        {
          return 0;
        }

        v75 = v20 & 0x1F;
        v76 = v19 + 10;
        if (v20 >= 0x20u)
        {
          v77 = 0;
          do
          {
            v81 = *v72++;
            a9 = vcnt_s8(v81);
            a9.i16[0] = vaddlv_u8(a9);
            v77 += a9.i32[0];
            --v73;
          }

          while (v73);
        }

        else
        {
          v77 = 0;
        }

        a9.i32[0] = v74 & ~(-1 << v75);
        v82 = vcnt_s8(a9);
        v82.i16[0] = vaddlv_u8(v82);
        v78 = v76[v82.i32[0] + v77];
        return __btrie_wildcard_match(a1, v78) != 0;
      }

LABEL_18:
      v16 = *v19;
      if (!v16)
      {
        return v16;
      }

      if (*a7)
      {
        v16 = 0;
        --*a7;
        return v16;
      }

      v70 = *a3;
      v71 = *a3 + 1;
      *a3 = v71;
      if (a8)
      {
        *(a10 + 4 * v70) = v16;
        if (v71 >= a8)
        {
          return 1;
        }
      }

      return 0;
    }

    v19 = (*(a1 + 8) + (a2 - 3));
    if (!a5)
    {
      goto LABEL_18;
    }

    if (a5 == 1 || a6 != 2)
    {
      v21 = *a4;
      if (a6 != 1)
      {
        goto LABEL_161;
      }
    }

    else
    {
      if (a5)
      {
        LOBYTE(v21) = *a4;
        goto LABEL_161;
      }

      v21 = *a4;
    }

    if (v21 == 42)
    {
      return __btrie_wildcard_asterisk_search(a1, a2, a3, &a4[a6], a5 - a6, a6);
    }

    if (2 * (v21 == 63))
    {
      return __btrie_wildcard_questionmark_search(a1, a2, a9, a3, &a4[a6], a5 - a6, a6);
    }

LABEL_161:
    v78 = v19[v21 + 1];
    return __btrie_wildcard_match(a1, v78) != 0;
  }

  if ((a2 & 3) != 0)
  {
    v17 = (*(a1 + 16) + (a2 - 1));
    if (a5)
    {
      if (a5 == 2 && a6 == 2)
      {
        v18 = *a4;
      }

      else
      {
        if (a5 != 1 || a6 != 1)
        {
          goto LABEL_28;
        }

        v18 = *a4;
      }

      if (v18 != 42)
      {
        goto LABEL_28;
      }
    }

    v22 = v17[1];
    if (!v22)
    {
LABEL_28:
      if (a12)
      {
        v23 = a6;
      }

      else
      {
        v23 = 0;
      }

      if (a12)
      {
        v24 = -a6;
      }

      else
      {
        v24 = 0;
      }

      v25 = v23 + a5;
      if (v23 + a5)
      {
        v26 = *v17;
        if (v26 >= 5)
        {
          v27 = &a4[v24];
          v29 = v17 + v26;
          v30 = (v17 + 2);
          v31 = &a4[v24 + (v25 & 0xFFFFFFFE)];
          v32 = (v25 - 1) >> 1;
          v33 = &a4[v24 + v25];
          while (1)
          {
            v35 = v30 + 1;
            v34 = *v30;
            if (a6 != 2)
            {
              if (a6 != 1)
              {
                goto LABEL_141;
              }

              v36 = &v35[v34];
              i = v30 + 1;
              v38 = v27;
              if (v34)
              {
                v38 = v27;
                for (i = v35; i < v36; ++i)
                {
                  v39 = *v38;
                  if (v39 == 42)
                  {
                    break;
                  }

                  if (v39 != 63 && v39 != *i)
                  {
                    goto LABEL_141;
                  }

                  ++v38;
                }
              }

              if (i < v36)
              {
                v41 = 0;
                v42 = 0;
                do
                {
                  if (v38 >= v33)
                  {
                    goto LABEL_60;
                  }

                  v43 = *v38;
                  if (v43 == 42)
                  {
                    if (++v38 == v33)
                    {
                      goto LABEL_129;
                    }

                    v42 = i + 1;
                    v41 = v38;
                    continue;
                  }

                  if (v43 == 63 || v43 == *i)
                  {
                    ++v38;
                    ++i;
                  }

                  else
                  {
LABEL_60:
                    i = v42++;
                    v38 = v41;
                  }
                }

                while (i < v36);
              }

              if (v38 < v33)
              {
                v45 = v33 - v38;
                while (*v38 == 42)
                {
                  ++v38;
                  if (!--v45)
                  {
                    v38 = &v27[v25];
                    break;
                  }
                }
              }

              v46 = v38 == v33;
              goto LABEL_125;
            }

            if (a11)
            {
              if (v25 == 1 || (v34 & 1) == 0)
              {
                goto LABEL_141;
              }

              v47 = (v30 + 2);
              v48 = &v30[(v34 - 1) + 2];
              v49 = v27;
              if (v34 != 1)
              {
                do
                {
                  v50 = *v49;
                  if (v50 == 42)
                  {
                    break;
                  }

                  if (v50 != 63 && v50 != *v47)
                  {
                    goto LABEL_141;
                  }

                  ++v49;
                  ++v47;
                }

                while (v47 < v48);
              }

              if (v47 < v48)
              {
                v52 = 0;
                v53 = 0;
                do
                {
                  if (v49 >= v31)
                  {
                    goto LABEL_91;
                  }

                  v54 = *v49;
                  if (v54 == 42)
                  {
                    if (++v49 == v31)
                    {
                      goto LABEL_129;
                    }

                    v53 = v47 + 1;
                    v52 = v49;
                    continue;
                  }

                  if (v54 == 63 || v54 == *v47)
                  {
                    ++v49;
                    ++v47;
                  }

                  else
                  {
LABEL_91:
                    v47 = v53++;
                    v49 = v52;
                  }
                }

                while (v47 < v48);
              }

              while (v49 < v31 && *v49 == 42)
              {
                ++v49;
              }

LABEL_124:
              v46 = v49 == v31;
LABEL_125:
              if (v46)
              {
                goto LABEL_129;
              }

              goto LABEL_141;
            }

            if ((v25 & 1) == 0)
            {
              break;
            }

            if ((v34 & 1) != 0 && *v27 == *v35)
            {
              if (v25 == 1 && v34 == 1)
              {
                goto LABEL_129;
              }

              v85 = a8;
              v86 = v32;
              v84 = v15;
              v68 = __btrie_wildcardmatch_uint16((v27 + 1), v32, v30 + 1, (v34 - 1) >> 1);
              a8 = v85;
              v32 = v86;
              a11 = 0;
              v15 = v84;
              if (v68)
              {
LABEL_129:
                if (*a7)
                {
                  --*a7;
                }

                else if (a8)
                {
                  v65 = *&v35[v34];
                  v66 = *a3;
                  v67 = *a3 + 1;
                  *a3 = v67;
                  *(v15 + 4 * v66) = v65;
                  if (v67 >= a8)
                  {
                    return 1;
                  }
                }

                else
                {
                  ++*a3;
                }
              }
            }

LABEL_141:
            v30 = &v35[v34 + 4];
            if (&v35[v34] >= v29)
            {
              return 0;
            }
          }

          if (v34)
          {
            goto LABEL_141;
          }

          v56 = &v35[v34];
          j = (v30 + 1);
          v49 = v27;
          if (v34)
          {
            v49 = v27;
            for (j = v35; j < v56; ++j)
            {
              v58 = *v49;
              if (v58 == 42)
              {
                break;
              }

              if (v58 != 63 && v58 != *j)
              {
                goto LABEL_141;
              }

              ++v49;
            }
          }

          if (j >= v56)
          {
LABEL_121:
            while (v49 < v31 && *v49 == 42)
            {
              ++v49;
            }

            goto LABEL_124;
          }

          v60 = 0;
          v61 = 0;
          while (1)
          {
            if (v49 >= v31)
            {
              goto LABEL_119;
            }

            v62 = *v49;
            if (v62 == 42)
            {
              if (++v49 == v31)
              {
                goto LABEL_129;
              }

              v61 = j + 1;
              v60 = v49;
              goto LABEL_120;
            }

            if (v62 == 63 || v62 == *j)
            {
              ++v49;
              ++j;
            }

            else
            {
LABEL_119:
              j = v61++;
              v49 = v60;
            }

LABEL_120:
            if (j >= v56)
            {
              goto LABEL_121;
            }
          }
        }
      }

      return 0;
    }

    if (*a7)
    {
      --*a7;
      goto LABEL_28;
    }

    v79 = *a3;
    v80 = *a3 + 1;
    *a3 = v80;
    if (!a8)
    {
      goto LABEL_28;
    }

    *(a10 + 4 * v79) = v22;
    if (v80 < a8)
    {
      goto LABEL_28;
    }

    return 1;
  }

  return v16;
}

uint64_t __btrie_wildcard_asterisk_search(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a2;
  v9 = 1;
  if (__btrie_wildcard_match(a1, a2))
  {
    return v9;
  }

  v60 = a6;
  if ((v7 & 3) == 2)
  {
    v27 = 0;
    v28 = *(a1 + 8) + (v7 - 2);
    v59 = (v28 + 4);
    v55 = v28 + 40;
    while (1)
    {
      v29 = v59[v27 >> 5];
      if ((v29 >> v27))
      {
        v30 = v27 >> 5;
        v31 = v27 & 0x1F;
        if (v60 == 2)
        {
          if (v27 >= 0x20)
          {
            v33 = 0;
            v39 = v59;
            do
            {
              v40 = *v39++;
              v10 = vcnt_s8(v40);
              v10.i16[0] = vaddlv_u8(v10);
              v33 += v10.i32[0];
              --v30;
            }

            while (v30);
          }

          else
          {
            v33 = 0;
          }

          v10.i32[0] = v29 & ~(-1 << v31);
          v10 = vcnt_s8(v10);
          v10.i16[0] = vaddlv_u8(v10);
          v41 = *(v55 + 4 * (v10.i32[0] + v33));
          if ((v41 & 3u) > 1)
          {
            if ((v41 & 3) == 2)
            {
              v42 = 0;
              v43 = *(a1 + 8) + (v41 - 2);
              v44 = (v43 + 4);
              v57 = v43 + 40;
              do
              {
                v45 = v44[v42 >> 5];
                if ((v45 >> v42))
                {
                  if (v42 >= 0x20)
                  {
                    v46 = 0;
                    v47 = v42 >> 5;
                    v48 = v44;
                    do
                    {
                      v49 = *v48++;
                      v10 = vcnt_s8(v49);
                      v10.i16[0] = vaddlv_u8(v10);
                      v46 += v10.i32[0];
                      --v47;
                    }

                    while (v47);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v10.i32[0] = v45 & ~(-1 << (v42 & 0x1F));
                  v50 = vcnt_s8(v10);
                  v50.i16[0] = vaddlv_u8(v50);
                  v51 = *(v57 + 4 * (v50.i32[0] + v46));
                  if (__btrie_wildcard_asterisk_search(a1))
                  {
                    return 1;
                  }
                }

                ++v42;
              }

              while (v42 != 256);
            }

            else
            {
              v52 = 0;
              v53 = *(a1 + 8) + (v41 - 3) + 4;
              do
              {
                if ((*(v53 + v52) & 3) != 0 && __btrie_wildcard_asterisk_search(a1))
                {
                  return 1;
                }

                v52 += 4;
              }

              while (v52 != 1024);
            }
          }

          else if ((v41 & 3) != 0)
          {
            v9 = 1;
            v38 = a1;
            goto LABEL_40;
          }
        }

        else if (v60 == 1)
        {
          if (v27 >= 0x20)
          {
            v32 = 0;
            v34 = v59;
            do
            {
              v35 = *v34++;
              v10 = vcnt_s8(v35);
              v10.i16[0] = vaddlv_u8(v10);
              v32 += v10.i32[0];
              --v30;
            }

            while (v30);
          }

          else
          {
            v32 = 0;
          }

          v10.i32[0] = v29 & ~(-1 << v31);
          v36 = vcnt_s8(v10);
          v36.i16[0] = vaddlv_u8(v36);
          v37 = *(v55 + 4 * (v36.i32[0] + v32));
          v9 = 1;
          v38 = a1;
LABEL_40:
          if (__btrie_wildcard_asterisk_search(v38))
          {
            return v9;
          }
        }
      }

      if (++v27 == 256)
      {
        return 0;
      }
    }
  }

  if ((v7 & 3) != 3)
  {
    return 0;
  }

  v11 = 0;
  v58 = *(a1 + 8) + (v7 - 3) + 4;
  while (1)
  {
    v12 = *(v58 + 4 * v11);
    v13 = v12 & 3;
    if ((v12 & 3) == 0)
    {
      goto LABEL_27;
    }

    if (v60 == 2)
    {
      break;
    }

    if (v60 == 1)
    {
      v9 = 1;
      v14 = a1;
LABEL_26:
      if (__btrie_wildcard_asterisk_search(v14))
      {
        return v9;
      }
    }

LABEL_27:
    if (++v11 == 256)
    {
      return 0;
    }
  }

  if (v13 != 2)
  {
    if (v13 == 3)
    {
      v15 = 0;
      v16 = *(a1 + 8) + (v12 - 3) + 4;
      while ((*(v16 + v15) & 3) == 0 || !__btrie_wildcard_asterisk_search(a1))
      {
        v15 += 4;
        if (v15 == 1024)
        {
          goto LABEL_27;
        }
      }

      return 1;
    }

    v9 = 1;
    v14 = a1;
    goto LABEL_26;
  }

  v17 = 0;
  v18 = *(a1 + 8) + (v12 - 2);
  v19 = (v18 + 4);
  v56 = v18 + 40;
  while (1)
  {
    v20 = v19[v17 >> 5];
    if ((v20 >> v17))
    {
      if (v17 >= 0x20)
      {
        v21 = 0;
        v22 = v17 >> 5;
        v23 = v19;
        do
        {
          v24 = *v23++;
          v10 = vcnt_s8(v24);
          v10.i16[0] = vaddlv_u8(v10);
          v21 += v10.i32[0];
          --v22;
        }

        while (v22);
      }

      else
      {
        v21 = 0;
      }

      v10.i32[0] = v20 & ~(-1 << (v17 & 0x1F));
      v25 = vcnt_s8(v10);
      v25.i16[0] = vaddlv_u8(v25);
      v26 = *(v56 + 4 * (v25.i32[0] + v21));
      if (__btrie_wildcard_asterisk_search(a1))
      {
        return 1;
      }
    }

    if (++v17 == 256)
    {
      goto LABEL_27;
    }
  }
}

uint64_t __btrie_wildcard_questionmark_search(uint64_t a1, int a2, uint8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((a2 & 3) == 2)
  {
    v26 = 0;
    v27 = *(a1 + 8) + (a2 - 2);
    v54 = v27 + 40;
    v56 = (v27 + 4);
    do
    {
      v28 = v56[v26 >> 5];
      if ((v28 >> v26))
      {
        v29 = v26 >> 5;
        v30 = v26 & 0x1F;
        if (a7 == 2)
        {
          if (v26 >= 0x20)
          {
            v32 = 0;
            v36 = v56;
            do
            {
              v37 = *v36++;
              a3 = vcnt_s8(v37);
              a3.i16[0] = vaddlv_u8(a3);
              v32 += a3.i32[0];
              --v29;
            }

            while (v29);
          }

          else
          {
            v32 = 0;
          }

          a3.i32[0] = v28 & ~(-1 << v30);
          a3 = vcnt_s8(a3);
          a3.i16[0] = vaddlv_u8(a3);
          v38 = *(v54 + 4 * (a3.i32[0] + v32));
          v39 = *(v54 + 4 * (a3.i32[0] + v32)) & 3;
          if (v39 > 1)
          {
            if (v39 == 2)
            {
              v40 = 0;
              v41 = *(a1 + 8) + (v38 - 2);
              v42 = (v41 + 4);
              v43 = v41 + 40;
              do
              {
                v44 = v42[v40 >> 5];
                if ((v44 >> v40))
                {
                  if (v40 >= 0x20)
                  {
                    v45 = 0;
                    v46 = v40 >> 5;
                    v47 = v42;
                    do
                    {
                      v48 = *v47++;
                      a3 = vcnt_s8(v48);
                      a3.i16[0] = vaddlv_u8(a3);
                      v45 += a3.i32[0];
                      --v46;
                    }

                    while (v46);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  a3.i32[0] = v44 & ~(-1 << (v40 & 0x1F));
                  v49 = vcnt_s8(a3);
                  v49.i16[0] = vaddlv_u8(v49);
                  if (__btrie_wildcard_match(a1, *(v43 + 4 * (v49.i32[0] + v45))))
                  {
                    return 1;
                  }
                }

                ++v40;
              }

              while (v40 != 256);
            }

            else
            {
              v50 = 0;
              v51 = *(a1 + 8) + (v38 - 3) + 4;
              do
              {
                v52 = *(v51 + v50);
                if ((v52 & 3) != 0 && __btrie_wildcard_match(a1, v52))
                {
                  return 1;
                }

                v50 += 4;
              }

              while (v50 != 1024);
            }
          }

          else if (v39)
          {
            v11 = 1;
            if (__btrie_wildcard_match(a1, v38))
            {
              return v11;
            }
          }
        }

        else if (a7 == 1)
        {
          if (v26 >= 0x20)
          {
            v31 = 0;
            v33 = v56;
            do
            {
              v34 = *v33++;
              a3 = vcnt_s8(v34);
              a3.i16[0] = vaddlv_u8(a3);
              v31 += a3.i32[0];
              --v29;
            }

            while (v29);
          }

          else
          {
            v31 = 0;
          }

          a3.i32[0] = v28 & ~(-1 << v30);
          v35 = vcnt_s8(a3);
          v35.i16[0] = vaddlv_u8(v35);
          v11 = 1;
          if (__btrie_wildcard_match(a1, *(v54 + 4 * (v35.i32[0] + v31))))
          {
            return v11;
          }
        }
      }

      ++v26;
    }

    while (v26 != 256);
    return 0;
  }

  if ((a2 & 3) != 3)
  {
    return 0;
  }

  v8 = 0;
  v55 = *(a1 + 8) + (a2 - 3) + 4;
  while (1)
  {
    v9 = *(v55 + 4 * v8);
    v10 = *(v55 + 4 * v8) & 3;
    if ((v9 & 3) == 0)
    {
      goto LABEL_26;
    }

    if (a7 == 2)
    {
      break;
    }

    if (a7 == 1)
    {
      v11 = 1;
      v12 = a1;
LABEL_25:
      if (__btrie_wildcard_match(v12, v9))
      {
        return v11;
      }
    }

LABEL_26:
    if (++v8 == 256)
    {
      return 0;
    }
  }

  if (v10 != 2)
  {
    if (v10 == 3)
    {
      v13 = 0;
      v14 = *(a1 + 8) + (v9 - 3) + 4;
      while (1)
      {
        v15 = *(v14 + v13);
        if ((v15 & 3) != 0)
        {
          if (__btrie_wildcard_match(a1, v15))
          {
            return 1;
          }
        }

        v13 += 4;
        if (v13 == 1024)
        {
          goto LABEL_26;
        }
      }
    }

    v11 = 1;
    v12 = a1;
    goto LABEL_25;
  }

  v16 = 0;
  v17 = *(a1 + 8) + (v9 - 2);
  v18 = (v17 + 4);
  v19 = v17 + 40;
  while (1)
  {
    v20 = v18[v16 >> 5];
    if ((v20 >> v16))
    {
      if (v16 >= 0x20)
      {
        v21 = 0;
        v22 = v16 >> 5;
        v23 = v18;
        do
        {
          v24 = *v23++;
          a3 = vcnt_s8(v24);
          a3.i16[0] = vaddlv_u8(a3);
          v21 += a3.i32[0];
          --v22;
        }

        while (v22);
      }

      else
      {
        v21 = 0;
      }

      a3.i32[0] = v20 & ~(-1 << (v16 & 0x1F));
      v25 = vcnt_s8(a3);
      v25.i16[0] = vaddlv_u8(v25);
      if (__btrie_wildcard_match(a1, *(v19 + 4 * (v25.i32[0] + v21))))
      {
        return 1;
      }
    }

    if (++v16 == 256)
    {
      goto LABEL_26;
    }
  }
}

BOOL __btrie_wildcardmatch_uint16(const unsigned __int16 *a1, uint64_t a2, const unsigned __int16 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = &a3[a4];
  v5 = a1;
  if (a4 >= 1)
  {
    do
    {
      v6 = *v5;
      if (v6 == 42)
      {
        break;
      }

      if (v6 != 63 && v6 != *a3)
      {
        return 0;
      }

      ++v5;
      ++a3;
    }

    while (a3 < v4);
  }

  v8 = &a1[a2];
  if (a3 < v4)
  {
    v9 = 0;
    v10 = 0;
    while (v5 < v8)
    {
      v11 = *v5;
      if (v11 == 42)
      {
        if (++v5 == v8)
        {
          return 1;
        }

        v10 = a3 + 1;
        v9 = v5;
      }

      else
      {
        if (v11 != 63 && v11 != *a3)
        {
          break;
        }

        ++v5;
        ++a3;
      }

LABEL_23:
      if (a3 >= v4)
      {
        goto LABEL_27;
      }
    }

    a3 = v10++;
    v5 = v9;
    goto LABEL_23;
  }

LABEL_27:
  while (v5 < v8 && *v5 == 42)
  {
    ++v5;
  }

  return v5 == v8;
}

BOOL __btrie_find_common_prefix(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, unint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint8x8_t a9, uint64_t a10)
{
  v16 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v16 == 2)
    {
      v21 = (*(a1 + 8) + (a2 - 2));
      v22 = *v21;
      if (*v21)
      {
        if (!a5)
        {
          ++*a6;
          if (!a4)
          {
            return 0;
          }

          goto LABEL_40;
        }

        if (a8)
        {
          *(a8 + 8 * *a6) = &a3[-a10];
        }

        v23 = *a6;
        v24 = *a6 + 1;
        *a6 = v24;
        *(a7 + 4 * v23) = v22;
        if (v24 >= a5)
        {
          return 1;
        }
      }

      if (!a4)
      {
        return 0;
      }

LABEL_40:
      v40 = *a3;
      v41 = (v21 + 1);
      v42 = v40 >> 5;
      v43 = v21[(v40 >> 5) + 1];
      if (((v43 >> v40) & 1) == 0)
      {
        return 0;
      }

      v44 = v40 & 0x1F;
      v45 = v21 + 10;
      if (v40 >= 0x20)
      {
        v46 = 0;
        do
        {
          v48 = *v41++;
          a9 = vcnt_s8(v48);
          a9.i16[0] = vaddlv_u8(a9);
          v46 += a9.i32[0];
          --v42;
        }

        while (v42);
      }

      else
      {
        v46 = 0;
      }

      a9.i32[0] = v43 & ~(-1 << v44);
      v49 = vcnt_s8(a9);
      v49.i16[0] = vaddlv_u8(v49);
      v50 = v45[v49.i32[0] + v46];
      return __btrie_find_common_prefix(a1) != 0;
    }

    v25 = (*(a1 + 8) + (a2 - 3));
    v26 = *v25;
    if (*v25)
    {
      if (!a5)
      {
        ++*a6;
        if (!a4)
        {
          return 0;
        }

        goto LABEL_44;
      }

      if (a8)
      {
        *(a8 + 8 * *a6) = &a3[-a10];
      }

      v27 = *a6;
      v28 = *a6 + 1;
      *a6 = v28;
      *(a7 + 4 * v27) = v26;
      if (v28 >= a5)
      {
        return 1;
      }
    }

    if (!a4)
    {
      return 0;
    }

LABEL_44:
    v47 = v25[*a3 + 1];
    return __btrie_find_common_prefix(a1) != 0;
  }

  if ((a2 & 3) != 0)
  {
    v17 = (*(a1 + 16) + (a2 - 1));
    v18 = v17[1];
    if (!v18)
    {
      goto LABEL_8;
    }

    if (a5)
    {
      if (a8)
      {
        *(a8 + 8 * *a6) = &a3[-a10];
      }

      v19 = *a6;
      v20 = *a6 + 1;
      *a6 = v20;
      *(a7 + 4 * v19) = v18;
      if (v20 < a5)
      {
LABEL_8:
        if (!a4)
        {
          return 0;
        }

LABEL_26:
        v29 = *v17;
        if (v29 >= 5)
        {
          v30 = v17 + v29;
          v31 = (v17 + 2);
          v32 = &a3[-a10];
          while (1)
          {
            v35 = *v31;
            v33 = v31 + 1;
            v34 = v35;
            if (v35 <= a4)
            {
              v36 = memcmp(v33, a3, v34);
              if (v36 > 0)
              {
                return 0;
              }

              if (!v36)
              {
                v37 = *a6;
                if (a5)
                {
                  if (a8)
                  {
                    *(a8 + 8 * v37) = &v32[v34];
                    v37 = *a6;
                  }

                  v38 = *&v33[v34];
                  *a6 = v37 + 1;
                  *(a7 + 4 * v37) = v38;
                  if (v37 + 1 >= a5)
                  {
                    return 1;
                  }
                }

                else
                {
                  *a6 = v37 + 1;
                }
              }
            }

            v39 = &v33[v34];
            v31 = &v33[v34 + 4];
            if (v39 >= v30)
            {
              return 0;
            }
          }
        }

        return 0;
      }

      return 1;
    }

    ++*a6;
    if (a4)
    {
      goto LABEL_26;
    }

    return 0;
  }

  return v16;
}

uint64_t __resize_array(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = 8 * a2;
  if (v4)
  {
    v7 = v4(v5, v6 + 16, *(a1 + 40));
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v7;
  }

  else
  {
    v7 = malloc_type_realloc(v5, v6 + 16, 0x1000040451B5BE8uLL);
    *a1 = v7;
    if (!*(a1 + 80))
    {
      *(a1 + 80) = 1;
    }
  }

  *(a1 + 8) = v7 + 16;
  if (!*(a1 + 32))
  {
    bzero(&v7[8 * *(a1 + 24) + 16], 8 * (a2 - *(a1 + 24)));
  }

  result = 0;
  *(a1 + 24) = a2;
  return result;
}

uint64_t __write_base(uint64_t result, unsigned int a2, int a3)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6 > a2 || (result = __resize_array(result, v6 + 0x2000), !result))
  {
    if (*(v5 + 16) < a2)
    {
      *(v5 + 16) = a2;
    }

    *(*(v5 + 8) + 8 * a2) = a3;
  }

  return result;
}

uint64_t __get_list(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 >= a2)
  {
    v4 = *(*(a1 + 8) + 8 * a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if (v3 >= v4 + v5)
    {
      v7 = *(*(a1 + 8) + 8 * (v4 + v5) + 4);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == a2)
    {
      *(a3 + 2 * v6++) = v5;
    }

    ++v5;
  }

  while (v5 != 257);
  return v6;
}

uint64_t __modify_array(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, __int16 a6, int a7)
{
  v12 = *(a1 + 16);
  if (v12 >= a3)
  {
    v35 = *(*(a1 + 8) + 8 * a3);
    if (a7)
    {
LABEL_3:
      v13 = 0;
      *(a4 + 2 * a5) = a6;
      v14 = 1;
      do
      {
        v15 = v14 + *(a4 + 2 * v13);
        v16 = v12 >= v15 && *(*(a1 + 8) + 8 * v15 + 4) != 0;
        ++v13;
        v17 = v15 == 1 || v16;
        v14 += v17;
        if (v17)
        {
          v13 = 0;
        }
      }

      while (v13 < a5 + 1);
      goto LABEL_25;
    }
  }

  else
  {
    v35 = 0;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v14 = 1;
  do
  {
    v19 = v14 + *(a4 + 2 * v18);
    v20 = v12 >= v19 && *(*(a1 + 8) + 8 * v19 + 4) != 0;
    ++v18;
    v21 = v19 == 1 || v20;
    v14 += v21;
    if (v21)
    {
      v18 = 0;
    }
  }

  while (v18 < a5);
LABEL_25:
  __write_base(a1, a3, v14);
  if (a5)
  {
    v22 = 0;
    do
    {
      v23 = *(a1 + 16);
      if (v23 >= a3)
      {
        v24 = *(*(a1 + 8) + 8 * a3);
      }

      else
      {
        v24 = 0;
      }

      v25 = *(a4 + 2 * v22);
      v26 = (v35 + v25);
      if (v23 >= v26)
      {
        v27 = *(*(a1 + 8) + 8 * (v35 + v25));
      }

      else
      {
        v27 = 0;
      }

      v28 = v24 + v25;
      __write_base(a1, v24 + v25, v27);
      __write_check(a1, v28, a3);
      if (*(a1 + 16) >= v26 && *(*(a1 + 8) + 8 * v26) >= 1)
      {
        for (i = 0; i != 257; ++i)
        {
          v30 = *(a1 + 16);
          if (v30 >= v26)
          {
            v31 = *(*(a1 + 8) + 8 * v26);
          }

          else
          {
            v31 = 0;
          }

          v32 = v31 + i;
          if (v31 + i > v30)
          {
            break;
          }

          if (*(*(a1 + 8) + 8 * v32 + 4) == v26)
          {
            __write_check(a1, v32, v28);
          }
        }
      }

      if (v26 != a2 || a2 == a3)
      {
        a2 = a2;
      }

      else
      {
        a2 = v28;
      }

      __write_base(a1, v26, 0);
      __write_check(a1, v26, 0);
      ++v22;
    }

    while (v22 != a5);
  }

  return a2;
}

uint64_t __write_check(uint64_t result, unsigned int a2, int a3)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6 > a2 || (result = __resize_array(result, v6 + 0x2000), !result))
  {
    if (*(v5 + 16) < a2)
    {
      *(v5 + 16) = a2;
    }

    *(*(v5 + 8) + 8 * a2 + 4) = a3;
  }

  return result;
}

uint64_t __get_children(uint64_t a1, void *a2, uint64_t a3)
{
  if ((*(a1 + 76) & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  if (v3 >= v4)
  {
    return 0;
  }

  result = 0;
  v7 = *(a1 + 56);
  v8 = 0xFFFFLL;
  do
  {
    v9 = *(v7 + 8 * v3);
    v10 = a2[3];
    if (v9 < v10)
    {
      goto LABEL_10;
    }

    if (v9 > v10)
    {
      v11 = *(*(*(a1 + 48) + 8 * v3) + v10) + 1;
    }

    else
    {
      v11 = 0;
    }

    if (v11 < v8)
    {
      result = 0;
      *(a1 + 76) = -1;
      return result;
    }

    if (v11 == v8)
    {
LABEL_10:
      v11 = v8;
    }

    else
    {
      if (result)
      {
        *(a3 - 16 + 32 * result) = v3;
      }

      v12 = a3 + 32 * result;
      *v12 = v11;
      *(v12 + 8) = v3;
      *(v12 + 24) = v10 + 1;
      ++result;
      v4 = a2[2];
    }

    ++v3;
    v8 = v11;
  }

  while (v3 < v4);
  if (result)
  {
    *(a3 + 32 * result - 16) = v4;
  }

  return result;
}

uint64_t __insert_nodes(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v32[1028] = *MEMORY[0x277D85DE8];
  if ((*(v1 + 76) & 0x80000000) != 0)
  {
    v18 = 0;
    goto LABEL_30;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = 0;
  v10 = &v4[16 * v3];
  v12 = v4 + 16;
  v11 = *v4;
  v13 = *(v10 - 16) - v11;
  if (*(v1 + 72) <= (v11 + 1))
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = *(v1 + 72);
  }

  v15 = v3 - 1;
  while (1)
  {
    v16 = *(v8 + 24);
    if (v13 + v14 >= v16 && __resize_array(v8, v16 + 0x2000))
    {
LABEL_29:
      v18 = 0;
      *(v8 + 76) = -2;
      goto LABEL_30;
    }

    v17 = *(v8 + 8);
    if (!*(v17 + 8 * v14 + 4))
    {
      break;
    }

LABEL_16:
    ++v14;
  }

  if (!v9)
  {
    *(v8 + 72) = v14 + 1;
  }

  v18 = v14 - *v5;
  v19 = v12;
  v20 = v15;
  if (v6 >= 2)
  {
    while (1)
    {
      v21 = *v19;
      v19 += 16;
      if (*(v17 + 8 * (v18 + v21) + 4))
      {
        break;
      }

      if (!--v20)
      {
        v22 = v5;
        v23 = v6;
        goto LABEL_17;
      }
    }

    v9 = 1;
    goto LABEL_16;
  }

  v22 = v5;
  v23 = v6;
  if (v6)
  {
    do
    {
LABEL_17:
      v24 = *v22;
      v22 += 16;
      *(v17 + 8 * (v18 + v24) + 4) = v7;
      --v23;
    }

    while (v23);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v18 + *(v10 - 16);
  if (*(v8 + 16) < v26)
  {
    *(v8 + 16) = v26;
  }

  if ((v25 & 1) == 0)
  {
    do
    {
      v27 = (v18 + *v5);
      children = __get_children(v8, v5, v32);
      if (children)
      {
        inserted = __insert_nodes(v8, v27, children, v32);
        if (inserted < 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        inserted = -*(*(v8 + 64) + 4 * *(v5 + 1));
      }

      *(*(v8 + 8) + 8 * v27) = inserted;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

LABEL_30:
  v30 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __btrie_insert_fat(uint64_t result, int a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v5 = *(result + 56);
  v6 = 4 * (a2 & 0x3FFFFFFF);
  v7 = (v5 + v6);
  if (!a4)
  {
    goto LABEL_28;
  }

  v8 = a4;
  v10 = result;
  while (1)
  {
    v11 = *a3;
    v12 = v7 + 1;
    v13 = v7[v11 + 1];
    v14 = v7[v11 + 1] & 3;
    result = v13 >> 2;
    if ((v13 & 3) > 1)
    {
      break;
    }

    if (v14)
    {
      goto LABEL_22;
    }

    v15 = *(v10 + 80);
    if (v15 != *(v10 + 72))
    {
      v15 = (*(v10 + 80) & 0xFFFFFFFCLL) + *(*(v10 + 120) + (*(v10 + 80) & 0xFFFFFFFCLL)) + 4;
      *(v10 + 72) = v15;
    }

    v16 = v15 + 3;
    v17 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 + *(v10 + 200);
    for (i = *(v10 + 64); v18 > i; *(v10 + 64) = i)
    {
      i *= 2;
      if (*(v10 + 88))
      {
        v20 = *(v10 + 104);
        v21 = *(v10 + 120);
        if (v20)
        {
          *(v10 + 120) = v20(v21, i, *(v10 + 112));
          continue;
        }

        v22 = malloc_type_realloc(v21, i, 0x100004077774924uLL);
        *(v10 + 120) = v22;
        **(v10 + 96) = 1;
      }

      else
      {
        v22 = malloc_type_realloc(*(v10 + 120), i, 0x100004077774924uLL);
        *(v10 + 120) = v22;
        if (!v22)
        {
          v28 = 0;
          goto LABEL_21;
        }
      }

      bzero(&v22[*(v10 + 64)], i - *(v10 + 64));
    }

    *(v10 + 72) = v18;
    *(v10 + 80) = v17;
    v28 = (v16 >> 2) | 0x100000000;
LABEL_21:
    v12[v11] = HIDWORD(v28) | (4 * v28);
    result = v28;
LABEL_22:
    v24 = (*(v10 + 120) + 4 * (result & 0x3FFFFFFF));
    v23 = v8 - 1;
    if (v8 == 1)
    {
      v24[1] = a5;
      v29 = 4;
LABEL_31:
      *v24 = v29;
      return result;
    }

    v25 = *v24;
    if (!v25)
    {
      *v24 = 4;
      v25 = 4;
    }

    ++a3;
    v26 = (v8 + 4);
    v27 = v25 + 4;
    if (v27 + v26 < *(v10 + 200))
    {
      *(v24 + v27) = v8 - 1;
      v30 = v24 + v27 + 1;
      result = memcpy(v30, a3, (v8 - 1));
      *&v30[v23] = a5;
      v29 = *v24 + v26;
      goto LABEL_31;
    }

    result = __btrie_burst_flat(v10);
    v5 = *(v10 + 56);
    *(v5 + v6 + 4 * v11 + 4) = HIDWORD(result) | (4 * result);
LABEL_27:
    v6 = 4 * (result & 0x3FFFFFFF);
    v7 = (v5 + v6);
    v8 = v23;
    if (!v23)
    {
LABEL_28:
      *v7 = a5;
      return result;
    }
  }

  if (v14 == 3)
  {
    ++a3;
    v23 = v8 - 1;
    goto LABEL_27;
  }

  return result;
}

uint64_t __btrie_burst_flat(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 200);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = (v23 - ((v4 + 19) & 0x1FFFFFFF0));
  v7 = 4 * (v6 & 0x3FFFFFFF);
  v8 = (*(v3 + 120) + v7);
  v9 = *v8;
  *v5 = v9;
  memcpy(v5 + 1, v8 + 1, v9);
  if (*(a1 + 80) == v7)
  {
    bzero(v8, *(a1 + 72) - v7);
    *(a1 + 72) = *(a1 + 80);
  }

  v10 = *a1;
  v11 = *(a1 + 8) + 3;
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 1028;
  if (v12 > *a1)
  {
    while (1)
    {
      v10 *= 2;
      if (!*(a1 + 24))
      {
        break;
      }

      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      if (!v13)
      {
        v15 = malloc_type_realloc(v14, v10, 0x100004077774924uLL);
        *(a1 + 56) = v15;
        **(a1 + 32) = 1;
LABEL_10:
        bzero(&v15[*a1], v10 - *a1);
        goto LABEL_11;
      }

      *(a1 + 56) = v13(v14, v10, *(a1 + 48));
LABEL_11:
      *a1 = v10;
      if (v12 <= v10)
      {
        goto LABEL_12;
      }
    }

    v15 = malloc_type_realloc(*(a1 + 56), v10, 0x100004077774924uLL);
    *(a1 + 56) = v15;
    if (!v15)
    {
      v22 = 0;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_12:
  *(a1 + 8) = v12;
  *(a1 + 16) = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v11 >> 2) | 0x300000000;
LABEL_13:
  *(*(a1 + 56) + 4 * (v22 & 0x3FFFFFFF)) = v5[1];
  if (v9 >= 5)
  {
    v16 = v5 + v9;
    v17 = (v5 + 2);
    do
    {
      v18 = &v17[*v17 + 1];
      v19 = *v18;
      __btrie_insert_fat(a1, v22);
      v17 = v18 + 4;
    }

    while (v18 < v16);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v22;
}

unint64_t __btrie_build_compact_trie(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a2;
  v5 = HIDWORD(a2);
  if (HIDWORD(a2) != 3)
  {
    return v4 | (v5 << 32);
  }

  v8 = 0;
  v9 = (*(a1 + 56) + 4 * (a2 & 0x3FFFFFFF));
  v10 = v9 + 1;
  v11 = 0uLL;
  v12.i64[0] = 0x300000003;
  v12.i64[1] = 0x300000003;
  do
  {
    v11 = vsubq_s32(v11, vtstq_s32(*&v10[v8], v12));
    v8 += 4;
  }

  while (v8 != 256);
  if (a4 || (v11.n128_u32[0] = vaddvq_s32(v11), v13 = v11.n128_u8[0], v11.n128_u32[0] >= 0x21))
  {
    v26 = *a3;
    v27 = *(a3 + 8) + 3;
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL) + 1028;
    if (v28 <= *a3)
    {
LABEL_30:
      *(a3 + 8) = v28;
      *(a3 + 16) = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v4 = (v27 >> 2) | 0x300000000;
LABEL_31:
      v32 = 0;
      v33 = 4 * (v4 & 0x3FFFFFFF);
      *(*(a3 + 56) + v33) = *v9;
      v34 = v33 + 4;
      do
      {
        v35 = __btrie_build_compact_trie(a1, (v10[v32] >> 2) | ((v10[v32] & 3) << 32), a3, 0, v11);
        *(*(a3 + 56) + v34) = HIDWORD(v35) + 4 * v35;
        v34 += 4;
        ++v32;
      }

      while (v32 != 256);
      goto LABEL_33;
    }

    while (1)
    {
      v26 *= 2;
      if (!*(a3 + 24))
      {
        break;
      }

      v29 = *(a3 + 40);
      v30 = *(a3 + 56);
      if (!v29)
      {
        v31 = malloc_type_realloc(v30, v26, 0x100004077774924uLL);
        *(a3 + 56) = v31;
        **(a3 + 32) = 1;
LABEL_28:
        bzero(&v31[*a3], v26 - *a3);
        goto LABEL_29;
      }

      *(a3 + 56) = v29(v30, v26, *(a3 + 48), v11);
LABEL_29:
      *a3 = v26;
      if (v28 <= v26)
      {
        goto LABEL_30;
      }
    }

    v31 = malloc_type_realloc(*(a3 + 56), v26, 0x100004077774924uLL);
    *(a3 + 56) = v31;
    if (!v31)
    {
      v4 = 0;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v14 = *a3;
  v15 = *(a3 + 8) + 3;
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 4 * v11.n128_u32[0] + 40;
  if (v16 <= *a3)
  {
LABEL_15:
    *(a3 + 8) = v16;
    *(a3 + 16) = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v4 = (v15 >> 2) | 0x200000000;
    goto LABEL_16;
  }

  while (1)
  {
    v14 *= 2;
    if (!*(a3 + 24))
    {
      break;
    }

    v17 = *(a3 + 40);
    v18 = *(a3 + 56);
    if (!v17)
    {
      v19 = malloc_type_realloc(v18, v14, 0x100004077774924uLL);
      *(a3 + 56) = v19;
      **(a3 + 32) = 1;
      goto LABEL_13;
    }

    *(a3 + 56) = v17(v18, v14, *(a3 + 48));
LABEL_14:
    *a3 = v14;
    if (v16 <= v14)
    {
      goto LABEL_15;
    }
  }

  v19 = malloc_type_realloc(*(a3 + 56), v14, 0x100004077774924uLL);
  *(a3 + 56) = v19;
  if (v19)
  {
LABEL_13:
    bzero(&v19[*a3], v14 - *a3);
    goto LABEL_14;
  }

  v4 = 0;
LABEL_16:
  v20 = 0;
  v21 = 4 * (v4 & 0x3FFFFFFF);
  v22 = *(a3 + 56) + v21;
  *v22 = *v9;
  *(v22 + 37) = v13;
  do
  {
    v23 = __btrie_build_compact_trie(a1, (v10[v20] >> 2) | ((v10[v20] & 3) << 32), a3, 0, v11);
    if (HIDWORD(v23))
    {
      v24 = *(a3 + 56) + v21;
      v25 = *(v24 + 36);
      *(v24 + 36) = v25 + 1;
      *(v24 + 4 * v25 + 40) = HIDWORD(v23) + 4 * v23;
      *(v24 + 4 * (v20 >> 5) + 4) |= 1 << v20;
    }

    ++v20;
  }

  while (v20 != 256);
LABEL_33:
  v5 = HIDWORD(v4);
  return v4 | (v5 << 32);
}

uint64_t DCSSearchSession::DCSSearchSession(uint64_t a1, DCSDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *a1 = DCSSearchSession::createSessionRef(a1);
  *(a1 + 8) = a2;
  *(a1 + 56) = CFRetain(a3);
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  if (*a6)
  {
    v12 = *a6;
    v13 = a6[1];
    *(a1 + 48) = *(a6 + 4);
    *(a1 + 16) = v12;
    *(a1 + 32) = v13;
    v14 = *(a1 + 32);
    if (v14)
    {
      *(a1 + 32) = CFStringCreateCopy(0, v14);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    v15 = *(a6 + 1);
    *(a1 + 16) = 0;
    *(a1 + 24) = v15;
    *(a1 + 40) = a6[1];
  }

  *(a1 + 80) = DCSDictionary::createSessionInfo(a2, a1, a3);
  return a1;
}

uint64_t DCSSearchSession::createSessionRef(DCSSearchSession *this)
{
  pthread_once(&_DCSSearchSessionClassID(void)::once_control, _DCSSearchSessionInitialize);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = this;
  }

  return result;
}

void DCSSearchSession::~DCSSearchSession(DCSSearchSession *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    DCSDictionary::releaseSessionInfo(*(this + 1), v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void *DCSSearchSession::didFindRecord(void *this, const __CFArray *a2)
{
  v2 = this[5];
  if (v2)
  {
    return v2(*this, a2, this[3]);
  }

  return this;
}

void DCSSearchSession::didFinishSearch(DCSSearchSession *this, CFTypeRef cf)
{
  v2 = *(this + 6);
  if (v2)
  {
    v2(*this, cf, *(this + 3));
  }

  else if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _DCSSearchSessionInitialize(void)
{
  result = _CFRuntimeRegisterClass();
  _DCSSearchSessionID = result;
  return result;
}

DCSSearchSession *_DCSSearchSessionFinalize(void *a1)
{
  result = a1[2];
  if (result)
  {
    DCSSearchSession::~DCSSearchSession(result);

    JUMPOUT(0x223D5E5E0);
  }

  return result;
}

CFStringRef _DCSSearchSessionCopyFormattingDesc(void *a1, const __CFDictionary *a2)
{
  v3 = a1[2];
  v4 = CFGetAllocator(a1);
  v5 = DCSDictionary::identifier(*(v3 + 8));
  return CFStringCreateWithFormat(v4, a2, @"<session for %@>", v5);
}

CFStringRef _DCSSearchSessionCopyDebugDesc(void *a1)
{
  v1 = a1[2];
  v2 = CFGetAllocator(a1);
  v3 = DCSDictionary::identifier(*(v1 + 8));
  v4 = *(v1 + 32);
  if (!v4)
  {
    v4 = &stru_282F97070;
  }

  return CFStringCreateWithFormat(v2, 0, @"<DCSSearchSessionRef %p>{dict:%@, client:%@}", v1, v3, v4);
}

void DCSBaseDictionary::DCSBaseDictionary(DCSBaseDictionary *this, CFURLRef relativeURL)
{
  *this = &unk_282F96600;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 20) = 0;
  *(this + 168) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 22) = -1;
  v3 = CFURLCopyAbsoluteURL(relativeURL);
  *(this + 3) = v3;
  v4 = CFURLCreateCopyDeletingPathExtension(0, v3);
  *(this + 4) = CFURLCopyLastPathComponent(v4);
  CFRelease(v4);
  pthread_mutex_init((this + 184), 0);
}

void DCSBaseDictionary::~DCSBaseDictionary(DCSBaseDictionary *this)
{
  *this = &unk_282F96600;
  CFRelease(*(this + 3));
  CFRelease(*(this + 4));
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    CFRelease(v9);
  }

  pthread_mutex_destroy((this + 184));
}

CFStringRef DCSBaseDictionary::identifier(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetIdentifier(v3);
  }

  return result;
}

uint64_t DCSBaseDictionary::baseURL(DCSBaseDictionary *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = (*(*this + 376))(this);
    v4 = CFBundleCopyBundleURL(v3);
    *(this + 6) = CFURLCreateCopyAppendingPathComponent(0, v4, @"Contents/Info.plist", 0);
    CFRelease(v4);
    return *(this + 6);
  }

  return result;
}

CFTypeRef DCSBaseDictionary::name(DCSBaseDictionary *this)
{
  if (!(*(*this + 376))(this) || (v2 = (*(*this + 376))(this), (result = CFBundleGetValueForInfoDictionaryKey(v2, @"CFBundleDisplayName")) == 0))
  {
    v4 = *(*this + 368);

    return v4(this);
  }

  return result;
}

CFTypeRef DCSBaseDictionary::shortName(DCSBaseDictionary *this)
{
  if (!(*(*this + 376))(this) || (v2 = (*(*this + 376))(this), (result = CFBundleGetValueForInfoDictionaryKey(v2, @"CFBundleName")) == 0))
  {
    v4 = *(*this + 368);

    return v4(this);
  }

  return result;
}

CFTypeRef DCSBaseDictionary::detailedShortName(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"DCSDictionaryDetailedDisplayName");
  }

  return result;
}

CFTypeRef DCSBaseDictionary::nativeShortName(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"DCSDictionaryNativeDisplayName");
  }

  return result;
}

CFTypeRef DCSBaseDictionary::typeName(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"DCSDictionaryTypeDisplayName");
  }

  return result;
}

CFTypeRef DCSBaseDictionary::version(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"CFBundleShortVersionString");
  }

  return result;
}

CFTypeRef DCSBaseDictionary::primaryLanguage(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"DCSDictionaryPrimaryLanguage");
  }

  return result;
}

CFTypeRef DCSBaseDictionary::languages(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"DCSDictionaryLanguages");
  }

  return result;
}

uint64_t DCSBaseDictionary::styleSheetURLs(DCSBaseDictionary *this)
{
  if ((*(this + 72) & 1) == 0)
  {
    pthread_mutex_lock((this + 184));
    if (*(this + 72))
    {
LABEL_18:
      pthread_mutex_unlock((this + 184));
      return *(this + 10);
    }

    if ((*(*this + 376))(this) && (v2 = (*(*this + 376))(this), (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v2, @"DCSDictionaryStyleSheets")) != 0))
    {
      v4 = ValueForInfoDictionaryKey;
      CFRetain(ValueForInfoDictionaryKey);
    }

    else if (!(*(*this + 376))(this) || (v5 = (*(*this + 376))(this), (values = CFBundleGetValueForInfoDictionaryKey(v5, @"DCSDictionaryCSS")) == 0) || (v4 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128])) == 0)
    {
LABEL_17:
      *(this + 72) = 1;
      goto LABEL_18;
    }

    *(this + 10) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v10 = (*(*this + 32))(this);
        v11 = CFURLCreateWithString(0, ValueAtIndex, v10);
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(*(this + 10), v11);
          CFRelease(v12);
        }
      }
    }

    if (!CFArrayGetCount(*(this + 10)))
    {
      CFRelease(*(this + 10));
      *(this + 10) = 0;
    }

    CFRelease(v4);
    goto LABEL_17;
  }

  return *(this + 10);
}

uint64_t DCSBaseDictionary::styleSheetContents(DCSBaseDictionary *this)
{
  if ((*(this + 88) & 1) == 0)
  {
    pthread_mutex_lock((this + 184));
    if (*(this + 88))
    {
LABEL_28:
      pthread_mutex_unlock((this + 184));
      return *(this + 12);
    }

    if ((*(*this + 376))(this) && (v2 = (*(*this + 376))(this), (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v2, @"DCSDictionaryStyleSheets")) != 0))
    {
      v4 = ValueForInfoDictionaryKey;
      CFRetain(ValueForInfoDictionaryKey);
    }

    else if (!(*(*this + 376))(this) || (v5 = (*(*this + 376))(this), (values = CFBundleGetValueForInfoDictionaryKey(v5, @"DCSDictionaryCSS")) == 0) || (v4 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128])) == 0)
    {
LABEL_27:
      *(this + 88) = 1;
      goto LABEL_28;
    }

    *(this + 12) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; v7 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v10 = (*(*this + 384))(this, ValueAtIndex, 1, 0);
        if (v10)
        {
          v11 = v10;
          v12 = (*(*this + 24))(this);
          if (v12 && CFStringHasPrefix(v12, @"com.apple.dictionary.") || (v13 = DetectEncodingOfStringData(v11), v13 == -1))
          {
            v14 = CFStringCreateFromExternalRepresentation(0, v11, 0x8000100u);
            if (v14)
            {
              v15 = v14;
              CFRelease(v11);
LABEL_19:
              if (CFStringGetLength(v15) >= 1)
              {
                if (CFStringGetCharacterAtIndex(v15, 0) == 65279)
                {
                  v19.length = CFStringGetLength(v15) - 1;
                  v19.location = 1;
                  v16 = CFStringCreateWithSubstring(0, v15, v19);
                  CFRelease(v15);
                  v15 = v16;
                }

                CFArrayAppendValue(*(this + 12), v15);
                CFRelease(v15);
              }

              continue;
            }

            v13 = 256;
          }

          v15 = CFStringCreateFromExternalRepresentation(0, v11, v13);
          CFRelease(v11);
          if (v15)
          {
            goto LABEL_19;
          }
        }
      }
    }

    if (!CFArrayGetCount(*(this + 12)))
    {
      CFRelease(*(this + 12));
      *(this + 12) = 0;
    }

    CFRelease(v4);
    goto LABEL_27;
  }

  return *(this + 12);
}

uint64_t DCSBaseDictionary::privateFontURLs(DCSBaseDictionary *this)
{
  if ((*(this + 104) & 1) == 0)
  {
    pthread_mutex_lock((this + 184));
    if ((*(this + 104) & 1) == 0)
    {
      if ((*(*this + 376))(this))
      {
        v2 = (*(*this + 376))(this);
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v2, @"DCSDictionaryPrivateFonts");
        if (ValueForInfoDictionaryKey)
        {
          v4 = ValueForInfoDictionaryKey;
          *(this + 14) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          Count = CFArrayGetCount(v4);
          if (Count >= 1)
          {
            v6 = Count;
            for (i = 0; i != v6; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
              value = 0;
              (*(*this + 384))(this, ValueAtIndex, 0, &value);
              if (value)
              {
                CFArrayAppendValue(*(this + 14), value);
                CFRelease(value);
              }
            }
          }

          if (!CFArrayGetCount(*(this + 14)))
          {
            CFRelease(*(this + 14));
            *(this + 14) = 0;
          }
        }
      }

      *(this + 104) = 1;
    }

    pthread_mutex_unlock((this + 184));
  }

  return *(this + 14);
}

uint64_t DCSBaseDictionary::XSLTData(DCSBaseDictionary *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    pthread_mutex_lock((this + 184));
    if ((*(this + 56) & 1) == 0)
    {
      if ((*(*this + 376))(this))
      {
        v2 = (*(*this + 376))(this);
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v2, @"DCSDictionaryXSL");
        if (ValueForInfoDictionaryKey)
        {
          *(this + 8) = (*(*this + 384))(this, ValueForInfoDictionaryKey, 1, 0);
        }
      }

      *(this + 56) = 1;
    }

    pthread_mutex_unlock((this + 184));
  }

  return *(this + 8);
}

CFTypeRef DCSBaseDictionary::elementXPaths(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"DCSElementXPath");
  }

  return result;
}

uint64_t DCSBaseDictionary::preferenceHTML(DCSBaseDictionary *this)
{
  if ((*(this + 120) & 1) == 0)
  {
    pthread_mutex_lock((this + 184));
    if ((*(this + 120) & 1) == 0)
    {
      if ((*(*this + 376))(this))
      {
        v2 = (*(*this + 376))(this);
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v2, @"DCSDictionaryPrefsHTML");
        if (ValueForInfoDictionaryKey)
        {
          v4 = (*(*this + 384))(this, ValueForInfoDictionaryKey, 1, 0);
          if (v4)
          {
            v5 = v4;
            BytePtr = CFDataGetBytePtr(v4);
            Length = CFDataGetLength(v5);
            *(this + 16) = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 0);
            CFRelease(v5);
          }
        }
      }

      *(this + 120) = 1;
    }

    pthread_mutex_unlock((this + 184));
  }

  return *(this + 16);
}

uint64_t DCSBaseDictionary::preference(DCSBaseDictionary *this)
{
  if ((*(this + 136) & 1) == 0)
  {
    if ((*(*this + 376))(this))
    {
      v2 = (*(*this + 176))(this);
      *(this + 18) = v2;
      if (v2)
      {
        CFRetain(v2);
      }
    }

    else
    {
      *(this + 18) = 0;
    }

    *(this + 136) = 1;
  }

  return *(this + 18);
}

CFTypeRef DCSBaseDictionary::defaultPreference(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);

    return CFBundleGetValueForInfoDictionaryKey(v3, @"DCSDictionaryDefaultPrefs");
  }

  return result;
}

void DCSBaseDictionary::setPreference(DCSBaseDictionary *this, CFTypeRef cf)
{
  *(this + 136) = 1;
  CFRetain(cf);
  v4 = *(this + 18);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 18) = cf;
}

const __CFBoolean *DCSBaseDictionary::isSortableDictionary(DCSBaseDictionary *this)
{
  result = (*(*this + 376))(this);
  if (result)
  {
    v3 = (*(*this + 376))(this);
    result = CFBundleGetValueForInfoDictionaryKey(v3, @"DCSDictionarySortAllowed_iOS");
    if (result)
    {
      return (CFBooleanGetValue(result) != 0);
    }
  }

  return result;
}

BOOL DCSBaseDictionary::isAppearanceAwareDictionary(DCSBaseDictionary *this)
{
  v1 = this;
  if (*(this + 168) == 1)
  {
    LODWORD(this) = *(this + 169);
  }

  else
  {
    *(this + 168) = 1;
    this = (*(*this + 376))(this);
    if (this)
    {
      v2 = (*(*v1 + 376))(v1);
      this = CFBundleGetValueForInfoDictionaryKey(v2, @"DCSDictionaryUseSystemAppearance");
      if (this)
      {
        LODWORD(this) = CFBooleanGetValue(this);
      }
    }

    *(v1 + 169) = this;
  }

  return this != 0;
}

BOOL DCSBaseDictionary::isLanguageDictionary(DCSBaseDictionary *this)
{
  v2 = (*(*this + 96))(this);
  if ((*(*this + 88))(this))
  {
    return 1;
  }

  if (v2)
  {
    return CFArrayGetCount(v2) > 1;
  }

  return 0;
}

uint64_t DCSBaseDictionary::previewMarkupVersion(DCSBaseDictionary *this)
{
  v3 = (this + 176);
  result = *(this + 22);
  if (result == -1)
  {
    result = (*(*this + 376))(this);
    if (result)
    {
      v4 = (*(*this + 376))(this);
      result = CFBundleGetValueForInfoDictionaryKey(v4, @"DCSDictionaryPreviewMarkupVersion");
      if (result)
      {
        result = CFNumberGetValue(result, kCFNumberCFIndexType, v3);
      }
    }

    *v3 = result;
  }

  return result;
}

BOOL DCSBaseDictionary::isSupportedDefinitionStyle(DCSBaseDictionary *this, uint64_t a2)
{
  if (!*(this + 20))
  {
    if (!(*(*this + 376))(this) || (v4 = (*(*this + 376))(this), (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v4, @"DCSDictionaryDefinitionDataType")) == 0))
    {
      v8 = 1;
      goto LABEL_9;
    }

    v6 = ValueForInfoDictionaryKey;
    Count = CFArrayGetCount(ValueForInfoDictionaryKey);
    v11.location = 0;
    v11.length = Count;
    if (CFArrayGetFirstIndexOfValue(v6, v11, @"DCSDictionaryDefinitionDataXML") != -1)
    {
      *(this + 20) |= 1uLL;
    }

    v12.location = 0;
    v12.length = Count;
    if (CFArrayGetFirstIndexOfValue(v6, v12, @"DCSDictionaryDefinitionDataRTFD") != -1)
    {
      v8 = *(this + 20) | 2;
LABEL_9:
      *(this + 20) = v8;
    }
  }

  v9 = 1;
  if (a2 == 4)
  {
    v9 = 2;
  }

  return (*(this + 20) & v9) != 0;
}

CFBundleRef DCSBaseDictionary::bundle(DCSBaseDictionary *this)
{
  result = *(this + 5);
  if (!result)
  {
    v3 = (*(*this + 16))(this);
    result = CFBundleCreate(0, v3);
    *(this + 5) = result;
  }

  return result;
}

CFDataRef DCSBaseDictionary::resourceData(DCSBaseDictionary *this, const __CFString *a2, int a3, const __CFURL **a4)
{
  resourceData = 0;
  v8 = (*(*this + 16))(this);
  v9 = CFURLCreateCopyAppendingPathComponent(0, v8, @"Contents", 1u);
  v10 = CFURLCreateCopyAppendingPathComponent(0, v9, a2, 0);
  CFRelease(v9);
  if (a3)
  {
    if (CFURLCreateDataAndPropertiesFromResource(0, v10, &resourceData, 0, 0, 0))
    {
      goto LABEL_11;
    }
  }

  else if (ItemExistsAtURL(v10))
  {
    goto LABEL_11;
  }

  CFRelease(v10);
  v11 = (*(*this + 376))(this);
  v12 = CFBundleCopyResourceURL(v11, a2, 0, 0);
  v10 = v12;
  if (v12)
  {
    if (a3)
    {
      if (CFURLCreateDataAndPropertiesFromResource(0, v12, &resourceData, 0, 0, 0))
      {
        goto LABEL_11;
      }
    }

    else if (ItemExistsAtURL(v12))
    {
      goto LABEL_11;
    }

    CFRelease(v10);
    v10 = 0;
  }

LABEL_11:
  if (a4)
  {
    *a4 = v10;
  }

  else if (v10)
  {
    CFRelease(v10);
  }

  return resourceData;
}

void InspectorAccessContext::InspectorAccessContext(InspectorAccessContext *this, IDXIndexInfo *a2)
{
  v3 = IDXAccessContext::IDXAccessContext(this, a2);
  *v3 = &unk_282F967A8;
  *(v3 + 56) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v4 = IDXIndexInfo::relativePath(*(v3 + 8));
  *(this + 64) = CFStringCompare(v4, @"NumberValue.index", 0) == kCFCompareEqualTo;
}

void InspectorAccessContext::~InspectorAccessContext(InspectorAccessContext *this)
{
  IDXAccessContext::~IDXAccessContext(this);

  JUMPOUT(0x223D5E5E0);
}

BOOL InspectorAccessContext::setSearchCharacters(InspectorAccessContext *this, const unsigned __int16 *__src, unint64_t a3, const __CFString *a4)
{
  v8 = *(this + 4);
  if (!v8)
  {
    operator new[]();
  }

  if (a3 <= 0x80)
  {
    *(this + 5) = a3;
    memcpy(v8, __src, 2 * a3);
    *(this + 3) = CFRetain(a4);
    v9 = *(this + 7);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFStringCreateWithBytes(0, __src, 2 * a3, 0x100u, 0);
    *(this + 6) = 0;
    *(this + 7) = v10;
  }

  return a3 < 0x81;
}

uint64_t InspectorAccessContext::getMatchData(InspectorAccessContext *this, uint64_t a2, uint64_t a3, CFRange *a4, CFRange **a5, uint64_t *a6)
{
  result = 0;
  *a6 = 0;
  if (*(this + 6) > 0)
  {
    return result;
  }

  if (*(this + 64) == 1)
  {
    v10 = a3 - 4;
    a4->location = a3 - 4;
    a4->length = 4;
    if (CFStringCompare(*(this + 7), @"openCount", 0) == kCFCompareEqualTo)
    {
      v12 = IDXIndexInfo::openCount(*(this + 1));
      goto LABEL_13;
    }

    if (CFStringCompare(*(this + 7), @"initiallyOpenedCallCount", 0) == kCFCompareEqualTo)
    {
      v12 = InspectorAccessContext::_initiallyOpenedCallCount;
      goto LABEL_13;
    }

    v11 = CFStringCompare(*(this + 7), @"lastlyClosedCallCount", 0);
    result = 0;
    if (v11 == kCFCompareEqualTo)
    {
      v12 = InspectorAccessContext::_lastlyClosedCallCount;
LABEL_13:
      *(&a4->location + v10) = v12;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *(this + 5);
    v14 = a3 - 2 * v13;
    a4->location = v14 - 2;
    a4->length = 2 * v13 + 2;
    *(a4 + v14 - 2) = 2 * v13;
    v15 = *(this + 5);
    if (v15 < 1)
    {
LABEL_14:
      result = 1;
      goto LABEL_15;
    }

    v16 = a4 + v14;
    v17 = *(this + 4) - 2;
    result = 1;
    do
    {
      *v16 = *(v17 + 2 * v15);
      v16 += 2;
      --v15;
    }

    while (v15);
  }

LABEL_15:
  if (a5)
  {
    *a5 = a4;
  }

  *(this + 6) += result;
  return result;
}

CFIndex InspectorAccessContext::getDataByID(InspectorAccessContext *this, uint64_t a2, CFIndex a3, unsigned __int8 *a4)
{
  v7 = CFTimeZoneCopySystem();
  v8 = *&CFAbsoluteTimeGetGregorianDate(a2, v7);
  CFRelease(v7);
  v9 = CFStringCreateWithFormat(0, 0, @"%02d/%02d/%04d", ((v8 >> 8) >> 24), ((v8 >> 16) >> 24), v8);
  usedBufLen = 0;
  v12.length = CFStringGetLength(v9);
  v12.location = 0;
  CFStringGetBytes(v9, v12, 0x8000100u, 0, 0, a4, a3, &usedBufLen);
  CFRelease(v9);
  return usedBufLen;
}

BOOL InspectorAccessContext::createIndexFile(InspectorAccessContext *this, IDXIndexInfo *a2)
{
  v3 = CFWriteStreamCreateWithFile(0, *this);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFWriteStreamOpen(v3))
  {
    v5 = CFPropertyListWriteToStream(*(this + 1), v4, kCFPropertyListXMLFormat_v1_0, 0);
    CFWriteStreamClose(v4);
    v6 = v5 > 0;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

uint64_t InspectorAccessContext::initializeSubclass(InspectorAccessContext *this, int a2, void **a3)
{
  if (a2)
  {
    ++InspectorAccessContext::_initiallyOpenedCallCount;
  }

  return 1;
}

void InspectorAccessContext::finalizeSubclass(InspectorAccessContext *this, int a2)
{
  if (a2)
  {
    ++InspectorAccessContext::_lastlyClosedCallCount;
  }
}

const void *DCSDictionaryCreateWithAssetAttributes(const __CFDictionary *a1, const __CFURL *a2)
{
  Value = CFDictionaryGetValue(a1, @"DictionaryPackageName");
  v4 = CFURLCreateCopyAppendingPathComponent(0, a2, Value, 1u);
  v5 = DCSDictionaryCreate(v4);
  CFRelease(v4);
  return v5;
}

void DCSDictionaryAssetAttributesDownloaded(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"DictionaryPackageName");
    if (Value)
    {
      v3 = Value;
      CFRetain(Value);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __DCSDictionaryAssetAttributesDownloaded_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);
      DCSMAUpdateLinguisticDataForDictionaryAssetAttribute(a1, 1);
    }
  }
}

void __DCSDictionaryAssetAttributesDownloaded_block_invoke(uint64_t a1)
{
  __DCSDictionaryAssetUpdatePreferences(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __DCSDictionaryAssetUpdatePreferences(const void *a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v6 = DCSCopySharedPreferenceValue(@"DCSAssetPreferenceKeyDownloadedDictionaries", 0, 0);
  if (v6)
  {
    v7 = v6;
    v17.length = CFArrayGetCount(v6);
    v17.location = 0;
    CFArrayAppendArray(Mutable, v7, v17);
    CFRelease(v7);
  }

  v8.length = CFArrayGetCount(Mutable);
  v8.location = 0;
  if (a2)
  {
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v8, a1);
    if (FirstIndexOfValue == -1)
    {
      goto LABEL_9;
    }

    CFArrayRemoveValueAtIndex(Mutable, FirstIndexOfValue);
  }

  else
  {
    if (CFArrayContainsValue(Mutable, v8, a1))
    {
      goto LABEL_9;
    }

    CFArrayAppendValue(Mutable, a1);
  }

  DCSUpdateSharedPreferenceValue(@"DCSAssetPreferenceKeyDownloadedDictionaries", Mutable);
LABEL_9:
  CFRelease(Mutable);
  v10 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
  v11 = DCSCopySharedPreferenceValue(@"DCSAssetPreferenceKeyRemovedDictionaries", 0, 0);
  if (v11)
  {
    v12 = v11;
    v18.length = CFArrayGetCount(v11);
    v18.location = 0;
    CFArrayAppendArray(v10, v12, v18);
    CFRelease(v12);
  }

  v13.length = CFArrayGetCount(v10);
  v13.location = 0;
  if (a2)
  {
    if (CFArrayContainsValue(v10, v13, a1))
    {
      goto LABEL_17;
    }

    CFArrayAppendValue(v10, a1);
  }

  else
  {
    v14 = CFArrayGetFirstIndexOfValue(v10, v13, a1);
    if (v14 == -1)
    {
      goto LABEL_17;
    }

    CFArrayRemoveValueAtIndex(v10, v14);
  }

  DCSUpdateSharedPreferenceValue(@"DCSAssetPreferenceKeyRemovedDictionaries", v10);
LABEL_17:
  CFRelease(v10);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"DCSActiveDictionariesChangedDistributedNotification", 0, 0, 0);
}

void DCSDictionaryAssetAttributesWillBePurged(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"DictionaryPackageName");
    if (Value)
    {
      v3 = Value;
      CFRetain(Value);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __DCSDictionaryAssetAttributesWillBePurged_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);
      DCSMAUpdateLinguisticDataForDictionaryAssetAttribute(a1, 0);
    }
  }
}

void __DCSDictionaryAssetAttributesWillBePurged_block_invoke(uint64_t a1)
{
  __DCSDictionaryAssetUpdatePreferences(*(a1 + 32), 1);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

const __CFArray *DCSCopyLemmas(uint64_t a1, const void *a2)
{
  block[7] = *MEMORY[0x277D85DE8];
  if (DCSCopyLemmas__OnceToken != -1)
  {
    DCSCopyLemmas_cold_1();
    if (!a1)
    {
      goto LABEL_12;
    }

LABEL_3:
    if (_GetNLPFrameworkInfo__DispatchOnceToken != -1)
    {
      DCSCopyLemmas_cold_2();
    }

    v4 = _GetNLPFrameworkInfo__InfoPtr;
    if (!_GetNLPFrameworkInfo__InfoPtr)
    {
      goto LABEL_12;
    }

    pthread_mutex_lock(&DCSCopyLemmas__AnalyzersCacheMutex);
    Value = CFDictionaryGetValue(DCSCopyLemmas__AnalyzersForLanguage, a2);
    if (Value)
    {
      v6 = Value;
      v7 = CFDictionaryGetValue(Value, @"MorphologicalAnalyzer");
      v8 = v6;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      CFDictionarySetValue(DCSCopyLemmas__AnalyzersForLanguage, a2, Mutable);
      CFRelease(Mutable);
      pthread_mutex_unlock(&DCSCopyLemmas__AnalyzersCacheMutex);
      v10 = dispatch_queue_create("dispatch_queue_for_analayzer", 0);
      v11 = dispatch_group_create();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __DCSCopyLemmas_block_invoke_2;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v4;
      block[5] = a2;
      block[6] = 0;
      dispatch_group_async(v11, v10, block);
      v12 = dispatch_time(0, 1000000000);
      dispatch_group_wait(v11, v12);
      dispatch_release(v11);
      dispatch_release(v10);
      pthread_mutex_lock(&DCSCopyLemmas__AnalyzersCacheMutex);
      v13 = CFDictionaryGetValue(DCSCopyLemmas__AnalyzersForLanguage, a2);
      if (!v13)
      {
        v15 = 0;
        v7 = 0;
LABEL_11:
        pthread_mutex_unlock(&DCSCopyLemmas__AnalyzersCacheMutex);
        if (!(v7 | v15))
        {
          goto LABEL_12;
        }

        if (v7)
        {
          v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          v19 = *(v4 + 8);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __DCSCopyLemmas_block_invoke_3;
          v27[3] = &__block_descriptor_40_e41_v32__0____CFString__8____CFString__16_B24l;
          v27[4] = v16;
          v19(v7, a1, v27);
          if (CFArrayGetCount(v16) > 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_12;
          }

          v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v26[1] = MEMORY[0x277D85DD0];
          v26[2] = 3221225472;
          v26[3] = __DCSCopyLemmas_block_invoke_4;
          v26[4] = &__block_descriptor_48_e27_v28__0____CFString__8C16_20l;
          v26[5] = a1;
          v26[6] = v16;
          LXLemmatizerEnumerateLemmasforString();
          Count = CFDictionaryGetCount(v16);
          if (Count >= 1)
          {
            v21 = Count;
            MEMORY[0x28223BE20](Count);
            v23 = (v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
            if (v22 >= 0x200)
            {
              v24 = 512;
            }

            else
            {
              v24 = v22;
            }

            bzero(v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
            CFDictionaryGetKeysAndValues(v16, v23, 0);
            v25 = CFArrayCreate(0, v23, v21, MEMORY[0x277CBF128]);
            goto LABEL_24;
          }
        }

        v25 = 0;
LABEL_24:
        CFRelease(v16);
        v16 = v25;
        goto LABEL_13;
      }

      v14 = v13;
      v7 = CFDictionaryGetValue(v13, @"MorphologicalAnalyzer");
      v8 = v14;
    }

    v15 = CFDictionaryGetValue(v8, @"Lemmatizer");
    goto LABEL_11;
  }

  if (a1)
  {
    goto LABEL_3;
  }

LABEL_12:
  v16 = 0;
LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __DCSCopyLemmas_block_invoke()
{
  DCSCopyLemmas__AnalyzersForLanguage = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);

  return pthread_mutex_init(&DCSCopyLemmas__AnalyzersCacheMutex, 0);
}

uint64_t __DCSCopyLemmas_block_invoke_2(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *(*(a1 + 32) + 16), *(a1 + 40));
  v3 = (**(a1 + 32))(Mutable);
  CFRelease(Mutable);
  v4 = 0;
  if (!*(a1 + 48))
  {
    v5 = *(a1 + 40);
    v4 = LXLemmatizerCreate();
  }

  pthread_mutex_lock(&DCSCopyLemmas__AnalyzersCacheMutex);
  Value = CFDictionaryGetValue(DCSCopyLemmas__AnalyzersForLanguage, *(a1 + 40));
  if (!Value)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = Value;
  if (v3)
  {
    if (!CFDictionaryGetValue(Value, @"MorphologicalAnalyzer"))
    {
      CFDictionarySetValue(v7, @"MorphologicalAnalyzer", v3);
    }

LABEL_8:
    CFRelease(v3);
LABEL_9:
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    if (!CFDictionaryGetValue(Value, @"Lemmatizer"))
    {
      CFDictionarySetValue(v7, @"Lemmatizer", v4);
    }

LABEL_10:
    CFRelease(v4);
  }

LABEL_11:

  return pthread_mutex_unlock(&DCSCopyLemmas__AnalyzersCacheMutex);
}

void __DCSCopyLemmas_block_invoke_4(uint64_t a1, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *(a1 + 32), 1uLL))
  {
    v4 = *(a1 + 40);

    CFDictionarySetValue(v4, theString1, &stru_282F97070);
  }
}

double marisa::Agent::Agent(marisa::Agent *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void *marisa::Agent::set_query(void *this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x20000000DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:13: MARISA_NULL_ERROR: str == NULL";
  }

  v2 = this[5];
  if (v2)
  {
    *(v2 + 108) = 0;
  }

  v3 = 0;
    ;
  }

  *this = a2;
  this[1] = v3 - 1;
  return this;
}

void *marisa::Agent::set_query(void *this, const char *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x200000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:21: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
  }

  v3 = this[5];
  if (v3)
  {
    *(v3 + 108) = 0;
  }

  *this = a2;
  this[1] = a3;
  return this;
}

uint64_t marisa::Agent::set_query(uint64_t this, uint64_t a2)
{
  v2 = *(this + 40);
  if (v2)
  {
    *(v2 + 108) = 0;
  }

  *(this + 16) = a2;
  return this;
}

void *marisa::Agent::init_state(marisa::Agent *this)
{
  v1 = (this + 40);
  if (*(this + 5))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x100000024;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:36: MARISA_STATE_ERROR: state_.get() != NULL";
    goto LABEL_8;
  }

  v2 = operator new(0x70uLL, MEMORY[0x277D826F0]);
  if (v2)
  {
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    *(v2 + 73) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
  }

  result = marisa::scoped_ptr<marisa::grimoire::trie::State>::reset(v1, v2);
  if (!*v1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x800000026;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:38: MARISA_MEMORY_ERROR: state_.get() == NULL";
LABEL_8:
    exception[3] = v5;
  }

  return result;
}

void *marisa::scoped_ptr<marisa::grimoire::trie::State>::reset(uint64_t *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v4);
}

void *marisa::Agent::clear(marisa::Agent *this)
{
  v2 = *this;
  v3 = *(this + 8);
  *this = 0;
  *(this + 1) = 0;
  v4 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  return marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v6);
}

uint64_t *marisa::Agent::swap(uint64_t *this, marisa::Agent *a2)
{
  v2 = *this;
  v3 = this[1];
  v4 = *(a2 + 1);
  *this = *a2;
  this[1] = v4;
  *a2 = v2;
  *(a2 + 1) = v3;
  v5 = this[2];
  v6 = this[3];
  v7 = *(a2 + 3);
  this[2] = *(a2 + 2);
  this[3] = v7;
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LODWORD(v5) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  return this;
}

void marisa::Exception::~Exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x223D5E5E0);
}

void *marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[6];
    if (v3)
    {
      MEMORY[0x223D5E5B0](v3, 0x1000C8077774924);
    }

    if (*v2)
    {
      MEMORY[0x223D5E5B0](*v2, 0x1000C8077774924);
    }

    MEMORY[0x223D5E5E0](v2, 0x1070C406A3FAA47);
  }

  return a1;
}

uint64_t marisa::grimoire::io::Mapper::Mapper(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = -1;
  return this;
}

void marisa::grimoire::io::Mapper::~Mapper(marisa::grimoire::io::Mapper *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    munmap(v2, *(this + 3));
  }

  v3 = *(this + 8);
  if (v3 != -1)
  {
    close(v3);
  }
}

void marisa::grimoire::io::Mapper::open(marisa::grimoire::io::Mapper *this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x200000037;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:55: MARISA_NULL_ERROR: filename == NULL";
  }

  *&v8 = 0;
  *(&v8 + 1) = -1;
  v9 = 0uLL;
  v10 = -1;
  marisa::grimoire::io::Mapper::open_(&v8, a2);
  v3 = v9;
  v4 = *this;
  v5 = *(this + 1);
  *this = v8;
  *(this + 1) = v3;
  v8 = v4;
  v9 = v5;
  v6 = *(this + 8);
  *(this + 8) = v10;
  v10 = v6;
  marisa::grimoire::io::Mapper::~Mapper(&v8);
}

void *marisa::grimoire::io::Mapper::open_(marisa::grimoire::io::Mapper *this, const char *a2)
{
  if (stat(a2, &v8))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x90000008DLL;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:141: MARISA_IO_ERROR: ::stat(filename, &st) != 0";
    goto LABEL_8;
  }

  *(this + 3) = v8.st_size;
  v4 = open(a2, 0);
  *(this + 8) = v4;
  if (v4 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000092;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:146: MARISA_IO_ERROR: fd_ == -1";
    goto LABEL_8;
  }

  result = mmap(0, *(this + 3), 1, 1, v4, 0);
  *(this + 1) = result;
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000095;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:149: MARISA_IO_ERROR: origin_ == MAP_FAILED";
LABEL_8:
    exception[3] = v7;
  }

  *this = result;
  *(this + 2) = *(this + 3);
  return result;
}

uint64_t *marisa::grimoire::io::Mapper::swap(uint64_t *this, marisa::grimoire::io::Mapper *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v4 = this[1];
  v3 = this[2];
  v5 = *(a2 + 2);
  this[1] = *(a2 + 1);
  this[2] = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v3;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return this;
}

__n128 marisa::grimoire::io::Mapper::open(marisa::grimoire::io::Mapper *this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x20000003FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:63: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v3 = *this;
  v4 = *(this + 1);
  *this = a2;
  *(this + 1) = -1;
  *(this + 2) = a3;
  *(this + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(this + 8);
  *(this + 8) = -1;
  v9 = v5;
  marisa::grimoire::io::Mapper::~Mapper(v8);
  return result;
}

void *marisa::grimoire::io::Mapper::open_(void *this, const void *a2, uint64_t a3)
{
  *this = a2;
  this[2] = a3;
  return this;
}

uint64_t marisa::grimoire::io::Mapper::seek(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000047;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:71: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (*(this + 2) < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000048;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:72: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return marisa::grimoire::io::Mapper::map_data(this, a2);
}

uint64_t marisa::grimoire::io::Mapper::map_data(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  v2 = *this;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000063;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:99: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = *(this + 2);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000064;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:100: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *this = v2 + a2;
  *(this + 2) = v5;
  return v2;
}

__n128 marisa::grimoire::io::Mapper::clear(marisa::grimoire::io::Mapper *this)
{
  v1 = *this;
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = -1;
  v4[0] = v1;
  v4[1] = v2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v5 = *(this + 8);
  *(this + 8) = -1;
  marisa::grimoire::io::Mapper::~Mapper(v4);
  return result;
}

uint64_t marisa::grimoire::io::Reader::Reader(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void marisa::grimoire::io::Reader::~Reader(FILE **this)
{
  if (*(this + 24) == 1)
  {
    fclose(*this);
  }
}

FILE *marisa::grimoire::io::Reader::open(FILE **this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x20000001BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:27: MARISA_NULL_ERROR: filename == NULL";
  }

  v6 = 0;
  v7 = -1;
  v8 = 0;
  v9 = 0;
  marisa::grimoire::io::Reader::open_(&v6, a2);
  result = *this;
  *this = v6;
  *(this + 2) = v7;
  this[2] = v8;
  v4 = *(this + 24);
  *(this + 24) = v9;
  if (v4 == 1)
  {

    return fclose(result);
  }

  return result;
}

void sub_21E5B7CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    fclose(a9);
  }

  _Unwind_Resume(exception_object);
}

FILE *marisa::grimoire::io::Reader::open_(marisa::grimoire::io::Reader *this, const char *__filename)
{
  result = fopen(__filename, "rb");
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x90000005ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:94: MARISA_IO_ERROR: file == NULL";
  }

  *this = result;
  *(this + 24) = 1;
  return result;
}

uint64_t *marisa::grimoire::io::Reader::swap(uint64_t *this, marisa::grimoire::io::Reader *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  LODWORD(v2) = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v2;
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  LOBYTE(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return this;
}

FILE *marisa::grimoire::io::Reader::open(FILE **this, __sFILE *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x200000023;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:35: MARISA_NULL_ERROR: file == NULL";
  }

  result = *this;
  *this = a2;
  *(this + 2) = -1;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Reader::open(FILE **this, int a2)
{
  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x50000002BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:43: MARISA_CODE_ERROR: fd == -1";
  }

  result = *this;
  *this = 0;
  *(this + 2) = a2;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Reader::open(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == 1)
  {
    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Reader::clear(FILE **this)
{
  result = *this;
  *this = 0;
  *(this + 2) = -1;
  this[2] = 0;
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3 == 1)
  {
    return fclose(result);
  }

  return result;
}

uint64_t marisa::grimoire::io::Reader::seek(uint64_t this, size_t __nitems)
{
  v2 = __nitems;
  v3 = this;
  v8 = *MEMORY[0x277D85DE8];
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x100000044;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:68: MARISA_STATE_ERROR: !is_open()";
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        this = marisa::grimoire::io::Reader::read_data(v3, v7, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      this = marisa::grimoire::io::Reader::read_data(this, v7, __nitems);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t marisa::grimoire::io::Reader::read_data(uint64_t this, char *a2, size_t __nitems)
{
  v3 = __nitems;
  v4 = a2;
  v5 = this;
  v6 = *this;
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
    exception[2] = 0x100000071;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:113: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_19;
  }

  if (__nitems)
  {
    if (*(this + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        this = read(*(v5 + 8), v4, v7);
        if (this <= 0)
        {
          break;
        }

        v4 += this;
        v3 -= this;
        if (!v3)
        {
          return this;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_282F96898;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
      exception[2] = 0x900000081;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:129: MARISA_IO_ERROR: size_read <= 0";
LABEL_19:
      exception[3] = v9;
    }

    if (v6)
    {
      this = fread(a2, 1uLL, __nitems, v6);
      if (this != v3)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_282F96898;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
        exception[2] = 0x900000086;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:134: MARISA_IO_ERROR: ::fread(buf, 1, size, file_) != size";
        goto LABEL_19;
      }
    }

    else
    {
      this = *(this + 16);
      if (this)
      {
        this = std::istream::read();
        if ((*(this + *(*this - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_282F96898;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc";
          v10[2] = 0x90000008ALL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/reader.cc:138: MARISA_IO_ERROR: !stream_->read(static_cast<char *>(buf), size)";
        }
      }
    }
  }

  return this;
}

FILE *marisa::grimoire::io::Writer::open(FILE **this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x20000001BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:27: MARISA_NULL_ERROR: filename == NULL";
  }

  v6 = 0;
  v7 = -1;
  v8 = 0;
  v9 = 0;
  marisa::grimoire::io::Writer::open_(&v6, a2);
  result = *this;
  *this = v6;
  *(this + 2) = v7;
  this[2] = v8;
  v4 = *(this + 24);
  *(this + 24) = v9;
  if (v4 == 1)
  {

    return fclose(result);
  }

  return result;
}

void sub_21E5B84C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, FILE *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    fclose(a9);
  }

  _Unwind_Resume(exception_object);
}

FILE *marisa::grimoire::io::Writer::open_(marisa::grimoire::io::Writer *this, const char *__filename)
{
  result = fopen(__filename, "wb");
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x90000005ELL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:94: MARISA_IO_ERROR: file == NULL";
  }

  *this = result;
  *(this + 24) = 1;
  return result;
}

FILE *marisa::grimoire::io::Writer::open(FILE **this, __sFILE *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x200000023;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:35: MARISA_NULL_ERROR: file == NULL";
  }

  result = *this;
  *this = a2;
  *(this + 2) = -1;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

FILE *marisa::grimoire::io::Writer::open(FILE **this, int a2)
{
  if (a2 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x50000002BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:43: MARISA_CODE_ERROR: fd == -1";
  }

  result = *this;
  *this = 0;
  *(this + 2) = a2;
  this[2] = 0;
  v5 = *(this + 24);
  *(this + 24) = 0;
  if (v5 == 1)
  {

    return fclose(result);
  }

  return result;
}

uint64_t marisa::grimoire::io::Writer::seek(uint64_t this, size_t __nitems)
{
  v2 = __nitems;
  v3 = this;
  __buf[128] = *MEMORY[0x277D85DE8];
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000044;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:68: MARISA_STATE_ERROR: !is_open()";
  }

  if (__nitems)
  {
    if (__nitems > 0x10)
    {
      bzero(__buf, 0x400uLL);
      do
      {
        if (v2 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v2;
        }

        this = marisa::grimoire::io::Writer::write_data(v3, __buf, v4);
        v2 -= v4;
      }

      while (v2);
    }

    else
    {
      __buf[0] = 0;
      __buf[1] = 0;
      this = marisa::grimoire::io::Writer::write_data(this, __buf, __nitems);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t marisa::grimoire::io::Writer::write_data(uint64_t this, char *__buf, size_t __nitems)
{
  v3 = __nitems;
  v4 = __buf;
  v5 = this;
  v6 = *this;
  if (!*this && *(this + 8) == -1 && !*(this + 16))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_282F96898;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
    exception[2] = 0x100000071;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:113: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_20;
  }

  if (__nitems)
  {
    if (*(this + 8) != -1)
    {
      while (1)
      {
        v7 = v3 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v3;
        this = write(*(v5 + 8), v4, v7);
        if (this <= 0)
        {
          break;
        }

        v4 += this;
        v3 -= this;
        if (!v3)
        {
          return this;
        }
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_282F96898;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
      exception[2] = 0x900000081;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:129: MARISA_IO_ERROR: size_written <= 0";
LABEL_20:
      exception[3] = v9;
    }

    if (v6)
    {
      if (fwrite(__buf, 1uLL, __nitems, v6) != __nitems)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_282F96898;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000086;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:134: MARISA_IO_ERROR: ::fwrite(data, 1, size, file_) != size";
        goto LABEL_20;
      }

      this = fflush(*v5);
      if (this)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_282F96898;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
        exception[2] = 0x900000087;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:135: MARISA_IO_ERROR: ::fflush(file_) != 0";
        goto LABEL_20;
      }
    }

    else
    {
      this = *(this + 16);
      if (this)
      {
        this = std::ostream::write();
        if ((*(this + *(*this - 24) + 32) & 5) != 0)
        {
          v10 = __cxa_allocate_exception(0x20uLL);
          *v10 = &unk_282F96898;
          v10[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc";
          v10[2] = 0x90000008BLL;
          v10[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/writer.cc:139: MARISA_IO_ERROR: !stream_->write(static_cast<const char *>(data), size)";
        }
      }
    }
  }

  return this;
}

marisa::grimoire::trie::LoudsTrie *marisa::grimoire::trie::LoudsTrie::LoudsTrie(marisa::grimoire::trie::LoudsTrie *this)
{
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 345) = 0u;
  *(this + 393) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 297) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 441) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 601) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 505) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 649) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 697) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 90) = 0;
  *(this + 182) = 0;
  *(this + 92) = 0;
  marisa::grimoire::trie::Tail::Tail((this + 744));
  *(this + 1048) = 0;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1000) = 0u;
  *(this + 66) = 0u;
  *(this + 134) = 3;
  *(this + 135) = 0x100000000200;
  *(this + 272) = 0x20000;
  marisa::grimoire::io::Mapper::Mapper(this + 1096);
  return this;
}