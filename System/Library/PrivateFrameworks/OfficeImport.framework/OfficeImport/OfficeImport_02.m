uint64_t documentPropertiesWrite(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  result = storageHasDocumentProperties(a1);
  if (!result)
  {
    return result;
  }

  if (storageGetMode(a1) - 1 > 1)
  {
    return 0;
  }

  TOC = rootStorageGetTOC(a1);
  v4 = TOC;
  if (*TOC)
  {
    v12 = *TOC;
    result = propertySetWrite(TOC[3], SSRW_FMTID_SummaryInformation, &v12);
    if (result)
    {
      return result;
    }
  }

  v6 = v4 + 1;
  v5 = v4[1];
  v8 = v4 + 2;
  v7 = v4[2];
  if (v5)
  {
    if (v7)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

LABEL_10:
  result = streamSeek(v4[4], 0, 0);
  if (result)
  {
    return result;
  }

  v5 = *v6;
  if (*v6)
  {
    v7 = *v8;
    if (*v8)
    {
      goto LABEL_7;
    }

    v9 = &SSRW_FMTID_UserDefinedProperties;
    v10 = a1;
    v11 = v4 + 2;
  }

  else
  {
    v9 = &SSRW_FMTID_DocumentSummaryInformation;
    v10 = a1;
    v11 = v4 + 1;
  }

  result = getPropertySetFromStorage(v10, v9, v11);
  if (!result)
  {
    v5 = *v6;
    v7 = *v8;
LABEL_7:
    v12 = v5;
    v13 = v7;
    result = propertySetWrite(v4[4], &SSRW_FMTID_DocumentSummaryInformation, &v12);
    if (result)
    {
      return result;
    }

    return 0;
  }

  return result;
}

BOOL storageHasDocumentProperties(_BOOL8 result)
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

uint64_t openListGetItem(uint64_t *a1, unsigned int a2, _DWORD *a3, void *a4)
{
  if (!a1 || *(a1 + 2) <= a2)
  {
    return 6;
  }

  v4 = *a1;
  if (a2)
  {
    while (1)
    {
      v4 = *(v4 + 16);
      if (!v4)
      {
        return 11;
      }

      if (!--a2)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = 0;
    *a3 = *v4;
    *a4 = *(v4 + 8);
  }

  return result;
}

uint64_t storageDestroy(uint64_t a1)
{
  v2 = openListDestroy((*a1 + 24));
  v3 = *a1;
  if (*(*a1 + 40))
  {
    documentPropertiesDestroy((*a1 + 40));
    v3 = *a1;
  }

  free(v3);
  *a1 = 0;
  return v2;
}

uint64_t openListDestroy(void **a1)
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

  v3 = *v2;
  if (*v2)
  {
    do
    {
      v4 = v3[2];
      free(v3);
      v3 = v4;
    }

    while (v4);
    v2 = *a1;
  }

  free(v2);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t documentPropertiesDestroy(unsigned int ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    propertySetDestroy(v2);
    v2 = *a1;
  }

  if (v2[1])
  {
    propertySetDestroy(v2 + 1);
    v2 = *a1;
  }

  if (v2[2])
  {
    propertySetDestroy(v2 + 2);
    v2 = *a1;
  }

  free(v2);
  *a1 = 0;
  return 0;
}

uint64_t propertySetDestroy(unsigned int **a1)
{
  v2 = *a1;
  if ((*a1)[400])
  {
    v3 = 0;
    v4 = 2;
    do
    {
      propVariantCleanup(&v2[v4]);
      ++v3;
      v2 = *a1;
      v4 += 8;
    }

    while (v3 < (*a1)[400]);
  }

  if (v2[610])
  {
    v5 = 0;
    v6 = 410;
    do
    {
      v7 = *&v2[v6];
      if (v7)
      {
        free(v7);
        *&v2[v6] = 0;
        v2 = *a1;
      }

      ++v5;
      v6 += 4;
    }

    while (v5 < v2[610]);
  }

  free(v2);
  *a1 = 0;
  return 0;
}

uint64_t SsrwFclose(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[8];
  if (!v2)
  {
    return 0;
  }

  v3 = v2(a1);
  free(a1);
  return v3;
}

uint64_t SsrwMemFclose(uint64_t a1)
{
  if (a1 && ((*(a1 + 40) & 2) == 0 || *(a1 + 32)) && *(a1 + 8) != *(a1 + 16))
  {
    v2 = (*(a1 + 32))(**a1);
    if (v2)
    {
      v3 = *(a1 + 8);
      **a1 = v2;
      *(a1 + 16) = v3;
    }
  }

  return 0;
}

uint64_t fatDestroy(void ***a1)
{
  v2 = *a1;
  if (v2[1])
  {
    free(v2[1]);
    v2 = *a1;
  }

  if (*v2)
  {
    free(*v2);
    v2 = *a1;
  }

  free(v2);
  *a1 = 0;
  return 0;
}

uint64_t tocDestroy(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = sizeOfDirectoryEntry();
        free((v3 - v4));
        v2 = *a1;
      }

      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

void SsrwOOStorage::~SsrwOOStorage(SsrwOOStorage *this)
{
  if (this->var0)
  {
    closeStorage(this);
    this->var0 = 0;
  }
}

void sub_25D2CAF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25D2CB090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void WrdBinaryReader::WrdBinaryReader(WrdBinaryReader *this)
{
  *this = &unk_286ED3138;
  OcReader::OcReader((this + 8));
  *this = &unk_286ED5E98;
  *(this + 1) = &unk_286ED6080;
  *(this + 3) = &unk_286ED6240;
  *(this + 4) = 0;
  WrdEshReader::WrdEshReader((this + 40));
  v2 = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 40) = -1;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = -1;
  *(this + 188) = 0u;
  *(this + 204) = 0u;
  *(this + 55) = 0;
  do
  {
    v3 = this + v2;
    *(v3 + 29) = 0;
    *(v3 + 30) = 0;
    *(this + v2 + 224) = this + v2 + 232;
    v2 += 24;
  }

  while (v2 != 192);
  for (i = 0; i != 192; i += 24)
  {
    v5 = (this + i);
    v5[53] = 0;
    v5[54] = 0;
    v5[52] = v5 + 53;
  }

  *(this + 38) = xmmword_25D6FE620;
  *(this + 156) = 0;
  WrdText::WrdText((this + 632));
  *(this + 87) = 0;
}

void sub_25D2CB1F4(_Unwind_Exception *a1)
{
  WrdBinaryReader::WrdBinaryReader();
  OcReader::~OcReader(v1);
  _Unwind_Resume(a1);
}

void WrdText::WrdText(WrdText *this)
{
  *this = &unk_286ED5AE0;
  OcText::OcText((this + 8));
  *(this + 14) = 0;
}

void sub_25D2CB434(void *a1, int a2)
{
  if (a2 == 3)
  {
    v5 = __cxa_begin_catch(a1);
    WBConvertCsException(v5);
    __cxa_end_catch();
  }

  else
  {
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v6 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D2CB418);
}

void sub_25D2CB4C0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 2)
  {
    [v2 setStartErrorMessageFromException:objc_begin_catch(exception_object)];
    objc_end_catch();
    JUMPOUT(0x25D2CB418);
  }

  _Unwind_Resume(exception_object);
}

void WrdBinaryReader::start(WrdBinaryReader *this, unsigned __int8 *a2)
{
  (*(*this + 24))(this);
  if (a2)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

void WrdBinaryReader::finish(WrdBinaryReader *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    WrdParser::closeDoc(v2);
    v3 = *(this + 4);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 4) = 0;
  }

  for (i = 0; i != 192; i += 24)
  {
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + i + 224, *(this + i + 232));
    *(this + i + 232) = 0;
    *(this + i + 240) = 0;
    *(this + i + 224) = this + i + 232;
    std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + i + 416, *(this + i + 424));
    *(this + i + 424) = 0;
    *(this + i + 432) = 0;
    *(this + i + 416) = this + i + 424;
  }

  v5 = *(this + 17);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 17) = 0;
  v6 = *(this + 18);
  if (v6)
  {
    WrdBinTable::~WrdBinTable(v6);
    MEMORY[0x25F897000]();
  }

  *(this + 18) = 0;
  v7 = *(this + 21);
  if (v7)
  {
    WrdBinTable::~WrdBinTable(v7);
    MEMORY[0x25F897000]();
  }

  *(this + 21) = 0;
  v8 = *(this + 22);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 22) = 0;
  v9 = *(this + 19);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 19) = 0;
  v10 = *(this + 24);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 24) = 0;
  v11 = *(this + 25);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 25) = 0;
  v12 = *(this + 26);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 26) = 0;
  v13 = *(this + 27);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 27) = 0;
  v14 = *(this + 87);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(this + 87) = 0;

  EshBinaryReader::finish((this + 40));
}

void WrdParser::WrdParser(WrdParser *this)
{
  v2 = TSURectWithOriginAndSize(this);
  OcParser::OcParser(v2);
  *v3 = &unk_286ED6438;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  SsrwOORootStorage::SsrwOORootStorage((v3 + 24));
  *(this + 18) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 38) = -1;
  WrdFileInformationBlock::WrdFileInformationBlock((this + 160));
  *(this + 248) = 0;
  WrdChpParser::WrdChpParser((this + 252));
  WrdChpParser::WrdChpParser((this + 256));
  WrdChpParser::WrdChpParser((this + 260));
  WrdChpParser::WrdChpParser((this + 264));
  WrdChpParser::WrdChpParser((this + 268));
  *(this + 76) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
}

void sub_25D2CB93C(_Unwind_Exception *a1)
{
  SsrwOORootStorage::~SsrwOORootStorage((v1 + 24));
  OcParser::OcParser(v1);
  _Unwind_Resume(a1);
}

void WrdFileInformationBlock::WrdFileInformationBlock(WrdFileInformationBlock *this)
{
  WrdFileInformationBlockHeader::WrdFileInformationBlockHeader(this);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
}

void WrdFileInformationBlockHeader::WrdFileInformationBlockHeader(WrdFileInformationBlockHeader *this)
{
  *this = 0;
  *(this + 1) = -1;
  *(this + 2) = 0xFFFFFFFFLL;
  *(this + 23) = 0;
  *(this + 28) = 0;
  *(this + 18) = 0;
  *(this + 19) &= 0xFE00u;
}

void WrdParser::openInBuf(WrdParser *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a2)
  {
    WrdParser::createFactories(this);
    *(this + 37) = a2;
    *(this + 76) = a3;
    *(this + 2) = 0;
    SsrwOORootStorage::openInBuf((this + 24), this + 37, a3);

    WrdParser::initStreamsAndFibBase(this);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

uint64_t WrdParser::createFactories(uint64_t this)
{
  if (!*(this + 280))
  {
    operator new();
  }

  return this;
}

uint64_t WrdObjectFactory::takeEshObjectFactory(WrdObjectFactory *this, WrdEshObjectFactory *a2)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 1) = a2;
  return result;
}

void sub_25D2CBFF8()
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  if (v0)
  {
    (*(*v0 + 8))(v0);
  }

  _Unwind_Resume(v2);
}

void SsrwOOStorage::openStream(SsrwOOStorage *this, const char *__s)
{
  v4 = 0;
  do
  {
    this->var1[v4] = __s[v4];
    ++v4;
  }

  while (v4 <= strlen(__s));

  SsrwOOStorage::openStream(this, this->var1);
}

size_t SsrwOOStorage::getChildrenInfo(SsrwOOStorage *this, SsrwOOStgInfo **a2, int *a3)
{
  v11 = 0;
  v10 = 0;
  result = getChildrenInfo(this->var0, &v10, &v11);
  if (result)
  {
    v8 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v8;
  }

  v6 = v11;
  if (v11 >= 1 && v10 != 0)
  {
    operator new[](184 * v11 + 16);
  }

  *a2 = 0;
  *a3 = v6;
  return result;
}

void sub_25D2CC234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, int a10, unsigned int a11)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    freeInfo(a9, a11);
    free(a9);
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5;
  }

  _Unwind_Resume(exception_object);
}

void SsrwOOStgInfo::SsrwOOStgInfo(SsrwOOStgInfo *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 7) = 0;
  *(this + 8) = this;
  *this = this + 108;
  *(this + 72) = 0;
}

uint64_t SsrwOOStgInfo::operator=(uint64_t a1, __int128 *a2)
{
  if (*a2)
  {
    v3 = *(a1 + 64);
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
    *(a1 + 72) = 0;
    v4 = *(a1 + 64);
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v4[2] = a2[2];
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
    **(a1 + 64) = a1 + 108;
    SsrwOOStgInfo::setNamePrivate<unsigned short>(a1, *a2);
  }

  return a1;
}

uint64_t SsrwOOStgInfo::getName(SsrwOOStgInfo *this)
{
  v3 = *(this + 72);
  result = this + 72;
  if (!v3)
  {
    v4 = 0;
    v5 = *(this + 8);
      ;
    }

    v7 = 0;
    do
    {
      *(result + v7) = *(*v5 + 2 * v7);
      ++v7;
    }

    while (v4 != v7);
  }

  return result;
}

void SsrwOOStorage::openStorage(SsrwOOStorage *this, const char *__s)
{
  v4 = 0;
  do
  {
    this->var1[v4] = __s[v4];
    ++v4;
  }

  while (v4 <= strlen(__s));

  SsrwOOStorage::openStorage(this, this->var1);
}

void SsrwOOStorage::openStorage(SsrwOOStorage *this, const unsigned __int16 *a2)
{
  v5 = 0;
  v2 = openStorage(this->var0, a2, &v5);
  if (!v2)
  {
    operator new();
  }

  v3 = v2;
  exception = __cxa_allocate_exception(4uLL);
  *exception = v3;
}

uint64_t openStorage(uint64_t a1, const unsigned __int16 *a2, uint64_t *a3)
{
  v10 = 0;
  if (!a1)
  {
    return 6;
  }

  result = 6;
  if (a2 && *a1 && a3 && *a2 && (*(a1 + 32) | 2) == 2)
  {
    TOC = rootStorageGetTOC(*a1);
    EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
    if (EntryAtIndex)
    {
      result = tocFindChildEntry(TOC, EntryAtIndex, a2, &v10);
      if (!result)
      {
        result = storageConstructFromDirEntry(v10, a3);
        if (!result)
        {
          *(*a3 + 16) = a1;
          **a3 = *a1;
          v9 = *a3;
          *(v9 + 32) = *(a1 + 32);
          return openListAppend(*(a1 + 24), 1, v9);
        }
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdFileInformationBlockHeader *a2)
{
  (*(**(this + 14) + 16))(*(this + 14), 0, 0);
  if ((*(**(this + 14) + 80))(*(this + 14)) != 42476)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8003;
  }

  *(a2 + 8) = -23060;
  *(a2 + 12) = (*(**(this + 14) + 80))(*(this + 14));
  v4 = (*(**(this + 14) + 80))(*(this + 14));
  *(a2 + 9) = v4;
  if (v4 < 0x6000)
  {
    if (v4 < 0x4000)
    {
      if ((v4 & 0x3000) == 0x2000)
      {
        v5 = 9;
      }

      else
      {
        if (v4 - 5 >= 0x9FB)
        {
          v5 = *(this + 38);
          goto LABEL_11;
        }

        v5 = 8;
      }
    }

    else
    {
      v5 = 10;
    }
  }

  else
  {
    v5 = 11;
  }

  *(this + 38) = v5;
LABEL_11:
  *(this + 252) = vdupq_n_s32(v5);
  *(this + 67) = v5;
  *a2 = (*(**(this + 14) + 80))(*(this + 14));
  *(a2 + 16) = (*(**(this + 14) + 72))(*(this + 14));
  v6 = (*(**(this + 14) + 80))(*(this + 14));
  *(a2 + 17) = v6 >> 4;
  v7 = *(a2 + 19) & 0xFFF0 | (v6 >> 10) & 3 | (v6 >> 11) & 4;
  *(a2 + 26) = ((v6 >> 4) & 0x30 | v6 & 0xF | (v6 >> 6) & 0x40 | (v6 >> 7) & 0x80) ^ 0x20;
  *(a2 + 19) = v7 | (v6 >> 12) & 8;
  *(a2 + 18) = (*(**(this + 14) + 80))(*(this + 14));
  *(a2 + 7) = (*(**(this + 14) + 96))(*(this + 14));
  *(a2 + 1) = (*(**(this + 14) + 64))(*(this + 14));
  v8 = (*(**(this + 14) + 64))(*(this + 14));
  *(a2 + 19) = *(a2 + 19) & 0xFE0F | (16 * v8) & 0x10 | (16 * v8) & 0x60 | (16 * v8) & 0x180;
  *(a2 + 10) = (*(**(this + 14) + 80))(*(this + 14));
  *(a2 + 11) = (*(**(this + 14) + 80))(*(this + 14));
  *(a2 + 2) = (*(**(this + 14) + 96))(*(this + 14));
  result = (*(**(this + 14) + 96))(*(this + 14));
  *(a2 + 3) = result;
  *(this + 248) = 1;
  return result;
}

uint64_t WrdBinaryReader::readEncryptionInfo(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v4 = *(a1 + 32);
  if (!v4 || !*(v4 + 128))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 8000;
  }

  if ((*(v4 + 186) & 0x10) != 0)
  {
    if ((*(v4 + 198) & 8) == 0)
    {
      *a3 = *(v4 + 188);
      operator new[]();
    }

    v5 = 8003;
  }

  else
  {
    v5 = 8011;
  }

  *a4 = v5;
  return 0;
}

void WrdParser::parse(WrdParser *this, WrdFileInformationBlock *a2)
{
  v3 = *(this + 14);
  if (v3)
  {
    if (*(this + 248))
    {
      (*(*v3 + 16))(v3, 32, 0);
    }

    else
    {
      WrdParser::parse(this, a2);
    }

    v5 = (*(**(this + 14) + 80))(*(this + 14));
    WrdFileInformationBlock::setCountOfShorts(a2, v5);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1003;
}

void WrdFileInformationBlock::setCountOfShorts(WrdFileInformationBlock *this, unsigned int a2)
{
  *(this + 20) = a2;
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C80BDFB0063);
    a2 = *(this + 20);
  }

  *(this + 6) = 0;
  operator new[](2 * a2);
}

uint64_t WrdFileInformationBlock::setValueFromShortArray(uint64_t this, unsigned int a2, __int16 a3)
{
  v3 = *(this + 48);
  if (!v3 || *(this + 40) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  *(v3 + 2 * a2) = a3;
  return this;
}

void WrdFileInformationBlock::setCountOfLongs(WrdFileInformationBlock *this, unsigned int a2)
{
  *(this + 28) = a2;
  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8052888210);
    a2 = *(this + 28);
  }

  *(this + 8) = 0;
  operator new[](4 * a2);
}

uint64_t WrdFileInformationBlock::setValueFromLongArray(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 64);
  if (v3)
  {
    if (*(this + 56) > a2)
    {
      *(v3 + 4 * a2) = a3;
    }
  }

  return this;
}

void WrdFileInformationBlock::setCountOfFCLCBs(WrdFileInformationBlock *this, unsigned int a2)
{
  *(this + 36) = a2;
  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8000313F17);
    a2 = *(this + 36);
  }

  *(this + 10) = 0;
  operator new[](8 * a2);
}

uint64_t WrdFileInformationBlock::getFCLCB(WrdFileInformationBlock *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (!v2 || *(this + 36) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return v2 + 8 * a2;
}

void WrdRdrText::WrdRdrText(WrdRdrText *this, SsrwOOStream *a2)
{
  *this = &unk_286ED64A0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
}

void WrdParser::parse(WrdParser *this, WrdRdrText *a2)
{
  WrdParser::startFCLCB(this, 0x21u);
  v3 = *(this + 34);
  if (v3)
  {
    if (*v3)
    {
      MEMORY[0x25F896FE0](*v3, 0x1000C8052888210);
    }

    *v3 = 0;
    MEMORY[0x25F897000](v3, 0x1010C40A1D9428BLL);
  }

  *(this + 34) = 0;
  operator new();
}

uint64_t WrdFileInformationBlock::getFCLCB(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  if (!v2 || *(a1 + 72) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return v2 + 8 * a2;
}

uint64_t WrdParser::parse(WrdParser *this, WrdClxGrpprls *a2, unsigned int *a3)
{
  (*(**(this + 16) + 16))(*(this + 16), *a3, 0);
  *(a2 + 5) = 0;
  result = (*(**(this + 16) + 64))(*(this + 16));
  v7 = 0;
  if (result == 1)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + 4);
      v9 = *(a2 + 5);
      if (v8 <= v9)
      {
        WrdClxGrpprls::reallocGrpprls(a2, (v8 + 8));
      }

      *(*a2 + 4 * *(a2 + 5)) = v7 + 1 + *a3;
      *(a2 + 5) = v9 + 1;
      v10 = (*(**(this + 16) + 80))(*(this + 16));
      v11 = v7 + v10;
      (*(**(this + 16) + 16))(*(this + 16), v10, 1);
      v7 = v11 + 3;
      result = (*(**(this + 16) + 64))(*(this + 16));
    }

    while (result == 1);
  }

  *a3 += v7;
  return result;
}

void WrdParser::parse(WrdParser *this, WrdRdrText *a2, uint64_t a3)
{
  (*(**(this + 16) + 16))(*(this + 16), a3, 0);
  if ((*(**(this + 16) + 64))(*(this + 16)) == 2)
  {
    WrdParser::parse(this, (a2 + 72));
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 2001;
}

void WrdPieceTable::setCPCount(WrdPieceTable *this, unsigned int a2)
{
  *this = a2;
  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8052888210);
    a2 = *this;
  }

  *(this + 1) = 0;
  operator new[](4 * a2);
}

uint64_t WrdFileInformationBlock::getNumberOfCharInText(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 64);
  if (v2 && *(a1 + 56) > (a2 + 3))
  {
    return *(v2 + 4 * (a2 + 3));
  }

  else
  {
    return 0;
  }
}

void WrdBinTable::WrdBinTable(WrdBinTable *this)
{
  *this = 0xFFFFFFFFLL;
  *(this + 2) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
}

void WrdParser::parse(WrdParser *a1, uint64_t a2, unsigned __int16 a3)
{
  started = WrdParser::startFCLCB(a1, a3);
  if (started >> 34)
  {
    v6 = HIDWORD(started) - 4;
    v7 = (HIDWORD(started) - 4) >> 3;
    WrdBinTable::setNumberOfBTEs(a2, v7);
    v8 = 0;
    do
    {
      *(*(a2 + 16) + v8) = (*(**(a1 + 16) + 104))(*(a1 + 16));
      v8 += 4;
    }

    while (((v6 >> 1) & 0x7FFFFFFC) + 4 != v8);
    if (v6 >= 8)
    {
      v9 = 0;
      if (v7 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = 4 * v10;
      do
      {
        v12 = (*(**(a1 + 16) + 104))(*(a1 + 16));
        *(*(a2 + 40) + v9) = v12;
        if (v12 < *a2)
        {
          *a2 = v12;
        }

        if (v12 > *(a2 + 4))
        {
          *(a2 + 4) = v12;
        }

        v9 += 4;
      }

      while (v11 != v9);
    }
  }

  else
  {

    WrdBinTable::setNumberOfBTEs(a2, 0);
  }
}

void WrdBinTable::setNumberOfBTEs(WrdBinTable *this, unsigned int a2)
{
  std::vector<unsigned int,ChAllocator<unsigned int>>::resize(this + 2, a2 + 1);
  std::vector<unsigned int,ChAllocator<unsigned int>>::resize(this + 5, a2);
  *(this + 2) = a2;
}

void WrdFormattedDiskPage::WrdFormattedDiskPage(WrdFormattedDiskPage *this)
{
  *this = &unk_286ED4DF8;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 12) = -1;
  *(this + 4) = 0;
}

uint64_t WrdFormattedDiskPage::init(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new[](512);
  }

  return this;
}

void WrdSectionDescriptorTable::WrdSectionDescriptorTable(WrdSectionDescriptorTable *this)
{
  *this = &unk_286ED5628;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
}

uint64_t WrdParser::parse(WrdParser *this, WrdSectionDescriptorTable *a2)
{
  started = WrdParser::startFCLCB(this, 6u);
  if (started >> 34)
  {
    v6 = ((HIDWORD(started) + 1048572) >> 4);
    WrdSectionDescriptorTable::setNumberOfSections(a2, v6);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = (*(**(this + 16) + 96))(*(this + 16));
        WrdSectionDescriptorTable::setCP(a2, i, v8);
      }
    }

    v9 = (*(**(this + 16) + 96))(*(this + 16));
    result = EshRecord::setDataLength(a2, v9);
    if (v6)
    {
      for (j = 0; j != v6; ++j)
      {
        SectionDescriptorReference = WrdSectionDescriptorTable::getSectionDescriptorReference(a2, j);
        result = WrdParser::parse(this, SectionDescriptorReference);
      }
    }
  }

  else
  {

    return WrdSectionDescriptorTable::setNumberOfSections(a2, 0);
  }

  return result;
}

uint64_t WrdSectionDescriptorTable::setNumberOfSections(WrdSectionDescriptorTable *this, unsigned int a2)
{
  result = WrdSectionDescriptorTable::cleanup(this);
  *(this + 4) = a2;
  if (a2)
  {
    operator new[](4 * a2);
  }

  return result;
}

uint64_t WrdSectionDescriptorTable::cleanup(WrdSectionDescriptorTable *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8000313F17);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return result;
}

uint64_t WrdSectionDescriptorTable::setCP(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 16);
  if (v3 && *(this + 8) > a2)
  {
    *(v3 + 4 * a2) = a3;
    if (*(this + 12) <= a3)
    {
      *(this + 12) = a3 + 1;
    }
  }

  return this;
}

uint64_t WrdParser::parse(WrdParser *this, WrdSectionDescriptor *a2)
{
  (*(**(this + 16) + 16))(*(this + 16), 2, 1);
  *a2 = (*(**(this + 16) + 96))(*(this + 16));
  (*(**(this + 16) + 16))(*(this + 16), 2, 1);
  result = (*(**(this + 16) + 96))(*(this + 16));
  *(a2 + 1) = result;
  return result;
}

void WrdEmbeddedTTFRecordTable::WrdEmbeddedTTFRecordTable(WrdEmbeddedTTFRecordTable *this)
{
  *this = &unk_286ED46A8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

uint64_t WrdParser::parse(WrdParser *this, WrdDocumentFileRecord *a2)
{
  result = WrdDocumentFileRecord::clear(a2);
  if (*(this + 116) >= 0x63u)
  {
    started = WrdParser::startFCLCB(this, 0x63u);
    v6 = HIDWORD(started);
    v7 = HIDWORD(started) + started;
    result = (*(**(this + 16) + 40))(*(this + 16));
    if (result + 4 <= v7)
    {
      if ((*(**(this + 16) + 104))(*(this + 16)) == 8)
      {
        v12 = v6 - 4;
        *(a2 + 10) = 0;
        OcBinaryData::setMinimumCapacity((a2 + 32), v6 - 4);
        (*(**(this + 16) + 56))(*(this + 16), *(a2 + 7), &v12);
        v8 = v12;
        *(a2 + 10) = v12;
        result = OcBinaryData::setMinimumCapacity((a2 + 32), v8);
        *(a2 + 12) = v8;
      }

      else
      {
        result = (*(**(this + 16) + 40))(*(this + 16));
        if (result + 4 <= v7)
        {
          result = (*(**(this + 16) + 104))(*(this + 16));
          if (result == 6)
          {
            result = (*(**(this + 16) + 40))(*(this + 16));
            if (result + 4 <= v7)
            {
              result = (*(**(this + 16) + 104))(*(this + 16));
              v9 = 4 * result;
              if (result)
              {
                v10 = v9 > result;
              }

              else
              {
                v10 = 0;
              }

              if (v10)
              {
                v11 = (*(**(this + 16) + 40))(*(this + 16)) + v9;
                result = (*(**(this + 16) + 40))(*(this + 16));
                if (v11 >= result)
                {
                  result = (*(**(this + 16) + 40))(*(this + 16));
                  if (result + v9 <= v7)
                  {
                    operator new();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void WrdObjectFactory::createObject(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      (*(*a1 + 16))(a1, 1);
      (*(*a1 + 16))(a1, 14);
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      (*(*a1 + 16))(a1, 4);
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      (*(*a1 + 16))(a1, 49);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 14);
      operator new();
    case 11:
      (*(*a1 + 16))(a1, 10);
      (*(*a1 + 16))(a1, 10);
      operator new();
    case 12:
      operator new();
    case 13:
      operator new();
    case 14:
      operator new();
    case 15:
      (*(*a1 + 16))(a1, 16);
      (*(*a1 + 16))(a1, 17);
      (*(*a1 + 16))(a1, 6);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 14);
      operator new();
    case 16:
      operator new();
    case 17:
      operator new();
    case 18:
      operator new();
    case 19:
      operator new();
    case 20:
      operator new();
    case 21:
      operator new();
    case 22:
      (*(*a1 + 16))(a1, 21);
      operator new();
    case 23:
      operator new();
    case 24:
      operator new();
    case 25:
      operator new();
    case 26:
      operator new();
    case 27:
      operator new();
    case 28:
      operator new();
    case 29:
      operator new();
    case 30:
      operator new();
    case 31:
      operator new();
    case 32:
      (*(*a1 + 16))(a1, 36);
      operator new();
    case 33:
      operator new();
    case 34:
      operator new();
    case 35:
      (*(*a1 + 16))(a1, 41);
      (*(*a1 + 16))(a1, 10);
      operator new();
    case 36:
      (*(*a1 + 16))(a1, 35);
      operator new();
    case 37:
      operator new();
    case 38:
      operator new();
    case 39:
      (*(*a1 + 16))(a1, 14);
      operator new();
    case 40:
      (*(*a1 + 16))(a1, 4);
      operator new();
    case 41:
      (*(*a1 + 16))(a1, 49);
      (*(*a1 + 16))(a1, 30);
      (*(*a1 + 16))(a1, 18);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 5);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 39);
      (*(*a1 + 16))(a1, 58);
      operator new();
    case 42:
      (*(*a1 + 16))(a1, 41);
      (*(*a1 + 16))(a1, 41);
      (*(*a1 + 16))(a1, 61);
      (*(*a1 + 16))(a1, 61);
      operator new();
    case 43:
      operator new();
    case 44:
      operator new();
    case 45:
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      operator new();
    case 46:
      operator new();
    case 47:
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 14);
      (*(*a1 + 16))(a1, 40);
      operator new();
    case 48:
      (*(*a1 + 16))(a1, 47);
      (*(*a1 + 16))(a1, 47);
      operator new();
    case 49:
      operator new();
    case 50:
      operator new();
    case 51:
      operator new();
    case 52:
      operator new();
    case 53:
      (*(*a1 + 16))(a1, 52);
      operator new();
    case 54:
      operator new();
    case 55:
      (*(*a1 + 16))(a1, 54);
      operator new();
    case 56:
      (*(*a1 + 16))(a1, 41);
      (*(*a1 + 16))(a1, 41);
      (*(*a1 + 16))(a1, 10);
      (*(*a1 + 16))(a1, 10);
      (*(*a1 + 16))(a1, 61);
      (*(*a1 + 16))(a1, 14);
      operator new();
    case 57:
      (*(*a1 + 16))(a1, 56);
      operator new();
    case 58:
      operator new();
    case 59:
      operator new();
    case 60:
      (*(*a1 + 16))(a1, 49);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      operator new();
    case 61:
      (*(*a1 + 16))(a1, 59);
      (*(*a1 + 16))(a1, 60);
      (*(*a1 + 16))(a1, 49);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 9);
      (*(*a1 + 16))(a1, 14);
      operator new();
    case 62:
      operator new();
    case 63:
      operator new();
    case 64:
      operator new();
    case 65:
      operator new();
    case 66:
      operator new();
    case 67:
      operator new();
    case 68:
      operator new();
    case 69:
      operator new();
    case 70:
      operator new();
    case 71:
      operator new();
    case 72:
      operator new();
    case 73:
      operator new();
    case 74:
      operator new();
    case 75:
      operator new();
    default:
      ChLogFunction("Unknown object type passed to WrdObjectFactory\n", 1, 2, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Model/WrdObjectFactory.cpp", 547);
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1001;
  }
}

uint64_t WrdNoteTable::WrdNoteTable(uint64_t result, int a2)
{
  *result = &unk_286ED51E0;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

void WrdNoteReferencePositionTable::WrdNoteReferencePositionTable(WrdNoteReferencePositionTable *this)
{
  *this = &unk_286ED51A8;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
}

void WrdCPTable::WrdCPTable(WrdCPTable *this)
{
  *this = &unk_286ED43F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void *WrdBookmarkTable::clear(void *this)
{
  v1 = this;
  v2 = this[2];
  if (((this[3] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[2];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[2];
    }

    while (v3 < ((v1[3] - v2) >> 3));
  }

  v1[3] = v2;
  return this;
}

uint64_t WrdParser::parse(WrdParser *a1, WrdNoteReferencePositionTable *a2, int a3)
{
  NoteReferencePositionFCLCBIndex = WrdFileInformationBlock::getNoteReferencePositionFCLCBIndex(a3);
  started = WrdParser::startFCLCB(a1, NoteReferencePositionFCLCBIndex);
  if (started >> 34)
  {
    v8 = ((HIDWORD(started) - 4) / 6u);
    WrdNoteReferencePositionTable::setNumberOfNoteReferences(a2, v8);
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = (*(**(a1 + 16) + 96))(*(a1 + 16));
        WrdNoteReferencePositionTable::setCP(a2, i, v10);
      }
    }

    result = (*(**(a1 + 16) + 96))(*(a1 + 16));
    *(a2 + 2) = result;
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        v12 = (*(**(a1 + 16) + 72))(*(a1 + 16));
        result = WrdNoteReferencePositionTable::setAuto(a2, j, v12);
      }
    }
  }

  else
  {

    return WrdNoteReferencePositionTable::setNumberOfNoteReferences(a2, 0);
  }

  return result;
}

uint64_t WrdFileInformationBlock::getNoteReferencePositionFCLCBIndex(int a1)
{
  if (a1 == 1)
  {
    return 46;
  }

  else
  {
    return 2;
  }
}

uint64_t WrdNoteReferencePositionTable::setNumberOfNoteReferences(WrdNoteReferencePositionTable *this, unsigned int a2)
{
  result = WrdNoteReferencePositionTable::cleanup(this);
  *(this + 16) = a2;
  if (a2)
  {
    operator new[](4 * a2);
  }

  return result;
}

uint64_t WrdNoteReferencePositionTable::cleanup(WrdNoteReferencePositionTable *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 2) = 0;
  result = *(this + 3);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80BDFB0063);
  }

  *(this + 3) = 0;
  *(this + 16) = 0;
  return result;
}

unint64_t WrdParser::parse(WrdParser *a1, void *a2, unsigned int a3)
{
  result = WrdParser::startFCLCB(a1, a3);
  a2[2] = a2[1];
  v7 = result >> 34;
  if (!(result >> 34))
  {
    return result;
  }

  if (a3 <= 0x3B && ((1 << a3) & 0xA010000000F0000) != 0)
  {
    v8 = (HIDWORD(result) - 4) / 6u;
LABEL_5:
    LOWORD(v7) = v8 + 1;
    goto LABEL_6;
  }

  if ((a3 & 0xFFFFFFFE) == 0x28)
  {
    v8 = (HIDWORD(result) - 4) / 0x1Eu;
    goto LABEL_5;
  }

  if ((a3 & 0xFFFFFFFD) == 0x38)
  {
    v8 = (HIDWORD(result) - 4) / 0x1Au;
    goto LABEL_5;
  }

  if (a3 == 4)
  {
    v8 = (HIDWORD(result) - 4) / 0x22u;
    goto LABEL_5;
  }

  if (a3 == 42 || a3 == 22)
  {
    LODWORD(v7) = ((HIDWORD(result) + 524284) >> 3) + 1;
    goto LABEL_6;
  }

  if (a3 - 75 > 1)
  {
LABEL_6:
    if (!v7)
    {
      return result;
    }

    goto LABEL_7;
  }

  LODWORD(v7) = (WORD2(result) - 4) / 0xAu + 1;
LABEL_7:
  v9 = 0;
  do
  {
    v10 = (*(**(a1 + 16) + 96))(*(a1 + 16));
    v12 = v10;
    v11 = a2[2];
    if (v11 >= a2[3])
    {
      result = std::vector<int,ChAllocator<int>>::__emplace_back_slow_path<int const&>((a2 + 1), &v12);
    }

    else
    {
      *v11 = v10;
      result = (v11 + 1);
    }

    a2[2] = result;
    ++v9;
  }

  while (v9 < v7);
  return result;
}

void WrdCPTable::~WrdCPTable(WrdCPTable *this)
{
  *this = &unk_286ED43F8;
  v2 = *(this + 1);
  *(this + 2) = v2;
  if (v2)
  {
    operator delete(v2);
  }

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED43F8;
  v2 = *(this + 1);
  *(this + 2) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

{
  *this = &unk_286ED43F8;
  v2 = *(this + 1);
  *(this + 2) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

void WrdNoteReferencePositionTable::~WrdNoteReferencePositionTable(WrdNoteReferencePositionTable *this)
{
  *this = &unk_286ED51A8;
  WrdNoteReferencePositionTable::cleanup(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED51A8;
  WrdNoteReferencePositionTable::cleanup(this);
}

void WrdAnnotationTable::WrdAnnotationTable(WrdAnnotationTable *this)
{
  *this = &unk_286ED4020;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void sub_25D2D2530(_Unwind_Exception *a1)
{
  (*(*v4 + 8))(v4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void WrdAnnotationReferenceDescriptorTable::WrdAnnotationReferenceDescriptorTable(WrdAnnotationReferenceDescriptorTable *this)
{
  *this = &unk_286ED3FE8;
  *(this + 1) = 0;
  *(this + 8) = 0;
}

void WrdAnnotationDateTimeTable::WrdAnnotationDateTimeTable(WrdAnnotationDateTimeTable *this)
{
  *this = &unk_286ED3F70;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void *WrdAnnotationDateTimeTable::clear(void *this)
{
  v1 = this;
  v2 = this[1];
  if (((this[2] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[1];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[1];
    }

    while (v3 < ((v1[2] - v2) >> 3));
  }

  v1[2] = v2;
  return this;
}

uint64_t WrdParser::parse(WrdParser *this, WrdAnnotationReferenceDescriptorTable *a2)
{
  started = WrdParser::startFCLCB(this, 4u);
  if (started >> 34)
  {
    v6 = started;
    v7 = (HIDWORD(started) - 4) / 0x22u;
    WrdAnnotationReferenceDescriptorTable::setNumberOfAnnotationReferences(a2, v7);
    result = (*(**(this + 16) + 16))(*(this + 16), v6 + 4 * v7 + 4, 0);
    if (v7)
    {
      v8 = 0;
      do
      {
        Descriptor = WrdAnnotationReferenceDescriptorTable::getDescriptor(a2, v8);
        result = WrdParser::parse(this, Descriptor);
        ++v8;
      }

      while (v7 != v8);
    }
  }

  else
  {

    return WrdAnnotationReferenceDescriptorTable::setNumberOfAnnotationReferences(a2, 0);
  }

  return result;
}

uint64_t WrdAnnotationReferenceDescriptorTable::setNumberOfAnnotationReferences(WrdAnnotationReferenceDescriptorTable *this, unsigned int a2)
{
  result = WrdAnnotationReferenceDescriptorTable::cleanup(this);
  *(this + 8) = a2;
  if (a2)
  {
    operator new[](40 * a2 + 16);
  }

  return result;
}

uint64_t WrdAnnotationReferenceDescriptorTable::cleanup(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 40 * v4 - 40;
      v6 = -40 * v4;
      v7 = v5;
      v8 = v5;
      do
      {
        *v8 = &unk_286ED3FA8;
        v8 -= 5;
        CsString::~CsString((v7 + 1));
        v5 -= 40;
        v7 = v8;
        v6 += 40;
      }

      while (v6);
    }

    this = MEMORY[0x25F896FE0](v3, 0x1091C8016F80D2CLL);
  }

  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return this;
}

void WrdAnnotationDateTimeTable::~WrdAnnotationDateTimeTable(WrdAnnotationDateTimeTable *this)
{
  WrdAnnotationDateTimeTable::~WrdAnnotationDateTimeTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED3F70;
  WrdAnnotationDateTimeTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void WrdAnnotationReferenceDescriptorTable::~WrdAnnotationReferenceDescriptorTable(WrdAnnotationReferenceDescriptorTable *this)
{
  *this = &unk_286ED3FE8;
  WrdAnnotationReferenceDescriptorTable::cleanup(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED3FE8;
  WrdAnnotationReferenceDescriptorTable::cleanup(this);
}

void WrdStringTable::WrdStringTable(WrdStringTable *this)
{
  *this = &unk_286ED57E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

uint64_t WrdStringTypedTable::WrdStringTypedTable(uint64_t result, int a2, uint64_t a3)
{
  *result = &unk_286ED5828;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

unint64_t WrdBinaryReader::read(WrdBinaryReader *this, WrdStringTypedTable *a2)
{
  if (*(a2 + 2) != 36)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v3 = *(this + 4);
  v4 = *(a2 + 2);

  return WrdParser::parse(v3, v4, 0x24u);
}

unint64_t WrdParser::parse(WrdParser *a1, uint64_t a2, unsigned __int16 a3)
{
  result = WrdParser::startFCLCB(a1, a3);
  if (HIDWORD(result))
  {
    v5 = (*(**(a1 + 16) + 80))(*(a1 + 16));
    operator new[]((2 * (v5 + 1)));
  }

  return result;
}

void WrdStringTypedTable::~WrdStringTypedTable(WrdStringTypedTable *this)
{
  *this = &unk_286ED5828;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5828;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
}

void WrdStringTable::~WrdStringTable(WrdStringTable *this)
{
  WrdStringTable::~WrdStringTable(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED57E8;
  WrdStringTable::cleanup(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void *WrdStringTable::cleanup(void *this)
{
  v1 = this;
  v2 = this[1];
  if (((this[2] - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[1];
      }

      *(v2 + 8 * v3++) = 0;
      v2 = v1[1];
    }

    while (v3 < ((v1[2] - v2) >> 3));
  }

  v1[2] = v2;
  return this;
}

void WrdBookmarkTable::WrdBookmarkTable(WrdBookmarkTable *this)
{
  *this = &unk_286ED41E8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

void sub_25D2D32D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(*v12 + 8))(v12);
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  (*(*v11 + 8))(v11);
  _Unwind_Resume(a1);
}

void WrdStringWithDataTable::WrdStringWithDataTable(WrdStringWithDataTable *this)
{
  *this = &unk_286ED5868;
  *(this + 2) = 0;
  *(this + 2) = 0;
}

uint64_t WrdBookmarkFirstDescriptorTable::WrdBookmarkFirstDescriptorTable(uint64_t result, int a2)
{
  *result = &unk_286ED41B0;
  *(result + 8) = 0;
  *(result + 12) = a2;
  *(result + 16) = 0;
  return result;
}

uint64_t WrdParser::parse(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (!(WrdParser::startFCLCB(a1, a3) >> 32) || *(a1 + 178) == 71 && a3 == 32 && *(a1 + 160) == 1031 && (*(a1 + 198) & 0x100) == 0)
  {

    return WrdStringWithDataTable::setNumberOfStrings(a2, 0);
  }

  else
  {
    v7 = (*(**(a1 + 128) + 80))(*(a1 + 128));
    v8 = v7;
    v9 = v7;
    if (v7 == 0xFFFF)
    {
      v9 = (*(**(a1 + 128) + 80))(*(a1 + 128), v7);
    }

    WrdStringWithDataTable::setNumberOfStrings(a2, v9);
    result = (*(**(a1 + 128) + 80))(*(a1 + 128));
    a2[5] = result;
    if (a2[4])
    {
      v10 = 0;
      do
      {
        StringDataReference = WrdStringWithDataTable::getStringDataReference(a2, v10);
        v12 = (*(**(a1 + 128) + 80))(*(a1 + 128));
        CsString::reserve((StringDataReference + 8), v12);
        CsString::setCount((StringDataReference + 8), v12);
        v13 = *(StringDataReference + 16);
        if (!v13)
        {
          exception = __cxa_allocate_exception(4uLL);
          *exception = 2001;
        }

        if (v12)
        {
          v14 = v12;
          v15 = *(StringDataReference + 16);
          do
          {
            v16 = **(a1 + 128);
            if (v8 == 0xFFFF)
            {
              v17 = (*(v16 + 80))();
            }

            else
            {
              v17 = (*(v16 + 64))();
            }

            *v15++ = v17;
            --v14;
          }

          while (v14);
        }

        if (v8 != 0xFFFF)
        {
          ChConvertANSICharactersToUnicode(v13, v12);
        }

        result = a2[5];
        if (a2[5])
        {
          operator new[](result);
        }

        ++v10;
      }

      while (a2[4] > v10);
    }
  }

  return result;
}

uint64_t WrdStringWithDataTable::setNumberOfStrings(WrdStringWithDataTable *this, unsigned int a2)
{
  result = WrdStringWithDataTable::cleanup(this);
  *(this + 4) = a2;
  if (a2)
  {
    operator new[](48 * a2 + 16);
  }

  return result;
}

void sub_25D2D381C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = (v2 - 32);
    v5 = -v1;
    do
    {
      WrdStringWithDataTable::StringData::~StringData(v4);
      v4 = (v6 - 48);
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdStringWithDataTable::cleanup(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 48 * v4 - 48);
      v6 = -48 * v4;
      do
      {
        WrdStringWithDataTable::StringData::~StringData(v5);
        v5 = (v7 - 48);
        v6 += 48;
      }

      while (v6);
    }

    this = MEMORY[0x25F896FE0](v3, 0x1091C8072689AA3);
  }

  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
  return this;
}

uint64_t WrdParser::parse(WrdParser *this, WrdBookmarkFirstDescriptorTable *a2)
{
  if (*(a2 + 3))
  {
    v4 = 42;
  }

  else
  {
    v4 = 22;
  }

  started = WrdParser::startFCLCB(this, v4);
  if (started >> 34)
  {
    v7 = started;
    v8 = (HIDWORD(started) + 524284) >> 3;
    v9 = v8;
    WrdBookmarkFirstDescriptorTable::setNumberOfBookmarks(a2, v8);
    result = (*(**(this + 16) + 16))(*(this + 16), v7 + 4 * v8 + 4, 0);
    if (v8)
    {
      v10 = 0;
      do
      {
        BookmarkFirstDescriptorReference = WrdBookmarkFirstDescriptorTable::getBookmarkFirstDescriptorReference(a2, v10);
        *BookmarkFirstDescriptorReference = (*(**(this + 16) + 80))(*(this + 16));
        result = (*(**(this + 16) + 80))(*(this + 16));
        *(BookmarkFirstDescriptorReference + 2) = result & 0x7F;
        *(BookmarkFirstDescriptorReference + 4) = (result & 0x80) != 0;
        *(BookmarkFirstDescriptorReference + 3) = BYTE1(result) & 0x7F;
        *(BookmarkFirstDescriptorReference + 5) = result >> 15;
        ++v10;
      }

      while (v9 != v10);
    }
  }

  else
  {

    return WrdBookmarkFirstDescriptorTable::setNumberOfBookmarks(a2, 0);
  }

  return result;
}

uint64_t WrdBookmarkFirstDescriptorTable::setNumberOfBookmarks(WrdBookmarkFirstDescriptorTable *this, unsigned int a2)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80274DC3F3);
  }

  *(this + 2) = 0;
  *(this + 4) = a2;
  if (a2)
  {
    operator new[](6 * a2);
  }

  return result;
}

uint64_t WrdFileInformationBlock::getCPOffsetOfText(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    if (v3)
    {
      v6 = *(a1 + 64);
      if (v6 && (v7 = v4 + 2, *(a1 + 56) > v7))
      {
        v8 = *(v6 + 4 * v7);
      }

      else
      {
        v8 = 0;
      }

      v5 = (v8 + v5);
    }

    else
    {
      v5 = 0;
    }

    v4 = v2 + 1;
    v3 = (v2 + 1) << 16;
    v2 = (v2 + 1);
  }

  while (v2 <= a2);
  return v5;
}

void WrdBookmark::WrdBookmark(WrdBookmark *this)
{
  *this = &unk_286ED4170;
  CsString::CsString((this + 8));
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 29) = 0;
}

CsString *CsString::append(CsString *this, const CsString *a2)
{
  var1 = a2->var1;
  if (!var1)
  {
    var1 = &unk_25D6FDCB8;
  }

  return CsString::append(this, var1, a2->var2);
}

CsString *CsString::append(CsString *this, const unsigned __int16 *a2, unsigned int a3)
{
  if (a2)
  {
    v5 = this;
    v6 = this->var2 + a3;
    this = CsString::reserve(this, v6);
    if (a3)
    {
      this = _ChWcsncpy(&v5->var1[v5->var2], a2, a3);
    }

    v5->var2 = v6;
    v5->var1[v6] = 0;
  }

  return this;
}

uint64_t WrdBookmark::setExtraDataLength(WrdBookmark *this, unsigned int a2)
{
  result = *(this + 4);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  *(this + 20) = a2;
  if (a2)
  {
    operator new[](a2);
  }

  return result;
}

void *WrdBookmarkTable::append(void *this, WrdBookmark *a2)
{
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = this[3];
    if (v3 >= v2[4])
    {
      this = std::vector<WrdBookmark *,ChAllocator<WrdBookmark *>>::__emplace_back_slow_path<WrdBookmark * const&>(v2 + 2, &v4);
    }

    else
    {
      *v3 = a2;
      this = v3 + 1;
    }

    v2[3] = this;
  }

  return this;
}

void WrdBookmarkFirstDescriptorTable::~WrdBookmarkFirstDescriptorTable(WrdBookmarkFirstDescriptorTable *this)
{
  *this = &unk_286ED41B0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80274DC3F3);
  }

  *(this + 2) = 0;
  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED41B0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80274DC3F3);
  }

  *(this + 2) = 0;
  *(this + 4) = 0;
}

void WrdStringWithDataTable::~WrdStringWithDataTable(WrdStringWithDataTable *this)
{
  *this = &unk_286ED5868;
  WrdStringWithDataTable::cleanup(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5868;
  WrdStringWithDataTable::cleanup(this);
}

void WrdStringWithDataTable::StringData::~StringData(WrdStringWithDataTable::StringData *this)
{
  *this = &unk_286ED5890;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 4) = 0;
  CsString::~CsString((this + 8));
}

{
  WrdStringWithDataTable::StringData::~StringData(this);

  JUMPOUT(0x25F897000);
}

uint64_t WrdFieldPositionTable::WrdFieldPositionTable(uint64_t result, int a2)
{
  *result = &unk_286ED4CB8;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

void WrdBinaryReader::read(WrdBinaryReader *this, WrdFieldPositionTable *a2)
{
  if (*(a2 + 2) != 3)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

void sub_25D2D403C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x10A1C407768CA93);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void WrdFieldDescriptorTable::WrdFieldDescriptorTable(WrdFieldDescriptorTable *this)
{
  *this = &unk_286ED4C40;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

uint64_t WrdFileInformationBlock::getFieldPositionFCLCBIndex(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 16;
  }

  else
  {
    return dword_25D70E7BC[a1 - 1];
  }
}

WrdFieldDescriptor *WrdParser::parse(WrdParser *a1, uint64_t a2, int a3)
{
  FieldPositionFCLCBIndex = WrdFileInformationBlock::getFieldPositionFCLCBIndex(a3);
  started = WrdParser::startFCLCB(a1, FieldPositionFCLCBIndex);
  if (started >> 34)
  {
    v8 = started;
    v9 = (HIDWORD(started) - 4) / 6u;
    WrdFieldDescriptorTable::setNumberOfFieldDescriptors(a2, v9);
    result = (*(**(a1 + 16) + 16))(*(a1 + 16), v8 + 4 * v9 + 4, 0);
    if (v9)
    {
      v10 = 0;
      do
      {
        result = WrdParser::parse(a1, (*(a2 + 16) + v10));
        v10 += 24;
      }

      while (24 * v9 != v10);
    }
  }

  else
  {

    return WrdFieldDescriptorTable::setNumberOfFieldDescriptors(a2, 0);
  }

  return result;
}

uint64_t WrdFieldDescriptorTable::setNumberOfFieldDescriptors(uint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = MEMORY[0x25F896FE0](v4 - 16, 0x1081C807FDEFFD3);
  }

  *(v3 + 16) = 0;
  *(v3 + 8) = a2;
  if (a2)
  {
    operator new[](24 * a2 + 16);
  }

  return this;
}

void WrdFieldDescriptor::WrdFieldDescriptor(WrdFieldDescriptor *this)
{
  *this = &unk_286ED4C00;
  *(this + 1) = 0xFF00000013;
  *(this + 16) &= 0x80u;
}

WrdFieldDescriptor *WrdParser::parse(WrdParser *this, WrdFieldDescriptor *a2)
{
  v4 = (*(**(this + 16) + 64))(*(this + 16));
  *(a2 + 2) = v4 & 0x1F;
  v5 = (v4 & 0x1F) - 19;
  v6 = (*(**(this + 16) + 64))(*(this + 16));
  v7 = v6;
  if (v5 > 1)
  {
    WrdFieldDescriptor::setZombieEmbed(a2, (v6 & 2) != 0);
    WrdFieldDescriptor::setResultDirty(a2, (v7 & 4) != 0);
    WrdFieldDescriptor::setResultEdited(a2, (v7 & 8) != 0);
    WrdFieldDescriptor::setLocked(a2, (v7 & 0x10) != 0);
    WrdFieldDescriptor::setPrivateResult(a2, (v7 & 0x20) != 0);
    WrdFieldDescriptor::setNested(a2, (v7 & 0x40) != 0);

    return WrdFieldDescriptor::setHasSeparator(a2, v7 >> 7);
  }

  else
  {

    return EshRecord::setDataLength(a2, v6);
  }
}

void WrdFieldPosition::WrdFieldPosition(WrdFieldPosition *this, WrdFieldDescriptor *a2)
{
  this->var0 = &unk_286ED4C78;
  this->var1 = 0;
  this->var2 = a2;
}

double WrdFieldDescriptor::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  v3 = *(a1 + 16) & 0xFE | *(a2 + 16) & 1;
  *(a1 + 16) = v3;
  v4 = v3 & 0xFFFFFFFD | (2 * ((*(a2 + 16) >> 1) & 1));
  *(a1 + 16) = v4;
  v5 = v4 & 0xFFFFFFFB | (4 * ((*(a2 + 16) >> 2) & 1));
  *(a1 + 16) = v5;
  v6 = v5 & 0xFFFFFFF7 | (8 * ((*(a2 + 16) >> 3) & 1));
  *(a1 + 16) = v6;
  v7 = v6 & 0xFFFFFFEF | (16 * ((*(a2 + 16) >> 4) & 1));
  *(a1 + 16) = v7;
  v8 = v7 & 0xFFFFFFDF | (32 * ((*(a2 + 16) >> 5) & 1));
  *(a1 + 16) = v8;
  *(a1 + 16) = v8 & 0xBF | *(a2 + 16) & 0x40;
  return result;
}

void *WrdFieldPositionTable::append(WrdFieldPositionTable *this, WrdFieldPosition *a2)
{
  v5 = a2;
  v3 = *(this + 3);
  if (v3 >= *(this + 4))
  {
    result = std::vector<WrdFieldPosition *,ChAllocator<WrdFieldPosition *>>::__emplace_back_slow_path<WrdFieldPosition * const&>(this + 2, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 3) = result;
  return result;
}

void WrdFieldDescriptorTable::~WrdFieldDescriptorTable(WrdFieldDescriptorTable *this)
{
  *this = &unk_286ED4C40;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2 - 16, 0x1081C807FDEFFD3);
  }

  *(this + 2) = 0;
  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED4C40;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2 - 16, 0x1081C807FDEFFD3);
  }

  *(this + 2) = 0;
  *(this + 4) = 0;
}

uint64_t WrdStoryTable::WrdStoryTable(uint64_t result, int a2)
{
  *result = &unk_286ED57A8;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

void WrdBinaryReader::read(WrdBinaryReader *this, WrdStoryTable *a2)
{
  if ((*(a2 + 2) & 0xFFFFFFFE) == 6)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

void sub_25D2D48C0(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x10A1C407768CA93);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void WrdTextBoxStoryTable::WrdTextBoxStoryTable(WrdTextBoxStoryTable *this)
{
  *this = &unk_286ED5B20;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

uint64_t WrdFileInformationBlock::getTextBoxStoryFCLCBIndex(int a1)
{
  if (a1 == 7)
  {
    return 58;
  }

  else
  {
    return 56;
  }
}

uint64_t WrdParser::parse(WrdParser *a1, WrdTextBoxStoryTable *a2, int a3)
{
  TextBoxStoryFCLCBIndex = WrdFileInformationBlock::getTextBoxStoryFCLCBIndex(a3);
  started = WrdParser::startFCLCB(a1, TextBoxStoryFCLCBIndex);
  if (started >> 34)
  {
    v8 = started;
    v9 = (HIDWORD(started) - 4) / 0x1Au;
    WrdTextBoxStoryTable::setNumberOfTextBoxStories(a2, v9);
    result = (*(**(a1 + 16) + 16))(*(a1 + 16), v8 + 4 * v9 + 4, 0);
    if (v9)
    {
      v10 = 0;
      do
      {
        result = WrdParser::parse(a1, (*(a2 + 2) + v10));
        v10 += 20;
      }

      while (20 * v9 != v10);
    }
  }

  else
  {

    return WrdTextBoxStoryTable::setNumberOfTextBoxStories(a2, 0);
  }

  return result;
}

uint64_t WrdTextBoxStoryTable::setNumberOfTextBoxStories(WrdTextBoxStoryTable *this, unsigned int a2)
{
  result = *(this + 2);
  if (result)
  {
    result = MEMORY[0x25F896FE0](result, 0x1000C80C46099A0);
  }

  *(this + 2) = 0;
  *(this + 4) = a2;
  if (a2)
  {
    operator new[](20 * a2);
  }

  return result;
}

void WrdTextBoxStoryTable::~WrdTextBoxStoryTable(WrdTextBoxStoryTable *this)
{
  *this = &unk_286ED5B20;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80C46099A0);
  }

  *(this + 2) = 0;
  *(this + 4) = 0;

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5B20;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80C46099A0);
  }

  *(this + 2) = 0;
  *(this + 4) = 0;
}

void WrdFileShapeAddressTable::WrdFileShapeAddressTable(WrdFileShapeAddressTable *this)
{
  *this = &unk_286ED4D38;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

void WrdBinaryReader::read(WrdBinaryReader *this, WrdFileShapeAddressTable *a2)
{
  if ((*(a2 + 2) | 2) == 2)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1004;
}

void *WrdParser::parse(WrdParser *this, WrdFileShapeAddressTable *a2)
{
  FileShapeAddressFCLCBIndex = WrdFileInformationBlock::getFileShapeAddressFCLCBIndex(*(a2 + 2));
  started = WrdParser::startFCLCB(this, FileShapeAddressFCLCBIndex);
  result = WrdBookmarkTable::clear(a2);
  if (started >> 34)
  {
    v7 = (HIDWORD(started) - 4) / 0x1Eu;
    result = (*(**(this + 16) + 16))(*(this + 16), started + 4 * v7 + 4, 0);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = (*(**(this + 35) + 16))(*(this + 35), 24);
        WrdParser::parse(this, v9);
        result = WrdFileShapeAddressTable::append(a2, v9);
        ++v8;
      }

      while (v8 < v7);
    }
  }

  return result;
}

void sub_25D2D4E6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotation::clone(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WrdFileInformationBlock::getFileShapeAddressFCLCBIndex(int a1)
{
  if (a1 == 2)
  {
    return 41;
  }

  else
  {
    return 40;
  }
}

void WrdFontFamilyNameTable::WrdFontFamilyNameTable(WrdFontFamilyNameTable *this)
{
  *this = &unk_286ED4DB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

unint64_t WrdParser::parse(WrdParser *this, WrdFontFamilyNameTable *a2)
{
  WrdAnnotationDateTimeTable::clear(a2);
  result = WrdParser::startFCLCB(this, 0xFu);
  if (result >> 34)
  {
    v5 = result;
    result = (*(**(this + 16) + 104))(*(this + 16));
    if (result)
    {
      v6 = result;
      v7 = HIDWORD(v5) + v5;
      while ((*(**(this + 16) + 40))(*(this + 16)) != v7)
      {
        v8 = (*(**(this + 35) + 16))(*(this + 35), 26);
        WrdParser::parse(this, v8);
        WrdFontFamilyNameTable::append(a2, v8);
        result = (*(**(this + 16) + 40))(*(this + 16));
        if (result > v7)
        {
          break;
        }

        if (!--v6)
        {
          return result;
        }
      }

      return WrdAnnotationDateTimeTable::clear(a2);
    }
  }

  return result;
}

void sub_25D2D6C64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WrdAnnotation::clone(v1);
  }

  _Unwind_Resume(exception_object);
}

void WrdFontFamilyName::WrdFontFamilyName(WrdFontFamilyName *this)
{
  this->var0 = &unk_286ED4D78;
  p_var2 = &this->var2;
  CsString::CsString(&this->var1);
  CsString::CsString(p_var2);
  this->var3 = 0;
  this->var4 = 0;
  this->var5 = 0;
  *(&this->var5 + 6) = 0;
}

WrdFontFamilyName *WrdFontFamilyName::init(WrdFontFamilyName *this)
{
  if (!this->var4)
  {
    operator new[](10);
  }

  if (!this->var5)
  {
    operator new[](24);
  }

  return this;
}

CsString *WrdParser::parse(WrdParser *this, WrdFontFamilyName *a2)
{
  v4 = (*(**(this + 16) + 64))(*(this + 16));
  v5 = (*(**(this + 16) + 64))(*(this + 16));
  a2->var8 = v5 & 3;
  a2->var7 = (v5 & 4) != 0;
  a2->var9 = (v5 >> 4) & 7;
  a2->var6 = (*(**(this + 16) + 72))(*(this + 16));
  a2->var3 = (*(**(this + 16) + 64))(*(this + 16));
  a2->var10 = (*(**(this + 16) + 64))(*(this + 16));
  if (WrdFontFamilyName::s_bPanoseSize)
  {
    v6 = 0;
    do
    {
      v7 = (*(**(this + 16) + 64))(*(this + 16));
      WrdFontFamilyName::setPanose(a2, v6++, v7);
    }

    while (WrdFontFamilyName::s_bPanoseSize > v6);
  }

  if (WrdFontFamilyName::s_bFontSignatureSize)
  {
    v8 = 0;
    do
    {
      v9 = (*(**(this + 16) + 64))(*(this + 16));
      WrdFontFamilyName::setFontSignature(a2, v8++, v9);
    }

    while (WrdFontFamilyName::s_bFontSignatureSize > v8);
  }

  v10 = ((v4 - (WrdFontFamilyName::s_bPanoseSize + WrdFontFamilyName::s_bFontSignatureSize) + 507) >> 1);
  CsString::reserve(&a2->var1, v10);
  CsString::setCount(&a2->var1, v10);
  var1 = a2->var1.var1;
  if (!var1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  if (v10)
  {
    v12 = v10;
    v13 = a2->var1.var1;
    do
    {
      *v13++ = (*(**(this + 16) + 80))(*(this + 16));
      --v12;
    }

    while (v12);
  }

  v14 = _ChWcslen(var1);
  v15 = v14;
  if (v14 + 1 < v10)
  {
    v16 = &var1[v14];
    CsString::append(&a2->var2, v16 + 1);
    v17 = _ChWcslen(v16 + 1);
    CsString::setCount(&a2->var2, v17);
  }

  return CsString::setCount(&a2->var1, v15);
}

WrdFontFamilyName *WrdFontFamilyName::setPanose(WrdFontFamilyName *this, unsigned int a2, char a3)
{
  if (a2 <= 9)
  {
    var4 = this->var4;
    if (var4)
    {
      var4[a2] = a3;
    }
  }

  return this;
}

WrdFontFamilyName *WrdFontFamilyName::setFontSignature(WrdFontFamilyName *this, unsigned int a2, char a3)
{
  if (a2 <= 0x17)
  {
    var5 = this->var5;
    if (var5)
    {
      var5[a2] = a3;
    }
  }

  return this;
}

void *WrdFontFamilyNameTable::append(WrdFontFamilyNameTable *this, WrdFontFamilyName *a2)
{
  v5 = a2;
  v3 = *(this + 2);
  if (v3 >= *(this + 3))
  {
    result = std::vector<WrdFontFamilyName *,ChAllocator<WrdFontFamilyName *>>::__emplace_back_slow_path<WrdFontFamilyName * const&>(this + 1, &v5);
  }

  else
  {
    *v3 = a2;
    result = v3 + 1;
  }

  *(this + 2) = result;
  return result;
}

void WrdFontFamilyNameTable::~WrdFontFamilyNameTable(WrdFontFamilyNameTable *this)
{
  *this = &unk_286ED4DB8;
  WrdAnnotationDateTimeTable::clear(this);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  WrdFontFamilyNameTable::~WrdFontFamilyNameTable(this);

  JUMPOUT(0x25F897000);
}

void WrdFontFamilyName::~WrdFontFamilyName(WrdFontFamilyName *this)
{
  WrdFontFamilyName::~WrdFontFamilyName(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED4D78;
  var4 = this->var4;
  if (var4)
  {
    MEMORY[0x25F896FE0](var4, 0x1000C8077774924);
  }

  this->var4 = 0;
  var5 = this->var5;
  if (var5)
  {
    MEMORY[0x25F896FE0](var5, 0x1000C8077774924);
  }

  this->var5 = 0;
  CsString::~CsString(&this->var2);
  CsString::~CsString(&this->var1);
}

void WrdDOPTypography::WrdDOPTypography(WrdDOPTypography *this)
{
  *this = &unk_286ED3758;
  *(this + 1) = 0;
  CsString::CsString((this + 16));
  CsString::CsString((this + 40));
  *(this + 32) = 0;
  *(this + 66) &= 0xF0u;
}

void WrdDrawingObjectGrid::WrdDrawingObjectGrid(WrdDrawingObjectGrid *this)
{
  *this = &unk_286ED45A0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = *(this + 20) & 0xFC | 1;
}

void WrdAutoSummaryInfo::WrdAutoSummaryInfo(WrdAutoSummaryInfo *this)
{
  *this = &unk_286ED4130;
  *(this + 1) = 0;
  *(this + 14) = 0;
  *(this + 22) &= 0xF8u;
}

void WrdDateTime::WrdDateTime(WrdDateTime *this)
{
  this->var0 = &unk_286ED44E0;
  *&this->var1 = 0;
  *&this->var3 = 0;
}

void WrdDocumentProperties::WrdDocumentProperties(WrdDocumentProperties *this, WrdDOPTypography *a2, WrdDrawingObjectGrid *a3, WrdAutoSummaryInfo *a4, WrdDateTime *a5, WrdDateTime *a6, WrdDateTime *a7)
{
  this->var0 = &unk_286ED4560;
  WrdDocumentProperties::simpleDefaults(this);
  this->var2 = a2;
  this->var3 = a3;
  this->var4 = a4;
  this->var5 = a5;
  this->var6 = a6;
  this->var7 = a7;
}

double WrdDocumentProperties::simpleDefaults(WrdDocumentProperties *this)
{
  this->var1 = 1;
  *&this->var8 = xmmword_25D70E5E0;
  *&this->var12 = xmmword_25D70E5F0;
  *&this->var16 = xmmword_25D70E600;
  *&this->var20 = 0x300000001;
  *&this->var22 = 0;
  *&this->var24 = 0;
  *&this->var26 = xmmword_25D70E610;
  *(this + 148) = 0x3900189012;
  *(this + 156) = *(this + 156) & 0xFC00000018000000 | 0x20000000000;
  this->var175 = 0;
  this->var177 = 0;
  this->var178 = 0;
  result = 0.0;
  *&this->var156 = 0u;
  *&this->var160 = 0u;
  *&this->var164 = 0u;
  *(&this->var167 + 1) = 0u;
  return result;
}

unint64_t WrdParser::parse(WrdParser *this, WrdDocumentProperties *a2)
{
  started = WrdParser::startFCLCB(this, 0x1Fu);
  v5 = started;
  v6 = HIDWORD(started);
  WrdDocumentProperties::setDefaultBasedOnVersion(a2, *(this + 38), *(this + 186) >> 7);
  v7 = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 148) = *(a2 + 148) & 0xFFFFFFFFFFFFFFF8 | v7 & 1 | v7 & 2 | v7 & 4;
  a2->var8 = (v7 >> 5) & 3;
  v8 = (*(**(this + 16) + 72))(*(this + 16));
  a2->var9 = v8 & 3;
  a2->var33 = v8 >> 2;
  v9 = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 156) = *(a2 + 156) & 0xFFFFFFFE1FFFFFFFLL | ((v9 & 1) << 29) | (((v9 >> 1) & 1) << 30) | (((v9 >> 8) & 1) << 31) | (((v9 >> 9) & 1) << 32);
  *(a2 + 148) = *(a2 + 148) & 0xFFFFFFFFFFFFFE07 | (v9 >> 7) & 0x1F8;
  v10 = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 148) = (*(a2 + 148) & 0xFFFFFFFFFF8001FFLL | (v10 << 9) & 0x200 | (v10 << 9) & 0xC00 | (v10 << 9) & 0x7000 | (v10 << 8) & 0x8000 | ((v10 >> 14) << 21) & 0xFFFFFFFFFFBFFFFFLL | (((v10 >> 8) & 1) << 16) | (((v10 >> 9) & 1) << 17) | (((v10 >> 10) & 1) << 18) | (((v10 >> 11) & 1) << 19) | (((v10 >> 12) & 1) << 20)) + (((v10 >> 15) & 1) << 22);
  if (*(this + 92) < 0x67u)
  {
    goto LABEL_6;
  }

  v11 = (*(**(this + 16) + 72))(*(this + 16));
  if (*(this + 38) <= 7)
  {
    v12 = vdup_n_s32(v11);
    v13 = vshl_u32(vand_s8(v12, 0xFFFF0000FFFFLL), 0xFFFFFFFDFFFFFFFFLL);
    v14 = vmovl_u16(vand_s8(vshl_u16(vdup_n_s16(v11), 0xFFF9FFFAFFFCFFFBLL), 0x1000100010001));
    v15.i64[0] = v14.u32[0];
    v15.i64[1] = v14.u32[1];
    v16 = v15;
    v15.i64[0] = v14.u32[2];
    v15.i64[1] = v14.u32[3];
    v17 = vorrq_s8(vshlq_u64(v16, xmmword_25D70F080), vshlq_u64(v15, xmmword_25D70F070));
    v12.i32[1] = v11 >> 2;
    v18 = vand_s8(v12, 0x100000001);
    v15.i64[0] = v18.u32[0];
    v15.i64[1] = v18.u32[1];
    v19 = vshlq_u64(v15, xmmword_25D70F090);
    v20 = vand_s8(v13, 0x100000001);
    v15.i64[0] = v20.u32[0];
    v15.i64[1] = v20.u32[1];
    v21 = vorrq_s8(v19, vshlq_u64(v15, xmmword_25D70F0A0));
    *(a2 + 148) = (*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | (((v11 >> 8) & 1) << 49) | (((v11 >> 10) & 1) << 51) | (((v11 >> 9) & 1) << 50) | vorrq_s8(v21, vdupq_laneq_s64(v21, 1)).u64[0] | *(a2 + 148) & 0xFFE001FFFFFFFFFFLL) + (((v11 >> 11) & 1) << 52);
  }

  if (*(this + 92) < 0x6Au)
  {
LABEL_6:
    v25 = 0;
  }

  else
  {
    a2->var30 = (*(**(this + 16) + 80))(*(this + 16));
    (*(**(this + 16) + 80))(*(this + 16));
    a2->var31 = (*(**(this + 16) + 80))(*(this + 16));
    a2->var32 = (*(**(this + 16) + 80))(*(this + 16));
    (*(**(this + 16) + 80))(*(this + 16));
    WrdBaseParser::parseStream(this, a2->var5, *(this + 16));
    WrdBaseParser::parseStream(this, a2->var6, *(this + 16));
    WrdBaseParser::parseStream(this, a2->var7, *(this + 16));
    a2->var169 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var156 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var157 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var158 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var170 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var159 = (*(**(this + 16) + 96))(*(this + 16));
    v22 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var10 = v22 & 3;
    a2->var1 = v22 >> 2;
    v23 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var11 = v23 & 3;
    *&a2->var12 = vand_s8(vshl_u32(vdup_n_s32(v23), 0xFFFFFFFAFFFFFFFELL), 0xF0000000FLL);
    *(a2 + 148) = *(a2 + 148) & 0xFFFFFFFFF87FFFFFLL | (((v23 >> 10) & 1) << 23) | (((v23 >> 11) & 1) << 24) | (((v23 >> 12) & 1) << 25) | v23 & 0x4000000;
    a2->var160 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var161 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var162 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var171 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var163 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var164 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var23 = (*(**(this + 16) + 96))(*(this + 16));
    v24 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var26 = (v24 >> 3) & 0x1FF;
    a2->var14 = v24 & 7;
    a2->var15 = (v24 >> 12) & 3;
    *(a2 + 148) = *(a2 + 148) & 0xFFFFFFFF7FFFFFFFLL | (((v24 & 0x4000) != 0) << 31);
    a2->var17 = (v24 >> 15) & 1;
    v25 = (*(**(this + 16) + 104))(*(this + 16));
  }

  v26 = *(this + 38);
  if (v26 == 8 || v26 == -1)
  {
    if (v25)
    {
      *(a2 + 148) |= 0x20000000000uLL;
      if ((v25 & 2) == 0)
      {
LABEL_11:
        if ((v25 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_109;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_11;
    }

    *(a2 + 148) |= 0x40000000000uLL;
    if ((v25 & 4) == 0)
    {
LABEL_12:
      if ((v25 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_110;
    }

LABEL_109:
    *(a2 + 148) |= 0x80000000000uLL;
    if ((v25 & 8) == 0)
    {
LABEL_13:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_111;
    }

LABEL_110:
    *(a2 + 148) |= 0x100000000000uLL;
    if ((v25 & 0x10) == 0)
    {
LABEL_14:
      if ((v25 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_112;
    }

LABEL_111:
    *(a2 + 148) |= 0x200000000000uLL;
    if ((v25 & 0x20) == 0)
    {
LABEL_15:
      if ((v25 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_113;
    }

LABEL_112:
    *(a2 + 148) |= 0x400000000000uLL;
    if ((v25 & 0x40) == 0)
    {
LABEL_16:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_114;
    }

LABEL_113:
    *(a2 + 148) |= 0x800000000000uLL;
    if ((v25 & 0x80) == 0)
    {
LABEL_17:
      if ((v25 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_115;
    }

LABEL_114:
    *(a2 + 148) |= 0x1000000000000uLL;
    if ((v25 & 0x100) == 0)
    {
LABEL_18:
      if ((v25 & 0x200) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_116;
    }

LABEL_115:
    *(a2 + 148) |= 0x2000000000000uLL;
    if ((v25 & 0x200) == 0)
    {
LABEL_19:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_117;
    }

LABEL_116:
    *(a2 + 148) |= 0x4000000000000uLL;
    if ((v25 & 0x400) == 0)
    {
LABEL_20:
      if ((v25 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_118;
    }

LABEL_117:
    *(a2 + 148) |= 0x8000000000000uLL;
    if ((v25 & 0x800) == 0)
    {
LABEL_21:
      if ((v25 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_119;
    }

LABEL_118:
    *(a2 + 148) |= 0x10000000000000uLL;
    if ((v25 & 0x1000) == 0)
    {
LABEL_22:
      if ((v25 & 0x2000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_120;
    }

LABEL_119:
    *(a2 + 148) |= 0x20000000000000uLL;
    if ((v25 & 0x2000) == 0)
    {
LABEL_23:
      if ((v25 & 0x4000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_121;
    }

LABEL_120:
    *(a2 + 148) |= 0x40000000000000uLL;
    if ((v25 & 0x4000) == 0)
    {
LABEL_24:
      if ((v25 & 0x8000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_122;
    }

LABEL_121:
    *(a2 + 148) |= 0x80000000000000uLL;
    if ((v25 & 0x8000) == 0)
    {
LABEL_25:
      if ((v25 & 0x10000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_123;
    }

LABEL_122:
    *(a2 + 148) |= 0x100000000000000uLL;
    if ((v25 & 0x10000) == 0)
    {
LABEL_26:
      if ((v25 & 0x20000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_124;
    }

LABEL_123:
    *(a2 + 148) |= 0x200000000000000uLL;
    if ((v25 & 0x20000) == 0)
    {
LABEL_27:
      if ((v25 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_125;
    }

LABEL_124:
    *(a2 + 148) |= 0x400000000000000uLL;
    if ((v25 & 0x40000) == 0)
    {
LABEL_28:
      if ((v25 & 0x80000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_126;
    }

LABEL_125:
    *(a2 + 148) |= 0x800000000000000uLL;
    if ((v25 & 0x80000) == 0)
    {
LABEL_29:
      if ((v25 & 0x100000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_127;
    }

LABEL_126:
    *(a2 + 148) |= 0x1000000000000000uLL;
    if ((v25 & 0x100000) == 0)
    {
LABEL_30:
      if ((v25 & 0x200000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_128;
    }

LABEL_127:
    *(a2 + 148) |= 0x2000000000000000uLL;
    if ((v25 & 0x200000) == 0)
    {
LABEL_31:
      if ((v25 & 0x400000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_129;
    }

LABEL_128:
    *(a2 + 148) |= 0x4000000000000000uLL;
    if ((v25 & 0x400000) == 0)
    {
LABEL_32:
      if ((v25 & 0x800000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_130;
    }

LABEL_129:
    *(a2 + 148) |= 0x8000000000000000;
    if ((v25 & 0x800000) == 0)
    {
LABEL_33:
      if ((v25 & 0x1000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_131;
    }

LABEL_130:
    *(a2 + 156) |= 1uLL;
    if ((v25 & 0x1000000) == 0)
    {
LABEL_34:
      if ((v25 & 0x2000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_132;
    }

LABEL_131:
    *(a2 + 156) |= 2uLL;
    if ((v25 & 0x2000000) == 0)
    {
LABEL_35:
      if ((v25 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_133;
    }

LABEL_132:
    *(a2 + 156) |= 4uLL;
    if ((v25 & 0x4000000) == 0)
    {
LABEL_36:
      if ((v25 & 0x8000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_134;
    }

LABEL_133:
    *(a2 + 156) |= 8uLL;
    if ((v25 & 0x8000000) == 0)
    {
LABEL_37:
      if ((v25 & 0x10000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_135;
    }

LABEL_134:
    *(a2 + 156) |= 0x10uLL;
    if ((v25 & 0x10000000) == 0)
    {
LABEL_38:
      if ((v25 & 0x20000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_136;
    }

LABEL_135:
    *(a2 + 156) |= 0x20uLL;
    if ((v25 & 0x20000000) == 0)
    {
LABEL_39:
      if ((v25 & 0x40000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_137;
    }

LABEL_136:
    *(a2 + 156) |= 0x40uLL;
    if ((v25 & 0x40000000) == 0)
    {
LABEL_40:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

LABEL_138:
      *(a2 + 156) |= 0x100uLL;
      goto LABEL_41;
    }

LABEL_137:
    *(a2 + 156) |= 0x80uLL;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_138;
  }

LABEL_41:
  if ((*(**(this + 16) + 40))(*(this + 16)) - v5 < v6)
  {
    a2->var16 = (*(**(this + 16) + 72))(*(this + 16));
    WrdParser::parse(this, a2->var2);
    WrdParser::parse(this, a2->var3);
    v27 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var18 = (v27 >> 1) & 0xF;
    *(a2 + 156) = ((v27 >> 14 << 25) | (((v27 >> 13) & 1) << 24)) & 0xFBFFFFFF | *(a2 + 156) & 0xFFFFFFF9F80FFFFFLL | (((v27 >> 5) & 1) << 33) | (((v27 >> 6) & 1) << 34) | (((v27 >> 7) & 1) << 20) & 0xFFFFFFFFFBFFFFFFLL | (((v27 >> 9) & 1) << 21) & 0xFFFFFFFFFBFFFFFFLL | (((v27 >> 11) & 1) << 22) & 0xFFFFFFFFFBFFFFFFLL | (((v27 >> 12) & 1) << 23) & 0xFFFFFFFFFBFFFFFFLL | v27 & 0x4000000;
    v28 = (*(**(this + 16) + 72))(*(this + 16));
    *(a2 + 156) = *(a2 + 156) & 0xFFFFFFFFE7FFFFFFLL | ((v28 & 1) << 27) | (((v28 >> 1) & 1) << 28);
    WrdParser::parse(this, a2->var4);
    a2->var165 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var166 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var22 = (*(**(this + 16) + 96))(*(this + 16));
    v29 = (*(**(this + 16) + 96))(*(this + 16));
    *(a2 + 156) = *(a2 + 156) & 0xFFFFFFE7FFFFFFFFLL | ((v29 & 1) << 35) | (((v29 >> 1) & 1) << 36);
    (*(**(this + 16) + 16))(*(this + 16), 30, 1);
    (*(**(this + 16) + 16))(*(this + 16), 8, 1);
    a2->var167 = (*(**(this + 16) + 96))(*(this + 16));
    a2->var168 = (*(**(this + 16) + 96))(*(this + 16));
    (*(**(this + 16) + 16))(*(this + 16), 4, 1);
    a2->var12 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var13 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var24 = (*(**(this + 16) + 72))(*(this + 16));
    a2->var25 = (*(**(this + 16) + 72))(*(this + 16));
  }

  if ((*(**(this + 16) + 40))(*(this + 16)) - v5 < v6)
  {
    (*(**(this + 16) + 16))(*(this + 16), 2, 1);
    a2->var27 = (*(**(this + 16) + 80))(*(this + 16));
    v30 = (*(**(this + 16) + 80))(*(this + 16));
    *(a2 + 148) = ((((v30 >> 9) & 1) << 32) | (((v30 >> 10) & 1) << 33) | *(a2 + 148) & 0xFFFFFFF887FFFFFFLL | ((v30 & 1) << 27) | (((v30 >> 1) & 1) << 28) | (((v30 >> 2) & 1) << 29) | (((v30 >> 3) & 1) << 30)) + (((v30 >> 11) & 1) << 34);
    a2->var174 = v30 >> 12;
    v31 = (*(**(this + 16) + 80))(*(this + 16));
    v32 = *(a2 + 148) & 0xFFFFFE07FFFFFFFFLL | ((v31 & 1) << 35) | (((v31 >> 1) & 1) << 36);
    a2->var29 = (v31 >> 2) & 0x3FF;
    *(a2 + 148) = v32 | (((v31 >> 12) & 1) << 37) | (((v31 >> 13) & 1) << 38) | (v31 << 25) & 0x8000000000 | ((v31 >> 15) << 40);
    v33 = (*(**(this + 16) + 104))(*(this + 16));
    if (v33)
    {
      *(a2 + 148) |= 0x20000000000uLL;
      if ((v33 & 2) == 0)
      {
LABEL_46:
        if ((v33 & 4) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_141;
      }
    }

    else if ((v33 & 2) == 0)
    {
      goto LABEL_46;
    }

    *(a2 + 148) |= 0x40000000000uLL;
    if ((v33 & 4) == 0)
    {
LABEL_47:
      if ((v33 & 8) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_142;
    }

LABEL_141:
    *(a2 + 148) |= 0x80000000000uLL;
    if ((v33 & 8) == 0)
    {
LABEL_48:
      if ((v33 & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_143;
    }

LABEL_142:
    *(a2 + 148) |= 0x100000000000uLL;
    if ((v33 & 0x10) == 0)
    {
LABEL_49:
      if ((v33 & 0x20) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_144;
    }

LABEL_143:
    *(a2 + 148) |= 0x200000000000uLL;
    if ((v33 & 0x20) == 0)
    {
LABEL_50:
      if ((v33 & 0x40) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_145;
    }

LABEL_144:
    *(a2 + 148) |= 0x400000000000uLL;
    if ((v33 & 0x40) == 0)
    {
LABEL_51:
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_146;
    }

LABEL_145:
    *(a2 + 148) |= 0x800000000000uLL;
    if ((v33 & 0x80) == 0)
    {
LABEL_52:
      if ((v33 & 0x100) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_147;
    }

LABEL_146:
    *(a2 + 148) |= 0x1000000000000uLL;
    if ((v33 & 0x100) == 0)
    {
LABEL_53:
      if ((v33 & 0x200) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_148;
    }

LABEL_147:
    *(a2 + 148) |= 0x2000000000000uLL;
    if ((v33 & 0x200) == 0)
    {
LABEL_54:
      if ((v33 & 0x400) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_149;
    }

LABEL_148:
    *(a2 + 148) |= 0x4000000000000uLL;
    if ((v33 & 0x400) == 0)
    {
LABEL_55:
      if ((v33 & 0x800) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_150;
    }

LABEL_149:
    *(a2 + 148) |= 0x8000000000000uLL;
    if ((v33 & 0x800) == 0)
    {
LABEL_56:
      if ((v33 & 0x1000) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_151;
    }

LABEL_150:
    *(a2 + 148) |= 0x10000000000000uLL;
    if ((v33 & 0x1000) != 0)
    {
LABEL_57:
      if ((v33 & 0x2000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_152;
    }

LABEL_151:
    *(a2 + 148) &= ~0x20000000000000uLL;
    if ((v33 & 0x2000) == 0)
    {
LABEL_58:
      if ((v33 & 0x4000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_153;
    }

LABEL_152:
    *(a2 + 148) |= 0x40000000000000uLL;
    if ((v33 & 0x4000) == 0)
    {
LABEL_59:
      if ((v33 & 0x8000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_154;
    }

LABEL_153:
    *(a2 + 148) |= 0x80000000000000uLL;
    if ((v33 & 0x8000) == 0)
    {
LABEL_60:
      if ((v33 & 0x10000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_155;
    }

LABEL_154:
    *(a2 + 148) |= 0x100000000000000uLL;
    if ((v33 & 0x10000) == 0)
    {
LABEL_61:
      if ((v33 & 0x20000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_156;
    }

LABEL_155:
    *(a2 + 148) |= 0x200000000000000uLL;
    if ((v33 & 0x20000) == 0)
    {
LABEL_62:
      if ((v33 & 0x40000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_157;
    }

LABEL_156:
    *(a2 + 148) |= 0x400000000000000uLL;
    if ((v33 & 0x40000) == 0)
    {
LABEL_63:
      if ((v33 & 0x80000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_158;
    }

LABEL_157:
    *(a2 + 148) |= 0x800000000000000uLL;
    if ((v33 & 0x80000) == 0)
    {
LABEL_64:
      if ((v33 & 0x100000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_159;
    }

LABEL_158:
    *(a2 + 148) |= 0x1000000000000000uLL;
    if ((v33 & 0x100000) == 0)
    {
LABEL_65:
      if ((v33 & 0x200000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_160;
    }

LABEL_159:
    *(a2 + 148) |= 0x2000000000000000uLL;
    if ((v33 & 0x200000) == 0)
    {
LABEL_66:
      if ((v33 & 0x400000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_161;
    }

LABEL_160:
    *(a2 + 148) |= 0x4000000000000000uLL;
    if ((v33 & 0x400000) == 0)
    {
LABEL_67:
      if ((v33 & 0x800000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_162;
    }

LABEL_161:
    *(a2 + 148) |= 0x8000000000000000;
    if ((v33 & 0x800000) == 0)
    {
LABEL_68:
      if ((v33 & 0x1000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_163;
    }

LABEL_162:
    *(a2 + 156) |= 1uLL;
    if ((v33 & 0x1000000) == 0)
    {
LABEL_69:
      if ((v33 & 0x2000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_164;
    }

LABEL_163:
    *(a2 + 156) |= 2uLL;
    if ((v33 & 0x2000000) == 0)
    {
LABEL_70:
      if ((v33 & 0x4000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_165;
    }

LABEL_164:
    *(a2 + 156) |= 4uLL;
    if ((v33 & 0x4000000) == 0)
    {
LABEL_71:
      if ((v33 & 0x8000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_166;
    }

LABEL_165:
    *(a2 + 156) |= 8uLL;
    if ((v33 & 0x8000000) == 0)
    {
LABEL_72:
      if ((v33 & 0x10000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_167;
    }

LABEL_166:
    *(a2 + 156) |= 0x10uLL;
    if ((v33 & 0x10000000) == 0)
    {
LABEL_73:
      if ((v33 & 0x20000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_168;
    }

LABEL_167:
    *(a2 + 156) |= 0x20uLL;
    if ((v33 & 0x20000000) == 0)
    {
LABEL_74:
      if ((v33 & 0x40000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_169;
    }

LABEL_168:
    *(a2 + 156) |= 0x40uLL;
    if ((v33 & 0x40000000) == 0)
    {
LABEL_75:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

LABEL_170:
      *(a2 + 156) |= 0x100uLL;
LABEL_76:
      v34 = (*(**(this + 16) + 104))(*(this + 16));
      if (v34)
      {
        *(a2 + 156) |= 0x200uLL;
        if ((v34 & 2) == 0)
        {
LABEL_78:
          if ((v34 & 4) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_173;
        }
      }

      else if ((v34 & 2) == 0)
      {
        goto LABEL_78;
      }

      *(a2 + 156) |= 0x400uLL;
      if ((v34 & 4) == 0)
      {
LABEL_79:
        if ((v34 & 8) != 0)
        {
          goto LABEL_80;
        }

        goto LABEL_174;
      }

LABEL_173:
      *(a2 + 156) |= 0x800uLL;
      if ((v34 & 8) != 0)
      {
LABEL_80:
        if ((v34 & 0x10) == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_175;
      }

LABEL_174:
      *(a2 + 156) &= ~0x1000uLL;
      if ((v34 & 0x10) == 0)
      {
LABEL_81:
        if ((v34 & 0x20) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_176;
      }

LABEL_175:
      *(a2 + 156) |= 0x2000uLL;
      if ((v34 & 0x20) == 0)
      {
LABEL_82:
        if ((v34 & 0x40) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_177;
      }

LABEL_176:
      *(a2 + 156) |= 0x4000uLL;
      if ((v34 & 0x40) == 0)
      {
LABEL_83:
        if ((v34 & 0x80) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_178;
      }

LABEL_177:
      *(a2 + 156) |= 0x8000uLL;
      if ((v34 & 0x80) == 0)
      {
LABEL_84:
        if ((v34 & 0x100) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_179;
      }

LABEL_178:
      *(a2 + 156) |= 0x10000uLL;
      if ((v34 & 0x100) == 0)
      {
LABEL_85:
        if ((v34 & 0x200) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_180;
      }

LABEL_179:
      *(a2 + 156) |= 0x20000uLL;
      if ((v34 & 0x200) == 0)
      {
LABEL_86:
        if ((v34 & 0x400) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_181;
      }

LABEL_180:
      *(a2 + 156) |= 0x40000uLL;
      if ((v34 & 0x400) == 0)
      {
LABEL_87:
        if ((v34 & 0x800) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_182;
      }

LABEL_181:
      *(a2 + 156) |= 0x80000uLL;
      if ((v34 & 0x800) == 0)
      {
LABEL_88:
        if ((v34 & 0x1000) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_183;
      }

LABEL_182:
      *(a2 + 156) |= 0x1000000000000uLL;
      if ((v34 & 0x1000) == 0)
      {
LABEL_89:
        if ((v34 & 0x2000) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_184;
      }

LABEL_183:
      *(a2 + 156) |= 0x4000000000000uLL;
      if ((v34 & 0x2000) == 0)
      {
LABEL_90:
        if ((v34 & 0x4000) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_185;
      }

LABEL_184:
      *(a2 + 156) |= 0x8000000000000uLL;
      if ((v34 & 0x4000) == 0)
      {
LABEL_91:
        if ((v34 & 0x8000) == 0)
        {
LABEL_93:
          (*(**(this + 16) + 16))(*(this + 16), 24, 1);
          v35 = (*(**(this + 16) + 104))(*(this + 16));
          a2->var28 = v35;
          *(a2 + 156) = *(a2 + 156) & 0xFFBFBFFFFFFFFFFFLL | ((HIWORD(v35) & 1) << 46) | (((v35 >> 23) & 1) << 54);
          goto LABEL_94;
        }

LABEL_92:
        *(a2 + 156) |= 0x800000000000uLL;
        goto LABEL_93;
      }

LABEL_185:
      *(a2 + 156) |= 0x2000000000000uLL;
      if ((v34 & 0x8000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

LABEL_169:
    *(a2 + 156) |= 0x80uLL;
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_170;
  }

LABEL_94:
  if ((*(**(this + 16) + 40))(*(this + 16)) - v5 < v6)
  {
    (*(**(this + 16) + 16))(*(this + 16), 4, 1);
    v36 = (*(**(this + 16) + 64))(*(this + 16));
    *(a2 + 156) = *(a2 + 156) & 0xFFCFFFFFFFFFFFFFLL | (((v36 >> 6) & 1) << 52) | ((v36 >> 7) << 53);
    v37 = (*(**(this + 16) + 64))(*(this + 16));
    *(a2 + 156) = *(a2 + 156) & 0xFFFFFE1FFFFFFFFFLL | (((v37 >> 4) & 1) << 37) & 0xFFFFFF7FFFFFFFFFLL | (((v37 >> 5) & 1) << 38) & 0xFFFFFF7FFFFFFFFFLL | (((v37 >> 6) & 1) << 39) | ((v37 >> 7) << 40);
    (*(**(this + 16) + 16))(*(this + 16), 4, 1);
    a2->var20 = (*(**(this + 16) + 64))(*(this + 16));
    v38 = (*(**(this + 16) + 64))(*(this + 16));
    *(a2 + 156) = *(a2 + 156) & 0xFFFFC1FFFFFFFFFFLL | ((v38 & 1) << 43) | (((v38 >> 1) & 1) << 44) | (((v38 >> 2) & 1) << 45) | (((v38 >> 4) & 1) << 42) | (((v38 >> 5) & 1) << 41);
    a2->var19 = (*(**(this + 16) + 80))(*(this + 16));
    (*(**(this + 16) + 16))(*(this + 16), 36, 1);
  }

  result = (*(**(this + 16) + 40))(*(this + 16));
  if (result - v5 < v6)
  {
    v40 = (*(**(this + 16) + 64))(*(this + 16));
    *(a2 + 156) = *(a2 + 156) & 0xFE7FFFFFFFFFFFFFLL | (((v40 >> 1) & 1) << 55) | (((v40 >> 2) & 1) << 56);
    (*(**(this + 16) + 64))(*(this + 16));
    (*(**(this + 16) + 64))(*(this + 16));
    (*(**(this + 16) + 64))(*(this + 16));
    result = (*(**(this + 16) + 64))(*(this + 16));
    *(a2 + 156) = *(a2 + 156) & 0xFDFFFFFFFFFFFFFFLL | (((result & 8) != 0) << 57);
    a2->var21 = result >> 4;
  }

  if (v6 <= 0x220)
  {
    *(a2 + 156) |= 0x3DC000000000 | (*(a2 + 148) << 18) & 0x2000000000;
  }

  if (*(this + 116) >= 0xB5u)
  {
    result = WrdParser::startFCLCB(this, 0xB5u) >> 32;
    if (result)
    {
      operator new[](result);
    }

    if (*(this + 116) >= 0xB6u)
    {
      result = WrdParser::startFCLCB(this, 0xB6u) >> 32;
      if (result)
      {
        operator new[](result);
      }
    }
  }

  return result;
}

uint64_t WrdDocumentProperties::setDefaultBasedOnVersion(uint64_t result, int a2, char a3)
{
  if (a2 > 9)
  {
    if ((a2 - 10) >= 2)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (a2 == -1)
  {
LABEL_7:
    v3 = *(result + 156) | 0x1000;
LABEL_8:
    *(result + 156) = v3;
    if (a3)
    {
      return result;
    }

    v4 = 0x20000000000000;
    goto LABEL_10;
  }

  if (a2 != 8)
  {
    if (a2 != 9)
    {
      return result;
    }

    v3 = *(result + 156) | 0x7800000081000;
    goto LABEL_8;
  }

  *(result + 156) |= 0x78000000FBE00uLL;
  if ((a3 & 1) == 0)
  {
    v4 = 0x21E0000000000000;
LABEL_10:
    *(result + 148) |= v4;
  }

  return result;
}

uint64_t WrdBaseParser::parseStream(WrdBaseParser *this, WrdDateTime *a2, SsrwOOStream *a3)
{
  v5 = (*(a3->var0 + 9))(a3);
  a2->var2 = v5 & 0x3F;
  a2->var3 = (v5 >> 6) & 0x1F;
  a2->var4 = v5 >> 11;
  result = (*(a3->var0 + 9))(a3);
  v7 = result >> 13;
  a2->var1 = v7;
  a2->var5 = result & 0xF;
  a2->var6 = (result >> 4) & 0x1FF;
  if (a2->var2 > 0x3Bu || a2->var3 > 0x17u || a2->var4 > 0x1Fu || ((result & 0xFu) <= 0xC ? (v8 = v7 == 7) : (v8 = 1), v8))
  {
    *&a2->var3 = 0;
    *&a2->var1 = 0;
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdDOPTypography *a2)
{
  v4 = (*(**(this + 16) + 72))(*(this + 16));
  v5 = *(a2 + 66) & 0xF0 | v4 & 1;
  *(a2 + 1) = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFFDFFFFFFFFLL), 0x300000003);
  *(a2 + 32) = (v4 >> 7) & 7;
  *(a2 + 66) = (v4 >> 4) & 6 | v5 | (v4 >> 7) & 8;
  v6 = (*(**(this + 16) + 72))(*(this + 16));
  result = (*(**(this + 16) + 72))(*(this + 16));
  if ((v6 & 0x80000000) == 0)
  {
    v8 = result;
    if ((result & 0x80000000) == 0)
    {
      CsString::reserve((a2 + 16), v6);
      CsString::setCount((a2 + 16), v6);
      CsString::reserve((a2 + 40), v8);
      CsString::setCount((a2 + 40), v8);
      v9 = *(a2 + 3);
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v6)
      {
        v10 = v6;
        do
        {
          *v9++ = (*(**(this + 16) + 128))(*(this + 16));
          --v10;
        }

        while (v10);
      }

      (*(**(this + 16) + 16))(*(this + 16), 2 * (WrdDOPTypography::s_bMaximumNumberOfCharactersThatShouldNeverAppearAtFront - v6), 1);
      v11 = *(a2 + 6);
      if (!v11)
      {
LABEL_15:
        exception = __cxa_allocate_exception(4uLL);
        *exception = 2001;
      }

      if (v8 >= 1)
      {
        v12 = v8;
        do
        {
          *v11++ = (*(**(this + 16) + 128))(*(this + 16));
          --v12;
        }

        while (v12);
      }

      v13 = *(**(this + 16) + 16);

      return v13();
    }
  }

  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdDrawingObjectGrid *a2)
{
  *(a2 + 4) = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 5) = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 6) = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 7) = (*(**(this + 16) + 72))(*(this + 16));
  result = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 8) = result & 0x7F;
  v5 = *(a2 + 20) & 0xFC | (result >> 7) & 1;
  *(a2 + 9) = (result >> 8) & 0x7F;
  *(a2 + 20) = v5 | (result >> 14) & 2;
  return result;
}

uint64_t WrdParser::parse(WrdParser *this, WrdAutoSummaryInfo *a2)
{
  v4 = (*(**(this + 16) + 72))(*(this + 16));
  v5 = *(a2 + 22) & 0xF8 | v4 & 3;
  *(a2 + 2) = (v4 >> 2) & 3;
  *(a2 + 22) = v5 | (v4 >> 2) & 4;
  *(a2 + 10) = (*(**(this + 16) + 72))(*(this + 16));
  *(a2 + 3) = (*(**(this + 16) + 96))(*(this + 16));
  result = (*(**(this + 16) + 96))(*(this + 16));
  *(a2 + 4) = result;
  return result;
}

void WrdDOPTypography::WrdDOPTypography(WrdDOPTypography *this, const WrdDOPTypography *a2)
{
  *this = &unk_286ED3758;
  v4 = (this + 40);
  CsString::CsString((this + 16));
  CsString::CsString(v4);
  WrdDOPTypography::operator=(this, a2);
}

void sub_25D2D92C8(_Unwind_Exception *a1)
{
  CsString::~CsString(v2);
  CsString::~CsString((v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t WrdDOPTypography::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 66) & 0xFE | *(a2 + 66) & 1;
  *(a1 + 66) = v4;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*(a2 + 66) >> 1) & 1));
  *(a1 + 66) = v5;
  v6 = v5 & 0xFFFFFFFB | (4 * ((*(a2 + 66) >> 2) & 1));
  *(a1 + 66) = v6;
  *(a1 + 66) = v6 & 0xF7 | *(a2 + 66) & 8;
  *(a1 + 32) = 0;
  bzero(*(a1 + 24), 2 * *(a1 + 36));
  CsString::append((a1 + 16), (a2 + 16));
  *(a1 + 56) = 0;
  bzero(*(a1 + 48), 2 * *(a1 + 60));
  CsString::append((a1 + 40), (a2 + 40));
  return a1;
}

void WrdDocumentProperties::~WrdDocumentProperties(WrdDocumentProperties *this)
{
  WrdDocumentProperties::~WrdDocumentProperties(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED4560;
  var2 = this->var2;
  if (var2)
  {
    (*(*var2 + 8))(var2);
  }

  this->var2 = 0;
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 8))(var3);
  }

  this->var3 = 0;
  var4 = this->var4;
  if (var4)
  {
    (*(*var4 + 8))(var4);
  }

  this->var4 = 0;
  var5 = this->var5;
  if (var5)
  {
    (*(var5->var0 + 1))(var5);
  }

  this->var5 = 0;
  var6 = this->var6;
  if (var6)
  {
    (*(var6->var0 + 1))(var6);
  }

  this->var6 = 0;
  var7 = this->var7;
  if (var7)
  {
    (*(var7->var0 + 1))(var7);
  }

  this->var7 = 0;
  var175 = this->var175;
  if (var175)
  {
    MEMORY[0x25F896FE0](var175, 0x1000C8077774924);
  }

  this->var175 = 0;
  var177 = this->var177;
  if (var177)
  {
    MEMORY[0x25F896FE0](var177, 0x1000C8077774924);
  }

  this->var177 = 0;
}

void WrdDOPTypography::~WrdDOPTypography(WrdDOPTypography *this)
{
  *this = &unk_286ED3758;
  v1 = (this + 16);
  CsString::~CsString((this + 40));
  CsString::~CsString(v1);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED3758;
  v1 = (this + 16);
  CsString::~CsString((this + 40));
  CsString::~CsString(v1);
}

uint64_t WrdBinaryReader::read(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 152);
  LODWORD(v2) = *(v2 + 160);
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t WrdBinaryReader::getRootStorage(WrdBinaryReader *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1006;
  }

  return v1 + 24;
}

void OcHyperlink::OcHyperlink(OcHyperlink *this)
{
  *this = &unk_286EC8878;
  v1 = (this + 48);
  CsString::CsString(this + 1);
  CsString::CsString(v1);
}

void OcHyperlink::~OcHyperlink(CsString *this)
{
  this->var0 = &unk_286EC8878;
  v1 = this + 1;
  CsString::~CsString(this + 2);
  CsString::~CsString(v1);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EC8878;
  v1 = this + 1;
  CsString::~CsString(this + 2);
  CsString::~CsString(v1);
}

void WrdShading::WrdShading(WrdShading *this)
{
  this->var0 = &unk_286ED5728;
  *&v2 = 255;
  *(&v2 + 1) = 255;
  *&this->var3.var0 = v2;
  this->var1 = 0;
  this->var2 = 0;
  WrdProperty::convertWord97ColorEnumToColor(0, &this->var3);
  WrdProperty::convertWord97ColorEnumToColor(0, &this->var4);
  this->var5 = 0;
  *&this->var6 = 0;
}

uint64_t WrdProperty::convertWord97ColorEnumToColor(uint64_t result, uint64_t a2)
{
  if (result <= 16)
  {
    v2 = result;
  }

  else
  {
    v2 = 31;
  }

  if (v2)
  {
    if (v2 == 31)
    {
      *a2 = 0xFF00FF00FF0000;
    }

    else
    {
      v3 = &WrdProperty::s_word97Colors + 16 * v2;
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      LODWORD(v3) = *(v3 - 1);
      *a2 = 255;
      *(a2 + 2) = v4;
      *(a2 + 4) = v5;
      *(a2 + 6) = v3;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void WrdDropCap::WrdDropCap(WrdDropCap *this)
{
  *this = &unk_286ED45E0;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

void WrdBorder::WrdBorder(WrdBorder *this)
{
  this->var0 = &unk_286ED4228;
  this->var1.var0 = 255;
  *&this->var6 = 0;
  *&this->var1.var1 = 0;
  HIWORD(this->var2) = 0;
  *(this + 24) &= 0xFCu;
  WrdProperty::convertWord97ColorEnumToColor(0, &this->var1);
  this->var3 = 0;
}

void WrdAutoNumberLevelDescriptor::WrdAutoNumberLevelDescriptor(WrdAutoNumberLevelDescriptor *this)
{
  *this = &unk_286ED40A0;
  *(this + 22) = 0;
  *(this + 21) &= 0x8000u;
  *(this + 20) = 0;
  *(this + 4) = 0;
  *(this + 1) = 0u;
  *(this + 1) = 255;
}

void WrdAutoNumberListDescriptor::WrdAutoNumberListDescriptor(WrdAutoNumberListDescriptor *this, WrdAutoNumberLevelDescriptor *a2)
{
  *this = &unk_286ED40E8;
  CsString::CsString((this + 16));
  *(this + 1) = a2;
  (*(*this + 24))(this);
}

uint64_t WrdAutoNumberListDescriptor::reset(WrdAutoNumberListDescriptor *this)
{
  *(this + 41) = 0;
  *(this + 40) &= ~1u;
  *(this + 8) = 0;
  bzero(*(this + 3), 2 * *(this + 9));
  v2 = *(**(this + 1) + 24);

  return v2();
}

double WrdAutoNumberLevelDescriptor::reset(WrdAutoNumberLevelDescriptor *this)
{
  *(this + 22) = 0;
  *(this + 21) &= 0x8000u;
  *(this + 20) = 0;
  *(this + 4) = 0;
  *(this + 1) = 0u;
  *&result = 255;
  *(this + 1) = 255;
  return result;
}

void WrdNumberRevisionMarkData::WrdNumberRevisionMarkData(WrdNumberRevisionMarkData *this, WrdDateTime *a2)
{
  *this = &unk_286ED5220;
  CsString::CsString((this + 8));
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 66) &= ~1u;
  *(this + 4) = a2;
  *(this + 5) = 0;
}

void *WrdNumberRevisionMarkData::init(void *this)
{
  if (!this[4])
  {
    operator new();
  }

  if (!this[6] && !this[7] && !this[5])
  {
    operator new[](36);
  }

  return this;
}

uint64_t WrdParagraphProperties::reset(WrdParagraphProperties *this)
{
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 300) = 9;
  v1 = (this + 294);
  v2 = *(this + 294) & 0xFFFFFFFC;
  *(this + 294) = v2;
  *(this + 21) = 0;
  *(this + 17) = 0;
  v3 = *(this + 25);
  if (v3)
  {
    v4 = *(this + 26);
    if (v4)
    {
      v5 = *(this + 27);
      if (v5)
      {
        for (i = 0; i != 128; i += 2)
        {
          *(v3 + i) = 0;
          *(v4 + i) = 0;
          *(v5 + i) = 0;
        }

        v2 = *v1;
      }
    }
  }

  *(this + 31) = 0;
  v7 = this + 248;
  *(this + 9) = xmmword_25D70EA30;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 149) = 2304;
  *(this + 236) = 0;
  *(this + 20) = 0;
  *(this + 61) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0u;
  *v1 = v2 & 0xC0000003 | 0x200;
  *(this + 146) = 0;
  WrdShading::reset(*(this + 4));
  WrdLineSpaceDescriptor::reset(*(v7 - 26));
  WrdDropCap::reset(*(v7 - 25));
  (*(**(v7 - 24) + 24))(*(v7 - 24));
  (*(**(v7 - 23) + 24))(*(v7 - 23));
  (*(**(v7 - 22) + 24))(*(v7 - 22));
  (*(**(v7 - 21) + 24))(*(v7 - 21));
  (*(**(v7 - 20) + 24))(*(v7 - 20));
  (*(**(v7 - 19) + 24))(*(v7 - 19));
  (*(**(v7 - 18) + 24))(*(v7 - 18));
  (*(**(v7 - 17) + 24))(*(v7 - 17));
  v8 = *(v7 - 16);

  return WrdNumberRevisionMarkData::reset(v8);
}

uint64_t WrdShading::reset(WrdShading *this)
{
  this->var1 = 0;
  this->var2 = 0;
  WrdProperty::convertWord97ColorEnumToColor(0, &this->var3);
  result = WrdProperty::convertWord97ColorEnumToColor(0, &this->var4);
  this->var5 = 0;
  *&this->var6 = 0;
  return result;
}

uint64_t WrdDropCap::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t WrdBorder::reset(WrdBorder *this)
{
  *&this->var6 = 0;
  this->var2 = 0;
  *(this + 24) &= 0xFCu;
  result = WrdProperty::convertWord97ColorEnumToColor(0, &this->var1);
  this->var3 = 0;
  return result;
}

WrdDateTime *WrdDateTime::reset(WrdDateTime *this)
{
  *&this->var3 = 0;
  *&this->var1 = 0;
  return this;
}

uint64_t WrdNumberRevisionMarkData::reset(WrdNumberRevisionMarkData *this)
{
  result = *(this + 4);
  if (result && *(this + 7) && *(this + 5) && *(this + 6))
  {
    *(this + 32) = 0;
    *(this + 66) &= ~1u;
    result = (*(*result + 24))(result);
    for (i = 0; i != 9; ++i)
    {
      *(*(this + 7) + i) = 0;
      v4 = *(this + 6);
      *(*(this + 5) + 4 * i) = 0;
      *(v4 + 4 * i) = 0;
    }
  }

  return result;
}

uint64_t WrdParagraphProperties::init(WrdParagraphProperties *this)
{
  v2 = (this + 176);
  if (((*(this + 23) - *(this + 22)) & 0x7FFFFFFF8) == 0)
  {
    std::vector<WrdTabDescriptor *,ChAllocator<WrdTabDescriptor *>>::resize(this + 22, 0x40u);
    for (i = 0; i != 512; i += 8)
    {
      *(*v2 + i) = 0;
    }

    for (j = 0; j != 512; j += 8)
    {
      *(*(this + 22) + j) = (*(**(this + 16) + 16))(*(this + 16));
    }
  }

  if (!*(this + 25))
  {
    operator new[](128);
  }

  result = *(this + 26);
  if (!result)
  {
    operator new[](128);
  }

  v6 = *(this + 27);
  if (!v6)
  {
    operator new[](128);
  }

  v7 = 0;
  v8 = *(this + 25);
  do
  {
    *(v8 + v7) = 0;
    *(result + v7) = 0;
    *(v6 + v7) = 0;
    v7 += 2;
  }

  while (v7 != 128);
  return result;
}

void WrdCharacterProperties::WrdCharacterProperties(WrdCharacterProperties *this, WrdShading *a2, WrdBorder *a3, WrdDateTime *a4, WrdDateTime *a5, WrdDateTime *a6, WrdDateTime *a7, WrdDateTime *a8)
{
  this->var0 = &unk_286ED4270;
  this->var1 = &unk_286ED42A0;
  *&v16 = 255;
  *(&v16 + 1) = 255;
  *(&this->var2 + 14) = v16;
  CsString::CsString(&this->var5);
  this->var6 = a2;
  this->var7 = a3;
  this->var8 = a4;
  this->var9 = a5;
  this->var10 = a6;
  this->var11 = a7;
  this->var12 = a8;
  (*(this->var0 + 2))(this);
}

uint64_t WrdCharacterProperties::reset(WrdCharacterProperties *this)
{
  p_var67 = &this->var67;
  *(&this->var2 + 6) = 0;
  *&this->var2 = 0;
  v3 = *(this + 85);
  *&this->var23 = 0u;
  *&this->var27 = 0u;
  *&this->var31 = 0u;
  *&this->var35 = 0u;
  *(this + 85) = v3 & 0xEFFFFC00;
  this->var62 = 20;
  this->var49 = 0;
  *&this->var43 = 0;
  WrdProperty::convertWord97ColorEnumToColor(0, &this->var2 + 14);
  this->var13 = 0;
  this->var60 = 100;
  *&this->var39 = 0x40000000400;
  this->var41 = 0;
  *(this + 85) &= ~0x8000000u;
  *&this->var14 = 0u;
  *&this->var107 = 0;
  this->var63 = 0;
  this->var105 = 0;
  WrdProperty::convertWord97ColorEnumToColor(0, &this->var3.var3);
  this->var61 = 0;
  v4 = *(this + 85);
  this->var109 = 0;
  *&this->var18 = 0;
  *&this->var64 = 0;
  this->var66 = 0;
  this->var47 = 0;
  this->var50 = 0;
  *&this->var51 = -1;
  this->var53 = -1;
  this->var59 = 0;
  *&this->var57 = 0;
  *&this->var21 = 0;
  this->var106 = 0;
  this->var42 = 0;
  this->var75 = 0;
  *(this + 85) = v4 & 0xF80003FF;
  *p_var67 = 0;
  *(p_var67 + 1) = 655360;
  this->var48 = 0;
  this->var54 = 0;
  this->var20 = 0;
  *&this->var55 = 0xFFFFFFFF00000000;
  this->var110 = 0;
  this->var5.var2 = 0;
  bzero(this->var5.var1, 2 * this->var5.var3);
  WrdShading::reset(this->var6);
  (*(this->var7->var0 + 3))(this->var7);
  (*(this->var8->var0 + 3))(this->var8);
  (*(this->var9->var0 + 3))(this->var9);
  (*(this->var10->var0 + 3))(this->var10);
  (*(this->var11->var0 + 3))(this->var11);
  v5 = *(this->var12->var0 + 3);

  return v5();
}

void WrdTableAutoformatLookSpecifier::WrdTableAutoformatLookSpecifier(WrdTableAutoformatLookSpecifier *this)
{
  *this = &unk_286ED59D8;
  *(this + 2) = 0;
  *(this + 6) &= 0xFE00u;
}

void WrdTableCellDescriptor::WrdTableCellDescriptor(WrdTableCellDescriptor *this, WrdShading *a2, WrdBorder *a3, WrdBorder *a4, WrdBorder *a5, WrdBorder *a6, WrdBorder *a7, WrdBorder *a8)
{
  *this = &unk_286ED5A18;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 6) = a6;
  *(this + 7) = a7;
  *(this + 8) = a8;
  WrdTableCellDescriptor::reset(this);
}

uint64_t WrdTableCellDescriptor::reset(WrdTableCellDescriptor *this)
{
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 114) = 0u;
  *(this + 65) &= 0xFE00u;
  WrdShading::reset(*(this + 2));
  (*(**(this + 3) + 24))(*(this + 3));
  (*(**(this + 4) + 24))(*(this + 4));
  (*(**(this + 5) + 24))(*(this + 5));
  (*(**(this + 6) + 24))(*(this + 6));
  (*(**(this + 7) + 24))(*(this + 7));
  v2 = *(**(this + 8) + 24);

  return v2();
}

uint64_t WrdTableProperties::reset(WrdTableProperties *this)
{
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 148) = xmmword_25D70EE80;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 326) = 0;
  *(this + 334) &= 0xC0u;
  *(this + 172) = 0;
  *(this + 42) = 0;
  *(this + 32) = *(this + 31);
  WrdTableProperties::resetTableCellDescriptors(this);
  *(this + 346) = 0x6C0000006C0000;
  *(this + 354) = 0u;
  *(this + 370) = 0u;
  *(this + 386) = 0;
  WrdTableAutoformatLookSpecifier::reset(*(this + 4));
  WrdShading::reset(*(this + 6));
  (*(**(this + 7) + 24))(*(this + 7));
  (*(**(this + 8) + 24))(*(this + 8));
  (*(**(this + 9) + 24))(*(this + 9));
  (*(**(this + 10) + 24))(*(this + 10));
  (*(**(this + 11) + 24))(*(this + 11));
  (*(**(this + 12) + 24))(*(this + 12));
  (*(**(this + 13) + 24))(*(this + 13));
  (*(**(this + 14) + 24))(*(this + 14));
  v2 = *(**(this + 15) + 24);

  return v2();
}

WrdTableProperties *WrdTableProperties::resetTableCellDescriptors(WrdTableProperties *this)
{
  v1 = this;
  v2 = *(this + 34);
  if (((*(this + 35) - v2) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    do
    {
      this = *(v2 + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = *(v1 + 34);
      }

      *(v2 + 8 * v3++) = 0;
      v2 = *(v1 + 34);
    }

    while (v3 < ((*(v1 + 35) - v2) >> 3));
  }

  *(v1 + 35) = v2;
  return this;
}

uint64_t WrdTableAutoformatLookSpecifier::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) &= 0xFE00u;
  return this;
}

void WrdStyle::WrdStyle(WrdStyle *this, WrdParagraphProperties *a2, WrdParagraphProperties *a3, WrdCharacterProperties *a4, WrdCharacterProperties *a5, WrdTableProperties *a6, WrdDateTime *a7)
{
  *this = &unk_286ED5918;
  CsString::CsString((this + 8));
  *(this + 88) = 0u;
  *(this + 10) = this + 88;
  *(this + 14) = 0;
  *(this + 13) = this + 112;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 15) = 0;
  *(this + 16) = this + 136;
  *(this + 38) = 1;
  *(this + 156) = 0xFFF0FFF0FFFLL;
  *(this + 164) &= 0xE1u;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 6) = a4;
  *(this + 7) = a5;
  *(this + 8) = a6;
  *(this + 9) = a7;
}

void WrdStyleSheet::WrdStyleSheet(WrdStyleSheet *this, WrdStyle *a2)
{
  *this = &unk_286ED5958;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  for (i = 48; i != 360; i += 2)
  {
    *(this + i) |= 1u;
  }

  *(this + 180) = 0;
}

WrdStyleSheet *WrdBinaryReader::read(WrdBinaryReader *this, WrdStyleSheet *a2)
{
  v2 = *(this + 25);
  if (v2)
  {
    return WrdStyleSheet::operator=(a2, v2);
  }

  else
  {
    return WrdParser::parse(*(this + 4), a2);
  }
}

uint64_t WrdParser::parse(WrdParser *this, WrdStyleSheet *a2)
{
  WrdParser::startFCLCB(this, 1u);
  v4 = (*(**(this + 16) + 80))(*(this + 16));
  v5 = (*(**(this + 16) + 80))(*(this + 16));
  *(a2 + 180) = (*(**(this + 16) + 80))(*(this + 16));
  (*(**(this + 16) + 16))(*(this + 16), 8, 1);
  if (v4 >= 0xF)
  {
    *(a2 + 4) = (*(**(this + 16) + 80))(*(this + 16));
    *(a2 + 5) = (*(**(this + 16) + 80))(*(this + 16));
    *(a2 + 6) = (*(**(this + 16) + 80))(*(this + 16));
    v6 = v4 - 18;
    if (v6 >= 2)
    {
      *(a2 + 7) = (*(**(this + 16) + 80))(*(this + 16));
      v6 = v4 - 20;
      if (v6 >= 2)
      {
        (*(**(this + 16) + 16))(*(this + 16), 2, 1);
        v6 = v4 - 22;
        if (v6 >= 0x270)
        {
          for (i = 0; i != 156; ++i)
          {
            v8 = (*(**(this + 16) + 104))(*(this + 16));
            PredefinedStyleInfoReference = WrdStyleSheet::getPredefinedStyleInfoReference(a2, i);
            *PredefinedStyleInfoReference = *PredefinedStyleInfoReference & 0xFE | v8 & 1;
          }

          v6 = v4 - 646;
        }
      }
    }

    if (v6)
    {
      (*(**(this + 16) + 16))(*(this + 16), v6, 1);
    }
  }

  if (v5)
  {
    for (j = 0; j < v5; ++j)
    {
      v11 = WrdStyleSheet::addStyle(a2);
      WrdParser::parse(this, v11, *(a2 + 180));
    }
  }

  result = *(WrdStyleSheet::getStyleReference(a2, 0) + 48);
  if ((*(result + 21) & 0x40) == 0)
  {

    return WrdCharacterProperties::setLanguageIDForFarEastAsianText(result, 1041);
  }

  return result;
}

void WrdStyleSheet::setNumberOfStyles(WrdStyleSheet *this, unsigned int a2)
{
  v4 = (this + 24);
  v5 = *(this + 4) - *(this + 3);
  if ((v5 & 0x7FFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = (v5 >> 3);
    do
    {
      v8 = *v4;
      v9 = *(*v4 + 8 * v6);
      if (v9)
      {
        (*(*v9 + 8))(v9);
        v8 = *v4;
      }

      *(v8 + 8 * v6++) = 0;
    }

    while (v7 != v6);
  }

  std::vector<WrdStyle *,ChAllocator<WrdStyle *>>::resize(v4, a2);
  if (a2)
  {
    v10 = 0;
    do
    {
      *(*v4 + v10) = 0;
      v10 += 8;
    }

    while (8 * a2 != v10);
    v11 = 0;
    v12 = 8 * a2;
    do
    {
      *(*(this + 3) + v11) = (*(**(this + 2) + 16))(*(this + 2));
      v11 += 8;
    }

    while (v12 != v11);
  }
}

void WrdStyle::clone(WrdStyle *this)
{
  (*(**(this + 4) + 24))(*(this + 4));
  (*(**(this + 5) + 24))(*(this + 5));
  (*(**(this + 6) + 24))(*(this + 6));
  (*(**(this + 7) + 24))(*(this + 7));
  (*(**(this + 8) + 24))(*(this + 8));
  (*(**(this + 9) + 16))(*(this + 9));
  operator new();
}

void sub_25D2DB0CC()
{
  if (v0)
  {
    JUMPOUT(0x25D2DB0D4);
  }

  JUMPOUT(0x25D2DB05CLL);
}

void sub_25D2DB104()
{
  if (v0)
  {
    JUMPOUT(0x25D2DB10CLL);
  }

  JUMPOUT(0x25D2DB060);
}

void sub_25D2DB13C()
{
  if (v0)
  {
    JUMPOUT(0x25D2DB144);
  }

  JUMPOUT(0x25D2DB064);
}

void sub_25D2DB174()
{
  if (v0)
  {
    JUMPOUT(0x25D2DB17CLL);
  }

  JUMPOUT(0x25D2DB068);
}

void sub_25D2DB1AC()
{
  if (!v0)
  {
    JUMPOUT(0x25D2DB094);
  }

  JUMPOUT(0x25D2DB06CLL);
}

void WrdParagraphProperties::clone(WrdParagraphProperties *this)
{
  (*(**(this + 4) + 16))(*(this + 4));
  (*(**(this + 5) + 16))(*(this + 5));
  (*(**(this + 6) + 16))(*(this + 6));
  (*(**(this + 7) + 16))(*(this + 7));
  (*(**(this + 8) + 16))(*(this + 8));
  (*(**(this + 9) + 16))(*(this + 9));
  (*(**(this + 10) + 16))(*(this + 10));
  (*(**(this + 11) + 16))(*(this + 11));
  (*(**(this + 12) + 16))(*(this + 12));
  (*(**(this + 13) + 16))(*(this + 13));
  (*(**(this + 14) + 16))(*(this + 14));
  (*(**(this + 15) + 16))(*(this + 15));
  (*(**(this + 16) + 16))(*(this + 16));
  operator new();
}

void sub_25D2DB4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  MEMORY[0x25F897000](v24, 0x10B1C40EF2C5ADDLL);
  if (v23)
  {
    (*(*v23 + 8))(v23);
    if (!v22)
    {
LABEL_3:
      if (!v21)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (!v22)
  {
    goto LABEL_3;
  }

  (*(*v22 + 8))(v22);
  if (!v21)
  {
LABEL_4:
    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  (*(*v21 + 8))(v21);
  if (!v20)
  {
LABEL_5:
    if (!v28)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  (*(*v20 + 8))(v20);
  if (!v28)
  {
LABEL_6:
    if (!v27)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  (*(*v28 + 8))(v28);
  if (!v27)
  {
LABEL_7:
    if (!v26)
    {
LABEL_16:
      if (a16)
      {
        (*(*a16 + 8))(a16);
      }

      if (a17)
      {
        (*(*a17 + 8))(a17);
      }

      if (a18)
      {
        (*(*a18 + 8))(a18);
      }

      if (v25)
      {
        (*(*v25 + 8))(v25);
      }

      if (a19)
      {
        (*(*a19 + 8))(a19);
      }

      if (a20)
      {
        (*(*a20 + 8))(a20);
      }

      _Unwind_Resume(a1);
    }

LABEL_15:
    (*(*v26 + 8))(v26);
    goto LABEL_16;
  }

LABEL_14:
  (*(*v27 + 8))(v27);
  if (!v26)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

double WrdShading::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 30) = *(a2 + 30);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

double WrdBorder::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  v3 = *(a1 + 24) & 0xFE | *(a2 + 24) & 1;
  *(a1 + 24) = v3;
  *(a1 + 24) = v3 & 0xFD | *(a2 + 24) & 2;
  *(a1 + 25) = *(a2 + 25);
  return result;
}

double WrdAutoNumberLevelDescriptor::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 38) = *(a2 + 38);
  v3 = *(a1 + 42) & 0xFFFE | *(a2 + 42) & 1;
  *(a1 + 42) = *(a1 + 42) & 0xFFFE | *(a2 + 42) & 1;
  v4 = v3 & 0xFFFFFFFD | (2 * ((*(a2 + 42) >> 1) & 1));
  *(a1 + 42) = v4;
  v5 = v4 & 0xFFFFFFFB | (4 * ((*(a2 + 42) >> 2) & 1));
  *(a1 + 42) = v5;
  v6 = v5 & 0xFFFFFFF7 | (8 * ((*(a2 + 42) >> 3) & 1));
  *(a1 + 42) = v6;
  v7 = v6 & 0xFFFFFFEF | (16 * ((*(a2 + 42) >> 4) & 1));
  *(a1 + 42) = v7;
  v8 = v7 & 0xFFFFFFDF | (32 * ((*(a2 + 42) >> 5) & 1));
  *(a1 + 42) = v8;
  v9 = v8 & 0xFFFFFFBF | (((*(a2 + 42) >> 6) & 1) << 6);
  *(a1 + 42) = v9;
  v10 = v9 & 0xFFFFFF7F | (((*(a2 + 42) >> 7) & 1) << 7);
  *(a1 + 42) = v10;
  v11 = v10 & 0xFFFFFEFF | ((HIBYTE(*(a2 + 42)) & 1) << 8);
  *(a1 + 42) = v11;
  v12 = v11 & 0xFFFFFDFF | (((*(a2 + 42) >> 9) & 1) << 9);
  *(a1 + 42) = v12;
  v13 = v12 & 0xFFFFFBFF | (((*(a2 + 42) >> 10) & 1) << 10);
  *(a1 + 42) = v13;
  v14 = v13 & 0xFFFFF7FF | (((*(a2 + 42) >> 11) & 1) << 11);
  *(a1 + 42) = v14;
  v15 = v14 & 0xFFFFEFFF | (((*(a2 + 42) >> 12) & 1) << 12);
  *(a1 + 42) = v15;
  LOWORD(v15) = v15 & 0xDFFF | (((*(a2 + 42) >> 13) & 1) << 13);
  *(a1 + 42) = v15;
  *(a1 + 42) = v15 & 0xBFFF | *(a2 + 42) & 0x4000;
  *(a1 + 44) = *(a2 + 44);
  return result;
}

uint64_t WrdAutoNumberListDescriptor::operator=(uint64_t a1, uint64_t a2)
{
  WrdAutoNumberLevelDescriptor::operator=(*(a1 + 8), *(a2 + 8));
  *(a1 + 32) = 0;
  bzero(*(a1 + 24), 2 * *(a1 + 36));
  CsString::append((a1 + 16), (a2 + 16));
  *(a1 + 40) = *(a1 + 40) & 0xFE | *(a2 + 40) & 1;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

uint64_t WrdNumberRevisionMarkData::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3 && *(a1 + 56) && *(a1 + 40) && *(a1 + 48))
  {
    WrdDateTime::operator=(v3, *(a2 + 32));
    for (i = 0; i != 9; ++i)
    {
      *(*(a1 + 56) + i) = *(*(a2 + 56) + i);
      v6 = *(a2 + 48);
      v7 = *(a1 + 48);
      *(*(a1 + 40) + 4 * i) = *(*(a2 + 40) + 4 * i);
      *(v7 + 4 * i) = *(v6 + 4 * i);
    }

    *(a1 + 24) = 0;
    bzero(*(a1 + 16), 2 * *(a1 + 28));
    CsString::append((a1 + 8), (a2 + 8));
    CsString::erase((a1 + 8), 0x20u);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 66) = *(a1 + 66) & 0xFE | *(a2 + 66) & 1;
  }

  return a1;
}

double WrdDateTime::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  *(a1 + 20) = *(a2 + 20);
  return result;
}

CsString *CsString::erase(CsString *this, unsigned int a2)
{
  if (this->var2 >= a2)
  {
    v3 = this;
    this = CsString::reserve(this, a2 + 1);
    v3->var2 = a2;
    v3->var1[a2] = 0;
  }

  return this;
}

uint64_t WrdParagraphProperties::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  WrdShading::operator=(*(a1 + 32), *(a2 + 32));
  v5 = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 138) = *(a2 + 138);
  v6 = (a2 + 294);
  v7 = (a1 + 294);
  v8 = *(a1 + 294) & 0xFFFFFFFE | *(a2 + 294) & 1;
  *(a1 + 294) = v8;
  *(a1 + 294) = v8 & 0xFFFFFFFD | (2 * ((*(a2 + 294) >> 1) & 1));
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 142) = *(a2 + 142);
  do
  {
    v9 = *(a2 + 208);
    v10 = *(a1 + 208);
    *(*(a1 + 200) + 2 * v5) = *(*(a2 + 200) + 2 * v5);
    *(v10 + 2 * v5) = *(v9 + 2 * v5);
    *(*(a1 + 216) + 2 * v5) = *(*(a2 + 216) + 2 * v5);
    WrdTabDescriptor::operator=(*(*(a1 + 176) + 8 * v5), *(*(a2 + 176) + 8 * v5));
    ++v5;
  }

  while (v5 != 64);
  WrdLineSpaceDescriptor::operator=(*(a1 + 40), *(a2 + 40));
  WrdDropCap::operator=(*(a1 + 48), *(a2 + 48));
  WrdBorder::operator=(*(a1 + 56), *(a2 + 56));
  WrdBorder::operator=(*(a1 + 64), *(a2 + 64));
  WrdBorder::operator=(*(a1 + 72), *(a2 + 72));
  WrdBorder::operator=(*(a1 + 80), *(a2 + 80));
  WrdBorder::operator=(*(a1 + 88), *(a2 + 88));
  WrdBorder::operator=(*(a1 + 96), *(a2 + 96));
  WrdAutoNumberListDescriptor::operator=(*(a1 + 104), *(a2 + 104));
  WrdDateTime::operator=(*(a1 + 112), *(a2 + 112));
  WrdNumberRevisionMarkData::operator=(*(a1 + 120), *(a2 + 120));
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  v11 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v11;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  v12 = *v7 & 0xFFFFFFFB | (4 * ((*v6 >> 2) & 1));
  *v7 = v12;
  v13 = v12 & 0xFFFFFFF7 | (8 * ((*v6 >> 3) & 1));
  *v7 = v13;
  v14 = v13 & 0xFFFFFFEF | (16 * ((*v6 >> 4) & 1));
  *v7 = v14;
  v15 = v14 & 0xFFFFFFDF | (32 * ((*v6 >> 5) & 1));
  *v7 = v15;
  v16 = v15 & 0xFFFFFFBF | (((*v6 >> 6) & 1) << 6);
  *v7 = v16;
  v17 = v16 & 0xFFFFFF7F | (((*v6 >> 7) & 1) << 7);
  *v7 = v17;
  v18 = v17 & 0xFFFFFEFF | (((*v6 >> 8) & 1) << 8);
  *v7 = v18;
  v19 = v18 & 0xFFFFFDFF | (((*v6 >> 9) & 1) << 9);
  *v7 = v19;
  v20 = v19 & 0xFFFFFBFF | (((*v6 >> 10) & 1) << 10);
  *v7 = v20;
  v21 = v20 & 0xFFFFF7FF | (((*v6 >> 11) & 1) << 11);
  *v7 = v21;
  v22 = v21 & 0xFFFFEFFF | (((*v6 >> 12) & 1) << 12);
  *v7 = v22;
  v23 = v22 & 0xFFFFDFFF | (((*v6 >> 13) & 1) << 13);
  *v7 = v23;
  v24 = v23 & 0xFFFFBFFF | (((*v6 >> 14) & 1) << 14);
  *v7 = v24;
  v25 = v24 & 0xFFFF7FFF | (((*v6 >> 15) & 1) << 15);
  *v7 = v25;
  v26 = v25 & 0xFFFEFFFF | ((HIWORD(*v6) & 1) << 16);
  *v7 = v26;
  v27 = v26 & 0xFFFDFFFF | (((*v6 >> 17) & 1) << 17);
  *v7 = v27;
  v28 = v27 & 0xFFFBFFFF | (((*v6 >> 18) & 1) << 18);
  *v7 = v28;
  v29 = v28 & 0xFFF7FFFF | (((*v6 >> 19) & 1) << 19);
  *v7 = v29;
  v30 = v29 & 0xFFEFFFFF | (((*v6 >> 20) & 1) << 20);
  *v7 = v30;
  v31 = v30 & 0xFFDFFFFF | (((*v6 >> 21) & 1) << 21);
  *v7 = v31;
  v32 = v31 & 0xFFBFFFFF | (((*v6 >> 22) & 1) << 22);
  *v7 = v32;
  v33 = v32 & 0xFF7FFFFF | (((*v6 >> 23) & 1) << 23);
  *v7 = v33;
  v34 = v33 & 0xFEFFFFFF | ((HIBYTE(*v6) & 1) << 24);
  *v7 = v34;
  v35 = v34 & 0xFDFFFFFF | (((*v6 >> 25) & 1) << 25);
  *v7 = v35;
  v36 = v35 & 0xFBFFFFFF | (((*v6 >> 26) & 1) << 26);
  *v7 = v36;
  v37 = v36 & 0xF7FFFFFF | (((*v6 >> 27) & 1) << 27);
  *v7 = v37;
  v38 = v37 & 0xEFFFFFFF | (((*v6 >> 28) & 1) << 28);
  *v7 = v38;
  *v7 = v38 & 0xDFFFFFFF | (((*v6 >> 29) & 1) << 29);
  *(a1 + 298) = *(a2 + 298);
  return a1;
}

double WrdTabDescriptor::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t WrdDropCap::operator=(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

void WrdCharacterProperties::clone(WrdCharacterProperties *this)
{
  (*(this->var6->var0 + 2))(this->var6);
  (*(this->var7->var0 + 2))(this->var7);
  (*(this->var8->var0 + 2))(this->var8);
  (*(this->var9->var0 + 2))(this->var9);
  (*(this->var10->var0 + 2))(this->var10);
  (*(this->var11->var0 + 2))(this->var11);
  (*(this->var12->var0 + 2))(this->var12);
  operator new();
}

void sub_25D2DC5D0()
{
  if (v0)
  {
    JUMPOUT(0x25D2DC5D8);
  }

  JUMPOUT(0x25D2DC55CLL);
}

void sub_25D2DC608()
{
  if (v0)
  {
    JUMPOUT(0x25D2DC610);
  }

  JUMPOUT(0x25D2DC560);
}

void sub_25D2DC640()
{
  if (v0)
  {
    JUMPOUT(0x25D2DC648);
  }

  JUMPOUT(0x25D2DC564);
}

void sub_25D2DC678()
{
  if (v0)
  {
    JUMPOUT(0x25D2DC680);
  }

  JUMPOUT(0x25D2DC568);
}

void sub_25D2DC6B0()
{
  if (v0)
  {
    JUMPOUT(0x25D2DC6B8);
  }

  JUMPOUT(0x25D2DC56CLL);
}

void sub_25D2DC6E8()
{
  if (!v0)
  {
    JUMPOUT(0x25D2DC598);
  }

  JUMPOUT(0x25D2DC570);
}

uint64_t WrdCharacterProperties::operator=(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 308;
  v5 = a2 + 308;
  v6 = *(a2 + 16);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 16) = v6;
  WrdShading::operator=(*(a1 + 72), *(a2 + 72));
  WrdBorder::operator=(*(a1 + 80), *(a2 + 80));
  WrdDateTime::operator=(*(a1 + 88), *(a2 + 88));
  WrdDateTime::operator=(*(a1 + 96), *(a2 + 96));
  WrdDateTime::operator=(*(a1 + 104), *(a2 + 104));
  WrdDateTime::operator=(*(a1 + 112), *(a2 + 112));
  WrdDateTime::operator=(*(a1 + 120), *(a2 + 120));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *v4 = *v5;
  *(v4 + 16) = *(v5 + 16);
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 220) = *(a2 + 220);
  v7 = *(a1 + 340) & 0xFFFFFFFD | (2 * ((*(a2 + 340) >> 1) & 1));
  *(a1 + 340) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*(a2 + 340) >> 2) & 1));
  *(a1 + 340) = v8;
  v9 = v8 & 0xFFFFFFF7 | (8 * ((*(a2 + 340) >> 3) & 1));
  *(a1 + 340) = v9;
  v10 = v9 & 0xFFFFFFEF | (16 * ((*(a2 + 340) >> 4) & 1));
  *(a1 + 340) = v10;
  v11 = v10 & 0xFFFFFFDF | (32 * ((*(a2 + 340) >> 5) & 1));
  *(a1 + 340) = v11;
  v12 = v11 & 0xFFFFFFBF | (((*(a2 + 340) >> 6) & 1) << 6);
  *(a1 + 340) = v12;
  *(a1 + 228) = *(a2 + 228);
  v13 = v12 & 0xFFFFFF7F | (((*(a2 + 340) >> 7) & 1) << 7);
  *(a1 + 340) = v13;
  v14 = v13 & 0xFFFFFEFF | (((*(a2 + 340) >> 8) & 1) << 8);
  *(a1 + 340) = v14;
  v15 = v14 & 0xFFFFFDFF | (((*(a2 + 340) >> 9) & 1) << 9);
  *(a1 + 340) = v15;
  v16 = v15 & 0xFFFFFBFF | (((*(a2 + 340) >> 10) & 1) << 10);
  *(a1 + 340) = v16;
  v17 = v16 & 0xFFFFF7FF | (((*(a2 + 340) >> 11) & 1) << 11);
  *(a1 + 340) = v17;
  *(a1 + 349) = *(a2 + 349);
  v18 = v17 & 0xFFFFEFFF | (((*(a2 + 340) >> 12) & 1) << 12);
  *(a1 + 340) = v18;
  v19 = v18 & 0xFFFFDFFF | (((*(a2 + 340) >> 13) & 1) << 13);
  *(a1 + 340) = v19;
  v20 = v19 & 0xFFFFBFFF | (((*(a2 + 340) >> 14) & 1) << 14);
  *(a1 + 340) = v20;
  v21 = v20 & 0xFFFF7FFF | (((*(a2 + 340) >> 15) & 1) << 15);
  *(a1 + 340) = v21;
  v22 = v21 & 0xFFFEFFFF | ((HIWORD(*(a2 + 340)) & 1) << 16);
  *(a1 + 340) = v22;
  v23 = v22 & 0xFFFDFFFF | (((*(a2 + 340) >> 17) & 1) << 17);
  *(a1 + 340) = v23;
  v24 = v23 & 0xFFFBFFFF | (((*(a2 + 340) >> 18) & 1) << 18);
  *(a1 + 340) = v24;
  v25 = v24 & 0xFFF7FFFF | (((*(a2 + 340) >> 19) & 1) << 19);
  *(a1 + 340) = v25;
  v26 = v25 & 0xFFEFFFFF | (((*(a2 + 340) >> 20) & 1) << 20);
  *(a1 + 340) = v26;
  v27 = v26 & 0xFFDFFFFF | (((*(a2 + 340) >> 21) & 1) << 21);
  *(a1 + 340) = v27;
  v28 = v27 & 0xFFBFFFFF | (((*(a2 + 340) >> 22) & 1) << 22);
  *(a1 + 340) = v28;
  v29 = v28 & 0xFF7FFFFF | (((*(a2 + 340) >> 23) & 1) << 23);
  *(a1 + 340) = v29;
  v30 = v29 & 0xFEFFFFFF | ((HIBYTE(*(a2 + 340)) & 1) << 24);
  *(a1 + 340) = v30;
  v31 = v30 & 0xFDFFFFFF | (((*(a2 + 340) >> 25) & 1) << 25);
  *(a1 + 340) = v31;
  v32 = v31 & 0xFBFFFFFF | (((*(a2 + 340) >> 26) & 1) << 26);
  *(a1 + 340) = v32;
  v33 = v32 & 0xF7FFFFFF | (((*(a2 + 340) >> 27) & 1) << 27);
  *(a1 + 340) = v33;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 346) = *(a2 + 346);
  *(a1 + 347) = *(a2 + 347);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  v34 = v33 & 0xEFFFFFFF | (((*(a2 + 340) >> 28) & 1) << 28);
  *(a1 + 340) = v34;
  *(a1 + 340) = v34 & 0xFFFFFFFE | *(a2 + 340) & 1;
  *(a1 + 64) = 0;
  bzero(*(a1 + 56), 2 * *(a1 + 68));
  CsString::append((a1 + 48), (a2 + 48));
  *(a1 + 350) = *(a2 + 350);
  return a1;
}

void WrdTableProperties::clone(WrdTableProperties *this)
{
  (*(**(this + 4) + 16))(*(this + 4));
  (*(**(this + 5) + 16))(*(this + 5));
  (*(**(this + 6) + 16))(*(this + 6));
  (*(**(this + 7) + 16))(*(this + 7));
  (*(**(this + 8) + 16))(*(this + 8));
  (*(**(this + 9) + 16))(*(this + 9));
  (*(**(this + 10) + 16))(*(this + 10));
  (*(**(this + 11) + 16))(*(this + 11));
  (*(**(this + 12) + 16))(*(this + 12));
  (*(**(this + 13) + 16))(*(this + 13));
  (*(**(this + 14) + 16))(*(this + 14));
  (*(**(this + 15) + 16))(*(this + 15));
  operator new();
}

void sub_25D2DD030()
{
  if (!v0)
  {
    JUMPOUT(0x25D2DCFE8);
  }

  JUMPOUT(0x25D2DCFC0);
}

uint64_t WrdTableAutoformatLookSpecifier::operator=(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  v2 = *(result + 12) & 0xFFFE | *(a2 + 12) & 1;
  *(result + 12) = *(result + 12) & 0xFFFE | *(a2 + 12) & 1;
  v3 = v2 & 0xFFFFFFFD | (2 * ((*(a2 + 12) >> 1) & 1));
  *(result + 12) = v3;
  v4 = v3 & 0xFFFFFFFB | (4 * ((*(a2 + 12) >> 2) & 1));
  *(result + 12) = v4;
  v5 = v4 & 0xFFFFFFF7 | (8 * ((*(a2 + 12) >> 3) & 1));
  *(result + 12) = v5;
  v6 = v5 & 0xFFFFFFEF | (16 * ((*(a2 + 12) >> 4) & 1));
  *(result + 12) = v6;
  v7 = v6 & 0xFFFFFFDF | (32 * ((*(a2 + 12) >> 5) & 1));
  *(result + 12) = v7;
  v8 = v7 & 0xFFFFFFBF | (((*(a2 + 12) >> 6) & 1) << 6);
  *(result + 12) = v8;
  v9 = v8 & 0xFFFFFF7F | (((*(a2 + 12) >> 7) & 1) << 7);
  *(result + 12) = v9;
  *(result + 12) = v9 & 0xFEFF | *(a2 + 12) & 0x100;
  return result;
}

void WrdTableCellDescriptor::clone(WrdTableCellDescriptor *this)
{
  (*(**(this + 2) + 16))(*(this + 2));
  (*(**(this + 3) + 16))(*(this + 3));
  (*(**(this + 4) + 16))(*(this + 4));
  (*(**(this + 5) + 16))(*(this + 5));
  (*(**(this + 6) + 16))(*(this + 6));
  (*(**(this + 7) + 16))(*(this + 7));
  (*(**(this + 8) + 16))(*(this + 8));
  operator new();
}

uint64_t WrdTableCellDescriptor::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  WrdShading::operator=(*(a1 + 16), *(a2 + 16));
  WrdBorder::operator=(*(a1 + 24), *(a2 + 24));
  WrdBorder::operator=(*(a1 + 32), *(a2 + 32));
  WrdBorder::operator=(*(a1 + 40), *(a2 + 40));
  WrdBorder::operator=(*(a1 + 48), *(a2 + 48));
  WrdBorder::operator=(*(a1 + 56), *(a2 + 56));
  WrdBorder::operator=(*(a1 + 64), *(a2 + 64));
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a1 + 130) & 0xFFFE | *(a2 + 130) & 1;
  *(a1 + 130) = *(a1 + 130) & 0xFFFE | *(a2 + 130) & 1;
  v6 = v5 & 0xFFFFFFFD | (2 * ((*(a2 + 130) >> 1) & 1));
  *(a1 + 130) = v6;
  v7 = v6 & 0xFFFFFFFB | (4 * ((*(a2 + 130) >> 2) & 1));
  *(a1 + 130) = v7;
  v8 = v7 & 0xFFFFFFF7 | (8 * ((*(a2 + 130) >> 3) & 1));
  *(a1 + 130) = v8;
  v9 = v8 & 0xFFFFFFEF | (16 * ((*(a2 + 130) >> 4) & 1));
  *(a1 + 130) = v9;
  v10 = v9 & 0xFFFFFFDF | (32 * ((*(a2 + 130) >> 5) & 1));
  *(a1 + 130) = v10;
  v11 = v10 & 0xFFFFFFBF | (((*(a2 + 130) >> 6) & 1) << 6);
  *(a1 + 130) = v11;
  v12 = v11 & 0xFFFFFF7F | (((*(a2 + 130) >> 7) & 1) << 7);
  *(a1 + 130) = v12;
  *(a1 + 130) = v12 & 0xFEFF | *(a2 + 130) & 0x100;
  return a1;
}

uint64_t WrdTableProperties::operator=(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 296;
  v5 = a2 + 296;
  v6 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v6;
  WrdTableAutoformatLookSpecifier::operator=(*(a1 + 32), *(a2 + 32));
  WrdShading::operator=(*(a1 + 48), *(a2 + 48));
  WrdBorder::operator=(*(a1 + 56), *(a2 + 56));
  WrdBorder::operator=(*(a1 + 64), *(a2 + 64));
  WrdBorder::operator=(*(a1 + 72), *(a2 + 72));
  WrdBorder::operator=(*(a1 + 80), *(a2 + 80));
  WrdBorder::operator=(*(a1 + 88), *(a2 + 88));
  WrdBorder::operator=(*(a1 + 96), *(a2 + 96));
  WrdBorder::operator=(*(a1 + 104), *(a2 + 104));
  WrdBorder::operator=(*(a1 + 112), *(a2 + 112));
  WrdDateTime::operator=(*(a1 + 120), *(a2 + 120));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 228) = *(a2 + 228);
  *v4 = *v5;
  *(v4 + 16) = *(v5 + 16);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 330) = *(a2 + 330);
  v7 = *(a1 + 334) & 0xFE | *(a2 + 334) & 1;
  *(a1 + 334) = v7;
  v8 = v7 & 0xFFFFFFFD | (2 * ((*(a2 + 334) >> 1) & 1));
  *(a1 + 334) = v8;
  v9 = v8 & 0xFFFFFFFB | (4 * ((*(a2 + 334) >> 2) & 1));
  *(a1 + 334) = v9;
  v10 = v9 & 0xFFFFFFF7 | (8 * ((*(a2 + 334) >> 3) & 1));
  *(a1 + 334) = v10;
  v11 = v10 & 0xFFFFFFEF | (16 * ((*(a2 + 334) >> 4) & 1));
  *(a1 + 334) = v11;
  *(a1 + 334) = v11 & 0xDF | *(a2 + 334) & 0x20;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(v4 + 66) = *(v5 + 66);
  *(v4 + 82) = *(v5 + 82);
  *(v4 + 90) = *(v5 + 90);
  *(a1 + 256) = *(a1 + 248);
  WrdTableProperties::resetTableCellDescriptors(a1);
  if (*(a1 + 344) >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(a2 + 272) + 8 * v13);
      v15 = (*(*v14 + 16))(v14);
      v25 = v15;
      v16 = *(a1 + 280);
      if (v16 >= *(a1 + 288))
      {
        v17 = std::vector<WrdTableCellDescriptor *,ChAllocator<WrdTableCellDescriptor *>>::__emplace_back_slow_path<WrdTableCellDescriptor *>((a1 + 272), &v25);
      }

      else
      {
        *v16 = v15;
        v17 = (v16 + 1);
      }

      *(a1 + 280) = v17;
      v18 = *(a2 + 248);
      v19 = *(a1 + 256);
      if (v19 >= *(a1 + 264))
      {
        v20 = std::vector<short,ChAllocator<short>>::__emplace_back_slow_path<short const&>(a1 + 248, (v18 + v12));
      }

      else
      {
        *v19 = *(v18 + v12);
        v20 = v19 + 1;
      }

      *(a1 + 256) = v20;
      ++v13;
      v21 = *(a1 + 344);
      v12 += 2;
    }

    while (v13 < v21);
    v22 = (*(a2 + 248) + 2 * v21);
    if (v20 >= *(a1 + 264))
    {
      v23 = std::vector<short,ChAllocator<short>>::__emplace_back_slow_path<short const&>(a1 + 248, v22);
    }

    else
    {
      *v20 = *v22;
      v23 = (v20 + 1);
    }

    *(a1 + 256) = v23;
  }

  return a1;
}

uint64_t WrdStyle::operator=(uint64_t a1, uint64_t a2)
{
  WrdStyle::reset(a1);
  *(a1 + 24) = 0;
  bzero(*(a1 + 16), 2 * *(a1 + 28));
  CsString::append((a1 + 8), (a2 + 8));
  *(a1 + 32) = (*(**(a2 + 32) + 24))(*(a2 + 32));
  *(a1 + 40) = (*(**(a2 + 40) + 24))(*(a2 + 40));
  *(a1 + 48) = (*(**(a2 + 48) + 24))(*(a2 + 48));
  *(a1 + 56) = (*(**(a2 + 56) + 24))(*(a2 + 56));
  *(a1 + 64) = (*(**(a2 + 64) + 24))(*(a2 + 64));
  v4 = 0;
  *(a1 + 72) = (*(**(a2 + 72) + 16))(*(a2 + 72));
  v5 = (a2 + 88);
  v6 = (a2 + 112);
  v7 = (a2 + 136);
  do
  {
    v8 = *v5;
    if (!*v5)
    {
      goto LABEL_17;
    }

    v9 = *v5;
    while (1)
    {
      v10 = *(v9 + 8);
      if (v10 <= v4)
      {
        break;
      }

LABEL_7:
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    if (v10 < v4)
    {
      ++v9;
      goto LABEL_7;
    }

    v11 = (a2 + 88);
    do
    {
      v12 = *(v8 + 8);
      v13 = v12 >= v4;
      v14 = v12 < v4;
      if (v13)
      {
        v11 = v8;
      }

      v8 = v8[v14];
    }

    while (v8);
    if (v11 == v5 || *(v11 + 8) > v4)
    {
      goto LABEL_49;
    }

    v15 = (*(*v11[5] + 24))(v11[5]);
    v35 = v4;
    v36 = &v35;
    std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 80, &v35)[5] = v15;
LABEL_17:
    v16 = *v6;
    if (!*v6)
    {
      goto LABEL_32;
    }

    v17 = *v6;
    while (2)
    {
      v18 = *(v17 + 8);
      if (v18 > v4)
      {
LABEL_22:
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_32;
        }

        continue;
      }

      break;
    }

    if (v18 < v4)
    {
      ++v17;
      goto LABEL_22;
    }

    v19 = (a2 + 112);
    do
    {
      v20 = *(v16 + 8);
      v13 = v20 >= v4;
      v21 = v20 < v4;
      if (v13)
      {
        v19 = v16;
      }

      v16 = v16[v21];
    }

    while (v16);
    if (v19 == v6 || *(v19 + 8) > v4)
    {
      goto LABEL_49;
    }

    v22 = (*(*v19[5] + 24))(v19[5]);
    v35 = v4;
    v36 = &v35;
    std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 104, &v35)[5] = v22;
LABEL_32:
    v23 = *v7;
    if (!*v7)
    {
      goto LABEL_47;
    }

    v24 = *v7;
    while (2)
    {
      v25 = *(v24 + 8);
      if (v25 > v4)
      {
LABEL_37:
        v24 = *v24;
        if (!v24)
        {
          goto LABEL_47;
        }

        continue;
      }

      break;
    }

    if (v25 < v4)
    {
      ++v24;
      goto LABEL_37;
    }

    v26 = (a2 + 136);
    do
    {
      v27 = *(v23 + 8);
      v13 = v27 >= v4;
      v28 = v27 < v4;
      if (v13)
      {
        v26 = v23;
      }

      v23 = v23[v28];
    }

    while (v23);
    if (v26 == v7 || *(v26 + 8) > v4)
    {
LABEL_49:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1004;
    }

    v29 = (*(*v26[5] + 24))(v26[5]);
    v35 = v4;
    v36 = &v35;
    std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 128, &v35)[5] = v29;
LABEL_47:
    ++v4;
  }

  while (v4 != 11);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  v30 = *(a1 + 164) & 0xFD | (2 * ((*(a2 + 164) >> 1) & 1));
  *(a1 + 164) = v30;
  v31 = v30 & 0xFFFFFFEF | (16 * ((*(a2 + 164) >> 4) & 1));
  *(a1 + 164) = v31;
  v32 = v31 & 0xFFFFFFFB | (4 * ((*(a2 + 164) >> 2) & 1));
  *(a1 + 164) = v32;
  *(a1 + 164) = v32 & 0xF7 | *(a2 + 164) & 8;
  return a1;
}

uint64_t WrdStyle::reset(WrdStyle *this)
{
  v2 = 0;
  v3 = (this + 88);
  v4 = (this + 112);
  v5 = (this + 136);
  do
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v7 = *(v6 + 8);
      if (v7 <= v2)
      {
        break;
      }

LABEL_6:
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    if (v7 < v2)
    {
      ++v6;
      goto LABEL_6;
    }

    v21 = v2;
    v22 = &v21;
    v8 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 80, &v21)[5];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v21 = v2;
    v22 = &v21;
    std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 80, &v21)[5] = 0;
LABEL_11:
    for (i = *v4; i; i = *i)
    {
      v10 = *(i + 8);
      if (v10 <= v2)
      {
        if (v10 >= v2)
        {
          v21 = v2;
          v22 = &v21;
          v11 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 104, &v21)[5];
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          v21 = v2;
          v22 = &v21;
          std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 104, &v21)[5] = 0;
          break;
        }

        ++i;
      }
    }

    v12 = *v5;
    if (!*v5)
    {
      goto LABEL_29;
    }

    while (2)
    {
      v13 = *(v12 + 8);
      if (v13 > v2)
      {
LABEL_24:
        v12 = *v12;
        if (!v12)
        {
          goto LABEL_29;
        }

        continue;
      }

      break;
    }

    if (v13 < v2)
    {
      ++v12;
      goto LABEL_24;
    }

    v21 = v2;
    v22 = &v21;
    v14 = std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 128, &v21)[5];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v21 = v2;
    v22 = &v21;
    std::__tree<std::__value_type<unsigned int,XlChartEnteredData *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,XlChartEnteredData *>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,XlChartEnteredData *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 128, &v21)[5] = 0;
LABEL_29:
    ++v2;
  }

  while (v2 != 12);
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 80, *(this + 11));
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = v3;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 104, *(this + 14));
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = v4;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 128, *(this + 17));
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = v5;
  v15 = *(this + 4);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  *(this + 4) = 0;
  v16 = *(this + 5);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  *(this + 5) = 0;
  v17 = *(this + 6);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  *(this + 6) = 0;
  v18 = *(this + 7);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  *(this + 7) = 0;
  v19 = *(this + 8);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  *(this + 8) = 0;
  result = *(this + 9);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 9) = 0;
  return result;
}

void WrdParagraphProperties::~WrdParagraphProperties(WrdParagraphProperties *this)
{
  WrdParagraphProperties::~WrdParagraphProperties(this);

  JUMPOUT(0x25F897000);
}

{
  v2 = 0;
  *this = &unk_286ED5358;
  *(this + 1) = &unk_286ED53A0;
  do
  {
    v3 = *(this + 22);
    v4 = *(v3 + v2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v3 = *(this + 22);
    }

    *(v3 + v2) = 0;
    v2 += 8;
  }

  while (v2 != 512);
  *(this + 23) = *(this + 22);
  v5 = *(this + 25);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C80BDFB0063);
  }

  *(this + 25) = 0;
  v6 = *(this + 26);
  if (v6)
  {
    MEMORY[0x25F896FE0](v6, 0x1000C80BDFB0063);
  }

  *(this + 26) = 0;
  v7 = *(this + 27);
  if (v7)
  {
    MEMORY[0x25F896FE0](v7, 0x1000C80BDFB0063);
  }

  *(this + 27) = 0;
  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 4) = 0;
  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 5) = 0;
  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 6) = 0;
  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 7) = 0;
  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 8) = 0;
  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 9) = 0;
  v14 = *(this + 10);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(this + 10) = 0;
  v15 = *(this + 11);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  *(this + 11) = 0;
  v16 = *(this + 12);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  *(this + 12) = 0;
  v17 = *(this + 13);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  *(this + 13) = 0;
  v18 = *(this + 14);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  *(this + 14) = 0;
  v19 = *(this + 15);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  *(this + 15) = 0;
  v20 = *(this + 16);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  *(this + 16) = 0;
  v21 = *(this + 22);
  if (v21)
  {
    *(this + 23) = v21;
    operator delete(v21);
  }
}

void WrdAutoNumberListDescriptor::~WrdAutoNumberListDescriptor(WrdAutoNumberListDescriptor *this)
{
  WrdAutoNumberListDescriptor::~WrdAutoNumberListDescriptor(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED40E8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  CsString::~CsString((this + 16));
}

void WrdNumberRevisionMarkData::~WrdNumberRevisionMarkData(WrdNumberRevisionMarkData *this)
{
  WrdNumberRevisionMarkData::~WrdNumberRevisionMarkData(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5220;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8052888210);
  }

  *(this + 6) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C8077774924);
  }

  *(this + 7) = 0;
  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8052888210);
  }

  *(this + 5) = 0;
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 4) = 0;
  CsString::~CsString((this + 8));
}

void WrdCharacterProperties::~WrdCharacterProperties(WrdCharacterProperties *this)
{
  WrdCharacterProperties::~WrdCharacterProperties(this);

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286ED4270;
  this->var1 = &unk_286ED42A0;
  var6 = this->var6;
  if (var6)
  {
    (*(var6->var0 + 1))(var6);
  }

  this->var6 = 0;
  var7 = this->var7;
  if (var7)
  {
    (*(var7->var0 + 1))(var7);
  }

  this->var7 = 0;
  var8 = this->var8;
  if (var8)
  {
    (*(var8->var0 + 1))(var8);
  }

  this->var8 = 0;
  var9 = this->var9;
  if (var9)
  {
    (*(var9->var0 + 1))(var9);
  }

  this->var9 = 0;
  var10 = this->var10;
  if (var10)
  {
    (*(var10->var0 + 1))(var10);
  }

  this->var10 = 0;
  var11 = this->var11;
  if (var11)
  {
    (*(var11->var0 + 1))(var11);
  }

  this->var11 = 0;
  var12 = this->var12;
  if (var12)
  {
    (*(var12->var0 + 1))(var12);
  }

  this->var12 = 0;
  CsString::~CsString(&this->var5);
}

void WrdTableProperties::~WrdTableProperties(WrdTableProperties *this)
{
  WrdTableProperties::~WrdTableProperties(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5A58;
  *(this + 1) = &unk_286ED5A88;
  *(this + 32) = *(this + 31);
  WrdTableProperties::resetTableCellDescriptors(this);
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 5) = 0;
  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 6) = 0;
  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 7) = 0;
  v6 = *(this + 8);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 8) = 0;
  v7 = *(this + 9);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 9) = 0;
  v8 = *(this + 10);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 10) = 0;
  v9 = *(this + 11);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 11) = 0;
  v10 = *(this + 12);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 12) = 0;
  v11 = *(this + 13);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 13) = 0;
  v12 = *(this + 14);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 14) = 0;
  v13 = *(this + 15);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 15) = 0;
  v14 = *(this + 34);
  if (v14)
  {
    *(this + 35) = v14;
    operator delete(v14);
  }

  v15 = *(this + 31);
  if (v15)
  {
    *(this + 32) = v15;
    operator delete(v15);
  }
}

void WrdTableCellDescriptor::~WrdTableCellDescriptor(WrdTableCellDescriptor *this)
{
  WrdTableCellDescriptor::~WrdTableCellDescriptor(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED5A18;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 3) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 4) = 0;
  v5 = *(this + 5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 5) = 0;
  v6 = *(this + 6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 6) = 0;
  v7 = *(this + 7);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 7) = 0;
  v8 = *(this + 8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 8) = 0;
}

uint64_t WrdStyleSheet::getStyleReference(WrdStyleSheet *this, unsigned int a2)
{
  v2 = *(this + 3);
  if (((*(this + 4) - v2) >> 3) <= a2)
  {
    return *(this + 2);
  }

  v3 = *(v2 + 8 * a2);
  if (!v3)
  {
    return *(this + 2);
  }

  return v3;
}

uint64_t WrdParser::parse(WrdParser *this, WrdStyle *a2, unsigned int a3)
{
  result = (*(**(this + 16) + 80))(*(this + 16));
  v7 = *(a2 + 164);
  if (result)
  {
    v8 = result;
    *(a2 + 164) = v7 | 4;
    *(a2 + 78) = (*(**(this + 16) + 80))(*(this + 16)) & 0xFFF;
    v9 = (*(**(this + 16) + 80))(*(this + 16));
    *(a2 + 38) = v9 & 0xF;
    *(a2 + 79) = v9 >> 4;
    *(a2 + 80) = (*(**(this + 16) + 80))(*(this + 16)) >> 4;
    (*(**(this + 16) + 16))(*(this + 16), 2, 1);
    v10 = (*(**(this + 16) + 80))(*(this + 16));
    *(a2 + 164) = *(a2 + 164) & 0xEC | v10 & 1 | (v10 >> 7) & 2 | (v10 >> 5) & 0x10;
    if (a3 < 0xB)
    {
      if (a3 != 10)
      {
        goto LABEL_11;
      }

      v12 = 12;
    }

    else
    {
      v11 = *(this + 16);
      if (*(this + 38) < 10)
      {
        (*(*v11 + 16))(v11, a3 - 10, 1);
        v12 = (a3 + 2);
      }

      else
      {
        *(a2 + 164) = ((*(*v11 + 80))(v11) >> 9) & 8 | *(a2 + 164) & 0xF7;
        (*(**(this + 16) + 16))(*(this + 16), 6, 1);
        v12 = 20;
      }
    }

    v13 = v8 - v12;
    if (v13 < 0xFFFFFFFE)
    {
      operator new[](v13 + 2);
    }

LABEL_11:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  *(a2 + 164) = v7 & 0xFB;
  return result;
}

uint64_t WrdParser::parseUPX(WrdParser *this, WrdStyle *a2, unsigned __int16 *a3, unsigned __int16 *a4, int a5, unsigned __int16 *a6)
{
  if (!a3 || a3 >= a4 || a4 - a3 <= 1)
  {
    goto LABEL_10;
  }

  result = CsLeReadUInt16(a3);
  *a6 = result;
  if (result)
  {
    if (!a5)
    {
      goto LABEL_8;
    }

    if (a4 - (a3 + 1) > 1)
    {
      ResolvedParaPropsReference = WrdStyle::getResolvedParaPropsReference(a2);
      UInt16 = CsLeReadUInt16(a3 + 1);
      WrdParagraphProperties::setParagraphStyleIndex(ResolvedParaPropsReference, UInt16);
LABEL_8:
      operator new();
    }

LABEL_10:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  return result;
}

uint64_t WrdStyle::getResolvedParaPropsReference(WrdStyle *this)
{
  v1 = 40;
  if ((*(this + 164) & 8) == 0)
  {
    v1 = 32;
  }

  return *(this + v1);
}

WrdParagraphProperties *WrdParagraphProperties::setParagraphStyleIndex(WrdParagraphProperties *this, __int16 a2)
{
  *(this + 2) |= 1uLL;
  *(this + 70) = a2;
  return this;
}

unsigned __int16 *WrdPropertyParser::parseSPRM(unsigned __int16 *result, unint64_t a2, _WORD *a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v5 = result;
  if (result >= a2)
  {
    goto LABEL_12;
  }

  if (a2 - result <= 2)
  {
    *a4 = 0x100000000;
    *(a4 + 8) = 0;
    *(a4 + 12) = 0;
    *a3 = a2 - result;
    return result;
  }

  result = CsLeReadUInt16(result);
  *(a4 + 8) = result;
  *a3 = 2;
  v8 = *(a4 + 8);
  *(a4 + 10) = v8 & 0x1FF;
  *(a4 + 12) = (v8 & 0x200) != 0;
  *a4 = (v8 >> 10) & 7;
  *(a4 + 4) = v8 >> 13;
  if (v8 >> 13 == 6)
  {
    if ((v5 + 1) < a2)
    {
      v9 = *(v5 + 2);
      *(a4 + 13) = v9;
      if (v9 || v8 == 50709 || v8 == 54792)
      {
        ++*a3;
        return result;
      }
    }

LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 2001;
  }

  *(a4 + 13) = 0;
  return result;
}

WrdBaseParser *WrdChpParser::applySprm(WrdBaseParser *result, WrdStyle *this, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, _WORD *a6)
{
  v11 = result;
  if (*(a3 + 8) == 51845)
  {
    if (*(this + 38) == 3)
    {
      *a6 = WrdProperty::getSizeOfSPRMParameter(a3);
      if (a4 + 1 > a5)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 1004;
      }

      result = CsLeReadUInt16(a4);
      for (i = 0; i != 12; ++i)
      {
        if ((result >> i))
        {
          operator new();
        }
      }
    }
  }

  else
  {
    ResolvedCharProps = WrdStyle::getResolvedCharProps(this);
    WrdChpParser::applySprm(v11, ResolvedCharProps, 0, a3, a4, a5, a6);
    v14 = WrdStyle::getResolvedCharProps(this);

    return WrdCharacterProperties::clearAllRevisionAttributes(v14);
  }

  return result;
}

uint64_t WrdStyle::getResolvedCharProps(WrdStyle *this)
{
  v1 = 56;
  if ((*(this + 164) & 8) == 0)
  {
    v1 = 48;
  }

  return *(this + v1);
}

void WrdChpParser::applySprm(WrdBaseParser *a1, uint64_t a2, WrdCharacterProperties *a3, uint64_t a4, unsigned __int8 *a5, unsigned __int16 *a6, _WORD *a7)
{
  if (*a4 != 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    v117 = 2002;
LABEL_533:
    *exception = v117;
  }

  if (!a5)
  {
    goto LABEL_531;
  }

  *a7 = WrdProperty::getSizeOfSPRMParameter(a4);
  v13 = *(a4 + 8);
  if (v13 > 0x484D)
  {
    if (*(a4 + 8) > 0x6864u)
    {
      if (*(a4 + 8) <= 0xCA49u)
      {
        if (*(a4 + 8) <= 0x6A11u)
        {
          if (*(a4 + 8) <= 0x6886u)
          {
            if (v13 == 26725)
            {
              BorderReference = WrdCharacterProperties::getBorderReference(a2);

              WrdBaseParser::parseBRC80(a1, BorderReference, a5, a6);
            }

            else
            {
              if (v13 == 26736)
              {
                ColorReference = WrdCharacterProperties::getColorReference(a2);
              }

              else
              {
                if (v13 != 26743)
                {
                  return;
                }

                ColorReference = WrdCharacterProperties::getUnderlineColorReference(a2);
              }

              WrdBaseParser::parseBuffer(a1, ColorReference, a5, a6);
            }

            return;
          }

          if (v13 == 26759)
          {
            if (a6 <= a5 || (a6 - a5) <= 3)
            {
              goto LABEL_531;
            }

            SInt32 = CsLeReadSInt32(a5);

            WrdCharacterProperties::setCharPositionOfPictureBulletInBookmark(a2, SInt32);
            return;
          }

          if (v13 != 27139)
          {
            if (v13 != 27145)
            {
              return;
            }

            if (a6 <= a5 || (a6 - a5) <= 3)
            {
              goto LABEL_531;
            }

            UInt16 = CsLeReadUInt16(a5);
            WrdCharacterProperties::setFontIndexForSymbol(a2, UInt16);
            v37 = CsLeReadUInt16(a5 + 1);

            WrdCharacterProperties::setSymbolCharacter(a2, v37);
            return;
          }

          if (a6 <= a5 || (a6 - a5) <= 3)
          {
            goto LABEL_531;
          }

          v107 = CsLeReadSInt32(a5);
          WrdCharacterProperties::setOffsetToPictureData(a2, v107);
          WrdCharacterProperties::setOffsetToFormFieldData(a2, v107);
          WrdCharacterProperties::setObjectIDForOLE2(a2, v107);
          WrdCharacterProperties::setOffsetToOLEObjectData(a2, v107);
          v71 = a2;
          v70 = 1;
          goto LABEL_480;
        }

        if (*(a4 + 8) <= 0xCA30u)
        {
          switch(v13)
          {
            case 0x6A12u:
              v25 = "Unimplemented sprm code 0x6A12\n";
              v26 = 911;
              break;
            case 0x8840u:
              if (a6 <= a5 || (a6 - a5) <= 1)
              {
                goto LABEL_531;
              }

              v102 = CsLeReadUInt16(a5);

              WrdCharacterProperties::setSpaceAfterEachChar(a2, v102);
              return;
            case 0xCA13u:
              v25 = "Unimplemented sprm code 0xCA13 relating to threading authors\n";
              v26 = 923;
              break;
            default:
              return;
          }

          goto LABEL_524;
        }

        if (v13 == 51761)
        {
          if (*(a4 + 13) < 7u)
          {
            return;
          }

          if (a5 >= a6 || (a6 - a5) <= 5)
          {
            goto LABEL_531;
          }

          v77 = (a5 + 2);
          v78 = CsLeReadUInt16(v77);
          v79 = CsLeReadUInt16(v77);
          v80 = *(a2 + 332);
          if (v80 <= v78 || v80 > v79)
          {
            return;
          }

          v81 = &v77[v80 - v78];
          if (a6 <= v81 || (a6 - v81) <= 1)
          {
            goto LABEL_531;
          }

          v82 = CsLeReadUInt16(v81);
          WrdCharacterProperties::setStyleIndex(a2, v82);
          v25 = "Need to apply CHPXs in rgstd entries.";
          v26 = 274;
          goto LABEL_524;
        }

        if (v13 != 51783)
        {
          if (v13 != 51785)
          {
            return;
          }

          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          goto LABEL_203;
        }

LABEL_254:

        WrdChpParser::applyCMajoritySPRM(a1, a2, a3, a5, a6);
      }

      if (*(a4 + 8) > 0xCA75u)
      {
        if (*(a4 + 8) <= 0xCA88u)
        {
          if (v13 == 51830)
          {
            if (a6 <= a5 || (a6 - a5) <= 7)
            {
              goto LABEL_531;
            }

            v66 = CsLeReadSInt32(a5);
            WrdCharacterProperties::setFitTextWidth(a2, v66);
            v67 = CsLeReadSInt32(a5 + 1);

            WrdCharacterProperties::setFitTextID(a2, v67);
            return;
          }

          if (v13 != 51832)
          {
            if (v13 == 51836)
            {
              v118 = 255;
              v119 = 255;
              WrdBaseParser::parseBuffer(a1, &v119, a5, a6);
              WrdBaseParser::parseBuffer(a1, &v118, a5 + 4, a6);
              if (*(a2 + 30) == v119.var0 && *(a2 + 32) == v119.var1 && *(a2 + 34) == v119.var2 && *(a2 + 36) == v119.var3)
              {
                v28 = WrdCharacterProperties::getColorReference(a2);
                *v28 = v118;
              }
            }

            return;
          }

          if (a5 + 1 >= a6)
          {
            goto LABEL_531;
          }

          v103 = a5[1];
          v104 = (a5 + 2);
          if (v103 == 1)
          {
            if (a6 <= v104 || (a6 - v104) <= 2)
            {
              goto LABEL_531;
            }

            WrdCharacterProperties::setTatenakayoko(a2, 1);
            WrdCharacterProperties::setFitTextFE(a2, a5[2] == 16);
            WrdCharacterProperties::setTatenakayokoNewLineState(a2, a5[3]);
            v114 = a5[4];

            WrdCharacterProperties::setTatenakayokoID(a2, v114);
            return;
          }

          if (v103 == 2)
          {
            if (v104 >= a6)
            {
              goto LABEL_531;
            }

            WrdCharacterProperties::setWarichu(a2, 1);
            v105 = *v104;

            WrdCharacterProperties::setWarichuBracket(a2, v105);
            return;
          }

          v25 = "Unknown type in SPRM 0xCA78 relating to Far East layout";
          v26 = 872;
          goto LABEL_524;
        }

        if (v13 != 51849)
        {
          if (v13 == 59912)
          {
            v25 = "Unimplemented sprm code 0xEA08\n";
            v26 = 198;
          }

          else
          {
            if (v13 != 59967)
            {
              return;
            }

            if (a6 <= a5 || (a6 - a5) <= 1)
            {
              goto LABEL_531;
            }

            if (*a5)
            {
              if (a3)
              {
                WrdCharacterProperties::setFontSize(a3, 0);
              }

              WrdCharacterProperties::setFontSize(a2, 0);
            }

            if (a5[1] >= 2u)
            {
              ChLogFunction("Incomplete implementation of 0xEA3F CHP SPRM!", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdChpParser.cpp", 426);
            }

            v25 = "Incomplete implementation of 0xEA3F CHP SPRM!";
            v26 = 430;
          }

          goto LABEL_524;
        }

        if (a6 <= a5 || (a6 - a5) <= 2)
        {
          goto LABEL_531;
        }

        WrdCharacterProperties::setRevisionProperties(a2, *a5);
        v84 = CsLeReadUInt16((a5 + 1));
        WrdCharacterProperties::setIndexToAuthorIDOfRevisionProperties(a2, v84);
        RevisionPropertiesDateTimeReference = WrdCharacterProperties::getRevisionPropertiesDateTimeReference(a2);
        v56 = a1;
        v57 = a5 + 3;
      }

      else
      {
        if (*(a4 + 8) > 0xCA61u)
        {
          switch(v13)
          {
            case 0xCA62u:
              if (a5 >= a6)
              {
                goto LABEL_531;
              }

              if (*a5)
              {
                WrdCharacterProperties::setRevisionListNumber(a2, 1);
                if (a6 <= (a5 + 1) || (a6 - (a5 + 1)) <= 0x25)
                {
                  goto LABEL_531;
                }

                v72 = CsLeReadUInt16((a5 + 1));
                WrdCharacterProperties::setIndexToAuthorIDOfRevisionListNumber(a2, v72);
                RevisionListNumberDateTimeReference = WrdCharacterProperties::getRevisionListNumberDateTimeReference(a2);
                WrdBaseParser::parseBuffer(a1, RevisionListNumberDateTimeReference, a5 + 3, a6);
                v74 = *(a2 + 56);
                if (v74)
                {
                  for (i = 0; i != 32; ++i)
                  {
                    *(v74 + 2 * i) = a5[i + 7];
                  }
                }
              }

              else
              {

                WrdCharacterProperties::clearListNumberRevisionAttributes(a2);
              }

              break;
            case 0xCA71u:
              ShadingReference = WrdCharacterProperties::getShadingReference(a2);

              WrdBaseParser::parseBuffer(a1, ShadingReference, a5, a6);
              break;
            case 0xCA72u:
              v39 = WrdCharacterProperties::getBorderReference(a2);

              WrdBaseParser::parseBuffer(a1, v39, a5, a6);
              break;
          }

          return;
        }

        if (v13 == 51786)
        {
          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          SInt16 = CsLeReadSInt16(a5);
          WrdCharacterProperties::setFontSize(a2, SInt16);
          v63 = *(a2 + 312);
          if (v63 > 7)
          {
            if (v63 < 0x7FFF)
            {
              return;
            }

            v54 = a2;
            LOWORD(v41) = 32766;
          }

          else
          {
            v54 = a2;
            LOWORD(v41) = 8;
          }

          goto LABEL_294;
        }

        if (v13 == 51788)
        {
          goto LABEL_254;
        }

        if (v13 != 51799)
        {
          return;
        }

        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        v20 = *a5;
        if (!*a5)
        {
          goto LABEL_265;
        }

        if ((a6 - a5) < 7)
        {
          goto LABEL_531;
        }

        v21 = 0;
        while (a5[v21] == 255)
        {
          if (++v21 == 7)
          {
            return;
          }
        }

        WrdCharacterProperties::setRevisionProperties(a2, v20);
        v115 = CsLeReadUInt16((a5 + 1));
        WrdCharacterProperties::setIndexToAuthorIDOfRevisionProperties(a2, v115);
        RevisionPropertiesDateTimeReference = WrdCharacterProperties::getRevisionPropertiesDateTimeReference(a2);
        v57 = a5 + 3;
        v56 = a1;
      }

LABEL_528:

      WrdBaseParser::parseBuffer(v56, RevisionPropertiesDateTimeReference, v57, a6);
      return;
    }

    if (*(a4 + 8) > 0x4887u)
    {
      if (*(a4 + 8) <= 0x4A50u)
      {
        if (*(a4 + 8) > 0x4A4Cu)
        {
          if (v13 != 19021)
          {
            if (v13 == 19023)
            {
              if (a6 <= a5 || (a6 - a5) <= 1)
              {
                goto LABEL_531;
              }

              if (a3)
              {
                v95 = CsLeReadUInt16(a5);
                WrdCharacterProperties::setFontIndexForASCIIText(a3, v95);
              }

              v96 = CsLeReadUInt16(a5);

              WrdCharacterProperties::setFontIndexForASCIIText(a2, v96);
            }

            else
            {
              if (v13 != 19024)
              {
                return;
              }

              if (a6 <= a5 || (a6 - a5) <= 1)
              {
                goto LABEL_531;
              }

              v33 = CsLeReadUInt16(a5);

              WrdCharacterProperties::setFontIndexForFarEastAsianText(a2, v33);
            }

            return;
          }

          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          v53 = CsLeReadSInt16(a5);
          ChLogFunction("Do not understand how percentage number is stored yet for CHP SPRM 0x4A4D which applies to font size", 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdChpParser.cpp", 528);
          v41 = (v53 / 100.0);
          goto LABEL_293;
        }

        if (v13 == 18568)
        {
          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          v50 = CsLeReadUInt16(a5) != 0;

          WrdCharacterProperties::setListCharacterPictureBullet(a2, v50);
          return;
        }

        if (v13 == 18992)
        {
          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          v93 = CsLeReadUInt16(a5);

          WrdCharacterProperties::setStyleIndex(a2, v93);
          return;
        }

        if (v13 != 19011)
        {
          return;
        }

        if (a6 <= a5 || (a6 - a5) <= 1)
        {
          goto LABEL_531;
        }

        if (a3)
        {
          v18 = CsLeReadUInt16(a5);
          WrdCharacterProperties::setFontSize(a3, v18);
        }

LABEL_203:
        LOWORD(v41) = CsLeReadUInt16(a5);
LABEL_293:
        v54 = a2;
LABEL_294:

        WrdCharacterProperties::setFontSize(v54, v41);
        return;
      }

      if (*(a4 + 8) <= 0x6804u)
      {
        switch(v13)
        {
          case 0x4A51u:
            if (a6 <= a5 || (a6 - a5) <= 1)
            {
              goto LABEL_531;
            }

            if (a3)
            {
              v51 = CsLeReadUInt16(a5);
              WrdCharacterProperties::setFontIndexForOtherText(a3, v51);
            }

            v52 = CsLeReadUInt16(a5);

            WrdCharacterProperties::setFontIndexForOtherText(a2, v52);
            break;
          case 0x4A5Eu:
            if (a6 <= a5 || (a6 - a5) <= 1)
            {
              goto LABEL_531;
            }

            v94 = CsLeReadUInt16(a5);

            WrdCharacterProperties::setFontIndexForBiText(a2, v94);
            break;
          case 0x4A61u:
            if (a6 <= a5 || (a6 - a5) <= 1)
            {
              goto LABEL_531;
            }

            v23 = CsLeReadUInt16(a5);

            WrdCharacterProperties::setFontSizeForBiText(a2, v23);
            break;
          default:
            return;
        }

        return;
      }

      switch(v13)
      {
        case 0x6805u:
          RevisionEditReference = WrdCharacterProperties::getRevisionEditReference(a2);
          break;
        case 0x680Eu:
          if (a6 <= a5 || (a6 - a5) <= 3)
          {
            goto LABEL_531;
          }

          v97 = *a1;
          v98 = CsLeReadSInt32(a5);
          if (v97 < 10)
          {

            WrdCharacterProperties::setOffsetToOLE1Object(a2, v98);
          }

          else
          {

            WrdCharacterProperties::setOffsetToOLEObjectData(a2, v98);
          }

          return;
        case 0x6864u:
          RevisionEditReference = WrdCharacterProperties::getRevisionDeleteReference(a2);
          break;
        default:
          return;
      }

      RevisionPropertiesDateTimeReference = RevisionEditReference;
      v56 = a1;
      v57 = a5;
      goto LABEL_528;
    }

    if (*(a4 + 8) <= 0x4866u)
    {
      if (*(a4 + 8) <= 0x485Eu)
      {
        if (v13 == 18510)
        {
          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          WrdCharacterProperties::setHyphenationRule(a2, *a5);
          v89 = a5[1];

          WrdCharacterProperties::setHyphenationChangeCharacter(a2, v89);
        }

        else
        {
          if (v13 != 18514)
          {
            return;
          }

          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          v44 = CsLeReadUInt16(a5);

          WrdCharacterProperties::setCharacterScale(a2, v44);
        }
      }

      else
      {
        switch(v13)
        {
          case 0x485Fu:
            if (a6 <= a5 || (a6 - a5) <= 1)
            {
              goto LABEL_531;
            }

            v47 = CsLeReadUInt16(a5);

            WrdCharacterProperties::setLanguageIDForBiText(a2, v47);
            break;
          case 0x4863u:
            if (a6 <= a5 || (a6 - a5) <= 1)
            {
              goto LABEL_531;
            }

            v87 = CsLeReadUInt16(a5);
            if (v87 != 0xFFFF)
            {

              WrdCharacterProperties::setIndexToAuthorIDOfRevisionDelete(a2, v87);
            }

            break;
          case 0x4866u:
            v30 = WrdCharacterProperties::getShadingReference(a2);

            WrdBaseParser::parseSHD80(a1, v30, a5, a6);
            break;
        }
      }

      return;
    }

    if (*(a4 + 8) <= 0x486Du)
    {
      if (v13 == 18535)
      {
        if (a6 <= a5 || (a6 - a5) <= 1)
        {
          goto LABEL_531;
        }

        v48 = CsLeReadUInt16(a5);

        WrdCharacterProperties::setIndexToStringsForReasonsOfDeletion(a2, v48);
        return;
      }

      if (v13 == 18539)
      {
        if (a6 <= a5 || (a6 - a5) <= 1)
        {
          goto LABEL_531;
        }

        v91 = CsLeReadUInt16(a5);

        WrdCharacterProperties::setCodePageForPreUnicodeFiles(a2, v91);
        return;
      }

      if (v13 != 18541)
      {
        return;
      }

      goto LABEL_249;
    }

    if (v13 != 18542)
    {
      if (v13 == 18547)
      {
LABEL_249:
        if (a6 <= a5 || (a6 - a5) <= 1)
        {
          goto LABEL_531;
        }

        v46 = CsLeReadUInt16(a5);

        WrdCharacterProperties::setLanguageIDForDefaultText(a2, v46);
        return;
      }

      if (v13 != 18548)
      {
        return;
      }
    }

    if (a6 <= a5 || (a6 - a5) <= 1)
    {
      goto LABEL_531;
    }

    v32 = CsLeReadUInt16(a5);

    WrdCharacterProperties::setLanguageIDForFarEastAsianText(a2, v32);
    return;
  }

  if (*(a4 + 8) > 0x2858u)
  {
    if (*(a4 + 8) <= 0x2A41u)
    {
      if (*(a4 + 8) <= 0x287Eu)
      {
        if (*(a4 + 8) <= 0x2878u)
        {
          if (v13 == 10329)
          {
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v113 = *a5;

            WrdCharacterProperties::setTextAnimation(a2, v113);
          }

          else
          {
            if (v13 != 10351)
            {
              return;
            }

            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v45 = *a5;

            WrdCharacterProperties::setCharacterTypeIDHint(a2, v45);
          }

          return;
        }

        switch(v13)
        {
          case 0x2879u:
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v88 = *a5;

            WrdCharacterProperties::setLineBreak(a2, v88);
            return;
          case 0x287Du:
            v25 = "Unimplemented sprm code 0x287D\n";
            v26 = 841;
            break;
          case 0x287Eu:
            v25 = "Unimplemented sprm code 0x287E\n";
            v26 = 878;
            break;
          default:
            return;
        }

        goto LABEL_524;
      }

      if (*(a4 + 8) > 0x2A32u)
      {
        switch(v13)
        {
          case 0x2A33u:
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v85 = *a5 == 1;

            WrdCharacterProperties::setUseParagraphStylesProperties(a2, v85);
            break;
          case 0x2A34u:
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v112 = *a5;

            WrdCharacterProperties::setEmphasisMark(a2, v112);
            break;
          case 0x2A3Eu:
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            if (a3)
            {
              WrdCharacterProperties::setUnderline(a3, *a5);
            }

            v43 = *a5;

            WrdCharacterProperties::setUnderline(a2, v43);
            break;
          default:
            return;
        }

        return;
      }

      if (v13 - 10367 < 2)
      {
        v25 = "Unimplemented sprm code 0x287F or 0x2880\n";
        v26 = 930;
        goto LABEL_524;
      }

      if (v13 == 10764)
      {
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        WrdCharacterProperties::setHighlightColor97(a2, *a5);
        v58 = *(a2 + 156) != 0;

        WrdCharacterProperties::setHighlighted(a2, v58);
        return;
      }

      if (v13 != 10802)
      {
        return;
      }

      WrdCharacterProperties::setBold(a2, 0);
      WrdCharacterProperties::setItalic(a2, 0);
      WrdCharacterProperties::setOutline(a2, 0);
      WrdCharacterProperties::setStrikethrough(a2, 0);
      WrdCharacterProperties::setShadow(a2, 0);
      WrdCharacterProperties::setSmallCaps(a2, 0);
      WrdCharacterProperties::setCaps(a2, 0);
      WrdCharacterProperties::setHidden(a2, 0);
      WrdCharacterProperties::setUnderline(a2, 0);
      v16 = a2;
      v17 = 0;
      goto LABEL_395;
    }

    if (*(a4 + 8) <= 0x2A82u)
    {
      if (*(a4 + 8) > 0x2A45u)
      {
        if (v13 != 10822)
        {
          if (v13 == 10824)
          {
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v86 = *a5;

            WrdCharacterProperties::setSuperSubscript(a2, v86);
          }

          else
          {
            if (v13 != 10835)
            {
              return;
            }

            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v29 = *a5 == 1;

            WrdCharacterProperties::setDoubleStrikethrough(a2, v29);
          }

          return;
        }

        v25 = "Unimplemented sprm code 0x2A46\n";
        v26 = 478;
        goto LABEL_524;
      }

      if (v13 != 10818)
      {
        if (v13 != 10820)
        {
          return;
        }

        v25 = "Unimplemented sprm code 0x2A44\n";
        v26 = 466;
        goto LABEL_524;
      }

      if (a5 >= a6)
      {
        goto LABEL_531;
      }

      if (a3)
      {
        WrdCharacterProperties::setColor97(a3, *a5);
      }

      v17 = *a5;
      v16 = a2;
LABEL_395:

      WrdCharacterProperties::setColor97(v16, v17);
      return;
    }

    if (*(a4 + 8) > 0x4806u)
    {
      switch(v13)
      {
        case 0x4807u:
          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          v49 = CsLeReadUInt16(a5);

          WrdCharacterProperties::setIndexToStringsForReasons(a2, v49);
          break;
        case 0x4845u:
          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          v92 = CsLeReadSInt16(a5);

          WrdCharacterProperties::setCharacterPosition(a2, v92);
          break;
        case 0x484Bu:
          if (a6 <= a5 || (a6 - a5) <= 1)
          {
            goto LABEL_531;
          }

          v31 = CsLeReadUInt16(a5);

          WrdCharacterProperties::setKerning(a2, v31);
          break;
        default:
          return;
      }

      return;
    }

    if (v13 != 10883)
    {
      if (v13 == 10896)
      {
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        v90 = *a5;

        WrdCharacterProperties::setXmlTag(a2, v90);
      }

      else
      {
        if (v13 != 18436)
        {
          return;
        }

        if (a6 <= a5 || (a6 - a5) <= 1)
        {
          goto LABEL_531;
        }

        v22 = CsLeReadUInt16(a5);

        WrdCharacterProperties::setIndexToAuthorIDOfRevisionEdit(a2, v22);
      }

      return;
    }

    if (a5 >= a6)
    {
      goto LABEL_531;
    }

    v20 = *a5;
LABEL_265:

    WrdCharacterProperties::setRevisionProperties(a2, v20);
    return;
  }

  if (*(a4 + 8) > 0x83Au)
  {
    if (*(a4 + 8) <= 0x859u)
    {
      if (*(a4 + 8) <= 0x854u)
      {
        switch(v13)
        {
          case 0x83Bu:
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            WrdCharacterProperties::setCaps(a2, *a5);
            if (a3)
            {
              v61 = WrdCharacterProperties::resolveToAbsolute(a3->var28, *(a2 + 188));

              WrdCharacterProperties::setCaps(a3, v61);
            }

            break;
          case 0x83Cu:
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            if (*a5 == 255)
            {
              v100 = 1;
            }

            else
            {
              v100 = *a5;
            }

            WrdCharacterProperties::setHidden(a2, v100);
            break;
          case 0x854u:
            if (a5 >= a6)
            {
              goto LABEL_531;
            }

            v19 = *a5;

            WrdCharacterProperties::setEngraved(a2, v19);
            break;
          default:
            return;
        }

        return;
      }

      if (v13 != 2133)
      {
        if (v13 == 2134)
        {
          if (a5 >= a6)
          {
            goto LABEL_531;
          }

          v108 = *a5 == 1;

          WrdCharacterProperties::setEmbeddedObject(a2, v108);
        }

        else
        {
          if (v13 != 2136)
          {
            return;
          }

          if (a5 >= a6)
          {
            goto LABEL_531;
          }

          v38 = *a5;

          WrdCharacterProperties::setEmbossed(a2, v38);
        }

        return;
      }

      if (a5 >= a6)
      {
        goto LABEL_531;
      }

      v70 = *a5 == 1;
      v71 = a2;
LABEL_480:

      WrdCharacterProperties::setSpecialCharacter(v71, v70);
      return;
    }

    if (*(a4 + 8) > 0x85Cu)
    {
      switch(v13)
      {
        case 0x85Du:
          if (a5 >= a6)
          {
            goto LABEL_531;
          }

          v83 = *a5;

          WrdCharacterProperties::setItalicBi(a2, v83);
          break;
        case 0x868u:
          if (a5 >= a6)
          {
            goto LABEL_531;
          }

          v111 = *a5;

          WrdCharacterProperties::setUsePageSetupLinePitch(a2, v111);
          break;
        case 0x875u:
          if (a5 >= a6)
          {
            goto LABEL_531;
          }

          v42 = *a5 == 1;

          WrdCharacterProperties::setNoProof(a2, v42);
          break;
        default:
          return;
      }

      return;
    }

    if (v13 == 2138)
    {
      if (a5 >= a6)
      {
        goto LABEL_531;
      }

      v65 = *a5;

      WrdCharacterProperties::setRightToLeft(a2, v65);
      return;
    }

    if (v13 != 2139)
    {
      if (a5 >= a6)
      {
        goto LABEL_531;
      }

      v27 = *a5;

      WrdCharacterProperties::setBoldBi(a2, v27);
      return;
    }

    v25 = "Unimplemented sprm code 0x085B\n";
    v26 = 668;
LABEL_524:

    ChLogFunction(v25, 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdChpParser.cpp", v26);
    return;
  }

  if (*(a4 + 8) > 0x834u)
  {
    if (*(a4 + 8) > 0x837u)
    {
      if (v13 == 2104)
      {
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        WrdCharacterProperties::setOutline(a2, *a5);
        if (a3)
        {
          v76 = WrdCharacterProperties::resolveToAbsolute(a3->var25, *(a2 + 176));

          WrdCharacterProperties::setOutline(a3, v76);
        }
      }

      else if (v13 == 2105)
      {
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        WrdCharacterProperties::setShadow(a2, *a5);
        if (a3)
        {
          v110 = WrdCharacterProperties::resolveToAbsolute(a3->var30, *(a2 + 196));

          WrdCharacterProperties::setShadow(a3, v110);
        }
      }

      else
      {
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        WrdCharacterProperties::setSmallCaps(a2, *a5);
        if (a3)
        {
          v40 = WrdCharacterProperties::resolveToAbsolute(a3->var27, *(a2 + 184));

          WrdCharacterProperties::setSmallCaps(a3, v40);
        }
      }
    }

    else if (v13 == 2101)
    {
      if (a5 >= a6)
      {
        goto LABEL_531;
      }

      WrdCharacterProperties::setBold(a2, *a5);
      if (a3)
      {
        v64 = WrdCharacterProperties::resolveToAbsolute(a3->var23, *(a2 + 168));

        WrdCharacterProperties::setBold(a3, v64);
      }
    }

    else if (v13 == 2102)
    {
      if (a5 >= a6)
      {
        goto LABEL_531;
      }

      WrdCharacterProperties::setItalic(a2, *a5);
      if (a3)
      {
        v101 = WrdCharacterProperties::resolveToAbsolute(a3->var24, *(a2 + 172));

        WrdCharacterProperties::setItalic(a3, v101);
      }
    }

    else
    {
      if (a5 >= a6)
      {
        goto LABEL_531;
      }

      WrdCharacterProperties::setStrikethrough(a2, *a5);
      if (a3)
      {
        v24 = WrdCharacterProperties::resolveToAbsolute(a3->var26, *(a2 + 180));

        WrdCharacterProperties::setStrikethrough(a3, v24);
      }
    }
  }

  else if (*(a4 + 8) > 0x805u)
  {
    switch(v13)
    {
      case 0x806u:
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        v68 = *a5 == 1;

        WrdCharacterProperties::setData(a2, v68);
        break;
      case 0x80Au:
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        v106 = *a5 == 1;

        WrdCharacterProperties::setOle2(a2, v106);
        break;
      case 0x811u:
        if (a5 >= a6)
        {
          goto LABEL_531;
        }

        v35 = *a5 == 1;

        WrdCharacterProperties::setHiddenInWebView(a2, v35);
        break;
      default:
        return;
    }
  }

  else
  {
    if (v13 != 2048)
    {
      if (v13 != 2049)
      {
        if (v13 != 2050)
        {
          return;
        }

        if (a5 < a6)
        {
          v14 = *a5;

          WrdCharacterProperties::setFieldVanish(a2, v14);
          return;
        }

        goto LABEL_531;
      }

      if (a5 < a6)
      {
        v99 = *a5;

        WrdCharacterProperties::setRevisionMark(a2, v99);
        return;
      }

LABEL_531:
      exception = __cxa_allocate_exception(4uLL);
      v117 = 1004;
      goto LABEL_533;
    }

    if (a5 >= a6)
    {
      goto LABEL_531;
    }

    v59 = *a5;

    WrdCharacterProperties::setRevisionMarkDelete(a2, v59);
  }
}

uint64_t WrdProperty::getSizeOfSPRMParameter(uint64_t a1)
{
  SizeOfSPRMParameter = WrdProperty::getSizeOfSPRMParameter(*(a1 + 4));
  v3 = *(a1 + 13);
  if (v3 == 255)
  {
    LOWORD(v3) = -1;
  }

  if (SizeOfSPRMParameter)
  {
    LOWORD(v3) = SizeOfSPRMParameter;
  }

  return v3;
}

WrdCharacterProperties *WrdCharacterProperties::setFontSize(WrdCharacterProperties *this, unsigned __int16 a2)
{
  *&this->var2 |= 0x1000uLL;
  this->var62 = a2;
  return this;
}

uint64_t WrdCharacterProperties::clearAllRevisionAttributes(WrdCharacterProperties *this)
{
  *&this->var2 &= ~8uLL;
  this->var36 = 0;
  *(&this->var2 + 6) &= ~0x40u;
  (*(this->var12->var0 + 3))(this->var12);
  *(&this->var2 + 2) &= ~0x4000u;
  this->var71 = 0;
  *&this->var2 &= ~0x40uLL;
  this->var37 = 0;
  *(&this->var2 + 6) &= ~0x20u;
  (*(this->var11->var0 + 3))(this->var11);
  *&this->var2 &= ~0x80000000000000uLL;
  this->var61 = 0;
  *(&this->var2 + 2) &= ~0x80000000;
  *(this + 85) &= ~0x1000000u;
  *(&this->var2 + 6) &= ~2u;
  (*(this->var10->var0 + 3))(this->var10);
  *(&this->var2 + 6) &= ~1u;
  this->var70 = 0;
  this->var5.var2 = 0;
  bzero(this->var5.var1, 2 * this->var5.var3);
  v2 = *(&this->var2 + 2);
  *(this + 85) &= ~0x800000u;
  *(&this->var2 + 2) = v2 & 0xFD7FFFFF;
  result = (*(this->var8->var0 + 3))(this->var8);
  *(&this->var2 + 2) &= ~0x1000000u;
  this->var69 = 0;
  return result;
}

uint64_t WrdCharacterProperties::setLanguageIDForBiText(uint64_t result, int a2)
{
  *(result + 16) |= 0x800000000000uLL;
  *(result + 240) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setLanguageIDForDefaultText(uint64_t result, int a2)
{
  *(result + 16) |= 0x200000000000uLL;
  *(result + 232) = a2;
  return result;
}

uint64_t WrdCharacterProperties::setLanguageIDForFarEastAsianText(uint64_t result, int a2)
{
  *(result + 16) |= 0x400000000000uLL;
  *(result + 236) = a2;
  return result;
}

WrdBaseParser *WrdPapParser::applySprm(WrdBaseParser *result, WrdStyle *this, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, _WORD *a6, uint64_t a7)
{
  v12 = result;
  if (*(a3 + 8) == 50790)
  {
    if (*(this + 38) == 3)
    {
      *a6 = WrdProperty::getSizeOfSPRMParameter(a3);
      if (a4 + 1 > a5)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 1004;
      }

      result = CsLeReadUInt16(a4);
      for (i = 0; i != 12; ++i)
      {
        if ((result >> i))
        {
          LOWORD(v23) = 0;
          LODWORD(__p) = 0;
          operator new();
        }
      }
    }
  }

  else
  {
    v23 = 0;
    ResolvedParaPropsReference = WrdStyle::getResolvedParaPropsReference(this);
    WrdPapParser::applySprm(v12, ResolvedParaPropsReference, a3, a4, a5, a6, &v23);
    v15 = v23;
    if ((v23 & 0x80000000) == 0)
    {
      __p = 0;
      v21 = 0;
      v22 = 0;
      v16 = WrdStyle::getResolvedParaPropsReference(this);
      WrdParser::applyHugePapx(a7, &__p, v15, v16, 0, *(this + 8), 0);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }
    }

    v17 = WrdStyle::getResolvedParaPropsReference(this);
    return WrdParagraphProperties::clearAllRevisionAttributes(v17);
  }

  return result;
}

void sub_25D2E1FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WrdPapParser::applySprm(WrdBaseParser *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int16 *a5, _WORD *a6, _DWORD *a7)
{
  *a7 = -1;
  if (*a3 != 1)
  {
    exception = __cxa_allocate_exception(4uLL);
    v97 = 2002;
    goto LABEL_388;
  }

  if (!a4 || (SizeOfSPRMParameter = WrdProperty::getSizeOfSPRMParameter(a3), *a6 = SizeOfSPRMParameter, SizeOfSPRMParameter) && SizeOfSPRMParameter != 0xFFFF && (a5 <= a4 || a5 - a4 < SizeOfSPRMParameter))
  {
LABEL_386:
    exception = __cxa_allocate_exception(4uLL);
    v97 = 1004;
    goto LABEL_388;
  }

  v15 = *(a3 + 8);
  if (v15 <= 0x460F)
  {
    if (*(a3 + 8) <= 0x245Au)
    {
      if (*(a3 + 8) > 0x2416u)
      {
        switch(*(a3 + 8))
        {
          case 0x242A:
            v16 = *a4 == 1;

            WrdParagraphProperties::setNoAutoHyphenate(a2, v16);
            break;
          case 0x242B:
          case 0x242C:
          case 0x242D:
          case 0x242E:
          case 0x242F:
          case 0x2432:
          case 0x2439:
          case 0x243A:
          case 0x243B:
          case 0x243C:
          case 0x243D:
          case 0x243E:
          case 0x243F:
          case 0x2440:
          case 0x2442:
          case 0x2444:
          case 0x2445:
          case 0x2446:
          case 0x2449:
          case 0x244A:
            return;
          case 0x2430:
            v88 = *a4 == 1;

            WrdParagraphProperties::setLocked(a2, v88);
            break;
          case 0x2431:
            v87 = *a4 == 1;

            WrdParagraphProperties::setWidowed(a2, v87);
            break;
          case 0x2433:
            v86 = *a4 == 1;

            WrdParagraphProperties::setKinsoku(a2, v86);
            break;
          case 0x2434:
            v85 = *a4 == 1;

            WrdParagraphProperties::setWordWrap(a2, v85);
            break;
          case 0x2435:
            v89 = *a4 == 1;

            WrdParagraphProperties::setOverflowPunctuation(a2, v89);
            break;
          case 0x2436:
            v83 = *a4 == 1;

            WrdParagraphProperties::setTopLinePunctuationProcessing(a2, v83);
            break;
          case 0x2437:
            v82 = *a4 == 1;

            WrdParagraphProperties::setAutoSpaceEastAsianAndAlphabeticCharacters(a2, v82);
            break;
          case 0x2438:
            v84 = *a4 == 1;

            WrdParagraphProperties::setAutoSpaceEastAsianAndNumericCharacters(a2, v84);
            break;
          case 0x2441:
            v91 = *a4 == 1;

            WrdParagraphProperties::setBiDi(a2, v91);
            break;
          case 0x2443:
            v92 = *a4 == 1;

            WrdParagraphProperties::setParagraphNumberInserted(a2, v92);
            break;
          case 0x2447:
            v93 = *a4 == 1;

            WrdParagraphProperties::setPageSetupLinePitch(a2, v93);
            break;
          case 0x2448:
            v94 = *a4 == 1;

            WrdParagraphProperties::setAdjustRightMargin(a2, v94);
            break;
          case 0x244B:
            v90 = *a4 == 1;

            WrdParagraphProperties::setInnerTableCell(a2, v90);
            break;
          case 0x244C:
            v81 = *a4 == 1;

            WrdParagraphProperties::setInnerTableTrailerParagraph(a2, v81);
            break;
          default:
            if (v15 == 9239)
            {
              v95 = *a4 == 1;

              WrdParagraphProperties::setTableTrailerParagraph(a2, v95);
            }

            else if (v15 == 9251)
            {
              v45 = *a4;

              WrdParagraphProperties::setWrapCode(a2, v45);
            }

            break;
        }

        return;
      }

      if (*(a3 + 8) <= 0x2406u)
      {
        if (*(a3 + 8) > 0x2404u)
        {
          if (v15 == 9221)
          {
            v47 = *a4 == 1;

            WrdParagraphProperties::setKeepOnOnePage(a2, v47);
          }

          else
          {
            v39 = *a4 != 0;

            WrdParagraphProperties::setKeepFollowingParagraph(a2, v39);
          }
        }

        else if (v15 == 9219)
        {
          v46 = *a4;

          WrdParagraphProperties::setJustificationV8(a2, v46);
        }

        else if (v15 == 9220)
        {
          v30 = *a4 == 1;

          WrdParagraphProperties::setSideBySide(a2, v30);
        }
      }

      else if (*(a3 + 8) <= 0x2408u)
      {
        if (v15 == 9223)
        {
          v50 = *a4 == 1;

          WrdParagraphProperties::setPageBreakBefore(a2, v50);
        }

        else
        {
          v40 = *a4;

          WrdParagraphProperties::setBorderLineStyle(a2, v40);
        }
      }

      else
      {
        switch(v15)
        {
          case 0x2409u:
            v48 = *a4;

            WrdParagraphProperties::setBorderCode(a2, v48);
            break;
          case 0x240Cu:
            v49 = *a4 == 1;

            WrdParagraphProperties::setNoLineNumbering(a2, v49);
            break;
          case 0x2416u:
            v23 = *a4 == 1;
            goto LABEL_297;
          default:
            return;
        }
      }

      return;
    }

    if (*(a3 + 8) <= 0x4427u)
    {
      if (*(a3 + 8) <= 0x261Au)
      {
        if (*(a3 + 8) <= 0x2461u)
        {
          switch(v15)
          {
            case 0x245Bu:
              v56 = *a4 == 1;

              WrdParagraphProperties::setVerticalSpacingBeforeAutomatic(a2, v56);
              break;
            case 0x245Cu:
              v64 = *a4 == 1;

              WrdParagraphProperties::setVerticalSpacingAfterAutomatic(a2, v64);
              break;
            case 0x2461u:
              v24 = *a4;

              WrdParagraphProperties::setJustification(a2, v24);
              break;
          }

          return;
        }

        if (v15 == 9314)
        {
          v57 = *a4 == 1;

          WrdParagraphProperties::setNoOverlapAllowed(a2, v57);
          return;
        }

        if (v15 != 9730)
        {
          if (v15 == 9738)
          {
            v31 = *a4;

            WrdParagraphProperties::setListLevel(a2, v31);
          }

          return;
        }

        v66 = *(a2 + 140);
        if ((v66 - 1) > 8)
        {
          return;
        }

        if ((*a4 & 0x50) != 0)
        {
          v67 = *a4 | 0xFF00;
        }

        else
        {
          v67 = *a4;
        }

        WrdParagraphProperties::setParagraphStyleIndex(a2, v66 + v67);
        v68 = *(a2 + 299) + v67;
      }

      else
      {
        if (*(a3 + 8) > 0x4423u)
        {
          if (*(a3 + 8) > 0x4425u)
          {
            if (v15 == 17446)
            {
              BorderBottomReference = WrdParagraphProperties::getBorderBottomReference(a2);
            }

            else
            {
              BorderBottomReference = WrdParagraphProperties::getBorderRightReference(a2);
            }
          }

          else if (v15 == 17444)
          {
            BorderBottomReference = WrdParagraphProperties::getBorderTopReference(a2);
          }

          else
          {
            BorderBottomReference = WrdParagraphProperties::getBorderLeftReference(a2);
          }

          goto LABEL_243;
        }

        if (v15 == 9755)
        {
          v73 = *a4;
          if ((v73 & 0x30) != 0x30)
          {
            WrdCharacterProperties::setTextAnimation(a2, (v73 & 0x30) >> 4);
          }

          if ((~v73 & 0xC0) != 0)
          {

            WrdParagraphProperties::setHorizontalPosition(a2, v73 >> 6);
          }

          return;
        }

        if (v15 != 9792)
        {
          if (v15 == 9828)
          {
            v36 = *a4 == 1;

            WrdParagraphProperties::setRevisionMark(a2, v36);
          }

          return;
        }

        v68 = *a4;
      }

      WrdParagraphProperties::setOutlineLevel(a2, v68);
      return;
    }

    if (*(a3 + 8) > 0x4454u)
    {
      if (*(a3 + 8) <= 0x4457u)
      {
        if (v15 == 17493)
        {
          SInt16 = CsLeReadSInt16(a4);

          WrdParagraphProperties::setRightIndentCharacterUnits(a2, SInt16);
        }

        else if (v15 == 17494)
        {
          v80 = CsLeReadSInt16(a4);

          WrdParagraphProperties::setLeftIndentCharacterUnits(a2, v80);
        }

        else
        {
          v37 = CsLeReadSInt16(a4);

          WrdParagraphProperties::setFirstLineIndentCharacterUnits(a2, v37);
        }
      }

      else if (*(a3 + 8) > 0x45FFu)
      {
        if (v15 == 17920)
        {
          UInt16 = CsLeReadUInt16(a4);

          WrdParagraphProperties::setParagraphStyleIndex(a2, UInt16);
        }

        else if (v15 == 17931)
        {
          v41 = CsLeReadUInt16(a4);

          WrdParagraphProperties::setIndexToList(a2, v41);
        }
      }

      else if (v15 == 17496)
      {
        v51 = CsLeReadSInt16(a4);

        WrdParagraphProperties::setLineSpaceBefore(a2, v51);
      }

      else if (v15 == 17497)
      {
        v20 = CsLeReadSInt16(a4);

        WrdParagraphProperties::setLineSpaceAfter(a2, v20);
      }

      return;
    }

    if (*(a3 + 8) > 0x442Cu)
    {
      switch(v15)
      {
        case 0x442Du:
          ShadingReference = WrdParagraphProperties::getShadingReference(a2);

          WrdBaseParser::parseSHD80(a1, ShadingReference, a4, a5);
          break;
        case 0x4439u:
          v69 = CsLeReadUInt16(a4);

          WrdParagraphProperties::setFontAlignment(a2, v69);
          break;
        case 0x443Au:
          v32 = CsLeReadUInt16(a4);
          WrdParagraphProperties::setVertical(a2, v32 & 1);
          WrdParagraphProperties::setBackward(a2, (v32 & 2) != 0);

          WrdParagraphProperties::setRotateFont(a2, (v32 & 4) != 0);
          break;
      }

      return;
    }

    if (v15 != 17448)
    {
      if (v15 == 17451)
      {
        v65 = CsLeReadUInt16(a4);

        WrdParagraphProperties::setAbsoluteHeight(a2, v65);
      }

      else if (v15 == 17452)
      {
        DropCapReference = WrdParagraphProperties::getDropCapReference(a2);

        WrdBaseParser::parseBuffer(a1, DropCapReference, a4, a5);
      }

      return;
    }

    BorderBottomReference = WrdParagraphProperties::getBorderBetweenReference(a2);
LABEL_243:

    WrdBaseParser::parseBRC70(a1, BorderBottomReference, a4, a5);
    return;
  }

  if (*(a3 + 8) <= 0x8417u)
  {
    if (*(a3 + 8) > 0x6425u)
    {
      if (*(a3 + 8) <= 0x6648u)
      {
        if (*(a3 + 8) <= 0x646Au)
        {
          switch(v15)
          {
            case 0x6426u:
              BorderRightReference = WrdParagraphProperties::getBorderBottomReference(a2);
              break;
            case 0x6427u:
              BorderRightReference = WrdParagraphProperties::getBorderRightReference(a2);
              break;
            case 0x6428u:
              BorderRightReference = WrdParagraphProperties::getBorderBetweenReference(a2);
              break;
            default:
              return;
          }

          goto LABEL_234;
        }

        if (v15 - 26181 < 2 || v15 == 25707)
        {
          *a7 = CsLeReadSInt32(a4);
          return;
        }

        v38 = 26153;
LABEL_168:
        if (v15 != v38)
        {
          return;
        }

        BorderBottomReference = WrdParagraphProperties::getBorderBarReference(a2);
        goto LABEL_243;
      }

      if (*(a3 + 8) <= 0x840Du)
      {
        if (v15 == 26185)
        {
          SInt32 = CsLeReadSInt32(a4);
        }

        else
        {
          if (v15 != 26186)
          {
            if (v15 == 26196)
            {
              v27 = (*(WrdParagraphProperties::getAutoNumberListDescriptorReference(a2) + 8) + 8);

              WrdBaseParser::parseBuffer(a1, v27, a4, a5);
            }

            return;
          }

          SInt32 = *(a2 + 244) + CsLeReadSInt32(a4);
        }

        WrdParagraphProperties::setTableNestingLevel(a2, SInt32);
        v23 = SInt32 > 0;
LABEL_297:

        WrdParagraphProperties::setParagraphInTable(a2, v23);
        return;
      }

      if (v15 == 33806)
      {
        v63 = CsLeReadSInt16(a4);

        WrdParagraphProperties::setRightIndent(a2, v63);
        return;
      }

      if (v15 != 33807)
      {
        if (v15 == 33809)
        {
          v33 = CsLeReadSInt16(a4);

          WrdParagraphProperties::setFirstLineLeftIndent(a2, v33);
        }

        return;
      }

      v61 = CsLeReadSInt16(a4);
      v60 = a2;
    }

    else
    {
      if (*(a3 + 8) > 0x4620u)
      {
        if (*(a3 + 8) > 0x465Eu)
        {
          if (*(a3 + 8) <= 0x6423u)
          {
            if (v15 != 18015)
            {
              if (v15 == 25618)
              {
                LineSpaceReference = WrdParagraphProperties::getLineSpaceReference(a2);

                WrdBaseParser::parseBuffer(a1, LineSpaceReference, a4, a5);
              }

              return;
            }

            v53 = CsLeReadSInt16(a4);
            WrdParagraphProperties::setLeadingIndent(a2, *(a2 + 252) + v53);
            if ((*(a2 + 252) & 0x80000000) == 0)
            {
              return;
            }

            v54 = a2;
            v55 = 0;
            goto LABEL_278;
          }

          if (v15 == 25636)
          {
            BorderRightReference = WrdParagraphProperties::getBorderTopReference(a2);
          }

          else
          {
            BorderRightReference = WrdParagraphProperties::getBorderLeftReference(a2);
          }

LABEL_234:

          WrdBaseParser::parseBRC80(a1, BorderRightReference, a4, a5);
          return;
        }

        if (v15 != 17953)
        {
          if (v15 != 17954)
          {
            v38 = 17961;
            goto LABEL_168;
          }

LABEL_198:
          v44 = CsLeReadUInt16(a4);

          WrdParagraphProperties::setHorizontalDistanceFromText(a2, v44);
          return;
        }

        BorderBarReference = WrdParagraphProperties::getBorderBarReference(a2);
LABEL_310:

        WrdBaseParser::parseBRC10(a1, BorderBarReference, a4, a5);
        return;
      }

      if (*(a3 + 8) > 0x461Du)
      {
        if (v15 == 17950)
        {
          BorderBarReference = WrdParagraphProperties::getBorderBottomReference(a2);
        }

        else if (v15 == 17951)
        {
          BorderBarReference = WrdParagraphProperties::getBorderRightReference(a2);
        }

        else
        {
          BorderBarReference = WrdParagraphProperties::getBorderBetweenReference(a2);
        }

        goto LABEL_310;
      }

      if (v15 != 17936)
      {
        if (v15 == 17948)
        {
          BorderBarReference = WrdParagraphProperties::getBorderTopReference(a2);
        }

        else
        {
          if (v15 != 17949)
          {
            return;
          }

          BorderBarReference = WrdParagraphProperties::getBorderLeftReference(a2);
        }

        goto LABEL_310;
      }

      v59 = CsLeReadSInt16(a4);
      if (!v59)
      {
        return;
      }

      WrdParagraphProperties::setLeftIndent(a2, *(a2 + 268) + v59);
      if ((*(a2 + 268) & 0x80000000) == 0)
      {
        return;
      }

      v60 = a2;
      v61 = 0;
    }

    WrdParagraphProperties::setLeftIndent(v60, v61);
    return;
  }

  if (*(a3 + 8) <= 0xC614u)
  {
    if (*(a3 + 8) <= 0x845Du)
    {
      if (*(a3 + 8) <= 0x842Du)
      {
        switch(v15)
        {
          case 0x8418u:
            v70 = CsLeReadSInt16(a4);

            WrdParagraphProperties::setHorizontalPlacement(a2, v70);
            break;
          case 0x8419u:
            v78 = CsLeReadSInt16(a4);

            WrdParagraphProperties::setVerticalPlacement(a2, v78);
            break;
          case 0x841Au:
            v22 = CsLeReadUInt16(a4);

            WrdParagraphProperties::setWidth(a2, v22);
            break;
        }

        return;
      }

      if (v15 == 33838)
      {
        v71 = CsLeReadUInt16(a4);

        WrdParagraphProperties::setVerticalDistanceFromText(a2, v71);
        return;
      }

      if (v15 != 33839)
      {
        if (v15 == 33885)
        {
          v35 = CsLeReadSInt16(a4);

          WrdParagraphProperties::setTrailingIndent(a2, v35);
        }

        return;
      }

      goto LABEL_198;
    }

    if (*(a3 + 8) <= 0xA413u)
    {
      if (v15 != 33886)
      {
        if (v15 == 33888)
        {
          v79 = CsLeReadSInt16(a4);

          WrdParagraphProperties::setFirstLineLeadingIndent(a2, v79);
        }

        else if (v15 == 42003)
        {
          v29 = CsLeReadUInt16(a4);

          WrdParagraphProperties::setSpaceBefore(a2, v29);
        }

        return;
      }

      v55 = CsLeReadSInt16(a4);
      v54 = a2;
LABEL_278:

      WrdParagraphProperties::setLeadingIndent(v54, v55);
      return;
    }

    if (v15 == 42004)
    {
      v72 = CsLeReadUInt16(a4);

      WrdParagraphProperties::setSpaceAfter(a2, v72);
      return;
    }

    if (v15 == 50689)
    {

      handleCase0xC601(a2, a3, a4, a5);
      return;
    }

    if (v15 != 50701)
    {
      return;
    }

LABEL_148:

    WrdPapParser::applyTabSPRM(SizeOfSPRMParameter, a2, a3, a4, a5, a6);
    return;
  }

  if (*(a3 + 8) > 0xC64Du)
  {
    if (*(a3 + 8) <= 0xC650u)
    {
      if (v15 == 50766)
      {
        BorderTopReference = WrdParagraphProperties::getBorderTopReference(a2);
      }

      else if (v15 == 50767)
      {
        BorderTopReference = WrdParagraphProperties::getBorderLeftReference(a2);
      }

      else
      {
        BorderTopReference = WrdParagraphProperties::getBorderBottomReference(a2);
      }

      goto LABEL_331;
    }

    if (*(a3 + 8) <= 0xC652u)
    {
      if (v15 == 50769)
      {
        BorderTopReference = WrdParagraphProperties::getBorderRightReference(a2);
      }

      else
      {
        BorderTopReference = WrdParagraphProperties::getBorderBetweenReference(a2);
      }

      goto LABEL_331;
    }

    if (v15 == 50771)
    {
      BorderTopReference = WrdParagraphProperties::getBorderBarReference(a2);
LABEL_331:

      WrdBaseParser::parseBuffer(a1, BorderTopReference, a4, a5);
      return;
    }

    if (v15 != 50799)
    {
      return;
    }

    goto LABEL_193;
  }

  if (*(a3 + 8) > 0xC63Eu)
  {
    if (v15 == 50751)
    {
LABEL_193:
      WrdParagraphProperties::setRevisionMark(a2, *a4 == 1);
      if (a5 > (a4 + 1) && (a5 - (a4 + 1)) > 3)
      {
        v42 = CsLeReadUInt16((a4 + 1));
        WrdParagraphProperties::setAuthorIDForRevision(a2, v42);
        DttmRevisionMarkReference = WrdParagraphProperties::getDttmRevisionMarkReference(a2);

        WrdBaseParser::parseBuffer(a1, DttmRevisionMarkReference, a4 + 3, a5);
        return;
      }

      goto LABEL_386;
    }

    if (v15 == 50757)
    {
      NumberRevisionMarkDataReference = WrdParagraphProperties::getNumberRevisionMarkDataReference(a2);

      WrdBaseParser::parseBuffer(a1, NumberRevisionMarkDataReference, a4, a5);
      return;
    }

    if (v15 != 50765)
    {
      return;
    }

    if (*(a3 + 13) == 10)
    {
      v34 = WrdParagraphProperties::getShadingReference(a2);

      WrdBaseParser::parseBuffer(a1, v34, a4, a5);
      return;
    }

    exception = __cxa_allocate_exception(4uLL);
    v97 = 2001;
LABEL_388:
    *exception = v97;
  }

  switch(v15)
  {
    case 0xC615u:
      goto LABEL_148;
    case 0xC632u:
      v75 = "Unimplemented sprm code 0xC632\n";
      v76 = 497;
      break;
    case 0xC63Eu:
      if (*(a3 + 13) == 84)
      {
        AutoNumberListDescriptorReference = WrdParagraphProperties::getAutoNumberListDescriptorReference(a2);

        WrdPapParser::parseANLD80(a1, AutoNumberListDescriptorReference, a4, a5);
        return;
      }

      v75 = "Unimplemented length for sprm code 0xC63E\n";
      v76 = 538;
      break;
    default:
      return;
  }

  ChLogFunction(v75, 1, 4, "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Word/Binary/Reader/WrdPapParser.cpp", v76);
}