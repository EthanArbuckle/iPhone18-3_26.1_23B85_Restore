uint64_t DIGetBundleRef()
{
  if (pthread_mutex_lock(&stru_27EECD648))
  {
    return 0;
  }

  if (!qword_27EECD6E8)
  {
    *__error() = 0;
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.DiskImagesFramework");
    qword_27EECD6E8 = BundleWithIdentifier;
    if (BundleWithIdentifier)
    {
      CFRetain(BundleWithIdentifier);
    }

    else if (dword_27EECD6E0)
    {
      v1 = __error();
      sub_248DD1E7C("DIGetBundleRef returned NULL, error %d\n", *v1);
    }
  }

  if (pthread_mutex_unlock(&stru_27EECD648))
  {
    return 0;
  }

  else
  {
    return qword_27EECD6E8;
  }
}

void sub_248D9EB00(void *context, CFDictionaryRef theDict, unint64_t a3)
{
  if (a3 <= 2)
  {
    CFDictionaryApplyFunction(theDict, off_285BCC230[a3], context);
  }
}

void sub_248D9EB2C(const void *a1, const void *a2, void *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {

    CFDictionarySetValue(cf, a1, a2);
  }
}

void DIAddPermission(__CFDictionary *a1, int a2)
{
  if (a1)
  {
    if (a2 == 3)
    {
      v2 = MEMORY[0x277CBED28];
      goto LABEL_7;
    }

    if (a2 == 1)
    {
      v2 = MEMORY[0x277CBED10];
LABEL_7:
      CFDictionarySetValue(a1, @"writeable", *v2);
      return;
    }

    CFDictionaryRemoveValue(a1, @"writeable");
  }
}

uint64_t DI_kextExists()
{
  v0 = *MEMORY[0x277CD28A0];
  v1 = IOServiceMatching("IOHDIXController");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (!MatchingService)
  {
    return 3758097088;
  }

  IOObjectRelease(MatchingService);
  return 0;
}

uint64_t DIInitialize()
{
  v46 = *MEMORY[0x277D85DE8];
  if (sub_248D9F090())
  {
    result = 0;
    goto LABEL_64;
  }

  if (pthread_mutex_lock(&stru_27EECD608))
  {
LABEL_70:
    result = *__error();
    goto LABEL_64;
  }

  if (byte_27EECD6D0)
  {
LABEL_63:
    result = pthread_mutex_unlock(&stru_27EECD608);
    if (!result)
    {
      goto LABEL_64;
    }

    goto LABEL_70;
  }

  *__error() = 0;
  if (DIGetBundleRef())
  {
    dword_27EECD6D4 = getpid();
    sub_248DC75E4("vfs.generic.noremotehang", v2, v3, v4, v5, v6, v7, v8, v34, v36, v38, v40, v42, dword_27EECD6D4);
    v9 = sub_248D9F120();
    if (!sub_248DC7604(v9))
    {
      if (v0)
      {
        CFRelease(v0);
      }

      v10 = sub_248D9F120();
      sub_248DC7604(v10);
    }

    if (v0)
    {
      CFRelease(v0);
    }

    v11 = sub_248D9F120();
    if (sub_248DC7604(v11))
    {
      v12 = getprogname();
      if (v12)
      {
        v13 = v12;
        if (snprintf(__str, 0x400uLL, "%s%s", "/tmp/", "DiskImages-debug/") <= 1023 && (mkdir(__str, 0x3FFu) != -1 || *__error() == 17) && snprintf(v45, 0x400uLL, "%s%s.%d.txt", __str, v13, HIDWORD(v43)) <= 1023)
        {
          v35 = 384;
          v14 = open(v45, 2818);
          if (v14 == -1)
          {
            v33 = __error();
            warn("couldn't open debug log; error %d", *v33);
            if (!v0)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v15 = v14;
          dup2(v14, 1);
          dup2(v15, 2);
          if (v15 >= 3)
          {
            close(v15);
          }
        }
      }
    }

    if (!v0)
    {
LABEL_23:
      v16 = 0x27EECD000;
      if (qword_27EECD690)
      {
        CFRelease(qword_27EECD690);
        qword_27EECD690 = 0;
      }

      qword_27EECD690 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (sub_248D9F364() >= 1)
      {
        do
        {
          if (off_281B89E10)
          {
            v16 = off_281B89E10();
            sub_248D9F470(v16);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          sub_248DC75D8();
        }

        while (!v17);
      }

      if (sub_248D9F600(1) >= 1)
      {
        do
        {
          if (off_281B89EB8[0])
          {
            v16 = off_281B89EB8[0]();
            sub_248D9F470(v16);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          sub_248DC75D8();
        }

        while (!v17);
      }

      if (sub_248D9F600(2) >= 1)
      {
        do
        {
          if (off_281B89F28)
          {
            v16 = off_281B89F28();
            sub_248D9F470(v16);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          sub_248DC75D8();
        }

        while (!v17);
      }

      if (sub_248D9F600(3) >= 1)
      {
        do
        {
          if (off_27EECD698)
          {
            v16 = (off_27EECD698)();
            sub_248D9F470(v16);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          sub_248DC75D8();
        }

        while (!v17);
      }

      v18 = sub_248D9F940();
      if (v18 >= 1)
      {
        v19 = v18;
        v20 = &qword_281B89F98;
        do
        {
          if (*v20)
          {
            v16 = (*v20)();
            sub_248D9F470(v16);
            if (v16)
            {
              CFRelease(v16);
            }
          }

          v20 += 11;
          --v19;
        }

        while (v19);
      }

      *__error() = 0;
      v21 = sub_248D9F120();
      v22 = sub_248DC7604(v21);
      byte_27EECD688 = v22;
      if (getenv("DISKIMAGEOBJECTTRACKING"))
      {
        v30 = 1;
      }

      else
      {
        v30 = v22;
      }

      byte_27EECD688 = v30;
      if (v16)
      {
        CFRelease(v16);
        v30 = byte_27EECD688;
      }

      if (v30)
      {
        printf("\x1B[7mDIInitialize: starting DiskImageObject tracking\n\x1B[0m");
        sub_248DC8450();
      }

      sub_248DC75E4("vfs.generic.noremotehang", v23, v24, v25, v26, v27, v28, v29, v35, v37, v39, v41, v43, -BYTE4(v43));
      byte_27EECD6D0 = 1;
      goto LABEL_63;
    }

LABEL_22:
    CFRelease(v0);
    goto LABEL_23;
  }

  v32 = *__error();
  pthread_mutex_unlock(&stru_27EECD608);
  if (v32)
  {
    result = v32;
  }

  else
  {
    result = 120;
  }

LABEL_64:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248D9F090()
{
  if (pthread_mutex_lock(&stru_27EECD608))
  {
    return 0;
  }

  if (byte_27EECD6D0 == 1)
  {
    if (dword_27EECD6D4)
    {
      if (getpid() == dword_27EECD6D4)
      {
        v0 = 1;
        goto LABEL_9;
      }

      dword_27EECD6D4 = 0;
    }

    v0 = 0;
    byte_27EECD6D0 = 0;
  }

  else
  {
    v0 = 0;
  }

LABEL_9:
  if (pthread_mutex_unlock(&stru_27EECD608))
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_248D9F128(const __CFString *a1, unsigned __int8 a2)
{
  v6 = a2;
  v3 = sub_248D9F16C(a1, &v6);
  v4 = v6;
  if (!v3)
  {
    return a2;
  }

  return v4;
}

uint64_t sub_248D9F16C(const __CFString *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFStringGetTypeID())
    {
      v5 = 1;
      if (CFStringCompare(a1, @"YES", 1uLL) == kCFCompareEqualTo)
      {
        *a2 = 1;
        return v5;
      }

      v5 = 1;
      if (CFStringCompare(a1, @"TRUE", 1uLL) == kCFCompareEqualTo || (v5 = 1, CFStringCompare(a1, @"1", 1uLL) == kCFCompareEqualTo))
      {
        *a2 = 1;
        return v5;
      }

      if (CFStringCompare(a1, @"NO", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"FALSE", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"0", 1uLL) == kCFCompareEqualTo)
      {
        *a2 = 0;
        return 1;
      }
    }

    else
    {
      v7 = CFGetTypeID(a1);
      if (v7 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr))
        {
          *a2 = valuePtr != 0.0;
          return 1;
        }
      }
    }

    return 0;
  }

  *a2 = CFBooleanGetValue(a1);
  return 1;
}

uint64_t sub_248D9F2E4(char *bsdName)
{
  if (!bsdName)
  {
    return 0;
  }

  v1 = *MEMORY[0x277CD28A0];
  v2 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, bsdName);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFDictionarySetValue(v2, @"IOProviderClass", @"IOMedia");

  return IOServiceGetMatchingService(v1, v3);
}

uint64_t sub_248D9F364()
{
  if (!off_281B89E38)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v1 = &off_281B89E70;
  do
  {
    result = (result + 1);
    v2 = *v1;
    v1 += 7;
  }

  while (v2);
  return result;
}

__CFDictionary *sub_248D9F394()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = DIGetBundleRef();
    v2 = sub_248DD4D90(v1, @"BSD backing store", @"BSD backing store");
    CFDictionaryAddValue(Mutable, @"plugin-class", @"CBackingStore");
    CFDictionaryAddValue(Mutable, @"plugin-type", @"builtin");
    CFDictionaryAddValue(Mutable, @"plugin-name", v2);
    CFDictionaryAddValue(Mutable, @"plugin-key", @"CBSDBackingStore");
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return Mutable;
}

void sub_248D9F470(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      v3 = qword_27EECD690;

      CFArrayAppendValue(v3, a1);
    }

    else
    {
      v4 = CFGetTypeID(a1);
      if (v4 == CFArrayGetTypeID())
      {
        v5 = qword_27EECD690;
        v6.length = CFArrayGetCount(a1);
        v6.location = 0;

        CFArrayAppendArray(v5, a1, v6);
      }
    }
  }
}

__CFDictionary *sub_248D9F524()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = DIGetBundleRef();
    v2 = sub_248DD4D90(v1, @"vectored backing store", @"vectored backing store");
    CFDictionaryAddValue(Mutable, @"plugin-class", @"CBackingStore");
    CFDictionaryAddValue(Mutable, @"plugin-type", @"builtin");
    CFDictionaryAddValue(Mutable, @"plugin-name", v2);
    CFDictionaryAddValue(Mutable, @"plugin-key", @"CVectoredBackingStore");
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return Mutable;
}

uint64_t sub_248D9F600(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  v1 = off_278F802E0[a1 - 1];
  if (!v1[5])
  {
    return 0;
  }

  LODWORD(result) = 0;
  v3 = (v1 + 12);
  do
  {
    result = (result + 1);
    v4 = *v3;
    v3 += 7;
  }

  while (v4);
  return result;
}

__CFArray *sub_248D9F640()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v2 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = DIGetBundleRef();
  v4 = sub_248DD4D90(v3, @"128-bit AES encryption", @"128-bit AES encryption");
  CFDictionaryAddValue(v2, @"plugin-class", @"CFileEncoding");
  CFDictionaryAddValue(v2, @"plugin-type", @"builtin");
  CFDictionaryAddValue(v2, @"plugin-name", v4);
  CFDictionaryAddValue(v2, @"plugin-key", @"AES-128");
  v5 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(v2, @"plugin-encryption", *MEMORY[0x277CBED28]);
  if (v4)
  {
    CFRelease(v4);
  }

  CFArrayAppendValue(Mutable, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v6 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = DIGetBundleRef();
  v8 = sub_248DD4D90(v7, @"256-bit AES encryption (recommended)", @"256-bit AES encryption (recommended)");
  CFDictionaryAddValue(v6, @"plugin-class", @"CFileEncoding");
  CFDictionaryAddValue(v6, @"plugin-type", @"builtin");
  CFDictionaryAddValue(v6, @"plugin-name", v8);
  CFDictionaryAddValue(v6, @"plugin-key", @"AES-256");
  CFDictionaryAddValue(v6, @"plugin-encryption", v5);
  if (v8)
  {
    CFRelease(v8);
  }

  CFArrayAppendValue(Mutable, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return Mutable;
}

__CFDictionary *sub_248D9F848()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = DIGetBundleRef();
    v2 = sub_248DD4D90(v1, @"UDIF encoding", @"UDIF encoding");
    CFDictionaryAddValue(Mutable, @"plugin-class", @"CFileEncoding");
    CFDictionaryAddValue(Mutable, @"plugin-type", @"builtin");
    CFDictionaryAddValue(Mutable, @"plugin-name", v2);
    CFDictionaryAddValue(Mutable, @"plugin-key", @"CUDIFEncoding");
    CFDictionaryAddValue(Mutable, @"plugin-encryption", *MEMORY[0x277CBED10]);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return Mutable;
}

uint64_t sub_248D9F940()
{
  if (!off_281B89FE0)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v1 = &off_281B8A038;
  do
  {
    result = (result + 1);
    v2 = *v1;
    v1 += 11;
  }

  while (v2);
  return result;
}

__CFDictionary *sub_248D9F970()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"plugin-class", @"CDiskImage");
    CFDictionaryAddValue(v2, @"plugin-type", @"builtin");
    v3 = DIGetBundleRef();
    v4 = sub_248DD4D90(v3, @"UDIF disk image", @"UDIF disk image");
    CFDictionaryAddValue(v2, @"plugin-name", v4);
    if (v4)
    {
      CFRelease(v4);
    }

    CFDictionaryAddValue(v2, @"plugin-key", @"CUDIFDiskImage");
    v5 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
    v6 = *MEMORY[0x277CBED10];
    sub_248DC9DC4(v5, @"read-only", @"CUDIFDiskImage", @"read-only format", @"UDRO", @"dmg", *MEMORY[0x277CBED10]);
    v7 = *MEMORY[0x277CBED28];
    sub_248DC9DC4(v5, @"compressed (ADC)", @"CUDIFDiskImage", @"compressed format with ADC", @"UDCO", @"dmg", *MEMORY[0x277CBED28]);
    sub_248DC9DC4(v5, @"compressed", @"CUDIFDiskImage", @"compressed format with zlib", @"UDZO", @"dmg", v6);
    sub_248DC9DC4(v5, @"compressed (lzfse)", @"CUDIFDiskImage", @"compressed format with lzfse", @"ULFO", @"dmg", v7);
    sub_248DC9DC4(v5, @"entire device", @"CUDIFDiskImage", @"complete format", @"UFBI", @"dmg", v7);
    sub_248DC9DC4(v5, @"iPod image", @"CUDIFDiskImage", @"complete format", @"IPOD", @"ipodimage", v7);
    CFDictionaryAddValue(v2, @"plugin-diskimage-convert", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    v8 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
    sub_248DCA04C(v8, @"CRC-32 image checksum", @"CUDIFDiskImage", @"UDIF CRC-32 image checksum", @"UDIF-CRC32", v6);
    sub_248DCA04C(v8, @"MD5 image checksum", @"CUDIFDiskImage", @"UDIF MD5 image checksum", @"UDIF-MD5", v7);
    sub_248DCA04C(v8, @"iPod image checksum", @"CUDIFDiskImage", @"iPod image checksum", @"IPOD", v7);
    CFDictionaryAddValue(v2, @"plugin-diskimage-checksum", v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v2;
}

__CFDictionary *sub_248D9FC74()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"plugin-class", @"CDiskImage");
    CFDictionaryAddValue(v2, @"plugin-type", @"builtin");
    v3 = DIGetBundleRef();
    v4 = sub_248DD4D90(v3, @"sparse disk image", @"sparse disk image");
    CFDictionaryAddValue(v2, @"plugin-name", v4);
    if (v4)
    {
      CFRelease(v4);
    }

    CFDictionaryAddValue(v2, @"plugin-key", @"CSparseDiskImage");
    v5 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
    v6 = *MEMORY[0x277CBED28];
    sub_248DC9DC4(v5, @"sparse", @"CSparseDiskImage", @"sparse format", @"UDSP", @"sparseimage", *MEMORY[0x277CBED28]);
    CFDictionaryAddValue(v2, @"plugin-diskimage-convert", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    v7 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
    sub_248DC9EE8(v7, @"sparse disk image", @"CSparseDiskImage", @"name of disk image we create", @"SPARSE", @"sparseimage", *MEMORY[0x277CBED10], v6, 0);
    CFDictionaryAddValue(v2, @"plugin-diskimage-create", v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v2;
}

__CFDictionary *sub_248D9FE50()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = DIGetBundleRef();
    v3 = sub_248DD4D90(v2, @"raw disk image", @"raw disk image");
    CFDictionaryAddValue(Mutable, @"plugin-class", @"CDiskImage");
    CFDictionaryAddValue(Mutable, @"plugin-type", @"builtin");
    CFDictionaryAddValue(Mutable, @"plugin-name", v3);
    CFDictionaryAddValue(Mutable, @"plugin-key", @"CRawDiskImage");
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = MEMORY[0x277CBF128];
    v5 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
    v6 = *MEMORY[0x277CBED10];
    sub_248DC9DC4(v5, @"read/write", @"CUDIFDiskImage", @"type of disk image we create", @"UDRW", @"dmg", *MEMORY[0x277CBED10]);
    sub_248DC9DC4(v5, @"DVD/CD master", @"CUDIFDiskImage", @"type of disk image we create", @"UDTO", @"cdr", v6);
    CFDictionaryAddValue(Mutable, @"plugin-diskimage-convert", v5);
    v7 = CFArrayCreateMutable(v0, 0, v4);
    v8 = *MEMORY[0x277CBED28];
    sub_248DCA04C(v7, @"CRC-32", @"CRawDiskImage", @"raw CRC-32 checksum", @"CRC32", *MEMORY[0x277CBED28]);
    sub_248DCA04C(v7, @"MD5", @"CRawDiskImage", @"raw MD5 checksum", @"MD5", v8);
    sub_248DCA04C(v7, @"SHA", @"CRawDiskImage", @"raw SHA checksum", @"SHA", v8);
    sub_248DCA04C(v7, @"SHA-1", @"CRawDiskImage", @"raw SHA-1 checksum", @"SHA1", v8);
    sub_248DCA04C(v7, @"SHA-256", @"CRawDiskImage", @"raw SHA-256 checksum", @"SHA256", v8);
    sub_248DCA04C(v7, @"SHA-384", @"CRawDiskImage", @"raw SHA-384 checksum", @"SHA384", v8);
    sub_248DCA04C(v7, @"SHA-512", @"CRawDiskImage", @"raw SHA-512 checksum", @"SHA512", v8);
    CFDictionaryAddValue(Mutable, @"plugin-diskimage-checksum", v7);
    if (v7)
    {
      CFRelease(v7);
    }

    v9 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
    sub_248DC9EE8(v9, @"read/write disk image", @"CRawDiskImage", @"type of disk image we create", @"UDIF", @"dmg", v6, v6, 0);
    sub_248DC9EE8(v9, @"DVD/CD master", @"CRawDiskImage", @"type of disk image we create", @"UDTO", @"cdr", v6, v6, 0);
    CFDictionaryAddValue(Mutable, @"plugin-diskimage-create", v9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
    v11 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = DIGetBundleRef();
    v13 = sub_248DD4D90(v12, @"hybrid image (HFS+/ISO/UDF)", @"hybrid image (HFS+/ISO/UDF)");
    CFDictionaryAddValue(v11, @"plugin-diskimage-iff-name", v13);
    if (v13)
    {
      CFRelease(v13);
    }

    CFDictionaryAddValue(v11, @"plugin-diskimage-iff-key", @"UNIV");
    CFDictionaryAddValue(v11, @"plugin-diskimage-iff-extension", @"dmg");
    CFArrayAppendValue(v10, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    CFDictionaryAddValue(Mutable, @"plugin-diskimage-iff", v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return Mutable;
}

uint64_t DIResolveURLToBackingStore(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, CFTypeRef *a5)
{
  appendedString = 0;
  v17 = 0;
  v15 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v10 = 22;
  if (a1 && a4)
  {
    if (!sub_248D9F090())
    {
      return 120;
    }

    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (!Mutable)
    {
      return 999;
    }

    v12 = Mutable;
    v10 = DIBackingStoreNewWithCFURL(a1, a2, &v17, &appendedString);
    if (appendedString)
    {
      CFStringAppend(v12, appendedString);
    }

    if (!v10)
    {
      if (!a3)
      {
LABEL_34:
        v10 = 0;
LABEL_35:
        if (appendedString)
        {
          CFRelease(appendedString);
          appendedString = 0;
        }

        *a4 = v17;
        if (a5)
        {
          *a5 = v12;
          if (!CFStringGetLength(v12) && *a5)
          {
            CFRelease(*a5);
            *a5 = 0;
          }
        }

        else
        {
          CFRelease(v12);
        }

        return v10;
      }

      v13 = 0;
      while (1)
      {
        if ((a3 >> v13))
        {
          do
          {
            if (appendedString)
            {
              CFRelease(appendedString);
              appendedString = 0;
            }

            v10 = sub_248DA2380(v13, v17, a2, &v15, &appendedString);
            if (appendedString)
            {
              CFStringAppend(v12, appendedString);
            }

            if (v10 != 111)
            {
              if (v10)
              {
                goto LABEL_30;
              }

              if (v17)
              {
                DIDiskImageObjectRelease(v17);
              }

              v17 = v15;
            }
          }

          while (!(v10 | v13));
          v10 = 0;
LABEL_30:
          if (appendedString)
          {
            CFRelease(appendedString);
            appendedString = 0;
          }

          if (v10)
          {
            break;
          }
        }

        if (++v13 == 3)
        {
          goto LABEL_34;
        }
      }
    }

    if (v17)
    {
      DIDiskImageObjectRelease(v17);
      v17 = 0;
    }

    goto LABEL_35;
  }

  return v10;
}

uint64_t DIBackingStoreNewWithCFURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!off_281B89E38)
  {
    return 111;
  }

  v8 = 0;
  v9 = 0;
  v10 = &off_281B89E70;
  v11 = -1;
  do
  {
    v12 = *(v10 - 11);
    if (v12)
    {
      v13 = v12(a1, a2);
      if (v13 > v8)
      {
        v11 = v9;
        v8 = v13;
      }
    }

    ++v9;
    v14 = *v10;
    v10 += 7;
  }

  while (v14);
  if ((v11 & 0x80000000) != 0)
  {
    return 111;
  }

  v15 = *(&off_281B89E10 + 7 * v11 + 2);
  if (!v15)
  {
    return 78;
  }

  return v15(a1, a2, a3, a4);
}

uint64_t sub_248DA058C(const __CFURL *a1, CFDictionaryRef theDict)
{
  if (!a1 || (sub_248DA0698(theDict, @"backingstore-class", @"CBSDBackingStore") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"backingstore-class", @"CBSDBackingStore") > 0)
  {
    return 1000;
  }

  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"file-type", 0) || CFDictionaryGetValueIfPresent(theDict, @"file-creator", 0)))
  {
    return 4294966296;
  }

  v5 = CFURLCopyScheme(a1);
  if (!v5)
  {
    return 4294966296;
  }

  v6 = v5;
  if (CFStringCompare(v5, @"file", 0) || CFURLHasDirectoryPath(a1))
  {
    v4 = 4294966296;
  }

  else if (sub_248DA0778(a1, &v8))
  {
    v4 = 1;
  }

  else
  {
    v4 = 100;
  }

  CFRelease(v6);
  return v4;
}

uint64_t sub_248DA0698(CFDictionaryRef theDict, const void *a2, const __CFString *a3)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      if (a3)
      {
        value = 0;
        result = CFDictionaryGetValueIfPresent(theDict, a2, &value);
        if (result)
        {
          v6 = CFGetTypeID(value);
          if (v6 == CFStringGetTypeID())
          {
            if (CFStringCompare(value, a3, 0))
            {
              return 0xFFFFFFFFLL;
            }

            else
            {
              return 1;
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_248DA0728(const __CFDictionary *a1, const void *a2, unsigned __int8 a3)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v6 = a3;
      if (sub_248D9F16C(Value, &v6))
      {
        return v6;
      }
    }
  }

  return a3;
}

uint64_t sub_248DA0778(const __CFURL *a1, stat *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = sub_248DA07D4(a1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = stat(v3, a2);
  if ((v5 & 0x80000000) != 0)
  {
    v5 = *__error();
  }

  free(v4);
  return v5;
}

const __CFString *sub_248DA07D4(const __CFURL *a1)
{
  result = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (result)
  {
    v2 = result;
    v3 = sub_248DA081C(result, 0x8000100u);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void *sub_248DA081C(const __CFString *a1, CFStringEncoding a2)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
  v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x1BC2DEF3uLL);
  if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, a2))
  {
    free(v6);
    return 0;
  }

  return v6;
}

uint64_t sub_248DA0898(const __CFURL *a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"backingstore-class", @"CVectoredBackingStore") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"backingstore-class", @"CVectoredBackingStore") > 0)
  {
    return 1000;
  }

  if (theDict && (CFDictionaryGetValueIfPresent(theDict, @"file-type", 0) || CFDictionaryGetValueIfPresent(theDict, @"file-creator", 0)))
  {
    return 4294966296;
  }

  v6 = CFURLCopyScheme(a1);
  v4 = 4294966296;
  if (v6)
  {
    v7 = v6;
    if (CFStringCompare(v6, @"vectored", 0))
    {
      v4 = 4294966296;
    }

    else
    {
      v4 = 9999;
    }

    CFRelease(v7);
  }

  return v4;
}

uint64_t sub_248DA0978(const __CFURL *a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  if (!a1)
  {
    v7 = 22;
LABEL_15:
    *a3 = 0;
    return v7;
  }

  v5 = sub_248DA0778(a1, &v10);
  if (v5)
  {
    v7 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      v8 = *__error();
      if (v8)
      {
        v7 = v8;
      }

      else
      {
        v7 = 999;
      }
    }

    goto LABEL_15;
  }

  v6 = v10.st_mode & 0xF000;
  v7 = 102;
  if (v6 != 4096 && v6 != 0x4000)
  {
    operator new();
  }

  return v7;
}

char *sub_248DA0AF0(char *a1, const __CFDictionary *a2)
{
  v3 = sub_248DA0B88(a1, a2);
  *v3 = &unk_285BC9758;
  *(v3 + 42) = 0;
  *(v3 + 43) = 0;
  *(v3 + 80) = -1;
  *(v3 + 35) = 0;
  *(v3 + 72) = 0;
  *(v3 + 37) = 0;
  v3[304] = 0;
  *(v3 + 41) = 0;
  *(v3 + 39) = 0;
  v3[369] = 0;
  sub_248DA0FD0(v3, @"thread-safe", *MEMORY[0x277CBED28]);
  return a1;
}

char *sub_248DA0B88(char *a1, const __CFDictionary *a2)
{
  sub_248DA0C58(a1);
  *v4 = &unk_285BCCA08;
  v8 = 0x100000;
  valuePtr = 4;
  v4[25] = 0;
  v4[26] = 0;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"bs-cache-depth");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    }

    v6 = CFDictionaryGetValue(a2, @"bs-cache-entry-size");
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, &v8);
    }
  }

  sub_248DA0DF0(a1);
  return a1;
}

double sub_248DA0C58(char *a1)
{
  v1 = sub_248DA0CB0(a1);
  *v1 = &unk_285BC9480;
  *(v1 + 26) = 0;
  *(v1 + 23) = 0;
  v1[192] = 0;
  *(v1 + 14) = 0;
  *(v1 + 15) = 0;
  v1[128] = 0;
  result = 0.0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 164) = 0u;
  return result;
}

char *sub_248DA0CB0(char *a1)
{
  *a1 = &unk_285BC9A88;
  *(a1 + 10) = 0;
  *(a1 + 2) = 0;
  pthread_mutex_init((a1 + 16), 0);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 11) = 0;
  *(a1 + 12) = Mutable;
  DIDiskImageObjectRetain_0(a1);
  if (qword_27EECD6F0)
  {
    CFArrayAppendValue(qword_27EECD6F0, a1);
  }

  return a1;
}

uint64_t DIDiskImageObjectRetain_0(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = (*(a1 + 8) + 1);
  *(a1 + 8) = v2;
  if (qword_27EECD6F0)
  {
    v3 = *MEMORY[0x277D85DF8];
    v4 = (*(*a1 + 16))(a1);
    fprintf(v3, "\x1B[34m\x1B[43mCDiskImageObject::retain: object %s %p refCount is %d.\x1B[0m\n", v4, a1, v2);
  }

  pthread_mutex_unlock((a1 + 16));
  return v2;
}

uint64_t sub_248DA0DF0(uint64_t result)
{
  if (!*(result + 208))
  {
    pthread_mutex_init((result + 216), 0);
    operator new();
  }

  return result;
}

void *sub_248DA0E98(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  a1[4] = a2;
  a1[5] = a3;
  *a1 = &unk_285BCCCF0;
  a1[1] = a5;
  v7 = malloc_type_calloc((2 * a4) | 1, 0x18uLL, 0x1010040A79CA2DEuLL);
  a1[2] = 0;
  a1[3] = v7;
  if (a4 >= 1)
  {
    operator new();
  }

  return a1;
}

BOOL sub_248DA0FD0(uint64_t a1, void *key, const void *a3)
{
  if (key)
  {
    v4 = *(a1 + 96);
    if (a3)
    {
      CFDictionarySetValue(v4, key, a3);
    }

    else
    {
      CFDictionaryRemoveValue(v4, key);
    }
  }

  return key != 0;
}

uint64_t sub_248DA1014(uint64_t a1, const __CFURL *a2)
{
  sub_248DA1140(a1, a2);
  v4 = sub_248DA0778(a2, &v10);
  if (!v4)
  {
    tv_sec = v10.st_mtimespec.tv_sec;
    *(a1 + 280) = v10.st_ino;
    *(a1 + 288) = v10.st_dev;
    *(a1 + 200) = v10.st_size;
    v6 = CFStringCreateWithFormat(0, 0, @"%ld", tv_sec);
    if (v6)
    {
      (*(*a1 + 32))(a1, @"bs-modtime", v6);
    }

    v7 = *(a1 + 296);
    if (v7)
    {
      free(v7);
      *(a1 + 296) = 0;
    }

    v8 = sub_248DA07D4(a2);
    *(a1 + 296) = v8;
    if (!v8)
    {
      v4 = 999;
      if (!v6)
      {
        return v4;
      }

      goto LABEL_8;
    }

    v4 = (*(*a1 + 728))(a1);
    if (v6)
    {
LABEL_8:
      CFRelease(v6);
    }
  }

  return v4;
}

uint64_t sub_248DA1140(void *a1, CFURLRef anURL)
{
  if (!anURL)
  {
    return 22;
  }

  v2 = anURL;
  v4 = CFURLCopyUserName(anURL);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_248DB82DC();
  if (!v6)
  {
    CFRelease(v5);
LABEL_7:
    values = v2;
    CFRetain(v2);
    goto LABEL_8;
  }

  v7 = v6;
  values = v6;
  CFRelease(v5);
  v2 = v7;
LABEL_8:
  v9 = a1[18];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[18] = v2;
  v10 = CFURLCopyPath(v2);
  (*(*a1 + 512))(a1, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  PathComponent = CFURLCopyLastPathComponent(v2);
  (*(*a1 + 520))(a1, PathComponent);
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  v12 = CFURLCopyPathExtension(v2);
  (*(*a1 + 528))(a1, v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  (*(*a1 + 536))(a1, v13);
  if (v13)
  {
    CFRelease(v13);
  }

  return 0;
}

void sub_248DA133C(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 136) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void sub_248DA1394(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 112) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void sub_248DA13EC(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 120) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void sub_248DA1444(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 152) = cf;
}

uint64_t sub_248DA1484(uint64_t a1)
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"d%d:i%llu", *(a1 + 288), *(a1 + 280));
  if (!v2)
  {
    return 999;
  }

  v3 = v2;
  (*(*a1 + 552))(a1, v2);
  CFRelease(v3);
  return 0;
}

void sub_248DA1524(uint64_t a1, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 160) = cf;
}

uint64_t sub_248DA1560(uint64_t result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"writeable");
    if (result)
    {
      if (CFBooleanGetValue(result))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_248DA159C(uint64_t a1, const __CFDictionary *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (sub_248DA0728(a2, @"skip-flushing", 0))
  {
    *(a1 + 304) = 1;
  }

  if (sub_248DA0728(a2, @"di-bsd-log-io", 0))
  {
    v4 = basename(*(a1 + 296));
    v5 = getpid();
    snprintf(__str, 0x400uLL, "/tmp/%s-%d.log", v4, v5);
    syslog(5, "CBSDBackingStore: using log file: %s\n", __str);
    *(a1 + 328) = fopen(__str, "a");
  }

  if (sub_248DA0728(a2, @"mp-apple-quarantine", 0))
  {
    sub_248DA0FD0(a1, @"mp-apple-quarantine", *MEMORY[0x277CBED28]);
  }

  if (sub_248DA0728(a2, @"bs-cache", 1u))
  {
    sub_248DA0DF0(a1);
  }

  else
  {
    sub_248DA1B10(a1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_248DA1714(char *a1)
{
  os_log_create("com.apple.diskimages", "DIDiskimageObject");
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 2);
  *(a1 + 2) = v2 - 1;
  pthread_mutex_unlock((a1 + 16));
  if (!qword_27EECD6F0)
  {
    if (v2 != 1)
    {
      return 0;
    }

LABEL_9:
    (*(*a1 + 8))(a1);
    return 1;
  }

  if (v2 < 2)
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = (*(*a1 + 16))(a1);
    if (v2 != 1)
    {
      fprintf(v4, "\x1B[33m\x1B[44mCDiskImageObject::release: object %s %p \x1B[5m\x1B[7mrefCount is %d.\x1B[0m\n");
      return 0;
    }

    fprintf(v4, "\x1B[33m\x1B[44mCDiskImageObject::release: object %s %p refCount is %d. \x1B[7mfreeing object.\x1B[0m\n", v5, a1, 0);
    goto LABEL_9;
  }

  v3 = *MEMORY[0x277D85DF8];
  (*(*a1 + 16))(a1);
  fprintf(v3, "\x1B[33m\x1B[44mCDiskImageObject::release: object %s %p refCount is %d.\x1B[0m\n");
  return 0;
}

void sub_248DA187C(uint64_t a1)
{
  sub_248DA18B4(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DA18B4(uint64_t a1)
{
  v2 = &unk_285BC9758;
  *a1 = &unk_285BC9758;
  v3 = *(a1 + 328);
  if (v3)
  {
    fclose(v3);
    v2 = *a1;
  }

  v2[35](a1, 1);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 200) = 0;
  v4 = *(a1 + 296);
  if (v4)
  {
    free(v4);
    *(a1 + 296) = 0;
  }

  v5 = *(a1 + 312);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 312) = 0;
  }

  return sub_248DA1AB8(a1);
}

uint64_t sub_248DA1974(uint64_t *a1)
{
  (*(*a1 + 584))(a1);
  if (((*(*a1 + 568))(a1) & 1) == 0 && *(a1 + 80) != -1)
  {
    if (a1[26] && (*(*a1 + 72))(a1))
    {
      sub_248DA2CA0(a1[26], a1[25]);
    }

    close(*(a1 + 80));
    if (a1[26] && !stat(a1[37], &v3))
    {
      *(a1 + 22) = v3.st_mtimespec;
    }

    *(a1 + 80) = -1;
  }

  return 0;
}

uint64_t sub_248DA1A84(uint64_t result, int a2)
{
  v2 = *(result + 168);
  if (v2 > 0 || a2 != 0)
  {
    v4 = v2 - 1;
    if (a2)
    {
      v4 = 0;
    }

    *(result + 168) = v4;
  }

  return result;
}

void *sub_248DA1AB8(void *a1)
{
  *a1 = &unk_285BCCA08;
  sub_248DA1B10(a1);

  return sub_248DA1C90(a1);
}

uint64_t sub_248DA1B10(uint64_t a1)
{
  result = *(a1 + 208);
  if (result)
  {
    (*(*result + 8))(result);
    result = pthread_mutex_destroy((a1 + 216));
  }

  *(a1 + 208) = 0;
  return result;
}

void sub_248DA1B68(uint64_t a1)
{
  sub_248DA1BA0(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DA1BA0(uint64_t a1)
{
  *a1 = &unk_285BCCCF0;
  for (i = *(a1 + 16); i; i = *(a1 + 16))
  {
    *(a1 + 16) = i[9];
    (*(*i + 8))(i);
  }

  free(*(a1 + 24));
  return a1;
}

void sub_248DA1C24(uint64_t a1)
{
  *a1 = &unk_285BCCD10;
  free(*(a1 + 40));
  *(a1 + 40) = 0;

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DA1C90(uint64_t a1)
{
  *a1 = &unk_285BC9480;
  *(a1 + 104) = 0;
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 112) = 0;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 120) = 0;
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 160) = 0;
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 152) = 0;
  }

  v8 = *(a1 + 184);
  if (v8)
  {
    DIDiskImageObjectRelease(v8);
    *(a1 + 184) = 0;
  }

  return sub_248DA1D68(a1);
}

void *sub_248DA1D68(void *a1)
{
  *a1 = &unk_285BC9A88;
  v2 = (a1 + 2);
  pthread_mutex_lock((a1 + 2));
  pthread_mutex_unlock(v2);
  v3 = qword_27EECD6F0;
  if (qword_27EECD6F0)
  {
    v7.length = CFArrayGetCount(qword_27EECD6F0);
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v7, a1);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(qword_27EECD6F0, FirstIndexOfValue);
    }
  }

  v5 = a1[12];
  if (v5)
  {
    CFRelease(v5);
    a1[12] = 0;
  }

  pthread_mutex_destroy(v2);
  return a1;
}

uint64_t DIResolveURLToDiskImage(uint64_t a1, const __CFDictionary *a2, unsigned int a3, void *a4, CFTypeRef *a5)
{
  v18 = 0;
  v19 = 0;
  appendedString = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v10 = 22;
  if (a1 && a4)
  {
    if (sub_248D9F090())
    {
      v11 = *MEMORY[0x277CBECE8];
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v13 = Mutable;
        if (a2)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, a2);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        v15 = MutableCopy;
        if (CFDictionaryGetValue(MutableCopy, @"shadow-file"))
        {
          DIAddPermission(v15, 1);
        }

        v10 = DIResolveURLToBackingStore(a1, v15, a3, &v19, &appendedString);
        if (appendedString)
        {
          CFStringAppend(v13, appendedString);
        }

        if (!v10)
        {
          if (appendedString)
          {
            CFRelease(appendedString);
            appendedString = 0;
          }

          v10 = sub_248DA4250(v19, a2, &v18, &appendedString);
          if (appendedString)
          {
            CFStringAppend(v13, appendedString);
          }

          if (v10 && v18)
          {
            DIDiskImageObjectRelease(v18);
            v18 = 0;
          }
        }

        if (v19)
        {
          DIDiskImageObjectRelease(v19);
          v19 = 0;
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (appendedString)
        {
          CFRelease(appendedString);
          appendedString = 0;
        }

        *a4 = v18;
        if (a5)
        {
          *a5 = v13;
          if (!CFStringGetLength(v13) && *a5)
          {
            CFRelease(*a5);
            *a5 = 0;
          }
        }

        else
        {
          CFRelease(v13);
        }
      }

      else
      {
        return 999;
      }
    }

    else
    {
      return 120;
    }
  }

  return v10;
}

uint64_t sub_248DA2004(uint64_t a1, int a2)
{
  if ((*(*a1 + 568))(a1))
  {
    if (!a2)
    {
      return 0;
    }

    if ((*(*a1 + 88))(a1) == a2)
    {
      return 0;
    }

    return 13;
  }

  v5 = (*(*a1 + 24))(a1, @"exclusive-open-locks-are-optional");
  v6 = sub_248D9F128(v5, 0);
  *(a1 + 368) = v6;
  if (a2)
  {
    if (a2 == 3)
    {
      v7 = *(a1 + 296);
      v8 = 2;
    }

    else
    {
      if (a2 != 1)
      {
        return 22;
      }

      v7 = *(a1 + 296);
      v8 = 0;
    }

    v9 = sub_248DA227C(v7, v8, v6, 438);
    if (v9 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = sub_248DA227C(*(a1 + 296), 2, v6, 438);
    if (v9 < 0)
    {
      v9 = sub_248DA227C(*(a1 + 296), 0, *(a1 + 368), 438);
      if (v9 < 0)
      {
        a2 = 3;
LABEL_13:
        result = *__error();
        if (result)
        {
          return result;
        }

        goto LABEL_22;
      }

      a2 = 1;
    }

    else
    {
      a2 = 3;
    }
  }

  close(v9);
LABEL_22:

  return sub_248DA2374(a1, a2);
}

const void *sub_248DA218C(void *a1, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"bs-persistentID"))
  {
    if (!a1[39])
    {
      v4 = (*(*a1 + 752))(a1);
      if (v4)
      {
        v5 = v4;
        a1[39] = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"i:%llu on %@", a1[35], v4);
        CFRelease(v5);
      }
    }

    return a1[39];
  }

  else
  {

    return sub_248DA2268(a1, cf1);
  }
}

const void *sub_248DA2268(uint64_t a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(*(a1 + 96), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DA227C(const char *a1, int a2, int a3, uint64_t a4)
{
  if ((a2 & 3) == 2)
  {
    v8 = 36;
  }

  else
  {
    v8 = 20;
  }

  v9 = open(a1, v8 | a2, a4);
  v10 = v9;
  if ((v9 & 0x80000000) != 0)
  {
    v12 = *__error();
    if (v12 == 45 || a3 && v12 == 35)
    {
      v10 = open(a1, a2 & 0xFFFFFFCB, a4);
      if ((v10 & 0x80000000) != 0)
      {
        v13 = *__error();
        *__error() = v13;
      }
    }

    else
    {
      *__error() = v12;
    }
  }

  else
  {
    v11 = fcntl(v9, 3, 0);
    if ((v11 & 0x80000000) == 0)
    {
      fcntl(v10, 4, v11 & 0x7FFFFFFB);
    }
  }

  return v10;
}

uint64_t sub_248DA2380(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 2)
  {
    return 111;
  }

  v6 = off_278F802C8[a1];
  if (!v6[5])
  {
    return 111;
  }

  v11 = 0;
  v12 = 0;
  v13 = (v6 + 12);
  v14 = -1;
  do
  {
    v15 = *(v13 - 11);
    if (v15)
    {
      v16 = v15(a2, a3);
      if (v16 > v12)
      {
        v14 = v11;
        v12 = v16;
      }
    }

    ++v11;
    v17 = *v13;
    v13 += 7;
  }

  while (v17);
  if ((v14 & 0x80000000) != 0)
  {
    return 111;
  }

  v18 = off_278F802C8[a1][7 * v14 + 2];
  if (!v18)
  {
    return 78;
  }

  return (v18)(a2, a3, a4, a5);
}

uint64_t sub_248DA2488(_DWORD *a1)
{
  if ((*(*a1 + 568))(a1))
  {
    goto LABEL_14;
  }

  v2 = a1[80];
  if (v2 != -1)
  {
    goto LABEL_13;
  }

  if ((*(*a1 + 72))(a1))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 192))
  {
    v3 |= 0x80u;
  }

  if (*(a1 + 369))
  {
    v4 = v3 | 0x100;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_248DA227C(*(a1 + 37), v4, *(a1 + 368), 438);
  a1[80] = v5;
  if ((v5 & 0x80000000) == 0)
  {
    sub_248DA25D0();
    v2 = a1[80];
LABEL_13:
    fcntl(v2, 48, 1);
LABEL_14:
    (*(*a1 + 576))(a1);
    return 0;
  }

  a1[80] = -1;
  result = *__error();
  if (!result)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_248DA25E8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 328);
  if (v10)
  {
    v11 = getpid();
    fprintf(v10, "read\t%d\t%016qX\t%08X\n", v11, a2, a3);
    fflush(*(a1 + 328));
  }

  return sub_248DA2680(a1, a2, a3, a4, a5);
}

uint64_t sub_248DA2680(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  v30 = 0;
  pthread_mutex_lock((a1 + 216));
  v10 = 0;
  if (!(*(*a1 + 568))(a1))
  {
    v11 = 9;
    goto LABEL_14;
  }

  v11 = 22;
  if (!a4 || !a5)
  {
LABEL_14:
    pthread_mutex_unlock((a1 + 216));
    if (!a4)
    {
      return v11;
    }

    goto LABEL_18;
  }

  v11 = 29;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v12 = *(a1 + 200);
    if (v12 >= a2 && v12 - a2 >= a3)
    {
      v13 = *(a1 + 208);
      if (v13)
      {
        v29 = 0;
        v14 = sub_248DA2924(v13, a2, a3, &v29, 0);
        if (v14 >= 1)
        {
          v15 = v14;
          v16 = 0;
          v17 = v29;
          v18 = v14;
          v19 = v29;
          do
          {
            memmove((a5 + *v19 - a2), v19[2], v19[1]);
            v16 += v19[1];
            v19 += 3;
            --v18;
          }

          while (v18);
          if (v16 == a3)
          {
            v11 = 0;
            goto LABEL_37;
          }

          v21 = a2;
          while (1)
          {
            v22 = *v17;
            v23 = *v17 - v21;
            if (*v17 > v21)
            {
              v24 = *v17 - v21;
              v25 = (*(*a1 + 712))(a1);
              if (v25)
              {
                v11 = v25;
LABEL_36:
                a3 = v16;
                goto LABEL_37;
              }

              v16 += v23;
              v22 = *v17;
            }

            v21 = v17[1] + v22;
            v17 += 3;
            if (!--v15)
            {
              goto LABEL_29;
            }
          }
        }

        v16 = 0;
        if (!a3)
        {
          goto LABEL_35;
        }

        v21 = a2;
LABEL_29:
        v26 = a3 + a2 >= v21;
        v27 = a3 + a2 - v21;
        if (v27 == 0 || !v26)
        {
LABEL_35:
          v11 = 0;
          goto LABEL_36;
        }

        v11 = (*(*a1 + 712))(a1);
        if (v11)
        {
          v28 = 0;
        }

        else
        {
          v28 = v27;
        }

        a3 = v16 + v28;
LABEL_37:
        v10 = a3;
        goto LABEL_14;
      }

      v11 = (*(*a1 + 688))(a1, a2, a3, &v30, a5);
    }
  }

  pthread_mutex_unlock((a1 + 216));
  v10 = v30;
LABEL_18:
  *a4 = v10;
  return v11;
}

uint64_t sub_248DA2924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, int a5)
{
  v5 = *(a1 + 24);
  if (a4)
  {
    *a4 = v5;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  do
  {
    if (*(v7 + 8))
    {
      ++*(v7 + 12);
    }

    v7 = *(v7 + 72);
  }

  while (v7);
  v8 = 0;
  do
  {
    if (*(v6 + 8))
    {
      v9 = *(v6 + 32);
      if (v9 >= a2)
      {
        v10 = *(v6 + 24);
        if (v10 < a3 + a2)
        {
          if (v10 <= a2)
          {
            v11 = a2;
          }

          else
          {
            v11 = *(v6 + 24);
          }

          if (v9 >= a3 + a2 - 1)
          {
            v9 = a3 + a2 - 1;
          }

          if (a5)
          {
            *(v6 + 16) = 1;
          }

          *(v6 + 12) = 0;
          *v5 = v11;
          v5[1] = v9 - v11 + 1;
          v5[2] = *(v6 + 40) + v11 - v10;
          v8 = (v8 + 1);
          v5 += 3;
        }
      }
    }

    v6 = *(v6 + 72);
  }

  while (v6);
  if (v8)
  {
    qsort(*(a1 + 24), v8, 0x18uLL, sub_248DA7E28);
  }

  return v8;
}

uint64_t sub_248DA2A1C(void *a1, uint64_t a2, size_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = *(a1[26] + 8);
  v14 = 0;
  if (v8 <= a3)
  {
    v9 = a3 / v8 * v8;
    result = (*(*a1 + 688))(a1, a2, v9, &v14, a4);
    if (result)
    {
      return result;
    }

    v5 -= v9;
    v6 += v9;
    v4 += v9;
  }

  if (!v5)
  {
    return 0;
  }

  v11 = sub_248DA2B9C(a1[26]);
  v12 = v11;
  if (!*(v11 + 8) || !*(v11 + 16) || (result = sub_248DAFAF4(v11), !result))
  {
    *(v12 + 8) = 0;
    *(v12 + 12) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v13 = sub_248DA2BEC(a1[26], v6, a1[25] - 1);
    result = (*(*a1 + 688))(a1, v6, v13, &v14, *(v12 + 40));
    if (!result)
    {
      *(v12 + 12) = 0;
      *(v12 + 24) = v6;
      *(v12 + 32) = v6 + v13 - 1;
      *(v12 + 16) = 0;
      *(v12 + 8) = 1;
      memmove(v4, *(v12 + 40), v5);
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DA2B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v3 = -1;
  while (*(v1 + 8))
  {
    v4 = *(v1 + 12);
    if (*(v1 + 16))
    {
      ++v4;
    }

    if (v4 > v3)
    {
      result = v1;
      v3 = v4;
    }

    v1 = *(v1 + 72);
    if (!v1)
    {
      return result;
    }
  }

  return v1;
}

uint64_t sub_248DA2BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a3 - a2 >= v4)
  {
    v5 = a2 + v4 - 1;
  }

  else
  {
    v5 = a3;
  }

  for (; v3; v3 = *(v3 + 72))
  {
    if (*(v3 + 8) && *(v3 + 32) >= a2)
    {
      v6 = *(v3 + 24);
      if (v6 <= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = *(v3 + 24);
      }

      v8 = v7 - 1;
      if (v6 <= v5)
      {
        v5 = v8;
      }
    }
  }

  return v5 - a2 + 1;
}

uint64_t sub_248DA2C48(uint64_t a1, off_t a2, size_t a3, ssize_t *a4, void *__buf)
{
  ++*(a1 + 336);
  v6 = pread(*(a1 + 320), __buf, a3, a2);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t sub_248DA2CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  sub_248DA2CF0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    if (*(v2 + 8))
    {
      if (*(v2 + 16))
      {
        result = sub_248DAFAF4(v2);
        if (result)
        {
          break;
        }
      }
    }

    v2 = *(v2 + 72);
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DA2CF0(uint64_t result, uint64_t a2)
{
  for (i = *(result + 16); i; i = *(i + 72))
  {
    if (*(i + 8))
    {
      if (*(i + 24) >= a2)
      {
        *(i + 8) = 0;
        *(i + 12) = 0;
        *(i + 24) = 0;
        *(i + 32) = 0;
        *(i + 16) = 0;
      }

      else if (*(i + 32) >= a2)
      {
        *(i + 32) = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_248DA2D44(uint64_t a1, const __CFDictionary *a2)
{
  if (sub_248DA0728(a2, @"DIIsPotentiallyValidDiskImage", 0) || (sub_248DA0698(a2, @"fileencoding-class", @"CEncryptedEncoding") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  v6 = sub_248DA0698(a2, @"fileencoding-class", @"CEncryptedEncoding");
  v4 = 1000;
  if (v6 <= 0)
  {
    if (sub_248DA2DE0(a1, 0))
    {
      return 1000;
    }

    else
    {
      return 4294966296;
    }
  }

  return v4;
}

BOOL sub_248DA2DE0(uint64_t a1, CFUUIDRef *a2)
{
  v3 = sub_248DA2E5C(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_248DB31F4(v3, @"uuid");
  v6 = v5 != 0;
  if (a2 && v5)
  {
    *a2 = CFUUIDCreateFromString(*MEMORY[0x277CBECE8], v5);
  }

  CFRelease(v4);
  return v6;
}

__CFDictionary *sub_248DA2E5C(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (a1 && !(*(*a1 + 272))(a1))
  {
    v47 = 0;
    if ((*(*a1 + 296))(a1, &v47) || (v47 & 0x8000000000000000) != 0)
    {
      goto LABEL_5;
    }

    v46 = 0;
    if (v47 >= 0x4FC)
    {
      if ((*(*a1 + 328))(a1, v47 - 1276, 1276, &v46, &v50))
      {
        goto LABEL_5;
      }

      sub_248DA35A8(&v50);
      if (v52[2] == 1701733234 && v52[1] == 1667527521)
      {
        v8 = CFNumberCreate(v2, kCFNumberSInt32Type, v52);
        CFDictionarySetValue(Mutable, @"encrypted-file-version", v8);
        CFRelease(v8);
        v9 = CFUUIDCreateFromUUIDBytes(v2, v50);
        v10 = CFUUIDCreateString(v2, v9);
        CFDictionarySetValue(Mutable, @"uuid", v10);
        if (v10)
        {
          CFRelease(v10);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        v11 = CFNumberCreate(v2, kCFNumberSInt32Type, &v51);
        CFDictionarySetValue(Mutable, @"blocksize", v11);
        if (v11)
        {
          CFRelease(v11);
        }

        goto LABEL_60;
      }
    }

    if (!(*(*a1 + 328))(a1, 0, 72, &v46, v42))
    {
      sub_248DA368C(v42);
      v5 = 1;
      if (v42[0] != 1701733234 || v42[1] != 1667527521)
      {
LABEL_6:
        v4 = 1;
        if (!v5)
        {
          goto LABEL_9;
        }

        goto LABEL_7;
      }

      v12 = CFNumberCreate(v2, kCFNumberSInt32Type, &v43);
      CFDictionarySetValue(Mutable, @"version", v12);
      CFRelease(v12);
      v13 = CFUUIDCreateFromUUIDBytes(v2, v44);
      v14 = CFUUIDCreateString(v2, v13);
      CFDictionarySetValue(Mutable, @"uuid", v14);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v15 = CFNumberCreate(v2, kCFNumberSInt32Type, v45);
      CFDictionarySetValue(Mutable, @"blocksize", v15);
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = *&v45[12];
      v41 = 0;
      if (!(*(*a1 + 328))(a1, 72, 4, &v46, &v41))
      {
        v17 = bswap32(v41);
        v41 = v17;
        if (v17 <= 0x800)
        {
          v18 = 20 * v17 + 4;
          v19 = malloc_type_malloc(v18, 0x100004052888210uLL);
          if (v19)
          {
            v20 = v19;
            if (!(*(*a1 + 328))(a1, 72, v18, &v46, v19))
            {
              sub_248DC4BE0(v20, v18);
              v39 = 0;
              valuePtr = 0;
              v21 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
              v22 = *v20;
              if (v22)
              {
                v23 = 0;
                v24 = 0;
                v25 = 0;
                v26 = v20 + 2;
                v36 = v20;
                do
                {
                  v27 = *(v26 - 1);
                  if (v16 >= *v26)
                  {
                    v16 = *v26;
                  }

                  if (v27 == 2)
                  {
                    v28 = v26[1];
                    v37 = v24 + 1;
                    v38 = v23;
                    v39 = v24 + 1;
                    if (v28 != 564)
                    {
                      goto LABEL_59;
                    }

                    if ((*(*a1 + 328))(a1))
                    {
                      goto LABEL_59;
                    }

                    LODWORD(length[0]) = bswap32(length[0]);
                    v29 = vrev32q_s8(v49);
                    v49 = v29;
                    if (LODWORD(length[0]) > 0x20 || v29.i32[3] > 0x200u)
                    {
                      goto LABEL_59;
                    }

                    v30 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    v31 = CFDataCreate(v2, length + 4, LODWORD(length[0]));
                    CFDictionarySetValue(v30, @"public-key-hash", v31);
                    CFRelease(v31);
                    CFArrayAppendValue(v21, v30);
                    v32 = v30;
                    v20 = v36;
                    CFRelease(v32);
                    v22 = *v36;
                    v24 = v37;
                    v23 = v38;
                  }

                  else if (v27 == 1)
                  {
                    valuePtr = ++v23;
                  }

                  ++v25;
                  v26 = (v26 + 20);
                }

                while (v25 < v22);
              }

              v33 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
              CFDictionarySetValue(Mutable, @"passphrase-count", v33);
              if (v33)
              {
                CFRelease(v33);
              }

              v34 = CFNumberCreate(v2, kCFNumberSInt32Type, &v39);
              CFDictionarySetValue(Mutable, @"private-key-count", v34);
              if (v34)
              {
                CFRelease(v34);
              }

              if (v39)
              {
                CFDictionarySetValue(Mutable, @"private-keys", v21);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              length[0] = (v16 - 76) / 0x14uLL;
              v35 = CFNumberCreate(v2, kCFNumberSInt64Type, length);
              CFDictionarySetValue(Mutable, @"max-key-count", v35);
              if (v35)
              {
                CFRelease(v35);
              }
            }

LABEL_59:
            free(v20);
          }
        }
      }

LABEL_60:
      v5 = 0;
      goto LABEL_6;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  v4 = 0;
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

LABEL_9:
  if (v4)
  {
    (*(*a1 + 280))(a1, 0);
  }

  v6 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t sub_248DA3588(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(a1 + 200);
  return result;
}

uint64_t sub_248DA35A8(uint64_t a1)
{
  v1 = vrev32q_s8(*(a1 + 16));
  v2 = vrev32q_s8(*(a1 + 32));
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *v1.i8 = vrev32_s8(*(a1 + 48));
  *(a1 + 48) = v1.i64[0];
  v3 = vrev32q_s8(*(a1 + 88));
  *(a1 + 88) = v3;
  v4 = bswap32(*(a1 + 136));
  *(a1 + 136) = v4;
  *(a1 + 396) = vrev32_s8(*(a1 + 396));
  v5 = bswap32(*(a1 + 436));
  *(a1 + 436) = v5;
  *(a1 + 696) = vrev32_s8(*(a1 + 696));
  v6 = bswap32(*(a1 + 736));
  *(a1 + 736) = v6;
  v7 = bswap32(*(a1 + 996));
  *(a1 + 996) = v7;
  *(a1 + 1256) = bswap64(*(a1 + 1256));
  *(a1 + 1264) = vrev32_s8(*(a1 + 1264));
  v1.i64[0] = vextq_s8(vtrn2q_s32(v3, v1), v1, 4uLL).u64[0];
  v1.i64[1] = __PAIR64__(v5, v4);
  *(a1 + 1272) = bswap32(*(a1 + 1272));
  v8 = vmaxv_u16(vmovn_s32(vcgtq_u32(v1, xmmword_248DDE100)));
  v10 = v6 > 0x100 || v7 > 0x100;
  if ((v10 | v8))
  {
    return 108;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DA368C(uint64_t a1)
{
  v1 = vrev32q_s8(*(a1 + 16));
  *a1 = vrev32q_s8(*a1);
  *(a1 + 16) = v1;
  v2 = bswap32(*(a1 + 32));
  *(a1 + 32) = v2;
  *(a1 + 52) = bswap32(*(a1 + 52));
  *(a1 + 56) = vrev64q_s8(*(a1 + 56));
  if (v2 > 0x400 || v1.i32[2] > 0x400u)
  {
    return 108;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DA36DC(uint64_t a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"fileencoding-class", @"CUDIFEncoding") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"fileencoding-class", @"CUDIFEncoding") > 0)
  {
    return 1000;
  }

  v5 = sub_248DA0728(theDict, @"expandable", 0);
  v4 = 4294966296;
  if (!v5)
  {
    if (sub_248DA3790(a1, &v7))
    {
      return 900;
    }

    else
    {
      return 4294966296;
    }
  }

  return v4;
}

uint64_t sub_248DA3790(uint64_t a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_23;
  }

  v11 = 0;
  v4 = 0;
  if (!(*(*a1 + 296))(a1, &v11) && v11 >= 512)
  {
    sub_248DCA174();
    if (!(*(v5 + 272))(a1))
    {
      if (sub_248DA392C(a1, &v12, v11 - 512))
      {
        v4 = 0;
        goto LABEL_21;
      }

      if (v12 == 1802464377 && v13 == 4)
      {
        v4 = 1;
        if (!a2)
        {
LABEL_21:
          sub_248DCA174();
          (*(v8 + 280))(a1, 0);
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 0;
        if (sub_248DA392C(a1, &v12, 0))
        {
          goto LABEL_21;
        }

        if (v12 != 1802464377 || v13 != 4)
        {
          goto LABEL_21;
        }

        if (!a2)
        {
          goto LABEL_20;
        }

        LOBYTE(v4) = 0;
      }

      *a2 = v4;
LABEL_20:
      v4 = 1;
      goto LABEL_21;
    }

LABEL_23:
    v4 = 0;
  }

LABEL_22:
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_248DA392C(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 272))(a1);
  if (!v6)
  {
    v9 = 0;
    v6 = (*(*a1 + 328))(a1, a3, 512, &v9, __src);
    (*(*a1 + 280))(a1, 0);
    if (!v6)
    {
      sub_248DA3A74(__src);
      memcpy(a2, __src, 0x200uLL);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

int8x8_t sub_248DA3A74(uint64_t a1)
{
  v1 = vrev64q_s8(*(a1 + 16));
  *a1 = vrev32q_s8(*a1);
  *(a1 + 16) = v1;
  *(a1 + 32) = vrev64q_s8(*(a1 + 32));
  *(a1 + 48) = bswap64(*(a1 + 48));
  *(a1 + 56) = vrev32_s8(*(a1 + 56));
  *(a1 + 80) = vrev32_s8(*(a1 + 80));
  *(a1 + 216) = vrev64q_s8(*(a1 + 216));
  *(a1 + 296) = vrev64q_s8(*(a1 + 296));
  result = vrev32_s8(*(a1 + 352));
  *(a1 + 352) = result;
  *(a1 + 488) = bswap32(*(a1 + 488));
  *(a1 + 492) = bswap64(*(a1 + 492));
  return result;
}

uint64_t sub_248DA3AF8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  if (!a1)
  {
    return 22;
  }

  v7 = 0;
  sub_248DA1560(a2);
  if (sub_248DA3790(a1, &v7))
  {
    operator new();
  }

  return 111;
}

char *sub_248DA3C3C(char *a1)
{
  sub_248DA3CC0(a1);
  *v2 = &unk_285BCBC08;
  *(v2 + 779) = 0;
  bzero((v2 + 232), 0x220uLL);
  sub_248DA0FD0(a1, @"thread-safe", *MEMORY[0x277CBED28]);
  return a1;
}

void sub_248DA3CC0(char *a1)
{
  sub_248DA3CFC(a1);
  *v1 = &unk_285BCB5B0;
  v1[27] = 0;
  v1[28] = 0;
  v1[26] = 0;
}

void sub_248DA3CFC(char *a1)
{
  sub_248DA0C58(a1);
  *v1 = &unk_285BCB2C8;
  v1[25] = 0;
}

uint64_t sub_248DA3D34(_DWORD *a1, uint64_t a2)
{
  v4 = (*(*a2 + 80))(a2, 1);
  if (v4)
  {
    return v4;
  }

  v23 = 0;
  sub_248DCA174();
  v4 = (*(v5 + 296))(a2, &v23);
  if (v4)
  {
    return v4;
  }

  sub_248DCA174();
  v4 = (*(v6 + 272))(a2);
  if (v4)
  {
    return v4;
  }

  v7 = sub_248DA392C(a2, a1 + 58, v23 - 512);
  if (v7)
  {
    goto LABEL_23;
  }

  if (a1[58] == 1802464377 && a1[59] == 4)
  {
    v8 = 0;
    v9 = 1;
LABEL_12:
    *(a1 + 776) = v9;
    *(a1 + 777) = v8;
    v11 = *(a1 + 32);
    v10 = *(a1 + 33);
    *(a1 + 94) = v10;
    *(a1 + 93) = v11;
    sub_248DA4010(a1, v10);
    v12 = a1[61];
    *(a1 + 778) = v12 & 1;
    if (v12)
    {
      v15 = *(a1 + 34);
      v13 = *(a1 + 35);
      *(a1 + 96) = v13;
      *(a1 + 95) = v15;
    }

    else
    {
      v13 = 0;
      *(a1 + 190) = 0u;
    }

    sub_248DA4018(a1, v13);
    if (a1[72] >= 2u)
    {
      v16 = 1684371059;
    }

    else
    {
      v16 = 1684371049;
    }

    sub_248DA4020(a1, v16);
    sub_248DCA174();
    v18 = (*(v17 + 192))(a2);
    (*(*a1 + 520))(a1, v18);
    sub_248DCA174();
    v20 = (*(v19 + 208))(a2);
    (*(*a1 + 528))(a1, v20);
    sub_248DA4038(a1, a2);
    v14 = 0;
    goto LABEL_20;
  }

  v7 = sub_248DA392C(a2, a1 + 58, 0);
  if (v7)
  {
LABEL_23:
    v14 = v7;
  }

  else
  {
    if (a1[58] == 1802464377 && a1[59] == 4)
    {
      v9 = 0;
      v8 = 1;
      goto LABEL_12;
    }

    v14 = 108;
  }

LABEL_20:
  sub_248DCA174();
  (*(v21 + 280))(a2, 0);
  return v14;
}

uint64_t sub_248DA4038(uint64_t a1, uint64_t a2)
{
  DIDiskImageObjectRetain_0(a2);
  sub_248DA1714(*(a1 + 200));
  *(a1 + 200) = a2;
  return 0;
}

uint64_t sub_248DA4074(uint64_t a1, unsigned int a2)
{
  v3 = 1;
  if (a2 < 2)
  {
    goto LABEL_10;
  }

  if (a2 != 3)
  {
    if (a2 != 1003)
    {
      return 22;
    }

    v4 = (*(*a1 + 568))(a1);
    if (v4)
    {
      (*(*a1 + 280))(a1, 0);
    }

    v5 = (*(*a1 + 496))(a1);
    v3 = (*(*v5 + 80))(v5, 3);
    if (v4)
    {
      (*(*a1 + 272))(a1);
    }

    if (!v3)
    {
      v3 = 1003;
LABEL_10:
      (*(*a1 + 560))(a1, v3);
      return 0;
    }
  }

  return v3;
}

__n128 sub_248DA4230(uint64_t a1, __n128 *a2)
{
  result = *(a1 + 296);
  *a2 = result;
  return result;
}

uint64_t sub_248DA4250(uint64_t a1, const __CFDictionary *a2, char **a3, CFTypeRef *a4)
{
  appendedString = 0;
  v14 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a3)
  {
    return 22;
  }

  if (!sub_248D9F090())
  {
    return 120;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    return 999;
  }

  v9 = Mutable;
  v10 = sub_248DA4378(a1, a2, &v14, &appendedString);
  if (appendedString)
  {
    CFStringAppend(v9, appendedString);
  }

  v11 = v14;
  if (v10 && v14)
  {
    DIDiskImageObjectRelease(v14);
    v11 = 0;
    v14 = 0;
  }

  if (appendedString)
  {
    CFRelease(appendedString);
    appendedString = 0;
    v11 = v14;
  }

  *a3 = v11;
  if (a4)
  {
    *a4 = v9;
    if (!CFStringGetLength(v9) && *a4)
    {
      CFRelease(*a4);
      *a4 = 0;
    }
  }

  else
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t sub_248DA4378(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  if (!off_281B89FE0)
  {
    return 111;
  }

  v8 = 0;
  v9 = 0;
  v10 = &off_281B8A038;
  v11 = -1;
  do
  {
    v12 = *(v10 - 19);
    if (v12)
    {
      v13 = v12(a1, a2);
      if (v13 > v8)
      {
        v11 = v9;
        v8 = v13;
      }
    }

    ++v9;
    v14 = *v10;
    v10 += 11;
  }

  while (v14);
  if ((v11 & 0x80000000) != 0)
  {
    return 111;
  }

  v15 = &qword_281B89F98[11 * v11];
  if (CFStringCompare(v15[9], @"CNotSupportedDiskImage", 0))
  {
    if (a2)
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(a2, @"udif-chunk-size", &value))
      {
        v19 = 0;
        v16 = CFGetTypeID(value);
        if (v16 == CFNumberGetTypeID() && CFNumberGetValue(value, kCFNumberSInt64Type, &v19) && (v19 - 2097153) < 0xFFFFFFFFFFE001FFLL)
        {
          return 22;
        }
      }
    }

    v18 = v15[2];
    if (v18)
    {
      return v18(a1, a2, a3, a4);
    }

    return 111;
  }

  return 124;
}

uint64_t sub_248DA44D8(uint64_t a1, uint64_t a2)
{
  if (!off_281B89FE0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  v6 = &off_281B8A038;
  v7 = 0xFFFFFFFFLL;
  do
  {
    v8 = *(v6 - 19);
    if (v8)
    {
      v9 = v8(a1, a2);
      if (v9 <= v4)
      {
        v7 = v7;
      }

      else
      {
        v7 = v5;
      }

      if (v9 > v4)
      {
        v4 = v9;
      }
    }

    ++v5;
    v10 = *v6;
    v6 += 11;
  }

  while (v10);
  return v7;
}

uint64_t sub_248DA4564(char **a1, CFDictionaryRef theDict)
{
  v5 = -1000;
  if (sub_248DA0698(theDict, @"diskimage-class", @"CUDIFDiskImage") > 0 || sub_248DA0698(theDict, @"diskimage-class", @"CRestrictedUDIFDiskImage") > 0)
  {
    return 9999;
  }

  if ((sub_248DA0698(theDict, @"diskimage-class", @"CUDIFDiskImage") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  sub_248DA4614(a1, &v5);
  return v5;
}

uint64_t sub_248DA4614(char **a1, int *a2)
{
  if (a1 && (v3 = **a1, __dynamic_cast(a1, &unk_285BC9730, &unk_285BCBF28, 0)))
  {
    result = 1430538566;
    v5 = 1000;
  }

  else
  {
    result = 0;
    v5 = -1000;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_248DA4698(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 208))();
  }

  return result;
}

uint64_t sub_248DA46C8(uint64_t *a1, CFDictionaryRef theDict)
{
  v4 = 4294967196;
  v7 = -100;
  if ((sub_248DA0698(theDict, @"diskimage-class", @"CSparseDiskImage") & 0x80000000) != 0)
  {
    return v4;
  }

  if (sub_248DA0698(theDict, @"diskimage-class", @"CSparseDiskImage") > 0)
  {
    return 9999;
  }

  v6 = sub_248DA482C(a1, &v7);
  v4 = v7;
  if (v6 || (v7 & 0x80000000) != 0)
  {
    return v4;
  }

  return sub_248DA48A4(a1);
}

uint64_t sub_248DA4788(uint64_t result)
{
  v1 = *(result + 200);
  if (v1)
  {
    v2 = *v1;
    v3 = **v1;
    if (__dynamic_cast(v1, &unk_285BC9730, &unk_285BCB588, 0))
    {
      v4 = *(v2 + 61);

      return v4(v1);
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t sub_248DA482C(uint64_t a1, _DWORD *a2)
{
  result = (*(*a1 + 208))(a1);
  *a2 = 0;
  if (result)
  {
    if (CFStringCompare(result, @"sparseimage", 1uLL))
    {
      return 0;
    }

    else
    {
      *a2 = 1000;
      return 1936749171;
    }
  }

  return result;
}

uint64_t sub_248DA48A4(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 && !(*(*a1 + 272))(a1))
  {
    if (!sub_248DA4A90(a1, &v5, 64) && v5 == 1936749171 && v7 && (v6 - 1) <= 2)
    {
      if (v6 == 3)
      {
        if (v9)
        {
LABEL_11:
          v2 = 1000;
LABEL_14:
          (*(*a1 + 280))(a1, 0);
          goto LABEL_4;
        }
      }

      else if (v8)
      {
        goto LABEL_11;
      }
    }

    v2 = 0;
    goto LABEL_14;
  }

  v2 = 0;
LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_248DA49CC(void *a1)
{
  if (((*(*a1 + 568))(a1) & 1) != 0 || (v2 = a1[25]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (*(*v2 + 272))(v2);
  }

  (*(*a1 + 576))(a1);
  return v3;
}

uint64_t sub_248DA4A90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v5 = sub_248DC7A7C(a1);
  v7 = (*(v6 + 328))(v5, 0);
  if (!v7)
  {
    sub_248DA4C18(a2, (a3 + 0x3FFFFFFC0) >> 2);
  }

  return v7;
}

uint64_t sub_248DA4B1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 22;
  }

  v7 = a1[94];
  if (v7 < a2 || a3 + a2 > v7)
  {
    return 29;
  }

  v10 = *(*(*(*a1 + 496))(a1) + 328);
  v11 = a1[93] + a2;

  return v10();
}

uint64_t sub_248DA4C18(uint64_t result, unsigned int a2)
{
  *result = vrev32q_s8(*result);
  *(result + 16) = bswap32(*(result + 16));
  *(result + 20) = vrev64q_s8(*(result + 20));
  if (a2)
  {
    v2 = (result + 64);
    v3 = a2;
    do
    {
      *v2 = bswap32(*v2);
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_248DA4C60(void *a1)
{
  (*(*a1 + 584))(a1);
  if (((*(*a1 + 568))(a1) & 1) == 0)
  {
    v2 = a1[25];
    if (v2)
    {
      (*(*v2 + 280))(v2, 0);
    }
  }

  return 0;
}

uint64_t sub_248DA4D28(char **a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"diskimage-class", @"CRawDiskImage") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"diskimage-class", @"CRawDiskImage") > 0)
  {
    return 1000;
  }

  result = sub_248DA4DF0(a1);
  v6 = result;
  if ((result & 0x80000000) == 0)
  {
    sub_248DB87E8(a1, &v6);
    result = v6;
    if ((v6 & 0x80000000) == 0)
    {
      v5 = sub_248DB8CC8(a1, &v6);
      result = v6;
      if (!v5 && (v6 & 0x80000000) == 0)
      {
        sub_248DB8E00(a1, &v6);
        return v6;
      }
    }
  }

  return result;
}

uint64_t sub_248DA4DF0(uint64_t a1)
{
  valuePtr = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = 0;
  if ((*(*a1 + 296))(a1, &v17))
  {
    goto LABEL_2;
  }

  v4 = 4294967196;
  if (v17 && (v17 & 0x1FF) == 0)
  {
    CFDictionarySetValue(Mutable, @"writeable", *MEMORY[0x277CBED10]);
    if (sub_248DB8454(a1, Mutable, &v14, 0))
    {
      v3 = 0;
    }

    else
    {
      v6 = sub_248DB36D8();
      v3 = v6;
      if (v6)
      {
        Value = CFDictionaryGetValue(v6, @"partitions");
        if (Value)
        {
          v8 = Value;
          Count = CFArrayGetCount(Value);
          ValueAtIndex = CFArrayGetValueAtIndex(v8, Count - 1);
          if (!ValueAtIndex || (v11 = ValueAtIndex, (v12 = sub_248DAE894(ValueAtIndex, @"partition-start")) == 0) || !CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr) || (v13 = sub_248DAE894(v11, @"partition-length")) == 0)
          {
LABEL_2:
            v4 = 4294967196;
            goto LABEL_3;
          }

          v4 = 4294967196;
          if (CFNumberGetValue(v13, kCFNumberSInt64Type, &v15))
          {
            if (v17 >= (v15 + valuePtr) << 9)
            {
              v4 = 0;
            }

            else
            {
              v4 = 4294967196;
            }
          }
        }
      }
    }
  }

LABEL_3:
  if (v14)
  {
    DIDiskImageObjectRelease(v14);
    v14 = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v4;
}

uint64_t sub_248DA4FBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 216);
  }

  return 0;
}

uint64_t sub_248DA4FD0(uint64_t a1, CFDictionaryRef theDict, void *a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v6 = 22;
  if (a1 && a3)
  {
    if (sub_248DA0698(theDict, @"diskimage-class", @"CWOUDIFDiskImage") <= 0)
    {
      if (sub_248DA0698(theDict, @"diskimage-class", @"CRestrictedUDIFDiskImage") > 0 || sub_248DA0728(theDict, @"restricted-only", 0))
      {
        (*(*a1 + 704))(a1, v9);
        if (v10 >= 2)
        {
          operator new();
        }
      }

      operator new();
    }

    v6 = 78;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_248DA5224(uint64_t a1)
{
  v2 = sub_248DA52FC(a1);
  *v2 = &unk_285BCAD00;
  pthread_rwlock_init((v2 + 160), 0);
  (*(*a1 + 32))(a1, @"thread-safe", *MEMORY[0x277CBED28]);
  bzero((a1 + 360), 0x22EuLL);
  *(a1 + 920) = -1;
  *(a1 + 928) = 0u;
  pthread_mutex_init((a1 + 944), 0);
  *(a1 + 1028) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0;
  return a1;
}

char *sub_248DA52FC(char *a1)
{
  result = sub_248DA0CB0(a1);
  *result = &unk_285BCA220;
  *(result + 17) = 0;
  *(result + 36) = 0;
  result[148] = 0;
  *(result + 19) = 0;
  *(result + 14) = 0;
  *(result + 15) = 0;
  *(result + 13) = 0;
  result[128] = 0;
  return result;
}

BOOL sub_248DA534C(uint64_t a1, __CFString *theString1, const __CFString *a3)
{
  if (CFStringCompare(theString1, @"cache enabled", 0))
  {

    return sub_248DA5500(a1, theString1, a3);
  }

  valuePtr = 0;
  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(a3);
      if (Value)
      {
        v9 = 5;
      }

      else
      {
        v9 = 0;
      }

      valuePtr = v9;
      if (Value)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        return 0;
      }

      CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
      if (valuePtr)
      {
LABEL_11:
        v10 = *(a1 + 368);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        operator new();
      }
    }
  }

  v12 = *(a1 + 368);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(a1 + 368) = 0;
  return sub_248DA0FD0(a1, theString1, a3);
}

BOOL sub_248DA5500(uint64_t a1, __CFString *theString1, const __CFString *a3)
{
  if (!theString1 || CFStringCompare(theString1, @"cache enabled", 0) == kCFCompareEqualTo)
  {
    return 0;
  }

  if (CFStringCompare(theString1, @"on IO thread", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 != CFBooleanGetTypeID())
      {
        return 0;
      }

      v7 = CFBooleanGetValue(a3) != 0;
    }

    else
    {
      v7 = 0;
    }

    sub_248DCA174();
    v9 = (*(v8 + 296))(a1);
    if (!v9)
    {
      return 0;
    }

    v10 = sub_248DC7A7C(v9);
    if (v7 != (*(v11 + 664))(v10, v7))
    {
      return 0;
    }
  }

  if (CFEqual(theString1, @"di-valid-cached-checksum"))
  {
    sub_248DCA174();
    v13 = (*(v12 + 296))(a1);
    if (v13)
    {
      v14 = sub_248DC7A7C(v13);
      v16 = (*(v15 + 488))(v14);
      if (v16)
      {
        v17 = v16;
        v18 = sub_248DC7A7C(v16);
        v20 = (*(v19 + 128))(v18, @"com.apple.diskimages.recentcksum", 0);
        if (!a3 || !sub_248D9F128(a3, 0))
        {
          return v20 == 0;
        }

        sub_248DCA174();
        v22 = (*(v21 + 544))(a1);
        if (v22)
        {
          v23 = v22;
          ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x277CBECE8], v22, 0x8000100u, 0);
          if (ExternalRepresentation)
          {
            v25 = ExternalRepresentation;
            v26 = (*(*v17 + 128))(v17, @"com.apple.diskimages.recentcksum", ExternalRepresentation) == 0;
            CFRelease(v23);
            CFRelease(v25);
            return v26;
          }

          CFRelease(v23);
        }
      }
    }

    return 0;
  }

  return sub_248DA0FD0(a1, theString1, a3);
}

uint64_t sub_248DA57B0(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t sub_248DA57FC(uint64_t *a1, char **a2)
{
  v28 = 0;
  if (a2)
  {
    *a2 = 0;
    v4 = (*(*a1 + 616))(a1);
    v5 = *a1;
    if (v4)
    {
      Code = 0;
      v28 = (*(v5 + 640))(a1);
      if (v28)
      {
LABEL_4:
        (*(*a1 + 624))(a1);
        v7 = v28;
LABEL_51:
        *a2 = v7;
        return Code;
      }

LABEL_50:
      v7 = 0;
      goto LABEL_51;
    }

    if ((*(v5 + 592))(a1))
    {
      Code = 4294967242;
      goto LABEL_49;
    }

    if (*(a1 + 778) != 1)
    {
      v23 = (*(*a1 + 496))(a1);
      Code = (*(*v23 + 344))(v23, &v28);
      if (!Code)
      {
        (*(*a1 + 648))(a1, v28);
      }

      goto LABEL_49;
    }

    v8 = a1[57];
    if (!v8)
    {
      if (!a1[95] || !a1[96])
      {
        Code = 4294967257;
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v26 = 0;
    error = 0;
    v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
    if (!v9)
    {
      v15 = 0;
      v17 = 0;
      v20 = 0;
      Code = *__error();
      goto LABEL_32;
    }

    v10 = (*(*a1 + 496))(a1);
    v11 = (*(*v10 + 272))(v10);
    if (v11)
    {
      Code = v11;
    }

    else
    {
      v12 = (*(*a1 + 496))(a1);
      Code = (*(*v12 + 328))(v12, a1[56], a1[57], &v26, v9);
      v13 = *(*(*a1 + 496))(a1);
      (*(v13 + 280))();
      if (!Code)
      {
        v9[v26] = 0;
        v14 = *MEMORY[0x277CBECE8];
        v15 = CFDataCreate(*MEMORY[0x277CBECE8], v9, v26 + 1);
        if (!v15)
        {
          v17 = 0;
          v20 = 0;
          goto LABEL_57;
        }

        format = 0;
        v16 = CFPropertyListCreateWithData(v14, v15, 0, &format, &error);
        if (v16)
        {
          v17 = v16;
          *(a1 + 780) = format == kCFPropertyListBinaryFormat_v1_0;
          v18 = CFGetTypeID(v16);
          if (v18 != CFDictionaryGetTypeID())
          {
            v20 = 0;
            Code = 108;
            goto LABEL_32;
          }

          Value = CFDictionaryGetValue(v17, @"resource-fork");
          v20 = Value;
          if (Value)
          {
            CFRetain(Value);
            v21 = sub_248DA5DA4(v20, 1, &v28);
            if (v21)
            {
              Code = v21;
            }

            else
            {
              v22 = (*(*v28 + 48))(v28);
              Code = v22;
              if (v22 && v28)
              {
                DIDiskImageObjectRelease(v28);
                v28 = 0;
              }

              else if (!v22)
              {
                (*(*a1 + 648))(a1, v28);
                sub_248DA1714(v28);
                *(a1 + 779) = 1;
              }
            }

LABEL_32:
            if (error)
            {
              CFRelease(error);
              error = 0;
            }

            if (!v9)
            {
LABEL_38:
              if (v15)
              {
                CFRelease(v15);
              }

              if (v17)
              {
                CFRelease(v17);
              }

              if (v20)
              {
                CFRelease(v20);
              }

              if (Code && a1[95] && a1[96])
              {
                fprintf(*MEMORY[0x277D85DF8], "CUDIFEncoding::openResourceFile XML failed (contain non-XML embedded rsrc fork) - %d\n", Code);
LABEL_48:
                Code = 78;
              }

LABEL_49:
              if (v28)
              {
                goto LABEL_4;
              }

              goto LABEL_50;
            }

LABEL_37:
            free(v9);
            goto LABEL_38;
          }

LABEL_57:
          Code = 4294962336;
          goto LABEL_32;
        }

        if (!error)
        {
          v17 = 0;
          v20 = 0;
          Code = 4294962336;
          goto LABEL_37;
        }

        Code = CFErrorGetCode(error);
LABEL_28:
        v17 = 0;
        v20 = 0;
        goto LABEL_32;
      }
    }

    v15 = 0;
    goto LABEL_28;
  }

  return 22;
}

uint64_t sub_248DA5DA4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    operator new();
  }

  return 22;
}

char *sub_248DA5E38(char *a1, CFMutableDictionaryRef Mutable, int a3)
{
  v6 = sub_248DA5F08(a1);
  *v6 = &unk_285BCC0C8;
  *(v6 + 13) = 0;
  v6[114] = a3 == 3;
  *(v6 + 56) = 0;
  v6[115] = 1;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  sub_248DA5F3C(a1, Mutable);
  CFRelease(Mutable);
  return a1;
}

char *sub_248DA5F08(char *a1)
{
  result = sub_248DA0CB0(a1);
  *result = &unk_285BCBF50;
  return result;
}

void sub_248DA5F3C(uint64_t a1, CFPropertyListRef propertyList)
{
  if (*(a1 + 104))
  {
    sub_248DA785C(a1);
    v4 = *(a1 + 104);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 104) = 0;
    }
  }

  if (propertyList)
  {
    *(a1 + 104) = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], propertyList, 2uLL);
  }
}

uint64_t sub_248DA5FA4(uint64_t a1)
{
  sub_248DA5FD0(a1);
  *(a1 + 112) = 0;
  return 0;
}

void sub_248DA5FD0(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    Count = CFDictionaryGetCount(v1);
    if (Count)
    {
      v3 = Count;
      v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      if (v4)
      {
        v5 = v4;
        v6 = malloc_type_calloc(v3, 8uLL, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(*(a1 + 104), v5, v6);
        if (v3 >= 1)
        {
          for (i = 0; i != v3; ++i)
          {
            v8 = v6[i];
            if (v8)
            {
              v9 = CFArrayGetCount(v6[i]);
              if (v9 >= 1)
              {
                v10 = v9;
                for (j = 0; j != v10; ++j)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v8, j);
                  if (ValueAtIndex)
                  {
                    v13 = ValueAtIndex;
                    v17 = 0;
                    if (sub_248DA6144(ValueAtIndex, @"Attributes", &v17))
                    {
                      if (sub_248DA6144(v13, @"ID", &v17 + 1) && (v17 & 4) != 0)
                      {
                        v16 = 0;
                        v14 = sub_248DA6EE8(v5[i]);
                        sub_248DA6954(a1, v14, v13, &v16);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        free(v5);
        if (v6)
        {
          free(v6);
        }
      }
    }
  }
}

uint64_t sub_248DA6144(const __CFDictionary *a1, const void *a2, _WORD *a3)
{
  valuePtr = 0;
  if (!a1 || !a3)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    goto LABEL_13;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    v11 = CFGetTypeID(v5);
    if (v11 == CFNumberGetTypeID())
    {
      v12 = CFNumberGetValue(v5, kCFNumberSInt16Type, &valuePtr);
      v13 = valuePtr;
      if (v12)
      {
        *a3 = valuePtr;
        return 1;
      }

LABEL_14:
      v10 = 0;
      *a3 = v13;
      return v10;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v15 = 0;
  v7 = sub_248DA081C(v5, 0x600u);
  if (!v7)
  {
LABEL_17:
    v10 = 0;
    *a3 = 0;
    return v10;
  }

  v8 = v7;
  if (!*v7)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v9 = strtol(v7, &v15, 0);
  if (*v15)
  {
LABEL_20:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:
  *a3 = v9;
  free(v8);
  return v10;
}

char *sub_248DA6260(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    DIDiskImageObjectRetain_0(a2);
  }

  result = *(a1 + 184);
  if (result)
  {
    result = DIDiskImageObjectRelease(result);
  }

  *(a1 + 184) = a2;
  return result;
}

uint64_t sub_248DA62B0(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v21 = 0;
  result = sub_248DA6610(a1, a2, &v22 + 1, &v22);
  if (!result)
  {
    v5 = v22;
    v6 = HIWORD(v22);
    v7 = v22 - HIWORD(v22) + 1;
    *(a1 + 912) = v7;
    *(a1 + 914) = v6;
    *(a1 + 916) = v5;
    v8 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    *(a1 + 928) = v8;
    if (v8 && (bzero(v8, 8 * *(a1 + 912)), v9 = *MEMORY[0x277CBECE8], Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]), (*(a1 + 936) = Mutable) != 0))
    {
      if (*(a1 + 912) >= 1)
      {
        v11 = 0;
        v12 = HIWORD(v22);
        while (1)
        {
          bzero(pStr, 0x100uLL);
          result = (*(*a2 + 120))(a2, 1651272568, v12, &v21);
          if (result)
          {
            goto LABEL_32;
          }

          if (**v21 != 1752394093 || *(*v21 + 4) != 0x1000000)
          {
LABEL_26:
            result = 108;
            goto LABEL_32;
          }

          result = (*(*a2 + 320))(a2);
          if (result)
          {
            goto LABEL_32;
          }

          result = (*(*a2 + 248))(a2, v21);
          if (result)
          {
            goto LABEL_32;
          }

          *(*(a1 + 928) + 8 * v11) = v21;
          v14 = CFStringCreateWithPascalString(v9, pStr, 0);
          if (v14)
          {
            v15 = v14;
            CFArrayAppendValue(*(a1 + 936), v14);
          }

          else
          {
            v18 = DIGetBundleRef();
            if (v12 == -1)
            {
              v15 = sub_248DD4D90(v18, @"Driver Descriptor Map", @"Driver Descriptor Map");
            }

            else
            {
              v19 = sub_248DD4D90(v18, @"partition %d", @"partition %d");
              v15 = CFStringCreateWithFormat(v9, 0, v19, v12);
              CFRelease(v19);
            }

            CFArrayAppendValue(*(a1 + 936), v15);
            if (!v15)
            {
              goto LABEL_20;
            }
          }

          CFRelease(v15);
LABEL_20:
          nullsub_4(v21);
          v16 = *v21;
          v17 = sub_248DD4EEC(v21);
          if (sub_248DA7058(v16, v17))
          {
            goto LABEL_26;
          }

          ++v12;
          if (++v11 >= *(a1 + 912))
          {
            if (*(a1 + 912) != 3)
            {
              break;
            }

            if (*(**(*(a1 + 928) + 8) + 16) + *(**(*(a1 + 928) + 8) + 8) <= *(**(*(a1 + 928) + 16) + 8))
            {
              result = 0;
            }

            else
            {
              result = 108;
            }

            goto LABEL_32;
          }
        }
      }

      result = 0;
    }

    else
    {
      result = 12;
    }
  }

LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DA6610(uint64_t a1, uint64_t a2, __int16 *a3, _WORD *a4)
{
  v14 = 0;
  if (a3 && a4)
  {
    if (a2)
    {
      result = (*(*a2 + 96))(a2, 1651272568, &v14);
      if (result)
      {
        v8 = 0;
        v13 = 0;
      }

      else
      {
        v8 = v14;
        if (v14)
        {
          v9 = *(a1 + 880);
          v8 = v14 - 2;
          if (v9)
          {
            v10 = 108;
          }

          else
          {
            v10 = 0;
          }

          if (v9)
          {
            v11 = 0;
          }

          else
          {
            v11 = v14 - 1;
          }

          if (v9 == 1)
          {
            v10 = 0;
            v12 = -1;
          }

          else
          {
            v8 = v11;
            v12 = 0;
          }

          if (v9 == 2)
          {
            result = 0;
          }

          else
          {
            result = v10;
          }

          if (v9 == 2)
          {
            v8 = v14 - 1;
            v13 = 0;
          }

          else
          {
            v13 = v12;
          }
        }

        else
        {
          v13 = 0;
          result = 108;
        }
      }
    }

    else
    {
      v8 = 0;
      v13 = 0;
      result = 999;
    }

    goto LABEL_21;
  }

  v8 = 0;
  v13 = 0;
  result = 22;
  if (a3)
  {
LABEL_21:
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_248DA6724(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (!a3)
  {
    return 4294967246;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    result = sub_248DA6784(a1, a2);
    if (result)
    {
      LOWORD(v4) = CFArrayGetCount(result);
      result = 0;
    }

    else
    {
      LOWORD(v4) = 0;
    }
  }

  else
  {
    result = 4294967097;
  }

  *a3 = v4;
  return result;
}

const void *sub_248DA6784(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 104))
  {
    return 0;
  }

  v3 = sub_248DA67E0(a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(*(a1 + 104), v3);
  CFRelease(v4);
  return Value;
}

uint64_t sub_248DA6824(uint64_t a1, unsigned int a2, __int16 a3, void *a4)
{
  if (!a4)
  {
    return 4294967246;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = sub_248DA68A0(a1, a2, a3);
    if (v6)
    {
      result = sub_248DD1CFC(v6, v7, v8, v9, v10, v11, v12, v13, v15, 0);
      v5 = *v16;
    }

    else
    {
      v5 = 0;
      result = 4294967104;
    }
  }

  else
  {
    result = 4294967097;
  }

  *a4 = v5;
  return result;
}

const __CFDictionary *sub_248DA68A0(uint64_t a1, unsigned int a2, __int16 a3)
{
  v12 = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  v4 = sub_248DA6784(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      if (sub_248DA6144(ValueAtIndex, @"ID", &v12))
      {
        if (v12 == a3)
        {
          break;
        }
      }
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_248DA6954(uint64_t a1, int a2, CFDictionaryRef theDict, void **a4)
{
  v19 = 0;
  if (!theDict || !a4)
  {
    v15 = 4294967246;
    if (!a4)
    {
      return v15;
    }

    goto LABEL_15;
  }

  if (sub_248DA6B58(a1, theDict, &v19))
  {
    if (*v19)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v19 = sub_248DD4E18();
  v7 = sub_248DD4D98();
  v8 = v19;
  if (v7)
  {
    v15 = v7;
LABEL_24:
    if (v15 && v8)
    {
      sub_248DD4E4C(v8);
      v19 = 0;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
    v15 = 4294967188;
    goto LABEL_15;
  }

  if ((sub_248DA6C04(0, theDict, v19) & 1) == 0)
  {
    v15 = 4294962336;
    v8 = v19;
    goto LABEL_24;
  }

LABEL_9:
  if (*(a1 + 115) == 1)
  {
    Value = CFDictionaryGetValue(theDict, @"Data");
    if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFDataGetTypeID()))
    {
      v15 = 4294967097;
      goto LABEL_15;
    }

    Length = CFDataGetLength(v10);
    sub_248DD4EF4(v19, Length);
    v13 = sub_248DD4D98();
    if (v13)
    {
      v15 = v13;
      goto LABEL_15;
    }

    v20.location = 0;
    v20.length = Length;
    CFDataGetBytes(v10, v20, *v19);
    v18 = 0;
    sub_248DD4EF8();
    nullsub_4(v19);
    sub_248DA6144(theDict, @"ID", &v18);
    v14 = *v19;
    sub_248DD4D98();
    nullsub_4(v19);
    v17 = 0;
    sub_248DD4EF8();
    sub_248DA6144(theDict, @"Attributes", &v17);
    nullsub_4(v19);
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  *a4 = v19;
  return v15;
}

const __CFNumber *sub_248DA6B58(int a1, CFDictionaryRef theDict, void *a3)
{
  valuePtr = 0;
  if (theDict && a3)
  {
    result = CFDictionaryGetValue(theDict, @"Handle");
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        Value = CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
        v8 = valuePtr;
        if (Value)
        {
          v9 = valuePtr == 0;
        }

        else
        {
          v9 = 1;
        }

        result = !v9;
      }

      else
      {
        v8 = 0;
        result = 0;
      }

      goto LABEL_11;
    }

LABEL_14:
    v8 = 0;
LABEL_11:
    *a3 = v8;
    return result;
  }

  result = 0;
  if (a3)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_248DA6C04(int a1, CFMutableDictionaryRef theDict, uint64_t a3)
{
  valuePtr = a3;
  if (!theDict)
  {
    return 0;
  }

  if (a3)
  {
    result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    if (!result)
    {
      return result;
    }

    v5 = result;
    CFDictionarySetValue(theDict, @"Handle", result);
    CFRelease(v5);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"Handle");
  }

  return 1;
}

uint64_t sub_248DA6C94(uint64_t a1, uint64_t a2, _WORD *a3, _DWORD *a4, unsigned __int8 *a5, void *a6)
{
  result = 4294967246;
  if (a2 && a3 && a4 && a5 && a6)
  {
    if (!*(a1 + 104))
    {
      return 4294967097;
    }

    v11 = sub_248DA6D78(a1, a2, a4);
    if (!v11)
    {
      return 4294967104;
    }

    v12 = v11;
    if (!sub_248DA6144(v11, @"ID", a3) || !sub_248DA6F24(v12, a5))
    {
      return 4294967097;
    }

    *a6 = 0;
    result = CFDictionaryGetValue(v12, @"CFName");
    if (result)
    {
      v13 = result;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v13))
      {
        result = 0;
        *a6 = v13;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *sub_248DA6D78(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v6 = *(a1 + 104);
  if (!v6)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v6);
  if (!Count)
  {
    return 0;
  }

  v8 = Count;
  v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = malloc_type_calloc(v8, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(*(a1 + 104), v10, v11);
  if (v8 < 1)
  {
LABEL_17:
    ValueAtIndex = 0;
LABEL_18:
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v20 = sub_248DA6EE8(v10[v12]);
      v13 = v11[v12];
      v14 = CFArrayGetCount(v13);
      if (v14 >= 1)
      {
        break;
      }

LABEL_16:
      if (++v12 == v8)
      {
        goto LABEL_17;
      }
    }

    v15 = v14;
    v16 = 0;
    while (1)
    {
      v21 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
      v18 = sub_248DA6B58(ValueAtIndex, ValueAtIndex, &v21) ^ 1;
      if (v21 != a2)
      {
        LOBYTE(v18) = 1;
      }

      if (a3 && (v18 & 1) == 0)
      {
        break;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v15 == ++v16)
      {
        goto LABEL_16;
      }
    }

    *a3 = v20;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  free(v11);
LABEL_20:
  free(v10);
  return ValueAtIndex;
}

uint64_t sub_248DA6EE8(const __CFString *a1)
{
  v1 = sub_248DA081C(a1, 0);
  if (v1)
  {
    v2 = *v1;
    free(v1);
  }

  else
  {
    v2 = 0;
  }

  return bswap32(v2);
}

BOOL sub_248DA6F24(_BOOL8 result, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  *a2 = 0;
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"Name");
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      return v5 == CFStringGetTypeID() && CFStringGetPascalString(v4, a2, 256, 0) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_248DA6FB8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  if (!*(a1 + 104))
  {
    return 4294967097;
  }

  v2 = sub_248DA6D78(a1, a2, 0);
  if (!v2)
  {
    return 4294967104;
  }

  v3 = v2;
  v5 = 0;
  if (!sub_248DA6144(v2, @"Attributes", &v5))
  {
    return 4294967097;
  }

  if ((v5 & 2) != 0)
  {
    return 4294967098;
  }

  CFDictionaryRemoveValue(v3, @"Handle");
  return 0;
}

uint64_t sub_248DA7058(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF4)
  {
    return 29;
  }

  v2 = *(a1 + 200);
  v3 = bswap32(v2);
  if (v2)
  {
    if (40 * (v3 - 1) + 244 > a2)
    {
      return 29;
    }
  }

  *a1 = vrev32_s8(*a1);
  *(a1 + 8) = vrev64q_s8(*(a1 + 8));
  *(a1 + 24) = bswap64(*(a1 + 24));
  *(a1 + 32) = vrev32_s8(*(a1 + 32));
  *(a1 + 64) = vrev32_s8(*(a1 + 64));
  *(a1 + 200) = v3;
  if (v2)
  {
    v5 = a1 + 204;
    do
    {
      *v5 = vrev32_s8(*v5);
      *(v5 + 8) = vrev64q_s8(*(v5 + 8));
      *(v5 + 24) = vrev64q_s8(*(v5 + 24));
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_248DA710C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 912) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(*(a1 + 928) + 8 * v4);
    if (!v5 || !*v5)
    {
      return 999;
    }

    if ((sub_248DA7198(v5, a2) & 1) == 0)
    {
      break;
    }

    if (++v4 >= *(a1 + 912))
    {
      return 0;
    }
  }

  return 108;
}

uint64_t sub_248DA7198(uint64_t a1, uint64_t a2)
{
  v4 = sub_248DD4EEC(a1);
  v5 = *a1;
  v6 = *(*a1 + 200);
  if (v6 < 2)
  {
    return 0;
  }

  v8 = *(v5 + 24);
  v9 = (v4 - 204) / 0x28uLL;
  v13 = v9 == v6 && *(v5 + 4) == 1 && v8 <= a2 && *v5 == 1835627368;
  if ((v4 - 204) > 0x27)
  {
    v17 = 0;
    v14 = 0;
    v15 = *(v5 + 16);
    v18 = v9 - 1;
    v19 = (v5 + 252);
    do
    {
      v20 = *(v19 - 12);
      v21 = *(v19 - 2);
      v22 = *(v19 - 5);
      v23 = *(v19 - 4);
      if (v14 <= v22)
      {
        v14 = *(v19 - 5);
      }

      if (v20 >= -2147483639 && (v20 + 1) >= 4 && v20 != 2147483646)
      {
        v13 = 0;
      }

      if (v20 >= -2147483639)
      {
        if (v20 == 1)
        {
          v13 = (v21 >= v23 << 9) & v13;
        }
      }

      else
      {
        v13 = (v23 <= *(v5 + 32)) & v13;
      }

      v26 = v23 + v22;
      v28 = v26 <= v15 && v22 <= v15;
      v29 = v28 & v13;
      if (v20 != -1 && (v20 & 0xF0000000) != 0x70000000 && v18 > v17)
      {
        v29 = (*v19 >= v22) & v29;
      }

      if (v18 > v17)
      {
        v29 = (v26 == *v19) & v29;
      }

      v30 = *(v19 - 3) + v8;
      v32 = v30 + v21 <= a2 && v30 <= a2;
      v13 = v32 & v29;
      ++v17;
      v19 += 5;
    }

    while (v9 > v17);
  }

  else
  {
    v14 = 0;
    v15 = *(v5 + 16);
  }

  v7 = (v14 == v15) & v13;
  nullsub_4(a1);
  return v7;
}

uint64_t sub_248DA733C(uint64_t a1)
{
  v2 = sub_248DD4E14(204);
  if (!sub_248DD4D98())
  {
    v3 = *v2;
    *v3 = 0x16D697368;
    v3[9] = -2;
    if (*(a1 + 912) >= 1)
    {
      v4 = 0;
      v32 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 204;
      v31 = a1;
      while (1)
      {
        v9 = *(*(a1 + 928) + 8 * v4);
        v10 = *v9;
        v11 = *(*v9 + 200);
        v12 = *(*v9 + 8);
        if (v12 > v6)
        {
          v8 += 40;
          sub_248DD4E90(v2, v8);
          if (sub_248DD4D98())
          {
            break;
          }

          v13 = *v2 + 40 * v7++;
          *(v13 + 204) = 0;
          *(v13 + 208) = 0;
          *(v13 + 212) = v6;
          *(v13 + 220) = v12 - v6;
          *(v13 + 228) = v5;
          *(v13 + 236) = 0;
          v10 = *v9;
          v6 = v12;
        }

        v14 = v11 - 1;
        v15 = *(v10 + 32);
        v16 = v32;
        if (v15 > v32)
        {
          v16 = v15;
        }

        sub_248DD4E90(v2, v8 + 40 * v14);
        if (sub_248DD4D98())
        {
          break;
        }

        if (v14 >= 1)
        {
          v17 = 0;
          v18 = *v9;
          while (1)
          {
            v19 = *(v18 + v17 + 204);
            v20 = *(v18 + v17 + 212);
            v21 = *(v18 + v17 + 220);
            v33 = *(v18 + v17 + 228);
            v22 = *(v18 + 8) + v20;
            if (v22 >= v6)
            {
              goto LABEL_25;
            }

            if (v22 + v21 > v6)
            {
              break;
            }

LABEL_26:
            v17 += 40;
            if (40 * v14 == v17)
            {
              goto LABEL_27;
            }
          }

          if (v19 > 2147483645)
          {
            if (v19 != 2147483646)
            {
              goto LABEL_23;
            }
          }

          else if (v19 >= 3)
          {
            if (v19 < -2147483639 || v19 == -1)
            {
LABEL_29:
              v25 = 108;
              goto LABEL_30;
            }

LABEL_23:
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_29;
            }
          }

          v21 += v20 - v6;
          v20 = v6;
LABEL_25:
          v24 = *v2 + 40 * v7++;
          v8 += 40;
          *(v24 + 204) = v19;
          *(v24 + 212) = v20;
          *(v24 + 220) = v21;
          *(v24 + 228) = v33;
          v18 = *v9;
          *(v24 + 212) = *(*v9 + 8) + v20;
          *(v24 + 228) += *(v18 + 24);
          v6 += v21;
          v5 += *(v24 + 236);
          goto LABEL_26;
        }

LABEL_27:
        v32 = v16;
        ++v4;
        a1 = v31;
        if (v4 >= *(v31 + 912))
        {
          goto LABEL_33;
        }
      }

      v25 = 12;
LABEL_30:
      a1 = v31;
      goto LABEL_31;
    }

    v7 = 0;
    v6 = 0;
    v5 = 0;
    v32 = 0;
    v8 = 204;
LABEL_33:
    v26 = *(a1 + 884);
    if (v26 <= v6)
    {
      goto LABEL_36;
    }

    v8 += 40;
    sub_248DD4E90(v2, v8);
    if (!sub_248DD4D98())
    {
      v27 = *v2 + 40 * v7++;
      *(v27 + 204) = 0;
      *(v27 + 208) = 0;
      *(v27 + 212) = v6;
      *(v27 + 220) = v26 - v6;
      *(v27 + 228) = v5;
      *(v27 + 236) = 0;
      v6 = v26;
LABEL_36:
      sub_248DD4E90(v2, v8 + 40);
      if (!sub_248DD4D98())
      {
        v25 = 0;
        v28 = *v2;
        v29 = *v2 + 40 * v7;
        *(v29 + 204) = 0xFFFFFFFFLL;
        *(v29 + 212) = v6;
        *(v29 + 220) = 0;
        *(v29 + 228) = v5;
        *(v29 + 236) = 0;
        v28[2] = v6;
        *(v28 + 8) = v32;
        *(v28 + 50) = v7 + 1;
        goto LABEL_38;
      }
    }
  }

  v25 = 12;
LABEL_31:
  sub_248DD4E4C(v2);
  v2 = 0;
LABEL_38:
  *(a1 + 904) = v2;
  return v25;
}

uint64_t sub_248DA7664(_BYTE *a1)
{
  (*(*a1 + 632))(a1);
  result = (*(*a1 + 616))(a1);
  if ((result & 1) == 0)
  {
    if ((a1[778] & 1) == 0)
    {
      v3 = (*(*a1 + 496))(a1);
      (*(*v3 + 352))(v3, 0);
    }

    v4 = *(*a1 + 648);

    return v4(a1, 0);
  }

  return result;
}

uint64_t sub_248DA77A4(uint64_t result, int a2)
{
  v2 = *(result + 176);
  if (v2 > 0 || a2 != 0)
  {
    v4 = v2 - 1;
    if (a2)
    {
      v4 = 0;
    }

    *(result + 176) = v4;
  }

  return result;
}

void sub_248DA77C8(void *a1)
{
  sub_248DA7800(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DA7800(void *a1)
{
  *a1 = &unk_285BCC0C8;
  sub_248DA5F3C(a1, 0);

  return sub_248DA799C(a1);
}

void sub_248DA785C(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (Count)
    {
      v4 = Count;
      v5 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      if (v5)
      {
        v6 = v5;
        v7 = malloc_type_calloc(v4, 8uLL, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(*(a1 + 104), v6, v7);
        if (v4 >= 1)
        {
          for (i = 0; i != v4; ++i)
          {
            v9 = v7[i];
            if (v9)
            {
              v10 = CFArrayGetCount(v7[i]);
              if (v10 >= 1)
              {
                v11 = v10;
                for (j = 0; j != v11; ++j)
                {
                  v15 = 0;
                  ValueAtIndex = CFArrayGetValueAtIndex(v9, j);
                  if (ValueAtIndex)
                  {
                    v14 = ValueAtIndex;
                    if (sub_248DA6B58(ValueAtIndex, ValueAtIndex, &v15))
                    {
                      sub_248DD4E4C(v15);
                    }

                    CFDictionaryRemoveValue(v14, @"Handle");
                  }
                }
              }
            }
          }
        }

        free(v6);
        if (v7)
        {
          free(v7);
        }
      }
    }
  }
}

uint64_t sub_248DA79A0(uint64_t a1)
{
  v2 = *(a1 + 1008);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 1008) = 0;
  v3 = *(**(a1 + 904) + 32);
  if (!v3)
  {
    return 0;
  }

  if (v3 > 0x400000)
  {
    return 108;
  }

  *(a1 + 1024) = 0;
  *(a1 + 1016) = v3 << 9;
  v5 = malloc_type_malloc(v3 << 9, 0xC00DFE8AuLL);
  *(a1 + 1008) = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

char *sub_248DA7A20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    DIDiskImageObjectRetain_0(a2);
  }

  result = *(a1 + 136);
  if (result)
  {
    result = DIDiskImageObjectRelease(result);
  }

  *(a1 + 136) = a2;
  return result;
}

uint64_t sub_248DA7A64(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 432))();
  }

  return result;
}

uint64_t sub_248DA7A9C(uint64_t a1)
{
  cf = 0;
  v2 = (*(*a1 + 48))(a1);
  values = v2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    CFRetain(v3);
  }

  else
  {
    v3 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  }

  if (sub_248DA7C98(&cf) || !cf || (Count = CFArrayGetCount(cf), Count < 1))
  {
LABEL_7:
    v5 = 0;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
    if (!ValueAtIndex)
    {
      goto LABEL_23;
    }

    v11 = ValueAtIndex;
    Value = CFDictionaryGetValue(ValueAtIndex, @"writeable-components");
    v13 = CFDictionaryGetValue(v11, @"readonly-components");
    if (Value)
    {
      if (sub_248DBC4E0(Value, v3))
      {
        break;
      }
    }

    if (v13)
    {
      if ((*(*a1 + 72))(a1))
      {
        v14 = sub_248DBC4E0(v13, v3);
      }

      else
      {
        v14 = sub_248DB89C0(v13, v3);
        if (Value)
        {
          goto LABEL_23;
        }
      }

      if (v14)
      {
        break;
      }
    }

LABEL_23:
    if (v8 == ++v9)
    {
      goto LABEL_7;
    }
  }

  v5 = 1;
  if (v3)
  {
LABEL_8:
    CFRelease(v3);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t sub_248DA7C68(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t sub_248DA7C98(CFArrayRef *a1)
{
  existing = 0;
  value = 0;
  if (!a1)
  {
    return 4;
  }

  *a1 = 0;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("IOHDIXHDDrive");
  MatchingServices = IOServiceGetMatchingServices(v2, v3, &existing);
  if (MatchingServices)
  {
    v5 = MatchingServices;
    Mutable = 0;
  }

  else
  {
    if (!IOIteratorIsValid(existing))
    {
      MEMORY[0x24C1EBD00](existing);
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = IOIteratorNext(existing);
      if (v7)
      {
        v8 = v7;
        do
        {
          v9 = sub_248DB8958(v8);
          if (v9)
          {
            v10 = v9;
            if (CFDictionaryGetValueIfPresent(v9, @"backingstore-id", &value))
            {
              CFArrayAppendValue(Mutable, value);
            }

            CFRelease(v10);
          }

          IOObjectRelease(v8);
          v8 = IOIteratorNext(existing);
        }

        while (v8);
      }

      v5 = 0;
    }

    else
    {
      v5 = 999;
    }
  }

  if (existing)
  {
    IOObjectRelease(existing);
    existing = 0;
  }

  if (v5)
  {
    v11 = Mutable == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  if (Mutable)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], Mutable);
    *a1 = Copy;
    if (Copy)
    {
      v5 = v5;
    }

    else
    {
      v5 = 999;
    }

LABEL_28:
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t sub_248DA7E28(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_248DA7E80(uint64_t a1)
{
  v1 = (*(*a1 + 176))(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = (*(*v1 + 80))(v1) ^ 1;
  DIDiskImageObjectRelease(v2);
  return v3;
}

uint64_t sub_248DA7F04(uint64_t a1)
{
  v2 = sub_248DA7FAC(*(a1 + 744));
  if (!v2)
  {
    operator new();
  }

  v3 = v2;
  (*(*v2 + 144))(v2, a1 + 752);
  return v3;
}

uint64_t sub_248DA7FAC(int a1)
{
  if (a1 <= 7)
  {
    if (a1 > 3)
    {
      switch(a1)
      {
        case 4:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
      }

      return 0;
    }

    if (a1)
    {
      if (a1 == 2)
      {
        operator new();
      }

      return 0;
    }

LABEL_14:
    operator new();
  }

  if ((a1 - 10) < 4)
  {
    goto LABEL_14;
  }

  if (a1 == 8)
  {
    operator new();
  }

  if (a1 == 9)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_248DA8178(uint64_t a1)
{
  result = sub_248DA81B0(a1);
  *result = &unk_285BC9BA0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_248DA81B0(uint64_t a1)
{
  *sub_248DA0CB0(a1) = &unk_285BC9AD8;
  *(a1 + 104) = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  return a1;
}

BOOL sub_248DA8230(uint64_t a1)
{
  if ((*(*a1 + 128))(a1) == 10)
  {
    return 0;
  }

  if ((*(*a1 + 128))(a1))
  {
    return (*(*a1 + 88))(a1) == 0;
  }

  return 1;
}

void sub_248DA82F8(void *a1)
{
  sub_248DA8330(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DA8330(void *a1)
{
  *a1 = &unk_285BC9AD8;
  v2 = a1[13];
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_248DA1D68(a1);
}

BOOL sub_248DA83E0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = ((statfs(*(a1 + 296), &v3) & 0x80000000) == 0 || !*__error()) && (v3.f_flags & 0x1000) == 0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DA8460(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (statfs(*(a1 + 296), &v4) < 0 && *__error())
  {
    f_flags = 0;
  }

  else
  {
    f_flags = v4.f_flags;
  }

  v2 = *MEMORY[0x277D85DE8];
  return f_flags & 1;
}

uint64_t sub_248DA851C(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v10 = sub_248D9F120();
  v11 = sub_248D9F128(v10, 0);
  if (v10)
  {
    CFRelease(v10);
  }

  if ((a5 & 1) == 0 && v11)
  {
    v12 = (*(*a1 + 24))(a1, @"di-valid-cached-checksum");
    if (sub_248D9F128(v12, 0))
    {
      if (a2)
      {
        *a2 = (*(*a1 + 176))(a1);
      }

      if (a3)
      {
        *a3 = 0;
      }

      if (a4)
      {
        *a4 = 0;
      }

      return 118;
    }

    goto LABEL_14;
  }

  if (v11)
  {
LABEL_14:
    (*(*a1 + 32))(a1, @"di-valid-cached-checksum", *MEMORY[0x277CBED10]);
  }

  result = (*(*a1 + 160))(a1, a2, a3, a4);
  if ((a5 & 4) == 0 && a5 & 2 | v11 && !result)
  {
    (*(*a1 + 32))(a1, @"di-valid-cached-checksum", *MEMORY[0x277CBED28]);
    return 0;
  }

  return result;
}

__CFArray *sub_248DA86E8(uint64_t a1, __CFString *theString1)
{
  if (CFStringCompare(theString1, @"udif-ordered-chunks", 0) == kCFCompareEqualTo)
  {
    v6 = sub_248DA8800(a1, theString1);
    if (!v6)
    {
      v8 = (*(*a1 + 608))(a1);
      v9 = MEMORY[0x277CBED28];
      if (!v8)
      {
        v9 = MEMORY[0x277CBED10];
      }

      v6 = *v9;
      sub_248DA5500(a1, theString1, *v9);
    }

    return v6;
  }

  HasPrefix = CFStringHasPrefix(theString1, @"data-run-info-");
  v5 = sub_248DA8800(a1, theString1);
  v6 = v5;
  if (!HasPrefix || v5)
  {
    return v6;
  }

  sub_248DCDEB0(a1, theString1);

  return sub_248DA8800(a1, theString1);
}

__CFArray *sub_248DA8800(uint64_t a1, CFTypeRef cf1)
{
  if (!cf1)
  {
    return 0;
  }

  if (CFEqual(cf1, @"di-valid-cached-checksum"))
  {
    v4 = (*(*a1 + 536))(a1);
    v5 = MEMORY[0x277CBED28];
    if (!v4)
    {
      v5 = MEMORY[0x277CBED10];
    }

    return *v5;
  }

  if (CFEqual(cf1, @"tiger-blkx"))
  {
    v7 = a1;
    v8 = 1;
LABEL_11:

    return sub_248DC9B44(v7, v8);
  }

  if (CFEqual(cf1, @"leopard-blkx"))
  {
    v7 = a1;
    v8 = 0;
    goto LABEL_11;
  }

  if (CFEqual(cf1, @"bs-io-scheduling") && (v9 = (*(*a1 + 296))(a1)) != 0 && (v10 = (*(*v9 + 488))(v9)) != 0)
  {
    v11 = *(*v10 + 24);

    return v11();
  }

  else
  {

    return sub_248DA2268(a1, cf1);
  }
}

uint64_t sub_248DA89C8(uint64_t a1)
{
  cf = 0;
  v2 = (*(*a1 + 296))(a1);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = (*(*v2 + 488))(v2);
  if (!v3 || (*(*v3 + 120))(v3, @"com.apple.diskimages.recentcksum", &cf))
  {
    goto LABEL_4;
  }

  if (!cf)
  {
    return 0;
  }

  v6 = CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], cf, 0x8000100u);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a1 + 544))(a1);
    if (v8)
    {
      v9 = v8;
      v4 = CFEqual(v7, v8);
      CFRelease(v7);
      v7 = v9;
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v7);
  }

  else
  {
LABEL_4:
    v4 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

size_t sub_248DA8B3C(uint64_t a1, const __CFString *a2, CFDataRef *a3)
{
  v5 = sub_248DA081C(a2, 0x8000100u);
  v6 = v5;
  if (a3 && v5)
  {
    v7 = getxattr(*(a1 + 296), v5, 0, 0, 0, 0);
    v8 = v7;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = malloc_type_malloc(v7, 0x100004077774924uLL);
      if (v9)
      {
        v10 = v9;
        v11 = getxattr(*(a1 + 296), v6, v9, v8, 0, 0);
        v8 = 999;
        if ((v11 & 0x8000000000000000) == 0)
        {
          v12 = CFDataCreate(0, v10, v11);
          *a3 = v12;
          if (v12)
          {
            v8 = 0;
          }

          else
          {
            v8 = 999;
          }
        }

        free(v10);
      }

      else
      {
        v8 = 12;
      }
    }
  }

  else
  {
    v8 = 999;
    if (!v5)
    {
      return v8;
    }
  }

  free(v6);
  return v8;
}

uint64_t sub_248DA8C38(uint64_t a1, const __CFString *a2, const __CFData *a3)
{
  v5 = sub_248DA081C(a2, 0x8000100u);
  if (!v5)
  {
    return 999;
  }

  v6 = v5;
  v7 = *(a1 + 296);
  if (a3)
  {
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    v10 = setxattr(v7, v6, BytePtr, Length, 0, 0);
  }

  else
  {
    v10 = removexattr(v7, v5, 0);
  }

  v11 = v10;
  free(v6);
  return v11;
}

uint64_t sub_248DA8CE0(uint64_t a1, char **a2, char **a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  *(a1 + 1032) = 1;
  result = sub_248DA8D1C(a1, a2, a3, a4);
  *(a1 + 1032) = 0;
  return result;
}

uint64_t sub_248DA8D1C(uint64_t a1, char **a2, char **a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = (*(*a1 + 176))(a1);
  v8 = v7;
  if (v7)
  {
    if ((*(*v7 + 80))(v7))
    {
      operator new();
    }

    v9 = sub_248DA8EDC(v8);
    if (v9)
    {
      v11 = (*(*a1 + 184))(a1, v9);
      if (v11)
      {
        v10 = v11;
        if (!a2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((*(*v8 + 152))(v8, v9))
        {
          v10 = 0;
        }

        else
        {
          v10 = 117;
        }

        if (!a2)
        {
LABEL_21:
          DIDiskImageObjectRelease(v8);
          if (a3)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
      v10 = 999;
      if (!a2)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v10 = 999;
      if (!a3)
      {
        return v10;
      }

      v9 = 0;
LABEL_22:
      *a3 = v9;
      return v10;
    }

    v9 = 0;
    v10 = 999;
  }

  *a2 = v8;
  if (a3)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v9)
  {
    DIDiskImageObjectRelease(v9);
  }

  return v10;
}

uint64_t sub_248DA8EDC(uint64_t a1)
{
  v1 = (*(*a1 + 128))(a1);

  return sub_248DA7FAC(v1);
}

uint64_t sub_248DA8F54(__int16 *a1, uint64_t a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  (*(*a2 + 48))(a2);
  (*(*a1 + 344))(a1, 0.0);
  v6 = a1[456];
  if (v6 >= 1)
  {
    v7 = a1[457];
    alloc = *MEMORY[0x277CBECE8];
    v21 = *MEMORY[0x277CBED28];
    if (v7 >= -2)
    {
      v8 = (a1 + 452);
      if (v7 == -2)
      {
LABEL_6:
        v10 = *v8;
        if (*v8)
        {
          v11 = sub_248DA9648(a1, v7);
          if (v11)
          {
            v12 = v11;
            v13 = sub_248DA7FAC(*(*v10 + 64));
            if (v13)
            {
              v14 = v13;
              if (a3)
              {
                sub_248DA9678((*v10 + 64));
              }

              v15 = DIGetBundleRef();
              v16 = sub_248DD4D90(v15, @"Checksumming %1$@\\U2026", @"Checksumming %1$@\\U2026");
              v17 = CFStringCreateWithFormat(alloc, 0, v16, v12);
              (*(*a1 + 336))(a1, v17, 16);
              if (v17)
              {
                CFRelease(v17);
              }

              if (v16)
              {
                CFRelease(v16);
              }

              sub_248DA992C(a1, v10, v14);
            }
          }
        }

        goto LABEL_17;
      }

      v9 = a1[457];
      if (v7 - v9 < v6)
      {
        v8 = (*(a1 + 116) - 8 * v9 + 8 * v7);
        goto LABEL_6;
      }
    }

LABEL_17:
    v18 = 999;
    goto LABEL_18;
  }

  v18 = 0;
LABEL_18:
  (*(*a2 + 72))(a2);
  (*(*a1 + 344))(a1, 100.0);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uLong sub_248DA9574(uint64_t a1)
{
  result = crc32(0, 0, 0);
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_248DA95A8(uint64_t a1, float a2)
{
  v6 = a2;
  v3 = *(a1 + 112);
  if (v3)
  {

    return v3();
  }

  else
  {
    result = sub_248DA9634(a1);
    if (result)
    {
      v5 = sub_248DA9634(a1);
      return v5(1, a1, &v6, 0, 0, 0);
    }
  }

  return result;
}

const void *sub_248DA9648(uint64_t a1, uint64_t a2)
{
  if (a2 >= -1 && (v2 = a2 - *(a1 + 914), v2 < *(a1 + 912)) && (v3 = *(a1 + 936)) != 0)
  {
    return CFArrayGetValueAtIndex(v3, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DA9678(int *a1)
{
  v1 = *a1;
  if (*a1 <= 7)
  {
    if (v1 > 3)
    {
      switch(v1)
      {
        case 4:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
      }

      return 0;
    }

    if (v1)
    {
      if (v1 == 2)
      {
        operator new();
      }

      return 0;
    }

LABEL_14:
    operator new();
  }

  if ((v1 - 10) < 4)
  {
    goto LABEL_14;
  }

  if (v1 == 8)
  {
    operator new();
  }

  if (v1 == 9)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_248DA9878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 104);
  if (v6)
  {

    return v6();
  }

  else
  {
    result = sub_248DA9634(a1);
    if (result)
    {
      v8 = sub_248DA9634(a1);

      return v8(0, a1, a2, a3, 0, 0);
    }
  }

  return result;
}

void sub_248DA992C(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = 0;
  (*(*a1 + 96))(a1);
  (*(*a3 + 48))(a3);
  memset(&v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v11 = 0u;
  v13 = a3;
  DIDiskImageObjectRetain_0(a3);
  v12 = a1;
  DIDiskImageObjectRetain_0(a1);
  v6 = *a2;
  v7 = *a2 + 204;
  v24 = a2;
  v25 = v7;
  v9 = v6 + 8;
  v8 = *(v6 + 8);
  *&v21 = *(v9 + 8);
  *(&v21 + 1) = v8;
  pthread_mutex_init(&v15[1], 0);
  pthread_cond_init(&v19[1], 0);
  pthread_mutex_init(&v19[7], 0);
  pthread_cond_init(&v19[15], 0);
  BYTE8(v20) = 0;
  v22 = 0uLL;
  pthread_mutex_init(&v23, 0);
  operator new();
}

uint64_t sub_248DA9EFC(void **a1)
{
  result = ((*a1)[37])(a1);
  if (result)
  {
    return *(*a1[113] + 16);
  }

  return result;
}

uint64_t sub_248DA9F58(uint64_t a1)
{
  *a1 = &unk_285BCCD68;
  pthread_mutex_init((a1 + 8), 0);
  pthread_cond_init((a1 + 72), 0);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return a1;
}

uint64_t sub_248DA9FB8(uint64_t a1)
{
  *a1 = &unk_285BCCDB8;
  pthread_mutex_init((a1 + 8), 0);
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_248DAA004(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  if (a2)
  {
    *(a2 + 72) = *(a1 + 128);
    *(a1 + 128) = a2;
    v4 = *(a1 + 140);
    v5 = *(a1 + 136) + 1;
    *(a1 + 136) = v5;
    if (v4)
    {
      fprintf(*MEMORY[0x277D85DF8], "TAOQueue::push: _count is now %d\n", v5);
    }
  }

  pthread_cond_broadcast((a1 + 72));

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t sub_248DAA090(void *a1)
{
  v28 = 0;
  v29 = 0;
  pthread_mutex_lock((a1 + 7));
  --*(a1 + 10);
  pthread_cond_broadcast((a1 + 15));
  pthread_mutex_unlock((a1 + 7));
  v2 = (*(**a1 + 32))(*a1, &v29, 0);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v29 == 0;
  }

  if (v3)
  {
LABEL_6:
    v4 = v2;
    if (v2)
    {
LABEL_7:
      pthread_mutex_lock((a1 + 21));
      *(a1 + 280) = 1;
      pthread_cond_broadcast((a1 + 29));
      pthread_mutex_unlock((a1 + 21));
      v5 = v4;
      goto LABEL_57;
    }
  }

  else
  {
    while (1)
    {
      pthread_mutex_lock(a1 + 5);
      v6 = a1[39];
      v7 = a1[49];
      v8 = *v7;
      if (*v7 == -1)
      {
        v11 = 0;
        v9 = 0;
        v13 = a1[39];
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 2048;
        v13 = a1[39];
        while (1)
        {
          v14 = *(v7 + 2);
          if (!v14)
          {
            break;
          }

LABEL_15:
          v16 = (v8 - 2147483646) < 2 || v8 == 0;
          v17 = !v16 && v8 != 2;
          v18 = v16;
          if (v11)
          {
            if (v9 != v17 || v10 != v18)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v10 = v18;
            v9 = v17;
          }

          v19 = *(v7 + 1) + v14;
          v20 = v19 - v13;
          if (v9)
          {
            if (v20 >= v12)
            {
              v21 = v12;
            }

            else
            {
              v21 = v19 - v13;
            }

            v11 += v21;
            v13 += v21;
            if (v20 > v12)
            {
              v9 = 1;
              goto LABEL_40;
            }

            v12 -= v21;
          }

          else
          {
            v11 += v20;
            v13 = v19;
          }

          v22 = v7[10];
          v7 += 10;
          v8 = v22;
          a1[49] = v7;
          if (v22 == -1)
          {
            goto LABEL_40;
          }
        }

        v15 = v7 + 10;
        while (1)
        {
          v8 = *v15;
          if (*v15 == -1)
          {
            break;
          }

          v14 = *(v15 + 2);
          v15 += 10;
          if (v14)
          {
            v7 = v15 - 10;
            a1[49] = v7;
            goto LABEL_15;
          }
        }

        a1[49] = v15;
      }

LABEL_40:
      a1[39] = v13;
      pthread_mutex_unlock(a1 + 5);
      if (v6 >= a1[36] || v11 == 0)
      {
        break;
      }

      if (!v9)
      {
        (*(**a1 + 16))(*a1, v29);
        operator new();
      }

      v24 = (*(*a1[2] + 48))(a1[2], a1[37] + v6, v11, &v28, v29[13]);
      if (v24)
      {
        v4 = v24;
        goto LABEL_7;
      }

      if (v28 != v11)
      {
        v4 = 5;
        goto LABEL_7;
      }

      v25 = v29;
      v29[11] = v6;
      v25[12] = v11;
      (*(*a1[1] + 24))(a1[1], v25);
      v29 = 0;
      v2 = (*(**a1 + 32))(*a1, &v29, 0);
      if (v2)
      {
        v26 = 1;
      }

      else
      {
        v26 = v29 == 0;
      }

      if (v26)
      {
        goto LABEL_6;
      }
    }
  }

  v5 = 0;
LABEL_57:
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  return v5;
}

uint64_t sub_248DAA444(uint64_t a1)
{
  v10 = 0;
  pthread_mutex_lock((a1 + 56));
  --*(a1 + 40);
  pthread_cond_broadcast((a1 + 120));
  pthread_mutex_unlock((a1 + 56));
  v2 = 0;
  v9 = *(a1 + 304);
  if (v9 < *(a1 + 288))
  {
    do
    {
      LODWORD(v2) = (*(**(a1 + 8) + 40))(*(a1 + 8), sub_248DAB678, &v9, &v10);
      v3 = v10;
      if (v2)
      {
        v4 = 1;
      }

      else
      {
        v4 = v10 == 0;
      }

      if (v4)
      {
        break;
      }

      v6 = v10[12];
      v5 = v10[13];
      *(a1 + 304) += v6;
      if (v5)
      {
        (*(**(a1 + 24) + 56))(*(a1 + 24), v5, v6 << 9);
        v7 = v10;
        v10[11] = 0;
        v7[12] = 0;
        (*(**a1 + 16))();
      }

      else if (!v3[112] || ((*(**(a1 + 24) + 64))(*(a1 + 24), 0, v6 << 9), (v3 = v10) != 0))
      {
        (*(*v3 + 8))(v3);
      }

      v9 = *(a1 + 304);
      v10 = 0;
    }

    while (v9 < *(a1 + 288));
    v2 = v2;
  }

  pthread_mutex_lock((a1 + 168));
  *(a1 + 280) = 1;
  pthread_cond_broadcast((a1 + 232));
  pthread_mutex_unlock((a1 + 168));
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return v2;
}

uint64_t sub_248DAA640(uint64_t a1, uint64_t a2, char a3)
{
  pthread_mutex_lock((a1 + 8));
  *a2 = 0;
  if (*(a1 + 120))
  {
    goto LABEL_12;
  }

  v6 = MEMORY[0x277D85DF8];
  while (1)
  {
    if ((a3 & 1) == 0)
    {
      v7 = *(a1 + 144);
      if (*(a1 + 136) < v7)
      {
        if (*(a1 + 140))
        {
          fprintf(*v6, "TAOQueue::dequeue: stalled _count=%d _reservePool=%d\n", *(a1 + 136), v7);
        }

        goto LABEL_8;
      }
    }

    v8 = *(a1 + 128);
    if (v8)
    {
      break;
    }

LABEL_8:
    pthread_cond_wait((a1 + 72), (a1 + 8));
    if (*(a1 + 120))
    {
      goto LABEL_12;
    }
  }

  *a2 = v8;
  *(a1 + 128) = *(*(a1 + 128) + 72);
  *(*a2 + 72) = 0;
  v9 = *(a1 + 140);
  v10 = *(a1 + 136) - 1;
  *(a1 + 136) = v10;
  if (v9)
  {
    fprintf(*v6, "TAOQueue::dequeue: _count is now %d\n", v10);
  }

LABEL_12:
  pthread_mutex_unlock((a1 + 8));
  return 0;
}

uint64_t sub_248DAA73C(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4)
{
  if (!a2)
  {
    v11 = *(*a1 + 32);

    return v11();
  }

  pthread_mutex_lock((a1 + 8));
  *a4 = 0;
  if (*(a1 + 120))
  {
    goto LABEL_19;
  }

  v8 = (a1 + 128);
  while (1)
  {
    v9 = *v8;
    if (*v8)
    {
      break;
    }

LABEL_9:
    pthread_cond_wait((a1 + 72), (a1 + 8));
    if (*(a1 + 120))
    {
      goto LABEL_19;
    }
  }

  if (a2(*v8, a3))
  {
    while (1)
    {
      v10 = v9;
      v9 = *(v9 + 72);
      if (!v9)
      {
        goto LABEL_9;
      }

      if (!a2(v9, a3))
      {
        goto LABEL_15;
      }
    }
  }

  v10 = 0;
LABEL_15:
  v13 = (v10 + 72);
  if (!v10)
  {
    v13 = (a1 + 128);
  }

  *v13 = *(v9 + 72);
  *(v9 + 72) = 0;
  *a4 = v9;
  v14 = *(a1 + 140);
  v15 = *(a1 + 136) - 1;
  *(a1 + 136) = v15;
  if (v14)
  {
    fprintf(*MEMORY[0x277D85DF8], "TAOQueue::dequeueWithFilter: _count is now %d\n", v15);
  }

LABEL_19:
  pthread_cond_broadcast((a1 + 72));
  pthread_mutex_unlock((a1 + 8));
  return 0;
}

uint64_t sub_248DAA8AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v59 = a4;
  v67[1] = 0;
  pthread_rwlock_rdlock((a1 + 160));
  if (!a5)
  {
    v10 = 0;
    v11 = 22;
    goto LABEL_59;
  }

  sub_248DCA174();
  v10 = 0;
  if (!(*(v9 + 296))(a1))
  {
    v11 = 999;
    goto LABEL_59;
  }

  v11 = 22;
  if (a3 < 0)
  {
    goto LABEL_59;
  }

  v12 = *(a1 + 360);
  if (v12 < a2 || a3 + a2 > v12)
  {
    goto LABEL_59;
  }

  v10 = 0;
  do
  {
    if (!a3)
    {
      v11 = 0;
      break;
    }

    do
    {
      v66 = 0;
      v67[0] = 0;
      v64 = 0;
      v65 = 0;
      v62 = 0;
      v63 = 0;
      v60 = 0;
      v61 = 0;
      v14 = *(a1 + 368);
      if (v14)
      {
        sub_248DAD8D0(v14);
        v15 = sub_248DAD8D8(*(a1 + 368), a2, a3, v67, &v60);
        if (v15)
        {
          sub_248DCE8B0(v15, v60, v16, v17, v18, v19, v20, v21, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67[0]);
          sub_248DAD970(*(a1 + 368));
          goto LABEL_49;
        }

        sub_248DAD970(*(a1 + 368));
      }

      sub_248DAACE4(a1, a2, &v66, &v66 + 1, &v64, &v63, &v62, &v61, &v65);
      v22 = v63;
      v23 = v64;
      v24 = a2 - v64;
      if (v63 - (a2 - v64) >= a3)
      {
        v25 = a3;
      }

      else
      {
        v25 = v63 - (a2 - v64);
      }

      v67[0] = v25;
    }

    while (HIDWORD(v66) == 2147483646);
    if (SHIDWORD(v66) >= -2147483639)
    {
      v35 = v25 << 9;
      switch(HIDWORD(v66))
      {
        case 0xFFFFFFFF:
          LODWORD(v11) = 999;
          goto LABEL_50;
        case 0:
        case 2:
          bzero(a5, v35);
          goto LABEL_49;
        case 1:
          sub_248DCA174();
          v52 = *(*(v51 + 296))(a1);
          v53 = (*(v52 + 328))();
          goto LABEL_47;
        default:
          sub_248DCA174();
          v53 = (*(v54 + 576))(a1);
LABEL_47:
          LODWORD(v11) = v53;
          break;
      }

      goto LABEL_50;
    }

    v26 = *(a1 + 368);
    v27 = pthread_mutex_trylock((a1 + 944));
    if (!v26 && a2 == v23 && v25 == v22)
    {
      if (!v27)
      {
        if (*(a1 + 1024) == 1 && *(a1 + 1028) == v66)
        {
          sub_248DCE8B0(0, *(a1 + 1008), v28, v29, v30, v31, v32, v33, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67[0]);
          pthread_mutex_unlock((a1 + 944));
LABEL_49:
          LODWORD(v11) = 0;
          goto LABEL_50;
        }

        pthread_mutex_unlock((a1 + 944));
      }

      v50 = sub_248DCE8CC(*(v65 + 4));
      if (v50)
      {
        v37 = v50;
        LODWORD(v11) = sub_248DAAD84(a1, v65, a5, v50);
        if (v11)
        {
          fprintf(*MEMORY[0x277D85DF8], "__decompressChunk() error: %d", v11);
        }

        goto LABEL_42;
      }

      goto LABEL_43;
    }

    if (v27)
    {
      v36 = sub_248DCE8CC(*(a1 + 1016));
      if (v36)
      {
        v37 = v36;
        LODWORD(v11) = sub_248DAAD84(a1, v65, v36, &v36[*(a1 + 1016) - v61]);
        if (!v11)
        {
          sub_248DCE8B0(0, &v37[512 * v24], v38, v39, v40, v41, v42, v43, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67[0]);
        }

LABEL_42:
        free(v37);
        goto LABEL_50;
      }

LABEL_43:
      LODWORD(v11) = 12;
      goto LABEL_50;
    }

    LODWORD(v11) = sub_248DAD978(a1, v65, v66);
    if (!v11)
    {
      sub_248DCE8B0(0, (*(a1 + 1008) + (v24 << 9)), v44, v45, v46, v47, v48, v49, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67[0]);
    }

    pthread_mutex_unlock((a1 + 944));
LABEL_50:
    a3 -= v67[0];
    v10 += v67[0];
    a2 += v67[0];
    a5 += 512 * v67[0];
    if (v11)
    {
      v55 = 0;
    }

    else
    {
      v55 = v67[0] == 0;
    }

    if (v55)
    {
      v11 = 999;
    }

    else
    {
      v11 = v11;
    }
  }

  while (!v11);
LABEL_59:
  if (v59)
  {
    *v59 = v10;
  }

  pthread_rwlock_unlock((a1 + 160));
  return v11;
}

uint64_t sub_248DAACE4(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v9 = 0;
  v10 = **(result + 904);
  v11 = *(v10 + 200) >> 1;
  v12 = v10 + 204;
  while (1)
  {
    v13 = *(v12 + 8);
    if (v13 <= a2 && *(v12 + 16) + v13 > a2)
    {
      break;
    }

    v14 = v13 <= a2;
    if (v13 <= a2)
    {
      v15 = v11;
    }

    else
    {
      v15 = -v11;
    }

    if (v14)
    {
      v16 = v11;
    }

    else
    {
      v16 = -v11;
    }

    v9 += v16;
    v12 += 40 * v15;
    v11 >>= v11 > 1;
  }

  *a4 = *v12;
  *a3 = v9;
  *a5 = v13;
  *a6 = *(v12 + 48) - *(v12 + 8);
  *a7 = *(v12 + 24);
  *a8 = *(v12 + 32);
  if (a9)
  {
    *a9 = v12;
  }

  return result;
}

uint64_t sub_248DAAD84(uint64_t *a1, _DWORD *a2, const void *a3, uint64_t a4)
{
  v8 = sub_248DAAF50(a1, *a2);
  if (!v8)
  {
    return 999;
  }

  v9 = v8;
  v10 = (*(*a1 + 296))(a1);
  v11 = *(a2 + 3);
  v12 = *(a2 + 4);
  v13 = (*(*v10 + 328))();
  if (v13)
  {
    v14 = v13;
    fprintf(*MEMORY[0x277D85DF8], "__decompressChunk: backing store read at offset %qd length %qd failed with error %d\n", *(a2 + 3), *(a2 + 4), v13);
  }

  else
  {
    v15 = (*(*v9 + 48))(v9, a4, a2[8], a3, (a2[4] << 9));
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "CUDIFDiskImage::__decompressChunk()__decompressChunk: decompressData failed with error %d\n", v15);
      fprintf(*v17, "chunk: %p\n->runType: %#x\n->sectorStart: %qd\n->sectorCount: %qd\n->compOffset: %qd\n->compLength: %qd\n", a2, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4));
      sub_248DC7A88(a2[8], a4);
      return v16;
    }

    else
    {
      v18 = a1[46];
      if (v18)
      {
        sub_248DAD9EC(v18);
        sub_248DAD9F4(a1[46], *(a2 + 1), *(a2 + 2), a3);
        sub_248DAD970(a1[46]);
      }

      return 0;
    }
  }

  return v14;
}

uint64_t sub_248DAAF50(uint64_t a1, int a2)
{
  if (!*(a1 + 376))
  {
    if (a2 <= -2147483646)
    {
      if (a2 != 0x80000000)
      {
        if (a2 != -2147483647)
        {
          operator new();
        }

        operator new();
      }

LABEL_12:
      operator new();
    }

    if (a2 <= -2147483644)
    {
      if (a2 == -2147483645)
      {
        operator new();
      }

      goto LABEL_12;
    }

    if (a2 == -2147483643)
    {
      operator new();
    }

    if (a2 == -2147483641)
    {
      operator new();
    }
  }

  return *(a1 + 376);
}

char *sub_248DAB144(char *a1)
{
  result = sub_248DAB178(a1);
  *result = &unk_285BCA1C0;
  return result;
}

char *sub_248DAB178(char *a1)
{
  result = sub_248DA0CB0(a1);
  *result = &unk_285BC9ED0;
  return result;
}

uint64_t sub_248DAB1AC(uint64_t a1, Bytef *a2, int a3, Bytef *a4, int a5)
{
  v8 = a5;
  v5 = a3;
  v6 = sub_248DAB21C(a4, &v8, a2, a3);
  if (v6)
  {
    fprintf(*MEMORY[0x277D85DF8], "decompression failed; compressed chunk size %ld\n", v5);
  }

  return v6;
}

uint64_t sub_248DAB21C(Bytef *a1, unint64_t *a2, Bytef *a3, uint64_t a4)
{
  v5 = *a2;
  memset(&strm, 0, sizeof(strm));
  if (a3 < a1)
  {
    if (&a3[a4 - 1] >= a1)
    {
      return 1000;
    }

    goto LABEL_7;
  }

  v6 = &a1[v5];
  if (&a1[v5] <= a3)
  {
LABEL_7:
    strm.next_in = a3;
    strm.avail_in = a4;
    strm.next_out = a1;
    strm.avail_out = v5;
    *a2 = 0;
    if (inflateInit_(&strm, "1.2.12", 112))
    {
      return 1000;
    }

    if (inflate(&strm, 4) != 1)
    {
      goto LABEL_40;
    }

    *a2 = strm.total_out;
    v8 = inflateEnd(&strm) == 0;
    v9 = 1000;
LABEL_10:
    if (v8)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  strm.next_in = a3;
  strm.avail_in = a4;
  strm.next_out = a1;
  strm.avail_out = a3 - a1;
  if (inflateInit_(&strm, "1.2.12", 112))
  {
    return 1001;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  next_out = 0;
  total_out = 0;
  v15 = 0;
  v30 = v6 - 1;
  v16 = LODWORD(strm.next_in) - LODWORD(strm.next_out);
  v17 = 2;
  while (1)
  {
    strm.avail_out = v16;
    if (v16 > 0x64)
    {
      goto LABEL_23;
    }

    if (v15)
    {
      break;
    }

    if ((v10 & 1) == 0)
    {
      if (v5 < 0x10)
      {
        goto LABEL_40;
      }

      v27 = sub_248DD1FF8(v5 >> 4);
      if (!v27)
      {
        return 1001;
      }

      v11 = v27;
      next_out = strm.next_out;
      total_out = strm.total_out;
      strm.next_out = v27;
      strm.avail_out = v5 >> 4;
      v28 = inflate(&strm, v17);
      if (v28 == 1)
      {
        goto LABEL_43;
      }

      if (v28 | strm.avail_out)
      {
        goto LABEL_40;
      }

      v15 = 0;
      v12 = v5 >> 4;
      goto LABEL_32;
    }

    v18 = v30 - next_out + 1;
    if (v30 - next_out >= v5 || v12 > v18)
    {
      goto LABEL_40;
    }

    v20 = strm.total_out;
    v21 = sub_248DD1FF8(v30 - next_out + 1);
    if (!v21)
    {
      return 1001;
    }

    v15 = v21;
    v22 = v12;
    v23 = v20 - total_out;
    memmove(v21, v11, v20 - total_out);
    free(v11);
    v10 = 0;
    strm.next_out = &v15[v23];
    v24 = v18 - v23;
    v12 = v22;
    strm.avail_out = v24;
    v17 = 4;
LABEL_23:
    v25 = inflate(&strm, v17);
    if (v25 == 1)
    {
      if (v15)
      {
        memmove(next_out, v15, strm.total_out - total_out);
        free(v15);
      }

      else if (v10)
      {
LABEL_43:
        memmove(next_out, v11, strm.total_out - total_out);
        free(v11);
      }

      v29 = inflateEnd(&strm);
      *a2 = strm.total_out;
      v8 = v29 == 0;
      v9 = 1001;
      goto LABEL_10;
    }

    if (v25 | strm.avail_out)
    {
      goto LABEL_40;
    }

    if ((v10 & 1) == 0)
    {
      v26 = strm.next_out;
      goto LABEL_34;
    }

LABEL_32:
    v16 = 0;
    v10 = 1;
    if (strm.next_in - next_out >= (strm.total_out - total_out))
    {
      memmove(next_out, v11, strm.total_out - total_out);
      free(v11);
      v26 = next_out + LODWORD(strm.total_out) - total_out;
      strm.next_out = &next_out[strm.total_out - total_out];
LABEL_34:
      v10 = 0;
      v16 = LODWORD(strm.next_in) - v26;
    }
  }

  if (v10)
  {
    free(v11);
  }

  free(v15);
LABEL_40:
  inflateEnd(&strm);
  return 1000;
}

uint64_t sub_248DAB544(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  if (a2)
  {
    v4 = (a1 + 128);
    v5 = *(a1 + 128);
    while (v5)
    {
      v6 = v5;
      v5 = *(v5 + 72);
      if (!v5)
      {
        v4 = (v6 + 72);
        break;
      }
    }

    *v4 = a2;
    v7 = *(a1 + 140);
    v8 = *(a1 + 136) + 1;
    *(a1 + 136) = v8;
    if (v7)
    {
      fprintf(*MEMORY[0x277D85DF8], "TAOQueue::enqueue: _count is now %d\n", v8);
    }
  }

  pthread_cond_broadcast((a1 + 72));

  return pthread_mutex_unlock((a1 + 8));
}

void sub_248DAB5E4(void *a1)
{
  sub_248DAB61C(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DAB61C(void *a1)
{
  *a1 = &unk_285BCB208;
  v2 = a1[13];
  if (v2)
  {
    free(v2);
  }

  return sub_248DAB68C(a1);
}

uint64_t sub_248DAB68C(uint64_t a1)
{
  *a1 = &unk_285BCCDB8;
  pthread_mutex_destroy((a1 + 8));
  return a1;
}

uLong sub_248DAB6D4(uint64_t a1, const Bytef *a2, uInt a3)
{
  result = crc32(*(a1 + 112), a2, a3);
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_248DAB700(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return 1;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    v4 = v3(a1);
  }

  else
  {
    result = sub_248DA9634(a1);
    if (!result)
    {
      return result;
    }

    v5 = sub_248DA9634(a1);
    v4 = v5(2, a1, 0, 0, 0, 0);
  }

  return v4 != 0;
}

void sub_248DAB7B8(uint64_t a1)
{
  sub_248DAB7F0(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DAB7F0(uint64_t a1)
{
  *a1 = &unk_285BCCD68;
  v2 = (a1 + 8);
  pthread_mutex_lock((a1 + 8));
  v3 = *(a1 + 128);
  if (v3)
  {
    do
    {
      v4 = v3[9];
      (*(*v3 + 8))(v3);
      --*(a1 + 136);
      v3 = v4;
    }

    while (v4);
  }

  *(a1 + 128) = 0;
  pthread_mutex_unlock(v2);
  pthread_mutex_destroy(v2);
  pthread_cond_destroy((a1 + 72));
  return a1;
}

CFStringRef sub_248DAB8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = (*(*a2 + 152))(a2, a3);
    v6 = DIGetBundleRef();
    if (v5)
    {
      v7 = @"verified   %1$@ %2$@";
LABEL_7:
      v8 = sub_248DD4D90(v6, v7, v7);
      v9 = *MEMORY[0x277CBECE8];
      v10 = (*(*a2 + 104))(a2);
      v21 = (*(*a2 + 120))(a2);
      v11 = CFStringCreateWithFormat(v9, 0, v8, v10, v21);
      goto LABEL_11;
    }

    v8 = sub_248DD4D90(v6, @"calculated %1$@ %2$@, expected   %3$@ %4$@", @"calculated %1$@ %2$@, expected   %3$@ %4$@");
    v12 = *MEMORY[0x277CBECE8];
    v13 = (*(*a3 + 104))(a3);
    v14 = (*(*a3 + 120))(a3);
    v15 = (*(*a2 + 104))(a2);
    v23 = (*(*a2 + 120))(a2);
    v11 = CFStringCreateWithFormat(v12, 0, v8, v13, v14, v15, v23);
  }

  else
  {
    if (a2)
    {
      v6 = DIGetBundleRef();
      v7 = @"expected   %1$@ %2$@";
      goto LABEL_7;
    }

    if (!a3)
    {
      return 0;
    }

    v16 = DIGetBundleRef();
    v8 = sub_248DD4D90(v16, @"calculated %1$@ %2$@", @"calculated %1$@ %2$@");
    v17 = *MEMORY[0x277CBECE8];
    v18 = (*(*a3 + 104))(a3);
    v22 = (*(*a3 + 120))(a3);
    v11 = CFStringCreateWithFormat(v17, 0, v8, v18, v22);
  }

LABEL_11:
  v19 = v11;
  if (v8)
  {
    CFRelease(v8);
  }

  return v19;
}

uint64_t sub_248DABB5C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 128))(a1);
  if (v4 != (*(*a2 + 128))(a2))
  {
    return 0;
  }

  v5 = (*(*a1 + 88))(a1);
  if (v5 != (*(*a2 + 88))(a2))
  {
    return 0;
  }

  v6 = (*(*a1 + 88))(a1);
  v7 = v6 >> 3;
  if ((v6 & 7) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  if (!v8)
  {
    return 1;
  }

  v9 = v6;
  v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v11 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    (*(*a1 + 96))(a1, v10, v9);
    (*(*a2 + 96))(a2, v12, v9);
    v16 = strncmp(v10, v12, v8) == 0;
LABEL_17:
    free(v10);
    v14 = v16;
    goto LABEL_18;
  }

  v16 = 0;
  v14 = 0;
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v12)
  {
    free(v12);
  }

  return v14;
}

void *sub_248DABD70(unsigned int *a1, void *a2, unsigned int a3)
{
  v3 = a3;
  __src = bswap32(a1[28]);
  if ((*(*a1 + 88))(a1) < a3)
  {
    v3 = (*(*a1 + 88))(a1);
  }

  v6 = v3 >> 3;
  if ((v3 & 7) != 0)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  return memcpy(a2, &__src, v7);
}

CFMutableStringRef sub_248DABE30(CFMutableStringRef *a1)
{
  v2 = ((*a1)[2].length)(a1);
  v3 = v2 >> 3;
  if ((v2 & 7) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  CFStringReplaceAll(a1[13], &stru_285BCD368);
  if (v2)
  {
    v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      CFStringAppend(a1[13], @"$");
      ((*a1)[3].isa)(a1, v6, v2);
      if (v4)
      {
        v7 = v6;
        do
        {
          v8 = *v7++;
          snprintf(__str, 3uLL, "%02hX", v8);
          CFStringAppendCString(a1[13], __str, 0x600u);
          LODWORD(v4) = v4 - 1;
        }

        while (v4);
      }

      free(v6);
    }
  }

  return a1[13];
}

CFStringRef sub_248DABF5C(const __CFString *a1, uint64_t a2, const __CFBoolean *a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  Length = CFStringGetLength(a1);
  v8 = v6 - Length;
  if (v6 > Length)
  {
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], v6);
    if (Mutable)
    {
      v11 = Mutable;
      if (a2 < 0)
      {
        CFStringAppend(Mutable, a1);
        CFStringPad(v11, @" ", v6, 1);
      }

      else
      {
        CFStringPad(Mutable, @" ", v8, 1);
        CFStringAppend(v11, a1);
      }

      Copy = CFStringCreateCopy(v9, v11);
      CFRelease(v11);
      return Copy;
    }

    return 0;
  }

  v13 = Length;
  Value = CFBooleanGetValue(a3);
  v15 = *MEMORY[0x277CBECE8];
  if (!Value || v6 == v13)
  {

    return CFStringCreateCopy(v15, a1);
  }

  else
  {
    v16.location = 0;
    v16.length = v6;

    return CFStringCreateWithSubstring(v15, a1, v16);
  }
}

void sub_248DAC0C4(uint64_t a1, _DWORD *a2)
{
  *a2 = (*(*a1 + 128))(a1);
  v4 = (*(*a1 + 88))(a1);
  if (v4 >= 0x400)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  a2[1] = v5;
  (*(*a1 + 96))(a1, a2 + 2, 1024);
  v6 = a2[1] + 7;
  if (v6 <= 0x3FF)
  {
    v7 = v6 >> 3;

    bzero(a2 + v7 + 8, 128 - v7);
  }
}

CFStringRef sub_248DAC1C8(uint64_t a1)
{
  v2 = (*(*a1 + 176))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = (*(*a1 + 296))(a1);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = (*(*v4 + 488))(v4);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = (*(*v5 + 24))(v5, @"bs-persistentID");
  if (v7)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      v9 = (*(*v6 + 24))(v6, @"bs-modtime");
      if (v9)
      {
        v10 = v9;
        v11 = CFStringGetTypeID();
        if (v11 == CFGetTypeID(v10))
        {
          v12 = (*(*v3 + 104))(v3);
          if (v12)
          {
            v13 = v12;
            v14 = CFStringGetTypeID();
            if (v14 == CFGetTypeID(v13))
            {
              v15 = (*(*v3 + 120))(v3);
              if (v15)
              {
                v16 = v15;
                v17 = CFStringGetTypeID();
                if (v17 == CFGetTypeID(v16))
                {
                  v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ @ %@ - %@:%@", v7, v10, v13, v16);
                  goto LABEL_14;
                }
              }
            }
          }
        }
      }
    }

LABEL_13:
    v7 = 0;
  }

LABEL_14:
  DIDiskImageObjectRelease(v3);
  return v7;
}

uint64_t sub_248DAC488(uint64_t *a1)
{
  v2 = sub_248DC7A7C(a1);
  result = (*(v3 + 208))(v2);
  if (result)
  {
    sub_248DCA174();
    v6 = (*(v5 + 296))(a1);
    v7 = sub_248DC7A7C(v6);
    v9 = *(v8 + 96);

    return v9(v7);
  }

  return result;
}

uint64_t sub_248DAC530(uint64_t a1)
{
  v1 = *(a1 + 904);
  if (v1)
  {
    v2 = *v1;
    v3 = *(*v1 + 200);
    if (!v3)
    {
      return 1;
    }

    for (i = (v2 + 204); *i >= -2147483639 || ((0x15Fu >> *i) & 1) == 0; i += 10)
    {
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_248DAC584(void *a1)
{
  if (!(*(*a1 + 688))(a1))
  {
    return 0;
  }

  v2 = a1[25];
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 96);

  return v3();
}

__CFDictionary *sub_248DAC65C(uint64_t a1)
{
  v2 = (*(*a1 + 296))(a1);
  v3 = MEMORY[0x277CBECE8];
  if (v2 && (v4 = (*(*v2 + 456))(v2)) != 0)
  {
    Mutable = v4;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return Mutable;
    }
  }

  v6 = sub_248DACBE0();
  if (v6)
  {
    v7 = v6;
    v8 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
    if (v8)
    {
      v9 = v8;
      v10 = sub_248DACBC4(v8, 0x8000100u);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, @"icon-path", v10);
        CFRelease(v9);
        v9 = v11;
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }

  valuePtr = 512;
  v12 = *v3;
  v13 = CFNumberCreate(*v3, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"blocksize", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = (*(*a1 + 72))(a1);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(Mutable, @"image-type", v14);
    CFRelease(v15);
  }

  v16 = (*(*a1 + 288))(a1);
  v17 = *MEMORY[0x277CBED10];
  v18 = *MEMORY[0x277CBED28];
  if (v16)
  {
    v19 = *MEMORY[0x277CBED10];
  }

  else
  {
    v19 = *MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(Mutable, @"write-protected", v19);
  v20 = (*(*a1 + 280))(a1);
  if (v20)
  {
    CFDictionarySetValue(Mutable, @"backingstore-id", v20);
  }

  if ((*(*a1 + 384))(a1))
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  CFDictionarySetValue(Mutable, @"image-encrypted", v21);
  if ((*(*a1 + 288))(a1))
  {
    v24 = (*(*a1 + 232))(a1);
    v22 = CFNumberCreate(v12, kCFNumberLongLongType, &v24);
    CFDictionarySetValue(Mutable, @"virtual-band-size", v22);
    CFRelease(v22);
  }

  return Mutable;
}

uint64_t sub_248DAC9B0(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 456))();
  }

  return result;
}

__CFDictionary *sub_248DAC9E8(uint64_t a1)
{
  v2 = sub_248DACA90(a1);
  if (v2)
  {
    Mutable = v2;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return Mutable;
    }
  }

  v4 = (*(*a1 + 24))(a1, @"bs-apple-quarantine-info");
  if (v4)
  {
    CFDictionarySetValue(Mutable, @"bs-apple-quarantine-info", v4);
  }

  return Mutable;
}

__CFDictionary *sub_248DACA90(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    sub_248DC8144(a1, Mutable);
  }

  return Mutable;
}

const __CFURL *sub_248DACAF4(CFURLRef relativeURL)
{
  v1 = relativeURL;
  if (!relativeURL)
  {
    return v1;
  }

  v2 = CFURLCopyAbsoluteURL(relativeURL);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  v5 = CFURLCopyScheme(v4);
  v6 = v5;
  if (!v5 || CFStringCompare(v5, @"file", 0) == kCFCompareEqualTo)
  {
    Copy = CFURLCopyFileSystemPath(v4, kCFURLPOSIXPathStyle);
LABEL_10:
    v1 = Copy;
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (CFURLGetString(v1))
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = CFURLGetString(v1);
    Copy = CFStringCreateCopy(v7, v8);
    goto LABEL_10;
  }

  v1 = 0;
  if (v3)
  {
LABEL_11:
    CFRelease(v3);
  }

LABEL_12:
  if (v6)
  {
    CFRelease(v6);
  }

  return v1;
}

__CFBundle *sub_248DACBE0()
{
  result = DIGetBundleRef();
  if (result)
  {

    return CFBundleCopyResourceURL(result, @"CDiskImage", @"icns", 0);
  }

  return result;
}

__CFString *sub_248DACC28(uint64_t a1)
{
  v1 = *(a1 + 904);
  if (v1)
  {
    v2 = *v1;
    v3 = *(*v1 + 200);
    if (v3)
    {
      v4 = (v2 + 204);
      result = @"UDIF read-only compressed (bzip2)";
      while (1)
      {
        v6 = *v4;
        if (*v4 <= -2147483642)
        {
          switch(v6)
          {
            case -2147483644:
              return @"UDIF read-only compressed (ADC)";
            case -2147483643:
              return @"UDIF read-only compressed (zlib)";
            case -2147483642:
              return result;
          }
        }

        else
        {
          switch(v6)
          {
            case -1:
              goto LABEL_13;
            case -2147483641:
              return @"UDIF read-only compressed (lzfse)";
            case -2147483640:
              return @"UDIF read-only compressed (lzma)";
          }
        }

        if (v6 < 0)
        {
          return @"UDIF read-only compressed";
        }

LABEL_13:
        v4 += 10;
        if (!--v3)
        {
          return @"UDIF read-only";
        }
      }
    }
  }

  return @"UDIF read-only";
}

uint64_t sub_248DACD20(void *a1)
{
  result = a1[19];
  if (!result)
  {
    v3 = (*(*a1 + 192))(a1);
    (*(*a1 + 504))(a1, v3);
    if (v3)
    {
      CFRelease(v3);
    }

    return a1[19];
  }

  return result;
}

__CFDictionary *sub_248DACDB8(uint64_t a1)
{
  if (!(*(*a1 + 296))(a1))
  {
    return 0;
  }

  v2 = (*(*a1 + 296))(a1);
  v3 = (*(*v2 + 48))(v2);
  values = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  TypeID = CFArrayGetTypeID();
  v7 = *MEMORY[0x277CBECE8];
  v8 = v5 == TypeID ? CFArrayCreateCopy(*MEMORY[0x277CBECE8], v4) : CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  v9 = v8;
  if (!v8)
  {
    return 0;
  }

  v10 = (*(*a1 + 288))(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = Mutable;
  if (Mutable)
  {
    if (v10)
    {
      v13 = @"writeable-components";
    }

    else
    {
      v13 = @"readonly-components";
    }

    CFDictionarySetValue(Mutable, v13, v9);
  }

  CFRelease(v9);
  return v12;
}

void sub_248DACF58(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 152) = cf;
}

uint64_t sub_248DACF98(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return 0;
  }

  LOBYTE(v2) = 0;
  do
  {
    if (v2)
    {
      v2 = 1;
    }

    else
    {
      v2 = (*(*v1 + 104))(v1);
    }

    v1 = (*(*v1 + 496))(v1);
  }

  while (v1);
  return v2;
}

uint64_t sub_248DAD048(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

__CFDictionary *sub_248DAD088(uint64_t a1)
{
  v26 = (*(*a1 + 96))(a1);
  v2 = (*(*a1 + 296))(a1);
  v3 = MEMORY[0x277CBECE8];
  if (v2 && (v4 = (*(*v2 + 464))(v2)) != 0)
  {
    Mutable = v4;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return Mutable;
    }
  }

  v6 = sub_248DACBE0();
  if (v6)
  {
    v7 = v6;
    v8 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
    if (v8)
    {
      v9 = v8;
      v10 = sub_248DACBC4(v8, 0x8000100u);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, @"icon-path", v10);
        CFRelease(v9);
        v9 = v11;
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }

  valuePtr = 512;
  v12 = *v3;
  v13 = CFNumberCreate(*v3, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"blocksize", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = CFNumberCreate(v12, kCFNumberSInt64Type, &v26);
  CFDictionarySetValue(Mutable, @"blockcount", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = (*(*a1 + 72))(a1);
  if (v15)
  {
    v16 = v15;
    CFDictionarySetValue(Mutable, @"image-type", v15);
    CFRelease(v16);
  }

  v17 = (*(*a1 + 88))(a1);
  if (v17 == 1430541391 || v17 == 1430538566)
  {
    v18 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(Mutable, @"image-format-read-only", *MEMORY[0x277CBED28]);
    v19 = *MEMORY[0x277CBED10];
  }

  else
  {
    v19 = *MEMORY[0x277CBED10];
    CFDictionarySetValue(Mutable, @"image-format-read-only", *MEMORY[0x277CBED10]);
    v18 = *MEMORY[0x277CBED28];
  }

  if ((*(*a1 + 288))(a1))
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  CFDictionarySetValue(Mutable, @"write-protected", v20);
  v21 = (*(*a1 + 280))(a1);
  if (v21)
  {
    CFDictionarySetValue(Mutable, @"backingstore-id", v21);
  }

  if ((*(*a1 + 384))(a1))
  {
    v22 = v18;
  }

  else
  {
    v22 = v19;
  }

  CFDictionarySetValue(Mutable, @"image-encrypted", v22);
  if ((*(*a1 + 288))(a1))
  {
    v25 = (*(*a1 + 232))(a1);
    v23 = CFNumberCreate(v12, kCFNumberLongLongType, &v25);
    CFDictionarySetValue(Mutable, @"virtual-band-size", v23);
    CFRelease(v23);
  }

  return Mutable;
}

uint64_t sub_248DAD4C8(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

__CFDictionary *sub_248DAD500(uint64_t a1)
{
  v2 = sub_248DAD5C0(a1);
  if (v2)
  {
    Mutable = v2;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return Mutable;
    }
  }

  CFDictionaryAddValue(Mutable, @"Physical Interconnect Location", @"File");
  v4 = (*(*a1 + 24))(a1, @"bs-apple-quarantine-info");
  if (v4)
  {
    CFDictionarySetValue(Mutable, @"bs-apple-quarantine-info", v4);
  }

  return Mutable;
}

__CFDictionary *sub_248DAD5C0(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    sub_248DC8144(a1, Mutable);
  }

  return Mutable;
}

uint64_t sub_248DAD620(uint64_t a1, int a2)
{
  *a1 = &unk_285BCC258;
  pthread_rwlock_init((a1 + 8), 0);
  *(a1 + 208) = a2;
  *(a1 + 216) = malloc_type_calloc(a2, 8uLL, 0x2004093837F09uLL);
  if (*(a1 + 208) >= 1)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_248DAD738(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = (*(*v2 + 664))(v2);
    *(a1 + 192) = v3;
  }

  else
  {
    v3 = *(a1 + 192);
  }

  return v3 & 1;
}

uint64_t sub_248DAD79C(_DWORD *a1, uint64_t a2)
{
  v4 = a1[80];
  if (v4 < 0 || (v5 = fcntl(v4, 3, 0), v5 != -1) && (!a2 ? (v6 = 0) : (v6 = 128), fcntl(a1[80], 4, v5 & 0xFFFFFF7F | v6) != -1))
  {
    sub_248DAD8A0(a1, a2);
    if ((*(*a1 + 72))(a1))
    {
      if (a2)
      {
        (*(*a1 + 472))(a1, 1);
        sub_248DA1B10(a1);
      }

      else
      {
        sub_248DA0DF0(a1);
      }
    }
  }

  return *(a1 + 192);
}

uint64_t sub_248DAD8D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v5 = *(a1 + 208);
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 8 * v5;
    do
    {
      v9 = *(*(a1 + 216) + v6);
      if (v9 && *(v9 + 24) == 1)
      {
        v10 = *(v9 + 32);
        v11 = *(v9 + 40) + v10;
        ++*(v9 + 16);
        v12 = __OFSUB__(a2, v10);
        v13 = a2 - v10;
        if (v13 < 0 == v12 && v11 > a2)
        {
          if (v11 - a2 >= a3)
          {
            v15 = a3;
          }

          else
          {
            v15 = v11 - a2;
          }

          v16 = *(v9 + 56) + (v13 << 9);
          v7 = 1;
          ++*(v9 + 8);
          *(v9 + 16) = 1;
          *a4 = v15;
          *a5 = v16;
        }
      }

      v6 += 8;
    }

    while (v8 != v6);
  }

  return v7 & 1;
}

uint64_t sub_248DAD978(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 1024) == 1 && *(a1 + 1028) == a3)
  {
    return 0;
  }

  *(a1 + 1024) = 0;
  result = sub_248DAAD84(a1, a2, *(a1 + 1008), *(a1 + 1008) + *(a1 + 1016) - *(a2 + 32));
  if (!result)
  {
    *(a1 + 1028) = a3;
    *(a1 + 1024) = 1;
  }

  return result;
}

uint64_t sub_248DAD9F4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = sub_248DADAB0(a1, a3);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  *(v8 + 24) = 0;
  *(v8 + 8) = vdupq_n_s64(1uLL);
  *(v8 + 32) = a2;
  v10 = sub_248DADBBC(v8, a3);
  if (v10)
  {
    fwrite("CUDIFCacheObject::cacheData: setLength failed\n", 0x2EuLL, 1uLL, *MEMORY[0x277D85DF8]);
    sub_248DD1EBC(a1);
  }

  else
  {
    memcpy(*(v9 + 56), a4, a3 << 9);
    *(v9 + 24) = 1;
  }

  return v10;
}

uint64_t sub_248DADAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1 + 216);
  v7 = -1;
  v8 = 0x8000000000000000;
  while (1)
  {
    v9 = *(v6 + 8 * v5);
    if (v9)
    {
      break;
    }

LABEL_8:
    if (v2 == ++v5)
    {
      if ((v7 & 0x80000000) != 0)
      {
        return 0;
      }

      return *(*(a1 + 216) + 8 * v7);
    }
  }

  if (*(v9 + 24) == 1 || *(v9 + 48) < a2)
  {
    v10 = sub_248DADB60(v9);
    if (v10 > v8)
    {
      v7 = v5;
      v8 = v10;
    }

    goto LABEL_8;
  }

  v7 = v5;
  if ((v5 & 0x80000000) == 0)
  {
    return *(*(a1 + 216) + 8 * v7);
  }

  return 0;
}

uint64_t sub_248DADB60(uint64_t a1)
{
  if (*(a1 + 24) != 1)
  {
    return *(a1 + 48) + 0x7FFFFFFFLL;
  }

  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 40);
  do
  {
    if (v3)
    {
      v2 = v1;
    }

    ++v1;
    v3 >>= 1;
  }

  while (v1 != 64);
  if (*(a1 + 16) - (v2 + 2 * *(a1 + 8)) >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return *(a1 + 16) - (v2 + 2 * *(a1 + 8));
  }
}

uint64_t sub_248DADBBC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) >= a2)
  {
    v5 = (a1 + 40);
    goto LABEL_7;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    free(v4);
  }

  *(a1 + 40) = 0;
  v5 = (a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = malloc_type_malloc(a2 << 9, 0x66F4437BuLL);
  if (v6)
  {
    *(a1 + 48) = a2;
    *(a1 + 56) = v6;
LABEL_7:
    result = 0;
    *v5 = a2;
    return result;
  }

  return 12;
}

uint64_t sub_248DADC40(io_object_t object, CFStringRef *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  if (!object)
  {
    return 22;
  }

  if (!IOObjectConformsTo(object, "IOMedia"))
  {
    return 3758097090;
  }

  v4 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(object, @"BSD Name", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFStringCreateWithFormat(v4, 0, @"/dev/%@", CFProperty);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 4294962336;
    }

    *a2 = v7;
    CFRelease(v6);
  }

  else
  {
    v8 = 0;
    *a2 = 0;
  }

  return v8;
}

uint64_t sub_248DADD14(const void *a1, CFTypeRef *a2, _WORD *a3, void *a4)
{
  v15 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    return 22;
  }

  v6 = 2;
  v7 = getmntinfo(&v15, 2);
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = v15; ; ++i)
    {
      v10 = sub_248DC6DDC(i);
      if (v10)
      {
        v11 = v10;
        if (CFEqual(v10, a1))
        {
          v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], i->f_mntonname, 0x8000100u);
          if (v12)
          {
            v13 = v12;
            if (a2)
            {
              *a2 = CFRetain(v12);
            }

            CFRelease(v11);
            v6 = 0;
          }

          else
          {
            v6 = 4294962336;
            v13 = v11;
          }

          CFRelease(v13);
          return v6;
        }

        CFRelease(v11);
      }

      if (!--v8)
      {
        return 2;
      }
    }
  }

  return v6;
}

void sub_248DADE28(uint64_t a1)
{
  sub_248DADE60(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DADE60(uint64_t a1)
{
  *a1 = &unk_285BCAD00;
  v2 = *(a1 + 904);
  if (v2)
  {
    sub_248DD4E4C(v2);
  }

  *(a1 + 904) = 0;
  sub_248DADF24(a1);
  pthread_mutex_destroy((a1 + 944));
  v3 = *(a1 + 1008);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 368);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 376);
  if (v5)
  {
    DIDiskImageObjectRelease(v5);
    *(a1 + 376) = 0;
  }

  pthread_rwlock_destroy((a1 + 160));

  return sub_248DAE12C(a1);
}

void sub_248DADF24(uint64_t a1)
{
  v2 = *(a1 + 928);
  if (v2)
  {
    if (*(a1 + 912) >= 1)
    {
      v3 = 0;
      do
      {
        sub_248DD4E4C(*(*(a1 + 928) + 8 * v3));
        *(*(a1 + 928) + 8 * v3++) = 0;
      }

      while (v3 < *(a1 + 912));
      v2 = *(a1 + 928);
    }

    free(v2);
  }

  *(a1 + 928) = 0;
  v4 = *(a1 + 936);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 936) = 0;
  }

  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
}

void sub_248DADFA4(uint64_t a1)
{
  sub_248DADFDC(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DADFDC(uint64_t a1)
{
  *a1 = &unk_285BCC258;
  v2 = *(a1 + 216);
  if (v2)
  {
    v3 = *(a1 + 208);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(a1 + 216) + 8 * i);
        if (v5)
        {
          (*(*v5 + 8))(v5);
          v3 = *(a1 + 208);
        }
      }

      v2 = *(a1 + 216);
    }

    free(v2);
  }

  pthread_rwlock_destroy((a1 + 8));
  return a1;
}

void sub_248DAE088(void *a1)
{
  *a1 = &unk_285BCC278;
  v1 = a1[7];
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x24C1EBE70);
}

void sub_248DAE0F4()
{
  sub_248DA799C();

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DAE12C(void *a1)
{
  *a1 = &unk_285BCA220;
  v2 = a1[17];
  if (v2)
  {
    DIDiskImageObjectRelease(v2);
  }

  a1[17] = 0;
  v3 = a1[19];
  if (v3)
  {
    CFRelease(v3);
    a1[19] = 0;
  }

  return sub_248DA1D68(a1);
}

void sub_248DAE1A0(uint64_t a1)
{
  sub_248DAE1D8(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DAE1D8(uint64_t a1)
{
  *a1 = &unk_285BCBC08;
  if (sub_248DA1AA8(a1))
  {
    (*(*a1 + 280))(a1, 1);
  }

  if ((*(*a1 + 592))(a1))
  {
    (*(*a1 + 368))(a1, 1);
  }

  if ((*(*a1 + 616))(a1))
  {
    (*(*a1 + 352))(a1, 1);
  }

  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;

  return sub_248DAE344(a1);
}

void *sub_248DAE348(char **a1)
{
  *a1 = &unk_285BCB2C8;
  if (sub_248DA1AA8(a1))
  {
    (*(*a1 + 35))(a1, 1);
  }

  if ((*(*a1 + 74))(a1))
  {
    (*(*a1 + 46))(a1, 1);
  }

  if ((*(*a1 + 77))(a1))
  {
    (*(*a1 + 44))(a1, 1);
  }

  sub_248DA1714(a1[25]);

  return sub_248DA1C90(a1);
}

uint64_t sub_248DAE4C0(const __CFURL *a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"diskimage-class", @"CSparseDiskImage") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"diskimage-class", @"CSparseDiskImage") > 0)
  {
    return 1000;
  }

  Value = CFDictionaryGetValue(theDict, @"create-image-type");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      if (CFStringCompare(v6, @"SPARSE", 0))
      {
        return 4294966296;
      }

      else
      {
        return 1000;
      }
    }

    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      CFStringCompare(v6, @"SPARSEBUNDLE", 0);
      return 4294966296;
    }
  }

  v10 = CFURLCopyPathExtension(a1);
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  if (CFStringCompare(v10, @"sparseimage", 1uLL))
  {
    v4 = 1;
  }

  else
  {
    v4 = 1000;
  }

  CFRelease(v11);
  return v4;
}

uint64_t sub_248DAE5F4(const __CFURL *a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"diskimage-class", @"CRawDiskImage") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"diskimage-class", @"CRawDiskImage") > 0)
  {
    return 1000;
  }

  Value = CFDictionaryGetValue(theDict, @"create-image-type");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFStringGetTypeID()))
  {
    v4 = 1000;
    if (CFStringCompare(v6, @"UDIF", 0))
    {
      if (CFStringCompare(v6, @"UDTO", 0))
      {
        v4 = 4294966296;
      }

      else
      {
        v4 = 1000;
      }
    }

    if (CFStringCompare(v6, @"UNIV", 0) == kCFCompareEqualTo)
    {
      if (CFDictionaryGetValue(theDict, @"hybrid-image-source-array"))
      {
        return 9999;
      }

      else
      {
        return 4294966296;
      }
    }
  }

  else
  {
    v8 = CFURLCopyPathExtension(a1);
    if (v8)
    {
      v9 = v8;
      if (CFStringCompare(v8, @"dmg", 1uLL) && CFStringCompare(v9, @"cdr", 1uLL))
      {
        v4 = 100;
      }

      else
      {
        v4 = 1000;
      }

      CFRelease(v9);
    }

    else
    {
      return 100;
    }
  }

  return v4;
}