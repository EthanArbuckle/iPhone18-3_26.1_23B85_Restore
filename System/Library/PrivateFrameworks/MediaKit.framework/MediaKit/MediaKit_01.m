void GPTUuid2Typestr(void *a1, int a2, unsigned __int8 *uu)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  uuid_unparse_upper(uu, v11);
  v6 = &off_2798A14C8;
  while (strcasecmp(v6 - 100, v11))
  {
    v7 = *v6;
    v6 += 7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v8 = *(v6 - 7);
  if (v8)
  {
    v9 = strlen(v8);
    uniconvert(a1, a2, 0x8000100u, 0, v8, v9, 0x600u, 0);
    goto LABEL_8;
  }

LABEL_7:
  uuid_unparse_upper(uu, a1);
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
}

__CFDictionary *MKCFCreateScheme(const char *a1, const char *a2, CFTypeRef *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = CFStringCreateWithCString(0, a1, 0);
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;
    CFDictionarySetValue(Mutable, @"ID", v7);
    CFRelease(v8);
    v9 = CFStringCreateWithCString(0, a2, 0);
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    CFDictionarySetValue(Mutable, @"Name", v9);
    CFRelease(v10);
    v11 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *a3 = v11;
    if (v11)
    {
      CFDictionarySetValue(Mutable, @"Sections", v11);
      CFRelease(*a3);
    }

    else
    {
LABEL_6:
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t GPTCFRecordSections(const UInt8 *a1, const __CFDictionary *a2, __CFArray *a3)
{
  if (!a2)
  {
    goto LABEL_3;
  }

  v6 = MKCFOptionBit(a2, @"Include most", 150);
  v7 = MKCFOptionBit(a2, @"Include all", 254) | v6;
  v8 = MKCFOptionBit(a2, @"Include drivers", 2);
  v9 = v7 | v8 | MKCFOptionBit(a2, @"Include data", 4);
  v10 = MKCFOptionBit(a2, @"Include free space", 8);
  v11 = v10 | MKCFOptionBit(a2, @"Include loaders", 16);
  v12 = v9 | v11 | MKCFOptionBit(a2, @"Include patch", 32);
  v13 = MKCFOptionBit(a2, @"Include aux", 64);
  v14 = v12 | v13 | MKCFOptionBit(a2, @"Include unknowns", 128);
  if (!v14)
  {
LABEL_3:
    v14 = 20;
  }

  v17 = 0;
  v15 = GPTRecordMapSection(a1, v14, &v17);
  result = v17;
  if (!v17)
  {
    if (v15)
    {
      CFArrayAppendValue(a3, v15);
      CFRelease(v15);
      return v17;
    }
  }

  return result;
}

uint64_t GPTCheckPartBootable(__CFBundle *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *a4 = 259;
  v37[0] = 22;
  if (a2)
  {
    v10 = a1;
    if (a1 || (v10 = MKAccessLibrary(0)) != 0)
    {
      v36 = 0;
      memset(v35, 0, 154);
      v11 = MKLoadDB(v10, @"database", v37);
      if (v11)
      {
        v12 = v11;
        v13 = MKLoadDB(v10, @"inventory", v37);
        if (v13)
        {
          v33 = a5;
          cf = v13;
          v37[0] = gpmrsearch(a2, a3, &v36);
          if (!v37[0])
          {
            v15 = *(*a2 + 32);
            v16 = v15 >= 0x400;
            v17 = 8 / (v15 >> 9);
            if (!v16)
            {
              v17 = 8;
            }

            v32 = v17;
            v18 = CFStringCreateWithCString(0, (*a2 + 96 + 152 * v36 + 48), 0);
            if (v18)
            {
              v19 = v18;
              v37[0] = MKLookupSchemeFormat(v12, @"GPT", v18, 1, v35);
              CFRelease(v19);
              *(a4 + 4) = 4;
              if (!v37[0])
              {
                v20 = LOWORD(v35[0]);
                if (LOWORD(v35[0]))
                {
                  v21 = 36;
                  do
                  {
                    v22 = *(v35 + v21);
                    if (v22 == 6 || v22 == 1)
                    {
                      *(a4 + 4) = 0;
                    }

                    v21 += 38;
                    --v20;
                  }

                  while (v20);
                  v24 = 0;
                  v25 = &v35[2] + 6;
                  while (1)
                  {
                    v26 = CFStringCreateWithCString(0, v25 - 36, 0);
                    if (!v26)
                    {
                      goto LABEL_7;
                    }

                    v27 = v26;
                    v28 = *(v25 - 1);
                    if (v28 == 6)
                    {
                      break;
                    }

                    if (v28 != 5)
                    {
                      if (v28 == 1)
                      {
                        break;
                      }

                      v37[0] = -4;
                    }

LABEL_37:
                    CFRelease(v27);
                    if (!v37[0])
                    {
                      ++v24;
                      v25 += 38;
                      if (v24 < LOWORD(v35[0]))
                      {
                        continue;
                      }
                    }

                    goto LABEL_7;
                  }

                  v29 = mediaLoaderSupport(v10, v26, a2, a3, v33, v28, v32, 0, 0, 0, a4, 0);
                  if (v29 == 28)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v30 = v29;
                  }

                  v37[0] = v30;
                  v31 = *(a4 + 4);
                  if (v31 != 4 && (*v25 & 1) != 0)
                  {
                    *(a4 + 4) = v31 | 4;
                  }

                  goto LABEL_37;
                }
              }
            }
          }

LABEL_7:
          CFRelease(cf);
        }

        CFRelease(v12);
      }

      if (!a1)
      {
        CFRelease(v10);
      }
    }
  }

  return v37[0];
}

CFComparisonResult utf8strcompare(CFStringCompareFlags a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  v7 = CFStringCreateWithBytes(0, __s, v6, 0x8000100u, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = strlen(a3);
  v10 = CFStringCreateWithBytes(0, a3, v9, 0x8000100u, 0);
  if (v10)
  {
    v11 = v10;
    v12 = CFStringCompare(v8, v10, a1);
    CFRelease(v8);
    v8 = v11;
  }

  else
  {
    v12 = kCFCompareEqualTo;
  }

  CFRelease(v8);
  return v12;
}

CFStringRef MKHumanToType(int a1, CFStringRef theString)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!theString)
  {
    goto LABEL_5;
  }

  if (a1 == 16)
  {
    CFStringGetCString(theString, buffer, 256, 0x8000100u);
    GPTuuidHuman2Type(cStr, buffer, 256);
    if (cStr[0])
    {
      result = CFStringCreateWithCString(0, cStr, 0x8000100u);
LABEL_6:
      v3 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v4 = *MEMORY[0x277D85DE8];

  return CFRetain(theString);
}

size_t GPTuuidHuman2Type(char *a1, const char *a2, int a3)
{
  v6 = lookupDESC(a2);
  if (v6)
  {
    v7 = (v6 + 2);
  }

  else
  {
    v7 = a2;
  }

  return strlcpy(a1, v7, a3);
}

uint64_t PMTypeToHumanExtended(char *a1, char *a2, int a3, int a4, int a5, uint64_t *a6)
{
  v8 = a2;
  v10 = &APMDescriptors;
  if (a4 == 8)
  {
    v10 = &MBRDescriptors;
  }

  if (a4 == 32)
  {
    v11 = &ISODescriptors;
  }

  else
  {
    v11 = v10;
  }

  result = PMLookupDESC(a2, a5, v11);
  v13 = result;
  if (result)
  {
    v8 = *(result + 8);
  }

  else if (a1 == v8)
  {
    goto LABEL_10;
  }

  result = strlcpy(a1, v8, a3);
LABEL_10:
  if (a6)
  {
    *a6 = v13;
  }

  return result;
}

uint64_t MKMBRSchemeDetect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 0;
  if (*(a1 + 510) == 43605)
  {
    v5 = 0;
    for (i = (a1 + 458); ; i += 4)
    {
      if (*i)
      {
        v7 = *(i - 1);
        if (!v5 || v7)
        {
          v8 = *(a2 + 8);
          if (v8 > v7 && v8 >= (*i + v7))
          {
            break;
          }
        }
      }

      if (++v5 == 4)
      {
        return 0;
      }
    }

    *a5 = 5000;
  }

  return 0;
}

uint64_t MBRReadMedia(const void ***a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, uint64_t *))
{
  v12 = 0;
  v13[0] = 0;
  v13[1] = 0;
  if (a2 == 0xFFFF)
  {
    v7 = 3584;
  }

  else
  {
    v7 = a2;
  }

  result = a4(a3, 15, 0, 0, 0, &v12);
  if (result)
  {
    v9 = 0;
  }

  else
  {
    v10 = WORD2(v12);
    MKScaleGeometry(v13, &v12 + 1);
    if ((HIDWORD(v12) - 32769) >= 0xFFFF8000)
    {
      v9 = NewHandleClear(528);
      result = MemError();
      if (v9)
      {
        v11 = *v9;
        v11[128] = 33554948;
        *(v11 + 259) = WORD2(v12);
        *(v11 + 250) = v10 >> 9;
        result = VReadDosPartitions(v9, v7, 0, &v12, a3, a4);
        if (!result)
        {
          if ((v7 & 0x800) == 0 || (PMSortMapII(v9, 0), (v7 & 0x10) == 0) || (result = PMAccountFreespace(v9, 0, v7), !result))
          {
            if ((v7 & 0x80) != 0)
            {
              result = PMRationalise(v9);
            }

            else
            {
              result = 0;
            }
          }
        }
      }
    }

    else
    {
      v9 = 0;
      result = 22;
    }
  }

  *a1 = v9;
  return result;
}

uint64_t VReadDosPartitions(const void **a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = 1;
  v12 = 0;
  v13 = a1;
  v11 = 0;
  v14 = a5;
  v15 = a6;
  result = MBRSetupNewPartitionList(a1, *(a4 + 8), *(a4 + 4));
  if (!result)
  {
    result = ReadDosPBR(&v9, a3);
    *(*a1 + 133) = v10;
  }

  return result;
}

uint64_t ReadDosPBR(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4) <= 0x20u)
  {
    v5 = *(**(a1 + 16) + 2);
    v6 = malloc_type_malloc(v5, 0x9EB95AFFuLL);
    if (v6)
    {
      v7 = v6;
      v8 = (*(a1 + 32))(*(a1 + 24), 2, v5, a2, 1, v6);
      if (v8)
      {
        v2 = v8;
        free(v7);
        if (v2 == -1)
        {
          v2 = *__error();
        }
      }

      else
      {
        if (v7[255] == 43605)
        {
          v9 = 0;
          v10 = **(a1 + 16);
          *(v10 + 1072 * *(v10 + 522) - 104) = v7;
          v11 = (v7 + 223);
          do
          {
            v12 = v11[4];
            if (v11[4])
            {
              v13 = *(v11 + 3);
              if (v13)
              {
                v14 = *(v11 + 2);
                if (v14 || !(*(a1 + 4) | v9))
                {
                  v15 = v12 == 5 || v12 == 15;
                  v16 = v15 || v12 == 133;
                  v17 = &MBRDescriptors;
                  while (*v17 != v12)
                  {
                    v18 = v17 + 8;
                    v19 = *(v17 + 3);
                    v17 += 8;
                    if (!v19)
                    {
                      goto LABEL_24;
                    }
                  }

                  v18 = v17;
LABEL_24:
                  v20 = v18[1];
                  bzero(&v28, 0x430uLL);
                  if (v16)
                  {
                    v29 = *(a1 + 8) + v14;
                    v35 = 2;
                    v37 = -1;
                    ++*(a1 + 2);
                  }

                  else
                  {
                    v29 = v14 + a2;
                    if (*(a1 + 4))
                    {
                      v35 = 1;
                    }

                    v37 = *(a1 + 6) + *(v10 + 500) + *(v10 + 500) * v9 - 1;
                  }

                  v38 = v12;
                  v32 = v13;
                  v33 = 0;
                  v30 = v13;
                  v36 = -1;
                  v21 = PMCodeSearch(v12, 8);
                  strncpypad(v31, v21, 0x20uLL, 0);
                  if (*v11 < 0)
                  {
                    v33 |= 0x80000000;
                  }

                  if (*(a1 + 4))
                  {
                    v33 |= 0x2000000u;
                  }

                  if (v20 == 2)
                  {
                    MEMORY[0x259C86EE0](&v34);
                  }

                  if (addentry(*(a1 + 16), &v28, 0x210uLL, 0x20Au, 0xFFFFu, 0x430u))
                  {
                    break;
                  }

                  v10 = **(a1 + 16);
                  if (v16)
                  {
                    v22 = *(a1 + 4);
                    if (v22)
                    {
                      v14 = (*(a1 + 8) + v14);
                      v23 = *(a1 + 6) + *(v10 + 500);
                    }

                    else
                    {
                      *(a1 + 8) = v14;
                      v23 = *(a1 + 6) + 4 * *(v10 + 500);
                    }

                    *(a1 + 6) = v23;
                    *(a1 + 4) = v22 + 1;
                    DosPBR = ReadDosPBR(a1, v14);
                    --*(a1 + 4);
                    if (DosPBR)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v25 = v9++;
            v11 += 16;
          }

          while (v25 < 3);
        }

        else
        {
          free(v7);
        }

        LOWORD(v2) = 0;
      }
    }

    else
    {
      LOWORD(v2) = 12;
    }
  }

  else
  {
    LOWORD(v2) = 31;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MBRCFRecordSections(Ptr *a1, const __CFDictionary *a2, __CFArray *a3)
{
  v17 = 0;
  if (!a2 || (v6 = MKCFOptionBit(a2, @"Include most", 150), v7 = MKCFOptionBit(a2, @"Include all", 254) | v6, v8 = MKCFOptionBit(a2, @"Include data", 4), v9 = v7 | v8 | MKCFOptionBit(a2, @"Include free space", 8), v10 = MKCFOptionBit(a2, @"Include loaders", 16), v11 = v10 | MKCFOptionBit(a2, @"Include aux", 64), (v12 = v9 | v11 | MKCFOptionBit(a2, @"Include unknowns", 128)) == 0))
  {
    v12 = 20;
  }

  v13 = MBRCFRecordMapSection(a1, v12, &v17);
  v14 = v17;
  if (!v17)
  {
    v15 = v13;
    if (v13)
    {
      CFArrayAppendValue(a3, v13);
      CFRelease(v15);
      return v17;
    }
  }

  return v14;
}

__CFDictionary *MBRCFRecordMapSection(Ptr *a1, unsigned int a2, _DWORD *a3)
{
  v4 = *a1;
  if (*a1)
  {
    v27 = 0;
    LODWORD(Mutable) = PMSpecificIndex(a1, 0x8000, 0, &v27);
    if (Mutable)
    {
      v8 = 0;
    }

    else
    {
      v10 = &v4[1072 * v27];
      if (uuid_is_null(v10 + 976))
      {
        MEMORY[0x259C86EE0](v10 + 976);
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v8 = Mutable;
      if (Mutable)
      {
        v11 = v10 + 528;
        CFDictionarySetValue(Mutable, @"ID", @"MAP");
        valuePtr = *(v10 + 134);
        Mutable = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        if (Mutable)
        {
          v12 = Mutable;
          CFDictionarySetValue(v8, @"Offset", Mutable);
          CFRelease(v12);
          v13 = *(v11 + 3) + valuePtr;
          if (*(v4 + 261))
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = v4 + 616;
            do
            {
              if (v27 != v16)
              {
                v18 = *(v17 + 233);
                v19 = v18 == 5 || v18 == 15;
                if (!v19 && v18 != 133)
                {
                  if ((v17[3] & 2) != 0)
                  {
                    ++v14;
                  }

                  else
                  {
                    ++v15;
                  }
                }
              }

              ++v16;
              v17 += 1072;
            }

            while (*(v4 + 261) > v16);
            v13 += v14;
            if (v14 > 0)
            {
              v20 = 3;
            }

            else
            {
              v20 = 4;
            }
          }

          else
          {
            v15 = 0;
            v20 = 4;
          }

          v21 = __OFSUB__(v15, v20);
          v22 = v15 - v20;
          if ((v22 < 0) ^ v21 | (v22 == 0))
          {
            v22 = 0;
          }

          v25 = v13 + v22;
          Mutable = CFNumberCreate(0, kCFNumberSInt32Type, &v25);
          if (Mutable)
          {
            v23 = Mutable;
            CFDictionarySetValue(v8, @"Overhead", Mutable);
            CFRelease(v23);
            MKCFRecordSectionSize(v8, valuePtr, v25, (*(v4 + 1) - v25) * *(v4 + 250), *(v4 + 1) * *(v4 + 250), *(v4 + 259));
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            if (Mutable)
            {
              v24 = Mutable;
              CFDictionarySetValue(v8, @"Partitions", Mutable);
              CFRelease(v24);
              LODWORD(Mutable) = MBRCFRecordPartitions(a1, v24, 1, a2, 0);
              if (!Mutable)
              {
                mkcfstoreref(v8, a1);
                LODWORD(Mutable) = 0;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
    LODWORD(Mutable) = -1;
  }

  if (a3)
  {
    *a3 = Mutable;
  }

  return v8;
}

uint64_t PMSpecificIndex(Ptr *a1, int a2, int a3, __int16 *a4)
{
  v8 = HGetState(a1);
  HLock(a1);
  v9 = PMPSpecificIndex(*a1, a2, a3, a4);
  HSetState(a1, v8);
  return v9;
}

uint64_t PMPSpecificIndex(uint64_t a1, int a2, int a3, __int16 *a4)
{
  v7 = PMCodeSearch(a2, *(a1 + 514));
  v8 = -1;
  v9 = -5343;
  if ((a3 & 0x80000000) == 0)
  {
    v10 = v7;
    if (v7)
    {
      v11 = *(a1 + 522);
      if (*(a1 + 522))
      {
        v8 = 0;
        v12 = a1 + 528;
        while (1)
        {
          if (!strncasecmp((v12 + 1072 * v8 + 48), v10, 0x20uLL))
          {
            if (a3 < 1)
            {
              v9 = 0;
              if (a4)
              {
                goto LABEL_13;
              }

              return v9;
            }

            LOWORD(a3) = a3 - 1;
          }

          if (v11 <= ++v8)
          {
            v8 = -1;
            v9 = -5343;
            if (a4)
            {
              goto LABEL_13;
            }

            return v9;
          }
        }
      }

      v8 = -1;
    }
  }

  if (a4)
  {
LABEL_13:
    *a4 = v8;
  }

  return v9;
}

uint64_t MBRCFRecordPartitions(uint64_t *a1, const __CFArray *a2, int a3, unsigned int a4, _WORD *a5)
{
  v5 = *a1;
  if (!*(*a1 + 522))
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  result = 0;
  do
  {
    v14 = &MBRDescriptors;
    while (*v14 != *(v5 + 528 + 1072 * v11 + 554))
    {
      v15 = v14 + 8;
      v16 = *(v14 + 3);
      v14 += 8;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    v15 = v14;
LABEL_8:
    if ((a4 >> v15[1]))
    {
      result = MBRCFRecordPartition(a2, a1, a3, v11);
      if ((result & 1) != 0 && v12 == 0)
      {
        v12 = result;
      }

      else
      {
        v12 = v12;
      }

      if (a5)
      {
        ++*a5;
      }
    }

    ++v11;
  }

  while (v11 < *(v5 + 522));
  if (!result)
  {
    return v12;
  }

  return result;
}

uint64_t MBRCFRecordPartition(const __CFArray *a1, uint64_t *a2, int a3, int a4)
{
  v6 = *a2;
  v7 = *a2 + 1072 * a4;
  if (uuid_is_null((v7 + 976)))
  {
    MEMORY[0x259C86EE0](v7 + 976);
  }

  else
  {
    v10 = uuid2cfstr((v7 + 976));
    v9 = CFArrayDictionarySearchWithIndexOptions(a1, @"GUID", v10, 0, 0);
    CFRelease(v10);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  if (!a3)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 12;
  }

  v9 = Mutable;
  CFArrayAppendValue(a1, Mutable);
  CFRelease(v9);
LABEL_7:
  if (v6)
  {
    result = CFDictionarySetUUID(v9, @"GUID", (v7 + 976));
    if (result)
    {
      return result;
    }

    v12 = PMCFCreatePartitionType(8, *(v7 + 1082), (v7 + 576));
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(v9, @"Type", v12);
      CFRelease(v13);
      if (*(v7 + 544))
      {
        v14 = strntrim((v7 + 544), 32);
        v15 = CFStringCreateWithCString(0, v14, 0);
        if (v15)
        {
          v16 = v15;
          CFDictionarySetValue(v9, @"Name", v15);
          CFRelease(v16);
        }
      }

      v28 = 0;
      v17 = *(v6 + 2) >> 9;
      v18 = *(v7 + 536) * v17;
      v19 = *(v7 + 540) * v17;
      v29 = v19;
      valuePtr = v18;
      if (v18)
      {
        v20 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
        if (v20)
        {
          v21 = v20;
          CFDictionarySetValue(v9, @"Offset", v20);
          CFRelease(v21);
        }
      }

      if (v19)
      {
        v22 = CFNumberCreate(0, kCFNumberSInt64Type, &v29);
        if (v22)
        {
          v23 = v22;
          CFDictionarySetValue(v9, @"Size", v22);
          CFRelease(v23);
        }
      }

      if (*(v7 + 616))
      {
        v28 = *(v7 + 616);
        v24 = CFNumberCreate(0, kCFNumberSInt64Type, &v28);
        if (v24)
        {
          v25 = v24;
          CFDictionarySetValue(v9, @"Status", v24);
          CFRelease(v25);
        }
      }

      if ((*(v7 + 1034) & 0x80000000) == 0)
      {
        v26 = *(v7 + 1034) + 1;
        v31 = v26 / v17;
        if (v17 <= v26)
        {
          result = CFNumberCreate(0, kCFNumberSInt16Type, &v31);
          if (!result)
          {
            return result;
          }

          v27 = result;
          CFDictionarySetValue(v9, @"Partition ID", result);
          CFRelease(v27);
        }
      }

      return 0;
    }
  }

  return 22;
}

CFNumberRef PMCFCreatePartitionType(int a1, int a2, char *a3)
{
  valuePtr = a2;
  if (a2)
  {
    v3 = PMCodeSearch(a2, a1);
    if (!v3)
    {
      return CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    }
  }

  else
  {
    v3 = a3;
    if (!a3)
    {
      return 0;
    }

    valuePtr = PMDescriptorSearch(a3, a1);
  }

  if (!*v3)
  {
    return CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  }

  return CFStringCreateWithCString(0, v3, 0);
}

uint64_t PMSlice2Index(_WORD *a1, int a2, _WORD *a3)
{
  v3 = 22;
  if (a1 && a3)
  {
    if (a1[261])
    {
      v4 = 0;
      v5 = a1 + 517;
      while (1)
      {
        v6 = *v5;
        if (v6 != -1 && (v6 + 1) / (a1[259] >> 9) == a2)
        {
          break;
        }

        v7 = *(v5 - 1);
        if (v7 != -1)
        {
          v8 = v7 >= -1 ? v7 + 1 : v7 + 4;
          if (a2 == v8 >> 2)
          {
            break;
          }
        }

        v5 += 536;
        if (a1[261] == ++v4)
        {
          v3 = -5343;
          LOWORD(v4) = a1[261];
          goto LABEL_16;
        }
      }

      v3 = 0;
    }

    else
    {
      LOWORD(v4) = 0;
      v3 = -5343;
    }

LABEL_16:
    *a3 = v4;
  }

  return v3;
}

uint64_t MKBootDisposition(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *a5 = 259;
  if (a3)
  {
    if (*(a3 + 522) <= a4)
    {
      LOWORD(v10) = -5343;
    }

    else
    {
      memset(v36, 0, sizeof(v36));
      v9 = a3 + 528;
      *(a5 + 4) = 0;
      v10 = MKGetPartitionRequisites(a1, *(a3 + 514), (a3 + 528 + 1072 * a4 + 48), *(a3 + 528 + 1072 * a4 + 554), v36);
      if (!v10)
      {
        if (*v36)
        {
          Value = CFDictionaryGetValue(a2, @"Loaders");
          if (Value)
          {
            *(a5 + 4) = 0;
            if (*v36)
            {
              v12 = Value;
              v13 = 0;
              v35 = v9 + 1072 * (a4 - 1);
              v34 = v9 + 1072 * a4;
              v14 = &v36[38];
              while (1)
              {
                v15 = CFStringCreateWithCString(0, v14 - 36, 0);
                if (!v15 || (v16 = v15, v17 = CFDictionaryGetValue(v12, v15), CFRelease(v16), !v17))
                {
                  LOWORD(v10) = -415;
                  goto LABEL_50;
                }

                v18 = *(v14 - 1);
                if ((v18 - 2) < 2 || v18 == 4)
                {
                  LOWORD(v10) = 0;
                  *(a5 + 4) |= 0x11u;
                }

                else if (v18 == 1)
                {
                  v44 = 0;
                  v43 = 0u;
                  memset(v42, 0, sizeof(v42));
                  v40 = 0;
                  v39 = 0;
                  v38 = 0;
                  valuePtr = 0;
                  *(a5 + 4) &= 0xFFFFFFFA;
                  v10 = MKGetPartitionInfo(v17, *(a3 + 514), v42);
                  if (!v10)
                  {
                    v19 = DWORD2(v43);
                    *(a5 + 16) = DWORD2(v43);
                    v41 = a4 - 1;
                    if (!strcasecmp((v35 + 48), &v42[2] + 1) && *(v35 + 12) >= v19)
                    {
                      v24 = PMCodeSearch(24320, *(a3 + 514));
                      v10 = strncasecmp(&v42[2] + 1, v24, 0x20uLL);
                      v25 = *(a5 + 4);
                      if (!v10)
                      {
                        *(a5 + 4) = v25 | 4;
                        *(a5 + 8) = 0;
                        goto LABEL_46;
                      }

                      *(a5 + 4) = v25 | 1;
                      v26 = CFDictionaryGetValue(v17, @"Loader Present");
                      if (!v26 || CFBooleanGetValue(v26))
                      {
                        if (strcasecmp((v35 + 472), v14 - 36))
                        {
                          goto LABEL_42;
                        }

                        v27 = CFDictionaryGetValue(v17, @"Checksum");
                        if (v27)
                        {
                          CFNumberGetValue(v27, kCFNumberSInt32Type, &v38 + 4);
                          if (HIDWORD(v38))
                          {
                            if (HIDWORD(v38) != *(v35 + 116))
                            {
                              goto LABEL_42;
                            }
                          }
                        }

                        v28 = CFDictionaryGetValue(v17, @"Major Vers");
                        if (v28)
                        {
                          CFNumberGetValue(v28, kCFNumberSInt16Type, &v40);
                          if (v40)
                          {
                            if (v40 != *(v35 + 464))
                            {
                              goto LABEL_42;
                            }
                          }
                        }

                        v29 = CFDictionaryGetValue(v17, @"Minor Vers");
                        if (v29)
                        {
                          CFNumberGetValue(v29, kCFNumberSInt16Type, &v39);
                          if (v39)
                          {
                            if (v39 != *(v35 + 466))
                            {
                              goto LABEL_42;
                            }
                          }
                        }
                      }

                      LOWORD(v10) = 0;
                      *(a5 + 4) = *(a5 + 4) & 0xFFFFFFFA | 4;
                      v30 = -1;
LABEL_40:
                      *(a5 + 8) = v30;
                      goto LABEL_46;
                    }

                    v20 = CFDictionaryGetValue(v17, @"Partition Type Throw Aways");
                    v10 = MKScavangeDross(a3, v20, v42, a4, &v41, &v38);
                    if (!v10)
                    {
                      if (v38 < DWORD2(v43))
                      {
                        v21 = CFDictionaryGetValue(v17, @"Minimum Host Size");
                        if (v21 && (CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr), v22 = PMConvertBlocks(*(v34 + 12), *(a3 + 2), 0x200u), valuePtr) && v22 < valuePtr)
                        {
                          if (*v14)
                          {
                            LOWORD(v10) = 0;
                            v23 = *(a5 + 4) | 4;
LABEL_45:
                            *(a5 + 4) = v23;
                            goto LABEL_46;
                          }
                        }

                        else
                        {
                          v31 = *(a5 + 4);
                          *(a5 + 4) = v31 | 8;
                          if (*v14)
                          {
                            LOWORD(v10) = 0;
                            v23 = v31 | 0xC;
                            goto LABEL_45;
                          }
                        }

LABEL_42:
                        LOWORD(v10) = 0;
                        goto LABEL_46;
                      }

                      LOWORD(v10) = 0;
                      *(a5 + 4) |= 3u;
                      v30 = v41 - a4;
                      goto LABEL_40;
                    }
                  }
                }

                else
                {
                  LOWORD(v10) = 22;
                }

LABEL_46:
                ++v13;
                v14 += 38;
                if (v13 >= *v36)
                {
                  goto LABEL_50;
                }
              }
            }
          }

          LOWORD(v10) = -417;
        }

        else
        {
          LOWORD(v10) = 0;
          *(a5 + 4) |= 4u;
        }
      }
    }
  }

  else
  {
    LOWORD(v10) = -50;
  }

LABEL_50:
  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

const char *APMCodeSearch(int a1)
{
  if (a1 == 4097)
  {
    return "Apple_partition_map";
  }

  v3 = &off_2798A1168;
  do
  {
    result = *v3;
    if (!*v3)
    {
      break;
    }

    v4 = *(v3 - 4);
    v3 += 2;
  }

  while (v4 != a1);
  return result;
}

unsigned __int16 *APMDescriptorSearch(char *a1)
{
  result = PMLookupDESC(a1, 0, &APMDescriptors);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t APMCFCreateMap(__CFArray *a1, const __CFDictionary *a2, __CFBundle *a3, int a4, unint64_t a5, unsigned int a6, const __CFDictionary *a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  v41 = 0;
  v43 = 22;
  *v39 = 0;
  valuePtr = 1;
  v42 = 1;
  if (a2)
  {
    v43 = -43;
    v17 = a3;
    if (a3 || (v17 = MKAccessLibrary(0)) != 0)
    {
      v37 = 0;
      v38[0] = 0;
      v38[1] = 0;
      v18 = MKLoadDB(v17, @"inventory", &v43);
      if (v18)
      {
        v36 = a7;
        v19 = MKLoadDB(v17, @"database", &v43);
        if (!v43)
        {
          v43 = a9(a8, 15, a5, 0, 0, &v37);
          if (!v43)
          {
            v34 = WORD2(v37);
            if (a6)
            {
              if (!a5)
              {
                LOWORD(a5) = 512;
              }
            }

            else
            {
              MKScaleGeometry(v38, &v37 + 1);
              a6 = v38[0];
              if (a5 && HIDWORD(v37) < a5)
              {
                a6 = PMConvertBlocks(LODWORD(v38[0]), WORD2(v37), a5);
              }

              else
              {
                LOWORD(a5) = WORD2(v37);
              }
            }

            v21 = a5 >> 9;
            if (a4)
            {
              v21 = a4;
            }

            v35 = v21;
            Value = CFDictionaryGetValue(a2, @"PMFormats");
            if (Value || (Value = CFDictionaryGetValue(a2, @"Map Format")) != 0)
            {
              CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
            }

            v23 = CFDictionaryGetValue(a2, @"Dual Format");
            v24 = (v23 || (v23 = CFDictionaryGetValue(a2, @"Dualmode")) != 0) && CFBooleanGetValue(v23) != 0;
            v25 = CFDictionaryGetValue(a2, @"Map Size");
            if (v25)
            {
              CFNumberGetValue(v25, kCFNumberSInt32Type, &v41);
            }

            v26 = MKCFOptionBit(a2, @"Force 512 Byte Map", 1);
            v43 = PMNewPartitionListInternal(v39, v41, a6, a5, v24, valuePtr, v26);
            if (!v43)
            {
              *(**v39 + 500) = v34 >> 9;
              v27 = CFDictionaryGetValue(a2, @"Drivers");
              v28 = CFDictionaryGetValue(a2, @"Patches");
              v29 = CFDictionaryGetValue(a2, @"Partitions");
              v30 = CFDictionaryGetValue(a2, @"Revision");
              if (v30)
              {
                CFNumberGetValue(v30, kCFNumberSInt16Type, &v42);
              }

              if ((!v27 || (v43 = MKBuildDrivers(*v39, v18, v27, v17, v35, 0, a8, a9)) == 0) && (!v28 || (v43 = MKCreatePatchPartition(*v39, v29, v18, v28, v17, v35, 0, a8, a9)) == 0))
              {
                v31 = APMCFRecordMapSection(*v39, 0x94u, &v43);
                if (!v43)
                {
                  v33 = v31;
                  if (v31)
                  {
                    CFArrayAppendValue(a1, v31);
                    CFRelease(v33);
                  }

                  if (v29)
                  {
                    v43 = APMCFCreatePartitions(v33, v29, v17, v18, v32, v35, v36, a8, a9);
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v19 = 0;
      }

      if (!a3)
      {
        CFRelease(v17);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  return v43;
}

uint64_t APMSetupNewPartitionList(const void **a1, int a2, int a3, unsigned int a4, int a5, char a6)
{
  v8 = *a1;
  *(*a1 + 258) = a5 != 0;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 63;
  }

  if (a6 & 2 | a2)
  {
    v9 /= (a4 >> 9);
  }

  v8[260] = v9;
  *v8 = 17746;
  if (a5)
  {
    v10 = 512;
  }

  else
  {
    v10 = a4;
  }

  if (a6)
  {
    v11 = 512;
  }

  else
  {
    v11 = v10;
  }

  v8[1] = v11;
  *(v8 + 1) = a4 / v11 * a3;
  v8[250] = v11 >> 9;
  result = PMGenPartitionType(a1, 4097, 1, v9, v11, (a5 << 24) | 3u, "Apple", 0, 0);
  if (!result)
  {

    return PMAccountFreespace(a1, a5, 0);
  }

  return result;
}

uint64_t PMGenPartitionType(const void **a1, int a2, int a3, int a4, unsigned int a5, int a6, char *a7, int a8, unsigned __int16 a9)
{
  v16 = PMCodeSearch(a2, *(*a1 + 257));
  if (!v16)
  {
    return 4294961954;
  }

  return PMGenPartition(a1, v16, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t PMGenPartition(const void **a1, char *a2, int a3, int a4, unsigned int a5, int a6, char *a7, int a8, unsigned __int16 a9)
{
  v64 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
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
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  PMInitPartitionRecord(*(*a1 + 257), a3, a4, 0, a2, a7, v35);
  v13 = *a1;
  if (a6)
  {
    v14 = 0;
    DWORD2(v36) = a6;
    if (!a5)
    {
      goto LABEL_7;
    }

LABEL_5:
    v15 = v13[1];
    if (v15 != a5)
    {
      PMConvertRecord(v35, v13[257], v63, a5 >> 9, v15 >> 9);
    }

    goto LABEL_7;
  }

  v14 = PMDefaultPartitionStatus(v13[257], v35);
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_7:
  if (!a8)
  {
    goto LABEL_51;
  }

  v16 = *a1;
  v17 = *(*a1 + 261);
  if (!*(*a1 + 261))
  {
    v19 = HIDWORD(v35[0]);
    goto LABEL_47;
  }

  v18 = 0;
  v20 = DWORD2(v35[0]);
  v19 = HIDWORD(v35[0]);
  do
  {
    if (*(v16 + 541) != 24320)
    {
      v21 = v16[134];
      if (v21 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v16[134];
      }

      if (v21 <= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16[134];
      }

      if (v21 >= v20)
      {
        v24 = (v35 | 0xC);
      }

      else
      {
        v24 = v16 + 135;
      }

      v25 = *v24 + v22;
      if (v25 < v23)
      {
        goto LABEL_42;
      }

      v26 = v23 - v22;
      if (v21 >= v20)
      {
        v27 = v16 + 135;
      }

      else
      {
        v27 = (v35 | 0xC);
      }

      v28 = *v27 + v23;
      v29 = v25 - v28;
      if (v25 <= v28)
      {
        v29 = v28 - v25;
      }

      v30 = v26 <= v29 ? v29 : v26;
      if ((v30 & 0x80000000) != 0)
      {
LABEL_42:
        v18 = 0;
        if (!v19)
        {
          break;
        }

        goto LABEL_43;
      }

      if (v25 >= v28)
      {
        v25 = v28;
      }

      if (v26 >= v29)
      {
        v25 = v22;
      }

      v31 = v20 == v25 && v19 == v30;
      v18 = !v31;
      *(&v35[0] + 1) = __PAIR64__(v30, v25);
      v19 = v30;
      v20 = v25;
      if (!v30)
      {
        break;
      }
    }

LABEL_43:
    v16 += 268;
    --v17;
  }

  while (v17);
  if (v18)
  {
    DWORD2(v36) |= 0x1000u;
  }

LABEL_47:
  if (v63 == 24320 || v19 != 0)
  {
LABEL_51:
    v14 = addentry(a1, v35, 0x210uLL, 0x20Au, a9, 0x430u);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v14;
}

__CFDictionary *APMCFRecordMapSection(Ptr *a1, unsigned int a2, _DWORD *a3)
{
  v13 = 0;
  v4 = *a1;
  if (*a1)
  {
    v14 = 0;
    LODWORD(Mutable) = PMSpecificIndex(a1, 4097, 0, &v14);
    if (Mutable)
    {
      v8 = 0;
    }

    else
    {
      v10 = &v4[1072 * v14];
      if (uuid_is_null(v10 + 976))
      {
        MEMORY[0x259C86EE0](v10 + 976);
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v8 = Mutable;
      if (Mutable)
      {
        v11 = (v10 + 528);
        LODWORD(Mutable) = APMUpdatePartitionDictionary(Mutable, v11, v4);
        if (!Mutable)
        {
          CFDictionarySetValue(v8, @"ID", @"MAP");
          MKCFRecordSectionSize(v8, *(v11 + 8), *(v11 + 8), (*(v4 + 1) - *(v11 + 8)), *(v4 + 1), *(v4 + 259));
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v12 = Mutable;
            CFDictionarySetValue(v8, @"Partitions", Mutable);
            CFRelease(v12);
            if (!*(v4 + 261) || (LODWORD(Mutable) = APMCFRecordPartitions(a1, v12, a2, &v13), !Mutable))
            {
              mkcfstoreref(v8, a1);
              LODWORD(Mutable) = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
    LODWORD(Mutable) = -1;
  }

  if (a3)
  {
    *a3 = Mutable;
  }

  return v8;
}

uint64_t APMUpdatePartitionDictionary(__CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  result = 22;
  if (a2)
  {
    if (a3)
    {
      result = CFDictionarySetUUID(a1, @"GUID", (a2 + 448));
      if (!result)
      {
        v8 = PMCFCreatePartitionType(1, *(a2 + 554), (a2 + 48));
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(a1, @"Type", v8);
          CFRelease(v9);
          if (*(a2 + 16))
          {
            v10 = strntrim((a2 + 16), 32);
            v11 = CFStringCreateWithCString(0, v10, 0);
            if (v11)
            {
              v12 = v11;
              CFDictionarySetValue(a1, @"Name", v11);
              CFRelease(v12);
            }
          }

          v13 = *(a3 + 2) >> 9;
          v14 = *(a2 + 8) * v13;
          v15 = *(a2 + 12) * v13;
          v49 = v15;
          v50 = v14;
          v16 = *(a2 + 84) * v13;
          v48 = v16;
          if (*(a2 + 554) == 4097)
          {
            if (v14 != 1)
            {
              v49 = v14 + v15 - 1;
              v50 = 1;
            }

            v16 = 0;
            v48 = 0;
          }

          valuePtr = pmindex2slice(a3, a2);
          if (valuePtr)
          {
            v17 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
            if (v17)
            {
              v18 = v17;
              CFDictionarySetValue(a1, @"Partition ID", v17);
              CFRelease(v18);
            }
          }

          if (v50)
          {
            v19 = CFNumberCreate(0, kCFNumberSInt64Type, &v50);
            if (v19)
            {
              v20 = v19;
              CFDictionarySetValue(a1, @"Offset", v19);
              CFRelease(v20);
            }
          }

          if (*(a2 + 80))
          {
            v21 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 80));
            if (v21)
            {
              v22 = v21;
              CFDictionarySetValue(a1, @"Logical Offset", v21);
              CFRelease(v22);
            }
          }

          if (v49)
          {
            v23 = CFNumberCreate(0, kCFNumberSInt64Type, &v49);
            if (v23)
            {
              v24 = v23;
              CFDictionarySetValue(a1, @"Size", v23);
              CFRelease(v24);
            }
          }

          if (v16)
          {
            if (v16 != v49)
            {
              v25 = CFNumberCreate(0, kCFNumberSInt64Type, &v48);
              if (v25)
              {
                v26 = v25;
                CFDictionarySetValue(a1, @"Logical Size", v25);
                CFRelease(v26);
              }
            }
          }

          if (*(a2 + 88))
          {
            v27 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 88));
            if (v27)
            {
              v28 = v27;
              CFDictionarySetValue(a1, @"Status", v27);
              CFRelease(v28);
            }
          }

          if (*(a2 + 92))
          {
            v29 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 92));
            if (v29)
            {
              v30 = v29;
              CFDictionarySetValue(a1, @"Logical Boot Offset", v29);
              CFRelease(v30);
            }
          }

          if (*(a2 + 96))
          {
            v31 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 96));
            if (v31)
            {
              v32 = v31;
              CFDictionarySetValue(a1, @"Boot Size", v31);
              CFRelease(v32);
            }
          }

          if (*(a2 + 116))
          {
            v33 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 116));
            if (v33)
            {
              v34 = v33;
              CFDictionarySetValue(a1, @"Boot Checksum", v33);
              CFRelease(v34);
            }
          }

          if (*(a2 + 120))
          {
            v35 = strntrim((a2 + 120), 16);
            v36 = CFStringCreateWithCString(0, v35, 0);
            if (v36)
            {
              v37 = v36;
              CFDictionarySetValue(a1, @"Processor ID", v36);
              CFRelease(v37);
            }
          }

          v38 = *(a2 + 136);
          if (v38)
          {
            OSType2Ascii(v38, v52, 2);
            v39 = strntrim(v52, 16);
            v40 = CFStringCreateWithCString(0, v39, 0);
            if (v40)
            {
              v41 = v40;
              CFDictionarySetValue(a1, @"Boot Signature", v40);
              CFRelease(v41);
            }
          }

          if (*(a2 + 464))
          {
            v42 = CFNumberCreate(0, kCFNumberSInt16Type, (a2 + 464));
            if (v42)
            {
              v43 = v42;
              CFDictionarySetValue(a1, @"Major Version", v42);
              CFRelease(v43);
            }
          }

          if (*(a2 + 466))
          {
            v44 = CFNumberCreate(0, kCFNumberSInt16Type, (a2 + 466));
            if (v44)
            {
              v45 = v44;
              CFDictionarySetValue(a1, @"Minor Version", v44);
              CFRelease(v45);
            }
          }

          result = 0;
          if (*(a2 + 472))
          {
            if (*(a2 + 472) != 255)
            {
              v46 = strntrim((a2 + 472), 32);
              result = CFStringCreateWithCString(0, v46, 0);
              if (result)
              {
                v47 = result;
                CFDictionarySetValue(a1, @"Content Hint", result);
                CFRelease(v47);
                result = 0;
              }
            }
          }
        }

        else
        {
          result = 22;
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

const char *strntrim(const char *a1, int a2)
{
  v4 = strnlen(a1, a2);
  if (a2 >= 1 && v4)
  {
    if (a1[v4 - 1] <= 32 && &a1[v4 - 1] >= a1)
    {
      v6 = &a1[v4 - 2];
      do
      {
        *(v6 + 1) = 0;
        v7 = *v6 <= 32 && v6 >= a1;
        --v6;
      }

      while (v7);
    }

    a1[a2 - 1] = 0;
  }

  return a1;
}

uint64_t pmindex2slice(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 506);
  if (v2 == -1)
  {
    v5 = *(a2 + 504);
    v6 = (v5 + 1) >> 2;
    if ((v5 & 0x8000u) != 0)
    {
      v6 = 0;
    }

    if (v5 == 0xFFFF)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  else
  {
    v3 = v2 + 1;
    if (*(a1 + 516))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a1 + 518) >> 9;
    }

    return v3 / v4;
  }
}

uint64_t APMCFRecordPartitions(uint64_t *a1, const __CFArray *a2, unsigned int a3, _WORD *a4)
{
  v4 = *a1;
  if (*(*a1 + 522))
  {
    v9 = 0;
    do
    {
      v10 = &APMDescriptors;
      while (*v10 != *(v4 + 528 + 1072 * v9 + 554))
      {
        v11 = *(v10 + 3);
        v10 += 8;
        if (!v11)
        {
          v10 = &unk_2798A1440;
          break;
        }
      }

      if ((a3 >> v10[1]))
      {
        result = APMCFRecordPartition(a2, a1, v9);
        if (result)
        {
          return result;
        }

        if (a4)
        {
          ++*a4;
        }
      }

      ++v9;
    }

    while (v9 < *(v4 + 522));
  }

  return 0;
}

uint64_t APMCategorize(int a1)
{
  v1 = &APMDescriptors;
  while (*v1 != a1)
  {
    v2 = *(v1 + 3);
    v1 += 8;
    if (!v2)
    {
      v1 = &unk_2798A1440;
      return v1[1];
    }
  }

  return v1[1];
}

uint64_t APMCFCreatePartitions(const __CFDictionary *a1, CFArrayRef theArray, __CFBundle *a3, const __CFDictionary *a4, int a5, unsigned int a6, const __CFDictionary *a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  if (!a1)
  {
    return 4294967246;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v17 = 0;
  v18 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
    if (!ValueAtIndex)
    {
      break;
    }

    result = APMCFCreatePartition(a1, ValueAtIndex, a3, a4, v20, a6, a7, a8, a9);
    if (result)
    {
      return result;
    }

    if (++v17 >= v18)
    {
      return 0;
    }
  }

  return 4294966881;
}

uint64_t APMCFCreatePartition(const __CFDictionary *a1, const __CFDictionary *a2, __CFBundle *a3, const __CFDictionary *a4, uint64_t a5, unsigned int a6, const __CFDictionary *a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  v51 = *MEMORY[0x277D85DE8];
  v16 = mkcfrecoverref(a1);
  if (v16)
  {
    v17 = v16;
    v45 = 0;
    v47 = 0u;
    memset(v48, 0, sizeof(v48));
    memset(v49, 0, 464);
    v18 = *v16;
    v19 = *(*v16 + 2) >> 9;
    result = PMPrimaryInfoUpdate(a2, *(*v16 + 514), v19, &v47, 1);
    if (!result)
    {
      if (v50 != 12544 || (result = PMSpecificIndex(v17, 12544, 0, &v45), !(result | v45)))
      {
        v41 = a3;
        v42 = v18;
        v43 = v19;
        v40 = a4;
        v39 = a8;
        v44 = v17;
        Value = CFDictionaryGetValue(a2, @"Options");
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = v23;
          if (Value)
          {
            v25 = MKCFOptionBit(Value, @"Avoid last 10 blocks", 1);
            v26 = MKCFOptionBit(Value, @"Retain existing content", 4) | v25;
            v27 = MKCFOptionBit(Value, @"Allocate Remaining Space", 0x400000);
            v28 = v26 | v27 | MKCFOptionBit(Value, @"Write Protect", 0x80000000);
            v29 = MKCFOptionBit(Value, @"Flexible Allocation", 0x10000000);
            v30 = v29 | MKCFOptionBit(Value, @"Direct Mode", 0x20000000);
            v22 |= v28 | v30 | MKCFOptionBit(Value, @"No Minimum Size For Loader", 0x800000);
          }

          v23 = 0;
          Value = a7;
        }

        while ((v24 & 1) != 0);
        v31 = a6;
        if (!a6)
        {
          v31 = *(v42 + 518) >> 9;
        }

        if ((v22 & 0x400000) != 0)
        {
          v32 = 0;
          HIDWORD(v47) = 0;
        }

        else
        {
          v32 = HIDWORD(v47);
        }

        result = PMNewPartitionExtended(v44, v50, v49, DWORD2(v47), v32, v48, v31, &v45, v22);
        if (!result)
        {
          v33 = *v44;
          v34 = *v44 + 1072 * v45 + 528;
          result = PMSecondaryInfoUpdate(a2, v43, v34, 1);
          if (!result)
          {
            if ((v22 & 1) != 0 && v33[1] == v34[3] + v34[2])
            {
              v35 = (v34[3] - PMConvertBlocks(10, 0x200u, *(v33 + 1))) / v31 * v31;
              v34[3] = v35;
              if (v34[21])
              {
                v34[21] = v35;
              }
            }

            v36 = CFDictionaryGetValue(a1, @"Partitions");
            if (!v41)
            {
              goto LABEL_28;
            }

            if ((v22 & 0x20000000) != 0)
            {
              goto LABEL_28;
            }

            v37 = CFDictionaryGetValue(a2, @"Partition Loader");
            if (!v37)
            {
              goto LABEL_28;
            }

            CFStringGetCString(v37, v46, 32, 0);
            result = MKCreateLoaderPartition(v44, v41, v40, v31, v22, v45, v46, 1, v39, a9);
            if (result == 28)
            {
              goto LABEL_28;
            }

            if (!result)
            {
              result = APMCFRecordPartition(v36, v44, v45);
              if (!result)
              {
                ++v45;
LABEL_28:
                result = APMCFRecordPartition(v36, v44, v45);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = 4294967246;
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PMPrimaryInfoUpdate(CFDictionaryRef theDict, int a2, unsigned int a3, void *a4, int a5)
{
  result = 22;
  if (theDict && a4)
  {
    if (a5)
    {
      bzero(a4, 0x430uLL);
    }

    Value = CFDictionaryGetValue(theDict, @"Type");
    if (Value)
    {
      result = PMCFSetupPartitionType(a2, Value, a4 + 277, a4 + 48);
      if (!result)
      {
        v11 = CFDictionaryGetValue(theDict, @"Name");
        if (v11)
        {
          CFStringGetCString(v11, a4 + 16, 32, 0);
        }

        valuePtr = 0;
        v12 = CFDictionaryGetValue(theDict, @"Offset");
        if (v12)
        {
          CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr);
        }

        v17 = 0;
        v13 = CFDictionaryGetValue(theDict, @"Size");
        if (v13)
        {
          CFNumberGetValue(v13, kCFNumberSInt64Type, &v17);
          v14 = v17;
        }

        else
        {
          v14 = 0;
        }

        result = 0;
        if (valuePtr % a3)
        {
          v15 = valuePtr / a3 + 1;
        }

        else
        {
          v15 = valuePtr / a3;
        }

        if (v14 % a3)
        {
          v16 = v14 / a3 + 1;
        }

        else
        {
          v16 = v14 / a3;
        }

        *(a4 + 2) = v15;
        *(a4 + 3) = v16;
      }
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t APMSetDefaultStatus(uint64_t a1)
{
  v2 = *(a1 + 554);
  if (v2 > 0x4006)
  {
    if (*(a1 + 554) > 0x401Fu)
    {
      if (v2 != 16416 && v2 != 16417)
      {
        if (v2 == 24320)
        {
          v4 = 0;
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (v2 == 16391)
    {
      goto LABEL_20;
    }

    v5 = 16395;
LABEL_19:
    if (v2 != v5)
    {
      goto LABEL_23;
    }

LABEL_20:
    v4 = 1073741875;
    goto LABEL_21;
  }

  if (*(a1 + 554) > 0x37FFu)
  {
    if (v2 == 14336)
    {
      v4 = 35;
      goto LABEL_21;
    }

    if (v2 == 0x4000)
    {
      goto LABEL_20;
    }

    v5 = 16386;
    goto LABEL_19;
  }

  if (v2 - 12544 < 2 || v2 == 4097)
  {
    v4 = 3;
    goto LABEL_21;
  }

LABEL_23:
  if (strstr((a1 + 48), "Driver"))
  {
    v4 = 3;
  }

  else
  {
    v4 = 1073741875;
  }

LABEL_21:
  *(a1 + 88) |= v4;
  return 0;
}

uint64_t PMSecondaryInfoUpdate(const __CFDictionary *a1, unsigned int a2, uint64_t a3, int a4)
{
  UUID = CFDictionaryGetUUID(a1, @"GUID", (a3 + 448));
  if (!UUID)
  {
    valuePtr = 0;
    v24 = 0;
    Value = CFDictionaryGetValue(a1, @"Logical Size");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        if (valuePtr % a2)
        {
          v10 = valuePtr / a2 + 1;
        }

        else
        {
          v10 = valuePtr / a2;
        }

        *(a3 + 84) = v10;
      }
    }

    v11 = CFDictionaryGetValue(a1, @"Logical Offset");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt32Type, (a3 + 80));
    }

    v12 = CFDictionaryGetValue(a1, @"Status");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt64Type, &v24);
      v13 = v24;
      if (a4)
      {
        v13 = v24 | *(a3 + 88);
        v24 |= *(a3 + 88);
      }

      *(a3 + 88) = v13;
    }

    v14 = CFDictionaryGetValue(a1, @"Logical Boot Offset");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberSInt32Type, (a3 + 92));
    }

    v15 = CFDictionaryGetValue(a1, @"Boot Size");
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberSInt32Type, (a3 + 96));
    }

    v16 = CFDictionaryGetValue(a1, @"Boot Checksum");
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberSInt32Type, (a3 + 116));
    }

    v17 = CFDictionaryGetValue(a1, @"Processor ID");
    if (v17)
    {
      CFStringGetCString(v17, (a3 + 120), 16, 0);
    }

    v18 = CFDictionaryGetValue(a1, @"Boot Signature");
    if (v18)
    {
      v25.location = 0;
      v25.length = 4;
      CFStringGetBytes(v18, v25, 0, 0, 0, (a3 + 136), 4, 0);
    }

    v19 = CFDictionaryGetValue(a1, @"Major Version");
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberSInt16Type, (a3 + 464));
    }

    v20 = CFDictionaryGetValue(a1, @"Minor Version");
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberSInt16Type, (a3 + 466));
    }

    v21 = CFDictionaryGetValue(a1, @"Content Hint");
    if (v21)
    {
      CFStringGetCString(v21, (a3 + 472), 32, 0);
    }
  }

  return UUID;
}

uint64_t PMConvertBlocks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    if (a2 != a3)
    {
      return (a2 >> 9) * result / (a3 >> 9);
    }
  }

  return result;
}

uint64_t APMCFRecordPartition(const __CFArray *a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v5 = (*a2 + 1072 * a3);
  if (uuid_is_null(&v5[61].byte0))
  {
    MEMORY[0x259C86EE0](&v5[61]);
  }

  else
  {
    v8 = uuid2cfstr(v5 + 61);
    Mutable = CFArrayDictionarySearchWithIndexOptions(a1, @"GUID", v8, 0, 0);
    CFRelease(v8);
    if (Mutable)
    {
      goto LABEL_6;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFArrayAppendValue(a1, Mutable);
  CFRelease(Mutable);
  if (!Mutable)
  {
    return 22;
  }

LABEL_6:

  return APMUpdatePartitionDictionary(Mutable, &v5[33], v4);
}

uint64_t APMCFWriteScheme(const __CFDictionary *a1, const __CFDictionary *a2, __CFBundle *a3, const __CFDictionary *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  if (!a1)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"Sections");
  if (!Value)
  {
    return 22;
  }

  v13 = CFArrayDictionarySearchWithIndexOptions(Value, @"ID", @"MAP", 0, 0);
  if (!v13)
  {
    return 22;
  }

  v14 = v13;
  v15 = mkcfrecoverref(v13);
  if (!v15)
  {
    return 22;
  }

  v16 = v15;
  valuePtr = 0;
  v17 = CFDictionaryGetValue(a1, @"Alignment");
  if (v17)
  {
    CFNumberGetValue(v17, kCFNumberSInt16Type, &valuePtr);
    v18 = valuePtr;
  }

  else
  {
    v18 = *(*v16 + 259) >> 9;
    LOWORD(valuePtr) = *(*v16 + 259) >> 9;
  }

  result = APMCFUpdateSection(v14, a3, v18, a4, a5, a6);
  if (!result)
  {
    if (!a2 || (result = MKMediaUpdateExtended(v16, a2, a3, valuePtr, 2, a5, a6, &valuePtr + 1), !result))
    {
      if (a4)
      {
        v20 = MKCFOptionBit(a4, @"Generate Freespace Records", 16);
        v21 = MKCFOptionBit(a4, @"Merge Adjacent Freespace Records", 128) | v20;
        v22 = MKCFOptionBit(a4, @"Fit Map to Media", 8);
        v23 = v21 | v22 | MKCFOptionBit(a4, @"Merge Trailing Freespace Record", 0x80000);
        v24 = MKCFOptionBit(a4, @"Ignore Shims", 0x8000);
        v25 = v24 | MKCFOptionBit(a4, @"Protect NV Area", 0x8000000);
        v26 = v23 | v25 | MKCFOptionBit(a4, @"Restrict Freespace", 0x4000);
        v27 = MKCFOptionBit(a4, @"Patch Update", 0x10000);
        v28 = v27 | MKCFOptionBit(a4, @"DDM Update", 0x20000);
        v29 = v26 | v28 | MKCFOptionBit(a4, @"Fit Map to Container", 0x40000000);
      }

      else
      {
        v29 = 49296;
      }

      v30 = APMWriteMedia(v16, v29, a5, a6);
      if (v30)
      {
        v31 = v30;
        v32 = 0;
      }

      else
      {
        v33 = CFDictionaryGetValue(v14, @"Partitions");
        v34 = *v16;
        if (*(*v16 + 261))
        {
          v32 = 0;
          v35 = 0;
          do
          {
            v36 = APMCFRecordPartition(v33, v16, v35);
            if ((v36 & 1) != 0 && v32 == 0)
            {
              v32 = v36;
            }

            ++v35;
          }

          while (v35 < *(v34 + 261));
          v31 = v36;
        }

        else
        {
          v32 = 0;
          v31 = 0;
        }

        v39.length = CFArrayGetCount(v33);
        v39.location = 0;
        CFArraySortValues(v33, v39, CFRankPartition, 0);
      }

      if (v31)
      {
        return v31;
      }

      else
      {
        return v32;
      }
    }
  }

  return result;
}

uint64_t APMCFUpdateSection(const __CFDictionary *a1, __CFBundle *a2, unsigned int a3, const __CFDictionary *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  v82[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_16;
  }

  v10 = a2;
  if (!a2)
  {
    v10 = MKAccessLibrary(0);
  }

  v12 = mkcfrecoverref(a1);
  if (v12)
  {
    v13 = v12;
    LOWORD(v82[0]) = 0;
    v79[0] = 0uLL;
    result = CFDictionaryGetUUID(a1, @"GUID", v79);
    if (!result)
    {
      result = PMGuidSearch(v13, v79, v82);
      if (!result)
      {
        v15 = a3;
        v16 = a4;
        v17 = a5;
        v18 = *v13;
        v19 = CFDictionaryGetValue(a1, @"Media Block Size");
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberSInt16Type, (v18 + 518));
        }

        v20 = *(v18 + 2) >> 9;
        v21 = v18 + 1072 * SLOWORD(v82[0]);
        PMPrimaryInfoUpdate(a1, *(v18 + 514), v20, (v21 + 528), 0);
        result = PMSecondaryInfoUpdate(a1, v20, v21 + 528, 0);
        a5 = v17;
        a4 = v16;
        a3 = v15;
      }

      if (!result)
      {
        UUID = 0;
        v77 = 0;
        v76 = 0;
        v82[1] = 0;
        v82[0] = 0;
        memset(v80, 0, 464);
        memset(v79, 0, sizeof(v79));
        v75 = 0;
        if (v10)
        {
          v22 = MKLoadDB(v10, @"inventory", &UUID);
          if (!v22 || (v23 = v22, (v24 = MKLoadDB(v10, @"database", &UUID)) == 0) || (v25 = v24, (UUID = MKPurgeLoaders(v10, v13, &v75)) != 0))
          {
LABEL_86:
            result = UUID;
            goto LABEL_17;
          }

          v70 = a6;
          v71 = v25;
          cf = v23;
          v69 = a5;
        }

        else
        {
          v69 = a5;
          v70 = a6;
          cf = 0;
          v71 = 0;
        }

        theArray = CFDictionaryGetValue(a1, @"Partitions");
        Count = CFArrayGetCount(theArray);
        UUID = 0;
        v72 = Count;
        if (Count >= 1)
        {
          LODWORD(v28) = 0;
          value = *MEMORY[0x277CBED28];
          while (2)
          {
            v28 = v28;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v28);
              if (!ValueAtIndex)
              {
                goto LABEL_82;
              }

              v30 = ValueAtIndex;
              v31 = *(*v13 + 2) >> 9;
              UUID = PMPrimaryInfoUpdate(ValueAtIndex, *(*v13 + 514), v31, v79, 1);
              if (UUID)
              {
                goto LABEL_82;
              }

              v32 = &APMDescriptors;
              while (*v32 != v81)
              {
                v33 = *(v32 + 3);
                v32 += 8;
                if (!v33)
                {
                  v32 = &unk_2798A1440;
                  break;
                }
              }

              if (((1 << v32[1]) & 0x3A) == 0)
              {
                break;
              }

              if (++v28 >= v72)
              {
                goto LABEL_82;
              }
            }

            UUID = CFDictionaryGetUUID(v30, @"GUID", v82);
            if (!UUID)
            {
              UUID = PMGuidSearch(v13, v82, &v77);
            }

            v34 = CFDictionaryGetValue(v30, @"Options");
            v36 = v34;
            theDict = v34;
            if (v34)
            {
              v66 = MKCFOptionBit(v34, @"Allocate Remaining Space", 0x400000);
              LODWORD(v36) = MKCFOptionBit(v36, @"Direct Mode", 0x20000000) | v66;
              v37 = UUID;
              if (UUID == -5343 && (v36 & 0x400000) != 0)
              {
LABEL_41:
                v38 = APMCFCreatePartition(a1, v30, v10, cf, v35, a3, a4, v69, v70);
                UUID = v38;
                goto LABEL_42;
              }
            }

            else
            {
              v37 = UUID;
            }

            if (v37)
            {
              if (v37 != -5343 || HIDWORD(v79[0]) == -DWORD2(v79[0]))
              {
                goto LABEL_82;
              }

              goto LABEL_41;
            }

            if (!(DWORD2(v79[0]) + HIDWORD(v79[0])))
            {
              if ((v36 & 0x20000000) != 0)
              {
                goto LABEL_89;
              }

              UUID = MKPurgeLoader(v71, cf, v13, v77, 0, theArray, v28, &v76);
              if (UUID)
              {
                goto LABEL_82;
              }

              LODWORD(v28) = v28 + (v76 >> 31);
              v72 -= v76 != 0;
              v38 = PMGuidSearch(v13, v82, &v77);
              UUID = v38;
              if (!v38)
              {
LABEL_89:
                v38 = PMRemovePartition(v13, v77, 1);
                UUID = v38;
                if (!v38)
                {
                  CFArrayRemoveValueAtIndex(theArray, v28);
                  v39 = --v72;
LABEL_44:
                  if (v28 < v39)
                  {
                    continue;
                  }

                  goto LABEL_82;
                }
              }

              goto LABEL_42;
            }

            break;
          }

          v40 = *v13 + 528;
          v41 = v40 + 1072 * v77;
          if ((*(v41 + 468) & 0x10) != 0)
          {
LABEL_43:
            LODWORD(v28) = v28 + 1;
            v39 = v72;
            goto LABEL_44;
          }

          v42 = *(&v79[0] + 1);
          v58 = *v13 + 528;
          v61 = v77;
          v63 = *v13;
          v67 = v77;
          v59 = (v40 + 1072 * v77);
          if (!strncasecmp((v41 + 48), v80, 0x20uLL))
          {
            theDicta = v59[21];
            v57 = v59[3];
            v44 = HIDWORD(v42);
            if (HIDWORD(v42))
            {
              v45 = v42;
              v46 = v67;
            }

            else
            {
              if ((v61 + 1) >= *(v63 + 522))
              {
                v49 = *(v63 + 4);
              }

              else
              {
                v48 = v58 + 1072 * (v61 + 1);
                v49 = *(v48 + 8);
                if (*(v48 + 554) == 24320)
                {
                  v49 += *(v48 + 12);
                }
              }

              HIDWORD(v79[0]) = (v49 - v59[2]) / a3 * a3;
              v50 = CFNumberCreate(0, kCFNumberSInt32Type, (v79 | 0xC));
              CFDictionarySetValue(v30, @"Size", v50);
              CFRelease(v50);
              v45 = DWORD2(v79[0]);
              v44 = HIDWORD(v79[0]);
              v46 = v77;
            }

            v38 = SValidate(v13, v45, v44, v46);
            UUID = v38;
            if (!v38)
            {
              v51 = v59[3];
              v52 = *(&v79[0] + 1);
              v53 = v51 - HIDWORD(v79[0]);
              if (v51 < HIDWORD(v79[0]))
              {
                v53 = 0;
              }

              v60 = v53;
              v62 = a3;
              if (theDicta == v57)
              {
                v54 = CFNumberCreate(0, kCFNumberSInt32Type, (v79 | 0xC));
                CFDictionarySetValue(v30, @"Logical Size", v54);
                CFRelease(v54);
              }

              UUID = PMPrimaryInfoUpdate(v30, *(v63 + 514), v31, v59, 0);
              v38 = PMSecondaryInfoUpdate(v30, v31, v59, 0);
              UUID = v38;
              if (HIDWORD(v52) < v51)
              {
                if (*(v63 + 522) > (v77 + 1) && (v55 = v58 + 1072 * (v77 + 1), *(v55 + 554) == 24320))
                {
                  v56 = *(v55 + 12) + v60;
                  *(v55 + 8) -= v60;
                  *(v55 + 12) = v56;
                  v38 = UUID;
                }

                else
                {
                  v38 = PMGenPartitionType(v13, 24320, v52 + HIDWORD(v52), v60, *(v63 + 2), 0x200000, 0, 0, v77);
                  UUID = v38;
                }
              }

              a3 = v62;
            }
          }

          else
          {
            if ((v36 & 0x20000000) != 0)
            {
              v43 = v67;
            }

            else
            {
              UUID = MKPurgeLoader(v71, cf, v13, v61, 0, theArray, v28, &v76);
              if (UUID)
              {
                goto LABEL_82;
              }

              LODWORD(v28) = v28 + (v76 >> 31);
              v72 -= v76 != 0;
              v38 = PMGuidSearch(v13, v82, &v77);
              UUID = v38;
              if (v38)
              {
                goto LABEL_42;
              }

              v43 = v77;
            }

            v38 = PMRemovePartition(v13, v43, 0);
            UUID = v38;
            if (!v38)
            {
              Mutable = theDict;
              if (!theDict)
              {
                Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                CFDictionaryAddValue(v30, @"Options", Mutable);
                CFRelease(Mutable);
              }

              CFDictionarySetValue(Mutable, @"Retain existing content", value);
              goto LABEL_41;
            }
          }

LABEL_42:
          if (v38)
          {
            goto LABEL_82;
          }

          goto LABEL_43;
        }

LABEL_82:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v71)
        {
          CFRelease(v71);
        }

        goto LABEL_86;
      }
    }
  }

  else
  {
LABEL_16:
    result = 22;
  }

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PMGuidSearch(uint64_t a1, void *a2, _WORD *a3)
{
  *a3 = 0x8000;
  if (a1)
  {
    if (*(*a1 + 522))
    {
      v3 = 0;
      for (i = (*a1 + 976); *a2 != *i || a2[1] != i[1]; i += 134)
      {
        if (*(*a1 + 522) == ++v3)
        {
          return -5343;
        }
      }

      v6 = 0;
      *a3 = v3;
    }

    else
    {
      return -5343;
    }
  }

  else
  {
    return 22;
  }

  return v6;
}

uint64_t MKPurgeLoaders(__CFBundle *a1, uint64_t *a2, BOOL *a3)
{
  v5 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 22;
  v6 = a1;
  memset(v39, 0, sizeof(v39));
  if (!a1)
  {
    v6 = MKAccessLibrary(0);
    if (!v6)
    {
      v12 = 0;
      goto LABEL_58;
    }
  }

  v7 = MKLoadDB(v6, @"database", &v40);
  if (!v7)
  {
    v12 = 0;
    if (!v5)
    {
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v8 = v7;
  v9 = MKLoadDB(v6, @"inventory", &v40);
  if (!v9)
  {
    v12 = 0;
    v29 = v8;
    goto LABEL_56;
  }

  theDict = v9;
  cf = v8;
  v33 = v6;
  v34 = v5;
  v35 = a3;
  v10 = *a2;
  if (!*(*a2 + 522))
  {
    v12 = 0;
    goto LABEL_55;
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 + 528;
  while (1)
  {
    v14 = v13 + 1072 * v11;
    if (PMCategorize(*(v10 + 514), *(v14 + 554)) != 2)
    {
      goto LABEL_46;
    }

    v40 = MKGetPartitionRequisites(cf, *(v10 + 514), (v14 + 48), *(v14 + 554), v39);
    if (v40)
    {
      goto LABEL_55;
    }

    Value = CFDictionaryGetValue(theDict, @"Loaders");
    if (!Value)
    {
      break;
    }

    if (*v39)
    {
      v15 = 0;
      v16 = &v39[2];
      while (1)
      {
        v17 = CFStringCreateWithCString(0, v16, 0);
        v18 = CFDictionaryGetValue(Value, v17);
        CFRelease(v17);
        if (!v18)
        {
          v30 = -415;
          goto LABEL_54;
        }

        v40 = MKGetPartitionInfo(v18, *(v10 + 514), v41);
        if (v40)
        {
          goto LABEL_55;
        }

        v19 = *(v16 + 17);
        if (v19 == 1)
        {
          break;
        }

        if (v19 == 6)
        {
          v20 = v11 + 1;
          if (v11 + 1 < *(v10 + 522))
          {
            v21 = 0;
            v22 = v11;
            while (1)
            {
              v23 = v13 + 1072 * v20;
              v24 = PMCategorize(*(v10 + 514), *(v23 + 554));
              if (v24 != 4)
              {
                v22 = v20;
                if (v24 == 2)
                {
                  goto LABEL_42;
                }

                goto LABEL_26;
              }

              if (!strcasecmp((v23 + 48), &v41[2] + 1) && *(v23 + 12) == DWORD2(v42))
              {
                if (!v21)
                {
                  v21 = 1;
                  v22 = v20;
                  goto LABEL_26;
                }

                ++v21;
              }

              v40 = PMSetTypeExtended(v13 + 1072 * v20, 24320, *(v10 + 514), &unk_2586A0C2E);
              *(v23 + 468) &= ~0x20u;
              ++v12;
LABEL_26:
              v20 = v22 + 1;
              if (v22 + 1 >= *(v10 + 522))
              {
                goto LABEL_42;
              }
            }
          }

          goto LABEL_42;
        }

LABEL_43:
        ++v15;
        v16 += 38;
        if (v15 >= *v39)
        {
          goto LABEL_46;
        }
      }

      if (v11 < 2)
      {
LABEL_42:
        if (v40)
        {
          goto LABEL_55;
        }

        goto LABEL_43;
      }

      v25 = 0;
      v26 = v11;
      while (1)
      {
        v27 = v13 + 1072 * (v26 - 1);
        v28 = PMCategorize(*(v10 + 514), *(v27 + 554));
        if (v28 != 4)
        {
          --v26;
          if (v28 == 2)
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        }

        if (!strcasecmp((v27 + 48), &v41[2] + 1) && *(v27 + 12) == DWORD2(v42))
        {
          if (!v25)
          {
            v25 = 1;
            --v26;
            goto LABEL_39;
          }

          ++v25;
        }

        v40 = PMSetTypeExtended(v13 + 1072 * (v26 - 1), 24320, *(v10 + 514), &unk_2586A0C2E);
        *(v27 + 468) &= ~0x20u;
        --v11;
        ++v12;
LABEL_39:
        if (v26 <= 1)
        {
          goto LABEL_42;
        }
      }
    }

    if (v40)
    {
      goto LABEL_55;
    }

LABEL_46:
    if (++v11 >= *(v10 + 522))
    {
      goto LABEL_55;
    }
  }

  v30 = -417;
LABEL_54:
  v40 = v30;
LABEL_55:
  CFRelease(cf);
  v5 = v34;
  a3 = v35;
  v6 = v33;
  v29 = theDict;
LABEL_56:
  CFRelease(v29);
  if (!v5)
  {
LABEL_57:
    CFRelease(v6);
  }

LABEL_58:
  if (a3)
  {
    *a3 = v12 != 0;
  }

  result = v40;
  if (v40 == -1)
  {
    result = *__error();
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MKMediaUpdateExtended(uint64_t *a1, const __CFDictionary *a2, __CFBundle *a3, unsigned int a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), _WORD *a8)
{
  v9 = 0;
  v43 = *MEMORY[0x277D85DE8];
  v41 = 22;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_40;
  }

  v11 = 0;
  if (!a2)
  {
    goto LABEL_40;
  }

  v41 = -43;
  v14 = a3;
  if (a3 || (v14 = MKAccessLibrary(0)) != 0)
  {
    v33 = a3;
    v34 = a8;
    v15 = MKLoadDB(v14, @"inventory", &v41);
    v16 = v15;
    if (v15)
    {
      v41 = 0;
      theDict = CFDictionaryGetValue(v15, @"Drivers");
      Value = CFDictionaryGetValue(a2, @"Patches");
      v18 = *a1;
      if (*(*a1 + 522))
      {
        v19 = 0;
        v11 = 0;
        v9 = 0;
        v32 = Value;
        v21 = (a5 & 1) == 0 || Value == 0;
        v35 = v21;
        v22 = v18 + 576;
        v24 = a6;
        v23 = a7;
        while (1)
        {
          v25 = *(v22 + 506);
          if (v25 == 14336)
          {
            if ((a5 & 2) == 0)
            {
              goto LABEL_27;
            }

            v26 = MKUpdateLoader(a1, v19, v14, v16, v24, v23);
          }

          else
          {
            if (v25 == 12544)
            {
              if (!v35)
              {
                v26 = RebuildPatches(a1, v19, v16, v32, v14, a4, v24, v23);
                v41 = v26;
                if (v26)
                {
                  goto LABEL_28;
                }

                goto LABEL_29;
              }

LABEL_27:
              v26 = v41;
              if (v41)
              {
LABEL_28:
                if (v26 != -1306)
                {
                  goto LABEL_34;
                }

                goto LABEL_29;
              }

              goto LABEL_29;
            }

            if (!theDict || !PMDrvrIdentify(v22))
            {
              goto LABEL_27;
            }

            OSType2Ascii(*(v22 + 88), v42, 2);
            v27 = CFStringCreateWithFormat(0, 0, @"%s.%s", v22, v42);
            v28 = CFDictionaryGetValue(theDict, v27);
            CFRelease(v27);
            if (!v28)
            {
              v9 = -415;
              v24 = a6;
              v23 = a7;
              goto LABEL_30;
            }

            v29 = v28;
            v24 = a6;
            v23 = a7;
            v26 = MKBuildDriver(a1, v29, v14, a4, a6, a7);
          }

          v41 = v26;
          if (v26)
          {
            goto LABEL_28;
          }

          ++v11;
LABEL_29:
          v41 = 0;
LABEL_30:
          ++v19;
          v22 += 1072;
          if (v19 >= *(v18 + 522))
          {
            goto LABEL_34;
          }
        }
      }
    }

    v9 = 0;
    v11 = 0;
LABEL_34:
    if (!v33)
    {
      CFRelease(v14);
    }

    a8 = v34;
    if (v16)
    {
      CFRelease(v16);
      if (!v34)
      {
        goto LABEL_42;
      }

LABEL_41:
      *a8 = v11;
      goto LABEL_42;
    }

LABEL_40:
    if (!a8)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v9 = 0;
  v11 = 0;
  if (a8)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v41)
  {
    result = v41;
  }

  else
  {
    result = v9;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APMWriteMedia(Handle h, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, Ptr))
{
  v184 = *MEMORY[0x277D85DE8];
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v120 = 0u;
  if (!h)
  {
    v11 = -109;
    goto LABEL_18;
  }

  v183 = 0;
  v181 = 0uLL;
  v182 = 0uLL;
  v179 = 0uLL;
  v180 = 0uLL;
  v177 = 0uLL;
  v178 = 0uLL;
  v175 = 0uLL;
  v176 = 0uLL;
  v173 = 0uLL;
  v174 = 0uLL;
  v171 = 0uLL;
  v172 = 0uLL;
  v169 = 0uLL;
  v170 = 0uLL;
  v167 = 0uLL;
  v168 = 0uLL;
  v165 = 0uLL;
  v166 = 0uLL;
  v163 = 0uLL;
  v164 = 0uLL;
  v161 = 0uLL;
  v162 = 0uLL;
  v159 = 0uLL;
  v160 = 0uLL;
  v157 = 0uLL;
  v158 = 0uLL;
  v155 = 0uLL;
  v156 = 0uLL;
  v153 = 0uLL;
  v154 = 0uLL;
  v152 = 0uLL;
  v118 = 0;
  v119[0] = 0;
  if (a2 == 0xFFFF)
  {
    v5 = 16;
  }

  else
  {
    v5 = a2;
  }

  v119[1] = 0;
  if ((v5 & 0x100) != 0)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = HGetState(h);
  v9 = *h;
  v10 = *(*h + 257);
  if (!*(*h + 257))
  {
    v10 = 1;
    *(v9 + 257) = 1;
    goto LABEL_13;
  }

  if (v10 > 3)
  {
LABEL_11:
    v11 = -50;
    goto LABEL_17;
  }

LABEL_13:
  v12 = v9[516];
  v13 = a4(a3, 15, 0, 0, 0, &v118);
  if (v13)
  {
    v11 = v13;
    goto LABEL_17;
  }

  v117 = v8;
  v14 = WORD2(v118);
  MKScaleGeometry(v119, &v118 + 1);
  PMSortMapII(h, 0);
  v15 = VRebuildFreespace(h, v5, &v118);
  if (v15)
  {
    v11 = v15;
    v8 = v117;
    goto LABEL_17;
  }

  v18 = *h;
  v18[250] = v14 >> 9;
  v103 = v18[1];
  v19 = v18[259];
  v20 = v18[261];
  if (v18[261])
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v8 = v117;
    while (1)
    {
      v25 = &v18[536 * v24 + 264];
      v28 = *(v25 + 88);
      v26 = (v25 + 88);
      v27 = v28;
      if (v12)
      {
        v29 = byte_2586A03B8[(v27 >> 24) & 3];
        if (v29 == 2)
        {
          ++v21;
          goto LABEL_24;
        }

        if (v29 == 1)
        {
          ++v22;
          goto LABEL_24;
        }

        if (byte_2586A03B8[(v27 >> 24) & 3])
        {
          goto LABEL_24;
        }
      }

      else
      {
        *v26 = v27 & 0xFCFFFFFF;
      }

      ++v23;
LABEL_24:
      if (v20 <= ++v24)
      {
        goto LABEL_33;
      }
    }
  }

  v23 = 0;
  LOWORD(v22) = 0;
  v21 = 0;
  v8 = v117;
LABEL_33:
  v30 = v19 >> 9;
  v108 = v19 >> 9;
  if ((v12 & 1) == 0)
  {
    if (v18[260] >= v23)
    {
      v104 = v12 & 1;
      v98 = v21;
      v99 = v23;
      v33 = 0;
      v47 = 0;
      v34 = 0;
      v116 = v19 >> 9;
      goto LABEL_59;
    }

LABEL_57:
    v11 = -5341;
    goto LABEL_17;
  }

  if (v30 != 4 && v30 != 1)
  {
    v11 = -5319;
    goto LABEL_17;
  }

  v104 = v12 & 1;
  if (v30 == 1)
  {
    v31 = 4;
  }

  else
  {
    v31 = 1;
  }

  if (v31 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  v116 = v32;
  if (v31 <= v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = v31;
  }

  v34 = v10 < 2;
  v35 = v22 + v23;
  v36 = v21 + v22;
  v37 = ((v22 + v23) - 1) / (v33 - 1);
  v38 = v22 + v23 + v37;
  v39 = v21 + v22 + v37;
  v40 = (v37 - v22) < 1;
  v41 = v23 + v37;
  v42 = v21 + v37;
  if (v40)
  {
    v41 = v35;
    v43 = v36;
  }

  else
  {
    v43 = v42;
  }

  if (v10 <= 1)
  {
    v44 = v43;
  }

  else
  {
    v41 = v38;
    v44 = v39;
  }

  v98 = v44;
  v99 = v41;
  v45 = v41 + 1;
  if (v45 % v33)
  {
    v46 = v45 / v33 + 1;
  }

  else
  {
    v46 = v45 / v33;
  }

  if (v18[260] < v44)
  {
    goto LABEL_57;
  }

  v47 = v46 - 1;
LABEL_59:
  HLock(h);
  v48 = *h;
  v111 = *h;
  v113 = v33;
  if (!*(*h + 261))
  {
    v49 = 0;
    v112 = 0;
    goto LABEL_104;
  }

  v114 = v47;
  v49 = 0;
  v112 = 0;
  v50 = 0;
  v51 = 0;
  v52 = v48 + 528;
  v53 = v104;
  if (v33 <= 1u)
  {
    v53 = 0;
  }

  v101 = v53;
  v100 = !v34;
  v106 = v48 + 528;
  v109 = a4;
  while (1)
  {
    v54 = &v52[1072 * v51];
    *(v54 + 126) = -1;
    v55 = *(v54 + 277);
    v56 = *(v54 + 22);
    v57 = byte_2586A03B8[(v56 >> 24) & 3];
    if (v57 == 2)
    {
      *(v54 + 252) = ++v114 * v33 - 1;
LABEL_77:
      if ((v56 & 0x100000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_84;
    }

    if (v57 == 1)
    {
      v60 = v100;
      if (v55 == 4097)
      {
        v60 = 1;
      }

      if ((v60 & 1) == 0 && ((v112 + 1) * v33 - 1) < v99)
      {
        *(v54 + 253) = ++v112 * v33 - 1;
        if ((v56 & 0x100000) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_84;
      }

      v58 = (v50 + 1);
      v61 = (v50 + 1) * v116 - 1;
      if (v33 >= 2 && !((v61 + 1) % v33))
      {
        v58 = (v50 + 2);
        v61 = (v50 + 2) * v116 - 1;
      }

      *(v54 + 253) = v61;
      *(v54 + 252) = ++v114 * v33 - 1;
    }

    else
    {
      if (byte_2586A03B8[(v56 >> 24) & 3])
      {
        goto LABEL_77;
      }

      v58 = (v50 + 1);
      v59 = (v50 + 1) * v116 - 1;
      if (v101 && !((v59 + 1) % v33))
      {
        v58 = (v50 + 2);
        v59 = (v50 + 2) * v116 - 1;
      }

      *(v54 + 253) = v59;
    }

    v50 = v58;
    if ((v56 & 0x100000) == 0)
    {
      goto LABEL_100;
    }

LABEL_84:
    if (v55 == 4097)
    {
      goto LABEL_100;
    }

    if (!v49)
    {
      break;
    }

    v62 = *v49;
LABEL_89:
    v64 = v49[1];
    v65 = v64 + 1;
    if (v64 + 1 >= v62)
    {
      v66 = v50;
      v67 = v62 + 32;
      v68 = v49;
      v49 = malloc_type_realloc(v49, 8 * (v62 + 32) + 8, 0x100004000313F17uLL);
      if (!v49)
      {
        goto LABEL_165;
      }

      *v49 = v67;
      v64 = v49[1];
      v65 = v64 + 1;
      v33 = v113;
      v52 = v106;
      v50 = v66;
      a4 = v109;
      v48 = v111;
    }

    v49[1] = v65;
    v69 = &v49[2 * v64 + 2];
    v71 = *(v54 + 2);
    v70 = *(v54 + 3);
    if (v70 >= 0xC8)
    {
      v72 = 200;
    }

    else
    {
      v72 = *(v54 + 3);
    }

    *v69 = v71;
    v69[1] = v72;
    if (v70 >= 0xC9)
    {
      v49[1] = v64 + 2;
      v73 = &v49[2 * v65 + 2];
      if (v70 - 200 >= 0xC8)
      {
        v74 = 200;
      }

      else
      {
        v74 = v70 - 200;
      }

      *v73 = v71 + v70 - v74;
      v73[1] = v74;
    }

LABEL_100:
    if (*(v48 + 261) <= ++v51)
    {
      goto LABEL_104;
    }
  }

  v63 = v50;
  v49 = malloc_type_calloc(1uLL, 0x108uLL, 0x100004000313F17uLL);
  if (v49)
  {
    v62 = 32;
    *v49 = 32;
    v52 = v106;
    v50 = v63;
    a4 = v109;
    goto LABEL_89;
  }

  v68 = 0;
LABEL_165:
  v76 = *__error();
  if (v76)
  {
    v77 = 0;
    v8 = v117;
    goto LABEL_170;
  }

  v49 = v68;
  a4 = v109;
  v48 = v111;
  v33 = v113;
LABEL_104:
  v102 = v49;
  v75 = v108;
  if ((v5 & 0x20000) != 0)
  {
    APMDDMGenerate(v48, v104, v103 >> 9, v108);
    v75 = v108;
  }

  PMDDMNormalise(h, v103 >> 9, v75);
  v76 = a4(a3, 4, 512, 0, (*(v48 + 260) - ((v5 & 0x8000000) >> 27)), 0);
  v8 = v117;
  if (v76)
  {
    v77 = 0;
    v68 = v102;
  }

  else
  {
    v107 = v103 >> 9;
    if ((v5 & 0x8000000) == 0)
    {
      a4(a3, 4, WORD2(v118), (LODWORD(v119[0]) - 1), 1, 0);
    }

    if (*(v48 + 261))
    {
      v78 = 0;
      v97 = 0;
      v105 = v48 + 528;
      while (1)
      {
        v115 = v78;
        v79 = &v105[1072 * v78];
        v80 = *(v79 + 554);
        v110 = *(v79 + 88);
        *(v79 + 468) &= ~0x10u;
        apmirec2xrec(v79, &v152);
        if (v80 == 4097 && (BYTE10(v157) & 0x80) != 0)
        {
          HIDWORD(v183) = 1297238867;
        }

        strclean(&v153, 0x20uLL, 0);
        strclean(&v155, 0x20uLL, 0);
        strclean(&v159 + 8, 0x10uLL, 0);
        v81 = *(v79 + 506);
        if ((v81 & 0x8000) != 0)
        {
          v84 = v103 >> 9;
        }

        else
        {
          v82 = (v81 + 1);
          if (v104)
          {
            v83 = (v81 + 1) % v33 == 0;
          }

          else
          {
            v83 = 0;
          }

          v85 = DiskBlockFactor(v10, v83, v80, v116, v33, v108);
          APMConvertBlocking(&v152, v80, v107, v85);
          if (v80 == 12544 && ((v110 & 0x1000000) == 0 || v85 == v108))
          {
            v97 = PMPTCHQuantify(&v152, v85, v85, a3, a4);
          }

          DWORD1(v152) = v99;
          if (*(v79 + 440))
          {
            v86 = *(v79 + 440);
          }

          else
          {
            v86 = &v120;
          }

          PMRecord_NtoB(v86, &v152);
          v76 = a4(a3, 3, 512, v82, 1, v86);
          if (v76)
          {
            v8 = v117;
            goto LABEL_169;
          }

          v84 = v85;
        }

        v87 = *(v79 + 504);
        if (v87 < 0)
        {
          v8 = v117;
        }

        else
        {
          if (v80 == 24320 && v10 == 1)
          {
            v89 = v116;
          }

          else
          {
            v89 = v113;
          }

          APMConvertBlocking(&v152, v80, v84, v89);
          if (v80 == 12544)
          {
            v8 = v117;
            if ((v110 & 0x1000000) == 0 || v89 == v108)
            {
              v97 = PMPTCHQuantify(&v152, v89, v89, a3, a4);
            }
          }

          else
          {
            v8 = v117;
          }

          DWORD1(v152) = v98;
          if (*(v79 + 440))
          {
            v90 = *(v79 + 440);
          }

          else
          {
            v90 = &v120;
          }

          PMRecord_NtoB(v90, &v152);
          v76 = a4(a3, 3, 512, v87 + 1, 1, v90);
          if (v76)
          {
            goto LABEL_169;
          }
        }

        v78 = v115 + 1;
        v48 = v111;
        v33 = v113;
        if (*(v111 + 261) <= (v115 + 1))
        {
          goto LABEL_149;
        }
      }
    }

    v97 = 0;
LABEL_149:
    if (v104)
    {
      v183 = 0;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v91 = v98;
      v152 = 0u;
      if (v98 <= v99)
      {
        v91 = v99;
      }

      DWORD1(v152) = v91;
      strncpypad(&v155, "Apple_Free", 0x20uLL, 0);
      while (1)
      {
        v92 = (++v112 * v33 - 1);
        if (v92 >= v99)
        {
          break;
        }

        PMRecord_NtoB(&v120, &v152);
        v76 = a4(a3, 3, 512, (v92 + 1), 1, &v120);
        if (v76)
        {
          goto LABEL_169;
        }
      }
    }

    if (v102 && v102[1] >= 1)
    {
      v93 = 0;
      v94 = v102 + 3;
      while (1)
      {
        v76 = a4(a3, 4, v103 & 0xFE00, *(v94 - 1), *v94, 0);
        if (v76)
        {
          break;
        }

        v94 += 2;
        if (++v93 >= v102[1])
        {
          goto LABEL_161;
        }
      }
    }

    else
    {
LABEL_161:
      v95 = *(v48 + 259);
      if (*(v48 + 1) != v95)
      {
        *(v48 + 1) = *(v48 + 1) * v107 / v108;
        *(v48 + 1) = v95;
      }

      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v127 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v120 = 0u;
      DDMRecord_NtoB(&v120, v48);
      LOWORD(v76) = a4(a3, 3, 512, 0, 1, &v120);
    }

LABEL_169:
    v68 = v102;
    v77 = v97;
  }

LABEL_170:
  if (v76)
  {
    v96 = 1;
  }

  else
  {
    v96 = v77 == 0;
  }

  if (v96)
  {
    v11 = v76;
  }

  else
  {
    v11 = v77;
  }

  if (v68)
  {
    free(v68);
  }

LABEL_17:
  HSetState(h, v8);
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t VRebuildFreespace(const void **a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    LOWORD(v8) = -109;
    return v8;
  }

  PMDeleteRecords(a1, word_2586A0970);
  PMSortMapII(a1, 0);
  v6 = *(*a1 + 258);
  v7 = (a2 & 0x4000) == 0;
  if ((a2 & 0x10) != 0)
  {
    v8 = PMAccountFreespace(a1, v7 & v6, a2);
    if (v8)
    {
      return v8;
    }
  }

  return DeviceAdjustSpace(a1, v7 & v6, a3, a2);
}

uint64_t PMDeleteRecords(const void **a1, _WORD *a2)
{
  v2 = *a1;
  LOWORD(v3) = *(*a1 + 261);
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      v9 = v2 + 528;
      while (!*a2)
      {
LABEL_8:
        if (++v6 >= v3)
        {
          return v7;
        }
      }

      v10 = 0;
      v11 = v8;
      while (1)
      {
        v12 = *v11++;
        if (*&v9[1072 * v6 + 554] == v12)
        {
          break;
        }

        if (++v10 >= *a2)
        {
          goto LABEL_8;
        }
      }

      if (delentry(a1, 528, 0x20Au, v6, 1072))
      {
        break;
      }

      ++v7;
      v2 = *a1;
      v3 = *(*a1 + 261);
    }

    while (v3 > v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t DeviceAdjustSpace(const void **a1, int a2, uint64_t a3, int a4)
{
  if ((a4 & 0x40000008) != 0)
  {
    if (a1)
    {
      v6 = *(a3 + 4);
      v7 = *(a3 + 8);
      v8 = *a1;
      v9 = *(*a1 + 1);
      if (v6)
      {
        v10 = v9 == *(a3 + 4);
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v7 = (v6 >> 9) * v7 / (v9 >> 9);
      }

      if ((a4 & 8) != 0)
      {
        v13 = v8[261];
        while (1)
        {
          if (!--v13)
          {
            goto LABEL_9;
          }

          v14 = &v8[536 * v13];
          v15 = *(v14 + 134);
          v16 = *(v14 + 135) + v15;
          if (v7 == v16)
          {
            goto LABEL_9;
          }

          v17 = v14 + 528;
          v18 = *(v17 + 277);
          if (v7 > v16)
          {
            break;
          }

          v19 = v7 >= v15;
          v20 = v7 - v15;
          if (v20 != 0 && v19)
          {
            if (v18 == 24320)
            {
              v11 = 0;
              goto LABEL_26;
            }

            v11 = 0;
            v7 = v16;
            goto LABEL_10;
          }

          if (v18 != 24320)
          {
            goto LABEL_9;
          }

          v11 = delentry(a1, 528, 0x20Au, v13, 1072);
          v8 = *a1;
          if (v11)
          {
            goto LABEL_10;
          }
        }

        if (v18 == 24320)
        {
          v11 = 0;
          v20 = v7 - v15;
LABEL_26:
          *(v17 + 3) = v20;
          goto LABEL_10;
        }

        v11 = PMGenPartitionType(a1, 24320, v16, v7 - v16, 0, (a2 << 24) | 0x200000u, 0, 0, 0xFFFFu);
        v8 = *a1;
      }

      else
      {
LABEL_9:
        v11 = 0;
      }

LABEL_10:
      *(v8 + 1) = v7;
    }

    else
    {
      return -50;
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t PMDDMNormalise(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 != a3)
  {
    v3 = *(*result + 16);
    if (*(*result + 16))
    {
      v4 = 0;
      v5 = (*result + 18);
      do
      {
        v6 = *v5 * a2;
        v7 = *(v5 + 2) * a2;
        if (v6 % a3)
        {
          v8 = v6 / a3 + 1;
        }

        else
        {
          v8 = v6 / a3;
        }

        *v5 = v8;
        v9 = v7 / a3;
        if (v7 % a3)
        {
          LOWORD(v9) = v9 + 1;
        }

        *(v5 + 2) = v9;
        ++v4;
        v5 += 2;
      }

      while (v4 < v3);
    }
  }

  return result;
}

_BYTE *strclean(_BYTE *a1, unint64_t a2, int __c)
{
  v3 = a1;
  v4 = 0;
  if (*a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      v6 = *++a1;
      ++v4;
      if (v6)
      {
        v7 = v4 >= a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
  }

  v7 = a2 >= v4;
  v8 = a2 - v4;
  if (v8 != 0 && v7)
  {
    memset(a1, __c, v8);
  }

  return v3;
}

uint64_t DiskBlockFactor(int a1, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a3 == 0x4000)
  {
    v6 = a4;
  }

  else
  {
    v6 = a6;
  }

  if (a3 == 24320)
  {
    v6 = a4;
  }

  if (a3 == 4097)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (a2 != 1)
  {
    v7 = v8;
  }

  if (a2 == 2)
  {
    v7 = a5;
  }

  if (a3 == 24320)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  if (a3 == 0x4000)
  {
    v10 = a4;
  }

  else
  {
    v10 = a6;
  }

  if (a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  if (a2 != 1)
  {
    v10 = v11;
  }

  if (a2 != 2)
  {
    v9 = v10;
  }

  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  if (a2 == 1)
  {
    v12 = a6;
  }

  if (a2 == 2)
  {
    v12 = a5;
  }

  if (a1 != 1)
  {
    v9 = v12;
  }

  if (a1)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

_DWORD *APMConvertBlocking(_DWORD *result, int a2, int a3, unsigned int a4)
{
  if (a3 != a4 && a3 && a4)
  {
    result[22] = result[22] & 0xFFBFFFFF | ((a4 == 1) << 22);
    v4 = result[2] * a3;
    v5 = result[3] * a3;
    if (a2 == 4097)
    {
      v6 = (v4 + v5 - 1) / a4;
      result[2] = 1;
      result[3] = v6;
LABEL_13:
      result[21] = v6;
      return result;
    }

    if (v4 % a4)
    {
      v7 = v4 / a4 + 1;
    }

    else
    {
      v7 = v4 / a4;
    }

    if (v5 % a4)
    {
      v6 = v5 / a4 + 1;
    }

    else
    {
      v6 = v5 / a4;
    }

    result[2] = v7;
    result[3] = v6;
    if (result[21])
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t PMRecord_NtoB(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 496) = 0;
  *(result + 464) = 0u;
  *(result + 480) = 0u;
  *(result + 432) = 0u;
  *(result + 448) = 0u;
  *(result + 400) = 0u;
  *(result + 416) = 0u;
  *(result + 368) = 0u;
  *(result + 384) = 0u;
  *(result + 336) = 0u;
  *(result + 352) = 0u;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *result = 19792;
  *(result + 4) = vrev32_s8(*(a2 + 4));
  *(result + 12) = bswap32(*(a2 + 12));
  *(result + 80) = vrev32q_s8(*(a2 + 80));
  *(result + 96) = bswap32(*(a2 + 96));
  *(result + 116) = bswap32(*(a2 + 116));
  if (result != a2)
  {
    __strlcpy_chk();
    __strlcpy_chk();
    __strlcpy_chk();
    result = __strlcpy_chk();
  }

  v3[34] = bswap32(*(a2 + 136));
  v3[37] = *(a2 + 148);
  v3[74] = bswap32(*(a2 + 296));
  v3[125] = bswap32(*(a2 + 500));
  return result;
}

uint64_t APMReadMedia(const void ***a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16 *))
{
  v8 = NewHandleClear(528);
  result = MemError();
  if (v8)
  {
    if ((a2 & 0x100) != 0)
    {
      result = APMReadRawMediaMap(v8, v10, a3, a4);
    }

    else
    {
      result = APMReadMediaMap(v8, a2, a3, a4);
    }
  }

  *a1 = v8;
  return result;
}

uint64_t APMReadMediaMap(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16 *))
{
  v4 = a3;
  v128 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v125 = 0u;
  memset(v124, 0, sizeof(v124));
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  memset(v100, 0, sizeof(v100));
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
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
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v65 = 0;
  v66[0] = 0;
  v66[1] = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (a2 == 0xFFFF)
  {
    v6 = 3584;
  }

  else
  {
    v6 = a2;
  }

  memset(v127, 0, 512);
  v7 = a4(a3, 2, 512, 0, 1, v127);
  LOWORD(v8) = v7;
  if (v7 || v127[0] != 21061)
  {
    if (v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    DDMRecord_BtoN(*a1, v127);
  }

  v9 = a1;
  v10 = *a1;
  v11 = a4(v4, 15, 0, 0, 0, &v65);
  if (v11)
  {
    goto LABEL_18;
  }

  v57 = v9;
  *(v10 + 500) = HIDWORD(v65) >> 9;
  MKScaleGeometry(v66, &v65 + 1);
  v12 = *(v10 + 2);
  if (!*(v10 + 2))
  {
    v12 = HIDWORD(v65);
    *(v10 + 2) = WORD2(v65);
  }

  v13 = v12 >> 9;
  v14 = ((v12 >> 9) & 0x60) != 0 ? v12 >> 9 : 31;
  v15 = (v6 & 0x200) != 0 ? 2 : 1;
  v11 = APMMapAnalysis(&v62, v14 + 1, v15, v13, v4, a4);
  if (v11)
  {
LABEL_18:
    LOWORD(v8) = v11;
    goto LABEL_19;
  }

  v18 = *v57;
  v58 = (v62 & 1) == 0;
  v18[256] = 516;
  v18[259] = v18[1];
  v56 = v13;
  if ((v6 & 0x400) != 0)
  {
    v18[1] = 512;
    v56 = 1;
  }

  v19 = WORD1(v62);
  if (!WORD1(v62))
  {
    v20 = 0;
    v29 = 1;
    v49 = 1;
    v23 = v57;
    goto LABEL_115;
  }

  v53 = 0;
  v54 = v13;
  v61 = v4;
  v59 = v6;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOWORD(v8) = 0;
  v23 = v57;
  v24 = a4;
  do
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
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
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    v25 = &v62 + 4 * v22 + 2;
    v26 = v21 + 1;
    v27 = v25[1];
    if (v26 % v27)
    {
      v28 = v26 / v27 + 1;
    }

    else
    {
      v28 = v26 / v27;
    }

    if (v25[2] < v28)
    {
      v29 = 1;
      goto LABEL_111;
    }

    v55 = 0;
    while (1)
    {
      v30 = *v23;
      v21 = v25[1] * v28;
      v20 = malloc_type_malloc(0x200uLL, 0x46A17F87uLL);
      if (!v20)
      {
        break;
      }

      v31 = v24(v61, 2, 512, v21, 1, v20);
      if (v31)
      {
        goto LABEL_108;
      }

      if (!PMRecord_BtoN(&v68, v20))
      {
        goto LABEL_103;
      }

      DWORD2(v73) &= 0xF000FFFF;
      v32 = PMLookupDESC(&v71, 0, &APMDescriptors);
      if (v32)
      {
        LODWORD(v33) = *v32;
        if ((v33 - 24577) <= 2)
        {
          v33 = 0x310150025F00uLL >> (16 * (v33 - 1));
          v34 = &off_2798A1168;
          do
          {
            v35 = *v34;
            if (!*v34)
            {
              break;
            }

            v36 = *(v34 - 4);
            v34 += 2;
          }

          while (v36 != v33);
          strncpypad(&v71, v35, 0x20uLL, 0);
        }

        if (v33 > 0x400Bu)
        {
          switch(v33)
          {
            case 0x400Cu:
              v55 = 4;
              break;
            case 0x5002u:
              v58 = 3;
              if ((v59 & 0x40000) != 0)
              {
                goto LABEL_50;
              }

              LOWORD(v33) = 20482;
              break;
            case 0x5F00u:
              v41 = v58;
              if (!HIDWORD(v68))
              {
                v41 = 2;
              }

              v58 = v41;
              if ((v59 & 0x40000) != 0)
              {
                goto LABEL_50;
              }

              LOWORD(v33) = 24320;
              if (v22)
              {
                if (!v41)
                {
LABEL_106:
                  v58 = 0;
LABEL_50:
                  v24 = a4;
                  goto LABEL_103;
                }
              }

              break;
          }
        }

        else
        {
          switch(v33)
          {
            case 0x1001u:
              if (HIDWORD(v99) == 1297238867)
              {
                DWORD2(v73) |= 0x800000u;
              }

              v42 = v25[3];
              HIDWORD(v68) = v42;
              if (!v22)
              {
                v30 = *v23;
                *(*v23 + 520) = v25[1] + v25[1] * v42 - 1;
              }

              if (!v58)
              {
                v58 = 0;
                DWORD2(v73) |= 0x1000000u;
              }

              LOWORD(v33) = 4097;
              break;
            case 0x3100u:
              WORD1(v99) = v25[1];
              LOWORD(v33) = 12544;
              break;
            case 0x4000u:
              if (!v58)
              {
                if (v22)
                {
                  goto LABEL_106;
                }

                v58 = 0;
                DWORD2(v73) |= 0x1000000u;
              }

              LOWORD(v33) = 0x4000;
              break;
          }
        }
      }

      else
      {
        LOWORD(v33) = 0;
      }

      if ((v59 & 0x20) != 0 && !HIDWORD(v68))
      {
        goto LABEL_50;
      }

      v37 = &APMDescriptors;
      while (*v37 != v33)
      {
        v38 = *(v37 + 3);
        v37 += 8;
        if (!v38)
        {
          v37 = &unk_2798A1440;
          break;
        }
      }

      v39 = v37[1];
      apmxrec2irec(&v68, v100);
      if (v22)
      {
        v40 = DWORD2(v101) | 0x2000000u;
LABEL_57:
        DWORD2(v101) = v40;
        goto LABEL_82;
      }

      if (WORD1(v62) <= 1u)
      {
        v40 = DWORD2(v101);
      }

      else
      {
        v40 = DWORD2(v101);
        if (!(v21 % HIWORD(v63)))
        {
          v40 = DWORD2(v101) | 0x1000000u;
          goto LABEL_57;
        }
      }

LABEL_82:
      v126 = v33;
      v43 = byte_2586A03B8[(v40 >> 24) & 3];
      if (v43 < 2)
      {
        WORD5(v125) = v21 - 1;
        v44 = -1;
LABEL_86:
        WORD4(v125) = v44;
        goto LABEL_87;
      }

      if (v43 == 2)
      {
        WORD5(v125) = -1;
        v44 = v21 - 1;
        goto LABEL_86;
      }

LABEL_87:
      v45 = v100[2];
      if (!v100[2])
      {
        goto LABEL_91;
      }

      v46 = DiskBlockFactor(v58, v43, v33, v25[1], v25[1], v54);
      if (v46 != v56)
      {
        PMConvertRecord(v100, v58, v33, v46, v56);
        v45 = v100[2];
      }

      if (!PMPSearchBlock(v30, v45, &v67))
      {
        v47 = v30 + 1072 * v67;
        *(v47 + 616) |= 0x1000000u;
        if (v33 == 12544 && v25[1] == v54)
        {
          *(v47 + 1036) = WORD6(v125);
        }

        v48 = v21 - 1;
        v23 = v57;
        v24 = a4;
        if (v22 < 1)
        {
          *(v47 + 1034) = v48;
        }

        else
        {
          *(v47 + 1032) = v48;
        }

        ++v53;
      }

      else
      {
LABEL_91:
        *(&v123 + 1) = v20;
        if (v33 == 4097 || v39 == 2)
        {
          MEMORY[0x259C86EE0](v124);
        }

        v23 = v57;
        LOWORD(v31) = addentry(v57, v100, 0x210uLL, 0x20Au, 0xFFFFu, 0x430u);
        v24 = a4;
        if (v31)
        {
LABEL_108:
          LOWORD(v8) = v31;
          goto LABEL_110;
        }

        v20 = 0;
      }

LABEL_103:
      LOWORD(v28) = v28 + 1;
      if (v25[2] < v28)
      {
        LOWORD(v8) = 0;
        goto LABEL_110;
      }
    }

    LOWORD(v8) = -1;
LABEL_110:
    v19 = WORD1(v62);
    v29 = (v55 & 4) == 0;
LABEL_111:
    ++v22;
  }

  while (v19 > v22);
  v49 = v53 == 0;
  v6 = v59;
  v4 = v61;
  if (!v8)
  {
    v13 = v54;
LABEL_115:
    *(*v23 + 514) = v58;
    if ((v6 & 0x100000) == 0 && v29)
    {
      PMISODetect(v23, v4, a4);
    }

    if ((v6 & 0x800) != 0)
    {
      PMSortMapII(v23, 0);
      if ((v6 & 0x10) != 0)
      {
        v50 = PMAccountFreespace(v23, 0, v6);
        if (v50)
        {
          LOWORD(v8) = v50;
          goto LABEL_136;
        }
      }

      if ((v6 & 0x400) != 0)
      {
        PMTrimOverlaps(v23);
      }
    }

    if ((v6 & 0x80) != 0)
    {
      PMRationalise(v23);
    }

    v51 = *v23;
    v52 = *(v51 + 2);
    if (!v52)
    {
      v52 = WORD2(v65);
      if ((v6 & 0x400) != 0)
      {
        v52 = 512;
      }

      *(v51 + 2) = v52;
    }

    if (!*(v51 + 4))
    {
      *(v51 + 4) = PMConvertBlocks(LODWORD(v66[0]), WORD2(v65), v52);
    }

    if ((v6 & 0x400) != 0)
    {
      PMDDMNormalise(v57, v13, v56);
      *(*v57 + 1) *= v13;
    }

    LOWORD(v8) = DeviceAdjustSpace(v57, 0, &v65, v6);
    if (!v49)
    {
      *(*v57 + 258) |= 1u;
    }
  }

LABEL_136:
  if (v20)
  {
    free(v20);
  }

LABEL_19:
  if (v8 == 0xFFFF)
  {
    v8 = *__error();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t DDMRecord_BtoN(uint64_t result, unsigned __int16 *a2)
{
  *result = bswap32(*a2) >> 16;
  *(result + 2) = bswap32(a2[1]) >> 16;
  *(result + 4) = bswap32(*(a2 + 1));
  *(result + 8) = bswap32(a2[4]) >> 16;
  *(result + 10) = bswap32(a2[5]) >> 16;
  *(result + 12) = bswap32(*(a2 + 3));
  v2 = bswap32(a2[8]) >> 16;
  if (v2 >= 0x11)
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = a2 + 9;
    v5 = result + 18;
    do
    {
      *v5 = bswap32(*v4);
      *(v5 + 4) = bswap32(v4[2]) >> 16;
      *(v5 + 6) = bswap32(v4[3]) >> 16;
      ++v3;
      v4 += 4;
      v5 += 8;
    }

    while (v2 > v3);
  }

  return result;
}

uint64_t APMMapAnalysis(uint64_t a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16 *))
{
  v7 = 0;
  v40 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 < 2)
  {
    goto LABEL_47;
  }

  v8 = a3;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  if (*(a1 + 2) < a3)
  {
    v11 = a4;
    v12 = a2;
    v7 = 0;
    v33 = a1 + 4;
    v13 = 1;
    v14 = 1;
    while (1)
    {
      LODWORD(v15) = a6(a5, 2, 512, v13, 1, v39);
      if (v15)
      {
        goto LABEL_60;
      }

      LODWORD(v15) = PMRecord_BtoN(v35, v39);
      if (v15)
      {
        v16 = 1 << (v13 - 1);
        if (v14 >= 0x20)
        {
          LODWORD(v16) = 0;
        }

        v7 |= v16;
        v15 = PMLookupDESC(v36, 0, &APMDescriptors);
        if (v15)
        {
          if (*v15 == 4097)
          {
            v17 = (v33 + 8 * *(a1 + 2));
            *v17 = v14;
            v18 = WORD2(v35[0]);
            v17[2] = WORD2(v35[0]);
            v19 = 1;
            v17[1] = 1;
            if ((v14 & 1) == 0)
            {
              LOWORD(v20) = v14;
              do
              {
                v21 = v20 & 2;
                v20 = v20 >> 1;
                v19 = (2 * v19);
              }

              while (v19 <= 7 && v21 == 0);
            }

            v23 = v11;
            if (v19 > v11)
            {
              v23 = v19;
            }

            if (v11 == 4)
            {
              v24 = v19;
            }

            else
            {
              v24 = v23;
            }

            if (v24 < 1)
            {
              LODWORD(v15) = 0;
            }

            else
            {
              v25 = v18 - 1;
              while (1)
              {
                LODWORD(v15) = a6(a5, 2, 512, (v24 * v25), 1, v38);
                if (v15)
                {
                  break;
                }

                if (v38[0] == 19792 || v38[0] == 19712)
                {
                  LODWORD(v15) = 0;
                  v28 = HIDWORD(v35[0]);
                  if (!HIDWORD(v35[0]))
                  {
                    v28 = DWORD1(v35[0]);
                  }

                  v17[1] = v24;
                  if (v28 >= 0x3F)
                  {
                    v28 = 63;
                  }

                  v17[3] = v28;
                  if (v12 < v28)
                  {
                    LOWORD(v28) = v12;
                  }

                  if (v24 == 1)
                  {
                    v12 = v28;
                  }

                  break;
                }

                v27 = v24;
                LOWORD(v24) = v24 >> 1;
                if (v27 <= 1)
                {
                  LODWORD(v15) = 0;
                  break;
                }
              }

              v11 = a4;
            }

            ++*(a1 + 2);
            v8 = a3;
          }

          else
          {
            LODWORD(v15) = 0;
          }
        }
      }

      if (++v14 < v12)
      {
        ++v13;
        if (*(a1 + 2) < v8)
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  LODWORD(v15) = 0;
  v7 = 0;
LABEL_46:
  if (!v15)
  {
LABEL_47:
    if (*(a1 + 2) != 1)
    {
      if (*(a1 + 2))
      {
        LOWORD(v15) = 0;
      }

      else
      {
        LOWORD(v15) = -5339;
      }

      goto LABEL_60;
    }

    v29 = *(a1 + 6);
    if (v29 == 4)
    {
      if (v7)
      {
        *a1 |= 1u;
        *(a1 + 12) = *(a1 + 4);
        *(a1 + 6) = 1;
        goto LABEL_59;
      }
    }

    else if (v29 == 1)
    {
      LOWORD(v15) = 0;
      if (*(a1 + 4) == 1 || (v7 & 0x8080808u) < 9)
      {
        goto LABEL_60;
      }

      *a1 |= 1u;
      *(a1 + 12) = *(a1 + 4);
      *(a1 + 14) = 4;
LABEL_59:
      LOWORD(v15) = 0;
      *(a1 + 2) = 2;
      goto LABEL_60;
    }

    LOWORD(v15) = 0;
  }

LABEL_60:
  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL PMRecord_BtoN(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  if (v2 == 19792 || v2 == 19712)
  {
    *a1 = __rev16(v2);
    *(a1 + 2) = bswap32(a2[1]) >> 16;
    *(a1 + 4) = vrev32_s8(*(a2 + 2));
    *(a1 + 12) = bswap32(*(a2 + 3));
    *(a1 + 80) = vrev32q_s8(*(a2 + 5));
    *(a1 + 96) = vrev32q_s8(*(a2 + 6));
    *(a1 + 112) = vrev32_s8(*(a2 + 56));
    if (a1 != a2)
    {
      *(a2 + 79) = 0;
      __strlcpy_chk();
      *(a2 + 47) = 0;
      __strlcpy_chk();
      *(a2 + 135) = 0;
      __strlcpy_chk();
      *(a2 + 497) = 0;
      __strlcpy_chk();
      *(a1 + 148) = *(a2 + 37);
    }

    *(a1 + 136) = bswap32(*(a2 + 34));
    *(a1 + 296) = bswap32(*(a2 + 74));
    *(a1 + 500) = bswap32(*(a2 + 125));
  }

  return v2 == 19792 || v2 == 19712;
}

uint64_t apmxrec2irec(uint64_t a1, char *a2)
{
  bzero(a2, 0x430uLL);
  *a2 = 20557;
  *(a2 + 1) = *(a1 + 8);
  *(a2 + 10) = *(a1 + 80);
  *(a2 + 22) = *(a1 + 88) & 0xF000FFFF;
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 29) = *(a1 + 116);
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  result = __strlcpy_chk();
  *(a2 + 34) = *(a1 + 136);
  *(a2 + 116) = *(a1 + 148);
  *(a2 + 128) = *(a1 + 500);
  *(a2 + 254) = *(a1 + 498);
  return result;
}

uint64_t PMPSearchBlock(uint64_t a1, int a2, __int16 *a3)
{
  if (!a1)
  {
    v3 = -1;
    v4 = -50;
    if (!a3)
    {
      return v4;
    }

    goto LABEL_9;
  }

  if (!*(a1 + 522))
  {
LABEL_6:
    v3 = -1;
    v4 = -5343;
    if (!a3)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v3 = 0;
  while (*(a1 + 528 + 1072 * v3 + 8) != a2)
  {
    if (*(a1 + 522) <= ++v3)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  if (a3)
  {
LABEL_9:
    *a3 = v3;
  }

  return v4;
}

uint64_t PMTrimOverlaps(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 522);
  if (v2 >= 3)
  {
    v3 = v2 - 2;
    do
    {
      v4 = v1[402] - v1[134];
      if (v1[135] > v4)
      {
        v1[135] = v4;
      }

      v1 += 268;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t APMCFRecordSections(Ptr *a1, const __CFDictionary *a2, __CFArray *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = MKCFOptionBit(a2, @"Include ddm section", 1);
    v7 = MKCFOptionBit(a2, @"Include ddm parts", 2) | v6;
    v8 = MKCFOptionBit(a2, @"Include most", 150);
    v9 = MKCFOptionBit(a2, @"Include all", 254) | v8;
    v10 = MKCFOptionBit(a2, @"Include drivers", 2);
    v11 = v9 | v10 | MKCFOptionBit(a2, @"Include data", 4);
    v12 = MKCFOptionBit(a2, @"Include free space", 8);
    v13 = v12 | MKCFOptionBit(a2, @"Include loaders", 16);
    v14 = v11 | v13 | MKCFOptionBit(a2, @"Include patch", 32);
    v15 = MKCFOptionBit(a2, @"Include aux", 64);
    v16 = v14 | v15 | MKCFOptionBit(a2, @"Include unknowns", 128);
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = 20;
LABEL_6:
  v46 = 0;
  if (v7 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  if ((~v17 & 3) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v16 & 0xFFFFFFCD;
  }

  v19 = APMCFRecordMapSection(a1, v18, &v46);
  LOWORD(v20) = v46;
  if (v46)
  {
    goto LABEL_13;
  }

  v23 = v19;
  if (v19)
  {
    CFArrayAppendValue(a3, v19);
    CFRelease(v23);
  }

  v24 = *a1;
  if (!*a1)
  {
    LOWORD(v20) = -1;
    goto LABEL_13;
  }

  v25 = (v24 + 16);
  if (!*(v24 + 8) || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    LOWORD(v20) = 0;
    goto LABEL_13;
  }

  v27 = Mutable;
  v48 = 0;
  CFDictionarySetValue(Mutable, @"ID", @"DDM");
  CFDictionarySetValue(v27, @"Name", @"Driver Descriptor Map");
  valuePtr = 0;
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v28)
  {
    goto LABEL_32;
  }

  v29 = v28;
  CFDictionarySetValue(v27, @"Offset", v28);
  CFRelease(v29);
  v30 = CFNumberCreate(0, kCFNumberSInt16Type, v24 + 16);
  if (!v30 || (v31 = v30, CFDictionarySetValue(v27, @"Count", v30), CFRelease(v31), (v32 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128])) == 0))
  {
LABEL_32:
    v46 = 0;
LABEL_33:
    CFArrayAppendValue(a3, v27);
    CFRelease(v27);
    LOWORD(v20) = v46;
    goto LABEL_13;
  }

  v33 = v32;
  CFDictionarySetValue(v27, @"Drivers", v32);
  CFRelease(v33);
  if (*(v24 + 8))
  {
    v34 = 0;
    v35 = (v24 + 18);
    while (1)
    {
      v36 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v36)
      {
        break;
      }

      v37 = v36;
      v38 = CFNumberCreate(0, kCFNumberSInt32Type, v35);
      if (!v38)
      {
        break;
      }

      v39 = v38;
      CFDictionarySetValue(v37, @"Offset", v38);
      CFRelease(v39);
      v40 = CFNumberCreate(0, kCFNumberSInt16Type, v35 + 2);
      if (!v40)
      {
        break;
      }

      v41 = v40;
      CFDictionarySetValue(v37, @"Size", v40);
      CFRelease(v41);
      OSType2Ascii(v35[3], cStr, 2);
      v42 = CFStringCreateWithCString(0, cStr, 0);
      if (!v42)
      {
        break;
      }

      v43 = v42;
      CFDictionarySetValue(v37, @"OS", v42);
      CFRelease(v43);
      CFArrayAppendValue(v33, v37);
      CFRelease(v37);
      ++v34;
      v35 += 4;
      if (v34 >= *v25)
      {
        goto LABEL_29;
      }
    }

    v20 = -1;
  }

  else
  {
LABEL_29:
    v20 = 0;
  }

  if (v17)
  {
    v44 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v44)
    {
      v45 = v44;
      CFDictionarySetValue(v27, @"Partitions", v44);
      CFRelease(v45);
      v20 = APMCFRecordPartitions(a1, v45, 0x32u, &v48);
    }
  }

  v46 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

unsigned __int16 *MBRDescriptorSearch(char *a1)
{
  result = PMLookupDESC(a1, 0, &MBRDescriptors);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t MBRCFCreateMap(__CFArray *a1, const __CFDictionary *a2, unsigned int a3, unsigned int a4, const __CFDictionary *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, void, void, uint64_t *))
{
  v22 = 0;
  valuePtr = 8;
  v24 = 1;
  if (!a2)
  {
    return 22;
  }

  v25 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20 = 0;
  result = a7(a6, 15, 0, 0, 0, &v20);
  if (!result)
  {
    v13 = WORD2(v20);
    if (a4)
    {
      if (!a3)
      {
        LOWORD(a3) = 512;
      }
    }

    else
    {
      MKScaleGeometry(v21, &v20 + 1);
      a4 = v21[0];
      if (a3 && HIDWORD(v20) < a3)
      {
        a4 = PMConvertBlocks(LODWORD(v21[0]), WORD2(v20), a3);
      }

      else
      {
        LOWORD(a3) = WORD2(v20);
      }
    }

    Value = CFDictionaryGetValue(a2, @"PMFormats");
    if (Value || (Value = CFDictionaryGetValue(a2, @"Map Format")) != 0)
    {
      CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
    }

    v15 = CFDictionaryGetValue(a2, @"Dual Format");
    v16 = (v15 || (v15 = CFDictionaryGetValue(a2, @"Dualmode")) != 0) && CFBooleanGetValue(v15) != 0;
    result = PMNewPartitionListInternal(&v22, 0, a4, a3, v16, valuePtr, 0);
    v25 = result;
    if (!result)
    {
      *(*v22 + 250) = v13 >> 9;
      v17 = CFDictionaryGetValue(a2, @"Partitions");
      v18 = CFDictionaryGetValue(a2, @"Revision");
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberSInt16Type, &v24);
      }

      v19 = MBRCFRecordMapSection(v22, 0x94u, &v25);
      result = v25;
      if (!v25)
      {
        if (v19)
        {
          CFArrayAppendValue(a1, v19);
          CFRelease(v19);
        }

        if (v17)
        {
          return MBRCFCreatePartitions(v19, v17, a3 >> 9, a5);
        }

        else
        {
          return v25;
        }
      }
    }
  }

  return result;
}

uint64_t MBRCFCreatePartitions(const __CFDictionary *a1, CFArrayRef theArray, unsigned int a3, const __CFDictionary *a4)
{
  if (!a1)
  {
    return 4294967246;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    if (!ValueAtIndex)
    {
      break;
    }

    result = MBRCFCreatePartition(a1, ValueAtIndex, a3, a4);
    if (result)
    {
      return result;
    }

    if (++v9 >= v10)
    {
      return 0;
    }
  }

  return 4294966881;
}

uint64_t MBRCFCreatePartition(const __CFDictionary *a1, const __CFDictionary *a2, unsigned int a3, const __CFDictionary *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = mkcfrecoverref(a1);
  if (v8)
  {
    v9 = v8;
    v16 = 0;
    bzero(v17, 0x430uLL);
    v10 = *(*v9 + 1) >> 9;
    result = PMPrimaryInfoUpdate(a2, *(*v9 + 257), v10, v17, 1);
    if (!result)
    {
      if (v22)
      {
        Value = CFDictionaryGetValue(a2, @"Options");
        v13 = MBRCFSetupWriteOptions(Value, a4);
        result = PMNewPartitionExtended(v9, v22, v21, v18, v19, v20, a3, &v16, v13);
        if (!result)
        {
          result = PMSecondaryInfoUpdate(a2, v10, *v9 + 1072 * v16 + 528, 1);
          if (!result)
          {
            v14 = CFDictionaryGetValue(a1, @"Partitions");
            result = MBRCFRecordPartition(v14, v9, 1, v16);
          }
        }
      }

      else if (!strcasecmp(v21, "Apple_Free"))
      {
        result = 0;
      }

      else
      {
        result = 4294961954;
      }
    }
  }

  else
  {
    result = 4294967246;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MBRCFSetupWriteOptions(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (!(a1 | a2))
  {
    return 49296;
  }

  v3 = a1;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (v3)
    {
      v7 = MKCFOptionBit(v3, @"Minimum One Block Gap", 0x1000000);
      v8 = MKCFOptionBit(v3, @"Sectors/Track Alignment", 0x2000000) | v7;
      v9 = MKCFOptionBit(v3, @"Boot Select", 0x4000000);
      v10 = v8 | v9 | MKCFOptionBit(v3, @"Protect NV Area", 0x8000000);
      v11 = MKCFOptionBit(v3, @"Retain existing content", 4);
      v4 |= v10 | v11 | MKCFOptionBit(v3, @"Direct Mode", 0x20000000);
    }

    v5 = 0;
    v3 = a2;
  }

  while ((v6 & 1) != 0);
  return v4;
}

uint64_t MBRCFWriteScheme(const __CFDictionary *a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void))
{
  if (!a1)
  {
    return 22;
  }

  v10 = MBRCFSetupWriteOptions(a4, 0);
  Value = CFDictionaryGetValue(a1, @"Sections");
  if (!Value)
  {
    return 22;
  }

  v12 = CFArrayDictionarySearchWithIndexOptions(Value, @"ID", @"MAP", 0, 0);
  if (!v12)
  {
    return 22;
  }

  v13 = v12;
  v14 = mkcfrecoverref(v12);
  if (!v14)
  {
    return 22;
  }

  v15 = v14;
  valuePtr = 0;
  v16 = CFDictionaryGetValue(a1, @"Alignment");
  if (v16)
  {
    CFNumberGetValue(v16, kCFNumberSInt16Type, &valuePtr);
    v18 = valuePtr;
  }

  else
  {
    v18 = *(*v15 + 518) >> 9;
    valuePtr = *(*v15 + 518) >> 9;
  }

  result = MBRCFUpdateSection(v13, v17, v18, a4);
  if (!result)
  {
    v20 = mkcfrecoverref(v13);
    result = MBRWriteMedia(v20, v10, a5, a6);
    if (!result)
    {
      v21 = CFDictionaryGetValue(v13, @"Partitions");
      result = MBRCFRecordPartitions(v20, v21, 0, 0xFFFFFFFF, 0);
      if (!result)
      {
        v23.length = CFArrayGetCount(v21);
        v23.location = 0;
        CFArraySortValues(v21, v23, CFRankPartition, 0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t MBRCFUpdateSection(const __CFDictionary *a1, uint64_t a2, unsigned int a3, const __CFDictionary *a4)
{
  v54[2] = *MEMORY[0x277D85DE8];
  if (!a1 || (v7 = mkcfrecoverref(a1)) == 0)
  {
    result = 22;
    goto LABEL_52;
  }

  v8 = v7;
  v9 = *v7;
  Value = CFDictionaryGetValue(a1, @"Media Block Size");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt16Type, (v9 + 518));
  }

  v52 = 0;
  v54[1] = 0;
  v54[0] = 0;
  memset(v53, 0, 512);
  v11 = CFDictionaryGetValue(a1, @"Partitions");
  Count = CFArrayGetCount(v11);
  if (!Count)
  {
LABEL_48:
    LOWORD(UUID) = 0;
    goto LABEL_51;
  }

  v13 = Count;
  v51 = a3;
  v50 = a4;
  v14 = 0;
  v49 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
    if (!ValueAtIndex)
    {
      LOWORD(UUID) = 22;
      goto LABEL_51;
    }

    v16 = ValueAtIndex;
    v17 = *(*v8 + 2) >> 9;
    v18 = PMPrimaryInfoUpdate(ValueAtIndex, *(*v8 + 514), v17, v53, 1);
    if (v18)
    {
      break;
    }

    UUID = CFDictionaryGetUUID(v16, @"GUID", v54);
    if (!UUID)
    {
      UUID = PMGuidSearch(v8, v54, &v52);
    }

    v20 = CFDictionaryGetValue(v16, @"Options");
    if (v20)
    {
      v21 = MKCFOptionBit(v20, @"Allocate Remaining Space", 0x400000);
      v22 = UUID == -5343;
      if (UUID == -5343 && (v21 & 0x400000) != 0)
      {
        HIDWORD(v53[0]) = 0;
LABEL_23:
        v26 = MBRCFCreatePartition(a1, v16, v51, v50);
LABEL_24:
        UUID = v26;
LABEL_25:
        if (UUID)
        {
          goto LABEL_51;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v22 = UUID == -5343;
    }

    if (UUID)
    {
      if (!(HIDWORD(v53[0]) + DWORD2(v53[0])))
      {
        v22 = 0;
      }

      if (!v22)
      {
        goto LABEL_51;
      }

      goto LABEL_23;
    }

    v23 = DWORD2(v53[0]);
    v24 = HIDWORD(v53[0]);
    if (DWORD2(v53[0]) + HIDWORD(v53[0]))
    {
      v27 = *v8;
      v28 = *v8 + 528;
      v29 = v52;
      v30 = v28 + 1072 * v52;
      if ((*(v30 + 468) & 0x10) == 0)
      {
        v46 = *v8 + 528;
        v47 = *v8;
        v48 = (v28 + 1072 * v52);
        if (!HIDWORD(v53[0]))
        {
          v31 = v52 + 1;
          if (v31 >= *(v27 + 522))
          {
            v33 = *(v27 + 4);
          }

          else
          {
            v32 = v28 + 1072 * v31;
            v33 = *(v32 + 8);
            if (*(v32 + 554) == 24320)
            {
              v33 += *(v32 + 12);
            }
          }

          HIDWORD(v53[0]) = (v33 - *(v30 + 8)) / v51 * v51;
          v34 = CFNumberCreate(0, kCFNumberSInt32Type, (v53 | 0xC));
          CFDictionarySetValue(v16, @"Size", v34);
          CFRelease(v34);
          v23 = DWORD2(v53[0]);
          v24 = HIDWORD(v53[0]);
          v29 = v52;
        }

        v26 = SValidate(v8, v23, v24, v29);
        if (v26)
        {
          goto LABEL_24;
        }

        v35 = v48[3];
        v36 = v49;
        if (HIDWORD(v53[0]) < v35)
        {
          v36 = DWORD2(v53[0]) + HIDWORD(v53[0]);
        }

        v49 = v36;
        v44 = HIDWORD(v53[0]);
        v45 = v48[3];
        v37 = v35 - HIDWORD(v53[0]);
        if (v35 < HIDWORD(v53[0]))
        {
          v37 = 0;
        }

        v43 = v37;
        v18 = PMPrimaryInfoUpdate(v16, *(v47 + 514), v17, v48, 0);
        if (v18)
        {
          break;
        }

        v38 = PMSecondaryInfoUpdate(v16, v17, v48, 0);
        UUID = v38;
        if (v44 >= v45 || v38)
        {
          goto LABEL_25;
        }

        if (*(v47 + 522) <= (v52 + 1) || (v39 = v46 + 1072 * (v52 + 1), *(v39 + 554) != 24320))
        {
          v26 = PMGenPartitionType(v8, 24320, v49, v43, *(v47 + 2), 0x200000, 0, 0, v52);
          goto LABEL_24;
        }

        v40 = *(v39 + 12) + v43;
        *(v39 + 8) -= v43;
        *(v39 + 12) = v40;
      }

LABEL_26:
      if (++v14 >= v13)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v25 = PMRemovePartition(v8, v52, 1);
      CFArrayRemoveValueAtIndex(v11, v14);
      if (--v13 <= v14)
      {
        LOWORD(UUID) = v25;
        goto LABEL_51;
      }
    }
  }

  LOWORD(UUID) = v18;
LABEL_51:
  result = UUID;
LABEL_52:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MKCreateLoaderPartition(const void **a1, __CFBundle *a2, CFDictionaryRef theDict, unsigned int a4, int a5, int a6, char *a7, int a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  v31 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v28 = -5343;
  if (a6 >= 1)
  {
    v14 = theDict;
    v17 = 0;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    if (theDict || (v28 = -43, v14 = MKLoadDB(a2, @"inventory", &v28), (v17 = v14) != 0))
    {
      v28 = -417;
      Value = CFDictionaryGetValue(v14, @"Loaders");
      if (Value)
      {
        v19 = Value;
        v28 = -415;
        v20 = CFStringCreateWithCString(0, a7, 0);
        if (v20)
        {
          v21 = v20;
          v22 = CFDictionaryGetValue(v19, v20);
          CFRelease(v21);
          if (v22)
          {
            v28 = MKGetPartitionInfo(v22, *(*a1 + 257), v29);
            if (!v28)
            {
              v23 = CFDictionaryGetValue(v22, @"Minimum Host Size");
              if (v23)
              {
                CFNumberGetValue(v23, kCFNumberSInt32Type, &valuePtr);
                v24 = valuePtr;
              }

              else
              {
                v24 = 0;
              }

              v28 = PMCreateLoader(a1, a4, a6, v24, a7, a8, v29);
              if (!v28)
              {
                v28 = MKUpdateLoader(a1, a6, a2, v14, a9, a10);
              }
            }
          }
        }
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  result = v28;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MKGetPartitionInfo(const __CFDictionary *a1, int a2, uint64_t a3)
{
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  Value = CFDictionaryGetValue(a1, @"Partition Type");
  if (!Value)
  {
    return 4294966879;
  }

  result = PMCFSetupPartitionType(a2, Value, (a3 + 100), (a3 + 33));
  if (!result)
  {
    v8 = CFDictionaryGetValue(a1, @"Partition Name");
    if (v8)
    {
      CFStringGetCString(v8, a3, 33, 0);
    }

    v9 = CFDictionaryGetValue(a1, @"Partition Size");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberSInt32Type, (a3 + 88));
    }

    v10 = CFDictionaryGetValue(a1, @"Partition Signature");
    if (v10)
    {
      v13.location = 0;
      v13.length = 4;
      CFStringGetBytes(v10, v13, 0, 0, 0, (a3 + 84), 4, 0);
    }

    v11 = CFDictionaryGetValue(a1, @"Partition Position");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt32Type, (a3 + 92));
    }

    v12 = CFDictionaryGetValue(a1, @"Partition Options");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, (a3 + 96));
    }

    result = CFDictionaryGetValue(a1, @"Partition Processor");
    if (result)
    {
      CFStringGetCString(result, (a3 + 66), 17, 0);
      return 0;
    }
  }

  return result;
}

uint64_t PMCreateLoader(const void **a1, unsigned int a2, int a3, uint64_t a4, char *a5, int a6, uint64_t a7)
{
  if (!a7)
  {
    return 22;
  }

  v10 = *a1;
  v11 = *a1 + 528;
  v12 = v11 + 1072 * (a3 - 1);
  v13 = *(*a1 + 1);
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v13 >> 9;
  }

  v15 = PMConvertBlocks(*(a7 + 88), 0x200u, v13);
  v16 = PMConvertBlocks(a4, 0x200u, v13);
  v17 = v15 / v14;
  if (v15 % v14)
  {
    ++v17;
  }

  v18 = v17 * v14;
  if (!strcasecmp((v12 + 48), (a7 + 33)) && *(v12 + 12) == v18)
  {
    return 0;
  }

  if (*(v12 + 554) == 24320 && *(v12 + 12) >= v18)
  {
    v26 = PMCodeSearch(24320, v10[257]);
    result = strncasecmp((a7 + 33), v26, 0x20uLL);
    if (!result)
    {
      return result;
    }

    v27 = *(v12 + 8);
    v28 = *(v12 + 12) - v18;
    *(v12 + 12) = v28;
    v24 = v27 + v28;
  }

  else
  {
    v20 = (v11 + 1072 * a3);
    v21 = v20[3];
    v22 = v21 - v18;
    if (v21 <= v18 || v21 < v16)
    {
      return 28;
    }

    if (!a6)
    {
      return 1;
    }

    v24 = v20[2];
    v20[2] = v24 + v18;
    v20[3] = v22;
    v25 = v20[22] | 0x100000;
    v20[21] = v22;
    v20[22] = v25;
  }

  result = PMGenPartition(a1, (a7 + 33), v24, v18, v13, 0, a7, 0, a3);
  if (!result)
  {
    v29 = *a1 + 1072 * a3;
    result = PMSetupLoader(v29 + 528, a5, a7);
    *(v29 + 996) |= 0x10u;
    *(v29 + 2068) |= 8u;
  }

  return result;
}

uint64_t PMSetupLoader(uint64_t a1, char *a2, uint64_t a3)
{
  result = 22;
  if (a1 && a3)
  {
    *(a1 + 136) = *(a3 + 84);
    strncpypad((a1 + 120), (a3 + 66), 0x10uLL, 0);
    strncpypad((a1 + 472), a2, 0x20uLL, 0);
    if (!*(a1 + 16))
    {
      strncpypad((a1 + 16), a2, 0x20uLL, 0);
    }

    result = 0;
    *(a1 + 468) |= 0x20u;
  }

  return result;
}

uint64_t MKUpdateLoader(uint64_t *a1, int a2, __CFBundle *a3, CFDictionaryRef theDict, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  v42 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v6 = *a1;
  v7 = *a1 + 1072 * a2;
  if (!*(v7 + 1000))
  {
    LOWORD(v24) = 0;
    goto LABEL_43;
  }

  Value = CFDictionaryGetValue(theDict, @"Loaders");
  if (!Value || (v14 = Value, (v15 = CFStringCreateWithCString(0, (v7 + 1000), 0)) == 0))
  {
    LOWORD(v24) = -417;
    goto LABEL_43;
  }

  v16 = v15;
  v17 = CFDictionaryGetValue(v14, v15);
  if (v17)
  {
    v18 = v17;
    v19 = CFDictionaryGetValue(v17, @"Loader Present");
    if (v19 && !CFBooleanGetValue(v19))
    {
      v24 = 0;
    }

    else
    {
      v20 = CFDictionaryGetValue(v18, @"Major Vers");
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberSInt16Type, &valuePtr);
      }

      v21 = CFDictionaryGetValue(v18, @"Minor Vers");
      if (v21)
      {
        CFNumberGetValue(v21, kCFNumberSInt16Type, &v39);
      }

      v22 = CFDictionaryGetValue(v18, @"Checksum");
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberSInt32Type, &v38 + 4);
        v23 = HIDWORD(v38);
      }

      else
      {
        v23 = 0;
      }

      v25 = (v7 + 528);
      if ((v23 || valuePtr || v39) && (!v23 || v23 == *(v7 + 644)) && (!valuePtr || valuePtr == *(v7 + 992)) && (!v39 || v39 == *(v7 + 994)))
      {
        v24 = -1306;
      }

      else
      {
        v26 = CFDictionaryGetValue(v18, @"Loader Name");
        if (v26)
        {
          v27 = v26;
          CFRelease(v16);
          v16 = CFRetain(v27);
        }

        v28 = ResolveLoaderPath(a3, v18, v16, v41);
        if (v28)
        {
          goto LABEL_36;
        }

        v29 = *(v6 + 2);
        v30 = v25[2];
        v31 = v25[3] >= 0xC8 ? 200 : v25[3];
        v37 = v31;
        v28 = (a6)(a5, 4, v29, v30);
        if (v28 || (v28 = PMWriteContentInternal(v6, a2, v41, 0, 0x7D0000u, &v37, a5, a6), v25[21] = v37, v28) || (v28 = PMChecksumExtended(a1, a2, 0, &v38, 0x7D0000u, 0, 1, a5, a6)) != 0)
        {
LABEL_36:
          v24 = v28;
        }

        else
        {
          v34 = v38;
          if (!HIDWORD(v38) || HIDWORD(v38) == v38)
          {
            v35 = *a1 + 1072 * a2;
            *(v35 + 992) = valuePtr;
            *(v35 + 994) = v39;
            *(v35 + 644) = v34;
            v36 = CFDictionaryGetValue(v18, @"Post Action Code");
            if (v36)
            {
              CFNumberGetValue(v36, kCFNumberSInt16Type, &valuePtr + 2);
              if (HIWORD(valuePtr))
              {
                v24 = 22;
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = -5349;
          }
        }

        if (!v16)
        {
          goto LABEL_41;
        }
      }
    }
  }

  else
  {
    v24 = -415;
  }

  CFRelease(v16);
LABEL_41:
  if (v24 == -1)
  {
    v24 = *__error();
  }

LABEL_43:
  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t PMWriteContentInternal(uint64_t a1, int a2, const char *a3, int a4, unsigned int a5, _DWORD *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  v13 = *(a1 + 2);
  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = 8192000;
  }

  if (v14 % v13)
  {
    v15 = v14 / v13 + 1;
  }

  else
  {
    v15 = v14 / v13;
  }

  v16 = v15 * v13;
  v17 = malloc_type_calloc(1uLL, v16, 0x7C464E06uLL);
  if (v17)
  {
    v18 = v17;
    if (a2 >= *(a1 + 522))
    {
      v25 = 0;
      v30 = 0;
      v31 = -5343;
    }

    else
    {
      v19 = a1 + 1072 * a2;
      v20 = *(v19 + 536);
      v21 = *(v19 + 540);
      v22 = gzopen(a3, "rb");
      if (v22)
      {
        v23 = v22;
        v24 = gzread(v22, v18, v16);
        if (v24)
        {
          v25 = 0;
          v26 = (v21 + v20);
          v27 = (v20 + a4);
          while (1)
          {
            v28 = v24;
            if (v16 != v24)
            {
              bzero(&v18[v24], v16 - v24);
            }

            v29 = v28 % v13 ? v28 / v13 + 1 : v28 / v13;
            if (v29 + v27 > v26)
            {
              break;
            }

            v24 = a8(a7, 3, v13, v27, v29, v18);
            if (!v24)
            {
              v25 += v29;
              v24 = gzread(v23, v18, v16);
              v27 += v29;
              if (v24)
              {
                continue;
              }
            }

            goto LABEL_28;
          }

          LOWORD(v24) = -5344;
LABEL_28:
          v31 = v24;
        }

        else
        {
          v25 = 0;
          v31 = 0;
        }

        v32 = a6;
        v30 = gzclose(v23);
LABEL_30:
        free(v18);
        if (!v32)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v25 = 0;
      v30 = 0;
      v31 = -1;
    }

    v32 = a6;
    goto LABEL_30;
  }

  v25 = 0;
  v30 = 0;
  v31 = -1;
  v32 = a6;
  if (a6)
  {
LABEL_31:
    *v32 = v25;
  }

LABEL_32:
  if (v31)
  {
    if (v31 == -1)
    {
      v31 = *__error();
    }
  }

  else
  {
    LOWORD(v31) = v30;
  }

  return v31;
}

uint64_t PMChecksumExtended(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unsigned int a5, int a6, char a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  if (a1)
  {
    v15 = *(*a1 + 2);
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = 8192000;
    }

    if (v16 % v15)
    {
      v17 = v16 / v15 + 1;
    }

    else
    {
      v17 = v16 / v15;
    }

    v18 = v17 * v15;
    v19 = malloc_type_calloc(1uLL, v17 * v15, 0xBB26FDD4uLL);
    if (!v19)
    {
LABEL_38:
      v37 = *__error();
      return v37;
    }

    v20 = v19;
    if (a2 >= *(*a1 + 522))
    {
      goto LABEL_35;
    }

    v21 = *a1 + 1072 * a2;
    v22 = v21 + 528;
    v23 = *(v21 + 536);
    if ((a7 & 1) == 0 || (v24 = *(v22 + 84)) == 0)
    {
      v24 = *(v22 + 12);
    }

    v25 = v24;
    v26 = v23 + a6;
    v27 = v25 - a6;
    if (!a6)
    {
      v26 = v23;
      v27 = v25;
    }

    v28 = v25 + a6;
    v29 = a6 >= 0;
    if (a6 < 0)
    {
      v30 = v23;
    }

    else
    {
      v30 = v26;
    }

    if (v29)
    {
      v31 = v27;
    }

    else
    {
      v31 = v28;
    }

    v32 = MKBlockChecksum;
    if (a3 == 1)
    {
      v32 = MKBlockChecksum2;
    }

    v33 = a3 >= 0xA ? a3 : v32;
    if (v31)
    {
      v34 = v18 / v15;
      while (1)
      {
        v35 = v31 >= v34 ? v34 : v31;
        v36 = a9(a8, 2, v15, v30, v35, v20);
        if (v36)
        {
          break;
        }

        v33(a4, v20, (v35 * v15));
        v30 += v35;
        v31 -= v35;
        if (!v31)
        {
          LOWORD(v37) = 0;
          goto LABEL_36;
        }
      }

      v37 = v36;
      free(v20);
      if (v37 == -1)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_35:
      LOWORD(v37) = -5343;
LABEL_36:
      free(v20);
    }
  }

  else
  {
    LOWORD(v37) = -50;
  }

  return v37;
}

uint64_t MKBlockChecksum(_DWORD *a1, unsigned int *a2, unsigned int a3)
{
  v3 = *a1;
  if (a2 && a3 >= 4)
  {
    v4 = (a2 + (a3 & 0xFFFFFFFC));
    do
    {
      HIDWORD(v5) = v3;
      LODWORD(v5) = v3;
      v6 = *a2++;
      v3 = bswap32(v6) + (v5 >> 31);
    }

    while (a2 < v4);
  }

  *a1 = v3;
  return v3;
}

char *OSType2Ascii(uint64_t a1, char *a2, char a3)
{
  HIDWORD(v7) = a1;
  *a2 = 0;
  if (a1 || (a3 & 1) == 0)
  {
    v4 = 0;
    while (*(&v7 + v4 + 4) > 47)
    {
      if (++v4 == 4)
      {
        sprintf(a2, "%4.4s");
        return a2;
      }
    }

    if ((a3 & 2) != 0)
    {
      v5 = "0x%08x";
    }

    else
    {
      v5 = "%08x";
    }

    sprintf(a2, v5, a1, v7);
  }

  return a2;
}

uint64_t MKCFUpdateScheme(const __CFDictionary *a1, __CFBundle *a2, unsigned int a3, const __CFDictionary *a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 && (Value = CFDictionaryGetValue(a1, @"ID")) != 0 && CFStringGetCString(Value, buffer, 32, 0) && (v11 = CFDictionaryGetValue(a1, @"Sections")) != 0 && (v12 = CFArrayDictionarySearchWithIndexOptions(v11, @"ID", @"MAP", 0, 0)) != 0)
  {
    v13 = v12;
    if (a4)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a4);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v18 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, @"Write Protect", *MEMORY[0x277CBED28]);
      v19 = PMSchemeSearchByDescriptor(buffer, 0);
      if (v19 == 16)
      {
        v20 = GPTCFUpdateSection(v13, a2, a3, v18, a5);
      }

      else if (v19 == 8)
      {
        v20 = MBRCFUpdateSection(v13, a2, a3, v18);
      }

      else
      {
        if (v19 != 1)
        {
          v15 = 4294961989;
          goto LABEL_21;
        }

        v20 = APMCFUpdateSection(v13, a2, a3, v18, a5, MKMediaDeviceIO);
      }

      v15 = v20;
LABEL_21:
      CFRelease(v18);
      goto LABEL_9;
    }

    v15 = 12;
  }

  else
  {
    v15 = 22;
  }

LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t MKCFPrepareBootDevice(char *a1, __CFString *a2, const __CFString *a3, unsigned int a4, unsigned int a5, _DWORD *a6, char *a7)
{
  v56 = *MEMORY[0x277D85DE8];
  cf = 0;
  v45 = 0;
  v52 = 0uLL;
  v43 = 0;
  *buffer = 0u;
  v51 = 0u;
  memset(v49, 0, sizeof(v49));
  v42 = 0;
  valuePtr = 0;
  UUID = 22;
  if (MKBSDSlice(a1, &v45 + 4, &v45, 0) < 2 || (__sprintf_chk(v55, 0, 0x20uLL, "disk%i", HIDWORD(v45)), __sprintf_chk(v54, 0, 0x20uLL, "/dev/r%s", v55), __sprintf_chk(bsdName, 0, 0x20uLL, "disk%is%i", HIDWORD(v45), v45), !v45) || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
  {
    v16 = 0;
    goto LABEL_9;
  }

  v14 = Mutable;
  v15 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"Writable", *MEMORY[0x277CBED28]);
  if ((a4 & 2) != 0)
  {
    CFDictionarySetValue(v14, @"Shared Writer", v15);
  }

  UUID = DevEntryCopyRegistryProperties(bsdName, &cf);
  if (UUID)
  {
    v16 = 0;
    v17 = v14;
LABEL_21:
    CFRelease(v17);
    goto LABEL_9;
  }

  v20 = MKMediaCreateWithPath(0, v54, v14, &UUID);
  if (UUID)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v21 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = v21;
  if (v21)
  {
    CFDictionarySetValue(v21, @"Include most", v15);
    v22 = MKCFReadMedia(v17, v20, &UUID);
    if (v22)
    {
      v23 = v22;
      UUID = -5343;
      Value = CFDictionaryGetValue(v22, @"Schemes");
      if (!Value)
      {
        goto LABEL_32;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      if (!ValueAtIndex)
      {
        goto LABEL_32;
      }

      v26 = CFDictionaryGetValue(ValueAtIndex, @"Sections");
      if (!v26)
      {
        goto LABEL_32;
      }

      v27 = CFArrayDictionarySearchWithIndexOptions(v26, @"ID", @"MAP", 0, 0);
      if (!v27)
      {
        goto LABEL_32;
      }

      theDict = v27;
      v41 = CFDictionaryGetValue(v27, @"Partitions");
      if (!v41 || (v28 = CFDictionaryGetValue(cf, @"Partition ID")) == 0 || (v29 = CFArrayDictionarySearchWithIndexOptions(v41, @"Partition ID", v28, 0, 0)) == 0 || (v38 = v29, CFRelease(cf), cf = 0, (UUID = CFDictionaryGetUUID(v38, @"GUID", &v52)) != 0))
      {
LABEL_32:
        v16 = 0;
        goto LABEL_33;
      }

      v30 = CFDictionaryGetValue(theDict, @"Revision");
      if (v30)
      {
        CFNumberGetValue(v30, kCFNumberSInt32Type, &valuePtr);
      }

      theDicta = mkcfrecoverref(theDict);
      if (valuePtr == 0x10000)
      {
        v32 = GPTMakePartBootable(0, theDicta, &v52, a2, a3, v20, a4, a5, &v42);
        v16 = 0;
        UUID = v32;
        if (v32 || !v42)
        {
          goto LABEL_58;
        }

        UUID = GPTWriteMedia(theDicta, 0, v20);
        if (UUID)
        {
          goto LABEL_55;
        }

        v33 = GPTUpdatePartitionDictionaries(theDicta, v41);
      }

      else
      {
        if (valuePtr)
        {
          v16 = 0;
          UUID = 0;
LABEL_58:
          CFRelease(v20);
          if (!UUID)
          {
            UUID = -5343;
            v20 = uuid2cfstr(&v52);
            if (!v20)
            {
              goto LABEL_33;
            }

            v34 = CFArrayDictionarySearchWithIndexOptions(v41, @"GUID", v20, 0, 0);
            CFRelease(v20);
            if (v34)
            {
              v35 = CFDictionaryGetValue(v34, @"Partition ID");
              if (v35)
              {
                UUID = DevEntryCopyChildPropertiesMatchingProperty(v55, @"Partition ID", v35, &cf);
                if (!UUID)
                {
                  v36 = CFDictionaryGetValue(cf, @"BSD Name");
                  CFStringGetCString(v36, __s, 32, 0x8000100u);
                  v37 = strrchr(__s, 115);
                  v20 = 0;
                  LODWORD(v45) = atoi(v37 + 1);
                  goto LABEL_33;
                }
              }
            }
          }

          v20 = 0;
LABEL_33:
          MKCFDisposeMedia(v23);
          goto LABEL_18;
        }

        if (a2)
        {
          UUID = PMCFSetupPartitionType(*(*theDicta + 514), a2, &v43, v49);
          if (UUID)
          {
            a2 = 0;
          }

          else
          {
            a2 = v49;
          }
        }

        if (a3)
        {
          v31 = buffer;
          CFStringGetCString(a3, buffer, 32, 0);
        }

        else
        {
          v31 = 0;
        }

        v16 = 0;
        UUID = MKMakePartBootable(0, theDicta, &v52, v43, a2, v31, a4, v20, MKMediaDeviceIO, &v42);
        if (UUID || !v42)
        {
          goto LABEL_58;
        }

        UUID = VWritePartitions(theDicta, 0xFFFFu, 0xC090u, v20, MKMediaDeviceIO);
        if (UUID)
        {
LABEL_55:
          v16 = 0;
          goto LABEL_58;
        }

        v33 = MKCFRecordPartitions(theDicta, v41);
      }

      UUID = v33;
      v16 = 1;
      goto LABEL_58;
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
    UUID = 12;
  }

LABEL_18:
  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(v14);
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a6)
  {
    *a6 = v45;
  }

  if (a7)
  {
    *a7 = v16;
  }

  result = UUID;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GPTMakePartBootable(__CFBundle *a1, uint64_t *a2, unsigned __int8 *a3, const __CFString *a4, const __CFString *a5, uint64_t a6, int a7, unsigned int a8, BOOL *a9)
{
  v53 = *MEMORY[0x277D85DE8];
  v50 = 22;
  *a9 = 0;
  v16 = a1;
  if (!a1)
  {
    v16 = MKAccessLibrary(0);
    if (!v16)
    {
      LODWORD(a5) = 0;
      goto LABEL_14;
    }
  }

  v49 = 0;
  v48 = 0;
  memset(v47, 0, 154);
  v17 = MKLoadDB(v16, @"database", &v50);
  if (!v17)
  {
    LODWORD(a5) = 0;
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v18 = v17;
  v19 = MKLoadDB(v16, @"inventory", &v50);
  if (v19)
  {
    cf = v19;
    v50 = gpmrsearch(a2, a3, &v49);
    if (v50)
    {
      LODWORD(a5) = 0;
LABEL_7:
      CFRelease(v18);
      v18 = cf;
      goto LABEL_11;
    }

    v44 = a7;
    v22 = *a2 + 152 * v49;
    v23 = (v22 + 96);
    v24 = *(*a2 + 32);
    v25 = v24 >= 0x400;
    v26 = a8 / (v24 >> 9);
    if (!v25)
    {
      v26 = a8;
    }

    v43 = v26;
    if (a4)
    {
      CFStringGetCString(a4, buffer, 96, 0x8000100u);
      GPTuuidType2HumanExtended(buffer, buffer, 96, 0, 0);
      v27 = v23;
      v28 = utf8strcompare(1uLL, v23 + 48, buffer);
      v29 = v28 == 0;
      if (!a5)
      {
        v30 = v44;
        if (v28)
        {
          v31 = v27;
          goto LABEL_27;
        }

        LODWORD(a5) = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v27 = (v22 + 96);
      if (!a5)
      {
LABEL_32:
        v31 = v27;
        goto LABEL_33;
      }

      v29 = 1;
    }

    v30 = v44;
    CFStringGetCString(a5, v52, 96, 0x8000100u);
    v32 = v27;
    v33 = utf8strcompare(1uLL, v27, v52);
    if (!v29)
    {
      __strlcpy_chk();
      v31 = v32;
      if (!v33)
      {
LABEL_28:
        if ((v30 & 4) == 0)
        {
          *(v31 + 17) |= 8uLL;
        }

        LODWORD(a5) = 1;
        goto LABEL_33;
      }

LABEL_27:
      __strlcpy_chk();
      goto LABEL_28;
    }

    v31 = v32;
    if (v33)
    {
      goto LABEL_27;
    }

    LODWORD(a5) = 0;
LABEL_33:
    v34 = CFStringCreateWithCString(0, v31 + 48, 0);
    if (!v34)
    {
      v50 = -1;
      goto LABEL_7;
    }

    v35 = v34;
    v50 = MKLookupSchemeFormat(v18, @"GPT", v34, 1, v47);
    CFRelease(v35);
    if (v50 || !LOWORD(v47[0]))
    {
      goto LABEL_7;
    }

    v36 = 0;
    v37 = v47 + 2;
    while (1)
    {
      v38 = CFStringCreateWithCString(0, v37, 0);
      if (!v38)
      {
        goto LABEL_7;
      }

      v39 = v38;
      v40 = *(v37 + 17);
      if (v40 == 6)
      {
        break;
      }

      if (v40 != 5)
      {
        if (v40 == 1)
        {
          break;
        }

        v50 = -4;
      }

LABEL_47:
      CFRelease(v39);
      if (!v50)
      {
        ++v36;
        v37 += 38;
        if (v36 < LOWORD(v47[0]))
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v41 = mediaLoaderSupport(v16, v38, a2, a3, a6, v40, v43, v44, 0, 1u, 0, &v48);
    if (v41 == 28)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v50 = v42;
    if (!v42)
    {
      LODWORD(a5) = (v48 & 1) + a5;
    }

    goto LABEL_47;
  }

  LODWORD(a5) = 0;
LABEL_11:
  CFRelease(v18);
  if (!a1)
  {
LABEL_12:
    CFRelease(v16);
  }

LABEL_14:
  *a9 = a5 > 0;
  result = v50;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DevEntryCopyChildPropertiesMatchingProperty(char *bsdName, const __CFString *a2, const void *a3, void *a4)
{
  iterator = 0;
  v21 = 0;
  v7 = *MEMORY[0x277CD2898];
  v8 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, bsdName);
  MatchingService = IOServiceGetMatchingService(v7, v8);
  if (!MatchingService)
  {
    v12 = 2;
    goto LABEL_15;
  }

  v10 = MatchingService;
  v11 = MEMORY[0x259C867A0](MatchingService, "IOService", &iterator);
  if (v11)
  {
    v12 = v11;
    LODWORD(v13) = 0;
    goto LABEL_13;
  }

  v14 = IOIteratorNext(iterator);
  if (!v14)
  {
LABEL_9:
    IOObjectRelease(iterator);
    LODWORD(v13) = 0;
    iterator = 0;
LABEL_10:
    v12 = 22;
    goto LABEL_13;
  }

  v13 = v14;
  while (!IOObjectConformsTo(v13, "IOPartitionScheme"))
  {
    IOObjectRelease(v13);
    v13 = IOIteratorNext(iterator);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  IOObjectRelease(iterator);
  iterator = 0;
  v15 = MEMORY[0x259C867A0](v13, "IOService", &iterator);
  if (!v15)
  {
    v17 = IOIteratorNext(iterator);
    if (v17)
    {
      v18 = v17;
      v19 = *MEMORY[0x277CBECE8];
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v18, a2, v19, 0);
        if (CFProperty)
        {
          if (CFEqual(CFProperty, a3))
          {
            break;
          }
        }

        IOObjectRelease(v18);
        v18 = IOIteratorNext(iterator);
        v12 = 22;
        if (!v18)
        {
          goto LABEL_13;
        }
      }

      v12 = IORegistryEntryCreateCFProperties(v18, &v21, v19, 0);
      IOObjectRelease(v18);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v12 = v15;
LABEL_13:
  IOObjectRelease(v10);
  if (v13)
  {
    IOObjectRelease(v13);
  }

LABEL_15:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  *a4 = v21;
  return v12;
}

uint64_t MKMediaCreateWithSubRange(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5)
{
  v15 = 22;
  if (!a2 || ((v9 = *(a2 + 96), v9 > a3) ? (v10 = a4 + a3 > v9) : (v10 = 1), v10 || (v11 = *(a2 + 104) >> 9, v15 = -5308, a3 % v11) || a4 % v11))
  {
    result = 0;
  }

  else
  {
    result = malloc_type_malloc(0x28uLL, 0x1060040762F0DD2uLL);
    if (result)
    {
      v14 = result;
      *result = 1296790386;
      *(result + 8) = CFRetain(a2);
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = 0;
      v15 = 0;
      result = MKMediaCreate(a1, v14, &kMKMediaSubRangeVector, 0, &v15);
      if (result)
      {
        *(result + 124) = *(a2 + 124);
      }
    }

    else
    {
      v15 = 12;
    }
  }

  if (a5)
  {
    *a5 = v15;
  }

  return result;
}

uint64_t _MKMediaSubRangeInitialize(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  if (*a1 != 1296790386)
  {
    return 22;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 32) = Mutable;
  if (!Mutable)
  {
    return *__error();
  }

  v3 = *(a1 + 8);
  if (v3 && *(v3 + 120))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"Writable", *v4);
  valuePtr = *(a1 + 16);
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(*(a1 + 32), @"Subrange Offset", v6);
  CFRelease(v6);
  return 0;
}

const void *_MKMediaSubRangeCopyProperty(uint64_t a1, void *key)
{
  if (!key)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (v4 && (v5 = CFDictionaryGetValue(v4, key)) != 0)
  {
    Value = v5;
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _MKMediaSubRangeGetGeoProperties(a1, Mutable);
    Value = CFDictionaryGetValue(Mutable, key);
    if (!Value)
    {
      goto LABEL_7;
    }
  }

  CFRetain(Value);
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Value;
}

uint64_t _MKMediaSubRangeGetGeoProperties(uint64_t a1, __CFDictionary *a2)
{
  if (!a1 || *a1 != 1296790386)
  {
    return 22;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 104);
    v2 = *(v2 + 112);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 24);
  if (v2 >= v5)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = v2;
  }

  return _MKMediaSetupGeometry(a2, v3, v5, v6);
}

uint64_t MKFileSystemDetect(uint64_t a1, int *a2, int *a3, _DWORD *a4)
{
  *a2 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = malloc_type_malloc(0x1000uLL, 0x8443DB8BuLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  Blocks = MKMediaReadBlocks(a1, 0, 1, 0x1000u, v8, 0);
  if (Blocks || (Blocks = MKDetectHFS(a1, v9, a2, a3, a4), *a2 > 4999) || (Blocks = MKDetectAPFS(a1, v9, a2, a3, a4), *a2 > 4999) || (Blocks = MKDetectEFATFS(a1, v9, a2, a3, a4), *a2 > 4999) || (Blocks = MKDetectFATFS(a1, v9, a2, a3, a4), *a2 > 4999) || (Blocks = MKDetectNTFS(a1, v9, a2, a3, a4), *a2 > 4999) || (Blocks = MKDetectISO(a1, a2, a4, 0), *a2 > 4999))
  {
    v11 = Blocks;
  }

  else
  {
    v11 = 0;
    *a2 = 0;
  }

  free(v9);
  return v11;
}

uint64_t MKDetectHFS(uint64_t a1, _WORD *a2, _DWORD *a3, int *a4, _DWORD *a5)
{
  *a3 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v10 = malloc_type_malloc(0x200uLL, 0xC068FA07uLL);
  if (v10)
  {
    v11 = v10;
    if (*a2 == 19276)
    {
      *a3 += 1000;
    }

    Blocks = MKMediaReadBlocks(a1, 2, 1, 0x200u, v10, 0);
    if (Blocks)
    {
      goto LABEL_20;
    }

    v13 = bswap32(*v11) >> 16;
    switch(v13)
    {
      case 0x4858u:
        v14 = 4;
        break;
      case 0x482Bu:
        v14 = 2;
        break;
      case 0x4244u:
        if (*(v11 + 62) == 11080)
        {
          v14 = 3;
        }

        else
        {
          v14 = 1;
        }

        break;
      default:
LABEL_20:
        free(v11);
        return Blocks;
    }

    *a3 = 5000;
    if (a5)
    {
      *a5 = 1;
    }

    if (a4)
    {
      *a4 = v14;
    }

    goto LABEL_20;
  }

  return 0xFFFFFFFFLL;
}

uint64_t MKHFSProcessVolumeUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  data[1] = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  Blocks = MKMediaReadBlocks(a1, 2, 1, 0x200u, v14, 0);
  if (Blocks)
  {
LABEL_2:
    a2 = Blocks;
    goto LABEL_3;
  }

  v9 = bswap32(v14[0]) >> 16;
  if (v9 == 18520 || v9 == 18475)
  {
    v11 = 0;
  }

  else
  {
    if (v9 != 16964)
    {
      a2 = 4294967239;
      goto LABEL_3;
    }

    TAO_HFSMasterDirectoryBlock_BigToHost(v14);
    if (v18 != 18475)
    {
      a2 = 4294967173;
      goto LABEL_3;
    }

    v11 = v16 + (v15 >> 9) * v19;
    Blocks = MKMediaReadBlocks(a1, (v11 + 2), 1, 0x200u, v14, 0);
    if (Blocks)
    {
      goto LABEL_2;
    }
  }

  v12 = TAO_HFSPlusVolumeHeader_BigToHost(v14);
  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        a2 = 22;
        goto LABEL_3;
      }

      MEMORY[0x259C86EE0](a3, v12);
    }

    v17 = *(a3 + 4);
    TAO_HFSPlusVolumeHeader_BigToHost(v14);
    a2 = MKMediaWriteBlocks(a1, (v11 + 2), 1, 0x200u, v14, 0);
  }

  data[0] = v17;
  CC_MD5_Init(&v13);
  CC_MD5_Update(&v13, &unk_2586A0800, 0x10u);
  CC_MD5_Update(&v13, data, 8u);
  CC_MD5_Final(a3, &v13);
  *(a3 + 6) = *(a3 + 6) & 0xF | 0x30;
  *(a3 + 8) = *(a3 + 8) & 0x3F | 0x80;
LABEL_3:
  v7 = *MEMORY[0x277D85DE8];
  return a2;
}

double TAO_HFSPlusVolumeHeader_BigToHost(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32q_s8(*(a1 + 2));
  *(a1 + 10) = vrev32q_s8(*(a1 + 10));
  *(a1 + 18) = vrev32q_s8(*(a1 + 18));
  *(a1 + 26) = vrev32q_s8(*(a1 + 26));
  *(a1 + 17) = bswap32(*(a1 + 17));
  *(a1 + 9) = bswap64(*(a1 + 9));
  TAO_HFSPlusForkData_BigToHost((a1 + 56));
  TAO_HFSPlusForkData_BigToHost((a1 + 96));
  TAO_HFSPlusForkData_BigToHost((a1 + 136));
  TAO_HFSPlusForkData_BigToHost((a1 + 176));

  *&result = TAO_HFSPlusForkData_BigToHost((a1 + 216)).u64[0];
  return result;
}

int8x16_t TAO_HFSPlusForkData_BigToHost(uint64_t a1)
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

int8x16_t TAO_HFSPlusExtentRecord_BigToHost(uint64_t a1)
{
  for (i = 0; i != 64; i += 32)
  {
    v2 = (a1 + i);
    result = vrev32q_s8(*(a1 + i + 16));
    *v2 = vrev32q_s8(*(a1 + i));
    v2[1] = result;
  }

  return result;
}

int8x8_t TAO_HFSPlusExtentDescriptor_BigToHost(int8x8_t *a1)
{
  result = vrev32_s8(*a1);
  *a1 = result;
  return result;
}

void _MKMediaSubRangeDeinitialize(void *a1)
{
  if (a1 && *a1 == 1296790386)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
      a1[1] = 0;
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t MKCFUpdateMedia(const __CFDictionary *a1, __CFBundle *a2, unsigned __int16 a3, const __CFDictionary *a4, uint64_t a5)
{
  valuePtr = a3;
  if (!a1)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"Schemes");
  if (!Value)
  {
    return 22;
  }

  v9 = Value;
  Count = CFArrayGetCount(Value);
  if (!Count)
  {
    return 22;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
    if (ValueAtIndex)
    {
      v14 = ValueAtIndex;
      if (valuePtr != 1)
      {
        if (valuePtr)
        {
          v17 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
          CFDictionarySetValue(v14, @"Alignment", v17);
          CFRelease(v17);
        }

        else
        {
          v15 = CFDictionaryGetValue(ValueAtIndex, @"Alignment");
          if (v15)
          {
            CFNumberGetValue(v15, kCFNumberSInt16Type, &valuePtr);
          }
        }
      }

      v18 = MKCFUpdateScheme(v14, a2, valuePtr, a4, a5);
      if (v18)
      {
        v19 = v12 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        v16 = 0;
      }

      else
      {
        v16 = v18;
      }

      if (v19)
      {
        v12 = v18;
      }

      else
      {
        v12 = v12;
      }
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    ++v11;
  }

  while (Count != v11);
  if (!v12)
  {
    v12 = v16;
    if (v16 == -1)
    {
      return *__error();
    }
  }

  return v12;
}

uint64_t IOEngineInitialize()
{
  NumJobs = 0;
  qsort(&InfoLookupTable, 0x11uLL, 0x10uLL, InfoLookupRecCompare);
  return 0;
}

uint64_t IOJobSetup(uint64_t *a1, const __CFDictionary *a2, uint64_t a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v99 = 0;
  memset(&v104, 0, sizeof(v104));
  v103.__sig = 0;
  *v103.__opaque = 0;
  v6 = malloc_type_calloc(1uLL, 0x230uLL, 0x10A0040A93B80A1uLL);
  if (!v6)
  {
    *a1 = 0;
LABEL_105:
    v37 = *__error();
    goto LABEL_106;
  }

  v7 = v6;
  v6[42] = 0;
  *(v6 + 80) = 512;
  v6[133] = 0;
  *(v6 + 22) = -1;
  *(v6 + 268) = 0;
  v6[138] = -1;
  Value = CFDictionaryGetValue(a2, @"Block Size");
  if (!Value)
  {
    goto LABEL_75;
  }

  v9 = Value;
  v10 = CFGetTypeID(Value);
  if (v10 != CFNumberGetTypeID())
  {
    goto LABEL_75;
  }

  v102 = 0;
  valuePtr = 0;
  v100 = 0;
  CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
  *(v7 + 240) = valuePtr;
  v11 = CFDictionaryGetValue(a2, @"Buffer Size");
  if (!v11)
  {
    goto LABEL_75;
  }

  v12 = v11;
  v13 = CFGetTypeID(v11);
  if (v13 != CFNumberGetTypeID())
  {
    goto LABEL_75;
  }

  CFNumberGetValue(v12, kCFNumberSInt32Type, (v7 + 244));
  v14 = CFDictionaryGetValue(a2, @"Buffer Count");
  if (!v14)
  {
    goto LABEL_75;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 != CFNumberGetTypeID())
  {
    goto LABEL_75;
  }

  CFNumberGetValue(v15, kCFNumberSInt16Type, (v7 + 250));
  v17 = CFDictionaryGetValue(a2, @"Thread Count");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 != CFNumberGetTypeID())
    {
      goto LABEL_75;
    }

    CFNumberGetValue(v18, kCFNumberSInt16Type, (v7 + 248));
  }

  v20 = CFDictionaryGetValue(a2, @"Percent Threshold");
  if (v20)
  {
    v21 = v20;
    v22 = CFGetTypeID(v20);
    if (v22 != CFNumberGetTypeID())
    {
      goto LABEL_75;
    }

    CFNumberGetValue(v21, kCFNumberSInt16Type, (v7 + 252));
  }

  v23 = CFDictionaryGetValue(a2, @"Time Threshold");
  if (v23)
  {
    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 != CFNumberGetTypeID())
    {
      goto LABEL_75;
    }

    CFNumberGetValue(v24, kCFNumberSInt16Type, (v7 + 254));
  }

  if (!*(v7 + 252) && !*(v7 + 254))
  {
    *(v7 + 252) = 1;
  }

  *(v7 + 280) = 0;
  v26 = CFDictionaryGetValue(a2, @"Allow Skips");
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26;
  v28 = CFGetTypeID(v26);
  if (v28 != CFBooleanGetTypeID())
  {
LABEL_75:
    v68 = 0;
    v37 = 22;
    goto LABEL_76;
  }

  if (CFEqual(v27, *MEMORY[0x277CBED28]))
  {
    *(v7 + 280) = 500;
    v29 = malloc_type_calloc(1uLL, 0x5DC8uLL, 0x1060040E821711FuLL);
    *(v7 + 288) = v29;
    if (!v29)
    {
LABEL_69:
      v37 = *__error();
      goto LABEL_70;
    }
  }

LABEL_24:
  v30 = CFDictionaryGetValue(a2, @"Instructions");
  if (!v30)
  {
    goto LABEL_75;
  }

  v31 = v30;
  v32 = CFGetTypeID(v30);
  if (v32 != CFArrayGetTypeID())
  {
    goto LABEL_75;
  }

  valuePtr = CFArrayGetCount(v31);
  v33 = malloc_type_calloc(1uLL, (48 * valuePtr) | 8, 0x1060040E821711FuLL);
  *(v7 + 256) = v33;
  if (!v33)
  {
    goto LABEL_69;
  }

  v34 = valuePtr;
  *v33 = valuePtr;
  if (v34 < 1)
  {
    goto LABEL_72;
  }

  v35 = 0;
  v36 = (v33 + 6);
  v37 = 22;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v31, v35);
    if (!ValueAtIndex)
    {
      break;
    }

    v39 = ValueAtIndex;
    v40 = CFGetTypeID(ValueAtIndex);
    if (v40 != CFDictionaryGetTypeID())
    {
      break;
    }

    v41 = CFDictionaryGetValue(v39, @"Instruction Code");
    if (!v41)
    {
      break;
    }

    v42 = v41;
    v43 = CFGetTypeID(v41);
    if (v43 != CFNumberGetTypeID())
    {
      break;
    }

    CFNumberGetValue(v42, kCFNumberSInt16Type, &v102);
    *(v36 - 4) = v102;
    v44 = CFDictionaryGetValue(v39, @"Block Count");
    if (!v44)
    {
      break;
    }

    v45 = v44;
    v46 = CFGetTypeID(v44);
    if (v46 != CFNumberGetTypeID())
    {
      break;
    }

    CFNumberGetValue(v45, kCFNumberSInt64Type, &v100);
    v36[1] = v100;
    v47 = CFDictionaryGetValue(v39, @"Source Offset");
    if (v47)
    {
      v48 = v47;
      v49 = CFGetTypeID(v47);
      if (v49 != CFNumberGetTypeID())
      {
        break;
      }

      CFNumberGetValue(v48, kCFNumberSInt64Type, &v100);
      v36[2] = v100;
    }

    else
    {
      v50 = *(v36 - 4);
      if (v50 <= 8 && ((1 << v50) & 0x1BA) != 0)
      {
        break;
      }
    }

    v51 = CFDictionaryGetValue(v39, @"Target Offset");
    if (v51)
    {
      v52 = v51;
      v53 = CFGetTypeID(v51);
      if (v53 != CFNumberGetTypeID())
      {
        break;
      }

      CFNumberGetValue(v52, kCFNumberSInt64Type, &v100);
      v36[3] = v100;
      v54 = *(v36 - 4);
    }

    else
    {
      v54 = *(v36 - 4);
      if (v54 <= 0xA && ((1 << v54) & 0x5A6) != 0)
      {
        break;
      }
    }

    if (v54 == 7 || v54 == 4)
    {
      v55 = CFDictionaryGetValue(v39, @"Checksum Type");
      if (!v55)
      {
        break;
      }

      v56 = v55;
      v57 = CFGetTypeID(v55);
      if (v57 != CFNumberGetTypeID())
      {
        break;
      }

      CFNumberGetValue(v56, kCFNumberSInt16Type, &v102);
      v58 = IOSetParams(v7, v35);
      if (v58)
      {
        v37 = v58;
        break;
      }

      v37 = 0;
      if (*(v7 + 552) == -1)
      {
        *(v7 + 552) = v35;
      }
    }

    v59 = CFDictionaryGetValue(v39, @"Source Device");
    if (v59)
    {
      v60 = v59;
      v61 = CFGetTypeID(v59);
      if (v61 != MKMediaGetTypeID())
      {
        break;
      }

      *(v36 - 1) = CFRetain(v60);
    }

    else
    {
      v62 = *(v36 - 4);
      if (v62 <= 8 && ((1 << v62) & 0x1BA) != 0)
      {
        break;
      }
    }

    v63 = CFDictionaryGetValue(v39, @"Target Device");
    if (v63)
    {
      v64 = v63;
      v65 = CFGetTypeID(v63);
      if (v65 != MKMediaGetTypeID())
      {
        break;
      }

      *v36 = CFRetain(v64);
    }

    else
    {
      v66 = *(v36 - 4);
      if (v66 <= 0xA && ((1 << v66) & 0x5A6) != 0)
      {
        break;
      }
    }

    ++v35;
    v67 = valuePtr;
    v36 += 6;
    if (v35 >= valuePtr)
    {
      goto LABEL_67;
    }
  }

  v67 = valuePtr;
LABEL_67:
  if (v35 >= v67)
  {
LABEL_72:
    *(v7 + 264) = vextq_s8(*(a3 + 8), *(a3 + 8), 8uLL);
    goto LABEL_73;
  }

  if (v37 == -1)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (v37)
  {
LABEL_71:
    v68 = 0;
    goto LABEL_76;
  }

LABEL_73:
  v70 = *(v7 + 240);
  v69 = *(v7 + 244);
  if (v69 < v70 || v69 % v70)
  {
    goto LABEL_75;
  }

  v80 = pthread_mutexattr_init(&v103);
  if (v80)
  {
    v37 = v80;
    goto LABEL_71;
  }

  v81 = pthread_mutexattr_settype(&v103, 2);
  if (v81 || (v81 = pthread_mutex_init(v7, &v103), v81))
  {
    v37 = v81;
    v68 = 1;
    goto LABEL_76;
  }

  v82 = pthread_cond_init((v7 + 64), 0);
  if (v82)
  {
    v37 = v82;
    v68 = 3;
    goto LABEL_76;
  }

  v83 = pthread_cond_init((v7 + 112), 0);
  if (v83)
  {
    v37 = v83;
    v68 = 7;
    goto LABEL_76;
  }

  v84 = pthread_mutex_init((v7 + 416), 0);
  if (v84)
  {
    v37 = v84;
    v68 = 15;
    goto LABEL_76;
  }

  v85 = pthread_cond_init((v7 + 480), 0);
  if (v85)
  {
    v37 = v85;
    v68 = 31;
    goto LABEL_76;
  }

  if (*(v7 + 250))
  {
    v86 = 0;
    do
    {
      v87 = IONewBuffer(&v99, *(v7 + 244));
      if (v87)
      {
        goto LABEL_135;
      }

      stkputbtm(v7 + 296, v99);
    }

    while (++v86 < *(v7 + 250));
  }

  v88 = *(v7 + 256);
  v89 = *v88;
  if (*v88)
  {
    v90 = *(v7 + 200);
    v91 = (v88 + 8);
    do
    {
      v92 = *v91;
      v91 += 6;
      v90 += v92;
      --v89;
    }

    while (v89);
    *(v7 + 200) = v90;
  }

  else
  {
    v90 = *(v7 + 200);
  }

  if (v90)
  {
    v87 = pthread_attr_init(&v104);
    if (v87)
    {
LABEL_135:
      v37 = v87;
      v68 = 63;
      goto LABEL_76;
    }

    v93 = pthread_attr_setdetachstate(&v104, 2);
    if (v93)
    {
LABEL_138:
      v37 = v93;
      v68 = 127;
    }

    else
    {
      v94 = *(v7 + 248);
      v95 = *(v7 + 250);
      if ((v94 - 1) >= v95)
      {
        *(v7 + 248) = v95;
        v94 = v95;
      }

      if (*(v7 + 164) >= v94)
      {
LABEL_145:
        v37 = 0;
        ++NumJobs;
        v68 = 127;
LABEL_101:
        pthread_attr_destroy(&v104);
        v76 = v68 & 0x10;
        v77 = v7;
        goto LABEL_102;
      }

      while (1)
      {
        v96 = malloc_type_malloc(0x10uLL, 0x10200400CC4F872uLL);
        if (!v96)
        {
          break;
        }

        v96[1] = v7;
        *v96 = *(v7 + 164) + 1;
        v93 = pthread_create(&v98, &v104, ThreadExecutive, v96);
        if (v93)
        {
          goto LABEL_138;
        }

        v97 = *(v7 + 164) + 1;
        *(v7 + 164) = v97;
        if (*(v7 + 248) <= v97)
        {
          goto LABEL_145;
        }
      }

      v68 = 127;
      v37 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v68 = 63;
    v37 = 4294967246;
  }

LABEL_76:
  if (*(v7 + 164))
  {
    pthread_mutex_lock(v7);
    *(v7 + 264) = 0;
    *(v7 + 532) = v37;
    if (*(v7 + 168) != 4)
    {
      *(v7 + 168) = 4;
      pthread_cond_broadcast((v7 + 64));
    }

    while (*(v7 + 164))
    {
      pthread_cond_wait((v7 + 112), v7);
    }

    pthread_mutex_unlock(v7);
  }

  v71 = *(v7 + 288);
  if (v71)
  {
    free(v71);
  }

  v72 = *(v7 + 256);
  if (v72)
  {
    if (*v72)
    {
      v73 = 0;
      v74 = v72 + 3;
      do
      {
        v75 = *(v74 - 1);
        if (v75)
        {
          CFRelease(v75);
        }

        if (*v74)
        {
          CFRelease(*v74);
        }

        ++v73;
        v72 = *(v7 + 256);
        v74 += 6;
      }

      while (*v72 > v73);
    }

    free(v72);
  }

  if ((v68 & 2) != 0)
  {
    pthread_mutex_destroy(v7);
    if ((v68 & 4) == 0)
    {
LABEL_95:
      if ((v68 & 8) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_109;
    }
  }

  else if ((v68 & 4) == 0)
  {
    goto LABEL_95;
  }

  pthread_cond_destroy((v7 + 64));
  if ((v68 & 8) == 0)
  {
LABEL_96:
    if ((v68 & 0x10) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_109:
  pthread_cond_destroy((v7 + 112));
  if ((v68 & 0x10) != 0)
  {
LABEL_97:
    pthread_mutex_destroy((v7 + 416));
  }

LABEL_98:
  v76 = v68 & 0x10;
  if ((v68 & 0x20) != 0)
  {
    pthread_cond_destroy((v7 + 480));
  }

  stkclear(v7 + 296, v7, DisposeProbe);
  v7 = 0;
  v77 = 0;
  if ((v68 & 8) != 0)
  {
    goto LABEL_101;
  }

LABEL_102:
  if (v76)
  {
    pthread_mutexattr_destroy(&v103);
  }

  *a1 = v77;
  if (v37 == -1)
  {
    goto LABEL_105;
  }

LABEL_106:
  v78 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t stkputbtm(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = *(result + 16);
    *(result + 16) = a2;
    *a2 = 0;
    if (!v2)
    {
      v2 = (result + 8);
    }

    *v2 = a2;
    ++*(result + 2);
  }

  return result;
}

uint64_t IOJobInitiate(pthread_mutex_t *a1, int a2)
{
  if (!a1 || *&a1[2].__opaque[32])
  {
    return 1;
  }

  pthread_mutex_lock(a1);
  if (*&a1[2].__opaque[32] != 1)
  {
    *&a1[2].__opaque[32] = 1;
    pthread_cond_broadcast(&a1[1]);
  }

  pthread_mutex_unlock(a1);
  if (!a2)
  {
    return 0;
  }

  return IOJobWait(a1, 0);
}

uint64_t ThreadExecutive(void *a1)
{
  v2 = *(a1 + 1);
  if (!v2)
  {
    goto LABEL_257;
  }

  pthread_mutex_lock(*(a1 + 1));
  v3 = 0;
  v4 = (v2 + 376);
LABEL_3:
  while (2)
  {
    while (2)
    {
      v5 = *(v2 + 168);
      if (v5 <= 2)
      {
        if (v5 == 1)
        {
          *(v2 + 184) = time(0);
          *(v2 + 232) = -1;
          v45 = *(v2 + 264);
          if (v45)
          {
            v46 = v45(v2, *(v2 + 272));
            *(v2 + 532) = v46;
          }

          else
          {
            v46 = *(v2 + 532);
          }

          v47 = *(v2 + 168);
          if (v46)
          {
            goto LABEL_191;
          }

          if (v47 == 2)
          {
            continue;
          }

          *(v2 + 168) = 2;
LABEL_193:
          pthread_cond_broadcast((v2 + 64));
          continue;
        }

        if (v5 == 2)
        {
          if (!*(v2 + 298) || (*(v2 + 162) & 1) != 0)
          {
            goto LABEL_99;
          }

LABEL_14:
          v8 = stkgettop(v2 + 296);
          if (!v8)
          {
LABEL_154:
            IOAdvertising(v2 + 320, (v2 + 64));
            goto LABEL_99;
          }

          v9 = v8;
          v10 = *(v2 + 240);
          *(v8 + 18) = v10;
          v8[19] = *(v2 + 544);
          v11 = *(v2 + 256);
          v12 = *(v2 + 172);
          if (v12 >= *v11)
          {
LABEL_95:
            stkputbtm(v2 + 296, v8);
            goto LABEL_96;
          }

          v13 = 12 * v12;
          while (1)
          {
            v14 = v11[v13 + 2];
            if (v14 == 6)
            {
              if (*(v2 + 322) || *(v2 + 536))
              {
                stkputbtm(v2 + 296, v8);
                goto LABEL_99;
              }
            }

            else
            {
              v15 = *&v11[v13 + 8];
              if (v15)
              {
                v16 = &v11[v13];
                v17 = *(v8 + 26);
                *(v8 + 6) = v14;
                v18 = v17 / v10;
                v19 = *(v16 + 5);
                v20 = *(v16 + 6);
                v21 = v15 > v18;
                if (v15 < v18)
                {
                  v18 = v15;
                }

                v8[4] = v18;
                v8[5] = v19;
                v8[6] = v20;
                *(v8 + 7) = *(v16 + 1);
                v22 = v19 + v18;
                *(v16 + 6) = v20 + v18;
                v23 = v8[1] & 0xFFFE;
                if (!v21)
                {
                  ++v23;
                }

                *(v16 + 4) = v15 - v18;
                *(v16 + 5) = v22;
                *(v8 + 4) = v23;
                *(v8 + 3) = v12;
                *(v8 + 8) = 0;
                v8[16] = 0;
                v24 = InstructionTable;
                if (!InstructionTable)
                {
LABEL_147:
                  *(v9 + 120) = 0;
                  stkputbtm(v2 + 296, v9);
                  v70 = 2;
                  goto LABEL_190;
                }

                v25 = &word_27F956EE4;
                while (*v25 != v14)
                {
                  --v24;
                  v25 += 26;
                  if (!v24)
                  {
                    goto LABEL_147;
                  }
                }

                *(v9 + 120) = v25;
                v26 = v25[20];
                if (v25[20])
                {
                  v27 = 0;
                  v28 = 1;
                  do
                  {
                    if (StepTable)
                    {
                      v29 = &word_281DA9AC2;
                      v30 = StepTable;
                      while (*(v29 - 17) != v25[v27 + 21])
                      {
                        --v30;
                        v29 += 24;
                        if (!v30)
                        {
                          goto LABEL_41;
                        }
                      }

                      if ((*v29 & 2) != 0)
                      {
                        break;
                      }
                    }

LABEL_41:
                    v28 = ++v27 < v26;
                  }

                  while (v27 != v26);
                  if (v28 && *(v2 + 180) == -1)
                  {
                    *(v2 + 180) = v12;
                  }
                }

                v31 = v4;
                while (1)
                {
                  v31 = *v31;
                  if (!v31)
                  {
                    break;
                  }

                  if (v31[2] == v12)
                  {
                    v121 = v31;
                    v32 = v31;
                    goto LABEL_52;
                  }
                }

                v121 = 0;
                if (*(v2 + 176) >= v12)
                {
                  goto LABEL_76;
                }

                *(v2 + 176) = v12;
                v33 = BuildiCache(v25, &v121);
                if (v33)
                {
                  v70 = v33;
                  goto LABEL_249;
                }

                v32 = v121;
                if (!v121)
                {
                  goto LABEL_76;
                }

LABEL_52:
                if (*(v32 + 12))
                {
                  if (!v31)
                  {
LABEL_54:
                    if (v32)
                    {
                      *(v32 + 2) = *(v9 + 12);
                      stkputbtm(v2 + 368, v32);
                    }
                  }

                  goto LABEL_76;
                }

                v34 = *(v9 + 24) - 4;
                if (v34 > 3)
                {
                  v35 = 48;
                }

                else
                {
                  v35 = qword_2586A0840[v34];
                }

                v120 = *(v9 + v35);
                if (v31)
                {
                  stkdequeue(v2 + 368, v32);
                }

                v36 = *(v9 + 120);
                v122[0] = 0;
                if (!*(v36 + 40))
                {
LABEL_74:
                  if (!v31)
                  {
                    goto LABEL_54;
                  }

                  stkputbtm(v2 + 368, v32);
LABEL_76:
                  *(v9 + 136) = v121;
                  v42 = SetupStep(v9);
                  if (v42)
                  {
                    v70 = v42;
                    goto LABEL_250;
                  }

                  stkputbtm(v2 + 320, v9);
                  if (!*(v2 + 298))
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_14;
                }

                v118 = v3;
                v119 = v4;
                v37 = 0;
                while (1)
                {
                  v38 = StepTable;
                  if (StepTable)
                  {
                    v39 = &off_281DA9AC8;
                    while (*(v39 - 20) != *(v36 + 42 + 2 * v37))
                    {
                      --v38;
                      v39 += 6;
                      if (!v38)
                      {
                        goto LABEL_72;
                      }
                    }

                    if (*(v39 - 3))
                    {
                      LOWORD(v122[0]) = v37;
                      v122[1] = v120;
                      v40 = addentry(&v121, v122, 0x20uLL, 0x18u, 0xFFFFu, 0x10u);
                      if (v40)
                      {
                        break;
                      }

                      v41 = v121[2];
                      if (v41)
                      {
                        v40 = (*v39)(v41, 0);
                        if (v40)
                        {
                          break;
                        }
                      }
                    }
                  }

LABEL_72:
                  if (++v37 >= *(v36 + 40))
                  {
                    v32 = v121;
                    v4 = v119;
                    v3 = v118;
                    goto LABEL_74;
                  }
                }

                v70 = v40;
                v4 = v119;
                v3 = v118;
LABEL_249:
                *(v9 + 136) = v121;
LABEL_250:
                stkputbtm(v2 + 296, v9);
                if (v70 != -29291)
                {
                  if (v70 != -39)
                  {
                    goto LABEL_188;
                  }

LABEL_96:
                  *(v2 + 162) |= 1u;
                  if (*(v2 + 298) >= *(v2 + 250))
                  {
                    goto LABEL_8;
                  }
                }

LABEL_99:
                v48 = stkgettop(v2 + 320);
                if (v48)
                {
                  v49 = v48;
                  ++*(v2 + 536);
                  *(v48 + 5) = *a1;
                  if ((*(v48[16] + 34) & 2) != 0)
                  {
                    pthread_mutex_lock((v2 + 416));
                    pthread_mutex_unlock(v2);
                    stkputbtm(v2 + 392, v49);
                    if (*(v2 + 528) == 1)
                    {
                      do
                      {
                        pthread_cond_wait((v2 + 480), (v2 + 416));
                      }

                      while ((*(v2 + 528) & 1) != 0);
                    }

                    v49 = stkgettop(v2 + 392);
                    *(v2 + 528) = 1;
                    pthread_mutex_unlock((v2 + 416));
                    v52 = v49[17];
                    if (v52)
                    {
                      v53 = *(v52 + 16);
                    }

                    else
                    {
                      v53 = 0;
                    }

                    v54 = (*(v49[16] + 40))(v53, 1);
                    pthread_mutex_lock((v2 + 416));
                    *(v2 + 528) = 0;
                    pthread_cond_signal((v2 + 480));
                    pthread_mutex_unlock((v2 + 416));
                  }

                  else
                  {
                    pthread_mutex_unlock(v2);
                    v50 = v49[17];
                    if (v50)
                    {
                      v51 = *(v50 + 16);
                    }

                    else
                    {
                      v51 = 0;
                    }

                    v54 = (*(v49[16] + 40))(v51, 1);
                  }

                  pthread_mutex_lock(v2);
                  if (!v54)
                  {
                    goto LABEL_130;
                  }

                  if (v54 != 35)
                  {
                    goto LABEL_127;
                  }

                  v55 = *(v2 + 280);
                  if (!v55)
                  {
                    v54 = 22;
                    goto LABEL_127;
                  }

                  v56 = *(v2 + 288);
                  v57 = *v56;
                  if (v57 >= v55)
                  {
                    v54 = 12;
LABEL_127:
                    v68 = *(v2 + 532);
                    if (v68)
                    {
                      goto LABEL_131;
                    }

                    *(v2 + 532) = v54;
                    v68 = v54;
                    if (*(v2 + 168) == 4)
                    {
                      goto LABEL_131;
                    }

                    *(v2 + 168) = 4;
                    pthread_cond_broadcast((v2 + 64));
LABEL_130:
                    v68 = *(v2 + 532);
                    goto LABEL_131;
                  }

                  v58 = (v49 + 3);
                  v59 = v56 + 2;
                  if (!v57)
                  {
                    v67 = &v56[12 * v57];
LABEL_149:
                    v79 = (v67 - 10);
                    goto LABEL_162;
                  }

                  v60 = 0;
                  v61 = 12 * v57;
                  v62 = *v58;
                  v63 = &v56[12 * v57];
                  while (2)
                  {
                    v64 = v63[v60 - 10];
                    if (v62 != 2)
                    {
                      if (v64 != 2)
                      {
                        v65 = 4;
                        v66 = 8;
                        goto LABEL_122;
                      }

LABEL_123:
                      v60 -= 12;
                      if (v61 * 4 + v60 * 4 + 8 < 56)
                      {
                        v67 = &v56[v61 + v60];
                        goto LABEL_149;
                      }

                      continue;
                    }

                    break;
                  }

                  if (v64 != 2)
                  {
                    goto LABEL_150;
                  }

                  v65 = 6;
                  v66 = 10;
LABEL_122:
                  if (*&v58[v65] < *&v63[v60 - 10 + v66])
                  {
                    goto LABEL_123;
                  }

LABEL_150:
                  v80 = &v56[v61 + v60];
                  v79 = (v80 - 10);
                  if (v62 != v64)
                  {
                    goto LABEL_162;
                  }

                  v81 = *(v80 - 2);
                  if (v62 == 1)
                  {
                    if (v49[5] == *&v56[v61 - 2 + v60] + v81 && v49[6] == *&v56[v61 + v60] + v81)
                    {
                      goto LABEL_217;
                    }

LABEL_162:
                    v84 = &v59[12 * v57];
                    if (v79 >= v84 - 48)
                    {
                      goto LABEL_174;
                    }

                    v85 = *v58;
                    if (*v58 != *(v79 + 48))
                    {
                      goto LABEL_174;
                    }

                    v86 = v49[4];
                    if (v85 == 1)
                    {
                      v88 = v49[5];
                      if (v88 + v86 != *(v79 + 80))
                      {
                        goto LABEL_174;
                      }

                      v89 = v49[6];
                      if (v89 + v86 != *(v79 + 88))
                      {
                        goto LABEL_174;
                      }

                      *(v79 + 88) = v89;
                    }

                    else
                    {
                      if (v85 == 2)
                      {
                        v87 = v49[6];
                        if (v87 + v86 == *(v79 + 88))
                        {
                          *(v79 + 88) = v87;
LABEL_173:
                          *(v79 + 72) += v86;
                          goto LABEL_177;
                        }

LABEL_174:
                        if (v79 + 48 < v84)
                        {
                          memmove((v79 + 96), (v79 + 48), v84 - (v79 + 48));
                        }

                        *(v79 + 48) = *(v49 + 6);
                        *(v79 + 88) = v49[6];
                        v90 = *(v49 + 2);
                        *(v79 + 72) = v90;
                        *(v79 + 56) = *(v49 + 7);
                        ++*v56;
                        v86 = v90;
                        goto LABEL_177;
                      }

                      v88 = v49[5];
                      if (v88 + v86 != *(v79 + 80))
                      {
                        goto LABEL_174;
                      }
                    }

                    *(v79 + 80) = v88;
                    goto LABEL_173;
                  }

                  if (v62 == 2)
                  {
                    v82 = v49[6];
                    v83 = *&v56[v61 + v60];
                  }

                  else
                  {
                    v82 = v49[5];
                    v83 = *&v56[v61 - 2 + v60];
                  }

                  if (v82 != v83 + v81)
                  {
                    goto LABEL_162;
                  }

LABEL_217:
                  v86 = v49[4];
                  v103 = v86 + v81;
                  *(v80 - 2) = v103;
                  v104 = &v59[12 * v57];
                  if (v79 < (v104 - 12))
                  {
                    v105 = &v56[v61 + v60];
                    v107 = v105[2];
                    v106 = v105 + 2;
                    if (v62 == v107)
                    {
                      if (v62 == 1)
                      {
                        v108 = &v56[v61 + v60];
                        if (*(v108 - 1) + v103 == v108[5])
                        {
LABEL_230:
                          v109 = *v108 + v103;
                          v110 = v108[6];
                          goto LABEL_232;
                        }
                      }

                      else
                      {
                        if (v62 == 2)
                        {
                          v108 = &v56[v61 + v60];
                          goto LABEL_230;
                        }

                        v111 = &v56[v61 + v60];
                        v109 = *(v111 - 1) + v103;
                        v110 = *(v111 + 5);
LABEL_232:
                        if (v109 == v110)
                        {
                          v112 = &v56[v61 + v60];
                          *(v80 - 2) = *(v112 + 4) + v103;
                          if (v79 < (v104 - 24))
                          {
                            memmove(v106, v112 + 14, -48 - v60 * 4);
                            LODWORD(v57) = *v56;
                            v86 = v49[4];
                          }

                          *v56 = v57 - 1;
                        }
                      }
                    }
                  }

LABEL_177:
                  *(v2 + 216) += v86;
                  v68 = *(v2 + 532);
                  if (!v68)
                  {
                    *(v2 + 532) = 35;
                    ++*(v49 + 8);
LABEL_179:
                    v91 = *(v2 + 200);
                    v92 = *(v2 + 208) + v49[11];
                    *(v2 + 208) = v92;
                    *(v2 + 234) = 100 * v92 / v91;
LABEL_180:
                    stkputbtm(v2 + 296, v49);
                    if (*(v2 + 172) >= **(v2 + 256) && *(v2 + 298) >= *(v2 + 250))
                    {
                      v70 = -39;
                    }

                    else
                    {
                      IOAdvertising(v2 + 296, (v2 + 64));
                      v70 = 0;
                    }

                    if (*(v2 + 532) == 35)
                    {
                      *(v2 + 532) = 0;
                    }

                    goto LABEL_186;
                  }

LABEL_131:
                  v69 = *(v49 + 8) + 1;
                  *(v49 + 8) = v69;
                  if (v68 == 35)
                  {
                    goto LABEL_179;
                  }

                  if (v68)
                  {
                    goto LABEL_180;
                  }

                  if (*(v49[15] + 40) <= v69)
                  {
                    goto LABEL_179;
                  }

                  v49[16] = 0;
                  v70 = SetupStep(v49);
                  if (!v70)
                  {
                    if ((*(v49[16] + 34) & 2) == 0)
                    {
                      stkputbtm(v2 + 320, v49);
                      IOAdvertising(v2 + 320, (v2 + 64));
                      goto LABEL_146;
                    }

                    v71 = v49[18];
                    if (v71)
                    {
                      v72 = *(v49 + 3);
                      if (v72 == *(v2 + 180) && (v73 = v49[10], v73 == *(v71 + 8)))
                      {
                        v113 = *(v49 + 8);
                        *(v71 + 8) = v49[11] + v73;
                        if (v49[1])
                        {
                          *(v2 + 180) = v72 + 1;
                        }

                        stkputbtm(v2 + 320, v49);
                        v114 = *(v2 + 352);
                        while (v114)
                        {
                          v115 = v114;
                          v114 = *v114;
                          if (*(v115 + 3) == *(v2 + 180) && *(v115 + 8) == v113 && v115[10] == *(v115[18] + 8))
                          {
                            if (stkdequeue(v2 + 344, v115))
                            {
                              break;
                            }

                            *(v115[18] + 8) += v115[11];
                            if (v115[1])
                            {
                              ++*(v2 + 180);
                            }

                            stkputbtm(v2 + 320, v115);
                          }
                        }

                        IOAdvertising(v2 + 320, (v2 + 64));
                      }

                      else
                      {
                        v74 = *(v2 + 352);
                        if (v74)
                        {
                          v75 = 0;
                          while (1)
                          {
                            v76 = v74;
                            v77 = *(v74 + 12);
                            if (v72 <= v77 && (v72 != v77 || v49[10] <= v76[10]))
                            {
                              break;
                            }

                            v74 = *v76;
                            v75 = v76;
                            if (!*v76)
                            {
                              stkputbtm(v2 + 344, v49);
                              goto LABEL_146;
                            }
                          }

                          if (v75)
                          {
                            v70 = stkenqueue(v2 + 344, v49, v75);
                            goto LABEL_186;
                          }
                        }

                        stkputtop(v2 + 344, v49);
                      }

LABEL_146:
                      v78 = 0;
                      --*(v2 + 536);
LABEL_196:
                      if (*(v2 + 532))
                      {
                        goto LABEL_197;
                      }

                      v93 = *(v2 + 252);
                      if (!*(v2 + 252))
                      {
                        if (!*(v2 + 254))
                        {
                          goto LABEL_197;
                        }

                        v98 = 0;
LABEL_206:
                        v99 = time(0);
                        v100 = *(v2 + 254);
                        if (v99 < *(v2 + 224) + v100 && !v98)
                        {
                          goto LABEL_197;
                        }

                        if (*(v2 + 252))
                        {
                          *(v2 + 232) = v3;
                        }

                        if (v100)
                        {
                          *(v2 + 224) = v99;
                        }

                        goto LABEL_212;
                      }

                      v94 = *(v2 + 234);
                      v95 = v94 / v93;
                      v3 = v94 + v95 * v93 - v94;
                      v96 = (v95 * v93);
                      v97 = *(v2 + 232);
                      v98 = v96 > v97;
                      if (*(v2 + 254))
                      {
                        goto LABEL_206;
                      }

                      if (v96 <= v97)
                      {
                        goto LABEL_197;
                      }

                      *(v2 + 232) = v3;
LABEL_212:
                      v101 = *(v2 + 264);
                      if (v101)
                      {
                        v102 = v101(v2, *(v2 + 272));
                        *(v2 + 532) = v102;
                        if (!v102)
                        {
                          goto LABEL_197;
                        }
                      }

                      else if (!*(v2 + 532))
                      {
                        goto LABEL_197;
                      }

                      if (*(v2 + 168) != 4)
                      {
                        *(v2 + 168) = 4;
                        pthread_cond_broadcast((v2 + 64));
                      }

LABEL_197:
                      if (v78 && !*(v2 + 532))
                      {
LABEL_8:
                        if (*(v2 + 168) != 3)
                        {
                          goto LABEL_9;
                        }
                      }

                      goto LABEL_3;
                    }

                    stkputbtm(v2 + 296, v49);
                    *(v2 + 532) = 22;
                    if (*(v2 + 168) != 4)
                    {
                      *(v2 + 168) = 4;
                      pthread_cond_broadcast((v2 + 64));
                    }

                    --*(v2 + 536);
                    v70 = 22;
LABEL_190:
                    *(v2 + 532) = v70;
                    v47 = *(v2 + 168);
LABEL_191:
                    if (v47 == 4)
                    {
                      goto LABEL_3;
                    }

                    *(v2 + 168) = 4;
                    goto LABEL_193;
                  }

LABEL_186:
                  --*(v2 + 536);
                  if (!v70 || v70 == -39)
                  {
                    v78 = v70 == -39;
                    goto LABEL_196;
                  }

LABEL_188:
                  if (v70 != 55)
                  {
                    if (v70 == -1)
                    {
                      goto LABEL_255;
                    }

                    goto LABEL_190;
                  }
                }

                break;
              }
            }

            *(v2 + 172) = ++v12;
            v13 += 12;
            if (*v11 <= v12)
            {
              goto LABEL_95;
            }
          }
        }

LABEL_194:
        pthread_cond_wait((v2 + 64), v2);
        continue;
      }

      break;
    }

    if (v5 == 3)
    {
      if (*(v2 + 164) != 1)
      {
        goto LABEL_255;
      }

      v43 = *(v2 + 264);
      if (v43)
      {
        v44 = v43(v2, *(v2 + 272));
        if (!*(v2 + 532))
        {
          *(v2 + 532) = v44;
        }
      }

      if (*(v2 + 168) == 5)
      {
        continue;
      }

      v7 = 5;
      goto LABEL_86;
    }

    break;
  }

  if (v5 == 4)
  {
    v6 = *(v2 + 264);
    if (v6)
    {
      v6(v2, *(v2 + 272));
      goto LABEL_8;
    }

LABEL_9:
    v7 = 3;
LABEL_86:
    *(v2 + 168) = v7;
    goto LABEL_193;
  }

  if (v5 != 5)
  {
    goto LABEL_194;
  }

  *(v2 + 192) = time(0);
  v116 = *(v2 + 264);
  if (v116)
  {
    v116(v2, *(v2 + 272));
  }

LABEL_255:
  --*(v2 + 164);
  pthread_mutex_unlock(v2);
  if (!*(v2 + 164))
  {
    pthread_cond_broadcast((v2 + 112));
  }

LABEL_257:
  free(a1);
  return 0;
}