void sub_100001004(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001060(exception, a1);
}

std::logic_error *sub_100001060(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

const void **sub_100001094(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1000010C8(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

uint64_t sub_100001228(uint64_t a1)
{
  std::ostream::sentry::sentry();
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100001374(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100001354);
}

uint64_t sub_1000013DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001210();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_1000015B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1000015D0(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void (__cdecl ***sub_100001644(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1000017DC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100001820(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

uint64_t sub_1000018B8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_83:
    if ((atomic_load_explicit(&qword_100034668, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034668))
    {
      qword_100034670 = 0;
      qword_100034678 = 0;
      __cxa_guard_release(&qword_100034668);
    }

    if (qword_100034660 == -1)
    {
      v40 = qword_100034678;
      if (!os_log_type_enabled(qword_100034678, OS_LOG_TYPE_ERROR))
      {
LABEL_86:
        v41 = 0;
        return v41 & 1;
      }
    }

    else
    {
      dispatch_once(&qword_100034660, &stru_100030910);
      v40 = qword_100034678;
      if (!os_log_type_enabled(qword_100034678, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_86;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v43 = __error();
    v44 = strerror(*v43);
    v54.st_dev = 136315394;
    *&v54.st_mode = a1;
    WORD2(v54.st_ino) = 2080;
    *(&v54.st_ino + 6) = v44;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v54, 0x16u);
    goto LABEL_86;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_83;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v45 = a3;
    v46 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001210();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v16 = 25;
        }

        else
        {
          v16 = (v11 | 7) + 1;
        }

        v13 = operator new(v16);
        *&__dst[8] = v12;
        *&__dst[16] = v16 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          v15 = __dst[23];
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      v15 = __dst[23];
      if ((__dst[23] & 0x80000000) == 0)
      {
LABEL_9:
        if (v15 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_78;
          }
        }

        else if (v15 == 2 && *__dst == 11822)
        {
          goto LABEL_78;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_78;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_78;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_56;
      }

      v17 = v8;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v54.st_blksize = v19;
      *v54.st_qspare = v19;
      v54.st_birthtimespec = v19;
      *&v54.st_size = v19;
      v54.st_mtimespec = v19;
      v54.st_ctimespec = v19;
      *&v54.st_uid = v19;
      v54.st_atimespec = v19;
      *&v54.st_dev = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001210();
      }

      if (v23 < 0x17)
      {
        memset(&v48, 0, sizeof(v48));
        v25 = &v48;
        *(&v48.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v48.__r_.__value_.__l.__size_ = v22 + 1;
        v48.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v48.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
LABEL_40:
      *&v25[v22] = 47;
      if (v14 >= 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if (v14 >= 0)
      {
        v29 = v15;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v48, v28, v29);
      a4 = v18;
      v31 = *&v30->__r_.__value_.__l.__data_;
      v51[0] = *(&v30->__r_.__value_.__l + 2);
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v51[0] >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      lstat(v32, &v54);
      v8 = v17;
      if (SHIBYTE(v51[0]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v54.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_78;
        }
      }

      else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v48.__r_.__value_.__l.__data_);
      if ((v54.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        v15 = __dst[23];
LABEL_56:
        if ((v15 & 0x80u) == 0)
        {
          v33 = __dst;
        }

        else
        {
          v33 = *__dst;
        }

        if ((v15 & 0x80u) == 0)
        {
          v34 = v15;
        }

        else
        {
          v34 = *&__dst[8];
        }

        *&v35 = 0xAAAAAAAAAAAAAAAALL;
        *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v52 = v35;
        v51[6] = 0xAAAAAAAAAAAAAA00;
        v51[3] = 0xAAAAAAAAAAAAAAAALL;
        v51[4] = 0;
        v51[5] = 0;
        v51[7] = 0;
        v51[8] = 0;
        LOBYTE(v52) = 0;
        BYTE8(v52) = 0;
        v53 = 0;
        *__p = 0u;
        memset(v51, 0, 24);
        *&v54.st_birthtimespec.tv_nsec = v35;
        v54.st_ctimespec.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v54.st_atimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        memset(&v54.st_mtimespec, 0, 17);
        memset(&v54.st_ctimespec.tv_nsec, 0, 17);
        LOBYTE(v54.st_size) = 0;
        v54.st_blocks = 0;
        memset(&v54, 0, 40);
        v36 = sub_10000C4AC(a2, v33, &v33[v34], &v54, 4160);
        sub_10000C7B8(__p, v33, &v33[v34], &v54.st_dev, 0);
        if (*&v54.st_dev)
        {
          v54.st_ino = *&v54.st_dev;
          operator delete(*&v54.st_dev);
        }

        if (v36 && (v52 & 1) != 0)
        {
          v36 = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v36)
        {
          v37 = *(v45 + 8);
          if (v37 >= *(v45 + 16))
          {
            v39 = sub_10000224C(v45, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              sub_1000020AC(*(v45 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v38 = *__dst;
              *(v37 + 16) = *&__dst[16];
              *v37 = v38;
            }

            v39 = (v37 + 24);
            *(v45 + 8) = v37 + 24;
          }

          *(v45 + 8) = v39;
          v46 = 1;
        }
      }

LABEL_78:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_88;
      }
    }
  }

  v46 = 0;
LABEL_88:
  closedir(v8);
  v41 = v46;
  return v41 & 1;
}

void sub_100001E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  *(v43 + 8) = v44;
  if (a24 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100001F10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::istream::tellg();
  v3 = v8;
  if (v8 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v3-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v5 = std::locale::use_facet(v7, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(v7);
  return sub_10001295C(a1);
}

void sub_100002050(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002078()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_1000020AC(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100001210();
    }

    v6 = a1;
    v7 = a2;
    if ((a3 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a3 | 7) + 1;
    }

    a1 = operator new(v8);
    v6[1] = a3;
    v6[2] = v8 | 0x8000000000000000;
    *v6 = a1;
    a2 = v7;
    v4 = a3 + 1;
  }

  else
  {
    a1[23] = a3;
    v4 = a3 + 1;
  }

  return memmove(a1, a2, v4);
}

void sub_100002170(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000021CC(exception, a1);
}

std::logic_error *sub_1000021CC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100002200(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

char *sub_10000224C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000023A0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100002078();
    }

    v8 = operator new(24 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * (v3 >> 3)];
  v16 = v9;
  v10 = &v8[24 * v7];
  v17 = v9;
  if (*(a2 + 23) < 0)
  {
    sub_1000020AC(v9, *a2, *(a2 + 8));
    v9 = v16;
    v11 = v17;
    v2 = *a1;
    v3 = *(a1 + 8) - *a1;
  }

  else
  {
    *v9 = *a2;
    *(v9 + 2) = *(a2 + 16);
    v11 = &v8[8 * (v3 >> 3)];
  }

  v12 = v11 + 24;
  v13 = &v9[-v3];
  memcpy(&v9[-v3], v2, v3);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void sub_10000238C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000023B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000023B8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100002420(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_100002498(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      sub_100001210();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **sub_100002558(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      sub_100001210();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

uint64_t sub_100002670(uint64_t a1, char *a2, int a3)
{
  v6 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v6, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = strlen(a2);
  if (sub_10000273C(a1, a2, &a2[v7]) != &a2[v7])
  {
    sub_100002BFC();
  }

  return a1;
}

void sub_10000270C(_Unwind_Exception *a1)
{
  sub_100002420(&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10000273C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &off_100030940;
  v7 = operator new(0x10uLL);
  *v7 = off_1000309E8;
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &off_100030998;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (v11 != 64)
    {
      if (v11 == 128)
      {

        return sub_1000031DC(a1, a2, a3);
      }

      if (v11 == 256)
      {

        return sub_1000033BC(a1, a2, a3);
      }

LABEL_44:
      sub_10000359C();
    }

LABEL_15:

    return sub_100003068(a1, a2, a3);
  }

  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 == 16)
    {

      return sub_100002ED4(a1, a2, a3);
    }

    if (v11 != 32)
    {
      goto LABEL_44;
    }

    goto LABEL_15;
  }

  v13 = a2;
  while (1)
  {
    result = sub_1000038D8(a1, v13, a3);
    if (result == v13)
    {
      break;
    }

LABEL_25:
    v14 = result == v13;
    v13 = result;
    if (v14)
    {
      goto LABEL_30;
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 28);
  v17 = sub_100003C94(a1, v13, a3);
  if (v17 != v13)
  {
    result = sub_10000405C(a1, v17, a3, v15, v16 + 1, *(a1 + 28) + 1);
    goto LABEL_25;
  }

  result = v13;
LABEL_30:
  if (result == a2)
  {
    v18 = result;
    v19 = operator new(0x10uLL);
    result = v18;
    v20 = *(a1 + 56);
    v21 = *(v20 + 8);
    *v19 = off_1000309E8;
    v19[1] = v21;
    *(v20 + 8) = v19;
    *(a1 + 56) = v19;
  }

  if (result != a3)
  {
LABEL_35:
    if (*result != 124)
    {
      return result;
    }

    v29 = *(a1 + 56);
    v30 = result + 1;
    v31 = result + 1;
    while (1)
    {
      v32 = sub_1000038D8(a1, v31, a3);
      if (v32 == v31)
      {
        v33 = *(a1 + 56);
        v34 = *(a1 + 28);
        v35 = sub_100003C94(a1, v31, a3);
        if (v35 == v31)
        {
          v32 = v31;
LABEL_42:
          v36 = v32;
          if (v32 == v30)
          {
            v37 = operator new(0x10uLL);
            v38 = *(a1 + 56);
            v39 = *(v38 + 8);
            *v37 = off_1000309E8;
            v37[1] = v39;
            *(v38 + 8) = v37;
            *(a1 + 56) = v37;
          }

          v22 = operator new(0x18uLL);
          v23 = *(v29 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &off_100030F58;
          *(v10 + 8) = v22;
          *(v29 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          *v24 = off_1000309E8;
          v24[1] = v26;
          *(v29 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v29 + 8);
          *v27 = &off_100030FA0;
          v27[1] = v28;
          *(v25 + 8) = v27;
          *(a1 + 56) = *(v29 + 8);
          result = v36;
          if (v36 == a3)
          {
            return result;
          }

          goto LABEL_35;
        }

        v32 = sub_10000405C(a1, v35, a3, v33, v34 + 1, *(a1 + 28) + 1);
      }

      v14 = v32 == v31;
      v31 = v32;
      if (v14)
      {
        goto LABEL_42;
      }
    }
  }

  return result;
}

void sub_100002BB4(_Unwind_Exception *a1)
{
  sub_100003750(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_100002BFC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *sub_100002C54(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = a2;
  while (1)
  {
    v8 = result;
    result = sub_1000038D8(a1, result, a3);
    if (result == v8)
    {
      break;
    }

LABEL_2:
    if (result == v8)
    {
      goto LABEL_7;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 28);
  v11 = sub_100003C94(a1, v8, a3);
  if (v11 != v8)
  {
    result = sub_10000405C(a1, v11, a3, v9, v10 + 1, *(a1 + 28) + 1);
    goto LABEL_2;
  }

  result = v8;
LABEL_7:
  if (v8 == a2)
  {
    v12 = result;
    v13 = operator new(0x10uLL);
    result = v12;
    v14 = *(a1 + 56);
    v15 = *(v14 + 8);
    *v13 = off_1000309E8;
    v13[1] = v15;
    *(v14 + 8) = v13;
    *(a1 + 56) = v13;
  }

  if (v8 != a3)
  {
LABEL_12:
    if (*result != 124)
    {
      return result;
    }

    v23 = *(a1 + 56);
    v24 = result + 1;
    v25 = result + 1;
    while (1)
    {
      v26 = v25;
      v25 = sub_1000038D8(a1, v25, a3);
      if (v25 == v26)
      {
        v27 = *(a1 + 56);
        v28 = *(a1 + 28);
        v29 = sub_100003C94(a1, v26, a3);
        if (v29 == v26)
        {
          v25 = v26;
LABEL_19:
          v30 = v25;
          if (v26 == v24)
          {
            v31 = operator new(0x10uLL);
            v32 = *(a1 + 56);
            v33 = *(v32 + 8);
            *v31 = off_1000309E8;
            v31[1] = v33;
            *(v32 + 8) = v31;
            *(a1 + 56) = v31;
          }

          v16 = operator new(0x18uLL);
          v17 = *(v23 + 8);
          v16[1] = *(v6 + 8);
          v16[2] = v17;
          *v16 = &off_100030F58;
          *(v6 + 8) = v16;
          *(v23 + 8) = 0;
          v18 = operator new(0x10uLL);
          v19 = *(a1 + 56);
          v20 = *(v19 + 8);
          *v18 = off_1000309E8;
          v18[1] = v20;
          *(v23 + 8) = v18;
          *(v19 + 8) = 0;
          v21 = operator new(0x10uLL);
          v22 = *(v23 + 8);
          *v21 = &off_100030FA0;
          v21[1] = v22;
          *(v19 + 8) = v21;
          *(a1 + 56) = *(v23 + 8);
          result = v30;
          if (v26 == a3)
          {
            return result;
          }

          goto LABEL_12;
        }

        v25 = sub_10000405C(a1, v29, a3, v27, v28 + 1, *(a1 + 28) + 1);
      }

      if (v25 == v26)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_100002ED4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    v6 = operator new(0x18uLL);
    v7 = (*(a1 + 24) & 0x5F0) == 1024;
    v8 = *(a1 + 56);
    v9 = *(v8 + 8);
    *v6 = off_100030A90;
    v6[1] = v9;
    *(v6 + 16) = v7;
    *(v8 + 8) = v6;
    *(a1 + 56) = v6;
    ++v3;
  }

  if (v3 != a3)
  {
    while (1)
    {
      if (v3 == a3)
      {
        v13 = v3;
LABEL_11:
        if (v13 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 28);
      v12 = sub_10000B944(a1, v3, a3);
      if (v12 == v3)
      {
        break;
      }

      v13 = sub_10000BB4C(a1, v12, a3, v10, v11 + 1, *(a1 + 28) + 1);
      v14 = v13 == v3;
      v3 = v13;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    v13 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    v3 = v13 + 1;
    if (v13 + 1 != a3 || *v13 != 36)
    {
      goto LABEL_18;
    }

    v15 = operator new(0x18uLL);
    v16 = (*(a1 + 24) & 0x5F0) == 1024;
    v17 = *(a1 + 56);
    v18 = *(v17 + 8);
    *v15 = off_100030AD8;
    v15[1] = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(a1 + 56) = v15;
  }

  v13 = v3;
LABEL_18:
  v3 = v13;
  if (v13 != a3)
  {
    sub_10000B8EC();
  }

  return v3;
}

unsigned __int8 *sub_100003068(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_10000C08C(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v8 = v7;
    v7 = sub_10000C08C(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
LABEL_11:
    sub_10000B8EC();
  }

  if (v8 != a3)
  {
    while (*v8 == 124)
    {
      v9 = *(a1 + 56);
      v10 = v8 + 1;
      v11 = sub_10000C08C(a1, v8 + 1, a3);
      if (v11 == v8 + 1)
      {
        goto LABEL_11;
      }

      do
      {
        v8 = v11;
        v11 = sub_10000C08C(a1, v11, a3);
      }

      while (v11 != v8);
      if (v8 == v10)
      {
        goto LABEL_11;
      }

      v12 = operator new(0x18uLL);
      v13 = *(v9 + 8);
      v12[1] = *(v6 + 8);
      v12[2] = v13;
      *v12 = &off_100030F58;
      *(v6 + 8) = v12;
      *(v9 + 8) = 0;
      v14 = operator new(0x10uLL);
      v15 = *(a1 + 56);
      v16 = *(v15 + 8);
      *v14 = off_1000309E8;
      v14[1] = v16;
      *(v9 + 8) = v14;
      *(v15 + 8) = 0;
      v17 = operator new(0x10uLL);
      v18 = *(v9 + 8);
      *v17 = &off_100030FA0;
      v17[1] = v18;
      *(v15 + 8) = v17;
      *(a1 + 56) = *(v9 + 8);
      if (v8 == a3)
      {
        return v8;
      }
    }
  }

  return v8;
}

unsigned __int8 *sub_1000031DC(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_1000309E8;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    sub_100002ED4(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_1000309E8;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_100002ED4(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_100030F58;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_1000309E8;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_100030FA0;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

unsigned __int8 *sub_1000033BC(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_1000309E8;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  else
  {
    sub_100003068(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return v10;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_1000309E8;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_100003068(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_100030F58;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_1000309E8;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_100030FA0;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return v10;
}

void sub_10000359C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_100003614(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_10000363C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10000366C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000100027D21)
  {
    if (((v2 & 0x8000000100027D21 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000100027D21))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000100027D21 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1000036DC(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100003750(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000037D0(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1000037E4(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100003858(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

unsigned __int8 *sub_1000038D8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      if (a2 + 1 != a3)
      {
        v13 = a2[1];
        if (v13 == 66)
        {
          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v28 = *(*(v14 + 56) + 8);
          *v16 = off_100030B20;
          *(v16 + 1) = v28;
          std::locale::locale(v16 + 2, v14);
          *(v16 + 24) = *(v14 + 8);
          v16[40] = 1;
        }

        else
        {
          if (v13 != 98)
          {
            return a2;
          }

          v14 = a1;
          v15 = a2;
          v16 = operator new(0x30uLL);
          v17 = *(*(v14 + 56) + 8);
          *v16 = off_100030B20;
          *(v16 + 1) = v17;
          std::locale::locale(v16 + 2, v14);
          *(v16 + 24) = *(v14 + 8);
          v16[40] = 0;
        }

        *(*(v14 + 56) + 8) = v16;
        *(v14 + 56) = v16;
        return v15 + 2;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (*(v7 + 24) & 0x5F0) == 1024;
    v11 = *(v7 + 56);
    v9[1] = *(v11 + 8);
    v12 = off_100030A90;
LABEL_14:
    *v9 = v12;
    *(v9 + 16) = v10;
    *(v11 + 8) = v9;
    *(v7 + 56) = v9;
    return v8 + 1;
  }

  if (v3 == 36)
  {
    v7 = a1;
    v8 = a2;
    v9 = operator new(0x18uLL);
    v10 = (*(v7 + 24) & 0x5F0) == 1024;
    v11 = *(v7 + 56);
    v9[1] = *(v11 + 8);
    v12 = off_100030AD8;
    goto LABEL_14;
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v18 = a2 + 2;
  if (!v5 || v18 == a3)
  {
    return a2;
  }

  v20 = *v18;
  if (v20 == 33)
  {
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v29;
    v38 = v29;
    v35 = v29;
    v36 = v29;
    v31 = a2;
    sub_1000044C0(&v35);
    v33 = a1;
    DWORD2(v36) = *(a1 + 24);
    v34 = a3;
    v27 = sub_10000273C(&v35, v31 + 3, a3);
    LODWORD(v31) = HIDWORD(v36);
    sub_100004530(v33, &v35, 1, *(v33 + 28));
    *(v33 + 28) += v31;
    if (v27 == v34 || *v27 != 41)
    {
      sub_1000045E8();
    }

    goto LABEL_32;
  }

  if (v20 != 61)
  {
    return a2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v21;
  v38 = v21;
  v35 = v21;
  v36 = v21;
  v23 = a2;
  sub_1000044C0(&v35);
  v25 = a1;
  DWORD2(v36) = *(a1 + 24);
  v26 = a3;
  v27 = sub_10000273C(&v35, v23 + 3, a3);
  LODWORD(v23) = HIDWORD(v36);
  sub_100004530(v25, &v35, 0, *(v25 + 28));
  *(v25 + 28) += v23;
  if (v27 == v26 || *v27 != 41)
  {
    sub_1000045E8();
  }

LABEL_32:
  sub_100001820(&v35);
  return v27 + 1;
}

unsigned __int8 *sub_100003C94(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (v3 != 40)
    {
      if (v3 == 46)
      {
        v4 = a1;
        v6 = operator new(0x10uLL);
        v7 = *(v4 + 56);
        v8 = *(v7 + 8);
        *v6 = off_100030BB0;
        v6[1] = v8;
        *(v7 + 8) = v6;
        *(v4 + 56) = v6;
        return a2 + 1;
      }

      if (v3 - 42 >= 2)
      {
        goto LABEL_27;
      }

LABEL_47:
      sub_100005FC8();
    }

    v14 = a2 + 1;
    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && *v14 == 63 && a2[2] == 58)
      {
        v15 = (a1 + 36);
        ++*(a1 + 36);
        v16 = a3;
        v17 = sub_100002C54(a1, a2 + 3, a3);
        if (v17 == v16)
        {
          goto LABEL_56;
        }

        v18 = v17;
        if (*v17 != 41)
        {
          goto LABEL_56;
        }

LABEL_43:
        --*v15;
        return v18 + 1;
      }

      if ((*(a1 + 24) & 2) != 0)
      {
        v23 = *(a1 + 28);
      }

      else
      {
        v19 = a1;
        v20 = a3;
        v21 = operator new(0x18uLL);
        a3 = v20;
        v22 = v21;
        a1 = v19;
        v23 = *(v19 + 28) + 1;
        *(v19 + 28) = v23;
        v24 = *(v19 + 56);
        v25 = *(v24 + 8);
        *v22 = off_100030DF0;
        v22[1] = v25;
        *(v22 + 4) = v23;
        *(v24 + 8) = v22;
        *(v19 + 56) = v22;
      }

      v15 = (a1 + 36);
      ++*(a1 + 36);
      v29 = a1;
      v30 = a3;
      v31 = sub_100002C54(a1, v14, a3);
      if (v31 != v30)
      {
        v18 = v31;
        if (*v31 == 41)
        {
          if ((*(v29 + 24) & 2) == 0)
          {
            v32 = operator new(0x18uLL);
            v33 = *(v29 + 56);
            v34 = *(v33 + 8);
            *v32 = off_100030E38;
            v32[1] = v34;
            *(v32 + 4) = v23;
            *(v33 + 8) = v32;
            *(v29 + 56) = v32;
          }

          goto LABEL_43;
        }
      }
    }

LABEL_56:
    sub_1000045E8();
  }

  if (*a2 > 0x5Bu)
  {
    if (v3 != 92)
    {
      if (v3 == 123)
      {
        goto LABEL_47;
      }

      goto LABEL_27;
    }

    v11 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_100006194();
    }

    v13 = *v11;
    if (v13 == 48)
    {
      sub_100006940(a1, 0);
      return a2 + 2;
    }

    if ((v13 - 49) <= 8)
    {
      v26 = (v13 - 48);
      v9 = a2 + 2;
      if (a2 + 2 == a3)
      {
        v28 = a3;
      }

      else
      {
        while (1)
        {
          v27 = *v9;
          if ((v27 - 48) > 9)
          {
            break;
          }

          if (v26 >= 0x19999999)
          {
            goto LABEL_57;
          }

          v26 = v27 + 10 * v26 - 48;
          if (++v9 == a3)
          {
            v9 = a3;
            break;
          }
        }

        v28 = a3;
        if (!v26)
        {
LABEL_57:
          sub_100006AEC();
        }
      }

      if (v26 > *(a1 + 28))
      {
        goto LABEL_57;
      }

      v35 = a1;
      sub_100006B44(a1, v26);
      a1 = v35;
      a3 = v28;
      if (v9 != v11)
      {
        return v9;
      }
    }

    v36 = a1;
    v37 = a3;
    v38 = sub_1000061EC(a1, v11, a3);
    v39 = v37;
    v9 = v38;
    if (v38 == v11)
    {
      v40 = sub_10000644C(v36, v11, v39, 0);
      if (v40 == v11)
      {
        return a2;
      }

      else
      {
        return v40;
      }
    }

    return v9;
  }

  if (v3 != 91)
  {
    if (v3 == 63)
    {
      goto LABEL_47;
    }

LABEL_27:

    return sub_100006020(a1, a2, a3);
  }

  return sub_100005E64(a1, a2, a3);
}

unsigned __int8 *sub_10000405C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *(a1 + 24) & 0x1F0;
  v7 = *a2;
  if (v7 <= 0x3E)
  {
    if (v7 == 42)
    {
      v8 = a2 + 1;
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && *v8 == 63)
      {
        v9 = a2 + 2;
        v10 = 0;
        goto LABEL_34;
      }

      v23 = 0;
      goto LABEL_43;
    }

    if (v7 == 43)
    {
      v8 = a2 + 1;
      if (!v6 && v8 != a3 && *v8 == 63)
      {
        v9 = a2 + 2;
        v10 = 1;
LABEL_34:
        sub_10000AF8C(a1, v10, -1, a4, a5, a6, 0);
        return v9;
      }

      v23 = 1;
      goto LABEL_43;
    }

    return a2;
  }

  if (v7 == 63)
  {
    v20 = a2 + 1;
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || *v20 != 63)
    {
      sub_10000AF8C(a1, 0, 1, a4, a5, a6, 1);
      return v20;
    }

    else
    {
      v22 = a2 + 2;
      sub_10000AF8C(a1, 0, 1, a4, a5, a6, 0);
      return v22;
    }
  }

  else
  {
    if (v7 != 123)
    {
      return a2;
    }

    if (a2 + 1 == a3)
    {
      goto LABEL_69;
    }

    v11 = a2[1];
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = a2 + 2;
    if (a2 + 2 != a3)
    {
      while (1)
      {
        v14 = *v13;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        if (++v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = *v13;
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = v13 + 1;
        if (v6 || v16 == a3 || *v16 != 63)
        {
          sub_10000AF8C(a1, v12, v12, a4, a5, a6, 1);
          return v16;
        }

        else
        {
          v17 = v13 + 2;
          sub_10000AF8C(a1, v12, v12, a4, a5, a6, 0);
          return v17;
        }
      }

LABEL_69:
      sub_10000B0CC();
    }

    if (v13 + 1 == a3)
    {
      goto LABEL_69;
    }

    v24 = v13[1];
    if (v24 == 125)
    {
      v8 = v13 + 2;
      if (!v6 && v8 != a3 && *v8 == 63)
      {
        v10 = v12;
        v9 = v13 + 3;
        goto LABEL_34;
      }

      v23 = v12;
LABEL_43:
      sub_10000AF8C(a1, v23, -1, a4, a5, a6, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = v13 + 2;
    if (v26 != a3)
    {
      while (1)
      {
        v27 = *v26;
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        if (++v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || *v26 != 125)
    {
LABEL_70:
      sub_10000B124();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = v26 + 1;
    if (v6 || v28 == a3 || *v28 != 63)
    {
      sub_10000AF8C(a1, v12, v25, a4, a5, a6, 1);
      return v28;
    }

    else
    {
      v29 = v26 + 2;
      sub_10000AF8C(a1, v12, v25, a4, a5, a6, 0);
      return v29;
    }
  }
}

__n128 sub_100004444(uint64_t a1, char a2)
{
  v4 = operator new(0x30uLL);
  v5 = *(*(a1 + 56) + 8);
  *v4 = off_100030B20;
  *(v4 + 1) = v5;
  std::locale::locale(v4 + 2, a1);
  result = *(a1 + 8);
  *(v4 + 24) = result;
  v4[40] = a2;
  *(*(a1 + 56) + 8) = v4;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_1000044C0(uint64_t a1)
{
  v2 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v2, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

std::locale *sub_100004530(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = operator new(0x58uLL);
  v9 = *(*(a1 + 56) + 8);
  *v8 = off_100030B68;
  *(v8 + 1) = v9;
  result = std::locale::locale(v8 + 2, a2);
  *(v8 + 24) = *(a2 + 8);
  *(v8 + 40) = *(a2 + 24);
  v11 = *(a2 + 48);
  *(v8 + 7) = *(a2 + 40);
  *(v8 + 8) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(v8 + 9) = *(a2 + 56);
  *(v8 + 20) = a4;
  v8[84] = a3;
  *(*(a1 + 56) + 8) = v8;
  *(a1 + 56) = v8;
  return result;
}

void sub_1000045E8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *sub_100004640(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_1000046B4(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100004734(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void *sub_10000479C(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100004810(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100004890(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *sub_1000048E4(std::locale *a1)
{
  a1->__locale_ = off_100030B20;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100004970(std::locale *a1)
{
  a1->__locale_ = off_100030B20;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_100004A0C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *sub_100004B60(std::locale *a1)
{
  a1->__locale_ = off_100030B68;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_100004C38(std::locale *a1)
{
  a1->__locale_ = off_100030B68;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void sub_100004D20(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAA00;
  v27 = v4;
  v24 = 0;
  v26 = 0uLL;
  LOBYTE(v27) = 0;
  BYTE8(v27) = 0;
  v28 = 0;
  __p = 0;
  v20 = 0;
  v5 = (*(a1 + 44) + 1);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v21 = 0;
  *&v22 = v6;
  *(&v22 + 1) = v6;
  LOBYTE(v23) = 0;
  sub_100005394(&__p, v5, &v22);
  *(&v23 + 1) = v7;
  v24 = v7;
  LOBYTE(v25) = 0;
  v26 = v22;
  LOBYTE(v27) = v23;
  v28 = v7;
  BYTE8(v27) = 1;
  v8 = *(a2 + 88) & 0xFFF;
  v9 = *(a2 + 16);
  if (v9 == *(a2 + 8))
  {
    v10 = *(a2 + 92);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 84) == sub_100004EBC(a1 + 16, v9, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v10))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v11 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v11 = __p;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v12 < 2)
  {
LABEL_10:
    if (!v11)
    {
      return;
    }

    goto LABEL_11;
  }

  v13 = *(a1 + 80);
  v14 = *(a2 + 32);
  v15 = 2;
  v16 = 1;
  do
  {
    v17 = &v11[24 * v16];
    v18 = v14 + 24 * v13;
    *v18 = *v17;
    *(v18 + 16) = v17[16];
    v16 = v15;
    ++v13;
    ++v15;
  }

  while (v12 > v16);
LABEL_11:
  v20 = v11;
  operator delete(v11);
}

void sub_100004E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100004EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  *(&v49 + 1) = a3;
  v50 = 0xAAAAAAAAAAAAAA00;
  *&v49 = a3;
  *v48 = 0;
  memset(&v48[8], 0, 85);
  v52 = sub_1000056E0(&v51, v48);
  if (*&v48[56])
  {
    *&v48[64] = *&v48[56];
    operator delete(*&v48[56]);
  }

  if (*&v48[32])
  {
    *&v48[40] = *&v48[32];
    operator delete(*&v48[32]);
  }

  v13 = v52;
  *(v52 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_1000059FC(v13 - 8, v15 - v16, &v49);
    v13 = v52;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    sub_100005BC0(v13 - 40, v19 - v20);
    v13 = v52;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      sub_1000055AC();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v48[64] = v30;
          *&v48[80] = v30;
          *&v48[32] = v30;
          *&v48[48] = v30;
          *v48 = v30;
          *&v48[16] = v30;
          sub_100005CF4(v48, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(**&v48[80] + 24))(*&v48[80], 0, v48);
          v31 = v52;
          if (v52 >= v53)
          {
            v52 = sub_1000056E0(&v51, v48);
            if (*&v48[56])
            {
              *&v48[64] = *&v48[56];
              operator delete(*&v48[56]);
            }
          }

          else
          {
            v32 = *&v48[16];
            *v52 = *v48;
            v31[1] = v32;
            *(v31 + 6) = 0;
            *(v31 + 7) = 0;
            *(v31 + 4) = 0;
            *(v31 + 5) = 0;
            v31[2] = *&v48[32];
            *(v31 + 6) = *&v48[48];
            *&v48[32] = 0;
            *&v48[40] = 0;
            *(v31 + 8) = 0;
            *(v31 + 9) = 0;
            *(v31 + 56) = *&v48[56];
            *(v31 + 9) = *&v48[72];
            memset(&v48[48], 0, 32);
            v33 = *&v48[80];
            *(v31 + 85) = *&v48[85];
            *(v31 + 10) = v33;
            v52 = v31 + 6;
          }

          if (*&v48[32])
          {
            *&v48[40] = *&v48[32];
            operator delete(*&v48[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v51;
    v13 = v52;
    ++v21;
    if (v51 == v52)
    {
      v17 = 0;
      if (!v51)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    sub_100005604();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v52;
    v28 = *(v52 - 5);
    if (v28)
    {
      *(v52 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v52 = v27 - 6;
    goto LABEL_17;
  }

  v39 = *a4;
  *v39 = a2;
  *(v39 + 8) = v26;
  *(v39 + 16) = 1;
  v40 = *(v13 - 8);
  v41 = *(v13 - 7) - v40;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    v43 = (v40 + 16);
    v44 = 1;
    do
    {
      v45 = v39 + 24 * v44;
      *v45 = *(v43 - 1);
      v46 = *v43;
      v43 += 24;
      *(v45 + 16) = v46;
    }

    while (v42 > v44++);
  }

  v17 = 1;
  v22 = v51;
  if (v51)
  {
LABEL_44:
    v34 = v52;
    v35 = v22;
    if (v52 != v22)
    {
      do
      {
        v36 = *(v34 - 5);
        if (v36)
        {
          *(v34 - 4) = v36;
          operator delete(v36);
        }

        v37 = *(v34 - 8);
        if (v37)
        {
          *(v34 - 7) = v37;
          operator delete(v37);
        }

        v34 -= 6;
      }

      while (v34 != v22);
      v35 = v51;
    }

    v52 = v22;
    operator delete(v35);
  }

  return v17;
}

void sub_100005324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100005568(&a9);
  sub_10000565C((v9 - 104));
  _Unwind_Resume(a1);
}

char *sub_100005394(char **a1, unint64_t a2, uint64_t *a3)
{
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) < a2)
  {
    if (v7)
    {
      a1[1] = v7;
      operator delete(v7);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_29;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= a2)
    {
      v10 = a2;
    }

    v11 = v9 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v10;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_29:
      sub_1000023A0();
    }

    v12 = 24 * v11;
    result = operator new(24 * v11);
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v12];
    v13 = 24 * a2;
    v14 = &result[24 * a2];
    do
    {
      *result = *a3;
      *(result + 2) = a3[2];
      result += 24;
      v13 -= 24;
    }

    while (v13);
    goto LABEL_28;
  }

  v15 = a1[1];
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v7) >> 3);
  if (v16 >= a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v7) >> 3);
  }

  if (v17)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = v17;
    v21 = *(a3 + 16);
    if (v17 == 1)
    {
      goto LABEL_32;
    }

    result = &v7[24 * (v17 & 0xFFFFFFFFFFFFFFFELL)];
    v20 = v17 & 1;
    v22 = v7 + 24;
    v23 = v17 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 3) = v18;
      *(v22 - 2) = v19;
      *v22 = v18;
      *(v22 + 1) = v19;
      *(v22 - 8) = v21;
      v22[16] = v21;
      v22 += 48;
      v23 -= 2;
    }

    while (v23);
    if (v17 != (v17 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        *result = v18;
        *(result + 1) = v19;
        result[16] = v21;
        result += 24;
        --v20;
      }

      while (v20);
    }
  }

  if (a2 <= v16)
  {
    v14 = &v7[24 * a2];
LABEL_28:
    a1[1] = v14;
    return result;
  }

  v24 = &v15[24 * (a2 - v16)];
  v25 = 24 * a2 - 24 * v16;
  do
  {
    v26 = *a3;
    *(v15 + 2) = a3[2];
    *v15 = v26;
    v15 += 24;
    v25 -= 24;
  }

  while (v25);
  a1[1] = v24;
  return result;
}

void *sub_100005568(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1000055AC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void sub_100005604()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

void **sub_10000565C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1000056E0(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000023A0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    if (v6 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_100002078();
    }

    v7 = operator new(96 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[96 * v2];
  __p = v7;
  v19 = v8;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v8 + 56) = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 9) = v10;
  *(v8 + 10) = v11;
  v20 = v8 + 96;
  v21 = &v7[96 * v6];
  sub_10000585C(a1, &__p);
  v12 = a1[1];
  v13 = v19;
  while (1)
  {
    v14 = v20;
    if (v20 == v13)
    {
      break;
    }

    v20 -= 96;
    v15 = *(v14 - 5);
    if (v15)
    {
      *(v14 - 4) = v15;
      operator delete(v15);
    }

    v16 = *(v14 - 8);
    if (v16)
    {
      *(v14 - 7) = v16;
      operator delete(v16);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v12;
}

void sub_100005848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005984(va);
  _Unwind_Resume(a1);
}

void sub_10000585C(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v5);
    do
    {
      v11 = v4[7];
      if (v11)
      {
        v4[8] = v11;
        operator delete(v11);
      }

      v12 = v4[4];
      if (v12)
      {
        v4[5] = v12;
        operator delete(v12);
      }

      v4 += 12;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_100005984(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000059FC(char **a1, unint64_t a2, __int128 *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = &v4[24 * a2];
      v14 = 24 * a2;
      do
      {
        v15 = *a3;
        *(v4 + 2) = *(a3 + 2);
        *v4 = v15;
        v4 += 24;
        v14 -= 24;
      }

      while (v14);
      v4 = v13;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000023A0();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100002078();
      }

      v9 = a2;
      v10 = a3;
      v11 = a1;
      v12 = operator new(24 * v8);
      a1 = v11;
      a3 = v10;
      a2 = v9;
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v5];
    v17 = 24 * a2;
    v18 = &v16[24 * a2];
    v19 = v16;
    do
    {
      v20 = *a3;
      *(v19 + 2) = *(a3 + 2);
      *v19 = v20;
      v19 += 24;
      v17 -= 24;
    }

    while (v17);
    v21 = &v12[24 * v8];
    v22 = *a1;
    v23 = &v16[*a1 - v4];
    if (v4 != *a1)
    {
      v24 = v23;
      do
      {
        v25 = *v22;
        *(v24 + 2) = *(v22 + 2);
        *v24 = v25;
        v24 += 24;
        v22 += 24;
      }

      while (v22 != v4);
      v22 = *a1;
    }

    *a1 = v23;
    a1[1] = v18;
    a1[2] = v21;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void sub_100005BC0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_1000023A0();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        sub_100002078();
      }

      v10 = a2;
      v11 = operator new(16 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 16 * a2;
    bzero(&v11[16 * (v6 >> 4)], 16 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[16 * (v6 >> 4) + v13];
    *(a1 + 16) = &v11[16 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_100005CF4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = 0;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_1000023A0();
    }

    v9 = operator new(v8);
    *(a1 + 32) = v9;
    *(a1 + 40) = v9;
    *(a1 + 48) = &v9[v8];
    v10 = 24 * ((v8 - 24) / 0x18uLL) + 24;
    memcpy(v9, v7, v10);
    *(a1 + 40) = &v9[v10];
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if (v13 < 0)
    {
      sub_1000023A0();
    }

    v14 = operator new(v11 - v12);
    *(a1 + 56) = v14;
    *(a1 + 64) = v14;
    *(a1 + 72) = &v14[v13];
    v15 = v13 & 0x7FFFFFFFFFFFFFF0;
    memcpy(v14, v12, v15);
    *(a1 + 64) = &v14[v15];
  }

  v16 = *(a2 + 10);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = v16;
  return a1;
}

void sub_100005E30(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_100005E64(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    sub_10000783C(v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_23;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      sub_100007694(v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      goto LABEL_23;
    }

    do
    {
      sub_100008B14(a1, v7, a3, v8);
      v10 = v9 == v7;
      v7 = v9;
    }

    while (!v10);
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    if (*v9 == 45)
    {
      v11 = v9;
      sub_100007694(v8, 45);
      v9 = v11 + 1;
    }

    if (v9 == a3 || *v9 != 93)
    {
LABEL_23:
      sub_100008ABC();
    }

    return v9 + 1;
  }

  return a2;
}

void sub_100005FC8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *sub_100006020(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    return a2;
  }

  sub_100006940(a1, v4);
  return a2 + 1;
}

void *sub_1000060A0(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100006114(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_100006194()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *sub_1000061EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      sub_10000783C(v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      sub_10000783C(v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      sub_100007694(v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *sub_10000644C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v17 = a2;
          v18 = 12;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v17 = a2;
          v18 = 10;
          goto LABEL_80;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v17 = a2;
            v18 = 0;
            goto LABEL_80;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          if (a2 + 1 == a3 || ((a2[1] & 0xDF) - 65) > 0x19u)
          {
            goto LABEL_96;
          }

          v6 = a2[1] & 0x1F;
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v6;
            *(a4 + 1) = 0;
            return a2 + 2;
          }

          else
          {
            v19 = a2;
            sub_100006940(a1, v6);
            return v19 + 2;
          }

        case '_':
          goto LABEL_96;
      }
    }

    goto LABEL_74;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v17 = a2;
        v18 = 13;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v17 = a2;
        v18 = 9;
        goto LABEL_80;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

LABEL_74:
    if ((v4 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
    {
      goto LABEL_96;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v17 = a2;
    v18 = v4;
LABEL_80:
    sub_100006940(a1, v18);
    return v17 + 1;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v8 = a2[1];
    if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
    {
      goto LABEL_96;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_96;
    }

    v9 = *a2;
    v10 = -48;
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
    {
      v9 |= 0x20u;
      if ((v9 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v10 = -87;
    }

    v5 = 16 * (v10 + v9);
LABEL_46:
    if (a2 + 1 == a3)
    {
      goto LABEL_96;
    }

    v11 = a2[1];
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_96;
      }

      v12 = -87;
    }

    if (a2 + 2 != a3)
    {
      v13 = a2[2];
      v14 = -48;
      if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
      {
        goto LABEL_56;
      }

      v13 |= 0x20u;
      if ((v13 - 97) < 6)
      {
        v14 = -87;
LABEL_56:
        v15 = v13 + 16 * (v5 + v12 + v11) + v14;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v15;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v16 = a2;
        sub_100006940(a1, v15);
        return v16 + 3;
      }
    }

LABEL_96:
    sub_100006194();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_46;
    }

    goto LABEL_74;
  }

  if (!a4)
  {
    v17 = a2;
    v18 = 11;
    goto LABEL_80;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void *sub_100006940(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v8 = operator new(0x30uLL);
    v9 = *(*(a1 + 56) + 8);
    *v8 = off_100030BF8;
    *(v8 + 1) = v9;
    std::locale::locale(v8 + 2, a1);
    *(v8 + 24) = *(a1 + 8);
    result = (*(**(a1 + 8) + 40))(*(a1 + 8), a2);
    v8[40] = result;
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      result = operator new(0x18uLL);
      v6 = *(a1 + 56);
      v7 = *(v6 + 8);
      *result = off_100030C88;
      result[1] = v7;
      *(result + 16) = a2;
      *(v6 + 8) = result;
      *(a1 + 56) = result;
      return result;
    }

    v8 = operator new(0x30uLL);
    v10 = *(*(a1 + 56) + 8);
    *v8 = off_100030C40;
    *(v8 + 1) = v10;
    result = std::locale::locale(v8 + 2, a1);
    *(v8 + 24) = *(a1 + 8);
    v8[40] = a2;
  }

  *(*(a1 + 56) + 8) = v8;
  *(a1 + 56) = v8;
  return result;
}

void sub_100006A84(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_100030A60;
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_100006AEC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

__n128 sub_100006B44(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v9 = operator new(0x30uLL);
    v10 = v9;
    v9[1].__locale_ = *(*(a1 + 56) + 8);
    v11 = off_100030CD0;
  }

  else
  {
    if ((v4 & 8) == 0)
    {
      v5 = operator new(0x18uLL);
      v7 = *(a1 + 56);
      v8 = *(v7 + 8);
      *v5 = off_100030D60;
      v5[1] = v8;
      *(v5 + 4) = a2;
      *(v7 + 8) = v5;
      *(a1 + 56) = v5;
      return result;
    }

    v9 = operator new(0x30uLL);
    v10 = v9;
    v9[1].__locale_ = *(*(a1 + 56) + 8);
    v11 = off_100030D18;
  }

  v9->__locale_ = v11;
  std::locale::locale(v9 + 2, a1);
  result = *(a1 + 8);
  *&v10[3].__locale_ = result;
  LODWORD(v10[5].__locale_) = a2;
  *(*(a1 + 56) + 8) = v10;
  *(a1 + 56) = v10;
  return result;
}

std::locale *sub_100006C4C(std::locale *a1)
{
  a1->__locale_ = off_100030BF8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100006CD8(std::locale *a1)
{
  a1->__locale_ = off_100030BF8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_100006D74(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *sub_100006E14(std::locale *a1)
{
  a1->__locale_ = off_100030C40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_100006EA0(std::locale *a1)
{
  a1->__locale_ = off_100030C40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_100006F3C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void *sub_100006F84(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100006FF8(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_100007078(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *sub_1000070C0(std::locale *a1)
{
  a1->__locale_ = off_100030CD0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_10000714C(std::locale *a1)
{
  a1->__locale_ = off_100030CD0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_1000071E8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *sub_100007318(std::locale *a1)
{
  a1->__locale_ = off_100030D18;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_1000073A4(std::locale *a1)
{
  a1->__locale_ = off_100030D18;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_100007440(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_1000074CC(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_100007540(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_1000075C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_100006AEC();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_100007694(uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 40);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    sub_1000023A0();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 48) = v9 + 1;
    return;
  }

  v10 = *(a1 + 40);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 40) = v16;
  *(a1 + 48) = v6;
  *(a1 + 56) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 48) = v6;
    return;
  }

LABEL_28:
  *(a1 + 48) = v6;
}

uint64_t sub_10000783C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_100030DA8;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_10000797C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  sub_1000015D0((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    sub_1000083D4(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_1000083D4(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void sub_100007A40(std::locale *a1)
{
  v1 = sub_1000084C8(a1);

  operator delete(v1);
}

void sub_100007A68(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v23 = 0;
    v24 = *(a1 + 168);
    goto LABEL_59;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_34;
  }

  LOBYTE(v112) = *v4;
  v6 = v4[1];
  HIBYTE(v112) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(v112) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(v112) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_100008644(a1 + 16, &v112, __p, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    v25 = __p[1];
    operator delete(__p[0]);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_34:
    v24 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if (!HIBYTE(__p[2]))
  {
    goto LABEL_34;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v112 != *(v10 - 1) || HIBYTE(v112) != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_225;
  }

LABEL_17:
  if (*(a1 + 170) != 1 || *(a1 + 88) == *(a1 + 96))
  {
LABEL_179:
    if (*(a1 + 136) == *(a1 + 144))
    {
      v86 = 0;
      goto LABEL_207;
    }

    memset(__p, 170, sizeof(__p));
    sub_1000088F8(a1 + 16, &v112, __p, __p);
    v87 = *(a1 + 136);
    v88 = HIBYTE(__p[2]);
    v89 = *(a1 + 144) - v87;
    if (v89)
    {
      v90 = v2;
      v91 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v92 = HIBYTE(__p[2]);
      }

      else
      {
        v92 = __p[1];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v93 = __p;
      }

      else
      {
        v93 = __p[0];
      }

      if (v91 <= 1)
      {
        v94 = 1;
      }

      else
      {
        v94 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      }

      v95 = 1;
      v96 = 1;
      do
      {
        v97 = *(v87 + 23);
        v98 = v97;
        if ((v97 & 0x80u) != 0)
        {
          v97 = *(v87 + 8);
        }

        if (v92 == v97)
        {
          v99 = v98 >= 0 ? v87 : *v87;
          if (!memcmp(v93, v99, v92))
          {
            v86 = 1;
            v70 = 5;
            v2 = v90;
            if ((v88 & 0x80) == 0)
            {
              goto LABEL_204;
            }

            goto LABEL_203;
          }
        }

        v96 = v95++ < v91;
        v87 += 24;
        --v94;
      }

      while (v94);
      v70 = 0;
      v86 = 0;
      v2 = v90;
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
      v70 = 0;
      v86 = 0;
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
LABEL_204:
        if (v96)
        {
          goto LABEL_205;
        }

LABEL_207:
        if (v112 < 0)
        {
          v103 = *(a1 + 164);
        }

        else
        {
          v100 = *(a1 + 160);
          v101 = *(*(a1 + 24) + 16);
          v102 = *(v101 + 4 * v112);
          if (((v102 & v100) != 0 || v112 == 95 && (v100 & 0x80) != 0) && (SHIBYTE(v112) & 0x8000000000000000) == 0 && ((*(v101 + 4 * SHIBYTE(v112)) & v100) != 0 || (v100 & 0x80) != 0 && SHIBYTE(v112) == 95))
          {
            goto LABEL_225;
          }

          v103 = *(a1 + 164);
          if ((v103 & v102) != 0 || v112 == 95 && (v103 & 0x80) != 0)
          {
LABEL_224:
            v24 = v86;
LABEL_226:
            v23 = 2;
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v112) & 0x8000000000000000) == 0)
        {
          if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(v112)) & v103) == 0)
          {
            v24 = 1;
            if (SHIBYTE(v112) != 95 || (v103 & 0x80) == 0)
            {
              goto LABEL_226;
            }
          }

          goto LABEL_224;
        }

LABEL_225:
        v24 = 1;
        goto LABEL_226;
      }
    }

LABEL_203:
    operator delete(__p[0]);
    goto LABEL_204;
  }

  memset(v111, 170, sizeof(v111));
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  __p[2] = 0x2AAAAAAAAAAAAAALL;
  __p[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__p[0]) = v112;
  (*(**(a1 + 32) + 32))(v111);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(a1 + 88);
  v13 = HIBYTE(v111[2]);
  v14 = *(a1 + 96) - v12;
  if (!v14)
  {
    v22 = 0;
    v70 = 0;
    goto LABEL_175;
  }

  v106 = v2;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v16 = v111;
  }

  else
  {
    v16 = v111[0];
  }

  v17 = HIBYTE(v111[2]);
  if (SHIBYTE(v111[2]) >= 0)
  {
    v18 = HIBYTE(v111[2]);
  }

  else
  {
    v18 = v111[1];
  }

  if (v15 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  }

  v20 = (v12 + 47);
  v21 = 1;
  v22 = 1;
  do
  {
    v60 = *(v20 - 24);
    if (v60 >= 0)
    {
      v61 = (v20 - 47);
    }

    else
    {
      v61 = *(v20 - 47);
    }

    if (v60 >= 0)
    {
      v62 = *(v20 - 24);
    }

    else
    {
      v62 = *(v20 - 39);
    }

    if (v18 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v18;
    }

    v64 = memcmp(v61, v16, v63);
    if (v64)
    {
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else if (v62 > v18)
    {
      goto LABEL_109;
    }

    v65 = *v20;
    if (v65 >= 0)
    {
      v66 = (v20 - 23);
    }

    else
    {
      v66 = *(v20 - 23);
    }

    if (v65 >= 0)
    {
      v67 = *v20;
    }

    else
    {
      v67 = *(v20 - 15);
    }

    if (v67 >= v18)
    {
      v68 = v18;
    }

    else
    {
      v68 = v67;
    }

    v69 = memcmp(v16, v66, v68);
    if (v69)
    {
      if (v69 < 0)
      {
LABEL_134:
        v70 = 5;
        goto LABEL_173;
      }
    }

    else if (v18 <= v67)
    {
      goto LABEL_134;
    }

LABEL_109:
    v22 = v21++ < v15;
    v20 += 48;
    --v19;
  }

  while (v19);
  v70 = 0;
LABEL_173:
  v2 = v106;
  v13 = v17;
LABEL_175:
  if (v13 < 0)
  {
    operator delete(v111[0]);
  }

  if (!v22)
  {
    goto LABEL_179;
  }

  v86 = 1;
LABEL_205:
  v23 = 2;
  v24 = v86;
  if (v70)
  {
    goto LABEL_59;
  }

LABEL_35:
  v26 = **(v2 + 16);
  LOBYTE(v112) = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v26) = (*(**(a1 + 24) + 40))(*(a1 + 24), v26);
    LOBYTE(v112) = v26;
  }

  v27 = *(a1 + 40);
  v28 = *(a1 + 48) - v27;
  if (v28)
  {
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      v29 = *v27++;
      if (v29 == v26)
      {
        goto LABEL_58;
      }

      --v28;
    }

    while (v28);
  }

  v30 = *(a1 + 164);
  if (v30 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v26 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v30) == 0)
    {
      v32 = (v30 >> 7) & 1;
      v31 = v26 == 95 ? v32 : 0;
    }

    else
    {
      v31 = 1;
    }

    v33 = *(a1 + 72);
    v34 = memchr(*(a1 + 64), v26, v33 - *(a1 + 64));
    v35 = !v34 || v34 == v33;
    v36 = !v35;
    if ((v31 & 1) == 0 && !v36)
    {
      goto LABEL_58;
    }
  }

  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  if (v39 == v40)
  {
    goto LABEL_139;
  }

  memset(v111, 170, sizeof(v111));
  v109 = v24;
  if (*(a1 + 170) == 1)
  {
    __p[1] = 0xAAAAAAAAAAAAAAAALL;
    __p[2] = 0x1AAAAAAAAAAAAAALL;
    __p[0] = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(__p[0]) = v26;
    (*(**(a1 + 32) + 32))(v111);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v39 = *(a1 + 88);
    v41 = HIBYTE(v111[2]);
    v42 = *(a1 + 96) - v39;
    if (!v42)
    {
LABEL_68:
      v43 = 0;
      if ((v41 & 0x80) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }
  }

  else
  {
    v41 = 1;
    HIBYTE(v111[2]) = 1;
    LOWORD(v111[0]) = v26;
    v42 = v40 - v39;
    if (!v42)
    {
      goto LABEL_68;
    }
  }

  v105 = v23;
  v107 = v2;
  v44 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  v104 = v41;
  if ((v41 & 0x80u) == 0)
  {
    v45 = v111;
  }

  else
  {
    v45 = v111[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = v111[1];
  }

  if (v44 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  }

  v48 = (v39 + 47);
  v49 = 1;
  v43 = 1;
  while (2)
  {
    v50 = *(v48 - 24);
    if (v50 >= 0)
    {
      v51 = (v48 - 47);
    }

    else
    {
      v51 = *(v48 - 47);
    }

    if (v50 >= 0)
    {
      v52 = *(v48 - 24);
    }

    else
    {
      v52 = *(v48 - 39);
    }

    if (v46 >= v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = v46;
    }

    v54 = memcmp(v51, v45, v53);
    if (v54)
    {
      if (v54 < 0)
      {
        goto LABEL_96;
      }
    }

    else if (v52 <= v46)
    {
LABEL_96:
      v55 = *v48;
      if (v55 >= 0)
      {
        v56 = (v48 - 23);
      }

      else
      {
        v56 = *(v48 - 23);
      }

      if (v55 >= 0)
      {
        v57 = *v48;
      }

      else
      {
        v57 = *(v48 - 15);
      }

      if (v57 >= v46)
      {
        v58 = v46;
      }

      else
      {
        v58 = v57;
      }

      v59 = memcmp(v45, v56, v58);
      if (v59)
      {
        if (v59 < 0)
        {
LABEL_107:
          v24 = 1;
          v2 = v107;
          goto LABEL_136;
        }
      }

      else if (v46 <= v57)
      {
        goto LABEL_107;
      }
    }

    v43 = v49++ < v44;
    v48 += 48;
    if (--v47)
    {
      continue;
    }

    break;
  }

  v2 = v107;
  v24 = v109;
LABEL_136:
  v23 = v105;
  if (v104 < 0)
  {
LABEL_137:
    operator delete(v111[0]);
  }

LABEL_138:
  if (!v43)
  {
LABEL_139:
    if (*(a1 + 136) != *(a1 + 144))
    {
      v71 = v23;
      memset(__p, 170, sizeof(__p));
      v72 = __p;
      sub_1000088F8(a1 + 16, &v112, &v112 + 1, __p);
      v73 = *(a1 + 136);
      v74 = HIBYTE(__p[2]);
      v75 = *(a1 + 144) - v73;
      if (v75)
      {
        v110 = v24;
        v108 = v2;
        v76 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v77 = HIBYTE(__p[2]);
        }

        else
        {
          v77 = __p[1];
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          v72 = __p[0];
        }

        if (v76 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        }

        v79 = 1;
        v80 = 1;
        do
        {
          v81 = *(v73 + 23);
          v82 = v81;
          if ((v81 & 0x80u) != 0)
          {
            v81 = *(v73 + 8);
          }

          if (v77 == v81)
          {
            v83 = v82 >= 0 ? v73 : *v73;
            if (!memcmp(v72, v83, v77))
            {
              v24 = 1;
              v2 = v108;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            }
          }

          v80 = v79++ < v76;
          v73 += 24;
          --v78;
        }

        while (v78);
        v2 = v108;
        v24 = v110;
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_162;
        }

LABEL_161:
        operator delete(__p[0]);
      }

      else
      {
        v80 = 0;
        if ((HIBYTE(__p[2]) & 0x80) != 0)
        {
          goto LABEL_161;
        }
      }

LABEL_162:
      if (v80)
      {
        v23 = v71;
        goto LABEL_59;
      }

      LOBYTE(v26) = v112;
      v23 = v71;
    }

    v84 = *(a1 + 160);
    if ((v26 & 0x80) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v84) == 0)
    {
      v85 = (v84 >> 7) & 1;
      if (v26 != 95)
      {
        LOBYTE(v85) = 0;
      }

      v24 |= v85;
      goto LABEL_59;
    }

LABEL_58:
    v24 = 1;
  }

LABEL_59:
  if (*(a1 + 168) == (v24 & 1))
  {
    v37 = 0;
    v38 = -993;
  }

  else
  {
    *(v2 + 16) += v23;
    v37 = *(a1 + 8);
    v38 = -995;
  }

  *v2 = v38;
  *(v2 + 80) = v37;
}

void sub_1000083B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1000083D4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_10000846C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *sub_1000084C8(std::locale *a1)
{
  a1->__locale_ = off_100030DA8;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_100030A60;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void sub_100008644(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          sub_100002558(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            sub_100002498(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_1000088B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1000088F8(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  v16[11] = v16[3];
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_100008AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100008ABC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brack);
}

void sub_100008B14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v4 = *a2;
  if (v4 == 93)
  {
    return;
  }

  v7 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  if (a2 + 1 == a3 || v4 != 91)
  {
    goto LABEL_23;
  }

  v8 = a2[1];
  if (v8 != 46)
  {
    if (v8 != 58)
    {
      if (v8 == 61)
      {
        sub_1000090E4(a1, a2 + 2, a3, a4);
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v7 = 0;
LABEL_23:
      v17 = *(a1 + 24) & 0x1F0;
      goto LABEL_35;
    }

    if (a3 - (a2 + 2) >= 2)
    {
      v9 = a3 - a2 - 4;
      v10 = a2 + 2;
      v11 = a2 + 3;
      if (a2[2] != 58)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (*v11 == 93)
      {
        if (v10 != a3)
        {
          v25 = sub_10000A6FC(a1, a2 + 2, v10, *(a1 + 24) & 1);
          if (!v25)
          {
            sub_10000A6A4();
          }

          *(a4 + 160) |= v25;
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_70;
          }

          return;
        }
      }

      else
      {
LABEL_13:
        while (v9)
        {
          --v9;
          v10 = v11;
          v12 = *v11++;
          if (v12 == 58)
          {
            goto LABEL_12;
          }
        }
      }
    }

LABEL_88:
    sub_100008ABC();
  }

  if (a3 - (a2 + 2) < 2)
  {
    goto LABEL_88;
  }

  v13 = a3 - a2 - 4;
  v14 = a2 + 2;
  v15 = a2 + 3;
  if (a2[2] != 46)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (*v15 != 93)
  {
LABEL_19:
    while (v13)
    {
      --v13;
      v14 = v15;
      v16 = *v15++;
      if (v16 == 46)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_88;
  }

  if (v14 == a3)
  {
    goto LABEL_88;
  }

  v19 = a1;
  sub_10000A22C(a1, a2 + 2, v14, &v37);
  a1 = v19;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    a1 = v19;
  }

  v36 = v38;
  *__p = v37;
  v20 = HIBYTE(v38);
  v7 = SHIBYTE(v38);
  v21 = *(&v37 + 1);
  if (v38 < 0)
  {
    v20 = __p[1];
  }

  if ((v20 - 1) >= 2)
  {
    sub_10000A1D4();
  }

  a2 = v14 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  if (v38 >= 0)
  {
    v21 = SHIBYTE(v38);
  }

  if (v21)
  {
    v18 = v14 + 2;
    if (a2 == a3)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_35:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v22) = *a2;
LABEL_44:
    if (v7 < 0)
    {
      v26 = __p[0];
      __p[1] = 1;
      *__p[0] = v22;
      v26[1] = 0;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    else
    {
      HIBYTE(v36) = 1;
      LOWORD(__p[0]) = v22;
      v18 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v22 = *a2;
  if (v22 != 92)
  {
    goto LABEL_44;
  }

  v23 = a1;
  if (v17)
  {
    v24 = sub_100009624(a1, a2 + 1, a3, __p);
  }

  else
  {
    v24 = sub_100009434(a1, a2 + 1, a3, __p, a4);
  }

  v18 = v24;
  a1 = v23;
  if (v18 == a3)
  {
LABEL_52:
    if (SHIBYTE(v36) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_69;
      }

      if (__p[1] != 1)
      {
        v28 = __p[0];
LABEL_68:
        sub_100009F80(a4, *v28, *(v28 + 1));
LABEL_69:
        if ((SHIBYTE(v36) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

      v28 = __p[0];
    }

    else
    {
      if (!HIBYTE(v36))
      {
        goto LABEL_69;
      }

      v28 = __p;
      if (HIBYTE(v36) != 1)
      {
        goto LABEL_68;
      }
    }

    sub_100007694(a4, *v28);
    goto LABEL_69;
  }

LABEL_51:
  v27 = *v18;
  if (v27 == 93)
  {
    goto LABEL_52;
  }

  v29 = v18 + 1;
  if (v18 + 1 == a3 || v27 != 45 || *v29 == 93)
  {
    goto LABEL_52;
  }

  v37 = 0uLL;
  v38 = 0;
  v30 = v18 + 2;
  if (v18 + 2 != a3 && *v29 == 91 && *v30 == 46)
  {
    sub_100009360(a1, v18 + 3, a3, &v37);
    goto LABEL_79;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v29) = *v29;
    goto LABEL_77;
  }

  LODWORD(v29) = *v29;
  if (v29 != 92)
  {
LABEL_77:
    HIBYTE(v38) = 1;
    LOWORD(v37) = v29;
    goto LABEL_79;
  }

  if (v17)
  {
    sub_100009624(a1, v30, a3, &v37);
  }

  else
  {
    sub_100009434(a1, v30, a3, &v37, a4);
  }

LABEL_79:
  *v33 = *__p;
  v34 = v36;
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  *v31 = v37;
  v32 = v38;
  v37 = 0uLL;
  v38 = 0;
  sub_100009AE4(a4, v33, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_86:
      operator delete(v37);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_70;
      }

      return;
    }
  }

  else if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v33[0]);
  if (SHIBYTE(v38) < 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  if (SHIBYTE(v36) < 0)
  {
LABEL_70:
    operator delete(__p[0]);
  }
}

void sub_100009054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000090E4(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_38;
  }

  v7 = a2;
  v8 = a2 + 1;
  if (*a2 != 61)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v8 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v7 = v8;
      v9 = *v8++;
      if (v9 == 61)
      {
        goto LABEL_3;
      }
    }

LABEL_38:
    sub_100008ABC();
  }

  if (v7 == a3)
  {
    goto LABEL_38;
  }

  memset(v19, 170, sizeof(v19));
  sub_10000A22C(a1, a2, v7, v19);
  v10 = SHIBYTE(v19[2]);
  if ((SHIBYTE(v19[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v19[2]))
    {
      memset(__p, 170, sizeof(__p));
      v11 = v19;
      goto LABEL_13;
    }

LABEL_39:
    sub_10000A1D4();
  }

  v10 = v19[1];
  if (!v19[1])
  {
    goto LABEL_39;
  }

  memset(__p, 170, sizeof(__p));
  v11 = v19[0];
LABEL_13:
  sub_10000A4E0(a1, v11, v10 + v11, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_15:
      v12 = *(a4 + 144);
      if (v12 >= *(a4 + 152))
      {
        *(a4 + 144) = sub_10000224C(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          sub_1000020AC(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v13 = *__p;
          *(v12 + 16) = __p[2];
          *v12 = v13;
        }

        *(a4 + 144) = v12 + 24;
        *(a4 + 144) = v12 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_32;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_15;
  }

  v14 = HIBYTE(v19[2]);
  if (SHIBYTE(v19[2]) < 0)
  {
    v14 = v19[1];
  }

  if (v14 == 2)
  {
    v16 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v16 = v19[0];
    }

    sub_100009F80(a4, *v16, *(v16 + 1));
  }

  else
  {
    if (v14 != 1)
    {
      sub_10000A1D4();
    }

    v15 = v19;
    if (SHIBYTE(v19[2]) < 0)
    {
      v15 = v19[0];
    }

    sub_100007694(a4, *v15);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_36:
    operator delete(__p[0]);
    if (SHIBYTE(v19[2]) < 0)
    {
      goto LABEL_37;
    }

    return v7 + 2;
  }

LABEL_32:
  if ((SHIBYTE(v19[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_37:
  operator delete(v19[0]);
  return v7 + 2;
}

void sub_100009304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_100009360(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = a2 + 1;
  if (*a2 != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    sub_100008ABC();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  sub_10000A22C(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_10000A1D4();
  }

  return v6 + 2;
}

unsigned __int8 *sub_100009434(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_100006194();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        sub_100007694(a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        sub_10000A870(a5, 95);
        return a2 + 1;
      }

      goto LABEL_25;
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

LABEL_25:

      return sub_10000644C(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *sub_100009624(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_75:
    sub_100006194();
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v4 != 34 && v4 != 47)
      {
        goto LABEL_48;
      }
    }

    else if (v4 != 92)
    {
      if (v4 == 97)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 7;
          return a2 + 1;
        }

        else
        {
          sub_100006940(a1, 7);
          return a2 + 1;
        }
      }

      if (v4 == 98)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 8;
          return a2 + 1;
        }

        else
        {
          sub_100006940(a1, 8);
          return a2 + 1;
        }
      }

      goto LABEL_48;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      sub_100006940(a1, v4);
      return a2 + 1;
    }
  }

  if (*a2 <= 0x71u)
  {
    if (v4 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      else
      {
        sub_100006940(a1, 12);
        return a2 + 1;
      }
    }

    if (v4 == 110)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }

      else
      {
        sub_100006940(a1, 10);
        return a2 + 1;
      }
    }
  }

  else
  {
    switch(v4)
    {
      case 'r':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 13;
          return a2 + 1;
        }

        else
        {
          sub_100006940(a1, 13);
          return a2 + 1;
        }

      case 't':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 9;
          return a2 + 1;
        }

        else
        {
          sub_100006940(a1, 9);
          return a2 + 1;
        }

      case 'v':
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 11;
          return a2 + 1;
        }

        else
        {
          sub_100006940(a1, 11);
          return a2 + 1;
        }
    }
  }

LABEL_48:
  if ((v4 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_75;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    result = v9;
    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    sub_100006940(a1, v8);
    return v9;
  }

  return result;
}

void sub_100009AE4(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      sub_10000ACE4();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      sub_10000AA18((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  sub_10000AB90(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  sub_10000AB90(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  sub_10000AA18((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_100009F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000846C(va);
  _Unwind_Resume(a1);
}

void sub_100009F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_10000846C(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_100009F80(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v6 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v8 < v7)
    {
      *v8 = v6;
      v9 = v8 + 2;
LABEL_41:
      *(a1 + 120) = v9;
      return;
    }

    v19 = *(a1 + 112);
    v20 = v8 - v19;
    v21 = (v8 - v19) >> 1;
    if (v21 > -2)
    {
      v22 = v7 - v19;
      if (v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        v25 = 0;
LABEL_39:
        v31 = &v25[2 * v21];
        *v31 = v6;
        v9 = v31 + 2;
        memcpy(v25, v19, v20);
        *(a1 + 112) = v25;
        *(a1 + 120) = v9;
        *(a1 + 128) = &v25[2 * v24];
        if (v19)
        {
          operator delete(v19);
        }

        goto LABEL_41;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = operator new(2 * v24);
        goto LABEL_39;
      }

LABEL_47:
      sub_100002078();
    }

LABEL_46:
    sub_1000023A0();
  }

  v10 = a2 | (a3 << 8);
  v12 = *(a1 + 120);
  v11 = *(a1 + 128);
  if (*(a1 + 170) == 1)
  {
    if (v12 >= v11)
    {
      v13 = *(a1 + 112);
      v14 = v12 - v13;
      v15 = (v12 - v13) >> 1;
      if (v15 <= -2)
      {
        goto LABEL_46;
      }

      v16 = v11 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      goto LABEL_42;
    }
  }

  else if (v12 >= v11)
  {
    v13 = *(a1 + 112);
    v14 = v12 - v13;
    v15 = (v12 - v13) >> 1;
    if (v15 <= -2)
    {
      goto LABEL_46;
    }

    v27 = v11 - v13;
    if (v27 <= v15 + 1)
    {
      v28 = v15 + 1;
    }

    else
    {
      v28 = v27;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v28;
    }

    if (v18)
    {
      if (v18 < 0)
      {
        goto LABEL_47;
      }

LABEL_37:
      v29 = v10;
      v30 = operator new(2 * v18);
      v10 = v29;
      goto LABEL_43;
    }

LABEL_42:
    v30 = 0;
LABEL_43:
    v32 = &v30[2 * v15];
    *v32 = v10;
    v26 = v32 + 2;
    memcpy(v30, v13, v14);
    *(a1 + 112) = v30;
    *(a1 + 120) = v26;
    *(a1 + 128) = &v30[2 * v18];
    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_45;
  }

  *v12 = v10;
  v26 = v12 + 2;
LABEL_45:
  *(a1 + 120) = v26;
}

void sub_10000A1D4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_collate);
}

void sub_10000A22C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          sub_100002558(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            sub_100002498(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_10000A49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_10000A4E0(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE **a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v5 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v5;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v5) = 0;
  memset(a4, 170, 24);
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v13, &v12[v13]);
  v14 = *(a4 + 23);
  v15 = v14;
  if (v14 < 0)
  {
    v14 = a4[1];
  }

  if (v14 == 1)
  {
    goto LABEL_26;
  }

  if (v14 != 12)
  {
    if (v15 < 0)
    {
      **a4 = 0;
      a4[1] = 0;
      if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  v16[11] = v16[3];
  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_29;
  }
}

void sub_10000A688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A6A4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_ctype);
}

uint64_t sub_10000A6FC(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_10000A854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000A870(uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 64);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    sub_1000023A0();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 72) = v9 + 1;
    return;
  }

  v10 = *(a1 + 64);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 64) = v16;
  *(a1 + 72) = v6;
  *(a1 + 80) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 72) = v6;
    return;
  }

LABEL_28:
  *(a1 + 72) = v6;
}

void sub_10000AA18(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_1000023A0();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 > 0x555555555555555)
    {
      sub_100002078();
    }

    v12 = a2;
    v13 = operator new(48 * v11);
    a2 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = &v13[48 * v8];
  *v14 = *a2;
  v15 = &v13[48 * v11];
  *(v14 + 2) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v14 + 5) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = v14 + 48;
  v17 = *a1;
  v18 = a1[1] - *a1;
  *(v14 + 24) = v16;
  v19 = &v14[-v18];
  memcpy(&v14[-v18], v17, v18);
  *a1 = v19;
  a1[1] = v7;
  a1[2] = v15;
  if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  a1[1] = v7;
}

void sub_10000AB90(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v3 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v6 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v6, a2, v3);
    goto LABEL_10;
  }

  if ((v3 | 7) == 0x17)
  {
    v7 = 25;
  }

  else
  {
    v7 = (v3 | 7) + 1;
  }

  v8 = a2;
  v9 = operator new(v7);
  a2 = v8;
  v6 = v9;
  __dst[1] = v3;
  __dst[2] = (v7 | 0x8000000000000000);
  __dst[0] = v9;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v6 + v3) = 0;
  v10 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v10 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v11, &v10[v11]);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10000ACC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000ACE4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_range);
}

void *sub_10000AD3C(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000ADB0(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000AE30(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000AE60(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000AED4(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000AF54(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v13 = operator new(0x10uLL);
  v14 = *(a1 + 56);
  v15 = *(v14 + 8);
  *v13 = off_1000309E8;
  v13[1] = v15;
  *(v14 + 8) = 0;
  v16 = operator new(0x38uLL);
  v17 = *(a1 + 32);
  v16[1] = *(a4 + 8);
  v16[2] = v13;
  *v16 = &off_100030E80;
  v16[3] = a2;
  v16[4] = a3;
  *(v16 + 10) = v17;
  *(v16 + 11) = a5;
  *(v16 + 12) = a6;
  *(v16 + 52) = a7;
  *(a4 + 8) = 0;
  result = operator new(0x10uLL);
  *result = &off_100030F10;
  result[1] = v16;
  *(v14 + 8) = result;
  *(a1 + 56) = v13;
  *(a4 + 8) = v16;
  *(a1 + 32) = v17 + 1;
  return result;
}

void sub_10000B0CC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badbrace);
}

void sub_10000B124()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_brace);
}

void *sub_10000B17C(void *a1)
{
  *a1 = &off_100030EE0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100030A60;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10000B230(void *__p)
{
  *__p = &off_100030EE0;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *__p = off_100030A60;
  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

uint64_t sub_10000B2F4(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_10000B4CC(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_10000B594(void *a1)
{
  *a1 = &off_100030EE0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100030A60;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10000B648(void *__p)
{
  *__p = &off_100030EE0;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *__p = off_100030A60;
  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

uint64_t sub_10000B714(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_10000B728(void *a1)
{
  *a1 = &off_100030EE0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_100030A60;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_10000B7DC(void *__p)
{
  *__p = &off_100030EE0;
  v2 = __p[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *__p = off_100030A60;
  v3 = __p[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

uint64_t sub_10000B8AC(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_10000B8D8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_10000B8EC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *sub_10000B944(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_10000BDC4(a1, a2, a3);
  if (result == a2 && result != a3 && result + 1 != a3 && *result == 92)
  {
    v7 = result[1];
    if (v7 == 40)
    {
      v8 = result + 2;
      if ((*(a1 + 24) & 2) != 0)
      {
        v10 = *(a1 + 28);
      }

      else
      {
        v9 = operator new(0x18uLL);
        v10 = *(a1 + 28) + 1;
        *(a1 + 28) = v10;
        v11 = *(a1 + 56);
        v12 = *(v11 + 8);
        *v9 = off_100030DF0;
        v9[1] = v12;
        *(v9 + 4) = v10;
        *(v11 + 8) = v9;
        *(a1 + 56) = v9;
      }

      while (v8 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = sub_10000B944(a1, v8, a3);
        if (v16 == v8)
        {
          break;
        }

        v17 = sub_10000BB4C(a1, v16, a3, v14, v15 + 1, *(a1 + 28) + 1);
        v18 = v17 == v8;
        v8 = v17;
        if (v18)
        {
          goto LABEL_20;
        }
      }

      v17 = v8;
LABEL_20:
      if (v17 == a3 || v17 + 1 == a3 || *v17 != 92 || v17[1] != 41)
      {
        sub_1000045E8();
      }

      result = &v17[2 * (v17[1] == 41)];
      if ((*(a1 + 24) & 2) == 0)
      {
        v19 = result;
        v20 = operator new(0x18uLL);
        result = v19;
        v21 = *(a1 + 56);
        v22 = *(v21 + 8);
        *v20 = off_100030E38;
        v20[1] = v22;
        *(v20 + 4) = v10;
        *(v21 + 8) = v20;
        *(a1 + 56) = v20;
      }
    }

    else if (((v7 & 0xF8) == 0x30 || (v7 & 0xFE) == 0x38) && (v7 - 49) <= 8)
    {
      if ((v7 - 48) > *(a1 + 28))
      {
        sub_100006AEC();
      }

      v13 = result;
      sub_100006B44(a1, v7 - 48);
      return v13 + 2;
    }
  }

  return result;
}

unsigned __int8 *sub_10000BB4C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *a2;
  if (v7 == 42)
  {
    sub_10000AF8C(a1, 0, -1, a4, a5, a6, 1);
    return ++v6;
  }

  if (a2 + 1 == a3 || v7 != 92 || a2[1] != 123)
  {
    return v6;
  }

  v9 = &a2[2 * (a2[1] == 123)];
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = *v9;
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = v9 + 1;
  if (v9 + 1 != a3)
  {
    while (1)
    {
      v13 = *v12;
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      if (++v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = v12 + 1;
  v15 = *v12;
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && *v14 == 125)
    {
      v19 = v12 + 2;
      sub_10000AF8C(a1, v11, v11, a4, a5, a6, 1);
      return v19;
    }

LABEL_42:
    sub_10000B124();
  }

  if (v14 != a3 && ((v16 = *v14, (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = v12 + 2;
    if (v12 + 2 != a3)
    {
      while (1)
      {
        v20 = *v14;
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        if (++v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || v14 + 1 == a3 || *v14 != 92 || v14[1] != 125)
  {
    goto LABEL_42;
  }

  v18 = &v14[2 * (v14[1] == 125)];
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      sub_10000AF8C(a1, v11, v17, a4, a5, a6, 1);
      return v18;
    }

LABEL_41:
    sub_10000B0CC();
  }

  sub_10000AF8C(a1, v11, -1, a4, a5, a6, 1);
  return v18;
}

unsigned __int8 *sub_10000BDC4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2 + 1;
    v3 = *a2;
    if (a2 + 1 != a3 || v3 != 36)
    {
      if ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0)
      {
        sub_100006940(a1, v3);
        return v4;
      }

      if (v4 == a3 || v3 != 92)
      {
        if (v3 == 46)
        {
          v10 = operator new(0x10uLL);
          v11 = *(a1 + 56);
          v12 = *(v11 + 8);
          *v10 = off_100030FE8;
          v10[1] = v12;
          *(v11 + 8) = v10;
          *(a1 + 56) = v10;
          return v4;
        }
      }

      else
      {
        v7 = *v4;
        if ((v7 - 36) <= 0x3A && ((1 << (v7 - 36)) & 0x580000000000441) != 0)
        {
          sub_100006940(a1, v7);
          return a2 + 2;
        }
      }
    }
  }

  return sub_100005E64(a1, a2, a3);
}

void *sub_10000BEF4(void *result)
{
  *result = off_100030A60;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_10000BF68(void *a1)
{
  *a1 = off_100030A60;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 8))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_10000BFE8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

uint64_t sub_10000C028(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > *(a1 + 28))
  {
    sub_100006AEC();
  }

  sub_100006B44(a1, a2 - 48);
  return 1;
}

unsigned __int8 *sub_10000C08C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    v11 = sub_10000C3C0(a1, a2, a3);
    if (v11 != a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_22;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_4;
  }

  if (v9 == 5)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_22:
    if ((v8 - 123) >= 2)
    {
LABEL_23:
      sub_100006940(a1, v8);
      v11 = a2 + 1;
      goto LABEL_32;
    }
  }

LABEL_4:
  v10 = sub_10000C3C0(a1, a2, a3);
  v11 = v10;
  if (v10 == a2)
  {
    if (*v10 == 46)
    {
      v12 = operator new(0x10uLL);
      v13 = *(a1 + 56);
      v14 = *(v13 + 8);
      *v12 = off_100030FE8;
      v12[1] = v14;
      *(v13 + 8) = v12;
      *(a1 + 56) = v12;
      ++v11;
      goto LABEL_9;
    }

LABEL_8:
    v11 = sub_100005E64(a1, a2, a3);
  }

LABEL_9:
  if (v11 == a2 && v11 != a3)
  {
    v15 = *v11;
    switch(v15)
    {
      case '$':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = off_100030AD8;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 28) + 1;
          *(a1 + 28) = v21;
          v22 = *(a1 + 56);
          v23 = *(v22 + 8);
          *v20 = off_100030DF0;
          v20[1] = v23;
          *(v20 + 4) = v21;
          *(v22 + 8) = v20;
          *(a1 + 56) = v20;
        }

        ++*(a1 + 36);
        v24 = sub_100003068(a1, v11 + 1, a3);
        if (v24 == a3 || (v11 = v24, *v24 != 41))
        {
          sub_1000045E8();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v25 = operator new(0x18uLL);
          v26 = *(a1 + 56);
          v27 = *(v26 + 8);
          *v25 = off_100030E38;
          v25[1] = v27;
          *(v25 + 4) = v21;
          *(v26 + 8) = v25;
          *(a1 + 56) = v25;
        }

        --*(a1 + 36);
        goto LABEL_30;
      case '^':
        v16 = operator new(0x18uLL);
        v17 = (*(a1 + 24) & 0x5F0) == 1024;
        v18 = *(a1 + 56);
        v16[1] = *(v18 + 8);
        v19 = off_100030A90;
        break;
      default:
        goto LABEL_31;
    }

    *v16 = v19;
    *(v16 + 16) = v17;
    *(v18 + 8) = v16;
    *(a1 + 56) = v16;
LABEL_30:
    ++v11;
  }

LABEL_31:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_32:
  v28 = *(a1 + 28) + 1;

  return sub_10000405C(a1, v11, a3, v6, v7 + 1, v28);
}

unsigned __int8 *sub_10000C3C0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = a2;
    sub_100006940(a1, v3);
    return v5 + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = a2 + 1;

    return sub_100009624(a1, v7, a3, 0);
  }

  else
  {
    v8 = a2;
    v9 = sub_10000C028(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return &v8[v10];
  }
}

uint64_t sub_10000C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_100005394(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (sub_100004EBC(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (sub_10000D23C(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = a2 + 1; i != a3; ++i)
      {
        sub_100005394(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (sub_10000D23C(a1, i, a3, a4, v9 | 0x80u, 0))
            {
              goto LABEL_28;
            }
          }

          else if (sub_10000C924(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_100004EBC(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }

        sub_100005394(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      }

      sub_100005394(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (sub_10000D23C(a1, i, a3, a4, v9 | 0x80u, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_10000C924(a1, i, a3, a4, v9 | 0x80u, 0))
        {
          goto LABEL_28;
        }
      }

      else if (sub_100004EBC(a1, i, a3, a4, v9 | 0x80u, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    *(a4 + 8) = *a4;
    return result;
  }

  if ((sub_10000C924(a1, a2, a3, a4, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (*(a4 + 8) == *a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = *a4;
  }

  v14 = *v13;
  *(a4 + 56) = *v13;
  *(a4 + 64) = *(a4 + 48) != v14;
  v15 = *(v13 + 1);
  *(a4 + 72) = v15;
  *(a4 + 88) = v15 != *(a4 + 80);
  return 1;
}