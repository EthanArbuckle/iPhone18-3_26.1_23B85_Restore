void sub_1D5AD76F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, unint64_t a31, unint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, void *a63)
{
  *(v80 + 1168) = v78;
  if (*(v80 + 1199) < 0)
  {
    operator delete(*v81);
  }

  *(v80 + 1120) = v82;
  if (*(v80 + 1151) < 0)
  {
    operator delete(*v84);
  }

  *(v80 + 1072) = a14;
  if (*(v80 + 1103) < 0)
  {
    operator delete(*v83);
  }

  *(v80 + 1024) = a16;
  if (*(v80 + 1055) < 0)
  {
    operator delete(*v79);
  }

  *(v80 + 976) = a18;
  if (*(v80 + 1007) < 0)
  {
    operator delete(*a15);
  }

  *(v80 + 928) = a19;
  if (*(v80 + 959) < 0)
  {
    operator delete(*a17);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a20);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a21);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a23);
  *(v80 + 672) = a24;
  if (*(v80 + 703) < 0)
  {
    operator delete(*a22);
  }

  mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,int,int,int,int,long long>::~DatabaseTable(v80);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  STACK[0x240] = a30;
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  STACK[0x288] = a31;
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&STACK[0x2D0]);
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x338]);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x3A8]);
  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  STACK[0x400] = a32;
  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  _Unwind_Resume(a1);
}

void sub_1D5AD7D4C()
{
  STACK[0x7E8] = v0;
  if (SLOBYTE(STACK[0x807]) < 0)
  {
    operator delete(STACK[0x7F0]);
  }

  JUMPOUT(0x1D5AD7A80);
}

void sub_1D5AD7D68()
{
  STACK[0x598] = v0;
  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  JUMPOUT(0x1D5AD7B74);
}

void sub_1D5AD7E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,int,int,int,int,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 624);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 560);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 496);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 416);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 368);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 224);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D5AD7F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::ComposerTable::~ComposerTable(void **this)
{
  *this = &unk_1F50D83D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl((this + 84));
  *this = &unk_1F50D8E20;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D83D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl((this + 84));
  *this = &unk_1F50D8E20;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple((this + 10));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl(uint64_t a1)
{
  *(a1 + 544) = &unk_1F50D86E0;
  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  *(a1 + 496) = &unk_1F50D86E0;
  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

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

  *(a1 + 256) = &unk_1F50D86E0;
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 176);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 112);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 48);
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 544) = &unk_1F50D86E0;
  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 480);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 416);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 336);
  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,int,int,int,int,long long>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8E20;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8E20;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  *a1 = &unk_1F50D8E20;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

void mlcore::MediaTable<long long,std::string,std::string,mediaplatform::Data,int,long long,int,int,int,int,long long>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D83D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl(a1 + 672);
  *a1 = &unk_1F50D8E20;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D83D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl(a1 + 672);
  *a1 = &unk_1F50D8E20;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v70 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v71 = *(a3 + 8);
  }

  v72 = *(a3 + 32);
  v70 = &unk_1F50D89B8;
  v73 = *(a3 + 36);
  if (*(a3 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, *(a3 + 40), *(a3 + 48));
  }

  else
  {
    v74 = *(a3 + 40);
  }

  v65 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v67 = *(a4 + 32);
  v65 = &unk_1F50D89B8;
  v68 = *(a4 + 36);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, *(a4 + 40), *(a4 + 48));
  }

  else
  {
    v69 = *(a4 + 40);
  }

  v58 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v59 = *(a5 + 8);
  }

  v60 = *(a5 + 32);
  v58 = &unk_1F50D89D8;
  v61 = *(a5 + 36);
  mediaplatform::Data::Data(&v62, *(a5 + 64), *(a5 + 48), 1);
  v54 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v55 = *(a6 + 8);
  }

  v56 = *(a6 + 32);
  v54 = &unk_1F50D8978;
  v57 = *(a6 + 36);
  v49 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v50 = *(a7 + 8);
  }

  v51 = *(a7 + 32);
  v49 = &unk_1F50D8958;
  v52 = *(a7 + 36);
  v53 = *(a7 + 44);
  v45 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v46 = *(a8 + 8);
  }

  v47 = *(a8 + 32);
  v45 = &unk_1F50D8978;
  v48 = *(a8 + 36);
  v41 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v42 = *(a9 + 8);
  }

  v43 = *(a9 + 32);
  v41 = &unk_1F50D8978;
  v44 = *(a9 + 36);
  v37 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v38 = *(a10 + 8);
  }

  v39 = *(a10 + 32);
  v37 = &unk_1F50D8978;
  v40 = *(a10 + 36);
  v33 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v34 = *(a11 + 8);
  }

  v35 = *(a11 + 32);
  v33 = &unk_1F50D8978;
  v36 = *(a11 + 36);
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    __p = *(a12 + 8);
  }

  v30 = *(a12 + 32);
  v31 = *(a12 + 36);
  v32 = *(a12 + 44);
  v112 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v113 = __s;
  }

  v114 = v67;
  v112 = &unk_1F50D89B8;
  v115 = v68;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v69;
  }

  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v59;
  }

  v107 = v60;
  v105 = &unk_1F50D89D8;
  v108 = v61;
  mediaplatform::Data::Data(&v109, __src, __n, 1);
  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v102 = v55;
  }

  v103 = v56;
  v101 = &unk_1F50D8978;
  v104 = v57;
  v96 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v97 = v50;
  }

  v98 = v51;
  v96 = &unk_1F50D8958;
  v99 = v52;
  v100 = v53;
  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v93, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v93 = v46;
  }

  v94 = v47;
  v92 = &unk_1F50D8978;
  v95 = v48;
  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v42;
  }

  v90 = v43;
  v88 = &unk_1F50D8978;
  v91 = v44;
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v38;
  }

  v86 = v39;
  v84 = &unk_1F50D8978;
  v87 = v40;
  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v34;
  }

  v82 = v35;
  v80 = &unk_1F50D8978;
  v83 = v36;
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = __p;
  }

  v77 = v30;
  v75 = &unk_1F50D8958;
  v78 = v31;
  v79 = v32;
  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v148 = v106;
  }

  v149 = v107;
  v147 = &unk_1F50D89D8;
  v150 = v108;
  mediaplatform::Data::Data(&v151, v111, v110, 1);
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v102;
  }

  v145 = v103;
  v143 = &unk_1F50D8978;
  v146 = v104;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v97;
  }

  v140 = v98;
  v138 = &unk_1F50D8958;
  v141 = v99;
  v142 = v100;
  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v93;
  }

  v136 = v94;
  v134 = &unk_1F50D8978;
  v137 = v95;
  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v89;
  }

  v132 = v90;
  v130 = &unk_1F50D8978;
  v133 = v91;
  v126 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v127 = v85;
  }

  v128 = v86;
  v126 = &unk_1F50D8978;
  v129 = v87;
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v81;
  }

  v124 = v82;
  v122 = &unk_1F50D8978;
  v125 = v83;
  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v76;
  }

  v119 = v77;
  v117 = &unk_1F50D8958;
  v120 = v78;
  v121 = v79;
  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v181 = v144;
  }

  v182 = v145;
  v180 = &unk_1F50D8978;
  v183 = v146;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v139;
  }

  v177 = v140;
  v175 = &unk_1F50D8958;
  v178 = v141;
  v179 = v142;
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v135;
  }

  v173 = v136;
  v171 = &unk_1F50D8978;
  v174 = v137;
  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v168, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v168 = v131;
  }

  v169 = v132;
  v167 = &unk_1F50D8978;
  v170 = v133;
  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v127;
  }

  v165 = v128;
  v163 = &unk_1F50D8978;
  v166 = v129;
  v159 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v160, v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    v160 = v123;
  }

  v161 = v124;
  v159 = &unk_1F50D8978;
  v162 = v125;
  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    v155 = v118;
  }

  v156 = v119;
  v154 = &unk_1F50D8958;
  v157 = v120;
  v158 = v121;
  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v176;
  }

  v207 = v177;
  v205 = &unk_1F50D8958;
  v208 = v178;
  v209 = v179;
  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v202 = v172;
  }

  v203 = v173;
  v201 = &unk_1F50D8978;
  v204 = v174;
  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v168;
  }

  v199 = v169;
  v197 = &unk_1F50D8978;
  v200 = v170;
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v164;
  }

  v195 = v165;
  v193 = &unk_1F50D8978;
  v196 = v166;
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v160.__r_.__value_.__l.__data_, v160.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v160;
  }

  v191 = v161;
  v189 = &unk_1F50D8978;
  v192 = v162;
  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v185, v155.__r_.__value_.__l.__data_, v155.__r_.__value_.__l.__size_);
  }

  else
  {
    v185 = v155;
  }

  v186 = v156;
  v184 = &unk_1F50D8958;
  v187 = v157;
  v188 = v158;
  v227 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v228, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v228 = v202;
  }

  v229 = v203;
  v227 = &unk_1F50D8978;
  v230 = v204;
  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_);
  }

  else
  {
    v224 = v198;
  }

  v225 = v199;
  v223 = &unk_1F50D8978;
  v226 = v200;
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v194;
  }

  v221 = v195;
  v219 = &unk_1F50D8978;
  v222 = v196;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v190;
  }

  v217 = v191;
  v215 = &unk_1F50D8978;
  v218 = v192;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v185;
  }

  v212 = v186;
  v210 = &unk_1F50D8958;
  v213 = v187;
  v214 = v188;
  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v245, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    v245 = v224;
  }

  v246 = v225;
  v244 = &unk_1F50D8978;
  v247 = v226;
  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v241, v220.__r_.__value_.__l.__data_, v220.__r_.__value_.__l.__size_);
  }

  else
  {
    v241 = v220;
  }

  v242 = v221;
  v240 = &unk_1F50D8978;
  v243 = v222;
  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v237, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    v237 = v216;
  }

  v238 = v217;
  v236 = &unk_1F50D8978;
  v239 = v218;
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v232, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v232 = v211;
  }

  v233 = v212;
  v231 = &unk_1F50D8958;
  v234 = v213;
  v235 = v214;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v241.__r_.__value_.__l.__data_, v241.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v241;
  }

  v259 = v242;
  v257 = &unk_1F50D8978;
  v260 = v243;
  v253 = &unk_1F50D86E0;
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v254, v237.__r_.__value_.__l.__data_, v237.__r_.__value_.__l.__size_);
  }

  else
  {
    v254 = v237;
  }

  v255 = v238;
  v253 = &unk_1F50D8978;
  v256 = v239;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v249, v232.__r_.__value_.__l.__data_, v232.__r_.__value_.__l.__size_);
  }

  else
  {
    v249 = v232;
  }

  v250 = v233;
  v248 = &unk_1F50D8958;
  v251 = v234;
  v252 = v235;
  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v267, v254.__r_.__value_.__l.__data_, v254.__r_.__value_.__l.__size_);
  }

  else
  {
    v267 = v254;
  }

  v268 = v255;
  v266 = &unk_1F50D8978;
  v269 = v256;
  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v249.__r_.__value_.__l.__data_, v249.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v249;
  }

  v19 = v250;
  v263 = v250;
  v261 = &unk_1F50D8958;
  v264 = v251;
  v265 = v252;
  v270 = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v271, v262.__r_.__value_.__l.__data_, v262.__r_.__value_.__l.__size_);
    v19 = v263;
  }

  else
  {
    v271 = v262;
  }

  v272 = v19;
  v270 = &unk_1F50D8958;
  v273 = v264;
  v274 = v265;
  *a1 = &unk_1F50D86E0;
  if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), v271.__r_.__value_.__l.__data_, v271.__r_.__value_.__l.__size_);
    v20 = SHIBYTE(v271.__r_.__value_.__r.__words[2]);
    *(a1 + 32) = v272;
    *a1 = &unk_1F50D8958;
    *(a1 + 36) = v273;
    *(a1 + 44) = v274;
    v270 = &unk_1F50D86E0;
    if (v20 < 0)
    {
      operator delete(v271.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 8) = v271;
    *(a1 + 32) = v19;
    *a1 = &unk_1F50D8958;
    *(a1 + 36) = v273;
    *(a1 + 44) = v274;
    v270 = &unk_1F50D86E0;
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), v267.__r_.__value_.__l.__data_, v267.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 56) = v267;
  }

  *(a1 + 80) = v268;
  *(a1 + 48) = &unk_1F50D8978;
  *(a1 + 84) = v269;
  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), v258.__r_.__value_.__l.__data_, v258.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 104) = v258;
  }

  *(a1 + 128) = v259;
  *(a1 + 96) = &unk_1F50D8978;
  *(a1 + 132) = v260;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v249.__r_.__value_.__l.__data_);
  }

  v253 = &unk_1F50D86E0;
  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v254.__r_.__value_.__l.__data_);
  }

  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), v245.__r_.__value_.__l.__data_, v245.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 152) = v245;
  }

  *(a1 + 176) = v246;
  *(a1 + 144) = &unk_1F50D8978;
  *(a1 + 180) = v247;
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
  }

  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 200), v228.__r_.__value_.__l.__data_, v228.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 200) = v228;
  }

  *(a1 + 224) = v229;
  *(a1 + 192) = &unk_1F50D8978;
  *(a1 + 228) = v230;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  v227 = &unk_1F50D86E0;
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 248), v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 248) = v206;
  }

  *(a1 + 272) = v207;
  *(a1 + 240) = &unk_1F50D8958;
  *(a1 + 276) = v208;
  *(a1 + 284) = v209;
  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  *(a1 + 288) = &unk_1F50D86E0;
  v21 = (a1 + 296);
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v21, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v21->__r_.__value_.__l.__data_ = *&v181.__r_.__value_.__l.__data_;
    *(a1 + 312) = *(&v181.__r_.__value_.__l + 2);
  }

  *(a1 + 320) = v182;
  *(a1 + 288) = &unk_1F50D8978;
  *(a1 + 324) = v183;
  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  v159 = &unk_1F50D86E0;
  if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v160.__r_.__value_.__l.__data_);
  }

  v163 = &unk_1F50D86E0;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v164.__r_.__value_.__l.__data_);
  }

  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  *(a1 + 336) = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 344), v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 344) = v148;
  }

  *(a1 + 368) = v149;
  *(a1 + 336) = &unk_1F50D89D8;
  *(a1 + 372) = v150;
  mediaplatform::Data::Data((a1 + 376), v153, v152, 1);
  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v126 = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v147);
  *(a1 + 416) = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 424), v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 424) = v113;
  }

  *(a1 + 448) = v114;
  *(a1 + 416) = &unk_1F50D89B8;
  *(a1 + 452) = v115;
  v22 = (a1 + 456);
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v22, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v22->__r_.__value_.__l.__data_ = *&v116.__r_.__value_.__l.__data_;
    *(a1 + 472) = *(&v116.__r_.__value_.__l + 2);
  }

  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v88 = &unk_1F50D86E0;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v96 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v105);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v112);
  *(a1 + 480) = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 488), v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 488) = v71;
  }

  *(a1 + 512) = v72;
  *(a1 + 480) = &unk_1F50D89B8;
  *(a1 + 516) = v73;
  v23 = (a1 + 520);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v23, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v23->__r_.__value_.__l.__data_ = *&v74.__r_.__value_.__l.__data_;
    *(a1 + 536) = *(&v74.__r_.__value_.__l + 2);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v33 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v37 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v41 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v49 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v58);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v65);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v70);
  *(a1 + 544) = &unk_1F50D86E0;
  v24 = (a1 + 552);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v24, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v25 = *(a2 + 8);
    *(a1 + 568) = *(a2 + 24);
    *&v24->__r_.__value_.__l.__data_ = v25;
  }

  *(a1 + 576) = *(a2 + 32);
  *(a1 + 544) = &unk_1F50D8958;
  v26 = *(a2 + 36);
  *(a1 + 588) = *(a2 + 44);
  *(a1 + 580) = v26;
  return a1;
}

void sub_1D5ADAEF0(_Unwind_Exception *a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v1);
  mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(v2);
  _Unwind_Resume(a1);
}

void sub_1D5ADB600()
{
  STACK[0x538] = v0;
  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  JUMPOUT(0x1D5ADB408);
}

void sub_1D5ADB664()
{
  STACK[0x318] = v0;
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  JUMPOUT(0x1D5ADB4C0);
}

void sub_1D5ADB688()
{
  STACK[0x358] = v0;
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  JUMPOUT(0x1D5ADB4C8);
}

void sub_1D5ADB6A4()
{
  *(v2 + 336) = v1;
  if (*(v2 + 367) < 0)
  {
    operator delete(*v0);
  }

  mediaplatform::DatabaseColumnTuple<14ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<double>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>>::~DatabaseColumnTuple(v2);
  JUMPOUT(0x1D5ADB2A0);
}

void sub_1D5ADB6C8()
{
  STACK[0x6C8] = v0;
  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(STACK[0x6D0]);
  }

  JUMPOUT(0x1D5ADB350);
}

void sub_1D5ADB6E4()
{
  STACK[0x4E8] = v0;
  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  JUMPOUT(0x1D5ADB400);
}

void sub_1D5ADB700()
{
  STACK[0x2C8] = v0;
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  JUMPOUT(0x1D5ADB4B8);
}

void mlcore::ComposerTable::persistentIDColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
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

void mlcore::ComposerTable::nameColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 751) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 91), *(this + 92));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 728);
    *(a2 + 24) = *(this + 93);
  }

  *(a2 + 32) = *(this + 188);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 756);
  if (*(this + 783) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 95), *(this + 96));
  }

  else
  {
    *(a2 + 40) = *(this + 760);
    *(a2 + 56) = *(this + 97);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5ADB8C0(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ComposerTable::sortNameColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 815) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 99), *(this + 100));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 792);
    *(a2 + 24) = *(this + 101);
  }

  *(a2 + 32) = *(this + 204);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 820);
  if (*(this + 847) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 103), *(this + 104));
  }

  else
  {
    *(a2 + 40) = *(this + 824);
    *(a2 + 56) = *(this + 105);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5ADB9D8(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

mediaplatform::Data *mlcore::ComposerTable::groupingKeyColumn@<X0>(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 879) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 107), *(this + 108));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 856);
    *(a2 + 24) = *(this + 109);
  }

  *(a2 + 32) = *(this + 220);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 884);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 114), *(this + 112), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D5ADBAD4(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ComposerTable::cloudStatusColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 959) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 117), *(this + 118));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 936);
    *(a2 + 24) = *(this + 119);
  }

  *(a2 + 32) = *(this + 240);
  *(a2 + 36) = *(this + 964);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ComposerTable::representativeItemPersistentIDColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1007) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 123), *(this + 124));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 984);
    *(a2 + 24) = *(this + 125);
  }

  *(a2 + 32) = *(this + 252);
  *(a2 + 44) = *(this + 255);
  *(a2 + 36) = *(this + 1012);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ComposerTable::keepLocalColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1055) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 129), *(this + 130));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1032);
    *(a2 + 24) = *(this + 131);
  }

  *(a2 + 32) = *(this + 264);
  *(a2 + 36) = *(this + 1060);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ComposerTable::keepLocalStatusColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1103) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 135), *(this + 136));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1080);
    *(a2 + 24) = *(this + 137);
  }

  *(a2 + 32) = *(this + 276);
  *(a2 + 36) = *(this + 1108);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ComposerTable::keepLocalStatusReasonColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1151) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 141), *(this + 142));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1128);
    *(a2 + 24) = *(this + 143);
  }

  *(a2 + 32) = *(this + 288);
  *(a2 + 36) = *(this + 1156);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ComposerTable::keepLocalConstraintsColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1199) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 147), *(this + 148));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1176);
    *(a2 + 24) = *(this + 149);
  }

  *(a2 + 32) = *(this + 300);
  *(a2 + 36) = *(this + 1204);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::ComposerTable::syncIDColumn(mlcore::ComposerTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1247) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 153), *(this + 154));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1224);
    *(a2 + 24) = *(this + 155);
  }

  *(a2 + 32) = *(this + 312);
  *(a2 + 44) = *(this + 315);
  *(a2 + 36) = *(this + 1252);
  *a2 = &unk_1F50D7AC0;
}

uint64_t mlcore::ContentRestrictions::ContentRestrictions(uint64_t this, char a2, char a3, char a4, int a5, int a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 4) = a5;
  *(this + 8) = a6;
  return this;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 4) = a5;
  *(this + 8) = a6;
  return this;
}

void mlcore::ContentRestrictions::_predicate(mlcore::ContentRestrictions *this, int a2)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v3 = mlcore::ItemPropertyMediaType(this);
  v4 = mlcore::ItemPropertyContentRating(v3);
  v5 = mlcore::ItemPropertyContentRatingLevel(v4);
  if (a2)
  {
    v6 = mlcore::PlaylistItemPropertyItemPersistentID(v5);
    v7[0] = 0;
    v7[1] = 0;
    mlcore::GetForeignProperty<int>(v6, v3, v7);
  }

  operator new();
}

void sub_1D5ADC954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v30 - 128) = v29;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100]((v30 - 128));
  *(v30 - 128) = &a29;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100]((v30 - 128));
  v32 = *(v30 - 184);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void mlcore::EntityRevisionController::EntityRevisionController()
{
  std::allocate_shared[abi:ne200100]<mlcore::DeviceLibraryView,std::allocator<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::DeviceLibrary> &,0>();
}

{
  std::allocate_shared[abi:ne200100]<mlcore::DeviceLibraryView,std::allocator<mlcore::DeviceLibraryView>,std::shared_ptr<mlcore::DeviceLibrary> &,0>();
}

void *mlcore::EntityRevisionController::EntityRevisionController(void *result, void *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 24);
  *result = *(*a2 + 16);
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v4 = a2[1];
  result[2] = v2;
  result[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = *a2;
  v3 = *(*a2 + 24);
  *result = *(*a2 + 16);
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a2;
  }

  v4 = a2[1];
  result[2] = v2;
  result[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void mlcore::EntityRevisionController::fetchRevision()
{
  v0 = *MEMORY[0x1E69E9840];
  {
    _ZNSt3__115allocate_sharedB8ne200100IN6mlcore19EntityRevisionTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (mediaplatform::Singleton<mlcore::EntityRevisionTable>::sharedInstance(void)::instance)
  {
    atomic_fetch_add_explicit((mediaplatform::Singleton<mlcore::EntityRevisionTable>::sharedInstance(void)::instance + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t mediaplatform::DatabaseResult<int,long long,int,int,int>::enumerateRows(uint64_t *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 0;
  while (1)
  {
    v4 = *a1;
    v5 = sqlite3_step(*(*a1 + 24));
    mediaplatform::DatabaseStatement::_checkSQLiteResult(v4, v5);
    *(v4 + 56) = v5;
    v6 = *a1;
    v7 = *(*a1 + 56);
    if (v7 != 100)
    {
      break;
    }

    v9 = *(v6 + 24);
    v8 = (v6 + 24);
    v10 = sqlite3_column_int(v9, 0);
    v11 = sqlite3_column_int64(*v8, 1);
    v12 = sqlite3_column_int(*v8, 2);
    v13 = sqlite3_column_int(*v8, 3);
    LODWORD(v8) = sqlite3_column_int(*v8, 4);
    std::__function::__value_func<void ()(int,long long,int,int,int,BOOL &)>::__value_func[abi:ne200100](v23, a2);
    std::__function::__value_func<void ()(int,long long,int,int,int,BOOL &)>::__value_func[abi:ne200100](v24, v23);
    v22 = v10;
    v21 = v11;
    v19 = v13;
    v20 = v12;
    v18 = v8;
    if (!v25)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v25 + 48))(v25, &v22, &v21, &v20, &v19, &v18, &v17);
    std::__function::__value_func<void ()(int,long long,int,int,int,BOOL &)>::~__value_func[abi:ne200100](v24);
    std::__function::__value_func<void ()(int,long long,int,int,int,BOOL &)>::~__value_func[abi:ne200100](v23);
    if (v17)
    {
      v6 = *a1;
      goto LABEL_8;
    }
  }

  if (v7 == -1)
  {
    __assert_rtn("hasColumnValueData", "DatabaseStatement.cpp", 102, "_lastStepResult != -1");
  }

  v17 = 1;
LABEL_8:
  v14 = sqlite3_reset(*(v6 + 24));
  result = mediaplatform::DatabaseStatement::_checkSQLiteResult(v6, v14);
  *(v6 + 56) = -1;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D5ADDCD8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_1D5ADDCF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D5ADDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(int,long long,int,int,int,BOOL &)>::~__value_func[abi:ne200100](va);
  JUMPOUT(0x1D5ADDD20);
}

uint64_t std::__function::__value_func<void ()(int,long long,int,int,int,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::promise<mlcore::EntityRevision>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v12);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x1DA6ED9C0](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x1E69E5508] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v2, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x1DA6ED9D0](v10);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(int,long long,int,int,int,BOOL &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<mlcore::EntityRevisionController::fetchRevision(std::shared_ptr<mlcore::Entity const>,std::function<void ()(mlcore::EntityRevision const&)> const&)::$_0,std::allocator<mlcore::EntityRevisionController::fetchRevision(std::shared_ptr<mlcore::Entity const>,std::function<void ()(mlcore::EntityRevision const&)> const&)::$_0>,void ()(int,long long,int,int,int,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6mlcore24EntityRevisionController13fetchRevisionENSt3__110shared_ptrIKNS_6EntityEEERKNS1_8functionIFvRKNS_14EntityRevisionEEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<mlcore::EntityRevisionController::fetchRevision(std::shared_ptr<mlcore::Entity const>,std::function<void ()(mlcore::EntityRevision const&)> const&)::$_0,std::allocator<mlcore::EntityRevisionController::fetchRevision(std::shared_ptr<mlcore::Entity const>,std::function<void ()(mlcore::EntityRevision const&)> const&)::$_0>,void ()(int,long long,int,int,int,BOOL &)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  mlcore::Entity::createWithType(*a5, &v8);
}

void sub_1D5ADE13C(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 24));
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x1DA6ED9C0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x1E69E53B0], MEMORY[0x1E69E52C8]);
}

uint64_t std::__function::__func<mlcore::EntityRevisionController::fetchRevision(std::shared_ptr<mlcore::Entity const>,std::function<void ()(mlcore::EntityRevision const&)> const&)::$_0,std::allocator<mlcore::EntityRevisionController::fetchRevision(std::shared_ptr<mlcore::Entity const>,std::function<void ()(mlcore::EntityRevision const&)> const&)::$_0>,void ()(int,long long,int,int,int,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F50D2DA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__assoc_state<mlcore::EntityRevision>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

void std::__assoc_state<mlcore::EntityRevision>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

uint64_t std::__function::__func<mediaplatform::DatabaseResult<int,long long,int,int,int>::hasAtLeastOneRow(void)::{lambda(int,long long,int,int,int,BOOL &)#1},std::allocator<mediaplatform::DatabaseResult<int,long long,int,int,int>::hasAtLeastOneRow(void)::{lambda(int,long long,int,int,int,BOOL &)#1}>,void ()(int,long long,int,int,int,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D5B07822))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mediaplatform::DatabaseResult<int,long long,int,int,int>::hasAtLeastOneRow(void)::{lambda(int,long long,int,int,int,BOOL &)#1},std::allocator<mediaplatform::DatabaseResult<int,long long,int,int,int>::hasAtLeastOneRow(void)::{lambda(int,long long,int,int,int,BOOL &)#1}>,void ()(int,long long,int,int,int,BOOL &)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  **(result + 8) = 1;
  *a7 = 1;
  return result;
}

uint64_t std::__function::__func<mediaplatform::DatabaseResult<int,long long,int,int,int>::hasAtLeastOneRow(void)::{lambda(int,long long,int,int,int,BOOL &)#1},std::allocator<mediaplatform::DatabaseResult<int,long long,int,int,int>::hasAtLeastOneRow(void)::{lambda(int,long long,int,int,int,BOOL &)#1}>,void ()(int,long long,int,int,int,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F50D3798;
  a2[1] = v2;
  return result;
}

void sub_1D5ADE530(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::EntityRevisionTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D15B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::EntityRevisionController::latestRevisionNumber(mlcore::EntityRevisionController *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 56);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *v2;
    std::string::basic_string[abi:ne200100]<0>(&__p, "SELECT MAX(revision) FROM entity_revision");
    mediaplatform::DatabaseConnection::_ensureConnectionIsOpen(v4);
    mediaplatform::DatabaseConnection::_prepareStatement(v4, &__p, &v6);
  }

  mlcore::DeviceLibraryView::checkoutReader(*this);
}

void sub_1D5ADE6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

mlcore::CategoryTable *mlcore::CategoryTable::CategoryTable(mlcore::CategoryTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "category");
  std::string::basic_string[abi:ne200100]<0>(&v11, "category_id");
  v12 = &unk_1F50D86E0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = v11;
  }

  v14 = 1;
  v15 = 0;
  v16 = 0;
  v12 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "category");
  v4 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = __p;
  }

  v6 = 48;
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v4 = &unk_1F50D7B20;
  mlcore::MediaTable<long long,std::string>::MediaTable(this, &v17, &v12, &v4);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  *this = &unk_1F50D7630;
  return this;
}

void sub_1D5ADE8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v30 - 88) = v29;
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v30 - 17) < 0)
  {
    operator delete(*(v30 - 40));
  }

  _Unwind_Resume(exception_object);
}

void mlcore::CategoryTable::~CategoryTable(mlcore::CategoryTable *this)
{
  *this = &unk_1F50D8478;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 240);
  *(this + 24) = &unk_1F50D86E0;
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  *this = &unk_1F50D8EC8;
  *(this + 18) = &unk_1F50D86E0;
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D8478;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 240);
  *(this + 24) = &unk_1F50D86E0;
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  *this = &unk_1F50D8EC8;
  *(this + 18) = &unk_1F50D86E0;
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(this + 80);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void mlcore::CategoryTable::categoryIDColumn(mlcore::CategoryTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 223) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 25), *(this + 26));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 200);
    *(a2 + 24) = *(this + 27);
  }

  *(a2 + 32) = *(this + 56);
  *(a2 + 36) = *(this + 228);
  *(a2 + 44) = *(this + 59);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::CategoryTable::categoryColumn(mlcore::CategoryTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 271) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 31), *(this + 32));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 248);
    *(a2 + 24) = *(this + 33);
  }

  *(a2 + 32) = *(this + 68);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 276);
  if (*(this + 303) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 35), *(this + 36));
  }

  else
  {
    *(a2 + 40) = *(this + 280);
    *(a2 + 56) = *(this + 37);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5ADECDC(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

mlcore::ContainerItemTable *mlcore::ContainerItemTable::ContainerItemTable(mlcore::ContainerItemTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(v58, "container_item");
  std::string::basic_string[abi:ne200100]<0>(&__s, "container_item_pid");
  v54 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = __s;
  }

  v56 = 1;
  v57[0] = 0;
  *&v57[4] = 0;
  v54 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v48, "container_pid");
  v49 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = v48;
  }

  v51 = 16;
  v52[0] = 1;
  *&v52[4] = 0;
  v49 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v43, "item_pid");
  v44 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v43;
  }

  v46 = 16;
  v47[0] = 1;
  *&v47[4] = 0;
  v44 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v38, "position");
  v39 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v38;
  }

  v41 = 16;
  v42[0] = 1;
  *&v42[4] = 0;
  v39 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v31, "uuid");
  std::string::basic_string[abi:ne200100]<0>(v29, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v33, v31, v29);
  std::string::basic_string[abi:ne200100]<0>(v22, "position_uuid");
  std::string::basic_string[abi:ne200100]<0>(v20, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v24, v22, v20);
  std::string::basic_string[abi:ne200100]<0>(v13, "occurrence_id");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v15, v13, __p);
  v90 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = v55;
  }

  v92 = v56;
  v90 = &unk_1F50D8958;
  v93 = *v57;
  v94 = *&v57[8];
  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v50;
  }

  v87 = v51;
  v85 = &unk_1F50D8958;
  v88 = *v52;
  v89 = *&v52[8];
  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v45;
  }

  v82 = v46;
  v80 = &unk_1F50D8958;
  v83 = *v47;
  v84 = *&v47[8];
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = v40;
  }

  v77 = v41;
  v75 = &unk_1F50D8958;
  v78 = *v42;
  v79 = *&v42[8];
  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v34;
  }

  v72 = v35;
  v70 = &unk_1F50D89B8;
  v73 = v36;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v74 = v37;
  }

  v65 = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v66 = v25;
  }

  v67 = v26;
  v65 = &unk_1F50D89B8;
  v68 = v27;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v69 = v28;
  }

  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = v16;
  }

  v62 = v17;
  v60 = &unk_1F50D89B8;
  v63 = v18;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v64 = v19;
  }

  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v59) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v58[0], v58[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v58;
    *(this + 3) = v59;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50DE418;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v91;
  }

  v127 = v92;
  v125 = &unk_1F50D8958;
  v128 = v93;
  v129 = v94;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v86;
  }

  v122 = v87;
  v120 = &unk_1F50D8958;
  v123 = v88;
  v124 = v89;
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v81;
  }

  v117 = v82;
  v115 = &unk_1F50D8958;
  v118 = v83;
  v119 = v84;
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v76;
  }

  v112 = v77;
  v110 = &unk_1F50D8958;
  v113 = v78;
  v114 = v79;
  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v71;
  }

  v107 = v72;
  v105 = &unk_1F50D89B8;
  v108 = v73;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v109 = v74;
  }

  v100 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v101 = v66;
  }

  v102 = v67;
  v100 = &unk_1F50D89B8;
  v103 = v68;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = v69;
  }

  v95 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v96 = v61;
  }

  v97 = v62;
  v95 = &unk_1F50D89B8;
  v98 = v63;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v64;
  }

  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v156, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v156 = v121;
  }

  v157 = v122;
  v155 = &unk_1F50D8958;
  v158 = v123;
  v159 = v124;
  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v116;
  }

  v152 = v117;
  v150 = &unk_1F50D8958;
  v153 = v118;
  v154 = v119;
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v111;
  }

  v147 = v112;
  v145 = &unk_1F50D8958;
  v148 = v113;
  v149 = v114;
  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v141 = v106;
  }

  v142 = v107;
  v140 = &unk_1F50D89B8;
  v143 = v108;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v109;
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
  }

  else
  {
    v136 = v101;
  }

  v137 = v102;
  v135 = &unk_1F50D89B8;
  v138 = v103;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v104;
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v96;
  }

  v132 = v97;
  v130 = &unk_1F50D89B8;
  v133 = v98;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v99;
  }

  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v181 = v151;
  }

  v182 = v152;
  v180 = &unk_1F50D8958;
  v183 = v153;
  v184 = v154;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v146;
  }

  v177 = v147;
  v175 = &unk_1F50D8958;
  v178 = v148;
  v179 = v149;
  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v141;
  }

  v172 = v142;
  v170 = &unk_1F50D89B8;
  v173 = v143;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v144;
  }

  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v136;
  }

  v167 = v137;
  v165 = &unk_1F50D89B8;
  v168 = v138;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v169 = v139;
  }

  v160 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v161 = v131;
  }

  v162 = v132;
  v160 = &unk_1F50D89B8;
  v163 = v133;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v134;
  }

  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v201 = v176;
  }

  v202 = v177;
  v200 = &unk_1F50D8958;
  v203 = v178;
  v204 = v179;
  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v196, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
  }

  else
  {
    v196 = v171;
  }

  v197 = v172;
  v195 = &unk_1F50D89B8;
  v198 = v173;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v199, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v199 = v174;
  }

  v190 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    v191 = v166;
  }

  v192 = v167;
  v190 = &unk_1F50D89B8;
  v193 = v168;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v169;
  }

  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v161.__r_.__value_.__l.__data_, v161.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v161;
  }

  v187 = v162;
  v185 = &unk_1F50D89B8;
  v188 = v163;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v189, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v189 = v164;
  }

  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v196;
  }

  v217 = v197;
  v215 = &unk_1F50D89B8;
  v218 = v198;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, v199.__r_.__value_.__l.__data_, v199.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = v199;
  }

  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v191.__r_.__value_.__l.__data_, v191.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v191;
  }

  v212 = v192;
  v210 = &unk_1F50D89B8;
  v213 = v193;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v214, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v214 = v194;
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v186;
  }

  v207 = v187;
  v205 = &unk_1F50D89B8;
  v208 = v188;
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v209, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
  }

  else
  {
    v209 = v189;
  }

  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v211;
  }

  v227 = v212;
  v225 = &unk_1F50D89B8;
  v228 = v213;
  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, v214.__r_.__value_.__l.__data_, v214.__r_.__value_.__l.__size_);
  }

  else
  {
    v229 = v214;
  }

  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v221, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v221 = v206;
  }

  v222 = v207;
  v220 = &unk_1F50D89B8;
  v223 = v208;
  if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, v209.__r_.__value_.__l.__data_, v209.__r_.__value_.__l.__size_);
  }

  else
  {
    v224 = v209;
  }

  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, v221.__r_.__value_.__l.__data_, v221.__r_.__value_.__l.__size_);
  }

  else
  {
    v231 = v221;
  }

  v232 = v222;
  v230 = &unk_1F50D89B8;
  v233 = v223;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    v234 = v224;
  }

  *(this + 10) = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), v231.__r_.__value_.__l.__data_, v231.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 88) = v231;
  }

  *(this + 28) = v232;
  *(this + 10) = &unk_1F50D89B8;
  *(this + 116) = v233;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 5) = v234;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v230);
  *(this + 18) = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), v226.__r_.__value_.__l.__data_, v226.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 152) = v226;
  }

  *(this + 44) = v227;
  *(this + 18) = &unk_1F50D89B8;
  *(this + 180) = v228;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 184), v229.__r_.__value_.__l.__data_, v229.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 184) = v229;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v220);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v225);
  *(this + 26) = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 9, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 9) = v216;
  }

  *(this + 60) = v217;
  *(this + 26) = &unk_1F50D89B8;
  *(this + 244) = v218;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 248) = v219;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v205);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v210);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v215);
  *(this + 34) = &unk_1F50D86E0;
  v3 = (this + 280);
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v201.__r_.__value_.__l.__data_;
    *(this + 37) = *(&v201.__r_.__value_.__l + 2);
  }

  *(this + 76) = v202;
  *(this + 34) = &unk_1F50D8958;
  *(this + 308) = v203;
  *(this + 79) = v204;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v185);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v190);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v195);
  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  *(this + 40) = &unk_1F50D86E0;
  v4 = (this + 328);
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v181.__r_.__value_.__l.__data_;
    *(this + 43) = *(&v181.__r_.__value_.__l + 2);
  }

  *(this + 88) = v182;
  *(this + 40) = &unk_1F50D8958;
  *(this + 356) = v183;
  *(this + 91) = v184;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v160);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v165);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v170);
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  *(this + 46) = &unk_1F50D86E0;
  v5 = (this + 376);
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v156.__r_.__value_.__l.__data_, v156.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v156.__r_.__value_.__l.__data_;
    *(this + 49) = *(&v156.__r_.__value_.__l + 2);
  }

  *(this + 100) = v157;
  *(this + 46) = &unk_1F50D8958;
  *(this + 404) = v158;
  *(this + 103) = v159;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v130);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v135);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v140);
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  v155 = &unk_1F50D86E0;
  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  *(this + 52) = &unk_1F50D86E0;
  v6 = (this + 424);
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *&v126.__r_.__value_.__l.__data_;
    *(this + 55) = *(&v126.__r_.__value_.__l + 2);
  }

  *(this + 112) = v127;
  *(this + 52) = &unk_1F50D8958;
  *(this + 452) = v128;
  *(this + 115) = v129;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v95);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v100);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v105);
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v60);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v65);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v70);
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v90 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50DE3E0;
  *(this + 58) = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 472), v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 472) = v55;
  }

  *(this + 124) = v56;
  *(this + 500) = *v57;
  *(this + 127) = *&v57[8];
  *(this + 58) = &unk_1F50D7AC0;
  *(this + 64) = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 520), v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 520) = v50;
  }

  *(this + 136) = v51;
  *(this + 548) = *v52;
  *(this + 139) = *&v52[8];
  *(this + 64) = &unk_1F50D7AC0;
  *(this + 70) = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 568), v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 568) = v45;
  }

  *(this + 148) = v46;
  *(this + 596) = *v47;
  *(this + 151) = *&v47[8];
  *(this + 70) = &unk_1F50D7AC0;
  *(this + 76) = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 616), v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 616) = v40;
  }

  *(this + 160) = v41;
  *(this + 644) = *v42;
  *(this + 163) = *&v42[8];
  *(this + 76) = &unk_1F50D7AC0;
  *(this + 82) = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 664), v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 664) = v34;
  }

  *(this + 172) = v35;
  *(this + 82) = &unk_1F50D89B8;
  *(this + 692) = v36;
  v7 = (this + 696);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *&v37.__r_.__value_.__l.__data_;
    *(this + 89) = *(&v37.__r_.__value_.__l + 2);
  }

  *(this + 82) = &unk_1F50D7B20;
  *(this + 90) = &unk_1F50D86E0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 728), v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 728) = v25;
  }

  *(this + 188) = v26;
  *(this + 90) = &unk_1F50D89B8;
  *(this + 756) = v27;
  v8 = (this + 760);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&v28.__r_.__value_.__l.__data_;
    *(this + 97) = *(&v28.__r_.__value_.__l + 2);
  }

  *(this + 90) = &unk_1F50D7B20;
  *(this + 98) = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 33, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 33) = v16;
  }

  *(this + 204) = v17;
  *(this + 98) = &unk_1F50D89B8;
  *(this + 820) = v18;
  v9 = (this + 824);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&v19.__r_.__value_.__l.__data_;
    *(this + 105) = *(&v19.__r_.__value_.__l + 2);
  }

  *(this + 98) = &unk_1F50D7B20;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v15);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v24);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v33);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v39 = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v44 = &unk_1F50D86E0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v49 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[0]);
  }

  *this = &unk_1F50D4A48;
  return this;
}

void sub_1D5AE12EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, unint64_t a26, unint64_t a27, unint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  *(v80 + 784) = v76;
  if (*(v80 + 815) < 0)
  {
    operator delete(*v79);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v77);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v84);
  *(v80 + 608) = v83;
  if (*(v80 + 639) < 0)
  {
    operator delete(*v82);
  }

  *(v80 + 560) = a22;
  if (*(v80 + 591) < 0)
  {
    operator delete(*v81);
  }

  *(v80 + 512) = a23;
  if (*(v80 + 543) < 0)
  {
    operator delete(*v78);
  }

  *(v80 + 464) = a24;
  if (*(v80 + 495) < 0)
  {
    operator delete(*a21);
  }

  mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::~DatabaseTable(v80);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a41);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a61);
  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a75);
  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  STACK[0x208] = a25;
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a76);
  }

  STACK[0x250] = a26;
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  STACK[0x298] = a27;
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  STACK[0x2E0] = a28;
  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  _Unwind_Resume(a1);
}

void sub_1D5AE1810()
{
  STACK[0xA48] = v0;
  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  JUMPOUT(0x1D5AE14DCLL);
}

void sub_1D5AE1834()
{
  *(v1 - 216) = v0;
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  JUMPOUT(0x1D5AE14E4);
}

void sub_1D5AE1858()
{
  STACK[0x988] = v0;
  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  JUMPOUT(0x1D5AE14ECLL);
}

void sub_1D5AE187C()
{
  STACK[0x9C8] = v0;
  if (SLOBYTE(STACK[0x9E7]) < 0)
  {
    operator delete(STACK[0x9D0]);
  }

  JUMPOUT(0x1D5AE14F4);
}

void sub_1D5AE18A0()
{
  STACK[0xA08] = v0;
  if (SLOBYTE(STACK[0xA27]) < 0)
  {
    operator delete(STACK[0xA10]);
  }

  JUMPOUT(0x1D5AE14FCLL);
}

void sub_1D5AE18C4()
{
  STACK[0x898] = v0;
  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  JUMPOUT(0x1D5AE1504);
}

void sub_1D5AE18E8()
{
  STACK[0x8D8] = v0;
  if (SLOBYTE(STACK[0x8F7]) < 0)
  {
    operator delete(STACK[0x8E0]);
  }

  JUMPOUT(0x1D5AE150CLL);
}

void sub_1D5AE190C()
{
  STACK[0x918] = v0;
  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(STACK[0x920]);
  }

  JUMPOUT(0x1D5AE1514);
}

void sub_1D5AE1938()
{
  STACK[0x778] = v0;
  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  JUMPOUT(0x1D5AE1534);
}

void sub_1D5AE195C()
{
  STACK[0x7B8] = v0;
  if (SLOBYTE(STACK[0x7D7]) < 0)
  {
    operator delete(STACK[0x7C0]);
  }

  JUMPOUT(0x1D5AE153CLL);
}

void sub_1D5AE1980()
{
  STACK[0x7F8] = v0;
  if (SLOBYTE(STACK[0x817]) < 0)
  {
    operator delete(STACK[0x800]);
  }

  JUMPOUT(0x1D5AE1544);
}

void sub_1D5AE19B4()
{
  STACK[0x628] = v0;
  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  JUMPOUT(0x1D5AE157CLL);
}

void sub_1D5AE19D8()
{
  STACK[0x668] = v0;
  if (SLOBYTE(STACK[0x687]) < 0)
  {
    operator delete(STACK[0x670]);
  }

  JUMPOUT(0x1D5AE1584);
}

void sub_1D5AE19FC()
{
  STACK[0x6A8] = v0;
  if (SLOBYTE(STACK[0x6C7]) < 0)
  {
    operator delete(STACK[0x6B0]);
  }

  JUMPOUT(0x1D5AE158CLL);
}

void sub_1D5AE1A38()
{
  STACK[0x4A8] = v0;
  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  JUMPOUT(0x1D5AE15DCLL);
}

void sub_1D5AE1A5C()
{
  STACK[0x4E8] = v0;
  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  JUMPOUT(0x1D5AE15E4);
}

void sub_1D5AE1A80()
{
  STACK[0x528] = v0;
  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  JUMPOUT(0x1D5AE15ECLL);
}

void sub_1D5AE1ACC()
{
  STACK[0x328] = v0;
  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  JUMPOUT(0x1D5AE1670);
}

void sub_1D5AE1AF0()
{
  STACK[0x368] = v0;
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  JUMPOUT(0x1D5AE1678);
}

void sub_1D5AE1B14()
{
  STACK[0x3A8] = v0;
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  JUMPOUT(0x1D5AE1680);
}

void sub_1D5AE1C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 416);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 368);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 208);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 144);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 80);
}

void sub_1D5AE1CFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::ContainerItemTable::~ContainerItemTable(mlcore::ContainerItemTable *this)
{
  *this = &unk_1F50DE3E0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>>::~__tuple_impl(this + 464);
  mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DE3E0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>>::~__tuple_impl(this + 464);

  mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::~DatabaseTable(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>>::~__tuple_impl(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 320);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 256);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 192);
  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50DE418;
  *(a1 + 416) = &unk_1F50D86E0;
  if (*(a1 + 447) < 0)
  {
    operator delete(*(a1 + 424));
  }

  *(a1 + 368) = &unk_1F50D86E0;
  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  *(a1 + 320) = &unk_1F50D86E0;
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  *(a1 + 272) = &unk_1F50D86E0;
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 208);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 144);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaTable<long long,long long,long long,long long,std::string,std::string,std::string>::~MediaTable(void *a1)
{
  *a1 = &unk_1F50DE3E0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>>::~__tuple_impl((a1 + 58));
  mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50DE3E0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>>::~__tuple_impl((a1 + 58));

  mediaplatform::DatabaseTable<long long,long long,long long,long long,std::string,std::string,std::string>::~DatabaseTable(a1);
}

void mlcore::ContainerItemTable::persistentIDColumn(mlcore::ContainerItemTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 495) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 59), *(this + 60));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 472);
    *(a2 + 24) = *(this + 61);
  }

  *(a2 + 32) = *(this + 124);
  *(a2 + 44) = *(this + 127);
  *(a2 + 36) = *(this + 500);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ContainerItemTable::containerPIDColumn(mlcore::ContainerItemTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 543) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 65), *(this + 66));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 520);
    *(a2 + 24) = *(this + 67);
  }

  *(a2 + 32) = *(this + 136);
  *(a2 + 44) = *(this + 139);
  *(a2 + 36) = *(this + 548);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ContainerItemTable::itemPIDColumn(mlcore::ContainerItemTable *this@<X0>, uint64_t a2@<X8>)
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

void mlcore::ContainerItemTable::positionColumn(mlcore::ContainerItemTable *this@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 44) = *(this + 163);
  *(a2 + 36) = *(this + 644);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ContainerItemTable::UUIDColumn(mlcore::ContainerItemTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 687) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 83), *(this + 84));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 664);
    *(a2 + 24) = *(this + 85);
  }

  *(a2 + 32) = *(this + 172);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 692);
  if (*(this + 719) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 87), *(this + 88));
  }

  else
  {
    *(a2 + 40) = *(this + 696);
    *(a2 + 56) = *(this + 89);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AE24A8(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ContainerItemTable::positionUUIDColumn(mlcore::ContainerItemTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 751) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 91), *(this + 92));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 728);
    *(a2 + 24) = *(this + 93);
  }

  *(a2 + 32) = *(this + 188);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 756);
  if (*(this + 783) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 95), *(this + 96));
  }

  else
  {
    *(a2 + 40) = *(this + 760);
    *(a2 + 56) = *(this + 97);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AE25C0(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ContainerItemTable::occurrenceIDColumn(mlcore::ContainerItemTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 815) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 99), *(this + 100));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 792);
    *(a2 + 24) = *(this + 101);
  }

  *(a2 + 32) = *(this + 204);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 820);
  if (*(this + 847) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 103), *(this + 104));
  }

  else
  {
    *(a2 + 40) = *(this + 824);
    *(a2 + 56) = *(this + 105);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AE26D8(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ContainerItemPersonTable::targetColumnExpression(mlcore::ContainerItemPersonTable *this, const mediaplatform::DatabaseTableBase *a2, const mediaplatform::DatabaseColumnBase *a3)
{
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a3 + 1), *(a3 + 2));
  }

  else
  {
    __p = *(a3 + 8);
  }

  std::allocate_shared[abi:ne200100]<mediaplatform::SQLColumnNameExpression,std::allocator<mediaplatform::SQLColumnNameExpression>,std::string,std::string const&,0>();
}

void sub_1D5AE2788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::DatabaseTable<long long,long long,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D5AE27FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::ContainerItemPersonTable::~ContainerItemPersonTable(mlcore::ContainerItemPersonTable *this)
{
  mlcore::MediaTable<long long,long long,long long>::~MediaTable(this);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaTable<long long,long long,long long>::~MediaTable(mediaplatform::DatabaseTableBase *this)
{
  *this = &unk_1F50D8018;
  *(this + 40) = &unk_1F50D86E0;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  *(this + 34) = &unk_1F50D86E0;
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  *(this + 28) = &unk_1F50D86E0;
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  *this = &unk_1F50D8A68;
  *(this + 22) = &unk_1F50D86E0;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 16) = &unk_1F50D86E0;
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  *(this + 10) = &unk_1F50D86E0;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void sub_1D5AE2A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,long long,long long>::~DatabaseTable(mediaplatform::DatabaseTableBase *this)
{
  *this = &unk_1F50D8A68;
  *(this + 22) = &unk_1F50D86E0;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 16) = &unk_1F50D86E0;
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  *(this + 10) = &unk_1F50D86E0;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D8A68;
  *(this + 22) = &unk_1F50D86E0;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 16) = &unk_1F50D86E0;
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  *(this + 10) = &unk_1F50D86E0;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

{
  *this = &unk_1F50D8A68;
  *(this + 22) = &unk_1F50D86E0;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 16) = &unk_1F50D86E0;
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  *(this + 10) = &unk_1F50D86E0;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(this);
}

void mlcore::MediaTable<long long,long long,long long>::~MediaTable(mediaplatform::DatabaseTableBase *a1)
{
  mlcore::MediaTable<long long,long long,long long>::~MediaTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

mlcore::ContainerItemPersonTable *mlcore::ContainerItemPersonTable::ContainerItemPersonTable(mlcore::ContainerItemPersonTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v23, "container_item_person");
  std::string::basic_string[abi:ne200100]<0>(&v18, "container_item_person_pid");
  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v18;
  }

  v21 = 1;
  v22[0] = 0;
  *&v22[4] = 0;
  v19 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "container_item_pid");
  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = v13;
  }

  v16 = 16;
  v17[0] = 1;
  *&v17[4] = 0;
  v14 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "person_pid");
  v9 = &unk_1F50D86E0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v8;
  }

  v11 = 16;
  v12[0] = 1;
  *&v12[4] = 0;
  v9 = &unk_1F50D7AC0;
  v35 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v20;
  }

  v37 = v21;
  v35 = &unk_1F50D8958;
  v38 = *v22;
  v39 = *&v22[8];
  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v15;
  }

  v32 = v16;
  v30 = &unk_1F50D8958;
  v33 = *v17;
  v34 = *&v17[8];
  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v10;
  }

  v27 = v11;
  v25 = &unk_1F50D8958;
  v28 = *v12;
  v29 = *&v12[8];
  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v24) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v23, *(&v23 + 1));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = v23;
    *(this + 3) = v24;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50D8A68;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v51 = v36;
  }

  v52 = v37;
  v50 = &unk_1F50D8958;
  v53 = v38;
  v54 = v39;
  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v31;
  }

  v47 = v32;
  v45 = &unk_1F50D8958;
  v48 = v33;
  v49 = v34;
  v40 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  v42 = v27;
  v40 = &unk_1F50D8958;
  v43 = v28;
  v44 = v29;
  v60 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = __s;
  }

  v62 = v47;
  v60 = &unk_1F50D8958;
  v63 = v48;
  v64 = v49;
  v55 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v56 = __p;
  }

  v3 = v42;
  v57 = v42;
  v55 = &unk_1F50D8958;
  v58 = v43;
  v59 = v44;
  v65 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
    v3 = v57;
  }

  else
  {
    v66 = v56;
  }

  v67 = v3;
  v65 = &unk_1F50D8958;
  v68 = v58;
  v69 = v59;
  *(this + 10) = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
    v4 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
    *(this + 28) = v67;
    *(this + 10) = &unk_1F50D8958;
    *(this + 116) = v68;
    *(this + 31) = v69;
    v65 = &unk_1F50D86E0;
    if (v4 < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 88) = v66;
    *(this + 28) = v3;
    *(this + 10) = &unk_1F50D8958;
    *(this + 116) = v68;
    *(this + 31) = v69;
    v65 = &unk_1F50D86E0;
  }

  *(this + 16) = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 136) = v61;
  }

  *(this + 40) = v62;
  *(this + 16) = &unk_1F50D8958;
  *(this + 164) = v63;
  *(this + 43) = v64;
  v55 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  *(this + 22) = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 184), v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 184) = v51;
  }

  *(this + 52) = v52;
  *(this + 22) = &unk_1F50D8958;
  *(this + 212) = v53;
  *(this + 55) = v54;
  v40 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v45 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v35 = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50D8018;
  *(this + 28) = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 232) = v20;
  }

  *(this + 64) = v21;
  *(this + 260) = *v22;
  *(this + 67) = *&v22[8];
  *(this + 28) = &unk_1F50D7AC0;
  *(this + 34) = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 280), v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 280) = v15;
  }

  *(this + 76) = v16;
  *(this + 308) = *v17;
  *(this + 79) = *&v17[8];
  *(this + 34) = &unk_1F50D7AC0;
  *(this + 40) = &unk_1F50D86E0;
  v5 = (this + 328);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    v6 = (v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v6 = 0;
    *&v5->__r_.__value_.__l.__data_ = *&v10.__r_.__value_.__l.__data_;
    *(this + 43) = *(&v10.__r_.__value_.__l + 2);
  }

  *(this + 88) = v11;
  *(this + 356) = *v12;
  *(this + 91) = *&v12[8];
  *(this + 40) = &unk_1F50D7AC0;
  v9 = &unk_1F50D86E0;
  if (v6)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v14 = &unk_1F50D86E0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v19 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  *this = &unk_1F50D3FD8;
  return this;
}

void sub_1D5AE38FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  *(v71 + 272) = v73;
  if (*(v71 + 303) < 0)
  {
    operator delete(*v72);
  }

  *(v71 + 224) = v70;
  if (*(v71 + 255) < 0)
  {
    operator delete(*(v71 + 232));
  }

  mediaplatform::DatabaseTable<long long,long long,long long>::~DatabaseTable(v71);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void mlcore::ContainerItemPersonTable::persistentIDColumn(mlcore::ContainerItemPersonTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 255) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 29), *(this + 30));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 232);
    *(a2 + 24) = *(this + 31);
  }

  *(a2 + 32) = *(this + 64);
  *(a2 + 44) = *(this + 67);
  *(a2 + 36) = *(this + 260);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ContainerItemPersonTable::containerItemPersistentIDColumn(mlcore::ContainerItemPersonTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 303) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 35), *(this + 36));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 280);
    *(a2 + 24) = *(this + 37);
  }

  *(a2 + 32) = *(this + 76);
  *(a2 + 44) = *(this + 79);
  *(a2 + 36) = *(this + 308);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::ContainerItemPersonTable::personPersistentIDColumn(mlcore::ContainerItemPersonTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 351) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 41), *(this + 42));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 328);
    *(a2 + 24) = *(this + 43);
  }

  *(a2 + 32) = *(this + 88);
  *(a2 + 44) = *(this + 91);
  *(a2 + 36) = *(this + 356);
  *a2 = &unk_1F50D7AC0;
}

void mediaplatform::File::~File(mediaplatform::File *this)
{
  mediaplatform::File::~File(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  v1 = *(this + 1);
  *this = &unk_1F50DE450;
  *(this + 1) = 0;
  if (v1)
  {
    *v1 = &unk_1F50DE578;
    v2 = (v1 + 8);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
    MEMORY[0x1DA6EDD40](v1, 0xA0C4030951706);
  }
}

void mediaplatform::TemporaryFile::~TemporaryFile(mediaplatform::FilePath **this)
{
  mediaplatform::TemporaryFile::~TemporaryFile(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DE4D0;
  if (*(this + 16) == 1)
  {
    mediaplatform::FilePath::str(this[1], &__p);
    mediaplatform::File::remove(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  mediaplatform::File::~File(this);
}

uint64_t mediaplatform::File::remove(const char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (lstat(a1, &v26))
  {
    goto LABEL_46;
  }

  if (v1[23] >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = *v1;
  }

  if ((v26.st_mode & 0xF000) != 0x4000)
  {
    result = unlink(v2);
    if (!result)
    {
      return result;
    }

    goto LABEL_46;
  }

  v3 = opendir(v2);
  if (!v3)
  {
LABEL_46:
    exception = __cxa_allocate_exception(0x10uLL);
    mediaplatform::POSIXException::POSIXException(exception);
    goto LABEL_55;
  }

  v4 = v3;
  while (1)
  {
    v5 = readdir(v4);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    d_name = v5->d_name;
    if (v5->d_name[0] != 46 || v5->d_name[1] && (v5->d_name[1] != 46 || v5->d_name[2]))
    {
      if (v1[23] >= 0)
      {
        v8 = *(v1 + 23);
      }

      else
      {
        v8 = *(v1 + 1);
      }

      std::string::basic_string[abi:ne200100](&v23, v8 + 1);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v23;
      }

      else
      {
        v9 = v23.__r_.__value_.__r.__words[0];
      }

      if (v8)
      {
        if (v1[23] >= 0)
        {
          v10 = v1;
        }

        else
        {
          v10 = *v1;
        }

        memmove(v9, v10, v8);
      }

      *(&v9->__r_.__value_.__l.__data_ + v8) = 47;
      std::string::basic_string[abi:ne200100]<0>(__p, d_name);
      if ((v22 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v12 = v22;
      }

      else
      {
        v12 = __p[1];
      }

      v13 = std::string::append(&v23, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v25 = v13->__r_.__value_.__r.__words[2];
      *v24 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if ((v6->d_type & 4) != 0)
      {
        mediaplatform::File::remove(v24);
      }

      else
      {
        if (v25 >= 0)
        {
          v15 = v24;
        }

        else
        {
          v15 = v24[0];
        }

        if (unlink(v15))
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          v20 = __error();
          mediaplatform::POSIXException::POSIXException(v19, *v20);
        }
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
      }
    }
  }

  closedir(v4);
  if (v1[23] >= 0)
  {
    v18 = v1;
  }

  else
  {
    v18 = *v1;
  }

  result = rmdir(v18);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    mediaplatform::POSIXException::POSIXException(exception);
LABEL_55:
  }

  return result;
}

std::runtime_error *mediaplatform::POSIXException::POSIXException(std::runtime_error *this)
{
  v2 = __error();
  v3 = strerror(*v2);
  result = std::runtime_error::runtime_error(this, v3);
  this->__vftable = &unk_1F50DE550;
  return result;
}

std::runtime_error *mediaplatform::POSIXException::POSIXException(std::runtime_error *this, int __errnum)
{
  v3 = strerror(__errnum);
  result = std::runtime_error::runtime_error(this, v3);
  this->__vftable = &unk_1F50DE550;
  return result;
}

void mediaplatform::POSIXException::~POSIXException(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::TemporaryDirectory::~TemporaryDirectory(mediaplatform::FilePath **this)
{
  mediaplatform::TemporaryDirectory::~TemporaryDirectory(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DE4F0;
  if (*(this + 16) == 1)
  {
    mediaplatform::FilePath::str(this[1], &__p);
    mediaplatform::File::remove(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  mediaplatform::File::~File(this);
}

void sub_1D5AE4528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA6EDD40](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1D5AE4690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1DA6EDD40](v16, v15);
  _Unwind_Resume(a1);
}

BOOL mediaplatform::File::isDirectory(mediaplatform::FilePath **this)
{
  mediaplatform::FilePath::str(this[1], &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = lstat(p_p, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    mediaplatform::POSIXException::POSIXException(exception);
  }

  return (v6.st_mode & 0xF000) == 0x4000;
}

BOOL mediaplatform::File::exists(mediaplatform::FilePath **this)
{
  mediaplatform::FilePath::str(this[1], &v6);
  v1 = SHIBYTE(v6.__r_.__value_.__r.__words[2]);
  v2 = v6.__r_.__value_.__r.__words[0];
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v6;
  }

  else
  {
    v3 = v6.__r_.__value_.__r.__words[0];
  }

  v4 = access(v3, 0);
  if (v1 < 0)
  {
    operator delete(v2);
  }

  return v4 != -1;
}

BOOL mediaplatform::File::isReadable(mediaplatform::FilePath **this)
{
  mediaplatform::FilePath::str(this[1], &v6);
  v1 = SHIBYTE(v6.__r_.__value_.__r.__words[2]);
  v2 = v6.__r_.__value_.__r.__words[0];
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v6;
  }

  else
  {
    v3 = v6.__r_.__value_.__r.__words[0];
  }

  v4 = access(v3, 4);
  if (v1 < 0)
  {
    operator delete(v2);
  }

  return v4 != -1;
}

BOOL mediaplatform::File::isWritable(mediaplatform::FilePath **this)
{
  mediaplatform::FilePath::str(this[1], &v6);
  v1 = SHIBYTE(v6.__r_.__value_.__r.__words[2]);
  v2 = v6.__r_.__value_.__r.__words[0];
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v6;
  }

  else
  {
    v3 = v6.__r_.__value_.__r.__words[0];
  }

  v4 = access(v3, 2);
  if (v1 < 0)
  {
    operator delete(v2);
  }

  return v4 != -1;
}

off_t mediaplatform::File::fileSize(mediaplatform::FilePath **this)
{
  mediaplatform::FilePath::str(this[1], &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  stat(p_p, &v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4.st_size;
}

void sub_1D5AE4940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mediaplatform::File::create(const char *a1, _BYTE *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "w");
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    mediaplatform::POSIXException::POSIXException(exception);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = a2[23];
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(a2 + 1);
    if (!v5)
    {
      goto LABEL_10;
    }

    a2 = *a2;
    goto LABEL_9;
  }

  if (a2[23])
  {
LABEL_9:
    if (fwrite(a2, 1uLL, v5, v3) >= v5)
    {
      goto LABEL_10;
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    v9 = v4;
    exception = v8;
    v10 = ferror(v9);
    mediaplatform::POSIXException::POSIXException(exception, v10);
LABEL_15:
  }

LABEL_10:

  return fclose(v4);
}

void mediaplatform::File::move(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(a1, a2, a3);
  if (v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    mediaplatform::POSIXException::POSIXException(exception);
  }
}

uint64_t mediaplatform::File::truncate(const char *a1, off_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = truncate(a1, a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    mediaplatform::POSIXException::POSIXException(exception);
  }

  return result;
}

uint64_t mediaplatform::File::link(const char *a1, const char *a2, int a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (a3)
  {
    result = symlink(a1, a2);
  }

  else
  {
    result = link(a1, a2);
  }

  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    mediaplatform::POSIXException::POSIXException(exception);
  }

  return result;
}

uint64_t mediaplatform::File::copyDatabase(const char *a1, uint64_t a2, uint64_t a3)
{
  ppDb = 0;
  db = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v5 = sqlite3_open(a1, &ppDb);
  if (v5)
  {
    v16 = v5;
    exception = __cxa_allocate_exception(0x40uLL);
    v31 = 8;
    v18 = sqlite3_errstr(v16);
    std::string::basic_string[abi:ne200100]<0>(&v28, v18);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(exception, &v31, &v28);
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = sqlite3_open(v6, &db);
  if (v7)
  {
    v19 = v7;
    v20 = __cxa_allocate_exception(0x40uLL);
    v31 = 8;
    v21 = sqlite3_errstr(v19);
    std::string::basic_string[abi:ne200100]<0>(&v28, v21);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(v20, &v31, &v28);
  }

  v8 = sqlite3_backup_init(db, "main", ppDb, "main");
  if (!v8)
  {
    v22 = __cxa_allocate_exception(0x40uLL);
    v31 = 8;
    v23 = sqlite3_errcode(db);
    v24 = sqlite3_errstr(v23);
    std::string::basic_string[abi:ne200100]<0>(&v28, v24);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(v22, &v31, &v28);
  }

  v9 = v8;
  do
  {
    v10 = sqlite3_backup_step(v9, 100);
    v11 = sqlite3_backup_remaining(v9);
    v12 = sqlite3_backup_pagecount(v9);
    LODWORD(v28) = v11;
    v31 = v12;
    v13 = *(a3 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v13 + 48))(v13, &v28, &v31);
    if (v10 - 5 <= 1)
    {
      sqlite3_sleep(250);
    }
  }

  while (v10 <= 6 && ((1 << v10) & 0x61) != 0);
  v14 = sqlite3_backup_finish(v9);
  if (v14)
  {
    v25 = v14;
    v26 = __cxa_allocate_exception(0x40uLL);
    v31 = 8;
    v27 = sqlite3_errstr(v25);
    std::string::basic_string[abi:ne200100]<0>(&v28, v27);
    mediaplatform::PlatformErrorCondition::PlatformErrorCondition(v26, &v31, &v28);
  }

  sqlite3_close(db);
  return sqlite3_close(ppDb);
}

void sub_1D5AE4EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    __cxa_free_exception(v14);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::File::createDirectory(mediaplatform::File *this, const mediaplatform::FilePath *a2, __int16 a3)
{
  if (*(this + 2) != *(this + 1))
  {
    v4 = a2;
    mediaplatform::FilePath::str(this, &v18);
    v6 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
    v7 = v18.__r_.__value_.__r.__words[0];
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v18;
    }

    else
    {
      v8 = v18.__r_.__value_.__r.__words[0];
    }

    v9 = access(v8, 0);
    if (v6 < 0)
    {
      operator delete(v7);
    }

    if (v9 == -1)
    {
      if (v4)
      {
        v18.__r_.__value_.__r.__words[0] = &unk_1F50DE578;
        *&v18.__r_.__value_.__r.__words[1] = 0uLL;
        v19 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v18.__r_.__value_.__l.__size_, *(this + 1), *(this + 2), 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
        if (v18.__r_.__value_.__r.__words[2] != v18.__r_.__value_.__l.__size_)
        {
          v11 = (v18.__r_.__value_.__r.__words[2] - 24);
          if (*(v18.__r_.__value_.__r.__words[2] - 1) < 0)
          {
            operator delete(*v11);
          }

          v18.__r_.__value_.__r.__words[2] = v11;
        }

        mediaplatform::File::createDirectory(&v18, 1, a3, v10);
        v18.__r_.__value_.__r.__words[0] = &unk_1F50DE578;
        p_size = &v18.__r_.__value_.__l.__size_;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_size);
      }

      mediaplatform::FilePath::str(this, &v18);
      v12 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
      v13 = v18.__r_.__value_.__r.__words[0];
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v18;
      }

      else
      {
        v14 = v18.__r_.__value_.__r.__words[0];
      }

      v15 = mkdir(v14, a3);
      if (v12 < 0)
      {
        operator delete(v13);
      }

      if (v15)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        mediaplatform::FormatString<mediaplatform::FilePath>(&v18, "Unable to create directory at '{0}'", this);
        v17 = __error();
        mediaplatform::POSIXException::POSIXException(exception, *v17, &v18.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1D5AE50DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

std::runtime_error *mediaplatform::POSIXException::POSIXException(std::runtime_error *a1, int __errnum, const char **a3)
{
  v6 = strerror(__errnum);
  memset(&v7, 0, sizeof(v7));
  v8[0] = &v6;
  v8[1] = a3;
  mediaplatform::FormatImplementation<std::string,char *>("{0}: {1}", &v7, 0, v8);
  std::runtime_error::runtime_error(a1, &v7);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F50DE550;
  return a1;
}

void sub_1D5AE51C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mediaplatform::FormatImplementation<std::string,char *>(std::string *a1, std::string *a2, std::string::size_type a3, const char ***a4)
{
  v60 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = a3;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    ++v10;
    v60 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    v11 = (v11 + 1);
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

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v9 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v60 = &v11->__r_.__value_.__s.__data_[2];
    v48 = v11->__r_.__value_.__s.__data_[2];
    if ((v48 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v49 = 0;
      v50 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v51 = v50;
        v60 = v50;
        v49 = (v48 & 0xF) + 10 * v49;
        ++v50;
        v53 = *v51;
        v52 = (v51 - 1);
        LOBYTE(v48) = v53;
      }

      while ((v53 - 58) >= 0xFFFFFFF6);
      v60 = (v52 + 2);
      if (*(v50 - 1) == 125)
      {
        mediaplatform::FormatterParameters<0ul,std::string,char *>::formatOptionsAtIndex<std::string,char *>(v49);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatOptions::FormatOptions(&v55, &v60);
  if (v56)
  {
    if (v56 != 1)
    {
      mediaplatform::FormatterParameters<2ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::string,char *>>();
    }

    v13 = **a4;
    if (v13)
    {
      v14 = strlen(**a4);
    }

    else
    {
      v14 = 0;
    }

    v19 = *(&v57 + 1);
    if (*(&v57 + 1) <= v14)
    {
      v19 = v14;
    }

    if (v57)
    {
      v20 = v19;
    }

    else
    {
      v20 = v14;
    }

    mediaplatform::FormatImplementation<std::string,char *>(v60, a2, v20 + v10, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = a2->__r_.__value_.__r.__words[0];
    }

    v22 = v21 + v10;
    if (v57 == 1 && (v23 = *(&v57 + 1) - v14, *(&v57 + 1) > v14))
    {
      if (v55)
      {
        if (v55 == 1)
        {
          if (v23 >= 2)
          {
            v25 = v23 >> 1;
            if (v23 >> 1 <= 1)
            {
              v25 = 1;
            }

            v26 = BYTE4(v59);
            do
            {
              *v22++ = v26;
              --v25;
            }

            while (v25);
          }

          v27 = v23 - (v23 >> 1);
          if (v14)
          {
            memmove(v22, v13, v14);
          }

          v28 = BYTE4(v59);
          if (v27 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v27;
          }

          v30 = vdupq_n_s64(v29 - 1);
          v31 = -((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          v32 = &v22[v14 + 7];
          v33 = 15;
          do
          {
            v34 = vdupq_n_s64(v33 - 15);
            v35 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB360)));
            if (vuzp1_s8(vuzp1_s16(v35, *v30.i8), *v30.i8).u8[0])
            {
              *(v32 - 7) = v28;
            }

            if (vuzp1_s8(vuzp1_s16(v35, *&v30), *&v30).i8[1])
            {
              *(v32 - 6) = v28;
            }

            if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB350)))), *&v30).i8[2])
            {
              *(v32 - 5) = v28;
              *(v32 - 4) = v28;
            }

            v36 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB340)));
            if (vuzp1_s8(*&v30, vuzp1_s16(v36, *&v30)).i32[1])
            {
              *(v32 - 3) = v28;
            }

            if (vuzp1_s8(*&v30, vuzp1_s16(v36, *&v30)).i8[5])
            {
              *(v32 - 2) = v28;
            }

            if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB330))))).i8[6])
            {
              *(v32 - 1) = v28;
              *v32 = v28;
            }

            v37 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB320)));
            if (vuzp1_s8(vuzp1_s16(v37, *v30.i8), *v30.i8).u8[0])
            {
              v32[1] = v28;
            }

            if (vuzp1_s8(vuzp1_s16(v37, *&v30), *&v30).i8[1])
            {
              v32[2] = v28;
            }

            if (vuzp1_s8(vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB310)))), *&v30).i8[2])
            {
              v32[3] = v28;
              v32[4] = v28;
            }

            v38 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB300)));
            if (vuzp1_s8(*&v30, vuzp1_s16(v38, *&v30)).i32[1])
            {
              v32[5] = v28;
            }

            if (vuzp1_s8(*&v30, vuzp1_s16(v38, *&v30)).i8[5])
            {
              v32[6] = v28;
            }

            if (vuzp1_s8(*&v30, vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v34, xmmword_1D5AFB2F0))))).i8[6])
            {
              v32[7] = v28;
              v32[8] = v28;
            }

            v33 += 16;
            v32 += 16;
          }

          while (v31 + v33 != 15);
        }

        else if (v55 == 2)
        {
          v24 = BYTE4(v59);
          do
          {
            *v22++ = v24;
            --v23;
          }

          while (v23);
          goto LABEL_45;
        }
      }

      else
      {
        if (v14)
        {
          memmove(v22, v13, v14);
        }

        v39 = BYTE4(v59);
        v40 = vdupq_n_s64(v23 - 1);
        v41 = &v22[v14 + 7];
        v42 = 15;
        do
        {
          v43 = vdupq_n_s64(v42 - 15);
          v44 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB360)));
          if (vuzp1_s8(vuzp1_s16(v44, *v40.i8), *v40.i8).u8[0])
          {
            *(v41 - 7) = v39;
          }

          if (vuzp1_s8(vuzp1_s16(v44, *&v40), *&v40).i8[1])
          {
            *(v41 - 6) = v39;
          }

          if (vuzp1_s8(vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB350)))), *&v40).i8[2])
          {
            *(v41 - 5) = v39;
            *(v41 - 4) = v39;
          }

          v45 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB340)));
          if (vuzp1_s8(*&v40, vuzp1_s16(v45, *&v40)).i32[1])
          {
            *(v41 - 3) = v39;
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(v45, *&v40)).i8[5])
          {
            *(v41 - 2) = v39;
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB330))))).i8[6])
          {
            *(v41 - 1) = v39;
            *v41 = v39;
          }

          v46 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB320)));
          if (vuzp1_s8(vuzp1_s16(v46, *v40.i8), *v40.i8).u8[0])
          {
            v41[1] = v39;
          }

          if (vuzp1_s8(vuzp1_s16(v46, *&v40), *&v40).i8[1])
          {
            v41[2] = v39;
          }

          if (vuzp1_s8(vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB310)))), *&v40).i8[2])
          {
            v41[3] = v39;
            v41[4] = v39;
          }

          v47 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB300)));
          if (vuzp1_s8(*&v40, vuzp1_s16(v47, *&v40)).i32[1])
          {
            v41[5] = v39;
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(v47, *&v40)).i8[5])
          {
            v41[6] = v39;
          }

          if (vuzp1_s8(*&v40, vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, vorrq_s8(v43, xmmword_1D5AFB2F0))))).i8[6])
          {
            v41[7] = v39;
            v41[8] = v39;
          }

          v42 += 16;
          v41 += 16;
        }

        while (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0) != 15);
      }
    }

    else
    {
LABEL_45:
      if (v14)
      {
        memmove(v22, v13, v14);
      }
    }
  }

  else
  {
    v15 = a4[1];
    v61 = v15;
    v62 = v55;
    v63 = v57;
    v64 = v58;
    v65 = v59;
    v16 = *(v15 + 23);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v16 = v15[1];
    }

    v17 = *(&v57 + 1);
    if (*(&v57 + 1) <= v16)
    {
      v17 = v16;
    }

    if (v57)
    {
      v16 = v17;
    }

    mediaplatform::FormatImplementation<std::string,char *>(v60, a2, v16 + v10, a4);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = a2->__r_.__value_.__r.__words[0];
    }

    mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v55, &v18[v10], &v61);
  }

  if (v10 != a3)
  {
    mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
  }
}

void mediaplatform::FormatterParameters<0ul,std::string,char *>::formatOptionsAtIndex<std::string,char *>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul,char *>::formatOptionsAtIndex<std::string,char *>(a1);
}

void mediaplatform::FormatterParameters<2ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,std::string,char *>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatterParameters<1ul,char *>::formatOptionsAtIndex<std::string,char *>(uint64_t a1)
{
  if (a1 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<2ul>::formatOptionsAtIndex<std::string,char *>();
}

void mediaplatform::FormatterParameters<2ul>::formatOptionsAtIndex<std::string,char *>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1D5AE5D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  a15 = &unk_1F50DE578;
  *(v29 - 56) = v28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v29 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a22 = &unk_1F50DE578;
  a15 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  mediaplatform::File::~File(v27);
  _Unwind_Resume(a1);
}

void mediaplatform::TemporaryFile::TemporaryFile(mediaplatform::TemporaryFile *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "/tmp");
  mediaplatform::FilePath::FilePath(v3, &__p);
  mediaplatform::TemporaryFile::TemporaryFile(this, v3);
}

{
  std::string::basic_string[abi:ne200100]<0>(&__p, "/tmp");
  mediaplatform::FilePath::FilePath(v3, &__p);
  mediaplatform::TemporaryFile::TemporaryFile(this, v3);
}

void sub_1D5AE5ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v16 - 40) = v15 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D5AE5FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v16 - 40) = v15 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mediaplatform::TemporaryFile::TemporaryFile(mediaplatform::TemporaryFile *this, const mediaplatform::FilePath **a2)
{
  mediaplatform::File::File(this, a2[1]);
}

{
  mediaplatform::File::File(this, a2[1]);
}

void sub_1D5AE627C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  a15 = &unk_1F50DE578;
  *(v22 - 56) = v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v22 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a19 = &unk_1F50DE578;
  a15 = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  mediaplatform::File::~File(v20);
  _Unwind_Resume(a1);
}

void sub_1D5AE631C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D5AE630CLL);
}

void sub_1D5AE633C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D5AE6314);
}

void mediaplatform::TemporaryDirectory::TemporaryDirectory(mediaplatform::TemporaryDirectory *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "/tmp");
  mediaplatform::FilePath::FilePath(v3, &__p);
  mediaplatform::TemporaryDirectory::TemporaryDirectory(this, v3);
}

{
  std::string::basic_string[abi:ne200100]<0>(&__p, "/tmp");
  mediaplatform::FilePath::FilePath(v3, &__p);
  mediaplatform::TemporaryDirectory::TemporaryDirectory(this, v3);
}

void sub_1D5AE63FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v16 - 40) = v15 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D5AE64F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v16 - 40) = v15 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mediaplatform::TemporaryDirectory::TemporaryDirectory(mediaplatform::TemporaryDirectory *this, const mediaplatform::FilePath **a2)
{
  mediaplatform::File::File(this, a2[1]);
}

{
  mediaplatform::File::File(this, a2[1]);
}

uint64_t mlcore::AlbumArtistTable::AlbumArtistTable(mlcore::AlbumArtistTable *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  std::string::basic_string[abi:ne200100]<0>(v133, "album_artist");
  std::string::basic_string[abi:ne200100]<0>(&__s, "album_artist_pid");
  v129 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = __s;
  }

  v131 = 1;
  v132[0] = 0;
  *&v132[4] = 0;
  v129 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v121, "album_artist");
  std::string::basic_string[abi:ne200100]<0>(v119, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v123, v121, v119);
  std::string::basic_string[abi:ne200100]<0>(&v113, "sort_album_artist");
  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    v115 = v113;
  }

  v116 = 0;
  v117 = 0;
  memset(&v118, 0, sizeof(v118));
  v114 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v103, "grouping_key");
  v104 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v103;
  }

  v106 = 0;
  v107 = 0;
  v108 = &unk_1F50DD860;
  __n = 0;
  __src = 0;
  v110 = 0;
  v112 = 0;
  v104 = &unk_1F50D7B40;
  std::string::basic_string[abi:ne200100]<0>(&v98, "cloud_status");
  v99 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v100, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v100 = v98;
  }

  v101 = 16;
  LOBYTE(v102) = 1;
  HIDWORD(v102) = 0;
  v99 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v93, "store_id");
  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v93;
  }

  v96 = 16;
  v97[0] = 1;
  *&v97[4] = 0;
  v94 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v88, "representative_item_pid");
  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v88;
  }

  v91 = 16;
  v92[0] = 1;
  *&v92[4] = 0;
  v89 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v83, "keep_local");
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v83;
  }

  v86 = 16;
  LOBYTE(v87) = 1;
  HIDWORD(v87) = 0;
  v84 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v78, "keep_local_status");
  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v80 = v78;
  }

  v81 = 16;
  LOBYTE(v82) = 1;
  HIDWORD(v82) = 0;
  v79 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v73, "keep_local_status_reason");
  v74 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = v73;
  }

  v76 = 16;
  LOBYTE(v77) = 1;
  HIDWORD(v77) = 0;
  v74 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v68, "keep_local_constraints");
  v69 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v68;
  }

  v71 = 16;
  LOBYTE(v72) = 1;
  HIDWORD(v72) = 0;
  v69 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v58, "app_data");
  v59 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v60 = v58;
  }

  v61 = 0;
  v62 = 0;
  v63 = &unk_1F50DD860;
  v64 = 0;
  v66 = 0;
  v65 = 0;
  v67 = 0;
  v59 = &unk_1F50D7B40;
  std::string::basic_string[abi:ne200100]<0>(&v53, "sync_id");
  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = v53;
  }

  v56 = 16;
  v57[0] = 1;
  *&v57[4] = 0;
  v54 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v46, "cloud_universal_library_id");
  std::string::basic_string[abi:ne200100]<0>(v44, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v48, v46, v44);
  std::string::basic_string[abi:ne200100]<0>(&v39, "classical_experience_available");
  v40 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v39;
  }

  v42 = 16;
  LOBYTE(v43) = 1;
  HIDWORD(v43) = 0;
  v40 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v34, "liked_state");
  v35 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v34;
  }

  v37 = 16;
  LOBYTE(v38) = 1;
  HIDWORD(v38) = 0;
  v35 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v29, "liked_state_changed_date");
  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v29;
  }

  v32 = 16;
  v33[0] = 1;
  *&v33[4] = 0;
  v30 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v24, "sort_order");
  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v24;
  }

  v27 = 16;
  v28[0] = 1;
  *&v28[4] = 0;
  v25 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "sort_order_section");
  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v19;
  }

  v22 = 16;
  LOBYTE(v23) = 1;
  HIDWORD(v23) = 0;
  v20 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v14, "name_order");
  v15 = &unk_1F50D86E0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v14;
  }

  v17 = 16;
  v18[0] = 1;
  *&v18[4] = 0;
  v15 = &unk_1F50D7AC0;
  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v130;
  }

  v228 = v131;
  v226 = &unk_1F50D8958;
  v229 = *v132;
  v230 = *&v132[8];
  v221 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v222, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    v222 = v124;
  }

  v223 = v125;
  v221 = &unk_1F50D89B8;
  v224 = v126;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v127;
  }

  v216 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v217, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v217 = v115;
  }

  v218 = v116;
  v216 = &unk_1F50D89B8;
  v219 = v117;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v118;
  }

  v209 = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v210, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    v210 = v105;
  }

  v211 = v106;
  v209 = &unk_1F50D89D8;
  v212 = v107;
  mediaplatform::Data::Data(&v213, __src, __n, 1);
  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v100;
  }

  v207 = v101;
  v205 = &unk_1F50D8978;
  v208 = v102;
  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v201 = v95;
  }

  v202 = v96;
  v200 = &unk_1F50D8958;
  v203 = *v97;
  v204 = *&v97[8];
  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v196, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v196 = v90;
  }

  v197 = v91;
  v195 = &unk_1F50D8958;
  v198 = *v92;
  v199 = *&v92[8];
  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v192 = v85;
  }

  v193 = v86;
  v191 = &unk_1F50D8978;
  v194 = v87;
  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v188 = v80;
  }

  v189 = v81;
  v187 = &unk_1F50D8978;
  v190 = v82;
  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v184, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v184 = v75;
  }

  v185 = v76;
  v183 = &unk_1F50D8978;
  v186 = v77;
  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v180, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v180 = v70;
  }

  v181 = v71;
  v179 = &unk_1F50D8978;
  v182 = v72;
  v172 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v173, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v173 = v60;
  }

  v174 = v61;
  v172 = &unk_1F50D89D8;
  v175 = v62;
  mediaplatform::Data::Data(&v176, v66, v64, 1);
  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v168, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v168 = v55;
  }

  v169 = v56;
  v167 = &unk_1F50D8958;
  v170 = *v57;
  v171 = *&v57[8];
  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v49;
  }

  v164 = v50;
  v162 = &unk_1F50D89B8;
  v165 = v51;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v52;
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v41;
  }

  v160 = v42;
  v158 = &unk_1F50D8978;
  v161 = v43;
  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v155 = v36;
  }

  v156 = v37;
  v154 = &unk_1F50D8978;
  v157 = v38;
  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v150 = v31;
  }

  v151 = v32;
  v149 = &unk_1F50D8958;
  v152 = *v33;
  v153 = *&v33[8];
  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v145, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v145 = v26;
  }

  v146 = v27;
  v144 = &unk_1F50D8958;
  v147 = *v28;
  v148 = *&v28[8];
  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v141, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v141 = v21;
  }

  v142 = v22;
  v140 = &unk_1F50D8978;
  v143 = v23;
  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v136 = v16;
  }

  v137 = v17;
  v135 = &unk_1F50D8958;
  v138 = *v18;
  v139 = *&v18[8];
  *v1 = &unk_1F50DD390;
  v2 = (v1 + 8);
  if (SHIBYTE(v134) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v133[0], v133[1]);
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *v133;
    *(v1 + 24) = v134;
  }

  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *v1 = &unk_1F50DE608;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v319, v227.__r_.__value_.__l.__data_, v227.__r_.__value_.__l.__size_);
  }

  else
  {
    v319 = v227;
  }

  v320 = v228;
  v318 = &unk_1F50D8958;
  v321 = v229;
  v322 = v230;
  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v314, v222.__r_.__value_.__l.__data_, v222.__r_.__value_.__l.__size_);
  }

  else
  {
    v314 = v222;
  }

  v315 = v223;
  v313 = &unk_1F50D89B8;
  v316 = v224;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v225;
  }

  v308 = &unk_1F50D86E0;
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v309, v217.__r_.__value_.__l.__data_, v217.__r_.__value_.__l.__size_);
  }

  else
  {
    v309 = v217;
  }

  v310 = v218;
  v308 = &unk_1F50D89B8;
  v311 = v219;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, v220.__r_.__value_.__l.__data_, v220.__r_.__value_.__l.__size_);
  }

  else
  {
    v312 = v220;
  }

  v303 = &unk_1F50D86E0;
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v304, v210.__r_.__value_.__l.__data_, v210.__r_.__value_.__l.__size_);
  }

  else
  {
    v304 = v210;
  }

  v305 = v211;
  v303 = &unk_1F50D89D8;
  v306 = v212;
  mediaplatform::Data::Data(&v307, v215, v214, 1);
  v299 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v300, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v300 = v206;
  }

  v301 = v207;
  v299 = &unk_1F50D8978;
  v302 = v208;
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    v295 = v201;
  }

  v296 = v202;
  v294 = &unk_1F50D8958;
  v297 = v203;
  v298 = v204;
  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v196;
  }

  v291 = v197;
  v289 = &unk_1F50D8958;
  v292 = v198;
  v293 = v199;
  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v192;
  }

  v287 = v193;
  v285 = &unk_1F50D8978;
  v288 = v194;
  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v188;
  }

  v283 = v189;
  v281 = &unk_1F50D8978;
  v284 = v190;
  v277 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v278, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    v278 = v184;
  }

  v279 = v185;
  v277 = &unk_1F50D8978;
  v280 = v186;
  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v180;
  }

  v275 = v181;
  v273 = &unk_1F50D8978;
  v276 = v182;
  v268 = &unk_1F50D86E0;
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v269, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_);
  }

  else
  {
    v269 = v173;
  }

  v270 = v174;
  v268 = &unk_1F50D89D8;
  v271 = v175;
  mediaplatform::Data::Data(&v272, v178, v177, 1);
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_);
  }

  else
  {
    v264 = v168;
  }

  v265 = v169;
  v263 = &unk_1F50D8958;
  v266 = v170;
  v267 = v171;
  v258 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v259, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    v259 = v163;
  }

  v260 = v164;
  v258 = &unk_1F50D89B8;
  v261 = v165;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v166;
  }

  v254 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v255, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v255 = v159;
  }

  v256 = v160;
  v254 = &unk_1F50D8978;
  v257 = v161;
  v250 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v251, v155.__r_.__value_.__l.__data_, v155.__r_.__value_.__l.__size_);
  }

  else
  {
    v251 = v155;
  }

  v252 = v156;
  v250 = &unk_1F50D8978;
  v253 = v157;
  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v150;
  }

  v247 = v151;
  v245 = &unk_1F50D8958;
  v248 = v152;
  v249 = v153;
  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v241, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
  }

  else
  {
    v241 = v145;
  }

  v242 = v146;
  v240 = &unk_1F50D8958;
  v243 = v147;
  v244 = v148;
  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v237, v141.__r_.__value_.__l.__data_, v141.__r_.__value_.__l.__size_);
  }

  else
  {
    v237 = v141;
  }

  v238 = v142;
  v236 = &unk_1F50D8978;
  v239 = v143;
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v136;
  }

  v233 = v137;
  v231 = &unk_1F50D8958;
  v234 = v138;
  v235 = v139;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(v1 + 80, &v318, &v313, &v308, &v303, &v299, &v294, &v289, &v285, &v281, &v277, &v273, &v268, &v263, &v258, &v254, &v250, &v245, &v240, &v236, &v231);
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v236 = &unk_1F50D86E0;
  if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v237.__r_.__value_.__l.__data_);
  }

  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  v250 = &unk_1F50D86E0;
  if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v251.__r_.__value_.__l.__data_);
  }

  v254 = &unk_1F50D86E0;
  if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v255.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v258);
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v268);
  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v274.__r_.__value_.__l.__data_);
  }

  v277 = &unk_1F50D86E0;
  if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v278.__r_.__value_.__l.__data_);
  }

  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v282.__r_.__value_.__l.__data_);
  }

  v285 = &unk_1F50D86E0;
  if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v286.__r_.__value_.__l.__data_);
  }

  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v290.__r_.__value_.__l.__data_);
  }

  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v299 = &unk_1F50D86E0;
  if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v300.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v303);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v308);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v313);
  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v319.__r_.__value_.__l.__data_);
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v140 = &unk_1F50D86E0;
  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v162);
  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v172);
  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  v205 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v206.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v209);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v216);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v221);
  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  *v1 = &unk_1F50DE5D0;
  *(v1 + 1152) = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1160), v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1160) = v130;
  }

  *(v1 + 1184) = v131;
  *(v1 + 1188) = *v132;
  *(v1 + 1196) = *&v132[8];
  *(v1 + 1152) = &unk_1F50D7AC0;
  *(v1 + 1200) = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1208), v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1208) = v124;
  }

  *(v1 + 1232) = v125;
  *(v1 + 1200) = &unk_1F50D89B8;
  *(v1 + 1236) = v126;
  v3 = (v1 + 1240);
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v127.__r_.__value_.__l.__data_;
    *(v1 + 1256) = *(&v127.__r_.__value_.__l + 2);
  }

  *(v1 + 1200) = &unk_1F50D7B20;
  *(v1 + 1264) = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1272), v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1272) = v115;
  }

  *(v1 + 1296) = v116;
  *(v1 + 1264) = &unk_1F50D89B8;
  *(v1 + 1300) = v117;
  v4 = (v1 + 1304);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v118.__r_.__value_.__l.__data_;
    *(v1 + 1320) = *(&v118.__r_.__value_.__l + 2);
  }

  *(v1 + 1264) = &unk_1F50D7B20;
  *(v1 + 1328) = &unk_1F50D86E0;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1336), v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1336) = v105;
  }

  *(v1 + 1360) = v106;
  *(v1 + 1328) = &unk_1F50D89D8;
  *(v1 + 1364) = v107;
  mediaplatform::Data::Data((v1 + 1368), __src, __n, 1);
  *(v1 + 1328) = &unk_1F50D7B40;
  *(v1 + 1408) = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1416), v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1416) = v100;
  }

  *(v1 + 1440) = v101;
  *(v1 + 1444) = v102;
  *(v1 + 1408) = &unk_1F50D7AE0;
  *(v1 + 1456) = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1464), v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1464) = v95;
  }

  *(v1 + 1488) = v96;
  *(v1 + 1492) = *v97;
  *(v1 + 1500) = *&v97[8];
  *(v1 + 1456) = &unk_1F50D7AC0;
  *(v1 + 1504) = &unk_1F50D86E0;
  v5 = (v1 + 1512);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v5, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *&v90.__r_.__value_.__l.__data_;
    *(v1 + 1528) = *(&v90.__r_.__value_.__l + 2);
  }

  *(v1 + 1536) = v91;
  *(v1 + 1540) = *v92;
  *(v1 + 1548) = *&v92[8];
  *(v1 + 1504) = &unk_1F50D7AC0;
  *(v1 + 1552) = &unk_1F50D86E0;
  v6 = (v1 + 1560);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v6, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *&v85.__r_.__value_.__l.__data_;
    *(v1 + 1576) = *(&v85.__r_.__value_.__l + 2);
  }

  *(v1 + 1584) = v86;
  *(v1 + 1588) = v87;
  *(v1 + 1552) = &unk_1F50D7AE0;
  *(v1 + 1600) = &unk_1F50D86E0;
  v7 = (v1 + 1608);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v7, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *&v80.__r_.__value_.__l.__data_;
    *(v1 + 1624) = *(&v80.__r_.__value_.__l + 2);
  }

  *(v1 + 1632) = v81;
  *(v1 + 1636) = v82;
  *(v1 + 1600) = &unk_1F50D7AE0;
  *(v1 + 1648) = &unk_1F50D86E0;
  v8 = (v1 + 1656);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&v75.__r_.__value_.__l.__data_;
    *(v1 + 1672) = *(&v75.__r_.__value_.__l + 2);
  }

  *(v1 + 1680) = v76;
  *(v1 + 1684) = v77;
  *(v1 + 1648) = &unk_1F50D7AE0;
  *(v1 + 1696) = &unk_1F50D86E0;
  v9 = (v1 + 1704);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&v70.__r_.__value_.__l.__data_;
    *(v1 + 1720) = *(&v70.__r_.__value_.__l + 2);
  }

  *(v1 + 1728) = v71;
  *(v1 + 1732) = v72;
  *(v1 + 1696) = &unk_1F50D7AE0;
  *(v1 + 1744) = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1752), v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1752) = v60;
  }

  *(v1 + 1776) = v61;
  *(v1 + 1744) = &unk_1F50D89D8;
  *(v1 + 1780) = v62;
  mediaplatform::Data::Data((v1 + 1784), v66, v64, 1);
  *(v1 + 1744) = &unk_1F50D7B40;
  *(v1 + 1824) = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1832), v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1832) = v55;
  }

  *(v1 + 1856) = v56;
  *(v1 + 1860) = *v57;
  *(v1 + 1868) = *&v57[8];
  *(v1 + 1824) = &unk_1F50D7AC0;
  *(v1 + 1872) = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1880), v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1880) = v49;
  }

  *(v1 + 1904) = v50;
  *(v1 + 1872) = &unk_1F50D89B8;
  *(v1 + 1908) = v51;
  v10 = (v1 + 1912);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *&v52.__r_.__value_.__l.__data_;
    *(v1 + 1928) = *(&v52.__r_.__value_.__l + 2);
  }

  *(v1 + 1872) = &unk_1F50D7B20;
  *(v1 + 1936) = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1944), v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1944) = v41;
  }

  *(v1 + 1968) = v42;
  *(v1 + 1972) = v43;
  *(v1 + 1936) = &unk_1F50D7AE0;
  *(v1 + 1984) = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 1992), v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 1992) = v36;
  }

  *(v1 + 2016) = v37;
  *(v1 + 2020) = v38;
  *(v1 + 1984) = &unk_1F50D7AE0;
  *(v1 + 2032) = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2040), v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2040) = v31;
  }

  *(v1 + 2064) = v32;
  *(v1 + 2068) = *v33;
  *(v1 + 2076) = *&v33[8];
  *(v1 + 2032) = &unk_1F50D7AC0;
  *(v1 + 2080) = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2088), v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2088) = v26;
  }

  *(v1 + 2112) = v27;
  *(v1 + 2116) = *v28;
  *(v1 + 2124) = *&v28[8];
  *(v1 + 2080) = &unk_1F50D7AC0;
  *(v1 + 2128) = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v1 + 2136), v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v1 + 2136) = v21;
  }

  *(v1 + 2160) = v22;
  *(v1 + 2164) = v23;
  *(v1 + 2128) = &unk_1F50D7AE0;
  *(v1 + 2176) = &unk_1F50D86E0;
  v11 = (v1 + 2184);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    v12 = (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v12 = 0;
    *&v11->__r_.__value_.__l.__data_ = *&v16.__r_.__value_.__l.__data_;
    *(v1 + 2200) = *(&v16.__r_.__value_.__l + 2);
  }

  *(v1 + 2208) = v17;
  *(v1 + 2212) = *v18;
  *(v1 + 2220) = *&v18[8];
  *(v1 + 2176) = &unk_1F50D7AC0;
  v15 = &unk_1F50D86E0;
  if (v12)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v20 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v30 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v35 = &unk_1F50D86E0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v40 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v48);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v59);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v69 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v74 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v99 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v104);
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v114);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v123);
  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v122 < 0)
  {
    operator delete(v121[0]);
  }

  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v134) < 0)
  {
    operator delete(v133[0]);
  }

  *v1 = &unk_1F50D63C0;
  return v1;
}

void sub_1D5AE9C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _Unwind_Exception *exception_objecta, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, void **a30, void **a31, void **a32, void **a33, void **a34, uint64_t a35, void **a36, void **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void **a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51, unint64_t a52, unint64_t a53, unint64_t a54, unint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58, unint64_t a59, unint64_t a60, unint64_t a61, unint64_t a62, unint64_t a63)
{
  *(v79 + 2128) = v77;
  if (*(v79 + 2159) < 0)
  {
    operator delete(*v74);
  }

  *(v79 + 2080) = v73;
  if (*(v79 + 2111) < 0)
  {
    operator delete(*v80);
  }

  *(v79 + 2032) = a24;
  if (*(v79 + 2063) < 0)
  {
    operator delete(*v75);
  }

  *(v79 + 1984) = a26;
  if (*(v79 + 2015) < 0)
  {
    operator delete(*v76);
  }

  *(v79 + 1936) = a27;
  if (*(v79 + 1967) < 0)
  {
    operator delete(*a25);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v78);
  *(v79 + 1824) = a29;
  if (*(v79 + 1855) < 0)
  {
    operator delete(*a28);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a49);
  *(v79 + 1696) = a35;
  if (*(v79 + 1727) < 0)
  {
    operator delete(*a30);
  }

  *(v79 + 1648) = a38;
  if (*(v79 + 1679) < 0)
  {
    operator delete(*a31);
  }

  *(v79 + 1600) = a39;
  if (*(v79 + 1631) < 0)
  {
    operator delete(*a32);
  }

  *(v79 + 1552) = a40;
  if (*(v79 + 1583) < 0)
  {
    operator delete(*a33);
  }

  *(v79 + 1504) = a41;
  if (*(v79 + 1535) < 0)
  {
    operator delete(*a34);
  }

  *(v79 + 1456) = a42;
  if (*(v79 + 1487) < 0)
  {
    operator delete(*a36);
  }

  *(v79 + 1408) = a43;
  if (*(v79 + 1439) < 0)
  {
    operator delete(*a37);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a44);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a46);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a47);
  *(v79 + 1152) = a48;
  if (*(v79 + 1183) < 0)
  {
    operator delete(*a45);
  }

  mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~DatabaseTable(v79);
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  STACK[0x220] = a51;
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  STACK[0x268] = a52;
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  STACK[0x2B0] = a53;
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  STACK[0x2F8] = a54;
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  STACK[0x340] = a55;
  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x33F]) < 0)
  {
    operator delete(STACK[0x328]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x3A0]);
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  STACK[0x3F8] = a56;
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&STACK[0x440]);
  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(STACK[0x428]);
  }

  STACK[0x4A8] = a57;
  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4A7]) < 0)
  {
    operator delete(STACK[0x490]);
  }

  STACK[0x4F0] = a58;
  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  STACK[0x538] = a59;
  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x537]) < 0)
  {
    operator delete(STACK[0x520]);
  }

  STACK[0x580] = a60;
  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  STACK[0x5C8] = a61;
  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (SLOBYTE(STACK[0x5C7]) < 0)
  {
    operator delete(STACK[0x5B0]);
  }

  STACK[0x610] = a62;
  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x60F]) < 0)
  {
    operator delete(STACK[0x5F8]);
  }

  STACK[0x658] = a63;
  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x657]) < 0)
  {
    operator delete(STACK[0x640]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&STACK[0x6A0]);
  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    operator delete(STACK[0x688]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x708]);
  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x778]);
  if (SLOBYTE(STACK[0x75F]) < 0)
  {
    operator delete(STACK[0x748]);
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(STACK[0x760]);
  }

  STACK[0x7D0] = a64;
  if (SLOBYTE(STACK[0x7EF]) < 0)
  {
    operator delete(STACK[0x7D8]);
  }

  if (SLOBYTE(STACK[0x7CF]) < 0)
  {
    operator delete(STACK[0x7B8]);
  }

  if (SLOBYTE(STACK[0x817]) < 0)
  {
    operator delete(STACK[0x800]);
  }

  _Unwind_Resume(a1);
}

void sub_1D5AEA770()
{
  STACK[0xDD8] = v0;
  if (SLOBYTE(STACK[0xDF7]) < 0)
  {
    operator delete(STACK[0xDE0]);
  }

  JUMPOUT(0x1D5AEA1ECLL);
}

void sub_1D5AEA78C()
{
  STACK[0xF78] = v0;
  if (SLOBYTE(STACK[0xF97]) < 0)
  {
    operator delete(STACK[0xF80]);
  }

  JUMPOUT(0x1D5AEA294);
}

void sub_1D5AEA7A8()
{
  STACK[0x9A8] = v0;
  if (SLOBYTE(STACK[0x9C7]) < 0)
  {
    operator delete(STACK[0x9B0]);
  }

  JUMPOUT(0x1D5AEA390);
}

void sub_1D5AEA7C4()
{
  STACK[0xB48] = v0;
  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(STACK[0xB50]);
  }

  JUMPOUT(0x1D5AEA440);
}

void sub_1D5AEA91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1104);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 1040);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 976);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 896);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 848);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 800);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 752);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 704);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 656);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 608);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 560);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 480);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 432);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 368);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 320);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 272);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 224);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 176);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D5AEAA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::AlbumArtistTable::~AlbumArtistTable(mlcore::AlbumArtistTable *this)
{
  *this = &unk_1F50DE5D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl(this + 1152);
  mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DE5D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl(this + 1152);

  mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~DatabaseTable(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl(uint64_t a1)
{
  *(a1 + 1024) = &unk_1F50D86E0;
  if (*(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  *(a1 + 976) = &unk_1F50D86E0;
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  *(a1 + 928) = &unk_1F50D86E0;
  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  *(a1 + 880) = &unk_1F50D86E0;
  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
  }

  *(a1 + 832) = &unk_1F50D86E0;
  if (*(a1 + 863) < 0)
  {
    operator delete(*(a1 + 840));
  }

  *(a1 + 784) = &unk_1F50D86E0;
  if (*(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 720);
  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 592);
  *(a1 + 544) = &unk_1F50D86E0;
  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  *(a1 + 496) = &unk_1F50D86E0;
  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

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

  *(a1 + 256) = &unk_1F50D86E0;
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 176);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 112);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 48);
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50DE608;
  *(a1 + 1104) = &unk_1F50D86E0;
  if (*(a1 + 1135) < 0)
  {
    operator delete(*(a1 + 1112));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 1040);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 976);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 896);
  *(a1 + 848) = &unk_1F50D86E0;
  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  *(a1 + 800) = &unk_1F50D86E0;
  if (*(a1 + 831) < 0)
  {
    operator delete(*(a1 + 808));
  }

  mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 400);
  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 288);
  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::MediaTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~MediaTable(void *a1)
{
  *a1 = &unk_1F50DE5D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl((a1 + 144));
  mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50DE5D0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>>::~__tuple_impl((a1 + 144));

  mediaplatform::DatabaseTable<long long,std::string,std::string,mediaplatform::Data,int,long long,long long,int,int,int,int,mediaplatform::Data,long long,std::string,int,int,long long,long long,int,long long>::~DatabaseTable(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v21 = MEMORY[0x1EEE9AC00](a1);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v22;
  v35 = v34;
  v36 = v21;
  v128 = &unk_1F50D86E0;
  if (*(v22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, *(v22 + 8), *(v22 + 16));
  }

  else
  {
    v129 = *(v22 + 8);
  }

  v130 = *(v33 + 32);
  v128 = &unk_1F50D89B8;
  v131 = *(v33 + 36);
  if (*(v33 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, *(v33 + 40), *(v33 + 48));
  }

  else
  {
    v132 = *(v33 + 40);
  }

  v123 = &unk_1F50D86E0;
  if (*(v32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(v32 + 8), *(v32 + 16));
  }

  else
  {
    __s = *(v32 + 8);
  }

  v125 = *(v32 + 32);
  v123 = &unk_1F50D89B8;
  v126 = *(v32 + 36);
  if (*(v32 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, *(v32 + 40), *(v32 + 48));
  }

  else
  {
    v127 = *(v32 + 40);
  }

  v116 = &unk_1F50D86E0;
  if (*(v30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, *(v30 + 8), *(v30 + 16));
  }

  else
  {
    v117 = *(v30 + 8);
  }

  v118 = *(v30 + 32);
  v116 = &unk_1F50D89D8;
  v119 = *(v30 + 36);
  mediaplatform::Data::Data(&v120, *(v30 + 64), *(v30 + 48), 1);
  v112 = &unk_1F50D86E0;
  if (*(v28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, *(v28 + 8), *(v28 + 16));
  }

  else
  {
    v113 = *(v28 + 8);
  }

  v114 = *(v28 + 32);
  v112 = &unk_1F50D8978;
  v115 = *(v28 + 36);
  v107 = &unk_1F50D86E0;
  if (*(v26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, *(v26 + 8), *(v26 + 16));
  }

  else
  {
    v108 = *(v26 + 8);
  }

  v109 = *(v26 + 32);
  v107 = &unk_1F50D8958;
  v110 = *(v26 + 36);
  v111 = *(v26 + 44);
  v102 = &unk_1F50D86E0;
  if (*(v24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, *(v24 + 8), *(v24 + 16));
  }

  else
  {
    v103 = *(v24 + 8);
  }

  v104 = *(v24 + 32);
  v102 = &unk_1F50D8958;
  v105 = *(v24 + 36);
  v106 = *(v24 + 44);
  v98 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v99 = *(a9 + 8);
  }

  v100 = *(a9 + 32);
  v98 = &unk_1F50D8978;
  v101 = *(a9 + 36);
  v94 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v95 = *(a10 + 8);
  }

  v96 = *(a10 + 32);
  v94 = &unk_1F50D8978;
  v97 = *(a10 + 36);
  v90 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v91 = *(a11 + 8);
  }

  v92 = *(a11 + 32);
  v90 = &unk_1F50D8978;
  v93 = *(a11 + 36);
  v86 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v87, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v87 = *(a12 + 8);
  }

  v88 = *(a12 + 32);
  v86 = &unk_1F50D8978;
  v89 = *(a12 + 36);
  v79 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v80 = *(a13 + 8);
  }

  v81 = *(a13 + 32);
  v79 = &unk_1F50D89D8;
  v82 = *(a13 + 36);
  mediaplatform::Data::Data(&v83, *(a13 + 64), *(a13 + 48), 1);
  v74 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v75 = *(a14 + 8);
  }

  v76 = *(a14 + 32);
  v74 = &unk_1F50D8958;
  v77 = *(a14 + 36);
  v78 = *(a14 + 44);
  v69 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v70 = *(a15 + 8);
  }

  v71 = *(a15 + 32);
  v69 = &unk_1F50D89B8;
  v72 = *(a15 + 36);
  if (*(a15 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *(a15 + 40), *(a15 + 48));
  }

  else
  {
    v73 = *(a15 + 40);
  }

  v65 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v66 = *(a16 + 8);
  }

  v67 = *(a16 + 32);
  v65 = &unk_1F50D8978;
  v68 = *(a16 + 36);
  v61 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v62 = *(a17 + 8);
  }

  v63 = *(a17 + 32);
  v61 = &unk_1F50D8978;
  v64 = *(a17 + 36);
  v56 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v57 = *(a18 + 8);
  }

  v58 = *(a18 + 32);
  v56 = &unk_1F50D8958;
  v59 = *(a18 + 36);
  v60 = *(a18 + 44);
  v51 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v52 = *(a19 + 8);
  }

  v53 = *(a19 + 32);
  v51 = &unk_1F50D8958;
  v54 = *(a19 + 36);
  v55 = *(a19 + 44);
  v47 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v48 = *(a20 + 8);
  }

  v49 = *(a20 + 32);
  v47 = &unk_1F50D8978;
  v50 = *(a20 + 36);
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v43 = *(a21 + 8);
  }

  v44 = *(a21 + 32);
  v45 = *(a21 + 36);
  v46 = *(a21 + 44);
  v214 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = __s;
  }

  v216 = v125;
  v214 = &unk_1F50D89B8;
  v217 = v126;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v218, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    v218 = v127;
  }

  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, v117.__r_.__value_.__l.__data_, v117.__r_.__value_.__l.__size_);
  }

  else
  {
    v208 = v117;
  }

  v209 = v118;
  v207 = &unk_1F50D89D8;
  v210 = v119;
  mediaplatform::Data::Data(&v211, __src, __n, 1);
  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v204, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    v204 = v113;
  }

  v205 = v114;
  v203 = &unk_1F50D8978;
  v206 = v115;
  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v199, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v199 = v108;
  }

  v200 = v109;
  v198 = &unk_1F50D8958;
  v201 = v110;
  v202 = v111;
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v103;
  }

  v195 = v104;
  v193 = &unk_1F50D8958;
  v196 = v105;
  v197 = v106;
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v99;
  }

  v191 = v100;
  v189 = &unk_1F50D8978;
  v192 = v101;
  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v95;
  }

  v187 = v96;
  v185 = &unk_1F50D8978;
  v188 = v97;
  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v91;
  }

  v183 = v92;
  v181 = &unk_1F50D8978;
  v184 = v93;
  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v87;
  }

  v179 = v88;
  v177 = &unk_1F50D8978;
  v180 = v89;
  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v80;
  }

  v172 = v81;
  v170 = &unk_1F50D89D8;
  v173 = v82;
  mediaplatform::Data::Data(&v174, v85, v84, 1);
  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v75;
  }

  v167 = v76;
  v165 = &unk_1F50D8958;
  v168 = v77;
  v169 = v78;
  v160 = &unk_1F50D86E0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v161 = v70;
  }

  v162 = v71;
  v160 = &unk_1F50D89B8;
  v163 = v72;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v164 = v73;
  }

  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v157, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v157 = v66;
  }

  v158 = v67;
  v156 = &unk_1F50D8978;
  v159 = v68;
  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v62;
  }

  v154 = v63;
  v152 = &unk_1F50D8978;
  v155 = v64;
  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v148 = v57;
  }

  v149 = v58;
  v147 = &unk_1F50D8958;
  v150 = v59;
  v151 = v60;
  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v52;
  }

  v144 = v53;
  v142 = &unk_1F50D8958;
  v145 = v54;
  v146 = v55;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v48;
  }

  v140 = v49;
  v138 = &unk_1F50D8978;
  v141 = v50;
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v43;
  }

  v135 = v44;
  v133 = &unk_1F50D8958;
  v136 = v45;
  v137 = v46;
  v293 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v294, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
  }

  else
  {
    v294 = v208;
  }

  v295 = v209;
  v293 = &unk_1F50D89D8;
  v296 = v210;
  mediaplatform::Data::Data(&v297, v213, v212, 1);
  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v204;
  }

  v291 = v205;
  v289 = &unk_1F50D8978;
  v292 = v206;
  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v285, v199.__r_.__value_.__l.__data_, v199.__r_.__value_.__l.__size_);
  }

  else
  {
    v285 = v199;
  }

  v286 = v200;
  v284 = &unk_1F50D8958;
  v287 = v201;
  v288 = v202;
  v279 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v280, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v280 = v194;
  }

  v281 = v195;
  v279 = &unk_1F50D8958;
  v282 = v196;
  v283 = v197;
  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v276 = v190;
  }

  v277 = v191;
  v275 = &unk_1F50D8978;
  v278 = v192;
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
    v272 = v186;
  }

  v273 = v187;
  v271 = &unk_1F50D8978;
  v274 = v188;
  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v268 = v182;
  }

  v269 = v183;
  v267 = &unk_1F50D8978;
  v270 = v184;
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, v178.__r_.__value_.__l.__data_, v178.__r_.__value_.__l.__size_);
  }

  else
  {
    v264 = v178;
  }

  v265 = v179;
  v263 = &unk_1F50D8978;
  v266 = v180;
  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v171;
  }

  v258 = v172;
  v256 = &unk_1F50D89D8;
  v259 = v173;
  mediaplatform::Data::Data(&v260, v176, v175, 1);
  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v252, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    v252 = v166;
  }

  v253 = v167;
  v251 = &unk_1F50D8958;
  v254 = v168;
  v255 = v169;
  v246 = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v247, v161.__r_.__value_.__l.__data_, v161.__r_.__value_.__l.__size_);
  }

  else
  {
    v247 = v161;
  }

  v248 = v162;
  v246 = &unk_1F50D89B8;
  v249 = v163;
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v250, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    v250 = v164;
  }

  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v157;
  }

  v244 = v158;
  v242 = &unk_1F50D8978;
  v245 = v159;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v153;
  }

  v240 = v154;
  v238 = &unk_1F50D8978;
  v241 = v155;
  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_);
  }

  else
  {
    v234 = v148;
  }

  v235 = v149;
  v233 = &unk_1F50D8958;
  v236 = v150;
  v237 = v151;
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    v229 = v143;
  }

  v230 = v144;
  v228 = &unk_1F50D8958;
  v231 = v145;
  v232 = v146;
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v139;
  }

  v226 = v140;
  v224 = &unk_1F50D8978;
  v227 = v141;
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v134;
  }

  v221 = v135;
  v219 = &unk_1F50D8958;
  v222 = v136;
  v223 = v137;
  v368 = &unk_1F50D86E0;
  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v369, v290.__r_.__value_.__l.__data_, v290.__r_.__value_.__l.__size_);
  }

  else
  {
    v369 = v290;
  }

  v370 = v291;
  v368 = &unk_1F50D8978;
  v371 = v292;
  v363 = &unk_1F50D86E0;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v364, v285.__r_.__value_.__l.__data_, v285.__r_.__value_.__l.__size_);
  }

  else
  {
    v364 = v285;
  }

  v365 = v286;
  v363 = &unk_1F50D8958;
  v366 = v287;
  v367 = v288;
  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v359, v280.__r_.__value_.__l.__data_, v280.__r_.__value_.__l.__size_);
  }

  else
  {
    v359 = v280;
  }

  v360 = v281;
  v358 = &unk_1F50D8958;
  v361 = v282;
  v362 = v283;
  v354 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v355, v276.__r_.__value_.__l.__data_, v276.__r_.__value_.__l.__size_);
  }

  else
  {
    v355 = v276;
  }

  v356 = v277;
  v354 = &unk_1F50D8978;
  v357 = v278;
  v350 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v351, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_);
  }

  else
  {
    v351 = v272;
  }

  v352 = v273;
  v350 = &unk_1F50D8978;
  v353 = v274;
  v346 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v347, v268.__r_.__value_.__l.__data_, v268.__r_.__value_.__l.__size_);
  }

  else
  {
    v347 = v268;
  }

  v348 = v269;
  v346 = &unk_1F50D8978;
  v349 = v270;
  v342 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v343, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
  }

  else
  {
    v343 = v264;
  }

  v344 = v265;
  v342 = &unk_1F50D8978;
  v345 = v266;
  v337 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v338, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_);
  }

  else
  {
    v338 = v257;
  }

  v339 = v258;
  v337 = &unk_1F50D89D8;
  v340 = v259;
  mediaplatform::Data::Data(&v341, v262, v261, 1);
  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v333, v252.__r_.__value_.__l.__data_, v252.__r_.__value_.__l.__size_);
  }

  else
  {
    v333 = v252;
  }

  v334 = v253;
  v332 = &unk_1F50D8958;
  v335 = v254;
  v336 = v255;
  v327 = &unk_1F50D86E0;
  if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v328, v247.__r_.__value_.__l.__data_, v247.__r_.__value_.__l.__size_);
  }

  else
  {
    v328 = v247;
  }

  v329 = v248;
  v327 = &unk_1F50D89B8;
  v330 = v249;
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v331, v250.__r_.__value_.__l.__data_, v250.__r_.__value_.__l.__size_);
  }

  else
  {
    v331 = v250;
  }

  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v324, v243.__r_.__value_.__l.__data_, v243.__r_.__value_.__l.__size_);
  }

  else
  {
    v324 = v243;
  }

  v325 = v244;
  v323 = &unk_1F50D8978;
  v326 = v245;
  v319 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v320, v239.__r_.__value_.__l.__data_, v239.__r_.__value_.__l.__size_);
  }

  else
  {
    v320 = v239;
  }

  v321 = v240;
  v319 = &unk_1F50D8978;
  v322 = v241;
  v314 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v315, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_);
  }

  else
  {
    v315 = v234;
  }

  v316 = v235;
  v314 = &unk_1F50D8958;
  v317 = v236;
  v318 = v237;
  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v229.__r_.__value_.__l.__data_, v229.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v229;
  }

  v311 = v230;
  v309 = &unk_1F50D8958;
  v312 = v231;
  v313 = v232;
  v305 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v306, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
  }

  else
  {
    v306 = v225;
  }

  v307 = v226;
  v305 = &unk_1F50D8978;
  v308 = v227;
  v300 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v220.__r_.__value_.__l.__data_, v220.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v220;
  }

  v302 = v221;
  v300 = &unk_1F50D8958;
  v303 = v222;
  v304 = v223;
  mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(v36, &v368, &v363, &v358, &v354, &v350, &v346, &v342, &v337, &v332, &v327, &v323, &v319, &v314, &v309, &v305, &v300);
  v300 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v305 = &unk_1F50D86E0;
  if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v306.__r_.__value_.__l.__data_);
  }

  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  v314 = &unk_1F50D86E0;
  if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v315.__r_.__value_.__l.__data_);
  }

  v319 = &unk_1F50D86E0;
  if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v320.__r_.__value_.__l.__data_);
  }

  v323 = &unk_1F50D86E0;
  if (SHIBYTE(v324.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v324.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v327);
  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v333.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v337);
  v342 = &unk_1F50D86E0;
  if (SHIBYTE(v343.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v343.__r_.__value_.__l.__data_);
  }

  v346 = &unk_1F50D86E0;
  if (SHIBYTE(v347.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v347.__r_.__value_.__l.__data_);
  }

  v350 = &unk_1F50D86E0;
  if (SHIBYTE(v351.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v351.__r_.__value_.__l.__data_);
  }

  v354 = &unk_1F50D86E0;
  if (SHIBYTE(v355.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v355.__r_.__value_.__l.__data_);
  }

  v358 = &unk_1F50D86E0;
  if (SHIBYTE(v359.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v359.__r_.__value_.__l.__data_);
  }

  v363 = &unk_1F50D86E0;
  if (SHIBYTE(v364.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v364.__r_.__value_.__l.__data_);
  }

  v368 = &unk_1F50D86E0;
  if (SHIBYTE(v369.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v369.__r_.__value_.__l.__data_);
  }

  *(v36 + 816) = &unk_1F50D86E0;
  if (SHIBYTE(v294.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v36 + 824), v294.__r_.__value_.__l.__data_, v294.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v36 + 824) = v294;
  }

  *(v36 + 848) = v295;
  *(v36 + 816) = &unk_1F50D89D8;
  *(v36 + 852) = v296;
  mediaplatform::Data::Data((v36 + 856), v299, v298, 1);
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v229.__r_.__value_.__l.__data_);
  }

  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v243.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v246);
  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v256);
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v276.__r_.__value_.__l.__data_);
  }

  v279 = &unk_1F50D86E0;
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v280.__r_.__value_.__l.__data_);
  }

  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v285.__r_.__value_.__l.__data_);
  }

  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v290.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v293);
  *(v36 + 896) = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v36 + 904), v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v36 + 904) = v215;
  }

  *(v36 + 928) = v216;
  *(v36 + 896) = &unk_1F50D89B8;
  *(v36 + 932) = v217;
  v37 = (v36 + 936);
  if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v37, v218.__r_.__value_.__l.__data_, v218.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v37->__r_.__value_.__l.__data_ = *&v218.__r_.__value_.__l.__data_;
    *(v36 + 952) = *(&v218.__r_.__value_.__l + 2);
  }

  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v160);
  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v170);
  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v199.__r_.__value_.__l.__data_);
  }

  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v207);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v214);
  *(v36 + 960) = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v36 + 968), v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v36 + 968) = v129;
  }

  *(v36 + 992) = v130;
  *(v36 + 960) = &unk_1F50D89B8;
  *(v36 + 996) = v131;
  v38 = (v36 + 1000);
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v38, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v38->__r_.__value_.__l.__data_ = *&v132.__r_.__value_.__l.__data_;
    *(v36 + 1016) = *(&v132.__r_.__value_.__l + 2);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v47 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v56 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v65 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v69);
  v74 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v79);
  v86 = &unk_1F50D86E0;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v90 = &unk_1F50D86E0;
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  v112 = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v116);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v123);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v128);
  *(v36 + 1024) = &unk_1F50D86E0;
  v39 = (v36 + 1032);
  if (*(v35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v39, *(v35 + 8), *(v35 + 16));
  }

  else
  {
    v40 = *(v35 + 8);
    *(v36 + 1048) = *(v35 + 24);
    *&v39->__r_.__value_.__l.__data_ = v40;
  }

  *(v36 + 1056) = *(v35 + 32);
  *(v36 + 1024) = &unk_1F50D8958;
  v41 = *(v35 + 36);
  *(v36 + 1068) = *(v35 + 44);
  *(v36 + 1060) = v41;
  return v36;
}

void sub_1D5AEE2A8(_Unwind_Exception *a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v1);
  mediaplatform::DatabaseColumnTuple<2ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(v2);
  _Unwind_Resume(a1);
}

void sub_1D5AEEBF4()
{
  STACK[0xEA8] = v0;
  if (SLOBYTE(STACK[0xEC7]) < 0)
  {
    operator delete(STACK[0xEB0]);
  }

  JUMPOUT(0x1D5AEE6F8);
}

void sub_1D5AEEC14()
{
  STACK[0xB28] = v0;
  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(STACK[0xB30]);
  }

  JUMPOUT(0x1D5AEE854);
}

void sub_1D5AEEC30()
{
  STACK[0xCC8] = v0;
  if (SLOBYTE(STACK[0xCE7]) < 0)
  {
    operator delete(STACK[0xCD0]);
  }

  JUMPOUT(0x1D5AEE904);
}

void sub_1D5AEEC4C()
{
  STACK[0x768] = v0;
  if (SLOBYTE(STACK[0x787]) < 0)
  {
    operator delete(STACK[0x770]);
  }

  JUMPOUT(0x1D5AEE9BCLL);
}

void sub_1D5AEEC68()
{
  STACK[0x908] = v0;
  if (SLOBYTE(STACK[0x927]) < 0)
  {
    operator delete(STACK[0x910]);
  }

  JUMPOUT(0x1D5AEEA6CLL);
}

void sub_1D5AEEC84()
{
  STACK[0x368] = v0;
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  JUMPOUT(0x1D5AEEB2CLL);
}

void sub_1D5AEECA0()
{
  STACK[0x508] = v0;
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  JUMPOUT(0x1D5AEEBDCLL);
}

uint64_t mediaplatform::DatabaseColumnTuple<2ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 896);
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 816);
  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  return mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  return mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v96 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v97 = *(a3 + 8);
  }

  v98 = *(a3 + 32);
  v96 = &unk_1F50D8958;
  v99 = *(a3 + 36);
  v100 = *(a3 + 44);
  v91 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v93 = *(a4 + 32);
  v91 = &unk_1F50D8958;
  v94 = *(a4 + 36);
  v95 = *(a4 + 44);
  v87 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v88 = *(a5 + 8);
  }

  v89 = *(a5 + 32);
  v87 = &unk_1F50D8978;
  v90 = *(a5 + 36);
  v83 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v84, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v84 = *(a6 + 8);
  }

  v85 = *(a6 + 32);
  v83 = &unk_1F50D8978;
  v86 = *(a6 + 36);
  v79 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v80 = *(a7 + 8);
  }

  v81 = *(a7 + 32);
  v79 = &unk_1F50D8978;
  v82 = *(a7 + 36);
  v75 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v76 = *(a8 + 8);
  }

  v77 = *(a8 + 32);
  v75 = &unk_1F50D8978;
  v78 = *(a8 + 36);
  v68 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v69 = *(a9 + 8);
  }

  v70 = *(a9 + 32);
  v68 = &unk_1F50D89D8;
  v71 = *(a9 + 36);
  mediaplatform::Data::Data(&v72, *(a9 + 64), *(a9 + 48), 1);
  v63 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v64 = *(a10 + 8);
  }

  v65 = *(a10 + 32);
  v63 = &unk_1F50D8958;
  v66 = *(a10 + 36);
  v67 = *(a10 + 44);
  v58 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v59 = *(a11 + 8);
  }

  v60 = *(a11 + 32);
  v58 = &unk_1F50D89B8;
  v61 = *(a11 + 36);
  if (*(a11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *(a11 + 40), *(a11 + 48));
  }

  else
  {
    v62 = *(a11 + 40);
  }

  v54 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v55 = *(a12 + 8);
  }

  v56 = *(a12 + 32);
  v54 = &unk_1F50D8978;
  v57 = *(a12 + 36);
  v50 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v51 = *(a13 + 8);
  }

  v52 = *(a13 + 32);
  v50 = &unk_1F50D8978;
  v53 = *(a13 + 36);
  v45 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v46 = *(a14 + 8);
  }

  v47 = *(a14 + 32);
  v45 = &unk_1F50D8958;
  v48 = *(a14 + 36);
  v49 = *(a14 + 44);
  v40 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v41 = *(a15 + 8);
  }

  v42 = *(a15 + 32);
  v40 = &unk_1F50D8958;
  v43 = *(a15 + 36);
  v44 = *(a15 + 44);
  v36 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v37 = *(a16 + 8);
  }

  v38 = *(a16 + 32);
  v36 = &unk_1F50D8978;
  v39 = *(a16 + 36);
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v32 = *(a17 + 8);
  }

  v33 = *(a17 + 32);
  v34 = *(a17 + 36);
  v35 = *(a17 + 44);
  v161 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = __s;
  }

  v163 = v93;
  v161 = &unk_1F50D8958;
  v164 = v94;
  v165 = v95;
  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v88;
  }

  v159 = v89;
  v157 = &unk_1F50D8978;
  v160 = v90;
  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v84;
  }

  v155 = v85;
  v153 = &unk_1F50D8978;
  v156 = v86;
  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
  }

  else
  {
    v150 = v80;
  }

  v151 = v81;
  v149 = &unk_1F50D8978;
  v152 = v82;
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v76;
  }

  v147 = v77;
  v145 = &unk_1F50D8978;
  v148 = v78;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v69;
  }

  v140 = v70;
  v138 = &unk_1F50D89D8;
  v141 = v71;
  mediaplatform::Data::Data(&v142, __src, __n, 1);
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v64;
  }

  v135 = v65;
  v133 = &unk_1F50D8958;
  v136 = v66;
  v137 = v67;
  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v59;
  }

  v130 = v60;
  v128 = &unk_1F50D89B8;
  v131 = v61;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v132 = v62;
  }

  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v55;
  }

  v126 = v56;
  v124 = &unk_1F50D8978;
  v127 = v57;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v51;
  }

  v122 = v52;
  v120 = &unk_1F50D8978;
  v123 = v53;
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = v46;
  }

  v117 = v47;
  v115 = &unk_1F50D8958;
  v118 = v48;
  v119 = v49;
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v41;
  }

  v112 = v42;
  v110 = &unk_1F50D8958;
  v113 = v43;
  v114 = v44;
  v106 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v37;
  }

  v108 = v38;
  v106 = &unk_1F50D8978;
  v109 = v39;
  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v102 = v32;
  }

  v103 = v33;
  v101 = &unk_1F50D8958;
  v104 = v34;
  v105 = v35;
  v222 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v223, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    v223 = v158;
  }

  v224 = v159;
  v222 = &unk_1F50D8978;
  v225 = v160;
  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = v154;
  }

  v220 = v155;
  v218 = &unk_1F50D8978;
  v221 = v156;
  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = v150;
  }

  v216 = v151;
  v214 = &unk_1F50D8978;
  v217 = v152;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v146;
  }

  v212 = v147;
  v210 = &unk_1F50D8978;
  v213 = v148;
  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v204, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v204 = v139;
  }

  v205 = v140;
  v203 = &unk_1F50D89D8;
  v206 = v141;
  mediaplatform::Data::Data(&v207, v144, v143, 1);
  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v199, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v199 = v134;
  }

  v200 = v135;
  v198 = &unk_1F50D8958;
  v201 = v136;
  v202 = v137;
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v129;
  }

  v195 = v130;
  v193 = &unk_1F50D89B8;
  v196 = v131;
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v197, v132.__r_.__value_.__l.__data_, v132.__r_.__value_.__l.__size_);
  }

  else
  {
    v197 = v132;
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v125.__r_.__value_.__l.__data_, v125.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v125;
  }

  v191 = v126;
  v189 = &unk_1F50D8978;
  v192 = v127;
  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v121;
  }

  v187 = v122;
  v185 = &unk_1F50D8978;
  v188 = v123;
  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    v181 = v116;
  }

  v182 = v117;
  v180 = &unk_1F50D8958;
  v183 = v118;
  v184 = v119;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v111;
  }

  v177 = v112;
  v175 = &unk_1F50D8958;
  v178 = v113;
  v179 = v114;
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v107;
  }

  v173 = v108;
  v171 = &unk_1F50D8978;
  v174 = v109;
  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v102;
  }

  v168 = v103;
  v166 = &unk_1F50D8958;
  v169 = v104;
  v170 = v105;
  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v219;
  }

  v280 = v220;
  v278 = &unk_1F50D8978;
  v281 = v221;
  v274 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v275, v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    v275 = v215;
  }

  v276 = v216;
  v274 = &unk_1F50D8978;
  v277 = v217;
  v270 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v271, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v271 = v211;
  }

  v272 = v212;
  v270 = &unk_1F50D8978;
  v273 = v213;
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v264 = v204;
  }

  v265 = v205;
  v263 = &unk_1F50D89D8;
  v266 = v206;
  mediaplatform::Data::Data(&v267, v209, v208, 1);
  v258 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v259, v199.__r_.__value_.__l.__data_, v199.__r_.__value_.__l.__size_);
  }

  else
  {
    v259 = v199;
  }

  v260 = v200;
  v258 = &unk_1F50D8958;
  v261 = v201;
  v262 = v202;
  v253 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v254, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v254 = v194;
  }

  v255 = v195;
  v253 = &unk_1F50D89B8;
  v256 = v196;
  if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v197;
  }

  v249 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v250, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v250 = v190;
  }

  v251 = v191;
  v249 = &unk_1F50D8978;
  v252 = v192;
  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v186;
  }

  v247 = v187;
  v245 = &unk_1F50D8978;
  v248 = v188;
  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v241, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
  }

  else
  {
    v241 = v181;
  }

  v242 = v182;
  v240 = &unk_1F50D8958;
  v243 = v183;
  v244 = v184;
  v235 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v236, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v236 = v176;
  }

  v237 = v177;
  v235 = &unk_1F50D8958;
  v238 = v178;
  v239 = v179;
  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v232, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v232 = v172;
  }

  v233 = v173;
  v231 = &unk_1F50D8978;
  v234 = v174;
  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v167;
  }

  v228 = v168;
  v226 = &unk_1F50D8958;
  v229 = v169;
  v230 = v170;
  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v329, v275.__r_.__value_.__l.__data_, v275.__r_.__value_.__l.__size_);
  }

  else
  {
    v329 = v275;
  }

  v330 = v276;
  v328 = &unk_1F50D8978;
  v331 = v277;
  v324 = &unk_1F50D86E0;
  if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v325, v271.__r_.__value_.__l.__data_, v271.__r_.__value_.__l.__size_);
  }

  else
  {
    v325 = v271;
  }

  v326 = v272;
  v324 = &unk_1F50D8978;
  v327 = v273;
  v319 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v320, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
  }

  else
  {
    v320 = v264;
  }

  v321 = v265;
  v319 = &unk_1F50D89D8;
  v322 = v266;
  mediaplatform::Data::Data(&v323, v269, v268, 1);
  v314 = &unk_1F50D86E0;
  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v315, v259.__r_.__value_.__l.__data_, v259.__r_.__value_.__l.__size_);
  }

  else
  {
    v315 = v259;
  }

  v316 = v260;
  v314 = &unk_1F50D8958;
  v317 = v261;
  v318 = v262;
  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v254.__r_.__value_.__l.__data_, v254.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v254;
  }

  v311 = v255;
  v309 = &unk_1F50D89B8;
  v312 = v256;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v313, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_);
  }

  else
  {
    v313 = v257;
  }

  v305 = &unk_1F50D86E0;
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v306, v250.__r_.__value_.__l.__data_, v250.__r_.__value_.__l.__size_);
  }

  else
  {
    v306 = v250;
  }

  v307 = v251;
  v305 = &unk_1F50D8978;
  v308 = v252;
  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v302, v246.__r_.__value_.__l.__data_, v246.__r_.__value_.__l.__size_);
  }

  else
  {
    v302 = v246;
  }

  v303 = v247;
  v301 = &unk_1F50D8978;
  v304 = v248;
  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v297, v241.__r_.__value_.__l.__data_, v241.__r_.__value_.__l.__size_);
  }

  else
  {
    v297 = v241;
  }

  v298 = v242;
  v296 = &unk_1F50D8958;
  v299 = v243;
  v300 = v244;
  v291 = &unk_1F50D86E0;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v292, v236.__r_.__value_.__l.__data_, v236.__r_.__value_.__l.__size_);
  }

  else
  {
    v292 = v236;
  }

  v293 = v237;
  v291 = &unk_1F50D8958;
  v294 = v238;
  v295 = v239;
  v287 = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v288, v232.__r_.__value_.__l.__data_, v232.__r_.__value_.__l.__size_);
  }

  else
  {
    v288 = v232;
  }

  v289 = v233;
  v287 = &unk_1F50D8978;
  v290 = v234;
  v282 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v227.__r_.__value_.__l.__data_, v227.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v227;
  }

  v284 = v228;
  v282 = &unk_1F50D8958;
  v285 = v229;
  v286 = v230;
  mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(a1, &v328, &v324, &v319, &v314, &v309, &v305, &v301, &v296, &v291, &v287, &v282);
  v282 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v287 = &unk_1F50D86E0;
  if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v288.__r_.__value_.__l.__data_);
  }

  v291 = &unk_1F50D86E0;
  if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v292.__r_.__value_.__l.__data_);
  }

  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v297.__r_.__value_.__l.__data_);
  }

  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  v305 = &unk_1F50D86E0;
  if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v306.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v309);
  v314 = &unk_1F50D86E0;
  if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v315.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v319);
  v324 = &unk_1F50D86E0;
  if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v325.__r_.__value_.__l.__data_);
  }

  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v329.__r_.__value_.__l.__data_);
  }

  *(a1 + 576) = &unk_1F50D86E0;
  v25 = (a1 + 584);
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v25, v279.__r_.__value_.__l.__data_, v279.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v25->__r_.__value_.__l.__data_ = *&v279.__r_.__value_.__l.__data_;
    *(a1 + 600) = *(&v279.__r_.__value_.__l + 2);
  }

  *(a1 + 608) = v280;
  *(a1 + 576) = &unk_1F50D8978;
  *(a1 + 612) = v281;
  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  v231 = &unk_1F50D86E0;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v232.__r_.__value_.__l.__data_);
  }

  v235 = &unk_1F50D86E0;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v241.__r_.__value_.__l.__data_);
  }

  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  v249 = &unk_1F50D86E0;
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v253);
  v258 = &unk_1F50D86E0;
  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v263);
  v270 = &unk_1F50D86E0;
  if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v271.__r_.__value_.__l.__data_);
  }

  v274 = &unk_1F50D86E0;
  if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v275.__r_.__value_.__l.__data_);
  }

  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
  }

  *(a1 + 624) = &unk_1F50D86E0;
  v26 = (a1 + 632);
  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v26, v223.__r_.__value_.__l.__data_, v223.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v26->__r_.__value_.__l.__data_ = *&v223.__r_.__value_.__l.__data_;
    *(a1 + 648) = *(&v223.__r_.__value_.__l + 2);
  }

  *(a1 + 656) = v224;
  *(a1 + 624) = &unk_1F50D8978;
  *(a1 + 660) = v225;
  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v172.__r_.__value_.__l.__data_);
  }

  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v193);
  v198 = &unk_1F50D86E0;
  if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v199.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v203);
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  v222 = &unk_1F50D86E0;
  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v223.__r_.__value_.__l.__data_);
  }

  *(a1 + 672) = &unk_1F50D86E0;
  v27 = (a1 + 680);
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v27->__r_.__value_.__l.__data_ = *&v162.__r_.__value_.__l.__data_;
    *(a1 + 696) = *(&v162.__r_.__value_.__l + 2);
  }

  *(a1 + 704) = v163;
  *(a1 + 672) = &unk_1F50D8958;
  *(a1 + 708) = v164;
  *(a1 + 716) = v165;
  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v106 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  v115 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v128);
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v138);
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  *(a1 + 720) = &unk_1F50D86E0;
  v28 = (a1 + 728);
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v28, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v28->__r_.__value_.__l.__data_ = *&v97.__r_.__value_.__l.__data_;
    *(a1 + 744) = *(&v97.__r_.__value_.__l + 2);
  }

  *(a1 + 752) = v98;
  *(a1 + 720) = &unk_1F50D8958;
  *(a1 + 756) = v99;
  *(a1 + 764) = v100;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v40 = &unk_1F50D86E0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v54 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v58);
  v63 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v68);
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  v83 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v91 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v96 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  *(a1 + 768) = &unk_1F50D86E0;
  v29 = (a1 + 776);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v29, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v30 = *(a2 + 8);
    *(a1 + 792) = *(a2 + 24);
    *&v29->__r_.__value_.__l.__data_ = v30;
  }

  *(a1 + 800) = *(a2 + 32);
  *(a1 + 768) = &unk_1F50D8978;
  *(a1 + 804) = *(a2 + 36);
  return a1;
}

void sub_1D5AF22BC()
{
  STACK[0xE18] = v0;
  if (SLOBYTE(STACK[0xE37]) < 0)
  {
    operator delete(STACK[0xE20]);
  }

  JUMPOUT(0x1D5AF1DF4);
}

void sub_1D5AF22D8()
{
  STACK[0xBA8] = v0;
  if (SLOBYTE(STACK[0xBC7]) < 0)
  {
    operator delete(STACK[0xBB0]);
  }

  JUMPOUT(0x1D5AF1EDCLL);
}

void sub_1D5AF22F4()
{
  STACK[0x908] = v0;
  if (SLOBYTE(STACK[0x927]) < 0)
  {
    operator delete(STACK[0x910]);
  }

  JUMPOUT(0x1D5AF1FDCLL);
}

void sub_1D5AF2310()
{
  STACK[0x638] = v0;
  if (SLOBYTE(STACK[0x657]) < 0)
  {
    operator delete(STACK[0x640]);
  }

  JUMPOUT(0x1D5AF20F4);
}

void sub_1D5AF232C()
{
  STACK[0x338] = v0;
  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  JUMPOUT(0x1D5AF2224);
}

uint64_t mediaplatform::DatabaseColumnTuple<5ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  return mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 400);
  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 288);
  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mediaplatform::DatabaseColumnTuple<8ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v71 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v72 = *(a3 + 8);
  }

  v73 = *(a3 + 32);
  v71 = &unk_1F50D8978;
  v74 = *(a3 + 36);
  v64 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v66 = *(a4 + 32);
  v64 = &unk_1F50D89D8;
  v67 = *(a4 + 36);
  mediaplatform::Data::Data(&v68, *(a4 + 64), *(a4 + 48), 1);
  v59 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v60 = *(a5 + 8);
  }

  v61 = *(a5 + 32);
  v59 = &unk_1F50D8958;
  v62 = *(a5 + 36);
  v63 = *(a5 + 44);
  v54 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v55 = *(a6 + 8);
  }

  v56 = *(a6 + 32);
  v54 = &unk_1F50D89B8;
  v57 = *(a6 + 36);
  if (*(a6 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *(a6 + 40), *(a6 + 48));
  }

  else
  {
    v58 = *(a6 + 40);
  }

  v50 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v51 = *(a7 + 8);
  }

  v52 = *(a7 + 32);
  v50 = &unk_1F50D8978;
  v53 = *(a7 + 36);
  v46 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v47 = *(a8 + 8);
  }

  v48 = *(a8 + 32);
  v46 = &unk_1F50D8978;
  v49 = *(a8 + 36);
  v41 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v42 = *(a9 + 8);
  }

  v43 = *(a9 + 32);
  v41 = &unk_1F50D8958;
  v44 = *(a9 + 36);
  v45 = *(a9 + 44);
  v36 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v37 = *(a10 + 8);
  }

  v38 = *(a10 + 32);
  v36 = &unk_1F50D8958;
  v39 = *(a10 + 36);
  v40 = *(a10 + 44);
  v32 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v33 = *(a11 + 8);
  }

  v34 = *(a11 + 32);
  v32 = &unk_1F50D8978;
  v35 = *(a11 + 36);
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    __p = *(a12 + 8);
  }

  v29 = *(a12 + 32);
  v30 = *(a12 + 36);
  v31 = *(a12 + 44);
  v112 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v113 = __s;
  }

  v114 = v66;
  v112 = &unk_1F50D89D8;
  v115 = v67;
  mediaplatform::Data::Data(&v116, __src, __n, 1);
  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v108 = v60;
  }

  v109 = v61;
  v107 = &unk_1F50D8958;
  v110 = v62;
  v111 = v63;
  v102 = &unk_1F50D86E0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v103 = v55;
  }

  v104 = v56;
  v102 = &unk_1F50D89B8;
  v105 = v57;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v58;
  }

  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v51;
  }

  v100 = v52;
  v98 = &unk_1F50D8978;
  v101 = v53;
  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v47;
  }

  v96 = v48;
  v94 = &unk_1F50D8978;
  v97 = v49;
  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v42;
  }

  v91 = v43;
  v89 = &unk_1F50D8958;
  v92 = v44;
  v93 = v45;
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v37;
  }

  v86 = v38;
  v84 = &unk_1F50D8958;
  v87 = v39;
  v88 = v40;
  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v33;
  }

  v82 = v34;
  v80 = &unk_1F50D8978;
  v83 = v35;
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = __p;
  }

  v77 = v29;
  v75 = &unk_1F50D8958;
  v78 = v30;
  v79 = v31;
  v151 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v108;
  }

  v153 = v109;
  v151 = &unk_1F50D8958;
  v154 = v110;
  v155 = v111;
  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v103.__r_.__value_.__l.__data_, v103.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v103;
  }

  v148 = v104;
  v146 = &unk_1F50D89B8;
  v149 = v105;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v150 = v106;
  }

  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v99;
  }

  v144 = v100;
  v142 = &unk_1F50D8978;
  v145 = v101;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v95;
  }

  v140 = v96;
  v138 = &unk_1F50D8978;
  v141 = v97;
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v90;
  }

  v135 = v91;
  v133 = &unk_1F50D8958;
  v136 = v92;
  v137 = v93;
  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v85;
  }

  v130 = v86;
  v128 = &unk_1F50D8958;
  v131 = v87;
  v132 = v88;
  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v125 = v81;
  }

  v126 = v82;
  v124 = &unk_1F50D8978;
  v127 = v83;
  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v120, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v120 = v76;
  }

  v121 = v77;
  v119 = &unk_1F50D8958;
  v122 = v78;
  v123 = v79;
  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v184, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    v184 = v147;
  }

  v185 = v148;
  v183 = &unk_1F50D89B8;
  v186 = v149;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v150;
  }

  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v180, v143.__r_.__value_.__l.__data_, v143.__r_.__value_.__l.__size_);
  }

  else
  {
    v180 = v143;
  }

  v181 = v144;
  v179 = &unk_1F50D8978;
  v182 = v145;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v139;
  }

  v177 = v140;
  v175 = &unk_1F50D8978;
  v178 = v141;
  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v134;
  }

  v172 = v135;
  v170 = &unk_1F50D8958;
  v173 = v136;
  v174 = v137;
  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v129;
  }

  v167 = v130;
  v165 = &unk_1F50D8958;
  v168 = v131;
  v169 = v132;
  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v125.__r_.__value_.__l.__data_, v125.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v125;
  }

  v163 = v126;
  v161 = &unk_1F50D8978;
  v164 = v127;
  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v157, v120.__r_.__value_.__l.__data_, v120.__r_.__value_.__l.__size_);
  }

  else
  {
    v157 = v120;
  }

  v158 = v121;
  v156 = &unk_1F50D8958;
  v159 = v122;
  v160 = v123;
  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v212, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    v212 = v180;
  }

  v213 = v181;
  v211 = &unk_1F50D8978;
  v214 = v182;
  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v208 = v176;
  }

  v209 = v177;
  v207 = &unk_1F50D8978;
  v210 = v178;
  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v171;
  }

  v204 = v172;
  v202 = &unk_1F50D8958;
  v205 = v173;
  v206 = v174;
  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v166;
  }

  v199 = v167;
  v197 = &unk_1F50D8958;
  v200 = v168;
  v201 = v169;
  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v162.__r_.__value_.__l.__data_, v162.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v162;
  }

  v195 = v163;
  v193 = &unk_1F50D8978;
  v196 = v164;
  v188 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v189, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    v189 = v157;
  }

  v190 = v158;
  v188 = &unk_1F50D8958;
  v191 = v159;
  v192 = v160;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v208;
  }

  v236 = v209;
  v234 = &unk_1F50D8978;
  v237 = v210;
  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v203;
  }

  v231 = v204;
  v229 = &unk_1F50D8958;
  v232 = v205;
  v233 = v206;
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v198;
  }

  v226 = v199;
  v224 = &unk_1F50D8958;
  v227 = v200;
  v228 = v201;
  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v221, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v221 = v194;
  }

  v222 = v195;
  v220 = &unk_1F50D8978;
  v223 = v196;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v189;
  }

  v217 = v190;
  v215 = &unk_1F50D8958;
  v218 = v191;
  v219 = v192;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v230.__r_.__value_.__l.__data_, v230.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v230;
  }

  v254 = v231;
  v252 = &unk_1F50D8958;
  v255 = v232;
  v256 = v233;
  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
  }

  else
  {
    v248 = v225;
  }

  v249 = v226;
  v247 = &unk_1F50D8958;
  v250 = v227;
  v251 = v228;
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v221.__r_.__value_.__l.__data_, v221.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v221;
  }

  v245 = v222;
  v243 = &unk_1F50D8978;
  v246 = v223;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v216;
  }

  v240 = v217;
  v238 = &unk_1F50D8958;
  v241 = v218;
  v242 = v219;
  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v267, v248.__r_.__value_.__l.__data_, v248.__r_.__value_.__l.__size_);
  }

  else
  {
    v267 = v248;
  }

  v268 = v249;
  v266 = &unk_1F50D8958;
  v269 = v250;
  v270 = v251;
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v244.__r_.__value_.__l.__data_, v244.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v244;
  }

  v264 = v245;
  v262 = &unk_1F50D8978;
  v265 = v246;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v239.__r_.__value_.__l.__data_, v239.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v239;
  }

  v259 = v240;
  v257 = &unk_1F50D8958;
  v260 = v241;
  v261 = v242;
  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, v263.__r_.__value_.__l.__data_, v263.__r_.__value_.__l.__size_);
  }

  else
  {
    v277 = v263;
  }

  v278 = v264;
  v276 = &unk_1F50D8978;
  v279 = v265;
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, v258.__r_.__value_.__l.__data_, v258.__r_.__value_.__l.__size_);
  }

  else
  {
    v272 = v258;
  }

  v20 = v259;
  v273 = v259;
  v271 = &unk_1F50D8958;
  v274 = v260;
  v275 = v261;
  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_);
    v20 = v273;
  }

  else
  {
    v281 = v272;
  }

  v282 = v20;
  v280 = &unk_1F50D8958;
  v283 = v274;
  v284 = v275;
  *a1 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), v281.__r_.__value_.__l.__data_, v281.__r_.__value_.__l.__size_);
    v21 = SHIBYTE(v281.__r_.__value_.__r.__words[2]);
    *(a1 + 32) = v282;
    *a1 = &unk_1F50D8958;
    *(a1 + 36) = v283;
    *(a1 + 44) = v284;
    v280 = &unk_1F50D86E0;
    if (v21 < 0)
    {
      operator delete(v281.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 8) = v281;
    *(a1 + 32) = v20;
    *a1 = &unk_1F50D8958;
    *(a1 + 36) = v283;
    *(a1 + 44) = v284;
    v280 = &unk_1F50D86E0;
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 56) = v277;
  }

  *(a1 + 80) = v278;
  *(a1 + 48) = &unk_1F50D8978;
  *(a1 + 84) = v279;
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), v267.__r_.__value_.__l.__data_, v267.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 104) = v267;
  }

  *(a1 + 128) = v268;
  *(a1 + 96) = &unk_1F50D8958;
  *(a1 + 132) = v269;
  *(a1 + 140) = v270;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 152), v253.__r_.__value_.__l.__data_, v253.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 152) = v253;
  }

  *(a1 + 176) = v254;
  *(a1 + 144) = &unk_1F50D8958;
  *(a1 + 180) = v255;
  *(a1 + 188) = v256;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 200), v235.__r_.__value_.__l.__data_, v235.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 200) = v235;
  }

  *(a1 + 224) = v236;
  *(a1 + 192) = &unk_1F50D8978;
  *(a1 + 228) = v237;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 248), v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 248) = v212;
  }

  *(a1 + 272) = v213;
  *(a1 + 240) = &unk_1F50D8978;
  *(a1 + 276) = v214;
  v188 = &unk_1F50D86E0;
  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v189.__r_.__value_.__l.__data_);
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  *(a1 + 288) = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 296), v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 296) = v184;
  }

  *(a1 + 320) = v185;
  *(a1 + 288) = &unk_1F50D89B8;
  *(a1 + 324) = v186;
  v22 = (a1 + 328);
  if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v22, v187.__r_.__value_.__l.__data_, v187.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v22->__r_.__value_.__l.__data_ = *&v187.__r_.__value_.__l.__data_;
    *(a1 + 344) = *(&v187.__r_.__value_.__l + 2);
  }

  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  v161 = &unk_1F50D86E0;
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v171.__r_.__value_.__l.__data_);
  }

  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v183);
  *(a1 + 352) = &unk_1F50D86E0;
  v23 = (a1 + 360);
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v23, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v23->__r_.__value_.__l.__data_ = *&v152.__r_.__value_.__l.__data_;
    *(a1 + 376) = *(&v152.__r_.__value_.__l + 2);
  }

  *(a1 + 384) = v153;
  *(a1 + 352) = &unk_1F50D8958;
  *(a1 + 388) = v154;
  *(a1 + 396) = v155;
  v119 = &unk_1F50D86E0;
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }

  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v142 = &unk_1F50D86E0;
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v146);
  v151 = &unk_1F50D86E0;
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  *(a1 + 400) = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 408), v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 408) = v113;
  }

  *(a1 + 432) = v114;
  *(a1 + 400) = &unk_1F50D89D8;
  *(a1 + 436) = v115;
  mediaplatform::Data::Data((a1 + 440), v118, v117, 1);
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v94 = &unk_1F50D86E0;
  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v102);
  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v112);
  *(a1 + 480) = &unk_1F50D86E0;
  v24 = (a1 + 488);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v24, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v24->__r_.__value_.__l.__data_ = *&v72.__r_.__value_.__l.__data_;
    *(a1 + 504) = *(&v72.__r_.__value_.__l + 2);
  }

  *(a1 + 512) = v73;
  *(a1 + 480) = &unk_1F50D8978;
  *(a1 + 516) = v74;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v32 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v41 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v46 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v50 = &unk_1F50D86E0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v54);
  v59 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v64);
  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  *(a1 + 528) = &unk_1F50D86E0;
  v25 = (a1 + 536);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v25, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v26 = *(a2 + 8);
    *(a1 + 552) = *(a2 + 24);
    *&v25->__r_.__value_.__l.__data_ = v26;
  }

  *(a1 + 560) = *(a2 + 32);
  *(a1 + 528) = &unk_1F50D8978;
  *(a1 + 564) = *(a2 + 36);
  return a1;
}

void sub_1D5AF5660()
{
  STACK[0x818] = v0;
  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(STACK[0x820]);
  }

  JUMPOUT(0x1D5AF5378);
}

void sub_1D5AF56B4()
{
  STACK[0x688] = v0;
  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  JUMPOUT(0x1D5AF5410);
}

void sub_1D5AF5710()
{
  STACK[0x4A8] = v0;
  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  JUMPOUT(0x1D5AF54C0);
}

void sub_1D5AF5774()
{
  STACK[0x298] = v0;
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  JUMPOUT(0x1D5AF5578);
}

void sub_1D5AF57A8()
{
  *(v2 + 400) = v1;
  if (*(v2 + 431) < 0)
  {
    operator delete(*v0);
  }

  mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(v2);
  JUMPOUT(0x1D5AF5428);
}

void sub_1D5AF57CC()
{
  STACK[0x518] = v0;
  if (SLOBYTE(STACK[0x537]) < 0)
  {
    operator delete(STACK[0x520]);
  }

  JUMPOUT(0x1D5AF54E0);
}

void sub_1D5AF57E8()
{
  STACK[0x308] = v0;
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  JUMPOUT(0x1D5AF5598);
}

uint64_t mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 288);
  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  *(a1 + 96) = &unk_1F50D86E0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::AlbumArtistTable::persistentIDColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1183) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 145), *(this + 146));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1160);
    *(a2 + 24) = *(this + 147);
  }

  *(a2 + 32) = *(this + 296);
  *(a2 + 44) = *(this + 299);
  *(a2 + 36) = *(this + 1188);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::AlbumArtistTable::nameColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1231) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 151), *(this + 152));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1208);
    *(a2 + 24) = *(this + 153);
  }

  *(a2 + 32) = *(this + 308);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1236);
  if (*(this + 1263) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 155), *(this + 156));
  }

  else
  {
    *(a2 + 40) = *(this + 1240);
    *(a2 + 56) = *(this + 157);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AF5B84(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AlbumArtistTable::sortNameColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1295) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 159), *(this + 160));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1272);
    *(a2 + 24) = *(this + 161);
  }

  *(a2 + 32) = *(this + 324);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1300);
  if (*(this + 1327) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 163), *(this + 164));
  }

  else
  {
    *(a2 + 40) = *(this + 1304);
    *(a2 + 56) = *(this + 165);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AF5C9C(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

mediaplatform::Data *mlcore::AlbumArtistTable::groupingKeyColumn@<X0>(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1359) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 167), *(this + 168));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1336);
    *(a2 + 24) = *(this + 169);
  }

  *(a2 + 32) = *(this + 340);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 1364);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 174), *(this + 172), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D5AF5D98(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AlbumArtistTable::cloudStatusColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1439) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 177), *(this + 178));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1416);
    *(a2 + 24) = *(this + 179);
  }

  *(a2 + 32) = *(this + 360);
  *(a2 + 36) = *(this + 1444);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::AlbumArtistTable::storeIDColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1487) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 183), *(this + 184));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1464);
    *(a2 + 24) = *(this + 185);
  }

  *(a2 + 32) = *(this + 372);
  *(a2 + 44) = *(this + 375);
  *(a2 + 36) = *(this + 1492);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::AlbumArtistTable::representativeItemPersistentIDColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1535) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 189), *(this + 190));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1512);
    *(a2 + 24) = *(this + 191);
  }

  *(a2 + 32) = *(this + 384);
  *(a2 + 44) = *(this + 387);
  *(a2 + 36) = *(this + 1540);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::AlbumArtistTable::keepLocalColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1583) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 195), *(this + 196));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1560);
    *(a2 + 24) = *(this + 197);
  }

  *(a2 + 32) = *(this + 396);
  *(a2 + 36) = *(this + 1588);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::AlbumArtistTable::keepLocalStatusColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1631) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 201), *(this + 202));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1608);
    *(a2 + 24) = *(this + 203);
  }

  *(a2 + 32) = *(this + 408);
  *(a2 + 36) = *(this + 1636);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::AlbumArtistTable::keepLocalStatusReasonColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1679) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 207), *(this + 208));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1656);
    *(a2 + 24) = *(this + 209);
  }

  *(a2 + 32) = *(this + 420);
  *(a2 + 36) = *(this + 1684);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::AlbumArtistTable::keepLocalConstraintsColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1727) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 213), *(this + 214));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1704);
    *(a2 + 24) = *(this + 215);
  }

  *(a2 + 32) = *(this + 432);
  *(a2 + 36) = *(this + 1732);
  *a2 = &unk_1F50D7AE0;
}

mediaplatform::Data *mlcore::AlbumArtistTable::appDataColumn@<X0>(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1775) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 219), *(this + 220));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1752);
    *(a2 + 24) = *(this + 221);
  }

  *(a2 + 32) = *(this + 444);
  *a2 = &unk_1F50D89D8;
  *(a2 + 36) = *(this + 1780);
  result = mediaplatform::Data::Data((a2 + 40), *(this + 226), *(this + 224), 1);
  *a2 = &unk_1F50D7B40;
  return result;
}

void sub_1D5AF6304(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AlbumArtistTable::syncIDColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1855) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 229), *(this + 230));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1832);
    *(a2 + 24) = *(this + 231);
  }

  *(a2 + 32) = *(this + 464);
  *(a2 + 44) = *(this + 467);
  *(a2 + 36) = *(this + 1860);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::AlbumArtistTable::cloudUniversalLibraryIDColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1903) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 235), *(this + 236));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1880);
    *(a2 + 24) = *(this + 237);
  }

  *(a2 + 32) = *(this + 476);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 1908);
  if (*(this + 1935) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 239), *(this + 240));
  }

  else
  {
    *(a2 + 40) = *(this + 1912);
    *(a2 + 56) = *(this + 241);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AF64C4(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AlbumArtistTable::classicalExperienceAvailableColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 1967) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 243), *(this + 244));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1944);
    *(a2 + 24) = *(this + 245);
  }

  *(a2 + 32) = *(this + 492);
  *(a2 + 36) = *(this + 1972);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::AlbumArtistTable::likedStateColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2015) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 249), *(this + 250));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 1992);
    *(a2 + 24) = *(this + 251);
  }

  *(a2 + 32) = *(this + 504);
  *(a2 + 36) = *(this + 2020);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::AlbumArtistTable::likedStateChangedDateColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2063) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 255), *(this + 256));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2040);
    *(a2 + 24) = *(this + 257);
  }

  *(a2 + 32) = *(this + 516);
  *(a2 + 44) = *(this + 519);
  *(a2 + 36) = *(this + 2068);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::AlbumArtistTable::sortOrderColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2111) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 261), *(this + 262));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2088);
    *(a2 + 24) = *(this + 263);
  }

  *(a2 + 32) = *(this + 528);
  *(a2 + 44) = *(this + 531);
  *(a2 + 36) = *(this + 2116);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::AlbumArtistTable::sortOrderSectionColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2159) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 267), *(this + 268));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2136);
    *(a2 + 24) = *(this + 269);
  }

  *(a2 + 32) = *(this + 540);
  *(a2 + 36) = *(this + 2164);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::AlbumArtistTable::nameOrderColumn(mlcore::AlbumArtistTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 2207) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 273), *(this + 274));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 2184);
    *(a2 + 24) = *(this + 275);
  }

  *(a2 + 32) = *(this + 552);
  *(a2 + 44) = *(this + 555);
  *(a2 + 36) = *(this + 2212);
  *a2 = &unk_1F50D7AC0;
}

mlcore::EntityChangeTable *mlcore::EntityChangeTable::EntityChangeTable(mlcore::EntityChangeTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v36, "entity_changes");
  std::string::basic_string[abi:ne200100]<0>(&v31, "class");
  v32 = &unk_1F50D86E0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v31;
  }

  v34 = 16;
  LOBYTE(v35) = 0;
  HIDWORD(v35) = 0;
  v32 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v26, "entity_pid");
  v27 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v26;
  }

  v29 = 16;
  v30[0] = 0;
  *&v30[4] = 0;
  v27 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v21, "source_pid");
  v22 = &unk_1F50D86E0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = v21;
  }

  v24 = 16;
  v25[0] = 0;
  *&v25[4] = 0;
  v22 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v16, "change_type");
  v17 = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v16;
  }

  v19 = 16;
  LOBYTE(v20) = 0;
  HIDWORD(v20) = 0;
  v17 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(v9, "changes");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v11, v9, __p);
  v57 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = __s;
  }

  v59 = v34;
  v57 = &unk_1F50D8978;
  v60 = v35;
  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v53 = v28;
  }

  v54 = v29;
  v52 = &unk_1F50D8958;
  v55 = *v30;
  v56 = *&v30[8];
  v47 = &unk_1F50D86E0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = v23;
  }

  v49 = v24;
  v47 = &unk_1F50D8958;
  v50 = *v25;
  v51 = *&v25[8];
  v43 = &unk_1F50D86E0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v44 = v18;
  }

  v45 = v19;
  v43 = &unk_1F50D8978;
  v46 = v20;
  v38 = &unk_1F50D86E0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v12;
  }

  v40 = v13;
  v38 = &unk_1F50D89B8;
  v41 = v14;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v15;
  }

  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v37) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v36, *(&v36 + 1));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = v36;
    *(this + 3) = v37;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50D8F38;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v58;
  }

  v82 = v59;
  v80 = &unk_1F50D8978;
  v83 = v60;
  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = v53;
  }

  v77 = v54;
  v75 = &unk_1F50D8958;
  v78 = v55;
  v79 = v56;
  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = v48;
  }

  v72 = v49;
  v70 = &unk_1F50D8958;
  v73 = v50;
  v74 = v51;
  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = v44;
  }

  v68 = v45;
  v66 = &unk_1F50D8978;
  v69 = v46;
  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v39;
  }

  v63 = v40;
  v61 = &unk_1F50D89B8;
  v64 = v41;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = v42;
  }

  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v76;
  }

  v100 = v77;
  v98 = &unk_1F50D8958;
  v101 = v78;
  v102 = v79;
  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v71;
  }

  v95 = v72;
  v93 = &unk_1F50D8958;
  v96 = v73;
  v97 = v74;
  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v90 = v67;
  }

  v91 = v68;
  v89 = &unk_1F50D8978;
  v92 = v69;
  v84 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v62;
  }

  v86 = v63;
  v84 = &unk_1F50D89B8;
  v87 = v64;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v65;
  }

  v112 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v113, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v113 = v94;
  }

  v114 = v95;
  v112 = &unk_1F50D8958;
  v115 = v96;
  v116 = v97;
  v108 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v109 = v90;
  }

  v110 = v91;
  v108 = &unk_1F50D8978;
  v111 = v92;
  v103 = &unk_1F50D86E0;
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
  }

  else
  {
    v104 = v85;
  }

  v105 = v86;
  v103 = &unk_1F50D89B8;
  v106 = v87;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v88;
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v109;
  }

  v124 = v110;
  v122 = &unk_1F50D8978;
  v125 = v111;
  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v104;
  }

  v119 = v105;
  v117 = &unk_1F50D89B8;
  v120 = v106;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v107;
  }

  v126 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    v127 = v118;
  }

  v128 = v119;
  v126 = &unk_1F50D89B8;
  v129 = v120;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v121;
  }

  *(this + 10) = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 88) = v127;
  }

  *(this + 28) = v128;
  *(this + 10) = &unk_1F50D89B8;
  *(this + 116) = v129;
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, v130.__r_.__value_.__l.__data_, v130.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 5) = v130;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v126);
  *(this + 18) = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 152) = v123;
  }

  *(this + 44) = v124;
  *(this + 18) = &unk_1F50D8978;
  *(this + 180) = v125;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v117);
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  *(this + 24) = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 200) = v113;
  }

  *(this + 56) = v114;
  *(this + 24) = &unk_1F50D8958;
  *(this + 228) = v115;
  *(this + 59) = v116;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v103);
  v108 = &unk_1F50D86E0;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  v112 = &unk_1F50D86E0;
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  *(this + 30) = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 248), v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 248) = v99;
  }

  *(this + 68) = v100;
  *(this + 30) = &unk_1F50D8958;
  *(this + 276) = v101;
  *(this + 71) = v102;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v84);
  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v98 = &unk_1F50D86E0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  *(this + 36) = &unk_1F50D86E0;
  v3 = (this + 296);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v81.__r_.__value_.__l.__data_;
    *(this + 39) = *(&v81.__r_.__value_.__l + 2);
  }

  *(this + 80) = v82;
  *(this + 36) = &unk_1F50D8978;
  *(this + 324) = v83;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v61);
  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v75 = &unk_1F50D86E0;
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  v80 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v38);
  v43 = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v47 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50D84E8;
  *(this + 42) = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 344), __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 344) = __s;
  }

  *(this + 92) = v34;
  *(this + 372) = v35;
  *(this + 42) = &unk_1F50D7AE0;
  *(this + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 392), v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 392) = v28;
  }

  *(this + 104) = v29;
  *(this + 420) = *v30;
  *(this + 107) = *&v30[8];
  *(this + 48) = &unk_1F50D7AC0;
  *(this + 54) = &unk_1F50D86E0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 440), v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 440) = v23;
  }

  *(this + 116) = v24;
  *(this + 468) = *v25;
  *(this + 119) = *&v25[8];
  *(this + 54) = &unk_1F50D7AC0;
  *(this + 60) = &unk_1F50D86E0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 488), v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 488) = v18;
  }

  *(this + 128) = v19;
  *(this + 516) = v20;
  *(this + 60) = &unk_1F50D7AE0;
  *(this + 66) = &unk_1F50D86E0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 536), v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 536) = v12;
  }

  *(this + 140) = v13;
  *(this + 66) = &unk_1F50D89B8;
  *(this + 564) = v14;
  v4 = (this + 568);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v15.__r_.__value_.__l.__data_;
    *(this + 73) = *(&v15.__r_.__value_.__l + 2);
  }

  *(this + 66) = &unk_1F50D7B20;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v11);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  v17 = &unk_1F50D86E0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v22 = &unk_1F50D86E0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v27 = &unk_1F50D86E0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v32 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  *this = &unk_1F50D4D70;
  std::string::basic_string[abi:ne200100]<0>(&__str, "UNIQUE (class, entity_pid, source_pid, change_type)");
  std::string::operator=((this + 56), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return this;
}

void sub_1D5AF7FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  *(v82 + 528) = v81;
  if (*(v82 + 559) < 0)
  {
    operator delete(*v88);
  }

  *(v82 + 480) = v87;
  if (*(v82 + 511) < 0)
  {
    operator delete(*v86);
  }

  *(v82 + 432) = v85;
  if (*(v82 + 463) < 0)
  {
    operator delete(*v84);
  }

  *(v82 + 384) = a22;
  if (*(v82 + 415) < 0)
  {
    operator delete(*v83);
  }

  *(v82 + 336) = a23;
  if (*(v82 + 367) < 0)
  {
    operator delete(*v80);
  }

  mediaplatform::DatabaseTable<int,long long,long long,int,std::string>::~DatabaseTable(v82);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a43);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  a57 = a24;
  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  a72 = a25;
  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  a77 = a26;
  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  STACK[0x210] = a27;
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a80);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  _Unwind_Resume(a1);
}

void sub_1D5AF83C0()
{
  STACK[0x528] = v0;
  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  JUMPOUT(0x1D5AF8174);
}

void sub_1D5AF83F4()
{
  STACK[0x458] = v0;
  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  JUMPOUT(0x1D5AF81ACLL);
}

void sub_1D5AF8430()
{
  STACK[0x358] = v0;
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  JUMPOUT(0x1D5AF81FCLL);
}

void sub_1D5AF847C()
{
  STACK[0x258] = v0;
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  JUMPOUT(0x1D5AF8280);
}

void sub_1D5AF84E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  mlcore::MediaTable<int,long long,long long,int,std::string>::~MediaTable(v33);
  JUMPOUT(0x1D5AF83B8);
}

void mlcore::MediaTable<int,long long,long long,int,std::string>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D84E8;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 528);
  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 432) = &unk_1F50D86E0;
  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  *(a1 + 384) = &unk_1F50D86E0;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  *(a1 + 336) = &unk_1F50D86E0;
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  mediaplatform::DatabaseTable<int,long long,long long,int,std::string>::~DatabaseTable(a1);
}

{
  mlcore::MediaTable<int,long long,long long,int,std::string>::~MediaTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseTable<int,long long,long long,int,std::string>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8F38;
  *(a1 + 288) = &unk_1F50D86E0;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  *(a1 + 240) = &unk_1F50D86E0;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 192) = &unk_1F50D86E0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 144) = &unk_1F50D86E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<int,long long,long long,int,std::string>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void sub_1D5AF87FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<int,long long,long long,int,std::string>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 288);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 240);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 192);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 144);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 80);
}

void sub_1D5AF8884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::EntityChangeTable::~EntityChangeTable(mlcore::EntityChangeTable *this)
{
  mlcore::MediaTable<int,long long,long long,int,std::string>::~MediaTable(this);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::EntityChangeTable::classColumn(mlcore::EntityChangeTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 367) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 43), *(this + 44));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 344);
    *(a2 + 24) = *(this + 45);
  }

  *(a2 + 32) = *(this + 92);
  *(a2 + 36) = *(this + 372);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::EntityChangeTable::persistentIDColumn(mlcore::EntityChangeTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 415) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 49), *(this + 50));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 392);
    *(a2 + 24) = *(this + 51);
  }

  *(a2 + 32) = *(this + 104);
  *(a2 + 44) = *(this + 107);
  *(a2 + 36) = *(this + 420);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::EntityChangeTable::sourcePersistentIDColumn(mlcore::EntityChangeTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 463) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 55), *(this + 56));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 440);
    *(a2 + 24) = *(this + 57);
  }

  *(a2 + 32) = *(this + 116);
  *(a2 + 44) = *(this + 119);
  *(a2 + 36) = *(this + 468);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::EntityChangeTable::changeTypeColumn(mlcore::EntityChangeTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 511) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 61), *(this + 62));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 488);
    *(a2 + 24) = *(this + 63);
  }

  *(a2 + 32) = *(this + 128);
  *(a2 + 36) = *(this + 516);
  *a2 = &unk_1F50D7AE0;
}

void mlcore::EntityChangeTable::changesColumn(mlcore::EntityChangeTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 559) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 67), *(this + 68));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 536);
    *(a2 + 24) = *(this + 69);
  }

  *(a2 + 32) = *(this + 140);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 564);
  if (*(this + 591) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 71), *(this + 72));
  }

  else
  {
    *(a2 + 40) = *(this + 568);
    *(a2 + 56) = *(this + 73);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5AF8CD4(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ComplexProperty<int>::_SQLJoinClauses(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a2, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 4);
}

void sub_1D5AF8E0C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void mlcore::ComplexProperty<int>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<int>::databaseTables()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database table");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<int>::~ComplexProperty(uint64_t a1)
{
  *a1 = &unk_1F50D6B18;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D6B18;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);
}

void mlcore::ComplexProperty<long long>::_SQLJoinClauses(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a2, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 4);
}

void mlcore::ComplexProperty<long long>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<long long>::databaseTables()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database table");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<long long>::~ComplexProperty(uint64_t a1)
{
  *a1 = &unk_1F50D6A90;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D6A90;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);
}

void mlcore::ComplexProperty<double>::_SQLJoinClauses(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a2, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 4);
}

void mlcore::ComplexProperty<double>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<double>::databaseTables()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database table");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<double>::~ComplexProperty(uint64_t a1)
{
  *a1 = &unk_1F50D6BA0;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D6BA0;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);
}

void mlcore::ComplexProperty<std::string>::_SQLJoinClauses(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a2, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 4);
}

void mlcore::ComplexProperty<std::string>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<std::string>::databaseTables()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database table");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<std::string>::~ComplexProperty(uint64_t a1)
{
  *a1 = &unk_1F50D6C28;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D6C28;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);
}

void mlcore::ComplexProperty<mediaplatform::Data>::_SQLJoinClauses(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a2, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 4);
}

void mlcore::ComplexProperty<mediaplatform::Data>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<mediaplatform::Data>::databaseTables()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database table");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::ComplexProperty<mediaplatform::Data>::~ComplexProperty(uint64_t a1)
{
  *a1 = &unk_1F50D6CB0;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D6CB0;
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);
}

uint64_t mlcore::ComplexProperty<int>::ComplexProperty(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F50D6B18;
  v4 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a1 + 80, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D5AF9998(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(v1);
  _Unwind_Resume(a1);
}

uint64_t mlcore::ComplexProperty<long long>::ComplexProperty(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F50D6A90;
  v4 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a1 + 80, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D5AF9A44(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(v1);
  _Unwind_Resume(a1);
}

uint64_t mlcore::ComplexProperty<double>::ComplexProperty(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F50D6BA0;
  v4 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a1 + 80, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D5AF9AF0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(v1);
  _Unwind_Resume(a1);
}

uint64_t mlcore::ComplexProperty<std::string>::ComplexProperty(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F50D6C28;
  v4 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a1 + 80, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D5AF9B9C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(v1);
  _Unwind_Resume(a1);
}

uint64_t mlcore::ComplexProperty<mediaplatform::Data>::ComplexProperty(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F50D6CB0;
  v4 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__init_with_size[abi:ne200100]<std::shared_ptr<mediaplatform::SQLJoinClause const>*,std::shared_ptr<mediaplatform::SQLJoinClause const>*>(a1 + 80, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D5AF9C48(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(v1);
  _Unwind_Resume(a1);
}

mediaplatform::Semaphore *mediaplatform::Semaphore::Semaphore(mediaplatform::Semaphore *this, int a2)
{
  *this = dispatch_semaphore_create(a2);
  return this;
}

{
  *this = dispatch_semaphore_create(a2);
  return this;
}

void mediaplatform::Semaphore::~Semaphore(dispatch_object_t *this)
{
  dispatch_release(*this);
}

{
  dispatch_release(*this);
}

intptr_t mediaplatform::Semaphore::wait(NSObject **a1, double a2)
{
  if (a2 == 1.79769313e308)
  {
    v3 = -1;
  }

  else
  {
    v3 = dispatch_time(0, (a2 * 1000000000.0));
  }

  v4 = *a1;

  return dispatch_semaphore_wait(v4, v3);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

void mlcore::InPredicate<mediaplatform::Data>::InPredicate()
{
    ;
  }
}

void mlcore::InPredicate<std::string>::InPredicate()
{
    ;
  }
}

void mlcore::InPredicate<double>::InPredicate()
{
    ;
  }
}

void mlcore::InPredicate<int>::InPredicate()
{
    ;
  }
}

{
    ;
  }
}

void mlcore::InPredicate<long long>::InPredicate()
{
    ;
  }
}

void mlcore::AnyInPredicate<mediaplatform::Data>::AnyInPredicate()
{
    ;
  }
}

{
    ;
  }
}

void mlcore::AnyInPredicate<std::string>::AnyInPredicate()
{
    ;
  }
}

{
    ;
  }
}

void mlcore::AnyInPredicate<double>::AnyInPredicate()
{
    ;
  }
}

{
    ;
  }
}

void mlcore::AnyInPredicate<int>::AnyInPredicate()
{
    ;
  }
}

{
    ;
  }
}

void mlcore::AnyInPredicate<long long>::AnyInPredicate()
{
    ;
  }
}

{
    ;
  }
}

void mlcore::ComplexProperty<mediaplatform::Data>::ComplexProperty()
{
    ;
  }
}

void mlcore::ComplexProperty<std::string>::ComplexProperty()
{
    ;
  }
}

void mlcore::ComplexProperty<double>::ComplexProperty()
{
    ;
  }
}

void mlcore::ComplexProperty<int>::ComplexProperty()
{
    ;
  }
}

void mlcore::ComplexProperty<long long>::ComplexProperty()
{
    ;
  }
}

void mlcore::ComparisonPredicate<std::string>::ComparisonPredicate()
{
    ;
  }
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E28]();
}

{
  return MEMORY[0x1EEE63E50]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63F00]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}