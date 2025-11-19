uint64_t sub_248DCF8DC(_DWORD *a1, const __CFDictionary *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  bzero(cStr, 0x400uLL);
  if (!a2)
  {
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(a2, @"new-passphrase");
  if (!Value)
  {
    v7 = 0;
    goto LABEL_10;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(Value))
  {
    v8 = CFArrayGetTypeID();
    if (v8 == CFGetTypeID(Value) && a1[120] != 1)
    {
      v7 = CFRetain(Value);
      goto LABEL_10;
    }

    v20 = "key specified, but wrong type.";
    v21 = 22;
LABEL_25:
    sub_248DB9740(v21, v20);
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v20 = "cannot create passphrase array.\n";
    v21 = -4960;
    goto LABEL_25;
  }

  v7 = Mutable;
  CFArrayAppendValue(Mutable, Value);
LABEL_10:
  v9 = CFDictionaryGetValue(a2, @"new-passphrase-index");
  if (v9)
  {
    v10 = CFNumberGetTypeID();
    if (v10 == CFGetTypeID(v9))
    {
      sub_248DB7EC4(v9, kCFNumberSInt32Type, &v23);
    }
  }

  if (!v7)
  {
LABEL_14:
    v11 = DIGetBundleRef();
    v22 = sub_248DD4D90(v11, @"Enter a new password to secure %1$@. If you forget this password you will not be able to access the files stored on this image. Forgotten passwords cannot be retrieved.", @"Enter a new password to secure %1$@. If you forget this password you will not be able to access the files stored on this image. Forgotten passwords cannot be retrieved.");
    (*(*a1 + 712))(a1);
    v12 = *MEMORY[0x277CBECE8];
    v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
    bzero(cStr, 0x400uLL);
    if (v13)
    {
      v14 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
      v7 = v14;
      if (v14)
      {
        CFArrayAppendValue(v14, v13);
        CFRelease(v13);
        sub_248DD01A8(&v22);
        goto LABEL_17;
      }

      v18 = "cannot create passphrase array.\n";
      v19 = -4960;
    }

    else
    {
      v18 = "passphrase is not valid UTF-8 string.";
      v19 = 999;
    }

    sub_248DB9740(v19, v18);
  }

LABEL_17:
  v15 = (*(*a1 + 720))(a1, v7, v23);
  if (v15)
  {
    sub_248DB9740(v15, "unable to change keys.");
  }

  CFRelease(v7);
  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_248DCFBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  if (a2)
  {
    sub_248DD01A8(&a10);
    v12 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      (*(*v12 + 24))(v12);
    }

    __cxa_end_catch();
    JUMPOUT(0x248DCFB44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_248DCFCE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 84);
  v6 = *(a3 + 48);
  if (*a2 != 2 * (v6 + (v5 >> 3)))
  {
    return 0;
  }

  v8 = a2[1];
  v9 = *(a5 + 8);
  if (v5 < 8)
  {
LABEL_7:
    if (v6)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = sscanf((v8 + (v13 & 0xFFFFFFFE) + ((*(a3 + 84) >> 2) & 0x3FFFFFFE)), "%02hhx", v9) == 1;
        result = v15;
        if (!v15)
        {
          break;
        }

        ++v14;
        v13 += 2;
        ++v9;
      }

      while (v14 < *(a3 + 48));
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v10 = 0;
    v11 = *(a4 + 8);
    v12 = a2[1];
    while (sscanf(v12, "%02hhx", v11) == 1)
    {
      ++v10;
      ++v11;
      v12 += 2;
      if (v10 >= *(a3 + 84) >> 3)
      {
        v6 = *(a3 + 48);
        goto LABEL_7;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_248DCFE44(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(*a1 + 496))(a1);
  v7 = *(a1 + 488);
  v8 = *(a1 + 496);
  v9 = a2 % v7;
  v10 = v7 - a2 % v7;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = v10 + a2;
  if (*(a1 + 480) == 1)
  {
    v12 = v11 + 1276;
  }

  else
  {
    v12 = *(a1 + 504) + v11;
  }

  if (a2 == v8)
  {
    return 0;
  }

  if (!v6)
  {
    return 999;
  }

  result = (*(*v6 + 312))(v6, v12);
  if (!result)
  {
    *(a1 + 512) = v12;
    *(a1 + 496) = a2;
    result = sub_248DB9C7C(a1);
    if (!result && a2 > v8 && a3)
    {
      v14 = malloc_type_calloc(1uLL, 32 * *(a1 + 488), 0x100004077774924uLL);
      v21 = 0;
      if (v14)
      {
        v15 = v14;
        v16 = a2 - v8;
        if (v16)
        {
          do
          {
            if (32 * *(a1 + 488) >= v16)
            {
              v17 = v16;
            }

            else
            {
              v17 = 32 * *(a1 + 488);
            }

            v18 = (*(*a1 + 336))(a1, v8, v17, &v21, v15);
            v16 -= v21;
            v8 += v21;
            if (v18)
            {
              v19 = 1;
            }

            else
            {
              v19 = v21 == 0;
            }
          }

          while (!v19 && v16 != 0);
        }

        free(v15);
        return 0;
      }

      return 12;
    }
  }

  return result;
}

int8x8_t sub_248DD0004(uint64_t a1)
{
  v1 = vrev32q_s8(*(a1 + 32));
  *(a1 + 16) = vrev32q_s8(*(a1 + 16));
  *(a1 + 32) = v1;
  *(a1 + 48) = vrev32_s8(*(a1 + 48));
  *(a1 + 88) = vrev32q_s8(*(a1 + 88));
  *(a1 + 136) = bswap32(*(a1 + 136));
  *(a1 + 396) = vrev32_s8(*(a1 + 396));
  *(a1 + 436) = bswap32(*(a1 + 436));
  *(a1 + 696) = vrev32_s8(*(a1 + 696));
  *(a1 + 736) = bswap32(*(a1 + 736));
  *(a1 + 996) = bswap32(*(a1 + 996));
  *(a1 + 1256) = bswap64(*(a1 + 1256));
  result = vrev32_s8(*(a1 + 1264));
  *(a1 + 1264) = result;
  *(a1 + 1272) = bswap32(*(a1 + 1272));
  return result;
}

const __CFDictionary *sub_248DD00A0(uint64_t a1)
{
  v1 = sub_248DAC9B0(a1);
  v2 = MEMORY[0x277CBECE8];
  if (v1)
  {
    Mutable = v1;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return Mutable;
    }
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(Mutable, @"owner-mode");
  if (Value && CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr))
  {
    v5 = valuePtr & 0x1C0;
  }

  else
  {
    v5 = 448;
  }

  valuePtr = v5;
  v6 = CFNumberCreate(*v2, kCFNumberSInt16Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"owner-mode", v6);
  CFRelease(v6);
  return Mutable;
}

void sub_248DD0170(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x24C1EBE70);
}

const void **sub_248DD01A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_248DD01E8(uint64_t a1)
{
  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    if (*(a1 + 778) == 1)
    {
      result = sub_248DCEC78(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v3 = (*(*a1 + 496))(a1);
      result = (*(*v3 + 360))(v3);
      if (result)
      {
        return result;
      }
    }
  }

  (*(*a1 + 600))(a1);
  return 0;
}

uint64_t sub_248DD02E8(unsigned __int8 *a1, uint64_t a2)
{
  (*(*a1 + 608))(a1);
  if ((*(*a1 + 592))(a1))
  {
    return 0;
  }

  v5 = a1[778];
  v6 = (*(*a1 + 496))(a1);
  if (v5 == 1)
  {
    if (!v6)
    {
      return 999;
    }

    v7 = *(*(*(*a1 + 496))(a1) + 280);

    return v7();
  }

  if (!v6 || (v8 = (*(*a1 + 496))(a1), result = (*(*v8 + 368))(v8, a2), !result))
  {
    v7 = *(*(*(*a1 + 496))(a1) + 368);

    return v7();
  }

  return result;
}

uint64_t sub_248DD052C(_BYTE *a1, void *a2)
{
  if (a1[778] == 1)
  {

    return sub_248DCEFA8(a1, a2);
  }

  else
  {
    v3 = *(*(*(*a1 + 496))(a1) + 376);

    return v3();
  }
}

uint64_t sub_248DD05E0(_BYTE *a1, void *a2)
{
  if (a1[778] == 1)
  {

    return sub_248DCEFBC(a1, a2);
  }

  else
  {
    v3 = *(*(*(*a1 + 496))(a1) + 384);

    return v3();
  }
}

uint64_t sub_248DD0694(_BYTE *a1)
{
  if (a1[778])
  {
    return 78;
  }

  v3 = *(*(*(*a1 + 496))(a1) + 392);

  return v3();
}

uint64_t sub_248DD072C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(*a1 + 592))(a1))
  {
    return 9;
  }

  if (*(a1 + 778))
  {
    if (!a5)
    {
      return 22;
    }

    v9 = a1[96];
    if (v9 < a2 || a3 + a2 > v9)
    {
      return 29;
    }

    v12 = *(*(*(*a1 + 496))(a1) + 328);
    v13 = a1[95] + a2;
  }

  else
  {
    v12 = *(*(*(*a1 + 496))(a1) + 400);
  }

  return v12();
}

uint64_t sub_248DD08EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(*a1 + 592))(a1))
  {
    return 9;
  }

  if (*(a1 + 778))
  {
    if (!a5)
    {
      return 22;
    }

    v9 = a1[96];
    if (v9 < a2 || a3 + a2 > v9)
    {
      return 29;
    }

    v12 = *(*(*(*a1 + 496))(a1) + 336);
    v13 = a1[95] + a2;
  }

  else
  {
    v12 = *(*(*(*a1 + 496))(a1) + 408);
  }

  return v12();
}

__n128 sub_248DD0ABC(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 584);
  v2 = *(a1 + 600);
  v3 = *(a1 + 616);
  v4 = *(a1 + 648);
  *(a2 + 48) = *(a1 + 632);
  *(a2 + 64) = v4;
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  result = *(a1 + 664);
  v6 = *(a1 + 680);
  v7 = *(a1 + 696);
  *(a2 + 128) = *(a1 + 712);
  *(a2 + 96) = v6;
  *(a2 + 112) = v7;
  *(a2 + 80) = result;
  return result;
}

__n128 sub_248DD0AF4(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 312);
  v2 = *(a1 + 328);
  v3 = *(a1 + 344);
  v4 = *(a1 + 376);
  *(a2 + 48) = *(a1 + 360);
  *(a2 + 64) = v4;
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  result = *(a1 + 392);
  v6 = *(a1 + 408);
  v7 = *(a1 + 424);
  *(a2 + 128) = *(a1 + 440);
  *(a2 + 96) = v6;
  *(a2 + 112) = v7;
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_248DD0B78(void *a1, void *a2, void *a3, float a4, float a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a4;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v8 = DIGetBundleRef();
  v9 = sub_248DD4D90(v8, @"Validating %1$@\\U2026", @"Validating %1$@\\U2026");
  v10 = *MEMORY[0x277CBECE8];
  v11 = (*(*a1 + 192))(a1);
  v12 = CFStringCreateWithFormat(v10, 0, v9, v11);
  sub_248DC869C(a1, 0, a1, v12, 16, 0, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  (*(*a1 + 744))(a1, v39);
  v13 = sub_248DA7FAC(v39[0]);
  if (v13)
  {
    v14 = v13;
    v15 = sub_248DA9678(v39);
    sub_248DC869C(a1, 3, a1, 2, 0, 0, 0);
    (*(*v14 + 48))(v14);
    sub_248DC869C(a1, 1, a1, &v38, 0, 0, 0);
    v37 = 0;
    v16 = (*(*a1 + 272))(a1);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v22 = malloc_type_malloc(0x100000uLL, 0xF8E2780DuLL);
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = 0;
        v26 = a5 - a4;
        v27 = a1[33];
        v28 = a4;
        v29 = v27;
        while (1)
        {
          if (!v29)
          {
            v32 = 0;
            goto LABEL_31;
          }

          v30 = v29 >= 0x100000 ? 0x100000 : v29;
          v31 = (*(*a1 + 328))(a1, v24, v30, &v37, v23);
          if (v31)
          {
            break;
          }

          (*(*v14 + 56))(v14, v23, v30);
          v25 += v30;
          v38 = a4 + ((v25 / v27) * v26);
          if ((v38 - v28) >= 1.0)
          {
            sub_248DC869C(a1, 1, a1, &v38, 0, 0, 0);
            v28 = v38;
          }

          v24 += v30;
          v29 -= v30;
          if (sub_248DC869C(a1, 2, a1, 0, 0, 0, 0))
          {
            v32 = 112;
            goto LABEL_31;
          }
        }

        v32 = v31;
LABEL_31:
        free(v23);
        (*(*v14 + 72))(v14);
        v33 = sub_248DAB8AC(a1, v15, v14);
        if (v33)
        {
          v34 = v33;
          sub_248DC869C(a1, 0, a1, v33, 16, 0, 0);
          CFRelease(v34);
        }

        if ((*(*v15 + 152))(v15, v14))
        {
          v17 = v32;
        }

        else
        {
          v17 = 117;
        }
      }

      else
      {
        v17 = 12;
      }

      (*(*a1 + 280))(a1, 0);
    }

    DIDiskImageObjectRelease(v14);
    if (v15)
    {
      DIDiskImageObjectRelease(v15);
    }
  }

  else
  {
    v18 = DIGetBundleRef();
    v19 = sub_248DD4D90(v18, @"Unknown checksum type %1$ld.", @"Unknown checksum type %1$ld.");
    v20 = (*(*a1 + 192))(a1);
    v21 = CFStringCreateWithFormat(v10, 0, v19, v20);
    sub_248DC869C(a1, 0, a1, v21, 16, 0, 0);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    v17 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_248DD10C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  if ((*(*a1 + 592))(a1) & 1) != 0 || ((*(*a1 + 616))(a1))
  {
    return 16;
  }

  v6 = (*(*a2 + 48))(a2);
  if (!v6)
  {
    if (DIUDIFFileAccessGetResourceFile_0(a3, &v14))
    {
      v6 = 999;
    }

    else
    {
      v8 = (*(*v14 + 288))(v14, 0, 0);
      if (v8 || (v8 = (*(*v14 + 304))(v14, a2, 0, 0), v8) || (v8 = (*(*v14 + 200))(v14), v8) || (v8 = DIUDIFFileAccessWriteResourceFile_0(a3), v8))
      {
        v6 = v8;
      }

      else
      {
        v9 = sub_248DAFC18(a3);
        memcpy((a1 + 232), v9, 0x200uLL);
        v10 = *(a1 + 244);
        *(a1 + 778) = v10 & 1;
        if (v10)
        {
          v12 = *(a1 + 272);
          v11 = *(a1 + 280);
          *(a1 + 768) = v11;
          *(a1 + 760) = v12;
          sub_248DA4018(a1, v11);
          v13 = *(*(*a1 + 496))(a1);
          (*(v13 + 392))();
        }

        v6 = 0;
      }
    }

    (*(*a2 + 56))(a2);
  }

  return v6;
}

uint64_t sub_248DD1360(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v10 = 0;
  v4 = (*(*a1 + 96))(a1, a2, &v11);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v11 == 0;
  }

  if (v5)
  {
    return v4;
  }

  if (v11 < 1)
  {
    return (*(*a1 + 200))(a1);
  }

  LOWORD(v6) = 1;
  while (1)
  {
    v7 = (*(*a1 + 88))(a1);
    (*(*a1 + 80))(a1, 0);
    v8 = (*(*a1 + 112))(a1, a2, v6, &v10);
    (*(*a1 + 80))(a1, v7);
    if (v8)
    {
      break;
    }

    v4 = (*(*a1 + 192))(a1, v10);
    if (v4)
    {
      return v4;
    }

    sub_248DD4E4C(v10);
    v6 = (v6 + 1);
    if (v6 > v11)
    {
      return (*(*a1 + 200))(a1);
    }
  }

  return v8;
}

uint64_t sub_248DD1524(uint64_t a1, unsigned int (*a2)(uint64_t, void, void), uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13 = 0;
  memset(v17, 0, sizeof(v17));
  v6 = (*(*a1 + 64))(a1, &v16 + 2);
  if (!v6)
  {
    if (SHIWORD(v16) < 1)
    {
LABEL_18:
      v6 = (*(*a1 + 200))(a1);
    }

    else
    {
      LOWORD(v10) = 1;
      while (1)
      {
        v6 = (*(*a1 + 72))(a1, &v15, v10);
        if (v6)
        {
          break;
        }

        v6 = (*(*a1 + 96))(a1, v15, &v16);
        if (v6)
        {
          break;
        }

        if (v16 >= 1)
        {
          LOWORD(v11) = 1;
          do
          {
            v12 = (*(*a1 + 88))(a1);
            (*(*a1 + 80))(a1, 0);
            v7 = (*(*a1 + 112))(a1, v15, v11, &v14);
            (*(*a1 + 80))(a1, v12);
            if (v7)
            {
              goto LABEL_3;
            }

            v6 = (*(*a1 + 208))(a1, v14, &v13, &v15, v17);
            if (v6)
            {
              goto LABEL_2;
            }

            if (!a2 || a2(a3, v15, v13))
            {
              v6 = (*(*a1 + 192))(a1, v14);
              if (v6)
              {
                goto LABEL_2;
              }

              sub_248DD4E4C(v14);
              v14 = 0;
            }

            v11 = (v11 + 1);
          }

          while (v11 <= v16);
        }

        v10 = (v10 + 1);
        if (v10 > SHIWORD(v16))
        {
          goto LABEL_18;
        }
      }
    }
  }

LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_248DD1840(uint64_t a1, unsigned int a2, const unsigned __int8 *a3, void *a4)
{
  v10 = 0;
  if (a3 && a4)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      v8 = sub_248DD89F8(a1, a2, a3);
      if (v8)
      {
        result = sub_248DA6954(a1, a2, v8, &v10);
        v6 = v10;
      }

      else
      {
        v6 = 0;
        result = 4294967104;
      }
    }

    else
    {
      result = 4294967097;
    }

    goto LABEL_6;
  }

  result = 4294967246;
  if (a4)
  {
    v6 = 0;
LABEL_6:
    *a4 = v6;
  }

  return result;
}

uint64_t sub_248DD1918(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 4294967246;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  Count = CFDictionaryGetCount(v3);
  if (!Count)
  {
    return 0;
  }

  v6 = Count;
  v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v7)
  {
    return 4294967188;
  }

  v8 = v7;
  v9 = malloc_type_calloc(v6, 8uLL, 0x6004044C4A2DFuLL);
  if (v9)
  {
    v10 = v9;
    CFDictionaryGetKeysAndValues(*(a1 + 104), v8, v9);
    if (v6 < 1)
    {
      v17 = 0;
    }

    else
    {
      v11 = 0;
      while (1)
      {
        sub_248DA6EE8(v8[v11]);
        v12 = v10[v11];
        v13 = CFArrayGetCount(v12);
        if (v13 >= 1)
        {
          break;
        }

LABEL_14:
        if (++v11 >= v6)
        {
          v17 = 4294967104;
          goto LABEL_29;
        }
      }

      v14 = v13;
      v15 = 0;
      while (1)
      {
        v20 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        if (sub_248DA6B58(ValueAtIndex, ValueAtIndex, &v20))
        {
          if (v20 == a2)
          {
            break;
          }
        }

        if (v14 == ++v15)
        {
          goto LABEL_14;
        }
      }

      v19 = 0;
      if (sub_248DA6144(ValueAtIndex, @"Attributes", &v19))
      {
        if ((v19 & 8) != 0)
        {
          v17 = 4294967100;
        }

        else
        {
          CFArrayRemoveValueAtIndex(v12, v15);
          if (v14 == 1)
          {
            CFDictionaryRemoveValue(*(a1 + 104), v8[v11]);
          }

          v17 = 0;
          *(a1 + 112) |= 0x20u;
        }
      }

      else
      {
        v17 = 4294967097;
      }
    }

LABEL_29:
    free(v10);
  }

  else
  {
    v17 = 4294967188;
  }

  free(v8);
  return v17;
}

uint64_t sub_248DD1AFC(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 104))
  {
    return 4294967246;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  result = sub_248DA67E0(a2);
  if (result)
  {
    v4 = result;
    CFDictionaryRemoveValue(*(a1 + 104), result);
    *(a1 + 112) |= 0x20u;
    CFRelease(v4);
    return 0;
  }

  return result;
}

uint64_t sub_248DD1BF8(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 112);
  }

  return 0;
}

const __CFArray *sub_248DD1C18(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (!a3)
  {
    return 4294967246;
  }

  *a3 = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  result = sub_248DA6784(a1, a2);
  if (result)
  {
    v5 = result;
    Count = CFArrayGetCount(result);
    while (1)
    {
      v7 = random();
      if (Count < 1)
      {
        break;
      }

      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        if (ValueAtIndex)
        {
          v10 = 0;
          if (sub_248DA6144(ValueAtIndex, @"ID", &v10))
          {
            if (v10 == v7)
            {
              break;
            }
          }
        }

        if (Count == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_14:
    result = 0;
    *a3 = v7;
  }

  return result;
}

uint64_t sub_248DD1CFC(CFDictionaryRef theDict, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{

  return sub_248DA6954(v11, v10, theDict, &a10);
}

void sub_248DD1D1C(FILE *a1, const __CFString *a2, CFStringEncoding a3)
{
  fflush(a1);
  if (a2)
  {
    Length = CFStringGetLength(a2);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a3);
    v8 = malloc_type_malloc(MaximumSizeForEncoding, 0x6E35B2E5uLL);
    if (v8)
    {
      v9 = v8;
      usedBufLen = 0;
      v12.length = CFStringGetLength(a2);
      v12.location = 0;
      CFStringGetBytes(a2, v12, a3, 0, 0, v9, MaximumSizeForEncoding, &usedBufLen);
      v10 = fileno(a1);
      write(v10, v9, usedBufLen);
      fflush(a1);
      free(v9);
    }
  }
}

void sub_248DD1DE8(const void *a1, const void *a2, void *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {

    CFDictionaryReplaceValue(cf, a1, a2);
  }
}

size_t sub_248DD1EBC(uint64_t a1)
{
  v2 = MEMORY[0x277D85DF8];
  result = fwrite("## ? ...score.. ...age... ...use... ...start ... ...length...\n", 0x3EuLL, 1uLL, *MEMORY[0x277D85DF8]);
  v4 = *(a1 + 208);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(a1 + 216);
      v7 = *(v6 + 8 * i);
      if (v7)
      {
        v8 = *v2;
        if (*(v7 + 24))
        {
          v9 = "+";
        }

        else
        {
          v9 = " ";
        }

        v10 = sub_248DADB60(*(v6 + 8 * i));
        result = fprintf(v8, "%2d %1.1s %+9qd %9qd %9qd %12qd %12qd\n", i, v9, v10, *(v7 + 16), *(v7 + 8), *(v7 + 32), *(v7 + 40));
        v4 = *(a1 + 208);
      }
    }
  }

  return result;
}

void *sub_248DD1FA4(void *a1)
{
  *a1 = &unk_285BCC278;
  v2 = a1[7];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void *sub_248DD1FF8(size_t a1)
{

  return malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
}

uint64_t sub_248DD201C(uint64_t result, unsigned int a2)
{
  *result = vrev32_s8(*result);
  *(result + 8) = bswap32(*(result + 8));
  *(result + 12) = bswap64(*(result + 12));
  if (a2)
  {
    v2 = (result + 56);
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

void sub_248DD20A4(const __CFArray *a1, CFArrayRef theArray, unint64_t a3, char a4)
{
  v33 = 0;
  v34 = 0;
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theArray);
  sub_248DD230C(a1, 1);
  sub_248DD230C(MutableCopy, 1);
  v35.length = CFArrayGetCount(a1);
  v35.location = 0;
  CFArraySortValues(a1, v35, sub_248DB5638, 0);
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 == CFDictionaryGetTypeID())
        {
          if (sub_248DB5720(v11, &v32, &v31, 0, &v30, &v29))
          {
            v14 = v31;
            v13 = v32;
            v15 = sub_248DB5940(a1, a3, 0);
            v16 = CFArrayGetCount(v15);
            if (v16 >= 1)
            {
              v17 = v13 + v14 - 1;
              v18 = v16 + 1;
              do
              {
                v19 = CFArrayGetValueAtIndex(v15, v18 - 2);
                if (v19)
                {
                  v20 = v19;
                  v21 = CFGetTypeID(v19);
                  if (v21 == CFDictionaryGetTypeID())
                  {
                    if (sub_248DB5720(v20, &v34, &v33, 0, 0, 0))
                    {
                      if (v34 <= v17)
                      {
                        v24 = v34 + v33 - 1;
                        if (v24 >= v32)
                        {
                          if (v34 <= v32)
                          {
                            v25 = v32;
                          }

                          else
                          {
                            v25 = v34;
                          }

                          if (v24 >= v17)
                          {
                            v26 = v17;
                          }

                          else
                          {
                            v26 = v34 + v33 - 1;
                          }

                          v27 = sub_248DB487C(v25, v26 - v25 + 1, 0, v30, v29, 0, v22, v23, 0);
                          CFArrayAppendValue(a1, v27);
                          CFRelease(v27);
                        }
                      }
                    }
                  }
                }

                --v18;
              }

              while (v18 > 1);
            }

            CFRelease(v15);
          }
        }
      }
    }
  }

  if ((a4 & 2) != 0)
  {
    sub_248DB58B0(a1, a3, (a4 & 0x10) != 0);
  }

  else
  {
    v36.length = CFArrayGetCount(a1);
    v36.location = 0;
    CFArraySortValues(a1, v36, sub_248DB5638, 0);
  }

  CFRelease(MutableCopy);
}

void sub_248DD230C(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    theString1 = 0;
    v9 = 0;
    v5 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 2);
      if (ValueAtIndex)
      {
        v7 = ValueAtIndex;
        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 == CFDictionaryGetTypeID() && sub_248DB5720(v7, 0, 0, &v9, &theString1, 0) && CFStringCompare(theString1, @"Apple_Free", 1uLL) == kCFCompareEqualTo && (!a2 || !v9))
        {
          CFArrayRemoveValueAtIndex(a1, v5 - 2);
        }
      }

      --v5;
    }

    while (v5 > 1);
  }
}

__CFDictionary *sub_248DD23F4(uint64_t a1, uint64_t a2, int a3, const void *a4, const void *a5, const void *a6, __CFString **a7)
{
  v28 = a2;
  valuePtr = a1;
  v27 = a3;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return Mutable;
  }

  v13 = CFNumberCreate(v11, kCFNumberLongLongType, &valuePtr);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  CFDictionarySetValue(Mutable, @"partition-start", v13);
  CFRelease(v14);
  v15 = CFNumberCreate(v11, kCFNumberLongLongType, &v28);
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  CFDictionarySetValue(Mutable, @"partition-length", v15);
  CFRelease(v16);
  if (a3)
  {
    v17 = CFNumberCreate(v11, kCFNumberSInt32Type, &v27);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(Mutable, @"partition-number", v17);
      CFRelease(v18);
      if (!a4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_12:
    CFRelease(Mutable);
    return 0;
  }

  CFDictionarySetValue(Mutable, @"partition-synthesized", *MEMORY[0x277CBED28]);
  if (a4)
  {
LABEL_7:
    CFDictionarySetValue(Mutable, @"partition-hint", a4);
  }

LABEL_8:
  if (a5)
  {
    CFDictionarySetValue(Mutable, @"partition-name", a5);
  }

  if (!a6)
  {
    goto LABEL_16;
  }

  v19 = @"partition-data";
  v20 = Mutable;
  v21 = a6;
  while (1)
  {
    CFDictionarySetValue(v20, v19, v21);
LABEL_16:
    v22 = a7;
    v26 = (a7 + 1);
    v19 = *v22;
    if (!*v22)
    {
      break;
    }

    v23 = v26;
    a7 = (v26 + 1);
    v21 = *v23;
    v20 = Mutable;
  }

  return Mutable;
}

char *sub_248DD25D8(char *a1)
{
  sub_248DA0C58(a1);
  *v2 = &unk_285BCC4B0;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 264) = 0u;
  sub_248DA0FD0(v2, @"thread-safe", *MEMORY[0x277CBED28]);
  return a1;
}

void *sub_248DD2664(uint64_t a1)
{
  *a1 = &unk_285BCC4B0;
  sub_248DD2B80(a1, 1);
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0u;

  return sub_248DA1C90(a1);
}

void sub_248DD26E0(uint64_t a1)
{
  sub_248DD2664(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DD2718(uint64_t a1, CFDictionaryRef theDict, void *a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a1 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"VectoredBackingStoreCallbackData");
    if (Value)
    {
      v5 = Value;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v5))
      {
        operator new();
      }
    }
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return 22;
}

__n128 sub_248DD2884(uint64_t a1, CFDataRef theData)
{
  *buffer = 0;
  if (theData && CFDataGetLength(theData) == 8)
  {
    v8.location = 0;
    v8.length = 8;
    CFDataGetBytes(theData, v8, buffer);
    v5 = *buffer;
    if (!**buffer)
    {
      v6 = *(*buffer + 8);
      *(a1 + 272) = v6;
      *(a1 + 208) = v6;
      *(a1 + 224) = *(v5 + 24);
      *(a1 + 240) = *(v5 + 40);
      result = *(v5 + 56);
      *(a1 + 256) = result;
    }
  }

  return result;
}

uint64_t sub_248DD2918(void *a1, const __CFURL *a2)
{
  sub_248DA1140(a1, a2);
  v3 = *(*a1 + 688);

  return v3(a1);
}

uint64_t sub_248DD2978(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = getpid();
  v4 = CFStringCreateWithFormat(v2, 0, @"%d:%p", v3, a1);
  if (!v4)
  {
    return 999;
  }

  v5 = v4;
  (*(*a1 + 552))(a1, v4);
  CFRelease(v5);
  return 0;
}

uint64_t sub_248DD2A18(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 568))(a1))
  {
    if (a2)
    {
      if ((*(*a1 + 88))(a1) == a2)
      {
        return 0;
      }

      else
      {
        return 13;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = (*(a1 + 216))(a1, *(a1 + 272), a2);
    if (!result)
    {

      return sub_248DA2374(a1, a2);
    }
  }

  return result;
}

uint64_t sub_248DD2AE8(uint64_t a1)
{
  if (((*(*a1 + 568))(a1) & 1) != 0 || (result = (*(a1 + 224))(a1, *(a1 + 272)), !result))
  {
    (*(*a1 + 576))(a1);
    return 0;
  }

  return result;
}

uint64_t sub_248DD2B80(void *a1, uint64_t a2)
{
  (*(*a1 + 584))(a1);
  if ((*(*a1 + 568))(a1))
  {
    return 0;
  }

  v5 = a1[32];
  v6 = a1[34];

  return v5(a1, v6, a2);
}

uint64_t sub_248DD2C40(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  return (*(a1 + 264))(a1, *(a1 + 272), a2);
}

uint64_t sub_248DD2C5C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!(*(*a1 + 568))(a1))
  {
    return 9;
  }

  result = 22;
  if (a4 && a5)
  {
    v11 = a1[29];
    v12 = a1[34];

    return v11(a1, v12, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_248DD2D28(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!(*(*a1 + 568))(a1))
  {
    return 9;
  }

  result = 22;
  if (a4 && a5)
  {
    if ((*(*a1 + 72))(a1))
    {
      v11 = a1[30];
      v12 = a1[34];

      return v11(a1, v12, a2, a3, a4, a5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *sub_248DD2E4C(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BCC798;
  v2[16] = 32;
  a1[15] = malloc_type_calloc(1uLL, 0x20uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
  a1[17] = MEMORY[0x277D85BD0];
  a1[18] = MEMORY[0x277D85BD8];
  a1[19] = MEMORY[0x277D85BC8];
  return a1;
}

void sub_248DD2F20(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DD2F84(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BCC868;
  v2[16] = 48;
  a1[15] = malloc_type_calloc(1uLL, 0x30uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  a1[17] = MEMORY[0x277D85BE8];
  a1[18] = MEMORY[0x277D85BF0];
  a1[19] = MEMORY[0x277D85BE0];
  return a1;
}

void sub_248DD3058(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DD30BC(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BCC938;
  v2[16] = 64;
  a1[15] = malloc_type_calloc(1uLL, 0x40uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  a1[17] = MEMORY[0x277D85C08];
  a1[18] = MEMORY[0x277D85C10];
  a1[19] = MEMORY[0x277D85C00];
  return a1;
}

void sub_248DD3190(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DD31F4(uint64_t a1, unsigned int a2, int a3, unint64_t a4, void *a5, void ****a6, int *a7, __CFArray **a8, char a9)
{
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  v103 = a7;
  if (!a1)
  {
    v18 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 22;
    goto LABEL_29;
  }

  v101 = a2;
  value[0] = 0;
  v100 = a1;
  v18 = sub_248DB36D8();
  v19 = CFGetTypeID(v18);
  if (v19 == CFDictionaryGetTypeID())
  {
    v20 = 999;
    if (CFDictionaryGetValueIfPresent(v18, @"partitions", value))
    {
      v21 = CFGetTypeID(value[0]);
      TypeID = CFArrayGetTypeID();
      v23 = v21 != TypeID;
      if (v21 == TypeID)
      {
        v20 = 0;
      }

      else
      {
        v20 = 999;
      }

      if (!v18)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (v23)
      {
        CFRelease(v18);
        v18 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v20 = 999;
  }

  v23 = 1;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_22:
  if (v20)
  {
LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  theArray = CFDictionaryGetValue(v18, @"partitions");
  v28 = CFDictionaryGetValue(v18, @"partition-scheme");
  if (v28)
  {
    v29 = CFStringCompare(v28, @"Apple", 0) != kCFCompareEqualTo;
  }

  else
  {
    v29 = 1;
  }

  Count = CFArrayGetCount(theArray);
  if (v101 == 5)
  {
    value[0] = &stru_285BCD368;
    v31 = CFArrayGetCount(theArray);
    sub_248DB7478(theArray, v31 - 1, 0, 0, value, 0);
    if (value[0])
    {
      v31 -= CFStringCompare(value[0], @"Apple_Free", 0) == kCFCompareEqualTo;
    }

    v101 = 2;
  }

  else
  {
    v31 = Count;
  }

  v98 = malloc_type_calloc(v31, 8uLL, 0x80040B8603338uLL);
  if (!v98)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v20 = 12;
    goto LABEL_25;
  }

  v107 = 0;
  v109 = 0;
  v93 = v31;
  if (v31 < 1)
  {
LABEL_210:
    v20 = 0;
LABEL_211:
    if (!a6)
    {
      goto LABEL_218;
    }

LABEL_216:
    if (v20)
    {
      goto LABEL_218;
    }

    v25 = v98;
    v24 = v93;
LABEL_219:
    v20 = 0;
    v26 = 1;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v92 = a3;
  v32 = 0;
  v97 = v31;
  v108 = 0;
  v33 = -2;
  if (v31 != 1)
  {
    v33 = 0;
  }

  v106 = 0;
  v90 = a9 != 0;
  v104 = 0;
  v105 = 0;
  v34 = -1;
  if (v29)
  {
    v34 = v33;
  }

  v95 = a4;
  v96 = v34;
  v91 = *MEMORY[0x277CBED28];
  v94 = Mutable;
  while (1)
  {
    v35 = sub_248DB7478(theArray, v32, &v109, &v108, &v106, &v105);
    if (v35)
    {
LABEL_213:
      v20 = v35;
LABEL_214:
      sub_248DC203C(v98, v97);
      goto LABEL_23;
    }

    v36 = sub_248DB01B0(&v104);
    if (v36)
    {
      break;
    }

    v37 = v104;
    v98[v32] = v104;
    v38 = *v37;
    *(v38 + 8) = v109;
    *(v38 + 16) = 0;
    *(v38 + 36) = v96 + v32;
    if (CFStringCompare(v106, @"Apple_HFS", 0) == kCFCompareEqualTo || CFStringCompare(v106, @"Apple_HFSX", 0) == kCFCompareEqualTo)
    {
      v35 = sub_248DB3258(v100, v109, v108, &v107);
      if (v35)
      {
        goto LABEL_213;
      }

      v40 = v107;
      v41 = v104;
      v111 = 0;
      valuePtr = 0;
      value[0] = 0;
      v110 = 0;
      MKMediaRef = DIMediaKitCreateMKMediaRef(v107, allocator, 0, value);
      if (MKMediaRef)
      {
        v20 = MKMediaRef;
        v43 = 0;
        a4 = v95;
LABEL_121:
        if (value[0])
        {
          CFRelease(value[0]);
          value[0] = 0;
        }

        if (v43)
        {
          CFRelease(v43);
        }

        Mutable = v94;
        goto LABEL_179;
      }

      v48 = (*(*v40 + 96))(v40);
      v43 = 0;
      v49 = 0;
      if (v101 <= 6)
      {
        if (((1 << v101) & 0x2C) != 0)
        {
          v110 = v48;
          v50 = v41;
          a4 = v95;
          v49 = sub_248DD4118(v50, v48, v92, v95);
          v43 = 0;
          if (!v49)
          {
            v48 = 0;
          }

          goto LABEL_115;
        }

        if (((1 << v101) & 0x42) != 0)
        {
          v54 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v54, @"Record Runs", v91);
          CFDictionarySetValue(v54, @"Record Container", v91);
          CFDictionarySetValue(v54, @"Record Markers", v91);
          v43 = MKCFCreateFSInfo();
          if (v54)
          {
            CFRelease(v54);
          }

          v49 = v111;
          if (!v111)
          {
            if (v43)
            {
              v55 = sub_248DAE894(v43, @"Volume block size");
              if (v55)
              {
                if (CFNumberGetValue(v55, kCFNumberSInt64Type, &valuePtr))
                {
                  valuePtr >>= 9;
                  v56 = sub_248DB3174(v43, @"Data Runs");
                  if (v56)
                  {
                    v49 = sub_248DD42F8(v41, v56, v48, v92, v95, v90, &v110);
                    if (v49)
                    {
                      a4 = v95;
                    }

                    else
                    {
                      v48 -= v110;
                      v110 = v48;
                      v49 = sub_248DD4118(v41, v48, 2, v95);
                      a4 = v95;
                      if (!v49)
                      {
                        v48 -= v110;
                      }
                    }

                    goto LABEL_115;
                  }
                }
              }
            }

            v49 = 999;
          }
        }
      }

      a4 = v95;
LABEL_115:
      if (v48)
      {
        v65 = v49 == 0;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v20 = 116;
      }

      else
      {
        v20 = v49;
      }

      goto LABEL_121;
    }

    if (CFStringCompare(v106, @"Apple_APFS", 0) == kCFCompareEqualTo)
    {
      v35 = sub_248DB3258(v100, v109, v108, &v107);
      if (v35)
      {
        goto LABEL_213;
      }

      v51 = v107;
      v52 = v104;
      v111 = 0;
      valuePtr = 0;
      value[0] = 0;
      v110 = 0;
      v53 = DIMediaKitCreateMKMediaRef(v107, allocator, 0, value);
      if (v53)
      {
        v20 = v53;
        v47 = 0;
        Mutable = v94;
        goto LABEL_175;
      }

      v61 = (*(*v51 + 96))(v51);
      v47 = 0;
      v62 = 0;
      if (v101 <= 6)
      {
        if (((1 << v101) & 0x2C) != 0)
        {
          v110 = v61;
          v62 = sub_248DD4118(v52, v61, v92, a4);
          v47 = 0;
          if (!v62)
          {
            v61 = 0;
          }
        }

        else if (((1 << v101) & 0x42) != 0)
        {
          v66 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v66, @"Record Runs", v91);
          CFDictionarySetValue(v66, @"Record Container", v91);
          CFDictionarySetValue(v66, @"Record Markers", v91);
          v89 = MKCFCreateFSInfo();
          if (v66)
          {
            CFRelease(v66);
          }

          v62 = v111;
          if (v111)
          {
            Mutable = v94;
            v47 = v89;
            goto LABEL_131;
          }

          v47 = v89;
          if (v89 && (v71 = sub_248DAE894(v89, @"Volume block size")) != 0 && CFNumberGetValue(v71, kCFNumberSInt64Type, &valuePtr) && (valuePtr >>= 9, (v72 = sub_248DB3174(v89, @"Data Runs")) != 0))
          {
            v62 = sub_248DD42F8(v52, v72, v61, v92, a4, v90, &v110);
            if (!v62)
            {
              v61 -= v110;
              v110 = v61;
              v62 = sub_248DD4118(v52, v61, 2, a4);
              if (!v62)
              {
                v61 -= v110;
              }
            }
          }

          else
          {
            v62 = 999;
          }
        }
      }

      Mutable = v94;
LABEL_131:
      if (v61)
      {
        v67 = v62 == 0;
      }

      else
      {
        v67 = 0;
      }

      if (v67)
      {
        v20 = 116;
      }

      else
      {
        v20 = v62;
      }

      goto LABEL_175;
    }

    if (CFStringCompare(v106, @"DOS_FAT_32", 0) == kCFCompareEqualTo || CFStringCompare(v106, @"DOS_FAT_16", 0) == kCFCompareEqualTo || CFStringCompare(v106, @"DOS_FAT_16_S", 0) == kCFCompareEqualTo || CFStringCompare(v106, @"Windows_FAT_16", 0) == kCFCompareEqualTo || CFStringCompare(v106, @"Windows_FAT_32", 0) == kCFCompareEqualTo || CFStringCompare(v106, @"DOS_FAT_12", 0) == kCFCompareEqualTo)
    {
      v35 = sub_248DB3258(v100, v109, v108, &v107);
      if (v35)
      {
        goto LABEL_213;
      }

      v44 = v107;
      v45 = v104;
      value[0] = 0;
      v46 = DIMediaKitCreateMKMediaRef(v107, allocator, 0, value);
      if (!v46)
      {
        v57 = (*(*v44 + 96))(v44);
        v58 = v57;
        valuePtr = 0;
        if (v101 > 6)
        {
          goto LABEL_172;
        }

        if (((1 << v101) & 0x2C) == 0)
        {
          if (((1 << v101) & 0x42) == 0)
          {
            goto LABEL_172;
          }

          v63 = v57;
          v64 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v64, @"Record On Bits", v91);
          v111 = 0;
          v88 = MKCFCreateFSInfo();
          if (v64)
          {
            CFRelease(v64);
          }

          v20 = v111;
          if (v111)
          {
            a4 = v95;
            v58 = v63;
          }

          else
          {
            v58 = v63;
            if (v88)
            {
              v110 = 0;
              v68 = sub_248DAE894(v88, @"Volume block size");
              if (v68)
              {
                if (CFNumberGetValue(v68, kCFNumberSInt64Type, &v110) && (v110 >>= 9, (v69 = sub_248DB3174(v88, @"Data Runs")) != 0))
                {
                  v70 = sub_248DD42F8(v45, v69, v63, v92, v95, 0, &valuePtr);
                  if (!v70)
                  {
                    v58 = v63 - valuePtr;
                    valuePtr = v58;
                    v86 = v45;
                    a4 = v95;
                    v20 = sub_248DD4118(v86, v58, 2, v95);
                    if (!v20)
                    {
                      v58 -= valuePtr;
                    }

                    goto LABEL_151;
                  }

                  v20 = v70;
                }

                else
                {
                  v20 = 999;
                }

                goto LABEL_206;
              }
            }

            v20 = 999;
            a4 = v95;
          }

LABEL_151:
          if (v58)
          {
            v73 = 116;
          }

          else
          {
            v73 = 0;
          }

          if (!v20)
          {
            v20 = v73;
          }

          v47 = v88;
          goto LABEL_175;
        }

LABEL_101:
        v59 = v45;
        a4 = v95;
        v60 = sub_248DD4118(v59, v58, v92, v95);
        if (!v60)
        {
          goto LABEL_174;
        }

        v20 = v60;
        v88 = 0;
        goto LABEL_151;
      }

      goto LABEL_80;
    }

    if (CFStringCompare(v106, @"Windows_NTFS", 0) == kCFCompareEqualTo)
    {
      v35 = sub_248DB3258(v100, v109, v108, &v107);
      if (v35)
      {
        goto LABEL_213;
      }

      v74 = v107;
      v45 = v104;
      value[0] = 0;
      v46 = DIMediaKitCreateMKMediaRef(v107, allocator, 0, value);
      if (!v46)
      {
        v75 = (*(*v74 + 96))(v74);
        v58 = v75;
        valuePtr = 0;
        if (v101 > 6)
        {
          goto LABEL_172;
        }

        if (((1 << v101) & 0x2C) == 0)
        {
          if (((1 << v101) & 0x42) != 0)
          {
            v87 = v75;
            v76 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(v76, @"Record On Bits", v91);
            v111 = 0;
            v88 = MKCFCreateFSInfo();
            if (v76)
            {
              CFRelease(v76);
            }

            v20 = v111;
            if (!v111)
            {
              if (v88)
              {
                v110 = 0;
                v77 = sub_248DAE894(v88, @"Volume block size");
                if (v77 && CFNumberGetValue(v77, kCFNumberSInt64Type, &v110) && (v110 >>= 9, (v78 = sub_248DB3174(v88, @"Data Runs")) != 0))
                {
                  v79 = sub_248DD42F8(v45, v78, v87, v92, v95, 0, &valuePtr);
                  if (v79)
                  {
                    v20 = v79;
                  }

                  else
                  {
                    valuePtr = v87 - valuePtr;
                    v87 = valuePtr;
                    v20 = sub_248DD4118(v45, valuePtr, 2, v95);
                    if (!v20)
                    {
                      v87 -= valuePtr;
                    }
                  }
                }

                else
                {
                  v20 = 999;
                }

                Mutable = v94;
              }

              else
              {
                v20 = 999;
              }
            }

            v58 = v87;
LABEL_206:
            a4 = v95;
            goto LABEL_151;
          }

LABEL_172:
          a4 = v95;
          if (v58)
          {
            v47 = 0;
            v20 = 116;
            goto LABEL_175;
          }

LABEL_174:
          v20 = 0;
          v47 = 0;
          goto LABEL_175;
        }

        goto LABEL_101;
      }

LABEL_80:
      v20 = v46;
      v47 = 0;
      a4 = v95;
LABEL_175:
      if (value[0])
      {
        CFRelease(value[0]);
        value[0] = 0;
      }

      if (v47)
      {
        CFRelease(v47);
      }

LABEL_179:
      if (v20)
      {
        goto LABEL_214;
      }

      if (v107)
      {
        DIDiskImageObjectRelease(v107);
        v107 = 0;
      }

      goto LABEL_182;
    }

    v39 = v106;
    if (v106 && (CFStringCompare(v106, @"Apple_Free", 0) == kCFCompareEqualTo || CFStringCompare(v39, @"Apple_Void", 0) == kCFCompareEqualTo || CFStringCompare(v39, @"Apple_Scratch", 0) == kCFCompareEqualTo || CFStringCompare(v39, @"Linux_Swap", 0) == kCFCompareEqualTo || CFStringCompare(v39, @"0657FD6D-A4AB-43C4-84E5-0933C84B4F4F", 0) == kCFCompareEqualTo))
    {
      switch(v101)
      {
        case 6u:
          goto LABEL_192;
        case 3u:
          v83 = v104;
          v84 = v108;
          v85 = 1;
          break;
        case 1u:
LABEL_192:
          v83 = v104;
          v84 = v108;
          v85 = 2;
          break;
        default:
          v83 = v104;
          v84 = v108;
          v85 = 0x7FFFFFFF;
          break;
      }

      v20 = sub_248DD4118(v83, v84, v85, a4);
      if (v20)
      {
        goto LABEL_211;
      }

      goto LABEL_182;
    }

    v36 = sub_248DD4118(v104, v108, v92, a4);
    if (v36)
    {
      break;
    }

LABEL_182:
    v36 = sub_248DD4118(v104, 0, -1, a4);
    if (v36)
    {
      break;
    }

    nullsub_4(v104);
    v109 += v108;
    v80 = DIGetBundleRef();
    v81 = sub_248DD4D90(v80, @"%1$@ (%2$@ : %3$d)", @"%1$@ (%2$@ : %3$d)");
    v82 = CFStringCreateWithFormat(allocator, 0, v81, v105, v106, v32);
    CFArrayAppendValue(Mutable, v82);
    if (v82)
    {
      CFRelease(v82);
    }

    if (v81)
    {
      CFRelease(v81);
    }

    if (v97 == ++v32)
    {
      goto LABEL_210;
    }
  }

  v20 = v36;
  if (a6)
  {
    goto LABEL_216;
  }

LABEL_218:
  v24 = v93;
  sub_248DC203C(v98, v93);
  v25 = 0;
  if (!v20)
  {
    goto LABEL_219;
  }

LABEL_24:
  v24 = 0;
  v26 = 0;
LABEL_25:
  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

LABEL_27:
  if (!a8 || (v26 & 1) == 0)
  {
LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  if (a6)
  {
    *a6 = v25;
  }

  if (v103)
  {
    *v103 = v24;
  }

  if (a5)
  {
    *a5 = v18;
  }

  if (a8)
  {
    *a8 = Mutable;
  }

  return v20;
}

uint64_t sub_248DD4118(uint64_t a1, unint64_t a2, int a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 22;
  }

  v7 = a2;
  result = 22;
  if (a3 > -2)
  {
    v9 = 0;
    v10 = 1;
    if (a3 > 2147483645)
    {
      if (a3 == 2147483646)
      {
        goto LABEL_24;
      }
    }

    else if (a3 >= 3)
    {
      if (a3 != -1)
      {
        return result;
      }

      goto LABEL_24;
    }

    v9 = a2;
    if (a2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v9 = a4;
  if ((a3 + 2147483644) < 5 || a3 == 0x80000000)
  {
    if (a2)
    {
      if (!a4)
      {
        v10 = 1;
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    return 0;
  }

  if (a3 != -2147483647)
  {
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = 20;
LABEL_20:
  if (a2 % v9)
  {
    v10 = a2 / v9 + 1;
  }

  else
  {
    v10 = a2 / v9;
  }

  if (!v10)
  {
    return 0;
  }

LABEL_24:
  v11 = *(v5 + 200);
  v12 = *(v5 + 16);
  nullsub_4(a1);
  v13 = sub_248DD4EEC(a1);
  result = sub_248DD4D98();
  if (!result)
  {
    sub_248DD4E90(a1, v13 + 40 * v10);
    result = sub_248DD4D98();
    if (!result)
    {
      v14 = *a1;
      *(v14 + 200) = *(*a1 + 200) + v10;
      *(v14 + 16) += v7;
      if (a3 + 0x80000000 <= 8 && ((1 << a3) & 0x1F3) != 0 && v9 > *(v14 + 32))
      {
        *(v14 + 32) = v9;
      }

      v15 = v14 + 40 * v11 + 204;
      do
      {
        result = 0;
        if (v9 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v9;
        }

        *v15 = a3;
        *(v15 + 4) = 0;
        *(v15 + 8) = v12;
        *(v15 + 16) = v16;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        v15 += 40;
        v12 += v16;
        v7 -= v16;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_248DD42F8(void *a1, const __CFArray *a2, unint64_t a3, int a4, unint64_t a5, int a6, unint64_t *a7)
{
  if (!a1 || !*a1)
  {
    return 22;
  }

  sub_248DD4EF8();
  v33 = a1;
  nullsub_4(a1);
  Count = CFArrayGetCount(a2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v35 = 0;
  v13 = 0;
  v14 = Count & ~(Count >> 63);
  v36 = 2048;
  while (v14 != v12)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v12);
    valuePtr = -1;
    if (!ValueAtIndex)
    {
      goto LABEL_10;
    }

    v16 = ValueAtIndex;
    value = CFDictionaryGetValue(ValueAtIndex, @"Type");
    CFDictionaryGetValueIfPresent(v16, @"Type", &value);
    if (!value)
    {
      goto LABEL_10;
    }

    CFNumberGetValue(value, kCFNumberSInt16Type, &valuePtr);
    v37 = valuePtr;
    value = CFDictionaryGetValue(v16, @"Origin");
    CFNumberGetValue(value, kCFNumberSInt64Type, &v38);
    v17 = v37;
    if (v37 < 2u)
    {
      value = CFDictionaryGetValue(v16, @"Length");
      CFNumberGetValue(value, kCFNumberSInt64Type, &v39);
      goto LABEL_9;
    }

    if (v37 == 2)
    {
      v39 = 0;
      v24 = sub_248DB31F4(v16, @"Marker");
      value = v24;
      if (v24)
      {
        if (CFEqual(v24, @"Embedded Start"))
        {
          v10 = 1;
        }

        else if (CFEqual(value, @"Embedded End"))
        {
          v10 = 2;
        }

        else if (CFEqual(value, @"Volume Start"))
        {
          v10 = 3;
        }

        else if (CFEqual(value, @"Volume End"))
        {
          v10 = 4;
        }

        else
        {
          v10 = -1;
        }
      }

      else
      {
LABEL_9:
        v10 = 0;
      }

LABEL_10:
      v17 = v37;
      goto LABEL_11;
    }

    v10 = 0;
LABEL_11:
    if (v17 == 2)
    {
      v21 = 0;
      v22 = v10 == 4 && a6 == 1;
      v23 = v36;
      if (v22)
      {
        v23 = 0;
      }

      v36 = v23;
      goto LABEL_37;
    }

    if (v17 == 1)
    {
      v18 = v38;
      if (v11 > v38)
      {
        goto LABEL_54;
      }

      v19 = v11;
      v20 = v38 - v35;
      if (v38 - v35 < v36)
      {
        v13 += v20;
        v21 = 0;
        if (v39)
        {
          v13 += v39;
          v35 = v39 + v38;
        }

        else
        {
          v35 = v38;
        }

        goto LABEL_36;
      }

      if (v13)
      {
        v25 = sub_248DD4118(v33, v13, a4, a5);
        if (v25)
        {
          v21 = v25;
LABEL_36:
          v11 = v19;
          goto LABEL_37;
        }

        v19 += v13;
      }

      v21 = sub_248DD4118(v33, v20, 2, a5);
      if (!v21)
      {
        v11 = v19 + v20;
        v13 = v39;
        v35 = v39 + v18;
        goto LABEL_37;
      }

      v13 = 0;
      goto LABEL_36;
    }

    v21 = 0;
LABEL_37:
    ++v12;
    if (v21)
    {
      goto LABEL_58;
    }
  }

  if (v13)
  {
    v26 = a5;
    v27 = sub_248DD4118(v33, v13, a4, a5);
    if (v27)
    {
LABEL_50:
      v21 = v27;
      goto LABEL_58;
    }

    v11 += v13;
  }

  else
  {
    v26 = a5;
  }

  if (a3 >= v11)
  {
    if (a3 != v11)
    {
      v27 = sub_248DD4118(v33, a3 - v11, 2, v26);
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v21 = 0;
    v11 = a3;
  }

  else
  {
LABEL_54:
    v21 = 999;
  }

LABEL_58:
  nullsub_4(v33);
  if (a7)
  {
    *a7 = v11;
  }

  return v21;
}

uint64_t sub_248DD4684(uint64_t a1)
{
  *a1 = &unk_285BCCD10;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_248DD46E8(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x277D85DF8];
  if (a2)
  {
    fputs(a2, *MEMORY[0x277D85DF8]);
  }

  v4 = pthread_mutex_trylock((a1 + 8));
  v5 = "<locked>";
  if (!v4)
  {
    v5 = "<unlocked>";
  }

  result = fprintf(*v3, "%s (items %d, reserve %d)\n", v5, *(a1 + 136), *(a1 + 144));
  if (*(a1 + 120))
  {
    result = puts("<aborting>");
  }

  for (i = *(a1 + 128); i; i = i[9])
  {
    result = (*(*i + 16))(i, 0);
  }

  if (!v4)
  {

    return pthread_mutex_unlock((a1 + 8));
  }

  return result;
}

void sub_248DD47F8(uint64_t a1)
{
  sub_248DAB68C(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DD4830(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x277D85DF8];
  if (a2)
  {
    fputs(a2, *MEMORY[0x277D85DF8]);
  }

  v4 = pthread_mutex_trylock((a1 + 8));
  v5 = "<locked>";
  if (!v4)
  {
    v5 = "<unlocked>";
  }

  result = fprintf(*v3, "%s\n", v5);
  if (!v4)
  {

    return pthread_mutex_unlock((a1 + 8));
  }

  return result;
}

uint64_t sub_248DD48E4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = (*(*a1 + 64))(a1, &v4, a2, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

void sub_248DD494C(__CFDictionary *a1, const void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  if (cStr[0] == 5)
  {
    cStr[0] = -27;
  }

  v4 = 0;
  while (1)
  {
    v5 = cStr[v4];
    v6 = v4 ? 32 : 33;
    if (v6 > v5 || memchr("*+,./:;<=>?[\\]|", cStr[v4], 0x11uLL))
    {
      break;
    }

    if (++v4 == 12)
    {
      LODWORD(v4) = 1;
      break;
    }
  }

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    cStr[0] = 0;
  }

  for (i = 10; i != -1; --i)
  {
    if (cStr[i] != 32)
    {
      break;
    }

    cStr[i] = 0;
  }

  v9 = getuid();
  v10 = getpwuid(v9);
  if (v10)
  {
    pw_dir = v10->pw_dir;
    __strlcpy_chk();
    __strlcat_chk();
    v12 = open(__str, 0, 0);
    if ((v12 & 0x80000000) == 0)
    {
      v13 = v12;
      v14 = read(v12, __str, 0x400uLL);
      __str[v14 & ~(v14 >> 63)] = 0;
      close(v13);
      v15 = strtol(__str, 0, 0);
      if (v15 > 20)
      {
        if (v15 <= 35)
        {
          if (v15 <= 28)
          {
            if (v15 == 21)
            {
              v16 = 1053;
              goto LABEL_57;
            }

            if (v15 == 25)
            {
              v16 = 1057;
              goto LABEL_57;
            }

            goto LABEL_56;
          }

          if (v15 != 29)
          {
            if (v15 == 35)
            {
              v16 = 1044;
              goto LABEL_57;
            }

            goto LABEL_56;
          }
        }

        else if (v15 <= 37)
        {
          if (v15 != 36)
          {
            v16 = 1046;
            goto LABEL_57;
          }
        }

        else if (v15 != 38)
        {
          if (v15 != 140)
          {
            if (v15 != 152)
            {
LABEL_56:
              v16 = -1;
              goto LABEL_57;
            }

LABEL_48:
            v16 = 1043;
            goto LABEL_57;
          }

          goto LABEL_52;
        }

        v16 = 1042;
        goto LABEL_57;
      }

      if (v15 > 3)
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v16 = 1029;
            goto LABEL_57;
          }

          if (v15 != 7)
          {
            goto LABEL_56;
          }

          goto LABEL_48;
        }

        if (v15 != 4)
        {
          v16 = 1047;
          goto LABEL_57;
        }

LABEL_52:
        v16 = 1049;
        goto LABEL_57;
      }

      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v16 = 1059;
        }

        else
        {
          v16 = 1058;
        }

LABEL_57:
        v17 = CFStringCreateWithCString(0, cStr, v16);
        if (v17)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      if (v15)
      {
        if (v15 == 1)
        {
          v16 = 1056;
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }
  }

LABEL_59:
  v17 = CFStringCreateWithCString(0, cStr, 0x410u);
  if (!v17)
  {
    CFDictionarySetValue(a1, a2, @"UNTITLED");
    goto LABEL_61;
  }

LABEL_58:
  CFDictionarySetValue(a1, a2, v17);
  CFRelease(v17);
LABEL_61:
  v18 = *MEMORY[0x277D85DE8];
}

int8x8_t sub_248DD4C70(uint64_t *a1)
{
  v1.i64[0] = *a1;
  v1.i64[1] = *a1;
  result = vqtbl1_s8(v1, 0x607040500010203);
  *a1 = result;
  return result;
}

uint64_t sub_248DD4CA4(uint64_t result, int a2, unint64_t a3)
{
  if (*(result + 112))
  {
    v4 = result;
    v7 = a2 != 0;
    if (a3 < 4)
    {
      goto LABEL_6;
    }

    v5 = a3 >> 2;
    do
    {
      --v5;
      result = (*(v4 + 144))(*(v4 + 112), &v7, 4);
    }

    while (v5);
    v6 = a3 + 4;
    if (a3 + 4 >= 2)
    {
LABEL_6:
      result = (*(v4 + 144))(*(v4 + 112), &v7, 2);
      v6 = a3 + 2;
    }

    if (v6)
    {
      return (*(v4 + 144))(*(v4 + 112), &v7, 1);
    }
  }

  return result;
}

void *sub_248DD4DA0(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x100004000313F17uLL);
  if (a1)
  {
    v3 = malloc_type_calloc(1uLL, a1 + 4, 0x100004052888210uLL);
    *&v3[a1] = a1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  v2[1] = a1;
  return v2;
}

void *sub_248DD4E18()
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x100004000313F17uLL);
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_248DD4E4C(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
    }
  }

  free(a1);
}

char *sub_248DD4E90(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    result = malloc_type_realloc(v4, a2 + 4, 0x100004052888210uLL);
  }

  else
  {
    result = malloc_type_calloc(1uLL, a2 + 4, 0x100004052888210uLL);
  }

  *&result[a2] = a2;
  *a1 = result;
  *(a1 + 8) = a2;
  return result;
}

__CFDictionary *sub_248DD4F00(uint64_t *a1, char a2, uint64_t a3, int a4)
{
  v60 = a3;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v57 = 0;
  v58 = 0;
  if (!Mutable)
  {
    return 0;
  }

  v9 = Mutable;
  v59 = 0;
  if (DIMediaKitCreateMKMediaRef(a1, v7, 0, &v58))
  {
    v10 = 0;
    goto LABEL_15;
  }

  v56 = 0;
  v11 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v11, @"Include most", *MEMORY[0x277CBED28]);
  v13 = MKCFReadMedia();
  CFRelease(v11);
  if (!v13)
  {
    v10 = sub_248DD54AC(a1, a2, 0, 0, 0, 0, 0, 1, v60, 0);
    v14 = v10 == 0;
    goto LABEL_10;
  }

  v54 = 0;
  v55 = 0;
  if (sub_248DD5780(v13, &v54, &v55) || (v15 = sub_248DB31F4(v54, @"ID"), sub_248DD58A8(a2, a1, v58, v54, &v60, &v59)))
  {
    v10 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  v17 = (*(*a1 + 96))(a1);
  v38 = v60;
  v39 = v17;
  v10 = sub_248DD5C2C(v15, 0, 0, 0, a2, 0, v17, v17, v60, v59, 0);
  Count = CFArrayGetCount(v55);
  v19 = sub_248DB31B4(v55, 0);
  v43 = Count - 1;
  if (Count < 1)
  {
    v14 = 0;
    goto LABEL_68;
  }

  v20 = v19;
  v37 = v12;
  v21 = 0;
  v41 = a4 | ((a2 & 0x10) >> 4);
  v42 = 0;
  do
  {
    if (v21 >= v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_248DB31B4(v55, v21 + 1);
    }

    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    value = 0;
    valuePtr = 0;
    v47 = 0;
    if (sub_248DD5D98(v20, &value, &v52, &v51, &v48, &v47, &v50))
    {
      v22 = v47;
      if (v41)
      {
        v23 = v47;
        v24 = a2 & 0xF8 | 4;
      }

      else
      {
        if (v44)
        {
          valuePtr = 0;
          v25 = sub_248DAE894(v44, @"Offset");
          if (v25)
          {
            v26 = CFNumberGetValue(v25, kCFNumberLongLongType, &valuePtr);
            v23 = v47;
            if (v26)
            {
              v57 = valuePtr - (v48 + v47);
              v22 = v47;
            }
          }

          else
          {
            v23 = v47;
          }
        }

        else
        {
          v57 = v39 - (v47 + v48);
          v23 = v47;
          if (v60 - (v39 - v47) > v47)
          {
            v22 = v60 - (v39 - v47);
          }
        }

        v24 = a2;
      }

      v42 = sub_248DB3258(a1, v48, v23, &v53);
      if (!v42)
      {
        theDict = sub_248DD54AC(v53, v24, value, v52, v52, v51, v48, v59, v22, v50);
        if (!theDict)
        {
          v42 = 0;
          goto LABEL_63;
        }

        if (v57)
        {
          v27 = CFNumberCreate(0, kCFNumberSInt64Type, &v57);
          CFDictionarySetValue(theDict, @"postamble", v27);
          CFRelease(v27);
        }

        if ((v24 & 0x10) != 0 || !sub_248DD5ED8(theDict))
        {
          if (Count != 1)
          {
LABEL_61:
            v36 = 0;
            goto LABEL_62;
          }

          v32 = v39;
          v33 = v39;
          if ((a2 & 4) == 0)
          {
            v35 = v47;
            v34 = v48;
            v36 = sub_248DD60EC(v54, &v57);
            if (v36)
            {
LABEL_62:
              v42 = v36;
              CFArrayAppendValue(v9, theDict);
              CFRelease(theDict);
              goto LABEL_63;
            }

            v33 = v35 + v34 + v57;
            v32 = v39;
          }
        }

        else
        {
          if (value)
          {
            CFDictionarySetValue(v10, @"partition-resize-id-hint", value);
            LODWORD(v45) = v21;
            v28 = CFNumberCreate(v7, kCFNumberIntType, &v45);
            CFDictionarySetValue(v10, @"partition-resize-hint", v28);
            CFRelease(v28);
          }

          if (Count != 1)
          {
            goto LABEL_61;
          }

          if ((a2 & 4) == 0)
          {
            CFDictionarySetValue(theDict, @"can-trigger-image-resize", v37);
          }

          v30 = v47;
          v29 = v48;
          v45 = 0;
          v31 = sub_248DAE894(theDict, @"content-min-length");
          if (v31 && CFNumberGetValue(v31, kCFNumberLongLongType, &v45))
          {
            v30 = v45;
          }

          else
          {
            v45 = v30;
          }

          v32 = v39;
          if ((a2 & 4) != 0)
          {
            v33 = v39;
          }

          else
          {
            v33 = v30 + v29 + v57;
          }
        }

        sub_248DD5F14(v10, a2, v33, v32, v38, v59);
        goto LABEL_61;
      }
    }

LABEL_63:
    if (v53)
    {
      DIDiskImageObjectRelease(v53);
    }

    ++v21;
    v20 = v44;
    --Count;
  }

  while (Count);
  v14 = v42 != 0;
LABEL_68:
  if (CFArrayGetCount(v9))
  {
    CFDictionarySetValue(v10, @"subcontent-list", v9);
    CFRelease(v9);
    v9 = 0;
  }

LABEL_10:
  if (v14 && v10)
  {
    CFRelease(v10);
    v10 = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_15:
  if (v58)
  {
    CFRelease(v58);
    v58 = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

__CFDictionary *sub_248DD54AC(uint64_t a1, char a2, const void *a3, __CFString *a4, const void *a5, const void *a6, uint64_t a7, int64_t a8, uint64_t a9, void *a10)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  v17 = a9;
  if (!a9)
  {
    v19 = *a1;
    if ((a2 & 4) != 0)
    {
      v20 = (*(v19 + 96))(a1);
    }

    else
    {
      v20 = (*(v19 + 112))(a1);
    }

    v17 = v20;
  }

  v21 = (*(*a1 + 96))(a1);
  if (!a4)
  {
    if ((a2 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v26 = (*(*a1 + 96))(a1);
    if (a8 <= 1)
    {
      a8 = 1;
    }

    goto LABEL_19;
  }

  v22 = CFStringCompare(a4, @"Apple_APFS", 0);
  if ((a2 & 8) != 0 || v22 == kCFCompareEqualTo)
  {
    goto LABEL_17;
  }

LABEL_12:
  MKMediaRef = DIMediaKitCreateMKMediaRef(a1, *MEMORY[0x277CBECE8], 0, &cf);
  if (cf && !MKMediaRef && !MKHFSGetResizeLimits())
  {
    v26 = v38;
    v28 = v39 | a8;
    if (a8 && v39)
    {
      if (v28)
      {
        v29 = 0;
        v31 = v39;
        v30 = a8;
      }

      else
      {
        v29 = 0;
        v30 = a8;
        v31 = v39;
        do
        {
          v31 >>= 1;
          v30 >>= 1;
          ++v29;
        }

        while (((v31 | v30) & 1) == 0);
      }

      do
      {
        v32 = v31;
        v31 >>= 1;
      }

      while ((v32 & 1) == 0);
      do
      {
        do
        {
          v33 = v30;
          v30 >>= 1;
        }

        while ((v33 & 1) == 0);
        v34 = v32 - v33;
        if (v32 < v33)
        {
          v35 = v33 - v32;
        }

        else
        {
          v32 = v33;
          v35 = v34;
        }

        v30 = v35 >> 1;
      }

      while (v35 > 1);
      v28 = v32 << v29;
    }

    if (a8 / v28 * v39 <= 1)
    {
      a8 = 1;
    }

    else
    {
      a8 = a8 / v28 * v39;
    }

    if (v37 < v17)
    {
      v17 = v37;
    }

LABEL_19:
    if (v21 - (v21 - v26) / a8 * a8 >= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v21 - (v21 - v26) / a8 * a8;
    }

    v25 = (((v17 - v21) / a8 * a8) & ~(((v17 - v21) / a8 * a8) >> 63)) + v21;
    goto LABEL_23;
  }

  v24 = (*(*a1 + 96))(a1);
  a4 = @"unknown";
  v25 = v24;
  v21 = v24;
LABEL_23:
  v18 = sub_248DD5C2C(a4, a3, a5, a6, a2, a7, v24, v21, v25, a8, a10);
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t sub_248DD5780(const __CFDictionary *a1, const __CFDictionary **a2, const __CFArray **a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v5 = sub_248DB3174(a1, @"Schemes");
  if (!v5)
  {
    return 45;
  }

  v6 = v5;
  if (!CFArrayGetCount(v5))
  {
    return 45;
  }

  if (CFArrayGetCount(v6) < 2)
  {
    v7 = sub_248DB31B4(v6, 0);
    goto LABEL_12;
  }

  if (!sub_248DC7D70())
  {
    return 45;
  }

  v7 = CFArrayDictionarySearchWithIndexOptions();
LABEL_12:
  v9 = v7;
  if (!v7)
  {
    return 22;
  }

  v10 = sub_248DB31F4(v7, @"ID");
  if (!v10)
  {
    return 22;
  }

  if (CFEqual(v10, @"ISO9660"))
  {
    return 22;
  }

  v11 = sub_248DB3174(v9, @"Sections");
  v12 = sub_248DD6AF0(v11);
  if (!v12)
  {
    return 22;
  }

  v13 = sub_248DB3174(v12, @"Partitions");
  if (!v13)
  {
    return 22;
  }

  v14 = v13;
  if (!CFArrayGetCount(v13))
  {
    return 22;
  }

  if (a3)
  {
    *a3 = v14;
  }

  result = 0;
  if (a2)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_248DD58A8(char a1, uint64_t *a2, uint64_t a3, const __CFDictionary *a4, uint64_t *a5, uint64_t *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    v11 = MKMediaCopyProperty();
    if (v11)
    {
      v12 = v11;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(v12) || (v14 = sub_248DB3174(a4, @"Sections"), (v15 = sub_248DD6AF0(v14)) == 0))
      {
        v20 = 22;
        goto LABEL_16;
      }

      valuePtr = 0;
      v16 = sub_248DAE894(v15, @"Media Block Size");
      if (!v16 || !CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr))
      {
        valuePtr = 512;
      }

      v17 = sub_248DB31F4(a4, @"ID");
      v18 = v17;
      if (v17 && CFEqual(v17, @"APM"))
      {
        v28 = 0;
        v19 = (*(*a2 + 48))(a2, 0, 1, &v28, v30);
        if (v19)
        {
          v20 = v19;
LABEL_16:
          CFRelease(v12);
          goto LABEL_17;
        }

        sub_248DC4B00(v30);
      }

      if (a6)
      {
        *a6 = valuePtr / 512;
      }

      if (*a5)
      {
        v20 = 0;
        goto LABEL_16;
      }

      v23 = *a2;
      if ((a1 & 4) != 0)
      {
        v26 = (*(v23 + 96))(a2);
      }

      else
      {
        v24 = (*(v23 + 112))(a2);
        if (v24 < (*(*a2 + 96))(a2))
        {
          v24 = (*(*a2 + 96))(a2);
        }

        v25 = v24;
        if (!v18)
        {
          goto LABEL_33;
        }

        if (CFEqual(v18, @"APM"))
        {
          v25 = 0xFFFFFFFFLL * valuePtr / 512;
LABEL_33:
          if (v25 < (*(*a2 + 96))(a2))
          {
            v25 = (*(*a2 + 96))(a2);
          }

          v20 = 0;
          if (v24 >= v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = v24;
          }

          *a5 = v27;
          goto LABEL_16;
        }

        v25 = v24;
        if (CFEqual(v18, @"GPT"))
        {
          goto LABEL_33;
        }

        v25 = v24;
        if (CFEqual(v18, @"MBR"))
        {
          goto LABEL_33;
        }

        v26 = (*(*a2 + 96))(a2);
      }

      v20 = 0;
      *a5 = v26;
      goto LABEL_16;
    }
  }

  v20 = 22;
LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

__CFDictionary *sub_248DD5C2C(__CFString *a1, const void *a2, const void *a3, const void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *value)
{
  v22 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sub_248DD5F14(Mutable, a5, a7, a8, a9, a10);
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = @"unknown";
  }

  CFDictionarySetValue(Mutable, @"content-hint", v19);
  if (a3)
  {
    CFDictionarySetValue(Mutable, @"partition-type", a3);
  }

  if (a4)
  {
    CFDictionarySetValue(Mutable, @"partition-name", a4);
  }

  if (a2)
  {
    CFDictionarySetValue(Mutable, @"partition-ID", a2);
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"partition-UUID", value);
  }

  valuePtr = a6;
  v20 = CFNumberCreate(v22, kCFNumberLongLongType, &valuePtr);
  CFDictionarySetValue(Mutable, @"content-start", v20);
  if (v20)
  {
    CFRelease(v20);
  }

  return Mutable;
}

uint64_t sub_248DD5D98(const __CFDictionary *a1, const void **a2, const void **a3, const void **a4, void *a5, void *a6, const void **a7)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = sub_248DAE894(a1, @"Partition ID");
  }

  if (a3)
  {
    *a3 = sub_248DB31F4(a1, @"Type");
  }

  if (a4)
  {
    *a4 = sub_248DB31F4(a1, @"Name");
  }

  if (a7)
  {
    *a7 = sub_248DB31F4(a1, @"GUID");
  }

  if (!a5 || (result = sub_248DAE894(a1, @"Offset")) != 0 && (result = CFNumberGetValue(result, kCFNumberLongLongType, a5), result))
  {
    if (!a6)
    {
      return 1;
    }

    result = sub_248DAE894(a1, @"Size");
    if (result)
    {
      result = CFNumberGetValue(result, kCFNumberLongLongType, a6);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

const __CFString *sub_248DD5ED8(const __CFDictionary *a1)
{
  result = sub_248DB31F4(a1, @"content-hint");
  if (result)
  {
    return (CFStringCompare(result, @"unknown", 0) != kCFCompareEqualTo);
  }

  return result;
}

void sub_248DD5F14(__CFDictionary *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    valuePtr = 0;
    if (a5 <= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a5;
    }

    if ((a2 & 1) == 0)
    {
      v8 = a4;
    }

    if (a3 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    if ((a2 & 2) == 0)
    {
      v9 = a4;
    }

    if (a6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a6;
    }

    v11 = a4 - (a4 - v9) / v10 * v10;
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if ((a4 - v9) % v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    v13 = (v8 - a4) / v10 * v10;
    if (v8 - a4 == v13)
    {
      v14 = v8;
    }

    else
    {
      v14 = (v13 & ~(v13 >> 63)) + a4;
    }

    CFDictionaryRemoveValue(a1, @"content-min-length");
    v15 = *MEMORY[0x277CBECE8];
    if (v12 != a4)
    {
      valuePtr = v12;
      v16 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(a1, @"content-min-length", v16);
      CFRelease(v16);
    }

    CFDictionaryRemoveValue(a1, @"content-max-length");
    if (v14 != a4)
    {
      valuePtr = v14;
      v17 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(a1, @"content-max-length", v17);
      CFRelease(v17);
    }

    CFDictionaryRemoveValue(a1, @"content-granularity");
    if (v12 != v14)
    {
      valuePtr = v10;
      v18 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(a1, @"content-granularity", v18);
      CFRelease(v18);
    }

    valuePtr = a4;
    v19 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
    CFDictionarySetValue(a1, @"content-length", v19);
    CFRelease(v19);
  }
}

uint64_t sub_248DD60EC(const __CFDictionary *a1, unint64_t *a2)
{
  v9 = 0;
  valuePtr = 0;
  if (!a2)
  {
    return 22;
  }

  v3 = sub_248DB3174(a1, @"Sections");
  v4 = sub_248DD6AF0(v3);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  v6 = sub_248DAE894(v4, @"Overhead");
  if (!v6)
  {
    return 2;
  }

  CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr);
  v7 = sub_248DAE894(v5, @"Offset");
  if (!v7)
  {
    return 2;
  }

  CFNumberGetValue(v7, kCFNumberLongLongType, &v9);
  if (valuePtr - v9 < 0)
  {
    return 2;
  }

  result = 0;
  *a2 = (valuePtr - v9 + 8 * (((valuePtr - v9) & 7) != 0)) & 0xFFFFFFFFFFFFFFF8;
  return result;
}

uint64_t sub_248DD61A4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v53 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (a4)
  {
    v6 = 19;
  }

  else
  {
    v6 = 3;
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 0x20;
  }

  v8 = (*(*a1 + 456))(a1, v7, 0, 1);
  if (!v8)
  {
    v22 = 999;
    goto LABEL_37;
  }

  v9 = v8;
  v47 = 1;
  v10 = (*(*a1 + 96))(a1);
  v48 = v10;
  valuePtr = v10;
  v11 = sub_248DAE894(v9, @"content-min-length");
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr);
  }

  v12 = sub_248DAE894(v9, @"content-max-length");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberLongLongType, &v48);
  }

  v13 = sub_248DAE894(v9, @"content-granularity");
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberLongLongType, &v47);
  }

  if (a2 == -1)
  {
    v14 = valuePtr;
  }

  else
  {
    v14 = a2;
  }

  if (v14 == 1)
  {
    v14 = v48;
  }

  if (v14 < valuePtr)
  {
    warnx("resize request is below minimum size allowed.");
LABEL_50:
    v23 = 0;
    v22 = 22;
    goto LABEL_33;
  }

  if (v14 > v48)
  {
    warnx("resize request is above maximum size allowed.");
    goto LABEL_50;
  }

  v15 = (v10 - v14) / v47 * v47;
  v16 = (v14 - v10) / v47 * v47;
  v17 = v14 <= v10;
  if (v14 > v10)
  {
    v18 = (v14 - v10) / v47 * v47;
  }

  else
  {
    v18 = (v10 - v14) / v47 * v47;
  }

  if (v17)
  {
    v19 = v10 - v15;
  }

  else
  {
    v19 = v16 + v10;
  }

  if (!v18)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v20 = *MEMORY[0x277CBECE8];
  MKMediaRef = DIMediaKitCreateMKMediaRef(a1, *MEMORY[0x277CBECE8], 0, &cf);
  if (!MKMediaRef)
  {
    v45 = 0;
    Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v27 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(Mutable, @"Include most", *MEMORY[0x277CBED28]);
    v23 = MKCFReadMedia();
    CFRelease(Mutable);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v43 = 0;
    v44 = 0;
    v28 = sub_248DD5780(v23, &v43, &v44);
    if (v28)
    {
      goto LABEL_47;
    }

    v29 = sub_248DB31F4(v43, @"ID");
    v30 = v29;
    v31 = @"Fit Map to Container";
    if (v29 && CFEqual(v29, @"APM"))
    {
      v31 = @"Fit Map to Media";
    }

    v28 = (*(*a1 + 104))(a1, v19);
    if (v28 || (v28 = DIMediaKitCreateMKMediaRef(a1, v20, 0, &cf), v28))
    {
LABEL_47:
      v22 = v28;
      goto LABEL_33;
    }

    cf1 = v30;
    v32 = sub_248DB3174(v23, @"Schemes");
    Count = CFArrayGetCount(v32);
    if (Count >= 1)
    {
      v34 = Count;
      for (i = 0; i < v34; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v32, i);
        v37 = sub_248DB31F4(ValueAtIndex, @"ID");
        if (v37 && CFEqual(v37, @"ISO9660"))
        {
          CFArrayRemoveValueAtIndex(v32, i--);
          --v34;
        }
      }
    }

    v38 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v38, v31, v27);
    v22 = MKCFWriteMedia();
    CFRelease(v38);
    if (!cf1 || v22)
    {
      goto LABEL_33;
    }

    if (CFEqual(cf1, @"APM"))
    {
      v42 = 0;
      v22 = (*(*a1 + 48))(a1, 0, 1, &v42, &v50);
      if (v22)
      {
        goto LABEL_33;
      }

      sub_248DC4B00(&v50);
      if ((v51 & 0xFE00) != 0)
      {
        v39 = v51 >> 9;
      }

      else
      {
        v39 = 1;
      }

      if (v19 % v39)
      {
        v40 = v19 / v39 + 1;
      }

      else
      {
        v40 = v19 / v39;
      }

      if (v40 != v52)
      {
        if (v40 > 0xFFFFFFFFLL)
        {
          v22 = 999;
          goto LABEL_33;
        }

        v52 = v40;
        sub_248DB0A18(&v50);
        v28 = (*(*a1 + 64))(a1, 0, 1, &v42, &v50);
        goto LABEL_47;
      }
    }

    else if (!CFEqual(cf1, @"GPT"))
    {
      CFEqual(cf1, @"MBR");
    }

    v22 = 0;
    goto LABEL_33;
  }

  v22 = MKMediaRef;
LABEL_32:
  v23 = 0;
LABEL_33:
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_37:
  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_248DD66F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  cf = 0;
  if (a4)
  {
    v12 = (*(*a1 + 96))(a1);
    if (v12 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  if (a5)
  {
    v14 = 11;
  }

  else
  {
    v14 = 3;
  }

  v15 = (*(*a1 + 456))(a1, v14, v13, 0);
  if (!v15)
  {
    return 999;
  }

  v16 = v15;
  v32 = 1;
  v17 = (*(*a1 + 96))(a1);
  v33 = v17;
  valuePtr = v17;
  if (a6 < 0)
  {
    v19 = sub_248DAE894(v16, @"content-min-length");
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberLongLongType, &valuePtr);
    }
  }

  else
  {
    valuePtr = a6;
  }

  v20 = sub_248DAE894(v16, @"content-max-length");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberLongLongType, &v33);
  }

  v21 = sub_248DAE894(v16, @"content-granularity");
  if (v21)
  {
    CFNumberGetValue(v21, kCFNumberLongLongType, &v32);
  }

  if (a2 == -1)
  {
    v22 = valuePtr;
  }

  else
  {
    v22 = a2;
  }

  if (v22 == 1)
  {
    v23 = v33;
  }

  else
  {
    v23 = v22;
  }

  if (v23 < valuePtr)
  {
    warnx("resize request is below minimum size allowed.");
  }

  else
  {
    if (v23 <= v33)
    {
      if (v23 <= v17)
      {
        if (v17 - v23 != (v17 - v23) % v32)
        {
          v30 = a3;
          v24 = v17 - (v17 - v23) / v32 * v32;
          goto LABEL_34;
        }
      }

      else if (v23 - v17 != (v23 - v17) % v32)
      {
        v24 = v23 - (v23 - v17) % v32;
        v25 = (*(*a1 + 104))(a1, v24);
        if (v25)
        {
LABEL_45:
          MKMediaRef = v25;
          goto LABEL_49;
        }

        v30 = a3;
LABEL_34:
        v26 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, @"Writable", *MEMORY[0x277CBED28]);
        MKMediaRef = DIMediaKitCreateMKMediaRef(a1, v26, Mutable, &cf);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (!cf)
        {
          goto LABEL_49;
        }

        if ((a5 & 1) == 0)
        {
          MKMediaRef = MKHFSResizeVolume();
          if (MKMediaRef)
          {
            goto LABEL_49;
          }
        }

        v28 = a4 ? v30 : v24;
        if (v23 > v17 || !v28)
        {
          goto LABEL_49;
        }

        v25 = (*(*a1 + 104))(a1);
        goto LABEL_45;
      }

      MKMediaRef = 0;
      goto LABEL_49;
    }

    warnx("resize request is above maximum size allowed.");
  }

  MKMediaRef = 22;
LABEL_49:
  CFRelease(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  return MKMediaRef;
}

const __CFDictionary *sub_248DD6A24(const __CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      v7 = sub_248DB31B4(a1, v6);
      if (v7)
      {
        v8 = v7;
        v9 = sub_248DAE894(v7, @"partition-ID");
        if (!v9)
        {
          goto LABEL_8;
        }

        if (CFEqual(v3, v9))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v8;
}

const __CFDictionary *sub_248DD6AF0(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    v5 = sub_248DB31B4(a1, v4);
    if (v5)
    {
      v6 = v5;
      v7 = sub_248DB31F4(v5, @"ID");
      if (v7)
      {
        if (CFEqual(v7, @"MAP"))
        {
          break;
        }
      }
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_248DD6BE8(uint64_t a1, char *a2, size_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x400uLL, 0xC37FC7BBuLL);
  if (v6)
  {
    v7 = v6;
    if (sub_248DD6B98((a1 + 72)))
    {
      v8 = strstr((a1 + 1112), "://");
      if (!v8 || (v9 = v8 + 3, (v10 = strchr(v8 + 3, 47)) == 0))
      {
        v12 = 22;
LABEL_17:
        free(v7);
        return v12;
      }

      if (v10 - v9 >= 1023)
      {
        v11 = 1023;
      }

      else
      {
        v11 = v10 - v9;
      }

      __memcpy_chk();
      *(v7 + v11) = 0;
      if (!a2)
      {
LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (strncmp((a1 + 1112), "/dev/disk", 9uLL))
      {
        strncmp((a1 + 1112), "/dev/rdisk", 0xAuLL);
      }

      __strlcpy_chk();
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    strlcpy(a2, v7, a3);
    goto LABEL_16;
  }

  return 12;
}

uint64_t sub_248DD6D6C(const char *a1, unsigned int *a2, unsigned int *a3, int a4, int a5, int a6, int a7, int a8)
{
  result = sub_248DC83F0(a1, a2, a3, a4, a5, a6, a7, a8, v12[0], v12[1], v13, v14[0], v14[1], v14[2]);
  if (!result)
  {
    if (a2)
    {
      DWORD1(v12[0]) = bswap32(*a2);
    }

    if (a3)
    {
      DWORD2(v12[0]) = bswap32(*a3);
    }

    return setattrlist(a1, v14, v12 + 4, 0x20uLL, 0);
  }

  return result;
}

uint64_t sub_248DD6E48(const __CFDictionary *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = sub_248DA1560(a1);
  v8 = sub_248DA0728(a1, @"exclusive-open-locks-are-optional", 0);
  v9 = MEMORY[0x277CBED28];
  if (v8)
  {
    v10 = *MEMORY[0x277CBED28];
    sub_248DC8438();
    (*(v11 + 32))(a2, @"exclusive-open-locks-are-optional");
  }

  if (!sub_248DA0728(a1, @"skip-permissions-check", 0))
  {
    sub_248DC8438();
    v13 = (*(v12 + 80))(a2, v7);
    *a4 = v13;
    if (v13)
    {
      return 1;
    }
  }

  sub_248DC8438();
  if ((*(v14 + 760))(a2))
  {
    v15 = *v9;
    sub_248DC8438();
    (*(v16 + 32))(a2, @"bs-io-scheduling");
  }

  sub_248DA159C(a2, a1);
  v17 = sub_248DA0728(a1, @"bs-no-follow", 0);
  result = 0;
  *(a2 + 369) = v17;
  return result;
}

void sub_248DD7010(uint64_t a1, uint64_t a2)
{
  sub_248DA7A20(a1, a2);
  sub_248DA7A64(a1);
  sub_248DBCD50();
}

uint64_t sub_248DD70C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248DC7A7C(a1);
  (*(v7 + 80))(v6);
  v14 = 0;
  v8 = sub_248DC7A7C(*(a1 + 24));
  v10 = (*(v9 + 328))(v8, a2);
  if (!v10)
  {
    sub_248DCD140();
    v12 = (*(v11 + 96))(a1);
    sub_248DD201C(a3, v12);
  }

  return v10;
}

uint64_t sub_248DD71A0(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_248DC7A7C(a1);
  v7 = (*(v6 + 80))(v5);
  sub_248DCD19C();
  v10 = malloc_type_malloc(v8, v9);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  memmove(v10, a3, v7);
  v12 = (*(*a1 + 96))(a1);
  sub_248DD201C(v11, v12);
  v13 = (*(**(a1 + 24) + 336))();
  free(v11);
  return v13;
}

uint64_t sub_248DD72C4(uint64_t a1)
{
  v3 = sub_248DC7A7C(a1);
  v5 = (*(v4 + 80))(v3);
  v6 = *(a1 + 112);
  result = sub_248DC018C(a1, v6 + v5);
  if (result)
  {
    return result;
  }

  sub_248DCD17C();
  v9 = *(a1 + 80);
  if (!v9)
  {
    v11 = malloc_type_malloc(v5, v8);
    if (sub_248DCD15C(v11))
    {
      goto LABEL_6;
    }

    return 12;
  }

  v10 = malloc_type_realloc(v9, v5 * (*(a1 + 32) + 1), v8);
  if (!v10)
  {
    return 12;
  }

  sub_248DCD15C(v10);
LABEL_6:
  v12 = *(a1 + 32);
  *(a1 + 32) = v12 + 1;
  if (v12 == -1)
  {
    v13 = 0;
  }

  else
  {
    sub_248DCA174();
    v13 = (v1 + (*(v14 + 80))(a1) * v12);
  }

  v25 = 0;
  bzero(v13, v5);
  v15 = *(a1 + 32);
  *v13 = 1936749171;
  v13[1] = v15 - 1;
  v16 = v15 - 2;
  if (v15 < 2)
  {
    v21 = *(a1 + 72);
    *(v21 + 20) = v6;
    v20 = (v21 + 12);
  }

  else
  {
    v17 = *(a1 + 80);
    sub_248DCA174();
    v19 = v17 + (*(v18 + 80))(a1) * v16;
    *(v19 + 12) = v6;
    v20 = (v19 + 8);
  }

  *v20 |= 1u;
  v22 = sub_248DCD104();
  result = (*(v23 + 336))(v22, v6, v5, &v25, v13);
  if (!result)
  {
    v13[2] &= ~1u;
    sub_248DCA174();
    return (*(v24 + 120))(a1);
  }

  return result;
}

uint64_t sub_248DD74A8(uint64_t *a1, uint64_t a2)
{
  theArray = 0;
  v18 = 0;
  v17 = 0;
  v4 = sub_248DC7A7C(a1);
  v6 = (*(v5 + 176))(v4);
  if (v6)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    sub_248DCA174();
    (*(v8 + 344))(a2, 100.0);
    sub_248DCA174();
    if ((*(v9 + 352))(a2))
    {
      v10 = 2728;
LABEL_13:
      syslog(5, "CSparseFile::compact(): line %d: returning kDI_USERCANCELED", v10);
      v7 = 112;
      goto LABEL_14;
    }
  }

  sub_248DCD140();
  v6 = (*(v11 + 192))(a1);
  if (v6)
  {
LABEL_2:
    v7 = v6;
    goto LABEL_14;
  }

  if (a2)
  {
    sub_248DCA174();
    if ((*(v12 + 352))(a2))
    {
      v10 = 2739;
      goto LABEL_13;
    }
  }

  sub_248DCD140();
  v14 = (*(v13 + 200))(a1);
  v7 = v14;
  if (a2 && !v14)
  {
    sub_248DCA174();
    (*(v15 + 344))(a2, 100.0);
  }

LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

uint64_t sub_248DD780C(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v6 = sub_248DC7A7C(a1);
  v8 = (*(v7 + 64))(v6);
  v55 = a3;
  v56 = 0;
  *a3 = 0;
  if (a2)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      if (*(a1 + 16) < a2)
      {
        v56 = 0;
      }

      else
      {
        v56 = *(v9 + 8 * (a2 - 1));
      }
    }
  }

  v10 = v8 << 9;
  v11 = *(a1 + 72);
  sub_248DCD124();
  v13 = (*(v12 + 80))(a1);
  sub_248DCD124();
  v15 = 0;
  if (!(*(v14 + 88))(a1))
  {
    v59 = 0;
    v60 = 0;
    v16 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_19;
  }

  v59 = 0;
  v60 = 0;
  v16 = 0;
  v57 = 0;
  v58 = 0;
  v17 = 0;
  v18 = (v11 + 64);
  do
  {
    v19 = *v18;
    if (!*v18)
    {
      goto LABEL_51;
    }

    if (!(v15 & 1 | (v19 != -1)))
    {
      v59 = (*(a1 + 72) + 12);
      v15 = 1;
      v57 = v18;
    }

    if (v19 == a2)
    {
      v60 = (*(a1 + 72) + 12);
      v16 = 1;
      v58 = v18;
    }

    sub_248DCD168();
    if (v20)
    {
      v16 = 1;
      v15 = 1;
      goto LABEL_18;
    }

    ++v17;
    ++v18;
    sub_248DCD124();
  }

  while (v17 < (*(v21 + 88))(a1));
  if ((v15 & 1) == 0)
  {
LABEL_19:
    v22 = 1;
    while (1)
    {
      v23 = *(a1 + 32);
      if (v22 > v23)
      {
        goto LABEL_51;
      }

      v24 = v22 - 1;
      v25 = *(a1 + 80);
      if (v25 && v23 > v24)
      {
        break;
      }

      v27 = 0;
      if ((v15 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      sub_248DCD124();
      if ((*(v30 + 96))(a1))
      {
        v31 = 0;
        v32 = (v27 + 56);
        do
        {
          v33 = *v32;
          if (!*v32)
          {
            goto LABEL_51;
          }

          if (!(v15 & 1 | (v33 != -1)))
          {
            v34 = *(a1 + 80);
            if (v34 && *(a1 + 32) > v24)
            {
              sub_248DCD124();
              v36 = v34 + (*(v35 + 80))(a1) * v24;
              v33 = *v32;
            }

            else
            {
              v36 = 0;
              v33 = -1;
            }

            v59 = (v36 + 8);
            v15 = 1;
            v57 = v32;
          }

          if (v33 == a2)
          {
            v37 = *(a1 + 80);
            if (v37 && *(a1 + 32) > v24)
            {
              sub_248DCD124();
              v39 = v37 + (*(v38 + 80))(a1) * v24;
            }

            else
            {
              v39 = 0;
            }

            v60 = (v39 + 8);
            v16 = 1;
            v58 = v32;
          }

          sub_248DCD168();
          if (v40)
          {
            v16 = 1;
            v15 = 1;
            break;
          }

          ++v31;
          ++v32;
          sub_248DCD124();
        }

        while (v31 < (*(v41 + 96))(a1));
      }

      ++v22;
      if (v15 & 1) != 0 && (v16)
      {
        goto LABEL_50;
      }
    }

    sub_248DCD124();
    v27 = v25 + (*(v28 + 80))(a1) * v24;
    if (v15)
    {
      goto LABEL_29;
    }

LABEL_28:
    sub_248DCD124();
    v13 += (*(v29 + 80))(a1);
    goto LABEL_29;
  }

LABEL_18:
  if ((v16 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_50:
  v16 = 1;
  v15 = 1;
LABEL_51:
  v42 = 999;
  if (v15 & 1) != 0 && (v16)
  {
    if (v13 >= v56)
    {
      return 0;
    }

    if (v10 >= 0x100000)
    {
      v43 = 0x100000;
    }

    else
    {
      v43 = v10;
    }

    sub_248DCD19C();
    v45 = malloc_type_malloc(v43, v44);
    if (!v45)
    {
      return 12;
    }

    v46 = v45;
    if (v10)
    {
      v47 = sub_248DC7A7C(*(a1 + 24));
      v49 = (*(v48 + 328))(v47, v56);
      if (!v49)
      {
        v42 = 999;
LABEL_67:
        free(v46);
        return v42;
      }
    }

    else
    {
      *v58 = -1;
      *v60 |= 1u;
      *v57 = a2;
      *v59 |= 1u;
      sub_248DCD124();
      v49 = (*(v50 + 120))(a1);
      if (!v49)
      {
        v51 = sub_248DC7A7C(*(a1 + 24));
        (*(v52 + 472))(v51, 1);
        if (a2)
        {
          v53 = *(a1 + 8);
          if (v53)
          {
            if (*(a1 + 16) >= a2)
            {
              *(v53 + 8 * (a2 - 1)) = v13;
            }
          }
        }

        v42 = 0;
        *v55 = 1;
        goto LABEL_67;
      }
    }

    v42 = v49;
    goto LABEL_67;
  }

  return v42;
}

uint64_t sub_248DD7D7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v3 = v1 - 1;
    v4 = *(a1 + 80);
    if (v4 && v3 < *(a1 + 32))
    {
      sub_248DCA174();
      v6 = v4 + (*(v5 + 80))(a1) * v3;
    }

    else
    {
      v6 = 0;
    }

    sub_248DCA174();
    if ((*(v7 + 96))(a1))
    {
      v8 = 0;
      v9 = v6 + 56;
      while ((*(v9 + 4 * v8) + 1) <= 1)
      {
        sub_248DCA174();
        if (++v8 >= (*(v10 + 96))(a1))
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    if (v1 == 1)
    {
      break;
    }

    v11 = *(a1 + 80);
    sub_248DCA174();
    v13 = v11 + (*(v12 + 80))(a1) * (v1 - 2);
    v14 = *(v13 + 12);
    *(v13 + 12) = 0;
    sub_248DCD130(v13);
    v15 = *(a1 + 80);
    sub_248DCA174();
    v17 = (*(v16 + 80))(a1);
    v18 = malloc_type_realloc(v15, v17 * (*(a1 + 32) - 1), 0x100004021716A34uLL);
    if (!v18)
    {
      return 12;
    }

    *(a1 + 80) = v18;
    --*(a1 + 32);
    sub_248DCA174();
    result = (*(v19 + 120))(a1);
    if (result)
    {
      return result;
    }

    v21 = sub_248DCD104();
    result = (*(v22 + 312))(v21, v14);
    if (result)
    {
      return result;
    }

    *(a1 + 112) = v14;
    *(a1 + 120) = v14;
    v23 = sub_248DCD104();
    (*(v24 + 472))(v23, 1);
    v1 = v3;
  }

  v26 = *(a1 + 72);
  v25 = *(a1 + 80);
  v27 = *(v26 + 20);
  sub_248DCD114(v26);
  *(v29 + 20) = 0;
  if (v28)
  {
    free(v28);
    *(a1 + 80) = 0;
  }

  *(a1 + 32) = 0;
  sub_248DCA174();
  result = (*(v30 + 120))(a1);
  if (!result)
  {
    v31 = sub_248DCD104();
    result = (*(v32 + 312))(v31, v27);
    if (!result)
    {
      *(a1 + 112) = v27;
      *(a1 + 120) = v27;
      v33 = sub_248DCD104();
      (*(v34 + 472))(v33, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DD8058(uint64_t a1)
{
  v2 = sub_248DC7A7C(a1);
  v4 = (*(v3 + 64))(v2) << 9;
  v5 = *(a1 + 32);
  if (!v5)
  {
    sub_248DCA174();
    v11 = (*(v10 + 80))(a1);
    sub_248DCA174();
    v13 = (*(v12 + 88))(a1);
    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = *(a1 + 72);
    v15 = v13;
    v16 = v14 + 60;
    while (1)
    {
      v17 = *(v16 + 4 * v15);
      if (v17)
      {
        if (v17 != -1)
        {
LABEL_25:
          v11 += v4 * v15;
          goto LABEL_26;
        }

        *(v16 + 4 * v15) = 0;
        *(v14 + 12) |= 1u;
      }

      if (!--v15)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = (v5 - 1);
    sub_248DCA174();
    v9 = v6 + (*(v8 + 80))(a1) * v7;
    v5 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  if (v5 == 1)
  {
    v18 = (*(a1 + 72) + 20);
  }

  else
  {
    v19 = 0;
    if (v5)
    {
      v20 = *(a1 + 80);
      if (v20)
      {
        v21 = (v5 - 2);
        sub_248DCA174();
        v19 = v20 + (*(v22 + 80))(a1) * v21;
      }
    }

    v18 = (v19 + 12);
  }

  v23 = *v18;
  sub_248DCA174();
  v11 = (*(v24 + 80))(a1) + v23;
  sub_248DCA174();
  v26 = (*(v25 + 96))(a1);
  if (v26)
  {
    v15 = v26;
    v27 = v9 + 52;
    do
    {
      v28 = *(v27 + 4 * v15);
      if (v28)
      {
        if (v28 != -1)
        {
          goto LABEL_25;
        }

        *(v27 + 4 * v15) = 0;
        *(v9 + 8) |= 1u;
      }

      --v15;
    }

    while (v15);
  }

LABEL_26:
  sub_248DCA174();
  result = (*(v29 + 120))(a1);
  if (!result)
  {
    v31 = sub_248DCD104();
    result = (*(v32 + 312))(v31, v11);
    if (!result)
    {
      *(a1 + 112) = v11;
      *(a1 + 120) = v11;
      v33 = sub_248DCD104();
      (*(v34 + 472))(v33, 1);
      return 0;
    }
  }

  return result;
}

const __CFDictionary *sub_248DD82EC(uint64_t a1)
{
  v2 = (*(**(a1 + 176) + 192))(*(a1 + 176));
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v2);
    if (MutableCopy)
    {
      v5 = MutableCopy;
      v6 = CFStringCreateWithFormat(v3, 0, @"sectors %qd-%qd", *(a1 + 160), *(a1 + 160) + *(a1 + 168) - 1);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v5, @"sector-range", v6);
        Copy = CFDictionaryCreateCopy(v3, v5);
        CFRelease(v7);
      }

      else
      {
        Copy = CFDictionaryCreateCopy(v3, v5);
      }

      CFRelease(v2);
      v2 = Copy;
    }

    else
    {
      v5 = v2;
    }

    CFRelease(v5);
  }

  return v2;
}

uint64_t sub_248DD83FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v28 = 0;
  pthread_rwlock_wrlock((a1 + 160));
  if (!a5)
  {
LABEL_33:
    v13 = 0;
    v17 = 22;
    goto LABEL_30;
  }

  sub_248DCA174();
  if ((*(v10 + 296))(a1))
  {
    v11 = *(a1 + 360);
    if (v11 < a2 || a3 + a2 > v11)
    {
      goto LABEL_33;
    }

    v21 = a4;
    v13 = 0;
    while (a3)
    {
      v27 = 0;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      sub_248DAACE4(a1, a2, &v26, &v27, &v25, &v24, &v23, &v22, 0);
      if (v24 - (a2 - v25) >= a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = v24 - (a2 - v25);
      }

      v15 = 1;
      if (v27 >= -2147483639)
      {
        switch(v27)
        {
          case -1:
            v15 = 999;
            break;
          case 0:
          case 2:
            break;
          case 1:
            sub_248DCA174();
            v19 = *(*(v18 + 296))(a1);
            v15 = (*(v19 + 336))();
            break;
          default:
            if (v27 == 2147483646)
            {
              v15 = 1;
            }

            else
            {
              v15 = 108;
            }

            break;
        }
      }

      a3 -= v14;
      v13 += v14;
      a2 += v14;
      a5 += v14 << 9;
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 == 0;
      }

      if (v16)
      {
        v17 = 999;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        goto LABEL_29;
      }
    }

    v17 = 0;
LABEL_29:
    a4 = v21;
  }

  else
  {
    v13 = 0;
    v17 = 999;
  }

LABEL_30:
  if (a4)
  {
    *a4 = v13;
  }

  pthread_rwlock_unlock((a1 + 160));
  return v17;
}

uint64_t sub_248DD8640(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 912) = 1;
  *(a1 + 916) = 0;
  v4 = malloc_type_calloc(8uLL, 1uLL, 0x80040B8603338uLL);
  *(a1 + 928) = v4;
  if (!v4 || (v5 = *MEMORY[0x277CBECE8], Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]), (*(a1 + 936) = Mutable) == 0))
  {
    v8 = 12;
    goto LABEL_14;
  }

  v17 = 0;
  bzero(pStr, 0x100uLL);
  v7 = (*(*a2 + 120))(a2, 1651272547, 0, &v17);
  **(a1 + 928) = v17;
  if (v7)
  {
    v8 = v7;
    goto LABEL_14;
  }

  v8 = (*(*a2 + 320))(a2);
  (*(*a2 + 248))(a2, v17);
  if (!v8)
  {
    v9 = CFStringCreateWithPascalString(v5, pStr, 0);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(*(a1 + 936), v9);
    }

    else
    {
      v15 = DIGetBundleRef();
      v16 = sub_248DD4D90(v15, @"restricted segment %d", @"restricted segment %d");
      v10 = CFStringCreateWithFormat(v5, 0, v16, *(a1 + 448));
      CFRelease(v16);
      CFArrayAppendValue(*(a1 + 936), v10);
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    CFRelease(v10);
LABEL_11:
    nullsub_4(v17);
    v11 = *v17;
    v12 = sub_248DD4EEC(v17);
    if (sub_248DA7058(v11, v12))
    {
      v8 = 108;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_248DD88B0(uint64_t a1, _BYTE *a2, uint64_t a3, int a4)
{
  v14 = 0;
  if (!a2)
  {
    return 4294967246;
  }

  v13 = 0;
  *a2 = 0;
  result = (*(*a1 + 120))(a1, 1398034979, a3, &v14);
  if (!result)
  {
    if (!v14)
    {
      return 4294967104;
    }

    result = (*(*a1 + 160))(a1, v14, &v13);
    if (!result)
    {
      if (a4 >= 1 && **v14 >= a4)
      {
        v8 = (*v14 + 2);
        if (a4 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0;
          LOWORD(v10) = 1;
          do
          {
            v11 = *v8 + 1;
            v8 += v11;
            v9 += v11;
            v10 = (v10 + 1);
          }

          while (v10 < a4);
        }

        v12 = *v8;
        if (v9 + v12 >= v13)
        {
          return 4294967106;
        }

        memmove(a2, v8, v12 + 1);
      }

      return 0;
    }
  }

  return result;
}

const __CFDictionary *sub_248DD89F8(uint64_t a1, unsigned int a2, const unsigned __int8 *a3)
{
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
  v7 = CFStringCreateWithPascalString(*MEMORY[0x277CBECE8], a3, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (Count < 1)
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"Name");
        if (Value)
        {
          v13 = Value;
          v14 = CFGetTypeID(Value);
          if (v14 == CFStringGetTypeID() && CFStringCompare(v13, v8, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }

      if (Count == ++v9)
      {
        goto LABEL_11;
      }
    }
  }

  CFRelease(v8);
  return v11;
}

uint64_t sub_248DD8AF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      *a3 = sub_248DD4EEC(a2);
      return sub_248DD4D98();
    }
  }

  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}