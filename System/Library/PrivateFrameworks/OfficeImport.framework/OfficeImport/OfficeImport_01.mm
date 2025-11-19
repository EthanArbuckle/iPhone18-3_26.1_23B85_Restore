void OcText::OcText(OcText *this)
{
  this->var0 = &unk_286EC8C60;
  *&this->var1 = 0u;
  *&this->var5 = 0u;
  this->var7 = 1;
}

void OcBinaryReader::readSummary(OcBinaryReader *this, OcSummary *a2)
{
  v4 = OcBinaryReader::parseChUINT2Prop(this, 1, 1);
  v5 = OcBinaryReader::parseChUINT2Prop(this, 2, 1);
  if (v5 > 931)
  {
    if (v5 > 1360)
    {
      if (v5 > 10078)
      {
        if ((v5 - 65000) >= 2 && v5 != 10079 && v5 != 10081)
        {
          goto LABEL_39;
        }
      }

      else if (((v5 - 10000) > 0x1D || ((1 << (v5 - 16)) & 0x200000C3) == 0) && v5 != 1361)
      {
        goto LABEL_39;
      }
    }

    else if (((v5 - 1200) > 0x3A || ((1 << (v5 + 80)) & 0x7FC000000000001) == 0) && ((v5 - 932) > 0x12 || ((1 << (v5 + 92)) & 0x60011) == 0) && v5 != 1026)
    {
      goto LABEL_39;
    }
  }

  else if (v5 > 707)
  {
    if (((v5 - 850) > 0x19 || ((1 << (v5 - 82)) & 0x309FCA5) == 0) && (v5 - 708) >= 3 && ((v5 - 720) > 0x37 || ((1 << (v5 + 48)) & 0x80000000020001) == 0))
    {
      goto LABEL_39;
    }
  }

  else if (v5 > 36)
  {
    if (((v5 - 37) > 0x3F || ((1 << (v5 - 37)) & 0x8000000000000021) == 0) && v5 != 437 && v5 != 500)
    {
      goto LABEL_39;
    }
  }

  else if (v5 >= 5)
  {
LABEL_39:
    v7 = 1252;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 1252;
    }

    goto LABEL_38;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1252;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1252;
  }

LABEL_38:
  *(a2 + 4) = v6;
  *(a2 + 16) = v6;
  *(a2 + 28) = v6;
  *(a2 + 40) = v6;
  *(a2 + 52) = v6;
  *(a2 + 64) = v6;
  *(a2 + 76) = v6;
  *(a2 + 88) = v6;
  *(a2 + 100) = v6;
  *(a2 + 124) = v7;
  *(a2 + 136) = v7;
  *(a2 + 148) = v7;
  *(a2 + 160) = v7;
  OcBinaryReader::parseStringProp(this, 1, 2, (a2 + 8));
  OcBinaryReader::parseStringProp(this, 1, 3, (a2 + 56));
  OcBinaryReader::parseStringProp(this, 1, 4, (a2 + 104));
  OcBinaryReader::parseStringProp(this, 1, 5, (a2 + 152));
  OcBinaryReader::parseStringProp(this, 1, 6, (a2 + 200));
  OcBinaryReader::parseStringProp(this, 1, 7, (a2 + 248));
  OcBinaryReader::parseStringProp(this, 1, 8, (a2 + 296));
  OcBinaryReader::parseStringProp(this, 1, 9, (a2 + 344));
  OcBinaryReader::parseStringProp(this, 1, 18, (a2 + 392));
  OcBinaryReader::parseStringProp(this, 2, 2, (a2 + 488));
  OcBinaryReader::parseStringProp(this, 2, 3, (a2 + 536));
  OcBinaryReader::parseStringProp(this, 2, 14, (a2 + 584));
  OcBinaryReader::parseStringProp(this, 2, 15, (a2 + 632));
  OcBinaryReader::parseDateTimeProp(this, 1, 10, a2 + 170);
  OcBinaryReader::parseDateTimeProp(this, 1, 11, a2 + 172);
  OcBinaryReader::parseDateTimeProp(this, 1, 12, a2 + 174);
  OcBinaryReader::parseDateTimeProp(this, 1, 13, a2 + 176);
  *(a2 + 761) = OcBinaryReader::parseBoolProp(this, 2, 16);
  *(a2 + 760) = OcBinaryReader::parseBoolProp(this, 2, 11);
  OcBinaryReader::parseBLOBProp(this, 3, 4096, a2 + 440);
  OcBinaryReader::parseHyperlinksProp(this, a2);
}

uint64_t OcBinaryReader::parseChUINT2Prop(uint64_t a1, int a2, uint64_t a3)
{
  v12 = 7;
  v11 = 0;
  v6 = (*(*a1 + 88))(a1);
  SsrwOORootStorage::getDocumentProperty(v6, a2, a3, &v12, &v11);
  if (v11)
  {
    v7 = v12 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *v11;
  v9 = (*(*a1 + 88))(a1);
  SsrwOORootStorage::freeDocumentProperty(v9, &v11);
  return v8;
}

uint64_t SsrwOORootStorage::getDocumentProperty(uint64_t a1, int a2, uint64_t a3, int *a4, void **a5)
{
  result = getDocumentProperty(*(a1 + 80), a2, a3, a4, a5);
  if ((result & 0xFFFFFFFE) == 0xC)
  {
    if (*a5)
    {

      return SsrwOORootStorage::freeDocumentProperty(result, a5);
    }
  }

  else if (result)
  {
    v7 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v7;
  }

  return result;
}

uint64_t getDocumentProperty(uint64_t a1, int a2, uint64_t a3, int *a4, void **a5)
{
  v25 = 0;
  v26 = 0;
  if (!a1)
  {
    return 6;
  }

  v5 = 6;
  if ((a2 - 4) >= 0xFFFFFFFD && a4 && a5)
  {
    v9 = *(&off_2799CCD18 + a2 - 1);
    v22 = 0;
    __s = 0;
    __src = 0;
    StorageFromRoot = getStorageFromRoot(a1, &v25);
    if (StorageFromRoot)
    {
      return StorageFromRoot;
    }

    StorageFromRoot = propertyStorageOpen(v25, v9, &v26);
    if (StorageFromRoot)
    {
      return StorageFromRoot;
    }

    v12 = v26;
    if (!v26)
    {
      return v5;
    }

    if (!*v26 || (v5 = propertySetGet(*v26, a3, &v22), v5))
    {
      free(v12);
      return v5;
    }

    free(v12);
    if (v22 > 0x1Du)
    {
      if (v22 > 0x40u)
      {
        if (v22 == 65)
        {
          v14 = __s;
        }

        else
        {
          if (v22 != 71)
          {
            goto LABEL_53;
          }

          v14 = *__s;
        }

        if (v14 > 0xFFFFFFFB)
        {
          goto LABEL_52;
        }

        v13 = v14 + 4;
LABEL_35:
        v16 = v13;
        v17 = malloc_type_malloc(v13, 0xF32E5A3AuLL);
        *a5 = v17;
        if (v17)
        {
          bzero(v17, v16);
          if (v22 <= 0x1Du)
          {
            if (v22 > 4u)
            {
              if (v22 == 5)
              {
                memcpy(*a5, &__s, v16);
                v18 = 7;
                goto LABEL_60;
              }

              if (v22 == 11)
              {
                memcpy(*a5, &__s, v16);
                v18 = 5;
                goto LABEL_60;
              }
            }

            else
            {
              if (v22 == 2)
              {
                memcpy(*a5, &__s, v16);
                v18 = 0;
                goto LABEL_60;
              }

              if (v22 == 3)
              {
                memcpy(*a5, &__s, v16);
                v18 = 1;
LABEL_60:
                *a4 = v18;
                return propVariantCleanup(&v22);
              }
            }

LABEL_53:
            propVariantCleanup(&v22);
            return 12;
          }

          if (v22 <= 0x40u)
          {
            if (v22 == 30)
            {
              memcpy(*a5, __s, v16);
              v18 = 2;
              goto LABEL_60;
            }

            if (v22 == 64)
            {
              v19 = time_tFromWinFileTime(&__s, *a5);
              if (v19)
              {
                v5 = v19;
                propVariantCleanup(&v22);
                return v5;
              }

              v18 = 3;
              goto LABEL_60;
            }

            goto LABEL_53;
          }

          if (v22 == 65)
          {
            v20 = __s;
            v21 = *a5;
            *v21 = __s;
            memcpy(v21 + 1, __src, v20);
            v18 = 6;
            goto LABEL_60;
          }

          if (v22 != 71)
          {
            goto LABEL_53;
          }

          CsLeWriteUInt32(*__s, *a5);
          CsLeWriteUInt32(*(__s + 1), *a5 + 1);
          if (*__s > 3u)
          {
            memcpy(*a5 + 8, *(__s + 1), (*__s - 4));
            v18 = 4;
            goto LABEL_60;
          }
        }

LABEL_52:
        propVariantCleanup(&v22);
        return 5;
      }

      if (v22 == 30)
      {
        v15 = strlen(__s);
        if (v15 == -1)
        {
          goto LABEL_52;
        }

        v13 = v15 + 1;
        goto LABEL_35;
      }

      if (v22 != 64)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v13 = 2;
      if (v22 <= 4u)
      {
        if (v22 != 2)
        {
          if (v22 != 3)
          {
            goto LABEL_53;
          }

          v13 = 4;
        }

        goto LABEL_35;
      }

      if (v22 != 5)
      {
        if (v22 != 11)
        {
          goto LABEL_53;
        }

        goto LABEL_35;
      }
    }

    v13 = 8;
    goto LABEL_35;
  }

  return v5;
}

uint64_t propertyStorageOpen(uint64_t *a1, void *a2, uint64_t **a3)
{
  v6 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  *a3 = v6;
  if (v6)
  {
    *v6 = 0;
    v6[1] = 0;
    PropertySetFromStorage = getPropertySetFromStorage(a1, a2, *a3);
    if (PropertySetFromStorage)
    {
      free(*a3);
      *a3 = 0;
    }

    else
    {
      (*a3)[1] = storageGetRoot(a1);
    }
  }

  else
  {
    *a3 = 0;
    return 5;
  }

  return PropertySetFromStorage;
}

uint64_t getPropertySetFromStorage(uint64_t a1, void *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  result = storageEnsureDocumentPropertiesExist(a1);
  if (!result)
  {
    TOC = rootStorageGetTOC(a1);
    v8 = TOC;
    if (!areGUIDsEqual(a2, SSRW_FMTID_SummaryInformation))
    {
      if (areGUIDsEqual(a2, &SSRW_FMTID_DocumentSummaryInformation))
      {
        v8 = (TOC + 8);
      }

      else
      {
        if (!areGUIDsEqual(a2, &SSRW_FMTID_UserDefinedProperties))
        {
          return 12;
        }

        v8 = (TOC + 16);
      }
    }

    if (areGUIDsEqual(a2, SSRW_FMTID_SummaryInformation))
    {
      v9 = 24;
    }

    else
    {
      v9 = 32;
    }

    Mode = storageGetMode(a1);
    if (*(TOC + v9))
    {
      result = 0;
      v11 = 1;
    }

    else
    {
      if (*v8)
      {
        result = 0;
        goto LABEL_22;
      }

      if (areGUIDsEqual(a2, SSRW_FMTID_SummaryInformation))
      {
        v13 = &SUMMARY_INFO_NAME;
      }

      else
      {
        v13 = &DOC_SUMMARY_INFO_NAME;
      }

      if ((Mode & 0xFFFFFFFD) != 0)
      {
        result = 0;
      }

      else
      {
        result = openStream(a1, v13, (TOC + v9));
      }

      v14 = *(TOC + v9);
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = (Mode - 1) > 1;
      }

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        result = createStream(a1, v13, (TOC + v9));
        v16 = 0;
        v14 = *(TOC + v9);
      }

      if (result)
      {
        v11 = 0;
      }

      else
      {
        v11 = v16;
      }

      if (!v14)
      {
        return 13;
      }
    }

    if (*v8)
    {
      goto LABEL_22;
    }

    result = propertySetConstruct(a2, Mode, v8);
    if (result)
    {
      return result;
    }

    if (Mode & 0xFFFFFFFD) == 0 && (v11)
    {
      result = streamSeek(*(TOC + v9), 0, 0);
      if (result)
      {
        return result;
      }

      v12 = propertySetRead(*v8, *(TOC + v9), a2);
      result = 0;
      if (v12 && v12 != 15)
      {
        return v12;
      }

      goto LABEL_22;
    }

    if (!areGUIDsEqual(a2, &SSRW_FMTID_DocumentSummaryInformation) && (result = areGUIDsEqual(a2, &SSRW_FMTID_UserDefinedProperties), !result) || (LOWORD(v17) = 2, LOWORD(v18) = 1252, result = propertySetPut(*v8, 1, &v17), !result))
    {
LABEL_22:
      *a3 = *v8;
    }
  }

  return result;
}

uint64_t storageEnsureDocumentPropertiesExist(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = a1 + 40;
  if (v2)
  {
    return 0;
  }

  else
  {
    return documentPropertiesConstruct(v1);
  }
}

uint64_t storageGetMode(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t propertySetConstruct(_OWORD *a1, int a2, uint64_t *a3)
{
  v6 = malloc_type_malloc(0x990uLL, 0x1032040B935A2E1uLL);
  *a3 = v6;
  if (!v6)
  {
    return 5;
  }

  bzero(v6, 0x990uLL);
  result = 0;
  v8 = *a3;
  *(v8 + 1600) = 0;
  *(v8 + 1624) = 0;
  *(*a3 + 1608) = *a1;
  *(*a3 + 1636) = a2;
  return result;
}

uint64_t propertySetRead(uint64_t a1, uint64_t a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  LOWORD(v33) = 0;
  LOWORD(v32) = 0;
  HIDWORD(v33) = 0;
  LODWORD(v34) = 0;
  v37 = 0;
  v38[0] = 0;
  v35 = 0;
  v36 = 0;
  result = readSInt16(a2, &v33);
  if (!result)
  {
    result = readSInt16(a2, &v32);
    if (!result)
    {
      result = readSInt32(a2, &v34);
      if (!result)
      {
        result = readSInt32(a2, &v37);
        if (!result)
        {
          result = readUInt16(a2, &v37 + 2);
          if (!result)
          {
            result = readUInt16(a2, &v37 + 3);
            if (!result)
            {
              HIDWORD(v34) = 8;
              result = streamRead(a2, v38, &v34 + 1);
              if (!result)
              {
                result = readSInt32(a2, &v34);
                if (!result)
                {
                  v7 = 1;
                  v8 = v34;
                  while (1)
                  {
                    result = readGUID(a2, &v35);
                    if (result)
                    {
                      goto LABEL_9;
                    }

                    result = readSInt32(a2, &v33 + 1);
                    if (result)
                    {
                      goto LABEL_9;
                    }

                    if (*a3 == v35 && a3[1] == v36)
                    {
                      break;
                    }

                    v10 = (v8 < 2) | ~v7;
                    v7 = 0;
                    if (v10)
                    {
                      v11 = *(a1 + 1632);
                      goto LABEL_21;
                    }
                  }

                  v11 = HIDWORD(v33);
                  *(a1 + 1632) = HIDWORD(v33);
LABEL_21:
                  if (!v11)
                  {
                    return 0;
                  }

                  *(a1 + 1624) = a2;
                  streamSeek(a2, v11, 0);
                  readSInt32(a2, &v29 + 1);
                  v12 = HIDWORD(v29);
                  readSInt32(a2, &v29 + 1);
                  v13 = HIDWORD(v29);
                  if (HIDWORD(v29) > 0x32)
                  {
                    return 12;
                  }

                  *(a1 + 1600) = HIDWORD(v29);
                  if (!v13)
                  {
                    return 0;
                  }

                  v14 = 0;
                  while (1)
                  {
                    result = readSInt32(a2, &v29);
                    if (result)
                    {
                      return result;
                    }

                    v15 = a1 + 32 * v14;
                    *v15 = v29;
                    result = readSInt32(a2, &v29 + 1);
                    if (result)
                    {
                      return result;
                    }

                    *(v15 + 4) = HIDWORD(v29);
                    result = streamGetPos64(a2, &v28);
                    if (result)
                    {
                      return result;
                    }

                    result = streamSeek(*(a1 + 1624), *(v15 + 4) + *(a1 + 1632), 0);
                    if (result)
                    {
                      return result;
                    }

                    if (!*v15)
                    {
                      if (propertySetLoadNameList(a1, a2, v12))
                      {
                        if (*(a1 + 2440))
                        {
                          v21 = 0;
                          v22 = (a1 + 1640);
                          do
                          {
                            v23 = *v22;
                            v22 += 2;
                            free(v23);
                            ++v21;
                          }

                          while (v21 < *(a1 + 2440));
                        }

                        *(a1 + 2440) = 0;
                      }

                      goto LABEL_68;
                    }

                    v32 = 0;
                    v31 = 0;
                    v30 = 0;
                    v35 = 0;
                    v16 = *(a1 + 1624);
                    if (!v16)
                    {
                      goto LABEL_68;
                    }

                    readSInt32(v16, &v30 + 1);
                    v17 = HIDWORD(v30);
                    *(v15 + 8) = WORD2(v30);
                    v18 = (v15 + 8);
                    if (v17 <= 21)
                    {
                      if (v17 <= 4)
                      {
                        if (v17 == 2)
                        {
                          goto LABEL_51;
                        }

                        if (v17 != 3)
                        {
                          goto LABEL_66;
                        }

                        goto LABEL_57;
                      }

                      if (v17 != 5)
                      {
                        if (v17 != 11)
                        {
                          goto LABEL_66;
                        }

LABEL_51:
                        Float64 = readSInt16(*(a1 + 1624), &v31);
                        *(v15 + 16) = v31;
                        goto LABEL_59;
                      }

                      Float64 = readFloat64(*(a1 + 1624), &v35);
                      *(v15 + 16) = v35;
                    }

                    else
                    {
                      if (v17 <= 63)
                      {
                        if (v17 != 22)
                        {
                          if (v17 == 30)
                          {
                            if (!propertySetReadSizePrefixedBlob(a1, &v30, (v15 + 16)) && !*(*(v15 + 16) + (v30 - 1)))
                            {
                              goto LABEL_68;
                            }
                          }

                          else
                          {
LABEL_66:
                            *v18 = 0;
                          }

LABEL_67:
                          propVariantCleanup(v15 + 8);
                          goto LABEL_68;
                        }

LABEL_57:
                        Float64 = readSInt32(*(a1 + 1624), &v32);
                        *(v15 + 16) = v32;
                        goto LABEL_59;
                      }

                      if (v17 == 64)
                      {
                        if (!readSInt32(*(a1 + 1624), &v30 + 1))
                        {
                          *(v15 + 16) = HIDWORD(v30);
                          if (!readSInt32(*(a1 + 1624), &v30 + 1))
                          {
                            *(v15 + 20) = HIDWORD(v30);
                            goto LABEL_68;
                          }
                        }

                        goto LABEL_67;
                      }

                      if (v17 == 65)
                      {
                        if (!propertySetReadSizePrefixedBlob(a1, &v30, (v15 + 24)))
                        {
                          *(v15 + 16) = v30;
                          goto LABEL_68;
                        }

                        goto LABEL_67;
                      }

                      if (v17 != 71)
                      {
                        goto LABEL_66;
                      }

                      v33 = 0;
                      v34 = 0;
                      *v18 = 0;
                      Pos = streamGetPos(*(a1 + 1624), &v34);
                      if (Pos || (Pos = readSInt32(*(a1 + 1624), &v34 + 1)) != 0)
                      {
                        Float64 = Pos;
                        goto LABEL_59;
                      }

                      BytesAvailableToRead = streamGetBytesAvailableToRead(*(a1 + 1624), &v33);
                      Float64 = 14;
                      if (v33 >= HIDWORD(v34) && HIDWORD(v34) >= 5)
                      {
                        Float64 = BytesAvailableToRead;
                        if (!BytesAvailableToRead)
                        {
                          v37 = 0;
                          streamGetBytesAvailableToRead64(*(a1 + 1624), &v37);
                          if (v37 < HIDWORD(v34))
                          {
                            Float64 = 14;
                            goto LABEL_59;
                          }

                          v25 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
                          *(v15 + 16) = v25;
                          if (!v25)
                          {
                            goto LABEL_81;
                          }

                          *(*(v15 + 16) + 8) = malloc_type_calloc(1uLL, (HIDWORD(v34) - 4), 0x2811BFC2uLL);
                          v26 = *(v15 + 16);
                          if (!v26[1])
                          {
                            free(v26);
LABEL_81:
                            Float64 = 5;
                            goto LABEL_59;
                          }

                          *v26 = HIDWORD(v34);
                          SInt32 = readSInt32(*(a1 + 1624), &v33 + 1);
                          if (SInt32)
                          {
                            Float64 = SInt32;
LABEL_83:
                            free(*(*(v15 + 16) + 8));
                            free(*(v15 + 16));
                            goto LABEL_59;
                          }

                          *(*(v15 + 16) + 4) = HIDWORD(v33);
                          HIDWORD(v34) -= 4;
                          Float64 = streamRead(*(a1 + 1624), *(*(v15 + 16) + 8), &v34 + 1);
                          if (Float64)
                          {
                            goto LABEL_83;
                          }

                          *v18 = 71;
                        }
                      }
                    }

LABEL_59:
                    if (Float64)
                    {
                      goto LABEL_67;
                    }

LABEL_68:
                    result = streamSeek64(a2, v28, 0);
                    if (!result && ++v14 != v13)
                    {
                      continue;
                    }

                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *(a1 + 1624) = 0;
  return result;
}

uint64_t streamGetPos64(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 6;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t streamGetBytesAvailableToRead64(uint64_t a1, void *a2)
{
  result = 6;
  if (a1 && a2 && (*(a1 + 48) | 2) == 2)
  {
    result = 0;
    *a2 = **(a1 + 56) - *(a1 + 24);
  }

  return result;
}

uint64_t storageGetRoot(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  result = *a1;
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t propertySetGet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RealID = propertyGetRealID(a1, a2);
  if (RealID == -1)
  {
    return 13;
  }

  v6 = *(a1 + 1600);
  if (!v6)
  {
    return 13;
  }

  for (i = (a1 + 8); *(i - 2) != RealID; i += 16)
  {
    if (!--v6)
    {
      return 13;
    }
  }

  if (!*i || *i == 10)
  {
    return 13;
  }

  return propVariantCopyContents(i, a3);
}

uint64_t propertyGetRealID(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFE) == 0x1000)
  {
    Info = propertyGetInfo((a1 + 1608), a2);
    v4 = *(a1 + 2440);
    if (v4)
    {
      v5 = Info;
      for (i = (a1 + 1648); !v5 || strcmp(*(v5 + 1), *(i - 1)); i += 2)
      {
        if (!--v4)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return *i;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return a2;
}

uint64_t propVariantCopyContents(unsigned __int16 *a1, uint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    *a2 = 0;
    v5 = *a1;
    result = 12;
    if (v5 > 0x3F)
    {
      switch(v5)
      {
        case '@':
LABEL_6:
          v6 = *a1;
          *(a2 + 16) = *(a1 + 2);
          *a2 = v6;
LABEL_7:
          result = 0;
          *a2 = *a1;
          return result;
        case 'A':
          v15 = *(a1 + 2);
          *(a2 + 8) = v15;
          v16 = malloc_type_malloc(v15, 0x4D84AB9uLL);
          *(a2 + 16) = v16;
          if (v16)
          {
            memcpy(v16, *(a1 + 2), v15);
            goto LABEL_7;
          }

          return 5;
        case 'G':
          v7 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
          *(a2 + 8) = v7;
          if (v7)
          {
            v8 = (**(a1 + 1) - 4);
            *(*(a2 + 8) + 8) = malloc_type_malloc(v8, 0x100004077774924uLL);
            v9 = *(*(a2 + 8) + 8);
            if (v9)
            {
              memcpy(v9, *(*(a1 + 1) + 8), v8);
              **(a2 + 8) = **(a1 + 1);
              *(*(a2 + 8) + 4) = *(*(a1 + 1) + 4);
              goto LABEL_7;
            }

            free(*(a2 + 8));
            *(a2 + 8) = 0;
          }

          return 5;
      }
    }

    else
    {
      if (v5 > 0x1E)
      {
        return result;
      }

      if (((1 << v5) & 0x10C2D) != 0)
      {
        goto LABEL_6;
      }

      if (v5 == 8)
      {
        v12 = (2 * *(*(a1 + 1) - 4) + 6);
        v13 = malloc_type_malloc(v12, 0xEBDC0AA0uLL);
        if (v13)
        {
          v14 = v13;
          memcpy(v13, (*(a1 + 1) - 4), v12);
          *(a2 + 8) = v14 + 4;
          free(v14);
          goto LABEL_7;
        }

        return 5;
      }

      if (v5 == 30)
      {
        v10 = strlen(*(a1 + 1)) + 1;
        v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
        *(a2 + 8) = v11;
        if (v11)
        {
          strncpy(v11, *(a1 + 1), v10);
          goto LABEL_7;
        }

        return 5;
      }
    }
  }

  return result;
}

uint64_t propVariantCleanup(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    result = 12;
    if (v2 > 63)
    {
      switch(v2)
      {
        case '@':
LABEL_16:
          result = 0;
          *v1 = 0;
          return result;
        case 'A':
          v3 = (v1 + 16);
          break;
        case 'G':
          v3 = (v1 + 8);
          v4 = *(v1 + 8);
          if (!v4)
          {
            v5 = 0;
            goto LABEL_15;
          }

          free(*(v4 + 8));
          break;
        default:
          return result;
      }

LABEL_14:
      v5 = *v3;
LABEL_15:
      free(v5);
      goto LABEL_16;
    }

    if (v2 > 0x1E)
    {
      return result;
    }

    if (((1 << v2) & 0x10C2D) != 0)
    {
      goto LABEL_16;
    }

    if (v2 == 8 || v2 == 30)
    {
      v3 = (v1 + 8);
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t SsrwOORootStorage::freeDocumentProperty(SsrwOORootStorage *this, void **a2)
{
  result = freeDocumentProperty(a2);
  if (result)
  {
    v3 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return result;
}

uint64_t freeDocumentProperty(void **a1)
{
  free(*a1);
  *a1 = 0;
  return 0;
}

uint64_t OcBinaryReader::parseStringProp(uint64_t a1, int a2, uint64_t a3, OcText *a4)
{
  v14 = 0;
  __s = 0;
  v8 = (*(*a1 + 88))(a1);
  result = SsrwOORootStorage::getDocumentProperty(v8, a2, a3, &v14, &__s);
  if (__s)
  {
    v10 = v14 == 2;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = strlen(__s);
    OcText::copyBuffer(a4, __s, v11 + 1);
    a4->var3 = v11 >> (OcText::isSingleByteEncoding(a4->var1) ^ 1);
    v12 = (*(*a1 + 88))(a1);
    return SsrwOORootStorage::freeDocumentProperty(v12, &__s);
  }

  return result;
}

void *OcText::copyBuffer(OcText *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (!a2 || (OcText::allocBuffer(this, a3, 0), (var5 = this->var5) == 0))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return memcpy(var5, a2, a3);
}

void OcText::allocBuffer(OcText *this, unsigned int a2, int a3)
{
  var4 = this->var4;
  if (var4 < a2)
  {
    if (this->var7)
    {
      var5 = this->var5;
      if (var5)
      {
        MEMORY[0x25F896FE0](var5, 0x1000C8077774924);
      }

      this->var5 = 0;
LABEL_8:
      operator new[](a2);
    }

LABEL_7:
    this->var7 = 1;
    goto LABEL_8;
  }

  if (!this->var7)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    v7 = this->var5;
    if (v7)
    {

      bzero(v7, var4);
    }
  }
}

uint64_t OcText::isSingleByteEncoding(int a1)
{
  result = 1;
  if (a1 > 949)
  {
    if (a1 > 9999)
    {
      if (a1 > 10078)
      {
        if (a1 == 10079 || a1 == 10081 || a1 == 65001)
        {
          return result;
        }
      }

      else
      {
        v3 = a1 - 10000;
        if (v3 <= 0x1D && ((1 << v3) & 0x200000C1) != 0)
        {
          return result;
        }
      }
    }

    else if ((a1 - 1250) < 9 || a1 == 950)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 774)
  {
    if (a1 == 2 || a1 == 437 || a1 == 737)
    {
      return result;
    }

    return 0;
  }

  if (((a1 - 850) > 0x13 || ((1 << (a1 - 82)) & 0x9FCA5) == 0) && a1 != 775 && a1 != 932)
  {
    return 0;
  }

  return result;
}

uint64_t OcBinaryReader::parseDateTimeProp(uint64_t a1, int a2, uint64_t a3, unsigned int *a4)
{
  v13 = 7;
  v12 = 0;
  v8 = (*(*a1 + 88))(a1);
  result = SsrwOORootStorage::getDocumentProperty(v8, a2, a3, &v13, &v12);
  if (v12)
  {
    v10 = v13 == 3;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    ChWindowsTimeFromTime_t(*v12, a4);
    v11 = (*(*a1 + 88))(a1);
    return SsrwOORootStorage::freeDocumentProperty(v11, &v12);
  }

  return result;
}

uint64_t ChWindowsTimeFromTime_t(uint64_t result, unsigned int *a2)
{
  v2 = 10000 * WORD1(result) + ((10000 * result) >> 16);
  v3 = HIWORD(v2);
  v4 = 1000 * v2 + ((1000 * (10000 * result)) >> 16);
  v5 = (-27008 * result) + 0x8000;
  v6 = HIWORD(v5) + v4 + 54590;
  *a2 = v5 & 0xFF80 | (v6 << 16);
  a2[1] = 1000 * v3 + HIWORD(v4) + HIWORD(v6) + 27111902;
  return result;
}

BOOL OcBinaryReader::parseBoolProp(uint64_t a1, int a2, uint64_t a3)
{
  v12 = 7;
  v11 = 0;
  v6 = (*(*a1 + 88))(a1);
  SsrwOORootStorage::getDocumentProperty(v6, a2, a3, &v12, &v11);
  if (v11)
  {
    v7 = v12 == 5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *v11 == 1;
  v9 = (*(*a1 + 88))(a1);
  SsrwOORootStorage::freeDocumentProperty(v9, &v11);
  return v8;
}

uint64_t OcBinaryReader::parseBLOBProp(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v15 = 0;
  v8 = (*(*a1 + 88))(a1);
  result = SsrwOORootStorage::getDocumentProperty(v8, a2, a3, &v16, &v15);
  v10 = v15;
  if (v15)
  {
    v11 = v16 == 6;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *(a4 + 8) = 1;
    v12 = *v10;
    isSingleByteEncoding = OcText::isSingleByteEncoding(1);
    v12 /= 2;
    OcText::setMinimumCapacity(a4, v12 << (isSingleByteEncoding ^ 1));
    CsLeReadChars16((v15 + 1), v12, *(a4 + 24));
    *(a4 + 16) = v12;
    v14 = (*(*a1 + 88))(a1);
    return SsrwOORootStorage::freeDocumentProperty(v14, &v15);
  }

  return result;
}

uint64_t propertySetLoadNameList(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = 0;
  if (*(a1 + 2440))
  {
    return 2;
  }

  result = readSInt32(a2, &v11 + 1);
  if (!result)
  {
    if (HIDWORD(v11))
    {
      v7 = a1 + 1640;
      if (HIDWORD(v11) >= 0x32)
      {
        v8 = 50;
      }

      else
      {
        v8 = HIDWORD(v11);
      }

      while (1)
      {
        result = readSInt32(a2, &v11 + 1);
        if (result)
        {
          break;
        }

        v9 = HIDWORD(v11);
        result = readSInt32(a2, &v11 + 1);
        if (result)
        {
          break;
        }

        LODWORD(v11) = HIDWORD(v11);
        if (HIDWORD(v11) >= a3)
        {
          return 14;
        }

        v10 = malloc_type_malloc(HIDWORD(v11) + 1, 0x100004077774924uLL);
        *v7 = v10;
        if (!v10)
        {
          return 5;
        }

        ++*(a1 + 2440);
        v10[v11] = 0;
        result = streamRead(a2, *v7, &v11);
        if (!result)
        {
          *(v7 + 8) = v9;
          v7 += 16;
          if (--v8)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int *propertyGetInfo(void *a1, int a2)
{
  v3 = 0;
  for (result = &s_PropertyInfoTable; ; result += 8)
  {
    if (!v3 || ((v5 = *(result + 2), v7 = *v5, v6 = v5[1], v7 == *a1) ? (v8 = v6 == a1[1]) : (v8 = 0), v8))
    {
      if (*result == a2)
      {
        break;
      }
    }

    if (--v3 == -34)
    {
      return 0;
    }
  }

  return result;
}

void sub_25D2B5128(_Unwind_Exception *a1, int a2)
{
  (*(*v2 + 8))(v2);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x25D2B510CLL);
  }

  _Unwind_Resume(a1);
}

void OcBinaryReader::getPropertyValue(uint64_t a1, int a2)
{
  v4 = (*(*a1 + 88))(a1);
  v7 = 0;
  v5 = (*(*a1 + 96))(a1);
  if (v5)
  {
    if (SsrwOOStorage::hasChild(v4, v5))
    {
      SsrwOOStorage::openStorage(v4, v5);
    }
  }

  FMTIDForStreamType = SsrwOOPropertyStorage::getFMTIDForStreamType(a2);
  SsrwOOStorage::openPropertyStorage(v4, FMTIDForStreamType);
}

void sub_25D2B5380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ChAutoPtr<SsrwOOStorage>::~ChAutoPtr(va);
  _Unwind_Resume(a1);
}

uint64_t SsrwOOPropertyStorage::getFMTIDForStreamType(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_2799CCCF0 + (a1 - 1));
  }
}

void SsrwOOStorage::openPropertyStorage(SsrwOOStorage *this, _SsrwOO_GUID *a2)
{
  v5 = 0;
  v2 = propertyStorageOpen(this->var0, a2, &v5);
  if (!v2)
  {
    operator new();
  }

  v3 = v2;
  exception = __cxa_allocate_exception(4uLL);
  *exception = v3;
}

BOOL SsrwOOPropertyStorage::getPropertyValue(uint64_t **this, uint64_t a2, SsrwOOPropVariant *a3)
{
  PropertyValue = propertyStorageGetPropertyValue(this[1], a2, *(a3 + 1));
  if (PropertyValue)
  {
    v4 = PropertyValue == 13;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = PropertyValue;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v6;
  }

  return PropertyValue != 13;
}

uint64_t propertyStorageGetPropertyValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3 && (v3 = *a1) != 0)
  {
    return propertySetGet(v3, a2, a3);
  }

  else
  {
    return 6;
  }
}

uint64_t SsrwOOPropertyStorage::close(uint64_t this)
{
  v1 = (this + 8);
  if (*(this + 8))
  {
    this = propertyStorageClose((this + 8));
    *v1 = 0;
  }

  return this;
}

uint64_t propertyStorageClose(void **a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = *a1;
  if (!v2)
  {
    return 6;
  }

  free(v2);
  result = 0;
  *a1 = 0;
  return result;
}

void SsrwOOPropertyStorage::~SsrwOOPropertyStorage(void **this)
{
  SsrwOOPropertyStorage::~SsrwOOPropertyStorage(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC8FB0;
  v1 = this + 1;
  if (this[1])
  {
    propertyStorageClose(this + 1);
    *v1 = 0;
  }
}

SsrwOOStorage **ChAutoPtr<SsrwOOStorage>::~ChAutoPtr(SsrwOOStorage **a1)
{
  v2 = *a1;
  if (v2)
  {
    SsrwOOStorage::~SsrwOOStorage(v2);
    MEMORY[0x25F897000]();
  }

  *a1 = 0;
  return a1;
}

void SsrwOOPropVariant::~SsrwOOPropVariant(SsrwOOPropVariant *this)
{
  SsrwOOPropVariant::~SsrwOOPropVariant(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC8FE8;
  propVariantCleanup(*(this + 1));
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x25F897000](v2, 0x1032C40458B8274);
  }

  *(this + 1) = 0;
}

unsigned __int8 *OcBinaryReader::parseClipboardProp(uint64_t a1, int a2, uint64_t a3, OcBinaryData *a4)
{
  v13 = 0;
  v12 = 0;
  v8 = (*(*a1 + 88))(a1);
  SsrwOORootStorage::getDocumentProperty(v8, a2, a3, &v13, &v12);
  result = v12;
  if (v12)
  {
    if (v13 == 6)
    {
      v10 = CsLeReadSInt32(v12) - 4;
      OcBinaryData::setMinimumCapacity(a4, v10);
      OcBinaryData::copyBuffer(a4, v12 + 4, v10);
    }

    v11 = (*(*a1 + 88))(a1);
    return SsrwOORootStorage::freeDocumentProperty(v11, &v12);
  }

  return result;
}

void OcSummary::~OcSummary(OcSummary *this)
{
  *this = &unk_286EC8C28;
  v2 = *(this + 97);
  v3 = *(this + 96);
  if (((v2 - v3) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        (*(*v5 + 8))(v3[v4]);
        v3 = *(this + 96);
      }

      v3[v4++] = 0;
      v3 = *(this + 96);
    }

    while (v4 < ((*(this + 97) - v3) >> 3));
  }

  if (v3)
  {
    *(this + 97) = v3;
    operator delete(v3);
  }

  OcBinaryData::~OcBinaryData((this + 712));
  OcText::~OcText((this + 632));
  OcText::~OcText((this + 584));
  OcText::~OcText((this + 536));
  OcText::~OcText((this + 488));
  OcText::~OcText((this + 440));
  OcText::~OcText((this + 392));
  OcText::~OcText((this + 344));
  OcText::~OcText((this + 296));
  OcText::~OcText((this + 248));
  OcText::~OcText((this + 200));
  OcText::~OcText((this + 152));
  OcText::~OcText((this + 104));
  OcText::~OcText((this + 56));
  OcText::~OcText((this + 8));
}

{
  OcSummary::~OcSummary(this);

  JUMPOUT(0x25F897000);
}

OcBinaryData *OcBinaryData::removeBuffer(OcBinaryData *this)
{
  v1 = this;
  if (this->var6)
  {
    this = this->var5;
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }
  }

  *&v1->var3 = 0;
  v1->var5 = 0;
  return this;
}

void OcText::~OcText(OcText *this)
{
  this->var0 = &unk_286EC8C60;
  var6 = this->var6;
  if (var6)
  {
    MEMORY[0x25F896FE0](var6, 0x1000C8077774924);
  }

  this->var6 = 0;
  if (this->var7)
  {
    var5 = this->var5;
    if (var5)
    {
      MEMORY[0x25F896FE0](var5, 0x1000C8077774924);
    }
  }

  *&this->var3 = 0;
  this->var5 = 0;
}

{
  OcText::~OcText(this);

  JUMPOUT(0x25F897000);
}

OcText *OcText::removeBuffer(OcText *this)
{
  v1 = this;
  if (this->var7)
  {
    this = this->var5;
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }
  }

  *&v1->var3 = 0;
  v1->var5 = 0;
  return this;
}

BOOL CsString::operator==(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v4 = _ChWcslen(a2);
  if (*(a1 + 16) != v4)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = v4 - 1;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v10 = *v2++;
    v9 = v10;
    v12 = v6-- != 0;
    result = v7 == v9;
  }

  while (v7 == v9 && v12);
  return result;
}

void sub_25D2B633C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D2B66B0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_25D2B6D4C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t EshOpt::isPropertySet(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 8);
    if (v3 <= a2)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_5;
  }

  return 1;
}

uint64_t *EshOpt::getProperty(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = &v3;
  return std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v3) + 5;
}

uint64_t EshOpt::getColorProperty(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v5 = &v4;
  *(a1 + 56) = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v4)[5];
  return a1 + 56;
}

PptParaProperty *PptParaProperty::operator=(PptParaProperty *this, PptParaProperty *a2)
{
  if (a2 != this)
  {
    PptParaProperty::reset(this);
    v4 = *a2;
    *(this + 2) = *(a2 + 2);
    *this = v4;
    v5 = *(this + 3) & 0xFFFE | *(a2 + 3) & 1;
    *(this + 3) = *(this + 3) & 0xFFFE | *(a2 + 3) & 1;
    v6 = v5 & 0xFFFFFFFD | (2 * ((*(a2 + 3) >> 1) & 1));
    *(this + 3) = v6;
    v7 = v6 & 0xFFFFFFFB | (4 * ((*(a2 + 3) >> 2) & 1));
    *(this + 3) = v7;
    v8 = v7 & 0xFFFFFFF7 | (8 * ((*(a2 + 3) >> 3) & 1));
    *(this + 3) = v8;
    v9 = v8 & 0xFFFFFFEF | (16 * ((*(a2 + 3) >> 4) & 1));
    *(this + 3) = v9;
    v10 = v9 & 0xFFFFFFDF | (32 * ((*(a2 + 3) >> 5) & 1));
    *(this + 3) = v10;
    v11 = v10 & 0xFFFFFFBF | (((*(a2 + 3) >> 6) & 1) << 6);
    *(this + 3) = v11;
    v12 = v11 & 0xFFFFFF7F | (((*(a2 + 3) >> 7) & 1) << 7);
    *(this + 3) = v12;
    v13 = v12 & 0xFFFFF0FF | ((HIBYTE(*(a2 + 3)) & 0xF) << 8);
    *(this + 3) = v13;
    *(this + 3) = v13 & 0xCFFF | *(a2 + 3) & 0x3000;
    *(this + 6) = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 9) = *(a2 + 9);
    *(this + 5) = *(a2 + 5);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    if (*(a2 + 5))
    {
      v14 = *(this + 5);
      if (v14)
      {
        v15 = *v14;
        if (*v14)
        {
          *(v14 + 8) = v15;
          operator delete(v15);
        }

        MEMORY[0x25F897000](v14, 0x20C40960023A9);
      }

      *(this + 5) = 0;
      operator new();
    }

    *(this + 5) = 0;
  }

  return this;
}

uint64_t PptParaProperty::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 40);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    this = MEMORY[0x25F897000](v2, 0x20C40960023A9);
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t PptTextHeaderAtom::getBaseType(int a1)
{
  if ((a1 - 5) >= 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return *(&xmmword_25D6FCA20 + (a1 - 5));
}

uint64_t sfaxmlSAXParseFile(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (sfaxmlSAXParseFile::once != -1)
  {
    sfaxmlSAXParseFile_cold_1();
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __sfaxmlSAXParseFile_block_invoke_2;
  v10[3] = &unk_2799C79D0;
  v12 = a4;
  v10[4] = &v13;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a3;
  dispatch_sync(sfaxmlSAXParseFile::parsingQueue, v10);
  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v8;
}

gzFile sfagzfileOpen_libxml(const char *a1)
{
  if (!a1 || !xmlCheckFilename(a1))
  {
    return 0;
  }

  return gzopen(a1, "rb");
}

uint64_t sfagzfileClose_libxml(gzFile_s *a1)
{
  if (gzclose(a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

_xmlNode *pCXFindChild(_xmlNode *a1, CXNamespace *a2, xmlChar *str1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->children; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name) && [(CXNamespace *)a2 containsNode:i])
    {
      break;
    }
  }

  return i;
}

_xmlNode *CXFirstChild(_xmlNode *a1)
{
  if (a1)
  {
    for (result = a1->children; result; result = result->next)
    {
      if (result->type == XML_ELEMENT_NODE)
      {
        break;
      }
    }
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"xmlNodePtr CXFirstChild(xmlNodePtr)"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCXmlUtilities.mm"], 120, 0, "Bad node.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  return result;
}

_xmlAttr *CXRequiredStringAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:result];

    return v4;
  }

  return result;
}

_xmlAttr *CXFindAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *str2)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->properties; i; i = i->next)
  {
    name = i->name;
    if (name && xmlStrEqual(name, str2) && [(CXNamespace *)a2 containsAttribute:i])
    {
      break;
    }
  }

  return i;
}

_xmlNode *CXNextSibling(_xmlNode *a1)
{
  v1 = a1;
  if (!a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"xmlNodePtr CXNextSibling(xmlNodePtr)"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Common/Utilities/TCXmlUtilities.mm"], 133, 0, "Bad node.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  do
  {
    v1 = v1->next;
  }

  while (v1 && v1->type != XML_ELEMENT_NODE);
  return v1;
}

void sub_25D2B92D0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

_xmlAttr *CXRequiredLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXLongValue(result, 0);
  }

  return result;
}

char *sfaxmlXmlCharToLong(char *a1, uint64_t *a2)
{
  __endptr = 0;
  v4 = strtol(a1, &__endptr, 10);
  if (*__endptr || !*a1)
  {
    if (strchr(a1, 37))
    {
      v4 *= 1000;
    }

    else
    {
      v5 = strchr(a1, 112);
      if (v5 && v5[1] == 116)
      {
        v4 *= 20;
      }

      else
      {
        result = strchr(a1, 46);
        if (!result)
        {
          return result;
        }
      }
    }
  }

  *a2 = v4;
  return 1;
}

_xmlNode *CXFindNextChild(_xmlNode *a1, CXNamespace *a2, xmlChar *str1)
{
  for (i = a1->next; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name) && [(CXNamespace *)a2 containsNode:i])
    {
      break;
    }
  }

  return i;
}

uint64_t CXBoolValue(_xmlAttr *a1)
{
  v5 = 0;
  children = a1->children;
  if (!children || children->next || children->type - 3 > 1)
  {
    v2 = 1;
    String = xmlNodeListGetString(a1->doc, children, 1);
    if (!String)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  String = children->content;
  if (String)
  {
LABEL_7:
    sfaxmlXmlCharToBool(String, &v5);
  }

LABEL_8:
  if (v2)
  {
    free(String);
  }

  return v5;
}

uint64_t sfaxmlXmlCharToBool(const xmlChar *a1, _BYTE *a2)
{
  if (!xmlStrcasecmp(a1, "TRUE"))
  {
    goto LABEL_4;
  }

  if (!xmlStrcasecmp(a1, "FALSE"))
  {
    goto LABEL_6;
  }

  if (xmlStrEqual(a1, "1"))
  {
LABEL_4:
    LOBYTE(v4) = 1;
LABEL_7:
    *a2 = v4;
    return 1;
  }

  if (xmlStrEqual(a1, "0"))
  {
    goto LABEL_6;
  }

  if (!xmlStrcasecmp(a1, "y"))
  {
    goto LABEL_4;
  }

  if (!xmlStrcasecmp(a1, "n"))
  {
    goto LABEL_6;
  }

  if (!xmlStrcasecmp(a1, "t"))
  {
    goto LABEL_4;
  }

  if (!xmlStrcasecmp(a1, "f"))
  {
    goto LABEL_6;
  }

  if (!xmlStrcasecmp(a1, "yes"))
  {
    goto LABEL_4;
  }

  if (!xmlStrcasecmp(a1, "no"))
  {
LABEL_6:
    LOBYTE(v4) = 0;
    goto LABEL_7;
  }

  if (!xmlStrcasecmp(a1, "on"))
  {
    goto LABEL_4;
  }

  v4 = xmlStrcasecmp(a1, "off");
  result = 0;
  if (!v4)
  {
    goto LABEL_7;
  }

  return result;
}

NSString *CXDefaultStringAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, NSString *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:v5];

  return v6;
}

BOOL CXOptionalLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXLongValue(v5, 0);
  }

  return v6 != 0;
}

void sub_25D2B9AA0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t CXDefaultLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXLongValue(v5, 0);
}

__n128 EshContentProperties::getBounds(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  v5 = v4[14].n128_u8[6];
  v6 = v4[14].n128_u8[7];
  isPropertySet = EshOpt::isPropertySet(v4, 4u);
  v8 = 0.0;
  if (isPropertySet)
  {
    Property = EshOpt::getProperty(*(a1 + 16), 4u);
    v10 = EshFixedPointUtil::toFloat(*Property);
    v8 = v10;
    if (fabs(v10) > 365.0)
    {
      if (v10 >= 0.0)
      {
        v8 = v8 + -365.0;
      }

      else
      {
        v8 = v8 + 365.0;
      }
    }
  }

  result = v4[15];
  *a2 = result;
  a2[1].n128_f64[0] = v8;
  a2[1].n128_u8[8] = v5;
  a2[1].n128_u8[9] = v6;
  return result;
}

void PptHeadersFootersAtom::PptHeadersFootersAtom(PptHeadersFootersAtom *this)
{
  EshAtom::EshAtom(this, 0xFDAu, 0);
  *(v1 + 40) = -1;
  *(v1 + 44) = 0;
  *v1 = &unk_286EDADE8;
  *(v1 + 32) = &unk_286EDAE90;
  *(v1 + 52) = 1;
  *(v1 + 53) = 0;
  *(v1 + 57) = 1;
}

uint64_t PptHeadersFootersAtom::isRendered(_BYTE *a1, int a2)
{
  v2 = 0;
  if (a2 > 8)
  {
    if (a2 == 9)
    {
      v2 = a1[57];
    }

    else if (a2 == 10)
    {
      v2 = a1[56];
    }
  }

  else if (a2 == 7)
  {
    v2 = a1[52];
  }

  else if (a2 == 8)
  {
    v2 = a1[55];
  }

  return v2 & 1;
}

uint64_t pdSlideLayoutTypeForPptSlideHolder(ESDContainer *a1)
{
  v1 = [(ESDContainer *)a1 firstChildOfType:1007];
  Atom = ESDAtomAccess<PptSlideAtom>::extractAtom(v1, 1);

  v3 = Atom[6].i32[1];
  *v4.i8 = Atom[7];
  v5 = Atom[8];
  switch(Atom[6].i32[0])
  {
    case 0:
      if ((v3 & 0xFFFFFFFD) != 0xD || v4.i32[0] != 16 || v4.i32[1] != 0)
      {
        goto LABEL_126;
      }

      return 1;
    case 1:
      v21 = v3 == 13 && v4.i32[1] == 0;
      if (!v21 || (v4.i32[0] - 14) >= 0xA)
      {
        goto LABEL_126;
      }

      return dword_25D70F7A0[v4.i32[0] - 14];
    case 7:
      if (v3 != 13 || v4.i32[0] != 0)
      {
        goto LABEL_126;
      }

      return 6;
    case 8:
      if (v3 != 13 || v5.i32[0] != 0)
      {
        goto LABEL_126;
      }

      if (v4.i32[0] == 14 && v4.i32[1] == 14)
      {
        return 32;
      }

      if (v4.i32[0] == 19 && v4.i32[1] == 19)
      {
        return 4;
      }

      if (v4.i32[0] == 14 && v4.i32[1] == 19)
      {
        return 24;
      }

      switch(v4.i64[0])
      {
        case 0xE00000013:
          return 22;
        case 0x1200000016:
          return 14;
        case 0x160000000ELL:
          return 15;
        case 0xE00000016:
          return 13;
        case 0x140000000ELL:
          return 19;
        case 0xE00000014:
          return 20;
        case 0x180000000ELL:
          return 33;
      }

      if (v4.i64[0] != 0xE00000018)
      {
        goto LABEL_126;
      }

      return 30;
    case 9:
      if (v3 != 13 || v5.i32[0] != 0)
      {
        goto LABEL_126;
      }

      if (v4.i32[0] == 14 && v4.i32[1] == 19)
      {
        return 28;
      }

      if (v4.i32[0] != 19 || v4.i32[1] != 14)
      {
        goto LABEL_126;
      }

      return 26;
    case 0xA:
      v22.i32[1] = HIDWORD(*&Atom[7]);
      v22.i32[0] = Atom[6].i32[1];
      v22.u64[1] = Atom[8];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v22, xmmword_25D70F4E0)))))
      {
        goto LABEL_126;
      }

      if (v4.i32[0] == 19)
      {
        v23 = 29;
      }

      else
      {
        v23 = 7;
      }

      v24 = v4.i32[0] == 14;
      v25 = 25;
      goto LABEL_95;
    case 0xB:
      if (v3 != 13 || v4.i32[0] != 19 || v4.i32[1] != 19 || v5.i32[1] != 0)
      {
        goto LABEL_126;
      }

      if (v5.i32[0] == 19)
      {
        v23 = 34;
      }

      else
      {
        v23 = 7;
      }

      v24 = v5.i32[0] == 14;
      v25 = 23;
LABEL_95:
      if (v24)
      {
        result = v25;
      }

      else
      {
        result = v23;
      }

      break;
    case 0xD:
      *v31.i8 = vdup_lane_s32(*v4.i8, 0);
      v31.u64[1] = vext_s8(*v4.i8, v5, 4uLL);
      v31.i32[0] = Atom[6].i32[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v31, xmmword_25D70F4C0)))) & 1) != 0 || v5.i32[1])
      {
        goto LABEL_126;
      }

      result = 21;
      break;
    case 0xE:
      if (v3 != 13)
      {
        goto LABEL_126;
      }

      v4.u64[1] = Atom[8];
      v29.i64[0] = 0x1300000013;
      v29.i64[1] = 0x1300000013;
      if ((vaddvq_s32(vbicq_s8(xmmword_25D70F4D0, vceqq_s32(v4, v29))) & 0xF) != 0 || Atom[9].i32[0] != 0)
      {
        goto LABEL_126;
      }

      result = 17;
      break;
    case 0xF:
      if (v3 != 19 || v4.i32[0] != 0)
      {
        goto LABEL_126;
      }

      result = 27;
      break;
    case 0x11:
      if (v3 != 17 || v4.i32[0] != 18 || v4.i32[1] != 0)
      {
        goto LABEL_126;
      }

      result = 11;
      break;
    case 0x12:
      *v14.i8 = vdup_lane_s32(*v4.i8, 0);
      v14.u64[1] = vext_s8(*v4.i8, v5, 4uLL);
      v14.i32[0] = Atom[6].i32[1];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v14, xmmword_25D70F4B0)))))
      {
        goto LABEL_126;
      }

      result = 35;
      break;
    default:
LABEL_126:
      result = 7;
      break;
  }

  return result;
}

id layoutMapForSlideMaster(PDSlideMaster *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [(PDSlideMaster *)v1 slideLayoutCount];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [(PDSlideMaster *)v1 slideLayoutAtIndex:i];
      v6 = [v5 slideLayoutType];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      [v2 setObject:v5 forKey:v7];
    }
  }

  return v2;
}

void sub_25D2BF4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_25D2BF72C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t EshShapeLib::isFillOn(EshShapeLib *this, uint64_t a2)
{
  ShapeType = getShapeType(this);
  if (ShapeType)
  {
    return (*ShapeType >> 2) & 1;
  }

  return a2;
}

void *getShapeType(int a1)
{
  switch(a1)
  {
    case 1:
      if ((atomic_load_explicit(&_MergedGlobals_57, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FCF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FCF8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_8;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v116)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FCF8;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 2:
      if ((atomic_load_explicit(&qword_27FC3FD00, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD08, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD10, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD18, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_12;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v144)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FD18;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 3:
      if ((atomic_load_explicit(&qword_27FC3FD20, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD28, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD30, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_15;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v141)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FD30;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 4:
      if ((atomic_load_explicit(&qword_27FC3FD38, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD40, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD48, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_18;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v124)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FD48;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 5:
      if ((atomic_load_explicit(&qword_27FC3FD50, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD58, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD60, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD68, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_22;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v72)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FD68;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 6:
      if ((atomic_load_explicit(&qword_27FC3FD70, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD78, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD80, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_25_0;
        v3 = &getShapeType(int)::theShapeType;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FD80;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 7:
      if ((atomic_load_explicit(&qword_27FC3FD88, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FD98, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDA0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_29;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v139)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FDA0;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 8:
      if ((atomic_load_explicit(&qword_27FC3FDA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDB0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDB8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDC0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_33;
        v3 = &getShapeType(int)::theShapeType;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FDC0;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 9:
      if ((atomic_load_explicit(&qword_27FC3FDC8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDD0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDD8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDE0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_37_0;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v147)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FDE0;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 10:
      if ((atomic_load_explicit(&qword_27FC3FDE8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FDF8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE00, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_41;
        v3 = &getShapeType(int)::theShapeType;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FE00;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 11:
      if ((atomic_load_explicit(&qword_27FC3FE08, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE10, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE18, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE20, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_45;
        v3 = &getShapeType(int)::theShapeType;
        getShapeType();
        if (v7)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FE20;
        goto LABEL_1773;
      }

      result = &getShapeType(int)::theShapeType;
      break;
    case 12:
      if ((atomic_load_explicit(&qword_27FC3FE28, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE30, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE38, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_48;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__10_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FE38;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__10_;
      break;
    case 13:
      if ((atomic_load_explicit(&qword_27FC3FE40, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE48, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE50, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE58, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_52_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__11_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FE58;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__11_;
      break;
    case 14:
      if ((atomic_load_explicit(&qword_27FC3FE60, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE68, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE70, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE78, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_56_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__12_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FE78;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__12_;
      break;
    case 15:
      if ((atomic_load_explicit(&qword_27FC3FE80, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE88, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FE98, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_60;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__13_;
        getShapeType();
        if (v148)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FE98;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__13_;
      break;
    case 16:
      if ((atomic_load_explicit(&qword_27FC3FEA0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FEA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FEB0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FEB8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_64;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__14_;
        getShapeType();
        if (v17)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FEB8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__14_;
      break;
    case 17:
      if ((atomic_load_explicit(&qword_27FC3FEC0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FEC8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FED0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FED8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_68;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__15_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FED8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__15_;
      break;
    case 18:
      if ((atomic_load_explicit(&qword_27FC3FEE0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FEE8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FEF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FEF8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_72;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__16_;
        getShapeType();
        if (v12)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FEF8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__16_;
      break;
    case 19:
      if ((atomic_load_explicit(&qword_27FC3FF00, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF08, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF10, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_75;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__17_;
        getShapeType();
        if (v20)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FF10;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__17_;
      break;
    case 20:
      if ((atomic_load_explicit(&qword_27FC3FF18, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF20, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_77;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__18_;
        getShapeType();
        if (v145)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FF20;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__18_;
      break;
    case 21:
      if ((atomic_load_explicit(&qword_27FC3FF28, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF30, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF38, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF40, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_81;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__19_;
        getShapeType();
        if (v10)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FF40;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__19_;
      break;
    case 22:
      if ((atomic_load_explicit(&qword_27FC3FF48, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF50, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF58, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF60, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_85_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__20_;
        getShapeType();
        if (v5)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FF60;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__20_;
      break;
    case 23:
      if ((atomic_load_explicit(&qword_27FC3FF68, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF70, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF78, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF80, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_89;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__21_;
        getShapeType();
        if (v13)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FF80;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__21_;
      break;
    case 24:
      if ((atomic_load_explicit(&qword_27FC3FF88, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FF98, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_92;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__22_;
        getShapeType();
        if (v146)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FF98;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__22_;
      break;
    case 25:
      if ((atomic_load_explicit(&qword_27FC3FFA0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFB0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_95;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__23_;
        getShapeType();
        if (v34)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FFB0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__23_;
      break;
    case 26:
      if ((atomic_load_explicit(&qword_27FC3FFB8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFC0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFC8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_98;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__24_;
        getShapeType();
        if (v56)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FFC8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__24_;
      break;
    case 27:
      if ((atomic_load_explicit(&qword_27FC3FFD0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFD8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFE0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_101;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__25_;
        getShapeType();
        if (v8)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FFE0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__25_;
      break;
    case 28:
      if ((atomic_load_explicit(&qword_27FC3FFE8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC3FFF8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_104;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__26_;
        getShapeType();
        if (v125)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC3FFF8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__26_;
      break;
    case 29:
      if ((atomic_load_explicit(&qword_27FC40000, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40008, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40010, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_107;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__27_;
        getShapeType();
        if (v102)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40010;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__27_;
      break;
    case 30:
      if ((atomic_load_explicit(&qword_27FC40018, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40020, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40028, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_110;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__28_;
        getShapeType();
        if (v142)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40028;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__28_;
      break;
    case 31:
      if ((atomic_load_explicit(&qword_27FC40030, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40038, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40040, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_113;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__29_;
        getShapeType();
        if (v100)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40040;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__29_;
      break;
    case 32:
      if ((atomic_load_explicit(&qword_27FC40048, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40050, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_115;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__30_;
        getShapeType();
        if (v38)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40050;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__30_;
      break;
    case 33:
      if ((atomic_load_explicit(&qword_27FC40058, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40060, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_117;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__31_;
        getShapeType();
        if (v18)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40060;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__31_;
      break;
    case 34:
      if ((atomic_load_explicit(&qword_27FC40068, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40070, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40078, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_120;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__32_;
        getShapeType();
        if (v29)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40078;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__32_;
      break;
    case 35:
      if ((atomic_load_explicit(&qword_27FC40080, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40088, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40090, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_123;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__33_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40090;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__33_;
      break;
    case 36:
      if ((atomic_load_explicit(&qword_27FC40098, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400A8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_126;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__34_;
        getShapeType();
        if (v6)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC400A8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__34_;
      break;
    case 37:
      if ((atomic_load_explicit(&qword_27FC400B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400B8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_128;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__35_;
        getShapeType();
        if (v151)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC400B8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__35_;
      break;
    case 38:
      if ((atomic_load_explicit(&qword_27FC400C0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400D0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_131;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__36_;
        getShapeType();
        if (v149)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC400D0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__36_;
      break;
    case 39:
      if ((atomic_load_explicit(&qword_27FC400D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400E8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_134;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__37_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC400E8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__37_;
      break;
    case 40:
      if ((atomic_load_explicit(&qword_27FC400F0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC400F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40100, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_137;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__38_;
        getShapeType();
        if (v143)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40100;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__38_;
      break;
    case 41:
      if ((atomic_load_explicit(&qword_27FC40108, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40110, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40118, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_140;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__39_;
        getShapeType();
        if (v37)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40118;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__39_;
      break;
    case 42:
      if ((atomic_load_explicit(&qword_27FC40120, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40128, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40130, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_143;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__40_;
        getShapeType();
        if (v21)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40130;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__40_;
      break;
    case 43:
      if ((atomic_load_explicit(&qword_27FC40138, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40140, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40148, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_146;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__41_;
        getShapeType();
        if (v25)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40148;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__41_;
      break;
    case 44:
      if ((atomic_load_explicit(&qword_27FC40150, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40158, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40160, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_149;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__42_;
        getShapeType();
        if (v150)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40160;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__42_;
      break;
    case 45:
      if ((atomic_load_explicit(&qword_27FC40168, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40170, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40178, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_152;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__43_;
        getShapeType();
        if (v11)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40178;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__43_;
      break;
    case 46:
      if ((atomic_load_explicit(&qword_27FC40180, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40188, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40190, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_155;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__44_;
        getShapeType();
        if (v26)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40190;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__44_;
      break;
    case 47:
      if ((atomic_load_explicit(&qword_27FC40198, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401A8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_158;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__45_;
        getShapeType();
        if (v28)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC401A8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__45_;
      break;
    case 48:
      if ((atomic_load_explicit(&qword_27FC401B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401C0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_161;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__46_;
        getShapeType();
        if (v133)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC401C0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__46_;
      break;
    case 49:
      if ((atomic_load_explicit(&qword_27FC401C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401D8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_164;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__47_;
        getShapeType();
        if (v75)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC401D8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__47_;
      break;
    case 50:
      if ((atomic_load_explicit(&qword_27FC401E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC401F0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_167;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__48_;
        getShapeType();
        if (v31)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC401F0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__48_;
      break;
    case 51:
      if ((atomic_load_explicit(&qword_27FC401F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40200, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40208, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_170;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__49_;
        getShapeType();
        if (v39)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40208;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__49_;
      break;
    case 52:
      if ((atomic_load_explicit(&qword_27FC40210, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40218, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40220, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_173;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__50_;
        getShapeType();
        if (v76)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40220;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__50_;
      break;
    case 53:
      if ((atomic_load_explicit(&qword_27FC40228, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40230, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40238, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40240, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_177;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__51_;
        getShapeType();
        if (v14)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40240;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__51_;
      break;
    case 54:
      if ((atomic_load_explicit(&qword_27FC40248, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40250, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40258, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40260, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_181;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__52_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40260;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__52_;
      break;
    case 55:
      if ((atomic_load_explicit(&qword_27FC40268, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40270, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40278, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40280, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_185;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__53_;
        getShapeType();
        if (v15)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40280;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__53_;
      break;
    case 56:
      if ((atomic_load_explicit(&qword_27FC40288, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40290, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40298, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_188;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__54_;
        getShapeType();
        if (v140)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40298;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__54_;
      break;
    case 57:
      if ((atomic_load_explicit(&qword_27FC402A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402B8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_192;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__55_;
        getShapeType();
        if (v121)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC402B8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__55_;
      break;
    case 58:
      if ((atomic_load_explicit(&qword_27FC402C0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402D8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_196;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__56_;
        getShapeType();
        if (v103)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC402D8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__56_;
      break;
    case 59:
      if ((atomic_load_explicit(&qword_27FC402E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402F0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC402F8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_200_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__57_;
        getShapeType();
        if (v40)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC402F8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__57_;
      break;
    case 60:
      if ((atomic_load_explicit(&qword_27FC40300, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40308, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40310, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40318, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_204;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__58_;
        getShapeType();
        if (v128)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40318;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__58_;
      break;
    case 61:
      if ((atomic_load_explicit(&qword_27FC40320, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40328, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40330, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_207;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__59_;
        getShapeType();
        if (v138)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40330;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__59_;
      break;
    case 62:
      if ((atomic_load_explicit(&qword_27FC40338, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40340, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40348, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40350, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_211;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__60_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40350;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__60_;
      break;
    case 63:
      if ((atomic_load_explicit(&qword_27FC40358, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40360, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40368, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40370, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_215_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__61_;
        getShapeType();
        if (v50)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40370;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__61_;
      break;
    case 64:
      if ((atomic_load_explicit(&qword_27FC40378, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40380, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40388, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40390, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_219;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__62_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40390;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__62_;
      break;
    case 65:
      if ((atomic_load_explicit(&qword_27FC40398, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403B0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_223;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__63_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC403B0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__63_;
      break;
    case 66:
      if ((atomic_load_explicit(&qword_27FC403B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403C0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403D0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_227;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__64_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC403D0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__64_;
      break;
    case 67:
      if ((atomic_load_explicit(&qword_27FC403D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC403F0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_231;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__65_;
        getShapeType();
        if (v53)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC403F0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__65_;
      break;
    case 68:
      if ((atomic_load_explicit(&qword_27FC403F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40400, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40408, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40410, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_235;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__66_;
        getShapeType();
        if (v135)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40410;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__66_;
      break;
    case 69:
      if ((atomic_load_explicit(&qword_27FC40418, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40420, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40428, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40430, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_239_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__67_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40430;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__67_;
      break;
    case 70:
      if ((atomic_load_explicit(&qword_27FC40438, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40440, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40448, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40450, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_243;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__68_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40450;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__68_;
      break;
    case 71:
      if ((atomic_load_explicit(&qword_27FC40458, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40460, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40468, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_246;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__69_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40468;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__69_;
      break;
    case 72:
      if ((atomic_load_explicit(&qword_27FC40470, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40478, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40480, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_249;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__70_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40480;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__70_;
      break;
    case 73:
      if ((atomic_load_explicit(&qword_27FC40488, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40490, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40498, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_252;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__71_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40498;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__71_;
      break;
    case 74:
      if ((atomic_load_explicit(&qword_27FC404A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404B0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_255;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__72_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC404B0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__72_;
      break;
    case 75:
      if ((atomic_load_explicit(&qword_27FC404B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404C0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_257;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__73_;
        getShapeType();
        if (v67)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC404C0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__73_;
      break;
    case 76:
      if ((atomic_load_explicit(&qword_27FC404C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404E0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_261;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__74_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC404E0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__74_;
      break;
    case 77:
      if ((atomic_load_explicit(&qword_27FC404E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404F0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC404F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40500, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_265_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__75_;
        getShapeType();
        if (v78)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40500;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__75_;
      break;
    case 78:
      if ((atomic_load_explicit(&qword_27FC40508, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40510, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40518, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40520, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_269;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__76_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40520;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__76_;
      break;
    case 79:
      if ((atomic_load_explicit(&qword_27FC40528, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40530, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40538, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40540, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_273;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__77_;
        getShapeType();
        if (v9)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40540;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__77_;
      break;
    case 80:
      if ((atomic_load_explicit(&qword_27FC40548, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40550, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40558, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40560, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_277;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__78_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40560;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__78_;
      break;
    case 81:
      if ((atomic_load_explicit(&qword_27FC40568, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40570, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40578, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40580, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_281;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__79_;
        getShapeType();
        if (v62)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40580;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__79_;
      break;
    case 82:
      if ((atomic_load_explicit(&qword_27FC40588, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40590, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40598, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405A0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_285;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__80_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC405A0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__80_;
      break;
    case 83:
      if ((atomic_load_explicit(&qword_27FC405A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405C0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_289;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__81_;
        getShapeType();
        if (v106)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC405C0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__81_;
      break;
    case 84:
      if ((atomic_load_explicit(&qword_27FC405C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405E0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_293_0;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__82_;
        getShapeType();
        if (v107)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC405E0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__82_;
      break;
    case 85:
      if ((atomic_load_explicit(&qword_27FC405E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405F0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC405F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40600, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_297;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__83_;
        getShapeType();
        if (v58)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40600;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__83_;
      break;
    case 86:
      if ((atomic_load_explicit(&qword_27FC40608, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40610, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40618, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40620, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_301;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__84_;
        getShapeType();
        if (v117)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40620;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__84_;
      break;
    case 87:
      if ((atomic_load_explicit(&qword_27FC40628, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40630, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40638, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40640, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_305;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__85_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40640;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__85_;
      break;
    case 88:
      if ((atomic_load_explicit(&qword_27FC40648, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40650, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40658, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40660, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_309;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__86_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40660;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__86_;
      break;
    case 89:
      if ((atomic_load_explicit(&qword_27FC40668, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40670, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40678, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40680, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_313;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__87_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40680;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__87_;
      break;
    case 90:
      if ((atomic_load_explicit(&qword_27FC40688, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40690, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40698, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406A0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_317;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__88_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC406A0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__88_;
      break;
    case 91:
      if ((atomic_load_explicit(&qword_27FC406A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406C0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_321;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__89_;
        getShapeType();
        if (v122)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC406C0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__89_;
      break;
    case 92:
      if ((atomic_load_explicit(&qword_27FC406C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406E0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_325;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__90_;
        getShapeType();
        if (v16)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC406E0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__90_;
      break;
    case 93:
      if ((atomic_load_explicit(&qword_27FC406E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406F0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC406F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40700, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_329;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__91_;
        getShapeType();
        if (v22)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40700;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__91_;
      break;
    case 94:
      if ((atomic_load_explicit(&qword_27FC40708, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40710, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40718, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40720, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_333;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__92_;
        getShapeType();
        if (v41)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40720;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__92_;
      break;
    case 95:
      if ((atomic_load_explicit(&qword_27FC40728, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40730, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40738, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40740, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_337;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__93_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40740;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__93_;
      break;
    case 96:
      if ((atomic_load_explicit(&qword_27FC40748, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40750, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40758, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40760, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_341;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__94_;
        getShapeType();
        if (v24)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40760;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__94_;
      break;
    case 97:
      if ((atomic_load_explicit(&qword_27FC40768, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40770, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40778, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40780, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_345;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__95_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40780;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__95_;
      break;
    case 98:
      if ((atomic_load_explicit(&qword_27FC40788, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40790, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40798, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407A0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_349;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__96_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC407A0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__96_;
      break;
    case 99:
      if ((atomic_load_explicit(&qword_27FC407A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407C0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_353;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__97_;
        getShapeType();
        if (v130)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC407C0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__97_;
      break;
    case 100:
      if ((atomic_load_explicit(&qword_27FC407C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407E0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_357;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__98_;
        getShapeType();
        if (v36)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC407E0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__98_;
      break;
    case 101:
      if ((atomic_load_explicit(&qword_27FC407E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407F0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC407F8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_360;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__99_;
        getShapeType();
        if (v132)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC407F8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__99_;
      break;
    case 102:
      if ((atomic_load_explicit(&qword_27FC40800, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40808, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40810, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40818, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_364;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__100_;
        getShapeType();
        if (v134)
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40818;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__100_;
      break;
    case 103:
      if ((atomic_load_explicit(&qword_27FC40820, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40828, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40830, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40838, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_368;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__101_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40838;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__101_;
      break;
    case 104:
      if ((atomic_load_explicit(&qword_27FC40840, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40848, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40850, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40858, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_372;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__102_;
        if (getShapeType())
        {
          goto LABEL_1770;
        }

        v4 = &qword_27FC40858;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__102_;
      break;
    case 105:
      if ((atomic_load_explicit(&qword_27FC40860, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40868, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40870, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if (atomic_load_explicit(&qword_27FC40878, memory_order_acquire))
      {
        result = &_ZZL12getShapeTypeiE12theShapeType__103_;
      }

      else
      {
        v2 = __cxx_global_array_dtor_376;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__103_;
        if ((getShapeType() & 1) == 0)
        {
          v4 = &qword_27FC40878;
          goto LABEL_1773;
        }

LABEL_1770:
        result = v3;
      }

      break;
    case 106:
      if ((atomic_load_explicit(&qword_27FC40880, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40888, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40890, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40898, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_380;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__104_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40898;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__104_;
      break;
    case 107:
      if ((atomic_load_explicit(&qword_27FC408A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408B8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_384;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__105_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC408B8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__105_;
      break;
    case 108:
      if ((atomic_load_explicit(&qword_27FC408C0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408D8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_388;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__106_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC408D8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__106_;
      break;
    case 109:
      if ((atomic_load_explicit(&qword_27FC408E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408E8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_390;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__107_;
        getShapeType();
        if (v32)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC408E8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__107_;
      break;
    case 110:
      if ((atomic_load_explicit(&qword_27FC408F0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC408F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40900, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_393;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__108_;
        getShapeType();
        if (v84)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40900;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__108_;
      break;
    case 111:
      if ((atomic_load_explicit(&qword_27FC40908, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40910, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40918, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_396;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__109_;
        getShapeType();
        if (v23)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40918;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__109_;
      break;
    case 112:
      if ((atomic_load_explicit(&qword_27FC40920, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40928, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40930, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_399;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__110_;
        getShapeType();
        if (v136)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40930;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__110_;
      break;
    case 113:
      if ((atomic_load_explicit(&qword_27FC40938, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40940, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40948, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_402;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__111_;
        getShapeType();
        if (v137)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40948;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__111_;
      break;
    case 114:
      if ((atomic_load_explicit(&qword_27FC40950, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40958, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40960, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_405;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__112_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40960;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__112_;
      break;
    case 115:
      if ((atomic_load_explicit(&qword_27FC40968, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40970, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40978, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_408;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__113_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40978;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__113_;
      break;
    case 116:
      if ((atomic_load_explicit(&qword_27FC40980, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40988, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40990, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_411;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__114_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40990;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__114_;
      break;
    case 117:
      if ((atomic_load_explicit(&qword_27FC40998, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409A8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_414;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__115_;
        getShapeType();
        if (v104)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC409A8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__115_;
      break;
    case 118:
      if ((atomic_load_explicit(&qword_27FC409B0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409C0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_417;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__116_;
        getShapeType();
        if (v19)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC409C0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__116_;
      break;
    case 119:
      if ((atomic_load_explicit(&qword_27FC409C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409D0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409D8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_420;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__117_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC409D8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__117_;
      break;
    case 120:
      if ((atomic_load_explicit(&qword_27FC409E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC409F0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_423;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__118_;
        getShapeType();
        if (v60)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC409F0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__118_;
      break;
    case 121:
      if ((atomic_load_explicit(&qword_27FC409F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A00, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A08, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_426;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__119_;
        getShapeType();
        if (v63)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40A08;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__119_;
      break;
    case 122:
      if ((atomic_load_explicit(&qword_27FC40A10, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A18, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A20, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_429;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__120_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40A20;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__120_;
      break;
    case 123:
      if ((atomic_load_explicit(&qword_27FC40A28, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A30, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A38, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_432;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__121_;
        getShapeType();
        if (v27)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40A38;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__121_;
      break;
    case 124:
      if ((atomic_load_explicit(&qword_27FC40A40, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A48, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A50, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_435;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__122_;
        getShapeType();
        if (v131)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40A50;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__122_;
      break;
    case 125:
      if ((atomic_load_explicit(&qword_27FC40A58, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A60, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A68, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_438;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__123_;
        getShapeType();
        if (v30)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40A68;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__123_;
      break;
    case 126:
      if ((atomic_load_explicit(&qword_27FC40A70, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A78, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A80, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_441;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__124_;
        getShapeType();
        if (v88)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40A80;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__124_;
      break;
    case 127:
      if ((atomic_load_explicit(&qword_27FC40A88, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40A98, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_444;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__125_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40A98;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__125_;
      break;
    case 128:
      if ((atomic_load_explicit(&qword_27FC40AA0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AB0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_447;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__126_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40AB0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__126_;
      break;
    case 129:
      if ((atomic_load_explicit(&qword_27FC40AB8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AC0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AC8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_450;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__127_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40AC8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__127_;
      break;
    case 130:
      if ((atomic_load_explicit(&qword_27FC40AD0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AD8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AE0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_453;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__128_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40AE0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__128_;
      break;
    case 131:
      if ((atomic_load_explicit(&qword_27FC40AE8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40AF8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_456;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__129_;
        getShapeType();
        if (v43)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40AF8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__129_;
      break;
    case 132:
      if ((atomic_load_explicit(&qword_27FC40B00, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B08, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B10, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_459;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__130_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40B10;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__130_;
      break;
    case 133:
      if ((atomic_load_explicit(&qword_27FC40B18, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B20, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B28, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_462;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__131_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40B28;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__131_;
      break;
    case 134:
      if ((atomic_load_explicit(&qword_27FC40B30, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B38, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B40, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_465;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__132_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40B40;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__132_;
      break;
    case 135:
      if ((atomic_load_explicit(&qword_27FC40B48, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B50, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B58, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_468;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__133_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40B58;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__133_;
      break;
    case 136:
      if ((atomic_load_explicit(&qword_27FC40B60, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B68, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B70, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_471;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__134_;
        getShapeType();
        if (v42)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40B70;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__134_;
      break;
    case 137:
      if ((atomic_load_explicit(&qword_27FC40B78, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B80, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B88, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_474;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__135_;
        getShapeType();
        if (v91)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40B88;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__135_;
      break;
    case 138:
      if ((atomic_load_explicit(&qword_27FC40B90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40B98, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BA0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_477;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__136_;
        getShapeType();
        if (v69)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40BA0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__136_;
      break;
    case 139:
      if ((atomic_load_explicit(&qword_27FC40BA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BB0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BB8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_480;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__137_;
        getShapeType();
        if (v79)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40BB8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__137_;
      break;
    case 140:
      if ((atomic_load_explicit(&qword_27FC40BC0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BC8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BD0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_483;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__138_;
        getShapeType();
        if (v92)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40BD0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__138_;
      break;
    case 141:
      if ((atomic_load_explicit(&qword_27FC40BD8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BE0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BE8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_486;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__139_;
        getShapeType();
        if (v89)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40BE8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__139_;
      break;
    case 142:
      if ((atomic_load_explicit(&qword_27FC40BF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40BF8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C00, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_489;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__140_;
        getShapeType();
        if (v68)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40C00;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__140_;
      break;
    case 143:
      if ((atomic_load_explicit(&qword_27FC40C08, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C10, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C18, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_492;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__141_;
        getShapeType();
        if (v112)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40C18;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__141_;
      break;
    case 144:
      if ((atomic_load_explicit(&qword_27FC40C20, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C28, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C30, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_495;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__142_;
        getShapeType();
        if (v59)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40C30;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__142_;
      break;
    case 145:
      if ((atomic_load_explicit(&qword_27FC40C38, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C40, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C48, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_498;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__143_;
        getShapeType();
        if (v110)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40C48;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__143_;
      break;
    case 146:
      if ((atomic_load_explicit(&qword_27FC40C50, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C58, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C60, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_501;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__144_;
        getShapeType();
        if (v47)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40C60;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__144_;
      break;
    case 147:
      if ((atomic_load_explicit(&qword_27FC40C68, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C70, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C78, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_504;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__145_;
        getShapeType();
        if (v123)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40C78;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__145_;
      break;
    case 148:
      if ((atomic_load_explicit(&qword_27FC40C80, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C88, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40C90, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_507;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__146_;
        getShapeType();
        if (v120)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40C90;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__146_;
      break;
    case 149:
      if ((atomic_load_explicit(&qword_27FC40C98, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CA0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CA8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_510;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__147_;
        getShapeType();
        if (v45)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40CA8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__147_;
      break;
    case 150:
      if ((atomic_load_explicit(&qword_27FC40CB0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CB8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CC0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_513;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__148_;
        getShapeType();
        if (v126)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40CC0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__148_;
      break;
    case 151:
      if ((atomic_load_explicit(&qword_27FC40CC8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CD0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CD8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_516;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__149_;
        getShapeType();
        if (v129)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40CD8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__149_;
      break;
    case 152:
      if ((atomic_load_explicit(&_MergedGlobals_697, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CE8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40CF0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_519;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__150_;
        getShapeType();
        if (v33)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40CF0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__150_;
      break;
    case 153:
      if ((atomic_load_explicit(&qword_27FC40CF8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D00, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D08, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_522;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__151_;
        getShapeType();
        if (v64)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40D08;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__151_;
      break;
    case 154:
      if ((atomic_load_explicit(&qword_27FC40D10, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D18, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D20, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_525;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__152_;
        getShapeType();
        if (v57)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40D20;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__152_;
      break;
    case 155:
      if ((atomic_load_explicit(&qword_27FC40D28, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D30, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D38, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_528;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__153_;
        getShapeType();
        if (v46)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40D38;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__153_;
      break;
    case 156:
      if ((atomic_load_explicit(&qword_27FC40D40, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D48, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D50, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_531;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__154_;
        getShapeType();
        if (v127)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40D50;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__154_;
      break;
    case 157:
      if ((atomic_load_explicit(&qword_27FC40D58, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D60, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D68, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_534;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__155_;
        getShapeType();
        if (v101)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40D68;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__155_;
      break;
    case 158:
      if ((atomic_load_explicit(&qword_27FC40D70, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D78, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D80, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_537;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__156_;
        getShapeType();
        if (v54)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40D80;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__156_;
      break;
    case 159:
      if ((atomic_load_explicit(&qword_27FC40D88, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40D98, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_540;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__157_;
        getShapeType();
        if (v35)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40D98;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__157_;
      break;
    case 160:
      if ((atomic_load_explicit(&qword_27FC40DA0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DB0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_543;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__158_;
        getShapeType();
        if (v111)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40DB0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__158_;
      break;
    case 161:
      if ((atomic_load_explicit(&qword_27FC40DB8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DC0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DC8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_546;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__159_;
        getShapeType();
        if (v87)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40DC8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__159_;
      break;
    case 162:
      if ((atomic_load_explicit(&qword_27FC40DD0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DD8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DE0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_549;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__160_;
        getShapeType();
        if (v66)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40DE0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__160_;
      break;
    case 163:
      if ((atomic_load_explicit(&qword_27FC40DE8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40DF8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_552;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__161_;
        getShapeType();
        if (v108)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40DF8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__161_;
      break;
    case 164:
      if ((atomic_load_explicit(&qword_27FC40E00, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E08, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E10, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_555;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__162_;
        getShapeType();
        if (v118)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40E10;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__162_;
      break;
    case 165:
      if ((atomic_load_explicit(&qword_27FC40E18, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E20, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E28, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_558;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__163_;
        getShapeType();
        if (v44)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40E28;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__163_;
      break;
    case 166:
      if ((atomic_load_explicit(&qword_27FC40E30, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E38, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E40, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_561;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__164_;
        getShapeType();
        if (v49)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40E40;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__164_;
      break;
    case 167:
      if ((atomic_load_explicit(&qword_27FC40E48, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E50, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E58, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_564;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__165_;
        getShapeType();
        if (v48)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40E58;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__165_;
      break;
    case 168:
      if ((atomic_load_explicit(&qword_27FC40E60, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E68, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E70, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_567;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__166_;
        getShapeType();
        if (v52)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40E70;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__166_;
      break;
    case 169:
      if ((atomic_load_explicit(&qword_27FC40E78, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E80, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E88, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_570;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__167_;
        getShapeType();
        if (v55)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40E88;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__167_;
      break;
    case 170:
      if ((atomic_load_explicit(&qword_27FC40E90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40E98, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40EA0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_573;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__168_;
        getShapeType();
        if (v99)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40EA0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__168_;
      break;
    case 171:
      if ((atomic_load_explicit(&qword_27FC40EA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40EB0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40EB8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_576;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__169_;
        getShapeType();
        if (v85)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40EB8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__169_;
      break;
    case 172:
      if ((atomic_load_explicit(&qword_27FC40EC0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40EC8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40ED0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_579;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__170_;
        getShapeType();
        if (v98)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40ED0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__170_;
      break;
    case 173:
      if ((atomic_load_explicit(&qword_27FC40ED8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40EE0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40EE8, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_582;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__171_;
        getShapeType();
        if (v115)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40EE8;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__171_;
      break;
    case 174:
      if ((atomic_load_explicit(&qword_27FC40EF0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40EF8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F00, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_585;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__172_;
        getShapeType();
        if (v114)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40F00;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__172_;
      break;
    case 175:
      if ((atomic_load_explicit(&qword_27FC40F08, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F10, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F18, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_588;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__173_;
        getShapeType();
        if (v51)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40F18;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__173_;
      break;
    case 176:
      if ((atomic_load_explicit(&qword_27FC40F20, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F28, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F30, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F38, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_592;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__174_;
        getShapeType();
        if (v119)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40F38;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__174_;
      break;
    case 177:
      if ((atomic_load_explicit(&qword_27FC40F40, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F48, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F50, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_595;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__175_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40F50;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__175_;
      break;
    case 178:
      if ((atomic_load_explicit(&qword_27FC40F58, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F60, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F68, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_598;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__176_;
        getShapeType();
        if (v73)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40F68;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__176_;
      break;
    case 179:
      if ((atomic_load_explicit(&qword_27FC40F70, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F78, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F80, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_601;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__177_;
        getShapeType();
        if (v113)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40F80;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__177_;
      break;
    case 180:
      if ((atomic_load_explicit(&qword_27FC40F88, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F90, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40F98, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_604;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__178_;
        getShapeType();
        if (v105)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40F98;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__178_;
      break;
    case 181:
      if ((atomic_load_explicit(&qword_27FC40FA0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FA8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FB0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_607;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__179_;
        getShapeType();
        if (v93)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40FB0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__179_;
      break;
    case 182:
      if ((atomic_load_explicit(&qword_27FC40FB8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FC0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FC8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FD0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_611;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__180_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40FD0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__180_;
      break;
    case 183:
      if ((atomic_load_explicit(&qword_27FC40FD8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FE0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FE8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC40FF0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_615;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__181_;
        getShapeType();
        if (v109)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC40FF0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__181_;
      break;
    case 184:
      if ((atomic_load_explicit(&qword_27FC40FF8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41000, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41008, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41010, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_619;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__182_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41010;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__182_;
      break;
    case 185:
      if ((atomic_load_explicit(&qword_27FC41018, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41020, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41028, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41030, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_623;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__183_;
        getShapeType();
        if (v86)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41030;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__183_;
      break;
    case 186:
      if ((atomic_load_explicit(&qword_27FC41038, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41040, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41048, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41050, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_627;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__184_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41050;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__184_;
      break;
    case 187:
      if ((atomic_load_explicit(&qword_27FC41058, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41060, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41068, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41070, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_631;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__185_;
        getShapeType();
        if (v77)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41070;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__185_;
      break;
    case 188:
      if ((atomic_load_explicit(&qword_27FC41078, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41080, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41088, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41090, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_635;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__186_;
        if (getShapeType())
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41090;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__186_;
      break;
    case 189:
      if ((atomic_load_explicit(&qword_27FC41098, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410B0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_639;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__187_;
        getShapeType();
        if (v94)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC410B0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__187_;
      break;
    case 190:
      if ((atomic_load_explicit(&qword_27FC410B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410C0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410D0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_643;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__188_;
        getShapeType();
        if (v70)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC410D0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__188_;
      break;
    case 191:
      if ((atomic_load_explicit(&qword_27FC410D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC410F0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_647;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__189_;
        getShapeType();
        if (v61)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC410F0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__189_;
      break;
    case 192:
      if ((atomic_load_explicit(&qword_27FC410F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41100, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41108, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41110, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_651;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__190_;
        getShapeType();
        if (v96)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41110;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__190_;
      break;
    case 193:
      if ((atomic_load_explicit(&qword_27FC41118, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41120, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41128, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41130, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_655;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__191_;
        getShapeType();
        if (v71)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41130;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__191_;
      break;
    case 194:
      if ((atomic_load_explicit(&qword_27FC41138, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41140, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41148, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41150, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_659;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__192_;
        getShapeType();
        if (v97)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41150;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__192_;
      break;
    case 195:
      if ((atomic_load_explicit(&qword_27FC41158, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41160, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41168, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41170, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_663;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__193_;
        getShapeType();
        if (v81)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41170;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__193_;
      break;
    case 196:
      if ((atomic_load_explicit(&qword_27FC41178, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41180, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41188, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41190, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_667;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__194_;
        getShapeType();
        if (v95)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41190;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__194_;
      break;
    case 197:
      if ((atomic_load_explicit(&qword_27FC41198, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411A0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411A8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411B0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_671;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__195_;
        getShapeType();
        if (v90)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC411B0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__195_;
      break;
    case 198:
      if ((atomic_load_explicit(&qword_27FC411B8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411C0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411C8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411D0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_675;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__196_;
        getShapeType();
        if (v65)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC411D0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__196_;
      break;
    case 199:
      if ((atomic_load_explicit(&qword_27FC411D8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411E0, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411E8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC411F0, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_679;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__197_;
        getShapeType();
        if (v80)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC411F0;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__197_;
      break;
    case 200:
      if ((atomic_load_explicit(&qword_27FC411F8, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41200, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41208, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41210, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_683;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__198_;
        getShapeType();
        if (v74)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41210;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__198_;
      break;
    case 201:
      if ((atomic_load_explicit(&qword_27FC41218, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if ((atomic_load_explicit(&qword_27FC41220, memory_order_acquire) & 1) == 0)
      {
        v2 = __cxx_global_array_dtor_685;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__199_;
        getShapeType();
        if (v82)
        {
          goto LABEL_1726;
        }

        v4 = &qword_27FC41220;
        goto LABEL_1773;
      }

      result = &_ZZL12getShapeTypeiE12theShapeType__199_;
      break;
    case 202:
      if ((atomic_load_explicit(&qword_27FC41228, memory_order_acquire) & 1) == 0)
      {
        getShapeType();
      }

      if (atomic_load_explicit(&qword_27FC41230, memory_order_acquire))
      {
        result = &_ZZL12getShapeTypeiE12theShapeType__200_;
      }

      else
      {
        v2 = __cxx_global_array_dtor_687;
        v3 = &_ZZL12getShapeTypeiE12theShapeType__200_;
        getShapeType();
        if (v83)
        {
LABEL_1726:
          result = v3;
        }

        else
        {
          v4 = &qword_27FC41230;
LABEL_1773:
          __cxa_atexit(v2, 0, &dword_25D297000);
          __cxa_guard_release(v4);
          result = v3;
        }
      }

      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t EshShapeLib::isStrokeOn(EshShapeLib *this, uint64_t a2)
{
  ShapeType = getShapeType(this);
  if (ShapeType)
  {
    return (*ShapeType >> 3) & 1;
  }

  return a2;
}

void EshContainer::addChild(EshContainer *this, EshObject *a2)
{
  if (EshObject::isEscher(a2))
  {
    operator new();
  }

  operator new();
}

void PptEshClientTextBox::~PptEshClientTextBox(PptEshClientTextBox *this)
{
  EshContainer::~EshContainer(this);

  JUMPOUT(0x25F897000);
}

void sub_25D2C76DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CMDrawingContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

EshColor *EshColor::black(EshColor *this, EshColor *a2)
{
  *(&this->var0.var0 + 3) = 0;
  this->var0.var0 = 0;
  return this;
}

void sub_25D2C7C40(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

unint64_t OCNsEncodingForOcEncoding(UInt32 a1)
{
  switch(a1)
  {
    case 0u:
      return 0;
    case 0xFDE9u:
      return 4;
    case 1u:
      return 10;
  }

  v2 = CFStringConvertWindowsCodepageToEncoding(a1);
  if (v2 == -1)
  {
    return 10;
  }

  return CFStringConvertEncodingToNSStringEncoding(v2);
}

void sub_25D2C865C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PBPresentationReaderState;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void PptContainer::~PptContainer(PptContainer *this)
{
  EshContainer::~EshContainer(this);

  JUMPOUT(0x25F897000);
}

void PptEshClientData::~PptEshClientData(PptEshClientData *this)
{
  EshContainer::~EshContainer(this);

  JUMPOUT(0x25F897000);
}

void PptEshShape::~PptEshShape(PptEshShape *this)
{
  PptEshClientContainer::~PptEshClientContainer((this + 576));
  EshContentBase::~EshContentBase(this);

  JUMPOUT(0x25F897000);
}

{
  PptEshClientContainer::~PptEshClientContainer((this + 576));

  EshContentBase::~EshContentBase(this);
}

void PptEshClientContainer::~PptEshClientContainer(PptEshClientContainer *this)
{
  *this = &unk_286ED8D98;
  PptEshClientContainer::removeChildren(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  PptEshClientContainer::~PptEshClientContainer(this);

  JUMPOUT(0x25F897000);
}

uint64_t PptEshClientContainer::removeChildren(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = *(this + 16);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C408B6DE1C6);
        v2 = *(v1 + 8);
        v3 = *(v1 + 16);
      }

      if (v4 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(v2 + 8 * v4++) = 0;
      v2 = *(v1 + 8);
      v3 = *(v1 + 16);
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 16) = v2;
  return this;
}

void EshContentBase::~EshContentBase(EshContentBase *this)
{
  *this = &unk_286EC6F70;
  EshContentData::~EshContentData((this + 16));
}

{
  *this = &unk_286EC6F70;
  EshContentData::~EshContentData((this + 16));
}

{
  *this = &unk_286EC6F70;
  EshContentData::~EshContentData((this + 16));

  JUMPOUT(0x25F897000);
}

void EshContentData::~EshContentData(EshContentData *this)
{
  EshOpt::~EshOpt((this + 128));
  EshOpt::~EshOpt((this + 64));

  EshOpt::~EshOpt(this);
}

void EshOpt::~EshOpt(EshOpt *this)
{
  *this = &unk_286EC6330;
  EshOpt::destroy(this);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 32, *(this + 5));
}

{
  EshOpt::~EshOpt(this);

  JUMPOUT(0x25F897000);
}

void EshOpt::destroy(EshOpt *this)
{
  v3 = this + 32;
  v2 = *(this + 4);
  v4 = this + 40;
  if (v2 != this + 40)
  {
    do
    {
      v5 = *(v2 + 1);
      v6 = v2;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = *(v6 + 2);
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      EshOpt::deleteComplexPropertyValue(this, *(v2 + 8));
      v2 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(v3, *(this + 5));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = v4;
}

uint64_t *EshOpt::deleteComplexPropertyValue(uint64_t *result, int a2)
{
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 63;
  }

  v5 = a2 - (v4 & 0xFFFFFFC0);
  if (v5 > 47)
  {
    return result;
  }

  v20 = v2;
  v21 = v3;
  v7 = result;
  v8 = v4 >> 6;
  if (v8 > 25)
  {
    goto LABEL_21;
  }

  v9 = &EshOpt::getPropertyType(EshOpt::PID)::blocks + 2 * v8;
  if (v5 >= *(v9 + 4))
  {
    goto LABEL_21;
  }

  v10 = *(*v9 + v5);
  if (v10 > 8)
  {
    switch(v10)
    {
      case 11:
        v18 = a2;
        v19 = &v18;
        v16 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((result + 4), &v18)[5];
        if (v16)
        {
          CsData::~CsData(v16);
          MEMORY[0x25F897000]();
        }

        goto LABEL_32;
      case 10:
        v18 = a2;
        v19 = &v18;
        v11 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((result + 4), &v18)[5];
        if (!v11)
        {
LABEL_32:
          v18 = a2;
          v19 = &v18;
LABEL_26:
          result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 4), &v18);
          result[5] = 0;
          return result;
        }

        break;
      case 9:
        v18 = a2;
        v19 = &v18;
        v11 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((result + 4), &v18)[5];
        if (!v11)
        {
          goto LABEL_32;
        }

        break;
      default:
        return result;
    }

    (*(*v11 + 8))(v11);
    goto LABEL_32;
  }

  if (!v10)
  {
LABEL_21:
    v18 = a2;
    v19 = &v18;
    v14 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((result + 4), &v18)[5];
    if (v14)
    {
      *(v14 + 8) = &unk_286EC63D8;
      v15 = *(v14 + 16);
      if (v15)
      {
        MEMORY[0x25F896FE0](v15, 0x1000C8077774924);
      }

      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      MEMORY[0x25F897000](v14, 0x1090C40DF1FC404);
    }

    v18 = a2;
    v19 = &v18;
    goto LABEL_26;
  }

  if (v10 != 8)
  {
    return result;
  }

  v12 = result[5];
  if (!v12)
  {
    return result;
  }

  while (1)
  {
    v13 = *(v12 + 32);
    if (v13 <= a2)
    {
      break;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      return result;
    }
  }

  if (v13 < a2)
  {
    v12 += 8;
    goto LABEL_19;
  }

  v18 = a2;
  v19 = &v18;
  result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((result + 4), &v18);
  if ((result[5] & 1) == 0)
  {
    v18 = a2;
    v19 = &v18;
    v17 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 4), &v18)[6];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = a2;
    v19 = &v18;
    result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 4), &v18);
    *(result + 40) = 0;
    result[6] = 0;
  }

  return result;
}

void PptEshBackground::~PptEshBackground(PptEshBackground *this)
{
  PptEshClientContainer::~PptEshClientContainer((this + 328));
  EshContentBase::~EshContentBase(this);

  JUMPOUT(0x25F897000);
}

{
  PptEshClientContainer::~PptEshClientContainer((this + 328));

  EshContentBase::~EshContentBase(this);
}

void PptCString::~PptCString(CsString *this)
{
  this->var0 = &unk_286ED8488;
  this[1].var1 = &unk_286ED8530;
  CsString::~CsString(this + 2);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED8488;
  this[1].var1 = &unk_286ED8530;
  CsString::~CsString(this + 2);
}

void PptSlideTime10Atom::~PptSlideTime10Atom(PptSlideTime10Atom *this)
{
  *this = &unk_286EE0A48;
  *(this + 4) = &unk_286EE0AF0;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0A48;
  *(this + 4) = &unk_286EE0AF0;
}

void PptAnimVariantAtom::~PptAnimVariantAtom(PptAnimVariantAtom *this)
{
  *this = &unk_286EDFFA0;
  *(this + 4) = &unk_286EE0048;
  CsString::~CsString((this + 64));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDFFA0;
  *(this + 4) = &unk_286EE0048;
  CsString::~CsString((this + 64));
}

void PptTextRulerAtom::~PptTextRulerAtom(PptTextRulerAtom *this)
{
  *this = &unk_286EDD038;
  *(this + 4) = &unk_286EDD0E0;
  PptTextGenericRulerAtom::clearTabs(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDD038;
  *(this + 4) = &unk_286EDD0E0;
  PptTextGenericRulerAtom::clearTabs(this);
}

uint64_t PptTextGenericRulerAtom::clearTabs(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    this = MEMORY[0x25F897000](v2, 0x20C40960023A9);
  }

  *(v1 + 48) = 0;
  return this;
}

void PptTextMasterStyleAtom::~PptTextMasterStyleAtom(PptTextMasterStyleAtom *this)
{
  PptTextMasterStyleAtom::~PptTextMasterStyleAtom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDD518;
  *(this + 4) = &unk_286EDD5C0;
  PptTextMasterStyleAtom::reset(this);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

PptTextMasterStyleAtom *PptTextMasterStyleAtom::reset(PptTextMasterStyleAtom *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (((*(this + 14) - v2) >> 3))
  {
    v3 = 0;
    v4 = 8 * ((*(this + 14) - v2) >> 3);
    do
    {
      v5 = *(v1 + 6);
      this = *(v5 + v3);
      if (this)
      {
        PptParaProperty::~PptParaProperty(this);
        this = MEMORY[0x25F897000]();
        v5 = *(v1 + 6);
      }

      *(v5 + v3) = 0;
      *(*(v1 + 6) + v3) = 0;
      v3 += 8;
    }

    while (v4 != v3);
    v2 = *(v1 + 6);
  }

  *(v1 + 7) = v2;
  return this;
}

void PptTextBytesAtom::~PptTextBytesAtom(PptTextBytesAtom *this)
{
  PptTextBytesAtom::~PptTextBytesAtom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDCC50;
  *(this + 4) = &unk_286EDCD00;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 6) = 0;
}

void PptBaseTextPropertyAtom::~PptBaseTextPropertyAtom(PptBaseTextPropertyAtom *this)
{
  PptTextBlockStylingAtom::~PptTextBlockStylingAtom(this);

  JUMPOUT(0x25F897000);
}

void PptTextBlockStylingAtom::~PptTextBlockStylingAtom(PptTextBlockStylingAtom *this)
{
  *this = &unk_286EDCA60;
  *(this + 4) = &unk_286EDCB08;
  PptTextBlockStylingAtom::reset(this);
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }
}

{
  PptTextBlockStylingAtom::~PptTextBlockStylingAtom(this);

  JUMPOUT(0x25F897000);
}

uint64_t PptTextBlockStylingAtom::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (((*(this + 56) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      if (v4)
      {
        PptParaProperty::~PptParaProperty((v4 + 8));
        this = MEMORY[0x25F897000](v4, 0x1020C405935C4BCLL);
        v2 = *(v1 + 48);
      }

      *(v2 + 8 * v3++) = 0;
      v2 = *(v1 + 48);
    }

    while (v3 < ((*(v1 + 56) - v2) >> 3));
  }

  *(v1 + 56) = v2;
  v5 = *(v1 + 72);
  if (((*(v1 + 80) - v5) & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    do
    {
      this = *(v5 + 8 * v6);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C40E65D7F0ALL);
        v5 = *(v1 + 72);
      }

      *(v5 + 8 * v6++) = 0;
      v5 = *(v1 + 72);
    }

    while (v6 < ((*(v1 + 80) - v5) >> 3));
  }

  *(v1 + 80) = v5;
  *(v1 + 96) = 0;
  return this;
}

void PptTextBlockSpecialInfoAtom::~PptTextBlockSpecialInfoAtom(PptTextBlockSpecialInfoAtom *this)
{
  PptTextBlockSpecialInfoAtom::~PptTextBlockSpecialInfoAtom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDD130;
  *(this + 4) = &unk_286EDD1D8;
  PptTextBlockSpecialInfoAtom::reset(this);
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

uint64_t PptTextBlockSpecialInfoAtom::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 48);
  if (((*(this + 56) - v2) >> 3))
  {
    v3 = 0;
    v4 = 8 * ((*(this + 56) - v2) >> 3);
    do
    {
      v5 = *(v1 + 48);
      v6 = *(v5 + v3);
      if (v6)
      {
        PptSpecialInfo11::~PptSpecialInfo11((v6 + 24));
        this = MEMORY[0x25F897000](v6, 0x1020C4089842113);
        v5 = *(v1 + 48);
      }

      *(v5 + v3) = 0;
      *(*(v1 + 48) + v3) = 0;
      v3 += 8;
    }

    while (v4 != v3);
    v2 = *(v1 + 48);
  }

  *(v1 + 56) = v2;
  return this;
}

uint64_t PptSpecialInfo11::reset(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    this = MEMORY[0x25F897000](v2, 0x10C402FEFCB83);
  }

  *(v1 + 8) = 0;
  *v1 = 0;
  return this;
}

void PptTextCharsAtom::~PptTextCharsAtom(CsString *this)
{
  this->var0 = &unk_286EDCD50;
  this[1].var1 = &unk_286EDCDF8;
  CsString::~CsString(this + 2);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EDCD50;
  this[1].var1 = &unk_286EDCDF8;
  CsString::~CsString(this + 2);
}

void PptFontEntityAtom::~PptFontEntityAtom(CsString *this)
{
  this->var0 = &unk_286EDA248;
  this[1].var1 = &unk_286EDA2F0;
  CsString::~CsString(this + 2);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EDA248;
  this[1].var1 = &unk_286EDA2F0;
  CsString::~CsString(this + 2);
}

void PptTextDefaultParagraphStyleAtom::~PptTextDefaultParagraphStyleAtom(PptTextDefaultParagraphStyleAtom *this)
{
  *this = &unk_286EDD610;
  *(this + 4) = &unk_286EDD6B8;
  PptParaProperty::~PptParaProperty((this + 48));

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDD610;
  *(this + 4) = &unk_286EDD6B8;
  PptParaProperty::~PptParaProperty((this + 48));
}

void EshDgg::~EshDgg(EshDgg *this)
{
  *this = &unk_286EC5F78;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC5F78;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

void EshBSE::~EshBSE(EshBSE *this)
{
  EshBSE::~EshBSE(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EC5920;
  var3 = this->var3;
  if (var3)
  {
    (*(var3->var0 + 1))(var3);
  }

  this->var3 = 0;
  var4 = this->var4;
  if (var4)
  {
    MEMORY[0x25F896FE0](var4, 0x1000C80BDFB0063);
  }

  this->var4 = 0;
}

void EshBitmapBlip::~EshBitmapBlip(EshBitmapBlip *this)
{
  *this = &unk_286EC57E8;
  v2 = (this + 72);
  OcBinaryData::~OcBinaryData((this + 160));
  OcBinaryData::~OcBinaryData(v2);
  EshBlip::~EshBlip(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC57E8;
  v2 = (this + 72);
  OcBinaryData::~OcBinaryData((this + 160));
  OcBinaryData::~OcBinaryData(v2);

  EshBlip::~EshBlip(this);
}

void EshBlip::~EshBlip(EshBlip *this)
{
  this->var0 = &unk_286EC5878;
}

{
  this->var0 = &unk_286EC5878;
}

{
  this->var0 = &unk_286EC5878;
  JUMPOUT(0x25F897000);
}

void EshShapeDefaults::~EshShapeDefaults(EshShapeDefaults *this)
{
  EshContentBase::~EshContentBase(this);

  JUMPOUT(0x25F897000);
}

void EshSplitMenuColors::~EshSplitMenuColors(EshSplitMenuColors *this)
{
  *this = &unk_286EC6C10;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC6C10;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void PptGridSpacing10Atom::~PptGridSpacing10Atom(PptGridSpacing10Atom *this)
{
  *this = &unk_286EE0380;
  *(this + 4) = &unk_286EE0428;
  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EE0380;
  *(this + 4) = &unk_286EE0428;
}

void PptObjectFactory::~PptObjectFactory(PptObjectFactory *this)
{
  this->var0 = &unk_286EDDF08;
  var1 = this->var1;
  if (var1)
  {
    (*(*var1 + 8))(var1);
  }

  this->var1 = 0;

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EDDF08;
  var1 = this->var1;
  if (var1)
  {
    (*(*var1 + 8))(var1);
  }

  this->var1 = 0;
}

void sub_25D2C9ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = OCBReader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void PptBinaryReader::~PptBinaryReader(PptBinaryReader *this)
{
  PptBinaryReader::~PptBinaryReader(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDE6E0;
  v2 = (this + 8);
  *(this + 1) = &unk_286EDE800;
  *(this + 3) = &unk_286EDE8E0;
  v3 = *(this + 19);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 19) = 0;
  v4 = *(this + 18);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 18) = 0;
  v5 = *(this + 16);
  if (v5)
  {
    SsrwOOStorage::~SsrwOOStorage(v5);
    MEMORY[0x25F897000]();
  }

  *(this + 16) = 0;
  v6 = *(this + 23);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 23) = 0;
  v7 = *(this + 21);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 21) = 0;
  v8 = *(this + 22);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 22) = 0;
  v9 = *(this + 24);
  if (v9)
  {
    PptPersistDir::~PptPersistDir(v9);
    MEMORY[0x25F897000]();
  }

  *(this + 24) = 0;
  v10 = *(this + 25);
  if (v10)
  {
    MEMORY[0x25F897000](v10, 0x1000C408B6DE1C6);
  }

  *(this + 25) = 0;
  v11 = *(this + 26);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 26) = 0;
  v12 = *(this + 36);
  *(this + 37) = v12;
  if (*(this + 34))
  {
    EshMark::~EshMark(*(this + 34));
    MEMORY[0x25F897000]();
    v12 = *(this + 36);
  }

  *(this + 34) = 0;
  if (v12)
  {
    *(this + 37) = v12;
    operator delete(v12);
  }

  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 240, *(this + 31));
  SsrwOORootStorage::~SsrwOORootStorage((this + 40));
  OcReader::~OcReader(v2);
}

void PptEshReader::~PptEshReader(PptEshReader *this)
{
  PptEshReader::~PptEshReader(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDE968;
  EshBinaryReader::finish(this);

  EshBinaryReader::~EshBinaryReader(this);
}

void EshBinaryReader::~EshBinaryReader(EshBinaryReader *this)
{
  *this = &unk_286EC8498;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  if (*(this + 14))
  {
    *(this + 14) = 0;
  }

  ChStack<EshHeader>::~ChStack(this + 40);
}

{
  EshBinaryReader::~EshBinaryReader(this);

  JUMPOUT(0x25F897000);
}

uint64_t ChStack<EshHeader>::~ChStack(uint64_t a1)
{
  if (*a1)
  {
    MEMORY[0x25F896FE0](*a1 - 16, 0x1000C808B6DE1C6);
  }

  *a1 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2 - 16, 0x1000C808B6DE1C6);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void PptPersistDir::~PptPersistDir(PptPersistDir *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 1);
  if (v3)
  {
    do
    {
      v4 = v3[1];
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      *v3 = 0;
      MEMORY[0x25F897000](v3, 0x20C40A4A59CD2);
      v3 = v4;
    }

    while (v4);
  }

  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 56, *(this + 8));
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 32, *(this + 5));
}

void PptPersistPtrIncrAtom::~PptPersistPtrIncrAtom(PptPersistPtrIncrAtom *this)
{
  *this = &unk_286EDB890;
  *(this + 4) = &unk_286EDB940;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 72, *(this + 10));
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDB890;
  *(this + 4) = &unk_286EDB940;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 72, *(this + 10));
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

void SsrwOORootStorage::~SsrwOORootStorage(SsrwOOStorage *this)
{
  var0 = this[1].var0;
  v2 = &this[1];
  if (var0)
  {
    closeStructuredStorage(v2);
    this->var0 = 0;
  }

  SsrwOOStorage::~SsrwOOStorage(this);
}

uint64_t closeStructuredStorage(uint64_t **a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 6;
  }

  if (v2[13])
  {
    v6 = 0;
    v7 = 0;
    if (v2[6] && (FatSectors = closeStorageInternal((v2 + 6)), FatSectors) || (FatSectors = tocWrite(v2[5], v2), FatSectors) || (FatSectors = fatTrimFreeSectorsAtEnd(v2[3], &v6), FatSectors) || (FatSectors = fatMarkFreeChain(v2[3]), FatSectors) || (FatSectors = fatWriteMiniFat(v2[4]), FatSectors) || (FatSectors = fatWriteFatAndXFat(v2[3]), FatSectors) || (FatSectors = headerWrite(*v2, v2[2]), FatSectors) || (FatSectors = fatGetFatSectors(v2[3], &v7, &v6 + 1), FatSectors) || (FatSectors = headerWriteFatSectors(*v2, v7, HIDWORD(v6)), FatSectors) || (FatSectors = headerWriteSectorFiller(v2[2], *v2), FatSectors))
    {
      v4 = FatSectors;
    }

    else
    {
      headerGetSectorShift(v2[2]);
      fatGetLength(v2[3]);
      SsrwFtruncate(*v2);
      v4 = 0;
    }

    v2 = *a1;
  }

  else
  {
    v4 = 0;
  }

  closeStg(v2);
  *a1 = 0;
  return v4;
}

void closeStg(char *a1)
{
  if (a1)
  {
    v3 = *(a1 + 6);
    v2 = a1 + 48;
    if (v3)
    {
      closeStorageInternal(v2);
    }

    v4 = *a1;
    if (*a1)
    {
      if (a1[8])
      {
        SsrwFclose(v4);
      }

      else
      {
        SsrwDisconnect(v4);
      }
    }

    v5 = *(a1 + 10);
    if (v5)
    {
      free(v5);
    }

    if (*(a1 + 4))
    {
      fatDestroy(a1 + 4);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      free(v6);
    }

    if (*(a1 + 3))
    {
      fatDestroy(a1 + 3);
    }

    v7 = *(a1 + 2);
    if (v7)
    {
      free(v7);
    }

    if (*(a1 + 5))
    {
      tocDestroy(a1 + 5);
    }

    v8 = *(a1 + 12);
    if (v8)
    {
      free(v8);
    }

    free(a1);
  }
}

uint64_t closeStorageInternal(uint64_t a1)
{
  v13 = 2;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if (!a1)
  {
    return 6;
  }

  v2 = *a1;
  if (!v2)
  {
    return 6;
  }

  result = documentPropertiesWrite(v2);
  if (result)
  {
    return result;
  }

  v4 = openListItemCount(*(*a1 + 24));
  if (!v4)
  {
LABEL_13:
    v6 = *a1;
    if ((*(*a1 + 32) - 1) > 1)
    {
LABEL_17:
      v9 = v6[2];
      if (!v9)
      {
        return storageDestroy(a1);
      }

      result = storageRemoveOpenChild(v9, 1, v6);
      if (!result)
      {
        return storageDestroy(a1);
      }

      return result;
    }

    TOC = rootStorageGetTOC(*v6);
    EntryAtIndex = tocGetEntryAtIndex(TOC, *(*a1 + 8));
    if (EntryAtIndex)
    {
      result = directorySetCurrentModificationTime(EntryAtIndex);
      if (result)
      {
        return result;
      }

      v6 = *a1;
      goto LABEL_17;
    }

    return 6;
  }

  v5 = v4 - 1;
  while (1)
  {
    result = openListGetItem(*(*a1 + 24), v5, &v13, &v12);
    if (result)
    {
      return result;
    }

    if (v13 == 1)
    {
      v10 = v12;
      result = closeStorageInternal(&v10);
      if (result)
      {
        return result;
      }
    }

    else if (v13 == 2)
    {
      v11 = v12;
      result = closeStream(&v11);
      if (result)
      {
        return result;
      }
    }

    if (--v5 == -1)
    {
      goto LABEL_13;
    }
  }
}