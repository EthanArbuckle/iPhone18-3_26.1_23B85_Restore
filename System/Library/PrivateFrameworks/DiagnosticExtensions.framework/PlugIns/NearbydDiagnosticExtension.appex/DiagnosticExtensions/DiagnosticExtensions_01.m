void sub_10000EC44()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_10000EC90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

uint64_t sub_10000ED58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000EDD4(result, a4);
  }

  return result;
}

void sub_10000EDB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000EDD4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_100008FB0(a1, a2);
  }

  sub_1000041E4();
}

__n128 sub_10000EE0C(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_10000EE60()
{
  sub_10000D400();
  v0 = std::string::insert(&v37, 0, "reverseLUT_A");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v38, ".bin");
  v3 = *&v2->__r_.__value_.__l.__data_;
  qword_1000204B0 = v2->__r_.__value_.__r.__words[2];
  xmmword_1000204A0 = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1000204A0, &_mh_execute_header);
  sub_10000D400();
  v4 = std::string::insert(&v37, 0, "reverseLUT_A");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v38, ".bin");
  v7 = *&v6->__r_.__value_.__l.__data_;
  qword_1000204C8 = v6->__r_.__value_.__r.__words[2];
  xmmword_1000204B8 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1000204B8, &_mh_execute_header);
  sub_10000D400();
  v8 = std::string::insert(&v37, 0, "reverseLUT_A");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, ".bin");
  v11 = *&v10->__r_.__value_.__l.__data_;
  qword_1000204E0 = v10->__r_.__value_.__r.__words[2];
  xmmword_1000204D0 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1000204D0, &_mh_execute_header);
  sub_10000D400();
  v12 = std::string::insert(&v37, 0, "reverseLUT_A");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v38, ".bin");
  v15 = *&v14->__r_.__value_.__l.__data_;
  qword_1000204F8 = v14->__r_.__value_.__r.__words[2];
  xmmword_1000204E8 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1000204E8, &_mh_execute_header);
  sub_10000D400();
  v16 = std::string::insert(&v37, 0, "reverseLUT_A");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, ".bin");
  v19 = *&v18->__r_.__value_.__l.__data_;
  qword_100020510 = v18->__r_.__value_.__r.__words[2];
  xmmword_100020500 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_100020500, &_mh_execute_header);
  sub_10000D400();
  v20 = std::string::insert(&v37, 0, "reverseLUT_A");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v38, ".bin");
  v23 = *&v22->__r_.__value_.__l.__data_;
  qword_100020528 = v22->__r_.__value_.__r.__words[2];
  xmmword_100020518 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_100020518, &_mh_execute_header);
  sub_10000D400();
  v24 = std::string::insert(&v37, 0, "reverseLUT_A");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v38, ".bin");
  v27 = *&v26->__r_.__value_.__l.__data_;
  qword_100020540 = v26->__r_.__value_.__r.__words[2];
  xmmword_100020530 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_100020530, &_mh_execute_header);
  sub_10000D400();
  v28 = std::string::insert(&v37, 0, "reverseLUT_A");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v38, ".bin");
  v31 = *&v30->__r_.__value_.__l.__data_;
  qword_100020558 = v30->__r_.__value_.__r.__words[2];
  xmmword_100020548 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_100020548, &_mh_execute_header);
  sub_10000D400();
  v32 = std::string::insert(&v37, 0, "reverseLUT_A");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v38, ".bin");
  v35 = *&v34->__r_.__value_.__l.__data_;
  qword_100020570 = v34->__r_.__value_.__r.__words[2];
  xmmword_100020560 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return __cxa_atexit(&std::string::~string, &xmmword_100020560, &_mh_execute_header);
}

void sub_10000F490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10000F504(unsigned __int8 *a1)
{
  v2 = qword_1000205A8;
  if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1 + 8;
    if (a1[31] < 0)
    {
      v3 = *v3;
    }

    v4 = *a1;
    v5 = a1[1];
    v6 = *(a1 + 16);
    v7 = a1 + 40;
    if (a1[63] < 0)
    {
      v7 = *v7;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 17);
    v10 = *(a1 + 18);
    v11 = *(a1 + 19);
    v12[0] = 67176707;
    v12[1] = v4;
    v13 = 1025;
    v14 = v5;
    v15 = 2081;
    v16 = v3;
    v17 = 1025;
    v18 = v6;
    v19 = 2081;
    v20 = v7;
    v21 = 1025;
    v22 = v8;
    v23 = 1025;
    v24 = v9;
    v25 = 1025;
    v26 = v10;
    v27 = 1025;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#fu,endian,%{private}d,headerVersion,%{private}d,type,%{private}s,version,%{private}d,copyright,%{private}s,timestamp,%{private}u,expiration,%{private}u,dataSizeBytes,%{private}u,crc,%{private}u", v12, 0x40u);
  }
}

unint64_t sub_10000F624(uint64_t *a1)
{
  sub_10000E41C(v5, a1);
  if ((*(&v5[4] + *(v5[0] - 3)) & 5) != 0)
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    std::istream::tellg();
    v2 = v4 & 0xFFFFFFFFFFFFFF00;
    v1 = v4;
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v2 | v1;
}

void *sub_10000F7BC(void *a1)
{
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

BOOL sub_10000F888(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) >= 0;
}

void sub_10000F8C4(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v1) & 0x80000000) == 0)
  {
    CFAbsoluteTimeGetCurrent();
  }
}

uint64_t sub_10000F940(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 128))
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_100016214();
    }

    return 0;
  }

  v4 = (a2 + 31);
  v3 = *(a2 + 31);
  v5 = (a2 + 16);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 16);
  }

  if (v3 != 30)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_10001610C(v4, v5);
    }

    return 0;
  }

  if ((*(a2 + 63) & 0x80000000) == 0 || *(a2 + 48) != 128)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_100016190((a2 + 63), (a2 + 48));
    }

    return 0;
  }

  v6 = 1;
  std::ostream::write();
  std::ostream::write();
  if (*(a2 + 31) >= 0)
  {
    v8 = *(a2 + 31);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  std::ostream::write();
  std::ostream::write();
  v10 = *(a2 + 40);
  v9 = a2 + 40;
  if (*(v9 + 23) >= 0)
  {
    v11 = *(v9 + 23);
  }

  else
  {
    v11 = *(v9 + 8);
  }

  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::flush();
  return v6;
}

BOOL sub_10000FB10(FILE *__stream, uint64_t a2)
{
  if (!__stream)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_100016440();
    }

    return 0;
  }

  if (fread(&__ptr, 1uLL, 0xB2uLL, __stream) != 178)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_100016254();
    }

    return 0;
  }

  v3 = __ptr;
  *a2 = __ptr;
  if ((v3 - 1) >= 2)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000162D8(a2);
    }

    return 0;
  }

  v4 = v17;
  *(a2 + 1) = v17;
  if (!v4)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000163C8((a2 + 1));
    }

    return 0;
  }

  v15 = 0;
  *__s = *v18;
  *&__s[14] = *&v18[14];
  std::string::assign((a2 + 8), __s);
  if (*a2 == 2)
  {
    v5 = bswap32(v19) >> 16;
  }

  else
  {
    v5 = v19;
  }

  *(a2 + 32) = v5;
  v6 = v5 != 0;
  if (v5)
  {
    v13 = 0;
    v12[4] = v24;
    v12[5] = v25;
    v12[6] = v26;
    v12[7] = v27;
    v12[0] = v20;
    v12[1] = v21;
    v12[2] = v22;
    v12[3] = v23;
    std::string::assign((a2 + 40), v12);
    if (*a2 == 2)
    {
      v8 = bswap32(v28);
      v9 = bswap32(v29);
      v10 = bswap32(v30);
      v11 = bswap32(v31);
    }

    else
    {
      v8 = v28;
      v9 = v29;
      v10 = v30;
      v11 = v31;
    }

    *(a2 + 64) = v8;
    *(a2 + 68) = v9;
    *(a2 + 72) = v10;
    *(a2 + 76) = v11;
  }

  else if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
  {
    sub_100016350((a2 + 32));
  }

  return v6;
}

BOOL sub_10000FD80(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = (a1 + 23);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v15) < 0)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_100016480(v4, v3);
    }

    return 0;
  }

  v5 = sub_10000F624(v3);
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_1000164F0(v4, v3);
    }

    return 0;
  }

  v7 = v5;
  if (v5 <= 0xB1)
  {
    v8 = qword_1000205A8;
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 23) >= 0)
      {
        v14 = v3;
      }

      else
      {
        v14 = *v3;
      }

      v15.st_dev = 136315650;
      *&v15.st_mode = v14;
      WORD2(v15.st_ino) = 2048;
      *(&v15.st_ino + 6) = v7;
      HIWORD(v15.st_gid) = 1024;
      v15.st_rdev = 178;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#fu,getHeader,failed,file,%s,fileTooSmall,size,%lu,expected,%d", &v15, 0x1Cu);
    }
  }

  if (*(v3 + 23) >= 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = *v3;
  }

  v10 = fopen(v9, "rb");
  v11 = v10;
  if (!v10)
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_100016560(v4, v3);
    }

    return 0;
  }

  v12 = sub_10000FB10(v10, a2);
  fclose(v11);
  return v12;
}

BOOL sub_10000FF78(uint64_t a1)
{
  v8 = 0;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  v16 = xmmword_1000177B0;
  v1 = sub_10000FD80(a1, &v8);
  if (v16)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    LODWORD(v5) = DWORD1(v16);
    LODWORD(v4) = v16;
    v6 = Current - v4 > v5;
  }

  else
  {
    v6 = 0;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v9);
  }

  return v6;
}

uint64_t sub_100010038(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL sub_10001007C(uint64_t *a1, int *a2, uint64_t *a3)
{
  sub_10000E41C(v12, a1);
  v5 = v13;
  if (v13)
  {
    v6 = 0;
    v7 = v12[0];
    *(&v12[1] + *(v12[0] - 3)) &= ~0x1000u;
    *a2 = -1;
    if ((*(&v12[4] + *(v7 - 3)) & 2) == 0)
    {
      v8 = -174;
      while (1)
      {
        std::istream::read();
        v9 = v12[0];
        if ((*(&v12[4] + *(v12[0] - 3)) & 2) != 0)
        {
          break;
        }

        v10 = dword_1000177C0[*a2] ^ (*a2 >> 8);
        *a2 = v10;
        ++v8;
        if ((*(&v12[4] + *(v9 - 3)) & 2) != 0)
        {
          goto LABEL_11;
        }
      }

      v10 = *a2;
LABEL_11:
      v6 = ~v10;
    }

    *a2 = v6;
  }

  else if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
  {
    sub_1000165D0(a3);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v5 != 0;
}

BOOL sub_100010340(uint64_t *a1, int *a2)
{
  sub_1000103C0(__p, "generateCrc");
  v4 = sub_10001007C(a1, a2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1000103A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000103C0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001990();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_100010478(uint64_t a1)
{
  *v10 = 0;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = 0;
  v18 = xmmword_1000177B0;
  if (!sub_10000FD80(a1, v10))
  {
    if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
    {
      sub_10001665C(a1);
    }

    goto LABEL_11;
  }

  sub_10000F504(v10);
  v9 = 0;
  sub_1000103C0(buf, "isCrcOkay");
  v2 = sub_10001007C(a1, &v9, buf);
  v3 = v2;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else if (!v2)
  {
    goto LABEL_11;
  }

  v4 = v9;
  if (HIDWORD(v18) == v9)
  {
    v5 = 1;
    goto LABEL_12;
  }

  v6 = qword_1000205A8;
  if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    *buf = 136315650;
    *&buf[4] = v8;
    v20 = 1024;
    v21 = HIDWORD(v18);
    v22 = 1024;
    v23 = v4;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#fu,isCrcOkay,file,%s,crcMismatch,onFile,%08x,calculated,%08x", buf, 0x18u);
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v11);
  }

  return v5;
}

BOOL sub_100010670(uint64_t a1, int a2)
{
  v8 = 0;
  v14 = 0;
  v15 = 0;
  __p = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 0;
  v16 = xmmword_1000177B0;
  v4 = sub_10000FD80(a1, &v8);
  if (v4)
  {
    if (v12 != a2)
    {
      v5 = qword_1000205A8;
      if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) >= 0)
        {
          v6 = a1;
        }

        else
        {
          v6 = *a1;
        }

        *buf = 67109634;
        v18 = v12;
        v19 = 1024;
        v20 = a2;
        v21 = 2080;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#fu,isVersionOkay, Incorrect file version %d, expected %d, file %s", buf, 0x18u);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR))
  {
    sub_1000166CC(a1);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v9);
  }

  return v4;
}

BOOL sub_1000107F8(uint64_t a1)
{
  sub_10000F624(a1);
  if ((v2 & 1) == 0)
  {
    v4 = qword_1000205A8;
    result = os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#fu,%s does not exist", &v6, 0xCu);
    return 0;
  }

  if (sub_100010478(a1))
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10001673C(a1);
    return 0;
  }

  return result;
}

BOOL sub_1000108FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F624(a1);
  if ((v5 & 1) == 0)
  {
    v7 = qword_1000205A8;
    result = os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#fu,%s does not exist", &v9, 0xCu);
    return 0;
  }

  if (v4 != a2)
  {
    result = os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1000167AC();
    return 0;
  }

  if (sub_100010478(a1))
  {
    return 1;
  }

  result = os_log_type_enabled(qword_1000205A8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10001673C(a1);
    return 0;
  }

  return result;
}

uint64_t *sub_100010A48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

char *sub_100010A70@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  if (*result < 0)
  {
    v4 = *a2;
  }

  return result;
}

char *sub_100010AA0@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

void sub_100010AB8(uint64_t a1, __int16 **a2)
{
  v2 = a1 + 8;
  *(a1 + 16) = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    v7 = v5;
    sub_1000075F8(v2, &v7);
    v6 = HIBYTE(v5);
    sub_1000075F8(v2, &v6);
  }
}

uint64_t sub_100010B28(unsigned __int8 *a1)
{
  sub_100010EC4(&v18);
  sub_100011030(*a1, &v15);
  v2 = std::string::append(&v15, ": [");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v17 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v17 >= 0)
  {
    v5 = HIBYTE(v17);
  }

  else
  {
    v5 = __p[1];
  }

  sub_100013530(&v18, v4, v5);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v6 = v18;
  v7 = &v18 + *(v18 - 3);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((&v18 + *(v18 - 3)));
    v8 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(__p);
    v6 = v18;
  }

  *(v7 + 36) = 48;
  *(&v18 + *(v6 - 3) + 8) = *(&v18 + *(v6 - 3) + 8) & 0xFFFFFFB5 | 8;
  if (*(a1 + 2) != *(a1 + 1))
  {
    v9 = 0;
    do
    {
      v10 = sub_100013530(&v18, "0x", 2);
      *(v10 + *(*v10 - 24) + 24) = 2;
      v11 = *(*(a1 + 1) + v9);
      std::ostream::operator<<();
      v13 = *(a1 + 1);
      v12 = *(a1 + 2);
      if (v9 != ~v13 + v12)
      {
        sub_100013530(&v18, ", ", 2);
        v13 = *(a1 + 1);
        v12 = *(a1 + 2);
      }

      ++v9;
    }

    while (v9 < v12 - v13);
  }

  sub_100013530(&v18, "]", 1);
  std::stringbuf::str();
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100010E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100010EC4(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_10000D7AC((a1 + 1), 16);
  return a1;
}

void sub_100011008(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_BYTE *sub_100011030@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 0x37)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = (&off_10001CBC8)[(a1 - 1)];
  }

  return sub_1000103C0(a2, v2);
}

uint64_t sub_100011064(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 < 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = 0;
    if (*(a1 + 16) - v3 > a2)
    {
      v4 = *(v3 + a2);
      v2 = 1;
    }
  }

  return v4 | (v2 << 8);
}

BOOL sub_10001109C(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v3;
  if (v4 > a2)
  {
    *(v3 + a2) = a3;
  }

  return v4 > a2;
}

uint64_t sub_1000110D0(unsigned int a1, int a2)
{
  if (a2 == 2)
  {
    if (a1 < 0x21 && ((0x1FFFFFE01uLL >> a1) & 1) != 0)
    {
      return byte_100017BC0[a1];
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid raw value for extended preamble");
  }

  if (a2 != 1 || a1 >= 4)
  {
    goto LABEL_9;
  }

  return (a1 + 9);
}

std::runtime_error *sub_100011180(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  return result;
}

uint64_t sub_1000111B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    if (result <= 10)
    {
      if (result == 9)
      {
        return 0;
      }

      if (result == 10)
      {
        return 1;
      }

      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (result == 11)
      {
        return 2;
      }

      if (result == 12)
      {
        return 3;
      }

      if ((result - 13) >= 0x14)
      {
        goto LABEL_15;
      }
    }

    sub_100013CF8("Preambles not supported in HSI 1.x", a2, a3, a4, a5, a6, a7, a8, v9);
LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid extended preamble");
    goto LABEL_16;
  }

  if (a2 != 2)
  {
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_100011180(exception, "Unknown HSI version");
LABEL_16:
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1000112B8(char a1)
{
  sub_10000CB38(v5);
  v2 = sub_100013530(&v6, "Preamble_", 9);
  v10 = a1;
  sub_100013530(v2, &v10, 1);
  std::stringbuf::str();
  v6 = v3;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_100011474(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result | 2) != 2)
  {
    sub_100013CF8("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid SFD code");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid sfd code");
  }

  return result;
}

_BYTE *sub_100011508@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v2 = "Binary";
  }

  else
  {
    v2 = "Ternary";
  }

  return sub_1000103C0(a2, v2);
}

uint64_t sub_100011528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 0x1B || ((1 << result) & 0xFDB548F) == 0)
  {
    sub_100013CF8("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid session type");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid session type");
  }

  return result;
}

_BYTE *sub_1000115CC@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0x1B)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = (&off_10001CD88)[a1];
  }

  return sub_1000103C0(a2, v2);
}

uint64_t sub_100011614(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 4)
  {
    sub_100013CF8("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid gr superframe format");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid session type");
  }

  return result;
}

_BYTE *sub_1000116A4@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 4)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = (&off_10001CE68)[a1];
  }

  return sub_1000103C0(a2, v2);
}

uint64_t sub_1000116D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 1)
  {
    sub_100013CF8("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid session role");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid session role");
  }

  return result;
}

_BYTE *sub_10001175C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "UNKNOWN";
  if (a1 == 1)
  {
    v2 = "Responder";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "Initiator";
  }

  return sub_1000103C0(a2, v3);
}

uint64_t sub_10001178C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 0x38 || ((1 << result) & 0x149E3C884FAA1F2) == 0)
  {
    sub_100013CF8("Exception: Invalid config parameter ID %d", a2, a3, a4, a5, a6, a7, a8, result);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid config parameter ID");
  }

  return result;
}

double sub_100011838@<D0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0x33 && (a2 - 1) > 0xFFFFFFCC)
  {
    v5[0] = a1;
    v5[1] = a2;
    v7 = 0;
    v6 = 0uLL;
    sub_1000138C0(&v6, v5, &v6, 2);
    result = *&v6;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_1000118CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result - 1) > 2)
  {
    sub_100013CF8("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid range debug level");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid range debug level");
  }

  return result;
}

_BYTE *sub_10001195C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 2)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = (&off_10001CE90)[(a1 - 1)];
  }

  return sub_1000103C0(a2, v2);
}

uint64_t sub_100011990(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result >= 0x62 && result != 16398 && result != 0xFFFF)
  {
    sub_100013EB0("Fault: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Unknown error code");
    return 0xFFFFLL;
  }

  return result;
}

_BYTE *sub_1000119F0@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "SUCCESS";
  switch(a1)
  {
    case 0:
      return sub_1000103C0(a2, v2);
    case 1:
      v2 = "INVALID_CMD_PARAM";
      break;
    case 2:
      v2 = "UNKNOWN_CMD";
      break;
    case 3:
      v2 = "INVALID_CMD_LEN";
      break;
    case 4:
      v2 = "MEMORY_FAILURE";
      break;
    case 5:
      v2 = "INTERNAL";
      break;
    case 6:
      v2 = "BUSY";
      break;
    case 7:
      v2 = "CMD_DISALLOWED";
      break;
    case 8:
      v2 = "SES_MAX_LIMIT_REACHED";
      break;
    case 9:
      v2 = "SES_NOT_FOUND";
      break;
    case 10:
      v2 = "TBD3";
      break;
    case 11:
      v2 = "TBD4";
      break;
    case 12:
      v2 = "SES_TIMEOUT";
      break;
    case 13:
      v2 = "SES_SYNC_TIMEOUT";
      break;
    case 14:
      v2 = "MISSED_RANGING_CYCLE";
      break;
    case 15:
      v2 = "LOCAL_SES_REMOVE_SUCCESS";
      break;
    case 16:
      v2 = "LOCAL_SES_DISABLE_SUCCESS";
      break;
    case 17:
      v2 = "SES_COMPLETED";
      break;
    case 18:
      v2 = "SES_ALREADY_ACTIVE";
      break;
    case 19:
      v2 = "SES_ALREADY_DISABLED";
      break;
    case 20:
      v2 = "SES_SCHEDULING_CONFLICT";
      break;
    case 21:
      v2 = "SES_COEX_CONFLICT";
      break;
    case 22:
      v2 = "SES_WRONG_SYNC";
      break;
    case 23:
      v2 = "START_TIME_ELAPSED";
      break;
    case 24:
      v2 = "SES_UAP_ALREADY_PENDING";
      break;
    case 25:
      v2 = "COEX_UNSUPPORTED";
      break;
    case 26:
      v2 = "INVALID_TX_MINI_SLOT_SIZE";
      break;
    case 27:
      v2 = "INVALID_RX_MINI_SLOT_SIZE";
      break;
    case 28:
      v2 = "INVALID_SES_ROLE";
      break;
    case 29:
      v2 = "INVALID_ANTENNA_CFG";
      break;
    case 30:
      v2 = "INVALID_NACCESS_SLOTS";
      break;
    case 31:
      v2 = "INVALID_PREAMBLE";
      break;
    case 32:
      v2 = "INVALID_FEM_CFG";
      break;
    case 33:
      v2 = "SUPERFRAMES_OVERLAP";
      break;
    case 34:
      v2 = "INVALID_INTERVAL";
      break;
    case 35:
      v2 = "INVALID_PKT_TYPE";
      break;
    case 36:
      v2 = "INVALID_MAC_ADDR";
      break;
    case 37:
      v2 = "MUTE_UNMUTE_DISALLOWED";
      break;
    case 38:
      v2 = "SES_MUTED";
      break;
    case 39:
      v2 = "INVALID_CHANNEL";
      break;
    case 40:
      v2 = "DTM_CMD_UNSUPPORTED";
      break;
    case 41:
      v2 = "DTM_SES_NOT_READY";
      break;
    case 42:
      v2 = "DTM_SES_BUSY";
      break;
    case 43:
      v2 = "DTM_PAYLOAD_INVALID_LEN";
      break;
    case 44:
      v2 = "DTM_INVALID_SES_TO";
      break;
    case 45:
      v2 = "MP_CMD_INTERLEAVED";
      break;
    case 46:
      v2 = "MP_CMD_LEN_OVERFLOW";
      break;
    case 47:
      v2 = "INVALID_SES_TYPE";
      break;
    case 48:
      v2 = "INVALID_ALISHA_UWB_CFG_ID";
      break;
    case 49:
      v2 = "INVALID_ALISHA_RAN_MULTIPLIER";
      break;
    case 50:
      v2 = "INVALID_ALISHA_NRESPONDERS";
      break;
    case 51:
      v2 = "INVALID_ALISHA_NCHAPS_PER_SLOT";
      break;
    case 52:
      v2 = "INVALID_ALISHA_NSLOTS_PER_ROUND";
      break;
    case 53:
      v2 = "INVALID_ALISHA_RBLOCK_CFG";
      break;
    case 54:
      v2 = "ALISHA_UWB_SES_ID_NOT_FOUND";
      break;
    case 55:
      v2 = "ALISHA_UWB_SES_ID_ALREADY_IN_USE";
      break;
    case 56:
      v2 = "ALISHA_KEY_STORE_FULL";
      break;
    case 57:
      v2 = "INVALID_ALISHA_RESPONDER_IDX";
      break;
    case 58:
      v2 = "SES_GRUAP_ALREADY_PENDING";
      break;
    case 59:
      v2 = "INVALID_CHANNEL_HOP_PATTERN";
      break;
    case 60:
      v2 = "INVALID_ACCESS_SLOT_IDX";
      break;
    case 61:
      v2 = "INVALID_GR_TYPE";
      break;
    case 62:
      v2 = "SLOT_TIME_ELAPSED";
      break;
    case 63:
      v2 = "INVALID_ALISHA_PULSE_SHAPE_COMBO";
      break;
    case 64:
      v2 = "INVALID_ALISHA_HOP_MODE";
      break;
    case 65:
      v2 = "INVALID_ALISHA_HOP_SEQUENCE";
      break;
    case 66:
      v2 = "INVALID_SUBRATE";
      break;
    case 67:
      v2 = "SES_NOT_ACTIVE";
      break;
    case 68:
      v2 = "SES_SUBRATE_ALREADY_PENDING";
      break;
    case 69:
      v2 = "SES_SUBRATE_ALREADY_EFFECTIVE";
      break;
    case 70:
      v2 = "UAP_RX_FAILED";
      break;
    case 71:
      v2 = "ALISHA_URSK_RETRIEVAL_FAILED";
      break;
    case 72:
      v2 = "ALISHA_GET_KEY_ALREADY_PENDING";
      break;
    case 73:
      v2 = "ALISHA_STS_INDEX_EXHAUSTED";
      break;
    case 74:
      v2 = "ALISHA_BLOCK_IDX_EXHAUSTED";
      break;
    case 75:
      v2 = "ALISHA_URSK_TTL_EXPIRED";
      break;
    case 76:
      v2 = "INVALID_ALISHA_STS_INDEX_0";
      break;
    case 77:
      v2 = "ALISHA_RESPONSE_TIMEOUT";
      break;
    case 78:
      v2 = "ALISHA_TOTAL_TIMEOUT";
      break;
    case 79:
      v2 = "UNAUTHENTICATED_CAL_BLOB";
      break;
    case 80:
      v2 = "INVALID_SFD";
      break;
    case 81:
      v2 = "INVALID_ALISHA_NSIMRESPONDERS";
      break;
    case 82:
      v2 = "DUPLICATE";
      break;
    case 83:
      v2 = "NMI_NAP_RX_FAILED";
      break;
    case 84:
      v2 = "NMI_NAR_RX_FAILED";
      break;
    case 85:
      v2 = "NMI_SOR_RX_FAILED";
      break;
    case 86:
      v2 = "NMI_NAP_WRONG_SYNC";
      break;
    case 87:
      v2 = "NMI_WRONG_IRK";
      break;
    case 88:
      v2 = "NMI_RNG_DIS_BOTH_SIDES";
      break;
    case 89:
      v2 = "NMI_POLL_RSP_RX_OTHER_FAILURE";
      break;
    case 90:
      v2 = "NMI_DATA_RX_OTHER_FAILURE";
      break;
    case 91:
      v2 = "NMI_POLL_RSP_WRONG_SYNC";
      break;
    case 92:
      v2 = "NMI_DATA_WRONG_SYNC";
      break;
    case 93:
      v2 = "SES_EXCLUSIVE_MAC_DISALLOWED";
      break;
    case 94:
      v2 = "NMI_NAR_WRONG_SYNC";
      break;
    case 95:
      v2 = "NMI_SOR_WRONG_SYNC";
      break;
    case 96:
      v2 = "NMI_INVALID_RTT_TAT";
      break;
    case 97:
      v2 = "NMI_POLL_RSP_MISSED_CYCLE";
      break;
    default:
      v3 = "UNKNOWN";
      if (a1 == 0xFFFF)
      {
        v3 = "UNKNOWN_ERROR";
      }

      if (a1 == 16398)
      {
        v2 = "FACTORY_STOP_TEST";
      }

      else
      {
        v2 = v3;
      }

      break;
  }

  return sub_1000103C0(a2, v2);
}

uint64_t sub_100012074(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result > 6)
  {
    sub_100013CF8("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid Rose hardware version");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid Rose hardware version");
  }

  return result;
}

_BYTE *sub_100012100@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 6)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = (&off_10001CEA8)[a1];
  }

  return sub_1000103C0(a2, v2);
}

uint64_t sub_10001212C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (((result - 208) > 0x2E || ((1 << (result + 48)) & 0x7FFF47FF1FFFLL) == 0) && (result > 0x18 || ((1 << result) & 0x116003F) == 0))
  {
    sub_100013CF8("Exception: %s - 0x%x", a2, a3, a4, a5, a6, a7, a8, "Invalid rx status.");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid rx status.");
  }

  return result;
}

uint64_t sub_1000121F8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v6 = v5 - 2;
      v7 = v3 | 2;
      if (v5 == 1)
      {
        v3 |= 1u;
      }

      if (v6 < 4)
      {
        ++v4;
        v3 = v7;
      }
    }

    while (v1 != v2);
    if ((v4 & 0xFFFFFFFB) != 0)
    {
      sub_10001682C();
    }
  }

  return v3;
}

uint64_t sub_100012260(unsigned int a1)
{
  if (a1 >= 4)
  {
    sub_100016858();
  }

  return a1 & 1;
}

BOOL sub_100012280(unsigned int a1)
{
  if (a1 >= 4)
  {
    sub_100016884();
  }

  return a1 > 1;
}

_BYTE *sub_1000122A4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 4)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = (&off_10001CEE0)[(a1 - 1)];
  }

  return sub_1000103C0(a2, v2);
}

_BYTE *sub_1000122D8@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v2 = "UNKNOWN";
  if (a1 == 9)
  {
    v2 = "CHANNEL9";
  }

  if (a1 == 5)
  {
    v3 = "CHANNEL5";
  }

  else
  {
    v3 = v2;
  }

  return sub_1000103C0(a2, v3);
}

_BYTE *sub_100012308@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 6)
  {
    v2 = "UNKNOWN";
  }

  else
  {
    v2 = (&off_10001CF08)[a1];
  }

  return sub_1000103C0(a2, v2);
}

_BYTE *sub_100012334(_BYTE *result, int a2)
{
  if (a2 == 5)
  {
    v2 = 1;
  }

  else
  {
    if (a2 != 9)
    {
      return result;
    }

    v2 = 2;
  }

  *result |= v2;
  return result;
}

_WORD *sub_100012360(_WORD *result, int a2)
{
  if ((a2 - 1) <= 5)
  {
    *result |= word_100017BE2[(a2 - 1)];
  }

  return result;
}

uint64_t sub_10001238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  switch(a2)
  {
    case 1:
      if (a1)
      {
        if (a1 != 1)
        {
          sub_100013CF8("Exception: %s - %d", a2, a3, a4, a5, a6, a7, a8, "Invalid Rose channel config for HSI V1");
          exception = __cxa_allocate_exception(0x10uLL);
          sub_100011180(exception, "Invalid Rose channel config");
LABEL_12:
        }

        return 9;
      }

      else
      {
        return 5;
      }

    case 2:
      sub_100012488(a1, a2, a3, a4, a5, a6, a7, a8);
      break;
    case 0:
      sub_100013CF8("Exception: %s", a2, a3, a4, a5, a6, a7, a8, "Unknown HSI version");
      exception = __cxa_allocate_exception(0x10uLL);
      sub_100011180(exception, "Unknown HSI version");
      goto LABEL_12;
  }

  return v8;
}

uint64_t sub_100012488(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result != 9 && result != 5)
  {
    sub_100013CF8("Exception: %s - %d", a2, a3, a4, a5, a6, a7, a8, "Invalid Rose channel config for HSI V2");
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Invalid Rose channel config");
  }

  return result;
}

uint64_t sub_100012520(int a1, int a2)
{
  if (a2 == 2)
  {
    if (a1 == 5)
    {
      return 5;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_100011180(exception, "Unknown HSI version");
    }

    return a1 != 5;
  }
}

unint64_t sub_1000125B0(unsigned int a1)
{
  v1 = a1 >> 11;
  if ((v1 - 1) >= 6)
  {
    if (!v1 && (a1 == 9 || a1 == 5))
    {
      v1 = 0;
      v2 = a1 | 0x100u;
    }

    else
    {
      v1 = 0;
      v2 = 0;
    }
  }

  else
  {
    v2 = ((a1 & 0x7FF) << 24) | 0x10000000000;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_10001260C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 << 11;
  v3 = v1 - 1;
  if ((v1 - 1) >= 6)
  {
    if (*a1)
    {
      return v3;
    }

    if (a1[2])
    {
      return (v2 | a1[1]);
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100011180(exception, "Missing channel-select for band");
  }

  if ((a1[6] & 1) == 0)
  {
    goto LABEL_8;
  }

  return (*(a1 + 2) | v2);
}

uint64_t sub_1000126D4(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    v3 = sub_1000125B0(a1);
    v5 = v3 >> 8;
    v6 = v3 >> 16;
    if (v3)
    {
      LOBYTE(v5) = 0;
      LODWORD(v6) = 0;
    }

    if (v4)
    {
      v1 = v5;
    }

    else
    {
      v1 = 0;
    }

    if (v4)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_100012728(unsigned __int8 *a1)
{
  sub_10000CB38(v11);
  v2 = *a1;
  if (v2 > 2)
  {
    if (*a1 > 4u)
    {
      if (v2 == 5)
      {
        v3 = sub_100013530(&v12, "UNI", 3);
        v4 = "I-5d";
      }

      else
      {
        if (v2 != 6)
        {
          goto LABEL_18;
        }

        v3 = sub_100013530(&v12, "UNI", 3);
        v4 = "I-35";
      }
    }

    else if (v2 == 3)
    {
      v3 = sub_100013530(&v12, "UNI", 3);
      v4 = "I-5b";
    }

    else
    {
      if (v2 != 4)
      {
        goto LABEL_18;
      }

      v3 = sub_100013530(&v12, "UNI", 3);
      v4 = "I-5c";
    }

LABEL_16:
    v5 = 4;
    goto LABEL_17;
  }

  if (*a1)
  {
    if (v2 == 1)
    {
      v5 = 3;
      v3 = sub_100013530(&v12, "UNI", 3);
      v4 = "I-3";
      goto LABEL_17;
    }

    if (v2 != 2)
    {
      goto LABEL_18;
    }

    v3 = sub_100013530(&v12, "UNI", 3);
    v4 = "I-5a";
    goto LABEL_16;
  }

  v3 = &v12;
  v4 = "UWB";
  v5 = 3;
LABEL_17:
  sub_100013530(v3, v4, v5);
  v2 = *a1;
LABEL_18:
  if (v2 - 1 < 6)
  {
    if (a1[6])
    {
      sub_100013530(&v12, " Ch", 3);
      if (a1[6])
      {
        v6 = *(a1 + 2);
LABEL_22:
        std::ostream::operator<<();
        goto LABEL_23;
      }

      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (!v2)
  {
    if (a1[2])
    {
      sub_100013530(&v12, " Ch", 3);
      if (a1[2] == 1)
      {
        v9 = a1[1];
        goto LABEL_22;
      }

LABEL_31:
      sub_10000EC44();
    }

LABEL_32:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Missing channel-select for band");
  }

LABEL_23:
  std::stringbuf::str();
  v12 = v7;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100012AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v10);
  sub_10000CDDC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100012B00(int a1)
{
  if (a1)
  {
    return 32 * (a1 == 1);
  }

  else
  {
    return 16;
  }
}

uint64_t sub_100012B1C(int a1)
{
  if (a1 == 32)
  {
    v1 = 1;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 16)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100012B34(uint64_t result, unsigned int a2)
{
  if (a2 >= result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_100012B40(uint64_t result, unsigned int a2)
{
  v2 = 32 * (result == 1);
  if (!result)
  {
    v2 = 16;
  }

  v3 = 32 * (a2 == 1);
  if (!a2)
  {
    v3 = 16;
  }

  if (v2 <= v3)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

BOOL sub_100012B78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

uint64_t sub_100012BE8(unsigned int a1)
{
  v1 = a1 >> 8;
  v2 = __rev16(a1);
  v3 = bswap32(a1) >> 24;
  if (((1 << SBYTE1(a1)) & 0x101F7) == 0)
  {
    v2 = 0;
    v3 = a1 >> 8;
  }

  v4 = v1 > 0x10;
  v5 = v1 <= 0x10 && ((1 << SBYTE1(a1)) & 0x101F7) != 0;
  if (v4)
  {
    v2 = 0;
    LOWORD(v3) = v5;
  }

  return (v2 | (v3 << 8)) | (v5 << 16);
}

uint64_t sub_100012C4C(unsigned __int8 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1)
  {
    if (a1[1] == 1 && v2 == 16)
    {
      v2 = 16;
    }
  }

  else
  {
    v4 = v1 - 1;
    if (v4 >= 0xD)
    {
      v1 = 0;
      v2 = 0;
    }

    else
    {
      v2 = 0;
      v1 = byte_100017BEE[v4];
    }
  }

  return v1 | (v2 << 8);
}

uint64_t sub_100012CA4(unsigned __int8 *a1)
{
  sub_10000CB38(v15);
  v2 = *a1;
  if (v2 <= 4)
  {
    if (*a1 > 1u)
    {
      if (v2 == 2)
      {
        v9 = &v16;
        v10 = "IEEE_";
        v11 = 5;
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_26;
        }

        v9 = &v16;
        v10 = "Proprietary_";
        v11 = 12;
      }

LABEL_18:
      v3 = sub_100013530(v9, v10, v11);
      v4 = "HPRF";
LABEL_22:
      v5 = 4;
      goto LABEL_25;
    }

    v6 = &v16;
    if (*a1)
    {
      v7 = "IEEE_";
      v8 = 5;
    }

    else
    {
      v7 = "Legacy_";
      v8 = 7;
    }

LABEL_21:
    v3 = sub_100013530(v6, v7, v8);
    v4 = "BPRF";
    goto LABEL_22;
  }

  if (*a1 <= 6u)
  {
    if (v2 != 5)
    {
      if (v2 != 6)
      {
        goto LABEL_26;
      }

      v9 = sub_100013530(&v16, "Split", 5);
      v10 = "ND_";
      v11 = 3;
      goto LABEL_18;
    }

    v6 = sub_100013530(&v16, "Split", 5);
    v7 = "ND_";
    v8 = 3;
    goto LABEL_21;
  }

  switch(v2)
  {
    case 7u:
      v3 = &v16;
      break;
    case 8u:
      v3 = sub_100013530(&v16, "Mixed_", 6);
      break;
    case 0x10u:
      v3 = &v16;
      v4 = "NB";
      v5 = 2;
      goto LABEL_25;
    default:
      goto LABEL_26;
  }

  v4 = "MMS";
  v5 = 3;
LABEL_25:
  sub_100013530(v3, v4, v5);
LABEL_26:
  sub_100013530(&v16, " PktIdx ", 8);
  v12 = a1[1];
  std::ostream::operator<<();
  std::stringbuf::str();
  v16 = v13;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100012FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CDDC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100012FD0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  if (a1 <= 19)
  {
    if (a1 > 3)
    {
      if (a1 > 16)
      {
        if (a1 != 17)
        {
          if (a1 == 18)
          {
            v9 = "PHY_FINGER_LOSS";
            goto LABEL_65;
          }

          goto LABEL_68;
        }

        v9 = "PHY_INVALID_CONFIG";
      }

      else
      {
        if (a1 != 4)
        {
          if (a1 == 5)
          {
            v9 = "CRC_ERROR";
            goto LABEL_65;
          }

          goto LABEL_68;
        }

        v9 = "STS_ERROR";
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        v9 = "PHR_ERROR";
      }

      else
      {
        v9 = "SECDED_ERROR";
      }
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v9 = "TIMEOUT";
          goto LABEL_65;
        }

        goto LABEL_68;
      }

      v9 = "SUCCESS";
    }
  }

  else
  {
    switch(a1)
    {
      case 208:
        v9 = "SW_PADDING_VAL_MISMATCH";
        break;
      case 209:
        v9 = "SW_SC_MISMATCH";
        break;
      case 210:
        v9 = "SW_IE_HDR_MISMATCH";
        break;
      case 211:
        v9 = "SW_VENDOR_OUI_MISMATCH";
        break;
      case 212:
        v9 = "SW_HDR_TERM_IE_MISMATCH";
        break;
      case 213:
        v9 = "SW_UWB_SES_ID_MISMATCH";
        break;
      case 214:
        v9 = "SW_STS_INDEX_MISMATCH";
        break;
      case 215:
        v9 = "SW_INVALID_PLD_HDR_CONTENTS";
        break;
      case 216:
        v9 = "SW_INVALID_RDM_CONTENTS";
        break;
      case 217:
        v9 = "SW_ROUND_IDX_MISMATCH";
        break;
      case 218:
        v9 = "SW_INVALID_RCM_CONTENTS";
        break;
      case 219:
        v9 = "SW_INVALID_MRM_CONTENTS";
        break;
      case 220:
        v9 = "SW_INVALID_RRRM_CONTENTS";
        break;
      case 221:
      case 222:
      case 223:
      case 235:
      case 236:
      case 237:
      case 239:
        goto LABEL_68;
      case 224:
        v9 = "SW_SUPERFRAMES_OVERLAP";
        break;
      case 225:
        v9 = "SW_INVALID_SRC_ADDR";
        break;
      case 226:
        v9 = "SW_SKIPPED";
        break;
      case 227:
        v9 = "SW_AOA_UNCERTAIN";
        break;
      case 228:
        v9 = "SW_NEG_SOF_TS_ERROR";
        break;
      case 229:
        v9 = "SW_BUSY";
        break;
      case 230:
        v9 = "INVALID_FEM_CFG";
        break;
      case 231:
        v9 = "DECRYPTION_FAILED";
        break;
      case 232:
        v9 = "INVALID_CHANNEL_HOP_PATTERN";
        break;
      case 233:
        v9 = "INVALID_CHANNEL";
        break;
      case 234:
        v9 = "INVALID_CURRENT_CHANNEL";
        break;
      case 238:
        v9 = "SW_TIME_ELAPSED";
        break;
      case 240:
        v9 = "SW_ABORT";
        break;
      case 241:
        v9 = "SW_STS_MISMATCH";
        break;
      case 242:
        v9 = "SW_VERSION_PREFIX_MISMATCH";
        break;
      case 243:
        v9 = "SW_FC_MISMATCH";
        break;
      case 244:
        v9 = "SW_SEQN_MISMATCH";
        break;
      case 245:
        v9 = "SW_WRONG_SYNC";
        break;
      case 246:
        v9 = "SW_PDU_LEN_MISMATCH";
        break;
      case 247:
        v9 = "SW_PDU_ID_MISMATCH";
        break;
      case 248:
        v9 = "SW_UNSUPPORTED_VERSION";
        break;
      case 249:
        v9 = "SW_UAP_OFFSET_ELAPSED";
        break;
      case 250:
        v9 = "SW_INVALID_TX_MSLOT_SZ";
        break;
      case 251:
        v9 = "SW_INVALID_RX_MSLOT_SZ";
        break;
      case 252:
        v9 = "SW_INVALID_NACCESS_SLOTS";
        break;
      case 253:
        v9 = "SW_INVALID_INTERVAL";
        break;
      case 254:
        v9 = "SW_INVALID_PREAMBLE";
        break;
      default:
        if (a1 != 20)
        {
          if (a1 == 24)
          {
            v9 = "PHY_SECDED_FAILURE";
            break;
          }

LABEL_68:
          sub_100013CF8("Exception: %s - 0x%hhx", a2, a3, a4, a5, a6, a7, a8, "Invalid rx status.");
          exception = __cxa_allocate_exception(0x10uLL);
          sub_100011180(exception, "Invalid rx status.");
        }

        v9 = "PHY_SFD_FAILURE";
        break;
    }
  }

LABEL_65:

  return sub_1000103C0(a9, v9);
}

uint64_t sub_100013414(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *sub_100013530(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1000136D8(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100013670(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100013650);
}

uint64_t sub_1000136D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001990();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1000138A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000138C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100013934(result, a4);
  }

  return result;
}

void sub_100013918(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013934(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1000041E4();
}

void sub_100013984(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100013A68();
  sub_100013AA0(v10);
  sub_1000103C0(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100013B0C();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100013B44(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100013A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100013A68()
{
  if ((atomic_load_explicit(&qword_100020448, memory_order_acquire) & 1) == 0)
  {
    sub_1000168B0();
  }

  return &qword_100020400;
}

void sub_100013AA0(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

uint64_t *sub_100013B0C()
{
  if ((atomic_load_explicit(&qword_100020490, memory_order_acquire) & 1) == 0)
  {
    sub_10001695C();
  }

  return &qword_100020450;
}

void sub_100013B44(std::mutex *a1, const char *a2, va_list a3)
{
  std::mutex::lock(a1);
  vprintf(a2, a3);
  fflush(__stdoutp);

  std::mutex::unlock(a1);
}

void sub_100013BA8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100013A68();
  sub_100013C8C(v10);
  sub_1000103C0(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100013B0C();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100013B44(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100013C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013C8C(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

void sub_100013CF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100013A68();
  sub_100013DDC(v10);
  sub_1000103C0(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100013B0C();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100013E48(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100013DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013DDC(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

void sub_100013E48(std::mutex *a1, const char *a2, va_list a3)
{
  std::mutex::lock(a1);
  vfprintf(__stderrp, a2, a3);
  fflush(__stderrp);

  std::mutex::unlock(a1);
}

void sub_100013EB0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100013A68();
  sub_100013F94(v10);
  sub_1000103C0(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100013B0C();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100013E48(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100013F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100013F94(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

uint64_t sub_100014004(uint64_t a1)
{
  os_release(*a1);
  std::mutex::~mutex((a1 + 8));
  return a1;
}

uint64_t sub_100014040()
{
  if (qword_100020578 != -1)
  {
    sub_1000169E4();
  }

  return dword_100020498;
}

void sub_100014078(id a1)
{
  if (MGGetBoolAnswer())
  {
    v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 10000000000;
    while (1)
    {
      v9 = MGCopyAnswer();
      if (v9)
      {
        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 != CFNumberGetTypeID())
        {
          v28 = "ChipID has unexpected type";
LABEL_22:
          sub_100013CF8(v28, v12, v13, v14, v15, v16, v17, v18, v29);
          CFRelease(v10);
          return;
        }

        valuePtr = 0;
        if (!CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr))
        {
          v28 = "Failed to extract ChipID as a number";
          goto LABEL_22;
        }

        if (valuePtr == 8198)
        {
          v19 = 0;
          v20 = "Chip type 1";
        }

        else
        {
          if (valuePtr != 8228)
          {
            v29 = valuePtr;
            v28 = "Unrecognized ChipID 0x%x";
            goto LABEL_22;
          }

          v19 = 1;
          v20 = "Chip type 2";
        }

        dword_100020498 = v19;
        sub_100013BA8(v20, v12, v13, v14, v15, v16, v17, v18, v29);
        CFRelease(v10);
      }

      else
      {
        __ns.__rep_ = 100000000;
        std::this_thread::sleep_for (&__ns);
      }

      if (dword_100020498 != 2)
      {
        return;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8.__d_.__rep_)
      {
        if (dword_100020498 == 2)
        {
          sub_100013CF8("Timed out attempting to get ChipID", v21.__d_.__rep_, v22.__d_.__rep_, v23.__d_.__rep_, v24.__d_.__rep_, v25.__d_.__rep_, v26.__d_.__rep_, v27.__d_.__rep_, v29);
        }

        return;
      }
    }
  }

  sub_100013BA8("UWB not supported", v1, v2, v3, v4, v5, v6, v7, v33);
}

uint64_t sub_100014230()
{
  qword_1000205A8 = os_log_create("com.apple.nearbyd", "general");

  return _objc_release_x1();
}

uint64_t sub_100014274(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 213) = 0;
  *(a1 + 216) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 999;
  *(a1 + 584) = 850045863;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 648) = 850045863;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 736) = 0;
  sub_10001434C(a1);
  v2 = sub_100014040();
  *(a1 + 744) = v2;
  if (v2 <= 2)
  {
    *(a1 + 748) = dword_100017BFC[v2];
  }

  return a1;
}

void sub_100014318(_Unwind_Exception *a1)
{
  sub_1000017EC(v1 + 712);
  std::mutex::~mutex((v1 + 648));
  std::mutex::~mutex((v1 + 584));
  sub_1000158A4(v2);
  sub_10001595C(v1);
  _Unwind_Resume(a1);
}

void sub_10001434C(uint64_t a1)
{
  v2 = MGGetProductType();
  if (v2 > 2390434177)
  {
    if (v2 <= 3564012491)
    {
      if (v2 > 2941181570)
      {
        if (v2 <= 3001488777)
        {
          switch(v2)
          {
            case 2941181571:
              v10 = 18;
              goto LABEL_143;
            case 2943112657:
              v10 = 100;
              goto LABEL_143;
            case 2979575960:
              v10 = 106;
              goto LABEL_143;
          }
        }

        else if (v2 > 3143587591)
        {
          if (v2 == 3143587592)
          {
            v10 = 118;
            goto LABEL_143;
          }

          if (v2 == 3348380076)
          {
            v10 = 200;
            goto LABEL_143;
          }
        }

        else
        {
          if (v2 == 3001488778)
          {
            v10 = 5;
            goto LABEL_143;
          }

          if (v2 == 3048527336)
          {
            v10 = 24;
            goto LABEL_143;
          }
        }
      }

      else if (v2 <= 2722529671)
      {
        switch(v2)
        {
          case 2390434178:
            v10 = 126;
            goto LABEL_143;
          case 2625074843:
            v10 = 114;
            goto LABEL_143;
          case 2688879999:
            v10 = 14;
            goto LABEL_143;
        }
      }

      else if (v2 > 2795618602)
      {
        if (v2 == 2795618603)
        {
          v10 = 21;
          goto LABEL_143;
        }

        if (v2 == 2940697645)
        {
          v10 = 13;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 2722529672)
        {
          v10 = 2;
          goto LABEL_143;
        }

        if (v2 == 2793418701)
        {
          v10 = 15;
          goto LABEL_143;
        }
      }
    }

    else if (v2 <= 3819635029)
    {
      if (v2 <= 3591055298)
      {
        switch(v2)
        {
          case 3564012492:
            v10 = 122;
            goto LABEL_143;
          case 3571532206:
            v10 = 102;
            goto LABEL_143;
          case 3585085679:
            v10 = 8;
            goto LABEL_143;
        }
      }

      else if (v2 > 3742999857)
      {
        if (v2 == 3742999858)
        {
          v10 = 110;
          goto LABEL_143;
        }

        if (v2 == 3767261006)
        {
          v10 = 104;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 3591055299)
        {
          v10 = 25;
          goto LABEL_143;
        }

        if (v2 == 3663011141)
        {
          v10 = 109;
          goto LABEL_143;
        }
      }
    }

    else if (v2 > 3885279869)
    {
      if (v2 > 4068102501)
      {
        if (v2 == 4068102502)
        {
          v10 = 120;
          goto LABEL_143;
        }

        if (v2 == 4201643249)
        {
          v10 = 6;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 3885279870)
        {
          v10 = 3;
          goto LABEL_143;
        }

        if (v2 == 4018315120)
        {
          v10 = 123;
          goto LABEL_143;
        }
      }
    }

    else if (v2 > 3839750254)
    {
      if (v2 == 3839750255)
      {
        v10 = 117;
        goto LABEL_143;
      }

      if (v2 == 3867318491)
      {
        v10 = 113;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 3819635030)
      {
        v10 = 112;
        goto LABEL_143;
      }

      if (v2 == 3825599860)
      {
        v10 = 16;
        goto LABEL_143;
      }
    }

LABEL_142:
    v10 = 997;
    goto LABEL_143;
  }

  if (v2 <= 1371389548)
  {
    if (v2 > 749116820)
    {
      if (v2 <= 877582974)
      {
        switch(v2)
        {
          case 749116821:
            v10 = 119;
            goto LABEL_143;
          case 851437781:
            v10 = 19;
            goto LABEL_143;
          case 861924853:
            v10 = 125;
            goto LABEL_143;
        }
      }

      else if (v2 > 1169082143)
      {
        if (v2 == 1169082144)
        {
          v10 = 4;
          goto LABEL_143;
        }

        if (v2 == 1280909812)
        {
          v10 = 105;
          goto LABEL_143;
        }
      }

      else
      {
        if (v2 == 877582975)
        {
          v10 = 23;
          goto LABEL_143;
        }

        if (v2 == 1060988941)
        {
          v10 = 7;
          goto LABEL_143;
        }
      }
    }

    else if (v2 <= 347088859)
    {
      switch(v2)
      {
        case -1:
          v10 = 999;
          goto LABEL_143;
        case 133314240:
          v10 = 17;
          goto LABEL_143;
        case 330877086:
          v10 = 22;
          goto LABEL_143;
      }
    }

    else if (v2 > 574536382)
    {
      if (v2 == 574536383)
      {
        v10 = 20;
        goto LABEL_143;
      }

      if (v2 == 689804742)
      {
        v10 = 9;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 347088860)
      {
        v10 = 124;
        goto LABEL_143;
      }

      if (v2 == 425046865)
      {
        v10 = 108;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 <= 1781728946)
  {
    if (v2 <= 1540760352)
    {
      switch(v2)
      {
        case 1371389549:
          v10 = 1;
          goto LABEL_143;
        case 1408738134:
          v10 = 103;
          goto LABEL_143;
        case 1434404433:
          v10 = 11;
          goto LABEL_143;
      }
    }

    else if (v2 > 1602181455)
    {
      if (v2 == 1602181456)
      {
        v10 = 107;
        goto LABEL_143;
      }

      if (v2 == 1770142589)
      {
        v10 = 116;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 1540760353)
      {
        v10 = 201;
        goto LABEL_143;
      }

      if (v2 == 1554479185)
      {
        v10 = 121;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 > 2084894488)
  {
    if (v2 > 2132302343)
    {
      if (v2 == 2132302344)
      {
        v10 = 101;
        goto LABEL_143;
      }

      if (v2 == 2309863438)
      {
        v10 = 10;
        goto LABEL_143;
      }
    }

    else
    {
      if (v2 == 2084894489)
      {
        v10 = 115;
        goto LABEL_143;
      }

      if (v2 == 2085054105)
      {
        v10 = 111;
        goto LABEL_143;
      }
    }

    goto LABEL_142;
  }

  if (v2 > 2021146988)
  {
    if (v2 == 2021146989)
    {
      v10 = 12;
      goto LABEL_143;
    }

    if (v2 == 2080700391)
    {
      v10 = 0;
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  if (v2 == 1781728947)
  {
    v10 = 26;
    goto LABEL_143;
  }

  if (v2 != 1872992317)
  {
    goto LABEL_142;
  }

  v10 = 27;
LABEL_143:
  *(a1 + 576) = v10;
  sub_100013BA8("RoseParameterCache: device type %d", v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100014A88(uint64_t a1)
{
  result = sub_100014040();
  *(a1 + 744) = result;
  if (result <= 2)
  {
    *(a1 + 748) = dword_100017BFC[result];
  }

  return result;
}

void sub_100014ACC(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 648));
  sub_100014B40(a1, a2);
  sub_100013BA8("RoseParameterCache::cacheHelloResponse", v4, v5, v6, v7, v8, v9, v10, v18);
  sub_100014C1C(a1, v11, v12, v13, v14, v15, v16, v17);

  std::mutex::unlock((a1 + 648));
}

void **sub_100014B40(void **__dst, __int128 *a2)
{
  if (*(__dst + 112) == 1)
  {
    if (*(__dst + 96) == 1)
    {
      if (*(__dst + 95) < 0)
      {
        operator delete(__dst[9]);
      }

      if (*(__dst + 63) < 0)
      {
        operator delete(__dst[5]);
      }
    }

    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 112) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100001A6C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = *(a2 + 6);
  sub_1000159C8((__dst + 4), a2 + 8);
  __dst[13] = *(a2 + 13);
  *(__dst + 112) = 1;
  return __dst;
}

void sub_100014C00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100014C1C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[112])
  {
    v9 = "cached";
  }

  else
  {
    v9 = "not cached";
  }

  sub_100013BA8("RoseParameterCache: HelloResponse %s", a2, a3, a4, a5, a6, a7, a8, v9);
  if (a1[213])
  {
    v17 = "cached";
  }

  else
  {
    v17 = "not cached";
  }

  sub_100013BA8("RoseParameterCache: AlishaCapabilities %s", v10, v11, v12, v13, v14, v15, v16, v17);
  if (a1[568])
  {
    v25 = "cached";
  }

  else
  {
    v25 = "not cached";
  }

  sub_100013BA8("RoseParameterCache: RoseCalFileParser %s", v18, v19, v20, v21, v22, v23, v24, v25);
  if (a1[568] == 1)
  {
    v26 = sub_1000103C0(__p, "AOAtoPDOAMapping_CV_Ch5");
    sub_1000152F0(v26, (a1 + 280), __p, v27, v28, v29, v30, v31);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
      goto LABEL_23;
    }

    v32 = sub_1000103C0(__p, "AOAtoPDOAMapping_CH_Ch5");
    sub_1000152F0(v32, (a1 + 344), __p, v33, v34, v35, v36, v37);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
      goto LABEL_23;
    }

    v38 = sub_1000103C0(__p, "AOAtoPDOAMapping_CV_Ch9");
    sub_1000152F0(v38, (a1 + 408), __p, v39, v40, v41, v42, v43);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    if ((a1[568] & 1) == 0)
    {
LABEL_23:
      sub_10000EC44();
    }

    v44 = sub_1000103C0(__p, "AOAtoPDOAMapping_CH_Ch9");
    sub_1000152F0(v44, (a1 + 472), __p, v45, v46, v47, v48, v49);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100014D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100014DB0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 213) == 1)
  {
    *(a1 + 213) = 0;
  }

  v9 = *a2;
  *(a1 + 136) = a2[1];
  *(a1 + 120) = v9;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  *(a1 + 197) = *(a2 + 77);
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 213) = 1;
  sub_100013BA8("RoseParameterCache::cacheAlishaCapabilities", a2, a3, a4, a5, a6, a7, a8, v20);

  sub_100014C1C(a1, v13, v14, v15, v16, v17, v18, v19);
}

void sub_100014E30(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 568) == 1)
  {

    sub_100013BA8("RoseParameterCache::cacheRoseCalFileParser: returning because roseCalFileParser is already cached", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    sub_100014F08(a1 + 216, a2);
    sub_100013BA8("RoseParameterCache::cacheRoseCalFileParser", v10, v11, v12, v13, v14, v15, v16, v32);
    sub_100014C1C(a1, v17, v18, v19, v20, v21, v22, v23);
    std::mutex::lock((a1 + 584));
    if (*(a1 + 736))
    {
      sub_100013BA8("RoseParameterCache::cacheRoseCalFileParser: start executing CalFileParsingDone callback function", v24, v25, v26, v27, v28, v29, v30, v33);
      v31 = *(a1 + 568) == 1 && sub_10000E850((a1 + 272));
      sub_100014F88(a1 + 712, v31);
    }

    std::mutex::unlock((a1 + 584));
  }
}

uint64_t sub_100014F08(uint64_t a1, __int128 *a2)
{
  sub_100015464(a1);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  sub_100015AAC(a1 + 56, a2 + 56);
  *(a1 + 320) = *(a2 + 160);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = a2[21];
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  *(a1 + 352) = 1;
  return a1;
}

uint64_t sub_100014F88(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100015BE8();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_100014FDC(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_100020588, memory_order_acquire) & 1) == 0)
  {
    sub_1000169F8();
  }

  if (qword_100020580 != -1)
  {
    sub_100016A70();
  }

  if (byte_1000205A7 < 0)
  {
    v2 = xmmword_100020590;

    sub_100001A6C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_100020590;
    *(a1 + 16) = unk_1000205A0;
  }
}

void sub_10001507C(id a1)
{
  v25 = 1;
  v8 = container_system_group_path_for_identifier();
  if (!v8)
  {
    sub_100016A84(&v25, v1, v2, v3, v4, v5, v6, v7);
  }

  sub_1000103C0(&v24, v8);
  sub_1000103C0(__p, "/Library/");
  if ((v23 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v10 = v23;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v24, v9, v10);
  v19 = v11->__r_.__value_.__r.__words[0];
  v26[0] = v11->__r_.__value_.__l.__size_;
  *(v26 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
  v20 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (byte_1000205A7 < 0)
  {
    operator delete(xmmword_100020590);
  }

  *&xmmword_100020590 = v19;
  *(&xmmword_100020590 + 1) = v26[0];
  *(&xmmword_100020590 + 15) = *(v26 + 7);
  byte_1000205A7 = v20;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (byte_1000205A7 >= 0)
  {
    v21 = &xmmword_100020590;
  }

  else
  {
    v21 = xmmword_100020590;
  }

  sub_100013BA8("system group container path: %s", v12, v13, v14, v15, v16, v17, v18, v21);
  free(v8);
}

void sub_1000151DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100015218(char *a1@<X1>, std::string *a2@<X8>)
{
  sub_100014FDC(&v9);
  sub_1000103C0(__p, a1);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1000152BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1000152F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (*(a2 + 56) == 1)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    sub_100013BA8("RoseParameterCache: mapping %s cached (%zu x %zu)", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  else
  {
    sub_100013BA8("RoseParameterCache: mapping %s not cached", a2, a3, a4, a5, a6, a7, a8, v8);
  }
}

void sub_100015350(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 584));
  sub_100013BA8("RoseParameterCache: CalFileParsingDone callback function is registered", v4, v5, v6, v7, v8, v9, v10, v11);
  sub_1000153BC((a1 + 712), a2);

  std::mutex::unlock((a1 + 584));
}

void *sub_1000153BC(void *a1, uint64_t a2)
{
  sub_100015C34(v4, a2);
  sub_100015CCC(v4, a1);
  sub_1000017EC(v4);
  return a1;
}

void sub_100015430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100015464(a1 + 216);

  sub_100013BA8("RoseParameterCache::deleteRoseCalFileParser", v9, v10, v11, v12, v13, v14, v15, a9);
}

void sub_100015464(uint64_t a1)
{
  if (*(a1 + 352) == 1)
  {
    v8[3] = v1;
    v8[4] = v2;
    v8[0] = (a1 + 328);
    sub_100001880(v8);
    if (*(a1 + 312) == 1)
    {
      v4 = *(a1 + 288);
      if (v4)
      {
        *(a1 + 296) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 248) == 1)
    {
      v5 = *(a1 + 224);
      if (v5)
      {
        *(a1 + 232) = v5;
        operator delete(v5);
      }
    }

    if (*(a1 + 184) == 1)
    {
      v6 = *(a1 + 160);
      if (v6)
      {
        *(a1 + 168) = v6;
        operator delete(v6);
      }
    }

    if (*(a1 + 120) == 1)
    {
      v7 = *(a1 + 96);
      if (v7)
      {
        *(a1 + 104) = v7;
        operator delete(v7);
      }
    }

    *(a1 + 352) = 0;
  }
}

uint64_t sub_100015520(uint64_t a1)
{
  std::mutex::lock((a1 + 648));
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 26) & 0xFF00;
    v3 = *(a1 + 26);
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  std::mutex::unlock((a1 + 648));
  return v3 | v4 | v2;
}

uint64_t sub_10001559C(uint64_t a1)
{
  v1 = *(a1 + 744);
  if (v1 == 1)
  {
    return 0;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Chip type error");
  }

  return 1;
}

uint64_t sub_10001562C(uint64_t a1)
{
  v1 = *(a1 + 744);
  if (v1 == 1)
  {
    return 0;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Chip type error");
  }

  return 1;
}

uint64_t sub_1000156CC(uint64_t a1)
{
  result = sub_10000D0C4(*(a1 + 576));
  if (result)
  {
    v3 = sub_100015520(a1);
    return (v3 & 0x10000) != 0 && v3 == 6;
  }

  return result;
}

BOOL sub_10001572C(uint64_t a1)
{
  result = sub_10000D144(*(a1 + 576));
  if (result)
  {
    v3 = sub_100015520(a1);
    return (v3 & 0x10000) != 0 && v3 == 6;
  }

  return result;
}

uint64_t sub_10001577C(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    return sub_10000D288(*(a1 + 576));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000157B4(uint64_t a1)
{
  v2 = *(a1 + 744);
  if (v2 == 1)
  {
    if (sub_10000D144(*(a1 + 576)))
    {
      return 1;
    }

    else
    {
      v5 = *(a1 + 576);

      return sub_10000D17C(v5);
    }
  }

  else if (v2)
  {
    return 0;
  }

  else
  {
    v3 = *(a1 + 576);

    return sub_10000D144(v3);
  }
}

uint64_t sub_100015864(uint64_t a1)
{
  v1 = sub_100015520(a1);
  if (v1 - 5 >= 2)
  {
    v2 = 39;
  }

  else
  {
    v2 = 54;
  }

  return v2 & (v1 << 15 >> 31) | ((v1 & 0x10000u) >> 8);
}

uint64_t sub_1000158A4(uint64_t a1)
{
  if (*(a1 + 352) == 1)
  {
    v7 = (a1 + 328);
    sub_100001880(&v7);
    if (*(a1 + 312) == 1)
    {
      v2 = *(a1 + 288);
      if (v2)
      {
        *(a1 + 296) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 248) == 1)
    {
      v3 = *(a1 + 224);
      if (v3)
      {
        *(a1 + 232) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 184) == 1)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        *(a1 + 168) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 120) == 1)
    {
      v5 = *(a1 + 96);
      if (v5)
      {
        *(a1 + 104) = v5;
        operator delete(v5);
      }
    }
  }

  return a1;
}

uint64_t sub_10001595C(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 96) == 1)
    {
      if (*(a1 + 95) < 0)
      {
        operator delete(*(a1 + 72));
      }

      if (*(a1 + 63) < 0)
      {
        operator delete(*(a1 + 40));
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_1000159C8(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v4 = *a2;
    *(a1 + 4) = *(a2 + 2);
    *a1 = v4;
    if (*(a2 + 31) < 0)
    {
      sub_100001A6C((a1 + 8), *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v5 = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 8) = v5;
    }

    *(a1 + 32) = *(a2 + 4);
    if (*(a2 + 63) < 0)
    {
      sub_100001A6C((a1 + 40), *(a2 + 5), *(a2 + 6));
    }

    else
    {
      v6 = *(a2 + 10);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 40) = v6;
    }

    *(a1 + 64) = 1;
  }

  return a1;
}

void sub_100015A74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  if (*(v1 + 64) == 1)
  {
    sub_100010038(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100015AAC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    v2 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    result = *(a2 + 40);
    *(a1 + 40) = result;
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  *(a1 + 72) = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v4 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v4;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    result = *(a2 + 104);
    *(a1 + 104) = result;
    *(a1 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    v5 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v5;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0;
    result = *(a2 + 168);
    *(a1 + 168) = result;
    *(a1 + 184) = *(a2 + 184);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a1 + 192) = 1;
  }

  *(a1 + 200) = 0;
  *(a1 + 256) = 0;
  if (*(a2 + 256) == 1)
  {
    v6 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v6;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 232) = 0;
    result = *(a2 + 232);
    *(a1 + 232) = result;
    *(a1 + 248) = *(a2 + 248);
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a1 + 256) = 1;
  }

  return result;
}

void sub_100015BE8()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_100015C34(uint64_t a1, uint64_t a2)
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

void *sub_100015CCC(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100015F24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000186C(a1);
}

void sub_10001610C(char *a1, uint64_t *a2)
{
  sub_100010AA0(a1, a2, __stack_chk_guard);
  sub_100010A88();
  sub_100010A60();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100016190(char *a1, uint64_t *a2)
{
  sub_100010AA0(a1, a2, __stack_chk_guard);
  sub_100010A88();
  sub_100010A60();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000162D8(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100010A94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100016350(unsigned __int16 *a1)
{
  v6 = *a1;
  sub_100010A94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000163C8(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100010A94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100016480(char *a1, uint64_t *a2)
{
  sub_100010A70(a1, a2, __stack_chk_guard);
  sub_100010A88();
  sub_100010A60();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000164F0(char *a1, uint64_t *a2)
{
  sub_100010A70(a1, a2, __stack_chk_guard);
  sub_100010A88();
  sub_100010A60();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100016560(char *a1, uint64_t *a2)
{
  sub_100010A70(a1, a2, __stack_chk_guard);
  sub_100010A88();
  sub_100010A60();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000165D0(uint64_t *a1)
{
  sub_100010A48(a1, __stack_chk_guard);
  if (*(v1 + 23) < 0)
  {
    v2 = *v1;
  }

  sub_100010A88();
  sub_100010A60();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10001665C(uint64_t *a1)
{
  sub_100010A48(a1, __stack_chk_guard);
  sub_100010A88();
  sub_100010A94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000166CC(uint64_t *a1)
{
  sub_100010A48(a1, __stack_chk_guard);
  sub_100010A88();
  sub_100010A94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10001673C(uint64_t *a1)
{
  sub_100010A48(a1, __stack_chk_guard);
  sub_100010A88();
  sub_100010A94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000168B0()
{
  if (__cxa_guard_acquire(&qword_100020448))
  {
    qword_100020408 = 850045863;
    xmmword_100020410 = 0u;
    unk_100020420 = 0u;
    xmmword_100020430 = 0u;
    qword_100020440 = 0;
    qword_100020400 = os_log_create("com.apple.librose", "client");
    __cxa_atexit(sub_100014000, &qword_100020400, &_mh_execute_header);

    __cxa_guard_release(&qword_100020448);
  }
}

void sub_10001695C()
{
  if (__cxa_guard_acquire(&qword_100020490))
  {
    qword_100020450 = 850045863;
    unk_100020458 = 0u;
    unk_100020468 = 0u;
    unk_100020478 = 0u;
    qword_100020488 = 0;
    __cxa_atexit(std::mutex::~mutex, &qword_100020450, &_mh_execute_header);

    __cxa_guard_release(&qword_100020490);
  }
}

void sub_1000169F8()
{
  if (__cxa_guard_acquire(&qword_100020588))
  {
    unk_1000205A0 = 0;
    xmmword_100020590 = 0uLL;
    __cxa_atexit(&std::string::~string, &xmmword_100020590, &_mh_execute_header);

    __cxa_guard_release(&qword_100020588);
  }
}

void sub_100016A84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100013BA8("error getting system group container: %llu", a2, a3, a4, a5, a6, a7, a8, *a1);
  v9 = *a1;
  abort_report_np();
  CFAbsoluteTimeGetCurrent();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return std::logic_error::logic_error(this, a2);
}

{
  return std::logic_error::logic_error(this, a2);
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
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

void operator new()
{
    ;
  }
}