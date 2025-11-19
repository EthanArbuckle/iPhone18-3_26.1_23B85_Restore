os_log_t __printStoredChunk_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_109()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_116()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_120()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_127()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_131()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_138()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_142()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_149()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_153()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_160()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_164()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_171()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_175()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_182()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_186()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_193()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_197()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printStoredChunk_block_invoke_2_204()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void printSourceChunk(unsigned int *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  printSignature(a1 + 84);
  if (*(a1 + 1))
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printSourceChunk_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"itemID:%lld\n", *a1);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        printSourceChunk_cold_2();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL_8;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      *buf = 138543362;
      v11 = v2;
LABEL_16:
      _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_17:
      if (v2)
      {
        CFRelease(v2);
      }

      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        printSourceChunk_cold_5();
      }
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printSourceChunk_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"fd:%d, slot_sz:%u\n", *a1, a1[1]);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        printSourceChunk_cold_4();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL_8;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      *buf = 138543362;
      v11 = v2;
      goto LABEL_16;
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"offset:0x%llx, size:0x%x(%u), sequence:%llu, stored:%u, retain:%u\n", *(a1 + 9), a1[20], a1[20], *(a1 + 2), *(a1 + 24), *(a1 + 25));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printSourceChunk_cold_6();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = a1[20];
    if (v7 >= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = v7;
    }

    printNbytes(v6, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

os_log_t __printSourceChunk_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSourceChunk_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSourceChunk_block_invoke_217()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSourceChunk_block_invoke_2_224()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSourceChunk_block_invoke_228()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSourceChunk_block_invoke_2_235()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void printRegisteredChunk(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    printRegisteredChunk_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"RegisteredChunk: itemID:%lld, offset:0x%llx, size:0x%x(%u), location:%c\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 24), *(a1 + 28));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printRegisteredChunk_cold_2();
    }

    v3 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v6 = v2;
      _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  printSignature((a1 + 35));
  v4 = *MEMORY[0x277D85DE8];
}

os_log_t __printRegisteredChunk_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printRegisteredChunk_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void printRegisteredChunkList(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = CKRegisteredChunkSize(a1);
  if (a2)
  {
    v5 = v4;
    do
    {
      printRegisteredChunk(v3);
      printNbytes(v3, v5);
      v3 += v5;
      --a2;
    }

    while (a2);
  }
}

uint64_t CKRegisteredChunkSize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 35);
    v3 = CKSignatureAndKeySize(result + 35);
    if (v3)
    {
      v4 = v3 + 36;
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v5) = *(v1 + 29);
    if (*(v1 + 29))
    {
      v5 = v2[v3 + 1];
      if (v2[v3 + 1])
      {
        v6 = vcvtps_u32_f32(*(v1 + 24) / (v5 << 10));
        if (v6 && (v7 = CKChunkSchemeSignatureAndKeySize(v2)) != 0)
        {
          LODWORD(v5) = CKChunkSchemeAndSignatureSize(&v2[v7 + 1]) * v6 + 1;
        }

        else
        {
          LODWORD(v5) = 0;
        }
      }
    }

    return (v5 + v4);
  }

  return result;
}

CFNumberRef ck_copy_cfnumber_from_cftype_using_description(uint64_t a1, const __CFString *a2, CFTypeRef cf)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_31;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    CFRetain(a2);
    NumberFromString = a2;
    goto LABEL_34;
  }

  v8 = CFBooleanGetTypeID();
  if (v8 == CFGetTypeID(a2))
  {
    *valuePtr = CFBooleanGetValue(a2);
    NumberFromString = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, valuePtr);
    goto LABEL_34;
  }

  v9 = CFStringGetTypeID();
  if (v9 != CFGetTypeID(a2))
  {
    v17 = CFGetTypeID(a2);
    v18 = CFCopyTypeIDDescription(v17);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      ck_copy_cfnumber_from_cftype_using_description_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to recognized type id '%@' for BOOLean decoding for key '%@'.", v18, a1);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        ck_copy_cfnumber_from_cftype_using_description_cold_2();
      }

      v20 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v19;
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    if (!v18)
    {
      goto LABEL_31;
    }

    v16 = v18;
LABEL_30:
    CFRelease(v16);
LABEL_31:
    if (cf)
    {
      CFRetain(cf);
      NumberFromString = cf;
    }

    else
    {
      NumberFromString = 0;
    }

    goto LABEL_34;
  }

  v10 = CFLocaleCreate(0, @"en_US");
  if (!v10 || (v11 = v10, v12 = *MEMORY[0x277CBECE8], v13 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v10, kCFNumberFormatterNoStyle), CFRelease(v11), !v13) || (NumberFromString = CFNumberFormatterCreateNumberFromString(v12, v13, a2, 0, 1uLL), CFRelease(v13), !NumberFromString))
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      ck_copy_cfnumber_from_cftype_using_description_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Option %@ had CFStringRef %@ but couldn't parse as a number.", a1, a2);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      ck_copy_cfnumber_from_cftype_using_description_cold_4();
    }

    v15 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 138543362;
      *&valuePtr[4] = v14;
      _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
    }

    if (!v14)
    {
      goto LABEL_31;
    }

    v16 = v14;
    goto LABEL_30;
  }

LABEL_34:
  v21 = *MEMORY[0x277D85DE8];
  return NumberFromString;
}

os_log_t __ck_copy_cfnumber_from_cftype_using_description_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __ck_copy_cfnumber_from_cftype_using_description_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __ck_copy_cfnumber_from_cftype_using_description_block_invoke_260()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __ck_copy_cfnumber_from_cftype_using_description_block_invoke_2_267()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t ck_get_int32_from_cftype_using_description(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v4 = ck_copy_cfnumber_from_cftype_using_description(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    valuePtr = 0;
    if (!CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = a3;
    }

    CFRelease(v5);
    return valuePtr;
  }

  return a3;
}

uint64_t CKEncryptData(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  cf = 0;
  if (!a4 || !a1 || !a2 || !a3)
  {
    return v4;
  }

  v8 = CKCalculateChunkSignatureAndEncryptionKey(a2, a3, a1, &cf);
  v9 = cf;
  if (!v8 || (v10 = doEncrypt(a2, a3, cf, a3), v9 = cf, !v10))
  {
    v4 = 0;
    if (!v9)
    {
      return v4;
    }

LABEL_12:
    CFRelease(v9);
    return v4;
  }

  if (cf)
  {
    CFRetain(cf);
    v9 = cf;
  }

  *a4 = v9;
  v4 = 1;
  if (v9)
  {
    goto LABEL_12;
  }

  return v4;
}

uint64_t CKCalculateChunkSignatureAndEncryptionKey(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v7 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (CKChunkSignatureGeneratorCreate(&v7, a3) && (CKChunkSignatureGeneratorUpdate(v7), CKChunkSignatureGeneratorFinish(v7)))
  {
    if (v7)
    {
      CKBaseRelease(v7);
    }

    v7 = 0;
    if (!a4)
    {
      return 1;
    }

    CKBaseRetain(0);
    *a4 = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v7)
  {
    CKBaseRelease(v7);
  }

  return v5;
}

BOOL CKDecryptData(uint64_t a1, uint64_t a2, const void *a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (a3)
    {
      return doDecrypt(a1, a2, a3, a2) != 0;
    }
  }

  return result;
}

uint64_t getFileSignatureCacheBlob(void *a1, const __CFData **a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  theData = 0;
  v3 = a1[13];
  CacheBlob = getCacheBlob(a1, "com.apple.cscachefs", &theData);
  v5 = theData;
  if (CacheBlob)
  {
    if (!theData)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  Length = CFDataGetLength(v5);
  if ((Length & 0xFFFFFFFE) >= 0x32uLL && MutableBytePtr[20] == 4)
  {
    CacheBlob = 0;
    *a2 = v5;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getFileSignatureCacheBlob_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature cache for %s, size:%u, type:%u\n", v3, Length, MutableBytePtr[20]);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        getFileSignatureCacheBlob_cold_2();
      }

      v9 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v14 = v8;
        _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    CacheBlob = 22;
    if (v5)
    {
LABEL_17:
      CFRelease(v5);
    }
  }

LABEL_18:
  v10 = *MEMORY[0x277D85DE8];
  return CacheBlob;
}

uint64_t getCacheBlob(void *a1, uint64_t a2, CFDataRef *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  theData = 0;
  v3 = *(a1[2] + 80);
  if (!v3 || (v6 = a1[13], !v3(a1[1], a2, &theData, 0)))
  {
    v11 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if ((Length - 0x100000000) > 0xFFFFFFFF00000014)
  {
    *md = 0;
    v19 = 0;
    v20 = 0;
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    CC_SHA1_Update(&c, BytePtr + 20, Length - 20);
    CC_SHA1_Final(md, &c);
    if (*md == *BytePtr && v19 == *(BytePtr + 1) && v20 == *(BytePtr + 4))
    {
      v11 = 0;
      *a3 = theData;
      goto LABEL_32;
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getCacheBlob_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid cache hash for %s, blobName:%s\n", v6, a2);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getCacheBlob_cold_2();
    }

    v10 = CK_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 138543362;
    v22 = v9;
    goto LABEL_26;
  }

  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    getCacheBlob_cold_3();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_29;
  }

  v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid cache size for %s, blobName:%s, size:%u\n", v6, a2, Length);
  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    getCacheBlob_cold_4();
  }

  v10 = CK_DEFAULT_LOG_INTERNAL_8;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v22 = v9;
LABEL_26:
    _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

LABEL_27:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_29:
  v11 = 22;
LABEL_30:
  if (theData)
  {
    CFRelease(theData);
  }

LABEL_32:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

os_log_t __getFileSignatureCacheBlob_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getFileSignatureCacheBlob_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t get2FileSignatureCache(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  cf = 0;
  theData = 0;
  v6 = *(a1 + 104);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  if ((CKFileDigestArgumentsFileScheme(a2) & 0xFFFFFF7F) == 4 || (*(a1 + 177) & 1) != 0 || getenv("CS_DISABLE_FS_CACHE"))
  {
    v11 = 0xFFFFFFFFLL;
LABEL_5:
    v12 = cf;
    goto LABEL_6;
  }

  FileSignatureCacheBlob = getFileSignatureCacheBlob(a1, &theData);
  v16 = theData;
  if (FileSignatureCacheBlob)
  {
    goto LABEL_39;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v16);
  if (v7 != *(BytePtr + 21) || v10 != *(BytePtr + 25) || v8 != *(BytePtr + 33) || v9 != *(BytePtr + 41) || (v25 = BytePtr[49], v24 = Length, v25 != CKFileDigestArgumentsFileSchemeByte(a2)))
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      get2FileSignatureCache_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature cache for %s, ino:%llu, sz:%llu, type:%u, scheme:0x%x, generation:%u\n", v6, v8, v9, BytePtr[20], BytePtr[49], v7);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      get2FileSignatureCache_cold_2();
    }

    v23 = CK_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    *buf = 138543362;
    v29 = v22;
    goto LABEL_36;
  }

  if (CKFileSchemeAndSignatureSize(BytePtr + 49) != 21 || v24 != 70)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      get2FileSignatureCache_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature cache for %s, ino:%llu, sz:%llu, type:%u, scheme:0x%x, generation:%u\n", v6, v8, v9, BytePtr[20], BytePtr[49], v7);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      get2FileSignatureCache_cold_4();
    }

    v23 = CK_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
LABEL_37:
      if (!v22)
      {
        goto LABEL_40;
      }

      CFRelease(v22);
LABEL_39:
      LODWORD(v22) = 0;
LABEL_40:
      v11 = 0xFFFFFFFFLL;
      if (!v16)
      {
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    *buf = 138543362;
    v29 = v22;
LABEL_36:
    _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    goto LABEL_37;
  }

  CKFileDigestResultsCreate(&cf, BytePtr + 49, v9, 0);
  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    get2FileSignatureCache_cold_5();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found cached file signature for %s, blobSize:%u, sz:%llu, ino:%llu, time:%llu, generation:%u\n", v6, v24, *(a1 + 80), v8, *(BytePtr + 25), *(BytePtr + 21));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      get2FileSignatureCache_cold_6();
    }

    v20 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v29 = v19;
      _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  if (a3)
  {
    if (cf)
    {
      CFRetain(cf);
      v21 = cf;
    }

    else
    {
      v21 = 0;
    }

    v11 = 0;
    *a3 = v21;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v22) = 1;
  if (!v16)
  {
LABEL_54:
    v12 = cf;
    if (v22)
    {
      goto LABEL_55;
    }

    goto LABEL_6;
  }

LABEL_41:
  CFRelease(v16);
  v12 = cf;
  if (v22)
  {
LABEL_55:
    if (!CKFileDigestResultsFileSignature(v12))
    {
      get2FileSignatureCache_cold_7();
    }

    goto LABEL_5;
  }

LABEL_6:
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

os_log_t __get2FileSignatureCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __get2FileSignatureCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __get2FileSignatureCache_block_invoke_291()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __get2FileSignatureCache_block_invoke_2_295()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __get2FileSignatureCache_block_invoke_299()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __get2FileSignatureCache_block_invoke_2_306()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t setFileSignatureCacheBlob(uint64_t a1, CFMutableDataRef theData)
{
  if (theData)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    if ((CFDataGetLength(theData) & 0xFFFFFFFEuLL) <= 0x31)
    {
      setFileSignatureCacheBlob_cold_1();
    }

    MutableBytePtr[20] = 4;

    return setCacheBlob(a1, "com.apple.cscachefs", theData);
  }

  else
  {
    v6 = *(*(a1 + 16) + 88);
    if (v6 && (*(a1 + 176) & 1) == 0)
    {
      return v6(*(a1 + 8), "com.apple.cscachefs", 0, 0) - 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t setCacheBlob(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 88);
  if (!v4 || (*(a1 + 176) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 8);
  if (theData)
  {
    v8 = *(a1 + 120);
    Length = CFDataGetLength(theData);
    v10 = Length;
    v11 = Length;
    if (v8 && v8 < Length)
    {
      return 0xFFFFFFFFLL;
    }

    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    if (v11 <= 0x14)
    {
      setCacheBlob_cold_1();
    }

    v14 = MutableBytePtr;
    memset(&v15, 0, sizeof(v15));
    CC_SHA1_Init(&v15);
    CC_SHA1_Update(&v15, v14 + 20, v10 - 20);
    CC_SHA1_Final(v14, &v15);
    v4 = *(v3 + 88);
  }

  return v4(v7, a2, theData, 0) - 1;
}

uint64_t setFileSignatureCache(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2 || a3 != 21)
  {
    setFileSignatureCache_cold_9();
  }

  if (*(a1 + 178))
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 104);
  v8 = *(a1 + 24);
  v9 = *(a1 + 40);
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  if (getenv("CS_DISABLE_FS_CACHE") || (*a2 & 0x7F) == 4)
  {
    goto LABEL_6;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if ((*(v6 + 64))(v5, &v27, 0))
  {
    if (v27 > 0x8000)
    {
      if (BYTE8(v28) != 1)
      {
        goto LABEL_6;
      }

      if (v11 == v27 && v10 == v28 && v8 == HIDWORD(v28))
      {
        Mutable = CFDataCreateMutable(0, 70);
        if (Mutable)
        {
          v16 = Mutable;
          CFDataSetLength(Mutable, 70);
          MutableBytePtr = CFDataGetMutableBytePtr(v16);
          *(MutableBytePtr + 1) = 0u;
          *(MutableBytePtr + 2) = 0u;
          *(MutableBytePtr + 24) = 0;
          *MutableBytePtr = 0u;
          *(MutableBytePtr + 21) = v8;
          *(MutableBytePtr + 25) = v10;
          *(MutableBytePtr + 33) = v9;
          *(MutableBytePtr + 41) = v11;
          v23 = *a2;
          *(MutableBytePtr + 62) = *(a2 + 13);
          *(MutableBytePtr + 49) = v23;
          if (setFileSignatureCacheBlob(a1, v16))
          {
            v12 = 0xFFFFFFFFLL;
          }

          else
          {
            if (CK_DEFAULT_LOG_BLOCK_8 != -1)
            {
              setFileSignatureCache_cold_5();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
            {
              v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Stored file signature cache for %s, blobSize:%u, sz:%llu, ino:%llu, mtim:%llu, generation:%u\n", v7, 70, *(a1 + 80), v9, v10, v8);
              if (CK_DEFAULT_LOG_BLOCK_8 != -1)
              {
                setFileSignatureCache_cold_6();
              }

              v26 = CK_DEFAULT_LOG_INTERNAL_8;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v31 = v12;
                _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (!v12)
              {
                goto LABEL_29;
              }

              CFRelease(v12);
            }

            v12 = 0;
          }

LABEL_29:
          CFRelease(v16);
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        setFileSignatureCache_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%schanged, ino:%llu, mtime:%llu/%llu, sz:%llu/%llu, generation:%u/%u\n", v7, v9, v10, v28, v11, v27, v8, HIDWORD(v28));
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          setFileSignatureCache_cold_4();
        }

        v25 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v31 = v24;
          _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v24)
        {
          CFRelease(v24);
        }
      }
    }

    v15 = *(*(a1 + 16) + 88);
    if (v15 && (*(a1 + 176) & 1) == 0 && v15(*(a1 + 8), "com.apple.cscachefs", 0, 0))
    {
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        setFileSignatureCache_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Removed file signature cache for %s, blobSize:%u, sz:%llu, ino:%llu, mtime:%llu, generation:%u\n", v7, 70, *(a1 + 80), v9, v10, v8);
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          setFileSignatureCache_cold_8();
        }

        v17 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v31 = v16;
          v18 = v17;
          v19 = OS_LOG_TYPE_DEBUG;
LABEL_27:
          _os_log_impl(&dword_243431000, v18, v19, "%{public}@", buf, 0xCu);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      setFileSignatureCache_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed for %s, ino:%llu\n", v7, v9);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        setFileSignatureCache_cold_2();
      }

      v20 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v16;
        v18 = v20;
        v19 = OS_LOG_TYPE_ERROR;
        goto LABEL_27;
      }

LABEL_28:
      v12 = 0xFFFFFFFFLL;
      if (!v16)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

LABEL_6:
  v12 = 0xFFFFFFFFLL;
LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

os_log_t __setFileSignatureCache_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __setFileSignatureCache_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __setFileSignatureCache_block_invoke_323()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __setFileSignatureCache_block_invoke_2_330()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __setFileSignatureCache_block_invoke_334()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __setFileSignatureCache_block_invoke_2_341()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __setFileSignatureCache_block_invoke_345()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __setFileSignatureCache_block_invoke_2_352()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

BOOL wgcChanged(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 104);
  v5 = *(a1 + 40);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  if ((*(v3 + 64))(v2, &v10, 0))
  {
    if (BYTE8(v11) == 1)
    {
      result = HIDWORD(v11) != *(a1 + 24);
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    wgcChanged_cold_1();
  }

  result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed for %s, ino:%llu\n", v4, v5);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      wgcChanged_cold_2();
    }

    v8 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_13;
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __wgcChanged_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __wgcChanged_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t CK2CalculateItemSignatureWithFlags(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, CFErrorRef *a6)
{
  v69 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v11 = &old_ringing[83];
  v12 = &old_ringing[83];
  if (!a1)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CK2CalculateItemSignatureWithFlags_cold_15();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      OpCtx = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"NULL read context\n");
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CK2CalculateItemSignatureWithFlags_cold_16();
      }

      v30 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v68 = OpCtx;
        _os_log_impl(&dword_243431000, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!OpCtx)
      {
        v31 = 0;
        goto LABEL_60;
      }

      CFRelease(OpCtx);
    }

    v31 = 0;
LABEL_59:
    OpCtx = 0;
LABEL_60:
    v21 = 0;
    v58 = 0;
    v59 = 0;
    v22 = 0;
    v29 = 0;
    v23 = 0;
    goto LABEL_61;
  }

  v57 = *(a1 + 24);
  if (((*(a1 + 48))(*(a1 + 8), &v66, &v64) & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CK2CalculateItemSignatureWithFlags_cold_1();
    }

    v31 = v57;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      OpCtx = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"open failed on path:%@, error:%@\n", v57, v64);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CK2CalculateItemSignatureWithFlags_cold_2();
      }

      v32 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v68 = OpCtx;
        _os_log_impl(&dword_243431000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!OpCtx)
      {
        goto LABEL_60;
      }

      CFRelease(OpCtx);
    }

    goto LABEL_59;
  }

  v13 = *(a1 + 48);
  v14 = v13 == openFd || v13 == openFdUncached;
  v15 = !v14;
  v56 = v15;
  if (!v14)
  {
    OpCtx = createOpCtx();
    if (OpCtx)
    {
      goto LABEL_13;
    }

LABEL_90:
    v21 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_91;
  }

  OpCtx = v66;
  if (!v66)
  {
    goto LABEL_90;
  }

LABEL_13:
  v17 = v66;
  LOBYTE(OpCtx[5].isa) = 5;
  OpCtx->info = v17;
  OpCtx->data = a1;
  info = OpCtx[1].info;
  v61 = 0u;
  memset(v62, 0, 24);
  v58 = info;
  if (((*(a1 + 64))() & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CK2CalculateItemSignatureWithFlags_cold_3();
    }

    v23 = v56;
    v31 = v57;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stat failed on path:%@, ino:%llu, error:%@\n", v57, info, v64);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CK2CalculateItemSignatureWithFlags_cold_4();
      }

      v37 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v68 = v21;
        _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!v21)
      {
        goto LABEL_102;
      }

      CFRelease(v21);
    }

    v21 = 0;
LABEL_102:
    v22 = 0;
    v59 = 0;
LABEL_103:
    v29 = 1;
    goto LABEL_61;
  }

  v19 = v61;
  OpCtx[1].info = *(&v61 + 1);
  v20 = *&v62[0];
  v59 = v19;
  OpCtx[2].data = v19;
  OpCtx[2].length = v20;
  BYTE2(OpCtx[1].isa) = BYTE8(v62[0]);
  OpCtx->length = *(v62 + 12);
  v55 = a4;
  if ((a4 & 2) != 0)
  {
    v21 = 0;
    if (BYTE2(OpCtx[5].data))
    {
LABEL_21:
      v22 = v59;
LABEL_22:
      if (!a5)
      {
LABEL_24:
        v23 = v56;
        if (v11[452] != -1)
        {
          CK2CalculateItemSignatureWithFlags_cold_10();
        }

        if (os_log_type_enabled(v12[440], OS_LOG_TYPE_DEBUG))
        {
          v24 = CKFileDigestResultsFileSignature(v63);
          v25 = CKFileSchemeAndSignatureCopyCString(v24);
          if (gVerbose == 2)
          {
            if (v11[452] != -1)
            {
              CK2CalculateItemSignatureWithFlags_cold_11();
            }

            if (os_log_type_enabled(v12[440], OS_LOG_TYPE_DEBUG) && os_log_type_enabled(v12[440], OS_LOG_TYPE_DEBUG))
            {
              v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"path:%@, flags:0x%llx, ino:%llu, sz:%llu, o:%llu, ck:%s", v57, v55, v58, v59, v22, v25);
              if (v11[452] != -1)
              {
                CK2CalculateItemSignatureWithFlags_cold_12();
              }

              v27 = v12[440];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v68 = v26;
                _os_log_impl(&dword_243431000, v27, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v26)
              {
                CFRelease(v26);
              }
            }
          }

          free(v25);
        }

        v28 = 1;
        v29 = 1;
        goto LABEL_71;
      }

LABEL_23:
      CKBaseRetain(v63);
      *a5 = v63;
      goto LABEL_24;
    }

    v22 = v19;
    if (v19 <= 0x8000)
    {
      goto LABEL_22;
    }
  }

  if (!get2FileSignatureCache(OpCtx, a2, &v63) && v63 && CKFileDigestResultsFileSignature(v63))
  {
    v21 = 0;
    goto LABEL_21;
  }

  if (!v59)
  {
    v21 = 0;
    v38 = 0;
    goto LABEL_109;
  }

  v38 = 0x8000;
  v21 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  if (!v21)
  {
LABEL_91:
    v22 = 0;
    v29 = 1;
    v23 = v56;
    v31 = v57;
    goto LABEL_61;
  }

LABEL_109:
  if (!CKFileSignatureGeneratorCreate(&v65, a2))
  {
    goto LABEL_91;
  }

  if (v55)
  {
    v54 = BYTE2(OpCtx[5].data) ^ 1;
  }

  else
  {
    v54 = 0;
  }

  if (v59)
  {
    v39 = v38;
    v22 = 0;
    v40 = 0;
    v53 = v39;
    v41 = v39;
    while (1)
    {
      v60 = 0;
      if (((*(a1 + 72))(v66, v22, v21, v41, &v60, &v64) & 1) == 0)
      {
        break;
      }

      if (v60)
      {
        if (!CKFileSignatureGeneratorUpdate(v65))
        {
          if (v11[452] != -1)
          {
            CK2CalculateItemSignatureWithFlags_cold_7();
          }

          v12 = &old_ringing[83];
          v23 = v56;
          v31 = v57;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
          {
            v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CKFileSignatureGeneratorUpdate failed\n");
            v52 = v11;
            v49 = v51;
            if (v52[452] != -1)
            {
              CK2CalculateItemSignatureWithFlags_cold_8();
            }

            v50 = CK_DEFAULT_LOG_INTERNAL_8;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v68 = v49;
LABEL_151:
              _os_log_impl(&dword_243431000, v50, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            goto LABEL_152;
          }

          goto LABEL_103;
        }

        v42 = v60;
        v22 += v60;
        v40 += v60;
        if (((v60 != 0) & v54) == 1)
        {
          if (v40 >= 0x18000)
          {
            if (wgcChanged(OpCtx))
            {
              v64 = CKPOSIXErrorCreateWithFormat(16, @"ino:%llu changed", v58);
              v12 = old_ringing + 664;
              v11 = old_ringing + 664;
              v23 = v56;
              v31 = v57;
              goto LABEL_103;
            }

            v42 = v60;
            v40 -= 98304;
          }

          v11 = old_ringing + 664;
        }
      }

      else
      {
        v42 = 0;
      }

      if (v42 < v41 || v22 >= v59)
      {
        goto LABEL_128;
      }
    }

    if (v11[452] != -1)
    {
      CK2CalculateItemSignatureWithFlags_cold_5();
    }

    v12 = &old_ringing[83];
    v23 = v56;
    v31 = v57;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      v47 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"read failed on path:%@, ino:%llu, offset:0x%llx, size:%u, error:%@\n", v57, v58, v22, v53, v64);
      v48 = v11;
      v49 = v47;
      if (v48[452] != -1)
      {
        CK2CalculateItemSignatureWithFlags_cold_6();
      }

      v50 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v68 = v49;
        goto LABEL_151;
      }

LABEL_152:
      if (v49)
      {
        CFRelease(v49);
      }

      v11 = old_ringing + 664;
      goto LABEL_103;
    }

    goto LABEL_103;
  }

  v22 = 0;
LABEL_128:
  v31 = v57;
  if (v63)
  {
    CK2CalculateItemSignatureWithFlags_cold_9();
  }

  v43 = CKFileSignatureGeneratorFinish(v65);
  v12 = old_ringing + 664;
  if (v65)
  {
    CFRelease(v65);
  }

  v65 = 0;
  if (v43)
  {
    if (!v63)
    {
      CK2CalculateItemSignatureWithFlags_cold_14();
    }

    v44 = CKFileDigestResultsFileSignature(v63);
    if (!v44)
    {
      CK2CalculateItemSignatureWithFlags_cold_13();
    }

    v45 = v44;
    v46 = CKFileSchemeAndSignatureSize(v44);
    setFileSignatureCache(OpCtx, v45, v46);
    if (!a5)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v29 = 1;
  v23 = v56;
LABEL_61:
  if (v11[452] != -1)
  {
    CK2CalculateItemSignatureWithFlags_cold_17();
  }

  if (!os_log_type_enabled(v12[440], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_70;
  }

  v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"error:%@, path:%@, ino:%llu, sz:%llu, o:%llu\n", v64, v31, v58, v59, v22);
  if (v11[452] != -1)
  {
    CK2CalculateItemSignatureWithFlags_cold_18();
  }

  v33 = v12[440];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v68 = v28;
    _os_log_impl(&dword_243431000, v33, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  if (v28)
  {
    CFRelease(v28);
LABEL_70:
    v28 = 0;
  }

LABEL_71:
  if (v65)
  {
    CFRelease(v65);
    v65 = 0;
  }

  if (v21)
  {
    free(v21);
  }

  if (v23)
  {
    freeOpCtx(OpCtx);
  }

  if (v29)
  {
    (*(a1 + 56))(*(a1 + 8), v66, 0);
  }

  if (a6)
  {
    v34 = v28;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    if (v64)
    {
      CFRelease(v64);
    }
  }

  else
  {
    *a6 = v64;
    v64 = 0;
  }

  if (v63)
  {
    CKBaseRelease(v63);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_371()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_2_378()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

char *createOpCtx()
{
  v0 = malloc_type_calloc(1uLL, 0x228uLL, 0x10F0040A7EBA4E8uLL);
  v1 = v0;
  if (!v0 || (*(v0 + 9) = -1, *(v0 + 30) = 0, v0[183] = getenv("CK_TIME_CHUNKING") != 0, v2 = getenv("CK_SIZE_STATS"), v1[181] = v2 != 0, v2) && pthread_mutex_init((v1 + 360), 0))
  {
    freeOpCtx(v1);
    return 0;
  }

  else
  {
    v1[182] = 1;
    v3 = gVerbose == 2;
    v1[184] = gVerbose == 2;
    if (v3 && getenv("CK_CHUNKSTORE_VERBOSE_FOR_TEST_TOOL"))
    {
      *(v1 + 68) = malloc_type_calloc(0x100000uLL, 0x14uLL, 0x100004077774924uLL);
    }

    v1[180] = getenv("CK_NO_RESULTS") != 0;
  }

  return v1;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_382()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_2_389()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

double setOpCtxStatInfo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 40) = a2[1];
  v3 = a2[2];
  *(a1 + 80) = v2;
  *(a1 + 88) = v3;
  *(a1 + 34) = *(a2 + 24);
  result = *(a2 + 28);
  *(a1 + 24) = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_394()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_2_401()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_405()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_2_412()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_422()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_2_429()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_433()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_2_437()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateItemSignatureWithFlags_block_invoke_4()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void freeOpCtx(char *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_48;
  }

  if (a1[183] == 1)
  {
    bzero(__str, 0x400uLL);
    v2 = *(a1 + 59) / 1000000000.0;
    v3 = *(a1 + 61) / 1000000000.0;
    v4 = *(a1 + 63) / 1000000000.0;
    v5 = *(a1 + 65) / 1000000000.0;
    v6 = *(a1 + 67) / 1000000000.0;
    v7 = v2 + v3 + v4 + v5 + v6;
    v8 = *(a1 + 53);
    v9 = *(a1 + 7);
    printf("\n Summary for item %lld (%s):", v9, *(a1 + 13));
    printf("\n\tprofiler created %d sections", *(a1 + 62));
    printf("\n\t%32s\tThroughput\n", "Elapsed Time");
    printf("\t%10s %13.7f %7s", "chunking", v2, "seconds");
    printf("\t%12.4f MB/sec\n", *(a1 + 53) / v2 * 0.000000953674316);
    printf("\t%10s %13.7f %-10s", "hashing", v3, "seconds");
    printf("\t%12.4f MB/sec\n", *(a1 + 53) / v3 * 0.000000953674316);
    printf("\t%10s %13.7f %-10s", "file read", v4, "seconds");
    printf("\t%12.4f MB/sec\n", *(a1 + 53) / v4 * 0.000000953674316);
    if (*(a1 + 57))
    {
      printf("\t%10s %13.7f %-10s", "file write", v5, "seconds");
      printf("\t%12.4f MB/sec\n", *(a1 + 54) / v5 * 0.000000953674316);
    }

    v10 = v8 / v7;
    if ((a1[180] & 1) == 0)
    {
      printf("\t%10s %13.7f %-10s", "DB access", v6, "seconds");
      printf("\t%12.4f MB/sec\n", *(a1 + 53) / v6 * 0.000000953674316);
    }

    if ((CKFileDigestArgumentsFileSchemeByte(*(a1 + 18)) & 0x80u) != 0)
    {
      v11 = ", hashed, encrypted and hashed again";
    }

    else
    {
      v11 = " and hashed";
    }

    snprintf(__str, 0x400uLL, "Chunked%s", v11);
    printf("\n\t%s %llu bytes into %lld chunks, stored %lld chunks (%lld bytes) in %6.4f seconds (%8.4f MB/sec)\n\n", __str, *(a1 + 53), *(a1 + 55), *(a1 + 57), *(a1 + 54), v7, v10 * 0.000000953674316);
    v12 = *(a1 + 55);
    if (v12)
    {
      printf("\tAverage chunk size: %llu.%llu\n", *(a1 + 53) / v12, *(a1 + 53) % v12);
    }

    else
    {
      puts("\tAverage chunk size: 0 (0 chunks)");
    }

    putchar(10);
  }

  v13 = *(a1 + 68);
  if (v13)
  {
    free(v13);
  }

  if (a1[182] == 1)
  {
    pthread_mutex_destroy((a1 + 360));
  }

  v14 = *(a1 + 17);
  if (v14)
  {
    if (v14[8])
    {
      CKBaseRelease(v14[8]);
      v14 = *(a1 + 17);
    }

    free(v14);
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    CKBaseRelease(v15);
    *(a1 + 24) = 0;
  }

  v16 = *(a1 + 25);
  if (v16)
  {
    CKBaseRelease(v16);
  }

  *(a1 + 25) = 0;
  v17 = *(a1 + 26);
  if (v17)
  {
    CKBaseRelease(v17);
  }

  *(a1 + 26) = 0;
  v18 = *(a1 + 18);
  if (v18)
  {
    CKBaseRelease(v18);
  }

  *(a1 + 18) = 0;
  v19 = *(a1 + 30);
  if (v19)
  {
    CKBaseRelease(v19);
  }

  *(a1 + 30) = 0;
  v20 = *(a1 + 40);
  if (v20)
  {
    free(v20);
    *(a1 + 40) = 0;
  }

  v21 = *(a1 + 42);
  if (v21)
  {
    CFRelease(v21);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    free(v22);
  }

  v23 = *(a1 + 37);
  if (v23)
  {
    free(v23);
  }

  if (a1[179] != 1)
  {
    v27 = *(a1 + 77);
    v28 = *(a1 + 68);
    if (!v27 && v28)
    {
      freeOpCtx_cold_1();
    }

    v24 = *(a1 + 33);
    if (v28)
    {
      v29 = 0;
      v30 = v24 + 8;
      do
      {
        v31 = *&v30[v29];
        if (v31)
        {
          free(v31);
        }

        v29 += v27;
        --v28;
      }

      while (v28);
      v24 = *(a1 + 33);
    }

    if (!v24)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v24 = *(a1 + 33);
  if (v24)
  {
LABEL_44:
    free(v24);
    *(a1 + 33) = 0;
  }

LABEL_45:
  *(a1 + 34) = 0;
  v25 = *(a1 + 19);
  if (v25)
  {
    CKBaseRelease(v25);
  }

  free(a1);
LABEL_48:
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t CK2CalculateFileSignatureWithFlags(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5, CFTypeRef *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  bzero(cStr, 0x400uLL);
  if (get_path_for_fd(a1, cStr))
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CK2CalculateFileSignatureWithFlags_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      v16 = CFStringCreateWithFormat(v12, 0, @"get_path_for_fd failed for fd:%d: %d (%s)\n", a1, v13, v15);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CK2CalculateFileSignatureWithFlags_cold_2();
      }

      v17 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v16;
        _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (!v16)
      {
        v18 = 0;
        goto LABEL_18;
      }

      CFRelease(v16);
    }

    v18 = 0;
    v16 = 0;
  }

  else
  {
    v18 = cStr;
    v16 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

LABEL_18:
  v23[2] = 0;
  v23[3] = 0;
  v23[0] = v18;
  v23[1] = a1;
  *&buf[4] = 0;
  v26 = 0;
  v28 = 0u;
  *buf = 2;
  *&buf[8] = v23;
  v29 = openFdUncached;
  v30 = closeFd;
  v31 = statFd;
  v32 = readFd;
  v33 = getCacheBlobFd;
  v34 = setCacheBlobFd;
  v27 = v16;
  v19 = CK2CalculateItemSignatureWithFlags(buf, a2, a3, a4, a5, &cf);
  v20 = cf;
  if (a6 && !v19 && cf)
  {
    CFRetain(cf);
    v20 = cf;
    *a6 = cf;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

os_log_t __CK2CalculateFileSignatureWithFlags_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CK2CalculateFileSignatureWithFlags_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

BOOL CKCalculateFileSignature(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  if (a2 != 1)
  {
    CKCalculateFileSignature_cold_1();
  }

  cf = 0;
  CKFileDigestArgumentsV1WithFileCreate(&cf, 1, 0);
  v11 = 0;
  v12 = 0;
  v7 = CK2CalculateFileSignatureWithFlags(a1, cf, 0, 0, &v12, &v11);
  v8 = CKFileDigestResultsFileSignature(v12);
  v9 = CKFileSchemeAndSignatureSize(v8);
  if (v7)
  {
    if (v8 && v9 != 21)
    {
      CKCalculateFileSignature_cold_2();
    }

    if (a3 && v8)
    {
      memcpy(a3, v8, v9);
    }

    if (a4)
    {
      *a4 = CKFileDigestResultsFileLength(v12);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v12 = 0;
  if (v11)
  {
    CFRelease(v11);
  }

  return v7 != 0;
}

unint64_t CKValidateSignature(_BYTE *a1, const void *a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = CKChunkSchemeAndSignatureSize(a1);
  if (v8)
  {
    v9 = v8;
    if (*a1 < 0 && !a4)
    {
      v10 = malloc_type_malloc(a3, 0x100004077774924uLL);
      if (v10)
      {
        v11 = v10;
        *buf = 0;
        if (CKChunkDigestArgumentsV1Create(buf, 1, 0))
        {
          v18 = 0;
          memcpy(v11, a2, a3);
          if (CKEncryptData(*buf, v11, a3, &v18))
          {
            v12 = CKChunkDigestResultsChunkSignature(v18);
            v13 = memcmp(a1, v12, v9) == 0;
            if (*buf)
            {
              CKBaseRelease(*buf);
            }

            *buf = 0;
            if (v18)
            {
              CKBaseRelease(v18);
            }

            free(v11);
            goto LABEL_29;
          }

          free(v11);
        }
      }

LABEL_28:
      v13 = 0;
      goto LABEL_29;
    }

    *buf = 0;
    if (!CKChunkDigestArgumentsV1Create(buf, 1, 0))
    {
      goto LABEL_28;
    }

    v18 = 0;
    if (!CKCalculateChunkSignatureAndEncryptionKey(a2, a3, *buf, &v18))
    {
      goto LABEL_28;
    }

    v15 = CKChunkDigestResultsChunkSignature(v18);
    v13 = memcmp(a1, v15, v9) == 0;
    if (*buf)
    {
      CKBaseRelease(*buf);
    }

    *buf = 0;
    if (v18)
    {
      CKBaseRelease(v18);
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CKValidateSignature_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"signature size is 0\n");
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CKValidateSignature_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
      goto LABEL_28;
    }
  }

LABEL_29:
  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

os_log_t __CKValidateSignature_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKValidateSignature_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t CKRegisteredChunkKey(uint64_t a1)
{
  if (*(a1 + 35) < 0)
  {
    return a1 + 35 + CKSchemeAndSignatureSize((a1 + 35));
  }

  else
  {
    return 0;
  }
}

uint64_t CKRegisteredSubchunkDigest(uint64_t result)
{
  if (result)
  {
    if (*(result + 29))
    {
      result += 35 + CKChunkSchemeSignatureAndKeySize((result + 35));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CKRegisteredChunkAtIndex(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    v4 = CKRegisteredChunkSize(result);
    if (v4)
    {
      return v3 + v4 * a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CKStoredChunkAtIndex(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    v4 = CKSignatureSize(result + 56);
    v5 = v4 + 57;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5)
    {
      return v3 + v5 * a2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *CKRegisteredChunkSignatureCopyCString(uint64_t a1)
{
  v1 = (a1 + 35);
  v2 = CKSchemeAndSignatureSize((a1 + 35));
  result = malloc_type_malloc((2 * v2) | 1, 0x100004077774924uLL);
  v4 = 0;
  if (v2)
  {
    v5 = result;
    do
    {
      *v5 = CShex_to_string_hex[*v1 >> 4];
      v6 = *v1++;
      v5[1] = CShex_to_string_hex[v6 & 0xF];
      v4 -= 2;
      v5 += 2;
      --v2;
    }

    while (v2);
    v4 = -v4;
  }

  result[v4] = 0;
  return result;
}

uint64_t CKRegisteredChunkKeyCopyCString(uint64_t a1)
{
  if ((*(a1 + 35) & 0x80000000) == 0)
  {
    return 0;
  }

  v2 = (a1 + 35 + CKSchemeAndSignatureSize((a1 + 35)));
  result = CKSchemeAndEncryptionKeySize(v2);
  if (result)
  {
    v3 = result;
    result = malloc_type_malloc((2 * result) | 1, 0x100004077774924uLL);
    v4 = result;
    do
    {
      *v4 = CShex_to_string_hex[*v2 >> 4];
      v5 = *v2++;
      v4[1] = CShex_to_string_hex[v5 & 0xF];
      v4 += 2;
      --v3;
    }

    while (v3);
    *v4 = 0;
  }

  return result;
}

void *CSCreateSourceChunk(char a1, unsigned __int8 a2)
{
  v7 = a1;
  v6 = a2;
  v3 = CKChunkSignatureSize(&v7);
  if (a1 < 0)
  {
    v4 = CKChunkSchemeAndEncryptionKeySize(&v6);
  }

  else
  {
    v4 = 0;
  }

  if (v4 + v3)
  {
    return malloc_type_calloc(1uLL, v4 + v3 + 88, 0x103004069964029uLL);
  }

  else
  {
    return 0;
  }
}

void *CSCreateStoredChunk(char a1)
{
  v2 = a1;
  result = CKChunkSignatureSize(&v2);
  if (result)
  {
    return malloc_type_calloc(result + 57, 1uLL, 0x1000040530DCF2DuLL);
  }

  return result;
}

void clearChunksArray(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
}

CFTypeRef setOpCtxFileDigestArguments(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 144);
  if (result != cf)
  {
    if (result)
    {
      CKBaseRelease(result);
    }

    *(a1 + 144) = 0;
    result = CKBaseRetain(cf);
    *(a1 + 144) = cf;
  }

  return result;
}

uint64_t setOpCtxPath(uint64_t a1, char *__s)
{
  *(a1 + 104) = __s;
  if (__s)
  {
    v3 = strrchr(__s, 47);
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 112) = v4;
  return 0;
}

uint64_t setOpCtxChunkScheme(uint64_t a1, int a2, CFTypeRef cf)
{
  *(a1 + 179) = a2;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 152) = cf;
  v11 = CKChunkDigestArgumentsChunkSchemeByte(cf);
  v6 = CKChunkDigestArgumentsChunkEncryptionKeyScheme(cf);
  v10 = v6;
  v7 = CKChunkSignatureSize(&v11);
  if (a2)
  {
    *(a1 + 308) = v7 + 36;
    if (v11 < 0)
    {
      *(a1 + 308) += CKChunkSchemeAndEncryptionKeySize(&v10);
      v6 = v10;
    }
  }

  else
  {
    *(a1 + 308) = v7 + 88;
  }

  v8 = CSCreateSourceChunk(v11, v6);
  *(a1 + 136) = v8;
  if (v8)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void clearOpCtxError(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 336) = 0;
  }
}

uint64_t readOpCtx(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  v11 = a1[2];
  cf = 0;
  v12 = a1[42];
  if (v12)
  {
    CFRelease(v12);
    a1[42] = 0;
  }

  v13 = (*(v11 + 72))(v10, a2, a3, a4, a5, &cf);
  if (v13)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      readOpCtx_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[7];
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"read failed on itemID:%lld, path:%s, ino:%llu, offset:0x%llx, size:%u, error:%@\n", v14, a1[13], a1[5], a2, a4, cf);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        readOpCtx_cold_2();
      }

      v16 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    a1[42] = cf;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

os_log_t __readOpCtx_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __readOpCtx_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void setOpCtxFileDigestResults(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 208);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 208) = 0;
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 208) = cf;
  }
}

uint64_t getOpCtxSectionLengthAtIndex(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 248) <= a2)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getOpCtxSectionLengthAtIndex_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"sectionIndex %u out of range (numSections = %u)\n", a2, *(a1 + 248));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getOpCtxSectionLengthAtIndex_cold_2();
    }

    v10 = CK_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138543362;
    v13 = v9;
    goto LABEL_18;
  }

  v4 = *(a1 + 256);
  if (!a2)
  {
    result = *v4;
    goto LABEL_23;
  }

  v5 = v4[7 * a2];
  v6 = a2 - 1;
  v7 = v4[7 * (a2 - 1)];
  result = v5 - v7;
  if (v5 < v7)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getOpCtxSectionLengthAtIndex_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"section %u/0x%llx is before section %u/0x%llx\n", a2, *(*(a1 + 256) + 56 * a2), (a2 - 1), *(*(a1 + 256) + 56 * v6));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getOpCtxSectionLengthAtIndex_cold_4();
    }

    v10 = CK_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      if (v9)
      {
        CFRelease(v9);
      }

LABEL_21:
      result = 0;
      goto LABEL_23;
    }

    *buf = 138543362;
    v13 = v9;
LABEL_18:
    _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    goto LABEL_19;
  }

LABEL_23:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __getOpCtxSectionLengthAtIndex_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getOpCtxSectionLengthAtIndex_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getOpCtxSectionLengthAtIndex_block_invoke_494()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getOpCtxSectionLengthAtIndex_block_invoke_2_501()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

BOOL registerOperation(pthread_mutex_t *a1, const __CFSet *a2, const void *a3)
{
  pthread_mutex_lock(a1);
  v6 = CFSetContainsValue(a2, a3);
  if (!v6)
  {
    CFSetAddValue(a2, a3);
  }

  pthread_mutex_unlock(a1);
  return v6 == 0;
}

uint64_t unregisterOperation(pthread_mutex_t *a1, pthread_cond_t *a2, __CFSet *a3, const void *a4)
{
  pthread_mutex_lock(a1);
  CFSetRemoveValue(a3, a4);
  pthread_cond_signal(a2);

  return pthread_mutex_unlock(a1);
}

uint64_t waitForOperation(pthread_mutex_t *a1, pthread_cond_t *a2, const __CFSet *a3, const void *a4)
{
  pthread_mutex_lock(a1);
  while (CFSetContainsValue(a3, a4))
  {
    pthread_cond_wait(a2, a1);
  }

  return pthread_mutex_unlock(a1);
}

uint64_t changeFileFlags(int a1, int a2, int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  memset(&v37, 0, sizeof(v37));
  *__error() = 0;
  v6 = fstat(a1, &v37);
  if (!v6)
  {
    st_flags = v37.st_flags;
    v17 = ~a3;
    v18 = -1;
    while (1)
    {
      *buf = st_flags;
      v30 = ((st_flags | a2) & v17);
      *__error() = 0;
      if (ffsctl(a1, 0xC00C4114uLL, buf, 0) == -1)
      {
        if (*__error() == 25 || *__error() == 45)
        {
          *__error() = 0;
          result = fchflags(a1, (st_flags | a2) & v17);
          if (result)
          {
            v21 = result;
            if (CK_DEFAULT_LOG_BLOCK_8 != -1)
            {
              changeFileFlags_cold_5();
            }

            v22 = CK_DEFAULT_LOG_INTERNAL_8;
            result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR);
            if (result)
            {
              v23 = __error();
              v24 = strerror(*v23);
              v25 = *__error();
              v37.st_dev = 136315906;
              *&v37.st_mode = "changeFileFlags";
              WORD2(v37.st_ino) = 1024;
              *(&v37.st_ino + 6) = v21;
              HIWORD(v37.st_uid) = 2080;
              *&v37.st_gid = v24;
              *(&v37.st_rdev + 2) = 1024;
              *(&v37.st_rdev + 6) = v25;
              _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_ERROR, "fchflags in %s failed with rc %d: %s (%d)", &v37, 0x22u);
LABEL_31:
              result = 0;
              goto LABEL_8;
            }
          }

          goto LABEL_8;
        }

        if (*__error() != 35)
        {
          if (CK_DEFAULT_LOG_BLOCK_8 != -1)
          {
            changeFileFlags_cold_3();
          }

          v8 = CK_DEFAULT_LOG_INTERNAL_8;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
          {
            v26 = __error();
            v27 = strerror(*v26);
            v28 = *__error();
            v37.st_dev = 136315906;
            *&v37.st_mode = "changeFileFlags";
            WORD2(v37.st_ino) = 1024;
            *(&v37.st_ino + 6) = -1;
            HIWORD(v37.st_uid) = 2080;
            *&v37.st_gid = v27;
            *(&v37.st_rdev + 2) = 1024;
            *(&v37.st_rdev + 6) = v28;
            v12 = "ffsctl in %s failed with rc %d: %s (%d)";
            v13 = &v37;
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          changeFileFlags_cold_4();
        }

        v20 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
        {
          v37.st_dev = 136315394;
          *&v37.st_mode = "changeFileFlags";
          WORD2(v37.st_ino) = 1024;
          *(&v37.st_ino + 6) = v18 + 1;
          _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "ffsctl in %s failed with EAGAIN (attempt %d)", &v37, 0x12u);
        }
      }

      else
      {
        if (*buf == HIDWORD(v30))
        {
          goto LABEL_31;
        }

        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          changeFileFlags_cold_2();
        }

        v19 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
        {
          v37.st_dev = 136315394;
          *&v37.st_mode = "changeFileFlags";
          WORD2(v37.st_ino) = 1024;
          *(&v37.st_ino + 6) = v18 + 1;
          _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "ffsctl in %s failed with lost race (attempt %d)", &v37, 0x12u);
        }

        st_flags = HIDWORD(v30);
      }

      if (++v18 > 8)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = v6;
  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    changeFileFlags_cold_1();
  }

  v8 = CK_DEFAULT_LOG_INTERNAL_8;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v9 = __error();
    v10 = strerror(*v9);
    v11 = *__error();
    *buf = 136315906;
    v30 = "changeFileFlags";
    v31 = 1024;
    v32 = v7;
    v33 = 2080;
    v34 = v10;
    v35 = 1024;
    v36 = v11;
    v12 = "fstat in %s failed with rc %d: %s (%d)";
    v13 = buf;
LABEL_6:
    _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, v12, v13, 0x22u);
  }

LABEL_7:
  result = 0xFFFFFFFFLL;
LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __changeFileFlags_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __changeFileFlags_block_invoke_508()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __changeFileFlags_block_invoke_512()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __changeFileFlags_block_invoke_516()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __changeFileFlags_block_invoke_520()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t getMaxXattrSize(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = fpathconf(a2, 26);
  if (v3 < 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getMaxXattrSize_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      v5 = *MEMORY[0x277CBECE8];
      v6 = __error();
      v7 = strerror(*v6);
      v8 = CFStringCreateWithFormat(v5, 0, @"fpathconf failed on %s: %s\n", a1, v7);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        getMaxXattrSize_cold_2();
      }

      v9 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    result = 0;
  }

  else if ((v3 - 64) >= 0xFFFFFFFFFFFFFFC1)
  {
    result = 1 << (v3 - 1);
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __getMaxXattrSize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getMaxXattrSize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t getFileWriteGeneration(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = xmmword_24347EFD8;
  v16 = 0;
  v14 = 0;
  if (fgetattrlist(a2, &v15, &v14, 8uLL, 0x20u) < 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      getFileWriteGeneration_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *MEMORY[0x277CBECE8];
      v8 = *__error();
      v9 = __error();
      v10 = strerror(*v9);
      v11 = CFStringCreateWithFormat(v7, 0, @"fgetattrlist(ATTR_CMN_GEN_COUNT) failed on %s, fd:%d: %d (%s)\n", a1, a2, v8, v10);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        getFileWriteGeneration_cold_2();
      }

      v12 = CK_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    goto LABEL_14;
  }

  if (!HIDWORD(v14))
  {
    *__error() = 16;
LABEL_14:
    result = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  result = 0;
  *a3 = HIDWORD(v14);
LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __getFileWriteGeneration_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getFileWriteGeneration_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getCacheBlob_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getCacheBlob_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getCacheBlob_block_invoke_551()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __getCacheBlob_block_invoke_2_558()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

BOOL canSetXattrOnFile()
{
  getpid();
  v0 = *MEMORY[0x277D861D8];
  return sandbox_check() == 0;
}

uint64_t CKGetCacheBlobFd(uint64_t a1, uint64_t fd, char *name, __CFData **a4, CFErrorRef *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (fd == -1)
  {
    goto LABEL_26;
  }

  v10 = fgetxattr(fd, name, 0, 0, 0, 0);
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  if (v10 == -1)
  {
    v12 = *__error();
    if (v12 != 2 && v12 != 93)
    {
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CKGetCacheBlobFd_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        v13 = *MEMORY[0x277CBECE8];
        v14 = strerror(v12);
        v15 = CFStringCreateWithFormat(v13, 0, @"fgetxattr failed on %s, fd:%d, xattrName:%s: %d (%s)\n", a1, fd, name, v12, v14);
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          CKGetCacheBlobFd_cold_2();
        }

        v16 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = v15;
          _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    if (a5)
    {
      v17 = CKPOSIXErrorCreateWithFormat(v12, @"fgetxattr failed on %s, fd:%d, xattrName:%s", a1, fd, name);
      result = 0;
      *a5 = v17;
      goto LABEL_43;
    }

LABEL_42:
    result = 0;
    goto LABEL_43;
  }

  Mutable = CFDataCreateMutable(0, v10);
  if (!Mutable)
  {
LABEL_26:
    if (a5)
    {
      result = 0;
      *a5 = 0;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v20 = Mutable;
  CFDataSetLength(Mutable, v11);
  MutableBytePtr = CFDataGetMutableBytePtr(v20);
  if (fgetxattr(fd, name, MutableBytePtr, v11, 0, 0) < 0)
  {
    v22 = *__error();
    if (v22 != 2 && v22 != 93)
    {
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CKGetCacheBlobFd_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        v23 = *MEMORY[0x277CBECE8];
        v24 = strerror(v22);
        v25 = CFStringCreateWithFormat(v23, 0, @"fgetxattr failed on %s, fd:%d, xattrName:%s: %d (%s)\n", a1, fd, name, v22, v24);
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          CKGetCacheBlobFd_cold_4();
        }

        v26 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = v25;
          _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    if (a5)
    {
      *a5 = CKPOSIXErrorCreateWithFormat(v22, @"fgetxattr failled on %s, fd:%d, xattrName:%s", a1, fd, name);
    }

    CFRelease(v20);
    goto LABEL_42;
  }

  if (a4)
  {
    *a4 = v20;
  }

  result = 1;
LABEL_43:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKGetCacheBlobFd_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKGetCacheBlobFd_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKGetCacheBlobFd_block_invoke_576()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKGetCacheBlobFd_block_invoke_2_580()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t CKSetCacheBlobFd(uint64_t a1, uint64_t fd, char *name, CFDataRef theData, CFErrorRef *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    *a5 = 0;
  }

  if (fd == -1 || a1 && (getpid(), v10 = *MEMORY[0x277D861D8], sandbox_check()))
  {
    if (a5)
    {
      v11 = 0;
LABEL_45:
      result = 0;
      *a5 = v11;
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (!theData)
  {
    if (fremovexattr(fd, name, 0))
    {
      v14 = *__error();
      if (v14 != 2 && v14 != 93)
      {
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          CKSetCacheBlobFd_cold_5();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
        {
          v21 = *MEMORY[0x277CBECE8];
          v22 = strerror(v14);
          v23 = CFStringCreateWithFormat(v21, 0, @"fremovexattr failed on %s, xattrName:%s: %d (%s)\n", a1, name, v14, v22);
          if (CK_DEFAULT_LOG_BLOCK_8 != -1)
          {
            CKSetCacheBlobFd_cold_6();
          }

          v24 = CK_DEFAULT_LOG_INTERNAL_8;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v31 = v23;
            _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v23)
          {
            CFRelease(v23);
          }
        }
      }

      if (a5)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

LABEL_32:
    result = 1;
    goto LABEL_46;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!fsetxattr(fd, name, BytePtr, Length, 0, 0))
  {
    goto LABEL_32;
  }

  v14 = *__error();
  if (v14 == 13)
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CKSetCacheBlobFd_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      v15 = *MEMORY[0x277CBECE8];
      v16 = strerror(13);
      v17 = CFStringCreateWithFormat(v15, 0, @"fsetxattr failed for %s, fd:%d, xattrName:%s: %d (%s)\n", a1, fd, name, 13, v16);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CKSetCacheBlobFd_cold_4();
      }

      v18 = CK_DEFAULT_LOG_INTERNAL_8;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_41;
      }

      *buf = 138543362;
      v31 = v17;
      v19 = v18;
      v20 = OS_LOG_TYPE_DEBUG;
LABEL_40:
      _os_log_impl(&dword_243431000, v19, v20, "%{public}@", buf, 0xCu);
LABEL_41:
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CKSetCacheBlobFd_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      v26 = *MEMORY[0x277CBECE8];
      v27 = strerror(v14);
      v17 = CFStringCreateWithFormat(v26, 0, @"fsetxattr failed for %s, fd:%d, xattrName:%s: %d (%s)\n", a1, fd, name, v14, v27);
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CKSetCacheBlobFd_cold_2();
      }

      v28 = CK_DEFAULT_LOG_INTERNAL_8;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 138543362;
      v31 = v17;
      v19 = v28;
      v20 = OS_LOG_TYPE_ERROR;
      goto LABEL_40;
    }
  }

  if (a5)
  {
LABEL_44:
    v11 = CKPOSIXErrorCreateWithFormat(v14, @"fgetxattr failled on %s, fd:%d, xattrName:%s", a1, fd, name);
    goto LABEL_45;
  }

LABEL_31:
  result = 0;
LABEL_46:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKSetCacheBlobFd_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKSetCacheBlobFd_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKSetCacheBlobFd_block_invoke_596()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKSetCacheBlobFd_block_invoke_2_603()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKSetCacheBlobFd_block_invoke_607()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CKSetCacheBlobFd_block_invoke_2_611()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t openFdWithReadContext(char *a1, unsigned int a2, char **a3, uint64_t a4, uint64_t *a5)
{
  *a3 = 0;
  v17[2] = 0;
  v17[3] = 0;
  v17[0] = a1;
  v17[1] = a2;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 2;
  *(a4 + 8) = v17;
  *(a4 + 48) = openFd;
  *(a4 + 56) = closeFd;
  *(a4 + 64) = statFd;
  *(a4 + 72) = readFd;
  *(a4 + 80) = getCacheBlobFd;
  *(a4 + 88) = setCacheBlobFd;
  v16 = 0;
  v9 = openFd(v17, &v16, 0);
  *(a4 + 8) = 0;
  if (v9)
  {
    v10 = v16;
    *(v16 + 1) = v16;
    *(v10 + 2) = a4;
    v10[160] = 3;
    *(v10 + 13) = a1;
    if (a1)
    {
      v11 = strrchr(a1, 47);
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 14) = v12;
    if (!a5)
    {
      goto LABEL_11;
    }

    if ((*(a4 + 64))(v10, a5, 0))
    {
      v13 = *a5;
      *(v10 + 5) = a5[1];
      v14 = a5[2];
      *(v10 + 10) = v13;
      *(v10 + 11) = v14;
      v10[34] = *(a5 + 24);
      *(v10 + 3) = *(a5 + 28);
LABEL_11:
      result = 0;
      *a3 = v10;
      return result;
    }

    (*(a4 + 56))(*(a4 + 8), *(v10 + 1), 0);
  }

  return 0xFFFFFFFFLL;
}

uint64_t CSFileDigester_Destroy(uint64_t a1, CFErrorRef *a2)
{
  if (a1 && (v4 = *(a1 + 40)) != 0)
  {
    v5 = v4[4];
    if (v5)
    {
      free(v5);
      v4[4] = 0;
    }

    v6 = v4[1];
    if (v6)
    {
      CFRelease(v6);
      v4[1] = 0;
    }

    v7 = v4[2];
    if (v7)
    {
      CFRelease(v7);
    }

    free(v4);
    *(a1 + 40) = 0;
    return 1;
  }

  else
  {
    v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a2 = v9;
  }

  return result;
}

uint64_t _CSFileDigester_InitializeEmpty(uint64_t a1, CFErrorRef *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x10600402FD52D6EuLL);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v6 = ccsha256_di();
    v5[3] = v6;
    v5[4] = malloc_type_malloc(*(v6 + 8) + *(v6 + 16) + 12, 0x100004052888210uLL);
    v7 = v5[3];
    ccdigest_init();
    *(a1 + 40) = v5;
    return 1;
  }

  else
  {
    v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 1, 0);
    result = 0;
    *a2 = v9;
  }

  return result;
}

uint64_t CSFileDigester_InitializeFromKey(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  result = _CSFileDigester_InitializeEmpty(a1, a3);
  if (result)
  {
    v7 = *(a1 + 40);
    v8 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(a2);
    MutableCopy = CFDataCreateMutableCopy(v8, Length, a2);
    *(v7 + 8) = MutableCopy;
    if (MutableCopy)
    {
      return 1;
    }

    else
    {
      CSFileDigester_Destroy(a1, a3);
      v11 = CFErrorCreate(v8, *MEMORY[0x277CBEE48], 1, 0);
      result = 0;
      *a3 = v11;
    }
  }

  return result;
}

void CSFileDigester_SetKey(uint64_t a1, CFDataRef theData)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 8);
  if (v3 != theData)
  {
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 8) = 0;
    }

    if (theData)
    {
      v5 = *MEMORY[0x277CBECE8];
      Length = CFDataGetLength(theData);
      *(v2 + 8) = CFDataCreateMutableCopy(v5, Length, theData);
    }
  }
}

uint64_t CSFileDigester_Update(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = *MEMORY[0x277CBEE48];
    v8 = 7;
    goto LABEL_5;
  }

  if (*v5)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = *MEMORY[0x277CBEE48];
    v8 = 6;
LABEL_5:
    v9 = CFErrorCreate(v6, v7, v8, 0);
    result = 0;
    *a4 = v9;
    return result;
  }

  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  ccdigest_update();
  return 1;
}

uint64_t CSFileDigester_Finalize(uint64_t a1, void *a2, unsigned int a3, CFErrorRef *a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*v5 || (result = _CSFileDigester_FinalizeDigest(a1, a4), result))
    {
      BytePtr = CFDataGetBytePtr(*(v5 + 16));
      if (CFDataGetLength(*(v5 + 16)) <= a3)
      {
        Length = CFDataGetLength(*(v5 + 16));
      }

      else
      {
        Length = a3;
      }

      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  else
  {
    v11 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v11;
  }

  return result;
}

uint64_t _CSFileDigester_FinalizeDigest(uint64_t a1, CFErrorRef *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (!*(v4 + 8) && !*(a1 + 16))
  {
    v12 = *MEMORY[0x277CBECE8];
    v11 = *MEMORY[0x277CBEE48];
    v13 = 6;
    goto LABEL_9;
  }

  v18 = 0u;
  v19 = 0u;
  v5 = *(v4 + 32);
  (*(*(v4 + 24) + 56))();
  v6 = *(v4 + 32);
  v7 = *(*(v4 + 24) + 8) + *(*(v4 + 24) + 16);
  cc_clear();
  if (!*(v4 + 8))
  {
    *bytes = 0u;
    v17 = 0u;
    ccsha256_di();
    CFDataGetLength(*(a1 + 16));
    CFDataGetBytePtr(*(a1 + 16));
    v10 = cchkdf();
    v8 = *MEMORY[0x277CBECE8];
    if (!v10)
    {
      *(v4 + 8) = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32);
      cc_clear();
      goto LABEL_5;
    }

    v11 = *MEMORY[0x277CBEE48];
    v12 = *MEMORY[0x277CBECE8];
    v13 = 2;
LABEL_9:
    v14 = CFErrorCreate(v12, v11, v13, 0);
    result = 0;
    *a2 = v14;
    goto LABEL_10;
  }

  v8 = *MEMORY[0x277CBECE8];
LABEL_5:
  *bytes = 0u;
  v17 = 0u;
  ccsha256_di();
  CFDataGetLength(*(v4 + 8));
  CFDataGetBytePtr(*(v4 + 8));
  cchmac();
  *(v4 + 16) = CFDataCreate(v8, bytes, 32);
  result = 1;
  *v4 = 1;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSFileDigester_Verify(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    if (*v5 || (result = _CSFileDigester_FinalizeDigest(a1, a4), result))
    {
      CFDataGetBytePtr(*(v5 + 16));
      return cc_cmp_safe() == 0;
    }
  }

  else
  {
    v7 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v7;
  }

  return result;
}

uint64_t CSFileDigester_ExportCredential(uint64_t a1, CFMutableDataRef *a2, CFErrorRef *a3)
{
  if (!a2)
  {
    return 0;
  }

  *a2 = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *MEMORY[0x277CBECE8];
    if (*v5)
    {
      Length = CFDataGetLength(*(v5 + 8));
      *a2 = CFDataCreateMutableCopy(v6, Length, *(v5 + 8));
      return 1;
    }

    v10 = *MEMORY[0x277CBEE48];
    v9 = *MEMORY[0x277CBECE8];
    v11 = 3;
  }

  else
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = *MEMORY[0x277CBEE48];
    v11 = 7;
  }

  v12 = CFErrorCreate(v9, v10, v11, 0);
  result = 0;
  *a3 = v12;
  return result;
}

uint64_t CSSetSQLiteCorruptionTestingEnabled(uint64_t result)
{
  if (enabled != result)
  {
    callNumber = 0;
    corruptionHappened = 0;
  }

  enabled = result;
  return result;
}

uint64_t CS_corruption_causing_sqlite3_open_v2(const char *a1, sqlite3 **a2, int a3, const char *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingShouldCorrupt())
  {
    if (CK_DEFAULT_LOG_BLOCK_9 != -1)
    {
      CS_corruption_causing_sqlite3_open_v2_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: simulating corruption in sqlite3_open_v2");
      if (CK_DEFAULT_LOG_BLOCK_9 != -1)
      {
        CS_corruption_causing_sqlite3_open_v2_cold_2();
      }

      v9 = CK_DEFAULT_LOG_INTERNAL_9;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    v10 = *MEMORY[0x277D85DE8];
    return 11;
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    return sqlite3_open_v2(a1, a2, a3, a4);
  }
}

uint64_t CS_corruption_causing_sqlite3_step(sqlite3_stmt *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingShouldCorrupt())
  {
    if (CK_DEFAULT_LOG_BLOCK_9 != -1)
    {
      CS_corruption_causing_sqlite3_step_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: simulating corruption in sqlite3_step");
      if (CK_DEFAULT_LOG_BLOCK_9 != -1)
      {
        CS_corruption_causing_sqlite3_step_cold_2();
      }

      v3 = CK_DEFAULT_LOG_INTERNAL_9;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v2;
        _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v7, 0xCu);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }

    v4 = *MEMORY[0x277D85DE8];
    return 11;
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    return sqlite3_step(a1);
  }
}

uint64_t CS_corruption_causing_sqlite3_prepare_v2(sqlite3 *a1, const char *a2, int a3, sqlite3_stmt **a4, const char **a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingShouldCorrupt())
  {
    if (CK_DEFAULT_LOG_BLOCK_9 != -1)
    {
      CS_corruption_causing_sqlite3_prepare_v2_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: simulating corruption in sqlite3_prepare_v2");
      if (CK_DEFAULT_LOG_BLOCK_9 != -1)
      {
        CS_corruption_causing_sqlite3_prepare_v2_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_9;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", &v15, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    v12 = *MEMORY[0x277D85DE8];
    return 11;
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return sqlite3_prepare_v2(a1, a2, a3, a4, a5);
  }
}

uint64_t CS_corruption_causing_sqlite3_exec(sqlite3 *a1, const char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (CSSQLiteCorruptionTestingShouldCorrupt())
  {
    if (CK_DEFAULT_LOG_BLOCK_9 != -1)
    {
      CS_corruption_causing_sqlite3_exec_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: simulating corruption in sqlite3_exec");
      if (CK_DEFAULT_LOG_BLOCK_9 != -1)
      {
        CS_corruption_causing_sqlite3_exec_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_9;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", &v15, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    v12 = *MEMORY[0x277D85DE8];
    return 11;
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return sqlite3_exec(a1, a2, a3, a4, a5);
  }
}

uint64_t CSSQLiteCorruptionTestingShouldCorrupt()
{
  v9 = *MEMORY[0x277D85DE8];
  if (enabled != 1)
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  if ((CSSQLiteCorruptionTestingShouldCorrupt_initLogged & 1) == 0)
  {
    if (CK_DEFAULT_LOG_BLOCK_9 != -1)
    {
      CSSQLiteCorruptionTestingShouldCorrupt_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      v0 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: initializing with probability %d", 60);
      if (CK_DEFAULT_LOG_BLOCK_9 != -1)
      {
        CSSQLiteCorruptionTestingShouldCorrupt_cold_2();
      }

      v1 = CK_DEFAULT_LOG_INTERNAL_9;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v0;
        _os_log_impl(&dword_243431000, v1, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v0)
      {
        CFRelease(v0);
      }
    }

    CSSQLiteCorruptionTestingShouldCorrupt_initLogged = 1;
  }

  if ((corruptionHappened & 1) == 0)
  {
    if ((CSSQLiteCorruptionTestingShouldCorrupt_randSeeded & 1) == 0)
    {
      v3 = time(0);
      srand(v3);
      CSSQLiteCorruptionTestingShouldCorrupt_randSeeded = 1;
    }

    if (callNumber < 0)
    {
      result = 0;
      ++callNumber;
      goto LABEL_20;
    }

    v4 = rand();
    ++callNumber;
    HIDWORD(v5) = -286331153 * v4 + 143165576;
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 2) <= 0x4444444)
    {
      result = 1;
      corruptionHappened = 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  result = 1;
LABEL_20:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CSSQLiteCorruptionTestingShouldCorrupt_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_9 = result;
  return result;
}

os_log_t __CSSQLiteCorruptionTestingShouldCorrupt_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_9 = result;
  return result;
}

const void **CKChunkSignatureGeneratorV2Finalize(uint64_t a1)
{
  result = **(a1 + 48);
  if (result)
  {
    result = CSContext_Destroy(result, 0);
    **(a1 + 48) = 0;
  }

  return result;
}

uint64_t CKChunkSignatureGeneratorV2Init(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (CKChunkDigestArgumentsGetClass(a2) != 2)
  {
    return 0;
  }

  if (CKChunkDigestArgumentsBoundaryKey(a2))
  {
    v6 = CKChunkDigestArgumentsBoundaryKey(a2);
    v7 = CSContext_InititializeFromBoundaryKey(v6, 0, *(a1 + 48), a3);
  }

  else
  {
    v7 = CSContext_Initialize(*(a1 + 48), a3);
  }

  v8 = v7;
  if (v7 && CSChunkDigester_Initialize(**(a1 + 48), a3))
  {
    *(a1 + 40) = 0;
    return 1;
  }

  return v8;
}

uint64_t CKChunkSignatureGeneratorV2Update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) += a3;
  CSChunkDigester_Update(**(a1 + 48), a2, a3, 0);
  return 1;
}

uint64_t CKChunkSignatureGeneratorV2Finish(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v5 = 0;
  v6 = 0;
  v34 = 0;
  cf = 0;
  v7 = (a1 + 32);
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v12 = CKChunkDigestArgumentsV2ChunkKey(*(a1 + 24));
  if (v12)
  {
    v13 = v12;
    v14 = CKChunkDigestResultsChunkSignature(a2);
    v15 = CKChunkSignatureSize(v14);
    v33 = 0;
    BytePtr = CFDataGetBytePtr(v13);
    v17 = *MEMORY[0x277CBECE8];
    v18 = CKChunkEncryptionKeySize(BytePtr);
    v19 = CFDataCreate(v17, BytePtr + 1, v18);
    CSChunkDigester_SetKey(**(a1 + 48), v19);
    CFRelease(v19);
    if (CSChunkDigester_Verify(**(a1 + 48), (v14 + 1), v15, &v33) && (CKChunkDigestResultsV2Create(v7, v14, BytePtr, *(a1 + 40)), (v20 = *(a1 + 32)) != 0))
    {
      if (!a2 || CKChunkDigestResultsEqual(v20, a2))
      {
        v5 = 0;
        v6 = 0;
LABEL_2:
        if (a3)
        {
          if (*v7)
          {
            CFRetain(*v7);
            v8 = *v7;
          }

          else
          {
            v8 = 0;
          }

          *a3 = v8;
        }

        v21 = 1;
        v22 = cf;
        goto LABEL_14;
      }

      v24 = CKErrorCreateWithFormat(4, @"CSChunkDigester_Verify succeeded by chunk digest and expected chunk digest not equal");
    }

    else
    {
      if (v33)
      {
        CFRelease(v33);
      }

      v33 = 0;
      v24 = CFErrorCreate(v17, @"com.apple.chunkinglibrary", 4, 0);
    }

    cf = v24;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    LOBYTE(v33) = CKChunkDigestArgumentsChunkSchemeByte(*(a1 + 24));
    v6 = CKChunkSchemeAndSignatureSize(&v33);
    v25 = CKChunkSignatureSize(&v33);
    if (!v6)
    {
      goto LABEL_32;
    }

    v26 = v25;
    v27 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
    v6 = v27;
    if (!v27)
    {
      goto LABEL_32;
    }

    *v27 = v33;
    if (!CSChunkDigester_Finalize(**(a1 + 48), v27 + 1, v26, &cf))
    {
      goto LABEL_32;
    }

    v32 = CKChunkDigestArgumentsChunkEncryptionKeySchemeByte(*(a1 + 24));
    v28 = CKChunkSchemeAndEncryptionKeySize(&v32);
    v29 = CKChunkEncryptionKeySize(&v32);
    v5 = 0;
    if (!CSChunkDigester_ExportCredential(**(a1 + 48), &v34, &cf) || !v34)
    {
      goto LABEL_33;
    }

    if (v29 != CFDataGetLength(v34))
    {
LABEL_32:
      v5 = 0;
      goto LABEL_33;
    }

    v30 = malloc_type_calloc(1uLL, v28, 0x100004077774924uLL);
    v5 = v30;
    if (v30)
    {
      *v30 = v32;
      v31 = CFDataGetBytePtr(v34);
      memcpy(v5 + 1, v31, v29);
      CKChunkDigestResultsV2Create(v7, v6, v5, *(a1 + 40));
      if (*(a1 + 32))
      {
        goto LABEL_2;
      }
    }
  }

LABEL_33:
  v21 = 0;
  v22 = cf;
  if (a4 && cf)
  {
    CFRetain(cf);
    v21 = 0;
    v22 = cf;
    *a4 = cf;
  }

LABEL_14:
  if (v22)
  {
    CFRelease(v22);
  }

  cf = 0;
  if (v34)
  {
    CFRelease(v34);
  }

  v34 = 0;
  free(v6);
  free(v5);
  return v21;
}

uint64_t CSChunkDigester_Destroy(uint64_t a1, CFErrorRef *a2)
{
  if (a1 && (v4 = *(a1 + 48)) != 0)
  {
    v5 = *(v4 + 24);
    if (v5)
    {
      free(v5);
      *(v4 + 24) = 0;
    }

    v6 = *(v4 + 32);
    if (v6)
    {
      CFRelease(v6);
      *(v4 + 32) = 0;
    }

    if (*v4)
    {
      CFRelease(*v4);
    }

    free(v4);
    *(a1 + 48) = 0;
    return 1;
  }

  else
  {
    v8 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a2 = v8;
  }

  return result;
}

uint64_t _CSChunkDigester_InitializeEmpty(uint64_t a1, CFErrorRef *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x10600406D85BF17uLL);
  if (v4)
  {
    v5 = v4;
    v6 = ccsha256_di();
    v5[2] = v6;
    v5[3] = malloc_type_malloc(*(v6 + 8) + *(v6 + 16) + 12, 0x100004052888210uLL);
    v7 = v5[2];
    ccdigest_init();
    *(v5 + 8) = 0;
    *v5 = 0;
    v5[4] = 0;
    result = 1;
    *(a1 + 48) = v5;
  }

  else
  {
    v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 1, 0);
    result = 0;
    *a2 = v9;
  }

  return result;
}

uint64_t CSChunkDigester_InitializeFromKey(uint64_t a1, const __CFData *a2, CFErrorRef *a3)
{
  result = _CSChunkDigester_InitializeEmpty(a1, a3);
  if (result)
  {
    v7 = *(a1 + 48);
    v8 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(a2);
    MutableCopy = CFDataCreateMutableCopy(v8, Length, a2);
    *(v7 + 32) = MutableCopy;
    if (MutableCopy)
    {
      return 1;
    }

    else
    {
      CSChunkDigester_Destroy(a1, a3);
      v11 = CFErrorCreate(v8, *MEMORY[0x277CBEE48], 1, 0);
      result = 0;
      *a3 = v11;
    }
  }

  return result;
}

uint64_t CSChunkDigester_Update(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    ccdigest_update();
    return 1;
  }

  else
  {
    v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v9;
  }

  return result;
}

uint64_t CSChunkDigester_Finalize(uint64_t a1, void *a2, unsigned int a3, CFErrorRef *a4)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    if (*(v5 + 8) || (result = _CSChunkDigester_FinalizeDigest(a1, a4), result))
    {
      BytePtr = CFDataGetBytePtr(*v5);
      if (CFDataGetLength(*v5) <= a3)
      {
        Length = CFDataGetLength(*v5);
      }

      else
      {
        Length = a3;
      }

      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  else
  {
    v11 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v11;
  }

  return result;
}

uint64_t _CSChunkDigester_FinalizeDigest(uint64_t a1, CFErrorRef *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  if (!*(v4 + 32) && !*(a1 + 24))
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = *MEMORY[0x277CBEE48];
    v13 = 6;
    goto LABEL_10;
  }

  ccsha256_di();
  v24 = 0u;
  v25 = 0u;
  v5 = *(v4 + 24);
  (*(*(v4 + 16) + 56))();
  v6 = *(v4 + 24);
  v7 = *(*(v4 + 16) + 8) + *(*(v4 + 16) + 16);
  cc_clear();
  v8 = *(v4 + 32);
  if (v8)
  {
    goto LABEL_4;
  }

  *v18 = 0u;
  v19 = 0u;
  CFDataGetLength(*(a1 + 24));
  CFDataGetBytePtr(*(a1 + 24));
  v10 = cchkdf();
  v11 = *MEMORY[0x277CBECE8];
  if (v10)
  {
    v12 = *MEMORY[0x277CBEE48];
    v13 = 2;
LABEL_10:
    v9 = 0;
    *a2 = CFErrorCreate(v11, v12, v13, 0);
    goto LABEL_11;
  }

  *(v4 + 32) = CFDataCreate(v11, v18, 32);
  cc_clear();
  v8 = *(v4 + 32);
LABEL_4:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  CFDataGetLength(v8);
  CFDataGetBytePtr(*(v4 + 32));
  if (cchkdf())
  {
    *a2 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 2, 0);
    cc_clear();
    v9 = 0;
  }

  else
  {
    *bytes = 0u;
    v17 = 0u;
    ccsha256_di();
    cchmac();
    *v4 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 32);
    v9 = 1;
    *(v4 + 8) = 1;
    cc_clear();
    cc_clear();
  }

LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

void CSChunkDigester_SetKey(uint64_t a1, CFDataRef theData)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  if (v3 != theData)
  {
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 32) = 0;
    }

    if (theData)
    {
      v5 = *MEMORY[0x277CBECE8];
      Length = CFDataGetLength(theData);
      *(v2 + 32) = CFDataCreateMutableCopy(v5, Length, theData);
    }
  }
}

uint64_t CSChunkDigester_Verify(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    if (*(v5 + 8) || (result = _CSChunkDigester_FinalizeDigest(a1, a4), result))
    {
      CFDataGetBytePtr(*v5);
      return cc_cmp_safe() == 0;
    }
  }

  else
  {
    v7 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v7;
  }

  return result;
}

uint64_t CSChunkDigester_ExportCredential(uint64_t a1, CFMutableDataRef *a2, CFErrorRef *a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(v4 + 32);
    v6 = *MEMORY[0x277CBECE8];
    if (v5)
    {
      Length = CFDataGetLength(v5);
      *a2 = CFDataCreateMutableCopy(v6, Length, *(v4 + 32));
      return 1;
    }

    v11 = *MEMORY[0x277CBEE48];
    v10 = *MEMORY[0x277CBECE8];
    v12 = 3;
  }

  else
  {
    v10 = *MEMORY[0x277CBECE8];
    v11 = *MEMORY[0x277CBEE48];
    v12 = 7;
  }

  v13 = CFErrorCreate(v10, v11, v12, 0);
  result = 0;
  *a3 = v13;
  return result;
}

uint64_t CKFileSignatureGeneratorV2Init(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (CKFileDigestArgumentsGetClass(a2) != 2)
  {
    return 0;
  }

  if (CKFileDigestArgumentsBoundaryKey(a2))
  {
    v6 = CKFileDigestArgumentsBoundaryKey(a2);
    result = CSContext_InititializeFromBoundaryKey(v6, 0, *(a1 + 48), a3);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = CKFileDigestArgumentsFileKey(a2);
    if (!result)
    {
      return result;
    }

    v8 = CKFileDigestArgumentsFileKey(a2);
    result = CSContext_InitializeFromFileKey(v8, 0, *(a1 + 48), a3);
    if (!result)
    {
      return result;
    }
  }

  if (CKFileDigestArgumentsBoundaryKey(a2))
  {
    result = CSFileDigester_Initialize(**(a1 + 48), a3);
    if (!result)
    {
      return result;
    }

LABEL_13:
    *(a1 + 40) = 0;
    CSFileDigester_Update(**(a1 + 48), "com.apple.DataObjectSaltV2", 26, 0);
    return 1;
  }

  result = CKFileDigestArgumentsFileKey(a2);
  if (result)
  {
    v9 = **(a1 + 48);
    v10 = CKFileDigestArgumentsFileKey(a2);
    result = CSFileDigester_InitializeFromKey(v9, v10, a3);
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t CKFileSignatureGeneratorV2Update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  *(a1 + 40) += a3;
  CSFileDigester_Update(*v3, a2, a3, 0);
  return 1;
}

uint64_t CKFileSignatureGeneratorV2Finish(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  cf = 0;
  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  if (v6)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    v13 = CKFileDigestResultsFileSignature(a2);
    v14 = CKFileSignatureSize(v13);
    v23 = 0;
    if (!CKFileDigestResultsFileVerificationKey(a2))
    {
      CKFileSignatureGeneratorV2Finish_cold_1();
    }

    v15 = **(a1 + 48);
    v16 = CKFileDigestResultsFileVerificationKey(a2);
    CSFileDigester_SetKey(v15, v16);
    if (CSFileDigester_Verify(**(a1 + 48), (v13 + 1), v14, &v23))
    {
      v17 = *(a1 + 40);
      v18 = CKFileDigestResultsFileVerificationKey(a2);
      CKFileDigestResultsCreate(v7, v13, v17, v18);
      v6 = *(a1 + 32);
      if (v6)
      {
LABEL_2:
        v8 = 0;
LABEL_3:
        if (a3)
        {
          CFRetain(v6);
          *a3 = *v7;
        }

        v9 = 1;
        v6 = cf;
        goto LABEL_6;
      }
    }

    else
    {
      if (v23)
      {
        CFRelease(v23);
      }

      v23 = 0;
      v6 = CFErrorCreate(*MEMORY[0x277CBECE8], @"com.apple.chunkinglibrary", 3, 0);
      cf = v6;
    }

    v8 = 0;
  }

  else
  {
    v22 = CKFileDigestArgumentsFileSchemeByte(*(a1 + 24));
    v8 = CKFileSchemeAndSignatureSize(&v22);
    v19 = CKFileSignatureSize(&v22);
    v23 = 0;
    if (v8)
    {
      v20 = v19;
      v21 = malloc_type_calloc(1uLL, v8, 0x100004077774924uLL);
      v8 = v21;
      if (v21)
      {
        *v21 = v22;
        if (CSFileDigester_Finalize(**(a1 + 48), v21 + 1, v20, &cf))
        {
          if (CSFileDigester_ExportCredential(**(a1 + 48), &v23, &cf) && v23)
          {
            CKFileDigestResultsV2Create(v7, v8, *(a1 + 40), v23);
            if (v23)
            {
              CFRelease(v23);
            }

            v6 = *v7;
            if (*v7)
            {
              goto LABEL_3;
            }
          }
        }
      }
    }

    v6 = cf;
  }

  v9 = 0;
  if (a4 && v6)
  {
    CFRetain(v6);
    v9 = 0;
    v6 = cf;
    *a4 = cf;
  }

LABEL_6:
  if (v6)
  {
    CFRelease(v6);
  }

  cf = 0;
  free(v8);
  return v9;
}

uint64_t cfb_start(_CCCryptor *a1, _OWORD *a2, void *a3)
{
  if (a3)
  {
    *a3 = 16;
    v4 = a3 + 2;
    if (a2)
    {
      *v4 = *a2;
    }

    else
    {
      *v4 = 0;
      a3[3] = 0;
    }

    a3[1] = 0;
    v5 = ecb_encrypt(a1, v4, a3 + 2, 16);
    if (v5)
    {
      fwrite("Failed to encrypt the IV\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  else
  {
    fwrite("Parameter validation failed!\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 4294962996;
  }

  return v5;
}

uint64_t ecb_encrypt(_CCCryptor *a1, void *dataOut, void *dataIn, int a4)
{
  dataOutMoved = 0;
  v5 = CCCryptorUpdate(a1, dataIn, a4, dataOut, a4, &dataOutMoved);
  if (v5 || dataOutMoved != a4)
  {
    fprintf(*MEMORY[0x277D85DF8], "Error occurred while encrypting block during chaining mode. status = %d\n", v5);
  }

  return v5;
}

uint64_t cfb_encrypt(_CCCryptor *a1, char *a2, _BYTE *a3, uint64_t a4, void *a5)
{
  if (!a2 || (v5 = a3) == 0 || !a5)
  {
    fwrite("Parameter validation failed!\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 4294962996;
  }

  if (*a5 > 0x80uLL)
  {
    return 4294962996;
  }

  v8 = a5[1];
  if (v8 > 0x7F)
  {
    return 4294962996;
  }

  if (a4)
  {
    v9 = a2;
    v11 = a5 + 2;
    v12 = a5 + 18;
    do
    {
      if (v8 == *a5)
      {
        v13 = ecb_encrypt(a1, a5 + 2, a5 + 18, v8);
        if (v13)
        {
          v16 = v13;
          fwrite("Encryption failed!\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
          return v16;
        }

        v8 = 0;
        a5[1] = 0;
      }

      v14 = *v9++;
      v15 = *(v11 + v8) ^ v14;
      *v5++ = v15;
      *(v12 + a5[1]) = v15;
      v8 = a5[1] + 1;
      a5[1] = v8;
      --a4;
    }

    while (a4);
  }

  return 0;
}

uint64_t cfb_decrypt(_CCCryptor *a1, char *a2, _BYTE *a3, uint64_t a4, void *a5)
{
  if (!a2 || (v5 = a3) == 0 || !a5)
  {
    fwrite("Parameter validation failed!\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 4294962996;
  }

  if (*a5 > 0x80uLL)
  {
    return 4294962996;
  }

  v8 = a5[1];
  if (v8 > 0x7F)
  {
    return 4294962996;
  }

  if (a4)
  {
    v9 = a2;
    v11 = a5 + 2;
    v12 = a5 + 18;
    do
    {
      if (v8 == *a5)
      {
        v13 = ecb_encrypt(a1, a5 + 2, a5 + 18, v8);
        if (v13)
        {
          v15 = v13;
          fwrite("Decryption failed!\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
          return v15;
        }

        v8 = 0;
        a5[1] = 0;
      }

      v14 = *v9++;
      *(v12 + v8) = v14;
      *v5++ = *(v11 + a5[1]) ^ v14;
      v8 = a5[1] + 1;
      a5[1] = v8;
      --a4;
    }

    while (a4);
  }

  return 0;
}

uint64_t CKFileDigestArgumentsV1Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKFileDigestArgumentsAllocate(&v3, 1, 4);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t _CKFileDigestArgumentsV1Create(CFTypeRef *a1, int a2, char a3, CFTypeRef *a4)
{
  cf = 0;
  v15 = 0;
  *a1 = 0;
  v8 = CKFileDigestArgumentsAllocate(&cf, 1, 4);
  v9 = 0;
  v10 = cf;
  if (v8 && cf)
  {
    if (_CKChunkDigestArgumentsInit(cf, a3, &v15))
    {
      v11 = cf;
      **(cf + 3) = a2;
      CFRetain(v11);
      v12 = v15;
      *a1 = cf;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v12 = v15;
      if (a4 && v15)
      {
        CFRetain(v15);
        v9 = 0;
        v12 = v15;
        *a4 = v15;
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v10 = cf;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

CFStringRef CKFileDigestArgumentsV1CopyDescription(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v1 = &unk_243480212;
  }

  else
  {
    v1 = "un";
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v1 %sencrypted", v1);
}

uint64_t CKChunkDigestResultsAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKChunkDigestResultsGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v6, a3 + 56);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 48) = result + 56;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t _CKChunkDigestResultsInit(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, int a4, void *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  *(a1 + 24) = CKChunkSignatureCopy(a2);
  if (a3)
  {
    *(a1 + 32) = CKChunkEncryptionKeyCopy(a3);
  }

  *(a1 + 40) = a4;
  return 1;
}

uint64_t CKChunkDigestResultsSignatureAndKeyEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    if (v3 == *(a2 + 16))
    {
      v4 = _requestCallbacks_5[2 * v3];
      if (v4)
      {
        return v4();
      }
    }

    return 0;
  }

  return v2;
}

uint64_t CKChunkDigestResultsCreate(void *a1, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  v4 = *a2 & 0x7F;
  if (v4 != 4)
  {
    if (v4 == 1)
    {
      return CKChunkDigestResultsV1Create(a1, a2, a3, a4);
    }

    return 0;
  }

  return CKChunkDigestResultsV2Create(a1, a2, a3, a4);
}

uint64_t CKChunkDigestResultsEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = CKChunkSignaturesEqual(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    result = CKChunkKeysEqual(*(a1 + 32), *(a2 + 32));
    if (result)
    {
      return *(a1 + 40) == *(a2 + 40);
    }
  }

  return result;
}

void _CKChunkDigestResultsCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (_requestCallbacks_5[2 * v2 + 1])(a1);
  }

  free(*(a1 + 24));
  v3 = *(a1 + 32);

  free(v3);
}

CFStringRef _CKChunkDigestResultsCFCopyFormatDescription(uint64_t a1)
{
  v2 = CKChunkSchemeAndSignatureCopyCString(*(a1 + 24));
  v3 = "present";
  if (!*(a1 + 32))
  {
    v3 = "not-present";
  }

  v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"sig %s key %s len %lu", v2, v3, *(a1 + 40));
  free(v2);
  return v4;
}

uint64_t CKTypeRegister(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    pthread_mutex_lock(&CKTypeRegister_lock);
    if (!*a1)
    {
      *a1 = _CFRuntimeRegisterClass();
    }

    pthread_mutex_unlock(&CKTypeRegister_lock);
    return *a1;
  }

  return result;
}

uint64_t CKTypeCreateInstance_(uint64_t a1, uint64_t a2, size_t a3)
{
  if (HIDWORD(a3))
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a3);
  }

  return v3;
}

CFTypeRef CKBaseRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CKBaseRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef CKBaseRetainCallBack(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CKBaseReleaseCallBack(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CKChunkDigestResultsV2Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKChunkDigestResultsAllocate(&v3, 2, 0);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t CKChunkDigestResultsV2Create(void *a1, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  cf = 0;
  v12 = 0;
  *a1 = 0;
  v8 = 0;
  if (CKChunkDigestResultsAllocate(&cf, 2, 0) && cf)
  {
    if (_CKChunkDigestResultsInit(cf, a2, a3, a4, &v12))
    {
      if (cf)
      {
        CFRetain(cf);
        v9 = cf;
      }

      else
      {
        v9 = 0;
      }

      *a1 = v9;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

BOOL CKChunkDigestResultsV2SignatureAndKeyEqual(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    if (*(a1 + 16) == *(a2 + 16))
    {
      result = CKChunkSignaturesEqual(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        v5 = *(a1 + 32);
        v6 = *(a2 + 32);
        if (!(v5 | v6))
        {
          return 1;
        }

        return CKChunkKeysEqual(v5, v6);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFErrorRef _CKNoMemoryErrorInit(CFDictionaryRef userInfo)
{
  result = CFErrorCreate(0, @"com.apple.chunkinglibrary", 2, userInfo);
  sNoMemoryError = result;
  return result;
}

uint64_t CKNoMemoryErrorCreate()
{
  if (!sNoMemoryError)
  {
    abort();
  }

  CFRetain(sNoMemoryError);
  return sNoMemoryError;
}

void CKUserInfoAddDescription(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, *MEMORY[0x277CBEE30], value);
    v4 = *MEMORY[0x277CBEE58];

    CFDictionarySetValue(a1, v4, value);
  }
}

CFErrorRef CKErrorCreateWithUserInfo(const __CFString *a1, CFIndex a2, const __CFDictionary *a3)
{
  pthread_once(&sOnceForLibrary, _CKInitOnceForLibrary);
  if (a3)
  {
    if (CFDictionaryGetCount(a3))
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  result = CFErrorCreate(0, a1, a2, v6);
  if (!result)
  {

    return CKNoMemoryErrorCreate();
  }

  return result;
}

CFErrorRef CKErrorCreate(const __CFString *a1, CFIndex a2, const __CFDictionary *a3, void *a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CKUserInfoAddDescription(Mutable, a4);
  if (a3)
  {
    Count = CFDictionaryGetCount(a3);
    v10 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a3, v10, v11);
    if (Count >= 1)
    {
      v12 = v10;
      v13 = v11;
      do
      {
        v15 = *v12++;
        v14 = v15;
        v16 = *v13++;
        CFDictionarySetValue(Mutable, v14, v16);
        --Count;
      }

      while (Count);
    }

    free(v10);
    free(v11);
  }

  v17 = CKErrorCreateWithUserInfo(a1, a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v17;
}

CFErrorRef CKInternalErrorCreateWithFormat(unsigned int a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = CFStringCreateWithFormatAndArguments(0, 0, a3, &a9);
  v12 = CKErrorCreate(@"com.apple.chunkinglibrary.internal", a1, a2, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

CFErrorRef CKErrorCreateWithFormat(CFIndex a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  v4 = CKErrorCreate(@"com.apple.chunkinglibrary", a1, 0, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

CFErrorRef CKInternalWrappingErrorCreateWithFormat(unsigned int a1, const void *a2, const __CFDictionary *a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = Mutable;
  if (a2)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE78], a2);
  }

  if (a3)
  {
    Count = CFDictionaryGetCount(a3);
    v16 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v17 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(a3, v16, v17);
    if (Count >= 1)
    {
      v18 = v16;
      v19 = v17;
      do
      {
        v21 = *v18++;
        v20 = v21;
        v22 = *v19++;
        CFDictionarySetValue(v14, v20, v22);
        --Count;
      }

      while (Count);
    }

    free(v16);
    free(v17);
  }

  v23 = CFStringCreateWithFormatAndArguments(0, 0, a4, &a9);
  v24 = CKErrorCreate(@"com.apple.chunkinglibrary.internal", a1, v14, v23);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v24;
}

CFErrorRef CKSQLiteErrorCreateWithFormat(int a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  v4 = CKErrorCreate(@"com.apple.chunkinglibrary.sqlite", a1, 0, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

CFErrorRef CKPOSIXErrorCreateWithFormat(int a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  v4 = CKErrorCreate(*MEMORY[0x277CBEE48], a1, 0, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void _CKInitOnceForLibrary()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE30], @"Memory could not be allocated for the intended error");
  sNoMemoryError = CFErrorCreate(0, @"com.apple.chunkinglibrary", 2, Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t CKChunkDigestArgumentsV1Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKChunkDigestArgumentsAllocate(&v3, 1, 0);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t CKChunkDigestArgumentsV1ChunkSchemeByte(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return 129;
  }

  else
  {
    return 1;
  }
}

CFStringRef CKChunkDigestArgumentsV1CopyDescription(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v1 = "encrypted";
  }

  else
  {
    v1 = "unencrypted";
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v1 %s", v1);
}

uint64_t CKChunkDigestArgumentsV1Create(void *a1, char a2, CFTypeRef *a3)
{
  cf = 0;
  v13 = 0;
  *a1 = 0;
  v6 = CKChunkDigestArgumentsAllocate(&cf, 1, 0);
  v7 = 0;
  v8 = cf;
  if (v6 && cf)
  {
    if (_CKChunkDigestArgumentsInit(cf, a2, &v13))
    {
      if (cf)
      {
        CFRetain(cf);
        v9 = cf;
      }

      else
      {
        v9 = 0;
      }

      *a1 = v9;
      v7 = 1;
      v10 = v13;
    }

    else
    {
      v7 = 0;
      v10 = v13;
      if (a3 && v13)
      {
        CFRetain(v13);
        v7 = 0;
        v10 = v13;
        *a3 = v13;
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

void adaptive_chunk_size(unsigned int a1, unint64_t a2, unsigned int a3, unsigned int *a4, _DWORD *a5, unsigned int *a6, int *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = log2(ceil(a2 / a3 / a1));
  v16 = vcvtpd_u64_f64(exp2(ceil(v15)));
  v17 = vcvtpd_u64_f64(v13 / (v14 * v16));
  if (v16 < 2)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v18 = v14 * (v16 >> 1);
    v17 = 2 * v17 - a1 - (vcvtpd_u64_f64(v13 / v18) & 1);
    v19 = vcvtpd_u64_f64((v13 + -(v17 * v16) * v14) / v18);
    v20 = (v16 >> 1) * a3;
  }

  *a4 = v17;
  *a5 = v16 * a3;
  *a6 = v19;
  *a7 = v20;
  if (!a3)
  {
    adaptive_chunk_size_cold_1();
  }
}

size_t create_sqlite3_db_s_profile(void *a1, uint64_t **a2, _DWORD *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 9;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v6 = a1[29];
  v7 = a1[10] - v6;
  if (v7 > 0x1000)
  {
    *buf = 0;
    v24 = 0;
    v23 = 0;
    adaptive_chunk_size(0x270Fu, v7 - 4096, 0x1000u, buf, &v24 + 1, &v24, &v23);
    v8 = v24;
    if (v24)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = malloc_type_calloc(v9, 0x38uLL, 0x1000040C4DFEAEFuLL);
    if (v10)
    {
      v11 = v10;
      if ((v6 + 4096) >= a1[10])
      {
        v12 = a1[10];
      }

      else
      {
        v12 = v6 + 4096;
      }

      *(v10 + 52) = 1;
      *v10 = v12 - 1;
      v10[1] = 4096;
      *(v10 + 8) = 4;
      v10[3] = 0;
      v13 = HIDWORD(v24);
      v14 = v12 + HIDWORD(v24) * *buf;
      if (v14 >= a1[10])
      {
        v14 = a1[10];
      }

      *(v10 + 108) = 1;
      v10[7] = v14 - 1;
      v10[8] = v13;
      *(v10 + 22) = 4;
      v10[10] = 0;
      if (v8)
      {
        v15 = v23;
        v16 = v14 + v23 * v8;
        if (v16 >= a1[10])
        {
          v16 = a1[10];
        }

        *(v10 + 164) = 1;
        v10[14] = v16 - 1;
        v10[15] = v15;
        *(v10 + 36) = 4;
        v10[17] = 0;
      }

      goto LABEL_21;
    }

LABEL_33:
    v9 = 0;
    goto LABEL_34;
  }

  v9 = 1;
  v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x1000040C4DFEAEFuLL);
  if (!v17)
  {
    goto LABEL_33;
  }

  v11 = v17;
  v18 = a1[10] - 1;
  *(v17 + 52) = 1;
  *v17 = v18;
  v17[1] = 4096;
  *(v17 + 8) = 4;
  v17[3] = 0;
LABEL_21:
  *a2 = v11;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_sqlite3_db_s_profile_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"returning %u sections for %s\n", v9, a1[13]);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_sqlite3_db_s_profile_cold_2();
      }

      v20 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    print_sections(v11, v9);
  }

LABEL_34:
  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

os_log_t __create_sqlite3_db_s_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_sqlite3_db_s_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

void print_sections(uint64_t *a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = a2;
    v6 = *MEMORY[0x277CBECE8];
    do
    {
      v7 = *a1;
      if (gVerbose == 2)
      {
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          print_sections_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          v8 = "R";
          if (*(a1 + 52))
          {
            v8 = "F";
          }

          v9 = CFStringCreateWithFormat(v6, 0, @"section[%u/%u]: [%s] sz:%lld(0x%llx) [0x%llx-0x%llx, ap:0x%llx, cc:%u\n"), v3, v5, v8, v7 - v4, v7 - v4, v4, *a1, a1[5], *(a1 + 12));
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            print_sections_cold_2();
          }

          v10 = CK_DEFAULT_LOG_INTERNAL_10;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v14 = v9;
            _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }
      }

      v11 = *a1;
      a1 += 7;
      v4 = v11;
      ++v3;
    }

    while (v5 != v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t createChunkProfile(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v91 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v5 = *(a1 + 104);
  __s = *(a1 + 96);
  v6 = copy_lowercase_suffix_for_type_hint(__s);
  v7 = *(a1 + 216);
  v8 = *(a1 + 16);
  v72 = v5;
  if (*v8 < 3)
  {
    goto LABEL_13;
  }

  v9 = (*(v8 + 96))(*(a1 + 8), @"kCKItemChunkProfileConfigurationVersion");
  v10 = v9;
  if (!v9)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFStringGetTypeID())
  {
    CFRelease(v10);
LABEL_13:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  CFRetain(v10);
  CFRelease(v10);
  v12 = (*(*(a1 + 16) + 96))(*(a1 + 8), @"kCKItemChunkProfileConfigurationDefaultProfilePolicy");
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr[0]) = 0;
      Value = CFNumberGetValue(v13, kCFNumberSInt32Type, valuePtr);
      v16 = valuePtr[0];
      if (LODWORD(valuePtr[0]) >= 2)
      {
        v16 = 0;
      }

      if (Value)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v47 = CFGetTypeID(v13);
      v17 = v47 == CFStringGetTypeID() && CKDefaultProfilePolicyTypeFromString(v13);
    }

    CFRelease(v13);
  }

  else
  {
    v17 = 0;
  }

  v58 = (*(*(a1 + 16) + 96))(*(a1 + 8), @"kCKItemChunkProfileConfigurationFileExtensionToProfileMap");
  if (v58)
  {
    v59 = v58;
    v60 = CFGetTypeID(v58);
    if (v60 == CFDictionaryGetTypeID())
    {
      CFRetain(v59);
      v61 = v59;
    }

    else
    {
      v61 = 0;
    }

    CFRelease(v59);
    if (v6 && v61)
    {
      v62 = CFDictionaryGetValue(v61, v6);
      if (!v62)
      {
        v18 = 0;
        v19 = @"Unknown";
LABEL_189:
        CFRetain(v10);
        CFRetain(v19);
        CFRelease(v10);
        CFRelease(v19);
        goto LABEL_190;
      }

      v63 = v62;
      CFRetain(v6);
      v64 = CFGetTypeID(v63);
      if (v64 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr[0]) = 0;
        v65 = CFNumberGetValue(v63, kCFNumberSInt32Type, valuePtr);
        if (LODWORD(valuePtr[0]) >= 0xA)
        {
          v66 = 0;
        }

        else
        {
          v66 = valuePtr[0];
        }

        v5 = v72;
        if (!v65)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v67 = CFGetTypeID(v63);
        if (v67 != CFStringGetTypeID())
        {
          v18 = 0;
          v19 = v6;
          v5 = v72;
          goto LABEL_189;
        }

        v66 = CKProfileTypeFromString(v63);
        v5 = v72;
      }

      if (v66 <= 5 && ((0x2Fu >> v66) & 1) != 0)
      {
        v18 = dword_2434800E0[v66];
LABEL_174:
        v19 = v6;
        goto LABEL_189;
      }

LABEL_173:
      v18 = 0;
      goto LABEL_174;
    }
  }

  else
  {
    v61 = 0;
  }

  CFRetain(v10);
  CFRelease(v10);
  v19 = 0;
  v18 = 0;
  if (v61)
  {
LABEL_190:
    CFRelease(v61);
  }

LABEL_14:
  if (v7)
  {
    LODWORD(v20) = 0;
    v21 = 6;
    goto LABEL_37;
  }

  if (getenv("CK_CHUNK_DEFAULT"))
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      createChunkProfile_cold_1();
    }

    v21 = 2;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Using Rabin chunking on %s (CK_CHUNK_DEFAULT)\n", v5);
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      createChunkProfile_cold_2();
    }

    v22 = CK_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(valuePtr[0]) = 138543362;
      *(valuePtr + 4) = v20;
      _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
    }

    v21 = 2;
    if (!v20)
    {
      goto LABEL_37;
    }

LABEL_35:
    CFRelease(v20);
LABEL_36:
    LODWORD(v20) = 0;
    goto LABEL_37;
  }

  if (!getenv("CK_FIXED_CHUNK"))
  {
    v21 = 0;
    LODWORD(v20) = 1;
    goto LABEL_37;
  }

  if (CK_DEFAULT_LOG_BLOCK_10 != -1)
  {
    createChunkProfile_cold_3();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v20) = 0;
    v21 = 1;
    goto LABEL_37;
  }

  v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Using fixed size chunking on %s (CK_FIXED_CHUNK)\n", v5);
  if (CK_DEFAULT_LOG_BLOCK_10 != -1)
  {
    createChunkProfile_cold_4();
  }

  v23 = CK_DEFAULT_LOG_INTERNAL_10;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(valuePtr[0]) = 138543362;
    *(valuePtr + 4) = v20;
    _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
  }

  v21 = 1;
  if (v20)
  {
    goto LABEL_35;
  }

LABEL_37:
  v24 = create_default_fixed_profile;
  if (!v17)
  {
    v25 = *(a1 + 144);
    if (!v25)
    {
      goto LABEL_44;
    }

    if (CKFileDigestArgumentsFileScheme(v25) == 2)
    {
      createChunkProfile_cold_6();
    }

    v26 = *(a1 + 144);
    if (!v26)
    {
      goto LABEL_44;
    }

    if (CKFileDigestArgumentsFileScheme(v26) == 8)
    {
      createChunkProfile_cold_5();
    }

    v27 = *(a1 + 144);
    if (!v27 || (v28 = CKFileDigestArgumentsFileScheme(v27), v24 = create_default_fixed_profile, v28 != 4))
    {
LABEL_44:
      v24 = create_safe_rabin_profile;
    }
  }

  *(a1 + 168) = v24;
  if (!v20)
  {
    goto LABEL_59;
  }

  if (*(a1 + 220))
  {
    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        createChunkProfile_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"fixed size chunking requested with %llu bytes per chunk", *(a1 + 220));
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          createChunkProfile_cold_8();
        }

        v30 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(valuePtr[0]) = 138543362;
          *(valuePtr + 4) = v29;
          _os_log_impl(&dword_243431000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }
    }

    v21 = 1;
LABEL_59:
    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    goto LABEL_61;
  }

  if (v18)
  {
    v21 = v18;
    goto LABEL_61;
  }

  v44 = *(a1 + 160);
  if (v44 == 3)
  {
    v45 = "dflt";
    v46 = 80;
  }

  else
  {
    if (v44 != 5)
    {
      createChunkProfile_cold_18();
    }

    v45 = "dflt";
    v46 = 99;
  }

  v48 = copy_lowercase_suffix_for_type_hint(__s);
  if (v48)
  {
    v49 = v48;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    memset(v78, 0, sizeof(v78));
    memset(valuePtr, 0, sizeof(valuePtr));
    if (CFStringGetCString(v48, valuePtr, 256, 0x8000100u))
    {
      v50 = strlen(valuePtr);
      while (v50 != strlen(v45) || strncasecmp(valuePtr, v45, v50))
      {
        v45 += 24;
        if (!--v46)
        {
          goto LABEL_128;
        }
      }

      CFRelease(v49);
      v68 = *(v45 + 5);
      if (gVerbose == 2)
      {
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          createChunkProfile_cold_9();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          v69 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"suffix_index_for_type_hint(typeHint:%s, %s) returned type:%d\n", __s, v72, v68);
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            createChunkProfile_cold_10();
          }

          v70 = CK_DEFAULT_LOG_INTERNAL_10;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(valuePtr[0]) = 138543362;
            *(valuePtr + 4) = v69;
            _os_log_impl(&dword_243431000, v70, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
          }

          if (v69)
          {
            CFRelease(v69);
          }
        }
      }

      if (v68)
      {
        v21 = v68;
        goto LABEL_61;
      }
    }

    else
    {
LABEL_128:
      CFRelease(v49);
    }
  }

  v71 = v6;
  v51 = *(a1 + 16);
  if (!v51)
  {
    createChunkProfile_cold_17();
  }

  v52 = *(a1 + 8);
  v53 = *(a1 + 232);
  v54 = *(a1 + 80);
  bzero(&valuePtr[1] + 8, 0x208uLL);
  *&valuePtr[0] = v51;
  *(&valuePtr[0] + 1) = v54;
  *&valuePtr[1] = v53;
  if (v54 >= 0x200)
  {
    v55 = 512;
  }

  else
  {
    v55 = v54;
  }

  v76 = 0;
  if ((*(v51 + 72))(v52, v53, v78, v55, &v76, 0))
  {
    *(&valuePtr[1] + 1) = v76;
    v75 = 0;
    if (detect_magics(valuePtr, &v75))
    {
      v21 = 0;
    }

    else
    {
      v21 = v75;
    }

    v6 = v71;
    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        createChunkProfile_cold_11();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"profile_type_for_content(%s) returned type:%d\n", v72, v21);
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          createChunkProfile_cold_12();
        }

        v57 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(valuePtr[0]) = 138543362;
          *(valuePtr + 4) = v56;
          _os_log_impl(&dword_243431000, v57, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
        }

        if (v56)
        {
          CFRelease(v56);
        }
      }
    }
  }

  else
  {
    v21 = 0;
    v6 = v71;
  }

LABEL_61:
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      createChunkProfile_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"type:%d, typeHint:%s", v21, __s);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        createChunkProfile_cold_14();
      }

      v32 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(valuePtr[0]) = 138543362;
        *(valuePtr + 4) = v31;
        _os_log_impl(&dword_243431000, v32, OS_LOG_TYPE_DEBUG, "%{public}@", valuePtr, 0xCu);
      }

      if (v31)
      {
        CFRelease(v31);
      }
    }
  }

  v33 = 0;
  v34 = create_default_fixed_profile;
  if (v21 <= 4)
  {
    if (v21 > 2)
    {
      v33 = 0;
      if (v21 == 3)
      {
        v35 = create_zip_profile;
      }

      else
      {
        v35 = create_mp3_profile;
      }

      goto LABEL_91;
    }

    if (v21 == 1)
    {
      goto LABEL_92;
    }

    if (v21 == 2)
    {
      v33 = 0;
      v35 = create_safe_rabin_profile;
      goto LABEL_91;
    }
  }

  else
  {
    if (v21 <= 6)
    {
      if (v21 == 5)
      {
        goto LABEL_92;
      }

      v33 = 0;
      v35 = create_custom_fixed_profile;
      goto LABEL_91;
    }

    switch(v21)
    {
      case 7:
        v33 = 0;
        v35 = create_sqlite3_db_wal_profile;
        goto LABEL_91;
      case 8:
        v33 = 0;
        v35 = create_sqlite3_db_profile;
        goto LABEL_91;
      case 9:
        v33 = 0;
        v35 = create_sqlite3_db_s_profile;
LABEL_91:
        v34 = v35;
        goto LABEL_92;
    }
  }

  v34 = *(a1 + 168);
  if (!v34)
  {
    createChunkProfile_cold_16();
  }

  v33 = 1;
LABEL_92:
  LODWORD(v76) = 0;
  LOBYTE(v75) = 0;
  v36 = v34(a1, a2, &v76, &v75);
  if (v75)
  {
    v33 = 1;
  }

  if (CK_DEFAULT_LOG_BLOCK_10 != -1)
  {
    createChunkProfile_cold_15();
  }

  v37 = CK_DEFAULT_LOG_INTERNAL_10;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
  {
    v38 = CKProfileTypeDescription(v21);
    v39 = CKProfileTypeDescription(v76);
    LODWORD(valuePtr[0]) = 136447746;
    *(valuePtr + 4) = __s;
    v40 = "F";
    WORD6(valuePtr[0]) = 2082;
    *(valuePtr + 14) = v38;
    if (v33)
    {
      v40 = "T";
    }

    WORD3(valuePtr[1]) = 2082;
    *(&valuePtr[1] + 1) = v39;
    LOWORD(v78[0]) = 2048;
    *(v78 + 2) = v36;
    WORD5(v78[0]) = 2082;
    *(v78 + 12) = v40;
    WORD2(v78[1]) = 2114;
    *(&v78[1] + 6) = v19;
    HIWORD(v78[1]) = 2114;
    *&v79 = v10;
    _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_DEFAULT, "typeHint:%{public}s typeRequested:%{public}s typeUsed:%{public}s sectionCount:%llu default:%{public}s resolvedType:%{public}@ serverConfig:%{public}@", valuePtr, 0x48u);
  }

  if (a3)
  {
    v41 = MEMORY[0x277CBED28];
    if (!v33)
    {
      v41 = MEMORY[0x277CBED10];
    }

    CKProfileResultsCreate(a3, v76, v10, v19, *v41, 0);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v36;
}

char *copy_lowercase_suffix_for_type_hint(char *__s)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!__s)
  {
    goto LABEL_52;
  }

  v1 = __s;
  if (!*__s)
  {
LABEL_51:
    __s = 0;
    goto LABEL_52;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *buffer = 0u;
  v21 = 0u;
  v2 = strchr(__s, 46);
  v3 = CFStringCreateWithCString(0, v1, 0x8000100u);
  v4 = v3;
  if (!v2)
  {
    if (v3)
    {
      v9 = *MEMORY[0x277CC1F58];
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v3, 0);
      v11 = PreferredIdentifierForTag;
      if (PreferredIdentifierForTag)
      {
        v12 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, v9);
        v13 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    v13 = 1;
LABEL_25:
    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        copy_lowercase_suffix_for_type_hint_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"class:%@, tag:%@", v11, v12, *buffer, *&buffer[8], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          copy_lowercase_suffix_for_type_hint_cold_4();
        }

        v15 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v37 = v14;
          _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

    if (v12)
    {
      if (CFStringGetCString(v12, buffer, 256, 0x8000100u))
      {
        v8 = buffer;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v12);
      if ((v13 & 1) == 0)
      {
LABEL_41:
        CFRelease(v11);
      }
    }

    else
    {
      if (__strlcpy_chk() <= 0xFF)
      {
        v8 = buffer;
      }

      else
      {
        v8 = 0;
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (!v4)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (!v3)
  {
    goto LABEL_51;
  }

  v5 = UTTypeCopyPreferredTagWithClass(v3, *MEMORY[0x277CC1F58]);
  if (CK_DEFAULT_LOG_BLOCK_10 != -1)
  {
    copy_lowercase_suffix_for_type_hint_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"uti:%@, tag:%@", v4, v5, *buffer, *&buffer[8], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      copy_lowercase_suffix_for_type_hint_cold_2();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v37 = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (v5)
  {
    if (CFStringGetCString(v5, buffer, 256, 0x8000100u))
    {
      v8 = buffer;
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

LABEL_43:
  CFRelease(v4);
LABEL_44:
  if (!v8)
  {
    goto LABEL_51;
  }

  v16 = strlen(v8);
  if (v16)
  {
    v17 = v8;
    do
    {
      v18 = *v17;
      if ((v18 - 65) <= 0x19)
      {
        *v17 = v18 | 0x20;
      }

      ++v17;
      --v16;
    }

    while (v16);
  }

  __s = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v8, 0x8000100u);
LABEL_52:
  v19 = *MEMORY[0x277D85DE8];
  return __s;
}

os_log_t __createChunkProfile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_39()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_2_46()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

uint64_t create_default_fixed_profile(uint64_t a1, uint64_t **a2, _DWORD *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v6 = *(a1 + 232);
  v7 = *(a1 + 80);
  v8 = *(a1 + 220);
  if (v8)
  {
    if (v8 < 0x1400001)
    {
      if (v8 > 0xFFF)
      {
        v11 = *(a1 + 164) * v8;
        if (v7 <= v11)
        {
          if (gVerbose == 2)
          {
            if (CK_DEFAULT_LOG_BLOCK_10 != -1)
            {
              create_default_fixed_profile_cold_1();
            }

            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
            {
              v25 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"fixedChunkSize set to %llu bytes", v8);
              if (CK_DEFAULT_LOG_BLOCK_10 != -1)
              {
                create_default_fixed_profile_cold_2();
              }

              v26 = CK_DEFAULT_LOG_INTERNAL_10;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v28 = v25;
                _os_log_impl(&dword_243431000, v26, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
              }

              if (v25)
              {
                CFRelease(v25);
              }
            }
          }

          goto LABEL_42;
        }

        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_default_fixed_profile_cold_3();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"requestedFixedChunkSize/%llu not large enough to accomodate file size %llu", *(a1 + 220), v11);
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            create_default_fixed_profile_cold_4();
          }

          v10 = CK_DEFAULT_LOG_INTERNAL_10;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_31;
          }

          *buf = 138543362;
          v28 = v9;
          goto LABEL_30;
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_default_fixed_profile_cold_5();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"requestedFixedChunkSize/%llu below MIN_FIXED_LENGTH_CHUNK_SIZE/%llu", *(a1 + 220), 4096);
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            create_default_fixed_profile_cold_6();
          }

          v10 = CK_DEFAULT_LOG_INTERNAL_10;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_31;
          }

          *buf = 138543362;
          v28 = v9;
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_default_fixed_profile_cold_7();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
      {
        v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"requestedFixedChunkSize/%llu exceeds MAX_FIXED_LENGTH_CHUNK_SIZE/%llu", *(a1 + 220), 20971520);
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_default_fixed_profile_cold_8();
        }

        v10 = CK_DEFAULT_LOG_INTERNAL_10;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *buf = 138543362;
        v28 = v9;
LABEL_30:
        _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
LABEL_31:
        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }

  if (*(a1 + 160) == 5)
  {
    v12 = 5242880;
    while (v7 > *(a1 + 164) * v12)
    {
      LODWORD(v8) = 2 * v12;
      v13 = v12 > 0xA00000;
      v12 *= 2;
      if (v13)
      {
        goto LABEL_41;
      }
    }

    LODWORD(v8) = v12;
LABEL_41:
    if (v8 > 0x1400000)
    {
      goto LABEL_77;
    }
  }

  else
  {
    LODWORD(v8) = 5242880;
  }

LABEL_42:
  v14 = *(a1 + 228);
  if (!v14)
  {
    goto LABEL_64;
  }

  if (v14 > v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_default_fixed_profile_cold_11();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v14) = 0;
      goto LABEL_64;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"requestedFixedSubchunkSize/%llu exceeds fixedChunkSize/%llu", *(a1 + 228), v8);
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_default_fixed_profile_cold_12();
    }

    v16 = CK_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v15;
      _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    LODWORD(v14) = 0;
    goto LABEL_52;
  }

  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_default_fixed_profile_cold_9();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"fixedSubchunkSize set to %u bytes", v14);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_default_fixed_profile_cold_10();
      }

      v17 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v28 = v15;
        _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

LABEL_52:
      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

LABEL_64:
  v18 = 1;
  v19 = malloc_type_calloc(1uLL, 0x38uLL, 0x1000040C4DFEAEFuLL);
  if (!v19)
  {
LABEL_77:
    v18 = 0;
    goto LABEL_78;
  }

  v20 = v19;
  *(v19 + 52) = 1;
  *v19 = v7 + v6;
  v19[1] = v8;
  *(v19 + 8) = 2;
  v19[3] = v14;
  *a2 = v19;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_default_fixed_profile_cold_13();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"returning %u sections for %s\n", 1, *(a1 + 104));
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_default_fixed_profile_cold_14();
      }

      v22 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v28 = v21;
        _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    v18 = 1;
    print_sections(v20, 1u);
  }

LABEL_78:
  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t create_safe_rabin_profile(uint64_t a1, uint64_t **a2, _DWORD *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 80);
  v9 = *(a1 + 104);
  if (v8 <= 13312 * *(a1 + 164))
  {
    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_safe_rabin_profile_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s is just right to be Rabin chunked (%lld bytes)\n", v9, v8);
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_safe_rabin_profile_cold_2();
        }

        v14 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v13;
          _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }
    }

    if (a3)
    {
      *a3 = 2;
    }

    if (a4)
    {
      *a4 = 0;
    }

    v15 = *(a1 + 232);
    v16 = *(a1 + 80);
    default_fixed_profile = 1;
    v17 = malloc_type_calloc(1uLL, 0x38uLL, 0x1000040C4DFEAEFuLL);
    if (v17)
    {
      v18 = v17;
      *v17 = v16 + v15;
      v17[1] = 0x340000000030;
      *(v17 + 4) = 0x8000;
      *(v17 + 8) = 1;
      v17[3] = 0;
      *a2 = v17;
      if (gVerbose == 2)
      {
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_safe_rabin_profile_cold_3();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"returning %u sections for %s\n", 1, *(a1 + 104));
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            create_safe_rabin_profile_cold_4();
          }

          v20 = CK_DEFAULT_LOG_INTERNAL_10;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v24 = v19;
            _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v19)
          {
            CFRelease(v19);
          }
        }

        default_fixed_profile = 1;
        print_sections(v18, 1u);
      }
    }

    else
    {
      default_fixed_profile = 0;
    }
  }

  else
  {
    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_safe_rabin_profile_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s is a big file (%lld bytes!), using fixed chunker\n", v9, v8);
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_safe_rabin_profile_cold_6();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v10;
          _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    default_fixed_profile = create_default_fixed_profile(a1, a2, a3, a4);
  }

  v21 = *MEMORY[0x277D85DE8];
  return default_fixed_profile;
}

os_log_t __createChunkProfile_block_invoke_52()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_67()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_3_78()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_82()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_3_93()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_97()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __createChunkProfile_block_invoke_3_108()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

uint64_t create_custom_fixed_profile(uint64_t a1, uint64_t **a2, _DWORD *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 6;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v6 = *(a1 + 216);
  if (!v6)
  {
    create_custom_fixed_profile_cold_3();
  }

  v7 = *(a1 + 232);
  v8 = *(a1 + 80);
  v9 = *(a1 + 224);
  v10 = 1;
  v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x1000040C4DFEAEFuLL);
  if (v11)
  {
    v12 = v11;
    *(v11 + 52) = 1;
    *v11 = v8 + v7;
    v11[1] = v6;
    *(v11 + 8) = 2;
    v11[3] = v9;
    *a2 = v11;
    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_custom_fixed_profile_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"returning %u sections for %s\n", 1, *(a1 + 104));
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_custom_fixed_profile_cold_2();
        }

        v14 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v18 = v13;
          _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      v10 = 1;
      print_sections(v12, 1u);
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t create_zip_profile(uint64_t a1, uint64_t **a2, _DWORD *a3, _BYTE *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v142 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 3;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v7 = *(a1 + 80);
  v8 = v7 - *(a1 + 232);
  if (v8 < 0x17)
  {
    goto LABEL_6;
  }

  v12 = 0;
  v13 = *(a1 + 16);
  v131 = *(a1 + 8);
  __nel = *(a1 + 104);
  *v134 = 0;
  *&v134[8] = 0;
  *&v134[14] = 0;
  v140 = 0uLL;
  v141 = 0;
  *v137 = 0u;
  *v138 = 0u;
  if (v8 >= 0x10029)
  {
    v14 = 65577;
  }

  else
  {
    v14 = v8;
  }

  *&v138[16] = 0uLL;
  v15 = v7 - 22;
  v16 = 1;
  v139 = 0;
  v17 = &old_ringing[83];
  v18 = &old_ringing[83];
  v19 = *MEMORY[0x277CBECE8];
  v129 = v13;
  while (1)
  {
    if ((v16 & 1) == 0 && (v12 & 1) == 0)
    {
      create_zip_profile_cold_1();
    }

    if ((v16 & 1) == 0)
    {
      break;
    }

    v133 = 0;
    if (((*(v13 + 72))(v131, v15, v134, 22, &v133, 0) & 1) == 0)
    {
      if (v17[454] != -1)
      {
        create_zip_profile_cold_14();
      }

      v6 = a1;
      v5 = a2;
      if (!os_log_type_enabled(v18[442], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      v66 = CFStringCreateWithFormat(v19, 0, @"failed to read zip-end-of-central-dir at 0x%llx\n", v15);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_15();
      }

      v67 = v18[442];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v66;
        goto LABEL_122;
      }

LABEL_123:
      if (v66)
      {
        CFRelease(v66);
      }

      goto LABEL_125;
    }

    if (v133 != 22)
    {
      if (v17[454] != -1)
      {
        create_zip_profile_cold_16();
      }

      v6 = a1;
      v5 = a2;
      if (!os_log_type_enabled(v18[442], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      v66 = CFStringCreateWithFormat(v19, 0, @"failed to read zip-end-of-central-dir at 0x%llx\n", v15);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_17();
      }

      v67 = v18[442];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v66;
LABEL_122:
        _os_log_impl(&dword_243431000, v67, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      goto LABEL_123;
    }

    if (*v134 == 101010256)
    {
      if (gVerbose == 2)
      {
        if (v17[454] != -1)
        {
          create_zip_profile_cold_18();
        }

        if (os_log_type_enabled(v18[442], OS_LOG_TYPE_DEBUG) && os_log_type_enabled(v18[442], OS_LOG_TYPE_DEBUG))
        {
          v20 = v19;
          v21 = CFStringCreateWithFormat(v19, 0, @"zip-end-of-central-dir, offset:0x%x, size:0x%x, recs:%u/%u\n", *&v134[16], *&v134[12], *&v134[8], *&v134[10]);
          v22 = v17;
          if (v17[454] != -1)
          {
            create_zip_profile_cold_19();
          }

          v23 = v18;
          v24 = v18[442];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v21;
            _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          v18 = v23;
          v17 = v22;
          v19 = v20;
          if (v21)
          {
            CFRelease(v21);
          }
        }
      }

      v25 = *&v134[16];
      if (*&v134[16] != -1)
      {
        v4 = a3;
        v6 = a1;
        v5 = a2;
        if ((v12 & 1) == 0)
        {
          alloc = v19;
          v26 = *&v134[8];
          goto LABEL_153;
        }

LABEL_273:
        if (gVerbose != 2)
        {
          goto LABEL_6;
        }

        if (v17[454] != -1)
        {
          create_zip_profile_cold_52();
        }

        if (!os_log_type_enabled(v18[442], OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(v18[442], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_6;
        }

        v68 = CFStringCreateWithFormat(v19, 0, @"didn't find the zip64-central-dir-end for %s\n", __nel);
        if (v17[454] != -1)
        {
          create_zip_profile_cold_53();
        }

        v69 = v18[442];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v68;
LABEL_282:
          v72 = buf;
LABEL_283:
          _os_log_impl(&dword_243431000, v69, OS_LOG_TYPE_DEBUG, "%{public}@", v72, 0xCu);
        }

        goto LABEL_284;
      }

      v13 = v129;
      if (v15 <= 0x13)
      {
        v4 = a3;
        v6 = a1;
        v5 = a2;
        goto LABEL_273;
      }

      v16 = 0;
      v15 -= 20;
      v12 = 1;
      goto LABEL_42;
    }

LABEL_40:
    if (!v15)
    {
      goto LABEL_43;
    }

    --v15;
LABEL_42:
    if (v7 - v15 > v14)
    {
LABEL_43:
      v6 = a1;
      v5 = a2;
      if ((v16 & 1) == 0)
      {
        v4 = a3;
        if (v12)
        {
          goto LABEL_273;
        }

        LODWORD(v26) = 0;
LABEL_46:
        qsort(0, v26 & 0x1FFFF, 0x18uLL, cmp_dir_rec_data);
        v27 = 0;
        v28 = 0;
        goto LABEL_47;
      }

LABEL_125:
      v4 = a3;
      if (gVerbose != 2)
      {
        goto LABEL_6;
      }

      if (v17[454] != -1)
      {
        create_zip_profile_cold_50();
      }

      if (!os_log_type_enabled(v18[442], OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(v18[442], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v68 = CFStringCreateWithFormat(v19, 0, @"didn't find the zip-central-dir-end for %s\n", __nel);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_51();
      }

      v69 = v18[442];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v68;
        goto LABEL_282;
      }

      goto LABEL_284;
    }
  }

  if ((v12 & 1) == 0)
  {
    v12 = 0;
    goto LABEL_40;
  }

  v133 = 0;
  if (((*(v13 + 72))(v131, v15, &v140, 20, &v133, 0) & 1) == 0)
  {
    if (v17[454] != -1)
    {
      create_zip_profile_cold_2();
    }

    v6 = a1;
    v5 = a2;
    if (os_log_type_enabled(v18[442], OS_LOG_TYPE_ERROR))
    {
      v70 = CFStringCreateWithFormat(v19, 0, @"failed to read zip64-end-of-central-dir-locator at 0x%llx\n", v15);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_3();
      }

      v71 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v70;
        goto LABEL_148;
      }

LABEL_149:
      if (v70)
      {
        CFRelease(v70);
      }
    }

LABEL_272:
    v4 = a3;
    v18 = &old_ringing[83];
    goto LABEL_273;
  }

  if (v133 != 20)
  {
    v6 = a1;
    v5 = a2;
    if (v17[454] != -1)
    {
      create_zip_profile_cold_4();
    }

    if (!os_log_type_enabled(v18[442], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_272;
    }

    v70 = CFStringCreateWithFormat(v19, 0, @"failed to read zip64-end-of-central-dir-locator at 0x%llx\n", v15);
    if (v17[454] != -1)
    {
      create_zip_profile_cold_5();
    }

    v71 = CK_DEFAULT_LOG_INTERNAL_10;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_149;
    }

    *buf = 138543362;
    *&buf[4] = v70;
    goto LABEL_148;
  }

  if (v140 != 117853008)
  {
    v12 = 1;
    goto LABEL_40;
  }

  v73 = *(&v140 + 1);
  v6 = a1;
  v5 = a2;
  if (gVerbose == 2)
  {
    if (v17[454] != -1)
    {
      create_zip_profile_cold_6();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v74 = CFStringCreateWithFormat(v19, 0, @"zip64-end-of-central-dir-locator, zip64-end-of-central-dir-offset:0x%llx\n", v73);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_7();
      }

      v75 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v74;
        _os_log_impl(&dword_243431000, v75, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v74)
      {
        CFRelease(v74);
      }
    }
  }

  if (v15 <= v73 || v15 - v73 < 0x38)
  {
    goto LABEL_272;
  }

  if (((*(v129 + 72))(v131, v73, v137, 56, &v133, 0) & 1) == 0)
  {
    if (v17[454] != -1)
    {
      create_zip_profile_cold_8();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_272;
    }

    v70 = CFStringCreateWithFormat(v19, 0, @"failed to read zip64-end-of-central-dir at 0x%llx\n", v73);
    if (v17[454] != -1)
    {
      create_zip_profile_cold_9();
    }

    v71 = CK_DEFAULT_LOG_INTERNAL_10;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_149;
    }

    *buf = 138543362;
    *&buf[4] = v70;
    goto LABEL_148;
  }

  if (v133 != 56)
  {
    if (v17[454] != -1)
    {
      create_zip_profile_cold_10();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_272;
    }

    v70 = CFStringCreateWithFormat(v19, 0, @"failed to read zip64-end-of-central-dir at 0x%llx\n", v73);
    if (v17[454] != -1)
    {
      create_zip_profile_cold_11();
    }

    v71 = CK_DEFAULT_LOG_INTERNAL_10;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_149;
    }

    *buf = 138543362;
    *&buf[4] = v70;
LABEL_148:
    _os_log_impl(&dword_243431000, v71, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    goto LABEL_149;
  }

  if (*v137 != 101075792)
  {
    goto LABEL_272;
  }

  alloc = v19;
  v76 = *&v138[24];
  v25 = v139;
  v26 = *&v138[8];
  if (gVerbose == 2)
  {
    if (v17[454] != -1)
    {
      create_zip_profile_cold_12();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      cf = CFStringCreateWithFormat(alloc, 0, @"zip64-end-of-central-dir, central-dir-offset:0x%llx, central-dir-size:0x%llx, num-central-dir-recs:%llu/%llu\n", v25, v76, v26, *&v138[16]);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_13();
      }

      v77 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = cf;
        _os_log_impl(&dword_243431000, v77, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v78 = v76 + v25;
  v79 = v76 + v25 >= v25;
  v19 = alloc;
  if (!v79 || v73 <= v25 || v73 < v78 || v73 - v25 < 46 * v26)
  {
    goto LABEL_272;
  }

  v4 = a3;
LABEL_153:
  if (v26 > 0x15555)
  {
    if (gVerbose != 2)
    {
      goto LABEL_6;
    }

    if (v17[454] != -1)
    {
      create_zip_profile_cold_36();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v68 = CFStringCreateWithFormat(alloc, 0, @"too many records, num_recs:0x%x, max_recs:0x%x\n", v26, 87381);
    if (v17[454] != -1)
    {
      create_zip_profile_cold_37();
    }

    v69 = CK_DEFAULT_LOG_INTERNAL_10;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      *v137 = 138543362;
      *&v137[4] = v68;
      v72 = v137;
      goto LABEL_283;
    }

LABEL_284:
    v4 = a3;
    if (v68)
    {
      CFRelease(v68);
    }

    goto LABEL_6;
  }

  if (!v26)
  {
    v19 = alloc;
    goto LABEL_46;
  }

  __nelb = v26 & 0x1FFFF;
  v83 = malloc_type_calloc(v26 & 0x1FFFF, 0x18uLL, 0x100004020B92A0BuLL);
  if (!v83)
  {
    goto LABEL_6;
  }

  v84 = 0;
  v85 = v83;
  cfa = v83;
  while (2)
  {
    *v137 = 0u;
    memset(v138, 0, 30);
    *buf = 0;
    if (((*(v129 + 72))(v131, v25, v137, 46, buf, 0) & 1) == 0)
    {
      if (gVerbose != 2)
      {
        goto LABEL_414;
      }

      if (v17[454] != -1)
      {
        create_zip_profile_cold_20();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_414;
      }

      v107 = CFStringCreateWithFormat(alloc, 0, @"failed to read zip-dir-rec at %u/%u\n", v84, v26);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_21();
      }

      v108 = CK_DEFAULT_LOG_INTERNAL_10;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_379;
      }

      *v134 = 138543362;
      *&v134[4] = v107;
      goto LABEL_378;
    }

    if (*buf != 46)
    {
      if (gVerbose != 2)
      {
        goto LABEL_414;
      }

      if (v17[454] != -1)
      {
        create_zip_profile_cold_22();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_414;
      }

      v107 = CFStringCreateWithFormat(alloc, 0, @"failed to read zip-dir-rec at %u/%u\n", v84, v26);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_23();
      }

      v108 = CK_DEFAULT_LOG_INTERNAL_10;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_379;
      }

      *v134 = 138543362;
      *&v134[4] = v107;
      goto LABEL_378;
    }

    if (*v137 != 33639248)
    {
      if (gVerbose != 2)
      {
        goto LABEL_414;
      }

      if (v17[454] != -1)
      {
        create_zip_profile_cold_24();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_414;
      }

      v107 = CFStringCreateWithFormat(alloc, 0, @"bogus looking zip-dir-rec at %u (0x%08x != 0x%08x)", v84, *v137, 33639248);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_25();
      }

      v108 = CK_DEFAULT_LOG_INTERNAL_10;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_379;
      }

      *v134 = 138543362;
      *&v134[4] = v107;
LABEL_378:
      _os_log_impl(&dword_243431000, v108, OS_LOG_TYPE_DEBUG, "%{public}@", v134, 0xCu);
      goto LABEL_379;
    }

    v86 = *&v138[14];
    v87 = *&v138[16];
    v88 = v25 + *&v138[12] + 46;
    v89 = v88 + *&v138[14] + *&v138[16];
    if (v89 < v25)
    {
      goto LABEL_414;
    }

    *(v85 + 8) = *&v138[12];
    *(v85 + 9) = v86;
    *(v85 + 10) = v87;
    v90 = *&v138[4];
    v85[1] = *&v138[4];
    v91 = *&v138[26];
    *v85 = *&v138[26];
    if ((v16 & 1) == 0 && (v90 == -1 || *&v138[8] == -1 || *&v138[26] == -1))
    {
      if (v88 >= v7)
      {
        goto LABEL_414;
      }

      v133 = 0;
      v132 = 0;
      if (locate_zip64_extra_field(a1, v88, v86, &v133, &v132))
      {
        goto LABEL_413;
      }

      if (*&v138[8] == -1 || *&v138[4] == -1)
      {
        v93 = 20;
      }

      else
      {
        v93 = 4;
      }

      v94 = v93 | (8 * (*&v138[26] == -1));
      v95 = v132;
      if (v132 < v94)
      {
        if (gVerbose == 2)
        {
          if (v17[454] != -1)
          {
            create_zip_profile_cold_30();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            v109 = CFStringCreateWithFormat(alloc, 0, @"bogus field_len 0x%x at 0x%llx, expected_len: 0x%x\n", v95, v133, v94);
            if (v17[454] != -1)
            {
              create_zip_profile_cold_31();
            }

            v110 = CK_DEFAULT_LOG_INTERNAL_10;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
            {
              *v134 = 138543362;
              *&v134[4] = v109;
              v111 = v134;
              goto LABEL_410;
            }

LABEL_411:
            if (v109)
            {
              CFRelease(v109);
            }
          }
        }

LABEL_413:
        v4 = a3;
LABEL_414:
        v6 = a1;
        v5 = a2;
        v28 = cfa;
        goto LABEL_339;
      }

      memset(v134, 0, sizeof(v134));
      v135 = 0;
      v96 = v133;
      if (((*(v129 + 72))(v131, v133, v134, v94, buf, 0) & 1) == 0)
      {
        if (gVerbose != 2)
        {
          goto LABEL_413;
        }

        if (v17[454] != -1)
        {
          create_zip_profile_cold_26();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_413;
        }

        v109 = CFStringCreateWithFormat(alloc, 0, @"failed to read zip64-extra-field at 0x%llx\n", v96);
        if (v17[454] != -1)
        {
          create_zip_profile_cold_27();
        }

        v110 = CK_DEFAULT_LOG_INTERNAL_10;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_411;
        }

        LODWORD(v140) = 138543362;
        *(&v140 + 4) = v109;
LABEL_409:
        v111 = &v140;
LABEL_410:
        _os_log_impl(&dword_243431000, v110, OS_LOG_TYPE_DEBUG, "%{public}@", v111, 0xCu);
        goto LABEL_411;
      }

      if (*buf != v94)
      {
        if (gVerbose != 2)
        {
          goto LABEL_413;
        }

        if (v17[454] != -1)
        {
          create_zip_profile_cold_28();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_413;
        }

        v109 = CFStringCreateWithFormat(alloc, 0, @"failed to read zip64-extra-field at 0x%llx\n", v96);
        if (v17[454] != -1)
        {
          create_zip_profile_cold_29();
        }

        v110 = CK_DEFAULT_LOG_INTERNAL_10;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_411;
        }

        LODWORD(v140) = 138543362;
        *(&v140 + 4) = v109;
        goto LABEL_409;
      }

      if (*&v138[4] == -1 || (v97 = &v134[4], *&v138[8] == -1))
      {
        v85[1] = *&v134[12];
        v97 = &v134[20];
      }

      v91 = *v97;
      *v85 = v91;
      v4 = a3;
    }

    if (v91 >= v7 || (v98 = v85[1] + v91, v98 < v91) || v98 >= v7)
    {
      if (gVerbose != 2)
      {
        goto LABEL_414;
      }

      if (v17[454] != -1)
      {
        create_zip_profile_cold_32();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_414;
      }

      v107 = CFStringCreateWithFormat(alloc, 0, @"bogus looking zip_foffset/zip_size on zip-dir-rec at %u (foffset:0x%llx size:0x%llx dataSize:0x%llx)\n", v84, *v85, v85[1], v7);
      if (v17[454] != -1)
      {
        create_zip_profile_cold_33();
      }

      v108 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *v134 = 138543362;
        *&v134[4] = v107;
        goto LABEL_378;
      }

LABEL_379:
      v4 = a3;
      if (v107)
      {
        CFRelease(v107);
      }

      goto LABEL_414;
    }

    ++v84;
    v85 += 3;
    v25 = v89;
    v28 = cfa;
    if (__nelb != v84)
    {
      continue;
    }

    break;
  }

  qsort(cfa, __nelb, 0x18uLL, cmp_dir_rec_data);
  if (*cfa)
  {
    v6 = a1;
    v27 = v26;
    if (gVerbose == 2)
    {
      if (v17[454] != -1)
      {
        create_zip_profile_cold_34();
      }

      v4 = a3;
      v6 = a1;
      v27 = v26;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v99 = CFStringCreateWithFormat(alloc, 0, @"first entry must begin at location zero!\n");
        if (v17[454] != -1)
        {
          create_zip_profile_cold_35();
        }

        v100 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          *v137 = 138543362;
          *&v137[4] = v99;
          _os_log_impl(&dword_243431000, v100, OS_LOG_TYPE_DEBUG, "%{public}@", v137, 0xCu);
        }

        v4 = a3;
        v6 = a1;
        v27 = v26;
        if (v99)
        {
          CFRelease(v99);
        }
      }
    }

    v28 = cfa;
    *cfa = 0;
    v5 = a2;
    v19 = alloc;
  }

  else
  {
    v6 = a1;
    v5 = a2;
    v19 = alloc;
    v27 = v26;
  }

LABEL_47:
  v29 = add_sections(0, 0, (2 * (v26 & 0x1FFFF)) | 1);
  if (!v29)
  {
    goto LABEL_338;
  }

  v30 = v29;
  if (v27 < 1)
  {
    v65 = 0;
    LODWORD(v33) = 0;
    ptr = 0;
    v104 = 0;
    v9 = 1;
LABEL_198:
    v80 = &v30[7 * v65];
    *(v80 + 52) = 1;
    *v80 = v7;
    v80[1] = 5242880;
    *(v80 + 8) = 2;
    v80[3] = 0;
    if (v104 + (v7 - v33 + 5242879) / 5242880 <= *(v6 + 164))
    {
      if (ptr)
      {
        free(ptr);
      }

      if (v28)
      {
        free(v28);
      }

      *v5 = v30;
      if (gVerbose == 2)
      {
        if (v17[454] != -1)
        {
          create_zip_profile_cold_48();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          v81 = CFStringCreateWithFormat(v19, 0, @"returning %u sections for %s\n", v9, *(v6 + 104));
          if (v17[454] != -1)
          {
            create_zip_profile_cold_49();
          }

          v82 = CK_DEFAULT_LOG_INTERNAL_10;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            *v137 = 138543362;
            *&v137[4] = v81;
            _os_log_impl(&dword_243431000, v82, OS_LOG_TYPE_DEBUG, "%{public}@", v137, 0xCu);
          }

          if (v81)
          {
            CFRelease(v81);
          }
        }

        print_sections(v30, v9);
      }

      goto LABEL_9;
    }

    goto LABEL_332;
  }

  v31 = 0;
  v118 = 0;
  v119 = 0;
  ptr = 0;
  v115 = 0;
  v32 = v27;
  v33 = 0;
  v113 = v32;
  v120 = 0xFFFFFFFFLL;
  __nela = v29;
  v116 = v29;
  v114 = 2 * v32;
  while (1)
  {
    v34 = &v28[24 * v31];
    v35 = *v34;
    memset(v137, 0, sizeof(v137));
    *&v138[7] = 0;
    *v138 = 0;
    *&v140 = 0;
    if (((*(v129 + 72))(v131, v35, v137, 30, &v140, 0) & 1) == 0)
    {
      if (gVerbose != 2)
      {
        goto LABEL_331;
      }

      v4 = a3;
      v6 = a1;
      v5 = a2;
      v106 = ptr;
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_zip_profile_cold_38();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_334;
      }

      v101 = CFStringCreateWithFormat(v19, 0, @"failed to read the zip-local-header at %u/0x%llx\n", v31, v35);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_zip_profile_cold_39();
      }

      v102 = CK_DEFAULT_LOG_INTERNAL_10;
      v30 = v116;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_315;
      }

      *v134 = 138543362;
      *&v134[4] = v101;
LABEL_313:
      v103 = v102;
      goto LABEL_314;
    }

    if (v140 != 30)
    {
      if (gVerbose != 2)
      {
        goto LABEL_331;
      }

      v4 = a3;
      v6 = a1;
      v5 = a2;
      v106 = ptr;
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_zip_profile_cold_40();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_334;
      }

      v101 = CFStringCreateWithFormat(v19, 0, @"failed to read the zip-local-header at %u/0x%llx\n", v31, v35);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_zip_profile_cold_41();
      }

      v102 = CK_DEFAULT_LOG_INTERNAL_10;
      v30 = v116;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_315;
      }

      *v134 = 138543362;
      *&v134[4] = v101;
      goto LABEL_313;
    }

    if (*v137 != 67324752)
    {
      if (gVerbose == 2)
      {
        v4 = a3;
        v6 = a1;
        v5 = a2;
        v106 = ptr;
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_zip_profile_cold_42();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          v101 = CFStringCreateWithFormat(v19, 0, @"zip-local-header %u @ 0x%llx looks corrupt (0x%08x != 0x%08x)", v31, v35, *v137, 67324752);
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            create_zip_profile_cold_43();
          }

          v102 = CK_DEFAULT_LOG_INTERNAL_10;
          v30 = v116;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_315;
          }

          *v134 = 138543362;
          *&v134[4] = v101;
          goto LABEL_313;
        }

LABEL_334:
        v30 = v116;
        goto LABEL_335;
      }

LABEL_331:
      v4 = a3;
      v6 = a1;
      v5 = a2;
      v30 = v116;
      goto LABEL_332;
    }

    if (*&v138[12])
    {
      *(v34 + 9) = *&v138[12];
    }

    v36 = 0;
    if (!*&v137[8] && *&v138[10] == 21)
    {
      if (v115 > 0x15)
      {
        v37 = ptr;
      }

      else
      {
        v37 = malloc_type_realloc(ptr, 0x16uLL, 0x100004077774924uLL);
        if (!v37)
        {
          v4 = a3;
          v6 = a1;
          v5 = a2;
          v30 = v116;
          v106 = ptr;
          if (!ptr)
          {
            goto LABEL_337;
          }

LABEL_336:
          free(v106);
          goto LABEL_337;
        }
      }

      if ((*(v129 + 72))(v131, v35 + 30, v37, 21, &v140, 0))
      {
        v38 = v140 == 21;
      }

      else
      {
        v38 = 0;
      }

      if (!v38)
      {
        v106 = v37;
        v4 = a3;
        v6 = a1;
        v5 = a2;
        goto LABEL_334;
      }

      *(v37 + 21) = 0;
      v36 = strcmp(v37, "QuickLook/Preview.pdf") == 0;
      v115 = 22;
      ptr = v37;
    }

    if (!v31)
    {
      v40 = *v34;
LABEL_72:
      v42 = 30;
      goto LABEL_73;
    }

    v39 = *&v28[24 * v31 - 24] + *&v28[24 * v31 - 16] + *&v28[24 * v31 - 8] + *&v28[24 * v31 - 6] + 30;
    if (v35 < v39)
    {
      break;
    }

    v40 = *v34;
    v41 = v35 - v39;
    if (!v41)
    {
      goto LABEL_72;
    }

    v40 -= v41;
    *v34 = v40;
    v42 = v41 + 30;
LABEL_73:
    v30 = v116;
    v43 = v42 + v40 + *(v34 + 8) + *(v34 + 9);
    v44 = &v116[14 * v31];
    *(v44 + 52) = 1;
    *v44 = v43;
    v44[1] = 5242880;
    *(v44 + 8) = 8;
    v44[3] = 0;
    v45 = *(v34 + 1) + v43;
    v46 = &v116[7 * ((2 * v31) | 1)];
    *v46 = v45;
    if (v36)
    {
      v46[1] = 0x340000000030;
      *(v46 + 4) = 0x8000;
      *(v46 + 8) = 1;
      v118 = v43;
      v120 = (2 * v31) | 1;
    }

    else
    {
      *(v46 + 52) = 1;
      v46[1] = 5242880;
      *(v46 + 8) = 2;
    }

    v46[3] = 0;
    v47 = 0;
    v48 = __nela;
    v49 = 2;
    do
    {
      v50 = *(v48 + 52);
      v52 = *v48;
      v48 += 56;
      v51 = v52;
      v53 = v52 - v33;
      v54 = v50 == 0;
      if (v50)
      {
        v55 = 5242879;
      }

      else
      {
        v55 = 13311;
      }

      if (v54)
      {
        v56 = 13312;
      }

      else
      {
        v56 = 5242880;
      }

      v47 += (v53 + v55) / v56;
      v33 = v51;
      --v49;
    }

    while (v49);
    v57 = v47 + v119;
    if (v57 >= *(a1 + 164))
    {
      if (v120 == -1)
      {
        goto LABEL_318;
      }

      if (gVerbose == 2)
      {
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          create_zip_profile_cold_46();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          v58 = CFStringCreateWithFormat(v19, 0, @"%u >= %u, last_rabin:%d, last_rabin_base:0x%llx\n", v57, *(a1 + 164), v120, v118);
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            create_zip_profile_cold_47();
          }

          v59 = CK_DEFAULT_LOG_INTERNAL_10;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            *v134 = 138543362;
            *&v134[4] = v58;
            _os_log_impl(&dword_243431000, v59, OS_LOG_TYPE_DEBUG, "%{public}@", v134, 0xCu);
          }

          v30 = v116;
          if (v58)
          {
            CFRelease(v58);
          }
        }
      }

      v60 = &v30[7 * v120];
      v61 = *v60 - v118;
      v62 = *(v60 + 52) ? 5242879 : 13311;
      v63 = *(v60 + 52) ? 5242880 : 13312;
      *(v60 + 52) = 1;
      v60[1] = 5242880;
      *(v60 + 8) = 2;
      v60[3] = 0;
      v64 = v57 - (v61 + v62) / v63 + (v61 + 5242879) / 5242880;
      if (v64 >= *(a1 + 164))
      {
LABEL_318:
        v4 = a3;
        v6 = a1;
        v5 = a2;
        goto LABEL_332;
      }

      v118 = 0;
      v119 = v64;
      v120 = 0xFFFFFFFFLL;
    }

    else
    {
      v119 += v47;
    }

    v33 = *v46;
    ++v31;
    __nela += 112;
    v65 = v114;
    if (v31 == v113)
    {
      v9 = v114 | 1u;
      v4 = a3;
      v6 = a1;
      v5 = a2;
      v17 = old_ringing + 664;
      v104 = v119;
      goto LABEL_198;
    }
  }

  if (gVerbose != 2)
  {
    goto LABEL_331;
  }

  v4 = a3;
  v6 = a1;
  v5 = a2;
  v30 = v116;
  if (CK_DEFAULT_LOG_BLOCK_10 != -1)
  {
    create_zip_profile_cold_44();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) || !os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
  {
LABEL_332:
    v106 = ptr;
    if (!ptr)
    {
      goto LABEL_337;
    }

    goto LABEL_336;
  }

  v101 = CFStringCreateWithFormat(v19, 0, @"entries %u and %u overlap\n", v31, v31 - 1);
  if (CK_DEFAULT_LOG_BLOCK_10 != -1)
  {
    create_zip_profile_cold_45();
  }

  v105 = CK_DEFAULT_LOG_INTERNAL_10;
  v106 = ptr;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
  {
    *v134 = 138543362;
    *&v134[4] = v101;
    v103 = v105;
LABEL_314:
    _os_log_impl(&dword_243431000, v103, OS_LOG_TYPE_DEBUG, "%{public}@", v134, 0xCu);
  }

LABEL_315:
  if (!v101)
  {
LABEL_335:
    if (!v106)
    {
      goto LABEL_337;
    }

    goto LABEL_336;
  }

  CFRelease(v101);
  if (v106)
  {
    goto LABEL_336;
  }

LABEL_337:
  free(v30);
LABEL_338:
  if (v28)
  {
LABEL_339:
    free(v28);
  }

LABEL_6:
  if (a4)
  {
    *a4 = 1;
  }

  v9 = (*(v6 + 168))(v6, v5, v4, 0);
LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t create_mp3_profile(uint64_t a1, void *a2, _DWORD *a3, _BYTE *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 4;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *(a1 + 232);
  v10 = *(a1 + 80);
  v56 = 0;
  memset(v57, 0, 10);
  if ((*(v7 + 72))(v8, v9, v57, 10, &v56, 0))
  {
    v11 = v56 == 10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = is_ID3v2_tag(v57, 0xAuLL);
  if (!v12)
  {
    if (v10 >= 0x81)
    {
      v20 = 0;
      cfa = 0;
      v24 = 0;
      goto LABEL_45;
    }

LABEL_9:
    if (a4)
    {
      *a4 = 1;
    }

    v12 = (*(a1 + 168))(a1, a2, a3, 0);
    goto LABEL_12;
  }

  v15 = 0;
  v16 = bswap32(*(v57 + 6));
  v17 = 2130706432;
  v18 = 4;
  do
  {
    v15 = v17 & v16 | (v15 >> 1);
    v17 >>= 8;
    --v18;
  }

  while (v18);
  if (v15 >> 28)
  {
    create_mp3_profile_cold_10();
  }

  if ((v57[0] & 0x100000000000) != 0)
  {
    v19 = 20;
  }

  else
  {
    v19 = 10;
  }

  v20 = v19 + v15;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_mp3_profile_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      cf = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ID3v2 tag present at 0x%llx, v2_tag_size:0x%x\n", v9, v20);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_mp3_profile_cold_2();
      }

      v21 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = cf;
        _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (v10 < v20)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_mp3_profile_cold_8();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ID3v2 tag larger than the file, v2_tag_size:0x%x, dataSize:0x%llx\n", v20, v10);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_mp3_profile_cold_9();
      }

      v23 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    goto LABEL_9;
  }

  v25 = malloc_type_realloc(0, 0x38uLL, 0x1000040C4DFEAEFuLL);
  if (!v25)
  {
    goto LABEL_9;
  }

  v24 = v25;
  v25[6] = 0;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  cfa = 1;
  *(v25 + 52) = 1;
  *v25 = v9 + v20;
  v25[1] = 5242880;
  *(v25 + 8) = 9;
  if (v10 - v20 <= 0x80)
  {
    LODWORD(v31) = 1;
    v12 = 1;
    if (v10 > v20)
    {
      goto LABEL_75;
    }

    goto LABEL_85;
  }

LABEL_45:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  *buf = 0u;
  v61 = 0u;
  v52 = v10 + v9 - 128;
  if (!(*(v7 + 72))(v8) || v56 != 128)
  {
    goto LABEL_81;
  }

  v27 = *buf != 16724 || buf[2] != 71;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_mp3_profile_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v28 = "missing";
      if (!v27)
      {
        v28 = "present";
      }

      v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ID3v1 tag %s at 0x%llx\n", v28, v52);
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_mp3_profile_cold_4();
      }

      v29 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *v58 = 138543362;
        v59 = v51;
        _os_log_impl(&dword_243431000, v29, OS_LOG_TYPE_DEBUG, "%{public}@", v58, 0xCu);
      }

      if (v51)
      {
        CFRelease(v51);
      }
    }
  }

  v30 = v27 ? v12 : 1;
  if (v30 != 1)
  {
    goto LABEL_81;
  }

  if (v27)
  {
    LODWORD(v31) = cfa;
    if (v10 > v20)
    {
      if ((v12 & 1) == 0)
      {
        create_mp3_profile_cold_5();
      }

LABEL_75:
      v32 = malloc_type_realloc(v24, 56 * v31 + 56, 0x1000040C4DFEAEFuLL);
      if (v32)
      {
        v33 = &v32[56 * v31];
        *(v33 + 6) = 0;
        *(v33 + 1) = 0u;
        *(v33 + 2) = 0u;
        *v33 = 0u;
        v32[108] = 1;
        *(v32 + 7) = v10 + v9;
        *(v32 + 8) = 5242880;
        *(v32 + 22) = 9;
        *(v32 + 10) = 0;
        v31 = (v31 + 1);
        v12 = v31;
        v24 = v32;
        goto LABEL_85;
      }

LABEL_81:
      if (!v24)
      {
        goto LABEL_9;
      }

      goto LABEL_94;
    }

    if (!v12)
    {
      goto LABEL_95;
    }

    v12 = 1;
  }

  else
  {
    v34 = malloc_type_realloc(v24, 56 * cfa + 112, 0x1000040C4DFEAEFuLL);
    if (!v34)
    {
      goto LABEL_81;
    }

    v35 = &v34[56 * cfa];
    *(v35 + 5) = 0u;
    *(v35 + 6) = 0u;
    *(v35 + 3) = 0u;
    *(v35 + 4) = 0u;
    *(v35 + 1) = 0u;
    *(v35 + 2) = 0u;
    *v35 = 0u;
    v36 = &v34[56 * v12];
    v36[52] = 1;
    *v36 = v52;
    *(v36 + 1) = 5242880;
    *(v36 + 8) = 9;
    *(v36 + 3) = 0;
    v37 = 112;
    if (!v12)
    {
      v37 = 56;
    }

    v38 = &v34[v37];
    v38[52] = 1;
    *v38 = v10 + v9;
    *(v38 + 1) = 5242880;
    *(v38 + 8) = 9;
    LODWORD(v31) = cfa | 2;
    v12 = cfa | 2;
    v24 = v34;
    *(v38 + 3) = 0;
  }

LABEL_85:
  v39 = 0;
  v40 = v24;
  v41 = v31;
  do
  {
    v42 = *(v40 + 52);
    v44 = *v40;
    v40 += 7;
    v43 = v44;
    v45 = v44 - v9;
    v46 = v42 == 0;
    if (v42)
    {
      v47 = 5242879;
    }

    else
    {
      v47 = 13311;
    }

    if (v46)
    {
      v48 = 13312;
    }

    else
    {
      v48 = 5242880;
    }

    v39 += (v45 + v47) / v48;
    v9 = v43;
    --v41;
  }

  while (v41);
  if (*(a1 + 164) < v39)
  {
LABEL_94:
    free(v24);
    goto LABEL_9;
  }

LABEL_95:
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_mp3_profile_cold_6();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v49 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"returning %u sections for %s\n", v12, *(a1 + 104));
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_mp3_profile_cold_7();
      }

      v50 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v49;
        _os_log_impl(&dword_243431000, v50, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v49)
      {
        CFRelease(v49);
      }
    }

    print_sections(v24, v12);
  }

  *a2 = v24;
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t create_sqlite3_db_wal_profile(uint64_t a1, uint64_t **a2, _DWORD *a3, _BYTE *a4)
{
  v5 = a3;
  v46 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 7;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a1 + 232);
  v9 = *(a1 + 80);
  v43 = 0u;
  v44 = 0u;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *buf = 0;
  if ((*(v11 + 72))(v10, 0, &v43, 32, buf, 0))
  {
    v12 = *buf > 0x1FuLL;
  }

  else
  {
    v12 = 0;
  }

  if (!v12 || (v43 = vrev32q_s8(v43), v44 = vrev32q_s8(v44), (v13 = malloc_type_realloc(0, 0x38uLL, 0x1000040C4DFEAEFuLL)) == 0))
  {
LABEL_33:
    if (a4)
    {
      *a4 = 1;
    }

    v17 = (*(a1 + 168))(a1, a2, v5, 0);
    goto LABEL_36;
  }

  v14 = v13;
  v42 = v5;
  v13[6] = 0;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  v15 = v8 + 32;
  v16 = 1;
  *(v13 + 52) = 1;
  *v13 = v8 + 32;
  v13[1] = 5242880;
  *(v13 + 8) = 5;
  if (v8 + 32 >= v9)
  {
    v17 = 1;
LABEL_23:
    v25 = 0;
    v26 = 0;
    v27 = v14;
    do
    {
      v28 = *(v27 + 52);
      v30 = *v27;
      v27 += 7;
      v29 = v30;
      v31 = v30 - v25;
      v32 = v28 == 0;
      if (v28)
      {
        v33 = 5242879;
      }

      else
      {
        v33 = 13311;
      }

      if (v32)
      {
        v34 = 13312;
      }

      else
      {
        v34 = 5242880;
      }

      v26 += (v31 + v33) / v34;
      v25 = v29;
      --v16;
    }

    while (v16);
    if (*(a1 + 164) >= v26)
    {
      goto LABEL_43;
    }

LABEL_32:
    free(v14);
    v5 = v42;
    goto LABEL_33;
  }

  LODWORD(v17) = 1;
  do
  {
    v15 += 24;
    v18 = v17;
    v19 = malloc_type_realloc(v14, 56 * v17 + 56, 0x1000040C4DFEAEFuLL);
    v20 = v19;
    if (v15 > v9)
    {
      if (!v19)
      {
        goto LABEL_32;
      }

      v37 = &v19[56 * v17];
      v38 = 1;
      v39 = 6;
LABEL_41:
      *(v37 + 6) = 0;
      *(v37 + 1) = 0u;
      *(v37 + 2) = 0u;
      *v37 = 0u;
      v37[52] = 1;
      *v37 = v9;
      *(v37 + 1) = 5242880;
      *(v37 + 8) = v39;
      v17 = (v18 + v38);
      *(v37 + 3) = 0;
      if (v17)
      {
        goto LABEL_21;
      }

      goto LABEL_42;
    }

    if (!v19)
    {
      goto LABEL_32;
    }

    v21 = &v19[56 * v17];
    *(v21 + 6) = 0;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    *v21 = 0u;
    v21[52] = 1;
    *v21 = v15;
    *(v21 + 1) = 5242880;
    *(v21 + 8) = 6;
    *(v21 + 3) = 0;
    v17 = (v17 + 1);
    if (v15 >= v9)
    {
      goto LABEL_19;
    }

    v22 = v15 + v43.u32[2];
    v19 = malloc_type_realloc(v19, 56 * v17 + 56, 0x1000040C4DFEAEFuLL);
    if (v22 > v9)
    {
      v14 = v20;
      if (!v19)
      {
        goto LABEL_32;
      }

      v37 = &v19[56 * v17];
      v38 = 2;
      v39 = 7;
      goto LABEL_41;
    }

    v14 = v20;
    if (!v19)
    {
      goto LABEL_32;
    }

    v23 = &v19[56 * v17];
    *v23 = 0u;
    *(v23 + 1) = 0u;
    *(v23 + 6) = 0;
    *(v23 + 2) = 0u;
    v24 = v15 + v43.u32[2];
    v23[52] = 1;
    *v23 = v24;
    *(v23 + 1) = 5242880;
    *(v23 + 8) = 7;
    *(v23 + 3) = 0;
    v15 += v43.u32[2];
    v17 = (v18 + 2);
LABEL_19:
    v14 = v19;
  }

  while (v15 < v9);
  if (v17)
  {
LABEL_21:
    v16 = v17;
    v14 = v19;
    goto LABEL_23;
  }

LABEL_42:
  v14 = v19;
LABEL_43:
  *a2 = v14;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_sqlite3_db_wal_profile_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"returning %u sections for %s\n", v17, *(a1 + 104));
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_sqlite3_db_wal_profile_cold_2();
      }

      v41 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v40;
        _os_log_impl(&dword_243431000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    print_sections(v14, v17);
  }

LABEL_36:
  v35 = *MEMORY[0x277D85DE8];
  return v17;
}