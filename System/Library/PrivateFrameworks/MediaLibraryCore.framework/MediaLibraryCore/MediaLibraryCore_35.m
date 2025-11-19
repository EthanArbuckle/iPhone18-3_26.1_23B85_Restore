void sub_1D5AA575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, unint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v86);
  *(v81 + 560) = v85;
  if (*(v81 + 591) < 0)
  {
    operator delete(*v84);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v83);
  *(v81 + 448) = v82;
  if (*(v81 + 479) < 0)
  {
    operator delete(*v80);
  }

  *(v81 + 400) = a26;
  if (*(v81 + 431) < 0)
  {
    operator delete(*v79);
  }

  mediaplatform::DatabaseTable<long long,long long,std::string,long long,std::string,long long>::~DatabaseTable(v81);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a58);
  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  a72 = a28;
  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a79);
  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  STACK[0x238] = a29;
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  STACK[0x280] = a30;
  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

void sub_1D5AA5EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,long long,std::string,long long,std::string,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 352);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 304);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 240);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 192);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D5AA5F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::BookletTable::~BookletTable(mlcore::BookletTable *this)
{
  mlcore::MediaTable<long long,long long,std::string,long long,std::string,long long>::~MediaTable(this);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaTable<long long,long long,std::string,long long,std::string,long long>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D8088;
  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 608);
  *(a1 + 560) = &unk_1F50D86E0;
  if (*(a1 + 591) < 0)
  {
    operator delete(*(a1 + 568));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 496);
  *(a1 + 448) = &unk_1F50D86E0;
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  *(a1 + 400) = &unk_1F50D86E0;
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  mediaplatform::DatabaseTable<long long,long long,std::string,long long,std::string,long long>::~DatabaseTable(a1);
}

{
  mlcore::MediaTable<long long,long long,std::string,long long,std::string,long long>::~MediaTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseTable<long long,long long,std::string,long long,std::string,long long>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8AD8;
  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  *(a1 + 304) = &unk_1F50D86E0;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 240);
  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 128);
  *(a1 + 80) = &unk_1F50D86E0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,long long,std::string,long long,std::string,long long>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 224) = &unk_1F50D86E0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 160);
  *(a1 + 112) = &unk_1F50D86E0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 48);
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::BookletTable::persistentIDColumn(mlcore::BookletTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 431) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 51), *(this + 52));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 408);
    *(a2 + 24) = *(this + 53);
  }

  *(a2 + 32) = *(this + 108);
  *(a2 + 44) = *(this + 111);
  *(a2 + 36) = *(this + 436);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::BookletTable::itemPersistentIDColumn(mlcore::BookletTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 479) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 57), *(this + 58));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 456);
    *(a2 + 24) = *(this + 59);
  }

  *(a2 + 32) = *(this + 120);
  *(a2 + 44) = *(this + 123);
  *(a2 + 36) = *(this + 484);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::BookletTable::nameColumn(mlcore::BookletTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 527) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 63), *(this + 64));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 504);
    *(a2 + 24) = *(this + 65);
  }

  *(a2 + 32) = *(this + 132);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 532);
  if (*(this + 559) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 67), *(this + 68));
  }

  else
  {
    *(a2 + 40) = *(this + 536);
    *(a2 + 56) = *(this + 69);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AA6570(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::BookletTable::storeItemIDColumn(mlcore::BookletTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 591) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 71), *(this + 72));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 568);
    *(a2 + 24) = *(this + 73);
  }

  *(a2 + 32) = *(this + 148);
  *(a2 + 44) = *(this + 151);
  *(a2 + 36) = *(this + 596);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::BookletTable::redownloadParamsColumn(mlcore::BookletTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 639) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 77), *(this + 78));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 616);
    *(a2 + 24) = *(this + 79);
  }

  *(a2 + 32) = *(this + 160);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 644);
  if (*(this + 671) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 81), *(this + 82));
  }

  else
  {
    *(a2 + 40) = *(this + 648);
    *(a2 + 56) = *(this + 83);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AA6730(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::BookletTable::fileSizeColumn(mlcore::BookletTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 703) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 85), *(this + 86));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 680);
    *(a2 + 24) = *(this + 87);
  }

  *(a2 + 32) = *(this + 176);
  *(a2 + 44) = *(this + 179);
  *(a2 + 36) = *(this + 708);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::StringForMediaKind(mlcore *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  mlcore::_InitializeKinds(this);
  v4 = *(mlcore::__kindsForStrings + 16);
  if (v4)
  {
    while (1)
    {
      if (*(v4 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4[2], v4[3]);
      }

      else
      {
        __p = *(v4 + 2);
      }

      v5 = *(v4 + 10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v5 == v2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    if (*(v4 + 39) < 0)
    {
      v6 = v4[2];
      v7 = v4[3];

      std::string::__init_copy_ctor_external(a2, v6, v7);
    }

    else
    {
      *a2 = *(v4 + 1);
      *(a2 + 16) = v4[4];
    }
  }

  else
  {
LABEL_9:
    *(a2 + 23) = 11;
    strcpy(a2, "UnknownKind");
  }
}

void mlcore::_InitializeKinds(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::_InitializeKinds(void)::once, memory_order_acquire) != -1)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::_InitializeKinds(void)::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::_InitializeKinds(void)::$_0 &&>>);
  }
}

void sub_1D5AA89A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  v91 = (v89 + 1655);
  v92 = -1664;
  v93 = v91;
  while (1)
  {
    v94 = *v93;
    v93 -= 32;
    if (v94 < 0)
    {
      operator delete(*(v91 - 23));
    }

    v91 = v93;
    v92 += 32;
    if (!v92)
    {
      if (a32 < 0)
      {
        operator delete(__p);
      }

      if (a38 < 0)
      {
        operator delete(a33);
      }

      if (a44 < 0)
      {
        operator delete(a39);
      }

      if (a50 < 0)
      {
        operator delete(a45);
      }

      if (a56 < 0)
      {
        operator delete(a51);
      }

      if (a62 < 0)
      {
        operator delete(a57);
      }

      if (a68 < 0)
      {
        operator delete(a63);
      }

      if (a72 < 0)
      {
        operator delete(a69);
      }

      if (a74 < 0)
      {
        operator delete(a73);
      }

      if (a76 < 0)
      {
        operator delete(a75);
      }

      if (a78 < 0)
      {
        operator delete(a77);
      }

      if (a80 < 0)
      {
        operator delete(a79);
      }

      if (a82 < 0)
      {
        operator delete(a81);
      }

      if (a84 < 0)
      {
        operator delete(a83);
      }

      if (a86 < 0)
      {
        operator delete(a85);
      }

      if (SLOBYTE(STACK[0x20F]) < 0)
      {
        operator delete(a87);
      }

      if (SLOBYTE(STACK[0x227]) < 0)
      {
        operator delete(STACK[0x210]);
      }

      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        operator delete(STACK[0x228]);
      }

      if (SLOBYTE(STACK[0x257]) < 0)
      {
        operator delete(STACK[0x240]);
      }

      if (SLOBYTE(STACK[0x26F]) < 0)
      {
        operator delete(STACK[0x258]);
      }

      if (SLOBYTE(STACK[0x287]) < 0)
      {
        operator delete(STACK[0x270]);
      }

      if (SLOBYTE(STACK[0x29F]) < 0)
      {
        operator delete(STACK[0x288]);
      }

      if (SLOBYTE(STACK[0x2B7]) < 0)
      {
        operator delete(STACK[0x2A0]);
      }

      if (SLOBYTE(STACK[0x2CF]) < 0)
      {
        operator delete(STACK[0x2B8]);
      }

      if (SLOBYTE(STACK[0x2E7]) < 0)
      {
        operator delete(STACK[0x2D0]);
      }

      if (SLOBYTE(STACK[0x2FF]) < 0)
      {
        operator delete(STACK[0x2E8]);
      }

      if (SLOBYTE(STACK[0x317]) < 0)
      {
        operator delete(STACK[0x300]);
      }

      if (SLOBYTE(STACK[0x32F]) < 0)
      {
        operator delete(STACK[0x318]);
      }

      if (SLOBYTE(STACK[0x347]) < 0)
      {
        operator delete(STACK[0x330]);
      }

      if (SLOBYTE(STACK[0x35F]) < 0)
      {
        operator delete(STACK[0x348]);
      }

      if (SLOBYTE(STACK[0x377]) < 0)
      {
        operator delete(STACK[0x360]);
      }

      if (SLOBYTE(STACK[0x38F]) < 0)
      {
        operator delete(STACK[0x378]);
      }

      if (SLOBYTE(STACK[0x3A7]) < 0)
      {
        operator delete(STACK[0x390]);
      }

      if (SLOBYTE(STACK[0x3BF]) < 0)
      {
        operator delete(STACK[0x3A8]);
      }

      if (SLOBYTE(STACK[0x3D7]) < 0)
      {
        operator delete(STACK[0x3C0]);
      }

      if (SLOBYTE(STACK[0x3EF]) < 0)
      {
        operator delete(STACK[0x3D8]);
      }

      if (SLOBYTE(STACK[0x407]) < 0)
      {
        operator delete(STACK[0x3F0]);
      }

      if (SLOBYTE(STACK[0x41F]) < 0)
      {
        operator delete(STACK[0x408]);
      }

      if (SLOBYTE(STACK[0x437]) < 0)
      {
        operator delete(STACK[0x420]);
      }

      if (SLOBYTE(STACK[0x44F]) < 0)
      {
        operator delete(STACK[0x438]);
      }

      if (SLOBYTE(STACK[0x467]) < 0)
      {
        operator delete(STACK[0x450]);
      }

      if (SLOBYTE(STACK[0x47F]) < 0)
      {
        operator delete(STACK[0x468]);
      }

      if (SLOBYTE(STACK[0x497]) < 0)
      {
        operator delete(STACK[0x480]);
      }

      if (SLOBYTE(STACK[0x4AF]) < 0)
      {
        operator delete(STACK[0x498]);
      }

      if (SLOBYTE(STACK[0x4C7]) < 0)
      {
        operator delete(STACK[0x4B0]);
      }

      if (SLOBYTE(STACK[0x4DF]) < 0)
      {
        operator delete(STACK[0x4C8]);
      }

      if (SLOBYTE(STACK[0x4F7]) < 0)
      {
        operator delete(STACK[0x4E0]);
      }

      if (SLOBYTE(STACK[0x50F]) < 0)
      {
        operator delete(STACK[0x4F8]);
      }

      if (SLOBYTE(STACK[0x527]) < 0)
      {
        operator delete(STACK[0x510]);
      }

      if (SLOBYTE(STACK[0x53F]) < 0)
      {
        operator delete(STACK[0x528]);
      }

      if (SLOBYTE(STACK[0x557]) < 0)
      {
        operator delete(STACK[0x540]);
      }

      if (SLOBYTE(STACK[0x56F]) < 0)
      {
        operator delete(STACK[0x558]);
      }

      MEMORY[0x1DA6EDD40](v88, v87);
      _Unwind_Resume(a1);
    }
  }
}

void mlcore::_CreateString(std::string *this, const __CFString *a2)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MediaLibraryCore");
  v5 = CFBundleCopyLocalizedString(BundleWithIdentifier, a2, a2, @"MediaLibraryCore");
  v6 = v5;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  if (v5)
  {
    Length = CFStringGetLength(v5);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v9 = MaximumSizeForEncoding;
    if ((MaximumSizeForEncoding & 0x8000000000000000) == 0)
    {
      v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      if (CFStringGetCString(v6, v10, v9 + 1, 0x8000100u))
      {
        std::string::__assign_external(this, v10);
      }

      free(v10);
    }
  }

  CFRelease(v6);
}

void sub_1D5AA9744(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::string,int>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v5 = &a2[4 * a3];
    do
    {
      v6 = std::__string_hash<char>::operator()[abi:ne200100](v4);
      v7 = v6;
      v8 = *(a1 + 8);
      if (!*&v8)
      {
        goto LABEL_19;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = v6;
        if (v6 >= *&v8)
        {
          v11 = v6 % *&v8;
        }
      }

      else
      {
        v11 = (*&v8 - 1) & v6;
      }

      v12 = *(*a1 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v7)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (!std::equal_to<std::string>::operator()[abi:ne200100](v13 + 2, v4))
      {
        goto LABEL_18;
      }

      v4 += 4;
    }

    while (v4 != v5);
  }

  return a1;
}

void sub_1D5AA9BB4(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v2);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void mlcore::OldStringForMediaKind(mlcore *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  mlcore::_InitializeKinds(this);
  v4 = *(mlcore::__kindsForStrings + 16);
  if (v4)
  {
    while (1)
    {
      if (*(v4 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4[2], v4[3]);
      }

      else
      {
        __p = *(v4 + 2);
      }

      v5 = *(v4 + 10);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v5 == v2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    if (*(v4 + 39) < 0)
    {
      v6 = v4[2];
      v7 = v4[3];

      std::string::__init_copy_ctor_external(a2, v6, v7);
    }

    else
    {
      *a2 = *(v4 + 1);
      *(a2 + 16) = v4[4];
    }
  }

  else
  {
LABEL_9:
    *(a2 + 23) = 11;
    strcpy(a2, "UnknownKind");
  }
}

void *mlcore::MediaKindForString(mlcore *a1)
{
  mlcore::_InitializeKinds(a1);
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(mlcore::__kindsForStrings, a1);
  if (result)
  {
    return *(result + 10);
  }

  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(mlcore::__kindsForOldStrings, a1);
  if (result)
  {
    return *(result + 10);
  }

  return result;
}

void mlcore::MediaKindsPassingTest(mlcore *a1@<X0>, uint64_t a2@<X8>)
{
  mlcore::_InitializeKinds(a1);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = mlcore::__kindsForStrings + 16;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v9 = 0;
    v5 = *(a1 + 3);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v5 + 48))(v5, v4 + 16, &v9))
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a2, *(v4 + 40));
    }
  }

  while (v9 != 1);
  v6 = mlcore::__kindsForOldStrings + 16;
  do
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v8 = 0;
    v7 = *(a1 + 3);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v7 + 48))(v7, v6 + 16, &v8))
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a2, *(v6 + 40));
    }
  }

  while (v8 != 1);
}

void mediaplatform::SearchMatcher::~SearchMatcher(void **this)
{
  mediaplatform::SearchMatcher::~SearchMatcher(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDA68;
  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  mediaplatform::UnicodeSearch::~UnicodeSearch((this + 1));
}

void mediaplatform::SearchMatcher::SearchMatcher(void *a1)
{
  *a1 = &unk_1F50DDA68;
  mediaplatform::UnicodeSearch::UnicodeSearch(a1 + 1);
}

{
  mediaplatform::SearchMatcher::SearchMatcher(a1);
}

uint64_t mediaplatform::SearchMatcher::matches(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  if (v4 == v5)
  {
    return 0;
  }

  if ((a3 - 7) > 0xFFFFFFFD)
  {
    v12 = v5 + 24;
    do
    {
      if (*(v12 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v12 - 24), *(v12 - 16));
      }

      else
      {
        v13 = *(v12 - 24);
        __p.__r_.__value_.__r.__words[2] = *(v12 - 8);
        *&__p.__r_.__value_.__l.__data_ = v13;
      }

      v11 = mediaplatform::UnicodeSearch::matches(a1 + 8, a2, &__p, a3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v12 == v4)
      {
        v14 = 0;
      }

      else
      {
        v14 = v11;
      }

      v12 += 24;
    }

    while ((v14 & 1) != 0);
    return v11;
  }

  v9 = a1 + 8;

  return mediaplatform::UnicodeSearch::matches(v9, a2, (a1 + 24), a3);
}

void sub_1D5AAA25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SearchMatcher::reasons(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0u;
  v6 = (a3 + 8);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 1065353216;
  if (mediaplatform::UnicodeSearch::matches(&a1->__r_.__value_.__l.__size_, a2, a1 + 1, 2))
  {
    v7 = 1;
LABEL_5:
    *a3 = v7;
    return;
  }

  if (mediaplatform::UnicodeSearch::matches(&a1->__r_.__value_.__l.__size_, a2, a1 + 1, 5))
  {
    v7 = 2;
    goto LABEL_5;
  }

  v14 = 0;
  data = a1[2].__r_.__value_.__l.__data_;
  if (a1[2].__r_.__value_.__l.__size_ != data)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = &data[v9];
      if (v11[23] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
      }

      else
      {
        v12 = *v11;
        __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&__p.__r_.__value_.__l.__data_ = v12;
      }

      if (mediaplatform::UnicodeSearch::matches(&a1->__r_.__value_.__l.__size_, a2, &__p, 5))
      {
        *a3 = 3;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(v6, v10);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v14 = ++v10;
      data = a1[2].__r_.__value_.__l.__data_;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a1[2].__r_.__value_.__l.__size_ - data) >> 3));
  }
}

void mlcore::PredicateProperty::_SQLJoinClauses(mlcore::PredicateProperty *this@<X0>, void *a2@<X8>)
{
  (*(**(this + 8) + 56))(__p);
  mlcore::SQLJoinClausesForEntityClassAndProperties(__p, a2);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(&v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void mlcore::PredicateProperty::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 64))(&v6);
  operator new();
}

void sub_1D5AAA5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v15);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void mlcore::PredicateProperty::databaseColumn(mlcore::PredicateProperty *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

uint64_t mlcore::PredicateProperty::databaseTables@<X0>(mlcore::PredicateProperty *this@<X0>, void *a2@<X8>)
{
  *__p = 0u;
  v25 = 0u;
  v26 = 1065353216;
  (*(**(this + 8) + 56))(&v21);
  v3 = v21;
  v18 = v22;
  if (v21 == v22)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    goto LABEL_31;
  }

  v17 = a2;
  do
  {
    (*(**v3 + 64))(&v19);
    v4 = v19;
    if (v19 == v20)
    {
      goto LABEL_23;
    }

    do
    {
      v5 = 0x9DDFEA08EB382D69 * ((8 * (*v4 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*v4) ^ (v5 >> 47) ^ v5);
      v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
      if (!__p[1])
      {
        goto LABEL_20;
      }

      v8 = vcnt_s8(__p[1]);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
        if (v7 >= __p[1])
        {
          v9 = v7 % __p[1];
        }
      }

      else
      {
        v9 = v7 & (__p[1] - 1);
      }

      v10 = *(__p[0] + v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v12 = v11[1];
        if (v12 == v7)
        {
          break;
        }

        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= __p[1])
          {
            v12 %= __p[1];
          }
        }

        else
        {
          v12 &= __p[1] - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_20;
        }

LABEL_19:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      if (v11[2] != *v4)
      {
        goto LABEL_19;
      }

      ++v4;
    }

    while (v4 != v20);
    v4 = v19;
LABEL_23:
    if (v4)
    {
      v20 = v4;
      operator delete(v4);
    }

    v3 += 8;
  }

  while (v3 != v18);
  v13 = v25;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  if (v13)
  {
    v14 = 0;
    v15 = v13;
    do
    {
      ++v14;
      v15 = *v15;
    }

    while (v15);
    std::vector<mediaplatform::DatabaseTableBase *>::__vallocate[abi:ne200100](v17, v14);
  }

LABEL_31:
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(&v23);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(__p);
}

void sub_1D5AAABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v9 = *v7;
  if (*v7)
  {
    *(a3 + 8) = v9;
    operator delete(v9);
  }

  mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::~OrderedSet(va);
  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void *mlcore::PredicateProperty::insertIntoCacheFromResultList(mlcore::PredicateProperty *this, mlcore::PropertyCache *a2, mediaplatform::DatabaseResultList *a3, int a4)
{
  v6 = sqlite3_column_int(*(*(a3 + 1) + 24), *a3 + a4);
  v8[0] = this;
  v8[1] = v8;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(a2 + 16, this);
  *(result + 6) = v6;
  return result;
}

void mlcore::PredicateProperty::~PredicateProperty(mlcore::PredicateProperty *this)
{
  *this = &unk_1F50D4B78;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D4B78;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);
}

uint64_t mlcore::PredicateProperty::PredicateProperty(uint64_t result, void *a2)
{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = 0u;
  *result = &unk_1F50D4B78;
  v2 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = 0u;
  *result = &unk_1F50D4B78;
  v2 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t mlcore::TypedEntityClass<mlcore::EntityChange>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::EntityChange>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::EntityChange>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::EntityChange>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::EntityChange>::sharedPointer(void)::__sharedPointer;
}

void mlcore::TypedEntityClass<mlcore::EntityChange>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::EntityChange>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::EntityChange>::databaseTable()
{
  mediaplatform::Singleton<mlcore::EntityChangeTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void *mediaplatform::Singleton<mlcore::EntityChangeTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore17EntityChangeTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::EntityChangeTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::EntityChangeTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D5AAB09C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::EntityChangeTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D17A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void sub_1D5AAB3A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::EntityChange>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::EntityChange>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::EntityChange::descriptionAttributes(mlcore::EntityChange *this@<X0>, void *a2@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = mlcore::EntityChangePropertyChangeType(this);
  v5 = mlcore::Entity::valueForProperty<int>(this, v4);
  if (v5 == 1)
  {
    v6 = mlcore::EntityChangePropertyEntityPersistentID(v5);
    v39 = mlcore::Entity::valueForProperty<long long>(this, v6);
    mediaplatform::FormatString<long long>(&v40, "pid = {0}", &v39);
    v8 = mlcore::EntityChangePropertyEntityType(v7);
    v9 = mlcore::Entity::valueForProperty<int>(this, v8) + 1;
    if (v9 > 0xA)
    {
      v10 = "Unknown";
    }

    else
    {
      v10 = (&off_1E84C8358)[v9];
    }

    std::string::basic_string[abi:ne200100]<0>(v37, v10);
    mediaplatform::FormatString<std::string>(&v41, "class = {0}", v37);
    v17 = mlcore::EntityChangePropertyChangeType(v16);
    v18 = mlcore::Entity::valueForProperty<int>(this, v17);
    if (v18 > 2)
    {
      v19 = "Unknown";
    }

    else
    {
      v19 = (&off_1E84C8340)[v18];
    }

    std::string::basic_string[abi:ne200100]<0>(v35, v19);
    mediaplatform::FormatString<std::string>(&v42, "type = {0}", v35);
    v25 = mlcore::EntityChangePropertySourceID(v24);
    v34 = mlcore::Entity::valueForProperty<long long>(this, v25);
    mediaplatform::FormatString<long long>(&v43, "source = {0}", &v34);
    v27 = mlcore::EntityChangePropertyChanges(v26);
    mlcore::Entity::valueForProperty<std::string>(&__p, this, v27);
    mediaplatform::FormatString<std::string>(&v44, "changes = {0}", &__p);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a2, &v40, &v45, 5uLL);
    for (i = 0; i != -15; i -= 3)
    {
      if (SHIBYTE(v44.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v44.__r_.__value_.__l.__data_ + i * 8));
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = mlcore::EntityChangePropertyEntityPersistentID(v5);
    __p.__r_.__value_.__r.__words[0] = mlcore::Entity::valueForProperty<long long>(this, v11);
    mediaplatform::FormatString<long long>(&v40, "pid = {0}", &__p);
    v13 = mlcore::EntityChangePropertyEntityType(v12);
    v14 = mlcore::Entity::valueForProperty<int>(this, v13) + 1;
    if (v14 > 0xA)
    {
      v15 = "Unknown";
    }

    else
    {
      v15 = (&off_1E84C8358)[v14];
    }

    std::string::basic_string[abi:ne200100]<0>(v37, v15);
    mediaplatform::FormatString<std::string>(&v41, "class = {0}", v37);
    v21 = mlcore::EntityChangePropertyChangeType(v20);
    v22 = mlcore::Entity::valueForProperty<int>(this, v21);
    if (v22 > 2)
    {
      v23 = "Unknown";
    }

    else
    {
      v23 = (&off_1E84C8340)[v22];
    }

    std::string::basic_string[abi:ne200100]<0>(v35, v23);
    mediaplatform::FormatString<std::string>(&v42, "type = {0}", v35);
    v30 = mlcore::EntityChangePropertySourceID(v29);
    v39 = mlcore::Entity::valueForProperty<long long>(this, v30);
    mediaplatform::FormatString<long long>(&v43, "source = {0}", &v39);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a2, &v40, &v44, 4uLL);
    for (j = 0; j != -12; j -= 3)
    {
      if (SHIBYTE(v43.__r_.__value_.__r.__words[j + 2]) < 0)
      {
        operator delete(*(&v43.__r_.__value_.__l.__data_ + j * 8));
      }
    }
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1D5AAB83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  v32 = (v30 + 119);
  v33 = -120;
  v34 = v32;
  while (1)
  {
    v35 = *v34;
    v34 -= 24;
    if (v35 < 0)
    {
      operator delete(*(v32 - 23));
    }

    v32 = v34;
    v33 += 24;
    if (!v33)
    {
      if (a15 < 0)
      {
        operator delete(__p);
      }

      if (a22 < 0)
      {
        operator delete(a17);
      }

      if (a28 < 0)
      {
        operator delete(a23);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t mlcore::EntityChangePropertyChangeType(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::EntityChangePropertyChangeType(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::EntityChangePropertyChangeType(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::EntityChangePropertyChangeType(void)::$_0 &&>>);
  }

  return mlcore::EntityChangePropertyChangeType(void)::property;
}

uint64_t mlcore::EntityChangePropertyEntityPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::EntityChangePropertyEntityPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::EntityChangePropertyEntityPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::EntityChangePropertyEntityPersistentID(void)::$_0 &&>>);
  }

  return mlcore::EntityChangePropertyEntityPersistentID(void)::property;
}

uint64_t mlcore::EntityChangePropertyEntityType(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::EntityChangePropertyEntityType(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::EntityChangePropertyEntityType(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::EntityChangePropertyEntityType(void)::$_0 &&>>);
  }

  return mlcore::EntityChangePropertyEntityType(void)::property;
}

uint64_t mlcore::EntityChangePropertySourceID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::EntityChangePropertySourceID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::EntityChangePropertySourceID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::EntityChangePropertySourceID(void)::$_0 &&>>);
  }

  return mlcore::EntityChangePropertySourceID(void)::property;
}

uint64_t mlcore::EntityChangePropertyChanges(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::EntityChangePropertyChanges(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::EntityChangePropertyChanges(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::EntityChangePropertyChanges(void)::$_0 &&>>);
  }

  return mlcore::EntityChangePropertyChanges(void)::property;
}

void sub_1D5AABDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5AAC054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5AAC314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5AAC5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5AAC894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::EntityChange::~EntityChange(mlcore::EntityChange *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

double mlcore::EntityChange::EntityChange(mlcore::EntityChange *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D7770;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D7770;
  return result;
}

uint64_t mlcore::EntityChange::EntityChange(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0u;
  v8 = (a1 + 136);
  *(a1 + 128) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  v9 = (a1 + 176);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 8) = &unk_1F50D7378;
  *(a1 + 216) = &unk_1F50D73A0;
  *(a1 + 224) = 0;
  *a1 = &unk_1F50D7770;
  v10 = (*(**a2 + 48))();
  v11 = (*(*v10 + 64))(v10);
  v12 = v11;
  __p = mlcore::EntityChangePropertyEntityType(v11);
  v32[0] = &__p;
  v13 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(v8, __p);
  *(v13 + 6) = v12;
  v14 = *(*a2 + 224);
  __p = mlcore::EntityChangePropertyEntityPersistentID(v13);
  v32[0] = &__p;
  v15 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v9, __p);
  *(v15 + 3) = v14;
  __p = mlcore::EntityChangePropertySourceID(v15);
  v32[0] = &__p;
  v16 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v9, __p);
  *(v16 + 3) = a4;
  __p = mlcore::EntityChangePropertyChangeType(v16);
  v32[0] = &__p;
  *(std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(v8, __p) + 6) = a3;
  if (a3 == 1)
  {
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    mlcore::PropertyCache::allProperties((*a2 + 8), &__p);
    v17 = __p;
    v18 = v30;
    if (__p != v30)
    {
      v19 = __p;
      do
      {
        v20 = *v19;
        v21 = (*(**a2 + 48))();
        if (v20 != (*(*v21 + 120))(v21))
        {
          std::vector<std::string>::push_back[abi:ne200100](v32, (v20 + 16));
        }

        ++v19;
      }

      while (v19 != v18);
    }

    if (v17)
    {
      operator delete(v17);
    }

    std::string::basic_string[abi:ne200100]<0>(v27, ",");
    v22 = mediaplatform::ComponentsJoinedByString<std::string>(&__p, v32, v27);
    v23 = mlcore::EntityChangePropertyChanges(v22);
    mlcore::Entity::setValueForProperty<std::string>(a1, &__p, v23);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    __p = v32;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v24 = std::string::basic_string[abi:ne200100]<0>(v32, "");
    v25 = mlcore::EntityChangePropertyChanges(v24);
    mlcore::Entity::setValueForProperty<std::string>(a1, v32, v25);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }
  }

  return a1;
}

{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0u;
  v8 = (a1 + 136);
  *(a1 + 128) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  v9 = (a1 + 176);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 8) = &unk_1F50D7378;
  *(a1 + 216) = &unk_1F50D73A0;
  *(a1 + 224) = 0;
  *a1 = &unk_1F50D7770;
  v10 = (*(**a2 + 48))();
  v11 = (*(*v10 + 64))(v10);
  v12 = v11;
  __p = mlcore::EntityChangePropertyEntityType(v11);
  v32[0] = &__p;
  v13 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(v8, __p);
  *(v13 + 6) = v12;
  v14 = *(*a2 + 224);
  __p = mlcore::EntityChangePropertyEntityPersistentID(v13);
  v32[0] = &__p;
  v15 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v9, __p);
  *(v15 + 3) = v14;
  __p = mlcore::EntityChangePropertySourceID(v15);
  v32[0] = &__p;
  v16 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(v9, __p);
  *(v16 + 3) = a4;
  __p = mlcore::EntityChangePropertyChangeType(v16);
  v32[0] = &__p;
  *(std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(v8, __p) + 6) = a3;
  if (a3 == 1)
  {
    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    mlcore::PropertyCache::allProperties((*a2 + 8), &__p);
    v17 = __p;
    v18 = v30;
    if (__p != v30)
    {
      v19 = __p;
      do
      {
        v20 = *v19;
        v21 = (*(**a2 + 48))();
        if (v20 != (*(*v21 + 120))(v21))
        {
          std::vector<std::string>::push_back[abi:ne200100](v32, (v20 + 16));
        }

        ++v19;
      }

      while (v19 != v18);
    }

    if (v17)
    {
      operator delete(v17);
    }

    std::string::basic_string[abi:ne200100]<0>(v27, ",");
    v22 = mediaplatform::ComponentsJoinedByString<std::string>(&__p, v32, v27);
    v23 = mlcore::EntityChangePropertyChanges(v22);
    mlcore::Entity::setValueForProperty<std::string>(a1, &__p, v23);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    __p = v32;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v24 = std::string::basic_string[abi:ne200100]<0>(v32, "");
    v25 = mlcore::EntityChangePropertyChanges(v24);
    mlcore::Entity::setValueForProperty<std::string>(a1, v32, v25);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }
  }

  return a1;
}

void sub_1D5AACE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  *v27 = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v28);
  _Unwind_Resume(a1);
}

void *mlcore::EntityChange::setEntityType(mlcore::EntityChange *this, int a2)
{
  v5[0] = mlcore::EntityChangePropertyEntityType(this);
  v5[1] = v5;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(this + 17, v5[0]);
  *(result + 6) = a2;
  return result;
}

void *mlcore::EntityChange::setEntityPersistentID(mlcore::EntityChange *this, uint64_t a2)
{
  v5[0] = mlcore::EntityChangePropertyEntityPersistentID(this);
  v5[1] = v5;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(this + 22, v5[0]);
  result[3] = a2;
  return result;
}

void *mlcore::EntityChange::setSourceID(mlcore::EntityChange *this, uint64_t a2)
{
  v5[0] = mlcore::EntityChangePropertySourceID(this);
  v5[1] = v5;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>(this + 22, v5[0]);
  result[3] = a2;
  return result;
}

void *mlcore::EntityChange::setChangeType(mlcore *a1, int a2)
{
  v5[0] = mlcore::EntityChangePropertyChangeType(a1);
  v5[1] = v5;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>(a1 + 17, v5[0]);
  *(result + 6) = a2;
  return result;
}

void mlcore::EntityChange::setChanges(mlcore *a1, uint64_t a2)
{
  v4 = mlcore::EntityChangePropertyChanges(a1);

  mlcore::Entity::setValueForProperty<std::string>(a1, a2, v4);
}

void sub_1D5AAD3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  *v27 = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v28);
  _Unwind_Resume(a1);
}

uint64_t mlcore::EntityChange::entityType(mlcore::EntityChange *this)
{
  v2 = mlcore::EntityChangePropertyEntityType(this);

  return mlcore::Entity::valueForProperty<int>(this, v2);
}

uint64_t mlcore::EntityChange::entityPersistentID(mlcore::EntityChange *this)
{
  v2 = mlcore::EntityChangePropertyEntityPersistentID(this);

  return mlcore::Entity::valueForProperty<long long>(this, v2);
}

uint64_t mlcore::EntityChange::changeType(mlcore::EntityChange *this)
{
  v2 = mlcore::EntityChangePropertyChangeType(this);

  return mlcore::Entity::valueForProperty<int>(this, v2);
}

uint64_t mlcore::EntityChange::sourceID(mlcore::EntityChange *this)
{
  v2 = mlcore::EntityChangePropertySourceID(this);

  return mlcore::Entity::valueForProperty<long long>(this, v2);
}

void mlcore::EntityChange::changes(mlcore::EntityChange *this@<X0>, std::string *a2@<X8>)
{
  v4 = mlcore::EntityChangePropertyChanges(this);

  mlcore::Entity::valueForProperty<std::string>(a2, this, v4);
}

void mlcore::EntityChange::setChanges(int8x8_t *a1, uint64_t *a2)
{
  memset(v11, 0, sizeof(v11));
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    std::vector<std::string>::push_back[abi:ne200100](v11, (*v3 + 16));
    v3 += 8;
  }

  std::string::basic_string[abi:ne200100]<0>(v7, ",");
  v5 = mediaplatform::ComponentsJoinedByString<std::string>(__p, v11, v7);
  v6 = mlcore::EntityChangePropertyChanges(v5);
  mlcore::Entity::setValueForProperty<std::string>(a1, __p, v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  __p[0] = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1D5AAD644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a16 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void mlcore::EntityChange::setChanges(int8x8_t *this, const mlcore::PropertyCache *a2)
{
  mlcore::PropertyCache::allProperties(a2, __p);
  mlcore::EntityChange::setChanges(this, __p);
  v3 = __p[0];
  if (__p[0])
  {

    operator delete(v3);
  }
}

void sub_1D5AAD6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::EntityChange::propertyChanges(mlcore::EntityChange *this@<X0>, void *a2@<X8>)
{
  v4 = mlcore::EntityChangePropertyEntityType(this);
  v5 = mlcore::Entity::valueForProperty<int>(this, v4);
  v6 = mlcore::EntityClass::classFromType(v5);
  v7 = mlcore::EntityChangePropertyChanges(v6);
  mlcore::Entity::valueForProperty<std::string>(&v17, this, v7);
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  mediaplatform::ComponentsSeparatedByString(&v17, __p, &v18);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = v18;
  v9 = v19;
  if (v18 != v19)
  {
    v14 = a2;
    v10 = 0;
    do
    {
      v11 = mlcore::EntityClass::propertyForName(v6, v8);
      if (v11)
      {
        v12 = v10;
        v13 = v10 >> 3;
        if (((v10 >> 3) + 1) >> 61)
        {
          v14[1] = v10;
          v14[2] = 0;
          *v14 = 0;
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        if (v10 >> 3 != -1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>((v10 >> 3) + 1);
        }

        *(8 * v13) = v11;
        v10 = 8 * v13 + 8;
        memcpy(0, 0, v12);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v14[1] = v10;
    v14[2] = 0;
    *v14 = 0;
  }

  v17.__r_.__value_.__r.__words[0] = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void sub_1D5AAD8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::PlaylistItemEntityQuery::_perform(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(*a2 + 24);
  v12 = *(*a2 + 16);
  v13 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v4 = *(v2 + 48);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v17[0].__vftable = mlcore::PlaylistPropertyName(v7.__d_.__rep_);
  v17[1].__vftable = mlcore::PlaylistPropertyIsSmart(v17[0].__vftable);
  v18 = mlcore::PlaylistPropertySmartCriteria(v17[1].__vftable);
  IsLimited = mlcore::PlaylistPropertySmartIsLimited(v18);
  v20[0] = mlcore::PlaylistPropertySmartLimitKind(IsLimited);
  v20[1] = mlcore::PlaylistPropertySmartLimitValue(v20[0]);
  v21 = mlcore::PlaylistPropertySmartLimitOrder(v20[1]);
  v22 = mlcore::PlaylistPropertySmartEvaluationOrder(v21);
  IsDynamic = mlcore::PlaylistPropertySmartIsDynamic(v22);
  v24 = mlcore::PlaylistPropertySmartReverseLimitOrder(IsDynamic);
  IsEnabledOnly = mlcore::PlaylistPropertySmartIsEnabledOnly(v24);
  v26 = mlcore::PlaylistPropertyPlayOrder(IsEnabledOnly);
  IsReversed = mlcore::PlaylistPropertyIsReversed(v26);
  IsSourceRemote = mlcore::PlaylistPropertyIsSourceRemote(IsReversed);
  v29 = mlcore::PlaylistPropertyDistinguishedKind(IsSourceRemote);
  memset(v16, 0, sizeof(v16));
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase * const*,mlcore::ModelPropertyBase * const*>(v16, v17, &v30, 0xFuLL);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 128);
  v10 = mlcore::TypedEntityClass<mlcore::Playlist>::sharedPointer();
  (*(*v10 + 120))(v10);
  operator new();
}

void sub_1D5AAF3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, dispatch_object_t object)
{
  if (STACK[0x338])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x338]);
  }

  object = &STACK[0x300];
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&object);
  v64 = 40;
  while (1)
  {
    v65 = *(&STACK[0x3B0] + v64);
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

    v64 -= 16;
    if (v64 == -8)
    {
      STACK[0x3B0] = &a35;
      std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v60);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      if (STACK[0x318])
      {
        operator delete(STACK[0x318]);
      }

      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      if (a31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a31);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1D5AAFB6C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void mlcore::PlaylistItemEntityQuery::_sortDescriptorsForDisplay(mlcore::PlaylistItemEntityQuery *this@<X0>, uint64_t a2@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = *(this + 7);
  if (v4 == *(this + 8))
  {
    v48 = *(this + 18);
    v63[0] = *(this + 17);
    v63[1] = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlcore::SortDescriptorsForPlaylistDisplayOrder(v63, 0, a2);
  }

  else
  {
    v5 = *(v4 + 8);
    if (v5 != mlcore::PlaylistItemPropertyPosition(this))
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v6 = *(this + 7);
      v7 = *(this + 8);
      if (v6 != v7)
      {
        v53 = *(this + 8);
        v52 = a2;
        do
        {
          v59 = &unk_1F50D6EF0;
          v8 = *(v6 + 16);
          v60 = *(v6 + 8);
          v61 = v8;
          v9 = v60;
          if ((*(*v60 + 11))(v60))
          {
            v10 = **v9;
            v12 = (*(*v11 + 16))(v11);
            v64 = (*(*v11 + 24))(v11);
            v57 = 0;
            v58 = 0;
            __p = 0;
            std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase * const*,mlcore::ModelPropertyBase * const*>(&__p, &v64, &v65, 1uLL);
            v13 = v57;
            v14 = v58;
            v15 = __p;
LABEL_7:
            v16 = v15;
            while (1)
            {
              v17 = (*(*v12 + 11))(v12);
              if (!v17)
              {
                break;
              }

              v18 = **v12;
              v12 = (*(*v19 + 16))(v19);
              v20 = (*(*v19 + 24))(v19);
              v21 = v20;
              if (v13 >= v14)
              {
                v22 = v13 - v15;
                v23 = v13 - v15;
                v24 = v23 + 1;
                if ((v23 + 1) >> 61)
                {
                  __p = v15;
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                if ((v14 - v15) >> 2 > v24)
                {
                  v24 = (v14 - v15) >> 2;
                }

                if (v14 - v15 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v25 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v25 = v24;
                }

                if (v25)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::ModelPropertyBase *>>(v25);
                }

                v15 = 0;
                v26 = (8 * v23);
                v14 = 0;
                *v26 = v21;
                v13 = v26 + 1;
                memcpy(0, v16, v22);
                a2 = v52;
                if (v16)
                {
                  operator delete(v16);
                }

                goto LABEL_7;
              }

              *v13++ = v20;
            }

            v57 = v13;
            v58 = v14;
            __p = v15;
            if (v12 != mlcore::PlaylistItemPropertyItemPersistentID(v17))
            {
              __assert_rtn("_sortDescriptorsForDisplay", "PlaylistItemEntityQuery.cpp", 402, "baseProperty == PlaylistItemPropertyItemPersistentID()");
            }

            if (v13 == v15)
            {
              v31 = 0;
            }

            else
            {
              v31 = 0;
              do
              {
                v33 = *--v13;
                v32 = v33;
                if (v31)
                {
                  (*(*v11 + 32))(&v55, v11);
                  mlcore::GetForeignPropertyBase(v31, v32, &v55);
                }

                v31 = v32;
                v16 = __p;
              }

              while (v13 != __p);
            }

            v54 = v61;
            v38 = *(a2 + 8);
            v39 = *(a2 + 16);
            v7 = v53;
            if (v38 >= v39)
            {
              v41 = 0xAAAAAAAAAAAAAAABLL * ((v38 - *a2) >> 3);
              v42 = v41 + 1;
              if (v41 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v43 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *a2) >> 3);
              if (2 * v43 > v42)
              {
                v42 = 2 * v43;
              }

              if (v43 >= 0x555555555555555)
              {
                v44 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v44 = v42;
              }

              v68 = a2;
              if (v44)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::SortDescriptor>>(v44);
              }

              v47 = 24 * v41;
              v64 = 0;
              v65 = v47;
              v67 = 0;
              *v47 = &unk_1F50D6EF0;
              *(v47 + 16) = v54;
              *(v47 + 8) = v31;
              v66 = 24 * v41 + 24;
              std::vector<mlcore::SortDescriptor>::__swap_out_circular_buffer(a2, &v64);
              v40 = *(a2 + 8);
              std::__split_buffer<mlcore::SortDescriptor>::~__split_buffer(&v64);
            }

            else
            {
              *v38 = &unk_1F50D6EF0;
              *(v38 + 16) = v54;
              *(v38 + 8) = v31;
              v40 = v38 + 24;
            }

            *(a2 + 8) = v40;
            if (v16)
            {
              v57 = v16;
              operator delete(v16);
            }
          }

          else
          {
            v27 = *(a2 + 8);
            v28 = *(a2 + 16);
            if (v27 >= v28)
            {
              v34 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *a2) >> 3);
              v35 = v34 + 1;
              if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v36 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a2) >> 3);
              if (2 * v36 > v35)
              {
                v35 = 2 * v36;
              }

              if (v36 >= 0x555555555555555)
              {
                v37 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v37 = v35;
              }

              v68 = a2;
              if (v37)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<mlcore::SortDescriptor>>(v37);
              }

              v45 = 24 * v34;
              v64 = 0;
              v65 = v45;
              v67 = 0;
              *v45 = &unk_1F50D6EF0;
              v46 = v60;
              *(v45 + 16) = v61;
              *(v45 + 8) = v46;
              v66 = 24 * v34 + 24;
              std::vector<mlcore::SortDescriptor>::__swap_out_circular_buffer(a2, &v64);
              v30 = *(a2 + 8);
              std::__split_buffer<mlcore::SortDescriptor>::~__split_buffer(&v64);
            }

            else
            {
              *v27 = &unk_1F50D6EF0;
              v29 = v60;
              *(v27 + 16) = v61;
              *(v27 + 8) = v29;
              v30 = v27 + 24;
            }

            *(a2 + 8) = v30;
          }

          v6 += 24;
        }

        while (v6 != v7);
      }

      goto LABEL_66;
    }

    v49 = *(*(this + 7) + 16);
    v48 = *(this + 18);
    v62[0] = *(this + 17);
    v62[1] = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlcore::SortDescriptorsForPlaylistDisplayOrder(v62, v49 == 1, a2);
  }

  if (!v48)
  {
LABEL_66:
    v51 = *MEMORY[0x1E69E9840];
    return;
  }

  v50 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v48);
}

void sub_1D5AB038C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,false>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v11 = v9 - 216;
  v12 = a2;
  while (1)
  {
    v13 = v12 - v10;
    v14 = 0x84BDA12F684BDA13 * ((v12 - v10) >> 3);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v10, v10 + 216, v12 - 216, a3);
        case 4:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v10, v10 + 216, v10 + 432, v12 - 216, a3);
        case 5:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v10, v10 + 216, v10 + 432, v10 + 648, v12 - 216, a3);
      }
    }

    else
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v35 = *(a3 + 24);
        if (v35)
        {
          result = (*(*v35 + 48))(v35, v12 - 216, v10);
          if (result)
          {
            return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(v10, v12 - 216);
          }

          return result;
        }

LABEL_153:
        std::__throw_bad_function_call[abi:ne200100]();
      }
    }

    if (v13 <= 5183)
    {
      v36 = v10 + 216;
      v38 = v10 == v12 || v36 == v12;
      if (a5)
      {
        if (v38)
        {
          return result;
        }

        v39 = 0;
        v40 = v10;
        while (1)
        {
          v41 = *(a3 + 24);
          if (!v41)
          {
            break;
          }

          v42 = v36;
          result = (*(*v41 + 48))(v41, v36, v40);
          if (result)
          {
            mlcore::PropertyCache::PropertyCache(v82, v42);
            v43 = v39;
            while (1)
            {
              mlcore::PropertyCache::operator=(v10 + v43 + 216, v10 + v43);
              if (!v43)
              {
                break;
              }

              v44 = *(a3 + 24);
              if (!v44)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              v45 = (*(*v44 + 48))(v44, v82, v10 + v43 - 216);
              v43 -= 216;
              if ((v45 & 1) == 0)
              {
                v46 = v10 + v43 + 216;
                goto LABEL_92;
              }
            }

            v46 = v10;
LABEL_92:
            mlcore::PropertyCache::operator=(v46, v82);
            result = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v82);
          }

          v36 = v42 + 216;
          v39 += 216;
          v40 = v42;
          if (v42 + 216 == v12)
          {
            return result;
          }
        }
      }

      else
      {
        if (v38)
        {
          return result;
        }

        while (1)
        {
          v75 = *(a3 + 24);
          if (!v75)
          {
            break;
          }

          v76 = v36;
          result = (*(*v75 + 48))(v75, v36, v10);
          if (result)
          {
            mlcore::PropertyCache::PropertyCache(v82, v76);
            do
            {
              mlcore::PropertyCache::operator=(v10 + 216, v10);
              v77 = *(a3 + 24);
              if (!v77)
              {
                std::__throw_bad_function_call[abi:ne200100]();
              }

              v10 -= 216;
            }

            while (((*(*v77 + 48))(v77, v82, v10) & 1) != 0);
            mlcore::PropertyCache::operator=(v10 + 216, v82);
            result = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v82);
          }

          v36 = v76 + 216;
          v10 = v76;
          if (v76 + 216 == v12)
          {
            return result;
          }
        }
      }

      goto LABEL_153;
    }

    if (!a4)
    {
      break;
    }

    v15 = v10 + 216 * (v14 >> 1);
    if (v13 < 0x6C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v15, v10, v12 - 216, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v10, v15, v12 - 216, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v10 + 216, v15 - 216, v12 - 432, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v10 + 432, v15 + 216, v12 - 648, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(v15 - 216, v15, v15 + 216, a3);
      mlcore::PropertyCache::PropertyCache(v82, v10);
      mlcore::PropertyCache::operator=(v10, v15);
      mlcore::PropertyCache::operator=(v15, v82);
      mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v82);
    }

    --a4;
    if ((a5 & 1) == 0)
    {
      v16 = *(a3 + 24);
      if (!v16)
      {
        goto LABEL_153;
      }

      if (((*(*v16 + 48))(v16, v11, v10) & 1) == 0)
      {
        mlcore::PropertyCache::PropertyCache(v82, v10);
        v26 = *(a3 + 24);
        if (!v26)
        {
          goto LABEL_148;
        }

        if ((*(*v26 + 48))(v26, v82, v12 - 216))
        {
          v9 = v10;
          while (1)
          {
            v27 = *(a3 + 24);
            if (!v27)
            {
              break;
            }

            v9 += 216;
            if ((*(*v27 + 48))(v27, v82, v9))
            {
              goto LABEL_55;
            }
          }

LABEL_148:
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v28 = v10 + 216;
        do
        {
          v9 = v28;
          if (v28 >= v12)
          {
            break;
          }

          v29 = *(a3 + 24);
          if (!v29)
          {
            goto LABEL_148;
          }

          v30 = (*(*v29 + 48))(v29, v82, v28);
          v28 = v9 + 216;
        }

        while (!v30);
LABEL_55:
        v31 = v12;
        if (v9 < v12)
        {
          v31 = v12;
          do
          {
            v32 = *(a3 + 24);
            if (!v32)
            {
              goto LABEL_148;
            }

            v31 -= 216;
          }

          while (((*(*v32 + 48))(v32, v82, v31) & 1) != 0);
        }

LABEL_65:
        if (v9 < v31)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(v9, v31);
          do
          {
            v33 = *(a3 + 24);
            if (!v33)
            {
              goto LABEL_148;
            }

            v9 += 216;
          }

          while (!(*(*v33 + 48))(v33, v82, v9));
          while (1)
          {
            v34 = *(a3 + 24);
            if (!v34)
            {
              goto LABEL_148;
            }

            v31 -= 216;
            if (((*(*v34 + 48))(v34, v82, v31) & 1) == 0)
            {
              goto LABEL_65;
            }
          }
        }

        a2 = v12;
        if (v9 - 216 != v10)
        {
          mlcore::PropertyCache::operator=(v10, v9 - 216);
        }

        mlcore::PropertyCache::operator=(v9 - 216, v82);
        result = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v82);
        a5 = 0;
        goto LABEL_2;
      }
    }

    mlcore::PropertyCache::PropertyCache(v82, v10);
    v17 = v10;
    do
    {
      v18 = *(a3 + 24);
      if (!v18)
      {
        goto LABEL_147;
      }

      v17 += 216;
    }

    while (((*(*v18 + 48))(v18, v17, v82) & 1) != 0);
    v19 = v12;
    if (v17 - 216 != v10)
    {
      while (1)
      {
        v20 = *(a3 + 24);
        if (!v20)
        {
          break;
        }

        v19 -= 216;
        if ((*(*v20 + 48))(v20, v19, v82))
        {
          goto LABEL_29;
        }
      }

LABEL_147:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v19 = v12;
    do
    {
      if (v17 >= v19)
      {
        break;
      }

      v21 = *(a3 + 24);
      if (!v21)
      {
        goto LABEL_147;
      }

      v19 -= 216;
    }

    while (((*(*v21 + 48))(v21, v19, v82) & 1) == 0);
LABEL_29:
    a2 = v12;
    v9 = v17;
    if (v17 < v19)
    {
      v22 = v19;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(v9, v22);
        do
        {
          v23 = *(a3 + 24);
          if (!v23)
          {
LABEL_146:
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v9 += 216;
        }

        while (((*(*v23 + 48))(v23, v9, v82) & 1) != 0);
        do
        {
          v24 = *(a3 + 24);
          if (!v24)
          {
            goto LABEL_146;
          }

          v22 -= 216;
        }

        while (!(*(*v24 + 48))(v24, v22, v82));
      }

      while (v9 < v22);
    }

    v12 = v9 - 216;
    if (v9 - 216 != v10)
    {
      mlcore::PropertyCache::operator=(v10, v9 - 216);
    }

    mlcore::PropertyCache::operator=(v9 - 216, v82);
    mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v82);
    if (v17 < v19)
    {
      goto LABEL_44;
    }

    v25 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*>(v10, v9 - 216, a3);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*>(v9, a2, a3);
    if (!result)
    {
      if ((v25 & 1) == 0)
      {
LABEL_44:
        result = std::__introsort<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,false>(v10, v9 - 216, a3, a4, a5 & 1);
        a5 = 0;
      }

      goto LABEL_2;
    }

    if (v25)
    {
      return result;
    }
  }

  if (v10 != v12)
  {
    v47 = (v14 - 2) >> 1;
    v78 = v12;
    v80 = v47;
    do
    {
      v48 = v47;
      if (v80 >= v47)
      {
        v49 = (2 * v47) | 1;
        v50 = v10 + 216 * v49;
        if (2 * v47 + 2 < v14)
        {
          v51 = *(a3 + 24);
          if (!v51)
          {
            goto LABEL_153;
          }

          if ((*(*v51 + 48))(v51, v10 + 216 * v49, v50 + 216))
          {
            v50 += 216;
            v49 = 2 * v48 + 2;
          }
        }

        v52 = *(a3 + 24);
        if (!v52)
        {
          goto LABEL_153;
        }

        v53 = v10 + 216 * v48;
        result = (*(*v52 + 48))(v52, v50, v53);
        if ((result & 1) == 0)
        {
          mlcore::PropertyCache::PropertyCache(v82, v10 + 216 * v48);
          do
          {
            v54 = v50;
            mlcore::PropertyCache::operator=(v53, v50);
            if (v80 < v49)
            {
              break;
            }

            v55 = (2 * v49) | 1;
            v50 = v10 + 216 * v55;
            v49 = 2 * v49 + 2;
            if (v49 >= v14)
            {
              v49 = v55;
            }

            else
            {
              v56 = *(a3 + 24);
              if (!v56)
              {
                goto LABEL_151;
              }

              if ((*(*v56 + 48))(v56, v10 + 216 * v55, v50 + 216))
              {
                v50 += 216;
              }

              else
              {
                v49 = v55;
              }
            }

            v57 = *(a3 + 24);
            if (!v57)
            {
LABEL_151:
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v53 = v54;
          }

          while (!(*(*v57 + 48))(v57, v50, v82));
          mlcore::PropertyCache::operator=(v54, v82);
          result = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v82);
        }
      }

      v47 = v48 - 1;
    }

    while (v48);
    v58 = 0x84BDA12F684BDA13 * (v13 >> 3);
    v59 = v78;
    do
    {
      if (v58 >= 2)
      {
        v79 = v59;
        mlcore::PropertyCache::PropertyCache(v81, v10);
        v60 = 0;
        v61 = v10;
        do
        {
          v62 = v61 + 216 * v60;
          v63 = v62 + 216;
          v64 = 2 * v60;
          v60 = (2 * v60) | 1;
          v65 = v64 + 2;
          if (v64 + 2 < v58)
          {
            v66 = *(a3 + 24);
            if (!v66)
            {
              goto LABEL_149;
            }

            v67 = v62 + 432;
            if ((*(*v66 + 48))(v66, v63, v62 + 432))
            {
              v63 = v67;
              v60 = v65;
            }
          }

          mlcore::PropertyCache::operator=(v61, v63);
          v61 = v63;
        }

        while (v60 <= ((v58 - 2) >> 1));
        v59 = v79;
        if (v63 == v79 - 216)
        {
          mlcore::PropertyCache::operator=(v63, v81);
        }

        else
        {
          mlcore::PropertyCache::operator=(v63, v79 - 216);
          mlcore::PropertyCache::operator=(v79 - 216, v81);
          v68 = v63 - v10 + 216;
          if (v68 >= 217)
          {
            v69 = *(a3 + 24);
            if (!v69)
            {
LABEL_149:
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v70 = (-2 - 0x7B425ED097B425EDLL * (v68 >> 3)) >> 1;
            v71 = v10 + 216 * v70;
            v59 = v79;
            if ((*(*v69 + 48))(v69, v71, v63))
            {
              mlcore::PropertyCache::PropertyCache(v82, v63);
              do
              {
                v72 = v71;
                mlcore::PropertyCache::operator=(v63, v71);
                if (!v70)
                {
                  break;
                }

                v73 = *(a3 + 24);
                if (!v73)
                {
                  std::__throw_bad_function_call[abi:ne200100]();
                }

                v70 = (v70 - 1) >> 1;
                v71 = v10 + 216 * v70;
                v63 = v72;
              }

              while (((*(*v73 + 48))(v73, v71, v82) & 1) != 0);
              mlcore::PropertyCache::operator=(v72, v82);
              mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v82);
            }
          }
        }

        result = mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v81);
      }

      v59 -= 216;
    }

    while (v58-- > 2);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::vector<mlcore::PropertyCache>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<mlcore::PropertyCache>::__emplace_back_slow_path<mlcore::PropertyCache const&>(a1, a2);
  }

  else
  {
    mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::PropertyCacheBase(a1[1], a2);
    *v3 = &unk_1F50D7378;
    v3[26] = &unk_1F50D73A0;
    result = (v3 + 27);
    a1[1] = (v3 + 27);
  }

  a1[1] = result;
  return result;
}

void std::__tree<std::string>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::string>::destroy(*a1);
    std::__tree<std::string>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<mlcore::SmartPlaylistEntityCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void ***std::unique_ptr<std::vector<std::string>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1DA6EDD40](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::vector<std::string> *,std::shared_ptr<std::vector<std::string>>::__shared_ptr_default_delete<std::vector<std::string>,std::vector<std::string>>,std::allocator<std::vector<std::string>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D5B03750))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<std::vector<std::string> *,std::shared_ptr<std::vector<std::string>>::__shared_ptr_default_delete<std::vector<std::string>,std::vector<std::string>>,std::allocator<std::vector<std::string>>>::__on_zero_shared(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x1DA6EDD40);
  }

  return result;
}

void std::__shared_ptr_pointer<std::vector<std::string> *,std::shared_ptr<std::vector<std::string>>::__shared_ptr_default_delete<std::vector<std::string>,std::vector<std::string>>,std::allocator<std::vector<std::string>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void *std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(uint64_t a1, uint64_t a2)
{
  mlcore::PropertyCache::PropertyCache(v5, a1);
  mlcore::PropertyCache::operator=(a1, a2);
  mlcore::PropertyCache::operator=(a2, v5);
  return mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v5);
}

void sub_1D5AB1510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(va);
  _Unwind_Resume(a1);
}

void *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  if (!v5)
  {
    goto LABEL_19;
  }

  v9 = (*(*v5 + 48))(v5, a2, a1);
  v10 = *(a4 + 24);
  if ((v9 & 1) == 0)
  {
    if (v10)
    {
      result = (*(*v10 + 48))(v10, a3, a2);
      if (!result)
      {
        return result;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a2, a3);
      v13 = *(a4 + 24);
      if (v13)
      {
        result = (*(*v13 + 48))(v13, a2, a1);
        if (!result)
        {
          return result;
        }

        v11 = a1;
        v14 = a2;
        goto LABEL_15;
      }
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_19;
  }

  if (!(*(*v10 + 48))(v10, a3, a2))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a1, a2);
    v15 = *(a4 + 24);
    if (v15)
    {
      result = (*(*v15 + 48))(v15, a3, a2);
      if (!result)
      {
        return result;
      }

      v11 = a2;
      goto LABEL_14;
    }

LABEL_19:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v11 = a1;
LABEL_14:
  v14 = a3;
LABEL_15:

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(v11, v14);
}

void *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(a1, a2, a3, a5);
  v10 = *(a5 + 24);
  if (!v10)
  {
    goto LABEL_11;
  }

  result = (*(*v10 + 48))(v10, a4, a3);
  if (!result)
  {
    return result;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a3, a4);
  v12 = *(a5 + 24);
  if (!v12)
  {
    goto LABEL_11;
  }

  result = (*(*v12 + 48))(v12, a3, a2);
  if (!result)
  {
    return result;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a2, a3);
  v13 = *(a5 + 24);
  if (!v13)
  {
LABEL_11:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v13 + 48))(v13, a2, a1);
  if (result)
  {

    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a1, a2);
  }

  return result;
}

void *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(a1, a2, a3, a4, a6);
  v12 = *(a6 + 24);
  if (!v12)
  {
    goto LABEL_13;
  }

  result = (*(*v12 + 48))(v12, a5, a4);
  if (!result)
  {
    return result;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a4, a5);
  v14 = *(a6 + 24);
  if (!v14)
  {
    goto LABEL_13;
  }

  result = (*(*v14 + 48))(v14, a4, a3);
  if (!result)
  {
    return result;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a3, a4);
  v15 = *(a6 + 24);
  if (!v15)
  {
    goto LABEL_13;
  }

  result = (*(*v15 + 48))(v15, a3, a2);
  if (!result)
  {
    return result;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a2, a3);
  v16 = *(a6 + 24);
  if (!v16)
  {
LABEL_13:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v16 + 48))(v16, a2, a1);
  if (result)
  {

    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a1, a2);
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(a1, a1 + 216, a2 - 216, a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(a1, a1 + 216, a1 + 432, a2 - 216, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(a1, a1 + 216, a1 + 432, a1 + 648, a2 - 216, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
LABEL_31:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v7 + 48))(v7, a2 - 216, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<mlcore::PropertyCache *&,mlcore::PropertyCache *&>(a1, a2 - 216);
      }

      return 1;
    }
  }

  v8 = a1 + 432;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(mlcore::PropertyCache const&,mlcore::PropertyCache const&)> &,mlcore::PropertyCache*,0>(a1, a1 + 216, a1 + 432, a3);
  v9 = a1 + 648;
  if (a1 + 648 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a3 + 24);
      if (!v12)
      {
        goto LABEL_31;
      }

      if ((*(*v12 + 48))(v12, v9, v8))
      {
        mlcore::PropertyCache::PropertyCache(v19, v9);
        v13 = v10;
        while (1)
        {
          mlcore::PropertyCache::operator=(a1 + v13 + 648, a1 + v13 + 432);
          if (v13 == -432)
          {
            break;
          }

          v14 = *(a3 + 24);
          if (!v14)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v15 = (*(*v14 + 48))(v14, v19, a1 + v13 + 216);
          v13 -= 216;
          if ((v15 & 1) == 0)
          {
            v16 = a1 + v13 + 648;
            goto LABEL_22;
          }
        }

        v16 = a1;
LABEL_22:
        mlcore::PropertyCache::operator=(v16, v19);
        if (++v11 == 8)
        {
          v17 = v9 + 216 == a2;
          mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v19);
          return v17;
        }

        mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(v19);
      }

      v8 = v9;
      v10 += 216;
      v9 += 216;
    }

    while (v9 != a2);
  }

  return 1;
}

void sub_1D5AB1BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(va);
  _Unwind_Resume(a1);
}

void (***std::vector<mlcore::SortDescriptor>::__swap_out_circular_buffer(void (****a1)(void), void *a2))(void)
{
  v4 = a2[1];
  result = *a1;
  v6 = a1[1];
  v8 = (v4 - (v6 - result));
  if (v6 != result)
  {
    v9 = v4 - 8 * (v6 - result);
    v10 = result;
    v11 = v8;
    do
    {
      *v11 = &unk_1F50D6EF0;
      v12 = v10[1];
      *(v11 + 4) = *(v10 + 4);
      v11[1] = v12;
      v10 += 3;
      v11 += 3;
      v9 += 24;
    }

    while (v10 != v6);
    v13 = result;
    v14 = result;
    do
    {
      v15 = *v14;
      v14 += 3;
      (*v15)();
      v13 += 3;
    }

    while (v14 != v6);
    result = *a1;
  }

  a2[1] = v8;
  *a1 = v8;
  a1[1] = result;
  a2[1] = result;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<mlcore::SortDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<mlcore::PlaylistItemEntityQuery::_perform(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0,std::allocator<mlcore::PlaylistItemEntityQuery::_perform(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0>,void ()(mediaplatform::DatabaseResultList,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore23PlaylistItemEntityQuery8_performENSt3__110shared_ptrINS_11TransactionEEENS1_8functionIFvNS2_INS_11QueryResultEEEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::PlaylistItemEntityQuery::_perform(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0,std::allocator<mlcore::PlaylistItemEntityQuery::_perform(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0>,void ()(mediaplatform::DatabaseResultList,BOOL &)>::operator()(uint64_t a1, int *a2, _BYTE *a3)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v5 = *(a1 + 32);
  v15 = 0u;
  v16 = 0u;
  v17 = 1065353216;
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  v21 = 0u;
  v22 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 1065353216;
  v26 = 1065353216;
  v27 = 0u;
  v28 = 0u;
  v29 = 1065353216;
  v14 = &unk_1F50D7378;
  v30 = &unk_1F50D73A0;
  v6 = *(a1 + 8);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*v6 != v8)
  {
    v9 = 0;
    do
    {
      (*(**v7 + 56))(*v7, &v14, &v12, v9);
      v9 = (v9 + 1);
      ++v7;
    }

    while (v7 != v8);
  }

  if ((**(a1 + 16) & 1) != 0 && (v10 = **(a1 + 24), v11 = mlcore::PlaylistItemEntityQuery::_smartLimitingValueFromCache(v5, &v14), **(a1 + 24) = v10 - v11, v10 - v11 < 0))
  {
    *a3 = 1;
  }

  else
  {
    std::vector<mlcore::PropertyCache>::push_back[abi:ne200100](*(a1 + 40), &v14);
  }

  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(&v14);
  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }
}

void sub_1D5AB1F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

uint64_t mlcore::PlaylistItemEntityQuery::_smartLimitingValueFromCache(mlcore::PlaylistItemEntityQuery *this, const mlcore::PropertyCache *a2)
{
  v3 = *(this + 17);
  v4 = mlcore::PlaylistPropertySmartLimitKind(this);
  v5 = mlcore::Entity::valueForProperty<int>(v3, v4);
  result = 0;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_7:
    v7 = mlcore::ItemPropertyTotalTime(0);
    return mlcore::PropertyCacheBase<double,std::string,mediaplatform::Data>::valueForProperty(a2, v7);
  }

  if (v5 != 4)
  {
    if (v5 != 3)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_9:
  v8 = mlcore::ItemPropertyFileSize(0);

  return mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::valueForProperty(a2, v8);
}

__n128 std::__function::__func<mlcore::PlaylistItemEntityQuery::_perform(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0,std::allocator<mlcore::PlaylistItemEntityQuery::_perform(std::shared_ptr<mlcore::Transaction>,std::function<void ()(std::shared_ptr<mlcore::QueryResult>)>)::$_0>,void ()(mediaplatform::DatabaseResultList,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F50D2DF8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<mlcore::SearchPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void **std::default_delete<std::vector<long long>>::operator()[abi:ne200100](void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1DA6EDD40);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::vector<long long> *,std::shared_ptr<std::vector<long long>>::__shared_ptr_default_delete<std::vector<long long>,std::vector<long long>>,std::allocator<std::vector<long long>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D5B03449))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<std::vector<long long> *,std::shared_ptr<std::vector<long long>>::__shared_ptr_default_delete<std::vector<long long>,std::vector<long long>>,std::allocator<std::vector<long long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t std::__function::__value_func<void ()(mlcore::PropertyCache const&,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<std::shared_ptr<mlcore::Playlist> mlcore::GetEntity<mlcore::Playlist>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,long long,std::vector<mlcore::ModelPropertyBase *> const&)::{lambda(mlcore::PropertyCache const&,BOOL &)#1},std::allocator<std::shared_ptr<mlcore::Playlist> mlcore::GetEntity<mlcore::Playlist>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,long long,std::vector<mlcore::ModelPropertyBase *> const&)::{lambda(mlcore::PropertyCache const&,BOOL &)#1}>,void ()(mlcore::PropertyCache const&,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore9GetEntityINS_8PlaylistEEENSt3__110shared_ptrIT_EENS3_INS_17DeviceLibraryViewEEENS3_INS_11TransactionEEExRKNS2_6vectorIPNS_17ModelPropertyBaseENS2_9allocatorISC_EEEEEUlRKNS_13PropertyCacheERbE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<mlcore::Playlist> mlcore::GetEntity<mlcore::Playlist>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,long long,std::vector<mlcore::ModelPropertyBase *> const&)::{lambda(mlcore::PropertyCache const&,BOOL &)#1},std::allocator<std::shared_ptr<mlcore::Playlist> mlcore::GetEntity<mlcore::Playlist>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,long long,std::vector<mlcore::ModelPropertyBase *> const&)::{lambda(mlcore::PropertyCache const&,BOOL &)#1}>,void ()(mlcore::PropertyCache const&,BOOL &)>::operator()(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  std::allocate_shared[abi:ne200100]<mlcore::Playlist,std::allocator<mlcore::Playlist>,long long &,0>();
}

__n128 std::__function::__func<std::shared_ptr<mlcore::Playlist> mlcore::GetEntity<mlcore::Playlist>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,long long,std::vector<mlcore::ModelPropertyBase *> const&)::{lambda(mlcore::PropertyCache const&,BOOL &)#1},std::allocator<std::shared_ptr<mlcore::Playlist> mlcore::GetEntity<mlcore::Playlist>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,long long,std::vector<mlcore::ModelPropertyBase *> const&)::{lambda(mlcore::PropertyCache const&,BOOL &)#1}>,void ()(mlcore::PropertyCache const&,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F50D2C40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::shared_ptr<mlcore::PropertiesQuery::Result> mlcore::GetQueryResult<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,std::shared_ptr<mlcore::PropertiesQuery::Result>)::{lambda(std::shared_ptr<mlcore::PropertiesQueryResult>)#1},std::allocator<std::allocator>,void ()(std::shared_ptr<mlcore::PropertiesQuery::Result> mlcore::GetQueryResult<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,std::shared_ptr<mlcore::PropertiesQuery::Result>)::{lambda(std::shared_ptr<mlcore::PropertiesQueryResult>)#1})>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore14GetQueryResultINS_15PropertiesQueryEEENSt3__110shared_ptrINT_6ResultEEENS3_INS_17DeviceLibraryViewEEENS3_INS_11TransactionEEENS3_IS4_EEEUlNS3_INS_21PropertiesQueryResultEEEE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<std::shared_ptr<mlcore::PropertiesQuery::Result> mlcore::GetQueryResult<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,std::shared_ptr<mlcore::PropertiesQuery::Result>)::{lambda(std::shared_ptr<mlcore::PropertiesQueryResult>)#1},std::allocator<std::allocator>,void ()(std::shared_ptr<mlcore::PropertiesQuery::Result> mlcore::GetQueryResult<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,std::shared_ptr<mlcore::PropertiesQuery::Result>)::{lambda(std::shared_ptr<mlcore::PropertiesQueryResult>)#1})>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v5[1];
  *v5 = v3;
  v5[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  dispatch_semaphore_signal(**(a1 + 16));
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

__n128 std::__function::__func<std::shared_ptr<mlcore::PropertiesQuery::Result> mlcore::GetQueryResult<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,std::shared_ptr<mlcore::PropertiesQuery::Result>)::{lambda(std::shared_ptr<mlcore::PropertiesQueryResult>)#1},std::allocator<std::allocator>,void ()(std::shared_ptr<mlcore::PropertiesQuery::Result> mlcore::GetQueryResult<mlcore::PropertiesQuery>(std::shared_ptr<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::Transaction>,std::shared_ptr<mlcore::PropertiesQuery::Result>)::{lambda(std::shared_ptr<mlcore::PropertiesQueryResult>)#1})>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F50D3270;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void mlcore::PlaylistItemEntityQuery::_allPropertiesToFetch(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 152))
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = 1065353216;
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    mlcore::PlaylistItemEntityQuery::_resultPropertiesToFetch(a1, __p);
    v7 = __p[0];
    v8 = __p[1];
    while (v7 != v8)
    {
      v20 = *v7;
      mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a3, &v20);
      ++v7;
    }

    std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v23);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    mlcore::Playlist::filterPredicate(*(a1 + 136), &v20);
    if (v20)
    {
      (*(*v20 + 56))(__p);
      v10 = __p[0];
      v11 = __p[1];
      while (v10 != v11)
      {
        v25 = *v10;
        mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a3, &v25);
        ++v10;
      }

      std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v23);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *a2;
      if (*a2)
      {
        v19 = v12;
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *a2;
      if (*a2)
      {
        v19 = *(a1 + 16);
LABEL_28:
        mlcore::LibraryView::_predicateByApplyingFilters(__p, *(a1 + 8), v14, &v19);
        v12 = *__p;
        if (v13)
        {
          v17 = *__p;
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          v12 = v17;
        }
      }
    }

    if (v12.n128_u64[0])
    {
      v18 = v12.n128_u64[1];
      (*(*v12.n128_u64[0] + 56))(__p, v12);
      v15 = __p[0];
      v16 = __p[1];
      while (v15 != v16)
      {
        v25 = *v15;
        mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a3, &v25);
        ++v15;
      }

      std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v23);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v12.n128_u64[1] = v18;
    }

    if (v12.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12.n128_u64[1]);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    return;
  }

  v9 = *(a2 + 8);
  v24[0] = *a2;
  v24[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlcore::EntityQuery::_allPropertiesToFetch(a1, v24, a3);
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1D5AB2984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::~OrderedSet(v14);
  _Unwind_Resume(a1);
}

void mlcore::PlaylistItemEntityQuery::_resultPropertiesToFetch(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  v34 = (*(**(a1 + 8) + 120))(*(a1 + 8));
  v4 = mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a2, &v34);
  v5 = *(a1 + 136);
  IsLimited = mlcore::PlaylistPropertySmartIsLimited(v4);
  v7 = mlcore::Entity::valueForProperty<int>(v5, IsLimited);
  v8 = *(a1 + 144);
  v33[0] = *(a1 + 136);
  v33[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = mlcore::PropertyForPlaylistSmartLimitKind(v33);
  v10 = v9;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v7 && v10)
  {
    v11 = *(a1 + 144);
    v32[0] = *(a1 + 136);
    v32[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = mlcore::PropertyForPlaylistSmartLimitKind(v32);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v34 = v12;
    if (v12)
    {
      mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a2, &v34);
    }
  }

  else if (!v7)
  {
    goto LABEL_21;
  }

  v13 = *(a1 + 144);
  v31[0] = *(a1 + 136);
  v31[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlcore::SortDescriptorsForPlaylistLimitOrder(v31, 0, &v34);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = v34;
  for (i = v35; v14 != i; v14 = (v14 + 24))
  {
    v16 = *(v14 + 4);
    v29 = *(v14 + 1);
    LODWORD(v30) = v16;
    v27 = v29;
    v28 = &unk_1F50D6EF0;
    mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a2, &v27);
  }

  v28 = &v34;
  std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v28);
LABEL_21:
  v17 = *(a1 + 136);
  v18 = mlcore::PlaylistPropertySmartLimitKind(v9);
  v19 = mlcore::Entity::valueForProperty<int>(v17, v18);
  if (!v7 || v19 == 2 || v10)
  {
    mlcore::PlaylistItemEntityQuery::_sortDescriptorsForDisplay(a1, &v34);
    v20 = v34;
    for (j = v35; v20 != j; v20 = (v20 + 24))
    {
      v22 = *(v20 + 4);
      v29 = *(v20 + 1);
      LODWORD(v30) = v22;
      v27 = v29;
      v28 = &unk_1F50D6EF0;
      mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a2, &v27);
    }

    v28 = &v34;
    std::vector<mlcore::SortDescriptor>::__destroy_vector::operator()[abi:ne200100](&v28);
  }

  v34 = mlcore::ItemPropertySubscriptionStoreItemID(v19);
  v35 = mlcore::ItemPropertyStoreCloudUniversalLibraryID(v34);
  v36 = mlcore::ItemPropertyStoreID(v35);
  v37 = mlcore::ItemPropertyStoreCloudStatus(v36);
  v38 = mlcore::ItemPropertyInMyLibrary(v37);
  v39 = mlcore::ItemPropertyStorePlaybackEndpointType(v38);
  v29 = 0;
  v30 = 0;
  v28 = 0;
  std::vector<mlcore::ModelPropertyBase *>::__init_with_size[abi:ne200100]<mlcore::ModelPropertyBase * const*,mlcore::ModelPropertyBase * const*>(&v28, &v34, &v40, 6uLL);
  v24 = v28;
  v23 = v29;
  if (v28 != v29)
  {
    v25 = v28;
    do
    {
      v34 = *v25;
      mlcore::OrderedSet<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>>::insert(a2, &v34);
      ++v25;
    }

    while (v25 != v23);
  }

  if (v24)
  {
    operator delete(v24);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void mlcore::PlaylistItemEntityQuery::_SQLWhereExpression(uint64_t a1@<X0>, mlcore::LibraryView **a2@<X1>, void *a3@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 152))
  {
    mlcore::Playlist::filterPredicate(*(a1 + 136), &v24);
    v6 = v24;
    if (!v24)
    {
      v12 = *a2;
      v13 = a2[1];
      v19[0] = v12;
      v19[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      mlcore::Query::_SQLWhereExpression(a1, v19, a3);
      if (!v13)
      {
        goto LABEL_33;
      }

      v14 = v13;
      goto LABEL_32;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *a2;
      if (*a2)
      {
        v23 = v7;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_18;
      }
    }

    else
    {
      v9 = *a2;
      if (*a2)
      {
        v23 = *(a1 + 16);
LABEL_18:
        mlcore::LibraryView::_predicateByApplyingFilters(&v27, *(a1 + 8), v9, &v23);
        v7 = v27;
        if (v8)
        {
          v18 = v27;
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          v7 = v18;
        }
      }
    }

    v15 = *(&v7 + 1);
    if (v7)
    {
      v27 = v7;
      if (*(&v7 + 1))
      {
        atomic_fetch_add_explicit((*(&v7 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v28 = v6;
      v29 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(v22, 0, sizeof(v22));
      std::vector<std::shared_ptr<mlcore::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<mlcore::Predicate> const*,std::shared_ptr<mlcore::Predicate> const*>(v22, &v27, v30, 2uLL);
    }

    v16 = a2[1];
    v20 = *a2;
    v21 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 64))(v6, &v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (!v15)
    {
      goto LABEL_33;
    }

    v14 = v15;
LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_33:
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

LABEL_35:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = a2[1];
  v26[0] = *a2;
  v26[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlcore::Query::_SQLWhereExpression(a1, v26, a3);
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
}

void sub_1D5AB30D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::PlaylistItemEntityQuery::_SQLSelectStatement(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 152))
  {
    v2 = a2[1];
    v4 = *a2;
    v5 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    mlcore::Query::_SQLSelectStatement();
  }

  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  mlcore::PropertiesQuery::_SQLSelectStatement(a1, v6);
}

void sub_1D5AB3528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
  }

  std::__shared_weak_count::~__shared_weak_count(v23);
  operator delete(v26);
  if (*(v22 + 8))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v22 + 8));
  }

  _Unwind_Resume(a1);
}

void mlcore::PlaylistItemEntityQuery::_SQLResultColumnExpressions(uint64_t a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  if ((*(a1 + 152) & 1) == 0)
  {
    v23 = a2[1];
    v30[0] = *a2;
    v30[1] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    mlcore::EntityQuery::_SQLResultColumnExpressions(a1, v30, a3);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  mlcore::PlaylistItemEntityQuery::_resultPropertiesToFetch(a1, &__p);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = __p;
  v7 = v28;
  if (__p != v28)
  {
    do
    {
      v8 = *v6;
      v9 = a2[1];
      v24 = *a2;
      v25 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 96))(&v26);
      v10 = v26;
      v26 = 0uLL;
      v12 = a3[1];
      v11 = a3[2];
      if (v12 >= v11)
      {
        v13 = *a3;
        v14 = v12 - *a3;
        v15 = v14 >> 4;
        v16 = (v14 >> 4) + 1;
        if (v16 >> 60)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v17 = v11 - v13;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        v31[4] = a3;
        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<mediaplatform::SQLExpression const>>>(v18);
        }

        *(16 * v15) = v10;
        v19 = 16 * v15 + 16;
        memcpy(0, v13, v14);
        v20 = *a3;
        *a3 = 0;
        a3[1] = v19;
        v21 = a3[2];
        a3[2] = 0;
        v31[2] = v20;
        v31[3] = v21;
        v31[0] = v20;
        v31[1] = v20;
        std::__split_buffer<std::shared_ptr<mediaplatform::SQLExpression const>>::~__split_buffer(v31);
        v22 = *(&v26 + 1);
        a3[1] = v19;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      else
      {
        *v12 = v10;
        a3[1] = v12 + 16;
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(&v29);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_1D5AB3834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::PlaylistItemEntityQuery::~PlaylistItemEntityQuery(void **this)
{
  *this = &unk_1F50D4010;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  v2 = this[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::EntityQuery::~EntityQuery(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D4010;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  v2 = this[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::EntityQuery::~EntityQuery(this);
}

uint64_t mlcore::PlaylistItemEntityQuery::PlaylistItemEntityQuery(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 224);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  mlcore::PlaylistItemEntityQuery::PlaylistItemEntityQuery(a1, v3, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

{
  v3 = *(*a2 + 224);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  mlcore::PlaylistItemEntityQuery::PlaylistItemEntityQuery(a1, v3, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1D5AB3A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::PlaylistItemEntityQuery::PlaylistItemEntityQuery(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = mlcore::TypedEntityClass<mlcore::PlaylistItem>::sharedPointer();
  v9[0] = 0;
  v9[1] = 0;
  mlcore::EntityQuery::EntityQuery(a1, v6, v9);
  *a1 = &unk_1F50D4010;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = a2;
  *(a1 + 152) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 160), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 176) = *(a3 + 2);
    *(a1 + 160) = v7;
  }

  return a1;
}

void sub_1D5AB3AC4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 18);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  mlcore::EntityQuery::~EntityQuery(v1);
  _Unwind_Resume(a1);
}

void sub_1D5AB3B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::TypedEntityClass<mlcore::BaseLocation>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::BaseLocation>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::BaseLocation>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::BaseLocation>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::BaseLocation>::sharedPointer(void)::__sharedPointer;
}

uint64_t mlcore::BaseLocationPropertyPathType(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::BaseLocationPropertyPathType(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::BaseLocationPropertyPathType(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::BaseLocationPropertyPathType(void)::$_0 &&>>);
  }

  return mlcore::BaseLocationPropertyPathType(void)::property;
}

void sub_1D5AB3ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::BaseLocationTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore17BaseLocationTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::BaseLocationTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::BaseLocationTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D5AB40A4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::BaseLocationTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::BaseLocation>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::BaseLocation>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::BaseLocation>::databaseTable()
{
  mediaplatform::Singleton<mlcore::BaseLocationTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void sub_1D5AB4404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::BaseLocation>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::BaseLocation>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::BaseLocation::~BaseLocation(mlcore::BaseLocation *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::BaseLocationPropertyFilePath(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::BaseLocationPropertyFilePath(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::BaseLocationPropertyFilePath(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::BaseLocationPropertyFilePath(void)::$_0 &&>>);
  }

  return mlcore::BaseLocationPropertyFilePath(void)::property;
}

void sub_1D5AB4800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

double mlcore::BaseLocation::BaseLocation(mlcore::BaseLocation *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D7830;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D7830;
  return result;
}

double mlcore::BaseLocation::BaseLocation(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 8) = &unk_1F50D7378;
  *(a1 + 216) = &unk_1F50D73A0;
  *(a1 + 224) = a2;
  *a1 = &unk_1F50D7830;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 8) = &unk_1F50D7378;
  *(a1 + 216) = &unk_1F50D73A0;
  *(a1 + 224) = a2;
  *a1 = &unk_1F50D7830;
  return result;
}

uint64_t mlcore::BaseLocation::pathType(mlcore::BaseLocation *this)
{
  v2 = mlcore::BaseLocationPropertyPathType(this);

  return mlcore::Entity::valueForProperty<long long>(this, v2);
}

void mlcore::BaseLocation::filePath(mlcore::BaseLocation *this@<X0>, void *a2@<X8>)
{
  v4 = mlcore::BaseLocationPropertyFilePath(this);
  mlcore::Entity::valueForProperty<std::string>(&__p, this, v4);
  mediaplatform::FilePath::FilePath(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D5AB4BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::BaseLocation::setFilePath(int8x8_t *this, const mediaplatform::FilePath *a2)
{
  mediaplatform::FilePath::str(a2, &__p);
  v4 = mlcore::BaseLocationPropertyFilePath(v3);
  mlcore::Entity::setValueForProperty<std::string>(this, &__p, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = __p.__r_.__value_.__r.__words[0];

    operator delete(v5);
  }
}

void sub_1D5AB4C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::LocalLibrary::~LocalLibrary(mlcore::LocalLibrary *this)
{
  mlcore::LocalLibrary::~LocalLibrary(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  v6 = *MEMORY[0x1E69E9840];
  *this = &unk_1F50D7710;
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  mediaplatform::DBCPSubpool::setDelegateCallbacks(*(this + 33), v3);
  mediaplatform::DBCPSubpool::setDelegateCallbacks(*(this + 31), v3);
  std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](v4);
  std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](v3);
  if (*(this + 399) < 0)
  {
    operator delete(*(this + 47));
  }

  *&v3[0] = this + 352;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *&v3[0] = this + 304;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  *&v3[0] = this + 280;
  std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](v3);
  mediaplatform::DatabaseConnectionPool::~DatabaseConnectionPool((this + 184));
  *(this + 19) = &unk_1F50DE578;
  *&v3[0] = this + 160;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  *this = &unk_1F50D3A60;
  *&v3[0] = this + 128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  *(this + 12) = &unk_1F50DE578;
  *&v3[0] = this + 104;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  *(this + 8) = &unk_1F50DE578;
  *&v3[0] = this + 72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  *(this + 4) = &unk_1F50DE578;
  *&v3[0] = this + 40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v3);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1D5AB4E98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void mediaplatform::DatabaseConnectionCallbacks::~DatabaseConnectionCallbacks(mediaplatform::DatabaseConnectionCallbacks *this)
{
  std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<void ()(mediaplatform::DatabaseConnection &)>::~__value_func[abi:ne200100](this);
}

void mlcore::LanguageResources::~LanguageResources(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<mlcore::LocalizedSectionHeader>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t std::__function::__func<mlcore::LocalLibrary::LocalLibrary(mediaplatform::ContentBundle const&,mediaplatform::FilePath const&,mlcore::LanguageResources const&)::$_0,std::allocator<mlcore::LocalLibrary::LocalLibrary(mediaplatform::ContentBundle const&,mediaplatform::FilePath const&,mlcore::LanguageResources const&)::$_0>,void ()(mediaplatform::DatabaseConnection &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12LocalLibraryC1ERKN13mediaplatform13ContentBundleERKNS1_8FilePathERKNS_17LanguageResourcesEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mlcore::LocalLibrary *this, mediaplatform::DatabaseConnection *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F50D3588;
  v3[3] = v3;
  v4 = 3;
  v2 = 2048;
  std::allocate_shared[abi:ne200100]<mediaplatform::DatabaseFunction,std::allocator<mediaplatform::DatabaseFunction>,char const(&)[17],int,std::function<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)> &,int,0>();
}

void sub_1D5AB5468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](&a32);
  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](v36 - 88);
  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](&a36);
  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](v36 - 184);
  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](v36 - 152);
  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](v36 - 120);
  _Unwind_Resume(a1);
}

void sub_1D5AB5708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_1D5AB584C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_5,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_5>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12LocalLibrary31_libraryDatabaseDidOpenCallbackERN13mediaplatform18DatabaseConnectionEE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_5,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_5>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::operator()(uint64_t a1, sqlite3_context **a2, uint64_t a3)
{
  v4 = *a2;
  auxdata = sqlite3_get_auxdata(*a2, 0);
  if (!auxdata)
  {
    v6 = sqlite3_value_int(**a3);
    v7 = mlcore::SharedObject<std::unordered_set<double>,int>::_mutex();
    std::mutex::lock(v7);
    v8 = mlcore::SharedObject<std::unordered_set<double>,int>::_objects();
    auxdata = std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::find<int>(v8, v6);
    mlcore::SharedObject<std::unordered_set<double>,int>::_objects();
    if (auxdata)
    {
      v9 = auxdata[4];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        v11 = v10;
        if (v10)
        {
          auxdata = auxdata[3];
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          goto LABEL_9;
        }
      }

      else
      {
        v11 = 0;
      }

      auxdata = 0;
    }

    else
    {
      v11 = 0;
    }

LABEL_9:
    std::mutex::unlock(v7);
    sqlite3_set_auxdata(v4, 0, auxdata, 0);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (!auxdata)
    {
      goto LABEL_33;
    }
  }

  v12 = *a3;
  if (*(a3 + 8) - *a3 >= 9uLL)
  {
    v13 = 1;
    do
    {
      v14 = sqlite3_value_double(v12[v13]);
      v15 = v14;
      if (v14 == 0.0)
      {
        v15 = 0.0;
      }

      v16 = auxdata[1];
      if (v16)
      {
        v17 = vcnt_s8(v16);
        v17.i16[0] = vaddlv_u8(v17);
        if (v17.u32[0] > 1uLL)
        {
          v18 = v15;
          if (*&v15 >= *&v16)
          {
            *&v18 = *&v15 % *&v16;
          }
        }

        else
        {
          *&v18 = (*&v16 - 1) & *&v15;
        }

        v19 = *(*auxdata + 8 * *&v18);
        if (v19)
        {
          for (i = *v19; i; i = *i)
          {
            v21 = *(i + 1);
            if (v21 == *&v15)
            {
              if (i[2] == v14)
              {
                v22 = 1;
                goto LABEL_34;
              }
            }

            else
            {
              if (v17.u32[0] > 1uLL)
              {
                if (v21 >= *&v16)
                {
                  v21 %= *&v16;
                }
              }

              else
              {
                v21 &= *&v16 - 1;
              }

              if (v21 != *&v18)
              {
                break;
              }
            }
          }
        }
      }

      ++v13;
      v12 = *a3;
    }

    while (v13 < (*(a3 + 8) - *a3) >> 3);
  }

LABEL_33:
  v22 = 0;
LABEL_34:

  sqlite3_result_int(v4, v22);
}

void sub_1D5AB5ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_4,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_4>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12LocalLibrary31_libraryDatabaseDidOpenCallbackERN13mediaplatform18DatabaseConnectionEE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_4,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_4>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::operator()(uint64_t a1, sqlite3_context **a2, uint64_t a3)
{
  v4 = *a2;
  auxdata = sqlite3_get_auxdata(*a2, 0);
  if (auxdata)
  {
    goto LABEL_12;
  }

  v6 = sqlite3_value_int(**a3);
  v7 = mlcore::SharedObject<std::unordered_set<std::string>,int>::_mutex();
  std::mutex::lock(v7);
  v8 = mlcore::SharedObject<std::unordered_set<std::string>,int>::_objects();
  auxdata = std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::find<int>(v8, v6);
  mlcore::SharedObject<std::unordered_set<std::string>,int>::_objects();
  if (auxdata)
  {
    v9 = auxdata[4];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      v11 = v10;
      if (v10)
      {
        auxdata = auxdata[3];
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
    }

    auxdata = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  std::mutex::unlock(v7);
  sqlite3_set_auxdata(v4, 0, auxdata, 0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!auxdata)
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *a3;
  if (*(a3 + 8) - *a3 < 9uLL)
  {
LABEL_18:
    v16 = 0;
    goto LABEL_20;
  }

  v13 = 1;
  v14 = 1;
  while (1)
  {
    mediaplatform::DatabaseValue::value<std::string>(&v12[v14], __p);
    v15 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(auxdata, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      break;
    }

    ++v13;
    v12 = *a3;
    ++v14;
    if (v13 >= (*(a3 + 8) - *a3) >> 3)
    {
      goto LABEL_18;
    }
  }

  v16 = 1;
LABEL_20:

  sqlite3_result_int(v4, v16);
}

void sub_1D5AB5D30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<mediaplatform::DatabaseFunction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D28F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_3,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_3>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12LocalLibrary31_libraryDatabaseDidOpenCallbackERN13mediaplatform18DatabaseConnectionEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_3,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_3>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::operator()(uint64_t a1, sqlite3_context **a2, uint64_t a3)
{
  v4 = *a2;
  auxdata = sqlite3_get_auxdata(*a2, 0);
  if (!auxdata)
  {
    v6 = sqlite3_value_int(**a3);
    v7 = mlcore::SharedObject<std::unordered_set<long long>,int>::_mutex();
    std::mutex::lock(v7);
    v8 = mlcore::SharedObject<std::unordered_set<long long>,int>::_objects();
    auxdata = std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::find<int>(v8, v6);
    mlcore::SharedObject<std::unordered_set<long long>,int>::_objects();
    if (auxdata)
    {
      v9 = auxdata[4];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        v11 = v10;
        if (v10)
        {
          auxdata = auxdata[3];
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          goto LABEL_9;
        }
      }

      else
      {
        v11 = 0;
      }

      auxdata = 0;
    }

    else
    {
      v11 = 0;
    }

LABEL_9:
    std::mutex::unlock(v7);
    sqlite3_set_auxdata(v4, 0, auxdata, 0);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (!auxdata)
    {
      goto LABEL_31;
    }
  }

  v12 = *a3;
  if (*(a3 + 8) - *a3 >= 9uLL)
  {
    v13 = 1;
    do
    {
      v14 = sqlite3_value_int64(v12[v13]);
      v15 = auxdata[1];
      if (v15)
      {
        v16 = vcnt_s8(v15);
        v16.i16[0] = vaddlv_u8(v16);
        if (v16.u32[0] > 1uLL)
        {
          v17 = v14;
          if (v14 >= *&v15)
          {
            v17 = v14 % *&v15;
          }
        }

        else
        {
          v17 = (*&v15 - 1) & v14;
        }

        v18 = *(*auxdata + 8 * v17);
        if (v18)
        {
          for (i = *v18; i; i = *i)
          {
            v20 = i[1];
            if (v20 == v14)
            {
              if (i[2] == v14)
              {
                v21 = 1;
                goto LABEL_32;
              }
            }

            else
            {
              if (v16.u32[0] > 1uLL)
              {
                if (v20 >= *&v15)
                {
                  v20 %= *&v15;
                }
              }

              else
              {
                v20 &= *&v15 - 1;
              }

              if (v20 != v17)
              {
                break;
              }
            }
          }
        }
      }

      ++v13;
      v12 = *a3;
    }

    while (v13 < (*(a3 + 8) - *a3) >> 3);
  }

LABEL_31:
  v21 = 0;
LABEL_32:

  sqlite3_result_int(v4, v21);
}

void sub_1D5AB608C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_2,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_2>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12LocalLibrary31_libraryDatabaseDidOpenCallbackERN13mediaplatform18DatabaseConnectionEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_2,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_2>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::operator()(uint64_t a1, sqlite3_context **a2, uint64_t a3)
{
  v4 = *a2;
  auxdata = sqlite3_get_auxdata(*a2, 0);
  if (!auxdata)
  {
    v6 = sqlite3_value_int(**a3);
    v7 = mlcore::SharedObject<std::unordered_set<int>,int>::_mutex();
    std::mutex::lock(v7);
    v8 = mlcore::SharedObject<std::unordered_set<int>,int>::_objects();
    auxdata = std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::find<int>(v8, v6);
    mlcore::SharedObject<std::unordered_set<int>,int>::_objects();
    if (auxdata)
    {
      v9 = auxdata[4];
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        v11 = v10;
        if (v10)
        {
          auxdata = auxdata[3];
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          goto LABEL_9;
        }
      }

      else
      {
        v11 = 0;
      }

      auxdata = 0;
    }

    else
    {
      v11 = 0;
    }

LABEL_9:
    std::mutex::unlock(v7);
    sqlite3_set_auxdata(v4, 0, auxdata, 0);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (!auxdata)
    {
      goto LABEL_31;
    }
  }

  v12 = *a3;
  if (*(a3 + 8) - *a3 >= 9uLL)
  {
    v13 = 1;
    do
    {
      v14 = sqlite3_value_int(v12[v13]);
      v15 = auxdata[1];
      if (v15)
      {
        v16 = vcnt_s8(v15);
        v16.i16[0] = vaddlv_u8(v16);
        if (v16.u32[0] > 1uLL)
        {
          v17 = v14;
          if (v15 <= v14)
          {
            v17 = v14 % v15;
          }
        }

        else
        {
          v17 = (v15 - 1) & v14;
        }

        v18 = *(*auxdata + 8 * v17);
        if (v18)
        {
          for (i = *v18; i; i = *i)
          {
            v20 = i[1];
            if (v20 == v14)
            {
              if (*(i + 4) == v14)
              {
                v21 = 1;
                goto LABEL_32;
              }
            }

            else
            {
              if (v16.u32[0] > 1uLL)
              {
                if (v20 >= v15)
                {
                  v20 %= v15;
                }
              }

              else
              {
                v20 &= v15 - 1;
              }

              if (v20 != v17)
              {
                break;
              }
            }
          }
        }
      }

      ++v13;
      v12 = *a3;
    }

    while (v13 < (*(a3 + 8) - *a3) >> 3);
  }

LABEL_31:
  v21 = 0;
LABEL_32:

  sqlite3_result_int(v4, v21);
}

void sub_1D5AB6370(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_1,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_1>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12LocalLibrary31_libraryDatabaseDidOpenCallbackERN13mediaplatform18DatabaseConnectionEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_1,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_1>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::operator()(uint64_t a1, sqlite3_context **a2, sqlite3_value ***a3)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = sqlite3_value_int64(**a3);
  mediaplatform::DatabaseValue::value<std::string>(*a3 + 1, &v11);
  mediaplatform::DatabaseValue::value<std::string>(*a3 + 2, __p);
  auxdata = sqlite3_get_auxdata(v4, 0);
  if (!auxdata)
  {
    operator new();
  }

  v8 = mediaplatform::SearchMatcher::matches(auxdata, __p, v6);
  sqlite3_result_int(v4, v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }
}

void sub_1D5AB657C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_1::operator() const(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_1,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_1>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F50D3530;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_0,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_0>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore12LocalLibrary31_libraryDatabaseDidOpenCallbackERN13mediaplatform18DatabaseConnectionEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_0,std::allocator<mlcore::LocalLibrary::_libraryDatabaseDidOpenCallback(mediaplatform::DatabaseConnection &)::$_0>,void ()(mediaplatform::DatabaseContext,std::vector<mediaplatform::DatabaseValue> &)>::operator()(uint64_t a1, sqlite3_context **a2, sqlite3_value ***a3)
{
  v4 = *a2;
  if (sqlite3_get_auxdata(*a2, 0))
  {
LABEL_11:
    operator new();
  }

  v5 = sqlite3_value_int(**a3);
  v6 = mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_mutex();
  std::mutex::lock(v6);
  v7 = mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_objects();
  v8 = std::__hash_table<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::weak_ptr<std::unordered_set<long long>>>>>::find<int>(v7, v5);
  mlcore::SharedObject<mlcore::LocalizedSearchQuery::SearchWeightContext,int>::_objects();
  if (v8)
  {
    v9 = v8[4];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      v11 = v10;
      if (v10)
      {
        v8 = v8[3];
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
    }

    v8 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  std::mutex::unlock(v6);
  sqlite3_set_auxdata(v4, 0, v8, 0);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  goto LABEL_11;
}

void sub_1D5AB6BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,mediaplatform::SearchMatcher::ReasonResult>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if ((v6 + 1) > 0x492492492492492)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    *v10 = *a2;
    v10[2] = *(a2 + 8);
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__hash_table(56 * v6 + 16, (a2 + 16));
    v12 = *a1;
    v11 = a1[1];
    v13 = 56 * v6 - (v11 - *a1);
    v5 = 56 * v6 + 56;
    if (v11 != *a1)
    {
      v14 = v12 + 2;
      v15 = 56 * v6 - 8 * ((v11 - *a1) >> 3) + 16;
      v16 = 56 * v6 - (v11 - *a1);
      do
      {
        *(v15 - 16) = *(v14 - 4);
        *(v16 + 8) = *(v14 - 2);
        v17 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__hash_table(v15, v14);
        v16 += 56;
        v18 = v14 + 5;
        v14 += 7;
        v15 = v17 + 56;
      }

      while (v18 != v11);
      do
      {
        std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table((v12 + 2));
        v12 += 7;
      }

      while (v12 != v11);
    }

    v19 = *a1;
    *a1 = v13;
    *(a1 + 1) = (56 * v6 + 56);
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v4 = *a2;
    v4[2] = *(a2 + 8);
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__hash_table((v4 + 4), (a2 + 16));
    v5 = (v4 + 14);
  }

  a1[1] = v5;
}

uint64_t std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<std::pair<int,mediaplatform::SearchMatcher::ReasonResult>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 56;
        std::__hash_table<mlcore::ModelPropertyBase *,std::hash<mlcore::ModelPropertyBase *>,std::equal_to<mlcore::ModelPropertyBase *>,std::allocator<mlcore::ModelPropertyBase *>>::~__hash_table(v3 - 40);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<std::vector<std::pair<int,mediaplatform::SearchMatcher::ReasonResult>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D0D60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t std::__function::__func<std::shared_ptr<mediaplatform::DatabaseConnection> (*)(mediaplatform::FilePath const&,BOOL),std::allocator<std::shared_ptr<mediaplatform::DatabaseConnection> (*)(mediaplatform::FilePath const&,BOOL)>,std::shared_ptr<mediaplatform::DatabaseConnection> ()(mediaplatform::FilePath const&,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D5B03A66))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlcore::SQLColumnNameFromProperty(mlcore *this, const mlcore::ModelPropertyBase *a2)
{
  v3 = (*(*this + 72))(this, a2);
  if (*(v3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(v3 + 8), *(v3 + 16));
  }

  else
  {
    v6 = *(v3 + 8);
  }

  (*(*this + 64))(v5, this);
  if (v5[1] != v5[0])
  {
    v4 = *v5[0];
    operator new();
  }

  std::vector<mlcore::PropertyCache>::__throw_out_of_range[abi:ne200100]();
}

void sub_1D5AB7330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v26);
  if (a10)
  {
    operator delete(a10);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void mlcore::SQLShortColumnNameFromProperty(mlcore *this, const mlcore::ModelPropertyBase *a2)
{
  v2 = (*(*this + 72))(this, a2);
  if (*(v2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    __p = *(v2 + 8);
  }

  std::allocate_shared[abi:ne200100]<mediaplatform::SQLColumnNameExpression,std::allocator<mediaplatform::SQLColumnNameExpression>,std::string,0>();
}

void sub_1D5AB743C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5AB7548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v29);
  _Unwind_Resume(a1);
}

void sub_1D5AB7624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1D5AB76B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::SQLColumnNameFromEntityPrimaryKey(mlcore *this, const mlcore::EntityClass *a2)
{
  v3 = (*(*this + 96))(this, a2);
  (*(*v3 + 24))(v4);
  (*(*this + 96))(this);
  std::allocate_shared[abi:ne200100]<mediaplatform::SQLColumnNameExpression,std::allocator<mediaplatform::SQLColumnNameExpression>,std::string &,std::string const&,0>();
}

void sub_1D5AB77A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::SQLShortColumnNameFromEntityPrimaryKey(mlcore *this, const mlcore::EntityClass *a2)
{
  v2 = (*(*this + 96))(this, a2);
  (*(*v2 + 24))(v3);
  std::allocate_shared[abi:ne200100]<mediaplatform::SQLColumnNameExpression,std::allocator<mediaplatform::SQLColumnNameExpression>,std::string &,0>();
}

void sub_1D5AB7848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::SQLJoinClausesForEntityClassAndProperties(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  *__p = 0u;
  v45 = 0u;
  v47 = 0;
  v46 = 0;
  v48 = 1065353216;
  v49 = 0;
  v3 = *a1;
  v34 = a1[1];
  if (*a1 == v34)
  {
    v31 = 0;
    v30 = 0;
    goto LABEL_54;
  }

  v33 = a2;
  do
  {
    v35 = v3;
    (*(**v3 + 104))(&v40);
    v4 = v40;
    v5 = v41;
    v36 = v41;
    while (v4 != v5)
    {
      v6 = *v4;
      v7 = *(v4 + 1);
      v38 = v4;
      v39 = *v4;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = std::__string_hash<char>::operator()[abi:ne200100](v6 + 16);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        v8 = std::__string_hash<char>::operator()[abi:ne200100](v6 + 16);
      }

      v9 = v45;
      if (!v45)
      {
        goto LABEL_47;
      }

      v10 = vcnt_s8(*&v45);
      v10.i16[0] = vaddlv_u8(v10);
      v11 = v10.u32[0];
      if (v10.u32[0] > 1uLL)
      {
        v12 = v8;
        if (v8 >= v45)
        {
          v12 = v8 % v45;
        }
      }

      else
      {
        v12 = (v45 - 1) & v8;
      }

      v13 = *(__p[1] + v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_47:
        operator new();
      }

      v37 = v45 - 1;
      v15 = (v39 + 16);
      while (1)
      {
        v16 = v14[1];
        if (v16 == v8)
        {
          break;
        }

        if (v11 > 1)
        {
          if (v16 >= v9)
          {
            v16 %= v9;
          }
        }

        else
        {
          v16 &= v37;
        }

        if (v16 != v12)
        {
          goto LABEL_47;
        }

LABEL_46:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_47;
        }
      }

      v17 = v14[2];
      v18 = v14[3];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(v17 + 39);
      if (v19 >= 0)
      {
        v20 = *(v17 + 39);
      }

      else
      {
        v20 = *(v17 + 24);
      }

      v21 = *(v39 + 39);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v39 + 24);
      }

      if (v20 != v21)
      {
        v29 = 0;
        if (!v7)
        {
          goto LABEL_39;
        }

LABEL_38:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        goto LABEL_39;
      }

      v25 = *(v17 + 16);
      v23 = (v17 + 16);
      v24 = v25;
      if (v19 >= 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = v24;
      }

      v27 = *v15;
      if (v22 >= 0)
      {
        v28 = (v39 + 16);
      }

      else
      {
        v28 = *v15;
      }

      v29 = memcmp(v26, v28, v20) == 0;
      if (v7)
      {
        goto LABEL_38;
      }

LABEL_39:
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (!v29)
      {
        goto LABEL_46;
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v4 = v38 + 1;
      v5 = v36;
    }

    v42 = &v40;
    std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v42);
    v3 = v35 + 8;
  }

  while (v35 + 8 != v34);
  v31 = *(&v43 + 1);
  v30 = v43;
  a2 = v33;
LABEL_54:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a2, v30, v31, (v31 - v30) >> 4);
  std::__hash_table<std::shared_ptr<mediaplatform::SQLJoinClause const>,mlcore::hash,mlcore::equal,std::allocator<std::shared_ptr<mediaplatform::SQLJoinClause const>>>::~__hash_table(&__p[1]);
  v42 = &v43;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v42);
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t std::__hash_table<std::shared_ptr<mediaplatform::SQLJoinClause const>,mlcore::hash,mlcore::equal,std::allocator<std::shared_ptr<mediaplatform::SQLJoinClause const>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 96);
  if (v5 == a1 + 72)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(a1 + 56);
  if (v6 == a1 + 32)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

void **mlcore::OrderedSet<std::shared_ptr<mediaplatform::SQLJoinClause const>,mlcore::hash,mlcore::equal>::~OrderedSet(void **a1)
{
  std::__hash_table<std::shared_ptr<mediaplatform::SQLJoinClause const>,mlcore::hash,mlcore::equal,std::allocator<std::shared_ptr<mediaplatform::SQLJoinClause const>>>::~__hash_table((a1 + 3));
  v3 = a1;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t *mlcore::SQLOrderingTermsForSortDescriptors@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *result;
  if (*result != result[1])
  {
    v4 = *(v3 + 8);
    v5 = a2[1];
    v8 = *a2;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 96))(&v9);
    if (*(v3 + 16) < 2u)
    {
      v7 = *(v3 + 16);
      std::allocate_shared[abi:ne200100]<mediaplatform::SQLOrderingTerm,std::allocator<mediaplatform::SQLOrderingTerm>,std::shared_ptr<mediaplatform::SQLExpression>,mediaplatform::SQLOrderingTerm::OrderingType,0>();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unkown sort ordering type");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1D5AB8450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, std::__shared_weak_count *a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_1D5AB8614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  mediaplatform::PlatformErrorCondition::~PlatformErrorCondition(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  mediaplatform::File::~File((v23 - 48));
  _Unwind_Resume(a1);
}

void mlcore::Album::~Album(mlcore::Album *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::AlbumPropertyPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyPersistentID(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyPersistentID(void)::property;
}

void sub_1D5AB89A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyTitle(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyTitle(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyTitle(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyTitle(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyTitle(void)::property;
}

void sub_1D5AB8CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertySortTitle(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertySortTitle(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertySortTitle(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertySortTitle(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertySortTitle(void)::property;
}

void sub_1D5AB8F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyHasTitle(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyHasTitle(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyHasTitle(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyHasTitle(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyHasTitle(void)::property;
}

void sub_1D5AB920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AlbumPropertyOrder(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyAlbumOrder(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

uint64_t mlcore::AlbumPropertyRepresentativeItemPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyRepresentativeItemPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyRepresentativeItemPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyRepresentativeItemPersistentID(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyRepresentativeItemPersistentID(void)::property;
}

void sub_1D5AB94E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyArtistPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyArtistPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyArtistPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyArtistPersistentID(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyArtistPersistentID(void)::property;
}

void sub_1D5AB9810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyUserRating(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyUserRating(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyUserRating(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyUserRating(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyUserRating(void)::property;
}

void sub_1D5AB9B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyAllCompilations(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyAllCompilations(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyAllCompilations(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyAllCompilations(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyAllCompilations(void)::property;
}

void sub_1D5AB9E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyFeedURL(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyFeedURL(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyFeedURL(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyFeedURL(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyFeedURL(void)::property;
}

void sub_1D5ABA16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertySeasonNumber(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertySeasonNumber(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertySeasonNumber(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertySeasonNumber(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertySeasonNumber(void)::property;
}

void sub_1D5ABA474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyGroupingKey(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyGroupingKey(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyGroupingKey(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyGroupingKey(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyGroupingKey(void)::property;
}

void sub_1D5ABA778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyYear(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyYear(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyYear(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyYear(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyYear(void)::property;
}

void sub_1D5ABAA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyLikedState(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyLikedState(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyLikedState(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyLikedState(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyLikedState(void)::property;
}

void sub_1D5ABADAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyLikedStateChangedDate(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyLikedStateChangedDate(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyLikedStateChangedDate(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyLikedStateChangedDate(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyLikedStateChangedDate(void)::property;
}

void sub_1D5ABB0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyAppData(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyAppData(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyAppData(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyAppData(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyAppData(void)::property;
}

void sub_1D5ABB3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyItemCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyItemCount(void)::property;
}

void sub_1D5ABB670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyKeepLocal(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyKeepLocal(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyKeepLocal(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyKeepLocal(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyKeepLocal(void)::property;
}

void sub_1D5ABB918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyKeepLocalStatus(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyKeepLocalStatus(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyKeepLocalStatus(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyKeepLocalStatus(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyKeepLocalStatus(void)::property;
}

void sub_1D5ABBC44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyKeepLocalStatusReason(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyKeepLocalStatusReason(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyKeepLocalStatusReason(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyKeepLocalStatusReason(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyKeepLocalStatusReason(void)::property;
}

void sub_1D5ABBF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyKeepLocalConstraints(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyKeepLocalConstraints(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyKeepLocalConstraints(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyKeepLocalConstraints(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyKeepLocalConstraints(void)::property;
}

void sub_1D5ABC29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyIsKeepLocalEnabled(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyIsKeepLocalEnabled(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyIsKeepLocalEnabled(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyIsKeepLocalEnabled(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyIsKeepLocalEnabled(void)::property;
}

void sub_1D5ABC578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyContainsClassicalWork(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyContainsClassicalWork(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyContainsClassicalWork(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyContainsClassicalWork(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyContainsClassicalWork(void)::property;
}

void sub_1D5ABC82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyDatePlayedLocal(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyDatePlayedLocal(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyDatePlayedLocal(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyDatePlayedLocal(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyDatePlayedLocal(void)::property;
}

void sub_1D5ABCB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertySyncID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertySyncID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertySyncID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertySyncID(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertySyncID(void)::property;
}

void sub_1D5ABCE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyClassicalExperienceAvailable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyClassicalExperienceAvailable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyClassicalExperienceAvailable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyClassicalExperienceAvailable(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyClassicalExperienceAvailable(void)::property;
}

void sub_1D5ABD1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyCloudLibraryID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyCloudLibraryID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyCloudLibraryID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyCloudLibraryID(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyCloudLibraryID(void)::property;
}

void sub_1D5ABD4B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyLatestItemDateAdded(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyLatestItemDateAdded(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyLatestItemDateAdded(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyLatestItemDateAdded(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyLatestItemDateAdded(void)::property;
}

void sub_1D5ABD758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyVolumeNormalization(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyVolumeNormalization(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyVolumeNormalization(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyVolumeNormalization(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyVolumeNormalization(void)::property;
}

void sub_1D5ABD9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyMaximumItemTrackNumber(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyMaximumItemTrackNumber(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyMaximumItemTrackNumber(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyMaximumItemTrackNumber(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyMaximumItemTrackNumber(void)::property;
}

void sub_1D5ABDBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyDateDownloaded(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyDateDownloaded(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyDateDownloaded(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyDateDownloaded(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyDateDownloaded(void)::property;
}

void sub_1D5ABDE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyPreOrderItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyPreOrderItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyPreOrderItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyPreOrderItemCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyPreOrderItemCount(void)::property;
}

void sub_1D5ABE180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyIsPreOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyIsPreOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyIsPreOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyIsPreOrder(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyIsPreOrder(void)::property;
}

void sub_1D5ABE408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyStoreDownloadableItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyStoreDownloadableItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyStoreDownloadableItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyStoreDownloadableItemCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyStoreDownloadableItemCount(void)::property;
}

void sub_1D5ABE740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyIsStoreRedownloadable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyIsStoreRedownloadable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyIsStoreRedownloadable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyIsStoreRedownloadable(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyIsStoreRedownloadable(void)::property;
}

void sub_1D5ABE9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyLibraryTracksItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyLibraryTracksItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyLibraryTracksItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyLibraryTracksItemCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyLibraryTracksItemCount(void)::property;
}

void sub_1D5ABED00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyCleanLibraryTracksItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyCleanLibraryTracksItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyCleanLibraryTracksItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyCleanLibraryTracksItemCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyCleanLibraryTracksItemCount(void)::property;
}

void sub_1D5ABF138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyExplicitLibraryTracksItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyExplicitLibraryTracksItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyExplicitLibraryTracksItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyExplicitLibraryTracksItemCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyExplicitLibraryTracksItemCount(void)::property;
}

void sub_1D5ABF58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyNonPurgeableTracksItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyNonPurgeableTracksItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyNonPurgeableTracksItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyNonPurgeableTracksItemCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyNonPurgeableTracksItemCount(void)::property;
}

void sub_1D5ABF950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyIsLibraryPinned(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyIsLibraryPinned(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyIsLibraryPinned(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyIsLibraryPinned(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyIsLibraryPinned(void)::property;
}

void sub_1D5ABFCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyCleanDownloadedLibraryTracksCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyCleanDownloadedLibraryTracksCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyCleanDownloadedLibraryTracksCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyCleanDownloadedLibraryTracksCount(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyCleanDownloadedLibraryTracksCount(void)::property;
}

void sub_1D5AC01A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::AlbumPropertyStoreID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::AlbumPropertyStoreID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::AlbumPropertyStoreID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::AlbumPropertyStoreID(void)::$_0 &&>>);
  }

  return mlcore::AlbumPropertyStoreID(void)::property;
}

void sub_1D5AC0510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AlbumPropertyOrderSection(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyAlbumOrderSection(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<int>(v1, v2, v3);
}

void mlcore::AlbumPropertyDateAdded(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyDateAdded(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

void mlcore::AlbumPropertyDateReleased(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyDateReleased(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

void mlcore::AlbumPropertyRepresentativeItemStoreCloudID(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyStoreCloudID(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

void mlcore::AlbumPropertyRepresentativeItemMediaType(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyMediaType(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<int>(v1, v2, v3);
}

void mlcore::AlbumPropertyArtistName(mlcore *this)
{
  v1 = mlcore::AlbumPropertyArtistPersistentID(this);
  v2 = mlcore::ArtistPropertyName(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<std::string>(v1, v2, v3);
}

void mlcore::AlbumPropertyArtistSortName(mlcore *this)
{
  v1 = mlcore::AlbumPropertyArtistPersistentID(this);
  v2 = mlcore::ArtistPropertySortName(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<std::string>(v1, v2, v3);
}

void mlcore::AlbumPropertyCopyright(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyCopyright(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<std::string>(v1, v2, v3);
}

void mlcore::AlbumPropertyGenrePersistentID(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyGenrePersistentID(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

void mlcore::AlbumPropertyArtistOrder(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyArtistOrder(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

void mlcore::AlbumPropertyArtistOrderSection(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyArtistOrderSection(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<int>(v1, v2, v3);
}

void mlcore::AlbumPropertyRepresentativeItemInMyLibrary(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyInMyLibrary(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<int>(v1, v2, v3);
}

void mlcore::AlbumPropertyRepresentativeItemCollectionDescription(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyCollectionDescription(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<std::string>(v1, v2, v3);
}

void mlcore::AlbumPropertyRepresentativeItemShowSortType(mlcore *this)
{
  v1 = mlcore::AlbumPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyShowSortType(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

double mlcore::Album::Album(mlcore::Album *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D3DC0;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D3DC0;
  return result;
}

void mlcore::Album::title(mlcore::Album *this@<X0>, std::string *a2@<X8>)
{
  v4 = mlcore::AlbumPropertyTitle(this);

  mlcore::Entity::valueForProperty<std::string>(a2, this, v4);
}

void mlcore::Album::setTitle(mlcore *a1, uint64_t a2)
{
  v4 = mlcore::AlbumPropertyTitle(a1);

  mlcore::Entity::setValueForProperty<std::string>(a1, a2, v4);
}

uint64_t mlcore::TypedEntityClass<mlcore::Album>::databaseTable()
{
  mediaplatform::Singleton<mlcore::AlbumTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void mlcore::TypedEntityClass<mlcore::Album>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::Album>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mediaplatform::SQLIndexedBindParameter::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "?", 1);
  MEMORY[0x1DA6EDB00](&v5, *(a1 + 8));
  std::ostringstream::str[abi:ne200100](a2, &v5);
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v9);
}

void sub_1D5AC0EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void mediaplatform::SQLNamedBindParameter::~SQLNamedBindParameter(void **this)
{
  *this = &unk_1F50DDCE0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDCE0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void mediaplatform::SQLColumnNameExpression::sql(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(a1 + 103);
  if (v5 < 0)
  {
    v5 = *(a1 + 88);
    if (!a2)
    {
LABEL_10:
      mediaplatform::SQLColumnNameExpression::_unaliasedSQL(a1, &v12);
      std::stringbuf::str[abi:ne200100](a3, &v13);
      v12 = *MEMORY[0x1E69E54E8];
      *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v13 = MEMORY[0x1E69E5548] + 16;
      if (v16 < 0)
      {
        operator delete(__p);
      }

      v13 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v14);
      std::ostream::~ostream();
      MEMORY[0x1DA6EDCB0](v17);
      return;
    }
  }

  else if (!a2)
  {
    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = (a1 + 80);
  (*(*a2 + 8))(&v10, a2);
  if (!*v10)
  {
    mediaplatform::SQLColumnNameExpression::_unaliasedSQL(a1, &v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " AS ", 4);
    v7 = *(a1 + 103);
    if (v7 >= 0)
    {
      v8 = a1 + 80;
    }

    else
    {
      v8 = *(a1 + 80);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 103);
    }

    else
    {
      v9 = *(a1 + 88);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v8, v9);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v10 + 8), (a1 + 80));
    std::ostringstream::str[abi:ne200100](a3, &v12);
    v12 = *MEMORY[0x1E69E54E8];
    *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v16 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_24;
  }

  if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>((v10 + 8), (a1 + 80)))
  {
    mediaplatform::SQLColumnNameExpression::_unaliasedSQL(a1, &v12);
    std::stringbuf::str[abi:ne200100](a3, &v13);
    v12 = *MEMORY[0x1E69E54E8];
    *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v16 < 0)
    {
      operator delete(__p);
    }

LABEL_24:
    v13 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v14);
    std::ostream::~ostream();
    MEMORY[0x1DA6EDCB0](v17);
    goto LABEL_25;
  }

  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *v6;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 96);
  }

LABEL_25:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1D5AC1458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::SQLColumnNameExpression::_unaliasedSQL@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](a2);
  if ((*(a1 + 104) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "+", 1);
  }

  v4 = *(a1 + 79);
  if (v4 < 0)
  {
    if (*(a1 + 64))
    {
      goto LABEL_5;
    }
  }

  else if (*(a1 + 79))
  {
LABEL_5:
    if (v4 >= 0)
    {
      v5 = a1 + 56;
    }

    else
    {
      v5 = *(a1 + 56);
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 79);
    }

    else
    {
      v6 = *(a1 + 64);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ".", 1);
    v7 = *(a1 + 55);
    if (v7 >= 0)
    {
      v8 = a1 + 32;
    }

    else
    {
      v8 = *(a1 + 32);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 55);
    }

    else
    {
      v9 = *(a1 + 40);
    }

LABEL_28:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ".", 1);
    goto LABEL_29;
  }

  v10 = *(a1 + 55);
  if (v10 < 0)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if (*(a1 + 55))
  {
LABEL_22:
    if (v10 >= 0)
    {
      v8 = a1 + 32;
    }

    else
    {
      v8 = *(a1 + 32);
    }

    if (v10 >= 0)
    {
      v9 = *(a1 + 55);
    }

    else
    {
      v9 = *(a1 + 40);
    }

    goto LABEL_28;
  }

LABEL_29:
  v13 = *(a1 + 8);
  v12 = a1 + 8;
  v11 = v13;
  v14 = *(v12 + 23);
  if (v14 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v14 >= 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = *(v12 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v15, v16);
}

void std::stringbuf::str[abi:ne200100](std::string *a1, uint64_t a2)
{
  v4 = std::stringbuf::view[abi:ne200100](a2);
  if (v5)
  {
    v6 = (a2 + 64);
    if (*(a2 + 87) < 0)
    {
      v6 = *v6;
    }

    v7 = v4 - v6;
  }

  else
  {
    v7 = 0;
  }

  *&a1->__r_.__value_.__l.__data_ = *(a2 + 64);
  a1->__r_.__value_.__r.__words[2] = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  std::string::resize(a1, v7 + v5, 0);
  std::string::erase(a1, 0, v7);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a2);
}

void sub_1D5AC1668(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLColumnNameExpression::~SQLColumnNameExpression(void **this)
{
  *this = &unk_1F50DDD08;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDD08;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void mediaplatform::SQLNotExpression::sql(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(**(a1 + 8) + 16))(&v6);
  v3 = std::string::insert(&v6, 0, "NOT (", 5uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ")", 1uLL);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1D5AC1874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLNotExpression::~SQLNotExpression(mediaplatform::SQLNotExpression *this)
{
  *this = &unk_1F50DDD30;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDD30;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void mediaplatform::SQLAliasExpression::sql(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = *(a1 + 47);
  if (v6 < 0)
  {
    v6 = *(a1 + 32);
    if (!a2)
    {
LABEL_10:
      v9 = *(**(a1 + 8) + 16);

      v9();
      return;
    }
  }

  else if (!a2)
  {
    goto LABEL_10;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = (a1 + 24);
  (*(*a2 + 8))(&v22, a2);
  v8 = v22 + 2;
  if (*v22)
  {
    if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v8, (a1 + 24)))
    {
      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(a3, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        *&a3->__r_.__value_.__l.__data_ = *v7;
        a3->__r_.__value_.__r.__words[2] = *(a1 + 40);
      }
    }

    else
    {
      (*(**(a1 + 8) + 16))(*(a1 + 8), a2);
    }
  }

  else
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v8, (a1 + 24));
    (*(**(a1 + 8) + 16))(&v19);
    v10 = std::string::insert(&v19, 0, "(", 1uLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v20, ") AS ", 5uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = *(a1 + 47);
    if (v14 >= 0)
    {
      v15 = (a1 + 24);
    }

    else
    {
      v15 = *(a1 + 24);
    }

    if (v14 >= 0)
    {
      v16 = *(a1 + 47);
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v17 = std::string::append(&v21, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&a3->__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1D5AC1BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v30 = *(v28 - 40);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLAliasExpression::~SQLAliasExpression(void **this)
{
  *this = &unk_1F50DDD58;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDD58;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void mediaplatform::SQLExpressionList::sql(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ", ");
  mediaplatform::SQLStringWithStatementList<mediaplatform::SQLExpression>(&v11, (a1 + 8), a2, __p);
  v6 = std::string::insert(&v11, 0, "(", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v12, ")", 1uLL);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D5AC1DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLExpressionList::~SQLExpressionList(mediaplatform::SQLExpressionList *this)
{
  *this = &unk_1F50DDD80;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDD80;
  v1 = (this + 8);
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void mediaplatform::SQLFunctionExpression::sql(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  mediaplatform::SQLExpressionList::sql(a1 + 32, a2, &v12);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::string::insert(&v12, 0, v9, v10);
  *a3 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1D5AC1F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLFunctionExpression::~SQLFunctionExpression(mediaplatform::SQLFunctionExpression *this)
{
  *this = &unk_1F50DDDA8;
  *(this + 4) = &unk_1F50DDD80;
  v2 = (this + 40);
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDDA8;
  *(this + 4) = &unk_1F50DDD80;
  v2 = (this + 40);
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void mediaplatform::SQLSelectExpression::sql(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(**(a1 + 8) + 16))(&v6);
  v3 = std::string::insert(&v6, 0, "(", 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ")", 1uLL);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1D5AC219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLSelectExpression::~SQLSelectExpression(mediaplatform::SQLSelectExpression *this)
{
  *this = &unk_1F50DDDD0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDDD0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void mediaplatform::SQLBinaryExpression::sql(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = (*(**(a1 + 16) + 16))(v10);
  v5 = mediaplatform::SQLBinaryExpression::operatorStrings(v4);
  v6 = *(a1 + 8);
  v7 = *v5;
  (*(**(a1 + 32) + 16))(__p);
  v12[0] = __p;
  v12[1] = v7 + 24 * v6;
  v12[2] = v10;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  mediaplatform::FormatImplementation<std::string,std::string,std::string>("({0} {1} {2})", a2, 0, v12);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1D5AC2388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mediaplatform::SQLBinaryExpression::operatorStrings(mediaplatform::SQLBinaryExpression *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = mediaplatform::SQLBinaryExpression::operatorStrings(void)::__operatorStrings;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D5AC26EC(_Unwind_Exception *a1)
{
  v3 = &STACK[0x257];
  v4 = -600;
  v5 = &STACK[0x257];
  while (1)
  {
    v6 = *v5;
    v5 -= 3;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      MEMORY[0x1DA6EDD40](v1, 0x20C40960023A9);
      _Unwind_Resume(a1);
    }
  }
}

void mediaplatform::FormatImplementation<std::string,std::string,std::string>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t *a4)
{
  v28 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = a3;
    for (i = a1; ; i = (i + 1))
    {
      if (v6 == 123)
      {
        v12 = i->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v28 = &i->__r_.__value_.__s.__data_[2];
            v17 = i->__r_.__value_.__s.__data_[2];
            if ((v17 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v18 = 0;
              v19 = &i->__r_.__value_.__s.__data_[3];
              do
              {
                v20 = v19;
                v28 = v19;
                v18 = (v17 & 0xF) + 10 * v18;
                ++v19;
                v22 = *v20;
                v21 = (v20 - 1);
                LOBYTE(v17) = v22;
              }

              while ((v22 - 58) >= 0xFFFFFFF6);
              v28 = (v21 + 2);
              if (*(v19 - 1) == 125)
              {
                mediaplatform::FormatterParameters<0ul,std::string,std::string,std::string>::formatOptionsAtIndex<std::string,std::string,std::string>(v18);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mediaplatform::FormatOptions::FormatOptions(&v24, &v28);
          if (*(&v24 + 1))
          {
            if (*(&v24 + 1) == 1)
            {
              v13 = a4[1];
            }

            else
            {
              if (*(&v24 + 1) != 2)
              {
                mediaplatform::FormatterParameters<3ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::string,std::string,std::string>>();
              }

              v13 = *a4;
            }
          }

          else
          {
            v13 = a4[2];
          }

          v29 = v13;
          v30 = v24;
          v31 = v25;
          v32 = v26;
          v33 = v27;
          v14 = *(v13 + 23);
          if ((v14 & 0x8000000000000000) != 0)
          {
            v14 = *(v13 + 8);
          }

          v15 = *(&v25 + 1);
          if (*(&v25 + 1) <= v14)
          {
            v15 = v14;
          }

          if (v25)
          {
            v14 = v15;
          }

          mediaplatform::FormatImplementation<std::string,std::string,std::string>(v28, a2, v14 + v10, a4);
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = a2;
          }

          else
          {
            v16 = a2->__r_.__value_.__r.__words[0];
          }

          mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v24, &v16[v10], &v29);
          if (v10 != a3)
          {
            mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          }

          return;
        }

        v9 = 1;
        i = (i + 1);
      }

      ++v10;
      v28 = &i->__r_.__value_.__s.__data_[1];
      v6 = i->__r_.__value_.__s.__data_[1];
      if (!v6)
      {
        std::string::resize(a2, v10, 0);
        if (v10 != a3)
        {

          mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
        }

        return;
      }
    }
  }

  std::string::resize(a2, a3, 0);
}

void mediaplatform::FormatterParameters<0ul,std::string,std::string,std::string>::formatOptionsAtIndex<std::string,std::string,std::string>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul,std::string,std::string>::formatOptionsAtIndex<std::string,std::string,std::string>(a1);
}

void mediaplatform::FormatterParameters<3ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::string,std::string,std::string>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatterParameters<1ul,std::string,std::string>::formatOptionsAtIndex<std::string,std::string,std::string>(uint64_t a1)
{
  if (a1 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<2ul,std::string>::formatOptionsAtIndex<std::string,std::string,std::string>(a1);
}

void mediaplatform::FormatterParameters<2ul,std::string>::formatOptionsAtIndex<std::string,std::string,std::string>(uint64_t a1)
{
  if (a1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<3ul>::formatOptionsAtIndex<std::string,std::string,std::string>();
}

void mediaplatform::FormatterParameters<3ul>::formatOptionsAtIndex<std::string,std::string,std::string>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::SQLBinaryExpression::~SQLBinaryExpression(mediaplatform::SQLBinaryExpression *this)
{
  *this = &unk_1F50DDDF8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDDF8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_1F50DDDF8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t mediaplatform::SQLBinaryExpressionList::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  if (*(a1 + 48) != *(a1 + 56))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " (", 2);
    v4 = *(a1 + 48);
    if (*(a1 + 56) != v4)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        (*(**(v4 + v5) + 16))(__p);
        if ((v18 & 0x80u) == 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if ((v18 & 0x80u) == 0)
        {
          v8 = v18;
        }

        else
        {
          v8 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v7, v8);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        v4 = *(a1 + 48);
        v9 = (*(a1 + 56) - v4) >> 4;
        if (v6 < v9 - 1)
        {
          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " ", 1);
          v11 = mediaplatform::SQLBinaryExpression::operatorStrings(v10);
          v12 = *v11 + 24 * *(a1 + 8);
          v13 = *(v12 + 23);
          if (v13 >= 0)
          {
            v14 = *v11 + 24 * *(a1 + 8);
          }

          else
          {
            v14 = *v12;
          }

          if (v13 >= 0)
          {
            v15 = *(v12 + 23);
          }

          else
          {
            v15 = *(v12 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v14, v15);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, " ", 1);
          v4 = *(a1 + 48);
          v9 = (*(a1 + 56) - v4) >> 4;
        }

        ++v6;
        v5 += 16;
      }

      while (v6 < v9);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, ") ", 2);
  }

  std::ostringstream::str[abi:ne200100](a2, &v19);
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v23);
}

void mediaplatform::SQLBinaryExpressionList::~SQLBinaryExpressionList(mediaplatform::SQLBinaryExpressionList *this)
{
  *this = &unk_1F50DDE20;
  v4 = (this + 48);
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = &unk_1F50DDDF8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDE20;
  v4 = (this + 48);
  std::vector<std::shared_ptr<mediaplatform::SQLExpression const>>::__destroy_vector::operator()[abi:ne200100](&v4);
  *this = &unk_1F50DDDF8;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void mediaplatform::SQLUnaryExpression::sql(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  (*(**(a1 + 8) + 16))(__p);
  mediaplatform::FormatString<std::string,std::string>(a2, "{0} {1}", __p, *mediaplatform::SQLUnaryExpression::sql(mediaplatform::SQLRendering *)const::__operatorStrings + 24 * *(a1 + 24));
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D5AC326C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA6EDD40](v14, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

void mediaplatform::SQLUnaryExpression::~SQLUnaryExpression(mediaplatform::SQLUnaryExpression *this)
{
  *this = &unk_1F50DDE48;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDE48;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void mediaplatform::SQLExistsExpression::sql(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  mediaplatform::SQLSelectExpression::sql(a1, &v4);
  v3 = std::string::insert(&v4, 0, "EXISTS ", 7uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1D5AC3404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::SQLExistsExpression::~SQLExistsExpression(mediaplatform::SQLExistsExpression *this)
{
  *this = &unk_1F50DDDD0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDDD0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t mediaplatform::SQLCaseExpression::sql@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "CASE", 4);
  if (a1[7])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ", 1);
    (*(*a1[7] + 16))(&__p);
    v4 = (v17 & 0x80u) == 0 ? &__p : __p;
    v5 = (v17 & 0x80u) == 0 ? v17 : v16;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v4, v5);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " WHEN ", 6);
  (*(*a1[1] + 16))(&__p);
  if ((v17 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = v16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " THEN ", 6);
  (*(*a1[3] + 16))(v13);
  if ((v14 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v9 = v14;
  }

  else
  {
    v9 = v13[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (a1[5])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ELSE ", 6);
    (*(*a1[5] + 16))(&__p);
    v10 = (v17 & 0x80u) == 0 ? &__p : __p;
    v11 = (v17 & 0x80u) == 0 ? v17 : v16;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v10, v11);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " END", 4);
  std::ostringstream::str[abi:ne200100](a2, &v18);
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v22);
}