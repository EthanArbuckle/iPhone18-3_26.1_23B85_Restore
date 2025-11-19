uint64_t OIPreviewProcessWithDataAndOptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  objc_opt_class();
  objc_opt_class();
  v12 = createArchiverForClient(a5, a6, a4);
  if (!a3 || (v13 = [CMFileManager getFileTypeFromUTI:a3]) == 0)
  {
    v13 = [CMFileManager getFileTypeFromPath:a2];
  }

  [QLTop fillHTMLArchiveForOfficeData:a1 fileName:a2 dataFormat:v13 archiver:v12];

  return 0;
}

void sub_25D298624(void *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v4 = objc_begin_catch(exc_buf);
    handleExceptionForClientWithCallbacks(v4, v3, v2);
    objc_end_catch();
    JUMPOUT(0x25D298604);
  }

  objc_begin_catch(exc_buf);

  objc_exception_rethrow();
}

CMProgressiveArchiveManager *createArchiverForClient(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [[CMProgressiveArchiveManager alloc] initWithClient:a1 andCallBacks:a2];
  v5 = [a3 objectForKey:@"IsOnPhone"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  [(CMArchiveManager *)v4 setIsOnPhone:v7];
  v8 = [a3 objectForKey:kOIPreviewOptionsPassphrase];
  [(CMArchiveManager *)v4 setPassphrase:v8];

  return v4;
}

void sub_25D298750(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25D298DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_25D29951C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25D299C84(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void PptBinaryReader::PptBinaryReader(PptBinaryReader *this, PptObjectFactory *a2)
{
  *this = &unk_286ED3138;
  v4 = this + 8;
  OcReader::OcReader((this + 8));
  *this = &unk_286EDE6E0;
  *(this + 1) = &unk_286EDE800;
  *(this + 3) = &unk_286EDE8E0;
  *(this + 4) = 0;
  SsrwOORootStorage::SsrwOORootStorage((this + 40));
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 2;
  *(this + 164) = 0;
  *(this + 29) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 32) = 0;
  *(this + 33) = a2;
  *(this + 34) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 312) = 0;
  (*(*(this + 1) + 144))(v4, a2->var1);
}

void sub_25D299EA8(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 296) = v7;
    operator delete(v7);
  }

  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(v3, *v4);
  SsrwOORootStorage::~SsrwOORootStorage((v2 + 40));
  OcReader::~OcReader(v1);
  _Unwind_Resume(a1);
}

void sub_25D29A0B4(void *a1, int a2)
{
  v3 = v2;

  if (a2 == 3)
  {
    v6 = __cxa_begin_catch(a1);
    PBConvertCsException(v6);
    __cxa_end_catch();
  }

  else
  {
    v7 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v7 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D29A09CLL);
}

void sub_25D29A13C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 2)
  {
    [v2 setStartErrorMessageFromException:objc_begin_catch(exception_object)];
    objc_end_catch();
    JUMPOUT(0x25D29A09CLL);
  }

  _Unwind_Resume(exception_object);
}

void PptBinaryReader::start(PptBinaryReader *this, const void **a2, unsigned int a3)
{
  v6 = (this + 40);
  (*(*this + 24))(this);
  PptBinaryReader::initSkipConditions(this);
  SsrwOORootStorage::openInBuf(v6, a2, a3);

  PptBinaryReader::commonStart(this);
}

double PptBinaryReader::finish(PptBinaryReader *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 19) = 0;
  v3 = *(this + 18);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 18) = 0;
  v4 = *(this + 16);
  if (v4)
  {
    SsrwOOStorage::~SsrwOOStorage(v4);
    MEMORY[0x25F897000]();
  }

  *(this + 16) = 0;
  if (SsrwOORootStorage::isOpen((this + 40)))
  {
    SsrwOORootStorage::close((this + 40), 0);
  }

  *(this + 17) = 0;
  v5 = *(this + 23);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 23) = 0;
  v6 = *(this + 21);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 21) = 0;
  v7 = *(this + 22);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 22) = 0;
  v8 = *(this + 24);
  if (v8)
  {
    PptPersistDir::~PptPersistDir(v8);
    MEMORY[0x25F897000]();
  }

  *(this + 24) = 0;
  v9 = *(this + 25);
  if (v9)
  {
    MEMORY[0x25F897000](v9, 0x1000C408B6DE1C6);
  }

  v10 = *(this + 26);
  *(this + 25) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 164) = 0;
  result = 0.0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 37) = *(this + 36);
  return result;
}

uint64_t *PptBinaryReader::initSkipConditions(PptBinaryReader *this)
{
  v1 = (this + 248);
  v2 = this + 240;
  std::__tree<TSUFlushableObjectInfo *,TSUFlushableObjectInfoPointerFlushingOrderLess,std::allocator<TSUFlushableObjectInfo *>>::destroy(this + 240, *(this + 31));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  v4 = 6002;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 0;
  v4 = 4085;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 0;
  v4 = 1000;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 1;
  v4 = 1006;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 1;
  v4 = 1016;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 1;
  v4 = 1008;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 1;
  v4 = 4041;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 1;
  v4 = 4011;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 0;
  v4 = 6003;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 0;
  v4 = 6010;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 0;
  v4 = 6024;
  v5 = &v4;
  *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4) + 8) = 0;
  v4 = 6025;
  v5 = &v4;
  result = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2, &v4);
  *(result + 8) = 0;
  return result;
}

uint64_t SsrwOORootStorage::openInBuf(SsrwOORootStorage *this, const void **a2, unsigned int a3)
{
  LODWORD(result) = openStructuredStorageInBuf(a2, a3, 0, this + 10);
  if (result || (result = getStorageFromRoot(*(this + 10), this), result))
  {
    v5 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v5;
  }

  return result;
}

uint64_t openStructuredStorageInBuf(void *a1, unsigned int a2, int a3, uint64_t *a4)
{
  if (!a1)
  {
    return 6;
  }

  v5 = 6;
  if (a4 && *a1)
  {
    if ((a3 & 0xFFFFFFFD) != 0)
    {
      return 2;
    }

    else
    {
      v8 = SsrwOpenMemForReading(a1, a2);
      if (v8)
      {
        v9 = v8;
        v5 = openStructuredStorageInternal(v8, a4, 1, a3);
        if (v5)
        {
          SsrwFclose(v9);
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return v5;
}

_DWORD *SsrwOpenMemForReading(uint64_t a1, unsigned int a2)
{
  result = malloc_type_malloc(0x60uLL, 0x10A2040658F7E63uLL);
  if (result)
  {
    result[11] = 0;
    *(result + 41) = 0;
    *(result + 6) = SsrwMemFread;
    *(result + 7) = SsrwMemFwrite;
    *(result + 8) = SsrwMemFclose;
    *(result + 9) = SsrwMemFseek;
    *(result + 10) = SsrwMemFtell;
    *(result + 11) = SsrwMemFtruncate;
    *result = a1;
    *(result + 1) = a2;
    *(result + 3) = 0;
    *(result + 4) = 0;
    *(result + 2) = a2;
    *(result + 40) = 1;
  }

  return result;
}

uint64_t openStructuredStorageInternal(uint64_t a1, uint64_t *a2, char a3, int a4)
{
  v32 = 0;
  v8 = malloc_type_malloc(0x70uLL, 0x10300407518E08AuLL);
  if (!v8)
  {
    return 5;
  }

  v9 = v8;
  v8[5] = 0u;
  v8[6] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  rootStorageInit(v8, a4, 0x200u);
  if (!v10)
  {
    *v9 = a1;
    Fat = headerRead(a1, *(v9 + 16));
    if (Fat)
    {
      goto LABEL_5;
    }

    v13 = 1 << headerGetSectorShift(*(v9 + 16));
    tocSetSectorSize(*(v9 + 40), v13);
    v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
    *(v9 + 80) = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    bzero(v14, v13);
    Fat = fatConstruct(v9, (v9 + 24), v13);
    if (Fat)
    {
      goto LABEL_5;
    }

    FatSize = headerGetFatSize(*(v9 + 16));
    if (FatSize >> 30)
    {
      goto LABEL_15;
    }

    v16 = malloc_type_malloc(4 * FatSize, 0x100004052888210uLL);
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v16;
    v18 = headerGetFatSize(*(v9 + 16));
    bzero(v17, 4 * v18);
    XFatSize = headerGetXFatSize(*(v9 + 16));
    if (XFatSize)
    {
      v20 = smalloc_typed(XFatSize, 4uLL, 0x100004052888210uLL);
      if (!v20)
      {
        free(v17);
LABEL_15:
        *v9 = 0;
        closeStg(v9);
        return 5;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = headerReadFatSectors(*v9, *(v9 + 16), v17, &v32);
    if (v22)
    {
      ChainLastSector = v22;
      if (v20)
      {
        free(v20);
      }

      free(v17);
      goto LABEL_6;
    }

    v23 = headerGetFatSize(*(v9 + 16));
    if (v23 >= 0x6E)
    {
      FatSectorsFromXFat = readFatSectorsFromXFat(v9, v17, v20);
      if (FatSectorsFromXFat)
      {
        ChainLastSector = FatSectorsFromXFat;
        *v9 = 0;
        if (v20)
        {
          free(v20);
        }

        free(v17);
        goto LABEL_7;
      }
    }

    fatSetFatSectors(*(v9 + 24), v17, v23);
    *(v9 + 96) = v20;
    Fat = fatReadFat(*(v9 + 24));
    if (!Fat)
    {
      if (headerGetSmallFatSize(*(v9 + 16)))
      {
        v25 = initializeSmallFat(v9);
      }

      else
      {
        SmallSectorShift = headerGetSmallSectorShift(*(v9 + 16));
        v25 = fatConstruct(v9, (v9 + 32), 1 << SmallSectorShift);
      }

      ChainLastSector = v25;
      if (v25)
      {
        goto LABEL_6;
      }

      v27 = *(v9 + 24);
      DirectoryStartSector = headerGetDirectoryStartSector(*(v9 + 16));
      Fat = fatGetChain(v27, DirectoryStartSector, (v9 + 72), (v9 + 64));
      if (!Fat)
      {
        Fat = tocRead(*(v9 + 40), v9);
        if (!Fat)
        {
          Fat = storageConstructRoot(v9, (v9 + 48));
          if (!Fat)
          {
            EntryAtIndex = tocGetEntryAtIndex(*(v9 + 40), 0);
            if (!EntryAtIndex)
            {
              *v9 = 0;
              closeStg(v9);
              return 11;
            }

            v30 = *(v9 + 24);
            StartSector = directoryGetStartSector(EntryAtIndex);
            ChainLastSector = fatGetChainLastSector(v30, StartSector, (v9 + 92));
            if (!ChainLastSector)
            {
              *(v9 + 8) = a3;
              *a2 = v9;
              return ChainLastSector;
            }

            goto LABEL_6;
          }
        }
      }
    }

LABEL_5:
    ChainLastSector = Fat;
LABEL_6:
    *v9 = 0;
    goto LABEL_7;
  }

  ChainLastSector = v10;
LABEL_7:
  closeStg(v9);
  return ChainLastSector;
}

double rootStorageInit(uint64_t a1, int a2, unsigned int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (!headerInit((a1 + 16)))
  {
    v7 = *(a1 + 16);
    v8 = SsrwUINTLog2(a3);
    headerSetSectorShift(v7, v8);
    SectorShift = headerGetSectorShift(*(a1 + 16));
    if (!tocConstruct(1 << SectorShift, (a1 + 40)))
    {
      tocSetSectorSize(*(a1 + 40), a3);
      *(a1 + 56) = a2;
      *(a1 + 96) = 0;
      *(a1 + 104) = a2 == 1;
      *(a1 + 80) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
      *(a1 + 72) = -1;
      result = NAN;
      *(a1 + 88) = 0xFFFFFFFF00000000;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }
  }

  return result;
}

uint64_t headerInit(void *a1)
{
  v2 = malloc_type_malloc(0x4CuLL, 0x100004015A9971DuLL);
  if (!v2)
  {
    return 5;
  }

  v3 = v2;
  result = 0;
  v3[3] = 0x9FFFE0003003ELL;
  *(v3 + 16) = 6;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0xE11AB1A1E011CFD0;
  *(v3 + 34) = 0;
  v3[5] = 0;
  *(v3 + 3) = xmmword_25D6FDF80;
  v3[8] = 0xFFFFFFFF00000000;
  *(v3 + 18) = 0;
  *a1 = v3;
  return result;
}

uint64_t SsrwUINTLog2(unsigned int a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  LODWORD(v1) = 0;
  do
  {
    v1 = (v1 + 1);
    v2 = a1 > 3;
    a1 >>= 1;
  }

  while (v2);
  return v1;
}

_WORD *headerSetSectorShift(_WORD *result, unsigned int a2)
{
  if (result)
  {
    result[15] = a2;
    if (result[16] >= a2)
    {
      result[16] = a2 >> 1;
    }

    if (a2 != 9)
    {
      result[13] = 4;
    }
  }

  return result;
}

uint64_t headerGetSectorShift(uint64_t result)
{
  if (result)
  {
    return *(result + 30);
  }

  return result;
}

uint64_t tocConstruct(int a1, void *a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (!v4)
  {
    return 5;
  }

  v5 = v4;
  result = 0;
  v5[2] = 0;
  v5[3] = a1;
  *v5 = 0;
  *a2 = v5;
  return result;
}

uint64_t headerRead(uint64_t a1, uint64_t a2)
{
  SsrwFseek(a1);
  if (!SsrwFtell(a1))
  {
    return 17;
  }

  SsrwFseek(a1);
  v4 = malloc_type_malloc(0x4CuLL, 0x100004077774924uLL);
  if (!v4)
  {
    return 5;
  }

  v5 = v4;
  *(v4 + 60) = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  if (SsrwFread(v4, 76, 1, a1) == 1 && *v5 == 0xE11AB1A1E011CFD0 && (*(a2 + 8) = *(v5 + 8), *(a2 + 24) = CsLeReadUInt16(v5 + 12), *(a2 + 26) = CsLeReadUInt16(v5 + 13), UInt16 = CsLeReadUInt16(v5 + 14), *(a2 + 28) = UInt16, UInt16 >= 0xFFFE) && (v7 = CsLeReadUInt16(v5 + 15), *(a2 + 30) = v7, v7 <= 0xC))
  {
    *(a2 + 32) = CsLeReadUInt16(v5 + 16);
    v10 = *(v5 + 19);
    *(a2 + 34) = *(v5 + 34);
    *(a2 + 38) = v10;
    *(a2 + 40) = CsLeReadSInt32(v5 + 10);
    *(a2 + 44) = CsLeReadSInt32(v5 + 11);
    *(a2 + 48) = CsLeReadSInt32(v5 + 12);
    *(a2 + 52) = CsLeReadSInt32(v5 + 13);
    *(a2 + 56) = CsLeReadSInt32(v5 + 14);
    *(a2 + 60) = CsLeReadSInt32(v5 + 15);
    *(a2 + 64) = CsLeReadSInt32(v5 + 16);
    *(a2 + 68) = CsLeReadSInt32(v5 + 17);
    v8 = 0;
    *(a2 + 72) = CsLeReadSInt32(v5 + 18);
  }

  else
  {
    v8 = 3;
  }

  free(v5);
  return v8;
}

uint64_t SsrwFseek(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 72)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t SsrwMemFseek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *(a1 + 8) + a2;
  }

  else
  {
    v3 = *(a1 + 24);
    v4 = v3 + a2;
    if (!a3)
    {
      v3 = a2;
    }

    if (a3 == 1)
    {
      v3 = v4;
    }
  }

  *(a1 + 24) = v3;
  return 0;
}

uint64_t SsrwFtell(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 80)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void *SsrwMemFtell(void *result)
{
  if (result)
  {
    if (*result)
    {
      return result[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SsrwFread(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && a1 && (v4 = *(a4 + 48)) != 0)
  {
    return v4();
  }

  else
  {
    return 0;
  }
}

uint64_t SsrwMemFread(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if ((*(a4 + 40) & 1) == 0)
  {
    return 0;
  }

  v5 = a3;
  v6 = a3 * a2;
  if (a3 * a2 < 0)
  {
    return 0;
  }

  v7 = *(a4 + 24);
  v8 = (*(a4 + 16) - v7) & ~((*(a4 + 16) - v7) >> 63);
  if (v8 < v6)
  {
    v5 = v8 / a2;
    v6 = v5 * a2;
  }

  if (v6)
  {
    memcpy(a1, (**a4 + v7), v6);
    *(a4 + 24) += v6;
  }

  return v5;
}

uint64_t fatConstruct(uint64_t a1, void *a2, __int16 a3)
{
  v6 = malloc_type_malloc(0x38uLL, 0x10300407B4512BAuLL);
  if (!v6)
  {
    return 5;
  }

  v7 = v6;
  result = 0;
  v7[1] = 0u;
  v7[2] = 0u;
  *(v7 + 6) = 0;
  *v7 = 0u;
  *(v7 + 4) = a1;
  *(v7 + 12) = 0;
  *(v7 + 6) = 0;
  *(v7 + 10) = -2;
  *(v7 + 22) = a3;
  *a2 = v7;
  return result;
}

uint64_t headerGetFatSize(uint64_t result)
{
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

uint64_t headerGetXFatSize(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t headerReadFatSectors(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v5 = *(a2 + 44);
  if (v5 >= 0x6D)
  {
    v6 = 109;
  }

  else
  {
    v6 = v5;
  }

  if (v5)
  {
    v9 = smalloc_typed(v6, 4uLL, 0x100004052888210uLL);
    if (v9)
    {
      v10 = v9;
      bzero(v9, 4 * v6);
      if (SsrwFseek(a1) || SsrwFread(v10, 4 * v6, 1, a1) != 1)
      {
        free(v10);
        return 4;
      }

      else
      {
        v11 = v6;
        v12 = v10;
        do
        {
          *a3++ = CsLeReadSInt32(v12++);
          --v11;
        }

        while (v11);
        free(v10);
        result = 0;
        *a4 = v6;
      }
    }

    else
    {
      return 5;
    }
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t fatSetFatSectors(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t fatReadFat(unsigned int **a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = a1[4];
  if (!v2 || !*(a1 + 6) || !*a1)
  {
    return 6;
  }

  Header = rootStorageGetHeader(v2);
  v4 = 1 << headerGetSectorShift(Header) >> 2;
  v5 = *(a1 + 6) * v4;
  *(a1 + 4) = v5;
  if ((v5 & 0xFFFFFFFF00000000) != 0)
  {
    return 8;
  }

  v7 = malloc_type_calloc(v5, 4uLL, 0x100004052888210uLL);
  a1[1] = v7;
  v8 = *(a1 + 4);
  *(a1 + 12) = 4 * v8;
  if (!v7)
  {
    return 5;
  }

  *(a1 + 5) = v8;
  v9 = *a1;
  if (**a1 == -2 || !*(a1 + 6))
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  Sector = 0;
  v27 = -2;
  v13 = -2;
  v14 = -2;
  while (1)
  {
    v15 = a1[4];
    v16 = *v9;
    if (v12)
    {
      result = rootStorageGetSector(v15, v16, Sector);
      if (result)
      {
        goto LABEL_39;
      }
    }

    else
    {
      Sector = rootStorageReadSector(v15, v16);
      if (!Sector)
      {
        result = rootStorageGetStatus(a1[4]);
        Sector = 0;
        if (result)
        {
          goto LABEL_39;
        }
      }
    }

    v17 = v10;
    v18 = v12 * v4;
    ++v12;
    v25 = v10;
    if (v18 < v12 * v4)
    {
      break;
    }

LABEL_34:
    ++v9;
    v10 = v25 + v4;
    if (v12 >= *(a1 + 6))
    {
      result = 0;
      goto LABEL_40;
    }
  }

  v19 = v4;
  v20 = Sector;
  while (v17 < *(a1 + 4))
  {
    SInt32 = CsLeReadSInt32(v20);
    if (SInt32 <= v11)
    {
      v22 = v11;
    }

    else
    {
      v22 = SInt32;
    }

    if (SInt32 < 0xFFFFFFF0)
    {
      v11 = v22;
    }

    if (SInt32 == -1)
    {
      if (v14 == -2)
      {
        *(a1 + 10) = v17;
        v23 = a1[1];
      }

      else
      {
        v23 = a1[1];
        v23[v14] = v17;
      }

      v14 = v17;
      v23[v17] = -2;
    }

    else
    {
      a1[1][v17] = SInt32;
      v13 = v17;
      v27 = v14;
    }

    ++v17;
    ++v20;
    if (!--v19)
    {
      goto LABEL_34;
    }
  }

  result = 8;
LABEL_39:
  if (v11 > v13)
  {
    return 8;
  }

LABEL_40:
  v24 = v13 + 1;
  if (v13 != -2 && v24 > *(a1 + 4))
  {
    return 8;
  }

  if (v13 != -2 && !result)
  {
    *(a1 + 4) = v24;
    result = 0;
    if (v27 == -2)
    {
      *(a1 + 10) = -2;
    }

    else
    {
      a1[1][v27] = -2;
    }
  }

  return result;
}

uint64_t rootStorageGetHeader(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = *(a1 + 16);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t rootStorageReadSector(uint64_t a1, int a2)
{
  if (*(a1 + 76) == a2)
  {
    return *(a1 + 80);
  }

  Sector = readSector(a1, a2);
  *(a1 + 88) = Sector;
  if (!Sector)
  {
    return *(a1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t readSector(uint64_t a1, int a2)
{
  SectorShift = headerGetSectorShift(*(a1 + 16));
  SsrwFseek(*a1);
  if (SsrwFtell(*a1) != (a2 + 1) << SectorShift)
  {
    return 4;
  }

  v5 = 1 << SectorShift;
  v6 = SsrwFread(*(a1 + 80), 1, v5, *a1);
  if (v6 != v5)
  {
    return 4 * (v6 == 0);
  }

  result = 0;
  *(a1 + 76) = a2;
  return result;
}

uint64_t rootStorageGetSector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SectorShift = headerGetSectorShift(*(a1 + 16));
  SsrwFseek(*a1);
  result = 4 * (SsrwFread(a3, 1 << SectorShift, 1, *a1) != 1);
  *(a1 + 88) = result;
  return result;
}

uint64_t headerGetSmallFatSize(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t headerGetSmallSectorShift(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t headerGetSmallFatStartSector(uint64_t result)
{
  if (result)
  {
    return *(result + 60);
  }

  return result;
}

uint64_t fatGetChain(uint64_t a1, unsigned int a2, unsigned int *a3, void *a4)
{
  if (!a3)
  {
    return 6;
  }

  v5 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v6 = a2;
  v8 = *(a1 + 16);
  if (v8 <= a2)
  {
    return 8;
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 4 * a2);
  if (v10 > v8 && v10 != -2)
  {
    return 8;
  }

  v13 = 1;
  result = 8;
  while (v10 != -2)
  {
    if (v10 >= v8)
    {
      return 8;
    }

    if (v13 + 1 > v8)
    {
      ++v13;
      break;
    }

    v10 = *(v9 + 4 * v10);
    v15 = v10 <= v8 || v10 == -2;
    ++v13;
    if (!v15)
    {
      return result;
    }
  }

  if (v5 == -1)
  {
    *a3 = v13;
    v5 = v13;
  }

  else if (v5 > v13)
  {
    return 8;
  }

  if (!v5)
  {
    return 0;
  }

  result = 5;
  if (!(v5 >> 30) && (v5 & 0x3FFFFFFF) != 0)
  {
    v16 = malloc_type_calloc(v5, 4uLL, 0x100004052888210uLL);
    if (!v16)
    {
      return 5;
    }

    *a4 = v16;
    *v16 = v6;
    if (v6 != -2)
    {
      v17 = *(a1 + 16);
      if (v17 <= v6)
      {
LABEL_45:
        free(v16);
        *a4 = 0;
        return 8;
      }

      v18 = 0;
      v19 = *(a1 + 8);
      while (1)
      {
        v20 = (v19 + 4 * v6);
        if (v20 > v19 - 4 + *(a1 + 48))
        {
          break;
        }

        v21 = *v20;
        if (*v20 == -2 || v18 >= *a3 - 1)
        {
          break;
        }

        if ((v21 + 4 > 3 || v21 == -2) && v21 <= v17)
        {
          v16[v18 + 1] = v21;
          v6 = *v20;
          v17 = *(a1 + 16);
          ++v18;
          if (*v20 < v17)
          {
            continue;
          }
        }

        goto LABEL_45;
      }
    }

    return 0;
  }

  return result;
}

uint64_t headerSetSmallFatSize(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t headerGetDirectoryStartSector(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t directoryConstructAllDirs(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v38 = 0;
  v37 = 0;
  result = 6;
  if (a1 && a2 && a3 && !*a2 && !*a3)
  {
    rootStorageGetDirChain(a1, &v38, &v37);
    Header = rootStorageGetHeader(a1);
    SectorShift = headerGetSectorShift(Header);
    v9 = v37 << SectorShift;
    if ((v37 << SectorShift) < 0x80)
    {
      return 8;
    }

    if (v9 <= 0xC30C307F)
    {
      v10 = v9 >> 7;
      v11 = malloc_type_malloc((168 * v10 + 168), 0x1020040CAA8855DuLL);
      if (v11)
      {
        v12 = v11;
        v35 = a3;
        bzero(v11, (168 * v10));
        v13 = 0;
        *(v12 + 8) = 0;
        *(v12 + 40) = 0;
        *(v12 + 1) = -1;
        *(v12 + 21) = 0;
        *(v12 + 92) = xmmword_25D6FDF20;
        *(v12 + 116) = 0;
        *(v12 + 108) = 0;
        *(v12 + 16) = 0;
        *(v12 + 17) = 0;
        *(v12 + 36) = -1;
        *(v12 + 19) = 0;
        *(v12 + 20) = 0;
        v12[88] = 1;
        v14 = 16;
        *a2 = (v12 + 168);
        v36 = v10;
        while (1)
        {
          *(*a2 + 168 * v13) = a1;
          v15 = *a2;
          v16 = *a2 + 168 * v13;
          v40 = 0;
          v39 = 0;
          rootStorageGetDirChain(*v16, &v40, &v39);
          v17 = rootStorageGetHeader(*v16);
          v18 = headerGetSectorShift(v17);
          if (v18 >= 7)
          {
            v20 = (1 << v18) / 128;
            Sector = rootStorageReadSector(*v16, *(v40 + 4 * (v13 / v20)));
            if (!Sector)
            {
              if (!rootStorageGetStatus(*v16))
              {
                goto LABEL_13;
              }

              goto LABEL_12;
            }

            v22 = 0;
            *(v16 + 12) = v13;
            v23 = Sector + ((v13 % v20) << 7);
            v24 = v23;
            do
            {
              *(v15 + v14 + 2 * v22++) = CsLeReadUInt16(v24++);
            }

            while (v22 != 32);
            *(v16 + 80) = CsLeReadUInt16((v23 + 64));
            *(v16 + 84) = *(v23 + 66);
            *(v16 + 88) = *(v23 + 67);
            *(v16 + 92) = CsLeReadSInt32((v23 + 68));
            *(v16 + 96) = CsLeReadSInt32((v23 + 72));
            *(v16 + 100) = CsLeReadSInt32((v23 + 76));
            *(v16 + 108) = CsLeReadSInt32((v23 + 80));
            *(v16 + 112) = CsLeReadUInt16((v23 + 84));
            *(v16 + 114) = CsLeReadUInt16((v23 + 86));
            *(v16 + 116) = *(v23 + 88);
            *(v16 + 104) = CsLeReadSInt32((v23 + 96));
            *(v16 + 128) = leReadTime((v23 + 100));
            *(v16 + 136) = leReadTime((v23 + 108));
            *(v16 + 144) = CsLeReadSInt32((v23 + 116));
            v25 = rootStorageGetHeader(*v16);
            v26 = headerGetMajorVersion(v25) < 4 ? CsLeReadSInt32((v23 + 120)) : CsLeReadUInt64(v23 + 120);
            *(v16 + 152) = v26;
            *(v16 + 160) = 0;
            v27 = *(v16 + 84);
            v10 = v36;
            if ((v27 - 1) < 2)
            {
              goto LABEL_27;
            }

            if (!v27)
            {
              goto LABEL_13;
            }

            if (v27 == 5)
            {
LABEL_27:
              v28 = *(v16 + 80);
              if ((v28 & 1) == 0 && v28 <= 0x41)
              {
                if (v28 < 3)
                {
                  if (v27 == 5)
                  {
                    goto LABEL_41;
                  }
                }

                else
                {
                  LODWORD(v29) = (v28 >> 1) - 1;
                  if (!*(v16 + 16 + 2 * v29))
                  {
                    goto LABEL_32;
                  }

                  if (v27 == 5)
                  {
                    *(v16 + 16) = 0;
                    *(v16 + 80) = 1;
LABEL_32:
                    if (v29 <= 1)
                    {
                      v29 = 1;
                    }

                    else
                    {
                      v29 = v29;
                    }

                    do
                    {
                      if (!*(v15 + v14))
                      {
                        if (v27 != 5)
                        {
                          goto LABEL_12;
                        }

                        *(v16 + 16) = 0;
                        *(v16 + 80) = 1;
                      }

                      v15 += 2;
                      --v29;
                    }

                    while (v29);
LABEL_41:
                    v30 = *(v16 + 92);
                    if (v30 >= -1 && v30 < v36)
                    {
                      v32 = *(v16 + 96);
                      if (v32 >= -1 && v32 < v36)
                      {
                        v34 = *(v16 + 100);
                        if (v34 >= -1 && v34 < v36)
                        {
                          goto LABEL_13;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_12:
          v19 = *a2 + 168 * v13;
          *(v19 + 16) = 0;
          *(v19 + 80) = 0;
          *(v19 + 8) = -1;
          *(v19 + 84) = 0;
          *(v19 + 92) = xmmword_25D6FDF20;
          *(v19 + 116) = 0;
          *(v19 + 108) = 0;
          *(v19 + 128) = 0;
          *(v19 + 136) = 0;
          *(v19 + 144) = -1;
          *(v19 + 152) = 0;
          *(v19 + 160) = 0;
          *(v19 + 88) = 1;
LABEL_13:
          ++v13;
          v14 += 168;
          if (v13 == v10)
          {
            result = directoryNormalize(*a2, *a2);
            *v35 = v10;
            return result;
          }
        }
      }
    }

    return 5;
  }

  return result;
}

uint64_t rootStorageGetDirChain(uint64_t result, void *a2, _DWORD *a3)
{
  if (result)
  {
    v3 = *(result + 64);
    if (v3)
    {
      v4 = *(result + 72);
      if (v4)
      {
        *a2 = v3;
        *a3 = v4;
      }
    }
  }

  return result;
}

uint64_t directoryConstructEntry(int a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 80) = 0;
  *(a2 + 8) = -1;
  *(a2 + 12) = a1;
  *(a2 + 84) = 0;
  *(a2 + 88) = 0;
  *(a2 + 92) = xmmword_25D6FDF20;
  *(a2 + 116) = 0;
  *(a2 + 108) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = -1;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  return 0;
}

uint64_t leReadTime(uint64_t *a1)
{
  v3 = 0;
  v2 = *a1;
  time_tFromWinFileTime(&v2, &v3);
  return v3;
}

uint64_t time_tFromWinFileTime(_DWORD *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = HIWORD(*a1);
    v5 = v3 >= 0x8000;
    v6 = v3 - 0x8000;
    v7 = v3 < 0x8000;
    v8 = v3 | 0x8000;
    if (v5)
    {
      v8 = v6;
    }

    if (v5)
    {
      v9 = 54590;
    }

    else
    {
      v9 = 54591;
    }

    if (v5)
    {
      v10 = 27111902;
    }

    else
    {
      v10 = 27111903;
    }

    v11 = v4 - v7;
    v5 = v4 >= v9;
    v12 = v4 - v9;
    if (v5)
    {
      v13 = v10;
    }

    else
    {
      v12 = v11 + 10946;
      v13 = 27111903;
    }

    v14 = a1[1] - v13;
    if (v14 < 0)
    {
      v12 = 0xFFFF - v12;
    }

    v15 = v14 ^ (v14 >> 31);
    v16 = v12 + ((v15 % 0x2710) << 16);
    v17 = v16 / 0x2710 + ((v15 / 0x2710 - 1000 * ((4294968 * (v15 / 0x2710)) >> 32)) << 16);
    v18 = (68719477 * v17) >> 36;
    v19 = 0xFFFF - v18;
    if (v14 < 0)
    {
      v8 = 0xFFFF - v8;
    }

    else
    {
      v19 = ((68719477 * v17) >> 32) >> 4;
    }

    LODWORD(v20) = ((v8 + ((v16 % 0x2710) << 16)) / 0x2710 + ((v17 - 1000 * v18) << 16)) / 0x3E8;
    if (v14 >= 0)
    {
      v20 = v20;
    }

    else
    {
      v20 = (0xFFFF - v20);
    }

    v2 = ((v19 << 16) | (((v15 / 0x989680) ^ (v14 >> 31)) << 32)) + v20;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  return 0;
}

uint64_t directoryNormalize(uint64_t a1, _DWORD *a2)
{
  v2 = a2[21];
  if (v2 == 10)
  {
    return 16;
  }

  if (!v2)
  {
    return 0;
  }

  a2[21] = 10;
  v6 = a2[25];
  if (v6 != -1)
  {
    result = directoryNormalize(a1, a1 + 168 * v6);
    if (result)
    {
      return result;
    }

    *(a1 + 168 * a2[25] + 8) = -1;
  }

  v7 = a2[23];
  if (v7 != -1)
  {
    result = directoryNormalize(a1, a1 + 168 * v7);
    if (result)
    {
      return result;
    }

    *(a1 + 168 * a2[23] + 8) = a2[3];
  }

  v8 = a2[24];
  if (v8 != -1)
  {
    result = directoryNormalize(a1, a1 + 168 * v8);
    if (result)
    {
      return result;
    }

    *(a1 + 168 * a2[24] + 8) = a2[3];
  }

  result = 0;
  a2[21] = v2;
  return result;
}

uint64_t storageConstructRoot(uint64_t a1, void *a2)
{
  TOC = rootStorageGetTOC(a1);
  EntryAtIndex = tocGetEntryAtIndex(TOC, 0);
  if (!EntryAtIndex)
  {
    return 11;
  }

  result = storageConstructFromDirEntry(EntryAtIndex, a2);
  if (!result)
  {
    *(*a2 + 16) = 0;
    v7 = *a2;
    *(v7 + 8) = 0;
    *v7 = a1;
    SmallStreamCutoff = headerGetSmallStreamCutoff(a1);
    result = 0;
    v9 = (*a2 + 40);
    v10 = *v9;
    *(*a2 + 32) = SmallStreamCutoff;
    if (!v10)
    {
      documentPropertiesConstruct(v9);
      return 0;
    }
  }

  return result;
}

uint64_t rootStorageGetTOC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = *(a1 + 40);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t storageConstructFromDirEntry(uint64_t a1, void *a2)
{
  v8 = 0;
  if ((directoryGetType(a1) & 0xFFFFFFFB) != 1)
  {
    return 9;
  }

  v4 = storageConstruct(&v8);
  result = 5;
  if (!v4)
  {
    v6 = v8;
    if (v8)
    {
      Index = directoryGetIndex(a1);
      result = 0;
      *(v6 + 8) = Index;
      *a2 = v6;
    }
  }

  return result;
}

uint64_t storageConstruct(void *a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x1020040F265C080uLL);
  if (!v2)
  {
    return 5;
  }

  v3 = v2;
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  *(v2 + 2) = -1;
  v4 = openListConstruct(v2 + 3);
  if (v4)
  {
    free(v3);
  }

  else
  {
    *a1 = v3;
  }

  return v4;
}

uint64_t openListConstruct(void *a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
  if (!v2)
  {
    return 5;
  }

  v3 = v2;
  result = 0;
  *v3 = 0;
  v3[1] = 0;
  *a1 = v3;
  return result;
}

uint64_t directoryGetIndex(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t headerGetSmallStreamCutoff(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t documentPropertiesConstruct(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
  *a1 = v2;
  if (!v2)
  {
    return 5;
  }

  v3 = v2;
  result = 0;
  v3[4] = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  **a1 = 0;
  *(*a1 + 24) = 0;
  *(*a1 + 8) = 0;
  *(*a1 + 16) = 0;
  *(*a1 + 32) = 0;
  return result;
}

uint64_t fatGetChainLastSector(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  if (a2 > 0xFFFFFFFD)
  {
    a2 = -1;
LABEL_3:
    result = 0;
    *a3 = a2;
    return result;
  }

  v4 = *(a1 + 16);
  if (v4 > a2)
  {
    v5 = *(a1 + 8);
    v6 = (v5 + 4 * a2);
    v7 = *v6;
    if (*v6 <= v4 || v7 == -2)
    {
      if (v7 == -2)
      {
        goto LABEL_3;
      }

      v9 = 1;
      while (v7 < v4)
      {
        if (++v9 > v4)
        {
          break;
        }

        v10 = v6;
        v6 = (v5 + 4 * v7);
        v7 = *v6;
        if (*v6 > v4 && v7 != -2)
        {
          break;
        }

        if (v7 == -2)
        {
          a2 = *v10;
          goto LABEL_3;
        }
      }
    }
  }

  return 8;
}

uint64_t getStorageFromRoot(uint64_t a1, void *a2)
{
  result = 6;
  if (a1 && a2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

void PptBinaryReader::commonStart(PptBinaryReader *this)
{
  v2 = (this + 40);
  if (SsrwOOStorage::hasChild((this + 40), "P"))
  {
    SsrwOOStorage::openStorage(v2, "P");
  }

  *(this + 17) = v2;
  SsrwOOStorage::openStream(v2, "C");
}

void sub_25D29C80C(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x10A1C4051BBE34ELL);
  MEMORY[0x25F897000](v2, v1);
  _Unwind_Resume(a1);
}

BOOL SsrwOOStorage::hasChild(SsrwOOStorage *this, const unsigned __int16 *a2)
{
  v15 = 0;
  v14 = 0;
  ChildrenInfo = getChildrenInfo(this->var0, &v14, &v15);
  if (ChildrenInfo)
  {
    v12 = ChildrenInfo;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v12;
  }

  if (v15 < 1 || v14 == 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = _ChWcscmp(*(v14 + v6), a2);
    v5 = v8 == 0;
    v6 += 64;
  }

  while (v7++ < v15 && v8 != 0);
  freeInfo(v14, v15);
  free(v14);
  return v5;
}

size_t getChildrenInfo(uint64_t a1, void ***a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    TOC = rootStorageGetTOC(*a1);
    EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
    if (!EntryAtIndex)
    {
      return 6;
    }

    v9 = EntryAtIndex;
    result = tocCountEntryChildren(TOC, EntryAtIndex);
    if (!result)
    {
      *a3 = 0;
      return result;
    }

    v10 = result;
    if (result == -1)
    {
      *a3 = 0;
      return 16;
    }

    v11 = smalloc_typed(result, 0x40uLL, 0x1010040657E6F79uLL);
    if (v11)
    {
      v12 = v11;
      v13 = tocFillChildrenStgArray(TOC, v9, v11);
      if (v13 == v10)
      {
        result = 0;
        *a2 = v12;
        *a3 = v10;
        return result;
      }

      freeInfo(v12, v13);
      free(v12);
    }

    return 5;
  }

  return result;
}

size_t tocCountEntryChildren(uint64_t a1, uint64_t a2)
{
  result = directoryGetFirstChild(*a1, a2);
  if (result)
  {
    v4 = *a1;
    v5 = *(a1 + 8);

    return directoryCountChildren(result, 0, v4, v5);
  }

  return result;
}

uint64_t directoryGetFirstChild(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 100);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return a1 + 168 * v2;
  }
}

size_t directoryCountChildren(uint64_t a1, int a2, uint64_t a3, size_t count)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((count & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = count;
  if (count)
  {
    if (count > 0x3FF)
    {
      v8 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
      v4 = directoryCountChildrenAndCheck(a1, a2, a3, v4, v8);
      if (v8 != v10)
      {
        free(v8);
      }
    }

    else
    {
      bzero(v10, 0x400uLL);
      return directoryCountChildrenAndCheck(a1, a2, a3, v4, v10);
    }
  }

  return v4;
}

uint64_t directoryCountChildrenAndCheck(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    v9 = (a2 + 1);
    v10 = *(result + 92);
    if (v10 == -1 || (result = 0xFFFFFFFFLL, (v10 & 0x80000000) == 0) && v10 < a4 && !*(a5 + v10) && (*(a5 + v10) = 1, result = directoryCountChildrenAndCheck(a3 + 168 * v10, v9, a3, a4, a5), v9 = result, *(a5 + v10) = 0, result != -1))
    {
      v11 = *(v8 + 96);
      if (v11 == -1)
      {
        return v9;
      }

      else
      {
        result = 0xFFFFFFFFLL;
        if ((v11 & 0x80000000) == 0 && v11 < a4 && !*(a5 + v11))
        {
          *(a5 + v11) = 1;
          result = directoryCountChildrenAndCheck(a3 + 168 * v11, v9, a3, a4, a5);
          *(a5 + v11) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t tocFillChildrenStgArray(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = directoryGetFirstChild(*a1, a2);
  if (result)
  {
    v6 = 0;
    if (directoryFillStgArray(result, a3, &v6, *a1))
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t directoryFillStgArray(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  result = directoryFillStgInfo(a1, (a2 + (*a3 << 6)));
  if (!result)
  {
    ++*a3;
    v9 = *(a1 + 92);
    if (v9 == -1 || (result = directoryFillStgArray(a4 + 168 * v9, a2, a3, a4), !result))
    {
      v10 = *(a1 + 96);
      if (v10 == -1)
      {
        return 0;
      }

      result = directoryFillStgArray(a4 + 168 * v10, a2, a3, a4);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t directoryFillStgInfo(uint64_t a1, uint64_t *a2)
{
  result = 6;
  if (a1 && a2)
  {
    v5 = _ChWcslen((a1 + 16));
    v6 = smalloc_typed(v5 + 1, 2uLL, 0x1000040BDFB0063uLL);
    *a2 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = _ChWcslen((a1 + 16));
      bzero(v7, 2 * v8 + 2);
      v9 = *a2;
      v10 = _ChWcslen((a1 + 16));
      memcpy(v9, (a1 + 16), 2 * v10);
      v11 = *a2;
      v11[_ChWcslen((a1 + 16))] = 0;
      v12 = *(a1 + 84);
      if (v12 <= 5 && ((0x27u >> v12) & 1) != 0)
      {
        v13 = *(a1 + 104);
        *(a2 + 2) = dword_25D6FDF30[v12];
        *(a2 + 3) = v13;
        a2[2] = *(a1 + 152);
        *(a2 + 3) = *(a1 + 128);
        SmallStreamCutoff = headerGetSmallStreamCutoff(*a1);
        result = 0;
        *(a2 + 10) = SmallStreamCutoff;
        *(a2 + 44) = *(a1 + 108);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t _ChWcslenA(int *a1)
{
  result = -1;
  do
  {
    v3 = *a1++;
    ++result;
  }

  while (v3);
  return result;
}

_WORD *WcharToChCHAR2(_WORD *result, int *a2)
{
  v2 = *a2;
  v3 = result;
  if (*a2)
  {
    v4 = a2 + 1;
    v3 = result;
    do
    {
      *v3++ = v2;
      v5 = *v4++;
      LOWORD(v2) = v5;
    }

    while (v5);
  }

  *v3 = 0;
  return result;
}

uint64_t _ChWcscmp(const unsigned __int16 *a1, const unsigned __int16 *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    while (1)
    {
      v4 = *a2;
      if (v2 < v4)
      {
        return 0xFFFFFFFFLL;
      }

      if (v4 < v2)
      {
        return 1;
      }

      ++a2;
      v5 = *v3++;
      v2 = v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (*a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t freeInfo(void **a1, unsigned int a2)
{
  result = 6;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (a2)
    {
      v4 = a2;
      do
      {
        if (*a1)
        {
          free(*a1);
        }

        a1 += 8;
        --v4;
      }

      while (v4);
    }

    return 0;
  }

  return result;
}

void SsrwOOStorage::openStream(SsrwOOStorage *this, const unsigned __int16 *a2)
{
  v5 = 0;
  v2 = openStream(this->var0, a2, &v5);
  if (!v2)
  {
    operator new();
  }

  v3 = v2;
  exception = __cxa_allocate_exception(4uLL);
  *exception = v3;
}

void sub_25D29D0A0(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v3;
  MEMORY[0x25F897000](v5, 0x10A1C4083891BCBLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    closeStream(va);
    exception = __cxa_allocate_exception(4uLL);
    *exception = 5;
  }

  _Unwind_Resume(a1);
}

uint64_t _ChWcslen(const unsigned __int16 *a1)
{
  result = -1;
  do
  {
    v3 = *a1++;
    ++result;
  }

  while (v3);
  return result;
}

_DWORD *ChCHAR2ToWchar(_DWORD *result, _WORD *a2)
{
  v2 = *a2;
  v3 = result;
  if (*a2)
  {
    v4 = a2 + 1;
    v3 = result;
    do
    {
      *v3++ = v2;
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  *v3 = 0;
  return result;
}

uint64_t openStream(uint64_t a1, const unsigned __int16 *a2, uint64_t *a3)
{
  if (!a1)
  {
    return 6;
  }

  v4 = 6;
  if (a2)
  {
    v6 = *a1;
    if (v6)
    {
      if (a3 && *a2)
      {
        if ((*(a1 + 32) | 2) == 2)
        {
          v13 = 0;
          TOC = rootStorageGetTOC(v6);
          EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
          if (EntryAtIndex)
          {
            ChildEntry = tocFindChildEntry(TOC, EntryAtIndex, a2, &v13);
            if (!ChildEntry)
            {
              ChildEntry = streamConstruct(*a1, a1, v13, *(a1 + 32), a3);
              if (!ChildEntry)
              {
                if ((*(a1 + 32) - 1) <= 1 && (v12 = streamUpgradeMiniToRegular(*a3), v12))
                {
                  v4 = v12;
                }

                else
                {
                  v4 = openListAppend(*(a1 + 24), 2, *a3);
                  if (!v4)
                  {
                    return v4;
                  }
                }

                streamDestroy(a3);
                return v4;
              }
            }

            return ChildEntry;
          }

          else
          {
            return 11;
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return v4;
}

uint64_t directoryFindChild(uint64_t a1, const unsigned __int16 *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 100);
  v8 = *(a1 + 84);
  if (v8 == 1)
  {
    if (!a4)
    {
      return 6;
    }
  }

  else
  {
    result = 6;
    if (!a4 || v8 != 5)
    {
      return result;
    }
  }

  *a4 = 0;
  if (v7 == -1)
  {
    return 11;
  }

  while (1)
  {
    v10 = a3 + 168 * v7;
    if (!*(v10 + 84))
    {
      return 16;
    }

    v11 = compareNames((v10 + 16), a2);
    if (!v11)
    {
      break;
    }

    if (v11 <= 0)
    {
      v12 = 96;
    }

    else
    {
      v12 = 92;
    }

    v7 = *(v10 + v12);
    if (v7 == -1)
    {
      v10 = *a4;
      goto LABEL_17;
    }
  }

  *a4 = v10;
LABEL_17:
  if (v10)
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t compareNames(const unsigned __int16 *a1, const unsigned __int16 *a2)
{
  v3 = a1;
  v4 = _ChWcslen(a1);
  v5 = _ChWcslen(a2);
  if (v4 == v5)
  {
    if (v4 < 1)
    {
      return 0;
    }

    else
    {
      v6 = v4 & 0x7FFFFFFF;
      while (1)
      {
        v7 = *v3++;
        v8 = __toupper(v7);
        v9 = *a2++;
        v10 = __toupper(v9);
        if (v8 < v10)
        {
          return 0xFFFFFFFFLL;
        }

        if (v8 > v10)
        {
          break;
        }

        if (!--v6)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t streamConstruct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  Header = rootStorageGetHeader(a1);
  TOC = rootStorageGetTOC(a1);
  Type = directoryGetType(a3);
  if (Type != 5 && Type != 2)
  {
    return 10;
  }

  v13 = malloc_type_malloc(0x80uLL, 0x1030040FF6B07E4uLL);
  if (!v13)
  {
    return 5;
  }

  v14 = v13;
  v29 = a5;
  *(v13 + 8) = 0u;
  *(v13 + 15) = 0;
  *(v13 + 104) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 56) = 0u;
  v15 = (v13 + 56);
  *v13 = a1;
  *(v13 + 2) = a2;
  *(v13 + 2) = directoryGetIndex(a3);
  SectorShift = headerGetSectorShift(Header);
  SmallSectorShift = headerGetSmallSectorShift(Header);
  StreamSharedBlock = directoryQueryStreamSharedBlock(a3, v15);
  if (!StreamSharedBlock)
  {
    v19 = *v15;
    if (!*(*v15 + 20))
    {
      StreamLength = directoryGetStreamLength(a3);
      v19 = *v15;
      **v15 = StreamLength;
    }

    *(v19 + 32) = 0;
    if (headerGetSmallStreamCutoff(a1) != 1 && headerGetSmallStreamCutoff(a1) != 2)
    {
      *(v14 + 32) = 0;
LABEL_15:
      if ((a4 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_16;
      }

      if (streamShouldBeMini(v14))
      {
        SmallFat = rootStorageGetSmallFat(a1);
      }

      else
      {
        SmallFat = rootStorageGetFat(a1);
        SmallSectorShift = SectorShift;
      }

      if (!*(*v15 + 20))
      {
        *(*v15 + 20) = calcReqdSectors(**v15, 1 << SmallSectorShift);
        StartSector = directoryGetStartSector(a3);
        Chain = fatGetChain(SmallFat, StartSector, (*v15 + 20), (*v15 + 8));
        if (Chain)
        {
          goto LABEL_30;
        }

        *(*v15 + 16) = *(*v15 + 20);
      }

      if (!streamShouldBeMini(v14) || *(*v15 + 24) || *(*v15 + 36) != 1 || (v26 = tocGetEntryAtIndex(TOC, 0), Chain = streamConstruct(a1, a2, v26, a4, *v15 + 24), !Chain))
      {
LABEL_16:
        *(v14 + 24) = 0;
        *(v14 + 40) = 0xFFFFFFFF00000000;
        *(v14 + 48) = a4;
        v22 = rootStorageGetTOC(*v14);
        EntryAtIndex = tocGetEntryAtIndex(v22, *(v14 + 8));
        StreamSharedBlock = directoryFillStgInfo(EntryAtIndex, (v14 + 64));
        if (!StreamSharedBlock)
        {
          *v29 = v14;
          return StreamSharedBlock;
        }

        goto LABEL_17;
      }

LABEL_30:
      StreamSharedBlock = Chain;
LABEL_17:
      directoryReleaseStreamSharedBlock(a3);
      free(v14);
      return StreamSharedBlock;
    }

    v21 = malloc_type_malloc(1 << SectorShift, 0x100004077774924uLL);
    *(v14 + 32) = v21;
    if (v21)
    {
      bzero(v21, 1 << SectorShift);
      goto LABEL_15;
    }

    free(v14);
    return 5;
  }

  return StreamSharedBlock;
}

uint64_t directoryQueryStreamSharedBlock(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 6;
  }

  v2 = *(a1 + 84);
  if (v2 != 5 && v2 != 2)
  {
    return 6;
  }

  v6 = (a1 + 160);
  v5 = *(a1 + 160);
  if (!v5)
  {
    if (!a2)
    {
      return 6;
    }

    goto LABEL_14;
  }

  RefCount = streamSharedBlockGetRefCount(v5);
  result = 6;
  if (a2 && RefCount)
  {
    if (*v6)
    {
      v9 = streamSharedBlockGetRefCount(*v6);
      streamSharedBlockSetRefCount(*v6, v9 + 1);
      result = 0;
      *a2 = *v6;
      return result;
    }

LABEL_14:
    result = streamConstructSharedBlock(v6);
    if (!result)
    {
      v10 = *v6;
      *a2 = *v6;
      streamSharedBlockSetRefCount(v10, 1);
      return 0;
    }
  }

  return result;
}

uint64_t streamConstructSharedBlock(void *a1)
{
  if (!a1)
  {
    return 6;
  }

  v2 = malloc_type_malloc(0x28uLL, 0x1030040D90EF640uLL);
  if (!v2)
  {
    return 5;
  }

  v3 = v2;
  result = 0;
  v3[9] = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 16) = 0;
  *a1 = v3;
  return result;
}

uint64_t streamShouldBeMini(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(v1 + 32))
  {
    return *(v1 + 33);
  }

  Header = rootStorageGetHeader(*a1);
  SmallStreamCutoff = headerGetSmallStreamCutoff(Header);
  TOC = rootStorageGetTOC(*a1);
  EntryAtIndex = tocGetEntryAtIndex(TOC, *(a1 + 8));
  *(v1 + 32) = 1;
  result = **(a1 + 56) < SmallStreamCutoff && directoryGetType(EntryAtIndex) != 5;
  *(v1 + 33) = result;
  return result;
}

uint64_t rootStorageGetSmallFat(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = *(a1 + 32);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t rootStorageGetFat(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = *(a1 + 24);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t openListAppend(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 6;
  }

  v6 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  if (!v6)
  {
    return 5;
  }

  *v6 = a2;
  v6[1] = 0;
  v7 = a1;
  *(v6 + 1) = a3;
  *(v6 + 2) = 0;
  do
  {
    v8 = v7;
    v9 = *v7;
    v7 = (*v7 + 16);
  }

  while (v9);
  v10 = 0;
  *v8 = v6;
  ++*(a1 + 8);
  return v10;
}

void SsrwOOStgStream::SsrwOOStgStream(SsrwOOStgStream *this, _Stream *a2)
{
  *this = &unk_286EC9020;
  StreamInfo = getStreamInfo(a2);
  SsrwOOStgInfo::SsrwOOStgInfo((this + 8), StreamInfo);
  *(this + 24) = a2;
}

EshHeader *EshHeader::makeDefault(EshHeader *this)
{
  *(&this->var1 + 1) = 0;
  *&this->var0 = 0;
  return this;
}

void PptParserVisitor::PptParserVisitor(PptParserVisitor *this, PptEshObjectFactory *a2)
{
  *this = &unk_286EDE1F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  *(this + 5) = 0;
  EshHeader::makeDefault(this + 3);
  *(this + 16) = 0;
}

void PptParserVisitor::init(PptParserVisitor *this, SsrwOOStream *a2)
{
  *(this + 1) = a2;
  if (a2)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 4001;
}

void EshParserVisitor::EshParserVisitor(EshParserVisitor *this, SsrwOOStream *a2, const EshObjectFactory *a3)
{
  EshDataModelVisitor::EshDataModelVisitor(this);
  *v5 = &unk_286EC8300;
  *(v5 + 16) = 0;
  *(v5 + 24) = a2;
  *(v5 + 48) = 255;
  *(v5 + 56) = a3;
}

void PptSkipVisitor::PptSkipVisitor(PptSkipVisitor *this, SsrwOOStream *a2, char a3, char a4)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 18) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
}

double PptParserVisitor::parse(PptParserVisitor *this, EshHeader *a2, uint64_t a3, SsrwOOStream *a4)
{
  var0 = a4->var0;
  if (a3 == -1)
  {
    v8 = (var0[5])(a4);
  }

  else
  {
    v8 = a3;
    (var0[2])(a4, a3, 0);
  }

  v9 = (*(a4->var0 + 10))(a4);
  a2->var4 = v9 & 0xF;
  a2->var2 = v9 >> 4;
  a2->var3 = (*(a4->var0 + 10))(a4);
  v10 = (*(**(this + 1) + 96))(*(this + 1));
  if (v10 >= 0x10000001)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  a2->var0 = v10;
  a2->var1 = v8;
  if (a2->var3 == 5003)
  {
    a2->var4 = 15;
  }

  return EshHeader::operator=(this + 48, a2);
}

uint64_t SsrwOOStgStream::seek(uint64_t a1, int a2, int a3)
{
  result = streamSeek(*(a1 + 192), a2, a3);
  if (result)
  {
    v4 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v4;
  }

  return result;
}

uint64_t streamSeek64(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = (a1 + 24);
    }

    else
    {
      if (a3 != 2)
      {
        return 6;
      }

      v5 = *(a1 + 56);
    }

    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = __CFADD__(v6, a2);
  if (a2 >= 1 && v7 || a2 < 0 && v6 < -a2)
  {
    return 6;
  }

  if ((*(a1 + 48) - 1) > 1 || *(a1 + 44) == -1 || (result = streamFlushToDisk(a1), !result))
  {
    result = 0;
    *(a1 + 24) = v6 + a2;
  }

  return result;
}

uint64_t SsrwOOStgStream::readUInt16(SsrwOOStgStream *this)
{
  v5 = 0;
  v1 = readUInt16(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t readUInt16(uint64_t a1, _WORD *a2)
{
  v6 = 2;
  v2 = 6;
  if (a1 && a2)
  {
    v2 = streamRead(a1, &v5, &v6);
    *a2 = CsLeReadUInt16(&v5);
  }

  return v2;
}

uint64_t streamRead(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v31 = 0;
  if (!a1)
  {
    return 6;
  }

  Status = 6;
  if (a3)
  {
    if (a2)
    {
      v7 = *a1;
      if (v7)
      {
        if ((*(a1 + 48) | 2) == 2)
        {
          if (*a3)
          {
            if (*(a1 + 24) >= **(a1 + 56))
            {
              *a3 = 0;
              return 15;
            }

            else
            {
              Header = rootStorageGetHeader(v7);
              SectorShift = headerGetSectorShift(Header);
              SmallSectorShift = headerGetSmallSectorShift(Header);
              v11 = *(a1 + 56);
              v12 = v11[3];
              if (v12)
              {
                v13 = (1 << SmallSectorShift);
                v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
                if (!v14)
                {
                  return 5;
                }

                Sector = v14;
                bzero(v14, v13);
                v11 = *(a1 + 56);
              }

              else
              {
                Sector = 0;
                v13 = (1 << SectorShift);
              }

              v30 = v12;
              v17 = *a3;
              v18 = *v11;
              v19 = *(a1 + 24);
              v20 = v18 - v19;
              if (v20 <= v17)
              {
                LODWORD(v17) = v20;
              }

              *a3 = v17;
              v21 = 0;
              if (v17)
              {
                v22 = v19 % v13;
                v23 = (v19 / v13);
                while (1)
                {
                  v24 = *(a1 + 56);
                  if (v23 >= *(v24 + 16))
                  {
                    break;
                  }

                  v25 = *(*(v24 + 8) + 4 * v23);
                  v26 = *(v24 + 24);
                  if (v26)
                  {
                    v27 = streamSeek64(v26, v13 * v25, 0);
                    if (v27 || (v31 = v13, v27 = streamRead(*(*(a1 + 56) + 24), Sector, &v31), v27))
                    {
                      Status = v27;
                      goto LABEL_34;
                    }
                  }

                  else
                  {
                    Sector = rootStorageReadSector(*a1, v25);
                    if (!Sector)
                    {
                      Status = rootStorageGetStatus(*a1);
                      goto LABEL_37;
                    }
                  }

                  v28 = *a3 - v21;
                  if (v13 - v22 >= v28)
                  {
                    v29 = v28;
                  }

                  else
                  {
                    v29 = (v13 - v22);
                  }

                  memcpy((a2 + v21), &Sector[v22], v29);
                  v22 = 0;
                  Status = 0;
                  ++v23;
                  v21 += v29;
                  if (v21 >= *a3)
                  {
                    goto LABEL_34;
                  }
                }

                Status = 15;
                if (v30 && Sector)
                {
                  free(Sector);
                }
              }

              else
              {
                Status = 0;
LABEL_34:
                if (v30 && Sector)
                {
                  free(Sector);
                }

LABEL_37:
                *a3 = v21;
                *(a1 + 24) += v21;
              }
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return Status;
}

uint64_t SsrwOOStgStream::readSInt32(SsrwOOStgStream *this)
{
  v5 = 0;
  v1 = readSInt32(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t readSInt32(uint64_t a1, _DWORD *a2)
{
  v6 = 4;
  v2 = 6;
  if (a1 && a2)
  {
    v2 = streamRead(a1, &v5, &v6);
    *a2 = CsLeReadSInt32(&v5);
  }

  return v2;
}

double EshHeader::operator=(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return result;
}

void PptCurrentUserAtom::PptCurrentUserAtom(PptCurrentUserAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED8580;
  *(v2 + 32) = &unk_286ED8630;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
}

void EshRecord::EshRecord(EshRecord *this, const EshHeader *a2)
{
  EshObject::EshObject(this, a2->var3);
  *v3 = &unk_286EC6840;
  EshHeader::operator=(v3 + 12, a2);
}

uint64_t PptCurrentUserAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

void PptParserVisitor::visit(PptParserVisitor *this, PptCurrentUserAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 4)
  {
    *(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1));
    if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 8)
    {
      *(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1));
      if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 12)
      {
        *(a2 + 30) = (*(**(this + 1) + 72))(*(this + 1));
        if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 14)
        {
          *(a2 + 31) = (*(**(this + 1) + 72))(*(this + 1));
          if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 16)
          {
            *(a2 + 64) = (*(**(this + 1) + 64))(*(this + 1));
            if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 17)
            {
              *(a2 + 65) = (*(**(this + 1) + 64))(*(this + 1));
              if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 18)
              {
                PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 2u);
                if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 20)
                {
                  operator new[](*(a2 + 30) + 1);
                }
              }
            }
          }
        }
      }
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 4003;
}

uint64_t SsrwOOStgStream::getPos(SsrwOOStgStream *this)
{
  v5 = 0;
  Pos = streamGetPos(*(this + 24), &v5);
  if (Pos)
  {
    v3 = Pos;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t streamGetPos(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 6;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t SsrwOOStgStream::readUInt32(SsrwOOStgStream *this)
{
  v5 = 0;
  v1 = readSInt32(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t SsrwOOStgStream::readSInt16(SsrwOOStgStream *this)
{
  v5 = 0;
  v1 = readSInt16(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t readSInt16(uint64_t a1, _WORD *a2)
{
  v6 = 2;
  v2 = 6;
  if (a1 && a2)
  {
    v2 = streamRead(a1, &v5, &v6);
    *a2 = CsLeReadSInt16(&v5);
  }

  return v2;
}

uint64_t SsrwOOStgStream::readByte(SsrwOOStgStream *this)
{
  v6 = 1;
  v5 = 0;
  v1 = streamRead(*(this + 24), &v5, &v6);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

_BYTE *PptSkipVisitor::skipKnownBytes(_BYTE *this, const EshRecord *a2, unsigned int a3)
{
  v10 = a3;
  if (a3)
  {
    v3 = a3;
    v4 = this;
    if (this[8] == 1)
    {
      if ((*(**this + 40))() + a3 <= *(a2 + 4) + *(a2 + 3) + 8 && (*(**v4 + 176))() >= v3)
      {
        LODWORD(v9) = (*(**v4 + 40))() - *(a2 + 4) - 8;
        HIDWORD(v9) = v3;
        v6 = v4[21];
        if (v6 >= v4[22])
        {
          v7 = std::vector<CsRange,ChAllocator<CsRange>>::__emplace_back_slow_path<CsRange>(v4 + 20, &v9);
          v3 = v10;
        }

        else
        {
          *v6 = v9;
          v7 = (v6 + 1);
        }

        v4[21] = v7;
        operator new[](v3);
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = 4003;
    }

    operator new[](a3);
  }

  return this;
}

uint64_t SsrwOOStgStream::getBytesAvailableToRead(SsrwOOStgStream *this)
{
  v5 = 0;
  BytesAvailableToRead = streamGetBytesAvailableToRead(*(this + 24), &v5);
  if (BytesAvailableToRead)
  {
    v3 = BytesAvailableToRead;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

uint64_t streamGetBytesAvailableToRead(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2 && (*(a1 + 48) | 2) == 2)
  {
    result = 0;
    *a2 = **(a1 + 56) - *(a1 + 24);
  }

  return result;
}

uint64_t SsrwOOStgStream::readBytes(SsrwOOStgStream *this, uint64_t a2, unsigned int *a3)
{
  result = streamRead(*(this + 24), a2, a3);
  if (result)
  {
    v4 = result;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v4;
  }

  return result;
}

void PptCurrentUserAtom::setSingleByteUserName(PptCurrentUserAtom *this, const char *__s)
{
  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C8077774924);
  }

  *(this + 9) = 0;
  v5 = strlen(__s);
  operator new[]((v5 + 1));
}

uint64_t SsrwOOStgStream::readChar16(SsrwOOStgStream *this)
{
  v5 = 0;
  v1 = readUInt16(*(this + 24), &v5);
  if (v1)
  {
    v3 = v1;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
  }

  return v5;
}

void CsString::CsString(CsString *this)
{
  this->var1 = 0;
  *&this->var2 = 0;
  this->var0 = &unk_286EC86D8;
}

CsString *CsString::reserve(CsString *this, int a2)
{
  if (a2 == -1)
  {
LABEL_6:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  if (a2 + 1 >= this->var3)
  {
    v2 = 64 - ((a2 + 1) & 0x3Fu) + (a2 + 1);
    if (!HIDWORD(v2))
    {
      this->var3 = v2;
      operator new[](2 * v2);
    }

    goto LABEL_6;
  }

  return this;
}

CsString *CsString::append(CsString *this, unsigned __int16 a2)
{
  v4 = this->var2 + 1;
  result = CsString::reserve(this, v4);
  var1 = this->var1;
  var1[this->var2] = a2;
  this->var2 = v4;
  var1[v4] = 0;
  return result;
}

CsString *CsString::setCount(CsString *this, unsigned int a2)
{
  v3 = this;
  if (this->var3 < a2)
  {
    this = CsString::reserve(this, a2);
  }

  v3->var2 = a2;
  var1 = v3->var1;
  if (var1)
  {
    var1[a2] = 0;
  }

  return this;
}

void PptCurrentUserAtom::setDoubleByteUserName(PptCurrentUserAtom *this, const unsigned __int16 *a2)
{
  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x25F896FE0](v4, 0x1000C80BDFB0063);
  }

  *(this + 10) = 0;
  v5 = _ChWcslen(a2);
  operator new[]((2 * v5 + 4) & 0x1FFFFFFFELL);
}

_WORD *_ChWcscpy(_WORD *result, const unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = result;
  if (*a2)
  {
    v4 = a2 + 1;
    v3 = result;
    do
    {
      *v3++ = v2;
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }

  *v3 = 0;
  return result;
}

_BYTE *PptParserVisitor::endRead(PptParserVisitor *this, EshRecord *a2)
{
  if ((*(**(this + 1) + 40))(*(this + 1)) > *(a2 + 4) + *(a2 + 3) + 8)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  v4 = *(this + 3);

  return PptSkipVisitor::skipUnknownToEnd(v4, a2);
}

_BYTE *PptSkipVisitor::skipUnknownToEnd(PptSkipVisitor *this, const EshRecord *a2)
{
  v4 = *(a2 + 4) + *(a2 + 3) + 8;
  if (v4 < (*(**this + 40))(*this))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v5 = *(a2 + 4) + *(a2 + 3);
  v6 = v5 - (*(**this + 40))() + 8;

  return PptSkipVisitor::skipUnknownBytes(this, a2, v6);
}

_BYTE *PptSkipVisitor::skipUnknownBytes(PptSkipVisitor *this, const EshRecord *a2, unsigned int a3)
{
  if (a3 && (*(this + 9) & 1) != 0)
  {
    (*(**this + 40))();
    operator new();
  }

  return PptSkipVisitor::skipKnownBytes(this, a2, a3);
}

void CsString::~CsString(CsString *this)
{
  this->var0 = &unk_286EC86D8;
  p_var1 = &this->var1;
  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x25F896FE0](var1, 0x1000C80BDFB0063);
  }

  *p_var1 = 0;
  p_var1[1] = 0;

  JUMPOUT(0x25F897000);
}

{
  this->var0 = &unk_286EC86D8;
  p_var1 = &this->var1;
  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x25F896FE0](var1, 0x1000C80BDFB0063);
  }

  *p_var1 = 0;
  p_var1[1] = 0;
}

void PptParserVisitor::~PptParserVisitor(PptParserVisitor *this)
{
  PptParserVisitor::~PptParserVisitor(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EDE1F8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    v4 = v3[20];
    if (v4)
    {
      v3[21] = v4;
      operator delete(v4);
    }

    ChBinaryTree<PptSkipVisitor::PptSkipWarning,PptSkipVisitor::PptWarningLess>::clear(v3 + 18);
    MEMORY[0x25F897000](v3, 0x1020C401FB183FFLL);
  }

  *(this + 3) = 0;
  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x25F896FE0](v5, 0x1000C8077774924);
  }

  *(this + 5) = 0;
}

void EshParserVisitor::~EshParserVisitor(EshParserVisitor *this)
{
  EshParserVisitor::~EshParserVisitor(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC8300;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C80BDFB0063);
  }

  *(this + 2) = 0;

  EshDataModelVisitor::~EshDataModelVisitor(this);
}

void EshDataModelVisitor::~EshDataModelVisitor(EshDataModelVisitor *this)
{
  *this = &unk_286EC5D48;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

uint64_t ChBinaryTree<PptSkipVisitor::PptSkipWarning,PptSkipVisitor::PptWarningLess>::clear(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v3 = ChBinaryTree<PptSkipVisitor::PptSkipWarning,PptSkipVisitor::PptWarningLess>::node::~node(result);
    result = MEMORY[0x25F897000](v3, 0x1020C40E213B89CLL);
  }

  *a1 = 0;
  return result;
}

uint64_t SsrwOOStgStream::close(SsrwOOStgStream *this, char a2)
{
  v3 = (this + 192);
  result = *(this + 24);
  if (result)
  {
    v5 = streamSeek(result, 0, 2);
    if ((a2 & 1) == 0)
    {
      if (v5)
      {
        v6 = v5;
        exception = __cxa_allocate_exception(4uLL);
        *exception = v6;
      }
    }

    result = closeStream(v3);
    *v3 = 0;
  }

  return result;
}

uint64_t closeStream(uint64_t *a1)
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

  if ((*(v2 + 48) - 1) <= 1)
  {
    streamFlushToDisk(v2);
    streamResize(*a1, *(*a1 + 24));
    v2 = *a1;
  }

  TOC = rootStorageGetTOC(*v2);
  EntryAtIndex = tocGetEntryAtIndex(TOC, *(*a1 + 8));
  v5 = *a1;
  if ((*(*a1 + 48) - 1) <= 1)
  {
    v6 = EntryAtIndex;
    v7 = directorySetSize(EntryAtIndex, **(v5 + 56));
    if (v7)
    {
      goto LABEL_9;
    }

    v7 = directorySetCurrentCreationTime(v6);
    if (v7)
    {
      goto LABEL_9;
    }

    v7 = directorySetCurrentModificationTime(v6);
    if (v7)
    {
      goto LABEL_9;
    }

    v9 = *a1;
    *(*(*a1 + 56) + 32) = 0;
    ShouldBeMini = streamShouldBeMini(v9);
    v5 = *a1;
    if (ShouldBeMini)
    {
      if (*(*(v5 + 56) + 36) == 1)
      {
        v7 = convertToSmallStream(*a1);
        if (v7)
        {
LABEL_9:
          v8 = v7;
LABEL_16:
          streamDestroy(a1);
          return v8;
        }

        v5 = *a1;
      }
    }
  }

  v8 = storageRemoveOpenChild(*(v5 + 16), 2, v5);
  if (!v8)
  {
    goto LABEL_16;
  }

  return v8;
}

uint64_t storageRemoveOpenChild(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1;
  result = openListFindItem(*(a1 + 24), &v5, a2, a3);
  if (!result)
  {
    return openListRemoveItem(*(a1 + 24), v5);
  }

  return result;
}

uint64_t openListFindItem(int **a1, _DWORD *a2, int a3, uint64_t a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 11;
  }

  for (i = 0; ; ++i)
  {
    if ((v6 = *v4, a3 == 2) && v6 == 2 || a3 == 1 && v6 == 1)
    {
      if (*(v4 + 1) == a4)
      {
        break;
      }
    }

    v4 = *(v4 + 2);
    if (!v4)
    {
      return 11;
    }
  }

  result = 0;
  *a2 = i;
  return result;
}

uint64_t openListRemoveItem(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 6;
  }

  if (*(a1 + 8) <= a2)
  {
    return 6;
  }

  v3 = *a1;
  if (a2)
  {
    while (1)
    {
      v4 = v3;
      v3 = v3[2];
      if (!v3)
      {
        return 11;
      }

      if (!--a2)
      {
        v5 = v4 + 2;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v5 = a1;
LABEL_10:
    *v5 = v3[2];
    free(v3);
    result = 0;
    --*(a1 + 8);
  }

  return result;
}

uint64_t streamDestroy(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (*(v1 + 7))
    {
      TOC = rootStorageGetTOC(*v1);
      EntryAtIndex = tocGetEntryAtIndex(TOC, *(*a1 + 2));
      directoryReleaseStreamSharedBlock(EntryAtIndex);
      v1 = *a1;
    }

    v5 = *(v1 + 4);
    if (v5)
    {
      free(v5);
      v1 = *a1;
    }

    freeInfo(v1 + 8, 1u);
    free(*a1);
    *a1 = 0;
  }

  return 0;
}

uint64_t directoryReleaseStreamSharedBlock(uint64_t a1)
{
  if (!a1)
  {
    return 6;
  }

  v1 = *(a1 + 84);
  if (v1 != 5 && v1 != 2)
  {
    return 6;
  }

  v4 = (a1 + 160);
  v3 = *(a1 + 160);
  if (v3)
  {
    if (!streamSharedBlockGetRefCount(v3))
    {
      return 6;
    }

    v3 = *v4;
  }

  RefCount = streamSharedBlockGetRefCount(v3);
  if (RefCount != 1)
  {
    streamSharedBlockSetRefCount(*v4, RefCount - 1);
    return 0;
  }

  result = streamDestroySharedBlock(v4);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t streamDestroySharedBlock(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 6;
  }

  v3 = v1[1];
  if (v3)
  {
    free(v3);
  }

  if (v1[3])
  {
    streamDestroy(v1 + 3);
  }

  free(v1);
  result = 0;
  *a1 = 0;
  return result;
}

void SsrwOOStgStream::~SsrwOOStgStream(SsrwOOStgStream *this)
{
  SsrwOOStgStream::~SsrwOOStgStream(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC9020;
  if (*(this + 24))
  {
    SsrwOOStgStream::close(this, 1);
  }

  TSURectWithOriginAndSize(this + 8);
}

void PptCurrentUserAtom::~PptCurrentUserAtom(PptCurrentUserAtom *this)
{
  PptCurrentUserAtom::~PptCurrentUserAtom(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286ED8580;
  *(this + 4) = &unk_286ED8630;
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x25F896FE0](v2, 0x1000C8077774924);
  }

  *(this + 9) = 0;
  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x25F896FE0](v3, 0x1000C80BDFB0063);
  }

  *(this + 10) = 0;
}

void EshBinaryReader::EshBinaryReader(EshBinaryReader *this)
{
  *this = &unk_286EC8498;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 16) = 10;
  *(this + 18) = 0;
  EshHeader::makeDefault((this + 76));
  *(this + 92) = 0;
}

void PptPersistDir::PptPersistDir(PptPersistDir *this, PptParserVisitor *a2)
{
  *(this + 5) = 0;
  *this = a2;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 4) = this + 40;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  *(this + 10) = -1;
  *(this + 92) = 0;
  *(this + 24) = 0;
}

void PptUserEditAtom::PptUserEditAtom(PptUserEditAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDD800;
  *(v2 + 32) = &unk_286EDD8A8;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  *(v2 + 72) = 0;
}

uint64_t PptUserEditAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptUserEditAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4)
  {
    goto LABEL_12;
  }

  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 8)
  {
    goto LABEL_12;
  }

  *(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 12)
  {
    goto LABEL_12;
  }

  *(a2 + 15) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 16)
  {
    goto LABEL_12;
  }

  *(a2 + 16) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 20)
  {
    goto LABEL_12;
  }

  *(a2 + 17) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 24)
  {
    goto LABEL_12;
  }

  *(a2 + 18) = (*(**(this + 1) + 72))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 26)
  {
    goto LABEL_12;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 2u);
  if (EshRecord::getDataLength(a2) == 32)
  {
    if ((*(**(this + 1) + 40))(*(this + 1)) == v4 + 28)
    {
      *(a2 + 19) = (*(**(this + 1) + 104))(*(this + 1));
      goto LABEL_11;
    }

LABEL_12:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

LABEL_11:
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptPersistPtrIncrAtom::PptPersistPtrIncrAtom(PptPersistPtrIncrAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB890;
  *(v2 + 32) = &unk_286EDB940;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 88) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = v2 + 80;
  *(v2 + 96) = 0;
}

uint64_t PptPersistPtrIncrAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptPersistPtrIncrAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = EshRecord::getDataLength(a2) >> 2;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = (*(**(this + 1) + 104))(*(this + 1));
      v14 = v6;
      v7 = *(a2 + 7);
      if (v7 >= *(a2 + 8))
      {
        v8 = std::vector<unsigned int,ChAllocator<unsigned int>>::__emplace_back_slow_path<unsigned int const&>(a2 + 48, &v14);
      }

      else
      {
        *v7 = v6;
        v8 = (v7 + 1);
      }

      *(a2 + 7) = v8;
      ++v5;
      if (v6 >= 0x100000)
      {
        v9 = v6 >> 20;
        v10 = v6 & 0xFFFFF;
        v11 = v9;
        do
        {
          v12 = (*(**(this + 1) + 104))(*(this + 1));
          PptPersistPtrIncrAtom::addReference(a2, v10++, v12);
          --v11;
        }

        while (v11);
        v5 += v9;
      }
    }

    while (v5 < v4);
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t *PptPersistPtrIncrAtom::addReference(PptPersistPtrIncrAtom *this, unsigned int a2, unsigned int a3)
{
  v6[0] = a2;
  v6[1] = a3;
  result = std::__tree<ChPair<unsigned int,unsigned int>,PptPersistPtrIncrAtom::RefLess<ChPair<unsigned int,unsigned int>>,std::allocator<ChPair<unsigned int,unsigned int>>>::__emplace_unique_key_args<ChPair<unsigned int,unsigned int>,ChPair<unsigned int,unsigned int> const&>(this + 72, v6);
  if (*(this + 24) < a2)
  {
    *(this + 24) = a2;
  }

  return result;
}

void *ChAutoPtr<SsrwOOStgInfo>::~ChAutoPtr(void *a1)
{
  if (*a1)
  {
    v2 = TSURectWithOriginAndSize();
    MEMORY[0x25F897000](v2, 0x1020C40285AA8CALL);
  }

  *a1 = 0;
  return a1;
}

uint64_t PptBinaryReader::readEncryptionInfo(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (*(*(a1 + 192) + 92))
  {
    *a4 = 8001;
    v6 = (*(**(a1 + 152) + 40))(*(a1 + 152));
    OffsetByRef = PptPersistDir::getOffsetByRef(*(a1 + 192), *(*(a1 + 192) + 96));
    EshHeader::makeDefault(&v11);
    PptParserVisitor::parse(*(a1 + 184), &v11, OffsetByRef);
    PptCryptSession10ContainerAtom::PptCryptSession10ContainerAtom(v10, &v11);
    v8 = (*(**(a1 + 184) + 984))();
    if (v8)
    {
      *a3 = v10[12];
      operator new[]();
    }

    SsrwOOStream::seekFromStart(*(a1 + 152), v6);
    PptCryptSession10ContainerAtom::~PptCryptSession10ContainerAtom(v10);
  }

  else
  {
    v8 = 0;
    *a4 = 8011;
  }

  return v8;
}

void sub_25D2A0F78(void *a1, int a2)
{
  v4 = v2;

  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    PBConvertCsException(v7);
    __cxa_end_catch();
  }

  else
  {
    v8 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      [v8 raise];
    }

    else
    {
      [TCMessageException raise:TCUnknownProblemMessage];
    }

    __cxa_end_catch();
  }

  JUMPOUT(0x25D2A0F24);
}

void sub_25D2A103C(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a2 == 2)
  {
    v9 = objc_begin_catch(exc_buf);

    objc_end_catch();
    JUMPOUT(0x25D2A0F24);
  }

  JUMPOUT(0x25D2A0FA4);
}

void sub_25D2A16E4(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_25D2A19A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t EshAtom::versionForAtomType(EshAtom *this)
{
  if (this == 61730)
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  if (this == 61729)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (this == 61451)
  {
    v3 = 3;
  }

  else
  {
    v3 = this == 61458;
  }

  if (this <= 61728)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (this == 61450)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (this == 61449)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (this == 61447)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  if (this <= 61450)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

uint64_t PptEshObjectFactory::createObject(PptEshObjectFactory *this, int a2, int a3)
{
  if (a2 > 61452)
  {
    switch(a2)
    {
      case 61453:
        operator new();
      case 61456:
        operator new();
      case 61457:
        operator new();
    }
  }

  else
  {
    switch(a2)
    {
      case 6:
        operator new();
      case 7:
        operator new();
      case 12:
        operator new();
    }
  }

  return EshObjectFactory::createObject(this, a2, a3);
}

uint64_t EshObjectFactory::createObject(EshObjectFactory *this, int a2, int a3)
{
  if (a2 == 1)
  {
    operator new();
  }

  if ((a2 - 2) > 0x1A)
  {

    return EshObjectFactory::createRecord(this, a2, a3);
  }

  else
  {

    return EshObjectFactory::createSemanticObject(this, a2);
  }
}

void EshRoot::EshRoot(EshRoot *this)
{
  EshObject::EshObject(this, 1u);
  *v1 = &unk_286EC7478;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
}

void PptBinaryReader::read(PptBinaryReader *this, EshRoot *a2)
{
  (*(*a2 + 104))(a2, 0);
  PptBinaryReader::checkStarted(this);
  *(this + 29) = 0;
  v4 = *(this + 40);
  if (v4 != 2)
  {
    goto LABEL_6;
  }

  if ((*(this + 164) & 1) == 0)
  {
    *(this + 164) = 1;
    if (*(*(this + 25) + 4) != *(this + 54))
    {
      exception = __cxa_allocate_exception(4uLL);
      v19 = 7010;
      goto LABEL_50;
    }

    v13 = *(*(this + 24) + 88);
    if (v13 >= 1)
    {
      v14 = 1;
      do
      {
        OffsetByRef = PptPersistDir::getOffsetByRef(*(this + 24), v14);
        if ((OffsetByRef & 0x80000000) == 0)
        {
          PptParserVisitor::parse(*(this + 23), *(this + 25), OffsetByRef, *(this + 19));
          EshRoot::appendChild(a2, *(this + 25));
        }

        ++v14;
        --v13;
      }

      while (v13);
    }

    return;
  }

  if (*(*(this + 25) + 10) - 61440 <= 0x122)
  {
    if (!PptBinaryReader::isBadHeader(this))
    {
      (*(**(this + 19) + 16))(*(this + 19), *(*(this + 25) + 4), 0);
      (*(**(this + 21) + 16))(*(this + 21), *(this + 19));
      v16 = *(this + 21);
      goto LABEL_45;
    }

    v4 = *(this + 40);
LABEL_6:
    if (v4)
    {
      goto LABEL_7;
    }

    if (!*(this + 22) || PptBinaryReader::isBadHeader(this))
    {
      goto LABEL_29;
    }

    if (!EshBinaryReader::isStarted(*(this + 22)) || EshBinaryReader::atEnd(*(this + 22)))
    {
      if (!EshBinaryReader::isStarted(*(this + 22)))
      {
        PptParserVisitor::parse(*(this + 23), *(this + 25), 0, *(this + 18));
      }

      (*(**(this + 18) + 16))();
      if ((*(**(this + 18) + 176))(*(this + 18)) >= 8)
      {
        (*(**(this + 18) + 40))(*(this + 18));
        operator new();
      }
    }

    if (EshBinaryReader::atEnd(*(this + 22)))
    {
      return;
    }

    v16 = *(this + 22);
LABEL_45:
    v17 = *(*v16 + 32);

    v17();
    return;
  }

LABEL_7:
  if (!*(this + 22))
  {
LABEL_29:
    v8 = *(this + 25);
LABEL_30:
    *v8 = 0;
    return;
  }

  v5 = (*(**(this + 18) + 168))(*(this + 18));
  Size = SsrwOOStgInfo::getSize(v5);
  if (*(this + 36) == *(this + 37))
  {
    if (*(this + 312) != 1)
    {
      *(this + 312) = 1;
      PptBinaryReader::parseStore(this);
    }

    exception = __cxa_allocate_exception(4uLL);
    v19 = 1000;
LABEL_50:
    *exception = v19;
  }

  *(this + 40) = 0;
  v7 = PptParserVisitor::parse(*(this + 23), *(this + 25), 0, *(this + 18));
  v8 = *(this + 25);
  if (*(v8 + 4) + *v8 + 8 > Size || *(v8 + 10) - 61440 >= 0x123)
  {
    goto LABEL_30;
  }

  (*(**(this + 18) + 16))(*(this + 18), 0, 0, v7);
  v9 = *(this + 25);
  var0 = v9->var0;
  if (v9->var0)
  {
    (*(**(this + 22) + 16))(*(this + 22), *(this + 18));
    (*(**(this + 22) + 32))(*(this + 22), a2);
    v9 = *(this + 25);
    var0 = v9->var0;
  }

  v11 = v9->var1 + var0;
  if (v11 + 16 <= Size)
  {
    PptParserVisitor::parse(*(this + 23), v9, v11 + 8, *(this + 18));
    if (!PptBinaryReader::isBadHeader(this) || (PptBinaryReader::findGoodHeader(this, *(*(this + 25) + 4) + **(this + 25) + 8) & 1) != 0)
    {
      return;
    }

    v12 = *(this + 25);
  }

  else
  {
    v12 = v9;
  }

  EshHeader::makeDefault(v12);
}

void EshRoot::setNumChildren(EshRoot *this, unsigned int a2)
{
  v3 = (this + 16);
  v4 = (*(this + 3) - *(this + 2)) >> 3;
  if (v4 < a2)
  {
    operator new();
  }

  v5 = v4 - a2;
  if (v4 > a2)
  {
    v6 = 8 * a2;
    do
    {
      v7 = *v3;
      v8 = *(*v3 + v6);
      if (v8)
      {
        MEMORY[0x25F897000](v8, 0x1000C408B6DE1C6);
        v7 = *v3;
      }

      *(v7 + v6) = 0;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  std::vector<EshHeader *,ChAllocator<EshHeader *>>::resize(v3, a2);
}

BOOL PptBinaryReader::checkStarted(PptBinaryReader *this)
{
  result = SsrwOORootStorage::isOpen((this + 40));
  if (!result || !*(this + 19) || !*(this + 21) || !*(this + 23) || !*(this + 25))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return result;
}

BOOL PptBinaryReader::isBadHeader(PptBinaryReader *this)
{
  v2 = 152;
  if (!*(this + 40))
  {
    v2 = 144;
  }

  v3 = (*(**(this + v2) + 168))(*(this + v2));
  Size = SsrwOOStgInfo::getSize(v3);
  v5 = *(this + 25);
  if (!*(this + 40))
  {
    if (((v5->var3 + 3816) >> 8) != 255)
    {
      return 1;
    }

    v8 = v5->var2 & 0xFFFE;
    if (v8 <= 0x6DF)
    {
      if ((v5->var2 & 0xFFFEu) > 0x469)
      {
        if (v8 != 1130 && v8 != 1346)
        {
          return 1;
        }
      }

      else if (v8 != 534 && v8 != 980)
      {
        return 1;
      }
    }

    else
    {
      v9 = v8 - 1760 > 4 || ((1 << (v8 + 32)) & 0x15) == 0;
      if (v9 && v8 != 2048 && v8 != 1960)
      {
        return 1;
      }
    }
  }

  v6 = v5->var1 + 8;
  if (v6 > Size || v5->var0 + v6 > Size)
  {
    return 1;
  }

  return EshHeader::isDefault(v5);
}

BOOL PptBinaryReader::isHeaderSkipped(PptBinaryReader *this, const EshHeader *a2)
{
  v2 = *(this + 31);
  if (!v2)
  {
    return 0;
  }

  var3 = a2->var3;
  while (1)
  {
    v6 = *(v2 + 7);
    if (v6 <= var3)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v6 < var3)
  {
    ++v2;
    goto LABEL_6;
  }

  v8 = a2->var3;
  v9 = &v8;
  if (!*(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 240, &v8) + 8))
  {
    return 1;
  }

  v8 = a2->var3;
  v9 = &v8;
  if (*(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 240, &v8) + 8) != 1)
  {
    return 0;
  }

  return PptPersistDir::getRefByOffset(*(this + 24), a2->var1) == -1;
}

uint64_t PptPersistDir::getRefByOffset(PptPersistDir *this, unsigned int a2)
{
  v5 = a2;
  v2 = *(this + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v3 = *(v2 + 7);
    if (v3 <= a2)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_5;
  }

  v6 = &v5;
  return *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 56, &v5) + 8);
}

uint64_t PptBinaryReader::goToNextHeader(PptBinaryReader *this, char a2)
{
  if (a2)
  {
    goto LABEL_13;
  }

  v3 = *(this + 25);
  var3 = v3->var3;
  if (v3->var4 == 15)
  {
    if (var3 == 1064 || var3 == 12052 || var3 == 14003)
    {
      goto LABEL_13;
    }
  }

  else if (var3 != 5003)
  {
LABEL_13:
    v7 = *(*(this + 25) + 4) + **(this + 25);
    goto LABEL_14;
  }

  if (PptBinaryReader::isHeaderSkipped(this, v3))
  {
    goto LABEL_13;
  }

  v7 = *(*(this + 25) + 4);
LABEL_14:
  v8 = (v7 + 8);
  v9 = 152;
  if (!*(this + 40))
  {
    v9 = 144;
  }

  (*(**(this + v9) + 16))(*(this + v9), v8, 0);
  *(*(this + 25) + 4) = v8;
  if (*(this + 40) || PptBinaryReader::isBadHeader(this))
  {
    do
    {
      v10 = *(this + 25);
      v11 = v10[1];
      *v10 = 0;
      v10[1] = v8;
      if (!PptBinaryReader::isBadHeader(this))
      {
        PptParserVisitor::parse(*(this + 23), *(this + 25), v8);
        v8 = (*(*(this + 25) + 4) + **(this + 25) + 8);
      }

      if (PptBinaryReader::isBadHeader(this))
      {
        NextOffset = PptPersistDir::getNextOffset(*(this + 24), v11);
        if (NextOffset == -1)
        {
          v8 = 0xFFFFFFFFLL;
        }

        else
        {
          PptParserVisitor::parse(*(this + 23), *(this + 25), NextOffset);
          v8 = (*(*(this + 25) + 4) + **(this + 25) + 8);
        }
      }

      result = PptBinaryReader::isBadHeader(this);
      if (result)
      {
        break;
      }

      result = PptBinaryReader::isHeaderSkipped(this, *(this + 25));
    }

    while ((result & 1) != 0);
  }

  else
  {
    v14 = *(**(this + 22) + 16);

    return v14();
  }

  return result;
}

uint64_t PptPersistDir::getNextOffset(PptPersistDir *this, int a2)
{
  if (*(this + 20) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (this + 40);
  v5 = 0xFFFFFFFFLL;
  v6 = 1;
  do
  {
    v7 = *v4;
    if (*v4)
    {
      v8 = v4;
      do
      {
        v9 = *(v7 + 28);
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v8 = v7;
        }

        v7 = *(v7 + 8 * v11);
      }

      while (v7);
      if (v8 != v4 && v6 >= *(v8 + 7))
      {
        v14 = v6;
        v15 = &v14;
        if (*(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 32, &v14) + 8) > a2)
        {
          if (v5 == -1 || (v14 = v6, v15 = &v14, *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 32, &v14) + 8) < v5))
          {
            v14 = v6;
            v15 = &v14;
            v5 = *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 32, &v14) + 8);
          }
        }
      }
    }
  }

  while (v6++ < *(this + 20));
  return v5;
}

uint64_t EshRoot::getChildHeader(EshRoot *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (((*(this + 3) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 8 * a2);
}

uint64_t EshRoot::getChildType(EshRoot *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (((*(this + 3) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 10);
}

uint64_t EshRoot::getChildVersion(EshRoot *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (((*(this + 3) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*(v2 + 8 * a2) + 12);
}

EshObjectFactory *PptObjectFactory::createObject(PptObjectFactory *this, PptObjectFactory *a2, uint64_t a3)
{
  v3 = a3;
  if (a2 == 1)
  {
    operator new();
  }

  if ((a2 - 1) >= 0x1C && (a2 + 4096) > 0x122u)
  {
    PptObjectFactory::createPowerPointObject(a2, a3);
  }

  v5 = (*(*this->var1 + 16))(this->var1, a2, a3);
  EshObjectFactory::verifyTypeAndVersionOfObject(v5, a2, v3);
  return v5;
}

void PptObjectFactory::createPowerPointObject(PptObjectFactory *this, int a2)
{
  v2 = a2;
  v3 = this;
  if (a2 == 15)
  {
    if (this != 1064 && this != 12052 && this != 14003)
    {
LABEL_5:
      operator new();
    }
  }

  else if (this == 5003)
  {
    goto LABEL_5;
  }

  EshHeader::makeDefault(&v4);
  v4.var3 = v3;
  v4.var4 = v2;
  if (v3 <= 3997)
  {
    if (v3 > 2020)
    {
      if (v3 <= 3008)
      {
        if (v3 > 2030)
        {
          switch(v3)
          {
            case 2031:
              operator new();
            case 2032:
              operator new();
            case 2041:
              operator new();
          }
        }

        else
        {
          switch(v3)
          {
            case 2021:
              operator new();
            case 2023:
              operator new();
            case 2025:
              operator new();
          }
        }
      }

      else if (v3 <= 3030)
      {
        switch(v3)
        {
          case 3009:
            operator new();
          case 3011:
            operator new();
          case 3025:
            operator new();
        }
      }

      else if (v3 > 3034)
      {
        if (v3 == 3035)
        {
          operator new();
        }

        if (v3 == 3037)
        {
          operator new();
        }
      }

      else
      {
        if (v3 == 3031)
        {
          operator new();
        }

        if (v3 == 3034)
        {
          operator new();
        }
      }
    }

    else
    {
      switch(v3)
      {
        case 1001:
          operator new();
        case 1005:
          operator new();
        case 1007:
          operator new();
        case 1009:
          operator new();
        case 1011:
          operator new();
        case 1015:
          operator new();
        case 1017:
          operator new();
        case 1019:
          operator new();
        case 1021:
          operator new();
        case 1022:
          operator new();
        case 1024:
          operator new();
        case 1025:
          operator new();
        case 1030:
          operator new();
        case 1034:
          operator new();
        case 1037:
          operator new();
        case 1038:
          operator new();
        case 1039:
          operator new();
        case 1042:
          operator new();
        case 1045:
          operator new();
        case 1052:
          operator new();
        case 1053:
          operator new();
        case 1054:
          operator new();
        case 1055:
          operator new();
        case 1056:
          operator new();
        case 1058:
          operator new();
        case 1059:
          operator new();
        case 1060:
          operator new();
        case 1061:
          operator new();
        case 1062:
          operator new();
        case 1063:
          operator new();
        case 1064:
          operator new();
        default:
          break;
      }
    }
  }

  else if (v3 > 6001)
  {
    if (v3 > 12010)
    {
      if (v3 <= 14100)
      {
        switch(v3)
        {
          case 12011:
            operator new();
          case 12052:
            operator new();
          case 14001:
            operator new();
        }
      }

      else
      {
        switch(v3)
        {
          case 61735:
            operator new();
          case 61736:
            operator new();
          case 61737:
            operator new();
          case 61738:
          case 61739:
          case 61740:
          case 61741:
          case 61742:
          case 61743:
          case 61744:
          case 61745:
          case 61746:
          case 61756:
          case 61757:
          case 61758:
          case 61759:
            break;
          case 61747:
            operator new();
          case 61748:
            operator new();
          case 61749:
            operator new();
          case 61750:
            operator new();
          case 61751:
            operator new();
          case 61752:
            operator new();
          case 61753:
            operator new();
          case 61754:
            operator new();
          case 61755:
            operator new();
          case 61760:
            operator new();
          case 61761:
            operator new();
          case 61762:
            operator new();
          case 61763:
            operator new();
          default:
            if (v3 == 14101)
            {
              operator new();
            }

            return;
        }
      }
    }

    else if (v3 > 11010)
    {
      if (v3 > 12000)
      {
        if (v3 <= 12005)
        {
          if (v3 == 12001)
          {
            operator new();
          }

          if (v3 == 12005)
          {
            operator new();
          }
        }

        else
        {
          switch(v3)
          {
            case 12006:
              operator new();
            case 12007:
              operator new();
            case 12010:
              operator new();
          }
        }
      }

      else if (v3 <= 11016)
      {
        if (v3 == 11011)
        {
          operator new();
        }

        if (v3 == 11013)
        {
          operator new();
        }
      }

      else
      {
        switch(v3)
        {
          case 11017:
            operator new();
          case 11019:
            operator new();
          case 11021:
            operator new();
        }
      }
    }

    else if (v3 > 10001)
    {
      if (v3 <= 11002)
      {
        if (v3 == 10002)
        {
          operator new();
        }

        if (v3 == 10004)
        {
          operator new();
        }
      }

      else
      {
        switch(v3)
        {
          case 11003:
            operator new();
          case 11008:
            operator new();
          case 11009:
            operator new();
        }
      }
    }

    else if (v3 <= 6022)
    {
      if (v3 == 6002)
      {
        operator new();
      }

      if (v3 == 6021)
      {
        operator new();
      }
    }

    else
    {
      switch(v3)
      {
        case 6023:
          operator new();
        case 10000:
          operator new();
        case 10001:
          operator new();
      }
    }
  }

  else
  {
    switch(v3)
    {
      case 3998:
        operator new();
      case 3999:
        operator new();
      case 4000:
        operator new();
      case 4001:
        operator new();
      case 4002:
        operator new();
      case 4003:
        operator new();
      case 4004:
        operator new();
      case 4005:
        operator new();
      case 4006:
        operator new();
      case 4007:
        operator new();
      case 4008:
        operator new();
      case 4009:
        operator new();
      case 4010:
        operator new();
      case 4011:
        operator new();
      case 4012:
        operator new();
      case 4013:
        operator new();
      case 4014:
      case 4019:
      case 4021:
      case 4025:
      case 4027:
      case 4028:
      case 4029:
      case 4030:
      case 4031:
      case 4032:
      case 4033:
      case 4036:
      case 4037:
      case 4039:
      case 4040:
      case 4041:
      case 4042:
      case 4043:
      case 4044:
      case 4046:
      case 4047:
      case 4052:
      case 4053:
      case 4054:
      case 4055:
      case 4057:
      case 4059:
      case 4060:
      case 4061:
      case 4062:
      case 4064:
      case 4068:
      case 4069:
      case 4070:
      case 4072:
      case 4073:
      case 4074:
      case 4075:
      case 4076:
      case 4077:
      case 4078:
      case 4079:
      case 4080:
      case 4082:
      case 4084:
      case 4092:
      case 4093:
      case 4094:
      case 4095:
      case 4096:
      case 4097:
      case 4098:
      case 4099:
      case 4101:
      case 4102:
      case 4103:
      case 4104:
      case 4105:
      case 4106:
      case 4107:
      case 4108:
      case 4109:
      case 4110:
      case 4111:
      case 4112:
      case 4116:
      case 4118:
      case 4119:
      case 4123:
        break;
      case 4015:
        operator new();
      case 4016:
        operator new();
      case 4017:
        operator new();
      case 4018:
        operator new();
      case 4020:
        operator new();
      case 4022:
        operator new();
      case 4023:
        operator new();
      case 4024:
        operator new();
      case 4026:
        operator new();
      case 4034:
        operator new();
      case 4035:
        operator new();
      case 4038:
        operator new();
      case 4045:
        operator new();
      case 4048:
        operator new();
      case 4049:
        operator new();
      case 4050:
        operator new();
      case 4051:
        operator new();
      case 4056:
        operator new();
      case 4058:
        operator new();
      case 4063:
        operator new();
      case 4065:
        operator new();
      case 4066:
        operator new();
      case 4067:
        operator new();
      case 4071:
        operator new();
      case 4081:
        operator new();
      case 4083:
        operator new();
      case 4085:
        operator new();
      case 4086:
        operator new();
      case 4087:
        operator new();
      case 4088:
        operator new();
      case 4089:
        operator new();
      case 4090:
        operator new();
      case 4091:
        operator new();
      case 4100:
        operator new();
      case 4113:
        operator new();
      case 4114:
        operator new();
      case 4115:
        operator new();
      case 4117:
        operator new();
      case 4120:
        operator new();
      case 4121:
        operator new();
      case 4122:
        operator new();
      case 4124:
        operator new();
      default:
        if (v3 == 6000)
        {
          operator new();
        }

        return;
    }
  }

  operator new();
}

void EshContainer::EshContainer(EshContainer *this, unsigned __int16 a2)
{
  EshRecord::EshRecord(this, a2, 0xFu);
  *v2 = &unk_286EC5C98;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
}

void EshRecord::EshRecord(EshRecord *this, unsigned __int16 a2, unsigned __int8 a3)
{
  EshObject::EshObject(this, a2);
  *v5 = &unk_286EC6840;
  EshHeader::EshHeader((v5 + 12), a3, 0, a2, 0, 0);
}

void EshHeader::EshHeader(EshHeader *this, unsigned __int8 a2, signed __int16 a3, unsigned __int16 a4, int a5, unsigned int a6)
{
  this->var0 = a5;
  this->var1 = a6;
  this->var2 = a3;
  this->var3 = a4;
  this->var4 = a2;
}

EshObjectFactory *EshObjectFactory::verifyTypeAndVersionOfObject(EshObjectFactory *this, EshObject *a2, int a3)
{
  if (this)
  {
    v4 = a2;
    v5 = this;
    this = (*(this->var0 + 4))(this);
    if (this)
    {
      if (EshRecord::getVersion(v5) != a3 || (this = EshRecord::getRecordType(v5), this != v4))
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 7005;
      }
    }
  }

  return this;
}

uint64_t PptBinaryReader::read(PptBinaryReader *this, EshObject *a2)
{
  if ((*(a2->var0 + 11))(a2))
  {
    v4 = *(*this + 248);

    return v4(this, a2);
  }

  else
  {
    v6 = *this;
    if (a2->var1 - 2 > 0x1A)
    {
      v7 = *(v6 + 256);
      v8 = this;
      v9 = a2;
    }

    else
    {
      v7 = *(v6 + 264);
      v8 = this;
      v9 = a2;
    }

    return v7(v8, v9);
  }
}

uint64_t PptBinaryReader::readContainer(PptBinaryReader *this, EshObject *a2)
{
  PptBinaryReader::readRecord(this, a2);
  result = (*(a2->var0 + 5))(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      v6 = (*(a2->var0 + 13))(a2, v5);
      if (PptBinaryReader::isHeaderSkipped(this, v6))
      {
        EshContainer::removeChild(a2, v5);
      }

      else if (v6->var3 - 61440 > 0x122 || EshObject::isEscher(a2) || a2->var1 - 2 < 0x1B)
      {
        v5 = (v5 + 1);
      }

      else
      {
        (*(a2->var0 + 16))(a2, v5, 1);
      }

      result = (*(a2->var0 + 5))(a2);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t PptBinaryReader::readRecord(PptBinaryReader *this, EshObject *a2)
{
  PptBinaryReader::checkStarted(this);
  var0 = a2->var0;
  if ((var0[2])(a2) - 61440 <= 0x122)
  {
    if (*(this + 40) == 2 && !EshBinaryReader::atEnd(*(this + 21)))
    {
      v12 = *(this + 21);
      goto LABEL_28;
    }

    v6 = *(this + 22);
    if (v6)
    {
      if (!EshBinaryReader::atEnd(v6))
      {
        goto LABEL_13;
      }
    }
  }

  if (PptBinaryReader::isBadHeader(this) && *(this + 18) && *(this + 40))
  {
    *(this + 40) = 0;
  }

  v7 = (*(a2->var0 + 2))(a2);
  PptBinaryReader::skipTo(this, v7);
  v8 = EshRecord::setHeader(v5, *(this + 25));
  if (!*(this + 40))
  {
LABEL_13:
    v12 = *(this + 22);
LABEL_28:
    (*(*v12 + 40))(v12, a2);
    goto LABEL_32;
  }

  v9 = *(this + 25);
  if (*(v9 + 10) - 61440 > 0x122)
  {
    (*(*v5 + 112))(v5, *(this + 23), v8);
    v13 = *(this + 24);
    Offset = EshRecord::getOffset(v5);
    RefByOffset = PptPersistDir::getRefByOffset(v13, Offset);
    if (RefByOffset != -1)
    {
      v16 = RefByOffset;
      v17 = (*(a2->var0 + 10))(a2);
      if (v17)
      {
      }

      else
      {
      }

      if (v17)
      {
        v19 = 32;
      }

      else
      {
        v19 = 56;
      }

      if (v20)
      {
        v21 = &v20[v19];
      }

      else
      {
        v21 = 0;
      }

      (*(*v21 + 24))(v21, v16);
    }

    v11 = EshRecord::getRecordType(v5) == 5003 && (*(*v5 + 40))(v5) == 0;
    v10 = this;
  }

  else
  {
    (*(**(this + 19) + 16))(*(this + 19), *(v9 + 4), 0, v8);
    (*(**(this + 21) + 16))(*(this + 21), *(this + 19));
    (*(**(this + 21) + 40))(*(this + 21), a2);
    v10 = this;
    v11 = 1;
  }

  PptBinaryReader::goToNextHeader(v10, v11);
LABEL_32:
  *(this + 58) = EshRecord::getOffset(v5);
  result = EshRecord::getDataLength(v5);
  *(this + 59) = result;
  return result;
}

BOOL PptBinaryReader::skipTo(PptBinaryReader *this, int a2)
{
  while (!PptBinaryReader::isBadHeader(this))
  {
    v4 = *(this + 25);
    if (v4->var3 == a2 && !PptBinaryReader::isHeaderSkipped(this, v4))
    {
      break;
    }

    PptBinaryReader::goToNextHeader(this, 0);
  }

  result = PptBinaryReader::isBadHeader(this);
  if (result)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7000;
  }

  return result;
}

void PptParserVisitor::visit(PptParserVisitor *this, EshContainer *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  (*(**(this + 1) + 40))(*(this + 1));
  EshHeader::operator=(&v4, a2 + 12);
  EshContainer::removeChildren(a2);
  operator new();
}

uint64_t EshContainer::removeChildren(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = *(this + 40);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x25F897000](this, 0x1000C408B6DE1C6);
        v2 = *(v1 + 32);
        v3 = *(v1 + 40);
      }

      if (v4 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      *(v2 + 8 * v4++) = 0;
      v2 = *(v1 + 32);
      v3 = *(v1 + 40);
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(v1 + 40) = v2;
  return this;
}

uint64_t EshContainer::getChildHeader(EshContainer *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (((*(this + 5) - v2) >> 3) <= a2)
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v2 + 8 * a2);
}

uint64_t EshContainer::getChildType(EshContainer *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (((*(this + 5) - v2) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(*(v2 + 8 * a2) + 10);
}

uint64_t EshContainer::getChildVersion(EshContainer *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (((*(this + 5) - v2) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(*(v2 + 8 * a2) + 12);
}

void PptDocumentAtom::PptDocumentAtom(PptDocumentAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED8878;
  *(v2 + 32) = &unk_286ED8920;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  *(v2 + 72) = 1;
  *(v2 + 76) = 0;
  *(v2 + 80) = 0;
  *(v2 + 82) = 1;
}

void PptBinaryReader::readAtom(PptBinaryReader *this, EshObject *a2)
{
  PptBinaryReader::readRecord(this, a2);
  if ((*(a2->var0 + 2))(a2) == 61447 && HIDWORD(a2[3].var0))
  {
    v4 = *(this + 18);
    if (!v4)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1004;
    }

    v5 = (*(*v4 + 40))(v4);
    EshParserVisitor::EshParserVisitor(v18, *(this + 18), *(this + 2));
    EshHeader::makeDefault(v15);
    EshParserVisitor::visit(v18, v15, *&a2[3].var1);
    if (!EshBlip::isBlipRecordType(v16))
    {
      v14 = __cxa_allocate_exception(4uLL);
      *v14 = 7005;
    }

    v6 = (*(**(this + 2) + 16))(*(this + 2), v16, v17);
    {
      v12 = __cxa_allocate_exception(4uLL);
      *v12 = 7005;
    }

    v11 = EshRecord::setHeader(v8, v15);
    (*(*v8 + 112))(v8, v18, v11);
    a2[2].var0 = v8;
    (*(**(this + 18) + 16))(*(this + 18), v5, 0);
    EshParserVisitor::~EshParserVisitor(v18);
  }
}

void sub_25D2A6640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  EshParserVisitor::~EshParserVisitor(va);
  _Unwind_Resume(a1);
}

uint64_t PptDocumentAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptDocumentAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 8 || (*(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1)), *(a2 + 15) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16) || (PptSkipVisitor::skipUnknownBytes(*(this + 3), a2, 8u), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 24) || (*(a2 + 16) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 28) || (*(a2 + 17) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 32) || (*(a2 + 36) = (*(**(this + 1) + 72))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 34) || (*(a2 + 19) = (*(**(this + 1) + 80))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 36) || (*(a2 + 80) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 37) || (*(a2 + 81) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 38) || (PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 1u), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 39))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 82) = (*(**(this + 1) + 64))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSrKinsokuAtom::PptSrKinsokuAtom(PptSrKinsokuAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDC588;
  *(v2 + 32) = &unk_286EDC630;
}

uint64_t PptSrKinsokuAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSrKinsokuAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptFontEntityAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, CsString *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  v9 = 32;
  CsString::reserve(a2 + 2, 32);
  a2[2].var2 = 0;
  bzero(a2[2].var1, 2 * a2[2].var3);
  (*(**(this + 1) + 136))(*(this + 1), &v9, a2[2].var1);
  CsString::setCount(a2 + 2, v9);
  var1 = a2[2].var1;
  if (!var1)
  {
    var1 = &unk_25D7104D8;
  }

  v6 = v9;
  if (!var1[v9 - 1])
  {
    CsString::setCount(a2 + 2, v9 - 1);
    v6 = v9;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 64 - 2 * v6);
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 64 || (BYTE1(a2[3].var0) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 65) || (PptSkipVisitor::skipUnknownBytes(*(this + 3), a2, 2u), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 67))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  LOBYTE(a2[3].var0) = (*(**(this + 1) + 64))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v5 = EshRecord::getDataLength(a2) / 2;
  CsString::reserve(a2 + 2, v5 + 1);
  a2[2].var2 = 0;
  bzero(a2[2].var1, 2 * a2[2].var3);
  (*(**(this + 1) + 136))(*(this + 1), &v5, a2[2].var1);
  CsString::setCount(a2 + 2, v5);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  DataLength = EshRecord::getDataLength(a2);
  v5 = (DataLength / 2);
  CsString::reserve(a2 + 2, v5 + 1);
  a2[2].var2 = 0;
  bzero(a2[2].var1, 2 * a2[2].var3);
  if (DataLength >= 2)
  {
    var1 = a2[2].var1;
    v7 = v5;
    do
    {
      v8 = (*(**(this + 1) + 128))(*(this + 1));
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = 32;
      }

      *var1++ = v9;
      --v7;
    }

    while (v7);
  }

  CsString::setCount(a2 + 2, v5);
  PptParserVisitor::endRead(this, a2);
  *(this + 16) = v5;
  return 1;
}

uint64_t SsrwOOStgStream::readString16(uint64_t this, int *a2, unsigned __int16 *a3)
{
  v6 = *a2;
  if (v6)
  {
    this = readString16(*(this + 192), &v6, a3);
    if (this)
    {
      v4 = this;
      exception = __cxa_allocate_exception(4uLL);
      *exception = v4;
    }

    *a2 = v6;
  }

  return this;
}

uint64_t readString16(uint64_t a1, int *a2, _WORD *a3)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        if (*a2 < 1)
        {
          result = 0;
          v8 = 0;
        }

        else
        {
          v7 = 1;
          do
          {
            v8 = v7;
            result = readUInt16(a1, v6);
            if (!*v6)
            {
              break;
            }

            ++v6;
            v7 = v8 + 1;
          }

          while (v8 < *a2 && result == 0);
        }

        *a2 = v8;
      }
    }
  }

  return result;
}

_WORD *_ChWcsncpy(_WORD *result, const unsigned __int16 *a2, uint64_t a3)
{
  v3 = result;
  if (a3)
  {
    v3 = result;
    do
    {
      if (!*a2)
      {
        break;
      }

      *v3++ = *a2++;
      --a3;
    }

    while (a3);
  }

  *v3 = 0;
  return result;
}

void PptCharProperty::PptCharProperty(PptCharProperty *this)
{
  *&this->var0 &= 0xFFE00000;
  *(this + 2) &= 0x8000u;
  *&this->var17 = 16711680;
  *&this->var13 = 0;
  *&this->var18.var0.var1 = 0;
  *(&this->var18.var1 + 2) = 0;
}

uint64_t PptTextDefaultCharacterStyleAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextDefaultCharacterStyleAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  PptParserVisitor::parseCharProperty(this, (a2 + 48));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptParaProperty::PptParaProperty(PptParaProperty *this)
{
  *this = 0;
  *(this + 2) &= 0xE0u;
  *(this + 3) &= 0xC000u;
  *(this + 6) = 0xFF000000000000;
  *(this + 5) = 0;
  *(this + 22) = 0;
  *(this + 14) = 0;
  *(this + 28) = 0;
}

uint64_t PptTextDefaultParagraphStyleAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextDefaultParagraphStyleAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 2u);
  PptParserVisitor::parseParaProperty(this, (a2 + 48));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSpecialInfo::PptSpecialInfo(PptSpecialInfo *this)
{
  v1 = *(&this->var0 + 1) & 0xF8;
  *&this->var0 &= 0xF8u;
  *(&this->var0 + 1) = v1;
  this->var1 = 0;
  this->var2 = 0;
}

uint64_t PptTextDefaultSpecialInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSpecialInfo *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*&a2[1].var0 + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EndOffset = EshRecord::getEndOffset(a2);
  if ((*(**(this + 1) + 40))(*(this + 1)) + 4 > EndOffset)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  v5 = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::parseSpecialInfo(this, a2 + 3, v5, EndOffset);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextMasterStyleAtom::PptTextMasterStyleAtom(PptTextMasterStyleAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDD518;
  *(v2 + 32) = &unk_286EDD5C0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextMasterStyleAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextMasterStyleAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  v4 = (*(**(this + 1) + 72))(*(this + 1));
  Instance = EshRecord::getInstance(a2);
  PptTextHeaderAtom::isDerivedType(Instance);
  if (v4)
  {
    PptTextMasterStyleAtom::addLevel(a2);
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void sub_25D2A79AC(_Unwind_Exception *a1)
{
  PptParaProperty::~PptParaProperty(v1);
  MEMORY[0x25F897000](v1, v2);
  _Unwind_Resume(a1);
}

PptColor *PptColor::setColor(PptColor *this, unsigned int a2)
{
  this->var1 = HIBYTE(a2);
  this->var0.var3 = BYTE2(a2);
  this->var0.var2 = BYTE1(a2);
  this->var0.var1 = a2;
  return this;
}

uint64_t EshContainer::setChildType(uint64_t this, unsigned int a2, __int16 a3)
{
  v3 = *(this + 32);
  if (((*(this + 40) - v3) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  *(*(v3 + 8 * a2) + 10) = a3;
  return this;
}

void EshBinaryReader::start(EshBinaryReader *this, SsrwOOStream *a2)
{
  (*(*this + 24))(this);
  if (*(this + 1))
  {
    exception = __cxa_allocate_exception(4uLL);
    v5 = 7011;
  }

  else if (a2)
  {
    if ((*(a2->var0 + 22))(a2) > 7)
    {
      *(this + 1) = a2;
      operator new();
    }

    exception = __cxa_allocate_exception(4uLL);
    v5 = 7009;
  }

  else
  {
    exception = __cxa_allocate_exception(4uLL);
    v5 = 7001;
  }

  *exception = v5;
}

void EshBinaryReader::finish(EshBinaryReader *this)
{
  *(this + 1) = 0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  EshHeader::makeDefault(&v3);
  EshHeader::operator=(this + 76, &v3);
  *(this + 4) = 0;
  if (*(this + 14))
  {
    *(this + 14) = 0;
  }
}

uint64_t EshBinaryReader::getNextHeader(EshBinaryReader *this)
{
  v2 = *(this + 18);
  if (*(this + 20) != v2)
  {
    EshParserVisitor::visit(*(this + 2), (this + 76), v2);
  }

  return this + 76;
}

uint64_t EshParserVisitor::visit(EshParserVisitor *this, EshHeader *a2, uint64_t a3)
{
  if (a3 == -1)
  {
    v5 = (*(**(this + 3) + 40))(*(this + 3));
  }

  else
  {
    v5 = a3;
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_8;
    }

    (*(**(this + 3) + 16))(*(this + 3), a3, 0);
  }

  v6 = (*(**(this + 3) + 80))(*(this + 3));
  a2->var4 = v6 & 0xF;
  a2->var2 = v6 >> 4;
  v7 = (*(**(this + 3) + 80))(*(this + 3));
  if (v7 == 1 || (a2->var3 = v7, v8 = (*(**(this + 3) + 96))(*(this + 3)), v8 >= 0x10000001))
  {
LABEL_8:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  a2->var0 = v8;
  a2->var1 = v5;
  return 1;
}

void EshBinaryReader::read(EshBinaryReader *this, EshRoot *a2)
{
  EshBinaryReader::checkStarted(this);
  if (*(this + 18) == *(this + 8))
  {
    operator new();
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 7010;
}

uint64_t EshBinaryReader::checkStarted(uint64_t this)
{
  if (!*(this + 8) || !*(this + 16))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1003;
  }

  return this;
}

uint64_t EshBinaryReader::getObjectHeader(EshParserVisitor **this, uint64_t a2, EshHeader *a3)
{
  result = EshParserVisitor::visit(this[2], a3, a2);
  if (*(this + 92))
  {
    return result;
  }

  if (!*(this + 14))
  {
    var3 = a3->var3;
LABEL_13:
    v12 = 2;
    goto LABEL_14;
  }

  result = ChStack<EshHeader>::top((this + 5));
  v6 = *(result + 4) + *result + 8;
  v7 = a3->var1 + a3->var0 + 8;
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (!v8)
  {
    goto LABEL_31;
  }

  if (v9 && v9 <= 7)
  {
    goto LABEL_31;
  }

  var3 = a3->var3;
  if (!*(this + 14))
  {
    goto LABEL_13;
  }

  result = ChStack<EshHeader>::top((this + 5));
  v12 = *(result + 10);
LABEL_14:
  if (var3 == 61444)
  {
    if (v12 == 2)
    {
      goto LABEL_28;
    }

    if (v12 != 61443)
    {
      if (v12 == 61442)
      {
        operator new();
      }

LABEL_31:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 7013;
    }

    var1 = a3->var1;
    result = ChStack<EshHeader>::top((this + 5));
    if (var1 != *(result + 4) + 8)
    {
LABEL_28:
      v14 = 7;
    }

    else if (*(this + 14) <= 2u)
    {
      v14 = 5;
    }

    else
    {
      v14 = 6;
    }
  }

  else
  {
    if (var3 != 61451)
    {
      return result;
    }

    if (v12 != 61440)
    {
      goto LABEL_31;
    }

    v13 = a3->var1 + a3->var0 + 8;
    result = ChStack<EshHeader>::top((this + 5));
    if (v13 < *(result + 4) + *result + 8)
    {
      operator new();
    }

    v14 = 4;
  }

  a3->var3 = v14;
  a3->var4 = 0;
  a3->var2 = 0;
  return result;
}

void sub_25D2A8380(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v2, 0x1081C401B6A0F4FLL);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

uint64_t EshObjectFactory::createRecord(EshObjectFactory *this, int a2, int a3)
{
  if (a3 == 15)
  {
    operator new();
  }

  return EshObjectFactory::createAtom(this, a2, a3);
}

void EshBinaryReader::read(EshBinaryReader *this, EshObject *a2)
{
  EshBinaryReader::checkStarted(this);
  (*(a2->var0 + 2))(a2);
  operator new();
}

void EshBinaryReader::findObjectHeader(EshBinaryReader *this, EshHeader *a2, int a3)
{
  while (*(this + 18) != *(this + 9))
  {
    (*(*this + 88))(this);
    if (a2->var3 == a3)
    {
      break;
    }

    EshBinaryReader::movePastObject(this, a2);
  }
}

void EshBinaryReader::readObject(EshBinaryReader *this, EshContainer *a2)
{
  v3 = this + 40;
  v4 = (*(*this + 96))(this);
  EshRecord::setHeader(a2, v4);
  EshContainer::removeChildren(a2);
  ChStack<EshHeader>::push(v3, a2 + 12);
  operator new();
}

void ChStack<EshHeader>::push(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (v3 + 1 > v4)
  {
    v5 = *(a1 + 24) + v4;
    *(a1 + 20) = v5;
    operator new[](16 * v5 + 16);
  }

  EshHeader::operator=(*a1 + 16 * v3, a2);
  ++*(a1 + 16);
}

uint64_t ChStack<EshHeader>::top(uint64_t a1)
{
  if (!*a1 || (v1 = *(a1 + 16)) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1000;
  }

  return *a1 + 16 * (v1 - 1);
}

void EshBinaryReader::movePastObject(EshBinaryReader *this, const EshHeader *a2)
{
  var1 = a2->var1;
  if (var1 != *(this + 18))
  {
    goto LABEL_22;
  }

  var3 = a2->var3;
  if (a2->var4 == 15)
  {
    if (var3 != 1064 && var3 != 12052 && var3 != 14003)
    {
      goto LABEL_13;
    }

LABEL_11:
    *(this + 18) = var1 + a2->var0 + 8;
    (*(**(this + 1) + 16))(*(this + 1));
    v8 = *(this + 18);
    goto LABEL_14;
  }

  if (var3 != 5003)
  {
    goto LABEL_11;
  }

LABEL_13:
  ChStack<EshHeader>::push(this + 40, a2);
  v8 = a2->var1 + 8;
  *(this + 18) = v8;
LABEL_14:
  if (v8 > *(this + 9))
  {
LABEL_22:
    exception = __cxa_allocate_exception(4uLL);
    v13 = 1004;
    goto LABEL_21;
  }

  if (*(this + 14))
  {
    while (1)
    {
      v9 = ChStack<EshHeader>::top(this + 40);
      if (v8 < v9[1] + *v9 + 8)
      {
        return;
      }

      v10 = ChStack<EshHeader>::top(this + 40);
      v8 = v10[1] + *v10 + 8;
      if (v8 != *(this + 18))
      {
        break;
      }

      v11 = *(this + 14) - 1;
      *(this + 14) = v11;
      if (!v11)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(4uLL);
    v13 = 7013;
LABEL_21:
    *exception = v13;
  }
}

uint64_t EshObjectFactory::createAtom(EshObjectFactory *this, int a2, int a3)
{
  if (a3 == 15)
  {
    goto LABEL_49;
  }

  if (a2 <= 61721)
  {
    switch(a2)
    {
      case 61446:
        operator new();
      case 61447:
        operator new();
      case 61448:
        operator new();
      case 61449:
      case 61450:
      case 61452:
      case 61453:
      case 61455:
      case 61456:
      case 61457:
      case 61461:
      case 61462:
      case 61464:
      case 61465:
      case 61472:
      case 61473:
      case 61474:
      case 61475:
      case 61476:
      case 61477:
      case 61478:
      case 61479:
      case 61480:
        goto LABEL_18;
      case 61451:
        goto LABEL_11;
      case 61454:
        return 0;
      case 61458:
        operator new();
      case 61459:
        operator new();
      case 61460:
        operator new();
      case 61463:
        operator new();
      case 61466:
        operator new();
      case 61467:
        operator new();
      case 61468:
        operator new();
      case 61469:
        operator new();
      case 61470:
        operator new();
      case 61471:
        operator new();
      case 61481:
        operator new();
      case 61482:
        operator new();
      default:
        if (a2 == 61721)
        {
          operator new();
        }

        goto LABEL_18;
    }
  }

  if (a2 <= 61727)
  {
    switch(a2)
    {
      case 61722:
        operator new();
      case 61725:
        operator new();
      case 61726:
        operator new();
    }

    goto LABEL_18;
  }

  if ((a2 - 61729) < 2)
  {
LABEL_11:
    operator new();
  }

  if (a2 != 61728)
  {
LABEL_18:
    if (this->var1)
    {
      if (a2 <= 61454)
      {
        if (a2 == 61449)
        {
          operator new();
        }

        if (a2 == 61450)
        {
          operator new();
        }

        v3 = 61452;
      }

      else if (a2 > 61719)
      {
        if (a2 == 61720)
        {
          operator new();
        }

        v3 = 61727;
      }

      else
      {
        if (a2 == 61455)
        {
          operator new();
        }

        v3 = 61462;
      }

      if (a2 != v3)
      {
        operator new();
      }

      return 0;
    }

LABEL_49:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7000;
  }

  return 0;
}

void EshDgg::EshDgg(EshDgg *this)
{
  EshAtom::EshAtom(this, 0xF006u, 0);
  *v1 = &unk_286EC5F78;
  v1[7] = 0;
  v1[8] = 0;
  v1[6] = 0;
  *(v1 + 36) = 0;
  *(v1 + 28) = 0;
}

uint64_t EshBinaryReader::readObject(EshBinaryReader *this, EshAtom *a2)
{
  v4 = (*(*this + 96))(this);
  v5 = *(*this + 104);

  return v5(this, a2, v4);
}

uint64_t EshBinaryReader::readRecordData(EshParserVisitor **this, EshRecord *a2, const EshHeader *a3)
{
  if (EshRecord::getRecordType(a2) != a3->var3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  EshRecord::setHeader(a2, a3);
  EshParserVisitor::beginRead(this[2], a2);
  (*(*a2 + 112))(a2, this[2]);
  v6 = this[2];

  return EshParserVisitor::endRead(v6, a2);
}

void sub_25D2A9498(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25D2A9450);
}

uint64_t EshParserVisitor::beginRead(EshParserVisitor *this, EshRecord *a2)
{
  v2 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  v4 = *(*v2 + 16);

  return v4(v2, (Offset + 8), 0);
}

uint64_t EshDgg::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshParserVisitor::visit(EshParserVisitor *this, unint64_t **a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  *(a2 + 7) = (*(**(this + 3) + 104))(*(this + 3));
  *(a2 + 8) = (*(**(this + 3) + 104))(*(this + 3));
  *(a2 + 9) = (*(**(this + 3) + 104))(*(this + 3));
  *(a2 + 10) = (*(**(this + 3) + 104))(*(this + 3));
  DataLength = EshRecord::getDataLength(a2);
  v7 = DataLength - 9;
  if ((DataLength - 9) >= 0xF)
  {
    if (DataLength >= 16)
    {
      v7 = DataLength - 16;
    }

    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = (*(**(this + 3) + 104))(*(this + 3));
      v11 = v10 | ((*(**(this + 3) + 104))(*(this + 3)) << 32);
      v15 = v11;
      v12 = a2[7];
      if (v12 >= a2[8])
      {
        v13 = std::vector<EshDgg::EshIdCluster,ChAllocator<EshDgg::EshIdCluster>>::__emplace_back_slow_path<EshDgg::EshIdCluster const&>(a2 + 6, &v15);
      }

      else
      {
        *v12 = v11;
        v13 = (v12 + 1);
      }

      a2[7] = v13;
      --v9;
    }

    while (v9);
  }

  EshParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshParserVisitor::endRead(EshParserVisitor *this, EshRecord *a2)
{
  result = (*(**(this + 3) + 40))(*(this + 3));
  v5 = *(a2 + 4) + *(a2 + 3) + 8;
  if (v5 < 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  if (result != v5)
  {
    v6 = *(**(this + 3) + 16);

    return v6();
  }

  return result;
}

void EshBSE::EshBSE(EshBSE *this)
{
  EshAtom::EshAtom(this, 0xF007u, 2u);
  *v1 = &unk_286EC5920;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0;
  *(v1 + 32) = 0;
  *(v1 + 54) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 72) = 0x100000001;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
}

uint64_t EshBSE::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshParserVisitor::visit(EshParserVisitor *this, EshBSE *a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  a2->var11 = (*(**(this + 3) + 64))(*(this + 3));
  a2->var12 = (*(**(this + 3) + 64))(*(this + 3));
  EshParserVisitor::parseBlipUid(this, &a2->var15);
  a2->var8 = (*(**(this + 3) + 80))(*(this + 3));
  a2->var5 = (*(**(this + 3) + 104))(*(this + 3));
  v6 = (*(**(this + 3) + 104))(*(this + 3));
  a2->var6 = v6;
  a2->var7 = (*(**(this + 3) + 104))(*(this + 3));
  a2->var9 = (*(**(this + 3) + 64))(*(this + 3));
  v7 = (*(**(this + 3) + 64))(*(this + 3));
  a2->var10 = v7;
  a2->var13 = (*(**(this + 3) + 64))(*(this + 3));
  a2->var14 = (*(**(this + 3) + 64))(*(this + 3));
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = a2->var2.var1 + a2->var2.var0 + 8;
  v9 = (*(**(this + 3) + 40))(*(this + 3));
  if (v8 > v9)
  {
    if (v6)
    {
      if (v8 - v9 > 7)
      {
        operator new();
      }
    }

LABEL_7:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  EshParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshParserVisitor::parseBlipUid(EshParserVisitor *this, UID *a2)
{
  v4 = 16;
  result = (*(**(this + 3) + 56))(*(this + 3), a2, &v4);
  if (v4 != 16)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  return result;
}

uint64_t EshBlipT<EshBitmapBlipInfo>::EshBlipT(uint64_t a1, unsigned __int16 a2)
{
  EshBlip::EshBlip(a1, a2);
  *v3 = &unk_286EC57E8;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = v3 + 20;
  OcBinaryData::OcBinaryData((v3 + 72));
  *(a1 + 128) = 0;
  *(a1 + 120) = -1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = a1 + 128;
  OcBinaryData::OcBinaryData((a1 + 160));
  *(a1 + 208) = -1;
  return a1;
}

void sub_25D2A9F54(_Unwind_Exception *a1)
{
  OcBinaryData::~OcBinaryData((v1 + 72));
  EshBlip::~EshBlip(v1);
  _Unwind_Resume(a1);
}

void EshBlip::EshBlip(EshBlip *this, unsigned __int16 a2)
{
  EshAtom::EshAtom(this, a2, 0);
  *v2 = &unk_286EC5878;
  *(v2 + 36) = 0;
  *(v2 + 28) = 0;
}

void OcBinaryData::OcBinaryData(OcBinaryData *this)
{
  this->var0 = &unk_286EC8710;
  *&this->var1 = 0;
  *&this->var3 = 0;
  this->var5 = 0;
  this->var6 = 1;
  this->var7 = 0;
}

uint64_t EshBitmapBlip::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshParserVisitor::visit(EshParserVisitor *this, EshBitmapBlip *a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  EshParserVisitor::parseBlipUid(this, (a2 + 28));
  if (**(a2 + 6))
  {
    EshParserVisitor::parseBlipUid(this, (a2 + 56));
  }

  *(a2 + 120) = (*(**(this + 3) + 64))(*(this + 3));
  v6 = *(a2 + 4) + *(a2 + 3);
  v7 = (*(**(this + 3) + 40))(*(this + 3));
  EshParserVisitor::delayReadData(this, (a2 + 72), v6 - v7 + 8);
  EshParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t EshParserVisitor::delayReadData(EshParserVisitor *this, OcBinaryData *a2, unsigned int a3)
{
  v6 = *(this + 3);
  v7 = (*(v6->var0 + 4))(v6);
  v8 = (*(**(this + 3) + 40))(*(this + 3));
  OcBinaryData::setDataInfo(a2, v6, v7, v8, a3);
  v9 = *(**(this + 3) + 16);

  return v9();
}

OcBinaryData *OcBinaryData::setDataInfo(OcBinaryData *this, SsrwOOStream *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v9 = this;
  if (this->var6)
  {
    this = this->var5;
    if (this)
    {
      this = MEMORY[0x25F896FE0](this, 0x1000C8077774924);
    }
  }

  v9->var5 = 0;
  v9->var7 = a2;
  v9->var1 = a4;
  v9->var2 = a3;
  v9->var3 = a5;
  v9->var4 = 0;
  return this;
}

uint64_t EshObjectFactory::createSemanticObject(EshObjectFactory *this, int a2)
{
  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      operator new();
    }

    if (a2 == 5)
    {
      operator new();
    }
  }

  else
  {
    switch(a2)
    {
      case 6:
        operator new();
      case 7:
        operator new();
      case 12:
        operator new();
    }
  }

  return 0;
}

void EshShapeDefaults::EshShapeDefaults(EshShapeDefaults *this)
{
  EshShapeBase::EshShapeBase(this, 4u);
  v2->var0 = &unk_286EC7CE0;
  v3 = v2 + 1;
  EshObject::EshObject(v2 + 26, 0xDu);
  *(this + 52) = &unk_286EC7E20;
  *(this + 54) = v3;
  *(this + 55) = &unk_286EC7F48;
  *(this + 56) = &unk_286EC7FB0;
  EshObject::EshObject((this + 456), 0x13u);
  *(this + 59) = v3;
  *(this + 57) = &unk_286EC7DA8;
}

void EshShapeBase::EshShapeBase(EshShapeBase *this, unsigned __int16 a2)
{
  EshContentBase::EshContentBase(this, a2);
  v3->var0 = &unk_286EC7C18;
  v4 = v3 + 1;
  EshObject::EshObject(v3 + 17, 0xFu);
  *(this + 36) = v4;
  *(this + 34) = &unk_286EC7660;
  EshObject::EshObject((this + 296), 0x14u);
  *(this + 39) = v4;
  *(this + 37) = &unk_286EC6D70;
  EshObject::EshObject(this + 20, 0x10u);
  *(this + 42) = v4;
  *(this + 40) = &unk_286EC76F0;
  EshObject::EshObject((this + 344), 0x15u);
  *(this + 45) = v4;
  *(this + 43) = &unk_286EC7780;
  EshObject::EshObject(this + 23, 0x18u);
  *(this + 48) = v4;
  *(this + 46) = &unk_286EC7810;
  EshObject::EshObject((this + 392), 0x16u);
  *(this + 51) = v4;
  *(this + 49) = &unk_286EC78A0;
}

void EshContentBase::EshContentBase(EshContentBase *this, unsigned __int16 a2)
{
  EshObject::EshObject(this, a2);
  *v2 = &unk_286EC6F70;
  EshContentData::EshContentData((v2 + 16));
}

void EshContentData::EshContentData(EshContentData *this)
{
  EshOpt::EshOpt(this, 0xF00Bu);
  EshOpt::EshOpt((v2 + 64), 0xF121u);
  EshOpt::EshOpt((this + 128), 0xF122u);
  EshSp::EshSp((this + 192));
  *(this + 30) = 0;
  *(this + 31) = 0;
}

void sub_25D2AA7A0(_Unwind_Exception *a1)
{
  EshOpt::~EshOpt((v1 + 128));
  EshOpt::~EshOpt((v1 + 64));
  EshOpt::~EshOpt(v1);
  _Unwind_Resume(a1);
}

void EshOpt::EshOpt(EshOpt *this, unsigned __int16 a2)
{
  EshAtom::EshAtom(this, a2, 3u);
  *v2 = &unk_286EC6330;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = v2 + 40;
  *(v2 + 56) = 255;
}

void EshSp::EshSp(EshSp *this)
{
  EshAtom::EshAtom(this, 0xF00Au, 2u);
  *v1 = &unk_286EC6AC0;
  *(v1 + 36) = 0;
  *(v1 + 28) = 0;
}

void PptBinaryReader::readEshObject(PptBinaryReader *this, EshObject *a2)
{
  if (*(this + 40) == 2)
  {
    (*(**(this + 21) + 40))(*(this + 21), a2);
    if ((*(a2->var0 + 2))(a2) == 7 || (*(a2->var0 + 2))(a2) == 6 || (*(a2->var0 + 2))(a2) == 12)
    {
      if ((*(a2->var0 + 2))(a2) == 7)
      {
        v5 = 576;
      }

      else
      {
        v8 = (*(a2->var0 + 2))(a2);
        if (v8 == 6)
        {
        }

        else
        {
        }

        if (v8 == 6)
        {
          v5 = 368;
        }

        else
        {
          v5 = 328;
        }
      }

      v10 = &v9[v5];
      if (!v9)
      {
        v10 = 0;
      }

      v12 = v10 + 8;
      v11 = *(v10 + 1);
      if (((*(v12 + 1) - v11) & 0x7FFFFFFF8) != 0)
      {
        v13 = *v11;
        EshHeader::operator=(*(this + 25), *v11);
        *(*(this + 21) + 72) = *(v13 + 4);
      }
    }
  }

  else
  {
    v6 = *(this + 22);
    if (!v6)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1000;
    }

    v7 = *(*v6 + 40);

    v7();
  }
}

_DWORD *EshBinaryReader::readObject(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = a1 + 40;
  v6 = (*(*a1 + 96))(a1);
  v7.n128_f64[0] = EshHeader::operator=(&v15, v6);
  v8 = a2 + 144;
  v9 = a2 + 80;
  while (1)
  {
    v10 = v4;
    if (v15.var3 != 61451)
    {
      if (v15.var3 == 61730)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
        if (v15.var3 != 61729)
        {
          break;
        }
      }
    }

    (*(*a1 + 104))(a1, v10, &v15, v7);
    v11 = v15.var1 + v15.var0 + 8;
    v12 = ChStack<EshHeader>::top(v5);
    if (v11 >= v12[1] + *v12 + 8)
    {
      break;
    }

    EshParserVisitor::visit(*(a1 + 16), &v15, v15.var1 + v15.var0 + 8);
  }

  v13 = *(a1 + 36);
  result = ChStack<EshHeader>::top(v5);
  if (v13 < result[1] + *result + 8)
  {
    result = ChStack<EshHeader>::top(v5);
    *(a1 + 36) = result[1] + *result + 8;
  }

  return result;
}

uint64_t EshOpt::accept(int a1, void *lpsrc)
{

  return v2();
}

void EshParserVisitor::visit(EshParserVisitor *this, EshOpt *a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  if (EshRecord::getVersion(a2) >= 3)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = EshRecord::getInstance(a2) & 0xFFF;
  if (EshRecord::getDataLength(a2) / v6 <= v7)
  {
    EshRecord::getDataLength(a2);
  }

  (*(**(this + 3) + 40))(*(this + 3));
  operator new();
}

void sub_25D2AB758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(*v13 + 8))(v13);
  MEMORY[0x25F897000](v12, 0x1000C408B6DE1C6);
  (*(*a12 + 8))(a12);
  _Unwind_Resume(a1);
}

uint64_t EshOpt::getPropertyType(int a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 + 63;
  }

  v2 = a1 - (v1 & 0xFFFFFFC0);
  if (v2 > 47)
  {
    return 1;
  }

  v4 = v1 >> 6;
  if (v4 > 25)
  {
    return 0;
  }

  v5 = &EshOpt::getPropertyType(EshOpt::PID)::blocks + 2 * v4;
  if (v2 >= *(v5 + 4))
  {
    return 0;
  }

  else
  {
    return *(*v5 + v2);
  }
}

EshColor *EshParserVisitor::decodeColor(EshColor *this, EshColor *a2)
{
  v2 = a2;
  v4 = a2 >> 24;
  EshColor::none(this + 6, a2);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 0:
        goto LABEL_9;
      case 1:
        EshColor::paletteIndex(v2, &this[6], v6);
        return this + 6;
      case 2:
        goto LABEL_9;
    }
  }

  else
  {
    if (v4 <= 15)
    {
      if (v4 != 4)
      {
        if (v4 == 8)
        {
          EshColor::schemeIndex(v2, &this[6], v6);
        }

        return this + 6;
      }

LABEL_9:
      EshColor::rgb(v2, SBYTE1(v2), SBYTE2(v2), &this[6]);
      return this + 6;
    }

    if (v4 == 16)
    {
      if (v2 <= 0x18u)
      {
        EshColor::systemIndex(v2, &this[6], BYTE1(v2) & 0xF, SBYTE2(v2), (v2 >> 13) & 1, (v2 >> 14) & 1, (v2 >> 15) & 1);
      }

      if ((v2 & 0xF8) == 0xF0)
      {
        EshColor::property(v2, &this[6], BYTE1(v2) & 0xF, SBYTE2(v2), (v2 >> 13) & 1, (v2 >> 14) & 1, (v2 >> 15) & 1);
      }
    }

    else if (v4 == 32)
    {
      EshColor::noModification(this + 6, v5);
    }
  }

  return this + 6;
}

EshColor *EshColor::schemeIndex(EshColor *this, uint64_t a2, EshColor *a3)
{
  *a2 = 8;
  *(a2 + 4) = this;
  return this;
}

__n128 EshOpt::setProperty(uint64_t a1, unsigned int a2, uint64_t a3, __n128 *a4)
{
  v7 = a2;
  v8 = &v7;
  v5 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v7);
  result = *a4;
  *(v5 + 5) = *a4;
  return result;
}

void EshSplitMenuColors::EshSplitMenuColors(EshSplitMenuColors *this)
{
  EshAtom::EshAtom(this, 0xF11Eu, 0);
  *v1 = &unk_286EC6C10;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
}

uint64_t EshSplitMenuColors::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshParserVisitor::visit(EshParserVisitor *this, EshSplitMenuColors *a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  Instance = EshRecord::getInstance(a2);
  if (EshRecord::getDataLength(a2) != 4 * Instance)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 7005;
  }

  if (Instance)
  {
    v7 = 0;
    do
    {
      v8 = (*(**(this + 3) + 104))(*(this + 3));
      v9 = EshParserVisitor::decodeColor(this, v8);
      std::vector<EshColor,ChAllocator<EshColor>>::push_back[abi:ne200100](a2 + 32, v9);
      ++v7;
    }

    while (v7 < Instance);
  }

  EshParserVisitor::endRead(this, a2);
  return 1;
}

void EshColor::EshColor(EshColor *this, const EshColor *a2)
{
  var0 = a2->var0.var0;
  this->var0.var0 = a2->var0.var0;
  if (var0 > 3)
  {
    if ((var0 - 33) < 2)
    {
      this->var0.var1 = a2->var0.var1;
      return;
    }

    if (var0 != 8)
    {
      if (var0 == 4)
      {
        goto LABEL_5;
      }

      return;
    }

LABEL_10:
    var1 = a2->var0.var1.var1;
    goto LABEL_11;
  }

  switch(var0)
  {
    case 0:
LABEL_5:
      var1 = a2->var0.var1.var1;
      this->var0.var1.var0.var2 = a2->var0.var1.var0.var2;
LABEL_11:
      this->var0.var1.var1 = var1;
      return;
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_5;
  }
}

uint64_t EshColor::property(uint64_t result, uint64_t a2, char a3, char a4, int a5, int a6, int a7)
{
  *a2 = 33;
  *(a2 + 4) = result;
  v7 = *(a2 + 6) & 0x80;
  *(a2 + 5) = a4;
  if (a5)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  if (a6)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  if (a7)
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 6) = v8 & 0xF0 | a3 & 0xF | v9 | v10 | v7;
  return result;
}

void EshRoot::~EshRoot(EshRoot *this)
{
  EshRoot::~EshRoot(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC7478;
  v4 = this + 16;
  v2 = *(this + 2);
  v3 = *(v4 + 1);
  if (((v3 - v2) & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x25F897000](v2[v5], 0x1000C408B6DE1C6);
        v2 = *(this + 2);
        v3 = *(this + 3);
      }

      if (v5 >= ((v3 - v2) >> 3))
      {
        std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
      }

      v2[v5++] = 0;
      v2 = *(this + 2);
      v3 = *(this + 3);
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  *(this + 3) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

void PptSlidePersistAtom::PptSlidePersistAtom(PptSlidePersistAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDC198;
  *(v2 + 32) = &unk_286EDC240;
  *(v2 + 60) = 0;
}

uint64_t PptSlidePersistAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSlidePersistAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 60) = ((*(**(this + 1) + 104))(*(this + 1)) & 2) != 0, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8) || (*(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (*(a2 + 14) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 4u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptViewSettingsAtom::PptViewSettingsAtom(PptViewSettingsAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDDAE8;
  *(v2 + 32) = &unk_286EDDB90;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
}

uint64_t PptViewSettingsAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptViewSettingsAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 15) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 16) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSlideViewInfoAtom::PptSlideViewInfoAtom(PptSlideViewInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *v2 = &unk_286EDC290;
  v2[4] = &unk_286EDC338;
  v2[5] = 0xFFFFFFFFLL;
}

uint64_t PptSlideViewInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSlideViewInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 45) = (*(**(this + 1) + 64))(*(this + 1)) != 0;
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 1 || (*(a2 + 46) = (*(**(this + 1) + 64))(*(this + 1)) != 0, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 2))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 47) = (*(**(this + 1) + 64))(*(this + 1)) != 0;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptViewInfoAtom::PptViewInfoAtom(PptViewInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v3 + 40) = -1;
  *(v3 + 44) = 0;
  *v3 = &unk_286EDD9F0;
  *(v3 + 32) = &unk_286EDDA98;
  PptGScalingAtom::PptGScalingAtom((v3 + 48));
  PptGScalingAtom::PptGScalingAtom((this + 208));
  PptGPointAtom::PptGPointAtom((this + 368));
  PptGPointAtom::PptGPointAtom((this + 424));
  *(this + 240) = 256;
}

void PptGScalingAtom::PptGScalingAtom(PptGScalingAtom *this)
{
  EshAtom::EshAtom(this, 0x2711u, 0);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDAB00;
  *(v2 + 32) = &unk_286EDABA8;
  PptGRatioAtom::PptGRatioAtom((v2 + 48));
  PptGRatioAtom::PptGRatioAtom((this + 104));
}

void PptGRatioAtom::PptGRatioAtom(PptGRatioAtom *this)
{
  EshAtom::EshAtom(this, 0xBD7u, 0);
  *(v1 + 40) = -1;
  *(v1 + 44) = 0;
  *v1 = &unk_286EDA818;
  *(v1 + 32) = &unk_286EDA8C0;
}

void PptGPointAtom::PptGPointAtom(PptGPointAtom *this)
{
  EshAtom::EshAtom(this, 0xBDAu, 0);
  *(v1 + 40) = -1;
  *(v1 + 44) = 0;
  *v1 = &unk_286EDA628;
  *(v1 + 32) = &unk_286EDA6D0;
  *(v1 + 48) = 0;
}

uint64_t PptViewInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptViewInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 36) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 37) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 50) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 51) = (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 16 || (*(a2 + 76) = (*(**(this + 1) + 104))(*(this + 1)), *(a2 + 77) = (*(**(this + 1) + 104))(*(this + 1)), *(a2 + 90) = (*(**(this + 1) + 104))(*(this + 1)), *(a2 + 91) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 32) || (*(a2 + 104) = (*(**(this + 1) + 96))(*(this + 1)), *(a2 + 105) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 40) || (*(a2 + 118) = (*(**(this + 1) + 96))(*(this + 1)), *(a2 + 119) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 48) || (*(a2 + 480) = (*(**(this + 1) + 64))(*(this + 1)) != 0, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 49) || (*(a2 + 481) = (*(**(this + 1) + 64))(*(this + 1)) != 0, (*(**(this + 1) + 40))(*(this + 1)) != v4 + 50))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipKnownBytes(*(this + 3), a2, 2u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptGuideAtom::PptGuideAtom(PptGuideAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDABF8;
  *(v2 + 32) = &unk_286EDACA0;
  *(v2 + 48) = 0;
}

uint64_t PptGuideAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptGuideAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(a2 + 13) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptCString::accept(int a1, void *lpsrc)
{

  return v2();
}

void PptGridSpacing10Atom::PptGridSpacing10Atom(PptGridSpacing10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0380;
  *(v2 + 32) = &unk_286EE0428;
}

uint64_t PptGridSpacing10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptGridSpacing10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptHeadersFootersAtom::PptHeadersFootersAtom(PptHeadersFootersAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDADE8;
  *(v2 + 32) = &unk_286EDAE90;
  *(v2 + 52) = 1;
  *(v2 + 53) = 0;
  *(v2 + 57) = 1;
}

uint64_t PptHeadersFootersAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptHeadersFootersAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2.var1 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  a2->var6 = (*(**(this + 1) + 80))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  v5 = (*(**(this + 1) + 80))(*(this + 1));
  a2->var7 = v5 & 1;
  v6 = *&vshl_u16((*&vdup_n_s16(v5) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *&a2->var8 = vuzp1_s8(v6, v6).u32[0];
  a2->var12 = (v5 & 0x20) != 0;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextHeaderAtom::PptTextHeaderAtom(PptTextHeaderAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDCE48;
  *(v2 + 32) = &unk_286EDCEF0;
  *(v2 + 48) = -1;
}

uint64_t PptTextHeaderAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextHeaderAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2.var1 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 104))(*(this + 1));
  if (v4 >= 9)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  a2->var6 = v4;
  PptParserVisitor::endRead(this, a2);
  *(this + 16) = 0;
  return 1;
}

void PptTextBytesAtom::PptTextBytesAtom(PptTextBytesAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDCC50;
  *(v2 + 32) = &unk_286EDCD00;
  *(v2 + 48) = 0;
}

uint64_t PptTextBytesAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBytesAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  DataLength = EshRecord::getDataLength(a2);
  if (DataLength)
  {
    operator new[]((DataLength + 1));
  }

  PptParserVisitor::endRead(this, a2);
  *(this + 16) = EshRecord::getDataLength(a2);
  return 1;
}

uint64_t SsrwOOStgStream::readString8(uint64_t this, unsigned int *a2, char *a3)
{
  v4 = *a2;
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v6 = this;
    v7 = 0;
    while (1)
    {
      this = (*(*v6 + 64))(v6);
      a3[v7] = this;
      if (!this)
      {
        break;
      }

      if (v4 == ++v7)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v4) = v7 + 1;
  }

LABEL_8:
  *a2 = v4;
  return this;
}

void PptTextBlockStylingAtom::PptTextBlockStylingAtom(PptTextBlockStylingAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDCA60;
  *(v2 + 32) = &unk_286EDCB08;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
}

uint64_t PptTextBlockStylingAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBlockStylingAtom *a2)
{
  v4 = *(this + 16);
  *(a2 + 24) = v4;
  v5 = v4 == -1;
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  v6 = (*(**(this + 1) + 40))(*(this + 1));
  DataLength = EshRecord::getDataLength(a2);
  if (!v5)
  {
    v8 = DataLength + v6;
    if ((*(**(this + 1) + 40))(*(this + 1)) < DataLength + v6)
    {
      operator new();
    }

    if ((*(**(this + 1) + 40))(*(this + 1)) < v8)
    {
      operator new();
    }
  }

  PptParserVisitor::endRead(this, a2);
  *(this + 16) = 0;
  return 1;
}

void PptParaRun::PptParaRun(PptParaRun *this)
{
  *this = 0;
  *(this + 2) = 0;
  PptParaProperty::PptParaProperty((this + 8));
}

uint64_t *ChAutoPtr<PptParaRun>::~ChAutoPtr(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    PptParaProperty::~PptParaProperty((v2 + 8));
    MEMORY[0x25F897000](v2, 0x1020C405935C4BCLL);
  }

  *a1 = 0;
  return a1;
}

void PptTextBlockSpecialInfoAtom::PptTextBlockSpecialInfoAtom(PptTextBlockSpecialInfoAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDD130;
  *(v2 + 32) = &unk_286EDD1D8;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
}

uint64_t PptTextBlockSpecialInfoAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextBlockSpecialInfoAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = *(a2 + 4) + *(a2 + 3) + 8;
  if ((*(**(this + 1) + 40))(*(this + 1)) < v4)
  {
    PptTextBlockSpecialInfoAtom::addSpecialInfoRun(a2);
  }

  if ((*(**(this + 1) + 40))(*(this + 1)) != v4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSpecialInfoRun::PptSpecialInfoRun(PptSpecialInfoRun *this)
{
  *this = 0;
  v1 = *(this + 9) & 0xF8;
  *(this + 8) &= 0xF8u;
  *(this + 9) = v1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v2 = *(this + 22) & 0xE0;
  *(this + 20) &= 0xFCu;
  *(this + 21) &= ~1u;
  *(this + 22) = v2;
  *(this + 24) = 0;
  *(this + 4) = 0;
}

uint64_t PptTextCharsAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, EshAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSlideAtom::PptSlideAtom(PptSlideAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDBEB0;
  *(v2 + 32) = &unk_286EDBF58;
  *(v2 + 92) = 0;
  *(v2 + 94) = 0;
  *(v2 + 52) = 0u;
  *(v2 + 68) = 0u;
}

uint64_t PptSlideAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSlideAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4)
  {
    goto LABEL_8;
  }

  for (i = 52; i != 84; i += 4)
  {
    *(a2 + i) = (*(**(this + 1) + 64))(*(this + 1));
  }

  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 12 || (*(a2 + 21) = (*(**(this + 1) + 96))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16) || (*(a2 + 22) = (*(**(this + 1) + 104))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 20))
  {
LABEL_8:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  v6 = (*(**(this + 1) + 96))(*(this + 1));
  *(a2 + 92) = v6 & 1;
  *(a2 + 93) = (v6 & 2) != 0;
  *(a2 + 94) = (v6 & 4) != 0;
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptColorSchemeAtom::PptColorSchemeAtom(PptColorSchemeAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED8228;
  *(v2 + 32) = &unk_286ED82E0;
  *(v2 + 48) = &unk_286ED8318;
  *&v3 = 255;
  *(&v3 + 1) = 255;
  *(v2 + 56) = v3;
  *(v2 + 72) = v3;
  *(v2 + 88) = v3;
  *(v2 + 104) = v3;
}

uint64_t PptColorSchemeAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptColorSchemeAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2.var1 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  v5 = (*(**(this + 1) + 104))(*(this + 1));
  a2->var7.var1 = v5;
  a2->var7.var2 = BYTE1(v5);
  a2->var7.var3 = BYTE2(v5);
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (v6 = (*(**(this + 1) + 104))(*(this + 1)), a2->var8.var1 = v6, a2->var8.var2 = BYTE1(v6), a2->var8.var3 = BYTE2(v6), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 8) || (v7 = (*(**(this + 1) + 104))(*(this + 1)), a2->var9.var1 = v7, a2->var9.var2 = BYTE1(v7), a2->var9.var3 = BYTE2(v7), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 12) || (v8 = (*(**(this + 1) + 104))(*(this + 1)), a2->var10.var1 = v8, a2->var10.var2 = BYTE1(v8), a2->var10.var3 = BYTE2(v8), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 16) || (v9 = (*(**(this + 1) + 104))(*(this + 1)), a2->var11.var1 = v9, a2->var11.var2 = BYTE1(v9), a2->var11.var3 = BYTE2(v9), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 20) || (v10 = (*(**(this + 1) + 104))(*(this + 1)), a2->var12.var1 = v10, a2->var12.var2 = BYTE1(v10), a2->var12.var3 = BYTE2(v10), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 24) || (v11 = (*(**(this + 1) + 104))(*(this + 1)), a2->var13.var1 = v11, a2->var13.var2 = BYTE1(v11), a2->var13.var3 = BYTE2(v11), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 28))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  v12 = (*(**(this + 1) + 104))(*(this + 1));
  a2->var14.var1 = v12;
  a2->var14.var2 = BYTE1(v12);
  a2->var14.var3 = BYTE2(v12);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void EshParserVisitor::visit(EshParserVisitor *this, EshContainer *a2)
{
  v4 = *(this + 3);
  Offset = EshRecord::getOffset(a2);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  EshContainer::removeChildren(a2);
  (*(**(this + 3) + 40))(*(this + 3));
  EshRecord::getDataLength(a2);
  EshContainer::removeChildren(a2);
  operator new();
}

uint64_t EshContainer::getHeaderOfType(EshContainer *this, int a2, unsigned __int16 a3)
{
  IndexOfChild = EshContainer::getIndexOfChild(this, a2, a3);
  if (IndexOfChild == -1)
  {
    return 0;
  }

  v5 = *(this + 4);
  if (IndexOfChild >= ((*(this + 5) - v5) >> 3))
  {
    std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v5 + 8 * IndexOfChild);
}

uint64_t EshContainer::getIndexOfChild(EshContainer *this, int a2, unsigned __int16 a3)
{
  v3 = *(this + 4);
  v4 = *(this + 5) - v3;
  if ((v4 & 0x7FFFFFFF8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = (v4 >> 3);
  while (1)
  {
    v7 = *(v3 + 8 * result);
    if (*(v7 + 10) == a2 && (a3 == 0xFFFF || *(v7 + 8) == a3))
    {
      break;
    }

    if (v6 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t EshSp::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t EshParserVisitor::visit(EshParserVisitor *a1, EshRecord *this)
{
  v4 = *(a1 + 3);
  Offset = EshRecord::getOffset(this);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  *(this + 7) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  v6 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  *(this + 32) = v6 & 1;
  v7 = *&vshl_u16((*&vdup_n_s16(v6) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(this + 33) = vuzp1_s8(v7, v7).u32[0];
  *(this + 37) = (v6 & 0x20) != 0;
  *(this + 38) = (v6 & 0x40) != 0;
  *(this + 39) = (v6 & 0x80) != 0;
  v8 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v6), xmmword_25D6FD650)), 0x1000100010001);
  *(this + 10) = vuzp1_s8(v8, v8).u32[0];
  EshParserVisitor::endRead(a1, this);
  return 1;
}

{
  v4 = *(a1 + 3);
  Offset = EshRecord::getOffset(this);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  *(this + 7) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 8) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  EshParserVisitor::endRead(a1, this);
  return 1;
}

{
  v4 = *(a1 + 3);
  Offset = EshRecord::getOffset(this);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  if (EshRecord::getDataLength(this) == 8)
  {
    v6 = (*(**(a1 + 3) + 72))(*(a1 + 3));
    v7 = (*(**(a1 + 3) + 72))(*(a1 + 3));
    v8 = (*(**(a1 + 3) + 72))(*(a1 + 3));
    v9 = (*(**(a1 + 3) + 72))(*(a1 + 3));
  }

  else if (EshRecord::getDataLength(this) == 16)
  {
    v7 = (*(**(a1 + 3) + 96))(*(a1 + 3));
    v6 = (*(**(a1 + 3) + 96))(*(a1 + 3));
    v8 = (*(**(a1 + 3) + 96))(*(a1 + 3));
    v9 = (*(**(a1 + 3) + 96))(*(a1 + 3));
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
  }

  *(this + 7) = v7;
  *(this + 8) = v6;
  *(this + 9) = v8;
  *(this + 10) = v9;
  EshParserVisitor::endRead(a1, this);
  return 1;
}

{
  v4 = *(a1 + 3);
  Offset = EshRecord::getOffset(this);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  EshParserVisitor::parseBlipUid(a1, (this + 28));
  if (**(this + 6))
  {
    EshParserVisitor::parseBlipUid(a1, (this + 56));
  }

  *(this + 120) = (*(**(a1 + 3) + 64))(*(a1 + 3));
  v6 = (*(this + 4) + *(this + 3) + 8);
  v7 = (*(**(a1 + 3) + 40))(*(a1 + 3));
  EshParserVisitor::delayReadData(a1, (this + 72), v6 - v7);
  (*(**(a1 + 3) + 16))(*(a1 + 3), v6, 0);
  EshParserVisitor::endRead(a1, this);
  return 1;
}

{
  v4 = *(a1 + 3);
  Offset = EshRecord::getOffset(this);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  *(this + 7) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 8) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  EshParserVisitor::endRead(a1, this);
  return 1;
}

{
  v4 = *(a1 + 3);
  Offset = EshRecord::getOffset(this);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  *(this + 7) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 8) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  EshParserVisitor::endRead(a1, this);
  return 1;
}

{
  v4 = *(a1 + 3);
  Offset = EshRecord::getOffset(this);
  (*(*v4 + 16))(v4, (Offset + 8), 0);
  *(this + 7) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 8) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 9) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 10) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 11) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  *(this + 12) = (*(**(a1 + 3) + 104))(*(a1 + 3));
  EshParserVisitor::endRead(a1, this);
  return 1;
}

void EshContainer::~EshContainer(EshContainer *this)
{
  EshContainer::~EshContainer(this);

  JUMPOUT(0x25F897000);
}

{
  *this = &unk_286EC5C98;
  EshContainer::removeChildren(this);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void EshDg::EshDg(EshDg *this)
{
  EshAtom::EshAtom(this, 0xF008u, 0);
  *v1 = &unk_286EC5ED0;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
}

uint64_t EshDg::accept(int a1, void *lpsrc)
{

  return v2();
}

void EshPatriarch::EshPatriarch(EshPatriarch *this)
{
  EshObject::EshObject(this, 5u);
  *v1 = &unk_286EC73E8;
  *(v1 + 12) = 0;
}

void sub_25D2AF934(_Unwind_Exception *a1)
{
  MEMORY[0x25F897000](v3, 0x1081C401B6A0F4FLL);
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void EshRectAtom::EshRectAtom(EshRectAtom *this, unsigned __int16 a2, unsigned __int8 a3)
{
  EshAtom::EshAtom(this, a2, a3);
  *v3 = &unk_286EC68C8;
  *(v3 + 36) = 0;
  *(v3 + 28) = 0;
}

uint64_t EshRectAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

void PptEshShape::PptEshShape(PptEshShape *this)
{
  EshShape::EshShape(this);
  PptEshClientContainer::PptEshClientContainer((v2 + 576));
  *this = &unk_286ED9048;
  *(this + 52) = &unk_286ED9120;
  *(this + 72) = &unk_286ED9160;
}

void EshShape::EshShape(EshShape *this)
{
  EshShapeBase::EshShapeBase(this, 7u);
  *v2 = &unk_286EC7518;
  *(v2 + 416) = &unk_286EC75E8;
  EshObject::EshObject((v2 + 424), 0x12u);
  *(this + 53) = &unk_286EC80D0;
  *(this + 55) = this + 16;
  *(this + 56) = &unk_286EC81F8;
  EshObject::EshObject((this + 456), 0x17u);
  *(this + 59) = this + 16;
  *(this + 57) = &unk_286EC7930;
  EshObject::EshObject(this + 30, 0x13u);
  *(this + 62) = this + 16;
  *(this + 60) = &unk_286EC79C0;
  EshObject::EshObject((this + 504), 0xEu);
  *(this + 65) = this + 16;
  *(this + 63) = &unk_286EC7A68;
  EshObject::EshObject(this + 33, 0x19u);
  *(this + 68) = this + 16;
  *(this + 66) = &unk_286EC7AF8;
  EshObject::EshObject((this + 552), 0x11u);
  *(this + 71) = this + 16;
  *(this + 69) = &unk_286EC7B88;
}

void PptEshClientContainer::PptEshClientContainer(PptEshClientContainer *this)
{
  *this = &unk_286ED8D98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void PptEshReader::readClientAnchor(PptEshReader *this, EshContentBase *a2, const EshHeader *a3)
{
  if ((*(*a2 + 16))(a2) == 7 || (*(*a2 + 16))(a2) == 6)
  {
    v5 = (*(*a2 + 16))(a2);
    if (v5 == 7)
    {
    }

    else
    {
    }

    if (v5 == 7)
    {
      v7 = 576;
    }

    else
    {
      v7 = 368;
    }

    if (v8)
    {
      v9 = &v8[v7];
    }

    else
    {
      v9 = 0;
    }

    PptEshClientContainer::addChild(v9, a3);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 7005;
}

void PptEshReader::readClientData(PptEshReader *this, EshContentBase *a2, const EshHeader *a3)
{
  if ((*(*a2 + 16))(a2) == 7 || (*(*a2 + 16))(a2) == 6 || (*(*a2 + 16))(a2) == 12)
  {
    if ((*(*a2 + 16))(a2) == 7)
    {
      v6 = 576;
    }

    else
    {
      v7 = (*(*a2 + 16))(a2);
      if (v7 == 6)
      {
      }

      else
      {
      }

      if (v7 == 6)
      {
        v6 = 368;
      }

      else
      {
        v6 = 328;
      }
    }

    if (v8)
    {
      v9 = &v8[v6];
    }

    else
    {
      v9 = 0;
    }

    PptEshClientContainer::addChild(v9, a3);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 7005;
}

void PptEshReader::readClientTextBox(PptEshReader *this, EshShape *lpsrc, const EshHeader *a3)
{
  if (v4)
  {
    v5 = (v4 + 576);
  }

  else
  {
    v5 = 0;
  }

  PptEshClientContainer::addChild(v5, a3);
}

uint64_t PptEshClientContainer::getChildType(PptEshClientContainer *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(*(v2 + 8 * a2) + 10);
}

uint64_t PptEshClientContainer::getChildVersion(PptEshClientContainer *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (((*(this + 2) - v2) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1005;
  }

  return *(*(v2 + 8 * a2) + 12);
}

void PptOEPlaceholderAtom::PptOEPlaceholderAtom(PptOEPlaceholderAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB3B8;
  *(v2 + 32) = &unk_286EDB460;
  *(v2 + 48) = -1;
  *(v2 + 52) = -256;
}

uint64_t PptOEPlaceholderAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptOEPlaceholderAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), a2->var2.var1 + 8, 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  a2->var6 = (*(**(this + 1) + 96))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 4 || (*(a2 + 52) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 5) || (*(a2 + 53) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 6))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptSkipVisitor::skipUnknownBytes(*(this + 3), a2, 2u);
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptBaseTextPropertyAtom::PptBaseTextPropertyAtom(PptBaseTextPropertyAtom *this, const EshHeader *a2)
{
  PptTextBlockStylingAtom::PptTextBlockStylingAtom(this, a2);
  *v2 = &unk_286ED7958;
  v2[4] = &unk_286ED7A00;
}

uint64_t PptBaseTextPropertyAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptBaseTextPropertyAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  if (*(this + 12) >= 6u)
  {
    (*(**(this + 1) + 104))(*(this + 1));
    (*(**(this + 1) + 80))(*(this + 1));
    operator new();
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptGenericDateMCAtom::PptGenericDateMCAtom(PptGenericDateMCAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDA438;
  *(v2 + 32) = &unk_286EDA4E0;
}

uint64_t PptGenericDateMCAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptGenericDateMCAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptFooterMCAtom::PptFooterMCAtom(PptFooterMCAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDA340;
  *(v2 + 32) = &unk_286EDA3E8;
}

uint64_t PptFooterMCAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptFooterMCAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptSlideNumberMCAtom::PptSlideNumberMCAtom(PptSlideNumberMCAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDC0A0;
  *(v2 + 32) = &unk_286EDC148;
}

uint64_t PptSlideNumberMCAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSlideNumberMCAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptEshBackground::PptEshBackground(PptEshBackground *this)
{
  EshBackground::EshBackground(this);
  PptEshClientContainer::PptEshClientContainer((v2 + 328));
  *this = &unk_286ED8A68;
  *(this + 41) = &unk_286ED8AF0;
}

void EshBackground::EshBackground(EshBackground *this)
{
  EshContentBase::EshContentBase(this, 0xCu);
  v2->var0 = &unk_286EC6CB8;
  v3 = v2 + 1;
  EshObject::EshObject(v2 + 17, 0xDu);
  *(this + 34) = &unk_286EC6E00;
  *(this + 36) = v3;
  *(this + 37) = &unk_286EC6EC0;
  EshObject::EshObject(this + 19, 0x14u);
  *(this + 40) = v3;
  *(this + 38) = &unk_286EC6D70;
}

void PptSlideTime10Atom::PptSlideTime10Atom(PptSlideTime10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EE0A48;
  *(v2 + 32) = &unk_286EE0AF0;
}

uint64_t PptSlideTime10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptSlideTime10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptOutlineTextRefAtom::PptOutlineTextRefAtom(PptOutlineTextRefAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDB6A0;
  *(v2 + 32) = &unk_286EDB748;
  *(v2 + 48) = 0;
}

uint64_t PptOutlineTextRefAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptOutlineTextRefAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 104))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptTextGenericRulerAtom::PptTextGenericRulerAtom(PptTextGenericRulerAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDD038;
  *(v2 + 32) = &unk_286EDD0E0;
  *(v2 + 56) = -1;
  *(v2 + 64) = -1;
  *(v2 + 70) = -1;
  *(v2 + 48) = 0;
}

uint64_t PptTextGenericRulerAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptTextGenericRulerAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  EshRecord::getEndOffset(a2);
  v4 = (*(**(this + 1) + 104))(*(this + 1));
  if (v4)
  {
    *(a2 + 38) = (*(**(this + 1) + 80))(*(this + 1));
  }

  if ((v4 & 4) != 0)
  {
    operator new();
  }

  for (i = 0; i != 5; ++i)
  {
    if (((v4 >> i) & 8) != 0)
    {
      v6 = (*(**(this + 1) + 80))(*(this + 1));
      PptTextGenericRulerAtom::setIndent(a2, i, v6);
    }

    if (((v4 >> i) & 0x100) != 0)
    {
      v7 = (*(**(this + 1) + 80))(*(this + 1));
      PptTextGenericRulerAtom::setFirstLine(a2, i, v7);
    }
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptTextGenericRulerAtom::setIndent(uint64_t this, int a2, __int16 a3)
{
  if (a2 >= 5)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  *(this + 2 * a2 + 56) = a3;
  return this;
}

uint64_t *EshOpt::takeStringProperty(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= a2)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_5;
  }

  v10 = a2;
  v11 = &v10;
  v8 = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10)[5];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

LABEL_9:
  v10 = a2;
  v11 = &v10;
  result = std::__tree<std::__value_type<unsigned int,EshOpt::Value>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,EshOpt::Value>,CsLess<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,EshOpt::Value>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 32, &v10);
  result[5] = a3;
  result[6] = 0;
  return result;
}

void PptAnimHashCode10Atom::PptAnimHashCode10Atom(PptAnimHashCode10Atom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286ED7290;
  *(v2 + 32) = &unk_286ED7338;
  *(v2 + 48) = 0;
}

uint64_t PptAnimHashCode10Atom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimHashCode10Atom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1));
  PptParserVisitor::endRead(this, a2);
  return 1;
}

void PptAnimNodeAtom::PptAnimNodeAtom(PptAnimNodeAtom *this, const EshHeader *a2)
{
  EshAtom::EshAtom(this, a2);
  *(v2 + 40) = -1;
  *(v2 + 44) = 0;
  *v2 = &unk_286EDFCB8;
  *(v2 + 32) = &unk_286EDFD60;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
}

uint64_t PptAnimNodeAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimNodeAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 13) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 14) = (*(**(this + 1) + 104))(*(this + 1));
  *(a2 + 15) = (*(**(this + 1) + 104))(*(this + 1));
  (*(**(this + 1) + 104))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 20 || ((*(**(this + 1) + 104))(*(this + 1)), *(a2 + 12) = (*(**(this + 1) + 96))(*(this + 1)), *(a2 + 64) = (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 64))(*(this + 1)), (*(**(this + 1) + 40))(*(this + 1)) != v4 + 32))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptAnimVariantAtom::accept(int a1, void *lpsrc)
{

  return v2();
}

uint64_t PptParserVisitor::visit(PptParserVisitor *this, PptAnimVariantAtom *a2)
{
  (*(**(this + 1) + 16))(*(this + 1), (*(a2 + 4) + 8), 0);
  PptSkipVisitor::beginRead(*(this + 3));
  v4 = (*(**(this + 1) + 40))(*(this + 1));
  *(a2 + 12) = (*(**(this + 1) + 64))(*(this + 1));
  if ((*(**(this + 1) + 40))(*(this + 1)) != v4 + 1)
  {
    goto LABEL_18;
  }

  v5 = *(a2 + 12);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (EshRecord::getDataLength(a2) == 5)
      {
        v8 = (*(**(this + 1) + 112))(*(this + 1));
        PptAnimVariantAtom::setReal(a2, v8);
        goto LABEL_17;
      }
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_17;
      }

      if (EshRecord::getDataLength(a2) > 2 && (EshRecord::getDataLength(a2) & 0x80000001) == 1)
      {
        operator new();
      }
    }

    goto LABEL_18;
  }

  if (!v5)
  {
    if (EshRecord::getDataLength(a2) == 2)
    {
      v7 = (*(**(this + 1) + 64))(*(this + 1));
      if (v7 < 2)
      {
        PptAnimVariantAtom::setBoolean(a2, v7 != 0);
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  if (v5 == 1)
  {
    if (EshRecord::getDataLength(a2) == 5)
    {
      v6 = (*(**(this + 1) + 96))(*(this + 1));
      PptAnimVariantAtom::setInteger(a2, v6);
      goto LABEL_17;
    }

LABEL_18:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4003;
  }

LABEL_17:
  PptParserVisitor::endRead(this, a2);
  return 1;
}

uint64_t PptAnimVariantAtom::setInteger(uint64_t this, int a2)
{
  *(this + 48) = 1;
  *(this + 56) = a2;
  return this;
}

__int16 *PptParaProperty::copyValuesOfNonOverriddenPropertiesFromParent(__int16 *this, const PptParaProperty *a2)
{
  v2 = *this;
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(this + 3) = *(this + 3) & 0xFFFE | *(a2 + 3) & 1;
    if ((v2 & 2) != 0)
    {
LABEL_3:
      if ((v2 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  *(this + 3) = *(this + 3) & 0xFFFD | *(a2 + 3) & 2;
  if ((v2 & 4) != 0)
  {
LABEL_4:
    if ((v2 & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(this + 3) = *(this + 3) & 0xFFFB | *(a2 + 3) & 4;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(this + 3) = *(this + 3) & 0xFFF7 | *(a2 + 3) & 8;
  if ((v2 & 0x10) != 0)
  {
LABEL_6:
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this[4] = *(a2 + 4);
  if ((v2 & 0x20) != 0)
  {
LABEL_7:
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(this + 6) = *(a2 + 12);
  *(this + 5) = *(a2 + 5);
  if ((v2 & 0x40) != 0)
  {
LABEL_8:
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this[5] = *(a2 + 5);
  if ((v2 & 0x80) != 0)
  {
LABEL_9:
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this[3] = *(a2 + 3);
  if ((v2 & 0x100) != 0)
  {
LABEL_10:
    if ((v2 & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this[15] = *(a2 + 15);
  if ((v2 & 0x200) != 0)
  {
LABEL_11:
    if ((v2 & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this[16] = *(a2 + 16);
  if ((v2 & 0x400) != 0)
  {
LABEL_12:
    if ((v2 & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(this + 3) = *(this + 3) & 0xF0FF | *(a2 + 3) & 0xF00;
  if ((v2 & 0x800) != 0)
  {
LABEL_13:
    if ((v2 & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  this[12] = *(a2 + 12);
  if ((v2 & 0x1000) != 0)
  {
LABEL_14:
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this[13] = *(a2 + 13);
  if ((v2 & 0x2000) != 0)
  {
LABEL_15:
    if ((v2 & 0x4000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_37:
  this[14] = *(a2 + 14);
  if ((v2 & 0x4000) == 0)
  {
LABEL_16:
    this[17] = *(a2 + 17);
  }

LABEL_17:
  v3 = *(this + 2);
  if (v3)
  {
    if ((this[1] & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(this + 3) = *(this + 3) & 0xCFFF | *(a2 + 3) & 0x3000;
    if ((v3 & 2) != 0)
    {
LABEL_19:
      if ((v3 & 4) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_41;
    }
  }

  *(this + 3) = *(this + 3) & 0xFFEF | *(a2 + 3) & 0x10;
  if ((v3 & 4) != 0)
  {
LABEL_20:
    if ((v3 & 8) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(this + 3) = *(this + 3) & 0xFFDF | *(a2 + 3) & 0x20;
  if ((v3 & 8) != 0)
  {
LABEL_21:
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_22;
    }

LABEL_43:
    *(this + 3) = *(this + 3) & 0xFF7F | *(a2 + 3) & 0x80;
    if (v2 < 0)
    {
      return this;
    }

    goto LABEL_44;
  }

LABEL_42:
  *(this + 3) = *(this + 3) & 0xFFBF | *(a2 + 3) & 0x40;
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  if (v2 < 0)
  {
    return this;
  }

LABEL_44:
  if (!*(this + 5))
  {
    if (*(a2 + 5))
    {
      operator new();
    }
  }

  return this;
}

PptCharProperty *PptCharProperty::copyValuesOfNonOverriddenPropertiesFromParent(PptCharProperty *this, const PptCharProperty *a2)
{
  var0 = this->var0;
  if (*&this->var0)
  {
    if ((*&var0 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(this + 2) = *(this + 2) & 0xFFFE | *(a2 + 2) & 1;
    if ((*&var0 & 2) != 0)
    {
LABEL_3:
      if ((*&var0 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  *(this + 2) = *(this + 2) & 0xFFFD | *(a2 + 2) & 2;
  if ((*&var0 & 4) != 0)
  {
LABEL_4:
    if ((*&var0 & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(this + 2) = *(this + 2) & 0xFFFB | *(a2 + 2) & 4;
  if ((*&var0 & 8) != 0)
  {
LABEL_5:
    if ((*&var0 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(this + 2) = *(this + 2) & 0xFFF7 | *(a2 + 2) & 8;
  if ((*&var0 & 0x10) != 0)
  {
LABEL_6:
    if ((*&var0 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(this + 2) = *(this + 2) & 0xFFEF | *(a2 + 2) & 0x10;
  if ((*&var0 & 0x20) != 0)
  {
LABEL_7:
    if ((*&var0 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(this + 2) = *(this + 2) & 0xFFDF | *(a2 + 2) & 0x20;
  if ((*&var0 & 0x40) != 0)
  {
LABEL_8:
    if ((*&var0 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(this + 2) = *(this + 2) & 0xFFBF | *(a2 + 2) & 0x40;
  if ((*&var0 & 0x80) != 0)
  {
LABEL_9:
    if ((*&var0 & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(this + 2) = *(this + 2) & 0xFF7F | *(a2 + 2) & 0x80;
  if ((*&var0 & 0x100) != 0)
  {
LABEL_10:
    if ((*&var0 & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(this + 2) = *(this + 2) & 0xFEFF | *(a2 + 2) & 0x100;
  if ((*&var0 & 0x200) != 0)
  {
LABEL_11:
    if ((*&var0 & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(this + 2) = *(this + 2) & 0xFDFF | *(a2 + 2) & 0x200;
  if ((*&var0 & 0x400) != 0)
  {
LABEL_12:
    if ((*&var0 & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this->var13 = a2->var13;
  if ((*&var0 & 0x800) != 0)
  {
LABEL_13:
    if ((*&var0 & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this->var14 = a2->var14;
  if ((*&var0 & 0x1000) != 0)
  {
LABEL_14:
    if ((*&var0 & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this->var15 = a2->var15;
  if ((*&var0 & 0x2000) != 0)
  {
LABEL_15:
    if ((*&var0 & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this->var16 = a2->var16;
  if ((*&var0 & 0x4000) != 0)
  {
LABEL_16:
    if ((*&var0 & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  this->var17 = a2->var17;
  if ((*&var0 & 0x8000) != 0)
  {
LABEL_17:
    if ((*&var0 & 0x10000) != 0)
    {
      return this;
    }

LABEL_35:
    this->var19 = a2->var19;
    return this;
  }

LABEL_34:
  this->var18 = a2->var18;
  if ((*&var0 & 0x10000) == 0)
  {
    goto LABEL_35;
  }

  return this;
}

void OcSummary::OcSummary(OcSummary *this)
{
  *this = &unk_286EC8C28;
  v2 = (this + 56);
  OcText::OcText((this + 8));
  OcText::OcText(v2);
  OcText::OcText((this + 104));
  OcText::OcText((this + 152));
  OcText::OcText((this + 200));
  OcText::OcText((this + 248));
  OcText::OcText((this + 296));
  OcText::OcText((this + 344));
  OcText::OcText((this + 392));
  OcText::OcText((this + 440));
  OcText::OcText((this + 488));
  OcText::OcText((this + 536));
  OcText::OcText((this + 584));
  OcText::OcText((this + 632));
  OcBinaryData::OcBinaryData((this + 712));
  *(this + 380) = 0;
  *(this + 96) = 0;
  *(this + 98) = 0;
  *(this + 97) = 0;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
}

void sub_25D2B2FA8(_Unwind_Exception *a1)
{
  OcText::~OcText((v1 + 632));
  OcText::~OcText((v1 + 584));
  OcText::~OcText((v1 + 536));
  OcText::~OcText((v1 + 488));
  OcText::~OcText((v1 + 440));
  OcText::~OcText((v1 + 392));
  OcText::~OcText((v1 + 344));
  OcText::~OcText((v1 + 296));
  OcText::~OcText((v1 + 248));
  OcText::~OcText((v1 + 200));
  OcText::~OcText((v1 + 152));
  OcText::~OcText((v1 + 104));
  OcText::~OcText(v2);
  OcText::~OcText((v1 + 8));
  _Unwind_Resume(a1);
}