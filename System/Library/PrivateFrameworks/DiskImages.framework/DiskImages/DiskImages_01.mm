CFURLRef sub_248DAE768(CFURLRef url, const __CFString *a2, int a3)
{
  v3 = url;
  if (!url)
  {
    return v3;
  }

  v6 = CFURLCopyPathExtension(url);
  if (v6)
  {
    v7 = v6;
    if (CFStringCompare(v6, a2, 1uLL))
    {
      v3 = sub_248DB80E8(*MEMORY[0x277CBECE8], v3, a2, a3);
    }

    else if (CFURLHasDirectoryPath(v3) == a3)
    {
      CFRetain(v3);
    }

    else
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x277CBECE8], v3);
      if (v11)
      {
        v12 = v11;
        v3 = sub_248DB80E8(v10, v11, a2, a3);
        CFRelease(v12);
      }

      else
      {
        v3 = 0;
      }
    }

    CFRelease(v7);
    return v3;
  }

  v8 = *MEMORY[0x277CBECE8];

  return sub_248DB80E8(v8, v3, a2, a3);
}

const void *sub_248DAE894(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DAE8D4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, CFTypeRef *a7)
{
  cf = 0;
  v21 = 0;
  v19 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v14 = 22;
  if (a1 && a2 && a6)
  {
    if (sub_248D9F090())
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v16 = Mutable;
        v17 = 2;
        while (1)
        {
          if ((a3 >> v17))
          {
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v14 = sub_248DAEAA4(v17, a1, a2, a4, a5, &v19, &cf);
            if (cf)
            {
              CFStringAppend(v16, cf);
            }

            if (v14 != 111)
            {
              break;
            }
          }

          if (--v17 == -1)
          {
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v14 = sub_248DAED0C(a1, a2, a4, a5, &v21, &cf);
            if (cf)
            {
              CFStringAppend(v16, cf);
            }

            if (v14 && v21)
            {
              DIDiskImageObjectRelease(v21);
              v21 = 0;
            }

            goto LABEL_29;
          }
        }

        if (!v14)
        {
          v21 = v19;
        }

LABEL_29:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        *a6 = v21;
        if (a7)
        {
          *a7 = v16;
          if (!CFStringGetLength(v16) && *a7)
          {
            CFRelease(*a7);
            *a7 = 0;
          }
        }

        else
        {
          CFRelease(v16);
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

  return v14;
}

uint64_t sub_248DAEAA4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 > 2)
  {
    return 111;
  }

  v8 = off_278F802C8[a1];
  if (!v8[5])
  {
    return 111;
  }

  v14 = 0;
  v15 = 0;
  v16 = (v8 + 12);
  v17 = -1;
  do
  {
    v18 = *(v16 - 9);
    if (v18)
    {
      v19 = v18(a2, a3);
      if (v19 > v15)
      {
        v17 = v14;
        v15 = v19;
      }
    }

    ++v14;
    v20 = *v16;
    v16 += 7;
  }

  while (v20);
  if ((v17 & 0x80000000) != 0)
  {
    return 111;
  }

  v21 = off_278F802C8[a1][7 * v17 + 4];
  if (!v21)
  {
    return 78;
  }

  return (v21)(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_248DAEBD0(int a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"fileencoding-class", @"CEncryptedEncoding") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"fileencoding-class", @"CEncryptedEncoding") > 0)
  {
    return 1000;
  }

  if (!theDict)
  {
    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, @"encryption-class");
  if (!Value)
  {
    return 4294966296;
  }

  v5 = Value;
  v7 = 0;
  if (sub_248D9F16C(Value, &v7))
  {
    if (v7)
    {
      return 1000;
    }

    else
    {
      return 4294966296;
    }
  }

  else
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      if (CFStringCompare(v5, @"AES-128", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"CEncryptedEncoding", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"AES-256", 1uLL) == kCFCompareEqualTo)
      {
        return 1000;
      }

      if (CFStringCompare(v5, &stru_285BCD368, 1uLL))
      {
        return 1;
      }

      else
      {
        return 4294966296;
      }
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_248DAED0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!off_281B89E38)
  {
    return 111;
  }

  v11 = 0;
  v12 = 0;
  v13 = &off_281B89E70;
  v14 = -1;
  do
  {
    v15 = *(v13 - 9);
    if (v15)
    {
      v16 = v15(a1, a2);
      if (v16 > v11)
      {
        v14 = v12;
        v11 = v16;
      }
    }

    ++v12;
    v17 = *v13;
    v13 += 7;
  }

  while (v17);
  if ((v14 & 0x80000000) != 0)
  {
    return 111;
  }

  v18 = *(&off_281B89E10 + 7 * v14 + 4);
  if (!v18)
  {
    return 78;
  }

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_248DAEE1C(const __CFURL *a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"backingstore-class", @"CBSDBackingStore") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  if (sub_248DA0698(theDict, @"backingstore-class", @"CBSDBackingStore") > 0)
  {
    return 1000;
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

  else
  {
    v4 = 100;
    if (theDict)
    {
      if (CFDictionaryGetValueIfPresent(theDict, @"file-type", 0))
      {
        LODWORD(v4) = 200;
      }

      else
      {
        LODWORD(v4) = 100;
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"file-creator", 0))
      {
        v4 = (v4 + 100);
      }

      else
      {
        v4 = v4;
      }
    }
  }

  CFRelease(v6);
  return v4;
}

uint64_t sub_248DAEF20(const __CFDictionary *a1, const void *a2, uint64_t a3)
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

  return sub_248DAEF70(Value, a3);
}

uint64_t sub_248DAEF70(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      v5 = sub_248DA6EE8(a1);
      if (v5)
      {
        return v5;
      }

      else
      {
        return v2;
      }
    }

    else
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

const __CFNumber *sub_248DAF00C(const char *a1, const __CFDictionary *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (stat(a1, &v11) < 0)
  {
    return *__error();
  }

  valuePtr = 0;
  st_uid = v11.st_uid;
  st_gid = v11.st_gid;
  v6 = sub_248DAE894(a2, @"uid");
  if (v6 && CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr))
  {
    st_uid = valuePtr;
  }

  v7 = sub_248DAE894(a2, @"gid");
  if (v7 && CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
  {
    st_gid = valuePtr;
  }

  if ((st_uid != v11.st_uid || st_gid != v11.st_gid) && chown(a1, st_uid, st_gid) < 0)
  {
    return *__error();
  }

  result = sub_248DAE894(a2, @"mode");
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (result)
    {
      v9 = valuePtr & 0xFFF;
      if (v9 == (v11.st_mode & 0xFFF) || (chmod(a1, v9) & 0x80000000) == 0)
      {
        return 0;
      }

      return *__error();
    }
  }

  return result;
}

uint64_t sub_248DAF140(const char *a1, _BYTE *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a1)
  {
    if (statfs(a1, &v13) < 0 || (v10 = 5, v11 = xmmword_248DDDC90, v12 = 0, result = getattrlist(v13.f_mntonname, &v10, &v7, 0x24uLL, 0), (result & 0x80000000) != 0))
    {
      result = *__error();
    }

    else
    {
      if ((BYTE8(v8) & 0x40) != 0 && a2 && (BYTE8(v7) & 0x40) != 0)
      {
        *a2 = 1;
      }

      if ((BYTE4(v8) & 0x40) != 0 && a3 && (BYTE4(v7) & 0x40) != 0)
      {
        *a3 = 1;
      }
    }
  }

  else
  {
    result = 22;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

CFURLRef sub_248DAF250(char *__s)
{
  v1 = __s;
  if (!__s)
  {
    return v1;
  }

  v2 = strchr(__s, 58);
  v3 = strstr(v1, "://");
  v4 = strchr(v1, 47);
  if (!v2 || !v4 || !v3 || v2 >= v4 || v2 != v3)
  {
    memset(&v14, 0, sizeof(v14));
    if (stat(v1, &v14))
    {
      v8 = 0;
    }

    else
    {
      v8 = (v14.st_mode & 0xF000) == 0x4000;
    }

    v9 = v8;
    v10 = strlen(v1);
    v11 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v1, v10, v9);
    v1 = v11;
    if (v11)
    {
      v12 = CFURLCopyAbsoluteURL(v11);
      if (v12)
      {
        v13 = v12;
        CFRelease(v1);
        return v13;
      }
    }

    return v1;
  }

  v5 = strlen(v1);
  v6 = *MEMORY[0x277CBECE8];

  return CFURLCreateWithBytes(v6, v1, v5, 0x8000100u, 0);
}

void sub_248DAF3AC(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 104) = cf;
}

uint64_t sub_248DAF3EC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a2 && !(*(*a1 + 152))(a1))
  {
    return 78;
  }

  result = 0;
  a1[128] = v2;
  return result;
}

uint64_t sub_248DAF498(uint64_t a1, const void *a2, uint64_t a3)
{
  __dst[64] = *MEMORY[0x277D85DE8];
  memcpy(__dst, a2, 0x200uLL);
  __dst[37] = 0;
  __dst[38] = 0;
  v5.n128_u64[0] = sub_248DA3A74(__dst);
  v6 = (*(*a1 + 272))(a1, v5);
  if (!v6)
  {
    v9 = 0;
    v6 = (*(*a1 + 336))(a1, a3, 512, &v9, __dst);
    (*(*a1 + 280))(a1, 0);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_248DAF5E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *(a1 + 328);
  if (v10)
  {
    v11 = getpid();
    fprintf(v10, "write\t%d\t%016qX\t%08X\n", v11, a2, a3);
    fflush(*(a1 + 328));
  }

  return sub_248DAF678(a1, a2, a3, a4, a5);
}

uint64_t sub_248DAF678(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = 0;
  pthread_mutex_lock((a1 + 216));
  if (!(*(*a1 + 72))(a1))
  {
    v10 = 1;
    goto LABEL_15;
  }

  if (!(*(*a1 + 568))(a1))
  {
    v10 = 9;
    goto LABEL_15;
  }

  v10 = 22;
  if (a4 && a5)
  {
    v11 = a3 + a2;
    v12 = *(a1 + 200);
    if (a3 + a2 <= v12 || ((*(*a1 + 160))(a1) & 1) != 0)
    {
      v13 = *(a1 + 208);
      if (!v13)
      {
        v10 = (*(*a1 + 696))(a1, a2, a3, &v30, a5);
        goto LABEL_34;
      }

      v29 = 0;
      v14 = sub_248DA2924(v13, a2, a3, &v29, 1);
      if (v14 < 1)
      {
        if (!a3)
        {
          goto LABEL_31;
        }

        v28 = v12;
        v16 = 0;
        v21 = a2;
LABEL_28:
        v27 = v11 - v21;
        v12 = v28;
        if (v11 > v21)
        {
          v10 = (*(*a1 + 720))(a1);
          if (!v10)
          {
            v30 = v16 + v27;
          }
        }

        else
        {
LABEL_31:
          v10 = 0;
        }

        goto LABEL_34;
      }

      v15 = v14;
      v28 = v12;
      v16 = 0;
      v17 = v29;
      v18 = v14;
      do
      {
        memmove(v17[2], (a5 + *v17 - a2), v17[1]);
        v16 += v17[1];
        v30 = v16;
        v17 += 3;
        --v18;
      }

      while (v18);
      if (v16 == a3)
      {
        v10 = 0;
        goto LABEL_33;
      }

      v22 = v29;
      v21 = a2;
      while (1)
      {
        v23 = *v22;
        v24 = *v22 - v21;
        if (*v22 > v21)
        {
          v25 = *v22 - v21;
          v26 = (*(*a1 + 720))(a1);
          if (v26)
          {
            v10 = v26;
LABEL_33:
            v12 = v28;
LABEL_34:
            if (v11 > v12 && !v10)
            {
              v10 = 0;
              if (v30 + a2 > *(a1 + 200))
              {
                *(a1 + 200) = v30 + a2;
              }
            }

            goto LABEL_15;
          }

          v16 += v24;
          v30 = v16;
          v23 = *v22;
        }

        v21 = v22[1] + v23;
        v22 += 3;
        if (!--v15)
        {
          goto LABEL_28;
        }
      }
    }

    pthread_mutex_unlock((a1 + 216));
    v19 = 0;
    v10 = 29;
    goto LABEL_17;
  }

LABEL_15:
  pthread_mutex_unlock((a1 + 216));
  if (a4)
  {
    v19 = v30;
LABEL_17:
    *a4 = v19;
  }

  return v10;
}

uint64_t sub_248DAF9AC(void *a1, uint64_t a2, size_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = *(a1[26] + 8);
  v15 = 0;
  if (v8 <= a3)
  {
    v9 = a3 / v8 * v8;
    result = (*(*a1 + 696))(a1, a2, v9, &v15, a4);
    if (result)
    {
      return result;
    }

    v5 %= v8;
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
    if (v5 + v6 <= a1[25])
    {
      v13 = v5 + v6 - 1;
    }

    else
    {
      v13 = v8 + v6 - 1;
    }

    v14 = sub_248DA2BEC(a1[26], v6, v13);
    memmove(*(v12 + 40), v4, v5);
    result = 0;
    *(v12 + 24) = v6;
    *(v12 + 32) = v6 + v14 - 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = 1;
  }

  return result;
}

uint64_t sub_248DAFAF4(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 999;
  }

  v3 = *(a1 + 32) - *(a1 + 24) + 1;
  v4 = *(a1 + 40);
  result = v2(*(a1 + 48));
  if (!result)
  {
    if (v3)
    {
      return 5;
    }

    else
    {
      result = 0;
      *(a1 + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_248DAFBBC(uint64_t a1, off_t a2, size_t a3, ssize_t *a4, void *__buf)
{
  ++*(a1 + 344);
  v6 = pwrite(*(a1 + 320), __buf, a3, a2);
  if (v6 < 0)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t DIUDIFFileAccessOpenFile_0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 4294967253;
  }

  v17 = 0;
  v3 = sub_248DC7A7C(v2);
  v5 = (*(v4 + 272))(v3);
  if (v5)
  {
    return v5;
  }

  v6 = sub_248DC7A7C(*(a1 + 112));
  v8 = (*(v7 + 296))(v6, &v17);
  if (v8)
  {
    v13 = v8;
LABEL_9:
    v14 = sub_248DC7A7C(*(a1 + 112));
    (*(v15 + 280))(v14, 0);
    return v13;
  }

  v9 = *(a1 + 644);
  if (v9 == 1)
  {
    v10 = *(a1 + 112);
    v12 = v17 - 512;
    v11 = (a1 + 128);
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v10 = *(a1 + 112);
    v11 = (a1 + 128);
    v12 = 0;
  }

  v13 = sub_248DA392C(v10, v11, v12);
  if (v13)
  {
    goto LABEL_9;
  }

  return v13;
}

uint64_t sub_248DAFD44(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 4294967253;
  }

  v3 = *(a1 + 644);
  if (v3 != 1)
  {
    if (v3)
    {
      return 0;
    }

    v4 = *(a1 + 160) + *(a1 + 152);
    if (v4 <= *(a1 + 352) + *(a1 + 344))
    {
      v4 = *(a1 + 352) + *(a1 + 344);
    }

    if (v4 <= *(a1 + 176) + *(a1 + 168))
    {
      v4 = *(a1 + 176) + *(a1 + 168);
    }

    v14 = v4 & ~(v4 >> 63);
    v5 = (*(*v2 + 312))(v2);
    if (!v5)
    {
      v6 = (*(**(a1 + 112) + 296))(*(a1 + 112), &v14);
      if (!v6)
      {
        v7 = *(a1 + 112);
        v8 = (a1 + 128);
        v9 = 0;
        return sub_248DAF498(v7, v8, v9);
      }

      return v6;
    }

LABEL_22:
    v11 = v5;
    v13 = DIStrError(v5);
    warnx("updateHeader failed - %s", v13);
    return v11;
  }

  v10 = *(a1 + 160) + *(a1 + 152);
  if (v10 <= *(a1 + 352) + *(a1 + 344))
  {
    v10 = *(a1 + 352) + *(a1 + 344);
  }

  if (v10 <= *(a1 + 176) + *(a1 + 168))
  {
    v10 = *(a1 + 176) + *(a1 + 168);
  }

  v14 = (v10 & ~(v10 >> 63)) + 512;
  v5 = (*(*v2 + 312))(v2);
  if (v5)
  {
    goto LABEL_22;
  }

  v6 = (*(**(a1 + 112) + 296))(*(a1 + 112), &v14);
  if (!v6)
  {
    v7 = *(a1 + 112);
    v9 = v14 - 512;
    v8 = (a1 + 128);
    return sub_248DAF498(v7, v8, v9);
  }

  return v6;
}

uint64_t sub_248DAFF10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) == a2)
  {
    return 0;
  }

  if ((*(*a1 + 568))(a1))
  {
    if ((ftruncate(*(a1 + 320), a2) & 0x80000000) == 0)
    {
      if (*(a1 + 200) > a2)
      {
        v5 = *(a1 + 208);
        if (v5)
        {
          sub_248DA2CF0(v5, a2);
        }
      }

      goto LABEL_9;
    }
  }

  else if ((truncate(*(a1 + 296), a2) & 0x80000000) == 0)
  {
LABEL_9:
    result = 0;
    *(a1 + 200) = a2;
    return result;
  }

  return *__error();
}

uint64_t DIUDIFFileAccessCloseFile_0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 112);
  if (v2)
  {
    if (*(a1 + 640) == 1)
    {
      v3 = sub_248DC7A7C(*(a1 + 120));
      (*(v4 + 72))(v3);
      v5 = sub_248DC7A7C(*(a1 + 120));
      (*(v6 + 136))(v5, v13);
      memcpy((a1 + 208), v13, 0x88uLL);
      *(a1 + 640) = 0;
      v7 = sub_248DAFD44(a1);
      v2 = *(a1 + 112);
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_248DC7A7C(v2);
    v10 = (*(v9 + 280))(v8, 0);
    if (v10 && (v7 == 5 || !v7))
    {
      v7 = v10;
    }
  }

  else
  {
    v7 = 4294967253;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t DIUDIFFileAccessGetResourceFile_0(uint64_t a1, char **a2)
{
  v9 = 0;
  v4 = *(a1 + 664);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_248DB78A4(*(a1 + 112), a1 + 128, &v9);
    if (!v5)
    {
      v6 = v9;
      *(a1 + 664) = v9;
      v5 = (*(*v6 + 48))(v6);
    }

    v4 = v9;
    if (v5)
    {
      v7 = v9 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      DIDiskImageObjectRelease(v9);
      v4 = 0;
    }
  }

  if (a2)
  {
    *a2 = v4;
  }

  return v5;
}

uint64_t sub_248DB01B0(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  v2 = sub_248DD4E14(204);
  result = sub_248DD4D98();
  if (!result)
  {
    **v2 = 0x16D697368;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_248DB0208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (*(*a1 + 168))(a1, a2, a3, a4, a6);
  if (!v13)
  {
    v14 = (*(*a1 + 232))(a1, a2, a5 & 0xFFFFFFF7);
    if (v14)
    {
      goto LABEL_3;
    }

    if (a7)
    {
      v14 = (*(*a1 + 328))(a1, a2, a4, a6, a7);
      if (v14)
      {
        goto LABEL_3;
      }
    }

    v14 = (*(*a1 + 176))(a1, a2);
    if (v14)
    {
      goto LABEL_3;
    }

    v14 = (*(*a1 + 184))(a1, a2);
    if (v14)
    {
      goto LABEL_3;
    }

    if ((a5 & 8) == 0)
    {
      return 0;
    }

    v14 = (*(*a1 + 232))(a1, a2, a5);
    if (v14)
    {
LABEL_3:
      v13 = v14;
    }

    else
    {
      v13 = (*(*a1 + 264))(a1, 32);
      if (!v13)
      {
        return v13;
      }
    }

    (*(*a1 + 248))(a1, a2);
  }

  return v13;
}

uint64_t sub_248DB0414(uint64_t a1, void *a2, unsigned int a3, int a4, const unsigned __int8 *a5)
{
  v5 = 4294967246;
  if (a2 && *(a1 + 104) && *a2)
  {
    if (*(a1 + 114) != 1)
    {
      return 4294967242;
    }

    v10 = sub_248DA67E0(a3);
    if (!v10)
    {
      return 4294962336;
    }

    v11 = v10;
    Value = CFDictionaryGetValue(*(a1 + 104), v10);
    v13 = *MEMORY[0x277CBECE8];
    if (!Value)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (!Mutable)
      {
        goto LABEL_10;
      }

      Value = Mutable;
      CFDictionarySetValue(*(a1 + 104), v11, Mutable);
      CFRelease(Value);
    }

    v15 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v15)
    {
      v16 = v15;
      if (sub_248DA6C04(v15, v15, a2) && sub_248DB05B0(v16, @"ID", a4, 0) && sub_248DB05B0(v16, @"Attributes", 2, 1) && sub_248DB0650(v16, a5))
      {
        CFArrayAppendValue(Value, v16);
        v5 = 0;
        *(a1 + 112) |= 0x20u;
      }

      else
      {
        v5 = 4294967246;
      }

      CFRelease(v11);
      goto LABEL_11;
    }

LABEL_10:
    v5 = 4294962336;
    v16 = v11;
LABEL_11:
    CFRelease(v16);
  }

  return v5;
}

__CFDictionary *sub_248DB05B0(__CFDictionary *result, const void *a2, int a3, int a4)
{
  if (result)
  {
    v7 = result;
    CFDictionaryRemoveValue(result, a2);
    v8 = *MEMORY[0x277CBECE8];
    if (a4)
    {
      result = CFStringCreateWithFormat(v8, 0, @"0x%04hX", a3);
    }

    else
    {
      result = CFStringCreateWithFormat(v8, 0, @"%hd", a3);
    }

    if (result)
    {
      v9 = result;
      CFDictionarySetValue(v7, a2, result);
      CFRelease(v9);
      return 1;
    }
  }

  return result;
}

__CFString *sub_248DB0650(__CFString *result, const unsigned __int8 *a2)
{
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      a2 = &unk_248DDE187;
    }

    result = CFStringCreateWithPascalString(*MEMORY[0x277CBECE8], a2, 0);
    if (result)
    {
      v3 = result;
      CFDictionarySetValue(v2, @"Name", result);
      CFRelease(v3);
      return 1;
    }
  }

  return result;
}

uint64_t sub_248DB06C4(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 104))
  {
    return 4294967097;
  }

  if (!a2)
  {
    return 4294967246;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  v4 = sub_248DA6D78(a1, a2, 0);
  if (!v4)
  {
    return 4294967104;
  }

  if (sub_248DB05B0(v4, @"Attributes", a3, 1))
  {
    return 0;
  }

  return 4294967097;
}

uint64_t sub_248DB074C(uint64_t a1, uint64_t a2)
{
  result = 4294967246;
  if (a2 && *(a1 + 104))
  {
    if (*(a1 + 114) == 1)
    {
      v8 = 0;
      v4 = sub_248DA6D78(a1, a2, &v8);
      if (v4)
      {
        v5 = v4;
        v7 = 0;
        if (sub_248DA6144(v4, @"Attributes", &v7) && (v6 = v7 | 2, v7 |= 2u, sub_248DB05B0(v5, @"Attributes", v6, 1)))
        {
          result = 0;
          *(a1 + 112) |= 0x20u;
        }

        else
        {
          return 4294967097;
        }
      }

      else
      {
        return 4294967104;
      }
    }

    else
    {
      return 4294967242;
    }
  }

  return result;
}

uint64_t sub_248DB080C(uint64_t a1, const UInt8 **a2)
{
  if (!a2 || !*(a1 + 104))
  {
    return 4294967246;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  if ((*(a1 + 112) & 0x80) != 0)
  {
    return 4294967098;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  v6 = sub_248DA6D78(a1, a2, &v7);
  if (v6)
  {
    return sub_248DB0898(v6, v6, v7, a2);
  }

  else
  {
    return 4294967104;
  }
}

uint64_t sub_248DB0898(uint64_t a1, const __CFDictionary *a2, uint64_t a3, const UInt8 **a4)
{
  result = 4294967246;
  if (a2 && a4)
  {
    if (*a4)
    {
      v13 = 0;
      if (!sub_248DA6144(a2, @"ID", &v13))
      {
        return 4294967097;
      }

      v12 = 0;
      if (!sub_248DA6144(a2, @"Attributes", &v12))
      {
        return 4294967097;
      }

      v7 = v12;
      if ((v12 & 2) == 0)
      {
        return 0;
      }

      v12 &= ~2u;
      if (sub_248DB05B0(a2, @"Attributes", (v7 & 0xFFFD), 1))
      {
        v8 = sub_248DD4EEC(a4);
        sub_248DD4EF8();
        nullsub_4(a4);
        v9 = *a4;
        sub_248DD4D98();
        v10 = CFDataCreate(*MEMORY[0x277CBECE8], *a4, v8);
        v11 = *a4;
        sub_248DD4D98();
        nullsub_4(a4);
        if (v10)
        {
          CFDictionarySetValue(a2, @"Data", v10);
          CFRelease(v10);
          return 0;
        }

        return 4294962336;
      }

      else
      {
        return 4294967097;
      }
    }

    else
    {
      return 4294967187;
    }
  }

  return result;
}

unsigned __int16 *sub_248DB0A18(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  result[1] = bswap32(result[1]) >> 16;
  *(result + 1) = bswap32(*(result + 1));
  result[4] = bswap32(result[4]) >> 16;
  result[5] = bswap32(result[5]) >> 16;
  *(result + 3) = bswap32(*(result + 3));
  v1 = result[8];
  if (v1 <= 0x3D)
  {
    if (!result[8])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v1 = 61;
  }

  v2 = result + 12;
  v3 = v1;
  do
  {
    *(v2 - 3) = bswap32(*(v2 - 3));
    *(v2 - 1) = bswap32(*(v2 - 1)) >> 16;
    *v2 = bswap32(*v2) >> 16;
    v2 += 4;
    --v3;
  }

  while (v3);
  LOWORD(v1) = v1 << 8;
LABEL_7:
  result[8] = v1;
  return result;
}

uint64_t sub_248DB0AD4(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    goto LABEL_16;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  if ((*(a1 + 112) & 0x80) != 0)
  {
    return 4294967098;
  }

  Count = CFDictionaryGetCount(v2);
  if (!Count)
  {
LABEL_16:
    v6 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v4 = Count;
  v5 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v5)
  {
    return 4294967188;
  }

  v6 = v5;
  v7 = malloc_type_calloc(v4, 8uLL, 0x6004044C4A2DFuLL);
  if (!v7)
  {
    v18 = 4294967188;
    goto LABEL_20;
  }

  v8 = v7;
  CFDictionaryGetKeysAndValues(*(a1 + 104), v6, v7);
  if (v4 < 1)
  {
LABEL_17:
    v18 = 0;
    *(a1 + 112) &= ~0x20u;
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = 0;
  while (1)
  {
    v10 = sub_248DA6EE8(v6[v9]);
    v11 = v8[v9];
    v12 = CFArrayGetCount(v11);
    if (v12 >= 1)
    {
      break;
    }

LABEL_14:
    if (++v9 == v4)
    {
      goto LABEL_17;
    }
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    v20 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
    v16 = sub_248DA6B58(ValueAtIndex, ValueAtIndex, &v20);
    if (v16)
    {
      v17 = sub_248DB0898(v16, ValueAtIndex, v10, v20);
      if (v17)
      {
        break;
      }
    }

    if (v13 == ++v14)
    {
      goto LABEL_14;
    }
  }

  v18 = v17;
LABEL_18:
  free(v8);
LABEL_19:
  if (v6)
  {
LABEL_20:
    free(v6);
  }

  return v18;
}

uint64_t sub_248DB0C78(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, void, void), uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = 0;
  memset(v23, 0, sizeof(v23));
  v18 = 0;
  v8 = (*(*a2 + 64))(a2, &v22 + 2);
  if (!v8)
  {
    if (SHIWORD(v22) <= 0)
    {
LABEL_23:
      v8 = (*(*a1 + 200))(a1);
    }

    else
    {
      LOWORD(v12) = 1;
      while (1)
      {
        v8 = (*(*a2 + 72))(a2, &v21, v12);
        if (v8)
        {
          break;
        }

        v8 = (*(*a2 + 96))(a2, v21, &v22);
        if (v8)
        {
          break;
        }

        if (v22 >= 1)
        {
          LOWORD(v13) = 1;
          do
          {
            v14 = (*(*a2 + 88))(a2);
            (*(*a2 + 80))(a2, 0);
            v9 = (*(*a2 + 112))(a2, v21, v13, &v20);
            (*(*a2 + 80))(a2, v14);
            if (v9)
            {
              goto LABEL_3;
            }

            v8 = (*(*a2 + 320))(a2, v20, &v19 + 2, &v21, v23, &v18);
            if (v8)
            {
              goto LABEL_2;
            }

            if (!a3 || a3(a4, v21, SHIWORD(v19)))
            {
              v8 = (*(*a2 + 136))(a2, v20);
              if (v8)
              {
                goto LABEL_2;
              }

              v8 = (*(*a2 + 224))(a2, v20, &v19);
              if (v8)
              {
                goto LABEL_2;
              }

              v8 = (*(*a2 + 248))(a2, v20);
              if (v8)
              {
                goto LABEL_2;
              }

              v15 = (*(*a1 + 88))(a1);
              (*(*a1 + 80))(a1, 0);
              v17 = 0;
              if (!(*(*a1 + 120))(a1, v21, SHIWORD(v19), &v17) && v17)
              {
                (*(*a1 + 192))(a1);
                sub_248DD4E4C(v17);
              }

              (*(*a1 + 80))(a1, v15);
              v16 = (*(*a1 + 312))(a1, v20, v21, SHIWORD(v19), v19, v23, v18);
              if (v16)
              {
                v9 = v16;
                sub_248DD4E4C(v20);
                goto LABEL_3;
              }
            }

            v13 = (v13 + 1);
          }

          while (v13 <= v22);
        }

        v12 = (v12 + 1);
        if (v12 > SHIWORD(v22))
        {
          goto LABEL_23;
        }
      }
    }
  }

LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_248DB1158(uint64_t a1, _WORD *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    Count = CFDictionaryGetCount(v3);
    result = 0;
  }

  else
  {
    Count = 0;
    result = 4294967097;
  }

  *a2 = Count;
  return result;
}

uint64_t sub_248DB11AC(CFDictionaryRef *a1, _DWORD *a2, int a3)
{
  if (!a2)
  {
    return 4294967246;
  }

  if (a1[13])
  {
    v10 = 0;
    result = (*(*a1 + 8))(a1, &v10);
    if (result)
    {
      v9 = 0;
    }

    else if (a3 < 1 || v10 < a3)
    {
      v9 = 0;
      result = 4294967246;
    }

    else
    {
      v7 = malloc_type_calloc(v10, 8uLL, 0x6004044C4A2DFuLL);
      if (v7)
      {
        v8 = v7;
        CFDictionaryGetKeysAndValues(a1[13], v7, 0);
        v9 = sub_248DA6EE8(v8[a3 - 1]);
        free(v8);
        result = 0;
      }

      else
      {
        v9 = 0;
        result = 12;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 4294967097;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_248DB12D4(uint64_t a1, unsigned int a2, int a3, void *a4)
{
  if (a4)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      v7 = sub_248DA6784(a1, a2);
      v5 = 0;
      result = 4294967104;
      if (a3 < 1 || !v7)
      {
        goto LABEL_8;
      }

      if (CFArrayGetCount(v7) < a3)
      {
        v5 = 0;
        result = 4294967104;
        goto LABEL_8;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v7, (a3 - 1));
      if (ValueAtIndex)
      {
        result = sub_248DD1CFC(ValueAtIndex, v10, v11, v12, v13, v14, v15, v16, v17, 0);
        v5 = *v18;
LABEL_8:
        *a4 = v5;
        return result;
      }

      v5 = 0;
    }

    result = 4294967097;
    goto LABEL_8;
  }

  return 4294967246;
}

uint64_t sub_248DB1394(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v9 = 0;
  v5 = sub_248DA6D78(a1, a2, &v9);
  if (!v5)
  {
    return 4294967104;
  }

  v6 = v5;
  v8 = 0;
  v7 = (*(*a1 + 88))(a1);
  (*(*a1 + 80))(a1, 1);
  v2 = sub_248DA6954(a1, v9, v6, &v8);
  (*(*a1 + 80))(a1, v7);
  return v2;
}

uint64_t sub_248DB1490(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v6 = 0;
  if (!a3)
  {
    return 4294967246;
  }

  if (*(a1 + 104))
  {
    if (a2)
    {
      v4 = sub_248DA6D78(a1, a2, 0);
      if (v4)
      {
        if (sub_248DA6144(v4, @"Attributes", &v6))
        {
          result = 0;
        }

        else
        {
          result = 4294967097;
        }
      }

      else
      {
        result = 4294967104;
      }
    }

    else
    {
      result = 4294967246;
    }
  }

  else
  {
    result = 4294967097;
  }

  *a3 = v6;
  return result;
}

void sub_248DB151C(void *a1)
{
  sub_248DB1554(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DB1554(void *a1)
{
  *a1 = &unk_285BC93E0;
  v2 = a1[13];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[13] = 0;
  v3 = a1[83];
  if (v3)
  {
    DIDiskImageObjectRelease(v3);
    a1[83] = 0;
  }

  v4 = a1[14];
  if (v4)
  {
    DIDiskImageObjectRelease(v4);
    a1[14] = 0;
  }

  v5 = a1[15];
  if (v5)
  {
    DIDiskImageObjectRelease(v5);
    a1[15] = 0;
  }

  return sub_248DA1D68(a1);
}

void sub_248DB15E8(void *a1)
{
  sub_248DB1620(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DB1620(void *a1)
{
  *a1 = &unk_285BC9D38;
  v2 = a1[14];
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_248DA8330(a1);
}

uint64_t sub_248DB1680(uint64_t a1, uint64_t a2)
{
  v4 = sub_248DAF3EC(a1, a2);
  if (v4)
  {
LABEL_4:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    v4 = (*(*v5 + 168))(v5, a2);
    goto LABEL_4;
  }

  v4 = 999;
LABEL_5:
  if (a2)
  {
    sub_248DAF3EC(a1, 0);
    v6 = *(a1 + 200);
    if (v6)
    {
      (*(*v6 + 168))(v6, 0);
    }
  }

  return v4;
}

uint64_t sub_248DB1740(void *a1)
{
  v1 = a1[32];
  if (v1 >= a1[34] && v1 >= a1[56])
  {
    return sub_248DB1768(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DB1768(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 152))();
  }

  return result;
}

uint64_t sub_248DB1798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  return (*(*a1 + 208))();
}

uint64_t sub_248DB17E8(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 216))();
  }

  return result;
}

uint64_t DIMediaKitCreateMKMediaRef(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t *a4)
{
  result = 22;
  v13 = 22;
  if (a4)
  {
    *a4 = 0;
    if (a1)
    {
      v7 = *MEMORY[0x277CBECE8];
      if (a3)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v9 = MutableCopy;
      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      valuePtr = 16;
      v11 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(Mutable, @"attributes", v11);
      CFDictionarySetValue(Mutable, @"valid", v11);
      CFRelease(v11);
      CFDictionarySetValue(v9, @"Characteristics", Mutable);
      CFRelease(Mutable);
      *a4 = MKMediaCreate();
      CFRelease(v9);
      return v13;
    }
  }

  return result;
}

uint64_t sub_248DB1968(uint64_t a1)
{
  if (!a1)
  {
    return 999;
  }

  DIDiskImageObjectRetain();
  return 0;
}

__CFDictionary *sub_248DB1994(uint64_t a1, CFTypeRef cf1)
{
  Mutable = 0;
  if (a1 && cf1)
  {
    if (CFEqual(cf1, @"Geometry"))
    {
      v5 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      valuePtr = DIDiskImageGetSectorCount(a1);
      v6 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(Mutable, @"Sector Count", v6);
        CFRelease(v7);
      }

      valuePtr = 512;
      v8 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(Mutable, @"Block Size", v8);
        CFRelease(v9);
      }

      valuePtr = 2048;
      v10 = CFNumberCreate(v5, kCFNumberLongLongType, &valuePtr);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, @"Maximum Transfer Sector Count", v10);
        CFRelease(v11);
      }
    }

    else if (CFEqual(cf1, @"Writable"))
    {
      v12 = DIDiskImageIsWriteEnabled(a1);
      v13 = MEMORY[0x277CBED28];
      if (!v12)
      {
        v13 = MEMORY[0x277CBED10];
      }

      return *v13;
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

uint64_t sub_248DB1B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = DIDiskImageWriteSectors(a1);
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

char *sub_248DB1BE0(char *a1)
{
  if (a1)
  {
    return DIDiskImageObjectRelease(a1);
  }

  return a1;
}

uint64_t sub_248DB1BEC(uint64_t a1, char a2)
{
  if ((*(a1 + 320) & 0x80000000) != 0)
  {
    return 0;
  }

  result = sub_248DB1C78(a1);
  if (!result)
  {
    if ((*(a1 + 304) & 1) == 0 && ((a2 & 1) == 0 || fcntl(*(a1 + 320), 51, 1) == -1) && fsync(*(a1 + 320)) < 0)
    {
      return *__error();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DB1C78(uint64_t a1)
{
  if (!*(a1 + 208) || !(*(*a1 + 72))(a1))
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 216));
  v2 = *(*(a1 + 208) + 16);
  if (v2)
  {
    while (!*(v2 + 8) || !*(v2 + 16))
    {
      v2 = *(v2 + 72);
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    v3 = (*(*a1 + 704))(a1, *(a1 + 200));
    if (!v3)
    {
      v3 = sub_248DA2CA0(*(a1 + 208), *(a1 + 200));
    }
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  pthread_mutex_unlock((a1 + 216));
  return v3;
}

uint64_t sub_248DB1D58(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 496))(a1);
  v7 = a1[94];
  if (v7 == a2)
  {
    return 0;
  }

  v9 = v6;
  if (!v6)
  {
    return 999;
  }

  if (v7 < a2 && !(*(*a1 + 160))(a1))
  {
    return 78;
  }

  if (*(a1 + 777) == 1)
  {
    v10 = a1[32] + a2;
  }

  else if (*(a1 + 776) == 1)
  {
    v10 = a1[32] + a2 + 512;
  }

  else
  {
    v10 = a1[32] + a2;
  }

  result = (*(*v9 + 320))(v9, v10, a3);
  if (!result)
  {
    a1[94] = a2;
    a1[33] = a2;
    result = (*(*a1 + 776))(a1, a1 + 29);
    if (!result)
    {
      sub_248DA4010(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DB1ECC(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 160))();
  }

  return result;
}

uint64_t sub_248DB1F28(_BYTE *a1, const void *a2)
{
  __dst[64] = *MEMORY[0x277D85DE8];
  if ((a1[777] & 1) == 0 && a1[776] != 1)
  {
    v8 = 78;
    goto LABEL_11;
  }

  v4 = (*(*a1 + 496))(a1);
  v11 = 0;
  v12 = 0;
  memcpy(__dst, a2, 0x200uLL);
  __dst[37] = 0;
  __dst[38] = 0;
  v5.n128_u64[0] = sub_248DA3A74(__dst);
  if (a1[777] == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = (*(*v4 + 296))(v4, &v12, v5.n128_f64[0]);
    if (v7)
    {
LABEL_12:
      v8 = v7;
      goto LABEL_11;
    }

    v6 = v12 - 512;
  }

  v12 = v6;
  v7 = (*(*v4 + 272))(v4, v5);
  if (v7)
  {
    goto LABEL_12;
  }

  v8 = (*(*v4 + 336))(v4, v12, 512, &v11, __dst);
  (*(*v4 + 280))(v4, 0);
  if (!v8)
  {
    memcpy(a1 + 232, a2, 0x200uLL);
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_248DB212C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 22;
  }

  v7 = a1[94];
  if (v7 < a2)
  {
    return 29;
  }

  v9 = a3 + a2;
  if (a3 + a2 <= v7)
  {
    goto LABEL_9;
  }

  if (!(*(*a1 + 160))(a1))
  {
    return 29;
  }

  result = (*(*a1 + 320))(a1, v9, 0);
  if (!result)
  {
LABEL_9:
    v10 = *(*(*(*a1 + 496))(a1) + 336);
    v11 = a1[93] + a2;

    return v10();
  }

  return result;
}

uint64_t sub_248DB228C(uint64_t a1)
{
  v1 = (*(*a1 + 296))(a1);
  if (!v1)
  {
    return 78;
  }

  v2 = *(*v1 + 472);

  return v2();
}

uint64_t sub_248DB2328(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 472))();
  }

  else
  {
    return 78;
  }
}

uint64_t sub_248DB2364(uint64_t a1, int a2)
{
  if (a2 != -536870288 && a2 != -536870144 && a2 != -536870272)
  {
    return 22;
  }

  result = (*(*a1 + 296))(a1);
  if (result)
  {
    v4 = *(*(*(*a1 + 296))(a1) + 440);

    return v4();
  }

  return result;
}

uint64_t sub_248DB2468(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 440))();
  }

  return result;
}

uint64_t sub_248DB24A0(uint64_t a1, int a2)
{
  if (a2 == -536870288 || a2 == -536870272 || a2 == -536870144)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_248DB24D0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a5)
  {
    return 22;
  }

  *a5 = 0;
  v10 = 22;
  if (a3 && a4)
  {
    v29 = 0;
    v26 = 0;
    v27 = 0;
    size = 0;
    v25 = 0;
    sub_248DAACE4(a1, a2, &v28, &v29, &v27, &v26, &v25, &size, 0);
    if (v29 > -2147483640)
    {
      return 78;
    }

    else
    {
      v11 = sub_248DAAF50(a1, v29);
      if (v11)
      {
        v12 = v11;
        v13 = size;
        v23 = 0;
        v14 = v26;
        v15 = malloc_type_malloc(size, 0x100004077774924uLL);
        if (v15)
        {
          v16 = v15;
          v22 = v14;
          v17 = v14 << 9;
          v18 = malloc_type_malloc(v17, 0x100004077774924uLL);
          if (v18)
          {
            v19 = (*(*a1 + 296))(a1);
            v20 = (*(*v19 + 328))(v19, v25, v13, &v23, v16);
            if (v20)
            {
              v10 = v20;
            }

            else
            {
              v10 = (*(*v12 + 48))(v12, v16, v23, v18, v17);
              if (v10)
              {
                fprintf(*MEMORY[0x277D85DF8], "readSectorChunk: decompressData failed with error %ld (inStartSector: %qd)\n", v10, a2);
              }
            }
          }

          else
          {
            v10 = 12;
          }

          free(v16);
          if (v18 && v10)
          {
            free(v18);
          }

          else if (v18)
          {
            *a3 = v27;
            *a4 = v22;
            *a5 = v18;
          }
        }

        else
        {
          return 12;
        }
      }

      else
      {
        return 999;
      }
    }
  }

  return v10;
}

uint64_t sub_248DB2724(uint64_t a1, const __CFDictionary *a2)
{
  valuePtr = 0;
  v93 = -1;
  v92 = -1;
  v4 = sub_248DA0728(a2, @"inhibit-apm-final-gap", 0);
  if (v4)
  {
    v5 = 35;
  }

  else
  {
    v5 = 3;
  }

  v6 = sub_248DA0728(a2, @"freeze-file-system", 0);
  v7 = (*(*a1 + 456))(a1, v5, 0, 0);
  if (!v7)
  {
    return 999;
  }

  v8 = v7;
  v9 = sub_248DAE894(a2, @"content-new-length");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberLongLongType, &valuePtr);
    v10 = sub_248DA0728(a2, @"freeze-image-size", 0);
    v11 = sub_248DAE894(a2, @"partition-ID");
    v12 = v11;
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt32Type, &v93);
    }

    v13 = sub_248DAE894(a2, @"content-min-length");
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberLongLongType, &v92);
    }

    if (sub_248DB3174(v8, @"subcontent-list"))
    {
      if (v12)
      {
        v14 = v92;
        v116 = valuePtr;
        v115 = v93;
        v113 = 0;
        v114 = 0;
        v111 = 0;
        v112 = 0;
        v109 = 0;
        v110 = 0;
        v107 = 0;
        v108 = 0;
        v105 = 0;
        v106 = 0;
        v103 = 0;
        v104 = 0;
        if (v10)
        {
          v15 = 7;
        }

        else
        {
          v15 = 3;
        }

        v102 = 0;
        if (v4)
        {
          v16 = v15 | 0x20;
        }

        else
        {
          v16 = v15;
        }

        v17 = (*(*a1 + 456))(a1, v16, 0, 0);
        if (!v17)
        {
          v26 = 0;
          v27 = 999;
          goto LABEL_106;
        }

        v107 = 1;
        v18 = (*(*a1 + 96))(a1);
        v108 = v18;
        v109 = v18;
        v19 = sub_248DAE894(v17, @"content-min-length");
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberLongLongType, &v109);
        }

        v20 = sub_248DAE894(v17, @"content-max-length");
        if (v20)
        {
          CFNumberGetValue(v20, kCFNumberLongLongType, &v108);
        }

        v21 = sub_248DAE894(v17, @"content-granularity");
        if (v21)
        {
          CFNumberGetValue(v21, kCFNumberLongLongType, &v107);
        }

        v22 = sub_248DB3174(v17, @"subcontent-list");
        v23 = sub_248DB31F4(v17, @"content-hint");
        if (!v4 && v23 && CFEqual(v23, @"APM"))
        {
          v24 = 10 / v107;
          if (10 / v107 * v107 != 10)
          {
            ++v24;
          }

          v113 = v24 * v107;
        }

        if (v115 != -1)
        {
          v25 = sub_248DD6A24(v22, v115);
          if (!v25)
          {
LABEL_33:
            v26 = 0;
            v27 = 22;
LABEL_106:
            if (v114)
            {
              DIDiskImageObjectRelease(v114);
              v114 = 0;
            }

            if (v17)
            {
              CFRelease(v17);
            }

            if (v112)
            {
              CFRelease(v112);
              v112 = 0;
            }

            if (v26)
            {
              CFRelease(v26);
            }

            goto LABEL_114;
          }

LABEL_42:
          v103 = 1;
          v36 = sub_248DAE894(v25, @"postamble");
          if (v36)
          {
            CFNumberGetValue(v36, kCFNumberSInt64Type, &v113);
          }

          v37 = sub_248DAE894(v25, @"content-length");
          CFNumberGetValue(v37, kCFNumberLongLongType, &v104);
          v105 = v104;
          v106 = v104;
          v38 = sub_248DAE894(v25, @"content-start");
          CFNumberGetValue(v38, kCFNumberLongLongType, &v102);
          if (v14 < 0)
          {
            v40 = sub_248DAE894(v25, @"content-min-length");
            if (v40)
            {
              CFNumberGetValue(v40, kCFNumberLongLongType, &v106);
            }
          }

          else
          {
            v106 = v14;
          }

          v41 = sub_248DAE894(v25, @"content-max-length");
          if (v41)
          {
            CFNumberGetValue(v41, kCFNumberLongLongType, &v105);
          }

          v42 = sub_248DAE894(v25, @"content-granularity");
          if (v42)
          {
            CFNumberGetValue(v42, kCFNumberLongLongType, &v103);
          }

          Value = CFDictionaryGetValue(v25, @"can-trigger-image-resize");
          if (Value)
          {
            v44 = CFBooleanGetValue(Value) == 0;
          }

          else
          {
            v44 = 1;
          }

          v45 = v116;
          if (v116 == -1)
          {
            v45 = v106;
            v116 = v106;
          }

          if (v45 == 1)
          {
            v45 = v105;
            v116 = v105;
          }

          if (v14 == -1 && v45 < v106)
          {
            warnx("resize request %qd is below minimum size %qd allowed.");
            goto LABEL_33;
          }

          if (v45 > v105)
          {
            warnx("resize request %qd is above maximum size %qd allowed.");
            goto LABEL_33;
          }

          if (v45 <= v104)
          {
            v47 = (v104 - v45) / v103 * v103;
            v48 = v104 - v47;
          }

          else
          {
            v47 = (v45 - v104) / v103 * v103;
            v48 = v47 + v104;
          }

          v116 = v48;
          if (!v47)
          {
            v26 = 0;
            goto LABEL_82;
          }

          v91 = v14;
          MKMediaRef = sub_248DB3258(a1, v102, v104, &v114);
          if (!MKMediaRef)
          {
            if (v10)
            {
              v50 = 1;
            }

            else
            {
              v50 = v44;
            }

            if (v50)
            {
              v51 = 0;
              v52 = v18 - v102;
              v89 = v18;
              goto LABEL_103;
            }

            v52 = v113 + v116;
            v53 = v113 + v116 + v102;
            v54 = v53 - v18;
            if (v53 <= v18)
            {
              if (v113 + v116 + v102 < v18)
              {
                if ((v18 - v53) % v107)
                {
                  v56 = (v18 - v53) / v107 + 1;
                }

                else
                {
                  v56 = (v18 - v53) / v107;
                }

                v53 = v18 - v56 * v107;
              }
            }

            else
            {
              if (v54 % v107)
              {
                v55 = v54 / v107 + 1;
              }

              else
              {
                v55 = v54 / v107;
              }

              v53 = v18 + v55 * v107;
            }

            if (v53 <= v18)
            {
              v89 = v53;
              v51 = 0;
LABEL_103:
              v59 = *MEMORY[0x277CBECE8];
              MKMediaRef = DIMediaKitCreateMKMediaRef(a1, *MEMORY[0x277CBECE8], 0, &v112);
              if (MKMediaRef)
              {
                goto LABEL_104;
              }

              v87 = v52;
              v88 = v51;
              v101 = 0;
              Mutable = CFDictionaryCreateMutable(v59, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionarySetValue(Mutable, @"Include most", *MEMORY[0x277CBED28]);
              v26 = MKCFReadMedia();
              CFRelease(Mutable);
              v27 = v101;
              if (v101)
              {
                goto LABEL_106;
              }

              allocator = v59;
              v62 = sub_248DD5780(v26, &v110, &v111);
              if (v62)
              {
LABEL_118:
                v27 = v62;
                goto LABEL_106;
              }

              v63 = sub_248DB3174(v26, @"Schemes");
              Count = CFArrayGetCount(v63);
              if (Count >= 1)
              {
                v65 = Count;
                for (i = 0; i < v65; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v63, i);
                  v68 = sub_248DB31F4(ValueAtIndex, @"ID");
                  if (v68 && CFEqual(v68, @"ISO9660"))
                  {
                    CFArrayRemoveValueAtIndex(v63, i--);
                    --v65;
                  }
                }
              }

              v69 = CFArrayGetCount(v111);
              if (v69 < 1)
              {
LABEL_134:
                if (v88)
                {
                  v75 = sub_248DD6B88();
                  v62 = sub_248DD61A4(v75, v18, v76, 0);
                  if (v62)
                  {
                    goto LABEL_118;
                  }
                }
              }

              else
              {
                v70 = v69;
                v71 = 0;
                while (1)
                {
                  v99 = 0;
                  v100 = 0;
                  v97 = 0;
                  number = 0;
                  v96 = 0;
                  v72 = sub_248DB31B4(v111, v71);
                  if (v72)
                  {
                    v73 = v72;
                    if (sub_248DD5D98(v72, &number, &v100, &v99, &v97, &v96, 0))
                    {
                      v95 = 0;
                      if (CFNumberGetValue(number, kCFNumberIntType, &v95))
                      {
                        if (v95 == v115 && v97 == v102)
                        {
                          v74 = CFNumberCreate(allocator, kCFNumberLongLongType, &v116);
                          if (v74)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }

                  if (v70 == ++v71)
                  {
                    goto LABEL_134;
                  }
                }

                v77 = v74;
                CFDictionarySetValue(v73, @"Size", v74);
                CFRelease(v77);
                v78 = sub_248DD66F8(v114, v116, v87, 1, v6 != 0, v91);
                if (v78)
                {
                  v27 = v78;
                  if (!v88)
                  {
                    goto LABEL_106;
                  }

LABEL_141:
                  v79 = sub_248DD6B88();
                  sub_248DD61A4(v79, v18, v80, 0);
                  goto LABEL_106;
                }

                if (v114)
                {
                  DIDiskImageObjectRelease(v114);
                  v114 = 0;
                }

                v81 = MKCFWriteMedia();
                if (v81)
                {
                  v27 = v81;
                  if (sub_248DB3258(a1, v102, v116, &v114))
                  {
                    goto LABEL_106;
                  }

                  v82 = sub_248DD66F8(v114, v104, v18, 1, 0, -1);
                  v83 = v88 ^ 1;
                  if (v82)
                  {
                    v83 = 1;
                  }

                  if (v83)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_141;
                }

                if (v89 < v18)
                {
                  v84 = sub_248DD6B88();
                  v62 = sub_248DD61A4(v84, v89, v85, 0);
                  goto LABEL_118;
                }
              }

LABEL_82:
              v27 = 0;
              goto LABEL_106;
            }

            v57 = sub_248DD6B88();
            MKMediaRef = sub_248DD61A4(v57, v53, v58, 0);
            if (!MKMediaRef)
            {
              v89 = v53;
              v51 = 1;
              goto LABEL_103;
            }
          }

LABEL_104:
          v27 = MKMediaRef;
          goto LABEL_105;
        }

        v90 = v18;
        v32 = v14;
        v33 = sub_248DAE894(v17, @"partition-resize-id-hint");
        v34 = sub_248DAE894(v17, @"partition-resize-hint");
        LODWORD(v100) = 0;
        if (v33 && CFNumberGetValue(v33, kCFNumberSInt32Type, &v115))
        {
          v35 = sub_248DD6A24(v22, v115);
          if (v35)
          {
LABEL_41:
            v25 = v35;
            v14 = v32;
            v18 = v90;
            goto LABEL_42;
          }

          v27 = 999;
        }

        else
        {
          if (v34 && CFNumberGetValue(v34, kCFNumberSInt32Type, &v100))
          {
            v27 = 999;
            if (!v22)
            {
              goto LABEL_105;
            }

            v39 = v100;
            if ((v100 & 0x80000000) != 0)
            {
              goto LABEL_105;
            }

            if (CFArrayGetCount(v22) <= v39)
            {
              goto LABEL_105;
            }

            v35 = sub_248DB31B4(v22, v39);
            if (!v35)
            {
              goto LABEL_105;
            }

            goto LABEL_41;
          }

          if (!v10)
          {
            MKMediaRef = sub_248DD61A4(a1, v116, v4 == 0, 1);
            goto LABEL_104;
          }

          v27 = 0;
        }

LABEL_105:
        v26 = 0;
        goto LABEL_106;
      }

      v29 = sub_248DD6B88();
      v28 = sub_248DD61A4(v29, v30, v31, 1);
    }

    else
    {
      v28 = sub_248DD66F8(a1, valuePtr, 0, 0, 0, -1);
    }

    v27 = v28;
  }

  else
  {
    v27 = 22;
  }

LABEL_114:
  CFRelease(v8);
  return v27;
}

uint64_t sub_248DB3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = DIDiskImageReadSectors(a1);
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

const void *sub_248DB3174(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_248DB31B4(const __CFArray *a1, CFIndex a2)
{
  result = CFArrayGetValueAtIndex(a1, a2);
  if (result)
  {
    v3 = result;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *sub_248DB31F4(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DB3258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
    if (a1)
    {
      operator new();
    }
  }

  return 22;
}

uint64_t sub_248DB3528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  if (v3 >= a2 && a3 + a2 <= v3)
  {
    return (*(**(a1 + 176) + 48))(*(a1 + 176), *(a1 + 160) + a2);
  }

  else
  {
    return 22;
  }
}

void sub_248DB3578(void *a1)
{
  sub_248DB35B0(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DB35B0(void *a1)
{
  *a1 = &unk_285BCAAA0;
  v2 = a1[22];
  if (v2)
  {
    DIDiskImageObjectRelease(v2);
    a1[22] = 0;
  }

  return sub_248DAE12C(a1);
}

uint64_t sub_248DB3614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  if (v3 >= a2 && a3 + a2 <= v3)
  {
    return (*(**(a1 + 176) + 64))(*(a1 + 176), *(a1 + 160) + a2);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_248DB3664(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160) + a2;
  if (v4 > (*(**(a1 + 176) + 96))(*(a1 + 176)))
  {
    return 29;
  }

  result = 0;
  *(a1 + 168) = a2;
  return result;
}

uint64_t sub_248DB36D8()
{
  if (CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
  {
    operator new();
  }

  CFRelease(0);
  return 0;
}

char *sub_248DB3D70(char *a1, uint64_t a2)
{
  result = sub_248DB3DA4(a1, a2);
  *result = &unk_285BCC340;
  return result;
}

char *sub_248DB3DA4(char *a1, uint64_t a2)
{
  v4 = sub_248DA0CB0(a1);
  *v4 = &unk_285BCC440;
  *(v4 + 13) = 0;
  sub_248DB3E0C(v4, a2);
  return a1;
}

char *sub_248DB3E0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    DIDiskImageObjectRetain_0(a2);
  }

  result = *(a1 + 104);
  if (result)
  {
    result = sub_248DA1714(result);
  }

  *(a1 + 104) = a2;
  return result;
}

uint64_t sub_248DB3E4C(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = (*(*a1 + 64))(a1, &v5, a2, 0);
  if (v2)
  {
    v3 = v2;
    v5 += 100;
    if (!CFArrayGetCount(v2))
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  return v5;
}

__CFArray *sub_248DB3ED0(uint64_t a1, uint64_t a2, char a3, __CFDictionary **a4)
{
  v50 = *MEMORY[0x277D85DE8];
  valuePtr = 512;
  if (a4)
  {
    *a4 = 0;
  }

  v47 = 0;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_59;
  }

  v8[30] = 0u;
  v8[31] = 0u;
  v8[28] = 0u;
  v8[29] = 0u;
  v8[26] = 0u;
  v8[27] = 0u;
  v8[24] = 0u;
  v8[25] = 0u;
  v8[22] = 0u;
  v8[23] = 0u;
  v8[20] = 0u;
  v8[21] = 0u;
  v8[18] = 0u;
  v8[19] = 0u;
  v8[16] = 0u;
  v8[17] = 0u;
  v8[14] = 0u;
  v8[15] = 0u;
  v8[12] = 0u;
  v8[13] = 0u;
  v8[10] = 0u;
  v8[11] = 0u;
  v8[8] = 0u;
  v8[9] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  theArray = CFArrayCreateMutable(v6, 0, MEMORY[0x277CBF128]);
  if (!theArray)
  {
LABEL_59:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      free(v9);
    }

    theArray = 0;
    goto LABEL_64;
  }

  allocator = v6;
  cf = Mutable;
  v41 = a4;
  LODWORD(v10) = 0;
  v45 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = sub_248DB44F4(a1);
    v15 = v13;
    if ((*(*v14 + 48))(v14, v13, 1, &v47, v9))
    {
      goto LABEL_58;
    }

    memcpy(__dst, v9, sizeof(__dst));
    if (*(v9 + 255) != 43605)
    {
      goto LABEL_58;
    }

    v16 = 0;
    v17 = 0;
    v13 = 0;
    do
    {
      v18 = &v9[v17];
      if ((*(*a1 + 72))(a1, &v9[v17 + 27] + 14))
      {
        if (!v13)
        {
          v21 = *(&v9[v17 + 28] + 6) + v12;
          v22 = sub_248DB44F4(a1);
          if ((*(*v22 + 96))(v22) <= v21)
          {
            v13 = 0;
          }

          else
          {
            v13 = v21;
          }
        }
      }

      else if (((*(*a1 + 80))(a1, v18 + 446) & 1) != 0 || !(v17 * 16) && *(v9 + 458) && (a3 & 8) != 0 && !*(v9 + 450))
      {
        if (v15)
        {
          v23 = v10;
        }

        else
        {
          v23 = v16;
        }

        v10 = (v23 + 1);
        if ((*(*a1 + 88))(a1, v18 + 446, v10, v15))
        {
          goto LABEL_58;
        }

        if ((*(*a1 + 96))(a1, v18 + 446, v10, v15))
        {
          ++v11;
        }

        else
        {
          v24 = sub_248DB45F8(a1, v18 + 446, v10, v15);
          if (v24)
          {
            v25 = v24;
            ++v45;
            CFArrayAppendValue(theArray, v24);
            CFRelease(v25);
          }
        }
      }

      ++v17;
      ++v16;
    }

    while (v17 != 4);
    if (a3)
    {
      if (v15)
      {
        v26 = 0;
        v27 = @"Extended Partition Record";
        v28 = @"XPR";
      }

      else
      {
        v26 = CFDataCreate(allocator, __dst, 446);
        v27 = @"Master Boot Record";
        v28 = @"MBR";
      }

      v29 = sub_248DB4858(v15, 1, 0, v28, v27, 0, v19, v20);
      v30 = v29;
      if (v29 && v26)
      {
        CFDictionarySetValue(v29, @"boot-code", v26);
      }

      else if (!v29)
      {
        goto LABEL_38;
      }

      CFArrayAppendValue(theArray, v30);
      CFRelease(v30);
LABEL_38:
      if (v26)
      {
        CFRelease(v26);
      }
    }

    if (!v15)
    {
      LODWORD(v10) = 4;
      v12 = v13;
    }
  }

  while (v13);
  if (!v45)
  {
    goto LABEL_58;
  }

  v31 = sub_248DB44F4(a1);
  v32 = (*(*v31 + 96))(v31);
  if (sub_248DB550C(theArray, v32))
  {
    goto LABEL_58;
  }

  if ((a3 & 2) != 0)
  {
    v33 = sub_248DB44F4(a1);
    v34 = (*(*v33 + 96))(v33);
    sub_248DB58B0(theArray, v34, 0);
  }

  else
  {
    sub_248DB91F4(theArray);
  }

  v35 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  CFDictionarySetValue(cf, @"block-size", v35);
  CFRelease(v35);
  CFDictionarySetValue(cf, @"burnable", *MEMORY[0x277CBED10]);
  if (v11)
  {
    sub_248DB44F4(a1);
    v36 = sub_248DB48A8();
    if (v36)
    {
      v37 = v36;
      if (CFDictionaryGetValue(v36, @"NTFS") || CFDictionaryGetValue(v37, @"HFS+") || CFDictionaryGetValue(v37, @"HFSX") || CFDictionaryGetValue(v37, @"ProDOS") || CFDictionaryGetValue(v37, @"NTFS") || CFDictionaryGetValue(v37, @"FAT12") || CFDictionaryGetValue(v37, @"FAT16"))
      {
        CFRelease(v37);
LABEL_58:
        CFRelease(theArray);
        Mutable = cf;
        goto LABEL_59;
      }

      Value = CFDictionaryGetValue(v37, @"FAT32");
      CFRelease(v37);
      if (Value)
      {
        goto LABEL_58;
      }
    }
  }

  if (v41)
  {
    *v41 = cf;
  }

  else
  {
    CFRelease(cf);
  }

  free(v9);
LABEL_64:
  v38 = *MEMORY[0x277D85DE8];
  return theArray;
}

BOOL sub_248DB4544(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    return 1;
  }

  v6 = (v4 + a4);
  v7 = *(a2 + 12);
  v8 = sub_248DB44F4(a1);
  if ((*(*v8 + 96))(v8) <= v6)
  {
    return 1;
  }

  v9 = sub_248DB44F4(a1);
  return v6 + v7 > (*(*v9 + 96))(v9);
}

__CFDictionary *sub_248DB45F8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = *(a2 + 12);
  v8 = (*(a2 + 8) + a4);
  v9 = sub_248DB44F4(a1);
  if (v8 + v7 > (*(*v9 + 96))(v9))
  {
    v10 = sub_248DB44F4(a1);
    v7 = (*(*v10 + 96))(v10) - v8;
  }

  v11 = sub_248DB47E0();
  v12 = *MEMORY[0x277CBECE8];
  if (v11)
  {
    v13 = v11;
    v14 = CFStringCreateWithFormat(v12, 0, @"0x%02hX", *(a2 + 4));
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    Value = CFDictionaryGetValue(v13, v14);
    if (Value)
    {
      v17 = Value;
      CFRetain(Value);
      CFRelease(v15);
      goto LABEL_9;
    }

    CFRelease(v15);
  }

  v17 = CFStringCreateWithFormat(v12, 0, @"Type %02hX", *(a2 + 4));
LABEL_9:
  v20 = sub_248DB4858(v8, v7, a3, v17, 0, 0, v18, v19);
  if (!v20)
  {
    if (v17)
    {
      CFRelease(v17);
    }

    return 0;
  }

  v21 = v20;
  v29 = 0;
  v22 = sub_248DB44F4(a1);
  v23 = sub_248DB3258(v22, v8, v7, &v29);
  v24 = v29;
  if (v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = v29 == 0;
  }

  if (!v25)
  {
    v26 = sub_248DB48A8();
    if (v26)
    {
      v27 = v26;
      CFDictionarySetValue(v21, @"partition-filesystems", v26);
      CFRelease(v27);
    }

    v24 = v29;
  }

  if (v24)
  {
    DIDiskImageObjectRelease(v24);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v21;
}

uint64_t sub_248DB47E0()
{
  result = qword_27EECD700;
  if (!qword_27EECD700)
  {
    v1 = *MEMORY[0x277CBECE8];
    v2 = CFDataCreate(*MEMORY[0x277CBECE8], "<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n<dict>\n\t<key>0x01</key>\n\t<string>DOS_FAT_12</string>\n\t<key>0x04</key>\n\t<string>DOS_FAT_16_S</string>\n\t<key>0x05</key>\n\t<string>DOS_Extended</string>\n\t<key>0x06</key>\n\t<string>DOS_FAT_16</string>\n\t<key>0x07</key>\n\t<string>Windows_NTFS</string>\n\t<key>0x0A</key>\n\t<string>Boot_Manager</string>\n\t<key>0x0B</key>\n\t<string>DOS_FAT_32</string>\n\t<key>0x0C</key>\n\t<string>Windows_FAT_32</string>\n\t<key>0x0E</key>\n\t<string>Windows_FAT_16</string>\n\t<key>0x0F</key>\n\t<string>Windows_Extended</string>\n\t<key>0x11</key>\n\t<string>DOS_FAT_12_Hidden</string>\n\t<key>0x14</key>\n\t<string>DOS_FAT_16_S_Hidden</string>\n\t<key>0x16</key>\n\t<string>DOS_FAT_16_Hidden</string>\n\t<key>0x17</key>\n\t<string>Windows_NTFS_Hidden</string>\n\t<key>0x1B</key>\n\t<string>DOS_FAT_32_Hidden</string>\n\t<key>0x1C</key>\n\t<string>Windows_FAT_32_Hidden</string>\n\t<key>0x1E</key>\n\t<string>Windows_FAT_16_Hidden</string>\n\t<key>0x63</key>\n\t<string>UNIX</string>\n\t<key>0x82</key>\n\t<string>Linux_Swap</string>\n\t<key>0x83</key>\n\t<string>Linux_Ext2FS</string>\n\t<key>0x84</key>\n\t<string>Hibernation</string>\n\t<key>0x85</key>\n\t<string>Linux_Extended</string>\n\t<key>0x86</key>\n\t<string>Windows_FAT_16_FT</string>\n\t<key>0x87</key>\n\t<string>Windows_NTFS_FT</string>\n\t<key>0xA5</key>\n\t<string>FreeBSD</string>\n\t<key>0xA6</key>\n\t<string>OpenBSD</string>\n\t<key>0xA7</key>\n\t<string>NeXTSTEP</string>\n\t<key>0xA8</key>\n\t<string>Apple_UFS</string>\n\t<key>0xA9</key>\n\t<string>NetBSD</string>\n\t<key>0xAB</key>\n\t<string>Apple_Boot</string>\n\t<key>0xAF</key>\n\t<string>Apple_HFS</string>\n\t<key>0xB7</key>\n\t<string>BSDI</string>\n\t<key>0xB8</key>\n\t<string>BSDI_Swap</string>\n\t<key>0xC6</key>\n\t<string>Windows_FAT_16_FT_Corrupt</string>\n\t<key>0xC7</key>\n\t<string>Windows_NTFS_FT_Corrupt</string>\n\t<key>0xEB</key>\n\t<string>BeOS</string>\n\t<key>0xF2</key>\n\t<string>DOS_Secondary</string>\n\t<key>0xFD</key>\n\t<string>Linux_RAID</string>\n</dict>\n</plist>\n", 2045);
    qword_27EECD700 = CFPropertyListCreateFromXMLData(v1, v2, 0, 0);
    CFRelease(v2);
    return qword_27EECD700;
  }

  return result;
}

__CFDictionary *sub_248DB48A8()
{
  v0 = MEMORY[0x28223BE20]();
  v87 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  v4 = v3;
  if (Mutable)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  DIDiskImageGetSectorCount(v0);
  if (DIDiskImageReadSectors(v0))
  {
    goto LABEL_9;
  }

  *buffer = 0;
  cf[0] = 0;
  v9 = 0;
  if (!DIMediaKitCreateMKMediaRef(v0, v1, 0, cf))
  {
    v28 = MKCFCreateFSInfo();
    v9 = v28;
    if (v28)
    {
      if (CFDictionaryGetCount(v28))
      {
        Value = CFDictionaryGetValue(v9, @"Filesystem");
        if (Value)
        {
          if (CFEqual(Value, @"APFS"))
          {
            v30 = CFDictionaryGetValue(v9, @"Volume name");
            if (v30)
            {
              v31 = v30;
            }

            else
            {
              v31 = @"Untitled";
            }

            CFDictionarySetValue(Mutable, @"APFS", v31);
          }
        }
      }
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!sub_248DB5430(v0, v4, 2, 1, cf))
  {
    if (LOWORD(cf[0]) == 11080 && (WORD5(v85) & 0xFF01) == 0 && bswap32(WORD1(cf[0])) >> 16 >= 4)
    {
      CFDictionarySetValue(Mutable, @"HFS+", &stru_285BCD368);
    }

    if (!sub_248DB5430(v0, v4, 2, 1, cf) && LOWORD(cf[0]) == 22600 && (WORD5(v85) & 0xFF01) == 0 && bswap32(WORD1(cf[0])) >> 16 >= 5)
    {
      CFDictionarySetValue(Mutable, @"HFSX", &stru_285BCD368);
    }
  }

  if (!sub_248DB5430(v0, v4, 0, 4, cf) && (LOBYTE(cf[0]) == 233 || LOBYTE(cf[0]) == 235 && BYTE2(cf[0]) == 144))
  {
    v32 = *(&cf[1] + 3);
    if (*(&cf[1] + 3) >= 0x200u && *(&cf[1] + 3) <= 0x800u)
    {
      v10.i32[0] = *(&cf[1] + 3);
      v33 = vcnt_s8(v10);
      v33.i16[0] = vaddlv_u8(v33);
      if (v33.i32[0] <= 1u)
      {
        v34 = BYTE5(cf[1]);
        if (BYTE5(cf[1]))
        {
          if (((BYTE5(cf[1]) - 1) & BYTE5(cf[1])) == 0)
          {
            v35 = 32 * *(&v84 + 1) + *(&cf[1] + 3) - 1;
            v36 = v35 / *(&cf[1] + 3);
            if (WORD3(v84))
            {
              v37 = WORD3(v84);
            }

            else
            {
              v37 = DWORD1(v85);
            }

            if (*(&v84 + 3))
            {
              v38 = *(&v84 + 3);
            }

            else
            {
              v38 = v85;
            }

            v39 = v38 - (v36 + HIWORD(cf[1]) + v37 * v84);
            v40 = @"FAT32";
            v41 = v39 / BYTE5(cf[1]);
            if (v41 < 65525)
            {
              v40 = @"FAT16";
            }

            if (v41 >= 4085)
            {
              v42 = v40;
            }

            else
            {
              v42 = @"FAT12";
            }

            v82 = 0;
            v80 = v42;
            if (v35 >= *(&cf[1] + 3))
            {
              v71 = 0;
              v72 = HIWORD(cf[1]) + v84 * WORD3(v84);
              while (2)
              {
                v73 = sub_248DB5430(v0, v4, ((v72 + v71) * v32) >> 9, v32 >> 9, buffer);
                if (v73)
                {
                  v52 = v73;
                }

                else
                {
                  v74 = 0;
                  v75 = buffer;
                  do
                  {
                    if (*v75 != 229)
                    {
                      if (!*v75)
                      {
                        goto LABEL_184;
                      }

                      v76 = v75[11];
                      if (v76 != 15 && (v76 & 8) != 0)
                      {
                        __strncat_chk();
                        goto LABEL_184;
                      }
                    }

                    v74 += 32;
                    v75 += 32;
                  }

                  while (v74 < v32);
                  if (++v71 < v36)
                  {
                    continue;
                  }

LABEL_184:
                  v52 = 0;
                }

                break;
              }
            }

            else
            {
              v43 = BYTE5(cf[1]) * *(&cf[1] + 3);
              v44 = malloc_type_malloc(v43, 0x3541F161uLL);
              v45 = HIDWORD(v85);
              if ((HIDWORD(v85) - 2) >= 0xFFFFFF4)
              {
LABEL_190:
                v52 = 0;
              }

              else
              {
                v46 = v43 >> 9;
                while (1)
                {
                  v47 = sub_248DB5430(v0, v4, ((HIWORD(cf[1]) + DWORD1(v85) * v84 + (v45 - 2) * v34) * v32) >> 9, v46, v44);
                  if (v47)
                  {
                    break;
                  }

                  v48 = 0;
                  do
                  {
                    if (v44[v48] != 229)
                    {
                      if (!v44[v48])
                      {
                        goto LABEL_190;
                      }

                      v49 = v44[v48 + 11];
                      if (v49 != 15 && (v49 & 8) != 0)
                      {
                        __strncat_chk();
                        goto LABEL_190;
                      }
                    }

                    v48 += 32;
                  }

                  while (v48 < v43);
                  v79 = 4 * v45;
                  v51 = 4 * v45 / v32;
                  v52 = sub_248DB5430(v0, v4, ((v51 + HIWORD(cf[1])) * v32) >> 9, v32 >> 9, v44);
                  if (!v52)
                  {
                    v45 = *&v44[(v79 - v51 * v32)] & 0xFFFFFFF;
                    v46 = v43 >> 9;
                    if (v45 - 2 < 0xFFFFFF4)
                    {
                      continue;
                    }
                  }

                  goto LABEL_191;
                }

                v52 = v47;
              }

LABEL_191:
              free(v44);
            }

            if (!v52)
            {
              if (!v82 && (!*(&v84 + 1) || BYTE6(v85) == 41))
              {
                __strncat_chk();
              }

              sub_248DD494C(Mutable, v80);
            }
          }
        }
      }
    }
  }

  cf[0] = 0;
  v11 = 0;
  if (!DIMediaKitCreateMKMediaRef(v0, v1, 0, cf))
  {
    *buffer = 0;
    v53 = MKCFCreateFSInfo();
    v11 = v53;
    if (!*buffer)
    {
      if (v53)
      {
        if (CFDictionaryGetCount(v53))
        {
          v54 = CFDictionaryGetValue(v11, @"Filesystem");
          if (v54)
          {
            if (CFEqual(v54, @"NTFS"))
            {
              v55 = CFDictionaryGetValue(v11, @"Volume name");
              if (v55)
              {
                v56 = v55;
              }

              else
              {
                v56 = @"UNTITLED";
              }

              CFDictionarySetValue(Mutable, @"NTFS", v56);
              CFDictionaryRemoveValue(Mutable, @"FAT12");
              CFDictionaryRemoveValue(Mutable, @"FAT16");
              CFDictionaryRemoveValue(Mutable, @"FAT32");
            }
          }
        }
      }
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = malloc_type_calloc(0x800uLL, 0x10uLL, 0xE7919DADuLL);
  if (v12)
  {
    v13 = v12;
    if (!sub_248DB5430(v0, v4, 64, 64, v12))
    {
      v14 = v13 + 1;
      v15 = 16;
      while (*(v14 - 1) || *v14 != 21326 || v14[2] != 82)
      {
        v14 += 2048;
        if (!--v15)
        {
          goto LABEL_44;
        }
      }

      SectorCount = DIDiskImageGetSectorCount(v0);
      v67 = SectorCount - 256;
      if (SectorCount >= 256)
      {
        v68 = SectorCount;
        if (sub_248DBF2AC(v0, v4, 512, 256, cf) || sub_248DBF2AC(v0, v4, 512, v67, cf) || sub_248DBF2AC(v0, v4, 512, v68 - 1, cf) || v68 >= 0x400 && (sub_248DBF2AC(v0, v4, 2048, 256, cf) || (v78 = v68 >> 2, sub_248DBF2AC(v0, v4, 2048, v78 - 256, cf)) || sub_248DBF2AC(v0, v4, 2048, v78 - 1, cf)))
        {
          v69 = CFStringCreateWithCString(v1, cf, 0x8000100u);
          if (v69)
          {
            v70 = v69;
          }

          else
          {
            v70 = &stru_285BCD368;
          }

          CFDictionarySetValue(Mutable, @"UDF", v70);
          CFRelease(v70);
        }
      }
    }

LABEL_44:
    free(v13);
  }

  v85 = 0u;
  v86 = 0u;
  *cf = 0u;
  v84 = 0u;
  v17 = malloc_type_malloc(0x800uLL, 0x9100DA06uLL);
  if (!v17)
  {
    goto LABEL_140;
  }

  v18 = v17;
  if (sub_248DB5430(v0, v4, 64, 4, v17))
  {
    goto LABEL_139;
  }

  v19 = v18 + 40;
  v20 = 16;
  while (*(v18 + 1) == 808469571 && v18[5] == 49)
  {
    v22 = *v18;
    if (v22 == 1)
    {
      v18[120] = 0;
      *cf = *v19;
      v84 = *(v18 + 56);
      LOBYTE(v85) = 0;
      goto LABEL_79;
    }

    if (v22 != 2)
    {
      if (v22 == 255)
      {
        goto LABEL_135;
      }

LABEL_79:
      if (v20 > 0x72)
      {
        goto LABEL_135;
      }

      goto LABEL_80;
    }

    if ((*(v18 + 44) != 12069 || v18[90] != 64) && (*(v18 + 44) != 12069 || v18[90] != 67) && (*(v18 + 44) != 12069 || v18[90] != 69))
    {
      goto LABEL_79;
    }

    for (i = 0; i != 16; ++i)
    {
      if (!*(v19 + i))
      {
        break;
      }

      *(v19 + i) = __rev16(*(v19 + i));
    }

    v27 = CFStringCreateWithCharacters(v1, v18 + 20, i);
    if (CFStringGetCString(v27, buffer, 32, 0x8000100u))
    {
      strlen(buffer);
      __memmove_chk();
    }

    CFRelease(v27);
    if (v20 > 0x72 || LOBYTE(cf[0]))
    {
      goto LABEL_135;
    }

LABEL_80:
    ++v20;
    if (sub_248DB5430(v0, v4, 4 * v20, 4, v18))
    {
      goto LABEL_139;
    }
  }

  if (!LOBYTE(cf[0]))
  {
    goto LABEL_139;
  }

LABEL_135:
  v57 = CFStringCreateWithCString(v1, cf, 0x8000100u);
  if (v57)
  {
    v58 = v57;
  }

  else
  {
    v58 = &stru_285BCD368;
  }

  CFDictionarySetValue(Mutable, @"ISO9660", v58);
  CFRelease(v58);
LABEL_139:
  free(v18);
LABEL_140:
  if (!sub_248DB5430(v0, v4, 2, 1, cf) && !(LOBYTE(cf[0]) | BYTE1(cf[0])) && (~BYTE4(cf[0]) & 0xF0) == 0 && (BYTE4(cf[0]) & 0xF) != 0)
  {
    v59 = BYTE4(cf[0]) & 0xF;
    while (1)
    {
      v60 = *(cf + v59 + 4);
      if ((v60 - 97) < 0x1Au)
      {
        v60 &= 0x5Fu;
      }

      v61 = (v60 - 65);
      v62 = v61 < 0x1A;
      if (!--v59)
      {
        break;
      }

      v63 = v61 >= 0x1A && (v60 - 48) >= 0xAu;
      if (v63 && v60 != 46 && v60 != 32)
      {
        goto LABEL_6;
      }

      if (!v59)
      {
        v62 = 1;
        break;
      }
    }

    if (v62 && BYTE3(v85) == 39 && BYTE4(v85) == 13)
    {
      v64 = CFStringCreateWithPascalString(v1, cf + 4, 0x600u);
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = &stru_285BCD368;
      }

      CFDictionarySetValue(Mutable, @"ProDOS", v65);
      CFRelease(v65);
    }
  }

LABEL_6:
  if (Mutable)
  {
LABEL_9:
    if (!CFDictionaryGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  if (v4)
  {
    free(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t sub_248DB5430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__dst)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v14 = 0;
  v10 = __dst;
  while (1)
  {
    if (a3 < 128)
    {
      v13 = v6 << 9;
      memmove(__dst, (a2 + (a3 << 9)), v6 << 9);
      v14 = v6;
      v12 = v6;
      goto LABEL_8;
    }

    DIDiskImageGetSectorCount(a1);
    result = DIDiskImageReadSectors(a1);
    if (result)
    {
      return result;
    }

    v12 = v14;
    if (!v14)
    {
      return 999;
    }

    v13 = v14 << 9;
LABEL_8:
    v10 += v13;
    a3 += v12;
    v6 -= v12;
    if (!v6)
    {
      return 0;
    }
  }
}

uint64_t sub_248DB550C(CFArrayRef theArray, unint64_t a2)
{
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theArray);
  Count = CFArrayGetCount(MutableCopy);
  v12 = 0;
  v13 = 0;
  v14.length = CFArrayGetCount(MutableCopy);
  v14.location = 0;
  CFArraySortValues(MutableCopy, v14, sub_248DB5638, 0);
  if (Count < 1)
  {
LABEL_10:
    v10 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v6);
      if (!ValueAtIndex)
      {
        break;
      }

      v8 = ValueAtIndex;
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 != CFDictionaryGetTypeID() || !sub_248DB5720(v8, &v13, &v12, 0, 0, 0) || v5 > v13)
      {
        break;
      }

      v5 = v12 + v13;
      if (Count == ++v6)
      {
        if (v5 <= a2)
        {
          goto LABEL_10;
        }

        break;
      }
    }

    v10 = 1;
  }

  CFRelease(MutableCopy);
  return v10;
}

const __CFDictionary *sub_248DB5638(const __CFDictionary *result, const void *a2)
{
  cf = 0;
  value = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 != CFDictionaryGetTypeID() || !CFDictionaryGetValueIfPresent(v3, @"partition-start", &value))
    {
      return 0;
    }

    v5 = CFGetTypeID(value);
    TypeID = CFNumberGetTypeID();
    result = 0;
    if (a2 && v5 == TypeID)
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetValueIfPresent(a2, @"partition-start", &cf))
        {
          v8 = CFGetTypeID(cf);
          if (v8 == CFNumberGetTypeID())
          {
            return CFNumberCompare(value, cf, 0);
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_248DB5720(CFDictionaryRef theDict, void *a2, void *a3, _DWORD *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    result = CFDictionaryGetValue(theDict, @"partition-start");
    if (!result)
    {
      return result;
    }

    v13 = result;
    v14 = CFGetTypeID(result);
    if (v14 != CFNumberGetTypeID())
    {
      return 0;
    }

    result = CFNumberGetValue(v13, kCFNumberLongLongType, a2);
    if (!result)
    {
      return result;
    }
  }

  if (a3)
  {
    result = CFDictionaryGetValue(theDict, @"partition-length");
    if (!result)
    {
      return result;
    }

    v15 = result;
    v16 = CFGetTypeID(result);
    if (v16 != CFNumberGetTypeID())
    {
      return 0;
    }

    result = CFNumberGetValue(v15, kCFNumberLongLongType, a3);
    if (!result)
    {
      return result;
    }
  }

  if (a4)
  {
    *a4 = 0;
    Value = CFDictionaryGetValue(theDict, @"partition-number");
    if (Value)
    {
      v18 = Value;
      v19 = CFGetTypeID(Value);
      if (v19 != CFNumberGetTypeID())
      {
        return 0;
      }

      result = CFNumberGetValue(v18, kCFNumberSInt32Type, a4);
      if (!result)
      {
        return result;
      }
    }
  }

  if (a6)
  {
    result = CFDictionaryGetValue(theDict, @"partition-name");
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = CFGetTypeID(result);
    if (v21 != CFStringGetTypeID())
    {
      return 0;
    }

    *a6 = v20;
  }

  if (!a5)
  {
    return 1;
  }

  result = CFDictionaryGetValue(theDict, @"partition-hint");
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = CFGetTypeID(result);
  if (v23 == CFStringGetTypeID())
  {
    *a5 = v22;
    return 1;
  }

  return 0;
}

void sub_248DB58B0(const __CFArray *a1, unint64_t a2, char a3)
{
  v4 = sub_248DB5940(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4))
    {
      v8.length = CFArrayGetCount(v5);
      v8.location = 0;
      CFArrayAppendArray(a1, v5, v8);
    }

    CFRelease(v5);
  }

  v6.length = CFArrayGetCount(a1);
  v6.location = 0;

  CFArraySortValues(a1, v6, sub_248DB5638, 0);
}

__CFArray *sub_248DB5940(const __CFArray *a1, unint64_t a2, char a3)
{
  Count = CFArrayGetCount(a1);
  v19 = 0;
  v20 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v21.length = CFArrayGetCount(a1);
  v21.location = 0;
  CFArraySortValues(a1, v21, sub_248DB5638, 0);
  if (Count < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      if (ValueAtIndex)
      {
        v13 = ValueAtIndex;
        v14 = CFGetTypeID(ValueAtIndex);
        if (v14 == CFDictionaryGetTypeID())
        {
          if (sub_248DB5720(v13, &v20, &v19, 0, 0, 0))
          {
            v15 = v20;
            if (v20 > v11)
            {
              v16 = sub_248DB487C(v11, v20 - v11, 0, @"Apple_Free", &stru_285BCD368, 0, v8, v9, 0);
              CFArrayAppendValue(Mutable, v16);
              CFRelease(v16);
              v15 = v20;
            }

            v11 = v19 + v15;
          }
        }
      }

      ++v10;
    }

    while (Count != v10);
  }

  if (a2 > v11 && (a3 & 1) == 0)
  {
    v17 = sub_248DB487C(v11, a2 - v11, 0, @"Apple_Free", &stru_285BCD368, 0, v8, v9, 0);
    CFArrayAppendValue(Mutable, v17);
    CFRelease(v17);
  }

  return Mutable;
}

void sub_248DB5B04(void *a1)
{
  sub_248DB5B3C(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DB5B3C(void *a1)
{
  *a1 = &unk_285BCC440;
  v2 = a1[13];
  if (v2)
  {
    sub_248DA1714(v2);
  }

  a1[13] = 0;

  return sub_248DA1D68(a1);
}

char *sub_248DB5BA0(char *a1, uint64_t a2)
{
  result = sub_248DB3DA4(a1, a2);
  *result = &unk_285BCC2B8;
  return result;
}

uint64_t sub_248DB5BD4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = (*(*a1 + 64))(a1, &v5, a2, 0);
  if (v2)
  {
    v3 = v2;
    v5 += 100;
    if (!CFArrayGetCount(v2))
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  return v5;
}

__CFArray *sub_248DB5C58(uint64_t a1, _DWORD *a2, unsigned int a3, __CFDictionary **a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  v51 = 0;
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  *(v10 + 30) = 0u;
  *(v10 + 31) = 0u;
  *(v10 + 28) = 0u;
  *(v10 + 29) = 0u;
  *(v10 + 26) = 0u;
  *(v10 + 27) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 25) = 0u;
  *(v10 + 22) = 0u;
  *(v10 + 23) = 0u;
  *(v10 + 20) = 0u;
  *(v10 + 21) = 0u;
  *(v10 + 18) = 0u;
  *(v10 + 19) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 17) = 0u;
  *(v10 + 14) = 0u;
  *(v10 + 15) = 0u;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v12 = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v49 = a3;
  allocator = v8;
  theDict = Mutable;
  v44 = a4;
  v14 = sub_248DB44F4(a1);
  if (!(*(*v14 + 48))(v14, 0, 1, &v51, v11))
  {
    v17 = 512;
    memcpy(__dst, v11, sizeof(__dst));
    if (*v11 == 21061)
    {
      v18 = v11[1];
      *a2 += 2000;
      if (v18 == 8)
      {
        v19 = sub_248DB44F4(a1);
        if ((*(*v19 + 48))(v19, 1, 1, &v51, v11))
        {
          goto LABEL_6;
        }

        v20 = *v11 == 19792;
        v21 = 512;
        if (*v11 == 19792)
        {
          v17 = 512;
        }

        else
        {
          v17 = 2048;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v17 = __rev16(v18);
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v22 = 1;
    v47 = 0;
    v48 = !v20;
    v23 = v17;
    v24 = 1;
    do
    {
      if (v23 + 512 <= v21 + 512)
      {
        v27 = v21;
      }

      else
      {
        v25 = sub_248DB44F4(a1);
        v26 = (*(*v25 + 48))(v25, v23 >> 9, 1, &v51, v11);
        v27 = v23;
        v21 = v23;
        if (v26)
        {
          goto LABEL_6;
        }
      }

      v28 = v11 + v23 - v27;
      if (*v28 != 19792)
      {
        goto LABEL_6;
      }

      if (!strcmp(v28 + 48, "Apple_partition_map") || !strcmp(v28 + 48, "Apple_Partition_Map") || !strcmp(v28 + 48, "Apple_patition_map"))
      {
        v24 = bswap32(*(v28 + 1));
        v47 = bswap32(*(v28 + 3));
        strcpy(v28 + 48, "Apple_partition_map");
      }

      else if (v24 == 1)
      {
        v24 = bswap32(*(v28 + 1));
      }

      v29 = v48;
      if ((v22 & 3) != 0)
      {
        v29 = 1;
      }

      v30 = v17;
      if ((v29 & 1) == 0)
      {
        if (!strcmp(v28 + 48, "Apple_Driver") || !strcmp(v28 + 48, "Apple_Driver43") || !strcmp(v28 + 48, "Apple_Driver43_CD") || !strcmp(v28 + 48, "Apple_Driver_ATA") || !strcmp(v28 + 48, "Apple_Driver_ATAPI") || (v30 = v17, !strcmp(v28 + 48, "Apple_Patches")))
        {
          v30 = 2048;
        }
      }

      if ((*(*a1 + 72))(a1, v28, v22, v30))
      {
        goto LABEL_6;
      }

      if (!v49 || ((*(*a1 + 80))(a1, v28, v22, v30) & 1) == 0)
      {
        v31 = (*(*a1 + 88))(a1, v28, v22, v30, v49);
        if (v31)
        {
          v32 = v31;
          CFArrayAppendValue(v13, v31);
          CFRelease(v32);
        }
      }

      v22 = (v22 + 1);
      v23 += v17;
    }

    while (v22 <= v24);
    if (!v47)
    {
      goto LABEL_6;
    }

    if (v49)
    {
      v33 = CFDataCreate(allocator, __dst, 512);
      v36 = sub_248DB4858(0, 1, 0, @"DDM", @"Driver Descriptor Map", v33, v34, v35);
      if (v36)
      {
        v37 = v36;
        CFArrayAppendValue(v13, v36);
        CFRelease(v37);
      }

      if (v33)
      {
        CFRelease(v33);
      }
    }

    else if (!v49)
    {
      goto LABEL_59;
    }

    v38 = sub_248DB44F4(a1);
    v39 = (*(*v38 + 96))(v38);
    if (sub_248DB550C(v13, v39))
    {
      goto LABEL_6;
    }

    if ((v49 & 2) != 0)
    {
      v40 = sub_248DB44F4(a1);
      v41 = (*(*v40 + 96))(v40);
      sub_248DB58B0(v13, v41, 0);
LABEL_61:
      valuePtr = bswap32(__dst[1]) >> 16;
      v42 = CFNumberCreate(allocator, kCFNumberSInt16Type, &valuePtr);
      CFDictionarySetValue(theDict, @"block-size", v42);
      CFRelease(v42);
      v43 = *MEMORY[0x277CBED28];
      CFDictionarySetValue(theDict, @"appendable", *MEMORY[0x277CBED28]);
      CFDictionarySetValue(theDict, @"burnable", v43);
      free(v11);
      if (v44)
      {
        *v44 = theDict;
      }

      else
      {
        CFRelease(theDict);
      }

      goto LABEL_12;
    }

LABEL_59:
    sub_248DB91F4(v13);
    goto LABEL_61;
  }

LABEL_6:
  CFRelease(v13);
  Mutable = theDict;
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    free(v11);
  }

  v13 = 0;
LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_248DB62DC(void *a1)
{
  sub_248DB5B3C(a1);

  JUMPOUT(0x24C1EBE70);
}

char *sub_248DB6314(char *a1, uint64_t a2)
{
  result = sub_248DB3DA4(a1, a2);
  *result = &unk_285BCCE70;
  return result;
}

uint64_t sub_248DB6348(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = (*(*a1 + 64))(a1, &v5, a2, 0);
  if (v2)
  {
    v3 = v2;
    v5 += 101;
    if (!CFArrayGetCount(v2))
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  return v5;
}

__CFArray *sub_248DB63CC(uint64_t a1, uint64_t a2, char a3, __CFDictionary **a4)
{
  valuePtr = 512;
  if (a4)
  {
    *a4 = 0;
  }

  v65 = 0;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  v10 = v9;
  if (v9)
  {
    v9[30] = 0u;
    v9[31] = 0u;
    v9[28] = 0u;
    v9[29] = 0u;
    v9[26] = 0u;
    v9[27] = 0u;
    v9[24] = 0u;
    v9[25] = 0u;
    v9[22] = 0u;
    v9[23] = 0u;
    v9[20] = 0u;
    v9[21] = 0u;
    v9[18] = 0u;
    v9[19] = 0u;
    v9[16] = 0u;
    v9[17] = 0u;
    v9[14] = 0u;
    v9[15] = 0u;
    v9[12] = 0u;
    v9[13] = 0u;
    v9[10] = 0u;
    v9[11] = 0u;
    v9[8] = 0u;
    v9[9] = 0u;
    v9[6] = 0u;
    v9[7] = 0u;
    v9[4] = 0u;
    v9[5] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *v9 = 0u;
    v9[1] = 0u;
    v11 = CFArrayCreateMutable(v7, 8, MEMORY[0x277CBF128]);
    if (v11)
    {
      v12 = v11;
      v13 = sub_248DB44F4(a1);
      if (!(*(*v13 + 48))(v13, 0, 1, &v65, v10) && *(v10 + 255) == 43605)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          if (BYTE2(v10[2 * v14 + 56]) == 238)
          {
            if (v15)
            {
              goto LABEL_49;
            }

            v15 = ++v14;
          }

          else
          {
            ++v14;
          }
        }

        while (v14 != 4);
        if (v15)
        {
          v16 = sub_248DB44F4(a1);
          if (!(*(*v16 + 48))(v16, 1, 1, &v65, v10) && *v10 == 0x5452415020494645)
          {
            v17 = *(v10 + 3);
            if (v17 - 513 >= 0xFFFFFE5B)
            {
              v18 = *(v10 + 4);
              *(v10 + 4) = 0;
              if (crc32(0, v10, v17) == v18)
              {
                v19 = *(v10 + 21);
                if ((v19 - 0x10000) >= 0xFFFF0080)
                {
                  v20 = *(v10 + 20);
                  if (!WORD1(v20))
                  {
                    v61 = *(v10 + 22);
                    v63 = v10[9];
                    free(v10);
                    v64 = v19;
                    *len = v20 * v19;
                    if (((*len + 511) & 0xFFFFFE00) != 0)
                    {
                      v10 = malloc_type_malloc((*len + 511) & 0xFFFFFE00, 0x100004077774924uLL);
                      if (v10)
                      {
                        v21 = sub_248DB44F4(a1);
                        v58 = (len[0] + 511) >> 9;
                        if (!(*(*v21 + 48))(v21, v63 & 0x7FFFFFFFFFFFFFLL) && crc32(0, v10, len[0]) == v61 && v20)
                        {
                          v62 = 0;
                          v22 = v20 + 1;
                          v23 = 1;
                          v24 = v10;
                          *lena = v22;
                          do
                          {
                            sub_248DD4C70(v24);
                            *&v25 = sub_248DD4C70(v24 + 2);
                            if ((*(*a1 + 72))(a1, v24, v25))
                            {
                              if ((*(*a1 + 80))(a1, v24, v23))
                              {
                                goto LABEL_49;
                              }

                              if (((*(*a1 + 88))(a1, v24, v23) & 1) == 0)
                              {
                                v28 = sub_248DB6B28(a1, v24, v23);
                                if (v28)
                                {
                                  v29 = v28;
                                  ++v62;
                                  CFArrayAppendValue(v12, v28);
                                  CFRelease(v29);
                                }

                                v22 = *lena;
                              }
                            }

                            ++v23;
                            v24 = (v24 + v64);
                          }

                          while (v22 != v23);
                          if (v62)
                          {
                            if (a3)
                            {
                              v30 = sub_248DB4858(0, 1, 0, @"MBR", @"Protective Master Boot Record", 0, v26, v27);
                              if (v30)
                              {
                                v33 = v30;
                                CFArrayAppendValue(v12, v30);
                                CFRelease(v33);
                              }

                              v34 = sub_248DB4858(1, 1, 0, @"Primary GPT Header", @"GPT Header", 0, v31, v32);
                              if (v34)
                              {
                                v37 = v34;
                                CFArrayAppendValue(v12, v34);
                                CFRelease(v37);
                              }

                              v38 = sub_248DB4858(v63 & 0x7FFFFFFFFFFFFFLL, v58, 0, @"Primary GPT Table", @"GPT Partition Data", 0, v35, v36);
                              if (v38)
                              {
                                v39 = v38;
                                CFArrayAppendValue(v12, v38);
                                CFRelease(v39);
                              }

                              v40 = sub_248DB44F4(a1);
                              v41 = (*(*v40 + 96))(v40);
                              v44 = sub_248DB4858(v41 + ~v58, v58, 0, @"Backup GPT Table", @"GPT Partition Data", 0, v42, v43);
                              if (v44)
                              {
                                v45 = v44;
                                CFArrayAppendValue(v12, v44);
                                CFRelease(v45);
                              }

                              v46 = sub_248DB44F4(a1);
                              v47 = (*(*v46 + 96))(v46);
                              v50 = sub_248DB4858(v47 - 1, 1, 0, @"Backup GPT Header", @"GPT Header", 0, v48, v49);
                              if (v50)
                              {
                                v51 = v50;
                                CFArrayAppendValue(v12, v50);
                                CFRelease(v51);
                              }
                            }

                            v52 = sub_248DB44F4(a1);
                            v53 = (*(*v52 + 96))(v52);
                            if ((sub_248DB550C(v12, v53) & 1) == 0)
                            {
                              if ((a3 & 2) != 0)
                              {
                                v55 = sub_248DB44F4(a1);
                                v56 = (*(*v55 + 96))(v55);
                                sub_248DB58B0(v12, v56, 0);
                              }

                              else
                              {
                                sub_248DB91F4(v12);
                              }

                              v57 = CFNumberCreate(v7, kCFNumberLongLongType, &valuePtr);
                              CFDictionarySetValue(Mutable, @"block-size", v57);
                              CFRelease(v57);
                              CFDictionarySetValue(Mutable, @"burnable", *MEMORY[0x277CBED10]);
                              free(v10);
                              if (a4)
                              {
                                *a4 = Mutable;
                              }

                              else
                              {
                                CFRelease(Mutable);
                              }

                              return v12;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v10 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_49:
      CFRelease(v12);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    free(v10);
  }

  return 0;
}

BOOL sub_248DB6AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (*(a2 + 32) == v2)
  {
    return 1;
  }

  v4 = v2 + 1;
  v5 = sub_248DB44F4(a1);
  return v4 > (*(*v5 + 96))(v5);
}

__CFDictionary *sub_248DB6B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v37 = *MEMORY[0x277D85DE8];
  __dst[0] = 0;
  do
  {
    if (!*(a2 + 2 * v6 + 56))
    {
      break;
    }

    ++v6;
  }

  while (v6 != 72);
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], (a2 + 56), 2 * v6, 0x14000100u, 0);
  if (v8)
  {
    v9 = v8;
    Length = CFStringGetLength(v8);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (v12)
    {
      v13 = v12;
      if (CFStringGetCString(v9, v12, MaximumSizeForEncoding + 1, 0x8000100u) && strlen(v13) <= 0x6D)
      {
        strlcpy(__dst, v13, 0x6DuLL);
      }

      CFRelease(v9);
      free(v13);
    }

    else
    {
      CFRelease(v9);
    }
  }

  uuid_unparse(a2, out);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  if (__dst[0])
  {
    v16 = CFStringCreateWithCString(v7, __dst, 0x8000100u);
  }

  else
  {
    v16 = CFStringCreateWithFormat(v7, 0, @"Untitled %u", a3);
  }

  v17 = v16;
  v18 = v14 - v15;
  v19 = CFStringCreateWithCString(v7, out, 0x8000100u);
  Value = sub_248DB6EE8();
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, v19);
  }

  if (Value)
  {
    v21 = Value;
  }

  else
  {
    v21 = v19;
  }

  CFRetain(v21);
  v24 = sub_248DB4858(v15, v18 + 1, a3, v21, v17, 0, v22, v23);
  if (v24)
  {
    *cStr = 0;
    v25 = sub_248DB44F4(a1);
    v26 = sub_248DB3258(v25, v15, v18 + 1, cStr);
    v27 = *cStr;
    if (v26 || !*cStr)
    {
      goto LABEL_31;
    }

    v28 = sub_248DB48A8();
    if (!v28)
    {
LABEL_30:
      v27 = *cStr;
LABEL_31:
      if (v27)
      {
        DIDiskImageObjectRelease(v27);
      }

      uuid_unparse((a2 + 16), cStr);
      v31 = CFStringCreateWithCString(v7, cStr, 0x8000100u);
      CFDictionarySetValue(v24, @"partition-UUID", v31);
      CFDictionarySetValue(v24, @"partition-hint-UUID", v19);
      if (v31)
      {
        CFRelease(v31);
      }

      goto LABEL_35;
    }

    v29 = v28;
    CFDictionarySetValue(v24, @"partition-filesystems", v28);
    if (CFStringCompare(v21, @"Apple_HFS", 0))
    {
      if (CFDictionaryGetValue(v29, @"NTFS"))
      {
        v30 = @"Windows_NTFS";
      }

      else
      {
        if (CFStringCompare(v21, @"DOS_FAT", 0))
        {
          goto LABEL_29;
        }

        if (CFDictionaryGetValue(v29, @"FAT12"))
        {
          v30 = @"DOS_FAT_12";
        }

        else if (CFDictionaryGetValue(v29, @"FAT16"))
        {
          v30 = @"DOS_FAT_16";
        }

        else
        {
          if (!CFDictionaryGetValue(v29, @"FAT32"))
          {
            goto LABEL_29;
          }

          v30 = @"DOS_FAT_32";
        }
      }
    }

    else
    {
      if (!CFDictionaryGetValue(v29, @"HFSX"))
      {
LABEL_29:
        CFRelease(v29);
        goto LABEL_30;
      }

      v30 = @"Apple_HFSX";
    }

    CFDictionarySetValue(v24, @"partition-hint", v30);
    goto LABEL_29;
  }

LABEL_35:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_248DB6EE8()
{
  result = qword_27EECD710;
  if (!qword_27EECD710)
  {
    v1 = *MEMORY[0x277CBECE8];
    v2 = CFDataCreate(*MEMORY[0x277CBECE8], "<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n<dict>\n\t<key>48465300-0000-11AA-AA11-00306543ECAC</key>\n\t<string>Apple_HFS</string>\n\t<key>7C3457EF-0000-11AA-AA11-00306543ECAC</key>\n\t<string>Apple_APFS</string>\n\t<key>EBD0A0A2-B9E5-4433-87C0-68B6B72699C7</key>\n\t<string>DOS_FAT</string>\n</dict>\n</plist>\n", 418);
    if (v2)
    {
      v3 = v2;
      qword_27EECD710 = CFPropertyListCreateWithData(v1, v2, 0, 0, 0);
      CFRelease(v3);
    }

    return qword_27EECD710;
  }

  return result;
}

void sub_248DB6F74(void *a1)
{
  sub_248DB5B3C(a1);

  JUMPOUT(0x24C1EBE70);
}

char *sub_248DB6FAC(char *a1, uint64_t a2)
{
  result = sub_248DB3DA4(a1, a2);
  *result = &unk_285BCCE00;
  return result;
}

uint64_t sub_248DB6FE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8 = sub_248DB44F4(a1);
  cf = 0;
  if (a4)
  {
    *a4 = 0;
  }

  valuePtr = 0;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!DIMediaKitCreateMKMediaRef(v8, 0, 0, &cf))
  {
    MKDetectISO();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DB73CC(void *a1)
{
  sub_248DB5B3C(a1);

  JUMPOUT(0x24C1EBE70);
}

void sub_248DB7404(const void *a1, const void *a2, void *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {

    CFDictionaryAddValue(cf, a1, a2);
  }
}

uint64_t sub_248DB7478(const __CFArray *a1, CFIndex a2, void *a3, void *a4, void **a5, void **a6)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = &stru_285BCD368;
  }

  if (a6)
  {
    *a6 = &stru_285BCD368;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex)
  {
    return 999;
  }

  v11 = ValueAtIndex;
  v12 = CFGetTypeID(ValueAtIndex);
  if (v12 != CFDictionaryGetTypeID())
  {
    return 999;
  }

  value = 0;
  if (a3)
  {
    if (!CFDictionaryGetValueIfPresent(v11, @"partition-start", &value) || !CFNumberGetValue(value, kCFNumberLongLongType, a3))
    {
      return 999;
    }
  }

  if (a4 && (!CFDictionaryGetValueIfPresent(v11, @"partition-length", &value) || !CFNumberGetValue(value, kCFNumberLongLongType, a4)))
  {
    return 999;
  }

  if (a5 && CFDictionaryGetValueIfPresent(v11, @"partition-hint", &value))
  {
    v13 = CFGetTypeID(value);
    if (v13 == CFStringGetTypeID())
    {
      *a5 = value;
    }
  }

  if (!a6)
  {
    return 0;
  }

  result = CFDictionaryGetValueIfPresent(v11, @"partition-name", &value);
  if (result)
  {
    v15 = CFGetTypeID(value);
    if (v15 == CFStringGetTypeID())
    {
      result = 0;
      *a6 = value;
      return result;
    }

    return 0;
  }

  return result;
}

uLong sub_248DB75F4(uLong result, int a2, unsigned int a3)
{
  *buf = 16843009 * a2;
  v3 = a3;
  if (a3)
  {
    v4 = result;
    result = *(result + 112);
    do
    {
      if (v3 >= 5)
      {
        v5 = 4;
      }

      else
      {
        v5 = v3;
      }

      result = crc32(result, buf, v5);
      *(v4 + 112) = result;
      v3 -= v5;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_248DB7668(uint64_t a1, uint64_t a2, int a3, const unsigned __int8 *a4, const void *a5)
{
  if (!a2)
  {
    return 4294967246;
  }

  if (!*(a1 + 104))
  {
    return 4294967097;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  v16 = v5;
  v17 = v6;
  v15 = 0;
  v11 = sub_248DA6D78(a1, a2, &v15);
  if (!v11)
  {
    return 4294967104;
  }

  v12 = v11;
  v14 = 0;
  if (!sub_248DA6144(v11, @"Attributes", &v14))
  {
    return 4294967097;
  }

  if ((v14 & 8) != 0)
  {
    return 4294967098;
  }

  if (!sub_248DB05B0(v12, @"ID", a3, 0))
  {
    return 4294962336;
  }

  CFDictionaryRemoveValue(v12, @"Name");
  if (!sub_248DB0650(v12, a4))
  {
    return 4294962336;
  }

  CFDictionaryRemoveValue(v12, @"CFName");
  if (a5)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a5))
    {
      CFDictionarySetValue(v12, @"CFName", a5);
    }
  }

  return 0;
}

uint64_t sub_248DB77A8(uint64_t a1, void **a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  LODWORD(result) = (*(*a1 + 248))(a1);
  if (result)
  {
    if (result == -198)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    sub_248DD4E4C(a2);
    return 0;
  }
}

uint64_t sub_248DB7818(_BYTE *a1)
{
  if (a1[114] == 1)
  {
    (*(*a1 + 200))(a1);
  }

  sub_248DA785C(a1);
  return 0;
}

uint64_t sub_248DB78A4(uint64_t a1, uint64_t a2, char **a3)
{
  v24 = 0;
  Code = 22;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_22;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    cf = 0;
    v7 = (*(*a1 + 344))(a1, &cf);
    if (!v7)
    {
      v7 = sub_248DA5DA4(0, 3, &v24);
      if (!v7)
      {
        v7 = (*(*v24 + 48))(v24);
        if (!v7)
        {
          v7 = (*(*v24 + 304))(v24, cf, 0, 0);
          if (!v7)
          {
            v7 = (*(*v24 + 56))(v24);
          }
        }
      }
    }

    Code = v7;
    if (cf)
    {
      (*(*a1 + 352))(a1, 0);
    }

    goto LABEL_22;
  }

  v8 = *(a2 + 224);
  if (!v8)
  {
    Code = sub_248DA5DA4(0, 3, &v24);
    goto LABEL_22;
  }

  cf = 0;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (!v9)
  {
    Code = *__error();
    goto LABEL_20;
  }

  v10 = v9;
  v11 = (*(*a1 + 272))(a1);
  if (!v11)
  {
    length = 0;
    Code = (*(*a1 + 328))(a1, *(a2 + 216), *(a2 + 224), &length, v10);
    (*(*a1 + 280))(a1, 0);
    if (Code)
    {
      goto LABEL_19;
    }

    v14 = *MEMORY[0x277CBECE8];
    v15 = CFDataCreate(*MEMORY[0x277CBECE8], v10, length);
    if (!v15)
    {
      Code = 4294962336;
      goto LABEL_19;
    }

    v16 = v15;
    v21 = 0;
    v17 = CFPropertyListCreateWithData(v14, v15, 0, &v21, &cf);
    v18 = v17;
    if (v17)
    {
      v19 = CFGetTypeID(v17);
      if (v19 != CFDictionaryGetTypeID())
      {
        Code = 108;
        goto LABEL_38;
      }

      v20 = sub_248DC5DDC(v18, @"resource-fork");
      if (v20)
      {
        Code = sub_248DA5DA4(v20, 3, &v24);
        goto LABEL_38;
      }
    }

    else if (cf)
    {
      Code = CFErrorGetCode(cf);
      goto LABEL_38;
    }

    Code = 4294962336;
LABEL_38:
    free(v10);
    CFRelease(v16);
    if (v18)
    {
      CFRelease(v18);
    }

    goto LABEL_20;
  }

  Code = v11;
LABEL_19:
  free(v10);
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_22:
  v12 = v24;
  if (Code && v24)
  {
    DIDiskImageObjectRelease(v24);
    v12 = 0;
  }

  if (a3)
  {
    *a3 = v12;
  }

  return Code;
}

uint64_t sub_248DB7C34(uint64_t a1, unsigned int (*a2)(uint64_t, void, void), uint64_t a3)
{
  if (!*(a1 + 104))
  {
    return 4294967246;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  if (!a2)
  {
    sub_248DA785C(a1);
    CFDictionaryRemoveAllValues(*(a1 + 104));
    goto LABEL_5;
  }

  result = sub_248DD1524(a1, a2, a3);
  if (!result)
  {
LABEL_5:
    result = 0;
    *(a1 + 112) |= 0x20u;
  }

  return result;
}

CFDictionaryRef sub_248DB7CAC(uint64_t a1)
{
  v6 = 0;
  if (sub_248DA5DA4(0, 3, &v6) || (*(*v6 + 48))(v6) || (*(*v6 + 304))(v6, a1, 0, 0) || (*(*v6 + 56))(v6))
  {
    Copy = 0;
  }

  else
  {
    v3 = v6;
    v5 = *(v6 + 13);
    if (!v5)
    {
      Copy = 0;
      goto LABEL_7;
    }

    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v5);
  }

  v3 = v6;
  if (v6)
  {
LABEL_7:
    DIDiskImageObjectRelease(v3);
  }

  return Copy;
}

uint64_t sub_248DB7DC4(uint64_t result, int a2)
{
  v2 = *(result + 172);
  if (v2 > 0 || a2 != 0)
  {
    v4 = v2 - 1;
    if (a2)
    {
      v4 = 0;
    }

    *(result + 172) = v4;
  }

  return result;
}

uint64_t DIDeinitialize()
{
  result = pthread_mutex_lock(&stru_27EECD608);
  if (!result)
  {
    byte_27EECD6D0 = 0;
    dword_27EECD6D4 = 0;
    if (qword_27EECD690)
    {
      CFRelease(qword_27EECD690);
      qword_27EECD690 = 0;
    }

    if (sub_248DB7E94())
    {
      printf("\x1B[7m\x1B[5m\a\aDIDeinitialize: objects have leaked\a\a\n\x1B[0m");
      sub_248DC8580();
    }

    if (getenv("DISKIMAGEOBJECTTRACKING"))
    {
      printf("\x1B[7mDIDeinitialize: stopping DiskImageObject tracking\n\x1B[0m");
      sub_248DC8630();
    }

    return pthread_mutex_unlock(&stru_27EECD608);
  }

  return result;
}

uint64_t sub_248DB7E94()
{
  result = qword_27EECD6F0;
  if (qword_27EECD6F0)
  {
    return CFArrayGetCount(qword_27EECD6F0) > 0;
  }

  return result;
}

uint64_t sub_248DB7EC4(const __CFString *a1, CFNumberType a2, void *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    v23 = 0;
    v21 = 0;
    valuePtr = 0.0;
    v7 = sub_248DA081C(a1, 0x600u);
    if (v7)
    {
      v8 = v7;
      v20 = 0;
      if (*v7)
      {
        if ((a2 > kCFNumberDoubleType) | (0xF9Fu >> a2) & 1)
        {
          if ((a2 > kCFNumberDoubleType) | (0x37EFu >> a2) & 1)
          {
            v23 = strtol(v7, &v20, 0);
            if (*v20)
            {
              goto LABEL_22;
            }

            v9 = *MEMORY[0x277CBECE8];
            p_valuePtr = &v23;
            v11 = kCFNumberSInt32Type;
          }

          else
          {
            v21 = strtouq(v7, &v20, 0);
            if (*v20)
            {
              goto LABEL_22;
            }

            v9 = *MEMORY[0x277CBECE8];
            p_valuePtr = &v21;
            v11 = kCFNumberSInt64Type;
          }
        }

        else
        {
          valuePtr = strtod(v7, &v20);
          if (*v20)
          {
            goto LABEL_22;
          }

          v9 = *MEMORY[0x277CBECE8];
          p_valuePtr = &valuePtr;
          v11 = kCFNumberDoubleType;
        }

        v18 = CFNumberCreate(v9, v11, p_valuePtr);
        v19 = v18;
        if (v18)
        {
          Value = CFNumberGetValue(v18, a2, a3);
          CFRelease(v19);
LABEL_23:
          free(v8);
          return Value;
        }
      }

LABEL_22:
      Value = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v12 = CFGetTypeID(a1);
  if (v12 == CFBooleanGetTypeID())
  {
    LODWORD(valuePtr) = CFBooleanGetValue(a1) != 0;
    v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    if (v13)
    {
      v14 = v13;
      Value = CFNumberGetValue(v13, a2, a3);
      CFRelease(v14);
      return Value;
    }

    return 0;
  }

  v16 = CFGetTypeID(a1);
  if (v16 != CFNumberGetTypeID())
  {
    return 0;
  }

  return CFNumberGetValue(a1, a2, a3);
}

CFURLRef sub_248DB80E8(int a1, CFURLRef anURL, const __CFString *a3, int a4)
{
  if (!anURL)
  {
    return anURL;
  }

  if (!a3)
  {
    CFRetain(anURL);
    return anURL;
  }

  v6 = a4;
  if (CFURLHasDirectoryPath(anURL) == a4)
  {
    v7 = *MEMORY[0x277CBECE8];

    return CFURLCreateCopyAppendingPathExtension(v7, anURL, a3);
  }

  else
  {
    PathComponent = CFURLCopyLastPathComponent(anURL);
    v10 = *MEMORY[0x277CBECE8];
    v11 = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x277CBECE8], anURL);
    v12 = CFStringCreateWithFormat(v10, 0, @"%@.%@", PathComponent, a3);
    v13 = CFURLCreateCopyAppendingPathComponent(v10, v11, v12, v6);
    CFRelease(v12);
    CFRelease(v11);
    CFRelease(PathComponent);
    return v13;
  }
}

void *sub_248DB8204(const __CFString *a1)
{
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a1);
  v3 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation + 1, 0xB547CE20uLL);
  if (v3 && !CFStringGetFileSystemRepresentation(a1, v3, MaximumSizeOfFileSystemRepresentation + 1))
  {
    free(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_248DB8278()
{
  if (dword_27EECD6D8)
  {
    warnx("DiskImages secure mode enabled");
  }

  v0 = getpid();
  result = ptrace(31, v0, 0, 0);
  if (!result)
  {
    v2.rlim_cur = 0;
    v2.rlim_max = 0;
    return setrlimit(4, &v2);
  }

  return result;
}

uint64_t sub_248DB82DC()
{
  sub_248DD1E68();
  if (v2)
  {
    v3 = v1;
    v4 = v0;
    sub_248DD1E5C();
    if (_CFURLCopyComponents())
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v10)
      {
        CFRelease(v10);
        v10 = 0;
      }

      v5 = *MEMORY[0x277CBECE8];
      if (v4)
      {
        cf = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], v4, 0, @";/?:@&=+$,", 0x8000100u);
      }

      if (v3)
      {
        v10 = CFURLCreateStringByAddingPercentEscapes(v5, v3, 0, @";/?:@&=+$,", 0x8000100u);
      }

      v6 = _CFURLCreateFromComponents();
    }

    else
    {
      v6 = 0;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v6;
}

uint64_t sub_248DB8454(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a1 && a3)
  {
    operator new();
  }

  return 22;
}

char *sub_248DB8778(char *a1)
{
  v2 = sub_248DA52FC(a1);
  *v2 = &unk_285BCA4E8;
  sub_248DA5500(v2, @"thread-safe", *MEMORY[0x277CBED28]);
  return a1;
}

uint64_t sub_248DB87E8(char **a1, _DWORD *a2)
{
  *a2 = 0;
  if (a1)
  {
    v3 = **a1;
    if (__dynamic_cast(a1, &unk_285BC9730, &unk_285BCBF28, 0))
    {
      *a2 = -1000;
    }
  }

  return 0;
}

void sub_248DB8864(void *a1)
{
  sub_248DB889C(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DB889C(void *a1)
{
  *a1 = &unk_285BCA4E8;
  if (sub_248DA57A8(a1))
  {
    v2 = (*(*a1 + 296))(a1);
    (*(*v2 + 280))(v2, 0);
  }

  return sub_248DAE12C(a1);
}

CFMutableDictionaryRef sub_248DB8958(io_registry_entry_t a1)
{
  properties = 0;
  v1 = IORegistryEntryCreateCFProperties(a1, &properties, *MEMORY[0x277CBECE8], 0);
  if (!v1)
  {
    return properties;
  }

  fprintf(*MEMORY[0x277D85DF8], "CFDictionaryCreateMutableFromIOKitObject: unable to get object properties: error 0x%08X (%d)\n", v1, v1);
  return 0;
}

uint64_t sub_248DB89C0(const __CFArray *a1, const __CFArray *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count != CFArrayGetCount(a2))
  {
    return 0;
  }

  return sub_248DB8A30(a1, a2);
}

uint64_t sub_248DB8A30(const __CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = CFArrayGetCount(a1);
  result = 0;
  if (a1 && theArray && Count)
  {
    if (Count < 1)
    {
      return 1;
    }

    else
    {
      v7 = 0;
      v8 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        if (ValueAtIndex)
        {
          v10.location = 0;
          v10.length = v5;
          result = CFArrayContainsValue(a1, v10, ValueAtIndex);
          if (!result)
          {
            break;
          }
        }

        if (v8 == ++v7)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_248DB8AD4(uint64_t a1)
{
  result = (*(*a1 + 296))(a1);
  if (result)
  {
    v3 = *(*(*(*a1 + 296))(a1) + 448);

    return v3();
  }

  return result;
}

uint64_t sub_248DB8B98(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 448))();
  }

  return result;
}

uint64_t sub_248DB8C04(const char *a1, _DWORD *a2, _DWORD *a3, int a4, int a5, int a6, int a7, int a8)
{
  result = sub_248DC83F0(a1, a2, a3, a4, a5, a6, a7, a8, v11, v14, v15, v16, v17, v18);
  if (!result)
  {
    if (a2)
    {
      *a2 = bswap32(v12);
    }

    if (a3)
    {
      *a3 = bswap32(v13);
    }
  }

  return result;
}

uint64_t sub_248DB8CC8(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v9 = 0;
  if ((*(*a1 + 248))(a1) && (*(*a1 + 264))(a1, &v9 + 4))
  {
    return 0;
  }

  if ((*(*a1 + 224))(a1))
  {
    if ((*(*a1 + 240))(a1, &v9))
    {
      return 0;
    }

    v4 = HIDWORD(v9) == 1061109567;
    v5 = v9 == 1061109567;
    if (v4 && v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v9;
    }

    if (v4 && v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = HIDWORD(v9);
    }
  }

  else
  {
    v6 = 0;
    v7 = HIDWORD(v9);
  }

  if (v7 | v6)
  {
    return sub_248DCA624(v7, v6, a2);
  }

  return 0;
}

uint64_t sub_248DB8E00(uint64_t a1, _DWORD *a2)
{
  v3 = (*(*a1 + 208))(a1);
  *a2 = 0;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  *a2 = -1000;
  if (CFStringCompare(v3, @"sparseimage", 1uLL) == kCFCompareEqualTo || CFStringCompare(v4, @"shadow", 1uLL) == kCFCompareEqualTo || CFStringCompare(v4, @"dmgpart", 1uLL) == kCFCompareEqualTo)
  {
    return 0;
  }

  v5 = 1430541391;
  *a2 = 100;
  if (CFStringCompare(v4, @"dmg", 1uLL) == kCFCompareEqualTo || CFStringCompare(v4, @"img", 1uLL) == kCFCompareEqualTo)
  {
    return 1430540887;
  }

  if (CFStringCompare(v4, @"iso", 1uLL) && CFStringCompare(v4, @"toast", 1uLL) && CFStringCompare(v4, @"cdr", 1uLL) && CFStringCompare(v4, @"dvdr", 1uLL))
  {
    v5 = 0;
    *a2 = 0;
  }

  return v5;
}

uint64_t sub_248DB8F64(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v10 = (*(*a1 + 296))(a1);
  if (a4)
  {
    *a4 = 0;
  }

  if (!v10)
  {
    return 999;
  }

  v11 = a1[20];
  if (v11 < a2 || a3 + a2 > v11)
  {
    return 22;
  }

  v15 = 0;
  result = (*(*v10 + 328))(v10, a2 << 9, a3 << 9, &v15, a5);
  if (result)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (!v14)
  {
    result = 0;
    *a4 = v15 >> 9;
  }

  return result;
}

uint64_t sub_248DB9064(uint64_t a1)
{
  v3 = 0;
  v1 = *(*(*a1 + 296))(a1);
  (*(v1 + 296))();
  return v3 >> 9;
}

uint64_t sub_248DB90F4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = 16;
  v3 = 64;
  while (1)
  {
    if ((*(*a1 + 48))(a1, v3, 4, &v8, &v9))
    {
      v5 = 0;
      goto LABEL_12;
    }

    if (!v9 && v10 == 21326 && v11 == 82)
    {
      break;
    }

    ++v2;
    v3 += 4;
    if (v3 == 128)
    {
      v5 = 0;
      v2 = 32;
      goto LABEL_12;
    }
  }

  v5 = 1;
LABEL_12:
  if (v2 < 0x20)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248DB91F4(const __CFArray *a1)
{
  v2.length = CFArrayGetCount(a1);
  v2.location = 0;

  CFArraySortValues(a1, v2, sub_248DB5638, 0);
}

uint64_t sub_248DB9254(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  return 78;
}

uint64_t sub_248DB92D4(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

CFTypeRef sub_248DB92F0()
{
  v0 = DIGetBundleRef();

  return sub_248DD4D90(v0, @"read/write", @"read/write");
}

uint64_t sub_248DB932C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_248D9F120();
  v8 = sub_248D9F128(v7, 0);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    return 119;
  }

  if (a3)
  {
    *a3 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    if (a1)
    {
      operator new();
    }
  }

  return 22;
}

void sub_248DB9518(void *a1, int a2)
{
  MEMORY[0x24C1EBE70](v2, 0x10F1C400206AE36);
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    (*(*v5 + 24))(v5);
  }

  __cxa_end_catch();
  JUMPOUT(0x248DB94F4);
}

uint64_t sub_248DB95F8(uint64_t a1)
{
  sub_248DA3CFC(a1);
  *v2 = &unk_285BCB908;
  *(v2 + 2048) = 0;
  *(v2 + 520) = 0u;
  bzero((v2 + 546), 0x4FCuLL);
  v3 = *MEMORY[0x277CBED28];
  sub_248DA0FD0(a1, @"thread-safe", *MEMORY[0x277CBED28]);
  pthread_rwlock_init((a1 + 208), 0);
  (*(*a1 + 32))(a1, @"bs-supports-proxy-encoding", v3);
  *(a1 + 472) = 0;
  pthread_mutex_init((a1 + 408), 0);
  return a1;
}

uint64_t sub_248DB96DC(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    if (*(a1 + 545) == 1)
    {
      result = sub_248DBB350(a1);
      if (!result)
      {
        return result;
      }

      if (result == 80)
      {
        sub_248DB9740(80, "unable to unlock image.");
      }
    }

    sub_248DB9740(80, "unable to unlock image.");
  }

  result = sub_248DCF80C(a1, a2);
  if (result)
  {
    sub_248DB9740(result, "cannot unlock image with specified passphrase");
  }

  return result;
}

void sub_248DB9740(int a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x18uLL);
  *exception = &unk_285BCB898;
  exception[3] = a1;
  *(exception + 2) = a2;
  __cxa_throw(exception, &unk_285BCB8C8, std::exception::~exception);
}

void sub_248DB97A0(char **a1)
{
  sub_248DB97D8(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DB97D8(char **a1)
{
  *a1 = &unk_285BCB908;
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

  v2 = a1[59];
  if (v2)
  {
    free(v2);
  }

  pthread_mutex_destroy((a1 + 51));
  v3 = a1[65];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[66];
  if (v4)
  {
    free(v4);
  }

  pthread_rwlock_destroy((a1 + 26));

  return sub_248DAE348(a1);
}

const void **sub_248DB9978(const void **result, uint64_t a2, char *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(result + 545) == 1)
  {
    v4 = result;
    v5 = (*(*result + 3))(result, @"use-filename-for-prompt");
    v6 = *v4;
    if (v5)
    {
      v7 = v6[3](v4, @"use-filename-for-prompt");
    }

    else
    {
      v7 = (v6[24])(v4);
    }

    v8 = v7;
    v9 = DIGetBundleRef();
    v25 = sub_248DD4D90(v9, @"Enter a new password to secure %1$@: ", @"Enter a new password to secure %1$@: ");
    v24 = CFStringCreateWithFormat(0, 0, v25, v8);
    v10 = sub_248DA081C(v24, 0x8000100u);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "Enter new password: ";
    }

    v13 = DIGetBundleRef();
    v23 = sub_248DD4D90(v13, @"Re-enter new password: ", @"Re-enter new password: ");
    v14 = sub_248DA081C(v23, 0x8000100u);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = "Re-enter new password: ";
    }

    v17 = sub_248DBB518(v12, a3, 1024, 1);
    if (!v17)
    {
      v17 = sub_248DBB518(v16, __s2, 1024, 1);
      if (!v17)
      {
        v17 = strncmp(a3, __s2, 0x400uLL);
        bzero(__s2, 0x400uLL);
        if (v17)
        {
          v18 = DIGetBundleRef();
          v22 = sub_248DD4D90(v18, @"Passwords must match.", @"Passwords must match.");
          v19 = sub_248DA081C(v22, 0x8000100u);
          v20 = "Passwords must match.";
          if (v19)
          {
            v20 = v19;
          }

          fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
          sub_248DD01A8(&v22);
          v17 = 80;
        }
      }
    }

    if (v15)
    {
      free(v15);
    }

    if (v11)
    {
      free(v11);
    }

    if (v17)
    {
      bzero(a3, 0x400uLL);
      sub_248DB9740(v17, "cannot get passphrase.");
    }

    sub_248DD01A8(&v23);
    sub_248DD01A8(&v24);
    result = sub_248DD01A8(&v25);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248DB9C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  sub_248DD01A8(va);
  sub_248DD01A8(va1);
  sub_248DD01A8(va2);
  sub_248DD01A8(va3);
  _Unwind_Resume(a1);
}

uint64_t sub_248DB9C7C(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 496))(a1);
  if (v2)
  {
    v3 = v2;
    v15 = 0;
    v4 = (*(*v2 + 272))(v2);
    if (!v4)
    {
      v5 = *(a1 + 480);
      if (v5 == 2)
      {
        *(a1 + 598) = *(a1 + 488);
        *(a1 + 602) = *(a1 + 496);
        v10 = *(a1 + 562);
        __dst[0] = *(a1 + 546);
        __dst[1] = v10;
        v11 = *(a1 + 594);
        __dst[2] = *(a1 + 578);
        __dst[3] = v11;
        __dst[4].i64[0] = *(a1 + 610);
        __dst[0] = vrev32q_s8(__dst[0]);
        __dst[1] = vrev32q_s8(__dst[1]);
        __dst[2].i32[0] = bswap32(__dst[2].u32[0]);
        __dst[3].i32[1] = bswap32(v11.u32[1]);
        *(&__dst[3] + 8) = vrev64q_s8(*(&__dst[3] + 8));
        v9 = (*(*v3 + 336))(v3, 0, 72, &v15, __dst, *(&__dst[3] + 8));
      }

      else
      {
        if (v5 != 1)
        {
          v4 = 999;
          goto LABEL_11;
        }

        v14 = 0;
        v4 = (*(*v3 + 296))(v3, &v14);
        if (v4)
        {
LABEL_11:
          (*(*v3 + 280))(v3, 0);
          goto LABEL_12;
        }

        v6 = *(a1 + 496);
        *(a1 + 562) = *(a1 + 488);
        *(a1 + 1802) = v6;
        memcpy(__dst, (a1 + 546), 0x4FCuLL);
        v7 = v14 - 1276;
        v8.n128_u64[0] = sub_248DD0004(__dst);
        v9 = (*(*v3 + 336))(v3, v7, 1276, &v15, __dst, v8);
      }

      v4 = v9;
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 999;
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_248DB9F0C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 && a5 && (v6 = *(a1 + 488), v7 = a2 / v6, a2 == v7 * v6) && !(a3 % v6))
  {
    return sub_248DB9F44(a1, v7, a3 / v6, a4, a5);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_248DB9F44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
LABEL_5:
    result = 0;
  }

  else
  {
    v10 = 0;
    while (1)
    {
      sub_248DBA184(a1, a2 + v10, iv);
      v11 = *(a1 + 488);
      v12 = *(a1 + 2040);
      v13 = *(a1 + 2032);
      dataOutMoved = 0;
      v14 = CCCrypt(0, 0, 0, v12, v13, iv, (a4 + v11 * v10), v11, (a5 + v11 * v10), v11, &dataOutMoved);
      if (v14)
      {
        break;
      }

      if (a3 == ++v10)
      {
        goto LABEL_5;
      }
    }

    v17 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "CEncryptedEncoding::encrypt CCCrypt() returned error %d\n", v14);
    result = 999;
    if (v14 > -4301)
    {
      if (v14 == -4300 || v14 == -1)
      {
        result = 22;
      }
    }

    else if (v14 == -4302)
    {
      result = 12;
    }

    else if (v14 == -4301)
    {
      fprintf(*v17, "CEncryptedEncoding::encrypt output buffer should be %zu bytes\n", dataOutMoved);
      result = 999;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DBA184(_OWORD *a1, unsigned int a2, unsigned __int8 *a3)
{
  data = bswap32(a2);
  v5 = a1[117];
  *&v12.data[1] = a1[116];
  *&v12.data[5] = v5;
  v6 = a1[119];
  *&v12.data[9] = a1[118];
  *&v12.data[13] = v6;
  v7 = a1[115];
  *&v12.h0 = a1[114];
  *&v12.h4 = v7;
  CC_SHA1_Update(&v12, &data, 4u);
  CC_SHA1_Final(a3, &v12);
  v8 = a1[123];
  *&v12.data[1] = a1[122];
  *&v12.data[5] = v8;
  v9 = a1[125];
  *&v12.data[9] = a1[124];
  *&v12.data[13] = v9;
  v10 = a1[121];
  *&v12.h0 = a1[120];
  *&v12.h4 = v10;
  CC_SHA1_Update(&v12, a3, 0x14u);
  return CC_SHA1_Final(a3, &v12);
}

uint64_t sub_248DBA240(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 && (v5 = *(a1 + 488), v6 = a2 / v5, a2 == v6 * v5) && !(a3 % v5))
  {
    return sub_248DBA274(a1, v6, a3 / v5, a4);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_248DBA274(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
LABEL_5:
    result = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      sub_248DBA184(a1, a2 + v8, iv);
      v9 = *(a1 + 488);
      v10 = *(a1 + 2040);
      v11 = *(a1 + 2032);
      dataOutMoved = 0;
      v12 = CCCrypt(1u, 0, 0, v10, v11, iv, (a4 + v9 * v8), v9, (a4 + v9 * v8), v9, &dataOutMoved);
      if (v12)
      {
        break;
      }

      if (a3 == ++v8)
      {
        goto LABEL_5;
      }
    }

    v15 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "CEncryptedEncoding::decrypt CCCrypt() returned error %d\n", v12);
    result = 999;
    if (v12 > -4301)
    {
      if (v12 == -4300 || v12 == -1)
      {
        result = 22;
      }
    }

    else if (v12 == -4302)
    {
      result = 12;
    }

    else if (v12 == -4301)
    {
      fprintf(*v15, "CEncryptedEncoding::decrypt output buffer should be %zu bytes\n", dataOutMoved);
      result = 999;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DBA4A8(uint64_t a1, void *a2)
{
  v2 = (a1 + 570);
  v3 = *(a1 + 570);
  v4 = ((*(a1 + 578) + v3) >> 3) + 5;
  if (*a2 != v4)
  {
    return 0;
  }

  v6 = a2[1];
  if (*&v6[v4 - 5] ^ 0x45494B43 | v6[v4 - 1])
  {
    return 0;
  }

  v9 = *MEMORY[0x277CBECE8];
  *(a1 + 2016) = CFDataCreate(*MEMORY[0x277CBECE8], v6, v3 >> 3);
  *(a1 + 2024) = CFDataCreate(v9, (a2[1] + (*v2 >> 3)), v2[2] >> 3);
  return 1;
}

uint64_t sub_248DBA564(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 80))();
  }

  else
  {
    return 999;
  }
}

void sub_248DBA598(unint64_t *a1)
{
  v2 = (*(*a1 + 496))(a1);
  v3 = (a1 + 64);
  if ((*(*v2 + 296))(v2, a1 + 512))
  {
    v4 = 0;
LABEL_3:
    *v3 = v4;
    return;
  }

  v6 = a1[61];
  v5 = a1[62];
  v7 = v5 % v6;
  v8 = v6 - v5 % v6;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v8 + v5;
  if (*(a1 + 120) == 1)
  {
    v4 = v9 + 1276;
  }

  else
  {
    v4 = a1[63] + v9;
  }

  if (v4 != *v3 && (*(a1 + 2049) & 1) == 0)
  {
    v10 = (*(*a1 + 192))(a1);
    if (v10)
    {
      v11 = sub_248DA081C(v10, 0x8000100u);
    }

    else
    {
      v11 = 0;
    }

    v12 = "";
    if (v11)
    {
      v12 = v11;
    }

    syslog(5, "CEncryptedEncoding: need to repair %s", v12);
    syslog(5, "expected length: %qd, actual length: %qd", v4, *v3);
    if (v11)
    {
      free(v11);
    }

    v13 = (*(*v2 + 312))(v2, v4);
    syslog(6, "setting length returned %d", v13);
    if (!v13 && !(*(*a1 + 472))(a1, 1))
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_248DBA7A4(uint64_t a1, unint64_t a2, size_t a3, void *a4, char *a5)
{
  v10 = (*(*a1 + 496))(a1);
  if (a4)
  {
    *a4 = 0;
  }

  pthread_rwlock_rdlock((a1 + 208));
  v33 = a3;
  if (!(*(*a1 + 568))(a1))
  {
    v12 = 9;
    goto LABEL_11;
  }

  if (!a5)
  {
    v12 = 22;
    goto LABEL_11;
  }

  v11 = *(a1 + 496);
  v35 = v11;
  if (*(a1 + 2049) == 1)
  {
    (*(*a1 + 304))(a1, &v35);
    v11 = v35;
  }

  if ((a3 + a2) > v11)
  {
    v12 = 29;
LABEL_11:
    v13 = a3;
    goto LABEL_12;
  }

  if (!a3)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_12;
  }

  v30 = v10;
  v31 = 0;
  v13 = a3;
  v32 = a4;
  while (1)
  {
    v15 = *(a1 + 488);
    v16 = a2 % v15;
    if (v13 < v15 || v16)
    {
      if (pthread_mutex_trylock((a1 + 408)))
      {
        v22 = v31;
        if (v31)
        {
          goto LABEL_36;
        }

        v22 = malloc_type_malloc(32 * *(a1 + 488), 0x100004077774924uLL);
        v31 = v22;
      }

      else
      {
        v22 = *(a1 + 472);
      }

      if (!v22)
      {
        v12 = 12;
        a4 = v32;
        goto LABEL_69;
      }

LABEL_36:
      v23 = *(a1 + 512);
      v24 = *(a1 + 504) + a2 - v16;
      v25 = *(a1 + 488);
      if (v23 <= v24)
      {
        v26 = 0;
      }

      else
      {
        if ((v25 + v24) <= v23)
        {
          v26 = *(a1 + 488);
        }

        else
        {
          v26 = v23 - v24;
        }

        if (v26)
        {
          v34 = 0;
          v27 = (*(*v30 + 328))(v30, v24, v26, &v34, v22);
          if (v34 == v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = 5;
          }

          if (v27)
          {
            v12 = v27;
          }

          else
          {
            v12 = v28;
          }

          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v34 == v26;
          }

          if (!v29)
          {
            v17 = 0;
            goto LABEL_60;
          }

          v25 = *(a1 + 488);
LABEL_54:
          if (v25 != v26)
          {
            bzero(&v22[v26], v25 - v26);
            v25 = *(a1 + 488);
          }

          sub_248DBA274(a1, (v24 - *(a1 + 504)) / v25, 1, v22);
          if (*(a1 + 488) - v16 >= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = *(a1 + 488) - v16;
          }

          memcpy(a5, &v22[v16], v17);
LABEL_60:
          if (v22 == *(a1 + 472))
          {
            pthread_mutex_unlock((a1 + 408));
          }

          a4 = v32;
          if (v12)
          {
            goto LABEL_69;
          }

          goto LABEL_63;
        }
      }

      v12 = 0;
      goto LABEL_54;
    }

    v17 = v13 / v15 * v15;
    v18 = *(a1 + 512);
    v19 = *(a1 + 504) + a2;
    if (v18 > v19)
    {
      break;
    }

    v20 = 0;
LABEL_31:
    if (v17 != v20)
    {
      bzero(&a5[v20], v17 - v20);
    }

    sub_248DBA274(a1, (v19 - *(a1 + 504)) / *(a1 + 488), v17 / *(a1 + 488), a5);
LABEL_63:
    a2 += v17;
    a5 += v17;
    v13 -= v17;
    if (!v13)
    {
      v12 = 0;
      goto LABEL_69;
    }
  }

  if ((v19 + v17) <= v18)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18 - v19;
  }

  if (!v20)
  {
    goto LABEL_31;
  }

  v34 = 0;
  v21 = (*(*v30 + 328))(v30, v19, v20, &v34, a5);
  if (!v21)
  {
    if (v34 != v20)
    {
      v12 = 5;
      goto LABEL_69;
    }

    goto LABEL_31;
  }

  v12 = v21;
LABEL_69:
  if (v31)
  {
    free(v31);
  }

LABEL_12:
  pthread_rwlock_unlock((a1 + 208));
  if (a4)
  {
    *a4 = v33 - v13;
  }

  return v12;
}

uint64_t sub_248DBAB94(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(a1 + 496);
  return result;
}

uint64_t sub_248DBABB4(void *a1, int64_t a2, size_t a3, void *a4, char *a5)
{
  v10 = (*(*a1 + 496))(a1);
  if (a4)
  {
    *a4 = 0;
  }

  pthread_rwlock_wrlock((a1 + 26));
  v11 = a1[59];
  if (!(*(*a1 + 568))(a1))
  {
    v12 = 9;
    goto LABEL_37;
  }

  if (!a5)
  {
    v12 = 22;
    goto LABEL_37;
  }

  if ((a3 + a2) > a1[62])
  {
    if ((*(*a1 + 160))(a1))
    {
      if (a1[62] < a2)
      {
        (*(*a1 + 320))(a1, a2, 1);
      }

      v12 = (*(*a1 + 320))(a1, a3 + a2, 0);
      v13 = a3;
      if (v12)
      {
        goto LABEL_38;
      }

      goto LABEL_10;
    }

    v12 = 29;
LABEL_37:
    v13 = a3;
    goto LABEL_38;
  }

LABEL_10:
  v23 = a3 + a2;
  if (!a3)
  {
LABEL_31:
    if ((v23 + a1[63]) > a1[64])
    {
      (*(*v10 + 296))(v10, a1 + 64);
    }

    v13 = 0;
    v12 = 0;
    goto LABEL_38;
  }

  v25 = a3;
  v13 = a3;
  v24 = a4;
  while (1)
  {
    v14 = a1[61];
    v15 = a2 % v14;
    if (v13 < v14 || v15)
    {
      break;
    }

    if (v13 / v14 * v14 >= 32 * v14)
    {
      v16 = 32 * v14;
    }

    else
    {
      v16 = v13 / v14 * v14;
    }

    sub_248DB9F44(a1, a2 / v14, v16 / v14, a5, v11);
    v27 = 0;
    v17 = (*(*v10 + 336))(v10, a1[63] + a2, v16, &v27, v11);
    if (v17)
    {
      v12 = v17;
      goto LABEL_47;
    }

    if (v27 != v16)
    {
      goto LABEL_41;
    }

LABEL_30:
    a2 += v16;
    a5 += v16;
    v13 -= v16;
    a3 = v25;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  v18 = a2 - v15;
  v27 = 0;
  v19 = a1[63];
  if ((a2 - v15 + v14 + v19) > a1[64])
  {
    v20 = (*(*v10 + 312))(v10);
    if (v20)
    {
      goto LABEL_42;
    }

    v19 = a1[63];
    v14 = a1[61];
  }

  v20 = (*(*v10 + 328))(v10, v19 + v18, v14, &v27, v11);
  if (v20)
  {
LABEL_42:
    v12 = v20;
LABEL_45:
    a4 = v24;
    goto LABEL_38;
  }

  if (v27 != a1[61])
  {
    v12 = 5;
    goto LABEL_45;
  }

  sub_248DBA274(a1, v18 / v27, 1, v11);
  if (a1[61] - v15 >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = a1[61] - v15;
  }

  memcpy((v11 + v15), a5, v16);
  sub_248DB9F44(a1, v18 / a1[61], 1, v11, v11);
  v26 = 0;
  v21 = (*(*v10 + 336))(v10, a1[63] + v18, a1[61], &v26, v11);
  if (!v21)
  {
    a4 = v24;
    if (v26 != a1[61])
    {
LABEL_41:
      v12 = 5;
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  v12 = v21;
  a4 = v24;
LABEL_47:
  a3 = v25;
LABEL_38:
  pthread_rwlock_unlock((a1 + 26));
  if (a4)
  {
    *a4 = a3 - v13;
  }

  return v12;
}

uint64_t sub_248DBB038(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t sub_248DBB068(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 264))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DBB0A4(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t sub_248DBB0D4(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 240))();
  }

  else
  {
    return 999;
  }
}

__CFDictionary *sub_248DBB108(uint64_t a1)
{
  valuePtr = 0;
  v1 = (*(*a1 + 496))(a1);
  v2 = MEMORY[0x277CBECE8];
  if (v1 && (v3 = (*(*v1 + 464))(v1)) != 0 || (v4 = *v2, (v3 = CFDictionaryCreateMutable(*v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0))
  {
    Mutable = v3;
    Value = CFDictionaryGetValue(v3, @"owner-mode");
    if (Value)
    {
      v7 = CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
      v4 = *v2;
      if (v7)
      {
        valuePtr &= 0x1C0u;
        v8 = CFNumberCreate(v4, kCFNumberSInt16Type, &valuePtr);
        if (v8)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v4 = *v2;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return Mutable;
    }
  }

  valuePtr = 448;
  v8 = CFNumberCreate(v4, kCFNumberSInt16Type, &valuePtr);
  if (v8)
  {
LABEL_11:
    v9 = v8;
    CFDictionarySetValue(Mutable, @"owner-mode", v8);
    CFRelease(v9);
  }

  return Mutable;
}

uint64_t sub_248DBB27C(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 184))();
  }

  return result;
}

uint64_t sub_248DBB2AC(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 344))();
  }

  else
  {
    return 999;
  }
}

BOOL sub_248DBB2E8(uint64_t a1)
{
  v1 = *(a1 + 480);
  v2 = 574;
  if (v1 == 1)
  {
    v2 = 942;
  }

  if (*(a1 + v2) != 91)
  {
    return 0;
  }

  v3 = 566;
  if (v1 == 1)
  {
    v3 = 642;
  }

  if (*(a1 + v3) != -2147483647)
  {
    return 0;
  }

  v4 = v1 == 1;
  v5 = 570;
  if (v4)
  {
    v5 = 646;
  }

  return *(a1 + v5) == 128;
}

uint64_t sub_248DBB350(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 24))(a1, @"use-filename-for-prompt");
  v3 = *a1;
  if (v2)
  {
    v4 = (*(v3 + 24))(a1, @"use-filename-for-prompt");
  }

  else
  {
    v4 = (*(v3 + 192))(a1);
  }

  v5 = v4;
  v6 = DIGetBundleRef();
  v14 = sub_248DD4D90(v6, @"Enter password to access %1$@: ", @"Enter password to access %1$@: ");
  v13 = CFStringCreateWithFormat(0, 0, v14, v5);
  v7 = sub_248DA081C(v13, 0x8000100u);
  v8 = v7;
  if (!v7)
  {
    v7 = "Enter password: ";
  }

  v9 = sub_248DBB518(v7, __s, 1024, 1);
  if (!v9)
  {
    v10 = strlen(__s);
    if (sub_248DCF364(a1, __s, v10))
    {
      v9 = 0;
    }

    else
    {
      v9 = 80;
    }

    if (v8)
    {
      free(v8);
    }
  }

  sub_248DD01A8(&v13);
  sub_248DD01A8(&v14);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_248DBB4F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_248DD01A8(va);
  sub_248DD01A8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_248DBB518(const char *a1, char *a2, int a3, int a4)
{
  v6 = 22;
  if (a2 && a3 >= 2)
  {
    if (!a1)
    {
      a1 = "";
    }

    if (readpassphrase(a1, a2, a3, a4 ^ 1 | 2u))
    {
      return 0;
    }

    v6 = *__error();
  }

  if (a2 && v6)
  {
    bzero(a2, a3);
  }

  return v6;
}

uint64_t sub_248DBB5B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 496);
  }

  result = (*(*a1 + 496))(a1);
  if (result)
  {
    v7 = 0;
    v5 = *(*(*a1 + 496))(a1);
    result = (*(v5 + 304))();
    if (a2)
    {
      if (!result)
      {
        if (*(a1 + 480) == 1)
        {
          v6 = v7 - 1276;
        }

        else
        {
          v6 = v7 - *(a1 + 504);
        }

        *a2 = v6 / *(a1 + 488) * *(a1 + 488);
      }
    }
  }

  return result;
}

uint64_t sub_248DBB6C4(_DWORD *a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = (*(*a1 + 696))(a1);
  if (v5)
  {
    sub_248DB9740(v5, "setBackingStore() failed");
  }

  v6 = sub_248DBB8C0(a1);
  if (v6)
  {
    sub_248DB9740(v6, "loadHeaderAndKeys() failed");
  }

  v7 = sub_248DCF038(a1);
  if (v7)
  {
    sub_248DB9740(v7, "validateHeaders() failed");
  }

  v8 = sub_248DB8278();
  if (v8)
  {
    sub_248DB9740(v8, "DIEnableSecureMode() failed");
  }

  if (!a3)
  {
    if (a1[120] != 2)
    {
      v10 = 0;
      goto LABEL_14;
    }

LABEL_21:
    v15 = "unlock with passphrase failed";
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(a3, @"recovery-key");
  v10 = CFDictionaryGetValue(a3, @"passphrase");
  if (Value)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(Value))
    {
      v15 = "recovery-key was not a CFStringRef";
      goto LABEL_24;
    }
  }

  if (v10)
  {
    v12 = CFStringGetTypeID();
    if (v12 == CFGetTypeID(v10))
    {
      v13 = a1[120];
      goto LABEL_14;
    }

    v15 = "passphrase was not a CFStringRef";
LABEL_24:
    sub_248DB9740(80, v15);
  }

  if (a1[120] == 2)
  {
    goto LABEL_21;
  }

LABEL_14:
  sub_248DB96DC(a1, v10);

  return sub_248DCF0B4(a1);
}

uint64_t sub_248DBB848(uint64_t a1, uint64_t a2)
{
  result = sub_248DA4038(a1, a2);
  if (!result)
  {
    v5 = *(*a2 + 296);

    return v5(a2, a1 + 512);
  }

  return result;
}

uint64_t sub_248DBB8C0(uint64_t a1)
{
  v2 = (*(*a1 + 496))(a1);
  v3 = sub_248DBBD18(a1);
  if (v3)
  {
    return v3;
  }

  if (*(a1 + 480) != 2)
  {
    return 0;
  }

  v32 = 0;
  v3 = (*(*v2 + 272))(v2);
  if (v3)
  {
    return v3;
  }

  v5 = malloc_type_malloc(0x54uLL, 0x100004052888210uLL);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = (*(*v2 + 328))(v2, 72, 84, &v32, v5);
  if (v6)
  {
    v4 = v6;
    goto LABEL_17;
  }

  v8 = bswap32(*v5);
  if (v8 > 0x800)
  {
    v4 = 108;
    goto LABEL_17;
  }

  v9 = malloc_type_realloc(v5, 20 * v8 + 4, 0x100004052888210uLL);
  if (!v9)
  {
LABEL_16:
    v4 = 12;
    goto LABEL_17;
  }

  v10 = v9;
  if (v8 >= 5)
  {
    v11 = (*(*v2 + 328))(v2, 72, 20 * v8 + 4, &v32, v9);
    if (v11)
    {
LABEL_15:
      v4 = v11;
      goto LABEL_53;
    }
  }

  sub_248DC4BE0(v10, 20 * v8 + 4);
  *(a1 + 536) = 0;
  if (*v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = v10[v15];
      if (v16 == 2)
      {
        *(a1 + 536) = ++v13;
      }

      else if (v16 == 1)
      {
        *(a1 + 540) = ++v12;
      }

      ++v14;
      v15 += 5;
    }

    while (v14 < *v10);
    v17 = 564 * v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = malloc_type_malloc(v17, 0x1000040185CD20FuLL);
  *(a1 + 520) = v18;
  if (!v18 || (v19 = malloc_type_malloc(616 * *(a1 + 540), 0x10000409E51EDBFuLL), (*(a1 + 528) = v19) == 0))
  {
    v4 = 12;
    goto LABEL_53;
  }

  v20 = *v10;
  if (!v20)
  {
LABEL_44:
    if (*(a1 + 536))
    {
      v28 = 0;
      v29 = 0;
      do
      {
        sub_248DCF000(*(a1 + 520) + v28);
        ++v29;
        v28 += 564;
      }

      while (v29 < *(a1 + 536));
    }

    if (!*(a1 + 540))
    {
LABEL_51:
      v4 = 0;
      goto LABEL_53;
    }

    v30 = 0;
    v31 = 0;
    while (1)
    {
      v11 = sub_248DC4C34(*(a1 + 528) + v30);
      if (v11)
      {
        goto LABEL_15;
      }

      ++v31;
      v30 += 616;
      if (v31 >= *(a1 + 540))
      {
        goto LABEL_51;
      }
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = v10 + 2;
  while (1)
  {
    v25 = *(v24 - 1);
    v26 = *v24;
    v27 = v24[1];
    if (v25 == 2)
    {
      break;
    }

    if (v25 == 1)
    {
      if (v27 != 616)
      {
        goto LABEL_54;
      }

      v4 = (*(*v2 + 328))(v2, v26, 616, &v32, *(a1 + 528) + 616 * v22);
      if (!v4)
      {
        ++v22;
      }

      goto LABEL_41;
    }

LABEL_43:
    v24 = (v24 + 20);
    if (++v21 >= v20)
    {
      goto LABEL_44;
    }
  }

  if (v27 == 564)
  {
    v4 = (*(*v2 + 328))(v2, v26, 564, &v32, *(a1 + 520) + 564 * v23);
    if (!v4)
    {
      ++v23;
    }

LABEL_41:
    if (v4)
    {
      goto LABEL_53;
    }

    v20 = *v10;
    goto LABEL_43;
  }

LABEL_54:
  v4 = 108;
LABEL_53:
  v5 = v10;
LABEL_17:
  (*(*v2 + 280))(v2, 0);
  if (v5)
  {
    free(v5);
  }

  return v4;
}

uint64_t sub_248DBBD18(void *a1)
{
  v2 = (*(*a1 + 496))(a1);
  v13 = 0;
  v3 = (*(*v2 + 272))();
  if (!v3)
  {
    v12 = 0;
    v4 = (*(*v2 + 296))(v2, &v12);
    if (v4)
    {
LABEL_3:
      v3 = v4;
LABEL_4:
      (*(*v2 + 280))(v2, 0);
      return v3;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      v3 = 108;
      goto LABEL_4;
    }

    if (v12 < 0x4FC)
    {
      goto LABEL_14;
    }

    v4 = (*(*v2 + 328))(v2, v12 - 1276, 1276, &v13, a1 + 546);
    if (v4)
    {
      goto LABEL_3;
    }

    if (!sub_248DA35A8(a1 + 546) && *(a1 + 1818) == 1701733234 && *(a1 + 1814) == 1667527521 && *(a1 + 1810) == 1)
    {
      v6 = 0;
      *(a1 + 120) = 1;
      v7 = *(a1 + 562);
      v8 = *(a1 + 1802);
    }

    else
    {
LABEL_14:
      v4 = (*(*v2 + 328))(v2, 0, 72, &v13, a1 + 546);
      if (v4)
      {
        goto LABEL_3;
      }

      v4 = sub_248DA368C(a1 + 546);
      if (v4)
      {
        goto LABEL_3;
      }

      if (*(a1 + 546) != 1701733234 || *(a1 + 550) != 1667527521)
      {
        v3 = 111;
        goto LABEL_4;
      }

      if (*(a1 + 554) != 2)
      {
        v3 = 125;
        goto LABEL_4;
      }

      *(a1 + 120) = 2;
      v7 = *(a1 + 598);
      v8 = *(a1 + 602);
      v6 = *(a1 + 610);
    }

    a1[61] = v7;
    a1[62] = v8;
    a1[63] = v6;
    v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a1 + 61);
    if (v9)
    {
      v10 = v9;
      (*(*a1 + 32))(a1, @"bs-proxy-encoding-blocksize", v9);
      CFRelease(v10);
    }

    v11 = malloc_type_malloc(32 * a1[61], 0x100004077774924uLL);
    a1[59] = v11;
    if (v11)
    {
      v3 = 0;
    }

    else
    {
      v3 = 12;
    }

    goto LABEL_4;
  }

  return v3;
}

uint64_t sub_248DBC01C(const __CFURL *a1, CFDictionaryRef theDict, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v6 = a6;
  v10 = a1;
  v62 = *MEMORY[0x277D85DE8];
  v59 = 0;
  valuePtr = 0;
  v58 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (!a5 || (*a5 = 0, !a1))
  {
    v19 = 22;
    goto LABEL_46;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"size");
    if (Value && !CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr))
    {
      valuePtr = 0;
    }

    v12 = CFDictionaryGetValue(theDict, @"max-size");
    if (v12)
    {
      if (!CFNumberGetValue(v12, kCFNumberSInt64Type, &v59))
      {
        goto LABEL_12;
      }
    }
  }

  if (!v59)
  {
LABEL_12:
    v59 = valuePtr;
  }

  v13 = sub_248DA07D4(v10);
  if (!v13)
  {
    v19 = 999;
    goto LABEL_46;
  }

  v14 = v13;
  v15 = sub_248DC842C();
  if (sub_248DA0728(v15, v16, v17))
  {
    unlink(v14);
  }

  v18 = sub_248DA227C(v14, 3586, 0, 438);
  if (v18 < 0)
  {
    v19 = *__error();
    if (v19)
    {
      if (v18 != -1)
      {
        close(v18);
      }

      goto LABEL_45;
    }
  }

  if (theDict)
  {
    v61.f_bsize = 0;
    v20 = sub_248DC842C();
    v61.f_bsize = sub_248DAEF20(v20, v21, v22);
    v23 = sub_248DC842C();
    LODWORD(v26) = sub_248DAEF20(v23, v24, v25);
    v57 = v26;
    if (v61.f_bsize && v26 != 0.0)
    {
      v51 = &v61;
      v52 = &v57;
      v53 = v14;
    }

    else if (v61.f_bsize)
    {
      v51 = &v61;
      v53 = v14;
      v52 = 0;
    }

    else
    {
      if (v26 == 0.0)
      {
        goto LABEL_23;
      }

      v52 = &v57;
      v53 = v14;
      v51 = 0;
    }

    if ((sub_248DD6D6C(v53, &v51->f_bsize, v52, v27, v28, v29, v30, v31) & 0x80000000) != 0)
    {
      v19 = *__error();
      if (v19)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_23:
  v32 = sub_248DAF00C(v14, theDict);
  if (v32)
  {
    v19 = v32;
LABEL_70:
    v36 = 0;
    goto LABEL_28;
  }

  v33 = v59;
  v34 = statfs(v14, &v61);
  v35 = v61.f_bavail * v61.f_bsize;
  if (v34)
  {
    v35 = v33;
  }

  if (v59 > v35)
  {
    v36 = 0;
    v19 = 28;
    goto LABEL_28;
  }

  sub_248DAF140(v14, &v58 + 1, &v58);
  if (v59 && HIBYTE(v58))
  {
    sub_248DBF040(v18, v59);
  }

  v36 = 0;
  if (a3 && valuePtr && !v58)
  {
    v37 = sub_248DC842C();
    if (sub_248DA0728(v37, v38, v39))
    {
      v36 = 0;
    }

    else
    {
      v54 = v10;
      v55 = v6;
      *&v61.f_bsize = 0;
      fcntl(v18, 48, 1);
      v36 = malloc_type_calloc(0x100000uLL, 1uLL, 0x13626272uLL);
      if (!v36)
      {
        v19 = 12;
        goto LABEL_28;
      }

      v57 = 0.0;
      sub_248DC8444();
      sub_248DC83E0();
      v56 = a3;
      a3();
      lseek(v18, 0, 0);
      v45 = valuePtr;
      v46 = time(0);
      if (v45)
      {
        v47 = 0;
        v48 = v46 - 1;
        while (1)
        {
          v49 = v45 >= 0x100000 ? 0x100000 : v45;
          v50 = pwrite(v18, v36, v49, v47);
          if (v50 < 0)
          {
            v19 = *__error();
            if (v19)
            {
              goto LABEL_28;
            }
          }

          v45 -= v50;
          if (v45 < 1)
          {
            break;
          }

          v47 += v50;
          if (time(&v61) > v48)
          {
            v57 = (v47 * 100.0) / valuePtr;
            sub_248DC8444();
            sub_248DC83E0();
            v56();
            sub_248DC83E0();
            if ((v56)())
            {
              goto LABEL_60;
            }

            v48 = *&v61.f_bsize;
          }
        }
      }

      v57 = 100.0;
      sub_248DC8444();
      sub_248DC83E0();
      v56();
      sub_248DC83E0();
      if ((v56)())
      {
LABEL_60:
        v19 = 112;
        goto LABEL_28;
      }

      v57 = -1.0;
      sub_248DC8444();
      sub_248DC83E0();
      v56();
      v10 = v54;
      v6 = v55;
    }
  }

  v40 = sub_248DC842C();
  if (sub_248DA0728(v40, v41, v42) || (ftruncate(v18, valuePtr) & 0x80000000) == 0 || (v19 = *__error(), !v19))
  {
    close(v18);
    v19 = sub_248DA0978(v10, theDict, a5, v6);
    if (!v19)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_28:
  if (v18 != -1)
  {
    close(v18);
  }

LABEL_43:
  unlink(v14);
LABEL_44:
  free(v14);
  v14 = v36;
  if (v36)
  {
LABEL_45:
    free(v14);
  }

LABEL_46:
  v43 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_248DBC4E0(const __CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = CFArrayGetCount(a1);
  result = 0;
  if (a1 && theArray && Count >= 1)
  {
    v7 = 0;
    v8 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      if (ValueAtIndex)
      {
        v10.location = 0;
        v10.length = v5;
        if (CFArrayContainsValue(a1, v10, ValueAtIndex))
        {
          break;
        }
      }

      if (v8 == ++v7)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

__CFDictionary *sub_248DBC590(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5)
{
  if (!a2 || strnlen((a2 + 48), 0x20uLL) >= 0x20 && *(a2 + 79) || strnlen((a2 + 16), 0x20uLL) >= 0x20 && *(a2 + 47))
  {
    return 0;
  }

  v10 = bswap32(*(a2 + 8)) * (a4 >> 9);
  v11 = bswap32(*(a2 + 12)) * (a4 >> 9);
  if (a5)
  {
    v12 = sub_248DB44F4(a1);
    if (v11 + v10 > (*(*v12 + 96))(v12))
    {
      v13 = sub_248DB44F4(a1);
      v11 = (*(*v13 + 96))(v13) - v10;
    }
  }

  v14 = sub_248DBC890();
  v15 = *MEMORY[0x277CBECE8];
  if (!v14)
  {
LABEL_14:
    v20 = CFStringCreateWithCString(v15, (a2 + 48), 0);
    if (v20)
    {
      goto LABEL_15;
    }

    return 0;
  }

  v16 = v14;
  v17 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a2 + 48), 0);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  Value = CFDictionaryGetValue(v16, v17);
  if (!Value)
  {
    CFRelease(v18);
    goto LABEL_14;
  }

  v20 = Value;
  CFRetain(Value);
  CFRelease(v18);
LABEL_15:
  v21 = (a2 + 15);
  do
  {
    v22 = *++v21;
  }

  while (v22 == 32);
  v23 = CFStringCreateWithCString(v15, v21, 0);
  if (!v23)
  {
    v36 = v20;
    goto LABEL_34;
  }

  v24 = v23;
  if (CFStringCompare(v20, @"Apple_Free", 1uLL) == kCFCompareEqualTo || (v27 = sub_248DB4858(v10, v11, a3, v20, v24, 0, v25, v26)) == 0)
  {
    CFRelease(v20);
    v36 = v24;
LABEL_34:
    CFRelease(v36);
    return 0;
  }

  v28 = v27;
  v38 = 0;
  v29 = sub_248DB44F4(a1);
  v30 = sub_248DB3258(v29, v10, v11, &v38);
  v31 = v38;
  if (!v30 && v38)
  {
    v32 = sub_248DB48A8();
    if (v32)
    {
      v33 = v32;
      CFDictionarySetValue(v28, @"partition-filesystems", v32);
      CFRelease(v33);
    }

    v31 = v38;
  }

  if (v31)
  {
    DIDiskImageObjectRelease(v31);
  }

  if (*(a2 + 508))
  {
    v34 = CFStringCreateWithFormat(v15, 0, @"%4.4s", a2 + 508);
    CFDictionarySetValue(v28, @"toast-signature", v34);
    CFRelease(v34);
  }

  if (*(a2 + 296))
  {
    v35 = CFStringCreateWithFormat(v15, 0, @"%4.4s", a2 + 296);
    CFDictionarySetValue(v28, @"drive-setup-signature", v35);
    CFRelease(v35);
  }

  CFRelease(v20);
  CFRelease(v24);
  return v28;
}

uint64_t sub_248DBC890()
{
  result = qword_27EECD6F8;
  if (!qword_27EECD6F8)
  {
    v1 = *MEMORY[0x277CBECE8];
    v2 = CFDataCreate(*MEMORY[0x277CBECE8], "<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n<dict>\n</dict>\n</plist>\n", 188);
    if (v2)
    {
      v3 = v2;
      qword_27EECD6F8 = CFPropertyListCreateWithData(v1, v2, 0, 0, 0);
      CFRelease(v3);
    }

    return qword_27EECD6F8;
  }

  return result;
}

UInt8 *sub_248DBC920(uint64_t a1)
{
  v2 = qword_27EECD708;
  if (qword_27EECD708 || (result = malloc_type_malloc(0x50uLL, 0x10C2DB1uLL), v2 = result, (qword_27EECD708 = result) != 0))
  {

    return sub_248DBC990(a1, 0, v2, 80);
  }

  return result;
}

UInt8 *sub_248DBC990(uint64_t a1, char a2, UInt8 *a3, int a4)
{
  v6 = sub_248DBCA34(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v6, 0x8000100u, 0x3Fu);
  CFRelease(v7);
  if (!ExternalRepresentation)
  {
    return 0;
  }

  Length = CFDataGetLength(ExternalRepresentation);
  if (Length >= a4)
  {
    v10 = a4 - 1;
  }

  else
  {
    v10 = Length;
  }

  v12.location = 0;
  v12.length = v10;
  CFDataGetBytes(ExternalRepresentation, v12, a3);
  a3[v10] = 0;
  CFRelease(ExternalRepresentation);
  return a3;
}

__CFString *sub_248DBCA34(uint64_t a1, char a2)
{
  v3 = a1;
  if (a1 == -1 && (a2 & 1) == 0)
  {
    LODWORD(a1) = *__error();
  }

  if (a1 >= 0x6C)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_16;
    }

    if (a1 == -19)
    {
      v9 = &unk_248DDE2EC;
LABEL_13:
      LODWORD(a1) = v9[1];
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = &unk_248DDE2EC;
      v11 = 24;
      while (--v11)
      {
        v9 = v10 + 2;
        v12 = v10[2];
        v10 += 2;
        if (a1 == v12)
        {
          goto LABEL_13;
        }
      }

      if ((a1 & 0x80000000) == 0 || !*__error() || *__error() == 2 || *__error() == 1)
      {
        goto LABEL_16;
      }

      LODWORD(a1) = *__error();
    }
  }

  v4 = strerror(a1);
  v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
  if (v5)
  {
    v6 = v5;
    v7 = CFRetain(v5);
    CFRelease(v6);
    return v7;
  }

LABEL_16:
  if ((a2 & 4) != 0)
  {
    return 0;
  }

  if (v3 >= -100000000)
  {
    v13 = @"error %1$d";
  }

  else
  {
    v13 = @"error %1$#x";
  }

  v14 = CFRetain(v13);
  v15 = CFStringCreateWithFormat(0, 0, v14, v3);
  CFRelease(v14);
  if (v15)
  {
    return v15;
  }

  else
  {
    return &stru_285BCD368;
  }
}

uint64_t sub_248DBCBBC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    *a3 = 0;
    if (a1)
    {
      operator new();
    }
  }

  return 22;
}

char *sub_248DBCCAC(char *a1)
{
  v2 = sub_248DA52FC(a1);
  *v2 = &unk_285BCA748;
  *(v2 + 20) = 0;
  pthread_rwlock_init((v2 + 168), 0);
  (*(*a1 + 32))(a1, @"thread-safe", *MEMORY[0x277CBED28]);
  return a1;
}

uint64_t sub_248DBD06C(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = sub_248DC7A7C(a1);
  (*(v3 + 128))(v2);
  v4 = *(a1 + 112);
  result = sub_248DA4A90(*(a1 + 24), &v62, 64);
  if (result)
  {
    goto LABEL_48;
  }

  v6 = v64;
  if (v62 != 1936749171 || v64 == 0)
  {
    goto LABEL_13;
  }

  v8 = v63;
  if ((v63 - 1) > 2)
  {
    goto LABEL_13;
  }

  if (v63 == 3)
  {
    if (v66)
    {
      *(a1 + 40) = v66;
      *(a1 + 48) = v6;
      *(a1 + 88) = 3;
      goto LABEL_14;
    }

LABEL_13:
    result = 108;
    goto LABEL_48;
  }

  if (!v65)
  {
    goto LABEL_13;
  }

  *(a1 + 40) = v65;
  *(a1 + 48) = v6;
  *(a1 + 88) = v8;
  if (v8 == 1)
  {
    v9 = 512;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 4096;
LABEL_15:
  *(a1 + 64) = v9;
  *(a1 + 52) = vshrn_n_s64(vaddq_s64(vdupq_n_s64(v9), xmmword_248DDE040), 2uLL);
  sub_248DCA174();
  (*(v10 + 80))(a1);
  sub_248DCD19C();
  v13 = malloc_type_malloc(v11, v12);
  *(a1 + 72) = v13;
  if (!v13)
  {
LABEL_47:
    result = 12;
    goto LABEL_48;
  }

  v14 = v13;
  v15 = *(a1 + 24);
  sub_248DCA174();
  v17 = (*(v16 + 80))(a1);
  result = sub_248DA4A90(v15, v14, v17);
  if (!result)
  {
    v18 = *(a1 + 72);
    v19 = *(v18 + 12);
    *(v18 + 12) = v19 & 0xFFFFFFFE;
    if (*(v18 + 4) == 2)
    {
      *(v18 + 4) = 3;
      *(v18 + 28) = *(v18 + 16);
      *(v18 + 12) = v19 | 1;
    }

    v20 = *(v18 + 20);
    if (!v20)
    {
      goto LABEL_30;
    }

    sub_248DCA174();
    v22 = (*(v21 + 80))(a1);
    sub_248DCA174();
    v24 = (*(v23 + 88))(a1);
    sub_248DCA174();
    v26 = v22 + ((v24 * (*(v25 + 64))(a1)) << 9);
    sub_248DCA174();
    if ((*(v27 + 80))(a1) + v20 <= v4 && v20 == v26)
    {
      while (1)
      {
        sub_248DCA174();
        v37 = (*(v36 + 80))(a1);
        v38 = *(a1 + 80);
        if (v38)
        {
          v39 = malloc_type_realloc(v38, v37 * (*(a1 + 32) + 1), 0x100004021716A34uLL);
          if (!v39)
          {
            goto LABEL_47;
          }

          sub_248DCD15C(v39);
        }

        else
        {
          v40 = malloc_type_malloc(v37, 0x100004021716A34uLL);
          if (!sub_248DCD15C(v40))
          {
            *(a1 + 32) = 0;
            goto LABEL_47;
          }
        }

        v41 = *(a1 + 32);
        *(a1 + 32) = v41 + 1;
        if (v41 == -1)
        {
          v24 = 0;
        }

        else
        {
          sub_248DCA174();
          v24 += (*(v42 + 80))(a1) * v41;
        }

        bzero(v24, v37);
        result = sub_248DD70C0(a1, v20, v24);
        if (result)
        {
          goto LABEL_48;
        }

        if (*v24 != 1936749171)
        {
          break;
        }

        *(v24 + 8) &= ~1u;
        v43 = *(v24 + 12);
        if (!v43)
        {
          goto LABEL_30;
        }

        sub_248DCA174();
        v45 = (*(v44 + 80))(a1) + v20;
        sub_248DCA174();
        v47 = (*(v46 + 96))(a1);
        sub_248DCA174();
        v49 = v45 + ((v47 * (*(v48 + 64))(a1)) << 9);
        sub_248DCA174();
        v51 = (*(v50 + 80))(a1) + v43 <= v4 && v43 == v49;
        v20 = v43;
        if (!v51)
        {
          v32 = (v24 + 12);
          sub_248DCC66C("\x1B[33mCSparseFile::loadHeaderAndIndexNodes: #%d i-node's i-node link is out of bounds.\x1B[0m", *(a1 + 32));
          sub_248DCC6A0(a1, v24, 0);
          sub_248DCA174();
          v53 = (*(v52 + 80))(a1);
          sub_248DCC66C("\x1B[33mi-node offset %qd + node size %d should be <= logEOF %qd.\x1B[0m", v43, v53, v4);
          sub_248DCC66C("\x1B[33mi-node offset %qd should be == expected offset %qd.\x1B[0m", v43, v49);
          sub_248DCC66C("\x1B[33mremoving previous i-node's i-node link.\x1B[0m");
          *(v24 + 8) |= 1u;
          goto LABEL_26;
        }
      }

      sub_248DCC66C("\x1B[33mCSparseFile::loadHeaderAndIndexNodes: #%d i-node is invalid.\x1B[0m", *(a1 + 32));
      sub_248DCC6A0(a1, v24, 0);
      v55 = *(a1 + 32) - 1;
      *(a1 + 32) = v55;
      if (v55)
      {
        sub_248DCC66C("\x1B[33mremoving previous i-node's i-node link.\x1B[0m");
        v56 = malloc_type_realloc(*(a1 + 80), v37 * *(a1 + 32), 0x100004021716A34uLL);
        *(a1 + 80) = v56;
        v57 = (*(a1 + 32) - 1);
        sub_248DCA174();
        v59 = (*(v58 + 80))(a1);
        sub_248DCD130(v56 + v59 * v57);
        v32 = (v60 + 12);
LABEL_26:
        *v32 = 0;
        *(a1 + 105) = 1;
        if (*(a1 + 104) != 1 || (sub_248DCA174(), (*(v33 + 120))(a1)))
        {
          *(a1 + 106) = 0;
        }

        v34 = sub_248DCD104();
        (*(v35 + 472))(v34, 1);
LABEL_30:
        result = 0;
        goto LABEL_48;
      }

      sub_248DCC66C("\x1B[33mremoving h-node's i-node link.\x1B[0m");
      v61 = *(a1 + 80);
      if (v61)
      {
        free(v61);
        *(a1 + 80) = 0;
      }
    }

    else
    {
      sub_248DCC66C("\x1B[33mCSparseFile::loadHeaderAndIndexNodes: h-node's i-node link is invalid.\x1B[0m");
      sub_248DCA174();
      v30 = (*(v29 + 80))(a1);
      sub_248DCC66C("\x1B[33mi-node offset %qd + node size %d should be <= logEOF %qd.\x1B[0m", v20, v30, v4);
      sub_248DCC66C("\x1B[33mi-node offset %qd should be == expected offset %qd.\x1B[0m", v20, v26);
      sub_248DCC66C("\x1B[33mremoving h-node's i-node link.\x1B[0m");
    }

    sub_248DCD114(*(a1 + 72));
    v32 = (v31 + 20);
    goto LABEL_26;
  }

LABEL_48:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248DBD6E8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    free(v3);
    *(a1 + 80) = 0;
  }

  *(a1 + 32) = 0;
}

uint64_t sub_248DBD734(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = sub_248DC7A7C(a1);
  v5 = (*(v4 + 64))(v3);
  sub_248DCA174();
  v7 = (*(v6 + 80))(a1);
  v8 = *(a1 + 8);
  if (v8)
  {
    free(v8);
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  v9 = *(a1 + 40);
  sub_248DCA174();
  *(a1 + 16) = v9 / (*(v10 + 64))(a1);
  v11 = *(a1 + 40);
  sub_248DCA174();
  if (v11 % (*(v12 + 64))(a1))
  {
    ++*(a1 + 16);
  }

  sub_248DCD17C();
  v15 = malloc_type_calloc(v13, 8uLL, v14);
  *(a1 + 8) = v15;
  if (!v15)
  {
    return 12;
  }

  v16 = v5 << 9;
  sub_248DCA174();
  v18 = (*(v17 + 80))(a1);
  sub_248DCA174();
  if ((*(v19 + 88))(a1))
  {
    v20 = 16;
    while (1)
    {
      v21 = *(a1 + 72);
      v22 = *(v21 + 4 * v20);
      if (v22 != -1)
      {
        if (!v22 && *(v21 + 20))
        {
          sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: h-node has no more bands but i-node link is non-zero.\x1B[0m");
          sub_248DCC66C("\x1B[33mzeroing i-node link.\x1B[0m");
          v51 = *(a1 + 72);
          v50 = *(a1 + 80);
          *(v51 + 20) = 0;
          sub_248DCD114(v51);
          *(a1 + 32) = 0;
          if (v52)
          {
            free(v52);
            *(a1 + 80) = 0;
          }

          goto LABEL_57;
        }

        v23 = *(a1 + 16);
        if (v22 <= v23)
        {
          if (!v22)
          {
            goto LABEL_57;
          }

          v25 = v7 + v16;
          if (v7 + v16 > v2)
          {
            goto LABEL_52;
          }

          v26 = *(a1 + 8);
          if (v26 && *(v26 + 8 * (v22 - 1)))
          {
            sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: h-node %u-th slot (band %u) is a duplicate band reference.\x1B[0m", v20 - 16, v22);
            sub_248DCC66C("\x1B[33msparing %u-th slot.\x1B[0m", v20 - 16);
            v27 = *(a1 + 72);
            *(v27 + 4 * v20) = -1;
            sub_248DCD114(v27);
          }

          else
          {
            v28 = *(a1 + 8);
            if (!v28 || *(a1 + 16) < v22)
            {
              return 999;
            }

            *(v28 + 8 * (v22 - 1)) = v18;
          }

          goto LABEL_23;
        }

        sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: h-node %u-th slot (band %u) is out of bounds (should be <= %u).\x1B[0m", v20 - 16, v22, v23);
        sub_248DCC66C("\x1B[33msparing %u-th slot.\x1B[0m", v20 - 16);
        v24 = *(a1 + 72);
        *(v24 + 4 * v20) = -1;
        sub_248DCD114(v24);
      }

      v25 = v7 + v16;
      if (v7 + v16 > v2)
      {
        v22 = -1;
LABEL_52:
        sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: h-node %u-th slot (band %u) ending offset %qd is too large (should be <= %qd).\x1B[0m", v20 - 16, v22, v25, v2);
        sub_248DCC66C("\x1B[33mmarking %u-th slot unused.\x1B[0m", v20 - 16);
        v49 = *(a1 + 72);
        *(v49 + 4 * v20) = 0;
        sub_248DCD114(v49);
        goto LABEL_57;
      }

LABEL_23:
      sub_248DCA174();
      v18 += (*(v29 + 64))(a1) << 9;
      sub_248DCA174();
      v31 = (*(v30 + 88))(a1);
      v32 = v20 - 15;
      ++v20;
      v7 = v25;
      if (v32 >= v31)
      {
        goto LABEL_26;
      }
    }
  }

  v25 = v7;
LABEL_26:
  if (!*(a1 + 32))
  {
    goto LABEL_56;
  }

  v33 = 0;
  v7 = v25;
  while (1)
  {
    v34 = *(a1 + 80);
    if (v34)
    {
      sub_248DCA174();
      v36 = v34 + (*(v35 + 80))(a1) * v33;
    }

    else
    {
      v36 = 0;
    }

    sub_248DCA174();
    v18 += (*(v37 + 80))(a1);
    sub_248DCA174();
    v7 += (*(v38 + 80))(a1);
    sub_248DCA174();
    v63 = v33;
    if ((*(v39 + 96))(a1))
    {
      break;
    }

LABEL_49:
    ++v33;
    if (v63 + 1 >= *(a1 + 32))
    {
      goto LABEL_57;
    }
  }

  v40 = 0;
  v41 = v36 + 56;
  while (1)
  {
    v25 = v7;
    v42 = *(v41 + 4 * v40);
    if (v42 == -1)
    {
      goto LABEL_39;
    }

    if (!v42)
    {
      break;
    }

    v44 = *(a1 + 16);
    if (v42 > v44)
    {
      sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: #%u i-node %u-th slot (band %u) is out of bounds (should be <= %u).\x1B[0m", v33, v40, *(v41 + 4 * v40), v44);
      sub_248DCC66C("\x1B[33msparing %u-th slot.\x1B[0m", v40);
      v42 = -1;
      *(v41 + 4 * v40) = -1;
      *(v36 + 8) |= 1u;
    }

LABEL_39:
    v7 += v16;
    if (v25 + v16 > v2)
    {
      sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: #%u i-node %u-th slot (band %u) ending offset %qd is too large (should be <= %qd).\x1B[0m", v33, v40, v42, v25 + v16, v2);
      sub_248DCC66C("\x1B[33mmarking %u-th slot unused.\x1B[0m", v40);
      *(v36 + 4 * v40 + 56) = 0;
      sub_248DCD14C();
      goto LABEL_56;
    }

    if (v42 != -1)
    {
      v45 = *(a1 + 8);
      if (v45 && *(a1 + 16) >= v42 && *(v45 + 8 * (v42 - 1)))
      {
        sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: #%u i-node %u-th slot (band %u) is a duplicate band reference.\x1B[0m", v33, v40, v42);
        sub_248DCC66C("\x1B[33msparing %u-th slot.\x1B[0m", v40);
        *(v41 + 4 * v40) = -1;
        sub_248DCD14C();
      }

      else
      {
        v46 = *(a1 + 8);
        if (!v46 || *(a1 + 16) < v42)
        {
          return 999;
        }

        *(v46 + 8 * (v42 - 1)) = v18;
      }
    }

    sub_248DCA174();
    v18 += (*(v47 + 64))(a1) << 9;
    ++v40;
    sub_248DCA174();
    if (v40 >= (*(v48 + 96))(a1))
    {
      goto LABEL_49;
    }
  }

  if (*(v36 + 12))
  {
    sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: #%u i-node has no more bands but i-node link is non-zero.\x1B[0m", v33);
    sub_248DCC66C("\x1B[33mzeroing i-node link.\x1B[0m");
    *(v36 + 12) = 0;
    sub_248DCD14C();
    *(a1 + 32) = v33 + 1;
    v53 = *(a1 + 80);
    sub_248DCA174();
    (*(v54 + 80))(a1);
    v55 = *(a1 + 32);
    sub_248DCD17C();
    *(a1 + 80) = malloc_type_realloc(v53, v56, v57);
  }

  else
  {
    v43 = *(a1 + 16);
  }

LABEL_56:
  v7 = v25;
LABEL_57:
  if (v2 == v7)
  {
    return 0;
  }

  if (*(a1 + 104) == 1)
  {
    sub_248DCC66C("\x1B[33mCSparseFile::generateSparseTable: expected EOF %qd, actual EOF %qd.\x1B[0m", v7, v2);
    v59 = (*(**(a1 + 24) + 312))();
    if (v59)
    {
      *(a1 + 106) = 0;
      DIStrError(v59);
      sub_248DCC66C("\x1B[31m\x1B[1madjusting EOF failed (%d - %s).\x1B[0m");
    }

    else
    {
      *(a1 + 112) = v7;
      *(a1 + 120) = v7;
      sub_248DCC66C("\x1B[33mEOF was adjusted.\x1B[0m");
    }
  }

  else
  {
    *(a1 + 106) = 0;
  }

  v60 = sub_248DCD104();
  (*(v61 + 472))(v60, 1);
  *(a1 + 105) = 1;
  if (*(a1 + 104) != 1 || (sub_248DCA174(), result = (*(v62 + 120))(a1), result))
  {
    result = 0;
    *(a1 + 106) = 0;
  }

  return result;
}

uint64_t sub_248DBDEFC(uint64_t a1)
{
  result = *(a1 + 160);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t sub_248DBDF34(uint64_t a1)
{
  v6 = sub_248DCC630(a1);
  pthread_rwlock_rdlock(v6);
  if (!v3)
  {
LABEL_24:
    v10 = 0;
    v20 = 22;
    goto LABEL_20;
  }

  v7 = *(v1 + 160);
  if (v7)
  {
    v8 = (*(*v7 + 48))(v7);
    if (v8 < v5 || v4 + v5 > v8)
    {
      goto LABEL_24;
    }

    if (v4)
    {
      v10 = 0;
      v11 = v4 << 9;
      while (1)
      {
        sub_248DCC620();
        v13 = *(v12 + 24);
        sub_248DCC654();
        v15 = v14();
        if (v15)
        {
LABEL_18:
          v20 = v15;
          goto LABEL_20;
        }

        v16 = v24;
        v17 = v24 << 9;
        if (v24 << 9 > v11)
        {
          break;
        }

        if (v22)
        {
          v18 = sub_248DCC620();
          v15 = (*(v19 + 32))(v18, v5, v16, &v23, v3);
          if (v15)
          {
            goto LABEL_18;
          }

          v16 = v23;
          v17 = v23 << 9;
        }

        else
        {
          bzero(v3, v24 << 9);
          v23 = v16;
        }

        v3 += v17;
        v5 += v16;
        v10 += v16;
        v4 -= v16;
        if (!v4)
        {
          v20 = 0;
          goto LABEL_20;
        }
      }

      v20 = 29;
    }

    else
    {
      v20 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v20 = 999;
  }

LABEL_20:
  if (v2)
  {
    *v2 = v10;
  }

  pthread_rwlock_unlock((v1 + 168));
  return v20;
}