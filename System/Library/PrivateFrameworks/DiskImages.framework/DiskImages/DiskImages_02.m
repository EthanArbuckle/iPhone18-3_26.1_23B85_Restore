uint64_t sub_248DBE0BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v10 = sub_248DC7A7C(a1);
  v12 = (*(v11 + 136))(v10);
  if (v12 && (v13 = *(a1 + 8)) != 0 && *(a1 + 16) >= v12 && (v14 = *(v13 + 8 * (v12 - 1))) != 0)
  {
    *a5 = 1;
    v15 = v12 + 1;
    do
    {
      v16 = (*(*a1 + 144))(a1, v15) - a2;
      if (v16 >= a3)
      {
        break;
      }

      if (!v15)
      {
        break;
      }

      v17 = *(a1 + 8);
      if (!v17)
      {
        break;
      }

      if (*(a1 + 16) < v15)
      {
        break;
      }

      v18 = *(v17 + 8 * (v15 - 1));
      if (!v18)
      {
        break;
      }

      v19 = v14 + (*(a1 + 48) << 9);
      v15 = (v15 + 1);
      v14 = v18;
    }

    while (v18 == v19);
  }

  else
  {
    *a5 = 0;
    v16 = (*(*a1 + 144))(a1, v12 + 1) - a2;
  }

  if (v16 >= a3)
  {
    v16 = a3;
  }

  *a4 = v16;
  return 0;
}

uint64_t sub_248DBE29C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    return 22;
  }

  *a4 = 0;
  if (!a5)
  {
    return 22;
  }

  v8 = sub_248DC7A7C(a1);
  v10 = (*(v9 + 136))(v8);
  sub_248DCD124();
  (*(v11 + 144))(a1, (v12 + 1));
  sub_248DCD124();
  (*(v13 + 144))(a1, v10);
  result = sub_248DCD188();
  if (v10)
  {
    v15 = *(a1 + 8);
    if (v15)
    {
      if (*(a1 + 16) >= v10 && *(v15 + 8 * (v10 - 1)))
      {
        v16 = sub_248DC7A7C(*(a1 + 24));
        result = (*(v17 + 328))(v16);
        if (!result)
        {
          *a4 = a3;
        }
      }
    }
  }

  return result;
}

void sub_248DBE3F8(uint64_t a1)
{
  sub_248DBE430(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DBE430(uint64_t a1)
{
  *a1 = &unk_285BCA748;
  v2 = *(a1 + 160);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 160) = 0;
  pthread_rwlock_destroy((a1 + 168));

  return sub_248DAE12C(a1);
}

void sub_248DBE4BC(uint64_t a1)
{
  sub_248DBE4F4(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DBE4F4(uint64_t a1)
{
  *a1 = &unk_285BCA9B0;
  sub_248DBE5DC(a1);
  if (*(a1 + 24))
  {
    sub_248DBE800(a1);
    (*(**(a1 + 24) + 472))(*(a1 + 24), 1);
  }

  (*(*a1 + 128))(a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  v3 = *(a1 + 96);
  if (v3)
  {
    free(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    DIDiskImageObjectRelease(v4);
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_248DBE5DC(uint64_t a1)
{
  v2 = sub_248DBE674(a1);
  if (v2)
  {
    v3 = v2;
    v4 = DIStrError(v2);
    sub_248DCC66C("\x1B[31m\x1B[1mCSparseFile::writeHeaderAndIndexNodes: updating header node failed (%d - %s).\x1B[0m", v3, v4);
  }

  else
  {
    v6 = sub_248DBE704(a1);
    v3 = v6;
    if (v6)
    {
      if (*(a1 + 32) <= 1u)
      {
        v7 = "node";
      }

      else
      {
        v7 = "nodes";
      }

      v8 = DIStrError(v6);
      sub_248DCC66C("\x1B[31m\x1B[1mCSparseFile::writeHeaderAndIndexNodes: updating index %s failed (%d - %s).\x1B[0m", v7, v3, v8);
    }
  }

  return v3;
}

uint64_t sub_248DBE674(uint64_t *a1)
{
  v1 = a1[9];
  if (!v1)
  {
    return 22;
  }

  if ((v1[12] & 1) == 0)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = sub_248DC7A7C(a1);
  v6 = (*(v5 + 80))(v4);
  result = sub_248DBFADC(v3, v1, v6);
  if (!result)
  {
    *(a1[9] + 12) &= ~1u;
  }

  return result;
}

uint64_t sub_248DBE704(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    return 0;
  }

  if (!*(a1 + 32))
  {
    return 0;
  }

  sub_248DCA174();
  (*(v2 + 80))(a1);
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = 0;
  v4 = (*(a1 + 72) + 20);
  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      break;
    }

    v6 = *(a1 + 80);
    if (!v6)
    {
      break;
    }

    sub_248DCA174();
    v8 = (v6 + (*(v7 + 80))(a1) * v3);
    if (v8[2])
    {
      result = sub_248DD71A0(a1, v5, v8);
      if (result)
      {
        return result;
      }

      v8[2] &= ~1u;
    }

    v4 = (v8 + 3);
    if (++v3 >= *(a1 + 32))
    {
      return 0;
    }
  }

  return 22;
}

uint64_t sub_248DBE800(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (!v1)
  {
    return 0;
  }

  if (v1 == *(a1 + 120))
  {
    return 0;
  }

  result = (*(**(a1 + 24) + 312))(*(a1 + 24));
  if (!result)
  {
    *(a1 + 120) = *(a1 + 112);
  }

  return result;
}

char *sub_248DBE884(char *a1, uint64_t a2)
{
  result = sub_248DB3DA4(a1, a2);
  *result = &unk_285BCC3D0;
  return result;
}

__CFArray *sub_248DBE8B8(uint64_t a1, _DWORD *a2, uint64_t a3, __CFDictionary **a4)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8 = sub_248DB44F4(a1);
  v9 = *MEMORY[0x277CBED10];
  if (a4)
  {
    *a4 = 0;
  }

  v10 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  (*(*v8 + 96))(v8);
  v11 = sub_248DB48A8();
  v12 = v11;
  if (!v11)
  {
    goto LABEL_24;
  }

  if (!CFDictionaryGetValue(v11, @"APFS"))
  {
    if (CFDictionaryGetValue(v12, @"HFS+"))
    {
      v9 = *MEMORY[0x277CBED28];
      v13 = @"Apple_HFS";
      goto LABEL_25;
    }

    if (CFDictionaryGetValue(v12, @"HFSX"))
    {
      v9 = *MEMORY[0x277CBED28];
      v13 = @"Apple_HFSX";
      goto LABEL_25;
    }

    if (CFDictionaryGetValue(v12, @"UDF"))
    {
      v14 = *MEMORY[0x277CBED28];
      v13 = @"UDF";
      goto LABEL_26;
    }

    if (CFDictionaryGetValue(v12, @"UFS"))
    {
      v9 = *MEMORY[0x277CBED28];
      v13 = @"Apple_UFS";
      goto LABEL_25;
    }

    if (CFDictionaryGetValue(v12, @"ProDOS"))
    {
      v13 = @"Apple_ProDOS";
      goto LABEL_25;
    }

    if (CFDictionaryGetValue(v12, @"NTFS"))
    {
      v13 = @"Windows_NTFS";
      goto LABEL_25;
    }

    if (CFDictionaryGetValue(v12, @"FAT12"))
    {
      v13 = @"DOS_FAT_12";
      goto LABEL_25;
    }

    if (CFDictionaryGetValue(v12, @"FAT16"))
    {
      v13 = @"DOS_FAT_16";
      goto LABEL_25;
    }

    if (CFDictionaryGetValue(v12, @"FAT32"))
    {
      v13 = @"DOS_FAT_32";
      goto LABEL_25;
    }

LABEL_24:
    v15 = DIGetBundleRef();
    v13 = sub_248DD4D90(v15, @"unknown partition", @"unknown partition");
    goto LABEL_25;
  }

  v13 = @"Apple_APFS";
LABEL_25:
  v14 = v9;
LABEL_26:
  v16 = DIGetBundleRef();
  v17 = sub_248DD4D90(v16, @"whole disk", @"whole disk");
  v18 = sub_248DB44F4(a1);
  v19 = (*(*v18 + 96))(v18);
  v22 = sub_248DB4858(0, v19, 0, v13, v17, 0, v20, v21);
  if (v22)
  {
    v23 = v22;
    if (v12)
    {
      CFDictionarySetValue(v22, @"partition-filesystems", v12);
      CFRelease(v12);
    }

    CFArrayAppendValue(Mutable, v23);
    CFRelease(v23);
    valuePtr = 512;
    v24 = CFNumberCreate(v6, kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(v10, @"block-size", v24);
    CFRelease(v24);
    CFDictionarySetValue(v10, @"burnable", v14);
    CFDictionarySetValue(v10, @"appendable", v9);
    if (a4)
    {
      *a4 = v10;
    }

    else
    {
      CFRelease(v10);
    }

    ++*a2;
    if (v17)
    {
      CFRelease(v17);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
    if (v17)
    {
      CFRelease(v17);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  return Mutable;
}

void sub_248DBECC0(void *a1)
{
  sub_248DB5B3C(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DBECF8(const __CFURL *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, void *a5, CFTypeRef *a6)
{
  value = 0;
  v25 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v12 = 22;
  if (!a1 || !theDict || !a5)
  {
    return v12;
  }

  if (!CFDictionaryGetValue(theDict, @"hybrid-image-source-array"))
  {
    v26 = 0;
    valuePtr = 0;
    if (!CFDictionaryGetValueIfPresent(theDict, @"blockcount", &value))
    {
      MutableCopy = 0;
      v22 = 0;
      v19 = 0;
      goto LABEL_27;
    }

    CFNumberGetValue(value, kCFNumberSInt64Type, &valuePtr);
    value = 0;
    v14 = CFDictionaryGetValue(theDict, @"create-image-type");
    if (v14 && (v15 = v14, v16 = CFGetTypeID(v14), v16 == CFStringGetTypeID()) && CFStringCompare(v15, @"UDTO", 0) == kCFCompareEqualTo)
    {
      v17 = 0;
      v18 = @"cdr";
    }

    else
    {
      v17 = 1;
      v18 = @"dmg";
    }

    v19 = sub_248DAE768(a1, v18, 0);
    if (v19)
    {
      v20 = *MEMORY[0x277CBECE8];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
      if (MutableCopy)
      {
        v26 = valuePtr << 9;
        v22 = CFNumberCreate(v20, kCFNumberSInt64Type, &v26);
        CFDictionaryRemoveValue(MutableCopy, @"diskimage-class");
        CFDictionarySetValue(MutableCopy, @"writeable", *MEMORY[0x277CBED28]);
        CFDictionarySetValue(MutableCopy, @"size", v22);
        if (v17)
        {
          CFDictionaryAddValue(MutableCopy, @"file-type", @"devr");
          CFDictionaryAddValue(MutableCopy, @"file-creator", @"ddsk");
        }

        v23 = sub_248DAE8D4(v19, MutableCopy, 7u, a3, a4, &v25, a6);
        if (v23)
        {
          v12 = v23;
LABEL_27:
          if (!v25)
          {
LABEL_31:
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }

            if (v22)
            {
              CFRelease(v22);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            return v12;
          }

          (*(*v25 + 416))(v25);
LABEL_29:
          if (v25)
          {
            DIDiskImageObjectRelease(v25);
            v25 = 0;
          }

          goto LABEL_31;
        }

        CFRelease(MutableCopy);
        v24 = CFDictionaryCreateMutableCopy(v20, 0, theDict);
        MutableCopy = v24;
        if (v24)
        {
          CFDictionarySetValue(v24, @"diskimage-class", @"CRawDiskImage");
          v12 = sub_248DB8454(v25, MutableCopy, a5, a6);
          if (!v12)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }

LABEL_26:
        v12 = 999;
        goto LABEL_27;
      }
    }

    else
    {
      MutableCopy = 0;
    }

    v22 = 0;
    goto LABEL_26;
  }

  return sub_248DD4D80();
}

uint64_t sub_248DBF040(int a1, uint64_t a2)
{
  v3[0] = 0x300000000;
  v3[1] = 0;
  v3[2] = a2;
  v3[3] = 0;
  if (fcntl(a1, 42, v3) < 0)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

BOOL sub_248DBF090(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (a2)
  {
    *a2 = 0;
  }

  MKMediaRef = DIMediaKitCreateMKMediaRef(a1, 0, 0, &cf);
  if (!MKMediaRef)
  {
    MKDetectISO();
    MKMediaRef = -5343;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  result = MKMediaRef == 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DBF17C(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
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
  result = (*(*v10 + 336))(v10, a2 << 9, a3 << 9, &v15, a5);
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

uint64_t sub_248DBF27C(uint64_t a1, off_t a2)
{
  if (ftruncate(*(a1 + 320), a2) < 0)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DBF2AC(uint64_t a1, uint64_t a2, int64_t size, uint64_t a4, char *a5)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v10 = malloc_type_malloc(size, 0xA822E4E3uLL);
  if (v10)
  {
    v11 = v10;
    if (sub_248DB5430(a1, a2, (a4 * size) >> 9, size >> 9, v10))
    {
      goto LABEL_8;
    }

    if (*v11 != 2)
    {
      goto LABEL_8;
    }

    v13 = 0;
    v12.i32[0] = *v11;
    v14 = vaddvq_s32(vmovl_u16(*&vmovl_u8(v12)));
    v15 = 5;
    do
    {
      v13 += v11[v15++];
    }

    while (v15 != 16);
    if (v11[4] != (v13 + v14))
    {
      goto LABEL_8;
    }

    v16 = *(v11 + 4);
    if (v16 < size)
    {
      goto LABEL_8;
    }

    v20 = *(v11 + 5);
    v21 = v16 - size;
    while (1)
    {
      if (sub_248DB5430(a1, a2, (v20 * size) >> 9, size >> 9, v11))
      {
        goto LABEL_8;
      }

      if (*v11 == 1)
      {
        break;
      }

      v17 = 0;
      ++v20;
      v22 = v21;
      v21 -= size;
      if (v22 < size)
      {
        goto LABEL_9;
      }
    }

    if (v11[55])
    {
      v23 = v11[55] - 1;
    }

    else
    {
      v24 = v11 + 55;
      v25 = -29;
      while (v25)
      {
        v26 = *--v24;
        ++v25;
        if (v26)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v24) = v11 + 25;
LABEL_24:
      v23 = v24 - (v11 + 25) + 1;
    }

    if ((v23 - 33) >= 0xFFFFFFE0)
    {
      v27 = v11[24];
      if (v27 != 16 && v27 != 8)
      {
        *a5 = 0x6E776F6E6B6E55;
        v35 = 7;
        goto LABEL_40;
      }

      MEMORY[0x28223BE20]();
      v31 = (v11 + 25);
      if (v11[24] == 8)
      {
        v32 = 0;
        do
        {
          *(v42 + 2 * v32 - v30) = *(v31 + v32);
          ++v32;
        }

        while (v29 != v32);
        v31 = (v42 - v30);
      }

      else
      {
        v29 >>= 1;
      }

      v33 = CFStringCreateWithCharacters(0, v31, v29);
      if (!v33)
      {
        *a5 = 0x6E776F6E6B6E55;
        v35 = 7;
        goto LABEL_40;
      }

      v34 = v33;
      CFStringGetCString(v33, a5, 136, 0x8000100u);
      CFRelease(v34);
      v35 = strlen(a5);
      if (v35 >= 1)
      {
LABEL_40:
        v36 = a5;
        do
        {
          --v35;
          v38 = *v36++;
          v37 = v38;
          if (v38 == 47 || v37 == 0)
          {
            if (!v35)
            {
LABEL_56:
              *a5++ = 95;
              break;
            }

            while (1)
            {
              v40 = *v36;
              if (v40 != 47 && v40 != 0)
              {
                break;
              }

              ++v36;
              if (!--v35)
              {
                goto LABEL_56;
              }
            }

            LOBYTE(v37) = 95;
          }

          *a5++ = v37;
        }

        while (v35 > 0);
      }

      *a5 = 0;
      v17 = 1;
    }

    else
    {
LABEL_8:
      v17 = 0;
    }

LABEL_9:
    free(v11);
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_248DBF5D4(const __CFURL *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, void *a5, CFTypeRef *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0;
  v20 = 0;
  value = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v12 = 22;
  if (a1 && theDict && a5)
  {
    if (!CFDictionaryGetValueIfPresent(theDict, @"blockcount", &value))
    {
      goto LABEL_11;
    }

    if (!sub_248DB7EC4(value, kCFNumberSInt64Type, &v23))
    {
      goto LABEL_27;
    }

    if (!v23)
    {
LABEL_11:
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x277CBECE8], a1);
      if (!PathComponent)
      {
        goto LABEL_27;
      }

      v14 = PathComponent;
      v12 = sub_248DC30BC(PathComponent, &v24);
      CFRelease(v14);
      if (v12)
      {
        goto LABEL_27;
      }

      v23 = v24.f_blocks * ((v24.f_bsize >> 8) & 0xFFFFFE);
    }

    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, @"sparse-band-size", &value) && !sub_248DB7EC4(value, kCFNumberSInt64Type, &v22))
    {
      v12 = 22;
    }

    else
    {
      value = 0;
      v15 = sub_248DAE768(a1, @"sparseimage", 0);
      if (v15)
      {
        v16 = v15;
        v12 = sub_248DBF7F4(v15, theDict, a3, a4, v23, v22, &v20, a6);
        v17 = v20;
        if (!v12)
        {
          v12 = sub_248DBCBBC(v20, theDict, a5, a6);
          v17 = v20;
        }

        if (v12 && v17)
        {
          (*(*v17 + 416))(v17);
          v17 = v20;
        }

        if (v17)
        {
          DIDiskImageObjectRelease(v17);
          v20 = 0;
        }

        CFRelease(v16);
      }

      else
      {
        v12 = 999;
      }
    }
  }

LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_248DBF7F4(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, CFTypeRef *a8)
{
  v37 = 0;
  if (a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = 2048;
  }

  v15 = a5 / v14;
  if (a5 % v14)
  {
    ++v15;
  }

  if (v15 >= 134217729)
  {
    if (a6)
    {
      v16 = 0;
      v17 = 116;
      goto LABEL_41;
    }

    v14 = (sqrt(a5) * 0.125);
    if (!v14 || (v14 & 0x7FF) != 0)
    {
      v14 = ((v14 / 2048) << 11) + 2048;
    }
  }

  v18 = a5 / v14;
  if (a5 % v14)
  {
    ++v18;
  }

  v17 = 116;
  if (v18 > 0x8000000 || (a6 ? (v17 = 22) : (v17 = 116), v14 > 0x200000))
  {
LABEL_40:
    v16 = 0;
    goto LABEL_41;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v20 = MutableCopy;
  if (!MutableCopy)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_41;
  }

  v21 = sub_248DAE8D4(a1, MutableCopy, 1u, a3, a4, &v37, a8);
  if (v21 || (v22 = sub_248DC7A7C(v37), v21 = (*(v23 + 168))(v22, 1), v21) || (v24 = sub_248DC7A7C(v37), v21 = (*(v25 + 272))(v24), v21))
  {
    v17 = v21;
LABEL_25:
    CFRelease(v20);
    v16 = v37;
LABEL_38:
    if (!v16)
    {
      goto LABEL_41;
    }

    v34 = sub_248DC7A7C(v16);
    (*(v35 + 8))(v34);
    goto LABEL_40;
  }

  v26 = sub_248DA0728(v20, @"di-sparse-puma-compatible", 0);
  if (v26)
  {
    v27 = 512;
  }

  else
  {
    v27 = 4096;
  }

  sub_248DCD17C();
  v29 = malloc_type_calloc(1uLL, v27, v28);
  if (!v29)
  {
    v17 = 12;
    goto LABEL_25;
  }

  v30 = v29;
  if (v26)
  {
    v31 = 1;
  }

  else
  {
    v31 = 3;
  }

  *v29 = 1936749171;
  *(v29 + 1) = v31;
  *(v29 + 2) = v14;
  *(v29 + 28) = a5;
  *(v29 + 4) = a5;
  v17 = sub_248DBFADC(v37, v29, v27);
  if (!v17)
  {
    v32 = sub_248DC7A7C(v37);
    (*(v33 + 280))(v32, 0);
  }

  CFRelease(v20);
  free(v30);
  v16 = v37;
  if (v17)
  {
    goto LABEL_38;
  }

LABEL_41:
  *a7 = v16;
  return v17;
}

uint64_t sub_248DBFADC(uint64_t a1, const void *a2, size_t a3)
{
  sub_248DCD19C();
  v8 = malloc_type_malloc(v7, v6);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v12 = 0;
  memmove(v8, a2, a3);
  sub_248DA4C18(v9, (a3 + 0x3FFFFFFC0) >> 2);
  v10 = (*(*a1 + 336))(a1, 0, a3, &v12, v9);
  free(v9);
  return v10;
}

uint64_t sub_248DBFBC4(uint64_t a1)
{
  v6 = sub_248DCC630(a1);
  pthread_rwlock_wrlock(v6);
  if (!v3)
  {
LABEL_21:
    v10 = 0;
    v17 = 22;
    goto LABEL_18;
  }

  v7 = *(v1 + 160);
  if (v7)
  {
    v8 = (*(*v7 + 48))(v7);
    if (v8 < v5 || v4 + v5 > v8)
    {
      goto LABEL_21;
    }

    if (v4)
    {
      v10 = 0;
      while (1)
      {
        sub_248DCC620();
        v12 = *(v11 + 24);
        sub_248DCC654();
        v14 = v13();
        if (v14)
        {
          break;
        }

        if ((v19 & 1) == 0)
        {
          v15 = sub_248DCC620();
          v14 = (*(v16 + 16))(v15, v5);
          if (v14)
          {
            break;
          }
        }

        v14 = (*(**(v1 + 160) + 40))(*(v1 + 160), v5, v20[1], v20, v3);
        if (v14)
        {
          break;
        }

        v3 += v20[0] << 9;
        v5 += v20[0];
        v10 += v20[0];
        v4 -= v20[0];
        if (!v4)
        {
          v17 = 0;
          goto LABEL_18;
        }
      }

      v17 = v14;
    }

    else
    {
      v17 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v17 = 999;
  }

LABEL_18:
  if (v2)
  {
    *v2 = v10;
  }

  pthread_rwlock_unlock((v1 + 168));
  return v17;
}

uint64_t sub_248DBFD40(uint64_t a1)
{
  v2 = (*(*a1 + 136))(a1);
  v3 = *(*a1 + 152);

  return v3(a1, v2);
}

uint64_t sub_248DBFDBC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 72);
  v5 = sub_248DC7A7C(a1);
  v7 = (*(v6 + 80))(v5);
  sub_248DCA174();
  if (!(*(v8 + 88))(a1))
  {
LABEL_5:
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = *(a1 + 32);
      if (v14 > v15)
      {
        break;
      }

      v16 = v14 - 1;
      v17 = *(a1 + 80);
      if (v17)
      {
        v18 = v15 > v16;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        sub_248DCA174();
        v19 = v17 + (*(v20 + 80))(a1) * v16;
      }

      else
      {
        v19 = 0;
      }

      v10 = v19 + 56;
      sub_248DCA174();
      v22 = (*(v21 + 80))(a1);
      sub_248DCA174();
      if ((*(v23 + 96))(a1))
      {
        v24 = 0;
        while ((*v10 + 1) > 1)
        {
          ++v24;
          v10 += 4;
          sub_248DCA174();
          if (v24 >= (*(v25 + 96))(a1))
          {
            goto LABEL_17;
          }
        }

        v27 = *(a1 + 80);
        sub_248DCA174();
        v29 = (*(v28 + 80))(a1);
        v26 = 0;
        sub_248DCD130(v27 + v29 * v16);
        if (*v10 == -1)
        {
          v13 = 1;
        }
      }

      else
      {
LABEL_17:
        v26 = 1;
      }

      sub_248DCA174();
      v7 += v22 + ((*(v30 + 64))(a1) << 9);
      ++v14;
      if ((v26 & 1) == 0)
      {
        if (v13)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    result = sub_248DD72C4(a1);
    if (result)
    {
      return result;
    }

    v37 = *(a1 + 32);
    v38 = *(a1 + 80);
    if (v37)
    {
      v39 = (v37 - 1);
      sub_248DCA174();
      v41 = v38 + (*(v40 + 80))(a1) * v39;
      v38 = *(a1 + 80);
      v10 = v41 + 56;
      v37 = *(a1 + 32);
    }

    else
    {
      v10 = 56;
    }

    v42 = (v37 - 1);
    sub_248DCA174();
    v44 = (*(v43 + 80))(a1);
    sub_248DCD130(v38 + v44 * v42);
    goto LABEL_24;
  }

  v9 = 0;
  v10 = v4 + 64;
  while ((*v10 + 1) >= 2)
  {
    sub_248DCA174();
    v7 += (*(v11 + 64))(a1) << 9;
    ++v9;
    v10 += 4;
    sub_248DCA174();
    if (v9 >= (*(v12 + 88))(a1))
    {
      goto LABEL_5;
    }
  }

  sub_248DCD114(*(a1 + 72));
  if (*v10 != -1)
  {
LABEL_24:
    v7 = *(a1 + 112);
    sub_248DCA174();
    v32 = (*(v31 + 64))(a1);
    result = sub_248DC018C(a1, v7 + (v32 << 9));
    if (result)
    {
      return result;
    }
  }

LABEL_25:
  result = 999;
  if (a2)
  {
    v34 = *(a1 + 8);
    if (v34)
    {
      if (*(a1 + 16) >= a2)
      {
        *(v34 + 8 * (a2 - 1)) = v7;
        *v10 = a2;
        sub_248DCA174();
        v36 = *(v35 + 120);

        return v36(a1);
      }
    }
  }

  return result;
}

uint64_t sub_248DC018C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2 == a2)
  {
    return 0;
  }

  if (v2 > a2 || *(a1 + 120) >= a2)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 48);
  v7 = 10 * v6;
  if (10 * v6 >= 0x32000)
  {
    v7 = 204800;
  }

  v8 = a2 + ((v6 * (v7 / v6)) << 9);
  if (!(*(**(a1 + 24) + 320))(*(a1 + 24), v8, 0) || (result = (*(**(a1 + 24) + 320))(*(a1 + 24), a2, 0), v8 = a2, !result))
  {
    *(a1 + 120) = v8;
LABEL_10:
    result = 0;
    *(a1 + 112) = a2;
  }

  return result;
}

uint64_t sub_248DC028C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    return 22;
  }

  *a4 = 0;
  if (!a5)
  {
    return 22;
  }

  v8 = sub_248DC7A7C(a1);
  v10 = (*(v9 + 136))(v8);
  sub_248DCD124();
  (*(v11 + 144))(a1, (v12 + 1));
  sub_248DCD124();
  (*(v13 + 144))(a1, v10);
  result = sub_248DCD188();
  if (v10)
  {
    v15 = *(a1 + 8);
    if (v15)
    {
      if (*(a1 + 16) >= v10 && *(v15 + 8 * (v10 - 1)))
      {
        v16 = sub_248DC7A7C(*(a1 + 24));
        result = (*(v17 + 336))(v16);
        if (!result)
        {
          *a4 = a3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_248DC03E8(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    return (*(*v1 + 104))();
  }

  else
  {
    return 78;
  }
}

uint64_t sub_248DC041C(void **a1)
{
  result = ((*a1)[15])(a1);
  if (!result)
  {
    result = sub_248DBE800(a1);
    if (!result)
    {
      v3 = *(*a1[3] + 472);

      return v3();
    }
  }

  return result;
}

uint64_t sub_248DC04C0(const __CFURL *a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    fts_errno = 22;
    goto LABEL_25;
  }

  v1 = sub_248DA07D4(a1);
  if (!v1)
  {
    fts_errno = 4294962336;
    goto LABEL_25;
  }

  v2 = v1;
  v12[0] = v1;
  v12[1] = 0;
  v3 = fts_open(v12, 21, 0);
  if (!v3)
  {
    v9 = *__error();
    if (v9)
    {
      fts_errno = v9;
    }

    else
    {
      fts_errno = 0xFFFFFFFFLL;
    }

    goto LABEL_24;
  }

  v4 = v3;
  while (1)
  {
    v5 = fts_read(v4);
    if (!v5)
    {
      break;
    }

    fts_info = v5->fts_info;
    if (fts_info > 0xA)
    {
      goto LABEL_16;
    }

    if (((1 << fts_info) & 0x490) != 0)
    {
      fts_errno = v5->fts_errno;
      if (fts_errno)
      {
        goto LABEL_23;
      }
    }

    else if (((1 << fts_info) & 6) == 0)
    {
      if (fts_info == 6)
      {
        v8 = rmdir(v5->fts_accpath);
        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_17;
        }

LABEL_14:
        fts_errno = v8;
        if (v8)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_16:
        v8 = unlink(v5->fts_accpath);
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_17:
        fts_errno = *__error();
        if (fts_errno)
        {
          goto LABEL_23;
        }
      }
    }
  }

  fts_errno = *__error();
LABEL_23:
  fts_close(v4);
LABEL_24:
  free(v2);
LABEL_25:
  v10 = *MEMORY[0x277D85DE8];
  return fts_errno;
}

uint64_t sub_248DC063C(uint64_t a1)
{
  v2 = sub_248DAB178(a1) + 104;
  sub_248DC0718(v2);
  sub_248DC0754((a1 + 168));
  *a1 = &unk_285BC9F60;
  *(a1 + 104) = &unk_285BC9FA8;
  *(a1 + 168) = &unk_285BC9FC8;
  sub_248DC0774(v2, 0x10000u);
  return a1;
}

void sub_248DC06E4(_Unwind_Exception *a1)
{
  nullsub_4(v3);
  sub_248DC0A1C(v2);
  sub_248DA799C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_248DC0718(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_285BCA030;
  *(result + 24) = 133114;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_248DC0774(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x30000)
  {
    v2 = 196608;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= 0x800)
  {
    v2 = 2048;
  }

  *(result + 20) = v2;
  return result;
}

uint64_t sub_248DC0794(int a1, char *__src, int a3, unint64_t __dst, int a5)
{
  if (a5 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = __dst;
LABEL_3:
  if (a3 < 1)
  {
    return 1000;
  }

  v10 = (__src + 1);
  if ((*__src & 0x80000000) == 0)
  {
    v11 = *__src;
    if (v11 >= 0x40)
    {
      v19 = a3 >= 3;
      a3 -= 3;
      if (!v19)
      {
        return 1000;
      }

      v12 = (v11 & 0x3F) + 4;
      v13 = (bswap32(*v10) >> 16) + 1;
      v14 = 3;
    }

    else
    {
      if (a3 == 1)
      {
        return 1000;
      }

      a3 -= 2;
      v12 = (v11 >> 2) + 3;
      v13 = (bswap32(*__src & 0xFF03) >> 16) + 1;
      v14 = 2;
    }

    v8 += v12;
    v18 = &v9[-v13];
    v19 = v8 <= a5 && v18 >= __dst;
    if (!v19)
    {
      return 1000;
    }

    __src += v14;
    v20 = (v12 << 16) - 0x80000;
    while (v12 <= 4)
    {
      if (v12 > 2)
      {
        if (v12 != 3)
        {
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v12 != 2)
      {
        if (v12 == 1)
        {
          *v9++ = *v18;
LABEL_37:
          if (v8 >= a5)
          {
            return 0;
          }

          goto LABEL_3;
        }

LABEL_30:
        v21 = *v18++;
        *v9++ = v21;
LABEL_31:
        v22 = *v18++;
        *v9++ = v22;
        goto LABEL_32;
      }

LABEL_36:
      *v9 = *v18;
      v27 = v18[1];
      v18 += 2;
      v9[1] = v27;
      v9 += 2;
      v28 = v20 >> 16;
      v20 -= 0x80000;
      v12 -= 8;
      if (v28 <= 0)
      {
        goto LABEL_37;
      }
    }

    if (v12 != 5)
    {
      if (v12 != 6)
      {
        if (v12 != 7)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

LABEL_32:
      v23 = *v18++;
      *v9++ = v23;
    }

    v24 = *v18++;
    *v9++ = v24;
LABEL_34:
    v25 = *v18++;
    *v9++ = v25;
LABEL_35:
    v26 = *v18++;
    *v9++ = v26;
    goto LABEL_36;
  }

  v15 = *__src & 0x7F;
  v16 = v15 + 1;
  v8 += v15 + 1;
  result = 1000;
  if (v8 <= a5)
  {
    a3 += ~v16;
    if ((a3 & 0x80000000) == 0)
    {
      memcpy(v9, __src + 1, v16);
      __src = v10 + v16;
      v9 += v16;
      goto LABEL_37;
    }
  }

  return result;
}

void sub_248DC09C0(uint64_t a1)
{
  nullsub_4(a1 + 168);
  sub_248DC0A1C((a1 + 104));
  sub_248DA799C(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DC0A1C(void *a1)
{
  *a1 = &unk_285BCA030;
  v2 = a1[4];
  if (v2)
  {
    free(v2);
  }

  a1[4] = 0;
  return a1;
}

uint64_t sub_248DC0AB4(int a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, @"checksum-image-type");
  if (!Value)
  {
    return 4294966296;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 4294966296;
  }

  if (CFStringCompare(v3, @"UDIF-CRC32", 0) == kCFCompareEqualTo)
  {
    return 1000;
  }

  v5 = 1000;
  if (CFStringCompare(v3, @"UDIF-MD5", 0))
  {
    if (CFStringCompare(v3, @"IPOD", 0))
    {
      return 4294966296;
    }

    else
    {
      return 1000;
    }
  }

  return v5;
}

uint64_t sub_248DC0B68(int a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, @"checksum-image-type");
  if (!Value)
  {
    return 4294966296;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    return 4294966296;
  }

  if (CFStringCompare(v3, @"CRC32", 0) == kCFCompareEqualTo || CFStringCompare(v3, @"MD5", 0) == kCFCompareEqualTo || CFStringCompare(v3, @"SHA1", 0) == kCFCompareEqualTo || CFStringCompare(v3, @"SHA256", 0) == kCFCompareEqualTo)
  {
    return 1000;
  }

  v5 = 1000;
  if (CFStringCompare(v3, @"SHA384", 0))
  {
    if (CFStringCompare(v3, @"SHA512", 0))
    {
      return 4294966296;
    }

    else
    {
      return 1000;
    }
  }

  return v5;
}

uint64_t sub_248DC0C64(int a1, CFDictionaryRef theDict, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"checksum-image-type");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFStringGetTypeID())
        {
          if (CFStringCompare(v4, @"CRC32", 0) == kCFCompareEqualTo)
          {
            operator new();
          }

          if (CFStringCompare(v4, @"MD5", 0) == kCFCompareEqualTo)
          {
            operator new();
          }

          if (CFStringCompare(v4, @"SHA1", 0) == kCFCompareEqualTo)
          {
            operator new();
          }

          if (CFStringCompare(v4, @"SHA256", 0) == kCFCompareEqualTo)
          {
            operator new();
          }

          if (CFStringCompare(v4, @"SHA384", 0) == kCFCompareEqualTo)
          {
            operator new();
          }

          if (CFStringCompare(v4, @"SHA512", 0) == kCFCompareEqualTo)
          {
            operator new();
          }
        }
      }
    }
  }

  return 22;
}

void sub_248DC0EA4(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = 0;
  (*(*a1 + 344))(a1, 0.0);
  (*(*a2 + 48))(a2);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v5 = 0u;
  v7 = a2;
  DIDiskImageObjectRetain_0(a2);
  v6 = a1;
  DIDiskImageObjectRetain_0(a1);
  *&v15 = (*(*a1 + 96))(a1);
  pthread_mutex_init(&v9[1], 0);
  pthread_cond_init((v13 + 8), 0);
  pthread_mutex_init((&v13[3] + 8), 0);
  pthread_cond_init((&v13[7] + 8), 0);
  BYTE8(v14) = 0;
  *(&v15 + 1) = 0;
  *&v16[0] = 0;
  pthread_mutex_init((v16 + 8), 0);
  operator new();
}

uint64_t sub_248DC15AC(void *a1)
{
  v14 = 0;
  v15 = 0;
  pthread_mutex_lock((a1 + 7));
  --*(a1 + 10);
  pthread_cond_broadcast((a1 + 15));
  pthread_mutex_unlock((a1 + 7));
  v2 = (*(**a1 + 32))(*a1, &v15, 0);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v15 == 0;
  }

  if (!v3)
  {
    do
    {
      pthread_mutex_lock((a1 + 39));
      v6 = a1[38];
      v7 = a1[36];
      if (v6 + 2048 < v7)
      {
        v7 = v6 + 2048;
      }

      a1[38] = v7;
      pthread_mutex_unlock((a1 + 39));
      v8 = a1[36];
      if (v8 <= v6)
      {
        goto LABEL_7;
      }

      if (v6 + 2048 <= v8)
      {
        v9 = 2048;
      }

      else
      {
        v9 = v8 - v6;
      }

      v10 = (*(*a1[2] + 48))(a1[2], v6, v9, &v14, v15 + 13);
      if (v10)
      {
        v4 = v10;
        goto LABEL_24;
      }

      if (v14 != v9)
      {
        v4 = 5;
        goto LABEL_24;
      }

      v11 = v15;
      v15[11] = v6;
      v11[12] = v9;
      (*(*a1[1] + 24))(a1[1]);
      v15 = 0;
      v2 = (*(**a1 + 32))(*a1, &v15, 0);
      if (v2)
      {
        v12 = 1;
      }

      else
      {
        v12 = v15 == 0;
      }
    }

    while (!v12);
  }

  v4 = v2;
  if (!v2)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_25;
  }

LABEL_24:
  pthread_mutex_lock((a1 + 21));
  *(a1 + 280) = 1;
  pthread_cond_broadcast((a1 + 29));
  pthread_mutex_unlock((a1 + 21));
  v5 = v4;
LABEL_25:
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v5;
}

uint64_t sub_248DC17C0(uint64_t a1)
{
  v11 = 0;
  pthread_mutex_lock((a1 + 56));
  --*(a1 + 40);
  pthread_cond_broadcast((a1 + 120));
  pthread_mutex_unlock((a1 + 56));
  v2 = 0;
  v3 = *(a1 + 288);
  v10 = *(a1 + 296);
  if (v10 < v3)
  {
    do
    {
      LODWORD(v2) = (*(**(a1 + 8) + 40))(*(a1 + 8), sub_248DC1954, &v10, &v11);
      v4 = v11;
      if (v2)
      {
        v5 = 1;
      }

      else
      {
        v5 = v11 == 0;
      }

      if (v5)
      {
        break;
      }

      v6 = *(a1 + 296) + 2048;
      if (v6 >= *(a1 + 288))
      {
        v6 = *(a1 + 288);
      }

      *(a1 + 296) = v6;
      (*(**(a1 + 24) + 56))(*(a1 + 24), v4 + 13, v4[12] << 9);
      v7 = v11;
      v11[11] = 0;
      v7[12] = 0;
      (*(**a1 + 16))();
      v8 = *(a1 + 288);
      v10 = *(a1 + 296);
      v11 = 0;
    }

    while (v10 < v8);
    v2 = v2;
  }

  pthread_mutex_lock((a1 + 168));
  *(a1 + 280) = 1;
  pthread_cond_broadcast((a1 + 232));
  pthread_mutex_unlock((a1 + 168));
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v2;
}

void sub_248DC1968(uint64_t a1)
{
  sub_248DAB68C(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DC19A0(int a1, CFDictionaryRef theDict, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"checksum-image-type");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFStringGetTypeID())
        {
          if (CFStringCompare(v4, @"UDIF-CRC32", 0) == kCFCompareEqualTo)
          {
            operator new();
          }

          if (CFStringCompare(v4, @"UDIF-MD5", 0) == kCFCompareEqualTo)
          {
            operator new();
          }

          if (CFStringCompare(v4, @"IPOD", 0) == kCFCompareEqualTo)
          {
            operator new();
          }
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 22;
}

void sub_248DC203C(void ***a1, int a2)
{
  if (a1)
  {
    if (a2 >= 1)
    {
      v3 = a2;
      v4 = a1;
      do
      {
        sub_248DD4E4C(*v4);
        *v4++ = 0;
        --v3;
      }

      while (v3);
    }

    free(a1);
  }
}

BOOL sub_248DC20A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!(bswap32(*(a2 + 12)) * (a4 >> 9)))
  {
    return 1;
  }

  v4 = (a4 >> 9) * bswap32(*(a2 + 8));
  v5 = sub_248DB44F4(a1);
  return v4 >= (*(*v5 + 96))(v5);
}

uint64_t sub_248DC211C(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (!a3)
  {
    return 4294966296;
  }

  v3 = sub_248DAEF20(a3, @"convert-image-type", 0);
  result = 4294966296;
  if (v3 > 1430542926)
  {
    if (v3 != 1430542927 && v3 != 1431062095)
    {
      v5 = 1430667849;
LABEL_10:
      if (v3 != v5)
      {
        return result;
      }
    }
  }

  else if (v3 != 1229999940 && v3 != 1430537039)
  {
    v5 = 1430540879;
    goto LABEL_10;
  }

  return 100;
}

uint64_t sub_248DC21CC(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v3 = 4294966296;
  if (a3)
  {
    if (sub_248DAEF20(a3, @"convert-image-type", 0) == 1430541136)
    {
      return 100;
    }

    else
    {
      return 4294966296;
    }
  }

  return v3;
}

uint64_t sub_248DC221C(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v3 = 4294966296;
  if (a3)
  {
    v4 = sub_248DAEF20(a3, @"convert-image-type", 0);
    if (v4 == 1430540887 || v4 == 1430541391)
    {
      return 100;
    }

    else
    {
      return 4294966296;
    }
  }

  return v3;
}

uint64_t sub_248DC2274(uint64_t a1, char *a2, const __CFDictionary *a3, void *a4)
{
  valuePtr = 8;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v18 = 0;
  cf = 0;
  v17 = -1;
  if (!a2)
  {
    goto LABEL_7;
  }

  DIDiskImageObjectRetain_0(a2);
  if (!a3)
  {
    goto LABEL_7;
  }

  v7 = sub_248DAEF20(a3, @"convert-image-type", 0);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = sub_248DA0728(a3, @"convert-add-partition-map", 0);
  v10 = CFDictionaryGetValue(a3, @"convert-alignment");
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
  }

  if (v9)
  {
LABEL_7:
    v11 = 22;
    goto LABEL_8;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(a3, @"udif-chunk-size", &value))
  {
    goto LABEL_18;
  }

  if (!sub_248DB7EC4(value, kCFNumberSInt64Type, &v17))
  {
    v11 = 999;
    goto LABEL_8;
  }

  v13 = v17;
  if (v17 < 0)
  {
LABEL_18:
    v13 = 2048;
    v17 = 2048;
  }

  if (v8 == 1430541391)
  {
    v14 = 5;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_248DD31F4(a2, v14, 1, v13, &v18, &v21, &v20, &cf, 1);
  if (!v15)
  {
    sub_248DCA9B0();
  }

  v11 = v15;
  if (v21)
  {
    sub_248DC203C(v21, v20);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (a2)
  {
    DIDiskImageObjectRelease(a2);
  }

  *a4 = v22;
  return v11;
}

__CFDictionary *sub_248DC24EC(uint64_t a1)
{
  v2 = sub_248DC2838(a1);
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(v2, @"Size Information", Mutable);
    v5 = DIGetBundleRef();
    v6 = sub_248DD4D90(v5, @"raw read/write", @"raw read/write");
    CFDictionaryAddValue(v2, @"Format Description", v6);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = (*(*a1 + 88))(a1);
    v8 = sub_248DA67E0(v7);
    CFDictionaryAddValue(v2, @"Format", v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v17 = 0;
    valuePtr = (*(*a1 + 96))(a1) << 9;
    v9 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"Total Bytes", v9);
    if (v9)
    {
      CFRelease(v9);
    }

    valuePtr = 0;
    v10 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"Total Empty Bytes", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    valuePtr = (*(*a1 + 96))(a1) << 9;
    v11 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"Total Non-Empty Bytes", v11);
    if (v11)
    {
      CFRelease(v11);
    }

    valuePtr = (*(*a1 + 96))(a1) << 9;
    v12 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"Compressed Bytes", v12);
    if (v12)
    {
      CFRelease(v12);
    }

    v17 = 0x3FF0000000000000;
    v13 = CFNumberCreate(v3, kCFNumberDoubleType, &v17);
    CFDictionaryAddValue(Mutable, @"Compressed Ratio", v13);
    if (v13)
    {
      CFRelease(v13);
    }

    valuePtr = (*(*a1 + 96))(a1);
    v14 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"Sector Count", v14);
    if (v14)
    {
      CFRelease(v14);
    }

    Value = CFDictionaryGetValue(v2, @"Properties");
    CFDictionaryAddValue(Value, @"Compressed", @"no");
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v2;
}

__CFDictionary *sub_248DC2838(uint64_t a1)
{
  v2 = (*(*a1 + 296))(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = MEMORY[0x277CBF138];
    v6 = MEMORY[0x277CBF150];
    v7 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = CFDictionaryCreateMutable(v3, 0, v5, v6);
    CFDictionaryAddValue(Mutable, @"Backing Store Information", v7);
    theDict = v8;
    v37 = Mutable;
    CFDictionaryAddValue(Mutable, @"Properties", v8);
    CFRelease(v7);
    v34 = (*(*a1 + 384))(a1);
    v35 = (*(*a1 + 200))(a1);
    if (v2)
    {
      while (1)
      {
        v9 = (*(*v2 + 16))(v2);
        v10 = CFStringCreateWithCString(v3, v9, 0x8000100u);
        CFDictionaryAddValue(v7, @"Class Name", v10);
        if (v10)
        {
          CFRelease(v10);
        }

        v11 = (*(*v2 + 176))(v2);
        v12 = CFURLGetString(v11);
        CFDictionaryAddValue(v7, @"URL", v12);
        v13 = (*(*v2 + 192))(v2);
        CFDictionaryAddValue(v7, @"Name", v13);
        if ((*(*v2 + 24))(v2, @"encryption-class"))
        {
          v14 = (*(*v2 + 24))(v2, @"encryption-class");
          CFDictionaryAddValue(v7, @"Encryption", v14);
        }

        v15 = (*(*v2 + 496))(v2);
        if (!v15)
        {
          break;
        }

        v2 = v15;
        v16 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionaryAddValue(v7, @"Backing Store Information", v16);
        CFRelease(v16);
        v7 = v16;
      }
    }

    v17 = (*(*a1 + 304))(a1);
    v18 = v17;
    if (v17)
    {
      CFRelease(v17);
    }

    v19 = *MEMORY[0x277CBED28];
    v20 = *MEMORY[0x277CBED10];
    if (v34)
    {
      v21 = *MEMORY[0x277CBED28];
    }

    else
    {
      v21 = *MEMORY[0x277CBED10];
    }

    CFDictionaryAddValue(theDict, @"Encrypted", v21);
    if ((*(*a1 + 400))(a1))
    {
      v22 = v19;
    }

    else
    {
      v22 = v20;
    }

    CFDictionaryAddValue(theDict, @"Partitioned", v22);
    if (v18)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    CFDictionaryAddValue(theDict, @"Software License Agreement", v23);
    if ((*(*a1 + 272))(a1))
    {
      v24 = v19;
    }

    else
    {
      v24 = v20;
    }

    CFDictionaryAddValue(theDict, @"Checksummed", v24);
    if (v35)
    {
      v25 = v19;
    }

    else
    {
      v25 = v20;
    }

    CFDictionaryAddValue(theDict, @"Kernel Compatible", v25);
    v26 = (*(*a1 + 176))(a1);
    v27 = (*(*v26 + 104))(v26);
    Mutable = v37;
    CFDictionaryAddValue(v37, @"Checksum Type", v27);
    v28 = (*(*v26 + 120))(v26);
    CFDictionaryAddValue(v37, @"Checksum Value", v28);
    sub_248DA1714(v26);
    v29 = (*(*a1 + 16))(a1);
    v30 = CFStringCreateWithCString(v3, v29, 0x8000100u);
    CFDictionaryAddValue(v37, @"Class Name", v30);
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = sub_248DB36D8();
    if (v31)
    {
      v32 = v31;
      CFDictionaryAddValue(v37, @"partitions", v31);
      CFRelease(v32);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  return Mutable;
}

BOOL sub_248DC2E50()
{
  v0 = sub_248DB36D8();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_248DB31F4(v0, @"partition-scheme");
  if (v2)
  {
    v3 = CFStringCompare(v2, @"Apple", 0) == kCFCompareEqualTo;
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

uint64_t sub_248DC2EE4(uint64_t a1)
{
  v2 = (*(*a1 + 96))(a1);
  v3 = (*(*a1 + 296))(a1);
  if (v3)
  {
    v5 = 0;
    if (!(*(*v3 + 304))(v3, &v5))
    {
      v2 = v5 >> 9;
      if (v2 < (*(*a1 + 96))(a1))
      {
        return (*(*a1 + 96))(a1);
      }
    }
  }

  return v2;
}

uint64_t sub_248DC3008(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 200);
  if ((statfs(*(a1 + 296), &v6) & 0x80000000) == 0)
  {
    if (v6.f_bavail == -1)
    {
      result = 0;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = 0;
      v3 += v6.f_bavail * v6.f_bsize;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  result = *__error();
  if (a2)
  {
LABEL_6:
    *a2 = v3;
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DC30BC(const __CFURL *a1, statfs *a2)
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
  v5 = statfs(v3, a2);
  if ((v5 & 0x80000000) != 0)
  {
    v5 = *__error();
  }

  free(v4);
  return v5;
}

__CFDictionary *sub_248DC3118(uint64_t a1)
{
  v2 = sub_248DC2838(a1);
  if (!v2)
  {
    return v2;
  }

  v3 = *MEMORY[0x277CBECE8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v2, @"Size Information", theDict);
  v72 = 0;
  v4 = *(**(a1 + 904) + 200);
  v5 = *(*(*a1 + 296))(a1);
  (*(v5 + 296))();
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = **(a1 + 904) + 204;
    while (1)
    {
      v18 = *v17;
      v19 = *(v17 + 32);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v17 + 16);
      }

      if (v19)
      {
        v21 = *(v17 + 16);
      }

      else
      {
        v21 = 0;
      }

      if (v18 > -2147483642)
      {
        if ((v18 + 1) >= 3)
        {
          if (v18 == -2147483641)
          {
            v16 = 1;
            v13 = 1;
          }

          else
          {
            if (v18 != -2147483640)
            {
LABEL_21:
              if (v18 < 0)
              {
                v16 = 1;
              }

              goto LABEL_24;
            }

            v16 = 1;
            v12 = 1;
          }
        }
      }

      else
      {
        switch(v18)
        {
          case -2147483644:
            v16 = 1;
            v11 = 1;
            break;
          case -2147483643:
            v16 = 1;
            v15 = 1;
            break;
          case -2147483642:
            v16 = 1;
            v14 = 1;
            break;
          default:
            goto LABEL_21;
        }
      }

LABEL_24:
      v6 += v19;
      v8 += *(v17 + 16);
      v7 += v19;
      v10 += v20;
      v9 += v21;
      v17 += 40;
      if (!--v4)
      {
        v22 = v8 << 9;
        v23 = v10 << 9;
        v68 = v16 == 0;
        v67 = v15 == 0;
        v65 = v12 == 0;
        v66 = v13 == 0;
        v64 = v14 == 0;
        v24 = v11 == 0;
        goto LABEL_27;
      }
    }
  }

  v23 = 0;
  v9 = 0;
  v22 = 0;
  v7 = 0;
  v6 = 0;
  v24 = 1;
  v67 = 1;
  v68 = 1;
  v64 = 1;
  v65 = 1;
  v66 = 1;
LABEL_27:
  v63 = v24;
  v70 = 0.0;
  valuePtr = v72 - v6;
  v25 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(theDict, @"CUDIFEncoding-bytes-wasted", v25);
  if (v25)
  {
    CFRelease(v25);
  }

  valuePtr = v72;
  v26 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(theDict, @"CUDIFEncoding-bytes-total", v26);
  if (v26)
  {
    CFRelease(v26);
  }

  valuePtr = v6;
  v27 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(theDict, @"CUDIFEncoding-bytes-in-use", v27);
  if (v27)
  {
    CFRelease(v27);
  }

  valuePtr = v22;
  v28 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(theDict, @"Total Bytes", v28);
  if (v28)
  {
    CFRelease(v28);
  }

  valuePtr = v23;
  v29 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(theDict, @"Total Empty Bytes", v29);
  if (v29)
  {
    CFRelease(v29);
  }

  valuePtr = v9 << 9;
  v30 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(theDict, @"Total Non-Empty Bytes", v30);
  v31 = (a1 + 904);
  if (v30)
  {
    CFRelease(v30);
  }

  valuePtr = v7;
  v32 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
  CFDictionaryAddValue(theDict, @"Compressed Bytes", v32);
  if (v32)
  {
    CFRelease(v32);
  }

  v70 = (v7 >> 9) / v9;
  v33 = CFNumberCreate(v3, kCFNumberDoubleType, &v70);
  CFDictionaryAddValue(theDict, @"Compressed Ratio", v33);
  if (v33)
  {
    CFRelease(v33);
  }

  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v2, @"Partition Information", Mutable);
  valuePtr = *(a1 + 914);
  if (*(a1 + 912) >= 1)
  {
    v35 = 0;
    v36 = MEMORY[0x277CBF150];
    while (1)
    {
      v37 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], v36);
      v38 = CFNumberCreate(v3, kCFNumberLongType, &valuePtr);
      if (v38)
      {
        v39 = v38;
        CFDictionaryAddValue(v37, @"Partition Number", v38);
        CFRelease(v39);
      }

      if (valuePtr >= -2)
      {
        v41 = v31;
        if (valuePtr == -2)
        {
          goto LABEL_52;
        }

        v42 = valuePtr - *(a1 + 914);
        if (v42 < *(a1 + 912))
        {
          break;
        }
      }

      v40 = 0;
LABEL_62:
      v52 = CFStringCreateWithFormat(0, 0, @"%ld", valuePtr);
      CFDictionaryAddValue(Mutable, v52, v37);
      if (v52)
      {
        CFRelease(v52);
      }

      if (v40)
      {
        DIDiskImageObjectRelease(v40);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      ++v35;
      ++valuePtr;
      if (v35 >= *(a1 + 912))
      {
        goto LABEL_72;
      }
    }

    v41 = (*(a1 + 928) + 8 * v42);
LABEL_52:
    v43 = *v41;
    if (!*v41)
    {
      v40 = 0;
LABEL_61:
      v31 = (a1 + 904);
      goto LABEL_62;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 936), v35);
    if (ValueAtIndex)
    {
      v45 = ValueAtIndex;
      CFRetain(ValueAtIndex);
    }

    else
    {
      v46 = valuePtr;
      v47 = DIGetBundleRef();
      if (v46 == -1)
      {
        v45 = sub_248DD4D90(v47, @"Driver Descriptor Map", @"Driver Descriptor Map");
        if (!v45)
        {
LABEL_59:
          v49 = sub_248DA9678((*v43 + 64));
          v40 = v49;
          if (v49)
          {
            v50 = (*(*v49 + 104))(v49);
            CFDictionaryAddValue(v37, @"Checksum Type", v50);
            v51 = (*(*v40 + 120))(v40);
            CFDictionaryAddValue(v37, @"Checksum Value", v51);
          }

          goto LABEL_61;
        }
      }

      else
      {
        v48 = sub_248DD4D90(v47, @"partition %d", @"partition %d");
        v45 = CFStringCreateWithFormat(v3, 0, v48, valuePtr);
        CFRelease(v48);
        if (!v45)
        {
          goto LABEL_59;
        }
      }
    }

    CFDictionaryAddValue(v37, @"Name", v45);
    CFRelease(v45);
    goto LABEL_59;
  }

LABEL_72:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v53 = DIGetBundleRef();
  if (!v68)
  {
    v56 = theDict;
    if (v67)
    {
      if (v66)
      {
        if (v65)
        {
          if (v64)
          {
            if (v63)
            {
              v62 = @"UDIF read-only compressed";
            }

            else
            {
              v62 = @"UDIF read-only compressed (ADC)";
            }

            v54 = sub_248DD4D90(v53, v62, v62);
            CFDictionaryAddValue(v2, @"Format Description", v54);
            v55 = @"UDCO";
            if (!v54)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v54 = sub_248DD4D90(v53, @"UDIF read-only compressed (bzip2)", @"UDIF read-only compressed (bzip2)");
            CFDictionaryAddValue(v2, @"Format Description", v54);
            v55 = @"UDBZ";
            if (!v54)
            {
              goto LABEL_77;
            }
          }
        }

        else
        {
          v54 = sub_248DD4D90(v53, @"UDIF read-only compressed (lzma)", @"UDIF read-only compressed (lzma)");
          CFDictionaryAddValue(v2, @"Format Description", v54);
          v55 = @"ULMO";
          if (!v54)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        v54 = sub_248DD4D90(v53, @"UDIF read-only compressed (lzfse)", @"UDIF read-only compressed (lzfse)");
        CFDictionaryAddValue(v2, @"Format Description", v54);
        v55 = @"ULFO";
        if (!v54)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
      v54 = sub_248DD4D90(v53, @"UDIF read-only compressed (zlib)", @"UDIF read-only compressed (zlib)");
      CFDictionaryAddValue(v2, @"Format Description", v54);
      v55 = @"UDZO";
      if (!v54)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_76;
  }

  v54 = sub_248DD4D90(v53, @"UDIF read-only", @"UDIF read-only");
  CFDictionaryAddValue(v2, @"Format Description", v54);
  v55 = @"UDRO";
  v56 = theDict;
  if (v54)
  {
LABEL_76:
    CFRelease(v54);
  }

LABEL_77:
  CFDictionaryAddValue(v2, @"Format", v55);
  v72 = *(**v31 + 16);
  v57 = CFNumberCreate(v3, kCFNumberLongLongType, &v72);
  CFDictionaryAddValue(v56, @"Sector Count", v57);
  if (v57)
  {
    CFRelease(v57);
  }

  Value = CFDictionaryGetValue(v2, @"Properties");
  v59 = MEMORY[0x277CBED28];
  if (v68)
  {
    v59 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Value, @"Compressed", *v59);
  if (v56)
  {
    CFRelease(v56);
  }

  v60 = (*(*a1 + 24))(a1, @"udif-ordered-chunks");
  if (v60)
  {
    CFDictionaryAddValue(v2, @"udif-ordered-chunks", v60);
  }

  return v2;
}

uint64_t sub_248DC3B2C(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

uint64_t sub_248DC3B5C(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 192))();
  }

  return result;
}

BOOL sub_248DC3B98(char **a1)
{
  v1 = a1[113];
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = **a1;
  if (__dynamic_cast(a1, &unk_285BCAF68, &unk_285BCB238, 0))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v6 = 0;
  v7 = v2 + 204;
  v8 = 1;
  do
  {
    if (*v7 < -2147483639 || *v7 == 1)
    {
      result = *(v7 + 24) >= v6;
      v6 = *(v7 + 24);
    }

    else
    {
      result = 1;
    }

    if (v8 >= v3)
    {
      break;
    }

    v7 += 40;
    ++v8;
  }

  while (result);
  return result;
}

void *sub_248DC3C6C(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BC9C68;
  v2[16] = 16;
  a1[15] = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  a1[17] = MEMORY[0x277D85B90];
  a1[18] = MEMORY[0x277D85B98];
  a1[19] = MEMORY[0x277D85B88];
  return a1;
}

double sub_248DC3D38(uint64_t a1)
{
  v1 = sub_248DA81B0(a1);
  *v1 = &unk_285BCCF28;
  result = 0.0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  return result;
}

void *sub_248DC3DB4(void *result, void *a2, unsigned int a3)
{
  if (result[14])
  {
    v3 = a3;
    v5 = result;
    if ((*(*result + 88))(result) < a3)
    {
      v3 = (*(*v5 + 88))(v5);
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

    v8 = v5[15];

    return memcpy(a2, v8, v7);
  }

  return result;
}

void sub_248DC3E78(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DC3EB0(void *a1)
{
  *a1 = &unk_285BCCF28;
  v2 = a1[14];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    free(v3);
  }

  return sub_248DA8330(a1);
}

BOOL sub_248DC3F48(uint64_t a1)
{
  v2 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v6 = 0;
  v4 = !(*(*a1 + 48))(a1, 2, 1, &v6, v2) && (sub_248DC401C(v3), *v3 == 18475) && (v3[20] & 0x1FF) == 0 && v3[1] > 3u;
  free(v3);
  return v4;
}

double sub_248DC401C(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32q_s8(*(a1 + 2));
  *(a1 + 10) = vrev32q_s8(*(a1 + 10));
  *(a1 + 18) = vrev32q_s8(*(a1 + 18));
  *(a1 + 26) = vrev32q_s8(*(a1 + 26));
  *(a1 + 17) = bswap32(*(a1 + 17));
  *(a1 + 9) = bswap64(*(a1 + 9));
  sub_248DC40D8((a1 + 56));
  sub_248DC40D8((a1 + 96));
  sub_248DC40D8((a1 + 136));
  sub_248DC40D8((a1 + 176));

  *&result = sub_248DC40D8((a1 + 216)).u64[0];
  return result;
}

int8x16_t sub_248DC40D8(uint64_t a1)
{
  v1 = 0;
  *a1 = bswap64(*a1);
  *(a1 + 8) = vrev32_s8(*(a1 + 8));
  v2 = a1 + 16;
  do
  {
    v3 = (v2 + v1);
    result = vrev32q_s8(*(v2 + v1 + 16));
    *v3 = vrev32q_s8(*(v2 + v1));
    v3[1] = result;
    v1 += 32;
  }

  while (v1 != 64);
  return result;
}

uint64_t sub_248DC413C(uint64_t a1, unsigned int a2)
{
  v4 = sub_248DAB178(a1) + 104;
  sub_248DC0718(v4);
  *a1 = &unk_285BCA060;
  *(a1 + 104) = &unk_285BCA0A8;
  sub_248DC0774(v4, a2);
  return a1;
}

void sub_248DC41C0(_Unwind_Exception *a1)
{
  sub_248DC0A1C(v2);
  sub_248DA799C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_248DC41E4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned int a5)
{
  v25 = 1;
  *(a1 + 120) = 0;
  *(a1 + 112) = a2;
  *(a1 + 144) = 8 * a5;
  if (!a5)
  {
    return 0;
  }

  v8 = 0;
  v26 = 0;
  v27 = 0;
  v9 = &a4[a5];
  v10 = a4;
  while (1)
  {
    sub_248DC43A8(a1, &v27, &v26, &v27 + 1, v8, &v25);
    v11 = v27;
    if (v27 >= 1)
    {
      break;
    }

    v11 = SHIWORD(v27);
    sub_248DC47D4(a1 + 104, v10, SHIWORD(v27));
    v10 += SHIWORD(v27);
LABEL_33:
    v8 += v11;
    if (v8 >= a5)
    {
      return 0;
    }
  }

  result = 1000;
  if (v10 >= a4)
  {
    v13 = &v10[-v26];
    v14 = v13 < a4 || &v10[v27] > v9;
    if (!v14 && v13 <= a4)
    {
      v16 = v27;
      while (v16 <= 3u)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            if (v16 != 3)
            {
LABEL_23:
              v17 = *v13++;
              *v10++ = v17;
              goto LABEL_24;
            }

LABEL_28:
            v22 = *v13++;
            *v10++ = v22;
          }

          v23 = *v13++;
          *v10++ = v23;
        }

        v24 = *v13++;
        *v10++ = v24;
        LOWORD(v27) = v27 - 8;
        v16 = v27;
        if (v27 <= 0)
        {
          goto LABEL_33;
        }
      }

      if (v16 > 5u)
      {
        if (v16 != 6)
        {
          if (v16 != 7)
          {
            goto LABEL_23;
          }

LABEL_24:
          v18 = *v13++;
          *v10++ = v18;
        }

        v19 = *v13++;
        *v10++ = v19;
      }

      else if (v16 == 4)
      {
LABEL_27:
        v21 = *v13++;
        *v10++ = v21;
        goto LABEL_28;
      }

      v20 = *v13++;
      *v10++ = v20;
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_248DC43A8(uint64_t a1, _WORD *a2, _DWORD *a3, _WORD *a4, unsigned int a5, BOOL *a6)
{
  v12 = sub_248DC4454(a1 + 104);
  *a2 = v12;
  if (v12 <= 0)
  {
    if (*a6)
    {
      result = sub_248DC470C(a1 + 104);
      *a4 = result;
      *a6 = result > 62;
      return result;
    }

    goto LABEL_6;
  }

  if (!*a6)
  {
LABEL_6:
    v13 = v12 + 3;
    goto LABEL_7;
  }

  v13 = v12 + 2;
LABEL_7:
  *a2 = v13;
  *a6 = 1;
  result = sub_248DC4864(a1 + 104, a5);
  *a3 = result;
  return result;
}

uint64_t sub_248DC4454(uint64_t a1)
{
  v2 = sub_248DC45FC(a1, 0xAu);
  if (v2 <= 4)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (sub_248DC4670(a1, 1))
        {
          return (sub_248DC4670(a1, 2) + 7);
        }

        else
        {
          return (sub_248DC4670(a1, 1) + 5);
        }
      }

      else if (v2 == 3)
      {
        return (sub_248DC4670(a1, 3) + 11);
      }

      else
      {
        return (sub_248DC4670(a1, 3) + 19);
      }
    }

    if (!v2)
    {
      return sub_248DC4670(a1, 1);
    }

    if (v2 == 1)
    {
      if (sub_248DC4670(a1, 1))
      {
        return (sub_248DC4670(a1, 1) + 3);
      }

      else
      {
        return 2;
      }
    }

    return (sub_248DC4670(a1, 10) + 1019);
  }

  if (v2 > 6)
  {
    switch(v2)
    {
      case 7:
        return (sub_248DC4670(a1, 7) + 123);
      case 8:
        return (sub_248DC4670(a1, 8) + 251);
      case 9:
        return (sub_248DC4670(a1, 9) + 507);
    }

    return (sub_248DC4670(a1, 10) + 1019);
  }

  if (v2 == 5)
  {
    return (sub_248DC4670(a1, 5) + 27);
  }

  else
  {
    return (sub_248DC4670(a1, 6) + 59);
  }
}

uint64_t sub_248DC45FC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = 0x80u >> (v2 & 7);
    v4 = (*(a1 + 8) + (v2 >> 3));
    v5 = 1;
    while (1)
    {
      v6 = v5;
      if ((*v4 & v3) == 0)
      {
        break;
      }

      if (v3 >= 2)
      {
        v3 >>= 1;
      }

      else
      {
        ++v4;
        v3 = 128;
      }

      ++v5;
      if (v6 >= a2)
      {
        v7 = v6;
        goto LABEL_11;
      }
    }

    v7 = (v5 - 1);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

LABEL_11:
  *(a1 + 16) = v6 + v2;
  return v7;
}

uint64_t sub_248DC4670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  *(a1 + 16) = v2 + a2;
  if ((v2 + a2) > *(a1 + 40))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  return (bswap32(*(*(a1 + 8) + (v2 >> 3))) >> (32 - a2 - (v2 & 7))) & (0xFFFFFFFF >> -a2);
}

void sub_248DC4700(_Unwind_Exception *a1, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_248DC470C(uint64_t a1)
{
  v2 = 1;
  if (sub_248DC4670(a1, 1))
  {
    v2 = 2;
    v3 = sub_248DC4670(a1, 2);
    if (v3)
    {
      if (v3 == 2)
      {
        return sub_248DC4670(a1, 2) + 4;
      }

      else if (v3 == 1)
      {
        return 3;
      }

      else
      {
        v4 = sub_248DC4670(a1, 4);
        if (v4 > 7)
        {
          if (v4 > 0xB)
          {
            return sub_248DC4670(a1, 3) + ((8 * v4) & 0x7FFFF) - 64;
          }

          else
          {
            return sub_248DC4670(a1, 2) + ((4 * v4) & 0x3FFFF) - 16;
          }
        }

        else
        {
          return (v4 + 8);
        }
      }
    }
  }

  return v2;
}

uint64_t sub_248DC47D4(uint64_t result, _BYTE *a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = v4 + 8 * a3;
  *(result + 16) = v5;
  if (v5 > *(result + 40))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (a3)
  {
    v6 = (v3 + (v4 >> 3));
    do
    {
      v7 = *v6;
      v6 = (v6 + 1);
      *a2++ = bswap32(v7) >> 16 >> (8 - (v4 & 7));
      --a3;
    }

    while (a3);
  }

  return result;
}

void sub_248DC4858(_Unwind_Exception *a1, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_248DC4864(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    if (a2 >= 0x15)
    {
      if (a2 >= 0x29)
      {
        if (a2 >= 0x51)
        {
          if (a2 >= 0xA1)
          {
            if (a2 >= 0x2A1)
            {
              if (a2 >= 0x3E9)
              {
                v2 = 7;
                if (a2 >= 0xA81)
                {
                  v4 = *(a1 + 20);
                  if (v4 >= 0x801)
                  {
                    v2 = 8;
                    if (a2 >= 0x1501 && v4 > 0x1000)
                    {
                      v2 = 9;
                      if (a2 >= 0x2A01 && v4 > 0x2000)
                      {
                        v2 = 10;
                        if (a2 >= 0x5401 && v4 > 0x4000)
                        {
                          v2 = 11;
                          if (a2 >= 0xA801 && v4 > 0x8000)
                          {
                            v2 = 12;
                            if (a2 >= 0x11171 && v4 > 0x10000)
                            {
                              if (v4 >= 0x20001 && a2 >= 0x2A001)
                              {
                                v2 = 14;
                              }

                              else
                              {
                                v2 = 13;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v2 = 6;
              }
            }

            else
            {
              v2 = 5;
            }
          }

          else
          {
            v2 = 4;
          }
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return sub_248DC4990(a1, a2, v2);
}

uint64_t sub_248DC4990(uint64_t a1, unsigned int a2, int a3)
{
  if (!sub_248DC4670(a1, 1))
  {
    return sub_248DC4670(a1, a3) + 1;
  }

  if (!sub_248DC4670(a1, 1))
  {
    v6 = 1 << a3;
    return v6 + sub_248DC4670(a1, a3 + 2) + 1;
  }

  v6 = (5 << a3) + 1;
  if ((5 << a3) + 2 >= a2)
  {
    v13 = a1;
    v14 = 1;
  }

  else
  {
    v7 = (5 << a3) + 4;
    if (v7 < a2)
    {
      v8 = (a3 + 4);
      if (v8 >= 3)
      {
        v9 = 4;
        LOWORD(v10) = 3;
        while (1)
        {
          v7 += v9;
          v11 = v7 == 1664 ? 1644 : v7;
          if (v10 == v8 || v11 >= a2)
          {
            break;
          }

          v9 *= 2;
          v10 = (v10 + 1);
          if (v10 > v8)
          {
            return v6 + sub_248DC4670(a1, a3 + 2) + 1;
          }
        }

        v14 = v10;
        v13 = a1;
        return sub_248DC4670(v13, v14) + v6;
      }

      return v6 + sub_248DC4670(a1, a3 + 2) + 1;
    }

    v13 = a1;
    v14 = 2;
  }

  return sub_248DC4670(v13, v14) + v6;
}

void sub_248DC4AB0(uint64_t a1)
{
  sub_248DC0A1C((a1 + 104));
  sub_248DA799C(a1);

  JUMPOUT(0x24C1EBE70);
}

unsigned __int16 *sub_248DC4B00(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  result[1] = bswap32(result[1]) >> 16;
  *(result + 1) = bswap32(*(result + 1));
  result[4] = bswap32(result[4]) >> 16;
  result[5] = bswap32(result[5]) >> 16;
  *(result + 3) = bswap32(*(result + 3));
  v1 = result[8];
  LODWORD(v2) = __rev16(v1);
  if (v2 >= 0x3D)
  {
    v2 = 61;
  }

  else
  {
    v2 = v2;
  }

  result[8] = v2;
  if (v1)
  {
    v3 = result + 12;
    do
    {
      *(v3 - 3) = bswap32(*(v3 - 3));
      *(v3 - 1) = bswap32(*(v3 - 1)) >> 16;
      *v3 = bswap32(*v3) >> 16;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_248DC4BB0(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

int8x16_t sub_248DC4BE0(unsigned int *a1, uint64_t a2)
{
  v2 = bswap32(*a1);
  *a1 = v2;
  if ((a2 - 4) / 0x14uLL < v2)
  {
    v2 = (a2 - 4) / 0x14uLL;
  }

  if (v2)
  {
    v3 = (a1 + 2);
    do
    {
      v3[-1].i32[3] = bswap32(v3[-1].u32[3]);
      result = vrev64q_s8(*v3);
      *v3 = result;
      v3 = (v3 + 20);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_248DC4C34(uint64_t a1)
{
  v1 = vrev32q_s8(*a1);
  *a1 = v1;
  v2 = bswap32(*(a1 + 48));
  *(a1 + 48) = v2;
  v3 = vrev32q_s8(*(a1 + 84));
  *(a1 + 84) = v3;
  v4 = bswap32(*(a1 + 100));
  *(a1 + 100) = v4;
  v5 = vextq_s8(v1, vextq_s8(v1, v3, 0xCuLL), 0xCuLL);
  v5.i32[1] = v2;
  v5.i32[3] = v4;
  if ((vaddvq_s32(vandq_s8(vcgtq_u32(v5, xmmword_248DDE110), xmmword_248DDE120)) & 0xF) != 0)
  {
    return 108;
  }

  else
  {
    return 0;
  }
}

CFDictionaryRef sub_248DC4CA4(uint64_t a1, int a2)
{
  existing = 0;
  cf = 0;
  v23 = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    Copy = 0;
    goto LABEL_19;
  }

  v6 = Mutable;
  v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
  if (v7)
  {
    v8 = (*(*a1 + 280))(a1);
    v9 = v8;
    if (a2)
    {
      v9 = sub_248DC5000(v8);
      if (!v9)
      {
LABEL_10:
        if (CFArrayGetCount(v7))
        {
          CFDictionarySetValue(v6, @"system-entities", v7);
        }

        goto LABEL_12;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      CFRetain(v8);
    }

    v11 = *MEMORY[0x277CD28A0];
    v12 = IOServiceMatching("IOMedia");
    if (!IOServiceGetMatchingServices(v11, v12, &existing))
    {
      if (!IOIteratorIsValid(existing))
      {
        MEMORY[0x24C1EBD00](existing);
      }

      v14 = IOIteratorNext(existing);
      if (v14)
      {
        v15 = v14;
        do
        {
          v16 = IORegistryEntrySearchCFProperty(v15, "IOService", @"backingstore-id", v4, 3u);
          v17 = v16;
          if (a2)
          {
            v18 = sub_248DC5000(v16);
            if (v17)
            {
              CFRelease(v17);
            }
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            if (CFEqual(v9, v18))
            {
              if (sub_248DADC40(v15, &v23))
              {
                CFProperty = 0;
              }

              else
              {
                CFProperty = IORegistryEntryCreateCFProperty(v15, @"Content", v4, 0);
                sub_248DADD14(v23, &cf, 0, 0);
                v20 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v20)
                {
                  v21 = v20;
                  if (v23)
                  {
                    CFDictionarySetValue(v20, @"dev-entry", v23);
                  }

                  if (cf)
                  {
                    CFDictionarySetValue(v21, @"mount-point", cf);
                  }

                  if (CFProperty)
                  {
                    CFDictionarySetValue(v21, @"content-hint", CFProperty);
                  }

                  if (CFDictionaryGetCount(v21))
                  {
                    CFArrayAppendValue(v7, v21);
                  }

                  CFRelease(v21);
                }
              }

              if (v23)
              {
                CFRelease(v23);
                v23 = 0;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (CFProperty)
              {
                CFRelease(CFProperty);
              }
            }

            CFRelease(v18);
          }

          IOObjectRelease(v15);
          v15 = IOIteratorNext(existing);
        }

        while (v15);
      }
    }

    goto LABEL_10;
  }

LABEL_12:
  if (CFDictionaryGetCount(v6))
  {
    Copy = CFDictionaryCreateCopy(v4, v6);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(v6);
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_19:
  if (v23)
  {
    CFRelease(v23);
    v23 = 0;
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  return Copy;
}

__CFSet *sub_248DC5000(const __CFDictionary *a1)
{
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"writeable-components");
    sub_248DC5080(Mutable, Value);
    v4 = CFDictionaryGetValue(a1, @"readonly-components");
    sub_248DC5080(Mutable, v4);
  }

  return Mutable;
}

void sub_248DC5080(__CFSet *a1, CFArrayRef theArray)
{
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          CFSetAddValue(a1, ValueAtIndex);
        }
      }
    }
  }
}

__CFDictionary *sub_248DC50F4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = sub_248DB1994(a1, @"Geometry");
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(Mutable, @"Geometry", v3);
    CFRelease(v4);
  }

  v5 = sub_248DB1994(a1, @"Writable");
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(Mutable, @"Writable", v5);
    CFRelease(v6);
  }

  return Mutable;
}

__CFDictionary *sub_248DC51BC(uint64_t a1)
{
  v1 = (*(*a1 + 296))(a1);
  v2 = (*(*v1 + 192))(v1);
  v3 = sub_248DA081C(v2, 0x8000100u);
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = MEMORY[0x277CBF128];
  v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
  CFDictionarySetValue(Mutable, @"system-entities", v7);
  CFRelease(v7);
  if (*v3 == 114)
  {
    ++v3;
  }

  v8 = CFArrayCreateMutable(v4, 0, v6);
  if (*v3 == 114)
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = v3;
  }

  v10 = sub_248D9F2E4(v9);
  if (v10)
  {
    v11 = v10;
    sub_248DCB288(v10, v8);
    IOObjectRelease(v11);
  }

  if (v8)
  {
    v22 = Mutable;
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      v15 = MEMORY[0x277CBF150];
      do
      {
        theString = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v14);
        v17 = sub_248DB31F4(ValueAtIndex, @"BSD Name");
        v18 = CFStringCreateWithFormat(v4, 0, @"/dev/%@", v17);
        v19 = sub_248DB31F4(ValueAtIndex, @"Content");
        sub_248DADD14(v18, &theString, 0, 0);
        v20 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], v15);
        CFDictionarySetValue(v20, @"dev-entry", v18);
        if (v19 && CFStringGetLength(v19))
        {
          CFDictionarySetValue(v20, @"content-hint", v19);
        }

        if (theString && CFStringGetLength(theString))
        {
          CFDictionarySetValue(v20, @"mount-point", theString);
        }

        CFArrayAppendValue(v7, v20);
        if (v20)
        {
          CFRelease(v20);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        ++v14;
      }

      while (v13 != v14);
    }

    CFRelease(v8);
    return v22;
  }

  return Mutable;
}

uint64_t sub_248DC5480(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = 0;
    *a3 = 0;
    operator new();
  }

  return 22;
}

__CFDictionary *sub_248DC56B0(uint64_t *a1)
{
  v2 = sub_248DC2838(a1);
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(v2, @"Size Information", Mutable);
    v5 = DIGetBundleRef();
    if (v5)
    {
      v6 = sub_248DD4D90(v5, @"sparse", @"sparse");
      CFDictionaryAddValue(v2, @"Format Description", v6);
      if (v6)
      {
        CFRelease(v6);
      }

      CFDictionaryAddValue(v2, @"Format", @"SPRS");
      v22 = 0;
      v18 = 0;
      v7 = (*(*a1 + 96))(a1) << 9;
      valuePtr = v7;
      v8 = sub_248DC59D8(a1[20]);
      v9 = ((*(*a1[20] + 64))(a1[20]) * v8) << 9;
      if (v9 >= v7)
      {
        v9 = v7;
      }

      v20 = v9;
      v19 = v7 - v9;
      v10 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
      CFDictionaryAddValue(Mutable, @"Total Bytes", v10);
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = CFNumberCreate(v3, kCFNumberLongLongType, &v19);
      CFDictionaryAddValue(Mutable, @"Total Empty Bytes", v11);
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = CFNumberCreate(v3, kCFNumberLongLongType, &v20);
      CFDictionaryAddValue(Mutable, @"Total Non-Empty Bytes", v12);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
      CFDictionaryAddValue(Mutable, @"Compressed Bytes", v13);
      if (v13)
      {
        CFRelease(v13);
      }

      v18 = 0x3FF0000000000000;
      v14 = CFNumberCreate(v3, kCFNumberDoubleType, &v18);
      CFDictionaryAddValue(Mutable, @"Compressed Ratio", v14);
      if (v14)
      {
        CFRelease(v14);
      }

      v22 = (*(*a1 + 96))(a1);
      v15 = CFNumberCreate(v3, kCFNumberLongLongType, &v22);
      CFDictionaryAddValue(Mutable, @"Sector Count", v15);
      if (v15)
      {
        CFRelease(v15);
      }

      Value = CFDictionaryGetValue(v2, @"Properties");
      CFDictionaryAddValue(Value, @"Compressed", @"no");
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_248DC59D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*v1++)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_248DC5B6C(uint64_t a1, int a2, CFURLRef *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 && (*a3 = 0, a2 >= 1))
  {
    v6 = *(a1 + 296);
    if (v6)
    {
      strlcpy(__dst, v6, 0x400uLL);
      v7 = &__dst[strlen(*(a1 + 296)) - 1];
      if (v7 > __dst)
      {
        while (*v7 == 47)
        {
          *v7-- = 0;
          if (v7 <= __dst)
          {
LABEL_11:
            v7 = __dst;
            goto LABEL_12;
          }
        }
      }

      if (v7 > __dst)
      {
        while (*v7 != 47)
        {
          if (--v7 <= __dst)
          {
            goto LABEL_11;
          }
        }
      }

LABEL_12:
      *v7 = 0;
      if (!__dst[0])
      {
        strcpy(__dst, ".");
      }

      v8 = opendir(__dst);
      if (v8)
      {
        v9 = v8;
        v10 = a2 + 1;
        do
        {
          v11 = readdir(v9);
          v12 = v11;
          v13 = v10-- != 0;
        }

        while (v13 && v11);
        if (v11)
        {
          strlcat(__dst, "/", 0x400uLL);
          strlcat(__dst, v12->d_name, 0x400uLL);
          v14 = sub_248DC5D04(__dst, a3);
        }

        else
        {
          v14 = 0;
        }

        closedir(v9);
      }

      else
      {
        v14 = 999;
      }
    }

    else
    {
      v14 = 9;
    }
  }

  else
  {
    v14 = 22;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_248DC5D04(char *cStr, CFURLRef *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  if (!cStr)
  {
    return 22;
  }

  if (!*cStr)
  {
    return 22;
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (!v5)
  {
    return 22;
  }

  v6 = v5;
  memset(&v9, 0, sizeof(v9));
  v7 = stat(cStr, &v9) >= 0 && (v9.st_mode & 0x4000) != 0;
  *a2 = CFURLCreateWithFileSystemPath(v4, v6, kCFURLPOSIXPathStyle, v7);
  CFRelease(v6);
  return 0;
}

const void *sub_248DC5DDC(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
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

uint64_t sub_248DC5E1C(void *a1, uint64_t a2)
{
  if (a1[20] == a2)
  {
    return 0;
  }

  v5 = a2 << 9;
  v6 = (*(*a1 + 296))(a1);
  result = (*(*v6 + 312))(v6, v5);
  if (!result)
  {
    a1[20] = a2;
  }

  return result;
}

uint64_t sub_248DC5EEC(void *a1)
{
  v2 = (*(*a1 + 296))(a1);
  v3 = (*(*v2 + 192))(v2);
  v4 = sub_248DA081C(v3, 0x8000100u);
  syslog(6, "compaction requested for %s", v4);
  free(v4);
  (*(*a1 + 32))(a1, @"on IO thread", *MEMORY[0x277CBED28]);
  if ((*(*a1 + 288))(a1))
  {
    v5 = a1[17];
    if (!v5 || !(*(*v5 + 432))(v5))
    {
      operator new();
    }

    syslog(4, "compaction rejected because image is in use");
    return 16;
  }

  else
  {
    syslog(4, "compaction rejected because image is not write-enabled");
    return 1;
  }
}

void *sub_248DC6100(void *a1, uint64_t a2, const void *a3)
{
  *a1 = &unk_285BCCEF8;
  a1[1] = a2;
  DIDiskImageObjectRetain_0(a2);
  v6 = (*(*a2 + 96))(a2);
  a1[6] = 0;
  a1[7] = v6;
  a1[4] = 0;
  a1[5] = 0;
  a1[2] = sub_248DB36D8();
  a1[3] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  return a1;
}

uint64_t sub_248DC61A4(uint64_t a1)
{
  v2 = DIGetBundleRef();
  v3 = sub_248DD4D90(v2, @"Starting to compact\\U2026", @"Starting to compact\\U2026");
  (*(**(a1 + 8) + 336))();
  if (v3)
  {
    CFRelease(v3);
  }

  (*(**(a1 + 8) + 344))(*(a1 + 8), -1.0);
  (*(**(a1 + 8) + 360))();
  result = (*(**(a1 + 8) + 128))(*(a1 + 8), 0);
  if (!result)
  {
    if ((*(**(a1 + 8) + 352))(*(a1 + 8)))
    {
      v5 = 222;
LABEL_6:
      syslog(5, "CDiskImageCompactor::compact: line %d: returning kDI_USERCANCELED", v5);
      return 112;
    }

    v6 = DIGetBundleRef();
    v7 = sub_248DD4D90(v6, @"Reclaiming free space\\U2026", @"Reclaiming free space\\U2026");
    (*(**(a1 + 8) + 336))();
    if (v7)
    {
      CFRelease(v7);
    }

    result = sub_248DC6688(a1);
    if (!result)
    {
      if ((*(**(a1 + 8) + 352))(*(a1 + 8)))
      {
        v5 = 241;
        goto LABEL_6;
      }

      v8 = DIGetBundleRef();
      v9 = sub_248DD4D90(v8, @"Finishing compaction\\U2026", @"Finishing compaction\\U2026");
      (*(**(a1 + 8) + 336))();
      if (v9)
      {
        CFRelease(v9);
      }

      (*(**(a1 + 8) + 344))(*(a1 + 8), -1.0);
      (*(**(a1 + 8) + 360))();
      result = (*(**(a1 + 8) + 136))(*(a1 + 8), 0);
      if (!result)
      {
        v10 = sub_248DC6BBC(*(a1 + 40) << 9);
        v11 = sub_248DC6BBC(*(a1 + 48) << 9);
        v12 = DIGetBundleRef();
        v13 = sub_248DD4D90(v12, @"Reclaimed %1$@ out of %2$@ possible.", @"Reclaimed %1$@ out of %2$@ possible.");
        v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, v13, v10, v11);
        (*(**(a1 + 8) + 336))();
        v15 = sub_248DA081C(v14, 0x8000100u);
        syslog(5, "%s", v15);
        free(v15);
        if (v14)
        {
          CFRelease(v14);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_248DC661C(uint64_t a1, uint64_t a2)
{
  result = sub_248DA9634(a1);
  if (result)
  {
    v5 = sub_248DA9634(a1);

    return v5(3, a1, a2, 0, 0, 0);
  }

  return result;
}

uint64_t sub_248DC6688(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"partitions");
  if (!Value)
  {
    return 22;
  }

  v3 = Value;
  Count = CFArrayGetCount(Value);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v16 = 0;
    valuePtr = 0;
    do
    {
      v15 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
      v8 = CFDictionaryGetValue(ValueAtIndex, @"partition-hint");
      if (CFStringCompare(v8, @"Apple_HFS", 1uLL) == kCFCompareEqualTo || CFStringCompare(v8, @"Apple_HFSX", 1uLL) == kCFCompareEqualTo || CFStringCompare(v8, @"Apple_APFS", 1uLL) == kCFCompareEqualTo || CFStringCompare(v8, @"not partitioned", 1uLL) == kCFCompareEqualTo)
      {
        if ((*(**(a1 + 8) + 352))(*(a1 + 8)))
        {
          return 112;
        }

        v9 = CFDictionaryGetValue(ValueAtIndex, @"partition-start");
        if (v9)
        {
          CFNumberGetValue(v9, kCFNumberLongLongType, &valuePtr);
          v10 = CFDictionaryGetValue(ValueAtIndex, @"partition-length");
          if (v10)
          {
            CFNumberGetValue(v10, kCFNumberLongLongType, &v16);
            v11 = sub_248DB3258(*(a1 + 8), valuePtr, v16, &v15);
            if (v11)
            {
              return v11;
            }

            v12 = sub_248DC68C4(a1, v15, valuePtr);
            if (v15)
            {
              DIDiskImageObjectRelease(v15);
              v15 = 0;
            }

            if (v12)
            {
              return v12;
            }

            v13 = (v16 + valuePtr);
            *(a1 + 32) = v16 + valuePtr;
            (*(**(a1 + 8) + 344))(*(a1 + 8), (v13 * 100.0) / *(a1 + 56));
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return 0;
}

uint64_t sub_248DC68C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 12;
  }

  v8 = Mutable;
  valuePtr = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v9 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"Writable", *MEMORY[0x277CBED28]);
  MKMediaRef = DIMediaKitCreateMKMediaRef(a2, 0, v8, &cf);
  v33 = MKMediaRef;
  CFRelease(v8);
  if (!MKMediaRef)
  {
    v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(v11, @"Record Off Bits", v9);
      v13 = MKCFCreateFSInfo();
      CFRelease(v12);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v33)
      {
LABEL_7:
        if (!v13)
        {
          return v33;
        }

        goto LABEL_33;
      }

      if (v13)
      {
        Value = CFDictionaryGetValue(v13, @"Attributes");
        if (sub_248DA0728(Value, @"Dirty", 0) && !sub_248DA0728(*(a1 + 24), @"allow-compact-busy-filesystem", 0))
        {
          syslog(4, "cannot compact filesystem because it was not unmounted cleanly.");
        }

        else
        {
          v17 = CFDictionaryGetValue(v13, @"Data Runs");
          if (v17)
          {
            v18 = v17;
            Count = CFArrayGetCount(v17);
            if (Count >= 1)
            {
              v20 = Count;
              for (i = 0; i != v20; ++i)
              {
                v30 = 0;
                v31 = 0;
                ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
                if (!ValueAtIndex)
                {
                  break;
                }

                v23 = ValueAtIndex;
                v24 = CFDictionaryGetValue(ValueAtIndex, @"Type");
                if (v24)
                {
                  CFNumberGetValue(v24, kCFNumberSInt16Type, &valuePtr);
                  v25 = CFDictionaryGetValue(v23, @"Origin");
                  if (v25)
                  {
                    CFNumberGetValue(v25, kCFNumberSInt64Type, &v31);
                  }

                  v31 += a3;
                  if (valuePtr <= 1u)
                  {
                    v26 = CFDictionaryGetValue(v23, @"Length");
                    if (v26)
                    {
                      CFNumberGetValue(v26, kCFNumberSInt64Type, &v30);
                    }

                    if (!valuePtr)
                    {
                      v27 = v31;
                      *(a1 + 48) += v30;
                      v33 = (*(**(a1 + 8) + 144))(*(a1 + 8), v27);
                      if (!v33)
                      {
                        *(a1 + 40) += v29;
                      }
                    }
                  }
                }
              }

              goto LABEL_7;
            }

LABEL_33:
            CFRelease(v13);
            return v33;
          }
        }

        v33 = 999;
        goto LABEL_33;
      }

      return 999;
    }

    return 12;
  }

  return v33;
}

CFStringRef sub_248DC6BBC(unint64_t a1)
{
  v1 = vcvtd_n_f64_u64(a1, 0xAuLL);
  v2 = v1 * 0.0009765625;
  v3 = v1 * 0.0009765625 * 0.0009765625;
  v4 = v3 * 0.0009765625;
  if (v3 * 0.0009765625 >= 1.0)
  {
    v6 = *MEMORY[0x277CBECE8];
    if (v4 == floor(v4))
    {
      return CFStringCreateWithFormat(v6, 0, @"%qd TB", v4);
    }

    else
    {
      return CFStringCreateWithFormat(v6, 0, @"%.1f TB", v3 * 0.0009765625);
    }
  }

  else if (v3 >= 1.0)
  {
    v7 = *MEMORY[0x277CBECE8];
    if (v3 == floor(v3))
    {
      return CFStringCreateWithFormat(v7, 0, @"%qd GB", v3);
    }

    else
    {
      return CFStringCreateWithFormat(v7, 0, @"%.1f GB", *&v3);
    }
  }

  else if (v2 >= 1.0)
  {
    v8 = *MEMORY[0x277CBECE8];
    if (v2 == floor(v2))
    {
      return CFStringCreateWithFormat(v8, 0, @"%qd MB", v2);
    }

    else
    {
      return CFStringCreateWithFormat(v8, 0, @"%.1f MB", *&v2);
    }
  }

  else if (v1 >= 1.0)
  {
    v9 = *MEMORY[0x277CBECE8];
    if (v1 == floor(v1))
    {
      return CFStringCreateWithFormat(v9, 0, @"%qd KB", v1);
    }

    else
    {
      return CFStringCreateWithFormat(v9, 0, @"%.1f KB", *&v1);
    }
  }

  else
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%qd bytes", a1);
  }
}

void sub_248DC6D2C(void *a1)
{
  sub_248DC6D64(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DC6D64(void *a1)
{
  *a1 = &unk_285BCCEF8;
  v2 = a1[1];
  if (v2)
  {
    sub_248DA1714(v2);
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

  return a1;
}

const __CFString *sub_248DC6DDC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!a1 || sub_248DD6BE8(a1, v6, 0x400uLL))
  {
    goto LABEL_9;
  }

  v1 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"/dev/%s", v6);
  HasPrefix = CFStringHasPrefix(v1, @"/dev/disk");
  if (v1)
  {
    v3 = HasPrefix == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    CFRelease(v1);
LABEL_9:
    v1 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void *sub_248DC6E90(uint64_t a1)
{
  v1 = sub_248DC6DDC(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *MEMORY[0x277CBECE8];
  v8.length = CFStringGetLength(v1) - 5;
  v8.location = 5;
  v4 = CFStringCreateWithSubstring(v3, v2, v8);
  if (v4)
  {
    v5 = v4;
    v6 = sub_248DB8204(v4);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v2);
  return v6;
}

__CFBundle *DIGetDriverVersion()
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.AppleDiskImageController");
  if (result)
  {

    return CFBundleGetVersionNumber(result);
  }

  return result;
}

__CFBundle *DIGetFrameworkVersion()
{
  result = DIGetBundleRef();
  if (result)
  {

    return CFBundleGetVersionNumber(result);
  }

  return result;
}

BOOL DIIsPotentiallyValidDiskImage(char *a1, int a2)
{
  if (!a1 || !sub_248D9F090())
  {
    return 0;
  }

  v10 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *v9 = 0;
  if (a2)
  {
    v5 = DIResolvePathsToDiskImageWithOptions(a1, 0, Mutable, 7u, 1, &v10, 0);
    v6 = 0;
    v7 = v5 == 0;
    if (!Mutable)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = sub_248DAF250(a1);
  if (v6)
  {
    if (DIHLDiskImageProbeURL())
    {
      goto LABEL_9;
    }

    CFDictionarySetValue(Mutable, @"DIIsPotentiallyValidDiskImage", *MEMORY[0x277CBED28]);
    if (!DIResolveURLToBackingStore(v6, Mutable, 1u, v9, 0))
    {
      if (sub_248DA36DC(*v9, 0) > 0 || sub_248DA2D44(*v9, 0) > 0)
      {
LABEL_9:
        v7 = 1;
        if (!Mutable)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v7 = sub_248DA44D8(*v9, 0) > 0;
      if (!Mutable)
      {
        goto LABEL_14;
      }

LABEL_13:
      CFRelease(Mutable);
      goto LABEL_14;
    }
  }

  v7 = 0;
  if (Mutable)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v6)
  {
    CFRelease(v6);
  }

  if (*v9)
  {
    DIDiskImageObjectRelease(*v9);
    *v9 = 0;
  }

  if (v10)
  {
    DIDiskImageObjectRelease(v10);
  }

  return v7;
}

uint64_t DIResolvePathsToDiskImageWithOptions(char *a1, const char *a2, const __CFDictionary *a3, unsigned int a4, int a5, void *a6, CFTypeRef *a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v14 = 22;
  if (a1 && a6)
  {
    if (!sub_248D9F090())
    {
      return 120;
    }

    v15 = sub_248DAF250(a1);
    if (!v15)
    {
      v14 = 999;
LABEL_27:
      if (a7 && *a7 && !CFStringGetLength(*a7) && *a7)
      {
        CFRelease(*a7);
        *a7 = 0;
      }

      return v14;
    }

    v16 = v15;
    v17 = *MEMORY[0x277CBECE8];
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v19 = MutableCopy;
    v20 = CFStringCreateWithCString(v17, a1, 0x8000100u);
    if (v20)
    {
      CFDictionarySetValue(v19, @"image-path", v20);
      DIAddPermission(v19, a5);
      if (!a2)
      {
        goto LABEL_18;
      }

      a2 = CFStringCreateWithCString(v17, a2, 0x8000100u);
      if (a2)
      {
        CFDictionarySetValue(v19, @"shadow-file", a2);
LABEL_18:
        v14 = DIResolveURLToDiskImage(v16, v19, a4, a6, a7);
        if (!v19)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      a2 = 0;
    }

    v14 = 999;
    if (!v19)
    {
LABEL_23:
      if (v20)
      {
        CFRelease(v20);
      }

      CFRelease(v16);
      if (a2)
      {
        CFRelease(a2);
      }

      goto LABEL_27;
    }

LABEL_22:
    CFRelease(v19);
    goto LABEL_23;
  }

  return v14;
}

uint64_t DIResolvePathsToDiskImage(char *a1, const char *a2, unsigned int a3, int a4, void *a5, CFTypeRef *a6)
{
  if (!sub_248D9F090())
  {
    return 120;
  }

  return DIResolvePathsToDiskImageWithOptions(a1, a2, 0, a3, a4, a5, a6);
}

uint64_t sub_248DC74D8(uint64_t a1, const uint8_t *a2, int a3, uint8_t *a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = (*(*a1 + 56))(a1);
  v11 = compression_decode_scratch_buffer_size(v10);
  v12 = malloc_type_malloc(v11, 0xE99CBB47uLL);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v14 = (*(*a1 + 56))(a1);
  if (compression_decode_buffer(a4, a5, a2, a3, v13, v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = 1000;
  }

  free(v13);
  return v15;
}

uint64_t sub_248DC75E4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{

  return sysctlbyname(a1, 0, 0, &a14, 4uLL);
}

uint64_t sub_248DC7604(const __CFString *a1)
{

  return sub_248D9F128(a1, 0);
}

uint64_t DIUDIFFileAccessWriteResourceFile_0(uint64_t a1)
{
  v32 = 0;
  if (*(a1 + 644) <= 1u)
  {
    v4 = *(a1 + 140);
    v1 = DIUDIFFileAccessOpenFile_0(a1);
    if (v1)
    {
      return v1;
    }

    v31 = 0;
    v5 = *(a1 + 664);
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = sub_248DB7CAC(v5);
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = v6;
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v10 = v7;
LABEL_11:
      CFRelease(v10);
LABEL_12:
      v1 = 999;
LABEL_13:
      DIUDIFFileAccessCloseFile_0(a1);
      return v1;
    }

    v11 = Mutable;
    CFDictionarySetValue(Mutable, @"resource-fork", v7);
    CFRelease(v7);
    Data = CFPropertyListCreateData(v8, v11, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (!Data)
    {
      v10 = v11;
      goto LABEL_11;
    }

    theData = Data;
    Length = CFDataGetLength(Data);
    v15 = *(a1 + 168);
    v16 = *(a1 + 176);
    v14 = (a1 + 168);
    v18 = *(a1 + 344);
    v17 = *(a1 + 352);
    v19 = (*(**(a1 + 112) + 296))(*(a1 + 112), &v32);
    if (v19)
    {
      goto LABEL_52;
    }

    v29 = Length;
    v28 = v4;
    v20 = v16 + v15;
    if (*(a1 + 644) == 1)
    {
      v32 -= 512;
    }

    if (v20)
    {
      v21 = v16 + v15;
      if (v20 == v32)
      {
        v32 = *(a1 + 168);
        v19 = (*(**(a1 + 112) + 312))(*(a1 + 112));
        if (v19)
        {
          goto LABEL_52;
        }

        v21 = 0;
        *v14 = 0;
        *(a1 + 176) = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = (a1 + 344);
    if (v17 + v18)
    {
      v23 = v17 + v18;
      if (v17 + v18 == v32)
      {
        v32 = *(a1 + 344);
        v19 = (*(**(a1 + 112) + 312))(*(a1 + 112));
        if (v19)
        {
          goto LABEL_52;
        }

        v23 = 0;
        *v22 = 0;
        *(a1 + 352) = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if (!v21)
    {
      if (!v23)
      {
LABEL_29:
        v24 = 0;
        v25 = 0;
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    if (v21 == v32)
    {
      v32 = *(a1 + 168);
      v19 = (*(**(a1 + 112) + 312))(*(a1 + 112));
      if (v19)
      {
        goto LABEL_52;
      }

      *v14 = 0;
      *(a1 + 176) = 0;
      if (!v23)
      {
        goto LABEL_29;
      }

LABEL_33:
      v24 = *v22;
      v25 = v23 - *v22;
LABEL_44:
      *v22 = 0;
      v22[1] = 0;
LABEL_45:
      if (v25 >= v29 || (v24 = v32, v32 += v29, v19 = (*(**(a1 + 112) + 312))(*(a1 + 112)), !v19))
      {
        v26 = *(a1 + 112);
        BytePtr = CFDataGetBytePtr(theData);
        v19 = (*(*v26 + 336))(v26, v24, v29, &v31, BytePtr);
        if (!v19)
        {
          *(a1 + 344) = v24;
          *(a1 + 352) = v29;
          *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFC | 1;
          v19 = sub_248DAFD44(a1);
          if (!(v19 | v28 & 1))
          {
            if (!*(a1 + 176))
            {
              v1 = 0;
LABEL_53:
              CFRelease(v11);
              CFRelease(theData);
              goto LABEL_13;
            }

            v19 = (*(**(a1 + 112) + 392))(*(a1 + 112), 0);
          }
        }
      }

LABEL_52:
      v1 = v19;
      goto LABEL_53;
    }

    if (!v23)
    {
      v24 = *v14;
      v25 = v21 - *v14;
      v22 = (a1 + 168);
      goto LABEL_44;
    }

    v24 = *v14;
    v25 = v21 - *v22;
    if (v21 == *v22)
    {
      v25 = v23 - v24;
LABEL_43:
      *v14 = 0;
      *(a1 + 176) = 0;
      goto LABEL_44;
    }

    if (v23 != v24)
    {
      if (*(a1 + 176) > *(a1 + 352))
      {
        v25 = v21 - v24;
        goto LABEL_43;
      }

      v25 = v23 - *v22;
    }

    v24 = *v22;
    goto LABEL_43;
  }

  return 78;
}

void sub_248DC7A88(int a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      v3 = a1;
      v4 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
      v5 = malloc_type_malloc(0x80uLL, 0x100004077774924uLL);
      *v4 = 0;
      *v5 = 0;
      LODWORD(v6) = v3 / 16;
      if ((v3 & 0xF) != 0)
      {
        v6 = (v6 + 1);
      }

      else
      {
        v6 = v6;
      }

      v16 = v6;
      __s2 = v5;
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v18 = v8;
          v9 = 0;
          *v4 = 0;
          v10 = v3;
          do
          {
            if (v9 < v3)
            {
              snprintf(__str, 3uLL, "%02X", *(v2 + v9));
            }

            __strlcat_chk();
            if (v9)
            {
              __strlcat_chk();
            }

            ++v9;
          }

          while (v9 != 16);
          __strlcat_chk();
          for (i = 0; i != 16; ++i)
          {
            if (i < v10)
            {
              v12 = *(v2 + i);
              if ((v12 & 0x80000000) != 0)
              {
                __maskrune(*(v2 + i), 0x40000uLL);
              }

              else
              {
                v13 = *(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x40000;
              }
            }

            __strlcat_chk();
          }

          if (v10 >= 16)
          {
            v14 = 16;
          }

          else
          {
            v14 = v10;
          }

          __strlcat_chk();
          if (v7)
          {
            if (!strcmp(v4, __s2))
            {
              v8 = v18 + 1;
              goto LABEL_32;
            }

            v15 = MEMORY[0x277D85DF8];
            if (v18)
            {
              fprintf(*MEMORY[0x277D85DF8], "(repeated %d times)\n", v18);
            }

            fprintf(*v15, "%08lX: ", 16 * v7);
          }

          else
          {
            v15 = MEMORY[0x277D85DF8];
            fprintf(*MEMORY[0x277D85DF8], "%08lX: ", 0);
          }

          fputs(v4, *v15);
          __strlcpy_chk();
          v8 = 0;
LABEL_32:
          v3 = v10 - v14;
          v2 += v14;
          if (++v7 == v16)
          {
            if (v8)
            {
              fprintf(*MEMORY[0x277D85DF8], "(repeated %d times)\n", v8);
            }

            break;
          }
        }
      }

      free(__s2);
      free(v4);
    }
  }
}

uint64_t sub_248DC7D64(uint64_t a1)
{
  if (a1)
  {
    return sub_248DC6FCC(a1);
  }

  return a1;
}

BOOL sub_248DC7D70()
{
  v0 = CFArrayDictionarySearchWithIndexOptions();
  v1 = CFArrayDictionarySearchWithIndexOptions();
  if (v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  CFDictionaryGetValue(v1, @"Sections");
  v3 = CFArrayDictionarySearchWithIndexOptions();
  Value = CFDictionaryGetValue(v3, @"Partitions");
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  v8 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, v7);
    v24 = 0;
    valuePtr = 0;
    v10 = sub_248DAE894(ValueAtIndex, @"Offset");
    v11 = sub_248DAE894(ValueAtIndex, @"Size");
    if (v10)
    {
      v12 = v11;
      if (v11)
      {
        CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr);
        CFNumberGetValue(v12, kCFNumberSInt64Type, &v24);
        if (v24 + valuePtr > v8)
        {
          v8 = v24 + valuePtr;
        }
      }
    }

    ++v7;
  }

  while (v6 != v7);
  if (!v8)
  {
    return 0;
  }

  CFDictionaryGetValue(v0, @"Sections");
  v13 = CFArrayDictionarySearchWithIndexOptions();
  v14 = CFDictionaryGetValue(v13, @"Partitions");
  v15 = CFArrayGetCount(v14);
  if (v15 < 1)
  {
    return 1;
  }

  v16 = v15;
  v17 = 0;
  for (i = 0; i != v16; ++i)
  {
    v19 = CFArrayGetValueAtIndex(v14, i);
    v24 = 0;
    valuePtr = 0;
    v20 = sub_248DAE894(v19, @"Offset");
    v21 = sub_248DAE894(v19, @"Size");
    if (v20)
    {
      v22 = v21;
      if (v21)
      {
        CFNumberGetValue(v20, kCFNumberSInt64Type, &valuePtr);
        CFNumberGetValue(v22, kCFNumberSInt64Type, &v24);
        if (v8 > valuePtr)
        {
          v17 = 1;
        }
      }
    }
  }

  return v17 == 0;
}

uint64_t sub_248DC7FE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  return 78;
}

uint64_t sub_248DC8010(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 78;
}

uint64_t sub_248DC8028(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 78;
}

uint64_t sub_248DC8050(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 78;
}

uint64_t sub_248DC8094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 78;
}

uint64_t sub_248DC80A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 78;
}

uint64_t sub_248DC80C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 78;
}

uint64_t sub_248DC80D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  return 78;
}

uint64_t sub_248DC80F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 78;
}

uint64_t sub_248DC8100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 78;
}

uint64_t sub_248DC8128(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (*a3)
  {
    *a3 = 0;
  }

  return 78;
}

void sub_248DC8144(uint64_t a1, __CFDictionary *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 176))(a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_248DACAF4(v3);
    if (v5)
    {
      v6 = v5;
      v7 = sub_248DACBC4(v5, 0x8000100u);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(a2, @"image-path", v7);
        if (CFURLGetFileSystemRepresentation(v4, 1u, buffer, 1024))
        {
          if (!statfs(buffer, &v19))
          {
            v10 = sub_248DC6E90(&v19);
            if (v10)
            {
              v11 = v10;
              v12 = *MEMORY[0x277CD28A0];
              v13 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, v10);
              free(v11);
              if (v13)
              {
                MatchingService = IOServiceGetMatchingService(v12, v13);
                if (MatchingService)
                {
                  v15 = MatchingService;
                  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"BSD Unit", 0, 0);
                  if (CFProperty)
                  {
                    v17 = CFProperty;
                    v18 = CFGetTypeID(CFProperty);
                    if (v18 == CFNumberGetTypeID())
                    {
                      CFDictionarySetValue(a2, @"throttle-unit", v17);
                    }

                    CFRelease(v17);
                  }

                  IOObjectRelease(v15);
                }
              }
            }
          }
        }

        CFRelease(v8);
      }

      CFRelease(v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_248DC8340(uint64_t a1)
{
  result = unlink(*(a1 + 296));
  if ((result & 0x80000000) != 0)
  {
    return *__error();
  }

  return result;
}

BOOL sub_248DC8368(uint64_t a1)
{
  result = 1;
  if (!stat(*(a1 + 296), &v4))
  {
    v2 = *(a1 + 352);
    if (v4.st_mtimespec.tv_sec <= v2 && (v4.st_mtimespec.tv_sec != v2 || v4.st_mtimespec.tv_nsec <= *(a1 + 360)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DC83F0(const char *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;
  a13 = 0;
  a14 = 0;
  a12 = 0x400000000005;

  return getattrlist(a1, &a12, &a9, 0x24uLL, 0);
}

void sub_248DC8450()
{
  if (!qword_27EECD6F0)
  {
    memset(&callBacks, 0, 24);
    callBacks.copyDescription = sub_248DC84E0;
    callBacks.equal = sub_248DC8574;
    fwrite("DIDiskImageBeginRetainCountTracking\n", 0x24uLL, 1uLL, *MEMORY[0x277D85DF8]);
    qword_27EECD6F0 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &callBacks);
  }
}

CFStringRef sub_248DC84E0(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = (*(*a1 + 16))(a1);
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 8);
  pthread_mutex_unlock((a1 + 16));
  return CFStringCreateWithFormat(v2, 0, @"%s %p (%d)", v3, a1, v4);
}

void sub_248DC8580()
{
  if (qword_27EECD6F0)
  {
    v0 = MEMORY[0x277D85DF8];
    fwrite("DIDiskImageDisplayRetainCountTracking\n", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
    Count = CFArrayGetCount(qword_27EECD6F0);
    if (Count >= 1)
    {
      v2 = Count;
      for (i = 0; i != v2; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_27EECD6F0, i);
        v5 = *v0;
        v6 = sub_248DC84E0(ValueAtIndex);
        sub_248DD1D1C(v5, v6, 0x8000100u);
        fputc(10, *v0);
      }
    }
  }
}

void sub_248DC8630()
{
  if (qword_27EECD6F0)
  {
    CFRelease(qword_27EECD6F0);
    qword_27EECD6F0 = 0;
  }
}

void sub_248DC8664(void *a1)
{
  sub_248DA1D68(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DC869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 88);
  if (v7)
  {
    return v7(a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 0;
  }
}

BOOL sub_248DC86D4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = 0;
  if (!(*(*a1 + 272))(a1))
  {
    v5 = 0;
    v2 = (*(*a1 + 328))(a1, 0, 512, &v5, v6);
    (*(*a1 + 280))(a1, 0);
    if (!v2 && v6[0] == 2003069043 && bswap32(v6[1]) - 2 > 2)
    {
      result = 1;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DC8820(uint64_t a1, CFDictionaryRef theDict)
{
  if ((sub_248DA0698(theDict, @"diskimage-class", @"CNotSupportedDiskImage") & 0x80000000) != 0)
  {
    return 4294966296;
  }

  v4 = sub_248DA0698(theDict, @"diskimage-class", @"CNotSupportedDiskImage");
  v5 = 1000;
  if (v4 <= 0)
  {
    if (sub_248DC86D4(a1))
    {
      return 1000;
    }

    else
    {
      return 4294966296;
    }
  }

  return v5;
}

uint64_t sub_248DC88F4(uint64_t a1, int a2)
{
  v4 = sub_248DA81B0(a1);
  *v4 = &unk_285BC9D38;
  *(v4 + 120) = a2;
  if (a2)
  {
    v5 = @"skip";
  }

  else
  {
    v5 = @"none";
  }

  v6 = DIGetBundleRef();
  v7 = sub_248DD4D90(v6, v5, v5);
  *(a1 + 112) = v7;
  if (!v7)
  {
    CFRetain(v5);
    *(a1 + 112) = v5;
  }

  return a1;
}

void *sub_248DC89D4(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BC9E00;
  v2[16] = 20;
  a1[15] = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  a1[17] = MEMORY[0x277D85BB0];
  a1[18] = MEMORY[0x277D85BB8];
  a1[19] = MEMORY[0x277D85BA8];
  return a1;
}

void sub_248DC8AA8(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DC8B2C(uint64_t a1)
{
  nullsub_4(a1 + 168);
  sub_248DC0A1C((a1 + 104));

  return sub_248DA799C(a1);
}

uint64_t sub_248DC8B70(void *a1)
{
  v2 = a1 - 13;
  nullsub_4(a1 + 8);
  sub_248DC0A1C(a1);

  return sub_248DA799C(v2);
}

uint64_t sub_248DC8BB8(uint64_t a1)
{
  v1 = a1 - 168;
  v2 = nullsub_4(a1);
  sub_248DC0A1C((v2 - 64));

  return sub_248DA799C(v1);
}

void *sub_248DC8C14(void *a1)
{
  *a1 = &unk_285BCA030;
  v2 = a1[4];
  if (v2)
  {
    free(v2);
  }

  a1[4] = 0;
  return a1;
}

void sub_248DC8C64(void *a1)
{
  *a1 = &unk_285BCA030;
  v2 = a1[4];
  if (v2)
  {
    free(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DC8CD4(uint64_t a1)
{
  sub_248DC0A1C((a1 + 104));

  return sub_248DA799C(a1);
}

uint64_t sub_248DC8D10(void *a1)
{
  v1 = a1 - 13;
  sub_248DC0A1C(a1);

  return sub_248DA799C(v1);
}

char *sub_248DC8D5C(char *a1)
{
  result = sub_248DAB178(a1);
  *result = &unk_285BCA100;
  return result;
}

void sub_248DC8D94()
{
  sub_248DA799C();

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DC8DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5)
  {
    return 22;
  }

  v5 = a5 >> 1;
  if (a5 >> 1 >= 1)
  {
    v6 = 0;
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 0;
    LOWORD(v10) = 0;
    v11 = 0;
    do
    {
      if (!v8)
      {
        v9 += v11;
        v12 = bswap32(*(a2 + 2 * v9));
        v8 = v12 >> 16;
        if (v12 >> 16 >= 0)
        {
          LOWORD(v13) = HIWORD(v12);
        }

        else
        {
          v13 = -v8;
        }

        if (v5 < v13)
        {
          return 22;
        }

        LOWORD(v10) = v9 + 1;
        if (v8 < 0)
        {
          v8 = -HIWORD(v12);
          v7 = 1;
          v11 = 2;
        }

        else
        {
          v7 = 0;
          v11 = v8 + 1;
        }
      }

      *(a4 + 2 * v6) = *(a2 + 2 * v10);
      v10 = (v10 + ((a5 > v10) & (v7 ^ 1)));
      if (v10 < 1 || v10 > a5)
      {
        return 22;
      }

      LOWORD(v8) = v8 - 1;
      ++v6;
    }

    while (v5 > v6);
  }

  return 0;
}

double sub_248DC8E94(char *a1)
{
  v1 = sub_248DAB178(a1);
  *v1 = &unk_285BCA148;
  *(v1 + 296) = xmmword_248DDDE26;
  qmemcpy(v1 + 312, "  !!##$$%%&&''(())**++,,--..//0123456789:;<=>?", 48);
  *(v1 + 232) = xmmword_248DDDDE6;
  *(v1 + 248) = unk_248DDDDF6;
  *(v1 + 264) = xmmword_248DDDE06;
  *(v1 + 280) = unk_248DDDE16;
  *(v1 + 168) = xmmword_248DDDDA6;
  *(v1 + 184) = unk_248DDDDB6;
  *(v1 + 200) = xmmword_248DDDDC6;
  *(v1 + 216) = unk_248DDDDD6;
  *(v1 + 104) = xmmword_248DDDD66;
  *(v1 + 120) = unk_248DDDD76;
  *(v1 + 136) = xmmword_248DDDD86;
  *(v1 + 152) = unk_248DDDD96;
  memset(v1 + 552, 7, 48);
  *(v1 + 600) = *"\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b20CDARTRLEDecompressor";
  *(v1 + 488) = xmmword_248DDDEE6;
  *(v1 + 504) = unk_248DDDEF6;
  *(v1 + 520) = xmmword_248DDDF06;
  *(v1 + 536) = unk_248DDDF16;
  *(v1 + 424) = xmmword_248DDDEA6;
  *(v1 + 440) = unk_248DDDEB6;
  *(v1 + 456) = xmmword_248DDDEC6;
  *(v1 + 472) = unk_248DDDED6;
  *(v1 + 360) = xmmword_248DDDE66;
  *(v1 + 376) = unk_248DDDE76;
  result = 2.56734753e-289;
  *(v1 + 392) = xmmword_248DDDE86;
  *(v1 + 408) = unk_248DDDE96;
  return result;
}

void sub_248DC8F78()
{
  sub_248DA799C();

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DC8FB0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = v2;
  v14 = v3;
  v10 = 0;
  v9 = 0;
  v18 = 0;
  v17 = 0;
  v8[0] = v4;
  v8[1] = v5;
  v15 = v1 + 104;
  v16 = v1 + 360;
  sub_248DC906C(v1, v8);
  if (v9)
  {
    result = 1001;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_248DC906C(uint64_t a1, uint64_t a2)
{
  sub_248DC92D4(a1, a2);
  v3 = a2 + 48;
  bzero((a2 + 48), 0xFC4uLL);
  if (*(a2 + 44))
  {
    v5 = 0;
    v6 = 4036;
    while (*(a2 + 32) <= *(a2 + 40))
    {
      v4 = sub_248DC95D0(v4, a2);
      v7 = v4;
      if (v4 > 255)
      {
        v4 = sub_248DC9644(v4, a2);
        v10 = v6 + ~v4;
        v5 += (v7 - 254) + 1;
        v11 = (v7 - 253);
        while (1)
        {
          v12 = *(v3 + (v10 & 0xFFF));
          v13 = *(a2 + 8);
          v14 = *(a2 + 36);
          *(a2 + 36) = v14 + 1;
          if ((v14 + 1) > *(a2 + 44))
          {
            break;
          }

          *(v13 + v14) = v12;
          *(v3 + v6) = v12;
          v6 = (v6 + 1) & 0xFFF;
          ++v10;
          if (!--v11)
          {
            goto LABEL_10;
          }
        }

LABEL_14:
        ++*(a2 + 16);
        return;
      }

      v8 = *(a2 + 8);
      v9 = *(a2 + 36);
      *(a2 + 36) = v9 + 1;
      if ((v9 + 1) > *(a2 + 44))
      {
        goto LABEL_14;
      }

      *(v8 + v9) = v4;
      *(v3 + v6) = v4;
      v6 = (v6 + 1) & 0xFFF;
      ++v5;
LABEL_10:
      v15 = *(a2 + 28);
      if (v5 > v15)
      {
        *(a2 + 28) = v15 + 16;
      }

      if (v5 >= *(a2 + 44))
      {
        return;
      }
    }
  }
}

uint64_t sub_248DC91B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8620);
  if (v2 >= 9)
  {
    v6 = *(a2 + 4308);
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 10);
    v5 = *(a2 + 8);
    v6 = *(a2 + 4308);
    do
    {
      v7 = v5 + 1;
      *(a2 + 8) = v5 + 1;
      if (v5 + 1 <= v4)
      {
        v8 = *(v3 + v5);
      }

      else
      {
        v8 = -1;
      }

      v6 |= (v8 & ~(v8 >> 31)) << (8 - v2);
      *(a2 + 4308) = v6;
      v9 = v2 + 8;
      *(a2 + 8620) = v2 + 8;
      v5 = v7;
      v10 = v2;
      LOBYTE(v2) = 8;
    }

    while (!v10);
    LOBYTE(v2) = v9;
  }

  *(a2 + 4308) = 2 * v6;
  *(a2 + 8620) = v2 - 1;
  return (v6 >> 15) & 1;
}

uint64_t sub_248DC924C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8620);
  if (v2 >= 9)
  {
    LOWORD(v6) = *(a2 + 4308);
    v7 = v2 - 8;
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 10);
    v5 = *(a2 + 8);
    v6 = *(a2 + 4308);
    do
    {
      v7 = v2;
      v8 = v5 + 1;
      *(a2 + 8) = v5 + 1;
      if (v5 + 1 <= v4)
      {
        v9 = *(v3 + v5);
      }

      else
      {
        v9 = 0xFFFF;
      }

      LOBYTE(v2) = 8;
      v6 |= v9 << (8 - v7);
      *(a2 + 4308) = v6;
      *(a2 + 8620) = v7 + 8;
      v5 = v8;
    }

    while (!v7);
  }

  *(a2 + 4308) = v6 << 8;
  *(a2 + 8620) = v7;
  return BYTE1(v6);
}

void sub_248DC92D4(uint64_t a1, _WORD *a2)
{
  v3 = a2 + 2112;
  memset_pattern16(a2 + 2112, &unk_248DDDFA0, 0x274uLL);
  v4 = a2 + 3367;
  v5 = -314;
  do
  {
    v4[314] = v5 + 941;
    *v4++ = v5 + 314;
  }

  while (!__CFADD__(v5++, 1));
  v7 = 0;
  v8 = 314;
  do
  {
    v9 = &a2[v7 + 2426];
    *v9 = v3[1] + *v3;
    v9[1569] = v7 * 2;
    v3[629] = v8;
    v3[628] = v8;
    ++v7;
    ++v8;
    v3 += 2;
  }

  while (v7 != 313);
  a2[2739] = -1;
  a2[3366] = 0;
}

void *sub_248DC9384(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2 + 7362;
  v5 = a2 + 4224;
  v6 = 627;
  v7 = (a2 + 4224);
  do
  {
    if (v7[1569] >= 627)
    {
      *(v5 + 2 * v3) = (*v7 + 1) >> 1;
      *(v4 + 2 * v3++) = v7[1569];
    }

    ++v7;
    --v6;
  }

  while (v6);
  v8 = 0;
  for (i = 314; i != 627; ++i)
  {
    v10 = *(v5 + 2 * v8 + 2) + *(v5 + 2 * v8);
    *(v5 + 2 * i) = v10;
    v11 = i;
    do
    {
      v12 = v11--;
    }

    while (*(v5 + 2 * v11) > v10);
    v13 = 2 * v12 + 2;
    memcpy((v5 + 2 * v12), (v5 + v13), 2 * ((i - v12) & 0x7FFF));
    *(v5 + 2 * v12) = v10;
    result = memcpy((v4 + 2 * v12), (v4 + v13), 2 * ((i - v12) & 0x7FFF));
    *(v4 + 2 * v12) = v8;
    v8 += 2;
  }

  v15 = 0;
  v16 = a2 + 5480;
  do
  {
    v17 = *(v4 + 2 * v15);
    if (v17 < 627)
    {
      v18 = (v16 + 2 * v17);
      v18[1] = v15;
      *v18 = v15;
    }

    else
    {
      *(v16 + 2 * v17) = v15;
    }

    ++v15;
  }

  while (v15 != 627);
  return result;
}

void *sub_248DC94D8(void *result, uint64_t a2, int a3)
{
  v5 = a2 + 4224;
  if (*(a2 + 5476) == -32768)
  {
    result = sub_248DC9384(result, a2);
  }

  v6 = a2 + 5480;
  v7 = *(a2 + 5480 + 2 * a3 + 1254);
  v8 = a2 + 7362;
  do
  {
    v9 = *(v5 + 2 * v7) + 1;
    *(v5 + 2 * v7) = v9;
    v10 = v7 + 1;
    if (v9 <= *(v5 + 2 * (v7 + 1)))
    {
      v12 = v7;
    }

    else
    {
      do
      {
        v11 = v10++;
      }

      while (v9 > *(v5 + 2 * v10));
      v12 = v11;
      *(v5 + 2 * v7) = *(v5 + 2 * v11);
      *(v5 + 2 * v11) = v9;
      v13 = *(v8 + 2 * v7);
      *(v6 + 2 * v13) = v11;
      if (v13 <= 626)
      {
        *(v6 + 2 * v13 + 2) = v11;
      }

      v14 = *(v8 + 2 * v11);
      *(v8 + 2 * v12) = v13;
      *(v6 + 2 * v14) = v7;
      if (v14 <= 626)
      {
        *(v6 + 2 * v14 + 2) = v7;
      }

      *(v8 + 2 * v7) = v14;
    }

    v7 = *(v6 + 2 * v12);
  }

  while (*(v6 + 2 * v12));
  return result;
}

uint64_t sub_248DC95D0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8614);
  if (v3 <= 0x272)
  {
    do
    {
      a1 = sub_248DC91B8(a1, a2);
      v3 = *(a2 + 7362 + 2 * (a1 + v3));
    }

    while (v3 < 0x273);
  }

  v4 = (v3 - 627);
  sub_248DC94D8(a1, a2, v4);
  return v4;
}

uint64_t sub_248DC9644(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248DC924C(a1, a2);
  v4 = v3;
  v5 = *(a2[526] + v3);
  v6 = *(a2[527] + v3);
  v7 = v6 - 2;
  if (v6 != 2)
  {
    do
    {
      --v7;
      v3 = sub_248DC91B8(v3, a2);
      v4 = v3 | (2 * v4);
    }

    while (v7);
  }

  return v4 & 0x3F | (v5 << 6);
}

uint64_t sub_248DC96E4(void *a1, uint64_t a2)
{
  v2 = a1[17];
  if (!v2)
  {
    return 78;
  }

  while (!(*(*v2 + 104))(v2))
  {
    v2 = (*(*v2 + 496))(v2);
    if (!v2)
    {
      return 78;
    }
  }

  v7 = (*(*a1 + 296))(a1);
  v8 = (*(*v7 + 72))(v7);
  if ((v8 & 1) != 0 || (v5 = (*(*v2 + 80))(v2, 1003), !v5))
  {
    v5 = (*(*v2 + 112))(v2, a2);
    if ((v8 & 1) == 0)
    {
      (*(*v2 + 80))(v2, 1);
    }
  }

  return v5;
}

uint64_t sub_248DC98B0(uint64_t a1, __CFDictionary *a2)
{
  if ((*(*a1 + 200))(a1) && ((*(*a1 + 256))(a1) & 1) == 0)
  {
    v4 = (*(*a1 + 304))(a1);
    if (!v4)
    {
      v6 = (*(*a1 + 216))(a1);
      CFDictionaryAddValue(a2, @"kernel-dict", v6);
      valuePtr = (*(*a1 + 232))(a1);
      v7 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionaryAddValue(a2, @"sparse-band-size", v7);
      return 0;
    }

    CFRelease(v4);
  }

  return 78;
}

uint64_t sub_248DC9A08(void **a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v4 = MutableCopy;
  if (!MutableCopy)
  {
    return 999;
  }

  if (((*a1)[66])(a1, MutableCopy) || (v5 = DIHLDiskImageAttach(), v5 == 45))
  {
    CFDictionaryRemoveValue(v4, @"kernel-dict");
    v6 = (*(*a1[17] + 176))(a1[17]);
    CFDictionaryAddValue(v4, @"main-url", v6);
    v5 = DIHLDiskImageAttach();
  }

  CFRelease(v4);
  return v5;
}

__CFArray *sub_248DC9B44(uint64_t a1, char a2)
{
  v15 = 0;
  v14 = 0;
  v4 = (*(*a1 + 240))(a1);
  if (v4 >= 513)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2048;
  }

  v6 = sub_248DD31F4(a1, 1u, 1, v5, 0, &v14, &v15, 0, a2);
  Mutable = 0;
  if (!v6)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (v15 >= 1)
    {
      for (i = 0; i < v15; ++i)
      {
        v10 = *(v14 + i);
        sub_248DD4EF8();
        nullsub_4(v10);
        v11 = sub_248DD4EEC(v10);
        v12 = CFDataCreate(v8, *v10, v11);
        CFArrayAppendValue(Mutable, v12);
        CFRelease(v12);
        nullsub_4(v10);
      }
    }
  }

  if (v14)
  {
    sub_248DC203C(v14, v15);
  }

  return Mutable;
}

uint64_t sub_248DC9C94(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
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
    *a5 = 0;
    v5 = 78;
  }

  else
  {
    v5 = 22;
  }

  if (a4)
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 22;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_248DC9CCC(uint64_t a1)
{
  v1 = (*(*a1 + 296))(a1);
  if (!v1)
  {
    return 78;
  }

  v2 = *(*v1 + 480);

  return v2();
}

uint64_t sub_248DC9D70(uint64_t a1, const char *a2)
{
  v2 = "";
  if (a2)
  {
    v2 = a2;
  }

  return fprintf(*MEMORY[0x277D85DF8], "%s%qd at %qd\n", v2, *(a1 + 96), *(a1 + 88));
}

void sub_248DC9DC4(__CFArray *a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v13 = DIGetBundleRef();
  v14 = sub_248DD4D90(v13, a2, a2);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-convert-name", v14);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-convert-key", a5);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-convert-extension", a6);
  CFDictionaryAddValue(Mutable, @"expert-mode", a7);
  CFArrayAppendValue(a1, Mutable);
  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void sub_248DC9EE8(__CFArray *a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = DIGetBundleRef();
  v17 = sub_248DD4D90(v16, a2, a2);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-create-name", v17);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-create-key", a5);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-create-extension", a6);
  CFDictionaryAddValue(Mutable, @"expert-mode", a7);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-create-virtual-size", a8);
  if (a9)
  {
    CFDictionaryAddValue(Mutable, @"plugin-diskimage-create-hide-from-ui", a9);
  }

  CFArrayAppendValue(a1, Mutable);
  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void sub_248DCA04C(__CFArray *a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = DIGetBundleRef();
  v12 = sub_248DD4D90(v11, a2, a2);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-checksum-name", v12);
  CFDictionaryAddValue(Mutable, @"plugin-diskimage-checksum-key", a5);
  CFDictionaryAddValue(Mutable, @"expert-mode", a6);
  CFArrayAppendValue(a1, Mutable);
  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

BOOL sub_248DCA180(uint64_t a1)
{
  v2 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v6 = 0;
  v4 = !(*(*a1 + 48))(a1, 2, 1, &v6, v2) && (sub_248DC401C(v3), *v3 == 18520) && (v3[20] & 0x1FF) == 0 && v3[1] > 4u;
  free(v3);
  return v4;
}

BOOL sub_248DCA25C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if ((*(*a1 + 48))(a1, 2, 1, &v10, v11) || v11[0] | v11[1])
  {
    result = 0;
  }

  else
  {
    result = 0;
    if ((~v12[0] & 0xF0) == 0 && (v12[0] & 0xF) != 0)
    {
      v2 = v12[0] & 0xF;
      while (1)
      {
        v3 = v12[v2];
        v4 = (v3 - 97) >= 0x1Au ? v12[v2] : v3 & 0x5F;
        v5 = (v4 - 65);
        v6 = v5 < 0x1A;
        if (!--v2)
        {
          break;
        }

        v7 = v5 >= 0x1A && (v4 - 48) >= 0xAu;
        if (v7 && v4 != 46 && v4 != 32)
        {
          v6 = 0;
          break;
        }

        if (!v2)
        {
          v6 = 1;
          break;
        }
      }

      v9 = v12[31] == 39 && v6;
      result = v12[32] == 13 && v9;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef sub_248DCA3C4(uint64_t a1)
{
  v1 = (1000 * (1000000 * (*(a1 + 24) - *(a1 + 8)) - *(a1 + 16) + *(a1 + 32)));
  v2 = fmod(v1, 1000.0);
  v3 = floor(v1 / 1000.0);
  v4 = fmod(v3, 1000.0);
  v5 = floor(v3 / 1000.0);
  v6 = fmod(v5, 1000.0);
  v7 = floor(v5 / 1000.0);
  v8 = fmod(v7, 60.0);
  v9 = floor(v7 / 60.0);
  v10 = fmod(v9, 60.0);
  v11 = floor(v9 / 60.0);
  v12 = fmod(v11, 24.0);
  v13 = floor(v11 / 24.0);
  v14 = fmod(v13, 365.25);
  v15 = floor(v13 / 365.25);
  v16 = *MEMORY[0x277CBECE8];
  if (v15 > 0.0)
  {
    return CFStringCreateWithFormat(v16, 0, @"%2hdy %3hdd %2hdh", v15, v14, v10);
  }

  if (v14 > 0.0)
  {
    return CFStringCreateWithFormat(v16, 0, @"%3hdd %2hdh %02hdm %02hds", v14, v12, v10, v8);
  }

  if (v12 > 0.0)
  {
    return CFStringCreateWithFormat(v16, 0, @"%2hdh %2hdm %02hd.%03hds", v12, v10, v8, v6);
  }

  if (v10 > 0.0)
  {
    return CFStringCreateWithFormat(v16, 0, @"%2hdm %2hd.%03hds", v10, v8, v6);
  }

  if (v8 > 0.0)
  {
    return CFStringCreateWithFormat(v16, 0, @"%2hd.%03hds", v8, v6);
  }

  if (v6 > 0.0)
  {
    return CFStringCreateWithFormat(v16, 0, @"%3hd.%03hdms", v6, v4);
  }

  if (v4 <= 0.0)
  {
    return CFStringCreateWithFormat(v16, 0, @"%2hdns", v2);
  }

  return CFStringCreateWithFormat(v16, 0, @"%3hd.%03hdus", v4, v2);
}

uint64_t sub_248DCA624(int a1, int a2, _DWORD *a3)
{
  result = 0;
  *a3 = 0;
  if (a1 > 1346586691)
  {
    if (a1 > 1684371057)
    {
      if (a1 == 1684371058)
      {
        result = 1430540887;
        goto LABEL_23;
      }

      if (a1 != 1751413366)
      {
        if (a1 != 1885554756)
        {
          return result;
        }

        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (a1 != 1346586692)
    {
      if (a1 == 1346989415)
      {
        goto LABEL_17;
      }

      return result;
    }

LABEL_18:
    result = 1144675390;
    goto LABEL_23;
  }

  if (a1 <= 1195994470)
  {
    if (a1 != 1095782476)
    {
      if (a1 == 1145334125)
      {
LABEL_10:
        result = 1380013866;
LABEL_23:
        *a3 = 100;
        return result;
      }

      return result;
    }

    result = 1144675390;
    if (a2 == 1450461252 || a2 == 1144675390)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (a1 == 1195994471)
  {
LABEL_17:
    result = 1430541391;
    goto LABEL_23;
  }

  if (a1 == 1330660164)
  {
    if (a2 == 1330660128)
    {
      goto LABEL_18;
    }

    return 0;
  }

  return result;
}

uint64_t sub_248DCA76C(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_248DA1560(a3);
  v13 = 0;
  if ((*(*a1 + 296))(a1))
  {
    return 78;
  }

  sub_248DB87E8(a2, &v13);
  if (v13 < 0)
  {
    return 111;
  }

  v7 = sub_248DB8CC8(a2, &v13);
  if (v13 < 0)
  {
    return 111;
  }

  if (!v7)
  {
    v7 = sub_248DB8E00(a2, &v13);
    if (v13 < 0)
    {
      return 111;
    }
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1380013866;
  }

  *(a1 + 144) = v8;
  v12 = 0;
  v9 = (*(*a2 + 10))(a2, v5);
  if (v9)
  {
    return v9;
  }

  v10 = (*(*a2 + 9))(a2);
  (*(*a1 + 520))(a1, v10);
  v9 = (*(*a2 + 34))(a2);
  if (v9)
  {
    return v9;
  }

  v6 = (*(*a2 + 37))(a2, &v12);
  if (v6)
  {
    (*(*a2 + 35))(a2, 0);
  }

  else
  {
    *(a1 + 160) = v12 >> 9;
    sub_248DA7A20(a1, a2);
  }

  return v6;
}

void sub_248DCB288(uint64_t a1, __CFArray *a2)
{
  iterator = 0;
  if (!IOObjectConformsTo(a1, "IOMedia") || ((value = 0, !IORegistryEntryCreateCFProperties(a1, &value, *MEMORY[0x277CBECE8], 0)) ? (v4 = value == 0) : (v4 = 1), v4 || (CFArrayAppendValue(a2, value), v5 = sub_248DA0728(value, @"Leaf", 0), CFRelease(value), !v5)))
  {
    if (!MEMORY[0x24C1EBD50](a1, "IOService", &iterator))
    {
      if (!IOIteratorIsValid(iterator))
      {
        MEMORY[0x24C1EBD00](iterator);
      }

      v6 = IOIteratorNext(iterator);
      if (v6)
      {
        v7 = v6;
        do
        {
          sub_248DCB288(v7, a2);
          IOObjectRelease(v7);
          v7 = IOIteratorNext(iterator);
        }

        while (v7);
      }

      if (iterator)
      {
        IOObjectRelease(iterator);
      }
    }
  }
}

void sub_248DCB398(uint64_t a1, uint64_t a2, double a3)
{
  v6 = DIGetBundleRef();
  v7 = sub_248DD4D90(v6, @"Elapsed Time: %1$@", @"Elapsed Time: %1$@");
  v8 = sub_248DCA3C4(a2);
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, v7, v8);
  (*(*a1 + 336))(a1, v10, 8);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v11 = (100.0 - a3) * (*(*a1 + 96))(a1) / 100.0 * 512.0 * 1000000000.0;
  v12 = v11 / sub_248DC2480(a2);
  if (v12 >= 1024.0)
  {
    v13 = 75;
  }

  else
  {
    v13 = 32;
  }

  if (v12 >= 1024.0)
  {
    v12 = v12 * 0.0009765625;
  }

  if (v12 >= 1024.0)
  {
    v13 = 77;
    v12 = v12 * 0.0009765625;
  }

  if (v12 >= 1024.0)
  {
    v14 = 71;
  }

  else
  {
    v14 = v13;
  }

  if (v12 >= 1024.0)
  {
    v15 = v12 * 0.0009765625;
  }

  else
  {
    v15 = v12;
  }

  v16 = DIGetBundleRef();
  v17 = sub_248DD4D90(v16, @"Speed: %1$.1f%2$cB/s", @"Speed: %1$.1f%2$cB/s");
  v18 = CFStringCreateWithFormat(v9, 0, v17, *&v15, v14);
  (*(*a1 + 336))(a1, v18, 8);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v19 = DIGetBundleRef();
  v20 = sub_248DD4D90(v19, @"Savings: %1$.1f%%", @"Savings: %1$.1f%%");
  v21 = CFStringCreateWithFormat(v9, 0, v20, *&a3);
  (*(*a1 + 336))(a1, v21, 8);
  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {

    CFRelease(v20);
  }
}

uint64_t sub_248DCB6B4(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  result = 22;
  if (a2 && v4 >= a2)
  {
    v6 = a1[20];
    if (v6)
    {
      v7 = *(*v6 + 56);

      return v7();
    }

    else
    {
      return 999;
    }
  }

  return result;
}

uint64_t sub_248DCB75C(uint64_t a1, char *a2, const __CFDictionary *a3, void *a4)
{
  valuePtr = 8;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = 0;
  cf = 0;
  v14 = -1;
  if (!a2)
  {
    goto LABEL_7;
  }

  DIDiskImageObjectRetain_0(a2);
  if (!a3 || !sub_248DAEF20(a3, @"convert-image-type", 0))
  {
    goto LABEL_7;
  }

  v7 = sub_248DA0728(a3, @"convert-add-partition-map", 0);
  v8 = CFDictionaryGetValue(a3, @"convert-alignment");
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
  }

  if (v7)
  {
LABEL_7:
    v9 = 22;
    goto LABEL_8;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(a3, @"udif-chunk-size", &value))
  {
    goto LABEL_18;
  }

  if (!sub_248DB7EC4(value, kCFNumberSInt64Type, &v14))
  {
    v9 = 999;
    goto LABEL_8;
  }

  v11 = v14;
  if (v14 < 0)
  {
LABEL_18:
    v11 = 2048;
    v14 = 2048;
  }

  v12 = sub_248DD31F4(a2, 1u, 1, v11, &v15, &v18, &v17, &cf, 1);
  if (!v12)
  {
    sub_248DCB918();
  }

  v9 = v12;
  if (v18)
  {
    sub_248DC203C(v18, v17);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v15)
  {
    CFRelease(v15);
    v15 = 0;
  }

  if (a2)
  {
    DIDiskImageObjectRelease(a2);
  }

  *a4 = v19;
  return v9;
}

uint64_t sub_248DCC2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v6 = (*(**(a1 + 160) + 160))(*(a1 + 160));
  if (!v6)
  {
    v9 = v10;
    v7 = (*(**(a1 + 160) + 64))(*(a1 + 160)) * v9;
    if (!a4)
    {
      return v6;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    *a4 = v7;
  }

  return v6;
}

uint64_t sub_248DCC3A8(uint64_t a1, void ***a2)
{
  if (!a2)
  {
    sub_248DD4E4C(0);
    return 22;
  }

  *a2 = 0;
  v4 = sub_248DD4E14(204);
  v5 = sub_248DD4D98();
  if (!v5)
  {
    **v4 = 0x16D697368;
    v18 = 0;
    v17 = 0;
    v8 = (*(**(a1 + 160) + 48))(*(a1 + 160));
    if (!v8)
    {
LABEL_18:
      v16 = sub_248DCC54C(v4, -1, 0);
LABEL_19:
      v6 = v16;
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = v8;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      v5 = (*(**(a1 + 160) + 24))(*(a1 + 160), v10, v9, &v18, &v17);
      if (v5)
      {
        break;
      }

      if (v17)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v13 = v18;
      if (v12 == v11)
      {
        v14 = *v4;
        v14[2] = *(*v4 + 2) + v18;
        v15 = &v14[5 * *(v14 + 50)];
        *(v15 + 180) += v13;
      }

      else
      {
        v16 = sub_248DCC54C(v4, v12, v18);
        v11 = v12;
        if (v16)
        {
          goto LABEL_19;
        }
      }

      v10 += v18;
      v9 -= v18;
      if (!v9)
      {
        goto LABEL_18;
      }
    }
  }

  v6 = v5;
LABEL_4:
  sub_248DD4E4C(v4);
  v4 = 0;
LABEL_5:
  *a2 = v4;
  return v6;
}

uint64_t sub_248DCC54C(uint64_t a1, int a2, uint64_t a3)
{
  sub_248DD4EF8();
  nullsub_4(a1);
  v6 = sub_248DD4EEC(a1);
  v7 = sub_248DD4D98();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    sub_248DD4E90(a1, v6 + 40);
    v8 = sub_248DD4D98();
    if (!v8)
    {
      v9 = *a1;
      v10 = *(*a1 + 200);
      *(v9 + 200) = v10 + 1;
      v11 = v9 + 40 * v10;
      *(v11 + 208) = 0u;
      *(v11 + 224) = 0u;
      *(v11 + 240) = 0;
      *(v11 + 204) = a2;
      *(v11 + 220) = a3;
      v12 = *a1;
      v13 = *(*a1 + 16);
      *(v11 + 212) = v13;
      *(v12 + 16) = v13 + a3;
    }
  }

  nullsub_4(a1);
  return v8;
}

uint64_t *sub_248DCC620()
{
  result = *(v0 + 160);
  v2 = *result;
  return result;
}

uint64_t sub_248DCC6A0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "index node %p\n", a2);
  fprintf(*v6, "   fSignature           %4.4s\n", a2);
  fprintf(*v6, "   fIndexNodeNumber     %u\n", *(a2 + 4));
  fprintf(*v6, "   fNextIndexNodeOffset 0x%016qX (%qd)\n", *(a2 + 12), *(a2 + 12));
  result = fprintf(*v6, "   fFlags               0x%08X\n", *(a2 + 8));
  if (a3)
  {
    result = (*(*a1 + 96))(a1);
    if (result)
    {
      v8 = 0;
      v9 = a2 + 56;
      do
      {
        if (*(v9 + 4 * v8))
        {
          fprintf(*v6, "   fBandNumber[%3d]     ", v8);
          v10 = *v6;
          if (*(v9 + 4 * v8) == -1)
          {
            fwrite("(spare)\n", 8uLL, 1uLL, v10);
          }

          else
          {
            fprintf(v10, "%u\n", *(v9 + 4 * v8));
          }
        }

        ++v8;
        result = (*(*a1 + 96))(a1);
      }

      while (v8 < result);
    }
  }

  return result;
}

uint64_t sub_248DCC830(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = (*(*a1 + 64))(a1);
  *a4 = 0;
  if (a2 >= a3)
  {
    return 0;
  }

  v9 = v8;
  if (a2 % v8)
  {
    a2 = (v8 + a2) / v8 * v8;
  }

  v10 = (*(*a1 + 136))(a1, a2);
  if (*(a1 + 40) == a3)
  {
    if (a3 % v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    a3 = (v11 + a3) / v9 * v9;
  }

  v12 = a3 / v9 * v9;
  v13 = (*(*a1 + 136))(a1, v12 - 1);
  if (v12 - a2 < v9 || v10 > v13)
  {
    return 0;
  }

  v16 = v13;
  v17 = *(a1 + 72);
  if ((*(*a1 + 88))(a1))
  {
    v18 = 0;
    v19 = v17 + 64;
    do
    {
      v20 = *(v19 + 4 * v18);
      if (v20 + 1 >= 2 && v20 >= v10 && v20 <= v16)
      {
        *(*(a1 + 72) + 12) |= 1u;
        v23 = *(v19 + 4 * v18);
        v24 = *(a1 + 8);
        if (v23)
        {
          v25 = v24 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25 && *(a1 + 16) >= v23)
        {
          *(v24 + 8 * (v23 - 1)) = 0;
        }

        *(v19 + 4 * v18) = -1;
        ++*a4;
      }

      ++v18;
    }

    while (v18 < (*(*a1 + 88))(a1));
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    for (i = 1; i <= v26; ++i)
    {
      v28 = i - 1;
      v29 = *(a1 + 80);
      if (v26 <= v28 || v29 == 0)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29 + (*(*a1 + 80))(a1) * v28;
      }

      if ((*(*a1 + 96))(a1))
      {
        v32 = 0;
        v33 = v31 + 56;
        do
        {
          v34 = *(v33 + 4 * v32);
          if (v34 + 1 >= 2 && v34 >= v10 && v34 <= v16)
          {
            v37 = *(a1 + 80);
            v38 = (*(*a1 + 80))(a1);
            *(v37 + v38 * v28 + 8) |= 1u;
            v39 = *(v33 + 4 * v32);
            v40 = *(a1 + 8);
            if (v39)
            {
              v41 = v40 == 0;
            }

            else
            {
              v41 = 1;
            }

            if (!v41 && *(a1 + 16) >= v39)
            {
              *(v40 + 8 * (v39 - 1)) = 0;
            }

            *(v33 + 4 * v32) = -1;
            ++*a4;
          }

          ++v32;
        }

        while (v32 < (*(*a1 + 96))(a1));
      }

      v26 = *(a1 + 32);
    }
  }

  v42 = *(*a1 + 120);

  return v42(a1);
}

uint64_t sub_248DCCBF8(void *a1, uint64_t a2)
{
  v4 = a1[9];
  v5 = *(v4 + 28);
  *(v4 + 28) = a2;
  *(v4 + 12) |= 1u;
  *(v4 + 16) = a2;
  if (v5 > a2)
  {
    v6 = (*(*a1 + 160))(a1, a2);
    if (v6 || (v6 = (*(*a1 + 168))(a1, 0), v6))
    {
      v7 = v6;
      goto LABEL_15;
    }
  }

  v7 = (*(*a1 + 120))(a1);
  (*(*a1[3] + 472))();
  if (v7)
  {
LABEL_15:
    v13 = a1[5];
    v14 = a1[9];
    *(v14 + 28) = v13;
    *(v14 + 16) = v13;
    return v7;
  }

  v8 = a2 / (*(*a1 + 64))(a1);
  if (a2 % (*(*a1 + 64))(a1))
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_realloc(a1[1], 8 * v9, 0x100004000313F17uLL);
  if (!v10)
  {
    v7 = 12;
    goto LABEL_15;
  }

  a1[1] = v10;
  v11 = *(a1 + 4);
  if (v9 > v11)
  {
    bzero(&v10[8 * v11], 8 * (v9 - v11));
  }

  v7 = 0;
  *(a1 + 4) = v9;
  a1[5] = a2;
  return v7;
}

uint64_t sub_248DCCDE8(void *a1, uint64_t a2, _DWORD *a3, CFMutableArrayRef *a4)
{
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (a2 && ((*(*a2 + 352))(a2) & 1) != 0)
  {
    v10 = 2775;
LABEL_30:
    syslog(5, "CSparseFile::buildSortedBandList(): line %d: returning kDI_USERCANCELED", v10);
    if (Mutable)
    {
      CFRelease(Mutable);
      v12 = 0;
      Mutable = 0;
    }

    else
    {
      v12 = 0;
    }

    result = 112;
    goto LABEL_34;
  }

  v24 = a4;
  v11 = a1[9];
  v12 = 0;
  if ((*(*a1 + 88))(a1))
  {
    v13 = 0;
    v14 = (v11 + 64);
    do
    {
      result = *v14;
      if (result == -1)
      {
        ++v12;
      }

      else
      {
        if (!result)
        {
          goto LABEL_28;
        }

        v16 = CFNumberCreate(v8, kCFNumberSInt32Type, v14);
        CFArrayAppendValue(Mutable, v16);
        CFRelease(v16);
      }

      ++v13;
      ++v14;
    }

    while (v13 < (*(*a1 + 88))(a1));
  }

  if (*(a1 + 8))
  {
    v17 = 1;
    while (!a2 || ((*(*a2 + 352))(a2) & 1) == 0)
    {
      v18 = a1[10];
      if (v18 && (v19 = (v17 - 1), *(a1 + 8) > v19))
      {
        v20 = v18 + (*(*a1 + 80))(a1) * v19;
      }

      else
      {
        v20 = 0;
      }

      if ((*(*a1 + 96))(a1))
      {
        v21 = 0;
        v22 = (v20 + 56);
        do
        {
          result = *v22;
          if (result == -1)
          {
            ++v12;
          }

          else
          {
            if (!result)
            {
              goto LABEL_28;
            }

            v23 = CFNumberCreate(v8, kCFNumberSInt32Type, v22);
            CFArrayAppendValue(Mutable, v23);
            CFRelease(v23);
          }

          ++v21;
          ++v22;
        }

        while (v21 < (*(*a1 + 96))(a1));
      }

      if (++v17 > *(a1 + 8))
      {
        goto LABEL_27;
      }
    }

    v10 = 2797;
    a4 = v24;
    goto LABEL_30;
  }

LABEL_27:
  result = 0;
LABEL_28:
  a4 = v24;
LABEL_34:
  *a3 = v12;
  *a4 = Mutable;
  return result;
}

uint64_t *sub_248DCD104()
{
  result = *(v0 + 24);
  v2 = *result;
  return result;
}

uint64_t sub_248DCD1B4(uint64_t a1)
{
  result = (*(**(a1 + 176) + 72))(*(a1 + 176));
  if (result)
  {
    v2 = result;
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%1$@ (part)", result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

uint64_t sub_248DCD288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 168);
  if (v3 >= a2 && a3 + a2 <= v3)
  {
    return (*(**(a1 + 176) + 144))(*(a1 + 176), *(a1 + 160) + a2);
  }

  else
  {
    return 22;
  }
}

__CFDictionary *sub_248DCD32C(uint64_t a1)
{
  v2 = sub_248DC2838(a1);
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(v2, @"Size Information", Mutable);
    v5 = DIGetBundleRef();
    if (v5)
    {
      v6 = sub_248DD4D90(v5, @"partial", @"partial");
      CFDictionaryAddValue(v2, @"Format Description", v6);
      if (v6)
      {
        CFRelease(v6);
      }

      CFDictionaryAddValue(v2, @"Format", @"SUBB");
      v15 = 0;
      valuePtr = (*(*a1 + 96))(a1) << 9;
      v7 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
      CFDictionaryAddValue(Mutable, @"Total Bytes", v7);
      if (v7)
      {
        CFRelease(v7);
      }

      valuePtr = 0;
      v8 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
      CFDictionaryAddValue(Mutable, @"Total Empty Bytes", v8);
      if (v8)
      {
        CFRelease(v8);
      }

      valuePtr = (*(*a1 + 96))(a1) << 9;
      v9 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
      CFDictionaryAddValue(Mutable, @"Total Non-Empty Bytes", v9);
      if (v9)
      {
        CFRelease(v9);
      }

      valuePtr = (*(*a1 + 96))(a1) << 9;
      v10 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
      CFDictionaryAddValue(Mutable, @"Compressed Bytes", v10);
      if (v10)
      {
        CFRelease(v10);
      }

      v15 = 0x3FF0000000000000;
      v11 = CFNumberCreate(v3, kCFNumberDoubleType, &v15);
      CFDictionaryAddValue(Mutable, @"Compressed Ratio", v11);
      if (v11)
      {
        CFRelease(v11);
      }

      valuePtr = (*(*a1 + 96))(a1);
      v12 = CFNumberCreate(v3, kCFNumberLongLongType, &valuePtr);
      CFDictionaryAddValue(Mutable, @"Sector Count", v12);
      if (v12)
      {
        CFRelease(v12);
      }

      Value = CFDictionaryGetValue(v2, @"Properties");
      CFDictionaryAddValue(Value, @"Compressed", @"no");
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_248DCD64C(uint64_t a1, uint64_t a2)
{
  if (sub_248DA9634(a1))
  {

    return sub_248DC661C(a1, a2);
  }

  else
  {
    v5 = *(**(a1 + 176) + 360);

    return v5();
  }
}

uint64_t sub_248DCD6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 104) || sub_248DA9634(a1))
  {

    return sub_248DA9878(a1, a2, a3);
  }

  else
  {
    v7 = *(**(a1 + 176) + 336);

    return v7();
  }
}

uint64_t sub_248DCD790(uint64_t a1, float a2)
{
  if (*(a1 + 112) || sub_248DA9634(a1))
  {

    return sub_248DA95A8(a1, a2);
  }

  else
  {
    v6 = *(**(a1 + 176) + 344);
    v4.n128_f32[0] = a2;

    return v6(v4);
  }
}

uint64_t sub_248DCD838(uint64_t a1)
{
  if (*(a1 + 120) || sub_248DA9634(a1))
  {

    return sub_248DAB700(a1);
  }

  else
  {
    v3 = *(**(a1 + 176) + 352);

    return v3();
  }
}

uint64_t sub_248DCD8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (!sub_248DA9634(a1))
  {
    v13 = *(v13 + 176);
  }

  return sub_248DC869C(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t DIUDIFDiskImageGetBLKXStartingAt_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 928);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 912);
  if (v3 < 1)
  {
    return 0;
  }

  while (1)
  {
    result = *v2;
    if (*v2)
    {
      if (*(*result + 8) == a2)
      {
        break;
      }
    }

    ++v2;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DCD9A8(uint64_t a1, char **a2, uint64_t a3)
{
  v5 = sub_248DA1560(a3);
  v19 = 0;
  v18 = 0;
  if ((*(*a1 + 296))(a1))
  {
    return 78;
  }

  v8 = sub_248DA4614(a2, &v18);
  v6 = 111;
  if ((v18 & 0x80000000) == 0 && v8)
  {
    *(a1 + 144) = v8;
    v9 = (*(*a2 + 10))(a2, v5);
    if (v9 || (v10 = (*(*a2 + 9))(a2), (*(*a1 + 520))(a1, v10), v9 = (*(*a2 + 34))(a2), v9))
    {
      v6 = v9;
      v11 = 0;
    }

    else
    {
      v12 = *a2;
      v13 = **a2;
      if (__dynamic_cast(a2, &unk_285BC9730, &unk_285BCBF28, 0))
      {
        (*(v12 + 88))(a2, a1 + 392);
        v14 = (*(*a2 + 43))(a2, &v19);
        if (v14)
        {
          v19 = 0;
          if (v14 == 78 || v14 == 2)
          {
            v6 = 108;
          }

          else
          {
            v6 = v14;
          }

          goto LABEL_22;
        }

        v16 = (*(*a1 + 584))(a1, v19);
        if (v16 || (v17 = 0, v16 = (*(*a2 + 37))(a2, &v17), v16) || (v16 = (*(*a1 + 592))(a1, v17), v16) || (v16 = (*(*a1 + 600))(a1), v16))
        {
          v6 = v16;
        }

        else
        {
          nullsub_4(*(a1 + 904));
          if (v19)
          {
            (*(*a2 + 44))(a2, 0);
            v19 = 0;
          }

          v6 = sub_248DA79A0(a1);
          if (!v6)
          {
            sub_248DA7A20(a1, a2);
            *(a1 + 360) = *(**(a1 + 904) + 16);
            return v6;
          }
        }

        v11 = 1;
      }

      else
      {
        v11 = 1;
        v6 = 108;
      }
    }

    if (v19)
    {
      (*(*a2 + 44))(a2, 0);
      v19 = 0;
      if ((v11 & 1) == 0)
      {
        return v6;
      }
    }

    else if (!v11)
    {
      return v6;
    }

LABEL_22:
    (*(*a2 + 35))(a2, 0);
  }

  return v6;
}

uint64_t sub_248DCDDE4(uint64_t a1, const char *a2)
{
  v2 = "";
  if (a2)
  {
    v2 = a2;
  }

  v3 = "YES";
  if (*(a1 + 104))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  if (!*(a1 + 112))
  {
    v3 = "NO";
  }

  return fprintf(*MEMORY[0x277D85DF8], "%s%qd at %qd (read %s, zero %s)\n", v2, *(a1 + 96), *(a1 + 88), v4, v3);
}

void sub_248DCDEB0(uint64_t a1, const __CFString *a2)
{
  v4 = sub_248DA081C(a2, 0x8000100u);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = v4 + 14;
  if (!v4[14])
  {
    goto LABEL_59;
  }

  if (strcmp(v4 + 14, "global"))
  {
    if (!strcmp(v6, "ddm"))
    {
      v8 = -1;
    }

    else
    {
      __endptr = 0;
      v7 = strtol(v6, &__endptr, 0);
      v8 = v7;
      if (*__endptr)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 < -2;
      }

      if (v9)
      {
        goto LABEL_59;
      }

      if (v7 << 32 == 0xFFFFFFFE00000000)
      {
        goto LABEL_10;
      }
    }

    v11 = v8 - *(a1 + 914);
    if (v11 < *(a1 + 912))
    {
      v10 = (*(a1 + 928) + 8 * v11);
      goto LABEL_14;
    }

LABEL_59:
    free(v5);
    return;
  }

LABEL_10:
  v10 = (a1 + 904);
  v8 = -2;
LABEL_14:
  v12 = *v10;
  if (!*v10)
  {
    goto LABEL_59;
  }

  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_59;
  }

  v15 = Mutable;
  v40 = a2;
  v16 = CFNumberCreate(v13, kCFNumberLongLongType, (*v12 + 8));
  CFDictionarySetValue(v15, @"sector-start", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = CFNumberCreate(v13, kCFNumberLongLongType, (*v12 + 16));
  CFDictionarySetValue(v15, @"sector-count", v17);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = sub_248DA9648(a1, v8);
  if (v18)
  {
    CFDictionarySetValue(v15, @"name", v18);
  }

  v19 = CFArrayCreateMutable(v13, 0, MEMORY[0x277CBF128]);
  if (v19)
  {
    v20 = v19;
    v38 = v5;
    theDict = v15;
    v37 = a1;
    v21 = *v12;
    v22 = *(*v12 + 200);
    valuePtr = 0;
    __endptr = 0;
    if (v22)
    {
      v23 = v21 + 208;
      value = *MEMORY[0x277CBED28];
      v41 = v19;
      do
      {
        v24 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v24)
        {
          free(v38);
          CFRelease(theDict);
          CFRelease(v20);
          return;
        }

        v25 = v24;
        v26 = 0;
        v27 = *(v23 - 4);
        __endptr = *(v23 + 4);
        valuePtr = *(v23 + 12);
        v28 = v27 >> 28;
        v42 = v22;
        if (v27 >> 28 > 7)
        {
          if (v28 == 8)
          {
            LOBYTE(v29) = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v26 = 1;
LABEL_37:
            LOBYTE(v27) = 1;
            goto LABEL_38;
          }

          LOBYTE(v29) = 0;
          v30 = 0;
          v31 = 0;
          LOBYTE(v27) = 0;
          v32 = 0;
          if (v28 == 15)
          {
            v26 = 0;
            LOBYTE(v29) = 0;
            v30 = 0;
            v31 = 0;
            LOBYTE(v27) = 0;
            v32 = 1;
          }
        }

        else
        {
          if (!v28)
          {
            if (v27 <= 2)
            {
              v26 = 0;
              v31 = 0;
              v32 = 0;
              v29 = 4u >> (v27 & 7);
              v30 = 1u >> (v27 & 7);
              goto LABEL_38;
            }

            v26 = 0;
            LOBYTE(v29) = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            goto LABEL_37;
          }

          LOBYTE(v29) = 0;
          v30 = 0;
          v31 = 0;
          LOBYTE(v27) = 0;
          v32 = 0;
          if (v28 == 7)
          {
            v26 = 0;
            LOBYTE(v29) = 0;
            v30 = 0;
            LOBYTE(v27) = 0;
            v32 = 0;
            v31 = 1;
          }
        }

LABEL_38:
        v33 = v13;
        v34 = CFNumberCreate(v13, kCFNumberLongLongType, &__endptr);
        CFDictionarySetValue(v25, @"sector-start", v34);
        if (v34)
        {
          CFRelease(v34);
        }

        v35 = CFNumberCreate(v33, kCFNumberLongLongType, &valuePtr);
        CFDictionarySetValue(v25, @"sector-count", v35);
        if (v35)
        {
          CFRelease(v35);
        }

        if (v31)
        {
          v36 = CFNumberCreate(v33, kCFNumberSInt32Type, v23);
          CFDictionarySetValue(v25, @"comment", v36);
          if (v36)
          {
            CFRelease(v36);
          }
        }

        if (v32)
        {
          CFDictionarySetValue(v25, @"terminator", value);
        }

        v13 = v33;
        v20 = v41;
        if (v27)
        {
          CFDictionarySetValue(v25, @"data", value);
        }

        if (v30)
        {
          CFDictionarySetValue(v25, @"zero", value);
          if (v29)
          {
            goto LABEL_56;
          }
        }

        else if (v29)
        {
LABEL_56:
          CFDictionarySetValue(v25, @"ignored", value);
          if (!v26)
          {
            goto LABEL_53;
          }

LABEL_52:
          CFDictionarySetValue(v25, @"compressed", value);
          goto LABEL_53;
        }

        if (v26)
        {
          goto LABEL_52;
        }

LABEL_53:
        CFArrayAppendValue(v41, v25);
        CFRelease(v25);
        v23 += 40;
        v22 = v42 - 1;
      }

      while (v42 != 1);
    }

    CFDictionarySetValue(theDict, @"runs", v20);
    CFRelease(v20);
    (*(*v37 + 32))(v37, v40, theDict);
    CFRelease(theDict);
    v5 = v38;
    goto LABEL_59;
  }

  free(v5);

  CFRelease(v15);
}

void sub_248DCE40C(uint64_t a1)
{
  sub_248DADE60(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DCE444(uint64_t a1)
{
  v1 = **(a1 + 928);
  if (!v1)
  {
    return 22;
  }

  v3 = 40 * (*(*v1 + 50) - 1);
  v4 = sub_248DD4E14(v3 + 244);
  *(a1 + 904) = v4;
  if (v4)
  {
    memcpy(*v4, *v1, v3 + 244);
    result = 0;
    *(**(a1 + 904) + 8) = 0;
  }

  else if (sub_248DD4D98())
  {
    return 12;
  }

  else
  {
    return 0;
  }

  return result;
}

__CFDictionary *sub_248DCE4D8(uint64_t a1)
{
  v1 = sub_248DC3118(a1);
  v2 = DIGetBundleRef();
  v3 = sub_248DD4D90(v2, @"[restricted segment]", @"[restricted segment]");
  Value = CFDictionaryGetValue(v1, @"Format Description");
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ %@", Value, v3);
  CFDictionarySetValue(v1, @"Format Description", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v1;
}

uint64_t sub_248DCE594(uint64_t a1)
{
  v1 = sub_248DA9678((**(a1 + 904) + 64));
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void sub_248DCE614(unsigned int *a1, uint64_t a2)
{
  (*(*a1 + 344))(a1, 0.0);
  v4 = DIGetBundleRef();
  v5 = sub_248DD4D90(v4, @"Checksumming restricted segment %1$d\\U2026", @"Checksumming restricted segment %1$d\\U2026");
  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, v5, a1[112]);
  (*(*a1 + 336))(a1, v6, 16);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  sub_248DA992C(a1, *(a1 + 113), a2);
}

uint64_t sub_248DCE7D4(uint64_t a1, int a2)
{
  v4 = sub_248DA9FB8(a1);
  *v4 = &unk_285BCB208;
  *(v4 + 112) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  if (a2)
  {
    v5 = malloc_type_malloc(0x100000uLL, 0x100004077774924uLL);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 104) = v5;
  return a1;
}

void sub_248DCE864()
{
  sub_248DA799C();

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DCE8B0(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return memmove(v19, a2, a19 << 9);
}

void *sub_248DCE8CC(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004077774924uLL);
}

void sub_248DCE8F0(char **a1)
{
  sub_248DAE348(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DCE928(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 416))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCE964(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 424))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCE9A0(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t sub_248DCE9D0(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 112))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEA04(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 136))();
  }

  return result;
}

uint64_t sub_248DCEA34(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    return (*(*v3 + 144))();
  }

  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  return 999;
}

uint64_t sub_248DCEA78(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 200))();
  }

  return result;
}

uint64_t sub_248DCEAA8(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 232))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEADC(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 256))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEB18(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 288))();
  }

  return result;
}

uint64_t sub_248DCEB50(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 296))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEB8C(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 312))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEBC8(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 328))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEC04(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 336))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEC40(uint64_t a1)
{
  result = *(a1 + 200);
  if (result)
  {
    return (*(*result + 352))();
  }

  return result;
}

uint64_t sub_248DCEC78(void *a1)
{
  if (((*(*a1 + 592))(a1) & 1) != 0 || (v2 = a1[25]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (*(*v2 + 360))(v2);
  }

  (*(*a1 + 600))(a1);
  return v3;
}

uint64_t sub_248DCED3C(void *a1)
{
  (*(*a1 + 608))(a1);
  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    v2 = a1[25];
    if (v2)
    {
      (*(*v2 + 368))(v2, 0);
    }
  }

  return 0;
}

uint64_t sub_248DCEE04(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 376))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEE40(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 384))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEE7C(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 392))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEEB8(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 400))();
  }

  else
  {
    return 999;
  }
}

uint64_t sub_248DCEEF4(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    return (*(*v1 + 408))();
  }

  else
  {
    return 999;
  }
}

void sub_248DCEF48(char **a1)
{
  sub_248DAE348(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DCEFA8(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 224);
  }

  return 0;
}

uint64_t sub_248DCEFBC(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 224);
  }

  return 0;
}

uint64_t sub_248DCF000(uint64_t a1)
{
  v1 = bswap32(*a1);
  *a1 = v1;
  v2 = vrev32q_s8(*(a1 + 36));
  *(a1 + 36) = v2;
  if (v2.i32[3] > 0x200u || v1 > 0x20)
  {
    return 108;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DCF038(_DWORD *a1)
{
  if (a1[120] == 1)
  {
    v1 = *(a1 + 598) > 0x20u || *(a1 + 646) > 0x400u;
    v2 = 256;
    v6 = v1 || *(a1 + 682) > 0x100u || *(a1 + 982) > 0x100u || *(a1 + 1282) > 0x100u;
    v7 = 1542;
  }

  else
  {
    v6 = *(a1 + 570) > 0x400u;
    v2 = 1024;
    v7 = 578;
  }

  if (*(a1 + v7) > v2 || v6)
  {
    return 108;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248DCF0B4(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = 566;
  if (*(a1 + 480) == 1)
  {
    v2 = 642;
  }

  v3 = *(a1 + v2);
  v4 = 570;
  if (*(a1 + 480) == 1)
  {
    v4 = 646;
  }

  v5 = *(a1 + v4);
  v6 = 574;
  if (*(a1 + 480) == 1)
  {
    v6 = 942;
  }

  v7 = *(a1 + v6);
  v8 = 562;
  if (*(a1 + 480) == 1)
  {
    v8 = 638;
  }

  v9 = *(a1 + v8);
  v10 = DIGetBundleRef();
  v11 = sub_248DD4D90(v10, @"(CSSM non-standard algorithm)", @"(CSSM non-standard algorithm)");
  if (v11)
  {
    v12 = v11;
    (*(*a1 + 32))(a1, @"encryption-class", v11);
    CFRelease(v12);
  }

  if (v7 && v7 != 91 || (v3 != -2147483647 ? (v13 = v3 == 0) : (v13 = 1), !v13))
  {
    v29 = "unrecognized encryption-class specified.";
    goto LABEL_38;
  }

  if (v9 != 5)
  {
    v29 = "unrecognized encryption-mode specified.";
    goto LABEL_38;
  }

  if (v5 == 128)
  {
    v14 = @"AES-128";
    v15 = 16;
    goto LABEL_23;
  }

  if (v5 != 256)
  {
    v29 = "unsupported key-size specified.";
LABEL_38:
    sub_248DB9740(125, v29);
  }

  v14 = @"AES-256";
  v15 = 32;
LABEL_23:
  *(a1 + 2032) = v15;
  (*(*a1 + 32))(a1, @"encryption-class", v14);
  *(a1 + 2040) = CFDataGetBytePtr(*(a1 + 2016));
  BytePtr = CFDataGetBytePtr(*(a1 + 2024));
  Length = CFDataGetLength(*(a1 + 2024));
  v18 = Length;
  if (!Length)
  {
    goto LABEL_27;
  }

  v19 = Length;
  v20 = data;
  v21 = BytePtr;
  do
  {
    v22 = *v21++;
    *v20++ = v22 ^ 0x36;
    --v19;
  }

  while (v19);
  if (Length > 0x3F)
  {
    v23 = 0;
  }

  else
  {
LABEL_27:
    memset(&data[Length & 0x3F], 54, (64 - Length) & 0x7FLL);
    v23 = 1;
  }

  CC_SHA1_Init((a1 + 1824));
  CC_SHA1_Init((a1 + 1920));
  CC_SHA1_Update((a1 + 1824), data, 0x40u);
  if (v18)
  {
    v24 = v18;
    v25 = data;
    do
    {
      v26 = *BytePtr++;
      *v25++ = v26 ^ 0x5C;
      --v24;
    }

    while (v24);
  }

  if (v23)
  {
    memset(&data[v18 & 0x3F], 92, (64 - v18) & 0x7FLL);
  }

  result = CC_SHA1_Update((a1 + 1920), data, 0x40u);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DCF364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 480) != 2)
  {
    return 0;
  }

  v11[8] = v3;
  v11[9] = v4;
  if (*(a1 + 540))
  {
    v8 = 0;
    v9 = 0;
    while ((sub_248DCF428(a1, a2, a3, (*(a1 + 528) + v8)) & 1) == 0)
    {
      ++v9;
      v8 += 616;
      if (v9 >= *(a1 + 540))
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  else
  {
LABEL_6:
    v11[0] = a3;
    v11[1] = a2;
    return sub_248DCF5FC(a1, v11);
  }
}

void sub_248DCF414(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x248DCF3F8);
}

uint64_t sub_248DCF428(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = (a4[21] >> 3);
  v7 = (MEMORY[0x28223BE20])();
  v9 = v26 - v8;
  v11 = *(v10 + 48);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v26 - ((v13 + 15) & 0x1FFFFFFF0);
  v30[0] = *(v15 + 48);
  v30[1] = v14;
  v29[0] = v6;
  v29[1] = v9;
  v28[0] = v17;
  v28[1] = v16;
  v18 = sub_248DCFCE8(v12, v28, a4, v29, v30);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = a4[25];
  MEMORY[0x28223BE20](v18);
  v21 = v26 - ((dataOutAvailable + 15) & 0x1FFFFFFF0);
  v27 = 0;
  v22 = a4[22];
  if (v22 == -2147483647)
  {
    v23 = 0;
  }

  else
  {
    if (v22 != 17)
    {
      sub_248DB9740(45, "Unsupported key encryption algorithm.");
    }

    v23 = 2;
  }

  if (!CCCrypt(1u, v23, 1u, v9, v6, v14, a4 + 26, dataOutAvailable, v26 - ((dataOutAvailable + 15) & 0x1FFFFFFF0), dataOutAvailable, &v27))
  {
    v26[0] = v27;
    v26[1] = v21;
    result = sub_248DBA4A8(a1, v26);
  }

  else
  {
LABEL_7:
    result = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DCF5FC(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 570);
  v3 = *(a1 + 570);
  if (*a2 == (((*(a1 + 578) + v3) >> 2) & 0x3FFFFFFE))
  {
    v5 = a2[1];
    v6 = v3 >> 3;
    v7 = ((*(a1 + 570) >> 3) + 15) & 0x3FFFFFF0;
    v8 = MEMORY[0x28223BE20](a1);
    v9 = v2[2] >> 3;
    MEMORY[0x28223BE20](v8);
    v13 = v23 - v12;
    v14 = *v2;
    v24 = v11;
    if (v14 < 8)
    {
LABEL_7:
      if (v10 < 8)
      {
LABEL_11:
        v20 = *MEMORY[0x277CBECE8];
        *(a1 + 2016) = CFDataCreate(*MEMORY[0x277CBECE8], v24, v6);
        *(a1 + 2024) = CFDataCreate(v20, v13, v9);
        result = 1;
      }

      else
      {
        v18 = 0;
        v19 = v13;
        while (sscanf(&v5[(*v2 >> 2) & 0x3FFFFFFE], "%02hhx", v19) == 1)
        {
          ++v18;
          ++v19;
          v5 += 2;
          if (v18 >= v2[2] >> 3)
          {
            goto LABEL_11;
          }
        }

        result = 0;
      }
    }

    else
    {
      v23[1] = v23;
      v15 = 0;
      v16 = v5;
      v17 = v11;
      while (sscanf(v16, "%02hhx", v17) == 1)
      {
        ++v15;
        ++v17;
        v16 += 2;
        if (v15 >= *v2 >> 3)
        {
          v10 = v2[2];
          goto LABEL_7;
        }
      }

      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248DCF80C(uint64_t a1, const __CFString *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 && (bzero(buffer, 0x400uLL), v4 = CFGetTypeID(a2), v4 == CFStringGetTypeID()) && CFStringGetCString(a2, buffer, 1023, 0x8000100u))
  {
    v5 = strlen(buffer);
    if (sub_248DCF364(a1, buffer, v5))
    {
      result = 0;
    }

    else
    {
      result = 80;
    }
  }

  else
  {
    result = 22;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}